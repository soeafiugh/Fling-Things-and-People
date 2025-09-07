-- ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "MoonHubUI"
gui.ResetOnSpawn = false
gui.DisplayOrder = 9999 -- 最優先で表示
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Main Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 220)
frame.Position = UDim2.new(0.5, -200, 0.5, -110)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 200) -- 薄い黄色
frame.ZIndex = 10
frame.Parent = gui

-- 角丸
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

-- 背景三日月
local moon = Instance.new("ImageLabel")
moon.Size = UDim2.new(1, 0, 1, 0)
moon.BackgroundTransparency = 1
moon.Image = "rbxassetid://6031068433" -- 三日月アイコン
moon.ImageTransparency = 0.85 -- 薄く透ける
moon.ZIndex = 1 -- テキストやボタンより後ろ
moon.Parent = frame

-- タイトル
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -40, 0, 40)
title.Position = UDim2.new(0, 10, 0, 5)
title.BackgroundTransparency = 1
title.Text = "🌙 Moon Hub"
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.TextScaled = true
title.Font = Enum.Font.GothamBold
title.ZIndex = 10
title.Parent = frame

-- 閉じるボタン
local closeBtn = Instance.new("TextButton")
closeBtn.Size = UDim2.new(0, 30, 0, 30)
closeBtn.Position = UDim2.new(1, -35, 0, 5)
closeBtn.Text = "❌"
closeBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.TextScaled = true
closeBtn.Font = Enum.Font.GothamBold
closeBtn.ZIndex = 10
closeBtn.Parent = frame
closeBtn.MouseButton1Click:Connect(function()
    frame.Visible = false
end)

-- キー入力
local keyBox = Instance.new("TextBox")
keyBox.Size = UDim2.new(0.8, 0, 0, 40)
keyBox.Position = UDim2.new(0.1, 0, 0.35, 0)
keyBox.PlaceholderText = "Enter your key here..."
keyBox.Text = ""
keyBox.TextScaled = true
keyBox.BackgroundColor3 = Color3.fromRGB(240, 240, 200)
keyBox.TextColor3 = Color3.fromRGB(0, 0, 0)
keyBox.Font = Enum.Font.Gotham
keyBox.ZIndex = 10
keyBox.Parent = frame

local keyCorner = Instance.new("UICorner")
keyCorner.CornerRadius = UDim.new(0, 8)
keyCorner.Parent = keyBox

-- Get Key ボタン
local getKeyBtn = Instance.new("TextButton")
getKeyBtn.Size = UDim2.new(0, 120, 0, 40)
getKeyBtn.Position = UDim2.new(0.1, 0, 0.75, 0)
getKeyBtn.Text = "Get Key"
getKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 255)
getKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyBtn.Font = Enum.Font.GothamBold
getKeyBtn.TextScaled = true
getKeyBtn.ZIndex = 10
getKeyBtn.Parent = frame

-- Verify Key ボタン
local verifyBtn = Instance.new("TextButton")
verifyBtn.Size = UDim2.new(0, 120, 0, 40)
verifyBtn.Position = UDim2.new(0.5, -60, 0.75, 0)
verifyBtn.Text = "Verify Key"
verifyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
verifyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
verifyBtn.Font = Enum.Font.GothamBold
verifyBtn.TextScaled = true
verifyBtn.ZIndex = 10
verifyBtn.Parent = frame

-- コピー機能
local keyLink = "https://example.com/keysystem"
getKeyBtn.MouseButton1Click:Connect(function()
    setclipboard(keyLink) -- クリックでリンクをコピー
end)





