<h1 align="center">headless-components</h1>
<h3 align="center">Unstyled components with built in Talwind CSS like classes</h3>

# Warning
This documentation ( and project ) are still very early in development. Don't expect everything you see here to be final

## Why headless-components

### Easy to use, quickly customized components
With `headless-components` you can quickly iterate and customize your components using our primitive components `Box` and `Text` along with our classes.

### Built in color palette
No need to create your own set of colors, with built in support for all Tailwind CSS colors, you can stop worrying about figuring out which colors are right, and you can get straight into picking.

## Installation

### Wally

Add the latest version of `headless-components` to your wally.toml (ex: `HeadlessComponents = "passhley/headless-components@0.0"`)

## Getting Started

### Box
Our `Box` component is a primitive Frame with some default styling. You can set any Frame property just like you normally would, but we also allow for you to pass a `class` string for all your styling.
We also allow support for input events on our `Box` component. You can use `onClick`, `onEnter` and `onLeave`.

```lua
	return e(HeadlessComponents.Box, {
		class = "w:240px h:100px bg:white rounded:md",

		BackgroundTransparency = 0.2,
		LayoutOrder = 1,
		ZIndex = 5,
	})
```

### Text
Similar to `Box`, `Text` is a primitive TextLabel with default styling.

```lua
	return e(HeadlessComponents.Text, {
		class = "w:auto h:auto font:GothamMedium text:black text:xs",
		Text = "Hello, world!"
	})
```

## Modifiers

### Border
Using the `rounded` tag will allow you to add corners to your Box.

```lua
	md: 6px,
	lg: 8px,
	xl: 12px,
	2xl: 16px,
	full
```

### Color

