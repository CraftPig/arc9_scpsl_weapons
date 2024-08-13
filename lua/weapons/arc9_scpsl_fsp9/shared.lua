AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_fsp9")

SWEP.Category = "ARC9 - SCP:SL"
SWEP.SubCategory = "Foundation Firearms"

SWEP.AdminOnly = false
SWEP.PrintName = "FSP-9"
SWEP.TrueName = "MP7A1"

SWEP.Slot = 2

SWEP.Class = "Submachine Gun"
SWEP.Trivia = {
    Manufacturer = "Foundation Gunworks",
    Caliber = "9x19mm",
    Weight = "2.45 kg",
    -- Country = "Germany",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: Secret Laboratory | Northwood Studios", 
}
SWEP.Description = [[A compact 9mm personal defense weapon; the standard issue firearm for all Site-02’s on-site security. It is highly versatile, as its grip and collapsing stock allows the weapon to be adapted to any situation. Though originally designed for its own armor-piercing cartridge, the guns were retrofitted to 9mm to make use of the surplus of ammunition.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/scpsl/fsp9/v_fsp9.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-8, 3, -5.5), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(-16, 1, -1), -- arc9_tpik 1, you can make cool poses with it
     TPIKAng = Angle(0, -5, 180),
     Scale = 1
 }
 -- TPIK -----------------------------------------------------------------------------------------------
SWEP.NoTPIK = false
SWEP.TPIKnolefthand = false
SWEP.NoTPIKVMPos = false
 -- Hold Types -----------------------------------------------------------------------------------------
SWEP.HoldType = "revolver"
SWEP.HoldTypeSprint = "revolver"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "revolver"
SWEP.HoldTypeCustomize = "magic"
SWEP.HoldTypeBlindfire = "revolver"
SWEP.HoldTypeNPC = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC -- While in TPIK only -- Tip: if you dont want any additional anim put ACT_HL2MP_GESTURE_RELOAD_MAGIC here instead!
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2 -- Non TPIK
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_FLINCH_PHYSICS
SWEP.NonTPIKAnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

-------------------------------------------------------------------------------------------------------
-- Weapon Stats ---------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.DamageMax = 22.3 -- Damage done at point blank range --
SWEP.DamageMin = 5.5 -- Damage done at maximum range
SWEP.DamageRand = nil -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Num = 1 -- Number of bullets to shoot
SWEP.DamageType = DMG_BULLET

SWEP.ImpactForce = 1 -- Force that bullets apply on hit
SWEP.ArmorPiercing = 0.6
SWEP.Penetration = 12 -- Units of wood that can be penetrated by this gun. -- 19min to pen two targets. -- ArmorPiercing *2
SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false
SWEP.RangeMin = 400 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 9449 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.PhysBulletMuzzleVelocity = 12220 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

SWEP.RPM = 690
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
SWEP.Ammo = "SMG1" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 4

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread = 0.045

SWEP.SpreadAddMove = 0.01 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.04 * 6 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = nil -- Applied when not sighted.
SWEP.SpreadAddSighted = -0.02 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = -0.005 -- Applied when crouching.

SWEP.SpreadAddRecoil = 0.01 -- Applied per unit of recoil.

-- Recoil ---------------------------------------------------------------------------------------------

SWEP.Recoil = 1 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.5
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 1  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 1.5
SWEP.RecoilRandomSide = 2
SWEP.RecoilRandomSideAddSighted = 0

SWEP.RecoilAddCrouch = -0.05

SWEP.RecoilDissipationRate = 15 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.0 -- How long the gun must go before the recoil pattern starts to reset.
SWEP.RecoilFullResetTime = 2 -- How long recoil must stay after last shoot
SWEP.RecoilPerShot = 0.1

SWEP.RecoilAutoControl = 0 

---- Weapon Visual Recoil
SWEP.UseVisualRecoil = true
SWEP.PhysicalVisualRecoil = false -- Visual recoil actually affects your aim point.
SWEP.VisualRecoil = 0.05

SWEP.VisualRecoilCenter = Vector(0, -5, 20) -- The "axis" of visual recoil. Where your hand is.

SWEP.VisualRecoilUp = 10.0 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilUpAddSighted = -25.0
SWEP.VisualRecoilSide = 0 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilSideAddSighted = 2
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
SWEP.AimDownSightsTime = 0.2 -- How long it takes to go from hip fire to aiming down sights.
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
SWEP.ViewModelFOVBase = 70

SWEP.IronSights = {
    Pos = Vector(-2.57, -3, 0.65),
    Ang = Angle(-1.3, -0.1, 1.3),
    Magnification = 1.25,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-5, -15, 1),
    Ang = Angle(0, 0, -30),
}

SWEP.ActivePos = Vector(-0, 1.5, 0) 
SWEP.ActiveAng = Angle(0, -2, 0)

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
SWEP.SprintPos = Vector(-0, 0.5, 0) 
SWEP.SprintAng = Angle(-0, -2, -0)
SWEP.SprintMidPoint = {
    Pos = Vector(-0, -0, -0),
    Ang = Angle(0, 0, -0)
}

