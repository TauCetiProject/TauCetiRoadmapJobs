# Review of ArithmeticDynamics (pull request #1335 at 4d44a36)

**Verdict:** needs changes

Full review of `TauCetiRoadmap/ArithmeticDynamics/README.md` and `Suggested.lean` at 4d44a367. The gate fails (tex 3, everything else 0, build passes); the dependency check prints no UPWARD or CYCLE line. Two findings block: a headline's prerequisite written as supplied but absent from the supplier's head, and a declared gap that asks for what its supplier already states.

## R01 (P1) — §3.57 `noRationalFourCycle` consumes an X₁(16) point list that EffectiveDiophantineMethods does not state

Location: `README.md` l.251 (contract "From TauCetiRoadmap.EffectiveDiophantineMethods — Layer 3": "Complete lists of rational points of three genus-2 curves … v² = u(u² + 1)(1 + 2u − u²) has exactly (0, 0), (±1, ±2) and the point at infinity") and l.5280 ("Request to EffectiveDiophantineMethods:ED.3: the rational points of v² = u(u² + 1)(1 + 2u − u²) are exactly …"), consumed by the headline `noRationalFourCycle` (`Suggested.lean` l.68).

Claim: the contract presents Washington's list of the rational points of Morton's model of X₁(16) as a statement of EffectiveDiophantineMethods Layer 3.

