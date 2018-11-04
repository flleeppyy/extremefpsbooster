extremefps = {} -- Please... stop messing with this.
extremefps.config = {} -- aswell as this
--[[----------------------------------------

            Extreme FPS Booster
               Config File
			   
--]]----------------------------------------
--[[
Just as a note, players must relog after you change this config file while the server is running.
Why? Because the console variables dont automatically run when the config is refreshed.
If you need help, put an issue up on the github page. https://github.com/FloopyDisk/extremefpsbooster/
]]--

extremefps.config.enable = true -- Enable Extreme FPS? true = yes, false = no
-- [[Facial Player Details]]

extremefps.config.facial = {} 
extremefps.config.facial.enabled = true -- Disable Facial Features? Mostly for ragdolls, players and npcs.
extremefps.config.facial.eyes = false -- Disable eyes on players and npcs? if you want players to leave your server because players and npc's have no eyes then set this to true.. x3
extremefps.config.facial.teeth = true -- Disable Teeth on players and npcs? Not really noticeable.

-- [[Shadows, Sprays, Ropes, shadows, misc]]
extremefps.config.sprays = true -- Enable sprays?
extremefps.config.ropes = false -- Disable ropes? This does not disable ropes entirely, it just disables things that can take up some GPU usage
extremefps.config.details = true -- Disable details? These can boost FPS up by 10-20.
extremefps.config.shadows = true -- Disable Shadows? This includes props, players and entities
extremefps.config.shadowsflashlight = false -- Disables Shadows and Flashlights. Does not have much effect on FPS. You should probably make this true so you can use the flashlight
extremefps.config.gibs = true -- Disable Gibs? Basically Anything gore and decals of props when you destroy them like wooden crates
extremefps.config.ragdolls = true -- Disable ragdolls?
extremefps.config.rlod = false -- This can freeze your game when you load in. This will fuck up TDM Cars if this is set to anything above 1
extremefps.config.drawmonitors = true -- Draw Monitors? This is commonly used on maps like rp_downtown_tits where the presidents office has 3 buttons that shows a monitor in front of them.
extremefps.config.sound = false -- Enable the sound when you login?


--[[----------------------------------------

            Extreme FPS Booster
               Debuging Area
			   
--]]----------------------------------------

--[[
Enabling Debug Does the following things:
Turns on the FPS counter in top right
and turns on cl_showpos (Showing your position in the map and your speed velocity.
Turns on net_graph to 2

Useful for testing what settings you should enable in the config
--]]
extremefps.config.debug = false
