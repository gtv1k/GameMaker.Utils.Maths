# Comparisons

## Is Equal To

Equivalent of `lhs == rhs` for numbers.

### `__eq__(input: number)` -> `bool2`

```gml
lhs = new vec2(69);
rhs = 69;

ret = (lhs).__eq__(rhs);

//ret.x = true
//ret.y = true
```

### `__eq__(input: vec2)` -> `bool2`

```gml
lhs = new vec2(69);
rhs = new vec2(69, 420);

ret = (lhs).__eq__(rhs);

//ret.x = true
//ret.y = false
```

## Is Not Equal To

Equivalent of `lhs != rhs` for numbers.

### `__ne__(input: number)` -> `bool2`

```gml
lhs = new vec2(69);
rhs = 69;

ret = (lhs).__ne__(rhs);

//ret.x = false
//ret.y = false
```

### `__ne__(input: vec2)` -> `bool2`

```gml
lhs = new vec2(69);
rhs = new vec2(69, 420);

ret = (lhs).__ne__(rhs);

//ret.x = false
//ret.y = true
```



## Is Less Than

Equivalent of `lhs < rhs` for numbers.

### `__lt__(input: number)` -> `bool2`

```gml
lhs = new vec2(1, 420);
rhs = 1;
ret = (lhs).__lt__(rhs);

//ret.x = false (1   < 1)
//ret.y = false (420 < 1)
```

### `__lt__(input: vec2)` -> `bool2`

```gml
lhs = new vec2(-1, 420);
rhs = new vec2(69, 420);
ret = (lhs).__lt__(rhs);

//ret.x = true  (-1  < 69)
//ret.y = false (420 < 420)
```

## Is Greater Than

Equivalent of `lhs > rhs` for numbers.

### `__gt__(input: number)` -> `bool2`

```gml
lhs = new vec2(69, -10);
rhs = 1;	
ret = (lhs).__gt__(rhs);

//ret.x = true  (69  > 1)
//ret.y = false (-10 > 1)
```

### `__gt__(input: vec2)` -> `bool2`

```gml
lhs = new vec2(69,  -10);
rhs = new vec2(420, -20);	
ret = (lhs).__gt__(rhs);

//ret.x = true  (69  > 1)
//ret.y = false (-10 > 1)
```

## Is Less Than or Equal To

Equivalent of `lhs <= rhs` for numbers.

### `__le__(input: number)` -> `bool2`

```gml
lhs = new vec2(1, 420);
rhs = 1;
ret = (lhs).__le__(rhs);

//ret.x = true  (1   <= 1)
//ret.y = false (420 <= 1)
```

### `__le__(input: vec2)` -> `bool2`

```gml
lhs = new vec2(-1, 420);
rhs = new vec2(69, 420);
ret = (lhs).__le__(rhs);

//ret.x = tue  (-1  <= 69)
//ret.y = true (420 <= 420)
```

## Is Greater Than or Equal To

Equivalent of `lhs >= rhs` for numbers.

### `__ge__(input: number)` -> `bool2`

```gml
lhs = new vec2(1, -420);
rhs = 1;
ret = (lhs).__ge__(rhs);

//ret.x = true  (1    >= 1)
//ret.y = false (-420 >= 1)
```

### `__ge__(input: vec2)` -> `bool2`

```gml
lhs = new vec2(-1, 420);
rhs = new vec2(69, 420);
ret = (lhs).__ge__(rhs);

//ret.x = false (-1  >= 69)
//ret.y = true  (420 >= 420)
```
