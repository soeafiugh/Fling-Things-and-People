local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Moon Hub",
   Icon = 0, 
   LoadingTitle = "Moon Hub",
   LoadingSubtitle = "by Heisenberg",
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
                     hrp.CFrame = CFrame.new(rayOrigin + rayDirection)
         end
      end
   end,
})








