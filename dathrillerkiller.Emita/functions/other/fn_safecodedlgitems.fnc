private ["_art","_codeInput"];

_art 	   = _this select 0;

if (_art == "submit") then
{
	_codeInput = ctrlText 2920;
	
	if (_codeInput != safeCodeSet) exitWith
	{
		systemChat  "That code is incorrect!";
		format['[0,1,2,["robwrongcode", %1]] execVM "bankrob.sqf";', _safeh] call network_broadcast;
		format['systemChat "Speedys Security INC Has Detected An Attempt To Hack Into The Bank Safe!";'] call network_broadcast;
		('if(iscop) then {playsound "beep";}') call network_broadcast;
		sleep 4;
		format['systemChat "Speedys Security INC Has Reset The Safe Master Code!"'] call network_broadcast;
		[] call Main_ResetSafeCode;
	};
	
	if (_codeInput == safeCodeSet) then
	{
		player sideChat "The code is correct! The code has been reset by Speedys Security INC automatic bank reset system!";
		format['[0,1,2,["robstart", %1]] execVM "bankrob.sqf";', _safeh] call network_broadcast;
        ('if(iscop) then {playsound "beep";}') call network_broadcast;
        "if (iscop) then {player sideChat ""ATTENTION All Officers 10-19 to the Bank, currently being robbed by armed gunmen!""};" call network_broadcast;
		[] call Main_ResetSafeCode;
		if (player distance safe1 <= 3) then
		{
	22254 cutRsc["RL_Dialog_loading", "plain"];
	sleep 1;
	player sidechat "This might take 65 sec. or longer!";
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Starting Cracking",0] call Main_LoadingSetText;
	[1112, "Cracking...",1] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",2] call Main_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",3] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",4] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",5] call Main_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",6] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",7] call Main_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",8] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Cracking...",9] call Main_LoadingSetText;
	sleep 1;
	[1112, "Cracking...",10] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	[1112, "Taking money...",15] call Main_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",20] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",25] call Main_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",30] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",35] call Main_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",40] call Main_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",45] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",50] call Main_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	waituntil {animationstate player != "AinvPknlMstpSlayWrflDnon_medic"};
	[1112, "Taking money...",55] call Main_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",60] call Main_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",65] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",70] call Main_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",75] call Main_LoadingSetText;
	sleep 1;
	[1112, "Taking money...",80] call Main_LoadingSetText;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 1;
	[1112, "Taking money...",85] call Main_LoadingSetText;
	sleep 1;
	player playmove "AinvPknlMstpSlayWrflDnon_medic";
	[1112, "Taking money...",90] call Main_LoadingSetText;
	sleep 1;
	[1112, "RUN!!!!!!!!!!!",100] call Main_LoadingSetText;
	22254 cutRsc["Default", "plain"];
	[player,"Robbed the Bank",wantedamountforbank]call cdb_addWarrant;
	[0,1,2,["ausrauben", Safe1]] execVM "bankrob.sqf";
		};
	};
};