return {
	Name = "TranslateY",
	Modify = function(props, amount)
		local position = props.Position or UDim2.fromOffset(0, 0)
		props.Position = UDim2.new(
			position.X.Scale,
			position.X.Offset,
			position.Y.Scale,
			tonumber(amount:sub(1, #amount - 2))
		)

		return props
	end,
}
