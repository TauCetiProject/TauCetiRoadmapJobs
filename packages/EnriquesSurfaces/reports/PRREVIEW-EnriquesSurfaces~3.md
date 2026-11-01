# Review of EnriquesSurfaces (pull request #1286 at bbfb9e2)

**Verdict:** accepted

:robot: Independent AI-assisted incremental re-review of 102 changed lines since 885faae. Both previous P1 findings are repaired. Three unchanged P3 findings remain; under this review's verdict rules they do not block human final approval. The candidate-order gate, including the targeted build, passes. No pull-request file was changed.

## R01 (P3) — Apply the Lean form rules to the companions

**Location:** `TauCetiRoadmap/EnriquesSurfaces/ReflectionTargets.lean:1`: `import TauCetiRoadmap.EnriquesSurfaces.LatticeTargets`; also `LatticeTargets.lean:1` and `SheafTargets.lean:1` in the same folder.

**Claim:** The three retained companions meet the acceptance-file form requirements.

**Witness:** ReflectionTargets imports a roadmap module; LatticeTargets imports two Mathlib submodules. None of the three imports Mathlib. Their illustrative docstrings and undocumented declarations remain unchanged from previous R03.

**Repair:** Delete the three unused companions, or make every retained file meet the prescribed import, module/declaration documentation, layer and README-name rules. The previous review's legal-import consolidation elaborated their declarations; no forbidden import is mathematically necessary. Removing these unused files leaves all three headlines in Suggested intact.

## R02 (P3) — Delete the retained coordinate and sheaf padding

**Location:** `TauCetiRoadmap/EnriquesSurfaces/LatticeTargets.lean:76`: `theorem gram_det : gram.det = -1 := by sorry`; also `ReflectionTargets.lean:35` and `SheafTargets.lean:55` in the same folder.

**Claim:** The companion coordinate Checks and generic sheaf API belong in the acceptance test.

**Witness:** README §5.1 already checks det M=−1 and root pairings. SheafTargets:60 directly uses pinned `Scheme.Modules.globalSectionsSmul_naturality`, `TauCeti/AlgebraicGeometry/Modules/GlobalSections.lean:143`; its baseGlobal duplicates that file's line 199.

**Repair:** Delete this padding from `Suggested.lean` and its acceptance companions; here it survives only in the companions. Delete definitions used only by that padding, preferably the three unused files. Retain the mathematics in README and native scalar maps in its supplier contract. The determinant remains −1 and scalar compositions at 2 and 3 both equal 6; deletion changes no headline. This is the unchanged previous R04, based on the Check/API criterion, not a claim that every admission closes with simp.

## R03 (P3) — Add the required source records

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:794`, References; `TauCetiRoadmap/EnriquesSurfaces/sources.toml` is absent.

**Claim:** The bibliography alone satisfies the source-record requirement.

**Witness:** The folder still has no sources.toml; the bibliography now also cites Davis and additional Stacks locators. The prior legal lookup for Averbukh remains unsuccessful.

**Repair:** Add schema-compliant records for the cited works, preserving established source keys, exact versions, locators, provenance and dispositions. Keep Enriques Surfaces I under the established key `enriques-one`. Record the unread Averbukh chapter without certifying its equivalence relation. For the repaired instances, Davis must resolve to Corollary D.1.2, p.446, and Dolgachev v2 to §4, p.12 (degree two, octic branch). This is the unchanged previous R06, extended to the added bibliography.

## Previous findings

- R01 — repaired: README:525–561 owns general geometric faithfulness, root signs and the half-space induction; Suggested:36 states it on the native representation. The unregistered gap is gone, including from the T246 and T237 dependencies.
- R02 — repaired: README:656 explicitly imports K3Surfaces §7.3's free/nodal hyperplanes; README:687 distinguishes square −4 vectors of divisibility two and one. The ownership table and Needs line include the same independent cut.
- R03 — not repaired: The three companion files are unchanged; ReflectionTargets:1 still imports a roadmap module and all three lack the prescribed Mathlib header. Current R01 records the P3 issue.
- R04 — not repaired: LatticeTargets:76 still states the determinant Check; SheafTargets:60 directly applies native scalar naturality. Current R02 records the surviving P3 padding.
- R05 — repaired: Survey citations now use §§3–6. README:69,89,415 identify constructed adapters and locate their intersection, evaluation, blowup, Picard and minimalization ingredients. The inspected source and supplier passages support these repairs.
- R06 — not repaired: sources.toml remains absent despite the expanded bibliography at README:794–803. Current R03 records the P3 source-record issue.

## Verified sound

The review is incremental: changed prose, its cited ingredients and consumers, and the new Lean theorem were checked directly. Unchanged mathematical tests are explicitly carried from [the previous report][previous], rather than presented as new universal proofs. All six previous findings are accounted for. The three companion files are byte-for-byte unchanged in the supplied diff. No change lies outside this roadmap folder, and the worktree remains clean.

**Gate and elaboration.** The supplied push gate passed. An independent rerun using the supplied candidate merge order, content checkout and `--build` also returned:

```text
gate EnriquesSurfaces: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The prescribed independent dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1477 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line appeared. An initial run against the tool's default order instead returned `NOT IN ORDER: EnriquesSurfaces (insert it after its last supplier)`. The brief expressly excludes this placement diagnostic from findings; rerunning against its actual candidate order resolved it without changing any file or tooling. The passing scanner does not enforce all companion-file form rules, hence R01–R02.

The missing native Geometric object was built with the permitted targeted module build. Direct `lake env lean` elaboration of Suggested then succeeded with precisely three sorry warnings. A scratch copy checked `#check @name` for all **11** actual declarations; the arbitrary index and group universes, Group instance, Coxeter matrix and CoxeterSystem all survive on the new theorem. No binder or hypothesis changed. A scratch one-`simp` probe of each of the **three** admitted headlines closed none. The old companion probes and declaration checks are carried from the previous report because those files did not change. There is no new sorry-defined data, set_option, stand-in carrier or admitted example.

**Headline inventory.** Layer 1: canonical cover, integral Picard specialization, coefficient comparisons and Num ≃ U⊕E₈(−1). Layer 2: all-n hyperelliptic classification and resolved double planes. Layer 3: scalar-rigidified presentation equivalence. Layer 4: Reye family, recognition and parameter quotient. Layer 5: general Coxeter faithfulness (new), faithful T246 realization, normal kernels and full mod-two image. Layer 6: generic nodal automorphisms/curve transitivity, compatible-pair lifting, very-general unnodal group and algebraic generic-open group. Layer 7: representation-relation comparison and counts. Suggested states the three directly accessible representation headlines. Its docstring retains the missing native geometric carriers for the others; the repair adds no substitute for them. Root-sign transport is supporting theory of the new headline, not a second surface acceptance test.

