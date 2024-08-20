-- [ Ascend ] --
-- [ v1.0.6-Alpha ] --
if not getgenv().AC_VERSION then
  getgenv().AC_VERSION = "1.0.6-Alpha"
end
print("v" .. getgenv().AC_VERSION .. " | Ascend | Ascending from hell...")

-- [ Game Load ] --
repeat
  wait()
until game:IsLoaded() and game.Players.LocalPlayer
print("v" .. getgenv().AC_VERSION .. " | Ascend | Game loaded.")

-- [ GUI library ] --
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/AscendUI/main/script.lua"))()
local RGUI =
  loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/functions/rgui.lua"))()

-- [ Configuration ] --
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
  CircleVisible = false,
  CircleThickness = 1
}

-- [ GMT ] --
local gmt = getrawmetatable(game)
setreadonly(gmt, false)
local oldNamecall = gmt.__namecall

-- [ Game Recognition ] --
local playing = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
if game.GameId == 113491250 then
  playing = "Phantom Forces"
else
  if game.GameId == 2619619496 then
    playing = "Bedwars"
  end
end

-- [ Services ] --
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local CoreGUI = game.CoreGui
local Camera = workspace.CurrentCamera

-- [ Locals ] --
local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local Noclip = nil
local Clip = nil
local player = game:GetService("Players").LocalPlayer
if playing ~= "Phantom Forces" then
  local character = player.Character
  local humanoid = character.Humanoid
  local walkspeed = humanoid.WalkSpeed
  local jumppower = humanoid.JumpPower
  local hipheight = humanoid.HipHeight
end

-- [ FOV Circle ] --
getgenv().AC_FOVCircle = Drawing.new("Circle")
getgenv().AC_FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
getgenv().AC_FOVCircle.Radius = AimbotSettings.CircleRadius
getgenv().AC_FOVCircle.Filled = AimbotSettings.CircleFilled
getgenv().AC_FOVCircle.Color = AimbotSettings.CircleColor
getgenv().AC_FOVCircle.Visible = AimbotSettings.CircleVisible
getgenv().AC_FOVCircle.Radius = AimbotSettings.CircleRadius
getgenv().AC_FOVCircle.Transparency = AimbotSettings.CircleTransparency
getgenv().AC_FOVCircle.NumSides = AimbotSettings.CircleSides
getgenv().AC_FOVCircle.Thickness = AimbotSettings.CircleThickness

-- [ Events ] --
RunService.RenderStepped:Connect(function()
  getgenv().AC_FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X,
    UserInputService:GetMouseLocation().Y)
  getgenv().AC_FOVCircle.Radius = AimbotSettings.CircleRadius
  getgenv().AC_FOVCircle.Filled = AimbotSettings.CircleFilled
  getgenv().AC_FOVCircle.Color = AimbotSettings.CircleColor
  getgenv().AC_FOVCircle.Visible = AimbotSettings.CircleVisible
  getgenv().AC_FOVCircle.Radius = AimbotSettings.CircleRadius
  getgenv().AC_FOVCircle.Transparency = AimbotSettings.CircleTransparency
  getgenv().AC_FOVCircle.NumSides = AimbotSettings.CircleSides
  getgenv().AC_FOVCircle.Thickness = AimbotSettings.CircleThickness

  getgenv().AC_AIMBOT = AimbotSettings
end)

-- [ Functions ] --
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

-- [ Modules ] --
loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/mod/aimbot.lua"))()

-- [ Main ] --
local GUI = Lib:Create{
  Name = "Ascend",
  Size = UDim2.fromOffset(600, 400),
  Theme = Lib.Themes.Legacy,
  Link = "https://github.com/AscendScripting/Ascend"
}
getgenv().AC_GUI = GUI

if getgenv().AC_DEV then
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
  Icon = "rbxassetid://18913670566"
}
local Local = GUI:Tab{
  Name = "Local",
  Icon = "rbxassetid://18913665617"
}
local Combat = GUI:Tab{
  Name = "Combat",
  Icon = "rbxassetid://18913667987"
}

