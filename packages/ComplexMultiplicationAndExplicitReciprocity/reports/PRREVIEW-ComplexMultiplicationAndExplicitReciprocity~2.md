# Review of ComplexMultiplicationAndExplicitReciprocity (pull request #1254 at 615f9de)

**Verdict:** accepted

## R01 (P3) — Replace the stale composition-rank declaration name

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/README.md:125`, repeated at line 364: “multiplies under composition (`IsAbelianIsogeny.comp_rank`)”.

**Claim:** The named declaration is supplied by AbelianSchemesAndArithmeticModuli A3.1.

**Witness:** `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1401` supplies multiplicativity in prose. Neither its README nor its Suggested.lean declares `IsAbelianIsogeny.comp_rank`; the pinned libraries do not declare it either.

**Repair:** Cite “AbelianSchemesAndArithmeticModuli A3.1, multiplicativity of ranks under composition” in both places. The mathematical prerequisite is owned by the cited section, so this is a stale name, not an unowned prerequisite. Control: composing [2] and [3] has rank 4·9=36 on an elliptic curve and 16·81=1296 on a surface; the supplier's prose law gives exactly these values.

## R02 (P3) — Give the new higher-genus function field its own discriminating Checks

**Location:** `TauCetiRoadmap/ComplexMultiplicationAndExplicitReciprocity/README.md:482`, Checks at lines 494–496: “For `g ≥ 2` and `N ≥ 1`, construct the field `F_N`”.

**Claim:** The three Checks test this newly owned definition.

**Witness:** Two Checks concern the imported genus-one field. Replacing every higher-genus field by its constant field preserves those two Checks and the cyclotomic-constant Check, although genus two has transcendence degree 3, not 0.

**Repair:** Retain the genus-one comparisons as imported examples, and add at least three Checks on the owned domain. For example: genus-two transcendence degree 3; a nonconstant genus-two function with regular values 0 and 1 at two specified points, whose reciprocal is excluded at the zero; and the existing level-five multiplier action, instantiated in GSp₄. These give 3 versus 0, distinct values versus constancy, and ζ₅² versus ζ₅. Specify the function/points used for the second Check. This repairs test coverage without changing the definition or adding Lean padding.

## Verified sound

This is a full review of both files at the requested head, including unchanged passages. There are **2 P3 findings, no P1 or P2 findings**, and a passing gate. Acceptance means ready for human final approval; it is not an approval or merge.

The scope diff contains no changes outside this roadmap folder, and the worktree remained clean. The folder contains no sorry-defined data, option overrides, free proposition stand-ins, executable algorithm, or replacement of general theory by good-prime-only results. The order/conductor restrictions belong to specific formulas; separate targets cover ramified primes, nonmaximal orders and all-prime factors. No copied source passage or instruction-like payload was identified.

### Reconciliation of the previous review

All six previous findings were checked before the full pass. Quotations below are from the repaired files, not instructions.

| Previous finding | Repaired passage and witness | Status |
|---|---|---|
| R01: equation-to-scheme comparison attributed to EllipticCurves | README:152–154 now uses “Together with AlgebraicCurves §12C” and ModularCurves' projective/function-field comparisons, with AbelianSchemes A1.6/A6.1. AlgebraicCurves:1610–1632 supplies the morphism anti-equivalence. | Repaired. In characteristic 5, rank 5 remains rank 5 even when the kernel has one geometric point. |
| R02: nonexistent general CM cardinality supplier | README:180–198 says “No general reduced-algebra cardinality theorem is consumed here.” It uses the actual CM-type namespace and owns the general conjugated finite-sum comparison in §0.1. | Repaired. The empty embedding selection gives 0; the Gaussian CM type gives cardinality 1; a real fixed embedding cannot form a CM partition. |
| R03: replanned elliptic CM theory | README:22,36,155 imports “ImaginaryQuadraticClassNumber §H3.1”; §3.1 keeps the analytic polynomial needed for the independent bound. The three duplicated acceptance theorems are gone. | Repaired. The supplier includes nonmaximal orders: discriminant −36 still has two classes. |
| R04: prohibited HTML anchors | Heading links replace the anchor tags; the supplied gate has “residue=0”. | Repaired; gate passes. |
| R05: invented local API/Check declaration labels | The API and Check lists are prose. The five retained local identifiers match the five actual Lean declarations. | Repaired. R01 above concerns a separate supplier-name blemish, not another invented local API catalogue. |
| R06: Lean role and layer markers | Suggested.lean:9–17 identifies the “headline theorems”; lines 44 and 75 mark Layers 4 and 5. | Repaired; the two remaining targets occur in README order. |

No repair report marking a finding “not actionable in this package” was supplied. No settled finding is re-raised.

### Headline inventory and Lean checks

The owned headlines are:

- Layer 0: inverse-coset reflex pairs, primitive double reflex, integral selected reflex orders and the concrete field comparisons.
- Layer 1: rational CM self-twist descent and the CM specializations of Serre tensors, ideal degrees, Lie/Hodge realizations and periods.
- Layer 2: arbitrary-dimensional polarized classification; reflex ideal/torsion/polarization reciprocity; higher-genus level-function reciprocity, exact stabilizers and relative marked moduli fields.
- Layer 3: exact fields of regular CM values, finite separating families and their generator criterion. Elliptic class polynomials and ring/ray reciprocity are imported from H3.1.
- Layer 4: attached characters and their rational Tate components, all-prime Euler factors and induction, residual normalizers, and canonical Gross existence/attachment.
- Layer 5: Deuring classification, specialization and lifting; Frobenius/slopes and order levels; unconditional class-polynomial root/coefficient bounds; signed conductor criteria; complete reduction products and bounded integer reconstruction.

Suggested.lean retains **two substantive headline statements**, `canonicalGrossExistence` and `classPolynomialHeightBound`, and **three definitions with real bodies**. The latter is a bound for the actual analytic CM polynomial, not arbitrary numbers supplied as roots. The former quantifies over native Hecke characters and their actual finite conductors and ideal characters.

The module docstring identifies the missing CM-action, reflex, tensor-realization, uniformization, polarized moduli, Tate/crystalline and reduction carriers for the other headlines. The generic polynomial inequalities and small reconstruction controls remain prose. Object searches and inspection did not establish another omitted headline statable with only a few simple native definitions. No replacement proposition or weakened geometric stand-in was found.

The targeted module build passed. Direct `lake env lean` on Suggested.lean also passed with exactly **two sorry warnings**. A scratch copy containing `#check @name` for **all five declarations** elaborated. It retained Field, NumberField, IsCMField and quadratic-extension assumptions for the character predicate and theorem; NeZero D for the form census and polynomial; and the discriminant residue hypothesis for the bound. No binder repair was needed.

