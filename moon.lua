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

local Tab = Window:CreateTab("defense", 4483362458) -- Title, Image

ocal Button = Tab:CreateButton({
   Name = "Invincible",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

local Tab = Window:CreateTab("combat", 4483362458)

local Toggle = Tab:CreateToggle({
   Name = "choice",
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
   -- The function that takes place when the toggle is pressed
   -- The variable (Value) is a boolean on whether the toggle is true or false
   end,
})

Toggle:Set(false)

ocal Button = Tab:CreateButton({
   Name = "Reskill",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})


