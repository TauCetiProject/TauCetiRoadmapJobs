# Repair report: GlobalGaloisDeformationsPartII

## F01 (P1) — applied differently

Unconditional general lifting → lifting conditional on §3.2’s arithmetic selection hypothesis, propagated through construction and application statements, Summary, Scope, downstream contracts and Lean docstring. Deleted the self-supplied gap. Section 6.6 instead owns the independent FKP19 K′ construction. Given-tower relative arguments retain their intrinsic generality; their §3.6 input construction is explicitly conditional.

## F02 (P2) — applied

Two redundant local gaps → imports of LocalGaloisDeformationRings §§6.5, 6.17 and 2.28. Deleted both plan entries and README contracts; updated all consumers, including §§8.5, 10.1 and dependency summaries. The supplier explicitly imposes character-basis equations, gives the fixed-quotient dimension formula and supplies smooth Steinberg lifts at the specified trivial primes.

## F03 (P2) — applied differently

Three compound requests → seven quantified exports, each with finite field, group, characteristic bound and relevant parabolic or torus. Separated exponential construction from its adjoint expansion, semisimplification from scalar extension and adjoint filtration, and varying-torus root position from prescribed-root toral regularity. Updated plan contracts and consumers; added computed negative controls. The opposite-radical identification is only M-equivariant.

## F04 (P2) — applied

“Stable-lattice segment and fixed-weight-level finiteness” as an unstatable headline → only fixed-weight-level finiteness, lacking newform Galois attachments with lattices. Section 8.9 remains a README input theorem. No Lean declaration was added: a statable input lemma does not belong in the headline acceptance test.

## F05 (P2) — applied

Unattributed endpoint existence → IntegralHeckeAndGaloisDeterminants §1.4, “Classical Ribet lattice”, in Scope, Exact supplier contracts and §8.9 Needs. Section 8.9 retains segment shape, split interiors and endpoint invariance under coefficient extension. For a bounded image, apply the supplier to its compact closure; the stable lattices and invariant subspaces are unchanged.

## F06 (P3) — applied

Unattributed complex Whitehead overlap → AffineLieAlgebras §A1 in Scope and supplier contracts. The AutomorphicFormsOnReductiveGroups request explicitly extends that complex-simple input to the ArithmeticLocallySymmetricSpaces ALS.F.5 complex, semisimple Lie algebras over p-adic fields and all-degree vanishing without invariants. The existing supplier gap remains, with synchronized needs text.

## F07 (P3) — applied

Nonexistent slash labels → ModularityAndLanglandsExtensions §§2.28 and 2.48, OrdinaryAutomorphicFormsAndModularityLifting §5.2 and GL2ModularityLifting §10.15. Replaced every occurrence. The heads contain those sections; their hypotheses and the distinct remaining ordinary-seed, monodromy and unconditional-Pan requests are retained.

## F08 (P3) — applied

Repeated scalar Check → one computation; copied Examples in Layers 1 and 3–10 → pointers. Consolidated the reductive-contract Checks and kept the apartment computation in §8.9. Added §8.8’s API lead-in and repaired its list; removed §7.8’s repeated δ sentence and fixed “Theorem 5.2”. Also merged matching repetitions in §§3.2, 3.4, 7.7, 8.10 and 10.1.

## F09 (P3) — applied differently

Unspecified comparison → implication from all §6.3 hypotheses and dense connected central quotient to a Zariski-dense L-homomorphism satisfying Conjecture D’s lifting bullet. Explicit surjectivity of the finite component projection supplies density in all components. Added dimension witnesses and a proof route. Automorphy and no-new-ramification are not conclusions of this implication.

## F10 (P3) — not actionable in this package: retrospective intake decision

The historical removals and modifications occurred before this round. Accepting or reversing that intake history requires the maintainer’s decision; restoring obsolete compound gaps would contradict F02–F03. Restoring G1’s fields as an active self-supplier would contradict F01. Its mathematical warning remains in §2.9 and the unchanged design README. This round changes only the permitted top-level gaps list.

## F11 (P3) — applied

Finite correction ω → ω₀ throughout the local contract and §8.3; ω retains the mod-3 cyclotomic meaning. Section 4.7 explicitly imports exactness, fibre stability and cardinalities from the local contract. FKP19 now has the verified published DOI alongside its arXiv locator and precise version note. FKP22’s manifest wording is “applications”.

## Evidence and boundaries

FKP22 line 666 states the full-family independence assertion. FKP22 lines 678–690 pass from a generating inertia vector in each projected factor to a conclusion about their product; the second occurrence is FKP22 lines 804–816. On two equal scalar factors, the joint inertia span has dimension 1 inside a product of dimension 2. The difference has inertia 1−1=0, and repetition in finite old-ramification H¹ produces coefficients (1,−1,−1,1). FKP19 lines 2653–2676 give the repeated-constituent irreducible examples. These calculations invalidate that route, without refuting the lifting endpoints themselves.

