---
title: Programming from the Ground Up
types: [book]
tags:
- Computer Programming
- C Programming Language
- Assembly Language
---

## Assembly-Language Functions using the C Calling Convention
- `pushl`
- `popl`
- `%esp` is top of stack pointer
- `movl (%esp), %eax` (indirect addressing mode)
- push all parameters in reverse order
- `call` instruction
  1.  pushes address of return address
  2.  changes instruction pointer `%eip` to start of function
- function
  1.  save base pointer `%ebp` to stack
  2.  `movl %esp, %ebp` to access parameters as fixed indices from base pointer
  3.  reserve space on stack for local variables, e.g. `subl $8, %esp` (two words)
- "stack frame": parameters, local variables, return address
- function done
  1.  return value in `%eax`
  2.  reset stack
  3.  returns control with `ret`, which pops stack and sets `%eip` to that value
  - `movl %ebp, %esp; popl %ebp; ret`
- calling function
  - `%eax` for return value
  - pop off all parameters
- assume functions you call will overwrite all registers
- Application Binary Interface = C Calling Convention
