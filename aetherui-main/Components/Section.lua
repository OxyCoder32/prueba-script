local Creator = aetherrequire("./Utility/Creator")
local Theme = aetherrequire("./Utility/Theme")
local Button = aetherrequire("./Elements/Button")
local Toggle = aetherrequire("./Elements/Toggle")
local Slider = aetherrequire("./Elements/Slider")
local Dropdown = aetherrequire("./Elements/Dropdown")
local Label = aetherrequire("./Elements/Label")
local Paragraph = aetherrequire("./Elements/Paragraph")
local ColorPicker = aetherrequire("./Elements/ColorPicker")

local Section = {}
Section.__index = Section

function Section.New(parentColumn, title, icon)
    local self = setmetatable({}, Section)
    
    self.Container = Creator.New("Frame", {
        Name = "SectionContainer",
        Parent = parentColumn,
        ZIndex = -50,
        BorderSizePixel = 0,
        BackgroundColor3 = Theme.Colors.SidebarBg,
        AutomaticSize = Enum.AutomaticSize.XY,
        BackgroundTransparency = 1
    }, {
        Creator.New("UIListLayout", { Padding = UDim.new(0, 20), SortOrder = Enum.SortOrder.LayoutOrder })
    })

    if title then
        self.Header = Button.New(self.Container, {
            Name = title,
            Icon = icon,
            LayoutOrder = 0,
            InstanceName = "SectionButton"
        })
    end

    return self
end

function Section:CreateButton(config)
    return Button.New(self.Container, config)
end

function Section:CreateToggle(config)
    return Toggle.New(self.Container, config)
end

function Section:CreateSlider(config)
    return Slider.New(self.Container, config)
end

function Section:CreateDropdown(config)
    return Dropdown.New(self.Container, config)
end

function Section:CreateLabel(config)
    return Label.New(self.Container, config)
end

function Section:CreateParagraph(config)
    return Paragraph.New(self.Container, config)
end

function Section:CreateColorPicker(config)
    return ColorPicker.New(self.Container, config)
end

return Section
