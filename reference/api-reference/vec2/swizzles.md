---
description: Construct a new vector from the current vector's components.
---

# Swizzles

### `xy()`

Shorthand for creating a _new_ `vec2` with the **X** and **Y **components of another.

```gml
a = up;

//a.x = 0
//a.y = 1

b = a.xy();

//b.x = 0
//b.y = 1
```

### `yx()`

Shorthand for creating a _new_ `vec2` with the **Y** and **X **components of another. (Flips the vector)

```gml
a = up;

//a.x = 0
//a.y = 1

b = a.yx();

//b.x = 1
//b.y = 0
```

### `xx()`

Shorthand for creating a _new_ `vec2` with the **X** and **X **components of another.

```gml
a = up;

//a.x = 0
//a.y = 1

b = a.xx();

//b.x = 0
//b.y = 0
```

### `yy()`

Shorthand for creating a _new_ `vec2` with the Y and Y** **components of another.

```gml
a = up;

//a.x = 0
//a.y = 1

b = a.yy();

//b.x = 1
//b.y = 1
```
