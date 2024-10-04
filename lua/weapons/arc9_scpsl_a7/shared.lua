AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_a7")

SWEP.Category = "ARC9 - SCP: SL"
SWEP.SubCategory = "Special Weaponry"

SWEP.AdminOnly = false
SWEP.PrintName = "A7"
SWEP.TrueName = "A7"

SWEP.Slot = 2

SWEP.Class = "'Sidearm'"
SWEP.Trivia = {
    Manufacturer = "???",
    Caliber = "7.62x39mm",
    Weight = "1.7 kg",
    -- Country = "Germany",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: Secret Laboratory | Northwood Studios", 
}
SWEP.Description = [[What the hell even is this abomination...]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/scpsl/a7/v_a7.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-12, 0, -9), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-4, 6, -15), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -5, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK = false
SWEP.TPIKnolefthand = false
SWEP.NoTPIKVMPos = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType = "shotgun"
SWEP.HoldTypeSprint = "shotgun"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "shotgun"
SWEP.HoldTypeCustomize = "magic"
SWEP.HoldTypeBlindfire = "shotgun"
SWEP.HoldTypeNPC = "shotgun"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DamageMax = 26 -- Damage done at point blank range --
SWEP.DamageMin = 6.5 -- Damage done at maximum range
SWEP.DamageRand = nil -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Num = 1 -- Number of bullets to shoot
SWEP.DamageType = DMG_BULLET

SWEP.ImpactForce = 1 -- Force that bullets apply on hit
SWEP.ArmorPiercing = 0.7
SWEP.Penetration = 14 -- Units of wood that can be penetrated by this gun. -- 19min to pen two targets. -- ArmorPiercing *2
SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false
SWEP.RangeMin = 400 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 9055 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.PhysBulletMuzzleVelocity = 28340 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

SWEP.RPM = 450
-- -1: Automatic, 1: Semi, 2: Two-round burst, 3: Three-round burst
SWEP.Firemodes = {
	{
	    Mode = -1,
    },
}
SWEP.PostBurstDelay = 0
SWEP.TriggerDelay = false -- Add a delay before the weapon fires.
SWEP.TriggerDelayTime = 1 -- Time until weapon fires.
SWEP.TriggerDelayRepeat = false -- Whether to do it for every shot on automatics.
SWEP.TriggerDelayCancellable = false -- Whether it is possible to cancel trigger delay by releasing the trigger before it is done.
SWEP.TriggerDelayReleaseToFire = false -- Release the trigger to fire instead of firing as soon as the delay is over.
SWEP.TriggerStartFireAnim = false -- Whether trigger begins the firing animation

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 0.7,
    [HITGROUP_RIGHTARM] = 0.7,
    [HITGROUP_LEFTLEG] = 0.7,
    [HITGROUP_RIGHTLEG] = 0.7,
}

-- Magazine -------------------------------------------------------------------------------------------
SWEP.Ammo = "AR2" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 4

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread = 0.04

SWEP.SpreadAddMove = 0.01 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.04 * 6 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = nil -- Applied when not sighted.
SWEP.SpreadAddSighted = -0.015 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = -0.005 -- Applied when crouching.

SWEP.SpreadAddRecoil = 0.01 -- Applied per unit of recoil.

-- Recoil ---------------------------------------------------------------------------------------------

SWEP.Recoil = 2 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.5
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 1  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 2
SWEP.RecoilRandomSide = 1.5
SWEP.RecoilRandomSideAddSighted = 0

SWEP.RecoilAddCrouch = -0.05

SWEP.RecoilDissipationRate = 15 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.0 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 2 -- How long recoil must stay after last shoot
SWEP.RecoilPerShot = 0.1

SWEP.RecoilAutoControl = 1.5 

---- Weapon Visual Recoil
SWEP.UseVisualRecoil = true
SWEP.PhysicalVisualRecoil = false -- Visual recoil actually affects your aim point.
SWEP.VisualRecoil = 0.05

SWEP.VisualRecoilCenter = Vector(0, -5, 20) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilUp = 30.0 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilUpAddSighted = -25.0
SWEP.VisualRecoilSide = 0.5 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilSideAddSighted = -0.5
SWEP.VisualRecoilRoll = 100.0 -- Roll tilt for visual recoil.

SWEP.VisualRecoilPunch = 5 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = 5

