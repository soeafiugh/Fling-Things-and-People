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
local PlayerGui = player:WaitForChild("PlayerGui")

-- GUI作成
local ScreenGui = Instance.new("ScreenGui", PlayerGui)
local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 300, 0, 150)
Frame.Position = UDim2.new(0.5, -150, 0.5, -75)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)

local TextBox = Instance.new("TextBox", Frame)
TextBox.Size = UDim2.new(0.8, 0, 0.3, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.2, 0)
TextBox.PlaceholderText = "Enter Key..."
TextBox.Text = ""

local Button = Instance.new("TextButton", Frame)
Button.Size = UDim2.new(0.4, 0, 0.25, 0)
Button.Position = UDim2.new(0.3, 0, 0.6, 0)
Button.Text = "Submit"

local correctKey = "sigurebanzai" -- ←好きなキーを設定

Button.MouseButton1Click:Connect(function()
    if TextBox.Text == correctKey then
        ScreenGui:Destroy() -- GUIを消す
        Rayfield:Notify({
            Title = "Key Accepted",
            Content = "Welcome to Moon Hub!",
            Duration = 5
        })
        -- ここでやっと Rayfield の UI を出す
        Window:SelectTab(1) -- 最初のタブを表示する（強制表示）
    else
        Rayfield:Notify({
            Title = "Invalid Key",
            Content = "The key you entered is wrong!",
            Duration = 5
        })
    end
end)







