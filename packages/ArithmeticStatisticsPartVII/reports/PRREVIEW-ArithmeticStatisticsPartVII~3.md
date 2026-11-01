# Review of ArithmeticStatisticsPartVII (pull request #1178 at 4e1f614)
**Verdict:** accepted

## R01 (P3) — The source manifest remains absent

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2516`, “References”, and the absent `TauCetiRoadmap/ArithmeticStatisticsPartVII/sources.toml`.

**Claim:** The bibliography still has no accompanying source manifest recording work identities, versions, locators and access status. This is previous R05, unchanged.

**Witness:** The folder contains only `README.md`, `Suggested.lean` and `metadata.toml`. BKLPR is cited as arXiv 1304.3971v2, but has no manifest entry.

**Repair:** Add the required manifest, retaining one key per work and the sources service's access/version records. For BKLPR, put the preprint and published identifiers in one entry; the checked Proposition 6.7 is on preprint pages 27–28. Preserve uncertified statuses for unavailable originals. This P3 note does not block human final approval under this review's verdict rules.

## Previous findings

These IDs refer to [the previous report][previous].

- R01 — repaired: README:2469–2483 separates the ideal quotient from element multiplication, specifies both differentials, and tests the nonprincipal norm-two ideal, multipliers ±2 and rescaling.
- R02 — repaired: README:15,51,2423–2427 imports ImaginaryQuadraticClassNumber H3.1; the retained target translates its finite-level action into chosen uniformization and idele coordinates, including actual exceptional units.
- R03 — repaired: README:61 imports Part I §0.1 and its squareclass denominator. The duplicate target is deleted; README:1449–1451 directs the torsion-exception consumer to those contracts.
- R04 — repaired: Suggested.lean:200 states arbitrary bounded-exponent abelian-group decomposition. README:2170–2183 names it and tests infinite index sets, proper divisors, n=1 and the excluded n=0 case.
- R05 — not repaired: The bibliography at README:2516 still has no source manifest. Repeated as this report's R01 (P3); no blocking finding remains.

## Verified sound

:robot: Independent AI incremental re-review of **94 changed lines since 84f8c47**. All five previous findings, every changed passage and its immediate consumers were checked. Unchanged mathematics is carried forward explicitly, rather than represented as a fresh full review. The repository README and CONTRIBUTING were read; main's ImaginaryQuadraticClassNumber, RestrictedProducts and EllipticCurves supplied the relevant ownership and shape comparisons. The PR worktree remains unchanged, and both the incremental diff and the diff against main have no changes outside this roadmap folder.

The worker's supplied gate reports every check passing, including the targeted build. The independently rerun text/dependency gate also passes; it does not itself print a build field in this invocation. The separate targeted build `lake build TauCetiRoadmap.ArithmeticStatisticsPartVII.Suggested` succeeds. Direct `lake env lean` elaboration succeeds with exactly **nine sorry warnings and no other warnings or errors**. No sorry-defined data, prohibited imports or options were introduced.

The requested dependency command returned exactly:

```text
depcheck: 205 roadmaps, 1463 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. No gap was declared. The new H3.1 supplier is on main; Part I was already a supplier. The CM quotient comparison depends on H3.1 and lattice/isogeny/differential theory, not on the reciprocity adapter that consumes it, so the repair introduces no reverse edge. Every Needs line and supplier citation was scanned; the citation resolver reports no missing cross-roadmap citation. Its run could not check pinned library names, so its clean name result was not used as library evidence.

A scratch copy printed `#check @name` for **all 20 declarations: 11 definitions and nine theorems**. Their elaborated types were compared with the README. The new theorem keeps `A : Type u`, `AddCommGroup A`, positive `n`, annihilation of every element, and an index type in the same universe; no finiteness or countability binder appears. No needed hypothesis disappeared from any signature.

The nine Lean headlines are: finite quadratic intersection generating function; total-variation Poonen–Rains limit; all cardinality moments; Delaunay compatibility; alternating-kernel total-variation limit; parity-sensitive moment determinacy; prime-power injection moments; Kane's positive/signed integer twist distributions; and bounded-exponent decomposition. The docstring continues to identify the omitted CL/CM arithmetic implications, symplectic cokernel and p-adic models, integral orthogonal geometry and rank measures, locally compact random intersections, general Selmer/Sha/corank and three-isogeny applications, global theta intersections, Jacobian/composite laws, function-field families, Kummer comparisons and CM adapters, with their missing carriers.

For the new headline, five independent one-tactic probes fail: `simp`, `rfl`, `infer_instance`, and `exact` with each of Mathlib's finite and finitely generated abelian-group decomposition theorems. The latter two require `Finite A` and `AddGroup.FG A`, respectively. The previous report's unsuccessful probes for the eight unchanged headlines are carried forward. No padding finding remains.

The following source passages were reopened through the sources service:

| Changed or dependent target | Source and locator checked | Conclusion |
|---|---|---|
| Bounded-exponent decomposition and Kummer splitting, §5.31 | BKLPR line 1403, Proposition 6.7 proof, pp. 27–28; lines 1424–1435, Lemma 6.11, p. 28 | Arbitrary Z/n-modules are expressly used. All-divisor injectivity produces exact-order lifts and a splitting, without finite generation. |
| CM reciprocity adapter | Rubin lines 628–657, Definition 5.10 and Theorem 5.11, p. 18, with §5.1, pp. 15–16 | Finite components act on the local torsion quotients; the inverse idele changes the lattice. The analytic comparison is unique with the specified torsion action. |
| Ideal kernels and order change | Rubin lines 548–566, Propositions 5.3–5.4, pp. 15–16 | Galois-stable conductor kernels descend; maximal-order ideal torsion is a⁻¹Λ/Λ and has cardinality N(a). The typo below does not enter the repaired statement. |
| Element and quotient differential coefficients | Rubin lines 99–104, Definition 1.7, p. 3; lines 382–390, Proposition 3.14 and proof, p. 11 | The scalar belongs to an endomorphism. For two curves, comparing the constant coefficients of the chosen differential pullback gives the stated formal linear term. |
| Dependent CM three-isogeny and corank applications, §5.11 | BKLOS lines 832–880, Theorem 11.2 and proof of Theorem 2.7, pp. 18–19 | The auxiliary prime-degree isogeny turns the composite into an element endomorphism. Its scalar norm gives 3^[F:K], cancelling the complex factors. The repaired adapter supplies exactly this distinction. |

