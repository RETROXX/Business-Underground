/*
 File: fn_huntingKit.sqf
 Author: Nikos (Ravenheart)
 
 Description: Hunting Kit helps to track animals. To be used at the Hunting Area.
 
*/
private["_foundAnimal","_foundDistance","_foundDirection"];
closeDialog 0;
_check_animals = ["Hen_Random_F","Cock_Random_F","Goat_Random_F","Sheep_Random_F"]; //What animals to look for.
_check_distance = 200; //How should the kit look.
if (vehicle player != player) exitWith {hint "You cannot examine the ground from within a vehicle!"};
_track = [typeof (nearestObjects [player, _check_animals, _check_distance] select 0), getpos player distance getpos (nearestObjects [player, _check_animals, _check_distance] select 0), player getreldir (nearestObjects [player, _check_animals, _check_distance] select 0)];
_foundAnimal = "void";
if (_track select 0 == "Hen_Random_F") then {_foundAnimal = "Hen";};
if (_track select 0 == "Cock_Random_F") then {_foundAnimal = "Rooster";};
if (_track select 0 == "Goat_Random_F") then {_foundAnimal = "Goat";};
if (_track select 0 == "Sheep_Random_F") then {_foundAnimal = "Sheep";};
if (_track select 0 == "Rabbit_F") then {_foundAnimal = "Rabbit";};
_foundDistance = "Old";
if (_track select 1 <= 100) then {_foundDistance = "Recent";};
if (_track select 1 <= 50) then {_foundDistance = "Very Recent";};
_foundDirection = "Ahead";
if (_track select 2 >= 45 && _track select 2 < 135) then {_foundDirection = "auf der Rechten Seite!";};
if (_track select 2 >= 135 && _track select 2 < 225) then {_foundDirection = "hinter Dir !";};
if (_track select 2 >= 225 && _track select 2 < 315) then {_foundDirection = "auf der Linken Seite!";};
if (_foundAnimal == "void") then {
 hint "No traces of animals found";
} else {
 hint format ["Da sind %1 Spuren von einem / einer %2 leading %3.",_foundDistance,_foundAnimal,_foundDirection];
};