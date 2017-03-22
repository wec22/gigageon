local path = (...) .. "."

local class = require("lib.middleclass")

local map = require(path .. "map")

local tiled = {}
tiled.map = map



return tiled