Replacing each of the two proofs by the one tactic `simp` left substantive unsolved goals. Reading the native bodies also rules out `rfl` or `infer_instance`; searches found no existing single library lemma giving either headline. There is no padding finding. The single Mathlib import and three used individual TauCeti imports conform to the required form.

### Computed adversarial pass

The following **100 rows** cover the target blocks, defining laws, API/convention checks, sampled subsections, retained headlines and both findings. Several imported comparisons are included because this roadmap relies on their exact signs or domains. “Pass” means the displayed control agrees, not that a numerical example proves the general theorem. Decimal evaluations are illustrative, not certified floating-point proofs.

| Statement | Instances tried | Computed values / two sides | Result | Change |
|---|---|---|---|---|
| Positive dimension and nonzero isogeny conventions | g=1,2; [0],[1],[2] | deg[1]=1; deg[2]=4,16; [0] has positive-dimensional kernel | Pass | None |
| Supplied CM partition/cardinality | ℚ(i), ℚ, empty selection, two quadratic factors | 2·1=2; a real fixed embedding would require 2χ=1; empty 0=0; product 2·2=4 | Pass; empty selection is not called a CM algebra | None |
| Conjugation involution and embedding compatibility | i, 2+i | i↦−i↦i; conjugate(2+i)=2−i | Pass | None |
| Induced types and primitive core | ζ₈ type {1,3} induced from ℚ(√−2) | both embeddings send √−2 to i√2; induced size 2=2·1; core degree 2 versus ambient 4 | Pass | None |
| Type trace linearity and failure of multiplicativity | Gaussian singleton, two identical Gaussian factors, empty | trace(1)=1,2,0; on product trace(1·1)=2 whereas trace(1)²=4 | Pass | None |
| General conjugated finite-sum extension | ℚ[ε]/ε², its unique complex embedding; empty selection | ε↦0, trace(a+bε)=a; conjugation gives a on both sides; empty trace=0 | Pass beyond reduced algebras | None |
| Trace field adjunction and type stabilizer | Gaussian singleton and conjugate | generated field ℚ(i) in both; conjugation sends trace(i)=i to −i, so does not fix the chosen type | Pass | None |
| 0.1 inverse-coset reflex | quadratic field; induced quartic | reflex degrees 2,2; inverse singleton in C₂ is itself; induced quartic does not acquire reflex degree 4 | Pass | None |
| Double reflex and closure independence | induced ζ₈ type; primitive quartic | double-reflex/core degrees 2 and 4 respectively; enlarging the closure changes lifts, not the restricted embeddings | Pass | None |
| Type norm principal/conjugation/product law | 2+i; √2 in ℚ(i,√2) | (2+i)(2−i)=5; norm to ℚ(i) of √2 is −2; product algebra gives two components, not one scalar | Pass | None |
| 0.2 selected order, full span, relative discriminant | O=ℤ+3ℤi, quadratic type | selected algebra E; first tensor factor yields O_E; relative discriminant 1 versus order discriminant −36 | Pass | None |
| Selected order need not be maximal | E=ℚ(ζ₅), O=ℤ+2O_E | image coordinates agree mod2; (1,0) has unequal residues and is absent; normalization contains it | Pass | None |
| Quartic defining roots | a=i√(3+√2), b=i√(3−√2) | a²=−3−√2, b²=−3+√2, ab=−√7; a⁴+6a²+7=0 | Pass | None |
| Quartic reflex field and real subfield | t=a+b | t²=−6−2√7; t⁴+12t²+8=0; real subfields ℚ(√2), ℚ(√7) differ | Pass | None |
| Gaussian nonmaximal order and unit index | O₃ versus ℤ[i] | discriminants −36,−4; units 2,4; proper class counts 2,1 | Pass | None |
| Nonprincipal ideal at conductor 3 | (2,1+3i) in O₃ | index 2; no element of norm 2 since x²+9y²=2 has no integer solution; class square is principal | Pass | None |
| 1.1 imported lattice/classification interface | ℤ[i], O₃, 2ℤ[i] | multiplier orders ℤ[i],O₃,ℤ[i]; j(ℤ[i])=j(2ℤ[i])=1728 | Pass; H3.1 owns classification | None |
| Rational CM self-twist descent | anti-invariant i and 3i | conjugation sign −1 cancels twist sign −1; degrees 1 and 9; i is not in O₃ | Pass | None |
| Equation/scheme transport of degree | Gaussian [2]; char5 endomorphism 2+i | function-field degrees 4,5; kernel ranks 4,5; second geometric point count 1 | Pass | None |
| 1.2 Serre tensor free/zero/direct-sum cases | M=0,O,O² | relative dimensions 0,d,2d; zero tensor does not admit faithful positive-degree CM action | Pass | None |
| Tensor base change, including nonreduced base | free/projective splitting over k[ε]/ε² | projectors 0,1,diag(1,0) remain idempotent; images have ranks 0,1,1 before/after ε=0 | Pass | None |
| Need for finite projectivity in Lie comparison | Gaussian char5, torsion module O/(2+i) | fppf quotient by the isogeny is 0; Lie quotient is k because 2+i acts by 0 | Pass negative control | None |
| Ideal tensor inclusion and norm degree | c=(2), d=1,2; unit ideal | kernel ranks 4,16,1, equal to absolute norms 2²,2⁴,1 | Pass | None |
| Composition-rank supplier law | [2] followed by [3], d=1,2 | 4·9=36=6²; 16·81=1296=6⁴ | Mathematics passes; name stale | R01 |
| Degree in inseparable versus étale branch | char5, i acts by3 | 2+i has differential0, rank5, one geometric point; 2−i has differential4, rank5, five points | Pass | None |
| Type preservation under ideal tensor | rank-one selected eigenspace; complementary eigenspace | local ranks 1·1=1 and 1·0=0 | Pass with stated Lie/projectivity hypotheses | None |
| Hodge ranks and dual torus convention | Gaussian γ=i | Lie eigenvalue i; dual torus eigenvalue i⁻¹=−i; Hodge ranks 1+1=2 | Pass | None |
| Integration naturality | cycles 1,i and [2] | integrals 1,i; ∫₁2dz=2=∫₂dz; conjugation changes i to −i in the conjugate slot | Pass | None |
| 2.1 alternating trace form | ξ=i/2, x=1,i,0 | E(1,i)=1, E(i,1)=−1, E(1,1)=0; E(x,ix)=∣x∣² | Pass | None |
| Positivity conversion to supplier | ξ=i/2 versus −i/2 | E(1,i)=1; E(i,1)=−1; supplier uses −E, giving (−E)(i,1)=1 | Pass | None |
| Homothety and trace dual | I=ℤ[i], u=2 | E_i/8(2,2i)=1; unchanged ξ gives4; integral alternating matrix has determinant1, so I#=I | Pass | None |
| Rosati-preserving CM action hypothesis | Gaussian square, H=[[1,1],[1,2]] | detH=1; Rosati(diag(i,0))=[[-2i,-2i],[i,i]], outside the diagonal CM algebra | Pass negative control | None |
| Primitive simplicity versus full endomorphism algebra | Gaussian elliptic curve and its square | End⁰ dimensions 2 and 8; product CM subalgebra in square has dimension4 | Pass | None |
| Maximal-order Picard comparison | Gaussian elliptic lattice and its surface square | class count1; [2] degrees4 and16, agreeing with norms in degrees2 and4 | Pass | None |
| 2.2 reflex ideal multiplication and unit | (2+i),(2−i),O | norms5·5=25; product ideal(5); unit norm1 | Pass | None |
| Principal law needs order-local units | O₃ and i | contraction of maximal unit ideal is O₃; iO₃≠O₃ since i∉O₃ | Pass negative control | None |
| Conjugation-stable order qualification | ζ₅ residues3,9 mod11, z²−z | residues6,6 before conjugation, 1,9 after; a nonstable order cannot support the asserted internal conjugate-ideal law | Pass | None |
| Arithmetic idele/torsion convention | principal scalar2, σ=1 | f=1/2, α=2, α(fx)=x; α(x)=2x alone is wrong | Pass | None |
| Polarization multiplier | same scalar2 | χ=1, f·f̄=1/4, c=4; E(2x,2y)=4E(x,y) while the composite natural map has multiplier1 | Pass | None |
| Integral freeness not inferred at conductor primes | O₃ at ℓ=3, maximal lattice O_E,3 | rational rank1; multiplier ring O_E,3 differs from O₃,3, excluding a free rank-one O₃,3 model | Pass | None |
| 2.3 higher-genus field versus constants | g=2, any level | intended transcendence degree 3; constant model degree0; existing genus-one checks do not distinguish them | Insufficient Checks | R02 |
| Imported genus-one evaluation and poles | Gaussian j and 1/(j−1728) | j evaluates to1728; reciprocal denominator0, so outside evaluation local ring | Pass imported comparison | None |
| Semilinear coefficient action | N=5, U=diag(2,2,1,1) | multiplier2; ζ₅↦ζ₅²≠ζ₅; applying twice gives ζ₅⁴ | Pass | None |
| Inverse row-matrix normalization | N=5, diag(2,1) in genus1 | inverse diag(3,1); coefficient powers2 versus3 differ; first basis vector 2e₁ versus3e₁ | Pass | None |
| Stabilizer retains congruence and norm | Gaussian a=(2+i), N=1,3,5 | norm5 allows level1; at level3 every generator has norm2 mod3, excluding µ≡1; at level5 the ideal is outside the prime-to-modulus domain | Pass | None |
| Level-two automorphism versus level-three rigidity | scalar−1 | −1≡1 mod2 but −1≠1 mod3; Gaussian origin automorphisms number4 | Pass | None |
| Polarized unit obstruction | E=ℚ(i), E⁺=ℚ | positive real units={1}; norm-unit quotient size1, exponent1 dividing2; bound1≤2 | Pass | None |
| Relative marked field and forgetting action | Gaussian j=1728 | M_abs=ℚ, E*=M_rel=ℚ(i); degrees over ℚ are1 and2; E*M_abs=M_rel | Pass | None |
| Fixed-field equality criterion | finite S₃ model, G_E=A₃, G_abs=⟨(12)⟩, G_rel=1 | intersection=1 so compositum degree6 equals relative field degree6; replacing G_abs by S₃ gives intersection A₃ and compositum degree2<6 | Pass in both directions | None |
| 2.4 Gaussian surface Frobenius | p5, π=−1+2i, square surface | normπ=5; degree on square25; poly (X²+2X+5)²=X⁴+4X³+14X²+20X+25 | Pass | None |
| Surface level-three pairing | multiplication by π on basis1,i | matrix[[2,1],[2,2]] mod3, determinant2; pairing multiplier2=5 mod3 | Pass | None |
| 3.1 primitive reduced census | D=1,2,3,4,12,36 | sizes0,0,1,1,1,2; [2,2,2] at D12 has gcd2 and is removed | Pass | None |
| Root definition and denominator | [1,0,1], [1,1,1] | roots i and (−1+i√3)/2; a=1>0, denominator2; D0 excluded by NeZero | Pass | None |
| Actual analytic class polynomial | D3,D4,D36 | X; X−1728; X²−153542016X−1790957481984; degrees1,1,2 | Pass | None |
| Census boundary and total polynomial functions | D1,D2; k>degree | empty product1; high coefficients0; hD excludes D1,D2 from the headline | Pass | None |
| 3.2 exact field versus one value | Gaussian levels1,3,5 | ray degrees1,8/4=2,16/4=4; j alone always gives degree1 | Pass | None |
| Separating-family iff | Gaussian level3 | family{j} fixes both orbit points and gives degree1; separating family has trivial quotient stabilizer and gives degree2 | Pass both directions | None |
| Field inclusion and conductor divisor | level1 dividing3 | K(1728)=K⊂M₃ of degree2; level1 conductor1, not an imposed exact conductor3 | Pass | None |
| Nonabelian absolute action | discriminant−23, Pic=C₃ | conjugation sends class1 to2; reflection·rotation·reflection=rotation² in S₃ | Pass | None |
| 3.3 exceptional units in ray degree | Gaussian N1,3,5 | unit image sizes1,4,4; residue unit sizes1,8,16; quotients1,2,4 | Pass | None |
| Nonmaximal ring degree | O₃ in ℚ(i) | class number 3·(1+1/3)/2=2; conductor-unit index2 is necessary | Pass | None |
| 4.1 attached character principal law | elliptic infinity type; α≡1 modulo conductor | ideal exponent+1, idelic infinity exponent−1; ideal norm of (2+i)=5, not unit norm1 | Pass | None |
| Minimal conductor versus working modulus | good-reduction extension at a conductor-index prime | inertia image1 gives least conductor exponent0; a chosen working modulus may retain a positive exponent | Pass | None |
| Rational Tate rank and components | elliptic curve and surface | ℚℓ dimensions2,4; rank1 over CM algebra of dimensions2,4 | Pass | None |
| Avatar inversion | arithmetic eigenvalue π | geometric avatar of inverse character gives arithmetic π; using the uninverted character gives π⁻¹ | Pass | None |
| Frobenius norm and trace | y²=x³−x at5 | #E=8; trace−2=−1+2i+(−1−2i); norm5; polyX²+2X+5 | Pass | None |
| Norm base change at inert prime | same curve at7 and over𝔽49 | #E(𝔽7)=8, trace0; eigenvalues square to−7; ψ((7))=−7 with norm49 | Pass | None |
| 4.2 good and bad Euler factors | Gaussian curve overK at5,7, bad2 | factors1+2T+5T², (1+7T)², 1; bad invariants dimension0 | Pass | None |
| Conductor additivity and inertia average | two conjugate rank-one characters; nontrivial C₂ inertia | exponents a+a=2a; projector(1+(−1))/2=0 | Pass over characteristic-zero coefficients | None |
| Quadratic induction/self-twist | index-two group, off-diagonal element | induced dimension2; off-coset trace0; quadratic twist changes its sign but leaves trace0 | Pass | None |
| Cartan normalizer bounds | Gaussian ℓ3,5; conjugation | Cartan orders8,16; diag(1,−1) trace0 and squareI; (a·conj)²=Norm(a)I | Pass | None |
| 4.3 canonical predicate versus wrong characters | principal α2, units−1,i,ζ₃ | trivial value1≠±2; norm value4≠±2; 1=−(−1), but 1≠±i,±ζ₃ | Pass | None |
| canonicalGrossExistence | D=−3,−4,−7,−8,−20 | RHS false,false,true,true,false; unit obstructions exclude first two; finite-character cases give−7,−8 and exclude v₂(D)=2 | Pass with Yang correction | None |
| Canonical class twists | θ order3 | θ(ā)=θ(a)⁻¹=conjugate θ(a); θ(principal)=1; θ∘Norm_H/K=1 | Pass | None |
| Attachment and good reduction | prime not dividingD; inert specialization | conductor exponent0 ⇒ inertia1 ⇒ good reduction; oddD,p≥5,p∤h add no extra factor to this implication | Pass general implication; BKO text unavailable | None |
| 5.1 geometric versus model-field endomorphisms | transcendental j; ordinary; supersingular finite-field model | geometric End⁰ dimensions1,2,4; finite-field supersingular centralizer can have dimension2 | Pass | None |
| Characteristics2,3 | y²+y=x³ over𝔽2; y²=x³−x over𝔽3 | point counts3,4; traces0,0; both supersingular | Pass | None |
| Potential good reduction and splitting | Gaussian primes5,7,2 | j=1728 integral; split5 ordinary, inert7 supersingular, ramified2 supersingular after good extension | Pass | None |
| Ordinary conductor specialization | f15,p5; f3,p5 | prime-to-p conductors3 and3; removing only the p-part retains the factor3 | Pass; primary locator uncertified | None |
| Frobenius ideal with embedding | P=(5,i−3), π=−1+2i | π modP=−1+6=0; at i=2 residue3; norm5 forces (π)=P | Pass | None |
| Newton slopes, multiplicities and ramification | Gaussian split/inert/ramified; ζ₅ at2 | 1/1 and0/1; 1/2 twice; 1/2 twice; 2/4 four times | Pass | None |
| Nonmaximal isogeny invariance of rational slopes | O₃→O_E | rational isocrystal unchanged; Gaussian inert slopes remain {1/2,1/2} | Pass | None |
| Lifting one endomorphism rather than all | π at5; quaternionic pair i,j | π satisfies X²+2X+5; ij−ji=2ij≠0 cannot lift into one commutative CM field | Pass; full primary proof unavailable | None |
| 5.2 horizontal/ascending/descending counts | ℓ2 split,ramified,inert; ℓ∣f | triples(2,0,1),(1,0,2),(0,0,3),(0,1,2), each total3 | Pass | None |
| Kernels versus distinct targets | Gaussian maps2+i,2−i | two degree5 kernels; both targets have j1728, so target count1≠2 | Pass | None |
| Supersingular level order | (p,N)=(7,1),(7,5),(2,3) | reduced discriminants7,35,6; level1 maximal | Pass | None |
| 5.3 root/coefficient headline | D3,D4 | M≈2345.332,2650.059; root norms0,1728; ceilings2347,2652; high coefficients0 | Pass | None |
| General finite-product coefficient estimate | roots1,2; empty roots | coefficients(2,−3,1), bound(1+1)(1+2)=6; empty polynomial1 and bound1 | Pass | None |
| Perturbation bound | roots(1,2)→(1.1,2.1), M2,δ.1 | constant error31/100, linear error1/5; bound2·.1·3.1=31/50 | Pass | None |
| Strict rounding margin and h=0,1 | h1,M0,δ1/8; empty | threshold1/4; error≤1/8<1/4; empty difference0, bound0 | Pass | None |
| Unique integer coefficient intervals | [6.9,7.1] | only integer7; proposed6 excluded; product unchanged by permuting roots1,2 | Pass | None |
| 5.4 signed relation count and evenness | trivial,C₂,C₃; n0,1,2 copies of generator | n0 all1; n1 counts2,0,0; n2 counts4,4,2; evenness needs n>0 | Pass | None |
| Inversion, zero exponent and quotient monotonicity | C₃ unary; exponent0; quotient to1 | inversion keeps count0; exponent0 gives2; quotient increases0 to2 | Pass | None |
| Commutativity and signed paths | two copies in C₂,C₃; S₃ excluded | returning sign paths4,2; counting distinct endpoints gives1 in each; S₃ has ab≠ba | Pass | None |
| Prime-power conductor criterion | q641,t8,v25,D_K−4; k1,2 | t²−4q=−2500; (D₁,D₂)=(−4,−100),(−100,−2500); u5 gives true,false; u25 true,true | Pass conditional criterion | None |
| Concrete separating relation | ℓ13, conductors1 and5 in ℚ(i) | 13=3²+2² gives signed count2; x²+25y²=13 has no solution, giving count0 | Pass; 5∣u iff count<2 on u1,5 | None |
| Whole-order valuation requirement | v1; u5 versus25 | v1 forcesu1; same prime support{5} but valuations1,2 differ | Pass | None |
| 5.5 ordinary full-class reduction | D−4,p5; D−23,p5 | X−1728 becomesX−3; H−23 becomesX³, not three distinct roots | Pass; excludes false source generalization | None |
| Bounded CRT uniqueness and repeated primes | B10,M20/21; repeated5 | −10≡10 mod20, not mod21; repeating mod5 still gives modulus5, not25 | Pass | None |
| Empty CRT family and zero polynomial | B0,M1 | 1>0; every coefficient forced0, including beyond degree0 | Pass | None |

