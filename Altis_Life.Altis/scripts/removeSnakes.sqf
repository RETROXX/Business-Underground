/*
 File: removeSnakes.sqf
 Author: unknown, published by suffer4real
 Modified by: blackfisch
 Description:
 Remove all snakes
*/
0 spawn 
{
 for "_i" from 0 to 1 step 0 do 
 {
 {
 if ((agent _x isKindOf "Snake_random_F")) then { deleteVehicle agent _x; };
 } forEach agents;
 sleep 10;
 };
};