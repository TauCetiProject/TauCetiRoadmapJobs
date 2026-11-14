# FIX-PKG-MordellLawrenceVenkateshPartII~4: repair report

All six findings of `REV-PKG-MordellLawrenceVenkateshPartII~3` were checked against the sources (LS, LV), the
pinned Tau Ceti and the supplier roadmaps. All six are correct and all six are applied. Files changed:
`packages/MordellLawrenceVenkateshPartII/README.md` and `packages/MordellLawrenceVenkateshPartII/sources.toml`.
`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged: no finding touches a Lean statement or
a supplier gap.

## REV-PKG-MordellLawrenceVenkateshPartII~3/F01 (P1) — applied

§2.5: "a parabolic alone determines a filtration only up to reindexing" → "`P_μ` is the stabilizer; it
does not determine the filtration, not even the unindexed chain". New API bullet, `𝔾_m` and `SL₃` negative
Checks, Layer 2 Examples and a Source corrections entry for LS p. 57. Same pattern in §5.5, §5.8, Layer 6
Examples and the Summary: "indices forgotten" → "only through its parabolic".

## REV-PKG-MordellLawrenceVenkateshPartII~3/F02 (P2) — applied

§3.4: "`H` vanishing on the complex component" → finitely many local components `U_j` through `σ(x₀)`
(ComplexKahlerGeometry K3 §3.4 local finiteness), §3.3 applied to each, `H = ∏H_j` nonzero because `X_ℂ` is
irreducible, then Rückert. New `(xy)` Check. The Scope bullet and the ComplexKahlerGeometry contract now
import local finiteness too.

## REV-PKG-MordellLawrenceVenkateshPartII~3/F03 (P2) — applied

§10.1: "the group scheme of `a` with `H + a = H`" → HeightsRationalPointsAndObstructions §5.2's
scheme-theoretic stabilizer for `X = H`, on all test schemes. §5.2 added to Scope, the supplier contract,
§10.1 *Needs:* and Layer 10 Dependencies. Finiteness now cites AbelianSchemesAndArithmeticModuli §A2.4. New
Checks: `[2]×id` (order 4), a point (0), `A` (`A`).

## REV-PKG-MordellLawrenceVenkateshPartII~3/F04 (P2) — applied

§1.5: "For an equidimensional `E`-module" → "Let `E` be a nonzero finite étale coefficient algebra …", with
parity proved one field factor at a time. New Checks: the zero algebra and `E = ℚ`, `N = 1, 2` (§1.5);
rank unique only when `E ≠ 0` (§1.4); zero algebra admitted (§1.1). Same pattern: §2.1 "nonzero"; §1.7
`E_I ≠ 0`.

## REV-PKG-MordellLawrenceVenkateshPartII~3/F05 (P3) — applied

Supplier contract: "pairs a class only with a curve over a field" → "any scheme `C` over `k` with
`ι : C → X`, the truncated `H⁰ − H¹` degree `LineBundleClass.eulerDegree` (Degree.lean line 130) of `ι^*a`;
the restriction degree on a proper curve; defined for `C = X = Spec k`; not a numerical-equivalence carrier".
The Lean docstring is true and unchanged.

## REV-PKG-MordellLawrenceVenkateshPartII~3/F06 (P3) — applied

§8.2 "Lemma A.2, p. 90" → "p. 91"; §8.3 (same pattern) "Lemmas A.2–A.3, pp. 90–91" → "p. 91"; §10.7
"Corollary 9.3 and proof, p. 87" → "pp. 87–88". In `sources.toml`, LS `3.1-3.5` → `3.1-3.4` and LV
`3.3-3.5` → `3.3-3.4`. Both keys and their access records are kept. Evidence: LS page markers (table below).

## Evidence that each finding is correct

- F01: on `𝔾_m`, `t` and `t⁻¹` share the parabolic `𝔾_m` but give `F¹ = ℚe₊` and `F¹ = ℚe₋`. LS line 2645
  claims otherwise.
- F02: for the ideal `(xy)` and `H = x`, `x^m ↦ x^m ≠ 0` in `ℂ{x,y}/(y)`. LS lines 3057–3058 need vanishing
  on the whole inverse image, which the one-component wording did not supply.
- F03: HeightsRationalPointsAndObstructions §5.2 states `stabilizer X(T)={a:X_T+a=X_T}` for every closed
  `X ⊂ A`. That roadmap is a new-roadmap pull request at line 142 of the merge order; this package is at
  line 320.
- F04: when `E = 0` there are no embeddings `τ`, so `V = 0` has every rank and the zero pairing is perfect.
- F05: `TauCeti/AlgebraicGeometry/IntersectionNumber/Basic.lean:105–112` binds an arbitrary `C` over `k`.
- F06: LS lines 4245 and 4250 come after the page-91 marker (line 4232); the proof of Corollary 9.3 ends at
  line 4030, after the page-88 marker (line 4025).

## Checks run

- **Elaboration.** `lake env lean packages/MordellLawrenceVenkateshPartII/Suggested.lean`, run from the content
  checkout, exits with status 0. The only messages are `69:8` and `106:8` "declaration uses `sorry`". No
  `TauCeti.*` import, so nothing had to be built.
- **Signatures.** A scratch file ran `#check @name` on all six declarations (`eulerian`,
  `eulerian_central_mass_le_half`, `HypersurfaceMonomial`, `IsSmoothHypersurface`, `HasGoodReductionOutside`,
  `integralHypersurfaces_not_zariskiDense`) and elaborated once. Every type is identical to the earlier
  signatures file and matches its README statement: `2 ≤ n`, `[Field k]`, the prime binder and the order
  `∃ n₀ ∀ n ≥ n₀ ∃ D₀ ∀ d ≥ D₀ ∀ S ∃ G` are all present. Nothing changed.
