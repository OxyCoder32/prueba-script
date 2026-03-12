local Creator = {}

function Creator.New(className, properties, children)
    local inst = Instance.new(className)
    
    if properties then
        for propName, propValue in pairs(properties) do
            if className == "UIGradient" and propName == "Color" and typeof(propValue) == "Color3" then
                inst.Color = ColorSequence.new(propValue)
            else
                inst[propName] = propValue
            end
        end
    end
    
    if children then
        for _, child in ipairs(children) do
            child.Parent = inst
        end
    end
    
    return inst
end

return Creator