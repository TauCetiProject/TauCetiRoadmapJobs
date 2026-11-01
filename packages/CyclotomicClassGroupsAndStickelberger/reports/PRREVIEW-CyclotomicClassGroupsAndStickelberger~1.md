# Review of CyclotomicClassGroupsAndStickelberger (pull request #1260 at 9c9a49a)

**Verdict:** needs changes

## R01 (P1) — Replace the nonexistent completed-field supplier identifiers

**Location:** `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:74`, also line 721: “supplies `tate_H0_padicComplex_twist` and `tate_H1_padicComplex_twist`”.

**Claim:** These are named targets supplied by PadicPeriodRings §1.4.

**Witness:** `TauCetiRoadmap/PadicPeriodRings/README.md:203` names `tateSen_H0` and `tateSen_H1`; its `Suggested.lean:161` and line 170 declare them. Neither cited old identifier occurs in either supplier file.

**Repair:** Cite the existing `tateSen_H0` and `tateSen_H1`, with the finite-extension specialization of §1.4 and general-base version of §2, in both locations. Preserve continuous norm-topology coefficients. The replacement has the required values: for finite K/ℚ_p, the dimensions of H⁰ and H¹ are (1,1) at twist zero and (0,0) at twist one. It therefore supplies exactly the nonzero-twist input used by the local comparison. The mathematics is supplied; the broken identifiers, rather than a missing theorem, are the defect. P1 follows the brief's supplier-drift classification.

## R02 (P1) — Cite the actual general growth theorem

**Location:** `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:987`: “the supplier's `cyclotomicClassNumberGrowth` with conductor parameter m=1”.

**Claim:** IntegralIwasawaTheory provides that named native cyclotomic theorem and parameterization.

**Witness:** `TauCetiRoadmap/IntegralIwasawaTheory/Suggested.lean:144` instead declares `classNumberGrowth` on a Galois ℤ_p-extension and its fixed-field layers. Neither supplier file contains `cyclotomicClassNumberGrowth`.

**Repair:** Delete the assertion about that nonexistent declaration. Use the actual `classNumberGrowth` of §3.3 through the tower comparison already specified in §§7.1–7.3. Retain the explicit native-layer transport. Testing its indices gives conductors 3,9,27 at p=3 and 4,8,16 at p=2, with relative degrees 1,3,9 and 1,2,4 respectively. These are the layers of the stated growth theorem. This is another broken supplier reference, not a failure of Iwasawa's theorem.

## R03 (P3) — Correct the source version and page locators

**Location:** `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:80`, line 523, line 987 and references at lines 1088–1089.

**Claim:** Growth is Sharifi Theorem 3.2.13; the published Montgomery–Vaughan quadratic evaluation is Theorem 9.17 on p.286, and its inverse-pair results are on pp.273–274.

**Witness:** Sharifi line 2430 labels 3.2.13 a kernel lemma; line 2462 labels growth Theorem 3.2.14, p.82. Montgomery–Vaughan lines 233, 255 and 1229 place 9.5/9.7 on p.287 and 9.17 on p.300.

**Repair:** Use Sharifi Theorem 3.2.14, p.82, in the accessible 189-page version, or identify and cite the exact older version actually used. Use the published Chapter 9 locators: Theorems 9.5/9.7, p.287, and Theorem 9.17, p.300, with proof on pp.301–302. Distinguish any draft numbering explicitly. Hilbert Satz 148 begins at the end of printed p.393; give pp.393–397 rather than locating the entire theorem only from p.394. Rechecking these corrected locations finds the growth equation, signed Gauss evaluation and primary-radical argument described in the roadmap.

## R04 (P3) — Restore per-target dependencies and the README/Lean name contract

**Location:** `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:118`–133, representative examples: `cyclotomicClassModule`, `cyclotomicClassTensorEquiv`, `classAction_one`, `projector_mul_projector`. The same issue occurs throughout the README.

**Claim:** Own API identifiers are presented as backticked declarations, and layer-end dependency paragraphs stand in for individual target dependencies.

**Witness:** None of those four declarations is in the 320-line `Suggested.lean`. The README contains zero `*Needs:*` lines. For example, §4.3 mixes intersections, quotient construction, Frobenius bounds and residual lattices with different prerequisites.

**Repair:** Keep README-only API targets as prose, reserving backticked own declaration names for the eight definitions and 21 headline theorems actually in Lean. Add an itemized `*Needs:*` line to each target, naming the precise existing supplier section or earlier target used by its statement and route. Retain the existing mathematical APIs and discriminating examples; do not inflate Lean with API lemmas to satisfy the name convention. Also add the required layer comments and a docstring to the local instance in `Suggested.lean:44`. As a test, §0.1's action target should name the native class equivalence and scalar extension, whereas its Artin comparison additionally names the class-field supplier. The worker's passing scanner does not enforce all these prose requirements.

## Verified sound

This was a read-only review of the whole folder at the stated head. The PR's outside-folder diff is empty. The folder contains README.md, Suggested.lean and its roadmap metadata, with no source dump or stray artifact. The scope includes arbitrary conductors for Stickelberger, all positive prime-power levels, and a separate integral dyadic treatment. I found no route-specific prime restriction, computational algorithm, copied source passage, sorry-backed data, free conclusion predicate, or `set_option` in the reviewed files.

The worker's supplied gate is **passing**, including its targeted build, dependency, import, data, style and outside-folder checks. I independently built the missing `TauCeti.NumberTheory.ClassGroup.Equiv` object, then ran the targeted roadmap build and direct `lake env lean` elaboration. Both succeeded with only the 21 expected sorry warnings. No build was treated as a truth check.

The separate dependency check returned:

