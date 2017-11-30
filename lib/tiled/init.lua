local path = (...) .. "."
local gamera = require("lib.gamera")

local doorway = require("classes.doorway")
local spawn = require("classes.spawn")
local player = require("classes.player")

local tiled = {}

tiled.map = require(path .. "map")
tiled.tile = require(path .. "tile")
tiled.object = require(path .. "object")
tiled.tileset = require(path .. "tileset")

tiled.layer = require(path .. "layer")
tiled.imageLayer = require(path .. "imageLayer")
tiled.tileLayer = require(path .. "tileLayer")
tiled.groupLayer = require(path .. "groupLayer")
tiled.objectLayer = require(path .. "objectLayer")

--tiled API
tiled.currentMap = {}

tiled.mapCache = {}
function tiled.changeMap(newMap, ID, cache)
	assert(newMap, "tiled: No filepath for new map given")
	newMap = "maps."..string.gsub(newMap, "[%/%\\]", ".")
	print(newMap)
	if cache and tiled.currentMap then
		print("Tiled: Caching current map")
		tiled.mapCache[tiled.currentMap.filepath] = tiled.currentMap
	end
	if tiled.mapCache[newMap] then
		print("Tiled: Loading map from cache: "..string.gsub(newMap,"%.", "/"))
		tiled.currentMap = tiled.mapCache[newMap]
	else
		print("Tiled: Loading map from file"..string.gsub(newMap,"%.", "/"))
		tiled.currentMap = tiled.map(newMap)
	end
	pixelate._pixel_size = 50
	--change camera dimensions to the size of the new map
	local mapWidth = tiled.currentMap.width * tiled.currentMap.tileW
	local mapHeight = tiled.currentMap.width * tiled.currentMap.tileH
	if not cam then
		cam = gamera.new(0, 0, mapWidth, mapHeight)
	else
		cam:setWorld(0, 0, mapWidth, mapHeight)
	end

	--add player at correct spawn point
	if mainPlayer then
		local items = tiled.currentMap.world:getItems()
		for _,v in ipairs(items) do
			if v:isInstanceOf(doorway) and v.ID == ID then
				--spawn player at location of this doorway
				mainPlayer.x = v.x+(v.w/2)-(mainPlayer.w/2)
				mainPlayer.y = v.y+v.h
				break
			end
		end
	else
		--spawn player at spawn
		spawns = tiled.currentMap.world:getItemsOfType(spawn)
		assert(#spawns==1, "Tiled: more than one spawn in map:"..newMap)
		_G.mainPlayer = player(spawns[1].x, spawns[1].y)
	end
	if not tiled.currentMap.world:hasItem(mainPlayer) then
		tiled.currentMap.world:add(mainPlayer, mainPlayer.x, mainPlayer.y, mainPlayer.w, mainPlayer.h)
	end
end

function tiled.clearCache()
	tiled.mapCache = {}
end

function getWorld()
	assert(tiled.currentMap, "tiled: currentMap not found")
	--assert(type(tiled.currentMap)=="table" and tiled.currentMap:isInstanceOf(tiled.map), "tiled: currentMap is not of type map")
	assert(tiled.currentMap.world, "tiled: world not found")
	return tiled.currentMap.world
end

return tiled
