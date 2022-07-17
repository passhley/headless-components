return {
	Name = "Truncate",
	Modify = function(props)
		props.TextTruncate = Enum.TextTruncate.AtEnd
		return props
	end,
}
