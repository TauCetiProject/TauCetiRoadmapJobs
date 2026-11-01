# Review of SchemeAndStackFoundations (pull request #1276 at 828d0b6)

**Verdict:** needs changes

## R01 (P2) — Define the signed relative intersection pairing before using the length formula

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:7110`–`:7121`: “for divisors `C`, `D` with `C ∩ D` finite” and “bilinear and symmetric on divisors”.

**Claim:** The displayed sum of lengths defines the signed pairing, including its agreement with the surface pairing and its extension to vertical self-intersections.

**Witness:** On `ℙ²_k`, take `C=−L`, `D=L'` for distinct lines. Bilinearity gives `−1`; the local equation `1/x` is outside the local ring, so the displayed length quotient is undefined.

Replacing the negative divisor by its support instead gives length `1`, the wrong answer. This is also inconsistent with the inverse-line-bundle Check at README `:7135`. Vertical self-intersections require a separate definition: a component cannot in general be moved within the fibre to a disjoint effective representative. The Chow/Gysin API of §5 explicitly works over a field and does not by itself supply this arithmetic construction.

**Repair:** State the local length formula first for effective Cartier divisors meeting properly. Extend it with signed multiplicities to divisors without common components. For a proper vertical integral component `E`, define intersection with an arbitrary Cartier divisor `D` by the residue-weighted degree of `O(D)|_E`, using §3.3 and StableReduction Layer 4, and prove the overlap comparison. Replace the claimed fibre-moving argument by that degree construction. Retain the general signed pairing. Add negative controls: `(-L)·L' = -1`; on the blow-up of `ℙ¹_R` at a rational special-fibre point, the exceptional component has self-intersection `-1`, and the two fibre components have matrix `[[-1,1],[1,-1]]`. These repaired definitions give those values and kill the total fibre.

## R02 (P3) — Cite the Hom/Isom representability result where it occurs

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:5670`–`:5675`: “`Hom_S(X, Y)` and `Isom_S(X, Y)` … are open subschemes of a Hilbert scheme”.

**Claim:** Nitsure §§2–5, Theorems 2.3, 3.3–3.7, 4.3 and 5.1–5.3 locate all the assertions in this sentence.

**Witness:** `nitsure-quot line 1211` is Theorem 6.6, printed pp.30–31, proving Hom representability. Lines 1182–1189 give Theorem 6.5's open isomorphism locus; lines 1234–1237 give the automorphism exercise.

**Repair:** Add §6, Theorems 6.5–6.6, pp.30–31, for the two graph projections and their open isomorphism loci. Keep the existing Quot/Hilbert locators. For `X=Y=ℙ¹_k`, the degree-one Hom locus is `PGL₂`, an open subset of the graph Hilbert component; this is exactly the application of the added locators. The Noetherian and flatness hypotheses in the revised sentence are retained correctly.

## R03 (P3) — Remove definitions unused by any acceptance theorem

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean:254`, `:263`, `:648`, `:675`, `:685`, `:702`, `:1545`.

**Claim:** The file contains only definitions needed to state its headline theorems.

**Witness:** `IsExcellentRing` and `IsCategoricalQuotient` occur in no theorem. `StackInGroupoids` only feeds `ValuativeLift` and `reidentify`. No headline, including `CH_coprod`, uses `cycleClass`.

**Repair:** Delete these unused declarations from `Suggested.lean`, together with definitions used only by them (`IsCatenary`, `IsInvariant`, and the stack-only pseudofunctor abbreviation, where no remaining use exists). Keep their mathematics and Checks in the README, and adjust its Lean lists and the module docstring. Do not add trivial theorems to justify retaining them. This leaves every existing headline type unchanged: for instance `CH_0(∐ₙ Spec k)=∏ₙℤ` still uses the quotient carrier, not the unused quotient-map declaration. This is definition padding, independently of the tactic results below.

## R04 (P3) — Finish the conversion of README-only Check labels

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:5685`–`:5689`, for example “`hilb_test_points`: `Hilb^1_{X/k}` is `X`”; also `:4917`–`:4946`.

**Claim:** These backticked own names label Checks even though they have no declarations in `Suggested.lean`.

**Witness:** Searching the two review files for `hilb_test_points` gives only the README Check. The repair report H10 explicitly leaves the same formatting elsewhere for a separate pass.

**Repair:** Write these as computed prose Checks without declaration labels, and update prose references to their mathematical descriptions. For example, “For projective `X/k`, the length-one Hilbert scheme is `X`; for `X=Spec k`, both have one point.” Preserve the mathematical Checks; do not add their names to Lean. H10 repaired §4.2, but did not repair the document-wide rule. It did not mark this finding not actionable; inherited formatting does not exempt the remaining labels.

## Verified sound

This was a full reread of the two target files, not an incremental review. The source sample below covers all 15 requested subsections. No locator was explicitly labelled unverified in the README. The report distinguishes source-text verification from mathematical instance calculations and from elaboration: none of these is a proof of the whole roadmap.

**Previous findings, checked first.** The quoted fragments below are from this head.

| Previous finding | Passage and check at this head | Disposition |
|---|---|---|
| R01 / repair H01, inherited Jacobian supply cycle | README `:425` still imports “JacobianChallenge … C”. Main JacobianChallenge `:152`, `:196`, `:208` still consumes Chow, formal functions and Hilbert. The repair's reason is that these are inherited main contracts, and the newly added polarized objective was removed. | Settled as not actionable in this package; not re-raised. The mechanical result below is not presented as disproving those inherited return edges. |
| R02, graded Picard signs | README `:4772`: “`f : LocallyConstant X ℤ`”. On `Spec(ℚ×ℚ)`, degree `(0,1)` gives the unit `(1,-1)`; the point-supported sign on `𝔸¹_ℚ` is excluded. | Repaired. |
| R03, polarized-system algebraization | README `:74`–`:75` keeps the boundary at modules and morphisms on a supplied proper scheme. The added §4.10A is absent. | Repaired; no reason to retain the previous rejected verdict. |
| R04, degree-zero algebra of Proj | README §0.3 permits general degree zero. For two projective lines, `A₀=k×k`; a Veronese still has `A₀=k×k`, and relative Proj gives both components. | Repaired. |
| R05, projective alteration conclusion | Lean `:1418` and `:1473` conclude `IsProjectiveOverSpec`; definition `:1391` is a closed embedding into finite projective space, not just properness. | Repaired. |
| R06, formal full faithfulness | Lean `:1212`: `grothendieck_existence_fullyFaithful`, with compatible `g_n` and `∃! G`. For `k[[t]]`, compatible residues give exactly one series. | Repaired. |
| R07, Nagata and 2-Yoneda locators | Finite-type Nagata stability now cites 0334(2); 2-Yoneda cites 004B. 0432 remains on the setoid/sheaf assertion where it belongs. | Repaired. |
| R08, four padding items | The equivalence-forward-functor theorem, thickness-three residual theorem and two examples are absent; the mathematical computations remain prose. | Repaired. |
| R09, omitted end theorems | Lean `:17`–`:52` names Keel–Mori, duality, the scheme Brauer class, Picard torsors, Schlessinger, GRR and Hodge index and their missing carriers. | Repaired for the findings raised. |
| R10, Check/API formatting | §4.2 now has prose API and computed Checks; §4.14 and many other sections still have undeclared Check labels. | Partly repaired; R04 above. |

**Gate and elaboration.** The worker's gate at this exact head reports every scanner and the targeted build passing, including the three named modules. An independent direct `lake env lean` elaboration of this folder's `Suggested.lean` exited 0 with only 75 `sorry` warnings. The missing pinned `TauCeti.AlgebraicGeometry.Cohomology.Genus` object was built first, as required. No source import was changed. The dependency command with `--movable` and the supplied main/order inputs printed:

```text
depcheck: 204 roadmaps, 1475 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The outside-folder diff was empty and the final tracked worktree status was clean. No PR file was edited. The scratch signature run printed the explicit types of all declarations selected from the file, including all 75 theorems; after removing a parser-generated `#check @on` from the scratch file, it exited 0. The printed types preserve the finite-dimensional genus instances, Noetherian/completeness hypotheses, properness, full-faithfulness compatibility and both projectivity conclusions. No lost hypothesis was found, and no signature was changed.