Finite-field counts, reduced-form censuses, polynomial residues and signed counts were recomputed in scratch; the exact matrix, lattice, group and scalar computations above were also checked independently. The defining conditions exclude the zero CM algebra, D=0, zero denominators, nonprojective tensor inputs and the wrong integral realization at conductor primes where required. General finite-sum and empty-product statements explicitly retain their empty cases.

### Seeded source sample

All **15 specified sample subsections** were followed to their cited locations. No further locator is expressly labeled unverified in the README. All **20 referenced works** were attempted through the sources service; **17 texts** were obtained. The three inaccessible works and the damaged Kato extraction are distinguished below. The cited arXiv versions, not assumed journal numbering, were used for KS, CRT and Endo.

| Sample target | Text opened at its locator | Support and hypotheses checked |
|---|---|---|
| 0.1 Inverse-coset reflex pairs | MilneCM line 421, Prop.1.16 p.13; line 475, Example1.19 p.14; line 629, Example1.28 p.18 | Trace/stabilizer field, inverse extended type, primitive core and reflex of an induced type. Product algebras are not assigned one primitive reflex pair. |
| 0.2 Integral reflex data and concrete fields | YZ line 559, §2.2 p.546; AGHMP line 1209, §3.4 p.420 | Selected factor/order and its relative discriminant; total-reflex embeddings indexed by types. The arbitrary-order image construction and quartic examples are explicit extensions/calculations here, not quoted theorems of YZ. |
| 1.2 Serre tensor, Lie and period comparisons | KS line 399, Defs.1.7–1.8 and (1.2.3) p.9; line 449, Def.1.9/Prop.1.11 pp.10–11; line 537, (1.3.3)–(1.3.4) p.12 | Projectivity and the CM-type Lie hypothesis are retained. The arbitrary-base representability and finite-flat degree route use the named A1.3a/A6.12 contracts, not an extrapolation from KS's restricted base. |
| 2.1 Polarized classification in every dimension | MilneCM line 986, Example2.9 pp.25–26; line 1214, Prop.3.17 p.31 and preceding hypotheses | Trace form, positive imaginary ξ, Rosati preservation and full-degree CM action. The product-algebra counterexample explains why Rosati compatibility cannot be omitted. |
| 2.2 Reflex ideals, torsion and polarization | Streng line 303, §2.6 p.6; MilneCM line 3264, Thm9.10/Rem.9.11 p.78; line 3364, Thm9.17 pp.80–81; MilneFT line 832, Thm3.2 pp.19–20 | Conductor restrictions, actual torsion map and polarization scaling. The arithmetic/geometric reciprocity conversion is witnessed by the scalar2 calculation. |
| 2.3 Level functions, stabilizers and relative fields | Streng line 324, Thms2.4–2.5/Def.2.7 pp.7–8; line 677, §4.2 p.14; line 784, §4.5 pp.16–17; Tsimerman line 308, §5 p.386 | Primitive principal-polarization/full-order setting; inverse matrix; coefficient action; conductor divisibility and exact stabilizer. Relative marked field is kept separate from absolute unmarked field. |
| 3.1 Analytic class polynomial for the coefficient bound | CRT line 782, §5.2 p.17; line 1432, Appendix Lemma8 pp.31–32; MIT20 line 305, Thm20.12 p.6 | Complete primitive census and root bound. The native simple polynomial is retained for the bound; integrality and elliptic reciprocity are imported. |
| 3.3 The Gaussian ring and ray examples | MIT16 line 199, Cor.16.5 p.5; line 307, Thm16.12 p.7; MIT20 line 305, Thm20.12 p.6; Streng line 342, Thm2.5 pp.7–8 | Multiplier order, units and ideal classes. Values and degrees are the roadmap's calculations; the source need not print these exact examples. |
| 4.1 Attached character, coefficient components and Frobenius | MilneCM line 3264, Thm9.10 p.78; BT line 253, Thm1.1 proof p.6; Kato line 5572, §15.10 p.260 | Actual elliptic CM factorization/induction. Higher-dimensional character attachment is an owned target using the main-CM and avatar suppliers; it is not attributed to BT's elliptic statement. |
| 4.2 All-prime factors and induction | BT line 253; Kato line 5572; BS line 767, §6 pp.372–373 | Induction and the Gaussian normalizer application. General bad-prime factors use finite inertia and actual local representations from suppliers. BS's example is not treated as a proof of a general equality of residual images. |
| 4.3 Canonical Gross conditions and inert reduction | Yang line 24, (0.1)–(0.3) p.1; line 42, attachment p.2; line 592 onward, §4 pp.16–19, Prop.4.2/Cor.4.3 | Principal signs, conjugation, ramified conductor support, finite-character existence for the stated nonexceptional cases. The −3 unit obstruction corrects the introductory overstatement. BKO specialization remains unverified. |
| 5.1 Deuring classification, specialization and lifting | MIT21 line 521, Thm21.15 p.10; MilneCM line 2734, Thm8.1 pp.66–67; line 3033, Prop.8.11/Thm8.12 pp.72–73 | One-endomorphism lifting; unramified maximal-order Frobenius ideal formula; slope ratio including the ramified rational setting. Primary Deuring and GZ details remain uncertified. |
| 5.3 Height, perturbation and integral coefficients | CRT line 1432, Appendix Lemma8 pp.31–32 | Unconditional root constant2114.567. The product coefficient estimate, perturbation bound and interval criterion are elementary deductions explicitly stated here; they use no GRH. |
| 5.4 Signed relations and the ordinary conductor | Endo line 235, Lemma3/Cor.4 p.5; line 253, Prop.5 p.6 | Count monotonicity, exact prime-power criterion, and existence for r>3. The criterion assumes an actual separating relation; the roadmap does not infer a whole order from prime support alone. |
| 5.5 Reduction products and integer reconstruction | CRT line 774, §5.2 p.17 and §6 pp.18–20; MIT21 line 515, Thm21.14 p.10 | Full-class products and coefficient congruences; the roadmap restricts to ordinary total-splitting primes, avoiding the source's false unrestricted residue-norm assertion. |

