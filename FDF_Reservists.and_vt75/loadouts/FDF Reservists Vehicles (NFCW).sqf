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
};