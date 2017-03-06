disableSerialization;
_diag = findDisplay 3000;
_list = _diag displayCtrl 3023;
_array = getArray(missionConfigFile >> "cfgMsg" >> "msgSmiley" >> "smileys");
{
	_list lbAdd format [" %1   =    %2", _x select 0, _x select 2];
}forEach _array;