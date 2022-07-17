return {
	Name = "Opacity",
	Modify = function(props, amount)
		props.BackgroundTransparency = (100 - tonumber(amount)) / 100
		return props
	end,
}
