# Review of HomotopySpheres (pull request #1287 at b2108d6)

**Verdict:** needs changes

Independent AI review of the whole folder at the requested head. Four findings remain: three blocking and one locator finding. The supplied gate passes. The pull-request files were not changed.

The eight findings of the preceding review were checked first. No repair report supplied with this job marks one of them “not actionable in this package”.

| Previous finding | Passage at this head and disposition |
| --- | --- |
| R01, collared-bordism contract | README:305 says “What GeometricTopology must provide (gap:collared-oriented-bordism)”. **Partly repaired:** the contract no longer asserts existence between arbitrary endpoints, but there is still no matching plan entry. R01 below. |
| R02, Whitney loop/complement | README:453 requires “specified embedded arcs”; README:466 requires “π₁(V∖Q)→π₁(V) to be injective”. **Repaired:** the disconnected counterexample is excluded, and the five-dimensional argument now has its needed complement condition. |
| R03, duplicate Freudenthal/BSO/third stem | README:683 says “Transport RiemannianGeometry R3 item 4”; README:1109 uses “T1.6c's simple connectivity”; README:2300 says “Import π₃⁽S⁾≅ℤ/24{ν}”. **Repaired:** the retained work is model and generator comparison. |
| R04, Bott base entries | README:1290–1297 lists the additional degree-two/three/four/seven/eight results; Suggested.lean:97–135 states them. **Repaired:** the seven base entries together with periodicity and the supplied degree-one result determine the positive-degree table. |
| R05, unspecified formulas/ranges | README:879–886 gives the EHP sequence and endpoint; README:1243–1250 gives six Bott bounds. **Partly repaired:** “Prove the Barratt--Toda formula” remains at README:925, without an identity or locator. R02 below. |
| R06, native pointed constructions | README:267–268 places the pointed constructions in §3A.2; README:294–298 identifies the unreduced mapping cylinder. **Repaired:** the native cylinder is no longer described as a pointed cone. |
| R07, source locators/headline labels | README:481 and 486 now cite Milnor 9.1, p.107; README:2244–2247 cites Browder 1.4/3.2; Suggested.lean:31–35 names James/EHP and Hopf exclusion. **Partly repaired:** the low-stem proof still has only chapter-wide Toda references. R04 below. |
| R08, Toda-bracket Checks | README:1025 includes “⟨id,0,0⟩” with indeterminacy ℤ/2 and both values. **Repaired:** the singleton-valued wrong model fails this Check. Additional per-definition Checks were added throughout. |

## R01 (P1) — Resolve the unregistered collared-bordism contract

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:305`: “What GeometricTopology must provide (gap:collared-oriented-bordism)”. Used at lines 409, 518 and 1565.

**Claim:** the extra endpoint/collar interface is a declared supplier contract.

**Witness:** `TauCetiRoadmap/GeometricTopology/README.md:592`–594 on main specifies general oriented cobordisms and gluing. No readable `packages/HomotopySpheres/design/plan.json` exists, so the README slug has no matching declaration.

**Repair:** first reuse the earlier TangentialBordism B1.1/B1.2 oriented witness interface, which already specifies structured boundary diffeomorphisms, collars, cylinders, reversal, disjoint union and gluing (`TauCetiRoadmap/TangentialBordism/README.md:444`–475). Spell out the forgetful specialization to the h-cobordism carrier. If a genuinely additional endpoint equation is needed, register only that missing contract with a named supplier and the same slug in the plan and README. Do not request a second generic bordism construction or existence between arbitrary endpoints.

**Repair test:** the empty cylinder has zero boundary components; the cylinder on connected M⊔N has two incoming and two outgoing components, with signs −,−,+,+. Boundary diffeomorphisms from −(M⊔N)⊔(M⊔N), restricted to their summands, supply the disjointness and boundary-cover equations. A bare unregistered slug supplies none. This is the surviving registration issue from previous R01, not an objection to correctly declared gaps.

## R02 (P2) — State the Barratt–Toda identity used by the calculation

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:925`–926: “Prove the Barratt--Toda formula relating Whitehead products to `P`, `E`, and `H`.”

**Claim:** §3C.4 provides a definite theorem from which §9.2 computes the low-stem maps.

**Witness:** §3C.4 contains no formula, input maps, dimension range or individual source locator; §9.2, lines 2310–2312, explicitly consumes those formulas to compute every E,H,P map.

**Repair:** replace this sentence with the actual identity or identities needed in §9.2: typed maps, dimension/connectivity assumptions, signs, nullhomotopies and any Toda indeterminacy, with theorem/page locators. Attach each identity's own Needs line. Name the concrete substitutions used in stems four and five. The now-explicit EHP range and Bott table should be retained.

**Repair test:** for the already-fixed n=2 EHP normalization, P(1)=2η₂ and E(2η₂)=0, while P=0 would give image 0 instead of ker(E)=2ℤ. This fixes one calibration but does not specify any higher Barratt–Toda identity. The repaired formula must reproduce that calibration when applicable and give the stated higher substitutions; there is presently no pair of sides to evaluate.

## R03 (P2) — Include the missing fourth- and fifth-stem headlines

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:2310`–2312: “prove `pi_4^S=0` and `pi_5^S=0`”; `TauCetiRoadmap/HomotopySpheres/Suggested.lean:137` starts the sphere-stem signatures at stem six.

**Claim:** the acceptance file covers the independently owned low-stem computation promised in Layer 9.

**Witness:** both native signatures `Subsingleton (HomotopyGroup.Pi (n + 4) (Sphere n) x)`, n≥6, and its fifth-stem counterpart, n≥7, elaborate at the pins without added carriers or options.

**Repair:** add those two general stable-range theorems with `sorry`, their README names, and source docstrings. No stable-colimit stand-in is needed. Keep the supplied third-stem theorem with StringOrientation rather than duplicating it.

**Repair test:** n=6 gives π₁₀(S⁶)=0 and 10=2·6−2; n=7 gives π₁₂(S⁷)=0 and 12=2·7−2. Both signatures were elaborated in a scratch probe. Kervaire–Milnor's printed p.512 table has zero in both stable columns (`kervairemilnor1963` lines 320–327, also inspected as a page image). These are whole stable-range results, not isolated small-value examples.

## R04 (P3) — Finish the individual proof locators

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:2378`–2383: “Toda, Chapters I--V, is normative for the unstable representative, its composition order, and its stabilization in Steps 1--4.”

**Claim:** these references locate the sampled low-stem proof and generator comparisons.

**Witness:** §§9.1–9.4 have no theorem/page correspondence for fourth/fifth-stem vanishing or nonvanishing of the chosen ν² representative. “Chapters I–V” does not identify the claimed calculation; Suggested.lean instead cites Chapter XIV's table.

