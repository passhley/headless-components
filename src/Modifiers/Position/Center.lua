return {
	Name = "Center",
	Modify = function(props)
		props.AnchorPoint = Vector2.new(0.5, 0.5)
		props.Position = UDim2.fromScale(0.5, 0.5)

		return props
	end,
}
