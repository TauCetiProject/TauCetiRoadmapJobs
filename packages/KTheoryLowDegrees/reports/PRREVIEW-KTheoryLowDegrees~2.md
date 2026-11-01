# Review of KTheoryLowDegrees (pull request #1248 at 35517eb)

**Verdict:** needs changes

Two P2 findings block acceptance. The worker's gate passes, and the independent dependency check and Lean elaboration pass. This is a full review of the folder, including the unchanged passages. No pull-request file was changed.

## R01 (P2) — State the rank-two congruence subgroup theorem

Location: `TauCetiRoadmap/KTheoryLowDegrees/README.md:1019`, “By relative universality identify `C(G)≃M_S(F)`”; `TauCetiRoadmap/KTheoryLowDegrees/Suggested.lean:210`, `hn : 3 ≤ n`.

Claim: §11.5 reaches the rank-two congruence subgroup theorem under positive S-unit rank. Its finite-index-subgroup formulation is statable at the pins, using precisely the existing principal-congruence definition. The two congruence theorems in the acceptance test cover only n≥3. The docstring's missing completion/metaplectic carriers do not prevent stating this rank-two conclusion.

Witness: both rank-two signatures below elaborate at the pins with only `sorry` warnings. Serre's theorem and its congruence corollary are at serre1970 line 408 and line 436, printed pp. 498–499.

Repair: add the two rank-two headline statements, name them in §11.5, and distinguish them from the still-unstatable completion and metaplectic classification. Retain the positive-unit-rank bound in both. These forms were tested in a scratch copy of the existing module:

```lean
theorem rankTwoCongruenceProbe (F : Type u) [Field F] [NumberField F]
    (S : Set (HeightOneSpectrum (NumberField.RingOfIntegers F))) [Finite S]
    (hRank : 2 ≤ Nat.card (NumberField.InfinitePlace F) + Nat.card S)
    (hFS : S.Nonempty ∨ ∃ v : NumberField.InfinitePlace F, v.IsReal)
    (H : Subgroup (Matrix.SpecialLinearGroup (Fin 2) (S.integer F))) [H.FiniteIndex] :
    ∃ I : Ideal (S.integer F), I ≠ ⊥ ∧ principalCongruence (S.integer F) 2 I ≤ H := by
  sorry

theorem rankTwoFailureProbe (F : Type u) [Field F] [NumberField F]
    (hRank : 2 ≤ Nat.card (NumberField.InfinitePlace F))
    (hF : ∀ v : NumberField.InfinitePlace F, v.IsComplex) :
    ∃ H : Subgroup (Matrix.SpecialLinearGroup (Fin 2) (NumberField.RingOfIntegers F)),
      H.FiniteIndex ∧ ∀ I : Ideal (NumberField.RingOfIntegers F), I ≠ ⊥ →
        ¬ principalCongruence (NumberField.RingOfIntegers F) 2 I ≤ H := by
  sorry
```

The generality checks are discriminating: for ℚ and S={p}, the place count is 1+1=2 and the kernel is 1; for ℚ and S=∅ the count is 1 and the statement is excluded. For ℚ(ζ₅), S=∅, the count is 2 and the exceptional kernel has order 10. An imaginary quadratic field with empty S has count 1 and is excluded. Thus this repair does not silently extend the positive-unit-rank theorem to SL₂(ℤ) or imaginary quadratic lattices.

## R02 (P2) — Import finite elementary-group perfection from its owner

Location: `TauCetiRoadmap/KTheoryLowDegrees/README.md:558`, “Prove `E_n(R)` perfect for `n≥3` using a spare index in each generator commutator.”

Claim: this finite-rank theorem is already supplied by AlgebraicKTheory A1.3. It is not a new refinement of its stable theorem. Keep the genuinely additional noncommutative opposite-root and centralizer formulas, but do not assign a second owner to finite perfection.

Witness: `TauCetiRoadmap/AlgebraicKTheory/README.md:237` explicitly states finite perfection; line 246 supplies the spare-index formula and the n=2, 𝔽₂ exception. These are the supplied open-head files, not a remembered version.

Repair: delete this proof target and consume AlgebraicKTheory A1.3's finite perfection in the supplier contract and in the centralizer/extension arguments. The original and imported statements have the same bounds: E₂(𝔽₂) has order 6 and commutator order 3; E₂(𝔽₃) has orders 24 and 8; E₃(𝔽₂) and its commutator both have order 168. The centralizer refinements remain targets here.

## R03 (P3) — Correct the sampled source locators

Locations: `TauCetiRoadmap/KTheoryLowDegrees/README.md:730`, “Weibel II.2.5, pp. 73–74”; line 855, “BMS Lemmas 9.1–9.8”; line 1017, “restricted-product covering theorem (12.2, p. 59)”; line 463, “Weibel I.3, divisor-class localization”.

Claim: the relative K₀ locator points to a different subject, the BMS range includes nonexistent lemmas, and the Moore pages are displaced. The localization reference can be made exact. These are locator defects; the sampled mathematical statements are supported elsewhere in the same legal texts.

Witness: weibel2013 line 4124 is Hattori–Stallings trace; bms1967 line 2036 is Lemma 9.6 followed by §10 at line 2051; moore1968 line 2398 lies under printed-page header 58 at line 2375.

Repair, checked against those texts:

- In §9.2 cite Weibel Ex. II.2.3, p. 78, and Ex. II.2.4(a),(e), p. 79, for augmented-ring K₀ and its unit-ideal/triple comparisons. Keep II.2.10, p. 77, for triples and III.2.3, pp. 193–194, for the exact sequence. The augmented-ring definition is at weibel2013 line 4401; the unit-ideal case is at line 4429. With I=A it gives A×A and the second projection, exactly as the roadmap's check requires.
- In §10.5 use BMS Lemmas 9.1–9.6, pp. 112–114, and identify the relevant §10 steps separately. There are no Lemmas 9.7–9.8. The reflected-transpose argument is at bms1967 line 2007 and the final §9 normalizer step at line 2036.
- In §11.5 and References, Moore Theorem 12.2 starts on p. 58; Theorem 12.3 starts on p. 59 and its proof continues on p. 60 (moore1968 line 2444). The previous review incorrectly requested changing 58 to 59. This head follows that request; the error was in the previous review.
- In §5.3 cite Weibel Ex. I.3.8(a),(c), p. 29 (weibel2013 line 1742), for the localization exact sequence. It gives the zero class group for a localized PID and kills all ideal classes upon passage to the fraction field, as required.

## R04 (P3) — Separate README notation from declarations in the acceptance test

Location: `TauCetiRoadmap/KTheoryLowDegrees/README.md:476`, “define `lineMapIndexIdeal f`”; line 853, “define `MultiplierSubgroup f`”; line 125, “supplies `TauCeti.LambdaRing.PreLambda`”.

Claim: the README repeatedly uses backticked declaration names for its own objects that are not declared in Suggested.lean. It also attributes old declaration names to SchemeKTheoryOperations even though that supplier now states these interfaces in prose. The mathematical objects are specified, so this does not create an unowned prerequisite, but the asserted name-level interface is inaccurate.

Witness: Suggested.lean declares none of `lineMapIndexIdeal`, `MultiplierSubgroup`, or `reflectedTranspose`; SchemeKTheoryOperations §6.2.4 states the γ-kernel theorem in prose at README line 2191, without `gammaFiltration_two_eq_rank_det_kernel` in either file.

Repair: use mathematical notation or plain prose for README-only objects and API facts; reserve own backticked declaration names for the 23 actual declarations. Cite SchemeKTheoryOperations by its existing section and mathematical target, or explicitly mark a name as local notation rather than an exported declaration. Do not bulk-add API declarations to Suggested.lean. For example, the image-ideal definition must still send multiplication by 6 to (6), and the multiplier subgroup of x↦x² on S₃ must still have order 1; neither needs a new acceptance-test declaration.

## R05 (P3) — Give dependencies per target and APIs as explicit lists

