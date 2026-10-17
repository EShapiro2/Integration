# Open code work

🔴 **Udi, 2026-10-02: "YOU CANNOT CHANGE THE LANGUAGE OR ITS RUNTIME ENGINE WITHOUT MY APPROVAL."**  For the engine the line is the specification (Udi, 2026-10-02): "Making the runtime comply with the spec does not need my approval; only runtime changes that go beyond the spec do."  A fix that makes the engine do what the language paper, TGLP or IGLP says needs no approval; anything the papers do not say needs it first (claude.md, "Sessions"; to Code 08:42 UTC, corrected 15:44 UTC).

🔴 **Udi, 2026-10-03: THE PAPER IS THE ONLY SOURCE OF TRUTH** ("what is there to test?"): a question the paper answers is not settled by experiment on the code, and a gap is fixed before the work on it goes on.  A paper may print a program in a readable surface syntax; the term form in the repository is what must typecheck and run (claude.md, "Code"; to Code 2026-10-04 09:12 UTC).

One line per item: origin (inbox and `Date`), owner, branch, state (requested, forwarded, in progress, merged, rejected), waiting on.  An item leaves when merged or rejected.  Kept by Code.

## Worktrees

The list is `git -C /Users/udi/Grassroots/GLP worktree list`.  Code removes a worktree when it merges its branch (`CLAUDE.md`, "Worktrees", 2026-10-16); the 50 merged and clean went 2026-10-16 (Code #9, 11:05 UTC; list `/Users/udi/Grassroots/tmp/code9-wt-removed.txt`).

## Items

Open only; a merged or rejected item leaves the list, git holding it.  Rewritten 2026-10-12 08:30 UTC by Integration #3 to what is open, amended 2026-10-16 17:46 UTC by Integration #4 and 2026-10-17 18:54 UTC by Code #10, when the Code project took over Integration; the mail is authoritative where the two differ.

### `main`

- `main` at `84fe5301` (2026-10-17, sGLP-meet merged with the Card-to-Approval rename, after the cascade script and four recorded runs, tagged `cascade/currency/2026-10-17`, `cascade/cssn/2026-10-17`, `cascade/gai/2026-10-17` and `-2`; Code #10).  The last full suite: `84fe5301`, 4384 passed, 0 failed, 11 known red, the super-app's hosting of CSSN's mini-app (2026-10-17, Code #10; `GLP/CLAUDE.md`).  Two tiers since 2026-10-14 (Udi): the fast tier at every merge, the full suite every 3-4 hours.
- **Unmerged branches** (measured 2026-10-16 17:46 UTC; `vGLP-cva` merged since at `4595118a`, `CSSN-cva` at `8252fd3b`): `vGLP-nowild` (4, held: every importer of a compiled module would restate generated types; vGLP and GLP asked 2026-10-16 17:42 UTC), `Int-neg` (pair 7, waits GLP); `GLP-gapfix` (1), `GLP-oom` (4, three PROPOSAL commits awaiting GLP), `GLP-r3c` (7, weeding round three), `IGLP-qparams` (3, possibly overtaken by vGLP's compilation), held since September or early October; `Currencies-bonds-boot` (3, `414acfc5`, spent with `bonds_v2`) and `OpaqueMerge2` (6, `534f69b6`, a WIP superseded by `OpaqueMerge3`, merged), spent, to delete with Udi's yes.

### Code's tasks of 2026-10-17 --- Coordination #6, `Code_inbox.md` 17:57 UTC

- **3. The cascade script**, `cascade.sh` at the repository root, on `main` `3f491dae` (Coordination 17:57, 19:44 and 20:03 UTC; sGLP is no layer of the cascade, Udi 20:01 UTC): the owner's `contract.md` and `contract.glp`, Jurix's verdict, the VMAT form, the canonical platform as `.vglp` and `.glp`, the run with vGLP's scripted persons, a manifest, written to `cascade/<contract>/` (outside `programs/`, where a `.glp` is a module of the owner's program); `--record` one tagged commit; `--check` and Section CAS hold the record to what the tools print.  Recorded: currency (`99d4e115`), cssn (`10cfc7b2`, refused by vGLP's compiler: locality, effectiveness), gai (`9af73b86`, not grassroots).  Open: the social graph's run waits on GSG's `contract.md` (asked 2026-10-17 19:48 UTC); the federation has no run scheduled; how a platform is simulated under sGLP, sGLP's Cowork proposes and tasks Code (Coordination 20:04 UTC).  Owner: Code.  State: in progress.
- **4. The approval rule covers every language of the cascade**: binds Code's briefs from here (`Code/CLAUDE.md`); nothing to do.

### CSSN --- THE HIGHEST PRIORITY, IN CODE TOO (Udi, 2026-10-15, reported by Coordination 17:49 UTC)

- WWW 2027: abstract Oct 18, paper Oct 25 AoE.  CSSN's tasks rank first in Code's queue.
- On `main`: the port (`2557a08a`, 2026-10-15; `KNOWN_RED_CHECKS` 93 to 11, the 11 GSG's super-app hosting CSSN's mini-app); the root's expose of `sglp#monitor` (`d3e9590b`) and the transformation from outside `programs/sglp` (`sGLP-outside`, `cb0cafbd`); IGLP's linker for vGLP Section 6.3 (`vGLP-mod3`, `33862913`; `IGLP-vself`, `74783be3`).
- CSSN's implementation is now vGLP's canonical CVA platform compiled from CSSN's contract (Udi, 2026-10-16, reported by CSSN; CSSN SGLP `f8d56d3`).  CSSN's request to vGLP for the CVA compiler (a menu of known persons, `Approval`, the app transaction Introduce friends, the contract's twenty-three schemas): forwarded 2026-10-16 13:33 UTC, Blocking: yes for CSSN's tasks D to G.  Code's `CSSN-cva` and `vGLP-cva` are on it.
- CSSN's tasks to Code (`Code_inbox.md` 2026-10-15 17:29 to 19:55 UTC and 2026-10-16): A the bridge entry `cssn_ui/3`, B the simulation `programs/cssn/sim`, C a madGLP boot of the village (CSSN, Udi, 2026-10-16, no change of IGLP), D to G the program, village, screens and simulation on the CVA platform.  `main_cssn.dart` beside `main_coins.dart` (CSSN Section 8.2) after CSSN's opaque part, reported to GLP and CSSN.  State: with Code.
- CSSN's part of the opaque merge: not on `main` (the merge `9edea193` went without it); CSSN answered Code's question (CSSN #3, 2026-10-16 10:51 UTC).
- CSSN's contract in Jurix's term form, `programs/cssn/contract.glp` (Appendix B.2), on `main` `8252fd3b` with `programs/cssn/compile.sh` and its Section K checks; vGLP's compiler refuses five of its schemas (Code #9 to CSSN, 2026-10-16 18:22 UTC), so D's platform waits on CSSN's revision.  The old eighteen-schema transcription stays in Jurix as the fixture `cs18`, no longer called CSSN's.

### vGLP's old volition-guard form leaves the language --- since 2026-10-04

- **On `main` since 2026-10-11** (`1fbe20a7`): IGLP's Dart bridge (`glp_multiagent/lib/ui_runtime/bridge.dart`); Currencies' coins, sovereign and bonds agents in vGLP's revised syntax; GSG's interfaces of `coins/3` and `sovereign/3` and its scripted persons; IGLP's manifests, tests and fixture `tests/vglp/one_clause/responder.vglp`.  GPBD's request of 2026-10-04 15:55 UTC is met; GPBD told 2026-10-12 08:26 UTC.
- **Ports left**: CSSN's is on `main` `2557a08a` (2026-10-15).  `isVolitionGuarded` is still in 4 files of `glp_runtime/lib` (2026-10-16 17:46 UTC).  GSG's three (`grassapp/grassapp_agent.vglp` 21, `social/graph/core/agent.vglp` 8, `core/home.vglp` 6): a rewrite from GSG's paper, not a port (Code #7, 2026-10-11 03:24 UTC): GSG's port, items 1 and 2, on `main` `dfd9e0b9` (Code #8 to GSG, 2026-10-12 22:48 UTC); `grassapp_agent.vglp` goes with `programs/grassapp` (one copy of the currency, below); `social/graph/core/agent.vglp` not re-measured.
- **Then**: vGLP retires the deployed mediator (`med.glp`, `ui/mediator.glp`, `vGLP/docs/decisions.md:112`) and IGLP the old protocol in `runtime.dart`; and one last merge moves vGLP's compiler and the display declaration to the new AST (30 sites, from vGLP's Definitions) and takes the old form out of the parser, the AST, `isVolitionGuarded`, `test/vglp`'s 86 and the harness's three N re-emit checks (to Code 2026-10-10 09:50 UTC; GSG and vGLP told).  State: waits on CSSN's port, and on a measure that GSG's left no old clause.

### GNA's two multi-owner items --- since 2026-10-04

- **1. Reconnection and the rendezvous server leave the Dart**: one task of Code's (Udi, 2026-10-09: "decide, make it simple, fix, get it done"; to Code 19:42 UTC), GSG's part done by Code in GSG's files and reported to GSG.  GNA's part on `main` `1058731a` but for deleting `networking/bootstrap_anchor`, held on GNA, which holds the only invite server (Code #8, 2026-10-13 03:25 UTC).  GSG's part --- `attest(PkA, PkB)` on befriending, reconnect and available to the rendezvous servers, `address_declare/2` and `punch_udp/1` on `punch(Addr)`, the graph's hash at the server's boot --- Code's, from GNA `rendezvous.tex` and GSG's networking appendix (Integration to Code, 2026-10-13 08:12 UTC, restating 2026-10-09).  State: with Code.
- **2. madGLP over the real layer**: GLP's step A, `AgentRuntime` and `IsolateManager` over a given `GlpNetwork`, on `main` (`58c0367d`).  GNA's API rename fixes its callers in IGLP's duo and GPW's `servers/gpw/` in the same commit (to Code 2026-10-09 19:42 UTC); IGLP's duo attestation producer (GLP's task 2026-10-09 18:38 UTC) is spent if the duo goes with `programs/grassapp` (GLP told 2026-10-12 23:01 UTC).  State: with Code.

### The loader for directory modules --- GLP, 2026-10-11

- The vGLP compilation reads only a sibling `N.vglp`, so an import from a directory module that reaches a question is refused (`program_compilation.dart:195, 232`); vGLP Definition "Canonical Compilation" covers every module (Code #7 at vGLP's asking, 2026-10-11 14:34 UTC).  GLP tasked it (GLP, 2026-10-11 21:42 UTC).  Blocking: yes by the rule.  State: with Code.

### Guard negation leaves the language --- since 2026-10-02

- `=?\=` is in; GSG's nine sites are rewritten.  GLP removes `~`, with `docs/guards-reference.md`'s negation lines, once GLP's own seven sites (`book/`, `examples/`) and CSSN's seven (in CSSN's task) are rewritten.  CSSN's port is on `main`; GLP's sites and the parser not re-measured since 2026-10-02.  State: with GLP.

### GLP's open engine work --- since 2026-10-02

- Weeding round three (`GLP-r3c`) and the instantiation (`GLP-inst`), held on sentences TGLP must write first; `GLP-oom`'s three PROPOSAL commits; three engine flaws reported to GLP 2026-10-02 14:19 UTC (A, a guard over a variable fresh to the clause answering differently on 0x45 and the generic call; B, the 3(b) rule passing a guard over an unknown variable, against `glp.tex:160`; C, `ground/1` succeeding on a mutual reference, against TGLP), each a fix to the spec needing no approval.  State: with GLP; not re-verified since 2026-10-04.
- sGLP's 1000-agent five-year run, which died of out-of-memory at simulated day 19 before the object-cell heap: whether it now reaches its horizon is unreported.

- The linker's import check (TGLP `bae5259`): on `main` (`3dcd6327`, `GLP-import` merged 2026-10-13 01:07 UTC), GSG's imports agreeing after its port.  GLP's call-site instantiation of a bare-only parameter and its refusal of an unreached module's SRSW, guards and types: yes to both (GLP to Code, 2026-10-13 08:02 UTC), Blocking: yes; with Code.
- The checker fault of Code #8 to GLP, 2026-10-12 21:59 UTC: the load check and the goal check disagree on a parameterised procedure with a defined guard.  Blocking: yes; with GLP.

### Programs that do not load --- Code #8, 2026-10-12 21:07 UTC

- Measured at `main` `93884202` by the REPL's load path (`/Users/udi/Grassroots/tmp/tglp-experience-measure.md`); each a fault by the rule.  The book's 32 are GLP's, sent directly: 20 load on `main` `862070ba`, 12 stopped on GLP's rulings, three of them deleted on `GLP-bookdel` (Code #8 to GLP, 21:59 UTC).  P99's three (`p60`, `p84`, `p92`, SRSW): to P99 2026-10-12 23:01 UTC, dormant.  GSG's five `programs/social/*_boot.glp` are boot sources, not faults: the harness runs each by `:boot` (`run_all_tests.sh:5509-5647`), IGLP's Implementation Notes, "Boot" (GSG, 2026-10-13 08:17 UTC); GLP and Code told 10:17 UTC to drop them from TGLP's count.  `cssn`'s `~`: in CSSN's task.

### One copy --- Udi, 2026-10-12 (reported by GSG): "there cannot be multiple copies of the same code, only a single one"

- The currency's copy went on `main` `6a702717` (2026-10-13): `bonds_v2` and `programs/grassapp` deleted, the phone's default the super-app; Appendix B follows (Coordination `0616a56` and after).  Residue: grassapp's names in `networking/CLAUDE.md` (GNA tasked Code, 2026-10-15) and in GSG's `s7-prototype.tex:34` and `CLAUDE.md:7` (GSG's).
- The rule reaches types too: the super-app's copies of the mini-apps' types went with the opaque merge; the template's names (`RootChannel`, `Conversation`, `PersonIn`, ...) are the root's, every copy deleted in that merge (Udi, 2026-10-13, reported by GLP).

### Opaque types --- GSG, 2026-10-13

- On `main` `9edea193` but for CSSN's part (`GLP/CLAUDE.md` `adfcbe3c`): the built-in type `Opaque` and the namespace (`76a1da9f`); the root's entry template, `procedure(D, T) miniapp(Key?, PersonChannel(D)?, SgChannel(T)?, Stream(Integer)?)`, D the person channel's (vGLP Definition "Person Channel") and T the mini-app's own, the calendar written by the super-app (`5c213536`; Udi, 2026-10-14, reported by vGLP); Currencies' three mini-apps exporting `miniapp/4` as its instances (`75820c23`); GSG's copies of the mini-apps' types deleted.  Provisional by Udi (2026-10-15, to Code #8: "for now do whatever is simpler, we will make final decision later", reported by Code): `opaque_type/3`'s form (Code's S2', GLP_inbox 2026-10-15 17:57 UTC).
- Open: CSSN's entry and scripted persons (CSSN's part, above); the scripted persons' second template for Currencies (GSG, 2026-10-13 18:52 UTC), not re-measured; Coordination's Appendix C "opaque type" (Coordination `0616a56`).

### vGLP's interactive types reach the owners' code --- vGLP, 2026-10-16

- vGLP's 2026-10-16 12:17 UTC items (Udi approved; vGLP `56d898f`): a question drawn only once whole; "an interactive type has a Stream only at a position the person writes"; `Card` renamed `Approval` ("card" banned from every paper body, Udi, 2026-10-16, to_all 15:16 UTC).  Code #9 to Integration, 13:57 UTC: item 4 refuses Currencies' `Offered ::= Stream(Coin)` (coins) and `Stream(Instrument)` (bonds, sovereign) and GSG's copy `COffer`.  Currencies asked to decide `Offered` (Code recommends a List), GSG's copy following it, IGLP's `bridge_test` and `coins_screen_test` compliance, the `Approval` sweep Code's (to Currencies and Code 2026-10-16 17:45 UTC).  Blocking: yes for vGLP.

### Code's own (Integration's until 2026-10-17) --- tasked 2026-10-11 15:53 UTC

- The reserved type `Output` on `main` `982a3389` across five owners in one merge (Code, 2026-10-14 09:09 UTC); the harness's part with it.  Two tiers on `main` `0aa095db` (Udi's yes, 2026-10-14; Code 10:21 UTC): `GLP_SECTIONS` runs named sections, `test/run_fast.sh` 156 s; the fast tier at every merge, the full suite every 3-4 hours, its last green commit kept in `GLP/CLAUDE.md`; subagents in parallel, every run serialised by a lock.
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
- IGLP: the retired bond model in the wallet view (`manifest.dart`'s `maturityField`, the `issuer@maturity` key, `agent_surface.dart`'s `_isCash` and the cash/loans split), nothing reaching it (Currencies, 2026-10-13 19:19 UTC; Udi: "clean it up"); to GLP and Code 20:00 UTC, with GLP's task of 10:06 UTC that deletes the wallet and escrow rendering.
- GPW: `servers/gpw/name_service/test/push_e2e_test.dart:122` passes a two-argument closure to `onPeerConnected`, which takes three, so the test does not compile (Code #6, 2026-10-07 13:16 UTC, from GNA's attestation on `gap` `68a584a2`).  Sent to GPW 2026-10-08 14:18 UTC; Code fixes it with GNA's API rename (to Code, 2026-10-09 19:42 UTC).
- IGLP: the GrassApp duo's attestation producer: spent, the duo going with `programs/grassapp` (GLP's IGLP task 2, `Code_inbox.md` 2026-10-13 08:11 UTC).
- GLP: `GlpPrinter` (`lib/compiler/glp_printer.dart:130`) prints the anonymous output `_?` as `_`, on the old-syntax compilation path and `wire/flattening.dart`; vGLP's own printer is fixed on `gap` (`4ae0b84c`).  Found by Code, forwarded by vGLP; sent to GLP to rule 2026-10-02 01:10 UTC.
- vGLP: its canonical compilation's `close/1` collides with the root's channel guard; the root's stays and vGLP renames its own (Udi, 2026-10-02; GLP 2026-10-01 23:14 UTC), forwarded to vGLP 23:21 UTC.  The checker gap Code found with it (`p(A) :- close(A?)`, `A` at `Request?`, passes) is GLP's.

- GFWC: three readings for yes/no (the relayed motion's epoch, identities as constants under the standard order, two row-existence preconditions), with `767e433d`.
- Legal: a redundancy in the appendix's provenance clause diverging from Section 3.6 on a `sign`-like schema, the printing conventions taken from Section 5.2, CSSN's check needing `:limit` above the REPL's default, with `d5fd3fd5`.
- vGLP: `currency-manifest-derivation.md` still describes the coins swap card as two buttons (Code, 18:15 UTC).
- IGLP: the writer check at a volitional call's output positions on an initial goal: GLP's IGLP task 1 (`Code_inbox.md` 2026-10-13 08:11 UTC), with Code.
