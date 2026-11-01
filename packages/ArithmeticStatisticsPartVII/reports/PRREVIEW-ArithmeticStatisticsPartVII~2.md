# Review of ArithmeticStatisticsPartVII (pull request #1178 at 84f8c47)
**Verdict:** needs changes

## R01 (P2) — An ideal has no differential multiplier

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2477`: “for such `E` and every nonzero ideal `a`” and “Normalize the differential action by `a*(ω)=ι(a)ω`”.

**Claim:** The paragraph applies the scalar differential formula to an ideal. An ideal-kernel isogeny has target `E/E[a]`, not necessarily E; `ι(a)` is not a scalar. Rubin's Proposition 3.14 concerns an endomorphism, not an ideal (Rubin line 384).

**Witness:** In `O=ℤ[√−5]`, `(2,1+√−5)` has norm 2 but no generator: `x²+5y²=2` has no integral solution. Even `(2)=(-2)` has generators with differential multipliers 2 and −2.

**Repair:** Separate the ideal isogeny `φ_a:E→E/E[a]` from multiplication by an element `α∈O_K`. State `[α]*ω=ι(α)ω` for the latter. For `φ_a`, specify differentials on both curves and define the coefficient by `φ_a*ω′=c_φ ω`; do not identify it with an embedded ideal. The norm-two example then has a degree-two quotient without a fictitious generator; the two endomorphisms `[±2]` both have degree four and retain their respective multipliers ±2. Add these as discriminating Checks.

## R02 (P2) — Import the existing CM ideal-action and reciprocity foundation

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2434`: “Develop the ideal action on CM lattices and algebraic isogenies, identify their conjugates and their torsion action through reciprocity”. Also line 2477's ideal-kernel construction and line 15's ownership claim.

**Claim:** This proof route reconstructs work already owned on main. The supplied uniformization citations repair the previous missing supplier, but do not resolve ownership of the subsequent CM dictionary and reciprocity argument.

**Witness:** `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:87` owns the ideal-lattice equivalence, endomorphism orders, ideal action, Frobenius/torsion comparison and Artin reciprocity; line 89 supplies the finite-level multiplication-matrix action, including exceptional units.

**Repair:** Add H3.1 to Scope and ownership and the exact supplier contracts. Import its CM dictionary, ideal action and arithmetic reciprocity instead of developing them again. Retain a precisely stated adapter from those finite-level actions to Rubin's chosen-uniformization/idele diagram, together with any additional Hecke-character and local twist comparisons not supplied there. Keep the actual reciprocity convention: for the principal idele 2, the lattice becomes `½Λ`, the torsion coordinate becomes `t/2`, and the comparison `ξ′(z)=ξ(2z)` gives `ξ′(t/2)=ξ(t)`. This tests the imported action and the adapter without creating a second owner. H3.1 is on main, so this repair adds no upward dependency.

## R03 (P2) — The finite-exception density theorem already belongs to Part I

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:1437`: “The same assertion holds in any family with finite sublevels and a growing denominator.”

**Claim:** “Finite set twist density zero” is a second target and proof of the general finite-subset density theorem, not a new twist-specific comparison.

**Witness:** `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:279`, §0.1, already specifies `ArithmeticFamily.hasDensity_zero_of_finite`; line 287 supplies the same bounded-numerator/growing-denominator proof.

**Repair:** Delete this target, cite Part I §0.1's finite-subset density theorem in the supplier contract, and point the torsion-exception consumers to it plus the squareclass denominator. The imported theorem gives `1/N→0` for a fixed singleton in growing slices; a singleton ambient family still has density 1 and is excluded by denominator growth. No second proof or new Lean declaration is needed.

## R04 (P2) — Include the statable bounded-exponent decomposition theorem

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2181`: “every abelian group killed by `n` is a possibly infinite direct sum of cyclic groups”. `Suggested.lean:18–33` lists omitted headline families, but the file never states this owned structural theorem.

**Claim:** The infinite bounded-exponent structure theorem is a substantive result needed for the general Kummer splitting argument. Its carriers exist at the pins; the missing Selmer/cohomology carriers do not prevent stating this theorem itself.

**Witness:** A scratch file with `import Mathlib` elaborated the following signature under default options, with only the expected `sorry` warning. It uses native `AddCommGroup`, `AddEquiv`, `DirectSum` and `ZMod`.

```lean
open scoped DirectSum
universe u
theorem bounded_exponent_decomposition (A : Type u) [AddCommGroup A]
    (n : ℕ) (hn : 0 < n) (hA : ∀ a : A, n • a = 0) :
    ∃ (ι : Type u) (d : ι → ℕ),
      (∀ i, 0 < d i ∧ d i ∣ n) ∧ Nonempty (A ≃+ ⨁ i, ZMod (d i)) := by
  sorry
```

**Repair:** Add this headline, appropriately named/namespaced/documented, and its README name. Keep arbitrary groups and index sets: for `⊕_ℕ ℤ/4`, choose `d(i)=4`; for `n=1`, use an empty index set. Mathlib's finite-group decomposition requires `[Finite A]` (`Mathlib/GroupTheory/FiniteAbelian/Basic.lean:134`), so it does not supply the infinite witness and is not a one-lemma replacement.

## R05 (P3) — The source manifest is still absent

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVII/README.md:2509`, References, and absent `TauCetiRoadmap/ArithmeticStatisticsPartVII/sources.toml`.

**Claim:** Previous R06 is only partly repaired. The duplicate bibliography entries have been consolidated, but the required source manifest is still missing.

**Witness:** The folder contains README, Suggested and metadata, with no `sources.toml`. PR, BKLPR and BKLOS now each have one bibliography entry, but none has a manifest access/version record.

**Repair:** Add the required manifest with one identity per work, exact version and locators, and the sources service's access records. Preserve inaccessible/uncertified status honestly. For example, BKLPR is one work with arXiv `1304.3971v2` and its published DOI, not two entries. This review changed neither the PR nor a manifest.

## Previous findings

Checked all eight previous findings against this head before the full review:

| Previous finding | Passage at this head and disposition |
|---|---|
| R01, missing CM uniformization supplier | Lines 47 and 2436 now name “AbelianSchemesAndArithmeticModuli §A5.1” and “ModularCurvesPartII §§1.2–1.4”. **Repaired:** both contracts were opened and supply the claimed lattice/isogeny/differential data. New R02 concerns the later CM foundation, not this repaired citation. |
| R02, general Pontryagin biduality duplication | Line 1676 says “Use VonNeumannAlgebras V11.DoubleDualEmbedding and the V11 Fourier/biduality conclusion”. **Repaired:** the general evaluation theorem is imported; the remaining target explicitly extends beyond bounded-exponent arithmetic groups. |
| R03, CM theorem restricted to F=K | Line 1565 now starts with a number field F and `End_F(E)⊗ℚ=K`; line 1574 tests `F=K(√2)`. **Repaired:** the finite factor 9 cancels the complex factor 1/9. |
| R04, 149 HTML anchors | Native `####` target headings replace the anchor tags; the supplied gate reports `residue=0`. **Repaired.** |
| R05, advertised nonexistent own API declarations | Line 69 reserves own backticked names for actual declarations; API lists now use prose. The 19 actual declarations match the README and gate. **Repaired.** |
| R06, manifest and duplicate references | References now contain one entry per PR/BKLPR/BKLOS paper; no manifest exists. **Partly repaired; current R05.** |
| R07, broken supplier fragments | The CL measure link now ends in `#33-finite-abelian-groups-and-cohenlenstra-mass`. All 24 distinct sibling section fragments resolve; their named targets were also inspected. **Repaired.** |
| R08, finite PR moments unnecessarily restricted | Line 553 now states the formula for all `n,m≥0`; line 567 includes `n=1,m=2`. **Repaired:** both sides are 5/2 at p=2, while n=0 gives 1 for every m. |

