local ATT = {}


--[[ -----------------------------------------------------------------------------------------------------------
--------- Disruptor
]] -------------------------------------------------------------------------------------------------------------
-- ATT = {}

-- ATT.PrintName = "Remove NV"
-- ATT.CompactName = "Remove NV"
-- ATT.Icon = Material("entities/attachments/frmg0/Mag60AP.png", "mips smooth") 
-- ATT.Description = ""

-- ATT.Folder = "SCP: SL"
-- ATT.SortOrder = 1
-- ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
-- ATT.Category = {"scpsl_disruptor_optic"}

-- ATT.Free = false

-- ATT.CustomPros = {
    -- ["Reload Time"] = "-0.5s",
-- }

-- ARC9.LoadAttachment(ATT, "scpsl_disruptor_removenv")
--[[ -----------------------------------------------------------------------------------------------------------
--------- FRMG0
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "AP Drum"
ATT.CompactName = "AP Drum"
ATT.Icon = Material("entities/attachments/frmg0/Mag60AP.png", "mips smooth") 
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_drum"}

ATT.Free = false
ATT.ActivateElements = {"frmg0_drum_ap"}

ATT.CustomPros = {
    -- ["Reload Time"] = "-0.5s",
}
ATT.ReloadTimeMult = 0.85
ATT.ClipSizeMult = 0.6
ATT.PenetrationMult = 1.35
ATT.RecoilMult = 1.15
ATT.ActivePos = Vector(-0, -0.5, 0.5) 

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ap"
end

ARC9.LoadAttachment(ATT, "scpsl_frmg0_drumap")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Telescopic Sight"
ATT.CompactName = "Tele Sight"
ATT.Icon = Material("entities/attachments/frmg0/Scope.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_rail"}

ATT.Free = false
-- ATT.ActivateElements = {"frmg0_sightrail_nv"}

ATT.AimDownSightsTimeAdd = 0.25
ATT.VisualRecoilPunchMultSights = 0

ATT.Model = "models/weapons/arc9/scpsl/frmg0/att_frmg0_telescopic.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(10.0, -0, 1.35)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 12.5, -5.023),
        Ang = Angle(-2.53, -0.05, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}
ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 16
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("models/weapons/arc9/scpsl/attachments/RevolverCrosshair", "mips smooth")
ATT.HoloSightSize = 300
ATT.RTScopeReticleScale = 1.5
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
-- ATT.RTScopeNightVision = true 
-- ATT.RTScopeNightVisionMonochrome = true
-- ATT.RTScopeNightVisionCC = {
    -- ["$pp_colour_addr"] = 0.1,
    -- ["$pp_colour_addg"] = 0.6,
    -- ["$pp_colour_addb"] = 0.75,
    -- ["$pp_colour_brightness"] = -0.5,
    -- ["$pp_colour_contrast"] = 0.8,
    -- ["$pp_colour_colour"] = 1,
-- }

ARC9.LoadAttachment(ATT, "scpsl_frmg0_telerail")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Dot Sight"
ATT.CompactName = "Dot  Sight"
ATT.Icon = Material("entities/attachments/frmg0/Red Dot.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_optic"}

ATT.Free = false
ATT.CustomPros = {
    ["ADS Zoom"] = "1x",
}

ATT.Model = "models/weapons/arc9/scpsl/frmg0/att_frmg0_reddot.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 1)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 10, -0.1),
        Ang = Angle(0, -0, 0),
        Magnification = 1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/BlueDot") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_frmg0_reddot")
----------------------------------------------------------------------------------------------------------------
-- ATT = {}

-- ATT.PrintName = "Night Vison Scope"
-- ATT.CompactName = "Night Vision Scope"
-- ATT.Icon = Material("entities/attachments/frmg0/Red Dot.png", "mips smooth")
-- ATT.Description = ""

-- ATT.SortOrder = 1
-- ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
-- ATT.Category = {"scpsl_frmg0_optic"}

-- ATT.Free = false

-- ATT.AimDownSightsTimeAdd = 0.1
-- ATT.VisualRecoilPunchMultSights = 0

-- ATT.Model = "models/weapons/arc9/scpsl/frmg0/att_frmg0_nvoptic.mdl"
-- ATT.Scale = 1
-- ATT.ModelOffset = Vector(0, 0, 0)
-- ATT.ModelAngleOffset = Angle(-0, 0, 0)
-- ATT.Sights = {
    -- {
        -- Pos = Vector(-0, 10, -3),
        -- Ang = Angle(0, 0.3, 0),
        -- Magnification = 1.1,
        -- ViewModelFOV = 55,
        -- IgnoreExtra = false
    -- },
-- }

-- ATT.HoloSight = true
-- ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/BlueDot") 
-- ATT.HoloSightSize = 500
-- ATT.HoloSightColorable = false

-- ARC9.LoadAttachment(ATT, "scpsl_frmg0_nvoptic")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Holographic Sight"
ATT.CompactName = "Holo Sight"
ATT.Icon = Material("entities/attachments/frmg0/Red Dot.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_optic"}

ATT.Free = false
ATT.CustomPros = {
    ["ADS Zoom"] = "1x",
}

ATT.Model = "models/weapons/arc9/scpsl/frmg0/att_frmg0_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(3, 0, 1.22)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 10, -0.45),
        Ang = Angle(0, 0.7, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/HoloSight_Blue_1") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_frmg0_holosight")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Flashhider"
ATT.CompactName = "Flashhider"
ATT.Icon = Material("entities/attachments/frmg0/Bare Muzzle.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_muzzle"}
ATT.CustomPros = {
    ["Bullet Tracer"] = "Less Visible",
}
ATT.CustomCons = {
    ["Length"] = "+6%",
}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.MuzzleParticle = { "muzzleflash_pistol" }
ATT.Model = "models/weapons/arc9/scpsl/frmg0/att_frmg0_flashhider.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(1, -0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 90)

ATT.TracerSize = 1
ATT.RecoilMult = 0.98
ATT.BarrelLength = 47.7
ATT.SpeedAdd = -0.02

ARC9.LoadAttachment(ATT, "scpsl_frmg0_muzzleflashhider")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Suppressor"
ATT.CompactName = "Suppressor"
ATT.Icon = Material("entities/attachments/frmg0/Suppressor_0.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_muzzle"}
ATT.CustomPros = {
    ["Bullet Tracer"] = "Less Visible",
}
ATT.CustomCons = {
    ["Length"] = "+6%",
}

ATT.Free = false
ATT.Silencer = true
ATT.MuzzleParticle = { "muzzleflash_suppressed" }
ATT.Model = "models/weapons/arc9/scpsl/frmg0/att_frmg0_suppressor.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, -0.3, 0)
ATT.ModelAngleOffset = Angle(-90, 0, 90)

ATT.TracerSize = 1
ATT.RecoilMult = 0.98
ATT.BarrelLength = 47.7
ATT.SpeedAdd = -0.02

ARC9.LoadAttachment(ATT, "scpsl_frmg0_suppressor")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Muzzle Brake"
ATT.CompactName = "Muzzle Brake"
ATT.Icon = Material("entities/attachments/frmg0/Muzzle Brake.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_muzzle"}
ATT.CustomCons = {
    ["Length"] = "+8%",
}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.MuzzleParticle = { "muzzleflash_6" }
ATT.Model = "models/weapons/arc9/scpsl/frmg0/att_frmg0_muzzlebrake.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 5, -0.1)
ATT.ModelAngleOffset = Angle(90, 0, 0)

ATT.ShootVolumeMult = 1.2
ATT.RecoilMult = 0.9
ATT.BarrelLength = 48.6
ATT.SpeedAdd = -0.02

ARC9.LoadAttachment(ATT, "scpsl_frmg0_muzzlebrake")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Heavy Stock"
ATT.CompactName = "Heavy Stock"
ATT.Icon = Material("entities/attachments/frmg0/Heavy Stock.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_stock"}
ATT.CustomCons = {
    ["Length"] = "+1%",
}

ATT.Free = false
ATT.ActivateElements = {"frmg0_stock_heavy"}

ATT.SpreadAddSighted = -0.02
ATT.SpreadMult = 1.19 
ATT.AimDownSightsTimeMult = 1.1
ATT.RecoilMult = 0.84
ATT.BarrelLength = 46
ATT.SpeedAdd = -0.04

ARC9.LoadAttachment(ATT, "scpsl_frmg0_heavystock")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Short Barrel"
ATT.CompactName = "Short Barrel"
ATT.Icon = Material("entities/attachments/frmg0/Short Muzzle.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_frmg0_barrel"}
ATT.CustomPros = {
    ["Length"] = "-10%",
}

ATT.Free = false
ATT.ActivateElements = {"frmg0_barrel_short"}

ATT.SpreadAddHipFire = -0.02
ATT.DamageMaxMult = 0.9
ATT.DamageMinMult = 0.9
ATT.ArmorPiercingMult = 0.9
ATT.PenetrationMult = 0.9
ATT.BarrelLength = 40.5
ATT.SpeedAdd = 0.02

ARC9.LoadAttachment(ATT, "scpsl_frmg0_shortbarrel")
--[[ -----------------------------------------------------------------------------------------------------------
--------- COM18
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Extended AP Magazine"
ATT.CompactName = "Ext. AP Mag"
ATT.Icon = Material("entities/attachments/com18/mag21ap.png", "mips smooth") 
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_com18_mag"}

ATT.Free = false
ATT.ActivateElements = {"com18_mag_bottomext"}

ATT.ReloadTimeMult = 1.1
ATT.ClipSizeMult = 1.4
ATT.PenetrationMult = 1.35
ATT.SpeedAdd = -0.056

ARC9.LoadAttachment(ATT, "scpsl_com18_extapmag")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Extended JHP Magazine"
ATT.CompactName = "Ext. JHP Mag"
ATT.Icon = Material("entities/attachments/com18/mag21jhp.png", "mips smooth") 
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_com18_mag"}

ATT.Free = false
ATT.ActivateElements = {"com18_mag_bottomext"}

ATT.ReloadTimeMult = 1.1
ATT.ClipSizeMult = 1.4
ATT.PenetrationMult = 0.3
ATT.ArmorPiercingMult = 0.3
ATT.SpeedAdd = -0.056
ATT.DamageMaxMult = 1.2
ATT.DamageMinMult = 1.1

ARC9.LoadAttachment(ATT, "scpsl_com18_extjhpmag")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "JHP Magazine"
ATT.CompactName = "JHP Mag"
ATT.Icon = Material("entities/attachments/com18/mag15jhp.png", "mips smooth") 
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_com18_mag"}

ATT.Free = false

ATT.PenetrationMult = 0.3
ATT.ArmorPiercingMult = 0.3
ATT.DamageMaxMult = 1.1
ATT.DamageMinMult = 1.05

ARC9.LoadAttachment(ATT, "scpsl_com18_jhpmag")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Dot Sight"
ATT.CompactName = "Dot Sight"
ATT.Icon = Material("entities/attachments/com18/sight.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_com18_optic"}

ATT.Free = false
ATT.CustomPros = {
    ["ADS Zoom"] = "1x",
}

ATT.Model = "models/weapons/arc9/scpsl/com18/att_com18_microsight.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.1, 0.04, 0.1)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Scale = 1.4
ATT.Sights = {
    {
        Pos = Vector(-0, 9, -0.5),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/BlueDot") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ATT.SpeedAdd = -0.01

ARC9.LoadAttachment(ATT, "scpsl_com18_sight")
-----------------------------------------------------------------
-- ATT = {}

-- ATT.PrintName = "Muzzle Booster"
-- ATT.CompactName = "Muzzle Boost"
-- ATT.Icon = Material("entities/attachments/com18/extbarrel.png", "mips smooth")
-- ATT.Description = ""

-- ATT.SortOrder = 1
-- ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
-- ATT.Category = {"scpsl_com18_muzzle"}

-- ATT.Free = false
-- ATT.MuzzleDevice = false
-- ATT.MuzzleParticle = { "muzzleflash_6" }
-- ATT.Model = "models/weapons/arc9/scpsl/com18/att_com18_extbarrel.mdl"
-- ATT.Scale = 1.3
-- ATT.ModelOffset = Vector(0, -1.5, 3.2)
-- ATT.ModelAngleOffset = Angle(-90, 0, -90)

-- ATT.CustomCons = {
    -- ["Barrel Length"] = "+1%",
-- }
-- ATT.RPMMult = 1.1
-- ATT.RecoilMult = 1.3
-- ATT.BarrelLengthMult = 1.01
-- ATT.SpeedAdd = -0.03
-- ATT.SpreadMult = 1.17

-- ARC9.LoadAttachment(ATT, "scpsl_com18_extbarrel")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Suppressor"
ATT.CompactName = "Suppressor"
ATT.Icon = Material("entities/attachments/com18/suppressor.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_com18_muzzle"}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.Silencer = true
ATT.MuzzleParticle = { "muzzleflash_suppressed" }
ATT.Model = "models/weapons/arc9/scpsl/com18/att_com18_silencer.mdl"
ATT.Scale = 0.9
ATT.ModelOffset = Vector(-0.1, -0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, -90)

ATT.CustomCons = {
    ["Length"] = "+92%",
}
ATT.CustomPros = {
    ["Silencer"] = "True",
}
ATT.BarrelLengthMult = 1.92
ATT.SpeedAdd = -0.02
ATT.SpreadMult = 0.75

ARC9.LoadAttachment(ATT, "scpsl_com18_silencer")
--[[ -----------------------------------------------------------------------------------------------------------
--------- FSP9
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Extended Stock"
ATT.CompactName = "Ext. Stock"
ATT.Icon = Material("entities/attachments/fsp9/stockext.png", "mips smooth") 
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_fsp9_stock"}

ATT.Free = false
ATT.ActivateElements = {"fsp9_stock_ext"}

ATT.CustomCons = {
    ["Length"] = "+51%",
}
ATT.SpreadMultSighted = 0.2
ATT.RecoilMultSighted = 0.6
ATT.BarrelLengthMult = 1.51
ATT.SpeedAdd = -0.01

ARC9.LoadAttachment(ATT, "scpsl_fsp9_stock")  
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Dot Sight"
ATT.CompactName = "Dot Sight"
ATT.Icon = Material("entities/attachments/fsp9/9dot.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_fsp9_optic"}

ATT.Free = false

ATT.AimDownSightsTimeAdd = 0.1
ATT.VisualRecoilPunchMultSights = 0

ATT.Model = "models/weapons/arc9/scpsl/fsp9/att_fsp9_reddot.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 10, -1.4),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/RedDot") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_fsp9_reddot")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Holo Sight"
ATT.CompactName = "Holo Sight"
ATT.Icon = Material("entities/attachments/fsp9/holo.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_fsp9_optic"}

ATT.Free = false

ATT.AimDownSightsTimeAdd = 0.1
ATT.VisualRecoilPunchMultSights = 0

ATT.Model = "models/weapons/arc9/scpsl/fsp9/att_fsp9_holosight.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-2, 0.03, -0.1)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 9, -1.3),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/RedHolo") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_fsp9_holosight")
--[[ -----------------------------------------------------------------------------------------------------------
--------- E11
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Rifle Receiver"
ATT.CompactName = "Rifle Receiver"
ATT.Icon = Material("entities/attachments/e11/riflebody.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_barrel"}

ATT.Free = false
ATT.ActivateElements = {"e11_rail_long"}

ATT.CustomCons = {
["Length"] = "+20%",
}
ATT.DamageMaxMult = 1.15
ATT.DamageMinMult = 1.15
ATT.PenetrationMult = 1.125
ATT.ArmorPiercingMult = 1.125
ATT.SpeedAdd = -0.04
ATT.BarrelLengthMult = 1.2
ATT.SpreadMultHipFire = 2.72
ATT.SpreadMult = 0.46
ATT.RPMMult = 0.9

ARC9.LoadAttachment(ATT, "scpsl_e11_receiver")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "FMJ Drum Magazine"
ATT.CompactName = "FMJ Drum"
ATT.Icon = Material("entities/attachments/e11/mag60fmj.png", "mips smooth")
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_mag"}

ATT.Free = false
ATT.ActivateElements = {"e11_drum"}

ATT.CustomPros = {
    -- ["Reload Time"] = "-0.5s",
}
ATT.ReloadTimeMult = 1.35
ATT.ClipSizeMult = 1.5
-- ATT.PenetrationMult = 1.35
ATT.RecoilMult = 1.1
ATT.SpeedAdd = -0.07

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_drum"
end

ARC9.LoadAttachment(ATT, "scpsl_e11_drumfmj")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Low-Cap JHP Mahazine"
ATT.CompactName = "Low JHP Mag"
ATT.Icon = Material("entities/attachments/e11/mag30jhp.png", "mips smooth")
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_mag"}

ATT.Free = false
ATT.ActivateElements = {"e11_low"}

ATT.CustomPros = {
    -- ["Reload Time"] = "-0.5s",
}
ATT.ReloadTimeMult = 0.95
ATT.ClipSizeMult = 0.75
ATT.DamageMaxMult = 1.1
ATT.DamageMinMult = 1.1
ATT.PenetrationMult = 0.5
ATT.ArmorPiercingMult = 0.5
ATT.SpeedAdd = 0.01

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_low"
end

ARC9.LoadAttachment(ATT, "scpsl_e11_lowfmj")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Low-Cap AP Mahazine"
ATT.CompactName = "Low AP Mag"
ATT.Icon = Material("entities/attachments/e11/mag30ap.png", "mips smooth")
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_mag"}

ATT.Free = false
ATT.ActivateElements = {"e11_low"}

ATT.CustomPros = {
    -- ["Reload Time"] = "-0.5s",
}
ATT.ReloadTimeMult = 0.95
ATT.ClipSizeMult = 0.75
ATT.PenetrationMult = 1.2
ATT.ArmorPiercingMult = 1.2
ATT.SpeedAdd = 0.01

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_low"
end

ARC9.LoadAttachment(ATT, "scpsl_e11_lowap")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Lightweight Stock"
ATT.CompactName = "Light Stock"
ATT.Icon = Material("entities/attachments/e11/lightstock.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_stock"}

ATT.Free = false
ATT.ActivateElements = {"e11_stocklight"}

ATT.CustomPros = {
["Length"] = "-1%",
}
ATT.SpreadMultHipFire = 0.82
ATT.RecoilMultSighted = 1.25
ATT.SpeedAdd = 0.02
ATT.BarrelLengthMult = 0.99

ARC9.LoadAttachment(ATT, "scpsl_e11_lightstock")  
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Recoil-Reducing Stock"
ATT.CompactName = "Heavy Stock"
ATT.Icon = Material("entities/attachments/e11/recoilstock.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_stock"}

ATT.Free = false
ATT.ActivateElements = {"e11_stockheavy"}

ATT.CustomPros = {
["Length"] = "-1%",
}
ATT.RecoilMultSighted = 0.67
ATT.BarrelLengthMult = 0.99
ATT.SpeedAdd = -0.025

ARC9.LoadAttachment(ATT, "scpsl_e11_heavystock")  
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Holographic Sight"
ATT.CompactName = "Holo Sight"
ATT.Icon = Material("entities/attachments/e11/holo.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_optic"}

ATT.Free = false
ATT.CustomPros = {
    ["ADS Zoom"] = "1x",
}

ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 10, -1.4),
        Ang = Angle(0, 0.7, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/HoloSight_Blue_1") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_e11_holosight")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Dot Sight"
ATT.CompactName = "Dot Sight"
ATT.Icon = Material("entities/attachments/e11/dot.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_optic"}

ATT.Free = false
ATT.CustomPros = {
    ["ADS Zoom"] = "1x",
}

ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_reddot.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 9, -1.67),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/BlueDot") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_e11_dotsight")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Night-Vision Scope"
ATT.CompactName = "NV Scope"
ATT.Icon = Material("entities/attachments/e11/scopenv.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_optic"}

ATT.Free = false
-- ATT.ActivateElements = {"frmg0_sightrail_nv"}

ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_nvscope.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(2.0, -0, 0.0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 7, -1.41),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.05,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.SpeedAdd = -0.032
ATT.VisualRecoilPunchMultSights = -1
ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 18
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("models/weapons/arc9/scpsl/attachments/RevolverCrosshair", "mips smooth")
ATT.RTScopeReticleScale = 1.1
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNightVision = true 
ATT.RTScopeNightVisionMonochrome = true
ATT.RTScopeNightVisionCC = {
    ["$pp_colour_addr"] = 0.1,
    ["$pp_colour_addg"] = 0.6,
    ["$pp_colour_addb"] = 0.75,
    ["$pp_colour_brightness"] = -0.3,
    ["$pp_colour_contrast"] = 0.8,
    ["$pp_colour_colour"] = 1,
}

ARC9.LoadAttachment(ATT, "scpsl_e11_nvscope")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Telescopic Sight"
ATT.CompactName = "Telescopic Sight"
ATT.Icon = Material("entities/attachments/e11/scope.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_optic"}

ATT.Free = false
-- ATT.ActivateElements = {"frmg0_sightrail_nv"}

ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_scope.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(2.0, -0, 0.0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 7, -1.85),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.3,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.SpeedAdd = -0.065
ATT.SpreadMultSighted = 0.67
ATT.AimDownSightsTimeMult = 1.3
ATT.VisualRecoilPunchMultSights = -1
ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 18
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("models/weapons/arc9/scpsl/attachments/RevolverCrosshair", "mips smooth")
ATT.RTScopeReticleScale = 1.1
ATT.RTScopeShadowIntensity = 1

ARC9.LoadAttachment(ATT, "scpsl_e11_scope")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Flash Hider"
ATT.CompactName = "Flash Hider"
ATT.Icon = Material("entities/attachments/e11/flashhider.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_muzzle"}
ATT.CustomPros = {
    ["Bullet Tracer"] = "Less Visible",
}
ATT.CustomCons = {
    ["Length"] = "+2%",
}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.MuzzleParticle = { "muzzleflash_pistol" }
ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_flashhider.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.1, -0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 90)

ATT.TracerSize = 1
ATT.RecoilMult = 0.97
ATT.BarrelLengthMult = 1.02
ATT.SpeedAdd = -0.005

ARC9.LoadAttachment(ATT, "scpsl_e11_muzzleflashhider")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Muzzle Brake"
ATT.CompactName = "Muzzle Brake"
ATT.Icon = Material("entities/attachments/e11/muzzlebrake.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_muzzle"}

ATT.CustomCons = {
    ["Length"] = "+1%",
}
ATT.Free = false
ATT.MuzzleDevice = false
ATT.MuzzleParticle = { "muzzleflash_6" }
ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_muzzlebrake.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.1, -0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 90)

ATT.ShootVolumeMult = 1.2
ATT.RecoilMult = 0.9
ATT.BarrelLengthMult = 1.01
ATT.SpeedAdd = -0.01

ARC9.LoadAttachment(ATT, "scpsl_e11_muzzlebrake")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Muzzle Booster"
ATT.CompactName = "Muzzle Boost"
ATT.Icon = Material("entities/attachments/e11/muzzlebooster.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_muzzle"}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.MuzzleParticle = { "muzzleflash_6" }
ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_muzzlebooster.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0.1, -0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 90)

ATT.CustomCons = {
    ["Length"] = "+1%",
}
ATT.RPMMult = 1.1
ATT.RecoilMult = 1.3
ATT.BarrelLengthMult = 1.01
ATT.SpeedAdd = -0.01
ATT.SpreadMult = 1.17

ARC9.LoadAttachment(ATT, "scpsl_e11_muzzlebooster")
-----------------------------------------------------------------
ATT = {}

ATT.PrintName = "Suppressor"
ATT.CompactName = "Suppressor"
ATT.Icon = Material("entities/attachments/e11/suppressor.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_e11_muzzle"}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.Silencer = true
ATT.MuzzleParticle = { "muzzleflash_suppressed" }
ATT.Model = "models/weapons/arc9/scpsl/e11/att_e11_silencer.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(-0, -0, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 90)

ATT.CustomCons = {
    ["Length"] = "+20%",
}
ATT.CustomPros = {
    ["Silencer"] = "True",
}
ATT.BarrelLengthMult = 1.2
ATT.SpeedAdd = -0.019
ATT.SpreadMult = 0.89

ARC9.LoadAttachment(ATT, "scpsl_e11_silencer")
--[[ -----------------------------------------------------------------------------------------------------------
--------- COM15
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Extended JHP Magazine"
ATT.CompactName = "Ext. JHP Mag"
ATT.Icon = Material("entities/attachments/com18/mag21jhp.png", "mips smooth") 
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"com15_mag_ext"}

ATT.Free = false
ATT.ActivateElements = {"com18_mag_bottomext"}

ATT.ReloadTimeMult = 1.15
ATT.ClipSizeMult = 1.45
ATT.SpeedAdd = -0.03

ATT.Hook_TranslateAnimation = function(wep, anim)
    return anim .. "_ext"
end

ARC9.LoadAttachment(ATT, "scpsl_com15_extjhpmag")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Suppressor"
ATT.CompactName = "Suppressor"
ATT.Icon = Material("entities/attachments/com18/suppressor.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_com15_muzzle"}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.Silencer = true
ATT.MuzzleParticle = { "muzzleflash_suppressed" }
ATT.Model = "models/weapons/arc9/scpsl/com15/att_com15_silencer.mdl"
ATT.Scale = 0.9
ATT.ModelOffset = Vector(-0.25, 0.05, 0)
ATT.ModelAngleOffset = Angle(-0, 0, -90)

ATT.CustomCons = {
    ["Length"] = "+92%",
}
ATT.CustomPros = {
    ["Silencer"] = "True",
}
ATT.BarrelLengthMult = 1.92
ATT.SpeedAdd = -0.02
ATT.SpreadMult = 0.75

ARC9.LoadAttachment(ATT, "scpsl_com15_silencer")
--[[ -----------------------------------------------------------------------------------------------------------
--------- CROSSVEC
]] -------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Low-cap AP Mag"
ATT.CompactName = "AP Mag"
ATT.Icon = Material("entities/attachments/crossvec/lowcapapmag.png", "mips smooth") 
ATT.Description = ""

-- ATT.Folder = "SCP: SL"
ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"crossvec_mag"}

ATT.Free = false
ATT.ActivateElements = {"crossvec_mag_ap"}

ATT.ClipSizeMult = 0.75
ATT.SpeedAdd = 0.03
ATT.DamageMaxMult = 1.05
ATT.DamageMinMult = 0.9
ATT.ArmorPiercingMult = 1.25

ARC9.LoadAttachment(ATT, "scpsl_crossvec_apmag")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Retracted Stock"
ATT.CompactName = "Folded Stock"
ATT.Icon = Material("entities/attachments/crossvec/collapsedstock.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_crossvec_stock"}

ATT.Free = false
ATT.ActivateElements = {"crossvec_stock_folded"}

ATT.CustomPros = {
    ["Equip Time"] = "Decreased",
	["Length"] = "-33%",
}
ATT.SpreadMultSighted = 1.38
ATT.RecoilMultSighted = 2
ATT.BarrelLengthMult = 0.67

ARC9.LoadAttachment(ATT, "scpsl_crossvec_stockfolded")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Extended Barrel"
ATT.CompactName = "Ext. Barrel"
ATT.Icon = Material("entities/attachments/crossvec/barrelextended.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_crossvec_barrel"}

ATT.Free = false
ATT.ActivateElements = {"crossvec_barrel_extended"}

-- ATT.CustomCons = {
    -- ["Barrel Length"] = "+92%",
-- }
ATT.CustomCons = {
    ["Length"] = "+45%",
}
ATT.SpreadMult = 0.8
ATT.SpeedAdd = -0.025
ATT.BarrelLengthMult = 1.45
ATT.DamageMaxMult = 1.05
ATT.DamageMinMult = 1.05
ATT.ArmorPiercingMult = 1.1
ATT.RecoilMult = 1.1

ARC9.LoadAttachment(ATT, "scpsl_crossvec_barrelext")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Holographic Sight"
ATT.CompactName = "Holo Sight"
ATT.Icon = Material("entities/attachments/crossvec/holo.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_crossvec_optic"}

ATT.Free = false
ATT.CustomPros = {
    ["ADS Zoom"] = "1x",
}

ATT.Model = "models/weapons/arc9/scpsl/crossvec/att_crossvec_holo.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0.1, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 10, -1.15),
        Ang = Angle(0, 0.7, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/HoloSight_Blue_1") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_crossvec_holosight")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Dot Sight"
ATT.CompactName = "Dot Sight"
ATT.Icon = Material("entities/attachments/crossvec/dotsight.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_crossvec_optic"}

ATT.Free = false
ATT.CustomPros = {
    ["ADS Zoom"] = "1x",
}

ATT.Model = "models/weapons/arc9/scpsl/crossvec/att_crossvec_reddot.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(0, 0.1, 0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 10, -1.45),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.1,
        ViewModelFOV = 55,
        IgnoreExtra = false
    },
}

