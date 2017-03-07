local class = require("lib.middleclass")

map = class("map")

function map:initialize(filepath)
    local tiled = require(filepath)

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

    self.layers = tiled.layers
    self.img:setFilter("linear", "nearest")
end

function map:draw(x, y)
    for _, layer in ipairs(self.layers) do
        if layer.type == "tilelayer" and layer.visible then
            love.graphics.push()
            love.graphics.setColor(255, 255, 255, 255 * layer.opacity)
            x = x or 0
            y = y or 0
            --love.graphics.scale(32/self.tileW, 32/self.tileH)
            for i, v in ipairs(layer.data) do
                    love.graphics.draw(self.img, self.quads[v], ((i)%layer.width-1)*self.tileW+x, (math.floor(i/layer.width)-1)*self.tileH+y)
            end

            love.graphics.pop()
        end
    end
end
return map
