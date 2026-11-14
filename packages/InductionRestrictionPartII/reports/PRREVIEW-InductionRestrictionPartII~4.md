# Review of InductionRestrictionPartII (pull request #1154 at f4c995b)

**Verdict:** needs changes

## R01 (P2) — Two roadmaps own the involution-fiber reduction and parity series

**Location:** `TauCetiRoadmap/InductionRestrictionPartII/README.md:31`, “It then owns the fixed-fiber, parity and finite-model comparison theorems described above”; RS.4.3–RS.4.5 and RS.4.18.

**Claim:** ArithmeticStatisticsPartVIII independently develops the same power-image reduction, torsor count, parity invariance and lower-bound generating series. Its geometric application does not give these algebraic results a second owner.

**Witness:** PR #1179, `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:1776,1854–1860`, derives those results without importing this roadmap. Merge-order positions are 66 for this roadmap and 148 for Part VIII.

**Repair:** Keep ownership here. Add: “ArithmeticStatisticsPartVIII consumes RS.4.2–RS.4.5 and RS.4.18 for its stable Hurwitz-component counts.” Coordinate #1179 to replace its algebraic derivations with these imports, retaining the geometric comparison there. The shared series gives coefficient 3 at degree 4 for `N=2, N₀=1, C={00,11}`; both texts currently prove it.

## R02 (P3) — The generated summary falsely says spectral sequences are absent

**Location:** PR #1154 description, `roadmap-summary` block: “Since the library has no spectral-sequence API”.

**Claim:** The pinned Mathlib already defines spectral sequences, their morphisms and page functors. Choosing a direct low-degree proof does not establish the claimed absence.

**Witness:** At Mathlib pin `1b1ccf4`, `Mathlib/Algebra/Homology/SpectralSequence/Basic.lean:36,51,90` defines `CategoryTheory.SpectralSequence`, `SpectralSequence.Hom` and `SpectralSequence.pageFunctor`.

**Repair:** Replace that sentence with: “Central-extension exactness uses a direct low-degree resolution argument; the power law uses an explicit bar-complex boundary. Neither requires finiteness, and annihilation uses Tau Ceti’s transfer theorem.”

## R03 (P3) — The description does not identify the change as a new roadmap

**Location:** PR #1154 description: “Roadmap folder `TauCetiRoadmap/InductionRestrictionPartII` (README, `Suggested.lean`, `metadata.toml`)”.

**Claim:** The description names the folder without saying whether this adds a roadmap or revises one on main.

**Witness:** The folder is absent from `origin/main`; its base-to-head change adds 2,027 lines, 59 headings and 17 Lean declarations, removing none.

**Repair:** Start that paragraph: “This pull request adds the new roadmap `TauCetiRoadmap/InductionRestrictionPartII`, comprising five layers, a README, metadata and 17 Lean declarations, including eight headline theorems.” Retain the following statement about the pinned libraries.

## R04 (P3) — Suggested.lean omits the required layer structure

**Location:** `TauCetiRoadmap/InductionRestrictionPartII/Suggested.lean:6,40–190`; the module title lacks “: target signatures” and the declarations have no layer section comments.

**Claim:** The file mixes definitions for RS.4 and RS.6 ahead of RS.0 and supplies none of the required layer headings, although it states headlines from three layers.

**Witness:** The file has eight sorried theorems from RS.0, RS.4 and RS.6, but zero `/-! ## Layer` comments; README lines 320, 778 and 1344 identify the corresponding layers.

**Repair:** Append “: target signatures” to the module title. Group declarations under `/-! ## Layer RS.0: Exactness and Hall-coinvariant homology comparisons -/`, `/-! ## Layer RS.4: Fixed fibers, square obstructions and parity -/` and `/-! ## Layer RS.6: Finite marked-group comparisons and applications -/`, in that order; move each simple definition before its first use within the appropriate group.

## Verified sound

The table uses additive residues for cyclic-group computations. Algebraic fixtures for square quotients and binary maps do not assert realization by a reduced cover. A dagger marks a seeded source target.