```text
depcheck: 205 roadmaps, 1466 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. No declared gap was available. The identifier defects R01–R02 are not detected by this graph check.

### Seeded source sample

All 15 seeded targets were checked against accessible source text, including hypotheses and the cited proof steps. No target explicitly marked a locator unverified. Of the 18 reference entries, 16 were accessible, including the ten cited AINTLIB source modules; Tate and Deligne–Rapoport remain uncertified as described below. Source identifiers below refer to the line-numbered extractions; page numbers are printed pages.

| Sample | Text inspected | Result and scope |
|---|---|---|
| 1.3 Hilbert 92 and the exact unit-cohomology count | Hilbert §56, Satz 92, p.275, line 53125; Milne-CFT VII Prop.3.1 and Lemmas 3.2, 3.4–3.5, pp.208–209, lines 9470–9563 | Prime-degree non-coboundary conclusion is supported. The exact cyclic count follows from the unit Herbrand quotient when no infinite place ramifies. The quadratic exception is retained. |
| 1.4 Invariant ideals and Hilbert 93 | Hilbert Satz 93, p.277, line 54138; Sharifi proof of Thm.1.3.16, pp.21–22, lines 587–598 | Orbit ideals give valuation residues modulo the ramification indices. Finite unramifiedness makes this quotient zero. This is not an assertion that every invariant ideal descends in a ramified extension. |
| 1.5 Capitulation cocycle | Sharifi Prop.1.3.6 and proof, pp.15–16, lines 403–417 | The direction is σ(α)/α. The kernel-to-H¹ injection is supported; the ramified image obstruction must remain. |
| 1.6 Exact capitulation | Hilbert §58, Satz 94, p.279, line 54858; preceding unit quotient and Sharifi Prop.1.3.6 | The stated order n[E_K:N E_L] follows for cyclic everywhere-unramified extensions. The roadmap does not claim a cyclic kernel. |
| 2.1 Rational element | Sharifi Def.4.5.1 and discussion, pp.113–114, lines 3581–3636 | Inverse basis, augmentation and integrality conventions agree; the m=1 boundary is separately treated. |
| 2.4 Gauss sums and descent | Sharifi Lemma 4.5.4 and Thm.4.5.6 proof, pp.115–117, lines 3646–3714; ClassicalArithmeticCompletion §§1.47, 1.55, 7.12 | The roadmap repairs the source's missing compatibility between the residue root and the primitive generator. Its nontrivial-character product uses q, not the source's ℓ. |
| 3.4 CM units/regulators/class numbers | Sharifi Lemma 4.2.17, Thm.4.2.20 and equation (4.2.2), pp.106–108, lines 3296–3398; Montgomery–Vaughan Thm.9.17, pp.300–302, lines 1229–1300 | Q=1 is restricted to CM prime-power fields. Primitive conductors, root-of-unity factor, regulator powers of two and Gauss phase agree. Locator correction R03 applies. |
| 4.2 Eisenstein congruence | Ribet Lemma 3.1, Cor.3.2, Thm.3.3, Props.3.4–3.6 and Thm.3.7, pp.156–159, lines 261–378; Deligne–Serre Lemma 6.11, p.522, lines 574–592 | Includes constant terms, a common prime for all eigenvalues, finite extension of the coefficient DVR, and passage from semicuspidal to cuspidal. Lifting eigenvalues does not promise to lift a chosen eigenvector. |
| 5.2 Primary radicals | Hilbert §126, Satz 148 and proof, pp.393–397, lines 103000–104638; §141 second proof, p.440, line 124470 | The local primary condition is strong enough; the pth-power case gives the trivial field, not a degree-p extension. |
| 6.1 Circular subgroup | Sharifi Def.4.3.1 and proof of Thm.4.3.3, pp.108–109, lines 3402–3426; IntegralIwasawaTheory §§1.1–1.3, 1.6 | The roadmap explicitly includes roots of unity, so conductor two gives {±1}. Real phases and their dyadic sign ambiguity are preserved. |
| 6.2 Distribution and CM comparison | Sharifi Thm.4.3.3 proof and Lemma 4.3.5, pp.109–110, lines 3427–3496; Lemma 4.2.17, p.106 | The displayed distribution identity is correct despite the source's wrong stride. Unit quotient comparison uses μ∩E⁺={±1}; it does not identify that quotient with a class group. |
| 6.4 Vandiver | Soulé, Introduction, p.1, lines 9–18; IntegralIwasawaTheory §7.4; Sharifi Thm.4.3.3 | Formulation and equivalences are conditional statements about a prime, with universal Vandiver only a conjecture. The converse “Vandiver implies regular” is not asserted. |
| 7.2 Artin/control | Sharifi Prop.3.2.6, Prop.3.2.11 and Remark 3.2.12, pp.79–81, lines 2369–2427 | Exact control requires the single totally ramified prime, not merely surjective norms. Maps and completed conjugation action agree with the supplier. |
| 8.2 Unramified quotient | Mazur I §2, pp.53–54, lines 1013–1056; Sharifi Cor.1.3.12, p.18 | Arithmetic conjugation and finite-level propagation support the all-level conclusion. Actual descent data and all finite places unramified are retained. |
| 8.3 Constant coefficients and two duals | Mazur equations (2.4)–(2.6), pp.50–51, lines 919–941, and equivariance pp.53–54 | Constant dual has exponent −i; the geometric μ_p-valued dual has exponent 1−i. The roadmap explicitly excludes substituting the nonétale μ_p group scheme at p. |

Additional source checks included Ribet–Stein Appendix Definition 5.13 and Theorem 5.14 (lines 3162–3194), the quotient and arbitrary-field Poincaré argument in Milne-AV2022 Proposition 12.1 (lines 755–784), and the actual AINTLIB hypotheses. In particular, AINTLIB Main line 26 states Kummer's criterion; Herbrand/Basic lines 72–92 require an explicit conditional bridge and do not construct the intrinsic class action; Bridge lines 265–275 and 344–349 have the bounded-index and exceptional-factor hypotheses described in §3.1. The roadmap correctly distinguishes that migration from its unrestricted targets.

### Pinned carriers and duplication audit

Pins inspected: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following file/line witnesses record the native objects used, rather than matching only proposed names.

| Pin file and line | Declarations / fact actually inspected |
|---|---|
| `Mathlib/NumberTheory/NumberField/Cyclotomic/Galois.lean:62` | `galEquivZMod_apply_of_pow_eq`: the automorphism acts by the indicated power, not its inverse. |
| `Mathlib/NumberTheory/NumberField/ClassNumber.lean:74` | `classNumber_eq_one_iff`, on the native integer ring. |
| `Mathlib/RingTheory/ClassGroup/ExtendedHom.lean:99` | `extendedHom_mk0`, and composition at line 114. |
| `TauCeti/NumberTheory/ClassGroup/Equiv.lean:165` | `mulEquivHom`; `mulEquiv_mk0` at line 197 fixes ideal covariance. |
| `TauCeti/RingTheory/ClassGroup/RelNorm.lean:143` | `relNorm`, its ideal computation at 151 and norm-after-extension at 166/174; finite torsion-free Dedekind extension hypotheses. |
| `TauCeti/RingTheory/Henselian/Teichmuller.lean:92` | `teichmuller`, `teichmuller_eq_iff` at 129, `eq_teichmuller` at 151; residue section and uniqueness hypotheses. |
| `TauCeti/NumberTheory/DirichletCharacter/GeneralizedBernoulli.lean:79` | Real finite-sum body evaluates the zero residue at N/N; maps at 99, conductor-one formula at 110, nontrivial weighted formula at 159/172. Thus B₁ at conductor one is +1/2. |
| `Mathlib/NumberTheory/NumberField/CMField.lean:306` | `unitsMulComplexConjInv`; Hasse index at 357, values at 372, regulator ratio at 438. These are existing general objects, not work to re-plan. |
| `Mathlib/RingTheory/RootsOfUnity/CyclotomicUnits.lean:61` | Associated-difference theorem and `geom_sum_isUnit` at 100; domain, primitive-root and coprimality assumptions. |
| `Mathlib/NumberTheory/Cyclotomic/PrimitiveRoots.lean:330` | `sub_one_norm_eq_eval_cyclotomic`; irreducibility and conductor hypotheses cannot be discarded. |
| `Mathlib/NumberTheory/NumberField/Units/Regulator.lean:142` | `regOfFamily`; family/index comparison at 361 includes torsion in the generated subgroup. |
| `Mathlib/NumberTheory/LSeries/DirichletContinuation.lean:283` | Primitive completed functional equation and its normalization. |
| `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:60` | Residue formula; right-hand limit at 77. |
| `TauCeti/Algebra/Module/Torsion/TateModule.lean:115` | Compatible torsion families; projection at 126, induced topology at 304, continuity at 319/390, surjectivity at 442, rank/freeness at 615/627/632/637. The carrier alone supplies neither geometric torsion counts nor a Galois action. |
| `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:116` and `MorphismGroup.lean` | Native variety dimension and additive reindexing of the Hom group. These do not already assert finite freeness of Hom or the arithmetic Frobenius theorem. |
| `TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean:84` | Nonzero good-index eigenform; `Newform` at 104 adds newness and a₁=1. All-index eigenform status is a theorem, not an extra bundled field. |

Ownership searches used `roadmaps grep` and `roadmaps show`, plus searches of the supplied main checkout, readable open heads and board packages, by objects: circular-unit intersection and regulator, class norm limit and control, abelian quotients/Hom/Tate/Rosati, finite-flat prolongation, Barsotti–Tate groups, and character cohomology. No duplicate fully qualified declaration of this roadmap was found in the checked owners.

Resolved supplier locations include:

- `Completed/GlobalNumberFields/README.md:531`, Layer 10: conductor-normalized cyclotomic ramification, splitting and arithmetic Frobenius.
- `Completed/NumberFieldArithmetic/README.md:1086`, Layer 4, and line 1798, §6.3: relative discriminants and different exponents; `Completed/LocalFieldsRamification`, Layers 0–4: the local comparisons.
- `TauCetiRoadmap/ClassFieldTheory/README.md:920`, Layer 5; line 1312, Layer 7; line 1552, Layer 10; line 1799, Layer 13: local duality/reciprocity, global unit quotients and class-field inputs. Main was used, not an open revision of this existing roadmap.
- `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:1657`, §1.47; line 1917, §1.55; line 14605, §7.12: Gauss powers, factorization and digit-sum valuation.
- `TauCetiRoadmap/ModularForms/README.md:259`, Layer 0; line 383, Layer 2; line 532, Layer 4; line 764, Layer 8: character, Hecke, newform and integral-coefficient inputs.
- `TauCetiRoadmap/ModularCurves/README.md:280`, §0B; line 345, §0C; line 1510, §7E: finite group schemes/quotients and finite connected–étale comparisons. Its elliptic p-divisible tower is not a general scheme-valued Barsotti–Tate construction.
- `TauCetiRoadmap/JacobianChallenge/README.md:332`, Layer E: duality, polarizations, cube/square and multiplication isogenies.
- IntegralHeckeAndGaloisDeterminants §1.4, classical oriented lattice target: distinct residual characters and irreducibility precede its application; it does not supply local splitting.
- IntegralIwasawaTheory §§1.1–1.6, 2.1, 2.3, 3.1–3.3 and 7.4: the circular subgroups, quotient comparison, norm limit, Artin map, one-prime control, growth and conditional Vandiver results. The present native-unit/tensor transports are distinguished from reconstructing those general objects. R02 concerns only the additional nonexistent identifier.
- PadicMeasuresIwasawaAlgebras §4.6, integral character algebra, and §5.2 at `README.md:3367`, compact Nakayama: compact **Hausdorff** continuous modules, not arbitrary abstract modules.
- PadicPeriodRings §§1.4 and 2: the cohomological input exists with the names in R01.

The shared general abelian and local constructions of §§4.3–4.4 are explicitly owned here before their listed later consumers AbelianSchemesAndArithmeticModuli, ModularCurvesPartII and FiniteFlatGroupsAndIntegralPadicHodgeTheory. Those downstream references were not treated as supplier edges. The main Jacobian and modular-curve packages supply the earlier geometry. This placement avoids taking the required general comparisons from a later roadmap; it does not authorize replanning the earlier generic Iwasawa or projector theory.

### Lean acceptance signatures and headline coverage

I appended `#check @name` for all **29 named declarations** to a scratch copy and elaborated it: eight definitions and 21 theorems. Their actual binder types retain the prime, nonzero modulus, positive level, CM/real, nontrivial-character and coefficient-section hypotheses used in their README statements. No section-variable loss was found. The local instance has its modulus and nonzero hypothesis explicitly. No PR file was changed.

