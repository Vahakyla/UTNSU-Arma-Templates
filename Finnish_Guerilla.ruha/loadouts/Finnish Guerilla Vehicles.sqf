switch (_type) do {

	// "Crates";
	
	case "WEAP": {
		comment "Weapon Crate";
		_vehicle addItemCargoGlobal ["NFCW_9_KP_31", 5];
		_vehicle addItemCargoGlobal ["NFCW_762_KIV_91_30_SOV", 4];
		_vehicle addItemCargoGlobal ["NFCW_762_TKIV_39", 1];
		_vehicle addItemCargoGlobal ["NFCW_71Rnd_9x19_KP_Mag", 25];
		_vehicle addItemCargoGlobal ["NFCW_5Rnd_762x54_Mosin_Clip", 25];
		_vehicle addItemCargoGlobal ["NFCW_9_PIST_35", 2];
		_vehicle addItemCargoGlobal ["NFCW_8Rnd_9x19_L35_Mag", 8];
	};
	
	case "IED": {
		comment "Boom Crate";
		_vehicle addItemCargoGlobal ["IEDLandSmall_Remote_Mag", 3];
		_vehicle addItemCargoGlobal ["CUP_IED_V4_M", 3];
		_vehicle addItemCargoGlobal ["ACE_DefusalKit", 6];
		_vehicle addItemCargoGlobal ["ACE_Cellphone", 6];
	};

	// "Cars";
	
	case "VAN": {
		comment "AMBULANCE";
		_vehicle addItemCargoGlobal ["ACE_fieldDressing", 100];
		_vehicle addItemCargoGlobal ["ACE_epinephrine", 30];
		_vehicle addItemCargoGlobal ["ACE_morphine", 50];
		_vehicle addItemCargoGlobal ["ACE_tourniquet", 50];
		_vehicle addItemCargoGlobal ["ACE_bloodIV", 20];
		_vehicle addItemCargoGlobal ["ACE_bloodIV_500", 20];
		_vehicle addItemCargoGlobal ["ACE_painkillers", 20];
	};
};