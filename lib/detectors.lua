local detectors={}

detectors.button={}
function detectors.button.key(key)
    return function()
        return love.keyboard.isDown(key)
    end
end
function detectors.button.gamepad(button, padnum)--requires verion >=0.9.0
    return function()
        local joystick = love.joystick.getJoysticks()[padnum]
        return joystick and joystick:isGamepadDown(button)
    end
end

function detectors.button.axis(axis, direction, padnum)--requires verion >=0.9.0
	local dir
	if direction == "+" or direction == "positive" or direction == 1 then
		dir  = 1
	elseif direction == "-" or direction == "negative" or direction == -1 then
		dir  = -1
	else
		assert(false, "direction not given or understood")
	end
	return function()
        local joystick = love.joystick.getJoysticks()[padnum]
        return joystick and joystick:getGamepadAxis(axis) * dir > 0.5
    end
end

function detectors.button.mouse(button)
    return function()
        return love.mouse.isDown(button)
    end
end

detectors.axis={}
function detectors.axis.gamepad(axis, padnum)--requires version >=0.9.0
    return function()
        local joystick = love.joystick.getJoysticks()[padnum]
        return joystick and joystick:getGamepadAxis(axis)
    end
end

detectors.joy={}
function detectors.joy.gamepad(axis, padnum)
    return detectors.axis.gamepad(axis.."x",padnum), detectors.axis.gamepad(axis.."y",padnum)
end

return detectors
