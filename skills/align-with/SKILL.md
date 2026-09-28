---
name: align-with
description: Align part of this codebase with the same part in another
  of the user's projects — compare, list the differences, adapt what
  applies and land it as a series of one-concern commits. Takes the path
  of the reference project, optionally followed by what to align, such
  as a file, module or feature, defaulting to shared infrastructure. Use
  when asked to align with, follow, copy or adapt something from another
  repo. Not for general modernization (use review-modernize) or
  readability (use review-readability).
---

Reference and scope: $ARGUMENTS — the first word is the path of the
reference project, the rest names what to align, for example "Makefile"
or "paths and CSS loading". If only the path is given, consider shared
infrastructure: project layout, build and install, packaging, tests,
`AGENTS.md` and modules that both projects have in some form.

The reference project shows how I currently prefer to do things. You're
looking to bring this project in line with it. First read both sides
end-to-end, the reference and our counterpart, including call-sites,
before forming any opinion. Understand why the reference does what it
does.

Adapt, don't copy. Carry over the structure, naming, conventions and
idioms, but leave out what doesn't apply here, such as features,
dependencies, options or build steps this project doesn't have or need.
Keep names that are specific to this project. If our version does
something better than the reference, say so, I might want to change the
reference instead, but never edit the reference project. If the two are
already aligned, say so instead of inventing differences.

Report the differences lettered A, B, etc. For each, say what differs
and whether you'd adopt, adapt or skip it and why. Flag clearly any
change in behaviour visible to users or packagers. Propose a series of
commits numbered 1, 2, etc. One concern per commit, ordered so that each
builds on the last. Wait for user input. If given the go-ahead, do the
commits one-by-one reporting your progress clearly as for example "Next
commit 5/7". Follow the repo's and user's commit rules exactly. If they
require approval per commit, show the full message and wait each time,
however many that is.
