switch (_type) do {

	// "Vehicles";
	
	case "CV90": {
		comment "Strf 90";
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["sfp_grg_he_mag", 2];
		_vehicle addItemCargoGlobal ["sfp_grg_heat_mag", 2];
		_vehicle addItemCargoGlobal ["sfp_pskott86", 4];
		_vehicle addItemCargoGlobal ["sfp_rb57", 2];
		_vehicle addItemCargoGlobal ["sfp_ksp58f", 1];
		_vehicle addItemCargoGlobal ["sfp_30Rnd_556x45_Stanag", 20];
		_vehicle addItemCargoGlobal ["sfp_20Rnd_762x51_ak4", 6];
		_vehicle addItemCargoGlobal ["sfp_200Rnd_556x45_ksp90", 5];
		_vehicle addItemCargoGlobal ["sfp_100Rnd_762x51_ksp58", 5];
		_vehicle addItemCargoGlobal ["sfp_30Rnd_556x45_Stanag_tracer", 5];
		_vehicle addItemCargoGlobal ["sfp_handgrenade_shgr2000", 10];
		_vehicle addItemCargoGlobal ["CUP_1Rnd_HE_M203", 10];
		_vehicle addItemCargoGlobal ["SmokeShell", 10];
		_vehicle addItemCargoGlobal ["SmokeShellGreen", 8];
		_vehicle addItemCargoGlobal ["SmokeShellRed", 8];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
		_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
		_vehicle addItemCargoGlobal ["ACE_rope12", 1];
		_vehicle addItemCargoGlobal ["ACE_rope6", 1];
	};
	
	case "CV90HQ": {
		comment "Strf 90 HQ";
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["sfp_30Rnd_556x45_Stanag", 30];
		_vehicle addItemCargoGlobal ["sfp_30Rnd_556x45_Stanag_tracer", 10];
		_vehicle addItemCargoGlobal ["sfp_handgrenade_shgr2000", 10];
		_vehicle addItemCargoGlobal ["SmokeShell", 10];
		_vehicle addItemCargoGlobal ["SmokeShellGreen", 10];
		_vehicle addItemCargoGlobal ["SmokeShellRed", 10];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
		_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
		_vehicle addItemCargoGlobal ["ACE_rope12", 1];
		_vehicle addItemCargoGlobal ["ACE_rope6", 1];
	};
	
	case "SUPPORT": {
		comment "Supply truck";
		_vehicle addBackpackCargoGlobal ["sfp_backpack_stridssack08", 1];
		_vehicle addItemCargoGlobal ["ToolKit", 1];
		_vehicle addItemCargoGlobal ["sfp_30Rnd_556x45_Stanag", 30];
		_vehicle addItemCargoGlobal ["sfp_handgrenade_shgr2000", 10];
		_vehicle addItemCargoGlobal ["SmokeShellPurple", 8];
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 30];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 10];
		_vehicle addItemCargoGlobal ["ACE_morphine", 20];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 10];
		_vehicle addItemCargoGlobal ["ACE_rope12", 6];
		_vehicle addItemCargoGlobal ["ACE_rope6", 6];
	};
};