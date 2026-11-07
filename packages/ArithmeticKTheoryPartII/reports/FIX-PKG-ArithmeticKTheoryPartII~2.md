# ArithmeticKTheoryPartII repair report

## F01 (P1) — applied

G1 is folded into the existing `graded-moore-realization` contract, owned by EtaleHomotopyTypes EH.5, EH.6 and G7. G2 and G3 are deleted from the gaps list: §§8.3 and 8.6 exclude those boundaries. Their mathematical cautions remain in the README, including the explicit denominator 6 at p=3. Every remaining gap has a supplier, section and matching README contract.

## F02 (P2) — applied

Duplicate supplier requests for the inverse-bar comparison and continuous universal property are deleted in both contract lists. Section 5.3 now specifies the differential and inverse-reversal chain isomorphism in every degree; §7.1 retains ownership of continuous universality. The C₃/𝔽₇ boundary is 1 after inversion, versus 3 without it; the degree-three signs and noncommutative products also agree with the pin.

## F03 (P2) — applied

The topological retract now comes from SymplecticGeometry, CotangentLagrangian §§C2.0–C2.1; ClassFieldTheory Layer 13 names its Hilbert-field and class-group declarations. Both gaps retain only the missing refinements. Scope, §1.1, and Layer 1 dependencies agree. Evidence: `TauCetiRoadmap/SymplecticGeometry/CotangentLagrangian/README.md:162` and `TauCetiRoadmap/ClassFieldTheory/README.md:1828`. For class group zero at q=3 the p-Hilbert field is K₃.

## F04 (P2) — applied

Quillen’s calculation is credited to GeneralAlgebraicKTheory §§13.8b–c `finiteFieldKGroups` throughout scope, contracts and Layer 7. The sphere-unit gap now requests only surjectivity. Section 7.6 owns the actual odd-twist restriction and reduction isomorphisms, with hypotheses, route and computed Checks. The source is FGV lines 2190–2194, using exponent 2k; its displayed exponent 2k−1 is a misprint.

## F05 (P3) — applied

Corrected Conventions to pp. 6–7; §0.2 to pp. 10–11; §1.2 to pp. 11, 22; §2.1 to Definitions 4.3–4.4; §3.4 to pp. 19–21; §6.2 to §§7.2–7.3, pp. 40–42; both §8.5 references to FGV line 43. References and manifest now identify the author-copy numbering without claiming an unverified journal collation.

## F06 (P3) — applied

Section 2.4’s ratio of the two realized classes becomes their product, matching FGV line 1234. Its construction tensors the initial lines by X and X⁻¹, and all three Checks distinguish this from tensoring both by X. Section 3.5’s four-class difference remains the matching generation argument. The new native headline states the same product modulo a nonzero principal fractional ideal.

## F07 (P3) — applied

Section 4.2 embeds the ambient A, including A_*, and retains polarized selected-factor isomorphisms as arrows. This matches FGV lines 2775–2785. The new basepoint Check explains why embedding only eA leaves unrigidified data. The simplicial scheme is consistently 𝒵(T), with 𝒵_ℂ(T) in §4.3; §4.4 uses the same notation.

## F08 (P3) — applied

Section 8.4 separates integral stability, integral KSp finite type, the equivariant Hurewicz quotient and the Hodge pairing, each with its own Needs line. The pairing explicitly requires 2m≤2p−3. Its Check now uses odd m<p and tests even m=4 at p=5. The Lean documentation explicitly identifies finite-rank homology stability as a supporting native-carrier target.

## F09 (P3) — applied differently

The proposed missing-conjugation reason is false: the pin has `FractionalIdeal.ringEquivOfRingEquiv` in `Mathlib/RingTheory/FractionalIdeal/Operations.lean:953`. Section 2.4 is now stated as `exists_cm_lines_with_ideal_product`, using two simple definitions on native fractional ideals, semilinear conjugation and trace duals. Its README definitions have APIs and three Checks each. The old missing-carrier explanation is deleted; no ST functor is needed.

## F10 (P3) — applied

