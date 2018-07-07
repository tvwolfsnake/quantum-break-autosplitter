//welcome to chloe's mostly-loadless quantum break autosplitter
//this is the first coding I've ever done since the QBASIC unit in middle school

state("QuantumBreak")
{
	//define variables
	byte load : 0x1216170, 0x6B8, 0x4A8, 0x20, 0xF0, 0x7A0;
	byte chapter : 0x121A080, 0x130;
}

start
{
	//chapter sets itself to 0 on startup screen, load starts at 2 and then goes to 3
	//however, if you false start and reset to main menu before the first save in 1-1,
	//for whatever reason, chapter is still set to 0 on menu.
	//3 is later than 2 as a start point, but it's consistent across all possibilities.
	
	if (current.load == 3 && current.chapter == 0)
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
	//load var sets itself to 3 or 4 on chapter loads and 2 on (some) other load screens.
	//it also occasionally sets to 2 for a second in other places.
	
	if (current.load > 1)
	{
	return true;
	}
	else
	{
	return false;
	}
}
