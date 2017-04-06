
local gamera = require("lib.gamera")

local lovebird = require("lib.lovebird")

local bump = require("lib.bump")
local drawOrder = require("lib.drawOrder")
local shine = require("lib.shine")

members = drawOrder.members

local p = require("classes.player")
local c = require("classes.collisionblock")
local slime = require("classes.slime")
local npc = require("classes.npc")
local tb = require("classes.textbox")

inspect = require("lib.inspect")

local tiled = require("lib.tiled")

world = bump.newWorld()


function love.load()
    local ray = shine.godsray{density = 0.1, exposure = 0.2, decay = 0.96}
    ray.density = 0.1
    ray.exposure = 0.2
    ray.decay = 0.96

    local grain = shine.filmgrain{opacity = 0.2}
    local vignette = shine.vignette{radius = 0.75, opacity = 0.7}


    local desaturate = shine.desaturate{strength = 0.8, tint = {255,250,200}}

    pixelate = shine.pixelate()
    pixelate.samples = 5
    pixelate.pixel_size = 50

    test = tiled.map("maps.animation")

    player=p()
    man = npc(100, 100, 1, {"It's dangerous to go alone", "Take this!!"})
    --slime1 = slime(200,200)

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
    man:update(dt)
    --slime1:update(dt)
end

function love.draw()
    love.graphics.print(love.timer.getFPS(),0,0)
    pixelate:draw(function()
        cam:draw(function(l,t,w,h)
                test:draw(0,0)
                drawOrder:draw()
        end)
    end)
	player:gameover()
end
