# Compound Arithmetic

## Multiplication

Equivalent of `lhs *= rhs` for numbers.

### `__c_mul__(input: number)` -> `vec2`

Returns the vector _multiplied _ by the **input **`number`.

```gml
lhs = new vec2(1, 1);
rhs = 10;

(lhs).__c_mul__(rhs);

//lhs.x = 10
//lhs.y = 10
```

### `__c_mul__(input: vec2)` -> `vec2`

_Multiplies_ the vector by the **input** `vec2`.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

(lhs).__c_mul__(rhs);

//lhs.x = 5
//lhs.y = 10
```

## Division

Equivalent of `lhs /= rhs` for numbers.

### `__c_div__(input: number)` -> `vec2`

_Divides_ the vector_ _by the **input **`number`.

```gml
lhs = new vec2(1, 1);
rhs = 10;

(lhs).__c_div__(rhs);

//lhs.x = 0.1
//lhs.y = 0.1
```

### `__c_div__(input: vec2)` -> `vec2`

_Divides_ the vector_ _by the **input ** `vec2`.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

(lhs).__c_div__(rhs);

//lhs.x = 0.2
//lhs.y = 0.1
```



## Addition

Equivalent of `lhs += rhs` for numbers.

### `__c_add__(input: number)` -> `vec2`

Component-wise _addition _of the vector and the **input **`number`.

```gml
lhs = new vec2(1, 1);
rhs = 10;

(lhs).__c_add__(rhs);

//lhs.x = 11
//lhs.y = 11
```

### `__c_add__(input: vec2)` -> `vec2`

Component-wise _addition _of the vector and the **input **`vec2`.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

(lhs).__c_add__(rhs);

//lhs.x = 6
//lhs.y = 11
```

## Subtraction

Equivalent of `lhs -= rhs` for numbers.

### `__c_sub__(input: number)` -> `vec2`

Component-wise _subtraction _of the vector and the **input **`number`.

```gml
lhs = new vec2(1, 1);
rhs = 10;

(lhs).__c_sub__(rhs);

//lhs.x = -9
//lhs.y = -9
```

### `__c_sub__(input: vec2)` -> `vec2`

Component-wise _subtraction _of the vector and the **input **`vec2`.

```gml
lhs = new vec2(1, 1);
rhs = new vec2(5, 10);

(lhs).__c_sub__(rhs);

//lhs.x = -4
//lhs.y = -9
```

## Remainder

Equivalent of `lhs %= rhs` for numbers.

### `__c_mod__(input: number)` -> `vec2`

Component-wise _modulus _of the vector and the **input **`number`.

```gml
lhs = new vec2(69);
rhs = 10;

(lhs).__c_mod__(rhs);

//lhs.x = 9
//lhs.y = 9
```

### `__c_mod__(input: vec2)` -> `vec2`

Component-wise _modulus _of the vector and the **input **`vec2`.

```gml
lhs = new vec2(69);
rhs = new vec2(5, 10);

(lhs).__c_mod__(rhs);

//lhs.x = 4
//lhs.y = 9
```

## Negate

Equivalent of `v = -v` for numbers.

### `_c_neg()` -> `vec2`

Component-wise _negation _of the vector.

```gml
v = new vec2(1, -69);

ret = v._c_neg();

//lhs.x = -1
//lhs.y = 69
```

## Absolute

Equivalent of `v = abs(v)` for numbers.&#x20;

### `_c_abs()` -> `vec2`

Component-wise _absolute value _of the vector.

It makes numbers positive.

```gml
v = new vec2(-69, 420);
	
ret = v._c_abs();

//lhs.x = 69
//lhs.y = 420
```