The 21 declared headline theorems are: Hilbert 92; exact Hilbert 94; full Stickelberger annihilation; Bernoulli component annihilation; signed quadratic Gauss evaluation; prime-power Hasse unit index; abelian Gauss product; CM relative class-number product; real class-number/logarithm product; relative class-number bound; prime-level cuspidal eigenlift; finite-free abelian Hom bound; Herbrand–Ribet; Kummer criterion; Kummer unit lemma; regular prime-power class numbers; dyadic class numbers; real prime-power class numbers; circular-unit index; cyclotomic growth; all-level inverse-character vanishing.

The docstring additionally identifies the relative-unit/reflection comparisons, modular quotient and arithmetic Tate/endomorphism/Rosati/intersection constructions, general Barsotti–Tate and Hodge–Tate objects, arithmetic norm-limit comparisons, and equivariant class-field/number-ring torsor endpoints as unavailable at the pins. It supplies no fake replacement object. The statable numerical growth and Hom conclusions are nevertheless included. The universal Vandiver assertion is not made a Lean theorem.

For each of the 21 sorried theorems a scratch probe tried `simp` to completion, `rfl`, and `infer_instance`; none closed. Reading the native carriers and searched library results supplied no one-lemma `exact` proof of a headline. I found no padding declaration to delete. In particular, the all-level dyadic theorem is not merely the Gaussian base case, and the circular-unit theorem is about the actual subgroup, not a cardinality assumed in a record.

### Computed adversarial witnesses

The adversarial table has **147 rows**: 143 mathematical witnesses and four finding checks. The source audit has 15 sampled rows; the pin inventory has 16 file groups. The table separates numerical/algebraic testing from proof of the general theorems. “Pass” means the displayed instance and its negative control agree with the statement; it does not certify all instances. Finite sums, ring coefficients, matrices, residue powers and logarithmic examples were recomputed. In rows involving number fields, class numbers of the small fields are the usual Minkowski/Euclidean calculations. Tests on abstract modules are explicitly marked and are not claimed to be realized as cyclotomic class groups. Each row gives both the tested result and the comparison value.

