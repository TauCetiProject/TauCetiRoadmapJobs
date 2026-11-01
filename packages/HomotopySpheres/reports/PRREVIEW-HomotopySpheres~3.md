# Review of HomotopySpheres (pull request #1287 at 2d0c405)

**Verdict:** needs changes

Independent AI review. The gate passes. Six blocking findings remain: an unregistered supplier contract, a missing Whitney-disc hypothesis, duplicated supplier results, incomplete headline coverage, unspecified theorem ranges, and an incorrect native-API inventory. No counterexample was found to the eight Lean statements.

The previous review's ten findings were checked first. No supplied repair report marks any finding “not actionable in this package”.

| Previous finding | Passage at this head and disposition |
| --- | --- |
| R01, exact GeometricTopology interfaces | README 298–305 says “additional exact supplier requirement (gap:collared-oriented-bordism)”. **Partly repaired:** invented declaration names are gone and §6A owns the defect adapters, but the gap has no matching plan entry; R01 below. |
| R02, unnamed seventh-stem suppliers | README 345–351 names “IndexTheory” I7.2/I7.5; 352–355 names GeneralizedCohomology G5.6 and DGFloer 1.4. **Repaired:** the contracts and normalizations resolve. |
| R03, finite PT and Spin duplication | README 1193 says “Use TangentialBordism B5.2”; 1246–1250 consumes B3.2; 1346 transports StringOrientation. **Repaired for the previously identified objects.** Fresh ownership checks identify different overlaps in R03 below. |
| R04, missing seventh stem and O-group vanishings | Suggested.lean 91, 97, 114 declares all three requested targets; its docstring names Θ₇, Eells–Kuiper and E₈ missing carriers. **Repaired as requested.** The separate full Bott-table omission is R04 below. |
| R05, HTML anchor gate failure | README 987 now uses the ordinary heading “The unit tangent circle bundle of S²”. **Repaired:** residue=0 and the gate passes. |
| R06, structure, hypotheses and Checks | README 394–437 now has per-target headings and Needs lines; Examples/Dependencies blocks occur throughout. **Partly repaired:** some targets still ask for a theorem to be specified instead of specifying it; R02/R05/R08. |
| R07, undeclared own names | README 1540 uses “product-collar witness”; the three offending API names no longer occur. **Repaired:** readme-ids-missing=0. |
| R08, exact source locators | README 1964–1967 now cites Wall Theorems 5.6, 6.4, 5.8, 6.5 and 13A.1, with pages. **Partly repaired:** those locators check, but the sampled handle/stem/framing targets still lack individual locators; R07. |
| R09, positive-dimensional Θ group | README 505–514 gives “n ≥ 1” and puts “n ≥ 5” only on diffeomorphism comparison. **Repaired:** agrees with Kervaire–Milnor Theorem 1.1 and §2. |
| R10, pinned inventory | README 288–294 names boundary/sphere results; 354–357 says the Poincaré predicate includes Hausdorffness. **Partly repaired:** those three corrections check against the pins; a separate surviving claim about native pointed cones is incorrect (R06). |

## R01 (P1) — Register the collared-bordism supplier contract

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:298`–305: “The additional exact supplier requirement (gap:collared-oriented-bordism)”. Consumed at 387, 471 and 1381.

**Claim:** the exact two-ended collared oriented-bordism interface is an available supplier contract.

**Witness:** `TauCetiRoadmap/GeometricTopology/README.md:592`–594 on main plans general oriented cobordism. The package has no readable `design/plan.json`, and no matching gap entry was found. The job therefore declares no gaps.

**Repair:** register the minimal missing endpoint/collar contract with slug `collared-oriented-bordism`, supplier `GeometricTopology`, section Layer 6, and the same precise needs in the plan and under “What GeometricTopology must provide (gap:collared-oriented-bordism):”. Describe a carrier of bordisms, not existence of a bordism between every pair of oriented manifolds. Keep the already-owned generic objects imported and the new sphere-specific exterior adapters in §6A. If the actual main carrier suffices, replace the extra contract by an exact resolved citation instead.

**Repair test:** the empty cylinder has no endpoints; the cylinder on M⊔N has two incoming and two outgoing components. Its stored endpoint images must be disjoint and cover the boundary, with signs −,+. The general words “oriented cobordisms” do not supply those missing equations, and a README-only slug cannot be announced by intake.

## R02 (P2) — Require a common-component Whitney loop

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:423`–425: “In a simply connected level manifold, construct the needed Whitney discs for complementary submanifolds of dimensions `p,q>=3`.” Also 431–435.

**Claim:** the stated dimension and ambient simple-connectivity hypotheses suffice to produce the Whitney discs needed to cancel opposite-sign intersections.

**Witness:** in V=S³×S³ take P=(S³×{a})⊔(−S³×{b}), a≠b, and Q={c}×S³. Intersections have signs +1,−1, but lie on different components of P. No connecting arc in P exists.

The two componentwise intersection numbers are +1 and −1 and are preserved by ambient isotopy. Their sum zero does not allow removal of both points. Milnor Theorem 6.6 explicitly retains the two arcs forming a contractible Whitney loop; its connected-submanifold corollary is separate (`milnor1965` lines 1841–1867, printed pp.71–72).

**Repair:** state §1.5 for specified opposite-sign intersection points joined by embedded arcs in each submanifold, with arc interiors avoiding the other intersections; use ambient simple connectivity to nullhomotope that loop. Alternatively state connectedness of both submanifolds when deriving the arcs. In §1.6 explicitly require injectivity of π₁(V∖Q)→π₁(V) for the three-dimensional Q in the five-dimensional level, and prove it for the attaching/belt-sphere instance as in Milnor's λ=2 argument (lines 1883–1896). The present phrase “State the complement fundamental-group hypothesis” is not that hypothesis.

**Repair test:** the disconnected example is excluded because there is no arc in P; a local cancelling pair on the same connected components has a contractible Whitney loop and remains covered. In dimension five the new complement condition reduces to π₁(V∖Q)=0 when V is simply connected, rather than following from the false codimension-three inequality 5−3≥3.

## R03 (P2) — Import the existing sphere and classifier results

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:636`: “Prove Freudenthal”; 971: “Prove `BSO` simply connected”; 2065–2067: “prove … `pi_3^S ~= Z/24{nu}`”.

**Claim:** these results are new construction targets owned here.

**Witness:** main RiemannianGeometry R3.4, README 566–605, constructs the normalized sphere suspension comparison in exactly this range; main TopologicalKTheory T1.6c, 544–547, proves BSO simply connected. StringOrientation S2.3, README 582–598, states the third stem.

StringOrientation's `Suggested.lean:48` already declares `homotopyGroup_sphere_three_stem` for every n≥5. Its source normalization is described through EllipticCohomology E4.S/E5. A different EHP proof route does not establish a second owner for the same group computation.

**Repair:** import RiemannianGeometry R3.4 for sphere Freudenthal, TopologicalKTheory T1.6c for simple connectivity of the shared BSO, and StringOrientation S2.3 for the third-stem group. Retain and precisely distinguish the comparisons to this roadmap's convenient sphere, suspension, EHP and framed Hopf-fibre models, including generator signs. Do not add a duplicate third-stem acceptance declaration here.

**Repair test:** put m=n−1 in R3.4: q≤2m−2 and the surjection at q=2m−1 match §3A.4. At n=8,q=14 both comparisons are isomorphisms. For the third stem, n=5 gives π₈(S⁵)=ℤ/24 in both roadmaps. BSO's π₁ is 0 in both. These are identical inputs; the model/generator comparison is the new work.

## R04 (P2) — State the missing base entries of the full Bott-table headline

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:1111`–1115: “Derive the stable homotopy table of `O` and `SO`, not merely its two desired entries.” `Suggested.lean:84`–100 states periodicity and only degrees five/six.

