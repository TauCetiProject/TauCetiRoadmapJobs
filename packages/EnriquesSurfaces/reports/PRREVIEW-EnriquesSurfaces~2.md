# Review of EnriquesSurfaces (pull request #1286 at 885faae)

**Verdict:** needs changes

:robot: Independent AI-assisted review. Two P1 findings block acceptance. The supplied push gate passes; it does not detect the undeclared faithfulness input, the changed K3 supplier cut, or the retained companion-file violations. No pull-request file was changed.

## R01 (P1) — Give the generic faithfulness input an actual owner

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:46`, also 523 and 543: “An extension of RootSystems must be a Part II contract”.

**Claim:** The proof of the faithful T246 representation, and subsequently the T237 comparison, consumes `gap:coxeter-geometric-faithfulness`.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:275` supplies abstract exchange, not geometric faithfulness. Pinned `TauCeti/GroupTheory/Coxeter/Geometric.lean:99` explicitly excludes faithfulness. There is no matching package plan/gap entry or named Part II section.

**Repair:** Assign this general theorem to a concrete eligible owner and register the same gap slug, supplier and section in the package plan and Exact supplier contracts, or make the general theorem an earlier owned target here with a source and proof inputs. An unspecified future extension is not a supplier. The readable RootSystemsPartII concerns finite diagram folding, not this theorem. Do not narrow the required input to finite positive-definite root systems: the integral T246 Gram matrix has determinant −4 and one negative direction. Rechecking that example after the repair must leave it inside the supplier's indefinite domain. The T246 theorem in Suggested states the consumer correctly but does not supply its general proof prerequisite.

## R02 (P1) — Cite the independent nodal-period criterion where K3 now owns it

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:636`: “the actual K3Surfaces K7.B fixed-point-free criterion and the unnodal locus by its lifted-rational-curve criterion”. The allowed cuts at lines 11, 40 and 676 stop at K7.A–B.

**Claim:** K7.B supplies both geometric freeness and the period criterion for rational curves on the quotient.

**Witness:** At the supplied head, `TauCetiRoadmap/K3Surfaces/README.md:638` gives K7.B's fixed-locus theorem. The rational-curve/primitive-square−4-divisibility-two criterion is instead in §7.3, starting at line 669, with the converse at line 687.

**Repair:** Add K3Surfaces §7.3, “Free and nodal period loci”, to the precise independent cuts and the U1 dependency, and cite it for this criterion. That section explicitly consumes no Enriques result, so this repair preserves the repaired supply direction. Keep canonical-cover pullback and automorphism descent owned here. Test the citation with e′−f′ in U(2): square −4, divisibility 2; e−2f in U has square −4 but divisibility 1. The repaired contract distinguishes them, whereas the fixed-locus classification alone says nothing about this distinction.

## R03 (P3) — Apply the Lean form rules to the retained companions

**Location:** `TauCetiRoadmap/EnriquesSurfaces/ReflectionTargets.lean:1`: `import TauCetiRoadmap.EnriquesSurfaces.LatticeTargets`; `LatticeTargets.lean:1–3`; `SheafTargets.lean:1–3`.

**Claim:** Fixing the import header of Suggested is sufficient for the four reviewed Lean files.

**Witness:** ReflectionTargets still imports a roadmap module; LatticeTargets still imports two Mathlib submodules; none of the three companions imports Mathlib. Their old illustrative docstrings, undocumented declarations and names absent from README also remain.

**Repair:** Delete unused companions, or apply the prescribed single `import Mathlib` header, used individual Tau Ceti imports, target-signature documentation, layer sections and README name correspondence to every retained file. Do not add non-headline material merely to preserve these files. A scratch consolidation with legal imports elaborated all 42 named companion declarations, with only the twelve expected admissions; the forbidden imports are not necessary. The gate's clean result applies insufficiently broadly to establish this rule for the listed files.

## R04 (P3) — Remove the surviving coordinate and sheaf padding

**Location:** `TauCetiRoadmap/EnriquesSurfaces/LatticeTargets.lean:76`: `theorem gram_det : gram.det = -1 := by sorry`; also lines 78–100, `ReflectionTargets.lean:35–42`, and `SheafTargets.lean:45–60`.

**Claim:** The old coordinate checks and generic sheaf API remain as acceptance companions, although Suggested no longer imports them.

**Witness:** README §5.1 already computes the determinant and root pairings. `SheafTargets.scalar_naturality` is exactly pinned `Scheme.Modules.globalSectionsSmul_naturality`, `TauCeti/AlgebraicGeometry/Modules/GlobalSections.lean:143`; `baseGlobal` duplicates its line 199 base-ring map.

**Repair:** Delete this padding from `Suggested.lean` and its retained companion acceptance files; here the required deletion is in the companions. Keep the two new headlines. Remove definitions used only by the deleted illustrative API, preferably by deleting the three now-unused companions. Keep the mathematics in README and the native scalar maps in the supplier contract. Recomputed values are det M=−1, root squares −2 and β₀·β₄=1; the sheaf scalar test gives 2·3=3·2=6. All twelve companion admissions failed a one-`simp` probe; the finding uses the independent Check/API criteria, not a claim that simp proved them. The coordinate isomorphism and reflection adapters are also supporting API, not additional surface or reduction headlines.

## R05 (P3) — Correct the survey's section numbers and attach usable locators

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:778`: “§2, pp. 7–10 … §3, pp. 11–15 … §4, pp. 16–18 … §5, pp. 19–26”. These numbers recur at lines 17, 152, 202, 243, 259, 285, 333, 354 and 460.

**Claim:** These are the sections of arXiv:1412.7744v2 supporting the cited targets.

**Witness:** dolgachev lines 14–17 and 226, 420, 607, 770 give Generalities §3, Polarized surfaces §4, Nodal surfaces §5 and Automorphisms §6. Section 2 is History.

**Repair:** Use §§3–6 in that version, retaining the correct printed pages; e.g. the square-four degree-two plane map is §4, p.12, dolgachev lines 468–470. Attach claim-level locators to the retained constructed variants too: §§0.1–0.2 and §3.2 currently end with supplier/derivation descriptions rather than the precise source or supplier theorem supporting every assertion. For a new construction, identify it as such and locate its ingredients, rather than implying the survey states the enriched groupoid/base-change theorem. Rechecking the square-four instance then finds degree 2 and octic branch at the cited passage. The new CDL classification locators do identify the intended propositions.

