---
title: Maybe Not
types: [talk]
urls:
- https://www.youtube.com/watch?v=YR5WdGrpoug
people:
- Rich Hickey
tags:
- Programming
- Testing
- Schemas
- Type Systems
- Clojure
---

- Tony Hoare's billion-dollar mistake quote
- nulls
  - optional arguments
  - conditional returns
  - partial information in aggregates
- Haskell Maybe
- Scala Any &c.
- Haskell much simpler
- forces you to check
- nobody mentions costs, just benefits
- costs in maintenance
  - e.g. breaking existing function callers even when requirements relaxed
  - e.g. breaking existing function callers even when returning A instead of Maybe A
- not really "or" in the programming language
- no union types
- fixing in user space fails
- Either is "LeftRightThingy"
- using English word gives wrong impression
- Kotlin: Nullable and Non-Null types
  - null not a value of all reference types
  - `String` v. `String?`
- Dotty: union types in the plan
- set union of type values
- Either and Maybe aren't state of the art
- Clojure:
  - spec/nillable
  - spec/or
  - hit the same problem in testing
- hard problem: partial information
  - maps sent around
  - "information that travels together"
  - ad + gregare (flock/herd)
- sets v. slots
  - Clojure map: set of keys
  - references: slots
- maps as mathematical functions
  - `({:a 1 :b 2} :b) => 2`
  - the best function in programming
  - should be bale to call like a function
- records/fields/product types
  - place-oriented programming
  - even with named fields
  - `data Person = Person String String Int Float String`
  - complects meaning and position in a list
- maps enumerate what's possible
  - criticism: maps too open
  - true until you add spec
- "schema" imply a shape
- leave the key out
- enumerability of keys and values
- maps know what they know
- RDF-style attributions are context-free
- RDF people have good ideas
- nothing is inherently a Maybe String
- What is a name?
  different from
  Do we know the name?
- `(spec/def ::car (spec/keys :req [::make] :opt [::model, ::year]))`
- when don't we know?
- "I made this mistake too in spec :("
- context, e.g. when calling function B
- spec will be done when I figure this out
- want
  - maximizing schema reuse
  - symmetric request/response: each step further completes a partial record
  - information building pipelines: defaults, accretion
- proliferation of types
- "schema" means "form", "shape"
- multiple schemas increase error
- spec wasn't as good as Clojure
- schemas nest and it gets harder
- things are trees
- describing trees by annotating only the root
- schema = shape split from selection=what's required or provided
- schema: shapes only, no requirements
  - still useful
  - describe
  - name them
...
- I am not going to help you write closed, brittle systems.
...
- now you get to say it the way you think about it
...
- don't nail everything down with spec at the expense of doc
