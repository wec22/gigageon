--[[
-- An individual tile in tileset NOT in a layer
-- Members:
    - id - the numerical id of the tile
    - properties - table that holds the custom properties from tiled
    - animation - table that holds data for animating tiles (not yet implemented)
    - quad - the quad used to draw the tile


]]

local class = require("lib.middleclass")

local tile = class("tiled.tile")

function tile:initialize(t, quad)
    self.id = t.id
    self.properties = t.properties or {}
    self.animation = t.animation or {}
    self.quad = quad
end

return tile