## Verified sound

The complete README and Suggested were reviewed at the requested head, including unchanged passages. The normative repository README and CONTRIBUTING were read, and shape was compared with main's RestrictedProducts, OrthogonalL2Bases and EllipticCurves roadmaps. No outside-folder changes or tracked worktree changes were found. No computational algorithm, copied source passage, sorry-defined data, `set_option`, or extra roadmap import was found. Arithmetic conjectures remain propositions, and the three-isogeny applications retain `C(F,φ,Σ)` over the actual averaging field. The ownership defects above are repairable parts of the roadmap, not rejection of its overall scope.

The worker's supplied gate at this head reports every check passing, including `build=0`, `depcheck=0`, `stray-files=0`, `outside-folder=0`, and `readme-ids-missing=0`. The requested dependency command was independently run and returned:

```text
depcheck: 205 roadmaps, 1456 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Every Needs line and supplier contract was read; no declared gaps were provided. The graph check does not detect the ownership overlaps in R02–R03.

Both imported Tau Ceti modules were built by the allowed targeted build. Direct `lake env lean` elaboration of Suggested then exited 0 with exactly eight `sorry` warnings. A scratch copy printed `#check @name` for all **19 declarations** (11 definitions and eight theorems); every elaborated type was compared with the README. No needed binder disappeared and no signature changed. Scratch one-tactic probes with `simp`, `rfl` and `infer_instance` closed none of the eight theorems. Object searches at the pins found no single existing library lemma giving those full statements; no padding finding is raised.

The eight present headlines are: finite quadratic intersection generating function; its total-variation Poonen–Rains limit; all cardinality moments; Delaunay compatibility; the alternating-kernel total-variation limit; parity-sensitive moment determinacy; prime-power injection moments; and Kane's positive/signed integer twist distributions. The README also reaches CL/CM arithmetic implications and enhanced laws, symplectic cokernel and p-adic models, OGr/rank-stratum and all-prime laws, locally compact random intersections, global theta/Selmer intersections, composite/Jacobian conjectures, corank and three-isogeny/CM applications, the function-field three-Selmer bound, and local/adelic Kummer summands. The module docstring names these omissions and their missing arithmetic, geometric, measure or CM constructions. The bounded-exponent structural input is the additional statable theorem identified in R04.

The following **132 rows** record computations for the target blocks, the repeated supporting summaries and boundary conventions. Each row covers that block's definition/API and its stated normalization or negative controls; these are adversarial instances, not proofs of the general theorem. The eight Lean headlines occur in their corresponding rows. Finite subspaces, alternating matrices, joint cokernel events, symmetric matrices and Z/4 direct summands were independently enumerated. Infinite-product decimals use 200 factors and 25 rank weights and are numerical probes, not certified error bounds. Unavailable-source rows do not certify their asymptotics. Locations are lines in this roadmap's README.

