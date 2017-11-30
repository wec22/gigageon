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
	--table.insert(self.members, t)
end

function order:remove(t)
	print("drawOrder: removing a ", t.class.name)
	for i,v in ipairs(self.members) do
		if v == t then
			table.remove(self.members,i)

		end
	end
	--collectgarbage()
end

local function sort(lh, rh)
	if not lh or not lh:isInstanceOf(entity) then
		return false
	elseif not rh or not rh:isInstanceOf(entity) then
		return true
	elseif lh.drawOrder == rh.drawOrder then
		assert(lh,"left hand expression is nil")
		assert(rh,"right hand expression is nil")
		return lh.y < rh.y
	else
		assert(lh,"left hand expression is nil")
		assert(rh,"right hand expression is nil")
		return lh.drawOrder < rh.drawOrder
	end
end


function order:draw(t, x, y)
	local t = t or self.members
	table.sort(t, sort)
	for _,v in ipairs(t) do
		if v:isInstanceOf(entity) then
			v:draw(x, y)
		else
			break
		end
	end
end

return order