## R06 (P3) — Record the bibliography in the required source manifest

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:775–783`, References; `TauCetiRoadmap/EnriquesSurfaces/sources.toml` is absent.

**Claim:** Seven bibliographic bullets alone discharge the source-record requirement.

**Witness:** The reviewed folder has no sources.toml. All seven works were requested through the source service: six have legal cached texts; the Averbukh Chapter X request returned no legal source.

**Repair:** Add one schema-compliant record per work, preserving the established keys and the exact version/locator, fetch provenance and status. Record Averbukh's failed legal lookup without certifying its relation; use an uncertified or waived disposition only when applicable under the source policy. Do not infer the relation from the announcement. A manifest entry for the survey must resolve to v2's §§3–6, and the CDL record to the April 19, 2024 manuscript. This review did not edit a manifest or request a pause.

## Verified sound

This section records concrete verification, not a claim that finite tests prove the geometric endpoints. All five requested files and every README subsection were read. The 15 seeded targets are covered below, as are both acceptance headlines and all companion declarations. The worktree is at the requested head, has no tracked changes, and its diff has no changes outside this roadmap folder. No sorry-defined data, set_option, admitted example, copied source passage in the inspected material, or computational-certificate deliverable was found. The explicit characteristic exclusions of the generic nodal theorem agree with the source's domain.

**Previous findings, checked before the full pass.** There was no supplied repair disposition marking a finding “not actionable in this package”. Quotes below are from the repaired README or retained Lean files, not from publications.

| Previous finding | Repaired passage and result |
| --- | --- |
| R01, reciprocal K3 supply | README:11, “the supplier contract excludes K7.C”; K3 README:17–20 now says it consumes no Enriques result. **Repaired cycle.** New section-location drift is current R02. |
| R02, missing algebraization | README:43, “a cartesian proper system … algebraizes to a proper scheme with an ample bundle”. **Repaired:** eligible AbelianSchemesAndArithmeticModuli A4.8 expressly contains this general construction. |
| R03, missing geometric faithfulness | README:46, “specified … gap:coxeter-geometric-faithfulness”. **Partly repaired:** no longer falsely attributed to main Layer 3, but the gap has no registered owner; current R01. |
| R04, missing exponential comparison | README:43, “ComplexComparisonPartII C5.4”. **Repaired:** its actual exponential/Chern connecting-map comparison was opened. |
| R05, absent reduction headline | Suggested:82, `theorem reyeReductionImage`. **Repaired:** includes the actual generator formula and pointwise-radical condition; unavailable geometric headlines are named. |
| R06, duplicate Enriques predicate | README:7, “WeilConjectures WC.7 supplies the Enriques predicate”. **Repaired:** WC.7 §7.12 contains precisely that predicate and all-characteristic invariants. |
| R07, forbidden imports | Suggested:1, `import Mathlib`. **Partly repaired:** companions untouched; current R03. |
| R08, commit-pinned citations | README supplier links now use main. **Repaired formatting:** eligible main/new-roadmap contracts were re-resolved rather than inferred from the URLs. |
| R09, double-coset LaTeX | README:723, `H \ (W/K)`. **Repaired:** a code span; the S₃ example was recomputed. |
| R10, TeX subscript | README:551–552, “over the unoriented edges … each T246 edge counted once”. **Repaired:** q(e₀+e₄)=1. |
| R11, locators/bibliography | README:307 gives CDL Proposition 2.6.1 and pages; References now names seven works. **Partly repaired:** survey section errors and absent manifest remain, R05–R06. |
| R12, shape/API/Checks | README now has Summary, ownership, conventions, supplier contracts, Layers 0–7 and Examples/Dependencies. **Substantially repaired:** concrete Check lists accompany the grouped constructions. Companion documentation/name correspondence remains R03; ingredient locators remain R05. |
| R13, padding | LatticeTargets:76 still has `gram_det`; SheafTargets:60 still invokes the native naturality theorem. **Not repaired in companions**, R04; repaired in Suggested itself. |
| R14, computational certificates | README:723 now asks to “Prove exhaustiveness and stabilizer identities”. **Repaired:** the executable-certificate requirement is gone. |

**Gate and dependency result.** The supplied head's gate reports:

```text
gate EnriquesSurfaces: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

I ran the prescribed dependency command on this README, candidate order and content repository. Its exact output was:

```text
depcheck: 204 roadmaps, 1475 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. All 25 subsection Needs lines and the additional prose/table supplier citations were inspected. R01 is an unregistered input, and R02 is a wrong section/cut; neither is refuted by the graph scanner. K3's independent §7.3 is a legal repair, not an upward Enriques-dependent K7.C import.

**Elaboration and padding.** Direct `lake env lean` on Suggested succeeded with exactly two sorry warnings. An independent scratch copy with `#check @name` for each of its ten actual declarations also succeeded. The worker's count of eleven includes the word “and” in the module prose as a spurious declaration; there is no theorem named `and` here. All actual elaborated binders agree with the README; none was dropped. A legal-import scratch consolidation of the companions checked all 42 named declarations, plus their anonymous decidability instance, with only twelve sorry warnings. Field, structure-morphism, sheaf and section-family operands survive. Each of the fourteen sorried theorems across the four files was tried with one `simp`: neither headline closed and all twelve companion probes reported no progress. The inspected pinned geometric representation supplies existence and generator values, but not injectivity or the full T246 reduction image, so neither new headline is a one-library-lemma restatement.

**Headline inventory.** Layer 1: canonical K3 cover, Picard specialization, integral Chern/coefficient comparisons and Num ≃ U⊕E₈(−1). Layer 2: all-n hyperelliptic classification and the resolved double-plane theorem. Layer 3: scalar-rigidified presentation/action-groupoid equivalence. Layer 4: Reye degeneracy family, recognition and parameter quotient. Layer 5: faithful T246 representation, normal kernels and full reduction image. Layer 6: generic nodal automorphism group and curve transitivity; complex unnodal compatible-pair lift criterion and very-general group; algebraic generic-open group. Layer 7: geometric representation-relation bridge and resulting counts. Suggested states the two directly accessible reflection headlines. Its docstring names the missing surface numerical quotient, complete-system/presentation, Reye-family, period/Hodge and source-relation carriers for the others. No further statable geometric headline was established as omitted by this audit; a bare scheme and line bundle do not by themselves supply those heavy constructions. The companion coordinate model is not a substitute for a surface numerical quotient.

**Adversarial calculations.** The following rows give values, exclusions and the effect of the repairs. “Pass” means the displayed test passed, not a proof of the full universal theorem. “Boundary” identifies a necessary restriction; “open endpoint” means the carrier/source comparison remains a construction obligation. There are 112 mathematical rows and 53 declaration rows below. All matrix arithmetic used exact rational elimination; the mod-two tests enumerated 1,024 vectors. Coordinates in M are (f₁,…,f₉,δ), and eᵢ denotes a β-coordinate vector in R/2R.

