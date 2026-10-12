# Open code work

🔴 **Udi, 2026-10-02: "YOU CANNOT CHANGE THE LANGUAGE OR ITS RUNTIME ENGINE WITHOUT MY APPROVAL."**  For the engine the line is the specification (Udi, 2026-10-02): "Making the runtime comply with the spec does not need my approval; only runtime changes that go beyond the spec do."  A fix that makes the engine do what the language paper, TGLP or IGLP says needs no approval; anything the papers do not say needs it first (claude.md, "Sessions"; to Code 08:42 UTC, corrected 15:44 UTC).

🔴 **Udi, 2026-10-03: THE PAPER IS THE ONLY SOURCE OF TRUTH** ("what is there to test?"): a question the paper answers is not settled by experiment on the code, and a gap is fixed before the work on it goes on.  A paper may print a program in a readable surface syntax; the term form in the repository is what must typecheck and run (claude.md, "Code"; to Code 2026-10-04 09:12 UTC).

One line per item: origin (inbox and `Date`), owner, branch, state (requested, forwarded, in progress, merged, rejected), waiting on.  An item leaves when merged or rejected.  Kept by Integration.

## Worktrees

The list is `git -C /Users/udi/Grassroots/GLP worktree list`.  A worktree is made per task by Code, named after its branch, off `main`; the branch's task is in `Code_inbox.md`.  No table of them is kept by hand.

## Items

Open only; a merged or rejected item leaves the list, git holding it.  Rewritten 2026-10-12 08:30 UTC by Integration #3 to what is open; the mail is authoritative where the two differ.

### `main`

