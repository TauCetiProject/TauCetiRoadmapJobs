# Review of HomotopySpheres (pull request #1287 at 271e7c1)

**Verdict:** needs changes

Two P2 ownership findings remain. The gate passes. These are repairs to the supplier boundaries, not counterexamples to the headline theorems. No pull-request file was changed.

The four findings of the previous review were checked first:

| Previous finding | Passage at this head and disposition |
| --- | --- |
| R01, collared-bordism contract | README:302–317: “Use its collared witnesses with tangential structure SO and parameter space a point”. **Repaired.** Restricting B1.2's structured boundary diffeomorphism supplies the two endpoint embeddings, disjointness, cover and signs. No witness between arbitrary ends is assumed. |
| R02, unspecified Barratt–Toda identity | README:1001: “C(α,β) = P((EHα) ∧ (Hβ))”. **Repaired.** The full 2-local EHP sequence, typed composition laws, integer parity, difference formula and individual Gray locators are now explicit. The substitutions in §9.2 have matching domains and values below. |
| R03, absent fourth/fifth-stem headlines | Suggested.lean:143,149 and README:2410–2412: “π_(n+4)(Sⁿ,x)=0 for n≥6” and “π_(n+5)(Sⁿ,x)=0 for n≥7”. **Repaired.** Both general native signatures elaborate under defaults. |
| R04, individual proof locators | README:441–447 distinguishes cancellation “Theorem 5.4, p.48” from slides “Theorem 7.6”; README:2414 specifies “Propositions 5.8, p.43, and 5.9, p.44”. **Repaired as a locator requirement.** Exact Toda locators are explicitly uncertified, not represented as inspected text. Hatcher 4J.4/4L.11 and the Milnor locators were read. |

No supplied repair report marks a previous finding “not actionable in this package”.

## R01 (P2) — Import the existing singular-realization counit

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:788`–792: “construct functorially a well-pointed CW approximation” and “by geometric realization of the pointed singular complex”.

**Claim:** §3B constructs the singular-realization approximation and proves its homotopy-group/component equivalences as part of the James preparation.

**Witness:** Main `TauCetiRoadmap/CharacteristicClasses/README.md:419`–438, C1.2b, already owns the actual counit |Sing X|→X and its weak equivalence. `TauCetiRoadmap/DGFloer/README.md:461`–464 explicitly assigns this specific construction there.

**Repair:** cite CharacteristicClasses C1.2b and AlgebraicTopology Stage 4's realization CW structure in Scope, supplier contracts and §3B's Needs. Consume that counit and its weak equivalence. Keep the genuinely additional pointed/compactly-generated, basepoint-cofibration and James raw-versus-derived comparisons here, specifying their map to the supplied counit. Do not reconstruct its underlying CW structure or reprove its unpointed weak-equivalence theorem.

**Repair test:** for X=S¹ the supplied counit induces ℤ→ℤ, 1↦1; for discrete S⁰ its component map is the identity on two elements. Pointing and cofibration replacement preserve these values. A constant replacement instead gives zero on π₁ and collapses the two components. The named supplier supplies exactly the underlying map this adapter needs, so the repair preserves the general pointed scope.

## R02 (P2) — Reuse the existing quaternionic Hopf construction

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:1550`–1555: “Construct the local projective charts, actual bundle maps/basepoints and connecting/generator comparisons”.

**Claim:** the exceptional-rank argument reconstructs the quaternionic projective charts and S³→S⁷→S⁴ bundle, alongside its new generator comparisons.

**Witness:** Main `TauCetiRoadmap/GeneralizedCohomology/README.md:938`–959 owns quaternionic charts; G4.0b, lines 1180–1193, owns the actual smooth Hopf quotient and the two-chart HP¹≃S⁴ identification with fixed positive class.

**Repair:** import GeneralizedCohomology G4.0a's charts/carrier and G4.0b's actual Hopf quotient and HP¹ sphere comparison. Add the precise contracts and Needs edge. Retain the based LES, connection to the finite framing calculation and the generator/sign comparison here. State those as adapters on the supplied maps, rather than a second projective-chart/bundle construction. For the complex case import ComplexKahlerGeometry K7.1 and the based Hopf comparison of RiemannianGeometry R3.3c; their exact locations and normalization are resolved below.

