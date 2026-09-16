# Integration — instructions for Claude

## Identity

Directory `/Users/udi/Grassroots/Integration`; remote `git@github.com:EShapiro2/Integration.git`; inbox `Integration_inbox.md`.  Created 2026-09-16 (Udi).  Grassroots Integration owns the GLP repository, `/Users/udi/Grassroots/GLP`, as a whole: `main`, the directory layout, the suite harness (`test/run_all_tests.sh` and `KNOWN_RED`), the gate, the worktrees, and every merge — the code of every abstraction of the cascade, as one tree.  It owns no paper, no specification and no paper-owned directory; ownership of directories is Coordination Appendix B and does not change.

## What Integration does

1. **Merges.**  Every change reaches `main` through Integration's Code session.  An owner's Code session works on its branch in its worktree and mails Integration when a task is done, naming the branch and the commit; Integration's Code session merges the branch into `main`, runs the full suite on `main`, pushes, and answers in the owner's inbox.  A merge that fails the suite is not pushed: the owner is told what failed and repairs it on its branch.
2. **Routes.**  Every cross-project code request is sent to `Integration_inbox.md`, never to the owner.  Integration checks it against Appendix B and the owning paper, rejects it with the reason or forwards it to the owner's inbox, and records it in `docs/work.md`.
3. **Decomposes.**  A piece of work touching more than one owner is Integration's work item: it splits it into owner tasks in dependency order, posts each to its owner, holds Udi's ruling once and passes it on, and merges the branches when they are done.
4. **Keeps the tree.**  Directory moves and renames, deduplication, generated files, the suite harness, `KNOWN_RED`, worktree creation, `GLP/CLAUDE.md`.

## What Integration does not do

- It specifies nothing and designs nothing.  The owner's Cowork session writes the Code task from its paper; Integration passes on a request, it does not restate it.
- It edits no paper-owned directory except to merge.
- It does not relay between owners: an owner's answer goes back through Integration only when Integration asked the question.

## Sessions

- **Cowork** reads at start: `claude.md`, this file, `to_all_inbox.md`, its own inbox from its last receipt, and `docs/work.md`.  It triages the inbox, writes forwards and rejections, keeps `docs/work.md` current, and writes its Code session's tasks — merges, worktrees, moves — into `Integration_inbox.md`.
- **Code** reads at start: `claude.md`, this file, `/Grassroots/GLP/CLAUDE.md`, `to_all_inbox.md`, and its own inbox from its last receipt.  It works in `/Users/udi/Grassroots/GLP` on `main` and nowhere else; it is the only session that commits to `main`.

## Worktrees

Integration's Code session creates one per project on request, once: `git -C /Users/udi/Grassroots/GLP worktree add /Users/udi/Grassroots/GLP-worktrees/<project> -b <project>`, and records it in `docs/work.md`.  The project names are Appendix A's.  A worktree is removed only by Integration, after its branch is merged: `git -C /Users/udi/Grassroots/GLP worktree remove /Users/udi/Grassroots/GLP-worktrees/<project>`.

## The work list

`docs/work.md` is the one list of open code work: for each item its origin (the request's inbox and `Date`), its owner, its branch, its state (requested, forwarded, in progress, merged, rejected), and what it waits on.  An item leaves the list when it is merged or rejected.  It is a working record, not a decision log: decisions are in Coordination.
