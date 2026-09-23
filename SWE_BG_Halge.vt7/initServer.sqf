[missionNamespace, 1] call BIS_fnc_respawnTickets;
[missionNamespace, -1] call BIS_fnc_respawnTickets;

// Handler to enable voice for characters who have been KO'd
["ace_unconscious", {
    params ["_unit", "_state"];
    //sleep 2; // I want to give the ACE system time to do whatever it is doing
    _unit setVariable ["tf_voiceVolume", 1, true]; // Re-enables voice
    _unit setVariable ["tf_unable_to_use_radio", false, true]; // Re-enables radio
}] call CBA_fnc_addEventHandler;