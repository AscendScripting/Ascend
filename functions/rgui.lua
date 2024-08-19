-- [ Instances ] --
local ScreenGui = Instance.new("ScreenGui")
local Player = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local UICorner = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local SettingsPlaceholder = Instance.new("Frame")
local Game = Instance.new("Frame")
local ImageLabel_2 = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")
local Frame = Instance.new("Frame")
local UICorner_5 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local Title = Instance.new("Frame")
local UICorner_6 = Instance.new("UICorner")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local Status = Instance.new("Frame")
local UICorner_7 = Instance.new("UICorner")
local TextLabel_7 = Instance.new("TextLabel")
local TextLabel_8 = Instance.new("TextLabel")

-- [ Set up ] --

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Player.Name = "Player"
Player.Parent = ScreenGui
Player.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Player.BackgroundTransparency = 0.150
Player.BorderColor3 = Color3.fromRGB(0, 0, 0)
Player.BorderSizePixel = 0
Player.Position = UDim2.new(0.0102614565, 0, 0.113421254, 0)
Player.Size = UDim2.new(0, 402, 0, 64)
Player.ZIndex = 99

TextLabel.Parent = Player
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.157960206, 0, 0.188750029, 0)
TextLabel.Size = UDim2.new(0, 294, 0, 20)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "<b>Display Name</b>"
TextLabel.RichText = true
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000
TextLabel.TextWrapped = true
TextLabel.TextXAlignment = Enum.TextXAlignment.Left
TextLabel.TextYAlignment = Enum.TextYAlignment.Top

UICorner.CornerRadius = UDim.new(0, 15)
UICorner.Parent = Player

ImageLabel.Parent = Player
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.0186567158, 0, 0.170000002, 0)
ImageLabel.Size = UDim2.new(0, 48, 0, 48)
ImageLabel.ImageTransparency = 0.300

UICorner_2.CornerRadius = UDim.new(0, 15)
UICorner_2.Parent = ImageLabel

TextLabel_2.Parent = Player
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0.157960236, 0, 0.501249909, 0)
TextLabel_2.Size = UDim2.new(0, 293, 0, 18)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Username"
TextLabel_2.RichText = true
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 20.000
TextLabel_2.TextWrapped = true
TextLabel_2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel_2.TextYAlignment = Enum.TextYAlignment.Top

SettingsPlaceholder.Name = "SettingsPlaceholder"
SettingsPlaceholder.Parent = Player
SettingsPlaceholder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SettingsPlaceholder.BackgroundTransparency = 1.000
SettingsPlaceholder.BorderColor3 = Color3.fromRGB(0, 0, 0)
SettingsPlaceholder.BorderSizePixel = 0
SettingsPlaceholder.Position = UDim2.new(0.843283594, 0, 1.1920929e-07, 0)
SettingsPlaceholder.Size = UDim2.new(0, 63, 0, 64)

Game.Name = "Game"
Game.Parent = ScreenGui
Game.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Game.BackgroundTransparency = 0.400
Game.BorderColor3 = Color3.fromRGB(0, 0, 0)
Game.BorderSizePixel = 0
Game.Position = UDim2.new(0.0110000093, 0, 0.207204446, 0)
Game.Size = UDim2.new(0, 402, 0, 226)
Game.ZIndex = 99

ImageLabel_2.Parent = Game
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BackgroundTransparency = 1.000
ImageLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageLabel_2.BorderSizePixel = 0
ImageLabel_2.Position = UDim2.new(0, 0, -7.33595655e-08, 0)
ImageLabel_2.Size = UDim2.new(0, 402, 0, 226)
ImageLabel_2.ImageTransparency = 0.300

UICorner_3.CornerRadius = UDim.new(0, 15)
UICorner_3.Parent = ImageLabel_2

UICorner_4.CornerRadius = UDim.new(0, 15)
UICorner_4.Parent = Game

Frame.Parent = Game
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 0.300
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.75444895, 0)
Frame.Size = UDim2.new(0, 402, 0, 55)

UICorner_5.CornerRadius = UDim.new(0, 15)
UICorner_5.Parent = Frame

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderSizePixel = 0
TextLabel_3.Position = UDim2.new(0.0385572128, 0, 0.532160521, 0)
TextLabel_3.Size = UDim2.new(0, 368, 0, 14)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "Loading..."
TextLabel_3.RichText = true
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 20.000
TextLabel_3.TextWrapped = true
TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_4.Parent = Frame
TextLabel_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.0385572128, 0, 0.190746516, 0)
TextLabel_4.Size = UDim2.new(0, 368, 0, 19)
TextLabel_4.Font = Enum.Font.SourceSans
TextLabel_4.Text = "<b>Supported game</b>"
TextLabel_4.RichText = true
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 20.000
TextLabel_4.TextWrapped = true
TextLabel_4.TextXAlignment = Enum.TextXAlignment.Left

