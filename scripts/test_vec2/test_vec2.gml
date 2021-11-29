#region Constructors

function test_vec2_constructor()
{
	v = new vec2(1, 2);
	
	assertEqual(1, v.x);
	assertEqual(2, v.y);
}

function test_vec2_constructor_scalar()
{
	v = new vec2(69);
	
	assertEqual(69, v.x);
	assertEqual(69, v.y);
}

function test_vec2_constructor_empty()
{
	v = new vec2();
	
	assertEqual(0, v.x);
	assertEqual(0, v.y);
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
	v = zero;
	
	assertEqual(0, v.x);
	assertEqual(0, v.y);
}

function test_vec2_default_one()
{
	v = one;
	
	assertEqual(1, v.x);
	assertEqual(1, v.y);
}


function test_vec2_default_up()
{
	v = up;
	
	assertEqual(0, v.x);
	assertEqual(-1, v.y);
}

function test_vec2_default_down()
{
	v = down;
	
	assertEqual(0,  v.x);
	assertEqual(1, v.y);
}

function test_vec2_default_left()
{
	v = left;
	
	assertEqual(-1, v.x);
	assertEqual(0,  v.y);
}

function test_vec2_default_right()
{
	v = right;
	
	assertEqual(1, v.x);
	assertEqual(0, v.y);
}

#endregion

#region Swizzles

function test_vec2_swizzle_xy()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(-1, a.y);
	
	b = a.xy();
	
	assertEqual(0, b.x);
	assertEqual(-1, b.y);
}

function test_vec2_swizzle_yx()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(-1, a.y);
	
	b = a.yx();
	
	assertEqual(-1, b.x);
	assertEqual(0, b.y);
}

function test_vec2_swizzle_xx()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(-1, a.y);
	
	b = a.xx();
	
	assertEqual(0, b.x);
	assertEqual(0, b.y);
}

function test_vec2_swizzle_yy()
{
	a = up;
	
	assertEqual(0, a.x);
	assertEqual(-1, a.y);
	
	b = a.yy();
	
	assertEqual(-1, b.x);
	assertEqual(-1, b.y);
}

#endregion

#region Operators

#region Arithmetic

function test_vec2_op_mul_number()
{
	lhs = one;
	rhs = 10;
	
	ret = (lhs).__mul__(rhs);
	
	assertEqual(10, ret.x);
	assertEqual(10, ret.y);
}
function test_vec2_op_mul_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	ret = (lhs).__mul__(rhs);
	
	assertEqual(5,  ret.x);
	assertEqual(10, ret.y);
}

function test_vec2_op_div_number()
{
	lhs = one;
	rhs = 10;
	
	ret = (lhs).__div__(rhs);
	
	assertEqual(0.1, ret.x);
	assertEqual(0.1, ret.y);
}
function test_vec2_op_div_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	ret = (lhs).__div__(rhs);
	
	assertEqual(0.2, ret.x);
	assertEqual(0.1, ret.y);
}


function test_vec2_op_add_number()
{
	lhs = one;
	rhs = 10;
	
	ret = (lhs).__add__(rhs);
	
	assertEqual(11, ret.x);
	assertEqual(11, ret.y);
}
function test_vec2_op_add_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	ret = (lhs).__add__(rhs);
	
	assertEqual(6,  ret.x);
	assertEqual(11, ret.y);
}

function test_vec2_op_sub_number()
{
	lhs = one;
	rhs = 10;
	
	ret = (lhs).__sub__(rhs);
	
	assertEqual(-9, ret.x);
	assertEqual(-9, ret.y);
}
function test_vec2_op_sub_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	ret = (lhs).__sub__(rhs);
	
	assertEqual(-4, ret.x);
	assertEqual(-9, ret.y);
}


function test_vec2_op_mod_number()
{
	lhs = new vec2(69);
	rhs = 10;
	
	ret = (lhs).__mod__(rhs);
	
	assertEqual(9, ret.x);
	assertEqual(9, ret.y);
}
function test_vec2_op_mod_vec2()
{
	lhs = new vec2(69);
	rhs = new vec2(5, 10);
	
	ret = (lhs).__mod__(rhs);
	
	assertEqual(4, ret.x);
	assertEqual(9, ret.y);
}

function test_vec2_op_dot_vec2()
{
	
}


function test_vec2_op_neg()
{
	v = new vec2(1, -69);
	
	ret = v._neg();
	
	assertEqual(-1, ret.x);
	assertEqual(69, ret.y);
}

function test_vec2_op_abs()
{
	v = new vec2(-69, 420);
	
	ret = v._abs();
	
	assertEqual(69,  ret.x);
	assertEqual(420, ret.y);
}

#endregion

#region Compound Arithmetic

function test_vec2_op_c_mul_number()
{
	lhs = one;
	rhs = 10;
	
	(lhs).__c_mul__(rhs);
	
	assertEqual(10, lhs.x);
	assertEqual(10, lhs.y);
}
function test_vec2_op_c_mul_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	(lhs).__c_mul__(rhs);
	
	assertEqual(5,  lhs.x);
	assertEqual(10, lhs.y);
}

