return {
	Name = "Lowercase",
	Modify = function(props)
		props.Text = props.Text:lower()
		return props
	end,
}