**Repair test:** at projective dimension one the supplied map has source S⁷, target HP¹≃S⁴ and fibre S³. The LES segment is 0=π₆S⁷→π₆S⁴≅ℤ/2→π₅S³≅ℤ/2→π₅S⁷=0. Thus the connecting map remains an isomorphism. The positive four-cell convention lets this roadmap compare its chosen generator without constructing another HP¹ atlas.

## Verified sound

All passages of both review files were read, including unchanged passages. The tables below distinguish computed examples, supplier resolution and source verification. Passing examples and a `sorry` build are not proofs of the general statements.

**Mechanical evidence.** The inspected head is `271e7c1915c8344722543dbb7398062050ff9968`. The worktree is clean; the diff outside this roadmap folder is empty. The worker's gate reports every counter zero, including targeted build, imports, sorry-data, set_option, stray-files, dependency and outside-folder checks. The fresh citation resolver reported no unresolved roadmap citations or README Lean names; pinned declarations were checked directly because the resolver itself reported no pinned Lake packages. The fresh dependency check printed:

```text
depcheck: 204 roadmaps, 1481 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Every Needs line and supplier paragraph was read. The early convenient-space substrate → classifiers → Bott → TopologicalKTheory T7 → §9A order is coherent. The framing-action comparison in 4C.3 depends on 5.1, while 5.1 uses the earlier sphere-action J construction, avoiding a circular proof. Neither finding requires a new upward supplier: both owners are on main and are already named elsewhere in this roadmap.

Fresh `lake env lean` elaboration succeeds with exactly 15 `sorry` warnings and no other warning. A scratch copy was elaborated with `#check @name` for all **18 declarations**: three definitions and fifteen theorems. All types agree with the README, including compactness, T2, second countability, smoothness, both valid-atlas hypotheses, positive sphere dimension and all stable-range bounds. Zero section binders were lost. A second scratch probe tried `simp`, `rfl` and `infer_instance` as closing tactics at every admission; all fifteen remained admitted. Object searches found no one-lemma native proof of these conclusions. No padding finding is made.

**Headline inventory.** The README promises smooth simply connected h-cobordism; the small geometric Θₙ quotient and its diffeomorphism comparison; James equivalence/EHP and stable sphere products; Hopf exclusion and the sphere-framing classification; the real Bott loop chain and complete O/SO table; stable J and smooth finite/stable PT comparisons; almost-framed, filling and Wall groups with exact sequences; the cokernel-J/Kervaire comparison; the low stable stems and Θ₆=0; the seventh stem, Θ₇≅ℤ/28, Eells–Kuiper comparison and all E₈ boundaries for k>1; oriented and unoriented six-sphere recognition.

All fifteen native acceptance theorems are present: sphere framing (one), periodicity and seven Bott base entries (eight), stable stems four through seven (four), and the two recognition statements. The module docstring names the unavailable collared-bordism, connected-sum, stable-colimit/J/PT, James/EHP, Hopf-cone, almost-framed/Wall and plumbing/filling carriers. It does not substitute free predicates for them. The first three stems are supplied/comparison targets, not omitted independently owned signatures.

