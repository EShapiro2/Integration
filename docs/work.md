# Open code work

One line per item: origin (inbox and `Date`), owner, branch, state (requested, forwarded, in progress, merged, rejected), waiting on.  An item leaves when merged or rejected.  Kept by Integration Cowork.

## Worktrees

Created 2026-09-16 at GLP `7dde3845`, one per project with an active Code session; each branch is pushed and tracks `origin/<project>`.  A project not listed has none and asks for one.

| Project | Worktree | Branch |
|---|---|---|
| IGLP | `/Users/udi/Grassroots/GLP-worktrees/IGLP` | `IGLP` |
| GSG | `/Users/udi/Grassroots/GLP-worktrees/GSG` | `GSG` |
| Currencies | `/Users/udi/Grassroots/GLP-worktrees/Currencies` | `Currencies` |
| vGLP | `/Users/udi/Grassroots/GLP-worktrees/vGLP` | `vGLP` |
| GLP-Networking-API | `/Users/udi/Grassroots/GLP-worktrees/GLP-Networking-API` | `GLP-Networking-API` |

The two worktrees of an earlier session under `/Users/udi/Grassroots/tmp/` --- `glp-bundle` and `glp-gate` --- were removed on 2026-09-16, both superseded.

## Items

- **Reorganisation of the GLP tree** (Udi, 2026-09-16, ruled in discussion with Integration #1 Cowork; task in `Integration_inbox.md` 2026-09-16 10:28 UTC).  Owner: Integration; on `main`, before any worktree.  Deletions of stale and archived material; `programs/spm` to `programs/social/spm`; `programs/currencies` a container holding `bonds_v2`, `coins`, `bonds`, `sovereign`; test fixtures under `programs/tests/`; `glp_multiagent/assets/glp` generated; branches, remote and worktrees pruned; `README.md` and `CLAUDE.md` rewritten; then the five worktrees.  Owners told 2026-09-16 10:28 UTC.  State: DONE at GLP `7dde3845`, suite 1803 green, pushed.  Step 4 completed 2026-09-16 (Udi): the two stale worktrees removed, 18 local branches and 85 remote refs deleted, the `art-of-glp` remote removed; `origin` holds 18 heads.  Record in `docs/branch-record-2026-09-16.md`.
- **SGC screens appendix** (Currencies Cowork, `Currencies_inbox.md` 2026-09-15 10:45 UTC; opened before Integration existed, in four inboxes).  Owners: Currencies (mini-app entry, done at GLP `a6bac767`), IGLP (bundle and `.glpw` as bytes, done at `be72af8a`, `9f2214a0`; the five widget names, done), vGLP (`date` widget named in the paper, done), GSG (host's fourth `deliver/10` pair, done at `e3d2ec33`).  Left: the eight simulator screens into `/Grassroots/SGC/Figs/`, Currencies Code; and the coins else-branch removal, Currencies, ruled by Udi 2026-09-15 to be done before the 24th.  State: waiting on the reorganisation and the Currencies worktree.
