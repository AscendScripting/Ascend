getgenv().AC_VERSION = "1.0.1-Alpha"
local Lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/AscendScripting/Mercury/main/script.lua"))()

print("Ascending from hell... | v" .. getgenv().AC_VERSION)
local counter = 0

repeat
  wait()
  counter = counter + 1
until game:IsLoaded() and game.Players.LocalPlayer
print("It took " .. counter .. " for the game to load and the LocalPlayer to be found.")
