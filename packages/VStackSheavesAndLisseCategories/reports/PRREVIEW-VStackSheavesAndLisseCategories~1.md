# Review of VStackSheavesAndLisseCategories (pull request #1230 at 0ca8db7)

**Verdict:** needs changes

## R01 (P1) — Resolve the curve and bundle suppliers against their actual sections

**Location:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:557`, also lines 18, 78, 450–464 and 1247; line 456 also cites RelativeFarguesFontaine §§5.1–5.6. The dependency includes “VectorBundlesAndIsocrystals VB2:classification/finite-etale-constant-algebras”.

**Claim:** The finite-étale, positive-presentation and relative-cohomology inputs are supplied at the named VB sections. None of those VB section identifiers occurs in the supplier at its available head. RelativeFarguesFontaine Layer 5 now has §§5.2–5.4, so the range §§5.1–5.6 also contains nonexistent sections. No gap is declared. Under the review's supplier-drift rule, an input attributed to a nonexistent section is blocking even when a replacement exists elsewhere in that supplier.

**Witness:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:1045` puts finite étale algebras in Layer 4, not VB2. `TauCetiRoadmap/RelativeFarguesFontaine/README.md:1901` begins the surviving Layer 5 targets, §§5.2–5.4; §§5.1, 5.5 and 5.6 are absent.

**Repair:** Repoint every VectorBundlesAndIsocrystals citation, including scope, contracts and Needs lines, to the actual layer and target title. In particular use Layer 4's finite-étale algebra target; Layer 3's positive twists/global generation; Layer 5's section/hypercohomology, small-slope resolutions and étale presentations; Layer 6's slope-dependent cohomology vanishing. For RelativeFarguesFontaine cite §§5.2–5.4 for the eigenvector/boundary/divisor-section inputs actually used, and VectorBundlesAndIsocrystals Layer 3 for global generation and projective embeddings. Preserve each target's general-local-field hypotheses. These replacements retain the intended tests: a finite étale E-algebra gives its constant curve algebra for both E=ℚ_p and E=𝔽_q((π)); H¹(O(1))=0, while the strictly-positive presentation does not accept O(−1). Do not reconstruct these supplier results here.

## R02 (P2) — Remove the comparison to a nonexistent second coefficient construction

**Location:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:1314`, with the table at 1320 and references at 31, 871 and 983. The target promises to “identify the shared coefficient constructions of VS2–VS4 and IgusaVarietiesAndTorsionConcentration IG.F.17”.

**Claim:** There is a second, named coefficient construction to compare, with the listed IG.F.17 interfaces. The available consumer instead imports this roadmap's constructions, and has neither that section nor those interface declarations. Thus the target lacks its second endpoint; it is not a comparison justified by the listed CS/FS results.

**Witness:** `TauCetiRoadmap/IgusaVarietiesAndTorsionConcentration/README.md:7` assigns the solid/lisse categories to VS0–VS5 and excludes constructing them again. Its supplier contract at line 96 imports these categories; §3.0f applies the supplied coefficient/Hecke interfaces.

**Repair:** Delete the obsolete IG.F.17 comparison target and name table. Describe the actual outgoing VS2–VS5 exports to the consumer's scope, supplier contract and §3.0f. Retain any necessary comparison with a genuinely distinct realization as a separately named target with two specified functors. On the point with Λ_disc=ℚ_ℓ the imported category is already D(ℚ_ℓ), and its infinite direct sum of units remains lisse and non-ULA; no second category or equivalence is required to preserve this test.

## R03 (P3) — Remove the 90 forbidden HTML anchors

**Location:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:99`, and the other target anchors through line 1496; for example `<a id="artin-v-stack-definition"></a>`.

**Claim:** The README passes the submission text rules. The supplied gate explicitly fails `residue=90`; all 90 reported residues are these anchors. This prevents acceptance even though the targeted build passes.

**Witness:** The worker's gate at this head reports `residue=90`, `depcheck=0`, `build=0`, and `FAIL`.

**Repair:** Replace target labels with ordinary Markdown headings and update internal links to their generated anchors. Remove all `<a id=` tags, retaining the mathematics and dependency destinations. A heading “Artin v-stacks” with a link to `#artin-v-stacks` preserves the first destination without the prohibited tag. Rerun the gate after the complete conversion.

## R04 (P3) — Put intended APIs and Checks into the required prose form

**Location:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:117–131`, repeated throughout the API tables and Checks. Examples are `ArtinVStack.ofAtlas`, `ArtinVStack.atlas` and `ArtinVStack.empty`.

**Claim:** Backticked names identify this roadmap's Lean declarations. These names are not declared in Suggested.lean; line 1532 explicitly treats most of them as intended interfaces. That exception conflicts with the required README/Lean agreement and with the rule that Checks have no named Lean counterparts.

**Witness:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/Suggested.lean:39–58` declares exactly one abbreviation and three theorems, all concerning SolidAb; none of the Artin names appears there.

**Repair:** Convert API tables to prose bullets giving hypotheses and conclusions. Remove speculative Lean names from target labels, API bullets and Checks; keep the four actual declaration names and genuine supplier/library names. For example the empty-stack Check still computes the empty atlas and representable diagonal after deleting its fictitious declaration label. Do not fill Suggested.lean with the missing API names: its three headline theorems should remain the acceptance test.

## R05 (P3) — Use the roadmap namespace and required module description

**Location:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/Suggested.lean:36`, closing line 61, module heading at line 4, and `README.md:1532`.

**Claim:** The acceptance-test declarations belong under `TauCeti.Blueprint.VStack`. The requested form requires `TauCetiRoadmap.VStackSheavesAndLisseCategories` and a module title ending in “target signatures”, with the README identified as the roadmap.

**Witness:** The actual elaborated name is `TauCeti.Blueprint.VStack.SolidAb.abelian`; the required prefix is absent from the file.

**Repair:** Rename the namespace and corresponding README reference; update the module description to the requested form. A scratch copy with the namespace/title correction and all four `#check @...` queries elaborates with only the three expected sorry warnings. The integer coefficient predicate and the derived-category binder remain unchanged.

