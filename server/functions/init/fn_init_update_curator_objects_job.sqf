/*
	File: fn_init_update_curator_objects_job.sqf
	Author: 'DJ' Dijksterhuis
	Public: No

	Description:
		Updates the objects curators can edit in the mission.

	Parameter(s):
		_tickDelay - How often to update curators with objects in seconds, default 5 seconds [Number]

	Returns:
		Nothing

	Example(s):
		[5] call para_s_fnc_init_update_curator_objects_job;
*/

params [["_tickDelay", 5]]

[
	"update_curator_objects", 
	{allCurators apply { _x addCuratorEditableObjects [vehicles + allUnits]}},
	[],
	_tickDelay
] call para_g_fnc_scheduler_add_job;