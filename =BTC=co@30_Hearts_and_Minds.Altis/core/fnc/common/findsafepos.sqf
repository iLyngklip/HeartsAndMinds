
private ["_return_pos","_check_pos","_random_area"];

_check_pos = _this select 0;
_random_area = _this select 1;

for "_i" from 0 to 4 do {
	_return_pos = [_check_pos, 0, _random_area, 13, 0, 60 * (pi / 180), 0] call BIS_fnc_findSafePos;
	if (count _return_pos == 2) exitWith {_return_pos = [_return_pos select 0, _return_pos select 1, 0];};
	_random_area = _random_area * 1.5;
};
_return_pos