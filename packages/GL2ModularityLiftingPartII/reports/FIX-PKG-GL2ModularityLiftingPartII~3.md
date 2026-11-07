# Repair findings and verification

The review's R01–R05 summaries repeat F01–F05 respectively; their dispositions are recorded under those finding ids. No extra finding is silently discarded. The previously repaired round-one findings are historical evidence, not additional requested changes.

## F01 (P2) — applied

Valuation-place definitions → the ideal-based ClassicalSerreModularity interface. Deleted the local place and Frobenius predicates; specialized unramifiedness using prime ideals lying over (ℓ), Mathlib inertia and the explicit automorphism group. Updated every residual/minimality consumer, inertia invariants, Frobenius conclusion and convention Check. Evidence: Mathlib `RingTheory/Frobenius.lean:183–204`, `RingTheory/Ideal/Defs.lean:154–160`; ClassicalSerreModularity, Arithmetic interfaces for the theorem statements.

## F02 (P2) — applied

Normalized-only hypotheses → continuous finite-image character η, unramified at p, normalized twisted residual hypotheses and minimality of ηρ. Both headlines conclude about the original ρ; the untwisted residual assumptions omit the invariant-line condition. Added the real scalar twist and synchronized §6.5. For k = 𝔽₃, ρ₀⊗ψ² fails determinant normalization while ψ(ρ₀⊗ψ²) = ρ₀. Evidence: cg18 lines 569–595, 305–329.

## F03 (P2) — applied differently

Bare internal references → named local quotients, the two exact CG18 minimal problems, and ArithmeticLocallySymmetricSpaces ALS.0.10(iv). The rigidifying-prime contract is deleted altogether by F09's pinned Chebotarev argument. README and top-level plan gaps agree verbatim. The scalar, presentation and stabilizer needs no longer rely on a supplier interpreting this roadmap's section numbers.

## F04 (P2) — applied

Residual association alone → gap:selected-root-residual-only at AutomorphyLiftingBeyondTaylorWiles BT.3/lemma-9-6. Its contract explicitly asks for part (i) of B^gal without part (ii). Scope, exact contract, §9.2 route/Needs and Layer 9 Dependencies agree. The supplier design requires both clauses; cg18 lines 3205–3218 give the unconditional comparison. The remaining supplier extension is not asserted as proved here.

## F05 (P2) — applied

Combined 3-primary/boundary request → degree-three request plus gap:non-neat-bianchi-boundary at ArithmeticLocallySymmetricSpaces ALS.4, for every p ≥ 3 unramified in F. Removed the unsupported direct use of ALS.4.12(b) in §§9.3–9.4. Added the ℚ(i), p = 3 boundary Check. The supplier states neatness and ♠; cg18 lines 3254–3267 support the separate torus-boundary route.

## F06 (P3) — applied

Ambiguous disjunction → Conjecture A at every auxiliary level for both prime ranges, together with p ≥ 5 or the explicit p = 3 hypothesis H₃(3). Added gap:localized-three-primary-stabilizers to §10.1's Needs. The ring action uses the Conjecture A surjection regardless of p (cg18 lines 3354–3362).

## F07 (P3) — applied

Layer 8 Dependencies now include ALS.0.10 and ALS.4.10; Layers 4 and 6 include all three classical newform APIs. Removed §1.1's duplicate determinant citation. Also synchronized the new Chebotarev, isotypy, selected-root and boundary inputs in Layers 0, 7 and 9, avoiding the same mismatch after these repairs.

## F08 (P3) — applied

Unqualified names on no-vexing statements → “the no-vexing case of” each headline in §§4.4–4.5. Section 6.5 states the full twist-general versions, including vexing primes. No no-vexing condition was added to Lean: its injectivity condition at vexing inertia remains exactly the normalized minimality condition of cg18 lines 588–595.

## F09 (P3) — applied

Full residual-isotypy gap → just the full-ideal Cayley–Hamilton annihilation on Jacobian p-primary torsion. Section 7.4 imports IntegralHeckeAndGaloisDeterminants §1.6 recognition and ModularCurvesPartII §17.2 Eichler–Shimura. Removed gap:rigidifying-prime: §0.1 uses pinned Chebotarev on the disjoint compositum, with class (1,a), a ≠ 1. The positive-density class has ratio 1, avoiding both forbidden ratios (cg18 lines 1153–1169).

## F10 (P3) — applied differently

