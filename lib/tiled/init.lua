local path = ...

local class = require("lib.middleclass")

local tileLayer = require(path .. ".tileLayer")
local imageLayer = require(path .. ".imageLayer")
local groupLayer = require(path .. ".groupLayer")


local map = class("map")

function map:initialize(filepath)
    local t = require(filepath)

    self.width = t.width
    self.height = t.height

    self.img = love.graphics.newImage(t.tilesets[1].image)
    self.img:setFilter("linear", "nearest")
    self.tileW = t.tilesets[1].tilewidth
    self.tileH = t.tilesets[1].tileheight
    self.spacing = t.tilesets[1].spacing

    self.quads = {}
    local totalW, totalH = self.img:getWidth(), self.img:getHeight()
    local x, y=0, 0

    for y = 0, totalH-self.tileH, self.tileH+self.spacing do
        for x = 0, totalW-self.tileW, self.tileW+self.spacing do
            table.insert(self.quads, love.graphics.newQuad(x, y, self.tileW, self.tileH, totalW, totalH))
        end
    end

    self.layers={}


    for _,v in ipairs(t.layers) do
        if v.type == "tilelayer" then
            table.insert(self.layers, tileLayer(v))
        elseif v.type == "imagelayer" and image then
            table.insert(self.layers, imageLayer(v))
        elseif v.type == "imagelayer" and layers then
            table.insert(self.layers, (v))
        end
    end
end

function map:draw(x, y)
    x = x or 0
    y = y or 0
    for _, layer in ipairs(self.layers) do
        layer:draw(x, y, self)
    end
end

return map
