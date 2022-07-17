local ModifierMap = require(script.Parent.Modifier.ModifierMap)

return function(props, acceptable)
	if props.class then
		local newProps = table.clone(props)
		local modifiers = props.class:split(" ")

		for _, prop in ipairs(modifiers) do
			local data = prop:split(":")
			local modifier = ModifierMap[data[1]]

			if modifier and acceptable[modifier.Name] then
				newProps = modifier.Modify(newProps, data[2])
			end
		end

		newProps.class = nil
		return newProps
	end

	return props
end
