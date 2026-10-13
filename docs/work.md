# Open code work

🔴 **Udi, 2026-10-02: "YOU CANNOT CHANGE THE LANGUAGE OR ITS RUNTIME ENGINE WITHOUT MY APPROVAL."**  For the engine the line is the specification (Udi, 2026-10-02): "Making the runtime comply with the spec does not need my approval; only runtime changes that go beyond the spec do."  A fix that makes the engine do what the language paper, TGLP or IGLP says needs no approval; anything the papers do not say needs it first (claude.md, "Sessions"; to Code 08:42 UTC, corrected 15:44 UTC).

🔴 **Udi, 2026-10-03: THE PAPER IS THE ONLY SOURCE OF TRUTH** ("what is there to test?"): a question the paper answers is not settled by experiment on the code, and a gap is fixed before the work on it goes on.  A paper may print a program in a readable surface syntax; the term form in the repository is what must typecheck and run (claude.md, "Code"; to Code 2026-10-04 09:12 UTC).

One line per item: origin (inbox and `Date`), owner, branch, state (requested, forwarded, in progress, merged, rejected), waiting on.  An item leaves when merged or rejected.  Kept by Integration.

## Worktrees

The list is `git -C /Users/udi/Grassroots/GLP worktree list`.  A worktree is made per task by Code, named after its branch, off `main`; the branch's task is in `Code_inbox.md`.  No table of them is kept by hand.

## Items

Open only; a merged or rejected item leaves the list, git holding it.  Rewritten 2026-10-12 08:30 UTC by Integration #3 to what is open, amended 2026-10-13 08:14 UTC by Integration #4; the mail is authoritative where the two differ.

### `main`

