# Design report — DESIGN-FinitenessAndDualityOfGroups

Deliverables: `packages/FinitenessAndDualityOfGroups/design/README.md` (the design, in README form),
`packages/FinitenessAndDualityOfGroups/design/plan.json` (49 targets in 9 layers, no gaps) and
`packages/FinitenessAndDualityOfGroups/sources.toml` (only `cited_for` updated to the design's
numbering; `sources check` reports 0 problems).

Pins: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti
`2fd255d997f47c0b5d834ee416c7015d55444ce5`.

## What the design covers

Nine layers, named by their mathematics and ordered by the dependency chains:

1. **Finiteness types of groups** (1.1–1.8): a module criterion over any ring (pseudocoherence via
   directed colimits of `Ext`), the types `FP_n`, `FP_∞`, `FP`, `FL` on pinned pseudocoherence and
   `IsFPD`, change of coefficients, low degrees, the Bieri–Eckmann–Brown criterion (a)–(e) with exact
   degree bounds, finite index, extensions and products, amalgams/HNN/free groups.
2. **Cohomological and homological dimension** (2.1–2.8): `cd_R`, `hd_R` via `leastENatBound`;
   projective-dimension and Tor characterizations; `hd ≤ cd`; BE73 Prop. 2.1, Thm 4.2 and Cor. 4.3
   over `R`; subgroups (including `cd_R G ≤ cd_R H` at invertible index, which the rational-vanishing
   consumer needs); extensions; directed unions (`hd` = sup; countable chains `cd ≤ sup + 1` by the
   telescope sequence); amalgams; finite subgroups and torsion; comparison with the pinned profinite
   invariant.
3. **Tensor induction of complexes and Serre's theorem** (3.1–3.2).
4. **Virtual cohomological dimension and virtual finiteness** (4.1–4.4): `vcd`, its behaviour, the
   vanishing of rational cohomology above `vcd`, virtual types, finite homological type.
5. **Geometric dimension and Eilenberg–Ganea** (5.1–5.3).
6. **Duality and Poincaré duality groups** (6.1–6.6): definition over `R`, consequences, the
   criterion (with and without finiteness), Poincaré duality groups and orientation character,
   BE74 Thm 3.4, inheritance, closed aspherical manifolds.
7. **Hattori–Stallings ranks and Swan's theorem** (7.1–7.5), including Brown1974 Appendix A
   Theorem 7.
8. **Euler characteristics** (8.1–8.8): Wall's finiteness lemma, Brown1974 Theorem 1, `χ_ℚ` and the
   naive `χ̃`, Theorem 3 and the Euler characteristic of groups of finite homological type, twisted
   coefficients, extensions, actions on acyclic complexes (amalgams, HNN), denominators.
9. **Complete resolutions and Farrell cohomology** (9.1–9.5).

### Changes against the target, and why

