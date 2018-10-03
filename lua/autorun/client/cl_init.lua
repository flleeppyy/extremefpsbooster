local function extremefpsrun()
			if (extremefps.config.enable) then
				LocalPlayer():ConCommand("play garrysmod/ui_click.wav") 
				LocalPlayer():ConCommand("gmod_mcore_test 1")
				LocalPlayer():ConCommand("r_queued_ropes 1")
				LocalPlayer():ConCommand("cl_threaded_bone_setup 1")
				LocalPlayer():ConCommand("cl_threaded_client_leaf_system 1")
				LocalPlayer():ConCommand("mat_queue_mode -1")
				LocalPlayer():ConCommand("r_threaded_renderables 1")
				LocalPlayer():ConCommand("r_threaded_particles 1")
				LocalPlayer():ConCommand("M9KGasEffect 0")
				LocalPlayer():ConCommand("r_decal_cullsize 15")
				LocalPlayer():ConCommand("r_decalstaticprops 0")
				LocalPlayer():ConCommand("r_dynamic 0")
				LocalPlayer():ConCommand("r_drawflecks 0")
				LocalPlayer():ConCommand("r_drawdetailprops 0")
				LocalPlayer():ConCommand("r_drawmodeldecals 0")
				LocalPlayer():ConCommand("r_forcewaterleaf 1")
				LocalPlayer():ConCommand("r_lightaverage 0")
				LocalPlayer():ConCommand("r_maxnewsamples 2")
				LocalPlayer():ConCommand("r_propsmaxdist 0")
				LocalPlayer():ConCommand("r_renderoverlayfragment 0")
				LocalPlayer():ConCommand("r_waterdrawreflection 0")
				LocalPlayer():ConCommand("r_waterdrawrefraction 1")
				LocalPlayer():ConCommand("r_waterforceexpensive 0")
				LocalPlayer():ConCommand("r_waterforcereflectentities 0")
				if(extremefps.config.ropes) then
				LocalPlayer():ConCommand("rope_averagelight 0")
				LocalPlayer():ConCommand("rope_collide 0")
				LocalPlayer():ConCommand("rope_rendersolid 0")
				LocalPlayer():ConCommand("rope_shake 0")
				LocalPlayer():ConCommand("rope_smooth 0")
				LocalPlayer():ConCommand("rope_subdiv 0")
				LocalPlayer():ConCommand("rope_wind_dist 0")
				else
				end
				LocalPlayer():ConCommand("r_staticprop_lod 4")
				LocalPlayer():ConCommand("r_maxsampledist 1")
				LocalPlayer():ConCommand("tf_particles_disable_weather 1")
				LocalPlayer():ConCommand("cl_detaildist 0")
				LocalPlayer():ConCommand("cl_detailfade 0")
				if (extremefps.config.drawmonitors) then
				LocalPlayer():ConCommand("cl_drawmonitors 1")
				else
				LocalPlayer():ConCommand("cl_drawmonitors 0")
				end
				LocalPlayer():ConCommand("cl_ejectbrass 0")
				if (extremefps.config.facial.enabled) then
				if (extremefps.config.facial.eyes) then
				LocalPlayer():ConCommand("r_eyes 0")
			
			    else
				-- I was gonna put something here.. i totally forgot what is was though. Ill put it in in the next version if i can remember what it was.
				end
				LocalPlayer():ConCommand("r_flex 0")
				LocalPlayer():ConCommand("r_teeth 0")
				else
				end
				LocalPlayer():ConCommand("mat_filterlightmaps 1")
				LocalPlayer():ConCommand("mat_filtertextures 1")
				LocalPlayer():ConCommand("mat_hdr_level 0") -- Returns with: Not playing a local game.
				LocalPlayer():ConCommand("mat_motion_blur_enabled 0")
				-- LocalPlayer():ConCommand("mat_parallaxmap 0") -- Disabled because it can crash players game
				if (extremefps.config.shadows) then
				LocalPlayer():ConCommand("r_shadowmaxrendered 0")
				if (extremefps.config.shadowsflashlight) then
				LocalPlayer():ConCommand("r_shadows 0")
				else
				LocalPlayer():ConCommand("r_shadows 1")
				end
				LocalPlayer():ConCommand("r_shadowrendertotexture 0")
				LocalPlayer():ConCommand("mat_shadowstate 0")
				else
				end
				if (extremefps.config.skybox3d) then
				LocalPlayer():ConCommand("r_3dsky 0")
				else
				end
				if (extremefps.config.rlod) then
				LocalPlayer():ConCommand("r_lod 2")
				else
				LocalPlayer():ConCommand("r_lod 0")
				end
				if (extremefps.config.ragdolls) then
				LocalPlayer():ConCommand("g_ragdoll_fadespeed 1")
				else
				LocalPlayer():ConCommand("g_ragdoll_fadespeed 600")
				end
				--[[
				LocalPlayer():ConCommand("mat_colorcorrection 0")
				LocalPlayer():ConCommand("mat_disable_bloom 1")
				LocalPlayer():ConCommand("mat_disable_fancy_blending 1")
				LocalPlayer():ConCommand("mat_disable_lightwarp 1")
				LocalPlayer():ConCommand("mat_envmapsize 8")
				--]]
				if (extremefps.config.sprays) then
				LocalPlayer():ConCommand("cl_playerspraydisable 1")
				LocalPlayer():ConCommand("r_spray_lifetime 0")
				end
				if (extremefps.config.debug) then
                LocalPlayer():ConCommand("net_graph 2")
				LocalPlayer():ConCommand("cl_showpos 1")
				LocalPlayer():ConCommand("cl_showfps 1")
				else
				LocalPlayer():ConCommand("net_graph 0")
				LocalPlayer():ConCommand("cl_showpos 0")
				LocalPlayer():ConCommand("cl_showfps 0")
				end
				LocalPlayer():ConCommand("play HL1/fvox/activated.wav")
				print("Extreme FPS Booster has been enabled!")
		else
		print("Extreme FPS Booster has not been enabled!")
		end
	end

net.Receive("ExtremeFpsBoost", function()
	print("[ExtremeFPS] Reciving Net String from Server")
	extremefpsrun()
	local ply = LocalPlayer()
end)
