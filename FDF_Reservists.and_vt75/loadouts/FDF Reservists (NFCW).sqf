	_uniform = [
	"U_NFCW_FIN_M62_Uniform",
	"FIN_Combat_Uniform_Alt",
	"U_NFCW_FIN_M62_Uniform_2",
	"FIN_Combat_Uniform",
	"U_NFCW_FIN_M62_Uniform_3",
	"FIN_Combat_Uniform_Rolled",
	"U_NFCW_FIN_M62_Uniform_4",	
	"FIN_Combat_Uniform_Alt_Rolled"
	] select floor random 8;
	
	_helmet = [
	"H_NFCW_FIN_M62_Helmet_Cover",
	"Flex_CUP_FIN_Boonie_Wood",
	"H_NFCW_FIN_M62_Helmet_Cover_2",
	"Flex_CUP_FIN_Patrol_cap",
	"H_NFCW_FIN_M62_Fieldcap",
	"Flex_CUP_FIN_PASGT",
	"H_NFCW_FIN_M62_Fieldcap_2",	
	"SP_PASGTHelmet_Green1"
	] select floor random 8;
	
	_offhat = [
	"H_NFCW_FIN_M62_Fieldcap_Officer",
	"Flex_CUP_FIN_Boonie_Wood",
	"H_NFCW_FIN_M62_Fieldcap_Officer_2",
	"Flex_CUP_FIN_Patrol_cap"
	] select floor random 4;
	
	_hat = [
	"H_NFCW_FIN_M62_Fieldcap",
	"Flex_CUP_FIN_Boonie_Wood",
	"H_NFCW_FIN_M62_Fieldcap_2",
	"Flex_CUP_FIN_Patrol_cap"
	] select floor random 4;
	
	_vest = [
	"V_NFCW_M85_Webbing",
	"Flex_CUP_FIN_V_CPC_Fast",
	"V_NFCW_M85_Webbing_Empty",
	"CUP_V_B_PASGT",
	"Flex_CUP_FIN_V_CPC_Fastbelt",
	"CFP_US_pasgt_alice_Rifleman_ERDL",
	"Flex_CUP_FIN_V_CPC_lightbelt",
	"CUP_V_B_PASGT_OD",
	"Flex_CUP_FIN_V_CPC_light",	
	"CFP_US_pasgt_alice_SAW_Assistant_ERDL"
	] select floor random 10;
	
	_assbackpack = [
	"Flex_CUP_FIN_AssaultPack",
	"CFP_AssaultPack_M81",
	"CFP_AssaultPack_IDF",	
	"CFP_AssaultPack_Woodland",
	"B_AssaultPack_rgr"
	] select floor random 5;
	
	_backpack = [
	"Flex_CUP_FIN_Kitbag",
	"CFP_Kitbag_M81",
	"CFP_Kitbag_Olive",
	"CFP_Kitbag_Woodland",
	"B_Kitbag_rgr"	
	] select floor random 5;
	
	_rifle = [
	"NFCW_762_RK_62",
	"CUP_arifle_AKM_Early",
	"NFCW_762_RK_62_mid",	
	"CUP_arifle_TYPE_56_2_Early",
	"NFCW_762_RK_62_mid_grip"
	] select floor random 5;

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
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "ARTY": {
	
		comment "Artillery Officer";
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
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		_unit addHeadgear _offhat;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
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
		_unit addWeapon _rifle;
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
		_unit addItemToUniform "CLV_axeitem";
		_unit addVest _vest;
		for "_i" from 1 to 4 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack _backpack;
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
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		
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
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack _assbackpack;
		for "_i" from 1 to 5 do {_unit addItemToBackpack "NFCW_30Rnd_762x39_RK62_Tracer_Mag";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
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
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack _assbackpack;
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";

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
		_unit addBackpack _backpack;
		for "_i" from 1 to 3 do {_unit addItemToBackpack "NFCW_100Rnd_762x39_KK62_Mag";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
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
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack _backpack;
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
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
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack _assbackpack;
		for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_launch_M72A6";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "CUP_launch_M72A6";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};	
		
	// "Mortar";
	
	case "MSL": {
	
		comment "Mortar Lead";
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
		_unit addItemToBackpack "ACE_RangeTable_82mm";
		_unit addItemToBackpack "ACE_PlottingBoard";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
		_unit addHeadgear _offhat;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "TUBE": {
	
		comment "Mortar Gunner";
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
		for "_i" from 1 to 9 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack _backpack;
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
		_unit addItemToBackpack "ACE_RangeTable_82mm";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";		
		_unit addWeapon "CUP_m252_carry";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "PLATE": {
	
		comment "Mortar Assistant";
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
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack _backpack;
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToUniform "CLV_axeitem";
		_unit addItemToBackpack "ACE_1Rnd_82mm_Mo_HE";
		_unit addItemToBackpack "ACE_RangeTable_82mm";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addWeapon "ace_csw_carryMortarBaseplate";

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
		_unit addWeapon _rifle;
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
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
};