- **Two Euler characteristics, not one.** Target 6.3 defined `χ(G) = Σ(−1)ⁱ dim Hᵢ(G, ℚ)` for any
  group with finite rational homology, and 6.8 checked `χ(G) = 1/|G|` for finite groups. These
  contradict each other: for `G = ℤ/2`, the rational sum is `1`. The design keeps `χ_ℚ` (rational
  homology, 8.3) and `χ` (Brown's, for finite homological type, 8.4) apart, proves they agree on
  torsion-free groups, and pins the convention with this witness.
- **Denominators (target 6.7) narrowed, with a Part II.** Brown's Corollary 1 of Theorem 5 for all
  groups of finite homological type rests on Brown1974 Theorem 2′ (Smith theory: a `p`-group acting
  on a finite-dimensional complex with finite mod-`p` homology) and on Serre's multiplicative
  induction with acyclic fixed sets; Brown1974 line 337–342 records that the chain-complex analogue
  of the needed divisibility is false, so a chain-level route does not exist. No roadmap owns
  classical Smith theory (searched: the only "Smith theory" roadmap is the étale-sheaf
  SheafTheoreticSmithTheory). 8.8 states the bound for virtually torsion-free groups with a proper
  cocompact action on an acyclic complex, where it follows from 8.7; the general theorem is the
  first item of the proposed Part II.
- **`cd ≤ hd + 1` for countable groups (target 2.2) moved to the Part II.** Its proof needs that a
  countably generated flat module over a noncommutative ring has projective dimension `≤ 1`
  (Govorov–Lazard). Mathlib's `Module.Flat` is for commutative rings only, and Tau Ceti's Lazard
  (`Algebra/Category/ModuleCat/Flat/FilteredFree.lean`) is commutative. The countable directed-union
  bound of target 2.3 is kept, with a flatness-free route (telescope sequence plus Shapiro), and it
  gives `cd_ℤ ℚ = 2` (checked: `H²(ℚ, ℤ) ⊇ Ext¹(ℚ, ℤ) ≠ 0`).
- **Products on Farrell cohomology (target 7.2) moved to the Part II.** They need a complete diagonal
  approximation into a completed tensor product, and no target of this roadmap uses them; 9.5
  compares with Tate cohomology through long exact sequences and the identification in positive
  degrees, without the cup product.
- **Complete resolutions from pinned Gorenstein-projective objects.** The triage assumed that the
  pinned totally acyclic complexes require finitely generated terms. That is
  `CochainComplex.IsTotallyAcyclic` (`TotallyAcyclic/Basic.lean`); pinned Tau Ceti also has
  `CochainComplex.IsTotallyAcyclicProjective` and `CategoryTheory.isGorensteinProjective` in any
  abelian category (`TotallyAcyclic/Abelian.lean`), the splice criterion
  `CochainComplex.isTotallyAcyclicProjective_splice`, the Frobenius structure
  `CategoryTheory.GorensteinProjective.exactStructure_isFrobenius` and the comparison
  `TauCeti.ExactStructure.CompleteResolution.homotopyEquiv`. So Layer 9 needs neither the open
  GorensteinHomologicalAlgebra pull request nor the fallback the triage described. Layer 9 is stated
  for any `G` with a finite-index subgroup of finite `cd_R`, of which finite `vcd` is the case `ℤ`.
- **Duality definition and natural-number subtraction.** Defining the duality map for all `k` with
  `n − k` in `ℕ` would read `n − k = 0` for `k > n`; 6.1 states bijectivity for `k ≤ n` and vanishing
  for `k > n`. BE74 Theorem 3.4 (6.4(b)) is stated with all three clauses of the source's convention
  (`k ≤ n` isomorphisms, `Hᵏ = 0` for `k > n`, `Hⱼ = 0` for `j > n`). Its proof in BE74 takes finite
  generation from the natural-duality case (lines 314–316); I checked that BE73 Theorem 4.6's
  argument uses only vanishing statements and so runs on the abstract isomorphisms, and that the
  orientation character is forced to be `sgn` (the alternative gives `0 ≅ ℤ`). The route records
  both.
- **Over `R`.** Duality-group theory is stated over `R` with "flat over `R`" for "torsion-free"
  (Bieri1981, waived). Each `R`-form was checked against the `ℤ` proof: 6.2(e) flatness via the dual
  resolution and induced modules; 6.5(c) via the argument of BE73 Prop. 1.8, where the scalar `u` with
  `g·e_N = u e_N` satisfies `(u − 1)D_N = 0`, hence kills `Hₙ(N, D_N) ≅ R`, so `u = 1`. Serre's
  theorem, `vcd` and `χ` stay over `ℤ` (no readable `R`-form).
- **`SL₂(ℤ)`.** No roadmap proves `SL₂(ℤ) ≅ ℤ/4 ∗_{ℤ/2} ℤ/6` (FreeGroupsAndLimitGroups §4.8 uses it
  as an example; ModularCurvesPartII §15.2 proves a different, principal-level amalgam). The Checks
  of 4.1, 8.4, 8.7, 8.8 and 9.4 are stated for the amalgam itself; the Layer 8 Examples paragraph
  says that it is `SL₂(ℤ)` without making it a target. FuchsianOrbifolds is not a supplier: the value
  `−1/6` of `ℤ/2 ∗ ℤ/3` is compared with its orbifold value in a Check, with no dependency.
- **Surface groups.** Target 5.6 asked for closed surfaces of genus `≥ 1`; there is no supplier of
  asphericity for genus `≥ 2`. 6.6 states the theorem for closed aspherical smooth manifolds (with
  AlgebraicTopology §§6.3–6.4, 8.7 and ClassifyingSpaces Stage 4 item 17); the Checks use the torus,
  the Klein bottle and `ℤⁿ`.
- **Serre's theorem route.** Pinned Tau Ceti has tensor induction of representations and a
  sign-free tensor induction of complexes used in characteristic two
  (`RepresentationTheory/Tensor/Induction/Resolution.lean`). Serre's theorem over `ℤ` needs the
  Koszul-signed version; 3.1 owns it (a Check shows the sign-free model is not a chain map).
- **Flat dimension.** `hd_R` is characterized by Tor-vanishing, not flat dimension, because
  `RG`-flatness is not available in Mathlib for noncommutative `RG`.

## Notions moved down from later roadmaps

None. Every supplier is on main or earlier in the merge order (CohomologyOfGroups at 318 is the
latest).

## Ownership against open work

Searched by object with `roadmaps grep` (main and 468 open roadmap pull requests at their heads) and
in the board packages:
- finiteness types (`FP_n`, `FP_∞`, `FL`): hits only in unrelated senses (finite presentation of
  modules, `FL` as a field name);
- "duality group": only Completed/ProfiniteProPGroups, which says profinite duality groups are not
  built;
- Eilenberg–Ganea / geometric dimension of groups: none;
- `vcd`: uses only (ArithmeticKTheory, PosetHomotopyAndSubgroupComplexes, GeometryOfNumbersAndQuadraticArithmetic,
  BordismFormalGroups, ArithmeticDynamics), none defines it for discrete groups;
- Farrell / complete cohomology: BordismFormalGroups (profinite Morava stabilizer groups, a
  continuous theory) and GorensteinHomologicalAlgebra (modules over rings, excludes groups);
- Swan's theorem (rational form for `ℤG`): NoncommutativeAndEquivariantIwasawa uses the pinned
  `ℤ_p[Δ]` form for `K₀`, not the rational/HS-rank form; no other owner;
- tensor induction of complexes with signs: ArithmeticGaloisRepresentations §7.1 (continuous
  representations, not complexes), QuadraticFormInvariants (Evens norm in characteristic two);
  no owner of the signed complex version;
- Wall's finiteness lemma (algebraic): no owner;
- `SL₂(ℤ)` as an amalgam: no owner (see above).
`roadmaps overlaps FinitenessAndDualityOfGroups` reports that no roadmap of this name exists on
main or in an open pull request; there is no second copy and no dropped id.

No declaration name is proposed for a `Suggested.lean` (the design stage has none); the proposed Lean
names live only in `plan.json`, none is the fully qualified name of a declaration in another
roadmap, and the README backticks no name of this roadmap's own.

## Proposed Part II

**FinitenessAndDualityOfGroups, Part II** (Smith theory and the finite subgroups of groups of finite
homological type), starting where this roadmap stops (Layers 4, 8 and 9):
- classical Smith theory for `p`-groups acting on finite-dimensional semi-simplicial complexes with
  finite mod-`p` homology (Brown1974 Theorem 2′, lines 243–250 and 327–333), and Brown's Theorem 2
  for finite group actions with orbit-type decomposition (lines 224–326);
- Serre's multiplicative induction of an acyclic free complex to an acyclic complex with finite
  stabilizers and acyclic fixed sets (Brown1974 lines 637–651);
- Brown1974 Theorems 5–6, Corollaries 1–3 of Theorem 5 (the denominator theorem for all groups of
  finite homological type), and §7 (the `p`-fractional part);
- the Govorov–Lazard theorem over noncommutative rings and `cd_R G ≤ hd_R G + 1` for countable `G`;
- complete diagonal approximations and cup products on Farrell cohomology, with the comparison with
  the Tate cup product of CohomologyOfGroups §4.7(a);
- (if a roadmap supplies ends of groups) the Stallings–Swan theorem and duality groups of dimension one.

## Gaps

None: every prerequisite is a pinned declaration, a section of a roadmap on main or earlier in the
merge order, or an earlier target. `plan.json` has an empty `gaps` list.

## Sources

| key | status | used |
|---|---|---|
| `Serre1971Bourbaki` | certified (Numdam) | read lines 26–362; locators at lines 40–42, 55–58, 63–67, 77–86, 214 |
| `BieriEckmann1973` | certified (GDZ, OCR) | read lines 40–700; Definition 1.1 through Theorem 4.6 and §5.1 |
| `BieriEckmann1974` | certified (GDZ, OCR) | read in full (lines 30–355) |
| `Brown1974` | certified (GDZ, OCR) | read lines 38–760 and 1255–1360 (§§1–6, Appendix A) |
| `Brown1975` | certified (GDZ, OCR) | read in full (lines 5–269) |
| `Bieri1981` | waived (settled) | cited by locator only |
| `BrownGTM87`, `Farrell1977`, `EilenbergGanea1957`, `Wall1961`, `Serre1971Prospects` | uncertified (settled) | cited by locator only |

I tried one new source, Evens, *A generalization of the transfer map in the cohomology of groups*
(Trans. AMS 108, 1963; DOI 10.1090/S0002-9947-1963-0153725-1), for the signed tensor induction of
3.1. The sources service found no legal source (the AMS landing page is on a host in no licence
class). I did not cite it: 3.1 cites Brown1974 lines 643–651 (Serre's multiplicative induction),
Serre1971Prospects n°1.7 and BrownGTM87 §VIII.3, and the construction is specified in full in the
README. No text is requested in this run, and `needs-references.toml` is not left in scratch.

OCR caveats: Brown1975 lines 84–86 (statement (i) of Theorem 2) and BieriEckmann1974 line 291
(condition (ii) of Proposition 3.2) are garbled in the extraction; I read them from context (the proof
at Brown1975 lines 150–176 and the use at BieriEckmann1974 lines 305–323) and stated them in my own
words.

## Citation check

`roadmaps resolve` on the README lists three leads, all expected:
- `CohomologyOfGroups §4.6` (line 135): CohomologyOfGroups is a board design
  (`packages/CohomologyOfGroups/design/README.md`, merge-order position 318), not yet on main or in
  an open pull request. Every section cited (§§1.2, 1.4, 1.5, 3.2, 3.4–3.6, 4.6, 5.2, 6.2, 6.3) was
  read there. Its latest review asks for changes to the content of §5.1 and §6.5, not to its
  numbering, and neither section is cited here.
- `BieriEckmann1974, §3.3` and `BrownGTM87, §VIII.6`: source keys with a section sign, which the tool
  reads as roadmap names.

The tool could not check Lean names outside TauCetiRoadmap on this host. I checked every backticked
Mathlib and Tau Ceti name in the README against the pins by grepping their declarations (a script
over the pinned trees); every one exists, and the namespaces of the less common ones
(`TauCeti.groupCohomology.map_subtype_id_comp_corestriction`,
`CategoryTheory.isGorensteinProjective.ext_eq_zero`, `CochainComplex.isTotallyAcyclicProjective_splice`,
`HomotopyGroup.bijective_hurewicz`, `TauCeti.WedgeSum.isEilenbergMacLaneSpaceOne_circle`,
`Representation.nonempty_equiv_of_character_eq`, `TauCeti.exists_linearEquiv_comp_fst_eq_comp_snd_comp`,
`TauCeti.groupHomologyPiMultiplicativeIntExteriorPowerEquiv`) were read in their files.

## Dependency check

```
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2200 edges, 0 problem(s)
```

No UPWARD or CYCLE line. Suppliers: CohomologyOfGroups (318), SchemeKTheoryOperations (38),
EtaleCohomologyFoundations (44), and on main ClassifyingSpaces, AlgebraicTopology,
FreeGroupsAndLimitGroups, ProfiniteCohomology (through the pinned invariant). Consumers:
MotivicStructuresInModuliOfCurves (349) and PosetHomotopyAndSubgroupComplexes (open pull request).

## Adversarial pass

One row per statement; values are computed, not asserted.

| statement | instances tried | values computed | result | change |
|---|---|---|---|---|
| Conv. finiteness index | `ℚ`, `R ≠ 0` | `R` cyclic over `Rℚ` (FP_0); augmentation ideal not f.g. (not FP_1); shifted model makes FP_0 ⇔ `ℚ` f.g., false | index = pseudocoherence index | witness added |
| Conv. duality map | `ℤ`, `D = R`, `e = [t]` | `x ↦ x(t)` via back-face cap `y ∩ [g] = y(g)` (CohomologyOfGroups §4.6) | consistent with §4.6 | witness added |
| Conv. HS rank | `|G|` unit, `P = R·e` | `r_P([g]) = |[g]|/|G| = 1/|C_G(g)|` | not `δ_[1]` | witness added |
| Conv. Euler characteristics | `ℤ/2`, `ℤ` | `χ_ℚ(ℤ/2) = 1`, `χ(ℤ/2) = 1/2`; `χ_ℚ(ℤ) = χ(ℤ) = 0` | target conflated them | split into `χ_ℚ`, `χ` |
| Conv. Farrell indexing | `ℤ/2`, `M = ℤ` | `Ĥ⁰ = ℤ/2`, `Ĥ⁻¹ = ker(×2) = 0`, `Ĥ¹ = 0`, `Ĥ² = ℤ/2`; shifted model `Ĥ⁰ = 0` | fixed | witness added |
| 1.1 module criterion | `ℚ` over `ℤ`; `k` over `k[x₁,…]`; `M = 0` | projections `ℚ → ℚ/(1/i!)ℤ` nonzero in colim; `Hom(k, A/(x₁..xᵢ)) = 0`, `Hom(k,k) = k` | f.g. ≠ f.p. detected | none |
| 1.2 types | trivial group; `ℤ`; zero ring; `ℤ/2` | `0→R→R→0`; `0→Rℤ→Rℤ→R→0`; zero ring all FL; `ℤ/2`: FP_∞ (noetherian), not FP over ℤ | consistent | zero ring recorded |
| 1.3 base change | `ℤ/2` over `ℚ` vs `ℤ`; `𝔽_p` | FP over `ℚ`, not over `ℤ`; resolution stays exact (ℤ-split) | no descent | none |
| 1.4 low degrees | `ℚ`, `F_∞`, zero ring, `F₂`, normal closure of `b` | not FP_1 over `R ≠ 0`; FL over zero ring; terms `R, RG², 0`; `H₁` free of infinite rank | nontriviality needed | `[Nontrivial R]` on (b) |
| 1.5 criterion | `n = 0`; `ℚ`, `M_i = R[ℚ/(1/i!)ℤ]`; `(1 − 1/j!)_j` | `(M_i)^ℚ = 0`, `(colim)^ℚ = R`; element in kernel but not in `I·∏` | degree bounds exact | none |
| 1.6 finite index | `ℤ/2 × ℤ ⊇ ℤ` over `ℤ`, `ℚ` | FP_∞ yes, FP no over `ℤ` (cd ⊤); FP over `ℚ` | FP does not go up | none |
| 1.7 extensions/products | `ℤⁿ`; `ℤ/2 × ℤ`; `ℤ/2 ≀ ℤ` | FL by tensor product; FP_∞; lamplighter FP_1 with non-f.g. kernel | no converse | none |
| 1.8 amalgams | `ℤ/4 ∗_{ℤ/2} ℤ/6`; `BS(1,2)`; `n = 0`, `n = ⊤` | `ℕ∞`: `0 − 1 = 0`, `⊤ − 1 = ⊤`; FP_∞ in both examples | subtraction junk harmless | stated in prose |
| 2.1 cd/hd | `1`, `ℤ`, zero ring, `ℤ/2` | 0; 1 (`H¹(ℤ,R) = R`); zero ring 0 for all; `cd_ℤ ℤ/2 = ⊤` | zero ring degenerate | consequences assume `R` nontrivial |
| 2.2 hd ≤ cd, FP | `ℤⁿ`; `ℚ`; `ℤ/2`; zero ring | `Hⁿ(ℤⁿ,Rℤⁿ) ≅ R`; `hd ℚ = 1 < cd ℚ = 2`; `(ℤ[ℤ/2])^{ℤ/2} ≠ 0`, `Hᵏ = 0` for `k>0`, cd ⊤ | "largest k with Hᵏ(G,F)≠0" undefined over the zero ring | (b) restated as a bound; (d) assumes `R` nontrivial |
| 2.3 subgroups | `ℤ/2 × ℤ ⊇ ℤ` over `ℤ`, `ℚ`; `2ℤ ≤ ℤ` | `1` vs `⊤`; index 2 unit over `ℚ` ⇒ `cd_ℚ ≤ 1`; `1 = 1` | hypotheses needed | none |
| 2.4 extensions | `ℤⁿ`; `ℤ/2 × ℤ`; Klein bottle over `𝔽₂` | `Hₙ(ℤⁿ,R) ≅ Λⁿ Rⁿ ≅ R`; `⊤ + 1 = ⊤`; HNN: `1 − (−1) = 0` mod 2 ⇒ `H²(K,𝔽₂) = 𝔽₂` | equality where claimed | none |
| 2.5 directed unions | `ℚ`; free of countable rank; `ℤ²` as union of cyclic subgroups | `hd ℚ = 1`, `cd ℚ = 2` via `Ext¹(ℚ,ℤ) = Hom(ℚ,ℚ/ℤ)/ℚ ≠ 0`; bound 2 vs true 1; sup `1 < hd ℤ² = 2` | `+1` attained; directedness needed | Check replaced (S₃ was non-discriminating) |
| 2.6 amalgams | `F₂`; `ℤ/4 ∗_{ℤ/2} ℤ/6` over `ℚ`, `ℤ`; `BS(1,2)` | 1; `max(0,0,1) = 1`, `⊤`; 2 | sharp in examples | none |
| 2.7 torsion | `ℤ/2` over `ℤ[1/2]`, `ℤ/6`; `ℤ/6` over `ℤ[1/2]`; zero ring | 0; `H²(ℤ/2,ℤ/6) = (ℤ/6)/2 = ℤ/2 ≠ 0` ⇒ ⊤; `R/3R ≠ 0` ⇒ ⊤ | "unit", not "nonzero" | witness recorded |
| 2.8 profinite comparison | `ℤⁿ`, finite, `1` | `Hⁿ(ℤⁿ,ℤ/p) = ℤ/p` ⇒ both `n`; both ⊤; both 0 | inequality, universes `.{0}` | none |
| 3.1 tensor induction | `H=1`, `G=ℤ/2`, `F = R·x` deg 1; `F=(Rx→Ry)`; contractible `F` | `s(x⊗x) = −x⊗x`; `d(x⊗x) = y⊗x − x⊗y`, sign-free swap gives `ds' = −s'd`; length `2 = 1·2` | sign needed | sign Check added |
| 3.1(f) stabilizers | core element on basis tensors | `t_i⁻¹gt_i` fixes a basis element of a free `H`-set only if `= 1` | `K ∩ core = 1` | none |
| 3.2 Serre | `ℤ/2 × ℤ ⊇ ℤ`; Klein ⊇ `⟨a,t²⟩ ≅ ℤ²`; `ℤ ⊇ dℤ` | ⊤ vs 1; 2 = 2; 1 = 1 | torsion-free needed | none |
| 4.1 vcd | finite; `ℤ/2 × ℤⁿ`; amalgam; `⊕ℤ/2` | 0; n; map to `ℤ/12` (`×3`, `×2`, compatible on `ℤ/2`: `2↦6`, `3↦6`), kernel free of index 12; ⊤ | consistent | none |
| 4.2 behaviour | `ℤ/2 × ℤ`; subgroup `ℤ/2` | `1 = 0 + 1`; `vcd 0 < 1`, `cd` ⊤ for both | virtual torsion-freeness needed for the bound | wording fixed |
| 4.3 rational vanishing | `ℤ/2 × ℤ` over `ℚ`, `𝔽₂`; finite | `1 = 1`; `Hᵏ ⊇ Hᵏ(ℤ/2,𝔽₂) ≠ 0` all `k`; `0 = 0` | index hypothesis needed | none |
| 4.4 finite homological type | finite; amalgam; `ℤ/2 × ℚ` | yes; virtually FL; `H₁(ℚ) = ℚ` not f.g. | consistent | none |
| 5.1 gd | `1`, `F_S`, `ℤⁿ`, finite | 0 (point); 1 (wedge); `n` (product CW, pinned `cwComplexProd`); ⊤ | consistent | none |
| 5.2 cd ≤ gd | `T²`; presentation complex; finite | resolution `0→Rℤ²→(Rℤ²)²→Rℤ²→R→0`; FP_2; none finite-dim | consistent with 1.4 | none |
| 5.3 Eilenberg–Ganea | `ℤ³`, `ℤ²`, finite | `gd ≤ 3 = cd`; bound 3 vs true 2; ⊤ | `n − 1 ≥ 2` used for `π₁` and Hurewicz | route records `n ≥ 3` |
| 6.1 duality groups | `ℤ`; finite `|G|` unit; zero ring | `x ↦ x(t)`; `M^G → M_G` with inverse `|G|⁻¹Σg`; every group duality of every dim with `D = 0` | `ℕ` subtraction would make `Hᵏ ≅ H₀` for `k > n` | vanishing clause for `k > n` |
| 6.2 consequences | `ℤ`; `F_r`, `r ≥ 2`; finite | `Rℤ/(t−1) ≅ R` trivial; `coker(RF → RF^r)` infinite-dim; `R·Σg` | `R` nontrivial needed | hypothesis added |
| 6.3 criterion | `ℤⁿ`; `ℤ ∗ ℤ²`; finite over `ℤ` | criterion holds; MV: `H⁰(1,ℤG) = ℤG ↪ H¹`; fails FP | vanishing condition needed | Check over-claimed FL, corrected to FP |
| 6.4 Poincaré duality | `ℤⁿ`; Klein bottle over `ℤ`, `𝔽₂`; finite; free | `H₀(K,ℤ_w) = ℤ/(−1−1) = ℤ/2 = H²(K,ℤ)`, orientable model `ℤ`; orientable over `𝔽₂`; finite iff unit; free iff rank 1 | orientation witnessed | all three clauses of BE74 (3.1) stated; f.g. route recorded |
| 6.4(b) orientation | alternative `w ≠ sgn` | `0 = H⁰(G, ℤ_{sgn·w}) ≅ Hₙ(G, ℤ_sgn) ≅ ℤ` | contradiction ⇒ `w = sgn` | route added |
| 6.5 inheritance | `ℤⁿ⁺¹`; Klein; `ℤ/2 × ℤ` | `D = R ⊗ R`; `t` acts by −1; not duality over `ℤ` | torsion-free needed in (b) | none |
| 6.6 aspherical manifolds | torus; Klein bottle; `S²` | orientable; non-orientable; trivial group PD of dim 0, not 2 | asphericity needed | surfaces of genus ≥ 2 not used (no supplier) |
| 7.1 HS rank | `RG`; trivial module; restriction to `1` | `δ_[1]`; `1/|C_G(g)|`; `|G| = [G:1]·1` | `[RG,RG] = span(g − hgh⁻¹)` checked both ways | none |
| 7.2 character formula | `RG`; trivial; `G = 1` | `|G|[g=1] = |C(1)|·1`; `1 = |C(g)|/|C(g⁻¹)|`; rank | consistent | none |
| 7.3 Swan rational | `(ℤG)²`; trivial `ℤ` over `ℤ/2`; `G=1` | `m = 2`; char 1 at generator, `ℚ` not free; `ℚ^m` | `m ∈ ℕ` from `dim (ℚ⊗P)^G = rank/|G|` | none |
| 7.4 Swan mod p | `ℤG`; trivial over `ℤ/p` | `m = 1`; `𝔽_p` dim 1 vs `𝔽_pG` dim `p` | projectivity needed | Check replaced (unverifiable existence claim) |
| 7.5 Brown Thm 7 | finite regular; `ℤ`, `t ↦ λ`; trivial `ℤ` | `K^Γ ≅ KΓ`; dim 1 for all λ; `V^Γ = 0` vs `r·dim = 1` | projectivity needed | mod-`p` and rational Swan suffice for Case 1 (checked against lines 1321–1355) |
| 8.1 Wall lemma | contractible `F→F`; `k[x₁,…]`; f.g. resolution | `D = 0`; no `D` (k not f.p.); itself | noetherian needed | none |
| 8.2 Brown Thm 1 | `ℤ/2`, `C = ℤG`; trivial `ℤ`; free circle | `2 = 2·1`, `L(s) = 0`; `1 ≠ 2`; `0 = 2·0` | projectivity needed | none |
| 8.3 χ_ℚ, χ̃ | `ℤ`, `F_r`, `ℤⁿ`; finite; `ℚ` | `0`, `1 − r`, `Σ(−1)ᵏ C(n,k) = 0`; `χ_ℚ = 1`; `χ_ℚ(ℚ) = 0` | `χ_ℚ` blind to finite groups | split from `χ` |
| 8.4 χ | finite; `ℤ/2 × ℤ`; amalgam | `1/|G|`; `0/2 = 0`; `χ_ℚ(K)/12` with `K` free of rank 2 ⇒ `−1/12` | agrees with 8.7 | none |
| 8.5 twisted | `ℤ`, all λ; `F₂`; `ℤ/2` | `0 = 0`; `−1`; `1 ≠ 1/2` | FP needed | stated for every field (Thm 7) |
| 8.6 extensions | `ℤ/2 × ℤ`; `F₂ × F₃`; Klein | `(1/2)·0`; `(−1)(−2) = 2`; `0` | virtual torsion-freeness needed | none |
| 8.7 equivariant | amalgam; `ℤ/2 ∗ ℤ/3`; `F_r`; `BS(1,2)` | `1/4 + 1/6 − 1/2 = −1/12` (reversed sign `11/12`); `−1/6`; `1 − r`; `0 − 0` | orientation characters handled by `χ_ℚ(T; ℚ_ε) = χ_ℚ(T)` | none |
| 8.7 orientation lemma | `T` torsion-free, `ε ≠ 1` | `H_*(ker ε) = H_*(T) ⊕ H_*(T, ℚ_ε)`, `χ_ℚ(ker ε) = 2χ_ℚ(T)` ⇒ twisted = `χ_ℚ(T)` | holds | none |
| 8.8 denominators | amalgam; finite on a point; `ℤ/2 × ℤ` on the line | `12·(−1/12) = −1`, subgroups of order 4, 3; `1`; `2·0` | narrowed from target (Smith theory) | Part II proposed |
| 9.1 Gorenstein projective | finite `G`, field; `H = G`; `G = ℤ`, trivial `R` | all modules; projective; pd 1 not projective, so not Gorenstein projective | `Ext¹_G(Z, Q) = 0` via `⊕RG = Coind(⊕RH)` at finite index | none |
| 9.2 complete resolutions | `ℤ/2`; finite cd; trivial group | periodic `(1∓s)`; contractible; contractible | uniqueness via stable iso (Schanuel) | none |
| 9.3 Farrell cohomology | `ℤ/2`, `ℤ`; `M = RG`; `G = ℤ` | `ℤ/2, 0, 0, ℤ/2`; 0; 0 | consistent with 9.5 | none |
| 9.4 comparison | `ℤ/2 × ℤ`; amalgam; `ℤ/2` at `n = 0` | HNN: `0→Hᵏ⁻¹(ℤ/2)→Hᵏ→Hᵏ(ℤ/2)→0` ⇒ `ℤ/2` (k≥2); `ker(ℤ/4⊕ℤ/6→ℤ/2) ∋ (1,1)` of order 12; `ℤ → ℤ/2` onto, not injective | iso only above `n` | Check uses `n = 0` (computable) |
| 9.5 Tate | `ℤ/2`, `ℤ`; `G = 1`; induced | `ℤ/2,0,ℤ/2,0`; 0; 0 | consistent with Conventions witness | none |

Context checks (standing hypotheses in scope): `[Nontrivial R]` is in the hypotheses of 1.4(b), 2.2(d),
2.7, 6.2 and the PD Checks; `[H.FiniteIndex]` in 1.6, 2.3(b,c), 3.2, 6.5, Layer 9; `G : Type` (so
`R = ℤ` typechecks with Mathlib's single-universe `groupCohomology`) in 2.8, Layers 3–5, 8 and 6.6;
virtual torsion-freeness in 4.2 and 8.6; finite homological type of `G` and of every stabilizer in
8.7.

Generality checks: every statement over `R` in the README is over `R` in `plan.json`; the integral
statements (Serre, `vcd`, `χ`, BE74 Thm 3.4, Eilenberg–Ganea, Swan) are integral in both. Layer 9 is
more general than the target (any finite-index subgroup of finite `cd_R`), with finite `vcd` as the
instance.

## Suspicious text

None found in any fetched page, roadmap, review or source extraction.
