local HeadlessComponents = script:FindFirstAncestor("headless-components")
local Constants = require(HeadlessComponents.Util.Constants)
local ModifyChild = require(HeadlessComponents.Util.Modifier.ModifyChild)

local NAME = "__HEADLESS_CORNER__"

return {
	Name = "BorderRadius",
	Modify = function(props, radius)
		return ModifyChild(props, NAME, "UICorner", function()
			return {
				CornerRadius = Constants.CORNER[radius] or UDim.new(0, 4),
			}
		end)
	end,
}