Other inspected passages include MIT16 Theorem16.4 p.4 (line144), the degree/endomorphism comparison; MIT20 Lemma20.9 p.5 (line255), its prime restriction; and MIT22 Theorems22.3/22.5 pp.2–3 (lines66–150), the complex kernel counts transported by the named reduction/lifting targets. The algorithmic portions of CRT and Endo are not proposed as deliverables.

### Pinned-library and ownership audit

The pins inspected were Mathlib **6b7abb3c7686292736be2955bd3eb9ebf63b456a** and Tau Ceti **a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039**. Paths below are relative to their library roots. The table records **16 groups of native declarations** opened at those pins.

| File and line | Native object and boundary checked |
|---|---|
| Mathlib/NumberTheory/NumberField/CMField.lean:69,141,153,163,197 | IsCMField, complexConj, embedding compatibility, involution and real fixed field. NumberField is a separate hypothesis, retained in Lean. |
| Mathlib/RingTheory/ClassGroup/Basic.lean:89,104; Mathlib/RingTheory/PicardGroup.lean:429,553,876 | ClassGroup is invertible fractional ideals modulo principal ideals; Pic and base change; equivPic requires a domain. This is not a group of all nonzero ideals of a nonmaximal order. |
| Mathlib/FieldTheory/IntermediateField/Adjoin/Defs.lean:34,55; Mathlib/NumberTheory/NumberField/Basic.lean:101 | adjoin, adjoin_le_iff and RingOfIntegers; the generic generated-field construction is not an explicit CM generation theorem. |
| Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:388 | j uses the discriminant unit from IsElliptic, not arbitrary division by a possibly zero discriminant. |
| TauCeti/NumberTheory/NumberField/Global/Orders/Basic.lean:59 | NumberFieldOrder has a finite ℤ-subalgebra and full rational span; no second order carrier is required. |
| TauCeti/NumberTheory/NumberField/Global/Orders/ProperIdeal.lean:38; Picard.lean:34,39; Conductor.lean:38 | Multiplier ring, Pic/mkPic and conductor. Proper/invertible distinctions are retained. |
| TauCeti/NumberTheory/NumberField/Global/Orders/Discriminant.lean:107; AwayConductor.lean:116,258; RayClass.lean:208 | Discriminant-index formula, extension/contraction and invertibility away from conductor, finite_pic. |
| TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95; End/Basic.lean:83,92,95 | Proper geometrically integral group scheme; actual endomorphism morphisms. These do not themselves bundle a CM type, polarization or period comparison. |
| TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Degree.lean:99,145 | degree is function-field finrank; degree_eq_finrank requires the scalar map to equal fieldPullback. It is not a geometric-point count. |
| TauCeti/NumberTheory/GeometryOfNumbers/RankTwoDoubling.lean:51,64,70 | Gaussian lattice, membership and nonzero norm bound on Fin1→ℂ. The cited module exists. |
| TauCeti/NumberTheory/NumberField/ComplexConjugation/CMField.lean:68; TauCeti/NumberTheory/EffectiveBounds/UnitSquares/Basic.lean:62 | Place/CM conjugation comparison and units_sq_index_le with NumberField hypothesis. |
| TauCeti/NumberTheory/BinaryQuadraticForm/Reduced.lean:60,76,82,100,105 | Reduced-form census and boundaries; primitivity is not part of reducedForms, so the additional gcd filter is needed. |
| TauCeti/NumberTheory/BinaryQuadraticForm/Root.lean:65,107; Reduction.lean:177,204 | Actual upper-half-plane root; positivity of the nonzero-discriminant census and orbit representatives. |
| TauCeti/Analysis/Complex/ModularForms/LevelOne/JInputs.lean:81,88,96,171,176 | j, holomorphy/invariance and special values0,1728. These do not already prove the general CM bound. |
| TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/Basic.lean:74; Algebraic.lean:60 | Native continuous idele-class character and its algebraicity predicate; Gross conditions add actual laws, not opaque properties. |
| TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/FiniteComponent.lean:251; Ideal.lean:117,156,196 | Least conductor, ideal character and principal congruence formula; inverse infinity component matches the chosen ideal convention. |

