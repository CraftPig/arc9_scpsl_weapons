AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_disruptor")

SWEP.Category = "ARC9 - SCP: SL"
SWEP.SubCategory = "Special Weaponry"

SWEP.AdminOnly = false
SWEP.PrintName = "3-X Particle Disruptor"
SWEP.TrueName = "3-X Particle Disruptor"

SWEP.Slot = 4

SWEP.Class = "Experimental Fusion Rifle "
SWEP.Trivia = {
    Manufacturer = "Foundation Gunworks",
    Caliber = "Fusion Cartridges",
    Weight = "4.5kg",
    -- Country = "Germany",
    Year = "1974"
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: Secret Laboratory | Northwood Studios", 
}
SWEP.Description = [[The 3-X Particle Disruptor is a powerful weapon, capable of firing five times before the weapon malfunctions and becomes unusable. The weapon does not fire immediately but instead has a short wind-up animation as it charges up before firing. It will then emit a loud warning beep before shooting.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/scpsl/disruptor/v_disruptor.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-5, 3, -5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-8, 6, -5), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -10, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK = false
SWEP.TPIKnolefthand = false
SWEP.NoTPIKVMPos = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "ar2"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "magic"
SWEP.HoldTypeBlindfire = "ar2"
SWEP.HoldTypeNPC = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DamageMax = 250 -- Damage done at point blank range -- divide base dmg by 6, for min divide by 2, penetration: divide divided max dmg by 6
SWEP.DamageMin = 250 -- Damage done at maximum range
SWEP.DamageRand = nil -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Num = 1 -- Number of bullets to shoot
SWEP.DamageType = DMG_DISSOLVE

SWEP.ImpactForce = 1 -- Force that bullets apply on hit
SWEP.ArmorPiercing = 0
SWEP.Penetration = 60 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false
SWEP.RangeMin = 650 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 3936.9 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.PhysBulletMuzzleVelocity = 100000 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

SWEP.RPM = 70
-- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
SWEP.Firemodes = {
	{
	    Mode = 3,
    },
}
SWEP.PostBurstDelay = 0
SWEP.TriggerDelay = true -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 1 -- Time until weapon fires.
SWEP.TriggerDelayRepeat = false -- Whether to do it for every shot on automatics.
SWEP.TriggerDelayCancellable = false -- Whether it is possible to cancel trigger delay by releasing the trigger before it is done.
SWEP.TriggerDelayReleaseToFire = false -- Release the trigger to fire instead of firing as soon as the delay is over.
SWEP.TriggerStartFireAnim = true -- Whether trigger begins the firing animation

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.85,
    [HITGROUP_RIGHTARM] = 0.85,
    [HITGROUP_LEFTLEG] = 0.7,
    [HITGROUP_RIGHTLEG] = 0.7,
}

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo = "AR2AltFire" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 6

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread = 0.03

SWEP.SpreadAddMove = 0.015 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.2 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = nil -- Applied when not sighted.
SWEP.SpreadAddSighted = -0.3 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = -0.005 -- Applied when crouching.

SWEP.SpreadAddRecoil = 0.6 -- Applied per unit of recoil.

-- Recoil ---------------------------------------------------------------------------------------------
SWEP.Recoil = 1.0 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.1
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 2  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 8
SWEP.RecoilRandomSide = 0.5
SWEP.RecoilRandomSideAddSighted = 0

SWEP.RecoilAddCrouch = -0.05

SWEP.RecoilDissipationRate = 15 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.0 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 2 -- How long recoil must stay after last shoot
SWEP.RecoilPerShot = 0.1

SWEP.RecoilAutoControl = 1 

---- Weapon Visual Recoil
SWEP.UseVisualRecoil = true
SWEP.PhysicalVisualRecoil = false -- Visual recoil actually affects your aim point.
SWEP.VisualRecoil = 0.05

SWEP.VisualRecoilCenter = Vector(0, -5, 20) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilUp = 325.0 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilUpAddSighted = -50.0
SWEP.VisualRecoilSide = 22 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 1000.0 -- Roll tilt for visual recoil.

SWEP.VisualRecoilPunch = 350 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 0.1

SWEP.VisualRecoilDampingConst = 80 -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude = 1
SWEP.VisualRecoilSpringPunchDamping = 5 -- ehh another val for "eft" recoil, 6 is default

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.BarrelLength = 0 -- Distance for nearwalling
SWEP.PushBackForce = 0 -- Push the player back when shooting.

SWEP.Sway = 0 -- How much the gun sways.
SWEP.SwayAddMidAir = 0.0 -- How much the gun sways.

SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10
SWEP.AimDownSightsTime = 0.2 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.0 -- How long it takes to go from sprinting to being able to fire.

SWEP.ShootWhileSprint = true
SWEP.HasSights = true
SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.
SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.CanLean = true