| Statement | Instance and computed values: tested side; comparison side | Result | Change |
|---|---|---|---|
| Conventions / covariant class action (§0.1; Lean 49) | m=5: σ₂(ζ)=ζ², σ₃(ζ)=ζ³; their composite gives ζ⁶=ζ, while replacing σ₂ by its inverse gives ζ³≠ζ². | Pass | — |
| p-primary module (§0.1) | Abstract A=ℤ/25⊕ℤ/3, p=5: primary projection has order 25; ℤ₅⊗A has order 25, while ℚ₅⊗A=0. | Pass | — |
| p-adic scalar structure (§0.1) | In ℤ/25, scalar 1+5 sends 1 to 6; reduction only modulo 5 would send it to 1. | Pass | — |
| Action identity and composition (§0.1) | On an abstract ℤ/25 line with σ₂ acting by 18: σ₂² acts by 18²=24; the ω³ value at 4 is also −1=24. Identity acts by 1. | Pass | — |
| Scalar extension / naturality (§0.1) | Reduction ℤ/25→ℤ/5: 18·1 maps to 3; 3·(1 mod 5)=3. Over the zero coefficient ring both modules and maps are zero. | Pass | — |
| Artin covariance (§0.1) | For class [𝔮] and σ, arithmetic Frobenius transports to σFrob𝔮σ⁻¹; inverse transport would give σ⁻¹Frob𝔮σ. At the trivial class both maps give 1. | Pass on trivial arithmetic case; convention checked in supplier | — |
| Tame eigenspace definition (§0.2; Lean 59) | p=5, abstract ℤ/25, ω(2)=7: ω³(2)=18; 1 is in exponent 3, but exponent 1 would require 18=7, false. | Pass | — |
| Projector coefficients and orthogonality (§0.2) | Same line: (e₀,e₁,e₂,e₃) act by (0,0,0,1); their sum is 1 and pairwise products off the diagonal are 0. | Pass | — |
| Periodicity (§0.2) | 7⁴=1 mod 25; exponents −1,3,7 all act by 18. | Pass | — |
| Preserve wild action (§0.2) | On that line a commuting wild generator acts by 6; 6⁵=1 mod 25, but 6≠1. The tame projector e₃ keeps all 25 elements; wild invariants have only 5. | Pass | — |
| Direct sum and conjugation (§0.3) | Abstract two lines with exponents 0 and 3 over 𝔽₅: dimensions 1+1=2; conjugation is diag(1,−1), not the identity. Zero module has all component dimensions 0. | Pass | — |
| Norm then extension (§0.3) | Quadratic orbit basis x,y: jN(x)=x+y; Σg(x)=x+y. On a fixed base class z, Nj(z)=2z. For z of order 2 this is 0, not z. | Pass | — |
| Real/plus isomorphism (§0.4) | Abstract ℤ/5 with c=1: N=2, N/2=1; with c=−1, N=0 and plus=0, minus has order 5. | Pass | — |
| Dyadic anti-invariants (§0.4) | ℤ/2 with c=1: plus and anti-invariants both have order 2; their intersection has order 2, so a direct sum would incorrectly have order 4. | Pass | — |
| Dyadic minus quotient/comparison (§0.4) | ℤ/4, c=1: ker(1+c)={0,2}, quotient ℤ/4/2ℤ/4 has order 2; the natural map sends 2 to 0, with kernel and cokernel both killed by 2. | Pass | — |
| Principal ramified prime (§0.5) | m=8: N(1−ζ₈)=Φ₈(1)=2; m=4: Φ₄(1)=2. The conductor would give the wrong values 8 and 4. | Pass | — |
| Split-at-p quotient (§0.5) | At m=3,4,5 the prime class is 0; A/⟨0⟩=A=0. In a general abstract A=ℤ/5, quotienting by a nonzero prime class instead would give 0. | Pass | — |
| Relative-unit saturation (§1.1) | ℚ(√5)/ℚ: E={±φⁿ}, saturation of base units={±1}; quotient is ℤ, with no 2-torsion. Identity extension gives quotient 0. | Pass | — |
| Relative-unit rank and norm operator (§1.1) | Real quadratic: rank 1=(2−1)·1 and (1+σ) on quotient is 0; cyclic cubic over imaginary quadratic: rank 2=(3−1)·1. Imaginary quadratic over ℚ gives 0, not 1, and is excluded. | Pass | — |
| Relative residue dimension (§1.1) | Real quadratic quotient ℤ with σ=−1: quotient by 1−σ=2 has dimension 1 over 𝔽₂; predicted d=1. Rank-zero module has dimension 0. | Pass | — |
| Relative fundamental system (§1.2) | ℤ localized at 2: representative 3 is nonzero mod 2 and spans the residue, but its global ℤ-span has index 3. Thus residue basis does not assert global freeness/generation by these lifts. | Pass | — |
| Hilbert 92 (§1.3; Lean 70) | ℚ(√5)/ℚ: N(−1)=1; coboundaries are (−φ⁻²)ⁿ, none equals −1. Thus a norm-one non-coboundary exists. Identity degree 1 is not a prime-degree instance. | Pass | — |
| Exact unit H¹ count (§1.3) | ℚ(√5)/ℚ: H¹ order 2, unit norm index 1, n·index=2. ℚ(√3)/ℚ: H¹≅C₂×C₂ has order 4, norm index 2, n·index=4. | Pass | — |
| No infinite ramification (§1.3) | ℚ(i)/ℚ: H¹(E) has order 2, while n[Eℚ:N Eℚ(i)]=2·2=4. The missing real-place factor would be fatal; this extension is excluded. | Pass negative control | — |
| Invariant ideal residues (§1.4) | ℚ(√5)/ℚ: one ramified prime, e=2; its invariant prime has residue 1 mod 2, while an extended ideal has residue 0. Quotient order 2=∏e. | Pass | — |
| Hilbert 93 / discriminant (§1.4) | √5 field: prime 5 has e=2 and discriminant valuation 1; prime 3 has e=1 and discriminant valuation 0. | Pass | — |
| Capitulation cocycle and sign (§1.5) | For α=φ in ℚ(√5), σ(α)/α=−φ⁻²≈−0.381966; inverse cocycle is −φ²≈−2.618034; product=1. For a base generator α=2, the cocycle is 1. | Pass | — |
| Independence of ideal generator (§1.5) | Replace α by φα in ℚ(√5): cocycle multiplies by σφ/φ=−φ⁻², exactly the unit coboundary; its class changes by 0. | Pass | — |
| Capitulation image versus all H¹ (§1.5) | ℚ(√5)/ℚ: capitulation kernel has order 1, H¹ has order 2; the nonzero H¹ class maps to residue 1 mod 2, so the image kernel has order 1. | Pass | — |
| Exact Hilbert 94 (§1.6; Lean 82) | K=ℚ(√−5), L=ℚ(i,√5): h(K)=2, h(L)=1, degree 2, N(φ)=−1; capitulation order 2=2·[±1:±1]. Identity extension gives 1=1·1. | Pass | — |
| Genus/one-prime cyclic control (§1.7) | ℚ(ζ₉)/ℚ(ζ₃): both 3-primary groups are 0, so norm coinvariants and target have order 1. The sole inertia group maps isomorphically onto C₃. | Pass | — |
| One-prime p-group vanishing (§1.7) | Abstract p-group safeguard: Q₈ has abelianization C₂² of order 4, whereas the trivial group has abelianization order 1. A nontrivial p-group cannot be hidden behind zero abelianization. S₃ has order 6, outside a p-power degree hypothesis. | Pass | — |
| Rational θ definition (§2.1; Lean 91) | m=5, coefficients at [1],[2],[3],[4] are (1,3,2,4)/5; the inverse-basis witness at [2],[3] is (3/5,2/5), not (2/5,3/5). | Pass | — |
| θ augmentation/conjugation (§2.1) | m=5: augmentation 2=φ(5)/2; coefficients of (1+c)θ are all 1. m=2: θ=1/2 and 2θ=1. | Pass | — |
| θ boundary and character evaluation (§2.1) | m=1: residue representative 0 gives θ=0, not φ(1)/2=1/2. At m=3 odd χ, χ(θ)=(1−2)/3=−1/3=B₁,χ⁻¹. | Pass | — |
| Integral cast (§2.2; Lean 95) | Coefficients (2,−3) map from ℤ to ℚ as (2,−3); zero coefficients remain zero. This embedding has kernel 0. | Pass | — |
| Multiplier ideal J (§2.2) | m=3, x=2[c]−[1]: weighted residue sum 4−1=3≡0; xθ=[1]. For x=[1], residue 1≠0 and θ is not integral. | Pass | — |
| Integral Stickelberger ideal (§2.2; Lean 101) | m=2: J=2ℤ and θ=1/2, so I=ℤ. m=3: the preceding x yields 1∈I. Intersecting a rational span instead would lose the integral-multiplier condition. | Pass | — |
| Positive smoothing (§2.3) | m=5,b=2: coefficients (0,1,0,1) at [1],[2],[3],[4], equal to floor(2a/5) at [a⁻¹]; opposite sign gives (0,−1,0,−1). | Pass | — |
| Smoothing representative shift (§2.3) | m=5,b=6: [6]=1 but (6−1)θ=5θ has coefficients (1,3,2,4), not 0; s(1)=0. | Pass | — |
| Smoothing product law (§2.3) | b=d=2,m=5: s(4)=2s(2)+[2]s(2), both coefficient lists (0,2,1,3). | Pass | — |
| Compatible Gauss data (§2.4) | m=5,ℓ=11, residue ζ=3: c=2 has c⁻²=3; c=8 has c⁻²=5≠3. Only the first fixes the prime/character indexing used by the valuation formula. | Pass | — |
| Gauss valuation scale (§2.4) | Same data: b=1,2,3,4 gives valuations 2,4,6,8, i.e. 10·b/5. Paired b and 5−b sum to 10=v(11). | Pass | — |
| Gauss product including trivial character (§2.4) | Nontrivial quadratic over 𝔽₃: (−i√3)²=−3=χ(−1)·3. Over 𝔽₉ the quadratic product is 9, not 3. Trivial negative Gauss sum is 1, whose square is 1. | Pass | — |
| Gauss descent (§2.4) | m=5,b=2: under ζ₁₁↦ζ₁₁ᵗ, the ratio g²/σ₂g receives χ(t)⁻²/χ(t)⁻²=1. Its descended ideal exponent is s(2)=[2]+[4]. | Pass | — |
| Full annihilation (§2.5; Lean 115) | m=2,3,4,5: native class group has one element; every x∈I sends it to 1. m=3 additionally has 1∈I, forcing precisely this trivial class group. | Pass | — |
| Native Bernoulli boundary (§3.1) | Conductor 1: native B₁=+1/2, ordinary B₁=−1/2, raw residue sum=0. Nontrivial mod 3 and mod 4: −1/3 and −1/2 on both finite-sum sides. | Pass | — |
| Even nontrivial character (§3.1) | Quadratic χ mod 5: weighted sum 1−2−3+4=0, hence B₁,χ=0. Trivial conductor-one value is 1/2≠0 and is excluded. | Pass | — |
| Induction/Euler factors (§3.1) | Odd quadratic χ mod 3 inflated to 6: weighted sum (1−5)/6=−2/3; primitive −1/3 times (1−χ(2))=2 gives −2/3. Inflation to 9 gives −1/3, with no new factor. | Pass | — |
| Transitive induction (§3.1) | Same χ at modulus 21: χ(7)=1, so factor 1−χ(7)=0; direct and staged inflation both give 0. Repeating prime 7 adds no second factor. | Pass | — |
| Bernoulli generating function (§3.1) | Mod 3 χ: t(eᵗ−e²ᵗ)/(e³ᵗ−1)=−t/3+O(t²); coefficient −1/3=B₁,χ. Cancelled denominator constant is 3≠0. | Pass | — |
| Ordinary unrestricted congruence (§3.1) | p=5: B₂/2=1/12 and B₁₀/10=1/132; difference −5/66 has 5-adic valuation 1, although 5 divides index 10. | Pass | — |
| Teichmüller Bernoulli congruence (§3.1) | p=5,k=2: B₂/k=1/12≡3; the finite Teichmüller sum modulo 25 yields B₁,ω≡3 mod 5. | Pass | — |
| Exceptional Bernoulli factor (§3.1) | p=3,ω⁻¹ quadratic: B₁=−1/3, so pB₁=−1≡2 and −pB₁=1. B₁ itself has valuation −1. | Pass | — |
| Bernoulli annihilator (§3.2; Lean 128) | p=5,i=3: B₁,ω≡3 is a unit and A^(3)=0. p=3,i=1 fails the excluded-index condition, so the nonintegral −1/3 is never coerced as an integral annihilator. | Pass | — |
| Herbrand implication / exceptional exponent one (§3.2) | p=5: both odd components are 0; B₂ numerator is 1, so nonzero component cannot occur. p=3 exceptional smoothed scalar is a unit 1 and annihilates A^(1)=0. | Pass | — |
| Reflection coefficient extension (§3.3) | A one-dimensional kψ=𝔽₂₅ module has 𝔽₅-dimension 2. Its split k-dimension is 1; multiplying by [kψ:𝔽₅]=2 recovers 2, dividing would give 1/2. | Pass | — |
| Kummer dual/reflection twist (§3.3) | p=5, source exponent 3: scalar 3; μ₅-valued dual scalar 2·3⁻¹=4, exponent 2=1−3 mod 4. | Pass | — |
| Reflection inequalities (§3.3) | K₅: all class component ranks are 0; the even unit rank at exponent 2 is 1, so 0≤0≤1. χ=ω has trivial reflected unit rank 0 and δ=0 because the next cyclotomic step ramifies. | Pass | — |
| Hasse index (§3.4; Lean 148) | K₃,K₄: units are all roots of unity, Q=1. K₈: E=μ₈·⟨1+√2⟩, so Q=1. The non-CM field K₂ is excluded. | Pass | — |
| CM regulator ratio (§3.4) | K₄ has d=1, R/R⁺=1=2⁰/Q. K₈ has d=2, R/R⁺=2=2¹/Q. | Pass | — |
| Signed quadratic Gauss sum (§3.4; Lean 140) | Conductors 1,3,4,5,8 give respectively 1,i√3,2i,√5,2√2, agreeing with the positive-exponential sign and parity. Negative exponential conjugates the imaginary answers. | Pass | — |
| Abelian Gauss product (§3.4; Lean 157) | K₅: odd inverse pair contributes −5, quadratic contributes √5, trivial contributes 1; product −5√5=i²√125. For F=ℚ the product is 1=i⁰√1. | Pass | — |
| Relative class-number product (§3.4; Lean 170) | K₃: 1·6·(1/6)=1=h/h⁺. K₄: 1·4·(1/4)=1. K₅: odd B values (−3±i)/5 give product 1/10 after /4; Qw=10, result 1. | Pass | — |
| Real logarithmic product (§3.4; Lean 183) | ℚ(√5): −½Σχ(a)log(abs(1−ζ₅ᵃ))=0.4812118251; hR=log((1+√5)/2)=0.4812118251. For ℚ both sides are the empty product 1. | Pass | — |
| Relative determinant (§4.1) | p=5, representatives 1,2: B=[−3,1;−1,−3], determinant 10; (2p)^(d−1)h⁻=10. At p=3, determinant −1 has absolute value 1. | Pass | — |
| Row norm / class-number bound (§4.1; Lean 197) | p=5 row-square sum 10=5·4·3/6 and h⁻=1<5; p=3 sum 1=3·2·1/6 and h⁻=1<√3. | Pass | — |
| Irregular-index bound (§4.1) | p=5 has t=0<1; p=37 has one irregular index 32, hence t=1<9. B₃₂ numerator −7709321041217=−37·208360028141. | Pass | — |
| Eisenstein constant and first coefficient (§4.2) | p=5,k=2: −B₂/(2k)=−1/24≡1 mod 5 and a₁=1; irregularity is false, so this does not produce a cusp-form existence instance. | Pass | — |
| Irregular prime Hecke congruences (§4.2; Lean 207) | p=37,k=32: required a₂,a₃,a₅ residues are 23,31,25; ε(2),ε(3),ε(5)=11,10,27 and 1+ℓε(ℓ) gives the same values. Existence checked against Ribet Thm.3.7. | Pass numerical constraints; source supplies existence | — |
| Semicuspidal versus noncuspidal eigenvalues (§4.2) | p=37,k=32,ℓ=2: desired 1+2·11=23; other Eisenstein series gives 11+2=13. Difference 10≠0. | Pass | — |
| General eigencharacter lift (§4.2) | DVR ℤ₅, M=ℤ₅², T=diag(1,6): residual eigenvalue is 1; characteristic-zero lifts 1 and 6 both reduce to 1. The claim does not fix a chosen residual vector. | Pass | — |
| Normalization/newness (§4.2) | Weight-two level-one cusp space has dimension 0, so prime-level oldspace is 0. The required a₁ equals 1, excluding the zero form whose a₁ is 0. | Pass | — |
| Abelian quotient definition (§4.3) | B/0=B, B/B=0; dimensions g and 0. For diagonal E⊂E², complement antidiagonal has intersection E[2]; addition isogeny has degree 4 in characteristic 0, not 1. | Pass | — |
| Modular quotient by an ideal (§4.3) | I=0 leaves J; I=(1) kills J. A rational weight-two level-11 newform gives dimension 1=[ℚ:ℚ], not 2. | Pass | — |
| Geometric torsion/Tate realization (§4.3) | g=1,ℓ=3,n=2: torsion has 81=3⁴ points and Tate rank 2. g=0 or n=0 gives one torsion point; g=2 gives Tate rank 4. | Pass | — |
| Tate transition versus scalar map (§4.3) | ℤ/9→ℤ/3 transition is onto, image order 3; multiplication by 3 on ℤ₃ has cokernel ℤ/3 and is not onto. | Pass | — |
| Characteristic restriction (§4.3) | Supersingular elliptic curve in characteristic p: geometric p-adic Tate rank 0, scheme degree of [p] is p². Hence the prime-to-characteristic condition separates 0 from the claimed rank 2. | Pass | — |
| Coherent Euler polynomial (§4.3) | ℙ¹,O(n): χ=n+1 at n=−2,0,1 gives −1,1,2. Restricting to n≥0 would omit the negative-exponent test. | Pass | — |
| Numerical mixed intersection (§4.3) | ℙ¹×ℙ¹: χ(O(n,m))=(n+1)(m+1), mixed coefficient 1; self-intersections of O(1,0),O(0,1) are 0. Diagonal specialization has coefficient 1 but its second derivative is 2. | Pass | — |
| Intersection projection / dimension (§4.3) | Degree-two map ℙ¹→ℙ¹: pullback O(1) has degree 2=2·1. A point has empty intersection its residue degree; using one line-bundle factor on a point gives 0. | Pass | — |
| Endomorphism degree polynomial (§4.3) | Elliptic [2]: P(X)=(X−2)², P(3)=1=deg[1], P(2)=0=deg[0]. For dimension zero P=1. | Pass | — |
| Rational endomorphism scaling (§4.3) | Elliptic α=[1]/2: P=X²−X+1/4; 2⁻²P_[1](2X) has exactly those coefficients, which need not be integral. | Pass | — |
| End trace and product polynomial (§4.3) | Elliptic [2] trace 4; zero endomorphism trace 0. On E² with diag(1,2), P=(X−1)²(X−2)² and trace 6=2+4. | Pass | — |
| Finite-free Hom bound (§4.3; Lean 224) | Hom(0,E) has rank 0≤0; End of ordinary non-CM E/ℂ has rank 1≤4; supersingular End over an algebraic closure has rank 4=4. Noncommutativity in the last case is allowed. | Pass | — |
| Abelian Riemann–Roch (§4.3) | Elliptic line bundle degree d=−2,0,1: χ=d and deg φ=d²=4,0,1. On E² product principal polarization, D²=2, χ=2/2!=1, degree=1. | Pass | — |
| Rosati trace/intersection (§4.3) | Elliptic [n] and ample D degree 1: trace 2n²; intersection side 2·deg([n]*D)=2n². At n=0 both are 0, not strictly positive. | Pass | — |
| Rosati involution / positivity (§4.3) | On E² with product polarization, E₁₂†=E₂₁; Tr(E₁₂E₂₁)=2>0. Scalar [2] on E has trace product 8=2·2². | Pass | — |
| Frobenius bound (§4.3) | E:y²=x³+x over 𝔽₅ has 4 points; trace 5+1−4=2, P=X²−2X+5, roots 1±2i of absolute value √5. q=1 has no finite field instance. | Pass | — |
| Coefficient Tate factor (§4.3) | [E:ℚ]=2 gives full rational Tate dimension 4, coefficient rank 2; with ε(ℓ)=1, determinant is ℓ, while geometric Frobenius gives ℓ⁻¹. | Pass | — |
| Character classification / irreducibility test (§4.3) | If n₁+n₂=1 with integers and n₁≥n₂, then n₁≥1,n₂≤0. At ℓ=7 the lower bound 6 exceeds 2√7≈5.2915. At ℓ=5, 4<2√5, so a large-prime choice matters. | Pass | — |
| Oriented residual extension (§4.3) | Upper triangular matrices diag(1,b) conjugate the upper-right additive line by b⁻¹; b=3 mod 5 gives multiplier 2. Reversing the two characters would give 3. | Pass | — |
| Small-ramification full faithfulness (§4.4) | ℤ₅ has e=1<4. ℤ₅[ζ₅] has e=4, where generic C₅≅μ₅ but special fibers are reduced constant versus nonreduced connected. Strict bound distinguishes them. | Pass | — |
| Schematic closure (§4.4) | Trivial generic subgroup closes to rank 1; full subgroup closes to itself. The graph C_p→μ_p over ℤ_p[ζ_p] still has a flat closure although generic-fiber full faithfulness fails. | Pass | — |
| Lattice/isogeny comparison (§4.4) | Scalar lattice pT⊂T has index p^(2g); [p] has degree p^(2g). For g=1 this is p², and homothety preserves the rational rank 2. | Pass | — |
| Barsotti–Tate carrier (§4.4) | μ_(p∞): level ranks pⁿ, height 1; product with ℚ_p/ℤ_p has ranks p^(2n), height 2. Constant finite C_p cannot have both level ranks p and p². | Pass | — |
| Duality/dimension (§4.4) | μ_(p∞) and ℚ_p/ℤ_p have dimensions 1 and 0, heights 1; their dimensions sum to 1. Zero group has height/dimensions 0. | Pass | — |
| Hodge–Tate two conventions (§4.4) | μ_(p∞): covariant T⊗C=C(1), constant Hom=C(−1); étale ℚ_p/ℤ_p gives C(0) in both. Product gives weights {0,1} and {0,−1}. | Pass; primary source uncertified | — |
| Local algebraic character (§4.4) | L=ℚ_p, χ_p: Art(u) maps to u⁻¹ and weight is +1. Trivial or unramified character has weight 0. Nonintegral s∈ℤ_p gives exponent s∉ℤ, outside the locally algebraic condition. | Pass | — |
| Prime-level real local field (§4.4) | p=37: e=18<36; inertia cyclotomic image has order 2, and odd k−1=31 acts nontrivially by −1. At p=3 the allowed k interval is empty. | Pass | — |
| Local residual split (§4.4) | Over p=37 real local field, constant line character 1 and quotient inertia −1 differ; split image has order dividing 36, hence no subgroup of order 37. Full cyclotomic local field has e=36 and fails the bound. | Pass | — |
| Herbrand–Ribet (§4.5; Lean 233) | p=5,k=2: A^(−1)=0, hence nonzero-component proposition is false; 5∣num(B₂)=1 is also false. p=3 has no admissible k. At p=37,k=32 the exponent is −31≡5, not 31. | Pass | — |
| Unramified extension orientation (§4.5) | p=37,k=32: 1−k≡5 mod 36; χ^31 inverse is χ^5. Thus the upper-right Galois quotient has the class-component character required by Herbrand–Ribet. | Pass | — |
| Regularity definition / Kummer criterion (§5.1; Lean 242,246) | p=3: h=1 and empty Bernoulli range, so both sides true. p=5: h=1 and B₂ numerator 1, both true. p=37: B₃₂ numerator divisible by 37, so the regularity criterion is false. | Pass | — |
| Primary radical (§5.2) | p=3,v=1, λ=1−ζ₃: extension degree 1; p/λ²=−ζ₃² is a unit. Reduction of the polynomial is X³−X, with derivative −1, giving three separable factors. | Pass | — |
| Primary threshold (§5.2) | v=ζ₃ has v−1 of λ-valuation 1, not ≥3; its cube root gives K₉/K₃, ramified of degree 3. A nonunit λ similarly gives a ramified radical. | Pass negative controls | — |
| Kummer unit lemma (§5.3; Lean 253) | u=±1 at odd p: roots ±1, congruence holds. At p=3, ζ₃−a has a nonzero linear λ coefficient and cannot be divisible by 3∼λ²; weaker mod-λ congruence would wrongly admit it. | Pass | — |
| Primary quotient and invariant norm (§5.3) | For u=1+p b, σu=1+pσb: u−σu=p(b−σb), with b−σb divisible by λ, giving valuation ≥p. On invariant E/Eᵖ, norm scalar is p−1≡−1, a unit. | Pass | — |
| Regular prime-power stability (§5.4; Lean 263) | p=3,r=1,2: class numbers 1,1, so v₃=0,0; unique-prime cyclic descent gives the same zero primary groups. r=0 is excluded. | Pass | — |
| Dyadic all-level theorem (§5.4; Lean 270) | r=1,2,3: K₂=ℚ,K₄=ℚ(i),K₈ all have class number 1; 2 does not divide any. The K₄/K₂ step ramifies at infinity and is treated separately. | Pass | — |
| Real prime-power stability (§5.4; Lean 276) | K₈⁺=ℚ(√2) has h=1. Its 2-primary group is a quotient of A₂(K₈)=0, not an application of division by 2. K₃⁺=ℚ similarly gives 0. | Pass | — |
| Circular-number/unit intersection (§6.1; Lean 290) | m=2: ⟨−1,2⟩∩ℤ×={±1}, order 2. Omitting −1 yields {1}, order 1. m=8: 1−i has positive valuation and is not a unit. | Pass | — |
| Integral cyclotomic ratio (§6.1; Lean 283) | η(m,1)=1; η(m,−1)=−ζ⁻¹. At m=3, η(3,2)=1+ζ₃=−ζ₃². Nonunit residue a=0 would give 0 and is excluded. | Pass | — |
| Ratio inverse and Galois action (§6.1) | η(m,a)·σ_aη(m,a⁻¹)=1. At m=3,a=2, (1+ζ)(1+ζ²)=1; using no Galois action instead gives (1+ζ)²=ζ≠1. | Pass | — |
| Real phase (§6.1) | m=8,a=3,t=−1: real unit 1+√2≈2.41421356; t=−5 gives its negative. At m=5,a=2,t=2, value −(1+√5)/2≈−1.61803399. | Pass | — |
| Real generators/torsion (§6.1) | m=4 has an empty free generator list but real unit group {±1}; m=8 has one generator of norm −1, so demanding total positivity would produce a different subgroup. | Pass | — |
| Difference distribution (§6.2) | n=3,q=2,a=1: both sides 3/2−i√3/2; wrong stride jq gives 1−i√3. q=1 leaves exactly 1−ζ_nᵃ on both sides. | Pass | — |
| Full norm versus real norm (§6.2) | K₄/K₂: degree 2 and N(−1)=1; real subfields both ℚ, with real norm(−1)=−1. Full restriction is the square, as specified. | Pass | — |
| Dyadic norm sign (§6.2) | N(K₈⁺/ℚ)(1+√2)=−1; conductor-four a=3 phased generator equals +1. Forgetting phase would equate −1 with +1. | Pass | — |
| CM unit quotient (§6.2) | m=8: E=μ₈⟨1+√2⟩ and C=E, while E⁺=C⁺=±⟨1+√2⟩; both quotient orders are 1, with μ₈∩E⁺={±1}. | Pass | — |
| Circular regulator determinant (§6.3) | m=8: one-entry determinant absolute value log(1+√2)=0.8813735870; m=3,4: empty determinant 1. | Pass | — |
| Reduced determinant with zero trivial eigenvalue (§6.3) | Abstract C₂, f(1)=1,f(c)=−1: reduced entry f(1)−f(c)=2, nontrivial character sum 2; trivial sum 0. The identity gives 2 without dividing by 0. | Pass | — |
| Primitive logarithmic distribution (§6.3) | Even quadratic mod 8 inflated to 16: paired lifts a,a+8 yield log(abs(1−ζ₁₆ᵃ))+log(abs(1+ζ₁₆ᵃ))=log(abs(1−ζ₈ᵃ)). Thus the two sums agree with factor 1, not an extra Euler factor. | Pass | — |
| Circular index (§6.3; Lean 297) | m=2,3,4,8: [E:C]=1=h(K_m⁺). At m=8, omitting −1 on the real side gives index 2 while the log regulator is unchanged. | Pass | — |
| Vandiver at a prime (§6.4) | p=2,3: real class number 1, so predicate true. For abstract p=5 module with only an odd line, plus rank 0 and odd rank 1 distinguish Vandiver's pattern from regularity. | Pass | — |
| Unit quotient p-primary reformulation (§6.4) | Abstract quotient order 2 at p=5: p-primary subgroup has order 1, although the whole quotient is nontrivial. Orders 5 and 1 give p-primary orders 5 and 1. | Pass | — |
| Tower indexing/norm directions (§7.1) | p=3: conductors 3,9,27, degrees over base 1,3,9. p=2: conductors 4,8,16, degrees 1,2,4. Norms go 27→9 and 16→8. | Pass | — |
| Norm limit/Artin (§7.1–7.2) | Regular p=3 tower: every A_n=0, compatible norm limit X=0; corresponding unramified pro-3 Galois group is 0. Identity Artin class maps to identity. | Pass | — |
| Exact one-prime control (§7.2) | p=3,n=0: X/TX=0=A₃(K₃); p=2,n=1: X/((1+T)²−1)X=0=A₂(K₈). Inertia quotient has no extra prime contribution. | Pass | — |
| Compact Nakayama (§7.3) | X=Λ: X/(p,T) has p elements and X needs one generator. Discrete ℚ_p/ℤ_p has quotient by p equal 0 but is nonzero, so compactness cannot be omitted. | Pass | — |
| Torsion versus finite coinvariants (§7.3) | Free Λ has Γ_n-coinvariant ℤ_p-rank pⁿ, not finite; Λ/(T) has ℤ_p-rank 1 at every level. Both fail arithmetic finite-coinvariant hypotheses. | Pass | — |
| Growth (§7.3; Lean 305) | Regular p=3 and dyadic towers: valuation 0 equals 0·pⁿ+0·n+0. Abstract Λ/(p) has lengths 1,p,p²; formula μ=1,λ=0,ν=0 gives the same. | Pass | — |
| Linear growth test (§7.3) | Λ/(T−p), p=3 or 5, n=0,1,2: v_p((1+p)^(pⁿ)−1)=1,2,3; formula n+1 gives 1,2,3. | Pass | — |
| Base shift and generator change (§7.3) | Shift s=2 in μpⁿ+λn+ν: coefficients become (p²μ,λ,ν+2λ). For μ=λ=1,ν=0,p=3,n=1 both expressions give 30. Changing generator by a p-adic unit changes the control polynomial by a unit. | Pass | — |
| Inverse-character all levels (§8.1; Lean 314) | p=3,r=1,2 and p=5,r=1: primary modules and inverse components are 0. Modulo p−1, −1=1 at p=3, so the exceptional exponent-one argument is required. | Pass | — |
| Other low odd components (§8.1) | B₂,B₄,B₆,B₈,B₁₀ numerators are 1,−1,1,−1,5; the last possible p=5 reduces exponent −9 to −1. B₁₂=−691/2730 explains the excluded p=691 for exponent −11. | Pass | — |
| Universal inverse quotient (§8.2) | Abstract ℤ/25 with tame scalar 18 has inverse quotient order 25; scalar 7 gives relation (7−18)x=14x and quotient 0 because 14 is a unit. | Pass | — |
| Unramified-field endpoint (§8.2) | K₃,K₅: p-class group order 1 gives extension degree 1. K₉/K₃ has degree 3 but ramifies at 3, so it is not a counterexample. | Pass | — |
| Abelian hypothesis (§8.2) | Q₈ has order 8 and abelianization order 4; identifying its whole Galois group with a class-group quotient would conflate these values. The theorem only takes an abelian extension. | Pass | — |
| Constant étale comparison (§8.3) | K₅: A₅/p=0, Hom dimension 0 and constant H¹ dimension 0. For abstract one-line source over 𝔽₅, constant Hom has dimension 1 and inverse action. | Pass | — |
| Constant versus cyclotomic dual (§8.3) | ω(a)=2, source exponent 3 gives scalar 3; constant dual scalar 3⁻¹=2, μ₅ dual scalar 2·3⁻¹=4. Exponents are 1 and 2, respectively. | Pass | — |
| Hom character definition/API (§8.3) | Source/target scalars (3,1),(3,3),(1,2) give 2,1,2 respectively in 𝔽₅. Trivial coefficient group gives 1 in every case. Composition multiplies target scalars. | Pass | — |
| μ_p is not a constant étale replacement (§8.3) | In characteristic p, μ_p has coordinate ring k[t]/(t−1)^p, one geometric point and length p; constant C_p has p geometric points and reduced coordinate ring k^p. | Pass | — |
| R01 supplier replacement | Old Tate identifiers found: 0; actual H⁰/H¹ declarations found: 2. Twist-one dimensions 0,0, versus untwisted 1,1. | Citation fails; mathematical input passes | R01 |
| R02 growth replacement | Named cyclotomic declaration found: 0; general classNumberGrowth found: 1. Native first dyadic layer exponent is 2, not 1. | Citation fails; transport passes | R02 |
| R03 locator version | Sharifi growth number: cited 3.2.13, read 3.2.14; MV quadratic page: cited 286, read 300. | Fail | R03 |
| R04 declaration/dependency form | Four representative own names in Lean: 0 of 4; target-level Needs lines: 0. Eight definitions and 21 theorems are actually present. | Fail | R04 |