| Statement | Instances tried | Values computed on each side / negative control | Result; change |
| --- | --- | --- | --- |
| Conventions: Enriques adapter | Enriques, K3, abelian surface | χ(O)=1,2,0; only first meets χ=1 | Pass WC.7 distinction |
| Geometric integrality/smoothness | disconnected union; square-zero thickening | H⁰(O)=k×k, not k; nonzero ε with ε²=0, not reduced | Boundary: excluded |
| Canonical numerical triviality/minimality | exceptional curve of a blowup | E²=−1 and K·E=−1, versus K·C=0 on Enriques | Pass exclusion |
| §0.1 intersection adapter | rulings F,G of P¹×P¹ | F²=G²=0, F·G=G·F=1 | Pass |
| §0.1 adjunction | exceptional P¹ | E·(E+K)=−2=2·0−2 | Pass sign |
| §0.1 RR polarization | L=O; rulings | χ(M)−χ(O)−χ(M)+χ(O)=0; χ(O(1,1))−χ(O(1,0))−χ(O(0,1))+χ(O)=4−2−2+1=1 | Pass |
| §0.2 evaluation/base ideal | families {1},{t},empty on A¹ | images (1),(t),(0); base schemes empty, origin, all A¹ | Pass; these are family tests, not finite H⁰ claims on A¹ |
| §0.2 complete projectivization | h⁰=0,1,3 | empty/no map, P⁰, P²; dimensions −1,0,2 only with empty-case convention | Pass zero-module guard |
| §0.2 blowup and exceptional ideal | ideal (x,y) on A², x-chart y=xt | pulled ideal (x,xt)=(x); quotient sections (1,t) generate | Pass invertibility |
| §0.2 projective convention | quotient k³→k, (a,b,c)↦b | point [0:1:0] in dual-line convention; pulled O(1) is target line k | Pass |
| §0.2 normalization/base change | cusp k[t²,t³], reduce t²=0 | normalized base change k[t]/(t²); normalization of reduced fibre k | Boundary: not arbitrary base change |
| §0.3 polarized scalar arrows | O on proper connected S; two components | units k×; k××k× on two components | Pass connectedness restriction |
| §0.3 composition | scalars 2,3 over Q | composite 6; both projectivizations identity | Pass |
| §1.1 canonical cover | K nontrivial, K²=O | h⁰(K)=0; χ(O⊕K⁻¹)=1+1=2 | Pass necessary K3 invariants |
| §1.1 trivial-root negative control | b=1, L=O, char≠2 | k[t]/(t²−1)=k×k, h⁰=2, disconnected | Pass nontriviality required |
| §1.1 characteristic two | b=1 over F₂ | t²−1=(t−1)²; trace 2a=0 | Boundary: excluded |
| §1.1 Pic→Num kernel | O,K; a nontrivial numerical L | χ(L)=1; h⁰(L)+h⁰(K−L)≥1; at K the sum is 0+1 | Pass RR/effectivity route |
| §1.1 evenness | any divisor class D | RR gives D²=2(χ(D)−1); parity 0 | Pass |
| §1.1 obstruction pullback | K3 cover trivializes K | pullback Ω¹_S⊗K=Ω¹_X; sections inject into 0, hence 0 | Pass with independent K0.A |
| §1.1 small thickenings | W(k)/pⁿ⁺¹→W(k)/pⁿ, n≥1 | I²=(p²ⁿ)=0 modulo pⁿ⁺¹; obstruction groups 0⊗I=0 | Pass |
| §1.1 algebraization | compatible ample system | all X_n recovered as X mod pⁿ, all L_n as L mod pⁿ; an assumed X alone constructs zero new schemes | Pass A4.8/089A repairs old gap |
| §1.2 specialization | O,K and vertical whole fibre | O↦O, K↦K of order 2; [div(p)]=0 | Pass |
| §1.2 uniqueness level | trivial line over R | unique class, automorphisms R× rather than 1 | Pass class/representative distinction |
| §1.2 integral pairing | isotropic Enriques f,g, f·g=1 | χ(f+g)−χ(f)−χ(g)+χ(O)=2−1−1+1=1 | Pass at all primes |
| §1.3 exponential/Chern sign | exp(2πiu); O(±1) on P¹ | integers 0,1 map to 1; Chern degrees +1,−1 | Pass |
| §1.3 torsion retention | canonical K | c₁(K) has order 2; its rational image 0; c₁(O)=0 | Pass |
| §1.3 extension/deformation | geometric Enriques Picard space | tangent H¹(O)=0, obstruction H²(O)=0, geometric components points | Pass in stated domain; no universal field embedding assumed |
| §1.3 unimodular free quotient | rank ten form | determinant −1, signature (1,0,9); rational rank alone permits determinant −4 too | Pass integral route needed |
| §1.4 finite Kummer | ℓ=2, n≥1 | Br[2ⁿ]=Z/2, not 0; Pic/2ⁿ→H² finite has cokernel Z/2 | Pass |
| §1.4 inverse Tate module | constant groups Z/2, transitions ×2 | each map 0; compatible sequence must be all 0 | Pass finite/nonfinite distinction |
| §1.4 derived reduction | C with H³=Z/2, n=1 | Tor term H³[2]=Z/2; H²(C)/2 alone misses one F₂ dimension | Pass |
| §1.4 canonical class at odd ℓ | torsion order 2 | tensor Z_ℓ torsion 0 for odd ℓ, Z/2 at ℓ=2 | Pass |
| §1.4 bad coefficient | μ_p in char p | tᵖ−1=(t−1)ᵖ, one nonreduced geometric point | Boundary ℓ≠p |
| §1.4 numerical ℓ-adic pairing | U basis | cup/trace matrix (0,1;1,0), determinant −1 on both sides | Pass normalization; uses supplied comparison |
| §1.5 normal form | U⊕E₈(−1); Reye alternative | determinants −1,−4; ranks both 10, signatures both (1,9) | Pass integrality distinguishes |
| §1.5 U and scaling | e,f; form multiplied by 2 | (e+f)²=2; determinant scales by 2¹⁰=1024 | Pass |
| §1.5 marking functoriality | replace marking m by g∘m | represented a becomes g(mam⁻¹)g⁻¹; for a=id both are id | Pass conjugation |
| §1.6 half-fibres | F and 2F | F²=0; h⁰(F)=1, h⁰(2F)=2 | Pass |
| §1.6 Φ positive minimum | D=2F₁+F₂, F₁·F₂=1; D=0 | D²=4 and D·F₁=1, so Φ=1; at 0 minimum 0 | Pass big-nef restriction |
| §1.6 effective-root reduction | R²=−2, H ample | s_R(R)=−R; heights H·R>0 and H·(−R)<0 | Pass effectivity distinction |
| §2.1 all-n classification | nF₁+F₂; (n+1)F+R | squares 2n and 2(n+1)−2=2n; twists by K leave values unchanged | Pass CDL locator |
| §2.1 fixed-part boundary | n=1, h=2F+R | h²=2, h·R=0; moving part 2F has square 0, fixed R | Pass excluded from plane assertion |
| §2.1 moving square four | n=2 | h⁰=3; transformed square 4−1−1=2; degree-two image has degree 1 | Pass |
| §2.1 higher scroll | n=3 | transformed square 6−2=4=2·(3−1), degree-two map onto degree-2 surface | Pass |
| §2.2 cover algebra | b=1, a+ct | trace 2a; norm a²−c²; (1+t)(1−t)=0 | Pass |
| §2.2 nonreduced cover | b=0 | t≠0, t²=0; norm a²; free algebra rank 2 | Pass non-étale example |
| §2.2 canonical formula | base P², A=O(4); A=O(3) | ω_Y=f*O(1); for sextic ω_Y=O; branch degrees 8 versus 6 | Pass; singular Y is not its resolution |
| §2.2 resolved versus finite map | contracted exceptional curve | fibre dimension 1 versus finite fibre dimension 0 | Boundary: X→P² not asserted finite |
| §2.3 branch transform | m=1,2,3 | 2σ*A−2⌊m/2⌋E equals strict B+(m mod 2)E, coefficients 1,0,1 | Pass |
| §2.3 crossing resolution | t²=xy, x-chart y=xv | t=xu gives u²=v; original origin singular, transformed chart smooth | Pass |
| §2.3 arbitrary octic exclusion | smooth degree-8 branch | K²=2, pg=h⁰(P²,O(1))=3, versus Enriques K²=pg=0 | Pass necessity of specified singular model |
| §3.1 raw scalar rigidification | θ and λθ, λ≠1 | same projective b and blowup arrow, distinct raw θ; quotient scalar kernel 1 | Pass |
| §3.1 left action | noncommuting a,b | (ab)⁻¹=b⁻¹a⁻¹; pullback gives (a⁻¹)*∘(b⁻¹)*, not a*∘b* | Pass contravariance |
| §3.1 canonical resolution | one extra blowup | new exceptional square −1 and Picard rank increased by 1 | Pass nonisomorphic refinement excluded |
| §3.1 hyperplane recovery | system s_i versus t·s_i | ratios identical; fixed divisor adds div(t), so recovered moving bundle differs | Pass no-fixed-part condition |
| §3.1 equivalence headline | fixed class with scalar arrows | before rigidification fibre k×, afterwards one arrow per fixed a and class equation | Necessary full-faithfulness test passes; geometric equivalence remains target |
| §3.2 cover-class uniqueness | b versus c²b, c≠0 | t↦ct is invertible; c=0 gives zero, not isomorphism | Pass |
| §3.2 deck isotropy | t↦−t | square id, two distinct arrows in char≠2; same branch datum | Pass groupoids not identified before deck quotient |
| §3.2 square-root ambiguity | Pic(P²)=Z versus base with Pic[2] | 2d=8 gives unique d=4; nonzero order-two twist has same square | Pass hypothesis |
| §3.3 ordered models | h=f+g, f·g=1 | h²=2; (2f+g)²=(f+2g)²=4; difference square −2 | Pass unequal ordered classes |
| §3.3 special boundary | h=2F+R | h²=2, h·R=0; violates ample positive curve degree | Pass |
| §3.3 lift torsor | two points, trivial/transposition action | orbit counts 2/1 respectively | Pass no unconditional factor two |
| §4.1 degeneracy scheme | ranks 4→3 at ranks 2,3,0 | kernel dimensions 2,1,4; expected codimension at rank 2 is 2 | Pass; zero map fails regularity |
| §4.1 base-change minors | diagonal (1,1,t), reduce t=0 | maximal minor t maps to 0; rank goes 3→2, ideal base change agrees | Pass schematic, not just pointwise |
| §4.1 symmetroid/Reye degrees | 4×4 linear matrix; Gr(2,4) | determinant degree 4; ambient dimension 4, expected Reye dimension 2 and Plücker degree 10 | Necessary dimensions pass; nonempty regular locus remains target |
| §4.1 recognition | nodal curve degree 3 versus 4 | 3<4 violates source hypothesis; 4 does not | Boundary: retain source's nodal/polarized domain |
| §4.2 parameter quotient | Gr(4,10), PGL₄ | dimensions 24,15; finite-stabilizer quotient 9 | Pass |
| §4.2 nonfree action control | trivial PGL₄ action | coarse orbit space dimension 24, not 9; stabilizer dimension 15 | Pass finite-inertia requirement |
| §4.2 universal family | stack point with stabilizer of order 2 | two stabilizer arrows versus one coarse identity; descent requires trivial action on fibre data | Pass distinction |
| §5.1 numerical basis | f₁,…,f₉,δ | det M=−1; f₁₀ coordinates (−1,…,−1,3); f₁₀²=0 | Pass |
| §5.1 isotropic sequence | fᵢ,δ | δ²=10; δ·fᵢ=3; fᵢ·fⱼ=1 for i≠j, 0 on diagonal | Pass |
| §5.1 β-span/parity | all ten βᵢ | det β-coordinate map has absolute value 2; det β Gram −4; parity kernel index 2 | Pass equality via inclusion and index |
| §5.1 graph | β₀ with β₄,β₃,β₀ | pairings 1,0,−2 respectively | Pass |
| §5.1 distinguished r | all βᵢ | r²=−2; pairings 0 nine times and −2 at β₉ | Pass |
| §5.2 form normalization | same root, edge, nonedge | −intersection =2,−1,0; 2B=2·1,2·(−1/2),2·0 | Pass |
| §5.2 Coxeter reflections | all ten matrices | sᵢ²=I and sᵢᵀQsᵢ=Q entrywise | Pass |
| §5.2 braid orders | edge (0,4), nonedge (0,3) | product order 3,2 respectively; individual order 2 | Pass; does not prove faithfulness |
| §5.2 finite parabolics | E₈; two E₇ subsets | negative Gram determinants 1,−2,−2; longest elements negate those subspaces | Pass |
| §5.2 normal kernels | B,K,G reductions | B=K=I; G(e₈)=e₈+u≠e₈; all induce identity on symplectic quotient | Necessary tests pass; normal generation remains theorem |
| §5.2 faithful headline | zero vector and simple roots | ρ(1)0=0; sᵢeᵢ=−eᵢ≠eᵢ over R | Signature nonvacuous; general proof input R01 |
| §5.3 quadratic form | 0,e₀,e₀+e₄ | q=0,1,1; twice-counted edge gives last value 0 | Pass |
| §5.3 radical | all 1024 vectors | exactly 0,u,z,u+z; q-values 0,0,1,1; dimension 2 | Pass |
| §5.3 quotient obstruction | 0,z in same radical coset | q(0)=0≠1=q(z); polar quotient dimension 8 | Pass no descended q |
| §5.3 shear/splitting | T_ℓ, S_g; q=q_V+b | q(T_ℓx)=q_V(v)+b; q(S_gx)=q_V(gv)+b+q_V(gv)+q_V(v)=q(x) | Pass cancellation |
| §5.3 composition/conjugation | g,h and linear ℓ | correction c_g(hv)+c_h(v)=c_gh(v); conjugate functional ℓ∘g⁻¹ | Pass inverse/action direction |
| §5.3 exact radical stabilizer | radical shear z↦z+u | preserves q since q(z+u)=q(z)=1, but moves z | Pass full orthogonal group is larger |
| §5.3 image generators | 10 generators ×1024 vectors | 10,240/10,240 q identities; all four radical vectors fixed by all ten | Pass necessary image inclusion |
| §5.3 G formula | all 1024 vectors | computed G(x)=x+x₈u in 1024/1024 cases; G²(e₈)=e₈ | Pass nonzero shear |
| §5.3 quotient orders | Sp₈ and shear space | 47,377,612,800; 256·that=12,128,668,876,800 | Pass arithmetic, not order-defined group |
| §6.1 tame primes | p=11 and 2,3,5,7,17 | 11∤order; each excluded prime divides 2¹⁶3⁵5²7·17 | Pass source domain |
| §6.1 freeness | involution [x:y]↦[−x:y] | two fixed points despite invertible order 2 | Pass nonautomatic freeness |
| §6.1 surface action | effective R versus −R | H·R>0, H·(−R)<0; reflection cannot preserve effective cone | Necessary automorphism test passes; chart realization remains target |
| §6.1 curve transitivity headline | two curves in same Aut orbit | self-intersections −2=−2 preserved; W orbit alone gives zero actual surface maps | Open geometric endpoint, not deduced from lattice transitivity |
| §6.2 U0 pullback | U basis | (π*e,π*f)=2=2(e,f); diagonal root square −4 | Pass scaling |
| §6.2 U0 gluing | ranks 10 and 12, exponent 2 | discriminant orders 1024,1024; gluing index 1024 gives determinant 1 | Pass primitive gluing |
| §6.2 U1 period boundary | e′−f′ in U(2), e−2f in U | squares both −4; divisibilities 2,1 | Pass mathematical distinction; supplier cut R02 |
| §6.2 U1 cone | NS=M(2) | every square divisible by 4; −2 excluded | Pass root-free cone premise |
| §6.2 U1 genericity | NS rank 10; Hodge stabilizer | rank condition alone places no bound 2 on stabilizer; explicit ±id condition supplies exactly 2 | Boundary: conditions kept separately |
| §6.2 U2 signs/gluing | h=±id_T | reductions both id on exponent-two A_T; actions on T different | Pass |
| §6.2 U2 kernel/descent | id and deck ι | same numerical action id; two lifts modulo {1,ι} give one surface identity | Pass correct deck quotient |
| §6.2 U3 T237 | α₀=δ−f₁−f₂−f₃ | α₀·α₃=1, α₀·α₄=0; det Gram −1, coordinate index 1 | Pass; distinct from T246 |
| §6.2 U4 full criterion | compatible versus incompatible discriminant pairs | γḡ=h̄γ gives graph preserved; mismatch sends (a,γa) outside graph | Pass both directions algebraically; Torelli/cone inputs retained |
| §6.3 bielliptic involutions | decomposition U⊕E₈(−1) | action id⊕−id, square id, mod-two action id | Pass source model |
| §6.3 pencil orbits | split 10-dimensional F₂ form | 528 isotropic vectors, 527 nonzero; 527≠136≠34780 | Pass |
| §6.3 tangent comparison | 2x=3x=0; characteristic zero | x=3x−2x=0; multiplication by 2 injective in char 0 | Pass, char 2 excluded |
| §6.3 local dimensions | dim family 10; exceptional closures 5,2 | codimensions at least 5,8; proper finite union cannot fill dimension 10 | Pass bounds with closures |
| §6.3 generic loci | countably many proper loci versus finite closed union | countable union may be dense; finite dimension≤5 union in dim10 has nonempty complement | Pass no identification of loci |
| §7.1 normal double cosets | W=S₃,H=A₃,K=〈(12)〉 | HK=W, index 1; image K in C₂ has order 2, index 1 | Pass nonabelian test |
| §7.1 boundary/cyclic tests | H=1,H=W; W=C₆,H=C₃,K=C₂ | indices 3,1; cyclic HK=C₆ gives 1=1 | Pass |
| §7.1 weighting | transitive orbit with stabilizer C₂ | isoclass count 1 versus mass 1/2 | Pass unweighted convention |
| §7.2 announced counts | 34780;136 | 34780=4·5·37·47, hence not an Sp₈ subgroup index; 136=8·17 | Pass obstruction; actual representation relation unverified |
| §7.2 regular Cremona comparison | quadratic plane Cremona and projective change | degrees 2 versus 1; two inverse quadratic maps compose to degree 1 after cancellation | Pass distinction; symmetroid move classification remains target |

