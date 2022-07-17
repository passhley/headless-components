local HeadlessComponents = script:FindFirstAncestor("headless-components")
local AcceptableModifiers = require(HeadlessComponents.Util.Modifier.AcceptableModifiers)
local ReconcileProps = require(HeadlessComponents.Util.ReconcileProps)
local Roact = require(HeadlessComponents.Parent.Roact)
local RoactHooks = require(HeadlessComponents.Parent.RoactHooks)

local function Box(props)
	props = ReconcileProps(props, AcceptableModifiers.Box)

	local hasEvent = false
	if props.onEnter then
		props[Roact.Event.MouseEnter] = props.onEnter
		props.AutoButtonColor = false
		props.onEnter = nil
		props.Text = ""
		hasEvent = true
	end
	if props.onLeave then
		props[Roact.Event.MouseLeave] = props.onLeave
		props.AutoButtonColor = false
		props.onLeave = nil
		props.Text = ""
		hasEvent = true
	end
	if props.onClick then
		props[Roact.Event.Activated] = props.onClick
		props.AutoButtonColor = false
		props.onClick = nil
		props.Text = ""
		hasEvent = true
	end

	return Roact.createElement(hasEvent and "TextButton" or "Frame", props)
end

return RoactHooks.new(Roact)(Box, {
	defaultProps = {
		BackgroundColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		LayoutOrder = 1,
	},
})
