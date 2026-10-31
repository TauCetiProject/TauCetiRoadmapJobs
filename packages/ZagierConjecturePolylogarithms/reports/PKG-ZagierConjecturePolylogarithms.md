# PKG-ZagierConjecturePolylogarithms: report

Deliverables: `packages/ZagierConjecturePolylogarithms/README.md` (908 lines, six layers, 47 subsections), `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (six sources, all certified), and the top-level `gaps` list of `design/plan.json`. No other key of `plan.json` changed; `git diff` touches only the `gaps` array.

## Headline theorems

| Headline | Status |
| --- | --- |
| Weight-four Zagier theorem, existence: `r₂` explicit cycles with `Z₄ = q·ζ_F(4)`, `q ∈ ℚˣ`, every number field (GR Theorem 1.2) | **stated**: `zagier_four_exists` |
| Weight-four Zagier theorem, every family: `Z₄ ∈ ℚ·ζ_F(4)` for every family of explicit cycles (GR Theorem 1.2) | **stated**: `zagier_four_everyFamily` |
| Extension theorem `0 → B₄ → L₄ → Λ²B₂ → 0`, descent of the weight-four cobracket, cluster chain map (GR Theorems 1.14, 1.17, 6.1) | not statable: no carrier at the pins for `L₄(F)` (single and double symbols modulo the heptagon relation and its iterated one-parameter specializations) or for the rational pre-Bloch group |
| Realization of the combinatorial Lie coalgebra by motivic correlators; base-point change; depth reduction; periods of every explicit cycle (GR Theorems 1.13, 2.4, 2.6, Proposition 2.9) | not statable: no mixed Tate motives over a number field, no motivic fundamental groupoid of a punctured line, no framed mixed Hodge–Tate structures at the pins |
| Collision continuity of Hodge correlators (M20 Theorem 11) | not statable: no Hodge correlator tree integrals |
| Grassmannian configuration chain map with the corrected degree-eight identity; generic and residue-extended Chern cocycle (GR Theorems 7.6, 9.1) | not statable: no generic-configuration complexes, no `G₄(F)`, no real Deligne cohomology of the simplicial classifying variety |
| `K_{8−i}(F)_ℚ → H^iΓ(F,4)` and `L₄∘κ = λπ³ r_Bo` (GR Theorem 1.3) | not statable: no higher Quillen K-groups of a number field, no Borel regulator |

How the two stated headlines are written. The explicit cycle condition is Polylogarithms' universal test (README §3.2, §4.5 there). A raw sum `c` satisfies `IsCycle4 c` when `Σ aₓ b(x)⊗u(x) = 0` for every function `b` on `F` that satisfies the explicit weight-three relations (`TrilogRelationFunction`). By the quotient universal property this says the raw cobracket vanishes in `B₃(F)⊗U(F)`. `polylog`, `singleValued`, `unitVector`, `trilogCyclic` and `TrilogRelationFunction` restate the formulas of PolylogarithmFunctions and Polylogarithms in this namespace, so no fully qualified name is shared with another roadmap. `zagierDeterminantFour` is Polylogarithms §4.4's normalized period at `n = 4`. Its rows are indexed by `{w : InfinitePlace F // w.IsComplex}` and its exponent `4(r₁+r₂)` is written directly, with no natural-number subtraction.

## What the README could not support

Nothing depends on a missing text: all six sources were read through the sources service, and `needs-references.toml` was not created. Three statements are supported only conditionally, through supplier contracts declared as gaps:

- **gap:trilog-specialization-closure** (Polylogarithms §3.1) affects the inverse direction of §1.5 (`B₃(F) ≅ L₃(F)`). Through §1.5 it also affects the equivalence of `IsCycle4` with cycles of `Γ(F,4)` (§3.2), and so the existence headline. The every-family headline does not need it: the map from `B₃(F)` onto `L₃(F)` exists without it.
- **gap:mixed-tate-number-fields** (PeriodsAndSpecialValues PS.9.8–PS.9.9) affects §§3.8, 3.11, 3.13 and 6.3.
- **gap:punctured-line-path-torsors** (PeriodsAndSpecialValues PS.9.10) affects §§3.8 and 5.7.

## Ownership decisions and notions moved down

- **Framed mixed Hodge–Tate structures, the canonical real period (GR Theorem 8.3) and rigidity (GR Lemma 2.7)** are now §§3.6–3.7, owned here. The design sent them to "HodgeStructuresPartII:H.2", which exists nowhere (main, open pull requests or merge order). HodgeStructures is completed on main and owns mixed Hodge structures only (Layer L2). Searches for framed Hodge–Tate structures and for variations of mixed Hodge structure find no owner. MixedHodgeModulesAndIrregularHodgeTheory is only a board design, so it cannot be cited.
- **Scissors-congruence groups `A₂`, `A₃` and `a₂`** are now §5.5, owned here. The design asked K3BlochGroups for them, but K3BlochGroups states no scissors group, and no roadmap mentions scissors congruence.
- **SCALE (the `π³` coordinate adapter)** is now part of §6.2, owned here, using BorelRegulators §1.1's Tate coordinates. The design's request to BorelRegulators is dropped.
- **HOM** is supplied by Polylogarithms §2.2 (primitive Hurewicz isomorphism, rank filtration). The comparison into the acyclic flag complex is §4.4, because Mathlib's `CategoryTheory.ProjectiveResolution.lift` requires a projective target.
- **DELIGNE** is supplied by MotivicEtaleKTheory §§3.3–3.4, 7.1 and BorelRegulators §6.0a (universal Deligne class on `B·GL_b(ℂ)`). The levelwise simplicial totalization is part of §5.4.
- **MT-1** is retargeted from MotivesAndAlgebraicCycles MC.4 to PeriodsAndSpecialValues PS.9.8–PS.9.9, which already builds `MT(ℚ)` and `MT(ℤ)` and the Tate-Hom comparison PS.3.0.
- **IND** is no longer a request. §6.5 states the conditional transfer to inductive cycles.
- **No notion moved down from a later roadmap.** Polylogarithms (merge-order line 230), BorelRegulators (164) and PeriodsAndSpecialValues (203) all come after this roadmap's line (109). They are cited as suppliers, and the dependency check reports the roadmap as moved after Polylogarithms (output below). Polylogarithms' scope section states that this roadmap comes after it and that nothing there depends on it.

## Duplication sweep (removals and citations)

- The design re-derived the determinant step and said Polylogarithms' calibration was unusable. Polylogarithms §4.4 zagierPeriod_calibration, as written at its open head, has no isomorphism hypothesis, so §6.4 now cites it.
- Totally real case: §6.4 cites Polylogarithms §4.7 zagierExistence_totallyRealEven rather than proving it again.
- Explicit raw weight-four cycles and their universal test: cited from Polylogarithms §4.5. `IsCycle4` is only a restatement so the headline typechecks.
- Generic configurations `C_m(q)`, `∂`, `p`, Gale duality, projected and triple ratios: cited from Polylogarithms §§3.4–3.6. §4.1 keeps only the cutoff-four quotient, a variant that differs only in the cutoff.
- Decorated flags and the acyclic flag resolution are kept here. Polylogarithms' scope assigns decorated flags to this roadmap; its §3.4/§3.7 uses them at weight three. That is a direction question for Polylogarithms, outside this package.
- Single-valued polylogarithms, `D` and its five-term relation: cited from PolylogarithmFunctions. The rational pre-Bloch group comes from K3BlochGroups Layer 3, and the descent of `D` to `B₂` from Polylogarithms §2.1.
- Stasheff complexes: FukayaTheory (open pull request) has oriented associahedra as compactified disc moduli, a different object, noted in Scope. TauCeti's `AInfinity/Stasheff.lean` is about A∞ Stasheff identities, not the polytope.
- Pinned libraries: no polylogarithm, Bloch group, configuration complex, Hodge structure, motive or higher K-group exists in Mathlib or Tau Ceti at the pins (recursive grep). The Mathlib names cited were `#check`ed; `exteriorPower` was corrected to `ExteriorAlgebra.exteriorPower`, and `CategoryTheory.ProjectiveResolution` is now written in full.

## Corrections to the design

1. Supplier citations used internal labels (P.1–P.5, V.3, R.3–R.7, MC.4, MC.6, M.8, K.2, PS.9, H.2, NC.2). Each is now the real section of the cited roadmap at its head, and `roadmaps resolve` finds no unresolved citation or Lean name. AnabelianGeometryAndNonabelianChabauty and the nonexistent HodgeStructuresPartII are no longer cited.
2. The design wrote `r_Bo = 2r_Be`; BorelRegulators §6.2 states `r_Bo = −2r_Be`. Only the sign of `λ` changes.
3. The design used `T₃ = −r₆` as an identification. Polylogarithms §3.5 defines `r₆ = 18M₃` and explicitly supplies no identity between `r₆` and `Alt₆[T]₃`. §4.6 now uses only `δT₃ = −r₅∂ = −δr₆` (from GR (167)), which is all the chain identities need.
4. The design's presentation map `B₄^comb → B₄^ind` assumes every single-symbol relation of `L₄(F)` holds in the inductive group. GR only conjectures a comparison (p. 12). §6.5 now applies Polylogarithms §4.6's obstruction to the square with `C = ℚ[F]` (raw symbols), which commutes on generators, and uses Polylogarithms §4.5 for the transfer of existence.
5. The design's internal gaps FLAG-SIGNS, C8-SQUARE, LIFT and RES are now parts of the targets §4.3 (sign comparison), §4.8 (certificates in `Λ²b₂(3,8)` and `Λ²b₂(2,8)`), §5.7 (field-defined lift) and §§5.3, 5.9 (normal-crossing closure). Its supplier requests are either assigned to an existing supplier or declared as the three gaps above.
6. Source issues E01–E08 from the review are kept as mathematics at the relevant targets, without process wording: E01 in §4.7, E02 and E05 in §4.8, E03 in §5.7, E04 in §§3.4–3.5, E06 in §5.6, E07 in §5.8, E08 in §1.2.

## Elaboration

`lake env lean packages/ZagierConjecturePolylogarithms/Suggested.lean`, run from the content checkout, gives exactly **2** warnings, both `declaration uses 'sorry'` (lines 123 and 132), and no other message. The file has the single `import Mathlib`, no `set_option` and no sorry'd data.

Binder check: a scratch file with `#check @name` for all ten declarations elaborated once. Every elaborated type carries only its own binders (`[Field F]`, `[NumberField F]`, the family `c` and the hypothesis `hc`). They match the README statements, and nothing had to change. The same file confirmed `bernoulli 1 = −1/2`.

## Dependency check

```text
moved: ZagierConjecturePolylogarithms moved in the merge order from #108 to #229, right after its last supplier Polylogarithms (BorelRegulators, PeriodsAndSpecialValues also came after it); checked as moved (the worker moves it there when it submits)
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

## Ownership against open pull requests

Checked with `roadmaps grep` over main and all open roadmap pull requests at their heads. Searches were by object: associahedra/Stasheff, special derivations, scissors congruence, framed Hodge–Tate, variations of mixed Hodge structure, motivic/Hodge correlators, Goncharov–Rudenko, Grassmannian and cluster polylogarithms, decorated flags. Only the citations listed above were found. Board packages were consulted only for MixedHodgeModulesAndIrregularHodgeTheory, which is not citable.

## Adversarial pass

Numerical values were computed with a standalone implementation of `Liₙ`, `Lₙ` and `D` (disc series, the log expansion near `|z| = 1`, inversion outside). It reproduces `L₃(1) = ζ(3) = 1.2020569`, `L₃(−1) = −0.9015427 = −3ζ(3)/4`, `D(i) = 0.9159656` (Catalan), `L₃(2) = 1.0517998 = 7ζ(3)/8`, inversion of `L₃` and `L₄` to `10⁻¹⁵`, the five-term relation for `D` to `10⁻¹⁶`, and the sign change of `L₄` across the real axis.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `TrilogRelationFunction` is a true relation set (else `IsCycle4` is too weak and every-family false) | `L₃` on the 22-term relation at 5 random complex triples, at `(0.3,−1.7,2.5)`, `(1,1,1)`, `(2,2,2)`; three-term at `x = 2`, `0.3+2i` | residuals `≤ 6·10⁻¹⁵`; three-term `L₃(2)+L₃(−1)+L₃(1/2)−L₃(1) = 7·10⁻¹⁶` | holds | none |
| `singleValued 4` formula (B₁ = −1/2, Im for even n) | `z = 0`, `1`, `i`, `0.6±10⁻⁴i`, `1.7±10⁻⁹i`, `0.3+0.7i` and its inverse | `L₄(0)=0`, `L₄(1)=0`, `L₄(i)=0.98894`, `±1.8456·10⁻⁴`, `±6.48·10⁻¹⁰` (odd, continuous), `L₄(z)+L₄(1/z)=7·10⁻¹⁶` | holds | none |
| `zagierDeterminantFour` exponent and empty determinant | `ℚ`: `r₂=0`, `disc=1`; `ℚ(i)`: `r₁=0,r₂=1,|disc|=4`; `ℚ(√5)`: `r₁=2` | `π⁴ = 90ζ(4)`; prefactor `π⁴/2`; `π⁸/√5`; via `Matrix.det_isEmpty` the empty det is 1 | existence must carry `q ∈ ℚˣ` rather than equality | statement uses `q ≠ 0` (GR's equality is false at `r₂=0`) |
| every-family with zero or degenerate columns | column `[i]+[−i]` over `ℚ(i)`; zero column | `L₄(i)+L₄(−i)=0` gives `q=0`; zero column gives det 0 | allowed, `q ∈ ℚ` | none |
| `IsCycle4` versus numerical tests | `[1]`, `[2]`, `[x]+[x⁻¹]` over ℚ | `u(1)=0` so `[1]` is a cycle; `[2]`: `L₃(2)·ord₂(2)=1.0518 ≠ 0` so not a cycle although `L₄(2)=0` | predicate is not a period test | Check added (§6.4) |
| calibration §5.2 `ΣqL₂log²=0` on cycles | `[x]+[x⁻¹]`; `[1]`; non-cycle `[2+i]` | `0`; `0`; `D(2+i)·log²√5 = 0.51167·0.64757 = 0.331`; `L₄*(2+i)=0.14629` vs `(5/16)L₄=0.13939` | hypothesis needed and sufficient on the examples | Check added |
| `L₄*` formula (GR (191)) | `|z|=1`; `z=2` | `L₄*=5L₄/16`; `L₂(2)=L₄(2)=0` gives `L₄*(2)=0` | holds | none |
| specialization table (26) | `D₃₁(tu,v)`, `D₂₁(tu,v)`, `D₃₁(t⁻²u,t⁻²v)`, `(a,b)=(−2,−1)` | `S₄(v₀)`, `−S₃(v₀)`, `3S₄(u₀/v₀)`, `0`; GR p. 14 prints coefficient 1 (E08) | table correct | none |
| `δD₂₁` specialization at `x=tu` | direct expansion with `[1−v]₂=−[v]₂` | `[1−v₀]₂⊗(v₀/u₀) − [v₀]₂⊗u₀ = −[v₀]₂⊗v₀` | equals `δ(−S₃(v₀))` | none |
| reduction (29) at `a>0=b` | right side of (29) at `x=tu` | `[1−v₀⁻¹]+[1−v₀]−[1] = −[v₀]` by the three-term relation | matches table | none |
| `Q₄` consequence (33) | `x = −1` | `D₃₁(−1,1) = −2S₄(2)+S₄(−1)` | consistent | Check added |
| `D₂₁(2,3)` reduction | `x=2,y=3` | `1/2, 2/3, 3/2, 2, 4/3` | consistent | Check added |
| six-point function `Z` | `(0,1,2,3,4,5)` | `1/5`; without the minus `−1/5` | holds | none |
| flip identity §2.2 | `Δ₁₂=2, Δ₃₄=3, Δ₂₃=Δ₁₄=1` (Plücker satisfiable with `Δ₁₃Δ₂₄=7`) | `X=6`, `u(7)∧u(6)=δ[−6]₂ ≠ 0` | holds; zero map excluded | Check added |
| Stasheff counts | `K₂`, `K₃` | 5 vertices, 5 edges; `14−21+9−1=1` | holds | none |
| degree-eight identity (E05) | sign bookkeeping `Alt₈ g = −(Alt₇ g)∘∂` (zero-based), and the same for `p` | `Λ²B₂(R₇³∂)=(3/28)X`, `Λ²B₂(R₇²p)=−(1/84)(9X)=−(3/28)X`, sum `0`; with `+1/84` the sum is `(3/7)X` | holds given the review's numerical `X ≠ 0` and ratio `−9` | Check rewritten with explicit signs |
| `δT₃` versus `r₆` | `Alt₆` of a function of five vectors | `Alt₆ g = −(Alt₅ g)∘∂`, so `δT₃=−r₅∂`, while `δr₆=r₅∂` | sign opposite; no `T₃=−r₆` identity available | identification dropped |
| `a₃` normalization (E06) | `r₃=(1/15)Alt₆[T]` (G00 (7), PDF p. 9) versus `T₃=(1/5)Alt₆[T]` | `r₃ = T₃/3`, so G00's `(1/6)a′₃` built from `r₃` is `(1/18)a′₃` built from `T₃`; GR prints `1/2` with `T₃` | factor 9 | §5.6 uses G00's map |
| G00 triple ratio versus ours | `Δ(3,1,6)`, `Δ(3,1,4)` | both transpositions, the ratio is unchanged | same `T` | none |
| GR cross-ratio (135) versus Polylogarithms `r` | `r(1,2,3,4)=|13||24|/(|14||23|)` | identical to `(a−c)(b−d)/((a−d)(b−c))` | consistent | none |
| `r_Bo` versus `r_Be` | BorelRegulators §6.2 | `−2` (design `+2`) | sign only | corrected |
| `π`-power per column | exponent count | `π^{3d+d−4N}·π^{4(N−d)} = 1`; with `π²` per column a stray `π^{−d}` | `π³` correct | Check added (§6.2) |
| inductive transfer square (§6.5) | generators `[x]` | `q(a[x]) = [x]₃^ind⊗u(x) = b(p[x])` | commutes | presentation via `ℚ[F]` |
| §4.4 acyclicity, infinite field | `N=1` (any field); `𝔽₂, N=2` | coning always works for `N=1`; only 3 lines exist in `𝔽₂²` | infinite field needed for `N≥2` | Checks corrected |
| §5.10 rank-three vanishing | primitive degrees of `U(3)` | 1, 3, 5 (no 7) | the degree-7 class vanishes on `GL₃` | Check rewritten |
| context of Lean statements | `#check` of all 10 declarations | no section variables; binders as stated | holds | none |

## Untrusted text

No fetched page, roadmap or design text contained instructions; nothing suspicious to quote.
