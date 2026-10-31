# Repair report

## F01 (P1) — applied

Semistable pointed comparison → pointed prestable comparison. Corrected Scope, Exact supplier contracts, §5.1’s API and route, §§5.1–5.2 Needs and PA.5 Dependencies. Dualizing theory now cites StableReduction Layer 2; pointed stability cites Layer 3. Added unmarked P¹ and elliptic-plus-tail Checks, with genera 0, 1 and dualizing degrees −2, (1, −1). Evidence: temkin10 lines 57–107; supplier conventions and Layers 2–3.

## F02 (P2) — applied

Coherence plus quasi-excellence implies projective modification → projectivity, with modification additionally requiring every geometric log-ideal stalk nonempty. Updated §4.2’s hypotheses, API, proof and Checks; clarified the existing universal-property contract and §4.3’s nonempty fan centres. Empty and disconnected ideals give negative controls; unit and A₁ ideals retain degree 1. Evidence: ilo14 lines 4444–4459, 4761–4806, 4931–4955.

## F03 (P3) — applied

Unelaborated monoidal-smoothness definition → explicit geometric-stalk criterion, with identity, composition, strict-map and isomorphism APIs. Added strict nonsmooth immersion, free-factor projection and characteristic-three Kummer square-map Checks in §4.3. Their group cokernels are 0, ℤ and ℤ/2. No Lean padding was added. Evidence: ilo14 lines 4839–4856; composition concatenates the two free summands.

## F04 (P3) — applied

“The repaired conjunction” → “the conjunction of p > 1 with the existence of an immediate degree-p extension” in §5.2a. For C((t)), p = 1, instability is false, immediate degree-1 existence is true and the conjunction is false. Searched the complete README for the same process wording; none remains. Evidence: temkin10 lines 1746–1756.

## Verification and consequences

The edits are confined to `packages/AdicCoefficientsAndComparisonsPartII/README.md`, `packages/AdicCoefficientsAndComparisonsPartII/sources.toml` and this report. The manifest’s existing ilo14 entry now includes VIII §3.1.19 and §3.3.14; no source key or fetch metadata was replaced. All ten recorded works have legal cached texts; no new source or missing-reference request was necessary. The directly relevant passages were read, including the empty-ideal chart construction, the definition of monoidal smoothness, the normalized comparison and Temkin’s definition and projectivity theorem. No source passage was copied.

The implication used for F02 has both directions. A nonempty monoidal ideal on a log regular chart generates the unit ideal at its generic points. Conversely, an empty geometric stalk of a coherent chart ideal forces that chart ideal to be empty on a neighborhood, including the generic point of a component; the ordinary ideal there is zero. Coherence and log regularity are retained for this equivalence. On a noetherian log regular base the dense open where the ordinary ideal is a unit is normal, so normalization also preserves the blow-up’s isomorphism there. An empty source over a nonempty component cannot satisfy the dense-open condition of a modification. Projectivity alone is unaffected.

The §4.3 fan centres have nonempty stalks by their monoidal blow-up construction (ilo14 line 4451); their pulled-back log ideals retain a local generator. Thus the projective-modification assertion for the desingularization functor remains valid. Its A₁ example, §4.4’s projective Gabber modification, the logarithmic induction in §§5.6 and 6.1, and the normalized-blow-up worked example still use centres meeting neither generic point nor an entire component. No hypothesis limiting the residue primes, curve genus or existence theorem was added.

For F01, the supplier’s Layer 2 dualizing sheaves, base change and component degrees were read at `TauCetiRoadmap/StableReduction/README.md:354`, especially lines 367–376; Layer 3’s prestable and pointed definitions are at lines 405–419, and its stronger semistability convention is at lines 115–120. The local complete-intersection extension to arbitrary bases and non-proper curves remains the existing §5.1 target, supported by temkin10 lines 79–99, rather than an enlarged claim on the supplier. Relative ampleness for a modification tests its contracted fibres: the identities of both new curves have zero-dimensional fibres and no contracted exceptional component. Their negative absolute dualizing degrees therefore do not contradict §5.2.