**Adversarial values.** The following 198 rows cover all numbered targets, all fifteen Lean headlines, the three kept definitions, conventions, sampled statements and both findings. Nonexamples test the stated boundaries. “Pass” means agreement on the displayed values; specific inaccessible proof locators remain uncertified.

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
| 1.1 h-cobordism | M×I; disc from ∅ | Retraction composites id,id; π₀(∅)=∅ versus π₀(Dⁿ)={*} | Pass; oriented specialization supplies endpoints |
| 1.1 reversal/gluing | Two cylinders | End signs (−,+) swap; glued interval still has (−,+) | Pass |
| 1.1 disconnected/empty witnesses | (M⊔N)×I; ∅×I | Boundary counts 2+2 and 0 | Pass; supplied boundary diffeomorphism gives both counts |
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
| 3B CW replacement | *, S¹, discrete two-point space | π₁=0,ℤ respectively; two components remain 2 | Values pass; R01 requires importing the actual counit |
| 3B counit repair | S¹ and discrete S⁰ | Actual counit π₁:ℤ→ℤ sends 1→1; π₀:{0,1}→{0,1} fixes both; constant replacement gives 0 and 1 component | R01 imports these maps before pointing |
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
| 3C.4 full 2-local EHP | n=2, j=3 | ℤ_(2) → ℤ_(2) → ℤ/2 → 0; image 2ℤ_(2)=kernel | Pass; integral range is separately retained |
| 3C.4 H precomposition | α=η₂, β=id on S² | H(η₂ Eβ)=1=(Hη₂)Eβ | Pass; actual suspended precomposition |
| 3C.4 H postcomposition | α=degree −1 on S¹, β=η₂ | H((Eα)η₂)=1; E(α∧α) has degree (−1)²=1 | Pass; replacing the square by −1 fails |
| 3C.4 P precomposition | α=ι₅, β=ι₃, n=2 | Pι₅=2η₂=(Pι₅)ι₃ | Pass |
| 3C.4 interchange | α=β=η₂ | Sign −1; η₄η₅=−η₄η₅, both the same order-two class | Pass |
| 3C.4 integer parity | Offsets −1 and 1 | Product −1, sign −1; natural truncation would give +1 | Integer exponent retained; negative-offset sphere map itself is zero |
| 3C.4 difference C | α=β=η₂ | 2η₃η₄=0=Pι₇=[ι₃,ι₃] | Pass |
| 3C.4 difference C | α=ι₂, β=η₂ | η₃−η₃=0; Hι₂=0 so right side 0 | Pass |
| 3C.4 nonzero difference | α=η₂, β=ν₄ | 0+ν₅η₈=c=Pι₁₁; c has order 2 | Pass against Gray; zero C fails |
| 3C.4 second nonzero difference | α=η₂, β=ν′ | 0+(Eν′)η₇=a=Pη₉; a has order 2 | Pass against Gray |
| 3C.4 smash dimensions | Previous two substitutions | S¹¹→S¹¹ degree 1; S¹⁰→S⁹ is η₉; P lands in π₉S⁵ and π₈S⁴ | Both sides have the declared types |
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
| 5.0b exceptional Hopf maps | S¹→S³→S² and S³→S⁷→S⁴ | π₄S¹=π₃S¹=0; π₆S⁷=π₅S⁷=0; respective LES maps Z/2→Z/2 are isomorphisms | Values pass; R02 imports the existing bundle maps |
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
| 9.2 unstable third-stem comparison | ν′ and −ν′ | Order 4; E²ν′=2ν₅ and E²(−ν′)=6ν₅ in ℤ/8; Hν′=η₅≠0 | Values agree with Gray; exact Toda text uncertified |
| 9.2 fourth diagonal | π₈S⁴_(2)=⟨a,b⟩ | Orders 4→2→1 by killing a then c; zero P would leave 4→2 | Pass |
| 9.2 fifth diagonal | ⟨aη₈,bη₈⟩ | Order 4→2; d=cη₉ is killed; next H image is 2ℤ_(2), index 2 | Pass as algebra; Toda computation uncertified |
| 9.2 last fifth-stem quotient | Pι₁₃=[ι₆,ι₆] | ℤ_(2)/ℤ_(2)=0; H of generator is 2, not 1 | Pass; range n≥7 is necessary |
| 9.2 odd-primary passage | (p,k)=(3,4),(3,5),(3,6),(5,6) | All four primary orders 1; at (3,3),(3,7) orders 3 | Pass against Fomenko–Fuchs corollary |
| 9.2 fourth/fifth stems | n=6,7 stable models | π₁₀S⁶=0; π₁₂S⁷=0 | Pass; both native signatures present; Toda proof text uncertified |
| 9.3 ν² composition | ν₄∘Σ³ν₄ | S¹⁰→S⁷→S⁴; stable order 2 | Types agree; Hatcher 4L.11 supports nonvanishing, exact Toda locator uncertified |
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


**Seeded source verification: all 15 requested targets.** Source IDs name the legal texts retrieved through the sources service. Extraction line numbers refer to the copy actually read in this review. The Kervaire–Milnor p.512 table, Milnor p.107 and Bott p.335 were also inspected as page images, so OCR inequalities and columns were not taken on trust.

