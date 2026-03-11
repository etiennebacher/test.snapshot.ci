CI fails when using latest `testthat` (3.3.2) because it says that it's missing a snapshot:

```
Running the tests in ‘tests/testthat.R’ failed.
Last 13 lines of output:
  Saving _problems/test-print-2.R
  [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1 ]

  ══ Failed tests ════════════════════════════════════════════════════════════════
  ── Failure ('test-print.R:2:3'): print ─────────────────────────────────────────
  Adding new snapshot:
  Code
    1 + 1
  Output
    [1] 2

  [ FAIL 1 | WARN 0 | SKIP 0 | PASS 1 ]
  Error:
  ! Test failures.
  Execution halted
```

But the snapshot does exist: https://github.com/etiennebacher/test.snapshot.ci/blob/main/tests/testthat/_snaps/print.md

This doesn't fail on `testthat` < 3.3.0. To test that, uncomment the couple of lines in `.github/workflows/R-CMD-check.yml` and specify the version you want in the URL.
