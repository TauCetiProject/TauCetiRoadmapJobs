# Repair report: LogicAndDefinabilityInNumberTheoryPartII

The ten claims in REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2 were decided individually. Changes are confined to this package's README, acceptance signatures and source manifest, plus this report. No supplier files, layer numbering, merge order, metadata or design-plan ownership were changed.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R01 (P1) — applied

Replaced the field norm in §2.2 by the binary norm of the quadratic étale algebra, identifying it with the root field only when irreducible. The split alternative remains explicit. Added the four-dimensional split calculation and imported QuadraticFormInvariantsPartII §1.2 in scope and contracts. Evidence: direct norm calculation; dittmann_pop line 407–430.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R02 (P2) — applied

In §0.4, degree `e ≤ N` without nonconstancy → `1 ≤ e ≤ N` and irreducibility. Added rejection of `g = 1`, the zero-ring quotient, `N = 0`, and the accepted two-coordinate interpretation of ℚ(i). Consumers in §§3.3, 5.2 and 5.5 retain bounded root fields. Evidence: akns line 595–602; `(1)` gives the zero quotient.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R03 (P1) — applied

Changed the §0.14 singleton Check from the complement of §0.13 to the same subset. In ℚ(t), 0 has (dependent, constant) = (true, true), and t has (false, false). The theorem and Lean negated-independence predicate were already correct. Evidence: polynomial `X` at 0 and injectivity of evaluation at t; poonen_uniform line 511–542.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R04 (P3) — applied

Replaced the invalid ℚ negative control in §1.1 by ℚ(√5). The Hamilton class has real invariants (1/2, 1/2), while inertness of 2 gives local degree two and finite invariant `2 · 1/2 = 0`. Kept the ℚ calculation to explain why it cannot witness failure. Uses ClassFieldTheory Layer 10's local invariants and restriction law.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R05 (P3) — applied

Replaced √t₂ in the §2.7 Check by √(t₂ − 1) over ℚ(t₂). The point t₂ = 1 belongs to the torus and ramifies; away from it, 2y is invertible. The old cover is explicitly distinguished as everywhere étale on that torus in characteristic zero. Evidence: derivative calculation; dittmann_pop line 467–469.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R06 (P1) — applied

Replaced obsolete GF references on all 24 affected README lines: §1.1 for prolongations, §§1.2–1.3 for henselizations, §§5.1–5.2 for composition/coarsening, §5.3 for Abhyankar. Repaired scope, contracts, every Needs occurrence and layer dependencies. Verified the actual statements in packages/LocalFieldsRamificationPartII/README.md, including the specific uses in §§0.2, 3.7, 6.5 and 6.8.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R07 (P2) — applied

The unsupported arbitrary-variety attribution to WeilConjectures → SieveMethodsAndPrimePatterns §5.4. Added affine stratification and bounded-presentation fibre estimates in §0.11; updated scope, contracts, Needs and Layer 0 dependencies. WeilConjectures WC.5 §5.29 remains the curve input. Added counts 8 versus 12 for 𝔸¹×E and ℙ¹×E. Evidence: supplier's uniform theorem; poonen_uniform line 383–399.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R08 (P2) — applied

Added `exists_formula_arithmeticNormalization` on native transcendence-basis and integrality predicates, with the stated characteristic/dimension alternative. README §6.9 identifies the predicate with R_T, fixes both arity indices and binds auxiliary codes; §7.5 agrees. Added finite-field and inseparable Checks; extended the module's resolution caveat. Evidence: dittmann_pop line 700–713 and line 763–765. No substitute carrier or additional data definition was needed.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R09 (P2) — applied differently

Geometric Albanese descent → the ground-field universal rational Albanese torsor, with explicit polarized descent data and a separably closed maximal-morphism construction. Arbitrary inseparable geometric base change can fail (achter_casalaina_vial line 46–77), so the proposed unchanged geometric descent is too strong. Added the square-zero overlap Check, correct suppliers, and the regularity argument for §0.12. Evidence: wittenberg_albanese line 1030–1073.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~2/R10 (P2) — applied

Layer 7's source-following clause → the dependency explanation: bounded algebra interpretations and the dimension-one core give domain comparisons, then fraction presentations transfer them to fields. Target locators, layer order and mathematical content remain as stated. No other passage describes the roadmap's organization as following a source.

## Checks and gate failures

- `Suggested.lean` elaborated from the content checkout with the prescribed `lake env lean` command: exit 0, eight warnings that declarations use `sorry`, no errors or other warnings. Its only import is `Mathlib`; no targeted Tau Ceti build was required.
- A scratch copy with `#check @name` for every declaration elaborated separately: exit 0. All ten declarations were compared with the README, including both definitions, all eight headline theorems, and all nested quantified instances. No finiteness, domain, dimension or characteristic premise was lost.
- The worker's package text scanners (`gates.scan_folder` with configured gate options) returned `ok: true`, every count zero, including `statement-hygiene: 0` and `readme-ids-missing: 0`. The general content-layout CLI was not used as a substitute for this package text scan.
- The required dependency check returned exit 0 and exactly:

