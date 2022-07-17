local HeadlessComponents = script:FindFirstAncestor("headless-components")

local Roact = require(HeadlessComponents.Parent.Roact)

return Roact.createContext({})
