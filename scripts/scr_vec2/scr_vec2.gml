function vec2(x = 0, y) constructor
{
	#region Constructor
	
	if (is_numeric(x) && is_numeric(y)) //(normal)
	{
		self.x = x;
		self.y = y;
		return;
	}
	if is_undefined(y) //has 1 input
	{
		if is_struct(x) //is vec2 (other)
		{
			self.x = x.x;
			self.y = x.y;
			return;
		}
		if is_numeric(x) //is number (scalar)
		{
			self.x = x;
			self.y = x;
			return;
		}
	}
	
	throw ("[ERROR] INVALID INPUT");
	
	//TODO: see if can throw error here instead?
	
	#endregion
	
	#region Swizzles
	
	//TODO: Swizzle variables
	
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
		if is_struct(input) //is vec2
		{
			return new vec2((self.x * input.x), (self.y * input.y));
		}
		if is_numeric(input)
		{	
			return new vec2((self.x * input), (self.y * input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	//Division
	static __div__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new vec2((self.x / input.x), (self.y / input.y));
		}
		if is_numeric(input)
		{
			return new vec2((self.x / input), (self.y / input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	
	//Addition
	static __add__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new vec2((self.x + input.x), (self.y + input.y));
		}
		if is_numeric(input)
		{
			return new vec2((self.x + input), (self.y + input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	//Subtraction
	static __sub__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new vec2((self.x - input.x), (self.y - input.y));
		}
		if is_numeric(input)
		{	
			return new vec2((self.x - input), (self.y - input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	
	//Remainder
	static __mod__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new vec2((self.x % input.x), (self.y % input.y));
		}
		if is_numeric(input)
		{
			return new vec2((self.x % input), (self.y % input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	//Dot Product
	static __dot__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return (self.x * input.x) + (self.y * input.y);
		}
		
		throw ("Unexpected Argument!");
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
	
	#region Compound Arithmetic
	
	//Compound Multiplication
	//Same result as `value = value.__mul__(input);`
	static __c_mul__=function(input)
	{
		return self = self.__mul__(input);
	}
	
	//Compound Division
	//Same result as `value = value.__div__(input);`
	static __c_div__=function(input)
	{
		return self = self.__div__(input);
	}
	
	
	//Compound Addition
	//Same result as `value = value.__add__(input);`
	static __c_add__=function(input)
	{
		return self = self.__add__(input);
	}
	
	//Compound Subtraction
	//Same result as `value = value.__sub__(input);`
	static __c_sub__=function(input)
	{
		return self = self.__sub__(input);
	}
	
	
	//Compound Remainder
	//Same result as `value = value.__mod__(input);`
	static __c_mod__=function(input)
	{
		return self = self.__mod__(input);
	}
	
	
	//Compound Negation (kina bullshit, but why not)
	//Same result as `value = value._neg();`
	static _c_neg=function()
	{
		return self = self.__neg__();
	}
	
	//Compound Absolute Value.
	//Same result as `value = value._abs();`
	static _c_abs=function()
	{
		return new vec2(abs(self.x), abs(self.y));
	}
	
	#endregion
	
	#region Comparison
	
	//Is Equal To
	static __eq__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new bool2((self.x == input.x), (self.y == input.y));
		}
		if is_numeric(input)
		{
			return new bool2((self.x == input),   (self.y == input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	//Is Not Equal To
	static __ne__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new bool2((self.x != input.x), (self.y != input.y));
		}
		if is_numeric(input)
		{
			return new bool2((self.x != input),   (self.y != input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	
	//Is Less Than
	static __lt__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new bool2((self.x < input.x), (self.y < input.y));
		}
		if is_numeric(input)
		{	
			return new bool2((self.x < input),   (self.y < input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	//Is Greather Than
	static __gt__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new bool2((self.x > input.x), (self.y > input.y));
		}
		if is_numeric(input)
		{	
			return new bool2((self.x > input),   (self.y > input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	
	//Is Less Than Or Equal To
	static __le__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new bool2((self.x <= input.x), (self.y <= input.y));
		}
		if is_numeric(input)
		{	
			return new bool2((self.x <= input),   (self.y <= input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	//Is Greather Than Or Equal To
	static __ge__=function(input)
	{
		if is_struct(input) //is vec2
		{
			return new bool2((self.x >= input.x), (self.y >= input.y));
		}
		if is_numeric(input)
		{
			return new bool2((self.x >= input),   (self.y >= input));
		}
	
		throw ("Unexpected Argument!");
	}
	
	#endregion
	
	#endregion
	
	#region Functions
	
	static Length=function()
	{
		return (self).__dot__(self);
	}
	
	#endregion
}

#region Aliases

/*
#macro Vector    vec2;
#macro Position  vec2;
#macro Direction vec2;

#macro Vec vec2;
#macro Pos vec2;
#macro Dir vec2;
*/

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