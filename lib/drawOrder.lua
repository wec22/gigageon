local entity = require("classes.entity")


local order = {}

order.members = {}

setmetatable(order.members, {__mode = "v"})

function order:register(t)
	assert(t:isInstanceOf(entity),"Error: parameter must be an entity")
	assert(t.y, "Error: missing a y coordinate")
	assert(t.draw, "Error: missing a draw function")
	print("drawOrder: registered a " .. t.class.name)
	if not t.drawOrder then
		t.drawOrder = 1
		print("drawOrder: missing a drawOrder value, defaulting to 1")
	end
	table.insert(self.members, t)
end

function order:remove(t)
	for i,v in ipairs(self.members) do
		if v == t then
			self.members[i] = nil
		end
	end
	collectgarbage()
end

local function sort(lh, rh)
	if not lh or not rh then
		return false
	end
	if lh.drawOrder == rh.drawOrder then
		return lh.y < rh.y
	else
		return lh.drawOrder < rh.drawOrder
	end
end


function order:draw(x, y)
	table.sort(self.members, sort)
	for _,v in ipairs(self.members) do
		v:draw(x, y)
	end
end

return order
