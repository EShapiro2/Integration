# GLP branch and remote record, 2026-09-16

Taken by Integration #1 Code at GLP `7dde3845` before the step 4 deletions of the reorganisation series.  Every ref below is recoverable by its SHA.

**The deletions were carried out on 2026-09-16 (Udi).**  18 local branches deleted; 85 remote refs deleted --- 84 `origin/claude/*` and `origin/cart`.  The record below lists 86 because `origin/claude/revise-paper-Az0EC` was a stale remote-tracking ref that the remote no longer had; `origin/overleaf-2025-12-01-1312` was stale in the same way and was pruned rather than deleted, which is why it is not in the list below and is gone all the same.  `origin` then held 18 heads: `main`, the five worktree branches, Ohad's three, and `feat/add_android_scaffolding`, `map_impl`, `pointer-architecture`, `shared`, `single-id-migration`, `subtyping`, `unfriend-main-update`, `vm-claude-integration`, `vm-v216-core`, which the task kept.  The `art-of-glp` remote was removed and both worktrees under `/Grassroots/tmp/` were removed.

## Local branches deleted, all but `main` (18)

```
claude/error-handling-fixes | a72e2189bc1383f20be745f4c87c58ddb17d28fe | 2026-04-09 | Add error handling: rv_agent rejected verify, fmrv unknown-peer via AddrResult
claude/fix-param-proc-checking | 910faf19be11bace58048f316f7734efc76a693d | 2026-03-07 | feat(types): implement type checking for parameterized proc declarations
claude/moded-pathelement-QDisg | 549ca9720876bfc6c1369f4e35acfba93bff6a38 | 2025-12-25 | Add hypothesis tests for double and always_true
claude/moded-typed-helper-JKt4P | 4f6789de406b6c010b47e0d0a5d5ddf8a09b7dbf | 2025-12-28 | Spec fix: broadcast example now SRSW-compliant with ground guard
claude/module-phase1 | 247fe563d2a27197f9e10b9cd1d8dc0036fb4ec8 | 2026-03-03 | CSSG runs through GLP dispatch chain - all 7 plays pass
claude/multiagent-design-implementation-016z21orseqbZv8EisT8f1RZ | ac1db209790875f138c2c74014b5da21fb692485 | 2025-12-16 | Add chapters 23 (cryptocurrencies) and 24 (consensus)
claude/restore-peer-address | 99833f3b1459856faa2019d111a02fff53c382d1 | 2026-04-09 | Remove AddrA from reconnect; RV agent reads address via peer_address
claude/rv-agent-fmrv | acc79a1ec95ce1fda3c6701e97183a77ba6b64af | 2026-04-09 | Add rv_agent (new reconnect msg format) and friend-mediated rendezvous
claude/rv-client | ba035c6968589298ab24e630b2a66703855d65a2 | 2026-04-09 | Add rv_client: make_reconnect, make_available, handle_reply + integration tests
claude/signaling-server-fix | 9a79ecee617f6531c989f85666e23f009328c931 | 2026-04-09 | Add signaling server with reply-variable chain and test suite
claude/upgrading-arithmetic-01FVyZTCRyp2Guj1EcGtnr8u | ad6cf17fc5ffaa5e88c92b90c0becb7842521aed | 2025-11-21 | Add complete := system predicate implementation and body kernels spec
heap-address-refactor | 7d63490773bbe83c7d130c40a3f8d1afcb60e72e | 2026-01-19 | Add handover: heap refactor implications for irmaGLP
pointer-architecture | c82eff6d4c092d524419f8a6ad9587b543fe479e | 2026-01-20 | Phase 5 partial: pointer architecture migration - body_kernels, module_runtime, codegen updated
shared | ad6cf17fc5ffaa5e88c92b90c0becb7842521aed | 2025-11-21 | Add complete := system predicate implementation and body kernels spec
single-id-migration | c7929648921e3b4050ea900f5920f19a9390c3ec | 2025-11-11 | docs: Complete single-ID migration with test failure analysis
subtyping | 4e4d165260ee6f7a56d523fed573c98e95a2d79f | 2026-02-21 | Tighten agent output types: OutputContent/OutputMsg/OutputStream replace generic Stream
vm-claude-integration | 0af4d64d825a320911747a10690c395758f05cf3 | 2025-11-11 | fix: Parent context tracking and heap consistency bugs
vm-v216-core | ffb85927a845b3e458fdaedc66aff740089d7e73 | 2025-10-19 | v2.16 VM: minimal interpreter + unit tests (unit goals/clauses, σ̂w commit, suspend after scan)
```

