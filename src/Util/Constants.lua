return {
	TEXT_ALIGN = {
		["center"] = Enum.TextXAlignment.Center,
		["left"] = Enum.TextXAlignment.Left,
		["right"] = Enum.TextXAlignment.Right,
	},

	TEXT_SIZE = {
		["xs"] = 12,
		["sm"] = 14,
		["md"] = 16,
		["lg"] = 18,
		["xl"] = 20,
		["2xl"] = 24,
		["3xl"] = 30,
		["4xl"] = 36,
		["5xl"] = 48,
		["6xl"] = 60,
	},

	CORNER = {
		["md"] = UDim.new(0, 6),
		["lg"] = UDim.new(0, 8),
		["xl"] = UDim.new(0, 12),
		["2xl"] = UDim.new(0, 16),
		["full"] = UDim.new(0.5, 0),
	},

	OBJECT = {
		["bottom"] = {
			AnchorPoint = Vector2.new(0.5, 1),
			Position = UDim2.fromScale(0.5, 1),
		},

		["center"] = {
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.fromScale(0.5, 0.5),
		},

		["left"] = {
			AnchorPoint = Vector2.new(0, 0.5),
			Position = UDim2.fromScale(0, 0.5),
		},

		["left-bottom"] = {
			AnchorPoint = Vector2.new(0, 1),
			Position = UDim2.fromScale(0, 1),
		},

		["left-top"] = {
			AnchorPoint = Vector2.new(0, 0),
			Position = UDim2.fromScale(0, 0),
		},

		["right"] = {
			AnchorPoint = Vector2.new(1, 0.5),
			Position = UDim2.fromScale(1, 0.5),
		},

		["right-bottom"] = {
			AnchorPoint = Vector2.new(1, 1),
			Position = UDim2.fromScale(1, 1),
		},

		["right-top"] = {
			AnchorPoint = Vector2.new(1, 0),
			Position = UDim2.fromScale(1, 0),
		},

		["top"] = {
			AnchorPoint = Vector2.new(0.5, 0),
			Position = UDim2.fromScale(0.5, 0),
		},
	},
}
