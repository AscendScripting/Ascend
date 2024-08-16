-- [ Services ] --
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")

-- [ Variables ] --
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local Holding = nil

-- [ Imports ] --
local settings = getgenv().AC_AIMBOT
-- {
--   Enabled = false,
--   TeamCheck = false,
--   AimPart = "Torso",
--   Sensitivity = 0,
--   CircleSides = 64,
--   CircleColor = Color3.fromRGB(255, 255, 255),
--   CircleTransparency = 0.5,
--   CircleRadius = 120,
--   CircleFilled = false,
--   CircleVisible = false,
--   CircleThickness = 1
-- }

function getClosest()
  local MaxDistance = settings.CircleRadius
  local Target = nil

  for _, v in next, Players:GetPlayers() do
    if v.Name ~= LocalPlayer.Name and v.Character and v.Character:FindFirstChild(settings.AimPart) and
      v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
      if settings.TeamCheck and LocalPlayer.Team == v.Team then
        continue()
      end

      local Pos, OnScreen = Camera:WorldToViewportPoint(v.Character[settings.AimPart].Position)
      if OnScreen then
        local Distance = (Vector2.new(Pos.X, Pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
        if Distance < MaxDistance then
          MaxDistance = Distance
          Target = v
        end
      end
    end
  end

  return Target
end

-- [ User Input ] --
UserInputService.InputBegan:Connect(function(Input)
  if settings.Enabled and Input.UserInputType == Enum.UserInputType.MouseButton2 then
    Holding = true
  end
end)
UserInputService.InputEnded:Connect(function(Input)
  if Input.UserInputType == Enum.UserInputType.MouseButton2 then
    Holding = false
  end
end)

-- [ Render Stepped ] --
RunService.RenderStepped:Connect(function()
  getgenv().AC_FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X,
    UserInputService:GetMouseLocation().Y)

  if settings.Enabled and Holding then
    TweenService.Create(Camera, TweenInfo.new(settings.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {
      CFrame = CFrame.new(Camera.CFrame.Position),
      getClosest().Character[settings.AimPart].Position
    }):Play()
  end
end)