**Claim:** the acceptance file tests the full real Bott calculation promised by §4B.8.

**Witness:** scratch signatures for π₃(O(n))≃ℤ (n≥5), π₇(O(n))≃ℤ (n≥9), and the degree-two/four vanishings elaborate using the existing `OrthogonalGroup` and native `HomotopyGroup.Pi`, without added carriers or options.

Periodicity and two zero entries do not determine the remaining residue classes. A zero-valued table would satisfy all three retained orthogonal-group assertions while missing the two infinite-cyclic entries.

**Repair:** add substantive signatures covering the remaining independently owned positive-degree base entries of the full table, in their stable ranges, or one complete table statement with equally precise ranges. Use the native carriers and `sorry`; do not add small-value examples or re-prove the supplier's degree-one finite SO result. Keep the component computation in its appropriate native form or explicitly account for any missing component carrier.

**Repair test:** the four scratch signatures compile under the defaults. At ranks 5 and 9 their missing groups are respectively π₃O(5)=ℤ and π₇O(9)=ℤ, whereas the zero-table model would return 0. At ranks 4 and 6, π₂O(4) and π₄O(6) are 0. These test general stable-range theorems, not isolated examples.

## R05 (P2) — Replace unnamed ranges and formulas by actual theorem statements

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:774`–775: “Prove the fibre sequence in its valid range”; 796–797: “Prove the Barratt--Toda formula”; 1093–1095: “State the index lower bound as an explicit function of matrix rank”.

**Claim:** the EHP and Bott proof routes specify the quantitative inputs used in later calculations.

**Witness:** §3C.1 contains no numerical exactness range or displayed degree-shifted sequence; §3C.4 contains no identity; §4B.6 contains no rank function. Consequently the later “every occurring E,H,P map” instruction at 2073 cannot be checked against them.

**Repair:** write the actual EHP arrows, exactness inequalities and endpoint qualifications; state the selected Barratt–Toda identity with its signs, nullhomotopy assumptions and indeterminacy; for each Bott-chain model state the rank-dependent lower bound and its passage to stable connectivity. Give each its precise source and individual Needs line. These are mathematical statements to supply now, not tasks asking the implementer to choose a theorem.

**Repair test:** explicitly instantiate the EHP segment ℤ→ℤ→ℤ/2→0 for S²/S³, with P multiplication by ±2 and E reduction mod 2; exactness reads 2ℤ=ker(E). Evaluate the written Bott bound at one admissible finite rank and at its excluded boundary. Without the actual function the latter two values cannot be computed; this remains an incomplete specification, not a certified estimate.

## R06 (P2) — Correct the claimed native pointed-topology suppliers

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:263`–266: “Use the following native carriers and maps” includes “pointed cones, suspensions, mapping cones”.

**Claim:** these topological pointed constructions are supplied by pinned Mathlib.

**Witness:** the pinned Mathlib mapping-cone API is for cochain complexes, not pointed spaces. The relevant native topological constructor is `TauCeti.MappingCylinder`, in `TauCeti/Topology/Homotopy/MappingCylinder.lean:81`, which is an unreduced cylinder, not a pointed cone or suspension.

Object searches over both complete pinned libraries found no reduced topological cone, suspension or mapping-cone API meeting this contract. The roadmap itself builds precisely these pointed quotients in §3A.2; its module docstring also acknowledges the absence of the suspension homomorphism. A raw quotient type or a chain-complex mapping cone is not an existing pointed topological constructor.

**Repair:** remove these objects from the native Mathlib inventory. Cite the actual quotient, homotopy and Tau Ceti mapping-cylinder primitives used, and assign the reduced pointed constructions to the already-owned §3A.2, with the ordinary-to-pointed comparison explicit. This needs no second roadmap or new heavy Lean definition.

**Repair test:** for S⁰→point, the unreduced mapping cylinder is contractible, whereas the reduced mapping cone is S¹ with H₁=ℤ. The corrected dependency distinguishes the two rather than substituting the native cylinder for the missing cone.

## R07 (P3) — Finish the source locators and headline labels

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:439`: “Milnor h-cobordism Chapters 2–8”; 2062: “Toda Chapters I–V”; 2028–2030: “Sections 3–6” and “§§1–3”.

**Claim:** the references locate the sampled theorem claims.

**Witness:** Milnor's actual h-cobordism theorem is Theorem 9.1, printed p.107 (`milnor1965` lines 2784–2803), outside §§2–8. The individual §§1.2–1.6, 8.2, 9.5 and 10.1–10.2 still have no precise theorem/page correspondence.

**Repair:** cite Milnor 3.13–3.15 (pp.31–32), 4.8 (p.44), 6.4/6.6 (pp.69–72), 6.10–6.12 (pp.78–79), 7.6/7.8 (pp.92/97), 8.1 (p.100), and 9.1 (p.107) at the claims they support. Distinguish source theorems from this roadmap's handle, collar and finite-code adapters. Locate the exact obstruction-sequence and chosen-framing/Arf comparisons individually; Kervaire–Milnor §4's cokernel/bP argument and Snaith's existence of an Arf-one framing do not literally state all of those adapters. Add the source manifest through the normal authoring workflow; none is present here. Use Browder Theorems 1.4 and 3.2 for the quadratic/Arf comparison; do not guess unavailable Toda locators. GeometricTopology’s smooth-triangulation theorem is in “The smoothing-and-triangulation comparison”, item 1 (README 938–943), not Layer 11 alone; correct the citations at 298 and 480 accordingly.

Also name the James/EHP and Hopf-invariant headlines, with their missing carriers, in the module docstring of `Suggested.lean:19`; they are absent from its explicit list.

**Repair test:** the product theorem now points to §9, and the exceptional Whitney case points to the actual complement-π₁ condition at 6.6. Wall 13A.1 and the corrected realization locators already pass and should be retained.

## R08 (P3) — Give the Toda-bracket definition its discriminating Checks

**Location:** `TauCetiRoadmap/HomotopySpheres/README.md:786`–790 and 885–889: “For a bracket with all three maps zero the indeterminacy is zero and the bracket is {0}”.

**Claim:** the bracket API and examples distinguish the intended set-valued operation.

**Witness:** the two examples are a zero bracket and a forbidden non-null adjacent composite. Neither tests nonzero indeterminacy: a rule selecting only one value from every defined bracket passes both.

**Repair:** keep those two controls and add a third with explicitly nonzero indeterminacy. For example, for Sᵐ with m≥3 take the outer map to be the identity and the other two maps zero: the bracket lies in πₘ₊₁(Sᵐ)=ℤ/2 and its identity-composition indeterminacy is all of ℤ/2, so it is {0,η}. State the source/target and order convention. Audit the other grouped definition blocks so that each definition, not only the block as a whole, has its required API and three discriminating Checks.

**Repair test:** a singleton-valued substitute gives {0}, whereas the new bracket must give {0,η}. This belongs in the README, not as padding in Suggested.lean.

## Verified sound

The results below are instance tests and source/interface checks, not a claim that a `sorry` build proves the mathematics. The whole README and Lean file were read. No route-specific algorithm, sorry-defined data, `set_option`, out-of-folder edit or additional fully qualified Lean-name collision was found. No copied passage was detected against the readable source texts. The adopted HomotopySpheres baseline is not treated as a new competing roadmap.

**Mechanical evidence.** HEAD is exactly `2d0c4051a754aaec863c2b9cb97546dbd94bd119`; the worktree was clean before and after review and the PR diff outside this folder is empty. The supplied gate reports every counter zero and `OK`, including build, dependency check and stray-files. Fresh dependency check:

```text
depcheck: 204 roadmaps, 1477 edges, 0 problem(s)
```

No UPWARD or CYCLE line appears. This cannot certify an unregistered gap or object ownership. No merge-order file was changed. Fine-grained order is 3A.1 → early classifiers/Riemannian path constructions → Bott → TopologicalKTheory T7 → §9A. The later 4C.3 framing-action comparison consumes §5.1, while §5.1 uses only the earlier sphere-action definition of J; that is not a mathematical cycle.

Fresh `lake env lean` of the original file succeeds with exactly eight `sorry` warnings. A separate copy with `#check @name` for all eleven declarations also succeeds: all eight theorem signatures and three real-bodied definitions match the relevant prose; zero lost binders. The oriented recognition statement retains both atlas hypotheses, and the smooth frame theorem retains n>0. Scratch probes of each of the eight sorried theorems with `simp`, `rfl` and `infer_instance` leave all eight admissions. Pinned-object searches found no single existing lemma giving any of these eight conclusions. No padding finding is made. Four additional Bott-table signatures were elaborated to establish R04.

