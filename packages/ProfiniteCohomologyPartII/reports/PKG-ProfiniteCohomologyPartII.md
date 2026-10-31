# PKG-ProfiniteCohomologyPartII: report

Deliverables: `packages/ProfiniteCohomologyPartII/README.md`, `Suggested.lean`, `metadata.toml`,
`sources.toml`, and the `gaps` list of `packages/ProfiniteCohomologyPartII/design/plan.json` (no other
key of `plan.json` changed; checked by comparing the parsed JSON before and after).

Inputs read: the accepted design `design/README.md` and `design/plan.json` (66 nodes, 15 supplier
requests, 12 source issues). There is no `design/review.json` and `reports/` was empty; the accepted
review is embedded in `plan.json` under `review` (status accepted, 2026-10-19) and `reviewProvenance`.
Its follow-ups (the `upstreamNotes`: an integral gauge statement for DGAInfinity Layer 8, alignment of
ClassFieldTheory's local duality with the Tau Ceti implementation, reuse of the Tau Ceti Heisenberg
criterion) are applied: the first is declared as a supplier gap, the second is consumed directly from
Tau Ceti (now at the pin), the third is cited in 1.6.

## Headline theorems

| Headline theorem | Status | Lean name |
|---|---|---|
| Dwyer's criterion for definedness (HW Prop. 2.2, Cor. 2.3(1)), trivial coefficients in any discrete commutative ring, any topological group | stated | `masseyDefined_iff_exists_lift` |
| Dwyer's criterion for zero-membership (HW Cor. 2.3(2)) | stated | `masseyContainsZero_iff_exists_lift` |
| The Bogomolov multiplier of the derived subgroup `U¹` of `Uₙ₊₁(𝔽_p)` vanishes (Michailov Thm 3.1; HW Prop. 4.1 input) | stated | `bogomolovMultiplier_superdiagonalSubgroup_two_eq_bot` |
| Refined lifting through `P_(r,s)` at every local field, archimedean included (HW Prop. 5.3 + the archimedean case) | stated | `refinedLocalLifting` |
| Local Massey vanishing for `𝔽_p`, every local field, `n ≥ 3` | stated | `localMasseyVanishing` |
| Rank-one twisted refined lifting at every local field (local step of HW Thm 7.4) | stated | `twistedRefinedLocalLifting` |
| A defined triple Massey product over `ℚ` with `ℤ/8` coefficients not containing zero (HW Thm 7.5) | stated | `exists_masseyDefined_not_masseyContainsZero_zmod_eight` |

Every headline theorem is statable at the pins and stated. Definitions added only to state them:
`DefiningSystem` (with fields `entry`, `continuous_entry`, `entry_castSucc_succ`, `entry_mul`),
`DefiningSystem.value`, `MasseyDefined`, `MasseyContainsZero`, `bogomolovMultiplier`,
`IsTwoBoundary`, `IsLocalField`, `triangularCorner` and the instance `triangularCorner.normal` (a
one-term proof, `Subgroup.normalClosure_normal`, needed for the quotient group). All have real bodies;
none mentions `sorry`.

