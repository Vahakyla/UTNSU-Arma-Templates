	_uniform = [
	"sfp_m90w_uniform",
	"sfp_m90w_uniform_ksk90_modern",
	"sfp_m90w_uniform_ksk90",
	"sfp_m90w_uniform_boots_m08",
	"sfp_m90w_uniform_m08",
	"sfp_m90w_uniform_modern",
	"sfp_m90w_uniform_dirty"
	] select floor random 7;
	
	_helmet = [
	"sfp_m90w_helmet",
	"sfp_m90w_helmet_headset_nvg",
	"sfp_m90w_helmet_headset",
	"sfp_m90w_helmet_nvg",
	"sfp_m90w_helmet_peltor_nomic",
	"sfp_m90w_helmet_peltor_nvg",
	"sfp_m90w_helmet_peltor"
	] select floor random 7;
	
	_rifle = [
	"sfp_ak5c",
	"sfp_ak5c_alt"
	] select floor random 2;
	
	switch (_type) do {
	// "HQ";
	
	case "CO": {
	
		comment "Company CO";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "sfp_17Rnd_9x19_Mag";};
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest "sfp_kroppsskydd12_holster";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_ra180";
		_unit addHeadgear "sfp_m90w_cap_off";

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addWeapon "sfp_p88";
		_unit addHandgunItem "sfp_17Rnd_9x19_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "FO": {
	
		comment "Artillery Observer";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_ra180";
		_unit addHeadgear "sfp_m90w_cap";

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addWeapon "ACE_VectorDay";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "COM": {

		// "Combat Medic";
		// "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 4 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 7 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_sjvv9";
		for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_painkillers";};
		_unit addItemToBackpack "ACE_personalAidKit";
		_unit addHeadgear "sfp_m90w_booniehat";

		// "Add weapons";

		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	// "Platoon Command";
	
	case "PL": {
	
		comment "Platoon Cmdr";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_stridssack2000_ra_ksk12";
		for "_i" from 1 to 4 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_tracer";};
		_unit addHeadgear "sfp_m59w_cap_plt";

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
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
		_unit addVest "sfp_kroppsskydd12_medic";
		for "_i" from 1 to 4 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 7 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_sjvv9";
		for "_i" from 1 to 50 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV_500";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_painkillers";};
		_unit addItemToBackpack "ACE_personalAidKit";
		_unit addHeadgear _helmet;

		// "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";

		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
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
		_unit addVest "sfp_kroppsskydd12_gl";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_stridssack2000";
		for "_i" from 1 to 4 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag_tracer";};
		for "_i" from 1 to 7 do {_unit addItemToVest "CUP_1Rnd_HE_M203";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "sfp_ak5c_m203";
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addPrimaryWeaponItem "CUP_1Rnd_HE_M203";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
	
	case "TL": {
	
		comment "Asst. Squad Leader";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest "sfp_kroppsskydd12_gl";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_stridssack2000";
		for "_i" from 1 to 7 do {_unit addItemToVest "CUP_1Rnd_HE_M203";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "sfp_ak5c_m203";
		_unit addPrimaryWeaponItem "sfp_optic_3x_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addPrimaryWeaponItem "CUP_1Rnd_HE_M203";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
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
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_stridssack2000";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
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
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_stridssack2000";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addWeapon "sfp_pskott86";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
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
		_unit addVest "sfp_kroppsskydd12_mg";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		_unit addItemToVest "sfp_200Rnd_556x45_ksp90";
		_unit addBackpack "sfp_backpack_stridssack2000";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "sfp_200Rnd_556x45_ksp90";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "sfp_ksp90c";
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_200Rnd_556x45_ksp90";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
	
	case "MARK": {
	
		comment "Marksman";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 5 do {_unit addItemToVest "sfp_20Rnd_762x51_ak4";};
		_unit addBackpack "sfp_backpack_stridssack2000";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "sfp_20Rnd_762x51_ak4";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "sfp_ak4d";
		_unit addPrimaryWeaponItem "sfp_optic_kikarsikte09_4x";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_20Rnd_762x51_ak4";
		
		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
	
	// "GRG";
	
	case "GRGGUNNER": {
	
		comment "GRG Gunner";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_stridssack2000_grg";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "sfp_grg_he_mag";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addWeapon "sfp_grg86";
		_unit addSecondaryWeaponItem "sfp_grg_he_mag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
	
	case "GRGLOADER": {
	
		comment "Asst. Grg";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_grg_loader";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "sfp_grg_he_mag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "sfp_grg_heat_mag";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
	
	case "GRGAMMO": {
	
		comment "GRG Ammo bearer";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_grg_loader";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "sfp_grg_he_mag";};
		for "_i" from 1 to 2 do {_unit addItemToBackpack "sfp_grg_heat_mag";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};

	// "MG team";
	
	case "MG": {
	
		comment "Machine gunner";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12_ar";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_100Rnd_762x51_ksp58";};
		_unit addBackpack "sfp_backpack_stridssack2000";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "sfp_100Rnd_762x51_ksp58";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon "sfp_ksp58";
		_unit addPrimaryWeaponItem "sfp_100Rnd_762x51_ksp58";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
	
	case "MGA": {
	
		comment "Machine Gunner Assistant";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_backpack_stridssack2000";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 4 do {_unit addItemToBackpack "sfp_100Rnd_762x51_ksp58";};
		_unit addHeadgear _helmet;

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
	
	// "Vehicles";
	
	case "TCOM": {
	
		comment "Tank Commander";
		comment "Add containers";
		_unit forceAddUniform "sfp_m90p_uniform";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12_crew";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addHeadgear "H_HelmetCrew_I";

		comment "Add weapons";
		_unit addWeapon "sfp_ak5dmk2";
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "VCREW": {
	
		comment "Vehicle Crew";
		comment "Add containers";
		_unit forceAddUniform "sfp_m90p_uniform";
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12_crew";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addHeadgear "H_HelmetCrew_I";

		comment "Add weapons";
		_unit addWeapon "sfp_ak5dmk2";
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "TRUCKSL": {
	
		comment "Lorry Leader";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addBackpack "sfp_ra180";
		_unit addHeadgear "sfp_m59w_cap";

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";

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
		_unit addVest "sfp_kroppsskydd12";
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "sfp_handgrenade_shgr2000";};
		for "_i" from 1 to 9 do {_unit addItemToVest "sfp_30Rnd_556x45_Stanag";};
		_unit addHeadgear "sfp_m59w_cap";

		comment "Add weapons";
		_unit addWeapon _rifle;
		_unit addPrimaryWeaponItem "sfp_optic_aimpoint";
		_unit addPrimaryWeaponItem "sfp_dbal2";
		_unit addPrimaryWeaponItem "sfp_30Rnd_556x45_Stanag";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
};