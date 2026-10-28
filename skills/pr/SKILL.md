---
name: pr
description: Prepare a GitHub pull request for the current work —
  branch off, commit and push as needed, then prefill the PR title and
  description and open it in a web browser for the user to review and
  submit. Use when asked to open, create, make or prepare a PR or pull
  request. Not for reviewing a PR (use code-review) or merging one.
---

Prerequisites:

1. If currently on the `master` or `main` branch, look at the
   uncommitted changes and suggest a suitable branch name based on
   those. If approved, create the branch and switch to it.

2. Check if there are uncommitted changes. If yes, suggest to commit
   those as per any user- and repository-level commit rules in
   instructions you have read.

3. Check if there are unpushed changes. If yes, push those changes
   without asking. You can do this only for feature branches (not
   `master` or `main`) and only changes you can push without `--force`.

Stop if there's nothing pushed to make a PR from.

Then use `gh pr create --web --title ... --body-file -` to prefill a
GitHub pull request and open it in a web browser for me. Do not submit
the PR, I need to review and submit it myself. With `--body-file -` use
a quoted heredoc (`<<'EOF'`) so that you can use proper Markdown such as
backticks without breaking the shell command. If a PR already exists for
the branch, just open it with `gh pr view --web`.

If there's only a single commit of changes in the branch, use that
commit's title and message as the PR title and description, dropping any
Co-Authored-By line.

If there's more than one commit, look at the commits at a high-level:
focus on why, what has been the intent and principles of the solution.
Based on that, figure out a suitable PR title and description.
Description should be one short paragraph. Do not include technical
details like lists of symbols changed.

Write the description as unwrapped paragraphs, using proper Markdown
formatting for inline code etc. If the work resolves an issue from a
tracker, end the description with `Closes` followed by the issue
reference, e.g. `Closes #123` or `Closes ENG-123`. Do not include any
attribution line of your own.
