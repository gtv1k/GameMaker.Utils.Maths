function bool2(x = false, y = false) constructor
{
    self.x = x;
	self.y = y;
	
	#region Operators
	
	//Is equal to
	static __eq__=function(input)
	{
		var result = new bool2();
		
		if is_struct(input) //is bool2
		{
			result.x = (self.x == input.x);
			result.y = (self.y == input.y);
		}
		else //is bool
		{	
			result.x = (self.x == input);
			result.y = (self.y == input);
		}
	
		return result;
	}
	
	#endregion
	
	#region Methods
	
	#endregion
}