[ muster_flag,   
"Deploy to Assembly Area.", 
"\a3\data_f_destroyer\data\UI\IGUI\Cfg\holdactions\holdAction_loadVehicle_ca.paa",  
 "\a3\data_f_destroyer\data\UI\IGUI\Cfg\holdactions\holdAction_loadVehicle_ca.paa",  
 "_this distance _target < 5",  
 "_caller distance _target < 5",  
 {},  
 {},  
 {[player setPos getMarkerPos "assembly"];},  
 {},  
 [],  
 10,  
 1,  
 false,  
 true] remoteExec ["BIS_fnc_holdActionAdd",[0,-2] select isDedicated,true];
 
 this setVariable ['isOfficer', true, true];

pole1 addaction ["Teleport to pole 2", {_this select 1 setpos getpos pole2;}];
pole2 addaction ["Teleport to pole 1", {_this select 1 setpos getpos pole1;}]; 

 [this,["Teleport to the Hotel",  
        { 
        (_this select 1) setpos [markerPos "assembly" select 0, markerPos "assembly" select 1, 170]; 
        }, 
        nil,  
        1,  
        true,  
        true,  
        "",  
        "(_target distance _this) < 4 && _this getVariable ['isUtti',false]",   
        3,  
        false,  
        "",  
        "" ]] remoteExec ["addAction",0,true];
		
		
		
		0 = this addaction ["Teleport",{(_this select 1) setpos [markerPos "assembly" select 0, markerPos "assembly" select 1, 170]}];