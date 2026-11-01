# Review of HomotopySpheres (pull request #1287 at 52ebd6f)

**Verdict:** accepted

No findings remain. This is an incremental re-review of 124 changed lines since 271e7c1. Both previous ownership defects are repaired; the changed passages introduce no new blocking defect. The gate, targeted build and direct elaboration pass. This verdict means ready for a human's final approval, not AI approval or merge.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/HomotopySpheres/README.md:821–837` imports CharacteristicClasses C1.2b and AlgebraicTopology Stage 4.7, defines q_X=ε_X∘c_X, and retains only pointed compact-generation/cofibration comparisons. The counit and realization CW structure are no longer reconstructed.
- R02 — repaired: `TauCetiRoadmap/HomotopySpheres/README.md:1607–1619` imports the existing complex/quaternionic Hopf maps and projective charts, fixes the quaternionic basepoints and fibre inclusion, and retains the based LES, finite-framing and sign comparisons.

No supplied repair disposition marks either finding not actionable. The earlier findings discussed inside r5 were already repaired; this round's two findings are the R01–R02 above.

## Verified sound

**Scope and mechanical evidence.** The inspected head is `52ebd6f8bedb92522703faa384d71d67d5ce2636`. Only README.md changed since r5 (99 insertions, 25 deletions); Suggested.lean is identical. The worktree is clean, and the diff outside `TauCetiRoadmap/HomotopySpheres/` is empty. The root README's Writing a roadmap checklist and CONTRIBUTING were read; GeometricTopology and AlgebraicTopology/GeneralizedCohomology on main supplied shape comparisons. No PR file or source manifest was changed.

The worker's gate at this head has every counter zero, including build. A fresh gate run returned:

```text
gate HomotopySpheres: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

A separate targeted `lake build TauCetiRoadmap.HomotopySpheres.Suggested` completed successfully. Direct `lake env lean` elaboration also succeeded, with exactly 15 `sorry` warnings and no other warnings or errors. The fresh movable dependency check returned:

```text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Every Needs line was read. The four additional graph edges lead to existing owners on main; the early classifier → Bott → later real K-theory division remains unchanged. The newly explicit suppliers are not late-consumer dependencies. The citation resolver, run against main `fa41b37`, the indexed open heads and the actual pinned Lake packages, found no unresolved roadmap citations or Lean names. Its output was treated as a locator aid, with the relevant supplier text opened below.

**Lean acceptance and padding.** A scratch copy with `#check @name` for all 18 declarations was elaborated afresh. All three definitions and fifteen theorem signatures agree with the README. Compactness, T2, second countability, smoothness, both valid-atlas hypotheses, positive dimension and stable-range inequalities remain in the elaborated types; no binder was lost and nothing required changing. A second scratch copy attempted `simp`, `rfl` and `infer_instance` as individually closing tactics at each of the 15 admissions. All 15 still needed `sorry`. The unchanged r5 object-level search and the pinned interfaces reopened here supply no one-library-lemma proof of a headline. No padding finding is made.

The headline inventory remains: smooth simply connected h-cobordism; the geometric Θ quotient and diffeomorphism comparison; James/EHP and stable sphere products; Hopf exclusion and sphere framing; real Bott and the O/SO table; J and finite/stable PT; almost-framed/filling/Wall groups and exact sequences; cokernel-J/Kervaire comparison; low stems and Θ₆=0; seventh stem, Θ₇, Eells–Kuiper and E₈ boundaries; oriented/unoriented six-sphere recognition. The 15 native signatures cover sphere framing (1), Bott periodicity and base entries (8), stems four through seven (4), and recognition (2). The module docstring individually identifies the missing geometric, stable-colimit, James/EHP, mapping-cone, Wall and plumbing carriers for the remaining headlines. The repairs add no stand-in and do not alter this inventory.

**Changed-source verification.** Hatcher was fetched through the sources service from the author's Cornell page, reusing `hatcher2002`. Four numbered locators plus the preceding uniqueness argument were read in the retrieved text:

| Changed claim | Source locator and what it supports |
| --- | --- |
| §3B CW approximation and comparison | `hatcher2002` line 15335: uniqueness argument on printed p.352; line 15375: Proposition 4.13, printed p.353. The text treats arbitrary spaces and constructs CW approximations. It distinguishes weak equivalence from homotopy equivalence. The based, compact-generation and actual-counit naturality comparisons are explicitly this roadmap's adapters on the named suppliers. |
| §3B simplicial realization | `hatcher2002` line 23328: Proposition A.19, printed pp.537–538; line 23365: one cell per nondegenerate simplex after collapsing degeneracies. The roadmap imports the corresponding native CW theorem from AlgebraicTopology rather than owning it twice. |
| §5.0b complex Hopf bundle | `hatcher2002` line 16405: Example 4.45, printed pp.377–378; chart trivializations immediately precede it at line 16399. Source S³, base CP¹=S² and fibre S¹ agree. The roadmap's north-pole/chart signs come from R3.3c and were computed separately. |
| §5.0b quaternionic Hopf bundle | `hatcher2002` line 16424: Example 4.46, printed p.378. Source S⁷, base HP¹=S⁴ and fibre S³ agree. Right-line conventions and the positive quaternionic chart are taken from GeneralizedCohomology, not guessed from Hatcher's abbreviated analogy. |

No source passage is copied into this report. A first fetch lacked the required author-page classification; the classified fetch succeeded. There is no new unresolved source request. The older inaccessible texts remain subject to the limitations below, without new certification claims.

**Seeded sample in this incremental scope.** None of the 15 sampled subsections was directly rewritten; the modified §5.0b/§9.1 inputs were followed into finite PT and the compatible stem/recognition chain. The retained rows below cover 1.1, 1.4, 1.5, 2.2, 2.3, 2.4, 5.0, 8.2, 8.3, 8.4, 9.4, 9.7, 10.1, 10.2 and 10.4 (the latter through the atlas-preservation and two direct-recognition rows). Their untouched source and mathematical audit is carried from [r5], as required for an incremental review. This round freshly verifies the changed Hatcher locators and maps; it does not claim to have fetched Milnor, Kervaire–Milnor, Bott, Browder or Toda again. The explicitly uncertified Toda passages are unchanged.

**Pinned objects reopened.** The manifest-pinned files, not a newer library, were used:

