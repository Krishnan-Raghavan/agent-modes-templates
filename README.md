# Agent Modes Templates

This repository contains reusable agent/chatmode templates you can use across projects.

Purpose
- Provide a central place for sanitized example chatmodes and a minimal workflow to copy or symlink modes into projects.

Included
- `.github/chatmodes/example.chatmode.md` — sanitized example
- `scripts/sync-chatmodes.sh` — helper to copy/symlink modes into a project
- `LICENSE` — Apache License 2.0
- `README.md` — this file

How to use
1. Create the remote repo on GitHub (see commands below) or use the web UI.

2. Push this template to the remote and use it as a starting point for new projects.

Quick create & push (once `gh` and `git` are set up):

```bash
# from inside this folder
git init
git add .
git commit -m "Initial agent modes template"
# replace <OWNER> with your GitHub username or org and pick a repo name
gh repo create <OWNER>/agent-modes-templates --public --source=. --remote=origin --push
```

If you don't have `gh` installed, see https://cli.github.com/manual/installation for installation instructions.

Sync modes from your central folder into a project:

```bash
# make a project-level chatmodes folder and copy modes in (or symlink)
./scripts/sync-chatmodes.sh /path/to/your/project
```

License: Apache-2.0 (see `LICENSE`)
