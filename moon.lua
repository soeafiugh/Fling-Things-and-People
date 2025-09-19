local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- まず KeySystem を完全オフにしておく
local Window = Rayfield:CreateWindow({
   Name = "Moon Hub",
   Icon = 0,
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ShowText = "Rayfield",
   Theme = "Default",
   ToggleUIKeybind = "K",
   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Moon Hub"
   },

   KeySystem = false, -- ←ここをfalseに
})

------------------------------------------------
-- ▼ 簡易キーシステムを自作する ▼
------------------------------------------------
local Players = game:GetService("Players")
local player = Players.LocalPlayer
l





