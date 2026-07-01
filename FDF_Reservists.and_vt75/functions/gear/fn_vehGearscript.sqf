//note if trying to add a backpack to a vehicle inventory use "addBackpackCargoGlobal" instead of "addItemCargoGlobal". Because BIS

//call with: [this, "CAR"] call Gib_fnc_vehGearscript;

private ["_vehicle", "_type"];

_vehicle = _this select 0;
_type = _this select 1;

if (!local _vehicle) exitWith {};

	clearItemCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearWeaponCargoGlobal _vehicle;
	clearBackpackCargoGlobal _vehicle;


#include "..\..\loadouts\FDF Reservists Vehicles (NFCW).sqf"