SWEP.NearWallPos = Vector(-0, -2, 0.0)
SWEP.NearWallAng = Angle(0, -5, -5) 

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(11, 38, 9)
SWEP.CustomizeRotateAnchor = Vector(11, -3, -5)

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

SWEP.ShellModel = "models/shells/shell_9mm.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

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
SWEP.TracerSize = 3

-- Camera ------------------------------------------------------------------------------------------------
SWEP.CamQCA = 3 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult = nil -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng = Angle(0, 0, 0)

SWEP.BobSprintMult = 0.15 -- 
SWEP.BobWalkMult = 1 -- same but for all non sprint actions

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}
SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               = { "scpsl_FSP9_fire" }
-- SWEP.LayerSound               = { "" }
-- SWEP.ShootSoundIndoor         = { "" }
-- SWEP.LayerSoundIndoor         = { "" }
SWEP.ShootSoundSilenced       = { "scpsl_FSP9_firesilenced" } 
-- SWEP.ShootSoundSilencedIndoor = { "" }
-- SWEP.LayerSoundSilenced       = { "" }
-- SWEP.LayerSoundSilencedIndoor = { "" } 

SWEP.DryFireSound = ""

SWEP.FiremodeSound = ""

SWEP.EnterSightsSound = "scpsl_FSP9_adsin"
SWEP.ExitSightsSound = "scpsl_FSP9_adsout"

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Hook_TranslateAnimation = function (self, anim)
    local attached = self:GetElements()
	
	if attached["fsp9_stock_ext"] then
	    if anim == "ready"  then
            return "ready_stock"
	    elseif anim == "draw" then
            return "draw_stock"
	    end
	end
end

SWEP.DefaultBodygroups = "0"

