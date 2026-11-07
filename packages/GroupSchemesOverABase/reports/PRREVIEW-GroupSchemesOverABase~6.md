# Review of GroupSchemesOverABase (pull request #1522 at c8d8937)

**Verdict:** needs changes

The nine findings of the previous review (at 72ebe87) are repaired; the check is finding by finding below. The worker's gate passes, `lake env lean` gives only the 15 `sorry` warnings, and the dependency check shows no UPWARD or CYCLE line. The new route for `d_s` in 5.3 is correct: I recomputed both its rank step and its root-count step. What remains is one P2 and six P3:

- **P2:** a second owner of Layers 1–2 appeared today. PurityForFlatCohomology's head restates `D_S(M)`, `IsMultiplicativeType`, `IsTorus`, the character sheaf and the largest subtorus, which it used to cite from here.
- **P3:**
  - a false sentence in the new 5.5 Check;
  - the route of the four non-affine inequalities in 5.3 uses 3.5, which needs `G` affine;
  - an unneeded injectivity hypothesis on `isKernel_diagonalizableMap`;
  - Tau Ceti declarations at the pin that prove the affine cases of 1.3, 1.4 and 3.5, and the reflection step of 5.3, are not cited;
  - ReductiveGroups' field theory is used in Layers 4–5 without citation;
  - one padding declaration, `isotrivial_component`.

## Repairs of the previous review (72ebe87)

