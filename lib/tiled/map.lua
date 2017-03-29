local path = (...):match("(.-)[^%.]+$")

local class = require("lib.middleclass")

local tileLayer = require(path .. "tileLayer")
local imageLayer = require(path .. "imageLayer")
local groupLayer = require(path .. "groupLayer")

local tileset = require(path .. "tileset")

local map = class("map")

function map:initialize(filepath)
    local t = require(filepath)

    self.width = t.width
    self.height = t.height

    self.tilesets = {}
    for _,v in ipairs(t.tilesets) do
        table.insert(self.tilesets, tileset(v))
    end


    self.layers = {}
    for _,v in ipairs(t.layers) do
        if v.type == "tilelayer" then
            table.insert(self.layers, tileLayer(v))
        elseif v.type == "imagelayer" and v.image then
            table.insert(self.layers, imageLayer(v))
        elseif v.type == "imagelayer" and v.layers then
            table.insert(self.layers, groupLayer(v))
        end
    end
end

function map:draw(x, y, tileset)
    x = x or 0
    y = y or 0

    local color = {love.graphics.getColor()}
    tileset = tileset or self.tilesets[1]
    for _, layer in ipairs(self.layers) do
        layer:draw(x, y, tileset)
    end
    love.graphics.setColor(unpack(color))
end

return map
