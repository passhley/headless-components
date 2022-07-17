local HeadlessComponents = script:FindFirstAncestor("headless-components")

local Box = require(HeadlessComponents.Components.Box)
local clsx = require(HeadlessComponents.Util.clsx)
local RadioGroup = require(HeadlessComponents.Components.RadioGroup)
local Roact = require(HeadlessComponents.Parent.Roact)
local RoactHooks = require(HeadlessComponents.Parent.RoactHooks)
local Text = require(HeadlessComponents.Components.Text)

local e = Roact.createElement
local plans = {
	{
		name = "Startup",
		ram = "12GB",
		cpus = "6 CPUs",
		disk = "160 GB SSD disk",
	},
	{
		name = "Business",
		ram = "16GB",
		cpus = "8 CPUs",
		disk = "512 GB SSD disk",
	},
	{
		name = "Enterprise",
		ram = "32GB",
		cpus = "12 CPUs",
		disk = "1024 GB SSD disk",
	},
}

local function RadioGroupStory(_props, hooks: any)
	local val, set = hooks.useState(plans[1])
	local children = {}

	for idx, plan in ipairs(plans) do
		children[plan.name .. idx] = e(RadioGroup.Option, {
			value = plan,
			render = function(active, change)
				return e(Box, {
					class = clsx({
						"w:350px h:auto rounded:md p-x:16 p-y:16 bg:white",
						active and "bg:sky-900 opacity:75 ring:sky-300 ring:2" or "",
					}),
					LayoutOrder = idx,
					onClick = function()
						change(plan)
					end,
				}, {
					Info = e(Box, {
						class = "w:auto h:auto opacity:0 space-y:4",
					}, {
						Name = e(Text, {
							class = clsx({
								"w:auto h:auto opacity:0 text:md font:GothamMedium text:gray-900",
								active and "text:white" or "",
							}),
							LayoutOrder = 1,
							Text = plan.name,
						}),

						Description = e(Text, {
							class = clsx({
								"w:auto h:auto opacity:0 text:xs font:GothamMedium text:gray-600",
								active and "text:white" or "",
							}),
							LayoutOrder = 2,
							Text = ("%s/%s, %s"):format(plan.ram, plan.cpus, plan.disk),
						}),
					}),
				})
			end,
		})
	end

	return Roact.createElement(RadioGroup.Element, {
		value = val,
		onChange = set,
	}, {
		Container = e(Box, {
			class = "w:auto h:auto center opacity:0 space-y:6",
		}, children),
	})
end

RadioGroupStory = RoactHooks.new(Roact)(RadioGroupStory)

return function(target)
	local handle = Roact.mount(Roact.createElement(RadioGroupStory), target)
	return function()
		Roact.unmount(handle)
		handle = nil
	end
end