**Headlines accounted for.** The README promises smooth simply connected h-cobordism; the geometric Θ group and its diffeomorphism comparison; convenient pointed topology, James/EHP and stable stems; Hopf-invariant exclusion and parallelizable standard spheres; the full real Bott chain/table and J; smooth comparisons to finite/stable PT; A/P/Θ exactness and Wall surgery; the framing-obstruction/cokernel-J comparison; the table through stem six, Kervaire invariant and Θ₆=0; seventh stem/J, Θ₇=ℤ/28, Eells–Kuiper and E₈ nonstandardness; and oriented/unoriented six-sphere recognition. Eight native statements represent the retained headline results. R04 identifies additional statable Bott content. The heavy geometric quotient/spectral/plumbing statements require missing carriers, and are explained in the docstring. Its missing-carrier list should also explicitly name the James/EHP and Hopf-invariant headlines, rather than leave them implicit in “stable stems”. The third-stem result already has a supplier acceptance statement (R03).

**Adversarial values.** The 133 rows below cover the numbered targets, their defining operations, the sampled claims, and all eleven Lean declarations. “Pass” means the displayed instance agrees; it does not certify an uninspected source or prove a general theorem. R05 rows explicitly record quantities that the roadmap has not specified. Arithmetic was recomputed, including exact rational characteristic numbers and the E₈ determinant. Geometric examples use their displayed homology, orientations and dimension bounds; unrelated field/DVR examples do not apply to this real smooth-manifold roadmap.

