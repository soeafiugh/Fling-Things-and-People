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

local Tab = Window:CreateTab("all", 4483362458) -- Title, Image

local Section = Tab:CreateSection("all script")

ocal Button = Tab:CreateButton({
   Name = "Invincible",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})



