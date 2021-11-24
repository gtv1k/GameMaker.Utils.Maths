#region Constructors

function test_vec2_constructor()
{
	a = new vec2(1, 2);
	
	assertEqual(1, a.x);
	assertEqual(2, a.y);
}

function test_vec2_constructor_scalar()
{
	a = new vec2(69);
	
	assertEqual(69, a.x);
	assertEqual(69, a.y);
}

function test_vec2_constructor_empty()
{
	a = new vec2();
	
	assertEqual(0, a.x);
	assertEqual(0, a.y);
}

function test_vec2_constructor_other()
{
	a = new vec2(1, 2);
	b = new vec2(a);
	
	assertEqual(a.x, b.x);
	assertEqual(a.y, b.y);
}

#endregion

#region Defaults

function test_vec2_default_zero()
{
	a = zero;
	
	assertEqual(0, a.x);
	assertEqual(0, a.y);
}

function test_vec2_default_one()
{
	a = one;
	
	assertEqual(1, a.x);
	assertEqual(1, a.y);
}


function test_vec2_default_up()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(1, a.y);
}

function test_vec2_default_down()
{
	a = down;
	
	assertEqual(0, a.x);
	assertEqual(-1, a.y);
}

function test_vec2_default_left()
{
	a = left;
	
	assertEqual(-1, a.x);
	assertEqual(0, a.y);
}

function test_vec2_default_right()
{
	a = right;
	
	assertEqual(1, a.x);
	assertEqual(0, a.y);
}

#endregion

#region Swizzles

function test_vec2_swizzle_xy()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(1, a.y);
	
	b = a.xy();
	
	assertEqual(0, b.x);
	assertEqual(1, b.y);
}

function test_vec2_swizzle_yx()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(1, a.y);
	
	b = a.yx();
	
	assertEqual(1, b.x);
	assertEqual(0, b.y);
}

#endregion