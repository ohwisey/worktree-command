# HANDOFF — /worktree command (Patreon 2-minute video)

## RESUME HERE
- **Working on:** a simple `/worktree` Claude Code command + a 2-minute-video-ready package teaching it. Brand new, not started yet.
- **Next step:** build the package in this folder (command file + dead-simple README + optional one-line installer). Full spec is in the details below, so you can just build it.
- **Waiting on you (Luke):** one choice. Ship it as its OWN tiny repo, or fold it into the existing credit-saver toolkit as a second command. (Recommended: its own small repo, makes a cleaner standalone 2-minute video.)

----- details -----

**Goal:** a quick, valuable Claude Code video for Liam's Patreon, same simple style as the credit-saver. It teaches "run several projects at once without them crashing into each other" using git worktrees, made one-word-easy with a `/worktree` command.

**What to build:**
- `commands/worktree.md` — a slash command. When the user types `/worktree NAME`, Claude should run:
  `git worktree add .claude/worktrees/NAME -b worktree-NAME <current branch, default main>`
  then tell the user the exact folder to open in a new VS Code window. Use `$ARGUMENTS` for NAME. If no name is given, ask for one. Confirm the new folder path at the end.
- `README.md` — dead simple, plain English, **no em dashes** (Luke's rule), no hype. Explain worktrees with the "second desk, same notebook, different chapter" analogy. Cover: what it is, why (parallel work with no clobbering), how to install the command, the one rule (one folder = one window = one branch, never open the same folder in two windows), and cleanup (`git worktree remove`).
- Optional: a one-line `install.sh` like the credit-saver, OR just the easy "paste this into Claude and say: save it as a slash command called worktree."

**Video talking points:** the problem (working one folder at a time is slow; opening the same folder twice clobbers your work), the fix (worktrees are isolated copies on their own branches), the easy button (`/worktree NAME`), the one rule (never open the same folder twice), cleanup.

Keep it tiny and simple, exactly like the credit-saver. Plain English, no em dashes, no hype.

**Related open item (different project, just tracking):** the credit-saver toolkit at `~/Desktop/patreon/claude-credit-saver` is built, installed, and tested. It still needs publishing to GitHub (fill the `REPLACE_ME` username once Luke picks the account). Not part of this video.
