	private ["_message"];
	if ((PO1_id) or (EMTBasic_id) or (PSO_id)) then
	{
	    _message = format["%1 has cleared a checkpoint (200m).", name player];
		["ALL",["isCop",_message,2],"network_chat",false,true]call network_MPExec;
	    {
	        if((_x getVariable "AM_CP") == 1) then 
        	{
	            deleteVehicle _x;
	        };
	    }count nearestObjects[player,["All"],200];
    }
	else
	{
		_message = format["%1 Has Attempted To Clear A Checkpoint (200m). This Can Only Be Done By Holding The Proper Rank!", name player];
		["ALL",["isCop",_message,2],"network_chat",false,true]call network_MPExec;
	};