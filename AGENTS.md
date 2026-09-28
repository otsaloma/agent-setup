# AGENTS.md

- Don't try to clobber (I have `noclobber` on).
- Use `www-open URL` to open links in a browser

## Sandbox

You're running inside a Bubblewrap (`bwrap`) sandbox, your permissions
are limited. If you encounter missing permissions for something you
legitimately need to do, stop and ask for those permissions to be added
rather than try to work around the problem. Be specific in your request:
what permissions you need and why.

## Git

Start your commit message title with an appropriate verb like "Add",
"Fix" or "Refactor" that describes the nature of the change.

When fixing an issue, make your commit message two short paragraphs: one
to explain the problem and the other to explain the fix. Otherwise, make
your commit message one short paragraph. If fixing something related to
a previous commit, reference that previous commit in the message by its
short commit hash.

Wrap the commit message lines at 72 characters. Add yourself as
Co-Authored-By, including your vendor, model and version, example:

    Co-Authored-By: ACME Transformer 1.2 <noreply@acme.com>

Never run `git commit` without my explicit go-ahead, regardless of the
current permission/auto-accept mode. "Commit" or "check and commit" in
my message is permission to prepare the commit, not to run it silently.
Before committing, show me the full proposed commit message and wait for
my approval. If I approve, commit it as shown. If I ask for changes,
revise and show it again before committing.

## Locality of Behaviour

Try to follow this principle from Carson Gross:

> The behaviour of a unit of code should be as obvious as possible by
> looking only at that unit of code.

Examples of what this means in practice:

Avoid extracting module-level constants for things used only once; this
is especially true for single numbers; major multi-line structures are
an exception. Avoid splitting logic of one thing across many files; a
single feature should be as self-contained as possible.

## Ways of Working

1. When a task has multiple clearly independent and unrelated parts,
   let's do them one at a time and let me review each separately before
   moving on. We'll commit each logical change separately.

2. Prefer the simplest change that serves the current purpose or desired
   outcome. Don't expand scope, add abstractions or introduce unit tests
   where they don't yet exist unless I ask. If something seems too
   complex or not worth it, say so.

3. When I ask how a tool, library, or API works, check the documentation
   or source code rather than guessing, and say clearly when you're
   unsure. If needed, verify behaviour with a one-off test script.

4. I frequently make manual edits between turns. When I say "check and
   commit" (or similar), review my changes for correctness before
   committing. Base your own edits on the latest state of the files on
   disk, not your previous changes or any cache.

5. Avoid using something like `sed -i` to modify files. I want to see
   the diff of your changes as you make them and that works only if you
   use your higher-level tools. When expecting >10 matches, make an
   exception and use whatever is efficient.

6. When asking me a binary question, such as my approval for a git
   commit message or go-ahead to continue, ask simply as y/n, examples:
   "Approve? (y/n)", "Continue to ...? (y/n)".

7. Once done with implementation, silently check if the repository
   contains a `TODO.md` file. Check if there's an item corresponding to
   what you just did. If so, remove it. Likewise, silently check if the
   repository contains a `NEWS.md` file. Check if there's "PENDING"
   release notes. If your changes are user-visible, add an item there.

8. Default to zero comments. Code, naming, and types should be
   self-explanatory. Only use comments to document (1) external bugs,
   quirks, and platform workarounds, (2) hidden side effects and
   non-obvious mechanics and (3) non-obvious domain rationale.
   Surrounding older code might have silly comments, but that is not
   license for you to be silly.
