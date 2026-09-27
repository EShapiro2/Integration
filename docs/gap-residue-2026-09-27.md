# The residue of `gap` at 67bb4187: the 588 failures, by load, cause and owner

Measured 2026-09-27 17:49 UTC in `/Users/udi/Grassroots/GLP-worktrees/_gap` (branch `gap`, tip 67bb4187, tree clean before and after), against `/Users/udi/Grassroots/tmp/suite_67bb4187.txt` (2178 / 1590 / 588).  Every load below was re-run on `gap` with `bin/glpc`; the Section Q files were run one at a time (`dart test` in `glp_runtime`, `flutter test` in `glp_multiagent` after `tool/sync_glp_assets.sh`).  Raw outputs: `/Users/udi/Grassroots/tmp/gapres/`.

The suite's own count is 588 FAIL lines; Section Q has 51 of them (the brief's 52 is one high: 1 sync + 32 `glp_runtime` + 18 `glp_multiagent`), and the per-section figures sum to 588 with Q at 51.

All 588 are accounted for.  No failing test has a program that still loads and runs, except S10, where the program is still rejected as intended and only the wording of the rejection changed.

## Root-cause classes

| Id | Class | Rule and commit that brings it | Diagnostic |
|---|---|---|---|
| R1 | Head/body pair not the same type | Condition 3(b) of TGLP `def:well-typed-clause`, checked since 188f1bd4 | `Variable pair (X, X?) not dual across clause: Variables across head/body: ...` |
| R2 | Guard meets its occurrence in nothing | TGLP typed-glp.tex "Type checking of guards", 188f1bd4 | `Guard G tests X? at T, which has no term in common with its type S: the meet is empty` |
| R3 | Writer with no reader, reader with no writer | SRSW on every linked program, 36974729 | `Variable "Q" has no reader` / `has no writer` |
| R4 | Several reads of a reader not of a constant type | TGLP `def:constant-type`, 600d4f77, surfaced on linked programs by 36974729 | `Reader variable "N1?" occurs 2 times without a groundness-implying guard or a constant type` |
| R5 | No instantiation of a call: an input path uncovered | TGLP `def:instantiation` (input coverage), 69f91a6d, adfffa13, 18edde33 | `uncovered alternative "ack(1,1):↓"`; `... no call in the program instantiates it` |
| R6 | CHECKER FAULT: a call to an imported parameterised declaration is checked at its wildcard form | exposed by 3(b) (188f1bd4) on GSG's named parameters (58f124cb) | `the body occurrence produces _ / accepts NetEndList<_>` against `$abstract_Y` in the head |
| R7 | Diagnostic wording changed, expectation stale | 18edde33 | S10 greps `no standalone well-typing` |
| R9 | SUSPECTED CHECKER FAULT: a negated guard is narrowed as if positive | 188f1bd4 | `Guard module tests X? at Module?, which has no term in common with its type Integer?` |

## By owner

Counts are of suite FAIL lines, each counted against the first load it depends on.  Where a test depends on two loads that both fail, the co-cause is named.

### GFWC --- 109

| Program | File:line (first diagnostic, then the rest) | Diagnostic | Class | Tests |
|---|---|---|---|---|
| `federation` | `federation/lattice.glp:191`; also `:203` | X: `Confs` in the head, `Row` at `confs_snoc/3`; at 203 `Row` against `Confs` at `cons_each/3` | R1 | GF 109 (all of GF) |

### Currencies --- 207

