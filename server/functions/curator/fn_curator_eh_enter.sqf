["CuratorEnterUI", {
	params ["_curator"];

	private _curators = missionNamespace getVariable ["curatorsInUI", []];
	if ((_curator in _curators)) exitWith {};

	_curators pushBack _curator;
	missionNamespace setVariable ["curatorsInUI", _curators];

	diag_log format["[ZEUS] Curator entered the menu: %1", _name];
}] call CBA_fnc_addEventHandler;