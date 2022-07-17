return {
	Name = "Uppercase",
	Modify = function(props)
		props.Text = props.Text:upper()
		return props
	end,
}
