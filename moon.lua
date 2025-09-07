--// Moon Hub Key System UI Demo (with Copy Button)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 350, 0, 200)
frame.Position = UDim2.new(0.5, -175, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(255,250,205)
frame.BorderSizePixel = 0
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 15)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 50)
title.BackgroundTransparency = 1
title.Text = "Moon Hub"
title.Font = Enum.Font.GothamBold
title.TextSize = 28
title.TextColor3 = Color3.fromRGB(40,40,40)
title.Parent = frame

local textbox = Instance.new("TextBox")
textbox.Size = UDim2.new(0, 220, 0, 40)
textbox.Position = UDim2.new(0, 20, 0, 70)
textbox.PlaceholderText = "Enter your key here..."
textbox.Font = Enum.Font.Gotham
textbox.TextSize = 18
textbox.Text = ""
textbox.BackgroundColor3 = Color3.fromRGB(255,255,255)
textbox.Parent = frame

local boxcorner = Instance.new("UICorner")
boxcorner.CornerRadius = UDim.new(0, 8)
boxcorner.Parent = textbox

local button = Instance.new("TextButton")
button.Size = UDim2.new(0, 40, 0, 40)
button.Position = UDim2.new(0, 250, 0, 70)
button.Text = "✅"
button.Font = Enum.Font.GothamBold
button.TextSize = 22
button.TextColor3 = Color3.fromRGB(255,255,255)
button.BackgroundColor3 = Color3.fromRGB(60,180,75)
button.Parent = frame

local btncorner = Instance.new("UICorner")
btncorner.CornerRadius = UDim.new(0, 8)
btncorner.Parent = button

local getkey = Instance.new("TextButton")
getkey.Size = UDim2.new(1, -20, 0, 30)
getkey.Position = UDim2.new(0, 10, 0, 150)
getkey.BackgroundTransparency = 1
getkey.Text = "Get Key: https://moonhub-key.com"
getkey.Font = Enum.Font.Gotham
getkey.TextSize = 16
getkey.TextColor3 = Color3.fromRGB(80,80,200)
getkey.TextXAlignment = Enum.TextXAlignment.Left
getkey.Parent = frame

getkey.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard("https://moonhub-key.com")
    end
    getkey.Text = "Copied! https://moonhub-key.com"
    task.wait(2)
    getkey.Text = "Get Key: https://moonhub-key.com"
end)