| Program | File:line | Diagnostic | Class | Tests |
|---|---|---|---|---|
| `currencies/bonds_v2` | `bonds_v2/agent.glp:73`; also `:98`, `:202` | `Target`: `Constant` in the head, `Key` at `inject_trade_result/4` (`inject_escrow_dep_result/4` at 202) | R1 | N 29; Q `bonds_v2_isolate_test` 12 |
| `currencies/coins`, `coins/currency` | `coins/currency/coins_agent.glp:91` (source `coins_agent.vglp:270`) | `propose_swap/13`: `Q` has no reader in the `fail` clause | R3 | N2 15; SG currency artefact 1; Q `coins_isolate_test`, `coins_screen_test`, `village_market_screens_test` 3, `superapp_screen_test` 1 (co-cause: GSG core) |
| `currencies/bonds` | `bonds/bonds_agent.glp:141` (source `bonds_agent.vglp:469`); then `bonds/escrow.glp:61, 183, 187, 207, 219, 226` | `Q` has no reader; escrow reads `Xs?`, `Ys?`, `Got?`, `L?` twice, of `Stream(Lot)` and `Lot`, not constant types | R3 (R4 behind it) | N3 69 |
| `currencies/sovereign`, `sovereign/denominated` | `sovereign/denominated/sovereign_agent.glp:179` (source `sovereign_agent.vglp:601`) | `Q` has no reader | R3 | N4 76; SG denominated artefact 1 |

The `:emit` checks pass in N2, N3 and N4: the committed `.glp` is the compiler's output, so the unread `Q` is in the three `.vglp` sources, not in the vGLP compiler.

### CSSN --- 91

| Program | File:line | Diagnostic | Class | Tests |
|---|---|---|---|---|
| `cssn/childsafe` | `cssn/childsafe/self.glp:47`, `:51` | the forwarding clauses of `play_open/2`, `play_enrol/2`: imported as `Stream(AppNotify)`, exported by `plays.glp:18, 35` as `Stream(UserNotify)`, which is not within `AppNotify`; then the two `cssn` diagnostics below | R1 | K mini-app block 7; SG childsafe artefact 1 |
| `cssn` | `social/graph/routing/befriend.glp:76` at the call from `cssn`; then `social/graph/routing/intro.glp:13` | `await_friend_channel` instantiated at `cssn:IntroContent` leaves `ack(_)` and `nack` uncovered; `intro_await_peer/3` is called (`childsafe/agent.glp:127, 211`, `child_agent.glp:236`) but no call yields an instantiation, its clauses covering `ack`/`nack` and not the rest of `IntroContent` (`cssn/self.glp:65`).  One channel content type serves both handshakes; each callee covers half | R5 | K `cssn` block 66; SG cssn artefact 1; Q `program_linker_test` "Type checking all modules" 1; Q `cssn_v2_isolate_test` 13 |
| `cssn`, compiled without the check | `cssn/play_ui_boot.glp:102, 110, 118`; `cssn/boot.glp:181...1392` (every play); `childsafe/child_agent.glp:515, 516`; `childsafe/agent.glp:495, 496` | `BNetIn`, `AliceNetIn`... have no writer; `Convs` has no reader | R3 | Q `program_linker_test` "End-to-end ... compiles to bytecode", "fplay1 produces correct output" 2 |

Behind the type errors `cssn` carries these SRSW violations: 58 `...NetIn?` readers with no writer in its plays, four `Convs` writers with no reader, and 23 multiple-read reports (`superapp.glp:147`, `boot.glp:1271, 1294, 1300`, `cssn/self.glp:439, 451, 514, 536`, `child_agent.glp`, `mediator.glp`).  Some of the multiple-read reports are the test's, not the program's (item 4 of the suspected faults).

### GSG --- 129

