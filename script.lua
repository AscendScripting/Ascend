-- [ Ascend ] --
-- [ v1.0.0 ] --
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Mercury/main/script.lua"))()
repeat
  wait()
until game:IsLoaded()

-- [ Configuration ] --
local darkMode = true -- eg Dex vs DarKdex
local devMode = false
local AimbotSettings = {
  Enabled = false,
  TeamCheck = false,
  AimPart = "Torso",
  Sensitivity = 0,
  CircleSides = 64,
  CircleColor = Color3.fromRGB(255, 255, 255),
  CircleTransparency = 0.5,
  CircleRadius = 120,
  CircleFilled = false,
  CircleVisible = true,
  CircleThickness = 1
}

-- [ Locals ] --
local Noclip = nil
local Clip = nil
local player = game.Players.LocalPlayer
local walkspeed = player.Character.Humanoid.WalkSpeed
local jumppower = player.Character.Humanoid.JumpPower
local hipheight = player.Character.Humanoid.HipHeight

-- [ GMT ] --
local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldNamecall = gmt.__namecall

-- [ Game Recognition ] --
local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceID).Name

-- [ Developer Mode ] --
if getgenv().AC_DEV then
  devMode = true
end

-- [ Services ] --
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local CoreGUI = game.CoreGui
local Camera = workspace.CurrentCamera

-- [ Instances ] --
local FOVCircle = Drawing.new("Circle")

-- [ FOV Circle ] --
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = AimbotSettings.CircleRadius
FOVCircle.Filled = AimbotSettings.CircleFilled
FOVCircle.Color = AimbotSettings.CircleColor
FOVCircle.Visible = AimbotSettings.CircleVisible
FOVCircle.Radius = AimbotSettings.CircleRadius
FOVCircle.Transparency = AimbotSettings.CircleTransparency
FOVCircle.NumSides = AimbotSettings.CircleSides
FOVCircle.Thickness = AimbotSettings.CircleThickness

-- [ Anticheat Bypasses ] --

-- [ Events ] --
RunService.RenderStepped:Connect(function()
  player.Character.Humanoid.Walkspeed = walkspeed
  player.Character.Humanoid.HipHeight = hipheight
  player.Character.Humanoid.JumpPower = jumppower

  FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
  FOVCircle.Radius = AimbotSettings.CircleRadius
  FOVCircle.Filled = Aimbot.CircleFilled
  FOVCircle.Color = Aimbot.CircleColor
  FOVCircle.Visible = Aimbot.CircleVisible
  FOVCircle.Radius = Aimbot.CircleRadius
  FOVCircle.Transparency = Aimbot.CircleTransparency
  FOVCircle.NumSides = Aimbot.CircleSides
  FOVCircle.Thickness = Aimbot.CircleThickness
end)

-- [ Functions ] --
local hop =
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/functions/hop.lua"))()

function noclip()
  Clip = false
  local function Nocl()
    if Clip == false and player.Character ~= nil then
      for _, v in pairs(player.Character:GetDescendants()) do
        if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
          v.CanCollide = false
        end
      end
    end
    wait(0.21) -- 0.21 will stop the flagging
  end
  RunService.Stepped:Connect(Nocl)
end

function clip()
  if Noclip then
    Noclip:Disconnect()
  end
  Clip = true
end

-- [ Main ] --
local GUI = Lib:Create{
  Name = "Ascend",
  Size = UDim2.fromOffset(600, 400),
  Theme = Lib.Themes.Serika,
  Link = "https://github.com/AscendScripting/Ascend"
}
getgenv().AC_GUI = GUI

if devMode then
  GUI:Notification{
    Title = "Developer",
    Text = "You are currently in developer mode, some features may not work as expected.",
    Duration = 10
  }
else
  GUI:Notification{
    Title = "Ascend",
    Text = "Welcome to Ascend, a powerful script hub for your favorite games. Now playing " .. gamename .. ".",
    Duration = 10
  }
end

-- [ Tabs ] --
local Base = GUI:Tab{
  Name = "Base",
  Icon = "rbxassetid://8569322"
}
local Local = GUI:Tab{
  Name = "Local",
  Icon = "rbxassetid://8569322"
}
local Combat = GUI:Tab{
  Name = "Combat",
  Icon = "rbxassetid://8569322"
}