## R06 (P3) — Cite the derived reflection theorem itself

**Location:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/Suggested.lean:53`: “CS Theorem 6.2”.

**Claim:** That locator is the theorem asserting unbounded derived reflection onto complexes with solid cohomology. The direct statement is CS Theorem 5.8(ii), printed p.36; Theorem 6.2 is the tensor result.

**Witness:** CS line 1252 identifies the derived essential image by solid cohomology, and CS lines 1254–1257 assert the left adjoint to its inclusion.

**Repair:** Cite CS Theorem 5.8(ii), p.36. The test complex ℤ[0]⊕ℤ[1] lies in that image and is fixed by the reflector, exactly as the Lean predicate requires; no mathematical signature change is needed. The corrected scratch file elaborates.

## Verified sound

Reviewed the entire 1534-line README and the 61-line Lean file, including all 93 named target blocks, their APIs, Checks, standing conventions and Needs lines. The 93 table rows below cover every named block, all 15 seeded targets and every headline. They are tests of the statements, not substitutes for proofs of the general results. No source passages, algorithms, sorry'd data or option overrides were found. The diff outside this roadmap folder is empty. No review edits were made to the worktree.

**Gate and elaboration.** The worker's complete gate has one failing rule, R03; the targeted build passes. Direct `lake env lean` elaboration also passes with exactly three sorry warnings. All four elaborated signatures were compared with the README: the coefficient ring is the lifted integers, the full-subcategory predicate is the native IsSolid predicate, and the derived statement retains HasDerivedCategory and quantifies over every integer homology degree. Zero lost binders were found. Separate one-tactic probes using simp, rfl and infer_instance did not close any of the three theorems; the abelian-instance exact probe also failed. The generic full-subcategory infrastructure supplies no solidity closure instances that would discharge them. No padding finding is supported.

**Dependency check output:**

```text
depcheck: 205 roadmaps, 1469 edges, 0 problem(s)
```

There are no UPWARD or CYCLE lines. No ownership move is proposed: the repairs repoint existing inputs and preserve the supply direction. The stale internal supplier locators in R01 are invisible to that coarse graph check. The Igusa comparison is described as outgoing, so it is not itself evidence of an upward dependency. No declared gap was found.

**Source sample.** All six cited works were obtained through the sources service from author-hosted or publisher-open copies. PQ was checked against the published 96-page edition, not the differently paginated preprint. No README locator is explicitly marked unverified. Printed pages, hypotheses and theorem numbers of the 15 seeded targets were checked as follows.

| Sampled target | Text inspected | Scope/hypothesis conclusion |
| --- | --- | --- |
| Artin v-stacks | FS IV.1.1–IV.1.6, pp.107–109; FS lines 4082–4144 | Representable diagonal, separated smooth surjective atlas; quasiseparated diagonal does not mean quasiseparated stack. |
| Partial compact-support functors | FS IV.5.2, pp.152–153; FS lines 5872–5912 | Spatial, partially proper, finite-dimensional X and spatial S; the two colimits are not an unrestricted shriek functor. |
| ULA locality and proper pushforward | FS IV.2.4–IV.2.14, pp.115–119; FS lines 4413–4558 | Proper finite-dimensional g; smooth-local LA needs the stated uniform base bound, whereas ULA is tested after base change. The later “Throughout” paragraph retains finite dim.trg for g. |
| Formal smoothness of v-stacks | FS IV.3.1, p.130; FS lines 5014–5055 | Zariski-closed affinoid-perfectoid tests and étale-local lifts, not arbitrary nilpotent scheme thickenings. |
| Hyperbolic base change, duality and ULA | FS IV.6.12–IV.6.14, p.163; FS lines 6291–6324 | Monodromy, proper finite-dimensional setup and inversion of the action under duality are retained; ULA is required for the ULA-preservation clause. |
| Fully faithful divisor descent | FS IV.7.1–IV.7.3, pp.164–165; FS lines 6332–6375 | Full faithfulness for torsion; essential-image conditions and the stronger perfect-local-system equivalence are distinguished. |
| Correct solidity for general discrete rings | CS VII, pp.45–48, lines 1665–1760; Mathlib/Condensed/Solid.lean:77–85 | Polynomial restriction is the pinned correction. General-ring solidity, underlying-integer solidity and analytic completeness are distinguished. |
| Analytic localization and formal complements | BCGP Remark 2.4.1 and Example 2.4.2, pp.30–31; BCGP lines 1401–1442 | Integer-solid analytic structure; complement uses a derived limit and the formal power-series ring at infinity. |
| Profinite evaluation and quasiseparated colimits | PQ A.1, A.5–A.7, pp.88–90; PQ lines 4094–4174 | Filtered evaluation; qcqs stages and qc monomorphisms; pointwise uniqueness requires quasiseparatedness. |
| Condensed affine points | PQ A.1 opening and A.8, pp.90–91; PQ lines 4175–4190 | Representable Hom preserves the sheaf limits. The roadmap corrects accessibility, simultaneous equations and arbitrary relations. |
| Solid partial compact support | FS VII.2.9, pp.256–257; FS lines 9930–9964 | The cited theorem is used for proper spatial finite-dimensional X. The partially proper chart extension is separately owned at line 1201. |
| Compact smooth duality and products | FS V.5.1 proof, V.6.2, V.7.2, pp.180–184; FS lines 6956–7100; VII.7.6, pp.274–275, lines 10645–10676 | Compact inputs for BZ and the product-Hom test; full-complex perfect invariants are not replaced by degreewise finite dimensions. |
| Sheaves and smooth representations | FS V.1.1–V.1.4, pp.168–171; FS lines 6483–6591 | Locally pro-p groups and prime-to-p torsion; forgetful pullback and continuous derived invariants. |
| Banach–Colmez torsor invariance | FS V.2.1, p.171, lines 6592–6620; VII.7.1 proof, pp.271–272, lines 10518–10547 | Strictly positive E or strictly negative E[1]; full faithfulness is not general essential surjectivity. Solid unit homology is restricted to the connected fibres used there. |
| Coefficient change for duality and admissibility | FS VII.3.1(ii), pp.257–258, lines 9970–10005; VII.7.4, .6, .9, pp.273–276, lines 10606–10694; IX.2.2, pp.322–323, lines 12496–12517 | Derived scalar change and preservation. IX.2.2 is an outgoing Hecke application, not a supplier for the construction. |

Additional source checks: SW Theorem 13.5.7, printed p.114, SW lines 4496–4510, and Lemma 16.3.2, printed p.144, SW lines 5582–5595, are over ℚ_p. The README explicitly separates its general-E supplier input; R01 fixes its locator rather than narrowing E. AG Definition 6.12 and Proposition 6.14, pp.39–40, supply the kernel formulation of the analytic axiom; CS 5.8(i)–(ii), pp.35–36, supplies the three Lean headlines.

**Pinned declarations and ownership.** The pins checked are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following concrete definitions/declarations were opened or resolved at those pins; file paths are relative to the corresponding library repository.

| Pinned file and line | Evidence and limit |
| --- | --- |
| Mathlib/Condensed/Basic.lean:44, 51; Condensed/Module.lean:40, 61 | Condensed and CondensedMod are sheaf carriers; CondensedAb uses ULift ℤ. These definitions do not assert solid reflection. |
| Mathlib/Condensed/Solid.lean:44, 48, 69, 83 | profiniteFree, profiniteSolid, profiniteSolidification, IsSolid. The last tests inversion of the specified maps; it does not bundle an abelian-category instance or a reflector. |
| Mathlib/Topology/Category/Profinite/Nobeling/Induction.lean:153 | LocallyConstant.freeOfProfinite is already supplied. No duplicate Nöbeling target is needed. |
| Mathlib/Condensed/Functors.lean:56; Condensed/TopCatAdjunction.lean:207 | profiniteToCondensed and fullyFaithfulCompactlyGeneratedToCondensedSet supply the realization. The latter retains compact generation. |
| Mathlib/Condensed/EffectiveEpi.lean:34 | IsRegularEpiCategory CondensedSet supplies the effective-epimorphism route already cited in scope. |
| Mathlib/CategoryTheory/ObjectProperty/FullSubcategory.lean:39, 59, 92 | Object/property fields, inclusion and fullyFaithfulι. Arbitrary predicates do not thereby acquire abelianness. |
| Mathlib/Algebra/Category/ModuleCat/ChangeOfRings.lean:85, 237, 290; CategoryTheory/Sites/Whiskering.lean:51 | restrictScalars, restrictScalarsId, restrictScalarsComp and sheafCompose supply coefficient restriction. |
| TauCeti/RingTheory/Huber/Pair.lean:138; AlgebraicGeometry/AdicSpace/Spa/Basic.lean:101 | Huber.Pair bundles integral elements over an IsHuberRing. ValuationSpectrum.spa accepts an arbitrary topological commutative ring and subring, imposing continuous/sub-unit valuations but no Huber-ring axiom; it is not a geometric v-stack carrier. |
| TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean:272, 618 | IsSmoothDiscrete requires discrete module topology and open stabilizers; SmoothDiscreteTopRep is its full subcategory. Neither definition supplies the enhanced Bun_G coefficient formalism. |

Object searches covered the pinned libraries, main roadmaps, board packages and supplied open-roadmap material, using the roadmap grep/show tools as well as local object searches. The concrete existing owners are condensed carriers/Nöbeling/effective epis in Mathlib, smooth representation carriers in Tau Ceti, enhancement in EnhancedDerivedSheaves, and the geometric inputs in the cited diamond/curve roadmaps. No second integer-solid reflection implementation or conflicting declaration of these three theorem names was found. AnalyticStacks explicitly leaves the cutoff-condensed analytic measures and integer-solid spectra here (`TauCetiRoadmap/AnalyticStacks/README.md:10–12`); SolidAnalyticRings treats light/spectral structures and imports this integer theory in §7.4 (`README.md:789–793`). Thus those two open roadmaps do not justify deleting VS2.1–VS2.2 as duplicate ownership.

Supplier citations were resolved against the available main/head texts. Besides R01, the relevant section destinations exist: DiamondsAndVStacks D4–D6; DiamondEtaleCohomology C6; DiamondSixOperations S0–S5; RelativeFarguesFontaine §§2.1–2.4, 3.1–3.4, 4.3–4.7; PerfectoidSpaces P3.17a/b; PadicHodgeTheory §5.5; ReductiveGroupsPartII RG2.1.1/.5; SmoothRepresentationsOfLocalGroups SR.0.2, SR.0d and SR.2.1; AdicCoefficientsAndComparisons L0; ClassicalAdicEtaleCohomology §§4.3–4.4, 5.6, 8.2, 10.3–10.4, 11.1; ClassFieldTheory Layer 9; StableHomotopyKTheory §§5.1–5.18. RelativeFarguesFontaine §§5.1–5.6 is the additional stale range included in R01; its §§6.1–6.9 and 7.0 resolve. ReductiveGroups on main has Layer 1 reconstruction at line 211 and Layer 7 structure theory at line 627. Main-file checks additionally resolved EnhancedDerivedSheaves E1.3/.4 at lines 549/580, E3.2–E3.4 at 1153/1203/1229, E5:presentability.1/.2 at 1597/1624, E2.6 at 2293, E4.4/.5 at 2703/2739; AdicSpacesPartII R0 differentials and smoothness at 5617/5987; EtaleCohomologyFoundations F.5/F.6 at 1179/1200. BunGAndNewtonStrata is a consumer of the four bundle-geometry outputs, not a supplier to them. The current Igusa interface is R02.

**Headline inventory.** VS0: smooth descent and partial-support vanishing. VS1: ULA/kernel adjoints, Jacobian smoothness, Braden and divisor/Drinfeld descent. VS2: solid abelianness, ordinary and derived reflection, closed tensor, analytic completeness, solid sheaves/homology. VS3: completed ULA duality, constructible embedding and lisse comparisons. VS4: Newton-stratum equivalences, chart extension and compact generation. VS5: torsion/lisse BZ duality, Verdier exchange/reflexivity, Künneth, ULA/perfect invariants and scalar change. The three currently statable solid-category headlines are present. Suggested.lean's docstring identifies the unavailable geometric/enhanced/analytic carriers for the remaining families; no weaker substitute is inserted. The native ordinary DerivedCategory alone does not supply the missing derived condensed internal Hom or analytic measures.

**Computed adversarial table.** Here F is a prime-to-p coefficient field, shifts use cohomological notation, P=F[0]⊕F[1], and V=⊕_ℕ F. “Pass” means the displayed instance agrees; it is not certification by testing of all inputs. All instances stay within the relevant cutoff; objects beyond it must be handled by the stated enlargement comparisons. Zero rings, empty spaces and the trivial group are included, but they do not replace the nonzero tests. Identity operations on a zero category are distinguished from constant-zero operations by the unit tests below.

| Statement (README line) | Instances tried | Computed values on the two sides / distinguishing value | Result and change |
| --- | --- | --- | --- |
| Artin v-stacks (101) | Empty diamond; BH for H=E× | Empty atlas/diagonal give true/true; diagonal fibre E× is not qc, so stack-quasiseparatedness is false while Artin is true. | Pass; rejects adding stack quasiseparatedness. |
| Artin stability (109) | Identity maps; empty fibre factor | X×_X X=X on both presentations; ∅×_Z Y=∅ on both. | Pass; atlas arrows must be over the common base. |
| Smooth descent (138) | Identity atlas; finite S₃ atlas, F=𝔽₅ | Identity descent gives D(F); S₃ descent gives six action operators with group relations, not just a vector space. Empty descent gives zero category. | Pass. |
| Exceptional pullback (146) | Identity; smooth oriented dimension 1 | id!F=F=ω_id⊗F; f!F=F(1)[2], while the opposite shift F[−2] has its nonzero cohomology in degree 2 instead of −2. | Pass. |
| Point classifying map (154) | H=1, π^ℤ⊂E×, ℤ_p | First two fibres are discrete and dualizing sheaf is F; infinite compact ℤ_p gives distributions, not an invertible rank-one sheaf. | Pass; discrete exception is necessary. |
| Partial support (191) | Empty X; proper section contained in one annular band; a=1,b=3 | Empty gives (0,0); supported section gives (Λ,Λ) by βi=id. With norm(u)=1/2, norm(t)=1/4 lies between 1/8 and 1/2; reversed bounds admit no such point. | Pass; distinguishes zero functor and reversed convention. |
| Partial vanishing (199) | A=0; nonzero exterior pullback in IV.5 | Both ends give 0; the exterior-pullback theorem gives (0,0), whereas the proper-band supported sheaf above gives (Λ,Λ). | Pass; no claim for all sheaves. |
| LA/ULA definition (241) | Point, P and V; dual-number coefficients R=F[ε]/ε² with module F | P has bounded finite ranks (1,1), so both tests hold; V has infinite rank and fails the perfect-image test. Tor_i^R(F,F)=F for all i≥0, so F is not perfect over R. | Pass; finite cohomology alone cannot replace Tor amplitude. |
| ULA locality/proper pushforward (249) | Identity; proper two-point map | P stays P; pushforward of the two unit stalks is F², perfect on both sides. For V the image has infinite dimension and neither side is ULA. | Pass within the stated proper/uniform-bound hypotheses. |
| Perfect local systems (257) | P; V; zero ring | P dual is F[0]⊕F[−1] and bidual is P; V is not perfect. Over the zero ring the only complex and its dual are 0. | Pass. |
| Perfect Hom and LA (265) | Point, A=F[1], B=F² | A∨⊗B=F²[−1]=RHom(A,B); scalar extension gives the same two shifted copies. | Pass; degree reversal retained. |
| Torsion kernel category (273) | Finite two-point space over a point | Identity is the 2×2 matrix diag(F,F); its convolution with a matrix M has entries M_ij. Convolution through ∅ has every entry 0. | Pass; zero kernel is not identity. |
| ULA/kernel adjoint (281) | Point, F² and V | F²∨⊗F² and End(F²) both have dimension 4. V∨⊗V maps to finite-rank endomorphisms; id_V in End(V) has infinite rank. | Pass in both directions on these cases. |
| ULA calculus (289) | Proper two-point projection with unit kernel | Right adjoint is the transposed unit kernel; resulting scalar pairing is F⊕F on both sides. Zero summands give 0 on both sides. | Pass; no nonproper extrapolation. |
| Scheme ULA extension (335) | Identity of a geometric field point, P; R=F[ε]/ε²-module F | P has stalk P after every field base change. The latter module has Tor_i=F in all degrees, outside the finite-Tor hypothesis. | Pass; supplier's narrower range is explicitly extended here. |
| Artin ULA (352) | Trivial group and identity atlas | Atlas pullback of P=P and of V=V; ULA true/false respectively. Repeating the atlas does not alter either value. | Pass. |
| Smooth ULA criterion (360) | Identity point, F² versus V | Comparison is a 4-dimensional isomorphism for F²; for V its image has finite rank and misses id_V. | Pass; rejects automatic ULA for all lisse objects. |
| Spd O_E smoothness (368) | Ramified mixed-characteristic E; E=𝔽_q((π)) | Special fibre is Spd 𝔽_q; generic fibre is Spd E in both cases. Inverting π erases the special fibre, giving ∅ instead. | Pass for the carrier distinction; smoothness is sourced, not inferred from this test. |
| ULA analytification (376) | Geometric point, P; dual-number coefficient module F | Algebraic and analytic stalks both equal P. F has infinite Tor amplitude in both, so the compact-image criterion does not apply. | Pass. |
| Sousperfectoid geometry (408) | Perfectoid-base polydiscs in ranks 0 and 1 | Rank 0 is the base with tangent 0; rank 1 has tangent O and relative dimension 1. The constant-zero tangent model gives wrong rank 1. | Pass. |
| Formal smoothness (428) | Identity; closed origin i:{0}→a characteristic-p perfectoid ball | Identity lift is the original map. For i, testing the ball with its closed origin would require an étale neighborhood of 0 with image contained in {0}; that image cannot be open. Empty closed test instead permits S′=∅. | Pass; distinguishes a neighborhood from a surjective cover. |
| Formal-smooth calculus (436) | Identity composition/base change; closed-origin counterexample | Composite/base change of id is id and lifts unchanged. Closed origin has image {0}, which is not open in the ball, and fails the lifting test above. | Pass; universal openness excludes it. |
| Formally smooth BC examples (444) | Positive O(1), zero bundle, negative O(−1) | Positive bundle has H¹=0; zero bundle gives one zero section and obstruction 0. O(−1) has H⁰=0 and nonzero H¹ (C/ℚ_p in the absolute ℚ_p case). | Pass; negative case does not meet positive hypotheses. |
| Sections/positive tangent (452) | Linear section spaces for 0, O(1), O | Tangent equals the chosen bundle. Slope list is empty, {1}, {0}; the strictly-positive test is true, true, false. | Pass; R01 repairs input location. |
| Jacobian criterion (460) | Zero tangent; tangent O(1); tangent O | Expected dimensions 0 and deg O(1)=1; slope-zero O fails the positive-locus condition. | Pass on ranks/slopes; R01. |
| Hyperbolic localization (499) | P¹ with t·[x:y]=[tx:y] | Fixed locus {0,∞}; plus-attractors A¹ at 0 and point at ∞. Inverting t interchanges the two attractors. | Pass; action direction matters. |
| Braden theorem (507) | Same P¹ and constant Λ | At 0 both functors give Λ(−1)[−2]; at ∞ both give Λ. The two stalks are not interchangeable. | Pass. |
| Hyperbolic compatibilities (515) | Same P¹; dual complex and inverse action | D_P¹Λ=Λ(1)[2]. Inverse-action localization gives Λ(1)[2] at 0 and Λ at ∞, the duals of the preceding outputs. Keeping the original action gives them in the wrong order. | Pass; inversion and twist are necessary. |
| Divisor/Weil map (545) | Arithmetic degree-one element τ; inertia | On k the correction is Frob⁻¹, hence Frob·Frob⁻¹=id; for inertia degree=0 and correction=id. The inverse degree-one element has degree −1 and correction Frob. | Pass on the degree law; no replacement of W_E by a discrete group. |
| Finite étale divisor descent (553) | Constant étale algebra E×E, mixed/equal characteristic E | Two factors give a two-sheeted cover; H⁰ of the constant curve algebra is E² and extension back is O_X². | Pass; R01 repairs the general-E supplier. |
| Fully faithful divisor descent (561) | Empty stack; pulled-back unit | Empty Hom is 0 on both sides; degree-zero endomorphisms of the constant unit are Λ on both sides. Essential surjectivity is conditional, not deduced from this equality. | Pass. |
| Drinfeld perfect descent (569) | Leg sets of sizes 0,1,2; unit local systems | Empty product is the base, giving the identity functor; one leg gives one Weil action; two legs give commuting actions and Hom(Λ,Λ)=Λ. | Pass; not an unrestricted infinite-product assertion. |
| Compact condensed cohomology (609) | Finite two-point S; circle with discrete ℤ | Finite S gives H⁰=ℤ² and Hⁱ=0 for i>0. Circle gives H⁰=ℤ, H¹=ℤ, higher groups 0, on both comparison sides. | Pass; higher cohomology need not vanish for all compact spaces. |
| Finite-power stable homology (617) | A=0; augmentation for A=ℤ | Reduced positive homology of 0 is 0; degree-zero augmentation sends [m] to m and [1]+[1]−[2] to 0. | Pass on reduction/augmentation, not a computation of the full resolution. |
| Breen–Deligne resolution (629) | A=0 and A=ℤ | Unaugmented resolution H₀ is 0 and ℤ respectively; adjoining the augmentation makes both complexes acyclic. The relation [1]+[1]−[2] is killed, while [1] maps to 1. | Pass; rules out zero augmentation. |
| Reals and tori Hom (637) | T=ℝ/ℤ, T² and zero torus | RHom(T,ℤ)=ℤ[−1], RHom(T²,ℤ)=ℤ²[−1], and rank 0 gives 0; RHom(T,ℝ)=0. | Pass; integer dual lies in Ext¹. |
| Profinite free solidity (645) | Finite S with 0,1,2 points | Hom(C(S,ℤ),ℤ)=0, ℤ, ℤ² respectively, matching the free-solid object. | Pass; Nöbeling theorem is imported. |
| Solid abelian category (653; Lean abelian) | Multiplication by 2 on ℤ; map 0→ℤ | Kernel/cokernel are (0,ℤ/2) and (0,ℤ), all solid; ambient and full-subcategory values agree. | Pass; source 5.8(i), not a generic full-subcategory instance. |
| Ordinary/derived reflection (661; both Lean adjoint headlines) | ℤ²; ℤ[0]⊕ℤ[1] | Reflection fixes ℤ² and Hom(ℤ²,ℤ)=ℤ². Derived reflection fixes the complex with H⁰=ℤ,H⁻¹=ℤ and all other Hⁱ=0. | Pass; R06 fixes derived locator. |
| Solid tensor/Hom (669) | ℤ²,ℤ³; distinct p,ℓ | Tensor rank 2·3=6 and Hom rank 6; ℤ_p⊗solidℤ_ℓ=0 for p≠ℓ, not the ordinary uncompleted coefficient prescription. | Pass. |
| Analytic measures (713) | Finite sets; topological E with infinitely many coordinates | M[∅]=0, M[*]=E, M[{1,2}]=E². Sequence (p⁻ⁿ) has unbounded denominators, so is absent from (∏O_E)[1/p] but present in ∏E. | Pass; measure data matters. |
| Analytic spectra (725) | A=0; localization at 1 and 0 | Zero ring gives empty spectrum/zero category. At 1 closed part is whole and complement empty; at 0 closed part empty and complement whole. | Pass. |
| General-ring solidity (740) | R=ℤ[X], identity test; R=0 | Identity polynomial restriction recovers the native test; over zero ring only module 0 occurs and every test holds. Omitting the identity map would lose the polynomial test itself. | Pass against pinned correction; no arbitrary-ring naive identification. |
| Nonarchimedean coefficients (748) | E=ℚ_p; convergent sequence pⁿ→0 | Topological realization admits this non-eventually-constant section; discrete realization does not. Finite free complete object on two points is E² in both, so the infinite test is needed. | Pass. |
| Z-solid analytification (756) | Spec ℤ; Spec 0; identity affine cover | Coefficient categories are D(SolidAb), zero, and the same category after identity gluing, respectively. | Pass; does not identify topological and discrete E. |
| Formal complements (764) | f=1, f=0; local parameter z=T⁻¹ | Rlim_id M=M so only M=0 is complete at 1; Rlim_zero M=0 so all are complete at 0. Formal series at infinity are E[[z]], not E[T]. | Pass. |
| QC/QS condensed sets (808) | Finite set; infinite discrete ℕ | Finite set is qc and qs; ℕ is qs but not qc since every map from a compact profinite space has finite image. | Pass; qc and qs are distinct. |
| Profinite evaluation/QS colimits (816) | Increasing finite sets {0,…,n−1}; profinite S | Both evaluation sides are locally constant maps S→ℕ with finite image. At S=* both are ℕ; the colimit is qs and not qc. | Pass; supplies the finite-stage factorization. |
| Affine condensed points (824) | B=R[x]; B=R[x,y]/(x,y), A=𝔽₂; constant two-element functor | Affine line has 2 points; simultaneous zero set in A² has 1 of 4 points, with equations valued in A². Constant-two functor evaluates at ∅ to 2, whereas a sheaf must give 1. | Pass; excludes mere accessibility. |
| Closed affine points QC (832) | Same two equations; zero/unit ideal | Two-equation fibre is one point; zero ideal gives all four points; unit ideal gives ∅. All three inclusions are qc. | Pass; arbitrary relations use compact intersections, not a finite presentation assumption. |
| Solid sheaves (875) | Finite two-point diamond; empty diamond | Free completed unit has two copies of Λ; empty generator is 0. The zero sheaf has zero values on both. | Pass; nonzero generator excludes trivial category model. |
| Solid structure/completion (883) | ℤ_ℓ and ℚ_ℓ | Rlim_n ℤ/ℓⁿ=ℤ_ℓ; every derived ℓ-power reduction of ℚ_ℓ is 0, so its completion is 0 although ℚ_ℓ≠0. | Pass; detection limited to complete objects. |
| Solid operations (891) | Identity and two-point projection | Identity pullback/tensor preserves Λ; pushforward of (Λ,Λ) is Λ², with diagonal pullback of Λ. | Pass; retains actual adjunction direction. |
| Solid homology (899) | Two-point projection; A=(Λ,Λ), B=Λ | f♯A=Λ² and Hom(Λ²,Λ)=Λ²=Hom(A,f*Λ). Empty-domain homology is 0. | Pass. |
| Torsion embeddings (947) | Finite discrete diamond; Λ=𝔽_ℓ | Naive and solidified unit are 𝔽_ℓ; Hom(unit,unit)=𝔽_ℓ on both. For a two-point cover both give 𝔽_ℓ². | Pass in bounded-cohomological-dimension example; no unrestricted equality claimed. |
| Geometric field invariance (959) | Identity extension; algebraically closed field extension and unit | End(unit)=Λ before/after; identity comparison is id_Λ. A nonsurjective valuation-spectrum map does not meet case (iii). | Pass within the specified three cases. |
| Proper smooth duality (967) | Identity; finite étale two-sheeted map | ω=Λ and f♯(Λ,Λ)=Λ²=Rf_*(Λ,Λ). For identity all three functors are id. | Pass; no dropping either properness or smoothness. |
| Solid kernels (993) | Point and two-point set | Point composition is tensor with unit Λ; two-point identity matrix convolution returns each M_ij, while passage through ∅ gives 0. | Pass. |
| Completed ULA duality (1007) | Point, A=ℤ_ℓ[1], B=𝔽_ℓ | D(A)=ℤ_ℓ[−1], D(A)∨=ℤ_ℓ[1]; both sides of the torsion homology formula equal 𝔽_ℓ[1]. | Pass; omitting either dual changes the degree. |
| Constructible embedding (1015) | Geometric point; Λ=ℤ_ℓ, A=ℤ_ℓ[1] | Verdier dual then solid dual returns ℤ_ℓ[1]. For R=𝔽_ℓ[ε]/ε², F has infinite Tor amplitude, excluding the analogous compact-image assertion. | Pass; finite-Tor restriction matters. |
| Lisse category (1027) | Point, P and V over ℚ_ℓ | Both lie in D(ℚ_ℓ); P is perfect and V has infinite dimension. Thus lisse membership is true for both, perfect membership only for P. | Pass; category cannot be replaced by perfect objects. |
| Lisse operations (1035) | Identity on a geometric point | Lisse projection of P is P and of V is V; ordinary pullback and lisse pullback are id on both. | Pass; excludes perfect-only projector. |
| Lisse comparisons (1073) | Geometric point, ℚ_ℓ and 𝔽_ℓ | Point categories are D(ℚ_ℓ) and D(𝔽_ℓ); infinite sums survive in each. Empty geometric category is zero. | Pass; torsion equality tested where atlas bound holds. |
| Lisse scalar extension (1081) | ℤ_ℓ→ℚ_ℓ; ℤ_ℓ→𝔽_ℓ | Unit goes to ℚ_ℓ or 𝔽_ℓ. ℚ_ℓ⊗ᴸℤ_ℓ ℤ/ℓⁿ=0 for every n, while original object is nonzero. | Pass; excludes rational reduction detection. |
| Point decomposition (1093) | X=Z=Spa C | Complement category is 0 and closed piece D(Λ_disc); localization is 0→A→A. Neighborhood cohomology is 𝔽_ℓ in degree 0. | Pass in the actual acyclic-neighborhood setup. |
| Bundle stack (1115) | G=1 and G=G_m | Trivial group has one bundle with trivial automorphisms; G_m gives line bundles O(d), d∈ℤ, and automorphisms E×. | Pass; rank-one stack is not a discrete set of degrees. |
| Newton geometry (1125) | G_m, b=π^m for m=−1,0,1 | Isocrystal slopes/κ are −1,0,1; associated line-bundle degrees are 1,0,−1. | Pass; signs agree with bundle supplier conventions. |
| Full automorphisms (1134) | GL₂ bundle O(1)⊕O | Positive off-diagonal is H⁰(O(1))=BC(O(1)); opposite H⁰(O(−1))=0; diagonal reductive group is E××E×. | Pass; component group alone is wrong geometrically. |
| Filtered charts (1142) | Same GL₂ bundle; basic bundle | Nonbasic extension direction H¹(O(−1)) is nonzero; positive obstruction H¹(O(1))=0. Basic framed chart has no such extension direction. | Pass; chart uses opposite sign from automorphism kernel. |
| Solid Drinfeld (1160) | Empty leg set; unit with one leg | Empty product gives identity functor; unit endomorphisms are Λ before and after one-leg pullback. | Pass; essential-image condition retained. |
| Solid partial support (1168) | Empty X; finite-band proper section | Both end values are 0 in empty case and Λ for i_*Λ in finite-band case by βi=id. | Pass; not the zero functor. |
| Solid partial vanishing (1176) | Zero and pulled-back torsion coefficients | Both functors give 0 in these cases; finite-band supported i_*Λ instead gives Λ. | Pass; support restriction matters. |
| Contracting-chart support (1201) | Basic b; GL₂ chart negative direction | Basic puncture is ∅, so both values 0. For bounded-below torsion pullback on BC(O(−1)[1]) minus origin, reduction to IV.5 again gives (0,0). | Pass in tested branches; general solid limit argument remains a construction target. |
| Compact smooth duality/products (1218) | H=1, P; S₃ over 𝔽₅; infinite complex | P∨=F[0]⊕F[−1] and P∨∨=P. Inversion sends a 3-cycle to its inverse, not itself. One F in every nonnegative degree has unbounded amplitude, hence is not perfect. | Pass; excludes degreewise-finite replacement and wrong action. |
| Sheaves/smooth reps (1233) | H=S₃,F=𝔽₅; C₃,F=𝔽₂ | Regular representations have dimensions 6 and 3, but invariant spaces have dimension 1 in both; higher invariants vanish by averaging since 6 and 3 are units. | Pass; forgetful functor is not invariants. |
| BC torsor invariance (1241) | Identity torsor; positive connected fibre; slope-zero étale group | Identity/unit fibre Hom is Λ→Λ. Positive connected-kernel unit homology is Λ; a nontrivial finite étale fibre has H⁰=Λ^n, not Λ. | Pass; cannot omit strict slope signs; R01 locator. |
| Newton-stratum coefficients (1249) | Basic G=1; nonbasic GL₂ above | Trivial stratum category is D(Λ). Nonbasic connected kernel contributes unit Λ to homology, leaving smooth E××E× representations while geometry retains BC(O(1)). | Pass. |
| Strict chart locality (1261) | Basic chart; nonbasic constant coefficient | Basic framed chart is a point with RΓ=Λ; contracting-chart theorem gives Λ again, with Hⁱ=0 for i>0. | Pass; source support/completion setup retained. |
| Lisse stratum extension (1269) | Identity/basic chart; zero representation | L_bΛ=Λ in the identity case and Hom(L_bΛ,Λ)=Λ; L_b0=0. | Pass; adjunction is to restriction. |
| HN localization (1298) | One stratum; G_m with finite/infinite degree support | One stratum gives D_sm(E×,Λ). Support {0,1} has size 2; support ℕ is infinite, so cannot be one finite decomposition. | Pass; arbitrary opens use exhaustion. |
| Compact generation (1306) | G=1; G_m units in degrees {0,1} or ℕ | P is compact, V is not. Finite stratum support has cardinality 2; infinite family has infinitely many nonzero restrictions and fails compactness. | Pass; no infinite-product compactness claim. |
| Shared comparison (1314) | Point with Λ_disc=ℚ_ℓ | This roadmap gives D(ℚ_ℓ); current Igusa input is that same imported category, not an independently defined IG.F.17 category. The named second endpoint has no value. | R02; replace obsolete comparison by actual exports. |
| Torsion homology/normalization (1356) | G=1; Haar trivialization scaled by unit u | Homology of Λ is Λ on both sides; scaling trivialization multiplies its coordinate by u, while the underlying adjunction map remains the same morphism. | Pass; avoids claiming choice-independent coordinates. |
| Torsion BZ (1364) | G=1, P and shift F[1] | BZ(P)=F⊕F[−1], bidual=P; BZ(F[1])=F[−1]. Euler characteristic of P is 0 and of F[1] is −1. | Pass. |
| Torsion Verdier exchange/reflexivity (1372) | Identity/empty open immersion; finite P | Identity exchange has both sides P∨; empty exchange gives 0. Bidual of finite P is P with ranks 1 in degrees 0,−1. | Pass; reflexivity is not asserted from compactness-free finiteness guesses. |
| Torsion Künneth (1409) | G₁=G₂=1; F²,F³ | Exterior product rank 6; End tensor has dimensions 4·9=36=End(F⁶). Zero factor gives 0. | Pass. |
| Torsion ULA/perfect invariants (1417) | G=1, P,V; S₃ regular representation over 𝔽₅ | Trivial-group invariants are P or V, perfect true/false. Finite S₃ regular invariants are F with higher groups 0. | Pass. |
| Lisse BZ (1429) | G=1 over ℚ_ℓ, P | Dual degrees 0,1 versus original 0,−1; bidual restores P. Infinite sum V is outside the compact-input theorem. | Pass. |
| Lisse Verdier exchange (1437) | Identity/empty opens; rational unit | Identity sides are ℚ_ℓ; empty sides 0. Rational unit is not killed by the lisse projector. | Pass. |
| Lisse Künneth (1445) | Trivial groups; rational finite free ranks 2,3 | Product rank 6 and product-Hom dimension 36, as in torsion; tensor unit is ℚ_ℓ, not zero. | Pass; D_lis, not D_et with discrete torsion coefficients. |
| Lisse ULA definition (1453) | Point, finite F² and infinite V | Comparison has dimension 4 on each side for F². For V its image consists of finite-rank maps and misses id_V. | Pass; distinguishes lisse from ULA. |
| Lisse ULA/perfect invariants (1461) | Trivial compact group; P,V and unbounded finite-per-degree complex | Invariants equal the original complexes. P is bounded finite, V has infinite rank, last complex has infinite amplitude: true,false,false. | Pass. |
| Coefficient change (1498) | ℤ_ℓ→𝔽_ℓ; Q=[ℤ_ℓ --ℓ→ ℤ_ℓ] in degrees 0,1 | Q⊗ᴸ𝔽_ℓ=[𝔽_ℓ --0→ 𝔽_ℓ], so H⁰=H¹=𝔽_ℓ; dual has degrees −1,0 on both scalar-change routes. | Pass; ordinary tensor of H¹ alone would miss H⁰. |

The shape findings R03–R05 affect those same blocks, not additional mathematical claims. The namespace repair changes all four elaborated prefixes and zero mathematical types. The locator repair selects CS 5.8(ii) with the same reflection values. No boundary-case theorem was added to Suggested.lean for these calculations.

## Not verifiable

- No cited text was inaccessible: FS, CS, SW, BCGP, PQ and AG were all legally readable. No missing-reference request or source manifest edit was made.
- The geometric headline signatures cannot be elaborated at these pins: the required small-v-stack, relative-curve, Bun_G and enhanced solid/lisse carriers are missing. This limitation is stated in the module docstring and is not a reason to add stand-ins.
- The tests of VS4's partially proper solid chart extension do not constitute its general proof. Its uniform cohomological bound and derived inverse-limit argument are explicitly owned construction targets. The proper theorem VII.2.9 alone would not establish them; the report does not certify that generalization merely by citing it.

## Source issues

- **Misprint** in FS at Proposition IV.1.8 proof, printed p.109 (FS line 4153): the source says the fibre-product atlas uses U₁ over X₂ although the stack diagram has base X₁; it should be U₂×_(X₁)U₃, using representability of the diagonal of X₁; affects the proof.
- **Error** in FS at Remark IV.1.10, printed p.110 (FS line 4199): the source says the point map of the locally profinite classifying stack fails cohomological smoothness except for finite groups; it should be allowed also for infinite discrete groups, while infinite compact open subgroups obstruct smoothness; affects a stated result.
- **Misprint** in FS at IV.5 annular construction, printed p.153 (FS lines 5885–5889): the source says the band inequalities interchange the roles of the two pseudouniformizers between definitions; it should be one consistent convention, such as |u|^b≤|t|≤|u|^a throughout; affects nothing.
- **Misprint** in FS at Proposition VII.7.10, printed p.276 (FS line 10699): the source says the lisse exterior-product equivalence has an étale target category; it should be the lisse target category, including rational relative-discrete coefficients; affects a stated result.
- **Gap** in PQ at Lemma A.5 proof, printed p.90 (PQ lines 4148–4154): the source says an arbitrary profinite test map already enters a fibre-product diagram over a fixed stage; it should be factored through a common finite stage using Lemma A.1 before that diagram; affects the proof.
- **Error** in PQ at Appendix A.1 opening, printed p.90 (PQ lines 4176–4178): the source says composing any accessible ring functor with a condensed ring produces a condensed set; it should be restricted to functors preserving the required sheaf limits, such as representable affine functors; affects a stated result.
- **Misprint** in PQ at Lemma A.8 proof, printed p.91 (PQ lines 4184–4189): the source says r simultaneous polynomial equations define a map Aⁿ→A; it should be Aⁿ→Aʳ, with zero fibre in Aʳ; affects the proof.
- **Gap** in PQ at Lemma A.8 proof, printed p.91 (PQ line 4184): the source says an arbitrary closed immersion into finite-dimensional affine space has finitely many defining equations; it should be treated by arbitrary intersections of closed subsets of profinite test objects when the ideal is not finitely generated; affects the proof.
