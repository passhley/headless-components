return function(strings)
	local newString = ""

	for _, str in ipairs(strings) do
		newString = newString .. " " .. str
	end

	return newString
end
