local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Parent = playerGui

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 300, 0, 150)
frame.Position = UDim2.new(0.5, -150, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 200) 
frame.BackgroundTransparency = 0.1
frame.Parent = screenGui

local title = Instance.new("TextLabel")
title.Text = "Moon Hub"
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 40)
title.Parent = frame

local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter your key here"
textBox.Font = Enum.Font.Gotham
textBox.TextSize = 20
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 240)
textBox.Size = UDim2.new(0.7, 0, 0, 35)
textBox.Position = UDim2.new(0.05, 0, 0.4, 0)
textBox.ClearTextOnFocus = false
textBox.Parent = frame

local confirmButton = Instance.new("TextButton")
confirmButton.Text = "✔"
confirmButton.Font = Enum.Font.GothamBold
confirmButton.TextSize = 20
confirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
confirmButton.Size = UDim2.new(0.2, 0, 0, 35)
confirmButton.Position = UDim2.new(0.75, 0, 0.4, 0)
confirmButton.Parent = frame

local copyButton = Instance.new("TextButton")
copyButton.Text = "Copy Key Site"
copyButton.Font = Enum.Font.Gotham
copyButton.TextSize = 18
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.BackgroundColor3 = Color3.fromRGB(50, 100, 200)
copyButton.Size = UDim2.new(0.9, 0, 0, 35)
copyButton.Position = UDim2.new(0.05, 0, 0.75, 0)
copyButton.Parent = frame

local HttpService = game:GetService("HttpService")
copyButton.MouseButton1Click:Connect(function()
    setclipboard("https://example.com/getkey")
end)

UIS.InputBegan:Connect(function(input, gp)
    if input.KeyCode == Enum.KeyCode.E and not gp then
        textBox:ReleaseFocus() 
        UIS.MouseBehavior = Enum.MouseBehavior.Default
    end
end)

local function LockMouse()
    UIS.MouseBehavior = Enum.MouseBehavior.LockCenter
end


