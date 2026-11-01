# Review of ComplexMultiplicationAndExplicitReciprocity (pull request #1254 at 0c6c6e2)

**Verdict:** needs changes

## R01 (P1) — The equation-to-scheme comparison is attributed to a supplier that excludes it

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/README.md:150`, also lines 18, 345 and 403. The contract claims “Weierstrass elliptic curve↔elliptic scheme comparison”.

**Claim:** EllipticCurves Layer 1 supplies the comparison transporting the equation-level endomorphisms and isogenies into the geometric objects used throughout this roadmap.

**Witness:** `TauCetiRoadmap/EllipticCurves/README.md:135–148` on main expressly excludes schemes and the isogeny/scheme-morphism comparison. `TauCetiRoadmap/AlgebraicCurves/README.md:1610–1632` owns that anti-equivalence and explicitly names its elliptic specialization.

**Repair:** Replace this supplier attribution throughout. Import AlgebraicCurves §12C for the function-field/morphism correspondence; ModularCurves §§1A–1D, 2A and 2E for projective models, multiplication-degree and pairing comparisons; and AbelianSchemesAndArithmeticModuli A1.6 for the relative elliptic/abelian comparison. State precisely which comparison transports each operation; do not describe ModularCurves §2A's multiplication-only degree comparison as the general isogeny correspondence. Any remaining transport law needs its own target or a precise declared supplier gap.

**Repair control:** On the Gaussian curve, [2] has function-field degree 4 and geometric kernel rank 4. In characteristic 5, the endomorphism 2+i with Lie scalar 0 has kernel rank 5 but only one geometric kernel point. The repaired contract must preserve rank, not replace it by a point count.

## R02 (P1) — The advertised general cardinality supplier does not exist

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/README.md:175–189`. The text attributes `TauCeti.CM.CMType.card` for “every reduced finite-dimensional ℚ-algebra, including rank zero” to ShimuraVarieties §5.1.

**Claim:** This general statement, under that declaration name and namespace, is an existing supplier contract.

**Witness:** `TauCetiRoadmap/ShimuraVarieties/README.md:1303–1321` states cardinality for nonempty products of CM fields. Its `Suggested.lean:44–69` uses namespace `TauCetiRoadmap.ShimuraVarieties`; neither file declares the cited general `card` theorem.

**Repair:** Cite the actual §5.1 CM-algebra cardinality target and actual namespace. If the broader reduced-algebra/empty-product comparison is needed, own that extension explicitly here, with its partition hypothesis, or declare a precise supplier gap. Do not assert that it is already supplied. Similarly replace the nonexistent `typeNorm_identities(d)` declaration references with §5.1's prose type-norm identity (d).

**Repair control:** For the zero algebra the embedding set is empty and the identity is 2·0=0; for ℚ the conjugation-fixed embedding makes the partition condition impossible; for ℚ(i) the singleton gives 2·1=2. These distinguish the requested extension from the supplier's stated domain. The mathematical extension is plausible; the ownership claim is what fails.

## R03 (P2) — Import the existing elliptic CM roadmap instead of planning its results again

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/README.md:345–399,640–654,675–685`; `Suggested.lean:49–79`.

**Claim:** Elliptic ideal-lattice classification/action, singular-modulus integrality, class polynomials and elliptic ring/ray reciprocity are new outputs of Layers 1 and 3, with the genus-one function-field construction included in Layer 2.

**Witness:** Main's `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:83–89`, §H3.1, already plans these objects, full-order comparisons, integral class polynomials and actual Artin reciprocity. ArithmeticStatisticsPartVII's CM-isogeny contract itself imports that owner.

**Repair:** Add ImaginaryQuadraticClassNumber §H3.1 to scope and exact supplier contracts; delete its duplicated targets and the duplicated Lean acceptance signatures. Keep a simple class-polynomial definition if the independently owned height headline still needs it. Keep explicitly distinguished additions, such as the higher-dimensional polarized/reflex comparisons, CM tensor refinements and any genuinely stronger nonmaximal-order generator statement, with their inputs imported by section. The regular Siegel-function construction should import its genus-one specialization rather than create another owner. Recompute dependencies after this change.

**Repair control:** At discriminant −36 the existing full-order dictionary has two proper classes; at −4 its class polynomial is X−1728 and its ring field over ℚ(i) has degree one. Thus importing the existing owner preserves the nonmaximal-order and exceptional-unit cases; it does not force a maximal-order shortcut. The remaining higher-dimensional scope is substantial, so this is repairable rather than grounds to reject the whole folder.

## R04 (P3) — Remove the 42 anchor tags rejected by the gate

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/README.md:171` and the other target/reference anchors.

**Claim:** The folder is ready to pass the required text gate.

**Witness:** The head's gate reports `residue=42` and `FAIL`; its rule explicitly prohibits `<a id=` tags. All other reported gate counters, including build and dependency checks, are zero.

**Repair:** Remove the HTML anchors and retarget internal links to Markdown heading anchors, adding ordinary headings where necessary. Re-run the gate. For example, the CM-type link must resolve to the existing “From ShimuraVarieties §5.1…” heading rather than to the deleted `cm-0-1` tag. This gate failure prevents acceptance even though its severity is P3.

## R05 (P3) — Stop presenting prose APIs and Checks as Lean declarations

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/README.md:361–379`, repeated throughout the API and Check lists.

**Claim:** Backticked names such as `idealLatticeCurve.endomorphismRing` and `idealLatticeCurve.test_gaussian` designate this roadmap's declarations.

**Witness:** `Suggested.lean` contains exactly eight declarations: three definitions and five theorems. Neither example name occurs there. The README's explanation at line 247 does not override the required prose-only API/Check form.

**Repair:** Remove invented Lean-name labels from prose-only APIs and Checks, retaining their mathematics and computed values. Retain backticked local declaration names only for the eight actual declarations that remain after resolving ownership. Do not expand Suggested.lean into an API catalogue. The Gaussian Check still computes j=1728 and four automorphisms after its label is removed.

## R06 (P3) — Mark the stated Lean layers

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/Suggested.lean:48,81,110`.

**Claim:** The file states targets from Layers 3, 4 and 5 in the required layered form.

**Witness:** There are no `/-! ## Layer k: … -/` section comments. The module docstring calls these “selected milestones” rather than stating its role as the headline acceptance test.

