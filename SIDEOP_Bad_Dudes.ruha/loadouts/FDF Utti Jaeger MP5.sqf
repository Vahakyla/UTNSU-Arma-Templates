	_uniform = [
	"FIN_Combat_Uniform_SOF",
	"Flex_CUP_FIN_Combat_Uniform",
	"Flex_CUP_FIN_Combat_Uniform_Gloves",
	"Flex_CUP_FIN_Combat_Uniform_Pads",
	"Flex_CUP_FIN_Combat_Uniform_Pads_Gloves"
	] select floor random 5;
	
	_helmet = [
	"FIN_H_Opscore_NoHS",
	"FIN_H_Opscore_Cover_NoHS",
	"FIN_H_Opscore_CoverCamo",
	"FIN_H_Opscore_Cover",
	"FIN_H_Opscore_CoverSpec",
	"FIN_H_Opscore",
	"Flex_CUP_FIN_Opscore_No_Headset",
	"Flex_CUP_FIN_Opscore_No_Headset_Alt",
	"Flex_CUP_FIN_Opscore_SF_Alt",
	"Flex_CUP_FIN_Opscore"
	] select floor random 10;
	
	_vest = [
	"Flex_CUP_FIN_V_CPC_Fastbelt",
	"Flex_CUP_FIN_V_CPC_lightbelt",
	"Flex_CUP_FIN_V_CPC_weaponsbelt",
	"Flex_CUP_FIN_V_CPC_Fast",
	"Flex_CUP_FIN_V_CPC_light",
	"Flex_CUP_FIN_V_CPC_weapons",
	"CUP_V_CPC_Fast_coy",
	"CUP_V_CPC_light_coy",
	"CUP_V_CPC_weapons_coy",
	"CUP_V_CPC_Fastbelt_coy",
	"CUP_V_CPC_lightbelt_coy",
	"CUP_V_CPC_weaponsbelt_coy",
	"CUP_V_CPC_Fast_rngr",
	"CUP_V_CPC_light_rngr",
	"CUP_V_CPC_weapons_rngr",
	"CUP_V_CPC_Fastbelt_rngr",
	"CUP_V_CPC_lightbelt_rngr",
	"CUP_V_CPC_weaponsbelt_rngr"
	] select floor random 18;
	
	_medvest = [
	"Flex_CUP_FIN_V_CPC_medicalbelt",
	"Flex_CUP_FIN_V_CPC_medical",
	"CUP_V_CPC_medical_coy",
	"CUP_V_CPC_medicalbelt_coy",
	"CUP_V_CPC_medical_rngr",
	"CUP_V_CPC_medicalbelt_rngr"
	] select floor random 6;
	
	_slvest = [
	"Flex_CUP_FIN_V_CPC_communicationsbelt",
	"Flex_CUP_FIN_V_CPC_tlbelt",
	"Flex_CUP_FIN_V_CPC_communications",
	"Flex_CUP_FIN_V_CPC_tl",
	"CUP_V_CPC_communications_coy",
	"CUP_V_CPC_tlbelt_coy",
	"CUP_V_CPC_communicationsbelt_coy",
	"CUP_V_CPC_tlbelt_coy",
	"CUP_V_CPC_communications_rngr",
	"CUP_V_CPC_tl_rngr",
	"CUP_V_CPC_communicationsbelt_rngr",
	"CUP_V_CPC_tlbelt_rngr"
	] select floor random 12;

	switch (_type) do {
	// "Company Command";
	
	case "UOFF": {
	
		comment "Jaeger CO";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";		
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_acc_Glock17_Flashlight";
		
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "CUP_NVG_PVS15_black_WP";
	};

	case "UJTAC": {
	
		comment "Joint Task Air Controller";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "Laserbatteries";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_acc_Glock17_Flashlight";
		_unit addWeapon "Laserdesignator";
		_unit addMagazine "Laserbatteries";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};

	// "Detachment";
	
	case "USL": {
	
		comment "Detachment Commander";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		_unit addVest _slvest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "NFCW_30Rnd_762x39_RK62_Tracer_Mag";};
		_unit addItemToBackpack "Laserbatteries";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addWeapon "Laserdesignator";
		_unit addMagazine "Laserbatteries";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
	
	case "UCM": {

		comment "Jaeger Medic";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};	
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_EntrenchingTool";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		_unit addVest _medvest;
		for "_i" from 1 to 4 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
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
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		
		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
		
	case "UTL": {
	
		comment "Jaeger Team Leader";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addVest _slvest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "Flex_CUP_FIN_AssaultPack";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "NFCW_30Rnd_762x39_RK62_Tracer_Mag";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
		
	case "URFL": {
	
		comment "Jaeger";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "Flex_CUP_FIN_AssaultPack";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
				
	case "UBOOM": {
	
		comment "Jaeger EOD";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "Flex_CUP_FIN_Kitbag";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToBackpack "ACE_M26_Clacker";
		_unit addItemToBackpack "ACE_DefusalKit";
		for "_i" from 1 to 8 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
	
	// "Sniper Team";
	
	case "SPOTTERTL": {
	
		comment "Sniper Team Lead";
		comment "Add containers";
		_unit forceAddUniform "U_B_FullGhillie_lsh";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "TFAR_rt1523g_bwmod";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "SPOTTER": {
	
		comment "Spotter";
		comment "Add containers";
		_unit forceAddUniform "U_B_FullGhillie_lsh";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "Flex_CUP_FIN_AssaultPack";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToBackpack "ACE_SpottingScope";
		_unit addItemToBackpack "ACE_RangeCard";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "CUP_smg_MP5A5_Rail_AFG";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_ANPEQ_15_Flashlight_Black_L";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "SNIPER": {
	
		comment "Sniper";
		comment "Add containers";
		_unit forceAddUniform "U_B_FullGhillie_lsh";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_IR_Strobe_Item";
		for "_i" from 1 to 2 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addVest _vest;
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_5Rnd_86x70_L115A1";};
		_unit addBackpack "Flex_CUP_FIN_AssaultPack";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToBackpack "ACE_RangeCard";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "bnae_trg42_mmrs_virtual";
		_unit addPrimaryWeaponItem "bnae_silencer_virtual";
		_unit addPrimaryWeaponItem "CUP_5Rnd_86x70_L115A1";
		_unit addPrimaryWeaponItem "CUP_optic_SB_3_12x50_PMII";
		_unit addPrimaryWeaponItem "CUP_bipod_VLTOR_Modpod_black";		
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
};