| Statement / operation | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| Conventions; `Sphere` | n=0,2; zero vector | S⁰ has 2 points; S²⊂ℝ³; norm(0)=0≠1 | Pass; n=0 is not silently a point |
| Conventions; `OrthogonalGroup` | ranks 0,1; reflection | O(0) has 1 element; O(1)={1,−1}; det(−1)=−1 | Pass; SO(1) has 1 element |
| Oriented atlases; `PreservesOrientedAtlases` | identity, reflection; empty atlas on S⁶ | signs +1,−1; reversing target changes −1 to +1; empty coverage is false | Pass; both IsOrientedAtlas binders retained |
| 1.1 h-cobordism | M×I; empty cylinder; ∅→D⁷ | endpoint composites id,id; empty boundary 0 components; π₀(∅)→π₀(D⁷) is 0→1 | Definition discriminates; supplier contract R01 |
| 1.1 reversal/gluing | cylinder followed by reverse | boundary signs (−,+), then (+,−); glued interior signs cancel | Pass; R01 stores these equations |
| 1.2 Morse handles | one λ-handle; cancelling pair | relative Hλ=ℤ, others 0; chain ℤ→¹ℤ has kernel/cokernel 0 | Pass; precise locators R07 |
| 1.3 trading/slides | elementary shear; nonunit pivot | det[[1,1],[0,1]]=1; det diag(2,1)=2; cokernel of ×2 is ℤ/2 | Pass; only unimodular operations preserve basis |
| 1.4 local Whitney move | framed disc joining signs +1,−1 | intersection total 0 before/after; geometric count 2→0 | Pass; framed embedded disc is assumed |
| 1.5 disc existence | disconnected P⊂S³×S³ in R02 | total +1−1=0; componentwise numbers (+1,−1)≠(0,0); P arc count 0 | Fails as stated; add common-component arcs |
| 1.6 exceptional level | p=2,q=3, dim V=5 | codim Q=2≠3; with ambient π₁=0, required injectivity forces complement π₁=0 | R02; condition is not a consequence of p,q≥3 |
| 1.7 product theorem | W=S⁶×I; W dimension 5 | total dimension 7≥6; endpoints S⁶,S⁶, identity; 5≥6 is false | Pass range; R07 locator |
| 2.1 finite codes | two finite atlases coding same compact manifold; empty space | quotient class difference 0; ∅ has H₀=0 versus H₀(S⁶)=ℤ | Pass; code equivalence must use the marked diffeomorphism |
| 2.2 connected sum | Sⁿ#Σ, Σ#Sⁿ | both classes [Σ]; neck orientations have opposite signs | Pass; KM 2.1 |
| 2.3 inverse | Σ#(−Σ) | quotient class [Σ]−[Σ]=0; double puncture trace has the standard other end | Pass; no Θ₄ diffeomorphism inference |
| 2.4 Θ group | n=1; n=0; n=4 | oriented circle gives identity class; 0≥1 false; 4≥5 false | Pass positive-dimensional group / high-dimensional comparison split |
| 3A.1 coreflector | point, empty, locally compact ℝ | k(point)=point; k(∅)=∅; k(ℝ)=ℝ; evaluation at 0 sends f to f(0) | Pass; native carrier does not imply Hausdorffness |
| 3A.2 pointed cone/cofiber | cone on point; S⁰→point | reduced cone point; cofiber ΣS⁰=S¹, reduced H₁=ℤ | Pass; a constantly collapsed cofiber would give H₁=0 |
| 3A.2 extension/nullhomotopy | boundary value g∘f; H from g∘f to constant | H(1−t) gives constant at apex t=0 and g∘f at base t=1 | Pass endpoint convention |
| 3A.2 Puppe/relative exactness | identity cofibration | cofiber contractible; image identity=whole group=kernel of zero | Pass both kernel/image directions on this instance |
| 3A.3 suspension addition | degree +1 and reflected degree −1 | pinch sum 1+(−1)=0; twice identity has degree 2 | Pass; reflection is inverse, not identity |
| 3A.3 double-loop commutation | two loop coordinates | interchange makes ab=ba; S₃ has (12)(23)≠(23)(12), so arbitrary π₁ cannot replace higher loops | Pass dimension restriction |
| 3A.3 stable colimit | degree maps in stem 0 | stabilized degrees 1 and 0 remain 1 and 0 in ℤ | Pass; zero colimit model excluded |
| 3A.4 Freudenthal | (n,q)=(8,14),(7,13) | 14≤2·8−2=14; 13≤2·7−2=12 false | Mathematics agrees; duplicate ownership R03 |
| 3B.1 reduced words | basepoint word, xy | basepoint deletion length 0; nonbasepoint xy length 2 | Pass; monoid is not the one-point monoid |
| 3B.2 word filtration | X=S¹, r=1,2 | J₁/J₀=S¹; J₂/J₁=S¹∧S¹=S², reduced H₂=ℤ | Pass |
| 3B.3 James map/Künneth | two M(ℤ/2,2) factors | tensor term ℤ/2 in degree 4; Tor(ℤ/2,ℤ/2)=ℤ/2 contributes degree 5 | Pass; tensor-only formula would lose degree 5 |
| 3B.4 connected James equivalence | X=S¹; disconnected based S⁰ | π₁J(S¹)=π₂S²=ℤ, generator 1→1; S⁰ has 2 components | Pass; disconnected input excluded |
| 3B.4 replacement component condition | point and two-point discrete X | π₀ has sizes 1 and 2 respectively; weak equivalence cannot identify them | Pass; replacement retains π₀ |
| 3B.5 James–Hopf | word xyz; word x | ordered pairs xy,xz,yz count 3; length-one word gives empty product, count 0 | Pass ordering/degenerate control |
| 3C.1 EHP | S²/S³ segment | ℤ→±²ℤ→mod2ℤ/2→0; image P=2ℤ=kernel E | Instance agrees; full range/arrows missing, R05 |
| 3C.2 Hopf/sign | Hopf map H=1; target degree −1; source degree −1 | target multiplication squares to (+1); source reversal gives −1; odd-dimensional cup-square has 2u²=0 | Pass; free top cohomology forces odd-case u²=0 |
| 3C.3 Toda brackets | zero triple; adjacent identities; outer id with two zeros on Sᵐ, m≥3 | {0}; undefined since id∘id≠0; indeterminacy ℤ/2 and bracket {0,η} | R08 adds third discriminating Check |
| 3C.4 Barratt–Toda | null adjacent composites versus identities | zero composites admit 0 nullhomotopies; identity composite has degree 1≠0 | Domain test only; no formula supplied to evaluate, R05 |
| 3C.5 two-cell K ring | x,y with x²=Hy | for H=1, x²=y, xy=y²=0; zero-square alternative gives x²=0≠y | Pass |
| 3C.5 Adams arithmetic | r=1,2,4; b₂=1 | 3ʳ(3ʳ−1)b₂=2ʳ(2ʳ−1)b₃ gives 6=6,72=72,6480=6480 for b₃=3,6,27 | Pass |
| 3C.5 Hopf exclusion | r=1,2,3,4,6 | v₂(3ʳ−1)=1,3,1,4,3; comparison with r allows 1,2,4 and excludes 3,6 | Pass; not restricted to odd primes |
| 3C.5 Clifford frames | ℝ²,ℝ⁴,ℝ⁸ | Ai²=−I; ⟨Aix,x⟩=0; unit x gives independent field counts 1,3,7 | Pass; signs match Cl(0,n) |
| 3C.5 smooth multiplication | join parameter t=0,1 | (√(1−t)x,√t y) gives (x,0),(0,y), squared norm (1−t)+t=1 | Pass; endpoint normalization matters |
| `sphere_parallelizable_iff` | n=0,1,2,3,7 | n=0 has empty frame but RHS false, excluded by 0<n; true/false/true/true for 1/2/3/7; Euler(S²)=2 | Pass signature; positive binder essential |
| 4A.1 stable matrices | I, reflection; rank zero | AAᵀ=I for both; determinants +1,−1; empty determinant 1 | Pass O/SO distinction |
| 4A.2 loop/classifier | SO(2) rotation, stabilized loop twice | winding 1→1 mod2; winding 2→0 mod2 | Pass; finite rank 2 is not already stable |
| 4A.3 smooth stable frame | TS²⊕ε¹ | rank 2+1=3, trivial; TS² rank 2 has Euler number 2 and is not trivial | Pass stable versus honest distinction |
| 4A.4 null classification | trivial bundle; stabilized TS² | both stable class 0; chosen gauges differ by maps to SO, not by equality of frames | Pass; no canonical chosen frame follows from class 0 |
| 4A.5 clutching / BSO | stable bundle over S²; Möbius line over S¹ | stable clutching group π₁SO=ℤ/2; Möbius orientation fails; π₁BSO=0 | Pass values; BSO ownership R03 |
| 4A finite tangent-circle model | frame at e₁ with tangent e₂; reflected frame | ordered (e₁,e₂,e₃) determinant +1; tangent reversal changes determinant to −1 | Pass; SO(3) model and orientation discriminated |
| 4A early sphere groups | circle fibre; S⁷ in degrees 5,6 | higher πj(S¹)=0 for j≥2; π₅S⁷=π₆S⁷=0 since degrees<7 | Pass; no use of Bott in this input |
| 4B.1 Bott spaces | eight spaces beginning ℤ×BO | π₀ values ℤ,ℤ/2,ℤ/2,0,ℤ,0,0,0 | Pass; deleting components would change first three/fifth |
| 4B.2 geodesic normalization | exp(tA), A=0; circle arc lengths θ,2π−θ | exp(0)=I; length 0 for A=0; at θ=π both lengths π | Pass; no unique shortest path at antipodes |
| 4B.3 broken geodesics | constant path; segment subdivision | energy 0→0; subdividing a constant-speed segment preserves sum length²/time | Pass; only sufficiently short segments have unique normal coordinates |
| 4B.4 Hessian/negative bundle | diag(−1,+1); diag(0,+1) | index/nullity (1,0), (0,1); negative fibre dimensions 1,0 | Pass; zero eigenspace is not a negative direction |
| 4B.5 energy attachment | index-one nondegenerate point | attaches D¹ along S⁰, relative H₁=ℤ; index-zero attaches D⁰ with H₀=ℤ | Pass normal-Morse convention |
| 4B.6 connectivity estimate | constant shortest geodesic; next critical family | shortest index 0; claimed nonminimal lower bound is unspecified | R05; no numerical finite-rank theorem to certify |
| 4B.7 eight equivalences | k=0 and k=3 in O | π₈O=π₀O=ℤ/2; π₁₁O=π₃O=ℤ | Pass stable periodicity |
| 4B.8 full table | degrees 0 through 7 | ℤ/2,ℤ/2,0,ℤ,0,0,0,ℤ; all-zero table disagrees in degrees 1,3,7 | Pass mathematics; incomplete Lean acceptance R04 |
| 4B.9 Clifford comparison | Cl(0,0),Cl(0,1),Cl(1,0) | ℝ,ℂ,ℝ⊕ℝ respectively; imaginary generator square −1 versus +1 | Pass supplier sign convention |
| `orthogonalGroup_bottPeriodicity` | k=0,n=11; k=2,n=13 | π₉O(11)=π₁O(11)=ℤ/2; π₁₁O(13)=π₃O(13)=ℤ | Pass; upper degree≤n−2 in both cases |
| fifth/sixth O headlines | n=7,8 at respective minima | π₅O(7)=0, π₆O(8)=0; underlying group cardinalities 1,1 | Pass; rank bounds retained |
| 4C.1 unstable sphere action | identity matrix; plane rotation loop | identity action degree 1; zero based loop maps to 0, rotation to η after stabilization | Pass; J is a based construction |
| 4C.2 stable J | degree 1 rotation; degree 7 Bott generator | J₁(1)=η of order 2; J₇(b) has e=±1/240 | Pass values; generator comparison is explicit work |
| 4C.3 framing action | change by g=0 or b | class difference 0 or J(b); in coker J both differences 0 | Pass; does not assert equality in the unquotiented stem |
| 5.0 finite PT | empty, positive point, negative point | collapse degrees 0,+1,−1 | Pass; honest codimension c≥1 retained |
| 5.0 finite versus stable | c=2,d=1; stabilized c=3 | π₃S²=ℤ versus π₄S³=ℤ/2; generator maps to its parity | Pass; no unconditional finite-to-stable bijection |
| 5.0b framed curves | bounding and nonbounding Spin circle | class 0 and 1 in ℤ/2; two nonbounding circles sum to 0 | Pass; supplier convention retained |
| 5.0b framed surfaces | q(e),q(f)=(0,0),(1,1) | Arf=0·0=0 and 1·1=1; sum of two latter forms has Arf 0 | Pass; zero-form case also 0 |
| 5.0b rank stabilization | surface bordism dimension 3, c=4 versus c=3 | stable Stiefel connectivity c−1=3 versus 2 | Pass stated sufficient rank; boundary extension is relative |
| 5.1.1 tangent/normal | S²⊂ℝ³ | TS²⊕ν has rank 3 and is trivial; ν rank 1; TS² alone not trivial | Pass; comparison is stable |
| 5.1.2 bundle diagrams | identity trivialization; normal reflection | composite trivialization identity; reflection determinant −1 | Pass orientation information retained |
| 5.1.3 collapse/augmentation | two framed points; empty submanifold | Thom wedge has 2 sphere summands, augmentation sums degrees to 2; empty gives 0 | Pass; forgetting augmentation would change target |
| 5.1.4 products/J | two positive points; frame change g | PT product 1·1=1; frame-change difference J(g), quotient difference 0 | Pass conditional on normalized comparison |
| 6A.1 exterior/defect | standard hemispherical defect; shrunken collar | exterior is closed disc, not the whole sphere; ε→ε/2 remains >0 | Pass; R01 supplies general endpoint carrier |
| 6A.1 tube faces | one proper defect tube | endpoint faces 2, lateral face 1; their corner intersections are retained | Pass; omitting lateral face loses framing boundary data |
| 6A.2 quotient | standard almost-framed sphere; reverse | neutral class 0; α+(−α)=0 | Pass; stable gauge, not arbitrary disc choice, is compared |
| 6A.3 historical frame | sphere with one top cell deleted | exterior rank n+stable normal rank equals ambient rank | Pass; no honest n-frame inferred from stable data |
| 6A.4 model comparison | identity defect path; path followed by reverse | transported gauge id; concatenated path class 0 | Pass; disc/top-cell comparison must retain path |
| 6B.1 filling | D⁷ and boundary S⁶ | tangent ranks 7,6; outward normal contributes 1, giving 6+1=7 | Pass; a closed manifold has 0 boundary components |
| 6B.2 three-face bordism | filling cylinder | incoming/outgoing signs −,+; common corner has opposite induced signs | Pass; vertical face not discarded |
| 6B.3 honest framing | nonempty-boundary W with spine dimension≤n−1 | rank n exceeds spine dimension; rank 2 TS² counterexample has base dimension 2 and no boundary | Pass scope excludes closed cancellation counterexample |
| 6B.3 collar normalization | oriented normal two-plane quarter turn | determinant [[0,−1],[1,0]]=1; reflection determinant −1 | Pass; rotation preserves orientation |
| 6B.4 moving boundary path | constant path; nonconstant loop and inverse | constant transport id; loop·reverse has class 0 | Pass; endpoints alone do not identify a nontrivial path |
| 6B E₈ family | E₈ tree with arms 1,2,4; k=2 | leading minors 2,3,4,5,4,3,2,1; determinant 1; −E₈ signature −8 | Pass; boundary homology is that of S⁷ |
| 6B E₈ range | k=1 versus k=2 | boundary dimensions 3 and 7; k>1 excludes 3-dimensional homology sphere with nontrivial π₁ | Pass; homology sphere alone is insufficient |
| 6C.1 deletion/boundary | standard disk filling | outgoing Sⁿ fundamental class +1; exterior inner boundary sign −1 | Pass; signs distinguish defect boundary from filling boundary |
| 6C.2 geometric exactness | zero classes and E₈ filling | boundary of disk 0; −E₈ has P₈ coordinate −1 and boundary −1 mod28 | Pass conditional on §9A; boundary map not zero in dimension 8 |
| 6C.3 bP | disk; repeated negative E₈ | image contains 0 and −1 mod28; 28·(−1)=0 mod28 | Pass; image subgroup differs from all fillings themselves |
| 7A.1 degree-one normal maps | identity; sphere degree 2 | degrees 1 and 2; identity kernel 0; degree 2 fails degree-one condition | Pass |
| 7A.2 kernels | identity; hyperbolic handle pair | kernel rank 0; middle hyperbolic matrix det −1, nonsingular | Pass; arbitrary unlinked module not allowed |
| 7A.3 below-middle surgery | dimension 6, surgery sphere dimension 2 or 3 | 2<6/2=3; 3<3 false | Pass; middle case goes to 7B |
| 7A.4 connectivity improvement | finitely generated kernel ℤ² | two generators; killing both gives quotient 0 | Pass finite-generation input; does not claim a finite list for infinite rank |
| 7B.1 quadratic sign | dimensions 6 and 8 | ε=(−1)³=−1 and (−1)⁴=+1 | Pass; skew versus symmetric distinguished |
| 7B.2 forms | hyperbolic integral plane; negative E₈ | signatures 0 and −8; signature/8 values 0 and −1 | Pass normalization |
| 7B.3 formations | (H;L,L*), (H;L,L); span(e+f) for q(xe+yf)=xy | elementary formations both 0; q(e+f)=1 so that line is not q-zero | Pass; bilinear isotropy alone fails |
| 7B.4 Wall comparison | zero kernel and hyperbolic stabilization | 0→0; adding H changes raw rank by 2, obstruction class by 0 | Pass; invariance is of class, not raw kernel |
| 7B.5 even vanishing | dimension 6; q hyperbolic versus anisotropic | Arf 0 versus 1, zero obstruction true versus false; 6 meets 2q≥6 | Pass both implications on forms |
| 7B.6 odd vanishing | dimensions 5 and 7 | L₅(ℤ)=L₇(ℤ)=0; 5≥5 true | Pass vanishing range differs from realization range |
| 7B.7 realization | even 6; odd 5 and 7 | 6≥6 true; 5≥7 false; 7≥7 true | Pass corrected Wall hypotheses |
| 7B.8 geometric fillings | D⁸; negative E₈ | obstruction coordinates 0,−1 | Pass; realization not just an abstract group cardinality |
| 7C.1 odd groups | n=5,7 | both groups 0 | Pass |
| 7C.2 signature coordinate | H; −E₈ | σ/8=0 and −1 | Pass primitive integer coordinate |
| 7C.3 Arf coordinate | q=xy; q=x²+xy+y² over 𝔽₂ | q(1,0),q(0,1),q(1,1)=(0,0,1) versus (1,1,1); Arf 0 versus 1 | Pass; anisotropic plane has no q-zero line |
| 7C.4 defect surgery map | framed hyperbolic versus ν×ν | Wall class 0 versus 1 in P₆=ℤ/2 | Pass conditional on 9.5 framing calculation |
| 8.1 forget frame | empty framed cycle; two connected components | adjoining boundary-framed sphere adds 0; connecting handles preserve sum [M]+[N] | Pass; a defect disc is not chosen in ∅ |
| 8.2 extension/exactness | zero clutching; nonzero clutching; change by g | extension possible at 0, impossible at nonzero stable class; PT difference J(g), quotient difference 0 | Pass kernel formulation; source adapter locator R07 |
| 8.3 cokernel comparison | n=6 versus n=8 | π₅SO=0 gives whole A₆; π₇SO=ℤ in n=8 gives only kernel | Pass; no preferred PT value on all A₈ |
| 8.4 KI | hyperbolic and anisotropic plane | Arf values 0 and 1; orthogonal sum of two anisotropic planes gives 1+1=0 | Pass; Browder 3.2 compatibility has framed hypotheses |
| 9.1 first Hopf stems | η,η²,ν | orders 2,2,24; 2η=2η²=24ν=0, η and ν nonzero | Values agree with independent sources/suppliers; third-stem ownership R03; Toda text unverified |
| 9.2 fourth/fifth stems | zero class | both groups have order 1; π₄S=π₅S=0 | Table agrees; omitted formulas R05 prevent checking proposed EHP derivation |
| 9.3 ν² | ν₄∘Σ³ν₄ | S¹⁰→S⁷→S⁴; reverse order ill-typed; stable order 2 | Pass degree shifts; Toda derivation unverified |
| `sphere_homotopyGroup_sixthStem` | n=8; n=7 excluded | 8+6=14=2·8−2; group ℤ/2; 7+6=13>12 | Pass stated stable range |
| 9.4 compatible table | stems 0,…,6 | orders ∞,2,2,24,1,1,2; stabilization preserves displayed generators | Pass values; no circular table-as-input |
| 9.5 product/Arf | framed S³×S³, factor basis | integral intersection [[0,1],[−1,0]]; mod2 [[0,1],[1,0]]; q(a)=q(b)=1 gives Arf 1 | Consistent; exact normalized-framing proof is new work, R07 locator |
| 9.6 almost-framed six | π₆SO=π₅SO=0 | im J₆=0; coker J₆=ℤ/2; A₆=ℤ/2 | Pass conditional on earlier comparisons |
| 9.7 Θ₆ | 0→Θ₆→ℤ/2→idℤ/2 | left image 0; right kernel 0; Θ₆ has 1 element | Pass; replacing KI by zero would give kernel size 2 |
| 9A.1 upper bound | p=2,3,5; p=7 | orders ≤16,3,5; product 240; first non-τ₀ positive stem≥2·7−3=11>8 | Pass arithmetic; all primes retained |
| 9A.1 convergence/finiteness | τ₀-only word; rational sphere | t−s=0; positive rational stem rank 0 versus degree-zero rank 1 | Pass hypotheses; E₂ bound alone not asserted as abutment |
| 9A.1 e-invariant | x=1/240; 2x=1/120 | 240x=1=0 modℤ;120x=1/2≠0; (x+1/2) also solves doubled equation | Pass; complexification cannot be halved uniquely |
| 9A.1 primitive J | b and 2b | c(b)=u⁴; c(2b)=2u⁴; e values ±1/240 and ±1/120 | Pass; zero map excluded by primitive value |
| `sphere_homotopyGroup_seventhStem` | n=9; n=8 excluded | 9+7=16=2·9−2, group order 240; 8+7=15>14 | Pass stable range; full Toda table not certified |
| 9A.2 exact obstruction image | Bott obstruction 240z, z=0,1 | p₂=0,±1440; σ=0,±224; σ/8=0,±28 | Pass arithmetic and realization requirement |
| 9A.2 Θ₇ | P₈=ℤ, image 28ℤ; A₇=0 | quotient ℤ/28, order 28; −E₈ maps to −1=27 mod28 | Pass; divisibility alone would not determine quotient |
| 9A.3 μ invariance | closed ℍP²: p₁²=4,p₂=7,σ=1 | (4−4)/896=0=(28−28)/5760 | Pass Spin index normalization |
| 9A.3 μ/filling | −E₈; orientation reverse | (0−4·(−8))/896=1/28; reversed value −1/28 | Pass |
| 9A.3 quaternion bundle | (h,j)=(2,−1),(1,0) | (e,p₁,σ,p₁²)=(1,6,1,36),(1,2,1,4); μ=1/28,0 | Pass |
| 9A.3 Euler hypothesis | h+j=0 | multiplication by Euler number on H⁴ is ×0, cokernel ℤ rather than 0 | Pass; sphere bundle not homology sphere |
| 9A.3 μ classification / twisted disks | equal μ=1/28; extendible clutching | injectivity gives equal class; extendible gluing gives class 0, contradicting 1/28 | Pass; equality of numbers needs stated injectivity |
| 9A.4 cap k=2 | σ=−8,p₁=0 | 7p₂=45·(−8)=−360; −360 mod7=4≠0 | Pass integer contradiction |
| 9A.4 cap k=3,4 | B₆=1/42; B₈=−1/30 | d₃=992/63, v₂=5; d₄=−2032/15, v₂=4; v₂(−8)=3 | Pass; denominators nonzero |
| 9A.4 cap k≥5 | k=5; general v₂(k)≤k−1 | d₅=261632/33, v₂=9; lower bound ≥k−1≥4 | Pass; nonzero integer multiples cannot decrease valuation |
| 10.1 orienting M | S⁶ identity and degree −1 equivalence | top H₆=ℤ, generator sent to +1 or −1; π₀ one component, π₁=0 | Pass; exact supplier route, R07 locator |
| 10.2 finite code→h-cobordism | two codes for same M; Θ₆=0 | class difference 0; equality in quotient gives h-cobordism class [S⁶] | Pass conditional on essential surjectivity; source adapter R07 |
| 10.3 orientation correction | diffeomorphism sign −1 followed by reflection | (−1)(−1)=+1; total cobordism dimension 7≥6 | Pass |
| `smoothPoincareSix_oriented` | M=S⁶, same or opposite atlases | identity sign +1; opposite orientations use reflection, relative sign +1 | Pass; existential f may depend on both atlases |
| `smoothPoincareSix` | M=S⁶; M=∅; M=ℝ⁶ | identity exists; ∅ has H₀=0≠ℤ; ℝ⁶ is noncompact and H₆=0≠ℤ | Pass; no vacuous arbitrary-topology substitution |
| Native pointed-topology inventory (R06) | S⁰→point | native mapping cylinder contractible, H₁=0; reduced mapping cone S¹, H₁=ℤ | Different objects; repair inventory |

