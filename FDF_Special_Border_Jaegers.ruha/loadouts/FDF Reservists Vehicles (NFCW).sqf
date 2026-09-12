switch (_type) do {

	// "Cars";
	
	case "HQ": {
		comment "HQ Transport";
		_vehicle addBackpackCargoGlobal ["CFP_AssaultPack_M81", 1];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Mag", 30];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Tracer_Mag", 10];
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["NFCW_M43Grenade", 10];
		_vehicle addItemCargoGlobal ["NFCW_M61SmokeGrenade", 10];
		_vehicle addItemCargoGlobal ["SmokeShellGreen", 8];
		_vehicle addItemCargoGlobal ["SmokeShellRed", 8];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
		_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
	};

	// "Trucks";
	
	case "SQUAD": {
		comment "Squad Transport";
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Mag", 35];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Tracer_Mag", 10];
		_vehicle addItemCargoGlobal ["NFCW_100Rnd_762x39_KK62_Mag", 5];
		_vehicle addItemCargoGlobal ["CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 5];
		_vehicle addItemCargoGlobal ["CUP_launch_M72A6", 2];
		_vehicle addItemCargoGlobal ["NFCW_M43Grenade", 10];
		_vehicle addItemCargoGlobal ["NFCW_M61SmokeGrenade", 10];
		_vehicle addItemCargoGlobal ["SmokeShellGreen", 10];
		_vehicle addItemCargoGlobal ["SmokeShellRed", 10];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
		_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
	};
	
	case "TRUCK": {
		comment "Logi Truck";
		_vehicle addBackpackCargoGlobal ["CFP_AssaultPack_M81", 1];
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Mag", 20];
		_vehicle addItemCargoGlobal ["NFCW_M43Grenade", 10];
		_vehicle addItemCargoGlobal ["NFCW_M61SmokeGrenade", 10];
		_vehicle addItemCargoGlobal ["SmokeShellPurple", 10];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
		_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
	};
	
	// "Support";

	case "MORTART": {
		comment "Mortar Ammo Carrier";
		_vehicle addBackpackCargoGlobal ["CFP_AssaultPack_M81", 2];
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Mag", 20];
		_vehicle addItemCargoGlobal ["ACE_1Rnd_82mm_Mo_HE", 10];
		_vehicle addItemCargoGlobal ["ACE_1Rnd_82mm_Mo_Smoke", 10];
		_vehicle addItemCargoGlobal ["NFCW_M43Grenade", 10];
		_vehicle addItemCargoGlobal ["NFCW_M61SmokeGrenade", 10];
		_vehicle addItemCargoGlobal ["SmokeShellGreen", 10];
		_vehicle addItemCargoGlobal ["SmokeShellRed", 10];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
		_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
	};
	
	// "Crates";
	
	case "CRATE": {
		comment "Supply crate";
		_vehicle addItemCargoGlobal ["CUP_30Rnd_556x45_G36_wdl",100];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Mag",100];
		_vehicle addItemCargoGlobal ["16Rnd_9x21_Mag",40];
		_vehicle addItemCargoGlobal ["CUP_5Rnd_86x70_L115A1",50];
		_vehicle addItemCargoGlobal ["NFCW_30Rnd_762x39_RK62_Tracer_Mag",50];
		_vehicle addItemCargoGlobal ["CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl",50];
		_vehicle addItemCargoGlobal ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M",20];
		_vehicle addItemCargoGlobal ["NFCW_M43Grenade",30];
		_vehicle addItemCargoGlobal ["NFCW_M61SmokeGrenade",20];
		_vehicle addItemCargoGlobal ["SmokeShellGreen",20];
		_vehicle addItemCargoGlobal ["SmokeShellRed",20];
		_vehicle addWeaponCargoGlobal ["CUP_launch_M72A6",12];
		_vehicle addWeaponCargoGlobal ["DemoCharge_Remote_Mag",4];
		_vehicle addWeaponCargoGlobal ["NFCW_TM_65_77_Mag",4];
		_this addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",10];
		_this addMagazineCargoGlobal ["ClaymoreDirectionalMine_Remote_Mag",10];
	};
	
	case "MEDICAL": {
		_vehicle addItemCargoGlobal ["ACE_morphine",40];
		_vehicle addItemCargoGlobal ["ACE_epinephrine",25];
		_vehicle addItemCargoGlobal ["ACE_tourniquet",30];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing",200];
		_vehicle addItemCargoGlobal ["ACE_bloodIV",10];
		_vehicle addItemCargoGlobal ["ACE_bloodIV_500",10];
		_vehicle addItemCargoGlobal ["ACE_painkillers",10];
	};
};