## Not verifiable

- **Tate, “p-Divisible Groups” (1967):** the sources service could resolve the DOI only to the paywalled Springer publication and recorded it as uncertified. I did not read the primary text of the cited finite-flat/formal-group/Hodge–Tate statements or certify their exact page numbers. I checked the displayed μ_(p∞), étale, product and height-zero specializations, the available PadicPeriodRings input, and Brian Conrad's accessible character comparison. These do not substitute for reading Tate's proof.
- **Deligne–Rapoport, Chapter V §3, Theorem 3.2 and Example 3.7(i):** the sources service could resolve only the paywalled Springer publication and recorded it as uncertified. Ribet §4(ii), p.159, explicitly invokes Example 3.7(i) with the real cyclotomic good-reduction conclusion (ribet lines 394–398); that secondary quotation supports the application but does not certify the primary construction or corrected-print pagination.
- The AINTLIB modules were read as formalized sources, including their hypotheses; this review did not rebuild that separate project or certify its complete imported axiom closure. No claim that its conditional Herbrand bridge already constructs the native class action was used.
- The computed rows are tests, not new proofs of the general arithmetic or geometric theorems. In particular the irregular modular form's existence is checked in Ribet, not produced by a numerical computation of its coefficients. No universal Vandiver claim was verified or assumed.

