
local bump = require 'lib.bump'

local bump_debug = {}

local function getCellRect(world, cx,cy)
	local cellSize = world.cellSize
	local l,t = world:toWorld(cx,cy)
	return l,t,cellSize,cellSize
end

function bump_debug.draw(world)
	local cellSize = world.cellSize
	local font = love.graphics.getFont()
	local fontHeight = font:getHeight()
	local topOffset = (cellSize - fontHeight) / 2

	if devmode.bump.drawGrid then
		for cy, row in pairs(world.rows) do
			for cx, cell in pairs(row) do
				local l,t,w,h = getCellRect(world, cx,cy)
				local intensity = cell.itemCount * 12 + 16
				love.graphics.setColor(255,255,255,intensity)
				love.graphics.rectangle('fill', l,t,w,h)
				love.graphics.setColor(255,255,255, 128)
				love.graphics.printf(cell.itemCount, l, t+topOffset, cellSize, 'center')
				love.graphics.setColor(255,255,255,64)
				love.graphics.rectangle('line', l,t,w,h)
			end
		end
	end
	for _,v in ipairs(world:getItems()) do
		local x,y,w,h = world:getRect(v)
		love.graphics.setColor(48, 89, 133, 128)
		love.graphics.rectangle('fill',x,y,w,h)
		love.graphics.setColor(48, 89, 133, 64)
		love.graphics.rectangle('line',x,y,w,h)
	end
end

return bump_debug