| Statement | Instances | Computed left side / object | Computed right side / prediction | Result | Change |
| --- | --- | --- | --- | --- | --- |
| Conventions: oriented cycle and factor set | ℤ²; D₈→C₂² | z(e₁,e₂)=+1; z(e₂,e₁)=−1; [r,s]=r² | exterior generators +1,−1; τ(z)=r² | agrees | — |
| Conventions: inverse twist action | C₅ classes; q=2; m=(2,0,1,0) | arithmetic: (0,0,2,1); geometric: (1,2,0,0) | inverse exponent 3; exponent 2 | agrees | — |
| Multiplier | 1, C₃, C₂² | H₂=0,0,C₂ | Multiplier=0,0,C₂ | agrees | — |
| RS.0.1 five-term exactness | D₈→C₂²; C₄→C₂ | D₈: im π*=0, im τ=C₂; C₄: τ=0 | D₈: ker τ=0, ker inlᵃᵇ=C₂; C₄: ker inlᵃᵇ=0 | agrees | — |
| RS.0.2 integralHomology_finite | G=1,C₂; degrees 1,2,3,0 | C₂: C₂,0,C₂; H₀=ℤ | positive degrees finite; degree zero excluded | agrees | — |
| RS.0.3 multiplier_hallPart | C₃²⋊C₂, inversion; non-Hall C₂⊂C₂² | Hall: M(H)=C₃, action +1, inclusion image C₃; non-Hall image 0 | Hall-primary M(G)=C₃; excluded case M(G)=C₂ | agrees | — |
| RS.1.1† power law | ℤ²; n=0,1,2; 66 commuting-with-y triples in S₃ | classes 0,1,2; dT=z(a,y)+z(b,y)−z(ab,y) | n·z=0,1,2; all 66 boundary differences zero | agrees | — |
| RS.1.2 local normalization | S₃ transpositions, c₀=(12); C₃ with c={1,2} | z((23))=(12); z(1)=1; C₃ class of 2 stays {2} | unique representative over (12); C₃ has none over 1 | agrees | — |
| RS.1.3 normalized factors commute | D₈; lifts r,r³; different-basepoint pair r,s | [r,r³]=1; [r,s]=r² | same basepoint commutes; other pair excluded | agrees | — |
| RS.1.4 reduced-cover image | G=C₂²; c=∅ or all nonidentity elements | image=0 or C₂ | Q_c=0 or C₂ | agrees | — |
| RS.3.1† kernel automorphisms | S₃ transposition marking; α=−1 | K: 2+4 maps to 6; U: inversion sends (12)(23) to (132) | kernel product 2+4=6; product of inverses is (123) | agrees; full U excluded | — |
| RS.3.2† finite-level action | C₃, residues 2 and 11 modulo 9 | both send a to a² and (1,4) to (4,1) | 2≡11 mod 9; identical cover and degree coordinates | agrees | — |
| RS.3.3 bounded slices | D=∅, n=0,−1; N=2,n=3,M=1 | cardinalities 1,0; {(1,2),(2,1)} | 1,0; cardinality 2 | agrees | — |
| RS.3.4† fixed lattice | C₃, q=2; total degree 1 | fixed vectors (a,a); total 2a; fixed slice empty | orbit-weighted sum 2a; fixed count 0, unrestricted count 2 | agrees | — |
| RS.3.5 degree orbits | C₃; (1,4), (4,1), (2,3) | first orbit {(1,4),(4,1)}; second {(2,3),(3,2)} | first two equal in quotient; third distinct despite sum 5 | agrees | — |
| RS.4.1† central lift squares | Q₈ and D₈ over C₂² | i²=j²=−1; r² central, s²=1; (rs)²=1 | all squares in kernel; r²s²=r²≠(rs)² | agrees; squaring not homomorphic | — |
| RS.4.2 square obstruction | C₁₄→C₂, Y=X,m=3; identity m=0 | b=a⁻², β=0; b(1,0)=1, β=0 | nonidentity square has zero class; incompatible degree still empty | agrees | — |
| RS.4.3† fixed-fiber equation | C₁₄→C₂, q=3,m=3 | b=a⁻²; h²=a² has h=a | (Xa)³a⁻³=Xa; opposite sign gives a⁻¹, not fixed | agrees | R01: ownership |
| RS.4.4 square-times-torsion | A=C₈, b generator; r=2,8,0 | bʳ in A²ʳ: false,true,true | b in A²A[r]: false,true,true | agrees | — |
| RS.4.5 fixed-fiber counts | A=C₄ additive; q=3; b=1,2; q=1 | 2h=−1: 0 solutions; 2h=−2: 2; h⁰=1: 4 | obstruction fails/passes; torsion counts 2,2,4 | agrees | R01: ownership |
| RS.4.6† odd-parity fiber | S₃ transpositions; g=(12), m=1,−1; q=5 | both degrees compatible; b=1; one point each | A=1; torsion count 1 | agrees | — |
| RS.4.7 even-parity fiber | C₁₄→C₂; g=1,m=−2,q=3 | b=a²; h²=a⁻² has h=a⁻¹ | square obstruction zero; torsion count 1 | agrees | — |
| RS.4.8† torsionImageFiltration | C₈; t=0,1,2,3; odd group C₃ | images 0,0,0,C₂; element 4 maps to 0; C₃ quotient 0 | B_t=0,0,0,B; order-two element need not give a nonzero class | agrees | — |
| RS.4.9 obstructionThreshold | C₄×C₈; b=(1,0),(0,1),(0,0) | first entry times 2,3,0 | thresholds 2,3,0 | agrees | — |
| RS.4.10 two_adic_survival | C₈ generator; q=3,5,9,17 | solution counts 0,0,0,8 | threshold+1=4; valuations 1,2,3,4; false,false,false,true | agrees | — |
| RS.4.11 class images span | S₃ one class; S₆ transpositions and triple transpositions | ranks 1 and 1; S₆ a(11)=0 | spanning rank 1; independence of two columns fails | agrees | — |
| RS.4.12 lift-square columns | C₄→C₂; lifts X,X³ | squares X²,X²; both square classes 1 in C₂ | changing the lift preserves its square class | agrees | — |
| RS.4.13 parity and square maps | V=𝔽₂²; square columns 1,1 | s(10)=1,s(01)=1,s(11)=0 | linear sum 1+1=0 | agrees | — |
| RS.4.14 compatible parities | S₃ one class; nonidentity g | a=id; compatible set {1}; β(1)=0 | v_g+ker a={1}; s(1+v_g)=s(0)=0 | agrees | — |
| RS.4.15† joint constraint | V=𝔽₂²; a=first, s=second; W=0 or B | L identity or first projection; kernels {00} or {00,01} | simultaneous constraints give exactly those sets | agrees | — |
| RS.4.16† affine survival | V=𝔽₂; a=0,s=id; W=0; v_g=0,1 | surviving sets {0},{1}; W=B gives {0,1} | v_g+ker L={0},{1}; full quotient kernel gives both | agrees | — |
| RS.4.17† ranks and histograms | N=2, kernel {00,11}; ranks 2,1,0; N=0 | coset sizes 2,2; weights 1+X²,2X; cumulative 1,2,4 | 2^(2−1)=2; histogram 1,1,2; empty-vector count 1=2⁰ | agrees | — |
| RS.4.18† parity_degree_generatingSeries | N=2,N₀=1,C={00,11}, degree 4 | degrees (1,3),(2,2),(3,1): count 3 | [X⁴](X²+X⁴)/(1−X²)²=3 | agrees | R01: ownership |
| RS.4.18 zero dimension and shift | N=0; N=1,N₀=1,C={0} or {1} | empty parity included/excluded: 1/0; even minimum 2, odd minimum 1 | series 1/0; X²/(1−X²), X/(1−X²) | agrees | — |
| RS.4.19 independent class images | C₂ one class; C₂² all three nonzero classes | C₂ kernel 0; C₂² kernel {000,111} | unique compatible parity only in independent case | agrees | — |
| RS.6.1 odd_index_two_reduction | C₃²⋊C₂ inversion; excluded C₂⊂C₂² | M(G)=C₃; coinvariants C₃; excluded source multiplier 0 | odd order 3; excluded ambient multiplier C₂ | agrees | — |
| RS.6.2† centralizer homomorphism | D₈→C₂²; fixed lift r; arguments r,s,rs | commutators 1,r²,r² | f(r)f(s)=r²=f(rs) | agrees | — |
| RS.6.3 centralizer generators | D₁₆→D₈; fixed s; centralizer generated by s,r² | commutators 1,r⁴ generate C₂ | filtering ambient generators r,s keeps only s and wrongly gives 1 | agrees; wrong model excluded | — |
| RS.6.4† quotient comparison | D₈→C₂², full c; nonstem C₄→C₂ | Q_c=C₂; τ(Q_c)=C₂; A/R=0 | reduced multiplier 0; C₄ class map 0 excluded by isomorphism hypothesis | agrees | — |
| RS.6.5 quotient parity statistics | S₃; signatures identity/transposition; q=5 | surviving parities {0}/{1}; counts 1/1 | kernel 0; weight polynomials 1/X | agrees | — |
| RS.6.6 order-96 model | A₄²→C₃; abelianized pairs (1,2),(1,1) | kernel size 144/3=48; sums 0,2 | model size 96; first pair in, second out | agrees | — |
| RS.6.7 conditional order-96 fibers | A=C₂; compatible β≠0; q=7,5,1 | counts 0,2,2; β=0 gives 2 throughout | q mod 4: 3,1,1; identity action at q=1 | agrees | — |
| RS.6.8 anti-diagonal model | G=C₃; outside elements; G=C₂ control | model size 6; (1,2) in, (1,1) out; C₂ has two outside classes | size 2·3; inverse condition; odd-order conjugacy assertion excludes C₂ | agrees | — |
| RS.6.8 generation and conjugacy | C₃ base; outside elements (1,t),(0,t); conjugator b=1 | product is base 1; conjugation sends (0,t) to (2,t) | products generate the base; doubling reaches all three parameters | agrees | — |
| RS.6.8 abelian Table 2 Checks | 15 cyclic bases; C₃²,C₅²,C₉×C₃; C₃³ | exterior squares 0; C₃,C₅,C₃; C₃³ | journal Table 2: 15+3+1=19 matching entries | agrees | — |
| RS.6.8 multiplier_prod_abelian | C₃×C₃; ℤ×ℤ; cross-factor generators | H₂=C₃,ℤ; oriented classes map to +1 | factor multipliers 0; tensor summands C₃,ℤ; reversed orientation −1 | agrees | — |
| RS.6.8 abelian_multiplier_exteriorSquare | ℤ; ℤ²; C₉×C₃; C₃³ | exterior squares 0,ℤ,C₃,C₃³ | multipliers 0,ℤ,C₃,C₃³ | agrees | — |
| RS.6.8 antidiagonal_multiplier | G=1,C₃²; excluded G=C₂ | inclusion maps 0→0, C₃→C₃; excluded 0→C₂ | first two bijective; excluded map not surjective | agrees | — |
| C₂, swapAction, SwapWreath | G=C₃; pair (1,2); base pair (1,0) | C₂ size 2; swap gives (2,1), then (1,2); conjugate base (0,1) | swap²=id; wreath size 18; nontrivial swap action | agrees | — |
| abelianizedSum and sumKernelModel | C₃; S₃ transposition pair; perfect A₅ | C₃ sums (1,2)↦0,(1,1)↦2; S₃ sum 0; A₅ quotient 1 | C₃ membership yes/no; S₃ pair in; A₅ kernel entire wreath | agrees | — |
| RS.6.9† sum-kernel and full wreath | A₄; SL₂(𝔽₃); C₇⋊C₃; A₅ | orders 96,384,294,7200 | 2·12·4, 2·24·8, 2·21·7, 2·60² | agrees | — |
| RS.6.9 graph models | S₄,S₅,GL₂(𝔽₃), SL₃(𝔽₂)⋊C₂ | orders 24,120,48,336; GL₂(𝔽₃) has 12 outside involutions | 2·12,2·60,2·24,2·168; conjugacy size 48/4=12 | agrees | — |
| RS.6.9 inverse-transpose convention | u=I+E₀₁, v=I+E₁₂ over 𝔽₂ | (uv)ᵀ has E₂₀ coefficient 1; uᵀvᵀ has coefficient 0 | transpose fails multiplicativity; inverse-transpose preserves it | agrees | — |
| RS.6.10 conditional finite applications | F(C₃²), A=C₃; q=5,7; order-96, β≠0, q=7,5 | C₃ torsion counts 1,3; C₂ obstruction counts 0,2 | gcd(3,4)=1, gcd(3,6)=3; mod-4 obstruction 3/1 | agrees | — |
| R01 shared algebraic series | This roadmap RS.4.18; Part VIII stable orthant; N=2,N₀=1,C={00,11} | this roadmap coefficient at degree 4: 3 | Part VIII coefficient at degree 4: 3 | same algebraic target | R01 |
| R02 library-absence claim | Mathlib pin 1b1ccf4 | SpectralSequence: one structure; pageFunctor: one definition | summary claims no spectral-sequence API | contradiction | R02 |

