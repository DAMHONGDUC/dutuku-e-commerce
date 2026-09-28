# CLAUDE.md

| | |
|---|---|
| Project | Tuku Shop: Flutter e-commerce app, Cubit + Clean Architecture, Melos workspace |
| Entry point | `lib/main.dart` |
| Package | `tuku_shop` (imports: `package:tuku_shop/...`) |

## Commands

| Task | Command |
|---|---|
| Setup (after clone / pull) | `fvm dart run melos run setup` |
| Run | `fvm flutter run` |
| Test single file | `fvm flutter test test/features/<feature>/<path>_test.dart` |
| Test all packages | `fvm dart run melos run test` |
| Analyze | `fvm dart run melos run analyze` |
| Format | `fvm dart run melos run format` |
| Codegen (l10n + build_runner) | `fvm dart run melos run gen:all` |

## Rules

- @docs/claude/architecture.md
- @docs/claude/code-style.md
- @docs/claude/testing.md
- @docs/claude/docs.md