The following declaration-by-declaration table supplements the geometric table. The value tests concern the written definitions, including the retained companions; the deletion findings concern their role in an acceptance test.

| Declaration | Instances tried | Computed values / both sides | Result; change |
| --- | --- | --- | --- |
| Suggested.reyeAdjacent | (0,4),(0,3),(0,0) | true,false,false; reversed pairs agree | Pass |
| reyeAdjacentDecidable | same pairs | positive,negative,negative decisions | Pass |
| reyeCoxeterEntry | same pairs | 3,2,1 | Pass |
| reyeDiagram | all 100 entries | symmetric; ten diagonal 1s; other entries 2 or 3 | Pass |
| ReyeReduction | coordinate vectors, zero | dimension 10, cardinality 2¹⁰=1024; one zero vector | Pass |
| reyeQuadratic | 0,e₀,e₀+e₄ | 0,1,1 | Pass |
| reyePolar | (e₀,e₀),(e₀,e₄),(e₀,e₃) | 0,1,0 | Pass |
| reyeRealPairing | same pairs | 2,−1,0 | Pass |
| reyeGeometricFaithful | generator at eᵢ, adjacent eⱼ, zero | −eᵢ,eⱼ+eᵢ,0 from the prescribed formula | Nontrivial headline; R01 prerequisite |
| reyeReductionImage | every simple generator; G | q preserved in 10240 cases; G(e₈)−e₈=u≠0, quotient difference 0 | Correctly states full radical-fixing image; no finite test proves surjectivity |
| LatticeTargets.Index | admissible indices | exactly 0,…,9; index 10 has no inhabitant | Pass |
| Ambient | zero and basis coordinate | rational vectors 0 and e₀; dimension 10 | Pass |
| gram | (0,0),(0,1),(0,9),(9,9) | 0,1,3,10 | Pass |
| gram_isSymm | all 100 entries | Gᵢⱼ−Gⱼᵢ=0 in 100 cases | Pass |
| model | basis rational carrier | integral pairing 0,1,3,10; det −1 | Pass; no surface attached |
| modelBasis | each coordinate | coordinate change identity I₁₀; ten independent vectors | Pass |
| vector | zero, unit coordinate, twice it | 0,bᵢ,2bᵢ | Pass |
| f10Coordinates | first nine and last coordinate | −1 nine times, 3 once; f₁₀²=0 | Pass |
| betaCoordinates | i=0,1,9 | (−1,−1,−1,−1,0,…,0,1); e₀−e₁; (1,…,1,2,−3) | Pass; no truncated subtraction at i=0 |
| rCoordinates | all coordinates | (2,2,2,2,2,2,2,2,2,−5) | Pass |
| beta | β₀,β₉ | squares −2,−2 | Pass |
| r | distinguished vector | square −2; r·f₁=1 | Pass |
| parity | 0,f₁,r | 0,1,0 in F₂ | Pass nonzero map |
| reyeCarrier | f₁,2f₁,r | absent,present,present; quotient index 2 | Pass |
| betaSpan | ten β columns | coordinate determinant absolute value 2; each parity 0 | Pass |
| simpleReflection | root, adjacent, perpendicular | −βᵢ,βⱼ+βᵢ,βⱼ | Pass |
| adjacent | (0,4),(0,3),diagonal | true,false,false | Pass; duplicates graph data unnecessarily |
| anonymous decidability instance | those three inputs | yes,no,no | Pass |
| gram_det | actual ten-by-ten matrix | det=−1=RHS | Correct Check; R04 |
| beta_pairing | all 100 β-pairs | −2 diagonal,1 on 18 oriented edges,0 otherwise | Correct Check; R04 |
| r_square | r | −2=RHS | Correct Check; R04 |
| r_beta_pairing | ten indices | nine 0s followed by −2, exactly RHS | Correct Check; R04 |
| betaSpan_eq_reyeCarrier | parity and span | inclusion plus indices 2=2; f₁ belongs to neither | Pass coordinate API; R04 |
| parity_surjective | 0,f₁ | images 0,1 exhaust F₂ | Pass coordinate API; R04 |
| simpleReflection_involutive | all ten matrices | sᵢ²=I₁₀ in ten cases | Pass coordinate API; R04 |
| simpleReflection_isometry | all ten matrices | sᵢᵀGsᵢ=G in ten cases | Pass coordinate API; R04 |
| simpleReflection_preserves_parity | r·βᵢ and arbitrary x | parity change (βᵢ·x)(r·βᵢ)=0 mod2 since r·βᵢ=0 or−2 | Pass API; R04 |
| ReflectionTargets.t246Entries | diagonal,edge,nonedge | 1,3,2 | Pass |
| t246 | all pairs | symmetric, diagonal1, off-diagonal≠1 | Pass |
| realRoot | β₀,β₉ | integer coordinate vectors unchanged in R¹⁰ | Pass |
| rootMap | single-root basis, zero | βᵢ,0; determinant absolute value 2 | Pass |
| realIntersection | β₀ self and β₄ | −2,1 | Pass |
| realReflection | self,neighbor,perpendicular | −βᵢ,βⱼ+βᵢ,βⱼ | Pass |
| rootMap_bijective | complete coordinate matrix | determinant ±2≠0; inverse determinant ±1/2 | Pass real comparison, not integral basis; R04 |
| rootMap_form | self,edge,nonedge | 2=2·1; −1=2·(−1/2); 0=2·0 | Pass factor two; R04 |
| rootMap_reflection | basis roots | both maps give −βᵢ,βⱼ+βᵢ,βⱼ | Pass; R04 |
| SheafTargets.baseGlobal | identity Spec k | a↦a; 0↦0,1↦1 | Duplicate native map; R04 |
| scalarAut | a=1,−1,2 over Q | id,−id,2id; inverses id,−id,(1/2)id | Pass actual sheaf arrows |
| sectionEvaluation | n=0; n=1 with section0,1 | zero,zero,identity; zero map not surjective onto nonzero O | Pass |
| SquareTrivialization | O; O(1) on P¹ | O²=O; O(1)² has degree2≠0 | Pass nonempty/empty distinction |
| RawFixedSurfaceArrow | (O,O); (O,O(1)) | arrows k×; no arrows by degree0≠1 | Pass |
| class_square_eq_one | O,canonical K | 1²=1; [K]²=1 but [K]≠1 | Correct supporting API; R04 |
| scalar_naturality | θ=3,a=2; θ=0 | both composites6; both composites0 | Exactly pinned theorem; R04 |

