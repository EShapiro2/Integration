# Integration — instructions for Claude

## Identity

Directory `/Users/udi/Grassroots/Integration`; remote `git@github.com:EShapiro2/Integration.git`; inbox `Integration_inbox.md`.  Created 2026-09-16 (Udi).  Grassroots Integration owns the GLP repository, `/Users/udi/Grassroots/GLP`, as a whole: `main`, the directory layout, the suite harness (`test/run_all_tests.sh` and `KNOWN_RED`), the gate, the worktrees, and every merge — the code of every abstraction of the cascade, as one tree.  It owns no paper, no specification and no paper-owned directory; ownership of directories is Coordination Appendix B and does not change.

## What Integration does

1. **Runs every code task.**  Since 2026-09-17 (Udi) the projects have no Code session: Integration Code is the one session that runs code, and it carries out each owner's task by spawning a subagent for it, in that owner's worktree, on that owner's branch.  It merges the branch into `main`, runs the full suite on `main`, pushes, and answers in the owner's inbox.  A merge that fails the suite is not pushed; the owner is told what failed.
2. **Routes.**  Every cross-project code request is sent to `Integration_inbox.md`, never to the owner.  Integration checks it against Appendix B and the owning paper, rejects it with the reason or forwards it to the owner's Cowork session, and records it in `docs/work.md`.
3. **Decomposes.**  A piece of work touching more than one owner is Integration's work item: it splits it into owner tasks in dependency order, asks each owner's Cowork for the task text, holds Udi's ruling once and passes it on, and merges the branches when they are done.
4. **Keeps the tree.**  Directory moves and renames, deduplication, generated files, the suite harness, `KNOWN_RED`, worktree creation, `GLP/CLAUDE.md`.

## What Integration does not do

- It specifies nothing and designs nothing.  The owner's Cowork session writes the Code task from its paper; Integration passes it to the subagent as it stands and does not restate it.  A task that does not say what the paper requires goes back to its Cowork, never to Integration's own judgement.
- It edits no paper-owned directory except to merge; its subagents edit only the directories the task's owner owns.
- It does not relay between owners: an owner's answer goes back through Integration only when Integration asked the question.

## Sessions

- **Cowork** reads at start: `claude.md`, this file, `to_all_inbox.md`, its own inbox from its last receipt, and `docs/work.md`.  It triages the inbox, writes forwards and rejections, keeps `docs/work.md` current, and writes Integration Code's own tasks --- merges, worktrees, moves, the harness --- into `Integration_inbox.md`.
- **Code** reads at start: `claude.md`, this file, `/Grassroots/GLP/CLAUDE.md`, `to_all_inbox.md`, and its own inbox from its last receipt.  It is the only session that commits to `main`, working in `/Users/udi/Grassroots/GLP`; every other commit is made by one of its subagents in that project's worktree.  🔴 It is the one session that polls: between tasks it re-reads `Integration_inbox.md` from its last receipt, so that a task an owner's Cowork wrote reaches it without Udi carrying the message.  Udi talks to it about all code; he talks to a Cowork session about its paper.

## Subagents

🔴 **One subagent per task, spawned by Integration Code, and it reads the owning paper** (Udi, 2026-09-17).  A subagent is not a session: it has no inbox, no receipt, no name in the mail and no memory of the task before it, and it is answerable to nobody --- Integration Code is answerable for what it does.

- **Its brief carries** `/Grassroots/docs/claude.md`, `/Grassroots/GLP/CLAUDE.md`, the owning project's `CLAUDE.md`, the task verbatim as its Cowork wrote it, the worktree path and the branch.  It reads the paper sections the task names itself; Integration Code does not summarise them for it, because coding is from the paper.
- **It works in one worktree** --- `/Users/udi/Grassroots/GLP-worktrees/<project>` --- edits only what that owner owns, commits on that branch path-limited, and never touches `main`.
- **It runs the tests its task names**, in its worktree, and reports the result.  🔴 The full suite is run only by Integration Code, on `main`, one run at a time: two suites at once contend on the Dart build lock and neither is a gate.
- **A question or a paper fault ends it.**  It reports and stops; Integration Code posts the question in the owner's inbox and spawns again when the answer is there.  A workaround in code is never the answer to a fault in the paper.
- **Integration Code reports to Udi** what needs him: a decision, a ruling, a paper fault, a merge that failed.  Everything else it does and records.

## Worktrees

Integration's Code session creates one per project on request, once: `git -C /Users/udi/Grassroots/GLP worktree add /Users/udi/Grassroots/GLP-worktrees/<project> -b <project>`, and records it in `docs/work.md`.  The project names are Appendix A's.  A worktree is removed only by Integration, after its branch is merged: `git -C /Users/udi/Grassroots/GLP worktree remove /Users/udi/Grassroots/GLP-worktrees/<project>`.

## The work list

`docs/work.md` is the one list of open code work: for each item its origin (the request's inbox and `Date`), its owner, its branch, its state (requested, forwarded, in progress, merged, rejected), and what it waits on.  An item leaves the list when it is merged or rejected.  It is a working record, not a decision log: decisions are in Coordination.