| Line / statement | Instances and computed values on the compared sides | Result / change |
|---|---|---|
| 75: Cohen lenstra heuristic for quadratic fields | p=3, B=0: imaginary predicted mass 0.56012608; real mass 0.84018912 (=3c/2). d=−1,2 have discriminants −4,8. | Conjecture remains a conjecture. |
| 101: Cohen lenstra moment conjecture for quadratic fields | A=0: Sur(G,0)=1 and prediction 1. A=C3: predictions 1 and 1/3 for u=0,1; Sur(C3,C3)=2. | No assertion that individual fields equal their mean. |
| 125: Cohen lenstra moment form implies heuristic | Adding mass 3^(−N) at C3^N changes TV by at most 2·3^(−N), but changes the C3-surjection moment by 1−3^(−N). | Converse correctly excluded. |
| 141: Cohen martinet predicted surjection moment | Sign action C2 on F3: fixed size 1 gives 1; identity fixed size3 gives1/3. In F2 sign=identity, prediction1/2. | Correct, including dyadic negative control. |
| 168: Cohen lenstra martinet average conjecture | Trivial class group contributes1, never0; C3 contributes3. For p=3,G=C2 the coprimality test is gcd(3,2)=1. | Only predicted limit, not a proved density. |
| 193: Cohen martinet surjection moment conjecture | Sign F3 has global invariant dimension0; infinite-place identity has fixed dimension1 and moment1/3. | The no-trivial-constituent condition does not replace local invariants. |
| 218: Relative three torsion as irreducible hom count | G=C2, H=1: V is the one-dimensional sign representation; a sign C3 class module has Hom-count3, a trivial C3 module has Hom-count1. | Correct distinction of relative and absolute torsion. |
| 232: Cohen martinet prediction for relative three torsion | u=0,1,2 give1+3^(−u)=2,4/3,10/9. | Correct unit-rank normalization. |
| 249: Cohen martinet prediction for three torsion of two extensions | W′=0 gives factor1 and predictions2 or4/3; a one-dimensional extra trivial-action-at-infinity summand multiplies by1+1/3. | Direct-sum multiplicities retained. |
| 268: Dihedral quartic proven average versus prediction | For u=0 and base h3-values1,3, weights1,2 give A_w=7/3, versus unweighted2; final factor2 gives14/3 versus4. | Correctly does not equate different base-field weights. |
| 290: Enhanced cohen lenstra finite level law | g=0: every cokernel0, mass1. g=1,F2: F=0 yields both cokernels0; F=1 yields neither0, joint zero mass1/2. | Shared matrix creates dependence. |
| 320: Zero cokernel probability at two | g=1:1/2; g=2 enumeration6/16=3/8, product(1−1/2)(1−1/4)=3/8. | Equal. |
| 338: Zero cokernel probability lower bound at odd primes | g=2,p=3:27/81=1/3; p=5:365/625=73/125. Both exceed2c3−1=0.12025216. | Bound, not equality or existence of a limit. |
| 356: Enhanced cohen lenstra conjecture | Empty prime set and empty tuple give singleton law mass1; (n1,n2)=(1,1) forces equal cokernels, so distinctness test rejects it. | Conjectural family hypothesis retained. |
| 382: Maximal isotropic subspaces of a quadratic space | F2 plane q=xy: axes q=0 and self-orthogonal; diagonal q(1,1)=1, although polar value on itself0. V=0 has one isotropic. | Correct quadratic condition. |
| 406: Isotropic reduction map | F2 plane,X=axis: X⊥/X=0, both axes map to0; X=0 gives identity on two axes. | Correct domain and quotient. |
| 438: Fibres of the isotropic reduction map | F2 four-space, X a line: total6, quotient has2 isotropics, fibre size3=2^(2−1)+1. Zero X gives fibre1. | Equal. |
| 455: Number of maximal isotropic subspaces | n=0,1,2 over F2:1,2,6; products empty,2,2·3. | Equal; excludes all35 Grassmannian planes. |
| 473: Intersection dimension generating function | F2,n=2: enumerated polynomial2+3z+z²=(z+1)(z+2). z=−1,0,1 gives0,2,6 on both sides. | Equal. |
| 491: Intersection dimension law closed form | p=2,n=2: d=0,1,2 masses1/3,1/2,1/6; d=3 mass0. Formula gives those three values. | Range restriction retained. |
| 510: Poonen rains distribution | p=2 weights at0…3:0.20971122,0.41942244,0.27961496,0.07988999; p=3:0.31950229,0.47925343,0.17972004,0.02073693. | Positive; includes factor1/2 at index0. |
| 533: Intersection law converges to poonen rains | p=2,n=1 finite masses(1/2,1/2) have L1 distance0.74173267; n=2 gives0.40839934; limit weights sum1.00000000 in truncation. | Finite laws differ from limit; convergence consistent. |
| 551: Poonen rains moments | p=2,m=0…3:1,3,15,135; p=3:1,4,40,1120, equal displayed products. Finite p2,n2 first moment2 versus limiting3; p2,n1,m2 gives5/2 on both sides. | Equal, now including n<m; parity-conditioned restriction remains separate. |
| 571: Poonen rains parity | p2,n2: even mass(2+1)/6=1/2, odd3/6=1/2. Conditional first moments both2; second moments6 and4 differ since m=n. | m<n restriction essential. |
| 589: Delaunay sha p rank law | p2,r0: mass at0=0.41942244=2a0; r1: mass at0=0.83884488=2a1. Odd Sha-ranks have mass0. | Correct rank shift. |
| 612: Delaunay compatibility of the selmer model | Half-prior gives a0…a3 as0.20971122,0.41942244,0.27961496,0.07988999. Prior δ0 gives0.41942244 at0, twice a0. | Both directions discriminate wrong prior. |
| 632: Count of nondegenerate alternating matrices | F2 sizes0,1,2,3,4: invertible counts1,0,1,0,28; totals1,1,2,8,64. 28/64=(1−1/2)(1−1/8). | Zero diagonal required at2. |
| 650: Alternating matrix kernel law | F2 n3 kernel histogram(j0…3)=(0,7,0,1); F3 n3=(0,26,0,1). | Parity and total8/27 verified. |
| 675: Alternating kernel law formula | F2 n4 kernel masses j0,2,4 are28/64,35/64,1/64; Gaussian factor [4 2]2=35. | Equal to enumeration. |
| 693: Alternating kernel law limit is poonen rains | p2,n0 parity average is(1/2,1/2); n1 average sizes2,3 gives(1/4,7/16,1/4,1/16). Target a0=0.20971122, not2a0. | Parity mixing factor correct. |
| 711: Symplectic finite abelian p groups | C2 has no perfect alternating form: its one generator pairs0 with everything. C2² has pairing matrix[[0,1/2],[1/2,0]], order4, Sp-order6. | Square-order condition necessary, not sufficient alone. |
| 742: Alternating cokernel law | A=[[0,2],[−2,0]] over Z2: coker=C2². Mod4 reproduces it. Mod2 cannot distinguish it from the zero matrix, whose integral cokernel is infinite; mod4 distinguishes C2² from C4². | e−1 annihilation condition retained. |
| 772: Bklpr alternating cokernel limit | p2,G=0: A0=0.41942244; G=C2²: A0=(4/6)·0.41942244=0.27961496. A1(0)=0.83884488. | Automorphisms are symplectic, not all24 permutations. |
| 792: Bklpr model | Q(0,0)=0.20971122; Q(1,0)=0.41942244; Q(2,G)=0; sums over G are1/2 for r0,r1. | Correct two-rank mixture. |
| 822: Bklpr random isotropic intersection law | n1: two axes. Equal axes give corank1 and T=0; distinct axes give corank0,T=0; four pairs split2/2. n0 instead corank0 with probability1. | n≥1 essential. |
| 839: Maximal isotropic direct summands modulo prime powers | n0 count1; n1 count2 for q2,q4; n2,q4 count12=4·(1+1/2)·2. | Not all self-annihilating subgroups. |
| 855: Bklpr injection moments | q4,n1,m1: two equal-axis pairs each have2 injections and two distinct pairs0; average1; at n2 enumeration gives12 summands and total288 injections over144 pairs, average2; limiting target4. m0 gives1. | Finite average not mistaken for limit. |
| 875: Poonen rains selmer conjecture | p2,d0 predicted0.20971122; first cardinality moment3. Curves with full rational2-torsion have Selmer size≥4, so are not individually distributed by this family law. | Conjecture and family retained. |
| 904: Bhargava shankar selmer average conjecture | n1,2,3,4,6: divisor sums1,3,4,7,12. n4 is7, not(2+1)²=9. | Correct composite convention. |
| 932: Selmer average conjecture implies rank at most one | n2 boundσ(2)/2²=3/4; n6 bound12/36=1/3; n prime p gives(p+1)/p²→0. | Unbounded N needed; one n is insufficient. |
| 948: Bklpr selmer conjecture | Predicted rank0/rank1 masses1/2 each; rank≥2 mass0. Finite Sha classes exhaust predicted mass1, while infinite Sha is not silently a finite class. | Conjecture stays separate from moment statements. |
| 975: Bklpr conjecture implies rank and selmer laws | Pair law on r0,r1 gives total1; rank-tail bound1−1/2−1/2=0. Delaunay convolution gives PR first masses above. | No unjustified unbounded moment inference. |
| 993: Full two-torsion descent data | Roots−1,0,1: products2,−1,2, none rational squares. Roots0,1,4 give4,−3,12 and fail the no4-isogeny condition. | Separating control for actual curve condition. |
| 1009: Swinnerton–Dyer transition and stationary limit | i0 probabilities(1/2,1/2,0); i1(1/8,7/8,0); i2(1/32,19/32,3/8); each sum1. | No negative-index transition mass. |
| 1025: Kane prime-tuple character estimates and arithmetic moments | One prime tuple has no pair-character factors, empty product1; repeated prime pair violates distinctness and cannot be treated as an independent Legendre symbol. | Restriction retained; analytic estimate source-checked separately. |
| 1041: Parity-sensitive twist moment determinacy | Even-conditioned PR and odd-conditioned PR have the same displayed cardinality moments, but parity expectations+1 and−1; equal mixture has0. | Parity hypothesis excludes two wrong laws. |
| 1058: Two selmer distribution in full two torsion twist families | W:y²=x³−x, b=1 gives Sel2 size4 and reduced d0. b=−1 is the same squareclass twist here. b=0 excluded; signed denominator2N counts±1 atN1, positive denominatorN counts1. | Torsion shift2 and real local condition preserved. |
| 1077: Geometric-height Weierstrass family | Constant nonsingular curve has d0; scaling coefficients by u^i multiplies Δ by u^12 and leaves isomorphism class fixed. | Carrier check only; de Jong text unavailable. |
| 1093: De Jong weighted denominator | q5 predicted constant(1−5^−9)(1−5^−10)/(1−1/5)≈1.24999923>0; q1 would divide by0 and is excluded. | Limit uncertified without source. |
| 1109: De Jong constant-j estimates | d1 count scaleq9 versus total scaleq11; ratioq^−2. d0 would make C1d=0 and is excluded from rank bound. | Growth comparison only; source unavailable. |
| 1125: De Jong torsor/surface comparison | Identity Selmer class removed: Selmer size1 gives0 nonidentity torsors; size3 gives2 classes, not3. | Normalization control; source unavailable. |
| 1141: De Jong projective-cubic count and geometric sum | d0,a=b=0: cubic section dimension10, #P(V)=(q10−1)/(q−1). Zero polynomial excluded from projectivization. | Counting control; asymptotic unavailable. |
| 1158: Function field 3 selmer average bound | Identity contribution1 plus three expected nonidentity contributions gives4; characteristic3 excluded, characteristic2 not excluded by the stated range. | Source unavailable; no certification of bound. |
| 1177: P infinity selmer corank distribution in twist families | M=(Qp/Zp)⊕C_p² has corank1, while dim M[p]=3; finite C_p² has corank0. | Correct distinction of corank and finite dimension. |
| 1206: Smith twist family hypothesis | E:x³−x has rational2-torsion dimension2 and roots products(−1,2,2); x(x−1)(x−4) has square4 and fails case3. | Discriminating examples. |
| 1233: Congruent number curve satisfies smith hypothesis | E[2](Q) has O and three roots, cardinal4; root-difference products−1,2,2 are nonsquares. | Matches case3. |
| 1249: Smith selmer rank limit equals corank | M=(Qp/Zp)^2⊕C_(p³): largest free ranks at levels1,2,3,4 are3,3,3,2, stabilizing at corank2. | Finite torsion is eventually removed. |
| 1264: Two point corank law forces zero density of high corank | Prob(c≥2)=1−Prob(c0)−Prob(c1); limits1−1/2−1/2=0. | Exact partition. |
| 1280: Even congruent twists have corank zero given smith law | Squarefree residues1,2,3 mod8 have total density1/2; on even-parity family excluded positive corank begins at2, whose density is0. | Parity bridges to corank0, not rank conjecture. |
| 1299: Selmer ratio of an isogeny | Identity map has kernel/cokernel sizes1/1, ratio1. Complex degree3 isogeny has1/3; reversing kernel and cokernel gives wrong3. | Correct direction. |
| 1329: Local selmer ratio via tamagawa numbers | Good reduction, p≠3 gives1·1=1. Complex degree3 gives1/3. Formal multiplier3 over Q3 contributes\|3\|3^−1=3. | Inverse derivative correct. |
| 1344: Tamagawa ratio under potentially good reduction | Equal Tamagawa numbers give quotient1; at p≠3 the derivative is a unit and ratio1, while at3 derivative can contribute3. | Residue-characteristic qualification essential. |
| 1359: Selmer ratio classes are locally defined | A product of local ratios3,1/3,1 has exponent0; changing first factor to1 gives exponent−1. | Finite local data, not signless exponent. |
| 1376: BKLOS average size of three-isogeny Selmer groups | Constant global ratio1 gives irreducible mean1, total Selmer mean2; ratio3 gives total4. | Identity orbit retained; conditional on C. |
| 1391: Cassels isogeny selmer ratio formula | With Selmer sizes3 and1, kernel sizes3 and1, formula forces c=1; removing torsion factor would force3. | Correct torsion correction. |
| 1406: Isogeny factorisation selmer exact sequence | For φ1=id, first kernel quotient0 and Selψ=Selφ2; φ2=id gives Selψ=Selφ1. | Maps have proper source and target. |
| 1421: Three isogeny selmer parity | Sel3 dimension2 with rational3-torsion dimension1 gives reduced parity1; raw dimension parity0 differs. | Subtraction essential. |
| 1435: Finite set twist density zero | One exceptional class in growing slice of N classes contributes1/N→0; empty exceptional set contributes0. | Mathematically correct; import Part I instead (R03). |
| 1452: Finitely many twists with rational p torsion | p3 geometric nonzero torsion has8 points, bound8 classes; the trivial character can account for rational torsion, p2 sign twist is trivial and argument fails. | p odd essential. |
| 1471: Reduced p selmer rank bounds the corank | Sel_p dimension3, rational p-torsion dimension1 leaves bound2; corank2 attains it. Equal dimensions1−1 yield0. | Torsion subtraction correct. |
| 1486: Three selmer rank zero in selmer ratio one twists | Nonnegative even reduced rank with mean≤1 gives P(rank≥2)≤1/2 and P(rank0)≥1/2. | Correct lower-density bound. |
| 1501: Three selmer rank one in odd selmer ratio twists | Odd rank with mean≤4/3 gives P(rank≥3)≤(4/3−1)/2=1/6; rank1≥5/6. | Correct5/6, not2/3. |
| 1515: Positive proportions of three selmer ranks in local subfamilies | Strata masses1/2 and1/2 inside full family give rank0≥1/4 and rank1≥5/12. | Denominator weighting correct. |
| 1533: Cm curves have a twist with good reduction | O_K units order2,4,6 for generic,j1728,j0; a unit character of order3 cannot be killed by a quadratic character of order2. | Larger twist groups retained. |
| 1548: Cm three isogeny has selmer ratio one | F=K: finite3-part3 and complex factor1/3 give1; [F:K]=2 gives9·1/9=1. | General base-degree cancellation works. |
| 1563: Cm twists have corank zero at least half | K=Q(√−3), F=K(√2): finite factor9 and two complex factors1/9 give1, hence the same conditional half-bound. | General F is now retained; previous R03 repaired. |
| 1583: Lc quadratic | F2²,q=xy/2: polar matrix[[0,1/2],[1/2,0]] induces bijection of four-element groups. q=0 on same V has adjoint image size1, not4. | Stored topological equivalence excludes trivial model. |
| 1603: Weak metabolic | F2 hyperbolic axis: size2=orthogonal size2,q0. Diagonal has q(1,1)=1/2. Zero subgroup orthogonal has size4. | Correct three conditions. |
| 1626: Maximal isotropics | Finite hyperbolic plane has2; zero group has1; real hyperbolic x-axis equals its annihilator but is not compact-open. | Carrier is not just weakly metabolic subgroups. |
| 1648: Joint parity weight | Two marginals(1/2,1/2) give(1/2,0,0,1/2), total1; empty product mass1. Both δ0 marginals instead give total2. | Half-parity hypotheses essential. |
| 1672: Locally compact character and annihilator duality | C4 generator evaluation χ_k↦k/4; dual and bidual each have4 elements. Character on2C4 with value1/2 extends with value1/4 at1. | Evaluation is now imported from VNA; the extension target permits unbounded exponent. |
| 1689: Restricted product character duality | One factor C2 with reference0 gives dualC2, cardinal2; empty product has1 character. Infinite nontrivial restrictions on compact ∏C2 fail finite-support continuity. | Correct dual reference subgroup. |
| 1708: Lc finite reductions | Finite hyperbolic plane,X0: quotient size4 and2 isotropics; X=axis quotient size1 and1 isotropic. | Identity and maximal reduction consistent. |
| 1724: Lc canonical measure | Dyadic hyperbolic plane has masses1/2,1/2. q=(x²−y²)/4 on C2² has only diagonal isotropic: mass1; p q(e1)=1/2≠0 excludes it. | Value-group hypothesis necessary. |
| 1740: Lc random intersection | Finite n1 intersection dimensions0,1 each1/2, versus infinite model a0=0.20971122,a1=0.41942244. | Finite/infinite clauses necessary. |
| 1756: Lc restricted product | Two hyperbolic factors: q((1,1),(1,0))=1/2+0=1/2; a point supported wholly in references has q0. | Finite sum and zero references agree. |
| 1774: Finite-flat local topology and duality | L=F_p((t)), N=α_p: H1=L/L^p has nonzero class t; étale geometric α_p-points have cardinal1 and would lose it. | fppf required at characteristic p. |
| 1790: Integral flat reference and Kummer annihilators | α_p over F_p[[t]]: integral class t survives in L/L^p; class t^−1 is not integral. Reference is proper, not entire H1. | Integral/generic distinction retained. |
| 1806: Finite-flat global Poitou–Tate | N=0 gives every H1 term0 and annihilator0; α_p retains the nonzero t class over F_p(t), unlike geometric-point cohomology0. | Correct coefficient category; full duality not finite-example proof. |
| 1825: Sha one vanishing | Constant C2 and trivial module: locally trivial characters have kernel0 by splitting at all Frobenii; S3 acting on F2² has Sylow2 order2 cyclic. | Criterion includes nonabelian automorphism group. |
| 1839: Selmer quadratic intersection | Cup invariant1/3 has negative2/3; at2 −1/2=1/2. Identity isogeny gives zero Selmer, zero Sha1 and intersection0. | Sign detectable at3, not only2. |
| 1859: Global coefficient-model families | Over Q, height(1/2)=2; coefficients(0,0) have Δ0 and are excluded. In char2, short equation alone misses general models. | Height and nonsingularity controls. |
| 1879: Joint parity moments | Primes2,3: first moment(2+1)(3+1)=12=σ(6); second15·40=600. Empty product gives1. | Parity does not change these moments. |
| 1893: Squarefree selmer conjecture | n6 ranks(0,1) have mass0, ranks(0,0) mass2a_2(0)a_3(0)≈0.134006; n1 separately singleton mass1. | Conjecture normalized, including excluded n1 boundary. |
| 1917: Odd degree jacobian conjecture | g1 odd-degree model has degree3 and predicted mean3 atp2; even-degree,odd n3 predicts mean4; genus0 excluded. | Family conditions retained. |
| 1941: Even genus two selmer conjecture | g2,degree6: X=1+X_PR gives moments1,6,60,1080 versus unshifted1,3,15,135; g1 excluded. | Shift and even genus discriminate. |
| 1967: General Oesterlé measure | Spec Z2 mass1; A1 mass1, point ambient mass0. Spec Z2[T]/T²: integral reduction image size1; all mod2^e solutions size2^floor(e/2). | Reduction images crucial. |
| 1983: Alternating rank-stratum measure and pushforward | n2,r2 intrinsic point mass1 vs ambient mass0; n2,r0 dimension1; determinant integral p2,s1 is(1/2)/(7/8)=4/7. | Squared determinant exponent verified. |
| 2000: Smooth cylinder measure | P1/Z2 total3/2; level2 has6 points, each probability1/6. Two copies total3, components probability1/2. | Haar mass and normalized probability distinguished. |
| 2016: Ogr smooth projective | n0 point dimension0; n1 two points dimension0; n2,F2 count6 versus Gr count35; chart alternating2×2 has one free coordinate. | Includes characteristic2. |
| 2032: Ogr components | n1 axes intersect in dimension0≠1 mod2, hence opposite; equal axes intersect dimension1, hence same. n0 has one even point, no odd point. | Boundary fixed. |
| 2046: Ogr prime power count | p2,n2,e1…4 counts6,12,24,48; successive fibres2=p^(n(n−1)/2). n0 always1. | Equal. |
| 2063: Ogr schubert dimension | n2,r2 dimension0, point; n2,r0 dimension1; n1,r0 one point, not both OGr1 points. | Parity-selected resolution required. |
| 2083: All rank delaunay | p2,r0,G0 mass0.41942244; r1,G0 mass0.83884488. C2 alone has no symplectic structure and contributes0. | Intrinsic rank law, not ambient conditioning. |
| 2097: Positive rank all primes | r1,p2 nontrivial probability0.16115512 versus leading2^−3=0.125; exponent−3 gives convergent prime sum. | Correct summable order. |
| 2111: Rank zero all primes infinite | p2 nontrivial probability0.58057756≥1/2; at general p product≤1−1/p so nontrivial probability≥1/p. | Divergence excludes finite all-prime law. |
| 2125: Symplectic harmonic weights | N1,2,3,4 masses1,2/3,3/8,16/45; each between1/N and2/N. At L=N interval still has positive mass while log(N/L)=0. | +1 in bound necessary. |
| 2139: Sparse prime weighted limit | P empty,f1: both normalized averages1 and c_P sum1; f0 both0. P={2},f supported at0 yields predicted0.41942244. | Correct normalization; unbounded f needs L1. |
| 2155: Injection moment conjecture | q4: Inj(C4,C4)=2 but Inj(C4,C2²)=0 despite both orders4. m0 target1; m1 limiting target4. | Not a cardinality polynomial for e>1. |
| 2179: Bounded-exponent splitting | 2C4⊂C4: A/2A has2 elements but map to B/2B is zero, so hypothesis fails. C2⊂C2⊕C4 passes and has explicit projection. For ⊕_ℕ C4, every cyclic summand has order4 dividing4; n1 gives0. | Correct infinite statement, missing statable headline (R04). |
| 2196: Kummer direct summand | n1: A(k)/A(k)=0,H1(A[1])=0, complement0. In characteristicp, α_p torsion must use fppf to retain class t. | Algebraic splitting, not continuity assertion. |
| 2213: Adelic kummer direct summand | Finite two-place model (C2⊕C2)²: Kummer productC2² and complementary direct sumC2² have trivial intersection, orders4·4=16. | Correct product/direct-sum roles. |
| 2230: Global image splitting conjecture | n1 global image0 in0 splits; a thin trivial-torsion-action family alone has no computed density1. | Remains a conjecture. |
| 2254: Trivial action global splitting | n2, full rational E[2] gives μ2²; scalar Kummer point1 is trivial in each quotient, nonsquare2 is detected atQ2. | All-divisor injection mechanism distinguishes local failure. |
| 2276: Abelian three-isogeny average | Degree3 complex local kernel3,cokernel1 gives1/3 regardless of dimension. Global ratio1 gives mean2, not1. | C uses actual abelian Kummer images. |
| 2290: Endomorphism rank bound | Z² with ψ=diag(1,3): quotient order3, rank2, log3 index1; bound requires c≤1/2. ψ=[3] gives index9, log3=rank2. | Uniform comparison is explicit, not inferred from degree. |
| 2304: Multiplication three rank bound | Z²⊕C3 modulo3 has order27≥9=3²; torsion increases quotient, never reduces bound. | c=1 valid. |
| 2319: Finite extension rank bound | A[3] over splitting field has order3^(2g), a full flag has2g degree3 factors; g1 gives2 factors and total degree9. | Height remains over the new field. |
| 2333: Elliptic explicit twist rank | m0,1,2 give\|m\|+3^−\|m\|=1,4/3,19/9; m=−1 also4/3. | Absolute exponent required. |
| 2347: Attainable local three-isogeny ratios | p≠3 requested value1; overQ3 interval[1,3] permits1,3; over degree2 extension interval[1,9]. | Does not assert every twist attains1. |
| 2363: Universal-twist local table | k1:t=26244,t+27=26271. Atx0 RHS16·26271=420336; (4√26271)²=420336, whereas(2√26271)²=105084. | Corrected kernel coordinate; k≥1 retained. |
| 2381: Signature positive twists | Totally real r2=0 permits m0; imaginary quadratic r2=1 permits local exponent offsets giving rank0 or1; degree4 totally imaginary falls outside those conclusions. | Signature conditions substantive. |
| 2398: Complex place obstruction | r2=0 bound0; r2=2 bound2. Exceptional torsion correction−2 is offset by two extra powers: (r2+2)−2=r2. | Uniform twist claim retains exceptional case. |
| 2430: CM reciprocity | Principal idele2 sends lattice a to(1/2)a; t↦t/2 followed by ξ′(z)=ξ(2z) returns ξ(t); Artin is identity. | Convention agrees; import the existing CM foundation (R02). |
| 2447: CM Hecke character | Principal idele2 over F=K: finite scalar2 times infinite factor1/2 givesψ=1; omitting infinity gives2. | Normalization and principal triviality agree. |
| 2463: CM local unit character | Trivial inertia character gives inverse twist1; characterζ3 has inverseζ3², product1, while a quadratic sign cannot cancelζ3. | All roots-of-unity units retained. |
| 2475: Cm ideal isogeny comparison | O=Z[√−5], a=(2,1+√−5): norm2 but no solution x²+5y²=2, so no scalar generator. Ideal(2)=ideal(−2) has degree4 but multipliers2 and−2. | Ill-defined ideal multiplier; separate element endomorphisms (R01). |
| 23: Quartic conventions | x4−y4: I=−12,J0,27Δ=−6912=4I³, Δ=−256. E(A,B)=(−1,0): H_E4,H_IJ27,27H_E=4H_IJ=108. | Sign and height factor verified. |
| 2418: Supporting quadratic comparisons | F2 split plane has two isotropics and masses1/2; quarter-valued dyadic plane has one and mass1. For q4,n1,m1 injection average1, limit4. | Synopsis agrees with the distinct finite, limiting and value-group clauses. |
| 2428: Supporting CM comparisons | Over F/K of degree2, local differential contribution9 times two complex contributions1/9 equals1; ψ=diag(1,3) on its eigenvalue1 module has index1, positive rank1. | Rank-index assumption remains necessary; R01–R02 apply to the CM foundation. |
| 19: Exclusions and total-function boundaries | A field has 0≠1, so the zero ring is outside finite-field signatures; q1 is not a prime power>1. At n0 the OGr carrier has1 element and mass1. S3 has commutator of (12),(23) a nonidentity3-cycle, so cannot instantiate AddCommGroup. | These hypotheses exclude the wrong carriers; no 0/0 used as a probability. |
| 473/855: Independent residue-field and prime-power checks | F3 dimension4 has8 maximal isotropics, intersection-cardinality histogram{1:3,3:4,9:1}; polynomial3+4z+z²=(z+1)(z+3). Over Z/4 rank4 there are12 summands and288 injections into pairwise intersections over144 pairs, mean2. | Independently enumerated; field3 and residue characteristic2 are not conflated. |

