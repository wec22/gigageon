--[[
-- Class to hold the metadata for the tilesets used by map
-- Members:
    - tileW     - width of each tile in pixels
    - tileH     - height of each tile in pixels
    - img       - the image used to draw the tiles
    - spacing   - spacing between each tile in the tile image
    - margin    - spacing between the edge of the img and the first tile
    - quads     - a table of quads used to draw each table


]]





local class = require("lib.middleclass")

local tileset = class("tileset")

function tileset:initialize(t)
    self.img = love.graphics.newImage(t.image)
    self.img:setFilter("linear", "nearest")
    self.tileW = t.tilewidth
    self.tileH = t.tileheight
    self.spacing = t.spacing

    self.quads = {}
    local totalW, totalH = self.img:getWidth(), self.img:getHeight()
    local x, y=0, 0

    for y = 0, totalH-self.tileH, self.tileH+self.spacing do
        for x = 0, totalW-self.tileW, self.tileW+self.spacing do
            table.insert(self.quads, love.graphics.newQuad(x, y, self.tileW, self.tileH, totalW, totalH))
        end
    end
end

return tileset
