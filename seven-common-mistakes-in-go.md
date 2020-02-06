---
title: 7 Common Mistakes in Go
urls:
- https://www.youtube.com/watch?v=29LLRKIL_TI
types: [talk]
people:
- Steve Francia
tags:
- Go Programming Language
- Programming
---

# Not Accepting Interfaces
- Hugo
- `.Bytes()` in return makes callers create another `Reader`
# Not Using io.Reader and io.Writer
- Cobra CLI
- Viper conf. management
- `bytes.Buffer` is an `io.Reader`
# Requiring Broad Interfaces
- only interfaces that include methods you need
- Aftero Fs FS abstraction for testing
# Methods v. Functins
- OO people overuse methods
- functions without side effects
- methods use state
# Pointers v. Values
- not about perf
- about shared access
- share with function or method: pointer
- no sharing: value (copy)
- receivers: usually pointer (not safe for concurrency)
- empty struct: values
# Thinking of Errors as Strings
- interface, not type
- `errors.New` is usually sufficient
- can export specific errors so callers can compare by identity, not by string
- Docker: internationalization of errors
  - `Code` and `Message`
  - can just check `Code`
- standard library: `ErrInvalid`, `ErrPermission`, `PathError` struct
# To Be Safe Or Not To Be Safe
- consider concurrency
- if you write a library, someone will use it concurrently
- sync, channels
- keeping unsafe: cost, impositions on callers
- let users add safety as needed
- maps are unsafe by design
- mutex locks around map accesses
