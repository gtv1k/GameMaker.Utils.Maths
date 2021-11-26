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

function test_vec2_swizzle_xx()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(1, a.y);
	
	b = a.xx();
	
	assertEqual(0, b.x);
	assertEqual(0, b.y);
}

function test_vec2_swizzle_yy()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(1, a.y);
	
	b = a.yy();
	
	assertEqual(1, b.x);
	assertEqual(1, b.y);
}

#endregion

#region Operators

#region Arithmetic

function test_vec2_op_mul_number()
{
	a = one;
	b = 10;
	
	c = a.__mul__(b);
	
	assertEqual(10, c.x);
	assertEqual(10, c.y);
}
function test_vec2_op_mul_vec2()
{
	a = one;
	b = new vec2(5, 10);
	
	c = a.__mul__(b);
	
	assertEqual(5,  c.x);
	assertEqual(10, c.y);
}

function test_vec2_op_div_number()
{
	a = one;
	b = 10;
	
	c = a.__div__(b);
	
	assertEqual(0.1, c.x);
	assertEqual(0.1, c.y);
}
function test_vec2_op_div_vec2()
{
	a = one;
	b = new vec2(5, 10);
	
	c = a.__div__(b);
	
	assertEqual(0.2, c.x);
	assertEqual(0.1, c.y);
}


function test_vec2_op_add_number()
{
	a = one;
	b = 10;
	
	c = a.__add__(b);
	
	assertEqual(11, c.x);
	assertEqual(11, c.y);
}
function test_vec2_op_add_vec2()
{
	a = one;
	b = new vec2(5, 10);
	
	c = a.__add__(b);
	
	assertEqual(6, c.x);
	assertEqual(11, c.y);
}

function test_vec2_op_sub_number()
{
	a = one;
	b = 10;
	
	c = a.__sub__(b);
	
	assertEqual(-9, c.x);
	assertEqual(-9, c.y);
}
function test_vec2_op_sub_vec2()
{
	a = one;
	b = new vec2(5, 10);
	
	c = a.__sub__(b);
	
	assertEqual(-4, c.x);
	assertEqual(-9, c.y);
}


function test_vec2_op_mod_number()
{
	a = new vec2(69);
	b = 10;
	
	c = a.__mod__(b);
	
	assertEqual(9, c.x);
	assertEqual(9, c.y);
}
function test_vec2_op_mod_vec2()
{
	a = new vec2(69);
	b = new vec2(5, 10);
	
	c = a.__mod__(b);
	
	assertEqual(4, c.x);
	assertEqual(9, c.y);
}


function test_vec2_op_neg()
{
	a = one;
	
	b = a._neg();
	
	assertEqual(-1, b.x);
	assertEqual(-1, b.y);
}

function test_vec2_op_abs()
{
	a = new vec2(-69, 420);
	
	b = a._abs();
	
	assertEqual(69, b.x);
	assertEqual(420, b.y);
}

#endregion

#region Comparison

function test_vec2_op_eq_number()
{
	a = new vec2(69);
	b = 69;
	
	c = a.__eq__(b);
	
	assertTrue(c.x);
	assertTrue(c.y);
}
function test_vec2_op_eq_vec2()
{
	a = new vec2(69);
	b = new vec2(69, 420);
	
	c = a.__eq__(b);
	
	assertTrue(c.x);
	assertFalse(c.y);
}

function test_vec2_op_ne_number()
{
	a = new vec2(69);
	b = 69;
	
	c = a.__ne__(b);
	
	assertFalse(c.x);
	assertFalse(c.y);
}
function test_vec2_op_ne_vec2()
{
	a = new vec2(69);
	b = new vec2(69, 420);
	
	c = a.__ne__(b);
	
	assertFalse(c.x);
	assertTrue(c.y);
}

