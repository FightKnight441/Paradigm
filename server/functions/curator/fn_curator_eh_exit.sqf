["CuratorExitUI", {
	params ["_curator"];

	private _curators = missionNamespace getVariable ["curatorsInUI", []];
	private _uid = getPlayerUID _curator;

	if (!(_curator in _curators)) exitWith {};

	_curators deleteAt ( _curators find _uid );
	missionNamespace setVariable ["curatorsInUI", _curators];

	diag_log format["[ZEUS] Curator has exited the menu: %1", _name];
}] call CBA_fnc_addEventHandler;