SWEP.Speed = 0.98
-- SWEP.SpeedMult = 0.9
SWEP.SpeedMultSights = 0.5
-- SWEP.SpeedMultShooting = 0.95
-- SWEP.SpeedMultMelee = 0
-- SWEP.SpeedMultCrouch = 0.9
-- SWEP.SpeedMultBlindFire = 1

-- Melee ----------------------------------------------------------------------------------------------
SWEP.Bash = false
SWEP.PrimaryBash = false

SWEP.BashDamage = 30
SWEP.BashLungeRange = 0
SWEP.BashRange = 60
SWEP.PreBashTime = 0.2
SWEP.PostBashTime = 0.6
SWEP.BashDamageType = DMG_CLUB
SWEP.BashDecal = "ExplosiveGunshot"
SWEP.BashImpact = true -- Creates a Impact effect that leaves a bullet hole.

SWEP.BashSpeed = 1

SWEP.BashWhileSprint = false -- Unlike ShootWhileSprint, this will not require transitioning out of sprint state (and waiting the sprinttofire delay)
SWEP.BashCancelsReload = nil -- If bashing should immediately cancel the reload

-------------------------------------------------------------------------------------------------------
-- Viewmodel ------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModelFOVBase = 58

SWEP.IronSights = {
    Pos = Vector(-1.702, -6.25, 1.74), -- (-1.845, -5.9, 1.078),
    Ang = Angle(-0.0, -0.0, 0),
    Magnification = 1.3,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-6, 0, -0),
    Ang = Angle(0, 0, -45),
}


SWEP.ActivePos = Vector(-0, 0.3, 0.6)
SWEP.ActiveAng = Angle(-3, 0, -0)

SWEP.MovingPos =  Vector(-0, -0, -0)
SWEP.MovingAng =  Angle(0, 0, 0)
SWEP.MovingMidPoint = {
    Pos = Vector(0, -1, 0),
    Ang = Angle(0, -0, 0)
}

SWEP.CrouchPos = Vector(0.0, -1.5, -1.0)
SWEP.CrouchAng = Angle(-0, -1, -15)

SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads
SWEP.SprintPos = Vector(0, 0, 0.6)
SWEP.SprintAng = Angle(-3, -1, -0)
SWEP.SprintMidPoint = {
    Pos = Vector(-0, -0, -0),
    Ang = Angle(0, 0, -0)
}

SWEP.NearWallPos = Vector(-0, -7, 3.0)
SWEP.NearWallAng = Angle(20, -10, -10) 

SWEP.VManipOffsetPos = Vector(1, -1.75, -0.3)
SWEP.VManipOffsetAng = Angle(0, 0, 5)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(12, 35, 5)
SWEP.CustomizeRotateAnchor = Vector(12, -1.5, -5)

-------------------------------------------------------------------------------------------------------
-- Visuals & Effects ----------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

-- Magazine Drop --------------------------------------------------------------------------------------
SWEP.ShouldDropMag = false
SWEP.ShouldDropMagEmpty = false

SWEP.DropMagazineQCA = 3 -- QC Attachment drop mag from, would drop from shell port if not defined
SWEP.DropMagazineAmount = 1 -- Amount of mags to drop.
SWEP.DropMagazineTime = 0.88

SWEP.DropMagazinePos = Vector(-0, 0, 0) -- offsets
SWEP.DropMagazineAng = Angle(0, 90, 0)
SWEP.DropMagazineVelocity = Vector(0, 90, 0) -- Put something here if your anim throws the mag with force

SWEP.DropMagazineModel = "models/weapons/arc9_rockay/mp5/w_mp5_mag.mdl" -- Set to a string or table to drop this magazine when reloading.
SWEP.DropMagazineSounds = {"physics/metal/weapon_impact_soft1.wav",
                           "physics/metal/weapon_impact_soft2.wav",
		                   "physics/metal/weapon_impact_soft3.wav", } -- Table of sounds a dropped magazine should play.

-- Shell Eject -----------------------------------------------------------------------------------------					 
SWEP.CaseEffectQCA = nil -- QC Attachment for shell ejection.					 
SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = false -- Don't eject shell while cycling

SWEP.ShellModel = "models/shells/shell_9mm.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

SWEP.ShellEffectCount = 1
SWEP.ShellSmoke = true
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, -90, 0)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ARC9.ShellSoundsTable
SWEP.RicochetSounds = ARC9.RicochetSounds

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA = 1 -- QC Attachment that controls after shot particle.

SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely
SWEP.NoFlash = false -- Disable light flash

SWEP.MuzzleParticle = { "disruptor_flash", "disruptor_flash_high", "disruptor_lightning" } -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle = "barrel_smoke_3"

