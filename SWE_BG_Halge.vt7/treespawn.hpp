T_Betula_pendula_3s
T_Betula_pendula_3f
t_PiceaAbies_3f
t_FagusSylvatica_2sb
T_Betula_pendula_2s
T_Betula_pendula_2w
B_Corylus_heterophylla_2
b_sambucusNigra_1s
t_PiceaAbies_1s

for "_i" from 1 to 10 do { 
    private _randomRot = [0,360] call BIS_fnc_randomInt; 
    private _tree = selectRandom ["a3\plants_f\tree\t_pinuss1s_f.p3d","a3\plants_f\tree\t_pinuss2s_b_f.p3d","a3\plants_f\tree\t_pinuss2s_f.p3d"]; 
    private _location = getPosASL this;  
    private _RanPosx = (sin (random 360)) * (random 30); 
    private _RanPosy = (cos (random 360)) * (random 30); 
    private _object = createSimpleObject [(_tree), (_location), false]; 
    [_object, [_randomRot,0,0]] call BIS_fnc_setObjectRotation; 
    _object setPosASL ([(_location select 0) + _RanPosx,(_location select 1)+_RanPosy,(getTerrainHeightASL[(_location select 0) + _RanPosx,(_location select 1)+_RanPosy])]); 
}; 
deleteVehicle this; 