The object searches used the roadmap search/show tools as well as pinned-source searches: CM types/reflex fields and orders, Serre tensors, ideal-lattice actions, class polynomials, polarized realizations, Hecke/Tate interfaces, Deuring/quaternion orders and conductor relations. Main, board packages and the supplied open-head files were searched. No fully qualified collision with the five retained declarations was found.

H3.1 is now the owner of the elliptic objects; A1.3a/A4.7a own generic Serre tensors and realization comparisons; ShimuraVarieties owns CM partitions, norms and the Siegel tower. The present roadmap owns their stated CM specializations, explicit reflex/polarized reciprocity refinements and conductor/height comparisons. ComplexMultiplicationAndExplicitReciprocityPartII:57 and its height section import this base rather than supply it. The inspected AutomorphicPadicLFunctionsPartII and NonordinaryCMSpecialValues package contracts likewise import the CM tensor or canonical-character interface. GrossZagierAndArithmeticHeights:19 imports the full-order CM action. These searches did not establish another owner of a retained headline.

The shape comparison used main's AlgebraicCurves, EllipticCurves and ImaginaryQuadraticClassNumber. The target has the requested opening, scope, conventions, contracts, ordered layers, examples/dependencies, consumers and references. Definitions have APIs and Check lists; R02 identifies the concrete weakness in their discriminating coverage.