The seeded sample is retained as follows: §§5.11 and 5.31 receive the fresh checks above, including their changed supporting targets; §§5.1, 5.4, 5.6, 5.8, 5.9, 5.23–5.27, 5.29–5.30 and 5.32 have unchanged statements and carry the previous report's mathematical rows and source-access limitations. No newly added locator is marked unverified. This does not claim fresh certification of inaccessible originals or of every unchanged source.

Ownership searches used the roadmap `grep` and `show` commands, main, board packages and the supplied open-work context, plus the pinned libraries, by the objects “bounded exponent”, “direct sum of cyclic groups”, ideal-lattice/CM action and finite-exception density. The newly added fully qualified theorem name has no competing declaration in the searched roadmap index. The finite-classification results do not own the infinite bounded-exponent theorem; the existing CM foundation and general density theorem are now imported. No source or manifest was changed.

These are the affected supplier passages actually reopened, with repository-relative locators:

| Supplier | Passage and supplied object |
|---|---|
| `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:83` | H3.1; lines 87–89 supply oriented ideal lattices, isogenies, order changes, arithmetic reciprocity, finite-level actions and the actual unit kernel at discriminants −3 and −4. |
| `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:279` | §0.1 finite-subset density; line 281 finite-symmetric-difference invariance; Supporting constructions at line 2530 gives positive squareclass denominators for nonempty finite local rectangles. |
| `TauCetiRoadmap/ModularCurvesPartII/README.md:421` | §§1.2–1.4: pointed uniformization; at line 445, kernel u⁻¹Λ′/Λ, degree [Λ′:uΛ] and differential multiplier u; at line 467, periods and rescaling. |
| `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:2511` | A5.1: lattice uniformization, natural torsion/Tate comparison and analytic/algebraic Hom comparison. |
| `TauCetiRoadmap/EllipticCurves/README.md:423` | Main's isogeny/quotient foundation, with local formal groups and twists in Layers 4–5; the CM repair retains these suppliers. |

All unchanged supplier receipts in [the previous report][previous] are carried forward; the resolver was rerun against current indexed main and open heads. The affected contracts above were read in full, not inferred from their headings.

Pinned declarations opened for the new headline and duplication audit:

| File and line at the pin | What it supplies and does not supply |
|---|---|
| `Mathlib/GroupTheory/FiniteAbelian/Basic.lean:118` | `AddCommGroup.equiv_free_prod_directSum_zmod` requires finite generation. |
| `Mathlib/GroupTheory/FiniteAbelian/Basic.lean:134` | `AddCommGroup.equiv_directSum_zmod_of_finite` requires a finite group. Its finite index set cannot model ⊕_ℕ C4. |
| `Mathlib/LinearAlgebra/FreeModule/Finite/Quotient.lean:120` | `Submodule.quotientEquivDirectSum` is a full-rank quotient of a module with a finite basis; the standing `Finite ι` is at line 31. |
| `Mathlib/LinearAlgebra/FreeModule/IdealQuotient.lean:56` | `Ideal.quotientEquivDirectSum` likewise has a finite basis and nonzero ideal. It is not arbitrary bounded-exponent decomposition. |

The previous report's pin receipts for quadratic quotients, scalar moment determinacy, actual two-Selmer groups, twists, orthogonal dimensions, projective measures and Borel–Cantelli remain evidence for the unchanged declarations. The full current Lean elaboration and signature check were performed independently.

The adversarial record below has **24 fresh rows and 126 carried rows**. The fresh rows compute the changed statements, their new Checks and affected consumers. Carried rows retain their values and cite [the previous report][previous] individually; their line numbers refer to 84f8c47. Finite computations and numerical truncations are tests, not proofs of the general theorems.