**Seeded source audit.** Six texts were fetched legally through the sources service: the announcement and CDL manuscript from the author's site, two arXiv versions, Peters–Sterk's institutional deposited article, and Stacks. Averbukh failed legal resolution. Locators below refer to those exact texts; no different edition's numbering is assumed. This audit distinguishes a source theorem from new adapters whose ingredients are supplied elsewhere.

| Sampled target | Text and locator inspected | Support and limitation |
| --- | --- | --- |
| 0.1 Surface adapters | Main SchemeAndStackFoundations §§5.9–5.10, README:7129–7247; cited Hartshorne V.1, Theorem 1.6 and Proposition 1.5 | Supplier states actual intersection, adjunction and surface RR, including positive-characteristic targets. The target is an adapter; no independent source locator is printed at its own paragraph, R05. |
| 0.2 Linear systems/base ideals | AlgebraicModuliForArithmeticGeometry §1.1, README:305; StableReduction Layer4, README:531 | Evaluation-to-line-quotient and actual ideal blowup are supplied. The dual-line comparison, base ideal and recovery are retained adapters. No source claims arbitrary normalization base change. |
| 1.4 Coefficient comparisons | dolgachev lines 319–343, §3 pp.8–9; EtaleCohomologyFoundations F.4.4/0.9; ComplexComparisonPartII C6.3/C6.5–6.6 | Survey supports integral complex Pic/Num background, not the full Brauer/Tor transition theorem. That refinement is explicitly constructed from the coefficient suppliers. n≥1 and ℓ invertible retained. |
| 1.5 Normal form | dolgachev lines 326–343, §3 p.9; IntegralLattices §6A, README:1643 | Even indefinite unimodular signature (1,9) gives U⊕E₈(−1); the survey uses negative E₈ convention. README's section number needs R05. |
| 1.6 Genus-one geometry | dolgachev lines 444–457, §4 p.12; enriques-one Proposition 2.6.1 at line14195 | Half-fibre/fibre distinction and Φ inequalities appear here. The survey's polarization section is §4. Existence/reduction still uses the named geometrical carrier, not a lattice axiom. |
| 2.2 Double-cover algebra | dolgachev lines 468–470, §4 p.12; enriques-one Corollary2.6.5, line14358, p.294 | Supports moving square-four map of degree2 and Enriques octic. Trace/norm/relative algebra/Gorenstein API is an owned construction, not a quoted survey theorem. Characteristic2 excluded for trace splitting. |
| 2.3 Branch resolution | dolgachev lines 488–521, §4 p.13 and figure on p.14 | Supports special/nonspecial branch model context and contractions. The exact floor/parity transformation was recomputed from the local equation. A general positive-characteristic embedded-resolution proof is a retained target, not established by these survey pages. |
| 3.1 Complete presentations | cossec-dolgachev lines42–46, Theorem2 p.247; AM §7.3 scalar Picard groupoid | Announcement does not specify the proposed equivalence relation. README correctly calls its groupoid theorem intrinsic and keeps Chapter X separate. Scalar naturality is pinned. |
| 4.1 Degeneracy/symmetroids | cossec-dolgachev lines73–94, Proposition2/§4 p.248; dolgachev §5 | Source recognition has nodal, degree10 and absence-of-low-degree-rational-curve hypotheses, and allows canonical twist. Source describes ten rank-two nodes and K3 cover; universal minors/base change are constructed here. |
| 4.2 Parameter quotients | cossec-dolgachev lines15–20 and85–104, pp.247–249 | Nine-dimensional Reye locus and ordered-node parameter variety occur. Finite inertia, coarse space and atlas descent are the new specified route, not a theorem proved in the announcement. |
| 5.2 Coxeter/kernels | cossec-dolgachev lines56–72, Proposition1 p.248; peters-sterk lines1034–1065, LemmaA.5 pp.1624–1625 | Correct E₈/E₇ parabolics, B/K/G distinction, normal closures and larger all-root group. Announcement is not a substitute for generic representation faithfulness, R01. |
| 6.1 Generic nodal action | cossec-dolgachev lines15–20,36–37,54–55,85–115; Theorems1/3 pp.247–249 | Source has open Reye domain and excluded primes2,3,5,7,17. Curve transitivity is for actual smooth rational curves. No assertion about all nodal surfaces was imported. |
| 6.2 Complex unnodal branch | peters-sterk lines214–226, §2.1 p.1603; lines1076–1085, PropositionA.6 p.1625; lines873–889, Proposition5.5/equation25 p.1620 | Scaling/gluing/deck quotient supported. Proposition5.5 is **nodal rank11**, not the unnodal theorem; the README's unnodal conclusion is derived from its separately imposed period hypotheses and K3 inputs. Period-locus supplier locator needs R02. |
| 6.3 Algebraic generic open | martin lines104–118,151–157,710–827,831–854; Theorems1.2/1.4, Proposition1.9, Lemma5.4 pp.16–19, Corollary5.5 p.19 | Faithfulness/bielliptic action,527, local finite type, universal deformation at chosen point and bounds5/2 found. char≠2 is explicit at line678. README correctly bounds closures instead of copying the source's closedness inference. |
| 7.2 Source representations | cossec-dolgachev lines21–24,42–46,117–118; Theorem2 p.247 and bibliography p.249 | Numbers34780/136 and Chapter X referral verified. Exact source equivalence and regular Cremona identification remain unverified; Averbukh unavailable. |

