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

- **Harness: Section Q silent skip** (found by Integration #1 Code, 2026-09-16, in the worktrees).  Owner: Integration.  `flutter test` in a worktree without the generated `assets/glp` fails to build, prints no count, and Section Q scores 0/0 as a pass, so a worktree suite understates by 60 and reports green.  Fix: Section Q fails hard on no count; the harness runs `sync_glp_assets.sh` before Section Q.  Task: `Integration_inbox.md` 2026-09-16 21:10 UTC item 1.  State: in progress, Integration Code.
- **Coins else-branch removal** (Udi, 2026-09-15; Currencies #1 Code, `Integration_inbox.md` 2026-09-16 17:46 UTC).  Owner: Currencies; branch `Currencies`, `fbbdafbe` + `79941ca5` on `7dde3845`, branch suite 1742 green.  State: merge requested; Integration Code merges after the harness fix (task 21:10 UTC item 2).
- **Denominated mini-app in the iOS bundle** (Currencies #1 Code, `Integration_inbox.md` 2026-09-16 17:48 UTC).  Owner: IGLP (`sync_glp_assets.sh`, `glp_sources.dart`, Appendix B); forwarded to `IGLP_inbox.md` 2026-09-16 21:10 UTC.  Blocking the SGC screens.  State: forwarded; waiting on IGLP Code, then merge, then Currencies merging `main`.
- **GFWC worktree** (GFWC #1 Cowork, `Integration_inbox.md` 2026-09-16 21:05 UTC).  Owner: Integration.  State: requested; Integration Code creates it (task 21:10 UTC item 3).
- **SGC screens appendix** (Currencies Cowork, `Currencies_inbox.md` 2026-09-15 10:45 UTC).  Owners: Currencies (mini-app entry, done at GLP `a6bac767`; else-branch removal, above), IGLP (bundle and `.glpw` as bytes, done at `be72af8a`, `9f2214a0`; the five widget names, done; the denominated artefact in the bundle, above), vGLP (`date` widget named in the paper, done), GSG (host's fourth `deliver/10` pair, done at `e3d2ec33`).  Left: the eight simulator screens into `/Grassroots/SGC/Figs/`, Currencies Code, transcript written 2026-09-16.  State: waiting on the bundle item.