| Sample target | Locator and evidence |
| --- | --- |
| 1.2 Morse handles | `milnor_hcobordism` lines 862–898 (3.13–3.15, pp.31–32), 1147–1163 (4.8, p.44), 1239–1250 (5.4, p.48), 2441–2575 (7.6 and basis-change proof, pp.92–96). The isolated adjacent-index pair requires one transverse intersection; the equal-index basis change has 2≤λ≤N−2. The repaired prose separates these from attachment and ordering. |
| 1.5 Whitney discs | `milnor_hcobordism` lines 1863–1888 (6.6 and remark, pp.71–72), 2074–2091 (6.10–6.12, p.79). The orientation of P and normal orientation of Q, opposite signs, specified arcs and contractible loop are present. For p,q≥3 general position gives the needed complement condition. The disconnected two-component control does not supply an arc in P. |
| 1.6 Five-dimensional level | `milnor_hcobordism` lines 1889–1916, proof of 6.4, pp.72–73, together with 6.6, p.71. The flow compares the belt-sphere complement with the incoming level minus an attaching circle. Its codimension is four in this instance; the belt sphere itself has codimension two. The roadmap retains the requisite complement π₁ condition. |
| 2.1 Finite codes and homotopy spheres | `kervairemilnor1963` lines 38–49, §1, p.504, supports the closed homotopy-sphere and h-cobordism objects. It does not contain a Type-0 coding theorem. The finite-atlas realization and universe transport are explicitly new adapters, with GeometricTopology's smooth triangulation and AlgebraicTopology's finite CW type as inputs. |
| 2.2 Connected sum | `kervairemilnor1963` lines 78–106, Lemmas 2.1–2.2, p.505, and the inverse construction in §2, pp.506–507. Opposite disc orientations, unit sphere, associativity/commutativity and compatibility with h-cobordism agree. No low-dimensional diffeomorphism classification is inferred. |
| 5.0b Early framed curves/surfaces | `atiyah1971` lines 419–433, Proposition 4.1 and Theorem 3′, p.58: mod-two-index boundary criterion, not by itself the geometric quadratic-refinement theorem. TangentialBordism B3.2(b–c) supplies that refinement and Spin filling. `milnor1965viewpoint` lines 1250–1293, Theorems A–C, pp.43–44, supports finite framed inverse images/PT. The honest-rank relative cancellation is a separate target with ambient dimension ≥7 and Stiefel connectivity ≥3. The exceptional Hopf maps trigger R02. |
| 8.2 Extension obstruction and exactness | `kervairemilnor1963` lines 280–327, Lemmas 4.2–4.5, pp.510–512, supports parallelizable-boundary and framing-coset assertions for homotopy spheres. README:2333–2337 correctly distinguishes the all-almost-framed exact sequence as additional work using defect traces and clutching. Only the obstruction kernel receives an inverse into coker J. |
| 9.1 First three Hopf stems | `hatcher2002` lines 20407–20445, Corollary 4J.4 and the following EHP discussion, pp.474–475; lines 21512–21532, Proposition 4L.11, pp.498–499. The first two orders are 2; the square is nonzero. StringOrientation S2.3 supplies the third stem and normalized quaternionic generator. The retained work compares generators. |
| 9.2 Fourth/fifth stems | `gray2001` lines 4824–4840, §2/Propositions 2.1–2.2, pp.131–132; 4843–4888, Propositions 2.3–2.4 and fourth-stem calculation, pp.132–133. The full 2-local sequence, signs, differences and fourth-stem quotient agree. `kervairemilnor1963` lines 334–349 and printed p.512 give both integral zero entries. `fomenkofuchs2016` lines 13755–13845, §§27.3–27.4, pp.384–387, gives the stated odd-primary intervals and endpoint orders. The fifth-stem proof's Toda 5.9 text is uncertified; Gray does not supply that detailed proof. |
| 9.3 Sixth stem/representative | `kervairemilnor1963` printed p.512 gives ℤ/2; `hatcher2002` lines 21512–21532, Proposition 4L.11, pp.498–499, proves the Hopf-square nonvanishing. The composite ν₄∘Σ³ν₄ has source S¹⁰ and target S⁴, then stabilizes. Toda 5.11, p.46, and its exact unstable-generator normalization remain uncertified. |
| 9.4 Compatible table | The same Kervaire–Milnor p.512 table yields orders 2,2,24,1,1,2 in positive stems 1–6; stem zero is degree ℤ. The roadmap separately requires suspension and generator compatibility. A printed group table does not prove those map comparisons. |
| 9.5 Framed product and Arf | `browder1969` lines 218–219 (1.4, p.162) and 393–469 (3.2 and proof, pp.166–168) gives the framed quadratic/Arf comparison for odd middle dimension, including the exceptional framed interpretation for q=3. `snaith2010` lines 1153–1161, Example 8.3, gives an Arf-one S³×S³ framing. Neither citation alone identifies the chosen Hopf-product framing; that comparison is explicitly retained. |
| 9.6 Almost-framed dimension six | `bott1959` lines 103–112, pp.314–315, gives π₅SO=π₆SO=0; the p.512 sphere table gives π₆ˢ=ℤ/2. Thus the stated cokernel calculation is coker(0→ℤ/2)=ℤ/2. Its geometric identification uses §8.3, not a claim that Bott constructs almost-framed bordism. |
| 10.3 Orientation-preserving diffeomorphism | `milnor_hcobordism` lines 2852–2875, Theorem 9.1, p.107, confirmed by image: total dimension at least six, simply connected pieces and relative acyclicity. Here the trace dimension is seven. Correcting a reversing result by sphere reflection multiplies signs (−1)(−1)=+1. The compact/smooth/boundary conditions come from the collared witness. |
| 10.4 Direct recognition signatures | The preceding geometric theorem, Θ₆=0 and the explicitly valid native atlases give this adapter. `TauCeti/Geometry/Manifold/Orientation.lean:332` includes maximal-atlas membership, cover and positive transitions; Suggested.lean:175–195 explicitly retains both validity hypotheses and compact/T2/second-countable/smooth instances. Empty atlas data cannot satisfy the cover of S⁶. |

