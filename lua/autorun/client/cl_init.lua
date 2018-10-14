local function extremefpsrun()
    ply = LocalPlayer()

    if (extremefps.config.enable) then
        ply:ConCommand("gmod_mcore_test 1")
        ply:ConCommand("r_queued_ropes 1")
        ply:ConCommand("cl_threaded_bone_setup 1")
        ply:ConCommand("cl_threaded_client_leaf_system 1")
        ply:ConCommand("mat_queue_mode -1")
        ply:ConCommand("r_threaded_renderables 1")
        ply:ConCommand("r_threaded_particles 1")
        ply:ConCommand("M9KGasEffect 0")
        ply:ConCommand("r_decal_cullsize 15")
        ply:ConCommand("r_decalstaticprops 0")
        ply:ConCommand("r_dynamic 0")
        ply:ConCommand("r_drawflecks 0")
        ply:ConCommand("r_drawdetailprops 0")
        ply:ConCommand("r_drawmodeldecals 0")
        ply:ConCommand("r_forcewaterleaf 1")
        ply:ConCommand("r_lightaverage 0")
        ply:ConCommand("r_maxnewsamples 2")
        ply:ConCommand("r_propsmaxdist 0")
        ply:ConCommand("r_renderoverlayfragment 0")
        ply:ConCommand("r_waterdrawreflection 0")
        ply:ConCommand("r_waterdrawrefraction 1")
        ply:ConCommand("r_waterforceexpensive 0")
        ply:ConCommand("r_waterforcereflectentities 0")

        if (extremefps.config.ropes) then
            ply:ConCommand("rope_averagelight 0")
            ply:ConCommand("rope_collide 0")
            ply:ConCommand("rope_rendersolid 0")
            ply:ConCommand("rope_shake 0")
            ply:ConCommand("rope_smooth 0")
            ply:ConCommand("rope_subdiv 0")
            ply:ConCommand("rope_wind_dist 0")
        else
            ply:ConCommand("rope_averagelight 1")
            ply:ConCommand("rope_collide 1")
            ply:ConCommand("rope_rendersolid 1")
            ply:ConCommand("rope_shake 1")
            ply:ConCommand("rope_smooth 1")
            ply:ConCommand("rope_subdiv 1")
            ply:ConCommand("rope_wind_disd 1")
        end

        ply:ConCommand("r_staticprop_lod 4")
        ply:ConCommand("r_maxsampledist 1")
        ply:ConCommand("tf_particles_disable_weather 1")
        ply:ConCommand("cl_detaildist 0")
        ply:ConCommand("cl_detailfade 0")

        if (extremefps.config.drawmonitors) then
            ply:ConCommand("cl_drawmonitors 1")
        else
            ply:ConCommand("cl_drawmonitors 0")
        end

        ply:ConCommand("cl_ejectbrass 0")

        if (extremefps.config.facial.enabled) then
            if (extremefps.config.facial.eyes) then
                ply:ConCommand("r_eyes 0")
            else
                -- Ok finally got to this!
                ply:ConCommand("r_eyes 1")
            end

            ply:ConCommand("r_flex 0")
            ply:ConCommand("r_teeth 0")
        else
            ply:ConCommand("r_flex 1")
            ply:ConCommand("r_teeth 1")
        end

        ply:ConCommand("mat_filterlightmaps 1")
        ply:ConCommand("mat_filtertextures 1")
        ply:ConCommand("mat_hdr_level 0") -- Returns with: Not playing a local game.
        ply:ConCommand("mat_motion_blur_enabled 0")

        -- ply:ConCommand("mat_parallaxmap 0") -- Disabled because it can crash players game
        if (extremefps.config.shadows) then
            if (extremefps.config.shadows) then
                ply:ConCommand("r_shadowmaxrendered 0")
            else
                ply:ConCommand("r_shadowmaxrendered 1")
            end

            if (extremefps.config.shadowsflashlight) then
                ply:ConCommand("r_shadows 0")
            else
                ply:ConCommand("r_shadows 1")
            end
            --[[ else
            Ill work on this later
				ply:ConCommand("r_shadowrendertotexture 0")
				ply:ConCommand("mat_shadowstate 0)
				--]]
        end

        if (extremefps.config.skybox3d) then
            ply:ConCommand("r_3dsky 0")
        else
            ply:ConCommand("r_3dsky 1")
        end

        if (extremefps.config.rlod) then
            ply:ConCommand("r_lod 2")
        else
            ply:ConCommand("r_lod 0")
        end

        if (extremefps.config.ragdolls) then
            ply:ConCommand("g_ragdoll_fadespeed 1")
        else
            ply:ConCommand("g_ragdoll_fadespeed 200")
        end

        --[[
				ply:ConCommand("mat_colorcorrection 0")
				ply:ConCommand("mat_disable_bloom 1")
				ply:ConCommand("mat_disable_fancy_blending 1")
				ply:ConCommand("mat_disable_lightwarp 1")
				ply:ConCommand("mat_envmapsize 8")
				--]]
        if (extremefps.config.sprays) then
            ply:ConCommand("cl_playerspraydisable 1")
            ply:ConCommand("r_spray_lifetime 0")
        else
            ply:ConCommand("cl_playerspraydisable 0")
            ply:ConCommand("r_spray_lifetime 2")
        end

        if (extremefps.config.debug) then
            ply:ConCommand("net_graph 2")
            ply:ConCommand("cl_showpos 1")
            ply:ConCommand("cl_showfps 1")
        else
            ply:ConCommand("net_graph 0")
            ply:ConCommand("cl_showpos 0")
            ply:ConCommand("cl_showfps 0")
        end

        ply:ConCommand("play HL1/fvox/activated.wav")
        print("Extreme FPS Booster has been enabled!")
    else
        print("Extreme FPS Booster has not been enabled!")
    end
end

net.Receive("ExtremeFpsBoost", function()
    -- print("[ExtremeFPS] Reciving Net String from Server")
    extremefpsrun()
end)
