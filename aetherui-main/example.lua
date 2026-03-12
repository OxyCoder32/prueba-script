local AetherUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/vendettawashere/aetherui/main/init.lua"))()

local Window = AetherUI.New("Aether Script Hub")

local GeneralTab = Window:CreateTab("General", "rbxassetid://133011264532201", 1)
local FarmTab = Window:CreateTab("Farm", "rbxassetid://102666744617662", 2)
local PlayerTab = Window:CreateTab("Player", "rbxassetid://71227459607301", 3)

local CombatSection = GeneralTab:CreateSection(1)
local VisualsSection = GeneralTab:CreateSection(2)

CombatSection:CreateToggle({
    Name = "Aimbot",
    Default = false,
    Callback = function(state)
        print("Aimbot state:", state)
    end
})

CombatSection:CreateToggle({
    Name = "Kill Aura",
    Default = true,
    Callback = function(state)
        print("Kill Aura state:", state)
    end
})

CombatSection:CreateDropdown({
    Name = "Target",
    Options = {"Gojo Saturo", "Sukuna", "Yuji Itadori", "Megumi Fushiguro"},
    Default = "Select",
    ShowName = true,
    Callback = function(selected)
        print("Selected Target:", selected)
    end
})

VisualsSection:CreateToggle({
    Name = "ESP",
    Default = false,
    Callback = function(state)
        print("ESP state:", state)
    end
})

VisualsSection:CreateSlider({
    Name = "FOV Circle",
    Min = 10,
    Max = 120,
    Default = 60,
    ShowValue = true,
    Callback = function(value)
        print("FOV Set to:", value)
    end
})

local FarmSection = FarmTab:CreateSection(1)

FarmSection:CreateLabel({
    Text = "Select Npc to Farm"
})

FarmSection:CreateButton({
    Name = "Infinite Energy",
    Icon = "rbxassetid://133011264532201",
    Callback = function()
        print("Infinite Energy Activated!")
    end
})

FarmSection:CreateParagraph({
    Text = "Status: Cooking UI\nDetail Explanation of the Config."
})
