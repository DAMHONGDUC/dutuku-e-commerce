# Testing

Tests mirror [lib/src/features/](../lib/src/features/) under [test/features/](../test/features/).

| Target | Tooling |
|---|---|
| Usecases | `flutter_test` + `mocktail` |
| Repository impls | `flutter_test` + `mocktail` |
| Cubits (loading / loaded / error sequences) | `bloc_test` |
| Shared fakes | [test/helpers/](../test/helpers/) |

```bash
fvm dart run melos run test
```
