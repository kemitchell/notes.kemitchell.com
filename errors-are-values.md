---
title: Errors Are Values
types: [post]
urls:
- https://blog.golang.org/errors-are-values
people:
- Rob Pike
tags:
- Go
- Programming
- Error Handling
---

- ```
  if err != nil {
    return
  }
  ```
- substituting for try-catch
- Errors are values.
- errors can be programmed
- Scanner's `Scan` method provides `Err` method to check for error
- @jxck_
- Japanese language barrier
- ```
  type errWriter struct {
    w io.Writer
    err error
  }
  func (ew *errWriter) write (buf []byte) {
    if ew.err != nil {
      return
    }
    _, ew.err = ew.w.Write(buf)
  }
  ```
- as in archive/zip and net/http and bufio's `Writer`
- lost: track partial progress
- Whatever you do, always check your errors!