**Pinned declarations opened.** Mathlib revision `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti revision `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following are file/line witnesses at those pins, not claims about a newer library. Object searches covered both pinned trees; searches by the eleven fully qualified local names found no competing declaration.

| File at the pin | Declaration or content read | Consequence for this review |
| --- | --- | --- |
| `Mathlib/Topology/Homotopy/HomotopyGroup.lean:441`, 458, 603 | HomotopyGroup quotient, Pi abbreviation, higher commutative group instance | Native based groups exist; no stable sphere colimit or suspension map supplied by these definitions |
| `Mathlib/LinearAlgebra/UnitaryGroup.lean:293`, 295, 313 | orthogonalGroup, membership AAᵀ=1, specialOrthogonalGroup | Correct native O(n)/SO(n), including rank zero |
| `Mathlib/Geometry/Manifold/Instances/Sphere.lean:385` | EuclideanSpace.instIsManifoldSphere | Analytic structure uses finrank E=n+1; supports the retained Sphere abbreviation |
| `Mathlib/Geometry/Manifold/PoincareConjecture.lean:41` | ContinuousMap.HomotopyEquiv.NonemptyDiffeomorphSphere | Includes T2Space, not CompactSpace or SecondCountableTopology |
| `Mathlib/Topology/Compactness/CompactlyGeneratedSpace.lean:67` | compactlyGenerated is the coinduced topology of all continuous compact-Hausdorff probes of the specified universe | Does not impose T2Space or nonemptiness on X |
| `Mathlib/Topology/Category/CompactlyGenerated.lean:32`, 77, 81 | carrier, inclusion functor, fully faithful inclusion | Does not by itself provide the adjunction/exponential API promised in §3A.1 |
| `Mathlib/Geometry/Manifold/WhitneyEmbedding.lean:131` | exists_embedding_euclidean_of_compact | Smooth compact Hausdorff hypotheses retained; not a relative protected-collar embedding theorem |
| `Mathlib/NumberTheory/Bernoulli.lean:689` | Bernoulli.padicValRat_bernoulli | Requires prime p, positive k and p−1 dividing 2k; p=2 satisfies divisibility, k>1 supplies positivity |
| `Mathlib/Algebra/Homology/HomotopyCategory/MappingCone.lean:57` | CochainComplex.mappingCone | Its source is a morphism of cochain complexes; R06 cannot treat it as a topological pointed cone |
| `TauCeti/Geometry/Manifold/Orientation.lean:292`, 332 | linear determinant criterion; IsOrientedAtlas fields | Actual atlas compatibility, coverage and positive transitions; empty atlas on a nonempty sphere is excluded |
| `TauCeti/Geometry/Manifold/Boundary/Charts.lean:321`, 374 | isManifold_boundary; isSmoothEmbedding_subtypeVal_boundary | Finite-dimensional half-space model and k≠0; no collared bordism/gluing carrier follows |
| `TauCeti/AlgebraicTopology/Sphere/SimplyConnected.lean:408` | simplyConnectedSpace_sphere_euclideanSpace | Applies to Sⁿ for n≥2; not S¹ |
| `TauCeti/AlgebraicTopology/UniversalCover/Circle/HigherHomotopy.lean:84`, 95, 109, 122 | higher homotopy vanishing for Circle and Euclidean unit circle | Higher-index/Nontrivial hypotheses exclude π₁(S¹)=ℤ |
| `TauCeti/Topology/Homotopy/MappingCylinder.lean:81` | MappingCylinder quotient of I×X⊔Y, glued at t=1 | Actual native unreduced constructor; reduced pointed comparisons remain work |

