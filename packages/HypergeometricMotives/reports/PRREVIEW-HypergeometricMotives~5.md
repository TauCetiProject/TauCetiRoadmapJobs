# Review of HypergeometricMotives (pull request #1716 at ade8f64)

**Verdict:** needs changes

This is a full review of the head. All four findings of the previous review are repaired. The gate passes, the dependency check is clean, `Suggested.lean` elaborates with only `sorry` warnings, and every number I recomputed (traces, Euler factors, point counts, Bézout data, zigzag laws) matches the README. Three P3 findings remain and none blocks: two locator defects and one false phrase in a proof sketch. No file outside the roadmap folder changed.

## R01 (P3) — "Roberts–Rodriguez-Villegas (4.4)" is not in the cited preprint

**Location:** `TauCetiRoadmap/HypergeometricMotives/README.md:1699`, "forms agree with 3.5 up to scalar (Fedorov, Theorem 1; Roberts–Rodriguez-Villegas (4.4), §5)", and `:2588`, "(4.4) the orthogonal/symplectic dichotomy".

**Claim:** The README says (lines 2585–2586) that its section, equation and page locators for Roberts–Rodriguez-Villegas refer to arXiv:2109.00027v1, so (4.4) is a numbered equation of that preprint.

**Witness:** The only numbered equation in §4 of the preprint is (4.1) (`rrv2022` line 489). "(4.4)", the inclusion of `G_M` in `CSp_n` or `CO_n`, is the numbering of the *Notices* version, PDF page 6, printed p. 919 (Notices text line 589).

**Repair:** Cite the preprint's own passages: §2 "Orthogonal vs. symplectic", p. 3 (`rrv2022` lines 230–242), and §4 "Motivic Galois groups of HGMs", p. 5 (lines 468–479). Alternatively, write "*Notices* version, (4.4), p. 919". The dichotomy that 5.0 cites both passages for is stated in each of them.

## R02 (P3) — Beukers–Cohen–Mellit page numbers are arXiv pages under a journal citation; two page ranges are too wide

**Location:** `README.md:2573–2574`: the reference gives *Pure Appl. Math. Q.* **11** (2015), 559–589. The page locators that use it are at `:1478` ("pp. 11–12 of the paper"), `:1512` ("Theorem 3.3, p. 10"), `:1610` ("p. 10"), `:2326` ("(1.1), p. 3"), `:2333` ("Proposition 4.3, pp. 13–14") and `:2343` ("Theorem 1.5, pp. 3–4"). In addition, `:921` and `:1708` cite "Roberts–Rodriguez-Villegas §9, pp. 9–10".

**Claim:** These page numbers locate the statements in the cited work.

**Witness:** No journal page is below 559. The numbers are arXiv:1505.02900v2 pages: Theorem 3.3 on p. 10 (`bcm2015` line 435), Proposition 4.3 on pp. 13–14 (line 617), the proof of Theorem 1.3 on pp. 11–12 (lines 503–566). Theorem 1.5 is on p. 4 only (line 152). Roberts–Rodriguez-Villegas §9 starts and ends on p. 9 (`rrv2022` lines 882–922; §10 begins before the p. 10 marker).

**Repair:** Add "(page locators refer to arXiv:1505.02900v2)" to the Beukers–Cohen–Mellit reference, as the Roberts–Rodriguez-Villegas reference already does. Change "Theorem 1.5, pp. 3–4" to "p. 4" and "§9, pp. 9–10" to "§9, p. 9" at both places.

## R03 (P3) — 5.5 (ii): the residue of `−T F′/F` is not a multiplicity

**Location:** `README.md:1874–1875`, "the poles of `−T F′/F = ∑_λ λT/(1 − λT)` are the `1/λ` for the distinct `λ ∈ Λ`, each simple with residue a multiplicity".

**Claim:** At `T = 1/λ` the residue of `−T F′/F` is the multiplicity `m_λ`.

**Witness:** Near `1/λ`, `λT/(1 − λT) = −T/(T − 1/λ)`, so the residue is `−m_λ/λ`. The multiplicity is the residue of `F′/F`. Legendre at `5`: `F = 1 + 2T + 5T²`, `λ = −1 + 2i`, `m = 1`, and the residue of `−TF′/F` at `1/λ` is `−1/λ = (1 + 2i)/5`, not `1`.

