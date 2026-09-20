#!/bin/sh
set -eu

TARGET_DIRS="
$HOME/.claude/skills
$HOME/.codex/skills
$HOME/.pi/agent/skills
"

install_link() {
    SKILL=$1
    TARGET_DIR=$2
    mkdir -p $TARGET_DIR
    echo "$SKILL → $TARGET_DIR"
    ln -sf --target-directory=$TARGET_DIR $(pwd)/$SKILL
}

find . -name SKILL.md -exec dirname {} \; | while IFS= read -r SKILL; do
    for TARGET_DIR in $TARGET_DIRS; do
        install_link ${SKILL#./} $TARGET_DIR
    done
done
