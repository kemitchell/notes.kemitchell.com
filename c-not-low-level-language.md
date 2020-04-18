---
title: C Is Not a Low-Level Language
subtitle: Your Computer Is Not a Fast PDP-11
types: [article]
people:
- David Chisnall
urls:
- https://dl.acm.org/doi/pdf/10.1145/3212477.3212479?download=true
- https://queue.acm.org/detail.cfm?id=3212479
tags:
- Computer Science
- Computer Programming
- C Programming Language
- Parallel Programming
---

- Meltdown and Spectre
- root causes
- speculative execution past an access check, observe result via side channel
- features added to let C programmers continue to believe they were programming in a low-level language
- hasn't been the case for decades
- Alan Perkis: low-level languages require attention to the irrelevant
- spectrum: assembly to UI of Starship Enterprise
- "close to the metal"
- "close to how humans think"
- easy to argue for C & PDP-11
- pre- and post-increment operators corresponded to PDP-11 addressing modes
- goal: fast processors exposing same abstract machine as PDP-11
- instruction-level parallelism
- compare GPUs: explicitly parallel programs
- modern Intel: <= 180 instructions in flight at a time
- C: branch every 7 instructions on average
- power consumption
- register rename engine takes lots of die and power
- absent on GPUs
- flat memory
- not for two decades
- three levels of cache to hide latency
- cache completely hidden from C

## Optimizing C
- no simple translation providing fast code
- Clang and LLVM: 2 million lines of code
- e.g. big loops, `restrict` keyword
- Fortran survives
- would have native vector types of arbitrary lengths
- always easier to split large vector operations than to construct large vector operations
- optimizers v. C memory layout guarantees
- complex padding
- scalar replacement of aggregates
- loop unswitching
- undefined behavior

## Understanding C
- understand abstract-physical mapping
- comprehensibility concerns
- zero structure, then set some fields: all padding bits remain zero?
- BCPL:
  - values are words
  - words is data or address
  - memory a flat array
- C: support segmented architectures, even garbage-collected VMs
- pointer provenance

## Imagining a Non-C Processor
- Spectre and Meltdown mitigations largely offset perf gains of last decade
- UlstraSPARC Tx
- ARM SVE
- cache coherency protocol
- shared and mutable data the expected norm
- Project Maxwell
- likely:
  - large number of threads
  - wide vector units
  - much simpler memory model
- unlikely to succeed commercially, due to wealth of existing C code
- myth: parallel programming hard
- Alan Kay taught children to write actor-model programs with more than 200 threads
- Erlang: thousands of parallel components
- more accurate: parallel programming in a language with a C-like abstract machine is difficult
