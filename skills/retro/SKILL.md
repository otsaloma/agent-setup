---
name: retro
description: Look back at this repo's coding agent sessions over a
  period for lessons worth keeping — where the user pushed back,
  corrected or redirected an agent — and suggest additions to user- or
  repo-level AGENTS.md or skills without editing anything. Takes a
  period such as "1 week" or "1 month", defaulting to one week. Use when
  asked for a retro, lessons learned, or what to add to instructions or
  skills. Not for reviewing code.
---

Period: $ARGUMENTS — if that's empty, one week.

Read this repo's sessions from that period, of all agents: Claude's in
`~/.claude/projects` (directory named after the repo path, plus its
`memory`), Codex's in `~/.codex/sessions` (by date, with the repo path
in `session_meta`) and Pi's in `~/.pi/agent/sessions` (directory named
after the repo path). Focus on my messages and the replies they react
to.

Find where I pushed back: corrected an agent, rejected or reverted
something, asked for something simpler or repeated an instruction. For
each, consider whether a written instruction would have prevented it for
any agent in a future session. Memory doesn't count, it's on this system
only and other agents don't see it. Pushback that recurs across sessions
weighs the most.

Suggestions can target both the user-level AGENTS.md and skills,
installed from `~/Source/agent-setup` (refer to them there), and this
repo's AGENTS.md and skills. Put a lesson at the user level only if it
isn't specific to this repo.

Only suggest what an agent would otherwise get wrong. Leave out what it
can quickly discover on the fly, decisions specific to one task, what's
already written down and basics. A summary of what was done is not a
lesson. If nothing qualifies, say so.

Instructions that rely on judgment, such as "keep it simple" or "skip
minor issues", don't work: if agents could judge that, I wouldn't have
pushed back. Prefer a rule an agent can check, with a concrete example.

So that this repo's AGENTS.md doesn't just grow with each retro, also
look it over for things to remove: what an agent would do anyway without
being told, what repeats the user-level AGENTS.md and what no longer
matches the code. Leave the user-level AGENTS.md out of this.

List your suggestions lettered A, B, etc. For each, give the target file
and section, quote the pushback it comes from and how often it occurred,
and give the exact wording you propose, keeping it short. For removals,
quote the text and say why it's unnecessary. Also flag anything in the
current instructions that contradicts what I actually wanted. Suggest
only, don't edit. Wait for my input.