function test_vec2_op_c_div_number()
{
	lhs = one;
	rhs = 10;
	
	(lhs).__c_div__(rhs);
	
	assertEqual(0.1, lhs.x);
	assertEqual(0.1, lhs.y);
}
function test_vec2_op_c_div_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	(lhs).__c_div__(rhs);
	
	assertEqual(0.2, lhs.x);
	assertEqual(0.1, lhs.y);
}


function test_vec2_op_c_add_number()
{
	lhs = one;
	rhs = 10;
	
	(lhs).__c_add__(rhs);
	
	assertEqual(11, lhs.x);
	assertEqual(11, lhs.y);
}
function test_vec2_op_c_add_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	(lhs).__c_add__(rhs);
	
	assertEqual(6,  lhs.x);
	assertEqual(11, lhs.y);
}

function test_vec2_op_c_sub_number()
{
	lhs = one;
	rhs = 10;
	
	(lhs).__c_sub__(rhs);
	
	assertEqual(-9, lhs.x);
	assertEqual(-9, lhs.y);
}
function test_vec2_op_c_sub_vec2()
{
	lhs = one;
	rhs = new vec2(5, 10);
	
	(lhs).__c_sub__(rhs);
	
	assertEqual(-4, lhs.x);
	assertEqual(-9, lhs.y);
}

function test_vec2_op_c_neg()
{
	v = new vec2(1, -69);
	
	v._c_neg();
	
	assertEqual(-1, v.x);
	assertEqual(69, v.y);
}

function test_vec2_op_c_abs()
{
	v = new vec2(-69, 420);
	
	v._c_abs();
	
	assertEqual(69,  v.x);
	assertEqual(420, v.y);
}

#endregion

#region Comparison

function test_vec2_op_eq_number()
{
	lhs = new vec2(69);
	rhs = 69;
	
	ret = (lhs).__eq__(rhs);
	
	assertTrue(ret.x);
	assertTrue(ret.y);
}
function test_vec2_op_eq_vec2()
{
	lhs = new vec2(69);
	rhs = new vec2(69, 420);
	
	ret = (lhs).__eq__(rhs);
	
	assertTrue( ret.x);
	assertFalse(ret.y);
}

function test_vec2_op_ne_number()
{
	lhs = new vec2(69);
	rhs = 69;
	
	ret = (lhs).__ne__(rhs);
	
	assertFalse(ret.x);
	assertFalse(ret.y);
}
function test_vec2_op_ne_vec2()
{
	lhs = new vec2(69);
	rhs = new vec2(69, 420);
	
	ret = (lhs).__ne__(rhs);
	
	assertFalse(ret.x);
	assertTrue( ret.y);
}

function test_vec2_op_lt_number()
{
	lhs = new vec2(1, 420);
	
	rhs_0 = 69;
	ret_0 = (lhs).__lt__(rhs_0);
	
	assertTrue(ret_0.x);  //1 < 69
	assertFalse(ret_0.y); //420 < 69
	
	rhs_1 = 1;
	ret_1 = (lhs).__lt__(rhs_1);
	
	assertFalse(ret_1.x); //1   < 1
	assertFalse(ret_1.y); //420 < 1
}
function test_vec2_op_lt_vec2()
{
	lhs_0 = new vec2(1,   69);
	rhs_0 = new vec2(-69, 420);
	ret_0 = (lhs_0).__lt__(rhs_0);
	
	assertFalse(ret_0.x); //1   < -69
	assertTrue( ret_0.y); //420 < 69
	
	lhs_1 = new vec2(-1, 420);
	rhs_1 = new vec2(69, 420);
	ret_1 = (lhs_1).__lt__(rhs_1);
	
	assertTrue( ret_1.x); //-1  < 69
	assertFalse(ret_1.y); //420 < 420
}

function test_vec2_op_gt_number()
{
	lhs = new vec2(69, -10);
	
	rhs_0 = 420;
	
	ret_0 = (lhs).__gt__(rhs_0);
	
	assertFalse(ret_0.x);
	assertFalse(ret_0.y);
	
	rhs_1 = 1;
	ret_1 = (lhs).__gt__(rhs_1);
	
	assertTrue( ret_1.x);
	assertFalse(ret_1.y);
}
function test_vec2_op_gt_vec2()
{
	lhs = new vec2(69,  -10);
	rhs = new vec2(420, -20);
	
	re = (lhs).__lt__(rhs);
	
	assertTrue( re.x);
	assertFalse(re.y);
}

function test_vec2_op_le_number()
{
	lhs = new vec2(1, 420);
	
	rhs_0 = 69;
	ret_0 = (lhs).__le__(rhs_0);
	
	assertTrue( ret_0.x); //1   <= 69
	assertFalse(ret_0.y); //420 <= 69
	
	rhs_1 = 1;
	ret_1 = (lhs).__le__(rhs_1);
	
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

function test_vec2_fn_Normalized()
{
	lhs_0 = new vec2(0, 10);
	ret_0 = lhs_0.Normalized();
	
	assertEqual(ret_0.Length(), 1);
	
	lhs_1 = new vec2(5, 10);
	ret_1 = lhs_1.Normalized();
	
	assertEqual(ret_1.Length(), 1);
}

#endregion