Not headlines, and kept as README targets: the strict cochain DGA and its comparison with
`continuousCohomology` (0.1–0.2), representative independence (0.4), the twisted Dwyer correspondence
and class criteria (9.5–9.6), and the finite stabilizer computations of Layers 2–6. Their carriers
(DGAInfinity's DG algebras and DG categories) are not in the pinned libraries; none is an end theorem.
The global Massey vanishing theorem over number fields (HW Theorems 1.3, 5.1, 7.4) is outside the
roadmap's scope (homogeneous spaces and Brauer–Manin), so it is not a headline here.

## What the README could not support from the suppliers, and the gaps

- **Characteristic-`p` vanishing.** The design cited `HigherLocalFieldsAndHigherClassFieldTheory:HL.2`
  for `cd_p(Γ_K) ≤ 1` when `char K = p`. No roadmap of that name exists on main, in the merge order,
  in the open roadmap pull requests (checked with `roadmaps list` and `roadmaps grep`) or among the
  board packages (it is only mentioned in `packages/FunctionFieldArithmetic/README.md`). No roadmap
  states the theorem as a target: ClassFieldTheory mentions `cd_p G_K = 1` in characteristic `p` only
  as a remark (main, `TauCetiRoadmap/ClassFieldTheory/README.md` line 1307); ArithmeticGaloisDuality
  §R02.3.2 states `cd_ℓ(G_v) = 1` only for completions of global function fields, which would need the
  structure theorem for local fields of characteristic `p`. Declared as
  **gap:char-p-galois-h2-vanishing** against ProfiniteCohomology, Layer 9 (Galois interface): for
  every field `K` of characteristic `p`, `H²(Γ_K, ℤ/p) = 0`. The README cites the fact through HW,
  p. 19 (which cites Koch, Theorem 9.1).
- **Integral gauge.** DGAInfinity Layer 8 plans matric Massey products but states no independence of
  representatives over a general ring (its gauge statements are over `ℚ`-algebras). Declared as
  **gap:integral-gauge-massey-independence** against DGAInfinity, Layer 8, as the design's request
  did.
- Both gaps are in `plan.json` `gaps` and in the README under the supplier subsections as
  `What <Supplier> must provide (gap:<slug>): …`.

## Notions moved down from later roadmaps

None. Every supplier named in a `*Needs:*` line or contract is on main (ProfiniteCohomology,
DGAInfinity, ProfiniteProPGroups, ClassFieldTheory) or earlier in the merge order
(ArithmeticGaloisDuality, InverseGaloisAndArithmeticFundamentalGroups, K2SymbolsBrauer). The only
later roadmap named, HeightsRationalPointsAndObstructions, appears in Downstream consumers.

## Corrections to the design

1. **HL.2 replaced** by the ProfiniteCohomology gap above (the cited roadmap does not exist).
2. **IG.4 node attributions corrected.** The design attributed Sha kernels
   (`finite-galois-localization`), finite Poitou–Tate (`restricted-poitou-tate`) and Grunwald–Wang
   (`grunwald-wang-boundary`) to InverseGaloisAndArithmeticFundamentalGroups §IG.4; at the head of its
   pull request IG.4 imports them from ArithmeticGaloisDuality §§R02.3.0d, R02.4.5a and R02.4.5b, which
   are now cited directly. IG keeps §IG.4.1 (*Finite abelian-kernel obstruction and pullback*) and §IG.4.2
   (*Twisting abelian-kernel solutions*, *Two independent cyclic degree-eight lifts*).
3. **Local duality** is consumed from Tau Ceti at the pin
   (`TauCeti.ClassFieldTheory.dualityMap{0,1,2}_kummerCoeff_bijective`, stated on the explicit
   low-degree model, `TauCeti.ClassFieldTheory.h2MuEquivZMod`); the design's request was against a
   later commit, which is now the pin (Tau Ceti `a91d3aa`). Likewise all-degree Shapiro and
   corestriction (`TauCeti.ContinuousCohomology.isIso_shapiroMap`, `corestriction_res`) and the
   Heisenberg criterion (`TauCeti.ContCohomology.explicitCup11_eq_zero_iff`).
4. **M.10 descent made local.** The design (following HW) descends along the global field cut out by
   the diagonal characters and the completions above `v`. The local field `K′` cut out by the local
   diagonal characters has degree dividing `(p − 1)^{n+1}`, so the twisted refined lifting holds for
   every local field (10.1, 10.3, `twistedRefinedLocalLifting`), with completions of number fields as
   a special case. Same proof, fewer inputs.
5. **Exact commutators generalized** from `𝔽_p` to every commutative ring (1.2): the identity
   `e_ij(t) = [e_ik(t), e_kj(1)]` and the factorization 1.1 hold over any commutative ring.
6. **Dwyer's criteria generalized** from finite `R` to every discrete commutative ring and from
   profinite to topological `Γ` (finiteness and compactness are not used).
7. **Boundary dual cyclic vanishing (5.6)** stated for every finite `G` with a homomorphism to
   `A × 𝔽_pˣ` (HW's situation), not only subgroups of `A × 𝔽_pˣ`.
8. **Mathlib name corrected.** The design's "parent `TopRep.resolutionX`" is right; the homogeneous
   cochain complex at the Mathlib pin is `TopRep.homogeneousCochains` in
   `RepresentationTheory/Homological/ContCohomology/Basic.lean`.
9. **Dropped process material.** The design's "independent negligible-class continuation" section
   (a design brief for a different roadmap, with an extraction-item table), its commit hashes and its
   "current library" remarks are not roadmap content and are not in the README. The design's
   "HeightsRationalPointsPartIIHomogeneousMassey" does not exist; Downstream consumers names the
   continuation of HeightsRationalPointsAndObstructions instead.
10. **Wording.** 6.3–6.5 are presented as finite models constructed here, motivated by HW Remark 3.4
    and not claimed to be HW's examples; the `n = 6` failure (6.1) as an explicit witness of the
    failure HW assert without details (Remark 4.17, §6 p. 24).

## Duplication sweep

Searched by object in the roadmaps on main and the open roadmap pull requests (`roadmaps grep`, 367
open pull requests at their heads, index of 2026-10-26T07:50:42Z, which covers every sibling checkout
listed in the brief), in the board packages, and in the pinned Mathlib and Tau Ceti (grep of
sources and `#check`).

| Object | Found | Action |
|---|---|---|
| Massey products, defining systems | DGAInfinity Layer 8 (generic, main) | imported; Layer 0 specializes; gap for integral independence |
| Dwyer's correspondence | nowhere (Tau Ceti only cites Dwyer in a docstring of `Cup/Heisenberg.lean`) | owned here |
| `(1,1)` cup vanishing ⇔ Heisenberg cochain | Tau Ceti `ContCohomology.explicitCup11_eq_zero_iff` | cited as the `n = 2` case of 1.6 |
| Ordered factorization of `Uₘ(A)` | K2SymbolsBrauer §6.14 (lexicographic, `m ≥ 3`) | cited; 1.1 kept as a variant (increasing-distance order) |
| Forward commutator inclusion, filtration | Tau Ceti `commutator_superdiagonalSubgroup_le`, `superdiagonalSubgroup` | imported; 1.2 proves only the reverse inclusion |
| Embedding problems with abelian kernel | Tau Ceti `FiniteEmbeddingProblem` (+ PPG Layer 5), IG §IG.4.1 | imported, nothing re-planned |
| Splitting torsor, connecting map = cup | ArithmeticGaloisDuality §R02.1.4 | imported (7.2–7.3) |
| Local Tate duality | Tau Ceti `dualityMap*_kummerCoeff_bijective` (CFT Layer 5) | imported (7.4–7.5) |
| `Ш^i`, finite Poitou–Tate, Grunwald–Wang | ArithmeticGaloisDuality §§R02.3.0d, R02.4.5a, R02.4.5b | imported (Layer 11) |
| `Ш¹(L, μ₈) ≅ ℤ/2` for the degree-64 field | a Check in ArithmeticGaloisDuality §R02.4.5b, not a target | 11.4 kept as the target for the specific `L`, citing the alternative |
| Independent cyclic-eight lifts, twisting | IG §IG.4.2 | imported (11.1, 11.9) |
| Bogomolov multiplier, exterior square `⋏` | nowhere (the hits for "Bogomolov" are the height-theoretic Bogomolov conjecture; "exterior square" hits are linear-algebra exterior powers) | owned here |
| Outer exponent, cyclically trivial `H¹`, two-boundary subgroup | nowhere | owned here |
| Characteristic-`p` `cd_p ≤ 1` | nowhere as a target | gap against ProfiniteCohomology Layer 9 |
| Shapiro, corestriction, `cor ∘ res` | Tau Ceti at the pin | imported |

Removed or re-attributed relative to the design: the HL.2 supplier (nonexistent), the three IG.4
attributions (now ArithmeticGaloisDuality), the ClassFieldTheory request (now consumed from Tau Ceti),
the Shapiro/corestriction request (now Tau Ceti). No target of the design existed elsewhere as the same
object; nothing else was deleted. No declaration of `Suggested.lean` reuses the fully qualified name of
a declaration of another roadmap (namespace `TauCetiRoadmap.ProfiniteCohomologyPartII`).

## Elaboration

Command: `lake env lean <abs path>/packages/ProfiniteCohomologyPartII/Suggested.lean`, run from the
content checkout. Imports: `Mathlib`,
`TauCeti.LinearAlgebra.Matrix.GeneralLinearGroup.UpperUnitriangular.Nilpotent`,
`TauCeti.LinearAlgebra.Matrix.GeneralLinearGroup.UpperTriangular.Basic`,
`TauCeti.FieldTheory.Galois.AbsoluteGaloisGroup.Basic` (all object files present; nothing built).

Outcome: no errors; exactly **7** warnings, all `declaration uses \`sorry\`` (lines 94, 112, 139, 171,
188, 220, 240), one per headline theorem. No other message. No `set_option`, no sorry'd data, 244 lines.

`#check` comparison: a scratch file with `#check @name` for all 21 declarations (including the four
structure fields and the instance) was elaborated once. Every declaration carries its binders in its
own signature (the file has no `variable` block), so no hypothesis was dropped. The elaborated types
match the README statements: Dwyer's criteria quantify over a topological group and a discrete
commutative ring with `2 ≤ n`; the local theorems over `K : Type` with `IsLocalField K`, `Fact p.Prime`,
`1 ≤ r`, `1 ≤ s`, `r + s + 1 = n`; `bogomolovMultiplier` lands in
`Submodule ℤ (groupCohomology (Rep.trivial ℤ G (ℚ ⧸ zmultiples 1)) 2)`. Changes made after the
comparison: the instance `triangularCorner.normal` was added (the quotient by a `def` normal closure
does not find `Subgroup.normalClosure_normal`), and `IsLocalField` was moved to the Layer 8 section to
follow the README order.

Library names: every backticked library identifier of the README (103 names) was checked by `#check`
at the pins, except three whose modules have no object file, checked in the source instead:
`TauCeti.ContCohomology.H1pi_eq_zero_iff_exists_smul_sub_eq` and `explicitH2CyclicEquiv`
(`RepresentationTheory/Homological/ContCohomology/FiniteCyclic.lean`, lines 94 and 381) and
`TauCeti.transvectionUnit_mem_upperTriangularGroup`
(`LinearAlgebra/Matrix/GeneralLinearGroup/UpperTriangular/Transvection.lean`, line 34). One wrong name
was found and fixed (`ContinuousCohomology.homogeneousCochains` → `TopRep.homogeneousCochains`).
`roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.

## Dependency check

```text
$ tauceti-roadmap … gate --depcheck packages/ProfiniteCohomologyPartII/README.md --name ProfiniteCohomologyPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 641 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The full gate run on a scratch copy of the four files reported
`set_option=0 blob=0 latex=0 … readme-ids-missing=0 empty-sections=0 round-labels=0 … depcheck=0
metadata=0 … source-material=0`, failing only `git` because the scratch copy is not a repository.

## Sources

Fetched through the sources service: HW (arXiv:1904.06512v2, certified), Michailov
(arXiv:1308.3408v2, certified), Moravec (arXiv:1203.3190v1, certified); Dwyer 1975 recorded as
uncertified (paywalled, cited by Theorem 2.4). Every locator was read in the cached texts (HW pages
1–31, Michailov §§1–3, Moravec §§2–4). A request for Serre's *Galois Cohomology* was generated and then
withdrawn (the characteristic-`p` fact is cited through HW, p. 19), so no `needs-references.toml` is
left and no text is missing. The twelve source corrections of the design (E1–E12) were each re-read at
their locators and confirmed; they are in the README's "Corrections to the printed sources".

Ownership against open pull requests: checked against all open roadmap pull requests through the
tool's index. No suspicious instruction was found in any fetched text, issue or design file.

## Adversarial pass

Computations were done in a scratch Python script (own code; exhaustive where the group is small) and
by hand; the outputs are reproduced in the values column.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conventions: differential | trivial `Γ`, `q = 0, 1, 2` | `d` on `C^q = R` is `Σ_{i=0}^{q+1}(−1)^i = 1` for odd `q`, `0` for even `q`; `H⁰ = R`, `H^q = 0` | holds | Check added to 0.1 |
| Conventions: cup translation | `Γ = ℤ/2` on `𝔽₉` by `i ↦ −i`, `a(σ)=1`, `b(σ)=i` | `(a∪b)(σ,σ) = −i`, untranslated `i` | translation needed | Check |
| Conventions: Leibniz sign | `Γ = ℤ/3`, `𝔽₃`, `f = g = δ_σ` | `(f ∪ dg)(σ,σ,σ) = 2 ≠ 0` | sign `(−1)^r` needed | Check |
| Conventions: commutator | `[e₀₁(1), e₁₂(1)]` over `𝔽₅`; `[e₀₂(1), e₂₄(1)]` over `𝔽₃` | `e₀₂(1)`; `e₀₄(1)` | matches `xyx⁻¹y⁻¹` | none |
| Conventions: Kraines sign witness | `n = 2`, `Γ = (ℤ/3)²`, `x, y` | value `−x∪y`; factor set `+x∪y`; `−x∪y ≠ x∪y` in char 3 | sign pinned | none |
| 0.2 comparison round trip | `q = 1` | `F(1,h) = f(h)` | holds | none |
| 0.3 defining systems | `n = 4`, zero inputs over `(ℤ/3)²` | `a₀₂ = x, a₂₄ = y`: value `−x∪y ≠ 0`; all-zero: `0` | product ∋ 0 but ≠ {0} | Check added |
| 0.3 `n = 1` junk | non-homomorphism `χ` | `MasseyContainsZero` true (empty value) | explains `2 ≤ n` in Dwyer | Check added |
| 0.3 `n = 3` definedness | `(x, 0, y)` over `(ℤ/p)²` | cups `x∪0 = 0∪y = 0`, defined; values `−(x∪v + u∪y)` | holds | Example |
| 0.4 representative independence, `n = 2` | gauge with `u₀, u₁` | value changes by `−d(u₀∪a₁₂ + a₀₁∪u₁ + u₀∪du₁)` | coboundary | Check rewritten |
| 0.4 integrality | `ℤ/8`, `n` arbitrary | `G⁻¹ = Σ_{k≤n} (−U)^k` since `Uⁿ⁺¹ = 0` | no division | none |
| 1.1 factorization | `U₃(𝔽₇)`, `(a,b,c) = (2,3,5)`; zero ring; `n = 0` | `(0,2)` entry `4 = c + ab ≠ 5`; one-point sets | parameters ≠ entries | none |
| 1.2 exact commutators | `U₅(𝔽₂)`, all `(r,s)` with `r+s ≤ 4` (Tau Ceti indexing) | subgroup orders `64, 8, 2, 8, 2, 2` = `|U⁽ʳ⁺ˢ⁾|` | holds | generalized to all commutative rings |
| 1.2 Michailov γ claim | `U₃(𝔽_p)` | `γ₂ = Z ≠ 1` | printed claim false (E11) | correction recorded |
| 1.3 adjacent quotient | `U₃(R)` products; zero ring; `n = 1` | adjacent entries add; kernel = corner; `A = U ≅ R` | holds | none |
| 1.4 centre = corner | `n ≥ 1`, any commutative `R` (hand proof via commuting with `e_{i,i+1}(1)`); `U₄(𝔽_p)` | centralizer forces columns `0..n−1` and rows `1..n` standard; `[e₀₂(t), e₂₃(1)] = e₀₃(t)` | holds | Lean uses `Subgroup.center` |
| 1.4 factor set | `U₃(𝔽₅)`, classes `(2,3)`, `(4,1)` | corner of `s(x)s(y)` = `2 = 2·1` | positive sign | none |
| 1.5 Dwyer correspondence | `n = 2` | lift unique (`U/Z = A`), value `−χ₀∪χ₁`, class `+χ₀∪χ₁` | holds | none |
| 1.6 / `masseyDefined_iff_exists_lift` | both directions by hand; zero ring; non-homomorphism `χ` | (⇒) noncorner entries multiply, kernel = ∩{entries = 0} open; (⇐) entries constant on open cosets; zero ring: both sides true; non-hom `χ`: both false | holds for every topological group and discrete `R` | generalized |
| 1.6 / `masseyContainsZero_iff_exists_lift` | corner entry `f` of a lift | `f(gh) = f(g)+f(h)+Σa₀ₘ(g)a_{mn}(h)` ⇔ `value = f(h) − f(gh) + f(g)` | holds; needs `n ≥ 2` (`n = 1` fails for non-homs) | none |
| 1.6 lift quantifier | `n = 3`, `(x,0,y)`, `p` odd | lift `a₀₂ = x`: value `−x∪y ≠ 0`; lift `a₀₂ = 0`: `0` | "every lift lifts" false | Check |
| Layer 1 examples | `Γ = ℤ/2` vs `ℤ/4`, `𝔽₂`, `U₃(𝔽₂) ≅ D₈` | element over `(1,1)` has order 4 (`02` entry of square `1`) | `χ∪χ ≠ 0` for `ℤ/2`, `= 0` for `ℤ/4` | none |
| 2.1 `B` dimension | `n = 2, 3` | `1`, `3` (`= 2n − 3`) | holds | none |
| 2.2 action formula (4.2) | `n = 5`, `𝔽₃`, every adjacent generator, all 7 basis vectors | all agree with direct conjugation | holds | none |
| 2.3 boundary module | `n = 3, 4, 5` | `{02,03,13}`; `{02,03,14,24}`; `13 ∉` | holds | none |
| 2.4 sparse conjugation (4.8) | `𝔽₃`, `n = 3..6`, 40 random `(a,Q)` each | 1360 entries all agree; `S⁻¹` formula agrees; `M₀₃ = −1 = 2` example | holds | none |
| 2.5 reversal | 20 random pairs in `U₅(𝔽₂)`, `U₅(𝔽₃)`; `U₄(𝔽₃)`; `U₃` sparse | `τ² = id`, multiplicative; `τ(e₀₂(1)) = e₁₃(2)`; `τ(S)₀₂ = 1` | holds | none |
| 3.1 support | `E₀₂E₂₄`, `E₂₄E₀₂` | `E₀₄ ∈ N₄`; `0` | holds | none |
| 3.2 exponent bound | `p = 3, n = 6`, `g = 1+E₀₂+E₂₄+E₄₆` | `g³ = 1 + E₀₆ ≠ 1`, `g⁹ = 1` | strictness of `2p^m > n` shown | none |
| 3.3 outer exponent | `C₁, C₂, C₄, C₆`; `Q₈` | `1, 1, 4, 3` (computed); `Q₈`: `i³ = −i ~ i`, so `1` | definition determines the value; differs from exponent | Q₈ Check added |
| 3.4 small-rank powering | `p = 3, n = 6`, 50 random `Q`; `p = 2, n = 2..6`, 30 random `Q` each | `Q⁴ = Q + Q₀₂Q₂₄Q₄₆E₀₆`, `e₂₆(t)Q⁴e₂₆(t)⁻¹ = Q`, `t = Q₂₄Q₄₆`; `D² = O² = 1`, `Q⁻¹ = OD` | holds; literal value `1` at `p = 2` (E3) | correction recorded |
| 4.1 Bogomolov multiplier | abelian `H`; `C₂×C₂` | `0`; `H² = ℤ/2`, cyclic restrictions `0`, not in `B_Bog` | cyclic tests insufficient | none |
| 4.2 exterior square | abelian; `U₃(𝔽_p)` | `H⋏H = 1`; `κ̃(e₀₁(a)⋏e₁₂(b)) = e₀₂(ab)` | holds | none |
| 4.3 duality | `C₂×C₂` | `H⋏H = 1`, `B_Bog = 0`, Schur multiplier `ℤ/2` | duality is with `ker κ̃` | none |
| 4.4 / 4.5 / `bogomolovMultiplier_superdiagonalSubgroup_two_eq_bot` | `n ≤ 1` (trivial), `2` (cyclic), `3` (`𝔽_p³`), `4` (nonabelian) | `[e₀₂(1), e₂₄(1)] = e₀₄(1) ≠ 1` at `n = 4`; Michailov Thm 3.1 needs `2 ≤ (n+1) − 2`, i.e. `n ≥ 3`, lower `n` trivial | holds for all `n` | Lean states all `n` |
| 4.5 scope | `n = 3` | `H²(𝔽_p³, ℚ/ℤ) ≅ 𝔽_p³ ≠ 0` | only `B_Bog` vanishes | Check |
| 5.1 cyclic kernel | cyclic `G`; trivial action; `C₂²` on `B^∨`, `n = 4` | `0`; `0`; `ℤ/2` | not always zero | Check |
| 5.3 pointwise scalar | `T₀ = id` on `𝔽₂²`, `T = diag(1,0)` | `T(1,1) = (1,0) ∉ 𝔽₂(1,1)` | hypothesis at every vector needed | Check |
| 5.4 fixed second diagonal | `n = 3`, `𝔽₃`, `a = (1,1,1)`, `b = e₀₂+e₁₃`; `b = e₀₂`, `a₂ = 1` | `−b₀a₂+a₀b₁ = 0`, `M₀₃ = 0`; `M₀₃ = −1` | holds | none |
| 5.5 boundary generation | `𝔽₃`, `a₂ = 2` | printed factor gives `Q₀₃ = 1 ≠ 2` | parameter `a₂` (E5) | correction recorded |
| 5.6 boundary dual vanishing | `n = 4`, `p = 2`, `s = (1,1,0,1)`, `t = (1,0,1,1)` | boundary: 4 cyclically trivial cocycles = 4 coboundaries | holds | generalized to `G → A × 𝔽_pˣ` |
| 5.7 / HW Prop. 6.1 | exhaustive: `n = 4, p = 2` (16 `a`), `n = 5, p = 2` (32 `a`), `n = 4, p = 3` (81 `a`) | span of fixed-class images = `dim B^a` in all 129 cases | holds | none |
| 6.1 length-six failure | `p = 2, n = 6, a = (1,1,0,0,0,1)`, all `4096` candidates | `dim B^a = 6`; 1036 with commuting lift; span 5; all `(2,5)` coordinates 0; hand derivation of the `(0,3),(1,4),(3,6),(1,5)` equations | holds | none |
| 6.2 nonzero cyclic kernel | same `s, t` on `B^∨` | 8 cyclically trivial cocycles, 4 coboundaries | `H¹_cyc ≅ 𝔽₂` | none |
| 6.3 five-dimensional module | all four products `N_sN_s, …` | all zero | representation of `C₂×C₄×C₂` | none |
| 6.4 explicit class `β` | 256 pairs, 16 elements, 32 `m` | cocycle on all pairs; cyclically trivial on all 16; no global `m` | `[β] ≠ 0` | none |
| 6.5 quartic cocycle `γ` | 256 pairs; `C₂` replacement | identity on all pairs; `γ(t²) = d + e`; `(1+t)(b+c) = d+e ≠ 0` | order four needed | none |
| 7.1 `P_(r,s)` / `IsTwoBoundary` | `n = 3, r = s = 1`; `n = 4, r = 2, s = 1` over `𝔽₃`; `n = 4, r = s = 2` | 3 coordinates; `|P| = 81 = 3⁴`; `[e₀₂(1), e₂₄(1)] = e₀₄(1)` | abelian iff `r+s ≤ n−1`; support set closed (cross terms only at the corner, `A³ = 0`) | none |
| 7.2 twisted boundary sequence | `α̃ = 1`; `C = ⊕_ℕ 𝔽₂` | `γ = 0`; non-continuous splitting cocycle (AGD Check) | finite domain needed (E1) | none |
| 7.3 connecting map | `ℤ/2` on `𝔽₂²` by `[[1,1],[0,1]]` | `γ(σ) = id`, `δ` an isomorphism `𝔽₂ → 𝔽₂` | holds | none |
| 7.4 easy local cases | `ℚ₂, p = 3`; `ℚ₇, p = 3`; `𝔽₂((t)), p = 2` | `μ₃(ℚ₂) = 1` ⇒ `H² = 0`; `H²(ℚ₇, ℤ/3) ≅ ℤ/3`; `0` (gap) | holds; lifts to `U` (E9) | supplier changed to gap |
| 7.5 nonsplit cancellation | sign variant, `p` odd | `δc = +o` gives obstruction `2o ≠ 0` | sign needed | Check |
| 7.6 retractions | `u = e₀ᵀ, v = eₙ`; invisible indices | `ρ` = corner entry; unchanged | row first (E10) | none |
| 7.7 stabilizer splitting | `𝔽₃`, `n = 4, r = 2, s = 1`, `u = (1,2,1,0,2)`, `v = (1,0,2,1,1)`; `n = 3` | `|S| = |Stab| = 2187`, `ρ̃` multiplicative; `S = {M₀₁ = M₂₃ = 0}` | holds | none |
| 7.8 / `refinedLocalLifting` (nonarch.) | `α̃ = 1`; `U¹` in place of `P` | trivial lift; implies local Massey vanishing | holds | none |
| 8.1 `C₂` pairing | trivial `𝔽₂`; free `𝔽₂[C₂]`; their sum | `H¹ = 𝔽₂`, `x∪x ≠ 0`; `ker t = im t` (orders 2, 2), `H¹ = 0`; `H¹ = 𝔽₂` | perfect | none |
| 8.2 `IsLocalField` | `ℚ`, `ℝ`, `ℂ`, `ℚ_p`, `𝔽_q((t))` | `ℚ` countable ⇒ not; others yes | definition determines the class | none |
| 8.3 / `refinedLocalLifting` (arch.) | `ℝ, p = 2` (`H² = 𝔽₂`); `ℝ, p = 3`; `ℂ` | nonsplit argument needed; trivial; trivial | holds | archimedean case added (E8) |
| 8.4 / `localMasseyVanishing` | `ℝ, p = 2, n = 2` | `⟨χ,χ⟩ = {χ∪χ} ≠ {0}` | `n ≥ 3` essential | Check |
| 9.1 Hom DG category | `N_i = R` trivial; rank one; `N_i = 0` | cochain algebra of 0.1; action `χ_iχ_j⁻¹`; zero Homs | holds | none |
| 9.2 `T(W)` | `R = ℤ/4`, `N₀ = ℤ/2`, `N₁ = ℤ/4` | `Hom(N₁, N₀) ≅ ℤ/2 ≠ R` | blocks not all `R` | none |
| 9.3 adjacent character | `a = 0`, conjugation by `(−u,1)` | `(a(g) + g·u − u, χ(g))` = `d⁰u` | sign fixed | none |
| 9.4 twisted corner | `𝔽₃`, `d₀ = −1, dₙ = 1` | corner negated | not central in `T` | none |
| 9.5 twisted Dwyer | `C₂`, `𝔽₃`, `N₀` sign | `d⁰1(σ) = −2 = 1`: coboundary system not over the zero character | fix cocycles (E2) | correction recorded |
| 9.7 rank-one boundary | `n = 3, r = s = 1` | summands `M₀₂, M₀₃, M₁₃` (3, not 4) | internal sum (E7) | correction recorded |
| 10.1 prime-to-`p` descent | `p = 2`; `ℝ, p = 3`; `M = ℤ/2` over `ℝ ⊂ ℂ` | `K′ = K`; `[ℂ:ℝ] = 2`; `H²(ℝ, ℤ/2) = ℤ/2 → H²(ℂ, ℤ/2) = 0` | needs `p`-primary `M` | made local |
| 10.2 / `triangularCorner` | `n = 0`; `𝔽₃`, `diag(−1,1,1)` on `1 + E₀₂` | trivial (no entry above diagonal); `1 − E₀₂` | normal, not central | instance added |
| 10.3 / `twistedRefinedLocalLifting` | trivial diagonal; `p = 2` (`T = U`); `ℝ`, `p` odd with sign | reduces to `refinedLocalLifting`; `K′ = ℂ` | holds; diagonal arbitrary | stated for all local fields |
| 11.1 cyclic-eight modules | orders; `e₀₁e₁₂e₀₁⁻¹` | `8⁴, 8³, 8`; `e₁₂e₀₂` | middle coordinate twisted | none |
| 11.2 dual boundary | quotient action | `e₀₁e₁₃e₀₁⁻¹ = e₀₃e₁₃`, `e₂₃e₀₂e₂₃⁻¹ = e₀₂e₀₃⁻¹`: trivial mod `e₀₃` | `μ₈²` with cyclotomic action | none |
| 11.3 Wang class | `v ≠ 2` (`(2/p)(−2/p)(−1/p) = 1`), `ℝ`, `ℚ₂` | `16` eighth power off 2; at 2 equal to boundary; globally `v₂(16) = 4`, `v_p(p⁴) = 4` | `w ≠ 0` | none |
| 11.4 kernel over `L` | `p = 17, q = 41` | quadratic subfields `ℚ(√17), ℚ(√82), ℚ(√1394)`; roots of `x⁸ − 16` generate `ℚ(√2), ℚ(√−2), ℚ(i)` | `[16] ≠ 0` in `Ш¹(L, μ₈)` | none |
| 11.5–11.6 invariant coordinates, no lift | restriction `([16],[1],[1])` | invariant; quadruple needs `s·a₁₂ = [16]a₁₂`, impossible with trivial `C`-action | holds | Check rewritten |
| 11.7 `Ш²` kernel | duality of finite groups | dual of a non-surjection is not injective | holds | none |
| 11.8–11.10 / `exists_masseyDefined_not_masseyContainsZero_zmod_eight` | local cups; `Ш²(ℚ, ℤ/8) = 0` | cups vanish locally and globally ⇒ defined; global lift excluded | holds | none |

Unused hypotheses (P3 notes, not findings): `refinedLocalLifting` and `twistedRefinedLocalLifting` carry
`1 ≤ r`, `1 ≤ s`; with `r = 0` the subgroup `P_(0,s)` still makes sense, but HW's range is kept.
