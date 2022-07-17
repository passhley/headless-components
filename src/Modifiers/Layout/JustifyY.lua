local HeadlessComponents = script:FindFirstAncestor("headless-components")
local ModifyChild = require(HeadlessComponents.Util.Modifier.ModifyChild)

local NAME = "__HEADLESS_LIST__"

return {
	Name = "JustifyY",
	Modify = function(props, type)
		if type == "start" then
			return ModifyChild(props, NAME, "UIListLayout", function()
				return {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Top,
				}
			end)
		elseif type == "center" then
			return ModifyChild(props, NAME, "UIListLayout", function()
				return {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
				}
			end)
		elseif type == "end" then
			return ModifyChild(props, NAME, "UIListLayout", function()
				return {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
				}
			end)
		end

		return props
	end,
}
