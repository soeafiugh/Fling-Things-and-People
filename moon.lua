-- LocalScript (StarterGui 内)
local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "MoonHubUI"
gui.ResetOnSpawn = false
gui.ZIndexBehavior = Enum.ZIndexBehavior.Global
gui.Parent = player:WaitForChild("PlayerGui")

-- メインフレーム
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 200)
frame.Position = UDim2.new(0.5, -175, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 204) -- 薄黄色
frame.BorderSizePixel = 0
frame.ZIndex = 10
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 20)
corner.Parent = frame

-- 三日月（Frame を2つ重ねて作る）
local moon = Instance.new("Frame")
moon.Size = UDim2.new(0, 180, 0, 180)
moon.Position = UDim2.new(0, -40, 0, -40)
moon.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
moon.BackgroundTransparency = 0.75
moon.BorderSizePixel = 0
moon.ZIndex = 5
moon.Parent = frame
moon.ClipsDescendants = true
moon.AnchorPoint = Vector2.new(0,0)

local mask = Instance.new("Frame")
mask.Size = UDim2.new(0, 180, 0, 180)
mask.Position = UDim2.new(0, -20, 0, -40)
mask.BackgroundColor3 = Color3.fromRGB(255, 255, 204)
mask.BorderSizePixel = 0
mask.ZIndex = 6
mask.Parent = moon

local moonCorner = Instance.new("UICorner")
moonCorner.CornerRadius = UDim.new(1, 0)
moonCorner.Parent = moon
local maskCorner = Instance.new("UICorner")
maskCorner.CornerRadius = UDim.new(1, 0)
maskCorner.Parent = mask

-- タイトル
local title = Instance.new("TextLabel")
title.Text = "Moon Hub"
title.Size = UDim2.new(1, -40, 0, 40)
title.Position = UDim2.new(0, 20, 0, 10)
title.Font = Enum.Font.GothamBold
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(0, 0, 0)
title.BackgroundTransparency = 1
title.ZIndex = 11
title.Parent = frame

-- 閉じるボタン (×)
local closeBtn = Instance.new("TextButton")
closeBtn.Text = "×"
closeBtn.Size = UDim2.new(0, 28, 0, 28)
closeBtn.Position = UDim2.new(1, -34, 0, 6)
closeBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
closeBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextScaled = true
closeBtn.ZIndex = 12
closeBtn.Parent = frame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(1, 0)
closeCorner.Parent = closeBtn

closeBtn.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- 入力欄
local textBox = Instance.new("TextBox")
textBox.PlaceholderText = "Enter your key..."
textBox.Size = UDim2.new(0, 200, 0, 30)
textBox.Position = UDim2.new(0, 20, 0, 70)
textBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
textBox.Text = ""
textBox.ClearTextOnFocus = false
textBox.ZIndex = 11
textBox.Parent = frame

local boxCorner = Instance.new("UICorner")
boxCorner.CornerRadius = UDim.new(0, 10)
boxCorner.Parent = textBox

-- 確定ボタン (✔)
local confirmBtn = Instance.new("TextButton")
confirmBtn.Text = "✔"
confirmBtn.Size = UDim2.new(0, 40, 0, 30)
confirmBtn.Position = UDim2.new(0, 230, 0, 70)
confirmBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
confirmBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
confirmBtn.Font = Enum.Font.SourceSansBold
confirmBtn.TextScaled = true
confirmBtn.ZIndex = 11
confirmBtn.Parent = frame

local confirmCorner = Instance.new("UICorner")
confirmCorner.CornerRadius = UDim.new(0, 10)
confirmCorner.Parent = confirmBtn

-- Copy ボタン
local copyBtn = Instance.new("TextButton")
copyBtn.Text = "Copy Key Site"
copyBtn.Size = UDim2.new(0.8, 0, 0, 30)
copyBtn.Position = UDim2.new(0.1, 0, 0, 120)
copyBtn.BackgroundColor3 = Color3.fromRGB(70, 130, 180)
copyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
copyBtn.Font = Enum.Font.SourceSansBold
copyBtn.TextScaled = true
copyBtn.ZIndex = 11
copyBtn.Parent = frame

local copyCorner = Instance.new("UICorner")
copyCorner.CornerRadius = UDim.new(0, 10)
copyCorner.Parent = copyBtn

-- コピー処理（リンクは表示せずコピーだけ）
local keySite = "https://example.com/real-key-site"
copyBtn.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(keySite)
    elseif toclipboard then
        toclipboard(keySite)
    end
end)