Location: `TauCetiRoadmap/KTheoryLowDegrees/README.md:233`, “The finite-projective automorphism formula for the boundary uses Layers 6–7”; line 1048, the single layer-wide Dependencies block.

Claim: the document has 14 layer dependency summaries but no `*Needs:*` lines. Statements with substantially different prerequisites share those summaries. For example, the elementary row-patching normalization, its projective-automorphism comparison, rank-two finite generation, and metaplectic classification do not have the same dependency sets. Definition APIs are often embedded in long paragraphs rather than the required fact-by-fact bullet lists.

Witness: a literal search for `*Needs:*` returns zero matches. §1.4's boundary comparison is assigned later Layers 6–7 only by the layer summary; §11.4's unit-rank-free finite generation and §11.5's positive-unit-rank classification share another summary.

Repair: add statement-and-route dependencies to each target, distinguishing suppliers from local targets, and turn each definition's API into prose bullets with hypotheses and conclusions. Keep the layer summaries. Test the resulting order on the witnesses already present: rank-two finite generation must apply to ℚ with empty S, while centrality/metaplectic classification must not. The row-idempotent and rank constructions must not acquire a dependency on their later K₁ comparisons. This is a documentation repair, not a claim that the mechanical roadmap graph has a cycle.

Previous findings were checked first, individually, against this head:

| Previous finding | Passage at this head | Resolution |
| --- | --- | --- |
| R01, missing higher-rank CSP | Suggested.lean:210, “theorem congruence_subgroup_property”; :222, “theorem congruence_subgroup_failure”; :196, relative elementary generation | Repaired for the requested n≥3 results. R01 above is the separate n=2 headline found by the full review. |
| R02, EnhancedDerivedSheaves supplier drift | README:131, “E2.7's `spaceSheaves` and `spacePostnikovTower`” | Repaired. Main now contains E2.7 at EnhancedDerivedSheaves/README.md:2375, with both objects at :2377 and :2379. The previous missing-main witness is no longer true. |
| R03, determinant/rank–Picard duplication | README:369, “Use SchemeAndStackFoundations §5.7's determinant homomorphism”; §4.2 imports SchemeKTheoryOperations §7.1 | Repaired for those objects. The retained locally constant exponent and Dedekind coordinate comparisons are additional normalization results. |
| R04, repeated representation layer | README:13, “this roadmap states no target”; §3.3 retains the two polynomial checks | Repaired. The repeated layer is gone. |
| R05, exterior algebra product | README:45 names `ExteriorAlgebra.prodEquivTensor` and its ordered inverse formula | Repaired; both declarations were opened at the pin. |
| R06, Dieudonné duplication | README:672, “are A2.3's supplied statements”; :674, “use it as supplied” | Repaired for the cited kernel/quaternion statements. |
| R07, supplier aliases and Spin ownership | README:127, “this roadmap's notation”; :55 names pinned Spin modules | Repaired for the three aliases and the Spin attribution raised previously. R04 above concerns additional name-level mismatches. |
| R08, Morris and Moore pages | README:1395, “PDF pp. 207–209”; :1017, “12.2, p. 59” | Morris repaired. Moore was changed as requested, but the previous request was wrong: restore p. 58. |
| R09, docstrings and n=0 | Suggested.lean:97 and :104 have declaration docstrings; :128 has no positive-rank restriction | Repaired. Rank zero gives the one-element matrix group. |
| R10, later ModularCurvesPartII target | README:1382 names “ModularCurvesPartII §15.3” as consumer | Repaired locally. The later roadmap's overlapping special case remains its own ownership-repointing task. |

## Verified sound

The full README and all 23 Lean declarations were read. The adversarial table below has 153 rows of concrete computations throughout all 14 layers, including every seeded section, every Lean headline, and the targets touched by findings. These are falsification checks, not proofs of the future library.

The principles audit found no route-specific prime restriction, sorry'd data, option override, copied source passage, or outside-folder change. This is explicitly Part II of GrothendieckEulerForms. The ownership repetition is R02; the pivot calculations are mathematical formulas.

The worker's gate reports every scanner, dependency check, and targeted build successful, including `stray-files=0`, `outside-folder=0`, `sorry-data=0`, `set_option=0`, and `build=0`. My targeted build `lake build TauCetiRoadmap.KTheoryLowDegrees.Suggested` succeeded. Direct `lake env lean` on Suggested.lean then exited 0 with exactly 11 `sorry` warnings and no other warning. The recorded worktree head is the requested head and the outside-folder diff is empty.

The independent dependency command, with `--movable`, printed:

```text
depcheck: 205 roadmaps, 1472 edges, 0 problem(s)
```

There was no UPWARD, CYCLE, or moved line. No supplier gaps are declared. The absence of per-target dependency lines is R05; it is not a failing gate result.

**Signatures and padding.** A scratch copy appended `#check @name` for all 23 declarations and elaborated successfully. Explicit finiteness, Dedekind, number-field, finite-S, scalar-action and subgroup-index hypotheses remain in the elaborated types. Nothing was silently lost. The 11 sorried headlines were tested on another copy with a one-tactic probe (`first | simp | rfl | infer_instance`); none closed. Reading their definitions and the pinned APIs found no one-library-lemma replacement. The native K₀ category and Picard definitions, matrix predicates and circle matrix are genuine definitions used by the headlines, not arbitrary stand-ins. The rank-two additional-signature probe also elaborated, as recorded in R01.

The headline inventory is:

| README end theorem or deep intermediate result | Acceptance test at these pins |
| --- | --- |
| Rank section and semilocal rank classification (§§2.1–2.2) | `rank_exists_split`, `semilocal_rank_equiv_exists`; arbitrary commutative rings, including the zero ring where appropriate. |
| Steinitz and Dedekind rank–Picard ring classification (§§5.1–5.2) | `steinitz_decomposition`, `rank_pic_equiv_exists`; finite projectivity and positive rank explicit in the former; fields included. |
| Euclidean finite elementary generation (§8.1) | `euclidean_elementary_generation`; all finite ranks. |
| Stable nonvanishing of the circle rotation (§8.4) | `circle_rotation_not_stably_elementary`; every finite identity padding, with an actual quotient ring and matrix. |
| S-integer elementary and relative elementary generation (§11.3) | Two native-matrix signatures, retaining n≥3 and the nonexceptional place hypothesis. |
| Higher-rank CSP and its totally imaginary failure (§11.3) | Both native subgroup signatures present. |
| Arithmetic SL₂ finite generation (§11.4) | `arithmeticSL2_finitelyGenerated`, for every finite-index subgroup, no unit-rank restriction. |
| Rank-two CSP under positive S-unit rank (§11.5) | Statable but absent: R01. |
| λ/γ/Adams and determinant comparisons (§§3–4), transfer-normalized K₁, relative boundaries and Mennicke defects (§§7,9–11) | Docstring names missing operations, stable/relative K₁, patching, and defect carriers. |
| Curve K₀/G₀ classification (§12), based K-space boundary comparisons (§13) | Docstring names missing scheme Grothendieck groups, plus constructions, Steinberg groups and based boundaries. |
| Graded, perfect and Witt-supported determinants, including finite-length filtrations (§14) | Docstring names missing graded-line spectra and enhanced/supported K-theory. |

**Seeded source verification.** All 15 requested targets were checked against legal texts, not search snippets. No target is labelled unverified in the README. Sources were fetched through the sources service from the cited author, institutional, arXiv, Numdam and Stacks locations. The source identifiers below identify the line-numbered extractions used in this review; no source text was copied into the repository.