These are recorded limitations, not requests to park the review. Neither inaccessible reference occurs among the 15 seeded locator targets as their sole source.

## Source issues

- **Misprint** in sharifi at Theorem 4.4.2, printed p.111: the source says the exceptional radical uses μ(F); it should be μ(E), as in the proof's torsion term; affects a stated result.
- **Error** in sharifi at equation (4.4.1), printed p.112: the source says the split dimension is multiplied by the inverse residue degree; it should be multiplied by the residue degree; affects the proof.
- **Error** in sharifi at Lemma 4.5.5, printed p.115: the source says every character has Gauss-product factor ℓ; it should be χ(−1)q for nontrivial characters and 1 for the trivial character; affects a stated result.
- **Gap** in sharifi at proof of Theorem 4.5.6, printed pp.115–116: the source chooses an arbitrary primitive generator independently of the chosen prime; it should impose reciprocal residue compatibility or reindex the prime before computing valuations; affects the proof.
- **Misprint** in sharifi at proof of Theorem 4.3.3, printed p.109: the source says the distribution exponents are c+jk at conductor nk; it should be c+jn; affects the proof.
- **Error** in sharifi at proof of Lemma 4.3.4, printed p.110: the source says Φ_(p^k)(1)=p^k; it should be p, with the product over all prime-power divisors giving p^k; affects the proof.
- **Error** in sharifi at Lemma 4.3.5, printed p.110: the source gives an extra root-of-unity factor for ℓ not dividing m and admits m=1; it should give (1−ζ_m)/(1−ζ_m^(ℓ⁻¹)) for m>1, with m=1 separate; affects a stated result.

The corresponding extraction witnesses are sharifi lines 3534/3562, 3541–3545, 3658–3659, 3663–3668, 3428–3433, 3471–3477 and 3480–3496. For the last error, m=3,ℓ=2 gives the actual norm 1−ζ₆=−ζ₃, while the printed expression gives 1. None of these source mistakes was copied into the roadmap's tested formulas.