**Repair:** Add the applicable layer section comments in README order and describe the file as the headline signatures against the pinned APIs. Reconcile this with R03's deletions. Keep the missing-carrier explanations and the substantive statements where still owned; this is a presentation change, not a request for additional examples.

## Verified sound

The entire README and Lean file were read at the requested head. The read-only scope check found no changes outside this roadmap folder. No sorry'd data, set_option, arbitrary proposition stand-ins, computational procedure, or restricted-good-prime replacement was found. The mathematical algorithms cited in CRT/Endo are used for their arithmetic statements and bounds, not copied as executable procedures. No copied source passage or instruction-like payload was identified.

The verdict has **6 findings: 2 P1, 1 P2 and 3 P3**. The following computations are adversarial controls, not proofs of the general assertions. “Retain” means no defect was found by that control; it does not certify an unavailable source. Source limitations are listed below.

### Headline inventory and Lean acceptance test

The README's headlines are: reflex-pair independence/double reflex and integral reflex data (Layer 0); elliptic Picard classification, ideal degree, rational self-twist and CM tensor/Hodge/period comparisons (Layer 1); polarized classification and ideal/torsion/polarization/level reciprocity with exact stabilizers (Layer 2); integrality, separability, irreducibility, ring-class generation and exact regular-value fields (Layer 3); attached CM characters, Tate components, all-prime factors, induction, residual normalizers and canonical Gross existence/attachment (Layer 4); Deuring classification/lifting/reduction, Frobenius/slopes, order-level comparisons, height and coefficient bounds, conductor criteria and complete reduction/reconstruction (Layer 5).

The five Lean headlines are singular-modulus integrality, class-polynomial integrality/separability/degree, irreducibility over the quadratic field, canonical Gross-character existence, and the unconditional root/coefficient bound. Its three definitions have real bodies on native carriers. The other geometric headlines are named by group in the module docstring with their missing CM-action, realization, uniformization, crystalline, class-field or moduli interfaces. No additional statable headline omission was established in this audit. R03 concerns ownership of three of the five stated headlines.

The three individual TauCeti imports were built successfully. Direct `lake env lean` elaboration of Suggested.lean then succeeded with exactly five sorry warnings. A scratch copy with `#check @name` for all **eight** declarations elaborated; all field, NumberField, CM, quadratic-extension, NeZero and explicit discriminant hypotheses appeared in the intended signatures. No silently dropped binder was found. A second scratch copy replaced each of the **five** sorry proofs with the single tactic `simp`; all five retained substantive unsolved goals. Reading the native definitions did not identify a one-lemma/rfl/instance proof of any of these general headlines. No padding finding is made.

### Computed adversarial table

For compactness, multiple named laws sharing the same explicit computation are listed together. The table covers all target blocks, their API laws, the fifteen sampled subsections, the Lean headlines and every finding's mathematical interface. Values are exact except where an approximation is explicitly indicated.