Title.Name = "Title"
Title.Parent = ScreenGui
Title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Title.BackgroundTransparency = 0.150
Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
Title.BorderSizePixel = 0
Title.Position = UDim2.new(0.0110000093, 0, 0.0186045635, 0)
Title.Size = UDim2.new(0, 402, 0, 64)
Title.ZIndex = 99

UICorner_6.CornerRadius = UDim.new(0, 15)
UICorner_6.Parent = Title

TextLabel_5.Parent = Title
TextLabel_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.BackgroundTransparency = 1.000
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.0409350805, 0, 0.201046705, 0)
TextLabel_5.Size = UDim2.new(0, 367, 0, 19)
TextLabel_5.Font = Enum.Font.SourceSans
TextLabel_5.Text = "<b>Ascend Development ®</b>"
TextLabel_5.RichText = true
TextLabel_5.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 20.000
TextLabel_5.TextWrapped = true
TextLabel_5.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_6.Parent = Title
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BackgroundTransparency = 1.000
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.0385572128, 0, 0.497921705, 0)
TextLabel_6.Size = UDim2.new(0, 367, 0, 19)
TextLabel_6.Font = Enum.Font.SourceSans
TextLabel_6.Text = "Thank you for picking Ascend for all your exploiting endeavours."
TextLabel_6.RichText = true
TextLabel_6.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 20.000
TextLabel_6.TextWrapped = true
TextLabel_6.TextXAlignment = Enum.TextXAlignment.Left

Status.Name = "Status"
Status.Parent = ScreenGui
Status.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Status.BackgroundTransparency = 0.150
Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
Status.BorderSizePixel = 0
Status.Position = UDim2.new(0.0110000074, 0, 0.518645287, 0)
Status.Size = UDim2.new(0, 402, 0, 64)
Status.ZIndex = 99

UICorner_7.CornerRadius = UDim.new(0, 15)
UICorner_7.Parent = Status

TextLabel_7.Parent = Status
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.0409350805, 0, 0.201046705, 0)
TextLabel_7.Size = UDim2.new(0, 367, 0, 19)
TextLabel_7.Font = Enum.Font.SourceSans
TextLabel_7.Text = "<b>Status</b>"
TextLabel_7.RichText = true
TextLabel_7.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 20.000
TextLabel_7.TextWrapped = true
TextLabel_7.TextXAlignment = Enum.TextXAlignment.Left

TextLabel_8.Parent = Status
TextLabel_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.BackgroundTransparency = 1.000
TextLabel_8.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_8.BorderSizePixel = 0
TextLabel_8.Position = UDim2.new(0.0385572128, 0, 0.497921705, 0)
TextLabel_8.Size = UDim2.new(0, 367, 0, 19)
TextLabel_8.Font = Enum.Font.SourceSans
TextLabel_8.Text = "Standard"
TextLabel_8.RichText = true
TextLabel_8.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_8.TextScaled = true
TextLabel_8.TextSize = 20.000
TextLabel_8.TextWrapped = true
TextLabel_8.TextXAlignment = Enum.TextXAlignment.Left

-- [ Scripts ] --

local function DisplayNameT() -- TextLabel.LocalScript 
  local script = Instance.new('LocalScript', TextLabel)

  script.Parent.Text = "<b>" .. game:GetService("Players").LocalPlayer.DisplayName .. "</b>"
end
coroutine.wrap(DisplayNameT)()
local function UserThumbNail() -- ImageLabel.LocalScript 
  local script = Instance.new('LocalScript', ImageLabel)

  local thumbnailUrl, isReady = game:GetService("Players"):GetUserThumbnailAsync(
    game:GetService("Players").LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
  if isReady then
    script.Parent.Image = thumbnailUrl
  end
end
coroutine.wrap(UserThumbNail)()
local function UsernameT() -- TextLabel_2.LocalScript 
  local script = Instance.new('LocalScript', TextLabel_2)

  script.Parent.Text = "@" .. game:GetService("Players").LocalPlayer.Name
end
coroutine.wrap(UsernameT)()
local function GameThumbT() -- ImageLabel_2.LocalScript 
  local script = Instance.new('LocalScript', ImageLabel_2)

  script.Parent.Image = "http://www.roblox.com/Thumbs/Asset.ashx?Width=768&Height=432&AssetID=" .. game.PlaceId
end
coroutine.wrap(GameThumbT)()
local function GameNameT() -- TextLabel_3.LocalScript 
  local script = Instance.new('LocalScript', TextLabel_3)

  script.Parent.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
end
coroutine.wrap(GameNameT)()
