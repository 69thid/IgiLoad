IL_EV_Count = 0;
IL_Veh_Array = [];

waitUntil
{
    time > 0;
    scriptDone ([player] execVM "IgiLoad\IgiLoad.sqf");
};

{
	if ((typeOf _x) in (IL_Supported_Vehicles_All)) then
	{
		IL_Veh_Array = IL_Veh_Array + [_x];
		waitUntil
        {
            scriptDone ([_x] execVM "IgiLoad\IgiLoad.sqf");
        };
	};
} forEach (vehicles);

while {true} do
{
	sleep (IL_Check_Veh_Min + (random (IL_Check_Veh_Max - IL_Check_Veh_Min)));

	//Delete vehicles from "IL_Veh_Array" if not in "vehicles"
	{
		if !(_x in vehicles) then
		{
			IL_Veh_Array = IL_Veh_Array - [_x];
		};
	} forEach (IL_Veh_Array);
	{
		if (((typeOf _x) in (IL_Supported_Vehicles_All)) && !(_x in IL_Veh_Array)) then
		{
			IL_Veh_Array = IL_Veh_Array + [_x];
            waitUntil
            {
                scriptDone ([_x] execVM "IgiLoad\IgiLoad.sqf");
            };
		};
	} forEach (vehicles);
};