The seeded source sample comprised **all 15 requested subsections**. No additional locator was labelled unverified in the README. Source IDs below identify the works in References; line numbers are the sources service's numbered extractions. Published LOWW was checked as well as its preprint; Swinnerton–Dyer and EVW were read from their publishers' open PDFs. PR and BKLPR page numbers below are those of the cited preprints, not silently substituted journal pagination. The original Cohen–Martinet, de Jong and classical duality texts have the access limitations listed below.

| Sample | Text opened, locator and hypothesis comparison |
|---|---|
| §5.2 Cohen–Martinet/wreath comparisons | WangWood lines 284–325, Conjecture 3.4, Remark 3.5, Theorem 4.1, pp. 7–8: semisimple prime-to-group-order coefficients and infinite-place fixed modules retained. LOWW lines 2154–2162, Theorem 6.11, p. 37; lines 2202–2305, Proposition 7.1 and §7.2, pp. 38–40: relative torsion, weighted quartic comparison and Gaussian multiplicities checked. Original CM90 not certified. |
| §5.3 Joint Frobenius cokernels | LT lines 1493–1549, Definition 5.16, Example 5.17, Conjecture 5.18, pp. 35–36. Shared matrix, p=2 identity, odd-prime lower bound and explicit limit-existence condition agree. The distribution is still conjectural. |
| §5.4 Finite quadratic intersections | PR lines 240–342, Proposition 2.6 and Remark 2.7, pp. 5–7. Quadratic rather than just polar isotropy, split space, n=0 exception, fibre exponent and full generating polynomial checked. The README corrects the fibre-proof slip below. |
| §5.6 Alternating matrices | BKLPR lines 330–402, Lemma 3.6 and Theorem 3.9, pp. 8–9; lines 485–516, Theorem 3.11. Alternating includes zero diagonal at 2; fixed-rank intrinsic measure is not ambient conditioning on a null set. Parity and pairing automorphisms are retained. |
| §5.7 p-adic intersections | BKLPR lines 708–828, Propositions 5.1 and 5.4–5.6, pp. 15–17; lines 989–1025, Theorem 5.10, p. 20. Integral direct summands, reduction fibres, connected components and prime-power injections checked, including the source corrections below. |
| §5.9 Twist laws/corank | Kane lines 1–105, Theorem 3 and Corollaries 4–5, pp. 1–3; lines 219–265, Propositions 9–10, pp. 5–6; lines 1391–1435, Lemma 19, pp. 24–25. Full rational two-torsion, absence of rational cyclic four-isogeny, three marked nonsquare products, actual positive/signed slices and normalization agree. SwinnertonDyer lines 58–62, Theorem 1, p. 514, and lines 548–627, (20)–(21), pp. 524–526, verify the transition input. SmithI lines 93–117, Assumption 1.1 and Theorem 1.2, p. 3, distinguish the higher-Selmer distribution from an unconditional rank identification. de Jong's separate bound is not certified. |
| §5.10 Three-isogeny ratios | BKLOS lines 103–105, Theorem 2.1, p. 3; lines 625–710, (9.2), Proposition 10.1–10.2, pp. 13–15; lines 821–830, Lemma 11.1, p. 18. The local/global orientation, torsion correction, relative averaging set and conditional mean hypothesis agree. |
| §5.11 CM twists | BKLOS lines 832–880, Theorem 11.2 and proof of Theorem 2.7, pp. 18–19: arithmetic endomorphisms, maximal order and good-reduction twist retained over general F. Rubin line 384, Proposition 3.14, p. 11; lines 548–566, Propositions 5.3–5.4, pp. 15–16; lines 690–742, Theorem 5.15, pp. 19–20; lines 789–822, Corollary 5.22, pp. 21–22. These expose R01 and support the corrected element/ideal distinction. |
| §5.23 Locally compact quadratic spaces | PR lines 398–451, Definitions 2.13–2.16 and Examples 2.17–2.18, pp. 8–9. Continuous quadratic refinement and perfect topological pairing are separate conditions. General biduality is imported; vanKampen's original text is not certified. |
| §5.24 Locally compact maximal isotropics | Same PR definitions/examples: closed, compact-open and discrete maximal isotropics have distinct uses. The F2 diagonal is excluded by Q, although its polar orthogonal agrees with itself. |
| §5.25 Common parity | PR lines 147–173, Conjecture 1.4, pp. 3–4. The README treats n=1 separately, gives factor 2^(k−1) only for k≥1, and does not call conjectural independence a theorem. |
| §5.26 Quadratic probability | PR lines 464–551, Theorem 2.19, pp. 10–12. The added pQ=0 condition, finite versus infinite dimension, compact-open model and pushforward law were checked. |
| §5.27 Global isotropic intersection | PR lines 612–640, Proposition 3.3, p. 13; lines 776–780, Corollary 4.6, p. 17; lines 850–949, Proposition 4.12 and Theorem 4.13, pp. 18–20. Negative cup-product sign, compact local conditions and fppf inseparable case agree. Milne lines 9962–10000, III.6.10, pp. 277–278, and GA lines 672–692, Proposition 4.11, p. 17, plus lines 750–759, Theorem 4.12, p. 19, support the finite-flat prime-primary route. The prime-to-characteristic contribution is a separate supplier. |
| §5.31 Injection/Kummer summands | BKLPR lines 1388–1435, Proposition 6.7, Corollary 6.8, Conjecture 6.9, Lemmas 6.10–6.11, pp. 27–28. Injection counts depend on invariant factors; conjectural local-summand probability stays conjectural. Purity and the bounded-exponent structure theorem support the actual Kummer splitting. R04 concerns its Lean omission. |
| §5.32 Abelian three-isogeny applications | BKLOS lines 103–174, Theorems 2.1–2.6, pp. 3–4; lines 626–640, rank-index argument; lines 1009–1062, Example 13.3 and Proposition 13.4, pp. 22–23. The roadmap correctly adds the rank-index hypothesis and corrects the point, parameter and ratio normalizations. |

