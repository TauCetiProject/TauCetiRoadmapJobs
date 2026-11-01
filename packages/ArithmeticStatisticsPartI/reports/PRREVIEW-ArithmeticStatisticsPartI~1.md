# Review of ArithmeticStatisticsPartI (pull request #1171 at 3b1a24f)

**Verdict:** needs changes

Full review of `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md` (2875 lines) and `Suggested.lean` (247 lines) at head 3b1a24f. The gate fails on one style rule (121 `<a id=` anchors, R04), so the folder cannot be accepted this round whatever else holds. Three supplier citations name Lean declarations that do not exist in the cited roadmaps at their heads (R01–R03); everything else checked, including every Lean statement and every sampled source locator, holds up. The mathematics of the twelve headline statements was recomputed and is correct.

## R01 (P2) — AnalyticNumberTheoryPartII declaration names that do not exist

Location: README lines 76, 78 ("The supplier API is AnalyticNumberTheoryPartII §5.4's `cubicAction.one`, `cubicAction.mul` and `cubicAction.discriminant_covariance`"), 102 and 132 (`projective_form_equiv_cubic_algebra`, `discriminant_ideal`).

Claim: these five declarations are supplied by AnalyticNumberTheoryPartII §§5.4–5.5.

Witness: at the head of AnalyticNumberTheoryPartII (pull request #1167) neither README nor `Suggested.lean` contains any of the five strings; §5.4 (README line 657) and §5.5 (line 674) state "the unit and composition laws of the action and discriminant covariance" and "the equivalence between projective binary cubic forms and locally free cubic algebras … the discriminant ideal" in prose only, and its `Suggested.lean` mentions cubic algebras only in its docstring (lines 23–25).

Repair: cite the supplier in prose at the four places: "the action laws and discriminant covariance of AnalyticNumberTheoryPartII §5.4" and "the projective-form/cubic-algebra equivalence and its discriminant ideal of §5.5"; drop the backticked names. The adapters `cubicNegatedBasis`, `cubicRingMonicEquiv`, `cubicRingScaleHom` (line 132) are this roadmap's own and fall under R05.

## R02 (P2) — ArithmeticGaloisDuality names that do not exist

Location: README line 48 ("ArithmeticGaloisDuality §R02.3.2 supplies `GlobalFunctionField.classFormation`, … `sClassGroup` and `finite_sClassGroup`"); the same names at lines 13 and 2727.

Claim: §R02.3.2 declares these three names.

Witness: ArithmeticGaloisDuality at its head (pull request #858) has §R02.3.2 "Global function fields: class-field inputs" (README line 2074). It defines `Cl_S(F)` and proves "`Cl_S(F)` is finite when `S` is nonempty" in prose, and names only Tau Ceti inputs (`TauCeti.Divisor.finite_classGroup_of_finite`, …); the strings `classFormation`, `sClassGroup`, `finite_sClassGroup` occur nowhere in that README.

Repair: replace the three names by "the `S`-class group `Cl_S(F)`, its finiteness for nonempty `S`, and the function-field class formation and Artin reciprocity of ArithmeticGaloisDuality §R02.3.2".

## R03 (P2) — SelmerIwasawaCohomology names that do not exist

Location: README line 56 ("SelmerIwasawaCohomology §4.29 supplies `CasselsTate`, `CasselsTate.isogeny_adjoint`, the maximal-divisible-radical statements …").

Claim: §4.29 declares `CasselsTate` and `CasselsTate.isogeny_adjoint`.

Witness: at the head of SelmerIwasawaCohomology (pull request #869), §4.29 is "Two-primary Selmer parity for congruent-number curves" (README line 2509); it contains the target "The cohomological Cassels–Tate pairing and its radicals" (line 2513) in prose, and neither its README nor its `Suggested.lean` (which mentions "Cassels–Tate duality" only in the module docstring, line 33) declares a `CasselsTate` name.

Repair: cite "the cohomological Cassels–Tate pairing, its isogeny adjointness and its divisible radicals of SelmerIwasawaCohomology §4.29" without Lean names.

## R04 (P3) — gate failure: 121 anchor tags

Location: README lines 64–2747, every `<a id="…"></a>` line (first at line 64, `<a id="cubic-supplier-conventions"></a>`).

Claim: the push gate passes.

Witness: the worker's gate at 3b1a24f reports `residue=121 … FAIL`; the rule forbids `<a id=` anchor tags in the README. The gate is otherwise clean (`build=0`, `depcheck=0`, `readme-ids-missing=0`).

Repair: delete the 121 anchor lines and rewrite the `[title](#anchor)` links as references to the bold target title or to the `### k.n` heading (GitHub anchors those automatically, e.g. `(#03-binary-quartics-and-eligible-invariants)`). No acceptance while this fails.

## R05 (P3) — backticked names of this roadmap's own that `Suggested.lean` does not declare

Location: API bullets throughout, e.g. line 200 `ArithmeticFamily.countLT`, line 268 `ArithmeticFamily.HasDensity`, line 1044 `squareclassHeight`, line 2062 `ArithmeticStatisticsPartI.bundleMass`, line 2567 `ArithmeticOrbitRefinement.binaryDiscriminant`; also the "Proposed declaration(s): …" sentences (lines 186, 258, 318, …).

Claim: a backticked name of this roadmap's own is declared in `Suggested.lean`.

Witness: the worker's citation check lists 229 such names found nowhere; `Suggested.lean` declares 34 names (all listed in the README). The gate's own id check passes, so this is house style, not a gate failure.

Repair: write these API names in bold or plain prose and keep backticks only for the 34 declared names and for Mathlib/Tau Ceti/supplier declarations; delete the "Proposed declaration(s)" sentences (they are process wording).

## R06 (P3) — two targets titled "Binary discriminant"

Location: README line 1622 (§0.12, `<a id="binary-discriminant">`) and line 2563 (§0.22, `<a id="refinement-binary-discriminant">`).

Claim: §0.22's target is "the evaluation interface for the same Layer 0 polynomial, not a second construction".

Witness: both targets carry the same bold title; the second restates the covariance and scaling laws of the first and names `ArithmeticOrbitRefinement.binaryDiscriminant`, which does not exist in `Suggested.lean` (the file has only `binaryDisc`).

Repair: retitle the §0.22 target ("Binary discriminant in pencil coordinates") or fold its two bullets (ring maps, scaling) into §0.12 and leave §0.22 with the resultant-quotient identification and the degree-3/degree-4 comparisons only.

## R07 (P3) — section labels that are not the supplier's

Location: README line 2437 ("InverseGaloisAndArithmeticFundamentalGroups:IG.4/marked-arithmetic-extensions, InverseGaloisAndArithmeticFundamentalGroups:IG.4/unramified-`γ`-groups").

Claim: IG.4 has subsections with these labels.

Witness: at the head of InverseGaloisAndArithmeticFundamentalGroups (pull request #850) the marked extensions are §IG.3.4 "Reduced Schur covers and the universal marked extension" (README line 3002) and the unramified Γ-groups are §IG.4.5 "Unramified `Γ`-groups and Property E" (line 4759); no slash-labelled sections exist.

Repair: cite "IG.3.4 (marked extensions) and IG.4.5 (unramified Γ-groups)".

## R08 (P3) — a statable finiteness theorem left out of `Suggested.lean`

Location: README line 1098 (**Finiteness of squareclasses of bounded height**) and the `Suggested.lean` docstring (lines 19–23), which says only that §0.15's denominator asymptotic is not statable.

Claim (implicit): the Northcott property of the squareclass height is not among the headlines statable at the pins.

Witness: it is statable with one real-bodied definition: for `u : Fˣ` the finite set of `v : HeightOneSpectrum (𝓞 F)` with odd `v.intValuation`-exponent (finite by `IsDedekindDomain.HeightOneSpectrum.finite_setOfPred_valuation_ne_one`, Tau Ceti), its product of `Ideal.absNorm v.asIdeal`, descended to `TauCeti.SquareClassGroup F`; the theorem is then `Northcott` of that function. The §0.11 count `|S_n| = 2(q^n − q^{n−1})` is likewise statable on `MulAction.orbitRel.Quotient` but is a one-line corollary of the stated §0.9 count and would be padding.

Repair (author's choice): state `northcott_squareclassHeight` with that definition, or name it in the docstring as deliberately omitted.

## Verified sound

**Gate and dependency check.** Gate at 3b1a24f: `set_option=0 … depcheck=0 … build=0`, failing only `residue=121` (R04). Dependency check run by me: `depcheck: 205 roadmaps, 1453 edges, 0 problem(s)`; no UPWARD or CYCLE line for this roadmap. ArithmeticStatisticsPartI is in the merge order (line 93) after all its suppliers (AnalyticNumberTheoryPartII 82, EtaleDualityAndPerverseSheaves 91, InverseGalois… 43, SelmerIwasawaCohomology 50, …). `git diff --stat origin/main...HEAD` outside the folder: empty.

**Elaboration.** `lake env lean` on `Suggested.lean`: exit 0, twelve `declaration uses sorry` warnings and nothing else (the TauCeti `AbelianVariety.Hom.Iso` object file was built first). A scratch copy with `#check @name` for all 34 declarations elaborated; every elaborated type carries its section binders (`formIdeal_traceDual` keeps `[CommRing D] [CommRing L] [Algebra D L]` plus its own `[IsDedekindDomain D] … [FiniteDimensional K L]`), and each matches the README's generality: `isEligible_iff` over `ℤ`, `squarefree_residue_count` for every `q > 0` and `a` coprime to `q`, `card_monicSquarefreePolysOfDegree` over any finite field with `2 ≤ n`, `pMaximal_proportion` for `2 ≤ n` and prime `p`, `unpolarizedClasses_finite` over any finite field and every `g`, `symmetricPencil_invariants` for `1 ≤ n` over `ℂ`, `binaryDisc_mod_four` for `2 ≤ n`, `monic_nu_zero`/`monic_nu_one` for `2 ≤ n`, the two Euler-product statements. No `set_option`, no sorry'd data, imports `Mathlib` plus one existing `TauCeti.*` module.

**One-tactic probe.** A scratch copy with every `sorry` replaced by `first | simp | norm_num | rfl | infer_instance | decide | (intros; simp_all) | (intros; omega)`: all twelve theorems fail to close. No padding.

**Adversarial table** (statement; instances; values computed; result).

| # | Statement | Instances tried | Values | Result |
|---|---|---|---|---|
| 1 | `isEligible_iff` (BS Thm 1.7) | all 27⁵ coefficient vectors mod 27; witnesses | residues (I mod 9, J mod 27) are exactly {(0,0),(3,0),(6,0),(1,±2),(4,±16),(7,±7)}; (0,1,−1,0,0) gives (1,2); (0,1,1,−1,−1) gives (4,16); I ≡ 2 mod 3 never occurs | true |
| 2 | `squarefree_residue_count` | q = 8 and q = 1 to X = 2·10⁶; q = 1, a = 0 | class counts 202645, 202636, 202645, 202645, 202650, 202656 (each 1.0000±0.0001 of X/π²); total 1215877 vs 6X/π² = 1215854; `Nat.Coprime 0 1` holds and `n % 1 = 0` is no restriction | true |
| 3 | `card_monicSquarefreePolysOfDegree` | q = 2, n = 2; q = 3, n = 3; n = 0, 1 | 2 = 4 − 2 (x²+x, x²+x+1); 18 = 27 − 9; n = 0, 1 give 1, q, excluded by `2 ≤ n` | true |
| 4 | `pMaximal_proportion` via the ideal (p², pu, u²) | (n,p) = (2,2),(2,3),(3,2),(3,3),(4,2),(4,3),(2,5),(3,5) | non-maximal counts 4/16, 9/81, 16/64, 81/729, 64/256, 729/6561, 25/625, 625/15625, all = 1/p²; n = 0, 1 give 1 (excluded) | true |
| 5 | `unpolarizedClasses_finite` | carrier at the pin | `AbelianVariety` is a proper, geometrically integral group object (Basic.lean lines 95–102), so connectedness is built in; g = 0 gives one class; finiteness = Honda–Tate plus finiteness within an isogeny class | true |
| 6 | `symmetricPencil_invariants` | n = 0; n = 1; surjectivity | n = 0: `pencilCoefficient 0 0 = 1`, so Q is not unique (excluded by `1 ≤ n`); n = 1: f = (a, −b) generates ℂ[a,b] freely; diagonal (A,B) realize every ∏(aᵢx − bᵢy), so the fᵢ are algebraically independent; generation is BGW line 247 | true |
| 7 | `formIdeal_traceDual` | f = 2x³ − y³, D = ℤ, θ³ = 1/2 | R_f = ⟨1, 2θ, 2θ²⟩ is a ring ((2θ)² = 2·2θ², (2θ)(2θ²) = 2); traces Tr(θᵏ) = 3·θᵏ for 3 ∣ k, else 0, give dual (1/3)ℤ[θ]; f′(θ)⁻¹I_f(1) = (θ/3)⟨1, θ, 2θ²⟩ = (1/3)ℤ[θ]; f′(θ) = 6θ² is a unit | equal |
| 8 | `binaryDisc_mod_four` | (1,0,−1), (0,1,0), (0,0,1), (1,1,−1); n = 0 | 4, 1, 0, 5 ≡ 0, 1, 0, 1 mod 4; `discr_C = 1` | true |
| 9 | `monic_nu_zero` | (2,3),(3,3),(4,3),(3,5),(2,2),(3,2) by brute force | 2/3, 2/3, 2/3, 4/5, 1/2, 1/2 = 1 − 1/p | true |
| 10 | `monic_nu_one` | (2,3),(2,5),(3,3),(3,5),(4,3),(5,3),(2,2),(3,2),(4,2) | 18/81 = 2/9, 4/25, 108/729 = 4/27, 16/125, 648/6561 = 8/81, 6804/59049 = 28/243, 0, 0, 0; the Lean formula gives the same nine values; ABZ's printed exponent −n would give 80/729 at (4,3) | true |
| 11 | `monicEulerProduct_converges_pos` | n = 2; n ≥ 3 | λ₂(2) = 1/2, λ₂(p) = 1 − p⁻², product (1/2)(6/π²)/(3/4) = 4/π² as README says; 1 − λₙ(p) ≤ 3/p² for n ≥ 3 | true |
| 12 | `monicEulerProduct_limit` | p = 3 | λₙ(3) → 2/3 + (4/9)/4 = 7/9 = 1 − 8/36 = 1 − (3·3−1)/(9·4) | true |
| 13 | §0.1 relative density Checks | blocks [4ᵏ, 2·4ᵏ); height n/n² | liminf 1/3, limsup 2/3; odd numbers of height ≤ X number ≈ √X so evens have density 1 | true |
| 14 | §0.1 stabilizer weights | {±1} on ℤ/3 | weights 1/2 ({0}), 1 ({1,2}); sum 3/2 = #V/#Γ; reciprocal orbit lengths reverse them | true |
| 15 | §0.1 piecewise rescaling (Goldfeld) | fundamental discriminants with |d| ≤ 2·10⁶ | weights 5/4, 1/2, 5/4, 5/4, 1/2, 5/4 for m ≡ 1,2,3,5,6,7 mod 8; classes 1,2,3 carry 3 of 6; computed proportion with root number +1: 0.499989 | true |
| 16 | §0.2 coefficient lattice | n = 1, f = x | localMass p = 1 − p⁻², product 6/π² | true |
| 17 | §0.3 invariants and substitutions | x³y − xy³; x⁴ − y⁴; all-ones; 𝔽₃; swap; (1 0;1 1); 2·1 | (3,0,4); (−12,0,−256) = disc(X⁴−1) = 256·(−1)³; (10,25,125) with 4000 − 625 = 27·125; over 𝔽₃ I = J = 0, Δ = 1; swap reverses; (1 0;1 1) sends x³y to (0,1,3,3,1); det 4 scales I by 256; identity 27Δ = 4I³ − J² checked on 200 random vectors | true |
| 18 | §0.3 height and eligible pairs | H ≤ 1 | only (0,0), (1,±2) (I ∈ {−1,0,1}, |J| ≤ 2); H(2,2) = 8 | true |
| 19 | §0.4 | y² = x³ − x; y² = x³ + 1; (16,64) | H = 4, (3,0), H′ = 27, 27·4 = 4·27; H = 27, (0,−27), H′ = 729/4; (16,64) not minimal, u = 2 gives (1,1) of height 27; 4(−3A)³ − (−27B)² = −27(4A³+27B²) | true |
| 20 | §0.5 | H([12]); ℚ(i); product law | 3; K(∅,2) = {[1],[i]} (units mod squares, h = 1), 2 = −i(1+i)² so [2] = [i]; odd support of st is the symmetric difference so H(st)·N(gcd)² = H(s)H(t); twist by u: `quadraticTwistOf 0 (−u)` on `shortCurve A B` has a₄ = 16u²A, a₆ = 64u³B at the pin | true |
| 21 | §0.6 | S up to 20; μ-sum at 36; q = 8 | {1,2,3,10,11,17,19} of 13; 1−1−1+1 = 0; (6/π²)(1/8)(4/3) = 1/π²; S/P = 0.499990 at 2·10⁶ | true |
| 22 | §0.9, §0.11 | q = 2, n = 2; q odd n = 1; q = 2, n = 3 | s₂ = 2; |S₁| = q(q−1)/((q−1)/2) = 2q; even q gives 4 ≠ 8 | true |
| 23 | §0.10 | σ(X₀;5), σ(X₀²;9), σ(X₀²+X₁²;3); minors | 4/5, 2, 0; u = (2,0), w = (0,3): gcd 6 = [ℤ² : 2ℤ×3ℤ] | true |
| 24 | §0.12 binary local proportions | all forms mod 4 (n = 2, 3) and mod 9 (n = 4) | 32/64 = 1/2; 96/256 = 3/8; 42768/59049 = 176/243 | true |
| 25 | §0.14 odd root criterion | x²+9, x³ at 3; x² at 2 | Δ(x²+9+3t) = −36 − 12t, valuation 1 for 3 ∤ t: weak; every coefficient of x³ divisible by 3 gives 9 ∣ Δ: strong; Δ(x²+2ax+2b) = 4a² − 8b: strong, so the criterion fails at p = 2 exactly as the README says | true |
| 26 | §0.16 | E: y² = x³ − x over 𝔽₅ | #E(𝔽₅) = 8, trace −2, (x,y) ↦ (−x,2y) with 2² = −1; E₈ is even, I represents 1 | true |
| 27 | §0.17 | q = 3; q = 5 | μ₃(0,1,2) = 1/3, 4/9, 4/27; Aut orders 48, 36; GL₂ inverse sum 1/16 = 2/(2³·4); PGL₂ sum 1/8; tails 1/2, 1/6, 1/18; q = 5 tails 1/10, 1/250; Σμ = 1 and each parity 1/2 in closed form | true |
| 28 | §0.18 | ℤ×ℤ/2; ℤ×ℤ/3; Hecke; pointless curve | [D₀] has order 4; carry −c gives (0,2) where +c would give (1,0); μ_D(0,1) = μ_q(0) = 1/3 vs 8/27; y² = 2((x³−x)²+1) over 𝔽₃: N₁ = 0 (no affine point, y² = 2 at infinity), N₂ = 14 by direct count over 𝔽₃[u]/(u²+1), h = 4, masses 1/2, 3/8, 1/8 from #Θ₂ = 4, #Θ₁ = 0, #Θ₀ = 1 | true |
| 29 | §0.19 | G = C₂, C₃, S₃ | C₂ ≀ S₂: outside involutions σ, (1,1)σ generate an order-4 group, not the full order 8; Aut_H(C₃) = 2; S₃ graph type: |C(a)| = 2 of |Aut| = 6 | true |
| 30 | §0.20 | n = 1; q = 3, n = 2 | q fields; 3³ − 3² = 18, matching Wood's proof (monic squarefree of degree 2n − 1) | true |
| 31 | §0.22 | n = 1; n = 3, A = I, B = 0; 2x⁴ − y⁴ | (a,−b); −x³; R_f = ⟨1,2θ,2θ²,2θ³⟩ | true |
| 32 | §0.23 | monic quadratics mod 9; p = 2 | 54 unit, 18 of valuation one; ν₁(2,2) = 0 | true |
| 33 | §0.24 | p = 3, n = 4 | 2/3 + 8/81 = 62/81 | true |

**Library declarations opened at the pins** (file, line where read): Mathlib `Order/Northcott.lean` 36 (`class Northcott`), 65 (`comp_of_finite_fibers`, hypothesis `[Filter.TendstoCofinite h]`); `NumberTheory/Height/NumberField.lean` (`finite_setOfPred_mulHeight₁_le`); `NumberTheory/Chebyshev.lean` 796 (`eventually_primeCounting_le`, bound `(log 4 + ε) x / log x`); `RingTheory/Polynomial/Resultant/Basic.lean` 79 (`sylvesterDeriv`, bottom row divided by the leading coefficient), 935 (`discr`), 957 (`discr_of_degree_eq_two = b² − 4ac`), so `binaryDisc` is the universal fixed-degree discriminant; `RingTheory/DedekindDomain/SelmerGroup.lean` 161 (`selmerGroup`, `valuationOfNeZeroMod`); `GroupTheory/GroupAction/Basic.lean`, `CardCommute.lean`; `FieldTheory/PrimitiveElement.lean` 360 (`AlgHom.card`, needs `IsAlgClosed`); `AlgebraicGeometry/EllipticCurve/NormalForms.lean`, `VariableChange.lean`; `NumberTheory/Height/EllipticCurve.lean` (`naiveHeight`); `LSeries/Dirichlet.lean`, `LSeries/DirichletContinuation.lean`, `Bernoulli.lean` (`riemannZeta_two`); `Algebra/Squarefree/Basic.lean`; `NumberField/Discriminant/Basic.lean`; `LinearAlgebra/FreeModule/PID.lean`; `MeasureTheory/Group/FundamentalDomain.lean`; `NumberField/DedekindZeta.lean`; `Algebra/CubicDiscriminant.lean`; `Combinatorics/Enumerative/Partition/Basic.lean` (`finsuppAntidiag`). Tau Ceti `Order/Northcott/Basic.lean` 41 (`normLE`, real inclusive cutoff), 51 (`coe_normLE`), 102 (`summatory`), 198 (`eventually_summatory_indicator_sub_eq`, finite symmetric difference); `NumberTheory/NumberField/Index/DedekindCriterion.lean` 430 (`not_dvd_index_iff`, exactly as the README states it); `NumberTheory/NumberField/Discriminant/Stickelberger.lean` 104; `NumberTheory/Multiquadratic/Quadratic/Discriminant.lean`; `AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean` (`card_range_μ`, `pow_rank_le_card_of_range_μ_le`); `RingTheory/DedekindDomain/SelmerGroup.lean` (`valuationOfNeZeroMod_mk_eq_one_iff`); `RingTheory/DedekindDomain/SInteger/SelmerGroup/NumberField.lean` (`finite_selmerGroup_of_numberField`); `NumberTheory/NumberField/Global/RayClass/Count/Basic.lean` (`instNorthcottAbsNormNonZeroDivisors`); `AlgebraicGeometry/EllipticCurve/ShortWeierstrass.lean` 109 (`shortCurve`); `QuadraticTwist/Basic.lean` (`quadraticTwistOf` and its four cited lemmas), `QuadraticTwist/SplitMultiplicative.lean`; `NumberTheory/EffectiveBounds/HermiteCount/Basic.lean`; `GroupTheory/Perm/WreathProduct/Basic.lean` 112 (`WreathProduct D ι`), 241 (`map`); `MeasureTheory/Group/ProperlyDiscontinuous.lean`; `AlgebraicGeometry/AbelianVariety/Basic.lean` 95 (structure), 118 (`dim : WithBot ℕ∞`), `Hom/Basic.lean` 48 (`Category` instance); `FieldTheory/QuadraticForm/StiefelWhitney/Class.lean` (`squareClass_eq_iff_isSquare_mul`), `Algebra/Group/ElementaryTwoQuotient/Basic.lean` (`SquareClassGroup` as the maximal elementary-2 quotient); `AlgebraicGeometry/EllipticCurve/MordellWeil/BadPrimes.lean` (`finite_setOfPred_valuation_ne_one`). Duplication by object: no Mathlib or Tau Ceti declaration counts squarefree monic polynomials, squarefree integers in progressions, binary quartic invariants, eligible pairs, p-maximal densities or natural densities of families (greps for `card`+`Squarefree`, `upperDensity`, `naturalDensity`, `HasDensity`, `invI`, `pMaximal` are empty).

**Cross-roadmap citations resolved** (roadmap, head, section and line): EllipticCurves on main (`shortEquationHeight` Suggested.lean 1034, `IsMinimalPairNF` 1043, `exists_minimalPairModel` 1071, `minimalPairModel_unique` 1086, bounded-height `Set.Finite` README 1427); AbelianSchemesAndArithmeticModuli #849 (A2 line 1042, A3 1381, A6.4 2872 with `simpleEndDivision` 2876, A6.5 2905 with `poincareReducibility` 2907, A6.18 3254, A6.19 3310); ArithmeticGaloisDuality #858 (R02.3.2 at 2074, R02.4 table line 30); SelmerIwasawaCohomology #869 (§4.29 at 2509); GeometryOfNumbersAndQuadraticArithmetic #851 (§0.2 at 248, §0.3 at 324, §3.2 at 884 with `hermitianMaximalMinorIdeal` 886); AdelicAlgebraicGroups #792 (AA.0 measure theory, lines 34–35); ReductiveGroupsPartII #785 (RG2.3.7 "Lang's theorem and lifting" at 5202); InverseGaloisAndArithmeticFundamentalGroups #850 (IG.3 at 2531, IG.3.4 at 3002, IG.4 at 3611, IG.4.5 at 4759, IG.4.6 at 4970, IG.5 at 5287, IG.5.6 at 6157); AnalyticNumberTheoryPartII #1167 (§5.4 at 657, 5.5 at 674, 5.6 at 697, 5.7 at 715, 5.21 at 1031, 5.28 at 1323, 5.29 at 1345); AnalyticNumberTheoryPartI #1126 (§0.25 at 525, 0.26 at 539, 2.3–2.5 at 964–994); DeligneWeightsAndPurity #929 (§1.4–1.6 at 960–990, DWP.7 at 2095); EtaleDualityAndPerverseSheaves #1040 (§0.5 at 669, 0.6 at 822, 6.3 at 6563); ArithmeticGaloisRepresentations #856 (§1.9 at 1149, 2.2 at 1625); NeronModelsAndSemistableAbelianVarieties #852 (Layers 1–4 at 693–1986); SchemeAndStackFoundations on main (§3.6 at 4905, 3.7 at 4937); JacobianChallenge on main (Layers B, C, D at 135, 143, 218); AlgebraicCurves on main (Layer 7 at 783, Layer 10 at 1193); ClassFieldTheory on main (Layers 11–13 at 1683–1799); GlobalQuadraticForms on main (Layer 5 at 544); AlgebraicVectorBundles on main (L0); IntegralLattices on main (0G at 568); DiophantineApproximationAndTranscendence on main (§2.4 at 1085, §4.3 at 2872); OperatorTheory/PolarDecomposition on main (PD-C09–PD-C18 from 471); GlobalNumberFields, NumberFieldArithmetic, LocalFieldsRamification and ArithmeticDirichletSeries in `Completed/` on main (GlobalNumberFields Layer 3 at 337 with `rayClassIdealCount`, Layers 9–11 at 508–571; ArithmeticDirichletSeries Layer 9 `wienerIkehara`, `LSeriesHasSum` at 105). Ownership against open work: AbelianVarietiesOverFiniteFields (#1720, by roed-math, not yet in the merge order) also plans the finite-field Honda–Tate classification; this roadmap is earlier in the order (line 93) and may not cite a later roadmap, so stating Honda–Tate under "Supporting constructions" here is the correct placement and the later roadmap is the one that must cite it. ArithmeticStatistics (#1531, order line 130) is the umbrella roadmap and declares the Parts; no second builder of these objects was found among the sibling checkouts (CurvesOverFiniteFields, NumberFieldEnumeration, HyperellipticCurves do not build the family carriers, invariants or local densities).

**Source locators verified** (cache id, line, printed page). Bhargava–Shankar 7670970a: Thm 1.6 constants l.179–187 and Thm 1.7 l.195 (p.4), (3)–(6) l.307–321 (p.7), stabilizer weight (8) and "weight 1/r" l.415–426 (p.9), Lemma 2.4 l.484 (p.10), (21) l.662 (p.13), Lemma 2.9 and Prop 2.10 l.718–727 (p.14), §2.5 l.729 (p.14), (32) l.881 (p.16), §2.7 definition and acceptability l.1003–1009 (p.19), proof of Thm 1.7 l.1183–1202 (pp.21–22), (48)–(49), `27H(E) = 4H′(E)` and the large-family definition l.1208–1233 (p.22), Thm 3.1 and "semistable is large" l.1235–1239, Thm 3.5 with invariants `2⁴I, 2⁶J` l.1276–1278 (p.23). Bhargava–Shankar–Tsimerman d45b16cd: acceptable collections before Thm 7 l.120–126 (p.3), twisted action (9) l.238 (p.4), (10)–(11) l.245–264, Prop 10 and (12) with the `ω ↦ (−1,0,0)` identification l.272–283 (p.5), Lemma 13 and its proof l.330–345 (pp.6–7). BKLOS author version af4e5ab9: `Σ(X)` and "squarefree integers of absolute value less than X" l.89–97 (p.2). Nunes 53a39781: (1.1) l.14–23, Hooley's (1.3) l.29–35 (p.1). Burungale–Tian cbb8284a (arXiv v2): 50% l.12 (p.1), §1.0.2 l.47, Thm 1.2 l.50, Prop 1.3 l.58, footnote 2 l.97 with [2] = Birch–Stephens l.286 (p.2), Thm 3.3 l.265 (p.6). Gross–Lucianovic da732e0f: `ij = −ad`, `i² = −ac + bi − aj` l.91–92 (p.2), Examples l.170–190 (p.4). Gan–Gross–Savin 007efcf1: traces `Tr(α) = b`, `Tr(β) = −c`, `Tr(αβ) = −3ad` l.464–469 (printed p.116). Ash–Brakenhoff–Zarrabi b82ee8c7: p-maximal l.103–108, Lemma 3.1 l.121, Cor 3.2 l.138 (p.368), Prop 3.5 `Pₙ = 1 − p⁻²` l.232–234 (p.369), Prop 6.4 l.386 (p.371), Prop 6.7 l.476 and Thm 6.8 l.500–507 (p.372). BSW I 6a725270: λₙ(p) l.28–38 and Thm 1.1 l.41 (p.1), limit λ l.48–52 (p.2), strong/weak divisibility l.134–139 (p.4). BSW II b6e5d170: (1) `(−1)^{n(n−1)/2} det(Ax − By)` l.342 (p.7), Prop A.1 l.3304–3315 (p.53). BLS 210c746b (arXiv v1): Def 2.1 l.158 (p.4), Def 3.7 l.566, Lemma 3.11 l.681 (p.12), (5.2)–(5.3) l.3407–3410 (p.50), (5.11) l.3570 (p.53). Koymans–Pagano c7a93ffe: §1 l.17–54 (pp.1–2). Lipnowski–Tsimerman 5ceed816: Thm 0.1 l.31 (p.1), Prop 4.11 l.768 and Examples 4.12–4.13 l.776–782 (p.20). Shende–Tsimerman 542a52a2: `μ(d + 2ℕ) = 1/(2q^{d−1})` l.100 (p.3) and l.1059 (p.30), Lemma 4.1 l.1039 (p.29), Thm 4.2 with `μᵢ(d+2ℕ) = μ(Θ_{g−d+1})` l.1061–1071 (p.30), Appendix A.1 l.1264 (p.36). Wood 2eacf07f (arXiv v2): admissible/good/Aut_{G′}(G) l.30–35 (p.1), §2.1 infinity types and the wreath embedding l.196–227 (p.5), `IQ_{=X}` l.243 (p.6), Lemma 2.1 l.289 (p.7), Prop 2.2 l.313 (p.8), Thm 4.8 l.964, proof: monic squarefree of degree 2n−1 and `#IQ = q^{2n−1} − q^{2n−2}` l.1041–1045 (p.24), real case l.1079–1099 (p.25). EVW arXiv v4 4adef21f: Prop 8.7 l.1804 (arXiv p.39), the monic squarefree count and (8.7.5) `|Sₙ| = 2(qⁿ − qⁿ⁻¹)` l.1879–1881 (p.40). Tate a23d9cd1: Théorème 1 l.54 (printed p.96; the Numdam file has a cover page). Skorobogatov–Sofos 8499680e: Thm 1.1 l.71 (p.674), Thm 1.2 l.89 (p.675).

## Not verifiable

- Ellenberg–Venkatesh–Westerland, Annals pagination (README cites "§8.7, printed pp.776–777, (8.7.5)"): the Annals PDF host is in no licence class for the sources service; I read arXiv 0912.0325v4, where the same statement is (8.7.5) on arXiv p.40. The content is verified, the printed page numbers are not.
- Bhargava, Higher composition laws III (ref [9], cited at line 138 for "Introduction, printed p. 1332"): the Annals copy could not be fetched for the same reason, and the cache has only HCL IV. Not checked.
- The Duke pagination of Wood (ref [65]) and of BKLOS (ref [3]): the README cites the arXiv v2 and the author version respectively, which I read; the published page numbers were not compared.

## Source issues

- **Error** in Ash–Brakenhoff–Zarrabi (ref [60]) at Theorem 6.8, printed p. 372: the table gives the valuation-one probability for n ≥ 4 with the factor 1 − (−p)^{−n}; it should be 1 − (−p)^{2−n} (direct count: n = 4, p = 3 gives 8/81, the printed formula gives 80/729; n = 5, p = 3 gives 28/243 against 244/2187); affects a stated result (the README's §0.23 formula is the corrected one).
- **Error** in Bhargava–Shankar–Wang II (ref [59]) at Appendix A, Proposition A.1 and its proof, printed p. 53: the proof restates the ABZ formula with exponent −n for n ≥ 4, and the printed value of α₄(p) disagrees with a direct count (p = 3: printed 1600/2187, actual 176/243; p = 5: printed 69856/78125, actual 2784/3125); the n ≥ 5 formula gives the correct value at n = 4 as well; affects a stated result (the README's §0.12 Check 176/243 is correct).
- **Error** in Bhargava–Shankar–Wang I (ref [58]) at §1.1, printed p. 4: the root criterion for strong and weak p²-divisibility is stated for every prime; at p = 2 it fails (x² has one double root but Δ(x² + 2ax + 2b) = 4a² − 8b is always divisible by 4, so it is strongly divisible); it should be stated for odd p; affects nothing (their sieve uses it only for large p; the README already restricts to odd p).