| Sample | Source text opened and locator checked | Support and qualifications |
| --- | --- | --- |
| 1.4 row patching | weibel2013 line 4297, II.2.9, pp. 76–77; line 4321; I.2.7 | Positive patched-minus-free class and exactness agree. The opposite-ring transpose is the roadmap's explicit coordinate transport, not a claimed separate source theorem. |
| 4.2 rank–Picard quotient | weibel2013 line 4206, II.2.6.2, p. 75; line 5360, II.4.7.1, p. 96 | Arbitrary commutative rings, full locally constant rank, square-zero Picard ideal and F²=SK₀. Supplier ownership checked separately. |
| 5.2 rank–Picard isomorphism | weibel2013 line 1253, I.3.4, p. 19; line 4210, II.2.6.3, p. 75 | Source's dimension-one classification applies to nonfield Dedekind domains. Field case is separately correct, with Pic=0 and K₀=ℤ. |
| 5.3 localization and quadratic example | weibel2013 line 1742, Ex. I.3.8, p. 29; line 1332, I.3, p. 21; pinned minus-five class-number theorem | Localization exact sequence supports the kernel claim; R03 makes the locator precise. The quadratic projectivity, nonprincipality and square were recomputed. |
| 5.5 normalized norm/transfer | weibel2013 line 4275, II.2.8.1, p. 76; line 4387, Ex. II.2.2(a), p. 78; native relative norm | Finite projective restriction and projection formula support the route. The s-correction follows from the determinant/index calculation, not an uncited separability assumption. Ex. II.2.2(b)'s other composite is erroneous; the roadmap does not assert it. |
| 7.2 projective automorphisms | weibel2013 line 10338, III.1.6, pp. 185–186, through 1.6.3 | A finite free complement produces the class; stabilization and conjugation remove choices. Exact-sequence additivity has the required compatible automorphisms. |
| 7.3 tensor/restriction | weibel2013 line 10353, III.1.6.1, pp. 185–186; line 10429, III.1.7–1.7.1, p. 187 | Commutative tensor action and finite-projective restriction support the product and norm calculations. |
| 8.1 determinant splitting | weibel2013 line 9972, III.1.1.1, p. 180; III.1.4, pp. 183–184; III.1.6.4, p. 186; Ex. III.1.5, p. 190 | Split determinant and Euclidean reduction agree; fixed-size elementary generation is stronger than mere stable SK₁ vanishing and is stated here. |
| 9.2 relative boundary | weibel2013 line 4401, Ex. II.2.3, p. 78; line 4425, Ex. II.2.4, p. 79; line 4345, II.2.10, p. 77; line 10866, III.2.3, pp. 193–194 | Augmented-ring kernel, triples and six-term sequence support the claims. II.2.5 is the wrong locator: R03. No terminal surjectivity or initial injectivity is added. |
| 10.1 universal symbols | bms1967 line 319, §2.5, p. 67; line 348, §2.9; line 362, §2.10, p. 68; line 368, §2.11; line 405, §2.13, pp. 69–70 | Relations, image commutativity, reciprocity and ideal-level version checked with the relative congruence conditions retained. |
| 10.5 multipliers/transpose | bms1967 line 1952, §9.1, p. 112; line 1969, §9.2, p. 113; line 1999 and line 2007, p. 114; line 2036, §9.6 | Source acts on the image of κ; the roadmap correctly does not extend its anti-isomorphism to arbitrary C. R03 repairs the nonexistent lemma range. |
| 11.2 finite defects | bms1967 line 691, §3.6, p. 77; line 1043, (A.17), p. 86; serre1974 line 33 and line 40, Theorem 1, p. 241 | Higher-unit thresholds, roots-of-unity order and corrected norm-on-roots exponent checked. The false degree-only extension rule is explicitly rejected. |
| 11.5 completed rank-two defects | serre1970 line 397, §2.6, p. 498; line 408, Theorem 2; line 423, corollaries, pp. 499–500; moore1968 line 2398, 2444, 2585, Theorems 12.2, 12.3, 13.1 | Positive unit rank, completed rather than initially discrete inverse limits, and subsequent finite-generation argument retained. Moore's local classification at Theorems 10.3–10.4 is first used for finite coefficients, then the roadmap supplies the profinite limit argument. Pages corrected in R03; native CSP conclusion omitted in R01. |
| 11.6 arithmetic characters | calegariGeraghty line 4744, Remark 9.3, PDF p. 119 | This is motivation for the cohomological application, not a source assertion of the general group lemma. That lemma follows from extension to profinite completion and annihilation of the prime-to-p finite kernel. Geometric/Hecke inputs remain downstream. |
| 14.6 finite-length modules | bhattScholze2017 line 1138, Lemma 6.11, pp. 24–25; line 1151; line 921, Theorem 5.7, p. 20 | Perfect field, perfect scheme, finite-length module and finite-locally-free graded pieces match. Source supports a fixed pulled-back line and trivializability, not a canonical basis. Grading/refinement use the stated determinant formalism. |

**Adversarial calculations.** In this table, “retain” means the displayed comparison passed; it does not mean the eventual theorem was proved. Multiplicative Picard/K₁ identity is written 1, and additive K₀ identity 0. Finite S₃ and elementary-group calculations were also checked by exhaustive finite multiplication in scratch code.

