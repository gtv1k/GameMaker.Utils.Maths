function vec2(x = 0, y = 0) constructor
{
    self.x = x;
	self.y = y;
	
	#region Swizzles
	
	static xy=function()
	{
		return new vec2(x, y);
	}
	static yx=function()
	{
		return new vec2(y, x);
	}
	static xx=function()
	{
		return new vec2(x, x);
	}
	static yy=function()
	{
		return new vec2(y, y);
	}
	
	#endregion
	
	#region Operators
	
	#region Arithmetic
	
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
	static _neg=function()
	{
		return new vec2(-self.x, -self.y);
	}
	
	//Absolute Value, makes every axis a positive number. -5 becomes 5, 4 stays 4
	static _abs=function()
	{
		return new vec2(abs(self.x), abs(self.y));
	}
	
	#endregion
	
	#region Comparison
	
	//Is Equal To
	static __eq__=function(input)
	{
		var result = new bool2();
		
		if is_struct(input) //is vec2
		{
			result.x = (self.x == input.x);
			result.y = (self.y == input.y);
		}
		else //is number (or bool??)
		{	
			result.x = (self.x == input);
			result.y = (self.y == input);
		}
	
		return result;
	}
	
	//Is Not Equal To
	static __ne__=function(input)
	{
		var result = new bool2();
		
		if is_struct(input) //is vec2
		{
			result.x = (self.x != input.x);
			result.y = (self.y != input.y);
		}
		else //is number (or bool??)
		{	
			result.x = (self.x != input);
			result.y = (self.y != input);
		}
	
		return result;
	}
	
	
	//Is Less Than
	static __lt__=function(input)
	{
		var result = new bool2();
		
		if is_struct(input) //is vec2
		{
			result.x = (self.x < input.x);
			result.y = (self.y < input.y);
		}
		else //is number (or bool??)
		{	
			result.x = (self.x < input);
			result.y = (self.y < input);
		}
	
		return result;
	}
	
	//Is Greather Than
	static __gt__=function(input)
	{
		var result = new bool2();
		
		if is_struct(input) //is bool2
		{
			result.x = (self.x > input.x);
			result.y = (self.y > input.y);
		}
		else //is bool
		{	
			result.x = (self.x > input);
			result.y = (self.y > input);
		}
	
		return result;
	}
	
	
	//Is Less Than Or Equal To
	static __le__=function(input)
	{
		var result = new bool2();
		
		if is_struct(input) //is vec2
		{
			result.x = (self.x <= input.x);
			result.y = (self.y <= input.y);
		}
		else //is number (or bool??)
		{	
			result.x = (self.x <= input);
			result.y = (self.y <= input);
		}
	
		return result;
	}
	
	//Is Greather Than Or Equal To
	static __ge__=function(input)
	{
		var result = new bool2();
		
		if is_struct(input) //is bool2
		{
			result.x = (self.x >= input.x);
			result.y = (self.y >= input.y);
		}
		else //is bool
		{	
			result.x = (self.x >= input);
			result.y = (self.y >= input);
		}
	
		return result;
	}
	
	#endregion
	
	#endregion
}

#region Aliases

#macro vector2   vec2
#macro vector    vec2
#macro position  vec2
#macro direction vec2

#region	Operators/Functions

#macro __equals__     __eq__;
#macro __not_equals__ __ne__;
	
#macro __lt_or_eq__ __le__;
#macro __gt_or_eq__ __ge__;
	
#macro __less_or_equals__    __le__;
#macro __greater_or_equals__ __ge__;
	
#macro __less_than_or_equal_to__    __le__;
#macro __greater_than_or_equal_to__ __ge__;

#endregion

#endregion

#region Defaults

//I couldn't figure out constants

#macro zero new vec2(0, 0);
#macro one  new vec2(1, 1);

#macro up    new vec2(0,  1);
#macro down  new vec2(0, -1);
#macro left  new vec2(-1, 0);
#macro right new vec2( 1, 0);

#macro vec2_zero new vec2(0, 0);
#macro vec2_one  new vec2(1, 1);

#macro vec2_up    new vec2(0,  1);
#macro vec2_down  new vec2(0, -1);
#macro vec2_left  new vec2(-1, 0);
#macro vec2_right new vec2( 1, 0);

#endregion