### Cross-roadmap and supplier-order audit

Every supplier family in the scope, contracts and Needs lines was resolved against main for existing roadmaps or the supplied open head for new roadmaps. These are **23 distinct supplier/owner roadmaps**.

| Supplier | Resolved sections and file locators |
|---|---|
| GlobalNumberFields | Completed/GlobalNumberFields/README.md:459,476,508,531,571, Layers7–11: congruences, norms, Hecke characters, infinity types and orders. |
| ClassFieldTheory | TauCetiRoadmap/ClassFieldTheory/README.md:1683,1724,1799, Layers11–13: arithmetic Artin, existence/correspondence, ring/ray fields. |
| EllipticCurves | TauCetiRoadmap/EllipticCurves/README.md:423,647,683,793,1154, Layers1–5: equation/function-field isogenies, torsion, finite fields, reduction and twists. Its scheme exclusion is respected. |
| AlgebraicCurves | TauCetiRoadmap/AlgebraicCurves/README.md:1610, §12C: smooth proper curves/function fields and contravariant morphism comparison. |
| ModularCurves | TauCetiRoadmap/ModularCurves/README.md:449,466,486,563,601,751,831, §§1A–1D,2A,2D,2E: projective models, multiplication degree and pairing comparisons. |
| ModularCurvesPartII | TauCetiRoadmap/ModularCurvesPartII/README.md:393,421,445,466,513,1286,1737,2122, §§1.1–1.5,3.14,5.6,6.1: analytic comparison, differentials, level functions and cyclic modular polynomials. |
| AbelianSchemesAndArithmeticModuli | TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:792,906,1388,1683,2125,2274,2557,2814,3042,3832: A1.3a,A1.6,A3.1,A3.9,A4.CR.7.2,A4.7a,A5.2,A6.1,A6.12,A6.37. Generic carriers, tensors, realization, Rosati, degrees and simplicity are present. R01 is only the composition-rank alias. |
| ShimuraVarieties | TauCetiRoadmap/ShimuraVarieties/README.md:1007,1283,1301,1411,1487,1536,1555,2202,2237,2256: §P.3,§4.2,§5.0–§5.1,§5.4,§5.8,§5.10–§5.11,§8.1–§8.3. The consumed cardinality is for nonempty CM products; norm identity(d) is cited as prose. |
| ImaginaryQuadraticClassNumber | TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:83–89, H3.1: full-order elliptic classification, ideal action, singular integrality, class polynomials and ring/ray reciprocity. |
| CrystallineCohomology | TauCetiRoadmap/CrystallineCohomology/README.md:6620, CR.4.7: slope decomposition on the native WittVector.Isocrystal carrier. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:3537,3568, R07.2.15–R07.2.16: integral Dieudonné comparison, rational slopes and extension invariance. |
| ArithmeticGaloisRepresentations | TauCetiRoadmap/ArithmeticGaloisRepresentations/README.md:896,1383,1449,2497,3147,3193,3631,3827,3870,3973: §§1.3,1.12,2.1–2.5,3.1–3.5,5.1,5.3,6.1–6.4; realizations, induction, local factors and conductor sums. |
| AutomorphicGaloisRepresentationsPartII | TauCetiRoadmap/AutomorphicGaloisRepresentationsPartII/README.md:751, AG2.0: AlgHeckeChar.galoisChar is a roadmap contract with geometric-Artin normalization. Its absence from the pins is not drift. |
| ArithmeticStatisticsPartVII | TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2441,2469: CM character and ideal-isogeny contracts, including their H3.1 dependency. |
| NeronModelsAndSemistableAbelianVarieties | TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:832,938,2933,2996,3516,3576, §§1.5,1.8,5.1,5.2,5.3i,5.6: extension, good reduction and local factors; the final contract includes finite-extension descent. |
| GL2AutomorphicRepresentationsAndTransfer | TauCetiRoadmap/GL2AutomorphicRepresentationsAndTransfer/README.md:2127, R17.4.16: quadratic automorphic induction. |
| AutomorphicGaloisRepresentations | TauCetiRoadmap/AutomorphicGaloisRepresentations/README.md:1134,3097, §§1.5,7.3: rank-two and fixed-newform compatible realizations. |
| IntegralLattices | TauCetiRoadmap/IntegralLattices/README.md:1032,1093,1167, B2/B3/B5: forms/ideals, composition and reduced census; negative discriminant uses Pic rather than narrow Pic. |
| GeometryOfNumbersAndQuadraticArithmetic | TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:742, §2.8: quaternionic lattice/order framework. |
| SerreWeightAndLevelOptimisation | TauCetiRoadmap/SerreWeightAndLevelOptimisation/README.md:452, §2.6: enhanced supersingular pair and Eichler order, maximal at level1. |
| QuadraticFormInvariants | TauCetiRoadmap/QuadraticFormInvariants/README.md:1145, Layer2: native quaternion and reduced-norm framework. |
| Chebotarev | Completed/Chebotarev/README.md:370, Layer9: abelian density squeeze and hence prime realization; finite exclusions do not consume its later analytic effective bounds. |
| ModularForms | TauCetiRoadmap/ModularForms/README.md:57,261, Layer0: LevelOne.JInputs contract, independently implemented at the pin. |

