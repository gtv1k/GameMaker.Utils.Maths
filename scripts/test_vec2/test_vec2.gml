function test_vec2_constructor() 
{
	a = new vec2(1, 2);
	assertEqual(1, a.x);
	assertEqual(2, a.y);
	
	assertNotEqual(2, a.x);
	assertNotEqual(1, a.y);
}