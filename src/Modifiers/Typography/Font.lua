return {
	Name = "Font",
	Modify = function(props, content)
		if Enum.Font[content] then
			props.Font = Enum.Font[content]
		end

		return props
	end,
}
