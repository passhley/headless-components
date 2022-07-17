local Colors = require(script.Parent.Colors)

return function(str)
	if str:sub(1, 1) == "#" then
		-- HEX color
		return Color3.fromHex(str:sub(2))
	else
		if Colors[str] then
			-- TAILWIND color
			return Colors[str]
		end
	end

	return Color3.new(0, 0, 0)
end
