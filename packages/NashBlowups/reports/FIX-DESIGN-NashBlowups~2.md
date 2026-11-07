# FIX-DESIGN-NashBlowups~2: repair of the design review

The review `REV-DESIGN-NashBlowups` has four findings, all P3. Each is settled below. Three are applied as
the review asked. F03 is applied differently: the Noetherian hypothesis is dropped from §0.5 altogether,
because neither the source proof nor the route uses it. Files edited: `packages/NashBlowups/design/README.md`,
`packages/NashBlowups/design/plan.json`, `packages/NashBlowups/sources.toml`.

## REV-DESIGN-NashBlowups/F01 (P3) — applied

Verified on main. `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md` §5.6 (line 3724,
"Algebraic Cartan and Lie-derivative adapter") defines `lieDerivativeOneForm D`. Its `Suggested.lean` line 3586
declares `exists_lieDerivativeOneForm` (`∃!` `C`-linear `L` on `Ω[F⁄C]`, `Field C`, `Field F`, `[CharZero C]`).
The open revision of that roadmap keeps the content in §5.6 under the same heading.

Old → new:
- Scope: "no other roadmap plans: the Lie derivative on Kähler differentials" → "…in this generality: the Lie
  derivative on the Kähler differentials of an arbitrary algebra over a field, in every characteristic".
- "Supplied elsewhere": a clause citing §5.6 and saying how §4.2 differs (arbitrary `k`-algebra, every
  characteristic, through `J/J²`, needed on local rings by §4.4).
- New contract `### From TauCetiRoadmap.DiophantineApproximationAndTranscendence`.
- §4.2: an agreement API bullet. Its proof: `L_∂` is `k`-linear because `∂` kills `k`, and the supplier's operator
  is unique. §4.2 `*Needs:*`, the Layer 4 Dependencies and plan.json (a supplier entry, a 4.2 prerequisite and an
  API entry) are updated to match.

## REV-DESIGN-NashBlowups/F02 (P3) — applied

Verified at the head of DerivedDeRhamCohomology. `Suggested.lean` lines 64–67 state `pBasis_kaehler_basis`
only in the forward direction (`IsPBasis → LinearIndependent ∧ span = ⊤`). The README, §0.23 (head line 461),
states the equivalence in prose.

Old → new: the contract "§0.23 (`IsPBasis`, `pBasis_kaehler_basis`): … exactly when …" → the equivalence is
attributed to §0.23. The forward half is `DerivedDeRham.pBasis_kaehler_basis`; the converse half is in the §0.23
prose and is the half §5.3 uses. §5.3's route now says "by the converse half of DerivedDeRhamCohomology §0.23".
The plan.json supplier `what` is updated. The Scope sentence was already correct and is unchanged.

## REV-DESIGN-NashBlowups/F03 (P3) — applied differently

The finding is right that §4.1 cites §0.5 outside §0.5's stated hypotheses. Its diagnosis, that Noetherian is
"needed only for injectivity", is not right. Injectivity does not need it either:
- stacksAlgebra line 17647 states 00TU for Noetherian `R`. Its proof (lines 17654–17671) replaces `R` by `R/m²`
  and lifts `κ`, and never uses Noetherianity.
- §0.5's own route uses no Noetherian hypothesis. `Algebra.FormallyEtale.of_isSeparable` gives the section of
  `R/m² → κ`.
- Pinned `retractionKerCotangentToTensorEquivSection` (`Mathlib/RingTheory/Smooth/Kaehler.lean:324`) assumes only a
  surjective `P → S`.
- `exact_kerCotangentToTensor_mapBaseChange` (`Mathlib/RingTheory/Kaehler/Basic.lean:864`) assumes only
  surjectivity.

Old → new: §0.5 "Noetherian local `k`-algebra" → "local `k`-algebra, not necessarily Noetherian". The new text
adds that surjectivity holds whenever `Ω_{κ/k} = 0`, and gives a fourth Check on `k[x_1, x_2, …]` localised at
`(x_1, x_2, …)`. §4.1's citation is now valid; its wording "κ separable" → "κ finite separable". plan.json 0.5
and the stacksAlgebra `cited_for` are updated.

## REV-DESIGN-NashBlowups/F04 (P3) — applied

Verified: for `xy = 0`, `Ω = (O dx ⊕ O dy)/(y dx + x dy)` in every characteristic. Near `(a, 0)` with `a ≠ 0`,
`x` is a unit and `dy = 0`, giving `[1:0]`; symmetrically `[0:1]`. So `X* = 𝔸¹ ⊔ 𝔸¹` is normal in every
characteristic.

Old → new: "node … in characteristic `≠ 2`" → "node `xy = 0`, in every characteristic" in §2.1 (now with the
computation) and §6.1. The Layer 2 Examples now say "in every characteristic", and plan.json `nashBlowup_node` is
updated.

Pattern repair: removing the qualifier from the §6.1 bullet exposed its `y² = x²z` clause. That clause needs
characteristic `≠ 2` (nobile1975 line 314). In characteristic 2, `J_f = (x²)` is principal on an integral
surface, so `X* = X` and `X̄* = X^ν`. The qualifier is added there, in the Layer 2 Examples and in plan.json
`normalized_vs_normalization`, and §6.1 now states the characteristic-2 agreement. The other occurrences of
"`≠ 2`" each use the hypothesis and are kept: §2.2 `y² = x²z`; §4.2 `k[x]/(x²)`, where in characteristic 2,
`Ω = R dx` is free; §5.5's quadric cone, where in characteristic 2, `J = (x, y)`.

