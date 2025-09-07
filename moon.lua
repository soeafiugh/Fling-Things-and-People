local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.Parent = playerGui

-- Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 320, 0, 180)
frame.Position = UDim2.new(0.5, -160, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 200) -- 薄い黄色
frame.BackgroundTransparency = 0.1
frame.Parent = screenGui

-- 角を丸める
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

-- 三日月イメージ（背景にうすく表示）
local moon = Instance.new("ImageLabel")
moon.Image = "rbxassetid://10709721434" -- 三日月のPNGをアップロードして差し替え
moon.Size = UDim2.new(1, 0, 1, 0)
moon.BackgroundTransparency = 1
moon.ImageTransparency = 0.85 -- ほぼ透明で薄く
moon.ZIndex = 0 -- 一番後ろ
moon.Parent = frame

-- Title (Moon Hub)
local title = Instance.new("TextLabel")
title.Text = "Moon Hub"
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.BackgroundTransparency = 1
title.Size = UDim2.new(1, 0, 0, 40)
title.ZIndex = 2
title.Parent = frame

-- TextBox (キー入力)
local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter your key here"
textBox.Font = Enum.Font.Gotham
textBox.TextSize = 20
textBox.TextColor3 = Color3.fromRGB(0, 0, 0)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 240)
textBox.Size = UDim2.new(0.7, 0, 0, 35)
textBox.Position = UDim2.new(0.05, 0, 0.4, 0)
textBox.ClearTextOnFocus = false
textBox.ZIndex = 2
textBox.Parent = frame

local textboxCorner = Instance.new("UICorner")
textboxCorner.CornerRadius = UDim.new(0, 8)
textboxCorner.Parent = textBox

-- 確定ボタン
local confirmButton = Instance.new("TextButton")
confirmButton.Text = "✔"
confirmButton.Font = Enum.Font.GothamBold
confirmButton.TextSize = 20
confirmButton.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmButton.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
confirmButton.Size = UDim2.new(0.2, 0, 0, 35)
confirmButton.Position = UDim2.new(0.75, 0, 0.4, 0)
confirmButton.ZIndex = 2
confirmButton.Parent = frame

local confirmCorner = Instance.new("UICorner")
confirmCorner.CornerRadius = UDim.new(0, 8)
confirmCorner.Parent = confirmButton

-- コピー用ボタン
local copyButton = Instance.new("TextButton")
copyButton.Text = "Copy Key Site"
copyButton.Font = Enum.Font.Gotham
copyButton.TextSize = 18
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.BackgroundColor3 = Color3.fromRGB(50, 100, 200)
copyButton.Size = UDim2.new(0.9, 0, 0, 35)
copyButton.Position = UDim2.new(0.05, 0, 0.75, 0)
copyButton.ZIndex = 2
copyButton.Parent = frame

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 8)
copyCorner.Parent = copyButton

-- コピーボタンを押したらリンクコピー
copyButton.MouseButton1Click:Connect(function()
    setclipboard("https://example.com/getkey") -- ここに本物のキーサイトURL
end)

-- Eキーでマウス操作できるようにするがTextboxは自動フォーカスしない
UIS.InputBegan:Connect(function(input, gp)
    if input.KeyCode == Enum.KeyCode.E and not gp then
        textBox:ReleaseFocus()  -- 入力欄に勝手に入らないように
        UIS.MouseBehavior = Enum.MouseBehavior.Default
        frame.ZIndex = 10 -- 一番上に出す
    end
end)



