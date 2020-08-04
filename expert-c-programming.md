---
title: Expert C Programming
subtitle: Deep C Secrets
types: [books]
people:
  - Peter van der Linden
tags:
  - Programming
---

# Notes

- EIEIO instruction (xxii)
- "California...eight hours behind London, and several years ahead." (xxiv)
- New Zealand sees date bugs first (xxv)
- "C is quirky, flawed, and an enormous success." --- Dennis Ritchie (1)
- "Performance is almost everything in a compiler." (3)
- ++ and -- did _not_ come from PDP-11 addressing modes (3)
- features invented for compiler writers (5)
- use preprocessor for macros that don't require extensive discussion (7)
- BASH: C preprocessor used to imitate Algol-68 syntax (8)
- Steve Johnson's Portable C Compiler '78 (9)
- originally `b=+3`, not `b+=3` (10)
- standards manuals only make sense if you already know what they mean (12)
- ISO adopted ANSI with annoying changes, then ANSI readopted ISO C (13)
- easier and cheaper to buy annotated standard than official copy (13)
- implementation-defined := compiler writer chooses what happens, must document (14)
- unspecified := behavior of something correct with no standard of imposed requirements (14)
- undefined := behavior of something incorrect, no standard-imposed requirements (14)
- constraint := must be obeyed, else undefined! (14)
- strictly conforming := only specified features ∧ doesn't exceed any implementation-defined limit ∧ no output depends on implementation-defined, unspecified, undefined features (16)
- conforming := can depend on nonportable features (16)
- /usr/group history (18)
- PATH_MAX contradiction (19)
- error in first footnote (19)
- prototypes (paramter types) from C++ (20)
- language lawyers (22)
- const only for indicating params read-only (25)
- don't use unsigned type just because will never be negative (28)
- "hacker" has two meanings like "bad" (29)
- blurb on FSF and GCC (29)
- GCC 1.34 launches a game on encountering #pragma (30)
- Mercury orbital trajectory bug (31)
- `malloc(strlen(str))` XX (32)
- sins of commission, sins of omission, sins of mission (32)
- C++ disappointing:
  - doesn't address fundamental C problems
  - classes build on deficient type model (33)
- the programmer is always right (34)
- case fall-through "misfeature" (37)
- AT&T phone disruption (38)
- default global visibility a mistake (42)
- too terse (42)
- overloaded symbols table (43)
- "some of the operators have the wrong precedence" (44)
- * and / come before + and -. Put everything else in parentheses. (47)
- fgets() instead of gets() (49)
- other systems separate command flags and arguments (51)
- maximal munch strategy (53)
- returning allocated memory v. requiring caller to allocate memory (58)
- "Memory management works best if you can write the 'free' at the same time as you write the 'malloc'." (58)
- mistake to split lint out of compiler (59)
- "Lint is your software conscience."  (59)
- the earlier bug found, the cheaper to fix (60)
- Mariner 1 algorithm bug (60)
- C declarations easy to parse for compiler (64)
- significantly and needlessly complicated (65)
- declarations resemble uses (65)
- declarator: identifier, pointers, function brackets, array indications (67)
- prefer not mixing struct and variable dec's (70)
- parameters in registers for speed (70)
- unions in structs with type info. (72)
- 100 times more structs than unions (73)
- precedence, high to low:
  - parentheses grouping
  - postfix:
    - function pointers
    - array brackets
  - prefix: pointer syntax (74)
