	_uniform = [
	"FIN_Combat_Uniform_Alt",
	"FIN_Combat_Uniform",
	"FIN_Combat_Uniform_Rolled",
	"FIN_Combat_Uniform_Alt_Rolled",
	"Flex_CUP_FIN_Combat_Uniform",
	"Flex_CUP_FIN_Combat_Uniform_Gloves",
	"Flex_CUP_FIN_Combat_Uniform_Gloves_Rolled",
	"Flex_CUP_FIN_Combat_Uniform_Pads",
	"Flex_CUP_FIN_Combat_Uniform_Pads_Gloves",
	"Flex_CUP_FIN_Combat_Uniform_Pads_Rolled",
	"Flex_CUP_FIN_Combat_Uniform_Rolled",
	"Flex_CUP_FIN_Combat_Uniform_Tshirt",
	"Flex_CUP_FIN_Combat_Uniform_Tshirt_Gloves",
	"Flex_CUP_FIN_Combat_Uniform_Tshirt_Pads"
	] select floor random 14;
	
	_helmet = [
	"Flex_CUP_FIN_Helmet_Comms",
	"Flex_CUP_FIN_Helmet_Comms_cov",
	"Flex_CUP_FIN_PASGT"
	] select floor random 3;
	
	_hat = [
	"Flex_CUP_FIN_Boonie_Wood",
	"Flex_CUP_FIN_Patrol_cap"
	] select floor random 2;
	
	_offhat = [
	"Flex_CUP_FIN_Beret_Army",
	"Flex_CUP_FIN_Boonie_Wood",
	"Flex_CUP_FIN_Patrol_cap"
	] select floor random 3;
	
	_vest = [
	"Flex_CUP_FIN_V_CPC_Fast",
	"Flex_CUP_FIN_V_CPC_Fastbelt",
	"Flex_CUP_FIN_V_CPC_lightbelt",
	"Flex_CUP_FIN_V_CPC_light",
	"CUP_V_CPC_Fast_rngr",
	"CUP_V_CPC_light_rngr",
	"CUP_V_CPC_Fastbelt_rngr",
	"CUP_V_CPC_light_rngr"
	] select floor random 8;
	
	_medvest = [
	"Flex_CUP_FIN_V_CPC_Fast",
	"Flex_CUP_FIN_V_CPC_Fastbelt",
	"CUP_V_CPC_medical_rngr",
	"CUP_V_CPC_medicalbelt_rngr"
	] select floor random 4;
	
	_slvest = [
	"Flex_CUP_FIN_V_CPC_communicationsbelt",
	"Flex_CUP_FIN_V_CPC_tlbelt",
	"Flex_CUP_FIN_V_CPC_communications",
	"Flex_CUP_FIN_V_CPC_tl"
	] select floor random 4;

	switch (_type) do {
	// "HQ";
	
	case "OFF": {
	
		comment "Officer";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 3 do {_unit addItemToUniform "CUP_17Rnd_9x19_glock17";};
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		_unit addHeadgear _offhat;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62_mid";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "CUP_hgun_Glock17_blk";
		_unit addHandgunItem "CUP_17Rnd_9x19_glock17";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};

	// "Platoon Command";
	
	case "PL": {
	
		comment "Platoon Cmd";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "NFCW_30Rnd_762x39_RK62_Tracer_Mag";};
		_unit addHeadgear _offhat;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62_mid";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "CM": {

		// "Combat Medic";
		// "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_EntrenchingTool";
		_unit addVest _medvest;
		for "_i" from 1 to 4 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "Flex_CUP_FIN_Kitbag";
		for "_i" from 1 to 40 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV_500";};
		_unit addItemToBackpack "ACE_painkillers";
		_unit addItemToBackpack "ACE_personalAidKit";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62_mid";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		
		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "COM": {

		// "Company Medic";
		// "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_EntrenchingTool";
		_unit addVest _medvest;
		for "_i" from 1 to 4 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		
		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	// "Infantry Section";
	
	case "SL": {
	
		comment "Squad Leader";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addItemToUniform "NFCW_RK_62_Bayonet";
		_unit addVest _slvest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "Flex_CUP_FIN_AssaultPack";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "NFCW_30Rnd_762x39_RK62_Tracer_Mag";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62_mid";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
		
	case "RFL": {
	
		comment "Rifleman";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "NFCW_RK_62_Bayonet";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "Flex_CUP_FIN_AssaultPack";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_launch_M72A6";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62_mid";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "CUP_launch_M72A6";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
		
	case "AR": {
	
		comment "Machine gunner";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_100Rnd_762x39_KK62_Mag";};
		_unit addBackpack "Flex_CUP_FIN_Kitbag";
		for "_i" from 1 to 3 do {_unit addItemToBackpack "NFCW_100Rnd_762x39_KK62_Mag";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_KK_62";
		_unit addPrimaryWeaponItem "NFCW_100Rnd_762x39_KK62_Mag";

		
		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "AAR": {
	
		comment "Machine Gunner Assistant";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "NFCW_RK_62_Bayonet";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "Flex_CUP_FIN_Kitbag";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 4 do {_unit addItemToBackpack "NFCW_100Rnd_762x39_KK62_Mag";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62_mid";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};	

	case "RAT": {
	
		comment "Rifleman AT";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "NFCW_RK_62_Bayonet";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "Flex_CUP_FIN_AssaultPack";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_launch_M72A6";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "CUP_launch_M72A6";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};	
	
	// "Vehicles";
	
	case "TRUCKSL": {
	
		comment "Lorry Leader";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellPurple";};
		for "_i" from 1 to 9 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "TRUCK": {
	
		comment "Lorry Driver";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellPurple";};
		for "_i" from 1 to 9 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "NFCW_762_RK_62_mid";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
};