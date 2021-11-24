function test_vec2_constructor() 
{
	a = new vec2(1, 2);
	assertEqual(1, a.x);
	assertEqual(2, a.y);
	
	assertNotEqual(2, a.x);
	assertNotEqual(1, a.y);
}

function test_vec2_constructor_scalar() 
{
	a = new vec2(69);
	assertEqual(69, a.x);
	assertEqual(69, a.y);
	
	assertNotEqual(0, a.x);
	assertNotEqual(0, a.y);
}

function test_vec2_constructor_empty() 
{
	a = new vec2();
	assertEqual(0, a.x);
	assertEqual(0, a.y);
	
	assertNotEqual(69, a.x);
	assertNotEqual(69, a.y);
}