AddCSLuaFile()

-------------------------------------------------------------------------------------------------------
-- Define Base ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.Base = "arc9_base"
SWEP.Spawnable = true

-------------------------------------------------------------------------------------------------------
-- Hud and Spawn Menu Elements ------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.CustomSelectIcon = Material("vgui/hud/vgui_shotgun")

SWEP.Category = "ARC9 - SCP: SL"
SWEP.SubCategory = "Chaos Insurgency Firearms"

SWEP.AdminOnly = false
SWEP.PrintName = "Shotgun"
SWEP.TrueName = "DP-12 "

SWEP.Slot = 3

SWEP.Class = " 	Pump-action Shotgun"
SWEP.Trivia = {
    Manufacturer = "Standard BGT. CO.",
    Caliber = "12/70 Buckshot",
    Weight = "3.95 kg",
    -- Country = "Germany",
}
SWEP.Credits = { 
    Author = "Craft_Pig",
	Assets = "SCP: Secret Laboratory | Northwood Studios", 
}
SWEP.Description = [[A specialist Insurgency shotgun. The weapon is 12-gauge, double-barrelled, and high-capacity. Its users work in a quick, calculated, and efficient manner — they incapacitate, execute, and move on to the next target.]]

-------------------------------------------------------------------------------------------------------
-- Viewmodel & Worldmodel -----------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ViewModel = "models/weapons/arc9/scpsl/shotgun/v_shotgun.mdl"
SWEP.UseHands = true

SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.MirrorVMWM = true 
 SWEP.WorldModelOffset = {
     Pos = Vector(-4.5, 3, -8), -- non tpik (while on ground, on npc etc)
     Ang = Angle(-5, 0, 180),
     TPIKPos = Vector(2, 8, -12), -- arc9_tpik 1, you can make cool poses with it
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
SWEP.DamageMax = 8.25 -- Damage done at point blank range --
SWEP.DamageMin = 2 -- Damage done at maximum range
SWEP.DamageRand = nil -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Num = 8 -- Number of bullets to shoot
SWEP.DamageType = DMG_BULLET

SWEP.ImpactForce = 1 -- Force that bullets apply on hit
SWEP.ArmorPiercing = 0.77
SWEP.Penetration = 10 -- Units of wood that can be penetrated by this gun. -- 19min to pen two targets. -- ArmorPiercing *2
SWEP.PenetrationDelta = 0.1 -- The damage multiplier after all penetration distance is spent.

SWEP.AlwaysPhysBullet = false
SWEP.NeverPhysBullet = false
SWEP.RangeMin = 400 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 5118 -- In Hammer units, how far bullets can travel before dealing DamageMin.
SWEP.Distance = 33000 -- In Hammer units, how far bullets can travel, period.

SWEP.PhysBulletMuzzleVelocity = 15560 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

SWEP.RPM = 241
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

SWEP.ManualActionChamber = 2 -- How many shots we go between needing to cycle again.
SWEP.ManualAction = true -- Pump/bolt action. Play the "cycle" animation after firing, when the trigger is released.
SWEP.ManualActionNoLastCycle = false -- Do not cycle on the last shot.
SWEP.ManualActionEjectAnyway = false -- Eject a shell when firing anyway.
SWEP.EjectDelay = 0 -- When eject shell on cycle (pretty dumb, better'd just use EjectAt)

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
SWEP.Ammo = "buckshot" -- What ammo type this gun uses.

SWEP.ChamberSize = 2 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 14 -- Self-explanatory.
SWEP.SupplyLimit = 2

SWEP.AmmoPerShot = 1 -- Ammo to use per shot
SWEP.InfiniteAmmo = false -- Weapon does not take from reserve ammo
SWEP.BottomlessClip = false -- Weapon never has to reload

-- Spread ---------------------------------------------------------------------------------------------
SWEP.Spread = 0.045

SWEP.SpreadAddMove = 0.02 -- Applied when speed is equal to walking speed.
SWEP.SpreadAddMidAir = 0.055 * 6 -- Applied when not touching the ground.
SWEP.SpreadAddHipFire = nil -- Applied when not sighted.
SWEP.SpreadAddSighted = -0.005 -- Applied when sighted. Can be negative.
SWEP.SpreadAddBlindFire = nil -- Applied when blind firing.
SWEP.SpreadAddCrouch = -0.005 -- Applied when crouching.

SWEP.UseDispersion = true -- Use this for shotguns - Additional random angle to spread, same for each pellet
SWEP.DispersionSpread = 0.03 -- SWEP.Spread will be clump spread, and this will be dispersion of clump

SWEP.SpreadAddRecoil = 0.01 -- Applied per unit of recoil.

-- Recoil ---------------------------------------------------------------------------------------------

SWEP.Recoil = 1 -- General recoil multiplier
SWEP.RecoilAddSighted = -0.5
SWEP.RecoilAutoControl = 0.0 -- Multiplier for automatic recoil control.

SWEP.RecoilUp = 3  -- Multiplier for vertical recoil
SWEP.RecoilSide = 0  -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 1
SWEP.RecoilRandomSide = 0.5
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

SWEP.VisualRecoilUp = 60.0 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilUpAddSighted = -25.0
SWEP.VisualRecoilSide = 2 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilSideAddSighted = -2
SWEP.VisualRecoilRoll = 200.0 -- Roll tilt for visual recoil.

SWEP.VisualRecoilPunch = 100 -- How far back visual recoil moves the gun.
SWEP.VisualRecoilPunchMultSights = -1

SWEP.VisualRecoilDampingConst = 80 -- How spring will be visual recoil, 120 is default
SWEP.VisualRecoilSpringMagnitude = 8
SWEP.VisualRecoilSpringPunchDamping = 8 -- ehh another val for "eft" recoil, 6 is default

-- Weapon Handling ------------------------------------------------------------------------------------
SWEP.BarrelLength = 35 -- Distance for nearwalling
SWEP.PushBackForce = 0 -- Push the player back when shooting.

SWEP.Sway = 0 -- How much the gun sways.
SWEP.SwayAddMidAir = 0.0 -- How much the gun sways.

SWEP.HoldBreathTime = 5 -- time that you can hold breath for, set to 0 to disable holding breath
SWEP.RestoreBreathTime = 10
SWEP.AimDownSightsTime = 0.23 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.0 -- How long it takes to go from sprinting to being able to fire.

SWEP.ShootWhileSprint = true
SWEP.HasSights = true
SWEP.CanFireUnderwater = false -- This weapon can shoot while underwater
SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.
SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.CanLean = true

SWEP.ShotgunReload = true
SWEP.ShotgunReloadIncludesChamber = true -- Shotguns reload to full capacity, assuming that the chamber is loaded as part of the animation.

SWEP.Speed = 1
SWEP.SpeedMult = 0.97
SWEP.SpeedMultSights = 0.75
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
    Pos = Vector(-2.125, -7, 2.665),
    Ang = Angle(-1.1, -1.1, 0),
    Magnification = 1.1,
    CrosshairInSights = false,
    Blur = true, 
}
SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(-0, -10, 1),
    Ang = Angle(0, 0, -5),
}

SWEP.ActivePos = Vector(-0, 0, 1.5) 
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
SWEP.SprintPos = Vector(-0, -1, 1.5) 
SWEP.SprintAng = Angle(-0, -0, -0)
SWEP.SprintMidPoint = {
    Pos = Vector(-0, -0, -0),
    Ang = Angle(0, 0, -0)
}

SWEP.NearWallPos = Vector(-0, -2, 0.0)
SWEP.NearWallAng = Angle(0, -5, -5) 

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(9, 40, 8)
SWEP.CustomizeRotateAnchor = Vector(9, -2, -5)

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
SWEP.NoShellEjectManualAction = true -- Don't eject shell while cycling

SWEP.ShellModel = "models/shells/shell_556.mdl" -- shell_12gauge, shell_338mag, shell_556, shell_57, shell_762nato, shell_9mm

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

SWEP.MuzzleParticle = { "muzzleflash_shotgun" } -- m79_smoke_c m79_shockwave
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
SWEP.CamQCA = 1 -- QC Attachment for camera movement.

SWEP.CamQCA_Mult = nil -- Intensity for QC camera movement.
SWEP.CamQCA_Mult_ADS = nil -- Intensity for QC camera movement in ADS.
SWEP.CamCoolView = true -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.
SWEP.CamOffsetAng = Angle(0, 0, 0)