The four worker citation leads were resolved: galoisChar is AG2.0's named roadmap API; Polarization.rosati is A3.9's API; RankTwoDoubling is an existing module; comp_rank is the stale alias in R01.

The prescribed dependency check's complete output is:

```text
depcheck: 205 roadmaps, 1476 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. Every Needs list and the layer Dependencies lists were read, including the route-specific degree and slope inputs. No later-supplier dependency, unowned prerequisite, duplicate generic construction or circular proof route was established. No supplier gaps are declared. No prerequisite was moved in this read-only review.

The worker's gate at this exact head reports all counters zero and OK: build, depcheck, outside-folder, dirty, stray-files, source-material, imports, sorry-data, sorry-examples, set_option, residue and all other text/form checks. The independent targeted build and direct elaboration agree with it.

## Not verifiable

- **Deuring**, Introduction pp.197–200, §§2.4–2.10 pp.212–218, §8 p.258 and §9.1 pp.258–262: the sources service reached DOI 10.1007/BF02940746 and classified it as uncertified/paywalled. The original classification, conductor specialization, local-order details and lifting proof were not read. MIT21 verifies the secondary lifting statement, not every primary locator.
- **GZ**, Chapter III §4 p.257 and §7 p.261: DOI 10.1007/BF01388809 likewise yielded an uncertified citation rather than a readable text. MIT16/20 support the lattice/ideal comparisons; the exact GZ passages are not certified.
- **BKO**, §3.0.1 pp.950–951 and Theorem3.4 proof/equation(3.8) p.953: the legal Caltech deposit redirected to storage rejected by the sources service, including on retry with the institutional classification. The NSF Public Access copy timed out. The inert-prime specialization remains unverified. Its existing key BKO is the sole unresolved item retained in the scratch missing-reference list.
- **Kato**, Lemma15.11 pp.261–262: extraction damages some diagram labels/formulas. The readable §15.10 prose supports induction and the type convention; the damaged labels were not certified or used to allege an error.

The sampled mathematical targets were still examined through their definitions, available supporting sources, named suppliers and explicit controls. These limitations do not conceal a known mathematical blocker. The two paywalled items were not reopened as missing-text requests. Successful publisher fetches were removed from that list. No PR file or source manifest was changed.

## Source issues

- **Error** in MIT21 at Theorem21.14, printed p.10 (MIT21 line 515): the source says arbitrary residue norms of ring-class-field primes give distinct roots and exact CM endomorphism orders; it should require the ordinary split setting used here; affects a stated result.
- **Error** in Yang at Introduction property(B), printed p.2 (Yang line 47): the source says canonical characters exist for every odd fundamental discriminant or one divisible by eight; it should exclude discriminant −3, whose cubic units violate the principal-sign condition; affects a stated result.
- **Misprint** in Endo at Proposition5 proof, printed p.6 (Endo line 261): the source says finiteness of S₁ minus S₂ corresponds to L₁ contained in L₂; it should reverse that containment and the subsequent noncontainment to L₂ contained in L₁; affects the proof.
- **Misprint** in CRT at Appendix Lemma8 proof, printed p.31 (CRT line 1453): the source says the class-polynomial product runs from index zero through h; it should run from one through h for the h indexed forms; affects nothing.
- **Misprint** in Tsimerman at Theorem5.2 proof, printed p.386 (Tsimerman line 308): the source says the norm of an ideal of K* is taken from K and uses O_K/I; it should take the norm and ideal quotient in the reflex field K*; affects the proof.
- **Gap** in MilneCM at Proposition8.11, printed p.72 (MilneCM line 3033): the source says the CM p-divisible endomorphism degree equals its order index and leaves the proof absent; it should justify the degree/index identity, including the ramified setting used by Theorem8.12; affects the proof.
- **Misprint** in MIT22 at Theorem22.5 proof, printed p.3 (MIT22 line 147): the source says the auxiliary prime divides the order indices; it should say it divides neither index, as required by the preceding coprimality choice; affects the proof.
