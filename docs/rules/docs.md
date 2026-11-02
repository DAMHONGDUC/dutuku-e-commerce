# Docs rules

| Rule | Reason |
|---|---|
| All docs in English | One language for every reader |
| `README.md` at root holds only: overview, store links, app IDs, tech stack, architecture diagram | Scannable entry point |
| `CLAUDE.md` at root is an index; rules live in `docs/rules/` | Keeps the always-loaded file short |
| Every other doc goes in one `docs/` subfolder: `plans/`, `status/`, `architecture/`, `modules/`, `api/`, `guides/`, `release/`, `store/`, `rules/`; `docs/README.md` indexes them | One place to look |
| Lists, commands, options, mappings → tables; flows and structures → Mermaid | Readable by scanning |
| At most one short sentence of prose under a heading; no intros or conclusions | No text to mine for the fact |
| Values (ids, versions, commands) come from the repo; unknown → `TODO: confirm` | Docs never guess |
| Update docs in the same change as the code they describe | Stale docs mislead |
