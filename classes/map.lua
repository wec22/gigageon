local class = require("lib.middleclass")
local inspect = require("lib.inspect")


local map = class("map")

local layerc = class("layerc")

function layerc:initialize(visible, opacity, offsetx, offsety, x, y)
    self.type = type

    self.visible = visible or true
    self.opacity = opacity or 1

    self.offsetx = offsetx or 0
    self.offsety = offsety or 0

    self.x = x or 0
    self.y = y or 0
end

function layerc:draw(x,y, map)
    assert(type(map)=="table", "bad argument #3 in function 'draw' (table expected got "..type(map)..")")

    if self.type == "tile" then
        love.graphics.push()

        love.graphics.setColor(255, 255, 255, 255 * self.opacity)

        for r,row in ipairs(self.data) do
            for c,v in ipairs(row) do
                if v ~= 0 then
                    love.graphics.draw(map.img, map.quads[v], (c-1)*map.tileW+x, (r-1)*map.tileH+y)
                end
            end
        end

        love.graphics.pop()

    elseif self.type == "group" then
        for _,v in ipairs(self) do
            v:draw(x, y, map)
        end
    end
end

local function buildlayers(layers)
    assert(type(layers)=="table", "layers must be a table. it is curently of type: "..type(layers))
    local t={
        meta={}
    }
    for _,layer in ipairs(layers) do
        local l = layerc(layer.visible, layer.opacity, layer.offsetx, layer.offsety)

        if layer.type == "tilelayer" then
            l.type = "tile"

            l.x = layer.x
            l.y = layer.y

            l.width = layer.width
            l.height = layer.height

            l.data = {}
            for i=1,layer.height do
                table.insert(l.data,{})
            end
            for i,v in ipairs(layer.data) do
                --assert(l.data[math.floor(i/l.height)+1],math.floor(i/l.height)+1)
                table.insert(l.data[math.floor((i-1)/l.height)+1],v)

            end


        elseif layer.type == "imagelayer" and layers then --a layer group
            l.type = "group"

            local data = buildlayers(layer.layers)

            for _,v in ipairs(data) do
                v.opacity = v.opacity * l.opacity
                table.insert(l, v)
            end

        elseif layer.type == "imagelayer" and image then --a proper image layer
            l.type = "image"

            l.data = layer.image
        end

        table.insert(t, l)
    end
    return t
end

function map:initialize(filepath)
    local tiled = require(filepath)

    assert(tiled, "tilemap file does not exist")

    self.width = tiled.width
    self.height = tiled.height

    self.img = love.graphics.newImage(tiled.tilesets[1].image)
    self.tileW = tiled.tilesets[1].tilewidth
    self.tileH = tiled.tilesets[1].tileheight
    self.spacing = tiled.tilesets[1].spacing

    self.quads = {}
    local totalW, totalH = self.img:getWidth(), self.img:getHeight()
    local x, y=0, 0

    for y = 0, totalH-self.tileH, self.tileH+self.spacing do
        for x = 0, totalW-self.tileW, self.tileW+self.spacing do
            table.insert(self.quads, love.graphics.newQuad(x, y, self.tileW, self.tileH, totalW, totalH))
        end
    end

    --assert(false, type(tiled.layers))
    self.layers = buildlayers(tiled.layers)
    self.img:setFilter("linear", "nearest")
end

function map:draw(x, y)
    x = x or 0
    y = y or 0
    for _, layer in ipairs(self.layers) do
        layer:draw(x, y, self)
    end
end















return map