| Statement | Instances tried | Values computed on the two sides | Result / change |
| --- | --- | --- | --- |
| Conventions: left rows versus right columns | Quaternion coefficients i,j | (i,0)e₁₂(j)=(i,k); reversed multiplication gives (i,−k) | Retain opposite-ring transport. |
| Conventions: two stabilizations | Rank-one identity/idempotent | GL padding diag(1,1) has rank 2; projective padding diag(1,0) has rank 1 | Retain distinction. |
| 1.1 idempotent presentation | e=[[1,1],[0,0]] | e²=e; row image={(a,a)}, column image={(a,0)} | Retain row convention. |
| 1.1 complement and stabilization | e and 1−e over a field; zero module | R²=eR²⊕(1−e)R² has ranks 1+1=2; zero idempotent has rank 0 | Retain. |
| 1.2 class and split relation | Field, finite vector spaces of ranks 2 and 3 | [k²⊕k³]=5=2+3; [0]=0 | Retain. |
| 1.2 stable equality/finite generation | k⊕k^(ℕ)≅k^(ℕ) | Infinite swindle would force 1=0; finite K₀(k)=ℤ has 1≠0 | Finite projectivity excludes wrong model. |
| 1.3 base change without flatness | ℤ→𝔽₂, module ℤ | Extended module has rank 1=rank ℤ; tensoring arbitrary exact sequences is not claimed | Retain. |
| 1.3 products and transfer | k→k×k | Extension 1↦(1,1); restriction (a,b)↦a+b; composite 1↦2 | Retain. |
| 1.3 Morita regular/simple normalization | M₂(k) and k | Simple column class↦1; regular M₂(k) class↦2; scalar restriction regular rank=4 | Retain, distinguishes the two maps. |
| 1.3 duality versus side conversion | Invertible ideal class L of order 3 | Dual class L⁻¹=L²; side conversion class L | Retain distinction. |
| 1.4 identity/lifted transition | Identity, empty matrix, endpoint unit | Patched class−free class=0 in each case | Retain. |
| 1.4 boundary sign and inverse | ℤ× over 𝔽₅ ℤ, residue 2; over 𝔽₇, residue 2 | 𝔽₅ˣ/{±1} has [2] of order 2; 𝔽₇ˣ/{±1} has [2] of order 3, inverse [4]≠[2] | Retain; 𝔽₇ detects the sign that 𝔽₅ cannot. |
| 1.4 row/column opposite transpose | Quaternion row (i,0), e₁₂(j) | Transposed equation over ℍᵒᵖ has coordinate k, matching the row; untransported equation has −k | Retain. |
| 2.1 locally constant rank | R=k×k, e=(1,0) | ranks(eR)=(1,0), ranks((1−e)R)=(0,1), sum=(1,1) | Retain full rank function. |
| 2.1 rank section/rank_exists_split | Clopen rank (1,2); zero ring | Corresponding projective has ranks (1,2); empty spectrum gives unique zero function and zero K₀ | Retain. |
| 2.1 projectivity hypothesis | ℤ/2 over Spec ℤ | Fibre dimensions are 1 at (2), 0 generically; not locally constant | Finite flat hypothesis excludes it. |
| 2.2 semilocal classification | Connected ℤ localized at the two primes 2,3 | Two maximal ideals, but one connected rank coordinate: K₀=ℤ, not ℤ² | Retain component count. |
| 2.2 field and zero-ring boundaries | 𝔽₂ and zero ring | K₀(𝔽₂)=ℤ, Pic=0; K₀(0)=0, not ℤ | Retain nonempty connected qualification. |
| 2.3 quadratic ideal retraction | A=ℤ[s], s²=−5, I=(2,1+s) | Composite on a∈I equals a((−1+s)−(1+s)²/2)=a | Retain projectivity construction. |
| 2.3 nonprincipal rank-one ideal | Same I | Local rank=1 everywhere; norm equation x²+5y²=2 has no integer solution | Nontrivial class invisible to rank retained. |
| 3.1 exterior sum | Two rank-two summands, exterior degree 2 | Graded ranks 1,4,1 sum to 6=binom(4,2) | Retain ordered restriction of native equivalence. |
| 3.1 wedge ordering/base change | One vector in each summand | M-before-N gives e₁∧e₂; reversal gives −e₁∧e₂; in characteristic 2 both signs equal 1 | Retain signed ordered formula. |
| 3.1 virtual exterior operations | Class −1 | λ_t(−1)=1−t+t²−t³+…; λ²=1, λ³=−1 | Retain inverse-series rule. |
| 3.2 pre-λ axioms | Proposed λⁿ(x)=xⁿ, x=y=1,n=2 | λ²(2)=4; sum convolution=1+1+1=3 | Wrong model rejected. |
| 3.2 special unit axiom | λ_t(m)=(1+t+t²)^m | Sum rule holds, but λ²(1)=1 instead of 0 | Pre-λ and special notions distinguished. |
| 3.2 λ-ideal condition | Ideal (2) in binomial ℤ | 2∈(2), λ²(2)=1∉(2) | Correct nonexample. |
| 3.3 product polynomial | Ranks 3 and 2 | 3²·1+2²·3−2·3·1=15=binom(6,2) | Retain. |
| 3.3 composition polynomial | Rank 4, λ²λ² | 4·4−1=15=binom(6,2) | Retain. |
| 3.4 γ versus λ | Integer rank 3 | γ²(3)=6, λ²(3)=3; substitution distinguishes them | Retain. |
| 3.4 positive filtration | ℤ[C₂], u=σ−1 | u²=−2u; u³=4u; F²=2ℤu, F³=4ℤu | Retain integral/nonvanishing filtration. |
| 3.4 degree zero and rank quotient | ℤ and k×k | Empty product gives F⁰=whole ring; degree-zero rank functions include (1,0), not just diagonal integers | Retain. |
| 4.1 determinant with variable rank | Two clopens, ranks 1 and 2 | L^(1,2) restricts to L and L², not a single global power | Retain clopen construction. |
| 4.1 compound matrix determinant | diag(2,3,5), exterior degree 2 | det Λ²=6·10·15=900; det(g)^binom(2,1)=30²=900 | Retain. |
| 4.1 exterior endpoint degrees | Rank 3, j=0 and j=3 | Λ⁰ determinant=1; Λ³ determinant=30 | Retain separate degree-zero handling. |
| 4.2 square-zero rank–Picard multiplication | Reduced classes (0,L),(0,M) | Product=(0,1), i.e. additive zero; rank product=0 | Retain supplied formula. |
| 4.2 rank–determinant section | Virtual class s(f)+[L]−1 | Rank=f+1−1=f; determinant=1·L·1=L | Retain comparison. |
| 4.2 F² kernel | A and a nontrivial Dedekind ideal I | [A] has (1,1), excluded; [I]−[A] has (0,I), excluded when I≠1 | Retain simultaneous kernel. |
| 4.3 Adams normalization | Integer −1 and a line L | ψ²(−1)=−1; ψ²(L)=L²; reduced line quotient doubles | Retain. |
| 4.3 characteristic-2 congruence | General λ-ring, ψ²(x)=x²−2λ²(x) | Difference ψ²(x)−x²=−2λ²(x), hence 0 mod 2 | Retain. |
| 5.1 Steinitz positive rank | Rank-one I; I of order two | I≅A⁰⊕I; I⊕I has determinant I²=1 and is A² | Retain r+1 bound in Lean. |
| 5.1 zero module | Rank 0 | Determinant=1, K₀ class=0; it is not A^(−1)⊕1 | Zero case separate. |
| 5.2 rank_pic_equiv_exists | Virtual pair (−1,L) | [L]−2[A] maps to (−1,L); reduced products vanish | Retain ring, not merely additive, classification. |
| 5.2 field and residue base change | Field k; Dedekind A→κ(p) | Pic(k)=0; (n,L)↦n and L becomes trivial | Retain. |
| 5.3 localization | PID; fraction field of nonprincipal Dedekind A | PID gives ℤ→ℤ identity; fraction field kills all Pic and preserves n | Retain; R03 locator. |
| 5.3 quadratic order | I=(2,1+√−5) | I²=(2), so twice reduced class=0; norm-2 obstruction makes class nonzero | Retain exact order two. |
| 5.3 disconnected negative control | k×k, invert (1,0) | Rank group ℤ²→ℤ is projection, not rank-preserving on a fixed domain | Dedekind-domain hypothesis excludes it. |
| 5.4 index-ideal definition | ℤ-line maps 0,1,6 | Index ideals (0),(1),(6); multiplication by 6 has source class (6)·target class | Retain; R04 naming repair only. |
| 5.4 semilocal norm valuation | ℤ_(5)[i], J=(i−2) | Residue lengths 1 and 0, degrees 1 and 1; sum=1=ord₅(5) | Retain sum over primes, not a product-ring assumption. |
| 5.5 norm correction | Identity extension; trivial S-line | d=1,s=1 gives N(L)=L; general N(S)=s·s⁻¹=1 | Retain correction factor. |
| 5.5 transfer negative rank | Pair (−1,1) | Output (−d,s⁻¹); add output of (1,1)=(d,s) to obtain (0,1) | Retain. |
| 5.5 projection formula | (n,L), finite extension degree d | f_*f*(n,L)=(dn,L^d s^n)=(n,L)·(d,s) | Retain; omitting s^n changes the determinant. |
| 5.5 inseparable boundary | k(t)⊂k(u), u^p=t | Restriction of a line has rank p; scalar a has norm a^p | No separability needed. |
| 5.5 finite/empty products | k×k over k; empty product | (a,b)↦a+b; empty sum=0, empty determinant product=1 | Retain. |
| 6.1 stable matrices/block sum | u=2 over ℚ | diag(2,1)≠diag(1,2) as stable matrices; both determinant classes=2 | Retain distinction. |
| 6.1 contiguous block dependence | u=2,v=3 | diag(2,1,3)≠diag(2,3,1); both K₁ values=6 | No block operation on arbitrary stable representatives. |
| 6.2 coefficient order | Distinct roots, a=i,b=j in ℍ | Opposite-root coefficient −ba=−ji=k, whereas −ab=−k | Retain noncommutative refinement. |
| 6.2 signed Weyl word | Integral 2×2 roots at 1,−1,1 | w=[[0,1],[−1,0]], w²=−I; in characteristic 2, w²=I | Retain. |
| 6.2 finite perfection | E₂(𝔽₂),E₂(𝔽₃),E₃(𝔽₂) | Group/derived orders 6/3,24/8,168/168 | Correct bound, duplicate owner: R02. |
| 6.2 finite/stable centralizer | Central scalar uI_n, u≠1; new-index root | Finite commutator=1; after padding, new-index coefficient changes from 1 to u | Finite scalars survive; stable centralizer only 1. |
| 7.1 Morita K₁ normalization | M₂(ℚ), units diag(2,1) and 2I | Underlying determinants 2 and 4 | Retain, excludes assigning both class 2. |
| 7.1 triangular radical | T₂(𝔽₂), upper unipotent | Stable determinant/class=1 | Retain radical calculation. |
| 7.2 projective automorphism/complement | Swap of k², then ⊕id on k | Both determinants=−1; characteristic 2 gives 1 | Retain complement independence. |
| 7.2 variable-rank determinant | R=k×k, module k×0, automorphism −1 | Componentwise determinant=(−1,1); a globally nonfree carrier's default determinant is not the intended construction | Retain componentwise normalization. |
| 7.2 opposite module side | e₁₂(a) | Right-column e₂↦e₂+a e₁; left-row conversion uses transpose over Rᵒᵖ | Same coefficient, not inverse. |
| 7.3 tensor action | Rank-r vector space acting on class u | Tensor automorphism determinant=u^r; r=0 gives 1 | Retain. |
| 7.3 restriction/norm | ℂ/ℝ, i and 1+i | Real determinants 1 and 2; norms 1 and 2 | Retain. |
| 7.3 product restriction | k×k, class (u,v) | Underlying determinant uv; restricting a supported factor (u,1) gives u | Retain. |
| 8.1 determinant splitting | ℤ, diag(−1),diag(−1,−1) | Classes −1 and +1; split projection followed by section returns the unit | Retain imported splitting. |
| 8.1 Euclidean generation | ℤ, n=0,1,2; signed rotation | Empty/size-one determinant-one matrices are identity; w is a product of three roots | Retain all finite ranks; no positive-rank binder needed. |
| 8.2 stable range | ℤ pair (2,5); field | 2+5b never ±1; over a field a nonzero coordinate can give 1 | Retain sharp distinction between range 2 and range 1. |
| 8.2 quotient/zero ring | ℤ/6; zero ring | Semilocal range=1; in zero ring unit equation 0=1 holds | Retain n≥1 convention. |
| 8.3 Schur complement | [[1,2],[3,4]] over ℚ | 1·(4−3·1⁻¹·2)=−2=ordinary determinant | Retain order. |
| 8.3 division-ring/small-rank exception | ℍ, n=1; 𝔽₂,n=2 | [i,j]=−1 has norm1 while E₁=1; GL₂(𝔽₂)=E₂ has order6, derived subgroup order3 | Retain distinction between kernel and finite commutator. |
| 8.3 quaternion scalar normalization | Scalars −1 and 2 | Norms 1 and 4, not −1 and 2 | Retain squared norm. |
| 8.4 circle charts | Plus chart t=0,1; minus chart t=0 | (1,0),(0,1),(−1,0); x²+y²=1 in each | Retain both charts. |
| 8.4 determinant-preserving deformation | diag(2,1/2), halfway linear interpolation to I | Intermediate diagonal (3/2,3/4), determinant9/8; dividing by sqrt(9/8) restores determinant1 | Retain normalization. |
| 8.4 Spin obstruction | Positive full rotation | Lift starts 1, ends −1; stabilization leaves this endpoint −1 | Retain stable, not only size-two, obstruction. |
| 9.1 relative normal closure | Dual numbers k[ε]/ε² | (1+aε)(1+bε)=1+(a+b)ε; relative units identify with additive k | Retain nilpotent case. |
| 9.1 Jacobson versus radical ideal | Ideal (6)⊂ℤ | (6) is radical, but Jac(ℤ)=0 and (6) is not contained in it | Correct stronger hypothesis retained. |
| 9.2 augmented multiplication | I=2ℤ, (1,2) | Square=(1,8); pullback coordinates (1,3) square to (1,9) | Retain; locator R03. |
| 9.2 zero/unit ideal | I=0 and I=A | Relative K₀=0 and K₀(A), respectively | Retain. |
| 9.2 projection and central factor | A=k×k,I=k×0 | Relative class n maps by add to (n,0); pr maps it to 0 | Retain, distinguishes projections. |
| 9.2 boundary/opposite/inverse | A patched class of order 3 | Opposite-transpose preserves class 1 mod3; inverse transition gives 2 mod3 | Retain. |
| 9.3 denominator-clearing boundary | v₂(12), clear denominator by 2 | 2=3−1; diag(π,π⁻¹) gives 1−1=0 | Retain positive valuation. |
| 9.3 ramification/residue degree | Ramified quadratic DVR, e=2,f=1 | Pullback of π has valuation2; norm valuation of upstairs uniformizer=1 | Retain distinct e and f rules. |
| 10.1 universal symbol and identity levels | I=0; A=ℤ,I=A | Only trivial symbol at zero level; absolute integer stable defect=1 | Retain. |
| 10.1 image commutativity | Symbol image C₂ inside C₂×S₃ | Image commutator=1; ambient S₃ still has nontrivial commutators | Retain image-only assertion. |
| 10.2 completion/level | [[5,2],[12,5]] | det=25−24=1; congruent I mod2, not mod4 | Retain exact ideal level. |
| 10.2 transpose/inverse | Diagonal unit completion | Symbol of unit numerator=1; transpose sends symbol value to its inverse, also 1 here | Nonunit order-three test above detects inverse. |
| 10.3 relative unimodularity | Columns (3,2,0),(2,1,0),(3,6,0), level2 | First: gcd1 and e₁ mod2; second: gcd1 but wrong residue; third: right residue but gcd3 | Retain both conditions. |
| 10.3 relative perfectness caution | E₃(ℤ,2ℤ) | Commutators are I mod4, while e₁₂(2) is not | Do not infer relative perfection from absolute perfection. |
| 10.3 oriented reduction | e₁₂(2), contraction parameter t | t=1 gives e₁₂(2); t=0 gives I | Retain direction. |
| 10.4 L-standard form multiplication | Scalar blocks a=2,b=3,y=5,z=7 | L product block=6, off-block az+y=19 | Retain order of coefficients. |
| 10.4 R-standard form multiplication | a=2,b=3,p=5,q=7 | R product block=6, off-block q+pb=22 | Retain distinct right formula. |
| 10.5 multiplier definition | S₃, f=id, square, constant1 | (size H,size N)=(6,1),(1,3),(6,6) | Retain; R04 name-only repair. |
| 10.5 stabilizer versus kernel | S₃,f=id | Every conjugation preserves {1}; only identity preserves all values | Retain stronger condition. |
| 10.5 endpoint reflection | Rank4, e₀₁(t) | Transpose+swap endpoints gives e₁₃(t); full reversal gives e₂₃(t) | Retain endpoint-only convention. |
| 10.5 GE versus E | ℤ, diag(−1,1) | determinant−1; in GE₂, not E₂ | Retain diagonal generators. |
| 10.6 last interchange/rank two | Determinant value of swap, rank2 | Value−1; ordinary integers have stable-range bound2, insufficient for the bound1 special argument | Retain stronger rank-two hypotheses. |
| 10.7 finite universal defect | SL₃(𝔽₂), I=whole field | SL₃ and E₃ both order168; quotient order1 | Retain special-linear, not unrestricted GL, defect. |
| 11.1 ramified higher units | ℚ₂(i), h=0,1,2,3,4,5,6 | Formula gives r=1,1,1,1,2,2,4 | Retain ramification-dependent threshold, including p=2. |
| 11.1 roots and tame orientation | ℚ₇, cubic residue, unit3 | 3² mod7=2; inverse symbol corresponds to4 | Retain transposition to BMS order. |
| 11.2 finite defect orders | ℤ[ζ₃], levels6,12,18,36 | Orders1,2,3,6 from the 2- and 3-primary thresholds | Retain. |
| 11.2 transition exponent | μ₄→μ₂ | i↦i²=−1; identity on μ₂ is not restriction of i↦i | Retain power transition. |
| 11.2 corrected extension exponent | ℚ(ζ₈)/ℚ(√2), and /ℚ(√−2) | Norm ζ₈=ζ₈⁸=1 in first, ζ₈⁴=−1 in second; both extensions degree2 | Retain norm-on-roots rule; degree-only rule fails. |
| 11.3 higher-rank kernel | SL₃(ℤ); SL₃(ℤ[i]); invert one finite prime | Kernel orders1,4,1 respectively | Retain place hypotheses. |
| 11.3 absolute/relative elementary generation | Nonexceptional S-integers, I=0 and I=A | Zero level gives 1=1; unit level reduces to SL_n=E_n | Retain; n≥3 still required. |
| 11.3 arithmetic nonzero level | Field 𝔽₂ versus number-field ring | Over field only nonzero ideal is whole field, so identity subgroup cannot contain its full SL₃ of order168 | Number-field arithmetic hypothesis essential. |
| 11.4 coarse-domain generation | ℤ on ℝ, U=(−0.1,1.1) | Overlap set={−1,0,1}, generating ℤ | Retain. |
| 11.4 connectedness | Infinite direct sum C₂ acting discretely on itself | U={0} has overlap set {0}, yet generated subgroup is {0}, not whole group | Connectedness excludes false inference. |
| 11.4 arithmetic tree quotient | SL₂(ℤ[1/p]) | Two vertex orbits, one edge; common stabilizer has lower-left entry0 mod p | Retain both vertex types. |
| 11.4 Serre closure versus bare roots | ℤ,I=2ℤ | e₀₁(1)e₁₀(2)e₀₁(−1)=[[3,−2],[2,−1]]; top-left3 mod4 versus bare even-root words1 mod4 | Retain ambient SL₂ normal closure. |
| 11.4 zero and field levels | I=0; I=k over 𝔽₂,𝔽₃ | Serre closure orders1;6;24 | Retain, no small-field perfectness assumption. |
| 11.4 finite generation versus centrality | ℚ,S=∅ | Unit rank0; SL₂(ℤ) finitely generated; positive-unit-rank premise false | Retain separate bounds; R05 dependencies. |
| 11.5 relative extension zero coefficient | M=1 | Hom(C,1) has one element; split relative extension has one isomorphism class | Retain. |
| 11.5 rank-two kernel/CSP | ℚ,S={p}; ℚ,empty; CM quartic ℚ(ζ₅),empty | Place counts2,1,2; kernel orders1,infinite,10 | Correct README; missing native headline R01. |
| 11.5 finite-generation inference | Finitely generated abelian ℤ^r⊕T | Profinite completion contains ℤ̂^r; finite completion forces r=0, leaving T | Retain finiteness prerequisite. |
| 11.6 prime-to-p descent | C=C₄, k=𝔽₅ or 𝔽₂ | Hom(C₄,𝔽₅) has1 element; Hom(C₄,𝔽₂) has2 | Retain p∤size C. |
| 11.6 PGL determinant quotient | Exponent2 quotient, characteristic5 | 2a=0 forces a=0; characteristic2 admits nonzero a | Retain p>n. |
| 11.6 common neighborhood | Two characters with kernels U,V | Both vanish on U∩V; finite intersection open; infinitely many p-adic levels intersect in {0}, not open | Retain finite-dimensional qualification. |
| 12.1 regular curve resolution | Doubled affine line, skyscraper at one origin | 0→O(−D)→O→k_D→0; rank terms1−1=0 | Retain nonseparated curves. |
| 12.1 dimension-zero component | Spec k | Finite vector-space resolution already degree0; K₀=G₀=ℤ | Retain dimension≤1. |
| 12.2 curve rank/determinant | Point class D on ℙ¹ | [O]−[O(−D)] has rank0, determinant O(D) | Retain positive divisor sign. |
| 12.2 curve square-zero ideal | Two reduced line classes | (0,L)(0,M)=(0,1) | Retain curve rank–Picard ring. |
| 12.3 projective-line coordinates | O(1),O(−1), basis O,O(−1) | Coordinates(2,−1),(0,1); rank/degree(1,1),(1,−1); Euler characteristics2,0 | Retain. |
| 12.3 reduced multiplication | z=[O]−[O(−1)] | rank/degree(z)=(0,1); z²=(0,0) | Retain z²=0. |
| 12.4 doubled origins | Coordinate t on doubled line | Divisor(t)=D₀+D₁, so [D₁]=−[D₀]; Pic=ℤ; K₀=ℤ² | Retain correction of Weibel example. |
| 12.4 elliptic finite field | y²=x³−x over 𝔽₅ | Seven affine points+infinity=8; 2(2,1)=(0,0), order4; three nonzero 2-torsion points | Group C₄×C₂, not cyclic C₈. |
| 12.4 anisotropic conic | Real conic without real points | Degrees over ℝ form2ℤ; after ℂ base change degrees formℤ | Retain actual degree image. |
| 13.1 absolute/support Euler class | [ℤ —p→ ℤ] | Absolute K₀ class1−1=0; supported length class1 | Retain support distinction. |
| 13.1 nonprincipal resolution/Cartan | I→A; dual numbers over k | Euler class[A]−[I]; Cartan of free dual-number module has k-length2 | Retain. |
| 13.1 automorphism transfer loop | ℂ/ℝ multiplication i | Underlying block determinant1 equals norm1 | Retain θ-normalization. |
| 13.2 Steinberg coefficient order | Roots ij(i),jk(j) over ℍ | Commutator root ik(k); reversed factors would give −k | Retain. |
| 13.2 quotient roots/prism | Quotient map identity versus zero; integer class3 | Root kernel0 versus whole; reflected prism changes3 to−3 | Retain explicit quotient and sign. |
| 13.3 congruence loop | I=0; I=A and scalar−1 over ℤ | Zero ideal has trivial relative loop; unit ideal contains loop of−1 of order2 | Retain based relative, not absolute-zero, construction. |
| 13.4 inverse lifted-word boundary | Boundary coordinate3 in an infinite cyclic target | Inverse word gives−3, not3; identity word gives0 | Retain negative normalization. |
| 13.4 split quotient | Split dual-number reduction k[ε]→k | Lifted source loops give boundary0 | Retain, excludes arbitrary nonzero boundary. |
| 13.5 double comparison | ℤ/4→ℤ/2, lift coordinates (1,3) | Square=(1,1); first projection1, second3 | Retain two projections separately. |
| 14.1 graded-line symmetry | Degrees1,1; −1,1;1,2 | Signs−1,−1,+1; characteristic2 gives+1 in all cases but grades remain distinct | Retain integer grading and Koszul rule. |
| 14.1 automorphism group | Trivial line over 𝔽₅; empty scheme | Four scalar automorphisms; empty scheme has one | Retain groupoid rather than Picard set. |
| 14.2 symmetric determinant | Swaps of ranks1/1 and1/2 | Determinants−1 and+1 equal (−1)^(rs) | Retain. |
| 14.2 scalar/isomorphism naturality | Scalar2 on one ℚ-line | Determinant scalar2, not1 | Retain actual morphisms. |
| 14.3 first truncation | Field 𝔽₅ and field 𝔽₂ | π₀=ℤ; π₁ sizes4 and1; graded-line units have same sizes | Retain τ≤1, no full-spectrum equivalence asserted. |
| 14.3 loop determinant | ℚ-line automorphism−1 | Loop maps to scalar−1 | Retain fixed orientation. |
| 14.4 shift and acyclic trivialization | Line in degree−1; [ℚ —2→ ℚ] | Grade−1 and dual line; acyclic grade0 and coefficient1/2 | Agrees with PadicMeasures §5.1. |
| 14.4 divisor perfect complex | O(−1)→O on ℙ¹ | Determinant O(1), grade0 | Retain triangle order. |
| 14.4 descent compatibility | Overlap identifying grades1 and2 | Equality1=2 fails, so no descent datum; matching grade1 retains scalar-unit cocycle | Retain graded descent. |
| 14.5 supported extension | α of line L | Output(L,1), not(L,0); W(k) itself has nonzero p-inversion | Retain specified support and extension homotopy. |
| 14.5 filtration/shift difference | Two degree-zero lines; C→0→C[1] | Filtration grade1+1=2; triangle grades r+(−r)=0 | Retain no alternating filtration signs. |
| 14.5 uniqueness data | Swap two rank-one factors | Comparison scalar−1; erasing coherence would give+1 | Retain specified comparison homotopy. |
| 14.6 constant finite length | Q=0,k,W(k)/p² | Grades0,1,2; lines1,det(k),det(k)⊗det(k) | Retain. |
| 14.6 nontrivial factors/trivial product | Q=k², tautological line on perfected ℙ¹ | Determinants O(−1),O(1); productO, degrees−1+1=0 | Retain product theorem, not factor triviality. |
| 14.6 basis normalization | One-dimensional k-line, basis multiplied by a≠1 | Chosen generator changes by a; isomorphism class remains trivial | Retain trivializable, not preferred trivialization. |

