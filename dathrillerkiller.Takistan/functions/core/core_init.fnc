[]spawn core_loop;
if (dtk_client)then {
[300,core_paycheck]call core_AddLoop;
[player]call core_removeEventHandlers;
};

{
	if (isNil _x)then {
		call compile format ["%1 = objNull",_x];
	};
}foreach call core_units;