SWEP.ImpactEffect = "disruptor_splash"
SWEP.ImpactDecal = "SmallScorch"
-- SWEP.ImpactSound = "scpsl_disruptor_impact"

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor = Color(0, 150, 255) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize = 20

-- Camera ------------------------------------------------------------------------------------------------
SWEP.CamQCA = 2 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult = nil -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng = Angle(0, 0, 0)

SWEP.BobSprintMult = 0.35 -- 
SWEP.BobWalkMult = 1.25 -- same but for all non sprint actions

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}
SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               = { "scpsl_disruptor_render" }
-- SWEP.LayerSound               = { "" }
-- SWEP.ShootSoundIndoor         = { "" }
-- SWEP.LayerSoundIndoor         = { "" }
-- SWEP.ShootSoundSilenced       = { "" } 
-- SWEP.ShootSoundSilencedIndoor = { "" }
-- SWEP.LayerSoundSilenced       = { "" }
-- SWEP.LayerSoundSilencedIndoor = { "" } 

SWEP.DryFireSound = ""

SWEP.FiremodeSound = ""

SWEP.EnterSightsSound = "scpsl_disruptor_adsin"
SWEP.ExitSightsSound = "scpsl_disruptor_adsout"

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.AttachmentElements = {
    --  ["undefined"] = { Bodygroups = {{1,1},},},
  }

SWEP.Attachments = {
    {
        PrintName = "Optic",
		Bone = "main",
        Category = { "scpsl_disruptor_optic" },
		Integral = true,
		Pos = Vector(-0, -6.2, -5),
        Ang = Angle(-90, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
	{
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = false -- Instantly go to idle_sprint instead of playing enter_sprint.

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
    },
    ------------------------------------------------ Sights
    -- ["enter_sights"] = {
        -- Source = {"ads_in"},
		-- EventTable = {
            -- {s = "scpsl_disruptor_adsin", t = 0 / 30},
        -- },
    -- },
	-- ["idle_sights"] = {
        -- Source = {"ads_idle"},
    -- },
	-- ["exit_sights"] = {
        -- Source = {"ads_out"},
		-- EventTable = {
            -- {s = "scpsl_disruptor_adsout", t = 0 / 30},
        -- },
    -- },
    --------------------------------------------------- Fire
    ["fire"] = {
        Source = {"shoot"},
		Time = 2.25,
		EventTable = {
		    {s = "scpsl_disruptor_powerup", t = 0 / 30},
        },
    },
	["fire_sights"] = {
        Source = {"shoot_ads"},
		Time = 2.25,
		EventTable = {
		    {s = "scpsl_disruptor_powerup", t = 0 / 30},
        },
    },
    -- ["dryfire"] = {
        -- Source = {"Fire_Empty"},
		-- MinProgress = 0.1,
        -- FireASAP = true,
    -- },
    --------------------------------------------------- Draw & Holster
	["ready"] = {
        Source = {"pickup"},
        MinProgress = 0.9,
        FireASAP = true,
		EventTable = {
		    {s = "scpsl_disruptor_chamber", t = 18 / 30},
			{s = "scpsl_disruptor_closebolt", t = 40 / 30},
        },
    },
    ["draw"] = {
        Source = {"draw"},
        MinProgress = 0.5,
        FireASAP = true,
		EventTable = {
            {s = "scpsl_disruptor_equip", t = 0 / 30},
        },
    },
	["holster"] = {
        Source = {"draw"},
		Time = 0.25,
		Reverse = true,
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
		DumpAmmo = true,
        MinProgress = 0.7,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_disruptor_boltback", t = 0 / 30},
			{s = "scpsl_disruptor_magout", t = 40 / 30},
			{s = "scpsl_disruptor_magin", t = 80 / 30},
			{s = "scpsl_disruptor_chamber", t = 113 / 30},
			{s = "scpsl_disruptor_closebolt", t = 133 / 30},
        },
    },
    --------------------------------------------------- Tacticool
    ["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.01,
        FireASAP = true,
		EventTable = {
            {s = "scpsl_disruptor_ins0", t = 15 / 30},
			{s = "scpsl_disruptor_ins1", t = 55 / 30},
			{s = "scpsl_disruptor_ins2", t = 105 / 30},
			{s = "scpsl_disruptor_ins3", t = 133.5 / 30},
			{s = "scpsl_disruptor_ins4", t = 168 / 30},
        },
    },
}

-- SWEP.Hook_OnKill = function (self, ent)
    -- npc:EmitSound("weapons/arc9/scpsl/disruptor/Lazgun_Projectile_Impact.wav")
-- return end

-- hook.Add( "OnNPCKilled", "DisruptorImpactSFX", function( npc, attacker, inflictor )
	-- npc:EmitSound("weapons/arc9/scpsl/disruptor/Lazgun_Projectile_Impact.wav")
-- end)