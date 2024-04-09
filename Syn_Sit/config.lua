---$$$$$$\ $$\     $$\ $$\   $$\  $$$$$$\   $$$$$$\  $$$$$$$\  $$$$$$\ $$$$$$$\ $$$$$$$$\  $$$$$$\  
--$$  __$$\\$$\   $$  |$$$\  $$ |$$  __$$\ $$  __$$\ $$  __$$\ \_$$  _|$$  __$$\\__$$  __|$$  __$$\ 
--$$ /  \__|\$$\ $$  / $$$$\ $$ |$$ /  \__|$$ /  \__|$$ |  $$ |  $$ |  $$ |  $$ |  $$ |   $$ /  \__|
--\$$$$$$\   \$$$$  /  $$ $$\$$ |\$$$$$$\  $$ |      $$$$$$$  |  $$ |  $$$$$$$  |  $$ |   \$$$$$$\  
---\____$$\   \$$  /   $$ \$$$$ | \____$$\ $$ |      $$  __$$<   $$ |  $$  ____/   $$ |    \____$$\ 
--$$\   $$ |   $$ |    $$ |\$$$ |$$\   $$ |$$ |  $$\ $$ |  $$ |  $$ |  $$ |        $$ |   $$\   $$ |
--\$$$$$$  |   $$ |    $$ | \$$ |\$$$$$$  |\$$$$$$  |$$ |  $$ |$$$$$$\ $$ |        $$ |   \$$$$$$  |
---\______/    \__|    \__|  \__| \______/  \______/ \__|  \__|\______|\__|        \__|    \______/ 

Config = {}
Config.TargetSytem = 'OX' -- 'QB' or 'OX'
Config.SmoothCancelSit = 32 -- // Default: w -- // https://docs.fivem.net/game-references/controls/
Config.QuickCancelSit = 58 -- // Default: G -- // https://docs.fivem.net/game-references/controls/
Config.OpenmenuWhileSitting = 203 -- // Default: SPACEBAR -- // https://docs.fivem.net/game-references/controls/
Config.StartChairCamera = 23 -- // Default: F -- // https://docs.fivem.net/game-references/controls/
Config.AllowChairCamera = true -- The Camera is usefull for times when a player cannot get a good cam angle while sitting


Config.AddHelpText = true -- display help text
Config.WhileSittingHelpText = "[W] - Stand Up    \n     [F] - Change camera   \n     [SPACEBAR] - Menu"
Config.WhileSittinginfoFunction = function() lib.showTextUI(Config.WhileSittingHelpText,{icon = 'fa-solid fa-chair'}) Citizen.SetTimeout(5000, function() if Config.WhileSittinginfoFunction_IsOpenCheck() then Config.WhileSittinginfoFunctionCancel() end end) end --or ShowHelpNotification(Config.WhileSittingHelpText) or your funtion 
Config.WhileSittinginfoFunctionCancel =  function() lib.hideTextUI() end-- 
Config.WhileSittinginfoFunction_IsOpenCheck =  function() local isOpen, text = lib.isTextUIOpen() return isOpen, text  end-- 

Config.OxContextMenuTitle = "Seat Animations " -- Title of context menu leave space at end for Concate
Config.OxContextName = 'Sit Position ' -- label of options in
Config.OxContextLabel = 'Seating Options ' -- label of options in
Config.OxTargetLabel = 'Seating Options ' 


Config.AllowHeadingChange = true -- change heading by pressing A and D 
Config.Debug = true -- commands "CreatePolyGonSeat" "SaveMyHeading" "fixchair"
--"CreatePolyGonSeat"
Config.DebugMarkerColor = vector4(150, 150, 200, 255)


