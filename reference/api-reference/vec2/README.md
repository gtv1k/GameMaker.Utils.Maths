---
description: Represents a 2-Dimensional vector.
---

# vec2

## Fields

`x` The **X **component of the vector.

`y` The **Y **component of the vector.

## Constructors

Constructors are the different ways of creating a `vec2`.

[`vec2()`](constructors.md#vec2)

[`vec2(vec2)`](constructors.md#vec2-vec2)

[`vec2(number)`](constructors.md#vec2-number)

[`vec2(number, number)`](constructors.md#vec2-number-number)

## Defaults

Shorthands for writing vectors you'll use a lot.

[`zero`](defaults.md#zero)

[`one`](defaults.md#one)



[`up`](defaults.md#up)

[`down`](defaults.md#down)

[`left`](defaults.md#left)

[`right`](defaults.md#right)

## Swizzles

Constructs new vectors from the current vector's components.

[`xy()`](swizzles.md#xy)

[`yx()`](swizzles.md#yx)

[`xx()`](swizzles.md#xx)

[`yy()`](swizzles.md#yy)

## Operators

### Arithmetic

Multiplication

[`__mul__(number)`](operators/arithmetic.md#\_\_mul\_\_-input-number)

[`__mul__(vec2)`](operators/arithmetic.md#\_\_mul\_\_-input-vec2)

Division

[`__div__(number)`](operators/arithmetic.md#\_\_div\_\_-input-number)

[`__div__(vec2)`](operators/arithmetic.md#\_\_div\_\_-input-vec2)

Addition

[`__add__(number)`](operators/arithmetic.md#\_\_add\_\_-input-number)

[`__add__(vec2)`](operators/arithmetic.md#\_\_add\_\_-input-vec2)

Subtraction

[`__sub__(number)`](operators/arithmetic.md#\_\_sub\_\_-input-number)

[`__sub__(vec2)`](operators/arithmetic.md#\_\_sub\_\_-input-vec2)



Remainder

[`__mod__(number)`](operators/arithmetic.md#\_\_mod\_\_-input-number)

[`__mod__(vec2)`](operators/arithmetic.md#\_\_mod\_\_-input-vec2)

Dot Product

[`__dot__(vec2)`](operators/arithmetic.md#\_\_dot\_\_-input-vec2)



Negation

[`_neg()`](operators/arithmetic.md#\_neg)

Absolute

[`_abs()`](operators/arithmetic.md#\_abs)

### Compound Arithmetic

Compound Multiplication

`__c_mul__(number)`

`__c_mul__(vec2)`

Compound Division

`__c_div__(number)`

`__c_div__(vec2)`

Compound Addition

`__c_add__(number)`

`__c_add__(vec2)`

Compound Subtraction

`__c_sub__(number)`

`__c_sub__(vec2)`



Compound Remainder

`__c_mod__(number)`

`__c_mod__(vec2)`



Compound Negate

`_c_neg()`

Compound Absolute

`_c_abs()`

### Comparisons

Equals

`__eq__(vec2)`

Not Equals

`__ne__(vec2)`

&#x20;Is Less Than

`__lt__(vec2)`

&#x20;Is Greater Than

`__gt__(vec2)`

&#x20;Is Less Than Or Equal To

`__le__(vec2)`

&#x20;Is Greater Than Or Equal To

`__ge__(vec2)`

## Functions

`Length()`

`LengthSquared()`

`Distance(vec2)`

`DistanceSquared(vec2)`

`Sqrt()`

`Normalized()`

`Normalize()`