| Statement/API | Instances | Values on the two sides / negative control | Result | Change |
|---|---|---|---|---|
| Conventions: positive dimension, level, isogeny | g=1,2; n=0,1,2 | deg[1]=1; deg[2]=4,16; [0] has positive-dimensional kernel, not finite | Correct exclusion | None |
| CMType partition, extensionality and cardinality | ℚ(i), ℚ, zero algebra, product of two quadratics | singleton: 2·1=2; full Gaussian set: 4≠2; real embedding: χ+χ=1 impossible; empty: 0=0; product: 2·2=4 | Supplier mismatch | R02 |
| Conjugation and induced membership/transitivity | i; ζ₈ type {1,3} over ℚ(√−2) | i↦−i↦i; both selected embeddings send √−2 to i√2; induced size 2=2·1 | Retain | None |
| Primitive core and uniqueness | quadratic; induced quartic; non-Galois quartic | core degrees 2,2,4; original degrees 2,4,4 | Retain | None |
| Type trace, linearity and conjugate field | Gaussian singleton, product, empty selection | tr(1)=1,2,0; tr(i)=i versus full trace 0; tr(2+i)=2+i, conjugate 2−i | Retain; empty extension needs ownership | R02 |
| Trace-field adjunction/stabilizer/cocharacter comparison | Gaussian singleton and its conjugate | generated field ℚ(i) in both; conjugation changes tr(i) from i to −i, hence does not fix the type | Retain | None |
| 0.1 inverse cosets, primitive reflex, double reflex, closure independence | quadratic; ζ₈ induced type | quadratic reflex degree 2; quartic induced reflex and double reflex degrees 2,2 rather than 4; enlarging closure leaves the same two restricted embeddings | Retain | None |
| Type norm: identity, conjugation, tower and products | 2+i; √2 in ℚ(i,√2); two Gaussian factors | (2+i)(2−i)=5; relative norm √2=−2; product norm gives (2+i,2+i), not one scalar | Retain | None |
| 0.2 reflex order: image, fraction algebra, relative discriminant | O=ℤ+3ℤi | selected factor E; image O_E by first tensor factor; relative discriminant 1 versus absolute −36 | Retain | None |
| Reflex order not necessarily normal | E=ℚ(ζ₅), O=ℤ+2O_E | both coordinates of tensor image agree mod 2; (1,0) has residues (1,0), hence excluded; normalization O_E² includes it | Retain | None |
| Quartic root choices and field distinction | a=i√(3+√2), b=i√(3−√2) | a²=−3−√2, b²=−3+√2, ab=−√7; a⁴+6a²+7=0; (a+b)²=−6−2√7; (a+b)⁴+12(a+b)²+8=0 | Retain | None |
| Quartic primitive reflex and real subfields | same quartic pair | real generators √2 and √7; each real degree 2, full degree 4; −b reverses ab to +√7 | Retain | None |
| Nonmaximal Gaussian order, units, ideals and class count | O=ℤ+3ℤi | i absent, 3i present; units 2 versus 4; Pic 2 versus 1; norm(2,1+3i)=2, class square 1 | Retain | None |
| 1.1 ideal curve, uniformization, End and j | I=ℤ[i], O₃; homothety 2I | End=ℤ[i],O₃ respectively; j(ℤ[i])=j(2ℤ[i])=1728; i·1∉O₃ | Ownership/supplier defects | R01,R03 |
| Ideal action: unit, multiplication, inverse, kernel and principal map | a=(2+i), b=(2−i) | a⁻¹I/I has 5 elements; (ab)=(5), composite degree 25; unit degree 1; a fixes class but degree 5≠1 | Retain mathematics | R03 |
| Picard classification and full order | O₃ versus O_E | two classes versus one; norm-two class swaps two objects, square fixes both | Duplicate | R03 |
| Automorphisms and polarized level rigidity | Gaussian, Eisenstein, O₃; N=2,3 | origin-preserving automorphism counts 4,6,2; −1≡1 mod2 but −1≠1 mod3 | Retain | None |
| 1.2 forms-to-CM comparison and primitive filter | D=−36; imprimitive [2,2,2] at −12 | [1,0,9] gives 3i; [2,2,5] gives (−1+3i)/2; gcd(2,2,2)=2 removes Eisenstein root from full order −12 | Retain | None |
| Ideal isogeny degree, including conductor intersection | (2+i), 3O₃, conductor 3O_E | degrees/norms 5,9; 3O₃ invertible despite meeting conductor; multiplier ring of 3O_E is O_E≠O₃ | Retain | None |
| Rational CM quadratic self-twist descent | anti-invariant i and 3i | degrees 1 and 9; conjugation and twist each contribute −1, composite +1; i∉O₃ | Retain | None |
| 1.3 Serre tensor: free, zero, direct sum and base change | M=0,O_L,O_L²; dual-number base | relative dimensions 0,d,2d; identity/projector matrices 0,1,I₂ remain so mod ε and over ε²=0 | Retain supplier specialization | None |
| CM tensor faithfulness and nonzero-module hypothesis | M=0 versus O_L | zero tensor End is zero, cannot receive injective O_L; O_L tensor recovers original injective action | Retain | None |
| CM tensor ideal inclusion/kernel/degree | c=(2), dimension d=1,2; c=O_L | ranks 2²=4 and 2⁴=16; unit kernel rank 1; for d=2 a rank-4 claim would fail | Retain | None |
| Finite-flat degree versus differential/points | Gaussian char5, i acts by 3 | 2+i: differential 0, kernel rank5, one geometric point; 2−i: differential4, rank5, five points | Retain | None |
| CM type preservation and Lie projectivity | invertible ideal times rank-one selected eigenspace | local tensor rank 1·1=1; complementary eigenspace rank 1·0=0; no splitting asserted at discriminant primes | Retain | None |
| Hodge eigenspaces and torus-dual action | Gaussian γ=i | Lie eigenvalue i; dual torus eigenvalue i⁻¹=−i; two Hodge summands ranks1+1=2 | Retain | None |
| Period naturality and conjugate pairing | Gaussian cycles 1,i; f=[2] | ∫₁dz=1, ∫ᵢdz=i; ∫₁2dz=2=∫₂dz; conjugating i gives −i, distinguishes conjugate-linear slot | Retain | None |
| 2.1 alternating trace form and positivity | ξ=i/2, x=1,i,0; ξ=−i/2 | E(1,i)=1, E(i,1)=−1, E(1,1)=0; E(x,ix)=∣x∣²; negative ξ gives −1 at x=1 | Retain | None |
| Polarized lattice scaling and trace dual | u=2, I=ℤ[i] | E_i/8(2,2i)=1; unchanged ξ gives4; matrix [[0,1],[−1,0]] determinant1 so I=I# | Retain | None |
| Polarized classification and Rosati hypothesis | product Gaussian surface, H=[[1,1],[1,2]] | det H=1; Rosati(diag(i,0))=[[-2i,-2i],[i,i]], not diagonal; trace forms have zero cross terms | Retain | None |
| Primitive simplicity versus product endomorphisms | Gaussian elliptic; its square | End⁰ dimensions over ℚ:2 versus8 for M₂(ℚ(i)); displayed product algebra dimension4 is not full End⁰ | Retain | None |
| Maximal-order Picard classification and degree | Gaussian lattice; [2] on surface | class count1; degree16=norm of 2 in degree4 algebra, not elliptic degree4 | Retain | None |
| 2.2 reflex ideal multiplication, extension and principal law | Gaussian (2+i); O₃ and unit i | maximal norm ideal unchanged; norm5; contraction of unit ideal is O₃, whereas iO₃≠O₃ | Retain | None |
| Conjugation-stable order restriction | ζ₅ residues3,9 mod11, z²−z | residues6,6; conjugate residues1,9; O·conj(O) contains an element outside O | Retain | None |
| Idele torsion arithmetic/geometric convention | principal scalar 2, σ=1 | f=1/2, α=2, α(fx)=x; α(x)=2x would fail without f | Retain | None |
| Polarization reciprocity multiplier | same scalar2; Gaussian lattice | f f̄=1/4, χ=1, c=4; E(2x,2y)=4E(x,y), natural identity Galois map multiplier1 | Retain | None |
| Integral lattice freeness restriction | O₃ at ℓ=3; maximal lattice O_E,ℓ | rank1 over E⊗ℚ₃; O_E,3 is not free rank1 over O₃,3 (multiplier orders differ) | Retain | None |
| 2.3 function-field evaluation and poles | j, 1/(j−1728), constants at Gaussian point | j↦1728; denominator0 so reciprocal outside local ring; ζ₅↦ζ₅ | Duplicate genus-one owner | R03 |
| Semilinear action and inverse row matrix | N=5, M=diag(2,1) | M⁻¹=diag(3,1); first vector maps to2e₁ versus3e₁; coefficient actions ζ₅² versusζ₅³ | Retain | None |
| Polarized stabilizer: membership, unit, multiplication, inverse | unit ideal; Gaussian (2+i), N=1,3 | unit witness1 norm1; (2+i) norm5≡2 mod3, while µ≡1 requires norm1; H1 yes,H3 no | Retain | None |
| Stabilizer level forgetting and full multiplier order | N=1 divides3; I=O_E with proposed O₃ | H3⊂H1; actual orbit size1 versus spurious Pic(O₃) size2 | Retain | None |
| Reflex class map and unit obstruction | imaginary quadratic case g=1 | totally positive units of ℤ are {1}; quotient size1≤2; ker r/H size1, exponent divides2 | Retain | None |
| Relative orbit and forgetting action | Gaussian j=1728 | M_abs=ℚ of degree1; M_rel=ℚ(i) of degree2 overℚ; E* M_abs=M_rel | Retain | None |
| Fixed-field equality criterion, both directions | G_rel=1, G_abs=C₂, G_E*=1; then G_E*=C₂ | first intersection1 gives compositum equality; second intersectionC₂≠1 gives degree2 versus1 | Retain abstract control | None |
| 2.4 surface Frobenius and torsion | P=(5,i−3), E₀², ℓ=3 | π=−1+2i, norm5; matrix [[2,1],[2,2]] det2; square product degree25; polynomial X⁴+4X³+14X²+20X+25 | Retain | None |
| 3.1 cyclic modular polynomial diagonal | N=1,2,4 | Φ₁(X,X)=0; prime2 leading −X⁴; cyclic4 leading −2X⁹; full degree4-subgroup correspondence diagonal0 | Retain | None |
| Class polynomial definition, monicity, roots, degree, representatives | D=−3,−4,−36 | H−3=X, H−4=X−1728, degrees1,1,2; scaling ideals leaves roots unchanged; derivative of first two is1 | Duplicate | R03 |
| singularModulus_integral | τ=i, exp(2πi/3) | minpoly degrees2; j=1728,0, both integers; transcendental τ has minpoly0 degree0≠2 | Retain signature | R03 |
| primitiveReducedForms and discriminant junk inputs | positive D=1,2,3,4,12,36 | census sizes0,0,1,1,1,2; hD excludes1,2; NeZero excludes0; [2,2,2] filtered out | Retain definition | None |
| classPolynomial.integral and irreducible | D=3,4,36 | integer monic linear examples separable/irreducible; at36 H=X²−153542016X−1790957481984, degree2; discriminant positive nonsquare, no root in ℚ(i) | Duplicate | R03 |
| Galois roots and ring-class generation | D=−36 and −4 | order-two class swaps2 roots; Gaussian field overK degree1, overℚ K degree2 versus ℚ(j) degree1 | Duplicate | R03 |
| Dihedral convention on non-2-torsion class group | D=−23, Pic=C₃ | inversion sends1↦2; reflection·rotation·reflection=rotation², not rotation; Galois action is S₃ | Retain | None |
| 3.2 all regular values and exact ray field | Gaussian N=1,3,5 | degrees1,8/4=2,16/4=4 overK; j alone degree1 at all levels | Duplicate elliptic part | R03 |
| Finite-family separation/generation iff | N=3 Gaussian; family {j} versus full regular values | j stabilizer quotient size2, field degree1; separating family stabilizer quotient1, field degree2 | Retain | None |
| Value-field containment, adjunction and level inclusion | N=1 divides3; pole at j=1728 | K(1728)=K⊂M₃ degree2; reciprocal denominator0 excluded; constants retained | Retain | None |
| 4.1 actual character, principal law and infinity-type signs | elliptic type; congruence α≡1; π=−1+2i | ideal exponent+1 versus idelic−1; normπ=5≠1, hence π not an O_E unit; identity ideal value1 | Retain | None |
| Least conductor versus working support | O₃ curve after good-reduction extension at3 | inertia image1, character conductor exponent0; working modulus still has positive3-exponent | Retain | None |
| Character norm base change | Gaussian p=7, residue extension degree2 | rational polynomial X²+7; squared eigenvalues both−7; ψ((7))=−7, norm49 | Retain | None |
| Tate components and inverse avatar convention | elliptic, surface; eigenvalue π | ℚℓ dimensions2,4; each CM component dimension1; geometric-normalized avatar of χ⁻¹ has arithmetic valueπ, notπ⁻¹ | Retain | None |
| Frobenius norm, absolute value and polynomial | π=−1+2i at5 | ππ̄=5; ∣π∣=√5; (X−π)(X−π̄)=X²+2X+5; point count8=5+1−(−2) | Retain | None |
| 4.2 all-prime factors, inertia and conductor sum | Gaussian overK at5,7 and bad2 | P₅=1+2T+5T²; P₇=(1+7T)²; bad2 invariants0 so P₂=1; exponent a+a=2a | Retain | None |
| Induction, restriction and quadratic self-twist | index-two representation; inert Frob | dimension2=2·1; restriction eigenvaluesψ,ψ̄; off-diagonal Frobenius trace0 unchanged under −1 twist | Retain | None |
| Cartan normalizer, trace and projective order | Gaussian ℓ=3,5,2; conjugation matrix | Cartan sizes8,16; c=diag(1,−1) has trace0,c²=I; a c squares to norm(a)I; ℓ=2 excluded by ramification | Retain | None |
| 4.3 canonical predicate, sign and unit obstructions | −1,i,ζ₃ as unit generators | ψ(O)=1; 1=−(−1); 1≠±i and 1≠±ζ₃; trivial character fails α=2 since1≠±2 | Retain | None |
| canonicalGrossExistence, both sides | D=−3,−4,−7,−8,−20 | right side false,false,true,true,false; unit obstruction excludes first two; Yang's quadratic finite-character construction covers−7,−8; v₂(20)=2 excludes−20 | Retain; source correction recorded | None |
| Class twists, attachment and good reduction | class character θ of order3; Hilbert norm; inert prime outsideD | θ(ā)=θ(a)⁻¹=conj θ(a); principal θ=1; θ∘Norm_H/K=1; conductor exponent0⇒inertia1⇒good | Retain; BKO source unavailable | None |
| 5.1 arbitrary-base endomorphism classification | transcendental j; ordinary F₅; supersingular F₇ | End⁰ dimensions1,2,4; atF₇ model-field centralizer degree2 versus geometric quaternion dimension4 | Retain; primary text uncertified | None |
| Small-characteristic classification controls | y²+y=x³/F₂; y²=x³−x/F₃ | #points3,4; traces0,0; supersingular in both; a short char2 equation would be singular | Retain | None |
| Potential good reduction and split/inert/ramified alternatives | Gaussian p=5,7,2 after good extension | 5 splits⇒ordinary;7 inert⇒supersingular;2 ramified⇒supersingular; j=1728 integral at all three | Retain | None |
| Ordinary specialization conductor | f=15, split p=5 | f/p^v=3; prime-to5 index retained; for f=3 at5 conductor3; no prime-to-conductor restriction replaces this formula | Retain; primary text uncertified | None |
| Frobenius ideal formula | Gaussian P=(5,i−3), π=−1+2i | π modP=−1+6=0; at i=2 gives3≠0; norm5 so ideal=P; opposite embedding would choose wrong prime | Retain | None |
| Newton slope labels, ramification and nonmaximal isogeny | split Gaussian; inert quadratic; ζ₅ at2 | counts1/1 and0/1; inert1/2 twice; quartic2/4=1/2 four times; ramified quadratic1/2 twice; isogeny leaves same list | Retain | None |
| Deuring lifting one endomorphism | ordinary Gaussian π; supersingular noncommuting pair | π satisfies X²+2X+5=0; one lift can have quadratic End⁰ dimension2, not quaternion dimension4; ij−ji=2ij≠0 cannot lie in commutative CM field | Retain; primary text uncertified | None |
| 5.2 horizontal/ascending/descending counts | ℓ=2 split,ramified,inert; ℓ dividesf | triples(2,0,1),(1,0,2),(0,0,3),(0,1,2), each total3 | Retain | None |
| Geometric kernels versus rational targets and multiplicities | Gaussian horizontal maps 2±i | two distinct degree5 kernels, same target j=1728; target-value count1≠kernel count2 | Retain | None |
| Supersingular level order and discriminant | p=7,N=1,5; p=2,N=3 | reduced discriminants7,35,6; level1 maximal, prime-to-p level retained | Retain supplier specialization | None |
| 5.3 classPolynomialHeightBound | D=3,4; k above degree | M₃≈2345.332>0; M₄≈2650.059>1728; ceilings of1+M are2347,2652; high coefficients0≤bound | Retain | None |
| Root perturbation, empty product and strict margin | z=(1,2), w=(1.1,2.1), M=2, δ=.1 | constant error31/100, linear error1/5; bound2·.1·3.1=31/50; empty product difference0, bound0 | Retain | None |
| Perturbation small-error implication | h=1,M=0,δ=1/8 | threshold1/4; actual error≤1/8<1/4; natural exponent h−1=0; h=0 handled separately | Retain | None |
| Coefficient intervals and census permutation | exact coefficient7 in[6.9,7.1]; proposed6; roots1,2 | unique integer7;6 excluded; (X−1)(X−2)=X²−3X+2 in either order | Retain | None |
| 5.4 signed relation definition, bound and evenness | empty; trivial unary; C₂,C₃ two copies | counts1;2;4,2; bounds1,2,4; evenness false for empty1 and correct for nonempty | Retain | None |
| Signed relation inversion/zero exponent/extension | C₃ unary; exponent0; C₃→1 | unary counts0 before/after inversion; exponent0 count2; quotient increases0→2; nonabelian S₃ excluded | Retain | None |
| Signed horizontal path interpretation | C₂ versus C₃ two equal classes | four signed returning paths inC₂, two inC₃; all return to one starting j, so counting distinct endpoints gives wrong1 | Retain | None |
| Prime-power conductor criterion | q=641,t=8,v=25,D_K=−4,k=1,2 | 64−2564=−2500; (D1,D2)=(−4,−100),(−100,−2500); u=5 gives divisibility true,false, u=25 true,true | Retain conditional theorem | None |
| Concrete separating relation for conductor criterion | prime13, Gaussian orders−4 and−100 | 13=3²+2², so unary class relation count2 inO_K; no a²+25b²=13, count0 at conductor5; 5∣u iff0<2 for u=5, versus2<2 false foru=1 | Retain | None |
| Whole-order criterion and boundaries | v=1; v=25,u=5 versus25; supersingularp7 | v1 forcesu1; prime support identical {5}, valuations1 versus2; p7 trace0 so7∣t excludes supersingular input | Retain | None |
| 5.5 ordinary complete reduction products | D=−4,p=5; D=−23,p=5 negative control | X−1728 mod5=X−3, one exact-order ordinary class; H−23 mod5=X³, three colliding roots, hence ordinary split hypothesis essential | Retain; MIT21 correction | None |
| Bounded integer reconstruction and distinct primes | B=10,M=20 versus21; repeated5 | −10≡10 mod20 although unequal; difference20 not divisible21; two congruences mod5 give modulus5, not25 | Retain | None |
| Empty CRT family and zero polynomial degree | empty productM=1; B=0 | M>2B holds; coefficient bound0 forces both polynomials0, including every coefficient beyond natDegree0 | Retain | None |
| R04/R05/R06 structural controls | anchor tags; declaration inventory; layer markers | 42 prohibited anchors; 8 Lean declarations versus absent example/API names; 0 layer markers for3 stated layers | Fail | R04–R06 |