**Pinned library audit.** These 20 groups of declarations were opened at Mathlib `6b7abb3` and Tau Ceti `a91d3aa`, rather than at main's different library pins. Paths in this table are relative to the respective library repository.

| File and line at the pin | Declaration and relevant content |
| --- | --- |
| `Mathlib/RingTheory/Finiteness/Projective.lean:28` | `Module.Finite.exists_comp_eq_id_of_projective`: finite projective over a semiring has maps through `Fin n → R` whose composite is identity. No commutativity assumption. |
| `Mathlib/Algebra/Module/Projective.lean:164`; `Mathlib/LinearAlgebra/Projection.lean:566` | `Module.Projective.of_split`; `LinearMap.isProj_iff_isIdempotentElem`. These supply the retraction/projection facts; the matrix-side transport is additional. |
| `Mathlib/RingTheory/LocalRing/Module.lean:299` | `Module.free_of_flat_of_isLocalRing`: finite flat over a commutative local ring. It does not supply the arbitrary associative local-ring extension. |
| `Mathlib/RingTheory/Spectrum/Prime/FreeLocus.lean:221`, :238, :308, :319 | `isLocallyConstant_rankAtStalk`, `rankAtStalk_eq_of_equiv`, `rankAtStalk_prod`, `rankAtStalk_baseChange`; finite presentation and flatness for local constancy, finite flat hypotheses in the rank formulas. |
| `Mathlib/LinearAlgebra/ExteriorAlgebra/Product.lean:109`, :114 | `prodEquivTensor`, `prodEquivTensor_symm_apply_tmul_ιMulti`; the actual inverse uses `Fin.append`, with M first. |
| `Mathlib/RingTheory/PicardGroup.lean:429`, :443, :459, :876 | `CommRing.Pic`, `AsModule`, `Pic.mk`, `ClassGroup.equivPic`. Pic is a shrunk unit group of the module skeleton, so it remembers isomorphism classes, not a chosen basis. |
| `Mathlib/RingTheory/Morita/Matrix.lean:187` | `ModuleCat.matrixEquivalence R i`: the chosen index supplies nonemptiness. It is not a matrix-size-zero Morita equivalence. |
| `Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean:225` | `Matrix.SpecialLinearGroup.map`: quotient-ring map used to define principal congruence by its kernel. No completion carrier is needed. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Basic.lean:231`, :576, :621 | `finiteProjectiveModulesExactStructure_eq_split`, `moduleEulerClassOf_eq`, `cartanMap_apply`; the native full subcategory carries finite projectivity, not merely finite generation. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Split.lean:124`, :142, :150, :172, :195, :315 | `SplitK0.of`, `of_biprod`, `of_eq_zero_of_isZero`, `exists_eq_sub`, `hom_ext`, `mapEquiv`; class relations and universal maps are already implemented. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Exact.lean:625` | `ExactK0.fromSplitEquiv`, under splitting of all conflations. |
| `TauCeti/CategoryTheory/GrothendieckGroup/FiniteDimensionalVectorSpace.lean:148`, :226 | `SplitK0.finrankEquiv`, `AbelianK0.finrankEquiv`, both retaining `[Small.{v} k]`. |
| `TauCeti/Algebra/Category/ModuleCat/Equivalence.lean:78`, :91 | `finite_functor_obj_iff`, `projective_functor_obj_iff`; the projectivity transport retains the stated smallness assumptions. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Morita.lean:215`, :234, :240; `CartanMap/RingEquiv.lean:254` | `finiteProjectiveModulesK0Equiv`, its class and inverse formulas, and the ring-isomorphism specialization. The roadmap uses these maps rather than a second general Morita construction. |
| `TauCeti/LinearAlgebra/ExteriorPower/Basic.lean:276`, :287, :295 | `map_top_eq_det_smul`, `map_finrank_eq_det_smul`, `topEquiv`; the basis/free-module qualifications are retained. |
| `TauCeti/LinearAlgebra/ExteriorPower/BaseChange.lean:68`, :85, :103 | `exteriorPower.equivBaseChange`, pure-wedge formula and map naturality. Arbitrary-module base change does not require flatness. |
| `TauCeti/RingTheory/ClassGroup/RelNorm.lean:83`, :143, :166 | `ClassGroup.relNorm` and `relNorm_extendedHom`: finite torsion-free algebra of Dedekind domains; no separability hypothesis. |
| `TauCeti/RingTheory/DedekindDomain/SInteger/Unit.lean:105`, :130, :149, :167, :207 | `Set.unitValuation`, its kernel, `unit_fg`, `unitEmptyEquivUnits`, `unit_fg_of_units`; finite S plus ordinary-unit finite generation is required. |
| `TauCeti/NumberTheory/Multiquadratic/MinusFive/ClassNumber.lean:249` | `classNumber_adjoinRoot_sqrt_neg_five_eq_two`; the arithmetic value is 2, not an assumed class group presentation without a ring comparison. |
| `TauCeti/LinearAlgebra/CliffordAlgebra/Spin/Rotation.lean:45`; `TauCeti/Topology/Algebra/CliffordAlgebra/Spin/Rotation.lean:73`, :85; `Spin/Covering.lean:52` | `spinRotation` has the ordered Clifford product; the path uses parameter πt; the covering theorem requires `[NeZero n]` and compactness. These assumptions are recorded in the README. |

