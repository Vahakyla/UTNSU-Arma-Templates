switch (_type) do {

	// "Cars";
	
	case "HQ": {
		comment "HQ Transport";
		_vehicle addBackpackCargoGlobal ["CFP_AssaultPack_M81", 1];
		_vehicle addItemCargoGlobal ["ToolKit", 1];
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
		_vehicle addItemCargoGlobal ["NFCW_M61SmokeGrenade", 10];
		_vehicle addItemCargoGlobal ["SmokeShellGreen", 10];
		_vehicle addItemCargoGlobal ["SmokeShellRed", 10];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 5];
		_vehicle addItemCargoGlobal ["ACE_morphine", 10];
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
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 5];
		_vehicle addItemCargoGlobal ["ACE_morphine", 10];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
	};
	
	// "Support";

	case "MORTART": {
		comment "Mortar Ammo Carrier";
		_vehicle addBackpackCargoGlobal ["CFP_AssaultPack_M81", 2];
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["NFCW_M61SmokeGrenade", 10];
		_vehicle addItemCargoGlobal ["SmokeShellGreen", 10];
		_vehicle addItemCargoGlobal ["SmokeShellRed", 10];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 20];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 5];
		_vehicle addItemCargoGlobal ["ACE_morphine", 10];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
	};
	
	// "Crates";
	
	case "SQUADCRATE": {
		comment "Squad supply crate";
		_vehicle addMagazineCargoGlobal ["NFCW_30Rnd_762x39_RK62_Mag",48];
		_vehicle addMagazineCargoGlobal ["NFCW_30Rnd_762x39_RK62_Tracer_Mag",20];
		_vehicle addMagazineCargoGlobal ["NFCW_100Rnd_762x39_KK62_Mag",5];
		_vehicle addMagazineCargoGlobal ["NFCW_M43Grenade",12];
		_vehicle addMagazineCargoGlobal ["NFCW_M61SmokeGrenade",12];
		_vehicle addMagazineCargoGlobal ["SmokeShellGreen",6];
		_vehicle addMagazineCargoGlobal ["SmokeShellRed",6];
		_vehicle addItemCargoGlobal ["ACE_morphine",20];
		_vehicle addItemCargoGlobal ["ACE_epinephrine",10];
		_vehicle addItemCargoGlobal ["ACE_tourniquet",16];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing",32];
		_vehicle addWeaponCargoGlobal ["CUP_launch_M72A6",6];
	};
	
	case "MEDICALCRATE": {
		comment "Mortar Ammo Carrier";
		_vehicle addItemCargoGlobal ["ACE_morphine",50];
		_vehicle addItemCargoGlobal ["ACE_epinephrine",30];
		_vehicle addItemCargoGlobal ["ACE_tourniquet",40];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing",100];
		_vehicle addItemCargoGlobal ["ACE_painkillers",20];
	};
	
	case "BLOODCRATE": {
		comment "Mortar Ammo Carrier";
		_vehicle addItemCargoGlobal ["ACE_bloodIV",5];
		_vehicle addItemCargoGlobal ["ACE_bloodIV_500",5];
		_vehicle addItemCargoGlobal ["ACE_bloodIV_250",5];
	};
	
	case "AACRATE": {
		comment "Squad supply crate";
		_vehicle addMagazineCargoGlobal ["CUP_Strela_M",8];
		_vehicle addWeaponCargoGlobal ["CUP_launch_9K32Strela",2];
	};
	
	case "LAWCRATE": {
		comment "Squad supply crate";
		_vehicle addWeaponCargoGlobal ["CUP_launch_APILAS",10];
	};
	
	case "MINEPALLET": {
		comment "Mortar Ammo Carrier";
		_vehicle addMagazineCargoGlobal ["APERSBoundingMine_Range_Mag",30];
		_vehicle addMagazineCargoGlobal ["NFCW_TM_65_77_Mag",20];
	};
	
	case "MINECRATE": {
		comment "Mortar Ammo Carrier";
		_vehicle addMagazineCargoGlobal ["NFCW_TM_65_77_Mag",10];
	};
	
	case "MORTARHE": {
		comment "Mortar Ammo";
		_vehicle addMagazineCargoGlobal ["ACE_1Rnd_82mm_Mo_HE",20];
	};
	
	case "MORTARSMOKE": {
		comment "Mortar Ammo";
		_vehicle addMagazineCargoGlobal ["ACE_1Rnd_82mm_Mo_Smoke",20];
	};
};