**Repair:** Replace the phrase with "each simple with nonzero residue `−m_λ/λ` (`m_λ` the multiplicity of `λ`; `λ ≠ 0` because `|λ| = p^{w/2}`)". The argument only needs a nonzero residue, so the conclusion `B = ∏_{λ distinct}(1 − λT)` is unchanged. On the Legendre instance `B = 1 + 2T + 5T²`, as the Check at README 1929–1934 says.

## Previous findings

- **R01 (`[Fintype F]` beside `[Field F]`): repaired.** `Suggested.lean:613`, `:723` and `:938` read "variable {F : Type*} [Field F] [Finite F] [DecidableEq F]". `:616` reads "abbrev qm (F : Type*) [Finite F] : ℕ := Nat.card F - 1". The bodies obtain `Fintype` through `Fintype.ofFinite`. The gate's `statement-hygiene` count is now 0.
- **R02 (5.5 (ii) integrality from an unnamed input): repaired.** `README.md:1871–1872` reads "so by Fatou's lemma (`DeligneWeightsAndPurity` §4.4, the normalized integral numerator/denominator theorem…)". The *Needs:* line at `:1938` names §4.4. At the open head of DeligneWeightsAndPurity, §4.4 (its README lines 1383–1385) says: "Alternatively, when `R∈ℤ[[t]]`, prove the normalized integral numerator/denominator theorem for rational series and apply Gauss's lemma". It also has the same `(3+4i)/5` control as a Check. The route is sound. The series `1 − TF′/F` lies in `ℤ[[T]]`, is rational and has constant term `1`, which is exactly what that theorem needs. (A residue slip in the sketch is R03.)
- **R03 (`local_sign_eq_one_of_odd_weight` about a free multiset): repaired.** `Suggested.lean:902` now concludes "(D.frobeniusPolynomial t p).coeff D.degree = (p : ℚ) ^ (D.weight * D.degree / 2)". This uses `htr` and `hcard` through 5.5 (i), and README 1898–1902 states the same.
- **R04 (seven citation nits): repaired.**
  - `:1224` now presents Beukers–Heckman 5.8 as a characterisation, not a converse. Its added clause `a^n = b^p c^q` could not be checked (see Not verifiable). The clause is consistent with `det h_1 = −1`: `∏b/∏a = (−1)^n b^p c^q / ((−1)^{n+1} a^n) = −1` forces `a^n = b^p c^q`.
  - `:1663` now cites (3.2)–(3.3), §3, p. 3, verified at `rrv2022` lines 282 and 310.
  - `:142` now reads "by 2.6, `d` is even whenever `w` is odd".
  - `gaussSum_frob` is gone from `:157` and 4.4.
  - `:76`, `:333` and `:1732` now cite F.2.1–F.2.5, F.4.5 and F.5–F.6, verified on main (below).
  - `:115` now names `DirichletPadicLFunctions` §§4.1, 4.4–4.5, verified at its open head (below).
  - `:2617` now cites Ono's Theorem 1, p. 1210, verified at `ono1998` line 341 (PDF p. 6 = printed p. 1210).

## Verified sound

**Gate and order.**
- My gate run at `ade8f64`: every counter is `0` (`set_option`, `sorry-data`, `statement-hygiene`, `depcheck`, `stray-files`, `outside-folder`, `prnum`, `residue`, `readme-ids-missing`, …), result `OK`. The worker's gate at this head also reports `build=0`.
- Dependency check (`gate --depcheck … --order board/merge-order/ORDER.txt --movable --content …`): `depcheck: 239 roadmaps, 2368 edges, 0 problem(s)`, with no UPWARD, CYCLE or `moved:` line.
- Merge-order lines: ResolutionOfSingularitiesCharacteristicZero 15, ComplexComparisonPartII 39, ArithmeticGaloisRepresentations 42, MotivesAndAlgebraicCycles 72, DeligneWeightsAndPurity 78, DirichletPadicLFunctions 81, EllipticLegendreCharacterInterfaces 90, HypergeometricMotives 91, CharacterSumsOverFiniteFields 148. CharacterSumsOverFiniteFields appears only as the owner of material this roadmap defers (Kloosterman sums, the `p`-adic evaluation algorithm); it supplies nothing.
- `git diff --stat origin/main...HEAD` outside the folder is empty.
- `scratch/overlaps.md` reports no other pull request changing this roadmap, no dropped id and no revision-only id.