| Program | File:line | Diagnostic | Class | Tests |
|---|---|---|---|---|
| `social/graph` and `social/graph/core` | `core/agent.glp:547`; also `:763, 776, 789, 801`, `core/home.glp:78` | `M`: `Content` in the head, `Module` at `decompose_module/4` and `run/3`; no `module(M?)` guard narrows it | R1 | G 27; SG core-dependent 69 (see below); Q `graph_scenario_test` 1 |
| | `core/agent.glp:967, 1050, 1063` | `Name`: `_` in the head, `GlobalName` at `authorise_link/2` | R1 | (same load) |
| | `core/superapp_plays.glp:923` | `From`: `Constant` in the head, `Key` at `find_swap/4` | R1 | (same load) |
| `grassapp` | `grassapp/grassapp_agent.glp:103`; also `:166, 424, 634` | `FOut`: body produces `OutputStream`, head hands out `FriendStream`; 166 `Constant` against `Integer`; 424 `NetInStream` against `Stream(GroupMsg)` at `merge/3`; 634 `Constant` against `Key` | R1 | SG 12; Q `grassapp_escrow_test`, `grassapp_loan_redeem_test`, `grassapp_scenario_test`, `grassapp_unfriend_test`, `grassapp_village_test`, `paper_screenshots_constructs_test`, `paper_screenshots_grassapp_test` 7 |
| `grassapp/budget` | `grassapp/budget/bounded.glp:56`; also `:202, 236`, and `:214` | `reduce(_?, _)` reads `N1?` twice at type `_`; `Out?` twice; `hold(X?) :- true` has no writer | R4 (R3 at 214) | SG 9 |
| `social/graph/pingapp` | `social/graph/pingapp/miniapp.glp:28`; also `:100, :120` | `Ev` has no writer; `F` has no reader; `X` has no writer | R3 | SG pingapp artefact 1; Q sync 1 (the first of four artefacts it cannot write; the others are currency, childsafe, denominated); Q `glp_sources_platform_test` 1 (`pingapp.glpw` missing from the bundle) |
| `social/graph/endapp` | `social/graph/endapp/miniapp.glp:32` | `Ev` has no writer | R3 | SG endapp artefact 1 |

The SG core-dependent 69 are every check that needs `social/graph/core` loaded, in a REPL or in `:boot`: the super-app block 20, child-safe hosted 3, two mini-apps 5, two on two phones 6, super-app on two phones 5, warm call 11, registry 3, denominated 3, currency on two phones 9, child-safe on two phones 4.  Most also need an artefact that fails too (currency, childsafe, pingapp, endapp, denominated), so they stay red until both are fixed.

`grassapp_unfriend_test` shows as a 30-second timeout: the load error goes to the agent's error port and the test only waits for output.

`social/spm` is GSG's and fails too, but its first diagnostic is the checker fault R6; it is under IGLP below, with GSG's own fault named there.

### GLP-Spec --- 5

| Program | File:line | Diagnostic | Class | Tests |
|---|---|---|---|---|
| `book/recursive/list_processing/delete.glp` | `:9` | `=:=` tests `X?` of the parameter `X` at `Exp`: the abstract type meets `Exp` in nothing; the declaration should be numeric | R2 | B 1 |
| `book/recursive/list_processing/member.glp` | `:7`; also `:8` | the same guard; then `Xs`: `Stream` in the head, `OpenStream` at `member/2` | R2 | B 1 |
| `book/recursive/list_processing/nth.glp` | `:7` | `Xs`: `Stream` in the head, `OpenStream` at `nth/3` | R1 | B 1 |
| `book/recursive/structure_processing/list_to_bst.glp` | `:21` | `Xs`: `Stream` in the head, `NonEmptyList` at `split_at/5` | R1 | B 1 |
| `book/recursive/structure_processing/traversals.glp` | `:10`; also `:15, :20` | `X`: `_` (from `Tree ::= void ; tree(_, Tree, Tree)`) in the head, `$abstract_X` at `append/3`; the declarations name no parameter list, so `X` is inferred as one | R1 | B 1 |

### IGLP --- 47

Checker faults, 24:

