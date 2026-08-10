/*
    ACE Deployable Rally Point Script
    by Gunter Severloh

    DESCRIPTION
    -----------
    This script lets you create deployable rally points anywhere in your mission for you and
    your teammates to move to using the ACE self-interaction. It works both in SP and MP (hosted
    or dedicated) and can be configured so anyone can deploy a rally point, or only specific units.

    A rally point is created when an allowed unit uses the ACE self-action:
      - An object (camping tent by default) is spawned in front of the player.
      - A map marker is created on the map at the rally point location.
      - A hint pops up stating "Rally point deployed".

    You can allow multiple rally points per side up to a configurable limit.
      - At base, a flagpole (or any object with addAction code) opens a menu that
        lets players choose which rally point they can move to.
      - If only one rally exists then they are moved directly to the rally point.
      - If multiple rally points were deployed then they can pick from a list showing distance to each rally.

    Rally deployment can be restricted in two ways:
      - Minimum distance from a base marker.
      - No deployment if enemy units are closer than a defined radius.

    Players can pack a rally point by using the action on the tent.
      - The tent is removed.
      - The marker is deleted.
      - A hint will show that the rally point was undeployed.

    An optional setting allows players to automatically teleport to their side’s rally
    point on respawn instead of always using the base flag.

    -----------------------------
    HOW TO SETUP - Files and Code
    -----------------------------
    1. Place the script ACE_Deployable_Rally_Point.sqf in your mission folder.

    2. Copy the following code and then paste it into an init.sqf
             DRP_allowedDeployNames = ["s1"];  // s1 is the unit's Variable Name
             [] execVM "ACE_Deployable_Rally_Point.sqf";

             Use the above code to restrict who will deploy a rally point.
             Use the below code to allow everyone to deploy a rally point.

             [] execVM "ACE_Deployable_Rally_Point.sqf";

    ----------------------
    HOW TO SETUP - Editor
    ----------------------
    1. Unit variable name
	   ------------------
	Give the unit(s) who can deploy a rally point a Variable Name in the editor
       and define that in the init.sqf with DRP_allowedDeployNames, unless you want
       everyone to be able to deploy rally points.

    2. Ensure ACE3 mod is loaded in the Arma 3 launcher. Only units that are
       allowed by Variable Name will see the Deploy Rally point ACE self-interaction:

           ACE Self-Actions --> Deploy Rally Point

    3. Flag pole or object
	   -------------------
	   On a flagpole or another object at base, put the following code in its init:
           this addAction ["<t color='#00FF00'>Select Rally Point</t>",
    { params ["_t","_caller","_id","_args"]; [_caller] call DRP_fnc_openRallyMenu; }
    ];

       The addAction will allow you to select any rally points that are deployed and move to them.

    4. Base marker
	   -----------
	Create a marker at your base, give it a Variable Name and then define that name in the:
          // BASE MARKER & DISTANCE RESTRICTION parameter.
       This marker will establish the minimum distance from base required in order to deploy a rally point.

    5. Review the PARAMETERS below and configure accordingly.
*/

// ====================================================================
// PARAMETERS
// ====================================================================

// RALLY POINT SPAWN OBJECT
// Object to spawn as the rally point, refer to the Arma 3 wiki objects list:
// https://community.bistudio.com/wiki/Arma_3:_CfgVehicles_EMPTY
if (isNil "DRP_tentClass") then {
    DRP_tentClass = "RuggedTerminal_01_communications_F";
};

// MARKER TYPE
// Marker type that shows on the map for the rally point.
if (isNil "DRP_markerType") then {
    DRP_markerType  = "mil_start";
};

// MAP MARKER COLOR
// Color of the marker that will show on the map for the rally point.
if (isNil "DRP_markerColor") then {
    DRP_markerColor = "ColorWEST";
};

// MARKER TEXT
// Text that will appear on the map marker.
if (isNil "DRP_markerText") then {
    DRP_markerText = "Rally Point";
};

// AUTO SPAWN
// Unit will automatically be moved to the last rally point if its deployed when parameter is set to true.
// Note: This parameter only works if you dont have "select respawn position" setup in your mission for mp.
if (isNil "DRP_autoRespawnToRally") then {
    DRP_autoRespawnToRally = false;
};

// DEPLOY HINT
// Hint text when deploying a rally point.
if (isNil "DRP_rallyHintText") then {
    DRP_rallyHintText = "Rally point deployed!";
};

// UNDEPLOY TEXT
// Hint text when rally point is undeployed.
if (isNil "DRP_rallyUndeployHintText") then {
    DRP_rallyUndeployHintText = "Rally point undeployed!";
};

