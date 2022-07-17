local HeadlessComponents = script:FindFirstAncestor("headless-components")
local Constants = require(HeadlessComponents.Util.Constants)

return {
	Name = "Object",
	Modify = function(props, type)
		local modifiers = Constants.OBJECT[type]
		if modifiers then
			props.AnchorPoint = modifiers.AnchorPoint
			props.Position = modifiers.Position
		end

		return props
	end,
}