**Lean.** Pins: toolchain v4.35.0-rc3, with Mathlib and Tau Ceti from `lake-manifest.json`.
- `lake env lean` on `Suggested.lean` gives 46 `declaration uses sorry` warnings, no other warning and no error.
- A scratch copy had every `sorry` replaced by `first | (simp; done) | rfl | infer_instance | decide | sorry` and `#check @name` appended for all 135 declarations. It also gives exactly 46 `sorry` warnings, so no theorem closes in one tactic and nothing is padding in that sense.
- The elaborated types match the README. The changed `local_sign_eq_one_of_odd_weight` reads `Odd w → card Λ = d → (‖z‖ = p^(w/2)) → (traces = power sums) → map (p^w/·) Λ = Λ → (∀ z, z² = p^w → Even (count z Λ)) → coeff d = p^(w·d/2)`. `frobeniusSum_primitiveData` now sums with `∑ᶠ` over `{c // c^ρ = t}`.
- The ten "dropped binder" leads in `scratch/signatures.md` are `[Field F]`, `[Finite F]` and `[DecidableEq F]` instances that the types of `qm`, `gaussSumPow`, `katzSum`, `hypergeometricSum`, `greeneBinom`, `greeneF`, `gammaVectorSum`, `legendreFamily`, `cubicFamily` and `weightedTorusPoints` do not need. No mathematical hypothesis is lost.
- The file uses the `module` header, `import Mathlib` only, no `set_option`, and `theorem` throughout.

**Library declarations opened at the pins.**
- Mathlib: `Polynomial.resultant` and `sylvester` (`RingTheory/Polynomial/Resultant/Basic.lean:51, 131`); `resultant_eq_prod_roots_sub` (`:402`, monic gives `∏(α_i − β_j)`); `Multiset.prod_X_sub_C_coeff` (`RingTheory/Polynomial/Vieta.lean:101`); `jacobiSym` (`NumberTheory/LegendreSymbol/JacobiSymbol.lean:86`), with no Kronecker character at the pin, which supports the docstring's non-statability note for 5.8.
- Present by name: `natDegree_cyclotomic`, `cyclotomic.monic`, `cyclotomic_coeff_zero`, `cyclotomic_eq_prod_X_pow_sub_one_pow_moebius`, `cyclotomic_eq_prod_X_sub_primitiveRoots`, `eval_one_cyclotomic_prime_pow`, `eval_one_cyclotomic_not_prime_pow`, `cyclotomic_expand_eq_cyclotomic`, `cyclotomic_mul_prime_pow_eq`, `gaussSum_mul_gaussSum_eq_card`, `gaussSum_mulShift_eq`, `star_gaussSum_eq`, `jacobiSum_eq_gaussSum_mul_gaussSum_div_gaussSum`, `gaussSum_pow_eq_prod_jacobiSum`, `jacobiSum_ringHomComp`, `jacobiSum_comm`, `gaussSum_one_one`, `exists_mulChar_orderOf_eq_card_units`, `charpoly_leftMulMatrix`, `natDegree_multiset_prod_of_monic`, `natDegree_multiset_prod_X_sub_C_eq_card`, `addOrderOf_coe_rat`, `addOrderOf_div_of_gcd_eq_one`, `filter_coprime_Ico_eq_totient`, `discr_of_degree_eq_two`, `primitiveChar`.
- Tau Ceti: `IsAlt.even_finrank` (`LinearAlgebra/BilinearForm/SymplecticBasis.lean:309`); `map_gaussSumOfPrimitiveRoot` (`NumberTheory/DirichletCharacter/GaussSum.lean:130`); `card_aut_eq_totient` (`NumberTheory/Cyclotomic/Aut.lean:53`); `hodgeNumber_symm` (`Geometry/Hodge/Dimension.lean:88`); `EulerProductData` (`NumberTheory/ArithmeticDirichletSeries/EulerProduct/Data.lean:56`); `pointCount_eq_card_point` (`AlgebraicGeometry/EllipticCurve/PointCount.lean:86`).