**Repair:** give individual locators for the group computations and the composition/generator comparison, distinguishing a table entry from a proof. Use Hatcher Corollary 4J.4, p.474, and §4.J, pp.474–475, for the first two offsets; retain StringOrientation S2.3 for the third. Give an exact readable or explicitly uncertified Toda locator for ν² and the fourth/fifth calculations rather than inventing one. At §1.1 add Milnor Definition 9.2, p.107, or Kervaire–Milnor §1, p.504; at §1.2 distinguish the later cancellation/slide inputs from 3.13–3.15 and 4.8.

**Repair test:** Hatcher's first-stem theorem yields ℤ/2 for n≥3; its next discussion yields πₙ₊₂(Sⁿ)=ℤ/2 for n≥2. Milnor 3.14/3.15 yields one ℤ in the handle index, not the entire handle-slide/cancellation package. The p.512 stable table gives 0,0,ℤ/2 in stems four,five,six, but does not by itself identify ν₄∘Σ³ν₄ as the nonzero generator.

## Verified sound

“Pass” below means the displayed instance or source comparison agrees, not that a `sorry` build proves the general theorem. Every numbered target and every passage of the README and Lean file was read, including the unchanged parts. The 15 seeded targets were checked against the available texts or explicitly classified below as new adapters or not source-verifiable.

**Mechanical checks.** The head is `b2108d6e1f30eb00163a4c912c18d79e6a737090`. The worktree is clean; the PR diff outside this folder is empty. The supplied gate reports all counters zero, including build, imports, sorry-data, set_option, stray-files, outside-folder and dependency checks. Fresh dependency-check output:

```text
depcheck: 204 roadmaps, 1478 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. This does not validate unregistered gaps or every internal target edge. The early 3A substrate → early classifiers → Bott → TopologicalKTheory T7 → 9A order is compatible with the detailed contracts. The 4C framing comparison uses 5.1, while 5.1 uses the earlier sphere-action definition of J, not that comparison. No merger-order file was changed.

Fresh elaboration of the original acceptance file succeeds with 13 `sorry` warnings. A scratch copy with `#check @name` for all 16 declarations succeeds. The three definitions and 13 theorem types agree with their stated hypotheses; zero dropped binders were found. In particular the two atlas hypotheses, compactness, Hausdorffness, second countability, smoothness, all finite-rank bounds and n>0 remain present.

A scratch copy tried `simp`, `rfl` and `infer_instance` separately as closing tactics at each admission: all 13 still require `sorry`. Object searches at both pins found no single existing lemma with these headline conclusions. No padding finding is made. The two additional native stem signatures in R03 also elaborate under defaults.

**Headline inventory.** Smooth simply connected h-cobordism; Θₙ and its diffeomorphism comparison; James equivalence and EHP; Hopf-invariant exclusion and sphere parallelizability; real Bott loop periodicity and the full O/SO table; J and the smooth finite/stable PT comparisons; almost-framed/filling/Wall groups and exactness; the cokernel-J/Kervaire comparison; the compatible low-stem table and Θ₆=0; seventh stem, Θ₇=ℤ/28, Eells–Kuiper and all-dimensional E₈ nonstandardness; oriented and unoriented six-sphere recognition. The docstring now names the heavy missing carriers for the geometric, colimit, James/EHP and Hopf-invariant statements. Its 13 native theorems cover the sphere-framing theorem, eight Bott statements, sixth/seventh stems and two recognition statements. R03 identifies two further native statements that should be present.

**Adversarial values.** Each row records actual values or explicit source/target computations. Nonexamples test excluded hypotheses; they are not claims that the general result fails. “Specify” identifies an interface that cannot yet be evaluated as a theorem.

