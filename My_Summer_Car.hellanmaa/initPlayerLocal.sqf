player setVariable ["TAG_StartLoadout", getUnitLoadout player];
player addEventHandler ["Respawn", { private _loadout = player getVariable "TAG_StartLoadout"; if (!isNil "_loadout") then { player setUnitLoadout _loadout; }; }];

//This executes the briefing script
brief = [] execVM "brief\briefing.sqf";

if(playerSide isEqualTo independent) then {
	player addEventHandler [
		"Respawn", 
		{
			player hideObjectGlobal true;
			player enableSimulation false;
			[
				"Initialize", 
				[	
					player, 	
					[independent], 	//Allowed sides
					false, 		//Allow spectate AI
					true, 		//Allow free cam, probably want this off for a PvP
					true		//Allow 3rd person cam
				]
			] call BIS_fnc_EGSpectator;
		}
	];
};