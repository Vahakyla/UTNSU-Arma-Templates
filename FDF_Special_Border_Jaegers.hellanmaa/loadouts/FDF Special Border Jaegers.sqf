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
	] select floor random 11;
	
	_hat = [
	"Flex_CUP_FIN_Boonie_Wood",
	"Flex_CUP_FIN_Patrol_cap"
	] select floor random 2;
	
	_offhat = [
	"Flex_CUP_FIN_Beret_Army",
	"Flex_CUP_FIN_Boonie_Wood",
	"Flex_CUP_FIN_Patrol_cap"
	] select floor random 3;
	
	switch (_type) do {
	// "Company Command";
	
	case "OFF": {
	
		comment "Jaeger CO";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest "CUP_V_O_RUS_RPS_Smersh_AK_Green";
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addHeadgear _offhat;

		comment "Add weapons";
		_unit addWeapon "bnae_rk95r_virtual";
		_unit addPrimaryWeaponItem "bnae_suppressor_v2_virtual";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addPrimaryWeaponItem "CUP_optic_ACOG";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "CUP_muzzle_snds_M9";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};

	// "Detachment";
	
	case "SL": {
	
		comment "Jaeger Squad Leader";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";
		_unit addVest "CUP_V_RUS_Smersh_New_Full";
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 8 do {_unit addItemToVest "NFCW_30Rnd_762x39_RK62_Mag";};
		_unit addBackpack "TFAR_rt1523g_big_bwmod";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "NFCW_30Rnd_762x39_RK62_Tracer_Mag";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "bnae_rk95r_virtual";
		_unit addPrimaryWeaponItem "bnae_suppressor_v2_virtual";
		_unit addPrimaryWeaponItem "NFCW_30Rnd_762x39_RK62_Mag";
		_unit addPrimaryWeaponItem "CUP_optic_ACOG";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_muzzle_snds_M9";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
	
	case "CM": {

		comment "Jaeger Medic";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};	
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_EntrenchingTool";
		_unit addVest "CUP_V_O_RUS_RPS_Smersh_AK_Green";
		for "_i" from 1 to 4 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_556x45_G36_wdl";};
		_unit addBackpack "CUP_B_Raid_bag_SSO_Ataka_2_Green";
		for "_i" from 1 to 40 do {_unit addItemToBackpack "ACE_fieldDressing";};
		for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
		for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
		for "_i" from 1 to 12 do {_unit addItemToBackpack "ACE_tourniquet";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV";};
		for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_bloodIV_500";};
		_unit addItemToBackpack "ACE_painkillers";
		_unit addItemToBackpack "ACE_personalAidKit";
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "CUP_arifle_G36C_VFG_wdl";
		_unit addPrimaryWeaponItem "CUP_muzzle_snds_G36_wood";
		_unit addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_wdl";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight_wdl";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_muzzle_snds_M9";
		
		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
		
	case "TL": {
	
		comment "Jaeger Team Leader";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addItemToUniform "ACE_MapTools";		
		_unit addVest "CUP_V_RUS_Smersh_New_Full";
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellGreen";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_556x45_G36_wdl";};
		_unit addBackpack "CUP_B_Raid_bag_SSO_Ataka_2_Green";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "CUP_arifle_G36C_VFG_wdl";
		_unit addPrimaryWeaponItem "CUP_muzzle_snds_G36_wood";
		_unit addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_wdl";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight_wdl";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_muzzle_snds_M9";
		_unit addWeapon "Binocular";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
		
	case "RFL": {
	
		comment "Jaeger";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "CUP_V_O_RUS_RPS_Smersh_AK_Green";
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_556x45_G36_wdl";};
		_unit addBackpack "CUP_B_Raid_bag_SSO_Ataka_2_Green";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "CUP_arifle_G36C_VFG_wdl";
		_unit addPrimaryWeaponItem "CUP_muzzle_snds_G36_wood";
		_unit addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_wdl";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight_wdl";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_muzzle_snds_M9";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "AR": {
	
		comment "Jaeger Machinegunner";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "CUP_V_O_RUS_RPS_Smersh_PKP_Green";
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";};
		_unit addBackpack "CUP_B_Raid_bag_SSO_Ataka_2_Green";
		for "_i" from 1 to 2 do {_unit addItemToBackpack "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "CUP_lmg_PKM_top_rail_B50_vfg";
		_unit addPrimaryWeaponItem "CUP_muzzle_snds_KZRZP_PK_woodland";
		_unit addPrimaryWeaponItem "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Red_M";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_muzzle_snds_M9";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
				
	case "BOOM": {
	
		comment "Jaeger EOD";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "CUP_V_O_RUS_RPS_Smersh_VOG_Green";
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_30Rnd_556x45_G36_wdl";};
		_unit addBackpack "CUP_B_Raid_bag_SSO_Ataka_2_Green";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		_unit addItemToBackpack "ACE_Clacker";
		_unit addItemToBackpack "ACE_DefusalKit";
		for "_i" from 1 to 8 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "CUP_arifle_G36C_VFG_wdl";
		_unit addPrimaryWeaponItem "CUP_muzzle_snds_G36_wood";
		_unit addPrimaryWeaponItem "CUP_30Rnd_556x45_G36_wdl";
		_unit addPrimaryWeaponItem "CUP_optic_CompM4";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight_wdl";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_muzzle_snds_M9";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	case "SCOUT": {
	
		comment "Scout Sniper";
		comment "Add containers";
		_unit forceAddUniform _uniform;
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "CUP_V_O_RUS_RPS_Smersh_SVD_Green";
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M61SmokeGrenade";};
		for "_i" from 1 to 2 do {_unit addItemToVest "NFCW_M43Grenade";};
		for "_i" from 1 to 8 do {_unit addItemToVest "CUP_5Rnd_86x70_L115A1";};
		_unit addBackpack "CUP_B_Raid_bag_SSO_Ataka_2_Green";
		_unit addItemToBackpack "ACE_EntrenchingTool";
		for "_i" from 1 to 8 do {_unit addItemToBackpack "CUP_5Rnd_86x70_L115A1";};
		for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addItemToBackpack "ACE_RangeCard";
		_unit addHeadgear _hat;

		comment "Add weapons";
		_unit addWeapon "bnae_trg42_mmrs_virtual";
		_unit addPrimaryWeaponItem "bnae_silencer_virtual";
		_unit addPrimaryWeaponItem "CUP_5Rnd_86x70_L115A1";
		_unit addPrimaryWeaponItem "CUP_optic_SB_3_12x50_PMII";
		_unit addPrimaryWeaponItem "CUP_bipod_VLTOR_Modpod_black";		
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";
		_unit addHandgunItem "CUP_muzzle_snds_M9";

		comment "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
};