**Changed source checks and seeded sample.** Five legally fetched texts were opened through the source service: Davis's author PDF, Dolgachev v2, the April 19, 2024 Enriques Surfaces I manuscript, and the Stacks chapters on surface resolution and divisors. The latter are cited below by chapter-specific extraction labels. These are not new manifest entries. Source prose was not copied into the repository or this report.

| Target / sampled passage | Evidence opened in this round | Result |
| --- | --- | --- |
| §0.1 adapters | SchemeAndStackFoundations §§2.6,2.20,5.2–5.3,5.6,5.9–5.10; StableReduction Layer 4 | Actual proper coherent finiteness/flat base change, trace duality, divisor/Chern and surface pairing contracts exist. The added local discrepancy calculation gives +E. |
| §0.2 systems/base ideals | AlgebraicModuliForArithmeticGeometry §1.1; SchemeAndStackFoundations §§2.6,4.9; StableReduction Layer 4 | Quotient convention and dual-convention comparison exist. General Rees blowups are supplied independently of the later DVR-model resolution scope. Normalization is not claimed to commute with arbitrary base change. |
| §0.3 polarized isomorphisms | Unchanged; previous report's scalar/groupoid tests | Carry forward: connected proper surfaces have the scalar kernel k×; raw sheaf arrows are retained. |
| §1.1 canonical cover | dolgachev lines 272–313, §3, pp.7–8 | Correct repaired section; characteristic ≠2, nontrivial canonical class and connected étale K3 cover agree. The lifting construction still uses its named deformation/algebraization suppliers. |
| §1.2 Picard specialization | Unchanged; previous report's extension, classes-versus-arrows and Euler-pairing tests | Carry forward. The changed survey reference does not replace this constructed integral comparison. |
| §§1.3–1.5 integral comparisons | dolgachev lines 319–343, §3, pp.8–9 | Pic/H², torsion quotient, evenness, signature (1,9) and integral U⊕E₈(−1) background occur. Coefficient-specific Kummer/Tor refinements remain constructed from the named suppliers, not attributed wholesale to the survey. |
| §2.1 hyperelliptic classification | Unchanged; previous report's enriques-one Propositions 2.6.1/2.6.4, Corollary 2.6.5 and Proposition 3.2.1 audit | Carry forward all-n and fixed-component distinctions and the prior OCR limitation. |
| §2.2 double-cover algebra | dolgachev lines 468–470, §4, p.12 | Degree-two plane map after the two base blowups and octic branch occur at the corrected locator. Relative algebra/trace/norm remain owned constructions. |
| §2.3 branch transform | dolgachev lines 488–521, §4, p.13 | Corrected section contains the special/nonspecial branch setting. The floor/parity transform is derived from the local equation, not a claimed source quotation. |
| §3.1 presentations | Unchanged; previous report's intrinsic equivalence/scalar tests | Carry forward; the announcement does not certify the Chapter X equivalence. |
| §3.2 branch uniqueness/minimalization | stacks-pic lines 3204–3209, tag 0BXJ; stacks-factorization lines 2335–2337 and 2390–2399, tags 0C5R–0C5S; enriques-one lines 10108–10127, Theorem 1.1.3/Remark 1.1.4(1), printed p.201 | Pic(P²)=ℤ, smooth surface point-blowup factorization, minimal models and the nonruled restriction support the added route. Uniqueness is up to the specified birational identification, not equality of resolutions. |
| §3.3 ordered systems | dolgachev lines 488–521, §4, p.13 | Corrected locator supports the degree-eight/del Pezzo comparison and distinguishes canonical twists. The two-element Picard-lift action remains explicit. |
| §§4.1–4.2 Reye geometry/quotient | §4.1's corrected survey section heading at dolgachev line 607; primary announcement and §4.2 unchanged | Carry forward the previous primary-source recognition and quotient audit. The survey section-number repair does not purport to supply finite inertia or a universal coarse family. |
| §5.2 general faithfulness | davis lines 4731–4784 (§6.12, pp.108–109), 2409–2442 (Lemma 4.8.3, pp.52–53), 17568–17576 and 17600–17648 (D.1.1/D.1.2/D.1.5, pp.446–448) | Correct form, reflection normalization, both dihedral cases, half-space induction and injectivity. Davis calls the primal action canonical and the dual action geometric; the native Lean geometricRepresentation is the primal action of D.1.2. |
| §6.2 unnodal periods | K3Surfaces §7.3, README:769–817; §7.2:740 | The −2 free-cover arrangement and primitive even −4 nodal arrangement are independent supplier outputs. The distinction div=2 versus div=1 is retained. The very-general stabilizer condition remains separate from NS rank. |
| §6.3 generic-open comparison | Unchanged; previous report's Martin theorem/closure audit | Carry forward; no new identification of a Baire complement with a Zariski open. |
| §7.1 orbit decomposition | Unchanged; previous report's S₃/C₆ and mass tests | Carry forward both directions of the normal double-coset comparison. |
| §7.2 source representations | Unchanged; previous report's announcement audit and Averbukh limitation | Carry forward numbers and Cremona/projective distinction; source equivalence remains uncertified. |

This accounts for all **15 seeded targets**, with fresh verification where the diff touches them, plus the newly added general Coxeter target and ingredient locators. The surface and moduli endpoints remain theorem obligations; small examples do not prove them.

**Pinned API and supplier evidence.** Mathlib is pinned at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following **11 API/contract rows** were opened directly; paths are relative to their library or roadmap repositories.

