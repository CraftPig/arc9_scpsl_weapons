AddCSLuaFile()

--[[
Particle Cache
]]

if CLIENT then
   game.AddParticles("particles/disruptor.pcf")
   
   PrecacheParticleSystem("disruptor_flash")
   PrecacheParticleSystem("disruptor_flash_high")
   PrecacheParticleSystem("disruptor_lightning")
   PrecacheParticleSystem("disruptor_splash")
end

--[[
-----------------------------------------------------------------------------------------------------
Ammo Tables
-----------------------------------------------------------------------------------------------------
]]

-- game.AddAmmoType( {
-- name = "scp-207",
-- dmgtype = DMG_BULLET,
-- tracer = TRACER_LINE,
-- plydmg = 0,
-- npcdmg = 0,
-- force = 1,
-- minsplash = 1,
-- maxsplash = 1
-- } )

--[[
-----------------------------------------------------------------------------------------------------
Sound Tables
-----------------------------------------------------------------------------------------------------
]]

sound.Add( {
    name = "scpsl_equip",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/Equip.wav",
    }
} )

------------------------------------------------------ Disruptor
sound.Add( {
    name = "scpsl_disruptor_render",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 130,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Disruptor_Render.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_powerup",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 75,
    pitch = {100, 100},
    sound = {
        "weapons/arc9/scpsl/disruptor/Disruptor_Powerup.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_adsin",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_ADS_in.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_adsout",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_ADS_out.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_equip",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Equip_Fast.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_failure",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Failure.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_ins0",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    -- pitch = {90, 90},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Inspect0.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_ins1",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    -- pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Inspect1.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_ins2",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 55,
    -- pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Inspect2.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_ins3",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    -- pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Inspect3.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_ins4",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 55,
    -- pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Inspect4.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_impact",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/disruptor/Lazgun_Projectile_Impact.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_boltback",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/disruptor/Disrupt_BoltBack.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_chamber",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/disruptor/Disrupt_Chamber.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_closebolt",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {99, 100},
    sound = {
        "weapons/arc9/scpsl/disruptor/Disrupt_CloseBolt.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_magin",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/disruptor/Disrupt_MagIn.wav",
    }
} )
sound.Add( {
    name = "scpsl_disruptor_magout",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/disruptor/Disrupt_MagOut.wav",
    }
} )

------------------------------------------------------ COM15
sound.Add( {
    name = "scpsl_COM15_fire",
    channel = CHAN_WEAPON,
    volume = 0.8,
    level = 130,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Firing.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_firesilenced",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 75,
    pitch = {100, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Suppressed.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_adsin",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 ADS Up.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_adsout",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 ADS Down.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_ready",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Equip.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_unload",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Unload.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_ins1",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Inspect 1.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_ins2",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Inspect 2.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_ins3",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Inspect 3.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_magin",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Mag In.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_magout",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 Mag Out.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_pull",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 SlidePull.wav",
    }
} )
sound.Add( {
    name = "scpsl_COM15_release",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {99, 100},
    sound = {
        "weapons/arc9/scpsl/COM15/COM15 SlideRelease.wav",
    }
} )

------------------------------------------------------ FRMG0 
sound.Add( {
    name = "scpsl_FRMG0_fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 120,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Fire_0.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_magout_fmj",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Remove BC.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_magdrop_fmj",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Discard BC.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_magin_fmj",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Insert BC.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_magout_ap",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Remove AR.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_magdrop_ap",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Discard AR.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_magin_ap",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Insert AR.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_magtap",
    channel = CHAN_STATIC,
    volume = 1.0,
    level = 70,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Tap AR.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_inspect_fmj_1",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Inspect BC 1.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_inspect_fmj_2",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Inspect BC 2.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_inspect_fmj_3",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Inspect BC 3.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_inspect_ap_1",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Inspect AR 1.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_inspect_ap_2",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Inspect AR 2.wav",
    }
} )
sound.Add( {
    name = "scpsl_FRMG0_inspect_ap_3",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 100},
    sound = {
        "weapons/arc9/scpsl/FRMG0/Inspect AR 3.wav",
    }
} )

------------------------------------------------------ Crossvec 
sound.Add( {
    name = "scpsl_crossvec_fire",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 120,
    pitch = {97, 103},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecFire.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_boltback",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecHandlePull.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_boltforward",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecHandleRelease.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_adsdown",
    channel = CHAN_ITEM,
    volume = 0.2,
    level = 55,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecAdsDown.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_adsup",
    channel = CHAN_ITEM,
    volume = 0.2,
    level = 55,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecAdsUp.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_equip",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecEquip.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_equipstock",
    channel = CHAN_WEAPON,
    volume = 0.4,
    level = 65,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecEquipStock.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_magout",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecMagRemove.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_magin",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecMagInsert.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_boltrelease",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecBoltRelease.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_inspect1",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecInspect 0.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_inspect2",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecInspect 1.wav",
    }
} )
sound.Add( {
    name = "scpsl_crossvec_inspect3",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {90, 100},
    sound = {
        "weapons/arc9/scpsl/crossvec/CrossvecInspect 2.wav",
    }
} )

------------------------------------------------------ FSP9
sound.Add( {
    name = "scpsl_FSP9_fire",
    channel = CHAN_WEAPON,
    volume = 0.8,
    level = 130,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Firing.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_firesilenced",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 75,
    pitch = {100, 100},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Firing Supressed.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_adsin",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 ADS In.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_adsout",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 ADS Out.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_magout",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Mag Drop.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_magin",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Mag In.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_boltrelease",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Bolt Release.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_handlepull",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Handle Pull.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_handlerelease",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Handle Release.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_foregrip",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Foregrip Fold Out.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_stockextend",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Stock Extend.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_equip",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9 Equip Without fore or stock.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_inspect_1",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9_Inspect 0.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_inspect_2",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9_Inspect 1.wav",
    }
} )
sound.Add( {
    name = "scpsl_FSP9_inspect_3",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/FSP9/FSP9_Inspect 2.wav",
    }
} )

------------------------------------------------------ E11
sound.Add( {
    name = "scpsl_E11_fire",
    channel = CHAN_WEAPON,
    volume = 0.8,
    level = 130,
    pitch = {95, 105},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Firing.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_firesilenced",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 75,
    pitch = {100, 100},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR_Silenced.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_bullet",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Empty Gun.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_magout",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Mag Out.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_magin",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Mag In.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_boltrelease",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Bolt Return.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_handlepull",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Handle Pull.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_handlerelease",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Handle Release.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_handlehalfpull",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Handle HalfPull.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_magext",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Drum In.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_magexttap",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Drum Tap.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_equip",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 65,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Equip.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_inspect_1",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Inspect 0.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_inspect_2",
    channel = CHAN_ITEM,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Inspect 1.wav",
    }
} )
sound.Add( {
    name = "scpsl_E11_inspect_3",
    channel = CHAN_WEAPON,
    volume = 1.0,
    level = 55,
    pitch = {95, 115},
    sound = {
        "weapons/arc9/scpsl/E11/E11SR Inspect 2.wav",
    }
} )