The duplication audit searched by objects, using the roadmap index and current `show` results, main, board packages, the supplied open checkouts and both pinned libraries: CM ideal actions and reciprocity, character extension/biduality, bounded-exponent splitting, finite-exception densities, finite quadratic reduction, orthogonal Grassmannians, alternating cokernels, Selmer/Kummer conditions and moment determinacy. Current files were opened rather than trusting the search index's older line numbers. R02–R03 are the overlaps found. General orthogonal Grassmannian intersection theory in other work is not the split integral point-count/reduction law here; the existing bounded-exponent arithmetic duality is not the unrestricted locally compact character-extension theorem here. The finite pin does not own infinite bounded-exponent decomposition. No competing declaration with one of this file's 19 fully qualified names was found.

**Pinned declarations actually inspected:**

| Repository-relative file and line | Declaration / scope established at the pin |
|---|---|
| `TauCeti/LinearAlgebra/FiniteBilinearModule/Quadratic.lean:152` | Nondegeneracy of the associated pairing. Quadratic isotropy at 511 and `IsLagrangian` at 602 include Q-vanishing, not merely polar orthogonality. |
| Same file, 839, 861, 905, 916, 927, 956, 991 | `orthogonalQuotient`, quotient map, quadratic/pairing formulas, surjectivity, equality criterion and nondegeneracy already exist; the roadmap imports them and builds the probability/counting layer. |
| `TauCeti/Probability/Moments/Determinacy.lean:153`, 243 | `Measure.ext_of_mgf` and `ext_of_forall_integral_pow_eq_of_exists_integrable_exp` carry finiteness/integrability conditions. They do not give the q-exponential-support parity determinacy theorem directly. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104`, 128, 142 | `selmerGroup₂`, `card_range_μ`, `rank_le_card_selmerGroup₂`: native cubic-algebra norm and actual finite-place/auxiliary local conditions; rank statements require finite generation. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/QuadraticTwist/Basic.lean:169` | `quadraticTwistOf` has an explicit coefficient body; the integer specialization agrees with the README's b-squareclass (factor 4). |
| `TauCeti/Analysis/Fourier/Pontryagin/DualEval.lean:29` | `continuous_coe_eval_const` is continuity of evaluation, not an identification with the whole double dual. |
| `Mathlib/GroupTheory/FiniteAbelian/Basic.lean:118`, 134, 177 | Finite generation and finite abelian direct-sum/product decomposition. The decomposition's `[Finite G]` excludes the countably infinite C4 direct sum in R04. |
| `Mathlib/LinearAlgebra/BilinearForm/Orthogonal.lean:276` | Orthogonal-complement dimension formula includes the radical intersection and finite-dimensional/reflexive hypotheses. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Card.lean:120` | Finite-field GL cardinality; n=0 product 1 and GL₂(F₂) cardinality 6 agree. |
| `Mathlib/MeasureTheory/Constructions/Projective.lean:150` | `IsProjectiveLimit.unique` with its finite-measure condition; not existence of an arbitrary asserted probability law. |
| `Mathlib/MeasureTheory/OuterMeasure/BorelCantelli.lean:62`; `Mathlib/Probability/BorelCantelli.lean:69` | Summable-mass first direction and measurable independent divergent second direction, respectively; they justify different all-prime conclusions. |

All named supplier contracts and the **24 distinct linked section fragments** were resolved. The receipts below give the section actually read and a file line (all paths begin `TauCetiRoadmap/`, except where `Completed/` is explicit). Existing roadmaps were checked on main; new roadmaps were checked at the available open head. Broad multi-section contracts were checked for the supplied object, not treated as proofs of the consumer's extra arithmetic comparison.

| Supplier README | Sections/targets resolved and consumed |
|---|---|
| ArithmeticStatisticsPartI, lines 173, 279, 1829, 2514 | §0.1 arithmetic families/finite density; §2.7 and supporting squareclass counting/denominator material. R03 identifies the duplicate. |
| ArithmeticStatisticsPartIII, line 1989 | §2.22 primary height/counting statement and supporting finite-height/windowed versions. |
| ArithmeticStatisticsPartIV, lines 129, 180, 224, 316, 519, 532, 999, 1013 | Gaussian coefficients, finite-group carriers, surjections, CL mass, forward moment implication, converse counterexample, cokernels and translation. |
| ArithmeticStatisticsPartV, lines 366, 848, 1090, 1368, 1507 | Davenport–Heilbronn, cubic two-torsion, Malle, relative and two-extension averages. |
| ArithmeticStatisticsPartVI, lines 859, 987, 1041 | Mean two-Selmer, moments and torsion exceptions. |
| SelmerIwasawaCohomology, lines 591, 621, 649, 675, 2508 | Pontryagin dual/corank, p-infinity Selmer, §2.12a Kummer and §4.29 Cassels–Tate. |
| ArithmeticGaloisDuality, lines 3118, 3337, 3436, 6018, 6600 | Local negative cup pairing, bounded-exponent closed-extension/strict exactness, Poitou–Tate, D7.6 local support and Greenberg conditions. |
| HeightsRationalPointsAndObstructions, lines 545, 557, 614 | §§1.1–1.2 flat Kummer/unramified local conditions and finite generation. |
| AbelianSchemesAndArithmeticModuli, lines 1081–1628, 2510, 2814, 3755 | A2.2–A2.5, A3.1–A3.7: abelian/isogeny and theta/polarization inputs; A5.1 complex comparison; A6.1 and A6.34 arithmetic applications. |
| ModularCurvesPartII, lines 421, 445, 466 | §§1.2–1.4 lattice uniformization, finite-kernel isogeny and invariant differential normalization. |
| AlgebraicModuliForArithmeticGeometry, lines 305, 504, 601 | §§1.1–1.3 geometric carriers used in the OGr construction; no finite orthogonal counting law supplied. |
| SchemeAndStackFoundations, line 4905 | Picard machinery; the consumer still specifies its theta/quadratic construction. |
| `Completed/RestrictedProducts`, line 179 | Restricted-product topological export with compact-open local subgroups. |
| VonNeumannAlgebras, line 3159 | V11.DoubleDualEmbedding and subsequent V11 Fourier/biduality conclusion, not only evaluation continuity. |
| EllipticCurves, lines 423, 793, 851, 1154, 1210, 1262, 1374 | Layers 1, 4–8: isogenies/differentials, local reduction/Néron–Ogg–Shafarevich, pointed twists, rank, Selmer/Sha and rational minimal-height adapters. |
| ClassFieldTheory, lines 1220, 1312, 1683, 1872 | Layers 6–7 local reciprocity and later global/Hilbert-class-field targets. |
| `Completed/Chebotarev`, line 410 | Layer 10 Chebotarev input. |
| `Completed/GlobalNumberFields`, lines 508, 531, 571 | Layers 9–11 Hecke characters, archimedean data and orders. |
| NumberFieldArithmetic, lines 487, 1086 | Layers 1 and 4 arithmetic floor and approximation contracts. |
| AdelicAlgebraicGroups, line 1885 | §2.4 gauge measures, used with the consumer's actual integral reduction image. |
| ReductiveGroupsPartII, line 5201 | RG2.3.7 Lang theorem. |
| StableReduction, lines 343, 405, 529 | Layers 0, 2 and 4 stable-reduction/surface inputs. |
| AlgebraicVectorBundles, lines 215, 228, 254 | L0A–L0C bundle and curve background. |
| AnalyticNumberTheoryPartI, line 1782; PartII, line 1350 | Layer 3 character bounds and §5.29 quadratic large sieve. |
| ImaginaryQuadraticClassNumber, lines 83, 87, 89 | H3.1 additional existing owner found by the audit; R02 gives the required import. |

## Not verifiable

- **DeJong**, the function-field three-Selmer bound in §5.9: the cited author's Columbia `surfaces2.dvi` was reached through the sources service, which could not extract it as a recognized document. The numerical boundary checks in the table do not certify the asymptotic theorem or its locator.
- **CM90**, original Cohen–Martinet paper: the DOI resolved to the De Gruyter landing page, with no legal readable text returned. The relevant predictions were checked in WangWood and the published LOWW treatment, but this does not certify CM90's original numbering.
- **vanKampen**, original locally compact duality reference: the DOI resolved to JSTOR without an accessible legal text. The roadmap's PR quadratic definitions and named V11 supplier were read; the original paper's page/statement was not certified.
- **Silverman**, *The Arithmetic of Elliptic Curves*, cited textbook background: the service found no legal text for the requested edition. The specific Rubin/BKLOS comparisons and native elliptic APIs were checked independently.
- **Cassels1965**, original pairing reference: the DOI resolved to a De Gruyter landing page without a readable legal copy. The SelmerIwasawaCohomology contract and the BKLPR/BKLOS uses were checked, not the original proof.
- **Oesterlé** and **Schaefer1996** remain **uncertified**: the service identified paywalled citations. No access was bypassed and these are not renewed requests. Related open sources do not certify every locator in these originals.

Legal publisher copies of EVW, SwinnertonDyer, SchaeferStoll and LOWW were obtained after their initial landing-page fetches failed; they are not outstanding missing texts. No source file was copied into the PR or report. Ownership searches covered the supplied open checkouts and the roadmap index; no unavailable, unspecified open checkout was treated as inspected. These access limitations do not delay the verdict: the four blocking findings have independent, reproducible witnesses.

## Source issues

These are issues encountered in the sources, not additional findings against passages that already correct them. Source-line references identify the extracted text; page references identify the printed page or the explicitly cited preprint pagination.

- **Error** in EVW at introduction, p. 730 (EVW line 41): the source says the probability of class number indivisible by three is approximately 0.440; it should be approximately 0.560, with 0.440 its complement; affects a stated result.
- **Gap** in EVW at §8.5, p. 774 (EVW line 1837): the source says distribution convergence and the surjection-moment formulation are equivalent; it should be distribution-to-moment convergence requires uniform-integrability control; affects the proof.
- **Error** in PR at Proposition 2.6(a), p. 6 (PR line 306): the source says the fibre uses every hyperplane together with W; it should be only hyperplanes not containing the distinguished vector, together with W; affects the proof.
- **Misprint** in PR at Corollary 2.12, p. 8 (PR line 397): the source says the discrete quotient is finite; it should be countable, with the later infinite-dimensional cases retained; affects the proof.
- **Error** in PR at Theorem 2.19(d–f), p. 10 (PR line 464): the source says pV=0 suffices for the stated quadratic probability law; it should be pQ=0 is also required, excluding quarter-valued dyadic refinements; affects a stated result.
- **Error** in PR at Conjecture 1.4(a), p. 3 (PR line 147): the source says the displayed common-parity product applies also at modulus one; it should be modulus one has the singleton law, or the displayed claim assumes modulus greater than one; affects a stated result.
- **Misprint** in PR at Remark 2.21, p. 12 (PR line 555): the source says a fixed nonzero vector belongs to a random maximal isotropic with probability 1/(p^n+1); it should be 1/(p^(n−1)+1) for an isotropic vector, and zero for an anisotropic vector; affects a stated result.
- **Error** in BKLPR at Proposition 2.1(b), p. 5 (BKLPR line 220): the source says normalized counts use every point modulo p^e of the integral scheme; it should be use the reduction image of integral points, or impose hypotheses making all modular points lift; affects a stated result.
- **Misprint** in BKLPR at Lemma 3.6, p. 8 (BKLPR line 352): the source says the displayed alternating block has first entry 1 in its second column; it should be −1 when the first column starts (0,1); affects the proof.
- **Misprint** in BKLPR at Proposition 5.4, p. 16 (BKLPR line 743): the source says W/qZ; it should be W/qW; affects a stated result.
- **Error** in BKLPR at §5.5, p. 20 (BKLPR line 992): the source says the injection count is the displayed polynomial in target cardinality for prime-power coefficients; it should be that polynomial is the field case, while higher powers require invariant-factor data; affects a stated result.
- **Misprint** in BKLPR at Theorem 5.10 proof, p. 20 (BKLPR line 1003): the source says the residue-rank factors use q; it should be use residue prime p when q is a higher prime power; affects the proof.
- **Misprint** in BKLPR at Theorem 5.10 proof, p. 20 (BKLPR line 1016): the source says the finite product multiplies the preceding ratio; it should be its reciprocal multiplies that ratio; affects the proof.
- **Error** in BKLPR at Corollary 5.18, p. 23 (BKLPR line 1166): the source says the displayed estimate is O(log(n/ℓ)) throughout the stated range; it should be O(1+log(n/ℓ)), or exclude the diagonal endpoint; affects a stated result.
- **Gap** in BKLPR at Theorem 5.16 proof, p. 23 (BKLPR line 1186): the source says a lower bound for the logarithmic denominator gives the asserted upper estimate; it should be use the upper denominator bound, giving 2ε log n+O(log M), still sufficient after ε tends to zero; affects the proof.
- **Gap** in BKLOS at proof of Theorem 2.2, p. 13 (BKLOS line 629): the source says the degree/exponent ratio gives the asserted index growth for every ℤ[ψ]-module; it should be assume or prove uniform rank-index growth on the actual Mordell–Weil modules; affects the proof.
- **Misprint** in BKLOS at Example 13.3, p. 22 (BKLOS line 1012): the source says the marked point has y-coordinate 2√(t+27); it should be 4√(t+27), whose square is 16(t+27); affects a stated result.
- **Error** in BKLOS at Example 13.3 and Proposition 13.4, pp. 22–23 (BKLOS lines 1010, 1053): the source says the parameter construction works also for k=0; it should be require k≥1, since the k=0 radicand is 2 modulo 8; affects a stated result.
- **Error** in BKLOS at Proposition 13.4, p. 23 (BKLOS line 1057): the source says multiply the archimedean/differential baseline by full local Selmer ratios; it should be multiply that baseline by the remaining Tamagawa factors, avoiding duplicate differential factors; affects the proof.
- **Misprint** in Rubin at Proposition 5.3, p. 15 (Rubin line 549): the source says the maximal-order conclusion concerns End(E); it should be End(E′), the quotient curve just constructed; affects a stated result.
- **Error** in LOWW at Proposition 7.1 proof, p. 38 (LOWW line 2221): the source says a signed permutation carries any nonzero vector to the first coordinate vector; it should be first project a nonzero coordinate using a linear combination of sign actions, then permute; affects the proof.
- **Error** in LOWW at §7.2, p. 39 (LOWW line 2274): the source says repeated irreducible factors contribute unweighted sums of powers; it should be weight the j-dimensional terms by the Gaussian binomial coefficient for the multiplicity space; affects a stated result.
- **Error** in LT at Lemma 5.19, p. 36 (LT line 1554): the source says the two elliptic point groups cannot both be p-groups without excluding p=2; it should be restrict to odd p or handle p=2 separately: y²+xy=x³+1 has orders 4 and 8; affects a stated result.
- **Error** in SwinnertonDyer following Theorem 1, p. 514 (SwinnertonDyer line 61): the source says the three nonsquare products are equivalent to absence of rational points of order four; it should be absence of a rational cyclic subgroup of order four; affects a stated result.