- R01 (SchubertGeometry S3.1 and S7.1 dropped by the revision in #1224): **repaired.** README lines 74–76 now read "SchubertGeometry S3, first item, owns the associated lines `L(λ)` … and S7, first item, the divisor of the normalized extremal section"; also lines 174–175, 777, 798, 802 and 833. Both ids resolve to the same content on main (`TauCetiRoadmap/SchubertGeometry/README.md` lines 47 and 95) and at the head of #1224 (`### 3.1 … (S3.1)` at its line 450, which includes "Prove ampleness for strict positivity", and `### 7.1 Divisor valuations (S7.1)` at its line 982).
- R02 (2.4 Check on `X*(μ_n)`): **repaired.** Lines 409–411 read "`μ_n` over `ℚ` is diagonalizable and corresponds to `ℤ/n` with trivial action … The cyclotomic action is on the points `μ_n(ℚ̄)`". Line 404 now cites "SGA 3, Exp. X, 1.2 and 1.4" (sga3-10 lines 45 and 61).
- R03 (5.5 Check in characteristic `p`): **repaired**, with a new slip. Lines 745–750 now say that with class `ω`, "`G_s` is a non-split extension and still `(G_s)_affq ≅ 𝔾_a`", with the additive-polynomial argument, which I recomputed. The sentence added at its end is false for `dim A ≥ 2`: see R02 below.
- R04 (0.2 comparison without quasi-separatedness): **repaired.** Line 220 reads "Over a locally Noetherian base and for `G` quasi-separated"; the Scope says the same at line 66. This matches AlgebraicModuliForArithmeticGeometry §7.9 at the head of #853 (its line 9794: "P a quasi-separated group algebraic space").
- R05 (AbelianSchemesAndArithmeticModuli cited without a section): **repaired.** Lines 72–73, 171–172, 692–693, 711, 741 and 762 cite "A0.1" and "A4.1". These resolve at the head of #849: `### A0.1 Abelian schemes` (line 589) and `### A4.1 The integral Tate module` (line 1822, for `ℓ` invertible on `S`).
- R06 (1.1 against ModularCurves 0B): **repaired.** Lines 252–254 read "For `M` finite, `D_S(M)` is isomorphic, as a group over `S`, to the diagonalizable group `Spec_S O_S[M]` of ModularCurves 0B … and `D_S(ℤ/N)` to its `μ_N`". The Scope (61–64), the contracts (160) and the dependencies (344) follow. ModularCurves on main has this at lines 317–322.
- R07 (old ids GS4.2, GS7, GS8.5): **repaired.** Lines 1018–1019 give the mapping, and lines 1006–1014 name the three citing roadmaps. These are FlagVarieties on main (line 19), NeronModelsAndSemistableAbelianVarieties at the head of #852 (line 46) and SpringerResolutionAndCharacteristicCycles at the head of #1828 (line 10).
- R08 (no route for `d_s`): **repaired.** Lines 686–711 restrict the inequality to affine `G` and give a route. The route is correct (adversarial table, rows 21–23). Its *Needs:* line lacks two inputs, which are R05 and R06 below.
- R09 (two Check slips): **repaired.** Lines 934–936 read "`σ(2) = κ(−2) = [[2, 1], [−1, 0]]` has characteristic polynomial `(x − 1)²`". Lines 605–608 read "In characteristic `≠ 2` … (In characteristic `2`, `A[2]` is not smooth, and connected when `A` is supersingular.)" Both recomputed in the table.

## R01 (P2) — Layers 1–2 have a second owner: PurityForFlatCohomology §§7.13a–7.13e

**Location.** `TauCetiRoadmap/GroupSchemesOverABase/README.md` lines 30–33: "diagonalizable groups `D_S(M)` for finitely generated `M` (Layer 1); groups of multiplicative type of finite type, tori, character and cocharacter sheaves and isotriviality (Layer 2)". The Downstream consumers section (lines 1004–1019) does not name PurityForFlatCohomology.

**Claim.** This roadmap is the single owner of `D_S(M)`, of groups of multiplicative type and tori over a base, and of their character sheaf.

**Witness.** `TauCetiRoadmap/PurityForFlatCohomology/README.md` at the head of #1840 (8cbde9b), line 53, "states the theory of groups of multiplicative type over a base". Its §§7.13a–7.13e (lines 2081–2329) and its `Suggested.lean` lines 227–360 restate 1.1–1.4, 2.1–2.3 and 2.7 here, including `diagonalizableGroupMap_bijective`, `smooth_diagonalizableGroup_iff`, `IsMultiplicativeType` and `IsTorus`. Its head commit replaced its citations of this roadmap's §§1.3, 1.4, 2.1–2.3 and 2.7.

**Repair.** An object has one owner, the one earlier in the merge order. This roadmap is at line 48 of the candidate order and PurityForFlatCohomology at line 215, so Layers 1–2 stay here.

Add to Downstream consumers: "PurityForFlatCohomology §§7.13a–7.13e state diagonalizable groups, groups of multiplicative type and tori over a base, their character sheaf and the largest subtorus. These are 1.1–1.4, 2.1–2.3 and 2.7 here, which it consumes for its §§7.14–7.16 and Layer 8."

Then settle with that pull request's author that §§7.13a–7.13e return to citing these targets, as before its commit 8cbde9b. Only what this roadmap does not state stays there: its fpqc characterisation `isMultiplicativeType_iff_exists_fpqcCover` and its Cartier-dual criterion. Alternatively, add those two to 2.2 and 1.5 here and let it cite them too.

The two files also fix opposite conventions for the same object: `M : Type u` additive here, `M : TauCeti.FGCommGrpCat` multiplicative there. One owner removes that mismatch.

## R02 (P3) — the new 5.5 Check: supersingular does not give `F = 0` on `H¹(A_s, O)`

**Location.** README line 750: "For `A_s` supersingular, `F(ω̄) = 0` and `P = x^p`."

**Claim.** For a supersingular special fibre, Frobenius kills the class `ω̄`, whatever the basis vector `ω`.

**Witness.** On `H¹(A_s, O)`, `F` has rank `dim A_s − a(A_s)` (the Hasse–Witt rank). A supersingular abelian surface with `a`-number `1` has `F` of rank `1`, with `F² = 0`. For `ω̄ ∉ ker F`, `F(ω̄) ≠ 0`, the relation is `F²(ω̄) = 0`, and `P = x^{p²}`.

**Repair.** Write: "For `A_s` a supersingular elliptic curve, or more generally superspecial (`F = 0` on `H¹(A_s, O)`), `F(ω̄) = 0` and `P = x^p`. When `A_s` has `p`-rank `0`, `F` is nilpotent and `P = x^{p^m}` with `F^m(ω̄) = 0`, `m ≤ dim A`."

Tested on both cases: an elliptic curve with Hasse invariant `0` has `F = 0` and `P = x^p`; the surface above has `F² = 0` and `P = x^{p²}`.

## R03 (P3) — 5.3: the route of the four inequalities applies 3.5 to non-affine `G`

**Location.** README line 653: "Here `G` is smooth, separated and of finite presentation over `S`, with connected fibres." Lines 689–691: "prolong the torsion of a split maximal torus of the special fibre to finite étale subgroups (3.3) and take their centralizers (3.5)".

**Claim.** The stated route proves the inequalities for `ρ_ab`, `ρ_r + ρ_ab`, `ρ_n` and `ρ_u` for every `G` of Layer 5, affine or not.

**Witness.** 3.5 (line 553) is for "`G` smooth affine", and so is its source. SGA 3 XI §5 takes `G` as in XI 4.2 (sga3-11 line 1024), and 4.2 has "G lisse et affine" (sga3-11 line 819). The group of X 8.3 (generic fibre an elliptic curve, special fibre `𝔾_m`; sga3-10 line 1343) is not affine, so 3.5 does not apply to it.

**Repair.** Name an input for the non-affine case. One option is a target, in 3.5 or in 5.3, stating that for `H` finite of multiplicative type and `G` smooth, separated and of finite presentation, `Z_G(H)` is a closed subgroup scheme smooth over `S` (the fixed points of the conjugation action), with its locator; cite it in 5.3 for non-affine `G`. The other option is to restrict this route to affine `G` and state the non-affine one separately.

In the same sentence, the prolongation of the torsion subgroups is 3.1 (SGA 3 IX 3.6, where `G` is only smooth); 3.3, density, is the input for the centralizer of all the torsion being the centralizer of the torus. The Research context (lines 1023–1027) says only the `d_s` route needs `G` affine, which is not what the cited inputs give.

## R04 (P3) — `isKernel_diagonalizableMap` assumes an injectivity it does not need

**Location.** `TauCetiRoadmap/GroupSchemesOverABase/Suggested.lean` line 139: "theorem isKernel_diagonalizableMap {φ : N →+ M} (hφ : Function.Injective φ) :". README lines 295–296: "For an injective `φ : N →+ M`, prove … `isKernel_diagonalizableMap` (its kernel is `D_S(M ⧸ φ.range)`".

**Claim.** The kernel formula is stated for injective `φ` only. That is narrower than the source.

**Witness.** sga3-8 (SGA 3 Exp. VIII, editor's re-edition) lines 321–324: every exact `M′ → M → M″ → 0` gives an exact `0 → D(M″) → D(M) → D(M′)`, with no injectivity. Take `φ = 0 : ℤ → ℤ`: the kernel of `t ↦ 1` is `𝔾_m = D(ℤ ⧸ 0)`. The binder `hφ` occurs nowhere in the conclusion.

**Repair.** In Lean: `theorem isKernel_diagonalizableMap (φ : N →+ M) : ∃ h : …`, with the body unchanged. Tested on a scratch copy: the file elaborates with `sorry` warnings only, and the new statement applies to `φ = 0`. In the README, 1.4: "For every `φ`, prove `isKernel_diagonalizableMap` (SGA 3, Exp. VIII, 3.1 and its proof); for `φ` injective, prove `flat_surjective_diagonalizableMap` (3.2 a))."

## R05 (P3) — Tau Ceti declarations at the pin that prove the affine cases of 1.3, 1.4 and 3.5, and the reflection step of 5.3, are not cited

**Location.**
- README lines 140–150: the "From Tau Ceti" contract lists only `groupScheme`, `groupSchemeMap`, `cartierDualIso`, `AbelianVariety`, the two predicates and `IsMaximalTorus`.
- Line 285, the 1.3 route: "`O[M_tor]` is étale iff `|M_tor|` is invertible".
- Line 300, the 1.4 *Needs:* line.
- Line 555, the 3.5 *Needs:* line ("3.4").
- Lines 706–708, the 5.3 *Needs:* line, whose input is "(Humphreys, Theorem 1.12)".

**Witness.** In the pinned Tau Ceti:
- `TauCeti.DiagonalizableGroup.isShortExact_mapDomainBialgHom`: a short exact sequence of groups gives a short exact sequence of diagonalizable groups over every ring (`Algebra/AlgebraicGroup/DiagonalizableGroup/Exact.lean`, line 69).
- `TauCeti.MonoidAlgebra.etale_of_isUnit_card` (`Algebra/MonoidAlgebra/Etale.lean`, line 66).
- `BialgHom.smoothCommHopfAlgProperty_quotient_centralizerHopfIdeal` (`Algebra/AlgebraicGroup/DiagonalizableGroup/Centralizer/Smooth.lean`, line 290).
- `TauCeti.stabilizer_eq_closure_wallReflections` (`LinearAlgebra/RootSystem/FundamentalDomain.lean`, line 201).

**Repair.** Add these, with their files, to "From Tau Ceti" and to the *Needs:* lines:
- **1.3:** `TauCeti.MonoidAlgebra.etale_of_isUnit_card`; over a field, `TauCeti.MonoidAlgebra.smooth_iff_isUnit_card` (`Algebra/MonoidAlgebra/Smooth.lean`, line 37).
- **1.4:** `TauCeti.DiagonalizableGroup.isShortExact_mapDomainBialgHom` and `TauCeti.MonoidAlgebra.faithfullyFlat_mapDomainRingHom_of_injective` (`Algebra/MonoidAlgebra/FaithfullyFlat.lean`, line 31), as the affine case that base change globalises.
- **3.5:** `BialgHom.centralizerHopfIdeal` (`Centralizer/Basic.lean`, line 206) and `BialgHom.smoothCommHopfAlgProperty_quotient_centralizerHopfIdeal` for `H` diagonalizable in affine `G` over an affine base; `BialgHom.weylGroup` (`Normalizer/WeylGroup.lean`, line 93) for the rational points of `N/Z`.
- **5.3:** `TauCeti.stabilizer_eq_closure_wallReflections` with `RootPairing.exists_mem_dominantChamber` (`LinearAlgebra/RootSystem/Chamber.lean`, line 304), applied to the flipped root pairing on `X_*(T′)`. Humphreys 1.12 stays as the locator; the pinned theorem is the input.

## R06 (P3) — Layers 4–5 use ReductiveGroups' field theory without citing it, and the Scope omits Layer 8's relative multiplicative-type clause

**Location.**
- README lines 46–54: the Layer 8 Scope bullet.
- Lines 580–584: 4.1, "the fppf quotient sheaf `G/H` is represented by a scheme", with *Needs:* "SchemeAndStackFoundations §1.17" only.
- Lines 632–633: the 4.4 *Needs:* line is "4.2; Tau Ceti `TauCeti.HopfIdeal.IsMaximalTorus`".
- Lines 710–711: the 5.3 *Needs:* line.

**Witness.** In `TauCetiRoadmap/ReductiveGroups/README.md` on main:
- Layer 3 owns the fppf quotient `G/H` and its representability (lines 237–240).
- Layer 6 owns the radical (lines 467–470).
- Layer 7 owns the conjugacy of maximal tori and the root datum with its Weyl group (lines 628 and 644).
- Layer 8 extends "the field-level … multiplicative-type comparisons of Layers3–4" to these bases (line 1048).

**Repair.**
- **4.1:** add "For `G` affine this is ReductiveGroups Layer 3's quotient; 4.1 extends it to `G` of finite type, not necessarily affine." Add ReductiveGroups Layer 3 to *Needs:*.
- **4.4:** add ReductiveGroups Layer 6 (the radical) and Layer 7 (conjugacy of maximal tori) to *Needs:*.
- **5.3:** add ReductiveGroups Layer 7 (the root datum and Weyl group of the reductive quotient; `d_s = |Φ| + rank Φ`).
- **Contract:** list Layers 3, 6 and 7 under "From ReductiveGroups".
- **Scope:** add one sentence to the Layer 8 bullet: "Layer 8 extends the multiplicative-type comparisons of its Layers 3–4 to affine Noetherian bases as far as its constructions need; Layers 1–3 here state that theory over an arbitrary base and agree with it there."

## R07 (P3) — `IsMultiplicativeType.isotrivial_component` is `isotrivial` applied to `U`, with an unused hypothesis

**Location.** `TauCetiRoadmap/GroupSchemesOverABase/Suggested.lean` lines 198–205: "(U : S.Opens) (hU : IsClopen (U : Set S)) [ConnectedSpace U] : IsIsotrivial ((baseChange U.ι).obj G)". Also README lines 426–428 and module docstring lines 23–24.

**Claim.** It is a headline separate from `IsMultiplicativeType.isotrivial`.

**Witness.** `isotrivial` applied to the scheme `U` (connected, locally noetherian, with the stalks of `S`) gives the conclusion for every connected open `U`. `IsClopen` is unused: `U = 𝔾_{m,k} ⊂ 𝔸¹_k` is open, connected and not closed, and `G|_U` is isotrivial by 2.5.

**Repair.** Delete the declaration from `Suggested.lean` and from its docstring list. Tested on a scratch copy: the file elaborates without it. In the README, drop the backticked name, since the gate checks every backticked name of this roadmap's own, and write: "the restriction of `H` to every connected open subscheme is isotrivial (2.5 applied to it)".

## Verified sound

### Gate, build and dependency check

- **Worker's gate at c8d8937:** every check passes (`set_option=0 … sorry-data=0 … readme-ids-missing=0 … depcheck=0 … build=0 OK`).
- **My own run of the gate against the default order:** only `depcheck: NOT IN ORDER: GroupSchemesOverABase (insert it after its last supplier)`. The brief says this is not a finding. The candidate order lists the roadmap at line 48, after AlgebraicModuliForArithmeticGeometry (32), AbelianSchemesAndArithmeticModuli (41), InverseGaloisAndArithmeticFundamentalGroups (44), FiniteFlatGroupsAndIntegralPadicHodgeTheory (46) and NeronModelsAndSemistableAbelianVarieties (47).
- **Dependency check** with `--order` the candidate and `--movable`: `depcheck: 240 roadmaps, 2378 edges, 0 problem(s)`, with no UPWARD, CYCLE or `moved:` line.
- **Lean:** `lake env lean TauCetiRoadmap/GroupSchemesOverABase/Suggested.lean` gives 15 `declaration uses sorry` warnings (lines 79, 112, 118, 125, 132, 139, 175, 192, 200, 215, 231, 239, 249, 267, 279), nothing else, exit 0.
- **Folder and metadata:** nothing changes outside the folder (`git diff --stat origin/main...HEAD` without the folder is empty). `metadata.toml` is `topic = "math.AG"`. `Suggested.lean` is unchanged since 72ebe87.

### Signatures (23)

I put `#check @name` for all 23 declarations into one scratch copy and elaborated it once. Every binder the README states is present:
- `exists_identityComponent`: `[Smooth G.X.hom]`.
- `bijective_diagonalizableMap`: `[ConnectedSpace ↥S]`.
- `etale_diagonalizable_iff`: `[Nonempty ↥S]`.
- `IsMultiplicativeType.isotrivial`: `[ConnectedSpace ↥S] [IsLocallyNoetherian S]` and the stalk hypothesis.
- `bijective_baseChange_map_of_thickening`: `[IsClosedImmersion i] [Surjective i]`.
- `eq_of_eq_on_torsion`: `[IsSeparated Y.hom]`.
- `chevalley`: `[PerfectField k] [Smooth G.X.hom] [QuasiCompact G.X.hom] [ConnectedSpace ↥G.X.left]`.
- `affinization`: `[LocallyOfFiniteType G.X.hom] [QuasiCompact G.X.hom]`.
- `diagonalizable` and `diagonalizableMap`: `[AddGroup.FG]` on both groups.

No binder is lost and nothing changed, except the two repairs tested under R04 and R07.

### Library declarations opened at the pins (16, beyond the 23 checked)

- `TauCeti/LinearAlgebra/RootSystem/FundamentalDomain.lean`: `stabilizer_eq_closure_wallReflections` (201), `existsUnique_mem_orbit_inter_dominantChamber` (247).
- `TauCeti/LinearAlgebra/RootSystem/Chamber.lean`: `exists_mem_dominantChamber` (304).
- `DiagonalizableGroup/Exact.lean`: `isShortExact_mapDomainBialgHom` (69, over every ring), `isShortExact_mapDomainBialgHom_iff` (92).
- `DiagonalizableGroup/Etale.lean`: `etale_kernelCoordinate_of_isUnit_card` (39).
- `MonoidAlgebra/Etale.lean`: `etale_of_isUnit_card` (66).
- `MonoidAlgebra/Smooth.lean`: `smooth_iff_isUnit_card` (37, over a field).
- `MonoidAlgebra/FaithfullyFlat.lean`: `faithfullyFlat_mapDomainRingHom_of_injective` (31).
- `Centralizer/Basic.lean`: `centralizerHopfIdeal` (206, any ring, no hypothesis).
- `Centralizer/Smooth.lean`: `formallySmooth_quotient_centralizerHopfIdeal` (278), `smoothCommHopfAlgProperty_quotient_centralizerHopfIdeal` (290).
- `Normalizer/WeylGroup.lean`: `weylGroup` (93, rational points, base with connected spectrum, "Nothing here asserts … that the Weyl group is generated by reflections").
- `DiagonalizableGroup/Equivalence.lean`: `schemeEquivalence` (over a field only, so 1.2 over a base is not duplicated).
- `MultiplicativeType/GaloisModule.lean`: header (contragredient action on cocharacters, which agrees with the repaired 2.4 Check).
- `DiagonalizableGroup/SmoothConnected.lean`: `connectedSpace_primeSpectrum_coordinateRing` (55).

### Cross-roadmap citations resolved (24)

**On main:**
- ReductiveGroups: Layer 8 bullet (1028–1060), 9B (1610), Layers 3, 6, 7 (237, 467, 628, 644).
- SchemeAndStackFoundations: §§0.6 (678), 0.9 (848), 1.17 (2624), 2.3 (3330), 2.9 (3582), 2.11 (3656), 3.4 (4789).
- ModularCurves: 0B (280, with `D_S(M)` and `μ_N` at 320–322), 0C (345), 0E (386).
- SchubertGeometry: S3 first item (47) and S7 first item (95).
- FlagVarieties: line 19.

**At open heads:**
- SchubertGeometry #1224: 3.1 (450), 7.1 (982).
- AlgebraicModuliForArithmeticGeometry #853: §7.9 (9792–9794).
- FiniteFlatGroupsAndIntegralPadicHodgeTheory #879: R07.1.4 (805–815).
- InverseGaloisAndArithmeticFundamentalGroups #850: IG.0.3 (667–700). Its Check at line 697 is the `[[1, 1], [0, 1]]` local system on the complete nodal curve, of which `nodalCurve k` is an open piece. IG.0.4 (851).
- NeronModelsAndSemistableAbelianVarieties #852: 2.3 (1232–1240).
- AbelianSchemesAndArithmeticModuli #849: A0.1 (589), A4.1 (1822).
- EquivariantIntersectionTheory #1685: 1.1 (268–293), 1.3 (312–330). Its line 584 names this roadmap as a consumer only, so there is no cycle.
- SpringerResolutionAndCharacteristicCycles #1828: line 10 (owns the additive `g̃`; cites §7.6 here).

### Ownership against open pull requests, checked by object

I searched all 466 open heads with the roadmap grep for `IsMultiplicativeType`, isotrivial, the Steinberg map, section and cross-section, the universal centralizer, Grothendieck–Springer, the specialization inequalities and semicontinuity of ranks, the affinization and anti-affine groups, Chevalley's theorem, the relative identity component and `Pic(G/B⁻)`.
- **Second owner:** PurityForFlatCohomology (R01).
- **Different objects:** CFSGBasicProperties' and ChevalleyGroups' "Steinberg maps" are Frobenius-type endomorphisms. JacobianChallengePartII's identity component is that of its Picard scheme. AlgebraicModuliForArithmeticGeometryPartII §2.2's affinization is `Spec Γ` of a scheme. EndoscopicTransferAndUnitaryTraceComparison's universal centralizer is the Lie-algebra one.

### Seeded sample of locators (15 targets)

| Target | Source passages read | Result |
| --- | --- | --- |
| 0.2 | sga3-6b 808–810 (Prop. 3.9: `G⁰ → G` open immersion, `G⁰` quasi-compact, `G` locally of finite presentation), 821–826 (Thm 3.10 (i)⇔(iv)) | correct |
| 1.3 (and 1.1, 1.2, 1.4) | sga3-8 273–282 (Prop. 2.1 a)–e), `S` nonempty), 137–141 (Cor. 1.5), 157–164 (Cor. 1.6, `S` connected), 304–314 (Thm 3.1), 329–343 (Cor. 3.2 a)) | correct; R04 for 3.1's generality |
| 2.2 | sga3-10 716–718 (Cor. 4.5: split by an étale surjective `S′ → S`) | correct |
| 2.3 | sga3-10 778–786 (Déf. 5.1), 876–880 (Thm 5.6), 885–899 (Cor. 5.7), 903–912 (Cor. 5.8–5.9) | correct |
| 2.4 | sga3-10 45–54 (Cor. 1.2), 61–67 (Prop. 1.4 and its Galois-module consequence) | correct |
| 3.1 | sga3-10 132–140 (Prop. 2.1: `S₀` with the same underlying set, nil-ideal; fully faithful) | correct |
| 3.2 | sga3-9 732–735 (Thm 5.1), 783–785 (Cor. 5.3), read in the previous round, unchanged text | correct |
| 3.5 | sga3-11 1046–1048 (Cor. 5.3), 1101–1104 (Cor. 5.3 bis), 1150–1157 (Prop. 5.9: `W_G(H)` open in `Aut(H)`, quasi-finite, étale, separated), 819 and 1024 (`G` smooth affine) | correct; R03 for its use in 5.3 |
| 5.3 | sga3-10 1486–1515 (Remarques 8.7: the invariants and the five inequalities over a DVR), 1520–1523 (only the affine `ρ_r`, `ρ_n` proved), 1534 (N.D.E. 71 asks for a reference); sga3-9 1022–1033 (Thm 6.8: kernel of multiplicative type; closed immersion for `G` affine); sga3-11 819–821 (XI 4.2); ega2 5554–5562 (EGA II 7.1.9: DVR dominating a specialization, `Y` locally noetherian) | correct; route sound for `d_s`; R03, R05, R06 |
| 5.5 | sga3-10 1343–1346 (Remarque 8.3, the non-affine example in Research context) | correct; R02 for the Check |
| 6.2 | EquivariantIntersectionTheory 1.3 (312–330), SchubertGeometry S7 first item; Popov and Sansuc not read | sequence checked on `SL₂`, `PGL₂`, `GL_n`, torus |
| 6.3 | own route; SchemeAndStackFoundations §3.4 | route recomputed (row 26) |
| 7.2 | steinberg1965 40–41 (semisimple until 1.9), 69–71 (extension to reductive), 592–598 (Thm 6.1 b), simply connected) | correct |
| 7.3 | steinberg1965 61–68 (Thm 1.3 b): codimension 3), 928–932 (Thm 8.1 a)⇔c)) | correct |
| 7.7 | SchemeAndStackFoundations §0.6, §3.4; own argument | recomputed (row 31) |
| Research context | conrad-rgs 3868–3876 (Thm 3.2.6), 9634–9638 and 9674–9675 (Prop. 6.4.4 and its proof: maximal tori over a strictly henselian local ring are `H(A)`-conjugate), 11050–11059 (Remark A.1.3); sga3-12 136–139 (XII 1.7 c)), 1189–1203 (XII 7.1 b), which also gives the conjugacy cited in 5.2) | correct |

