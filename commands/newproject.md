---
description: Make a brand new separate project with its own git, not connected to anything.
argument-hint: NAME [path]
allowed-tools: Bash(mkdir:*), Bash(git init:*), Bash(ls:*), Bash(test:*), Bash(pwd), Bash(code:*)
---

You are creating a brand new project. It has its OWN git and is not connected to any other project. It is a blank new notebook.

The name (and maybe a path) for this project is: $ARGUMENTS

Do this:

1. If `$ARGUMENTS` is empty, ask the user: "What should I name the new project? (one word, no spaces)" and stop until they answer.

2. Decide the folder. If the user gave a path, use it. Otherwise use `~/Desktop/NAME`, where NAME is the name they gave.

3. If that folder already exists and is not empty, stop and tell the user "A folder already lives there and it is not empty. Pick another name or path so nothing gets overwritten." Do not touch it.

4. Create the folder and start a fresh git repo inside it:

   ```
   mkdir -p <folder>
   git init <folder>
   ```

5. Drop a tiny starter README in the new folder so it is not empty. Write a file named `README.md` containing just the project name as a heading and one line: "New project. Its own git, not connected to anything else."

6. Work out the full absolute path of the new folder.

7. Open it for them in a new VS Code window:

   ```
   code -n <full path of the new folder>
   ```

   If that command is not found (the VS Code `code` command is not installed), do not error out. Instead tell the user the exact folder path and say "Open that folder in a new VS Code window (File > New Window > Open Folder). Tip: install the `code` command from VS Code with Command Palette > Shell Command: Install 'code' command in PATH, and next time it will open by itself."

8. Tell the user, in plain language:
   - "A new window is opening with your brand new project. It has its own git and is not connected to anything else."
   - "The one rule: one folder, one window. This project is totally separate from anything else you have open."

Keep the wording short and plain. No hype.