Section 3.2 therefore proves only the elementary estimate under its conditional proportions. It does not assert that C1–C4 imply the arithmetic hypothesis. The hypothesis covers the tuple construction and each finite-stage enlargement and coefficient extension. For split or Levi applications it applies to a choice of parabolic extension meeting the stated requirements. It is explicit in §§3.4, 3.6, 6.3–6.5, 7.6–7.8, 8.5–8.7, 9.2–9.5 and 10.1–10.4. Sections 4.6, 5.1, 5.3–5.5 and 6.1 distinguish the conditional manufacture of the tower from the relative theorem on a supplied tower. Local statements and the Frattini criterion require no arithmetic selection hypothesis.

The independent §6.6 route uses FKP19 Definition 5.8, line 1298, Proposition 5.9, line 1308, Lemma 5.11, line 1435, Proposition 5.12 and its tuple-density setup, line 1535, Theorem 5.14, line 1767, and Theorem 6.11, line 2250. Its K′ absorbs the old-ramification intersections; disjointness is over K′. ArithmeticGaloisDuality R02.3.1 supplies the required finiteness, rather than the generic continuous-cohomology roadmap. The relative and buffered arguments then operate on this independently supplied tower. This does not prove the general reducible arithmetic hypothesis.

The fresh root contracts use FKP22 lines 574–576 (the torus varies), 1985–1998 (P=MU over k and exponential), 2319–2326 (finite adjoint expansion), 1213–1231 (minimal-parabolic projection), and FKP19 lines 1723–1756 (toral regularity). For the adjoint filtration, the quotient Lie(G)/Lie(P) is a P-module whose underlying M-module is the opposite radical; it is not a P-stable opposite-root summand. Scalar extension permits a new minimal parabolic.

For F10, comparison of the package history confirms that G1 formerly carried title, detail and neededBy fields. The immutable design record still contains that discussion. The instruction to delete a self-supplied gap is incompatible with retaining that same entry as an active supplier request. The maintainer must decide how to preserve or accept historical design-gap changes at intake. No such decision, merge-order edit or edit to another roadmap was made here.

## Adversarial mathematics pass

Each numbered target has a row below. Additional rows cover standing conventions and newly split contracts. Values test the statements and their Checks; they are not proofs of deep existence theorems. “Conditional” means the arithmetic selection premise is retained, not independently proved by this repair. The unchanged Examples of Layers 0 and 2 use the same computations; the other Examples now point to their Checks.

