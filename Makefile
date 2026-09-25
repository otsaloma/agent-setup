# -*- coding: utf-8-unix -*-

install: install-bin install-skills install-agents-md

ensure-dirs:
	@mkdir -p ~/.claude/skills
	@mkdir -p ~/.codex/skills
	@mkdir -p ~/.gemini/config/skills
	@mkdir -p ~/.pi/agent/skills

install-bin:
	@cp -fv bin/* ~/Binaries

install-skills: ensure-dirs
	@cp -frv skills/* ~/.claude/skills
	@cp -frv skills/* ~/.codex/skills
	@cp -frv skills/* ~/.gemini/config/skills
	@cp -frv skills/* ~/.pi/agent/skills

install-agents-md: ensure-dirs
	@cp -fv AGENTS.md ~/.claude/CLAUDE.md
	@cp -fv AGENTS.md ~/.codex/AGENTS.md
	@cp -fv AGENTS.md ~/.gemini/GEMINI.md
	@cp -fv AGENTS.md ~/.pi/agent/AGENTS.md

.PHONY: install ensure-dirs install-bin install-skills install-agents-md