| Statement | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| Manifold orientation convention | Oriented interval; reflection | Endpoint signs (−1,+1); derivative sign −1 | Pass; boundary signs retained |
| Small-code realization | Zero charts; duplicate identity charts | Empty quotient has 0 points; two copies of each x become 1 | Pass |
| Proper chart domains | One chart (−1,1) versus ℝ | Chart images (−1,1) and ℝ, respectively; not equal | Pass |
| Compact-generation convention | Point, empty space, ℝ | k(*)=*; k(∅)=∅; k(ℝ)=ℝ | Pass on these cases; general limits use k |
| Stable versus honest frame | S² | TS²⊕ℝ has rank 3 and is trivial; Euler(TS²)=2 | Pass; cannot drop the added line |
| Normal splitting | S²⊂ℝ³ | Tangent rank 2 + normal rank 1 = 3; outward normal x≠0 | Pass |
| Proper collar width | Radial D⁷, ε=1/2 or 1 | Endpoint radii 1/2 or 0; only 0<ε<1 allowed | Pass |
| PT normalization | Positive framed point; reflected frame | Degrees +1 and −1; negative tube derivative rejected | Pass |
| Surgery normalization | −E₈, +E₈, hyperbolic plane | Signatures −8,+8,0; coordinates −1,+1,0 | Pass |
| 1.1 h-cobordism | M×I; disc from ∅ | Retraction composites id,id; π₀(∅)=∅ versus π₀(Dⁿ)={*} | Predicate discriminates; R01 contract |
| 1.1 reversal/gluing | Two cylinders | End signs (−,+) swap; glued interval still has (−,+) | Pass |
| 1.1 disconnected/empty witnesses | (M⊔N)×I; ∅×I | Boundary counts 2+2 and 0 | Pass; R01 registration |
| 1.2 elementary handle | One λ-handle | Hᵢ(W,V)=ℤ at i=λ, 0 otherwise | Pass; locator covers this part |
| 1.2 cancellation matrix | Matrix [1] versus [2] | Kernel/cokernel (0,0) versus (0,ℤ/2) | Pass; [2] is not a cancellation pair |
| 1.3 handle trading | Total dimension 6 | Boundary n=5: remove indices 0,1,5,6; remaining indices 2,3,4 | Pass with total/boundary indexing kept explicit |
| 1.4 local Whitney move | Local opposite-sign pair | Unsigned count 2→0; signed count +1−1=0→0 | Pass |
| 1.5 common-component arcs | P=(S³×{a})⊔(−S³×{b}), Q={c}×S³ | Componentwise intersections (1,−1); total 0; connecting arcs in P: none | Correctly excluded |
| 1.5 dimension bounds | p=q=3 versus p=2,q=3 | Codimensions 3,3 versus 3,2 | Pass; latter goes to 1.6 |
| 1.6 exceptional complement | Five-dimensional level | codim Q=2; codim attaching S¹=4; π₁(incoming∖S¹)=0 | Repaired hypothesis/source agree |
| 1.7 product theorem | Cylinder on S⁵ | Total dimension 6; relative homology 0; both π₁=0 | Pass |
| 1.7 excluded dimension | A five-dimensional trace | 5≥6 is false | No smooth four-sphere consequence claimed |
| 2.1 homotopy-sphere code | S⁶ versus point | Reduced H₆=ℤ versus 0; π₁(S⁶)=0 | Pass |
| 2.1 universe/marking | ULift of S⁶; compose marking with reflection | Same geometric cycle; marking degree +1→−1 | Pass; marking not extra moduli |
| 2.2 connected sum | Sⁿ#Σ, n≥1 | [Sⁿ]+[Σ]=0+[Σ]=[Σ] | Pass |
| 2.3 inverse | Σ and −Σ | [Σ]+[−Σ]=0; punctured-cylinder witness has sphere end | Pass; no dimension-four classification assumed |
| 2.4 Θ quotient | n=1; n=0; n=5 | Θ₁=0; n=0 excluded; trace dimension for n=5 is 6 | Pass |
| Sphere definition | n=0,1,6 | S⁰ has 2 points; S¹ is circle; tangent rank of S⁶ is 6 | Pass |
| 3A.1 coreflection | Compact interval square | k(I×I)=I×I; both evaluation composites give f(x) | Pass |
| 3A.2 reduced cone | *; S⁰ | C(*)=*; C(S⁰)=interval with apex as basepoint | Pass |
| 3A.2 contraction | u=0,1 | [a,(1−u)t]=[a,t] or apex | Pass |
| 3A.2 suspension | *; S⁰; degree-two circle map | Σ(*)=*; ΣS⁰=S¹; suspended degree=2 | Pass |
| 3A.2 pinch/inverse | ΣS⁰ | Fold∘pinch degree 2; reflection degree −1 | Pass |
| 3A.2 smash | S⁰∧S⁰; S¹∧S¹ | 2 points versus product's 4; S² with swap degree −1 | Pass |
| 3A.2 mapping cone | S⁰→*; id:S¹→S¹ | Cone H₁=ℤ; identity-cone reduced homology 0 | Pass |
| 3A.2 cone extension | F([a,t])=H(1−t,a) | t=1 gives gf(a); t=0 gives constant | Pass |
| 3A.2 Puppe exactness | f=id on S¹, Y=S¹ | im([C_f,Y]→[S¹,Y])={0}=ker(id:ℤ→ℤ) | Pass |
| 3A.2 mapping cylinder | S⁰→*; id S⁰ | Reduced cylinder is interval; id cylinder has 2 components | Pass |
| 3A.2 loop API | Winding 1 and 2 in S¹ | Concatenation 1+2=3; reversal 1→−1 | Pass |
| 3A.3 stable colimit | Degree 1 and 0 | Stable degree classes 1 and 0 remain distinct in ℤ | Pass |
| 3A.3 product signs | Two degree-one stable classes | Sign (−1)¹=−1; η²=−η² since 2η²=0 | Pass |
| 3A.4 stable range | (n,k)=(8,6),(9,7),(7,6) | 14≤14,16≤16 true; 13≤12 false | Pass |
| 3B CW replacement | *, S¹, discrete two-point space | π₁=0,ℤ respectively; two components remain 2 | Pass on examples; consume abstract approximation owner |
| 3B.1 reduced words | (x,*,y); empty word | Length 2; unit length 0 | Pass |
| 3B.2 filtration | J₁S¹/J₀; J₂S¹/J₁ | S¹ with H₁=ℤ; S² with H₂=ℤ | Pass |
| 3B.3 integral coefficients | M(ℤ/2,2) smash square | H₅=Tor₁(ℤ/2,ℤ/2)=ℤ/2; naive tensor degree 5 is 0 | Pass; freeness qualification essential |
| 3B.3 James map | One/two circle letters | π₁ΩS² values 1 and 1+1=2 | Pass |
| 3B.4 connected equivalence | X=S¹ | π₁JS¹=ℤ=π₁ΩS²; map sends 1→1 | Pass |
| 3B.4 disconnected control | X=S⁰ | π₀JS⁰=ℕ, π₀ΩS¹=ℤ; not bijective | Correctly excluded |
| 3B.5 James–Hopf | Words of lengths 1,2,3 | Pair counts 0,1,3 | Pass |
| 3C.1 EHP exactness | n=2,q=4 | ℤ→ℤ→ℤ/2→0; im(×2)=2ℤ=ker(mod2) | Pass |
| 3C.1 left endpoint | n=2 | First term π₄S²; extra preceding comparison needs i=5>4 | Pass; not asserted |
| 3C.2 signs | η₂, −η₂; P generators ±1 | H(η₂)=1,H(−η₂)=−1; P(±1)=±2η₂ | Pass |
| 3C.3 zero Toda bracket | f=g=h=0 on Sᵐ, m≥3 | Indeterminacy 0+0=0; bracket {0} | Pass |
| 3C.3 undefined bracket | f=g=id, h=0 | deg(gf)=1≠0 | Correctly excluded |
| 3C.3 full indeterminacy | f=g=0,h=id on Sᵐ | ℤ/2+0=ℤ/2; bracket {0,η}, cardinality 2 | Pass; singleton fails |
| 3C.4 Barratt–Toda | Requested higher identity | No left or right expression specified; known calibration P(1)=2η₂ only | Specify; R02 |
| 3C.5 Hopf invariant | Constant; complex Hopf | u²=0 versus u²=v; H=0 versus 1 | Pass |
| 3C.5 source/target reflection | Hopf map | H(source reflection)=−1; H(target reflection)=(−1)²=1 | Pass |
| 3C.5 odd d | d=3 | u²=−u², so 2H=0 in ℤ and H=0 | Pass |
| 3C.5 K basis | d=2, H=1, r=1 | x²=y,xy=y²=0; ch(x)=u+cv,ch(y)=v | Pass |
| 3C.5 Adams comparison | r=1,2,3,4,6 | ν₂(3ʳ−1)=1,3,1,4,3; r≤valuation exactly at 1,2,4 among these | Pass |
| 3C.5 frame→multiplication | x=e₀ or y=e₀ | A_e₀y=y; A_xe₀=x | Pass |
| 3C.5 join normalization | t=0,1,1/2 | Norm²=(1−t)+t=1; endpoints (x,0),(0,y) | Pass |
| 3C.5 Clifford frames | n=1,3,7 | Module dimensions 2,4,8; ⟨x,Aᵢx⟩=0, ‖Aᵢx‖²=1 | Pass |
| sphere_parallelizable_iff | n=0,1,2,3,7 | Frame/disjunction: (true,false),(true,true),(false,false),(true,true),(true,true) | n=0 excluded; theorem passes |
| 4A.1 finite groups | O(0),SO(1),O(1) | Cardinalities 1,1,2 | Pass |
| 4A.1 stabilization | SO(2) rotations 2π,4π | Winding 1,2 → parity 1,0 | Pass |
| 4A.2 loop classifier | Stable identity component | π₀ΩBSO=π₁BSO=0=π₀SO | Pass |
| 4A.3 smooth stable comparison | TS²; quaternionic Hopf line | Stable TS² class 0; Hopf line has absolute p₁=2≠0 | Pass |
| 4A.4 null classification | TS²⊕ℝ; TS² | Rank-three trivialization exists; rank-two honest frame does not | Pass when “a stabilization” means existence |
| 4A.5 clutching | n=2 | [S²,BSO]=π₁SO=ℤ/2 | Pass; based/unbased comparison uses π₁BSO=0 |
| 4A finite quaternion cover | Unit quaternions ±1 | Both map to identity SO(3); kernel has 2 elements | Pass |
| 4A UTS² dictionary | (e₁,e₂) | [e₁,e₂,e₁×e₂]=I, determinant +1; negated last column gives −1 | Pass |
| 4A column permutation | (1,2,3)→(2,3,1) | Two transpositions; sign +1 | Pass |
| 4A projective comparison | UTS² and RP³ | Both covered by S³ with fibres {q,−q}, size 2 | Pass; actual maps still required |
| 4B.1 chain components | BO×ℤ and O | π₀=ℤ and ℤ/2; identity-component-only replacement loses components | Pass |
| 4B.2 geodesics | Round sphere antipodes | Shortest length π; next length 3π, index 2(n−1) | Pass against metric supplier |
| 4B.3 compact-family capture | Point and finite geodesic family | One finite subdivision suffices; constant path energy 0 | Pass on these instances |
| 4B.4 Hessian | Shortest antipodal family on S³ | Nullity 2,index 0; next family index 4 | Pass |
| 4B.5 attachments | Index-4 negative bundle | New relative cells start in degree 4, not degree 0 | Pass on this case |
| 4B.6 SO(2r) | r=1,2,8 | λ=0,2,14; r=1 excluded | Source equation 7.4 agrees |
| 4B.6 SO(4r)/U(2r) | r=1,2,8 | λ=2,6,30 | Source equation 8.2 agrees |
| 4B.6 U(4r)/Sp(2r) | r=1,2,8 | λ=8,12,36 | Source equation 8.5 agrees |
| 4B.6 Sp(r) | r=1,2,8 | λ=4,6,18 | Source equation 7.6 agrees |
| 4B.6 Sp(r)/U(r) | r=1,2,8 | λ=2,3,9 | Source equation 8.7 agrees |
| 4B.6 U(2r)/O(2r) | r=1,2,8 | λ=2,3,9 | Source equation 8.9 agrees |
| 4B.6 connectivity endpoint | λ=6; desired degree 5 | Isomorphism through 4; surjection at 5; isomorphism needs λ≥7 | Pass |
| 4B.7 / orthogonalGroup_bottPeriodicity | k=0,n=11 | π₉O(11)=ℤ/2=π₁O(11); 9=11−2 | Pass |
| 4B.8 / secondHomotopyGroup | n=4,i=2 | π₂O(4)=0; 2=4−2 | Pass |
| 4B.8 / thirdHomotopyGroup | n=5; excluded n=4 | π₃O(5)=ℤ; π₃O(4)=ℤ⊕ℤ, bound fails | Pass; range matters |
| 4B.8 / fourthHomotopyGroup | n=6,i=4 | π₄O(6)=0; 4=6−2 | Pass |
| 4B.8 / fifthHomotopyGroup | n=7,i=5 | π₅O(7)=0; 5=7−2 | Pass |
| 4B.8 / sixthHomotopyGroup | n=8,i=6 | π₆O(8)=0; 6=8−2 | Pass |
| 4B.8 / seventhHomotopyGroup | n=9,i=7 | π₇O(9)=ℤ; 7=9−2 | Pass |
| 4B.8 / eighthHomotopyGroup | n=10,i=8 | π₈O(10)=ℤ/2; 8=10−2 | Pass |
| 4B.9 Clifford comparison | Cl(0,1),Cl(0,3),Cl(0,7) | ℂ,ℍ⊕ℍ,M₈(ℝ)⊕M₈(ℝ), with generators squaring to −1 | Pass |
| 4C.1 sphere action | Identity and rotation | I·x=x; 2π loop closes at I | Pass |
| 4C.2 stable J | Constant gauge; stable rotation | J(0)=0; J(1 mod2)=η≠0 | Pass |
| 4C.3 framing action | Same frame; two gauges | Difference 0; two rotation gauges give 2η=0 | Pass |
| 5.0 finite PT | Empty, positive point, negative point | Degrees 0,+1,−1 | Pass; agrees with supplier |
| 5.0 unstable inverse | Hopf map, domain/target reflection | H values −1 and +1 respectively | Pass |
| 5.0 rank zero control | 0-manifold in ℝ⁰ | At most 1 point; cannot realize arbitrary integral sums | Correctly excluded |
| 5.0b framed curves | Bounding circle; Lie circle | Parities 0 and 1; pair of Lie circles totals 0 | Pass |
| 5.0b c=2 curve case | Complex Hopf fibration | π₃S³=ℤ→π₃S²=ℤ is iso; linking=1 for generator | Pass |
| 5.0b framed surfaces | S²; Lie torus; two Lie tori | Arf values 0,1,1+1=0 | Pass |
| 5.0b relative cancellation | c=4 and c=3 | Trace ambient dimensions 7 and 6; Stiefel connectivity 3 and 2 | Pass; latter not claimed sufficient |
| 5.0b low second offset | c=1,2,3,4 | Groups 0,ℤ/2,ℤ/2,ℤ/2 | Pass; low-rank exceptions retained |
| 5.1.1 tangent/normal dictionary | S²⊂ℝ³ | TS²⊕ν≅ℝ³; ν rank 1 | Pass |
| 5.1.2 structure dictionary | Empty cycle; framed point | Bordism classes 0 and positive degree 1 | Pass |
| 5.1.3 Thom augmentation | Two positive points | Thom space Sᵏ∨Sᵏ; fold has total degree 2 | Pass; not a sphere before augmentation |
| 5.1.3 tube condition | Normal derivative +1 versus −1 | +1 preserves positive point degree; −1 reverses it | Pass |
| 5.1.4 J action | φ and φ·id on Sⁿ | PT(φ·id)−PT(φ)=0=J(0) | Pass; arbitrary-manifold gauge not typed as πₙSO |
| 6A.1 defect exterior | Hemisphere in Sⁿ | Exterior Dⁿ; boundary one Sⁿ⁻¹; ambient-open collar would fail | Pass |
| 6A.1 proper tube | Dⁿ×I | Two endcaps, one lateral face; scaled normal ε at endpoints | Pass |
| 6A.2 quotient | Cylinder; orientation reversal | Same class at both ends; [−M]=−[M] | Pass |
| 6A.3 historical model | Proper top disc versus whole sphere | Exterior boundary count 1 versus 0 | Whole-sphere defect excluded |
| 6A.4 comparison | Boundary-framed standard sphere | Both quotient coordinates 0; inverse transports return original stable class | Pass on zero case |
| 6B.1 filling | D⁷; closed torus | Boundary S⁶ versus ∅; rank-seven stable frame versus no sphere identification | Pass |
| 6B.2 three faces | W×I | Two horizontal faces; one vertical face; two corner intersections | Pass |
| 6B.2 signs | Orientation dt followed by W | Horizontal signs −,+; vertical correction −1 | Pass |
| 6B.3 quarter turn | Normal/extra coordinates (s,a) | (s,a)→(−a,s); determinant +1 | Pass |
| 6B.3 boundary restriction | Standard D⁷ frame | (t,a)→t−ax; tangent rank 6 plus 1 = 7 | Pass |
| 6B.3 collar cutoff | ε=1/2,δ=3/4 | Product below 1/2; unchanged above 3/4; centre untouched | Pass |
| 6B.3 stable-class lift | Surface with boundary, n=2 | Spine dimension ≤1; ℤ=π₁SO(2)→π₁SO=ℤ/2 surjective | Pass; lift not unique |
| 6B.4 deletion | Sⁿ minus defect interior | Whole exterior Dⁿ is connected; boundary degree −1 against deleted-disc orientation | Pass |
| 6B.4 historical normalization | Path followed by reversal | Frame transport g·g⁻¹=id; same quotient class | Pass |
| 6B E₈ plumbing | k=1,2 | Spine dimensions 2,4; tangent ranks 4,8; determinant 1,signature −8 | Pass |
| 6B E₈ boundary | k=1 versus k=2 | Homology sphere in both; π₁ nontrivial versus 0 | Correctly separates low dimension |
| 6C.1 deletion/inclusion/boundary | Standard sphere/disc | Disc boundary class 0; sphere inclusion 0 | Pass |
| 6C.2 exactness | n=6 final segment | 0→Θ₆→ℤ/2→ℤ/2 with final map id | Pass once map comparison proved |
| 6C.3 bP | Negative E₈ and reverse | Boundary coordinates −1,+1 mod28; sum 0 | Pass |
| 7A.1 normal map | Identity; degree-two map | Degrees 1 and 2; only identity satisfies degree-one condition | Pass |
| 7A.2 surgery kernel | Identity normal map | Kernel in each positive degree 0; middle rank 0 | Pass |
| 7A.3 below-middle surgery | S²×S⁴→S⁶ of degree 1, surgery on S² factor | Replace S²×D⁴ by D³×S³; common boundary S²×S³; π₂ generator ℤ killed | Pass |
| 7A.4 connectivity improvement | Identity relative normal map | Already all-degree equivalence; 0 surgeries needed | Pass |
| 7B.1 quadratic refinement | Hyperbolic and anisotropic planes over 𝔽₂ | q(a+b)=q(a)+q(b)+1; values 1 and 1 | Pass |
| 7B.2 even forms | Zero module; integral hyperbolic plane | Determinants 1,−1; signatures 0,0 | Pass |
| 7B.3 odd formations | (H;L,L*) and (H;L,L) | Both quotient classes 0 by different stated zero relations | Pass |
| 7B.3 nonexample | q(x,y)=xy, line e+f | q(e+f)=1≠0 | Correctly excluded |
| 7B.4 Wall comparison | Trivial π, degrees 5,6,8 | Wall values 0,ℤ/2,ℤ match proposed P coordinates | Pass on table |
| 7B.5 even zero criterion | Hyperbolic versus anisotropic mod-two plane | q-zero Lagrangian exists versus none; Arf 0 versus 1 | Pass |
| 7B.6 odd zero criterion | Zero formation; dimension 5 | Obstruction 0; 5≥5 | Pass |
| 7B.7 realization ranges | Even 6; odd 5 and 7 | 6≥6 true; 5≥7 false; 7≥7 true | Pass |
| 7B.8 geometric comparison | Disc and negative E₈ | Obstruction coordinates 0 and −1 | Pass |
| 7C.1 odd groups | n=5,7 | P₅=P₇=0 | Pass |
| 7C.2 signature coordinate | ±E₈ | ±8/8=±1 | Pass |
| 7C.3 Arf coordinate | q=xy; q=x²+xy+y² | Zero counts 3 and 1; Arf 0 and 1 | Pass |
| 7C.4 defect surgery | Product trace | Before/after P coordinate a−a=0 | Pass on identity |
| 8.1 forget frame | Empty; framed S⁷ shifted by J₇(1) | Empty class 0; difference 1 mod240 maps to 0 in A₇ | Pass |
| 8.2 extension obstruction | Constant clutching; degree-eight realizations | Obstructions 0 and 240; J images 0 and 240 mod240=0 | Pass |
| 8.2 forbidden obstruction | Coordinate 1 in π₇SO | J(1)=1 mod240≠0 | Cannot be obstruction of a closed almost-framed cycle |
| 8.3 cokernel comparison | n=6 | π₅SO=0,π₆SO=0; A₆=coker J₆=ℤ/2 | Pass |
| 8.4 Kervaire invariant | Zero module; one/two anisotropic planes | Arf 0,1,0 | Pass |
| 9.1 first three stems | Stable η,η²,ν | Orders 2,2,24 | Values supported; third imported |
| 9.2 fourth/fifth stems | n=6,7 stable models | π₁₀S⁶=0; π₁₂S⁷=0 | R03 signatures; R04 proof locators |
| 9.3 ν² composition | ν₄∘Σ³ν₄ | S¹⁰→S⁷→S⁴; stable order 2 | Types agree; specific proof locator unverified |
| 9.4 compatible table | Stems 0…6 | ℤ,ℤ/2,ℤ/2,ℤ/24,0,0,ℤ/2 | Group values agree with readable table |
| 9.5 framed product | S³×S³, q(a)=q(b)=1 | Intersection matrix [[0,1],[−1,0]]; Arf 1·1=1 | Pass; prescribed-framing comparison remains a target |
| 9.6 A₆ | J₆ from zero group | coker(0→ℤ/2)=ℤ/2 | Pass |
| 9.7 Θ₆ | Right map id versus zero on ℤ/2 | Kernel sizes 1 versus 2; left image size 1 | Correct proof requires id |
| sixthStem signature | n=8 and n=7 | At n=8,14=2n−2 and group ℤ/2; n=7 fails 8≤n | Pass |
| 9A.1 Adams prime bound | p=2,3,5,7 | Orders ≤16,3,5; at p=7 other cobar generators have stem ≥11>8 | Range arithmetic passes |
| 9A.1 finite assembly | Primary bounds | 16·3·5=240; rational rank 0 | Pass; tower convergence remains substantive |
| 9A.1 e-invariant | 1/240; possible halves | Order 240; 2(1/240)=2(121/240)=1/120 modℤ | Pass; primitive real comparison needed |
| seventhStem signature | n=9 | 16=2n−2; π₁₆S⁹=ℤ/240 | Pass |
| 9A.2 exact image | Bott obstruction 240 | p₂=±1440; σ=7p₂/45=±224; σ/8=±28 | Pass |
| 9A.2 Θ₇ | Image 28ℤ⊂ℤ; A₇=0 | Quotient ℤ/28; negative E₈ coordinate −1 | Pass |
| 9A.3 index identity | p₁²=0,p₂=1440 | σ=224; (0−4·224)/896=−1=−5760/5760 | Pass |
| 9A.3 Eells–Kuiper | Negative E₈; orientation reverse | μ=32/896=1/28; reverse −1/28 | Pass |
| 9A.3 quaternionic bundle | (h,j)=(2,−1),(1,0) | (e,p₁)=(1,6),(1,2); μ=1/28,0 | Pass |
| 9A.3 Euler-zero control | h+j=0 | Gysin cokernel ℤ/0ℤ=ℤ≠0 | Excluded from homotopy-sphere assertion |
| 9A.3 twisted discs | Hypothetical extension of gluing map | Extension gives standard class 0, contradicts ±1 mod28 | Pass |
| 9A.4 k=2 cap | σ=−8 | 7p₂=−360; residue −360 mod7=4 | No integral p₂ |
| 9A.4 valuation | k=3,4 | d₃=±992/63,d₄=±2032/15; valuations 5,4 versus ν₂(−8)=3 | Pass |
| 9A.4 denominator hypotheses | k≥2,p=2 | k≠0; 2−1=1 divides 2k; ν₂(B₂ₖ)=−1 | Pass |
| 10.1 orientation | M=S⁶; reflected marking | H₆=ℤ, generators ±1; connected and π₁=0 | Pass |
| 10.2 quotient witness | Standard S⁶ | Θ₆ class 0; trace cylinder dimension 7 | Pass |
| 10.3 orientation correction | Reversing diffeomorphism and reflection | Product sign (−1)(−1)=+1 | Pass |
| PreservesOrientedAtlases | Same atlas/id; reflected atlas | Transition determinants +1; one reversed orientation gives −1 | Pass; hA,hB prevent empty-atlas vacuity |
| smoothPoincareSix_oriented | S⁶, same/opposite chosen orientations | Choose identity/reflection; preservation sign +1 in either matched case | Pass |
| smoothPoincareSix | S⁶; ℝ⁶ control | Identity exists; H₆(ℝ⁶)=0≠ℤ so no homotopy-equivalence hypothesis | Pass |

