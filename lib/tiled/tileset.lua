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
local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")

local tile = require(path .. "tile")

local tileset = class("tiled.tileset")

function tileset:initialize(t)
    self.img = love.graphics.newImage(string.sub(t.image,6))
    self.img:setFilter("linear", "nearest")
    self.tileW = t.tilewidth
    self.tileH = t.tileheight
    self.spacing = t.spacing

    self.tiles = {}

    local totalW, totalH = self.img:getWidth(), self.img:getHeight()
    local x, y = 0, 0
    --local i = 2

    for y = 0, totalH-self.tileH, self.tileH+self.spacing do
        for x = 0, totalW-self.tileW, self.tileW+self.spacing do
            if t.tiles[#self.tiles+1] then
                table.insert(self.tiles, tile(t.tiles[#self.tiles+1], love.graphics.newQuad(x, y, self.tileW, self.tileH, totalW, totalH), self.img))
            else
                table.insert(self.tiles, tile(#self.tiles+1, love.graphics.newQuad(x, y, self.tileW, self.tileH, totalW, totalH), self.img))
            end
        end
    end
end

return tileset
