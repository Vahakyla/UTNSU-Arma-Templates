_player = _This select 0; // Select Player

if (side _player == west) then 
{
   [west,(-1)] call BIS_fnc_respawnTickets; // Decrease tickets by 1
  
};

if ([west] call BIS_fnc_respawnTickets <= 0) then
{
   ["Initialize", [player, [], true]] call BIS_fnc_EGSpectator; //Switch to spectator
  //May need to delete old unit too
};