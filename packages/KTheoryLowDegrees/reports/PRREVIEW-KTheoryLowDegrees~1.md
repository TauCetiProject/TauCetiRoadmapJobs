# Review of KTheoryLowDegrees (pull request #1248 at d7c04da)

**Verdict:** needs changes

Gate at this head (worker's run, re-read): every check passed, `depcheck=0`, `build=0`. My own dependency check (`gate --depcheck … --movable`) printed `depcheck: 205 roadmaps, 1471 edges, 0 problem(s)`: no UPWARD, CYCLE or `moved:` line for this roadmap. `lake env lean` on `TauCetiRoadmap/KTheoryLowDegrees/Suggested.lean` (after `lake build` of its two `TauCeti.*` imports) ends with exit 0 and eight `declaration uses 'sorry'` warnings, nothing else. Pins used throughout: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf` (the branch manifest); main's manifest pins `f6090c70` / `358314d4`, and every library name below was checked at the branch pin.

Three findings block: a headline theorem that is statable at the pins but absent (R01), a supplier citation of declarations that exist only in a revision pull request and not on main (R02), and a restatement of the rank–determinant package that SchemeAndStackFoundations §5.7 and SchemeKTheoryOperations §§6.2.4/7.1 already own (R03).

## R01 (P2) — The congruence subgroup property is statable at the pins and is not in `Suggested.lean`

Location: `TauCetiRoadmap/KTheoryLowDegrees/Suggested.lean` lines 19–23 (module docstring: "arithmetic defect groups and congruence completions (Layers 1 and 7–11)" are said to lack carriers); README §11.3 lines 1018–1024.

Claim: §11.3's headline, BMS Corollary 4.3(d) and Theorem 14.1 (bms1967 lines 1334–1336 and 2574), is "the kernel is μ(F) when F is totally imaginary and S = ∅, and trivial otherwise". Its trivial-kernel half is exactly the congruence subgroup property, which needs no completion to state: every finite-index subgroup of `SL_n(O_{F,S})`, `n ≥ 3`, contains a principal congruence subgroup of nonzero level whenever `S ≠ ∅` or `F` has a real place; and the nontrivial half's elementary content (some finite-index subgroup contains no principal congruence subgroup when `F` is totally imaginary and `S = ∅`) is equally statable. So is the relative form of Corollary 4.3(b), `SL_n(A, I) = E_n(A, I)` for every ideal `I` in the same cases, which generalises `sinteger_elementary_generation`.

Witness: the following elaborate at the pins with only `sorry` warnings (my scratch file, checked with the same `lake env lean`), using `Matrix.SpecialLinearGroup.map` (Mathlib `LinearAlgebra/Matrix/SpecialLinearGroup.lean` line 225), `Subgroup.FiniteIndex`, `NumberField.InfinitePlace.IsReal/IsComplex`, `Set.integer`:

```lean
/-- The principal congruence subgroup of level `I`. -/
def principalCongruence (A : Type u) [CommRing A] (n : ℕ) (I : Ideal A) :
    Subgroup (Matrix.SpecialLinearGroup (Fin n) A) :=
  (Matrix.SpecialLinearGroup.map (Ideal.Quotient.mk I)).ker

/-- BMS, Corollary 4.3(d): the congruence subgroup property for `SL_n` of S-integers,
`n ≥ 3`, when `S` is nonempty or `F` has a real place. -/
theorem congruence_subgroup_property (F : Type u) [Field F] [NumberField F]
    (S : Set (HeightOneSpectrum (NumberField.RingOfIntegers F))) [Finite S]
    (hFS : S.Nonempty ∨ ∃ v : NumberField.InfinitePlace F, v.IsReal)
    (n : ℕ) (hn : 3 ≤ n)
    (H : Subgroup (Matrix.SpecialLinearGroup (Fin n) (S.integer F))) [H.FiniteIndex] :
    ∃ I : Ideal (S.integer F), I ≠ ⊥ ∧ principalCongruence (S.integer F) n I ≤ H := by
  sorry

/-- BMS, Corollary 4.3(d): failure for the ring of integers of a totally imaginary field. -/
theorem congruence_subgroup_failure (F : Type u) [Field F] [NumberField F]
    (hF : ∀ v : NumberField.InfinitePlace F, v.IsComplex)
    (n : ℕ) (hn : 3 ≤ n) :
    ∃ H : Subgroup (Matrix.SpecialLinearGroup (Fin n) (NumberField.RingOfIntegers F)),
      H.FiniteIndex ∧ ∀ I : Ideal (NumberField.RingOfIntegers F), I ≠ ⊥ →
        ¬ principalCongruence (NumberField.RingOfIntegers F) n I ≤ H := by
  sorry
```

Repair: add these two statements (and, optionally, the relative `SL_n(A,I) = E_n(A,I)` statement with the relative elementary subgroup defined as the normal closure in `finiteElementaryGroup` of the level-`I` transvections; that also elaborates) to `Suggested.lean` under a `/-! ## Layer 11 -/` comment; name them in README §11.3 next to the sentence "The explicit transitions give the higher-rank theorem"; and restrict the docstring's "not statable" list to the completions, the metaplectic classification and the Mennicke groups, which genuinely lack carriers.

## R02 (P1) — EnhancedDerivedSheaves is cited for `spaceSheaves` and `spacePostnikovTower`, which do not exist on main

Location: README line 129: "E2's `spaceSheaves` and `spacePostnikovTower` supply sheafification and truncation on a fixed small site"; consumed in §§14.3 and 14.5 (lines 1359, 1394–1402).

Claim: EnhancedDerivedSheaves is on main, so it is cited as it is on main. On main (`TauCetiRoadmap/EnhancedDerivedSheaves/README.md`), Layer E2 is "Repleteness, inverse limits, Postnikov convergence and descent" with E2.1–E2.4 (lines 2031–2185); neither name occurs anywhere in that file. `roadmaps grep 'spaceSheaves|spacePostnikovTower'` finds them only in pull request #1330 (`EnhancedDerivedSheaves/README.md` lines 2381–2401, "Space-valued sheaves and Postnikov towers") and in the chore bump #1187, both revisions of an existing roadmap, which are never dependencies.

Witness: `grep -n 'spaceSheaves\|spacePostnikov' TauCetiRoadmap/EnhancedDerivedSheaves/README.md` on main returns nothing; the E2 headers on main are at lines 2031, 2035, 2083, 2125, 2185.

Repair: cite main. If no section on main owns the space-valued sheafification of presheaves on a fixed small site with its first truncation and the mapping-space adjunction (I found none; E3.2 owns accessible localizations and E2.3 Postnikov completion of replete topoi), declare the dependency as a supplier gap in the EnhancedDerivedSheaves subsection of the supplier contracts, `What EnhancedDerivedSheaves must provide (gap:space-valued-sheafification): sheafification of presheaves of spaces on a fixed small site, its 1-truncation, and the identification of maps into a 1-truncated sheaf with maps from the sheafified first truncation, as natural transformations with comparison homotopy.`, and add the same slug to the plan's `gaps` list. Otherwise repoint to the owning main section by number.

## R03 (P2) — The determinant on K₀ and the rank–determinant ring formula are restated from SchemeAndStackFoundations §5.7 and SchemeKTheoryOperations §§6.2.4, 7.1

Location: README §3.5 line 356 ("Extend its direct-sum isomorphism to `det : K₀(R)→* Pic(R)` … `det_projective`, `det_zero`, `det_add`, …") and line 363 (`det(xy)=(det x)^{rank y}(det y)^{rank x}`); §3.6 lines 377–383 ("Define `RankPic R` … Prove that `rankDet` … is a surjective ring map and define `SK0` as its kernel").

Claim: these objects already have owners earlier in the supply chain, and the README itself consumes them. SchemeAndStackFoundations §5.7 on main (`TauCetiRoadmap/SchemeAndStackFoundations/README.md` lines 7003–7005) supplies `K0.rank` and `K0.det`, "the determinant homomorphism to the additive form of `Pic(X)`"; §2.1 here already pulls `K0.rank` through the affine comparison, so `det` has the same route. SchemeKTheoryOperations §6.2.4 (shown copy line 1742) supplies `rankSection`, `reducedK0` and `gammaFiltration_two_eq_rank_det_kernel` "with the supplied determinant to the additive Picard group", `gr⁰ ≅ H(A)`, `gr¹ ≅ Pic(A)` with inverse `L ↦ [L]−1`; and §7.1 (line 2249) proves "the rank/determinant ring formula `(a,L)(b,M)=(ab,L^{⊗b}⊗M^{⊗a})` … including disconnected X", with the affine case "exactly the low-degree supplier's γ-filtration" (line 2246). That is the surjective ring map onto the square-zero extension that §3.6 re-proves, and the multiplicativity formula that §3.5 re-proves.

Witness: SchemeKTheoryOperations README (pull request #1229, index head) line 2249; SchemeAndStackFoundations README on main line 7004; KTheoryLowDegrees README line 383 cites the same `gammaFiltration_two_eq_rank_det_kernel` it then re-derives.

Repair: in §3.5 replace the construction of `det` by "use SchemeAndStackFoundations §5.7's `K0.det` through the affine comparison of §2.1" and cite SchemeKTheoryOperations §7.1 for `det(xy)`; in §3.6 cite §7.1 for the ring structure and surjectivity and keep as this roadmap's own only (a) the `TrivSqZeroExt` normalisation `rank_pic_equiv_exists` on Dedekind domains, (b) `picardLocallyConstantPow` if SchemeKTheoryOperations does not expose the `H(R)`-module structure as an API, (c) the compound-matrix identity `det(Λʲg)=(det g)^{binom(n−1,j−1)}` and `determinant_exactSequence`, which are new. In §12.2 line 1133 "the supplied rank–Pic ring of Layer 3" becomes SchemeKTheoryOperations §7.1. Keep the §3.6 Checks as Checks of the comparison.

## R04 (P3) — Layer 4 has no target of its own and repeats its supplier's Checks

Location: README lines 413–488.

Each of §§4.1–4.6 is "Use SchemeKTheoryOperations §6.3.k's …" followed by Checks; several Checks are those of SchemeKTheoryOperations §6.3.1/6.3.3 (lattices `A` and `pA`, weight-zero versus weight-one over `𝔽₂`, the Dedekind kernel of a free cover, `P_i` for the standard representation). The shape rule says a target owned elsewhere is deleted and listed as a deferral. Repair: delete Layer 4; put one sentence in Scope and ownership ("integral representation groups, characters, associated projectives and `projective_special` are SchemeKTheoryOperations §§6.3.1–6.3.3"); keep the two identities of the Layer 4 Examples (`P₂` from `Λ²(V⊗W)`, the 15 from `Λ²(Λ²V)`) as Checks of §3.3; renumber Layers 5–14.

## R05 (P3) — `orderedExteriorSum` should cite Mathlib's exterior algebra of a product

Location: README §3.1 line 290.

Mathlib at the pin has `ExteriorAlgebra.prodEquivTensor : ExteriorAlgebra R (M × N) ≃ₐ[R] (fun i => ⋀[R]^i M) ᵍ⊗[R] (fun i => ⋀[R]^i N)` (`Mathlib/LinearAlgebra/ExteriorAlgebra/Product.lean` line 109) with `prodEquivTensor_symm_apply_tmul_ιMulti` (line 114), which already fixes "M wedges before N wedges" through `Fin.append`. The degree-`n` module decomposition is its grade-`n` restriction. Repair: name both in the Mathlib supplier contract and reduce §3.1's first target to that restriction, its naturality, base change and the split-filtration comparison; the countably-generated non-finiteness Check stays.

## R06 (P3) — §8.3 restates AlgebraicKTheory A2.3

Location: README line 736 ("For `n≥2` prove `ker Δ_n=E_n(D)` … The stable identification `K₁(D)≃Dˣᵃᵇ` is A2's") and line 738 ("For the real quaternions prove `K₁(ℍ)≃ℝ_{>0}` by squared norm").

AlgebraicKTheory A2.3 at its open head (`TauCetiRoadmap/AlgebraicKTheory/README.md`, "Morita invariance, determinants and computations") states `dieudonne_determinant`: for a division ring and `n ≥ 2` a surjection `GLₙ(D)→Dˣ/[Dˣ,Dˣ]` with kernel exactly `Eₙ(D)` and value `[d]` on `diag(d,1,…)`, and its Check computes `K₁(ℍ)≅ℝ_{>0}` by the norm with `[ℍˣ,ℍˣ]` the unit quaternions. Repair: cite both; keep the pivot formula, the Schur-complement and block-triangular formulas, the `[GLₙ(D),GLₙ(D)]=Eₙ(D)` calculation with its `(2,𝔽₂)` exception, and the transpose/opposite-ring API, which A2 does not state.

## R07 (P3) — Supplier names attributed to sections that do not use them

Location: README line 125 ("GeneralAlgebraicKTheory §4.16 supplies `ClassicalAdditiveK1` and `ClassicalAdditiveK1.quillenEquiv` … Its §8.12 supplies `localizationBoundary_DVR_valuation`"), line 671, and lines 13/55 ("OrthogonalSpinGroups Layer 2 … supply the compact real Spin covering and rotation path").

GeneralAlgebraicKTheory (#1212 head) §4.16 "Additive automorphisms and split-exact Q-theory" and §8.12 "The DVR boundary is the normalized valuation" state the objects but name none of these declarations (`grep` of its README: no hit). OrthogonalSpinGroups Layer 2 on main (`Completed/OrthogonalSpinGroups/README.md` line 610, "local topology, transvections, and local spinor norms") says nothing about a Spin covering or rotation path; those are the pinned Tau Ceti modules the same paragraph lists. Repair: present the three names as this roadmap's local notation for the cited sections (as the conventions table does for the AlgebraicKTheory names), and drop the OrthogonalSpinGroups citation.

## R08 (P3) — Two locator slips

(a) README line 1456: Morris §7.1, Theorem 7.1.1 and Exercises 1, 3–4 are printed pp. 152–154 as stated, but in the 2015 edition these are PDF pp. 207–209 (morris2015 lines 9597–9598 show the page-152 header, line 9633 the theorem, lines 9716–9732 the exercises), not "PDF pp. 168–170" (which are printed pp. 131–132). (b) README line 1078: Moore's restricted-product covering theorem 12.2 begins on printed p. 59 (moore1968 line 2398, after the page marker at line 2374), not p. 58. Repair: correct the two page numbers.

## R09 (P3) — `Suggested.lean` form

`picardIntOpModule` (line 92, a plain `/- -/` comment) and `picardIntCentralScalar` (line 97, no docstring) lack docstrings; every declaration needs one. `hn : 1 ≤ n` in `euclidean_elementary_generation` (line 103) is unused: for `n = 0`, `GL (Fin 0) R` is trivial and the identity lies in the closure, so the statement holds without it. Repair: add the two docstrings and drop `hn` (or keep it and say in the README that rank zero is included).

## R10 (P3) — A later roadmap plans the `SL₂(ℤ[1/p])` specialisation of §§11.4–11.5

ModularCurvesPartII §15.3 (merge order line 70, after this roadmap at line 35) states the congruence subgroup property of `SL₂(ℤ[1/p])` and says the "central congruence-kernel/Mennicke-symbol calculation and its Moore and class-field-theory comparison from Serre's proof … are part of this target". That is the `F = ℚ`, `S = {p}` case of §11.5's `sl2_relativeMetaplecticClassification` and Serre's Theorem 2. The repair belongs to that roadmap, but name ModularCurvesPartII §15.3 under Downstream consumers here so the intake can repoint it.

## Verified sound

**Gate and build.** Worker's gate: all 24 checks zero, `OK`. Depcheck re-run: `205 roadmaps, 1471 edges, 0 problem(s)`. Build of the two imports then `lake env lean Suggested.lean`: exit 0, warnings only at lines 58, 68, 79, 103, 121, 149, 162, 172 (the eight `sorry`). No other change outside the folder (`git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/KTheoryLowDegrees'` is empty); `metadata.toml` is one line.

**Elaborated signatures.** I put `#check @name` for all 18 declarations in one scratch file and elaborated it; every type agrees with the README's generality: `rank_exists_split` over any `CommRing` (zero ring allowed), `semilocal_rank_equiv_exists` under `[Finite (MaximalSpectrum R)]`, `steinitz_decomposition` under `[IsDedekindDomain R]` with `Module.finrank R P = r + 1` and target `(Fin r → R) × ⋀[R]^(r+1) P`, `rank_pic_equiv_exists` into `TrivSqZeroExt ℤ (Additive (CommRing.Pic R))`, `finiteElementaryGroup R n : Subgroup (GL (Fin n) R)` over any `Ring`, `sinteger_elementary_generation` and `arithmeticSL2_finitelyGenerated` over `↥(S.integer F)` with `[Finite ↑S]`. Nothing changed.

**Padding probes.** One tactic on a scratch copy: `simp` on `rank_exists_split` (unsolved), `simp [finiteElementaryGroup]` on `euclidean_elementary_generation` (unsolved), `simp` on `circle_rotation_not_stably_elementary` (unsolved), `infer_instance` on `arithmeticSL2_finitelyGenerated` (no instance). No declaration is padding; the four definitions (`freeProjective`, `projectiveClass`, `lineProjective`, `circleRotation`) have real bodies and each is used by a headline.

**Library declarations opened at the pin (file:line).** `TauCeti.finiteProjectiveModules`, `finiteProjectiveModulesExactStructure_eq_split`, `moduleEulerClassOf_eq`, `cartanMap_apply` in `TauCeti/Algebra/Category/ModuleCat/CartanMap/Basic.lean`; `SplitK0.of`, `of_biprod`, `of_eq_zero_of_isZero` in `CategoryTheory/GrothendieckGroup/Split.lean`; `ExactK0.fromSplitEquiv` in `GrothendieckGroup/Exact.lean`; `SplitK0.finrankEquiv` (line 148) and `AbelianK0.finrankEquiv` (line 226) in `GrothendieckGroup/FiniteDimensionalVectorSpace.lean`, both `[Small.{v} k]` as the README says; `map_top_eq_det_smul`, `map_finrank_eq_det_smul`, `topEquiv` in `LinearAlgebra/ExteriorPower/Basic.lean`; `equivBaseChange` in `ExteriorPower/BaseChange.lean`; `submoduleOrderIso`, `finite_functor_obj_iff`, `projective_functor_obj_iff` in `Algebra/Category/ModuleCat/Equivalence.lean`; `finiteProjectiveModulesEquivalence`, `finiteProjectiveModulesK0Equiv_of`, `cartanMap_comp_finiteProjectiveModulesK0Equiv` in `CartanMap/Morita.lean` and `CartanMap/RingEquiv.lean`; `Set.unitValuation` (line 105), `unitValuation_ker` (130), `unit_fg` (149), `unitEmptyEquivUnits` (167) in `RingTheory/DedekindDomain/SInteger/Unit.lean`; `classNumber_adjoinRoot_sqrt_neg_five_eq_two` in `NumberTheory/Multiquadratic/MinusFive/ClassNumber.lean`; `spinRotation` (`LinearAlgebra/CliffordAlgebra/Spin/Rotation.lean` line 45, `ι x · ι(cos t·x + sin t·y)`), `spinRotationPath_apply` (`Topology/Algebra/CliffordAlgebra/Spin/Rotation.lean` line 85, parameter `π·t`), `isCoveringMap_realCliffordSpinDoubleCoverZero_rightHom` (`Spin/Covering.lean` line 52, hypotheses `[NeZero n] [CompactSpace …]` as the README says), `ι_spinVectorAction_apply` (`Spin/Action.lean` line 75, action `x · ι m · star x`). Mathlib: `Module.rankAtStalk` (`RingTheory/Spectrum/Prime/FreeLocus.lean`), `isLocallyConstant_rankAtStalk`, `rankAtStalk_prod`, `rankAtStalk_baseChange`, `Module.Finite.exists_comp_eq_id_of_projective`, `Module.Projective.of_split`, `LinearMap.isProj_iff_isIdempotentElem`, `Module.free_of_flat_of_isLocalRing`, `CommRing.Pic`/`AsModule`/`Pic.mk`/`ClassGroup.equivPic` (`RingTheory/PicardGroup.lean` lines 429–876, including `[Finite (MaximalSpectrum R)] → Subsingleton (Pic R)` at line 545), `Ideal.relNorm`, `ModuleCat.matrixEquivalence` (`RingTheory/Morita/Matrix.lean` line 187), `Matrix.single` (`Data/Matrix/Basis.lean` line 34), `TransvectionStruct.sumInl` (`Transvection.lean` line 247), `Matrix.GeneralLinearGroup.det` (`GeneralLinearGroup/Defs.lean` line 93), `Matrix.SpecialLinearGroup.map` (line 225), `Set.integer`/`Set.unit`/`Set.unitEquivUnitsInteger` (`RingTheory/DedekindDomain/SInteger.lean` lines 65, 108, 124), `BinomialRing`, `TrivSqZeroExt`, `ExteriorAlgebra.prodEquivTensor` (R05).

**Cross-roadmap citations resolved.** On main: GrothendieckEulerForms Layers 0–5; ClassicalArithmeticCompletion §§1.14–1.15, 1.33, 1.43, 1.52, 7.0 (`Lattice.nonempty_equiv_pi_prod_ideal`, `nonempty_equiv_iff` at lines 14251–14252), 7.6–7.7 (`StableEquivalent`), 7.23; HeightsAndUnits 4.2 (`Set.unit_finrank_numberField`, line 443); PadicMeasuresIwasawaAlgebras §5.1 (`projectiveDeterminant`, `detLine*`, parity ℤ/2 grading, lines 3172–3250, so the integer grade of Layer 14 is new); SchemeAndStackFoundations §3.3 (`vectorBundleDegree`) and §5.7 (all nine names, lines 6987–7026); AlgebraicVectorBundles L0B/L0C (lines 228–264); JacobianChallenge Layers A, B, D, F; ReductiveGroups Layers 0–1; ReductiveGroupsPartII RG2.2 *sl2-tree* (line 3647: `BTTree.Vertex`, `Adj`, `tree`, `isTree`, `smul`, `type`); ClassFieldTheory Layers 7, 11–14; GlobalNumberFields Layers 1–2, 6–7; Chebotarev Layers 9–10; OperatorTheory/PolarDecomposition PD-B21 (line 353); GeneralizedCohomology G2 (`MappingPathFiber`, G2.7–G2.10); EnhancedDerivedSheaves E0.1–E0.5, E3, E5:presentability; EllipticCurves Layer 1. At open heads: AlgebraicKTheory A0–A6 (revision 2e88b59c; A1.3 six-factor `diag(T,T⁻¹)` and `whitehead_commutator_elementary`, A2.2 Bass presentation, A3.1–3.3, A4.1 `HasStableRangeLE` with the all-longer-row form, A5.1–5.2 lifted-word boundary, A6.2–6.3 with `u π₁(a)=π₂(b)` so the README's `u = γ⁻¹` and `δ=−δ_A6` are right); GeneralAlgebraicKTheory §§1.2, 1.5, 1.6, 3.3, 3.12–3.15, 4.16, 5.7–5.11, 7.7, 8.1, 8.4 (alias "at the inverse parameter", `∂[g]=−δ_A6([g])`), 8.7–8.9, 8.12, 10.6; StableHomotopyKTheory §§2.4–2.10, 3.29–3.30, 4.25–4.26; AdelicAlgebraicGroups §3.6 "Cusps for one fixed maximal compact"; SchemeKTheoryOperations §§1.6, 3.1, 3.6 (all seven names), 3.8 (`WittSupport.*`), 4.10–4.11, 6.2.1–6.2.4, 6.3.1–6.3.3, 6.6, 7.1 (all cited names present). Ownership against the open pull requests whose files the brief lists and against main was checked by object (`roadmaps grep` for Mennicke, congruence kernel, Steinitz, the circle ring, S-integer `SL₂` finite generation, the real conic, the doubled origin, Dieudonné, graded lines, exterior sums, metaplectic): the only overlaps are R03, R05, R06, R10.

**Sources (sampled targets).** All ten texts fetched legally (Weibel author page; BMS, Serre 1968, Serre 1974, Moore via Numdam; Serre 1970 via the Collège de France page; Bhatt–Scholze arXiv v3; Morris author page; Calegari–Geraghty author page; four Stacks chapter PDFs). Checked at the locator: 2.1 — Weibel II.2 pp. 71–72, Definition 2.3 (weibel2013 line 4016, `K₀≅H₀⊕K̃₀`); 3.3 — II.4.3.1–4.3.2 (lines 5191–5197, p. 93); 3.4 — II.4 γ-operations and Formula 4.5 (lines 5252–5262, pp. 94–95); 3.6 — II.2.6.2 (line 4206, p. 75), II.4.7–4.7.1 (lines 5356–5361, p. 96); 4.1 — Serre 1968 Props 2–4 (serre1968 lines 153, 177, 214; pp. 40–41); 4.6 — §§3.7–3.8, Théorème 5 (lines 543–599, pp. 51–52); 8.1 — Weibel III.1.4 (line 10216, p. 183), III.1.6.4 (line 10407, p. 186), Ex. III.1.5 (line 10613, p. 190, "`Eₙ(R)=SLₙ(R)` for all n" for Euclidean R); 10.3 — BMS (7.2)ₙ, Lemma 7.3, Theorems 7.4–7.5 (bms1967 lines 1695–1726, pp. 106–107; 7.5(d) gives `m ≥ 2(n−1)` for the full commutator equality, matching "r ≥ 2k"), (8.1)–(8.4), Propositions 8.5–8.6, Lemma 8.8 (lines 1742–1789, pp. 107–109); 10.7 — Theorem 4.1 (line 1279, p. 94, part (a) `Eₙ(A,q)=[SLₙ(A),SLₙ(A,q)]`), Corollary 4.3 (line 1319, pp. 95–96), §11 (p. 119); 11.1 — (3.3) and Theorem 3.6 (lines 576–579, 691–699, pp. 74, 77; the `r(q)` formula agrees with `defectExponent`), Theorem 3.2 (line 524), (A.7) (line 895), (A.13) (line 1004), (A.17)–(A.18) (lines 1043–1050), (A.23) (line 1168, p. 90), Serre 1974 Theorems 1–4 (serre1974 lines 48–146); 11.3 — BMS Theorem 7.5(e) (line 1720), Theorem 14.1 (line 2574, p. 129); 11.4 — Serre 1970 §1.2 (serre1970 lines 90–92, p. 490, finite generation, citing O'Meara 24.8), Proposition 1 (line 125, p. 491), Proposition 2 (line 156, p. 492), Morris Proposition 4.7.4 (morris2015 line 3623, p. 61–62) and §19.3(i) (line 23828, p. 395); 12.1 — Stacks 09N9 = Lemma 33.38.2, 0FXR = Definition 29.12.1, 0GML = Lemma 31.17.8 ("quasi-compact, regular scheme with affine diagonal"), 0GMM = Lemma 36.36.7, 09NZ = Proposition 33.38.12, 0FDJ = Lemma 36.38.5 (each tag found at its statement); 14.2 — Bhatt–Scholze Proposition 12.3 (bhattscholze2017 line 2550, p. 55) and Construction 5.1 (line 821, p. 18); 14.5 — Theorem 5.7 (line 921, p. 20), Lemma 6.11 (line 1138, pp. 24–25), Proposition 12.18 (line 2726, p. 59). Also resolved: Weibel I.3.4 (line 1253, p. 19, the Steinitz statement), III.1.5.4 (line 10316, p. 185, the matrix `[[x,−y],[y,x]]`), Ex. II.2.6 (line 4464, p. 79), V.3.4.2 (line 23095, p. 387), II.8.2.4 (line 8197, p. 146), and every other Weibel heading cited (I.2.7, II.2.5, II.4.1–4.1.2, II.9.2.2, II.9.7.5, II.9.8, III.1.1–1.3, III.2.3–2.4, III.3.1, III.5.7–5.7.1, IV.1.1, 1.2, 1.7, 1.11, IV.7.1, IV.8.5.5, V.1.6.1, Ex. II.2.17, III.1.10, III.2.5, III.2.7, IV.1.15) lands on the printed page the README gives; Moore Theorems 7.4, 10.3, 10.4, 12.3, 13.1 (moore1968 lines 1289, 2054, 2060, 2444, 2585) on the stated pages; Calegari–Geraghty Remark 9.3 on PDF p. 119 (calegarigeraghty line 4744).

**Adversarial table.**

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `rank_exists_split` | zero ring; `k×k`; connected `R` | zero ring: `Spec=∅`, `H=0`, `K₀=0`, ring maps between zero rings; `k×k`: `rank[k×0]=(1,0)`, `σ(1,0)=[Re]`, `ρσ=id`; `σ` is a ring map since `[Re_U][Re_V]=[Re_{U∩V}]` and `ρ(1)=1` | holds | none |
| `semilocal_rank_equiv_exists` | `ℤ_{(2),(3)}`; `k×k`; `𝔽₂`; zero ring | idempotents inject into those of `R/J` (`(e−f)³=e−f`), so finitely many clopens; connected semilocal of constant rank `n`: `P/JP` free, Nakayama lifts a basis; `ℤ_{(2),(3)}`: `H=ℤ=K₀` though two maximal ideals; `k×k`: `ℤ²=ℤ²` | holds | none |
| `steinitz_decomposition` | `r=0`; `P=I=(2,1+√−5)`; `P=0` | `r=0`: `P≃(Fin 0→R)×⋀¹P≃P`; `I`: rank 1, `⋀¹I=I`; `P=0` excluded by `finrank=r+1≥1`; Weibel I.3.4 gives `L⊕R^{r}` with `L=det P` | holds | none |
| `rank_pic_equiv_exists` | `n=0`; `n=1`; `L=1`; `(0,L)`, `(−1,L)` | `e(free 0)=(0,0)`, `e(free 1)=(1,0)=e(line 1)`; inverse `(n,L)↦(n−1)[R]+[L]`: `(0,L)↦[L]−[R]`, `(−1,L)↦[L]−2[R]`; `TrivSqZeroExt` product `(n,a)(m,b)=(nm,n•b+m•a)` matches `(f,L)(g,M)=(fg,L^gM^f)` | holds | none |
| `euclidean_elementary_generation` | `n=0,1,2`; `R=ℤ`, `𝔽₂[t]` | `n=0`: `GL₀` trivial, `1∈closure ∅`, so `hn` unused; `n=1`: `det=1 ⇒ g=1`; `n=2` over `ℤ`: `[[0,1],[−1,0]]=e₁₂(1)e₂₁(−1)e₁₂(1)` (computed: `[[1,1],[0,1]]·[[1,0],[−1,1]]=[[0,1],[−1,1]]`, times `[[1,−1],[0,1]]` gives `[[0,1],[−1,0]]`) | holds | drop `hn` (R09) |
| `circleRotation` / `circle_rotation_not_stably_elementary` | `n=0`; `(x,y)=(1,0),(0,1)` | `det=x·x−(−y)·y=x²+y²=1`; at `(1,0)` identity, at `(0,1)` `[[0,−1],[1,0]]`; `n=0` is `M∉E₂(A)`, implied by stable non-vanishing; Spin: action `x·ι v·x*`, `x=cos t+sin t·e₁e₀` gives `e₀↦cos2t·e₀+sin2t·e₁`, `e₁↦−sin2t·e₀+cos2t·e₁`, block `[[cos2t,−sin2t],[sin2t,cos2t]]`, at `t=π/4` the quarter turn, at `t=π` the lift `−1` | holds; README §8.4 convention correct | none |
| `sinteger_elementary_generation` | `F=ℚ,S=∅,n=3`; `F=ℚ(i),S=∅`; `n=2` | `SL₃(ℤ)=E₃(ℤ)`; BMS 4.3(a): `SLₙ(A)=Eₙ(A)` for all arithmetic `A`, `n≥3` (`r(A)=1` so `C_A=1`); `n=2` excluded (`SL₂(ℤ[i])≠E₂`) | holds | none |
| `arithmeticSL2_finitelyGenerated` | `H=⊤`, `F=ℚ`, `S=∅`,`{p}`; imaginary quadratic | `SL₂(ℤ)`, `SL₂(ℤ[1/p])` (amalgam of two `SL₂(ℤ)`), Bianchi groups all f.g.; Serre §1.2 p. 490 for all number fields; Schreier for finite index | holds | none |
| §1.1 row idempotent | `e=[[1,1],[0,0]]` over `ℚ` | `vе` with `v=(a,b)`: `(a, a)`; column action: `(a+b,0)` | matches Check | none |
| §1.4 `ℤ×_{𝔽₅}ℤ`, `ℤ×_{𝔽₇}ℤ` | units 2, 4 | `𝔽₅ˣ/{±1}=ℤ/2`; `𝔽₇ˣ/{±1}=ℤ/3`, `2·4=8≡1` so 4 is the inverse | matches | none |
| §1.4 patching orientation | `g=[[1,1],[0,1]]`, `y=(0,1)` | `x=gy=(1,1)`; `g⁻¹x=(0,1)=y`; A6 uses `uπ₁(a)=π₂(b)` so `u=γ⁻¹` and `δ=−δ_A6` | matches GAK §8.4 and AK A6.3 | none |
| §2.3 splitting | `a=2`, `a=1+s` | `πι(a)=a(−1+s)−a(1+s)²/2=a(−1+s)−a(s−2)=a`; fractions: `(s²−1)/2=−3`, `(1+s)²/2=s−2` integral | holds | none |
| §3.3 polynomials | `(2,1;2,1)`, `(4,6,4,1)`, `(3,3;2,1)` | `P₂=4+4−2=6`; `P₂,₂=16−1=15`; `9+12−6=15=λ²(6)`; wrong formula `1+4=5≠6` | holds | none |
| §3.4 γ | `γ_t(1)`, `γ_t(−1)`, `ℤ[C₂]`, `γ²(3)` | `1/(1−t)`; `1−t`; `(σ−1)²=−2(σ−1)` so `Fⁿ=2^{n−1}(σ−1)ℤ`; `γ²(3)=λ²(3)+3=6` | holds | none |
| §3.1 inverse-series rule | `[P]−n[R]` | `λ_t(P)(1+t)^{−n}=Σ_j[ΛʲP]tʲ·Σ_i(−1)^i binom(n+i−1,i)t^i` | holds | none |
| §5.3 `I²=(2)` | `I=(2,1+s)` | `I²=(4,2+2s,−4+2s)∋6,4⇒2`, and `⊆(2)` | holds | none |
| §5.4 index ideal | `R=ℤ_(5)`, `J=(i−2)` | primes `(5,i±2)`, lengths 1,0, `f=1`, `N(i−2)=5` | holds | none |
| §5.5 transfer | `f_*f^*(n,L)` | `(dn,L^d s^n)=(n,L)·(d,s)` | holds | none |
| §6.2 opposite-root identity | symbols; `ℍ`, `a=i,b=j` | `(1+x)(1+y)(1−x)(1−y)=1−yx` with `xy=0`, `x²=y²=0`: `e_kj(−ba)`; `−ji=k` | holds | none |
| §6.2 Weyl word | `ℤ` | `w=[[0,1],[−1,0]]`, `w²=−I` | holds | none |
| §8.3 pivot | `[[1,2],[3,4]]` | `[1][4−3·2]=−2` | holds | none |
| §9.2 double | `(1,2)²` | `(1,2+2+4)=(1,8)`; coordinates `(1,3)↦(1,9)` | holds | none |
| §9.3 DVR boundary | `ℤ₂`, `g=12`, `s=2` | `length(ℤ₂/24)−length(ℤ₂/2)=3−1=2=ord₂(12)` | holds | none |
| §10.2 Kubota | `[[5,2],[12,5]]`, `[[−1,2],[−2,3]]` | dets 1; level-2 congruences; `(−1,2)`: `a` a unit, symbol 1 | holds | none |
| §10.3 columns | `(3,2,0)`,`(2,1,0)`,`(3,6,0)` over `ℤ`, level 2 | `≡e₀ mod 2` and gcd 1; fails congruence; gcd 3 | holds | none |
| §10.3 `E₃(ℤ,2ℤ)` | commutators | `[1+2A,1+2B]≡1 mod 4`, `e₀₁(2)≢1 mod 4` | holds | none |
| §10.4 corner products | `L`, `R` | `[[a,y],[0,1]][[b,z],[0,1]]=[[ab,az+y],[0,1]]`; `[[1,p],[0,a]][[1,q],[0,b]]=[[1,q+pb],[0,ab]]` | holds | none |
| §10.5 `S₃` | `f(x)=x²` | squares = `A₃∪{1}`, centraliser `A₃`; multipliers `h` with `xh=hx ∀x` ⇒ `h=1` | holds | none |
| §11.1 `defectExponent` | `ℚ(i)`, `P=(1+i)`, `h=1…6`; `ℚ(i,√−7)`; `ℚ(ζ₃)` levels 6,12,18,36 | `min(2,max(0,⌊h/2−1⌋))`: 0,0,0,1,1,2 ⇒ `r=1,1,1,2,2,4`; `P₁⁶P₂⁴`: `min(2,1)=1⇒2`, `P₁⁶`: `P₂` gives 0 ⇒ 1; `ℚ(ζ₃)`: `(2^0·3^0, 2^1·3^0, 2^0·3^1, 2^1·3^1)=(1,2,3,6)`; agrees with BMS 3.6 | holds | none |
| §11.1 local symbol | `ℚ₇`, `ζ₃≡2`, `(3,7)₃` | `3^{(7−1)/3}=9≡2=ζ₃`; `(7,3)₃=ζ₃⁻¹` by antisymmetry (BMS A.13) | holds | none |
| §11.1 higher units | `ℚ₂(i)`, `n=2`, `e=2`, `h=4,6` | `j=min(2,max(0,⌊h/2−1⌋))=1,2` ⇒ images `μ₂`, `1` (BMS A.17) | holds | none |
| §11.4 tree stabilisers | `F=ℚ`, `S={p}` | `diag(1,p)⁻¹[[a,b],[c,d]]diag(1,p)=[[a,pb],[c/p,d]]` integral iff `p|c` | holds | none |
| §11.4 Serre level | `[[3,−2],[2,−1]]` | `e₀₁(1)e₁₀(2)e₀₁(−1)=[[3,1],[2,1]]·[[1,−1],[0,1]]=[[3,−2],[2,−1]]`; bare even roots give upper-left `≡1 mod 4`, and `3≢1` | holds | none |
| §12.3 `ℙ¹` | `O(m)`, `O_y`, `O(−1)` | `[O(m)]=(1−z)^{−m}=1+mz=(m+1)[O]−m[O(−1)]`, `(m+1,−m)↦(1,m)`; point `(1,−1)↦(0,1)`; `O(−1)`: `(0,1)↦(1,−1)`; matrix det `−1` | holds | none |
| §12.4 `E/𝔽₅: y²=x³−x` | point count; `2·(2,1)` | points `∞,(0,0),(1,0),(4,0),(2,±1),(3,±2)`: 8; `λ=(3·4−1)/2=11·3≡3`, `x₃=9−4≡0`, `y₃=3(2−0)−1≡0`: `2(2,1)=(0,0)` of order 2, so order 4 | holds | none |
| §12.4 doubled line | `Pic`, `K₀` | gluing units `k[t,t⁻¹]ˣ/kˣ=t^ℤ` ⇒ `Pic=ℤ`; affine diagonal (overlap `𝔸¹∖0` affine) ⇒ resolution property (Stacks 0GML) ⇒ `K₀=G₀=ℤ²`; Weibel II.8.2.4 needs `n≥2` | README correct; Weibel V.3.4.2 is the error | source issue |
| §14.1 sign | grades `(1,1)`, `(−1,1)`, char 2 | `(−1)^{1·1}=−1`, `(−1)^{−1}=−1`, `−1=1` | holds | none |

## Not verifiable

- none: every cited text was read legally from the cache; the Morris and Moore PDFs are OCR-noisy but the cited statements were located (lines above).

## Source issues

- **Error** in weibel2013 at Remark V.3.4.2, printed page 387: the source says the affine line with doubled origin has `G₀ = ℤ⊕ℤ` but vector-bundle `K₀ = ℤ`; it should be affine `n`-space with doubled origin for `n ≥ 2`, as its own Example II.8.2.4 (p. 146) requires, the doubled line having `Pic = ℤ` and `K₀ = G₀ = ℤ²`; affects a stated result.
- **Error** in bms1967 at (A.23)(b), printed page 90: the source says the power-residue symbol of an extension is the base symbol raised to an exponent given by a formula in the degree and the two root-of-unity orders; it should be the exponent determined by the norm on roots of unity; affects a stated result; corrected in print at serre1974, Theorem 1, p. 241.
