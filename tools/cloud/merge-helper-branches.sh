#!/bin/bash
# Code #33, 2026-11-17: merges every helper-N/code-<batch> branch into the batch branch (here const), -X ours, and pushes.  Change the batch name and the worktree path for another batch.
# merge every helper-N/code-const into const, push
cd /home/user/wt/const || exit 1
for n in 1 2 3 4 5 6 7 8 9 10 11 12; do
  git fetch -q origin helper-$n/code-const 2>/dev/null || continue
  [ -z "$(git rev-list HEAD..FETCH_HEAD | head -1)" ] && continue
  names=$(git diff --name-only HEAD...FETCH_HEAD | cut -d/ -f1-2 | sort -u | tr '\n' ' ')
  if git merge -q --no-ff -X ours FETCH_HEAD -m "Merge helper-$n/code-const into const: $names

Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>
Claude-Session: https://claude.ai/code/session_013FJ399cGEYptrPAzfwH5bj" 2>/dev/null; then echo "H$n: $names"; else echo "CONFLICT H$n: $(git status --short | grep '^U\|^AA' | cut -c4- | tr '\n' ' ')"; git merge --abort; fi
done
git push -q origin const 2>&1 | grep -v "^remote"; git log --format=%h -1 | cut -c1-8
