["CuratorDisconnect", {
	params ["_unit", "_id", "_uid", "_name"];

	private _curators = missionNamespace getVariable ["curators", []];

	if (_uid in _curators) exitWith {};

	_curators = _curators - [_uid];
	missionNamespace setVariable ["curators", _curators];

	diag_log format["[+] Curator disconnected: %1", _curator];
}] call CBA_fnc_addEventHandler;