| Declaration / contract | File and line | Verified content |
| --- | --- | --- |
| CoxeterMatrix | `Mathlib/GroupTheory/Coxeter/Matrix.lean:69` | Symmetric natural-valued matrix, diagonal 1, off-diagonal ≠1; no finite-index requirement. |
| CoxeterSystem | `Mathlib/GroupTheory/Coxeter/Basic.lean:154` | Native group presentation carrier; no replacement group or arbitrary action in the new theorem. |
| geometricForm / geometricReflection | `TauCeti/GroupTheory/Coxeter/Geometric.lean:125`,161 | Free module, −cos(π/m), reflection x−2B(eᵢ,x)eᵢ. At m=0 Lean division gives 0 and the entry −1 as intended. |
| geometricRepresentation / simple equation | Same file:479,485; scope note:99 | Native representation and generator formula exist; injectivity is expressly not proved there. |
| strongExchange / deletionCondition | `TauCeti/GroupTheory/Coxeter/StrongExchange.lean:413`,463 | Actual one-/two-letter deletion statements; proof input is independent of geometric faithfulness. |
| exists_isMinimalCosetRep / length_mul_of_isMinimalCosetRep | `TauCeti/GroupTheory/Coxeter/Parabolic.lean:236`,280 | Minimal left-coset representative, with right parabolic factor and length additivity. |
| wordProd_alternatingWord_eq_of_mem_parabolic_pair | `TauCeti/GroupTheory/Coxeter/Dihedral.lean:167` | Rank-two element has an alternating reduced word of its own length. |
| globalSectionsSmul_naturality / baseRingToGlobalSections | `TauCeti/AlgebraicGeometry/Modules/GlobalSections.lean:143`,199 | Actual naturality and structure-map scalar action; unchanged companion duplication is R02. |
| Surface/evaluation ingredients | Main `TauCetiRoadmap/SchemeAndStackFoundations/README.md:3437`,4275,5448,6653,6701,6921,7129,7175; main `TauCetiRoadmap/StableReduction/README.md:529`; new-roadmap AlgebraicModuliForArithmeticGeometry §1.1, README:305 | Re-resolved the added exact cuts and their base hypotheses; no new surface Num, quotient projective space or general blowup is commissioned. |
| Abstract and finite Coxeter inputs | Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:275`,296; RootSystemsPartII README:7 | Main supplies abstract exchange and finite positive-definite chambers; Part II supplies integral dominance/folding, not arbitrary geometric faithfulness. |
| Free/nodal period supplier | Supplied K3Surfaces head, `TauCetiRoadmap/K3Surfaces/README.md:769`,798,835 | Exact criterion and independent Needs line; the section explicitly has no Enriques supplier. |

The fresh citation resolver reports one unresolved token, README:654 `K3Surfaces K7.C`. That sentence explicitly excludes importing K7.C, so it is not a dependency or missing positive citation. Newly cited pinned names were checked manually because the resolver does not inspect these local pins. Unchanged supplier content is carried from the previous report's 26-row audit; this round reopens the changed cuts listed above and reruns the graph and citation resolution. Main IntegralLattices, AlgebraicVectorBundles and StableReduction were consulted for roadmap form and ownership.

**Ownership by object.** Object searches used `roadmaps grep`, the pinned Coxeter sources and board packages, followed by `roadmaps show` and the supplied heads. No general faithfulness implementation was found at the pins. The open revision of the existing RootSystems roadmap has a proposed §3G with overlapping theory; under the brief an open revision cannot supply a dependency and must be read as main. Main has no such target. Thus §5.2 takes the general prerequisite here, exactly the owned-target alternative requested by previous R01, without duplicating main's exchange or finite chamber theory. The new-roadmap RootSystemsPartII is a different, finite folding extension. No supplied eligible new-roadmap owner or foreign fully qualified declaration collision was found. The index also mentions an unsupplied PseudolineArrangementsAndOrientedMatroids consumer; its full text was not sought or treated as a supplier. Ownership against open heads without supplied files is not certified.

**Adversarial calculations for changed statements.** Exact rational elimination gives the displayed Gram determinants; rank-two actions were multiplied explicitly. These rows supplement the carried table below. “Pass” records the displayed calculation and checked hypotheses, not a finite proof of a universal endpoint.

| Statement | Instances tried | Values computed on each side | Result; change |
| --- | --- | --- | --- |
| §0.1 canonical discrepancy | Blowup chart y=xt | dx∧d(xt)=x dx∧dt, order +1; K discrepancy +E, not −E | Pass; new Check and derivation |
| §0.1 restriction/intersection | Rulings F,G of P¹×P¹ | deg O(G) on F=1=F·G; F²=0=degree of its normal line | Pass; located supplier adapter |
| §0.1 RR/adjunction transport | Exceptional P¹; O on P¹×P¹ | E(E+K)=−2=2g−2; χ(O)=1 and RR correction 0 | Pass; precise supplier cuts |
| §0.1 field extension | Real degree-two closed intersection split over ℂ | Degree 2 before; 1+1=2 after; H⁰(O(1,1)) dimensions 4 over either field | Pass; flat/coherent hypotheses retained |
| §0.1 trace/Chern projection | Degree-two finite cover of P¹, O(1) | Degree of pullback 2=2·1; trace of 1 equals 2 | Pass; projection route located |
| §0.2 complete evaluation/dual convention | H⁰ dimensions 0,1,3; quotient (a,b,c)↦b | No quotient for 0; P⁰ and P²; point [0:1:0] and target line k on both conventions | Pass; no zero-module projective map |
| §0.2 blowup ideal | Ideal (x,y), chart y=xt | (x,xt)=(x); quotient family (1,t) generates unit ideal | Pass; actual Rees blowup contract |
| §0.2 base change and Stein factor | Finite k-algebra k×k; square-zero coefficient extension | Rank 2 before/after; relative Spec of f_*O equals the finite source on both sides | Pass; no arbitrary normalization claim |
| §3.2 Picard square-root uniqueness | Branch degree 8 on P²; nonzero 2-torsion on another base | 2d=8 has unique d=4; A and A⊗T have equal squares when 2T=0 | Pass; Pic(P²)[2]=0 essential |
| §3.2 branch scalar and isotropy | b′=9b over ℂ | New coordinate t′ maps to 3t, so (3t)²=9b=b′; inverse multiplier 1/3; deck square 1 with two distinct arrows | Pass; class uniqueness, not raw groupoid equivalence |
| §3.2 factorization and minimalization | One blowup of nonruled minimal S; rational negative control | Exceptional E²=−1 contracts; Picard rank ρ+1→ρ. P² and P¹×P¹ remain minimal with ranks 1≠2 | Pass; nonruled condition and chosen birational map retained |
| §5.2 native standard form | m=1,2,3,0 | −cos(π/m)=1,0,−1/2,−1; 2B=2,0,−1,−2 | Pass; infinite exponent and normalization |
| New coxeterGeometricFaithful | Empty index and rank one C₂ | Empty: group and End(0) each have 1 element. Rank one: ρ(1)e=e, ρ(s)e=−e≠e | Pass; nonvacuous native carrier |
| §5.2 positive/negative-root definitions | A₂ simple roots, their negatives, zero | (1,0),(0,1) positive; (−1,0),(0,−1) negative; zero excluded from both | Pass; wrong zero-root model excluded |
| §5.2 positive iff right length increase | A₂, w=s₁ and i=2 | ρ(w)e₂=(1,1)>0; ℓ(s₁s₂)=2=1+1 | Pass; multiplication direction |
| §5.2 negative iff right length decrease | A₂, w=s₂s₁ and i=1 | ρ(w)e₁=(−1,−1)<0; ℓ(s₂s₁s₁)+1=1+1=2 | Pass; both sign cases |
| §5.2 finite rank-two/chamber route | A₂ reflections and dual covector (1,1) | (s₁s₂)³=I, product ≠I; dual s₁ sends (1,1) to (−1,2), outside positive chamber | Pass; identity-action countermodel excluded |
| §5.2 degenerate infinite dihedral | B=[[1,−1],[−1,1]], n=0,1,2 | det B=0; (s₁s₂)ⁿe₁=(1,0),(3,2),(5,4)=(2n+1,2n) | Pass; degeneracy allowed |
| §5.2 reindexing | Swap the two A₂ indices | Swap(ρ(s₁)e₂)=(1,1)=ρ(s₂)e₁; Gram off-diagonal remains −1/2 | Pass; transport target |
| §5.2 standard parabolic inclusion | A₂ subset {1}, vector ae₁ | Extend then reflect gives −ae₁; reflect then extend gives −ae₁ | Pass; extension by zero intertwines |
| §5.2 infinite index/finite support | Countably many commuting generators, word s₁s₂ | e₁↦−e₁, e₂↦−e₂, e₃↦e₃; word support has size 2 | Pass; finite-word route does not need an infinite-dimensional interior |
| §5.2 indefinite T246 input | 2B, chain 1–9 | det(2B)=−4; chain leading minors 2,3,…,10; inertia (9,0,1) | Pass; no positive-definite restriction |
| reyeGeometricFaithful / new general input | Root, neighbour, perpendicular vector | Both native and specified formulas give −eᵢ,eⱼ+eᵢ,eⱼ; form values 2,−1,0 | Pass; previous R01 prerequisite now owned |
| §6.2 free-cover criterion | δ=e−f in U | δ²=−2, pairings (−1,1), div=1; H_δ removed from free locus | Pass; exact §7.3 supplier |
| §6.2 nodal criterion and new Check | δ=e′−f′ in U(2); e−2f in U | Squares −4,−4; pairing ideals 2ℤ,ℤ; divisibilities 2,1 | Pass; only first vector meets nodal condition |
| §6.2 lifted-curve criterion | Disjoint C,jC with squares −2 | (C−jC)²=−4 and j(C−jC)=−(C−jC); C+jC has same square but eigenvalue +1 | Pass; anti-invariant condition retained |
| §6.2 very-general criterion | NS=M(2), h=±id_T | Norms in 4ℤ exclude −2; both signs reduce to id on exponent-two discriminant, but form two distinct integral maps | Pass; separate Hodge-stabilizer restriction |
| §6.2 U3 consuming general faithfulness | T237 α basis versus T246 β basis | det Gram −1 versus −4; α₀·α₃=1, α₀·α₄=0, versus β attachment at 4 | Pass; repaired dependency retains different lattices |
| Source negative control, tag 0BXJ | P⁰ over a field versus P² | Pic(P⁰)=0 and all O(m)=O; Pic(P²)=ℤ with O(1) of infinite order | Source boundary error below; the roadmap only uses n=2 |

**Carried adversarial table.** The following 162 rows retain the previous report's computed values for unchanged mathematics and declarations, each with an explicit previous-report citation. Three dependency-affected rows have been replaced above: §5.2's faithful headline, §6.2 U1's period boundary, and the declaration reyeGeometricFaithful. Historical R04 labels in these carried rows refer to previous R04 (current R02).

| Statement | Instances tried | Values computed on each side / negative control | Result; change |
| --- | --- | --- | --- |
| Conventions: Enriques adapter | Enriques, K3, abelian surface | χ(O)=1,2,0; only first meets χ=1 | Pass WC.7 distinction; [previous report][previous] |
| Geometric integrality/smoothness | disconnected union; square-zero thickening | H⁰(O)=k×k, not k; nonzero ε with ε²=0, not reduced | Boundary: excluded; [previous report][previous] |
| Canonical numerical triviality/minimality | exceptional curve of a blowup | E²=−1 and K·E=−1, versus K·C=0 on Enriques | Pass exclusion; [previous report][previous] |
| §0.1 intersection adapter | rulings F,G of P¹×P¹ | F²=G²=0, F·G=G·F=1 | Pass; [previous report][previous] |
| §0.1 adjunction | exceptional P¹ | E·(E+K)=−2=2·0−2 | Pass sign; [previous report][previous] |
| §0.1 RR polarization | L=O; rulings | χ(M)−χ(O)−χ(M)+χ(O)=0; χ(O(1,1))−χ(O(1,0))−χ(O(0,1))+χ(O)=4−2−2+1=1 | Pass; [previous report][previous] |
| §0.2 evaluation/base ideal | families {1},{t},empty on A¹ | images (1),(t),(0); base schemes empty, origin, all A¹ | Pass; these are family tests, not finite H⁰ claims on A¹; [previous report][previous] |
| §0.2 complete projectivization | h⁰=0,1,3 | empty/no map, P⁰, P²; dimensions −1,0,2 only with empty-case convention | Pass zero-module guard; [previous report][previous] |
| §0.2 blowup and exceptional ideal | ideal (x,y) on A², x-chart y=xt | pulled ideal (x,xt)=(x); quotient sections (1,t) generate | Pass invertibility; [previous report][previous] |
| §0.2 projective convention | quotient k³→k, (a,b,c)↦b | point [0:1:0] in dual-line convention; pulled O(1) is target line k | Pass; [previous report][previous] |
| §0.2 normalization/base change | cusp k[t²,t³], reduce t²=0 | normalized base change k[t]/(t²); normalization of reduced fibre k | Boundary: not arbitrary base change; [previous report][previous] |
| §0.3 polarized scalar arrows | O on proper connected S; two components | units k×; k××k× on two components | Pass connectedness restriction; [previous report][previous] |
| §0.3 composition | scalars 2,3 over Q | composite 6; both projectivizations identity | Pass; [previous report][previous] |
| §1.1 canonical cover | K nontrivial, K²=O | h⁰(K)=0; χ(O⊕K⁻¹)=1+1=2 | Pass necessary K3 invariants; [previous report][previous] |
| §1.1 trivial-root negative control | b=1, L=O, char≠2 | k[t]/(t²−1)=k×k, h⁰=2, disconnected | Pass nontriviality required; [previous report][previous] |
| §1.1 characteristic two | b=1 over F₂ | t²−1=(t−1)²; trace 2a=0 | Boundary: excluded; [previous report][previous] |
| §1.1 Pic→Num kernel | O,K; a nontrivial numerical L | χ(L)=1; h⁰(L)+h⁰(K−L)≥1; at K the sum is 0+1 | Pass RR/effectivity route; [previous report][previous] |
| §1.1 evenness | any divisor class D | RR gives D²=2(χ(D)−1); parity 0 | Pass; [previous report][previous] |
| §1.1 obstruction pullback | K3 cover trivializes K | pullback Ω¹_S⊗K=Ω¹_X; sections inject into 0, hence 0 | Pass with independent K0.A; [previous report][previous] |
| §1.1 small thickenings | W(k)/pⁿ⁺¹→W(k)/pⁿ, n≥1 | I²=(p²ⁿ)=0 modulo pⁿ⁺¹; obstruction groups 0⊗I=0 | Pass; [previous report][previous] |
| §1.1 algebraization | compatible ample system | all X_n recovered as X mod pⁿ, all L_n as L mod pⁿ; an assumed X alone constructs zero new schemes | Pass A4.8/089A repairs old gap; [previous report][previous] |
| §1.2 specialization | O,K and vertical whole fibre | O↦O, K↦K of order 2; [div(p)]=0 | Pass; [previous report][previous] |
| §1.2 uniqueness level | trivial line over R | unique class, automorphisms R× rather than 1 | Pass class/representative distinction; [previous report][previous] |
| §1.2 integral pairing | isotropic Enriques f,g, f·g=1 | χ(f+g)−χ(f)−χ(g)+χ(O)=2−1−1+1=1 | Pass at all primes; [previous report][previous] |
| §1.3 exponential/Chern sign | exp(2πiu); O(±1) on P¹ | integers 0,1 map to 1; Chern degrees +1,−1 | Pass; [previous report][previous] |
| §1.3 torsion retention | canonical K | c₁(K) has order 2; its rational image 0; c₁(O)=0 | Pass; [previous report][previous] |
| §1.3 extension/deformation | geometric Enriques Picard space | tangent H¹(O)=0, obstruction H²(O)=0, geometric components points | Pass in stated domain; no universal field embedding assumed; [previous report][previous] |
| §1.3 unimodular free quotient | rank ten form | determinant −1, signature (1,0,9); rational rank alone permits determinant −4 too | Pass integral route needed; [previous report][previous] |
| §1.4 finite Kummer | ℓ=2, n≥1 | Br[2ⁿ]=Z/2, not 0; Pic/2ⁿ→H² finite has cokernel Z/2 | Pass; [previous report][previous] |
| §1.4 inverse Tate module | constant groups Z/2, transitions ×2 | each map 0; compatible sequence must be all 0 | Pass finite/nonfinite distinction; [previous report][previous] |
| §1.4 derived reduction | C with H³=Z/2, n=1 | Tor term H³[2]=Z/2; H²(C)/2 alone misses one F₂ dimension | Pass; [previous report][previous] |
| §1.4 canonical class at odd ℓ | torsion order 2 | tensor Z_ℓ torsion 0 for odd ℓ, Z/2 at ℓ=2 | Pass; [previous report][previous] |
| §1.4 bad coefficient | μ_p in char p | tᵖ−1=(t−1)ᵖ, one nonreduced geometric point | Boundary ℓ≠p; [previous report][previous] |
| §1.4 numerical ℓ-adic pairing | U basis | cup/trace matrix (0,1;1,0), determinant −1 on both sides | Pass normalization; uses supplied comparison; [previous report][previous] |
| §1.5 normal form | U⊕E₈(−1); Reye alternative | determinants −1,−4; ranks both 10, signatures both (1,9) | Pass integrality distinguishes; [previous report][previous] |
| §1.5 U and scaling | e,f; form multiplied by 2 | (e+f)²=2; determinant scales by 2¹⁰=1024 | Pass; [previous report][previous] |
| §1.5 marking functoriality | replace marking m by g∘m | represented a becomes g(mam⁻¹)g⁻¹; for a=id both are id | Pass conjugation; [previous report][previous] |
| §1.6 half-fibres | F and 2F | F²=0; h⁰(F)=1, h⁰(2F)=2 | Pass; [previous report][previous] |
| §1.6 Φ positive minimum | D=2F₁+F₂, F₁·F₂=1; D=0 | D²=4 and D·F₁=1, so Φ=1; at 0 minimum 0 | Pass big-nef restriction; [previous report][previous] |
| §1.6 effective-root reduction | R²=−2, H ample | s_R(R)=−R; heights H·R>0 and H·(−R)<0 | Pass effectivity distinction; [previous report][previous] |
| §2.1 all-n classification | nF₁+F₂; (n+1)F+R | squares 2n and 2(n+1)−2=2n; twists by K leave values unchanged | Pass CDL locator; [previous report][previous] |
| §2.1 fixed-part boundary | n=1, h=2F+R | h²=2, h·R=0; moving part 2F has square 0, fixed R | Pass excluded from plane assertion; [previous report][previous] |
| §2.1 moving square four | n=2 | h⁰=3; transformed square 4−1−1=2; degree-two image has degree 1 | Pass; [previous report][previous] |
| §2.1 higher scroll | n=3 | transformed square 6−2=4=2·(3−1), degree-two map onto degree-2 surface | Pass; [previous report][previous] |
| §2.2 cover algebra | b=1, a+ct | trace 2a; norm a²−c²; (1+t)(1−t)=0 | Pass; [previous report][previous] |
| §2.2 nonreduced cover | b=0 | t≠0, t²=0; norm a²; free algebra rank 2 | Pass non-étale example; [previous report][previous] |
| §2.2 canonical formula | base P², A=O(4); A=O(3) | ω_Y=f*O(1); for sextic ω_Y=O; branch degrees 8 versus 6 | Pass; singular Y is not its resolution; [previous report][previous] |
| §2.2 resolved versus finite map | contracted exceptional curve | fibre dimension 1 versus finite fibre dimension 0 | Boundary: X→P² not asserted finite; [previous report][previous] |
| §2.3 branch transform | m=1,2,3 | 2σ*A−2⌊m/2⌋E equals strict B+(m mod 2)E, coefficients 1,0,1 | Pass; [previous report][previous] |
| §2.3 crossing resolution | t²=xy, x-chart y=xv | t=xu gives u²=v; original origin singular, transformed chart smooth | Pass; [previous report][previous] |
| §2.3 arbitrary octic exclusion | smooth degree-8 branch | K²=2, pg=h⁰(P²,O(1))=3, versus Enriques K²=pg=0 | Pass necessity of specified singular model; [previous report][previous] |
| §3.1 raw scalar rigidification | θ and λθ, λ≠1 | same projective b and blowup arrow, distinct raw θ; quotient scalar kernel 1 | Pass; [previous report][previous] |
| §3.1 left action | noncommuting a,b | (ab)⁻¹=b⁻¹a⁻¹; pullback gives (a⁻¹)*∘(b⁻¹)*, not a*∘b* | Pass contravariance; [previous report][previous] |
| §3.1 canonical resolution | one extra blowup | new exceptional square −1 and Picard rank increased by 1 | Pass nonisomorphic refinement excluded; [previous report][previous] |
| §3.1 hyperplane recovery | system s_i versus t·s_i | ratios identical; fixed divisor adds div(t), so recovered moving bundle differs | Pass no-fixed-part condition; [previous report][previous] |
| §3.1 equivalence headline | fixed class with scalar arrows | before rigidification fibre k×, afterwards one arrow per fixed a and class equation | Necessary full-faithfulness test passes; geometric equivalence remains target; [previous report][previous] |
| §3.2 cover-class uniqueness | b versus c²b, c≠0 | t↦ct is invertible; c=0 gives zero, not isomorphism | Pass; [previous report][previous] |
| §3.2 deck isotropy | t↦−t | square id, two distinct arrows in char≠2; same branch datum | Pass groupoids not identified before deck quotient; [previous report][previous] |
| §3.2 square-root ambiguity | Pic(P²)=Z versus base with Pic[2] | 2d=8 gives unique d=4; nonzero order-two twist has same square | Pass hypothesis; [previous report][previous] |
| §3.3 ordered models | h=f+g, f·g=1 | h²=2; (2f+g)²=(f+2g)²=4; difference square −2 | Pass unequal ordered classes; [previous report][previous] |
| §3.3 special boundary | h=2F+R | h²=2, h·R=0; violates ample positive curve degree | Pass; [previous report][previous] |
| §3.3 lift torsor | two points, trivial/transposition action | orbit counts 2/1 respectively | Pass no unconditional factor two; [previous report][previous] |
| §4.1 degeneracy scheme | ranks 4→3 at ranks 2,3,0 | kernel dimensions 2,1,4; expected codimension at rank 2 is 2 | Pass; zero map fails regularity; [previous report][previous] |
| §4.1 base-change minors | diagonal (1,1,t), reduce t=0 | maximal minor t maps to 0; rank goes 3→2, ideal base change agrees | Pass schematic, not just pointwise; [previous report][previous] |
| §4.1 symmetroid/Reye degrees | 4×4 linear matrix; Gr(2,4) | determinant degree 4; ambient dimension 4, expected Reye dimension 2 and Plücker degree 10 | Necessary dimensions pass; nonempty regular locus remains target; [previous report][previous] |
| §4.1 recognition | nodal curve degree 3 versus 4 | 3<4 violates source hypothesis; 4 does not | Boundary: retain source's nodal/polarized domain; [previous report][previous] |
| §4.2 parameter quotient | Gr(4,10), PGL₄ | dimensions 24,15; finite-stabilizer quotient 9 | Pass; [previous report][previous] |
| §4.2 nonfree action control | trivial PGL₄ action | coarse orbit space dimension 24, not 9; stabilizer dimension 15 | Pass finite-inertia requirement; [previous report][previous] |
| §4.2 universal family | stack point with stabilizer of order 2 | two stabilizer arrows versus one coarse identity; descent requires trivial action on fibre data | Pass distinction; [previous report][previous] |
| §5.1 numerical basis | f₁,…,f₉,δ | det M=−1; f₁₀ coordinates (−1,…,−1,3); f₁₀²=0 | Pass; [previous report][previous] |
| §5.1 isotropic sequence | fᵢ,δ | δ²=10; δ·fᵢ=3; fᵢ·fⱼ=1 for i≠j, 0 on diagonal | Pass; [previous report][previous] |
| §5.1 β-span/parity | all ten βᵢ | det β-coordinate map has absolute value 2; det β Gram −4; parity kernel index 2 | Pass equality via inclusion and index; [previous report][previous] |
| §5.1 graph | β₀ with β₄,β₃,β₀ | pairings 1,0,−2 respectively | Pass; [previous report][previous] |
| §5.1 distinguished r | all βᵢ | r²=−2; pairings 0 nine times and −2 at β₉ | Pass; [previous report][previous] |
| §5.2 form normalization | same root, edge, nonedge | −intersection =2,−1,0; 2B=2·1,2·(−1/2),2·0 | Pass; [previous report][previous] |
| §5.2 Coxeter reflections | all ten matrices | sᵢ²=I and sᵢᵀQsᵢ=Q entrywise | Pass; [previous report][previous] |
| §5.2 braid orders | edge (0,4), nonedge (0,3) | product order 3,2 respectively; individual order 2 | Pass; does not prove faithfulness; [previous report][previous] |
| §5.2 finite parabolics | E₈; two E₇ subsets | negative Gram determinants 1,−2,−2; longest elements negate those subspaces | Pass; [previous report][previous] |
| §5.2 normal kernels | B,K,G reductions | B=K=I; G(e₈)=e₈+u≠e₈; all induce identity on symplectic quotient | Necessary tests pass; normal generation remains theorem; [previous report][previous] |
| §5.3 quadratic form | 0,e₀,e₀+e₄ | q=0,1,1; twice-counted edge gives last value 0 | Pass; [previous report][previous] |
| §5.3 radical | all 1024 vectors | exactly 0,u,z,u+z; q-values 0,0,1,1; dimension 2 | Pass; [previous report][previous] |
| §5.3 quotient obstruction | 0,z in same radical coset | q(0)=0≠1=q(z); polar quotient dimension 8 | Pass no descended q; [previous report][previous] |
| §5.3 shear/splitting | T_ℓ, S_g; q=q_V+b | q(T_ℓx)=q_V(v)+b; q(S_gx)=q_V(gv)+b+q_V(gv)+q_V(v)=q(x) | Pass cancellation; [previous report][previous] |
| §5.3 composition/conjugation | g,h and linear ℓ | correction c_g(hv)+c_h(v)=c_gh(v); conjugate functional ℓ∘g⁻¹ | Pass inverse/action direction; [previous report][previous] |
| §5.3 exact radical stabilizer | radical shear z↦z+u | preserves q since q(z+u)=q(z)=1, but moves z | Pass full orthogonal group is larger; [previous report][previous] |
| §5.3 image generators | 10 generators ×1024 vectors | 10,240/10,240 q identities; all four radical vectors fixed by all ten | Pass necessary image inclusion; [previous report][previous] |
| §5.3 G formula | all 1024 vectors | computed G(x)=x+x₈u in 1024/1024 cases; G²(e₈)=e₈ | Pass nonzero shear; [previous report][previous] |
| §5.3 quotient orders | Sp₈ and shear space | 47,377,612,800; 256·that=12,128,668,876,800 | Pass arithmetic, not order-defined group; [previous report][previous] |
| §6.1 tame primes | p=11 and 2,3,5,7,17 | 11∤order; each excluded prime divides 2¹⁶3⁵5²7·17 | Pass source domain; [previous report][previous] |
| §6.1 freeness | involution [x:y]↦[−x:y] | two fixed points despite invertible order 2 | Pass nonautomatic freeness; [previous report][previous] |
| §6.1 surface action | effective R versus −R | H·R>0, H·(−R)<0; reflection cannot preserve effective cone | Necessary automorphism test passes; chart realization remains target; [previous report][previous] |
| §6.1 curve transitivity headline | two curves in same Aut orbit | self-intersections −2=−2 preserved; W orbit alone gives zero actual surface maps | Open geometric endpoint, not deduced from lattice transitivity; [previous report][previous] |
| §6.2 U0 pullback | U basis | (π*e,π*f)=2=2(e,f); diagonal root square −4 | Pass scaling; [previous report][previous] |
| §6.2 U0 gluing | ranks 10 and 12, exponent 2 | discriminant orders 1024,1024; gluing index 1024 gives determinant 1 | Pass primitive gluing; [previous report][previous] |
| §6.2 U1 cone | NS=M(2) | every square divisible by 4; −2 excluded | Pass root-free cone premise; [previous report][previous] |
| §6.2 U1 genericity | NS rank 10; Hodge stabilizer | rank condition alone places no bound 2 on stabilizer; explicit ±id condition supplies exactly 2 | Boundary: conditions kept separately; [previous report][previous] |
| §6.2 U2 signs/gluing | h=±id_T | reductions both id on exponent-two A_T; actions on T different | Pass; [previous report][previous] |
| §6.2 U2 kernel/descent | id and deck ι | same numerical action id; two lifts modulo {1,ι} give one surface identity | Pass correct deck quotient; [previous report][previous] |
| §6.2 U3 T237 | α₀=δ−f₁−f₂−f₃ | α₀·α₃=1, α₀·α₄=0; det Gram −1, coordinate index 1 | Pass; distinct from T246; [previous report][previous] |
| §6.2 U4 full criterion | compatible versus incompatible discriminant pairs | γḡ=h̄γ gives graph preserved; mismatch sends (a,γa) outside graph | Pass both directions algebraically; Torelli/cone inputs retained; [previous report][previous] |
| §6.3 bielliptic involutions | decomposition U⊕E₈(−1) | action id⊕−id, square id, mod-two action id | Pass source model; [previous report][previous] |
| §6.3 pencil orbits | split 10-dimensional F₂ form | 528 isotropic vectors, 527 nonzero; 527≠136≠34780 | Pass; [previous report][previous] |
| §6.3 tangent comparison | 2x=3x=0; characteristic zero | x=3x−2x=0; multiplication by 2 injective in char 0 | Pass, char 2 excluded; [previous report][previous] |
| §6.3 local dimensions | dim family 10; exceptional closures 5,2 | codimensions at least 5,8; proper finite union cannot fill dimension 10 | Pass bounds with closures; [previous report][previous] |
| §6.3 generic loci | countably many proper loci versus finite closed union | countable union may be dense; finite dimension≤5 union in dim10 has nonempty complement | Pass no identification of loci; [previous report][previous] |
| §7.1 normal double cosets | W=S₃,H=A₃,K=〈(12)〉 | HK=W, index 1; image K in C₂ has order 2, index 1 | Pass nonabelian test; [previous report][previous] |
| §7.1 boundary/cyclic tests | H=1,H=W; W=C₆,H=C₃,K=C₂ | indices 3,1; cyclic HK=C₆ gives 1=1 | Pass; [previous report][previous] |
| §7.1 weighting | transitive orbit with stabilizer C₂ | isoclass count 1 versus mass 1/2 | Pass unweighted convention; [previous report][previous] |
| §7.2 announced counts | 34780;136 | 34780=4·5·37·47, hence not an Sp₈ subgroup index; 136=8·17 | Pass obstruction; actual representation relation unverified; [previous report][previous] |
| §7.2 regular Cremona comparison | quadratic plane Cremona and projective change | degrees 2 versus 1; two inverse quadratic maps compose to degree 1 after cancellation | Pass distinction; symmetroid move classification remains target; [previous report][previous] |

The following declaration-by-declaration table supplements the geometric table. The value tests concern the written definitions, including the retained companions; the deletion findings concern their role in an acceptance test.

| Declaration | Instances tried | Computed values / both sides | Result; change |
| --- | --- | --- | --- |
| Suggested.reyeAdjacent | (0,4),(0,3),(0,0) | true,false,false; reversed pairs agree | Pass; [previous report][previous] |
| reyeAdjacentDecidable | same pairs | positive,negative,negative decisions | Pass; [previous report][previous] |
| reyeCoxeterEntry | same pairs | 3,2,1 | Pass; [previous report][previous] |
| reyeDiagram | all 100 entries | symmetric; ten diagonal 1s; other entries 2 or 3 | Pass; [previous report][previous] |
| ReyeReduction | coordinate vectors, zero | dimension 10, cardinality 2¹⁰=1024; one zero vector | Pass; [previous report][previous] |
| reyeQuadratic | 0,e₀,e₀+e₄ | 0,1,1 | Pass; [previous report][previous] |
| reyePolar | (e₀,e₀),(e₀,e₄),(e₀,e₃) | 0,1,0 | Pass; [previous report][previous] |
| reyeRealPairing | same pairs | 2,−1,0 | Pass; [previous report][previous] |
| reyeReductionImage | every simple generator; G | q preserved in 10240 cases; G(e₈)−e₈=u≠0, quotient difference 0 | Correctly states full radical-fixing image; no finite test proves surjectivity; [previous report][previous] |
| LatticeTargets.Index | admissible indices | exactly 0,…,9; index 10 has no inhabitant | Pass; [previous report][previous] |
| Ambient | zero and basis coordinate | rational vectors 0 and e₀; dimension 10 | Pass; [previous report][previous] |
| gram | (0,0),(0,1),(0,9),(9,9) | 0,1,3,10 | Pass; [previous report][previous] |
| gram_isSymm | all 100 entries | Gᵢⱼ−Gⱼᵢ=0 in 100 cases | Pass; [previous report][previous] |
| model | basis rational carrier | integral pairing 0,1,3,10; det −1 | Pass; no surface attached; [previous report][previous] |
| modelBasis | each coordinate | coordinate change identity I₁₀; ten independent vectors | Pass; [previous report][previous] |
| vector | zero, unit coordinate, twice it | 0,bᵢ,2bᵢ | Pass; [previous report][previous] |
| f10Coordinates | first nine and last coordinate | −1 nine times, 3 once; f₁₀²=0 | Pass; [previous report][previous] |
| betaCoordinates | i=0,1,9 | (−1,−1,−1,−1,0,…,0,1); e₀−e₁; (1,…,1,2,−3) | Pass; no truncated subtraction at i=0; [previous report][previous] |
| rCoordinates | all coordinates | (2,2,2,2,2,2,2,2,2,−5) | Pass; [previous report][previous] |
| beta | β₀,β₉ | squares −2,−2 | Pass; [previous report][previous] |
| r | distinguished vector | square −2; r·f₁=1 | Pass; [previous report][previous] |
| parity | 0,f₁,r | 0,1,0 in F₂ | Pass nonzero map; [previous report][previous] |
| reyeCarrier | f₁,2f₁,r | absent,present,present; quotient index 2 | Pass; [previous report][previous] |
| betaSpan | ten β columns | coordinate determinant absolute value 2; each parity 0 | Pass; [previous report][previous] |
| simpleReflection | root, adjacent, perpendicular | −βᵢ,βⱼ+βᵢ,βⱼ | Pass; [previous report][previous] |
| adjacent | (0,4),(0,3),diagonal | true,false,false | Pass; duplicates graph data unnecessarily; [previous report][previous] |
| anonymous decidability instance | those three inputs | yes,no,no | Pass; [previous report][previous] |
| gram_det | actual ten-by-ten matrix | det=−1=RHS | Correct Check; R04; [previous report][previous] |
| beta_pairing | all 100 β-pairs | −2 diagonal,1 on 18 oriented edges,0 otherwise | Correct Check; R04; [previous report][previous] |
| r_square | r | −2=RHS | Correct Check; R04; [previous report][previous] |
| r_beta_pairing | ten indices | nine 0s followed by −2, exactly RHS | Correct Check; R04; [previous report][previous] |
| betaSpan_eq_reyeCarrier | parity and span | inclusion plus indices 2=2; f₁ belongs to neither | Pass coordinate API; R04; [previous report][previous] |
| parity_surjective | 0,f₁ | images 0,1 exhaust F₂ | Pass coordinate API; R04; [previous report][previous] |
| simpleReflection_involutive | all ten matrices | sᵢ²=I₁₀ in ten cases | Pass coordinate API; R04; [previous report][previous] |
| simpleReflection_isometry | all ten matrices | sᵢᵀGsᵢ=G in ten cases | Pass coordinate API; R04; [previous report][previous] |
| simpleReflection_preserves_parity | r·βᵢ and arbitrary x | parity change (βᵢ·x)(r·βᵢ)=0 mod2 since r·βᵢ=0 or−2 | Pass API; R04; [previous report][previous] |
| ReflectionTargets.t246Entries | diagonal,edge,nonedge | 1,3,2 | Pass; [previous report][previous] |
| t246 | all pairs | symmetric, diagonal1, off-diagonal≠1 | Pass; [previous report][previous] |
| realRoot | β₀,β₉ | integer coordinate vectors unchanged in R¹⁰ | Pass; [previous report][previous] |
| rootMap | single-root basis, zero | βᵢ,0; determinant absolute value 2 | Pass; [previous report][previous] |
| realIntersection | β₀ self and β₄ | −2,1 | Pass; [previous report][previous] |
| realReflection | self,neighbor,perpendicular | −βᵢ,βⱼ+βᵢ,βⱼ | Pass; [previous report][previous] |
| rootMap_bijective | complete coordinate matrix | determinant ±2≠0; inverse determinant ±1/2 | Pass real comparison, not integral basis; R04; [previous report][previous] |
| rootMap_form | self,edge,nonedge | 2=2·1; −1=2·(−1/2); 0=2·0 | Pass factor two; R04; [previous report][previous] |
| rootMap_reflection | basis roots | both maps give −βᵢ,βⱼ+βᵢ,βⱼ | Pass; R04; [previous report][previous] |
| SheafTargets.baseGlobal | identity Spec k | a↦a; 0↦0,1↦1 | Duplicate native map; R04; [previous report][previous] |
| scalarAut | a=1,−1,2 over Q | id,−id,2id; inverses id,−id,(1/2)id | Pass actual sheaf arrows; [previous report][previous] |
| sectionEvaluation | n=0; n=1 with section0,1 | zero,zero,identity; zero map not surjective onto nonzero O | Pass; [previous report][previous] |
| SquareTrivialization | O; O(1) on P¹ | O²=O; O(1)² has degree2≠0 | Pass nonempty/empty distinction; [previous report][previous] |
| RawFixedSurfaceArrow | (O,O); (O,O(1)) | arrows k×; no arrows by degree0≠1 | Pass; [previous report][previous] |
| class_square_eq_one | O,canonical K | 1²=1; [K]²=1 but [K]≠1 | Correct supporting API; R04; [previous report][previous] |
| scalar_naturality | θ=3,a=2; θ=0 | both composites6; both composites0 | Exactly pinned theorem; R04; [previous report][previous] |

## Not verifiable

- **Averbukh, Chapter X:** the previous source-service lookup of the 1964 Steklov volume/chapter found no legal text. This unchanged limitation and the existing key `averbukh` are carried forward in the missing-reference record. Neither the precise model equivalence nor the interpretation of 34780/136 is newly certified. The unchanged announcement verification remains evidence only for its numbers and referral.
- **Enriques Surfaces I typography:** the legal manuscript's extraction still has a defective font character map. The new minimalization theorem and remark are readable in prose at enriques-one lines 10108–10127, including the nonuniqueness example. Rendered-page verification was unavailable; the earlier classification-formula typography limitation remains.
- **Unchanged source-proof limitations:** the short announcement does not supply complete proofs of all normal-generation or geometric classification claims. Previously uncertified Griess/Barth–Peters texts were not re-requested. The previous report's distinction between announcement, prerequisite contract and future construction is retained.
- **Unchanged geometric endpoints and unavailable open heads:** the finite tests do not establish the future Reye open locus, presentation equivalence, global resolution or source-representation bijection. No ownership clearance is claimed for open heads whose files were not supplied. This incremental review does not reopen unchanged source proofs or reconstruct every supplier roadmap.

## Source issues

The first six entries are carried from [the previous report][previous], whose affected statements and corrections are unchanged. The last two were noticed while opening the newly cited Stacks ingredients. Neither affects the roadmap's smooth-surface, n=2 application. For the latter, P⁰ over a field has Picard group 0, so the unrestricted projective-space wording cannot hold at n=0.

- **Error** in martin at Caveat 1.6, printed p.3: the source says O⁺(10,F₂) preserves a nondegenerate symmetric bilinear form; it should be the split quadratic isometry group, smaller than the polar symplectic group; affects a stated result.
- **Error** in martin at proof of Proposition 5.2, printed p.16: the source says roots with δ·L≤d form a finite set; it should be 0<δ·L≤d when selecting effective roots; affects the proof.
- **Gap** in martin at proof of Corollary 5.5, printed p.19: the source says containment in a finite closed union makes the exceptional subset closed; it should bound its closure by that union, sufficient for the dimension estimate; affects the proof.
- **Error** in dolgachev at §6 before Theorem 7, printed p.25: the source says the full quadratic isometry group of R/2R is 2⁸⋊Sp₈(F₂); it should be the subgroup fixing the polar radical pointwise; affects a stated result.
- **Error** in peters-sterk at Lemma 5.2, printed p.1618: the source says restriction to L₊ is an isomorphism on the displayed group; it should restrict to the chosen positive-cone component and quotient by the deck involution; affects a stated result.
- **Misprint** in peters-sterk at proof of Lemma A.5(iii), printed p.1625: the source says the ten-node diagram is T236; it should be T246; affects the proof.
- **Misprint** in stacks-factorization at proof of Lemma 54.17.1, tag 0C5R, printed p.52 (line 2339): the source says the isomorphism open V contains all codimension-one points of V; it should say all codimension-one points of Y; affects the proof.
- **Error** in stacks-pic at Lemma 31.29.5, tag 0BXJ, printed pp.70–71 (lines 3204–3209): the source says Pic(Pⁿ_R)=ℤ for a UFD R without a positive-dimension restriction; it should assume n≥1, since Pic(P⁰_R)=0; affects a stated result.

[previous]: packages/EnriquesSurfaces/reports/PRREVIEW-EnriquesSurfaces~2.md