**Ownership and supplier resolution.** Searches used the roadmap service's object grep and show, the main tree, the named open checkouts, and board packages. Broad terms included compact generation, Whitney discs, normal/framed bordism, Pontryagin–Thom, James construction, Bott periodicity, stable stems, Clifford tables, surgery forms, and sphere parallelizability. The table records 17 supplier families resolved, including the completed UniversalCovers roadmap. Existing roadmap revisions are read on main; newly supplied roadmap heads are identified below. No unlisted open work was fetched. The new ownership retained here is the convenient pointed comparison, sphere-specific defect/filling adapters, and the homotopy-sphere calculations; general supplier objects are imported. R03 identifies the remaining repeated objects. R01 and R06 record defects that a name resolver cannot detect.

| Supplier/version | Resolved repository-relative witnesses | Contract checked |
| --- | --- | --- |
| GeometricTopology, main | `TauCetiRoadmap/GeometricTopology/README.md:205`, 210, 218, 222, 592; smoothing comparison 938 | Collars, gluing, tubes, sum, general cobordisms; exact two-ended interface not supplied (R01). Smooth triangulation is after Layer 11, so correct its locator (R07). |
| DifferentialGeometry, main | `TauCetiRoadmap/DifferentialGeometry/README.md:345`, 507; Layers 3/10 | Orientation lifts and comparison, boundary convention, flows/Sard/degree. Relative protected-face approximation is routed to TangentialBordism, not inferred from ordinary approximation. |
| HeegaardFloer, main | `TauCetiRoadmap/HeegaardFloer/README.md:57`, 243–260, Lanes M/F0 | Morse–Smale and trajectory inputs are separate; no Floer homology coefficient calculation is needed for handles. |
| AlgebraicTopology, main | `TauCetiRoadmap/AlgebraicTopology/Suggested.lean:962`, 1111, 1132, 1154, 1213; README Stages 4.5/8 | Duality, relative Hurewicz with n≥2, compact-manifold finite CW type, simply connected homological Whitehead. Convenient pointed co-H/Puppe comparison is assigned to HomotopySpheres by the main roadmap. |
| Completed UniversalCovers, main | `Completed/UniversalCovers/README.md:126`–143 | Covers and higher-homotopy/basepoint transport; not a new cover construction here. |
| TopologicalKTheory, main | `TauCetiRoadmap/TopologicalKTheory/README.md:299`–325, 544–547, 702; T3–T4; 1262–1267 | Finite Stiefel/π₁SO, BSO simple connectivity, Adams operations and complex Bott, geometric real ring and c(a)=2u²,c(b)=u⁴. T7 is later than the real Bott input, not a premise of §4B. |
| CharacteristicClasses, main | `TauCetiRoadmap/CharacteristicClasses/README.md:1463`–1517, 1534, 1553 | Normalized ch, formal characteristic polynomials, smooth sphere tangent/hyperplane comparison; geometric index equality comes from IndexTheory. |
| SpinRepresentations, main | `TauCetiRoadmap/RepresentationTheory/SpinRepresentations/README.md:881`–901 | Native real Clifford signature convention and periodic table; nested location resolved, not assumed missing. |
| SpinGeometry, main | `TauCetiRoadmap/SpinGeometry/README.md`, G4; 775–788 | Spin lift torsor and periodic/antiperiodic circle convention; kernel dimensions 1/0. |
| RiemannianGeometry, main | `TauCetiRoadmap/RiemannianGeometry/README.md`, R1–R3; 566–605 | Geodesics, finite broken paths, normalized sphere Freudenthal; last item is already an owner (R03). |
| MorseTheory, main | `TauCetiRoadmap/MorseTheory/README.md:430`–457, 611–644 | Relative approximation only when protected data already qualify; normal nondegeneracy and negative bundles for Morse–Bott attachment. |
| TangentialBordism, supplied new head | `TauCetiRoadmap/TangentialBordism/README.md:225`–263, 864–940, 1038–1090, 1840–1898 | Relative transversality; operations/Adams tower; finite PT c≥1,d≥0 with inverse bordisms; geometric q and Spin filling. Its named finite quadratic Arf contract is consumed, not replanned. |
| StringOrientation, supplied new head | `TauCetiRoadmap/StringOrientation/README.md:528`–636; `Suggested.lean:48` | Coefficient PT and product; framed specialization and third stem. §5's chosen-model comparison is different work; §9.1 group recomputation is not (R03). |
| EllipticCohomology, main (supplier of preceding normalization) | `TauCetiRoadmap/EllipticCohomology/README.md:913`–978, E5 around 1675 | ν normalization/third stem underlying the StringOrientation citation. |
| IndexTheory, supplied new head | `TauCetiRoadmap/IndexTheory/README.md:740`–749, 854–879 | Geometric signature theorem and closed Spin chiral index with trivial twist; supplies the integrality used in dimension eight. |
| GeneralizedCohomology, main | `TauCetiRoadmap/GeneralizedCohomology/README.md:2212`–2235 | Rational stable sphere Hurewicz: positive degrees zero, degree zero ℚ. |
| DGFloer, main | `TauCetiRoadmap/DGFloer/README.md:650`–675 | Serre-class Hurewicz; the finitely generated abelian Serre class applies to simply connected finite spheres. |

