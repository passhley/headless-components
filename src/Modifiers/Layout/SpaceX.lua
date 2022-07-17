local HeadlessComponents = script:FindFirstAncestor("headless-components")
local ModifyChild = require(HeadlessComponents.Util.Modifier.ModifyChild)

local NAME = "__HEADLESS_LIST__"

return {
	Name = "SpaceX",
	Modify = function(props, amount)
		return ModifyChild(props, NAME, "UIListLayout", function()
			return {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, tonumber(amount)),
				SortOrder = Enum.SortOrder.LayoutOrder,
			}
		end)
	end,
}
