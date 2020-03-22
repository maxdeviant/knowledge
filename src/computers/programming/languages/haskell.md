# Haskell

[Haskell](https://www.haskell.org/) is an advanced purely functional programming language.

## Writing Haskell in the large

Don Stewart, co-author of _Real World Haskell_ mentions the following [suggestions](https://stackoverflow.com/a/3077912) for writing Haskell in the large:

> I talk a bit about this in [Engineering Large Projects in Haskell](https://www.scribd.com/doc/19502765/Engineering-Large-Projects-in-Haskell-A-Decade-of-FP-at-Galois) and in the [Design and Implementation of XMonad](http://xmonad.wordpress.com/2009/09/09/the-design-and-implementation-of-xmonad/). Engineering in the large is about managing complexity. The primary code structuring mechanisms in Haskell for managing complexity are:
>
> #### The type system
>
> - Use the type system to enforce abstractions, simplifying interactions.
> - Enforce key invariants via types
>   - (e.g. that certain values cannot escape some scope)
>   - That certain code does no IO, does not touch the disk
> - Enforce safety: checked exceptions (Maybe/Either), avoid mixing concepts (Word, Int, Address)
> - Good data structures (like zippers) can make some classes of testing needless, as they rule out e.g. out of bounds errors statically.
>
> #### The profiler
>
> - Provide objective evidence of your program's heap and time profiles.
> - Heap profiling, in particular, is the best way to ensure no unnecessary memory use.
>
> #### Purity
>
> - Reduce complexity dramatically by removing state. Purely functional code scales, because it is compositional. All you need is the type to determine how to use some code -- it won't mysteriously break when you change some other part of the program.
> - Use lots of "model/view/controller" style programming: parse external data as soon as possible into purely functional data structures, operate on those structures, then once all work is done, render/flush/serialize out. Keeps most of your code pure
>
> #### Testing
>
> - QuickCheck + Haskell Code Coverage, to ensure you are testing the things you can't check with types.
> - GHC + RTS is great for seeing if you're spending too much time doing GC.
> - QuickCheck can also help you identify clean, orthogonal APIs for your modules. If the properties of your code are difficult to state, they're probably too complex. Keep refactoring until you have a clean set of properties that can test your code, that compose well. Then the code is probably well designed too.
>
> #### Monads for Structuring
>
> - Monads capture key architectural designs in types (this code accesses hardware, this code is a single-user session, etc.)
> - E.g. the X monad in xmonad, captures precisely the design for what state is visible to what components of the system.
>
> #### Type classes and existential types
>
> - Use type classes to provide abstraction: hide implementations behind polymorphic interfaces.
>
> #### Concurrency and parallelism
>
> - Sneak `par` into your program to beat the competition with easy, composable parallelism.
>
> #### Refactor
>
> - You can refactor in Haskell **a lot**. The types ensure your large scale changes will be safe, if you're using types wisely. This will help your codebase scale. Make sure that your refactorings will cause type errors until complete.
>
> #### Use the FFI wisely
>
> - The FFI makes it easier to play with foreign code, but that foreign code can be dangerous.
> - Be very careful in assumptions about the shape of data returned.
>
> #### Meta programming
>
> - A bit of Template Haskell or generics can remove boilerplate.
>
> #### Packaging and distribution
>
> - Use Cabal. Don't roll your own build system. **(EDIT: Actually you probably want to use [Stack](http://haskellstack.com/) now for getting started.).**
> - Use Haddock for good API docs
> - Tools like [graphmod](http://hackage.haskell.org/package/graphmod) can show your module structures.
> - Rely on the Haskell Platform versions of libraries and tools, if at all possible. It is a stable base. **(EDIT: Again, these days you likely want to use [Stack](http://haskellstack.com/) for getting a stable base up and running.)**
>
> #### Warnings
>
> - Use `-Wall` to keep your code clean of smells. You might also look at Agda, Isabelle or Catch for more assurance. For lint-like checking, see the great [hlint](http://hackage.haskell.org/package/hlint), which will suggest improvements.
>
> With all these tools you can keep a handle on complexity, removing as many interactions between components as possible. Ideally, you have a very large base of pure code, which is really easy to maintain, since it is compositional. That's not always possible, but it is worth aiming for.
>
> In general: **decompose** the logical units of your system into the smallest referentially transparent components possible, then implement them in modules. Global or local environments for sets of components (or inside components) might be mapped to monads. Use algebraic data types to describe core data structures. Share those definitions widely.
