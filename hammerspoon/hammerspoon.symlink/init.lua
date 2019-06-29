require("functions")
require("caffeine")

local application = hs.application
local window      = hs.window
local layout      = hs.layout
local screen      = hs.screen
local hotkey      = hs.hotkey
local hints       = hs.hints


-------------------
-- Configuration --
-------------------

-- Animation
window.animationDuration = 0

-- Hints
hints.fontName        = "Helvetica-Bold"
hints.fontSize        = 18
hints.showTitleThresh = 0
-- hints.style           = "vimperator" -- Buggy, gets slow after a while


------------
-- Aliase --
------------

-- Keys
local KEY_SCAM = { "⇧", "⌃", "⌥", "⌘" }
local KEY_SCA  = { "⇧", "⌃", "⌥" }
local KEY_SCM  = { "⇧", "⌃", "⌘" }
local KEY_CAM  = { "⌃", "⌥", "⌘" }
local KEY_CA   = { "⌃", "⌥" }
local KEY_CM   = { "⌃", "⌘" }
local KEY_SAM  = { "⇧", "⌥", "⌘" }
local KEY_AM   = { "⌥", "⌘" }

-- Displays
local DISPLAY_MAIN     = screen.primaryScreen()
local DISPLAY_NOTEBOOK = "Color LCD"

-- Sizes
local LEFT_MOST  = hs.geometry.unitrect(0, 0, 0.6, 1)
local LEFT_LESS  = hs.geometry.unitrect(0, 0, 0.4, 1)
local RIGHT_MOST = hs.geometry.unitrect(0.4, 0, 0.6, 1)
local RIGHT_LESS = hs.geometry.unitrect(0.6, 0, 0.4, 1)
local FULLSCREEN = hs.geometry.unitrect(0, 0, 1, 1)
local RIGHT_HALF = hs.geometry.unitrect(0.5, 0, 0.5, 1)
local LEFT_HALF  = hs.geometry.unitrect(0, 0, 0.5, 1)


-------------
-- Layouts --
-------------

-- Format reminder:
-- {"App name", "Window name", "Display Name", "unitrect", "framerect", "fullframerect"},

-- Big Monitor as Primary, Notebook as Secondary
local LAYOUT_DUAL = {
  {"Things",                nil, DISPLAY_MAIN,     LEFT_LESS,  nil, nil},
  {"Microsoft Outlook",     nil, DISPLAY_MAIN,     LEFT_MOST,  nil, nil},
  {"Code",                  nil, DISPLAY_NOTEBOOK, FULLSCREEN, nil, nil},
  {"DEVONthink Pro Office", nil, DISPLAY_MAIN,     FULLSCREEN, nil, nil},
  {"Day One",               nil, DISPLAY_MAIN,     LEFT_MOST,  nil, nil},
  {"Evernote",              nil, DISPLAY_NOTEBOOK, FULLSCREEN, nil, nil},
  {"Firefox",               nil, DISPLAY_MAIN,     FULLSCREEN, nil, nil},
  {"Google Chrome",         nil, DISPLAY_NOTEBOOK, FULLSCREEN, nil, nil},
  {"Google Hangouts",       nil, DISPLAY_MAIN,     LEFT_HALF,  nil, nil},
  {"Kalender",              nil, DISPLAY_MAIN,     RIGHT_MOST, nil, nil},
  {"Mail",                  nil, DISPLAY_MAIN,     RIGHT_MOST, nil, nil},
  {"Safari",                nil, DISPLAY_NOTEBOOK, FULLSCREEN, nil, nil},
  {"Sonos",                 nil, DISPLAY_MAIN,     FULLSCREEN, nil, nil},
  {"Spotify",               nil, DISPLAY_NOTEBOOK, FULLSCREEN, nil, nil},
  {"Wire",                  nil, DISPLAY_MAIN,     RIGHT_LESS, nil, nil},
  {"Slack",                 nil, DISPLAY_MAIN,     LEFT_MOST,  nil, nil},
  {"HipChat",               nil, DISPLAY_MAIN,     LEFT_MOST,  nil, nil},
  {"iA Writer",             nil, DISPLAY_NOTEBOOK, FULLSCREEN, nil, nil},
  {"iTerm2",                nil, DISPLAY_NOTEBOOK, FULLSCREEN, nil, nil},
}

