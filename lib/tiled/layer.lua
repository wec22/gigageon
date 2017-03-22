--[[
-- Super class for all the other layer types provided by tiled
-- Members:
    - name
    - visible
    - opacity
    - offsetx
    - offsety



]]

local class = require("lib.middleclass")

local layer = class("layer")

function layer:initialize(t)
    print "building new layer"

    self.name = t.name

    self.visible = t.visible
    self.opacity = t.opacity

    self.offsetx = t.offsetx
    self.offsety = t.offsety
end




return layer