The object searches included finite-projective presentations, rank, determinant, relative/class-group norms, exterior decomposition, elementary generation/perfection, stable/relative K₁, Mennicke symbols, graded lines, Witt support and congruence kernels. The Euclidean finite-generation signature is not the existing field/integer transvection theorem. The native class-group norm is already used, rather than redefined. No duplicate fully qualified declaration of this module was found in the readable sibling Lean files.

**Resolved ownership and supplier contracts.** I used the roadmap tools' object searches and `show` results, the board packages, main, and the supplied open checkouts. Main was `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. Existing roadmaps were resolved on main; new roadmap suppliers were resolved at their available open heads. The worker's 19 unresolved-name leads were not treated as missing mathematics: they include module paths, planned geometric declarations and explicit local aliases. R04 records the remaining misleading exported names.

| Supplier or consumer | Resolved content and ownership conclusion |
| --- | --- |
| GrothendieckEulerForms Layers 0–5 | Categorical split/exact/abelian K₀, Cartan and Euler infrastructure; its implementation is the pinned Tau Ceti package above. This roadmap adds the ring/curve and representative normalizations. |
| AlgebraicKTheory A0–A6 | Associative extension and module-side conventions; stable GL/E; projective automorphisms; relative groups/triples; stable range; Steinberg presentation; patching. A1.3 at README:237/:246 also owns finite perfection (R02). A2.3 supplies the Dieudonné kernel and quaternion calculation. |
| GeneralAlgebraicKTheory §§3.14,4.16,7.7,8.1,8.4,8.7–8.9,8.12,10.6 | Ring/automorphism comparisons, transfer, relative spectra, inverse-parameter patching, augmented double/excision, positive DVR valuation and higher Morita. README:646, :900, :1639, :1701, :1774 identify the principal low-degree contracts. The inverse transition at §8.4 agrees with the order-three sign probe. |
| SchemeKTheoryOperations §§3.6,3.8,4.10–4.11,6.2–6.3,6.6,7.1 | Determinant splitting, Witt support and sheafified comparison, λ/γ/representation operations and rank–Picard ring. README:1018, :2185–2191, :2805–2830 were resolved; old interface names need R04's repair, not a new owner. |
| SchemeAndStackFoundations §5.7 and §3.3 | Main README:6996–7012 supplies the geometric exact structures, K₀/G₀, rank, determinant, localization and proper pushforward. Degree is Euler-characteristic degree, not dimension of H⁰. |
| AlgebraicVectorBundles L0B–L0C | Finite locally free carrier, affine dictionary, exterior powers, locally constant determinant and core functor. Arbitrary module maps are not silently made invertible determinant morphisms. |
| JacobianChallenge Layer A | Main README:111–132 supplies divisor/Picard and degree comparisons; it explicitly consumes the native Cartier divisor/class-group API. The roadmap's curve classification does not rebuild Picard theory. |
| PadicMeasuresIwasawaAlgebras §5.1 | Main README:3173–3215 and :3246–3273 supplies parity-graded determinant lines, exact comparison and acyclic normalization. The two-term scalar is u⁻¹ in both roadmaps; integer grading/spectral descent remain additions here. |
| ClassicalArithmeticCompletion §§7.0,7.6–7.7,7.23 | Pseudobases, Steinitz and stable projective-class criteria. The new projective-to-lattice comparison identifies the determinant class with that existing Steinitz class. |
| ClassicalArithmeticCompletion §§1.14–1.15,1.33,1.43,1.52 | Local/archimedean norm-residue symbols, power-residue comparisons and global product formula. The first-argument Artin convention is explicitly transposed to BMS order; ramified higher-unit thresholds are targets here. |
| HeightsAndUnits §4.2 | Completed roadmap supplies S-unit rank/fundamental-system theorem; README:443 names `Set.unit_finrank_numberField`. The pin supplies ordinary-unit kernel and finite-generation transport, not that missing named theorem. |
| ClassFieldTheory Layers 7,11–14; Chebotarev Layers 9–10; GlobalNumberFields Layers 1–2,6–7 | Reciprocity/existence, prescribed prime classes and approximation are imported arithmetic inputs; higher-unit and two-prime refinements are stated in §11.1/§11.4 rather than attributed to a generic prime theorem. |
| GeneralizedCohomology G2.3–G2.10 | Concrete spectrum/group-completion interfaces and based path fibres. Mapping-path construction at README:534 retains actual paths and homotopy transport. |
| StableHomotopyKTheory §§2.4–2.10,3.29–3.30,4.25–4.26 | Connecting map at README:547; universal central extension at :1292; naturality at :1317; coherent Γ-model/Picard specialization at :1757/:1786. These retain scalar automorphisms and braiding, as Layer 14 needs. |
| EnhancedDerivedSheaves E0,E2.7,E3,E5 | Main E2.7 now exists (README:2375); sheaves of spaces and truncation are genuine supplier targets. Distinct hypercomplete/Postnikov-complete notions are not conflated by the first-truncation use. |
| ReductiveGroups Layers 0–1; RepresentationTheory/ClassicalGroups Layers 3–4 | Hopf/comodule and complex representation inputs, respectively. Arbitrary-characteristic integral representation comparison is assigned to SchemeKTheoryOperations §6.3, not inferred from complex highest weights. |
| OperatorTheory/PolarDecomposition PD-B21 | Main README:353 supplies existence of finite-dimensional unitary polar factorization. It does not supply a continuous SL-deformation; §8.4 correctly builds that additional comparison. |
| AdelicAlgebraicGroups AA.3.6 | Open-head README:3595–3610 gives fixed-K finite Siegel cover and finite overlaps. The enlargement/open-domain step is explicitly a target in §11.4. |
| ReductiveGroupsPartII RG2.2, sl2-tree | Main README:3648–3675 gives lattice vertices, adjacency, tree/action and two SL₂ vertex types. Arithmetic orbit/stabilizer comparisons remain §11.4 targets here. |
| ProfiniteArithmetic §2 | Automorphism/outer-action work is distinguished from the arithmetic congruence/metaplectic completion owned here; no missing classification is attributed to it. |
| GeneralAlgebraicKTheoryPartII, StableHomotopyKTheoryPartII, SchemeKTheoryOperationsPartII | Their readable open folders were included in the object search. They do not replace the cited low-degree owners or supply an upward prerequisite used here. |
| ArithmeticKTheory; K2SymbolsBrauerPartII; K3BlochGroups; BorelRegulators | Readable open work treats higher/arithmetic extensions and consumes these low-degree normalizations. No competing native name from this Suggested.lean was found. |
| SymplecticReidemeisterTorsionModSquares | README:9/:47 imports the graded determinant comparison from this roadmap; this is a consumer, not a supplier. |
| ModularCurvesPartII §15.3 | Its SL₂(ℤ[1/p]) congruence calculation is a later special case; this README now identifies it as a consumer. The move belongs downstream, as the previous review already specified. |
| EllipticKTheory | Its arithmetic/function-field direction is distinct; the searched open README:1331–1334 does not move the number-field low-degree owner upward. |