| Object | File and line | Content and limit checked |
| --- | --- | --- |
| Singular functor | `Mathlib/AlgebraicTopology/SingularSet.lean:50` | `TopCat.toSSet` uses continuous singular simplices. |
| Realization and adjunction | `Mathlib/AlgebraicTopology/SingularSet.lean:65`, `:73` | `SSet.toTop` and `sSetTopAdj` exist with the stated adjunction direction; the native counit is the map the CC supplier upgrades to a weak equivalence. The adjunction alone does not assert CW or weak-equivalence properties. |
| Homotopy groups | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:441`, `:458`, `:547`, `:603` | Based-loop quotient, degree specialization, positive-degree group and higher-degree commutativity. No smooth or framed data is part of this definition. |
| Orthogonal group | `Mathlib/LinearAlgebra/UnitaryGroup.lean:293` | Real unitary specialization, retaining O(n), not merely its identity component. |
| Recognition predicate | `Mathlib/Geometry/Manifold/PoincareConjecture.lean:41` | A proposition, not a proof; it does not supply compactness or second countability. |
| Orientation | `TauCeti/Geometry/Manifold/Orientation.lean:178`, `:183`, `:332` | Groupoid tests forward and inverse transitions; valid atlases include maximal-atlas membership and cover. Empty atlas data cannot satisfy the hypothesis on S⁶. |

**Resolved suppliers and duplication.** The repaired objects were searched by object in main, board packages and the supplied open-work index using `roadmaps grep/show` and direct file reads. Results pointing to revisions of existing roadmaps were checked on main; the supplied new-roadmap heads were used for TangentialBordism, StringOrientation and IndexTheory. No additional owner of the pointed counit adapter or finite Hopf/PT comparison was found. The older HomotopySpheres proposal is the provenance of this continuation, not an independent competing owner. Suggested.lean adds no declaration this round and its namespace is unchanged.

| Supplier | Reopened location and resolution |
| --- | --- |
| CharacteristicClasses | `TauCetiRoadmap/CharacteristicClasses/README.md:419–438`, C1.2b: actual counit and weak-equivalence proof. This now supplies the construction identified by previous R01. |
| AlgebraicTopology | `TauCetiRoadmap/AlgebraicTopology/README.md:817–838`, Stage 4.7: actual realization, nondegenerate cells and sub-simplicial subcomplexes. Its basepoint vertex is enough for §3B's cofibration adapter. |
| DGFloer | `TauCetiRoadmap/DGFloer/README.md:461–464`: abstract CW approximation explicitly leaves the specific counit to CC; Layer 1.2 supplies the based fibration LES and Layer 1.4 the Serre-class input. |
| GeneralizedCohomology | `TauCetiRoadmap/GeneralizedCohomology/README.md:938–959`, `:1180–1193`, G4.0a–b: right-quaternionic charts, smooth Hopf quotient, unit-quaternion comparison, last-coordinate line and positive (1,i,j,k) chart. G5.6 at `:2212–2244` supplies rational stable vanishing. |
| ComplexKahlerGeometry | `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1407–1442`, K7.1: the designated projective carrier, ratio charts and complex orientation. |
| RiemannianGeometry | `TauCetiRoadmap/RiemannianGeometry/README.md:538–561`, R3.3c: actual complex bundle, north-pole identification and transition s₁=s₀w⁻¹. R3.4's normalized suspension comparison remains the sphere stable-range supplier. |
| UniversalCovers | `Completed/UniversalCovers/README.md:126–141`: higher homotopy of covers and π_i(S¹)=0 for i≥2, used in the exceptional complex rank. |
| GeometricTopology | `TauCetiRoadmap/GeometricTopology/README.md:205–225`, `:544–547`, `:592–594`, `:938–943`: collars/gluing/tubes, connected sum, framed surgery, oriented cobordism and smooth triangulation. |
| DifferentialGeometry / HeegaardFloer / MorseTheory | `TauCetiRoadmap/DifferentialGeometry/README.md:345–355`, `:503–533`: orientations and outward-first signs; `TauCetiRoadmap/HeegaardFloer/README.md:56–63`: Lane M/F0 mapping; `TauCetiRoadmap/MorseTheory/README.md:430`, `:611`: relative Morse and Morse–Bott attachments. Their unchanged contract audit is also retained from [r5]. |
| TopologicalKTheory | `TauCetiRoadmap/TopologicalKTheory/README.md:299–329`, `:430–448`, `:542–565`, `:1254–1278`: finite Stiefel/low SO, shared classifiers, oriented stabilization and later real Bott applications. The Hopf repair does not require that later ring calculation in its first-two-stem proof. |
| SpinRepresentations / SpinGeometry | `TauCetiRoadmap/RepresentationTheory/SpinRepresentations/README.md:881–904`: Clifford signature/table; `TauCetiRoadmap/SpinGeometry/README.md:395–423`, `:775–789`: Spin lifts and the two circle structures. |
| TangentialBordism | Supplied head, `TauCetiRoadmap/TangentialBordism/README.md:444–475`, `:1016–1045`, `:1842–1865`: collared structured witnesses, finite-rank marked PT, and geometric quadratic refinement. The existing finite quadratic algebra contract remains its declared supplier gap. |
| StringOrientation | Supplied head, `TauCetiRoadmap/StringOrientation/README.md:530–548`, `:580–613`: multiplicative stable PT and the independently supplied normalized third stem. The new Hopf adapter compares its ν, not re-proves the supplied third-stem calculation. |
| IndexTheory | Supplied head, `TauCetiRoadmap/IndexTheory/README.md:740–751`, `:855–866`: signature and twisted Spin index; unchanged downstream use. |

The remaining unchanged supplier declarations, library searches and ownership boundaries are retained from [r5]. Ownership against open pull requests whose files were not supplied was not independently checked. This is not a new full audit of unrelated roadmap folders. The changed text preserves general pointed spaces, disconnected negative controls, low-rank exceptions and all-prime downstream claims. Definitions keep API prose and at least three discriminating Checks; the new checks fix maps and signs, not only group orders.

**Adversarial table: changed statements and their consumers.** These 33 rows record fresh computations. “Pass” is agreement on the displayed instances, not a proof of each general target. Repeated scope/contract descriptions of the same construction are grouped with that construction's row.

| Statement | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| §3B, README:822–825: QX and c_X | Point, S¹, discrete S⁰ | k(*)=*; k(realization)=realization for these CW spaces; π₁ is 0, ℤ, 0 and component counts are 1, 1, 2 on both sides | Pass; transport of the supplied carrier |
| §3B, README:825: q_X=ε_X∘c_X | Point and winding-one singular circle loop | q_*(0)=0; q_*(1)=ε_*(1)=1 in ℤ | Pass; the zero map would give 0 on the circle |
| §3B: designated basepoint | S⁰ based at its first point; S¹ based at 1 | q_X(vertex(x₀))=x₀; S⁰ vertex image is first point, not second | Pass; pointed structure specified |
| §3B: basepoint cofibration | One vertex in discrete S⁰; one vertex in realization of Sing S¹ | Subcomplex has one 0-cell and zero positive cells; relative inclusion is a CW-subcomplex inclusion in both cases | Pass; closed cofibration transported through c_X |
| §3B: component isomorphism | Discrete S⁰ | π₀ map is {0↦0,1↦1}, image size 2; constant replacement has image size 1 | Pass; consumes counit theorem |
| §3B: homotopy-group isomorphisms | S¹, degree-one generator; simply connected S² | π₁ map ℤ→ℤ sends 1↦1; π₁ map 0→0 has kernel 0 and image 0 | Pass; no simple-connectivity restriction added |
| §3B: Qf=c_Y⁻¹∘\|Sing f\|∘c_X | f=id and based degree-two circle map | Qid_* sends 1↦1; Qf_* sends 1↦2 | Pass; actual conjugated map, not an arbitrary isomorphism |
| §3B: q_Y∘Qf=f∘q_X | Degree-two circle map; constant based circle map | Two composites send 1↦2 and 1↦2; constant case sends 1↦0 and 1↦0 | Pass; identity replacement for Qf fails degree-two case |
| §3B: functoriality implicit in Q | Circle maps of degrees 2 and −1 | Q(gf)_*(1)=−2; (Qg∘Qf)_*(1)=(−1)·2=−2; Qid_*(1)=1 | Pass; c_Y∘c_Y⁻¹ cancels |
| §3B: comparison of cofibration models | Cylinder replacement of q:S¹-model→S¹ | Retraction∘inclusion=id on the model, giving 1↦1; the homotopy triangle to S¹ has winding 1 on both routes | Pass; comparisons retain maps to X |
| §3B API and Checks, README:896–905 | Point, S¹, S⁰ and degree-two map | Positive π_i(*)=0; circle generator 1; component count 2; naturality outputs 2=2 | Pass; four distinct tests, not only abstract group orders |
| §3B derived James scope (dependent statement) | Connected S¹; disconnected S⁰ | π₁ J(QS¹)=ℤ=π₁ ΩΣ(QS¹), generator 1↦1; π₀ J(S⁰)=ℕ versus π₀ ΩS¹=ℤ | Pass; disconnected input still excluded from connected theorem |
| Scope/contracts, README:74–85,283–285,350–353,374–378 | Sing of a point and of two discrete points | Realizations have 1 and 2 nondegenerate vertices; counit fixes each point | Pass; Mathlib supplies adjunction, AT supplies CW, CC supplies weak equivalence |
| Complex Hopf contract, README:366–373 | z=(1,0),(0,1) | h(z)=(0,0,1),(0,0,−1); both squared norms 1 | Pass; north/south conventions match R3.3c |
| Complex chart orientation | w=x+iy near north pole | h(1,w)/normalization has tangent derivative (x,y)↦(2x,2y), determinant 4>0; conjugating w gives determinant −4 | Pass; positive complex chart retained |
| Quaternionic Hopf contract, README:407–412 | Projective ranks r=0,1 | Dimensions (total,base,fibre)=(3,0,3),(7,4,3); differences 3 in both cases | Pass; rank-zero base is a point, not an S⁴ |
| Quaternionic right action | Fibre points (0,i), acting by j; reversed order | (0,i)·j=(0,k), whereas (0,j)·i=(0,−k); both project to the last line | Pass; right-module convention retained, noncommutativity not discarded |
| Quaternionic coordinate orientation | Bases (1,i,j,k),(1,i,j,−k) | Change-of-basis determinants +1,−1 | Pass; scalar-forgetting convention cannot silently replace the supplied basis |
| §4A low adapter, README:1301–1311: stable range | n=4,5; excluded n=3 | n+2≤2n−2 gives 6≤6,7≤8, but 5≤4 is false | Pass; quaternionic LES handles n=3 instead |
| §4A low adapter: n=3 | S³→S⁷→S⁴ | π₆S⁷=π₅S⁷=0; ker ∂=0 and im ∂=π₅S³; ℤ/2→ℤ/2 sends 1↦1 | Pass; actual connecting map retained |
| §4A low adapter: n=2 | S¹→S³→S² | π₄S¹=π₃S¹=0; projection ℤ/2→ℤ/2 has 1↦1 | Pass; projection direction is S³ to S² |
| §4A low adapter: n=0,1 | Based S⁰, S¹ | π₂S⁰=0 and π₃S¹=0; neither equals ℤ/2 | Pass; exceptional dimensions kept separate |
| §5.0b c=2 curve case, README:1575 | Complex Hopf map, positive fibre calibration | π₃S³=ℤ→π₃S²=ℤ takes the chosen degree-one class to Hopf class with invariant 1; adjacent π₃S¹ and π₂S¹ are 0 | Pass; supplied projection replaces reconstruction |
| §5.0b exceptional complex rank, README:1607–1610 | Hopf projection on fourth homotopy | Exact segment 0→ℤ/2→ℤ/2→0; nonzero class maps to nonzero class | Pass; agrees with §4A and Hatcher 4.45 |
| §5.0b quaternionic basepoints, README:1611–1615 | a=1,−1 in unit quaternions | Inclusion gives (0,1),(0,−1), distinct; projection of both is [0:1] | Pass; fibre unit maps to total-space basepoint |
| §5.0b quaternionic connecting map | n=1 projective Hopf bundle | Source π₆S⁴=ℤ/2, target π₅S³=ℤ/2; ∂(0)=0, ∂(1)=1; zero-map kernel would have size 2 instead of 1 | Pass; matches supplier's 7→4 geometry |
| §5.0b naturality/sign diagrams, README:1616–1619 | Identity comparison and fibre frame reflection | Identity preserves the generator; frame reflection reverses integral PT degree +1→−1, whose mod-two images are both 1 | Pass; finite framing comparison is still an explicit target |
| §5.0b second-offset range | c=1,2,3,4 | π₃S¹=0; π₄S²=π₅S³=π₆S⁴=ℤ/2 | Pass; uniform ℤ/2 starts at c=2 |
| §5.0b complex transition Check, README:1640 | w=e^(iθ); w=i | s₀=(1,w)/√2, s₁=(w⁻¹,1)/√2=s₀w⁻¹; at i this is (−i,1)/√2; winding −1 | Pass; using w gives winding +1 and fails at i |
| §5.0b quaternionic Check, README:1641 | Fibre ±1; reflected fourth coordinate | Points (0,±1) distinct with common projection; orientation factors +1 and −1 | Pass; tests both map and convention |
| §9.1, README:2463–2472: η and ν from supplied maps | Stabilized complex/quaternionic Hopf maps | η has order 2; η² has order 2; supplied ν has order 24, whereas 0 has order 1 | Pass; Hopf/PT adapters feed the existing generator comparisons |
| Dependent §9.4 stem table | Degrees 0 through 6 | ℤ, ℤ/2, ℤ/2, ℤ/24, 0, 0, ℤ/2 on both sides; replacement leaves marked first three generators unchanged | Pass; compatibility remains a target, not inferred from orders alone |
| Dependent §9.7 and §10.2 | Sixth-stem Kervaire map and standard S⁶ | id:ℤ/2→ℤ/2 has kernel {0}; hence Θ₆ has one element; standard witness trace has dimension 7 | Pass; repaired early comparisons do not change this argument |

**Adversarial table: untouched statements.** The following 193 rows are carried from [r5], with the original computed values and limitations. The five rows whose objects were directly repaired are replaced by the fresh rows above.

| Statement | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| Manifold orientation convention | Oriented interval; reflection | Endpoint signs (−1,+1); derivative sign −1 | Pass; boundary signs retained  Carried from [r5]. |
| Small-code realization | Zero charts; duplicate identity charts | Empty quotient has 0 points; two copies of each x become 1 | Pass  Carried from [r5]. |
| Proper chart domains | One chart (−1,1) versus ℝ | Chart images (−1,1) and ℝ, respectively; not equal | Pass  Carried from [r5]. |
| Compact-generation convention | Point, empty space, ℝ | k(*)=*; k(∅)=∅; k(ℝ)=ℝ | Pass on these cases; general limits use k  Carried from [r5]. |
| Stable versus honest frame | S² | TS²⊕ℝ has rank 3 and is trivial; Euler(TS²)=2 | Pass; cannot drop the added line  Carried from [r5]. |
| Normal splitting | S²⊂ℝ³ | Tangent rank 2 + normal rank 1 = 3; outward normal x≠0 | Pass  Carried from [r5]. |
| Proper collar width | Radial D⁷, ε=1/2 or 1 | Endpoint radii 1/2 or 0; only 0<ε<1 allowed | Pass  Carried from [r5]. |
| PT normalization | Positive framed point; reflected frame | Degrees +1 and −1; negative tube derivative rejected | Pass  Carried from [r5]. |
| Surgery normalization | −E₈, +E₈, hyperbolic plane | Signatures −8,+8,0; coordinates −1,+1,0 | Pass  Carried from [r5]. |
| 1.1 h-cobordism | M×I; disc from ∅ | Retraction composites id,id; π₀(∅)=∅ versus π₀(Dⁿ)={*} | Pass; oriented specialization supplies endpoints  Carried from [r5]. |
| 1.1 reversal/gluing | Two cylinders | End signs (−,+) swap; glued interval still has (−,+) | Pass  Carried from [r5]. |
| 1.1 disconnected/empty witnesses | (M⊔N)×I; ∅×I | Boundary counts 2+2 and 0 | Pass; supplied boundary diffeomorphism gives both counts  Carried from [r5]. |
| 1.2 elementary handle | One λ-handle | Hᵢ(W,V)=ℤ at i=λ, 0 otherwise | Pass; locator covers this part  Carried from [r5]. |
| 1.2 cancellation matrix | Matrix [1] versus [2] | Kernel/cokernel (0,0) versus (0,ℤ/2) | Pass; [2] is not a cancellation pair  Carried from [r5]. |
| 1.3 handle trading | Total dimension 6 | Boundary n=5: remove indices 0,1,5,6; remaining indices 2,3,4 | Pass with total/boundary indexing kept explicit  Carried from [r5]. |
| 1.4 local Whitney move | Local opposite-sign pair | Unsigned count 2→0; signed count +1−1=0→0 | Pass  Carried from [r5]. |
| 1.5 common-component arcs | P=(S³×{a})⊔(−S³×{b}), Q={c}×S³ | Componentwise intersections (1,−1); total 0; connecting arcs in P: none | Correctly excluded  Carried from [r5]. |
| 1.5 dimension bounds | p=q=3 versus p=2,q=3 | Codimensions 3,3 versus 3,2 | Pass; latter goes to 1.6  Carried from [r5]. |
| 1.6 exceptional complement | Five-dimensional level | codim Q=2; codim attaching S¹=4; π₁(incoming∖S¹)=0 | Repaired hypothesis/source agree  Carried from [r5]. |
| 1.7 product theorem | Cylinder on S⁵ | Total dimension 6; relative homology 0; both π₁=0 | Pass  Carried from [r5]. |
| 1.7 excluded dimension | A five-dimensional trace | 5≥6 is false | No smooth four-sphere consequence claimed  Carried from [r5]. |
| 2.1 homotopy-sphere code | S⁶ versus point | Reduced H₆=ℤ versus 0; π₁(S⁶)=0 | Pass  Carried from [r5]. |
| 2.1 universe/marking | ULift of S⁶; compose marking with reflection | Same geometric cycle; marking degree +1→−1 | Pass; marking not extra moduli  Carried from [r5]. |
| 2.2 connected sum | Sⁿ#Σ, n≥1 | [Sⁿ]+[Σ]=0+[Σ]=[Σ] | Pass  Carried from [r5]. |
| 2.3 inverse | Σ and −Σ | [Σ]+[−Σ]=0; punctured-cylinder witness has sphere end | Pass; no dimension-four classification assumed  Carried from [r5]. |
| 2.4 Θ quotient | n=1; n=0; n=5 | Θ₁=0; n=0 excluded; trace dimension for n=5 is 6 | Pass  Carried from [r5]. |
| Sphere definition | n=0,1,6 | S⁰ has 2 points; S¹ is circle; tangent rank of S⁶ is 6 | Pass  Carried from [r5]. |
| 3A.1 coreflection | Compact interval square | k(I×I)=I×I; both evaluation composites give f(x) | Pass  Carried from [r5]. |
| 3A.2 reduced cone | *; S⁰ | C(*)=*; C(S⁰)=interval with apex as basepoint | Pass  Carried from [r5]. |
| 3A.2 contraction | u=0,1 | [a,(1−u)t]=[a,t] or apex | Pass  Carried from [r5]. |
| 3A.2 suspension | *; S⁰; degree-two circle map | Σ(*)=*; ΣS⁰=S¹; suspended degree=2 | Pass  Carried from [r5]. |
| 3A.2 pinch/inverse | ΣS⁰ | Fold∘pinch degree 2; reflection degree −1 | Pass  Carried from [r5]. |
| 3A.2 smash | S⁰∧S⁰; S¹∧S¹ | 2 points versus product's 4; S² with swap degree −1 | Pass  Carried from [r5]. |
| 3A.2 mapping cone | S⁰→*; id:S¹→S¹ | Cone H₁=ℤ; identity-cone reduced homology 0 | Pass  Carried from [r5]. |
| 3A.2 cone extension | F([a,t])=H(1−t,a) | t=1 gives gf(a); t=0 gives constant | Pass  Carried from [r5]. |
| 3A.2 Puppe exactness | f=id on S¹, Y=S¹ | im([C_f,Y]→[S¹,Y])={0}=ker(id:ℤ→ℤ) | Pass  Carried from [r5]. |
| 3A.2 mapping cylinder | S⁰→*; id S⁰ | Reduced cylinder is interval; id cylinder has 2 components | Pass  Carried from [r5]. |
| 3A.2 loop API | Winding 1 and 2 in S¹ | Concatenation 1+2=3; reversal 1→−1 | Pass  Carried from [r5]. |
| 3A.3 stable colimit | Degree 1 and 0 | Stable degree classes 1 and 0 remain distinct in ℤ | Pass  Carried from [r5]. |
| 3A.3 product signs | Two degree-one stable classes | Sign (−1)¹=−1; η²=−η² since 2η²=0 | Pass  Carried from [r5]. |
| 3A.4 stable range | (n,k)=(8,6),(9,7),(7,6) | 14≤14,16≤16 true; 13≤12 false | Pass  Carried from [r5]. |
| 3B.1 reduced words | (x,*,y); empty word | Length 2; unit length 0 | Pass  Carried from [r5]. |
| 3B.2 filtration | J₁S¹/J₀; J₂S¹/J₁ | S¹ with H₁=ℤ; S² with H₂=ℤ | Pass  Carried from [r5]. |
| 3B.3 integral coefficients | M(ℤ/2,2) smash square | H₅=Tor₁(ℤ/2,ℤ/2)=ℤ/2; naive tensor degree 5 is 0 | Pass; freeness qualification essential  Carried from [r5]. |
| 3B.3 James map | One/two circle letters | π₁ΩS² values 1 and 1+1=2 | Pass  Carried from [r5]. |
| 3B.4 connected equivalence | X=S¹ | π₁JS¹=ℤ=π₁ΩS²; map sends 1→1 | Pass  Carried from [r5]. |
| 3B.4 disconnected control | X=S⁰ | π₀JS⁰=ℕ, π₀ΩS¹=ℤ; not bijective | Correctly excluded  Carried from [r5]. |
| 3B.5 James–Hopf | Words of lengths 1,2,3 | Pair counts 0,1,3 | Pass  Carried from [r5]. |
| 3C.1 EHP exactness | n=2,q=4 | ℤ→ℤ→ℤ/2→0; im(×2)=2ℤ=ker(mod2) | Pass  Carried from [r5]. |
| 3C.1 left endpoint | n=2 | First term π₄S²; extra preceding comparison needs i=5>4 | Pass; not asserted  Carried from [r5]. |
| 3C.2 signs | η₂, −η₂; P generators ±1 | H(η₂)=1,H(−η₂)=−1; P(±1)=±2η₂ | Pass  Carried from [r5]. |
| 3C.3 zero Toda bracket | f=g=h=0 on Sᵐ, m≥3 | Indeterminacy 0+0=0; bracket {0} | Pass  Carried from [r5]. |
| 3C.3 undefined bracket | f=g=id, h=0 | deg(gf)=1≠0 | Correctly excluded  Carried from [r5]. |
| 3C.3 full indeterminacy | f=g=0,h=id on Sᵐ | ℤ/2+0=ℤ/2; bracket {0,η}, cardinality 2 | Pass; singleton fails  Carried from [r5]. |
| 3C.4 full 2-local EHP | n=2, j=3 | ℤ_(2) → ℤ_(2) → ℤ/2 → 0; image 2ℤ_(2)=kernel | Pass; integral range is separately retained  Carried from [r5]. |
| 3C.4 H precomposition | α=η₂, β=id on S² | H(η₂ Eβ)=1=(Hη₂)Eβ | Pass; actual suspended precomposition  Carried from [r5]. |
| 3C.4 H postcomposition | α=degree −1 on S¹, β=η₂ | H((Eα)η₂)=1; E(α∧α) has degree (−1)²=1 | Pass; replacing the square by −1 fails  Carried from [r5]. |
| 3C.4 P precomposition | α=ι₅, β=ι₃, n=2 | Pι₅=2η₂=(Pι₅)ι₃ | Pass  Carried from [r5]. |
| 3C.4 interchange | α=β=η₂ | Sign −1; η₄η₅=−η₄η₅, both the same order-two class | Pass  Carried from [r5]. |
| 3C.4 integer parity | Offsets −1 and 1 | Product −1, sign −1; natural truncation would give +1 | Integer exponent retained; negative-offset sphere map itself is zero  Carried from [r5]. |
| 3C.4 difference C | α=β=η₂ | 2η₃η₄=0=Pι₇=[ι₃,ι₃] | Pass  Carried from [r5]. |
| 3C.4 difference C | α=ι₂, β=η₂ | η₃−η₃=0; Hι₂=0 so right side 0 | Pass  Carried from [r5]. |
| 3C.4 nonzero difference | α=η₂, β=ν₄ | 0+ν₅η₈=c=Pι₁₁; c has order 2 | Pass against Gray; zero C fails  Carried from [r5]. |
| 3C.4 second nonzero difference | α=η₂, β=ν′ | 0+(Eν′)η₇=a=Pη₉; a has order 2 | Pass against Gray  Carried from [r5]. |
| 3C.4 smash dimensions | Previous two substitutions | S¹¹→S¹¹ degree 1; S¹⁰→S⁹ is η₉; P lands in π₉S⁵ and π₈S⁴ | Both sides have the declared types  Carried from [r5]. |
| 3C.5 Hopf invariant | Constant; complex Hopf | u²=0 versus u²=v; H=0 versus 1 | Pass  Carried from [r5]. |
| 3C.5 source/target reflection | Hopf map | H(source reflection)=−1; H(target reflection)=(−1)²=1 | Pass  Carried from [r5]. |
| 3C.5 odd d | d=3 | u²=−u², so 2H=0 in ℤ and H=0 | Pass  Carried from [r5]. |
| 3C.5 K basis | d=2, H=1, r=1 | x²=y,xy=y²=0; ch(x)=u+cv,ch(y)=v | Pass  Carried from [r5]. |
| 3C.5 Adams comparison | r=1,2,3,4,6 | ν₂(3ʳ−1)=1,3,1,4,3; r≤valuation exactly at 1,2,4 among these | Pass  Carried from [r5]. |
| 3C.5 frame→multiplication | x=e₀ or y=e₀ | A_e₀y=y; A_xe₀=x | Pass  Carried from [r5]. |
| 3C.5 join normalization | t=0,1,1/2 | Norm²=(1−t)+t=1; endpoints (x,0),(0,y) | Pass  Carried from [r5]. |
| 3C.5 Clifford frames | n=1,3,7 | Module dimensions 2,4,8; ⟨x,Aᵢx⟩=0, ‖Aᵢx‖²=1 | Pass  Carried from [r5]. |
| sphere_parallelizable_iff | n=0,1,2,3,7 | Frame/disjunction: (true,false),(true,true),(false,false),(true,true),(true,true) | n=0 excluded; theorem passes  Carried from [r5]. |
| 4A.1 finite groups | O(0),SO(1),O(1) | Cardinalities 1,1,2 | Pass  Carried from [r5]. |
| 4A.1 stabilization | SO(2) rotations 2π,4π | Winding 1,2 → parity 1,0 | Pass  Carried from [r5]. |
| 4A.2 loop classifier | Stable identity component | π₀ΩBSO=π₁BSO=0=π₀SO | Pass  Carried from [r5]. |
| 4A.3 smooth stable comparison | TS²; quaternionic Hopf line | Stable TS² class 0; Hopf line has absolute p₁=2≠0 | Pass  Carried from [r5]. |
| 4A.4 null classification | TS²⊕ℝ; TS² | Rank-three trivialization exists; rank-two honest frame does not | Pass when “a stabilization” means existence  Carried from [r5]. |
| 4A.5 clutching | n=2 | [S²,BSO]=π₁SO=ℤ/2 | Pass; based/unbased comparison uses π₁BSO=0  Carried from [r5]. |
| 4A finite quaternion cover | Unit quaternions ±1 | Both map to identity SO(3); kernel has 2 elements | Pass  Carried from [r5]. |
| 4A UTS² dictionary | (e₁,e₂) | [e₁,e₂,e₁×e₂]=I, determinant +1; negated last column gives −1 | Pass  Carried from [r5]. |
| 4A column permutation | (1,2,3)→(2,3,1) | Two transpositions; sign +1 | Pass  Carried from [r5]. |
| 4A projective comparison | UTS² and RP³ | Both covered by S³ with fibres {q,−q}, size 2 | Pass; actual maps still required  Carried from [r5]. |
| 4B.1 chain components | BO×ℤ and O | π₀=ℤ and ℤ/2; identity-component-only replacement loses components | Pass  Carried from [r5]. |
| 4B.2 geodesics | Round sphere antipodes | Shortest length π; next length 3π, index 2(n−1) | Pass against metric supplier  Carried from [r5]. |
| 4B.3 compact-family capture | Point and finite geodesic family | One finite subdivision suffices; constant path energy 0 | Pass on these instances  Carried from [r5]. |
| 4B.4 Hessian | Shortest antipodal family on S³ | Nullity 2,index 0; next family index 4 | Pass  Carried from [r5]. |
| 4B.5 attachments | Index-4 negative bundle | New relative cells start in degree 4, not degree 0 | Pass on this case  Carried from [r5]. |
| 4B.6 SO(2r) | r=1,2,8 | λ=0,2,14; r=1 excluded | Source equation 7.4 agrees  Carried from [r5]. |
| 4B.6 SO(4r)/U(2r) | r=1,2,8 | λ=2,6,30 | Source equation 8.2 agrees  Carried from [r5]. |
| 4B.6 U(4r)/Sp(2r) | r=1,2,8 | λ=8,12,36 | Source equation 8.5 agrees  Carried from [r5]. |
| 4B.6 Sp(r) | r=1,2,8 | λ=4,6,18 | Source equation 7.6 agrees  Carried from [r5]. |
| 4B.6 Sp(r)/U(r) | r=1,2,8 | λ=2,3,9 | Source equation 8.7 agrees  Carried from [r5]. |
| 4B.6 U(2r)/O(2r) | r=1,2,8 | λ=2,3,9 | Source equation 8.9 agrees  Carried from [r5]. |
| 4B.6 connectivity endpoint | λ=6; desired degree 5 | Isomorphism through 4; surjection at 5; isomorphism needs λ≥7 | Pass  Carried from [r5]. |
| 4B.7 / orthogonalGroup_bottPeriodicity | k=0,n=11 | π₉O(11)=ℤ/2=π₁O(11); 9=11−2 | Pass  Carried from [r5]. |
| 4B.8 / secondHomotopyGroup | n=4,i=2 | π₂O(4)=0; 2=4−2 | Pass  Carried from [r5]. |
| 4B.8 / thirdHomotopyGroup | n=5; excluded n=4 | π₃O(5)=ℤ; π₃O(4)=ℤ⊕ℤ, bound fails | Pass; range matters  Carried from [r5]. |
| 4B.8 / fourthHomotopyGroup | n=6,i=4 | π₄O(6)=0; 4=6−2 | Pass  Carried from [r5]. |
| 4B.8 / fifthHomotopyGroup | n=7,i=5 | π₅O(7)=0; 5=7−2 | Pass  Carried from [r5]. |
| 4B.8 / sixthHomotopyGroup | n=8,i=6 | π₆O(8)=0; 6=8−2 | Pass  Carried from [r5]. |
| 4B.8 / seventhHomotopyGroup | n=9,i=7 | π₇O(9)=ℤ; 7=9−2 | Pass  Carried from [r5]. |
| 4B.8 / eighthHomotopyGroup | n=10,i=8 | π₈O(10)=ℤ/2; 8=10−2 | Pass  Carried from [r5]. |
| 4B.9 Clifford comparison | Cl(0,1),Cl(0,3),Cl(0,7) | ℂ,ℍ⊕ℍ,M₈(ℝ)⊕M₈(ℝ), with generators squaring to −1 | Pass  Carried from [r5]. |
| 4C.1 sphere action | Identity and rotation | I·x=x; 2π loop closes at I | Pass  Carried from [r5]. |
| 4C.2 stable J | Constant gauge; stable rotation | J(0)=0; J(1 mod2)=η≠0 | Pass  Carried from [r5]. |
| 4C.3 framing action | Same frame; two gauges | Difference 0; two rotation gauges give 2η=0 | Pass  Carried from [r5]. |
| 5.0 finite PT | Empty, positive point, negative point | Degrees 0,+1,−1 | Pass; agrees with supplier  Carried from [r5]. |
| 5.0 unstable inverse | Hopf map, domain/target reflection | H values −1 and +1 respectively | Pass  Carried from [r5]. |
| 5.0 rank zero control | 0-manifold in ℝ⁰ | At most 1 point; cannot realize arbitrary integral sums | Correctly excluded  Carried from [r5]. |
| 5.0b framed curves | Bounding circle; Lie circle | Parities 0 and 1; pair of Lie circles totals 0 | Pass  Carried from [r5]. |
| 5.0b framed surfaces | S²; Lie torus; two Lie tori | Arf values 0,1,1+1=0 | Pass  Carried from [r5]. |
| 5.0b relative cancellation | c=4 and c=3 | Trace ambient dimensions 7 and 6; Stiefel connectivity 3 and 2 | Pass; latter not claimed sufficient  Carried from [r5]. |
| 5.0b low second offset | c=1,2,3,4 | Groups 0,ℤ/2,ℤ/2,ℤ/2 | Pass; low-rank exceptions retained  Carried from [r5]. |
| 5.1.1 tangent/normal dictionary | S²⊂ℝ³ | TS²⊕ν≅ℝ³; ν rank 1 | Pass  Carried from [r5]. |
| 5.1.2 structure dictionary | Empty cycle; framed point | Bordism classes 0 and positive degree 1 | Pass  Carried from [r5]. |
| 5.1.3 Thom augmentation | Two positive points | Thom space Sᵏ∨Sᵏ; fold has total degree 2 | Pass; not a sphere before augmentation  Carried from [r5]. |
| 5.1.3 tube condition | Normal derivative +1 versus −1 | +1 preserves positive point degree; −1 reverses it | Pass  Carried from [r5]. |
| 5.1.4 J action | φ and φ·id on Sⁿ | PT(φ·id)−PT(φ)=0=J(0) | Pass; arbitrary-manifold gauge not typed as πₙSO  Carried from [r5]. |
| 6A.1 defect exterior | Hemisphere in Sⁿ | Exterior Dⁿ; boundary one Sⁿ⁻¹; ambient-open collar would fail | Pass  Carried from [r5]. |
| 6A.1 proper tube | Dⁿ×I | Two endcaps, one lateral face; scaled normal ε at endpoints | Pass  Carried from [r5]. |
| 6A.2 quotient | Cylinder; orientation reversal | Same class at both ends; [−M]=−[M] | Pass  Carried from [r5]. |
| 6A.3 historical model | Proper top disc versus whole sphere | Exterior boundary count 1 versus 0 | Whole-sphere defect excluded  Carried from [r5]. |
| 6A.4 comparison | Boundary-framed standard sphere | Both quotient coordinates 0; inverse transports return original stable class | Pass on zero case  Carried from [r5]. |
| 6B.1 filling | D⁷; closed torus | Boundary S⁶ versus ∅; rank-seven stable frame versus no sphere identification | Pass  Carried from [r5]. |
| 6B.2 three faces | W×I | Two horizontal faces; one vertical face; two corner intersections | Pass  Carried from [r5]. |
| 6B.2 signs | Orientation dt followed by W | Horizontal signs −,+; vertical correction −1 | Pass  Carried from [r5]. |
| 6B.3 quarter turn | Normal/extra coordinates (s,a) | (s,a)→(−a,s); determinant +1 | Pass  Carried from [r5]. |
| 6B.3 boundary restriction | Standard D⁷ frame | (t,a)→t−ax; tangent rank 6 plus 1 = 7 | Pass  Carried from [r5]. |
| 6B.3 collar cutoff | ε=1/2,δ=3/4 | Product below 1/2; unchanged above 3/4; centre untouched | Pass  Carried from [r5]. |
| 6B.3 stable-class lift | Surface with boundary, n=2 | Spine dimension ≤1; ℤ=π₁SO(2)→π₁SO=ℤ/2 surjective | Pass; lift not unique  Carried from [r5]. |
| 6B.4 deletion | Sⁿ minus defect interior | Whole exterior Dⁿ is connected; boundary degree −1 against deleted-disc orientation | Pass  Carried from [r5]. |
| 6B.4 historical normalization | Path followed by reversal | Frame transport g·g⁻¹=id; same quotient class | Pass  Carried from [r5]. |
| 6B E₈ plumbing | k=1,2 | Spine dimensions 2,4; tangent ranks 4,8; determinant 1,signature −8 | Pass  Carried from [r5]. |
| 6B E₈ boundary | k=1 versus k=2 | Homology sphere in both; π₁ nontrivial versus 0 | Correctly separates low dimension  Carried from [r5]. |
| 6C.1 deletion/inclusion/boundary | Standard sphere/disc | Disc boundary class 0; sphere inclusion 0 | Pass  Carried from [r5]. |
| 6C.2 exactness | n=6 final segment | 0→Θ₆→ℤ/2→ℤ/2 with final map id | Pass once map comparison proved  Carried from [r5]. |
| 6C.3 bP | Negative E₈ and reverse | Boundary coordinates −1,+1 mod28; sum 0 | Pass  Carried from [r5]. |
| 7A.1 normal map | Identity; degree-two map | Degrees 1 and 2; only identity satisfies degree-one condition | Pass  Carried from [r5]. |
| 7A.2 surgery kernel | Identity normal map | Kernel in each positive degree 0; middle rank 0 | Pass  Carried from [r5]. |
| 7A.3 below-middle surgery | S²×S⁴→S⁶ of degree 1, surgery on S² factor | Replace S²×D⁴ by D³×S³; common boundary S²×S³; π₂ generator ℤ killed | Pass  Carried from [r5]. |
| 7A.4 connectivity improvement | Identity relative normal map | Already all-degree equivalence; 0 surgeries needed | Pass  Carried from [r5]. |
| 7B.1 quadratic refinement | Hyperbolic and anisotropic planes over 𝔽₂ | q(a+b)=q(a)+q(b)+1; values 1 and 1 | Pass  Carried from [r5]. |
| 7B.2 even forms | Zero module; integral hyperbolic plane | Determinants 1,−1; signatures 0,0 | Pass  Carried from [r5]. |
| 7B.3 odd formations | (H;L,L*) and (H;L,L) | Both quotient classes 0 by different stated zero relations | Pass  Carried from [r5]. |
| 7B.3 nonexample | q(x,y)=xy, line e+f | q(e+f)=1≠0 | Correctly excluded  Carried from [r5]. |
| 7B.4 Wall comparison | Trivial π, degrees 5,6,8 | Wall values 0,ℤ/2,ℤ match proposed P coordinates | Pass on table  Carried from [r5]. |
| 7B.5 even zero criterion | Hyperbolic versus anisotropic mod-two plane | q-zero Lagrangian exists versus none; Arf 0 versus 1 | Pass  Carried from [r5]. |
| 7B.6 odd zero criterion | Zero formation; dimension 5 | Obstruction 0; 5≥5 | Pass  Carried from [r5]. |
| 7B.7 realization ranges | Even 6; odd 5 and 7 | 6≥6 true; 5≥7 false; 7≥7 true | Pass  Carried from [r5]. |
| 7B.8 geometric comparison | Disc and negative E₈ | Obstruction coordinates 0 and −1 | Pass  Carried from [r5]. |
| 7C.1 odd groups | n=5,7 | P₅=P₇=0 | Pass  Carried from [r5]. |
| 7C.2 signature coordinate | ±E₈ | ±8/8=±1 | Pass  Carried from [r5]. |
| 7C.3 Arf coordinate | q=xy; q=x²+xy+y² | Zero counts 3 and 1; Arf 0 and 1 | Pass  Carried from [r5]. |
| 7C.4 defect surgery | Product trace | Before/after P coordinate a−a=0 | Pass on identity  Carried from [r5]. |
| 8.1 forget frame | Empty; framed S⁷ shifted by J₇(1) | Empty class 0; difference 1 mod240 maps to 0 in A₇ | Pass  Carried from [r5]. |
| 8.2 extension obstruction | Constant clutching; degree-eight realizations | Obstructions 0 and 240; J images 0 and 240 mod240=0 | Pass  Carried from [r5]. |
| 8.2 forbidden obstruction | Coordinate 1 in π₇SO | J(1)=1 mod240≠0 | Cannot be obstruction of a closed almost-framed cycle  Carried from [r5]. |
| 8.3 cokernel comparison | n=6 | π₅SO=0,π₆SO=0; A₆=coker J₆=ℤ/2 | Pass  Carried from [r5]. |
| 8.4 Kervaire invariant | Zero module; one/two anisotropic planes | Arf 0,1,0 | Pass  Carried from [r5]. |
| 9.2 unstable third-stem comparison | ν′ and −ν′ | Order 4; E²ν′=2ν₅ and E²(−ν′)=6ν₅ in ℤ/8; Hν′=η₅≠0 | Values agree with Gray; exact Toda text uncertified  Carried from [r5]. |
| 9.2 fourth diagonal | π₈S⁴_(2)=⟨a,b⟩ | Orders 4→2→1 by killing a then c; zero P would leave 4→2 | Pass  Carried from [r5]. |
| 9.2 fifth diagonal | ⟨aη₈,bη₈⟩ | Order 4→2; d=cη₉ is killed; next H image is 2ℤ_(2), index 2 | Pass as algebra; Toda computation uncertified  Carried from [r5]. |
| 9.2 last fifth-stem quotient | Pι₁₃=[ι₆,ι₆] | ℤ_(2)/ℤ_(2)=0; H of generator is 2, not 1 | Pass; range n≥7 is necessary  Carried from [r5]. |
| 9.2 odd-primary passage | (p,k)=(3,4),(3,5),(3,6),(5,6) | All four primary orders 1; at (3,3),(3,7) orders 3 | Pass against Fomenko–Fuchs corollary  Carried from [r5]. |
| 9.2 fourth/fifth stems | n=6,7 stable models | π₁₀S⁶=0; π₁₂S⁷=0 | Pass; both native signatures present; Toda proof text uncertified  Carried from [r5]. |
| 9.3 ν² composition | ν₄∘Σ³ν₄ | S¹⁰→S⁷→S⁴; stable order 2 | Types agree; Hatcher 4L.11 supports nonvanishing, exact Toda locator uncertified  Carried from [r5]. |
| 9.4 compatible table | Stems 0…6 | ℤ,ℤ/2,ℤ/2,ℤ/24,0,0,ℤ/2 | Group values agree with readable table  Carried from [r5]. |
| 9.5 framed product | S³×S³, q(a)=q(b)=1 | Intersection matrix [[0,1],[−1,0]]; Arf 1·1=1 | Pass; prescribed-framing comparison remains a target  Carried from [r5]. |
| 9.6 A₆ | J₆ from zero group | coker(0→ℤ/2)=ℤ/2 | Pass  Carried from [r5]. |
| 9.7 Θ₆ | Right map id versus zero on ℤ/2 | Kernel sizes 1 versus 2; left image size 1 | Correct proof requires id  Carried from [r5]. |
| sixthStem signature | n=8 and n=7 | At n=8,14=2n−2 and group ℤ/2; n=7 fails 8≤n | Pass  Carried from [r5]. |
| 9A.1 Adams prime bound | p=2,3,5,7 | Orders ≤16,3,5; at p=7 other cobar generators have stem ≥11>8 | Range arithmetic passes  Carried from [r5]. |
| 9A.1 finite assembly | Primary bounds | 16·3·5=240; rational rank 0 | Pass; tower convergence remains substantive  Carried from [r5]. |
| 9A.1 e-invariant | 1/240; possible halves | Order 240; 2(1/240)=2(121/240)=1/120 modℤ | Pass; primitive real comparison needed  Carried from [r5]. |
| seventhStem signature | n=9 | 16=2n−2; π₁₆S⁹=ℤ/240 | Pass  Carried from [r5]. |
| 9A.2 exact image | Bott obstruction 240 | p₂=±1440; σ=7p₂/45=±224; σ/8=±28 | Pass  Carried from [r5]. |
| 9A.2 Θ₇ | Image 28ℤ⊂ℤ; A₇=0 | Quotient ℤ/28; negative E₈ coordinate −1 | Pass  Carried from [r5]. |
| 9A.3 index identity | p₁²=0,p₂=1440 | σ=224; (0−4·224)/896=−1=−5760/5760 | Pass  Carried from [r5]. |
| 9A.3 Eells–Kuiper | Negative E₈; orientation reverse | μ=32/896=1/28; reverse −1/28 | Pass  Carried from [r5]. |
| 9A.3 quaternionic bundle | (h,j)=(2,−1),(1,0) | (e,p₁)=(1,6),(1,2); μ=1/28,0 | Pass  Carried from [r5]. |
| 9A.3 Euler-zero control | h+j=0 | Gysin cokernel ℤ/0ℤ=ℤ≠0 | Excluded from homotopy-sphere assertion  Carried from [r5]. |
| 9A.3 twisted discs | Hypothetical extension of gluing map | Extension gives standard class 0, contradicts ±1 mod28 | Pass  Carried from [r5]. |
| 9A.4 k=2 cap | σ=−8 | 7p₂=−360; residue −360 mod7=4 | No integral p₂  Carried from [r5]. |
| 9A.4 valuation | k=3,4 | d₃=±992/63,d₄=±2032/15; valuations 5,4 versus ν₂(−8)=3 | Pass  Carried from [r5]. |
| 9A.4 denominator hypotheses | k≥2,p=2 | k≠0; 2−1=1 divides 2k; ν₂(B₂ₖ)=−1 | Pass  Carried from [r5]. |
| 10.1 orientation | M=S⁶; reflected marking | H₆=ℤ, generators ±1; connected and π₁=0 | Pass  Carried from [r5]. |
| 10.2 quotient witness | Standard S⁶ | Θ₆ class 0; trace cylinder dimension 7 | Pass  Carried from [r5]. |
| 10.3 orientation correction | Reversing diffeomorphism and reflection | Product sign (−1)(−1)=+1 | Pass  Carried from [r5]. |
| PreservesOrientedAtlases | Same atlas/id; reflected atlas | Transition determinants +1; one reversed orientation gives −1 | Pass; hA,hB prevent empty-atlas vacuity  Carried from [r5]. |
| smoothPoincareSix_oriented | S⁶, same/opposite chosen orientations | Choose identity/reflection; preservation sign +1 in either matched case | Pass  Carried from [r5]. |
| smoothPoincareSix | S⁶; ℝ⁶ control | Identity exists; H₆(ℝ⁶)=0≠ℤ so no homotopy-equivalence hypothesis | Pass  Carried from [r5]. |

## Not verifiable

The following source-access limits are carried from [r5]; these passages were not changed and were not refetched in this incremental review. They are not counterexamples or new supplier gaps.

- `toda1962`: the stated uncertified 5.4/5.6/5.8/5.9/5.11, equation (5.8) and Chapter XIV locators remain uncertified. The prior service search obtained no readable legal copy; its unrelated Elsevier bibliographic match was discarded.
- `james1955`: prior DOI search reached a JSTOR landing page without a legal PDF. `steenrod1967`: the Project Euclid route yielded no PDF. `pontryagin1959`: the publisher route ended in an access-control redirect.
- `whitehead1978`, `steenrod1951`, `husemoller1994`, `kosinski1993`: prior bibliographic service searches found no readable legal texts. `smale1961`: no legal PDF at the JSTOR landing page; r5 used Milnor's h-cobordism text instead.
- `adams1960` and `adamsatiyah1966`: the earlier DOI/publisher attempts yielded no PDF or HTTP 403; no fresh primary-proof certification is asserted. `milnor1963morse`: the earlier match was a review, not the book, and was discarded.
- The settled uncertified dispositions of `thom1954`, `hirsch1976` and `kervaire1958` remain unchanged. No renamed request has been made.
- TangentialBordism's finite-quadratic-Arf contract is readable; its design-plan registration was not newly verified here. The earlier report's limitation remains. Finite-atlas/universe, collar, pointed and smooth-framing adapters are new mathematical targets with supplied inputs, not literal historical theorem quotations.

Hatcher's four changed locators are readable and verified above. There are no new missing-text requests and no acceptance condition arising from a new gap.

## Source issues

No new source mistake was found in the changed locators. The four issues recorded in [r5] are retained here without claiming fresh inspection of their unchanged sources:

- **Misprint** in bott1959 at §8.3, printed p.335: the source says the involution acts on U(2n) with fixed group Sp(n); it should be on U(4n) with fixed group Sp(2n), matching the displayed homogeneous space; affects the proof.
- **Misprint** in bott1959 at §8.6, printed p.335: the source says quaternionic n-by-n matrices form Sp(2n), with complex commutant U(2n); it should be Sp(n) and U(n), consistent with the next fixed-group statement; affects the proof.
- **Misprint** in wall1999 at Theorem 13A.1's proof, printed p.173, line 3: the source says the nontrivial degree-three group has negative orientation character; it should be positive orientation character; affects a stated result; corrected in print at wall1999_errata, correction for p.173 line 3 (`wall1999_errata` line 162).
- **Gap** in fomenkofuchs2016 at §27.4, printed pp.385–386: the source says the full endpoint calculation requires a further nonzero differential and leaves its proof to the reader; it should be supplemented by that Steenrod-power/transgression calculation before the full theorem follows; affects the proof.

[r5]: packages/HomotopySpheres/reports/PRREVIEW-HomotopySpheres~5.md
