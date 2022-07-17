local HeadlessComponents = script:FindFirstAncestor("headless-components")
local ModifyChild = require(HeadlessComponents.Util.Modifier.ModifyChild)

local NAME = "__HEADLESS_PADDING__"

return {
	Name = "PaddingY",
	Modify = function(props, radius)
		local newPadding = UDim.new(0, tonumber(radius))

		return ModifyChild(props, NAME, "UIPadding", function()
			return {
				PaddingBottom = newPadding,
				PaddingTop = newPadding,
			}
		end)
	end,
}
