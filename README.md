# purescript-conditional

Provides a simple shorthand for conditional statements, analagous to `predicate ? expr1 : expr2` in JS

## Usage

```purescript
import Conditional ((?))
(false && true) ? (3 + 5) $ (5 * 2)  -- 8
```