**Padding probe.** A scratch copy tried each of the 75 sorried theorem declarations with `simp`, `rfl`, and `infer_instance`, each required to close the goal. All 75 still produced a `sorry` warning; the probe exited 0. The pinned declarations consulted below did not furnish a direct one-lemma proof of a retained headline. This is not an assertion that all 75 are equally deep; R03 identifies definite unused definition padding. The accepted mathematical form of the earlier removed padding was not reinstated.

**End-theorem inventory.** README `:17`–`:24` names henselization and its universal property; Artin bootstrap; Keel–Mori; coherent duality; the scheme Brauer class; unpointed Picard torsors; Schlessinger; coherent existence, including full faithfulness; algebraization of compatible scheme morphisms; field and trait alterations; GRR; Hodge index; and the curve Weil bound. Henselization, bootstrap, coherent existence/full faithfulness, morphism algebraization, both alterations and Weil are present in Lean on native carriers. The remaining named end theorems have explicit missing-carrier explanations in its docstring. It also records scheme Frobenius, derived gluing and `K₀→G₀`. The affine Azumaya results are explicitly distinguished from the scheme Brauer-class map. Projectivity is now a real predicate, not a freely supplied proposition.

**Pinned objects opened.** Paths in this paragraph are relative to the respective pinned library repository. Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| Pinned declaration and location | What it supplies and what was checked |
|---|---|
| Mathlib `localCohomology`, `Mathlib/Algebra/Homology/LocalCohomology.lean:173`; `isoSelfLERadical :227`, `isoOfSameRadical :261` | Colimits of Ext over ideal powers; the radical comparisons require Noetherianness. §2.7 adds geometric-support comparisons rather than another local-cohomology functor. |
| Mathlib `Extension.cotangentComplex`, `Mathlib/RingTheory/Extension/Cotangent/Basic.lean:61`; `exact_cotangentComplex_toKaehler :324` | An actual two-term presentation map, not the full derived cotangent complex. The restricted existing-lift deformation statements respect this boundary. |
| Mathlib `AlgebraicCycle`, `Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean:44`; `map :69` | Locally finite functions, not finitely supported functions; pushforward has dimension weights and residue degrees. This is why the infinite coproduct formula uses a product. |
| Mathlib `AlgHom.mulLeftRight`, `Mathlib/Algebra/Azumaya/Defs.lean:43`; `IsAzumaya :60` | Finite, projective, faithful, with the bimodule map bijective. Positive residue fibres in the roadmap exclude the zero algebra over a nonzero field. |
| Tau Ceti `PureRelativeDimension`, `TauCeti/AlgebraicGeometry/Morphisms/PureRelativeDimension.lean:79`; fibre comparison `:87` | Pure dimensions of fibres plus the upper bound; it does not itself impose local finite type or surjectivity. The geometric Chow statements add local finite type. |
| Tau Ceti `Scheme.genus`, `TauCeti/AlgebraicGeometry/Cohomology/Genus.lean:64`; `finrank_cohomology_zero_trivial_eq_one :80` | Genus carries finite-dimensional `H¹`; the latter theorem requires a rational point. The roadmap's geometrically integral `H⁰` theorem has broader unpointed hypotheses and is not an exact copy. |
| Tau Ceti `Scheme.relativeDifferentials`, `TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85` | Differentials over an affine scalar base; not an already supplied general derived pushforward or duality functor. |

Ownership searches used the prescribed `roadmaps grep` and `roadmaps show` tools by objects: henselization, Schlessinger, coarse moduli, relative Proj, stackification, formal functions, Hilbert schemes, Chow's lemma and GRR. Pinned ring and geometry directories were searched as well. The two root-level Azumaya theorem names occur in this roadmap's main/revision copies, not a different owner. Revisions of an existing roadmap were not treated as new suppliers. The general foundational objects here are already the main roadmap's objects; removing the added polarized-system objective restores that boundary.

The board package search also covered these objects. In `packages/SchemeAndStackFoundationsPartII/design/README.md:7` and `:60`, ordinary henselization, torsors, cohomology and the Brauer class map are explicitly imported from this parent; its §3.6 extends henselization to animated rings. `packages/AlgebraicModuliForArithmeticGeometryPartII/README.md:57` distinguishes the parent’s projective Hilbert scheme from its proper nonprojective Hilbert algebraic-space extension; `:73` imports StableReduction’s relative Proj and regular-model intersections. These are distinct extensions, not owners of a replacement for the present ordinary constructions. No new ownership transfer is proposed.

The following supplier contracts were opened and resolved, rather than inferred from names:

