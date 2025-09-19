local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

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

   link = {
      Enabled = false,
      Invite = "https://discord.gg/s3xs99yVGv", 
      RememberJoins = true 
   },

   KeySystem = true, 
   KeySettings = {
      Title = "Moon Hub",
      Subtitle = "Key System",
      Note = "Copy link",
      FileName = "Moon Key", 
      SaveKey = false,
      GrabKeyFromSite = false, 
      Key = {"sigurebanzai"}
   }
})

local Tab = Window:CreateTab("すべて", 4483362458) 

Section:Set("キーボード")

local Keybind = Tab:CreateKeybind({
   Name = "Teleport to Crosshair",
   CurrentKeybind = "T",
   HoldToInteract = false,
   Flag = "KeybindTP",
   Callback = function()
      local player = game.Players.LocalPlayer
      local character = player.Character or player.CharacterAdded:Wait()
      local hrp = character:FindFirstChild("HumanoidRootPart")
      local camera = workspace.CurrentCamera

      if hrp and camera then
         local rayOrigin = camera.CFrame.Position
         local rayDirection = camera.CFrame.LookVector * 1000 

         local raycastParams = RaycastParams.new()
         raycastParams.FilterDescendantsInstances = {character} 
         raycastParams.FilterType = Enum.RaycastFilterType.Blacklist

         local result = workspace:Raycast(rayOrigin, rayDirection, raycastParams)

         if result then
           
            hrp.CFrame = CFrame.new(result.Position + Vector3.new(0, 3, 0))
         else
         
-- 青い枠をつける関数
local function createHighlightBox(target)
    local box = Instance.new("BoxHandleAdornment")
    box.Size = target.Size + Vector3.new(0.5,0.5,0.5)
    box.Color3 = Color3.fromRGB(100, 180, 255)
    box.Transparency = 0.4
    box.AlwaysOnTop = true
    box.ZIndex = 5
    box.Adornee = target
    box.Name = "AnchorHighlight"
    box.Parent = target
    return box
end

-- 固定したものを管理する
local anchoredObjects = {}

-- Rキーで掴んでる物を固定
local Keybind = Tab:CreateKeybind({
   Name = "Anchor Objects",
   CurrentKeybind = "R",
   HoldToInteract = false,
   Flag = "AnchorKey",
   Callback = function()
      local player = game.Players.LocalPlayer
      local char = player.Character
      if not char then return end

      -- 掴んでいるものを探す
      for _,desc in pairs(char:GetDescendants()) do
         if desc:IsA("Weld") or desc:IsA("Motor6D") or desc:IsA("Constraint") then
            local part = desc.Part1 or (desc.Attachment1 and desc.Attachment1.Parent)
            if part and part:IsA("BasePart") and not anchoredObjects[part] then
               -- 固定
               part.Anchored = true
               local box = createHighlightBox(part)
               anchoredObjects[part] = {box = box}
            end
         end
      end
   end,
})

-- 他人に掴まれたら解除
game:GetService("RunService").Heartbeat:Connect(function()
   for part,data in pairs(anchoredObjects) do
      if not part:IsDescendantOf(workspace) then
         -- 消えたら自動解除
         if data.box then data.box:Destroy() end
         anchoredObjects[part] = nil
      else
         -- 他人に掴まれてるかチェック
         if part:FindFirstChildWhichIsA("Weld") or part:FindFirstChildWhichIsA("Constraint") then
            if not part:IsDescendantOf(game.Players.LocalPlayer.Character) then
               -- 自分以外が掴んだら固定解除
               part.Anchored = false
               if data.box then data.box:Destroy() end
               anchoredObjects[part] = nil
            end
         end
      end
   end
end)