- **`gap` is on `main` since 2026-10-10** (Code #6, 12:04 UTC: `372f062e`, 461 commits).  Every owner's branch goes off `main`.  The suite on `main` at `dd2640b4`: 4137 passed, 0 failed, 93 known red, after `bonds_v2`'s 30 checks and 12 isolate tests went (Code #8, 2026-10-13 01:49 UTC).
- **Unmerged branches** (measured 2026-10-13 08:14 UTC, `git branch --no-merged main`): `Currencies-bonds-boot` (3 ahead, `414acfc5`, `bonds_v2` mad_boots' `tee` and `actor_dispatch`; spent, `bonds_v2` deleted), `GLP-gapfix` (1, head reader matching only an unbound goal writer), `GLP-oom` (4, a guard-suspension fix and three PROPOSAL commits awaiting GLP), `GLP-r3c` (7, weeding round three), `IGLP-qparams` (3, question parameters, which vGLP's changed compilation may have overtaken).  `GLP-bookdel` and `GLP-import` are on `main`.

### vGLP's old volition-guard form leaves the language --- since 2026-10-04

- **On `main` since 2026-10-11** (`1fbe20a7`): IGLP's Dart bridge (`glp_multiagent/lib/ui_runtime/bridge.dart`); Currencies' coins, sovereign and bonds agents in vGLP's revised syntax; GSG's interfaces of `coins/3` and `sovereign/3` and its scripted persons; IGLP's manifests, tests and fixture `tests/vglp/one_clause/responder.vglp`.  GPBD's request of 2026-10-04 15:55 UTC is met; GPBD told 2026-10-12 08:26 UTC.
- **Ports left**: CSSN's two (`childsafe/agent.vglp` 33 old clauses, `child_agent.vglp` 24): CSSN's task (`Code_inbox.md` 2026-10-09 19:37 UTC), in one merge with vGLP's retirement of the mediator in `cssn` and IGLP's `cssn_v2_isolate_test.dart` and `program_compilation_test.dart`, vGLP and GLP asked 2026-10-09.  GSG's three (`grassapp/grassapp_agent.vglp` 21, `social/graph/core/agent.vglp` 8, `core/home.vglp` 6): a rewrite from GSG's paper, not a port (Code #7, 2026-10-11 03:24 UTC): GSG's port, items 1 and 2, on `main` `dfd9e0b9` (Code #8 to GSG, 2026-10-12 22:48 UTC); `grassapp_agent.vglp` goes with `programs/grassapp` (one copy of the currency, below); `social/graph/core/agent.vglp` not re-measured.
- **Then**: vGLP retires the deployed mediator (`med.glp`, `ui/mediator.glp`, `vGLP/docs/decisions.md:112`) and IGLP the old protocol in `runtime.dart`; and one last merge moves vGLP's compiler and the display declaration to the new AST (30 sites, from vGLP's Definitions) and takes the old form out of the parser, the AST, `isVolitionGuarded`, `test/vglp`'s 86 and the harness's three N re-emit checks (to Code 2026-10-10 09:50 UTC; GSG and vGLP told).  State: waits on CSSN's port, and on a measure that GSG's left no old clause.

### CSSN --- active again since 2026-10-09 (Udi)

- `programs/jurix/contracts.glp`'s contract `cssn` (`send` without `friend(f)` at the sender; "eighteen"): Legal's, tasked by Legal 2026-10-09 18:46 UTC with its two language changes of 18:43 UTC.  State: with Code.
- The port, several parents per child, the refusal of a cycle of two, the `~` sites, the village: CSSN's one task, above.  CSSN's 8 known-red checks (its artefact) leave `KNOWN_RED_CHECKS` with it.

### GNA's two multi-owner items --- since 2026-10-04

- **1. Reconnection and the rendezvous server leave the Dart**: one task of Code's (Udi, 2026-10-09: "decide, make it simple, fix, get it done"; to Code 19:42 UTC), GSG's part done by Code in GSG's files and reported to GSG.  GNA's part on `main` `1058731a` but for deleting `networking/bootstrap_anchor`, held on GNA, which holds the only invite server (Code #8, 2026-10-13 03:25 UTC).  GSG's part --- `attest(PkA, PkB)` on befriending, reconnect and available to the rendezvous servers, `address_declare/2` and `punch_udp/1` on `punch(Addr)`, the graph's hash at the server's boot --- Code's, from GNA `rendezvous.tex` and GSG's networking appendix (Integration to Code, 2026-10-13 08:12 UTC, restating 2026-10-09).  State: with Code.
- **2. madGLP over the real layer**: GLP's step A, `AgentRuntime` and `IsolateManager` over a given `GlpNetwork`, on `main` (`58c0367d`).  GNA's API rename fixes its callers in IGLP's duo and GPW's `servers/gpw/` in the same commit (to Code 2026-10-09 19:42 UTC); IGLP's duo attestation producer (GLP's task 2026-10-09 18:38 UTC) is spent if the duo goes with `programs/grassapp` (GLP told 2026-10-12 23:01 UTC).  State: with Code.

### The loader for directory modules --- GLP, 2026-10-11

- The vGLP compilation reads only a sibling `N.vglp`, so an import from a directory module that reaches a question is refused (`program_compilation.dart:195, 232`); vGLP Definition "Canonical Compilation" covers every module (Code #7 at vGLP's asking, 2026-10-11 14:34 UTC).  GLP tasked it (GLP, 2026-10-11 21:42 UTC).  Blocking: yes by the rule.  State: with Code.

### Guard negation leaves the language --- since 2026-10-02

- `=?\=` is in; GSG's nine sites are rewritten.  GLP removes `~`, with `docs/guards-reference.md`'s negation lines, once GLP's own seven sites (`book/`, `examples/`) and CSSN's seven (in CSSN's task) are rewritten.  State: waits on GLP's sites and CSSN's port.

### GLP's open engine work --- since 2026-10-02

- Weeding round three (`GLP-r3c`) and the instantiation (`GLP-inst`), held on sentences TGLP must write first; `GLP-oom`'s three PROPOSAL commits; three engine flaws reported to GLP 2026-10-02 14:19 UTC (A, a guard over a variable fresh to the clause answering differently on 0x45 and the generic call; B, the 3(b) rule passing a guard over an unknown variable, against `glp.tex:160`; C, `ground/1` succeeding on a mutual reference, against TGLP), each a fix to the spec needing no approval.  State: with GLP; not re-verified since 2026-10-04.
- sGLP's 1000-agent five-year run, which died of out-of-memory at simulated day 19 before the object-cell heap: whether it now reaches its horizon is unreported.

- The linker's import check (TGLP `bae5259`): on `main` (`3dcd6327`, `GLP-import` merged 2026-10-13 01:07 UTC), GSG's imports agreeing after its port.  GLP's call-site instantiation of a bare-only parameter and its refusal of an unreached module's SRSW, guards and types: yes to both (GLP to Code, 2026-10-13 08:02 UTC), Blocking: yes; with Code.
- The checker fault of Code #8 to GLP, 2026-10-12 21:59 UTC: the load check and the goal check disagree on a parameterised procedure with a defined guard.  Blocking: yes; with GLP.

### Programs that do not load --- Code #8, 2026-10-12 21:07 UTC

- Measured at `main` `93884202` by the REPL's load path (`/Users/udi/Grassroots/tmp/tglp-experience-measure.md`); each a fault by the rule.  The book's 32 are GLP's, sent directly: 20 load on `main` `862070ba`, 12 stopped on GLP's rulings, three of them deleted on `GLP-bookdel` (Code #8 to GLP, 21:59 UTC).  P99's three (`p60`, `p84`, `p92`, SRSW): to P99 2026-10-12 23:01 UTC, dormant.  GSG's five `programs/social/*_boot.glp`, GSG's since Udi's ruling of 2026-10-12, refused on the boot goal's `@`: to GSG 23:01 UTC.  `cssn`'s `~`: in CSSN's task.

### One copy of the currency --- GSG, 2026-10-12

- Udi to GSG #4, 2026-10-12, reported by GSG: "there cannot be multiple copies of the same code, only a single one".  GSG #4's item of 22:49 UTC, in the order Udi approved (Udi, 2026-10-12): 1. Currencies: the dated bonds and escrow as a mini-app from its one program, and `bonds_v2` retired as a second copy or its date-stream flaw repaired (`bonds_v2/agent.glp:370-373, :216`, Blocking: yes).  2. One merge: IGLP's switch of the phone's default to `programs/social/graph/core`, grassapp's entry points, manifest and tests going; GSG's deletion of `programs/grassapp`, `grassapp/budget` moved into `programs/social/graph`; the harness's 44 grassapp lines, Integration's.  3. Coordination: Appendix B's host (`B-code-map.tex:62, :74, :95, :105, :123`), told when 2 is on `main`.  Each owner told 2026-10-12 23:01 UTC and writes its own task to Code.
- Currencies (to Integration 2026-10-12 23:23 UTC, Udi approved): `bonds_v2` is a second copy and goes, its flaw unrepaired, the two-escrow case a test of `programs/currencies/bonds`.  Its task (`Code_inbox.md` 23:23 UTC): `bonds` a mini-app (Code: in `bonds/dated/`), `bonds_v2/secure` to `programs/currencies/secure`, then `bonds_v2` deleted; Code tells Integration when the deletion is on `main`.  Code's two questions to Currencies (00:04 UTC): how one escrow agent holds two agreements (Blocking: yes, for the two-escrow run), and the name `dated`.  With the deletion, on Integration's yes of 00:43 UTC: S4 repointed to `sovereign/denominated`; IGLP's `bonds_v2_isolate_test.dart` and `programs/tests/bonds_v2_boots/` deleted, the prose in Integration's files and IGLP's comments with them (GLP told 00:43 UTC); IGLP's `program_compilation_test.dart:224` path.  For the phone, `sync_glp_assets.sh` packages `bonds/dated` in the one-copy merge (GLP told 00:43 UTC).
- Before it, `Currencies-advance` (advance one day at a time, no date warranty, the request fields named) turns 9 SG checks and 2 Flutter tests red on the copies of Currencies' types in GSG's super-app and IGLP's coins tests (Code #8, 2026-10-13 00:00 UTC).  Integration's yes, 00:05 UTC (Udi approved): on `main` `395a5448` with the copies brought to the new types, suite 4199 passed, 0 failed, 93 known red (Code #8, 00:18 UTC).  GSG asked (00:05 UTC) how the super-app takes Currencies' types from Currencies' own declarations.
- Coordination told (2026-10-13 00:06 UTC): Currencies' row loses `bonds_v2`, `mad_boot`, `play12` and gains `secure`, with the host change, when the merges are on `main`; and the row's "SPM cites it", which Currencies finds in no SPM text.
- Currencies' part on `main`: `bonds/dated` the mini-app, `secure` moved, `bonds_v2` deleted (`dd2640b4`; Coordination told 2026-10-13 08:12 UTC for Currencies' row); its two-escrow run waits on Currencies' answer to Code's 00:04 UTC item 1, and the one-copy merge does not wait for it.  IGLP's part is GLP's task 2 (`Code_inbox.md` 2026-10-13 08:11 UTC).
- State: waits on GSG's deletion task, asked of GSG 2026-10-12 23:01 UTC.

### Integration's own --- tasked 2026-10-11 15:53 UTC

- Done: the harness keeps `dart test`'s and `flutter test`'s raw output in `tmp/suite_q_dart.txt` and `suite_q_flutter.txt`; the merged branches and worktrees gone; `GLP/docs/ma/HOW-TO-RUN.md` rewritten and run; 14 of the manual's 15 copies of TGLP replaced by pointers (Code #7, 2026-10-12 04:10 and 07:04 UTC).  The manual's §3.5 sentence went on GLP's task, `eb7de480` (Code #7, 2026-10-12 09:02 UTC).
- The negative fixtures: six of seven pairs on `main` `198977fb`, 15 REPL checks and `neg_check_paths_test.dart` (Code #8, 2026-10-13 00:57 UTC).  Pair 7, SRSW in a module no entry point reaches, waits on the unreached-module check GLP ruled at 08:02 UTC.  State: with Code.

### Residue of `gap`, not re-verified since 2026-10-04; check the mail before acting

- B2's declarations of other owners leaving a primitive alternative uncovered (Currencies 11, GSG 5, GNA 2, GFWC `federation`; GSG's coverage item 9 took nine of eleven at `e353614c`).
- The wider `Key` batch: `swap` and `SwapCard` with Currencies' issuer sweep; grassapp's senders go with `programs/grassapp`.
- A writer is never dropped (Udi, 2026-10-02): GSG's `hold_*` sites and `bounded.glp:214`.
- Declarations without a parameter list (TGLP `parameterized-types.tex:108`): Currencies `programs/currencies/secure/issuer.glp:34`.
- The owners' open questions to Code at the merge (Code's list of 2026-10-04), and the four checker findings for IGLP of 2026-09-18.

### Dormant

- P99.

### Findings with owners, none blocking
- GPW: `servers/gpw/name_service/test/push_e2e_test.dart:122` passes a two-argument closure to `onPeerConnected`, which takes three, so the test does not compile (Code #6, 2026-10-07 13:16 UTC, from GNA's attestation on `gap` `68a584a2`).  Sent to GPW 2026-10-08 14:18 UTC; Code fixes it with GNA's API rename (to Code, 2026-10-09 19:42 UTC).
- IGLP: the GrassApp duo's attestation producer: spent, the duo going with `programs/grassapp` (GLP's IGLP task 2, `Code_inbox.md` 2026-10-13 08:11 UTC).
- GLP: `GlpPrinter` (`lib/compiler/glp_printer.dart:130`) prints the anonymous output `_?` as `_`, on the old-syntax compilation path and `wire/flattening.dart`; vGLP's own printer is fixed on `gap` (`4ae0b84c`).  Found by Code, forwarded by vGLP; sent to GLP to rule 2026-10-02 01:10 UTC.
- vGLP: its canonical compilation's `close/1` collides with the root's channel guard; the root's stays and vGLP renames its own (Udi, 2026-10-02; GLP 2026-10-01 23:14 UTC), forwarded to vGLP 23:21 UTC.  The checker gap Code found with it (`p(A) :- close(A?)`, `A` at `Request?`, passes) is GLP's.

- GFWC: three readings for yes/no (the relayed motion's epoch, identities as constants under the standard order, two row-existence preconditions), with `767e433d`.
- Legal: a redundancy in the appendix's provenance clause diverging from Section 3.6 on a `sign`-like schema, the printing conventions taken from Section 5.2, CSSN's check needing `:limit` above the REPL's default, with `d5fd3fd5`.
- vGLP and IGLP, Blocking: yes, for GC's two screen figures (Currencies, 2026-10-13 08:04 UTC): a written screen message drops its functor (`opened(bob)`, `minted(2)`, `swap_done(bob)` read "bob", "2", "bob"), and the swap card's offer shows no labelled field (`coins-card.png`, `coins-swap-form.png`); first seen at `432326ec`.  To vGLP 08:12 UTC, to say whether Definition "Widget Declaration, Default Widget" already requires the alternative's name and the labels.
- vGLP: `currency-manifest-derivation.md` still describes the coins swap card as two buttons (Code, 18:15 UTC).
- IGLP: the writer check at a volitional call's output positions on an initial goal: GLP's IGLP task 1 (`Code_inbox.md` 2026-10-13 08:11 UTC), with Code.
