local path = (...) .. "."

local class = require("lib.middleclass")

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
function tiled.changeMap(newMap, spawnPoint, cache, prevDoor)
	assert(newMap, "tiled: No filepath for new map given")

	if cache then
		tiled.mapCache[tiled.currentMap.filepath] = tiled.currentMap
	end
	if tile.mapCache[newMap] then
		tiled.currentMap = tiled.mapCache[newMap]
		--add player at correct spawn point
	else
		tiled.currentMap = tiled.map(newMap)
		--add player at correct spawn point
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