An unproved vanishing contract → the explicit named hypothesis H₃(3) in the p = 3 statements and their standing assumptions. Retained gap:localized-three-primary-stabilizers as an unresolved request for its theorem, as the binding supplier-gap rule requires. No source is claimed to prove it. Boundary vanishing is separate. Establishing H₃(3) itself requires supplier work, not an edit asserting its truth.

## F11 (P3) — applied

Proof inputs listed as missing statement carriers → J₁(N*) with Hecke action and Galois action on torsion. The docstring explains that modular symbols and their Hecke algebra do not provide that action or the Jacobian comparison. Matched the Layer 4 comment to “Minimal weight-one R = T”. Evidence: Tau Ceti modular-symbol `Basic.lean:315–324`, `Hecke/Finite.lean:51–55`.

## Required checks and gate leads

- Final elaboration from the content checkout: `lake env lean` on `packages/GL2ModularityLiftingPartII/Suggested.lean` exited 0. Only the expected two “declaration uses sorry” warnings occurred, at lines 136 and 178. The used Tau Ceti newform object was already built; no build was needed. Earlier development elaborations exposed a scalar-twist multiplication proof and the scoped ideal action; both were corrected. No Lean process remains running.
- Mechanical binder audit: one scratch copy containing `#check @name` for every one of the nine declarations elaborated, exit 0. Compared every displayed type with Conventions and §6.5. Field, finite residue, characteristic, complete DVR, finite ℤₚ-algebra, local-map, Noetherian and completeness assumptions all survive. The η-continuity predicate uses the explicitly installed maximal-ideal-adic topology. Reduction compatibility, finite image, unramifiedness, twisted residual conditions and twisted minimality all survive. No lost binder required repair.
- Form/name audit: seven definitions with real bodies and two admitted headline theorems; one Mathlib import and the used Tau Ceti newform import; no admitted data, examples, options or extra API theorems. Every local declaration appears in the README. Deleted local place/Frobenius names no longer occur there as local definitions; the remaining Frobenius name is explicitly Mathlib's.
- Plan restriction: comparing the parsed original and edited plans after removing top-level `gaps` gives equality. All 18 gap entries match their README supplier/needs text, with no extra contracts or missing slugs.
- Citation resolver: exit 0; no unresolved cross-roadmap citations or Lean names. Its notice that it did not inspect pinned Lake packages was not treated as a pin audit: the declarations used here were opened directly at the supplied pins. The original lead `LocallySymmetric.IsEisensteinCG` is an ALS.4.10 planned interface, not a claimed pinned declaration.
- No other gate failures were supplied. No change to metadata or sources was needed: the same three works and their lifetime keys suffice. CG22 remains uncertified at its settled pp. 855–856 locator; no new reference request was made.

The exact dependency-check output was:

```text
depcheck: 51 roadmaps, 593 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line.

## Sources, pins and ownership

The content checkout is main 35c9f96d09370061f84422fd640552aaf1609e8d. Its manifest pins Mathlib at 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti at a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Read the upstream forms in Completed/NumberFieldArithmetic and TauCetiRoadmap/ClassFieldTheory before editing.

Read the supplied legal cg18 extraction at lines 305–329, 569–595, 1153–1176, 2295–2342, 2800–2835, 3205–3267 and 3330–3362; read cg20 lines 2540–2588 for the retained projection convention. No source text was copied. All numerical and group-theoretic calculations below are direct checks, not claims that elaboration proves the admitted mathematics.

Fresh `roadmaps show`/`roadmaps grep` searches checked the cited main/open-head interfaces by object. The relevant contracts exist at:

| Supplier | Sections checked against the available copy |
|---|---|
| ClassicalSerreModularity | Arithmetic interfaces for the theorem statements; its Suggested.lean GQ, IntBar, IsFrobAt, IsUnramifiedAt |
| IntegralHeckeAndGaloisDeterminants | §§1.3, 1.6, 2.1–2.2 |
| ModularCurvesPartII | §17.2, retaining arithmetic Frobenius and the diamond term |
| ArithmeticLocallySymmetricSpaces | ALS.0.8, ALS.0.10(ii),(iv), ALS.1, ALS.2, ALS.3.14, ALS.4.10, ALS.4.12, ALS.5a.6, ALS.5b.5–5b.8, ALS.6.1–6.3 |
| DeformationAndDerivedPatchingAlgebra | §§3.1, 3.4–3.5, 3.9, 5.1–5.5 |
| LocalGaloisDeformationRings | §§2.1–2.5, 2.19, 4.1, 6.7, 6.18, 7.5 |
| GlobalGaloisDeformations | §§3.3–3.7, 5.1–5.8, 6.2–6.8; Layer R04.6 |
| AlgebraicModularFormsAndSerreWeights | R15.1–R15.3, including boundary, torsion doubling and twisted duality |
| AutomorphicGaloisRepresentations | §§2.8–2.10, 3.7, 4.1–4.6, 5.1, 6.8–6.12 |
| GL2AutomorphicRepresentationsAndTransfer | R16.2.7, R16.2.11, R16.3.9, R16.4, R16.6.5–6.6 |
| SerreWeightAndLevelOptimisation | §§3.4, 3.10–3.13 |
| GL2ModularityLifting | §§3.7, 4.1–4.2; §7.2 has a different object, confirming F03's ambiguity |
| ClassFieldTheory | Layers 7, 11–12 |

AutomorphyLiftingBeyondTaylorWiles has no package README available through the supplied roadmap index. Its readable board design explicitly gives B^gal(i),(ii) and BT.3/lemma-9-6; that evidence establishes F04. Ownership against an unavailable open package head was not checked. The other searches cover the main/open-head index and read-only board packages; no new generic construction was assigned here. The only added definition is the elementary scalar twist needed to state the existing headlines. The defect-one arithmetic applications retain this roadmap as owner; generic recognition, places, geometric Eichler–Shimura, patching and boundary machinery retain their named suppliers. No fully qualified declaration name from another roadmap was reused.

Directly opened pinned files include Mathlib `RingTheory/Frobenius.lean:54–100,183–204`, `RingTheory/Ideal/Defs.lean:154–160`, `RingTheory/IntegralClosure/Algebra/Basic.lean:259–275`, `FieldTheory/AbsoluteGaloisGroup.lean:42–43`, and `LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean:52–88`. The Frobenius exponent is the cardinality of ℤ modulo the contracted prime, hence ℓ; primality and lying-over are explicit in the headline. The ideal action requires the Pointwise scope, not a new instance or option.

Tau Ceti `NumberTheory/Chebotarev/Density/Chebotarev.lean:51–79` supplies density and infinitude on finite Galois number-field extensions. `NumberTheory/ModularForms/Newforms/Newform.lean:83–108` requires a nonzero eigenform, newness and first coefficient 1; `Eigenform.lean:65–68` by itself permits zero; `Newforms/StrongMultiplicityOne.lean:96–100` requires equal nebentypus and all good-prime eigenvalues. The modular-symbol carrier is coinvariants in `NumberTheory/ModularForms/ModularSymbols/Basic.lean:315–324`; its Hecke algebra is in `Hecke/Finite.lean:54–55`. Searching that subtree for Galois/Jacobian actions found no carrier that states the scalar multiplicity headline; it also parametrizes weights w+2 for natural w.

## Adversarial mathematics pass

Rows identify individual definitions, conventions or targets, including the unchanged target calculations affected by their uses. Conditional inputs remain conditional; a finite test does not establish a requested supplier theorem.

| Statement | Instances tried | Computed values on both sides | Result | Change |
|---|---|---|---|---|
| Coefficient convention | O = ℤ₃, k = 𝔽₃; equal-characteristic 𝔽₃[[t]]; zero ring | residue sizes 3, 3; characteristic 0 versus 3; zero ring residue has 1 element versus field size ≥2 | Last two excluded by characteristic/residue binders | None |
| Arithmetic/geometric reciprocity | Value 2 in 𝔽₇ | inverse 4; 2·4 = 8 = 1 | Direction distinguished | Retained |
| Prime carrier | ℓ = 3; junk ℓ = 1 | contraction (3), quotient size 3; (1) contains 1 and is not proper | Matches imported interface | Replaced valuations |
| IsUnramifiedAt | Trivial representation; diag(ζ₃,1); ℓ = 1 | inertia image I₂ versus diag(ζ₃,1) ≠ I₂; no prime over (1) | Positive and negative examples | Ideal inertia |
| Arithmetic Frobenius | 𝔽₂₇ with t³ = t+1 | t³ = t+1; t⁹ = t+2; t²⁷ = t | Arithmetic and geometric directions differ | Imported root predicate |
| Frobenius independence | g and ig with i in inertia; unramified ρ | ρ(ig) = I₂ρ(g) = ρ(g), giving equal traces and determinants | Inertia representative harmless | Ideal carrier |
| twist definition | η(g) = 2, ρ(g) = diag(2,3) over 𝔽₇ | scalar product diag(4,6); trace 3; determinant 3 | Real body determines the matrix | Added |
| Twist identity/composition | η = 1; η(g) = 2, inverse 4 | diag(2,3); 4·diag(4,6) = diag(2,3); 2·4 = 1 | Identity and inverse laws | README API |
| Twist trace/determinant | Same diagonal example | 2·5 = 3; 2²·6 = 3; wrong single power gives 5 | Quadratic determinant essential | README Check |
| Twist reduction | ζ₃-valued ψ, k = 𝔽₃; A = k[ε]/ε² | ψ̄ = 1; (1+ε)³ = 1; reduction of scalar matrix equals scalar of reduction | Includes residual-trivial and nilpotent units | README API |
| IsAdicallyContinuous | Field; O[ε]/ε² | m = 0 gives discrete topology; (π,ε)² = (π²,πε) | Appropriate topology, including nilpotents | Domain unfolded only |
| IsReducibleOn | Diagonal action; S₃ standard over 𝔽₅; H = 1 | e₁ line has dimension 1; S₃ eigenlines of a 3-cycle are exchanged, giving 0 common invariant lines; H = 1 fixes all lines | Tests absolute reducibility and a nonabelian group | Domain unfolded only |
| inertiaInvariants | Trivial inertia; diag(u,1); diag(4,1) over ℤ/9 | A²; Ae₂ if u−1 unit; 3Ae₁⊕Ae₂ has 3·9 = 27 elements, versus 9 in A | Rank condition cannot be replaced by residual dimension | Ideal inertia |
| IsWeightOneResidual | p = 3, c = diag(1,−1); diagonal global action; p = 2 | det c = 2 = −1; invariant line exists in diagonal case; 3 ≤ 2 is false | Oddness and absolute irreducibility retained | Ideal decomposition/inertia |
| IsMinimalLift: determinant | k = 𝔽₃, A = ℤ/9 | 4² = 7 ≠ 1; 1² = 1 | Teichmüller normalization distinguished | Ideal carrier |
| IsMinimalLift: local image | Vexing inertial kernel element mapping to I₂; identity reduction | Two distinct elements over I₂ versus one | Injectivity excludes extra inertia | Ideal carrier |
| IsMinimalLift: direct summand | diag(u,1), u−1 unit; diag(4,1) over ℤ/9 | Ae₂ with complement Ae₁; 27-element fixed module cannot be a free 9-element line | Actual integral fixed module required | Retained |
| minimal_weight_one_modularity | k = 𝔽₃, ψ³ = 1, ρ = ρ₀ψ²; good diag(2,3) | (det ρ)² = ψ² ≠ 1; ψρ = ρ₀ψ³ = ρ₀; good trace/determinant 5,6 | Twist witness accepted and original Frobenius recovered | Twist-general headline |
| minimal_lift_finite_image | η = 1; finite images of sizes a,b; A = k[ε]/ε² | original case; untwisted image size ≤ ab; k[ε]/ε² has |k|² elements, hence finite GL₂ | Finite-image untwisting works for nilpotent coefficients | Twist-general headline |
| §0.1 rigidifying prime | Class (1,2) at p = 3; excluded class (1,1) | eigenvalue ratio 1; r = r⁻¹ = 2; excluded class has r = 1 | Both forbidden ratios avoided; density |C|/|G| > 0 | Deleted prime gap |
| §0.2 Hecke image/coefficient formula | Q empty; j = 1, x = 2, n = 1, d = 3, a₂ = 4 | auxiliary anaemic/full agree; a₁(T₂f) = 4 + 0 = 4; unguarded division would give 7 | No automatic Tₚ or flatness | Retained |
| §0.3 dual coherent homology | i = 0,1; O/π class | 1−0 = 1, 1−1 = 0; torsion dual has length 1, generic fibre length 0 | Degrees and torsion retained | Retained |
| §0.4 twisted duality | n = 2, x = 2, section eigenvalue 2; n = 1 | homological value 2⁻¹·2 = 1; weight-one factor 1 | Direction correct | Retained |
| §1.1 degeneracy matrices | x = 2, T = 0, d = 3; x = 1 | U = [[0,6],[−1/2,0]], det 3; at x = 1 det d | Ordered columns agree | Duplicate Needs removed |
| §1.2 selected root | 𝔽₅, x = 1, α = 1, β = 2; repeated 1,1 | 8−9 = 4 = −(1−2)²; repeated determinant 0 | One copy only with distinct roots | Retained |
| §1.3 harmless prime | 𝔽₅, x = 2, α = β = 1; α = 2, β = 1 | determinant 3; (U−I)² = 0 but U−I ≠ 0; forbidden-ratio determinant 0 | Repeated root retains two copies | Prime choice consumers recomputed |
| §1.4 coherent cover edge | Δ = 1; Cₚ acting trivially on k | Tor₁ over O with O is 0; Tor₁ over O[Cₚ] with O is k | Right-exact edge retains Tor | Retained |
| §1.5 coherent balancedness | M = O/π; M = Sʳ; M = 0 | Betti difference 1−1 = 0 = 0−0; r−0 = r; 0−0 = 0 | Torsion and zero allowed | Retained |
| §2.1 Hasse double | T = 0, d = 3; d = 1 | Ue₂ = (3,0), U² = −3I; printed matrix gives (1,0); at d = 1 columns agree | Convention retained | Retained |
| §2.2 individual projections | 𝔽₅, roots 1,2 | (1,0) = 1·(4,1)+4·(3,1); both coefficients nonzero; full projection kernel has dimension 1 | First-column injection differs from full-double injection | Retained |
| §2.3 image algebras | O²→O; O/π² | image rank 1 versus source rank 2; π ≠ 0 modulo π² but 0 modulo π | Images retain nilpotents | Retained |
| §2.4 quadratic doubling | 𝔽₅, roots 1,2; repeated 1 | full dimension 2, selected dimension 1; (X−1)² quotient dimension 2 with nonzero nilpotent | Full quadratic algebra required | Retained |
| §3.1 Wiese criterion | Jordan cyclic action; S₃ standard action; diagonal/difference sequence | dimensions 2→4→2; difference composed with diagonal is 0; (J−I)² = 0, J−I ≠ 0 | Indecomposable residual condition meaningful | Retained |
| §3.2 doubling ideal | A = T̃; A⊂A[X]/monic quadratic | quotient 0 gives annihilator A; quotient AX gives annihilator 0 | Module quotient, not ring quotient | Retained |
| §3.3 scalar normalization | c = 2, U = 6 in 𝔽₇; A[β]/β² | c⁻¹U = 4·6 = 3; relative module Aβ has annihilator 0 | Local eigenvalue direction correct | Retained |
| §3.4 three Frobenius cases | diag(1,2), Jordan J, I over 𝔽₅ | (tr,det) = (3,2),(2,1),(2,1); repeated eigenspaces dimensions 1,2 | All three routes remain necessary | Retained |
| §3.5 determinant normalization | ℤ/9, value 4; ℤ/4, value 1; roots 2,3 in 𝔽₇ | 7² = 4, 7 ≡ 1 mod 3; 1² = 3² = 1 mod 4; inverse-root trace 2 versus 5 | p odd and Frobenius direction essential | Retained |
| §4.1 Taylor–Wiles system | q = 1; nonidentity deck basis | A∞ = O with 0 variables; augmentation [g] = 1, identity coefficient 0 | Correct variable count and augmentation | Retained |
| §4.2 weight-one R = T | R = T = k, H = k; H = 0 | rank 1, πH = 0, annihilator 0; zero module annihilator R | O-flatness not inferred | Retained |
| §4.3 conductor rank | T = k[ε]/ε²; invariant dimension 0 or 1 | dual m-eigenspace dimension 1 versus total dimension 2; bad U = 0 or Frobenius scalar u | Conductor comparison retains torsion | Dependencies synchronized |
| §4.4 normalized no-vexing case | k = 𝔽₃, χ̄ = −1, p-power ψ at 7 | fixed line unchanged; (−ζ₃)² = ζ₃² ≠ 1; good trace/det 5,6 | Normalized minimality rejects the ramified determinant | Qualified headline name |
| §4.5 normalized finite image | Finite torsion ideal of size s; unrestricted square-zero matrices | a matrix fibre has ≤ s⁴ elements; {I+aεE₁₂} has as many elements as its a-parameter | Torsion ideal, not just generic points, must be controlled | Qualified headline name |
| §5.1 vexing datum | Empty vexing set; reducible Dₓ with x ≡ −1 | empty tensor rank 1; reducible action gives an invariant line, hence not vexing | Congruence alone insufficient | Retained |
| §5.2 type bundles | G = 1; tame character i = 2, e = 5 | full/sub lines O and O(−C); q²O[[q⁵]] | Compactified extension determined | Retained |
| §5.3 local freeness/base change | e = 5, i = 2; trivial Cₚ-module k | q²O[[q⁵]] and q²k[[q⁵]] both rank 1; norm on k is p = 0 | Tame local descent, not global averaging | Retained |
| §5.4 cusp duality | e = 5, i = 2 and 0 | q⁻²·q⁵ = q³; i = 0 subline q⁵O[[q⁵]] | Cusp twist and dual exponent match | Retained |
| §5.5 high-weight vanishing | n = 2; zero lattice | full obstruction cusp weight 0 has dimension 0; subcuspidal full weight 0 may have constant dimension 1; zero lattice groups 0 | Thresholds differ | Retained |
| §5.6 type adjoints | Diamond d = 2 in 𝔽₇; trivial type | inverse 4, product 1; trivial type rank 1 recovers old operator | Dual normalization meaningful | Retained |
| Layer 5 common-cover example | q = w⁷, u = w⁵ | w⁷/w² = w⁵ = u, a nonunit at the cusp | Compactified lines differ | Retained |
| §6.1 type boundary/degeneracy | Cusp characters (1,−1), (−1,1); rank-two type | traces 0,0; scalar pairing determinant 4 remains a unit | No transitivity assumption | Retained |
| §6.2 contragredient balancedness | trace 5, determinant 6, diamond 2 over 𝔽₇ | dual trace 5/6 = 2; diamond 4; defect 2−1 = 1 | Inverse residual ideal required | Retained |
| §6.3 type Galois image | Two components exchanged; trivial type | equivariant zero on one gives 0 on both; diag(0,1) has unequal restrictions; trivial type traces 3,2,2 | Component compatibility essential | Retained |
| §6.4 type R = T/rank | Diamond 2 versus dual 4; generic fibre dimension 0 or 1 | 2·4 = 1; torsion Tʳ has generic dimension 0 for every r, while a one-dimensional nonzero fibre forces r = 1 | No torsion rank-one inference | Dependencies synchronized |
| §6.5 twist-general consequences | k = 𝔽₃, cubic ψ; finite images a,b,c | ψ³ = 1, ψ⁴ = ψ, ψ² ≠ 1; image size bound abc | Normalized ring belongs to the twist | Full headline hypotheses synchronized |
| §7.1 character data | C₃; C₂ | squares enumerate 1,g²,g; C₂ squares both elements to 1 | p odd needed | Retained |
| §7.2 scalar comparison | k[x,y,z]/m²; k[ε]/ε⁴; self-extension pairs | both lengths 4; socle dimensions 3,1; both determinant-normalized pairs equal {ψ¹ᐟ²,ψ⁻¹ᐟ²} | Type three and variable determinant not inferred from length | Contract specifies local quotients |
| §7.3 integral twisting | O[C₃]; two orders in K² | squares 1,g²,g span rank 3; congruence order has index |k| in O² | Generic equality alone insufficient | Retained |
| §7.4 scalar multiplicity | Gross bounds 3≤d≤4; 2-dimensional isotypy | {3,4}∩2ℤ = {4}; multiplicity 4/2 = 2 | Recognition applies after requested annihilation | Narrowed gap |
| §7.5 quotient Jacobians | p = 3; induced exceptional datum | p ≠ 3 is false at 3; order-three exception not admitted | Separate restrictions retained | Retained |
| §8.1 minimal Bianchi datum | Residual flat and ordinary; diag(χ,χ⁻¹) inertia | determinant χχ⁻¹ = 1; precedence chooses flat (one condition, not two alternatives) | Exact local type required | Retained |
| §8.2 projective levels/types | Scalar aI; quadratic ψ | determinant a²; ψ(a²) = 1, whereas a nonquadratic character need not give 1 | Spherical quadratic selector descends | Dependencies synchronized |
| §8.3 Bianchi image | U eigenvalue 2, diamond 3 over 𝔽₇; torsion module k | new eigenvalue 3·2 = 6 ≠ 2; image may have π = 0 | Uniformizer dependence retained | Retained |
| §8.4 Conjecture A | T = k[ε]/ε², quotient T/(ε); Q empty versus Qₐ | ε ≠ 0 in T and 0 in quotient; one supplied level versus arbitrarily many required | Whole-image/all-level data necessary | Reaffirmed in §10.1 |
| §8.5 selected surjection | Roots 2,4 over 𝔽₇; repeated 1,1 | product 1, trace 6, derivatives 5 and 2; repeated derivative 0 | Distinctness recovers root | Retained |
| §9.1 Bianchi cover | Δ = 1; Δ = C₃ | regular module ranks 1,3; coinvariants rank 1; augmentation [g] = 1 | Stabilizers are retained | Retained |
| §9.2 selected comparison | Residual roots 2,4 at norm 1; repeated 1,1 | (1+1)²−6² = −32 = 3 = −(2−4)²; α²−1 = 3; repeated determinant 0 | Both required units explicit | Residual-only supplier gap |
| §9.3 degree-three hypothesis | Stabilizer C₃ in characteristic 3; coarse point | dim H₃(C₃,k) = 1; dim H₃(point,k) = 0 | Does not prove localized vanishing | Named H₃(3), still conditional |
| §9.3 boundary comparison | F = ℚ(i), p = 3; F = ℚ(√−3) | diag(i,1) has order 4, 4 mod 3 = 1; discriminant −3 divisible by 3 | Boundary torsion is prime to 3 in allowed case | Separate non-neat gap |
| §9.3 H₀ action | Degree 2 exchanging two components | matrix [[0,2],[2,0]] has eigenvalues 2,−2; 2I has only 2 | Component permutation matters | Retained |
| §9.4 balanced Bianchi homology | Δ = 1, M = Oʳ⊕kˢ; rank bound r = 2, Tor correction 1 | Tor dimensions r+s,s give defect r; 2−1 = 1 | Rank/Tor inequality retained | Boundary dependency explicit |
| §10.1 patching assumptions | q = 1; p = 3 | A∞ = O, zero variables; H₃(3) alone supplies 0 of the required R_Q→T_Q maps | Conjecture A needed at both prime ranges | Disjunction corrected |
| §10.2 Bianchi R = T | R = T = k, H = k; H = 0 | rank 1 with π = 0; zero module annihilator R | Nonzero module ensures faithful image, not O-flatness | p = 3 assumption named |
| §10.3 complete intersection | q = 1, f = π² and f = 0 | quotient dimensions 0 and 1; first has length 2 and one regular equation | Dimension-zero criterion not broadened | Standing hypothesis synchronized |
| §10.4 actual generic rank | Global multiplicity 1, local dimensions 2,3; S-only | contribution 1·2·3 = 6; product of one-dimensional factors 1 | Rank follows actual selectors | Standing hypothesis synchronized |
| §10.5 lifting | T killed by π; O characteristic 0 | a unital O-point would send 0 = π·1_T to nonzero π in O | An O-valued lift forces nonzero generic fibre | p = 3 implication names H₃(3) |
| §10.6 GL/PGL obstruction | C₃; order-9 class in 𝔽₁₉× | group algebra rank 3 versus scalar rank 1; α = g³ gives α⁶ = 1 but α² = g⁶ ≠ 1 | Order-9 Kummer condition essential | Standing hypothesis synchronized |

The table recomputes the common Frobenius/inverse, determinant-square, selected-root, contragredient and stabilizer witnesses wherever the repaired interfaces use them. No new padding declaration was added to mirror any Check.

## Consequences for maintainers

The two headline theorem names are unchanged, but both signatures now require explicit η and its continuity, finiteness, unramifiedness, twisted residual and twisted minimality data. All local Galois domains use the unfolded automorphism group. IsPlaceAbove and the local IsArithFrobAt are deleted; twist is new. The Frobenius conclusion now uses Mathlib's IsArithFrobAt on ideal primes.

The gaps selected-root-residual-only and non-neat-bianchi-boundary require work at the existing suppliers; localized-three-primary-stabilizers still asks for a proof of the explicitly assumed H₃(3). The rigidifying-prime gap is gone, and jacobian-residual-isotypy now requests only annihilation. These changes do not certify any supplier extension or settle H₃(3). No files of another roadmap, merge-order file, pull-request text, metadata or source manifest were edited. No commit was made.