Read the main-branch StableReduction and SchemeAndStackFoundations roadmaps for form and ownership. The content checkout used here has HEAD `64932739175723fcfa3dd1fb1bf69ce52e3e98ac`; its manifest pins Mathlib at `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Inspected the pinned geometric sources by object: Proj exists, but the full log-scheme, coherent-log-ideal, monoidal-smoothness and stable-modification carriers needed by the affected headlines do not. Mathlib’s native image and normalization objects are retained: `Mathlib/AlgebraicGeometry/IdealSheaf/Subscheme.lean:659` and `Mathlib/AlgebraicGeometry/Normalization.lean:122`. Their existence is not confused with the missing geometric predicates.

The roadmap service’s main/open-head object search found the existing log blow-ups, very tame quotients and regular log resolution in LefschetzPencilsAndVanishingCycles §0.10, and the proper pointed prestable objects in StableReduction Layer 3. Read the named targets at the indexed head of the new LefschetzPencilsAndVanishingCycles roadmap; the StableReduction comparison uses main, not its revising open work. This package owns the already-scoped normalized comparison and additional monoidal functoriality, not second versions of those supplier objects. The new F03 API only explains its existing predicate. No new fully qualified Lean name was introduced.

Supplier citations were rechecked against the readable roadmaps: SchemeAndStackFoundations §§0.9, 0.16–0.22, 1.17, 2.4, 2.6, 2.11, 3.3–3.6 and 4.11–4.20; CrystallineCohomology CR.5:log-algebra.1–4; LefschetzPencilsAndVanishingCycles §0.10; ClassicalAdicEtaleCohomology §2.4; EtaleCohomologyFoundations §F.0.A1; and the LocalFieldsRamificationPartII board design GF.0–GF.6. The latter’s maximal-separable-P-extension prerequisite remains an explicit gap. The five README gap slugs equal the plan’s top-level list; no gap or plan edit was needed.

The citation resolver exited 0. Its remaining lead is the outgoing LogicAndDefinabilityInNumberTheoryPartII §2.1 citation, absent from its indexed main/open-head set. The section exists in `packages/LogicAndDefinabilityInNumberTheoryPartII/design/README.md:491` and consumes the odd-degree alteration, so it is an outgoing board-design reference, not a supplier. The service reports its own indexed main as `bbed953`; pinned-library checks in this report use the actual local content manifest, not the resolver’s library detection (which reports no pinned Lake packages on its host). The four initial Lean-name leads are supplier roadmap targets, not promised pinned declarations: SchemeAndStackFoundations §4.16 and LefschetzPencilsAndVanishingCycles §0.10 contain them. No unrelated citation was changed.

Ownership against the separately listed sibling open pull requests was not checked through checkout files: the brief supplies names without checkout paths. The authorized indexed main/open-head object search was used; no additional pull-request discovery was performed. No helper agent was used.

| Required check | Exact outcome |
|---|---|
| Elaborate `packages/AdicCoefficientsAndComparisonsPartII/Suggested.lean` using `lake env lean` from the content checkout | Exit 0, no output. The file remains byte-for-byte unchanged. |
| Build missing imported TauCeti module first | Not needed: the only import is `import Mathlib`. |
| Mechanical elaborated-signature audit | Comment-stripped scan found zero package declarations and zero section variables; the exhaustive package `#check @name` list is empty. A separate scratch file with `import Mathlib` and six pinned supporting `#check @...` commands elaborated once successfully, exit 0. No package binder or README generality changed. Initial scratch preparation used the wrong working directory and produced no file; it was corrected before the successful run. |
| Compare elaborated types | Image has type `(X ⟶ Y) → Scheme`; image inclusion targets Y and factorization starts at X. Normalization retains quasi-compact and quasi-separated binders. Residue degree returns ℕ; compact constructible topology retains compactness, quasi-sobriety, prespectrality and quasi-separatedness. |
| Required dependency-direction command, with package name, board order and `--movable` | Exit 0: `depcheck: 54 roadmaps, 601 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line. |
| README/plan gap consistency | Exact set equality true, five slugs. |
| Whitespace check | `git diff --check`: exit 0, no output. |

No separate gate failure was listed in this brief. No Lean declaration was added, removed or renamed. Downstream consumers must use the prestable comparison and retain nonempty log-ideal stalks when invoking §4.2’s modification conclusion; none needs a declaration rename. Metadata, merge order, supplier files and the design plan are unchanged. No commit or GitHub write was made.

## Adversarial mathematics pass

The tables give evaluations and negative controls, not proofs of the deep existence theorems. The displayed arithmetic, characteristic maps, group orders, valuation restrictions and component degrees were reevaluated against the roadmap definitions; earlier acceptance verdicts were not used as evidence. Existing witness choices are retained where their values still apply. The first table separates every added or changed mathematical assertion, including its effects on consumers. The second carries the unchanged statement families, their APIs, conventions and worked examples. Field and domain hypotheses exclude the zero ring; infinite degree is never inferred from the totalized value 0 of finrank.

| Statement | Instances tried | Computed values on both sides / witness | Result | Change |
|---|---|---|---|---|
| Proper nodal pair → pointed prestable comparison | Unmarked P¹ | Proper, flat, geometric connectedness and nodality all true; genus 0; degree −2; supplier semistability false, prestability true | Correct comparison | Scope, contract, §5.1 |
| Supplier semistability is stronger than nodality | E joined to unmarked P¹ at one node | Dual graph: 2 vertices, 1 edge, first Betti number 0; genus 1+0+0=1; rational tails 1 | Nodal true, supplier semistability false | §5.1 Check |
| Dualizing component degrees and owner | Same E∪P¹ | Degrees 2·1−2+1=1 and 2·0−2+1=−1; total degree 0=2·1−2 | Consistent with Layer 2 | Contract and Needs |
| Dualizing base change | P¹_k → Spec k and any field k′/k | ω pulls back from O(−2) to O(−2); degree −2=−2 | Same local complete-intersection sheaf | Layer 2 citation |
| Finite marking split and ordered sections | Empty marking on both curves | Finite étale degree 0; number of sections 0; empty after splitting | No curve is excluded | §5.1 Check |
| Stable modification differs from pointed stability | Identities on P¹ and E∪P¹ | Contracted components 0 in each; stable modification true; pointed stability false for degrees −2 and −1 | Consistent | §5.1 and §5.2 |
| Relative ampleness in §5.2 | Identity P¹; blow-up at smooth point of special fibre | Identity fibres points, positivity on contracted curves has empty index; blow-up exceptional degree −2+1=−1 | Identity accepted, unstable blow-up rejected | Needs corrected |
| Coherent ideal alone gives no modification | Empty log ideal on Spec F₂ | Ordinary ideal 0; Rees positive degrees 0; Proj empty; normalization empty; dominance false | Excluded from modification assertion | §4.2 hypotheses/API/route |
| Nonempty stalks → generic unit ideal | Ideal (x,y) on logged A² | At generic point x,y are units; generated ideal (1); at every stalk at least one log generator exists | True | §4.2 condition |
| Generic unit ideal → nonempty stalks, coherent setting | Empty versus unit ideal on field point | Empty gives generic ordinary ideal 0≠(1); unit gives (1)=(1); empty chart would contain its generic point | Both directions consistent | §4.2 equivalence |
| Global nonemptiness is insufficient | Two disjoint F₂-points, empty/unit ideals | Stalk sizes: 0 and at least 1; blow-up has 1 point versus target 2; image not dense | Excluded | §4.2 Check |
| Projectivity survives empty ideal | Empty → Spec F₂ | Closed immersion into P⁰_F₂; projective true; modification false | Split conclusions | §4.2 API |
| Unit and invertible ideals | Unit and principal log ideals | Rees of principal nonzerodivisor ideal has Proj X; map identity, degree 1 | Both satisfy nonempty condition | §4.2 Checks |
| Fine/saturated comparison with empty ideal | Empty log ideal | Fine blow-up empty; saturated blow-up empty; ordinary Proj and its normalization empty | Comparison retained | Supplier-contract clarification |
| Empty-ideal universal property | Nonempty test log scheme Y | Empty pullback has 0 generators and is not principal; no qualifying Y; empty test object qualifies vacuously | Empty object is universal | Existing gap, no new target |
| A₁ normalized blow-up degree | uw=v², ideal (u,w) | Chart v²=u²s; z=v/u, z²=s; fraction fields k(u,v)=k(u,z); degree 1 | Not degree 2 | §4.2 Check |
| Fan centres in desingularization | Free fan; A₁ fan | Free fan: zero nontrivial steps, degree 1; A₁ centre (u,w) nonempty at every stalk, normalized generic degree 1 | No deleted component | §4.3 route |
| Modification under strict comparison | Identity of axes pair | Pullback (x,y)=(x,y); both x-charts y=xv; generic degree 1 on both sides | Consistent | §4.2 strict API retained |
| Monoidal smoothness: actual stalk map | Identity ℕ versus multiplication by 2 | Identity extends with r=0; 1↦2 has rank difference 0 but cokernel ℤ/2, not 0 | Abstract carrier isomorphism insufficient | §4.3 definition/API |
| Identity API | Characteristic monoids 0 and ℕ² | P⊕ℕ⁰=P; group cokernel 0 in each | True | §4.3 API |
| Composition API | ℕ→ℕ²→ℕ³, first-factor inclusions | Free ranks 1 and 1; composite adds 2; cokernels ℤ, ℤ and ℤ² | True | §4.3 API |
| Strict log morphisms need no scheme smoothness | Origin Spec k → A¹_k, trivial logs | Characteristic 0→0, r=0; k as k[t]-module has t·1=0, not flat | Monoidally smooth true, smooth false | §4.3 Check |
| Stalkwise criterion and non-strict example | Logged axes projection t↦x | At origin ℕ→ℕ², r=1; on x-axis complement of origin identity ℕ, r=0; on y-axis complement 0→ℕ, r=1; off axes 0→0 | All stalks accepted | §4.3 Check |
| Invariance under log isomorphisms | Swap axes and project by y | Chart 1↦(0,1); swap identifies it with 1↦(1,0); cokernel ℤ on both | True | §4.3 API |
| Kummer étale does not imply monoidally smooth | Square map in characteristic 3 | Group cokernel ℤ/2; 2 invertible; chart scheme comparison identity; r=0 would require bijection ℕ→ℕ, but 1 has no preimage | Monoidal predicate false | §4.3 Check |
| Residue exponent and instability guard | K=C((t)), L=K | p=1; e=f=degree=1; immediate existence true; p>1 false; conjunction false; unstable false | Equality of truth values | §5.2a wording |
| Shared degree-one consumers | Identity curve resolution; normalized A₁ tower | Curve/base degrees 1 and 1; normalized chart field degree 1; multiplication 1·1=1 | No genus or prime restriction introduced | §§5.6, 6.1, Worked examples audited |

| Statement | Instances tried | Computed values on both sides / witness | Result | Change |
|---|---|---|---|---|
| Conventions: positive P-number | 1 and 0, P empty | primeFactors(1)=∅; positive(1)=true; positive(0)=false | Consistent on these instances | None |
| Conventions: residue exponent | C((t)), F₂((t)), F₃((t)) | p=1,2,3 respectively; residue characteristic=0,2,3 | Consistent on these instances | None |
| Conventions: characteristic support | Spec Q, Spec Z_(2), empty | ∅, {2}, ∅ respectively | Consistent on these instances | None |
| Conventions: inverse valuation restriction | Z[i]_(1+i) over Q | intersection with Q=Z_(2); v(2)=2 upstairs and positive downstairs | Consistent on these instances | None |
| Conventions: Artin–Schreier sign | u^p−u=t⁻¹, p=2,3 | v(u)=−1/2,−1/3; p v(u)=−1=v(t⁻¹) | Consistent on these instances | None |
| Conventions: log diagonal | xy=π | 1↦(1,1); coker=Z; both boundary branches retained | Consistent on these instances | None |
| Conventions: unit exponents | π=u t^p | gcd(p,p,1)=1; coker torsion=0 | Consistent on these instances | None |
| Conventions: universes and finite degree | K/K versus K(T)/K | finrank(K/K)=1; infinite extension excluded before finrank's junk value 0 | Consistent on these instances | None |
| Mathlib relative constants carrier | Q⊂Q(∛2)(T) | algebraicClosure=Q(∛2), degree 3; T excluded | Consistent on these instances | None |
| Mathlib scheme image | Spec k→Spec k[ε]/ε² | ker=(ε); image=Spec k; topological support has one point in both schemes | Consistent on these instances | None |
| Mathlib normalization identity | normal A and cusp k[t²,t³] | Nor_k(A)(A)=A; cusp normalization=k[t], generic degree 1 | Consistent on these instances | None |
| Normalization finite-extension witness | Q(i)/Q over Spec Z | normalization=Z[i], degree 2 | Consistent on these instances | None |
| Normalization inseparable witness | F_p(t^(1/p))/F_p(t) | generic degree p; normalization ring F_p[t^(1/p)] | Consistent on these instances | None |
| Normalization finiteness boundary | non-Japanese DVR | integral normalization may be nonfinite; normality alone gives no finite rank witness | Consistent on these instances | None |
| Noetherian native predicate | line with doubled origin | finite affine noetherian cover; two origins; diagonal closed=false | Consistent on these instances | None |
| Constructible compactness contract | one-point Spec k | underlying and patch spaces each have one point; finite cover has singleton subcover | Consistent on these instances | None |
| Tau Ceti residue-degree tower | F₂⊂F₄⊂F₁₆ | 2·2=4=[F₁₆:F₂]; each degree positive | Consistent on these instances | None |
| Tau Ceti restriction composition | M⊃L⊃K | ((O∩L)∩K)=O∩K elementwise; identity intersection O∩M=O | Consistent on these instances | None |
| Affine invariant quotient | sign action on k[x,y], char≠2 | u=x²,v=xy,w=y²; uw=v²; generic quotient degree 2 | Consistent on these instances | None |
| Finite quotient finiteness | sign action on k[x,y], char≠2 | A is generated over invariants by 1,x,y; x²,y² are invariant; projection finite of generic degree 2 | Consistent on these instances | None |
| SchemeAndStackFoundations integral alteration | id Spec V, rank-two V | proper=true, dominant=true, finite on whole base=true, generic degree=1 | Consistent on these instances | None |
| SchemeAndStackFoundations modification composition | two identities on Spec k | dense open=whole point; 1·1=1 | Consistent on these instances | None |
| Finite-type factorization gap | id X and U=X | closed immersion=id; X_U→X₀_U=id; both fibres identical | Consistent on these instances | None |
| Closed-subset log gap | A² with axes and cusp | axes characteristic=N²; cusp fails fine normal model; two cases retained | Consistent on these instances | None |
| Log blow-up universal-property gap | unit ideal and principal log ideal | pullback already invertible; universal blow-up=id, degree 1 | Consistent on these instances | None |
| Very-tame localization gap | sign action with axes | inertia=C₂; characteristic=N² fixed; closed stratum point fixed | Consistent on these instances | None |
| Maximal separable P-extension gap | P empty | only finite degree allowed=1; top field K, separably P-closed | Consistent on these instances | None |
| 0.1 residue characteristics | Q, Z_(2), Z[1/6], F₃[t] | ∅, {2}, primes≥5, {3} | Consistent on these instances | None |
| 0.1 unit characterization | 2,3,5 in Z[1/6] | 2 and 3 units; 5 nonunit; membership false,false,true | Consistent on these instances | None |
| 0.1 morphism monotonicity and surjectivity | Spec Q→Spec Z; id Spec F₂ | ∅⊆all primes; {2}={2} | Consistent on these instances | None |
| 0.1 empty/Q-scheme equivalence | empty scheme | no residue points, empty characteristic set, unique structure map to Spec Q | Consistent on these instances | None |
| 0.1 finite difference for dominant finite type | Spec Z[1/6]→Spec Z | missing primes={2,3}, cardinality 2 | Consistent on these instances | None |
| 0.2 maximal domination | G_m→A¹, closed origin, extra point | generic image=generic,true; origin,false; extra maximal component→origin,false | Consistent on these instances | None |
| 0.2 composition/open restriction | G_m→A¹→A¹ identity | generic point maps to itself twice; composite true | Consistent on these instances | None |
| 0.2 empty source | empty→S | zero maximal source points; universal condition true; surjectivity false for S nonempty | Consistent on these instances | None |
| 0.2 irreducible vs reducible dominance | one point→two disjoint points | maximally dominating=true; dominant=false; closure image has 1 of 2 points | Consistent on these instances | None |
| 0.3 alteration predicate | cusp normalization; Frobenius F₂,F₃ | proper surjective, generic degrees 1,2,3; all satisfy max domination | Consistent on these instances | None |
| 0.3 generic finiteness | P¹_k→Spec k | generic fibre dimension 1, extension infinite; alteration=false | Consistent on these instances | None |
| 0.3 no vertical components | A¹⊔point→A¹ | generic degree 1 on A¹ but extra maximal point maps to closed origin; false | Consistent on these instances | None |
| 0.3 reduction and composition | Spec k[ε]/ε² reduced; identities | reduction degree 1; (1)(1)=1; generic isomorphism fails on nilpotents | Consistent on these instances | None |
| 0.4 P- and ℓ-prime degrees | Z[i]/Z, P={2}, ℓ=3 | degree 2; prime support {2}; gcd(2,3)=1 | Consistent on these instances | None |
| 0.4 separability | Frobenius on F₂(t), F₃(t) | degree 2,3; derivative 0; separable=false | Consistent on these instances | None |
| 0.4 monotonicity/product | P={2}⊂{2,3}; degrees 2 and 3 | 2 remains allowed; product 6 has support {2,3} | Consistent on these instances | None |
| 0.4 empty prime set/modification | cusp normalization and Q(t²)⊂Q(t) | degree 1 accepted; degree 2 rejected for P=∅ | Consistent on these instances | None |
| 0.5 pseudo-projectivity | identity; doubled plane | identity factor degrees 1; doubled origins map to one point, local isomorphism but not open immersion | Consistent on these instances | None |
| 0.5 separated/proper specialization | two copies of A¹ over A¹ | finite local isomorphism with 2 points in every geometric fibre; projective true, injective false | Consistent on these instances | None |
| 0.5 composition failure | blow-up one doubled origin | two DVR maps agree generically, have distinct closed images; fails pseudo-projective criterion | Consistent on these instances | None |
| 0.5 base-change stability | identity base change of open in Pⁿ | factor remains open immersion followed by projective morphism; identity degree 1 | Consistent on these instances | None |
| 0.6 finite-type flattening | Bl₀ A²→A² | after same base blow-up, strict transform=id; fibre dimensions become 0 everywhere | Consistent on these instances | None |
| 0.6 admissible boundary | U=S, already flat morphism | centre empty; blow-up=id; flatness true on all fibres | Consistent on these instances | None |
| 0.7 non-separated Chow | doubled-origin plane | source has one generic point and two origins; pseudo-projective factor exists without separation | Consistent on these instances | None |
| 0.8 snc support definition | axes, origin, empty | two codimension-1 branches meet in codimension 2; point codimension 2 rejected; empty accepted | Consistent on these instances | None |
| 0.8 strict vs étale crossing | irreducible node y²=x²(x+1) | one irreducible component; local dimension 1; tangent dimension 2; strict=false | Consistent on these instances | None |
| 0.8 triple-crossing exclusion | xy(x−y)=0 in A² | three branches; triple intersection codimension 2<3; strict=false | Consistent on these instances | None |
| 0.8 subfamily/Cartier subsupport | V(x)⊆V(xy), origin⊆V(xy) | V(x) Cartier and snc; point not Cartier support in dimension 2 | Consistent on these instances | None |
| 0.8 smooth pullback/open restriction | axes×A¹, D(x) | branch intersections codimensions 1,2 unchanged; on D(x), only y=0 remains | Consistent on these instances | None |
| 0.9 universal resolvability | Spec field, empty scheme | finite Artinian reduction is product of fields; nowhere-dense subset empty; empty case has no nonempty source mapping to it | Consistent on these instances | None |
| 0.9 monotonicity and alteration inheritance | degree 1 solution, P⊂P′ | support ∅⊆P⊆P′; composite input remains proper with finite generic fibre | Consistent on these instances | None |
| 0.9 projective/proper senses | regular affine threefold and its identity | degree 1, regular source, empty boundary; identity projective=true and proper=true, so both notions accept this witness | Consistent on these instances | None |
| 0.9 nonexcellent DVR boundary | non-Japanese DVR A and finite inseparable extension | normalization A′ is not finite; finite proper regular resolution would force finite(A′/A)=true, contradicting false | Consistent on these instances | None |
| 0.10 dimension-one resolution | DVR and nodal curve normalization | DVR identity degree 1; node normalization has two regular branches; closed preimages codimension 1 | Consistent on these instances | None |
| 0.11 surface boundary resolution | Bl₀ A² | exceptional P¹ has codimension 1; map degree 1; charts (x,v) with y=xv | Consistent on these instances | None |
| 0.12 threefold proper resolution | regular separated threefold; doubled A²_Z | identity degree 1 works for regular case; doubled example dim=3, separated=false | Consistent on these instances | None |
| 1.1 pointed scheme/modification | Spec F₂→Spec Z | closed immersion proper; not surjective onto Z; marked image one point | Consistent on these instances | None |
| 1.1 tight/cofinal models | generic point and extra components | schematic closure removes unmarked components; marked function field unchanged | Consistent on these instances | None |
| 1.1 properness control | G_m→A¹ | generic field unchanged; missing origin makes map nonproper and excluded | Consistent on these instances | None |
| 1.2 pointed limit and stalk | id Spec K; generic DVR | one point with stalk K; DVR model space has generic and closed points with stalks K,R | Consistent on these instances | None |
| 1.2 constructible sets | DVR | two singleton patch-open points; each subset pulled from the identity model | Consistent on these instances | None |
| 1.2 rank boundary | lexicographic valuation of k(x,y) | rank=2; valuation ring nonnoetherian; permitted limit stalk | Consistent on these instances | None |
| 1.3 valuative centres | Q over Z_(p) | valuation rings Q and Z_(p), exactly 2 eligible rings | Consistent on these instances | None |
| 1.3 separatedness control | doubled-origin line | same ring k[t]_(t) has 2 centres; forgetful map not injective | Consistent on these instances | None |
| 1.3 finite-field case | K=F₂ | only valuation ring=F₂; marked centre one point | Consistent on these instances | None |
| 1.4 compact valuative description | DVR; point | 2-point/1-point limits; finite patch covers have finite subcovers; stalks R,K | Consistent on these instances | None |
| 1.5 restriction direction | Q(i)→Q valuations | at 2 one ring restricts to Z_(2); at 5 two rings restrict to Z_(5) | Consistent on these instances | None |
| 1.5 identity/tower compatibility | O⊂M, M⊃L⊃K | intersection with M gives O; nested intersections equal O∩K | Consistent on these instances | None |
| 1.6 restriction openness/continuity | identity and finite quadratic restriction | identity sends opens to themselves; clopen pair of valuations above 5 maps to singleton valuation at 5 | Consistent on these instances | None |
| 1.7 absolute valuation space | Q, F_q | Q and one Z_(p) per prime; F_q has one valuation ring | Consistent on these instances | None |
| 1.7 centred locus and compact image | Spec Z[1/2], K=Q | all valuations except Z_(2); invertibility 2 removes exactly one point | Consistent on these instances | None |
| 1.7 surjectivity but not injectivity | Q(i)/Q | fibres at 2 and 5 have sizes 1 and 2; each nonempty | Consistent on these instances | None |
| 1.8 affine comparison | A=Z_(p), K=Q; rank-two V | two points on both sides in DVR case; identity V-model permits rank-2 centre without noetherian assumption | Consistent on these instances | None |
| 2.1 tame/unramified/wild loci | Q(i)/Q at 2,5 | e=2,p=2 wild; e=1 and residue degree 1 at 5 unramified | Consistent on these instances | None |
| 2.1 identity and trivial valuation | K/K; F₂(t^(1/2))/F₂(t) | wild locus empty for identity; trivial inseparable extension has e=f=1, degree 2 and is not tame | Consistent on these instances | None |
| 2.2 S/P-tameness | empty S, empty P, Q(i)/Q | both empty tests true; Q(i) 3-tame=true, 2-tame=false | Consistent on these instances | None |
| 2.2 pointed comparison hypothesis | F₂(t^(1/2))/F₂(t), P empty | P-test true; no Spec L→Spec Q; comparison hypothesis false | Consistent on these instances | None |
| 2.2 restriction/monotonicity | S⊂S′; identity extension | empty wild intersections on S′ give empty intersection on S; degree 1 at every point | Consistent on these instances | None |
| 2.3 tower/compositum loci | Q⊂Q(i)⊂Q(i,√3) at 3 | e=1 then e=2, both prime to 3; product e=2 tame; at 2 wild already in quadratic part | Consistent on these instances | None |
| 2.4 open tame locus | Q(i)/Q | complement is the single valuation above 2; derivative 2i is a unit away from 2 | Consistent on these instances | None |
| 2.5 field distillation | Q(i)/Q, S all; S empty | P={2}, K′=Q(i), relative degree 1; empty S allows K′=Q | Consistent on these instances | None |
| 2.5 wild sign control | F_p(t)(u), u^p−u=t⁻¹ | v(u)=−1/p; e=p; p=2,3 detected in wild set | Consistent on these instances | None |
| 2.6 separable distillation | Q(i)/Q; imperfect char-2 separably closed K | quadratic case separable; no nontrivial separable extension of K, but purely inseparable degree 2 is excluded | Consistent on these instances | None |
| 3.1 decomposition vs inertia | Spec F₉ with Gal(F₉/F₃) | D order 2; I order 1; point fixed but residue automorphism nontrivial | Consistent on these instances | None |
| 3.1 residue tame test | Z[i] at 2,3,5 | D,I orders (2,2),(2,1),(1,1); 2=0 only in residue F₂ at ramified prime | Consistent on these instances | None |
| 3.1 specialization equivalence | glued two Spec(∏F₃) | all specializations identity, true; fixed U dense proper nonclosed, false | Consistent with the stated restriction | None |
| 3.1 noetherian equivalence control | C₂ swaps two F₃-points | inertia trivial at both; fixed locus empty and closed; both sides true | Consistent on these instances | None |
| 3.1 non-specializing action | doubled-origin plane reflection | generic fixed-axis inertia 2; either origin inertia 1; inclusion fails | Consistent on these instances | None |
| 3.1 nonabelian control | S₃ acts freely on 6 copies of Spec F₂ | group order 6; each inertia order 1, a unit in F₂ | Consistent on these instances | None |
| 3.1 identity/admissible quotient | trivial group on affine X | inertia order 1; one-point orbits; invariant ring A^1=A | Consistent on these instances | None |
| 3.2 Galois alteration/covering | Frobenius F₃, Z[i], Q(∛2) | purely inseparable degree 3 and Aut=1 allowed as alteration; Z[i] Galois covering; cubic Aut=1 but separable degree 3 not Galois | Consistent on these instances | None |
| 3.2 normal quotient condition | finite Galois normalization over normal X | invariant function field k(X); finite birational normal quotient identifies with X, degree 1 | Consistent on these instances | None |
| 3.3 wild primes and degree bound | Z[i]/Z; cubic T³−T−2 | wild={2}; cubic degree 3, discriminant −104, local branch degree 2, so 2≤3 but 2∤3 | Consistent on these instances | None |
| 3.3 modification and Q-case | modification; t↦t² on A¹_Q | valued degree 1 gives wild set ∅; Q-scheme centred valuations all residue char 0, wild set ∅ | Consistent on these instances | None |
| 3.4 tame Galois after modification | Z[i,1/2]/Z[1/2] | all inertia orders prime to residue characteristic; identity modification degree 1 suffices | Consistent on these instances | None |
| 3.5 Galois closure tameness | Q(∛2) and its closure away from 2,3 | discriminant primes 2,3 removed; all selected henselian extensions tame on both sides | Consistent on these instances | None |
| 3.6 alteration distillation | Z[i]/Z | wild set {2}; choose X′=Y=Spec Z[i], Y′=Y; base degree 2, relative degree 1 | Consistent on these instances | None |
| 3.7 separable alteration distillation | same Gaussian example | degrees 2 and 1 separable, characteristic 0; inseparable Frobenius excluded by hypothesis | Consistent on these instances | None |
| 4.1 log-regular pair | axes, empty, toric cone, origin alone | dimensions 2=0+2, dim X=dim X+0, toric 2=0+2; codim-2 origin not divisor boundary | Consistent on these instances | None |
| 4.1 recovery/triviality locus | A² with axes | trivial locus D(xy); complement V(xy) equals exact boundary | Consistent on these instances | None |
| 4.1 normality/fineness control | cusp with origin boundary | normalization k[t]≠k[t²,t³]; infinitely many indecomposables over infinite k; not log regular | Consistent on these instances | None |
| 4.1 strata | axes on A² | open rank 0 codim 0; axes minus origin rank 1 codim 1; origin rank 2 codim 2 | Consistent on these instances | None |
| 4.2 fine vs saturated log blow-up | toric uw=v² and ideal (u,w) | chart v²=u²s; z=v/u satisfies z²=s but absent; normalization k[u,z] | Consistent on these instances | None |
| 4.2 unit/principal blow-up | unit ideal; invertible ideal | universal blow-up=id in both cases, degree 1 | Consistent on these instances | None |
| 4.2 strict pullback | identity log morphism | pulled-back ideal unchanged; comparison source and target charts identical | Consistent on these instances | None |
| 4.3 functorial desingularization | regular axes; A₁ cone; cusp with trivial log | identity; vertex blow-up regular charts; cusp remains cusp since monoid 0 already free | Consistent on these instances | None |
| 4.3 strict/monoidal smooth witnesses | identity and axes×A¹ with trivial extra log | r=0 in characteristic map; pullback tower agrees; underlying regularity preserved | Consistent on these instances | None |
| 4.4 inertia-specializing modification | sign on A², empty boundary | blow-up origin; exceptional P¹; scalar action trivial on exceptional stratum but chart sends normal coordinate to its negative | Consistent on these instances | None |
| 4.4 morphism log-smoothness distinction | same blow-up | exceptional log point chart N→k,1↦0; blow-up morphism not log smooth although resolved pair is log smooth over k | Consistent on these instances | None |
| 4.5 preparation/general crossing conclusion | irreducible nodal D in A²_C | dimension 1, tangent dimension 2; NC=true, strict NC=false | Consistent on these instances | None |
| 4.5 strict conclusion controls | axes and empty boundary | N² at origin, intersection codim 2; monoid 0 for empty boundary | Consistent on these instances | None |
| 4.6 relative Gabber modification | trivial G, smooth pair over field | identity map; inertia order 1; quotient pair unchanged; log smoothness true | Consistent on these instances | None |
| 4.7 intermediate boundaries | A² axes over field, remove y-branch | original characteristic ℕ², retained characteristic ℕ; chart 0→ℕ gives smooth A²→A¹ by x; rank drops 2 to 1 | Consistent on these instances | None |
| 4.7 required inverse boundary | xy=π over log trait | both vertical branches necessary; deleting either violates containment f⁻¹(Vπ)⊆Z′ | Consistent on these instances | None |
| 4.8 field local form | smooth axes vs irreducible node | axes meet strict hypothesis and yield relative snc; node fails that hypothesis | Consistent on these instances | None |
| 4.8 trait exponents | xy=π; π=u t^p | gcd(p,1,1)=1 and gcd(p,p,1)=1; torsion zero in both chart cokernels | Consistent on these instances | None |
| 5.1 multipointed/semistable | A¹, uv=π, cusp | identity smooth; special fibre node with two branches; cusp tangent cone double line excludes it | Consistent on these instances | None |
| 5.1 marking condition | marking through uv=0 node | point is outside smooth locus; semistable marking=false | Consistent on these instances | None |
| 5.1 stable-modification distinction | identity unmarked P¹; exceptional P¹ of blow-up | identity has 0 contracted components and ω degree −2; exceptional component has 1 attachment and degree −1 | Consistent on these instances | None |
| 5.1 base-change stability | uv=π after π maps to 0 | fibre uv=0 still nodal; marking empty; semistability retained | Consistent on these instances | None |
| 5.2 relative ampleness | identity P¹ and blow-up exceptional component | identity fibre dimension 0 imposes no degree positivity; exceptional dualizing degree −2+1=−1 not ample | Consistent on these instances | None |
| 5.2a analytic field definition | Q_p,C((t)),p-adic Q,trivial field | Q_p and C((t)): complete, rank 1; p-adic Q: complete=false; trivial valuation: rank 0 | Consistent on these instances | None |
| 5.2a analytic k-field | Gauss field, constant quadratic Gauss field | k embeds isometrically; constant valuations agree; quadratic field has finite relative degree 2 | Consistent on these instances | None |
| 5.2a topological generation | three Gauss/disc norm completions | closure of k(T)=K by construction for types 2,3,4; finite constants extension need not equal that closure | Consistent on these instances | None |
| 5.2a one-dimensionality | Gauss fields and finite K/k | T has positive distance 1 or r from algebraically closed k; finite K/k consists of algebraic elements and is excluded | Consistent on these instances | None |
| 5.2a E,F/type 2 | radius-1 Gauss over closed k | value quotient rational rank 0; residue trdeg 1; E+F=1 | Consistent on these instances | None |
| 5.2a E,F/type 3 | radius r outside divisible hull | value quotient rank 1; residue trdeg 0; E+F=1 | Consistent on these instances | None |
| 5.2a E,F/type 4 | empty nested discs radii r_n↓r>0 | inf distance r; value quotient rank 0; residue trdeg 0; E+F=0 | Consistent on these instances | None |
| 5.2a finite-extension type invariance | unramified constant extension of Gauss field | finite residue degree adds transcendence 0; value quotient finite adds rational rank 0 | Consistent on these instances | None |
| 5.2a k-split equality | closed k, T; c∈k; disc T | two infima (1,1), (0,0), (r,r) respectively | Consistent on these instances | None |
| 5.2a k-split failure | Q₃ unramified constant α, unit with residue not F₃ | inf distance to Q₃=1; to algebraic closure=0 | Consistent on these instances | None |
| 5.2a stability definition | Q_p unramified quadratic | e f=1·2=2=degree; defect=1 | Consistent on these instances | None |
| 5.2a inseparable stable controls | F₂((t^(1/2))), F₃((t^(1/3))) | e f=2·1=2 and 3·1=3; defect=1 | Consistent on these instances | None |
| 5.2a instability iff | C((t)), p=1, identity | unstable=false; immediate degree-1 extension=true; guarded right side=false | Consistent on these instances | None |
| 5.2a stability via coset minimum | F₂((t)), a=0,b=t⁻¹,s=ρ⁻¹ | special coset minimum=ρ⁻¹ is attained; stable=true | Consistent on these instances | None |
| 5.2a unramified generator | Gauss T; quadratic unramified constants | degrees 1,2; (e,f)=(1,1),(1,2), residue separable | Consistent on these instances | None |
| 5.2a moderately ramified generator | Q₃ radius-r field,z=T² | e=2,f=1,degree=2; 2 prime to 3; unramified=false,tame=true | Consistent on these instances | None |
| 5.2a generator failure | Q₂ radius-r field,z=T²; z=0 | e=2 divisible by p=2; tame=false; z=0 lies in k and K/k infinite | Consistent on these instances | None |
| 5.2a additive S subgroup | char p, a=0, c₁,c₂; c=d=0 | (c₁+c₂)^p=c₁^p+c₂^p; 0 belongs; mixed terms vanish in char p | Consistent on these instances | None |
| 5.2a split coset | b=0,s>0 | 0 in coset; infimum 0<s; critical=false,special=false | Consistent on these instances | None |
| 5.2a special a=0 class | b=t⁻¹,s=ρ⁻¹, p=2,3 | valuation −1 cannot cancel a p-divisible valuation; minimum ρ⁻¹ attained | Consistent on these instances | None |
| 5.2a special a=1 class | F₂((t)),b=1,s=1 | integral c²−c has residue 0; nonintegral c gives negative even valuation; minimum 1 | Consistent on these instances | None |
| 5.2a critical nonspecial | a=t,b=t⁻¹,s=ρ⁻¹ | integral c leaves valuation −1; nonintegral c has p v(c)<−1; minimum ρ⁻¹; a≠0,1 | Consistent on these instances | None |
| 5.2a nonsplit noncritical | a=0,b=t⁻¹,s=1 | minimum ρ⁻¹>1; nonsplit=true,critical=false | Consistent on these instances | None |
| 5.2a deep ramification definition | closed mixed-char k; completion Q_p(p-roots) | pth roots exist in k°; alternatively Frobenius onto k°/p; equality k°=p k°+(k°)^p | Consistent on these instances | None |
| 5.2a deep ramification failure | completed maximal tame Q_p-extension | value group Z_(p); 1/ℓ occurs, 1/(pℓ) absent; no pth root modulo p of p^(1/ℓ) | Consistent on these instances | None |
| 5.2a uniformization hypothesis first branch | closed k with types 2,3,4 | E,F=(0,1),(1,0),(0,0); first branch true in all three | Consistent on these instances | None |
| 5.2a uniformization hypothesis second branch | type-4 disc field over closed k | type=4, distance equality r=r; tame closure equals k; value group divisible | Consistent on these instances | None |
| 5.2a hypothesis failure despite deepness | completion Q_p(p-roots) | residue F_p has degree-2 unramified extension; tame closedness=false | Consistent on these instances | None |
| 5.2a residue/value consequences | closed k | residue algebraically closed; each nonzero value has nth root for every n≥1 | Consistent on these instances | None |
| 5.2b uniformization and stability | closed k, radius-1/radius-r Gauss, adjoining T^(1/m), m prime to p | x=T gives degree 1 unramified; the test extension has (e,f,degree)=(1,m,m) in type 2 and (m,1,m) in type 3; e f=degree | Consistent on these instances | None |
| 5.2b neighbourhood clause | Gauss field,x=T,x′=T+c, norm c<1 | k(T+c)=k(T); closures equal; degree 1 on both sides | Consistent on these instances | None |
| 5.2b residue-separating clause | radius-1 Gauss,x=T | residue field k̃(T̃); degree over k̃(T̃)=1, separable | Consistent on these instances | None |
| 5.2b valued-field clause | trivial k, k(t) with t-adic valuation | smooth centre t=0; x=t gives k(t)/k(t) degree 1 unramified | Consistent on these instances | None |
| 5.3 existence at arbitrary qcqs base | rank-two V,C=A¹_V | identity base and curve maps; degree 1 separable; V nonnoetherian | Consistent on these instances | None |
| 5.3 uniqueness/minimality | already semistable A¹_V | stable modification=id; factorization through id unique | Consistent on these instances | None |
| 5.3 nonfinite control | P¹_K→Spec K | proper and dominant=true; finite on nonempty open=false; rejected | Consistent on these instances | None |
| 5.4 equivariance | id semistable curve, trivial group; Galois base | identity lift unique; product action lifts group multiplication by uniqueness | Consistent on these instances | None |
| 5.5 semistable logarithmic chart | uv=π | N→N²,1↦(1,1); coker=Z; log smooth=true, underlying special fibre not smooth | Consistent on these instances | None |
| 5.5 trivial-base negative control | nodal curve over trivially logged field | node not smooth; marking alone has no smoothing parameter; hypothesis of smoothness off W fails | Consistent on these instances | None |
| 5.5a relative constants/factorization | P¹_A/Q,A=Q(∛2) | F_c=A, [A:Q]=3; new generic curve=P¹_A; source degree=1 | Consistent on these instances | None |
| 5.5a geometric-integrality condition | A(T)/Q vs A(T)/A | first contains constant extension A/Q; second is rational and all constant extensions integral | Consistent on these instances | None |
| 5.5a degree preservation | A(T) with E/A finite | A(T)⊗_A E=E(T); [E(T):A(T)]=[E:A] | Consistent on these instances | None |
| 5.5a cubic base-change refutation | A⊗_Q A | factors A,B; [A:A]=1 and [B:A]=2, versus old degree 3 | Consistent with the stated restriction | None |
| 5.5a no component choice repair | S₅ with S₄ and S₂×S₃ | [S₅:S₄]=5; block orbits 2,3; neither degree supported on {5} | Consistent on these instances | None |
| 5.5a inseparable preservation/control | F=F₂(u),L=F(T),E=F(√u) | tensor=E(T), degree 2; replacing L by E(T) over F creates square-zero tensor difference | Consistent on these instances | None |
| 5.5a identity/projectivity | E=F; projective X/Y and finite Y_c/Y | tensor=L degree 1; graph to X×Y_c closed, projection projective | Consistent on these instances | None |
| 5.6 relative-curve resolution | smooth curve over field with étale Z | a=b=id; W empty; Z′=Z; degrees 1 | Consistent on these instances | None |
| 5.6 generic-integrality invariant | P¹_F and E/F finite | generic fibre after proper transform=P¹_E, integral; curve modification on that fibre=id | Consistent on these instances | None |
| 5.6 characteristic-of-source variant | Spec Z_(2)⊔Spec Q, source A¹_Q | char base={2}, char source=∅; identity solution degree 1 on both components | Consistent on these instances | None |
| 5.6 proper variant | proper universally resolvable base | a proper; b projective modification degree 1; composite c proper | Consistent on these instances | None |
| 6.1 diagram/boundary identity | id regular S,Z snc | a=b=id; Z′=Z∪Z=Z; f b=a f′=id | Consistent on these instances | None |
| 6.1 graph reduction at d=1 | one-dimensional generic fibre | choose 0 functions; Y=S; relative trdeg=1; graph modification=id | Consistent on these instances | None |
| 6.1 geometric degree induction | two successive finite base fields E/F and D/E | curve degrees [E:F], [D:E]; product=[D:F]; saturation degree 1 generically | Consistent on these instances | None |
| 6.1 zero relative dimension boundary | finite separable cover | trdeg=0; curve-fibration step not invoked; d−1 not interpreted as natural subtraction | Consistent on these instances | None |
| 6.2 inheritance with Cartier support | Bl₀ A² | preimage origin=exceptional P¹, codimension 1; identity before blow-up gives codimension 2 and fails snc | Consistent on these instances | None |
| 6.3 perfect-field separable variant | F₂ and F₃, relative curve | constants extensions separable; source modification degree 1; no inseparable smoothening needed | Consistent on these instances | None |
| 6.4 char(X) desingularization | dual numbers over Q; F₃-variety | reduction degree 1, support empty; allowed degrees 3^n all odd | Consistent on these instances | None |
| 6.4 dimension/projectivity controls | X over Z; X over Z_p[[u,v]] | base dimensions 1 and 3; first projective clause, second only proper clause | Consistent on these instances | None |
| 6.5 morphism theorem | id regular S; field base | boundary Z∪Z=Z; relative snc follows with actual snc hypothesis | Consistent on these instances | None |
| 6.6 source-relative degree | identity construction F=E=L | compositum F E=L; [L:F E]=1; allowed for every prime set | Consistent with the stated restriction | None |
| 6.6 base-change negative control | degree-3 A/Q, tensor with A | component degrees 1,2 rather than both {3}-numbers | Consistent with the stated restriction | None |
| 6.7 field prime-to-ℓ theorem | F₃,ℓ=2; Q with P empty | degrees odd; in Q-case degree 1; char-base condition 2≠3 and 2≠0 | Consistent on these instances | None |
| 6.8 trait theorem | uv=π,ℓ invertible | horizontal boundary empty; total vertical boundary two branches; gcd(p,1,1)=1 | Consistent on these instances | None |
| 6.9 variety alteration | already smooth quasi-projective integral X, snc Y | identity proper surjective degree 1; π⁻¹(Y)_red=Y | Consistent on these instances | None |
| 6.10 odd-degree model | regular projective flat model over DVR,residue char 3 | id degree 1; quadratic ramified base degree 2 excluded; 1 mod 2 vs 0 mod 2 | Consistent on these instances | None |
| 6.11 equivariant de Jong | G=1,X=P¹,Z point | identity, projective compactification=P¹; invariant field unchanged, purely inseparable degree 1 | Consistent on these instances | None |
| 6.11a Rumely existence | A¹_R and Spec Z[1/2] over Z | zero section works over degree 1; inverted-2 scheme misses fibre 2 and cannot have integral section | Consistent on these instances | None |
| 6.11a (T) and conic control | x²+y²=−1 over Z and Z[i] | no real integral solution over Z; point (i,0) after degree-2 extension | Consistent on these instances | None |
| 6.11a Pic⁰ subgroup | P¹_F₅,O(d) | tensor degrees d+e; inverse degree −d; degree-zero subgroup=0 | Consistent on these instances | None |
| 6.11a vertical torsion | E/F₅:y²=x³+x+1 | Δ=4; RHS 1,3,1,1,4; affine counts 2,0,2,2,2; total 9 | Consistent on these instances | None |
| 6.11a nonzero degree exclusion | O(1) on P¹_F₅ | degree(O(n))=n; no n>0 makes degree 0 | Consistent on these instances | None |
| 6.11a horizontal surface refutation | E×Spec O(E−O),generic section P | relative degree 0; [n] has degree n²>0 for n>0, so nP≠O; horizontal relative dimension 1 | Consistent with the stated restriction | None |
| 6.11a nilpotent units/exact sequence | I=(ε),I²=0 | (1+aε)(1+bε)=1+(a+b)ε; additive kernel, no lost nilpotent condition | Consistent on these instances | None |
| 6.11a thickened vertical torsion | E×Spec F₅[ε]/ε² | H¹(E,O)=F₅ killed by 5; reduced Pic⁰ order 9; exponent divides 45 | Consistent on these instances | None |
| 6.11a correct boundary application | Cartier thickening D₃=F∪V | horizontal components finite over B, vertical components curves; each required degree 0; some power trivial on D₃ | Consistent on these instances | None |
| 6.11b sections/projection | X=P^d_S,N=d,d≥1 | centre dimension −1 means empty centre; projection=id; one section meets each irreducible fibre | Consistent on these instances | None |
| 6.12 arithmetic alteration | smooth projective X/S,Z empty | S₁=S,degree 1; generic smoothness true; each smooth special fibre is semistable with 0 boundary branches | Consistent on these instances | None |
| Worked example: exact inverse boundary | origin⊂A² | point codim 2 fails; blow-up chart y=xv has exceptional x=0 codim 1 | Consistent on these instances | None |
| Worked example: normalization of blow-up | uw=v²,ideal(u,w) | z=v/u integral with z²=s; normalized chart k[u,z], v=uz,w=uz² | Consistent on these instances | None |
| Worked example: trace parity | degree 2m+1 vs degree 2 on Z/2 | multiplication=1 vs 0; odd degree unit, even degree nonunit | Consistent on these instances | None |
| Coefficient application/general ℓ | d prime to ℓ on Z/ℓ^r | gcd(d,ℓ^r)=1; e.g. d=3,ℓ^r=4,3·3=1 mod 4; restriction split by d⁻¹ trace | Consistent on these instances | None |
| Zero ring and empty scheme | Spec zero ring vs field-based statements | Spec(0)=empty; no field structure on zero ring; field degrees not evaluated there | Consistent on these instances | None |
| Nonreduced generic alteration | Spec Q→Spec Q[ε]/ε² | residue degree 1; source regular; morphism not generically isomorphism onto the nonreduced scheme | Consistent on these instances | None |

The negative controls retain the roadmap’s full generality: empty schemes and ideals, nonreduced bases, rank-two valuations, positive characteristics 2 and 3, inseparable extensions, non-separated sources and a nonabelian S₃ action are all distinguished by their stated hypotheses. No finite collection of these evaluations replaces the independent review that follows this repair.
