["CuratorConnect", {
	params ["_curator"];

	private _curators = missionNamespace getVariable ["curators", []];

	if (_curator in _curators) exitWith {};

	_curators pushBack _curator;
	missionNamespace setVariable ["curators", _curators];

	diag_log format["[+] Curator connected: %1", _curator];
}] call CBA_fnc_addEventHandler;