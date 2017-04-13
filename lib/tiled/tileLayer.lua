--[[
-- A layer of tiles
-- Members:
    - width     width of the layer in tile
    - height    height of the layer in tiles
    - data
]]

local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")
local layer = require(path .. "layer")

local tileLayer = class("tiled.tileLayer", layer)

function tileLayer:initialize(t)
    print "Tiled: building new tileLayer"

    layer.initialize(self, t)

    self.x = t.x
    self.y = t.y

    self.width = t.width
    self.height = t.height

    self.data = {}
    for i=1,self.height do
        table.insert(self.data,{})
    end
    for i,v in ipairs(t.data) do
        table.insert(self.data[math.floor((i-1)/self.height)+1],v)
    end
end

function tileLayer:draw(x, y, map)
    love.graphics.push()

    love.graphics.setColor(255, 255, 255, 255 * self.opacity)

    for r,row in ipairs(self.data) do
        for c,v in ipairs(row) do
            if v ~= 0 then
                love.graphics.draw(map.img, map.tiles[v].quad, (c-1)*map.tileW+x, (r-1)*map.tileH+y)
            end
        end
    end

    love.graphics.pop()
end





return tileLayer
