# Where the time went, 2026-10-24 (Code #15, at Udi's request)

Measured from the day's run logs in /Users/udi/Grassroots/tmp/code15-*; to be acted on after the WWW submissions.

1. Contention, not work.  Main's fast tier took 156 s on 2026-10-14 when run alone; today it took 70 minutes (15:28 to 16:38 UTC), run beside the four CSSN simulation runs and three subagents' runs on a Mac with 8 cores at a load of 19.

2. The simulator waits for the Mac to empty.  A simulator run is exclusive, so it waits until every running test ends: 15 minutes at 18:16 to 18:31 UTC and 14 minutes at 18:37 to 18:51 UTC, before a run of 3 to 16 minutes.

3. Every screen replays its whole play.  sim_screens.sh runs the app's scenario from the start in the GLP engine for each set of shots: GC's ten screens took 16 minutes, CSSN's six 3.5 minutes, one Flutter scenario test 6 minutes.

4. Rework from changing inputs.  The compiler was changed by three branches at once, each for its own app, then merged (14:45 UTC).  Contracts changed through the afternoon (GAI 14:39, 17:43, 18:11 UTC; CSSN 17:29, 17:55 UTC; vGLP's meeting rule given at 16:44 and withdrawn at 16:50 UTC), and each change meant re-printing the platforms, re-running the plays and re-taking the screens.

5. Restarts.  Subagents were stopped and respawned four times (two Code sessions on one worktree at 12:06 UTC; the single-compiler branch at 14:45 UTC; Udi's stop at 14:44 UTC; the withdrawn meeting rule at 16:50 UTC), each new subagent spending about ten minutes re-reading the papers and the work in progress.

6. The simulation itself.  With 144 agents the GLP engine runs 8 simulated seconds per second (one simulated week about 21 hours); each agent's view is written whole into the log on every change of state, thousands of characters a line, and each meeting is made twice.

What would cut it: one compiler branch from the start of a day's work; the simulator runs scheduled when no tests run, or screens taken without replaying the play; simulations never beside tests; the engine's speed on the simulation, GLP's to measure.
