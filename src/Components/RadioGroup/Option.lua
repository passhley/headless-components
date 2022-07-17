local HeadlessComponents = script:FindFirstAncestor("headless-components")

local RadioGroupContext = require(HeadlessComponents.Components.RadioGroup.RadioGroupContext)
local Roact = require(HeadlessComponents.Parent.Roact)
local RoactHooks = require(HeadlessComponents.Parent.RoactHooks)

local e = Roact.createElement

type Props = {
	value: any,
	render: (active: boolean, onChange: (newValue: string) -> ()) -> (),
}

local function Option(props: Props)
	return e(RadioGroupContext.Consumer, {
		render = function(value)
			return props.render(value.active == props.value, value.onChange)
		end,
	})
end

return RoactHooks.new(Roact)(Option)
