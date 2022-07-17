local HeadlessComponents = script:FindFirstAncestor("headless-components")
local AcceptableModifiers = require(HeadlessComponents.Util.Modifier.AcceptableModifiers)
local ReconcileProps = require(HeadlessComponents.Util.ReconcileProps)
local Roact = require(HeadlessComponents.Parent.Roact)
local RoactHooks = require(HeadlessComponents.Parent.RoactHooks)

local function Text(props)
	props = ReconcileProps(props, AcceptableModifiers.Text)
	return Roact.createElement("TextLabel", props)
end

return RoactHooks.new(Roact)(Text, {
	defaultProps = {
		BackgroundTransparency = 1,
		Font = Enum.Font.Gotham,
		TextSize = 16,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
	},
})
