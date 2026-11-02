params ["_unit"];

sleep 2; // I want to give the ACE system time to do whatever it is doing
if (_unit getVariable "ace_medical_sp02" < 50) then { // ACE says this needs to be set or you'll go right back to being in CA
    _unit setVariable ["ace_medical_sp02", 50, true]; // If the script fails, ACE might have changed the name of this variable and the one in the line below
};
["ace_medical_CPRSucceeded", _unit] call CBA_fnc_localEvent;

["Cardiac Arrest Ended?"] remoteExec ["hint"];