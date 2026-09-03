switch (_type) do {
	//POTUS;
	
	case "VIP": {

		// "The Important One";
		// "Add containers";
		_unit forceAddUniform "U_I_ParadeUniform_01_AAF_F";
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};	
		_unit addItemToUniform "ACE_Flashlight_XL50";
		_unit addVest "CUP_V_B_PASGT_no_bags_OD";
		for "_i" from 1 to 4 do {_unit addItemToVest "NFCW_14Rnd_9x19_PIST_80_Mag";};
		_unit addHeadgear "H_ParadeDressCap_01_AAF_F";

		// "Add weapons";
		_unit addWeapon "NFCW_9_PIST_80_91";
		_unit addHandgunItem "NFCW_14Rnd_9x19_PIST_80_Mag";
		
		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
	};
	
	//Close Protection Team
	
		case "AGENTTL": {

		// "Close Protection Team Leader";
		// "Add containers";
		_unit forceAddUniform "U_C_FormalSuit_01_black_F";
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};	
		_unit addItemToUniform "ACE_Flashlight_XL50";		
		_unit addVest "CFP_FAPC_Light_OGA";
		for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
		for "_i" from 1 to 9 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "B_LegStrapBag_black_F";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addHeadgear "H_WirelessEarpiece_F";

		// "Add weapons";		
		_unit addWeapon "CUP_smg_MP5A5";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight_MP5";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";

		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_anprc152";
	};
	
		case "AGENT": {

		// "Close Protection Agent";
		// "Add containers";
		_unit forceAddUniform "U_C_FormalSuit_01_black_F";
		for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
		for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_epinephrine";};
		for "_i" from 1 to 10 do {_unit addItemToUniform "ACE_fieldDressing";};
		for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_tourniquet";};		
		_unit addItemToUniform "ACE_Flashlight_XL50";
		for "_i" from 1 to 5 do {_unit addItemToUniform "16Rnd_9x21_Mag";};
		_unit addVest "CFP_FAPC_Light_OGA";
		for "_i" from 1 to 2 do {_unit addItemToVest "ACE_M84";};
		for "_i" from 1 to 9 do {_unit addItemToVest "CUP_30Rnd_9x19_MP5";};
		_unit addBackpack "B_LegStrapBag_black_F";
		for "_i" from 1 to 5 do {_unit addItemToBackpack "16Rnd_9x21_Mag";};
		_unit addHeadgear "H_WirelessEarpiece_F";

		// "Add weapons";		
		_unit addWeapon "CUP_smg_MP5A5";
		_unit addPrimaryWeaponItem "CUP_acc_Flashlight_MP5";
		_unit addPrimaryWeaponItem "CUP_30Rnd_9x19_MP5";
		_unit addWeapon "hgun_P07_F";
		_unit addHandgunItem "16Rnd_9x21_Mag";

		// "Add items";
		_unit linkItem "ItemMap";
		_unit linkItem "ItemCompass";
		_unit linkItem "ItemWatch";
		_unit linkItem "TFAR_rf7800str";
	};
};