### Adversarial table

Each row gives the values computed on each side; "ok" means the computation agrees with the statement.

| # | Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- | --- |
| 1 | `exists_identityComponent` | `𝔾_{m,S}`; `(ℤ/2)_S`; `μ₂/ℤ`; `S = ∅` | `G⁰ = G`; `G⁰` is the unit component of `S ⊔ S`, open; `μ₂` fails smoothness (fibre at `2` is `𝔽₂[t]/(t−1)²`), excluded; vacuous | ok | none |
| 2 | 0.2 comparison | `G` not quasi-separated | excluded by line 220 | ok | none |
| 3 | `bijective_diagonalizableMap` | `S = Spec(k×k)`; `S = ∅`; `M = ℤ/2`, `N = ℤ` over `ℤ` | `End(𝔾_m) = ℤ²` vs `ℤ`, excluded by `ConnectedSpace`; one map vs many, excluded; `Hom(μ₂, 𝔾_m) = {ζ ↦ ζ^a : a ∈ ℤ/2} = Hom(ℤ, ℤ/2)` | ok | none |
| 4 | `smooth_diagonalizable_iff` | `ℤ/6` over `ℤ`; `ℤ/p` over `𝔽_p`; `ℤ²`; `S = ∅` | `6 = 0` exactly in `𝔽₂`, `𝔽₃`; `𝔽_p[t]/(t−1)^p` non-reduced; torsion card `1 ≠ 0`; both sides true | ok | none |
| 5 | `etale_diagonalizable_iff` | `M = ℤ`; `ℤ/6` over `ℤ[1/6]`; `M = 0` | `Finite ℤ` false and `𝔾_m` has relative dimension `1`; étale, `6` a unit; `D(0) = S` étale | ok | none |
| 6 | `flat_surjective_diagonalizableMap` | `φ = n·id`; `0 → ℤ`; `ℤ → 0` | `ℤ[t^{±1}]` free over `ℤ[t^{±n}]` on `1, …, t^{n−1}`; `𝔾_m → S`; unit section not flat, excluded by `hφ` | ok | none |
| 7 | `isKernel_diagonalizableMap` | `φ = 0 : ℤ → ℤ`; `ℤ → 0`; `ℤ² → ℤ`, `(a,b) ↦ a+b` | `ker(t ↦ 1) = 𝔾_m = D(ℤ/0)`; `ker(S → 𝔾_m) = S = D(0)`; `ker(t ↦ (t,t)) = 1 = D(ℤ/ℤ)`: all true without `hφ` | hypothesis unused | R04 |
| 8 | 1.1 vs ModularCurves 0B | `M = ℤ/N` | `O_S[t]/(t^N − 1)` on both sides, `t` group-like | ok | none |
| 9 | `IsMultiplicativeType`, `IsTorus` | `μ_p/𝔽_p`; `𝔾_a/k`; norm-one torus over `ℝ`; `M = 0` | type `ℤ/p`, not free; `Hom(𝔾_a, 𝔾_m) = 0`, not of multiplicative type; split over `ℂ`, `X*(T)^{Gal} = 0`, not diagonalizable; trivial group a torus of rank `0` | ok | none |
| 10 | `exists_etale_cover` | `μ_n/ℤ`; `𝔾_m` and Kummer `t ↦ t²` over `𝔽₂` | identity cover; already diagonalizable, Kummer cover not étale | ok | none |
| 11 | 2.3 | `Spec(k×k)`, `𝔾_m ⊔ 𝔾_m²`; norm-one torus | `X*` locally constant of ranks `1, 2`, not constant; `ℤ` with conjugation `−1` | ok | none |
| 12 | 2.4 Checks | `μ₃/ℚ`, `ι : μ₃ ↪ 𝔾_m` | `σ ∘ ι ∘ σ⁻¹ = ι`, trivial action; cyclotomic action on `μ₃(ℚ̄)` | ok | none |
| 13 | `IsMultiplicativeType.isotrivial` | `Spec k`; nodal curve; `Spec(k×k)` | split by a finite separable `k′` (X 1.4); not normal, excluded; not connected, excluded | ok | none |
| 14 | `isotrivial_component` | `U = 𝔾_{m,k} ⊂ 𝔸¹_k`, not closed | isotrivial by `isotrivial` on `U` | `IsClopen` unused | R07 |
| 15 | `exists_torus_not_isotrivial` | `n`-cycle cover; chain of `𝔸¹`'s; identity gluing | monodromy `[[1,n],[0,1]] ≠ 1`; trivial; `𝔾_m²` | ok | none |
| 16 | `bijective_baseChange_map_of_thickening` | `Spec k ↪ Spec k[ε]`; `Spec k ↪ 𝔸¹` at `0`; `𝔾_a` | `End(𝔾_m) = ℤ` on both sides; not surjective, excluded; `t ↦ (1+ε)t` lifts the identity, excluded by multiplicative type | ok | none |
| 17 | `hom_eq_of_eq_fibre` | `t`, `t⁻¹` on `𝔾_m/ℤ`; `Spec(k×k)`; `GL₂`-valued subtori over `𝔸¹` | differ on every fibre; agree at one point only, excluded; `diag(t,1)` and its `g_a`-conjugate agree at `a = 0`, excluded | ok | none |
| 18 | `eq_of_eq_on_torsion` | `n = 0`; `μ_n`; `𝔾_a`, characteristic `0` | `H[0] = H`, excluded by `0 < n`; `H[n] = H`; `𝔾_a[n] = 1`, excluded | ok | none |
| 19 | `chevalley`, 4.2 Check 3 | `A × 𝔾_m`; `𝔾_a`; `A[2] × 𝔾_m` in characteristic `3` and in characteristic `2` with `A` supersingular | `L = 𝔾_m`; `L = G`; `2^{2g}` components, excluded by connectedness; `A[2]` infinitesimal, connected and not smooth | ok | none |
| 20 | `affinization` | `(ℤ/2)_k`; `α_p`; non-split extension of `A` by `𝔾_a` in characteristic `0` | `O = k × k`; `k[t]/(t^p)`; `O = k`, and `G → Spec k` is faithfully flat | ok | none |
| 21 | 5.3 `d_s`, affine | Iwahori `SL₂/ℤ_p`; `G^(p)`; `SL₂ × G^(p)` | `W_s = 1`, `F = ℚ`: `rank Φ_s = 0 ≤ 1`, `|Φ_s| = 0 ≤ 2`, `d_s 0 ≤ 3`; `r = 0`: `0 ≤ 0`; `F = ℚ ⊂ F′ = ℚ²`, `W_s = ℤ/2` the restriction of `s_α`, `α|_F ≠ 0`: `|Φ_s| = 2 ≤ 2`, `d_s 3 ≤ 3` | ok | none |
| 22 | 5.3 rank step | general | `dim F^{W_s} ≥ dim(F ∩ F′^W) ≥ dim F + dim F′^W − dim F′`, hence `rank Φ_s ≤ dim F′ − dim F′^W = rank Φ` | ok | none |
| 23 | 5.3 root step | general | a lift of `r` lies in `⟨s_α : α|_H = 0⟩` (stabiliser of a general `h ∈ H`); if all those `α` vanished on `F`, the lift would fix `F` and `r = 1`; reflections of the finite `W_s` are orthogonal for an invariant form, so `H` determines `r` | ok | none |
| 24 | 5.3, four inequalities, non-affine | X 8.3 group (elliptic curve → `𝔾_m`) | `(ρ_ab, ρ_r, ρ_n, ρ_u)`: `(1,0,1,0)` → `(0,1,1,0)`: `0 ≤ 1`, `1 ≤ 1`, `1 ≥ 1`, `0 ≥ 0`; route's 3.5 needs `G` affine | statement ok, route input out of scope | R03 |
| 25 | 5.5 and Checks | class `p·ω`; class `ω` with `A_s` a supersingular elliptic curve; supersingular surface with `a = 1` | `G_s = A_s × 𝔾_a`, `affq = 𝔾_a`; Hasse invariant `0`, `F = 0`, `P = x^p`; `F` of rank `1`, `F(ω̄) ≠ 0` for `ω̄ ∉ ker F`, `P = x^{p²}` | last sentence false | R02 |
| 26 | 6.3 | `S = Spec k`; `SL₂`; `GL₂` | 6.2; `Pic(ℙ¹_S) = Pic(S) ⊕ ℤ`; `det ↦ 0`; on the big cell `Pic(𝔸^N_S) = Pic(S)` for normal `S` and units `O(S)^×` for reduced `S`, so the map is injective and surjective | ok | none |
| 27 | 6.2 | `SL₂`; `PGL₂`; `GL_n`; torus | `P/X*(T_der) = 0`, `ℤϖ/2ℤϖ = ℤ/2`, `0`, `0` | ok | none |
| 28 | Convention 5 | `SL₂`, `λ = ϖ`, `b = [[a,0],[c,a⁻¹]]` | `(gb)₁₂ = g₁₂a⁻¹`, `(gb)₂₂ = g₂₂a⁻¹`: two sections, `𝓛(ϖ) = O(1)` | ok | none |
| 29 | Convention 6, 7.4 | `x_α(1)x_{−α}(−1)x_α(1)`; `κ(c)` | `[[0,1],[−1,1]]·[[1,1],[0,1]] = [[0,1],[−1,0]]`; `[[1,c],[0,1]]·[[0,1],[−1,0]] = [[−c,1],[−1,0]]`, trace `−c` | ok | none |
| 30 | 7.5 Check `c = 2` | `σ(2) = κ(−2) = [[2,1],[−1,0]]` | characteristic polynomial `x² − 2x + 1`; centralizer `[[s−2r, −r],[r, s]]`, determinant `(s−r)²`, so `μ₂ × 𝔾_a` | ok | none |
| 31 | 7.7 | `SL₂/k`; `S = Spec ℤ`; ampleness via the fibre of `π` over `e` | `Pic(G) = Pic(G^reg) = 0`, `Pic(G̃) = ℤ`; `P/X*(T_der) = 0`; `π⁻¹(e) = Bor(G)` | ok | none |
| 32 | 7.8 | torus; `G̃ → SL₂` | `X̃ = G` works, excluded by positive semisimple rank; exceptional `ℙ¹`'s over `±1`, composite with trace not smooth | ok | none |
| 33 | Research context | `GL₂/ℚ`, `E = ℚ(i)`, `ℚ(√2)` | `R_{E/ℚ}𝔾_m` non-isomorphic tori, not `G(ℚ)`-conjugate | ok | none |

