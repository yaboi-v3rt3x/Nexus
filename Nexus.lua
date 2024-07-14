local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nexus",
   LoadingTitle = "Nexus",
   LoadingSubtitle = "by v3rt3x",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "Nexus",
      FileName = "Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },
   KeySystem = false,
   KeySettings = {
      Title = "Nexus | Key System",
      Subtitle = "",
      Note = "Nexus is currently keyless, so if you're seeing this there was an error and you must re-execute Nexus.",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false, 
      Key = {"NexusKey"}
   }
})

local MainHub = Window:CreateTab("Main Hub", 4483362458)

local Notice = MainHub:CreateParagraph({Title = "Attention Exploiter!", Content = "The main hub is currently under development! As of 07/14/2024, there is only 1 sub-hub available which is under development as well."})

local SubHubs = Window:CreateTab("Sub Hubs", 4483362458)

local PrisonLife = SubHubs:CreateButton({
   Name = "Prison Life",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/yaboi-v3rt3x/Nexus/main/Sub-Hubs/Prison-Life.lua"))()
   end,
})

local Settings = Window:CreateTab("Settings", 4483362458)

local DestroyUI = Settings:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})
