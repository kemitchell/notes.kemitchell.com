---
title: Advanced Testing with Go
urls:
- https://www.youtube.com/watch?v=yszygk1cpEc
types: [talk]
people:
- Mitchell Hashimoto
tags:
- Go
- Programming
- Testing
---

- Hashicorp: a few million lines of Go
- Terraform: 10 to 1 test to code
- testing at every layer
- parts
  1.  test methodology
  2.  writing testable code
- rewriting lots of code to make it testable
# Table Driven Tests
- `cases := []struct{A, B, Expected int}{ ... }`
- `for _, tc := range cases { ... }`
- easy to add new cases
- even if there's just one case to start
- consider putting in maps and adding keys to error messages
# Test Fixtures
- relative path
- `go test` will always set CWD to package
- `test-fixtures` directory
# Gold Files and Test Flags
- from standard library
- read correct output from `.golden` file
- `--update` global flag
- things that are hard to compare against
- "golden output"
- standard library uses to test `fmt` output
- e.g. `--slow` flag for slow tests with large inputs
- problem: huge Git diffs
# Global State
- don't do it
- can't mock
- races
- usually configuration
- make var, not const, so tests can change
- can memoize, but provide function to clear
# Test Helpers
- help condense test code
- "I personally don't care about DRY."
- need to see what is being tested easily
- avoid polluting tests with error checks
- don't return errors from helpers, fail
- return function to do cleanup
- defer to cleanup function
- `testChdir` for duration of test, cleanup restores current working directory
- really despise magic (because Ruby)
- changing directory took 15 lines of Go
- started with I/O closers
# Package and Functions
- use them
- don't be afraid
- do it a lot
- not too much
- in general, only test exported functions
- some people do black-box integration testing only
- test in layers
- black-box and unit test
- will test complex unexported
- test every thing at every level
# Networking
- make a real network connection
- interfaces make good mocking points
- no point in mocking `net.Conn`
- IPv4 in tests
# Configurability
- everything
# Subprocessing
- e.g. spawning Git
- people find hard to test
- options
  1.  actually run
  2.  input and output
- `exec.Cmd` is not an interface, but can get around it
# Interfaces
- mocking points
# Testing as a Public API
- expose test helpers
- `testing.go`
- `testing_*.go`
- `TestConfig`
- `TestValidConfig`
- `TestInvalidConfig`
- `TestServer(t) (new.Addr, io.Closer)`
- conformance testing for interfaces: `TestDownloader(t, Downloader)`
- timing-dependent tests
- don't use fake time at Hashicorp
- use multiplier configurations: timeout times multiplier
# Parallelization
- don't run tests in parallel
- test one thing, not unit and parallel at same time