Removed Λ-projectivity from both section-forgetting assertions in §5.4, as in FGV lines 1760–1774. The route explains the derived coinvariants/Hom argument for arbitrary M. A new Check uses Λ=ℤ/9 and the nonprojective sign module ℤ/3: H₀=H₁=0, so the section is nevertheless unique. The finite-free application hypothesis remains attached to the applications.

## F11 (P3) — not actionable in this package: full-cover descent needs an ArithmeticKTheory supplier extension

The suggested substitution is not the supplier’s statement: at q=9,k=2, §6.11 uses ℚ(μ₉^(⊗3))=K₃, not K₉; the missing extension has degree 3. Added `gap:full-cyclotomic-h2-descent`, assigned to ArithmeticKTheory §6.11. Section 0.4 and Layer 0 dependencies now consume that contract and the Bott/duality-transfer edges; the duplicated duality route is deleted. The supplier extension requires its owner.

## F12 (P3) — applied

Replaced §7.6’s duplicated phrase with the precise restriction, reduction and sphere-unit route. Deleted all twelve catalogue-fragment sentences; their mathematical uses remain in the targets and dependencies. The Charney author is an array and its locator is Corollary 4.5. Its settled `uncertified` status is unchanged.

## Required checks and outcomes

- Elaboration of `packages/ArithmeticKTheoryPartII/Suggested.lean` by the required `lake env lean` invocation from the pinned content checkout: exit 0. The only diagnostics are `declaration uses sorry` warnings on the two headline theorems, at lines 52 and 95. There are no TauCeti imports, so no missing object-file build was needed.
- A scratch copy of the final module with `#check @name` for all four declarations elaborated with exit 0. `exists_split_prime_with_signs` retains p, n, primality, p≠2, n>0, Field, NumberField, the prime-power cyclotomic instance, IsCMField and ε. Both new definitions retain Field, NumberField and IsCMField explicitly. `exists_cm_lines_with_ideal_product` retains all those arithmetic binders, Φ, the exactly-one-conjugate-embedding condition, L and L≠0. Its conclusion includes both perfect skew lines and a≠0. No binder disappeared; all four elaborated types match the README.
- The Lean file contains two headline theorems with `sorry` and two definitions with real bodies, one `import Mathlib`, no admitted data, no `set_option`, no boundary declarations and no examples. The original headline name is unchanged. The three added names all occur in the README.
- The required dependency command exits 0, with exactly:

```text
depcheck: 48 roadmaps, 544 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. Neither the order file nor tooling was edited.

- The citation resolver reports no cross-roadmap citation or Lean name found nowhere. Its notice that it cannot check pinned Lake packages was handled by opening the supplied pin sources and elaborating against them, rather than treating that notice as evidence of absence.
- All 16 top-level gaps have precisely `slug`, `needs`, `supplier`, `section`; their needs sentences match the README contracts exactly. G1 has one surviving owner through its existing slug; G2 and G3 are not prerequisites. All non-gap fields of `design/plan.json` are unchanged.
- The source manifest parses as `tauceti-roadmap-sources/v1` with three works and one key per work. FGV and Borel were read from the supplied legal cached texts; no new work required fetching. Charney remains settled as uncertified. No missing-reference request was needed.
- `git diff --check` passes. The initial whitespace diagnostics on four edited dependency paragraphs were fixed. No other gate failure was supplied with this job. No commit was made.

## Pin, source and ownership audit

The actual pins are those in the supplied content checkout’s `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The frozen design’s baseline records older revisions; it was not used as the library pin.

Native declarations inspected include `Representation` (`Mathlib/RepresentationTheory/Basic.lean:48`), `LinearMap` (`Mathlib/Algebra/Module/LinearMap/Defs.lean:84`), the Picard/invertible-module definitions, `groupHomology.inhomogeneousChains.d` and `groupHomology` (`Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:125`, `:228`), `CategoryTheory.Under` (`Mathlib/CategoryTheory/Comma/Over/Basic.lean:631`), `Matrix.symplecticGroup` (`Mathlib/LinearAlgebra/SymplecticGroup.lean:101`), `NumberField.maximalRealSubfield` (`Mathlib/NumberTheory/NumberField/InfinitePlace/TotallyRealComplex.lean:125`), and `NumberField.IsCMField` and integer conjugation (`Mathlib/NumberTheory/NumberField/CMField.lean:69`, `:236`). The native absolute homology has no relative/continuous object. The representation carrier adds no continuity hypothesis.

