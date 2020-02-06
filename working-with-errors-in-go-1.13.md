---
title: Working with Errors in Go 1.13
types: [post]
urls:
- https://blog.golang.org/go1.13-errors
people:
- Damien Neil 
- Jonathan Amsterdam
tags:
- Go
- Programming
- Error Handling
---

- stdlib has only `errors.New` and `fmt.Errorf` for errors
- `Error()` method
- explicit support for errors containing other errors
- "sentinel value", e.g. `var ErrNotFound = errors.New("not found")`
- adding information: `return fmt.Errorf("%v: %v", name, err)`
- ```
  type QueryError struct {
    Query string
    Err error
  }
  ```
- in 1.13:
  - convention: errors containing errors can implement `Unwrap()`
  - `errors.Is(err, ErrNotFound)`
  - ```
    var e *QueryError
    if errors.As(err, &e) ...
    ```
  - works like a type assertion
  - `fmt.Errorf` now supports `%w`, returns error for which `Unwrap()` returns `%w` argument
- ...