| Current statement | Instances and computed values on both sides | Result / change |
|---|---|---|
| README:61, imported finite-subset density | A singleton in N growing classes has proportion 1/N→0; the empty subset has 0/N=0. A singleton ambient family has 1/1=1. | Correct import; ambient infinitude/growth excludes the wrong case. |
| README:61, finite-symmetric-difference invariance | If two subsets differ on k points, count difference ≤k, normalized difference ≤k/N→0. For k=2,N=10,100 the bounds are 1/5,1/50. | Same limit in both directions; no new density theorem owned here. |
| README:1449, torsion-exception consumer | At p=3, E[3] has 9 points and 8 nonzero points, giving ≤8 exceptional characters. Density bounds at N=10,100,1000 are 4/5,2/25,1/125. At p=2, +P=−P for every P. | Part I's denominator removes the finite exceptions; the odd-prime hypothesis remains essential. |
| README:2170; Suggested.lean:200, bounded-exponent decomposition | A=C2, n=4: 4·0=4·1=0, choose d=2 dividing 4. Both sides have 2 elements; forcing d=4 would give at least 4 for a nonzero sum. | Proper-divisor summands retained. |
| Same headline, composite exponent | A=C2⊕C3, n=6: all six pairs are annihilated; d=(2,3) gives 2·3=6 elements. C2² and C3² give 4 and 9 elements with exponents 2 and 3. | Matches native direct sums and includes p=2,3. |
| Same headline, arbitrary index | For ⊕_I C4, n=4: (4a)_i=0 in each coordinate; d(i)=4 gives identity on the same group. For I=ℕ, distinct e_i give infinitely many elements; finite support remains finite for any I. | No finite-generation/countability restriction; arbitrary universe-sized I allowed. |
| Same headline, n=1 and zero group | 1a=a=0 forces A=0. Empty direct sum has cardinality 1 and its only element is 0, matching A. | Positive modulus includes the trivial case. |
| Same headline, n=0 negative control | In Q, 0a=0 for all a, but 1 has infinite additive order. Every element of a direct sum of positive-order finite cyclic groups has finite order. | The 0<n hypothesis excludes this counterexample. |
| README:2172, all-divisor splitting criterion | C2→C4 by 1↦2: modulo 4 images are 0,2 (injective); modulo 2 images are 0,0 (not injective). C2→C2⊕C4 by x↦(x,0) has retraction (x,y)↦x with composite identity. | All divisors are needed; inclusion alone does not force splitting. |
| README:2191, Kummer consumer | An order-m class lifted from H¹(k,A[m]) has order dividing m; its image has order m, so the lift has order exactly m. At m=1 both are 0; for m=4 neither order 1 nor 2 maps to order 4. | New decomposition supplies cyclic generators without any finiteness assumption. |
| README:2423–2425, principal-idele adapter | For Λ=Z+Zi, x=2, t=1/5: lattice Λ/2, coordinate 1/10, comparison z↦ξ(2z) gives ξ(1/5). Wrong coordinate 2t gives ξ(4/5); difference 3/5∉Λ. | Inverse-idele action agrees with Rubin and the imported CM action. |
| README:2434, composition and identity | Identity gives lattice Λ, coordinate 1/5 and comparison ξ. Principal 2 then 3 gives Λ/6, coordinate 1/30, and ξ(6/30)=ξ(1/5), equal to principal 6. | Composition and identity laws agree. |
| README:2436, nonprincipal direction | For an ideal class b of order 3, inverse action gives b⁻¹=b²≠b. With exponent labels in Z/3, −1=2, not 1. | Detects reversal that an order-two class would miss. |
| README:2437, exceptional units | Principal i keeps Z+Zi fixed, takes 1/5 to −i/5; comparison iz gives i(−i/5)=1/5. Without that comparison the difference is (−1−i)/5, not a lattice element. | Actual order-four unit retained, not a quotient by signs. |
| README:2469, nonprincipal ideal kernel and degree | In Z[√−5], the ideal basis (2,0),(1,1) has determinant 2. Thus [O:a]=2 and the quotient isogeny has degree 2. Norm equation x²+5y²=2 has no solutions: y=0 gives x²=2; otherwise ≥5. | Degree-two ideal quotient exists without a scalar generator. |
| README:2469, descent and change of order | F-defined CM maps give σ(αP)=α·σ(P); αP=0 implies α·σ(P)=0 for every α in a. For O=Z+2Zi, conductor 2Z[i], Λ=O: Λ′=Z[i], [Λ′:Λ]=2 and multiplier order Z[i]. | Galois-stable kernel descends; conductor quotient changes the order rather than merely multiplying by 2 on E. |
| README:2471, element differential action | [2] and [−2] have degree 4 and four-element kernel, but pullback coefficients 2 and −2. [0] has differential coefficient 0 and is not a nonzero ideal isogeny. | Element formula permits zero; nonzero quotient coefficient is asserted only for isogenies. |
| README:2473, chosen quotient coefficient | For the identity quotient with equal differentials, φ*ω=ω gives c=1 uniquely. For [2] with equal normalized differentials, φ*ω=2ω gives c=2≠0. | One-dimensional differential space and characteristic-zero separability give uniqueness and nonvanishing. |
| README:2474, formal linear coefficient | With normalized forms and t′=2t+bt²+…, pullback constant coefficient is 2dt; t′=−2t+bt²+… gives −2dt. These equal c=±2, not the common degree 4. | Correct first-order comparison for the specified source and target forms. |
| README:2475, rescaling API | Starting c=1: (u,v)=(1,2) gives c′=2; (2,2) gives c′=1. Starting c=2 with (u,v)=(2,3) gives c′=3; pullback 3·2ω=3·(2ω). | c′=(v/u)c with nonzero u,v; inverse ratio would give 4/3 in the last case. |
| README:2482, principal quotient versus endomorphism | Ideals (2)=(−2) have norm 4, so their quotient kernel is the same. Target identifications yield coefficients +2 or −2, hence distinct maps with the same kernel and degree. | Separates quotient data from a choice of target isomorphism. |
| README:2483, unit ideal | N(O)=1, kernel {0}, quotient identity. Equal forms give 1; only target scaled by 2 gives 2; both forms scaled by 2 give 1. | Three discriminating differential checks are valid. |
| README:1541–1556, dependent CM ratio/corank | F=K gives finite factor 3 times complex factor 1/3=1; [F:K]=2 gives 9·(1/9)=1. The composite λφ is an element of norm 3ℓ, so its 3-primary norm is 3. | The repaired distinction preserves the all-place proof and conditional half-density consequence. |
| README:2441–2457, dependent Hecke/unit comparisons | Principal 2 gives finite scalar 2 and inverse infinite norm 1/2, product ψ=1. A unit character ζ3 is cancelled by ζ3²: product 1; a sign character cannot cancel ζ3. | The adapter preserves principal triviality and the larger exceptional twist groups. |


The following rows are unchanged evidence from 84f8c47; only the six repaired/deleted entries are replaced by the fresh rows above.

