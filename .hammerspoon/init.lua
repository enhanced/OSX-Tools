-----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"shift", "cmd", "alt", "ctrl"}

-----------------------------------------------
-- hyper pad4 for left one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "pad4", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper pad6 for right one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "pad6", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper pad5 for fullscreen
-----------------------------------------------

hs.hotkey.bind(hyper, "pad5", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper pad7 for top left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "pad7", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper pad9 for top right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "pad9", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper pad3 for bottom right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "pad3", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper pad1 for bottom left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "pad1", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- Open or Focus Applications
-----------------------------------------------

-- Google Chrome Browser
hs.hotkey.bind(hyper,'b', function()
	hs.application.launchOrFocus("Google Chrome")
end)

-- Mail 
hs.hotkey.bind(hyper,'m', function()
	hs.application.launchOrFocus("Mail")
end)

-- Jabber 
hs.hotkey.bind(hyper,'j', function()
	hs.application.launchOrFocus("Cisco Jabber")
end)

-- Calendar 
hs.hotkey.bind(hyper,'c', function()
	hs.application.launchOrFocus("Calendar")
end)

-- Sublime Text 
hs.hotkey.bind(hyper,'e', function()
	hs.application.launchOrFocus("Sublime Text")
end)

-- iTerm 
hs.hotkey.bind(hyper,'t', function()
	hs.application.launchOrFocus("iTerm")
end)

-- Mail 
hs.hotkey.bind(hyper,'i', function()
	hs.application.launchOrFocus("iTunes")
end)

-- Finder 
hs.hotkey.bind(hyper,'f', function()
	hs.application.launchOrFocus("Finder")
end)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------

function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")

-----------------------------------------------
-- Hyper i to show window hints
-----------------------------------------------

hs.hotkey.bind(hyper, "i", function()
    hs.hints.windowHints()
end)

-----------------------------------------------
-- Hyper hjkl to switch window focus
-----------------------------------------------

hs.hotkey.bind(hyper, 'k', function()
    hs.window.focusedWindow():focusWindowNorth()
end)

hs.hotkey.bind(hyper, 'j', function()
    hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind(hyper, 'l', function()
    hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind(hyper, 'h', function()
    hs.window.focusedWindow():focusWindowWest()
end)