## Remote refs recorded (86; 85 deleted, one already gone from the remote)

```
origin/cart | 0c59966e9d428f371cc740c53b68ef6b4f3f485b | 2026-03-01 | Update map spec for O(1) in-place mutation + add user guide
origin/claude/add-flv1-struct-rUxc4 | e3c14f3259d9aa735335dc661025a87f578c1c22 | 2026-03-26 | Add GSN agent FLv1/FoFMap test plan (10 steps)
origin/claude/add-observe-glp-01GsFYgKvCDSMKD5h9znpvWr | 0f624d78b422252160fe656e0406434c8c323d5b | 2025-12-01 | Fix two_actors.glp - simplify stream construction pattern
origin/claude/add-unfriendship-feature-kBZcI | 9cf4acbbaa48ede61848a8cc2214e70b00747fd4 | 2026-02-18 | Add unfriendship protocol discussion document
origin/claude/agent-friend-request-maps-HEmnr | becb1e3c651483ff3c6a91e2e51a9840c009ed00 | 2026-03-07 | Add plan: map-based friend lookup for social graph agent
origin/claude/aofglp-programmer-01K4pu82Xq82DyAEAHFDGTRy | 929bdfccf4bb8d51665e0975642224d2ec60f8e1 | 2025-12-10 | Add demo_response_stream.glp - test for response_stream/merge pattern
origin/claude/concatenate-video-audio-017hhbVuEq28tgFQiTLf7jJN | 26c2f466b2930fa46cf0deacf6f4c9809e83af9d | 2025-11-28 | fix: Complete =.. bug fixes - parser, tuple_to_list, display formatting
origin/claude/continue-declaration-ordering-2maec | 40dccbca9595b092e45d6f3453eaa57c51fb4865 | 2026-01-26 | Add play_alice_bob_charlie.glp with messaging and friend-mediated introduction
origin/claude/create-new-document-018osw4DnwQD7Pjq9jx6Me1H | 1f5e0455f78d25b033483216a47bea9fec7cdccd | 2025-11-27 | Implement Phase 1: Core models and constants for grassroots_ble
origin/claude/dart-map-glp-syscall-zYxPj | 0c59966e9d428f371cc740c53b68ef6b4f3f485b | 2026-03-01 | Update map spec for O(1) in-place mutation + add user guide
origin/claude/debug-glp-dart-016hoWmZ6WYZMCDhkqiNouqD | a28dcf83e5c7c407338c188b2984ce779610a531 | 2025-12-07 | Merge claude/debug-glp-dart-016hoWmZ6WYZMCDhkqiNouqD into main
origin/claude/debug-glp-dart-01ARaKinxVpacuhDZQr1qthb | 85171fdaf1706d90a2c27167b1947127d969ce2e | 2025-12-12 | feat: implement unknown/1 guard with proper dereferencing
origin/claude/debug-type-system-uCatP | 2baf4039de402587763de629ef3bf032f5035cdf | 2026-01-10 | fix(type-checker): Improve wildcard checks and fix test expectations
origin/claude/debug-typechecker-CJ4Hf | ab33ea53fbba8abdbf97a0cdc86477c8c3042c30 | 2026-01-10 | fix(type-parser): Return PrimitiveModeAlt for _ and _? in procedure declarations
origin/claude/delay-timeout-mechanisms-01MCvkPcXwvenqTRHvNun4P1 | 9a95e8fce886de6bb40c45034e9993d078979043 | 2025-12-02 | test: Add monitor tests for value pattern
origin/claude/discuss-session-planning-016vnvGARsuP1gHSQUSn5bHy | 10aa0a086b704859a88732be69777ef04b8ebdb7 | 2025-11-21 | chore: Setup Linux environment for testing
origin/claude/error-handling-fixes | a72e2189bc1383f20be745f4c87c58ddb17d28fe | 2026-04-09 | Add error handling: rv_agent rejected verify, fmrv unknown-peer via AddrResult
origin/claude/find-social-graph-glp-ql52o | 1baa7378ae2b28f00485b2b0f756034f3a13929a | 2026-02-11 | Rewrite social_graph_play.glp - clean Stage 7 version without wait/report
origin/claude/find-typed-social-graph-cFZ3l | fc79c7e943183e3bf6293e83278f018b1e84acca | 2026-02-21 | Remove Done variable from unfriend protocol — both sides clean up independently
origin/claude/fix-assignment-operator-01VqHbLoe4eewSSinYaKWzxP | dd131c291b25eb51300c86bc0fe0b2782e7f5d7c | 2025-12-02 | docs: update CLAUDE.md, remove obsolete refactoring references
origin/claude/fix-param-proc-checking | 910faf19be11bace58048f316f7734efc76a693d | 2026-03-07 | feat(types): implement type checking for parameterized proc declarations
origin/claude/fix-parser-tvHj3 | 591cf5a923c5c514a04561cab9a7db117d9fee5c | 2026-01-12 | Fix parser string literal recognition and type checker coverage
origin/claude/fix-stream-test-output-4Xlvr | 52666b95d62488d49144efc796c81c346e5e952c | 2026-01-20 | docs(handover): add simple imported reader test session summary
origin/claude/fix-type-system-AaVut | 664a79622713c0d39b8b1ac30dccdd8eed0b16cd | 2026-01-09 | WIP: Investigate embedded mode checking for DiffList types
origin/claude/flutter-project-variant-OLna0 | 33f8fe06046f9609bdcd497d8e3e008e9e43c80c | 2026-02-17 | Add PROJECT_HOW-TO-RUN.md and remove project section from HOW-TO-RUN.md
origin/claude/flutter-project-variant-X9xuN | e894faf6b2ef95fb7395e54d97db5d242c3e976a | 2026-02-15 | Sync project files with social_graph source: add send/receive, input filter
origin/claude/follow-claude-md-01QGSPqxESevkJqKigHd1wbJ | 5f301974c1141dd285d0ca30b30bd029fa838fb1 | 2025-12-06 | Update merge_layer_test.glp with ground guard version (testing nested list fix)
origin/claude/follow-guidelines-016jBz2fEYNU1smnjrii7vdK | 88db20847a0d49edf7755ec50b7f89c37b87feb7 | 2025-11-28 | fix: Update Dart path in run_repl_tests.sh to /tmp/dart-sdk
origin/claude/general-discussion-0116RgvEyJvdEcCGF9JTgFRL | 01637e6cf7c2342c645e6185a39c56e08f370414 | 2025-11-25 | fix: Enable PutStructure in guard phase for mod operator
origin/claude/general-session-011HS9n574JAiMzTA783iB95 | ca3f998f0608ef635b6c83f9e4b1c8ad7d23bd63 | 2025-11-25 | docs: Add binary bytecode implementation plan
origin/claude/glp-aofglp-book-0129Di8RL9eXgZmwU7uFcaSM | 4f3a3bdee38a2482cc1b4a0822589a7bd75f3f8f | 2025-12-12 | Fix module RPC: add -import declaration to main_module examples
origin/claude/glp-maintenance-8RlSY | 6f40e97697773c17982a4a02e503b9caaf70ec4a | 2026-01-12 | Fix parser: preserve string quotes, check _? coverage
origin/claude/glp-maintenance-prep-01MVG8kkfR2ZFoboCfdZWo84 | e00acca1ef7f121030f14e530869c81131c68169 | 2025-12-12 | Auto-generate reduce/2 by default, add -stdlib declaration
origin/claude/glp-maintenance-prep-EEFzb | 9d4ff9541911c693c2e6be61db5bff056958eb34 | 2025-12-14 | Test fact-based create_equator (WxW bug at commit time)
origin/claude/glp-programming-aofglp-DrR0h | 7c466fbc7fe1276ef18f69c78e9963f8d946018b | 2025-12-17 | Update CLAUDE.md and README.md with new file structure
origin/claude/handle-long-prompt-error-01R3vgPPU2LCupWEFD3uEBYR | 8aeba2e8b9244bfd3fc69f5e0fb5eda2eb57cc9c | 2025-11-21 | docs: Clarify vector operations are missing in GLP
origin/claude/help-partial-evaluation-015fmDdHXv6LrwyjGC4jFC4k | 30770bcb2d9e5bfd7a58584d70be2040a91bbe59 | 2025-12-16 | feat: Fix meta-interpreters and add time/1 kernel alias
origin/claude/help-partial-evaluation-merged-015fmDdHXv6LrwyjGC4jFC4k | 44fa973654ab4d3e43ae8ca3391929cd236be396 | 2025-12-13 | Fix all 9 meta-interpreter files to compile correctly
origin/claude/implement-feature-01VmYBRiMoxExUgSX4KLeUTA | 986416cfd8e239d0c6f93ee6725cecb25cea14f6 | 2025-11-21 | docs: Simplify FCP fetch instruction
origin/claude/improve-glp-repl-display-01AGKaDJ7WG8CCYEr2Sa9tdw | f7be5a90a8fa3bfe3cc26ba7843888919c5a6a08 | 2025-12-06 | Add test for structs in list
origin/claude/initial-setup-01Gf7yRocCCnUFPUN4zK4Fjh | d4f455ee2076c7ed7e1f39461c229a549c926c99 | 2025-11-25 | Merge branch 'main' of http://127.0.0.1:33743/git/EShapiro2/GLP into claude/initial-setup-01Gf7yRocCCnUFPUN4zK4Fjh
origin/claude/investigate-univ-failure-01TTr4vw48jJGjpx9Rn4BEgE | f36f1d6c62c90804a476354ed3ef8c99ac958cbf | 2025-12-02 | fix: Correct SRSW modes in assign.glp clauses
origin/claude/maglp-dart-isolate-retest-YOrJX | 2de63b0bd101aeb7b25c2ecf84e39e9d643d3b6c | 2026-01-28 | Add cold-call and friend-intro boot tests for maGLP isolates
origin/claude/moded-pathelement-QDisg | c9e60dccc75935d5639ba4e462df4d20c6cdcaee | 2025-12-25 | Handle zero-arity structs in NFA compiler
origin/claude/moded-type-helper-7svFn | d1fd42643a87ee9a45c5bf5a4ffa6cab48ed9d24 | 2026-01-08 | Add GitHub directory zip download instructions to CLAUDE.md
origin/claude/moded-typed-helper-JKt4P | cee2689c0cf1c4e179759e059b29df9fc1c20310 | 2026-01-07 | Add docs update zip only
origin/claude/moded-types-helper-0LCPw | a8d6d501232f7c1c97c352c7a15c5f63d3ff1af0 | 2025-12-22 | Add session summary for continued moded types work
origin/claude/moded-types-helper-XDoy1 | 1c2fbe9128c488fd7d8fd33fe51c9b9276372840 | 2025-12-23 | Merge main into claude/moded-types-helper-XDoy1
origin/claude/module-phase1 | 247fe563d2a27197f9e10b9cd1d8dc0036fb4ec8 | 2026-03-03 | CSSG runs through GLP dispatch chain - all 7 plays pass
origin/claude/morning-checkin-01UsULHFXGk5gyvS4PZaiL4C | e1bd7e31f4c79662d98a3957af23091d669a13f7 | 2025-11-25 | test: Add test_mod.glp for debugging mod in guards
origin/claude/mt-types-01MoatMPg26ZQQqxQAF2eDq9 | c3182e053c268c175e9f4ef943871edb411d212b | 2025-12-18 | docs: Update mt-pmt-complete.md with accurate status
origin/claude/multiagent-design-implementation-016z21orseqbZv8EisT8f1RZ | b5a65b7fbcac387bd02306b8bc34f7feb303c32c | 2025-12-17 | Merge branch 'main' of http://127.0.0.1:51102/git/EShapiro2/GLP into claude/multiagent-design-implementation-016z21orseqbZv8EisT8f1RZ
origin/claude/observe-cooperative-stream-01V1f7cvTtNwYQSBiV7wJMbX | 50f769a0676d585e28085931d84f16b3ec8a9e54 | 2025-12-02 | Merge remote-tracking branch 'origin/main' into claude/observe-cooperative-stream-01V1f7cvTtNwYQSBiV7wJMbX
origin/claude/pe-builtin-unify-015fmDdHXv6LrwyjGC4jFC4k | 5aff460dc40710d4b92a8112bc52e1049513091a | 2025-12-16 | feat: Add =/2 as built-in defined guard for compile-time unification
origin/claude/pmt1-01MoatMPg26ZQQqxQAF2eDq9 | a178d797ba48d69874e9544938ab8ffd8697cf2c | 2025-12-13 | feat(pmt): Add validation script and gates.glp test files
origin/claude/pointer-architecture-migration-zFED8 | a3067acd20d5c985f258879eb0e4ed85ff4710d8 | 2026-01-20 | docs(handover): add bidirectional stream test debugging handover
origin/claude/pull-latest-changes-jY0r5 | 64bc4445b978f3ca96e14b97a23c0885946ba986 | 2026-02-22 | Merge branch 'main' of http://127.0.0.1:60811/git/EShapiro2/GLP into claude/pull-latest-changes-jY0r5
origin/claude/read-claude-md-01CXW7LpNMuzowec3rT72qk2 | 9a46f62cfebb5f6eae156230b9dba1f29fb8cb46 | 2025-12-14 | WIP: Attempt dispatch/1 approach for FCP-style direct calls
origin/claude/read-claude-md-01MoatMPg26ZQQqxQAF2eDq9 | e00acca1ef7f121030f14e530869c81131c68169 | 2025-12-12 | Auto-generate reduce/2 by default, add -stdlib declaration
origin/claude/refactor-implementation-aGDN6 | ac850e13612de61e48a7fdbb6cf994f018a58209 | 2026-01-26 | Revert play_alice_bob_charlie_irma.glp to original state with generic Stream types
origin/claude/restore-peer-address | 99833f3b1459856faa2019d111a02fff53c382d1 | 2026-04-09 | Remove AddrA from reconnect; RV agent reads address via peer_address
origin/claude/resume-session-DJ5Vu | 85169b1804641c356b347a49ccc22efb68078f72 | 2026-02-17 | Revert _isValidUserCommand — let GLP mediator handle command validation
origin/claude/review-aofglp-repo-01MNDf4ZbkB3KgZSS6neQ7YT | 5cd7728f9a2b0946f9de284c322ee6e144bc27a0 | 2025-12-10 | Merge branch 'main' of http://127.0.0.1:48709/git/EShapiro2/GLP into claude/review-aofglp-repo-01MNDf4ZbkB3KgZSS6neQ7YT
origin/claude/review-claude-md-IjPvJ | ee65b12de4d873323b79af9ac4286e75748d8fcd | 2026-01-11 | Prohibit type aliases per spec type-environment.md v0.5
origin/claude/review-docs-maglp-z74LT | 41ca2b10e05b418fe7f806cf3cc69b13bcd48be5 | 2026-01-28 | feat(ui): Add ui_actor.glp for human-in-the-loop interaction
origin/claude/review-handover-docs-DssNA | f832312e4df03f30d80a1657766e81446bfbdec6 | 2026-01-31 | Add madGLP cold-call isolate test
origin/claude/review-partial-evaluator-docs-OVLXg | 8cbd2779cb348093e5f58bc67c8667c0863a9608 | 2026-01-28 | Merge main: align PE variable naming with PE_
origin/claude/review-social-graph-examples-5Byd9 | 3446122b47945a4d7cbd232bb053ba7f7944ebf1 | 2026-01-28 | Refactor alice_bob_charlie_direct_message.glp with generic agent logic
origin/claude/revise-paper-Az0EC | db6bd473c95e582523000b0ca475554a51bdbe84 | 2026-01-10 | Fix LaTeX errors: replace \verb with \texttt in restatable environments
origin/claude/revise-type-system-CP3tI | 93212ea4f1dc81994efb7217f546c7ccff6b5e4b | 2026-01-24 | Enforce new declaration ordering rules per revised spec
origin/claude/revise-type-system-cfIgs | fc0ea4bcd086a8cb4d7a4c1995f16ec0cb284599 | 2026-01-23 | refactor: rename complement to dual per paper Definition 5.1
origin/claude/rv-agent-fmrv | acc79a1ec95ce1fda3c6701e97183a77ba6b64af | 2026-04-09 | Add rv_agent (new reconnect msg format) and friend-mediated rendezvous
origin/claude/rv-client | ba035c6968589298ab24e630b2a66703855d65a2 | 2026-04-09 | Add rv_client: make_reconnect, make_available, handle_reply + integration tests
origin/claude/setup-and-prepare-xAzv3 | dda7e111449af9a16eb773f6ff0c3474d8075cf3 | 2026-01-31 | feat(heap): implement FCP bidirectional pointers refactoring
origin/claude/setup-bidirectional-stream-WzM2n | eb0e4336a0525722179015cd0b4aca7eddc36eaf | 2026-01-20 | chore: add test_merge.dart bytecode dump utility
origin/claude/setup-environment-Bv3HO | 48510fde36b26aa5278e2ee049d03a8c7b361675 | 2025-12-23 | Merge branch 'main' of http://127.0.0.1:18548/git/EShapiro2/GLP into claude/setup-environment-Bv3HO
origin/claude/setup-environment-b6Epy | 2e58d5538576431347ea7e2349aa4b9ac26e7e27 | 2025-12-18 | Fix SRSW violations - batch 3 (3 network/distribution files)
origin/claude/setup-environment-owNRm | 26f99ce9db246b197cc68c5444ab710791880db8 | 2025-12-20 | Merge claude/setup-from-readme-NZxzQ into main
origin/claude/setup-from-readme-NZxzQ | 00fe286ee2d19e9758be3e2f6bcd221a004fc835 | 2025-12-20 | Phase 2: Mode Checker Core (WIP - tests need fixes)
origin/claude/setup-pmt-helper-JOGSu | 9179cd9db351753f4b872ae16b9ec64287813f08 | 2025-12-21 | Partial fixes for agent_full.glp and stream_security.glp
origin/claude/signaling-server-fix | 9a79ecee617f6531c989f85666e23f009328c931 | 2026-04-09 | Add signaling server with reply-variable chain and test suite
origin/claude/start-session-01QiVmEytygaAtiRQ7fUdhzN | 1c1a0432f64a10ede40b11f65589a2ca15bfc8e3 | 2025-11-25 | docs: Add Multi-Claude Git Collaboration Protocol to CLAUDE.md
origin/claude/start-session-01UL5FfuFeHfvvvpb1vHT13z | df36cc541bcf7299d10d83c9a12b0c78089db914 | 2025-11-25 | Add separate module spec and implementation plan documents
origin/claude/test-social-graph-protocol-QuTPg | 54ab865fd47a0a56be4bbf64fc50eb9486f1c248 | 2026-02-12 | Add generic offer handling, drain_channel, and modular bob_actor
origin/claude/update-flutter-macos-q0BlJ | 6e7aa0687749e6213a98b3b12501f840db921a5a | 2026-02-14 | Add project_ui_mediator.glp and project_ui_boot.glp copies
origin/claude/upgrading-arithmetic-01FVyZTCRyp2Guj1EcGtnr8u | d388d510a31766b09b1f0bedad8147e085a3061f | 2025-11-21 | Update specifications to reference comprehensive arithmetic system
```

## Remote removed

```
art-of-glp  git@github.com:EShapiro2/Art-of-GLP-2025.git
```

## Worktrees removed

`/Users/udi/Grassroots/tmp/glp-bundle` at `df1d8825` and `/Users/udi/Grassroots/tmp/glp-gate` at `0c15a0f9`.  Both carry uncommitted files; every one of them is byte-identical to `main` or older than it, and `df1d8825` is an ancestor of `main`, so neither holds anything unique.  Their diffs are at `/Users/udi/Grassroots/tmp/glp-{gate,bundle}-uncommitted.diff`.
