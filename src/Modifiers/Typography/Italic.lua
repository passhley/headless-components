return {
	Name = "Italic",
	Modify = function(props)
		props.RichText = true
		props.Text = "<i>" .. props.Text .. "</i>"

		return props
	end,
}