| Previous line / statement | Instances and computed values on the compared sides | Result / provenance |
|---|---|---|
| 75: Cohen lenstra heuristic for quadratic fields | p=3, B=0: imaginary predicted mass 0.56012608; real mass 0.84018912 (=3c/2). d=−1,2 have discriminants −4,8. | Conjecture remains a conjecture.  Carried from [previous review][previous]. |
| 101: Cohen lenstra moment conjecture for quadratic fields | A=0: Sur(G,0)=1 and prediction 1. A=C3: predictions 1 and 1/3 for u=0,1; Sur(C3,C3)=2. | No assertion that individual fields equal their mean.  Carried from [previous review][previous]. |
| 125: Cohen lenstra moment form implies heuristic | Adding mass 3^(−N) at C3^N changes TV by at most 2·3^(−N), but changes the C3-surjection moment by 1−3^(−N). | Converse correctly excluded.  Carried from [previous review][previous]. |
| 141: Cohen martinet predicted surjection moment | Sign action C2 on F3: fixed size 1 gives 1; identity fixed size3 gives1/3. In F2 sign=identity, prediction1/2. | Correct, including dyadic negative control.  Carried from [previous review][previous]. |
| 168: Cohen lenstra martinet average conjecture | Trivial class group contributes1, never0; C3 contributes3. For p=3,G=C2 the coprimality test is gcd(3,2)=1. | Only predicted limit, not a proved density.  Carried from [previous review][previous]. |
| 193: Cohen martinet surjection moment conjecture | Sign F3 has global invariant dimension0; infinite-place identity has fixed dimension1 and moment1/3. | The no-trivial-constituent condition does not replace local invariants.  Carried from [previous review][previous]. |
| 218: Relative three torsion as irreducible hom count | G=C2, H=1: V is the one-dimensional sign representation; a sign C3 class module has Hom-count3, a trivial C3 module has Hom-count1. | Correct distinction of relative and absolute torsion.  Carried from [previous review][previous]. |
| 232: Cohen martinet prediction for relative three torsion | u=0,1,2 give1+3^(−u)=2,4/3,10/9. | Correct unit-rank normalization.  Carried from [previous review][previous]. |
| 249: Cohen martinet prediction for three torsion of two extensions | W′=0 gives factor1 and predictions2 or4/3; a one-dimensional extra trivial-action-at-infinity summand multiplies by1+1/3. | Direct-sum multiplicities retained.  Carried from [previous review][previous]. |
| 268: Dihedral quartic proven average versus prediction | For u=0 and base h3-values1,3, weights1,2 give A_w=7/3, versus unweighted2; final factor2 gives14/3 versus4. | Correctly does not equate different base-field weights.  Carried from [previous review][previous]. |
| 290: Enhanced cohen lenstra finite level law | g=0: every cokernel0, mass1. g=1,F2: F=0 yields both cokernels0; F=1 yields neither0, joint zero mass1/2. | Shared matrix creates dependence.  Carried from [previous review][previous]. |
| 320: Zero cokernel probability at two | g=1:1/2; g=2 enumeration6/16=3/8, product(1−1/2)(1−1/4)=3/8. | Equal.  Carried from [previous review][previous]. |
| 338: Zero cokernel probability lower bound at odd primes | g=2,p=3:27/81=1/3; p=5:365/625=73/125. Both exceed2c3−1=0.12025216. | Bound, not equality or existence of a limit.  Carried from [previous review][previous]. |
| 356: Enhanced cohen lenstra conjecture | Empty prime set and empty tuple give singleton law mass1; (n1,n2)=(1,1) forces equal cokernels, so distinctness test rejects it. | Conjectural family hypothesis retained.  Carried from [previous review][previous]. |
| 382: Maximal isotropic subspaces of a quadratic space | F2 plane q=xy: axes q=0 and self-orthogonal; diagonal q(1,1)=1, although polar value on itself0. V=0 has one isotropic. | Correct quadratic condition.  Carried from [previous review][previous]. |
| 406: Isotropic reduction map | F2 plane,X=axis: X⊥/X=0, both axes map to0; X=0 gives identity on two axes. | Correct domain and quotient.  Carried from [previous review][previous]. |
| 438: Fibres of the isotropic reduction map | F2 four-space, X a line: total6, quotient has2 isotropics, fibre size3=2^(2−1)+1. Zero X gives fibre1. | Equal.  Carried from [previous review][previous]. |
| 455: Number of maximal isotropic subspaces | n=0,1,2 over F2:1,2,6; products empty,2,2·3. | Equal; excludes all35 Grassmannian planes.  Carried from [previous review][previous]. |
| 473: Intersection dimension generating function | F2,n=2: enumerated polynomial2+3z+z²=(z+1)(z+2). z=−1,0,1 gives0,2,6 on both sides. | Equal.  Carried from [previous review][previous]. |
| 491: Intersection dimension law closed form | p=2,n=2: d=0,1,2 masses1/3,1/2,1/6; d=3 mass0. Formula gives those three values. | Range restriction retained.  Carried from [previous review][previous]. |
| 510: Poonen rains distribution | p=2 weights at0…3:0.20971122,0.41942244,0.27961496,0.07988999; p=3:0.31950229,0.47925343,0.17972004,0.02073693. | Positive; includes factor1/2 at index0.  Carried from [previous review][previous]. |
| 533: Intersection law converges to poonen rains | p=2,n=1 finite masses(1/2,1/2) have L1 distance0.74173267; n=2 gives0.40839934; limit weights sum1.00000000 in truncation. | Finite laws differ from limit; convergence consistent.  Carried from [previous review][previous]. |
| 551: Poonen rains moments | p=2,m=0…3:1,3,15,135; p=3:1,4,40,1120, equal displayed products. Finite p2,n2 first moment2 versus limiting3; p2,n1,m2 gives5/2 on both sides. | Equal, now including n<m; parity-conditioned restriction remains separate.  Carried from [previous review][previous]. |
| 571: Poonen rains parity | p2,n2: even mass(2+1)/6=1/2, odd3/6=1/2. Conditional first moments both2; second moments6 and4 differ since m=n. | m<n restriction essential.  Carried from [previous review][previous]. |
| 589: Delaunay sha p rank law | p2,r0: mass at0=0.41942244=2a0; r1: mass at0=0.83884488=2a1. Odd Sha-ranks have mass0. | Correct rank shift.  Carried from [previous review][previous]. |
| 612: Delaunay compatibility of the selmer model | Half-prior gives a0…a3 as0.20971122,0.41942244,0.27961496,0.07988999. Prior δ0 gives0.41942244 at0, twice a0. | Both directions discriminate wrong prior.  Carried from [previous review][previous]. |
| 632: Count of nondegenerate alternating matrices | F2 sizes0,1,2,3,4: invertible counts1,0,1,0,28; totals1,1,2,8,64. 28/64=(1−1/2)(1−1/8). | Zero diagonal required at2.  Carried from [previous review][previous]. |
| 650: Alternating matrix kernel law | F2 n3 kernel histogram(j0…3)=(0,7,0,1); F3 n3=(0,26,0,1). | Parity and total8/27 verified.  Carried from [previous review][previous]. |
| 675: Alternating kernel law formula | F2 n4 kernel masses j0,2,4 are28/64,35/64,1/64; Gaussian factor [4 2]2=35. | Equal to enumeration.  Carried from [previous review][previous]. |
| 693: Alternating kernel law limit is poonen rains | p2,n0 parity average is(1/2,1/2); n1 average sizes2,3 gives(1/4,7/16,1/4,1/16). Target a0=0.20971122, not2a0. | Parity mixing factor correct.  Carried from [previous review][previous]. |
| 711: Symplectic finite abelian p groups | C2 has no perfect alternating form: its one generator pairs0 with everything. C2² has pairing matrix[[0,1/2],[1/2,0]], order4, Sp-order6. | Square-order condition necessary, not sufficient alone.  Carried from [previous review][previous]. |
| 742: Alternating cokernel law | A=[[0,2],[−2,0]] over Z2: coker=C2². Mod4 reproduces it. Mod2 cannot distinguish it from the zero matrix, whose integral cokernel is infinite; mod4 distinguishes C2² from C4². | e−1 annihilation condition retained.  Carried from [previous review][previous]. |
| 772: Bklpr alternating cokernel limit | p2,G=0: A0=0.41942244; G=C2²: A0=(4/6)·0.41942244=0.27961496. A1(0)=0.83884488. | Automorphisms are symplectic, not all24 permutations.  Carried from [previous review][previous]. |
| 792: Bklpr model | Q(0,0)=0.20971122; Q(1,0)=0.41942244; Q(2,G)=0; sums over G are1/2 for r0,r1. | Correct two-rank mixture.  Carried from [previous review][previous]. |
| 822: Bklpr random isotropic intersection law | n1: two axes. Equal axes give corank1 and T=0; distinct axes give corank0,T=0; four pairs split2/2. n0 instead corank0 with probability1. | n≥1 essential.  Carried from [previous review][previous]. |
| 839: Maximal isotropic direct summands modulo prime powers | n0 count1; n1 count2 for q2,q4; n2,q4 count12=4·(1+1/2)·2. | Not all self-annihilating subgroups.  Carried from [previous review][previous]. |
| 855: Bklpr injection moments | q4,n1,m1: two equal-axis pairs each have2 injections and two distinct pairs0; average1; at n2 enumeration gives12 summands and total288 injections over144 pairs, average2; limiting target4. m0 gives1. | Finite average not mistaken for limit.  Carried from [previous review][previous]. |
| 875: Poonen rains selmer conjecture | p2,d0 predicted0.20971122; first cardinality moment3. Curves with full rational2-torsion have Selmer size≥4, so are not individually distributed by this family law. | Conjecture and family retained.  Carried from [previous review][previous]. |
| 904: Bhargava shankar selmer average conjecture | n1,2,3,4,6: divisor sums1,3,4,7,12. n4 is7, not(2+1)²=9. | Correct composite convention.  Carried from [previous review][previous]. |
| 932: Selmer average conjecture implies rank at most one | n2 boundσ(2)/2²=3/4; n6 bound12/36=1/3; n prime p gives(p+1)/p²→0. | Unbounded N needed; one n is insufficient.  Carried from [previous review][previous]. |
| 948: Bklpr selmer conjecture | Predicted rank0/rank1 masses1/2 each; rank≥2 mass0. Finite Sha classes exhaust predicted mass1, while infinite Sha is not silently a finite class. | Conjecture stays separate from moment statements.  Carried from [previous review][previous]. |
| 975: Bklpr conjecture implies rank and selmer laws | Pair law on r0,r1 gives total1; rank-tail bound1−1/2−1/2=0. Delaunay convolution gives PR first masses above. | No unjustified unbounded moment inference.  Carried from [previous review][previous]. |
| 993: Full two-torsion descent data | Roots−1,0,1: products2,−1,2, none rational squares. Roots0,1,4 give4,−3,12 and fail the no4-isogeny condition. | Separating control for actual curve condition.  Carried from [previous review][previous]. |
| 1009: Swinnerton–Dyer transition and stationary limit | i0 probabilities(1/2,1/2,0); i1(1/8,7/8,0); i2(1/32,19/32,3/8); each sum1. | No negative-index transition mass.  Carried from [previous review][previous]. |
| 1025: Kane prime-tuple character estimates and arithmetic moments | One prime tuple has no pair-character factors, empty product1; repeated prime pair violates distinctness and cannot be treated as an independent Legendre symbol. | Restriction retained; analytic estimate source-checked separately.  Carried from [previous review][previous]. |
| 1041: Parity-sensitive twist moment determinacy | Even-conditioned PR and odd-conditioned PR have the same displayed cardinality moments, but parity expectations+1 and−1; equal mixture has0. | Parity hypothesis excludes two wrong laws.  Carried from [previous review][previous]. |
| 1058: Two selmer distribution in full two torsion twist families | W:y²=x³−x, b=1 gives Sel2 size4 and reduced d0. b=−1 is the same squareclass twist here. b=0 excluded; signed denominator2N counts±1 atN1, positive denominatorN counts1. | Torsion shift2 and real local condition preserved.  Carried from [previous review][previous]. |
| 1077: Geometric-height Weierstrass family | Constant nonsingular curve has d0; scaling coefficients by u^i multiplies Δ by u^12 and leaves isomorphism class fixed. | Carrier check only; de Jong text unavailable.  Carried from [previous review][previous]. |
| 1093: De Jong weighted denominator | q5 predicted constant(1−5^−9)(1−5^−10)/(1−1/5)≈1.24999923>0; q1 would divide by0 and is excluded. | Limit uncertified without source.  Carried from [previous review][previous]. |
| 1109: De Jong constant-j estimates | d1 count scaleq9 versus total scaleq11; ratioq^−2. d0 would make C1d=0 and is excluded from rank bound. | Growth comparison only; source unavailable.  Carried from [previous review][previous]. |
| 1125: De Jong torsor/surface comparison | Identity Selmer class removed: Selmer size1 gives0 nonidentity torsors; size3 gives2 classes, not3. | Normalization control; source unavailable.  Carried from [previous review][previous]. |
| 1141: De Jong projective-cubic count and geometric sum | d0,a=b=0: cubic section dimension10, #P(V)=(q10−1)/(q−1). Zero polynomial excluded from projectivization. | Counting control; asymptotic unavailable.  Carried from [previous review][previous]. |
| 1158: Function field 3 selmer average bound | Identity contribution1 plus three expected nonidentity contributions gives4; characteristic3 excluded, characteristic2 not excluded by the stated range. | Source unavailable; no certification of bound.  Carried from [previous review][previous]. |
| 1177: P infinity selmer corank distribution in twist families | M=(Qp/Zp)⊕C_p² has corank1, while dim M[p]=3; finite C_p² has corank0. | Correct distinction of corank and finite dimension.  Carried from [previous review][previous]. |
| 1206: Smith twist family hypothesis | E:x³−x has rational2-torsion dimension2 and roots products(−1,2,2); x(x−1)(x−4) has square4 and fails case3. | Discriminating examples.  Carried from [previous review][previous]. |
| 1233: Congruent number curve satisfies smith hypothesis | E[2](Q) has O and three roots, cardinal4; root-difference products−1,2,2 are nonsquares. | Matches case3.  Carried from [previous review][previous]. |
| 1249: Smith selmer rank limit equals corank | M=(Qp/Zp)^2⊕C_(p³): largest free ranks at levels1,2,3,4 are3,3,3,2, stabilizing at corank2. | Finite torsion is eventually removed.  Carried from [previous review][previous]. |
| 1264: Two point corank law forces zero density of high corank | Prob(c≥2)=1−Prob(c0)−Prob(c1); limits1−1/2−1/2=0. | Exact partition.  Carried from [previous review][previous]. |
| 1280: Even congruent twists have corank zero given smith law | Squarefree residues1,2,3 mod8 have total density1/2; on even-parity family excluded positive corank begins at2, whose density is0. | Parity bridges to corank0, not rank conjecture.  Carried from [previous review][previous]. |
| 1299: Selmer ratio of an isogeny | Identity map has kernel/cokernel sizes1/1, ratio1. Complex degree3 isogeny has1/3; reversing kernel and cokernel gives wrong3. | Correct direction.  Carried from [previous review][previous]. |
| 1329: Local selmer ratio via tamagawa numbers | Good reduction, p≠3 gives1·1=1. Complex degree3 gives1/3. Formal multiplier3 over Q3 contributes\|3\|3^−1=3. | Inverse derivative correct.  Carried from [previous review][previous]. |
| 1344: Tamagawa ratio under potentially good reduction | Equal Tamagawa numbers give quotient1; at p≠3 the derivative is a unit and ratio1, while at3 derivative can contribute3. | Residue-characteristic qualification essential.  Carried from [previous review][previous]. |
| 1359: Selmer ratio classes are locally defined | A product of local ratios3,1/3,1 has exponent0; changing first factor to1 gives exponent−1. | Finite local data, not signless exponent.  Carried from [previous review][previous]. |
| 1376: BKLOS average size of three-isogeny Selmer groups | Constant global ratio1 gives irreducible mean1, total Selmer mean2; ratio3 gives total4. | Identity orbit retained; conditional on C.  Carried from [previous review][previous]. |
| 1391: Cassels isogeny selmer ratio formula | With Selmer sizes3 and1, kernel sizes3 and1, formula forces c=1; removing torsion factor would force3. | Correct torsion correction.  Carried from [previous review][previous]. |
| 1406: Isogeny factorisation selmer exact sequence | For φ1=id, first kernel quotient0 and Selψ=Selφ2; φ2=id gives Selψ=Selφ1. | Maps have proper source and target.  Carried from [previous review][previous]. |
| 1421: Three isogeny selmer parity | Sel3 dimension2 with rational3-torsion dimension1 gives reduced parity1; raw dimension parity0 differs. | Subtraction essential.  Carried from [previous review][previous]. |
| 1471: Reduced p selmer rank bounds the corank | Sel_p dimension3, rational p-torsion dimension1 leaves bound2; corank2 attains it. Equal dimensions1−1 yield0. | Torsion subtraction correct.  Carried from [previous review][previous]. |
| 1486: Three selmer rank zero in selmer ratio one twists | Nonnegative even reduced rank with mean≤1 gives P(rank≥2)≤1/2 and P(rank0)≥1/2. | Correct lower-density bound.  Carried from [previous review][previous]. |
| 1501: Three selmer rank one in odd selmer ratio twists | Odd rank with mean≤4/3 gives P(rank≥3)≤(4/3−1)/2=1/6; rank1≥5/6. | Correct5/6, not2/3.  Carried from [previous review][previous]. |
| 1515: Positive proportions of three selmer ranks in local subfamilies | Strata masses1/2 and1/2 inside full family give rank0≥1/4 and rank1≥5/12. | Denominator weighting correct.  Carried from [previous review][previous]. |
| 1533: Cm curves have a twist with good reduction | O_K units order2,4,6 for generic,j1728,j0; a unit character of order3 cannot be killed by a quadratic character of order2. | Larger twist groups retained.  Carried from [previous review][previous]. |
| 1548: Cm three isogeny has selmer ratio one | F=K: finite3-part3 and complex factor1/3 give1; [F:K]=2 gives9·1/9=1. | General base-degree cancellation works.  Carried from [previous review][previous]. |
| 1563: Cm twists have corank zero at least half | K=Q(√−3), F=K(√2): finite factor9 and two complex factors1/9 give1, hence the same conditional half-bound. | General F is now retained; previous R03 repaired.  Carried from [previous review][previous]. |
| 1583: Lc quadratic | F2²,q=xy/2: polar matrix[[0,1/2],[1/2,0]] induces bijection of four-element groups. q=0 on same V has adjoint image size1, not4. | Stored topological equivalence excludes trivial model.  Carried from [previous review][previous]. |
| 1603: Weak metabolic | F2 hyperbolic axis: size2=orthogonal size2,q0. Diagonal has q(1,1)=1/2. Zero subgroup orthogonal has size4. | Correct three conditions.  Carried from [previous review][previous]. |
| 1626: Maximal isotropics | Finite hyperbolic plane has2; zero group has1; real hyperbolic x-axis equals its annihilator but is not compact-open. | Carrier is not just weakly metabolic subgroups.  Carried from [previous review][previous]. |
| 1648: Joint parity weight | Two marginals(1/2,1/2) give(1/2,0,0,1/2), total1; empty product mass1. Both δ0 marginals instead give total2. | Half-parity hypotheses essential.  Carried from [previous review][previous]. |
| 1672: Locally compact character and annihilator duality | C4 generator evaluation χ_k↦k/4; dual and bidual each have4 elements. Character on2C4 with value1/2 extends with value1/4 at1. | Evaluation is now imported from VNA; the extension target permits unbounded exponent.  Carried from [previous review][previous]. |
| 1689: Restricted product character duality | One factor C2 with reference0 gives dualC2, cardinal2; empty product has1 character. Infinite nontrivial restrictions on compact ∏C2 fail finite-support continuity. | Correct dual reference subgroup.  Carried from [previous review][previous]. |
| 1708: Lc finite reductions | Finite hyperbolic plane,X0: quotient size4 and2 isotropics; X=axis quotient size1 and1 isotropic. | Identity and maximal reduction consistent.  Carried from [previous review][previous]. |
| 1724: Lc canonical measure | Dyadic hyperbolic plane has masses1/2,1/2. q=(x²−y²)/4 on C2² has only diagonal isotropic: mass1; p q(e1)=1/2≠0 excludes it. | Value-group hypothesis necessary.  Carried from [previous review][previous]. |
| 1740: Lc random intersection | Finite n1 intersection dimensions0,1 each1/2, versus infinite model a0=0.20971122,a1=0.41942244. | Finite/infinite clauses necessary.  Carried from [previous review][previous]. |
| 1756: Lc restricted product | Two hyperbolic factors: q((1,1),(1,0))=1/2+0=1/2; a point supported wholly in references has q0. | Finite sum and zero references agree.  Carried from [previous review][previous]. |
| 1774: Finite-flat local topology and duality | L=F_p((t)), N=α_p: H1=L/L^p has nonzero class t; étale geometric α_p-points have cardinal1 and would lose it. | fppf required at characteristic p.  Carried from [previous review][previous]. |
| 1790: Integral flat reference and Kummer annihilators | α_p over F_p[[t]]: integral class t survives in L/L^p; class t^−1 is not integral. Reference is proper, not entire H1. | Integral/generic distinction retained.  Carried from [previous review][previous]. |
| 1806: Finite-flat global Poitou–Tate | N=0 gives every H1 term0 and annihilator0; α_p retains the nonzero t class over F_p(t), unlike geometric-point cohomology0. | Correct coefficient category; full duality not finite-example proof.  Carried from [previous review][previous]. |
| 1825: Sha one vanishing | Constant C2 and trivial module: locally trivial characters have kernel0 by splitting at all Frobenii; S3 acting on F2² has Sylow2 order2 cyclic. | Criterion includes nonabelian automorphism group.  Carried from [previous review][previous]. |
| 1839: Selmer quadratic intersection | Cup invariant1/3 has negative2/3; at2 −1/2=1/2. Identity isogeny gives zero Selmer, zero Sha1 and intersection0. | Sign detectable at3, not only2.  Carried from [previous review][previous]. |
| 1859: Global coefficient-model families | Over Q, height(1/2)=2; coefficients(0,0) have Δ0 and are excluded. In char2, short equation alone misses general models. | Height and nonsingularity controls.  Carried from [previous review][previous]. |
| 1879: Joint parity moments | Primes2,3: first moment(2+1)(3+1)=12=σ(6); second15·40=600. Empty product gives1. | Parity does not change these moments.  Carried from [previous review][previous]. |
| 1893: Squarefree selmer conjecture | n6 ranks(0,1) have mass0, ranks(0,0) mass2a_2(0)a_3(0)≈0.134006; n1 separately singleton mass1. | Conjecture normalized, including excluded n1 boundary.  Carried from [previous review][previous]. |
| 1917: Odd degree jacobian conjecture | g1 odd-degree model has degree3 and predicted mean3 atp2; even-degree,odd n3 predicts mean4; genus0 excluded. | Family conditions retained.  Carried from [previous review][previous]. |
| 1941: Even genus two selmer conjecture | g2,degree6: X=1+X_PR gives moments1,6,60,1080 versus unshifted1,3,15,135; g1 excluded. | Shift and even genus discriminate.  Carried from [previous review][previous]. |
| 1967: General Oesterlé measure | Spec Z2 mass1; A1 mass1, point ambient mass0. Spec Z2[T]/T²: integral reduction image size1; all mod2^e solutions size2^floor(e/2). | Reduction images crucial.  Carried from [previous review][previous]. |
| 1983: Alternating rank-stratum measure and pushforward | n2,r2 intrinsic point mass1 vs ambient mass0; n2,r0 dimension1; determinant integral p2,s1 is(1/2)/(7/8)=4/7. | Squared determinant exponent verified.  Carried from [previous review][previous]. |
| 2000: Smooth cylinder measure | P1/Z2 total3/2; level2 has6 points, each probability1/6. Two copies total3, components probability1/2. | Haar mass and normalized probability distinguished.  Carried from [previous review][previous]. |
| 2016: Ogr smooth projective | n0 point dimension0; n1 two points dimension0; n2,F2 count6 versus Gr count35; chart alternating2×2 has one free coordinate. | Includes characteristic2.  Carried from [previous review][previous]. |
| 2032: Ogr components | n1 axes intersect in dimension0≠1 mod2, hence opposite; equal axes intersect dimension1, hence same. n0 has one even point, no odd point. | Boundary fixed.  Carried from [previous review][previous]. |
| 2046: Ogr prime power count | p2,n2,e1…4 counts6,12,24,48; successive fibres2=p^(n(n−1)/2). n0 always1. | Equal.  Carried from [previous review][previous]. |
| 2063: Ogr schubert dimension | n2,r2 dimension0, point; n2,r0 dimension1; n1,r0 one point, not both OGr1 points. | Parity-selected resolution required.  Carried from [previous review][previous]. |
| 2083: All rank delaunay | p2,r0,G0 mass0.41942244; r1,G0 mass0.83884488. C2 alone has no symplectic structure and contributes0. | Intrinsic rank law, not ambient conditioning.  Carried from [previous review][previous]. |
| 2097: Positive rank all primes | r1,p2 nontrivial probability0.16115512 versus leading2^−3=0.125; exponent−3 gives convergent prime sum. | Correct summable order.  Carried from [previous review][previous]. |
| 2111: Rank zero all primes infinite | p2 nontrivial probability0.58057756≥1/2; at general p product≤1−1/p so nontrivial probability≥1/p. | Divergence excludes finite all-prime law.  Carried from [previous review][previous]. |
| 2125: Symplectic harmonic weights | N1,2,3,4 masses1,2/3,3/8,16/45; each between1/N and2/N. At L=N interval still has positive mass while log(N/L)=0. | +1 in bound necessary.  Carried from [previous review][previous]. |
| 2139: Sparse prime weighted limit | P empty,f1: both normalized averages1 and c_P sum1; f0 both0. P={2},f supported at0 yields predicted0.41942244. | Correct normalization; unbounded f needs L1.  Carried from [previous review][previous]. |
| 2155: Injection moment conjecture | q4: Inj(C4,C4)=2 but Inj(C4,C2²)=0 despite both orders4. m0 target1; m1 limiting target4. | Not a cardinality polynomial for e>1.  Carried from [previous review][previous]. |
| 2196: Kummer direct summand | n1: A(k)/A(k)=0,H1(A[1])=0, complement0. In characteristicp, α_p torsion must use fppf to retain class t. | Algebraic splitting, not continuity assertion.  Carried from [previous review][previous]. |
| 2213: Adelic kummer direct summand | Finite two-place model (C2⊕C2)²: Kummer productC2² and complementary direct sumC2² have trivial intersection, orders4·4=16. | Correct product/direct-sum roles.  Carried from [previous review][previous]. |
| 2230: Global image splitting conjecture | n1 global image0 in0 splits; a thin trivial-torsion-action family alone has no computed density1. | Remains a conjecture.  Carried from [previous review][previous]. |
| 2254: Trivial action global splitting | n2, full rational E[2] gives μ2²; scalar Kummer point1 is trivial in each quotient, nonsquare2 is detected atQ2. | All-divisor injection mechanism distinguishes local failure.  Carried from [previous review][previous]. |
| 2276: Abelian three-isogeny average | Degree3 complex local kernel3,cokernel1 gives1/3 regardless of dimension. Global ratio1 gives mean2, not1. | C uses actual abelian Kummer images.  Carried from [previous review][previous]. |
| 2290: Endomorphism rank bound | Z² with ψ=diag(1,3): quotient order3, rank2, log3 index1; bound requires c≤1/2. ψ=[3] gives index9, log3=rank2. | Uniform comparison is explicit, not inferred from degree.  Carried from [previous review][previous]. |
| 2304: Multiplication three rank bound | Z²⊕C3 modulo3 has order27≥9=3²; torsion increases quotient, never reduces bound. | c=1 valid.  Carried from [previous review][previous]. |
| 2319: Finite extension rank bound | A[3] over splitting field has order3^(2g), a full flag has2g degree3 factors; g1 gives2 factors and total degree9. | Height remains over the new field.  Carried from [previous review][previous]. |
| 2333: Elliptic explicit twist rank | m0,1,2 give\|m\|+3^−\|m\|=1,4/3,19/9; m=−1 also4/3. | Absolute exponent required.  Carried from [previous review][previous]. |
| 2347: Attainable local three-isogeny ratios | p≠3 requested value1; overQ3 interval[1,3] permits1,3; over degree2 extension interval[1,9]. | Does not assert every twist attains1.  Carried from [previous review][previous]. |
| 2363: Universal-twist local table | k1:t=26244,t+27=26271. Atx0 RHS16·26271=420336; (4√26271)²=420336, whereas(2√26271)²=105084. | Corrected kernel coordinate; k≥1 retained.  Carried from [previous review][previous]. |
| 2381: Signature positive twists | Totally real r2=0 permits m0; imaginary quadratic r2=1 permits local exponent offsets giving rank0 or1; degree4 totally imaginary falls outside those conclusions. | Signature conditions substantive.  Carried from [previous review][previous]. |
| 2398: Complex place obstruction | r2=0 bound0; r2=2 bound2. Exceptional torsion correction−2 is offset by two extra powers: (r2+2)−2=r2. | Uniform twist claim retains exceptional case.  Carried from [previous review][previous]. |
| 2447: CM Hecke character | Principal idele2 over F=K: finite scalar2 times infinite factor1/2 givesψ=1; omitting infinity gives2. | Normalization and principal triviality agree.  Carried from [previous review][previous]. |
| 2463: CM local unit character | Trivial inertia character gives inverse twist1; characterζ3 has inverseζ3², product1, while a quadratic sign cannot cancelζ3. | All roots-of-unity units retained.  Carried from [previous review][previous]. |
| 23: Quartic conventions | x4−y4: I=−12,J0,27Δ=−6912=4I³, Δ=−256. E(A,B)=(−1,0): H_E4,H_IJ27,27H_E=4H_IJ=108. | Sign and height factor verified.  Carried from [previous review][previous]. |
| 2418: Supporting quadratic comparisons | F2 split plane has two isotropics and masses1/2; quarter-valued dyadic plane has one and mass1. For q4,n1,m1 injection average1, limit4. | Synopsis agrees with the distinct finite, limiting and value-group clauses.  Carried from [previous review][previous]. |
| 19: Exclusions and total-function boundaries | A field has 0≠1, so the zero ring is outside finite-field signatures; q1 is not a prime power>1. At n0 the OGr carrier has1 element and mass1. S3 has commutator of (12),(23) a nonidentity3-cycle, so cannot instantiate AddCommGroup. | These hypotheses exclude the wrong carriers; no 0/0 used as a probability.  Carried from [previous review][previous]. |
| 473/855: Independent residue-field and prime-power checks | F3 dimension4 has8 maximal isotropics, intersection-cardinality histogram{1:3,3:4,9:1}; polynomial3+4z+z²=(z+1)(z+3). Over Z/4 rank4 there are12 summands and288 injections into pairwise intersections over144 pairs, mean2. | Independently enumerated; field3 and residue characteristic2 are not conflated.  Carried from [previous review][previous]. |

