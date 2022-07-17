local HeadlessComponents = script:FindFirstAncestor("headless-components")
local ModifyChild = require(HeadlessComponents.Util.Modifier.ModifyChild)
local ParseColor = require(HeadlessComponents.Util.Color.ParseColor)

local NAME = "__HEADLESS_RING__"

return {
	Name = "Ring",
	Modify = function(props, amount)
		if tonumber(amount) then
			return ModifyChild(props, NAME, "UIStroke", function()
				return {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Thickness = tonumber(amount),
				}
			end)
		else
			return ModifyChild(props, NAME, "UIStroke", function()
				return {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Color = ParseColor(amount),
				}
			end)
		end
	end,
}
