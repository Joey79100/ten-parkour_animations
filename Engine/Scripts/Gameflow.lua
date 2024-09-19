-- Place in this Lua script all the levels of your game
-- Title is mandatory and must be the first level.

-- Intro image is a splash screen which appears before actual loading screen.
-- If you don't want it to appear, just remove this line.

-- Flow.SetIntroImagePath("Screens\\main.jpg")

-- This image should be used for static title screen background (as in TR1-TR3).
-- For now it is not implemented.

Flow.SetTitleScreenImagePath("Screens\\main.jpg")

-- Set overall amount of secrets in game.
-- If set to 0, secrets won't be displayed in statistics.

Flow.SetTotalSecretCount(5)

-- Disable/enable flycheat globally

Flow.EnableFlyCheat(true)

-- Import AudioTracks names

local AudioTracks = require("Common/AudioTracks")

--------------------------------------------------

-- Title level

title = Level.new()

title.scriptFile = "Scripts\\Levels\\Title\\title.lua"
title.ambientTrack = AudioTracks.MUS_AOD_Theme
title.levelFile = "Data\\title.ten"
title.loadScreenFile = "Screens\\main.jpg"

Flow.AddLevel(title)

--------------------------------------------------

-- Demo level

demo = Level.new()

demo.nameKey = "level_demo"
demo.scriptFile = "Scripts\\Levels\\Male\\Male.lua"
demo.ambientTrack = AudioTracks.AMB_Town_Outside
demo.levelFile = "Data\\Male.ten"
demo.loadScreenFile = "Screens\\black.jpg"

--demo.weather = 1 -- 0 is no weather, 1 is rain, 2 is snow.
--demo.weatherStrength = 0.75 -- Strength varies from 0 to 1 (floating-point value, e.g. 0.5 means half-strength).

demo.horizon = true
demo.farView = 64
demo.fog = Flow.Fog.new(Color.new(8, 10, 12), 16, 50)

Flow.AddLevel(demo)