All README locators explicitly labelled uncertified were attempted or retained under their settled status: Toda 5.4, 5.6, 5.8, 5.9, 5.11, equation (5.8), and Chapter XIV. None is silently certified by agreement with a table.

Additional readable checks: `bott1959` lines 40–63, 83–120 and 832–948 verify the six rank-dependent index bounds and the periodic table (Theorems I–II and equations 7.4, 7.6, 8.2, 8.5, 8.7, 8.9). `wall1999` lines 2309–2321, 2498–2507, 3162–3199 and 8288–8318 verify the even zero criterion in dimension ≥6, odd zero criterion in dimension ≥5, even realization ≥6, odd realization ≥7, and the simply connected σ/8,0,Arf,0 table. The orientation-character misprint is recorded below. The source's general fundamental-group machinery is specialized to the roadmap's simply connected scope.

**Pinned library audit.** The manifest-pinned copies were used. Eleven object families were opened, rather than inferring availability from names:

| Native object | File and line at the pin | Relevant content and limits |
| --- | --- | --- |
| Homotopy groups | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:441`, 458, 547, 603 | Quotient of based generalized loops; Pi specializes to Fin n. Positive-degree groups and higher-degree commutativity do not carry geometric/smooth structure. |
| Orthogonal matrix group | `Mathlib/LinearAlgebra/UnitaryGroup.lean:293`–300 | Actual unitary specialization over ℝ; AAᵀ=1 and AᵀA=1. Both rank zero and disconnected O(n) retain their meanings. |
| Compactly generated category | `Mathlib/Topology/Category/CompactlyGenerated.lean:32`, 77, 81 | Carrier and fully faithful inclusion. Hausdorffness is not a field. No categorical coreflector/Cartesian-closed theorem is obtained merely by unfolding this definition. |
| Compact-generation topology | `Mathlib/Topology/Compactness/CompactlyGeneratedSpace.lean:67` | Coinduced tests from compact Hausdorff spaces; the additional adjunction/product/mapping-space comparisons remain work. |
| Poincaré predicate | `Mathlib/Geometry/Manifold/PoincareConjecture.lean:41` | A definition of a statement, not its proof; carries T2 but not compactness or second countability. The direct theorem includes both. |
| Euclidean embedding | `Mathlib/Geometry/Manifold/WhitneyEmbedding.lean:131` | Compact Hausdorff finite-dimensional smooth manifold embedding, with injective derivative; cannot be applied to an arbitrary uncoded quotient. |
| Bernoulli valuation | `Mathlib/NumberTheory/Bernoulli.lean:689` | Prime p, k>0 and p−1 dividing 2k give valuation −1. At p=2, k≥2 all hypotheses hold and the denominator is nonzero. |
| Oriented atlases | `TauCeti/Geometry/Manifold/Orientation.lean:178`, 183, 332 | Orientation-preserving groupoid tests map and inverse on sources; valid atlas includes cover and maximal smooth-chart membership. Compactness is not part of this predicate. |
| Boundary manifold/inclusion | `TauCeti/Geometry/Manifold/Boundary/Charts.lean:321`, 374 | Half-space model, differentiability order k≠0, smooth boundary inclusion. This is not a full collared bordism/gluing carrier. |
| Sphere connectivity | `TauCeti/AlgebraicTopology/Sphere/SimplyConnected.lean:408` | Euclidean Sⁿ simply connected for n≥2; does not cover S¹. |
| Mapping cylinder | `TauCeti/Topology/Homotopy/MappingCylinder.lean:81`, 399 | Ordinary quotient identifying (1,a) with f(a), and equivalence to the target. The pointed meridian and free end are not collapsed by this definition. |

The searches covered sphere homotopy groups, tangent frames, orthogonal matrices, orientation fields, compact generation, suspension/cones, reduced words, Whitehead products, framed bordism, stable normal bundles, quadratic refinements and J, in both pinned libraries. The headline conclusions were not found as existing theorems. The elementary Sphere/OrthogonalGroup abbreviations and atlas-preservation predicate serve the headline statements.

**Resolved supplier and ownership audit.** The roadmap search/show tools and direct source reads were used. Main was used for existing roadmaps, including nested SpinRepresentations; supplied open heads were used for new suppliers. Sixteen supplier families were resolved, with additional owners identified by R01–R02:

| Supplier | Resolved file/section and boundary |
| --- | --- |
| GeometricTopology, main | `TauCetiRoadmap/GeometricTopology/README.md:205`–225, 544–547, 592–594, 938–943: collars, gluing, tubes, connected sum, framed surgery, oriented cobordisms, smooth triangulation. Finite codes and sphere-defect comparisons are additional adapters here. |
| DifferentialGeometry, main | `TauCetiRoadmap/DifferentialGeometry/README.md:345`–355, 503–533; Layers 3 and 10: orientations, pointwise comparison, outward-first signs, flows, Sard and degree. Native groupoids are retained. |
| HeegaardFloer, main | `TauCetiRoadmap/HeegaardFloer/README.md:54`–63 resolves Lane M/F0 to Layers 1–2, with relative Morse–Smale/trajectory inputs. These are distinct from the handle and Whitney-displacement targets here. |
| MorseTheory, main | `TauCetiRoadmap/MorseTheory/README.md:430` (M3), 611 (M5): relative Morse data and finite-dimensional Morse–Bott negative-bundle attachments. Bott-specific Hessian/index calculations remain here. |
| AlgebraicTopology, main | `TauCetiRoadmap/AlgebraicTopology/Suggested.lean:962`, 1111, 1132, 1154, 1213: duality, relative Hurewicz/isomorphism, compact finite CW type, homological Whitehead. Their NDR/connectivity/CW and compact/T2/countability hypotheses were checked. Stages 4.4–4.6 and 8 supply raw suspension/cofibration and relative homotopy inputs, not a second normalized Freudenthal proof. |
| UniversalCovers, completed | `Completed/UniversalCovers/README.md:126`–141: based homotopy functoriality/transport, higher cover isomorphisms and higher homotopy of S¹. |
| TopologicalKTheory, main | `TauCetiRoadmap/TopologicalKTheory/README.md:299`–329, 430–448, 542–565, 702 onward, 1254–1278: finite Stiefel connectivity, π₁SO, shared classifiers, BSO simple connectivity, positive Adams operations and c(a)=2u²,c(b)=u⁴. Early classifiers precede this roadmap's Bott; T7 applications follow it. |
| RiemannianGeometry, main | `TauCetiRoadmap/RiemannianGeometry/README.md:538`–550, 556–605; R1–R3: normalized Hopf maps, sphere suspension range, metrics/Jacobi/broken geodesics. Its R3.3c comparison uses the existing projective chart/bundle owners; §5.0b can consume it. |
| CharacteristicClasses, main | `TauCetiRoadmap/CharacteristicClasses/README.md:419`–438, 1463, 1489, 1534–1565: actual singular counit (R01), normalized character, formal L/Â polynomials, sphere tangent/hyperplane comparison. Index equality is supplied separately. |
| SpinRepresentations, main | `TauCetiRoadmap/RepresentationTheory/SpinRepresentations/README.md:881`–900, L7: real Clifford table and algebraic periodicity with p positive and q negative generators. The shorter sibling path was not treated as a missing supplier. Topological Bott is distinct work. |
| SpinGeometry, main | `TauCetiRoadmap/SpinGeometry/README.md:395`–423, 775–789, G4/G6.5: Spin lifts and circle/torus conventions; Lie circle is nonbounding. |
| TangentialBordism, supplied head | `TauCetiRoadmap/TangentialBordism/README.md:444`–475, 740–804, 859–878, 1015–1114, 1841–1893: collared witnesses, ordinary operations/Adams tower, honest-rank marked finite PT, quadratic refinement and Spin filling. Fixed relative faces must already be transverse. Its finite-quadratic-Arf contract is explicitly declared in the supplier text. |
| StringOrientation, supplied head | `TauCetiRoadmap/StringOrientation/README.md:529`–613, S2.2–S2.3: coefficient PT/product and independently supplied third stem with quaternionic normalization. Its detailed third-stem route uses EllipticCohomology; no third-stem proof here feeds that route. |
| IndexTheory, supplied head | `TauCetiRoadmap/IndexTheory/README.md:740`–751, 855–866, I7.2/I7.5: closed oriented signature and closed Spin complex chiral index. These do not require homotopy-sphere classification. |
| GeneralizedCohomology, main | `TauCetiRoadmap/GeneralizedCohomology/README.md:938`–959, 1020–1040, 1180–1193 (R02) and 2212–2244, G5.6: quaternionic charts/Hopf quotient and rational stable Hurewicz/positive sphere vanishing. |
| DGFloer, main | `TauCetiRoadmap/DGFloer/README.md:461`–464, 650–659, Layer 1.2/1.4: abstract CW approximation (specific counit belongs to CharacteristicClasses), Serre spectral sequences and Serre-class Hurewicz. Applying the finitely-generated class to finite simply connected spheres gives the required finiteness input. |

For the complex side of R02, main `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1407`–1442, K7.1, constructs the actual projective chart family, including CP¹. RiemannianGeometry R3.3c at the lines above supplies the based S³→CP¹≃S² map comparison. At (z₀,z₁)=(1,0) its value is the north pole (0,0,1), and the squared norm formula is (|z₀|²+|z₁|²)²=1. These fix the complex chart/basepoint adapter without a new construction here.

Board-package and supplied-open-head searches by object were also performed. The relevant earlier PT, classifier, Morse, quadratic and index owners agree with the resolved contracts above. The older HomotopySpheres proposal appearing in search results is the work this PR develops, as identified in the supplied PR provenance; it was not treated as a second independent owner or a requirement to discard this continuation. The namespace search found that provenance match, not a collision with a different roadmap. No declaration was added during review. Ownership against open pull requests whose files were not supplied was not independently checked.

HomotopySpheres owns the high-dimensional h-cobordism/classification route, the sphere-specific pointed and smooth-framing comparisons, James/EHP and independently owned low stems, almost-framed/filling/Wall comparisons and the seven-sphere/E₈ applications. R01–R02 trim only already-owned generic constructions. No route-specific prime restriction, computational algorithm, sorry-valued data, option override, copied source passage or external-folder edit was found. The roadmap retains API prose, discriminating Checks, per-target dependencies and layer Examples/Dependencies. GeometricTopology and GeneralizedCohomology on main were read for the repository's roadmap shape.

## Not verifiable

This review is finished; the following are limits on source certification, not fabricated counterexamples. No manifest or PR file was edited. Fetches used the sources service; no access control was bypassed.

- **Toda, `toda1962`:** all explicitly uncertified locations remain uncertified, including 5.4/5.6/5.8/5.9/5.11, equation (5.8), and Chapter XIV. No readable legal copy was obtained. A service bibliographic match to an Elsevier DOI prefix does not identify this Princeton book and was not used as evidence. The settled uncertified disposition was preserved. Gray and Hatcher support the narrower comparisons identified above; they do not certify Toda's numbering or the entire fifth-stem proof.
- **`james1955`:** the DOI reached a JSTOR landing page without a legal PDF; the original reduced-product proof and numbering were not certified.
- **`steenrod1967`:** the Project Euclid landing page yielded no PDF through the service. The convenient-category text was not certified from recollection.
- **`pontryagin1959`:** the publisher route ended in an access-control redirect. Chapter II remains unread; the available Milnor, Browder and named PT suppliers provide only the evidence explicitly stated above.
- **`whitehead1978`, `steenrod1951`, `husemoller1994`, `kosinski1993`:** bibliographic source-service searches did not obtain readable legal texts. Their general background locators remain unchecked.
- **`smale1961`:** the JSTOR landing page supplied no legal PDF; the h-cobordism theorem was verified in Milnor instead.
- **`adams1960` and `adamsatiyah1966`:** the original Adams DOI yielded no PDF; the Adams–Atiyah publisher route returned HTTP 403. The explicit K-theoretic divisibility arithmetic was recomputed, but these papers' theorem/proof locators were not certified in this round.
- **`milnor1963morse`:** bibliographic lookup returned a review by M. F. Smiley rather than the book. That DOI was discarded as evidence for Morse Theory. The h-cobordism lecture text and the named MorseTheory supplier were read separately.
- **Previously uncertified `thom1954`, `hirsch1976`, `kervaire1958`:** their settled source-access status was retained, not turned into renamed requests.
- Finite-atlas codes, universe transport, protected-collar and tangent/normal adapters are new mathematical work, not literal historical-source theorems. They were reviewed through their statements, named inputs and discriminating examples. Snaith's Arf-one existence example is not a proof for this roadmap's particular product framing.
- TangentialBordism's finite-quadratic-Arf supplier contract is readable; its own design-plan registration was not certified from a readable supplier plan. This is not a new undeclared gap charged to HomotopySpheres.

The 11 unresolved, unsettled source requests are consolidated in `needs-references.toml`. Resolved downloads and settled uncertified texts are excluded from that request list. Two initial institutional filenames returned works by Ranicki rather than the requested Browder/Wall works; those files were discarded for those citations, and the correctly titled Browder and Wall texts were fetched and read. Only the passages listed in the evidence tables are claimed as source-verified.

## Source issues

- **Misprint** in bott1959 at §8.3, printed p.335: the source says the involution acts on U(2n) with fixed group Sp(n); it should be on U(4n) with fixed group Sp(2n), matching the displayed homogeneous space; affects the proof.
- **Misprint** in bott1959 at §8.6, printed p.335: the source says quaternionic n-by-n matrices form Sp(2n), with complex commutant U(2n); it should be Sp(n) and U(n), consistent with the next fixed-group statement; affects the proof.
- **Misprint** in wall1999 at Theorem 13A.1's proof, printed p.173, line 3: the source says the nontrivial degree-three group has negative orientation character; it should be positive orientation character; affects a stated result; corrected in print at wall1999_errata, correction for p.173 line 3 (`wall1999_errata` line 162).
- **Gap** in fomenkofuchs2016 at §27.4, printed pp.385–386: the source says the full endpoint calculation requires a further nonzero differential and leaves its proof to the reader; it should be supplemented by that Steenrod-power/transgression calculation before the full theorem follows; affects the proof.