### Padding probe and headline theorems

**Padding.** I read the declarations instead of running the one-tactic probe; the file is unchanged since the last round. No sorried theorem closes with one library lemma, and none restates a definition, mirrors a Check or computes a value. The exception is R07, an instance of `isotrivial`.

**Headlines statable at the pins and stated:** 0.2, 1.2, 1.3, 1.4, 2.2, 2.5, 2.6, 3.1, 3.2, 3.3, 4.2 and 4.3.

**Named in the docstring as not statable, with the missing carrier:**
- 1.5: Cartier dual over a scheme.
- 1.6: `NonabelianH1`.
- 2.3, 2.4 and 2.7: big-site `𝔾_m`.
- 3.4 and 3.5: Hom and centralizer functors.
- 4.1: fppf quotients.
- 4.4 and Layer 5, including the 5.3 inequalities: maximal tori on `Grp (Over (Spec k))`.
- Layers 6–7: `𝒢_R`, `Bor(G)`.

Nothing is forced through a stand-in. PurityForFlatCohomology states over `Spec R` a Cartier-dual criterion and over a field comparisons with Tau Ceti's predicates; these are comparison lemmas, not headlines, so their absence here is not a finding.

## Not verifiable

- **Sansuc 1981, §6 (6.2).** The cached `sansuc1981` is the GDZ landing page of the volume, without the article text, although the manifest records it `certified`. The article page did not render for me. The exact sequence was checked on examples instead (row 27).
- **Paywalled or book sources, cited by locator only:** Popov 1974 §4 (6.2); Humphreys, *Reflection groups and Coxeter groups*, Thm 1.12 (5.3); Jantzen II.1.8 and II.4.4; Bourbaki Lie VI §3 no. 4 Thm 1; Demazure–Gabriel III §3 5.4 and 8.2; Slodowy ch. 3–4. For Humphreys 1.12, the pinned Tau Ceti theorem in R05 supplies the statement.
- **SGA 3 VI_A 3.2 (4.1).** Not fetched this round; 4.1 is outside the sample and unchanged.
- **New texts, not added to the manifest.** This review edits no manifest. `sga3-8` (SGA 3 Exp. VIII, from the editor's page) and `ega2` (EGA II, Numdam) were fetched and read for this review; the package should record them.

## Source issues

- **Gap** in sga3-10 at Théorème 5.16, printed page 87 (lines 1039–1045): the source says every finite-type group of multiplicative type over a locally noetherian geometrically unibranch base is isotrivial, reducing to a connected base; it should assume the base connected or conclude componentwise, since `𝔾_m ⊔ 𝔾_m²` over `Spec(k × k)` has no single splitting type; affects a stated result.
- **Gap** in sga3-10 at Remarques 8.7, printed pages 97–98 (lines 1501–1515, note at 1534): the source states the five specialization inequalities for any smooth group over a discrete valuation ring without proof, and the editors' note asks for a reference; it should give a proof or a reference (the seminar proves only the affine `ρ_r`, `ρ_n` cases, lines 1520–1523); affects a stated result.