- Previous review: 3/3 repaired—R01 now says `Function.Bijective` of the inclusion-induced map (Lean:190–195); R02 says “for every abelian G” (README:1657); R03 says “models with nonabelian base in Wood's Table 2” (README:1689).
- Source sample: 15/15 targets checked, 0 flagged-unverified locators; five works read. Anchors: wood2021 line 75 and line 335; lwzb2024 line 2197 and line 2317; wood2019 line 973, line 999 and line 1783 (journal); loeh2019 line 5877; evw2012 line 1532 and line 2548. Derived RS.4 statements are explicitly distinguished from numbered source theorems.
- Thirteen representative pinned declarations checked in eight files: `Mathlib/GroupTheory/GroupExtension/Defs.lean:73`, `Mathlib/RepresentationTheory/Homological/GroupHomology/LowDegree.lean:196,1082`, `Mathlib/GroupTheory/FiniteAbelian/Duality.lean:63`, `TauCeti/RepresentationTheory/Homological/GroupHomology/Transfer/Basic.lean:184`, `TauCeti/RepresentationTheory/Homological/GroupHomology/DirectedUnion.lean:88,113`, `TauCeti/Algebra/Group/ElementaryTwoQuotient/Basic.lean:202`, `TauCeti/InformationTheory/Coding/Weight/Enumerator.lean:191,201,220`, `Mathlib/Algebra/Homology/SpectralSequence/Basic.lean:36,90`; centrality is separate from `GroupExtension`, and transfer annihilation is imported rather than replanned.
- Cross-roadmap contracts: 15 named IG blocks resolved against #850, plus four main-roadmap suppliers—InductionRestriction Layer 7, ProfiniteArithmetic Layer 0, AlgebraicTopology Stage 2/Layer 2 and AlgebraicCodingTheory Layer 3. The resolver's `ReducedSchur.universalMarked` lead resolves in IG.3.4; no missing supplier or dependency cycle found; no second copy on main or duplicate fully qualified Lean declaration found.
- Gate: all scanners zero, targeted build successful. Independent dependency check: `depcheck: 244 roadmaps, 2199 edges, 0 problem(s)`; no UPWARD or CYCLE line. Outside-folder base-to-head diff: 0 files.
- Lean: direct elaboration successful with eight `sorry` warnings only; all 17 declarations checked with `#check @name`, no lost hypothesis; eight one-tactic probes failed to close. All eight statable headlines are present; missing-carrier families are named in the module docstring.
- Adversarial enumeration: 9,504 cyclic power-equation cases, 7,506 bounded-degree coefficient cases and 66 nonabelian bar-boundary cases agreed; the table additionally checks infinite abelian groups, empty dimensions, incompatible fibers, negative degrees, nonstem extensions and excluded even-order cases.