```text
depcheck: 236 roadmaps, 2154 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. No merge-order change is needed.

- `git diff --check`: exit 0.
- The source manifest parses: 18 distinct keys, 14 certified and four settled uncertified; no missing-source request remains. Wittenberg and Achter–Casalaina-Martin–Vial were fetched through the sources service. The existing `stacks` key was reused for tag 056V, retaining every previous locator.

All eight gate hits are repaired by explicit compatible-ring instance binders. `CompatibleRing` extends the ring-language structure and equates each language operation with the given ring operation; it imposes no restriction on the fields/rings, since `compatibleRingOfRing` supplies it. This is the pinned API's documented binder convention, Mathlib/ModelTheory/Algebra/Ring/Basic.lean:150–175, 223–238. The README Conventions and exact library contract explain the same semantics.

| Gate hit, original line | Declaration/site | Change |
|---|---|---|
| 55 | `exists_sentence_kroneckerDimension_eq` | Field K now has an explicit compatible-ring instance binder. |
| 65 | `exists_sentence_charZero`, characteristic-zero branch | Same binder, with Field.FG and the characteristic-zero premise retained. |
| 68 | `exists_sentence_charZero`, positive-characteristic branch | Same binder; this branch still quantifies over arbitrary fields, without Field.FG. |
| 77 | `exists_formula_isAlgebraic_primeField` | Same binder before the element quantifier. |
| 86 | `exists_formula_not_algebraicIndependent` | Same binder before the tuple quantifier; the negation remains. |
| 101 | `exists_formula_isGeometricPrimeDivisor` | Same binder; both the fibre condition and exhaustion remain. |
| 118 | `exists_sentence_realize_iff_nonempty_ringEquiv_of_isDomain` | Compatible-ring binder on S; CommRing and finite type remain. |
| 129 | `exists_sentence_realize_iff_nonempty_ringEquiv` | Compatible-ring binder on L; L has no resolution premise. |

The new normalization theorem uses the same instance convention. There are no `letI` or `haveI` constructions anywhere in the acceptance file.

## Source and ownership verification

Statements are expressed in this roadmap's own words. No source text was copied. The three main-branch shape examples read were TauCetiRoadmap/AlgebraicCurves/README.md, TauCetiRoadmap/GlobalQuadraticForms/README.md and Completed/RealAlgebraicGeometry/README.md.

| Repair/input | Exact evidence and mathematical boundary |
|---|---|
| Quadratic étale norm | QuadraticFormInvariantsPartII §1.2, binary norm roundness including split algebras. Directly, `N(x+yα)=x²−a₀y²` in odd characteristic, and `x²+xy+a₀y²` in characteristic two. The field norm is used only when the polynomial is irreducible. |
| Positive-degree algebra interpretation | akns line 595–602 supplies finite-algebra interpretation, not nontriviality. A monic degree-zero polynomial is 1; its quotient has one element. |
| Normalization uniformity | dittmann_pop line 763–765 permits T as variables with the formula fixed at d. Lines 700–713 distinguish arithmetic from geometric normalizations. In each characteristic A[T] is integral over the prime subring adjoined T, so transitivity proves equality of the two integral closures. |
| Arbitrary-field Albanese existence | wittenberg_albanese line 1030–1037 has no perfectness hypothesis; lines 1042–1069 supply the generating/maximal-morphism proof and dimension bound. Restricting its targets to abelian varieties keeps finite lifts abelian. Lines 1070–1073 descend from a separable closure after establishing that existence theorem. |
| Failure of unchanged geometric descent | achter_casalaina_vial line 46–77 gives the purely inseparable obstruction and isogeny comparison; lines 166–168 give ground-field Albanese data. The construction promises ground-field universality, not an algebraically closed universal object descending unchanged. |
| Smooth open for rational maps | stacks line 2112–2129 (Varieties, tag 056V) gives a dense smooth open for a geometrically reduced finite-type variety. AbelianSchemesAndArithmeticModuli §A1.8(1), properness at codimension-one points and descent extend rational maps on that open; extension to a torsor is checked after a finite separable trivialization and glued by uniqueness. |
| Separable point used in descent | TauCeti/AlgebraicGeometry/Morphisms/Smooth/SeparablePoint.lean:43–68, `AlgebraicGeometry.Scheme.Hom.exists_finite_isSeparable_comp_eq`: nonempty and smooth over any field, without perfectness. |
| Effective polarized descent | AlgebraicModuliForArithmeticGeometry §3.5, `ModuliDescent.polarizedDescentComparison`: proper finitely presented object, ample invertible sheaf, object cocycle and its specified line-bundle lift on the full fibre square. Valid for fppf covers, hence also inseparable finite field extensions when that datum exists. |
| Albanese consumers | In §0.9 the base is a number field. In §0.12 it is a relatively closed global subfield; positive-characteristic global fields have p-rank one, and a nonseparable finitely generated extension would contain a nontrivial purely inseparable algebraic element. Thus both uses admit geometrically integral models. Their no-elliptic-factor criterion uses only the ground-field Albanese. |
| Characteristic-zero pointed ownership | ColemanIntegrationPartII §4.0b, `NaturalIntegration.properAlbanese_exists`, already owns that case. It is imported in scope, contracts and §0.8a, rather than assigned here a second time. This package owns the unpointed/arbitrary-characteristic extension needed for its field arguments. |
| Nonprojective point counts | SieveMethodsAndPrimePatterns §5.4, `SieveLangWeil.lang_weil_uniform`: affine geometrically irreducible estimate and arbitrary-fibre upper bound with presentation-uniform constants. Affine strata are locally closed pieces represented by equations with an inverse coordinate. Smoothness fixes relative dimension at r−2, giving image size at least c₀Q². |
| Projective curve count | WeilConjectures WC.5 §5.29 is the curve RH input. Its §5.17 assumes smooth projective geometrically connected X and was not used for the open W. |

All new foundational inputs have existing owners. No new supplier gap is needed. The two existing gaps, `biinterpretation-homotopy` and `function-field-cyclic-hasse-norm`, remain exactly as declared in the README and the design plan's gaps list.

Cross-roadmap references were resolved against main, open heads or the supplied board packages, rather than against remembered numbering:

| Supplier | Sections read and resulting contract |
|---|---|
| LogicAndDefinabilityInNumberTheory | Board head 8d875d1, §§0.1–0.4: quotient interpretations, semantics, fraction pairs and arithmetic bridges. Its §0.2 does not yet state full homotopy/bi-interpretability; the existing named gap remains necessary. |
| LocalFieldsRamificationPartII | The supplied package §§1.1–1.3 and 5.1–5.3 have the precise normalization, henselization, composition, coarsening and Abhyankar statements. No GF mapping occurs in that package. |
| QuadraticFormInvariantsPartII | §§1.1–1.2, 1.5, 2.5, 3.1, 3.7–3.9, 4.1–4.3, 5.6–5.7, 6.3, 6.5, 7.2. The unit-form theorem applies beyond finitely generated fields; the cohomology distinguishes characteristic two. Its own older LocalFields GF citations were not edited. |
| AlgebraicModuliForArithmeticGeometry | §§3.5 and 7.5. The two ArithmeticCoefficients declarations exist at the open head, although the citation lead searched only pinned-library names. |
| AdicCoefficientsAndComparisonsPartII | §§PA.6.8 and PA.6.10: prime-to-ℓ and odd-degree regular alterations. No separability of the odd-degree extension is added. |
| ArithmeticGaloisDuality | §§R02.3.2 and R02.4.4: function-field class formation and cohomological dimension with real-place restrictions. The additional cyclic Hasse norm assertion stays an explicit supplier gap. |
| FunctionFieldArithmetic | §5.8: degree-sensitive Chebotarev with constant-field congruence; completely split places exist outside finite sets. |
| AbelianSchemesAndArithmeticModuli | §§A1.8, A3.1, A6.5: extension, isogenies, complete reducibility. |
| NeronModelsAndSemistableAbelianVarieties | §5.1: Néron–Ogg–Shafarevich and the resulting invariance of good reduction under isogeny. |
| SieveMethodsAndPrimePatterns; WeilConjectures | §5.4; WC.5 §§5.17 and 5.29, with the generality distinction recorded above. |
| LefschetzPencilsAndVanishingCycles | §§3.4–3.5: pencils and the finite-field/characteristic-two cases, with the smoothness and dimension premises retained. |
| DeligneWeightsAndPurity | §§7.12, 7.15: weights, compact support and proper smooth purity. |
| MotivesAndAlgebraicCycles; KTheoryFiniteLocalFields | §0.5b; §§3.0–3.0a: Gersten residues, norm-residue and motivic inputs with their characteristic regimes. |
| SchemeAndStackFoundations | §§0.12, 0.20, 2.15 on main: henselian, normalization and cohomological inputs. No Albanese descent claim is attributed to §2.15. |
| ClassicalAdicEtaleCohomology; AnalyticNumberTheoryPartI | §11.2 cohomological-dimension ascent; §0.21 Mertens estimate. |
| AlgebraicCurves | Layers 0, 2, 6, 12 on main: places, normal affine models, inseparable prolongations/fundamental equality and normal proper curves. |
| Chebotarev; GlobalNumberFields | Completed roadmaps: Layer 10; Layers 1 and 6, supplying splitting primes and approximation with the stated omitted places. |
| GlobalQuadraticForms; ClassFieldTheory | §5.5; Layers 10 and 13 on main: real places, Brauer invariants and number-field norm theorem. |
| RealAlgebraicGeometry; EllipticCurves; JacobianChallenge | Completed RealAlgebraicGeometry Layer 1; EllipticCurves Layers 1, 3–6; JacobianChallenge Layer F, including the pointed rather than unpointed Jacobian universal property. |

The citation resolver's remaining two leads are not missing suppliers: the LocalFields package is supplied locally, and the base logic roadmap is the listed board package at 8d875d1. Its earlier API matches the consumed sections. The open-roadmap vocabulary neighbours QuadraticFormInvariantsPartII, AdicCoefficientsAndComparisonsPartII, HeightsRationalPointsAndObstructions, EtaleDualityAndPerverseSheavesPartII and AnabelianGeometryAndNonabelianChabauty were compared by scope. They own forms, alterations, heights, étale coefficients and nonabelian paths, respectively; none supplies the arbitrary-field rational Albanese extension or the uniform arithmetic normalization headline. A search by Albanese object also located ColemanIntegrationPartII's narrower existing ownership, now explicitly imported. The supplied overlap report lists no dropped ids or competing modification of this package. No package id or existing Lean name was dropped.

Pinned API comparisons used Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`, the content manifest's pins. The library-near-match leads were checked by object: `ringKrullDim_eq_zero_of_field` measures ring Krull dimension, which is 0 for ℚ, whereas δ(ℚ)=1; `NumberField.isAlgebraic` and algebraic/integral finite-module lemmas do not produce uniform first-order formulas; `FirstOrder.Ring.mvPolynomial_zeroLocus_definable` defines the zero locus of a fixed finite polynomial set, rather than the elements integral over a varying polynomial subring with no degree bound. The latter appears at Mathlib/ModelTheory/Algebra/Ring/Definability.lean:28–44. Native `IsTranscendenceBasis` is maximal algebraic independence (Mathlib/RingTheory/AlgebraicIndependent/Defs.lean:173); `IsIntegral` tests a monic polynomial, and does not mean merely algebraic over a subring. None of these already proves the new normalization headline. No duplicate public name was introduced.

