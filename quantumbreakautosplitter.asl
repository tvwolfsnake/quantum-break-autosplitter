//welcome to chloe's sorta-loadless quantum break autosplitter
//this is the first coding I've ever done since the QBASIC unit in middle school

state("QuantumBreak")
{
	//define variables
	byte load : 0x1216170, 0x6B8, 0x4A8, 0x20, 0xF0, 0x7A0;
	byte chapter : 0x121A080, 0x130;
}

init
{
	vars.split = 0;
}

update
{
	vars.split = old.chapter;
}

start
{
	//chapter sets itself to 0 on startup screen, load starts at 2
	
	if (current.load == 2 && current.chapter == 0)
	{
	return true;
	}
}

split
{	
	if (current.chapter > old.chapter && old.chapter > 0)
	{
	return true;
	}
}

isLoading
{
	//load sets itself to 3 on chapter loads and 2 on (some) other load screens.
	//it also occasionally sets to 2 for a second in other places.
	//I think the address I found actually CHECKS the loads...
	//but it's the only reliable load counter I've found.
	
	if (current.load > 1)
	{
	return true;
	}
	else
	{
	return false;
	}
}