| Supplier | Resolved location and scope |
|---|---|
| AlgebraicVectorBundles | Main README L0A `:215`, L0B `:228`, L0C `:254`, L1A `:269`, L1B `:290`, L2A `:306`, L2B `:340`; main Lean `relativeSpecHomEquiv :504`, `relativeSpecBaseChangeIso :523`, `relativeSpecEquiv :529`, `totalSpaceForgetIso :745`, `totalSpaceHomEquiv :795`, `totalSpaceBaseChangeIso :855`. The finite-rank local predicate and lines/quotients convention are compared, not new total-space constructions. |
| StableReduction | Main README Layer 0 `:343`, Layer 1 `:372`, Layer 2 `:405`, Layer 3 `:467`, Layer 4 `:529`, Layer 9 `:699`. Models, nodes, general finitely generated relative Proj, polarised descent, intersections and stabilization are present. The DVR node charts explicitly allow both zero and positive-thickness parameters. |
| JacobianChallenge | Main README Layers A–F, beginning `:111`, `:135`, `:143`, `:218`, `:332`, `:448`: curve degree/cohomology, relative base change, Picard, abelian varieties and Abel–Jacobi. Unpointed Picard torsors here retain the Brauer obstruction. The inherited return edges are recorded in the previous-findings table. |
| ClassFieldTheory / ProfiniteCohomology | Main ClassFieldTheory Layer 5 `:920` and Layer 10 `:1552`; main ProfiniteCohomology Layers 9–10, Kummer/Hilbert 90 `:1430`–`:1461`, all-degree cohomology `:1549`. Field Kummer theory keeps invertibility and the actual Galois action. |
| AbundanceStatement | The tool-resolved text's §4A items 1–4, §4B items 1–2 and §4D item 1 match degree, numerical quotient/finiteness and Nakai–Moishezon. They are explicitly characteristic zero. The retained arbitrary-field and positive-characteristic surface results are not claimed to follow from that specialization. |

**Seeded source checks.** Stacks uses source key `stacks-01SB`; chapter names below disambiguate extraction line numbers. Legal sources were fetched through the source service. No source text was copied into a repository file. Entries describe the mathematics in the reviewer's words.

| Target | Text and exact locator inspected | Result |
|---|---|---|
| 0.2 | Stacks constructions 01LX, line 293, p.7; morphisms 01QO line83, 01S7 line820, 01SB line909, 01T2 line1242, 01TQ line1841, 02K8/01WI lines4848/4858 | Relative Spec property tests and the affine module equivalence agree. The tensor is over the pulled-back algebra, not merely over the structure sheaf. |
| 0.4 | Stacks schemes 01LA line2107 and 01LC line2134, p.46; properties 01PE line1173, 01PF line1194, 01PI line1226, 0G41 line1264; coherent 01XZ line1087; `ega-i line 7027`, 9.4.7, pp.175–176 | Quasi-coherence versus coherence is distinguished, with the needed quasi-compactness/quasi-separation and Noetherian conditions. |
| 0.24 | `bhatt-scholze-witt line 438` onward, Definitions3.1–3.2 and Lemma3.4, pp.10–11; line500, Theorem3.7; line563, Proposition3.13, p.13 | Perfection, the reflection/preservation distinction and étale invariance agree. Nilpotents disappear; closed immersions are not reflected indiscriminately. |
| 1.17 | Stacks groupoids 03BE line2054; more-algebra 0BRH line15292; groupoids-quotients 048E line29, 048J line165, 048M line232, 04A9 line697, 04AE line742; bootstrap 04S6 line619, 04SK line747, 06PG line866, 06PH line882; `rydh-quotients` 3.8 line667, 3.17 line914, 4.3–4.9 lines1015–1158 | Categorical and geometric conditions include invariant functions; bootstrap has flat lfp representable covers. Finite-group quotient claims do not impose an invertible group order. |
| 1.18 | Stacks stacks 026F line263, 026G line331, 02ZI line419, 02ZL line459, 0432 line484, 02ZN line630, 0435 line760, 04W9 line782, 02ZP line826; categories 003O line2924 and 004B line4451 | Morphism descent and effective object descent are both retained; 2-fibres retain the specified isomorphism. 004B is the corrected 2-Yoneda locator. |
| 1.21 | Stacks spaces-groupoids 044Q line1135, 044R/044S lines1151/1174, 04M9 line1302, 044U line1360, 044X line1467; criteria 06FI line1426; algebraic 04TK line1078; stacks-morphisms 04YW line216 and 06N3 line1996. `cadman-root-stacks` §§2.1–2.2, lines77–262, pp.2–7 | Quotient-stack and root-stack objects agree. Cadman's DM assertion uses invertible root order; the roadmap's broader fppf construction does not turn wild roots into DM stacks. |
| 1.23 | Stacks algebraic 04SZ line697; stacks-more-morphisms 0DUF line1581; `conrad-coarse lines 5–57`, Thm1.1, pp.1–2; `rydh-quotients lines 1336–1420`, Thms6.10/6.12; `aov-tame lines 791–926`, Def3.1, Thm3.2, Cors3.3–3.5, Prop3.6, pp.18–21 | Finite inertia and tameness are separate. Rydh supplies the broader quotient theorem; Conrad's extra standing separation hypotheses were not silently attributed to it. |
| 2.12 | `morel-voevodsky lines 1759–1790`, §3.1, Prop1.1/Def1.2, printed pp.95–96 | Residue-field lifting is the Nisnevich condition. The source's finite-type/Noetherian setting is narrower; the elementary arbitrary-scheme covering definition is meaningful, and the Lean square theorem states the sheaf consequence directly. |
| 2.19 | Stacks duality 0A9D line210, 0A9E line217, 0A9I line256, 0A9W line1644, 0A9Y line1817, 0ATZ/0AU0 lines2197–2203, 0E9U line2399, 0FWI line2434; `nayak-pasting lines 269–394,458–474`, §2.1[A]–[D], Thm2.2.4, pp.6–10 | The right adjoint on unbounded `D_qc` and upper shriek are distinguished. The gluing route retains the base-change, identity-factorization and coherence inputs. |
| 2.21 | Stacks dualizing Def47.15.1 line1182, normalization before Lemma47.16.1 line1320; duality Lemma48.2.1/Def48.2.2 lines72–99 | Finite injective dimension, coherent cohomology and the homothety condition are all required. Local normalization uses the residue Ext degree, not a fixed shift at every point. |
| 3.7 | `yun-zhang lines 901–911,998–1014,2223–2254`, §3.2.1 and proofs of Props3.1(2),6.1(1), pp.16,18,40; Stacks divisors 062Y line1788; pic 0B9D line209 and 0BA0 line573 | Picard stack inertia, section stack versus projectivization, fibrewise nonzero sections and norm maps agree. The unpointed Abel map is a Brauer–Severi family; the pointed source is not used to trivialize its Brauer class. |
| 4.3 | Stacks formal-defos 06GS/06GT lines641–654; 06HW–06HY lines1180–1265; 06IG/06IH lines1692–1708; 0D3G line1998; 06J2/06J4/06J6–06JA lines2353–2504; 06JI line2615 | H1–H4, the tangent structure and the distinction between deformation groupoids and their isomorphism-class functors agree. Schlessinger's original paper itself remains inaccessible. |
| 4.6 | Stacks defos 08S5 line56, 08S7 line127, 0GPT line161, 0D14 line1209; more-morphisms 0C6R line377 and 0D0N line2003; examples-defos 0DY7–0DYA/0ET5 lines543–610, 0DZQ line1265; `deligne-mumford lines 240–348`, Prop1.5/Thm1.6, pp.81–83 | Existing-lift torsors and automorphisms use the two-term complex correctly; the split-node source is distinguished from descent of conjugate nodes. |
| 4.14 | `nitsure-quot` §1 lines136–369, 2.3 lines460–481, 3.3–3.7 lines619–721, 4.3 lines771–805, 5.1–5.3 lines948–973, 6.5–6.6 lines1182–1237 | Quot/Hilbert and Grassmannian claims supported. Hom/Isom needs R02's added locator. The source's separate base-change error is listed below, not adopted as an unconditional theorem. |
| 5.4 | Stacks chow 02TV line3353, 02TZ line3470, 02UK/02UL lines4116–4136, pp.70,73,85 | Projective-bundle/splitting formulas support the calculation after dualizing from the source's quotient convention. Fulton's exact cited pages could not be certified. |