**Seeded source sample: all 15 targets accounted for.** All 25 cited works were attempted through the sources service, plus Wall's errata. Thirteen cited works were readable (twelve fresh fetches and the existing legal Kervaire–Milnor extraction); the relevant passages were read directly, including texts located by the source helper. No source text was copied into the worktree or report. There are no literal “unverified” labels in the README; its broad chapter citations still need resolution as described below.

| Sample target | Text and precise locator read | Verification result |
| --- | --- | --- |
| 1.2 Morse handles | `milnor1965` lines 810–847, Theorems 3.13–3.15, pp.31–32; line 1071, Theorem 4.8, p.44 | Handles and reordering supported for the stated compact Morse situation. Slides/cancellation require their own later locators, not this whole paragraph alone. |
| 1.3 Handle trading | `milnor1965` lines 2418–2444, 2565–2634, Theorems 7.6/7.8 and 8.1, pp.92/97/100 | Basis operations and handle elimination checked in the h-cobordism setting. R07 asks for these individual locators. |
| 1.4 Local Whitney moves | `milnor1965` lines 1800–1867, Theorems 6.4/6.6, pp.69–72 | Local cancellation requires the displayed disc/arcs and disjointness; not an ambient-simple-connectivity-only assertion. |
| 1.5 Whitney discs | `milnor1965` lines 1841–1867, Theorem 6.6, pp.71–72; lines 2048–2057, 6.10, p.78 | Dimension inequalities agree, but connecting arcs/loop condition were dropped in the roadmap (R02). |
| 1.6 five-dimensional level | `milnor1965` lines 1883–1896, special index-two argument after 6.6, p.72; lines 2058–2095, 6.12, p.79 | Complement π₁ injectivity is explicit in the source. The roadmap still needs to state it (R02), not merely promise it. |
| 2.2 connected sum | `kervairemilnor1963` lines 79–112, Lemma 2.1, p.505 | Compatible with oriented h-cobordism; positive-dimensional group result at Theorem 1.1, p.504, lines 48–49. No n≥5 restriction on the group itself. |
| 5.1 stable tangent/normal comparison | `kervairemilnor1963` lines 195–257, Theorem 3.1 and Lemmas 3.3–3.5, pp.508–509; `milnorTDV` lines 1251–1293, §7 A–C, pp.43–44; `snaith2010` lines 253–308, §3 | Stable normal/tangent triviality and smooth finite normal collapse supported. The chosen bundle-diagram, augmentation and product comparisons are additional owned targets, not verbatim source theorems. |
| 8.2 obstruction/exactness | `kervairemilnor1963` lines 280–342, §4 Theorems 4.2/4.5, pp.510–512 | Supplies the framing/cokernel-J and bounding-sphere arguments. Does not literally state the roadmap's new A/P carrier sequence with all collar maps. R07 requires theorem-to-adapter attribution. |
| 8.4 Kervaire invariant | `browder1969` lines 225–226, Theorem 1.4, p.162; 375–405, definition and Theorem 3.2, p.166 | Quadratic identity, basis-independent Arf and framed comparison verified. Framing/Wu-structure hypotheses are essential; almost-framed extension uses the roadmap's surgery construction. |
| 9.1 first Hopf stems | Toda Chapters I–V unavailable; `kervairemilnor1963` lines 343–349, §4 table, p.512; StringOrientation S2.3 resolved | Group values agree with independent table/supplier. Toda's precise theorem/page and the proposed EHP derivation remain uncertified. Third-stem ownership R03. |
| 9.4 compatible table | Same independent KM table; Toda unavailable | Values through six agree; a published table alone does not verify chosen suspension maps or generator comparisons. |
| 9.5 framed product/Arf | `snaith2010` lines 1134–1172, especially Example 8.3, p.31; `browder1969` lines 579–645, Theorem 5.2/Proposition 5.3, pp.171–173 | Existence of Arf-one product structure and framed realizability in q=3 supported. Equality with the particular quaternionic-Hopf-fibre product framing is correctly retained as work, not supplied by the bare existence example. |
| 9.6 almost-framed six | `bott1959` lines 103–113, corollary and table, pp.314–315; KM §4 as above | π₅SO=π₆SO=0; hence conditional coker-J algebra is correct. A₆ uses the explicit comparison built here. |
| 10.1 orientation of homotopy six-sphere | KM Theorem 1.1 and §2; DifferentialGeometry Layer 2 and AlgebraicTopology duality resolved | Top homology generator/connectedness argument checks; no exact external locator supplied for the universe/atlas adapter (R07). |
| 10.2 small code to h-cobordism | KM §§1–2; `milnor1965` lines 2784–2803, Theorem 9.1, p.107 | Classical h-cobordism consequence supported. Finite-code essential surjectivity/quotient transport is original interface work in Layer 2, not a theorem quoted from KM or Smale (R07). |

