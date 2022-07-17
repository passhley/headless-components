return {
	Name = "Height",
	Modify = function(props, amount)
		local size = props.Size or UDim2.fromScale(0, 0)
		local auto = props.AutomaticSize or Enum.AutomaticSize.None

		if amount == "full" then
			size = UDim2.new(size.X.Scale, size.X.Offset, 1, 0)
		elseif amount == "auto" then
			size = UDim2.new(size.X.Scale, size.X.Offset, 0, 0)

			if auto == Enum.AutomaticSize.X then
				auto = Enum.AutomaticSize.XY
			else
				auto = Enum.AutomaticSize.Y
			end
		else
			if amount:find("px") then
				size = UDim2.new(size.X.Scale, size.X.Offset, size.Y.Scale, tonumber(amount:sub(1, #amount - 2)))
			else
				size = UDim2.new(size.X.Scale, size.X.Offset, tonumber(amount), size.Y.Offset)
			end
		end

		props.Size = size
		props.AutomaticSize = auto

		return props
	end,
}