SWEP.VisualRecoilDampingConst = 80 -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude = 8
SWEP.VisualRecoilSpringPunchDamping = 8 -- ehh another val for "eft" recoil, 6 is default

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.BarrelLength = 20 -- Distance for nearwalling
SWEP.PushBackForce = 0 -- Push the player back when shooting.

SWEP.Sway = 0 -- How much the gun sways.
SWEP.SwayAddMidAir = 0.0 -- How much the gun sways.

SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10
SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.0 -- How long it takes to go from sprinting to being able to fire.

SWEP.ShootWhileSprint = true
SWEP.HasSights = true
SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater
SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.CanLean = true

SWEP.Speed = 1
SWEP.SpeedMult = 1
SWEP.SpeedMultSights = 0.9
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
SWEP.ViewModelFOVBase = 65

SWEP.IronSights = {
    Pos = Vector(-0.0, -2, 2.8),
    Ang = Angle(-0, 1.5, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-5, -15, 1),
    Ang = Angle(0, 0, -30),
}

SWEP.ActivePos = Vector(-0, 0, 2) 
SWEP.ActiveAng = Angle(0, -0, 0)

SWEP.MovingPos =  Vector(-0, -0, -0)
SWEP.MovingAng =  Angle(0, 0, 0)
SWEP.MovingMidPoint = {
    Pos = Vector(0, -3, 0),
    Ang = Angle(0, -0, 0)
}

SWEP.CrouchPos = Vector(0.0, -1.5, -1.0)
SWEP.CrouchAng = Angle(-0, -1, -15)

SWEP.SprintVerticalOffset = false -- Moves vm when looking up/down while sprinting (set to false if gun clips into camera)
SWEP.ReloadNoSprintPos = true -- No sprintpos during reloads
SWEP.SprintPos = Vector(-0, -1.5, 2) 
SWEP.SprintAng = Angle(-0, -0, -0)
SWEP.SprintMidPoint = {
    Pos = Vector(-0, -0, -0),
    Ang = Angle(0, 0, -0)
}

SWEP.NearWallPos = Vector(-0, -2, 0.0)
SWEP.NearWallAng = Angle(0, -5, -5) 

SWEP.CustomizeAng = Angle(90, -30, 0)
SWEP.CustomizePos = Vector(19, 45, 11)
SWEP.CustomizeRotateAnchor = Vector(18, -1, -9)

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
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.					 
SWEP.NoShellEject = false
SWEP.NoShellEjectManualAction = false -- Don't eject shell while cycling

SWEP.ShellModel = "models/shells/shell_762nato.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

SWEP.ShellEffectCount = 1
SWEP.ShellSmoke = true
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, -0, 0)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellPitch = 100 -- for shell sounds
SWEP.ShellSounds = ARC9.ShellSoundsTable
SWEP.RicochetSounds = ARC9.RicochetSounds

-- Muzzle Flash -----------------------------------------------------------------------------------------
SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.AfterShotQCA = 1 -- QC Attachment that controls after shot particle.

SWEP.NoMuzzleEffect = false -- Disable muzzle effect entirely
SWEP.NoFlash = false -- Disable light flash

SWEP.MuzzleParticle = { "muzzleflash_FAMAS" } -- m79_smoke_c m79_shockwave
SWEP.AfterShotParticle = "barrel_smoke"

-- SWEP.ImpactEffect = "electrical_arc_01_cp0"
-- SWEP.ImpactDecal = "SmallScorch"
-- SWEP.ImpactSound = "scpsl_disruptor_impact"

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerFinalMag = 0 -- The last X bullets in a magazine are all tracers
SWEP.TracerEffect = "ARC9_tracer" -- The effect to use for hitscan tracers
SWEP.TracerColor = Color(255, 255, 220) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.
SWEP.TracerSize = 2

-- Camera ------------------------------------------------------------------------------------------------
SWEP.CamQCA = 4 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult = nil -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng = Angle(0, 0, 0)

