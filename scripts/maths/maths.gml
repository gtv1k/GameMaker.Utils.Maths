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

//Returns the largest value from its inputs.
function max()
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

//Returns -1 if input is negative, 0 if input is zero (or within the given threshold), 1 if input is positive.
function sign_with_zero(input, threshold = 0.00001)
{
	return (abs(value) < threshold) ? 0 : sign(value);
}