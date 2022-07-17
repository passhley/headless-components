local HeadlessComponents = script:FindFirstAncestor("headless-components")

local RadioGroupContext = require(HeadlessComponents.Components.RadioGroup.RadioGroupContext)
local Roact = require(HeadlessComponents.Parent.Roact)
local RoactHooks = require(HeadlessComponents.Parent.RoactHooks)

type Props = {
	value: string,
	onChange: (newValue: string) -> (),
}

local function RadioGroup(props: Props)
	return Roact.createElement(RadioGroupContext.Provider, {
		value = {
			active = props.value,
			onChange = props.onChange,
		},
	}, {
		Children = Roact.createFragment(props[Roact.Children] or {}),
	})
end

return RoactHooks.new(Roact)(RadioGroup)
