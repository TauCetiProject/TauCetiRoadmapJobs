# Repair report: HochschildHomologyAndHKR, design round 5

Review resolved: `REV-DESIGN-HochschildHomologyAndHKR~4` (three findings F01–F03, all P3). Files
edited: `packages/HochschildHomologyAndHKR/design/README.md` and
`packages/HochschildHomologyAndHKR/design/plan.json`. `packages/HochschildHomologyAndHKR/sources.toml`
is unchanged: HKR62 already lists §4.3 in `cited_for`, and no new work is cited. No
`needs-references.toml` was written. There is no `Suggested.lean` at the design stage, so there was
nothing to elaborate and no `#check` binder audit to run.

Pins used for every library claim: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti
`2fd255d997f47c0b5d834ee416c7015d55444ce5` (the plan's `baseline`).

## REV-DESIGN-HochschildHomologyAndHKR~4/F01 (P3) — applied

Change: Mathlib "Regular sequences" bullet ("Mathlib has no lemma … regular sequence") → names
`LinearEquiv.isWeaklyRegular_congr'` and `MvPolynomial.span_X_image_eq_ker_aeval_ite_mem`, and says
that only the transport to `t_i` is missing. New Tau Ceti contract bullets: `MvPolynomial.isWeaklyRegular_map_X`
and `TauCeti.koszulComplex` with its four lemmas. Mathlib `instModuleTensorProductMop` and
`AlgHom.mulLeftRight_apply` added. The "Already in" paragraph, §4.1, the §8.1 route, the Needs of
§§8.1–8.2, the §0.K.1 contract and plan 4.1/8.1/8.2 are updated.

Verified at the pins:

- `TauCeti/RingTheory/MvPolynomial/RegularSequence.lean:44`: `MvPolynomial.isWeaklyRegular_map_X`
  holds for any `[CommRing R]` and any `l.Nodup`, with no `Nontrivial`. The regular version at `:63`
  adds `[Nontrivial R]`.
- `TauCeti/RingTheory/KoszulComplex/Basic.lean`: `TauCeti.koszulComplex` (:219, an `ℕ`-indexed chain
  complex in `ModuleCat` with terms `⋀[R]^n M`), `TauCeti.zeroEquiv_koszulDifferential_zero` (:122),
  `TauCeti.oneEquiv_koszulDifferential_one` (:137, `φ(v 0) • v 1 − φ(v 1) • v 0`) and
  `TauCeti.koszulComplex.homologyZeroEquivSpan` (:399).
- `Regular.lean:140`: `TauCeti.koszulComplex.exactAt_of_isWeaklyRegular` takes
  `IsWeaklyRegular R (List.ofFn x)` and gives exactness at `k + 1`.
- `Mathlib/Algebra/Azumaya/Defs.lean:39`: `instModuleTensorProductMop` is an `abbrev`, not an
  instance, for any `[CommSemiring R] [Semiring A] [Algebra R A]`. `:52`, `AlgHom.mulLeftRight_apply`:
  `a ⊗ b ↦ (x ↦ a * x * b.unop)`.
- `Mathlib/RingTheory/Regular/RegularSequence.lean:190`: `LinearEquiv.isWeaklyRegular_congr'`, under
  `RingHomInvPair σ σ'` both ways, which a ring equivalence supplies.
- `Mathlib/RingTheory/MvPolynomial/Ideal.lean:63`: `MvPolynomial.span_X_image_eq_ker_aeval_ite_mem`.

Mathlib has no regular-sequence lemma for polynomial variables at the pin (grepped for
`IsWeaklyRegular` with polynomial or tensor objects; only the flat-tensor lemmas at
`RegularSequence.lean:532, 541` exist). Neither pin states §8.1 itself, so §8.1 stays a target here
and is now described as a transport.

Two points go beyond the requested repair, and both are needed to make the route exact:

- **Sign.** The existing route's variables are `Y_i = 1 ⊗ X_i − X_i ⊗ 1 = −t_i`. The route now says
  why the sign is harmless: the ideals `(Y₁,…,Y_j)` are unchanged, and `−y` and `y` have the same
  kernel on every quotient.
- **Kernel clause.** §8.1 also claims that the `t_i` generate the kernel of multiplication. The
  pinned lemma for that clause (`span_X_image_eq_ker_aeval_ite_mem`) is named as well.

Ownership: the Koszul complex stays with DerivedModuleAlgebra §0.K.1 (on main), whose contract
table, line 126, records these Tau Ceti declarations. This roadmap cites both and declares nothing
under a name from another roadmap.

## REV-DESIGN-HochschildHomologyAndHKR~4/F02 (P3) — applied

Change:

- **Layer 5 Dependencies:** "Tau Ceti's comparison of resolutions" → Mathlib's `Ext` classes of
  cocycles on projective resolutions (`extMk`, its composition lemmas, morphisms of resolutions),
  with Tau Ceti entering only through Layer 1.
- **Layer 8 Dependencies:** now names the Tau Ceti Koszul complex, `isWeaklyRegular_map_X` and
  `extLinearEquiv`, plus Mathlib's projective resolutions, degree-zero `Ext`, left derived functors
  and homotopy equivalences.

Same pattern elsewhere: I compared every layer's Dependencies paragraph with its Needs lines,
supplier by supplier.

- Layers 1–4 and 7 already matched.
- Layer 6 named no Mathlib item, although §6.3 needs `ComplexShape.embeddingDownNat` and
  `HomologicalComplex.extend` and §6.4 needs `Algebra.Smooth.flat`. It also omitted the Tau Ceti
  suspension carriers `TauCeti.AInfinity.IsSuspension` and `TauCeti.IsDGAlgebra`, which §6.1 needs.
  Both are added.

## REV-DESIGN-HochschildHomologyAndHKR~4/F03 (P3) — applied

Change: in §4.3, "HKR62 lines 284–298" → "HKR62 lines 480–489, for commutative `A` and `M = A`".

Evidence:

- HKR62 lines 284–298 identify `Hom_S(X, A)` with `Hom_R(R ⊗_S X, A)` and define `h` (the content
  of §7.1).
- Lines 480–489 evaluate cochains `α ∈ Hom_S(Y_p, R)` at `x₀ ⊗ ⋯ ⊗ x_{p+1}` as
  `x₀ α(1 ⊗ x₁ ⊗ ⋯ ⊗ x_p ⊗ 1) x_{p+1}`, and give `ζ′(x₀ ⊗ x₁ ⊗ x₂) = x₀ ζ(x₁) x₂`.
- HKR62's setting is a commutative algebra with coefficients in itself, hence the qualifier. The
  general case is Ginz05 lines 1033–1062.
- The other uses of lines 284–298 (§7.1 and plan 7.1) cite them for `h`,
  correctly, and are kept. Plan 4.3 cites Ginz05 only and needs no change.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result |
| --- | --- | --- | --- |
| §8.1 route: `Rᵉ ≅ MvPolynomial (Fin m) R`, coefficients `R ⊗ 1`, variables `Y_i` | inverse `r ⊗ 1 ↦ C r`, `1 ⊗ X_i ↦ X_i + C(X_i)`; multiplication | `Y_i ↦ (X_i + C X_i) − C X_i = X_i`; `μ(Y_i) = X_i − X_i = 0`, `μ(r ⊗ 1) = r`: evaluation at `Y = 0` | holds |
| kernel = span of `Y_i` | `s = univ` in the pinned lemma; `m = 0`; `k = 0` | `aeval (fun _ ↦ 0)` kills exactly `span(X_i)`; `m = 0`: `μ = id_k`, kernel `0 = span ∅`; `k = 0`: both `0` | holds |
| weak regularity of `Y`, then of `t = −Y` | `m = 1`, `k = ℤ/4`; `m = 0`; `k = 0`; sign | `l = [0]` over `k[X]` gives `Y` regular on `k[X][Y]` (no nontriviality needed); `m = 0`: empty list; `k = 0`: every quotient is `0`, so weakly regular holds (regular would fail, `Nontrivial` absent); `(t₁..t_j) = (Y₁..Y_j)`, `t·x = 0 ⇔ Y·x = 0` | holds |
| `R = k[x]/(x²)` (non-example, unchanged Check) | `k` nonzero | `t(x ⊗ 1 + 1 ⊗ x) = 0`; the pinned theorem does not apply (not a polynomial ring) | consistent |
| §8.2 degree-two differential | `oneEquiv_koszulDifferential_one` with `v = (e₁, e₂)`, `φ(e_i) = t_i` | `φ(e₁) e₂ − φ(e₂) e₁ = t₁e₂ − t₂e₁`, the README bullet; §8.3 Check `b′ι(e₁ ∧ e₂) = t₁(1 ⊗ X₂ ⊗ 1) − t₂(1 ⊗ X₁ ⊗ 1)` agrees | holds |
| §8.2 `H₀` | `homologyZeroEquivSpan` with §8.1; `m = 0`; `m = 1` | `H₀ ≅ Rᵉ/(t) ≅ R`; `m = 0`: `k/(0) = k`; `m = 1`: `k[X,Y]/(X − Y) ≅ k[X]` | holds |
| §8.2 higher homology | `exactAt_of_isWeaklyRegular`; `m = 0`; `m = 1` | `H_{j+1} = 0` for all `j`; `m = 0`: `⋀^{j}(k^0) = 0` for `j ≥ 1`; `m = 1`: `0 → Rᵉ --t--> Rᵉ`, injective by §8.1 | holds |
| §4.1 `A` via `instModuleTensorProductMop` | `Mat₂(k)`, `k` nonzero; `A = k`; `k = 0` | `(E₁₂ ⊗ op E₂₁)·E₂₂ = E₁₂E₂₂E₂₁ = E₁₁` (the existing Check; the reversed reading gives `E₂₁E₂₂E₁₂ = 0`); `A = k`: `(a ⊗ b)·x = abx`; `k = 0`: `0` | holds; same convention as `mulLeftRight_apply` |
| §4.3 locator | HKR62 line 489 at `p = 1` | `ζ′(x₀ ⊗ x₁ ⊗ x₂) = x₀ ζ(x₁) x₂`, the degree-one clause of §4.4 (`a₀ D(a₁) a₂`) and §4.3 evaluated at `1 ⊗ a ⊗ 1` | supports |
| Layer 5 / 6 / 8 Dependencies | each Needs line of the layer, supplier by supplier | Layer 5: Mathlib only (no Tau Ceti); Layer 6: Mathlib `embeddingDownNat`, `extend`, `Algebra.Smooth.flat`, Tau Ceti `IsSuspension`, `IsDGAlgebra` now named; Layer 8: Tau Ceti `koszulComplex`, `isWeaklyRegular_map_X`, `extLinearEquiv` now named | agree |

## Checks

Dependency check (`tauceti-roadmap … gate --candidate packages/HochschildHomologyAndHKR/design/README.md --only HochschildHomologyAndHKR`):

```text
candidate: HochschildHomologyAndHKR is not in the merge order yet; checked as if placed after RefinedTraceMethods (the intake inserts it when its design is accepted)
depcheck: 206 roadmaps, 1900 edges, 0 problem(s)
```

The check printed no UPWARD or CYCLE line. No new roadmap supplier was added: the new inputs are
all pinned Mathlib or Tau Ceti declarations.

Citation resolver (`roadmaps resolve` on the README): there are no cross-roadmap citations and no
Lean names that resolve nowhere. The resolver could not check Lean names outside
TauCetiRoadmap on this host, so I checked every new name by hand at the pins (file and line above).
I also confirmed the namespaces: `TauCeti` for the Koszul differential lemmas, `TauCeti.koszulComplex`
for the homology and acyclicity lemmas, `MvPolynomial` for both polynomial lemmas, and the root
namespace for `LinearEquiv.isWeaklyRegular_congr'`, `instModuleTensorProductMop` and
`AlgHom.mulLeftRight_apply`. The earlier lead `TauCeti.StarkSystems.toExteriorBidual` no longer
appears: it is an IntegralIwasawaTheory §12.6 carrier at that roadmap's open head, cited as such, and
it is not in the pins.

`plan.json` parses, and its formatting (one-space indent) is preserved.

Elaboration and binder audit: not applicable, since there is no `Suggested.lean` at the design stage.

## Notes for the maintainer

- No target id, heading or plan name changed, so no other roadmap's citation is affected.
- Ownership against open pull requests: no new object is owned here. The new citations are pinned
  declarations, and DerivedModuleAlgebra §0.K.1 (on main) stays the owner of the Koszul complex.
- No suspicious instruction was found in the review text.