- **`gap` is on `main` since 2026-10-10** (Code #6, 12:04 UTC: `372f062e`, 461 commits).  Every owner's branch goes off `main`.  The suite on `main` at `75292454`: 4085 passed, 0 failed, 113 known red (`GLP/CLAUDE.md`, `2f7fe121`).
- **Unmerged branches** (Code #7, 2026-10-12 07:04 UTC, after the 96 merged local and 72 remote branches went): `Currencies-bonds-boot` (3 ahead, `bonds_v2` mad_boots' `tee` and `actor_dispatch`), `GLP-gapfix` (1, head reader matching only an unbound goal writer), `GLP-oom` (4, a guard-suspension fix and three PROPOSAL commits awaiting GLP), `GLP-r3c` (7, weeding round three), `IGLP-qparams` (3, question parameters, which vGLP's changed compilation may have overtaken), `GSG-port2` (1, GSG's port, held).

### vGLP's old volition-guard form leaves the language --- since 2026-10-04

- **On `main` since 2026-10-11** (`1fbe20a7`): IGLP's Dart bridge (`glp_multiagent/lib/ui_runtime/bridge.dart`); Currencies' coins, sovereign and bonds agents in vGLP's revised syntax; GSG's interfaces of `coins/3` and `sovereign/3` and its scripted persons; IGLP's manifests, tests and fixture `tests/vglp/one_clause/responder.vglp`.  GPBD's request of 2026-10-04 15:55 UTC is met; GPBD told 2026-10-12 08:26 UTC.
- **Ports left**: CSSN's two (`childsafe/agent.vglp` 33 old clauses, `child_agent.vglp` 24): CSSN's task (`Code_inbox.md` 2026-10-09 19:37 UTC), in one merge with vGLP's retirement of the mediator in `cssn` and IGLP's `cssn_v2_isolate_test.dart` and `program_compilation_test.dart`, vGLP and GLP asked 2026-10-09.  GSG's three (`grassapp/grassapp_agent.vglp` 21, `social/graph/core/agent.vglp` 8, `core/home.vglp` 6): a rewrite from GSG's paper, not a port (Code #7, 2026-10-11 03:24 UTC), GSG to write the task (told 2026-10-11 15:53 UTC); `GSG-port2` held.
- **Then**: vGLP retires the deployed mediator (`med.glp`, `ui/mediator.glp`, `vGLP/docs/decisions.md:112`) and IGLP the old protocol in `runtime.dart`; and one last merge moves vGLP's compiler and the display declaration to the new AST (30 sites, from vGLP's Definitions) and takes the old form out of the parser, the AST, `isVolitionGuarded`, `test/vglp`'s 86 and the harness's three N re-emit checks (to Code 2026-10-10 09:50 UTC; GSG and vGLP told).  State: waits on CSSN's and GSG's ports.

### CSSN --- active again since 2026-10-09 (Udi)

- `programs/jurix/contracts.glp`'s contract `cssn` (`send` without `friend(f)` at the sender; "eighteen"): Legal's, tasked by Legal 2026-10-09 18:46 UTC with its two language changes of 18:43 UTC.  State: with Code.
- The port, several parents per child, the refusal of a cycle of two, the `~` sites, the village: CSSN's one task, above.  CSSN's 8 known-red checks (its artefact) leave `KNOWN_RED_CHECKS` with it.

### GNA's two multi-owner items --- since 2026-10-04

- **1. Reconnection and the rendezvous server leave the Dart**: one task of Code's (Udi, 2026-10-09: "decide, make it simple, fix, get it done"; to Code 19:42 UTC), GNA's of 2026-10-09 19:37 UTC sequenced after GNA's API task, its adapter and GLP's seam predicates, GSG's part done by the same subagent in GSG's files and reported to GSG.  GNA's adapter move, API item 3 and Tasks A and C are on `main` (`b6346e88`, `21b67a05`, `f98dd1c7`, `872c1078`, 2026-10-12).  State: with Code.
- **2. madGLP over the real layer**: GLP's step A, `AgentRuntime` and `IsolateManager` over a given `GlpNetwork`, on `main` (`58c0367d`).  GNA's API rename fixes its callers in IGLP's duo and GPW's `servers/gpw/` in the same commit (to Code 2026-10-09 19:42 UTC); IGLP's duo attestation producer (GLP's task 2026-10-09 18:38 UTC) follows the adapter.  State: with Code.

### The loader for directory modules --- GLP, 2026-10-11

- The vGLP compilation reads only a sibling `N.vglp`, so an import from a directory module that reaches a question is refused (`program_compilation.dart:195, 232`); vGLP Definition "Canonical Compilation" covers every module (Code #7 at vGLP's asking, 2026-10-11 14:34 UTC).  GLP tasked it (GLP, 2026-10-11 21:42 UTC).  Blocking: yes by the rule.  State: with Code.

### Guard negation leaves the language --- since 2026-10-02

- `=?\=` is in; GSG's nine sites are rewritten.  GLP removes `~`, with `docs/guards-reference.md`'s negation lines, once GLP's own seven sites (`book/`, `examples/`) and CSSN's seven (in CSSN's task) are rewritten.  State: waits on GLP's sites and CSSN's port.

### GLP's open engine work --- since 2026-10-02

- Weeding round three (`GLP-r3c`) and the instantiation (`GLP-inst`), held on sentences TGLP must write first; `GLP-oom`'s three PROPOSAL commits; three engine flaws reported to GLP 2026-10-02 14:19 UTC (A, a guard over a variable fresh to the clause answering differently on 0x45 and the generic call; B, the 3(b) rule passing a guard over an unknown variable, against `glp.tex:160`; C, `ground/1` succeeding on a mutual reference, against TGLP), each a fix to the spec needing no approval.  State: with GLP; not re-verified since 2026-10-04.
- sGLP's 1000-agent five-year run, which died of out-of-memory at simulated day 19 before the object-cell heap: whether it now reaches its horizon is unreported.

### Integration's own --- tasked 2026-10-11 15:53 UTC

- Done: the harness keeps `dart test`'s and `flutter test`'s raw output in `tmp/suite_q_dart.txt` and `suite_q_flutter.txt`; the merged branches and worktrees gone; `GLP/docs/ma/HOW-TO-RUN.md` rewritten and run; 14 of the manual's 15 copies of TGLP replaced by pointers (Code #7, 2026-10-12 04:10 and 07:04 UTC).
- Open, to Code 2026-10-12 08:25 UTC: a negative fixture per missing pair (`tmp/int57-negatives.txt`: guards on a directory, a linked program and a multi-isolate boot; SRSW on a multi-isolate boot; every check through `:boot` and through `IsolateManager` with `programDir`; SRSW in a directory module no entry point reaches); the manual's §3.5 sentence at `:347` deleted on GLP's ruling (Code #3, 2026-09-23 13:33 UTC).  State: with Code.
- IGLP's intermittent `bonds_v2_isolate_test.dart` failure (`main` `a4171106`, 2026-10-11): with IGLP until its next failure names the cause (GLP, 2026-10-11 21:42 UTC).

### With Coordination and Udi

- An owner for `programs/social/*_boot.glp` (`coins_boot.glp`, `both_boot.glp`, `cssn_boot.glp`): GSG recommended, with Udi (Coordination, 2026-10-11 20:57 UTC).

### Residue of `gap`, not re-verified since 2026-10-04; check the mail before acting

- B2's declarations of other owners leaving a primitive alternative uncovered (Currencies 11, GSG 5, GNA 2, GFWC `federation`; GSG's coverage item 9 took nine of eleven at `e353614c`).
- The wider `Key` batch: grassapp's senders (GSG's), `swap` and `SwapCard` with Currencies' issuer sweep.
- A writer is never dropped (Udi, 2026-10-02): GSG's `hold_*` sites and `bounded.glp:214`.
- Declarations without a parameter list (TGLP `parameterized-types.tex:108`): Currencies `bonds_v2/boot.glp:67, 75`, `secure/issuer.glp:34`.
- The owners' open questions to Code at the merge (Code's list of 2026-10-04), and the four checker findings for IGLP of 2026-09-18.

### Dormant

- P99.

### Findings with owners, none blocking
- GPW: `servers/gpw/name_service/test/push_e2e_test.dart:122` passes a two-argument closure to `onPeerConnected`, which takes three, so the test does not compile (Code #6, 2026-10-07 13:16 UTC, from GNA's attestation on `gap` `68a584a2`).  Sent to GPW 2026-10-08 14:18 UTC; Code fixes it with GNA's API rename (to Code, 2026-10-09 19:42 UTC).
- IGLP: the GrassApp duo (`main_grassapp_duo.dart:186` and its Runner) has no attestation producer, where the networking demo app has one; GNA `api.tex`, "Attestation" (same entry).  Tasked by GLP 2026-10-09 18:38 UTC, to follow GNA's adapter task of 2026-10-04 16:07 UTC (GNA item 2 above).
- GLP: `GlpPrinter` (`lib/compiler/glp_printer.dart:130`) prints the anonymous output `_?` as `_`, on the old-syntax compilation path and `wire/flattening.dart`; vGLP's own printer is fixed on `gap` (`4ae0b84c`).  Found by Code, forwarded by vGLP; sent to GLP to rule 2026-10-02 01:10 UTC.
- vGLP: its canonical compilation's `close/1` collides with the root's channel guard; the root's stays and vGLP renames its own (Udi, 2026-10-02; GLP 2026-10-01 23:14 UTC), forwarded to vGLP 23:21 UTC.  The checker gap Code found with it (`p(A) :- close(A?)`, `A` at `Request?`, passes) is GLP's.

- GFWC: three readings for yes/no (the relayed motion's epoch, identities as constants under the standard order, two row-existence preconditions), with `767e433d`.
- Legal: a redundancy in the appendix's provenance clause diverging from Section 3.6 on a `sign`-like schema, the printing conventions taken from Section 5.2, CSSN's check needing `:limit` above the REPL's default, with `d5fd3fd5`.
- IGLP and vGLP: under vGLP's default-display sentence a functor is not an argument, so `minted(2)` reads `2` in the panel's list (`432326ec`).
- vGLP: `currency-manifest-derivation.md` still describes the coins swap card as two buttons (Code, 18:15 UTC).