ATT.HoloSight = true
ATT.HoloSightReticle = Material("models/weapons/arc9/scpsl/attachments/BlueDot") 
ATT.HoloSightSize = 500
ATT.HoloSightColorable = false

ARC9.LoadAttachment(ATT, "scpsl_crossvec_reddot")
----------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Night-Vision Scope"
ATT.CompactName = "NV Scope"
ATT.Icon = Material("entities/attachments/crossvec/nvscope.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_crossvec_optic"}

ATT.Free = false
-- ATT.ActivateElements = {"frmg0_sightrail_nv"}

ATT.Model = "models/weapons/arc9/scpsl/crossvec/att_crossvec_scope.mdl"
ATT.Scale = 1
ATT.ModelOffset = Vector(2.0, -0, 0.0)
ATT.ModelAngleOffset = Angle(-0, 0, 0)
ATT.Sights = {
    {
        Pos = Vector(-0, 10, -1.673),
        Ang = Angle(0, 0.0, 0),
        Magnification = 1.05,
        ViewModelFOV = 40,
        IgnoreExtra = false
    },
}

ATT.SpeedAdd = -0.03
ATT.VisualRecoilPunchMultSights = -5
ATT.AimDownSightsTimeAdd = 0.2
ATT.RTScope = true
ATT.RTScopeSubmatIndex = 1
ATT.RTScopeFOV = 18
ATT.RTScopeRes = 512
-- ATT.RTScopeSurface = Material("models/weapons/arc9/mw3/mw3_optics/hamr_lens")
ATT.RTScopeReticle = Material("models/weapons/arc9/scpsl/attachments/RevolverCrosshair", "mips smooth")
ATT.RTScopeReticleScale = 1.1
ATT.RTScopeShadowIntensity = 1
ATT.RTScopeNoPP = false
ATT.RTScopeColorable = false
ATT.RTScopeNightVision = true 
ATT.RTScopeNightVisionMonochrome = true
ATT.RTScopeNightVisionCC = {
    ["$pp_colour_addr"] = 0.1,
    ["$pp_colour_addg"] = 0.6,
    ["$pp_colour_addb"] = 0.75,
    ["$pp_colour_brightness"] = -0.3,
    ["$pp_colour_contrast"] = 0.8,
    ["$pp_colour_colour"] = 1,
}

