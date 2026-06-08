# HANDOFF — Worktree + New Project commands (Patreon 2-minute video)

## RESUME HERE
- **Working on:** TWO simple Claude Code commands + a 2-minute-video-ready package teaching them. Brand new, not started.
  - `/worktree NAME` -> makes a CONNECTED worktree of the project you are in
  - `/newproject NAME` -> makes a brand new SEPARATE project (its own git)
- **Next step:** build the package in this folder (2 command files + dead-simple README + optional one-line installer). Full spec is below, so you can just build it.
- **Waiting on you (Luke):** one thing only. Ship as its own small repo (recommended, cleaner standalone video) or fold into the credit-saver toolkit. Default to its own repo unless Luke says otherwise.

----- details -----

**The video's whole hook (keep it this simple):** there are two ways to start new work in Claude Code, and we give a one-word command for each:
1. CONNECTED to your current project -> a worktree (second desk, same notebook)
2. SEPARATE, brand new -> a fresh project (a blank new notebook)

**What to build:**

`commands/worktree.md`
- On `/worktree NAME`, run: `git worktree add .claude/worktrees/NAME -b worktree-NAME <current branch, default main>`
- Then tell the user the exact folder to open in a new VS Code window.
- Use `$ARGUMENTS` for NAME. If no name is given, ask for one. Confirm the path at the end.
- This makes a copy of the CURRENT repo. Connected.

`commands/newproject.md`
- On `/newproject NAME`, make a brand new folder (default `~/Desktop/NAME`, or a path the user gives), run `git init` inside it, optionally drop a tiny starter README.
- Then tell the user the exact folder to open in a new VS Code window.
- Use `$ARGUMENTS` for NAME. If no name is given, ask. Confirm the path.
- This is its OWN git, totally separate from any other project.

`README.md` (dead simple, plain English, NO em dashes, no hype):
- The one idea: two ways to start work, worktree (connected) vs new project (separate).
- The analogy: worktree = second desk, same notebook; new project = blank new notebook.
- The key thing people get confused by: a worktree is ALWAYS a copy of the project you run it in, no matter where you put the folder. Only `git init` makes a truly separate project.
- The two commands and what each does.
- Install (one line, or paste-to-Claude "save this as a slash command called worktree/newproject").
- The one rule: one folder = one window = one branch, never open the same folder in two windows.
- Cleanup: `git worktree remove` for worktrees.

Optional `install.sh`: copies BOTH command files to `~/.claude/commands/`. Copy the safe style of the credit-saver installer at `~/Desktop/patreon/claude-credit-saver/install.sh` (backs up, no clobber).

**Video talking points:** the problem (one folder at a time is slow, and people mix up connected vs separate), the two commands, the analogy, the one rule, cleanup.

Keep it tiny and simple, exactly like the credit-saver. Plain English, no em dashes, no hype.

**Related open item (different project, just tracking):** the credit-saver toolkit at `~/Desktop/patreon/claude-credit-saver` is built, installed, and tested. It still needs publishing to GitHub (fill `REPLACE_ME` once Luke picks the account).