--  Notebook
local LAYOUT_NOTEBOOK = {
  {"Things",                nil, DISPLAY_MAIN, LEFT_LESS,  nil, nil},
  {"Microsoft Outlook",     nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Code",                  nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"DEVONthink Pro Office", nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Day One",               nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Evernote",              nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Firefox",               nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Google Chrome",         nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Google Hangouts",       nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Kalender",              nil, DISPLAY_MAIN, RIGHT_MOST, nil, nil},
  {"Mail",                  nil, DISPLAY_MAIN, RIGHT_MOST, nil, nil},
  {"Safari",                nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Sonos",                 nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Spotify",               nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"Wire",                  nil, DISPLAY_MAIN, LEFT_HALF,  nil, nil},
  {"Slack",                 nil, DISPLAY_MAIN, LEFT_MOST,  nil, nil},
  {"HipChat",               nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"iA Writer",             nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
  {"iTerm2",                nil, DISPLAY_MAIN, FULLSCREEN, nil, nil},
}

------------------
-- Key Bindings --
------------------

-- Movement hotkeys
-- hotkey.bind(KEY_AM, "down",  function() nudge(0, 100) end)
-- hotkey.bind(KEY_AM, "up",    function() nudge(0, -100) end)
-- hotkey.bind(KEY_AM, "right", function() nudge(100, 0) end)
-- hotkey.bind(KEY_AM, "left",  function() nudge(-100, 0) end)

-- Resize hotkeys
hotkey.bind(KEY_SAM, "up",    function() yank(0, -100) end)
hotkey.bind(KEY_SAM, "down",  function() yank(0, 100) end)
hotkey.bind(KEY_SAM, "right", function() yank(100, 0) end)
hotkey.bind(KEY_SAM, "left",  function() yank(-100, 0) end)

-- Push to screen edge
hotkey.bind(KEY_CAM, "left",  function() push(0, 0, 0.5, 1) end)
hotkey.bind(KEY_CAM, "right", function() push(0.5, 0, 0.5, 1) end)
hotkey.bind(KEY_CAM, "up",    function() push(0, 0, 1, 0.5) end)
hotkey.bind(KEY_CAM, "down",  function() push(0, 0.5, 1, 0.5) end)

-- Centered window with some room to see the desktop
hotkey.bind(KEY_SCM, "l", function() push(0.05, 0.05, 0.9, 0.9) end)
hotkey.bind(KEY_SCM, "m", function() push(0.1, 0.1, 0.8, 0.8) end)
hotkey.bind(KEY_SCM, "s", function() push(0.15, 0.15, 0.7, 0.7) end)

-- Fullscreen
hotkey.bind(KEY_CAM, "0", function() push(0, 0, 1, 1) end)

-- Quarter Screens
hotkey.bind(KEY_CAM, "q", function() push(0, 0, 0.5, 0.5) end)
hotkey.bind(KEY_CAM, "w", function() push(0.5, 0, 0.5, 0.5) end)
hotkey.bind(KEY_CAM, "a", function() push(0, 0.5, 0.5, 0.5) end)
hotkey.bind(KEY_CAM, "s", function() push(0.5, 0.5, 0.5, 0.5) end)

-- Part Screens
hotkey.bind(KEY_CAM, "4", function() push(0, 0, 0.6, 1) end)
hotkey.bind(KEY_CAM, "5", function() push(0, 0, 0.4, 1) end)
hotkey.bind(KEY_CAM, "6", function() push(0.4, 0, 0.6, 1) end)
hotkey.bind(KEY_CAM, "7", function() push(0.6, 0, 0.4, 1) end)

-- Move a window between monitors
hotkey.bind(KEY_CM,  "1",    function() window.focusedWindow():moveOneScreenNorth() end)
hotkey.bind(KEY_CM,  "up",   function() window.focusedWindow():moveOneScreenNorth() end)
hotkey.bind(KEY_CM,  "k",    function() window.focusedWindow():moveOneScreenNorth() end)
hotkey.bind(KEY_SCM, "1",    function() window.focusedWindow():moveOneScreenNorth(); push(0, 0, 1, 1) end)
hotkey.bind(KEY_SCM, "up",   function() window.focusedWindow():moveOneScreenNorth(); push(0, 0, 1, 1) end)
hotkey.bind(KEY_SCM, "k",    function() window.focusedWindow():moveOneScreenNorth(); push(0, 0, 1, 1) end)

hotkey.bind(KEY_CM,  "2",    function() window.focusedWindow():moveOneScreenSouth() end)
hotkey.bind(KEY_CM,  "down", function() window.focusedWindow():moveOneScreenSouth() end)
hotkey.bind(KEY_CM,  "j",    function() window.focusedWindow():moveOneScreenSouth() end)
hotkey.bind(KEY_SCM, "2",    function() window.focusedWindow():moveOneScreenSouth(); push(0, 0, 1, 1) end)
hotkey.bind(KEY_SCM, "down", function() window.focusedWindow():moveOneScreenSouth(); push(0, 0, 1, 1) end)
hotkey.bind(KEY_SCM, "j",    function() window.focusedWindow():moveOneScreenSouth(); push(0, 0, 1, 1) end)

-- Application shortcuts
hotkey.bind(KEY_SCAM, "C", function() application.launchOrFocus("Google Chrome") end)
hotkey.bind(KEY_SCAM, "D", function() application.launchOrFocus("Affinity Designer") end)
hotkey.bind(KEY_SCAM, "E", function() application.launchOrFocus("Evernote") end)
hotkey.bind(KEY_SCAM, "H", function() application.launchOrFocus("HipChat") end)
hotkey.bind(KEY_SCAM, "I", function() application.launchOrFocus("iTerm") end)
hotkey.bind(KEY_SCAM, "K", function() application.launchOrFocus("Calendar") end)
hotkey.bind(KEY_SCAM, "M", function() application.launchOrFocus("Mail") end)
hotkey.bind(KEY_SCAM, "O", function() application.launchOrFocus("Day One") end)
hotkey.bind(KEY_SCAM, "P", function() application.launchOrFocus("Affinity Photo") end)
hotkey.bind(KEY_SCAM, "S", function() application.launchOrFocus("Spotify") end)
hotkey.bind(KEY_SCAM, "T", function() application.launchOrFocus("Things") end)
hotkey.bind(KEY_SCAM, "V", function() application.launchOrFocus("Preview") end)
hotkey.bind(KEY_SCAM, "W", function() application.launchOrFocus("iA Writer") end)

-- Place red circle around mouse
hotkey.bind(KEY_SCAM, "space", mouseHighlight)

-- Config reloading. manual (from getting started guide):
hotkey.bind(KEY_CAM, "delete", function() hs.reload() end)

-- Focus
hotkey.bind(KEY_CAM, 'k', function() window.focusedWindow():focusWindowNorth() end)
hotkey.bind(KEY_CAM, 'j', function() window.focusedWindow():focusWindowSouth() end)
hotkey.bind(KEY_CAM, 'l', function() window.focusedWindow():focusWindowEast() end)
hotkey.bind(KEY_CAM, 'h', function() window.focusedWindow():focusWindowWest() end)

-- Hints
hotkey.bind(KEY_CAM, "space", function() hints.windowHints(getAllValidWindows()) end)

-- Layouts
hotkey.bind(KEY_SCAM, "1", function() layout.apply(LAYOUT_NOTEBOOK) end)
hotkey.bind(KEY_SCAM, "2", function() layout.apply(LAYOUT_DUAL) end)