**90 computed rows.** Finite-field point counts, primitive reduced-form censuses, residue calculations, signed counts and polynomial/matrix arithmetic were independently recomputed in scratch. The displayed decimal bounds are illustrative evaluations, not certified floating-point proofs. The native Lean predicates exclude D=0 and inadmissible discriminant residues; no 0/0 or zero-degree class polynomial was used.

### Seeded source sample

All **15 requested sample subsections** were followed through their locators. No additional locator was explicitly marked “unverified” in the README. All **20 reference entries** were attempted through the sources service; **17 texts** were obtained, with the limitations below. Page numbers below distinguish the cited preprints' own pagination from journal pagination.

| Sample | Text opened at locator | What the text supports / limit |
|---|---|---|
| 1.1 Lattice curves, action and classification | MIT16 lines 144–159, 199–224, 277–309: Thm 16.4 p.4, Cor.16.5 p.5, Def.16.9/Thm16.12 pp.6–7; MIT20 lines 230–253, §20.3 p.5 | Lattice homomorphisms, multiplier ring, proper ideal classes, inverse-ideal action and norm degree. GZ III §4 p.257 remains uncertified. |
| 1.2 Forms, degree and rational twisting | Same MIT16/MIT20 passages; CRT lines 782–787, §5.2 p.17 | Primitive reduced forms and proper ideals; degree from lattice index. The self-twist is a stated descent argument using the twist supplier, not a theorem silently attributed to MIT16. |
| 1.3 Serre tensor, Lie and periods | KS lines 392–429, 449–500, 537–539: (1.2.3), Defs.1.8–1.9 pp.9–10, Prop.1.11/Cor.1.12–1.13 pp.10–11, (1.3.3)–(1.3.4) p.12 | Source's Noetherian base and projective Lie condition were retained when invoking its CM-type conclusions. The more general tensor and degree assertion is supported by the explicit local-index argument and A1.3a/A6.12, not claimed as KS's general theorem. |
| 2.1 Polarized classification | MilneCM lines 1214–1239, Prop.3.17 and its preceding hypotheses p.31; §2.9 pp.25–26 | Rosati compatibility is essential for product CM algebras and is present. The trace-form sign is explicitly converted to the A5 convention. |
| 2.2 Reflex ideals/torsion/polarization | Streng lines 303–313, §2.6 p.6; MilneCM lines 3264–3291, Thm9.10/Remark9.11 p.78; lines 3364–3388, Thm9.17 pp.80–81; MilneFT lines 882–896, §3 pp.20–21 | Conductor restrictions, distinction between rational and integral realization, and geometric Artin convention. Replacing the source idele by the inverse gives the README's arithmetic convention. |
| 2.3 Level functions/stabilizers | Streng lines 324–374, Thms2.4–2.5/Def.2.7 pp.7–8; lines 784–809, §4.5 p.16; Tsimerman lines 308–319, §5 p.386 | Primitive principally polarized full-order setting; row-basis inverse matrix, coefficient action, and norm-compatible generator. The source's mistyped ideal norm domain is corrected in the README. |
| 2.4 Surface calculation | MilneCM Thms9.10/9.17 above | This is a new worked instance, not a surface calculation printed in Milne. Independent point count and matrix arithmetic give trace −2, degree 25 and pairing multiplier 2. |
| 3.1 Integrality and ring class generation | MIT20 lines 255–292, Lemma20.9 p.5; lines 302–336, Thm20.12/Cor.20.13 p.6; MIT21 lines 102–160, Thm21.1 pp.1–3 | Prime diagonal sign, integrality, and equivariant Artin/Picard isomorphism. The source proves a genuine Galois action, not merely a degree equality. Ownership remains R03. |
| 3.2 Regular values and exact generation | Streng lines 342–374 and 784–809, Thm2.5 pp.7–8 and proof §4.5 pp.16–17 | Full regular value field and separating functions, including cyclotomic coefficients. A single arbitrary value need not generate the field. |
| 4.1 Character/components/Frobenius | MilneCM Thm9.10 p.78; BT lines 253–261, proof of Thm1.1 p.6; Kato lines 5572–5585, §15.10 p.260 | Elliptic CM factorization and induced representation; BT and Kato alone do not supply the higher-dimensional construction. The roadmap gives that construction its own target using the main CM and avatar suppliers. |
| 4.2 All-prime factors and induction | BT lines 253–261; Kato lines 5572–5585; BS lines 729–789, §6 pp.372–373 | Induction and Gaussian normalizer application. Extension from good primes to bad factors uses the actual local representation, finite inertia and the named conductor suppliers. BKO is unreadable through the service; some Kato formulas are OCR-corrupted. |
| 5.1 Deuring/specialization/lifting | MIT21 lines 521–525, Thm21.15 p.10; MilneCM lines 3033–3055, Prop.8.11/Thm8.12 pp.72–73 | Lifting one endomorphism and the slope ratio. Deuring/GZ primary-text classification and exact conductor-specialization locators remain uncertified; the point-count controls do not certify those texts. |
| 5.2 Ordinary levels and supersingular pairs | MIT22 lines 66–135, Thms22.3/22.5, Def.22.4 pp.2–3 | Complex CM kernel counts and order changes; characteristic-p transport is through the lifting/specialization targets and the prime-to-p condition. Quaternionic maximality/Eichler order comes from the named supplier, not this complex theorem. |
| 5.3 Height and integral coefficients | CRT lines 1432–1464, Appendix Lemma8 pp.31–32 | Root bound with constant 2114.567. The weaker product coefficient bound and perturbation/interval statements are explicit elementary deductions; no GRH is needed for this root bound. |
| 5.5 Reduction products/reconstruction | CRT lines 774–798, §5.2 p.17 and §6 pp.18–20; MIT21 lines 515–519, Thm21.14 p.10 | Complete exact-order ordinary class sets and coefficient congruences. MIT21's unrestricted norm-q assertion is false; the roadmap's split ordinary restriction excludes the D=−23,p=5 collision. |

