---
title: Concurrency Is Not Parallelism
urls:
- https://www.youtube.com/watch?v=cN_DpYBzKso
types: [talk]
people:
- Rob Pike
tags:
- Go Programming Language
- Programming
- Concurrency
- Parallelism
- Asynchrony
---

- world isn't object oriented but parallel
- expressing worldview
- Go is a concurrent language
- "I can run stuff in parallel."
- concurrency is better
- slower on more processors
- broker worldview
- concurrency := composition of independently executing things, typically functions
- parallelism := simultaenous execution of multiple things, possibly related, possibly not
- concurrency: dealing with a lot of things at once
- parallelism: execution
- concurrent: mouse, keyboard, display, disks
- parallel: vector dot product
- concurrency needs communication to coordinate
- CSP paper
- Erlang
- gopher demos
- incinerating C++ manuals
- move books from pile to incinerator
- more gophers, more carts
- need to coordinate them
- ideas not deep, just good
- double everything
- concurrent combination of two gopher processes
- "concurrent combination"
- not intrinsically parallel
- new design:
  1.  gopher loading cart
  2.  gopher moving cart
  3.  gopher incinerating
- finer-grained concurrency
- add: gopher returning empty carts
- do more work, but run faster
- improved by adding concurrent procedure to an existing design
- more piles, more incinerators
- concurrent decomposition
- parallelize on different axes
- get concurrency right, parallelism is free
- new design: staging dump in the middle
- usual way: double it
- think about components, not parallelism
- algorithmic correctness easy
- book pile: web content
  - gophers: CPUs
  - cart: networking
  - incinerator: proxy, browser

- goroutines
- same address space
- cheap
- multiplexed onto OS threads
- nonblocking
- channels
- like pipes, but typed &c.
- select
- Djikstra's guarded commands
- routine to create thousands of goroutines
- closures
- osmosis the best way to learn

- load balancer
- channel for work to do
- channel for finished work
- channel as part of request, a value
- like file descriptor
- worker queue on heap
- no explicit locking

- query multiple replicas of a database

- Sawzal language: parallel, not concurrent
