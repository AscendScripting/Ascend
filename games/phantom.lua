-- Thanks to dementiaenjoyer for the Homohack script.
-- [ Variables / Services ] --
getgenv().AC_PHANTOMLOADED = true
-- [ Services ] --
local Players = workspace.Players
local PlayersService = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local TweenService = game:GetService("TweenService")
local Teams = game:GetService("Teams")

-- [ Variables ] --
local Holding = nil
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- [ Tables ] --
local features = {
  chams = {
    teamcheck = true,
    color = {
      fill = Color3.fromRGB(121, 106, 255),
      outline = Color3.fromRGB(119, 121, 255)
    },
    transparency = {
      fill = 1,
      outline = 0
    }
  }
}

-- [ Functions ] --
function get_Players()
  local entity_list = {}
  for _, Teams in Players:GetChildren() do
    for _, player in Teams:GetChildren() do
      if player:IsA("Model") then
        entity_list[#entity_list + 1] = player
      end
    end
  end
  return entity_list
end

function is_ally(player)
  if not player then
    return
  end

  local helmet = player:FindFirstChildWhichIsA("Folder"):FindFirstChildOfClass("MeshPart")

  if not helmet then
    return
  end

  if helmet.BrickColor == BrickColor.new("Black") then
    return Teams.Phantoms == PlayersService.LocalPlayer.Team, Teams.Phantoms
  end

  return Teams.Ghosts == PlayersService.LocalPlayer.Team, Teams.Ghosts
end

-- [ Logic ] --
RunService.RenderStepped:Connect(function(delta)
  if getgenv().AC_PHANTOMESP then
    for _, player in get_Players() do
      if not player:FindFirstChildWhichIsA("Highlight") then
        local is_ally, team = is_ally(player)

        if (features.chams.teamcheck and not is_ally) or not features.chams.teamcheck then
          local highlight = Instance.new("Highlight", player)
          highlight.FillColor = features.chams.color.fill
          highlight.OutlineColor = features.chams.color.outline
          highlight.FillTransparency = features.chams.transparency.fill
          highlight.OutlineTransparency = features.chams.transparency.outline
        end
      end
    end
  end
end)

-- [ Phantom Forces Aimbot ] --
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

-- [ Get Closest Player ] --
-- WIP.