Additional locators opened: MilneCM §1, Propositions 1.16–1.18 and Example1.19 (lines 421–495), for reflex fields; YZ §2.2 p.546 (lines 559–566), for the selected factor and relative order discriminant; AGHMP §3.4 p.420 (lines 1209–1229), for the total-reflex character restriction; Yang Introduction pp.1–2 (lines 20–50) and §4 pp.16–19 (lines 631–763), for canonical characters and the quadratic finite characters; Endo Lemma3/Cor.4 p.5 (lines 235–244) and Prop.5 p.6 (lines 253–265), for conductor separation. The nonmaximal reflex-order example is an image/full-rank extension of YZ's maximal-order construction, explicitly identified as such. The count condition in Endo is intrinsic, not arbitrary supplied numbers.

### Pinned library audit

The inspected pins are Mathlib **6b7abb3c7686292736be2955bd3eb9ebf63b456a** and Tau Ceti **a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039**. Paths in this table are relative to those libraries' roots. These are **16 groups of opened native declarations**, including the assumptions relevant to the review.

| Pinned file and line | Declaration/object and boundary checked |
|---|---|
| Mathlib/NumberTheory/NumberField/CMField.lean:69,141,153,163,197 | IsCMField, complexConj, complexEmbedding_complexConj, complexConj_apply_apply, complexConj_eq_self_iff. IsCMField itself does not supply the separate NumberField hypothesis. |
| Mathlib/RingTheory/ClassGroup/Basic.lean:89,104; Mathlib/RingTheory/PicardGroup.lean:553,876 | ClassGroup, mk, Pic.mapAlgebra, ClassGroup.equivPic. Invertible fractional ideals over a domain, not all nonzero ideals of a nonmaximal order. |
| Mathlib/FieldTheory/IntermediateField/Adjoin/Defs.lean:34,55; Mathlib/NumberTheory/NumberField/Basic.lean:101 | adjoin, adjoin_le_iff, RingOfIntegers: generated field and integral closure, not CM field-generation theorems. |
| Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:388 | WeierstrassCurve.j requires the elliptic discriminant-unit setting used in the README. |
| TauCeti/NumberTheory/NumberField/Global/Orders/Basic.lean:59 | NumberFieldOrder bundles a finite ℤ-subalgebra with full rational span. |
| TauCeti/NumberTheory/NumberField/Global/Orders/ProperIdeal.lean:38; Picard.lean:39; Conductor.lean:38 | Multiplier ring, mkPic and conductor on the native order carrier; no second CM-specific class-group carrier is needed. |
| TauCeti/NumberTheory/NumberField/Global/Orders/Discriminant.lean:107; AwayConductor.lean:116,258; RayClass.lean:208 | discr_eq_index_sq_mul, extension/contraction, conversion to invertible ideals, finite_pic. The coprimality restriction belongs to extension/contraction, not every invertible ideal. |
| TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95; End/Basic.lean:83,92,95 | Proper geometrically integral group scheme; End is Additive of actual endomorphism morphisms, composition multiplication. It does not itself bundle a CM action, polarization or uniformization. |
| TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Degree.lean:99 | Isogeny.degree is source function-field dimension over pulled-back target field. It is not a scheme-comparison theorem or a count of geometric points. |
| TauCeti/NumberTheory/GeometryOfNumbers/RankTwoDoubling.lean:51,64,70 | gaussianLattice, membership and nonzero norm separation. Native carrier is Fin 1 → ℂ; the roadmap should transport it, not duplicate it. |
| TauCeti/NumberTheory/NumberField/ComplexConjugation/CMField.lean:68; TauCeti/NumberTheory/EffectiveBounds/UnitSquares/Basic.lean:62 | Place conjugation equals CM conjugation; units_sq_index_le has the NumberField hypothesis and the bound 2^finrank. |
| TauCeti/NumberTheory/BinaryQuadraticForm/Reduced.lean:60,76,82,100,105 | IsReducedForm, reducedForms and boundary census results. Reducedness alone does not include positive definiteness: the D=0 boundary needs exclusion. |
| TauCeti/NumberTheory/BinaryQuadraticForm/Root.lean:65,107; Reduction.lean:177,204 | Native upper-half-plane root and injectivity; positivity of the nonzero-discriminant reduced census and reduced orbit representatives. |
| TauCeti/Analysis/Complex/ModularForms/LevelOne/JInputs.lean:81,88,96,176 | Normalized j, holomorphy, modular invariance and j_I=1728. These elementary inputs are not the general singular-integrality theorem. |
| TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/Basic.lean:74; Algebraic.lean:60 | Native continuous idele-class character and algebraicity on the infinity-type identity component. The extra Gross conditions are supplied explicitly by the kept predicate. |
| TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/FiniteComponent.lean:251; Ideal.lean:117,156 | Least finite conductor, actual ideal character and its prime evaluation. No invented free function replaces them. |

