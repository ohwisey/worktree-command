# Your confidence card (behind the scenes, kept simple)

Everything here you have already done with your own hands. Glance at this before filming.

## The 7 true things to remember

1. **A worktree is a second desk for the SAME project.** It is always a copy of whatever window you run it in. Run it from Vitality, you get a copy of Vitality.

2. **It is a safe sandbox.** The copy lives on its own branch, so it never changes your real project. Your live site is never touched until you choose to merge the work back in.

3. **Worktree folder hides inside the project** at `.claude/worktrees/NAME`. A new project (`/newproject`) is the one that makes a folder on your Desktop. That is the whole difference: inside (connected) vs Desktop (separate).

4. **A command is just a note in a folder.** Installing copies two notes (`worktree`, `newproject`, plus `cleanup`) into Claude's commands folder. That is why typing the word works.

5. **The new window opens itself only after you teach the computer the word "code"** (the one-time VS Code click). Without it, the command still works, it just tells you the folder to open by hand.

6. **The new window opens with your project, then you start a fresh Claude in it.** Now you have two Claudes working side by side. The window does NOT arrive with Claude already mid-task.

7. **`/cleanup` is safe.** It removes only the side-desk folder. It never touches your main project, and it warns you before removing anything with unsaved work.

## Say these honest lines (they protect your credibility)

- "Type one word, a new window opens with your project ready, and you start a fresh Claude right there." (NOT "Claude is already working in it.")
- "One line installs all three commands. Then one quick VS Code click turns on the auto-open."
- "The commands work on Mac and Windows. On Mac it is a one-line install. On Windows, paste the file to Claude and say save this as a command."
- "A worktree is always a copy of the project you run it in." (This is the thing people get wrong. You felt it yourself.)

## The 3 commands

- `/worktree NAME` -> connected copy, new window. Use it when one window is busy.
- `/newproject NAME` -> brand new separate project, new window.
- `/cleanup` -> tidy up worktrees you are done with.

## Filming order (tight, about 2 minutes)

1. The hook: one window busy on a long task, you are just waiting. Dead time.
2. The install: paste one line, all three commands appear.
3. The one-time setup: the VS Code "code" click, so windows auto-open.
4. The magic: type `/worktree`, a new window pops open by itself.
5. The payoff: start Claude in the new window, two Claudes working at once.
6. The tidy: `/cleanup` sweeps away the test ones, never touches your real project.
7. The one rule: one folder, one window, one branch. And connected (`/worktree`) vs separate (`/newproject`).
