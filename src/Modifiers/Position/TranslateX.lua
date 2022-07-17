return {
	Name = "TranslateX",
	Modify = function(props, amount)
		local position = props.Position or UDim2.fromOffset(0, 0)
		props.Position = UDim2.new(
			position.X.Scale,
			tonumber(amount:sub(1, #amount - 2)),
			position.Y.Scale,
			position.Y.Offset
		)

		return props
	end,
}
