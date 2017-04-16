--[[
-- An individual tile in tileset NOT in a layer
-- Members:
    - id - the numerical id of the tile
    - properties - table that holds the custom properties from tiled
    - animation - table that holds data for animating tiles (not yet implemented)
    - quad - the quad used to draw the tile
    - img - reference to the image used to draw this tile

]]

local class = require("lib.middleclass")

local tile = class("tiled.tile")

function tile:initialize(t, quad, img)
    if type(t)=="table" then
        self.id = t.id
        self.properties = t.properties or {}
        self.animation = t.animation or {}
    else
        self.id = t
        self.properties = {}
        self.animation = {}
    end
    self.quad = quad
    self.img = img
end

function tile:draw(x, y)
    love.graphics.draw(self.img, self.quad, x, y)
end




return tile