SWEP.BobSprintMult = 0.3 -- 
SWEP.BobWalkMult = 1.25 -- same but for all non sprint actions

-- Bones -------------------------------------------------------------------------------------------------
SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
}
SWEP.HideBones = {
}

-------------------------------------------------------------------------------------------------------
-- Sounds ---------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.ShootSound               = { "scpsl_Shotgun_fire1", "scpsl_Shotgun_fire2" }

SWEP.DryFireSound = ""

SWEP.FiremodeSound = ""

SWEP.EnterSightsSound = "scpsl_Shotgun_adsin"
SWEP.ExitSightsSound = "scpsl_Shotgun_adsout"

-------------------------------------------------------------------------------------------------------
-- Attachments ----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------

SWEP.DefaultBodygroups = "0000000000000"

SWEP.AttachmentElements = {
    ["shotgun_grip"] = { Bodygroups = {{3,0},},},
	["shotgun_grip_none"] = { Bodygroups = {{3,1},},},
    ["shotgun_iron"] = { Bodygroups = {{4,0},},},
	["shotgun_iron_none"] = { Bodygroups = {{4,1},},},
	["shotgun_muzzle_barrel"] = { Bodygroups = {{5,1},},},
	["shotgun_muzzle_muzzle"] = { Bodygroups = {{5,2},},},
	-- ["e11_rail"] = { Bodygroups = {{3,0},},},
	-- ["e11_front_1"] = { Bodygroups = {{4,0},},},
	-- ["e11_front_2"] = { Bodygroups = {{4,1},},},
    -- ["e11_sight"] = { Bodygroups = {{5,0},},},
	-- ["e11_sight_none"] = { Bodygroups = {{5,1},},},
	-- ["e11_rail_long"] = {
        -- Bodygroups = {
            -- {3,1},
        -- },
    -- AttPosMods = { [1] = { Pos = Vector(-0, -1.2, -22.25), } }
    -- },
}

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
		Bone = "main",
        Category = { "scpsl_shotgun_muzzle" },
		Pos = Vector(-0, -2.4, -12),
        Ang = Angle(-90, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
	{
        PrintName = "Grip",
        DefaultAttName = "Default",
        Category = {"grip","fas_ubgl", "scp5k_foregrip","cod2019_grip"},
        Bone = "pump",
		InstalledElements = {"shotgun_grip_none"},
		Icon_Offset = Vector(0, 0, 3),
        Pos = Vector(0, -0.15, 0.15),
        Ang = Angle(-90, 0, 90),
		Scale = 1,
    },
	{
        PrintName = "Tactical",
        DefaultAttName = "Default",
        Category = {"cod2019_tac","csgo_tac", "scp5k_tactical"},
        Bone = "main",
		Icon_Offset = Vector(0, 0, 0),
        Pos = Vector(-1.2, -1.8, -8.5),
        Ang = Angle(-90, 0, 0),
		Scale = 1,
    },
    {
        PrintName = "Optic",
		Bone = "main",
        Category = { "scpsl_shotgun_optic", "scp5k_optic", "csgo_optic", "cod2019_optic" },
		InstalledElements = {"shotgun_iron_none"},
		CorrectiveAng = Angle(-1.25, 0.97, 0),
		Pos = Vector(-0, -3.5, -3),
        Ang = Angle(-90, 0, -90),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Trigger",
		Bone = "main",
        Category = "scpsl_shotgun_trigger",
		Pos = Vector(-0, 0, -0),
        Ang = Angle(0, 90, -0),
        Icon_Offset = Vector(-2.3, 0, 3.3),
    },
	{
        PrintName = "Ammo",
        Bone = "main",
        Category = "go_ammo_sg",
        Pos = Vector(0, -1.2, 6),
        Ang = Angle(0, 0, 0),
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
        Pos = Vector(-0.7, 0.4, 1),
		Ang = Angle(-90, 90, -0),
		Icon_Offset = Vector(0, 0, -1),
		Scale = 0.9,
    },
    { 
        PrintName = "Stats",
        Category = "killcounter",
        Bone = "main",
        Pos = Vector(-0.93, -0.9, 1.9),
		Ang = Angle(-90, 90, 0),
		Icon_Offset = Vector(0, 0.0,1.0),
		CosmeticOnly = true,
    },
}