The 15 seeded targets are audited above. The additional CDL classification check covered §2.1: enriques-one Proposition2.6.1, lines14195–14223, printed pp.290–291; Proposition2.6.4, lines14245–14254, pp.292–293; Corollary2.6.5, lines14358–14377, p.294; Proposition3.2.1, lines14963–14982, pp.308–309. These distinguish n=1's fixed component from n≥2's degree-two surface map. Stacks tag089A was additionally opened at stacks-089a lines3641–3660, printed pp.76–77: Noetherian ideal-adically complete base, cartesian system, proper initial fibre and ample initial line are exactly the algebraization hypotheses used. The CDL extraction has defective font mappings; its formula typography was not certified independently from page images.

**Pinned-library audit.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searches by Enriques/Reye/T246/T237 and double-cover objects returned no specialized carrier at either pin. This does not claim that every ingredient is missing. The following 11 rows record the native declarations opened; filenames are relative to the corresponding library repository.

| Declaration/object | Pinned file and line | Verified content and boundary |
| --- | --- | --- |
| `CoxeterMatrix.Group`, `toCoxeterSystem` | `Mathlib/GroupTheory/Coxeter/Basic.lean:108`,163 | Presented group and actual simple generators, not an arbitrary group action. |
| `CoxeterMatrix.geometricForm`, `geometricForm_single_single` | `TauCeti/GroupTheory/Coxeter/Geometric.lean:125`,131 | Entries −cos(π/m), diagonal1; m=0 convention permits infinite Coxeter exponents. |
| `geometricReflection`, `geometricReflection_apply` | same file:161,168 | v−2B(eᵢ,v)eᵢ; explains the factor2 in the roadmap. |
| `CoxeterSystem.geometricRepresentation`, `_simple` | same file:479,485 | Native representation with actual generator equation; no faithfulness theorem here. |
| `TauCeti.IntegralLattice` | `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63` | Fields carrier/form/isLattice/isSymm/le_dual. Nondegeneracy, evenness and unimodularity are not fields. |
| `IntegralLattice.integralForm` | same file:156 | Integral-valued pairing on the lattice carrier. |
| `IntegralLattice.ofGramMatrix`, `.basis`, `integralForm_ofGramMatrix_apply` | same file:261,281,295 | Actual carrier/basis and Gram comparison, used by the companions. |
| `Scheme.Modules.globalSectionsSmul_naturality` | `TauCeti/AlgebraicGeometry/Modules/GlobalSections.lean:143` | Exactly the scalar/arrow commutation restated in SheafTargets. |
| `Scheme.Modules.baseRingToGlobalSections` | same file:199 | Structure-morphism pullback for a commutative base ring, wider than baseGlobal's field domain. |
| `LineBundleClass.mk_eq_mk_iff`, `mk_tensorProduct`, `mk_trivial` | `TauCeti/AlgebraicGeometry/LineBundle/Class.lean:76`,119,129 | Actual sheaf-isomorphism classes, tensor multiplication and unit. |
| `SheafOfModules.freeHomEquiv` | `Mathlib/Algebra/Category/ModuleCat/Sheaf/Free.lean:60` | Free-sheaf arrows equal section families; no surjectivity conclusion. |

