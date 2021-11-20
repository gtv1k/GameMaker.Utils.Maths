function vec2(x = 0, y = 0) constructor
{
    self.x = x;
	self.y = y;
	
	#region Operators
	
	//Multiplication
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
	
	//Division
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
	
	
	//Addition
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
	
	//Subtraction
	static __sub__=function(input)
	{
		var result = new vec2();
		
		if is_struct(input) //is vec2
		{
			result.x = self.x - input.x;
			result.y = self.y - input.y;
		}
		else //is number
		{	
			result.x = self.x - input;
			result.y = self.y - input;
		}
	
		return result;
	}
	
	
	//Remainder
	static __mod__=function(input)
	{
		var result = new vec2();
		
		if is_struct(input) //is vec2
		{
			result.x = self.x % input.x;
			result.y = self.y % input.y;
		}
		else //is number
		{	
			result.x = self.x % input;
			result.y = self.y % input;
		}
	
		return result;
	}
	
	
	//Negation
	static __neg__=function()
	{
		return new vec2(-self.x, -self.y);
	}
	
	#endregion
}

#region Aliases

#macro vector2 vec2
#macro vector vec2
#macro position vec2
#macro direction vec2

#endregion

#region Defaults

#macro vec2_zero new vec2(0, 0);
#macro vec2_one  new vec2(1, 1);

#macro vec2_up    new vec2(0,  1);
#macro vec2_down  new vec2(0, -1);
#macro vec2_left  new vec2(-1, 0);
#macro vec2_right new vec2( 1, 0);

#endregion