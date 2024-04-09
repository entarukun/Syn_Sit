Config.PolySeats = {
        { -- Vinewood Sign
			debug = false,options = {},
			Seats = {
			[1] = vector3(712.32873535156, 1197.2170410156, 347.53161621094),
			[2] = vector3(710.8955078125, 1197.6031494141, 347.53164672852),
			[3] = vector3(710.25103759766, 1197.7979736328, 347.53164672852)},
			thickness = 1.0,points = {
			[1] = vector3(712.57171630859, 1196.8277587891, 347.52853393555),
			[2] = vector3(709.70379638672, 1197.6196289063, 347.52853393555),
			[3] = vector3(709.890625, 1198.3450927734, 347.52853393555),
			[4] = vector3(712.8095703125, 1197.5927734375, 347.52853393555)  
			},
			multiSeat = {
				"Right",
				"Center",
				"Left",
			},
			ZoneID = nil,
			distance = 3.0,
			objName= false, 
			Animations = {
				[1] = {
					{right_left_X = 0.0,up_down_z = -0.04,anim = 'WORLD_HUMAN_SEAT_LEDGE',Heading = 170.38,forward_backwards_Y = -0.12,  IsSittingAnim = false, skipExitScene = false},
					{anim = 'WORLD_HUMAN_SEAT_LEDGE_EATING',right_left_X= 0.0, forward_backwards_Y= -0.12, up_down_z= -0.04, Heading = 170.38,  IsSittingAnim = false, skipExitScene = false},
				},
				[2] = {
					{right_left_X = 0.0,up_down_z = -0.04,anim = 'WORLD_HUMAN_SEAT_LEDGE',Heading = 170.38,forward_backwards_Y = -0.12,  IsSittingAnim = false, skipExitScene = false},
					{anim = 'WORLD_HUMAN_SEAT_LEDGE_EATING',right_left_X= 0.0, forward_backwards_Y= -0.12, up_down_z= -0.04, Heading = 170.38,  IsSittingAnim = false, skipExitScene = false},
				},
				[3] = {
					{right_left_X = 0.0,up_down_z = -0.04,anim = 'WORLD_HUMAN_SEAT_LEDGE',Heading = 170.38,forward_backwards_Y = -0.12,  IsSittingAnim = false, skipExitScene = false},
					{anim = 'WORLD_HUMAN_SEAT_LEDGE_EATING',right_left_X= 0.0, forward_backwards_Y= -0.12, up_down_z= -0.04, Heading = 170.38,  IsSittingAnim = false, skipExitScene = false},
				},
			},	
		},


		{	
			Seats = {
				[1] = vector3(301.39309692383, -590.28961181641, 42.742588043213),
				[2] = vector3(300.92199707031, -591.46185302734, 42.742588043213),
			},
			thickness = 0.4,options = {},
			points = {
				[1] = vector3(301.97033691406, -590.03063964844, 42.742588043213),
				[2] = vector3(301.33386230469, -589.7822265625, 42.742588043213),
				[3] = vector3(300.56094360352, -591.88018798828, 42.742588043213),
				[4] = vector3(301.1962890625, -592.11267089844, 42.742588043213),
			},
			multiSeat = {
				"Right",
				"Left",
			},
			ZoneID = nil,
			debug = false,
			distance = 3.0,
			objName= false, 
			Animations = {
				[1] = {

					{right_left_X = 0.08,up_down_z = 0.0,Heading = 70.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',title = 'Sit Normal',forward_backwards_Y = -0.06},
					{anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 73.54,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 73.54,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 73.54,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 73.54,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 73.54,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
				},
				[2] = {
					{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 71.0,   IsSittingAnim = true, skipExitScene = false},
				},
			},	
		},
		{	
			points = {
				[1] = vector3(303.71337890625, -595.54620361328, 42.741142272949),
				[2] = vector3(303.99722290039, -594.88415527344, 42.741142272949),
				[3] = vector3(302.14096069336, -594.21154785156, 42.741142272949),
				[4] = vector3(301.92837524414, -594.89495849609, 42.741142272949),
			}, 
			Seats = {
				[1] = vector3(303.46673583984, -594.94586181641, 42.741142272949),
				[2] = vector3(302.51376342773, -594.59442138672, 42.741142272949),
			},
			multiSeat = {
				"Right",
				"Left",
			},
			thickness = 0.4,
			options = {},
			ZoneID = nil,
			debug = false,
			distance = 3.0,
			objName= false, 
			Animations = {
				[1] = {
					{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X=0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
				},
				[2] = {
					{ anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_BENCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_DECKCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_ARMCHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
					{anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',right_left_X= 0.0, forward_backwards_Y= 0.0, up_down_z= 0.0, Heading= 337.0,   IsSittingAnim = true, skipExitScene = false},
				},
			},	
		},
	    {
		debug = false,
        multiSeat = {
            [1] = 'Seat 1',
            [2] = 'Seat 2',
            [3] = 'Seat 3',
            [4] = 'Seat 4',
            [5] = 'Seat 5',
            [6] = 'Seat 6'},
            points = {
            [1] = vector3(117.27416992188, -1285.2950439453, 27.709495544434),
            [2] = vector3(117.7847442627, -1286.0751953125, 27.709495544434),
            [3] = vector3(117.89721679688, -1287.0910644531, 27.709495544434),
            [4] = vector3(117.52843475342, -1287.9949951172, 27.709495544434),
            [5] = vector3(116.78377532959, -1288.6329345703, 27.709495544434),
            [6] = vector3(115.82151031494, -1288.8482666016, 27.709495544434),
            [7] = vector3(114.88858032227, -1288.6027832031, 27.709495544434),
            [8] = vector3(115.11229705811, -1288.2104492188, 27.709495544434),
            [9] = vector3(115.82629394531, -1288.4145507813, 27.709495544434),
            [10] = vector3(116.5788269043, -1288.2364501953, 27.709495544434),
            [11] = vector3(117.17493438721, -1287.7376708984, 27.709495544434),
            [12] = vector3(117.49030303955, -1287.013671875, 27.709495544434),
            [13] = vector3(117.38103485107, -1286.24609375, 27.709495544434),
            [14] = vector3(116.97180175781, -1285.6248779297, 27.709495544434)},
            thickness = 0.5,objName = false,options = {},
            Seats = {
            [1] = vector3(117.41941833496, -1285.7042236328, 27.709495544434),
            [2] = vector3(117.75078582764, -1286.5720214844, 27.709495544434),
            [3] = vector3(117.63273620605, -1287.4932861328, 27.709495544434),
            [4] = vector3(117.10436248779, -1288.2294921875, 27.709495544434),
            [5] = vector3(116.28472137451, -1288.6520996094, 27.709495544434),
            [6] = vector3(115.37554931641, -1288.6126708984, 27.709495544434)
        },
	    Animations = {
            [1] = {
                [1] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 126.0},
            [2] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 126.0},
            [3] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 126.0},
            [4] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 126.0},
            [5] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 126.0},
            [6] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 126.0},
            [7] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 126.0},
            [8] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 126.0},
            [9] = {right_left_X = 0.0,forward_backwards_Y = 0.1,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 126.0},
            [10] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 126.0},
            [11] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 126.0},
            [12] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 126.0  }
            },
            [2] = {
            [1] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 99.0},
            [2] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 99.0},
            [3] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 99.0},
            [4] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 99.0},
            [5] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 99.0},
            [6] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 99.0},
            [7] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 99.0},
            [8] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 99.0},
            [9] = {right_left_X = 0.0,forward_backwards_Y = 0.1,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 99.0},
            [10] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 99.0},
            [11] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 99.0},
            [12] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 99.0  }
            },
            [3] = {
            [1] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 69.0},
            [2] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 69.0},
            [3] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 69.0},
            [4] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 69.0},
            [5] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 69.0},
            [6] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 69.0},
            [7] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 69.0},
            [8] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 69.0},
            [9] = {right_left_X = 0.0,forward_backwards_Y = 0.1,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 69.0},
            [10] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 69.0},
            [11] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 69.0},
            [12] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 69.0  }
            },
            [4] = {[1] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 42.0},
            [2] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 42.0},
            [3] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 42.0},
            [4] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 42.0},
            [5] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 42.0},
            [6] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 42.0},
            [7] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 42.0},
            [8] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 42.0},
            [9] = {right_left_X = 0.0,forward_backwards_Y = 0.1,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 42.0},
            [10] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 42.0},
            [11] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 42.0},
            [12] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 42.0  }
            },
            [5] = {
            [1] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 15.0},
            [2] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 15.0},
            [3] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 15.0},
            [4] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 15.0},
            [5] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 15.0},
            [6] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 15.0},
            [7] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 15.0},
            [8] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 15.0},
            [9] = {right_left_X = 0.0,forward_backwards_Y = 0.1,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 15.0},
            [10] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 15.0},
            [11] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 15.0},
            [12] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 15.0  }
            },
            [6] = {
            [1] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = -15.0},
            [2] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = -15.0},
            [3] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = -15.0},
            [4] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = -15.0},
            [5] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = -15.0},
            [6] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = -15.0},
            [7] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = -15.0},
            [8] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = -15.0},
            [9] = {right_left_X = 0.0,forward_backwards_Y = 0.1,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = -15.0},
            [10] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = -15.0},
            [11] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = -15.0},
            [12] = {right_left_X = 0.0,forward_backwards_Y = 0.0,up_down_z = 0.03,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = -15.0  }
		    }
		},
		  distance = 3.0
    },
	{
			Animations = {
		  [1] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03  }
		  },
		  [2] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03  },
		  [13] = {forward_backwards_Y = 0.0,dict = "amb@world_human_bum_slumped@male@laying_on_left_side@idle_a",anim = "idle_b",Heading = 40.0,right_left_X = 0.0,up_down_z = 0.03  }
		  },
		  [3] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',Heading = 90.0,right_left_X = 0.0,up_down_z = 0.03  }
		  }},
		  Seats = {
		  [1] = vector3(479.06875610352, -1013.5661621094, 25.714420318604),
		  [2] = vector3(479.04125976563, -1014.0377807617, 25.714420318604),
		  [3] = vector3(479.05981445313, -1014.6130981445, 25.714420318604)},
		  multiSeat = {
		  [1] = 'Seat 1',
		  [2] = 'Seat 2',
		  [3] = 'Seat 3'},
		  objName = false,points = {
		  [1] = vector3(479.40832519531, -1013.1815795898, 25.714420318604),
		  [2] = vector3(479.38970947266, -1014.9602050781, 25.714420318604),
		  [3] = vector3(478.76089477539, -1015.0057983398, 25.714420318604),
		  [4] = vector3(478.75662231445, -1013.1823120117, 25.714420318604)},
		  debug = false,distance = 3.0,thickness = 0.5,options = {  }
	},
	{
			Seats = {
		  [1] = vector3(482.08450317383, -1013.4990234375, 25.714420318604),
		  [2] = vector3(482.1028137207, -1014.0586547852, 25.714420318604),
		  [3] = vector3(482.09121704102, -1014.6576538086, 25.714420318604)},
		  Animations = {
		  [1] = {
		  [1] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_BENCH'},
		  [2] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR'},
		  [3] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH'},
		  [4] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK'},
		  [5] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER'},
		  [6] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD'},
		  [7] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR'},
		  [8] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK'},
		  [9] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.1,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_ARMCHAIR'},
		  [10] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER'},
		  [11] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR'},
		  [12] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT'  }
		  },
		  [2] = {
		  [1] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_BENCH'},
		  [2] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR'},
		  [3] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH'},
		  [4] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK'},
		  [5] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER'},
		  [6] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD'},
		  [7] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR'},
		  [8] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK'},
		  [9] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.1,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_ARMCHAIR'},
		  [10] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER'},
		  [11] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR'},
		  [12] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT'  },
		  [13] = {forward_backwards_Y = 0.0,dict = "amb@world_human_bum_slumped@male@laying_on_left_side@idle_a",anim = "idle_b",Heading = 40.0,right_left_X = 0.0,up_down_z = 0.03  }
		  
		  },
		  [3] = {
		  [1] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_BENCH'},
		  [2] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR'},
		  [3] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH'},
		  [4] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK'},
		  [5] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER'},
		  [6] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD'},
		  [7] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR'},
		  [8] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK'},
		  [9] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.1,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_ARMCHAIR'},
		  [10] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER'},
		  [11] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR'},
		  [12] = {right_left_X = 0.0,up_down_z = 0.03,forward_backwards_Y = 0.0,Heading = 90.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT'  }
		  }},
		  objName = false,points = {
		  [1] = vector3(482.34799194336, -1013.1947021484, 25.714420318604),
		  [2] = vector3(482.3606262207, -1014.97265625, 25.714420318604),
		  [3] = vector3(481.79019165039, -1014.9653320313, 25.714420318604),
		  [4] = vector3(481.77590942383, -1013.1640014648, 25.714420318604)},
		  distance = 3.0,options = {},
		  debug = false,multiSeat = {
		  [1] = 'Seat 1',
		  [2] = 'Seat 2',
		  [3] = 'Seat 3'},
		  thickness = 0.5
    },
	{
		thickness = 0.5,multiSeat = {
		  [1] = 'Seat 1',
		  [2] = 'Seat 2',
		  [3] = 'Seat 3'},
		  Animations = {
		  [1] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0  },
		  
		  },
		  [2] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0  },
		  [13] = {forward_backwards_Y = 0.0,dict = "amb@world_human_bum_slumped@male@laying_on_left_side@idle_a",anim = "idle_b",Heading = 40.0,right_left_X = 0.0,up_down_z = 0.03  }
		  },
		  [3] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',up_down_z = 0.03,right_left_X = 0.0,Heading = 84.0  }
		  }},
		  distance = 3.0,points = {
		  [1] = vector3(485.37326049805, -1013.19140625, 25.714420318604),
		  [2] = vector3(485.36553955078, -1014.9572143555, 25.714420318604),
		  [3] = vector3(484.73245239258, -1014.9544677734, 25.714420318604),
		  [4] = vector3(484.77496337891, -1013.1900024414, 25.714420318604)},
		  objName = false,Seats = {
		  [1] = vector3(485.07385253906, -1013.515625, 25.714420318604),
		  [2] = vector3(485.10375976563, -1014.0911254883, 25.714420318604),
		  [3] = vector3(485.06677246094, -1014.677734375, 25.714420318604)},
		  options = {},
		  debug = false
    },
	{
			thickness = 0.5,multiSeat = {
		  [1] = 'Seat 1',
		  [2] = 'Seat 2',
		  [3] = 'Seat 3'},
		  Animations = {
		  [1] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0  }
		  },
		  [2] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0  },
		  [13] = {forward_backwards_Y = 0.0,dict = "amb@world_human_bum_slumped@male@laying_on_left_side@idle_a",anim = "idle_b",Heading = 40.0,right_left_X = 0.0,up_down_z = 0.03  }
		  },
		  [3] = {
		  [1] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_BENCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [2] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [3] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_STRIP_WATCH',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [4] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [5] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_DRINK_BEER',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [6] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_FOOD',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [7] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [8] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_DECKCHAIR_DRINK',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [9] = {forward_backwards_Y = 0.1,anim = 'PROP_HUMAN_SEAT_ARMCHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [10] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_MP_PLAYER',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [11] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0},
		  [12] = {forward_backwards_Y = 0.0,anim = 'PROP_HUMAN_SEAT_CHAIR_UPRIGHT',up_down_z = 0.03,right_left_X = 0.0,Heading = 90.0  }
		  }},
		  distance = 3.0,points = {
		  [1] = vector3(488.39898681641, -1013.198425293, 25.714420318604),
		  [2] = vector3(488.39419555664, -1015.018737793, 25.714420318604),
		  [3] = vector3(487.80294799805, -1015.0021972656, 25.714420318604),
		  [4] = vector3(487.74688720703, -1013.2079467773, 25.714420318604)},
		  objName = false,Seats = {
		  [1] = vector3(488.12362670898, -1013.451171875, 25.714420318604),
		  [2] = vector3(488.11608886719, -1014.0661621094, 25.714420318604),
		  [3] = vector3(488.12646484375, -1014.6857299805, 25.714420318604)},
		  options = {},
		  debug = false
    },


	{
		distance = 3.0,thickness = 0.4,Seats = {
	  [1] = vector3(116.00419616699, -1303.2521972656, 27.718423843384),
	  [2] = vector3(116.26703643799, -1304.2945556641, 27.718423843384),
	  [3] = vector3(115.51490020752, -1305.0275878906, 27.718423843384)},
	  debug = false,Animations = {
	  [1] = {
	  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 115.0,up_down_z = 0.03,right_left_X = 0.0},
	  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 115.0,up_down_z = 0.03,right_left_X = 0.0},

	  },
	  
	  [2] = {
	  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 69.0,up_down_z = 0.03,right_left_X = 0.0},
	  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 69.0,up_down_z = 0.03,right_left_X = 0.0},

	  },
	  
	  [3] = {
	  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 36.0,up_down_z = 0.03,right_left_X = 0.0},
	  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 36.0,up_down_z = 0.03,right_left_X = 0.0},

	  }},
	  options = {},
	  points = {
	  [1] = vector3(115.90442657471, -1302.8203125, 28.718423843384),
	  [2] = vector3(116.39591217041, -1303.6473388672, 28.718423843384),
	  [3] = vector3(116.49176025391, -1304.3280029297, 28.718423843384),
	  [4] = vector3(116.0274887085, -1304.8728027344, 28.718423843384),
	  [5] = vector3(115.21933746338, -1305.3878173828, 28.718423843384),
	  [6] = vector3(115.0094833374, -1305.0283203125, 28.718423843384),
	  [7] = vector3(115.85461425781, -1304.5288085938, 28.718423843384),
	  [8] = vector3(116.06385803223, -1304.2210693359, 28.718423843384),
	  [9] = vector3(116.03128814697, -1303.8497314453, 28.718423843384),
	  [10] = vector3(115.55877685547, -1303.0157470703, 28.718423843384)},
	  objName = false,multiSeat = {
	  [1] = 'Seat 1',
	  [2] = 'Seat 2',
	  [3] = 'Seat 3'  }
	  },


	  {
		multiSeat = {
	  [1] = 'Seat 1',
	  [2] = 'Seat 2',
	  [3] = 'Seat 3',
	  [4] = 'Seat 4',
	  [5] = 'Seat 5'},
	  objName = false,options = {},
	  distance = 3.0,Seats = {
	  [1] = vector3(110.54208374023, -1303.1174316406, 27.718423843384),
	  [2] = vector3(110.30099487305, -1302.0941162109, 27.718423843384),
	  [3] = vector3(110.98262786865, -1301.3988037109, 27.718423843384),
	  [4] = vector3(111.87380218506, -1300.9162597656, 27.718423843384),
	  [5] = vector3(112.74237060547, -1300.3825683594, 27.718423843384)},
	  debug = false,thickness = 0.4,points = {
	  [1] = vector3(110.62606048584, -1303.5769042969, 28.718423843384),
	  [2] = vector3(110.12077331543, -1302.6779785156, 28.718423843384),
	  [3] = vector3(110.06690216064, -1302.0305175781, 28.718423843384),
	  [4] = vector3(110.49078369141, -1301.4782714844, 28.718423843384),
	  [5] = vector3(113.06092071533, -1300.0, 28.718423843384),
	  [6] = vector3(113.24236297607, -1300.3798828125, 28.718423843384),
	  [7] = vector3(110.74659729004, -1301.8682861328, 28.718423843384),
	  [8] = vector3(110.44230651855, -1302.1905517578, 28.718423843384),
	  [9] = vector3(110.51481628418, -1302.5498046875, 28.718423843384),
	  [10] = vector3(110.96960449219, -1303.3684082031, 28.718423843384)},
	  Animations = {
		[1] = {
		  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -60.0,up_down_z = 0.03,right_left_X = 0.0},
		  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -60.0,up_down_z = 0.03,right_left_X = 0.0},
		},
		
		[2] = {
		  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -105.0,up_down_z = 0.03,right_left_X = 0.0},
		  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -105.0,up_down_z = 0.03,right_left_X = 0.0},
		  },
		
		[3] = {
		  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -150.0,up_down_z = 0.03,right_left_X = 0.0},
		  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -150.0,up_down_z = 0.03,right_left_X = 0.0},
		  },
		
		[4] = {
		  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -153.0,up_down_z = 0.03,right_left_X = 0.0},
		  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -153.0,up_down_z = 0.03,right_left_X = 0.0},
		  },
		
		[5] = {
		  [1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -153.0,up_down_z = 0.03,right_left_X = 0.0},
		  [2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -153.0,up_down_z = 0.03,right_left_X = 0.0},
		  }  
	  }
	},


	{
		debug = false,options = {},
	  distance = 3.0,points = {
	  [1] = vector3(114.21382904053, -1305.9835205078, 28.718423843384),
	  [2] = vector3(113.36971282959, -1306.4696044922, 28.718423843384),
	  [3] = vector3(112.67283630371, -1306.5609130859, 28.718423843384),
	  [4] = vector3(112.11418151855, -1306.1372070313, 28.718423843384),
	  [5] = vector3(111.62317657471, -1305.3079833984, 28.718423843384),
	  [6] = vector3(112.01596069336, -1305.0570068359, 28.718423843384),
	  [7] = vector3(112.47190093994, -1305.8961181641, 28.718423843384),
	  [8] = vector3(112.77243804932, -1306.1457519531, 28.718423843384),
	  [9] = vector3(113.13082885742, -1306.11328125, 28.718423843384),
	  [10] = vector3(113.97688293457, -1305.6417236328, 28.718423843384)},
	  thickness = 0.4,Seats = {
	  [1] = vector3(113.72577667236, -1306.0285644531, 27.718423843384),
	  [2] = vector3(112.72461700439, -1306.3709716797, 27.718423843384),
	  [3] = vector3(112.0121307373, -1305.6151123047, 27.718423843384)},
	  Animations = {
	  [1] = {
		[1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 30.0,up_down_z = 0.03,right_left_X = 0.0},
		[2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = 30.0,up_down_z = 0.03,right_left_X = 0.0},

	  },
	  
	  [2] = {
	  	[1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -15.0,up_down_z = 0.03,right_left_X = 0.0},
		[2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -15.0,up_down_z = 0.03,right_left_X = 0.0},

	  },
	  
	  [3] = {
	  	[1] = {anim = 'ld_girl_a_song_a_p2_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -60.0,up_down_z = 0.03,right_left_X = 0.0},
		[2] = {anim = 'ld_girl_a_song_a_p2_no_touch_m', dict = "mini@strip_club@lap_dance@ld_girl_a_song_a_p2",forward_backwards_Y = 0.0,Heading = -60.0,up_down_z = 0.03,right_left_X = 0.0},

	  }},
	  multiSeat = {
	  [1] = 'Seat 1',
	  [2] = 'Seat 2',
	  [3] = 'Seat 3'},
	  objName = false},
}