The table has **181 instance rows**, covering the sampled targets, every numbered target, all 13 Lean theorems, the three kept definitions, and the constructions implicated in findings. These finite tests do not certify the general higher homotopy calculations or replace their proofs.

**Seeded source sample: all 15 targets.** The source identifiers below identify the extracted legal copies used for this review. References to extraction lines are not manuscript line numbers. The Kervaire–Milnor stable table and Bott's p.335 were also read as page images to disambiguate OCR.

| Target | Text inspected and outcome |
| --- | --- |
| 1.1 H-cobordism witnesses | `milnor1965` lines 2784–2806, Theorem 9.1 and Definition 9.2, printed p.107; `kervairemilnor1963` lines 13–26, §1, p.504. Compact smooth boundary pieces and their homotopy/homology conditions agree in the simply connected setting. The extra collared carrier needs R01; an individual definition locator needs R04. |
| 1.2 Morse handles | `milnor1965` lines 810–847, Theorems 3.13–3.14 and Corollary 3.15, pp.31–32; lines 1071–1082, Theorem 4.8, p.44. These cover the attachment and ordered Morse realization being used. Cancellation and slides require the later inputs, not a claim that all follow from those four locators. |
| 1.6 The five-dimensional level | `milnor1965` lines 1841–1857, Theorem 6.6, p.71; lines 1883–1896, the index-two case, pp.72–73. The specified arcs and complement fundamental-group condition are present in this head. Codimension-two complements cannot be treated by the codimension-three shortcut. |
| 1.7 Smooth product theorem | `milnor1965` lines 2784–2806, Theorem 9.1, p.107. Total dimension at least six, simply connected boundary pieces and relative acyclicity match. The roadmap obtains the latter from its h-cobordism hypotheses. |
| 2.1 Finite codes and homotopy spheres | `kervairemilnor1963` lines 13–26, §1, p.504, supports the geometric object and quotient, not a finite-atlas coding theorem. The coding and essential-surjectivity statements are identified as new adapters, using the named smooth triangulation and finite-CW suppliers. No claim that Kervaire–Milnor proves a universe encoding is certified. |
| 2.2 Connected sum | `kervairemilnor1963` lines 55–125, Lemmas 2.1–2.3, pp.505–506. Homotopy spheres have the needed connectivity; the additional simple-connectivity qualification in the intermediate argument is not silently applied to arbitrary manifolds. Dimension-four diffeomorphism classification is not inferred. |
| 5.0 Finite ambient spheres and normal rank | `milnorTDV` lines 1273–1300, Theorems A–C, pp.43–44, supports framed inverse images and finite PT. The marked sphere, relative collars, inverse bordisms and c≥1 conventions are resolved to TangentialBordism B5.2, rather than attributed wholesale to the elementary exposition. Rank zero is explicitly excluded. |
| 8.4 Kervaire invariant | `browder1969` lines 218–219, Theorem 1.4, p.162, and lines 367–469, Theorem 3.2 and proof, pp.166–168. The framed quadratic refinement and Arf comparison have the stated odd-middle-dimension setting. The exceptional low-dimensional discussion uses the references acknowledged in Browder's proof. |
| 9.1 First three Hopf stems | `hatcherAT` lines 20407–20445, Corollary 4J.4 and the next EHP discussion, pp.474–475, supports the first two groups. StringOrientation S2.3 supplies the third group and quaternionic normalization. Toda's individual composition comparisons remain uncertified, and their locators need R04. |
| 9.2 Fourth and fifth stems | `kervairemilnor1963` lines 320–327 and printed p.512 confirm both zero values. This table is evidence for the result, not the omitted EHP/Barratt–Toda calculation. R02–R04 distinguish the missing formula, Lean statements and locators. |
| 9.3 Sixth stem and representative | The same printed table confirms the group ℤ/2. The displayed composite has types S¹⁰→S⁷→S⁴. Its nonzero stable class requires the specific Toda composition result, whose text and individual locator were not verified. |
| 9.4 Compatible stem table | The same p.512 table agrees with stems 1–6; degree zero is the degree map ℤ. A group table does not certify the chosen suspension maps or generators. Those comparisons remain explicit targets, with R04 applying to their locators. |
| 10.1 Orientation | DifferentialGeometry Layer 2's orientation/top-homology comparison, the native sphere simple-connectivity theorem, and AlgebraicTopology's top homology are the actual suppliers. Kervaire–Milnor §1 uses oriented spheres but does not prove this native-atlas adapter. On S⁶ the two orientation generators are ±1. |
| 10.2 Small code to h-cobordism | `kervairemilnor1963` lines 13–26 supplies the geometric relation and group; Layer 2's code equivalence and quotient induction are the actual new prerequisites. Equality of quotient classes must return an actual seven-dimensional trace, not merely an unmarked bijection of carriers. |
| 10.3 Orientation-preserving diffeomorphism | `milnor1965` Theorem 9.1, p.107, supplies the product at total dimension seven. Connectedness gives a constant orientation sign; composing a reversing result with the coordinate reflection changes −1 to +1. The final atlas statement retains both atlas validity hypotheses. |

