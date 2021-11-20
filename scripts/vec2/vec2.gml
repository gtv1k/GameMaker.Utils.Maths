function vec2(x = 0, y = 0) constructor
{
    self.x = x;
	self.y = y;
	
	#region Operators
	
	static __mul__=function(input)
	{
		var result = new vec2();
		
		if is_struct(input) //is vec2
		{
			result.x = self.x * input.x;
			result.y = self.y * input.y;
		}
		else //is number
		{	
			result.x = self.x * input;
			result.y = self.y * input;
		}
	
		return result;
	}
	
	static __div__=function(input)
	{
		var result = new vec2();
		
		if is_struct(input) //is vec2
		{
			result.x = self.x / input.x;
			result.y = self.y / input.y;
		}
		else //is number
		{	
			result.x = self.x / input;
			result.y = self.y / input;
		}
	
		return result;
	}
	
	
	static __add__=function(input)
	{
		var result = new vec2();
		
		if is_struct(input) //is vec2
		{
			result.x = self.x + input.x;
			result.y = self.y + input.y;
		}
		else //is number
		{	
			result.x = self.x + input;
			result.y = self.y + input;
		}
	
		return result;
	}
	
	#endregion
}