| Statement | Instances tried | Computed values on the two sides | Result | Change |
|---|---|---|---|---|
| Coefficients and approximation | e=2,D=1; extension index 3,t=2; zero ring | eD+1=3; extended exponent 3·2=6; a field has 0≠1 | consistent; zero ring excluded | none |
| Tate dual convention | κ̄(g)=2 over 𝔽₅, trivial line | one twist acts by 2; two twists by 4 | distinguishes dual | none |
| Frobenius and cup sign | unramified u, tame t | inv(u∪t)=−1=4 over 𝔽₅; inv(t∪u)=1; self-pairs 0 | calibrated | none |
| Hodge–Tate convention | weight 2 GL₂; n=1 symplectic | GL₂ weights 0,−1 sum −1; κ has weight −1; symplectic weights 0,1 sum 1=HT(κ⁻¹) | calibrated | none |
| Correction-character notation | r=2, Art(p); p=3 cyclotomic generator | μ̄=κ̄χ̄κ̄⁻¹=χ̄; ω₀(Art(p))=1; cyclotomic ω has value −1 on a suitable inertia element | distinct objects | ω₀ |
| Arithmetic selection premise | four independent binary tests; four repeats; empty failure set | failure 1/16 versus 1/2; repeated conditional success 0; after an empty set failure remains 0 | repeats fail premise | explicit hypothesis |
| Tuple-density requirement | complementary alternating 0/1 sequences | limsup a=limsup b=1; limsup ab=0 | coordinate positivity insufficient | retained joint hypothesis |
| Exponential contract | SL₂, x=0,1,2; P=G | exp(0)=I; exp(E)=I+E; (I+E)²=I+2E; U=1 gives one point | matches graded addition | quantified |
| Adjoint expansion contract | SL₂ on F=E₂₁; SL₃ on E₁₂+E₂₃ | Ad(I+xE)(F)=F+xh−x²E; exp(E₁₂+E₂₃) has E₁₃ coefficient 1/2=4 at p=7 | quadratic terms necessary; p=2 excluded | separated export |
| Minimal-parabolic semisimplification | upper triangular image; trivial group; absolutely irreducible image | upper-right b=1 projects to 0; trivial GL₂ gives two trivial factors; P=G gives identity projection | no chosen extension class retained | quantified |
| Semisimplification scalar extension | C₄ in GL₂(𝔽_p), p≡3 mod 4; diagonal sum; trivial image | irreducible degree 2 becomes eigenlines i,−i over 𝔽_{p²}; diagonal and trivial sums unchanged | minimal P may change | separated export |
| Parabolic adjoint filtration | GL₂ Borel; P=G; GL₃ type (1,2) | graded dimensions 1+1+1=3; 0+d+0=d; 2+4+2=8; [E₁₂,E₂₁]=h | last identification only M-equivariant | separated export |
| Varying-torus root position | W=kE⊕kF; W=0; Gₘ | fixed roots in W; conjugated E=−h+E−F outside W; span of E,F,−h+E−F has dimension 3; zero derived space has no proper subspace | fixed-torus reading false | repaired quantifier |
| Prescribed-root toral regularity | sl₂ a=1,2,0; sl₃ p=7,5 | h/2 gives 1,−1; h gives 2,−2; a=0 forces 0; diag(2,1,−3) gives 1,5,4, with 5=0 at p=5 | a≠0 and prime bound needed | separated export |
| Nilpotent centralizer contract | SL₂ X=E₁₂,0 at p=7 | centralizer dimensions 1,3; first lies in Borel, second is G | nonzero required | unchanged |
| Semisimple Lie centralizer contract | X=h,0 at p=7; h at p=2 | root values 2,−2 versus 0,0; centralizer dimensions 1,3,3 | characteristic hypotheses matter | unchanged |
| Torus centralizer contract | SL₂ T,1; SL₃ diag(t,t,t⁻²) | centralizer dimensions 1,3,4 | trivial torus permitted | unchanged |
| Semisimple group centralizer contract | PGL₂ ratio −1 versus ratio other than ±1 | 2 components versus torus dimension 1 | Weyl representatives necessary | unchanged |
| Bounded-power Levi contract | PGL₂ ratio −1; identity | square 1 has centralizer dimension 3; identity already has it | whole G allowed as Levi | unchanged |
| Finite-image semisimplicity and H¹ contracts | SL₂(𝔽₁₁); torus; C₂ acting by −1 | 11>8; derived dimension 0 gives H¹=0; 2⁻¹=6 gives H¹(C₂)=0 | consistent | unchanged |
| Small-dimensional splitting contract | conjugated diag(1,−1); unipotent C_p | upper-right −2, complement k(e₁+e₂); unipotent Levi kernel has order p and no complement | injectivity necessary | unchanged |
| Larsen–Pink contract | C₃⊂𝔽₇×; unipotent C₇; trivial group | factor orders (1,3,1), (1,1,7), (1,1,1) | normal p-part retained | unchanged |
| Lie-cohomology export | trivial line over sl₂; adjoint sl₂; abelian 1-dimensional Lie algebra | trivial H⁰ dimension 1, H¹=H²=0; adjoint H⁰=0; abelian trivial H¹ dimension 1 | distinguishes invariant-free and Whitehead cases | owner cited |
| Local ordinary imports | Gₘ inertia values 1,4; fixed-det GL₂/ℚ_p | 0 root equations, basis values 1≠4; ordinary dimension 3+1=4 versus unrestricted 6 | already supplied | redundant gaps deleted |
| Local lattice/approximation exports | SL₂,r=2,O=ℤ₃; ramification index 2 | root condition 9³=729; unramified part 9²=81; p-adic regular size 9⁴=6561; ϖ³ becomes ϖ′⁶ | local cardinalities and accuracy agree | imported explicitly |
| §0.1 datum and tangent | GL₂; Gₘ; trivial line | dim sl₂=3 versus gl₂=4; torus tangent 0; dual value 2 versus 4 after extra twist | valid carriers and quotient | unchanged |
| §0.2 oddness | diag(1,−1),I; imaginary-field Gₘ | fixed dimensions 1,3 against flag 1; torus 0=0 | total reality separate | unchanged |
| §0.3 C1–C4 | M=0; trivial 𝔽₃; trivial 𝔽₉ | zero has no nonzero quotients; trivial fixed dimensions 1,1; 𝔽₉ has two prime-field trivial factors | tests zero quotient and scalars | unchanged |
| §0.4 trivial primes | p=3,q=7,5; nonidentity residual Frobenius | q mod 3 is 1,2; diag(1,2) has rank(g−1)=1; coboundary values 0,0 | all splitting conditions required | unchanged |
| §0.5 cocycle fields | zero class; C₂²; prime-field image in 𝔽₉ | degrees 1; compositum 4 versus product 8; image degree 3 versus 9 | joint disjointness distinguished | unchanged |
| §0.6 abelian compositum | C₂²; S₃ | commutator 1; (12)(123)(12)=(132)≠(123) | abelian hypothesis tested | unchanged |
| §0.7 cyclotomic intersection | p=3,D=1; nontrivial character | intersection degrees 1 or 3, never 9; −1 action has no trivial quotient | quotient condition correct | unchanged |
| §1.1 irreducible adjoint | SL₂(𝔽₁₁),p=7 comparison | invariants dimension 0; sufficient inequality 11>8 versus 7<8 | large-prime bound not automatic at 7 | unchanged |
| §1.2 cyclic quotient bounds | tori over 𝔽_{11ʳ}; PGL₂ involution | quotient order 11ʳ−1 unbounded; square centralizer full dimension 3 | semisimple restriction necessary | unchanged |
| §1.3 central Γ-series | 1; C₉; additive 𝔽₉ with scalar action | factor orders empty product 1; 3·3=9; one simple factor dimension 2 | correct prime-field factors | unchanged |
| §1.4 Jordan–Hölder | order-27 Heisenberg group; its centre | 3 trivial factors versus 1 in the central subgroup | original subgroup retained | unchanged |
| §1.5 cyclotomic exclusion | F contains μ₃; trivial adjoint with κ̄ of order 2 | degree 1 fails exclusion; characters have generator values 1,−1 | sufficient criterion only | unchanged |
| §1.6 faithful Levi-centre radical | SL₂ odd p; block (1,3) at p=5; p=2 | action weights 2; 3−(−1)=4; 2=0 at p=2 | correct centre and prime | unchanged |
| §1.7 block criterion | κ̄,ψ independent order 10, three scalar blocks | separate remaining degrees 10,10,5; joint remaining degree 1 | joint condition essential | contract consumers updated |
| §1.8 maximal parabolics | blocks (1,3); split Levi; Siegel (I,2) at p=5 | Hom invariant dimensions 0,0; Levi kernel order 1; radical scalar 2⁻¹=3 | nonsplitness and multiplier needed | contract consumers updated |
| §1.9 D(s,t,N) | zero exponents; χ=κ̄; χ=1, ord κ̄=5,N=4 | 1=1 fails; κ̄=κ̄ fails; five order tests all 5>4 | includes zero comparisons | unchanged |
| §1.10 primitive character | block dimensions 2,4 | exponents 2,−1; scalar value c⁴c⁻⁴=1 versus c⁸ | sign and primitivity fixed | unchanged |
| §1.11 GSp₄ examples | (cI,c²); χ=1 or κ̄ | ratio 1 versus det c²; all five orders 5 or failed order 1 at a=−1 | same computations, one Check | duplicate merged |
| §1.12 Borel criterion | quadratic torus SL₂; full U; N=E₁₂+E₂₃ in sl₃ | invariant dimensions 3,1; conjugated N=4E₁₂+6E₂₃ has bracket −2E₁₃≠0 | actual image action matters | expansion supplier separated |
| §2.1 orbit spans | zero; trivial 𝔽₉; simple scalar 𝔽₉ action | cardinalities 1,3,9 | prime-field span retained | unchanged |
| §2.2 killing Sha | 1-dimensional space; inflated class | nonzero evaluation kernel dimension 0 versus zero evaluation kernel dimension 1; inflated restriction 0 | C4 needed | unchanged |
| §2.3 simultaneous stabilization | 𝔽₃[x,y]/(x,y)² | dimension 3, socle dimension 2; dual coinvariants dimension 2>1 | dual need not be cyclic | unchanged |
| §2.4 one-prime sequence | Z=0; Z=1 in 𝔽₉ | terminal cardinalities 1,3; dimension increment 0,1 | no k-line substitution | unchanged |
| §2.5 spanning classes | cokernel 𝔽₃²; cokernel 0 | basis matrix rank 2 versus repeated rank 1; empty family size 0 | order of choices retained | varying-torus contract |
| §2.6 prescribed vector | k=𝔽₉,Z≠0 | inertia choices 2 in 𝔽₃Z versus 8 in kZ | correct scalar field | varying-torus contract |
| §2.7 marked dual classes | two basis indices | marked tuples (1,0),(0,1) have rank 2; new tuple (1,1) rank 1 | one-prime marking not cross-prime independence | unchanged |
| §2.8 inertia disjointness | three degree-3 fields in C₃² | product degrees 27, compositum 9; a quotient killing generating inertia has order 1 | joint generation required | unchanged |
| §2.9 grouped fields | two repeated scalar constituents; trivial SL₂ | product rank 2 versus joint rank 1; difference inertia 0; four-term coefficients (1,−1,−1,1) | unconditional independence invalid | conditional route explicit |
| §3.1 initial lift | ε²=0 versus ε²≠0 | product 1+ε(X+Y) versus extra ε²XY; nonzero local obstruction value 1≠0 | local lifts required | unchanged |
| §3.2 selection | ε=1/2,s=4,δ=1/10; repeats | 1/16<1/10 versus 1/2>1/10; subsequent repeat success 0 | elementary bound valid; arithmetic premise unproved | explicit hypothesis |
| §3.3 pairing | u,t over 𝔽₅ | pairings 4,1,0,0 in the two orders and self-pairs | sign correct | unchanged |
| §3.4 doubling | p=5,3,2 | coefficients (4,2),(2,2),(1,0); old sum −1+2=1 | odd p necessary; conditional | hypothesis added |
| §3.5 congruence-field exclusion | trivial common quotient; dual common quotient | nonzero map would give invariant dimension ≥1 rather than C1 value 0, or forbidden C3 quotient | no independence among dual fields needed | unchanged |
| §3.6 controlled tower | e=2,D=1; one prime added per level | last central level 2, first noncentral 3; union of n new primes unbounded | compatibility does not ensure finite ramification; conditional | hypothesis added |
| §4.1 relative images | identity on 𝔽₃²; zero map; inclusion 𝔽₃→𝔽₃² | image sizes 9,1,3 against targets 9,3,9 | images not full kernels | unchanged |
| §4.2 coefficient exactness | C₃ acting by 4 on ℤ/9 | boundary of 1 has value (4−1)/3=1; first H¹ map can kill a nonzero class | invariants required for injection | unchanged |
| §4.3 balance | adjacent full orders 81,27; unequal kernels | ratios 3=3; alternative kernels give 3≠9 | adjacent balance needed | unchanged |
| §4.4 compact Lie torsion | trivial lattice over sl₂; Γ=ℤ₃ | H¹,H² rational dimensions 0,0; H¹(ℤ₃,ℤ/3ʳ) exponent 3ʳ unbounded | semisimplicity essential | complex owner cited |
| §4.5 deep reduction | C₃ acting by ζ₃ on ℤ₃[ζ₃] | H¹ order 3 at every depth, reduction nonzero; residual invariant dimension 1 | negative control excluded by H⁰=0 | unchanged |
| §4.6 Q_N | ℤ₃,M=2,N=8,q=19,109; Gₘ | valuations 2,3; central 2I has rank(2I−I)=2; rootless Q_N size 0 | exact depth and derived rank needed | tower provenance explicit |
| §4.7 root condition | sl₂,r=2 | orders H¹=9⁶, L=9³=729, unramified part 81, quotient 9; dα(h)=2 | fibre and cardinality facts imported | ownership repaired |
| §4.8 smooth-point conditions | GL₂,r=2,degree-one p-place; index 2 extension | 729 away from p versus 6561 at p; ratio 9; accuracy exponent 3→6 | fixed quotient and original uniformizer retained | unchanged |
| §5.1 finite splitting field | zero adjoint; nonzero dual invariant line | zero H¹ order 1; Hom(𝔽₃,line) dimension 1 instead of required 0 | supplied tower required | provenance explicit |
| §5.2 simultaneous roots | A=h,B=upper-right evaluation in sl₂(𝔽₃); A or B=0 | dα(h)=2, B(E)=1, trace Gram determinant −2=1; zero test gives 0 | nonzero pair necessary | precise root contracts |
| §5.3 simultaneous detection | 𝔽₃²; affine r,r−1 | (1,1) gives both projections 1; r=2 gives 2,1 | one common factor and root; conditional construction | provenance explicit |
| §5.4 relative annihilation | level M=2, full Selmer order 81→27 | full measure drops by factor 3 while residual dimension can remain 1; zero images allow Q empty | finite order drives termination | provenance explicit |
| §5.5 factor orbits | two factors exchanged by C₂ | common component quotient order 2 versus unrestricted product order 4 | fibre product required | provenance explicit |
| §6.1 finite-ramification limit | n=3,M=2; fixed set size s | buffer depth 5, retained next depth 4; ramification count ≤s | compatible retained tower; conditional manufacture | provenance explicit |
| §6.2 finite image detection | ℤ₃,3ℤ₃, dense ℤ | Frattini quotient size 3; images sizes 1 and 3; dense ℤ proper | closedness necessary | unchanged |
| §6.3 geometric lift | Gₘ; GL₂ finite multiplier; extension index 3,t=2 | derived dimensions 0,3; torus kernel order 1; central dimension 0; approximation exponent 6 | full derived image not central density; conditional | hypothesis added |
| §6.4 sl₂ refinement | p=3,2 | dα(h)=2,0; doubling coefficients (2,2),(1,0) | p=3 survives, p=2 fails; conditional | hypothesis added |
| §6.5 nongeometric lift | degree-one GL₂ local field; real C₂ | unrestricted dimension 6 versus regular fixed-type 4; positive-degree real cohomology 0 | no geometric conclusion; conditional | hypothesis added |
| §6.6 independent irreducible lift | old field degree p, two extensions degree p²; r old scalar coordinates; induced rank 2 | compositum degree p³, relative degree p² versus false p⁴ over K; old scalar field degree ≤pʳ, r=0 gives 1; invariant-line counts 0 then 2 on restriction | disjointness over K′; cyclotomic irreducibility retained | independent route |
| §7.1 lattice change | SL₂ cocharacter; extension index 3 | diag(t,1) determinant t≠1; doubled weights ±2 yield positive exponents 2,1 | actual cocharacter needed | precise projection contracts |
| §7.2 large extension spaces | W⁰ dimension 1 versus 0; m new primes | Euler increment m versus 0; choose m>d+c | nonzero W⁰ necessary | unchanged |
| §7.3 full radical image | A=𝔽₃², separate inertia versus diagonal | generated image sizes 9 versus 3 | projections alone insufficient | unchanged |
| §7.4 local unipotent lift | p=3,q=7; central correction z | x²=7, conjugation u(a)→u(7a); central multiplication changes quotient from 1 to μ(σ) | root exponent 2 correct | unchanged |
| §7.5 invariant removal | split SL₂ torus; adjoining U | invariant dimension 1→0 since [h,E]=2E | full actual image required | precise projection contracts |
| §7.6 Levi lift | even diagonal GL₂; lattice change | fixed adjoint dimension 3 versus odd target 1; derived closure dimension 3 unchanged | density survives, congruence image need not; conditional | hypothesis added |
| §7.7 torus criterion | nontrivial quadratic χ versus χ²≠1 | root χ²=1 gives invariant dimension 3; nontrivial root pair leaves dimension 1 | proper-subtorus criterion insufficient; conditional | hypothesis and merged Check |
| §7.8 GSp₄ Siegel example | a=2,w=2,0,−1,−2 | weights (0,−1,2,3) distinct; other choices (0,−1,0,1),(0,−1,−1,0),(0,−1,−2,−1) repeat | δ and regularity tests retained; conditional | duplicate sentence removed |
| §8.1 actual modularity | split versus nonsplit unipotent; homothety | ranks(g−I) 0,1; traces both 2 over 𝔽₃; Λ and 3Λ have residual dimension 2 | full reduction matters | unchanged |
| §8.2 nonsplit GL₂ conditions | diag(−1,1) and I+E at p=5; split diagonal | trace-zero commuting coordinates all 0 versus invariant line dimension 1 | nonsplit criterion distinguished | unchanged |
| §8.3 determinant matching | r=2; local unramified factor ζ≠1 | μ̄=κ̄χ̄κ̄⁻¹=χ̄; selected ω₀(Art(p))=1 versus ζ | only normalized correction extends | notation repaired |
| §8.4 semisimplified modularity | I versus I+E over 𝔽₃ | trace 2,det 1 for both; ranks 0,1 | semisimplification loses extension | unchanged |
| §8.5 reducible modularity | p=3, χ̄ of ℚ(√−2) | −2≡1 mod 3; local ratio 1≠ω, odd global value −1 | scalar local case allowed; conditional | hypothesis and supplier citations |
| §8.6 Hamblen–Ramakrishna implication | k=𝔽₉ trivial line | k-multiplicity 1 versus two prime-field factors | no multiplicity-free claim; conditional | hypothesis added |
| §8.7 totally real implication | F=ℚ versus nonabelian totally real F | degree 1 abelian; nonabelian extension not abelian despite oddness | extra modularity conditions retained; conditional | hypothesis added |
| §8.8 infinite extensions | split exact sequence; wrong quotient; C₃,C₃² | image=kernel=L×0; wrong q gives qi=1; H¹ dimensions 1,2; projective line over 𝔽₃ has 4 points; (1,t)~(1,s) forces t=s | exactness and infinitude distinct | formatting repaired |
| §8.9 stable segment | min v(b)=2,min v(c)=1; extension index 3 | s=−2,−1,0,1 gives 4 vertices; new bounds −6,3 give 10; transformed entry valuations v(b)+s and v(c)−s give endpoint ranks (1,0),(0,1) | same two endpoints; split interiors | supplier ownership cited |
| §8.10 fixed-level finiteness | one form, edge length 1; extension index 2 | initial 2 endpoint classes; subdivision gives 3 including split | only nonsplit classes extension-invariant | duplicate merged |
| §8.11 fixed-level obstruction | m forms versus projective family (1,t) | ≤3m classes versus infinitely many distinct t | no uniform weight-level realization | unchanged |
| §9.1 actual automorphy | Teichmüller value in 𝔽₉×; 4∈ℤ₃×; edge subdivision | order divides 8 versus infinite order; vertices 2→3 | finite determinant and lattice essential | unchanged |
| §9.2 function-field automorphy | p=3,n=2,3 | power-map derivative 2 unit versus 0 mod 3 | p∤n required; conditional | hypothesis added |
| §9.3 irreducible function-field case | q≡−1 mod p, induced rank 2 | κ̄ constant-degree values 1,−1; induced representation splits into 2 lines on quadratic constants | irreducibility alone insufficient; conditional | hypothesis added |
| §9.4 two blocks | dimensions 1,3 | primitive exponents 3,−1, common scalar c³c⁻³=1; Hom invariant dimensions 0,0 | separation and nonsplit projection still needed; conditional | hypothesis added |
| §9.5 separated sums | three order-10 character blocks | separate cyclotomic degrees 10,10,5; joint 1 | joint hypothesis necessary; conditional | hypothesis added |
| §10.1 ordinary Steinberg lift | n=1,2,weight zero | weights 0,1 with sum 1; 0,1,2,3 pair sums 3; finite multiplier central dimension 0 versus infinite 1 | multiplier and regularity consistent; conditional | hypothesis and local imports |
| §10.2 ANT application | two scalar blocks swapped or individually polarized | swapped action fixes diag(1,−1); individual scalar action negates; for rank 2, derived tangent 3 versus multiplier-kernel tangent 4 | constituent polarization necessary; conditional | hypothesis and exact labels |
| §10.3 compatible system | Steinberg residue characteristics 2,5; n=1,2 | ℓ=2 uses 5, ℓ=5 uses 2; principal and symplectic derived ranks 1=1, then 1≠2 | two-place and rank inputs needed; conditional | hypothesis and exact labels |
| §10.4 conjecture implication | GL₂ dense/finite determinant; Gₘ; two-component L-group | closure dimensions 3+1=4 versus 3+0=3; Gₘ needs central dimension 1; surjective component image meets 2 of 2 components | dense central quotient and component projection yield full G | actual implication |