## Adversarial pass on changed statements

| statement | instances tried | values computed | result | change |
|---|---|---|---|---|
| §0.5 without Noetherian | `k[x_1, x_2, …]_{(x_i)}`; non-Noetherian valuation ring `⋃ k[t^{1/n}]_{(t^{1/n})}`, residue field `k`; `k = 𝔽_p(t)`, `R = k[x]_{(x^p−t)}` | `m/m² = ⊕ k·x̄_i → ⊕ k·dx_i`, bijective. `m = m²`, so `m/m² = 0`; every `s ∈ m` is `u^q` (`q` a prime ≠ char), so `ds = q u^{q−1} du ∈ mΩ` and `κ ⊗ Ω = 0`. `x^p − t ↦ 0`, and `κ ⊗ Ω = κ dx ≠ 0`, image `0` | holds without Noetherian; separability needed for both halves | hypothesis dropped; fourth Check added |
| §0.5 surjectivity when `Ω_{κ/k} = 0` | `κ = k`; `κ/k` purely inseparable | exact `m/m² → κ⊗Ω_R → Ω_{κ/k} → 0`: onto when `Ω_{κ/k} = 0`; in the inseparable example `Ω_{κ/k} = κ·d(t^{1/p}) ≠ 0` and the map is not onto | sound | clause added |
| §4.1, `x_j ∈ m` for finite separable `κ` | `k[x]_{(x−1)}` with `q(dx) = 1` | the `x_1 = x` of the route is a unit; `x − 1 ∈ m` has `d(x − 1) = dx` | the §0.5 citation now applies with no extra hypothesis | wording only |
| §4.2 agreement with `lieDerivativeOneForm` | `ℚ(t)/ℚ`, `∂ = d/dt`; `∂ = t·d/dt`; `k[x]` (not a field); `𝔽_p(t)` | `L(t dt) = dt`, the supplier's value; `L(t dt) = t dt + t dt = 2t dt`, the supplier's value; supplier not applicable, §4.2 defines it; supplier needs `CharZero` | agreement exactly on fields of characteristic 0; `k`-linearity: `L(cω) = ∂(c)ω + cLω = cLω` | bullet added |
| §5.3 via the converse half of §0.23 | `K = k(t)`; `d = 0`; `t^p` | `dt` spans `Ω_{K/𝔽_p}`, so `{t}` is a `p`-basis and `1, …, t^{p−1}` is a `K^p`-basis; `K = K^p`, empty family; `d(t^p) = 0`, not a basis, not a `p`-basis | sound | citation sharpened |
| node `xy = 0` in characteristic 2 | `𝔽_2`; the branch `y = 0` at `x = a ≠ 0`; branch `x = 0` | `x·dy = −y·dx = 0` with `x` a unit, so `dy = 0` and the point is `[1:0]`; likewise `[0:1]`; the closures in `X × ℙ¹` are disjoint over `0` | `X* = 𝔸¹ ⊔ 𝔸¹`, normal, `η = id` | qualifier removed |
| `y² = x²z` in characteristic 2 | `𝔽_2` | `∂_x f = 2xz = 0`, `∂_y f = 2y = 0`, `∂_z f = x²`; `f` is irreducible since `z ∉ k(x,z)²`; `x² ≠ 0` in the domain `O_X` | `J_f` invertible, so `X* = X` (§3.3) and the §6.1 contrast fails | qualifier added; characteristic-2 agreement stated |

## Checks run

- Dependency gate (final run, after all edits):

```
candidate: NashBlowups is not in the merge order yet; checked as if placed after AlgebraicModuliForArithmeticGeometry (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2366 edges, 0 problem(s)
```

  No UPWARD or CYCLE line. The new supplier, DiophantineApproximationAndTranscendence, is on main.
- `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere. The tool
  noted that it did not check Lean names outside TauCetiRoadmap on this host. The two DerivedDeRham names are
  declared at that roadmap's head (`Suggested.lean` lines 53 and 64).
- `plan.json` parses as JSON and `sources.toml` parses as TOML. The plan now has 109 tests (one added in 0.5).
- There is no `Suggested.lean` at the design stage, so no `#check` elaboration was run.
- No gate failures were listed for this round.

## Notes for the maintainer

- New supplier: DiophantineApproximationAndTranscendence §5.6 (on main), cited only for the §4.2 agreement bullet.
  It does not change the merge-order placement, which is still after AlgebraicModuliForArithmeticGeometry.
- Why §4.2 stays here: the supplier plans the Lie derivative only for fields over a field of characteristic zero.
  §4.4 needs it on local rings `O_{X,x}`. No roadmap on main or at the indexed open heads plans the general
  algebra version (`roadmaps grep -i 'lie derivative'`). DerivedDeRhamCohomology has no contraction or Lie
  derivative.
- No names changed that other roadmaps cite. No section, layer or target was renumbered.
- Ownership against open pull requests was checked with `roadmaps grep` over the 466 indexed heads.
- No suspicious instructions were found in the review text.
