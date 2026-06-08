---
description: List your worktrees and safely remove the ones you do not want. Never touches your main project.
argument-hint: [NAME or all]
allowed-tools: Bash(git worktree:*), Bash(git status:*), Bash(git rev-parse:*), Bash(git -C:*)
---

You help the user tidy up their worktrees (the connected copies made by /worktree). Two safety rules you never break: you never remove their main project, and you never delete unsaved work without warning them first.

The user may have typed a worktree name, or the word "all", after the command: $ARGUMENTS

Do this:

1. Confirm you are inside a git repo with `git rev-parse --is-inside-work-tree`. If that fails, tell the user "This folder is not a git project, so there are no worktrees to clean up." and stop.

2. List every worktree with `git worktree list`. The FIRST line is always the main project. Never offer to remove it. The rest are the side copies (they live under `.claude/worktrees/`).

3. Show the user a simple list of just the side worktrees (their name and branch). If there are none, say "You have no worktrees to clean up. Your setup is already tidy." and stop.

4. Decide what to remove:
   - If `$ARGUMENTS` matches one worktree name, that is the one to remove.
   - If `$ARGUMENTS` is "all", plan to remove all the side worktrees (never the main project).
   - If `$ARGUMENTS` is empty, ask: "Which one should I remove? Type its name, or 'all' to remove every one. Your main project is never touched." and stop until they answer.

5. Before removing each one, check it for unsaved work with `git -C .claude/worktrees/NAME status --porcelain`. If it shows any changes, do NOT remove it. Warn the user: "The worktree NAME has unsaved changes, so I left it alone and nothing was lost. Save or commit your work there first, or tell me to force remove it." Then skip it.

6. For worktrees that are clean, remove them with `git worktree remove .claude/worktrees/NAME`. (Only use `git worktree remove --force` if the user has clearly told you to force it after a warning.)

7. Tell the user in plain language what you removed, what you left, and why you skipped any. Confirm their main project was never touched.

Keep the wording short and plain. No hype.