**Ownership and supply.** The 26 supplier rows below record the resolved contracts and ownership boundaries. Object searches used `roadmaps grep`, main files, supplied sibling heads and board packages; then the precise consumed passages were read. Main was used for revisions of existing roadmaps. New-roadmap suppliers available through `roadmaps show` were fetched and their exact sections read. No foreign fully qualified name collision was found for the two new headlines. Searches of the related Enriques/K3/open files identify no second owner of the characteristic-not-two geometric core. No ownership clearance is claimed for open heads whose files the brief did not provide.

| Supplier citation resolved | Eligible version and file locator | Output and result |
| --- | --- | --- |
| AlgebraicVectorBundles L0A–L1 | main `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215`,228,269,290 | Native module tensor/dual/pullback and relative-Spec anti-equivalence; not a duplicate cover carrier. |
| JacobianChallenge A–C | main `TauCetiRoadmap/JacobianChallenge/README.md:111`,135,143 | Divisor/Picard and curve RR/duality/base change; properness for finite cohomology retained. |
| AlgebraicCurves dictionary | main `TauCetiRoadmap/AlgebraicCurves/README.md:107`,163,1468 | Field/model conventions and curve/scheme dictionary. This broad citation does not supply a surface Num. |
| SchemeAndStackFoundations §0.3 | main README:551 | Relative Proj, base change and comparison with shared projective conventions. |
| SchemeAndStackFoundations §§1.13–1.23 | main README:2418–3065 | Actions, groupoids, torsors, quotient stacks, inertia and coarse moduli. §1.23 at3021 expressly needs finite inertia for Keel–Mori. |
| SchemeAndStackFoundations §§2.6,2.11,2.19–2.20 | main README:3437,3656,4094,4275 | Coherent cohomology, invertible-coefficient Kummer and duality; no ℓ=p Kummer extrapolation. |
| SchemeAndStackFoundations §§4.6–4.10 | main README:5291,5339,5383,5448,5487 | Obstruction groups, formal thickenings, formal functions and coherent existence. Scheme algebraization is separately supplied by A4.8. |
| SchemeAndStackFoundations §§4.11,4.13 | main README:5528,5643 | Modifications/strict transforms and regular/curve resolution; general plane embedded-resolution adapter remains owned here. |
| SchemeAndStackFoundations §§5.1–5.10 | main README, surface core at7129–7247 | Intersection/Num/adjunction/RR/Hodge index, finite generation and characteristic-sensitive comparisons; adapters must use that one quotient. |
| StableReduction Layers2/4 | main `TauCetiRoadmap/StableReduction/README.md:405`,529 | Relative Proj, Rees blowup and strict transforms. DVR model resolution is not silently used as unrestricted surface resolution. |
| ModularCurves0G | main `TauCetiRoadmap/ModularCurves/README.md:427` | Relative Grassmannian charts/universal quotients, before elliptic specialization. |
| AlgebraicModuliForArithmeticGeometry §§1.1–1.3,2,3.5 | new-roadmap head, README:305,504,601,1810 | Quotient projectivization, sections/Plücker, Hom/Isom and qualified polarized/quotient descent. |
| Same, §§7.3,7.6.1–7.6.1a | README:9311,9413,9662,9727 | Actual Picard groupoid, framed obstruction and section-rigidified splitting. Universal functions and a section are retained where required; arbitrary sheaf points are not declared global bundles. |
| IntegralLattices0–1,5,6A,6C/6F | main README, §6A at1643 and §6F at1676 | Integral/discriminant/gluing machinery; indefinite classification distinct from definite E₈ models. |
| ComplexComparisonPartII C1.9,C3.2d.1–2 | new-roadmap head, README:1957,1977 for Picard cuts | Proper coherent GAGA; Picard representability under proper flat finite presentation and universal functions. |
| Same, C5.4 | README:3291–3347 | Integral exponential/Chern adapter, cocycle and O(1) sign. Repairs the obsolete CKG K4.P dependency. |
| Same, C6.3,C6.5,C6.6 | README:4157,4257,4323 | Finite Artin, smooth oriented trace and normalized integral adic comparison. |
| EtaleCohomologyFoundations F.0.3,F.2,F.4–F.6,0.9 | main README:504,522,959,1021,1120,1179–1237 | Twists, proper/smooth exchange, derived reduction, cup/trace and Gauss–Bonnet; actual invertibility/Tor bounds retained. |
| AlgebraicTopology integral comparisons | main README:842,1515–1557 | Singular-cochain sheaf resolution and integral/local-coefficient Poincaré duality; complex orientation agrees. |
| WeilConjectures WC.7 | new-roadmap head, README §7.12:1752–1774 | Single Enriques predicate, field extension, projectivity, b₁=0 and b₂=ρ=10 including characteristic2. |
| AbelianSchemesAndArithmeticModuli A4.8 | new-roadmap head, README:2324–2340 | General polarized formal algebraization is expressly part of the target, not merely abelian effectivity. |
| NeronModelsAndSemistableAbelianVarietiesPartII §2.1 | new-roadmap head, README:3780 | Global genus-one carrier permits multiple fibres, no section, regular nonsmooth generic fibres; relative minimality retains its hypotheses. |
| RootSystems Layers3–4 | main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:275`,296 | Abstract exchange/Matsumoto and finite-root chambers/longest elements. The open revision's §3G cannot replace main; R01. |
| K3Surfaces K0.A,K1–K6,K7.A–B | supplied new-roadmap head, README:143,569,638 | Independent algebraic vanishing, K3 topology/period/Torelli and integral/free-involution model. No reciprocal Enriques input. §7.3 must be added for the newly located period criterion, R02. |
| FourManifolds F7 | supplied head, `TauCetiRoadmap/FourManifolds/README.md:2976` | A specific three-quadric topological Enriques example, not this general algebraic surface programme. |
| EnriquesSurfacesAndIntegralNonexistence | supplied head, README:3–9 | Explicit arithmetic Part II; characteristic-two/arithmetic extensions consume this core, never supply it. |

The main IntegralLattices, AlgebraicVectorBundles and JacobianChallenge layouts were consulted for the comparison of roadmap shape. The read-only audit found the repaired overall layer structure usable. The genus-one local-family Jacobian comparison in §6.3 is more specific than the smooth-relative Jacobian and DVR-model suppliers: it includes extension across the marked double fibres and the Enriques deformation map. It must reuse those carriers; its characteristic-not-two family comparison is not cleared merely by an object-name match. No additional overlap finding is inferred from that match.

## Not verifiable

- **Averbukh, Chapter X, Algebraic surfaces (1964):** the source service could not locate a legal text from the chapter/Steklov-volume citation. The single `averbukh` request records this. The exact representation equivalence, special/nonspecial terminology and interpretation of34780/136 are not certified. The announcement's numbers and referral were read directly and are a separate verification. This review is finished without parking for the text.
- **CDL typography:** the legally fetched April19,2024 manuscript's extraction has a broken font character map (including numerals); proposition locations and verbal conditions are identifiable, but formula typography was not independently checked on rendered pages. The classification equations were checked algebraically against the examples and the readable surrounding statements. No suspected source typo is inferred from malformed extraction.
- **Primary proofs behind announcements:** full normal generation, all of the geometric chart constructions and the announced generic-nodal classification are not proved by the three-page announcement. The underlying Griess and Barth–Peters texts were already recorded by the preceding review as paywalled/uncertified; they were not re-requested or treated as accessible. This report does not promote source announcements into checked primary proofs.
- **Geometric constructions:** the Reye regular/open locus, global embedded resolution, presentation equivalence and source representation bijection cannot be verified by the finite matrices. The report records the actual source support and supplied prerequisites, and does not claim completion of those future proofs.
- **Unavailable open heads:** ownership against open pull requests without supplied files was not independently inspected. The supplied related heads, main, board packages and tool index were searched; no broader clearance is claimed.

**Source-error controls.** For the quadratic-versus-bilinear distinction, the hyperbolic transvection f↦f+e preserves b but changes q(f)=0 to q(f+e)=1. For the root-bound issue take L=3(e+f), δ_n=r−ne with r an E₈ root: δ_n²=−2 and δ_n·L=−3n≤L²=18 for every n≥0, so the one-sided set is infinite. Containment of a subset in a closed finite union bounds its closure but does not make the subset closed. For the full quadratic group, (v,a,b)↦(v,a+b,b) preserves q_V(v)+b but moves z to z+u. For Peters–Sterk's restriction, the deck involution is id on L₊ and −id on L₋, giving a nonidentity kernel element. Also −id lies in the displayed source group and exchanges the two positive-cone components; restriction to the chosen component is required for its stated target. These controls were rechecked against the actual source lines, not adopted solely from the previous review.

## Source issues

- **Error** in martin at Caveat1.6, printed p.3: the source says O⁺(10,F₂) preserves a nondegenerate symmetric bilinear form; it should be the group of the split quadratic form, smaller than its polar symplectic group; affects a stated result.
- **Error** in martin at proof of Proposition5.2, printed p.16: the source says roots with δ·L≤d form a finite set; it should be the positively bounded set 0<δ·L≤d when selecting possible effective roots; affects the proof.
- **Gap** in martin at proof of Corollary5.5, printed p.19: the source says containment in a finite closed union implies the exceptional subset is closed; it should bound the closure inside that union, which suffices for the dimension estimate; affects the proof.
- **Error** in dolgachev at §6 before Theorem7, printed p.25: the source says the full quadratic isometry group of R/2R is 2⁸⋊Sp₈(F₂); it should be its subgroup fixing the polar radical pointwise; affects a stated result.
- **Error** in peters-sterk at Lemma5.2, printed p.1618: the source says restriction to L₊ is an isomorphism on the displayed group; it should restrict to the chosen positive-cone component and then quotient by the deck involution; affects a stated result.
- **Misprint** in peters-sterk at proof of LemmaA.5(iii), printed p.1625: the source says the ten-node diagram is T236; it should be T246; affects the proof.
