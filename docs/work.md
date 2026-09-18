# Open code work

One line per item: origin (inbox and `Date`), owner, branch, state (requested, forwarded, in progress, merged, rejected), waiting on.  An item leaves when merged or rejected.  Kept by Integration Cowork.

## Worktrees

Created 2026-09-16, one per project with an active Code session; each branch is pushed and tracks `origin/<project>`.  A project not listed has none and asks for one.  The first five were cut at GLP `7dde3845`; GFWC at `c52f6545`, after the harness fix and the Currencies merge (GFWC #1 Cowork, `Integration_inbox.md` 2026-09-16 21:05 UTC).  Legal at `0c9635ef` on 2026-09-18, for its `programs/jurix` task (Legal Cowork, `Integration_inbox.md` 2026-09-18 11:27 UTC); it had none before, having had no code session when the others were cut.

| Project | Worktree | Branch |
|---|---|---|
| IGLP | `/Users/udi/Grassroots/GLP-worktrees/IGLP` | `IGLP` |
| GSG | `/Users/udi/Grassroots/GLP-worktrees/GSG` | `GSG` |
| Currencies | `/Users/udi/Grassroots/GLP-worktrees/Currencies` | `Currencies` |
| vGLP | `/Users/udi/Grassroots/GLP-worktrees/vGLP` | `vGLP` |
| GLP-Networking-API | `/Users/udi/Grassroots/GLP-worktrees/GLP-Networking-API` | `GLP-Networking-API` |
| GFWC | `/Users/udi/Grassroots/GLP-worktrees/GFWC` | `GFWC` |
| Legal | `/Users/udi/Grassroots/GLP-worktrees/Legal` | `Legal` |

The two worktrees of an earlier session under `/Users/udi/Grassroots/tmp/` --- `glp-bundle` and `glp-gate` --- were removed on 2026-09-16, both superseded.

## Items

- **GFWC federation transactions** (GFWC #3 Code, `Integration_inbox.md` 2026-09-17 20:59 UTC).  Owner: GFWC; branch `GFWC`, `d3b9d147`, `57fa6041`, `ec53e380`, Section GF 64 checks, branch suite 1889 green.  The first task merged at `01dcd39a`.  State: merge requested; Integration Code (task 2026-09-17 21:07 UTC item 1).
- **The sovereign manifest and entry point** (Currencies #1 Code, `Integration_inbox.md` 2026-09-17 20:53 UTC).  Owner: IGLP, with vGLP specifying the derivation; forwarded to `IGLP_inbox.md` 2026-09-17 21:07 UTC.  `sovereignManifest` and `main_sovereign.dart`, the image of the twelve displays on `panel(sovereign)`; the mini-app has no screen of its own today.  Blocking the SGC screens.  State: forwarded.
- **The iOS build does not read its bundle** (Currencies #1 Code, `Integration_inbox.md` 2026-09-17 20:59 UTC).  Owner: IGLP; forwarded to `IGLP_inbox.md` 2026-09-17 21:07 UTC.  `resolveGlpPaths()` chooses by which path exists, so a Simulator build takes the hard-coded desktop path and never reads the bundle; what is installable there is whichever `.glpw` a suite run last left in the clone.  Blocking the SGC screens.  State: forwarded.
- **The SG warm-call race** (GSG Code, `GSG_inbox.md` 2026-09-15 22:02 UTC).  Owner: GSG; the defect is `anchor_friend/4`'s first clause, `core/agent.glp:1051`, writing the reader `Rest1?` in the head's output argument, so the rebuilt outputs list ends in a tail nothing writes.  Four occurrences across GSG, IGLP, GFWC and Integration's gate runs.  IGLP #1 Code settled the half GSG could not derive (`IGLP_inbox.md` 2026-09-17 21:41 UTC, forwarded to GSG 22:00 UTC): nothing carrying bob's introduction is ever built at carol, bob's is the one built first in a green run, and the GLP-level trace suppresses the failure entirely.  A rule stands meanwhile in `GLP/CLAUDE.md` (Udi, 2026-09-16): a red warm call is re-run once and is a failure only if red twice.  State: with GSG Code, blocked on GSG Cowork.
- **A reader written in a head output argument typechecks** (reported by IGLP Code through Udi, 2026-09-17; not confirmed on disc).  The language question is GLP-Spec's and TGLP's, asked in `GLP-Spec_inbox.md` 2026-09-17 22:00 UTC; the checker `glp_runtime/lib/analysis` is IGLP's and is told to wait for the ruling; `anchor_friend/4` is GSG's to fix whatever is ruled.  State: with GLP-Spec.
- **Legal: the syntactically-grassroots checker tasks** (Legal Cowork, `Integration_inbox.md` 2026-09-18 11:27 UTC).  Owner: Legal; branch `Legal`, worktree created 2026-09-18, items 1, 2 and 4 done at `cc05fa34`, `test_jurix.sh` 46 green against a baseline of 33.  Item 3, the compiler, is not written: the task and the appendix disagree on the printed form, and `\uplus` over a multiset local state gives an agent one copy of an added atom per role whose extent holds them, so removals need not match additions.  Put to Legal Cowork, `Legal_inbox.md` 2026-09-18 14:33 UTC.  State: blocked on Legal's ruling; the branch merges when item 3 lands.
- **GFWC federation platform** (GFWC Cowork, `Integration_inbox.md` 2026-09-18 10:47 UTC).  Owner: GFWC; branch `GFWC`, done by subagent, on the local branch.  State: the merge to `main` was refused by the session's tool permissions and waits on Udi; `main` is untouched at `0c9635ef`.
- **SGC screens appendix** (Currencies Cowork, `Currencies_inbox.md` 2026-09-15 10:45 UTC).  Owners: Currencies (mini-app entry at GLP `a6bac767`; else-branch removal merged at `5ca8ad5f`; branch merged to `a5e945d7`, transcript written, certificate line confirmed), IGLP (bundle and `.glpw` as bytes, done; the five widget names, done; the denominated artefact in the bundle, merged at `2181b34b`; the two items above, open), vGLP (`date` widget named in the paper, done), GSG (host's fourth `deliver/10` pair, done at `e3d2ec33`).  Left: the eight simulator screens into `/Grassroots/SGC/Figs/`, Currencies Code.  State: waiting on IGLP's two items.
