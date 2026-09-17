# Open code work

One line per item: origin (inbox and `Date`), owner, branch, state (requested, forwarded, in progress, merged, rejected), waiting on.  An item leaves when merged or rejected.  Kept by Integration Cowork.

## Worktrees

Created 2026-09-16, one per project with an active Code session; each branch is pushed and tracks `origin/<project>`.  A project not listed has none and asks for one.  The first five were cut at GLP `7dde3845`; GFWC at `c52f6545`, after the harness fix and the Currencies merge (GFWC #1 Cowork, `Integration_inbox.md` 2026-09-16 21:05 UTC).

| Project | Worktree | Branch |
|---|---|---|
| IGLP | `/Users/udi/Grassroots/GLP-worktrees/IGLP` | `IGLP` |
| GSG | `/Users/udi/Grassroots/GLP-worktrees/GSG` | `GSG` |
| Currencies | `/Users/udi/Grassroots/GLP-worktrees/Currencies` | `Currencies` |
| vGLP | `/Users/udi/Grassroots/GLP-worktrees/vGLP` | `vGLP` |
| GLP-Networking-API | `/Users/udi/Grassroots/GLP-worktrees/GLP-Networking-API` | `GLP-Networking-API` |
| GFWC | `/Users/udi/Grassroots/GLP-worktrees/GFWC` | `GFWC` |

The two worktrees of an earlier session under `/Users/udi/Grassroots/tmp/` --- `glp-bundle` and `glp-gate` --- were removed on 2026-09-16, both superseded.

## Items

- **SGC screens appendix** (Currencies Cowork, `Currencies_inbox.md` 2026-09-15 10:45 UTC).  Owners: Currencies (mini-app entry, done at GLP `a6bac767`; else-branch removal, merged at `5ca8ad5f`), IGLP (bundle and `.glpw` as bytes, done at `be72af8a`, `9f2214a0`; the five widget names, done; the denominated artefact in the bundle, merged at `2181b34b`), vGLP (`date` widget named in the paper, done), GSG (host's fourth `deliver/10` pair, done at `e3d2ec33`).  Left: the eight simulator screens into `/Grassroots/SGC/Figs/`, Currencies Code, transcript written 2026-09-16.  State: waiting on Currencies Code: merge `main`, build for the simulator, capture.
