# ArithmeticKTheoryPartII repair report

## F01 (P2) — applied

Standalone integral KSp finite generation and its proof route → an import of ArithmeticKTheory §3.5 via GeometryOfNumbersAndQuadraticArithmetic §6.8a. Updated ownership, both contracts and §8.4’s Hurewicz inputs and layer dependencies. The base supplies classical ε=−1 finiteness for every n≥0, integrally; FGV line 911 identifies these groups with KSp.

## F02 (P1) — not actionable in this package: the integral alternating plus theorem belongs to StableHomotopyKTheory

An asserted supplied alternating plus comparison → gap:classical-symplectic-plus, assigned to StableHomotopyKTheory §4.27 in the README and plan. Marked §§1.1, 4.3, 8.4 and layer dependencies as consumers; added the alternating/symmetric boundary Check. Section 4.27 supplies symmetric forms. This package can expose the missing contract; supplying that theorem requires its owner’s work.

## F03 (P2) — applied

Unqualified identification of Bott generators → bott=−β_Top, propagated through Conventions, both topological contracts, §0.1, §3.2, §4.3 and §8.4. Clarified the existing topological-symplectic-hodge gap in both files. Added ℂP¹ and mod-5 computations. The independent tangent/dual-Hodge sign remains. Evidence: TopologicalKTheory Conventions; FGV lines 383–400.

## F04 (P3) — applied

G2.6 Γ-machine citations → G2.8 throughout §§0.2, 3.1, 4.1, 4.3, 4.4 and corresponding layer dependencies; the adjunction also cites G2.5. G2.8 Postnikov citation → G3.8 in §8.3, the exact contract and Layer 8 dependencies. GeneralizedCohomology’s named items supply these objects; no additional gap is required.

## F05 (P3) — applied

Hypothetical mod-5 transfer value 1 → actual zero Betti value, with Hodge values 3 and 1 retained. Added the nonzero q=691,k=6 Check and its existing supplier inputs. The Minkowski bound is 1.699207906388<2; B₁₂=−691/2730, and 346·2≡1 modulo 691. FGV lines 80–85 and 1451–1483 support the arithmetic instance and factor two.

## F06 (P3) — applied

The cyclic Bott definition’s implicit interface → four explicit prose API bullets: normalization, character naturality, the Bott adapter and the split polynomial injection for q>4. Preserved the existing Checks and q=3 exception; added no Lean declarations. FGV lines 350–400 give the normalization, coefficient restriction and character calculation.

## Checks and file boundaries

- Elaboration of packages/ArithmeticKTheoryPartII/Suggested.lean from the supplied content checkout: exit 0. Output consisted precisely of the two intended headline warnings, at 52:8 and 95:8: ``warning: declaration uses `sorry` ``. No TauCeti module import or targeted build was needed.
- A single scratch elaboration appended `#check @name` for every one of the four declarations: exit 0, the same two warnings, and all four elaborated types. The signature comparison is recorded below. No binder repair was needed.
- The required dependency check returned exit 0, with exact output:

