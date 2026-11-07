# FIX-PKG-KloostermanMomentsAndPotentialAutomorphy~2

Repair round for the findings of `REV-PKG-KloostermanMomentsAndPotentialAutomorphy` (one finding).

## REV-PKG-KloostermanMomentsAndPotentialAutomorphy/F01 (P3) — applied

Verified at the ShimuraCompactifications open head (f51ec79): the headings are
`## Layer 0: admissible fans and relative torus embeddings`, `### 0.15 Smooth projective
refinements`, `### 0.16 Toric schemes over arbitrary commutative rings`, `### 0.17 Relative toric
maps and the support criterion`, `### 0.18 The integral toric boundary`; no `C0.` label occurs in
that README. Each section's content is what this roadmap consumes (finite-fan toric schemes over
every commutative ring with base change; properness by the support criterion over every base; the
boundary ideal `(t)` of a regular chart, flat with reduced geometric fibres).

Changed in `packages/KloostermanMomentsAndPotentialAutomorphy/README.md`: every
`§C0.15`/`§C0.16`/`§C0.17`/`§C0.18` → `§0.15`/`§0.16`/`§0.17`/`§0.18`, including the range forms
`§§C0.15–C0.18` → `§§0.15–0.18` (lines 98, 246/1246) and `§§C0.16–C0.18` → `§§0.16–0.18` (line 1396).
Nine occurrences at seven places (lines 98, 275–277, 1225, 1232, 1233, 1246, 1396): the reviewer
counted eight; the ninth is the bare `(§C0.18)` on line 1233, which refers to the same supplier
section. No other file carries a `C0.` label (`Suggested.lean`, `design/plan.json`,
`metadata.toml` grepped). The mathematics, hypotheses and `*Needs:*` items are unchanged.

## Pattern check

The whole README was searched for `C0.`: nothing remains. No other supplier citation uses a
letter-prefixed label that the supplier's head does not carry (`roadmaps resolve` now reports no
cross-roadmap citation found nowhere and no undeclared Lean name).

## Adversarial pass

Only section labels changed; no statement, definition, Check or Lean declaration was added or
altered.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §6.1 `X_k` toric scheme over `ℤ`, cited to ShimuraCompactifications §0.16 (was §C0.16) | fan `Σ_k`, `k = 1, 2` | rays `3^k − 1 = 2, 8`; maximal cones `2^k·k! = 2, 8`; chart coordinates `z₁ = y₁` (`k = 1`), `z₁ = y₁/y₂`, `z₂ = y₂` (`k = 2`), `g₁ = 1 + z₁ + z₁²z₂² + z₁z₂²` | the cited section constructs `X_{Σ,R}` for a finite fan over any `R`; properness (§0.17) and the boundary (§0.18) apply as before | labels only |

## Checks

- `lake env lean …/Suggested.lean` from the content checkout: exit 0; four warnings, all
  `declaration uses 'sorry'` (lines 91, 110, 190, 205); file unchanged this round (single
  `import Mathlib`, no `TauCeti.*` module, no `set_option`). The elaborated signatures of the 21
  declarations in the worker's `signatures.md` were compared with their README statements; no
  binder is lost and nothing changed.
- Dependency gate:

  ```
  depcheck: 242 roadmaps, 2491 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: cross-roadmap citations found nowhere: none; Lean names found
  nowhere: none.

No gate failures were listed for this round.

## For the maintainer

- Nothing changed in `Suggested.lean`, `metadata.toml`, `sources.toml` or `design/plan.json`.
- No name another roadmap cites changed. The ShimuraCompactifications sections consumed are
  §§0.15–0.18 at its open head; if that roadmap renumbers Layer 0 before merge, these citations
  need the same update.
- Ownership against open pull requests was not re-examined this round beyond the one supplier the
  finding concerns; the previous round's check stands.