## Source, supplier and library audit

Read the main-branch roadmaps TauCetiRoadmap/ComplexTori/README.md and TauCetiRoadmap/ModularCurves/README.md before writing. Kept this package’s existing layer order, target count, API paragraphs and Checks. All prose additions are original mathematical formulations; no source passages were copied into the package or this report.

The source cache was read directly at the supplied legal extractions. The source service resolved the existing FKP19 key through the published DOI, found its arXiv v5 copy and retained its existing hash. The manifest still contains exactly 12 work keys. Its published DOI is 10.1215/00127094-2021-0003; arXiv:1904.02374v5 remains the text and numbering actually read. Gur99, NSW08 and BC14 remain settled as uncertified; no replacement text was requested. No additional missing source was identified.

Cross-roadmap searches used `roadmaps grep` by object over main and the indexed open heads, plus searches of the board packages. Objects included relative Selmer groups, doubling, auxiliary-field intersections, parabolic semisimplification, root vectors outside subspaces, lattice segments, Ribet lattices and Whitehead vanishing. The general G-valued field-absorption construction has no other identified owner. ArithmeticGaloisRepresentations’ representation semisimplification is imported; the missing reductive-group comparisons are requests to ReductiveGroupsPartII, not replacement generic representation theory here. The three overlaps are assigned to their owners in F02, F05 and F06. No roadmap declaration was introduced with another roadmap’s fully qualified name.

