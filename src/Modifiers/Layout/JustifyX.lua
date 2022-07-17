local HeadlessComponents = script:FindFirstAncestor("headless-components")
local ModifyChild = require(HeadlessComponents.Util.Modifier.ModifyChild)

local NAME = "__HEADLESS_LIST__"

return {
	Name = "JustifyX",
	Modify = function(props, type)
		if type == "start" then
			return ModifyChild(props, NAME, "UIListLayout", function()
				return {
					HorizontalAlignment = Enum.HorizontalAlignment.Left,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}
			end)
		elseif type == "center" then
			return ModifyChild(props, NAME, "UIListLayout", function()
				return {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}
			end)
		elseif type == "end" then
			return ModifyChild(props, NAME, "UIListLayout", function()
				return {
					HorizontalAlignment = Enum.HorizontalAlignment.Right,
					SortOrder = Enum.SortOrder.LayoutOrder,
				}
			end)
		end

		return props
	end,
}
