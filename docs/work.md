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

Open only; a merged or rejected item leaves the list, git holding it.

### Held, and what holds them --- the SGC screens chain, FC 2027 on 24 September

- **Currencies' re-emission** (vGLP 2026-09-18 15:41 UTC, tasked by Currencies #2 Cowork 17:14 UTC).  Done on branch `Currencies` at `a1b65f60`, its own Sections N2, N3 and N4 165 green; HELD.  Section SG goes 90 pass 20 fail on files two other owners own, so it is one item across three owners, decomposed 2026-09-18 17:40 UTC: GSG for `programs/social/graph/self.glp`'s `_2` alternatives (lines 263--264, 343--344) and `core/superapp_plays.glp` (744, 759, 763, 824); IGLP for `glp_multiagent/lib/manifests/coins_ui.dart` and seven test sites.  Integration Code merges Currencies, then GSG, then IGLP, and runs the full suite on `main` once over the lot.  State: waiting on GSG Cowork and IGLP Cowork to write their tasks.
- **IGLP's sovereign manifest** (IGLP #1 Cowork 2026-09-18 16:16 UTC).  Written and committed at `76af0b93`, lifted onto its own branch `IGLP-manifest` (Integration Cowork, 2026-09-18 18:03 UTC) so that a dated deliverable is not coupled to an undated one: `sovereign_ui.dart`, `main_sovereign.dart`, `GlpPaths.sovereignDir`, the scalar flattening, 17 widget tests.  HELD on the re-emission above.  Two questions back with IGLP: what the `balances` view takes as key and amount for a four-argument lot, and whether the flattening serves the list view as well as the card.
- **`sovereign_ui/3`, the live-person harness** (Integration #2 Code 2026-09-18 17:26 UTC).  Owner: Currencies, forwarded 17:28 UTC --- `programs/currencies` is theirs and the harness is a program, not Dart.  `main_sovereign.dart` names it and nothing of that name exists, and no sovereign source is in the iOS bundle list, so the screen cannot run until it lands.  Blocks the screens, not the merge.  State: with Currencies Cowork.
- **SGC screens appendix** (Currencies Cowork, `Currencies_inbox.md` 2026-09-15 10:45 UTC).  The eight simulator screens into `/Grassroots/SGC/Figs/`, Currencies Code, after all of the above.  Transcript written; `Figs/` does not exist yet.

### One object checked and compiled

- **The refusal, and the 31 tests it turns red** (Integration #2 Code, `Integration_inbox.md` 2026-09-18 17:56 UTC).  IGLP's item 1 is committed on branch `IGLP` at `237a9fe7`: `strictTypes` gone, the `[TYPE WARNING]` branch throws, `:strict` out of the REPL.  Measured against a baseline: `glp_runtime` 743 green to 721 with 27 failures and 5 new; `glp_multiagent` 81 green to 77 with 4.  Every red was already ill-typed and running unchecked.  By owner: Currencies 12 in `bonds_v2/mad_boot/` (routed 18:03 UTC); IGLP 4 in `programs/tests/` (Code routed them); CSSN 13 in `cssn/mad_boot/` --- CSSN IS DORMANT, so nobody can write that task and nobody answers for the paper, and it is Udi's ruling: activate CSSN, accept the reds under someone's hand, or hold the refusal.  State: with Currencies, IGLP and Udi.
- **The harness runs a worktree's Dart against `main`'s programs** (Integration #2 Code, same entry).  `glp_multiagent/test/` hardcodes `/Users/udi/Grassroots/GLP/programs` in `roundtrip_isolate_test.dart:19`, `grassapp_scenario_test.dart:18`, `coins_screen_test.dart:97`, `mad_w_clean_test.dart:24,27`, so a branch cannot measure those tests honestly and a `.glp` change on a branch is invisible to them.  IGLP's Dart, asked of them 18:03 UTC.  State: with IGLP Cowork.

- **The ruling and its two sites** (Udi, 2026-09-18; in `claude.md` under "Code", Coordination 16:03 UTC).  No clause of the compiled object is exempt from the checks and no diagnostic on a load path is a warning.  `glp_engine.dart:380`, the type warning, is IGLP's item 1 and in flight on branch `IGLP`.  `compiler.dart:142`, SRSW off for linked programs, is item 2 and waits on the TGLP sentence asked of GLP-Spec 2026-09-18 15:59 UTC: the linker's generated clauses are part of the compiled object, and the alias clause takes the form `modules.tex:44` gives.  State: with GLP-Spec and IGLP.
- **A third unchecked site** (Integration Code's subagent, 2026-09-18).  Every `:boot` prints `[TYPE] 10 parameterized procedure(s) unchecked in this program --- no instantiation`, naming `output:send_friend/4`: a polymorphic procedure no call instantiates is compiled unchecked and the fact is a note.  What the type system requires is TGLP's, asked 16:29 UTC.  State: with GLP-Spec.
- **The sweep, when the check is on** (Integration, 2026-09-18).  Turning SRSW on will reject clauses beyond `anchor_friend/4`, in several owners' files; IGLP reports the list with file and line and Integration decomposes it, one task per owner, each written by its own Cowork from its paper.  State: waiting on IGLP's item 2.
- **A fixture per check, on every load path** (Integration, 2026-09-18).  The harness has 1979 checks and none asserts that a program which must be rejected is rejected on the path it is loaded by, so a check switched off costs nothing and shows nothing.  One negative fixture per check --- SRSW, types, guards --- as a file, a directory, a linked program and a multi-isolate boot.  Integration's own, after the sweep.

### Queued and blocked elsewhere

- **GFWC's descendants task** (GFWC #3 Cowork 2026-09-18 14:24 UTC, amended by their 16:48 UTC).  Queued behind the merges; the subagent pulls the paper, five definitions moved at `a75e0b3`.  State: with Integration Code.
- **Legal's jurix compiler** (Legal #3 Cowork 2026-09-18 14:49 and 15:28 UTC).  Items 1, 2 and 4 committed on branch `Legal`, Section JX in the gate; item 3, the compiler, blocked on Legal's answers to Integration Code's three questions of 16:46 UTC --- the amended worked box prints at a binding while the Definition prints over the extent, so there is no example to check against.  State: with Legal Cowork.
- **GSG's `new_channel` in a guard** (Integration #2 Code to GSG, 2026-09-18 17:13 UTC).  Section 6.3 admits no procedure in a guard; Appendix E's listing of `introduce/2` carries `new_channel(PQCh, QPCh)` there, and `new_channel/2` is a unit clause in the root `self.glp`.  Either 6.3 means something narrower or the appendix is wrong.  State: with GSG Cowork.
- **vGLP: the `*(no, ...)` display declarations** (Integration Cowork to vGLP, 2026-09-18 17:40 UTC).  The three currency sources still declare the deleted clause's argument list on a bare else-branch; `:emit` passed them through with no diagnostic.  The derivation is vGLP's.  State: with vGLP Cowork.