## Adversarial mathematics pass

These are mathematical calculations, not consequences of admitting the statements in Lean. The tables test positive and negative directions, empty objects, characteristic two, imperfect fields, strict inequalities, split algebras and nontriviality. The field-valued constructions exclude the zero ring by their field hypotheses; §0.4 now enforces that exclusion inside its interpretation as well. The changed source locators and descent inputs were checked at the generality in which they are used.

| Statement/convention | Instances tried | Computed values on the two sides | Result/change |
|---|---|---|---|
| Field generation versus ring generation | ℚ, 𝔽₄ | Empty field-generator tuple gives ℚ; the ring generated by 1 is ℤ. A generator of 𝔽₄ gives a finite ring and field. | Field.FG retained; no finite-type ring substitution. |
| Kronecker shift / §0.1 / `kroneckerDimension` | ℚ, 𝔽₉, ℚ(s,t), 𝔽₂(s,t,u) | trdeg plus shift: 0+1=1, 0+0=0, 2+1=3, 3+0=3. | Same native cardinal definition. |
| Constant-field convention | ℚ(√2,t), 𝔽₉(t) | Relative algebraic closures are ℚ(√2), 𝔽₉; t is transcendental in both. | Constants are not necessarily the prime field. |
| H_d and resolution | 𝔽₂(s,t,u), 𝔽₂(s,t,u,v) | Dimensions 3 and 4; resolution-premise trigger false and true. For the displayed rational fields ℙ³ and ℙ⁴ exist. | General dimension-four fields still require RS; no rational-example shortcut. |
| Valuation zero convention | t-adic, x=0,1,t | Additive values ∞,0,1; native integer ord values 0,0,1. | Explicit zero branch retained wherever needed. |
| Pfister sign convention | a=−1, a=1 over ℚ | Minus convention gives x²+y² versus x²−y²; at (1,1), values 2 versus 0. | Split and anisotropic witnesses use the stated convention. |
| Characteristic-two last factor | a₀=1 over 𝔽₂ | Values at (1,0),(0,1),(1,1) are 1,1,1; only (0,0) has value 0. | Quadratic last factor retained, not a diagonal square form. |
| Diagonal degree convention | characteristic 2, degree 2 versus 3 | x²+t y² has new zero (√t,1); 1+t·0=1 for (1,0). Degree choice is 3 in characteristic 2, 2 otherwise. | Inseparable quadratic counterexample stays excluded. |
| Formula compatibility / all changed instance binders | ℚ and 𝔽₂, term 1+1 | Ring and language values agree: 2=2 in ℚ, 0=0 in 𝔽₂. | Explicit CompatibleRing binders preserve interpretation. |
| Uniform-family conventions / §0.3 | false and true guards | False guard gives ∅; true guard gives original fibre. Empty intersection=K, empty union=∅. | No K-valued failed fibre. |
| Interpretation convention | fraction pairs (1,2),(2,4) | Cross-products 1·4=2·2=4; represented fraction 1/2 in both. | Quotients, not chosen representatives. |
| Universe convention | a finitely generated field in a larger universe | A finite generator tuple is still finite, with the same arithmetic and transcendence degree. | One-universe quantification contains an isomorphic copy. |
| §0.2 / `IsGeometricPrimeDivisor` | ℤ_(p)⊆ℚ; t-adic on ℚ(t), 𝔽₂(t); trivial ring | Residue/field dimensions: 0+1=1, 1+1=2, 0+1=1. First changes characteristic, next two do not. Trivial ring is a field, not a DVR. | Characteristic and discreteness clauses both necessary. |
| §0.2 dimension-drop negative control | Arc valuation on ℚ(s,t) | Residue δ=1, expected divisor δ=2; 1+1≠3. | Discrete rank one alone insufficient. |
| §0.4 positive-degree interpretation | h=X²+1 over ℚ, g=1 or h | Degree 0 gives quotient size 1 with 0=1; degree 2 gives ℚ(i), dimension 2 and 0≠1. | Repaired lower degree bound. |
| §0.4 zero bound and split/repeated roots | N=0; X²−X; (X−1/2)² | Monic degree-zero h=1 has no root/factor; selected linear factors give K, while whole quotients are K×K or nonreduced. | No zero-ring or nonfield quotient is interpreted. |
| §0.4 composita | ℚ(i,√−2), ℚ(i,√−4) | Degrees 4 and 2, both ≤2²=4. | Bound rather than degree equality. |
| §0.5 formal coordinates | 𝔸¹ at 0; node; t²=s over 𝔽₂(s) | 1/(1−t)=1+t+t²+⋯; node has two formal branches, not one parameter ring. A coefficient root α of s cannot lie in the completion over k: (t−α)²=t²−s would have odd uniformizer order 1. | Smooth/separable hypotheses retained. |
| §0.6(a), descent | split quadratic form; x³−2y³ over ℚ | x²−y² has (1,1) already; x³−2y³ has no nontrivial rational zero, nor one over a quadratic field since ∛2 has degree 3. | No even-degree quadratic descent assertion. |
| §0.6(b), inseparable descent | x²+t y² over 𝔽₂(t) | No base-field nonzero zero; over 𝔽₂(√t), (√t,1) gives t+t=0. | Explains exclusion of degree 2 in characteristic 2. |
| §0.6(c), dimension bound | 𝔽_q(t), nonsquare c; ℚ with positive plus slots | Binary residue x²−cy² has no nonzero zero; its t-tensor is anisotropic. Over ℚ, 8⟨1⟩ is positive definite. | Strict variable bound and √−1 premise retained. |
| §0.6(d–e), iterated parameter test | unit residue vector and t parameter | Summand values are 0 mod n and 1 mod n for degree 2; a least-value term cannot cancel. For two parameters their value vectors are (1,0),(0,1). | Independent parameters and anisotropic residue required. |
| §0.7(1–4), global arithmetic | ℚ and 𝔽₂(t) | Intersecting ℤ_(p) gives ℤ; the constant field of 𝔽₂(t) is 𝔽₂; number-field sentence true versus false. | Both global-field types covered. |
| §0.7(5–6), polynomial codes | x=t or 1/t; characteristic 2 digit codes | Rings are 𝔽₂[t] or 𝔽₂[1/t]. Empty digit sequence gives exponent product 1 and polynomial 0; exponent 2 gives constant polynomial 1. | Distinguished parameter and shifted exponent encoding retained. |
| §0.8 / dimension sentence | σ₀ and σ₁ on 𝔽₄, ℚ, ℚ(t) | Dimensions 0,1,2; σ₀ truth values true,false,false; σ₁ false,true,false. | Same quantifier order and FG premise. |
| §0.8a universal rational Albanese | ℙⁿ, pointed curve, E | Abelian targets are 0, Jac(C), E; identity on E induces identity, hence nonzero. | Ground-field torsor and no-factor criterion agree. |
| §0.8a purely inseparable overlap | L=𝔽₂(s), α²=s | L′⊗L L′=L′[ε]/ε²; α⊗1 and 1⊗α differ by ε≠0, but ε²=s−s=0. Galois orbit of α is a singleton. | Repaired descent detects the missing overlap. |
| §0.8a line-bundle cocycle | finite Galois group, g,h, identity | Factor relabeling gives g(h(i))=(gh)(i), identity sends i to i. Tensor norm is ample, with an actual lift rather than an isomorphism class. | Inputs of polarized descent are supplied. |
| §0.8a universal morphism versus geometric comparison | Raynaud's purely inseparable Weil-restriction example | Geometric Albanese is A; ground-field Albanese is the L′/L-image of A; comparisons can be nonisomorphic but purely inseparable isogenies. | Deleted false unchanged-descent claim. |
| §0.9(a), elliptic constant points | V=ℙ¹ over ℚ, E:y²=x³−2 | Alb=0; point (3,5) satisfies 25=27−2 and is nontorsion. E(ℚ(t))=E(ℚ). | Nonconstant maps excluded by the ground-field criterion. |
| §0.9(b), p-adic closure | nonzero subgroup element a in formal ℤ_p | Closure of aℤ is aℤ_p, of finite index p^{v_p(a)}, rather than {0}. | Infinite-subgroup premise excludes the zero subgroup. |
| §0.10(a–d), characteristic-zero constants | ℚ(t), 𝔽₃(t), positive-definite plus form over ℚ | C₀ gives ℚ and ∅; all-positive rank-eight form has no nonzero zero at the real place. | √−1 premise remains in the isotropy test. |
| §0.10(e) / characteristic sentence | ℚ, characteristic 2, characteristic 3 | ℤ/2ℤ has size 2 so ℤ≠2ℤ; 2≠0 fails in char 2; in char 3, s=2(2s), so every additively closed Z equals 2Z. | Positive-characteristic branch needs no FG hypothesis. |
| §0.11(a), ordinary elliptic counts | E:y²+xy=x³+1 over 𝔽₂, extension exponents 1,3,5 | Counts 4,4,44; quotient counts 1 and 11; Ψ(1)=0, Ψ(11)=1/11. | Prime exponents and ordinary premise retained. |
| §0.11(b), generator probability | Same E over 𝔽₃₂ | Quotient group has prime order 11, hence 10/11 of its points generate; lower bound is 1−2/11=9/11. | Lower bound, not an equality claim. |
| §0.11(c), ordinary versus supersingular | Displayed E and y²+y=x³ over 𝔽₂ | Counts 4 and 3; traces −1 and 0; first ordinary, second supersingular. | Supersingular curve excluded from module assertion. |
| §0.11(d), z-sum witness | Displayed ordinary E/𝔽₂ | At (1,0),(1,1), z=0,1; sums contain 0 and 1, exactly 𝔽₂. | Pole exclusions explicit. |
| §0.11(e), nonprojective counts | W=𝔸¹×E versus ℙ¹×E over 𝔽₂ | 2·4=8 versus 3·4=12; the four missing points lie at infinity. | Affine Lang–Weil supplier replaces projective attribution. |
| §0.11(e), fibre bounds and actual pair | π=id on 𝔸¹×E; Q=(1,0), w=(0,Q) over 𝔽₃₂ | Each nonempty fibre has 1 point (dimension 0); π₁(w)=0=z(Q)+z(Q). Empty fibre has 0. | Both image and good-pair conditions nonvacuous. |
| §0.12, regularity over a global base | L=𝔽₂(s), K=𝔽₂(s,t); rejected K containing √s | L^{1/2} has degree 2; tensor in first case remains a field, whereas adjoining √s produces a repeated-root algebra and destroys relative closedness. | Geometrically integral model input justified. |
| §0.12, twist and relatively closed family | L=𝔽₂(s)⊆𝔽₂(s,t), versus 𝔽₂(s²) | First is relatively closed; second omits s although s² lies in it and s is algebraic of degree 2. | Nonclosed subfields excluded. |
| §0.13 / uniform constant formula | 𝔽₉, 𝔽₉(t), ℚ(t) | Defined sets 𝔽₉, 𝔽₉, ℚ. Empty family in the first case intersects to all 𝔽₉. | Finite fields included. |
| §0.14(a), relative dependence | (s,s²), (s,t) over ℚ | Polynomial Y−X² vanishes on first; evaluation on independent s,t is injective. | Dependence truth values true,false. |
| §0.14(b) / absolute dependence formula | n=0; singleton 0,t in ℚ(t); positive tuples over finite fields | Empty independent=true, hence formula=false. At 0,t dependence/constant pairs are (true,true),(false,false). All nonempty finite-field tuples dependent. | Repaired subset reversal; Lean predicate unchanged. |
| §0.15, maximal global subfields | ℚ(s,t), 𝔽₂(s,t), 𝔽₉ | Sole number-field member ℚ; 𝔽₂(s) admitted, 𝔽₂(s²) rejected; finite field has no global member. | Guarded family retains all intended members. |
| §0.16, relative constants | u=s, t₂=s²−s in ℚ(s,t) and characteristic 2 | u solves X²−X−t₂; derivative 2s−1≠0 in char 0 and −1=1 in char 2. Relative closures both give k₁(s). | Separability and closure equality retained. |
| §1.1, residues and real detection | Hamilton class over ℚ, then ℚ(√5) | Original invariants at 2,∞ are 1/2,1/2. After extension: finite 0, real 1/2,1/2, whose sum is 0 mod ℤ. | Corrected negative control. |
| §1.1, odd-degree restriction | 2-torsion class and degrees 3,2 | Corestriction of restriction multiplies by 3≡1 or 2≡0 mod 2; Hamilton class vanishes over ℚ(i). | Odd degree is essential. |
| §1.2, relative Hasse principle | K=ℚ; K=ℚ(x), class (−1)³ | First degree is 2. In second, finite local H³=0, real restriction nonzero (8 positive squares). | All places and degree d+1 retained. |
| §1.3, Kerz–Saito | finite odd-field curve; henselian DVR itself | d=1, degree 2; in DVR case henselization fraction field equals K, so restriction is identity. At residue char 2 coefficient 2 is not invertible. | Non-dyadic premise retained. |
| §1.4, characteristic-two Hasse principle | 𝔽₄, 𝔽₂(s,t,u) | d=0 has H¹ size 2, empty residue target size 1; d=3 has projective model ℙ³ and degree 4. | Positive-d restriction and threefold resolution input retained. |
| §1.5, Kato coefficient condition | char 2 with n=3 or 2 | 3 is invertible, 2=0; μ₆=μ₃ in characteristic 2. | Cubic branch retained. |
| §1.6(a), norm test | n=2, a=1; a=−1,b=−1 over ℚ | Split field-root norm is identity, all units norms; −1 is not a norm from ℚ(i) since x²+y²≥0. Cup class 0 versus nonzero. | Field norm criterion valid even for degree 1. |
| §1.6(b–d), reduced norms and formulas | Hamilton quaternion, c=1 or −1 over ℚ | Norm of 1 is 1, represented; −1 is not a sum of four rational squares. Triple symbols vanish versus are nonzero at ℝ. | Division/nonzero guards and all-place obstruction retained. |
| §2.1, niceness and presentation dependence | Tails (21,−1),(7/3,−1) over ℚ | 21/(7/3)=9, hence isometric; v₃ values 1 and −1; 21≡1 mod 4 is a 2-adic norm. | First nice, second fails the pole trigger; presentation matters. |
| §2.2, split binary norm | ℚ, a₀=1,a₁=2 | N(u,v)=uv; tail dimension 4; value at (1,0,0,0) is 0. Field E=ℚ would give dimension 2. | Repaired algebra/field confusion. |
| §2.2, nonsplit norm | ℚ₃(i), a₁=3 or 2; 𝔽₄((t)), a₁=t | Norm valuations are even. v₃(3)=1 and v_t(t)=1 reject; 2=N(1+i) accepts. | Both directions of isotropy test agree. |
| §2.3, approximation and controlled poles | Number-field integer a₁; function-field t | Number-field integer has no finite poles. On 𝔽_q(t), ord₀(t)=1, ord∞(t)=−1. | Function-field pole must be assigned a split place. |
| §2.4, anisotropic nice tail | a₀=3,a₁=145, Σ={2}, v₁=5 | 145=5·29, v₅=1; 3 nonsquare mod 5; 145≡1 mod 72, square at 2 and 3. | Nonsplit residue/odd value gives anisotropy; required triggers split. |
| §2.5, separating divisor parameters | r-adic on 𝔽_p(s,t,r) | Residue 𝔽_p(s,t); basis (s,t) gives separable degree 1, (s,t^p) gives inseparable degree p. | Separating premise retained. |
| §2.6, test-presentation unit condition | v(a₁)=1, v(ε₂)=0 or 1; d=3 | First passes, second fails; number of middle slots 3−2=1. | Units and nonempty middle tuple verified. |
| §2.7, torus specialization | y²=t₂−1 over ℚ | At t₂=1, y=0 and derivative=0; away from 1, 2y is a unit. For y²=t₂, both y and derivative are units everywhere on torus. | Corrected ramification witness. |
| §2.8, odd-valued detector | Discrete values w(a_d)=1,−1,2 | First two are odd modulo 2; 2 becomes 0 modulo 2 after square scaling. | Negative odd values allowed; even values excluded. |
| §3.1, detection via odd alteration | Degree 1,3,2 on 2-torsion | Multipliers 1,1,0 modulo 2. | Identity/odd alteration preserve class, even one may kill it. |
| §3.2, parity | Lower unit values 0 and top value r | Residue unit form case r even gives zero mod-2 value obstruction; r odd gives the required nonzero parity. | Top parity asserted only after lower slots made units. |
| §3.3, root fields | τ=0; constant −1/4 over ℚ; t over 𝔽₂(t) | β-polynomial X(X−1), degree-1 root field; repeated root 1/2, degree 1; X²+X+t separable irreducible, degree 2. | No split/nonreduced algebra substituted for a root field. |
| §3.4, lower slots | u pole, a_i=u²−u−ε_i | For w(u)=−1,w(ε)=0: w(u²)=−2 and w(u),w(ε) are −1,0; factor is u² times principal unit. | Shape u²−u essential. |
| §3.5, domination | N=1, lower values 0,1 | Bound ≥2Σ lower=2; if a lower value is positive then top≥2>1; if all lower values are 0, anisotropy forces top>0. | Strict inequalities justified in both cases. |
| §3.6, compact detector | Lexicographic w(y)=(1,0), w(x)=(0,1) | (1,0)>N(0,1)=(0,N) for every positive N. | Limit can have rank 2; no rank-one compactness claim. |
| §3.7, coarsening prime | Same lexicographic values, a_d=y | Nw(x)=(0,N) never dominates (1,0); w(y) does at N=1. Thus x∉𝔭, y∈𝔭; coarse values 0,1. | Localizing kills lower value while preserving top. |
| §3.8, refined divisor | Lower values 0, top positive odd | Coarsened lower values stay 0; top 1,3,… remains positive and odd, residue dimension drops by one. | All-N hypothesis retained; no finite-N substitute. |
| §4.1, anisotropy set | Isotropic q; singleton detector with top value 1 | First gives ∅; second gives {0}∪{τ:w(τ)≥1}=𝔪. | Zero included only in nonempty anisotropy set. |
| §4.2, stabilizers | ∅,K,{1},ℤ⊆ℚ | Stabilizers K,K,{1},ℤ. Equality xℤ=ℤ gives {±1}, a different set. | Inclusion convention retained. |
| §4.3, finite support | a_d constant or t on κ(t) | Constant has 0 zeros, so V=∅; t has a single zero at 0, pole at ∞ excluded. | Positivity essential. |
| §4.4, strict balls | w(a)=1 or 3, w(τ)=0,1,2,∞ | For a=1: thresholds give false,true,true,true. For a=3: false,false,true,true. | Balls 𝔪 and 𝔪², with explicit zero branch. |
| §4.5, ball stabilizer | B=t²O, x=t or t⁻¹ | t·t²=t³∈B; t⁻¹·t²=t∉B. | Stabilizer O, not O×. |
| §4.6, union identity | V=∅ or {w}, w(a_d)=3 | Both sides ∅ in first; both sides 𝔪_w² in second. | Empty union and strict threshold agree. |
| §4.7, intersection identity | t-adic P, (t−1)-adic Q; x=1/t, y=t/(t−1) | P-orders x=−1,y=1,xy=0; Q-orders x=0,y=−1,xy=−1. y is in one ball, xy in neither. | Negative-order x excluded; empty stabilizer gives K. |
| §4.8, singleton isolation | f=t⁻³ at t=0 | Pole order 3 becomes zero order 3 for a_d=t³; there are no other zeros. | Reciprocal direction and odd pole order agree. |
| §5.1, dyadic and real tests | (a₁,a₀)=(5,3), then (−1,−1); characteristic 2 | Hilbert symbol at 2 is 1, at 3 is −1. Four-positive-squares real tail is anisotropic. In char 2, guard 2≠0 is false. | Henselian, real and dyadic clauses remain distinct. |
| §5.2, guarded formula | Zero slot, empty detector, two place rings | Zero slot gives false G; empty detector gives raw=K; x above has x outside O_P and x⁻¹ outside O_Q. | All three fail to produce a nonempty bad fibre. |
| §5.3, full high-dimensional family | ℚ(s,t), t-divisor and exceptional divisor at origin | t-divisor has values (v(s),v(t))=(0,1); exceptional has (1,1), residue transcendence degree 1 in either. | Both δ=3→2 divisors included, no chosen-model restriction. |
| §5.4, smooth fibration | t-adic on 𝔽_p(s,t), bases 𝔽_p(s),𝔽_p(t) | Valuation on first base is 0, on second takes t to 1. | First works; second fails triviality. |
| §5.5, shifted operations | arbitrary x, units 1 and 2; char 2 | x∗1=x+1−1=x; x∘2=(x−1)·1+1=x; 2=0 in char 2. | Shifted additive and multiplicative units remain distinct. |
| §5.5, principal-unit threshold | 𝔽₂(t), n=3, δ=t | c_n=3=1, threshold 0; β=1 has value ∞ and β=1+t has value 1, both >0. Printed 2n=0 would give ∞ and reject both. | Characteristic-two threshold retained. |
| §5.6, singleton shifted identity | D_f∩D_g={P}, pole order 3 for n=2 | f and f+1 have same pole order −3 at P, disjoint zeros; 3 mod 2=1, so P survives. For pole order 2, remainder 0 and P disappears. | Coprimality required; two shifted rings give 1+𝔪_P then subtract 1. |
| §5.7 / geometric-divisor formula | 𝔽₄, ℚ, 𝔽₂(t), ℚ(t) | First two have 0 geometric divisors; t-adic/infinity occur in last two. On ℚ(t), arithmetic p-divisor changes char 0→p and fails predicate. | Exhaustion and exclusion both retained. |
| §6.1, normalizations | ℚ, ℚ(t), 𝔽₄, 𝔽₂(t) | R,S: ℤ/ℚ; ℤ[t]/ℚ[t]; 𝔽₄/𝔽₄; 𝔽₂[t]/𝔽₂[t]. | Prime ring and constant field not conflated. |
| §6.2, finiteness/fraction field | 𝔽₂(t½,s), basis (t,s); ℚ(√2) | Normalization 𝔽₂[t½,s] has module basis (1,t½), rank 2. Over ℚ(√2), √2/3 has 3-multiple √2 integral. | Inseparable finiteness and full fraction field retained. |
| §6.3, height-one intersection | ℤ; field k; cusp ring k[t²,t³] | Intersections ℤ and k; cusp normalization contains t solving X²−t² but t∉original ring. | Normality premise essential for DVR localizations. |
| §6.4, geometric intersection | ℚ(t), T=t; ℚ, T=() | Intersections ℚ[t] and empty-intersection ℚ; neither excludes 1/2. | Arithmetic terminal places still needed. |
| §6.5, full flags | ℚ(s,t), s=1 then t=1; ℚ with e=0 | One-step residue ℚ(t), δ=2; two-step residue ℚ, δ=1; appending 3 gives rank 3. Empty flag leaves all finite places of ℚ. | Full e-step flag retained. |
| §6.6, refinement integrality | s-adic on ℚ(s,t), T=(s,t) | Following t=0 gives residues 0,0; following t=∞ gives t negative value. | Refinements must preserve all T. |
| §6.7, coefficient detection | (s+2)/3, s=−1, terminal p=3; f=0 | Numerator specializes to 1, denominator to 3: order −1; zero is integral without factorization. | Arithmetic sign and zero case agree. |
| §6.8, all prolongations | ℚ(i), p=5, x=1/(2−i) | At prime (2+i), order 0; at (2−i), order −1. | One chosen prolongation would admit a nonintegral element. |
| §6.9 / normalization headline, e=0 | ℚ, x=2 and 1/2; 𝔽₄ | Integral truth values true,false in ℚ; 2 satisfies X−2, while v₂(1/2)=−1. Every 𝔽₄ element satisfies X⁴−X over 𝔽₂. | Formula gives ℤ or all 𝔽₄ as promised. |
| §6.9 / normalization headline, inseparable basis | 𝔽₂(t), T=t or t², x=t and 1/t | Both closures normalize to 𝔽₂[t]; t satisfies X−t or X²−t²; 1/t has value −1 and fails in both. | Exact predicate preserves inseparable extensions. |
| §7.1, coding and comparisons | ℤ[1/2], (1,1) and (2,2) | Both pairs represent 1/2; 1·2²=2·2¹=4. Difference-pair (3,1) maps to integer 2. | Definable quotient comparisons, not choice. |
| §7.2, arithmetic dimension-one core | ℤ[1/6], a=1/12; 𝔽₂[t,t⁻¹] | Least ν with 6^ν/12 integral is 2, giving code (3,2). With s=t+t⁻¹, t²−st+1=0 gives rank 2 over 𝔽₂[s]. | Denominator and Noether-normalization checks agree. |
| §7.3, conductor localization | ℤ[√5] inside ℤ[(1+√5)/2] | α=(1+√5)/2 missing from first; 2α=1+√5 lies in it; after inverting 2, α enters. | Normality not silently inferred; c=2 retained. |
| §7.4, arithmetic bi-interpretation | 𝔽₄ versus ℤ[t] | Every finite-power quotient of 𝔽₄ is finite; ℤ is infinite. ℤ[t] is infinite and finitely generated with a domain structure. | Infinite-domain premise retained. |
| §7.5, fraction transfer | R=ℤ⊆ℚ, x=1/2 | xb=a for (1,2),(2,4); cross-products both 4. Denominator 0 is forbidden. | Both comparison graphs define the intended class. |
| §7.6, field bi-interpretability | ℚ, 𝔽₂(t), 𝔽₄ | First two have definable fraction domains ℤ and 𝔽₂[t]; finite field cannot interpret infinite ℤ. | Infinite fields only; finite fields handled in Layer 8. |
| §8.1, QFA transfer premise | ℤ as ring; ℚ as ring | ℤ generated by empty tuple; a finitely generated subring of ℚ inverts finitely many primes, so is never ℚ. | Language and finite-generation premise essential. |
| §8.2, inverse graph | x=0 or 2 in ℚ; x=2 in ℤ/4 | Unique outputs 0 and 1/2 in ℚ; in ℤ/4, 2y can be 0 or 2, never 1. | Totality asserted only on fields. |
| §8.3, finite-field sentences | θ₄ on 𝔽₄,𝔽₂,ℤ/4; q=1 | Cardinality tests true,false,true; field tests true,true,false. One-element ring fails 0≠1. | Combined truth true,false,false; q=1 rejected. |
| §8.4 / integral-domain sentence | B=ℤ; S=ℤ,ℤ/2,zero ring | Ring-equivalence truth values true,false,false; characteristic or 0=1 forbids last two. | S remains an arbitrary finitely generated commutative ring. |
| §8.5 / field sentence | K=𝔽₄; L=𝔽₄,𝔽₂,𝔽₄(t) | Isomorphism and sentence truth true,false,false; cardinalities 4,2,infinite. | Comparison L receives no additional resolution hypothesis. |

## Maintainer consequences

No existing declaration was renamed or deleted. The sole new acceptance name is `TauCetiRoadmap.LogicAndDefinabilityInNumberTheoryPartII.exists_formula_arithmeticNormalization`, documented in §6.9. Existing semantic targets now expose explicit compatible-ring instance arguments when instantiated from Lean.

The Albanese correction exports the rational torsor universal over its ground field, with separable base-change compatibility and a purely inseparable isogeny comparison; consumers must not infer unchanged geometric descent over imperfect fields. The actual consumers in §§0.9 and 0.12 require only the ground-field no-factor criterion. ColemanIntegrationPartII's characteristic-zero pointed theorem remains its owner's target.

LocalFieldsRamificationPartII's concrete package numbering supersedes the GF ids in this README; other packages still using those ids were left untouched. New consumption of SieveMethodsAndPrimePatterns §5.4 and AlgebraicModuliForArithmeticGeometry §3.5 is supported by statements already at their supplied heads. No external message, issue or pull request was written, and no commit was made. Final acceptance remains the independent review's decision.
