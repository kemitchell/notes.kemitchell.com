---
title: async/await with async-std
types: [presentation]
urls:
- https://www.youtube.com/watch?v=L7X0vpAU-sU
people:
- Florian Gilcher
tags:
- Rust Programming
- Asynchronous Programming
---
- futures-rs fuller than minimal Future in core
- use `async_std::prelude::*;`
- seeking stability for Rust async
- exports all needed types, including some reexported
- `std::path::Path` can block!
- register interest in an event
- completion-based
- moves the thinking
- futures run using tasks
- people stopped wanting async in trainings, said too unstable, waiting
- blocking not sharply defined
- `task::block_on()` for examples
- `task::spawn()` gives join handle back
- single allocation for join handles
- `task::spawn_blocking`
- patterns: racing and joining
- `first.race(second).await`
- `join!(first, second).await`
- streams replace Iterator in std
- split, merged, iterated over
- TCPListener new connections
- 1.39: `incoming.next().awai`
- currently no for-loop integration
- `ipv4.merge(ipv6)`
- sync module with async-ready structures
- lay my task sleeping
- wake me up
- channels based on Crossbeam channels
- always bounded channels
- very fast, faster than Crossbeam
- currently unstable API
- receiving end is a stream
- "Understanding tasks and streams is more important than understanding futures."
- Communication between tasks? Use a channel?
- fully embrace futures-rs, the core types and stable bits
- Stream, AsyncRead, AsyncWrite, AsyncSeek
- not compatible with Tokio's versions
- Tokio still wants to experiment
- fundamental mission conflict: stabilize
- applications should use async-std directly
- libraries should use futures-rs e.g. async-tls
- other executors: Google Fuschia, bastion.rs, wasm-bindgen-futures, company-internal ones
- fyperfocus on benchmarks v. ergos, stabilization
- benchmarks are changing
- can innovate _and_ commit to stability
- 1.0 tomorrow
- 2.0 for new language features, e.g. async for loop, and futures changes that break crates
- funded by Ferrous Systems
- OpenCollective
- https://async.rs
