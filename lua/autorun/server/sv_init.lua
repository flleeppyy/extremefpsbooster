util.AddNetworkString( "ExtremeFpsBoost" )

hook.Add( "PlayerInitialSpawn", "ExtremeFpsBoostFunction", function ( ply )
     timer.Simple(2, function()
          net.Start( "ExtremeFpsBoost" )
          net.Send( ply )
     end)
end)