-------------------------------------------------------------------------------------------------------
-- Animations -----------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------
SWEP.InstantSprintIdle = false -- Instantly go to idle_sprint instead of playing enter_sprint.
SWEP.NoFireDuringSighting = false

SWEP.Hook_TranslateAnimation = function (self, anim)

    if self:Clip1() == 15 then
	    if anim == "reload_insert"  then
            return "reload_insert_alt"
		end
	end
end

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
    },
	["cycle"] = {
        Source = {"pump"},
		MinProgress = 0.8,
        FireASAP = true,
		EventTable = {
			{s = "scpsl_Shotgun_pumpin", t = 0 / 30},
			{s = "scpsl_Shotgun_pumpout", t = 8 / 30},
        },
    },
    --------------------------------------------------- Draw & Holster
	["ready"] = {
        Source = {"ready"},
        MinProgress = 0.9,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_Shotgun_equip", t = 0 / 30},
			{s = "scpsl_Shotgun_pumpin", t = 10 / 30},
			{s = "scpsl_Shotgun_pumpout", t = 18 / 30},
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
                t = 0.6,
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
		Time = 0.9,
        MinProgress = 0.6,
        FireASAP = true,
		EventTable = {
            {s = "scpsl_Shotgun_equip", t = 0 / 30},
        },
    },
	["holster"] = {
        Source = {"draw"},
        Time = 0.2,
		Reverse = true,
    },
    --------------------------------------------------- Reload
    ["reload_start"] = {
        Source = {"reload_in"},
		DumpAmmo = false,
        MinProgress = 0.6,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_Shotgun_transition", t = 0 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
    },
	["reload_insert"] = {
        Source = {"load_two"},
        MinProgress = 0.6,
        FireASAP = false,
		RestoreAmmo = 1,
		EventTable = {
		    {s = "scpsl_Shotgun_searching", t = 0 / 30},
			{s = "scpsl_Shotgun_shell1", t = 0 / 30},
		    {s = "scpsl_Shotgun_shell2", t = 13 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
    },
	["reload_insert_alt"] = {
        Source = {"load_one"},
        MinProgress = 0.6,
        FireASAP = false,
		EventTable = {
		    {s = "scpsl_Shotgun_searching", t = 0 / 30},
		    {s = "scpsl_Shotgun_shell1", t = 0 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
        },
    },
	["reload_finish"] = {
        Source = {"reload_in"},
		Reverse = true,
		EventTable = {
		    {s = "scpsl_Shotgun_transition", t = 0 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 0,
                rhik = 1
            },
            {
                t = 1,
                lhik = 0,
                rhik = 1
            },
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
            {s = "scpsl_Shotgun_inspect1", t = 0 / 30},
			{s = "scpsl_Shotgun_inspect2", t = 70 / 30},
			{s = "scpsl_Shotgun_inspect3", t = 140 / 30},
        },
		IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 0
            },
            {
                t = 0.05,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.9,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.95,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

-- SWEP.Hook_Deploy = function(self)
	-- self.NoClip = false
	-- self.UnloadTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration()
-- return end

-- SWEP.Hook_Think = function(self) 
-- local owner = self:GetOwner() 
-- local GetCurrentClip = self:GetOwner():GetActiveWeapon():Clip1()

-- if SERVER then
	-- if (owner:KeyDown(IN_WALK) and owner:KeyDown(IN_USE)) and self.UnloadTimer <= CurTime() and GetCurrentClip ~= 0 then
		
		-- self:PlayAnimation("unload", 1, true)
	   
	    -- self.UnloadTimer = CurTime() + self.Owner:GetViewModel():SequenceDuration() + 6
		-- self:SetNextPrimaryFire(CurTime() + self.Owner:GetViewModel():SequenceDuration()) 
		-- owner:GetActiveWeapon():SetClip1(0)
		-- owner:GiveAmmo(GetCurrentClip, "Pistol", true) 
		
		-- self.NoClip = true
	-- end
-- end

-- return end

-- SWEP.Hook_PostReload = function(self) 
    -- if self.NoClip == true then
		-- self:PlayAnimation("load", 1, true)
	-- end
-- end

-- SWEP.Hook_EndReload = function(self) 
    -- if self.NoClip == true then
		-- self.NoClip = false
		
		-- self:PlayAnimation("idle", 1, true)
    -- end
-- end