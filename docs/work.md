# Open code work

One line per item: origin (inbox and `Date`), owner, branch, state (requested, forwarded, in progress, merged, rejected), waiting on.  An item leaves when merged or rejected.  Kept by Integration Cowork.

## Worktrees

Created 2026-09-16, one per project with an active Code session; each branch is pushed and tracks `origin/<project>`.  A project not listed has none and asks for one.  The first five were cut at GLP `7dde3845`; GFWC at `c52f6545`, after the harness fix and the Currencies merge (GFWC #1 Cowork, `Integration_inbox.md` 2026-09-16 21:05 UTC).  Legal at `0c9635ef` on 2026-09-18, for its `programs/jurix` task (Legal Cowork, `Integration_inbox.md` 2026-09-18 11:27 UTC); it had none before, having had no code session when the others were cut.  GLP-Spec on 2026-09-18 by Integration #2 Code, for its root `self.glp` task.  🔴 GLP-SPEC AND IGLP ARE ONE PROJECT, GLP (Udi, 2026-09-20; Coordination #2 Cowork, 10:55 and 10:59 UTC): the Project column below reads GLP where it read IGLP or GLP-Spec, a code task arrives `To: Integration Code, for GLP`, the mail is `GLP_inbox.md`, and there is no longer a request between the two to forward.  NOTHING IS CONSOLIDATED --- the per-task worktrees stand as they are (Coordination's correction of 10:59 UTC), and the tree is Integration's in any case.  `IGLP-manifest`, Integration's branch carrying the sovereign manifest apart from the refusal, was cut 18:06 UTC, merged at `f5aa77f9` and retired.  `IGLP-harness` and `IGLP-display`, off `main` at `fd0dd7e6`, each carry one IGLP task that must not sit on `IGLP`, which holds the refusal (Code, 2026-09-18).

| Project | Worktree | Branch |
|---|---|---|
| GLP (the load path) | `/Users/udi/Grassroots/GLP-worktrees/IGLP` | `IGLP` |
| GSG | `/Users/udi/Grassroots/GLP-worktrees/GSG` | `GSG` |
| Currencies | `/Users/udi/Grassroots/GLP-worktrees/Currencies` | `Currencies` |
| vGLP | `/Users/udi/Grassroots/GLP-worktrees/vGLP` | `vGLP` |
| GLP-Networking-API | `/Users/udi/Grassroots/GLP-worktrees/GLP-Networking-API` | `GLP-Networking-API` |
| GFWC | `/Users/udi/Grassroots/GLP-worktrees/GFWC` | `GFWC` |
| Legal | `/Users/udi/Grassroots/GLP-worktrees/Legal` | `Legal` |
| GLP (the root `self.glp`) | `/Users/udi/Grassroots/GLP-worktrees/GLP-Spec` | `GLP-Spec` |
| GLP (the harness path) | `/Users/udi/Grassroots/GLP-worktrees/IGLP-harness` | `IGLP-harness` |
| GLP (compounds as scalars) | `/Users/udi/Grassroots/GLP-worktrees/IGLP-display` | `IGLP-display` |
| Currencies (the twelve `mad_boot` repairs) | `/Users/udi/Grassroots/GLP-worktrees/Currencies-bonds-boot` | `Currencies-bonds-boot` |
| GLP (the two checker faults) | `/Users/udi/Grassroots/GLP-worktrees/IGLP-checker` | `IGLP-checker` |
| GLP (`main_sovereign.dart`'s boot person) | `/Users/udi/Grassroots/GLP-worktrees/IGLP-sovereign-boot` | `IGLP-sovereign-boot` |
| GLP (`signature/2`, the kernel and the probe) | `/Users/udi/Grassroots/GLP-worktrees/IGLP-signature` | `IGLP-signature` |
| GLP (the `Key` mirror, `load_test`) | `/Users/udi/Grassroots/GLP-worktrees/IGLP-key` | `IGLP-key` |

Since 2026-09-18 18:44 UTC (Udi) independent tasks run concurrently, one subagent per worktree, and ready branches merge in batches with one suite run per batch; the suite is still one at a time on `main`.  `Currencies-bonds-boot` was cut off `main` because the `Currencies` worktree was taken and the twelve merge with the refusal.

The two worktrees of an earlier session under `/Users/udi/Grassroots/tmp/` --- `glp-bundle` and `glp-gate` --- were removed on 2026-09-16, both superseded.

## Items

Open only; a merged or rejected item leaves the list, git holding it.  Brought current 2026-09-19 08:30 UTC by Integration #2 Cowork from Integration #2 Code's reports of 2026-09-18 19:16 UTC to 2026-09-19; the mail is authoritative where the two differ.

### The tree, 2026-09-20 13:24 UTC

`main` is `10893053`, local and origin the same: stage B of `signature/2` is in --- the root types and wrapper, the kernel, GSG's five converted sites --- with the fixture line at `0e87221d`, and the clone is no longer ahead of origin.  The last recorded suite count is 2071 green at `94d9980e`, `KNOWN_RED` empty; the stage-B merge's own count is Integration #3 Code's to record.  Worktrees `IGLP-harness`, `IGLP-display`, `IGLP-sovereign-boot`, `IGLP-checker`, `IGLP-key`, `IGLP-signature`, `GLP-Spec`, `GFWC`, `Legal` and `Currencies` are merged and removable.

### The SGC screens, FC 2027 on 24 September

Merged on `origin/main`: the re-emission, GSG's structural copy, both manifests, `sovereign_ui/3` (`2322698b`), `main_sovereign.dart` booting the central bank it expects (`79e88150`, `sovereign_screen_test.dart`: the seven forms stand, Mint 30 and the credit line go through, Diana's script accepts), the stale display declarations out.  What remains for the screens:

- **Two app findings, IGLP's** (Integration #2 Code to IGLP, 2026-09-18, with `79e88150`'s count).  The app's runtime makes one drain of 1000 goals per tap and never loops, and its status cannot tell a capped drain from a quiescent one, so on the app the paper's acts 3 and 4 do not happen after the Swap until the next tap; and the balances view still keys on two-place items, so a sovereign lot yields no row --- the decision IGLP answered 2026-09-18 17:55 UTC was never followed by a task.  Both bear on the 24th.  State: with IGLP Cowork, to task.
- **SGC screens appendix** (Currencies Cowork, `Currencies_inbox.md` 2026-09-15 10:45 UTC).  The eight simulator screens into `/Grassroots/SGC/Figs/`, after the two findings above.  Transcript written; `Figs/` does not exist yet.

