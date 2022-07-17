local HeadlessComponents = script:FindFirstAncestor("headless-components")
local Modifiers = require(HeadlessComponents.Modifiers)

return {
	["bg"] = Modifiers.BackgroundColor,
	["center"] = Modifiers.Center,
	["font"] = Modifiers.Font,
	["h"] = Modifiers.Height,
	["invisible"] = Modifiers.Invisible,
	["italic"] = Modifiers.Italic,
	["justify-x"] = Modifiers.JustifyX,
	["justify-y"] = Modifiers.JustifyY,
	["lowercase"] = Modifiers.Lowercase,
	["object"] = Modifiers.Object,
	["opacity"] = Modifiers.Opacity,
	["px"] = Modifiers.PaddingX,
	["py"] = Modifiers.PaddingY,
	["ring"] = Modifiers.Ring,
	["rounded"] = Modifiers.BorderRadius,
	["space-x"] = Modifiers.SpaceX,
	["space-y"] = Modifiers.SpaceY,
	["text"] = Modifiers.Text,
	["translate-x"] = Modifiers.TranslateX,
	["translate-y"] = Modifiers.TranslateY,
	["truncate"] = Modifiers.Truncate,
	["uppercase"] = Modifiers.Uppercase,
	["visible"] = Modifiers.Visible,
	["w"] = Modifiers.Width,
}