ARC9.LoadAttachment(ATT, "scpsl_crossvec_nvscope")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Suppressor"
ATT.CompactName = "Suppressor"
ATT.Icon = Material("entities/attachments/crossvec/suppressor.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_crossvec_muzzle"}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.Silencer = true
ATT.MuzzleParticle = { "muzzleflash_suppressed" }
ATT.Model = "models/weapons/arc9/scpsl/crossvec/att_crossvec_suppressor.mdl"
ATT.Scale = 0.9
ATT.ModelOffset = Vector(-0.25, 0.07, 0)
ATT.ModelAngleOffset = Angle(-0, 0, -90)

ATT.CustomCons = {
    ["Length"] = "+29%",
}
ATT.CustomPros = {
    ["Silencer"] = "True",
}
ATT.BarrelLengthMult = 1.29
ATT.SpeedAdd = -0.017
ATT.SpreadMult = 0.75

ARC9.LoadAttachment(ATT, "scpsl_crossvec_suppressor")
-------------------------------------------------------------------------------------------------------------
ATT = {}

ATT.PrintName = "Flash Hider"
ATT.CompactName = "Flash Hider"
ATT.Icon = Material("entities/attachments/crossvec/flashhider.png", "mips smooth")
ATT.Description = ""

ATT.SortOrder = 1
ATT.MenuCategory = "ARC9 - SCP: Secret Laboratory Attachments"
ATT.Category = {"scpsl_crossvec_muzzle"}

ATT.Free = false
ATT.MuzzleDevice = false
ATT.Silencer = false
ATT.MuzzleParticle = { "muzzleflash_2" }
ATT.Model = "models/weapons/arc9/scpsl/crossvec/att_crossvec_flashhider.mdl"
ATT.Scale = 0.9
ATT.ModelOffset = Vector(-0.25, 0.07, 0)
ATT.ModelAngleOffset = Angle(-0, 0, -90)

ATT.CustomPros = {
    ["Bullet Tracer"] = "Less Visible",
}
ATT.CustomCons = {
    ["Length"] = "+6%",
}
ATT.TracerSize = 1
ATT.RecoilMult = 0.98
ATT.BarrelLengthMult = 1.06
ATT.SpeedAdd = -0.01

ARC9.LoadAttachment(ATT, "scpsl_crossvec_flashhider")