Additional source checks include de Jong Theorems4.1 and6.5 (`de-jong-alterations lines 597–603,1253–1259`, pp.66,83), supporting both restored projectivity conclusions; Chow's lemma 0200/0201 (Stacks coherent lines2254–2268,2338–2346); and proper-hypercover descent 0DHM–0DHP (Stacks spaces-simplicial lines3444–3466), which really does allow arbitrary abelian coefficients in the stated regime. The derived-gluing route was compared with the local-finite-cover and Maurer–Cartan requirements in `block-holstein-wei lines 538–680`, Definition4.3 and Corollary3.

**Computed adversarial instances.** “Pass” below means that the displayed instance has the asserted value and its indicated wrong model is excluded; it is not a replacement for a proof. The first table covers the seeded targets, end theorems and all finding locations. The second gives a separate row for every Lean theorem. Changes are review recommendations only.

| Statement | Instances tried | Values computed on the two sides / wrong model | Result | Change |
|---|---|---|---|---|
| 0.2 relative Spec modules | A=k[t], M=A over k | Naive pullback is k[t₁,t₂], with kernel (t₁−t₂) under multiplication; tensoring over the pulled-back algebra gives k[t] | Pass | None |
| 0.2 finite/flat/proper tests | k→k[t]; k→k[ε]/ε² | First is flat, not finite or proper; second is free rank2, finite and proper | Pass | None |
| 0.4 direct image and extension | j:D(t)→Spec k[t] | j_*O has module k[t,t⁻¹], not finite; coherent extension O has module k[t]; k[t]/t restricts to 0 | Pass | None |
| 0.24 perfection | 𝔽_p[ε]/ε²; 𝔽_p[t]; p=2,3 | Perfections are 𝔽_p and 𝔽_p[t^(1/p∞)]; Frobenius kills ε and adjoins the missing roots | Pass | None |
| 0.24 reflection negative control | Spec(𝔽_p[ε]/ε²)→Spec 𝔽_p | Perfected map is identity; original ring map is not surjective, so original scheme map is not a closed immersion | Pass | None |
| 1.17 quotient functions | Identity relation on Spec k[ε]/ε² | Invariant ring is k[ε]/ε², not k; quotient retains ε | Pass | None |
| 1.17 finite quotients in small characteristic | Sign action on ℤ[x], then reduction mod2 | Invariants ℤ[x²]; reduced quotient map x↦x² is radicial in char2, not an isomorphism | Pass; catches naive invariant base change | None |
| 1.18 stackification | Trivial-torsor prestack for C₂ over ℝ | One trivial isomorphism class becomes two torsor classes, ℝ×ℝ and ℂ | Pass | None |
| 1.18 2-fibre products | pt→BC₂←pt | 2-fibre product is C₂, with two geometric points; ordinary fibre product of class sets has one | Pass | None |
| 1.21 roots and inertia | n=1; n=p, char p, zero section; invertible section | First root stack X; second inertia μ_p of length p, not étale; third stack X | Pass | None |
| 1.21 quotient stack | [pt/S₃] over characteristic0 | One geometric isomorphism class, automorphism group S₃ of order6; coarse point has trivial automorphisms | Pass | None |
| 1.23 Keel–Mori versus tame | BC_p and Bμ_p over 𝔽_p | Both coarse spaces pt; C_p-invariants are not exact (norm maps to p=0); μ_p-invariants are degree-zero summands and exact | Pass | None |
| 2.12 Nisnevich | Spec ℂ→Spec ℝ; D(2),D(3)→Spec ℤ; empty scheme | First residue degree2 fails; the opens lift every prime with residue degree1; empty family covers ∅ | Pass | None |
| 2.19 adjoint versus upper shriek | A¹_k→pt and ℙ¹_k→pt | Affine right adjoint of k is Hom_k(k[t],k) in degree0; smooth shriek is O[1]; on ℙ¹ it is O(-2)[1] | Pass | None |
| 2.19 closed immersion duality | Spec k→Spec k[t], apply right adjoint to k | Ext⁰(k,k)=k and Ext¹(k,k)=k; underived Hom alone misses degree1 | Pass | None |
| 2.21 normalized dualizing complex | DVR R and its fraction field K | R[1] has RHom_R(k,R[1])=k[0]; R[0] puts k in degree1; K normalizes as K[0] | Pass | None |
| 2.21 wrong dualizing object | Nonzero field k, candidate0 | RHom(0,0)=0; homothety k→0 is not an isomorphism | Pass | None |
| 3.7 Picard gerbe and Abel | Pointless real conic; d=1 | Pic¹=Spec ℝ, no real degree1 line bundle; Abel fibre is the nonsplit conic, not ℙ¹_ℝ | Pass | None |
| 3.7 sections | ℙ¹, d=0,1,-1; elliptic curve degree0 | Ranks 1,2,0; elliptic h⁰ is1 at O and0 at nontrivial degree-zero bundles | Pass | None |
| 3.7 norm sequence | Split étale double-cover stalk | a,b↦(a/b,b/a), then norm product=1; kernel of norm consists exactly of (u,u⁻¹) | Pass | None |
| 4.3 H2 | F(A)=m_A/{±1} in char≠2 | Pairs (ε,ε) and (ε,-ε) give distinct simultaneous-sign orbits but the same two component orbits; comparison is not injective | Pass; wrong functor excluded | None |
| 4.3 tangent and smallness | k[[x,y]]; k[x]/x³→k | Tangent dimension2; m·kernel=(x²)≠0, so the latter is not small | Pass | None |
| 4.6 algebra/node lifts | k[u,v]/uv, first-order smoothing uv=aε | Tangent smoothing parameter a∈k, dimension1; smooth affine line has Ext¹(Ω,O)=0 | Pass | None |
| 4.6 smooth proper and line-bundle deformation | ℙ¹; elliptic curve | H¹(T_ℙ¹)=0; H²(O) on both curves=0; line-bundle tangent H¹(O) is0 and k respectively | Pass | None |
| 4.6 nonsplit smoothing parameters | Two conjugate nodes over ℝ | Parameters a+ib,a−ib have product a²+b², not two independent real node parameters | Pass | None |
| 4.14 Hilbert/Quot | Gr(k²,1), Hilb¹X, Hilb²ℙ¹ | ℙ¹, X, ℙ² respectively; quotient determinant is O(1) in quotient convention | Pass | R02 locator; R04 prose labels |
| 5.4 lines/quotients | Rank-one E=O(1) on ℙ¹ | Line convention O_P(E)(1)=E∨; s₁(E)=-h, c₁(E)=h, c(E)s(E)=1 since h²=0 | Pass | None |
| 5.4 rank zero and split rank two | E=0; E=O² | P(0)=∅, c₀=id and c_i=0 for i>0; on P(O²), ξ²=0 | Pass | None |
| Henselization headline | (R,0), complete (k[[t]],(t)), (R,R) | Henselizations R, k[[t]], 0; target henselian unit ideal forces zero ring | Pass | None |
| Artin bootstrap headline | Identity cover of Spec k[ε]/ε² | All base changes remain schemes; flat lfp identity is true; nilpotent ε survives | Pass | None |
| Grothendieck existence/full faithfulness | k[[t]], O-modules; compatible 1+t+⋯+tⁿ | Algebraization O; unique multiplication by (1−t)⁻¹; residues 0 modt and1 modt² are incompatible | Pass | None |
| Algebraization of scheme maps | Constant proper ℙ¹ over k[[t]], identity on reductions | Unique map is identity; all transition squares equal the identity square | Pass | None |
| Field alteration | ℙ¹_k with Z={∞}; Spec k with Z=∅ | Identity, projective regular compactification; boundary {∞} or ∅, respectively | Pass | None |
| Trait alteration | ℙ¹_R over R=𝔽₂[[t]], Z=special fibre | Identity extension and alteration; H=∅; boundary equals the reduced special fibre; projectivity true | Pass | None |
| Scheme Brauer headline | M₂(k); quaternion algebra over ℝ | Matrix Brauer class0; quaternion class nonzero of order2 and split over ℂ | Pass | Docstring correctly separates missing scheme map |
| Schlessinger headline | Representable h_k and h_k[[x,y]] | Tangent dimensions0 and2; fibre-product comparisons bijective; complete hulls k and k[[x,y]] | Pass | None |
| GRR headline | ℙ¹→pt, O | ch(O)=1, td(T)=1+h, integral=1=χ(O); dropping Todd gives degree0 | Pass | None |
| Hodge index headline | ℙ¹×ℙ¹, H=(1,1), D=(1,-1) | H²=2, H·D=0, D²=-2; positive definite alternative fails | Pass | None |
| Weil headline | ℙ¹/𝔽₂; y²+y=x³ over 𝔽₄ | N=3,g=0 gives0≤0; N=9,g=1 gives4=2·1·2 | Pass | None |
| 5.9 signed relative intersections | C=-L,D=L' in ℙ² | Required -1; local equation1/x not in O; support-only length gives+1 | Fail | R01 |
| 5.9 vertical self-intersection | Bl_point ℙ¹_R, fibre C+E | C²=E²=-1, C·E=1, (C+E)·C=(C+E)·E=0 | Needs degree definition | R01 |
| Unused Lean definitions | CH₀(∐ₙpt); identity relation; degree0 excellent field | Product ∏ℤ unchanged without cycleClass; quotient remains point; k is excellent, but no headline uses its predicate | Mathematics consistent, acceptance-file padding | R03 |
| README-only Check label | Hilb¹(Spec k) | Source and target each a single reduced point; no Lean declaration of its test label exists | Mathematical Check survives deleting label | R04 |