```text
depcheck: 51 roadmaps, 597 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. No merge-order file was edited.

- Citation resolution reported no cross-roadmap citation or Lean name found nowhere. Its generic warning that pinned packages were unavailable to the resolver was not treated as evidence about the libraries: the pinned source files and Lean elaborations were checked directly.
- JSON/TOML parsing passed. All 17 plan gaps match their README contract text exactly; the plan is unchanged outside its top-level gaps value. All four Lean declaration names occur in the README. Stale G2.6 Γ citations, the G2.8 Postnikov label and the duplicate integral KSp target are absent. The computed table has 173 data rows and covers all 42 target subsections. The machine-path audit and git diff --check passed. No gate failures were listed in the brief.
- packages/ArithmeticKTheoryPartII/Suggested.lean and packages/ArithmeticKTheoryPartII/metadata.toml are unchanged. In packages/ArithmeticKTheoryPartII/design/plan.json only the top-level gaps value changed: one added contract and the sign clarification to an existing contract. No targets, ownership graph or review metadata changed.

## Evidence, pins and ownership

The supplied content checkout was read at commit 8888d45eea61a0573e32d9b39a00c833f844fc44. The roadmap service resolves its main snapshot as 5f173a7 and the supplied open-head index dated 2026-10-25T10:47:52Z; supplier reads used that service, not revision proposals for existing main roadmaps. In particular GeneralizedCohomology was read on main; ArithmeticKTheory, StableHomotopyKTheory, GeometryOfNumbersAndQuadraticArithmetic, TopologicalKTheory and BorelRegulators were read at their indexed new-roadmap heads. Main’s ComplexTori and PadicMeasuresIwasawaAlgebras supplied prose examples before editing.

The manifest pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Source and declaration checks used those checkouts.

| Object or claim | Exact evidence and boundary |
| --- | --- |
| Integral classical skew GW finiteness | TauCetiRoadmap/ArithmeticKTheory/README.md §3.5 explicitly concludes classical ε-symmetric and ε-quadratic finite generation for all n≥0 without inverting 2. TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md §6.8a supplies the connective comparison. FGV line 911 identifies classical negative symmetric GW with KSp. |
| Alternating plus comparison | TauCetiRoadmap/StableHomotopyKTheory/README.md §4.27 uses the symmetric stabilizer of ⟨1⟩⊥⟨−1⟩, component group ℤ² and BO∞⁺. It cannot supply the alternating half-rank coordinate or BSp∞⁺. Generic §§4.24–4.26 and the classical connective comparison are retained as imports, not requested again. |
| Bott sign | TauCetiRoadmap/TopologicalKTheory/README.md Conventions sets β=[O(−1)]−1. Its degree-two Chern value is −1. FGV lines 383–397 fixes the cyclic image’s value as +1; hence bott=−β. TauCetiRoadmap/BorelRegulators/README.md Conventions and §2.1 independently uses (−1)^n times these supplier powers for positive Chern coordinate. |
| Γ/adjunction/Postnikov | TauCetiRoadmap/GeneralizedCohomology/README.md G2 item 5 constructs the sphere/space adjunction; item 6 treats true versus naive homotopy; item 8 constructs the Γ-machine. G3 item 8 constructs connective covers and Postnikov truncations. |
| Nonzero 691 instance and four classes | FGV lines 80–85 gives k=6,p=691 as a nonzero arithmetic kernel; FGV lines 1451–1483 computes the same-type four-class image and transfer surjectivity. Finite generation and reduction give a nonzero mod-691 quotient, so a nonzero finite-coefficient element x has order exactly 691. No nonexistent mod-5 kernel element is used. |
| Minkowski bound | Mathlib/NumberTheory/NumberField/ClassNumber.lean:77, NumberField.exists_ideal_in_class_of_norm_le, supplies an integral nonzero ideal representative of norm ≤M. For ℚ(ζ₅), degree 4, two complex places and discriminant 125 give M=1.699207906388. A positive integer norm ≤M is 1, hence the ideal is the unit ideal and the class group vanishes. |
| Native CM definitions | Mathlib/NumberTheory/NumberField/CMField.lean:69 and :236; Mathlib/RingTheory/FractionalIdeal/Operations.lean:569 and :953; Mathlib/RingTheory/DedekindDomain/Different.lean:229. Semilinear transport and the trace dual are real native operations; the latter’s zero branch is excluded by using the unit ideal. |
| Native bar convention | Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:125 acts by the inverse of the first group entry. Its absolute, natural-degree complex is not completed relative homology. The explicit reversal/inversion comparison in §5.3 remains this roadmap’s theorem. |
| Other pinned interfaces | Representation in Mathlib/RepresentationTheory/Basic.lean:48 has no continuity condition. CommRing.Pic and Module.Invertible in Mathlib/RingTheory/PicardGroup.lean retain isomorphism classes and contraction, not automorphism loops. Matrix.symplecticGroup in Mathlib/LinearAlgebra/SymplecticGroup.lean:101 is finite rank, not a KSp spectrum. TauCeti/Geometry/Symplectic/ExistsCompatible.lean:188 assumes finite-dimensional real symplectic data and gives positive compatibility; TauCeti/NumberTheory/NumberField/Ideal/ArtinMap.lean:181, :218 fixes arithmetic Frobenius. |

The other exact contracts were reopened by roadmap name and their cited sections: GeneralAlgebraicKTheory §§7.1–7.7, 13.8b–c; SchemeKTheoryOperations §§6.1, 6.9–6.11; HermitianKTheoryOfPoincareCategories Layers 4–6; ComplexMultiplicationAndExplicitReciprocity §§1.3, 2.1–2.2; AbelianSchemesAndArithmeticModuli A5.5, A5.8; the listed PELModuli sections; ClassFieldTheory Layers 11–13; Chebotarev Layer 10; ArithmeticGaloisDuality R02.1, R02.2, R02.4.3; EtaleCohomologyFoundations F.0.2–F.0.3 and F.4; IntegralIwasawaTheory §§3.1, 7.4, 12.3; KTheoryFiniteLocalFields §§1.1–1.2; ArithmeticLocallySymmetricSpaces ALS.0.8, ALS.1.5–ALS.1.6, ALS.2.3–ALS.2.4; and AlgebraicTopology Stage 6. The explicit supplier gaps continue to request extensions of those interfaces, not the local universality theorems. SymplecticGeometry’s CotangentLagrangian C2.0–C2.1 was read in its main sub-roadmap. EtaleHomotopyTypes EH.5–EH.6/G7 and ChromaticHomotopyTheory CH.2–CH.3 were checked in packages/EtaleHomotopyTypes/design/README.md and packages/ChromaticHomotopyTheory/design/README.md; the service’s lack of packaged versions was not reported as mathematical absence.

Ownership was searched by objects (alternating forms, symplectic plus spaces, KSp, classical skew GW finite generation and Bott/Chern comparisons) using the roadmap service over main and indexed open heads, and in board packages. The existing arithmetic finiteness owner was imported. The alternating plus extension is assigned to the earlier generic group-completion owner. No new local theorem, foundational carrier or downstream supplier was introduced; no open work was imported merely because it revises a main roadmap. No declaration name changed.

FGV and borel1974 were read from the legally cached author/open-repository extractions, including FGV lines 350–400, 667–703, 900–913, 1435–1483, and borel1974 lines 1154–1253. All locators use the manifest’s 64-page FGV author copy. Charney remains the settled uncertified Corollary 4.5 and was not requested again. There are no additional cited works or missing-text requests. The FGV manifest locator now includes §§1.1–1.2 for the explicit irregular-prime Check.

## Elaborated signature comparison

| Declaration | Actual retained data and README comparison | Change |
| --- | --- | --- |
| exists_split_prime_with_signs | p,n; p.Prime; p≠2; 0<n; arbitrary-universe K with Field, NumberField, cyclotomic and CM instances; a sign at every real embedding; a nonzero prime generator away from p; two distinct nonzero conjugate prime factors. Matches §2.3. | None. |
| conjugateFractionalIdeal | K with Field, NumberField and CM instances; fractional ideal in K over its integers; the same fractional-ideal target. Matches §2.4, with semilinear rather than linear transport. | None. |
| IsSkewCMLine | K with all three instances, a set of complex embeddings, fractional ideal B and scalar δ. Its real body requires B≠0, δ≠0, skewness, the perfect inverse-different equation and the exact sign/type equivalence. Matches §2.4. | None. |
| exists_cm_lines_with_ideal_product | All prime-power/field/CM data above; the exact one-from-each-conjugate-pair condition; nonzero L; two actual skew CM lines and a nonzero principal scalar witnessing their ideal product. Matches §2.4. | None. |

The file still contains exactly two headline theorems and two definitions needed to state one of them, with a single import Mathlib, no admitted data, no set_option and no examples. The unstatable headlines still name their missing mathematical carriers in the module docstring. The findings change no retained Lean statement; arithmetic boundary Checks and supplier adapters stay in the README.

## Computed adversarial pass

Each row records a separate statement, definition, interface law or convention. Values are mathematical controls, not proofs of the general targets. “Retain” means the calculation agrees with the stated hypotheses; “repair” names a change in this round. Checks involving the changed Bott coordinate were recomputed in every consuming layer. Unrelated objects (inseparable positive-characteristic extensions, zero rings as number fields, and arbitrary discrete p-adic groups as integral finite-type spectra) are excluded by the stated carriers or hypotheses, rather than silently admitted.

| Statement | Instances tried | Values on the two sides or competing models | Result | Change |
| --- | --- | --- | --- | --- |
| Odd prime-power coefficient convention | p=3, n=1; n=0; p=2 | q=3 gives 2⁻¹=2; n=0 gives q=1 and the zero coefficient ring; p=2 gives 2=0 modulo 2 | Latter two excluded | Retain n≥1, p odd |
| Arithmetic Frobenius and left twists | q=5, χ(F₂)=2, j=3 | 2³=3; inverse Frobenius gives 2⁻³=2 | Distinguishes directions | Retain |
| Negative twists | q=5, χ=2, j=−1 | 2⁻¹=3=2³ modulo 5 | Dual power agrees | Retain |
| Unreduced stable suspension | Point, degree zero | π₀Σ∞₊pt=ℤ with unit 1; reduced suspension gives 0 | Unit retained | Retain |
| Hyperbolic normalization | Rank-one ℤ-module; q=5 | c_BH(1)=2; 3·2=6=1 modulo 5 | Unscaled H is not a retraction | Retain |
| Duality idempotents | q=5, ψ=±1 | On +1: (p_+,p_−)=(1,0); on −1: (0,1) | Both projections correct | Retain |
| Hermitian linear-first sign | Gaussian b(x,y)=(i/2)x bar y | h(1,1)=1; b(1,i)=1/2, −Tr b(1,i)=−1=Im(−i) | Im h=ω | Retain |
| Native positive complex structure | Gaussian line, J_H=i | ω(1,J_H1)=−1; ω(1,−J_H1)=1 | −J_H is positive | Retain |
| Supplier Bott adapter | Complex-oriented ℂP¹; u=c₁O(1), integral 1 | ch₁(O(−1)−1)=−u, integral −1; ch₁(−β_Top)=u, integral 1 | Opposite generators | Repair F03 |
| Bott-power conversion | Exponents 0,1,2,3 | bott powers are 1, −β_Top, β_Top², −β_Top³; character coordinates are 1 in all four degrees | Parity fixed | Repair F03 |
| Tangent versus dual Hodge character | A line with first Chern root u | ch₁(L∨)=−u; ch₂(L∨)=u²/2; multiplying by (−1)^m gives u and u²/2 | Distinct from coefficient conversion | Retain with explicit distinction |
| Ordinary versus completed coefficients | K(ℤ_p discrete,1); compact ℤ_p | Ordinary H₁ is ℤ_p⊗ℤℤ_p; completed H₁ is ℤ_p, with a⊗b mapped to ab | Completion is an additional operation | Retain |
| §0.1 cyclic Bott definition | q=5; β, zero, −β | Bockstein–Hurewicz values 1,0,4 respectively | Unique normalization | Repair F06 API |
| §0.1 character naturality | q=5, a=2 and a=0 | Images 2β and 0; ku images 2bott and 0 | Zero character detected | Repair F06 API |
| §0.1 polynomial splitting | q=5, powers 0,1,2 | β^i maps to bott^i and retracts to β^i, with coefficient 1; zero map gives 0 for i>0 | Split injection controls zero model | Repair F06 API |
| §0.1 coefficient-product boundary | q=3 and q=9 | 3>4 is false; 9>4 is true | Polynomial assertion excludes q=3 | Retain explicit exception |
| §0.2 Picard components and loops | F₅ and ℤ | Pic(F₅)=0 but Aut(1)=F₅× has 4 elements; over ℤ tensor unit maps to 1 in K₀ | Component set loses loops | Retain |
| §0.2 fractional-ideal arrows | 2ℤ→3ℤ | (3/2)·2ℤ=3ℤ; 3/2∉ℤ× | Fraction-field scalars required | Retain |
| §0.2 multiplication versus addition | Two free rank-one modules over ℤ | Tensor has K₀-rank 1·1=1; direct sum has rank 1+1=2 | Distinct operations | Retain |
| §0.2 base change and loop map | ℤ→ℚ, unit −1 | Rank 1 maps to rank 1; determinant of [−1] is −1 in ℚ× | Ring and unit naturality agree | Retain |
| §0.2 zero-ring boundary | Zero ring as a general ring, not a number field | Its unit module is zero and its K₀ class is 0=1 in the zero K-ring | General ring unit law consistent | Retain |
| §0.3 reduced Picard–Bott map | L=O_q, k=1,2 | [L]−1=0; degrees 2(2k−1)=2,6; Bott exponents 1,3 | Rank and degrees agree | Retain |
| §0.3 Adams sign | Odd Bott exponent with reduced line | Dualization gives (−1) on Bott and (−1) on reduced ideal class, product +1 | Positive eigenspace | Retain |
| §0.3 localization at p | q=3; prime above 3 | (1−ζ₃)(1−bar ζ₃)=3; its ideal class is 0 before localization | Picard group unchanged | Retain |
| §0.4 full cyclotomic descent | q=9, k=2, twist-trivializing exponent 3 | Cubes of units {1,2,4,5,7,8} give {1,8}; trivializing degree 2 versus full cover degree 6 | Full-cover gap remains necessary | Retain |
| §0.4 coinvariants and transfer | Cyclic class module C₃ with inversion | Relation (−x)−x=−2x kills C₃; invariants also vanish here but are different maps | Transfer source is coinvariants | Retain |
| §0.5 Artin–Bott square | q=3, trivial p-class group | Both absolute and relative arithmetic H₁ are 0; transfer of every reduced ideal is 0 | Square commutes | Retain |
| §0.5 subgroup homology vanishing | H=C₂, sign F₅ | c−1=−2=3 is a unit; H₀=0 and H₁=0 by averaging with 1/2=3 | Absolute/relative comparison applies | Retain |
| Integral alternating versus symmetric object | J=[[0,1],[−1,0]]; diag(1,−1) | J(v,v)=xy−yx=0; symmetric form at (1,0) is 1 | Distinct groupoids | Repair F02 Check |
| Alternation from skewness | ℤ; contrasting F₂-line | 2b(v,v)=0 over ℤ forces b(v,v)=0; over F₂, b(1,1)=1 and 1=−1 | Integral identification valid, char-2 extrapolation invalid | Repair F01 contract |
| New alternating plus contract: components | Ranks 0,2,4 and virtual inverse plane | Half-ranks 0,1,2,−1; stabilization adds 1 | Group completion is ℤ, not ℤ² | Register F02 gap |
| New alternating plus contract: naturality | Plane and rank-one hyperbolic input | Forgetful rank of plane 2; hyperbolic half-rank of a line 1; composite rank 2 | Correct map normalization | Register F02 gap |
| §1.1 Betti and Hodge maps | Plane; zero lattice | Plane ranks (2,1); zero ranks (0,0) | Both carriers retained | Retain with F02 gap |
| §1.1 addition and scalar extension | Two planes, ℤ→ℝ | Betti rank 2+2=4; Hodge rank 1+1=2 before and after scalar extension | Additivity agrees | Retain |
| §1.1 conjugating complex structure | bott in degrees 2 and 4 | ψ(bott)=−bott; ψ(bott²)=bott² | Signs −1,+1 | Retain |
| §1.1 polar deformation | diag(2,1/2), genus zero | P=A,U=1; P^(1−t) has determinant 2^(1−t)2^(t−1)=1; endpoints A,1; genus zero gives 1 | Retract respects symplectic condition | Retain |
| §1.2 periodic self-map convention | p=5,n=1,2 | Degrees 2·4=8 and 2·5·4=40; common iterate degree 40 is 5·8 | No fixed tower period follows | Retain |
| §1.2 q=3 maps and reduction | p=3,n=1,2 | Degrees 4 and 12; 3·4=12 | Compatible iterates need no associative S/3 product | Retain |
| §2.1 perfect Hermitian-line groupoid | Gaussian unit line | Norm-one units {1,−1,i,−i}, cardinality 4; scalar 2 has norm 4 and is excluded | Automorphisms are isometries | Retain |
| §2.1 chosen cyclic subgroup | q=3 | μ₆ has 6 elements and μ₃ has 3; −1∈μ₆∖μ₃ | Chosen subgroup is not full automorphism group | Retain |
| §2.1 tensor involutions | Two skew coefficient lines | (−conj)⊗(−conj)=+conj | P⁻ is not closed under that tensor | Retain |
| §2.1 signatures under positive and negative tensor | Scalar +2 and −1 | Im(2·i/2)=1>0; Im(−i/2)=−1/2<0 | Positive tensor preserves type; negative reverses | Retain |
| §2.2 trace realization dimension | E=ℚ(i) | Lattice rank 2; abelian dimension 2/2=1 | Genus normalization | Retain |
| §2.2 perfect trace form | B=ℤ[i], δ=i/2 | On (1,i), alternating matrix [[0,−1],[1,0]] has determinant 1; δ=i gives determinant 4 | Principality distinguishes perfection | Retain |
| §2.2 arrow functoriality | Identity and multiplication by 2 on ℤ[i] | Identity determinant 1 preserves ω; ×2 determinant 4 pulls ω to 4ω | Isogeny excluded as an isometry | Retain |
| §2.2 Serre tensor naturality | Tensor by trivial positive O-line | L⊗O=L; rank 2 and dimension 1 remain 2,1 | Tensor unit agrees | Retain |
| §2.3 split-prime headline | K₃, t=7 and −7 | (3+ζ₃)(3+bar ζ₃)=9−3+1=7; signs + and −; 7≠0, 3∉(7) | Both signatures realized | Retain |
| §2.3 negative prime controls | K₃, rational 2 and 3 | x²+x+1 has no root modulo 2; modulo 3 it is (x−1)² | Inert and ramified primes excluded | Retain |
| §2.3 sign function domain | K₃ and maximal real subfield ℚ | Real embeddings of K₃: 0; of ℚ: 1; sign assignments on latter: 2 | Correct field of signatures | Retain |
| conjugateFractionalIdeal and involution | ℚ(i), ideals (2+i),(1/2),0,1 | Conjugates (2−i),(1/2),0,1; second conjugation recovers each | Nonzero and junk zero inputs handled | Retain |
| Fractional-ideal multiplication law | (2+i) and its conjugate | Product (5); identity-as-conjugation would yield (3+4i) | Wrong identity model excluded | Retain |
| Fractional-ideal principal/inverse laws | a=2+i | bar((a))=(2−i); bar((a)⁻¹)=((2−i)⁻¹) | Multiplication and inversion agree | Retain |
| IsSkewCMLine perfection definition | B=O_ℚ(i), δ=i/2 | (δ)B bar B=(i/2)=inverse different; imaginary values ±1/2 | Satisfying model | Retain |
| IsSkewCMLine negative controls | Same B; δ=i,0 | (i)=O has index 4 in (i/2); δ=0 gives zero ideal, not inverse different | Mere inclusion and zero model fail | Retain |
| IsSkewCMLine type equivalence, both directions | δ=i/2 and −i/2 | Identity/conjugate imaginary values (1/2,−1/2) and (−1/2,1/2) | Exactly one embedding in each pair | Retain |
| IsSkewCMLine change of lattice | B→2B, δ→i/8 | (i/8)·2·2=i/2; imaginary part 1/8>0 | Perfection and type unchanged | Retain |
| §2.4 ideal-product headline | Class group C₃, L=1 | x·x⁻¹=1; x/x⁻¹=x²≠1 for x of order 3 | Product not quotient | Retain |
| §2.4 twisting proof route | Classes 1,l/bar l; twists x,x⁻¹ | Product x·(l/bar l)x⁻¹=l/bar l; twisting both by x gives x²l/bar l | Opposite twists required | Retain |
| §2.4 CM type realization | q=5 | Pairs {1,4},{2,3} give 2²=4 types; {1,2} and {4,2} each select one per pair | Type condition nonvacuous | Retain |
| §3.1 CM Bott class degree | k=1,2 | 2(2k−1)=2,6; using β^k at k=2 gives 4 instead of 6 | Correct exponent | Retain |
| §3.1 same-type Hodge image | q=5,k=1, two lines of type {1,2} | Hodge difference 3−3=0; reduced ideal difference remains in Betti formula | Hodge does not detect ideal class | Retain |
| §3.1 degree-zero source | Unit object in unreduced nerve | Class in degree zero is retained as 1; reduced point would give 0 | Construction uses unreduced suspension | Retain |
| §3.2 odd type character formula | q=5,i=1; all four types | Sums 3,4,1,2; {1,2}→{4,2} changes 3→1; difference 2 is a unit | Surjectivity independent of splitting | Retain |
| §3.2 coefficient sign | q=5,i=1,Φ={1,2} | 3bott=−3β_Top=2β_Top; Chern value 2·(−1)=3; 3β_Top gives 2 | Adapter required | Repair F03 |
| §3.2 even-type control | q=5,i=2 | Every type gives 1²+2²=5=0; pair switch difference 0 | Oddness essential | Retain |
| §3.2 prime-power and p=3 controls | q=9,i=1 and 2; q=3,i=1 | Odd sums include 1 and 2; even sums all 3 modulo 9; q=3 sums 1,2 | General odd-prime-power scope survives | Retain |
| §3.3 reduced Betti transfer | L=O₅, k=1 | [L]−1=0 gives Betti 0; Hodge scalar for {1,2} is 3 | Two coordinates differ | Retain |
| §3.3 unit-term cancellation | q=5, exponents 1,3 | 1+2+3+4=10=0; 1+8+27+64=100=0 modulo 5 | Odd Galois traces vanish | Retain |
| §3.4 splitting at degree zero | q=5, plane | (p_+c_B,p_−c_H) sends plane to (2,0); inverse scalar 3 | Rank doubling is invertible | Retain |
| §3.4 p-adic degree table | p=3, i=2,3,4 | KSp₂=ℤ₃, KSp₃=ℤ/3, KSp₄=0; ku-negative factors ℤ₃,0,0 | Residues 2,3,0 agree | Retain |
| §3.4 factor-two retraction | Positive arithmetic x, q=5 | c_BH(x)=2x; c_B(3H(x))=x | Normalize inclusion only once | Retain |
| §3.5 four-class Hodge cancellation | Common-type four classes, q=5, scalar S=3 | 3+3−3−3=0 | Hodge kernel | Retain |
| §3.5 actual mod-5 Betti instance | q=5,k=1 | Minkowski M=1.699207906388; ideal norm integer 1; Pic=0; 2·transfer=0 | No transfer value 1 exists | Repair F05 |
| §3.5 actual nonzero Betti instance | p=691,k=6, nonzero mod-691 kernel x | B₁₂=−691/2730, denominator≡657; 2x≠0 and 346·2x=692x=x | Detects zero map and missing factor | Repair F05 |
| §3.5 proof-order control | q=5 type sums | Hodge unit 3 has inverse 2 before using any generation result; 2·3=1 | Noncircular Hodge input | Retain |
| §3.6 periodic comparison | q=5, i=−2 and 6 | Degrees differ by 8; KU coefficients in both are Λ₅, conjugation −1 in both | Odd periodic summand agrees | Retain |
| §3.6 algebraic degree-one boundary | ℤ, p odd | K₁(ℤ) has p-primary part 0; K₁(ℤ[1/p]) contributes p^ℤ⊗ℤ_p=ℤ_p | No false connective comparison at 1 | Retain |
| §4.1 selected-factor Γ definition | T={*,a,b}, dimensions (1,2) | Selected dimension 1+2=3; folding gives 3; sending b to * gives 1 | Correct map direction | Retain |
| §4.1 composition and Segal law | Fold then identity; two nonbasepoint factors | Both composites give genus 3; Segal image is ordered pair (1,2) | Composition and product agree | Retain |
| §4.1 one-point groupoid | T={*}, ambient genus 0 and 1 | Both selected factors have dimension 0; each selected-factor Hom has 1 element | Nerve contractible without literal object uniqueness | Retain |
| §4.2 ambient rigidification | T={*}, ambient genus 1 | Selected factor dimension 0 but ambient dimension 1 still requires an embedding | Selected-only model misses ambient datum | Retain |
| §4.2 Čech faces and degeneracies | Simplicial degrees r=0,1,2 | Embedding counts 1,2,3; face 2→1 omits one; degeneracy 1→2 repeats one | r+1 convention correct | Retain |
| §4.2 atlas refinements | Two embeddings of one fixed ppav | Common refinement remembers 2 embeddings and 1 selected-factor isomorphism; selected genus unchanged | Embedding is not required of arrows | Retain |
| §4.2 unbounded atlas | T=S⁰, genera 0,1,2 | Grades 0,1,2 all occur; any single bound N omits genus N+1 | Coproduct scope required | Retain |
| §4.3 analytic Betti comparison | Genera 0 and 1 | H₀ is ℤ in each component; genus 0 isotropy 1, genus 1 isotropy SL₂(ℤ) with abelianization ℤ/12 | Stack isotropy retained | Retain with F02 gap |
| §4.3 genus group completion | Genus monoid ℕ | 0,1,2 map to 0,1,2 in ℤ; formal 0−1 gives −1 absent from ℕ | Zeroth step is not an equivalence | Repair F04 locator |
| §4.3 Bott/Hodge witness | Degree-two lift mapping to bott | Tangent pairing +1; dual-Hodge pairing −1; β_Top would reverse them | Same coordinate as §0.1 | Repair F03 |
| §4.4 inverse structure-map convention | Noncommuting σ,τ; σ=(12),τ=(123) as permutation control | (στ)=(23); (στ)⁻¹=τ⁻¹σ⁻¹=(23), whereas σ⁻¹τ⁻¹=(13) | Spec contravariance gives the stated left action | Retain |
| §4.4 discrete versus analytic realization | Fixed genus 1 | Discrete j=0 and j=1728 lie in different isomorphism components; analytic genus-one moduli has one connected component | Models not identified | Retain |
| §4.4 graded p-completion | Coproduct over genera 0,1,2,… | Grade set remains ℕ; 0 and 1 stay distinct after connected-grade completion | No completion of grading | Retain |
| §4.4 p=3 Moore control | Genus one, mod 3 | H₁(SL₂ℤ;F₃)=F₃ from ℤ/12; simply connected M(F₃,2) has connectivity 1 | Direct H¹=0 route fails; smash route retained | Retain |
| §4.4 coefficient/action naturality | Reduction Λ₂₅→Λ₅, scalar action 2 | 2·7=14→4; 7→2 then 2·2=4 | Reduction commutes | Retain |
| §4.4 conjugation-invariant Betti map | Plane and its conjugate | Underlying ℤ-module ranks 2 and 2; Hodge structures reverse but Betti rank stays 2 | Conjugation case agrees | Retain |
| §4.5 finite-genus detection | q=5, g=4 | φ(5)=4; CM genus 2; rational stabilizer genus 4−2=2 | Required genus available | Retain |
| §4.5 zero stabilizer and unit | CM genus 2, remaining dimension 0 | Orthogonal addition adds 0 to rank 4 and genus 2 | Unit not excluded | Retain |
| §5.1 translating line and type | σ=1,c on Gaussian CM line | σ=1 uses positive unit; c changes i/2 to −i/2 via negative unit | Translating signatures can be negative | Retain |
| §5.1 conjugation-paired lifts | Class kernel C₃, generator a, cac⁻¹=a⁻¹ | aca⁻¹=a²c≠c; c pairs 2 embeddings rather than centralizing every lift | Pairing does not mean commuting | Retain |
| §5.1 Artin product and Bott linearity | σ=1; k=2 | Each lift difference w_τ⁻¹w_τ=1, Artin class 1; Bott exponent remains 3 and degree 6 | Identity transport is identity | Retain |
| §5.2 extension definition and section equation | G=1, V=Λ², π(m,t)=m | πs(m)=m; sπ(m,t)=(m,0) differs at (0,1) | Correct section direction | Retain |
| §5.2 kernel action and morphisms | G=C₂ sign on M, trivial on T; projection V→M | g(0,t)=(0,t); projection kernel map T→0 is 0 | Arbitrary kernel maps allowed | Retain |
| §5.2 cocycle law | C₂ sign F₅, α(c,m)=m | α(c²,m)=0; α(c,cm)+α(c,m)=−m+m=0 | Action associative | Retain |
| §5.2 H-linear coordinates | Same example, H=1 | (m,t)↦s(m)+t has inverse (πv,v−sπv); on (2,3) both composites give (2,3) | Split coordinates over H | Retain |
| §5.2 H=G or zero-module boundary | H=G; M=0 | Relative kernel 0; chosen-section initial object M; when M=0 it is 0→0 | No extra universal kernel | Retain |
| §5.3 relative chain quotient | H=G; any M | C_n(G)/C_n(G)=0 in every n, so H₀=H₁=0 | Relative boundary case | Retain |
| §5.3 degree-zero quotient | Any H≤G, trivial rank-one M | C₀(H)=Λ=C₀(G), quotient Λ/Λ=0 | All degree-one chains are cycles | Retain |
| §5.3 linear cocycle presentation | G=ℤ,H=1,M=ℤ trivial | [r+s]m maps to (r+s)m=rm+sm; [0]m=0 | H₁ relative is ℤ | Retain |
| §5.3 sign-action presentation | G=C₂,H=1,M=F₅ sign | [c²]m=0 and [c](−m)+[c]m=0 impose no extra relation; H₁=F₅ | Action term essential | Retain |
| §5.3 native inverse-action differential | G=C₃, g acts by 2 on F₇ | d_FGV[g]1=2−1=1; d_native[g]1=4−1=3; d_native[g⁻¹]1=1 | Inversion required | Retain |
| §5.3 all-degree comparison, degree 1 | S₃ permutation module F₅³, all 18 basis inputs | d_native T−T d_FGV=0; T²−id=0; d²=0 | Equality on nonabelian inputs | Retain |
| §5.3 all-degree comparison, degree 2 | Same module, all 108 basis inputs | d_native T−T d_FGV=0; T²−id=0; d²=0 | Equality on nonabelian inputs | Retain |
| §5.3 all-degree comparison, degree 3 | Same module, all 648 basis inputs | d_native T−T d_FGV=0; T²−id=0; d²=0 | Face signs +,−,+,− agree | Retain |
| §5.3 all-degree comparison, degree 4 | Same module, all 3888 basis inputs | d_native T−T d_FGV=0; T²−id=0; d²=0 | First higher-degree control | Retain |
| §5.3 pair/coefficient naturality | Inclusion 1→C₂ and scalar F₅-map ×2 | Identity subgroup generator maps to [1]=0; [c]⊗2 maps to 2([c]⊗1) | Pair quotient and linearity commute | Retain |
| §5.4 universal extension action | C₂ sign F₅, c(m,t)=(−m,t+m) | c²(m,t)=(m,t−m+m)=(m,t) | Universal action is a representation | Retain |
| §5.4 relative versus absolute initiality | Same group, chosen H=1 section | Relative H₁=F₅, absolute H₁=0; equivariant section is m↦(m,2m) since 1−2=−1=2·2 modulo 5 | Chosen section changes category | Retain |
| §5.4 forget-section criterion without projectivity | Λ=ℤ/9,M=ℤ/3 sign C₂ | c−1=−2 is invertible on M, so H₀=0; averaging gives H₁=0; M has 3 elements versus projective ranks 9^r | Nonprojective M allowed | Retain |
| §5.4 pushout classification | Initial kernel F₅, kernel map ×2 | c(m,t)=(−m,t+2m); associated cocycle is 2[c]m | Under-category map gives pushout | Retain |
| §5.4 nonsplitting in unsectioned category | Any nonzero trivial kernel T | Identity on T is 1_T≠0_T; a split object admits these two different endomorphisms over M | Nonzero initial kernel forbids global section | Retain |
| §6.1 finite arithmetic sequence | q=3,k=1 | T=K₂(ℤ;F₃)=0; V≅F₃(1); c acts by −1=2 | Exact quotient and sign | Retain |
| §6.1 conjugation projectors | q=5, formal coordinates (t,m) | (1+c)/2 sends (t,m) to (t,0); (1−c)/2 sends it to (0,m) | Unique c-section | Retain |
| §6.1 action factoring through H_q | σ fixing H_q, ideal tensor class prime to p | If ideal class has order r coprime to p, multiplication by q is bijective on it, so its quotient modulo q is 0 | Full principality is unnecessary | Retain |
| §6.1 off-diagonal action boundary | C₂ sign action with cocycle 1, modulo 5 | Matrix [[−1,0],[1,1]] squares to identity; off-diagonal entry is 1≠0 | Module splitting need not be equivariant | Retain |
| §6.2 universal cocycle on conjugation | σ=c | α(c,m)=0 from c-linearity; [c]⊗m=0 in relative quotient | Both sides zero | Retain |
| §6.2 twist exponent | k=2, χ(σ)=2 mod5 | 2k−1=3; χ³=8=3 versus χ²=4 | Odd exponent retained | Retain |
| §6.2 lift changes and boundaries | Changing a lift product gg′ to g,g′ | [gg′]m−[g](g′m)−[g′]m=0 in H₁ | Equality is homological, not raw-chain equality | Retain |
| §6.3 normalized arithmetic inclusion | q=5, positive arithmetic x | c_B(3H(x))=6x=x | Inclusion identifies kernel without extra factor | Retain |
| §6.3 finite initiality, zero kernel | q=3,k=1 | Sequence 0→0→F₃(1)→F₃(1)→0, quotient identity | Zero-kernel universal extension | Retain |
| §6.3 finite initiality, nonzero kernel | q=691,k=6 | At least 691 kernel elements; 1_T and 0_T differ on nonzero x | No global equivariant section | Retain |
| §7.1 completed relative extension | Γ=H=1,M=ℤ_p | Relative completed H₁=0; initial middle module ℤ_p | Zero-kernel boundary | Retain |
| §7.1 compact sign control | Γ=C₂,H=1,M=ℤ_p sign | Completed relative H₁=ℤ_p; c²(m,t)=(m,t); reduction kernel has p^n elements | Nonzero relative kernel survives reduction | Retain |
| §7.1 topology of completed bar | Γ=ℤ_p,H=1,M=ℤ_p trivial | Completed H₁=ℤ_p, continuous character 1↦1 determines x↦x; mod-p^n quotients have p^n elements | Topology retained | Retain |
| §7.1 finite-free quotient reduction | V=T⊕ℤ_p | Kernel of V/p^n→ℤ/p^n is T/p^nT; Tor₁(ℤ_p,ℤ/p^n)=0 | Exactness holds | Retain |
| §7.1 torsion-quotient negative control | 0→ℤ_p --p→ℤ_p→F_p→0 | Mod p, left arrow is 0 and its source F_p≠0 | Cannot drop quotient freeness | Retain |
| §7.1 finite inverse-limit condition | Reduction tower ℤ/p^(n+1)→ℤ/p^n | Each transition has p preimages per element; inverse limit ℤ_p and lim¹=0 | Surjective finite tower | Retain |
| §7.2 p-adic universal theorem | p=3,k=1 | Arithmetic K₂ completion 0; middle ℤ₃(1); quotient identity | Actual regular case | Retain |
| §7.2 irregular nonsplitting | p=691,k=6 | B₁₂ numerator valuation 1; arithmetic kernel nonzero; zero and identity on it differ | Global section obstructed | Retain |
| §7.3 local relative comparison | q=3 | G_q=D_q=C₂; both relative H₁ groups for (C₂,C₂) are 0 | Local comparison on base case | Retain |
| §7.3 c-fixed prime and decomposition direction | A minus C₃ prime torsor | c acts by a↦−a; fixed set {0}; D_q contains c even though full class torsor has 3 points | Correct finite-level choice | Retain |
| §7.3 central-conjugation vanishing | D_q acting on odd Λ_q twist | c−1=−2 is invertible; H₀=0, positive homology killed by central c−1 | Pair comparison excludes quotient confusion | Retain |
| §7.4 locally split universal theorem | p=3,k=1 | Middle and quotient ℤ₃(1); unique local section identity, kernel 0 | Sheaf/local formulation compatible | Retain |
| §7.4 local versus global splitting | p=691,k=6 | Local section exists with projection composite 1; global kernel contains x≠0 and forbids global section | Local condition weaker | Retain |
| §7.5 all-integer-twist theorem | q=5,k=0 and 2 | Twists −1 and 3 agree modulo 4; χ=2 gives 3 in both; degrees −2 and 6 differ by 8 | Finite periodic transport applies | Retain |
| §7.5 tower-period negative control | q=5,25 | Character periods 4,20; compatible spectrum periods 8,40 | No single p-adic period inferred | Retain |
| §7.6 odd-degree arithmetic action | p=3,k=1 and p=5,k=1 | KSp₃ 3-primary is ℤ/3 with identity action; 5-primary is 0 since 5∤48 | Both nonzero and zero cases | Retain |
| §7.6 sphere-unit factor | p=3, nonzero order-3 x | c_B(unit(x))=2x≠0 and 2·2x=x | Factor two is invertible | Retain |
| §7.6 actual restriction/reduction map | p=3,k=1,ℓ=2 | Global and local H¹ both ℤ₃/(2²−1)=ℤ/3; exponent 1 would give 0 | Correct twist 2k | Retain |
| §7.6 finite-field negative control | p=3,k=1,ℓ=19 | 19²−1=360 has 3-valuation 2; local ℤ/9 versus global ℤ/3 | Nongenerator ℓ excluded | Retain |
| §7.6 zero finite-field case | p=5,k=1,ℓ=2 | 2²−1=3 is a 5-unit; both H¹ groups 0 | Correct degenerate map | Retain |
| §7.7 Vandiver fixed-point criterion | Plus and minus C₃ torsors | Plus involution fixes 3 points; minus fixes 1; zero torsor has 1 point | Plus vanishing, not full vanishing | Retain |
| §8.1 indecomposable definition | Point and S¹ | Point I=0,D=0,Q₀=0; S¹ has Q₁=ℤ_p and no positive product in degree 1 | Denominator/quotient distinct | Retain |
| §8.1 integral product denominator | S¹×S¹ | Degree-two product a·b generates ℤ_p and becomes 0 in Q₂ | Positive products killed | Retain |
| §8.1 coefficient Bockstein denominator | Two K(F_p,1) factors | Mixed Tor₁(F_p,F_p)=F_p in degree 3; β₁ of degree-four product represents it and becomes 0 | Larger denominator necessary | Retain |
| §8.1 H-map and pairing naturality | Projection S¹×S¹→S¹ | (a,b)↦a on Q₁; mixed a·b↦0; primitive degree-one class pairs (1,0) to 1 | Maps and pairing descend | Retain |
| §8.2 integral product theorem | S¹×S¹ | Q₁=ℤ_p⊕ℤ_p and Q₂=0; separate factors have Q₁=ℤ_p and Q₂=0 | Both sides agree | Retain |
| §8.2 torsion product theorem | K(F_p,1)×K(F_p,1) | Mixed degree-three Tor F_p is 0 after quotient on left; right has no mixed summand | Both sides have zero mixed part | Retain |
| §8.3 low Hurewicz theorem | p=3,E=ΣHℤ, i=1 and 3 | π₁⊗ℤ₃=ℤ₃=Q₁(S¹); π₃=0=Q₃(S¹); allowed upper degree 3 | Safe range | Retain |
| §8.3 torsion Hurewicz input | p=3,E=ΣH(F₃), i=1 | π₁⊗ℤ₃=F₃; Q₁K(F₃,1)=F₃; generator maps to generator | Torsion input included | Retain |
| §8.3 finite-type and endpoint controls | E=ΣH(ℤ₃ discrete), p=3 | π₁=ℤ₃ is not finitely generated over ℤ; endpoint 2p−2=4 exceeds safe upper 3 | Neither extension asserted | Retain |
| Postnikov supplier locator | E=Hℤ and τ≥1 | π₀ before=ℤ, after=0; every positive π_n before/after=0 | G3.8 operation, not Γ group completion | Repair F04 |
| §8.4 integral block stability | i=0,2 | g>5 gives g≥6; g>9 gives g≥10; degree-zero map sends 1↦1 | Conservative strict bound | Retain |
| §8.4 finite-genus finite type route | Finite quotient C₂, trivial ℤ coefficients | H₀=ℤ; H₁=ℤ/2; H₂=0; all finitely generated, positive groups finite | Finite-index spectral-sequence input valid | Retain |
| Imported integral KSp finiteness | Classical ε=−1 over ℤ, rank 0 and 2 | Both alternating; half-ranks 0,1; completed KSp₀=ℤ; all n≥1 fall in supplied n≥0 range | Base specialization | Repair F01, delete duplicate target |
| §8.4 equivariant Hurewicz application | p=3,i=2 | KSp₂⊗ℤ₃=ℤ₃; Q₂=ℤ₃; c acts by −1 on both via twist 1 | Arithmetic and homology weights agree | Retain with F01 import/F02 gap |
| §8.4 Hodge pairing, odd m | p=5,m=1 and 3 | Images bott and bott³ have normalized pairing 1; raw dual-Hodge pairing −1; supplier β_Top and β_Top³ reverse these | All coefficient uses agree | Repair F03 |
| §8.4 Hodge pairing, even m | p=5,m=2 | Degree 4 lies ≤7, but negative ku coefficient is 0; both pairings on KSp are 0 | No even-m unit lift promised | Retain |
| §8.4 safe characteristic range | p=3,m=1; p=5,m=3,4 | 2≤3; 6≤7; 8>7 respectively; odd m<p also gives 2m≤2p−4 | Endpoint excluded | Retain |
| §8.5 rational stable polynomial algebra | Degrees 0,2,4,6 | Bases 1; x₂; x₂²; x₂³,x₆, dimensions 1,1,1,2 | Generator degrees 4k−2 | Retain |
| §8.5 cohomological arithmetic weights | χ=2 over ℚ₅ | Untwisted x₂ eigenvalue 1/2; x₂² eigenvalue 1/4; twisted x₂⊗ℚ₅(1) eigenvalue (1/2)·2=1 | Inverse cohomological weight | Retain |
| §8.5 generator sign | Odd Hodge generators multiplied by −1 | x₂→−x₂, x₂²→x₂²; basis dimensions unchanged | Bott adapter changes coordinate, not algebra | Retain with F03 convention |
| §8.6 Bernoulli characteristic divisibility | d=11,p=691, one part 11 | B₁₂=−691/2730; v₆₉₁(11!)=0; application degree 22≤1379 | Characteristic number lies in 691ℤ_(691) | Retain |
| §8.6 denominator negative control | p=3, partition part 3 | ch₃(L)=u³/6; v₃(6)=1; equality 3=p violates strict part bound | No integral lift inferred | Retain |
| §8.6 empty partition | d=0 | Empty product and characteristic number 1; number of Bernoulli factors 0 | Antecedent false | Retain |
| §8.6 cap-product sign route | Odd chosen part m=1 | Raw Hodge scalar s becomes tangent scalar −s; v_p(−s)=v_p(s) | Unit/nonsplitting argument unaffected | Retain |

## Maintainer consequences

The new gap:classical-symplectic-plus must be supplied by StableHomotopyKTheory §4.27; the existing gap:topological-symplectic-hodge now explicitly compares its tangent coordinate with TopologicalKTheory’s negative Chern generator. This report does not claim either supplier extension is implemented. F02’s mathematical ownership cannot be closed by editing this package alone.

No headline or Lean declaration was added, deleted or renamed. The standalone prose target for integral KSp finiteness was deleted because ArithmeticKTheory already owns it; the remaining stability, equivariant Hurewicz and Hodge-pairing targets remain. Consumers expressing Hodge coefficients in TopologicalKTheory’s β_Top coordinate must multiply degree-2i coefficients by (−1)^i. The separate sign for the dual Hodge bundle is unchanged. No scope or merge-order move was made, and the settled prior full-cyclotomic-cover finding was not reopened.

Only packages/ArithmeticKTheoryPartII/README.md, packages/ArithmeticKTheoryPartII/sources.toml, the permitted gaps list in packages/ArithmeticKTheoryPartII/design/plan.json, and this report were written in the board. No commit, push or remote write was performed. No Lean process remains running. Independent review remains necessary; these edits and computations assert no acceptance by their author.
