---
description: Constructors are the different ways of creating a vec2.
---

# Constructors

### `vec2()`

Creates a new `vec2` where both **X **and **Y** are `0`.

```gml
pos = new vec2();
//pos.x = 0
//pos.y = 0
```



### `vec2(vec2)`

Creates a new `vec2` where the **X **and **Y** values are copied from _another _`vec2`.

```gml
other = new vec2(69, 420);

pos = new vec2(other);
//pos.x = 69
//pos.y = 420
```



### `vec2(number)`

Creates a new `vec2` where both **X **and **Y **have the same value.

```gml
pos = new vec2(-20);
//pos.x = -20
//pos.y = -20
```



### `vec2(number, number)`

Creates a new `vec2` where **X **and **Y **get the _first _and _second _argument, respectively.

```gml
pos = new vec2(-420, 69);
//pos.x = -420
//pos.y = 69
```
