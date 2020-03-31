---
title: What Is Open Source Compatibility?
types: [talk]
urls:
- https://www.youtube.com/watch?v=B0aMYeMv-8I&list=WL&index=42&t=0s
people:
- Heather Meeker
tags:
- Open Source
- Software Licensing
- License Compatibility
---

- direct licensing model
- easy: same license
- valid: Apache-2.0, GPLv3, MIT, &c.
- valid: LGPL, EPL, MPL
- error: GPLv3 v. EPL v. CDDL
- rules
  1.  CC0, BSd, and MIT compatible with everything.
  2.  Apache 2.0 compatible with everything but GPLv2 and LGPLv2.1.
      - controversial
      - patent provisions
      - Linux: GPLv2 only
      - most GPLv2 code really GPLv2+
      - GPLv3 is compatible
  3.  LGPL compatible with equivalent version of GPL
      - says so
      - LGPL-2.1-only
  4.  Most copyleft licenses not compatible with each other.
      - additional conditions
      - MPL2-GPLv3, LGPLv2.1, GPLv3, LGPLv3
      - MPL licensors can opt out of explicit compatibility, but rare
  5.  more conditions, less compatible
      - permissive: few
      - copyleft: more
      - strong: more, weak: less
- compatibility chart
- Affero strongest in common use
