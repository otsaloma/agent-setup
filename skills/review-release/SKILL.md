---
name: review-release
description: Review changes since the previous release for release
  readiness — check that new features and fixes are complete, correct
  and coherent, and flag anything left to fix or test. Takes an optional
  base tag or revision, defaulting to the latest version tag. Use when
  asked if a project is ready to release or for a pre-release review.
  Not for release mechanics or bug hunting in unchanged code (use
  code-review).
---

Base: $ARGUMENTS — if that's empty, the latest version tag

Look at git log, changes made since the previous release, i.e. the
previous version tag. If there's a `NEWS.md` file, that should also
correspond with a release marked as "pending" there, after the previous
dated release. Are we now ready to make a release? Are all new features
and fixes implemented correctly and coherently? Is there anything left
to test or amend? Only review the condition of the codebase. Do not nag
about any release mechanics like `NEWS.md` entries, updating
translations, git-tagging or generating release files.

Start your report with a verdict: "ready", "ready after fixes" or "not
ready". Then list your findings lettered A, B, etc., ordered by severity
"blocker", "should fix" or "minor".