The Lean rows use short declaration names from `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean`; the source line identifies each declaration unambiguously.

| Lean theorem (line) | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `isPullback_baseChange` (:74) | Proj k[x₀,x₁], extend k→K; zero graded ring | Base-changed scheme ℙ¹_K and fibre product ℙ¹_K; zero ring gives ∅ on both sides | Pass on these instances | None |
| `isPseudoCoherentSheaf_iff_affineOpens` (:108) | Affine k[t], M=k[t]/t and M=0 | Resolution [R→ᵗR] has H₀=k,H₁=0; zero resolution has all homology0; both sides true | Pass on these instances | None |
| `flat_over_dedekind` (:120) | R=k[[t]], X=Spec R; closed fibre | Identity reduced/dominant gives flat=true; closed fibre has t-torsion and fails dominance | Pass on these instances | None |
| `unibranch_finite_components` (:130) | Two copies of Spec k finite étale over pt | Each component open/closed; restriction finite étale rank1, while total rank2 | Pass on these instances | None |
| `neighbourhood_isFiltered` (:156) | I=0; I=R | For I=0 every neighbourhood is isomorphic to R; for I=R the zero algebra is a common receiving neighbourhood | Pass on these instances | None |
| `neighbourhood_essentiallySmall` (:159) | R=k,I=0; general finite presentations | One isomorphism class in the first case; presentations use finite lists of coefficients in R, giving a set in the same universe | Pass on these instances | None |
| `henselian` (:176) | Complete DVR k[[t]], I=(t); I=R | Henselization k[[t]] with henselian maximal ideal; unit-ideal henselization0 with only element0=1 | Pass on these instances | None |
| `existsUnique_lift` (:180) | R=k[[t]], f=id; I=R | Unique extension id in complete case; unit ideal can map into a henselian ideal only in zero target, with one map | Pass on these instances | None |
| `fixed_of_henselian` (:185) | R=k[[t]], I=(t); R=k,I=0 | Algebras on each side k[[t]] and k, respectively; structural maps identity | Pass on these instances | None |
| `Ring.IsJapanese.of_complete_local` (:205) | A=k[[t]], finite extension k((t))⊂k((u)), t=u² | Integral closure k[[u]] free rank2; identity extension rank1 | Pass on these instances | None |
| `Ring.IsNagata.of_complete_local` (:211) | A=k[ε]/ε² | Only prime (ε), domain quotient k; integral closures in finite field extensions are finite-dimensional | Pass on these instances | None |
| `IsQuasiExcellentRing.isNagata` (:268) | R=k and R=k[x] | Geometric regularity/J2 true; normalizations in finite extensions finite; Nagata=true | Pass on these instances | None |
| `smallEtaleBaseChange_isEquivalence` (:287) | Frobenius A¹_𝔽p; Spec k→Spec k[ε]/ε² | Both universal homeomorphisms; finite étale rank-n objects and their morphisms correspond with rank n unchanged | Pass on these instances | None |
| `universalHomeomorphismEtaleEquivalence_coverPreserving` (:298) | Identity and nilpotent thickening | A singleton identity cover remains a singleton cover; surjective étale family remains surjective after base change | Pass on these instances | None |
| `universalHomeomorphismEtaleEquivalence_id` (:307) | Identity of X, test étale object V | Pullback V×_X X≅V; both displayed arrows are projection to V, not an arbitrary automorphism | Pass on these instances | None |
| `universalHomeomorphismEtaleEquivalence_comp` (:313) | Two identity maps; finite inseparable tower | Iterated pullback triples (v,y,x) map to (v,x); both projection equations give v and x | Pass on these instances | None |
| `universalHomeomorphismEtaleEquivalence_baseChange` (:328) | Identity f and arbitrary g | Both routes produce V×_Y Y'; comparison preserves coordinates v,y' | Pass on these instances | None |
| `annihilator_flat_baseChange` (:348) | R=ℤ,M=ℤ/2,S=ℚ; S=ℤ[t] | Annihilators extend to ℚ=Ann(0), and (2)ℤ[t]=Ann(ℤ[t]/2) | Pass on these instances | None |
| `element_annihilator_flat_baseChange` (:355) | m=2 mod4, R=ℤ,S=ℤ[t]; m=0 | Both annihilators (2); for m=0 both are the unit ideal | Pass on these instances | None |
| `schemeCharP_spec_iff` (:382) | Spec 𝔽₂,p=2; Spec ℤ,p=2; ∅ | 2=0 true,false,true respectively, matching zero section in every ring of sections | Pass on these instances | None |
| `schemeCharP_iff_structureMap` (:386) | Spec 𝔽p; Spec ℤ; ∅ | Maps to Spec 𝔽p number1,0,1, respectively; characteristic predicate true,false,true | Pass on these instances | None |
| `schemeCharP_of_hom` (:390) | Spec 𝔽p[t]→Spec 𝔽p | p maps to0 in both section rings; identity and empty-source maps retain the equation | Pass on these instances | None |
| `IsNormalScheme.isReduced` (:415) | Spec k[t]; Spec k[ε]/ε² | Normal stalks give nilradical0; dual numbers have ε≠0 nilpotent and fail normality | Pass on these instances | None |
| `IsNormalScheme.isDiscreteValuationRing_stalk` (:421) | Spec k[t], point(t); generic point | At(t), coheight1 and DVR k[t]_(t); generic coheight0 and field, excluded | Pass on these instances | None |
| `coheight_eq_one_of_coheight_apply_eq_one` (:430) | k[t]→k[u], t=u² at origin | Target and source coheights1; generic points both0 | Pass on these instances | None |
| `coheight_apply_eq_one` (:438) | Same finite map over a field | Source coheight1 maps to target coheight1, including char2 inseparable case | Pass on these instances | None |
| `coheight_apply_eq_one_of_isNormalScheme` (:446) | DVR extension t=u³ | Both closed points coheight1; normal target hypothesis holds | Pass on these instances | None |
| `codimensionOneMap_surjective` (:460) | t=u² map on affine lines | Every codimension-one point has at least one point above it; origin has preimage origin | Pass on these instances | None |
| `ramificationIdxAt_comp` (:474) | Tower t=u², u=v³ | e(v/t)=6; product e(v/u)e(u/t)=3·2=6, also valid in char2 | Pass on these instances | None |
| `exists_regularSystem_of_quotient` (:486) | R=k[[x,y]], I=(x+y); I=0 | Regular parameters x+y,y; d=2,c=1 and quotient dimension1; I=0 uses c=0 | Pass on these instances | None |
| `isAlgebraicSpace_pullback` (:537) | Two points over a point; one empty input | Pullbacks point and ∅; both have representable diagonal and identity étale atlas | Pass on these instances | None |
| `EtaleLocal.baseChange` (:561) | P=étale, identity map, base change to dual numbers | Both original and pullback identity étale; P holds on every étale chart | Pass on these instances | None |
| `Action.free_iff_mono` (:611) | S₃ acting on itself by left translation; trivial action on pt | Map (g,x)↦(gx,x) bijective in first case; second has fibre size6, so neither free nor mono | Pass on these instances | None |
| `Torsor.trivial_iff_section` (:627) | Trivial C₂ torsor; Spec ℂ over Spec ℝ | First has two sections and is trivial; second no section and is nontrivial | Pass on these instances | None |
| `torsorRepresentability` (:634) | Spec ℂ as C₂-torsor over ℝ | After ℂ-cover it is two copies of Spec ℂ; algebraic space=true and torsor=true | Pass on these instances | None |
| `artinBootstrap` (:656) | Identity cover of dual numbers | Pullbacks are schemes, cover flat lfp; result retains length2 coordinate ring | Pass on these instances | None |
| `galois_descent_affine` (:736) | ℂ/ℝ with conjugation on ℂ[t]; trivial extension | Invariant algebra ℝ[t], ℂ⊗ℝℝ[t]≅ℂ[t]; identity extension descends A to A | Pass on these instances | None |
| `noetherianSpace_vanishing` (:762) | Finite discrete space, d=0; empty space | H^p=0 for p>0; empty space H⁰=0 as well; dimensions do not force H⁰ to vanish on a point | Pass on these instances | None |
| `higherDirectImage_vanishing` (:775) | X=ℙ¹_k,S=Spec k | Uniform N=2 works for every quasi-coherent module; H¹(O(-2))=k shows N=1 does not | Pass on these instances | None |
| `isAffine_of_H1_vanishing` (:783) | Spec k[t]; ℙ¹ with O(-2) | All affine H¹ vanish; on ℙ¹ H¹(O(-2))=k, so the nonaffine example fails the premise | Pass on these instances | None |
| `localCohomology_degreeZero` (:794) | A=ℤ,I=(2),M=ℤ/4; I=(1); I=0 | Power torsion is all four elements, {0}, and all M respectively; H⁰_I has those carriers | Pass on these instances | None |
| `localCohomology_flat_baseChange` (:802) | A=ℤ,B=ℚ,I=(2),M=ℤ,q=1 | H¹_I(ℤ)=ℤ[1/2]/ℤ; tensor ℚ is0; extended ideal is unit and RHS0 | Pass on these instances | None |
| `artinSchreier_vanishing` (:823) | A¹_𝔽₂, q=2; q=1 control | H²(𝔽₂)=0; Artin–Schreier class of t gives nonzero H¹, so degree threshold matters | Pass on these instances | None |
| `brauer_functionField_curve_trivial` (:829) | K=ℂ(t); algebraic extension of it | Brauer class of every finite central simple algebra0; finite presentations descend to a finite extension of ℂ(t) | Pass on these instances | None |
| `zariskiTopology_le_nisnevichTopology` (:857) | Zariski cover D(2),D(3) of Spec ℤ | Every lifted residue extension has degree1; both sieves are covering | Pass on these instances | None |
| `nisnevichTopology_le_etaleTopology` (:860) | Spec ℂ→Spec ℝ control; identity cover | Complex cover is étale but not Nisnevich; identity is both, giving the correct inclusion direction | Pass on these instances | None |
| `isPullback_of_isSheaf` (:888) | Elementary square with U=X,V=X, both identities | Sections square all identities; pullback is F(X)×_F(X)F(X)=F(X) | Pass on these instances | None |
| `isReplete_proetale` (:909) | Terminal scheme, constant singleton inverse system; surjective finite-set tower | Limit→first object surjective; binary tower {0,1}^n has limit {0,1}^ℕ projecting onto each stage | Pass on these instances | None |
| `DQCoh.affineEquiv` (:932) | A=k; A=k[ε]/ε² | Module complex k[0] and its affine sheaf have H⁰=k, other H=0; same comparison works for the nonreduced affine ring | Pass on these instances | None |
| `_root_.IsAzumaya.exists_etale_matrix_splitting` (:943) | M₂(k), d=2; ℍ over ℝ | Split case B=k, rank4; quaternion case B=ℂ, ℂ⊗ℝℍ≅M₂(ℂ) | Pass on these instances | None |
| `_root_.IsAzumaya.etale_matrix_splitting_of_finite_cover` (:954) | Two identity étale charts over k, d=2; empty index over zero ring | Product B=k×k splits to M₂(k)×M₂(k); empty product is zero ring, the sole algebra over zero | Pass on these instances | None |
| `isAzumaya_iff_positive_fibres_mulLeftRight` (:971) | A=M₂(k); A=0 over nonzero k | First fibres dimension4 and bimodule-map dimensions16=16; zero algebra has bijective0→0 but fibre dimension0, excluded | Pass on these instances | None |
| `isAffine_or_isProper` (:1004) | A¹_k and ℙ¹_k | Affine/proper truth values (true,false) and (false,true); dimension0 point excluded because both are true | Pass on these instances | None |
| `genus_baseChange` (:1021) | ℙ¹_k and ℙ¹_L viewed over k, [L:k]=2 | First h⁰=1,g=0 after extension; second h⁰=2 and fails the h⁰ premise | Pass on these instances | None |
| `vectorBundleDegree_add_of_shortExact` (:1044) | O(1)⊕O(-1) on ℙ¹; rank-zero sequence | Degree0=1+(-1); zero sequence gives0=0+0 | Pass on these instances | None |
| `vectorBundleDegree_pullback` (:1054) | t↦t² on ℙ¹, E=O(1); Frobenius in char p | Degrees2=2·1 and p=p·1; no separability required | Pass on these instances | None |
| `cohomologyDim_zero_structureModule` (:1071) | Pointless real conic; ℙ¹_ℂ over ℝ | Conic H⁰=ℝ, dimension1; second H⁰=ℂ, dimension2 and not geometrically integral | Pass on these instances | None |
| `genus_of_finite_etale` (:1078) | Identity ℙ¹; étale double cover of genus2 curve | Integer formula -1=1·(-1); g_X=3 gives2=2·1 | Pass on these instances | None |
| `cohomologyDim_one_eq_zero_of_degree_gt` (:1093) | O(-1) on ℙ¹; O(-2) boundary | First H¹=0,h⁰=0=(-1)+1; boundary has H¹=k and strict degree premise fails | Pass on these instances | None |
| `lineBundleClass_spec_equiv_pic` (:1107) | R=k; R=k×k | Both line-bundle class groups and module Picard groups are trivial in each case | Pass on these instances | None |
| `smooth_iff_formallySmooth` (:1146) | A¹_k→pt; Spec k[ε]/ε²→pt | Polynomial coordinate lifts across square-zero quotients; dual-number map ε↦ε in k[ε]/ε² cannot lift to k[ε]/ε³ preserving square-zero, so nonsmooth | Pass on these instances | None |
| `etale_iff_formallyEtale` (:1151) | Finite separable field extension; A¹_k→pt | First lift unique; affine-line coordinate has multiple ε-perturbation lifts, so not formally étale | Pass on these instances | None |
| `grothendieck_existence` (:1193) | X=Spec k[[t]], reductions A/t^(n+1), moduleO | Compatible reductions algebraize to A; for X=∅ all modules are0 | Pass on these instances | None |
| `grothendieck_existence_fullyFaithful` (:1212) | Same X, multiplication by compatible residues | Unique endomorphism multiplier in A; 0 modt and1 modt² give compatibility false | Pass on these instances | None |
| `algebraize_hom` (:1252) | Proper ℙ¹ over k[[t]], identity tower | Unique G=id; on empty X there is exactly one map to every Y | Pass on these instances | None |
| `strictTransform_supportComparison_affine` (:1269) | I=(x,y), M=k[x,y]/(x²,y²), m=1 | x²m=y²m=0; I³m=0 but I²m contains xy≠0; a uniform power exists and cannot always be2 | Pass on these instances | None |
| `generic_flatness` (:1305) | Spec k[t,x]/(tx)→Spec k[t] | Over D(t), x=0 and map is identity hence flat; at t=0, t kills x and flatness fails | Pass on these instances | None |
| `resolution_of_curves` (:1317) | Cusp Spec k[t²,t³]; Spec k | Normalizations k[t] and k, regular and finite birational; cusp origin was singular | Pass on these instances | None |
| `node_local_structure_dvr` (:1361) | a=0; a=επ³, ε a unit | Zero branch uv=0; nonzero branch n=3 and coordinate u↦εu gives εuv−επ³=0 | Pass on these instances | None |
| `node_local_structure_dvr_nonzero_of_generic_smooth` (:1379) | uv=0 versus uv=π | Generic uv=0 has singular origin; uv=π over fraction field is G_m and smooth, parameter nonzero | Pass on these instances | None |
| `curve_fibration_field_reduction` (:1402) | X=Spec ℂ over ℝ; purely inseparable finite field extension | After k'=ℂ choose one point component of ℂ⊗ℝℂ=ℂ×ℂ; inseparable base change chooses the reduced point of the nonreduced tensor product | Pass on these instances | None |
| `alteration_theorem` (:1418) | X=ℙ¹_k,Z={∞}; dim0 field point | Identity alteration, projective regular compactification, SNC one point; dimension0 boundary empty | Pass on these instances | None |
| `semistable_alteration_theorem` (:1473) | X=ℙ¹_R,Z=X_s over excellent DVR R | Identity extension, H=∅, X_s reduced regular; equality of boundary sets X_s=X_s | Pass on these instances | None |
| `CH_coprod` (:1552) | I=∅, singleton, ℕ with X_i=Spec k; k-cycle degree0 | Empty: 0=empty product; singleton:ℤ=ℤ; countable:∏ℤ=∏ℤ, containing constant1, which a direct sum omits | Pass on these instances | None |
| `weil_bound` (:1566) | ℙ¹/𝔽₂; elliptic y²+y=x³ over 𝔽₄ | 0=abs(3−3)≤0; abs(9−5)=4=2·1·sqrt4 | Pass on these instances | None |