## Not verifiable

No newly required source was inaccessible: Rubin, BKLPR and BKLOS were read through legal copies returned by the sources service. Unchanged access limitations from [the previous report][previous] remain:

- **DeJong**, §5.9: the author's Columbia DVI could not be extracted by the service. The previous numerical rows do not certify its asymptotic theorem.
- **CM90**: the original Cohen–Martinet paper resolved to a publisher landing page without readable text. The previous alternate-source checks do not certify its original numbering.
- **vanKampen**: the original duality paper resolved to inaccessible JSTOR content. The named supplier contract and PR's quadratic definitions are separate evidence.
- **Silverman**, cited textbook background including the twist-action reference: no legal text of the requested edition was returned previously. The changed differential and CM claims were instead checked in Rubin, BKLOS and the named suppliers.
- **Cassels1965**: the original pairing paper was not legally readable through the previous publisher resolution.
- **Oesterlé** and **Schaefer1996** remain uncertified paywalled citations; no new request or access bypass was made.

These concern unchanged passages. They are retained as limitations, not silently converted into certified source checks or renewed requests. This incremental review does not repeat the full previous source audit.

## Source issues

The unchanged source issues remain recorded in [the previous report][previous]. One additional typographical issue was encountered in the reopened [Rubin text](https://swc-math.github.io/notes/files/99RubinCM.pdf); the repaired roadmap uses the intended statement.

- **Misprint** in Rubin at Proposition 5.3, printed p. 15 (Rubin lines 548–559): the source says the original curve E has maximal endomorphism order; it should be the constructed isogenous curve E′ has maximal endomorphism order; affects a stated result.

[previous]: packages/ArithmeticStatisticsPartVII/reports/PRREVIEW-ArithmeticStatisticsPartVII~2.md