Object searches covered CM types/reflex fields, CM ideal actions, class polynomials, Serre tensors, polarized lattices, Hecke/Tate comparisons, quaternion orders, reduction and conductor relations in the pins, roadmaps on main, the board's package files and the supplied open-head material. The roadmap-tool object searches were used, not just searches for proposed declaration names. The three shape examples read on main were EllipticCurves, ImaginaryQuadraticClassNumber and Completed/GlobalNumberFields. No fully qualified name of the eight declarations collides with a declaration in the inspected other roadmap files. The substantive ownership collision is R03, regardless of namespaces.

### Cross-roadmap and supply audit

Every supplier family in the scope table and exact contracts was resolved against main for an existing roadmap, or the supplied open head for a new roadmap. This includes the following supplier roadmaps, plus the downstream Part II boundary. Proposed API aliases were checked against their mathematical section, rather than treated as implemented declarations.

| Supplier | Resolved contract / audit result |
|---|---|
| Completed/GlobalNumberFields | Layers 7–11, README:459,476,508,531,571: fractional congruences, norms, characters, types and orders. Native order inputs agree with the pins. |
| ClassFieldTheory | Layers 11–13, README:1683,1724,1799: arithmetic Artin, actual global existence/correspondence, ring/ray fields. |
| EllipticCurves | Layers 1–5, README:423,647,683,793,1154: equation/function-field isogenies, torsion, finite fields, reduction, twists. Scheme comparison is excluded: R01. |
| ModularCurvesPartII | §§1.1–1.5, 3.14, 5.6, 6.1, README:393,421,445,466,513,1286,1737,2122: uniformization, lattice isogenies, differentials, pairing and cyclic modular polynomials. |
| AbelianSchemesAndArithmeticModuli | A1.3a at README:794; A1.6 at907; A4.7a at2277; A5.2 at2557; A6.12 at3042; A6.37 at3832. General tensor/realization/degree/simplicity remains there; this roadmap's CM specializations retain the dimension/action hypotheses. A0–A4 and A5 comparisons were also read. |
| ShimuraVarieties | §5.1 at README:1303 and §§P.3,4.2,5.0,5.4–5.11,8.1–8.3: CM types/norms, main CM theorem, canonical Siegel tower. R02 identifies the unsupported extension/name. The norm identity (d) exists as prose, not the cited declaration. |
| CrystallineCohomology | CR.4.7, README:6620: slope decomposition on the existing WittVector.Isocrystal carrier. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | R07.2.15–R07.2.16, README:3537,3568: integral Dieudonné/group comparison, rational slopes, multiplicities and extension invariance. |
| ArithmeticGaloisRepresentations | §§1.3,1.12,2.1–2.5,3.1–3.5,5.1,5.3,6.1–6.4: rank-one/local/induced realizations, conductor sums, Frobenius recognition and cohomological Euler factors. |
| AutomorphicGaloisRepresentationsPartII | AG2.0, README:751–755: geometric-Artin avatar; the README correctly inverts the idelic character to get the covariant arithmetic eigenvalue. |
| ArithmeticStatisticsPartVII | CM character and ideal-isogeny subsection, README:2441,2469. The latter already cites ImaginaryQuadraticClassNumber H3.1, reinforcing R03. |
| NeronModelsAndSemistableAbelianVarieties | §§1.5,1.8,5.1,5.2,5.3i,5.6: extension, good isogenies and local factors. §5.6 explicitly extends its semistable proof to arbitrary A by finite extension/descent; it is not restricted to semistable CM input. |
| GL2AutomorphicRepresentationsAndTransfer | R17.4.16, README:2127: quadratic automorphic induction. |
| AutomorphicGaloisRepresentations | §§1.5,7.3, README:1134,3097: rank-two realization and fixed-newform compatible system. |
| IntegralLattices | B2/B3/B5 on main: binary forms, class-group composition, reduced census and boundary identifications; target uses these as input rather than a new reduction theory. |
| GeometryOfNumbersAndQuadraticArithmetic | §2.8, README:742: quaternionic lattice/order framework. |
| SerreWeightAndLevelOptimisation | §2.6, README:452: enhanced supersingular pair/Eichler-order correspondence, including maximal level-one order. |
| QuadraticFormInvariants | Layer 2, README:1145: native quaternion/reduced-norm and split/division framework. |
| Completed/Chebotarev | Layer 9, README:370: abelian prime realization avoiding a finite set. |
| ModularForms | Layer 0 and its LevelOne.JInputs contract; normalized j inputs exist independently at the pin. |
| ImaginaryQuadraticClassNumber | H3.1, README:83–89: missing from the target's supplier list despite overlapping ownership; R03. |
| ModularCurves / AlgebraicCurves | ModularCurves §§1A–1D,2A,2E and AlgebraicCurves §12C resolve R01's actual earlier owners. Counted together here as the comparison-owner audit, not an existing target supplier row. |