Overlap check: read InverseGaloisAndArithmeticFundamentalGroups, ArithmeticStatisticsPartVIII, ArithmeticStatisticsPartIV, ArithmeticStatisticsPartV and FiniteGroupExtensionSplitting; IG owns covers, commuting-pair classes and the marked action; this roadmap owns the involution-fiber and translated-series results shared with Part VIII (R01); Part VIII owns their geometric interpretation; Part V owns embedded arithmetic types; Part IV's moment laws and FiniteGroupExtensionSplitting's complements share no target here.

Source independence: 20 passages compared with five sources, no copied nonformula wording or reused table found; largest share wood2019, 30 of 42 primary source blocks. Its contents were compared: independent arrangement. RS.0→RS.1 exactness, RS.1/IG→RS.3–RS.4 actions, and RS.4→RS.6 applications determine the build, rather than Wood's chapter order.

## Not verifiable

- none

## Source issues

- **Error** in lwzb2024 at §12, arXiv v2 printed p. 47, line 2198: the source says the action on the central kernel does not preserve multiplication; it should be an action by group automorphisms, since both central powering and the correction map are multiplicative; affects a stated result.
- **Misprint** in wood2021 at proof of Theorem 2.5, printed p. 4, line 151: the source says multiply the preliminary lift by the correction character; it should be multiply by the inverse character, cancelling the kernel factor; affects the proof.
- **Misprint** in wood2021 at §4, printed p. 7, line 267: the source says the argument of the star action belongs to the unit group; it should be an element of the completed universal marked extension; affects a stated result.
- **Misprint** in loeh2019 at Corollary 1.6.23, printed p. 57, lines 2545 and 2553: the source says the zero branches of free-group homology and cohomology apply in every positive degree; it should be degrees greater than one; affects a stated result.
- **Misprint** in loeh2019 at proof of Corollary 3.2.23, printed p. 136, lines 5908 and 5927: the source says both tensor factors are chains of G in several displayed expressions; it should be chains of G followed by chains of H; affects the proof.
- **Misprint** in loeh2019 at Example 3.2.24, printed p. 137, line 5954: the source says integral homology of ℤ² vanishes in degrees at least two; it should be degrees greater than two, with degree two equal to ℤ; affects a stated result.

## For the human reviewers

- **Scope.** `TauCetiRoadmap/InductionRestrictionPartII/README.md:1816` cites withdrawn evw2012 for RS.1.4 and RS.6.1; published wood2021 and lwzb2024 are cited alongside it. The withdrawn text was checked, including §7.3 and Example 9.3.2.
- **Licence.** `TauCetiRoadmap/InductionRestrictionPartII/README.md:1824` cites loeh2019, unpublished lecture notes hosted on the author's institutional site; no source passage, table or figure is reproduced here.