-- [ Base Tab ] --
Base:Button{
  Name = "Destroy",
  Description = "Destroy Ascend",
  Callback = function()
    GUI:Notification{
      Title = "Ascend",
      Text = "Ascend will be destroyed.",
      Duration = 2,
      Callback = function()
        for i, v in pairs(CoreGUI:GetDescendants()) do
          if v.Name == getgenv().MC_NAME then
            v:Destroy()
            getgenv().AC_GUI = nil
          end
        end
        getgenv().AC_RGUI:Destroy()
      end
    }
  end
}
Base:Button{
  Name = "Dex",
  Description = "Open Dex Explorer",
  Callback = function()
    loadstring(game:GetObjects('rbxassetid://2180084478')[1].Source)()
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
Local:Toggle{
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
      Duration = 2,
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
      Duration = 2,
      Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/functions/hop.lua"))():Teleport(
          game.PlaceId)
      end
    }
  end
}
if playing ~= "Phantom Forces" then
  Local:Slider{
    Name = "WalkSpeed",
    Description = "Changes your walkspeed",
    Default = walkspeed,
    Min = 16,
    Max = 500,
    Callback = function(value)
      humanoid.WalkSpeed = value
      walkspeed = value
    end
  }
  Local:Slider{
    Name = "JumpPower",
    Description = "Changes your jumppower",
    Default = 50,
    Min = 20,
    Max = 500,
    Callback = function(value)
      humanoid.JumpPower = value
      jumppower = value
    end
  }
  Local:Slider{
    Name = "HipHeight",
    Description = "Changes your hipheight",
    Default = 2,
    Min = 2,
    Max = 300,
    Callback = function(value)
      humanoid.HipHeight = value
      hipheight = value
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
end
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

-- [ Combat Tab ] --
Combat:Toggle{
  Name = "Aimbot",
  Description = "Aims at the closest player with your mouse",
  StartingState = false,
  Callback = function(state)
    if playing == "Phantom Forces" then
      GUI:prompt{
        Title = "Aimbot",
        Text = "Aimbot could get you banned, proceed?",
        Followup = false,
        Buttons = {
          yes = function()
            AimbotSettings.Enabled = state
          end,
          no = function()
            AimbotSettings.Enabled = false
          end
        }
      }
    else
      AimbotSettings.Enabled = state
    end
  end
}
Combat:Dropdown{
  Name = "Aim Part",
  Description = "Changes the part the aimbot aims at",
  StartingText = "Select one.",
  Items = {"Head", "Torso"},
  Callback = function(value)
    AimbotSettings.AimPart = value
  end
}
Combat:Toggle{
  Name = "Team Check",
  Description = "Only aim at enemies",
  StartingState = false,
  Callback = function(state)
    AimbotSettings.TeamCheck = state
  end
}
Combat:Slider{
  Name = "Sensitivity",
  Description = "Changes the sensitivity of the aimbot",
  Default = 0,
  Min = 0,
  Max = 10,
  Callback = function(value)
    AimbotSettings.Sensitivity = value
  end
}
Combat:Slider{
  Name = "FOV Sides",
  Description = "Changes the sides of the FOV Circle",
  Default = 64,
  Min = 4,
  Max = 256,
  Callback = function(value)
    AimbotSettings.Sensitivity = value
  end
}
Combat:Slider{
  Name = "Transparency",
  Description = "Changes the transparency of the FOV Circle",
  Default = 0.5,
  Min = 0,
  Max = 1,
  Callback = function(value)
    AimbotSettings.CircleTransparency = value
  end
}
Combat:Slider{
  Name = "Radius",
  Description = "Changes the radius of the FOV Circle",
  Default = 120,
  Min = 50,
  Max = 500,
  Callback = function(value)
    AimbotSettings.CircleRadius = value
  end
}
Combat:Toggle{
  Name = "Filled",
  Description = "Fills the FOV Circle",
  StartingState = false,
  Callback = function(state)
    AimbotSettings.CircleFilled = state
  end
}
Combat:Toggle{
  Name = "Visible",
  Description = "Makes the FOV Circle visible",
  StartingState = false,
  Callback = function(state)
    AimbotSettings.CircleVisible = state
  end
}
Combat:Slider{
  Name = "Thickness",
  Description = "Changes the thickness of the FOV Circle",
  Default = 1,
  Min = 1,
  Max = 10,
  Callback = function(value)
    AimbotSettings.CircleThickness = value
  end
}
Combat:Button{
  Name = "Homohack",
  Description = "Homohack, a powerful script for Bad Business, Rivals, and PF.",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/dementiaenjoyer/homohack/main/loader.lua"))()
  end
}

-- [ Specifical Games ] --
if playing == "Phantom Forces" then
  local start = nil
  local handled = false

  GUI:Notification{
    Title = "Ascend",
    Text = "Ascend hates StyLiS, they mess up their 'game' too much, some local features are not supported.",
    Duration = 5
  }

  GUI:prompt{
    Title = "Phantom Forces",
    Text = "You are playing Phantom Forces, would you like to enable Ascend's Phantom Forces Script?",
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
        if not getgenv().AC_PHANTOMLOADED then
          loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Ascend/main/games/phantom.lua"))()
        end
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
if playing == "Bedwars" then
  GUI:prompt{
    Title = "Bedwars",
    Text = "You are playing Bedwars, would you like to enable the recommended game scripts?",
    Followup = false,
    Buttons = {
      yes = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua",
          true))()
      end,
      no = function()

      end
    }
  }
end
