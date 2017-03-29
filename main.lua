
local gamera = require("lib.gamera")

local lovebird = require("lib.lovebird")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local shine = require("lib.shine")

members = drawOrder.members

local map = require("classes.map")
local p = require("classes.player")
local slime = require("classes.slime")
local npc = require("classes.npc")
local c = require("classes.collisionblock")

inspect = require("lib.inspect")

local tiled = require("lib.tiled")
lovebird:update()

world = bump.newWorld()


function love.load()
    local ray = shine.godsray()
    ray.density = 0.1
    ray.exposure = 0.2
    ray.decay = 0.96

    local grain = shine.filmgrain()
    grain.opacity = 0.2

    local vignette = shine.vignette()
    vignette.parameters = {radius = 0.75, opacity = 0.7}


    local desaturate = shine.desaturate{strength = 0.8, tint = {255,250,200}}

    local crt = shine.crt()

    pixelate = shine.pixelate()
    pixelate.samples = 5
    pixelate.pixel_size = 50

    local sep = shine.separate_chroma()
    --postEffect = desaturate:chain(ray):chain(grain):chain(vignette)

    --postEffect = ray:chain(grain):chain(vignette):chain(crt)
    postEffect = sep


    test = map("maps.animation")

    player=p()
    slime1=slime(400, 400)

    cam = gamera.new(0,0,512,512)

    cam:setScale(1.5)
    cam:setPosition(player.x, player.y)
end


function love.update(dt)
    lovebird:update()

    cam:setPosition(player.x, player.y)

    if pixelate._pixel_size>1 then
        pixelate:set("pixel_size", pixelate._pixel_size-50*dt)
    else
        pixelate:set("pixel_size", 1)
    end

    player:update(dt)
    slime1:update(dt)
end

function love.draw()
    love.graphics.print(love.timer.getFPS(),0,0)

    postEffect:draw(function()
        pixelate:draw(function()
            cam:draw(function(l,t,w,h)
                    test:draw(0,0)
                --glow:draw(function()
                    drawOrder:draw()
                --end)
            end)
        end)
    end)
end
