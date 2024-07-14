local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Nexus | Prison Life",
   LoadingTitle = "Nexus",
   LoadingSubtitle = "by v3rt3x",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "Nexus",
      FileName = "Prison Life"
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

local Main = Window:CreateTab("Main", 4483362458)

local RemoveDoors = Main:CreateButton({
    Name = "Remove All Doors",
    Callback = function()
        for i,v in pairs(game.Workspace["Doors"]:GetChildren()) do
            v.block:Destroy()
        end
        game.Workspace.Prison_Fences.Prison_Gate:Destroy()
    end,
})

local Teleports = Main:CreateSection("Teleports")

local CriminalBase = Main:CreateButton({
    Name = "Criminal Base",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-943.4, 93.5, 2056, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end,
})

local PrisonYard = Main:CreateButton({
    Name = "Prison Yard",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(736.4, 98, 2517.5)
    end,
})

local PrisonCells = Main:CreateButton({
    Name = "Prison Cells",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919.5, 100, 2441.75, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end,
})

local PrisonGate = Main:CreateButton({
    Name = "Prison Gate",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(450, 98, 2216.75, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    end,
})

local GuardArmory = Main:CreateButton({
    Name = "Guard Armory",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(837.25, 100, 2271, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end,
})

local SurveilanceCams = Main:CreateButton({
    Name = "Surveilance Cameras",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(790.660095, 97.8498306, 2319.90259, 0.707145631, 0, 0.707068145, 0, 1, 0, -0.707068145, 0, 0.707145631)
    end,
})

local Cafeteria = Main:CreateButton({
    Name = "Cafeteria",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(919, 100, 2325.75, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    end,
})

local Kitchen = Main:CreateButton({
    Name = "Kitchen",
    Callback = function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(906.5, 100, 2237.75, -1, 0, 0, 0, 1, 0, 0, 0, -1)
    end,
})

local Settings = Window:CreateTab("Settings", 4483362458)

local DestroyUI = Settings:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})
