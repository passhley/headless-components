local HeadlessComponents = script:FindFirstAncestor("headless-components")
local Constants = require(HeadlessComponents.Util.Constants)
local ParseColor = require(HeadlessComponents.Util.Color.ParseColor)

return {
	Name = "Text",
	Modify = function(props, content)
		if Constants.TEXT_SIZE[content] then
			props.TextSize = Constants.TEXT_SIZE[content]
		elseif Constants.TEXT_ALIGN[content] then
			props.TextXAlignment = Constants.TEXT_ALIGN[content]
			props.TextYAlignment = Enum.TextYAlignment.Top
		else
			props.TextColor3 = ParseColor(content)
		end

		return props
	end,
}
