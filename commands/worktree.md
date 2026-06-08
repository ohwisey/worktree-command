---
description: Make a connected worktree of the project you are in, so you can work on a second thing without disturbing the first.
argument-hint: NAME
allowed-tools: Bash(git worktree:*), Bash(git branch:*), Bash(git rev-parse:*), Bash(pwd), Bash(code:*)
---

You are creating a git worktree. A worktree is a second copy of the SAME project, on its own branch, in its own folder. It stays connected to this repo. It is a second desk for the same notebook.

The name for this worktree is: $ARGUMENTS

Do this:

1. If `$ARGUMENTS` is empty, ask the user: "What should I name this worktree? (one word, no spaces)" and stop until they answer.

2. Confirm you are inside a git repo by running `git rev-parse --is-inside-work-tree`. If that fails, tell the user "This folder is not a git project, so there is nothing to make a worktree of. If you want a brand new separate project instead, use /newproject." and stop.

3. Find the current branch with `git rev-parse --abbrev-ref HEAD`. Use that as the base. If it cannot be found, use `main`.

4. Create the worktree on a new branch:

   ```
   git worktree add .claude/worktrees/NAME -b worktree-NAME <current branch>
   ```

   Replace NAME with `$ARGUMENTS` and the base branch with what you found in step 3.

5. Work out the full absolute path of the new folder by running `pwd` and joining it with `.claude/worktrees/NAME`.

6. Open it for them in a new VS Code window:

   ```
   code -n <full path of the new folder>
   ```

   If that command is not found (the VS Code `code` command is not installed), do not error out. Instead tell the user the exact folder path and say "Open that folder in a new VS Code window (File > New Window > Open Folder). Tip: install the `code` command from VS Code with Command Palette > Shell Command: Install 'code' command in PATH, and next time it will open by itself."

7. Tell the user, in plain language:
   - "A new window is opening with your worktree. It is the same project on a new branch called worktree-NAME, so you can work here while your other window is busy."
   - "The one rule: one folder, one window, one branch. Do not open this same folder in two windows at once."
   - "When you are done: run `git worktree remove .claude/worktrees/NAME` from the main project."

Keep the wording short and plain. No hype.