// ALLOWED UNITS WHO CAN DEPLOY
// Units allowed to deploy rally points, either all units or a specific unit.
// DRP_allowedDeployNames must contain editor Variable Names as strings, e.g. ["s1","leader1"].
// Empty array [] means: ANY unit can deploy.
if (isNil "DRP_allowedDeployNames") then {
    DRP_allowedDeployNames = [];
};
missionNamespace setVariable ["DRP_allowedDeployNames", DRP_allowedDeployNames];
if (isServer) then { publicVariable "DRP_allowedDeployNames"; };

// NUMBER OF RALLY POINTS
// Set how many rally points can exist at once.
// When this cap is reached, the oldest rally for that side is removed and replaced by the new one.
if (isNil "DRP_maxRallies") then {
    DRP_maxRallies = 3;
};

// BASE MARKER & DISTANCE RESTRICTION
// Set this marker in the editor on your main base.
if (isNil "DRP_baseMarkerName") then {
    DRP_baseMarkerName = "base_marker";
};
missionNamespace setVariable ["DRP_baseMarkerName", DRP_baseMarkerName];
if (isServer) then { publicVariable "DRP_baseMarkerName"; };

// MINIMUM DISTANCE TO DEPLOY
// Minimum distance from base required to deploy a rally point.
if (isNil "DRP_minDistanceFromBase") then {
    DRP_minDistanceFromBase = 150;
};
missionNamespace setVariable ["DRP_minDistanceFromBase", DRP_minDistanceFromBase];
if (isServer) then { publicVariable "DRP_minDistanceFromBase"; };

// ENEMY PROXIMITY RESTRICTION
// Rally point cant be deployed if enemies are closer than this (meters).
if (isNil "DRP_minEnemyDistance") then {
    DRP_minEnemyDistance = 100;
};
missionNamespace setVariable ["DRP_minEnemyDistance", DRP_minEnemyDistance];
if (isServer) then { publicVariable "DRP_minEnemyDistance"; };


// ====================================================================
// SERVER-SIDE FUNCTIONS (TENT + MARKER MANAGEMENT)
// ====================================================================