Config.AnimDescriptions = { -- this is all you need to edit for translations 
    --############################################# SCENARIO DESCRIPTIONS ######################################################


	["PROP_HUMAN_SEAT_ARMCHAIR"] = { title = "Armchair Seating",  description = "Seating animation for armchairs."},
	["PROP_HUMAN_SEAT_BAR"] = { title = "Bar Seating",  description = "Seating animation for bar stools."},
	["PROP_HUMAN_SEAT_BENCH"] = { title = "Bench Seating",  description = "Seating animation for benches."},
	["PROP_HUMAN_SEAT_BENCH_FACILITY"] = { title = "Facility Bench Seating",  description = "Seating animation for facility benches."},
	["PROP_HUMAN_SEAT_BENCH_DRINK"] = { title = "Drink Bench Seating",  description = "Seating animation for benches with drinks."},
	["PROP_HUMAN_SEAT_BENCH_DRINK_FACILITY"] = { title = "Drink Facility Bench Seating",  description = "Seating animation for facility benches with drinks."},
	["PROP_HUMAN_SEAT_BENCH_DRINK_BEER"] = { title = "Beer Drink Bench Seating",  description = "Seating animation for benches with beer drinks."},
	["PROP_HUMAN_SEAT_BENCH_FOOD"] = { title = "Food Bench Seating",  description = "Seating animation for benches with food."},
	["PROP_HUMAN_SEAT_BENCH_FOOD_FACILITY"] = { title = "Facility Food Bench Seating",  description = "Seating animation for facility benches with food."},
	["PROP_HUMAN_SEAT_BUS_STOP_WAIT"] = { title = "Bus Stop Waiting Seating",  description = "Seating animation for bus stop waiting areas."},
	["PROP_HUMAN_SEAT_CHAIR"] = { title = "Chair Seating",  description = "Seating animation for chairs."},
	["PROP_HUMAN_SEAT_CHAIR_DRINK"] = { title = "Drink Chair Seating",  description = "Seating animation for chairs with drinks."},
	["PROP_HUMAN_SEAT_CHAIR_DRINK_BEER"] = { title = "Beer Drink Chair Seating",  description = "Seating animation for chairs with beer drinks."},
	["PROP_HUMAN_SEAT_CHAIR_FOOD"] = { title = "Food Chair Seating",  description = "Seating animation for chairs with food."},
	["PROP_HUMAN_SEAT_CHAIR_UPRIGHT"] = { title = "Upright Chair Seating",  description = "Seating animation for upright chairs."},
	["PROP_HUMAN_SEAT_DECKCHAIR"] = { title = "Deckchair Seating",  description = "Seating animation for deckchairs."},
	["PROP_HUMAN_SEAT_DECKCHAIR_DRINK"] = { title = "Drink Deckchair Seating",  description = "Seating animation for deckchairs with drinks."},
	["PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"] = { title = "Multiplayer Player Chair Seating",  description = "Seating animation for multiplayer player chairs."}, 
	["PROP_HUMAN_SEAT_COMPUTER"] = { title = "Computer Seating",  description = "Seating animation for computer chairs."}, 
	["PROP_HUMAN_SEAT_COMPUTER_LOW"] = { title = "Low Computer Seating",  description = "Seating animation for low computer chairs."}, 
	["PROP_HUMAN_SEAT_SEWING"] = { title = "Sewing Seating",  description = "Seating animation for sewing chairs."}, 
	["PROP_HUMAN_SEAT_STRIP_WATCH"] = { title = "Strip Watch Seating",  description = "Seating animation for strip watch areas."},
	["PROP_HUMAN_SEAT_SUNLOUNGER"] = { title = "Sunlounger Seating",  description = "Seating animation for sunloungers."},
	["WORLD_HUMAN_SEAT_LEDGE"] = { title = "Ledge Seating",  description = "Seating animation for ledges."},
	["WORLD_HUMAN_SEAT_LEDGE_EATING"] = { title = "Eating Ledge Seating",  description = "Seating animation for ledges with eating activities."},
	["WORLD_HUMAN_BUM_FREEWAY"] = {title = "Bum sleep",description = "Lay down ya bum."},
	["WORLD_HUMAN_BUM_SLUMPED"] = {title = "Bum sit",description = "Relax down ya bum."},


    --############################################# SCENARIO DESCRIPTIONS ######################################################


    --############################################# ANIMATION DESCRIPTIONS ######################################################
    ['anim@gangops@morgue@table@'] = { 
        ['ko_front'] = {Title = 'Lie Still', description = 'play dead.'}
    },
    ['amb@prop_human_seat_sunlounger@female@idle_a'] = { 
        ['idle_a'] = {Title = 'Sunlounger Relax F', description = 'idle_a'},
        ['idle_b'] = {Title = 'Sunlounger Relax F', description = 'idle_b'},
    },
    ['amb@prop_human_seat_sunlounger@male@idle_a'] = { 
            ['idle_a'] = {Title = 'Sunlounger Relax', description = 'idle_a'},
            ['idle_b'] = {Title = 'Sunlounger Relax', description = 'idle_b'},
            ['idle_c'] = {Title = 'Sunlounger Relax', description = 'idle_c'},
            ['idle_d'] = {Title = 'Sunlounger Relax', description = 'idle_d'}
    },
    ['amb@world_human_sunbathe@male@back@idle_a'] ={ 
            ['idle_a'] = {Title = 'Sunbathe', description = 'idle_a'},
            ['idle_b'] = {Title = 'Sunbathe', description = 'idle_b'},
            ['idle_c'] = {Title = 'Sunbathe', description = 'idle_c'}
    },
    ['amb@prop_human_seat_sunlounger@male@base'] = { 
        ['base'] = {Title = 'Sunlounger Sit', description = 'base'}
    },
	['mini@strip_club@lap_dance@ld_girl_a_song_a_p2'] = { 
        ['ld_girl_a_song_a_p2_m'] = {Title = 'Get Handsy', description = 'Have a squeeze.'},
		['ld_girl_a_song_a_p2_no_touch_m'] = {Title = 'No Handsy', description = 'Enjoy the show.'}
    },


	['amb@prop_human_seat_chair_food@female@base'] = { 
		['base'] = { title = "Female Chair Base Animation",  description = "Base animation for female sitting on a chair with food."},
	},
	["anim@amb@business@bgen@bgen_no_work@"] = { 
		["sit_phone_phoneputdown_idle_nowork"] = { title = "Business Animation with Phone",  description = "Idle animation for business-related activities involving a phone."},
		["sit_phone_phoneputdown_sleeping-noworkfemale"] = { title = "Female Business Animation with Phone",  description = "Animation for a female character in a business setting, involving a phone and sleeping."},
	},
	["rcm_barry3"] = { 
		["barry_3_sit_loop"] = { title = "Barry Sit Loop Animation",  description = "Continuous sitting animation loop for character Barry."},
	},
	["amb@lo_res_idles@"] = { 
		["world_human_picnic_male_lo_res_base"] = { title = "Male Picnic Low-Res Animation",  description = "Base animation for a male character in a low-resolution picnic scenario."},
		["world_human_picnic_female_lo_res_base"] = { title = "Female Picnic Low-Res Animation",  description = "Base animation for a female character in a low-resolution picnic scenario."},
	},
	
	["anim@heists@fleeca_bank@ig_7_jetski_owner"] = { 
		["owner_idle"] = { title = "Jetski Owner Idle Animation",  description = "Idle animation for the owner of a jetski, used in heist scenarios."},
	},
	["timetable@jimmy@mics3_ig_15@"] = { 
		["idle_a_jimmy"] = { title = "Jimmy Idle Animation",  description = "Idle animation for character Jimmy, used in specific time scenarios."},
		["mics3_15_base_jimmy"] = { title = "Jimmy Mics3 Animation",  description = "Base animation for character Jimmy in a specific mics3 scenario."},
		["mics3_15_base_tracy"] = { title = "Jimmy Mics3 Tracy Base Animation",  description = "Base animation for character Tracy in mics3 scenario."},
	},
	["anim@amb@nightclub@lazlow@lo_alone@"] = { 
		["lowalone_base_laz"] = { title = "Lazlow Alone Low-Res Animation",  description = "Base low-resolution animation for character Lazlow, when alone in a nightclub."},
	},
	
	["amb@world_human_stupor@male@idle_a"] = { 
		["idle_a"] = { title = "Male Stupor Idle Animation",  description = "Idle animation for a male character in a stupor state."},
	},
	["anim@female_sit_01"] = { 
		["f_sit_01_clip"] = { title = "Female Sit Clip Animation",  description = "Clip animation of a female character sitting."},
	},
	["anim@heists@ornate_bank@hostages@hit"] = { 
		["hit_loop_ped_b"] = { title = "Hostages Hit Loop Animation",  description = "Looping animation for hostages hit, used in ornate bank heist scenarios."},
	},
	["anim@heists@ornate_bank@hostages@ped_c@"] = { 
		["flinch_loop"] = { title = "Hostages Ped C Flinch Loop Animation",  description = "Flinch looping animation for hostages, ped version C."},
	},
	["anim@heists@ornate_bank@hostages@ped_e@"] = { 
		["flinch_loop"] = { title = "Hostages Ped E Flinch Loop Animation",  description = "Flinch looping animation for hostages, ped version E."},
	},
	["timetable@ron@ig_5_p3"] = { 
		["ig_5_p3_base"] = { title = "Ron Ig 5 P3 Base Animation",  description = "Base animation for character Ron in ig 5 p3 scenario."},
	},
	["timetable@reunited@ig_10"] = { 
		["base_amanda"] = { title = "Reunited Ig 10 Amanda Base Animation",  description = "Base animation for character Amanda in ig 10 scenario."},
	},
	["timetable@ron@ron_ig_2_alt1"] = { 
		["ig_2_alt1_base"] = { title = "Ron Ig 2 Alt1 Base Animation",  description = "Base animation for character Ron in ig 2 alt1 scenario."},
	},
	
	--[[ ["sitkylie@queensisters"] = { -- example of custome animations added 
		["kylie_clip"] = { title = "Kylie Clip Animation",  description = "Clip animation for character Kylie, used in queen sisters scenarios."},
	}, ]]
	
	

    --############################################# ANIMATION DESCRIPTIONS ######################################################
}

