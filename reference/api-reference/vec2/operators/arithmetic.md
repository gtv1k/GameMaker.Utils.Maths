# Arithmetic

## Multiplication

### `__mul__(input: number)`

Returns the vector _multiplied _ by the **input **`number`.

Equivalent of `lhs * rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = 10;

ret = (lhs).__mul__(rhs);

//ret.x = 10
//ret.y = 10
```

### `__mul__(input: vec2)`

Returns the vector _multiplied _ by the **input** `vec2`.

Equivalent of `lhs * rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

ret = (lhs).__mul__(rhs);

//ret.x = 5
//ret.y = 10
```

## Division

### `__div__(input: number)`

Returns the vector _divided _by the **input **`number`.

Equivalent of `lhs / rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = 10;

ret = (lhs).__div__(rhs);

//ret.x = 0.1
//ret.y = 0.1
```

### `__div__(input: vec2)`

Returns the vector _divided _by the **input** `vec2`.

Equivalent of `lhs / rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

ret = (lhs).__div__(rhs);

//ret.x = 0.2
//ret.y = 0.1
```



## Addition

### `__add__(input: number)`

Returns the result of component-wise _addition _of the vector and the **input **`number`.

Equivalent of `lhs + rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = 10;

ret = (lhs).__add__(rhs);

//ret.x = 11
//ret.y = 11
```

### `__add__(input: vec2)`

Returns the result of component-wise _addition _of the vector and the **input **`vec2`.

Equivalent of `lhs + rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

ret = (lhs).__add__(rhs);

//ret.x = 6
//ret.y = 11
```

## Subtraction

### `__sub__(input: number)`

Returns the result of component-wise _subtraction _of the vector and the **input **`number`.

Equivalent of `lhs - rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = 10;

ret = (lhs).__sub__(rhs);

//ret.x = -9
//ret.y = -9
```

### `__sub__(input: vec2)`

Returns the result of component-wise _subtraction _of the vector and the **input **`vec2`.

Equivalent of `lhs - rhs` for numbers.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

ret = (lhs).__sub__(rhs);

//ret.x = -4
//ret.y = -9
```

## Remainder

### `__mod__(input: number)`

Returns the result of component-wise _modulus _of the vector and the **input **`number`.

Equivalent of `lhs mod rhs` for numbers.

```gml
lhs = new vec2(69);
rhs = 10;

ret = (lhs).__mod__(rhs);

//ret.x = 9
//ret.y = 9
```

### `__mod__(input: vec2)`

Returns the result of component-wise _modulus _of the vector and the **input **`vec2`.

Equivalent of `lhs mod rhs` for numbers.

```gml
lhs = new vec2(69);
rhs = new vec2(5, 10);

ret = (lhs).__mod__(rhs);

//ret.x = 4
//ret.y = 9
```

## Dot Product

### `__dot__(input: vec2)`

Returns the _dot product _of the vector and the **input **`vec2`.

```gml
lhs = new vec2(0, 1);
rhs = new vec2(1, 0.5);

ret = (lhs).__dot__(rhs);

//ret = 0.5
```

## Negate

### `_neg()`

Returns the result of component-wise _negation _of the vector.

Equivalent of `-rhs` for numbers.

```gml
v = new vec2(1, -69);

ret = v._neg();

//ret.x = -1
//ret.y = 69
```

## Absolute

### `_abs()`

Returns the result of component-wise _absolute value _of the vector.

Equivalent of `abs(rhs)` for numbers.&#x20;

It makes numbers positive.

```gml
v = new vec2(-69, 420);
	
ret = v._abs();

//ret.x = 69
//ret.y = 420
```