Witness: EffectiveDiophantineMethods at its open head (read with `roadmaps show`) has Layer 3 sections 3.1–3.29 (its l.3043–4075: 2-descent, heights, saturation, rank-zero curves §3.26 incl. Morton's Y² = 4X³ − 11X² + 8X, C₀(5) §3.27, C₁(3₂) §3.28, X₀^dyn(6) §3.29) and Layer 4 Chabauty for C₀(5), C₁(3₂) and X₀^dyn(6). No section mentions X₁(16), X₁(13), X₁(18), Washington, or any of the three models quoted at l.251 (searched by the polynomials "2x⁵ + x⁴", "10x³ + 10x²", "1 + 2u", "2u − u²" and by name). `roadmaps grep` finds the curve in no roadmap on main and in no open pull request this roadmap may cite (the only X₁(16) mention is AdelicImagesAndModularCurves, later and by another author). Morton 1998 itself attributes the list to Washington (morton98 line 182).

Repair (tested on the instance: the §3.57 route needs exactly the six-point list of the genus-2 curve (6) of Morton 1998, Prop. 3, p. 93): replace the l.251 clause by a declared gap in the ED subsection, `What EffectiveDiophantineMethods must provide (gap:x1-16-rational-points): the rational points of the genus-2 curve v² = u(u² + 1)(1 + 2u − u²) over ℚ are exactly (0, 0), (±1, ±2) and the single point at infinity, with J(ℚ) finite (Washington; Morton 1998, Proposition 3 and proof of Theorem 4, p. 93)`, cite `gap:x1-16-rational-points` in the §3.57 *Needs:* line instead of `EffectiveDiophantineMethods:ED.3`, and delete the X₁(13) and X₁(18) clauses, which no target consumes (their models occur only at l.251). The package has no `design/plan.json`, so the slug cannot be recorded in a plan `gaps` list within this pull request; say so in the repair report so the intake can announce it on ED's job.

## R02 (P2) — `gap:rp-geometric-height-field` is compound and asks HeightsRationalPointsAndObstructions for what its §§0.10–0.11, 0.16 already state

Location: `README.md` l.112 (table row: "Supply the global geometric height-field and curve-height machine for K(T) used in §6.24 over finitely generated characteristic-zero constants") and l.8893 (§6.24 *Needs:*).

Claim: the needs sentence names two things ("height-field" and "curve-height machine") without hypotheses, and both exist at the supplier's head.

Witness: HeightsRationalPointsAndObstructions at its open head, §0.9 `GeneralizedGlobalField` (its l.210), §0.10 "Polarized function fields" (l.223: for K/k finitely generated, k algebraically closed in K, trdeg ≥ 1, a normal projective V with k(V) = K and ample N, `ofPolarization` gives |a|_D = exp(−deg_N(D)·ord_D a), with curve weights [k(D):k]), §0.11 `normalizedHeight` (l.243) and §0.16 "Weil's height machine" over a global height field (l.295). For K(T)/K with V = ℙ¹_K this is the degree-normalized geometric height field of §6.24's right-hand side, and §0.16 over the global height field K supplies h_T on the base curve, which this README itself consumes at l.217–227.

Repair: cite HeightsRationalPointsAndObstructions §§0.10–0.11 and 0.16 in §6.24's *Needs:* line and delete the gap row; if a specific statement is missing (for instance a hypothesis on the constant field or the comparison of §0.10's family with Call–Silverman's product-formula structure), replace the row by a one-sentence needs with that exact statement and its hypotheses. Either way the entry is also absent from a plan `gaps` list, since the package has no `design/plan.json`.

## R03 (P3) — ED declaration names and ED.3/ED.4 keys that the supplier does not declare

Location: `README.md` l.113 and l.239 (`ED0.boundedHeightPoints`, `ED0.mem_boundedHeightPoints_of_mulHeight₁_le`, `ED0.boundedHeightProjectivePoints`, `ED0.mem_boundedHeightProjectivePoints`), l.243 (`ED.3/poonen-genus-two-mordell-weil`), l.5296 (`EffectiveDiophantineMethods:ED.3/fps-genus-two-mordell-weil`, `EffectiveDiophantineMethods:ED.4/fps-quintic-cycle-curve`).

Witness: ED's head §0.11 (its l.1027–1050) names `boundedHeightPoints L pb D τ` as a pair of finite sets and states the projective set T = {[x:1]} ∪ {[1:0]} in prose; its `Suggested.lean` has namespaces `ED2`, `ED3`, `ED6` only (no `ED0`), and the strings `boundedHeightProjectivePoints`, `mem_boundedHeightPoints_of_mulHeight₁_le`, `fps-quintic-cycle-curve` and `poonen-genus-two-mordell-weil` occur nowhere at that head (`fps-genus-two-mordell-weil` and `rank-zero-curves` do, at its l.3895 and l.3456). The worker's citation check lists the four `ED0.*` names as found nowhere.

Repair: cite "EffectiveDiophantineMethods §0.11, `boundedHeightPoints` with its completeness clause and its projective set T" and, for the certificates, ED §3.27 (C₀(5) Mordell–Weil), §3.28 (C₁(3₂)) and Layer 4 §4.1 (the C₀(5) residue-disc datum at p = 3) by section number.

## R04 (P3) — ComplexComparisonPartII sub-declarations that §C-1.1 does not name

Location: `README.md` l.189 (`complexSchemeAnalytification.complexPoints`, `.mapId`, `.mapComp`, `.closedSubspace`, `.separatedHausdorff`, `.proper`).

Witness: ComplexComparisonPartII §C-1.1 at its head (its l.774–780) defines the single name `complexSchemeAnalytification` and states the classical-points topology, closed-subspace and fibre-product comparisons, Hausdorffness for separated X and preservation of finite and proper morphisms in prose; none of the six dotted names occurs in that README (three of them are in the worker's found-nowhere list).

Repair: cite §C-1.1 by those statements ("its classical-points identification", "its separated-implies-Hausdorff comparison") and drop the invented names.

## R05 (P3) — gate: TeX exponents in §4.60

Location: `README.md` l.7114: "(n/N)^{1/2}" twice and "2^{−1/2}" outside code spans (gate rule `tex`).

Repair: write `(n/N)^(1/2)` and `2^(−1/2)`, or put the three expressions in code spans; the heading is unchanged so no link slug moves.

## R06 (P3) — §3.57 relies on a computer-algebra certificate for smoothness that §3.73 already owns

Location: `README.md` l.5280: "the ideal (Φ₄, ∂Φ₄/∂x, ∂Φ₄/∂c) is the unit ideal of ℚ[x, c] (a Gröbner-basis certificate, verified by computer algebra)".

Witness: §3.73 (l.5536) states that for every d ≥ 2 and n ≥ 1 the affine curve Φ*ₙ(x, c) = 0 is nonsingular over ℂ (Gao–Ou Theorems 1.1–1.2), which gives the n = 4, d = 2 case over ℚ.

Repair: delete the certificate sentence and cite §3.73 in the proof and the *Needs:* line; a computed certificate is not a roadmap input.

## R07 (P3) — unused hypothesis in `polynomialLine_returnTimes`

Location: `Suggested.lean` l.158–161 (`hline : A ≠ 0 ∨ B ≠ 0`) and `README.md` l.10058 ("with A≠0 or B≠0").

Witness: with A = B = 0 the set {n | 0 = C} is ℕ when C = 0 and ∅ when C ≠ 0; both are finite unions of progressions in the sense of `IsFiniteUnionAP` (A = {(1, 0)}, respectively A = ∅), so the statement holds without the hypothesis.

Repair: drop `hline` from the theorem and the clause from §6.90; the README's own degenerate-case paragraph already covers constant polynomials.

## R08 (P3) — Lean-style names of this roadmap's own targets written in prose without a declaration

Location: about 145 distinct identifiers outside code spans, for example `adjustedCriticalOrbit_ne_zero_iff` (l.7671, l.8441), `criticalPoints_conj` (l.9183), `AdelicMeasure.height_eq_average` (l.7100), `multiplier_eq_one_iff`, `linearIndependent_squareClass_iff`, `escapeRate_rpow_abv` (l.2685), and `ClassicalArithmeticCompletion.projectiveWeilHeight_projMap` (l.2198), a name the cited supplier does not use (its §6.37 names `projectiveWeilHeight` only).

Witness: `Suggested.lean` declares 15 names; none of the identifiers above is among them, and writing them without backticks keeps them out of the gate's README-identifier check while still reading as declarations.

Repair: refer to the targets by their section titles in prose ("the nonvanishing criterion for the adjusted critical orbit of §5.17"), and keep backticked names only for declarations of `Suggested.lean` or of a supplier at its head.

## Verified sound

**Gate and build.** Worker's gate at 4d44a36: tex=3 (R05), all other counters 0, build passes. `lake env lean TauCetiRoadmap/ArithmeticDynamics/Suggested.lean`: 11 warnings, all `declaration uses 'sorry'` (l.68, 72, 76, 85, 100, 132, 143, 151, 158, 167, 176), 6 s. Imports: the single `import Mathlib`. No `set_option`, no sorry'd data, no `lemma`, no `#eval`. Outside-folder diff: 0 paths.

**Dependency check.** `gate --depcheck … --movable`: `depcheck: 204 roadmaps, 1478 edges, 0 problem(s)`; no UPWARD, CYCLE or moved line. Every supplier on the README's `### From` headings is on main (SchemeAndStackFoundations, DiophantineApproximationAndTranscendence, ModularCurves, AlgebraicCurves, FuchsianOrbifolds, ClassicalArithmeticCompletion, PDE, RestrictedPowerSeries, EllipticCurves, ComplexManifolds), completed (NumberFieldArithmetic, ConformalMapping, HeightsAndUnits, PolynomialGaloisGroups, LocalGaloisGroups) or earlier in the merge order (the 12 open-PR suppliers named in the pull request).

**Supplier citations resolved** (section or name found at the head read today): HRPO §0.18 `tateLimit φ d f`, `tendsto_tateLimit`, `abs_tateLimit_sub_le`, `tateLimit_comp`, `tateLimit_unique`, `congr_bounded` (its l.316–318, argument order as the README states), §0.30 `weilHeight_dominant_lower_bound` (l.453), §§5.17a–f names `metrizedDivisorAction`, `AdelicMetrizedLineBundle`, `cycleProbabilityMeasure`, `BergmanDensity`, `AdelicSuccessiveMinimum`, §§0.9, 0.16, 0.19, 4.8; ED §0.11 (l.1027), §3.26 rank-zero curves incl. Morton's Y² = 4X³ − 11X² + 8X with points ∞, (0,0), (1,±1), (2,±2) (l.3976), §§3.27–3.29, Layer 4 §4.1; TBA §§0.21–0.23, 1.1–1.3, 3.3, 6.1–6.5; AMAG §7.10.2 with all seven `BerkovichAnalyticSpace.*` names (l.9828) and §7.4; CCII §C-1.1 (l.724); ELCI §§0.1, 0.4 (Δ = 16λ²(1−λ)², j = 256(λ²−λ+1)³/(λ²(1−λ)²), l.146); PMNT §§4.1–4.3, 5.2; GNQA §4.2; AGR §1.11; IG.2 Hilbert irreducibility; NMSAV §§1.3, 1.7–1.9; AGAH §§1.12–1.14; SSF §§0.3, 0.9 `spreading_out_models`, 2.6, 1.17, Layer 5 (intersection theory, l.6535); CAC §6.37 `projectiveWeilHeight`; HeightsAndUnits §1.1 Northcott; RestrictedPowerSeries §2.4; DAT §§0.2, 0.3, 2.4; ModularCurves §4C; PDE Lane C; FuchsianOrbifolds Layer 5; ConformalMapping L0, L4; EllipticCurves Layer 4 `HasPotentialGoodReduction`; ComplexManifolds Milestone 3; AlgebraicCurves Layers 0–3, 6–9, 11, 12; NumberFieldArithmetic Layer 3.

**Library declarations opened at the pins** (file and line): `WeierstrassCurve.Affine.Point.xRep` (Mathlib `AlgebraicGeometry/EllipticCurve/Affine/Point.lean:887`, `xRep_zero = ![1, 0]` l.892, `xRep_some = ![x, 1]` l.896, `xRep_ne_zero` l.899, `xRep_eq_xRep_iff` l.917); `Point.naiveHeight = logHeight P.xRep` (`NumberTheory/Height/EllipticCurve.lean:37`); Tau Ceti `Point.canonicalHeight = limUnder atTop (naiveHeight (2ⁿ•P)/4ⁿ)` (`AlgebraicGeometry/EllipticCurve/CanonicalHeight/Basic.lean:119`), `canonicalHeight_nsmul` l.285, `canonicalHeight_eq_zero_iff_isOfFinAddOrder` l.332 with a `[Northcott …]` instance hypothesis; `WeierstrassCurve.mul_eval_ΨSq_eq_eval_Φ_of_zsmul` (Tau Ceti `DivisionPolynomial/Descent.lean:116`); `Φ_neg` l.390, `ΨSq_neg` l.270 (Mathlib `DivisionPolynomial/Basic.lean`); `isCoprime_Φ_ΨSq`, `ΨSq_ne_zero_of_Δ_ne_zero`, `exists_point_on_curve` (Tau Ceti `DivisionPolynomial/Coprimality.lean`); `natDegree_ΨSq_le` (Mathlib `DivisionPolynomial/Degree.lean`); `OnePoint.instChartedSpace` (Tau Ceti `Geometry/Manifold/Instances/OnePoint.lean:201`); `FinitePlace.norm_embedding'` (`NumberField/Completion/FinitePlace.lean:273`, native value = N(v)^(−ord)); `absLogHeight₁` (`Height/NumberField.lean:145`), `finite_setOfPred_mulHeight₁_le` l.410, `mulHeight₁_div_eq_mulHeight`, `Projectivization.logHeight` (`Height/Projectivization.lean:51`); `AlgebraicGeometry.Etale` (`Morphisms/Etale.lean:39`) with no quasi-projectivity notion anywhere under `AlgebraicGeometry` (supports the docstring's "not statable" for §6.101); `IsLocalRing.residue_ne_zero_iff_isUnit`, `Polynomial.resultant_X_pow_left`, `resultant_succ_left_deg`, `aeval_homogenize_X_one`, `homogenize_mul`, `toTupleMvPolynomial`, `AlgebraicIndependent.aeval_of_algebraicIndependent`, `exists_finset_isTranscendenceBasis`, `IntermediateField.fg_top_iff`, `RealRMK.rieszMeasure`, `ArzelaAscoli.isCompact_of_equicontinuous`, `circleAverage_log_norm_sub_const_eq_log_radius_add_posLog`, `NumberField.prod_abs_eq_one` all present.

**Ownership by object.** `roadmaps grep` over main and the 437 open pull requests for "Lattès map", "dynatomic", "arboreal", "escape rate", "Arakelov–Zhang pairing", "dynamical Mordell", "canonical height of a rational map": no roadmap other than this one builds them (ELCI mentions Lattès maps only as a consumer of its Legendre model; "Ritt"/"Lech" hits are substrings of other words). Lean names `forwardOrbit`, `IsFiniteUnionAP`, `legendreTorsionImages`, `ellipticStandardProjection`, `noRationalFourCycle`, `rittCommonIterate`, `lechIntegralAssembly` and the namespace `TauCetiRoadmap.ArithmeticDynamics` occur in no other `Suggested.lean`. ArithmeticDynamicsPartII (#1686) is a Markoff-dynamics roadmap with disjoint content.

**Headline theorems and `Suggested.lean`.** The README's headline set is the docstring's: Morton 3-cycle uniqueness and 4-cycle exclusion, FPS 5-cycle exclusion, Stoll's integer families, Ritt, GTZ 1.5 and 1.4, Lech–Cassels, DKY 1.4 and Corollary 8.2, DWY torsion specializations: all stated. The not-statable list was checked against the pins: no rational-map carrier on ℙ¹ (so §§1.20/1.25 would only be statable as a polynomial-on-affine-points stand-in, correctly not written), no Berkovich carrier, no adelic metrics, no dynatomic polynomial carrier, no preimage tower, no quasi-projective variety. Padding probe on a scratch copy (`first | rfl | simp | decide | infer_instance | simp [defs]`): none of the 11 sorried theorems closes (8 leave unsolved goals, 3 fall through). `#check @name` for all 15 declarations: types agree with `signatures.md` and with the README statements, no lost binder; `uniformThreeBranchCommonTorsion` carries `[W₁.IsElliptic] [W₂.IsElliptic]` inside the ∀ as the README requires.

**Seeded sample, locators** (source id and line of the cached text): 2.12 demarco-krieger-ye-2020 (2.3) p.7 line 266 (norm misprint confirmed, line 269), baker-rumely-2006 §3.1 p.8 line 311; 2.56 Lyubich1983 not readable (below); 2.60 hutz-2009 Theorem 2 p.2 line 63 (e ≤ 1 + log₂ v(p) ⟺ 2^{e−1} ≤ v(p); F_{e−1} ≤ v(2) at line 755), Corollary 3 line 88, Lemma 22 line 672, Lemma 23 line 732 (gap confirmed, below); 2.63 baker-rumely-2006 (3.28) p.14 line 601, call-silverman-1993 Theorem 2.1 printed p.171 (scan page 10); 2.83 baker-rumely-2006 Proposition 3.36 p.18 line 767; 3.13 hutz15 §2 p.6 line 280; 3.41 poonen95 Figure 1 p.3 line 84, hutz15 §4.1 table p.14 line 686 ("9, c = −29/16"); 4.4 yuan-zhang-adelic-v9 Theorem 5.4.3 printed p.168 (PDF p.178) line 6607, §6.3 printed p.190 line 7177; 4.51 demarco-krieger-ye-2020 §2.8 pp.12–13 lines 511–521, (2.12) line 448; 4.55 favre-rivera-letelier-2006 Théorème 8 p.38 line 1780, fili2017 §2.2 p.5 lines 231–237; 4.71 pst2012 (1) p.1 line 38, Theorem 2 p.2 line 57; 5.26 stoll-1992 waived, statement consistent with jones-arboreal-survey Theorem 2.3 p.6 line 212; 5.55 jones-arboreal-survey §5 p.26 line 1022, x² − 16/9 line 1060; 6.21 cassels-embedding-1976 pp.196–197 lines 121–135 (θ_j rescaled by p^t, ξ_j = a_j + θ_j), Theorem I p.193 line 17; 6.39 ingram-2018-critical-height p.1 lines 26–30. Headlines: morton98 Theorem 4 printed p.93 line 177, Propositions 2–3 lines 158–175; fps95 Theorem 1 p.2 line 68, (3) p.7 line 276, Theorem 3 p.18 line 729, Theorem 6 p.23 line 934; morton92 Theorem 3 printed p.346 line 137, Lemma 6 printed p.363 line 848, (34) Y² = 4X³ − 11X² + 8X; ghioca-tucker-zieve-2008 Theorem 1.1 line 18, Theorem 1.4 lines 83–89, Theorem 1.5 p.3 line 94, Theorem 2.1 p.5 line 195, Proposition 6.3 and Corollary 6.4 p.17 lines 678–684; ritt-1920 §IV p.356 lines 343–351; dwy-2014-v3 Theorem 1.2 p.2 line 61 (a, b ∈ Q̄), §6.5 pp.28–29 lines 1144–1153 (|Tor(c)| = ∞ by non-normality); demarco-krieger-ye-2020 Theorem 1.4 p.3 line 89, Corollary 8.2 pp.44–45 lines 1905–1916 (|π₁(E₁[2]) ∩ π₂(E₂[2])| = 3); baker-rumely-2006 Theorem 2.3 p.5 line 211 (§4.60).

**Adversarial table** (statement; instances; values on each side; result; change).

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| 0.4 `Res_{m,n}` orientation | (aX₀+bX₁, cX₀+eX₁); (X₀²+2X₁², X₀X₁); (X₁^d, X₀^d); (X₀, X₀) | det[[a,b],[c,e]] = ae−bc; 4×4 Sylvester det = 2 = F(0,1)·F(1,0); (−1)^{d²} = (−1)^d; 0 | all Checks hold | none |
| 2.12 escape rate | x = 0; d = 1 | limUnder junk at 0; d = 1 excluded by d ≥ 2 | hypotheses present | none |
| 2.60 Hutz bound | e = 0, 1 over ℚ₃: 2⁰ = 1 ≤ 1, F₀ = 0 ≤ 1; e = 2 at p = 3 needs 2 ≤ ord(3) = 1 | excludes n = m·r·9 over ℚ₃ | holds; Hutz's Lemma 23 step repaired as in Correction 10 | none |
| 2.63 λ̂ functional equation | (X₀², X₁²): log⁺v(z²) = 2log⁺v(z) − log v(1); (z^p−z)/p at z = 0: λ̂(0) = pλ̂(0) + log p ⟹ λ̂(0) = −log p/(p−1) | both sides −log p/(p−1) | holds | none |
| 2.83 μ_{f,v} probability | (z^p−z)/p | Haar on ℤ_p mass 1 | holds | none |
| 2.84 potential good reduction ⟺ point mass | πz²: δ at ζ_{0,1/|π|} (type II); (z^p−z)/p: Haar, repelling fixed point | both directions | holds | none |
| 3.13 points of height ≤ H | H = 1 | [1:0],[0:1],[1:1],[1:−1] = 4 | Check holds | none |
| 3.41 PrePer(z²+c, ℚ) | c = −2: {−2,−1,0,1,2}; c = 1: ∅; c = −29/16: 8 finite (9 with ∞) | matches Poonen Fig. 1 / Hutz table | holds | none |
| 3.57 `noRationalFourCycle` | non-periodic x: minimalPeriod = 0 ≠ 4; c = −29/16 period-3 cycle (5/4, −1/4, −7/4) | consistent with Φ₄ having no finite rational point | statement matches Morton Thm 4; prerequisite unowned | R01, R06 |
| 3.58 `noRationalFiveCycle` | excluded c ∈ {−2, −16/9, −64/9, −4/3}; c = −2 preperiodic set has no 5-cycle | FPS Table 2 conductors 11, 41, 275 | matches FPS Thm 1 (unconditional) | none |
| 3.88 `atMostOneRationalThreeCycle` | y = x; y = f(x), f²(x); c = −7/4 double cubic without rational root | conclusion is the 3-element orbit | matches Morton 1992 Thm 3 ("never splits completely") | none |
| 4.4 Yuan–Zhang | deg_L(X) > 0 as denominator | normalization c₁(L̄_v)^{dim X}/deg_L(X) | matches Thm 5.4.3 | none |
| 4.51 pairing = mutual-energy distance | two standard metrics: 0 = ⟨λ,λ⟩ | 0 = 0 | holds; Gauss-radius value ½log p not recomputed | none |
| 4.55 ĥ_f = h_{ρ_f} | z^d: ρ = λ, ĥ = h; polynomial: h_{ρ_f}(∞) = ĥ_f(∞) = 0 | 0 = 0 | holds | none |
| 4.71 multiplicity averages | g = z²: 2ⁿ+1 solutions 0, ∞, (2ⁿ−1)-th roots of unity, all simple | multiset = set average | holds | none |
| 5.26 critical orbit positivity | a = 1: 2, 5, 26; a = −2: 2, 2, …; a ≤ −2: a²+a = |a|(|a|−1) ≥ |a| | > 0 | holds (needs only a ≠ 0, −1) | none |
| 5.55 eventual stability | (x²+1, 0): f² = x⁴+2x²+2 Eisenstein at 2, even iterates Eisenstein (f^{2k}(0) ≡ 2 mod 4), odd iterates divide them | stable ⟹ eventually stable | Check holds | none |
| 5.64 `stoll_integer_family_card_gal` | n = 0: Gal(X) order 1 = 2⁰; a = 2, n = 1: order 2; a = −4: −a square, excluded (x²−4 splits); a = −8: (−8) % 4 = 0 in `Int.emod`, −a = 8 nonsquare; a = 3 excluded (G₃ ≠ Aut T₃) | 2^{2ⁿ−1} | matches Jones Thm 2.3 / Stoll | none |
| 6.3 Lattès map | y² = x³−x: b₄ = −2, b₈ = −1 ⟹ Φ₂ = (x²+1)², ΨSq₂ = 4x(x²−1), f(2) = 25/24; y²+y = x³: Δ = −27, lift (X⁴−2XZ³, 4X³Z+Z⁴), Res = 729; y²+125y = x³: Res = 729·5²⁴ | as the Checks | holds | none |
| 6.14 `IsFiniteUnionAP` | {2k+1} ∪ {3}: period 2 from n = 4; {3}: step 0 | eventually periodic | holds | none |
| 6.21 affine changes | a = 0, c = 1; c = 0 (constant, dependent); translation −x from K | identity; fails; fails | hypotheses exactly needed | none |
| 6.23 `rittCommonIterate` | n = 1 ⟹ γ = 1; F = −X², G = X²: F^n = −X^{2ⁿ} ≠ G^n, γ = −1, (−1)^{2ⁿ−1} = −1; F = −X³, G = X³: F² = X⁹ = G², (−1)⁴ = 1, s = 0 monomial; F = X², G = ζ₃X²: G² = ζ³X⁴ = X⁴, γ = ζ², γ³ = 1 | exponent 1+d+…+d^{n−1} ≡ 1+r+…+r^{n−1} since γ^s = 1 and d ≡ r mod s | matches GTZ Prop. 6.3 | none |
| 6.35 Legendre curve | a₂ = −(1+t), a₄ = t: b₂ = −4(1+t), b₄ = 2t, b₈ = −t²; Δ = 16t²(1+t)² − 64t³ = 16t²(1−t)²; c₄ = 16(t²−t+1), j = 256(t²−t+1)³/(t²(t−1)²); Res(F_t) = Δ² = 256t⁴(t−1)⁴ | agree with ELCI §0.4 | holds | none |
| 6.57 `ellipticStandardProjection` | A = [[0,1],[1,0]]: ∞ = (1,0) ↦ (0,1) ↦ 0, 0 ↦ ∞, 2 ↦ 1/2; A = 2·1: 4/2 = 2; zero matrix excluded by GL₂ | as the Checks | real body on `xRep`, source/target named | none |
| 6.63 preperiodic = torsion | y² = x³−x: 0, ±1 ↦ ∞; P, −P share x; n^bP = ±n^aP ⟹ finite order | both directions | holds | none |
| 6.84 `polynomialOrbits_meetingLine` | f = g = X²+1, x₀ = 0, y₀ = 1; f = X², g = ζ₃X², x₀ = y₀ = 2: orbits 2, 4, 16, 256, 65536 and 2, 4ζ, 16, 256ζ, 65536, g² = X⁴ = f²; a = 0 horizontal line with b strictly preperiodic: conclusion fails, so a ≠ 0 needed | infinite set ⟹ n = 1 resp. 2 | matches GTZ Thm 1.5 | none |
| 6.86 `lechIntegralAssembly` | L = ℚ, s = {1/6}, N = 3: p = 5, |1/6|₅ = 1; s = ∅; L = ℚ(√2), p = 7 (3² ≡ 2) | embeddings exist | weaker than Cassels (≤ 1 vs = 1), consistent | none |
| 6.87 `legendreTorsionSpecializations_infinite` | a = 2: t = 2 two-torsion; t = 4: f_4(2) = 0; t = 4/3: f(2) = (64/9)/(16/3) = 4/3 = t | four-torsion fibres | matches DWY §6.5 (a ∈ Q̄); torsion t are algebraic so the set equals Tor(a) | none |
| 6.90 `polynomialLine_returnTimes` | f = 0, g = X+1, diagonal: {0}; f = g = 0: ℕ; f = 2X, g = 3X, Y = X+1: 3ⁿ = 2ⁿ+1 only n = 1; A = B = 0: ℕ or ∅ | all finite unions of progressions | holds; `hline` unused | R07 |
| 6.111 `uniformLegendreCommonTorsion` | t₁ = t₂ excluded (infinite); ∞ = π(O) in both sets; ncard of an infinite set is 0, hence the separate `Finite` | DKY Thm 1.4 counts π(E^tors) incl. ∞ | matches | none |
| 6.112 `uniformThreeBranchCommonTorsion` | π(E[2]) has 4 distinct values; 4 common ⟹ same curve and projection (infinite), excluded by "= 3" | DKY Cor. 8.2 hypothesis "= 3" | matches | none |
| 1.25 ĥ_f = 0 ⟺ preperiodic | z²: 0, ∞, roots of unity; z²−2: ĥ(−2) = 0, ĥ(3) > 0 | Kronecker | holds; not statable at pins | none |
| Conventions: native vs standard finite-place value | 3 inert in ℚ(i): native 1/9 = (1/3)² | local degree 2 | matches `norm_embedding'` | none |
| Conventions: elliptic height normalisation | Tau Ceti `canonicalHeight` = lim h_K(x(2ⁿP))/4ⁿ (relative, divisor 2(O)); /q absolute for 2(O); /2q for (O) | agrees with Basic.lean:119 and `naiveHeight = logHeight xRep` | holds | none |

**Checks and shape.** 102 definition sections with an API block, 150 `**Checks.**` blocks; a scripted count finds no definition with fewer than three Check bullets. Every layer ends with `### Examples` and `### Dependencies`; headings follow the house shape; no process words, round labels or pull-request numbers in the README or docstrings (gate counters 0). The `### From …` supplier subsections cite by roadmap name and section throughout.

**Declared gap form.** The one declared gap (`gap:rp-geometric-height-field`) is written as a table row in Scope rather than as `What HeightsRationalPointsAndObstructions must provide (gap:…)` under its contract subsection; see R02. No `design/plan.json` exists in the board package, so no plan-side `gaps` list can be compared.

## Not verifiable

- Lyubich 1983 (§§2.56–2.57, Ergodic Theory Dynam. Systems 3): the only copy is Cambridge Core behind a subscription; the sources service found no legal source. Cited by locator only.
- DeMarco–Krieger–Ye published numbering ("published Theorem 1.5" in §6.111's title): the Annals DOI fetch resolved to the arXiv v2 text, so the published theorem numbers were not checked; all locators to arXiv v2 were.
- Stoll 1992 (blueprint reproduction, waived): §§5.26, 5.64 cited by locator; the statement was checked against Jones's survey Theorem 2.3 instead.
- Forster, Zieve 1996, Tate 1983, Silverman 2012, Poonen's corrected descent certificates: waived in the manifest; cited by locator.
- The Gauss-radius pairing value ½ log p in §4.51's Endpoint check was not recomputed.

## Source issues

- **Gap** in hutz-2009 at Lemma 23, proof, printed p. 17 (arXiv v3): the proof claims c_{k+1} ≥ p·c_k whenever b_k > v(p), but Lemma 22 only gives c_{k+1} ≥ min(b_k, c_k + v(p), p·c_k); it should keep the minimum and run the chain argument after the first index with b_k > v(p); affects the proof (Theorem 2 survives, as §2.60 and Correction 10 show).
- **Misprint** in demarco-krieger-ye-2020 at (2.3), §2.2, p. 7 (arXiv v2): the source writes the norm of (z, w) as max of |x|_v and |y|_v; it should be max of |z|_v and |w|_v; affects nothing.