if (isServer) then {

    if (isNil "DRP_rallies") then {
        DRP_rallies = [];
    };

    DRP_fnc_serverCreateRally = {
        params ["_pos", "_unit"];

        if (!isServer) exitWith {};

        private _side = side _unit;

        private _rallies = missionNamespace getVariable ["DRP_rallies", []];
        private _sideRallies = _rallies select { _x#2 == _side };

        if ((count _sideRallies) >= DRP_maxRallies) then {
            private _oldIndex = -1;
            {
                if (_x#2 == _side) exitWith {
                    _oldIndex = _forEachIndex;
                };
            } forEach _rallies;

            if (_oldIndex > -1) then {
                private _oldEntry  = _rallies select _oldIndex;
                private _oldTent   = _oldEntry#0;
                private _oldMarker = _oldEntry#3;

                if (!isNull _oldTent) then { deleteVehicle _oldTent; };
                if (_oldMarker != "" && {getMarkerColor _oldMarker != ""}) then {
                    deleteMarker _oldMarker;
                };

                _rallies deleteAt _oldIndex;
            };
        };

        private _markerName = format ["DRP_Rally_%1_%2", _side, diag_tickTime];

        private _tent = createVehicle [DRP_tentClass, _pos, [], 0, "NONE"];
        _tent setVariable ["DRP_ownerSide", _side, true];

        private _marker = createMarker [_markerName, _pos];
        _marker setMarkerShape "ICON";
        _marker setMarkerType DRP_markerType;
        _marker setMarkerColor DRP_markerColor;
        _marker setMarkerText DRP_markerText;

        _tent addAction [
            "<t color='#FFFF00'>Pack Rally Point</t>",
            {
                params ["_target", "_caller", "_actionId", "_args"];

                private _rpSide = _target getVariable ["DRP_ownerSide", sideUnknown];

                if (_rpSide != side _caller) exitWith {
                    hint "You are not allowed to pack this rally point.";
                };

                if (!([_caller] call DRP_fnc_canDeployRally)) exitWith {
                    hint "You are not authorized to pack this rally point.";
                };

                _target removeAction _actionId;

                private _tent = _target;

                [_tent] remoteExec ["DRP_fnc_serverRemoveRally", 2];

                hint DRP_rallyUndeployHintText;
            }
        ];

        private _entry = [_tent, getPosATL _tent, _side, _markerName];
        _rallies pushBack _entry;

        missionNamespace setVariable ["DRP_rallies", _rallies, true];
    };

    DRP_fnc_serverRemoveRally = {
        params ["_tent"];

        if (!isServer) exitWith {};

        private _rallies = missionNamespace getVariable ["DRP_rallies", []];
        private _new     = [];

        {
            private _t          = _x#0;
            private _markerName = _x#3;

            if (_t isEqualTo _tent) then {
                if (!isNull _t) then {
                    deleteVehicle _t;
                };
                if (_markerName != "" && {getMarkerColor _markerName != ""}) then {
                    deleteMarker _markerName;
                };
            } else {
                _new pushBack _x;
            };
        } forEach _rallies;

        missionNamespace setVariable ["DRP_rallies", _new, true];
    };

    DRP_fnc_serverRemoveRalliesBySide = {
        params ["_side"];

        if (!isServer) exitWith {};

        private _rallies = missionNamespace getVariable ["DRP_rallies", []];
        private _new     = [];

        {
            private _t          = _x#0;
            private _posSide    = _x#2;
            private _markerName = _x#3;

            if (_posSide == _side) then {
                if (!isNull _t) then {
                    deleteVehicle _t;
                };
                if (_markerName != "" && {getMarkerColor _markerName != ""}) then {
                    deleteMarker _markerName;
                };
            } else {
                _new pushBack _x;
            };
        } forEach _rallies;

        missionNamespace setVariable ["DRP_rallies", _new, true];
    };
};


// ====================================================================
// SHARED FUNCTION: TELEPORT TO RALLY (LAST DEPLOYED FOR YOUR SIDE)
// (used by optional auto-respawn feature)
// ====================================================================

DRP_fnc_teleportToRally = {
    params [["_unit", player, [objNull]]];

    if (isNull _unit) then { _unit = player; };

    private _rallies = missionNamespace getVariable ["DRP_rallies", []];

    if (_rallies isEqualTo []) exitWith {
        hint "No rally point deployed.";
    };

    private _side = side _unit;

    private _sideRallies = _rallies select { _x#2 == _side };

    if (_sideRallies isEqualTo []) exitWith {
        hint "No rally point deployed for your side.";
    };

    private _entry = _sideRallies select ((count _sideRallies) - 1);
    private _tent  = _entry#0;

    if (isNull _tent) exitWith {
        hint "The rally point is no longer available.";
    };

    private _pos = getPosATL _tent;
    _unit setPosATL _pos;
};


// ====================================================================
// CLIENT-SIDE: ACE SELF-INTERACTION + RALLY MENU + RESPAWN
// ====================================================================

if (hasInterface) then {

    DRP_fnc_canDeployRally = {
        params ["_unit"];

        if (isNil "DRP_allowedDeployNames" || {DRP_allowedDeployNames isEqualTo []}) exitWith { true };

        private _vName = vehicleVarName _unit;

        if (_vName isEqualTo "") exitWith { false };

        _vName in DRP_allowedDeployNames
    };

    DRP_fnc_clearRallyActions = {
        params ["_unit"];

        private _ids = _unit getVariable ["DRP_rallyActionIds", []];

        {
            _unit removeAction _x;
        } forEach _ids;

        _unit setVariable ["DRP_rallyActionIds", []];
    };

    DRP_fnc_openRallyMenu = {
        params ["_unit"];

        if (isNull _unit) exitWith {};

        private _rallies = missionNamespace getVariable ["DRP_rallies", []];

        if (_rallies isEqualTo []) exitWith {
            hint "No rally point deployed.";
        };

        private _side = side _unit;
        private _sideRallies = _rallies select { _x#2 == _side };

        if (_sideRallies isEqualTo []) exitWith {
            hint "No rally point deployed for your side.";
        };

        if ((count _sideRallies) == 1) exitWith {
            private _entry = _sideRallies select 0;
            private _tent  = _entry#0;

            if (isNull _tent) exitWith {
                hint "The rally point is no longer available.";
            };

            private _pos = getPosATL _tent;
            _unit setPosATL _pos;
        };

        [_unit] call DRP_fnc_clearRallyActions;

        private _actionIds = [];

        {
            private _idx  = _forEachIndex + 1;
            private _tent = _x#0;

            if (!isNull _tent) then {
                private _pos  = getPosATL _tent;
                private _dist = round (_unit distance2D _pos);
                private _text = format [
                    "<t color='#00FF00'>Rally %1 (%2m)</t>",
                    _idx, _dist
                ];

                private _id = _unit addAction [
                    _text,
                    {
                        params ["_tgt", "_caller", "_actionId", "_args"];
                        private _pos = _args#0;

                        _caller setPosATL _pos;
                        [_caller] call DRP_fnc_clearRallyActions;
                    },
                    [_pos]
                ];

                _actionIds pushBack _id;
            };
        } forEach _sideRallies;

        private _cancelId = _unit addAction [
            "<t color='#FF0000'>Cancel Rally Selection</t>",
            {
                params ["_tgt", "_caller", "_actionId", "_args"];
                [_caller] call DRP_fnc_clearRallyActions;
            }
        ];
        _actionIds pushBack _cancelId;

        _unit setVariable ["DRP_rallyActionIds", _actionIds];
    };

    // === UPDATED: spawn rally 5m in front of player ===
    DRP_fnc_deployRallyACE = {
    params ["_unit"];

    if (isNull _unit) exitWith {};

    if (!([_unit] call DRP_fnc_canDeployRally)) exitWith {
        hint "You are not allowed to deploy a rally point.";
    };

    private _pos = _unit modelToWorld [0, 5, 0];

    private _baseMarkerName = if (isNil "DRP_baseMarkerName") then {"base_marker"} else {DRP_baseMarkerName};
    private _minDistFromBase = if (isNil "DRP_minDistanceFromBase") then {150} else {DRP_minDistanceFromBase};
    private _minEnemyDist = if (isNil "DRP_minEnemyDistance") then {0} else {DRP_minEnemyDistance};
    private _debug = if (isNil "DRP_debug") then {false} else {DRP_debug};

    private _failMsg = "";

    if (_minDistFromBase > 0) then {
        if (!(_baseMarkerName in allMapMarkers)) then {
            _failMsg = format [
                "Cannot deploy rally: base marker '%1' not found. Check the marker VARIABLE NAME in Eden.",
                _baseMarkerName
            ];
        } else {
            private _basePos = getMarkerPos _baseMarkerName;
            private _distToBase = _pos distance2D _basePos;

            if (_debug) then {
                private _m = format ["[DRP] base=%1 dist=%2 min=%3", _baseMarkerName, round _distToBase, _minDistFromBase];
                systemChat _m;
                diag_log _m;
            };

            if (_distToBase < _minDistFromBase) then {
                _failMsg = format [
                    "Move at least %1 meters away from base to deploy a rally point. (Current: %2m)",
                    _minDistFromBase,
                    round _distToBase
                ];
            };
        };
    };

    if (_failMsg == "" && {_minEnemyDist > 0}) then {
        private _mySide = side group _unit;

        private _nearEnemies = allUnits select {
            alive _x &&
            {_x != _unit} &&
            {_x distance2D _unit < _minEnemyDist} &&
            {(_mySide getFriend (side group _x)) < 0.6}
        };

        if (_debug) then {
            private _m2 = format ["[DRP] enemiesWithin=%1 radius=%2", count _nearEnemies, _minEnemyDist];
            systemChat _m2;
            diag_log _m2;
        };

        if ((count _nearEnemies) > 0) then {
            _failMsg = format [
                "Cannot deploy rally: enemy forces detected within %1 meters.",
                _minEnemyDist
            ];
        };
    };

    if (_failMsg != "") exitWith { hint _failMsg; };

    [_pos, _unit] remoteExec ["DRP_fnc_serverCreateRally", 2];

    hint DRP_rallyHintText;
};




    DRP_fnc_setupUnitLocal = {
        params ["_unit"];

        if (isNull _unit) exitWith {};

        if (_unit getVariable ["DRP_ehAdded", false]) exitWith {};
        _unit setVariable ["DRP_ehAdded", true];

        if (isClass (configFile >> "CfgPatches" >> "ace_interact_menu")) then {

            if ([_unit] call DRP_fnc_canDeployRally) then {

                private _action = [
                    "DRP_DeployRallyPoint",
                    "Deploy Rally Point",
                    "",
                    {
                        params ["_target", "_player", "_params"];
                        [_player] call DRP_fnc_deployRallyACE;
                    },
                    {
                        params ["_target", "_player", "_params"];
                        [_player] call DRP_fnc_canDeployRally
                    }
                ] call ace_interact_menu_fnc_createAction;

                [_unit, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
            };
        };
    };

    waitUntil { !isNull player };

    [player] call DRP_fnc_setupUnitLocal;

    player addEventHandler ["Respawn", {
        params ["_newUnit", "_corpse"];

        [_newUnit] call DRP_fnc_setupUnitLocal;

        if (DRP_autoRespawnToRally) then {
            [_newUnit] call DRP_fnc_teleportToRally;
        };
    }];

    addMissionEventHandler ["TeamSwitch", {
        params ["_oldUnit", "_newUnit"];

        if (!isNull _newUnit) then {
            [_newUnit] call DRP_fnc_setupUnitLocal;
        };
    }];
};
