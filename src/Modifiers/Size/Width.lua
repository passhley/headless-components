return {
	Name = "Width",
	Modify = function(props, amount)
		local size = props.Size or UDim2.fromScale(0, 0)
		local auto = props.AutomaticSize or Enum.AutomaticSize.None

		if amount == "full" then
			size = UDim2.new(1, 0, size.Y.Scale, size.Y.Offset)
		elseif amount == "auto" then
			size = UDim2.new(0, 0, size.Y.Scale, size.Y.Offset)

			if auto == Enum.AutomaticSize.Y then
				auto = Enum.AutomaticSize.XY
			else
				auto = Enum.AutomaticSize.X
			end
		else
			if amount:find("px") then
				size = UDim2.new(size.X.Scale, tonumber(amount:sub(1, #amount - 2)), size.Y.Scale, size.Y.Offset)
			else
				size = UDim2.new(tonumber(amount), size.X.Offset, size.Y.Scale, size.Y.Offset)
			end
		end

		props.Size = size
		props.AutomaticSize = auto

		return props
	end,
}
