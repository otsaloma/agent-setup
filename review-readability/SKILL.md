---
name: review-readability
description: Review code for readability — refactor, rename, clarify and
  simplify its structure and execution flow, then land fixes as a
  series of one-concern commits. Takes optional files or directories to
  review, defaulting to the whole codebase. Use when asked to improve
  readability, clean up, tidy, or make code clearer/shorter, or to do a
  refactoring pass. Not for finding bugs (use code-review) or adding
  features.
---

Scope: $ARGUMENTS — if that's empty, the whole codebase.

You're looking for opportunities to improve the readability of code in
scope. This is a quest to refactor, rename, clarify and simplify the
codebase structure and execution flow. Nothing about the implementation
is sacred, you can freely suggest major changes. Raising versions of
dependencies is possible as well, but you need to justify that, You're
not looking for bugs. You're not looking to add features. Rather make
the code shorter than longer if you can.

First read everything in scope end-to-end before forming any opinion.
Check all references, such as call-sites, and numbers, such as line
counts, before making claims. You need to be sure that the changes you
suggest don't introduce any relevant changes in behaviour. Some changes
in corner cases can be fine, but state it clearly and let me approve it.
If the code is already in good shape, say so instead of wasting our time
with superficial improvements just to think you did your job.

Examples of what to look for:

- Abstractions with a single user
- Comments that restate the code or contradict it
- Data converted back and forth between representations
- Dead code and write-only state
- Defensive checks for things that can't happen
- Hand-rolled versions of what the standard library provides
- Helpers and constants extracted but used once
- Inconsistent data structures passed around
- Inconsistent function order
- Names that mislead
- One feature scattered across files
- One thing kept in several variables
- Overlong functions and deep nesting
- Parameters, options and branches that always take the same value
- Same concept under different names
- The same logic in >2 places
- Using outdated language or library features

Report your findings ordered by payoff. Classify payoff as "low",
"medium" or "high". Only include "optional" suggestions if there's
nothing you recommend applying. Propose a series of commits to fix the
findings. For clarity, list your findings lettered A, B, etc. and
commits numbered 1, 2, etc. One concern per commit, ordered so that each
builds on the last: mechanical renames and single extractions first,
structural splits after, pure moves last. Wait for user input. If given
the go-ahead, do the commits one-by-one reporting your progress clearly
as for example "Next commit 5/7". Follow the repo's and user's commit
rules exactly. If they require approval per commit, show the full
message and wait each time, however many that is.