-- [ Base Tab ] --
Base:Button{
  Name = "Light mode",
  Description = "Switch to light mode",
  Callback = function()
    GUI:Notification{
      Title = "Ascend",
      Text = "Switching to light mode.",
      Duration = 5,
      Callback = function()
        darkMode = false
      end
    }
  end
}
Base:Button{
  Name = "Destroy",
  Description = "Destroy Ascend",
  Callback = function()
    GUI:Notification{
      Title = "Ascend",
      Text = "Ascend will be destroyed.",
      Duration = 5,
      Callback = function()
        for i, v in pairs(CoreGUI:GetDescendants()) do
          if v.Name == getgenv().MC_NAME then
            v:Destroy()
            getgenv().AC_GUI = nil
          end
        end
      end
    }
  end
}
Base:Button{
  Name = "Dex",
  Description = "Open Dex Explorer",
  Callback = function()
    if darkMode then
      loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/functions/darkdex.lua"))()
    else
      loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Dex%20Explorer.txt"))()
    end
  end
}
Base:Button{
  Name = "Vape V4",
  Description = "Vape V4, ported to Roblox by 7GrandDadPGN",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua",
      true))()
  end
}

-- [ Local Tab ] --
-- Local:Button{
--   Name = "Btools",
--   Description = "Equip building tools",
--   Callback = function()
--     getgenv().AC_BTOOLS = true
--   end
-- }
Base:Toggle{
  Name = "Antikick",
  Description = "Prevents you from getting kicked",
  StartingState = false,
  Callback = function(state)
    if state then
      loadstring(game:HttpGet("https://github.com/Exunys/Anti-Kick/blob/main/Anti-Kick.lua"))()
    else
      getgenv().ED_AntiKick = {
        Enabled = false,
        SendNotifications = true,
        CheckCaller = false
      }
    end
  end
}
Local:Button{
  Name = "Rejoin",
  Description = "Rejoin the game",
  Callback = function()
    GUI:Notification{
      Title = "Ascend",
      Text = "Rejoining the game.",
      Duration = 5,
      Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId)
      end
    }
  end
}
Local:Button{
  Name = "Serverhop",
  Description = "Hop to a new server",
  Callback = function()
    GUI:Notification{
      Title = "Ascend",
      Text = "Serverhopping.",
      Duration = 5,
      Callback = function()
        hop:Teleport(game.PlaceId)
      end
    }
  end
}
Local:Slider{
  Name = "WalkSpeed",
  Description = "Changes your walkspeed",
  Default = 16,
  Min = 16,
  Max = 500,
  Callback = function(value)
    player.Character.Humanoid.WalkSpeed = value
    walkspeed = value
  end
}
Local:Slider{
  Name = "JumpPower",
  Description = "Changes your jumppower",
  Default = 50,
  Min = 50,
  Max = 500,
  Callback = function(value)
    player.Character.Humanoid.JumpPower = value
    jumppower = value
  end
}
Local:Slider{
  Name = "HipHeight",
  Description = "Changes your hipheight",
  Default = 0,
  Min = 0,
  Max = 500,
  Callback = function(value)
    player.Character.Humanoid.HipHeight = value
    hipheight = value
  end
}
Local:Slider{
  Name = "FOV",
  Description = "Changes your FOV",
  Default = 70,
  Min = 70,
  Max = 120,
  Callback = function(value)
    game.Workspace.CurrentCamera.FieldOfView = value
  end
}
Local:Toggle{
  Name = "Noclip",
  StartingState = false,
  Description = "Allows you to noclip through walls",
  Callback = function(state)
    if state then
      noclip()
    else
      clip()
    end
  end
}

-- [ Combat Tab ] --
Combat:Button{
  Name = "Homohack",
  Description = "Homohack, a powerful script for Bad Business, Rivals, and PF.",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/loader.lua"))()
  end
}
Combat:Toggle{
  Name = "Aimbot",
  Description = "Aims at the closest player with your mouse",
  StartingState = false,
  Callback = function(state)
    AimbotSettings.Enabled = state
  end
}

-- [ Specifical Games ] --
if game.PlaceId == 113491250 then -- Phantom Forces
  local start = nil
  local handled = false

  GUI:Prompt{
    Title = "Phantom Forces",
    Description = "You are playing Phantom Forces, would you like to enable our Phantom Forces ESP?",
    Followup = false,
    Buttons = {
      yes = function()
        getgenv().AC_PHANTOMESP = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/games/phantom.lua"))()
        start = true
        handled = true
      end,
      no = function()
        start = false
        handled = true
      end
    }
  }

  repeat
    wait()
  until handled

  local Phantom = GUI:Tab{
    Name = "Phantom Forces",
    Icon = "rbxassetid://8569322"
  }

  Phantom:Toggle{
    Name = "ESP",
    Description = "Shows you where the enemies are",
    StartingState = start,
    Callback = function(state)
      if state then
        getgenv().AC_PHANTOMESP = true
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/games/phantom.lua"))()
      else
        getgenv().AC_PHANTOMESP = false
        for _, player in get_players() do
          local highlight = player:FindFirstChildWhichIsA("Highlight")
          if highlight then
            highlight:Destroy()
          end
        end
      end
    end
  }
end