SWEP.AttachmentElements = {
    ["fsp9_iron"] = { Bodygroups = {{4,0},},},
	["fuck"] = { Bodygroups = {{4,1},},},
	["fsp9_stock"] = { Bodygroups = {{6,0},},},
	["fsp9_stock_ext"] = { Bodygroups = {{6,1},},},
	["fsp9_stock_none"] = { Bodygroups = {{6,2},},},
	["fsp9_grip"] = { Bodygroups = {{10,1},},},
	["fsp9_grip_default"] = { Bodygroups = {{10,0},},},
}

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
		Bone = "main",
        Category = { "muzzle_scp5k", "muzzle", "cod2019_muzzle" },
		Pos = Vector(-0, -0.9, -9),
        Ang = Angle(-90, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
	{
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = {"scpsl_fsp9_grip", "grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
        Bone = "main",
		InstalledElements = {"fsp9_grip"},
		UnInstalledElements = { "fsp9_grip_default"},
		Icon_Offset = Vector(0, 0, 3),
        Pos = Vector(0, 0, -6.7),
        Ang = Angle(-90, -90, 0),
		Scale = 1.1,
    },
	{
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
        Bone = "main",
		Icon_Offset = Vector(0, 0, 0),
        Pos = Vector(-0.85, -0.9, -5.8),
        Ang = Angle(-90, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "main",
        Category = { "scpsl_fsp9_optic", "scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"fuck"},
		CorrectiveAng = Angle(-1.65, 1.2, 0),
		Pos = Vector(-0, -2.8, -0),
        Ang = Angle(-90, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    -- {
        -- PrintName = "Magazine",
		-- Bone = "Magazine",
        -- Category = "scpsl_frmg0_drum",
		-- UnInstalledElements = {"frmg0_drum_fmj"},
		-- Pos = Vector(-0, 0, -0),
        -- Ang = Angle(0, 90, -0),
        -- Icon_Offset = Vector(0, 0, 0),
    -- },
	{
        PrintName = "Ammo",
        Bone = "bullet",
        Category = "go_ammo",
        Pos = Vector(0, -1, 0),
        Ang = Angle(0, 0, 0),
    },
	{
        PrintName = "Stock",
        Category = {"scpsl_fsp9_stock"},
        Bone = "main",
		InstalledElements = {"fsp9_stock_none"},
		UnInstalledElements = { "fsp9_stock"},
        Pos = Vector(-0, -1.5, 6.8),
        Ang = Angle(-90, 90, -0),
        Icon_Offset = Vector(-0, 0, 0),
		Scale = 1,
    },
	{
        PrintName = "Cosmetic",
        Category = {"universal_camo"},
        CosmeticOnly = true,
    },
    { 
        PrintName = "Charm",
        CosmeticOnly = true,
        Category = "charm",
        Bone = "main",
        Pos = Vector(-0.7, -4.3, -0),
		Ang = Angle(-90, 90, -0),
		Icon_Offset = Vector(0, 0, 0),
		Scale = 1,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "weapon",
        Pos = Vector(-0.7, -4, 0.2),
		Ang = Angle(-0, 90, 0),
		Icon_Offset = Vector(-4.85, 0.05, 2.3),
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
	["enter_sights"] = {
        Source = {"basepose"},
    },
	["idle_sights"] = {
        Source = {"basepose"},
    },
	["exit_sights"] = {
        Source = {"basepose"},
    },
    --------------------------------------------------- Fire
    ["fire"] = {
        Source = {"shoot"},
		InstantIdle = true,
    },
	["fire_sights"] = {
        Source = {"shoot_single"},
    },
    --------------------------------------------------- Draw & Holster
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.9,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_FSP9_equip", t = 0 / 30},
            {s = "scpsl_FSP9_handlepull", t = 8 / 30},
			{s = "scpsl_FSP9_handlerelease", t = 12 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["ready_stock"] = {
        Source = {"ready_stock"},
		Time = 2.5,
        MinProgress = 0.9,
        FireASAP = true,
		EventTable = {
		    {s = "scpsl_FSP9_equip", t = 0 / 30},
            {s = "scpsl_FSP9_handlepull", t = 8 / 30},
			{s = "scpsl_FSP9_handlerelease", t = 12 / 30},
			{s = "scpsl_FSP9_stockextend", t = 21 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.5,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["draw"] = {
        Source = {"draw"},
		Time = 1.1,
        MinProgress = 0.55,
        FireASAP = true,
		EventTable = {
            {s = "scpsl_FSP9_equip", t = 0 / 30},
        },
    },
	["draw_stock"] = {
        Source = {"draw_stock"},
		Time = 2,
        MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
            {s = "scpsl_FSP9_equip", t = 0 / 30},
			{s = "scpsl_FSP9_stockextend", t = 12 / 30},
			{s = "scpsl_FSP9_inspect_1", t = 28 / 30},
        },
    },
	["holster"] = {
        Source = {"draw"},
        MinProgress = 0.5,
        FireASAP = true,
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
		    {s = "scpsl_FSP9_inspect_1", t = 0 / 30},
		    {s = "scpsl_FSP9_magout", t = 12 / 30},
			{s = "scpsl_FSP9_inspect_2", t = 25 / 30},
			{s = "scpsl_FSP9_magin", t = 48 / 30},
			{s = "scpsl_FSP9_inspect_3", t = 79 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.85,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.99,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["reload_empty"] = {
        Source = {"reload_empty"},
		Time = 4.5,
		DumpAmmo = false,
        MinProgress = 0.77,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_FSP9_inspect_1", t = 0 / 30},
		    {s = "scpsl_FSP9_magout", t = 12 / 30},
			{s = "scpsl_FSP9_inspect_2", t = 25 / 30},
			{s = "scpsl_FSP9_magin", t = 45 / 30},
			{s = "scpsl_FSP9_boltrelease", t = 93 / 30},
			{s = "scpsl_FSP9_inspect_2", t = 105 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.2,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.8,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
    },
	["load"] = {
        Source = {"load_fmj"},
        MinProgress = 0.7,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_FRMG0_inspect_fmj_3", t = 0 / 30},
			{s = "scpsl_FRMG0_magin_fmj", t = 20 / 30},
			{s = "scpsl_FRMG0_magtap", t = 30 / 30},
			{s = "scpsl_crossvec_boltback", t = 55 / 30},
			{s = "scpsl_crossvec_boltforward", t = 62 / 30},
        },
    },
	["unload"] = {
        Source = {"unload_fmj"},
        MinProgress = 0.7,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_FRMG0_inspect_fmj_2", t = 0 / 30},
		    {s = "scpsl_FRMG0_magout_fmj", t = 14 / 30},
			{s = "scpsl_FRMG0_magdrop_fmj", t = 33 / 30},
			{s = "scpsl_crossvec_boltback", t = 45 / 30},
			{s = "scpsl_crossvec_boltforward", t = 52 / 30},
        },
    },
    --------------------------------------------------- Tacticool
    ["inspect"] = {
        Source = {"inspect"},
        MinProgress = 0.1,
		Time = 6,
        FireASAP = false,
		EventTable = {
            {s = "scpsl_FSP9_inspect_1", t = 0 / 30},
			{s = "scpsl_FSP9_inspect_2", t = 60 / 30},
			{s = "scpsl_FSP9_inspect_3", t = 130 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.1,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

SWEP.Hook_Deploy = function(self)
	self.NoClip = false
	self.UnloadTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
return end

SWEP.Hook_Think = function(self) 
local owner = self:GetOwner() 
local GetCurrentClip = self:GetOwner():GetActiveWeapon():Clip1()

if SERVER then
	if (owner:KeyDown(IN_WALK) and owner:KeyDown(IN_USE)) and self.UnloadTimer <= CurTime() and GetCurrentClip ~= 0 then
		
		self:PlayAnimation("unload", 1, true)
	   
	    self.UnloadTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 6
		self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration()) 
		owner:GetActiveWeapon():SetClip1(0)
		owner:GiveAmmo(GetCurrentClip, "Pistol", true) 
		
		self.NoClip = true
	end
end

return end

SWEP.Hook_PostReload = function(self) 
    if self.NoClip == true then
		self:PlayAnimation("load", 1, true)
	end
end

SWEP.Hook_EndReload = function(self) 
    if self.NoClip == true then
		self.NoClip = false
		
		self:PlayAnimation("idle", 1, true)
    end
end