Counts: 75 separate Lean-theorem rows, plus 43 source/headline/finding rows above. All calculations were made by the reviewer; the helper only located source texts.


The source error in Nitsure mentioned below has a separate computed negative control. Put `A=k[ε]/ε²`, take an elliptic curve `E/k`, and deform `O_E` by a nonzero class in `εH¹(E,O_E)`. The resulting invertible sheaf on `E×Spec A` is A-flat and has cohomology complex `[A —ε→ A]` in degrees 0 and 1. Its only fibre has `h⁰=h¹=1`, but both relative cohomology modules are `k`, not free A-modules; the degree-zero base-change map is zero. Thus constant fibre dimensions alone do not justify that source's assertion over a nonreduced base. No unconditional version of that assertion was accepted here.

## Not verifiable

The 15 sampled sections were compared with the readable texts listed above. The following exact-source checks remain uncertified. Missing access is recorded separately from R01–R04; it was not treated as evidence that the cited mathematics is false. All bibliography entries were sent through the source service. The additional bibliography inventory returned 29 readable works, four service-classified uncertified works and eight unavailable works; the earlier sampled Fulton request adds one unavailable work. Availability alone does not certify unsampled locators.

| Source | Unverified locator or use | Where access was attempted and outcome |
|---|---|---|
| `fulton-intersection` | §5.4: Proposition 3.1, Theorems 3.2–3.3 and §3.2; other Fulton locators in Layer 5 | Sources-service title resolution found no legal text. The parallel Stacks projective-bundle and Chern-class statements were read, as listed above; Fulton's pages were not verified. |
| `liu-ag` | §5.9: §9.1, Definition 9.1.14 and Proposition 9.1.21; other Liu references | DOI resolution reached Oxford's publisher page, which returned HTTP 403. R01 follows directly from the roadmap's formula and does not assume what Liu says. |
| `kleiman-ampleness` | §5.10: numerical ampleness criterion, cited without a theorem number | DOI resolution reached JSTOR; the service had no verified open-copy classification. No paywall was bypassed. |
| `schlessinger` | §§4.3–4.4: Theorem 2.11, pp.213–215 | AMS landing-page resolution did not provide classified legal text; the explicit PDF retry returned unrelated journal HTML. Stacks' corresponding deformation-functor criteria were read. |
| `grothendieck-tohoku` | §2.23: Chapter V, §5.1, Proposition 5.1.1 and the reduction to modules, p.196 | Title resolution failed; the DOI page exposed no usable PDF; the explicit PDF retry returned an error page. |
| `grothendieck-brauer` | §2.22: Brauer I, Theorems 5.1 and 6.1, pp.210,214; Brauer II, Proposition 1.4, Lemma 1.9 and Corollaries 1.8,1.10, pp.291–293 | Sources-service title resolution found no legal text of I–III. The affine matrix-splitting signatures were checked against native algebraic definitions and the computed split/quaternion examples, not certified against these pages. |
| `cheng-lian-murayama` | §4.15: §§1.3–1.4, Proposition 1.10, Lemmas 1.29–1.32, Proposition 1.33 and Lemma 1.44 | The NSF institutional repository URL timed out. |
| `kisin-modp` | §§1.24–1.25: §§3.1.1–3.1.2, pp.34–36; §3.2.1, pp.39–40 | DOI resolution reached an AMS landing page without a classified accessible PDF. |
| `knudsen-stable-curves-ii` | §4.15: Corollary 2.6 and Theorem 2.7, p.179 | The publisher PDF request produced no response after more than seven minutes and was stopped. |
| `hartshorne-ag`, `sga4-xvi`, `sga6`, `huber-etale` | Their cited textbook/volume locators | The service classified these as uncertified/paywalled. They are recorded as such, not requested again. Readable parallel sources do not certify their exact pagination. |