function test_vec2_op_lt_number()
{
	lhs = new vec2(1, 420);
	
	rhs_0 = 69;
	ret_0 = lhs.__lt__(rhs_0);
	
	assertTrue(ret_0.x);  //1 < 69
	assertFalse(ret_0.y); //420 < 69
	
	rhs_1 = 1;
	ret_1 = lhs.__lt__(rhs_1);
	
	assertFalse(ret_1.x); //1   < 1
	assertFalse(ret_1.y); //420 < 1
}
function test_vec2_op_lt_vec2()
{
	lhs_0 = new vec2(1,   69);
	rhs_0 = new vec2(-69, 420);
	ret_0 = lhs_0.__lt__(rhs_0);
	
	assertFalse(ret_0.x); //1   < -69
	assertTrue( ret_0.y); //420 < 69
	
	lhs_1 = new vec2(-1, 420);
	rhs_1 = new vec2(69, 420);
	ret_1 = lhs_1.__lt__(rhs_1);
	
	assertTrue( ret_1.x); //-1  < 69
	assertFalse(ret_1.y); //420 < 420
}

function test_vec2_op_gt_number()
{
	lhs = new vec2(69);
	
	rhs_0 = 420;
	rhs_1 = 1;
	
	ret_0 = lhs.__gt__(rhs_0);
	
	assertFalse(ret_0.x);
	assertFalse(ret_0.y);
	
	ret_1 = lhs.__gt__(rhs_1);
	
	assertTrue(ret_1.x);
	assertTrue(ret_1.y);
}
function test_vec2_op_gt_vec2()
{
	lhs = new vec2(69);
	
	rhs = new vec2(420, 1);
	
	re = lhs.__lt__(rhs);
	
	assertTrue( re.x);
	assertFalse(re.y);
}

function test_vec2_op_le_number()
{
	lhs = new vec2(1, 420);
	
	rhs_0 = 69;
	ret_0 = lhs.__le__(rhs_0);
	
	assertTrue( ret_0.x); //1   <= 69
	assertFalse(ret_0.y); //420 <= 69
	
	rhs_1 = 1;
	ret_1 = lhs.__le__(rhs_1);
	
	assertTrue( ret_1.x); //1   <= 1
	assertFalse(ret_1.y); //420 <= 1
}
function test_vec2_op_le_vec2()
{
	lhs_0 = new vec2(1,   69);
	rhs_0 = new vec2(-69, 420);
	ret_0 = (lhs_0).__le__(rhs_0);
	
	assertFalse(ret_0.x); //1  <= -69
	assertTrue( ret_0.y); //69 <= 420
	
	lhs_1 = new vec2(-1, 420);
	rhs_1 = new vec2(69, 420);
	ret_1 = (lhs_1).__le__(rhs_1);
	
	assertTrue( ret_1.x); //-1  <= 69
	assertTrue(ret_1.y); //420 <= 420
}

function test_vec2_op_ge_number()
{
	lhs_0 = new vec2(1, 420);	
	rhs_0 = 69;
	ret_0 = (lhs_0).__ge__(rhs_0);
	
	assertFalse(ret_0.x); //1   >= 69
	assertTrue( ret_0.y); //420 >= 69
	
	lhs_1 = new vec2(1, -420);
	rhs_1 = 1;
	ret_1 = (lhs_1).__ge__(rhs_1);
	
	assertTrue( ret_1.x); //1    >= 1
	assertFalse(ret_1.y); //-420 >= 1
}
function test_vec2_op_ge_vec2()
{
	lhs_0 = new vec2(1,   69);
	rhs_0 = new vec2(-69, 420);
	ret_0 = (lhs_0).__ge__(rhs_0);
	
	assertTrue( ret_0.x); //1  >= -69
	assertFalse(ret_0.y); //69 >= 420
	
	lhs_1 = new vec2(-1, 420);
	rhs_1 = new vec2(69, 420);
	ret_1 = (lhs_1).__ge__(rhs_1);
	
	assertFalse(ret_1.x); //-1  >= 69
	assertTrue( ret_1.y); //420 >= 420
}

#endregion

#endregion

#region Functions

function test_vec2_fn_Length()
{
	lhs_0 = new vec2(0, 10);
	
	assertEqual(lhs_0.Length(), 10);
	
	lhs_1 = new vec2(5, 10);
	
	assertEqual(lhs_1.Length(), 11.18034);
}

function test_vec2_fn_LengthSquared()
{
	lhs_0 = new vec2(0, 10);
	
	assertEqual(lhs_0.LengthSquared(), 100);
	
	lhs_1 = new vec2(5, 10);
	
	assertEqual(lhs_1.LengthSquared(), 125);
}

#endregion