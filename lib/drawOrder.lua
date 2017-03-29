local order = {}

order.members = {}

function order:register(t)
	assert(t.y, "Error: missing a y coordinate")
	assert(t.draw, "Error: missing a draw function")
	if not t.drawOrder then
		t.drawOrder = 1
		print("missing a drawOrder value, defaulting to 1")
	end
	table.insert(self.members, t)
end


local function sort(lh, rh)
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
