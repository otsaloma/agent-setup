---
name: review-modernize
description: Review code for modernization — replace deprecated
  symbols, adopt newer language and library abstractions, and align with
  current external conventions and platform practices, then land fixes
  as a series of one-concern commits. Takes optional files or
  directories to review, defaulting to the whole codebase. Use when
  asked to modernize, update, migrate off deprecated APIs, or bring code
  up to date with current practices. Not for finding bugs (use
  code-review), general readability cleanups (use review-readability) or
  adding features.
---

Scope: $ARGUMENTS — if that's empty, the whole codebase.

You're looking for opportunities to modernize code in scope. This is a
quest to refactor and adapt to changes around us. Nothing about the
implementation is sacred, you can freely suggest major changes. Raising
versions of dependencies is possible. You're not looking for bugs.
You're not looking to implement features.

First read everything in scope end-to-end before forming any opinion. If
the code is already in good shape, say so instead of wasting our time
with superficial improvements just to think you did your job.

Examples of what to look for:

- **Using deprecated symbols.** Consider any deprecated modules,
  classes, functions etc. Is there a recommended newer alternative? Is
  there a clear upgrade path? Is the change doable without regressions?

- **Not using latest abstractions.** Consider any modules, classes,
  functions etc. that are not deprecated, but for which newer and more
  elegant options have been made available. Examples from Python:
  f-strings, with-statement, walrus operator, pathlib. Is there a clear
  upgrade path? Is the change doable without regressions?

- **Not aligned with latest external practices.** Consider external
  technologies, conventions, etc. Are we aligned with those? Examples
  from Linux desktop: latest theming and UI-design patterns, dark theme
  support, freedesktop.org portals, permission and sandboxing
  conventions. Which apply to us? What should we change to be in-line
  with the wider state-of-the-art?

Report your findings ordered by payoff. Classify payoff as "low",
"medium" or "high". Only include "optional" suggestions if there's
nothing you recommend applying. Propose a series of commits to fix the
findings. For clarity, list your findings lettered A, B, etc. and
commits numbered 1, 2, etc. One concern per commit, ordered so that each
builds on the last. Wait for user input. If given the go-ahead, do the
commits one-by-one reporting your progress clearly as for example "Next
commit 5/7". Follow the repo's and user's commit rules exactly. If they
require approval per commit, show the full message and wait each time,
however many that is.