Every supplier contract was re-resolved against its available copy: main for ProfiniteCohomology, ReductiveGroups, AffineLieAlgebras, ModularForms and ClassFieldTheory; the new-roadmap heads for GlobalGaloisDeformations, ArithmeticGaloisDuality, ReductiveGroupsPartII, IntegralHeckeAndGaloisDeterminants, ArithmeticGaloisRepresentations, NoncommutativeAndEquivariantIwasawa, AutomorphicFormsOnReductiveGroups, ArithmeticLocallySymmetricSpaces, ProfiniteProPGroups, Chebotarev, FunctionFieldArithmetic, LocalGaloisDeformationRings, AlgebraicModularFormsAndSerreWeights, AutomorphicGaloisRepresentations, ClassicalSerreModularity, OrdinaryAutomorphicFormsAndModularityLifting, GL2ModularityLifting, AutomorphicLFunctionsAndLocalFactors, ModularityAndLanglandsExtensions, AutomorphicSpectralTheory and AutomorphicGaloisRepresentationsPartII. The board design READMEs supply LocallyAnalyticDistributionsPartII ND.0 and PotentialAutomorphyInfrastructurePartII PL.7. Searches covered the supplied sibling index as well as main; no arbitrary unprovided pull-request checkout was fetched.

In particular, the local head’s §§6.5, 6.17 and 2.28 contain all three claimed exports; IntegralHeckeAndGaloisDeterminants §1.4 states the compact-group Ribet theorem in both prescribed orientations; AffineLieAlgebras §A1 explicitly constructs degree-one/two Whitehead vanishing. The four replacement section labels in F07 exist. The ordinary seed, all-place monodromy and unconditional-Pan gaps remain distinct from what those sections state. ArithmeticGaloisDuality R02.3.1 explicitly supplies finite H¹ for finite S and finite discrete coefficients.

At Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, opened the relevant declarations: Representation at Mathlib/RepresentationTheory/Basic.lean:48; TopRep at Mathlib/RepresentationTheory/Continuous/TopRep.lean:31; continuousCohomology at Mathlib/RepresentationTheory/Homological/ContCohomology/Basic.lean:131; tateShafarevich at Mathlib/RepresentationTheory/Homological/ContCohomology/Sha.lean:71; ShortExact at Mathlib/Algebra/Homology/ShortComplex/ShortExact.lean:34; CompositionSeries.jordan_holder at Mathlib/Order/JordanHolder.lean:454; IsAbelianGalois at Mathlib/FieldTheory/Galois/Abelian.lean:25; groupCohomology.H1 at Mathlib/RepresentationTheory/Homological/GroupCohomology/LowDegree.lean:965; span at Mathlib/LinearAlgebra/Span/Defs.lean:46, subset_span at line 75 and span_le at line 80; map_span at Mathlib/LinearAlgebra/Span/Basic.lean:73; Submodule.map at Mathlib/Algebra/Module/Submodule/Map.lean:52; IsDiscreteValuationRing at Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:56; TauCeti.ContCohomology.H1 at TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:712 and explicitInfRes_exact at TauCeti/RepresentationTheory/Homological/ContCohomology/Inflation/Basic.lean:350.

