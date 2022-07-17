local HeadlessComponents = script:FindFirstAncestor("headless-components")
local ParseColor = require(HeadlessComponents.Util.Color.ParseColor)

return {
	Name = "BackgroundColor",
	Modify = function(props, content)
		props.BackgroundColor3 = ParseColor(content)

		return props
	end,
}
