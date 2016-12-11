local function remapKey(modifiers, key, keyCode)
	hs.hotkey.bind(modifiers, key, keyCode, nil, keyCode)
end

local function keyCode(modifiers, key)
	modifiers = modifiers or {}
	return function ()
		hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
		hs.timer.usleep(1000)
		hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
	end
end

local function keyCodeSet(keys)
	return function()
		for i, keyEvent in ipairs(keys) do
			keyEvent()
		end
	end
end

remapKey({'ctrl'}, '[', keyCodeSet({
	keyCode({}, 'escape'),
	function ()
		hs.keycodes.currentSourceID('com.apple.keylayout.US')
	end
}))