Additional source checks: `adamsatiyah1966` lines 22–25 and 72–92 (Theorem A, pp.31–33) support the two-cell/Adams-operations exclusion; `hatcherVB` lines 2326–2369 and 2442–2588 (Theorems 2.16/2.19 and Lemma 2.22, pp.59–65) support the frame/Hopf route and its arithmetic. Its Proposition 1.14, p.25, lines 984–1007, is oriented clutching, with rank-one nonorientability distinguished. `bottmilnor1958` lines 28–48 (Corollary 2, pp.87–88) supplies the positive-dimensional sphere-frame obstruction. `atiyah1971` lines 419–433 (Proposition 4.1/Theorem 3′, p.58) gives the Spin-boundary mod-two-index criterion; it is not by itself the geometric framing-to-Arf comparison. `ranicki2001` lines 257–297 (§2, pp.6–7) requires q-zero Lagrangians and precisely the two elementary formation relations used here. `wall1999` lines 2309, 2498, 3162, 3187 and 8288 locate Theorems 5.6, 5.8, 6.4, 6.5 and 13A.1 at pp.50,54,68–69,172; the separate even/odd vanishing and realization bounds match the repaired README. `smale1961` lines 42,58,104 and 278–329 distinguish the homeomorphism theorem A from the specialized odd-dimensional smooth theorem I; it is not substituted for Milnor's full product theorem.

## Not verifiable

These are source-access limitations, not counterexamples and not assertions that the sources are wrong. The review is complete with those limits; it is not parked for another text request. Eight unresolved works are consolidated in `needs-references.toml`; settled uncertified works are not requested again.

- **Toda 1962, Chapters I–V and XIV:** the service returned an uncertified publisher match, but its Elsevier DOI does not reliably identify the cited Princeton monograph. No monograph text was read. Exact theorem/page, EHP/Toda identities, and the normalized sixth/seventh-stem derivations are not source-certified. Independent group tables and suppliers were checked as above.
- **James 1955:** DOI/JSTOR landing-page attempt supplied no legally readable full text. The reduced-product theorem's precise locator and its hypotheses are not certified from that work.
- **Steenrod 1967:** the Project Euclid DOI landing page yielded no PDF through the service. The convenient-category theorem is not source-certified; pinned compact-generation definitions were inspected separately.
- **Pontryagin 1959:** AMS DOI redirected through an access service; no text obtained. **Thom 1954:** publisher DOI classified uncertified. Their general normal-framing/Thom background was not checked from those works; the readable Milnor/Snaith finite-collapse passages do not replace every such claim.
- **Whitehead 1978; Steenrod 1951; Husemoller 1994; Kosinski 1993:** the service's bibliographic/local-source lookup found no legal full texts. The claimed chapters on EHP, bundles and smooth differential-topological comparisons remain unverified at their exact locators.
- **Hirsch 1976:** publisher DOI classified uncertified; no text read.
- **Adams 1960:** JSTOR landing-page attempt and an institutional Rochester candidate both failed to provide readable text. The Adams–Atiyah alternative was read; the 1960 locator itself remains unverified.
- **Kervaire 1958:** the legal PMC attempt returned HTML in place of the PDF and the service classified it uncertified. This is an access failure, not a finding that the work is paywalled. Bott–Milnor's separate text was read.
- The new finite-atlas coding, smooth bundle-diagram and defect-collar adapters do not have literal counterparts in the historical texts. Their displayed test instances were checked, but broad historical citations cannot certify those new formal interfaces. R01/R05/R07 identify the specification work still required.

## Source issues

- **Misprint** in wall1999 at Theorem 13A.1 proof, printed p.173, line 3: the source says the surgery group has the negative orientation character; it should be the positive orientation character; affects the proof; corrected in print at Ranicki's errata, p.173 line 3 (`wall-errata` line 162).