For F09, `FractionalIdeal.map` at `Mathlib/RingTheory/FractionalIdeal/Operations.lean:67` does require a base-algebra map, but the same file’s semilinear transport at line 953 supplies the needed conjugation. `FractionalIdeal.spanSingleton` is at line 569; `FractionalIdeal.dual` is at `Mathlib/RingTheory/DedekindDomain/Different.lean:229`. The latter is zero on the zero ideal by definition; the predicate uses the unit ideal and explicitly excludes B=0 and δ=0. The pairing and type are concrete conditions, not unconstrained fields.

Tau Ceti’s compatible-structure theorem (`TauCeti/Geometry/Symplectic/ExistsCompatible.lean:188`) requires the positive convention ω(v,Jv)>0. Its ideal Artin map and prime normalization were inspected at `TauCeti/NumberTheory/NumberField/Ideal/ArtinMap.lean:181`, `:218`. The Gaussian sign witness remains consistent in Conventions, §§1.1, 2.2, 4.3, 8.4 and 8.6.

Roadmap citations were resolved using the supplied index at the open heads and the main checkout. The audit covered every exact supplier contract: ArithmeticKTheory §§3.1–3.5, 5.2, 6.11, 6.15–6.16, 7.1–7.5; GeneralAlgebraicKTheory §§7.1–7.7, 13.8b–c; SchemeKTheoryOperations §§6.1, 6.9–6.11; StableHomotopyKTheory §§3.20, 3.34–3.37, 4.21–4.27, 5.1–5.19, 7.1–7.17, 7.28; GeneralizedCohomology G2.1–G2.8, G5.4–G5.6; TopologicalKTheory T4, T5, T7; GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11; HermitianKTheoryOfPoincareCategories Layers 4–6; ComplexMultiplicationAndExplicitReciprocity §§1.3, 2.1–2.2; AbelianSchemesAndArithmeticModuli §§A5.5, A5.8; the stated PELModuli sections; ClassFieldTheory Layers 11–13; Chebotarev Layer 10; ArithmeticGaloisDuality R02.1, R02.2, R02.4.3; EtaleCohomologyFoundations F.0.2–F.0.3, F.4.0–F.4.6; IntegralIwasawaTheory §§3.1, 7.4, 12.3; KTheoryFiniteLocalFields §§1.1–1.2; ArithmeticLocallySymmetricSpaces ALS.0.8, ALS.1.5–ALS.1.6, ALS.2.3–ALS.2.4; AlgebraicTopology Stage 6. GeneralizedCohomology’s Gk.n locators refer to numbered items within Gk. The new SymplecticGeometry citation was checked in its actual CotangentLagrangian sub-roadmap.

ChromaticHomotopyTheory and EtaleHomotopyTypes are absent from the open-head/main lookup; their supplied board designs were inspected at CH.2–CH.3 and EH.5–EH.6/G7 respectively. BorelRegulators §2.1 was checked in its board design and remains a scope boundary. No unsupported supplier theorem is inferred from these designs: missing interfaces stay explicit gaps.

Object searches used the roadmap grep service on main and open heads and `rg` on board packages and both pinned libraries. The symplectic polar comparison belongs to SymplecticGeometry; generic polarized CM classification and Serre tensor remain with ComplexMultiplicationAndExplicitReciprocity. The prescribed cyclotomic ideal-product theorem is the existing §2.4 specialization, beyond that generic classification. Integral arithmetic symplectic stability remains this roadmap’s §8.4 target. No occurrence of the three added fully qualified names was found in another readable roadmap. No additional sibling-checkout paths were supplied or inspected.

FGV locators were checked directly at lines 271, 443–472, 503–509, 1082–1124, 871–882, 1865–1874, 43, 1232–1274, 1735–1774, 2154–2194, 2773–2788 and 2223–2333. Borel’s polynomial calculation is supported by borel1974 lines 1154–1159, 1194–1198 and 1246–1253. No journal-version collation or access to Charney’s paywalled text is claimed.

