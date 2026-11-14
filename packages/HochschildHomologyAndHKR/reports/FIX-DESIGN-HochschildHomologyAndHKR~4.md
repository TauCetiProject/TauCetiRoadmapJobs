# Repair report: HochschildHomologyAndHKR, design round 4

Review resolved: `REV-DESIGN-HochschildHomologyAndHKR~3` (three findings R01–R03; verdict in
`packages/HochschildHomologyAndHKR/design/review.json`). Files edited:
`packages/HochschildHomologyAndHKR/design/README.md`, `packages/HochschildHomologyAndHKR/design/plan.json`
and `packages/HochschildHomologyAndHKR/sources.toml` (one `cited_for` list). No new source was cited
and no `needs-references.toml` was written. There is no `Suggested.lean` at the design stage, so no
elaboration and no `#check` binder audit were run.

Pins used for every library claim: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti
`2fd255d997f47c0b5d834ee416c7015d55444ce5` (from `lake-manifest.json` of the content checkout).

## REV-DESIGN-HochschildHomologyAndHKR~3/R01 (P2) — applied differently

Change: generic §7.2 ("chain complex of projectives with projective homology … Kronecker map
bijective", inductive route) → §7.2 "evaluation pairing below the first non-projective Hochschild
homology": HKR62 Lemma 4.1 for `h_i` of §7.1, proved by transporting the native theorem. Scope,
library paragraph, Tau Ceti contract, §7.6 route/Needs, Layer 7 Dependencies, build overview,
plan 7.2/7.6, AV20 `cited_for` updated.

Verified at the Tau Ceti pin: `TauCeti/Algebra/Homology/UniversalCoefficient/Basic.lean:212`
(`TauCeti.ChainComplex.kronecker_bijective_of_projective_homology_lt`: `X : ChainComplex C ℕ`,
`[∀ n, Projective (X.X n)]`, `∀ j < n, Projective (X.homology j)` ⇒ bijective in degree `n`) and
`:234` (`…_of_projective_homology`, every degree). The README's "for every `i ≤ n`" is the native
theorem at degree `i` (`j < i ≤ n`). The bridge from `Module.Projective` is Mathlib's instance
`ModuleCat.projective_of_categoryTheory_projective` (`Mathlib/Algebra/Category/ModuleCat/Projective.lean:27`).

Why "differently": the reviewer allowed §7.6 to consume the native theorems directly. HKR62
Lemma 4.1 (lines 301–330) is itself the Hochschild statement (`Tor_i^S(R,R)` projective for `i < k`
⇒ `h_i` iso for `i ≤ k`), on this roadmap's own `h_i`, with a hypothesis gap to the native
theorem (module projectivity of `C_j(R,R) = R ⊗ R^{⊗j}`, transport through §7.1). Keeping it as
§7.2 keeps every target id stable, as the reviewer preferred, and §7.6 consumes §7.2. The generic
theorem is not restated under any name; the plan name changed from
`HochschildHKR.kronecker_bijective_of_projective_homology` to
`HochschildHKR.evalPairing_bijective_of_projective_homology`. The hypothesis is the weaker
"every `C_j(R,R)` is `R`-projective", with `k`-projectivity as an instance (`𝔽_p/ℤ` Check). New
Checks: `k[x]` (all `h_i` bijective, `h₁(∂_x)([1⊗x]) = 1`); `𝔽_p/ℤ` (terms projective, `R` not
`ℤ`-projective, both sides `0` in positive degrees); `ℚ[x]/(x²)` with `M = ℚ` (`HH₁ = R/(x)` not
projective, `h₂ = 0 : ℚ → ℚ`), with the `𝔽₂` contrast (all `HH_j = R`, all `h_i` bijective).

Same pattern elsewhere: the contract no longer lists the universal-coefficient pieces
(`kronecker_surjective_of_isSplitMono`, `extToHomology`, `exact_extToHomology_kronecker`) or
Mathlib's `Ext.eq_zero_of_projective`, used only by the deleted route; no other README or plan
passage restates a native Tau Ceti theorem (re-grepped the Kronecker, Ext, coboundary, derivation
and exterior-power objects).

## REV-DESIGN-HochschildHomologyAndHKR~3/R02 (P2) — applied

Change: Tau Ceti contract "`extLinearEquiv` and `isoExt_hom_comp_homologyMap`: computing `Ext`
from two resolutions related by a chain map" → `extLinearEquiv` alone, with both vanishing
hypotheses, used only in §8.2. §4.4 drops it; route via `extMk`, `add_extMk`, `smul_extMk`,
`extMk_surjective`, `extMk_eq_zero_iff`, `extLinearEquivCohomologyClass`, `Ext.linearEquiv₀`.
Plan 4.4/8.2 updated.

Verified: `TauCeti/Algebra/Homology/Ext/ProjectiveResolution.lean:107` requires
`d (n+2) (n+1) ≫ f = 0` for every `f` and `d (n+1) n ≫ g = 0` for every `g`. For `A = k = M = ℤ`,
`b′₂ = id`, so the first fails at `n = 0` (`1 = 0`); `HH¹ = 0 = Ext¹` comes from the cocycles
(`δ¹ = id`), not from the term `C¹ = ℤ`. This witness is now in §4.4. The Mathlib replacements
are at `Mathlib/CategoryTheory/Abelian/Projective/Ext.lean` (`add_extMk`, `smul_extMk`,
`extMk_eq_zero_iff` with `p + 1 = n`, `extMk_surjective`, `extLinearEquivCohomologyClass` at 286)
and `Mathlib/Algebra/Homology/DerivedCategory/Ext/Linear.lean:88` (`Ext.linearEquiv₀`). In degree
zero `extMk` is injective because the Hom complex has no `(−1)`-cochains into `Y[0]`.

`extLinearEquiv` is kept where its hypotheses hold: §8.2's `Ext^j_{Rᵉ}(R,R) ≅ ⋀^j(R^m)^*`, since
`Hom_{Rᵉ}(K(R),R)` has zero differential (at `m = 1`: `d₁ ≫ g = t·g(1) = 0` because `t` acts by
`X − X = 0`), with `Ext.linearEquiv₀` in degree zero and `isoLeftDerivedObj` for `Tor`; §8.2 Needs
gained §4.5.

Same pattern elsewhere (the reviewer's note on the neighbouring lemma): `isoExt_hom_comp_homologyMap`
concerns the functor-valued `Ext` of `Mathlib/CategoryTheory/Abelian/Ext.lean` (`ProjectiveResolution.isoExt`),
not `CategoryTheory.Abelian.Ext`. It was cited in §§5.3, 8.3, 8.4 and the contract. It has been
removed from all four. §5.3 now cites `Ext.comp_hom`, `extMk_hom`, `extMk_comp_mk₀`,
`mk₀_comp_extMk` and `ProjectiveResolution.Hom`. §8.3 cites `ProjectiveResolution.homotopyEquiv`
and `liftHomotopy`. §8.4 cites `Functor.mapHomotopyEquiv`, `Homotopy.op` and
`HomotopyEquiv.toHomologyIso`, with §4.3 added. The plan entries match, and the new names were
added to the Mathlib contract.

## REV-DESIGN-HochschildHomologyAndHKR~3/R03 (P3) — applied

Change: plan test `antisym_dual_numbers` "For R=k[x]/(x²), flat not smooth …" → "with k a nonzero
field …; for k=0 everything is 0 and ε^cl₂ is onto". Plan test `eval_symmetric_needed` "δm(x)=m≠0"
→ "δm(x)=m, nonzero for m≠0 (e.g. k=ℤ, m=1) … transpose of b₁=0 …; at m=0 both are 0". The
README lines already carried both qualifications and are unchanged.

Same pattern elsewhere: every plan test of kind non-example and every test stating `≠ 0`,
"nonzero" or "not" (40 tests) was listed by script and compared with its README Check. The others
already name `k` nonzero, a specific ring (`ℤ`, `𝔽₂`, `𝔽_p`, `ℚ`), or hold for `k = 0`, for example
`HH₀(Mat₂(k)) ≅ k` and `HH¹(Mat₂(k)) = 0` over every `k`. The new 7.2 tests name `ℚ`, `𝔽₂` and `𝔽_p`.

## Checks

Dependency check, after all edits:

```text
candidate: HochschildHomologyAndHKR is not in the merge order yet; checked as if placed after RefinedTraceMethods (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2060 edges, 0 problem(s)
```

No UPWARD or CYCLE line. No supplier roadmap was added; the only new inputs are pinned Mathlib and
Tau Ceti declarations.

- `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found
  nowhere. That tool does not check names outside TauCetiRoadmap. Every Mathlib and Tau Ceti name
  added this round was therefore grepped at the pins, together with its namespace:
  `CategoryTheory.ProjectiveResolution.{add_extMk, smul_extMk, extLinearEquivCohomologyClass,
  extMk_hom, extMk_comp_mk₀, mk₀_comp_extMk, Hom, homotopyEquiv, liftHomotopy}`,
  `CategoryTheory.Abelian.Ext.{comp_hom, linearEquiv₀}`, `CategoryTheory.Functor.mapHomotopyEquiv`,
  `Homotopy.op`, `HomotopyEquiv.toHomologyIso`, `ModuleCat.projective_of_categoryTheory_projective`,
  `TauCeti.ChainComplex.kronecker_bijective_of_projective_homology(_lt)`,
  `CategoryTheory.ProjectiveResolution.extLinearEquiv`. All are present.
- `sources check packages/HochschildHomologyAndHKR/sources.toml`: 0 problems. The only manifest
  edit removes "§7.2" from AV20's `cited_for`, because AV20 Proposition 1.2 is no longer cited
  there. It is still cited in §7.6.
- `plan.json` parses. Every `target:` prerequisite resolves. There are 37 targets and the ids are
  unchanged. The gap `smooth-hkr-antisymmetrisation` (`neededBy` 6.4, 7.6) is unchanged. No
  occurrence of the removed names is left in README or plan.
- Style scan of the README with code spans stripped: no LaTeX delimiter, machine path or process
  word was introduced. The only `_{…}` hits are the multi-line code spans of §§1.1–1.2, which are
  older than this round.
- No gate failures were listed for this round.
- Ownership against open work: `roadmaps grep` over main and the 429 indexed open heads, plus the
  board packages, for the Hochschild evaluation pairing / HKR62 Lemma 4.1 /
  `kronecker_bijective`. The only hits are unrelated evaluation pairings (Galois duality, rigid
  cohomology, Dieudonné modules). This roadmap remains the only owner of its `h_n` and §7.2. The
  overlaps report lists no conflicting head and no dropped id.
- `Suggested.lean`: none at the design stage. Elaboration: not available (design lane).

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §7.2 `h_i` bijective, `i ≤ n` | `n = 0`, `R = k` | `HH⁰(k,M) = M`, `Hom_k(HH₀, M) = M`, `h₀ = id` | holds | new statement |
| §7.2 | `k = 0` | all groups `0`, `0 → 0` bijective | holds | — |
| §7.2 | `R = k[x]`, `M = R` | `HH¹ = R·[∂_x]`, `Hom_R(R·[1⊗x], R) = R`, `h₁(∂_x)([1⊗x]) = 1`; `i ≥ 2`: `0 = 0` | holds | Check |
| §7.2 hypothesis on terms | `k = ℤ`, `R = 𝔽_p`, `M` an `𝔽_p`-space | `C_j = 𝔽_p` free; `δ^i = 0` (i even), `id` (i odd); `HH^i = 0 = Hom(0,M)` for `i ≥ 1` | holds without `k`-projectivity | Check |
| §7.2 negative control | `k = ℚ`, `R = ℚ[x]/(x²)`, `M = ℚ`, `n = i = 2` | periodic resolution: `HH₁ = R/(2x) = R/(x)`, `HH₂ = ker 2x = xR`; `HH²(R,ℚ) = ℚ`, `Hom_R(xR,ℚ) = ℚ`, `h₂(f)(x e₂) = x f(e₂) = 0` | `h₂ = 0`, not injective or surjective; hypothesis at `j = 1` fails as required | Check |
| §7.2 same algebra, `n = 1` | `M = ℚ` | `HH¹(R,ℚ) = ℚ`, `Hom_R(R/(x), ℚ) = ℚ`, `h₁(f)(e₁) = f(e₁)` | bijective, as the theorem predicts (`HH₀ = R` free) | — |
| §7.2 characteristic two | `k = 𝔽₂`, `R = 𝔽₂[x]/(x²)` | `x⊗1 ± 1⊗x ↦ 0, 2x = 0`; `HH_j = R` free, `HH^i(R,M) = M = Hom_R(R,M)` | all `h_i` bijective | Check |
| §7.6 route through §7.2 | `R = k[x,y]`, `n = 2` | `HH₂ ≅ Ω² = R` free; `h₂[∂_x ∪ ∂_y](ε(dx∧dy)) = 1` | consistent with §7.5 | route reworded |
| §4.4 `HH^n ≅ Ext^n` route | `A = k = M = ℤ` | `δ⁰ = 0`, `δ¹ = id`: `H⁰ = ℤ = Ext⁰`, `H¹ = 0 = Ext¹`; `extLinearEquiv` at `n = 0` needs `id ≫ f = 0`, i.e. `1 = 0` | route without zero-differential hypothesis holds; old input fails | Needs, witness |
| §4.4 degree zero | `A = Mat₂(k)`, `M = A` | cocycles = centre `k·1`, no coboundaries; `extMk` injective in degree 0 | holds | route |
| contract `extLinearEquiv` | pin line 107 | `h₁ : d(n+2)(n+1) ≫ f = 0 ∀ f`, `h₂ : d(n+1) n ≫ g = 0 ∀ g` | description now matches | rewritten |
| §8.2 `Ext^j = Hom(K_j, R)` | `m = 1` | `d₁ ≫ g = t·g(1) = (X − X) g(1) = 0`, `K₂ = 0`: both hypotheses hold; `Ext⁰ = Ext¹ = R` | holds | route, Needs |
| §8.2 | `m = 0`; `m = 2` | `Ext^j = Hom(0,k) = 0` for `j ≥ 1`, `Ext⁰ = k`; `m = 2`: ranks `1, 2, 1` = `⋀^j (R²)^*` | holds | — |
| §8.3 homotopy equivalence | `m = 0` | `ι₀ = id_k`, `ι_n = 0 → B_n(k)`; `ι` homotopic to `lift (𝟙)` by `liftHomotopy` | homotopy equivalence, not identity | Needs |
| §8.4 Hom side | `m = 1`, `M = R` | `Hom(ι, R)` a homotopy equivalence via `Homotopy.op`; Koszul `HH¹ = R`, bar `HH¹ = R·[∂]` | agree | Needs |
| §5.3 `q = 0`, `p = 0` | `extMk_comp_mk₀`, `mk₀_comp_extMk` | both with coefficient `+1`; `p = q = 1`, `f = ∂_x`, `g = ∂_y`: strict lift `−1`, cup `+1` (reviewer's table) | consistent with `s(p,0) = 1` and §5.4 factor `(−1)^{pq}` | Needs only |
| plan 6.4 test | `k = ℚ`; `k = 𝔽₂`; `k = 0` | `HH₂ = xR ≠ 0`, `Ω² = 0`; `HH₂ = R ≠ 0`, `Ω¹ = R dx`, `Ω² = 0`; all `0` | holds for every nonzero field; fails at `k = 0` as qualified | test qualified |
| plan 7.1 test | `k = ℤ`, `m = 1`; `m = 0` | `δm(x) = 1`, transpose of `b₁ = 0` gives `0`; both `0` | discriminates exactly for `m ≠ 0` | test qualified |

## Notes for the maintainer

- No section, layer or target id changed; no roadmap on main or in an open pull request cites
  HochschildHomologyAndHKR by section (`roadmaps grep`: no match). Only the plan's design-metadata
  name of 7.2 changed (`HochschildHKR.kronecker_bijective_of_projective_homology` →
  `HochschildHKR.evalPairing_bijective_of_projective_homology`), so that no planned name mirrors the
  native Tau Ceti theorem.
- The roadmap no longer consumes `CategoryTheory.ProjectiveResolution.isoExt_hom_comp_homologyMap`
  or the Tau Ceti universal coefficient sequence. It consumes Tau Ceti's
  `kronecker_bijective_of_projective_homology(_lt)` and, in §8.2 only, `extLinearEquiv`.
- Ownership against open pull requests was checked with the service index (429 heads); open pull
  requests outside that index were not checked.