The nine unavailable works are retained together in the job's missing-reference list. No source manifest was edited. This review is complete with those limitations; it does not request an interruption or infer any missing source contents. No claim is made that every locator outside the seeded sample was text-verified.

## Source issues

- **Misprint** in `stacks-01SB` at Tag 048J, Definition 83.4.1(1)–(2), groupoids-quotients p.4 (lines 170,175): the source says the factorization composes the quotient map after the factoring map; it should be `ψ = χ ∘ ϕ`, with `ϕ:U→X` and `χ:X→Y`; affects a stated result.
- **Misprint** in `aov-tame` at arXiv v1, Proposition 3.6, p.20 (line 905): the source says the quotient chart is the stack's base change over S; it should be the base change over its coarse space M; affects a stated result.
- **Misprint** in `cadman-root-stacks` at arXiv v3, remark after Definition 2.1, p.3 (line 103): the source says the examples take root order one; it should be nontrivial root order, consistent with the subsequent root examples; affects nothing.
- **Error** in `nitsure-quot` at Theorem 3.7(3), p.17 (lines 703–705): the source says constant fibre cohomology dimension alone forces locally free higher direct image over any Noetherian base; it should be the constant-dimension criterion with a reduced base, or the appropriate base-change hypotheses; affects a stated result.