- **Dependency direction.** `tauceti-roadmap … gate --depcheck … --name MordellLawrenceVenkateshPartII --movable`
  printed:

  ```
  depcheck: 236 roadmaps, 2157 edges, 0 problem(s)
  ```

  It printed no UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve` on the edited README finds no cross-roadmap citation and no Lean name
  missing. That run did not check library names outside TauCetiRoadmap ("no pinned Lake packages on this
  host"), so the new name `TauCeti.AlgebraicGeometry.LineBundleClass.eulerDegree` was checked by hand at
  `TauCeti/AlgebraicGeometry/LineBundle/Degree.lean:130`.

## Adversarial pass on added or changed statements

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| §2.5: `P_μ` does not fix the unindexed chain | `𝔾_m`, `μ=t`, `ν=t⁻¹` on `e₊,e₋` | `P_μ=P_ν=𝔾_m`; `F¹_μ=ℚe₊`, `F¹_ν=ℚe₋` | chains differ; `μ,ν` not conjugate in the abelian group, so the criterion separates them |
| same | `SL₃`, `(1,0,−1)` vs `(2,1,−3)` | weights of `E₁₂,E₂₃,E₁₃`: `(1,1,2)` vs `(1,4,5)`; chain dims `1,3,5,7,8` vs `1,2,3,5,6,7,8` | true even for semisimple `G`; both Borels upper triangular (limit `t→0`) |
| same | `GL₂`, `(1,0)` vs `(2,0)`; `(1,1)` vs trivial | same chain `0⊂L⊂V` / `0⊂V`, indices `1` vs `2`, `1` vs `0` | only the indices differ; consistent |
| §5.5: type depends only on `P_f` | `GL₂` `f` of weights `(1,0)` vs `(5,0)` (= `μ⁵`) | `P_f=B`, `M=T`, same `φ_M`, `F_M` | same type, as Check 1 says; matches LS line 3524 (`gP₁g⁻¹=P₂`) |
| §3.4: product over components, then Rückert | `(xy)`, `H=x` | `x^m ↦ x^m ≠ 0` in `ℂ{x}`, `(xy) ↦ 0` | one component fails; `xy ∈ (xy)` with `m=1` |
| same | `(z²)`, `H=z` | `z ∉ (z²)`, `z² ∈ (z²)`, `m=2` | Rückert exponent needed |
| same | reducible `{xy=0}` in place of irreducible `X_ℂ` | `x·y=0` there | product nonzero only because `X_ℂ` is irreducible: the hypothesis is used |
| same | zero-dimensional `U_j={σ(x₀)}`, `X=𝔸¹` | `H_j=t−σ(x₀)≠0` | exists because `d ≥ 1` |
| §10.1: `Stab(H)` = specialization of §5.2 | point `{x}` on elliptic `E` | `{x}_T+a={x}_T ⇔ a=0`; `deg φ_(𝒪(x)) = χ² = 1` | `Stab=0`, primitive |
| same | `E₁×E₂`, `H=([2]×id)⁻¹H′`, `H′` primitive | `Stab(H)=ker([2]×id)=E₁[2]×0`, order 4; `χ(𝒪(H))=4χ(𝒪(H′))`, `|ker φ|=16χ(H′)² ≥ 4` | finite and contained in `ker φ`; `d(H)=4d(H′)` agrees with §10.7 |
| same | `X=A` (§5.2 case) | `Stab(A)=A`, not finite | `A` is not a divisor; ampleness is the hypothesis used |
| §1.5: parity needs `E ≠ 0` | `E=0`, `V=L=0`, `N=1` | pairing `0→Hom_E(0,E)=0` is perfect and alternating | excluded by the new hypothesis |
| same | `E=ℚ`, `N=1`; `N=2` Gram `((0,1),(−1,0))` | `B(v,v)=0` forces `B=0` on a line; `det=1` | `N=1` rejected, `N=2` accepted |
| same | `E=ℚ×ℚ`, `N=2` | one symplectic plane per factor; value line has ℚ-dim 2 | parity holds per factor |
| §1.4: rank unique only if `E ≠ 0` | `E=0`, `V=0`; `E=ℚ`, `V=0` | no `τ`, so every `N` works; for `E=ℚ` only `N=0` | rank undetermined over `E=0` only |
| §2.1: `E` nonzero | `E=0` | `Res_(0/E₀)H=1`, `GL(0)=1`, `Aut(E)=1`; "`GSp₁`" meaningless | exclusion is harmless; `E=E₀` still gives `G=H` |
| §1.7: `E_I ≠ 0` | orbit `|I| ≥ 1` | `dim E_I = |I| ≥ 1` | §1.8 is in the `E ≠ 0` case |
| F05 contract: intersection number | `C=X=Spec k`, `ι=id`, `a=1`; `C=ℙ¹`, `a=𝒪(1)` | `0` (`intersectionNumber_one`); `χ(𝒪(1))−χ(𝒪)=2−1=1` | defined beyond curves; usual degree on a curve |
| F06 locators | A.2, A.3, Cor. 9.3 | LS lines 4245, 4250 sit between page markers 91 (4232) and 92 (4314); 4013 (p. 87) to 4030 (p. 88 starts at 4025) | p. 91, p. 91, pp. 87–88 |

## Ownership and overlaps

- `Stab(H)` is now imported from HeightsRationalPointsAndObstructions §5.2. That roadmap is a new-roadmap
  pull request earlier in the merge order and already supplied §§1.6–1.7 here, so no new dependency edge is
  added. A search of the open heads and main for translation and scheme-theoretic stabilizers found no other
  owner of the general construction.
  - AbelianSchemesAndArithmeticModuli §A3.10 proves the converse statement (no abelian translates implies ample).
  - The gap in SheafConvolutionOnAbelianVarieties is about family stabilizers.
  - Finiteness of the stabilizer of an ample divisor, good reduction, primitivity and the finite primitive
    quotients stay owned here, as the review asked.
- Local finiteness of analytic components is imported from ComplexKahlerGeometry K3 §3.4 on main ("locally
  finite irreducible components", "locally finite global component decomposition"). It is not restated.
- No section, layer or target was renumbered or deleted, so no id that other roadmaps cite changed. The
  overlaps report lists no other pull request that changes this roadmap and no dropped id.
- Ownership against open pull requests was checked through the `roadmaps grep/show` tools, for the objects
  touched by this round only.

## Notes for the maintainer

- The new citation HeightsRationalPointsAndObstructions §5.2 depends on that pull request keeping §5.2
  "Scheme-theoretic stabilizers" under that number.
- Only `README.md` and `sources.toml` changed. No Lean name changed, so no other roadmap is affected.
- No source text was copied. No new source was fetched, and nothing was added to `needs-references.toml`.
- Nothing suspicious was found in the review text.
