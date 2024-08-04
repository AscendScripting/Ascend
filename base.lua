getgenv().AC_VERSION = "1.0.1-Alpha"
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Mercury/main/script.lua"))()

print("Ascending from hell... | v" .. getgenv().AC_VERSION)

repeat
  wait()
until game:IsLoaded() and game.Players.LocalPlayer
