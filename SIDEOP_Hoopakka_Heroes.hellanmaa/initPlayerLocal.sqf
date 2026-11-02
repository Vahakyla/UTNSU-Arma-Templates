player setVariable ["TAG_StartLoadout", getUnitLoadout player];
player addEventHandler ["Respawn", { private _loadout = player getVariable "TAG_StartLoadout"; if (!isNil "_loadout") then { player setUnitLoadout _loadout; }; }];

//This executes the briefing script
brief = [] execVM "brief\briefing.sqf";

_player = _This select 0; // Select Player

if (side _player == west) then 
{
   [west,(1)] call BIS_fnc_respawnTickets; // Increase tickets by 1
};