The last row contains two roadmaps: **23 distinct supplier/owner roadmaps** were inspected in this table. ComplexMultiplicationAndExplicitReciprocityPartII was also read as the later consumer: it leaves the base reciprocity and reduction theory here and adds height/Colmez comparisons. No upward dependency on that Part II was found. The object search also examined the supplied open-work index and matching sibling files; it was not limited to similarly named declarations. Main's existing roadmap statements were used even where an open PR revises them.

The mechanical dependency command was run with the prescribed name, order, movable placement and content arguments. Its complete output was:

```text
depcheck: 205 roadmaps, 1475 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The README uses “Prerequisites:” and layer “Dependencies” instead of literal *Needs:* lines; those actual prerequisite lists and the scope/supplier citations were read. No hidden later-layer cycle was established. The two false supplier attributions are not detected by a graph that resolves only roadmap names.

The worker gate at this head has build=0 and depcheck=0, but residue=42 and FAIL. Every other listed scanner counter is zero, including outside-folder, stray-files, imports, sorry-data and set_option. The failure is recorded as R04; it is not being waived.

## Not verifiable

- **Deuring**, Introduction pp.198–200, §§2.4–2.10 pp.212–218, §8 p.258 and §9.1 pp.258–262: the sources service reached DOI 10.1007/BF02940746 but classified the publisher text as uncertified/paywalled. The original classification, optimality/local-order details and full lifting proof were not inspected. MIT21 verifies the secondary lifting statement, not all these primary locators.
- **GZ**, Chapter III §4 p.257 and §7 p.261: DOI 10.1007/BF01388809 likewise yielded an uncertified publisher citation rather than readable text. MIT16/20 support the ideal-action comparisons; the exact GZ passages were not certified.
- **BKO**, §3.0.1 pp.950–951 and Theorem3.4 proof/equation(3.8) p.953: Caltech's legal deposited link redirected to storage the service would not classify; a publisher PDF candidate returned 404; the legal NSF Public Access copy repeatedly timed out in the service. These locators remain unverified. The single unresolved request in needs-references.toml retains the key BKO and records these attempts. No source was fetched outside the service or from a pirate mirror.
- **Kato**, Lemma15.11 pp.261–262: readable prose verifies its induction/comparison role, but parts of the extracted diagrams and formulas are corrupted. The precise diagram labels were not certified. §15.10's prose induction and type convention were readable. No alleged source error is based on those OCR artifacts.

The source restrictions do not erase the witnessed ownership/contract findings. No unavailable text was guessed. The two uncertified DOI items were not re-entered as missing-text requests, and the successful later publisher fetches were removed from the scratch missing list. This review leaves every PR file and its source manifest unchanged.

## Source issues

- **Error** in MIT21 at Theorem 21.14, printed p.10 (lines 515–519): the source says arbitrary residue norms of ring-class-field primes give distinct roots and exact CM endomorphism orders; it should require the ordinary split setting used here; affects a stated result. For D=−23 at p=5, the residue norm can be 25 but H_D mod5=X³.
- **Error** in Yang at Introduction property (B), printed p.2 (lines 47–50): the source says canonical characters exist for every odd fundamental discriminant or one divisible by eight; it should exclude discriminant −3 as the principal-sign condition forbids its nontrivial cubic units; affects a stated result.
- **Misprint** in Endo at Proposition 5 proof, printed p.6 (lines 261–265): the source says finiteness of S₁ minus S₂ corresponds to L₁ contained in L₂ and argues that containment fails; it should reverse both field containments to L₂ contained in L₁; affects the proof. The ring fields of discriminants −4 and −100 have degrees one and two over ℚ(i).
- **Misprint** in CRT at Appendix Lemma 8 proof, printed p.31 (lines 1453–1463): the source says the class-polynomial product runs from k=0 through h; it should run from k=1 through h for the h forms just indexed; affects nothing.
- **Misprint** in Tsimerman at Theorem 5.2 proof, printed p.386 (lines 308–316): the source says the norm of an ideal of K* is taken from K and writes O_K/I; it should use the norm and ideal quotient in the reflex field K*; affects the proof.
- **Gap** in MilneCM at Proposition 8.11, printed p.72 (lines 3033–3035): the source says the CM p-divisible endomorphism degree equals its order index and leaves the proof absent; it should supply the degree/index argument, including the ramified setting used by Theorem 8.12; affects the proof.
- **Misprint** in MIT22 at Theorem 22.5 proof, printed p.3 (lines 147–148): the source says the auxiliary prime divides the order indices; it should say it divides neither index, as chosen coprime immediately before; affects the proof.
