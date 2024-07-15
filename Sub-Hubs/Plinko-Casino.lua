local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Nexus | Plinko Casino",
    LoadingTitle = "Nexus",
    LoadingSubtitle = "by v3rt3x",
    ConfigurationSaving = {
       Enabled = false,
       FolderName = "Nexus",
       FileName = "Plinko Casino"
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

local CashSection = Main:CreateSection("Cash")

local TCashButton = Main:CreateButton({
    Name = "+1T Cash",
    Callback = function()
        game:GetService("ReplicatedStorage").CashTransfer1:FireServer(1000000000000, "Cash")
    end,
})

local QACashButton = Main:CreateButton({
    Name = "+1QA Cash",
    Callback = function()
        game:GetService("ReplicatedStorage").CashTransfer1:FireServer(1000000000000000, "Cash")
    end,
})

local QICashButton = Main:CreateButton({
    Name = "+1QI Cash",
    Callback = function()
        game:GetService("ReplicatedStorage").CashTransfer1:FireServer(1000000000000000000, "Cash")
    end,
})

local TokensSection = Main:CreateSection("Tokens")

local TTokensButton = Main:CreateButton({
    Name = "+1T Tokens",
    Callback = function()
        game:GetService("ReplicatedStorage").CashOut:FireServer(1000000000000)
    end,
})

local QATokensButton = Main:CreateButton({
    Name = "+1QA Tokens",
    Callback = function()
        game:GetService("ReplicatedStorage").CashOut:FireServer(1000000000000000)
    end,
})

local QITokensButton = Main:CreateButton({
    Name = "+1QI Tokens",
    Callback = function()
        game:GetService("ReplicatedStorage").CashOut:FireServer(1000000000000000000)
    end,
})

local BestWinSection = Main:CreateSection("Best Win")

local TBestWinButton = Main:CreateButton({
    Name = "+1T Best Win",
    Callback = function()
        game:GetService("ReplicatedStorage").CashTransfer1:FireServer(1000000000000, "BestWin")
    end,
})

local QABestWinButton = Main:CreateButton({
    Name = "+1QA Best Win",
    Callback = function()
        game:GetService("ReplicatedStorage").CashTransfer1:FireServer(1000000000000000, "BestWin")
    end,
})

local QIBestWinButton = Main:CreateButton({
    Name = "+1QI Best Win",
    Callback = function()
        game:GetService("ReplicatedStorage").CashTransfer1:FireServer(1000000000000000000, "BestWin")
    end,
})

local OtherSection = Main:CreateSection("Other")

local PlayerTagDropdown = Main:CreateDropdown({
    Name = "PlayerTag",
    Options = {"VIP","OWNER","TESTER","CUSTOM"},
    CurrentOption = {"VIP"},
    MultipleOptions = false,
    Flag = "PlayerTag", 
    Callback = function(Option)
        if Option == "VIP" then
            game:GetService("ReplicatedStorage").TagEquip:FireServer(-1)
        elseif Option == "OWNER" then
            game:GetService("ReplicatedStorage").TagEquip:FireServer(-2)
        elseif Option == "TESTER" then
            game:GetService("ReplicatedStorage").TagEquip:FireServer(-3)
        elseif Option == "CUSTOM" then
            game:GetService("ReplicatedStorage").TagEquip:FireServer(-4)
        end
    end,
})

local function teleportParts()
    local targetPart = workspace.PlinkoBoard:FindFirstChild("1000xMultRight")
    local targetPosition = targetPart.Position
    local ballsFolder = game.Workspace:FindFirstChild("Balls")
    if ballsFolder then
        for _, part in ipairs(ballsFolder:GetChildren()) do
            if part:IsA("BasePart") then
                part.Position = targetPosition
            end
        end
    end
end

local AutoWinToggle = Main:CreateToggle({
    Name = "Auto Win",
    CurrentValue = false,
    Flag = "AutoWin", 
    Callback = function(Value)
        if Value == true then
            _G.loop = true
            while _G.loop do
                teleportParts()
                wait()
            end
        else
           _G.loop = false
        end
    end,
})

local BallStatSpamToggle = Main:CreateToggle({
    Name = "Ball Stat Spam",
    CurrentValue = false,
    Flag = "BallStatSpam", 
    Callback = function(Value)
        if Value == true then
            _G.loop1 = true
            while _G.loop1 do
                game:GetService("ReplicatedStorage").TakeCashAddBall:FireServer()
                wait()
            end
        else
           _G.loop1 = false
        end
    end,
})

local TenTimesCashToggle = Main:CreateToggle({
    Name = "10x Cash",
    CurrentValue = false,
    Flag = "10xCash", 
    Callback = function(Value)
        if Value == true then
            _G.loop2 = true
            while _G.loop2 do
                workspace.Lobby.ServerEvents.SurfaceGui.Frame.Events.PurchaseEvents:FireServer(workspace.Lobby.ServerEvents.SurfaceGui.Frame.Events.GiveCash)
                wait()
            end
        else
           _G.loop2 = false
        end
    end,
})

local Settings = Window:CreateTab("Settings", 4483362458)

local DestroyUI = Settings:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
})
