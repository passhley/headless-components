local HeadlessComponents = script.Parent.Parent.Parent

local None = newproxy(true)
local Roact = require(HeadlessComponents.Parent.Roact)

local function merge(...)
	local new = {}

	for dictionaryIndex = 1, select("#", ...) do
		local dictionary = select(dictionaryIndex, ...)

		if dictionary ~= nil then
			for key, value in pairs(dictionary) do
				if value == None then
					new[key] = nil
				else
					new[key] = value
				end
			end
		end
	end

	return new
end

return function(props, childName, className, modify)
	local children = props[Roact.Children] or {}
	if children then
		children = table.clone(children)
	end

	local child = children[childName]
	if child == nil then
		child = Roact.createElement(className)
	end

	-- Immutability
	child = merge(child, {
		props = merge(child.props, modify(child.props)),
	})

	children = merge(children, {
		[childName] = child,
	})

	props = merge(props, {
		[Roact.Children] = children,
	})

	return props
end