These carriers do not themselves impose arithmetic local Selmer conditions or supply newform Galois attachments. Representation has no topology; TopRep gives continuous operators without joint continuity in the group variable; IsAbelianGalois includes Galoisness and commutativity, without finiteness; ShortExact includes exactness, a monomorphism and an epimorphism. Tau Ceti’s reductive group schemes over rings do exist, at TauCeti/Algebra/AlgebraicGroup/Reductive/Over.lean:38, with derived-group constructions in TauCeti/Algebra/AlgebraicGroup/Derived/Basic.lean. Searches by the required arithmetic objects found no fixed-quotient G(O) lifting datum, local deformation components or newform attachment interface capable of stating these headlines. Ordinary algebraic reductive-group carriers are not being declared missing.

## Required checks and final state

- Elaboration: `lake env lean` on packages/GlobalGaloisDeformationsPartII/Suggested.lean from the content checkout, using the supplied absolute argument internally, exited 0 with no output. It imports only Mathlib. No TauCeti import or targeted object build was required.
- Binder audit: mechanically stripped Lean comments and enumerated all declarations; there are zero. Therefore there are no `#check @name` lines, dropped hypotheses, new Lean names or deleted Lean names to compare. Elaborated the resulting Mathlib-only scratch signature file from the content checkout: exit 0, no output. The first scratch invocation used the board directory and exited 1 with “no default toolchain configured”; rerunning from the required content directory fixed it without changing a toolchain or library file.
- Citation resolver: exit 0; main 86e155c and 362 indexed open roadmap pull requests; cross-roadmap citations found nowhere: None; Lean names found nowhere: None. The resolver cannot see the pinned Lake packages from the board, so the direct pin inspection above supplies that part of the audit.
- Gap audit: 28 gap entries, 28 exact matching README contract sentences; every referenced slug has an entry. Retired auxiliary-field-independence, full-torus-ordinary-character and fixed-similitude-local-components occur in no active contract. Every design/plan.json value outside the top-level gaps list equals its pre-repair value; its bytes outside that list are unchanged.
- Final scope and consistency scan: exit 0. All 81 target subsections have computed report rows; all 11 finding headings are present; the source and metadata TOML files parse; no machine path occurs in the edited documentation, Lean file, manifest or report. `git diff --check` exited 0 with no output. The final dependency and citation runs reproduced the results above.
- Supplied gate failure `tex=1`: replaced the brace-style field subscript in README’s scalar-extension Check with “the field with p² elements”. The mathematical statement is unchanged. The worker’s TeX and LaTeX scanners now both return 0; repeated Lean elaboration exits 0 with no output, and the dependency check reproduces the output below. All prior repairs are preserved; no tooling, merge order, metadata, other package or pull-request text was edited.

Dependency check output, verbatim:

```text
depcheck: 51 roadmaps, 601 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All required processes have completed. No commit or network write was made.

The maintainer should retain the new arithmetic hypotheses when citing the general lifting endpoints and applications. The irreducible number-field result has its separate §6.6 route. The mathematical existence of §3.2’s test families remains unproved, and the remaining supplier gaps remain requests, not accepted supplier theorems. No Lean declaration name changed. The historical intake disposition in F10 remains a human decision.
