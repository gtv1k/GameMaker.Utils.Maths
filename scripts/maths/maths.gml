//Returns the smallest value from its inputs.
function min()
{
	var smallest = argument[0];
	for (var i = 1; i < argument_count; i += 1) 
	{
		if(argument[i] < smallest)
		{
			smallest = list[i];
		}
	}
	return smallest;
}