**Cross-roadmap citations resolved at this round.**
- On main:
  - `EtaleCohomologyFoundations` F.2.1–F.2.5 (base change, compact support; README 504–644), F.4.5 (rational realization; 1041), F.5 (duality; 1179), F.6 (Gysin; 1200).
  - `ClassicalArithmeticCompletion` 1.19, 1.36, 1.46, 1.53, 2.46, 2.60, 7.12, 7.29 (lines 945, 1410, 1632, 1865, 4036, 4474, 14605, 15058; the 7.29 statement matches README 239–246).
  - `ThetaSeries` 2H (`kroneckerChar`, line 562); `ModularCurves` 4C (the Legendre problem over `ℤ[1/2]`, line 1100 ff.); `NewtonPolygons` 0.6 and 2.1 (lines 320, 512); `LFunctions` Layer 0 (line 346).
- At open heads:
  - `DeligneWeightsAndPurity` (#929): 0.1, 0.2, 0.9, 0.10, 0.15, 0.16 (lines 561–809) and 4.4 (Fatou, above).
  - `DirichletPadicLFunctions`: 4.1 (signed Morita Gamma), 4.4 (reflection, digit orbits), 4.5 (Gross–Koblitz) at lines 910, 1030, 1072.
  - `CharacterSumsOverFiniteFields`: 6.4–6.5 restate the Gross–Koblitz evaluation for Jacobi sums (lines 1566, 1612), and its README line 226 defers finite hypergeometric sums to this roadmap, so this roadmap is the single owner.
  - `MotivesAndAlgebraicCycles` 2.6–2.8, 4.17, 5.2–5.9, 6.8; `ArithmeticGaloisRepresentations` 2.4–2.7, 3.1–3.3; `ComplexComparisonPartII` C5.1, C5.3, C5.4, C5.6; `ResolutionOfSingularitiesCharacteristicZero` 5.2, 5.5, 6.2–6.4; `EllipticLegendreCharacterInterfaces` 0.1, 5.1. All headings exist at those heads.

**Ownership.** I grepped (`roadmaps grep`) for "Bézout matrix", "Levelt", "finite hypergeometric", "hypergeometricSum", "Greene", "zigzag" and "Beukers–Heckman" in the open roadmap pull requests and on main. Outside this roadmap there are only unrelated uses: Greene's theorem on Young tableaux, a different "zigzag", and the CharacterSumsOverFiniteFields deferral. No object has two owners. The six "Lean names found nowhere" of `scratch/citations.md` are the external provenance names (AxiomMath/Weil, weil-conjectures); the previous review checked them at their pinned commits, and none is claimed for `Suggested.lean`.

**Sources: the seeded sample.**

| Target | Locator | Found | Supports the statement as written |
|---|---|---|---|
| 1.2 | none beyond Mathlib | names above | yes |
| 1.4 | Beukers–Cohen–Mellit §1, Pochhammer identity | `bcm2015` lines 122–125 (`M^{−n} ∏(p_j n)!/∏(q_j n)!`) | yes |
| 1.8 | LMFDB knowl `hgm.rotation_number` | the knowl defines the rotation number as the order of the rotational symmetry group of the two root-of-unity multisets, i.e. the translation stabilizer | yes (the gcd formula is the roadmap's own theorem, not attributed) |
| 1.9 | none | — | — |
| 3.2 | LMFDB knowl `hgm.levelt_matrices`; Roberts–Rodriguez-Villegas §2 | knowl: `h_∞`, `h_0` with characteristic polynomials `∏(T − e(α))`, `∏(T − e(β))`, up to simultaneous conjugacy; `rrv2022` lines 168–175 (`h_0` the companion of `∏(T − e(−β))`, `h_∞h_1h_0 = I`) | yes (`C(q_0)⁻¹` is conjugate to that companion; for cyclotomic data `β = −β`) |
| 3.3 | none (derived from 3.2 and 1.2) | — | — |
| 3.4 | Beukers–Heckman Thm 3.5, Prop 3.3; Qian Lemma 3.4 | Qian arXiv:2104.09761v1 lines 628–666: `γ_0 ↦ B⁻¹`, `γ_∞ ↦ A`, `γ_1 ↦ BA⁻¹` with one nontrivial column, proof "see Theorem 3.5 of [BH89]"; Beukers–Heckman not readable | yes for Qian; the field-generalisation proof sketch was checked line by line (below) |
| 3.8 | Mathlib `Polynomial.resultant` | pinned definition above | yes (numerically, below) |
| 4.3 | Beukers–Cohen–Mellit Def 1.1, (3.1), Prop 3.1, Prop 2.6 | lines 76–86, 428, 386–388 (for `t ∈ 𝔽_qˣ`), 332–342 | yes |
| 4.9 | Beukers–Cohen–Mellit Thm 4.2, Prop 2.6; `ClassicalArithmeticCompletion` 7.12 | lines 573–578 (min over `[0,1]` as printed; see Source issues) | yes; the README's `(0,1)` correction is right |
| 5.0 | Roberts–Rodriguez-Villegas (3.2)–(3.3) p. 3, §4 pp. 4–5, (10.1), §11 pp. 10–11, §9; Katz ESDE 8.2.7, 8.4.2(8), 8.8.1–8.8.2; Fedorov Thm 1 | `rrv2022` lines 268–310, 392–479, 993–998, 1011–1032, 882–922; Katz (author's corrected manuscript) lines 9112–9126, 9259–9294, 9964–9986; Fedorov arXiv:1505.01704v2 line 152 | yes, except the "(4.4)" locator (R01) and "§9 pp. 9–10" (R02). Roberts–Rodriguez-Villegas write the gamma vector with the opposite sign (Legendre `[−2,−2,1,1,1,1]`, line 210). With `u = t∏γ_j^{γ_j}` their (3.2) becomes `(t/M)∏x^p = ∏y^q`, the README's form |
| 5.1 | LMFDB values only | recomputed (table) | yes |
| 5.11 | LMFDB motive page | values recomputed (table) | yes |
| 5.13 | Roberts–Rodriguez-Villegas §12, pp. 11–12 | lines 1145–1200 | yes |
| 6.2 | Beukers–Cohen–Mellit Cor 1.6, 1.7 | lines 172–175, 185–188 (1.7 omits `λ ≠ 0`, which the README and Lean add) | yes |

Also checked: Roberts–Rodriguez-Villegas (13.1) and the cusp-`1` rule (lines 1261–1268) match the "Cusps and `t`" row and 5.9 word for word; (12.2) is on p. 11 with `h^±` defined on p. 12 (lines 1171–1175). Ono Theorem 1 is on printed p. 1210.

**Proof sketches checked.**
- 3.4's field-form rigidity: the `d − 1` hyperplanes `X^{−j}W` meet in a nonzero vector; a first dependence gives an `X`-stable subspace on which `X = Y`, hence a common root; in the resulting basis `X = C(p)` and `Y = C(q)`. Valid over any field.
- 4.9's two-part route: the `p`-adic bound `min V = −δ`, plus `q^{s(m)−s(0)} − 1 ∈ (1 − q)ℤ[1/q]` and Fourier inversion away from `p`. Avoids Beukers–Cohen–Mellit Theorem 1.5.
- 5.5's pairing argument for the symplectic sign.

**Adversarial table.** Computed with an independent pure-Python evaluator: `GF(p^f)` arithmetic, Gauss sums for `ψ = ζ_p^{Tr}` and a generator `ω`, Definition 1.1, the gamma form of Theorem 1.3 and direct point counts. Floating values were recognised as rationals only when within `10⁻⁶`.

| Statement | Instances | Values computed (README side / my side) | Result |
|---|---|---|---|
| 1.2 Checks | `A2.2_B1.1`; `[4],[2,1]` | `Φ_A(0) = 1`, `Φ_B(0) = 1`, `m_Am_B = 0`; `(X²+1) − (X²−1) = 2`, coprime over `ℚ` only | holds |
| 1.4 `γ`, `M`, Pochhammer | `[2⁴],[1⁴]`; `[30],[5,3,2,1]`; `[1],[2]` | `γ = (4,−8)`, `M = 256`; `[−15,−10,−6,1,30]`, `M = 2¹⁴3⁹5⁵ = 1007769600000`; `γ(1) = 2`, `γ(2) = −1`, `M = 1/4`, `n = 1`: `(1)₁/(1/2)₁ = 2 = 4·1!·1!/2!` | holds |
| 1.8 `rotationNumber_eq_gcd` | all 3186 ordered data of degree ≤ 6 (entries ≤ 18); `[4],[2,1]`; `[9],[3,3,1,1]` | stabilizer order = gcd in 3186/3186; `2 = gcd(−2,−2,4)`; `3`; control `({1/4,3/4},{1/3,2/3})`: `α`-only stabilizer 2, true 1 | holds |
| 1.9 primitive datum | `[9],[3,3,1,1]`; `[4],[2,1]`; empty | `(X³−1)/(X−1)³ = Φ₃/Φ₁²` → `([3],[1,1])`, degree `2 = 6/3`; `([2],[1])`; rotation `0` | holds |
| 1.7 `p`-parts | `[18,12],[8,3,2,1³]`, `p = 2, 3`; `[6],[3]` | `A' = [4,4,2⁶]`, `B' = [8,2,1⁵]`, `C₂ = [2]`; `A₃ = [9,3]`, `B₃ = [1⁸]`; `A^2 = [9,3]`, `B^2 = [1⁸]`; `[2,2]/[1,1]` | holds |
| 2.2–2.8 zigzag laws | same 3186 data | parity law, `δ = −m` for `1 ∉ A`, `δ ≥ 0` exact, symmetry, odd `w` ⇒ even `d`, `w = 0 ⇔` interlace, Sage's `max Z − min Z − 1`: 0 failures each. Hodge vectors `(1,2,3,2,1)`, `(2,6,2)`, `(1,2,2,2,1)` with `δ = 2`, `(2,2)`, `(8)`, `(1,1,1,1)` match | holds |
| 2.7 swap reversal | `α = {1/10,1/5,1/2}`, `β = {3/10,3/5,7/10}` | recorded `0,1,1` → `(1,2)`; swap `−2,−2,−1` → `(2,1)` | holds |
| 3.2 Levelt | `A2.2_B1.1`; `α = {1/2}`, `β = {0}` | `h_∞ = [[0,−1],[1,−2]]`; `X − Y = diag(0,−4)`, `(1−g₁)X = [[−4,8],[0,0]]`; `det h₁ = e(−1/2) = −1` | holds |
| 3.3 determinants vs 5.8 recipe | orthogonal type, `m_A` or `m_B` odd | `d + m_A` odd ⇒ `d + m_B` even ⇒ `Π_B(1−t)` ramified at `1, ∞` only | holds |
| 3.8 `det_bezout` | 200 random integer pairs, `d ≤ 5`, non-monic included; `[6,4,4,4,3],[10,2⁶]` | `det Bez = (−1)^{d(d−1)/2}·det(Mathlib sylvester)` 200/200; `det = −191102976`, `Res = +191102976`; invariant factors `1⁴, 2², 16², 432²` | holds |
| 4.3 Def 1.1, Checks | `A2.2_B1.1`, `q = 5`; `([1],[2])`; `({1/4},{0})`; `t = 0` | `−2` (`t = 2`), `2` (`t = 3`); `0,−1,1,−1`; `0,−1,i,−i` (conjugated under `ω³`); `−1/4` | holds |
| 4.3 `katzExpSum_eq` | every `a, b` with `d ≤ 2` over `𝔽₅`, `𝔽₇`, all `t ≠ 0` (9080 cases); `𝔽₃` control | 0 failures; `i√3` on both sides | holds |
| 4.5 independence | 2 generators × 4 primitive `ψ`, `q = 5` | value set `{−2}` | holds |
| 4.6 shift with sign | `𝔽₅`, `a = {0}`, `b = {2}`, `μ = 1`, `t = 2`; `t = 0` | lhs `−2.23607`, rhs `−2.23607`, printed form `+2.23607`; rhs at `0`: `−0.55902 = −√5/4` | holds; the printed form fails |
| 4.7 gamma form | `A2.2_B4`, `q = 3, 11, 5`; Legendre `q = 5` | `−2/3` (both `ψ`), `−6/11`, gamma = Def 1.1 = `0`; `−2` | holds |
| 4.9 `frobeniusSum_integral` | 378 data of degree ≤ 4, `q ∈ {5,7,11,13,25}`, all `t ≠ 0` (14472 cases); `min V` on 672 data of degree ≤ 5, `x` of denominator ≤ 60 | `q^δH ∈ ℤ` in 14472/14472; `min V = −δ` in 672/672; `A2.2_B4`: `V` takes `0, 1, −1` and min `−1 = −δ` | holds |
| 4.11 Kummer pullback | `[9],[3,3,1,1]`, `q = 19`; `[4],[2,1]`, `q = 5, 7, 9, 13`; every `t ∈ 𝔽_qˣ` | 0 failures (including `q = 9`) | holds |
| 4.12 `greeneF_eq_katzSum` | all admissible `(a, b)`, `n = 1` over `𝔽₅, 𝔽₇, 𝔽₁₁`, `n = 2` over `𝔽₅, 𝔽₇`, all `x ≠ 0` (11568 cases); control `𝔽₇`, `a = (1,3)`, `b = (0,3)` | 0 failures; control ratio `−0.0714 + 0.3712i` | holds; hypothesis needed |
| 5.0 Checks | Legendre at `t = 2`; `([1],[2])`, `t = 9/8` | `y² = x³ − x` has 8 points over `𝔽₅` (`a₅ = −2`), `a₂₅ = (−2)² − 10 = −6`; chart gives `x₁x₂ = M/t = 2/9`, `x₁ + x₂ = 1`, so `1/3, 2/3` | holds |
| 5.1 traces | `A2.2.2.2_B1.1.1.1`, `t = −1, 2, 1/2`; `A2.2_B4`, `t = 2`; `A6.4.4.3_B12.2.2.2.1`, `t = 2` | `a₃ = 0`, `a₅ = −4`, `a₇ = 0`, `a₁₃ = −84`; `12, −16`; `−12, −16`; `3·(−2/3) = −2`, `11·(−6/11) = −6`; `49·(−6/49) = −6` | holds |
| 5.2 / 5.6 Euler factors | traces at `3^e`, `5^e`, `7^e`, `e ≤ 4` | `F₃ = 1 + 6T² + 729T⁴` (traces `0, −12, 0, −2844`); `F₅ = 1 + 4T − 130T² + 500T³ + 15625T⁴` (`−4, 276, −3124, −12124`); `F₇ = 1 + 238T² + 117649T⁴`; `A6.4.4.3` at `7`: `1, 6, −315, −104370, 643468` (traces `−6, 666, 307224, −4833646`); upper half `−104370·7⁴ = −250592370`, `−315·7⁸ = −1815912315`, `6·7¹² = 83047723206` | holds |
| 5.4 Newton polygon | `F₃` above | valuations `0, ·, 1, ·, 6`, slopes `1/2, 1/2, 5/2, 5/2` | not ordinary, as stated |
| 5.5 (i)–(ii) Fatou route | Legendre at `5`; control `{(3±4i)/5}` | `1 − TF′/F = (1 − 5T²)/(1 + 2T + 5T²)`, power sums `−2, −6, 22, −14`; reverse `X² + 2X + 5` monic; control first power sum `6/5 ∉ ℤ`; residue at `1/λ` is `−1/λ` | holds; wording is R03 |
| `local_sign_eq_one_of_odd_weight` (new conclusion) | `{−1±2i}`; `{√5,−√5}`; `{√5,√5,−√5,−√5}`; `Λ = ∅` | `coeff 2 = 5 = 5^{1·2/2}`; `coeff 2 = −5` (excluded by `hfix`); `coeff 4 = 25 = 5²`; `1 = p⁰` | holds |
| `local_functional_equation` | Legendre at `5`, `k = 0, 1` | `5·1 = 1·5·1`; `2·5 = 1·5·2` | holds |
| 5.8 Check | `A4_B2.1`, `t = −8`, `p = 5` | `H₅ = 0`, `H₂₅ = 2` ⇒ `F₅ = 1 − T²`; `Disc = −4·72 = −288`, `d₀ = −2`, `(−2/5) = −1`, `ε₅ = −1 = (−1)²(−1)` | holds |
| 5.9 tame exponents | `A4.2.2_B3.1.1` at `7`, `t = 7³, 7, 7⁻⁴, 7⁻², 7⁻¹, 8` | distinct-root counts give `c₇ = 1, 3, 1, 3, 4, 1`; degrees `3, 1, 3, 1, 0, 3` | holds |
| 5.11 Checks | `F = 1 + 2T + 5T²`, `ℓ = 2, 3, 5` | `(X+1)²` → order 1; `X² + 2X + 2` irreducible mod 3, `X⁴ = −1` → order 8; `X(X+2)`, `X ↦ (0,3)` → order 4 | holds |
| 5.12 / 5.13 Checks | `X² + 2X + 5`; `([1],[2])`, `t = 9/8` | discriminant `−16` → `ℚ(i)`, `−4`; `t(t−1) = (3/8)²`, trivial character | holds |
| 5.7 shifts | `(1,2,3,2,1)`, `σ = 1, −3`; `(2,6,2)`, `σ = 2` | `μ = {0}`, `ν = {2,1,1,0}`; `μ = {1,1,1}`, `ν = {2,1,1}`; `h⁺ = 4`, `h⁻ = 2`, `σ_RRV = −2` | holds |
| 6.1 `legendre_point_count` | every `λ ≠ 0, 1`, `q ∈ {3,5,7,9,11,13,25}` (59 cases) | 0 failures; `q = 13`: `λ = 2` → 8 points, `H = 6`; `λ = 7` → 20, `−6`; `q = 7`, `λ = 3` → 4, `−4` | holds |
| 6.2 `cubic_point_count` | every admissible `λ`, `q ∈ {5,7,11,13,25,125}` (174 cases) | 0 failures; `q = 5`: 9, 3, 6; `Δ = λ³(1 − 27λ)` | holds |
| 6.2 `cubic_root_count` | every `t ≠ 0, 1`, `q ∈ {5,7,11,13,25,49}` (98 cases) | 0 failures; `q = 11`, `t = 6`: `3 = 1 + 2`; `q = 5`, `t = 2`: `0 = 1 − 1` | holds |
| 6.3 `weighted_torus_point_count` | `(3),(1,1,1)` at `q = 2, 5, 7`; `(2,1),(1,1,1)` at `7`; `(2,2),(3,1)` at `5`; every `λ` | 0 failures; `q = 5`, `λ = 1`: count 6 = formula 6; `q = 2`: `1/2 + 1/2 = 1` | holds |

## Not verifiable

- **Beukers–Heckman 1989.** DOI 10.1007/BF01393900 is a paywalled prefix, and the sources service found no legal copy (by DOI and by citation). The only copy I found is a scan on a third party's course page, which I did not use. Unchecked as a result: the attributions in 3.4 (Thm 3.5, Prop 3.3), 3.5 (Thm 4.3, pp. 333–334), 3.6 (Thm 4.5, Cor 4.7), 3.7 (Thm 4.8), 3.9 (Thm 5.8 including its new clause `a^n = b^p c^q`) and the classification (Thm 7.1, Table 8.3). The mathematics of 3.4 was checked independently, as above.
- Levelt's 1961 thesis and Watkins's Magma notes: not looked for again this round (earlier rounds found no legal copy).
- The bulk LMFDB counts (541/231/438 good pairs, 53 tame pairs, 131 orthogonal pairs, 612 sign cases) were not reproduced. The individual LMFDB values in the table were recomputed from the finite sums, not read from the database.

## Source issues

- **Error** in bcm2015 at Theorem 3.4, arXiv v2 p. 11: the character factor is printed as `ω(t)^{μ𝔮}`; it should be `ω((−1)^d t)^{μ𝔮}`, which differs when `dμ𝔮` is odd; affects a stated result.
- **Error** in bcm2015 at Theorem 3.4, arXiv v2 p. 11: the Gauss-sum quotient relating `H_q(μ+α, μ+β)` to `H_q(α, β)` is printed shifted over unshifted; it should be unshifted over shifted; affects a stated result.
- **Misprint** in bcm2015 at Theorem 3.4, arXiv v2 p. 11: the statement quantifies over `λ ∈ 𝔽_qˣ` but the formula is in `t`; it should read `t ∈ 𝔽_qˣ`; affects nothing.
- **Error** in bcm2015 at Theorem 4.2, arXiv v2 p. 12: the minimum is printed over `x ∈ [0,1]`, where the sum vanishes at `x = 0`, so `λ ≥ 1` fails; it should be over `x ∈ (0,1)`; affects a stated result.
- **Gap** in bcm2015 at Corollary 1.7, arXiv v2 p. 4: the point count is stated for every `λ ∈ 𝔽_q`; it should require `λ ≠ 0` (the curve is then two lines, with `2q` points counting one point at infinity, not `q + 1 − H_q(·|0)`); affects a stated result.
