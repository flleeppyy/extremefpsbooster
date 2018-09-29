extremefps = {} -- Please... stop messing with this.
extremefps.config = {} -- aswell as this
--[[----------------------------------------

            Extreme FPS Booster
               Config File
			   
--]]----------------------------------------
--[[
Just as a note, players must relog after you change this config file while the server is running.
Why? Because the console variables dont automatically run when the config is refreshed.
If you need help, Put in a support ticket
]]--

extremefps.config.enable = true -- Enable Extreme FPS? true = yes, false = no
-- [[Facial Player Details]]

extremefps.config.facial = {} -- and this too
extremefps.config.facial.enabled = true -- Boost FPS by disabling Facial Features? 
extremefps.config.facial.eyes = false -- Disable or enable eyes on players and npcs. if you want players to leave your server because players and npc's have no eyes then set this to true.. x3
extremefps.config.facial.teeth = true -- Disable or enable Teeth on players and npcs.

extremefps.config.sprays = true -- Disable or enable sprays
extremefps.config.ropes = true -- Disable some core aspects of the ropes. This does not disable ropes entirely, it just disables things that can take up some GPU usage
extremefps.config.details = true -- Disable minor details. These can boost FPS up by 10-20.
extremefps.config.shadows = true -- Disable Shadows. This includes props, players and entities
extremefps.config.shadowsflashlight = false -- Disables Shadows and Flashlights. Does not have much effect on FPS. You should probably make this true so you can use the flashlight
extremefps.config.gibs = true -- Disable Gibs (Basically Anything gore. And decals of props when you destroy them like wooden crates)
extremefps.config.ragdolls = true -- Disable ragdolls.
extremefps.config.rlod = false -- This can freeze your game. This will fuck up your cars if this is set to anything above 1



-- [[Debug]]

--[[
Enabling Debug Does the following things:
Turns on the FPS counter in top right
and turns on cl_showpos (Showing your posisition in the mapo and your speed velocity.
Turns on net_graph to 2

Usfull for testing what settings you should enable in the config
--]]
extremefps.config.debug = false