SWEP.BobSprintMult = 0.3 -- 
SWEP.BobWalkMult = 1.5 -- same but for all non sprint actions

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}
SWEP.HideBones = {
"Magazine2",
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               = { "scpsl_A7_fire1" }
-- SWEP.ShootSoundSilenced       = { "scpsl_FSP9_firesilenced" } 

SWEP.DryFireSound = ""

SWEP.FiremodeSound = ""

SWEP.EnterSightsSound = "scpsl_A7_adsin"
SWEP.ExitSightsSound = "scpsl_A7_adsout"

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0"

SWEP.AttachmentElements = {
}

SWEP.Attachments = {
	{
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "main",
        Pos = Vector(0.78, -1.8, -1.9),
		Ang = Angle(90, 0, -90),
		Icon_Offset = Vector(-0, 0.0, 0.0),
		CosmeticOnly = true,
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = false -- Instantly go to idle_sprint instead of playing enter_sprint.
SWEP.NoFireDuringSighting = true

SWEP.Animations = {
    ["idle"] = {
        Source = {"idle"},
    },
    ------------------------------------------------ Sights
	["enter_sights"] = {
        Source = {"ads_in"},
    },
	["idle_sights"] = {
        Source = {"ads_idle"},
    },
	["exit_sights"] = {
        Source = {"ads_exit"},
    },
    --------------------------------------------------- Fire
    ["fire"] = {
        Source = {"shoot_1", "shoot_2", "shoot_3"},
    },
	["fire_sights"] = {
        Source = {"ads_fire"},
		Time = 0.2,
    },
    --------------------------------------------------- Draw & Holster
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.9,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_a7_boltforward", t = 0 / 30},
			{s = "scpsl_a7_boltback", t = 15 / 30},
        },
    },
    ["draw"] = {
        Source = {"equip"},
		Time = 1.1,
        MinProgress = 0.55,
        FireASAP = true,
		EventTable = {
            {s = "scpsl_A7_equip", t = 0 / 30},
        },
    },
	["holster"] = {
        Source = {"equip"},
        Time = 0.25,
		Reverse = true,
    },
    --------------------------------------------------- Reload
    ["reload"] = {
        Source = {"reload"},
		Time = 3.5,
		DumpAmmo = false,
        MinProgress = 0.6,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_a7_startreload", t = 0 / 30},
		    {s = "scpsl_a7_magout", t = 6 / 30},
			{s = "scpsl_a7_inspect2", t = 25 / 30},
			{s = "scpsl_a7_magin", t = 48 / 30},
			{s = "scpsl_a7_inspect3", t = 72 / 30},
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
		Time = 4.5,
		DumpAmmo = false,
        MinProgress = 0.77,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_a7_startreload", t = 0 / 30},
		    {s = "scpsl_a7_magout", t = 18 / 30},
			{s = "scpsl_a7_inspect2", t = 35 / 30},
			{s = "scpsl_a7_magin", t = 55 / 30},
			{s = "scpsl_a7_boltforward", t = 75 / 30},
			{s = "scpsl_a7_boltback", t = 89 / 30},
        },
    },
	-- ["load"] = {
        -- Source = {"load_fmj"},
        -- MinProgress = 0.7,
        -- FireASAP = false,
		-- EventTable = {
		    -- {s = "scpsl_FRMG0_inspect_fmj_3", t = 0 / 30},
			-- {s = "scpsl_FRMG0_magin_fmj", t = 20 / 30},
			-- {s = "scpsl_FRMG0_magtap", t = 30 / 30},
			-- {s = "scpsl_crossvec_boltback", t = 55 / 30},
			-- {s = "scpsl_crossvec_boltforward", t = 62 / 30},
        -- },
    -- },
	-- ["unload"] = {
        -- Source = {"unload_fmj"},
        -- MinProgress = 0.7,
        -- FireASAP = false,
		-- EventTable = {
		    -- {s = "scpsl_FRMG0_inspect_fmj_2", t = 0 / 30},
		    -- {s = "scpsl_FRMG0_magout_fmj", t = 14 / 30},
			-- {s = "scpsl_FRMG0_magdrop_fmj", t = 33 / 30},
			-- {s = "scpsl_crossvec_boltback", t = 45 / 30},
			-- {s = "scpsl_crossvec_boltforward", t = 52 / 30},
        -- },
    -- },
    --------------------------------------------------- Tacticool
    ["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.01,
		Time = 6,
        FireASAP = true,
		EventTable = {
            {s = "scpsl_a7_inspect1", t = 0 / 30},
			{s = "scpsl_a7_inspect2", t = 80 / 30},
			{s = "scpsl_a7_inspect3", t = 140 / 30},
        },
    },
}