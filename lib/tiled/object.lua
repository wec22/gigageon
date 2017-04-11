--[[
-- represents an object as used in tiled
-- members
    - id            - the id given by tiled
    - name          - the name of the object
    - type          - the type of the object
    - shape         - the shape of the object
    - x             - x coordinate
    - y             - y coordinate
    - width         - the width of the object
    - height        - the height of the object
    - rotation      -
    - visible       - if the object is visible or not
    - properties    - table of custom properties assigned by tiled

]]

local class = require("lib.middleclass")

local object = class("tiled.object")

function object:initialize(t)
    self.id = t.id
    self.name = t.name
    self.type = t.type
    self.shape = t.shape
    self.x = t.x
    self.y = t.y
    self.width = t.width
    self.height = t.height
    self.rotation = t.rotation
    self.visible = t.visible
    self.properties = t.properties
end


return object
