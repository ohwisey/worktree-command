# Two ways to start new work in Claude Code

Ever sit there watching one Claude Code window grind through a long task with nothing to do? This kit turns that dead time into a second window of real work. One word, a new window opens, you keep going.

There are two ways to start something new, and people mix them up all the time. So here are two one-word commands, one for each. Both open the new window for you automatically.

- **`/worktree`** keeps you on the **same** project. A second desk for the same notebook.
- **`/newproject`** starts a **brand new, separate** project. A blank new notebook.

That is the whole idea. **`/worktree`** stays connected. **`/newproject`** starts fresh.

## What each one does

- **`/worktree NAME`** makes a connected copy of the project you are in. Same project, new branch, new folder. A new window opens ready to go, so you can work on a second thing while your first window is busy.
- **`/newproject NAME`** makes a brand new separate project with its own git. Not connected to anything. A new window opens ready to go.

Both commands open the new VS Code window for you. (This uses the VS Code `code` command. If you do not have it, the command tells you the folder to open and how to turn auto-open on. One time setup: in VS Code, open the Command Palette and run "Shell Command: Install 'code' command in PATH".)

## The thing people get confused by

A worktree is ALWAYS a copy of the project you run it in. It does not matter where you put the folder. It is still the same project.

Only `git init` (which is what `/newproject` does) makes a truly separate project.

So: if you want the same project, use `/worktree`. If you want a clean new thing, use `/newproject`.

## The one rule

One folder, one window, one branch. Never open the same folder in two windows at the same time.

## Install

One line in your terminal. It installs both commands for you and backs up anything it would touch:

```
curl -fsSL https://raw.githubusercontent.com/ohwisey/worktree-command/main/install.sh | bash
```

Or, if you do not want to run a script, paste this to Claude Code:

> Save this as a slash command called worktree, and this other one as newproject.

Then paste the contents of `commands/worktree.md` and `commands/newproject.md`.

The commands live in `~/.claude/commands/`, so they work in every project.

## Cleanup

When you are done with a worktree, run this from the main project:

```
git worktree remove .claude/worktrees/NAME
```

New projects are just normal folders. Delete them like any other folder when you are done.