No supplier was moved. Shape was compared with main's GrothendieckEulerForms, AlgebraicVectorBundles and Completed/HeightsAndUnits; R04–R05 describe the differences.

## Not verifiable

- None of the 15 seeded source targets was inaccessible. Every cited work was fetched through the legal-source service; the Stacks tags were fetched as their official chapter PDFs. No missing-text request remains, and no source manifest was edited.
- The future higher K-space, metaplectic and graded-spectrum constructions cannot be tested by elaborating this 23-declaration file; only their stated hypotheses, sources, supplier interfaces and the displayed mathematical witnesses were checked. They are correctly listed as lacking carriers in the module docstring, except for the elementary rank-two CSP consequence in R01.
- The open-work ownership audit covers the readable folders supplied in the brief and their indexed contents. It is not a claim about unprovided private or unreadable work.

## Source issues

The roadmap avoids these false assertions; “affects” below describes the cited source.

- **Error** in weibel2013 at Example II.2.5.4, printed p. 74: the source says characteristic-zero k[G] has one simple factor per ordinary conjugacy class and K₀=ℤ^c; it should be stated over a splitting field; ℚ[C₃]=ℚ×ℚ(ζ₃) has K₀=ℤ², not ℤ³; affects a stated result.
- **Misprint** in weibel2013 at Proposition II.2.6, proof, printed p. 74: the source says the exterior-sum term is ΛⁱQ⊗ΛʲP while using P's rank to bound i; it should be ΛⁱP⊗ΛʲQ with i+j=m+n; affects the proof.
- **Error** in weibel2013 at Exercise II.2.2(b–c), printed p. 78: the source says both extension/restriction composites are multiplication by [A], with kernels annihilated by a power of the rank; it should be restricted to the base-ring composite; for k→k×k the other composite sends (1,0) to (1,1) and kills (1,−1); affects a stated result.
- **Error** in weibel2013 at III.1.2.4, printed p. 181: the source says the GLₙ(D)/Eₙ(D) identification has an exception at n=2,D=𝔽₂; it should be the finite commutator identification that has this exception; GL₂(𝔽₂)/E₂(𝔽₂)=1=𝔽₂ˣ; affects a stated result.
- **Error** in weibel2013 at Remark V.3.4.2, printed p. 387: the source says the doubled affine line has vector-bundle K₀=ℤ and G₀=ℤ²; it should be K₀=G₀=ℤ²; the line has the resolution property and Picard group ℤ; affects a stated result.
- **Error** in bms1967 at (A.23)(b), printed p. 90: the source says the power-residue extension exponent is determined by the extension degree and the two roots-of-unity orders; it should be determined by the norm on roots of unity; equal degree/order data can give different exponents; affects a stated result; corrected in print at serre1974, Theorem 1, printed pp. 241–242.
- **Error** in bms1967 at the proof of (A.23), printed p. 91: the source says the cyclotomic extension can be decomposed into steps each increasing the roots-of-unity order by a prime; it should be replaced by Serre's corrected proof; that decomposition need not exist; affects the proof; corrected in print at serre1974, §3, printed pp. 243–244.