Config.SitAnyWhereAnims = { -- flags: noExitCollision is for scenariso that are ment to play on the ground, you will clip through objects upon canceling. 
	{   dict = 'amb@prop_human_seat_chair_food@female@base', anim = 'base', zOff = -1},
	{   dict = "anim@amb@business@bgen@bgen_no_work@", anim = "sit_phone_phoneputdown_idle_nowork", zOff = 0},
	{   dict = "rcm_barry3", anim = "barry_3_sit_loop", zOff = 0},
	{   dict = "amb@lo_res_idles@", anim = "world_human_picnic_male_lo_res_base", zOff = 0},
	{   dict = "amb@lo_res_idles@", anim = "world_human_picnic_female_lo_res_base", zOff = 0},
	{   dict = "anim@heists@fleeca_bank@ig_7_jetski_owner", anim = "owner_idle", zOff = 0},
	{   dict = "timetable@jimmy@mics3_ig_15@", anim = "idle_a_jimmy", zOff = 0},
	{   dict = "anim@amb@nightclub@lazlow@lo_alone@", anim = "lowalone_base_laz", zOff = 0},
	{   dict = "timetable@jimmy@mics3_ig_15@", anim = "mics3_15_base_jimmy", zOff = 0},
	{   dict = "amb@world_human_stupor@male@idle_a", anim = "idle_a", zOff = 0},
	{   dict = "anim@amb@business@bgen@bgen_no_work@", anim = "sit_phone_phoneputdown_sleeping-noworkfemale", zOff = 0},
	{   dict = "anim@female_sit_01", anim = "f_sit_01_clip", zOff = 0},
	{   dict = "anim@heists@ornate_bank@hostages@hit", anim = "hit_loop_ped_b", zOff = 0},
	{   dict = "anim@heists@ornate_bank@hostages@ped_c@", anim = "flinch_loop", zOff = 0},
	{   dict = "anim@heists@ornate_bank@hostages@ped_e@", anim = "flinch_loop", zOff = 0},
	{   dict = "timetable@ron@ig_5_p3", anim = "ig_5_p3_base", zOff = 0},
	{   dict = "timetable@reunited@ig_10", anim = "base_amanda", zOff = 0},
	{   dict = "timetable@ron@ron_ig_2_alt1", anim = "ig_2_alt1_base", zOff = 0},
	{   dict = "timetable@jimmy@mics3_ig_15@", anim = "mics3_15_base_tracy", zOff = 0},
	{   dict = "sitkylie@queensisters", anim = "kylie_clip", zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_ARMCHAIR", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BAR", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BENCH", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BENCH_FACILITY", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BENCH_DRINK", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BENCH_DRINK_FACILITY", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BENCH_DRINK_BEER", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BENCH_FOOD", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BENCH_FOOD_FACILITY", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_BUS_STOP_WAIT", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_CHAIR", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_CHAIR_DRINK", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_CHAIR_DRINK_BEER", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_CHAIR_FOOD", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_CHAIR_UPRIGHT", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_DECKCHAIR", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_DECKCHAIR_DRINK", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_STRIP_WATCH", anim = false, zOff = 0},
	{   dict = "PROP_HUMAN_SEAT_SUNLOUNGER", anim = false, zOff = 0},
	{   dict = "WORLD_HUMAN_SEAT_LEDGE", anim = false, zOff = 0, noExitCollision = true},
	{   dict = "WORLD_HUMAN_SEAT_LEDGE_EATING", anim = false, zOff = 0, noExitCollision = true},
}
Config.objects = {
		{objName="v_med_bed2", Animations = {
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=1.2, Heading=290.0, anim='WORLD_HUMAN_PICNIC'},
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=-0.6, Heading= 0.0,dict='anim@gangops@morgue@table@', anim='ko_front'},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			},
		},
		
		{objName="v_med_bed1", Animations = {
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=1.2, Heading=290.0, anim='WORLD_HUMAN_PICNIC'},
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.3, Heading= 180.0,dict='anim@gangops@morgue@table@', anim='ko_front'},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.2, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			},
			
		},

		{objName=-289946279, Animations = { -- pillbox
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=1.0, Heading= 180.0,dict='anim@gangops@morgue@table@', anim='ko_front'},
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=1.9, Heading=0.0, anim='WORLD_HUMAN_SUNBATHE'},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			},
			
		},
		{objName=-1519439119, Animations = { -- pillbox
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=1.0, Heading= 180.0,dict='anim@gangops@morgue@table@', anim='ko_front'},
			{right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=1.9, Heading=0.0, anim='WORLD_HUMAN_SUNBATHE'},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= 90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.95, Heading= -90.0,   IsSittingAnim = true, skipExitScene = false},
		},
		},

	
		{objName=218085040, Animations = { -- garbage dumpster
			{anim = 'WORLD_HUMAN_SEAT_LEDGE',right_left_X= 0.0, forward_backwards_Y=-0.25, up_down_z= 1.25, Heading= 180.0,  IsSittingAnim = false, skipExitScene = true},
			{anim = 'WORLD_HUMAN_SEAT_LEDGE_EATING',right_left_X= 0.0, forward_backwards_Y= -0.25, up_down_z= 1.2, Heading= 180.0,   IsSittingAnim = false, skipExitScene = true},
			{anim = 'WORLD_HUMAN_LEANING',right_left_X= 0.0, forward_backwards_Y= -0.8, up_down_z=  1.2, Heading= 180.0,  IsSittingAnim = false, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= -0.15, up_down_z= 1.35, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.15, up_down_z=  1.35, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= -0.15, up_down_z= 1.35, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y=-0.15, up_down_z=  1.35, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			},
		},

		
--[[ 
#############################################################################################################################################################################################
#############################################################################################################################################################################################
#######################################################__BEDS__############################################################################################################################
#############################################################################################################################################################################################
#############################################################################################################################################################################################]]
{objName="v_med_emptybed", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.2, forward_backwards_Y=0.0, up_down_z=0.15, Heading=90.0,   IsSittingAnim = true, skipExitScene = false},
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=-0.2, forward_backwards_Y=0.0, up_down_z=0.15, Heading=-90.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
--[[ 
#############################################################################################################################################################################################
#############################################################################################################################################################################################
#######################################################__SunLaunger__############################################################################################################################
#############################################################################################################################################################################################
#############################################################################################################################################################################################]]
 
{objName=900699965, Animations = { -- Grey  lawn chair
		{right_left_X=0.0, forward_backwards_Y=0.3, up_down_z=-0.5, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@female@idle_a', anim = 'idle_a'},
		{right_left_X=0.0, forward_backwards_Y=0.3, up_down_z=-0.5, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@female@idle_a', anim = 'idle_b'},
		{right_left_X=0.0, forward_backwards_Y=0.3, up_down_z=-0.5, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@base', anim = 'base'},
		{right_left_X=0.0, forward_backwards_Y=0.3, up_down_z=-0.5, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_a'},
		{right_left_X=0.0, forward_backwards_Y=0.3, up_down_z=-0.5, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_b'},
		{right_left_X=0.0, forward_backwards_Y=0.3, up_down_z=-0.5, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_c'},
		{right_left_X=0.0, forward_backwards_Y=0.3, up_down_z=-0.5, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_d'},
		{right_left_X=0.0, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_a'},
		{right_left_X=0.0, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_b'},
		{right_left_X=0.0, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_c'},
		{right_left_X=0.0, forward_backwards_Y=-0.3, up_down_z=1.44, Heading=180.0, anim='WORLD_HUMAN_PICNIC'},
		{right_left_X=0.0, forward_backwards_Y=-0.5, up_down_z=1.4, Heading=180.0, anim='WORLD_HUMAN_SUNBATHE'},
	},
},

--[[ 
#############################################################################################################################################################################################
#############################################################################################################################################################################################
#######################################################__SunLaunger__############################################################################################################################
#############################################################################################################################################################################################
#############################################################################################################################################################################################]]

--[[ 
#############################################################################################################################################################################################
#############################################################################################################################################################################################
#######################################################__CHAIRS__############################################################################################################################
#############################################################################################################################################################################################
#############################################################################################################################################################################################]]
{objName="v_serv_ct_chair02", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.5, Heading=168.0,   IsSittingAnim = true, skipExitScene = false},
	},
},

{objName="prop_off_chair_04", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.5, Heading=168.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName="prop_off_chair_03", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER', right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.5, Heading=168.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName="prop_off_chair_05", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.5, Heading=168.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName="v_club_officechair", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.5, Heading=90.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName="v_ilev_leath_chr", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.5, Heading=168.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName="v_corp_offchair", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.0, forward_backwards_Y=0.0, up_down_z=0.5, Heading=168.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName="prop_off_chair_01", Animations = {
	{anim='PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X=0.0, forward_backwards_Y=-0.1, up_down_z=0.5, Heading=180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_01a', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_01b', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_02', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_03', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_04a', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_04b', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_05', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_06', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_05', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_08', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_09', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chair_10', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='chateau_chair_01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='clown_chair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='cs_office_chair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='direct_chair_01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='direct_chair_02', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='gc_chair02', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='off_chair_01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='off_chair_03', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='off_chair_04', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='off_chair_04b', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='off_chair_04_s', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='off_chair_05', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='old_deck_chair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='old_wood_chair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='rock_chair_01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='skid_chair_01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='skid_chair_02', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='skid_chair_03', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='sol_chair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='wheelchair_01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='wheelchair_01_s', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName=1262298127, Animations = { -- gabs wheel chair
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.07, up_down_z= 0.07, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='p_armchair_01_s', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName=-826656936, Animations = { -- burgershotchair
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= -0.1, up_down_z= -0.1, Heading= 0.0,   IsSittingAnim = true, skipExitScene = true},
	{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= -0.1, up_down_z= -0.1, Heading= 0.0,   IsSittingAnim = true, skipExitScene = true},
	{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y=-0.08, up_down_z= -0.01, Heading= 0.0,   IsSittingAnim = true, skipExitScene = true},
		
	{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.1, up_down_z= 0.0, Heading= 0.0,   IsSittingAnim = true, skipExitScene = true},
	{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= -0.1, up_down_z= 0.0, Heading= 0.0,   IsSittingAnim = true, skipExitScene = true},
	{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= -0.1, up_down_z= 0.0, Heading= 0.0,   IsSittingAnim = true, skipExitScene = true},
	},
}, 


{objName=688581443, Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		
	{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
}, 

{objName=438342263, Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.3, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.3, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		
	{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.3, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName="prop_cs_office_chair", Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		
	{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.443, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='p_clb_officechair_s', Animations = { -- here
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		
	{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='p_dinechair_01_s', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='p_ilev_p_easychair_s', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='p_soloffchair_s', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='p_yacht_chair_01_s', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_corp_bk_chair3', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_corp_cd_chair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_chair02_ped', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_hd_chair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_p_easychair', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ret_gc_chair03', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='ld_farm_chair01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_04_chr', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_05_chr', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_06_chr', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_01_chr_a', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_01_chr_b', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_02_chr', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_03b_chr', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='table_03_chr', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='torture_ch_01', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_fh_dineeamesa', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_fh_kitchenstool', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_tort_stool', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_fh_kitchenstool', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_fh_kitchenstool', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_fh_kitchenstool', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},
{objName='v_ilev_fh_kitchenstool', Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},

{objName=-992710074, Animations = {
	{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.6, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},

--[[ 
#############################################################################################################################################################################################
#############################################################################################################################################################################################
#######################################################__MultiSeats__############################################################################################################################
#############################################################################################################################################################################################
#############################################################################################################################################################################################]]


	{objName=1088478360, Animations = { -- White two seat lawn chair
		[1] = {
			{right_left_X=0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@female@idle_a', anim = 'idle_a'},
			{right_left_X=0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@female@idle_a', anim = 'idle_b'},
			{right_left_X=0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@base', anim = 'base'},
			{right_left_X=0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_a'},
			{right_left_X=0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_b'},
			{right_left_X=0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_c'},
			{right_left_X=0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_d'},
			{right_left_X=0.5, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_a'},
			{right_left_X=0.5, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_b'},
			{right_left_X=0.5, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_c'},
			{right_left_X=0.5, forward_backwards_Y=-0.3, up_down_z=1.44, Heading=180.0, anim='WORLD_HUMAN_PICNIC'},
			{right_left_X=0.5, forward_backwards_Y=-0.5, up_down_z=1.4, Heading=180.0, anim='WORLD_HUMAN_SUNBATHE'},
		},
		[2] = {
			{right_left_X=-0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@female@idle_a', anim = 'idle_a'},
			{right_left_X=-0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@female@idle_a', anim = 'idle_b'},
			{right_left_X=-0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@base', anim = 'base'},
			{right_left_X=-0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_a'},
			{right_left_X=-0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_b'},
			{right_left_X=-0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_c'},
			{right_left_X=-0.5, forward_backwards_Y=0.3, up_down_z=-0.9, Heading= 180.0, dict = 'amb@prop_human_seat_sunlounger@male@idle_a', anim = 'idle_d'},
			{right_left_X=-0.5, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_a'},
			{right_left_X=-0.5, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_b'},
			{right_left_X=-0.5, forward_backwards_Y=-0.3, up_down_z=0.5, Heading= 180.0, dict = 'amb@world_human_sunbathe@male@back@idle_a', anim = 'idle_c'},
			{right_left_X=-0.5, forward_backwards_Y=-0.3, up_down_z=1.44, Heading=180.0, anim='WORLD_HUMAN_PICNIC'},
			{right_left_X=-0.5, forward_backwards_Y=-0.5, up_down_z=1.4, Heading=180.0, anim='WORLD_HUMAN_SUNBATHE'},
		},
	},

		multiSeat = {
			"Right",
			"Left",
		} 
	},


	{objName=-1320300017, Animations = { -- Eclips penhouse bench green/wht
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.35, forward_backwards_Y= 0.1, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.35, forward_backwards_Y= -0.05, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.35, forward_backwards_Y= 0.1, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.35, forward_backwards_Y= -0.05, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.35, forward_backwards_Y= 0.0, up_down_z= 0.55, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},

		multiSeat = {
			"Right",
			"Left",
		} 
	},

	{objName=-164310809, Animations = { -- burger shot Bench I shape 
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.50, forward_backwards_Y= 0.1, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.50, forward_backwards_Y= -0.05, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.50, forward_backwards_Y= 0.1, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.50, forward_backwards_Y= -0.05, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.50, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = true},
		},
	},

		multiSeat = {
			"Right",
			"Left",
		} 
	},


{objName=-1460572644, Animations = {
	[1] = {
		{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.25, forward_backwards_Y= 0.1, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.25, forward_backwards_Y= -0.05, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
	[2] = {
		{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.25, forward_backwards_Y= 0.1, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.25, forward_backwards_Y= -0.05, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.25, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
	},
},

	multiSeat = {
		"Right",
		"Left",
	}  
},
	{objName=-628719744, Animations = {
			[1] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[2] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[3] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
		},
		
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	{objName=1805980844, Animations = {
			[1] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[2] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[3] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
		},
		
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},

	{objName=-71417349, Animations = {
			[1] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[2] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[3] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
		},
		
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},

	{objName=-1317098115, Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
	{objName=-99500382, Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.3, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.3, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.3, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
	
	{objName='bench_01a', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_01b', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_01c', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_02', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_03', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_04', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_05', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_06', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_05', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_08', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_09', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_10', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='bench_11', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='fib_3b_bench', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='ld_bench01', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
	{objName='wait_bench_01', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
	

		{objName='waiting_seat_01',Animations = {
        [1] = {
            { anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
        },
        [2] = {
            { anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
        },
        [3] = {
            { anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
            {anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
        },
        },
        
			multiSeat = {
				"Right",
				"Center",
				"Left",
			}  
        },
        
		{objName='yacht_seat_01', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='yacht_seat_02', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='yacht_seat_03', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='hobo_seat_01', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	

		{objName='rub_couch01', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='miss_rub_couch_01', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='ld_farm_couch01', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='ld_farm_couch02', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='rub_couch02', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='rub_couch03', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='rub_couch04', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	

		{objName='p_lev_sofa_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='p_res_sofa_l_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='p_v_med_p_sofa_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='p_yacht_sofa_01_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='v_ilev_m_sofa', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='v_res_tre_sofa_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='v_tre_sofa_mess_a_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
		{objName='v_tre_sofa_mess_b_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	
	{objName='v_tre_sofa_mess_c_s', Animations = {
		[1] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[2] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
		[3] = {
			{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.25, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.23, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.26, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.2, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
		},
	},
	
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},


	{objName=437354449, Animations = {
			[1] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[2] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[3] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
		},
		
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},
	{objName=-403891623, Animations = {
			[1] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[2] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
			[3] = {
				{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= -0.9, forward_backwards_Y= 0.1, up_down_z= 0.45, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= -0.9, forward_backwards_Y= -0.05, up_down_z= 0.4, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.423, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.46, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
				{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= -0.9, forward_backwards_Y= 0.0, up_down_z= 0.5, Heading= 180.0,   IsSittingAnim = true, skipExitScene = false},
			},
		},
		
		multiSeat = {
			"Right",
			"Center",
			"Left",
		} 
	},


}