| Program | File:line | Diagnostic | Class | Tests |
|---|---|---|---|---|
| `tests/param_import_linked` | `programs/tests/param_import_linked/self.glp:23` | `tie(A?, B) :- worker # tie(A, B?)`: head `$abstract_Y`, body `_` | R6 | Q `linked_decl_params_test` 1 |
| `social/spm/cva`, `social/spm` (GSG's program) | `social/spm/cva/self.glp:117` | `network(N) :- network # network(N?)`: head `NetEndList<$abstract_C>`, body `NetEndList<_>` | R6 | X10 3; SG spm 18 |
| `tests/typed/module_guard.glp` | `:11` | `~module(X?)` on `Integer?` refused as an empty meet | R9 | A28 1; B 1 |

`social/spm` has a GSG fault behind R6: `social/spm/self.glp:32-38` name `IdentityRecord`, which is defined only in `cva/`, `gsg/` and `secure_gsg/self.glp`, below it, and so is not in its scope (TGLP modules.tex: "Types referenced in an imported declaration are resolved against the caller's type scope").  The declarations carry no parameter list, so the transitional inference reads it as a parameter instead of refusing it.  With R6 fixed, those clauses would load under a parameter named `IdentityRecord`.

Fixture faults, 23 (all `programs/tests/`, IGLP's):

| Program | File:line | Diagnostic | Class | Tests |
|---|---|---|---|---|
| `tests/typed/univ_body.glp` | `:6` | `L`: `_` in the head, `Stream(_)` at `=../2`; `list(L?)` narrows nothing, `list/1` being declared `_?` (GLP-Spec appendix-guards) | R1 | A30 2 |
| `tests/agent_roundtrip/typed_social_agent.glp` | `:143`; also `:156, 162, 122, 127` | `Id`, `From`: `Constant` in the head, `Key` at `send_net/3`, `send_friend/4`, `add_friend_output/4`, `send_user/3`; `:122` `FIn`: `FriendStream` against `Stream<$abstract_X>` at `merge/3` | R1 | B 1; Q `single_heap_roundtrip_test` 1; Q `grassapp_single_isolate_test`, `roundtrip_isolate_test`, `scenario_single_isolate_test` 3 |
| `tests/agent_roundtrip/play_madglp`, `play_ui_madglp` | `play_madglp/agents.glp:6`, `play_ui_madglp/agents.glp:6`; then `typed_social_agent.glp` | `Id`: `_` against `Constant`, `NetIn`: `_` against `NetInStream` at `agent/4` | R1 | MA 2; Q `isolate_manager_test` 2 |
| `tests/cert_refused` | `programs/tests/cert_refused/app.glp:2` | `S`: `Stream<_>` against `NetStream` at `send_to_net/1` | R1 | SK6 3 |
| `tests/linkprobes/linkprobe9` | `linkprobe9/agents.glp:19` | `In`: `_` (`alice_init(_?, _?)`) against `NetStream` at `alice_wait/1` | R1 | MB5 3 |
| `tests/linkprobes/runprobe` | `runprobe/host.glp:22` | the same | R1 | MB5 3 |
| `tests/mad_w_clean.glp`, `tests/mad_w_probe.glp` | `:59`, `:64` | `Y`: `Done` in the head, `_` at `fill/1` | R1 | Q `mad_w_clean_test`, `mad_w_probe_test` 2 |
| `test/fixtures/outside_hierarchy/m.glp` | `:5` | still rejected, as the test intends, now worded "is not parametrically well-typed and has no well-typing"; the harness greps "no standalone well-typing" | R7 | S10 1 |

`roundtrip_isolate_test` shows only "both initialized: false"; the load error is not surfaced.

## Distinct root causes, with counts

1. R1, 3(b) head/body type: 299 (GFWC 109, GSG 116, Currencies 41, IGLP fixtures 22, CSSN 8, GLP-Spec 3).
2. R3, SRSW pairing on linked programs: 172 (Currencies 166, GSG 4, CSSN 2).
3. R5, instantiation coverage in `cssn`: 81 (CSSN).
4. R6, checker fault at imported parameterised calls: 22 (IGLP; GSG's `social/spm` behind it).
5. R4, several reads of a non-constant-type reader: 9 (GSG `budget`); latent behind R3 in `bonds/escrow.glp` and in `cssn`.
6. R2, guard meet empty: 2 (GLP-Spec book).
7. R9, negated guard narrowed as positive: 2 (IGLP).
8. R7, stale expected wording: 1 (IGLP).

Total 588.  By owner: Currencies 207, GSG 129, GFWC 109, CSSN 91, IGLP 47, GLP-Spec 5.

## Suspected checker and linker faults

1. **R6, 22 failures: a call to an imported parameterised declaration is not instantiated.**  `_checkRemoteGoal` (`glp_runtime/lib/analysis/type_checker/well_typed_clause.dart`, from line 998) checks `M # p(...)` against `env.procedures['M#p/n']`, which for a parameterised declaration is the wildcard-instantiated copy built in `param_expansion.dart` from line 133.  The body occurrence therefore gets `_` where the parameter stands, and 3(b) now compares it with the head's `$abstract_Y`.  TGLP `modules.tex`, "Cross-module type checking" (3c19486): "Where the imported declaration names type parameters, as an exported one may, the call instantiates them as a local call does (\cref{def:instantiation}): a parameter the importing module holds open stays open across the module boundary and is fixed at the call".  IGLP's own positive fixture `param_import_linked`, written to that sentence, fails at its forwarding clause.

2. **R9, 2 failures: a negated guard is narrowed as if it held.**  `well_typed_clause.dart`, lines 399-420, takes the meet of the occurrence with the guard's declared type for `~module(X?)` as for `module(X?)`, so a negated test on `Integer` that always succeeds is refused, and a negated test on a union would narrow the occurrence to the case the clause excludes.  TGLP `typed-glp.tex`, "Type checking of guards", covers "a guard atom that tests the type of a head occurrence" and is silent on negation; the checker's own comment on `GuardMeetError` ("An empty meet is a guard that can never succeed") is false for a negated guard.

3. **No count: the abstract route is a commitment.**  `certifyParametricProcedures` (`type_checker.dart`, "Decision 1") rejects a non-inspecting parameterised procedure whose abstract instance fails, whatever its instantiations.  TGLP `parameterized-types.tex` defines well-typing per instantiation (Section "Programs and Modules") and makes parametric well-typing sufficient ("checked once and certified for every instantiation"), not necessary.  With 3(b) now checked this rule bites more often (`typed_social_agent.glp:122`, `FIn` at `merge/3`), but it is not the first diagnostic of any failing load.

4. **No count: `program_linker_test`'s End-to-end tests compile without the scope.**  They call `compileProgram` with no `typeEnv` (`glp_runtime/test/compiler/program_linker_test.dart:413, 429`), so the SRSW pass cannot see constant types and reports reads such as `ParentId?`, declared `Constant?` at `child_agent.glp:99`, as violations.  Their first diagnostics (`BNetIn` has no writer) are CSSN's and genuine.

5. **No count: a type-identity failure is printed as a warning on the load path.**  `glp_engine.dart:1149` prints `[TYPE WARNING] ... type-identity tables not built: ... undefined type "Response" in the declaration of typed_social_agent:inject_msg/5` for `agent_roundtrip`, where `Response` is defined in `agent_roundtrip/self.glp:28`.  Two things are wrong: the table builder resolves the declaration outside the module's scope, and the Coordination rule of 2026-09-18 says no diagnostic on a load path is a warning.

6. **Not a checker fault, but a question for GLP.**  GLP-Spec `appendix-guards.tex:22` declares `procedure list(_?).`, so `list(L?)` narrows nothing under "Type checking of guards", and `univ_body.glp`'s `list(L?) | T =.. L?` cannot be written without declaring `L` a stream.

7. **Not a checker fault: `intro_await_peer`'s refusal is misworded.**  It says "no call in the program instantiates it" where three calls exist and none yields an instantiation; naming the call and the uncovered alternative, as `await_friend_channel`'s refusal does, would say what is wrong.