## Adversarial mathematics record

Each row records a concrete specialization or algebraic witness, not a proof by elaboration. Product and chain identities were recomputed after the relevant changes. No assertion about the omitted Hurewicz endpoint or the excluded factorial boundary is used.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| Coefficient and prime conventions | p=3,n=1; n=0; p=2 | q=3; n=0 gives q=1 and 1=0 in Λ; 2=0 in 𝔽₂ | positive n and odd p are essential to these formulas | Retained |
| Arithmetic Frobenius and dual twists | q=5, χ=2, twists 3 and −1 | 2³=3; 2⁻³=2; 2⁻¹=3 modulo 5 | arithmetic/geometric and negative twists distinguished | Retained |
| Dualization projectors and hyperbolic normalization | rank one over ℤ/5 | c_B H=2; (1/2)·2=3·2=1; p_++p_−=1 | factor 2 cannot be dropped | Retained |
| Unreduced suspension convention | point | π₀Σ∞₊point=ℤ, unit 1; reduced suspension has unit image 0 | preserves the required unit | Retained |
| Gaussian alternating/Hermitian sign | δ=i/2, basis 1,i | h(1,1)=1; h(1,i)=−i; ω(1,i)=−1; ω(1,−i)=1 | native compatible structure is −J_H | Retained |
| Tangent versus Hodge normalization | odd m=1; even m=2 | tangent-normalized evaluations 1 and 0 on KSp; raw evaluations −1 and 0 | sign used by §§4.3, 8.4, 8.6 agrees | Retained |
| Ordinary versus completed coefficients | integral ℤ and discrete ℤ_p in degree 1 | ℤ⊗ℤ_p=ℤ_p; ℤ_p^δ⊗ℤ_p is the ordinary tensor product, not its completed quotient | finite-type integral restriction retained | Retained |
| §0.1 cyclic Bott normalization | q=5,a=2; trivial character | β↦2β; Bockstein values 1 and 2; trivial-character Bott image 0 | determines the nonzero class | Retained |
| §0.1 powers and mod-three exception | q=5 versus q=3 | 5>4; 3≤4; degree of β³ is 6 in both | only the first case uses the split polynomial assertion | Retained |
| §0.2 Picard components and loops | a field F; zero ring | π₀=1, π₁=F×; zero-ring unit group is the one-element group | components do not replace the groupoid | Retained |
| §0.2 fractional-ideal arrows | 2ℤ→3ℤ | (3/2)·2ℤ=3ℤ; 3/2∉ℤ× | fraction-field units required | Retained |
| §0.2 tensor map, unit and base change | unit line over ℤ, then 𝔽₅ | 1⊗1=1; K₀ images 1→1 | tensor and additive zero distinguished | Retained |
| §0.3 Picard–Bott formula | L=O_q; k=1 | [L]−1=0 so image 0; degree 4−2=2 and Bott exponent 1 | reduced class and degree agree | Retained |
| §0.4 transfer descent and sign slots | q=3,k=1 | Pic(O₃)/3=0 and K₂(ℤ;ℤ/3)=0; positive slot is H²(2) | no degree-one claim follows | Route through supplier gap |
| Full-cover versus twist-field descent | q=9,k=2 | χ³ on (ℤ/9)× has image size 2, versus full group size 6; omitted degree is 3 | supplied §6.11 is not the full-cover statement | New named gap and Check |
| §0.5 Artin–Bott square | q=3,k=1 | class kernel 0; H₁(C₂;𝔽₃(sign))=0 by averaging; relative H₁(C₂,C₂)=0 | square and relative identification have zero terms | Retained |
| §1.1 Betti/Hodge maps | symplectic plane | Betti rank 2; Hodge rank 1 | rules out zero or equal-rank maps | Retained |
| Topological symplectic/unitary comparison | diag(2,1/2); rank 0 | P=A,U=1; path endpoint determinants 1=1; rank-zero group is 1 | polar contraction stays symplectic | Imported owner, new Check |
| §1.1 conjugation on ku | degrees 2 and 4 | ψ⁻¹ eigenvalues −1 and +1 | negative factor occurs at odd Bott exponent | Retained |
| §1.2 finite periodicity and tower | q=3,5,25 | 2p^(n−1)(p−1)=4,8,40 | no uniform period follows in the inverse limit | Retained |
| §2.1 perfect skew coefficient line | ℚ(i), B=O, δ=i/2 | (δ)B bar B=(i/2)=𝔡⁻¹ | object satisfies perfection | Retained |
| §2.1 automorphisms | ℚ(i); odd q=3 | norm-one groups μ₄ and μ₆; −1 has norm 1 and is not in μ₃ | μ_q is only the selected subgroup | Retained |
| §2.1 tensor involutions and signs | two skew coefficients; (O,−1) | (−ι)⊗(−ι)=ι⊗ι; positive type changes to its complement under −1 | P⁻ is not closed under its own tensor law | Retained |
| §2.2 trace realization dimension | ℚ(i) and multiplication by 2 | lattice rank 2, genus 1; determinant 4 and form scaled by 4 | isogeny is not an isometry | Retained |
| §2.3 split prime with prescribed signs | q=3,t=±7; inert prime 2; t=3 | 7=9−3+1=N(3+ζ₃); signs ±1; 2 is inert; 3 has coincident conjugate prime | nonzero, away-p, distinct-prime conditions matter | Original Lean theorem retained |
| §2.4 native fractional-ideal conjugation | 0,1,(1/2) in ℚ(i) | conjugates 0,1,(1/2); conjugating twice gives original values | correct domains including fractional input | New definition and Checks |
| §2.4 conjugation of products and nontrivial primes | (2+i),(2−i) | conjugate product=(5); product of conjugates=(5); identity model would give (2+i)² | preserves product and detects conjugation | New API and Check |
| §2.4 principal ideals and inverses | a=2+i | bar((a)⁻¹)=(2−i)⁻¹; bar(a)=2−i | semilinear transport has the correct direction | New API |
| §2.4 perfect skew-line predicate | B=O, δ=i/2 and i | trace-form matrices have determinants 1 and 4; ideals (i/2) and O have index 4 | equality with inverse different excludes merely integral forms | New predicate and Check |
| §2.4 type and zero-form controls | δ=i/2, −i/2, 0 | embedding imaginary values (1/2,−1/2), (−1/2,1/2), (0,0) | type reverses under −1; zero form excluded | New Checks |
| §2.4 change of representative | B↦2B, δ=i/2↦i/8 | (i/8)·2·2=i/2 and signs stay (+,−) | scalar normalization fixes rescaling | New API and Check |
| §2.4 product realization | initial classes 1,d=l/bar l; twists x,x⁻¹ | x·d x⁻¹=d; same twists give d x²; in C₃, x·x⁻¹=1 but x/x⁻¹=x² | product matches source and downstream four-class argument | Ratio changed to product |
| §2.4 CM-type hypothesis | q=5 | two conjugate pairs give 2²=4 types; empty set selects 0 from each pair | exactly-one condition excludes empty/double choices | New Lean headline |
| §3.1 CM Bott class degree and isometry | k=1,2; same line twice | degrees 2,6; exponents 1,3; difference of identical classes 0 | fixes the exponent and isometry invariance | Retained |
| §3.2 type-character formula | q=5, Φ={1,2},{4,2}, i=1,2 | sums 3,6≡1 at i=1; 5≡0,20≡0 at i=2 | odd degree has unit difference 2; even degree does not | Retained |
| §3.3 reduced Betti transfer | q=5, unit term | Σa=10≡0; Σa³=100≡0; Σa⁴=4≠0 | oddness kills the unit transfer | Retained |
| §3.4 splitting and degree-zero convention | p=3, i=0,2,3 | plane has Betti value 2 mod 3; KSp₂ has ℤ₃ Hodge factor; KSp₃=ℤ/3 with zero Hodge factor | detects both factors and degree-zero normalization | Locator repaired |
| §3.5 four-class generation | q=5, transferred ideal value 1 | Hodge difference 0; Betti value 2; 3·2=1 | four classes remain compatible with product realization | Recomputed |
| §3.6 periodic sign table | i=−2,−4,1 | ψ⁻¹ on KU has signs −1,+1; positive K₁ comparison factors vanish | no ordinary K₁ isomorphism inferred | Retained |
| §4.1 Γ object and fiber sums | T={*,a,b}, grades (1,2); T={*} | fold grade 3; discard b gives 1; at {*} selected genus 0 | selected-factor and ambient objects distinguished | Retained |
| §4.1 composition and Segal comparison | two folds, then identity | (1+2)+3=1+(2+3)=6; identity preserves (1,2); one-point selected groupoid has one arrow between objects | coherence has the expected values | Retained |
| §4.2 ambient rigidification | T={*}, A_* of genus 1 | selected dimension 0 but ambient dimension 1; embedding eA loses that datum | embedding all of A is necessary | Corrected |
| §4.2 Čech faces and degeneracies | simplicial degrees 0,1,2 | 1,2,3 embeddings; 0,1,2 adjacent isomorphisms; face from degree 1 has one embedding | nerve and indexing agree | Notation unified |
| §4.3 analytic symplectic model | g=0,1 | BSp₀ is point; Sp₂(ℤ)=SL₂(ℤ), H₁=ℤ/12 | isotropy survives analytic realization | Retained |
| §4.3 group completion | genus 0,1 | ℕ→ℤ sends 0↦0,1↦1; −1 is absent before completion | zeroth Segal map is not already an equivalence | Retained |
| §4.4 left arithmetic action | identity, σ,τ | 1·A=A and σ·(τ·A)=(στ)·A; σ then τ on structure maps composes the corresponding inverses | inverse in the structure-map formula has correct direction | Retained |
| §4.4 mod-three realization and grading | g=1, p=3,5; countable point coproduct | H₁(SL₂ℤ;𝔽₃)=𝔽₃, with 𝔽₅ it is 0; each point grade has H₀=𝔽_p | Moore modification and discrete grades required | Gap ownership unified |
| §4.4 conjugation and coefficient reduction | c²; q=25→5 | c²=1; Betti action of c is 1; 2 mod 25 reduces to 2 mod 5 | action and coefficient maps compatible | Retained |
| §4.5 finite-genus detection | q=5 | CM genus φ(5)/2=2; adding genus 2 gives g=4=φ(5) | rational stabilization has correct rank | Retained |
| §5.1 reciprocity at identity and conjugation | σ=1,c | Artin product at 1 is 1; c translates by (O,−1), reversing type | translating line cannot always be positive | Retained |
| §5.1 conjugation-paired lifts | minus class a of order 3 | c a c⁻¹=a⁻¹; a c a⁻¹=a²c≠c | paired lifts need not commute with c | Retained |
| §5.1 Bott-linearity | k=2, χ=2 modulo 5 | Bott exponent 3; character scalar 2³=3 | tensor naturality keeps the specified odd Bott power | Retained |
| §5.2 split extension category | G=H=1, M=T=Λ; M=0 | πs=1_M; sπ(m,t)=(m,0); at M=0 initial extension is 0 | section equation and kernel maps distinguished | Retained |
| §5.2 cocycle and action law | C₂ sign over ℤ/5 | c(m,t)=(−m,t+m); c²(m,t)=(m,t); α(c²,m)=0=−m+m | action follows cocycle law | Retained |
| §5.3 relative H₀ and pair quotient | H=G; G=1 | C₀ quotient M/M=0; when H=G all chain quotients and H₁ are 0 | correct relative carrier | Retained |
| §5.3 left-coefficient relation | C₂ sign over ℤ/5; G=ℤ trivial | [c²]m=[c](−m)+[c]m=0; relative H₁=ℤ/5; [r]m↦rm for ℤ | coefficient action cannot be omitted | Retained |
| §5.3 inverse-bar comparison in degree 1 | C₃ acting by 2 on 𝔽₇ | d_FGV=2−1=1; d_native=4−1=3; d_native T₁=2−1=1 | inversion is required | New all-degree formula |
| §5.3 comparison in degrees 2–4 | every basis tuple of C₃ and S₃ sign action | differences d_native T−T d_FGV are 0 on 9,27,81 and 36,216,1296 tuples; d² coefficients all 0 | higher signs and nonabelian products agree | Recomputed exhaustively |
| §5.3 nonabelian cocycle | S₃, transposition s and 3-cycle r | a(sr,1)=1=1+0; a(s²,1)=0=−1+1 | tests product order and coefficient action | Retained |
| §5.4 universal extension and chosen section | C₂, H=1, sign ℤ/5 | kernel ℤ/5; universal action c(m,t)=(−m,t+m); alternative equivariant section (m,2m) maps to (−m,3m) | initiality with section differs from unsectioned initiality | Retained |
| §5.4 forgetting section for nonprojective M | Λ=ℤ/9, M=ℤ/3 sign, H=C₂ | c−1=−2 is invertible; H₀=H₁=0; section projector (1−c)/2 | no projectivity hypothesis needed | Generality repaired |
| §6.1 finite arithmetic extension | q=5, σ=c | kernel eigenvalue +1, quotient −1; projectors (1+c)/2,(1−c)/2 act as 1,0 on the corresponding factors | unique conjugation section | Retained |
| §6.2 universal cocycle identification | σ=c; k=2, χ=2 modulo 5 | α(c,m)=0=[c]m; type coefficient χ³=3 rather than χ²=4 | quotient and exponent agree | Locator repaired |
| §6.3 finite initiality normalization | q=5, kernel element x | c_B(3H(x))=6x=x; zero kernel gives identity quotient | normalized inclusion is (1/2)H | Retained |
| §7.1 completed relative kernel | Γ=ℤ_p trivial action, H=1; Γ=H=1 | H₁^cts=ℤ_p and 0 respectively | topology and pair both matter | Supplier request trimmed |
| §7.1 exact reductions and continuous cocycles | C₂ sign, M=ℤ_p, H=1 | universal kernel ℤ_p reduces to ℤ/p^n; c²=1 in both; map between finite-free quotients has Tor₁=0 | finite-free and compact limit conditions retained | Local universal property retained |
| §7.2 p-adic universality | p=3,k=1; p=691,k=6 | K₂(ℤ;ℤ₃)=0, quotient ℤ₃(1); numerator B₁₂=−691 gives nonzero arithmetic kernel by its supplier contract | includes regular and irregular cases | Retained |
| §7.3 local relative comparison | q=3 | H₃=K₃; D₃=C₂; H₁(C₂,C₂;ℤ/3(1))=0 on both finite pair models | decomposition quotient is not the class kernel | Retained |
| §7.4 local initiality and uniqueness | p=3,k=1; sign local element | zero-kernel section is identity; c−1=−2 is a unit, so local Hom to a trivial module is 0 | unique local splitting does not imply global splitting with nonzero kernel | Retained |
| §7.5 negative twists | q=5,k=0 and 2 | exponents −1≡3 mod 4; degrees −2 and 6 differ by 8 | finite periodic transport agrees with twist | Retained |
| §7.6 restriction/reduction comparison | (p,k,ℓ)=(3,1,2),(5,1,2) | ℓ²−1=3; primary groups ℤ/3 and 0 respectively on both sides | correct twist 2k and actual map hypotheses | New target and Checks |
| §7.6 topological-generator hypothesis | p=3,k=1,ℓ=19 | 19²−1=360 has v₃=2, yielding ℤ/9 locally versus ℤ/3 globally | nongenerating prime cannot replace the auxiliary generator | New negative-control Check |
| §7.6 sphere and symplectic units | p=3,k=1 | Betti composite is ×2, inverse scalar 2 modulo 3; K₃(ℤ;ℤ₃)=ℤ/3 | nonzero quotient is reached | Gap restricted to sphere surjectivity |
| §7.6 trivial arithmetic action | p=3,5, k=1 | rational unit image gives trivial action on ℤ/3; 5-primary part of ℤ/48 is 0 | includes the zero case | Retained |
| §7.7 conjugation-fixed prime criterion | torsors ℤ/3 minus, plus and 0 | fixed-point counts 1,3,1; total sizes 3,3,1 | Vandiver criterion uses fixed primes | Retained |
| §8.1 integral indecomposable denominator | point; S¹×S¹ | point quotient 0; torus Q₁=ℤ_p² and mixed degree-two product maps to 0 | positive-degree factors essential | Retained |
| §8.1 Bockstein-product quotient | RP∞,p=2 | surviving low degrees 1,3,7; degrees 5,9 map to 0 | ordinary I² alone is too small | Retained |
| §8.1 primitive pairing through quotient | tangent degree-two generator; torus product | normalized fundamental pairing 1; positive product pairing 0 | tests nonzero primitive and decomposable vanishing | Retained |
| §8.2 product formula and Tor | K(ℤ/p,1)² | mixed Tor in degree 3 is ℤ/p; β₁(xy) maps to 0 in Qᶦⁿᵗ | enlarged denominator removes Tor term | Retained |
| §8.3 low Hurewicz range | p=3, E=ΣHℤ or ΣH(ℤ/3) | degree-one maps ℤ₃→ℤ₃ and ℤ/3→ℤ/3, generator↦generator; first omitted endpoint 4 | no endpoint splitting used | Retained |
| §8.4 integral stabilization | i=0,2 | rank thresholds g>5 and g>9; H₀ maps ℤ→ℤ by 1↦1 | strict conservative range is consistent | Separate target |
| §8.4 integral finite-type route | finite quotient C₂, trivial ℤ coefficients | H₀(C₂;ℤ)=ℤ; H_(2r+1)=ℤ/2; H_(2r)=0 for r≥1 | finite-index route has finitely generated terms | Separate target |
| §8.4 equivariant Hurewicz application | p=3,m=1; p=5,m=3,4 | 2≤3; 6≤7; 8>7 | even m=p−1 is outside the range | Separate target and repaired Check |
| §8.4 normalized Hodge pairing | m=1 and m=2,p≥5 | odd Bott lift has normalized/raw values +1/−1; even negative ku summand and pairing are 0 | sign and parity are consistent | Separate target |
| §8.4 odd application inequality | p=5,m=3; p=3,m=1 | m≤p−2 gives 6≤6 and 2≤2 | characteristic-number applications fit the safe range | Corrected |
| §8.5 stable polynomial Hodge generators | degrees 2,4,6; χ=2 over ℚ₅ | bases {x₂},{x₂²},{x₂³,x₆}; first two cohomology weights 1/2,1/4 versus homology 2,4 | cohomology character is inverse | Locator repaired |
| §8.6 Bernoulli divisibility | n=11,p=691; empty partition | B₁₂=−691/2730; application degree 22≤1378; empty product integral 1 has false antecedent | nonempty Bernoulli condition matters | Retained |
| §8.6 strict factorial boundary | n=p=3 | ch₃(L)=c₁³/6; v₃(6)=1, so 6 is not a 3-adic unit | equality boundary is excluded | Explicit computed Check |

## Maintainer notes

F11’s full-cover arithmetic descent remains an explicit supplier gap, not an invented export of ArithmeticKTheory. Its route and all other residual gaps are conditional supplier contracts. A fresh independent mathematics review is still required; this report does not certify its own acceptance.

The only new Lean names are `conjugateFractionalIdeal`, `IsSkewCMLine` and `exists_cm_lines_with_ideal_product`, in the existing ArithmeticKTheoryPartII namespace. No prior Lean name was removed or changed. The simplicial notation changes only in prose. Consumers of §2.4 should use its product formulation with the four-class argument of §3.5.

The edit restriction freezes every non-gap part of `design/plan.json`. Its older target catalogue still contains the ratio variant, earlier locators and proof-route prose, and its summary still mentions three legacy gaps. These fields were not edited; the package README and acceptance file carry the repaired statements. The ratio variant is mathematically true but is not the statement now attributed to Proposition 4.7. No other roadmap, merge-order file, tooling, metadata or pull-request text was changed.