Other source checks include the six explicit Bott index estimates (`bott1959` lines 40–63, 832–948: Theorem I, p.313, and equations (7.4), (7.6), (8.2), (8.5), (8.7), (8.9), pp.333–336); the Hopf-invariant divisibility argument (`adamsatiyah1966` lines 22–25 and 72–92, Theorem A and its proof); the framed-product existence example (`snaith2010` lines 1153–1161, Example 8.3), which does not by itself specify the product Hopf-fibre framing; and Wall's even, odd and realization ranges (`wall1999` lines 2309–2321, 3162–3199 and 8288–8318, Theorems 5.6, 6.4, 6.5 and 13A.1, pp.50, 68–69, 172). These agree with the tested ranges. Wall's orientation-character misprint is listed below. Bott's rank slips were not propagated into the roadmap's six-row table.

**Pinned library audit.** Both library copies were checked against the worktree's manifest, rather than a newer checkout. The following are the native carriers and hypotheses actually opened; the paths are relative to their respective library roots.

| Declaration / object | File and line at the pin | What the definition actually provides |
| --- | --- | --- |
| `HomotopyGroup.Pi`, its group and commutative-group structures | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:441`, 458, 547, 603 | Quotient of based maps; positive-degree group and higher-degree commutativity. No smooth manifold assumption is built into this carrier. |
| `Matrix.orthogonalGroup` | `Mathlib/LinearAlgebra/UnitaryGroup.lean:293`–295 | Real specialization of the unitary group, with A Aᵀ=1. It is the actual finite matrix group used in the signatures. |
| `CompactlyGenerated` and inclusion | `Mathlib/Topology/Category/CompactlyGenerated.lean:32`, 77, 81 | Compactly generated spaces and fully faithful inclusion. Hausdorffness is not part of the bundled object. The roadmap's coreflector/closed-category API is additional work. |
| `TopologicalSpace.compactlyGenerated` | `Mathlib/Topology/Compactness/CompactlyGeneratedSpace.lean:67` | Topology tested by maps from compact Hausdorff spaces; this is not a preexisting proof of every categorical claim in §3A.1. |
| `ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere` | `Mathlib/Geometry/Manifold/PoincareConjecture.lean:41` | Has Hausdorffness; omits compactness and second countability. The direct theorem here states both explicitly. |
| `exists_embedding_euclidean_of_compact` | `Mathlib/Geometry/Manifold/WhitneyEmbedding.lean:131` | Smooth Euclidean embedding with the standing finite-dimensional manifold and compact Hausdorff hypotheses, not an embedding of an arbitrary topological quotient. |
| `padicValRat_bernoulli` | `Mathlib/NumberTheory/Bernoulli.lean:689` | The nonzero-index and prime/divisibility hypotheses are satisfied for B₂ₖ, p=2, k≥2. The even Bernoulli index does not become zero by natural subtraction. |
| `TauCeti.orientationPreservingGroupoid`, `TauCeti.IsOrientedAtlas` | `TauCeti/Geometry/Manifold/Orientation.lean:178`, 183, 332 | Positive coordinate changes, chart validity and covering. These last two conditions exclude the empty-atlas fake proof. |
| `TauCeti.isManifold_boundary`, `TauCeti.isSmoothEmbedding_subtypeVal_boundary` | `TauCeti/Geometry/Manifold/Boundary/Charts.lean:321`, 374 | Finite-dimensional half-space boundary and inclusion, with differentiability order k≠0. No collared-bordism carrier is supplied. |
| `TauCeti.simplyConnectedSpace_sphere_euclideanSpace` | `TauCeti/AlgebraicTopology/Sphere/SimplyConnected.lean:408` | Simple connectivity for n≥2; cannot be used on S¹. |
| `TauCeti.MappingCylinder`, its `homotopyEquiv` | `TauCeti/Topology/Homotopy/MappingCylinder.lean:81`, 399 | The unreduced quotient identifies (1,a) with f(a) and retracts to the target. It does not collapse a pointed meridian. |

The object searches included actual orthogonal matrices, sphere homotopy groups, tangent frames, oriented atlases, collared bordisms, stable normal bundles, suspension, James words, Whitehead products, quadratic refinements and the J-homomorphism. No duplicate of one of the 13 native headline conclusions was found at the pins. The three elementary definitions are only used to state those headlines.

**Resolved roadmap ownership and order.** The repository tool's object search and roadmap reads were used in addition to direct reads. The following table records the contracts resolved, including ownership of the generic constructions. Main-branch roadmaps were used for revisions of existing roadmaps; supplied open heads were used for new roadmaps. “Supplied head” below describes the evidence location, not a dependency on a pull-request number.

| Supplier | Resolved location and retained boundary |
| --- | --- |
| GeometricTopology, main | `TauCetiRoadmap/GeometricTopology/README.md:205`–225, 544–547, 592–594, 938–943: collars/gluing/tubes, general framed surgery, oriented cobordism, smooth triangulation. Sphere-specific defect and normal-framing adapters remain here. R01 concerns the extra contract. |
| DifferentialGeometry, main | `TauCetiRoadmap/DifferentialGeometry/README.md:345`–355 and 503–533, Layers 3 and 10: orientations and their pointwise comparison, boundary signs, flows, Sard and degree. No duplicate generic orientation definition is added. |
| HeegaardFloer and MorseTheory, main | `TauCetiRoadmap/HeegaardFloer/README.md:54`–63 resolves Lane M and F0 to Layers 1–2; their Morse–Smale/trajectory inputs differ from the finite handle and Whitney-displacement work here. MorseTheory M3 and M5 are the Morse/relative and Morse–Bott inputs, not new targets of this roadmap. |
| AlgebraicTopology, main | `TauCetiRoadmap/AlgebraicTopology/Suggested.lean:962`, 1111, 1132, 1154, 1213 resolves duality, relative Hurewicz and its isomorphism, finite CW type, and homological Whitehead. The actual NDR, connectivity, CW, compactness, Hausdorff and countability conditions were read; the code comparison supplies them. Stage 4.4's raw suspension is distinct from the normalized stable comparison. |
| UniversalCovers, completed | `TauCetiRoadmap/Completed/UniversalCovers/README.md:126`–141: covering/basepoint transport and higher homotopy of the circle; no new generic covering theory is planned here. |
| TopologicalKTheory, main | `TauCetiRoadmap/TopologicalKTheory/README.md:103`–117, 299–326, 430–448, 542–551, 1254–1278: ownership of stable homogeneous-space Bott theory is here; finite Stiefel fibrations, universal bundles, BSO simple connectivity, Adams operations and the geometric real K-ring are supplied there. The early/late distinction prevents using T7 to prove the Bott theorem it consumes. |
| RiemannianGeometry, main | `TauCetiRoadmap/RiemannianGeometry/README.md:556`–605, R3.4: broken geodesics give the normalized suspension map, including the orientation correction. Its range is transported, not reproved as a separate Freudenthal target. |
| CharacteristicClasses, main | `TauCetiRoadmap/CharacteristicClasses/README.md:1450`–1469, 1532–1565, C6.2–C6.3/C7: Chern character and formal L/Â polynomials; C7.3 supplies the sphere tangent/hyperplane comparison. Equality with geometric indices comes from IndexTheory. |
| SpinRepresentations, main | `TauCetiRoadmap/RepresentationTheory/SpinRepresentations/README.md`, L7: real Clifford table with negative generators squaring to −1. The nested roadmap location was resolved by the repository tool; the shorter sibling path is not evidence of a missing supplier. |
| SpinGeometry, main | `TauCetiRoadmap/SpinGeometry/README.md:395`–423, G4, and 775–789, G6 item 5: Spin lifts and circle/torus conventions. The framed Lie circle is the nonbounding Spin circle. |
| TangentialBordism, supplied head | `TauCetiRoadmap/TangentialBordism/README.md:444`–475, 740–804, 859–878, 1014–1054, 1840–1891: collared witnesses, operations/Adams towers, finite marked PT, geometric quadratic refinement and Spin filling. B3.2(a) explicitly states the finite-quadratic-Arf interface upstream; this review resolves that citation but does not certify the supplier's own gap registration. The c≥1 finite normal-rank and relative transversality assumptions match. |
| StringOrientation, supplied head | `TauCetiRoadmap/StringOrientation/README.md:540`–617, S2.2–S2.3: coefficient PT, products and the third stem. The detailed third-stem route uses EllipticCohomology independently; the stale broad mention of HomotopySpheres in its scope does not overturn that explicit supplier route. |
| IndexTheory, supplied head | `TauCetiRoadmap/IndexTheory/README.md:740`–749, 854–871, I7.2/I7.5: signature and complex Spin index; no use of homotopy-sphere classification is required to obtain the two dimension-eight index formulas. |
| GeneralizedCohomology, main | `TauCetiRoadmap/GeneralizedCohomology/README.md:37`, 2212–2244, G5.6: rational positive stable stems vanish; stable homotopy substrate owned here is not duplicated by a second sphere spectrum. |
| DGFloer, main | `TauCetiRoadmap/DGFloer/README.md:461`–464, 650–659, Layer 1.4: CW approximation and Serre-class Hurewicz. The retained based/cofibrant adapter must use this abstract approximation, not claim ownership of it. |

The board-package and supplied-open-roadmap searches found the same principal owners for the generic PT, stable classifier, quadratic, Morse and index constructions. HomotopySpheres owns the h-cobordism-to-sphere classification, the explicit James/EHP and stable-frame adapters, the independent low-stem calculations beyond the supplied third stem, and the almost-framed/filling comparisons. There was no collision of the 16 fully qualified Lean names with an inspected roadmap declaration. Ownership against open heads whose files were not supplied was not checked; search-index hits alone were not treated as an inspection of those heads.

Every Needs line and supplier paragraph was read. R01 is the outstanding unregistered prerequisite; R02 is the unnamed mathematical input in the low-stem route. No further upward supplier or cycle was found. The source-specific intermediate formulas are targets in this roadmap, not an excuse to treat a citation as a supplied Lean API. No computational algorithm, sorry-valued data, option override or copied source passage was found. The layers retain API prose, discriminating Checks, Examples and Dependencies. The declaration names are synchronized with the README at this head; R03 requires two additions, not renaming existing declarations. Main-branch MorseTheory, GeometricTopology and completed UniversalCovers were read as shape comparisons.

## Not verifiable

The review was completed without parking for texts. The following limits are source-verification limits, not asserted counterexamples. No source manifest or pull-request file was changed. The sources service was used for retrieval; no paywall or unauthorized mirror was bypassed.

- **Toda, `toda1962`, Chapters I–V/XIV:** no readable legal text was obtained. The service returned “uncertified”, but its reported Elsevier DOI-prefix match does not identify this Princeton book, so that lookup is not reliable bibliographic certification. The earlier uncertified disposition was respected. In particular the exact Barratt–Toda identity, ν² nonvanishing and compatible suspension/generator calculations are not certified by this review. R02 and R04 concern missing statements/locators independently of access.
- **`james1955`, Reduced Product Spaces:** the service reached the JSTOR landing page for the DOI but obtained no legal PDF. Theorem 1 and the filtered reduced-product proof were not source-certified.
- **`steenrod1967`, A Convenient Category of Topological Spaces:** the Project Euclid landing page yielded no PDF link; Crossref also returned HTTP 429. The coreflector/Cartesian-closed assertions were tested on the displayed native examples but not checked against the cited text.
- **`pontryagin1959`, Smooth Manifolds and Their Applications in Homotopy Theory:** the publisher route ended in an access-control redirect. The Chapter II locators could not be read; readable Milnor and the finite PT supplier supplied the checks reported above.
- **`whitehead1978`, Elements of Homotopy Theory; `steenrod1951`, The Topology of Fibre Bundles; `husemoller1994`, Fibre Bundles; `kosinski1993`, Differential Manifolds:** bibliographic lookup through the service found no readable legal copies. Their broad background locators are not certified.
- **`adams1960`, On the Non-existence of Elements of Hopf Invariant One:** the JSTOR landing page provided no legal PDF through the service. The different Adams–Atiyah proof was available and was inspected; it does not certify the original paper's numbering.
- **Previously uncertified `thom1954` and `hirsch1976`:** Springer publisher routes remained uncertified. **`kervaire1958`:** the earlier unavailable/uncertified text remained unavailable after a fresh bibliographic search. These settled texts were not added as new requests.
- New finite-atlas codes, universe transport, relative protected-collar comparisons, and fixed smooth/tangent-versus-normal adapters are not literal results of the historical sources. Their statements and test cases were reviewed as new work with the named prerequisite contracts. In particular Snaith's existence example is not a proof of the specified Hopf-product framing comparison.

The eight unresolved, unsettled source requests were consolidated in the job's `needs-references.toml`; settled uncertified works were not renamed into new requests. Other references were fetched where legal copies were available. Only passages explicitly listed above are claimed as source-verified. TangentialBordism's finite-quadratic-Arf contract is readable, but its plan registration could not be checked because no readable supplier design plan was present in the supplied board package; this review does not certify that metadata.

## Source issues

- **Misprint** in bott1959 at §8.3, printed p.335: the source says the involution is on U(2n), with fixed group Sp(n); it should be on U(4n), with fixed group Sp(2n), matching the homogeneous space being discussed; affects the proof.
- **Misprint** in bott1959 at §8.6, printed p.335: the source says quaternionic n-by-n matrices form Sp(2n), with complex commutant U(2n); it should be Sp(n) and U(n), consistent with the following fixed-group description; affects the proof.
- **Misprint** in wall1999 at the consequence of Theorem 13A.1, printed p.173, line 3: the source says the nontrivial degree-three group has the negative orientation character; it should be the positive orientation character; affects a stated result; corrected in print at wall-errata, correction for p.173 line 3 (`wall-errata` line 162).
