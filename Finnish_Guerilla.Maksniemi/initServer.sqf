[missionNamespace, 1] call BIS_fnc_respawnTickets;
[missionNamespace, -1] call BIS_fnc_respawnTickets;

// Handler to enable voice for characters who have been KO'd
["ace_unconscious", {
    params ["_unit", "_state"];
    //sleep 2; // I want to give the ACE system time to do whatever it is doing
    _unit setVariable ["tf_voiceVolume", 1, true]; // Re-enables voice
    _unit setVariable ["tf_unable_to_use_radio", false, true]; // Re-enables radio
}] call CBA_fnc_addEventHandler;

// Fairly certain this will prevent cardiac arrest state from persisting
["ace_cardiacArrest", {
    params ["_unit", "_state"];

    // Usually we want to allow AI to die from CA but for this training it seems reasonable
    // to give the AI resistance to CA just like players
    if (isplayer _unit) then {
        // I'm thinking that moving it to a VM might help since we can sleep it and let the state machine do its thing.
        [_unit] execVM ["cancelCardiacArrest.sqf"];
    };
    //"Cardiac Arrest Ended?" remoteExec ["hint"];
}] call CBA_fnc_addEventHandler;

[ muster_flag,   
"Deploy to Assembly Area.", 
"\a3\data_f_destroyer\data\UI\IGUI\Cfg\holdactions\holdAction_loadVehicle_ca.paa",  
 "\a3\data_f_destroyer\data\UI\IGUI\Cfg\holdactions\holdAction_loadVehicle_ca.paa",  
 "_this distance _target < 5",  
 "_caller distance _target < 5",  
 {},  
 {},  
 {[player moveInCargo spawnbus];},  
 {},  
 [],  
 10,  
 0,  
 false,  
 true] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];