### `signature/2` --- merged

- **Stage B** (GLP-Spec's root types `c29905b8` and `signature/2` wrapper `29621df5`; IGLP's `'_signature'/2` kernel `01c25132`; GSG's five sites converted at `0a6cf125` with four forgery plays, Section SG 114/0).  The wrapper deletes `signed/4`, so the three merge only together with GSG's conversion --- Code's rule from the red run: a branch that deletes a predicate merges with its callers' conversion, never ahead of it.  MERGED and pushed, `main` at `10893053`: the fixture line and the volition type it made stale went in at `0e87221d`, `load_test.dart` 13/13.  Leaves the list.  What came out of it and is open: Udi removed `valid_attestation/4` (GLP, 2026-09-20 11:53 UTC), and its one caller, `examples/rendezvous/rv_agent.glp:77`, is GLP-Networking-API's port --- routed to them 13:24 UTC, blocking, and the two merge together.

### One object checked and compiled --- the refusal, held

- **The load path, branch `IGLP` at `d4178797`, pushed, unmerged** (IGLP's task of 2026-09-18 16:16 UTC and its continuation of 18:23 UTC).  Items 0--3 committed: the boot source checked in the engine's scope, the four `programs/tests/` files, SRSW on linked programs from GLP-Spec's alias-clause sentence, and TGLP's rejection of an uninstantiated parameterised procedure.  Stopped rightly at `git merge main`: a conflict in three grassapp test files where the branch removed `strictTypes` lines and the harness fix rewrote the same lines onto `programsDir()`; the resolution is both, and the merge is Integration's.  Items 4 (the dead `[TYPE ERROR] ... continue` block) and 5 (a display declaration naming no clause is a source error) not yet written.  Integration Cowork's recommendation to Udi, 2026-09-19: hold it, conflict and respawn included, until after the 24th; his ruling is pending.
- **What the refusal now catches is most of the tree, not 31 tests.**  Item 3 fires on GSG's `routing/output.glp` and kin through the root's `-expose`, in every program, because the checker's `_inferConcreteDecl` binds a parameter only from a variable argument and every call passes the message as a literal --- Issue 20 of 2026-08-03.  Code's question to IGLP, with its recommendation that a literal instantiates as surely as a variable, else the root's own routing library is uncompilable; it may be GLP-Spec's TGLP reading to confirm.  Whether the list is one checker fault or dozens of program faults across three owners turns on that answer.  Item 2's SRSW list is real and by owner: IGLP's probes and the vGLP compiler's own output (`Med` unread), GSG's `gsg_agent.glp` and `bounded.glp`, CSSN's boot.  State: with IGLP Cowork.
- **The twelve `bonds_v2/mad_boot` boots, branch `Currencies-bonds-boot` at `414acfc5`, pushed** (Currencies' task of 18:28 UTC).  Item 1 done, eleven files one declaration each; item 2 closed on IGLP's ruling that a boot source does not import (`5e968ba`), the three calling the exports unqualified as they do; the isolate test 12/12.  The twelve have never run --- checked against the root scope alone, every actor entry undefined, green on settle alone --- and item 0 of the load path is what makes them run for the first time; the true list is measured on it.  Merges with the refusal.  RULED (Udi, 2026-09-18): CSSN's thirteen go into `KNOWN_RED` at that merge and nobody repairs CSSN's files.
- **A fixture per check, on every load path** (Integration, 2026-09-18).  None of the harness's checks asserts that a program which must be rejected is rejected on the path it is loaded by, and `bonds_v2_isolate_test.dart` awaits settle and asserts nothing, so twelve programs that had never run were green: a test that cannot fail is a check switched off.  One negative fixture per check --- SRSW, types, guards --- as a file, a directory, a linked program and a multi-isolate boot.  Integration's own, after the refusal merges.
- **Four checker findings for IGLP** (Code, 2026-09-18, with the sweep counts): the checker accepts a `Constant?` reader where `Key?` is declared, the unsound direction, admitting a number or a module in an agent's place; and three others in Code's entries.  State: with IGLP Cowork.

### The `Key` sweep --- what the three mirrors left

Stage A merged at `94d9980e`: GSG's fourteen lines (`da443bd8`), IGLP's `agent_roundtrip` (`25a9ea6e`), Currencies' `bonds_v2` vocabularies (`fdc8914b`).  The sweep is by content, not by name (Currencies, 19:08 UTC).  CSSN's eight declarations are left until it wakes (Udi, 2026-09-18).  What stopped, each with its owner:

- **GSG, three sites rejected and left as they were**: `Id`, the agent's own key, read at `Key?` and `Constant?` within one head, because `UserInMsg`'s sender slot and the two `ack(Constant)` handshakes hold an agent and were not in the twelve; recommended to GSG that they follow the same sentence, with the now-false workaround note at `self.glp:120--124` and the six `String`-for-`Key`/`Hash` definitions it explains retired in one step.  State: with GSG Cowork.
- **Currencies, two stops**: `friend_output` waits on GSG's routing taking `Key?`; and the eleven issuer sites of `Coin`, `Bond`, `Lot` and `Warranty` (Udi, 2026-09-18: the issuer follows) cannot be narrowed without a sweep through the helpers, the certified agents' `Id`, `person.glp`, `escrow.glp` and the plays, three emissions moving, which the amendment forbade; recommended back to Currencies as a task naming that scope.  State: with Currencies Cowork.
- **GSG, a fifth refusal-sibling site**: `home.vglp`'s `respond_friend`, the one that is compiled, carries the `display *(no, ...)` line vGLP ruled an error, and is what `superapp_ui.dart` keys on by number; recommended as GSG's next task.  Nothing renumbered in the four-sibling task because `agent.vglp` and `grassapp_agent.vglp` are exhibits and the deployed `.glp` are hand-written.  State: with GSG Cowork.

### The checker--compiler gap --- the load path, written out

- **Items 0--6 are committed and pushed, branch `IGLP` at `69f91a6d`**, `dart test` `+776` with the same 28 pre-existing failures by name (Integration #3 Code, 2026-09-20).  The gap is closed in the checker: `def:instantiation` implemented from the equations, the compiler's own output satisfying SRSW (item 6), the dead warning block and `CompileOptions` gone (item 4), a display declaration naming a guard no clause carries rejected on the load path and from `:emit` alike (item 5, seven tests).  The work found a fault in TGLP and stopped rather than working around it; GLP replaced the sentence with Definition (Instantiation) at `e56c303`.
- **It does not merge, on three things, all GLP's and all in `GLP_inbox.md`**: the subtype case of the instantiation ruling --- a constructed argument carries one alternative of the union a variable carries, while `def:well-typed-clause` 3(a) asks the instantiated head pair be dual; a held end having no SRSW relaxation, which ten link probes hold on purpose and neither `_?` nor `_` replaces; and which theta a checker takes when several are instantiations.
- **Ruled by Integration Cowork, 2026-09-20 13:32 UTC**: Code merges `IGLP` into local `main` and runs the suite once to measure the true red list by owner, not pushing a red `main`; and the four regenerated compiled `.glp` files --- three in Currencies' directories, one in GSG's, 23 lines of `Med` -> `_` --- stay on the branch, a generated artifact following the compiler that makes it, no owner's `.vglp` touched.  Currencies and GSG are told with the merge, not asked first.  What the measurement already shows: coins, bonds and sovereign pass the type check and stop on SRSW violations in Currencies' own sources, `cssn` on five GSG routing declarations, ten link probes on the held end.

### The red list of the merged tree, measured 2026-09-20 13:46 UTC

`IGLP` is merged into the clone's LOCAL `main` at `8f6bcf6a` and NOT pushed; `origin/main` stands green at `10893053`.  The merge stays on the clone while GLP answers (Integration Cowork, 13:52 UTC), and it is re-measured on the same two trees if their answers change what is refused.  The four regenerated compiled files pass the test set for them: all 23 lines are `Med`/`Med1` -> `_` and nothing else.

The suite cannot give the list --- `run_all_tests.sh` dies under its own `set -e` in Section K after 45 failures and reports no total --- so Code loaded every directory with a `self.glp` through the REPL on both trees: baseline 80 load and 21 refused, merged 51 and 55, so 32 newly refused.  Lists in `/Users/udi/Grassroots/tmp/redlist_8f6bcf6a.txt`, `redlist_base_10893053.txt`, `newly_red.txt`.

🔴 **18 of the 32 are held, not routed** (Integration Cowork, 13:52 UTC; the reason corrected 2026-09-23 10:35 UTC and the hold kept).  They are refused wholly or partly for `Reader variable "X?" occurs 2 times without ground guard or constant type`.  It is NOT 8(b): `moded_term.dart:106` has no caller in `lib/`, 8(b) is fixed on `IGLP` at `be466d4c`, and a load of all 107 directories before and after is byte-identical.  What refuses them is `compiler/analyzer.dart:264`'s `_constantTypes` list, applied to the top-level declared type name of a head argument, so a reader twice at `String?` loads and the same at a user-defined constant union refuses --- and TGLP licenses no such relaxation at all, its own being the anonymous variable and a groundness-implying guard.  So the checker has been granting an unlicensed relaxation that thirteen owners' programs are written against; GLP has it, with Code's recommendation that TGLP gain the sentence, thirteen programs being the evidence of what the language was taken to mean.  A defect the checker exposes is the owner's to repair; a defect the checker invents is ours, and tasking p99, jurix and federation to rewrite around ours would be the second dressed as the first.  Nothing of that class moves until GLP rules on 8(b).

Routable and already routed: the uninstantiated-parameter five (`cssn`, `cssn/childsafe`, `social/graph`, `social/graph/core`) are GSG's routing declarations, and GSG was told 13:52 UTC that five programs now stand behind that request; the `bonds_v2` residue (`Target?` at line 73) is inside Currencies' mirror sweep, and they were told the same, with instructions not to touch their other three directories until the 8(b) ruling.  The held ends --- nine no-reader refusals, the link probes among them --- are GLP's own finding and in their inbox.  `tests/param_unchecked` refusing is by design.  Four refusals Code's grep did not classify are to be read before routing.

- **The harness reports nothing on a red tree** (Integration, 2026-09-20).  `run_all_tests.sh` dies under `set -e` in Section K, so a red run yields no total and no list --- the same fault as a test that cannot fail, and it belongs with the negative-fixture item below.  Integration's own, after the gap closes; not started.

### "Declaration parameters" --- implemented, and it refuses every load

- **The rule is in the checker** (GLP's task of 2026-09-23 10:02 UTC, item 3; `IGLP` at `7759165d` and `214a50cd`, pushed): the transitional inference that read an undefined name in an unlisted declaration as a type parameter is deleted, as that code's own comment said to do when the sweep was done.
- 🔴 **The tree is not ready for it.**  Root `programs/self.glp:9--12` exposes GSG's four routing modules into the root scope, so the rule refuses root-scope assembly and with it every program: 108 directories, 62 loaded before, ZERO after, all at `routing/output.glp:12`; after the second commit all 169 diagnostics name GSG's `send_user/3`.
- **Ruled by Integration Cowork, 2026-09-23 11:13 UTC**: the pair is lifted onto `IGLP-declparams` and reverted on `IGLP`, so the load path does not wait on sixteen lines in another owner's files --- the coupling my predecessor broke on 2026-09-18.  `IGLP-declparams` merges with GSG's fix.
- **GSG's sixteen, blocking, re-sent 11:13 UTC**: `routing/output.glp` 12, 19, 26, 34, 42, 50; `befriend.glp` 4, 5, 27, 36, 44, 59, 76; `inject.glp` 11; `intro.glp` 13, 19.  State: with GSG Cowork.
- **The other 142, none blocking** (nothing else is in the root scope), from Code's static scan, `/Users/udi/Grassroots/tmp/iglp_declparams_scan.txt`: GSG 18 more, GLP 95 (`programs/tests/` 65, `programs/book/` 30), P99 24, Currencies 3, CSSN 2.  Routed to GSG, GLP and Currencies 11:13 UTC; P99 and CSSN are dormant and wait.

### The manual restating the specification

- **`GLP/docs/typed-glp-manual.md` Section 9** (GLP's request, 2026-09-23 10:02 UTC; `GLP/docs` is the tree's and Integration's).  Line 574's last sentence forbids `_?` in clause positions with no distinction of polarity, and `clause_validation.dart:34` cites that section by name when it refuses `_?` --- which TGLP `dddf684` now permits at a produced head position.  DONE at `fdd73610` on `IGLP`, pushed (Code, 11:54 UTC): the sentence deleted and one line pointing at TGLP's "Anonymous variables" in its place, the citations in `occurrence.dart` and `type_identity.dart` naming TGLP, `clause_validation.dart` already corrected at `21e74092`; `dart test` `+796 ~6 -28`, the 28 by name.  Section 9 was the only place stating the `_?` refusal.  A manual that restates the specification is how the code came to follow the manual.

- **The manual states one rule the paper now contradicts** (Code, 11:54 UTC): §3.5 at `:347` says a variable typed `Agent ::= Constant.` is refused multi-reader use without a ground guard, while TGLP at `b32934d`, "Readers of ground types", admits a reader whose type admits only ground terms, type identity being structural.  The manual is describing the old implementation.  Left as it stands and put to GLP, whose reading it is; one line changes in whichever place they name.  State: with GLP Cowork.
- **Fifteen more second copies, and the sweep of them** (Code, 11:54 UTC; approved by Integration Cowork 12:06 UTC for AFTER the load path merges).  §2A.2 `:181` (TGLP's "Moded Head" rewritten as steps, the largest), §3.1 `:293`, §3.5 `:347`, §8.1 `:496`, §8.3 `:553`, §8.4 `:556`, §9.1 `:574`, §9.4 `:593` (nearly the paper's closing line verbatim), §16.1 `:905`, §20.1 `:1181`, §20.3 `:1204`; half-repaired: §17.7 `:1012`, §21 `:1210`, §3.4 `:327`, §19.6 `:1121`, §19.7 `:1141`.  One task: every place the manual states a rule the paper owns becomes a pointer, `2A.2` and `9.4` first; what the manual keeps is what the paper does not state.  Integration's own.

### Language and conformance work, 2026-09-20

- **A constructed argument instantiates a type parameter** (Udi, 2026-09-20; TGLP `fbd9040`, superseded by GLP's Definition (Instantiation), 12:55 UTC).  The parameter is not read off one argument: it is whatever makes the caller's clause and the callee's clauses well-typed, so the binding comes from the equations and the term's type stays as a check.  `well_typed_clause.dart`'s `_inferConcreteDecl` is the site.  GLP's task, with Integration Code.
- **The routing declarations name no parameter list** (GLP, `Integration_inbox.md` 2026-09-20 11:38 UTC).  `routing/output.glp` 12, 19, 26, 34, 42, 50, `inject.glp` 11, `befriend.glp` 36, 44, `intro.glp` 13, 19: `M`, `Ent`, `R`, `S`, `C`, `IR` are undefined type names today, which TGLP rejects whatever the instantiation fix does.  GSG's under Appendix B, routed 13:24 UTC.  State: with GSG Cowork.
- **A `Constant?` reader where a `Key?` is declared** (GLP, 2026-09-20 11:57 UTC): conformance, no ruling needed, three negative tests and one positive.  GLP's task, with Integration Code.
- **A message's display takes `label(L)`, its functor the default** (GLP, 2026-09-20 11:56 UTC), conformance with vGLP's specification.  With Integration Code.
- **A procedure declaration takes its question parameters** (Udi, 2026-09-20; vGLP Section 4, their 12:46 and 12:47 UTC).  `procedure p(...) *(X1, ..., Xm).` in nine `.vglp` sources, then re-emitted; it waits on GLP's checker and compiler taking the form.  Routed 13:24 UTC to GSG (four sources) and Currencies (three); `tests/vglp/one_clause/responder.vglp` is GLP's own, and CSSN's two wait until CSSN wakes.  Non-blocking.
- **The coins derivation is level with the code** (vGLP, 2026-09-20 11:12 UTC).  Nothing follows for Integration.

### Findings with owners, none blocking

- GFWC: three readings for yes/no (the relayed motion's epoch, identities as constants under the standard order, two row-existence preconditions), with `767e433d`.
- Legal: a redundancy in the appendix's provenance clause diverging from Section 3.6 on a `sign`-like schema, the printing conventions taken from Section 5.2, CSSN's check needing `:limit` above the REPL's default, with `d5fd3fd5`.
- IGLP and vGLP: under vGLP's default-display sentence a functor is not an argument, so `minted(2)` reads `2` in the panel's list (`432326ec`).
- vGLP: `currency-manifest-derivation.md` still describes the coins swap card as two buttons (Code, 18:15 UTC).
