# Review of SchemeAndStackFoundations (pull request #1276 at 1e0f2f8)

**Verdict:** needs changes

## R01 (P2) — Remove the second qcqs flat-base-change target

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:3408`–`:3410`: “Prove `qcoh_higherDirectImages` … commutes with flat base change”.

**Claim:** Flat base change for an arbitrary quasi-coherent sheaf under a qcqs morphism is part of the work commissioned here.

**Witness:** `TauCetiRoadmap/JacobianChallenge/README.md:165`–`:169` on main already states precisely this generality, including the canonical map and its affine formula. It is not restricted to proper or flat families of curves.

**Repair:** Delete the flat-base-change assertion from the locally proved package. Import JacobianChallenge Layer C's flat-base-change item explicitly in §2.6's needs, and describe it in the existing supplier contract. Keep the new preservation, filtered-colimit and vanishing assertions. The layer introduction at `:3225` already recognizes this ownership, but the target says “Prove” again and its needs at `:3431` cite only Layer B. For `ℙ¹_A`, `O(−2)` and a flat algebra `B`, the imported comparison is exactly `A ⊗_A B ≅ B`; no replacement theorem or weaker hypothesis is needed. This finding concerns the repeated target, not the inherited Jacobian return edges previously settled as not actionable.

## R02 (P3) — Delete the remaining unused Lean definitions

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean:551`, `:555`, and `:346`–`:350`: “`def smallEtale`”, its category instance, and the empty `Nonflat` section's local algebra instance.

**Claim:** These declarations are necessary to state a retained acceptance theorem.

**Witness:** `Spaces.smallEtale` is used only by its category instance. The `Algebra (ZMod 4) (ZMod 2)` instance has no declaration between it and `end Nonflat`. None of the 75 theorem types uses either.

**Repair:** Delete them from `Suggested.lean`; keep the mathematical site and nonflat example in the README, and remove §1.10's Lean-export claim at README `:2353`. A scratch copy with exactly these deletions elaborated successfully with the same 75 `sorry` warnings. The algebraic-space pullback and torsor theorems retain their types. This is the residual unused-definition issue from the previous R03, whose explicitly listed declarations have been removed.

## R03 (P3) — Remove the remaining declaration labels from Checks

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:5037`–`:5039`, `:6562`–`:6564`: “`not_formallySmooth_closedPoint`”, “`formallyUnramified_iff_mathlib`”, “`cycles_zero`”, “`cycles_negative`”, “`cycles_support_agreement`”.

**Claim:** These names label Checks, although none is declared in `Suggested.lean`.

**Witness:** Each name occurs only in the README. The cycle-support Check merely repeats the carrier's membership condition; the zero and negative-degree Checks compute boundary values.

**Repair:** Keep computed prose Checks without declaration labels; do not add Lean declarations. For example, the closed point of `𝔸¹_k` fails the lift against `k[ε]/(ε²)` with coordinate `ε`; the required equality would be `0=ε`. Degree `−1` cycles form the zero group, while degree-zero cycles on `Spec k` form `ℤ`. Use these values to distinguish the intended constructions. This completes the still-partial previous R04.

## R04 (P3) — Cite the Brauer-surjectivity result and identify the edition

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4442`–`:4444`: “`Br(X) = Br′(X)` … Corollaires 1.8, 1.10, pp. 291–293”.

**Claim:** The listed results locate equality of the Azumaya and cohomological Brauer groups for a regular affine scheme of dimension at most two.

**Witness:** `grothendieck-brauer-ii line 174` is generic-point injectivity. Equality in dimension at most two is Corollary 2.2 at lines 252–253, following Theorem 2.1 at lines 248–251.

**Repair:** Add Corollary 2.2 and its Noetherian context, and identify the edition actually cited. The legally readable Bourbaki exposé 297 has this corollary on printed p.296; the bibliography currently names the Dix exposés edition while the supplied page numbers are Bourbaki pagination. Cite the [Bourbaki text](https://www.numdam.org/item/SB_1964-1966__9__287_0/) or verify and give the Dix exposés locator. For `Spec ℝ`, both groups are `ℤ/2`, with the Hamilton class the nonzero element; the new locator supplies surjectivity as well as injectivity. This is a locator correction, not a counterexample to the theorem.

## R05 (P3) — Correct the regular-map and G-ring stability locators

**Location:** `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1410`–`:1420`: “`.field_iff` … Lemma 15.42.6” and “`IsGRing.localization`, `IsGRing.of_finiteType` (Propositions 15.51.6, 15.51.12)”.

**Claim:** Those locators establish the general field-base equivalence and stability for every G-ring.

**Witness:** Stacks more-algebra line 5163 concerns field extensions and separability. Lines 5957 and 6090 concern complete local rings and listed examples. General essentially-finite-type stability is Proposition 15.51.10, line 6039.

**Repair:** Cite Definition 15.42.1 and the one-prime fibre calculation for `.field_iff`; cite Proposition 15.51.10 (07PV), including its opening localization argument, for the two G-ring stability claims. Keep 15.51.6 and 15.51.12 with the examples they actually prove. For `k[x]` and `k[x]_(x)`, the field-base fibre is the algebra itself and the local completion has regular formal fibres; both corrected references cover these examples. The mathematical claims need no narrowing.

## Verified sound

Both target files and all four prior findings were reread. All 15 seeded subsections were sampled; none was flagged unverified. The two adversarial tables contain 150 rows. Source checks and calculations are separate from elaboration, which does not prove admitted statements.

**Previous review, finding by finding.**

| Previous finding | Passage at this head and witness | Disposition |
|---|---|---|
| R01, signed relative intersections | README `:7110` says “first take **effective Cartier divisors**”; `:7116` uses “signed Cartier divisors”; `:7125` defines the vertical value by `χ(O(D)\|_E)−χ(O_E)`. The values are `(-L)·L′=−1` and the fibre matrix `[[-1,1],[1,-1]]`. | Repaired. The matrix kills `(1,1)` and has quadratic value `−(a−b)²`. |
| R02, Hom/Isom locator | README `:5669`–`:5671` now includes “Theorems 6.5–6.6”. `nitsure-quot lines 1182–1189,1211–1237` contain the open isomorphism locus and Hom theorem. | Repaired. The degree-one self-map locus of `ℙ¹` is `PGL₂`. |
| R03, unused definitions | The listed `IsExcellentRing`, `IsCatenary`, `IsCategoricalQuotient`, `IsInvariant`, `StackInGroupoids`, `ValuativeLift`, `reidentify` and `cycleClass` declarations are absent. README `:2353` still advertises “`Spaces.smallEtale`”. | Listed deletions repaired; general rule partly repaired, R02 above. |
| R04, Check labels | The Hilbert Checks at §4.14 are now prose, including length-one subschemes; README `:6562` still says “`cycles_zero`”. | Partly repaired; R03 above. |

The earlier settled objection to inherited Jacobian return edges is not re-raised. The reason recorded in the previous review remains applicable: these are existing main contracts, and the added polarized-system algebraization objective was removed. The retained formal-existence statement concerns modules and morphisms on a supplied proper scheme.

**Gate, order and signatures.** The worker's gate at the exact requested head reports every check passing, including all three targeted modules. Independent targeted build and direct `lake env lean` elaboration succeeded; direct elaboration emitted only 75 `sorry` warnings. The missing pinned genus object was supplied by the targeted build. The prescribed dependency check with the given main/order inputs and `--movable` printed:

```text
depcheck: 204 roadmaps, 1477 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line appeared. The outside-folder diff was empty. No PR file was changed. The signature copy printed 156 selected declaration types, including all 75 theorems. I read the printed binders against the README: finite-dimensional genus hypotheses, Noetherian and completeness conditions, finite-generation and flatness assumptions, coefficient towers, properness, compatibility of formal maps, and both projectivity conclusions survive elaboration. No signature was changed. The ordinary `True` in `∃! f, True` expresses existence of a unique prime-field structure map; it is not a placeholder for unstated mathematics.

The scratch probe tried `simp`, `rfl` and `infer_instance` on each theorem. All 75 still used `sorry`; exit 0. The inspected native lemmas did not give direct proofs of these geometric comparisons. R02 identifies unused data, whose deletion was separately elaborated. No process was left running.

**Headline inventory.** The README's opening end theorems are henselization and its universal property; Artin bootstrap; Keel–Mori; coherent duality; the scheme Brauer-class map; unpointed Picard torsors; Schlessinger; coherent existence and full faithfulness; algebraization of compatible scheme morphisms; field and trait alterations; GRR; Hodge index; and the curve Weil bound. Henselization, bootstrap, coherent existence/full faithfulness, morphism algebraization, both alterations and Weil are stated in Lean. The other end theorems are named in its module docstring with their missing carriers. The docstring also identifies scheme Frobenius, derived gluing and the `K₀→G₀` comparison. The ring-level Azumaya splitting theorem is explicitly distinguished from the absent scheme Brauer-class map. No freely chosen predicate substitutes for projectivity or semistability.

**Pinned-library audit.** Mathlib pin: `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin: `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths below are relative to the respective library repositories. The following 10 object families were opened, in addition to the imported names checked by elaboration.

| Object and exact file locator | Boundary checked |
|---|---|
| `localCohomology`, `Mathlib/Algebra/Homology/LocalCohomology.lean:173`; `isoSelfLERadical :227`, `isoOfSameRadical :261` | Powers-of-ideal Ext colimits already exist. The radical comparison has a Noetherian hypothesis; geometric support is not silently identified in arbitrary rings. |
| `Extension.cotangentComplex`, `Mathlib/RingTheory/Extension/Cotangent/Basic.lean:61`; exactness `:324` | This is the two-term presentation map, not the full cotangent complex. |
| `AlgebraicCycle`, `Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean:44`; `map :69` | The support is locally finite. Infinite coproducts therefore give products of cycle and Chow groups. The native weighted pushforward is reused. |
| `AlgHom.mulLeftRight`, `Mathlib/Algebra/Azumaya/Defs.lean:43`; `IsAzumaya :60` | Native Azumaya includes finite, projective and faithful, as well as bijectivity. Nonzero alone is insufficient over a disconnected base. |
| `Ideal.ramificationIdx`, `Mathlib/RingTheory/RamificationInertia/Ramification.lean:52`; positivity `:120`, `:178` | Length of the fibre, with a natural-number conversion; finite dominant maps at DVR stalks exclude infinite length and the zero-index junk case. |
| `Functor.rightDerivedFunctorPlus`, `Mathlib/Algebra/Homology/DerivedCategory/RightDerivedFunctorPlus.lean:46`; universal property `:67`, triangulated instance `:82`, unit `:95` | Generic derived-functor machinery exists; the scheme/site comparisons and geometric hypotheses still have to be supplied. |
| `Scheme.Modules.restrictFunctor`, `Mathlib/AlgebraicGeometry/Modules/Sheaf.lean:339`; adjunction `:416`, pullback comparison `:443` | The restriction functor exists. The advertised derived geometric gluing is not a supplied declaration merely because this ordinary functor exists. |
| `PureRelativeDimension`, `TauCeti/AlgebraicGeometry/Morphisms/PureRelativeDimension.lean:79`; fibre equivalence `:87` | Pure fibre dimensions and the upper bound, not local finite type or surjectivity. The Chow uses add their geometric assumptions. |
| `Scheme.genus`, `TauCeti/AlgebraicGeometry/Cohomology/Genus.lean:64`; `finrank_cohomology_zero_trivial_eq_one :80` | Genus carries finite-dimensional `H¹`; the existing `H⁰` theorem requires a rational point. The unpointed geometrically integral theorem is broader. |
| `Scheme.relativeDifferentials`, `TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85` | Affine-base relative differentials, not a full derived module pushforward or duality functor. |

**Ownership and supply.** Searches used the prescribed `roadmaps grep`/`show` tools, main, board packages, and the supplied sibling checkouts, by objects including torsors, ordinary and enhanced derived pushforward, coherent duality, Schlessinger, alterations, relative Proj, Chow groups and Azumaya splitting. This revises the existing main roadmap; Part II and moduli extensions consume its foundations. The repeated flat-base-change item is R01. No new owner transfer is proposed.

| Contract resolved | Text read and scope |
|---|---|
| AlgebraicVectorBundles | Main `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215,228,254,269,290,306,340`: monoidal modules, finite local freeness, polynomial operations, relative Spec, graded algebras and total spaces. The local rank predicate is a comparison on native free sheaves; the total space is the supplier's dual convention. |
| StableReduction | Main `TauCetiRoadmap/StableReduction/README.md:343,372,405,467,529`: models/nodes, relative dualizing sheaves, finitely generated relative Proj, polarized descent, stable curves and arithmetic intersections. The vertical pairing used in the repaired §5.9 is actually present. |
| JacobianChallenge | Main `TauCetiRoadmap/JacobianChallenge/README.md:111,135,143,165,195,218,332,448`: degree, curve cohomology, proper coherence, general qcqs flat base change, formal-functions consumption, Picard, abelian varieties and Abel–Jacobi. R01 singles out the duplicate, not a missing supplier theorem. |
| ClassFieldTheory and ProfiniteCohomology | Main `TauCetiRoadmap/ClassFieldTheory/README.md:920,1552`; `TauCetiRoadmap/ProfiniteCohomology/README.md:1363,1549`: field coefficients/Brauer, Hilbert 90/Kummer and all-degree continuous cohomology, with actual Galois action and invertibility conditions. |
| QuadraticFormInvariants | Main `TauCetiRoadmap/QuadraticFormInvariants/README.md:2554`–`:2570`: the field Brauer comparison is fixed by its crossed-product cocycle equation. The scheme class map here is a different target. |
| GrothendieckEulerForms | Main `TauCetiRoadmap/GrothendieckEulerForms/README.md:238,283`: exact Grothendieck groups and resolving-subcategory comparison. The open revision was also located, but the consumed contract was checked on main. |
| EnhancedDerivedSheaves | Main `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:492`–`:503` explicitly consumes this roadmap's ordinary abelian `D⁺` comparison. Its enhanced ringed-site operations are not a supplier for the locally owned ordinary construction here. |
| CommRingFactorizationSystems | Tool-resolved `TauCetiRoadmap/CommRingFactorizationSystems/README.md`, F2: integral, universally injective, spectrally surjective ring maps, and the nil-kernel quotient result are present. The scheme extension reverses arrows under Spec. These are planned supplier names, not missing pinned-library names. |
| AbundanceStatement | Tool-resolved `TauCetiRoadmap/AbundanceStatement/README.md`, §4A items 2–4, §4B items 1–2, §4D item 1: normalized curve degree, numerical quotient/finiteness and Nakai–Moishezon are characteristic-zero contracts. The characteristic-independent comparisons here are distinct. |
| Open extensions supplied in the brief | `packages/SchemeAndStackFoundationsPartII/design/plan.json` and `packages/AlgebraicModuliForArithmeticGeometryPartII/README.md:57` distinguish ordinary foundations and projective Hilbert schemes from later extensions. `TauCetiRoadmap/MotivicEtaleKTheory/README.md:65,211` at its supplied head imports ordinary Chow groups; `TauCetiRoadmap/AnalyticStacks/README.md:445` imports coherent duality. |

No copied passages, algorithms, sorry-defined data, `set_option`, unauthorized imports or outside edits were found. Scope explicitly assigns the function-field/scheme curve comparison to AlgebraicCurves 12E downstream, rather than importing that later roadmap. Internal order puts groupoids before quotients, Nisnevich topology before comparison, and homotopy invariance before Gysin. The dependency result does not erase the settled inherited return references.

**Seeded source sample.** All texts were obtained through the sources service from legal locations. Stacks source key `stacks-01SB` is disambiguated below by chapter. Locators distinguish printed pages from extraction pages.

| Target | Locator and extraction read | Result |
|---|---|---|
| 0.5 Pseudo-coherent modules | Stacks more-algebra, 064Q line 7432, 064T line 7500, 064V line 7586, 066E line 7746; perfect, 08E4 line 1028 | Finite free resolutions may be unbounded to the left. Affine and sheaf comparisons retain quasi-coherence; finite presentation alone is not pseudo-coherence over arbitrary rings. |
| 0.10 Unibranch | Stacks more-algebra 0BPZ lines 14572–14583 and §15.108; algebra §10.155 lines 19782–19812, §10.166 | Normalization of the reduction, locality and purely inseparable residue extension are distinct conditions. Strict henselization uses the chosen separable residue closure. |
| 0.21 Excellence | Stacks algebra 10.166.1–2, lines 21560–21600; more-algebra 15.42 lines 5121–5168, 07QK/0BFK/0H7S/0H7T lines 5179–5208, J-2 line 5601, G-ring line 5883, 07PV line 6039, excellence lines 6378–6435 | Definitions and quasi-excellence/Nagata implication agree. Three API locators need R05. Noetherianity and all finite purely inseparable tests are retained. |
| 0.24 Perfection | `bhatt-scholze-witt lines 430–520,563–582`, Definitions 3.1–3.2, Lemma 3.4, Theorem 3.7, Proposition 3.13, printed pp.10–13 | Nilpotents vanish and purely inseparable extensions are allowed. The descent assertion is for perfectly finitely presented maps; it does not reflect all properties without hypotheses. |
| 1.2 Fppf descent | Stacks more-morphisms 02W8 lines 8204–8237; bootstrap 04SK and 0ADV lines 747–803 | Quasi-finite separated morphisms and algebraic-space descent are supported. Algebraic spaces allow descent beyond schemes. |
| 1.15 Torsors and multiplicative group | Stacks spaces-groupoids 04TY line 320; étale-cohomology 03P8 lines 1263–1276; `poonen-2017 lines 6457–6468,7482–7539`, Theorems 5.12.14,6.5.9–10 and Remark 6.5.11, printed pp.154,180–182 | Local triviality, triviality iff section, fppf representability as spaces and `H¹(G_m)=Pic` agree. Non-smooth group schemes require fppf topology. |
| 1.16 Contracted products | `poonen-2017 lines 6469–6522,7529–7557`, §§5.12.5,6.5.6, printed pp.154–156,182–183 | The action `(t,x)g=(tg,g⁻¹x)` and inverse bitorsor conventions match. Poonen's scheme representability uses affine/quasiprojective hypotheses; the roadmap's broader sheaf/space formulation uses its algebraic-space descent. |
| 1.21 Quotient/root stacks | Stacks spaces-groupoids 044Q line 1135, 044R/044S lines 1151/1174, 04M9 line 1302, 044U line 1360, 044X line 1467; `cadman-root-stacks lines 87–125,197–244`, §§2.1–2.2, printed pp.2–7 | Triples consisting of a line bundle, section and power identification fix the root object. Cadman's DM assertion requires invertible order; the wild fppf stack here is not asserted DM. |
| 1.25 Galois gerbs | `kisin-modp lines 1550–1630`, §§3.1.1–3.1.2 | Semilinearity, continuity through open stabilizers, descent and centralizer/transporters match. Neutral and nonneutral objects are not conflated. |
| 2.7 Supports/local cohomology | Stacks cohomology 0A39 line 1669, 0G6Y line 3652 and lines 3726–3767; dualizing 0954 line 507, 0955 line 754, 0AVZ line 809, 0BUW line 857; local-cohomology 0A6T lines 52–82 | Power torsion versus geometric support is distinguished outside Noetherian/finite-generation hypotheses. Flat base change and the localization triangle keep their ring hypotheses. |
| 2.17 Pro-étale foundations | `bhatt-scholze-proetale lines 604–620,652–668,701–718,755–768,798–817,852–865,1361–1383`, §§2.4,3.1, Props.3.1.10,3.2.3,3.3.3,4.2.8 | Repleteness, weakly contractible affine covers and derived completeness use the actual pro-étale site. Coherent weakly contractible objects supply the asserted generation; arbitrary étale topoi do not satisfy the same property. |
| 2.22 Azumaya/Brauer | `grothendieck-brauer-i lines 370–422,498–525`, Thm5.1 and Thm6.1; `grothendieck-brauer-ii lines 129–189,248–278`; Stacks 0A2J/0A2L lines 4375–4420, 03PL/03PM lines 1410–1440; `harari-etale-brauer lines 1907–1912,3022–3034`, Remark3.35/Thm7.1, pp.53,84–85 | Faithfulness, torsion qualifications, invertible Kummer order and the constant-unit hypothesis are retained. Equality locator requires R04. The non-quasi-compact disconnected example is correctly excluded from a uniform torsion bound. |
| 3.2 Riemann–Hurwitz and degree bounds | Stacks curves 0C1C/0C1D/0C1F lines 1081–1123; genus-zero results lines 811–877; 0CDU line 1576; 0E3A–0E3D/0H2V lines 2454–2521; varieties 0AYZ line 4552 | RH requires generically separable maps and the different, not only tame ramification indices. The unpointed conic and strict degree inequalities are handled. |
| 3.3 Vector-bundle degree/duality | Stacks curves 0BS2/0BS3/0BS4 lines 282–338, 0B5E line 502, 0C1A line 696; varieties 0AYR/0AYS/0AYX/0DJ5/0AYY lines 4401–4551 | Euler degree subtracts rank times `χ(O)`; the duality statements distinguish vector bundles from arbitrary coherent modules. Degree pullback includes inseparable finite maps. |
| 4.3 Deformation functors | Stacks formal-defos 06GS/06GT lines 641–653, 06HW line 1180, 06HX/06HY lines 1252–1268, 06IG/06IH lines 1692–1715, 06J2/06J4/06J6/06J7 lines 2353–2437, 06J9/06JA lines 2498–2509, 06JI lines 2615–2626; `schlessinger lines 205–229`, Thm2.11 | `F(k)` singleton, small-extension surjectivity, tangent bijectivity/finiteness, and the extra condition for prorepresentability are separate. Groupoid (RS) is not silently substituted for the weaker hull hypotheses. |

The source check also directly confirmed Stacks 03MJ's chart formulation (spaces-morphisms lines 1940–2021) and generic flatness over an arbitrary integral base (morphisms 052A lines 2282–2316). Neither the non-surjectivity of the target chart nor the absence of base Noetherianity is a defect under those precise statements.

**Computed adversarial table: all 75 Lean theorem declarations.** Names are relative to `TauCetiRoadmap.SchemeAndStackFoundations`, except the two root `IsAzumaya` exports. “Pass” means the displayed instance agrees, not that the theorem has been formally proved. Negative controls explain which hypothesis excludes the wrong model. The result/change column also records the finding when one applies.

| Statement | Instances tried | Values on the two sides / excluded model | Result; change |
|---|---|---|---|
| `Proj.isPullback_baseChange` | `R[x,y]`, field extension; zero positive-degree algebra | Both base-change schemes are `ℙ¹_R′`; both Proj schemes are empty in the second case. Degree-zero algebra `k×k` retains two components. | Pass; none |
| `PseudoCoherence.isPseudoCoherentSheaf_iff_affineOpens` | `A=k[ε]/ε²`, `M=k`; infinite free module | Resolution differentials are multiplication by `ε`, with positive homology zero and `H₀=k`; the infinite free module is not finitely generated on either side. | Pass; none |
| `flat_over_dedekind` | Identity DVR; closed special point | Identity has zero torsion and is flat; the closed point has `π·1=0`, is not flat, and its image is not dense. | Pass; none |
| `unibranch_finite_components` | Two copies of `Spec k` over `Spec k` | Each component has one point and is open/closed; its restricted map has finite étale degree one. | Pass; none |
| `Henselization.neighbourhood_isFiltered` | `(ℤ,(5))`, localizations at 2 and 3 | A common target is `ℤ[1/6]`; every residue algebra is `𝔽₅`. Localizing at 5 instead gives residue zero. | Pass; none |
| `Henselization.neighbourhood_essentiallySmall` | The same neighbourhoods; `I=0` | Finite polynomial presentations represent the objects in universe `u`; with `I=0`, every allowed algebra map is an isomorphism, giving one isomorphism class. | Pass; none |
| `Henselization.henselian` | `I=0`, `I=1`, complete DVR | Colimits are respectively `R`, zero, and the complete DVR; extended ideals are `0`, `0`, and `(π)`. | Pass; none |
| `Henselization.existsUnique_lift` | `(ℤ,(5))→(ℤ₅,(5))`; zero ideal | Each compatible map has exactly one extension; for zero ideal the extension is the original map. | Pass; none |
| `Henselization.fixed_of_henselian` | `(k[[t]],(t))` | The structure map and its unique lift compose to identity in both directions; residue ring is `k` on both sides. | Pass; none |
| `Ring.IsJapanese.of_complete_local` | Field; `k[[t]]⊂k[[u]]`, `t=u^p` | Integral closures have ranks one and `p`; the inseparable extension is included. | Pass; none |
| `Ring.IsNagata.of_complete_local` | `k[ε]/ε²` | Its only prime quotient is `k`, which is Japanese; nonreducedness does not invalidate Nagata. | Pass; none |
| `Excellence.IsQuasiExcellentRing.isNagata` | Dual numbers; infinitely many polynomial variables | Dual numbers satisfy both predicates; the infinite polynomial ring fails Noetherianity and hence both hypotheses/conclusion predicates. | Pass; R05 changes locators only |
| `smallEtaleBaseChange_isEquivalence` | Nilpotent thickening; `𝔽₄→𝔽₂` on spectra | Étale covers of dual numbers and their reduction lift with identical degrees. `𝔽₄⊗𝔽₂𝔽₄=𝔽₄×𝔽₄`, so the field map is excluded as not universally injective. | Pass; none |
| `universalHomeomorphismEtaleEquivalence_coverPreserving` | Two-copy covering of a point and its thickening | Both families cover their single underlying base point; empty family does not cover either nonempty base. | Pass; none |
| `universalHomeomorphismEtaleEquivalence_id` | Affine étale `B/A` | `B⊗_A A→B` sends `b⊗a` to `ba`; projection and identity comparison agree on every generator. | Pass; none |
| `universalHomeomorphismEtaleEquivalence_comp` | Two composable nilpotent reductions | Both comparisons send `b⊗a⊗c` to the same element of the iterated tensor product; both projections to the base are `c`. | Pass; none |
| `universalHomeomorphismEtaleEquivalence_baseChange` | Dual-number reduction followed by a field extension | Both routes give `K` from `k[ε]/ε²` with `ε↦0`; the two specified base projections coincide. | Pass; none |
| `FlatAnnihilator.annihilator_flat_baseChange` | `M=R/(t)`, `S=R[u]` | Both annihilators are `(t)S`. For `M=0`, both are the unit ideal. | Pass; none |
| `FlatAnnihilator.element_annihilator_flat_baseChange` | `m=2∈ℤ/4`, nonflat `ℤ/4→ℤ/2` | Mapped annihilator is zero, while `1⊗2=0` has unit annihilator; flatness excludes the mismatch. For a polynomial extension both are `(2)`. | Pass; remove unused test-only instance, R02 |
| `SchemeFrobenius.schemeCharP_spec_iff` | `𝔽₂`, `ℤ`, zero ring, `p=2` | Values are true/true, false/false, true/true. Empty spectrum does not force a nontrivial zero ring. | Pass; none |
| `SchemeFrobenius.schemeCharP_iff_structureMap` | `Spec 𝔽₄`; `Spec ℤ` | Exactly one `𝔽₂` structure map in the first case and none in the second, agreeing with intrinsic characteristic. | Pass; none |
| `SchemeFrobenius.schemeCharP_of_hom` | `𝔸¹_𝔽₃→Spec 𝔽₃`; empty source | Every stalk kills 3; the empty-source assertion is vacuous and its structure map unique. | Pass; none |
| `NormalSchemes.IsNormalScheme.isReduced` | Normal field scheme; dual numbers | Nilradicals are zero and `(ε)` respectively; the latter's stalk is not a domain and fails normality. | Pass; none |
| `NormalSchemes.IsNormalScheme.isDiscreteValuationRing_stalk` | Closed point and generic point of `𝔸¹_k` | Closed-point stalk `k[t]_(t)` has coheight one and DVR uniformizer `t`; generic field has coheight zero and is excluded. | Pass; none |
| `NormalSchemes.coheight_eq_one_of_coheight_apply_eq_one` | Finite map `t=u²` | The origin has coheight one on both curves; the generic points have coheight zero. | Pass; none |
| `NormalSchemes.coheight_apply_eq_one` | Cusp normalization over `k` | Origin `t=0` maps to the cusp maximal ideal; both coheights are one, even though the target is not normal. | Pass; none |
| `NormalSchemes.coheight_apply_eq_one_of_isNormalScheme` | DVR extension `t=u³` | Maximal ideals have height one on both sides; normal target supplies the alternate hypothesis. | Pass; none |
| `NormalSchemes.codimensionOneMap_surjective` | `t=u²` over an algebraically closed field, char≠2 | Nonzero closed points have two preimages, the origin one, and every target point of codimension one is reached. | Pass; none |
| `NormalSchemes.ramificationIdxAt_comp` | `t=u²`, `u=v³`; characteristic 2 as well | Length of `k[v]/v⁶` is 6; product of lengths is `3·2=6`. No separability assumption is needed. | Pass; none |
| `NormalSchemes.exists_regularSystem_of_quotient` | `k[[x,y]]/(x)`; ideal `(x²)` | First case has `(d,c)=(2,1)` and generator `x`; second quotient has dimension one but embedding dimension two, so regularity fails. | Pass; none |
| `Spaces.isAlgebraicSpace_pullback` | `Spec(k×k)×Spec k Spec(k×k)` | Pullback has four points, agreeing with the product of the two two-point functors. | Pass; none |
| `Spaces.EtaleLocal.baseChange` | Étale split cover and arbitrary base change | A degree-two étale map stays degree two; its chart maps remain étale. Source-locality excludes using surjectivity as a counterexample property. | Pass; none |
| `Groups.Action.free_iff_mono` | `S₃` acting on itself; trivial action on a point | Pair map has fibres of size one in the first case and six in the second; freeness is respectively true and false. | Pass; none |
| `Groups.Torsor.trivial_iff_section` | Trivial `C₂` torsor; `Spec ℂ/ℝ` | First has a section and an isomorphism; second has neither an ℝ-point nor an isomorphism to two real points. | Pass; none |
| `Groups.torsorRepresentability` | `μ_p` torsor `y^p=t` over `k[t,t⁻¹]` | Affine representing algebra is free of rank `p`; after adjoining a root the torsor is trivial. It is fppf, not étale. | Pass; none |
| `Groups.artinBootstrap` | Representable point with a two-copy cover | Every base-change fibre is two copies of the test scheme; flat lfp cover gives the original one-point space. | Pass; none |
| `GaloisGerbs.galois_descent_affine` | `ℂ[x]`, conjugation on coefficients | Invariants are `ℝ[x]`; `ℂ⊗ℝℝ[x]→ℂ[x]` sends `z⊗f` to `zf`, and conjugation sends both to `bar(z)f`. | Pass; none |
| `SiteCohomology.noetherianSpace_vanishing` | One point; `ℙ^d`, `O(−d−1)` | Point has `H⁰=M`, `Hⁱ=0` for `i>0`; projective space has nonzero `H^d=k` and zero above `d`. | Pass; none |
| `QCoh.higherDirectImage_vanishing` | `ℙ¹_A→Spec A`; unbounded disjoint family | Uniform bound `N=2` works; `H¹(O(−2))=A`. For `∐ℙⁿ→∐Spec k`, each degree `n` is nonzero, and the base is not affine. | Pass; R01 removes duplicated flat base change only |
| `QCoh.isAffine_of_H1_vanishing` | `𝔸¹_k`; `ℙ¹_k` | All positive QCoh cohomology vanishes on the affine line; `H¹(ℙ¹,O(−2))=k` violates the premise for the projective line. | Pass; none |
| `Supports.localCohomology_degreeZero` | `I=0`, `I=1`; DVR and `M=R/(π²)` | Torsion submodules and `H⁰_I` are respectively `M`, zero, and all of `R/(π²)`. | Pass; none |
| `Supports.localCohomology_flat_baseChange` | DVR, `I=(π)`, localization to fraction field | `H¹_I(R)=K/R`; `K⊗_R(K/R)=0`, and support after localization is empty, also giving zero. | Pass; none |
| `Etale.artinSchreier_vanishing` | `Spec 𝔽_p`, `𝔸¹_𝔽_p` | `H²(ℤ/p)=0`; on the field `H¹=𝔽_p/(F−1)𝔽_p=𝔽_p`, so the degree-two threshold matters. | Pass; none |
| `Etale.brauer_functionField_curve_trivial` | `k(t)` for algebraically closed `k`; algebraic extensions | Every Brauer class is the identity; matrix algebras give class one. `ℝ` has a nonzero Hamilton class and fails the algebraically closed base condition. | Pass; none |
| `Nisnevich.zariskiTopology_le_nisnevichTopology` | `D(t),D(1−t)` covering `𝔸¹` | Each point lies in an open with identical residue field; the opens cover because `t+(1−t)=1`. | Pass; none |
| `Nisnevich.nisnevichTopology_le_etaleTopology` | Split degree-two cover; `ℂ/ℝ` | Split cover lifts the residue field and is étale; `ℂ/ℝ` is étale but has no degree-one residue lift, so the reverse inclusion fails. | Pass; none |
| `Nisnevich.ElementaryDistinguishedSquare.isPullback_of_isSheaf` | Two-point discrete scheme, one point open, other point as `V` | Intersection is empty; for a sheaf `F`, `F(X)=F({a})×F({b})` and `F(∅)=1`, the displayed fibre product. | Pass; none |
| `Proetale.isReplete_proetale` | Tower `ℤ/pⁿ` with quotient maps on a point | Limit is `ℤ_p`; projection to `ℤ/pⁿ` is onto, with fibre `pⁿℤ_p`. The tower retains all compatible choices. | Pass; none |
| `Coherent.DQCoh.affineEquiv` | `Spec k`, coefficient `k[0]`; dual-number module | Both categories give `Hom(k,k)=k`; the periodic dual-number resolution gives Ext dimension one in every nonnegative degree on both sides. | Pass; none |
| `IsAzumaya.exists_etale_matrix_splitting` | `M₂(k)`; Hamilton algebra over ℝ | First splits over `k` with `d=2`; second over `ℂ`, also `M₂(ℂ)`, both of module rank four. | Pass; none |
| `IsAzumaya.etale_matrix_splitting_of_finite_cover` | Base `k×k` with its two component charts | Product of the chart rings is `k×k`; product of the matrix algebras is `M_d(k×k)`. Empty cover is allowed only on the empty base. | Pass; none |
| `Brauer.isAzumaya_iff_positive_fibres_mulLeftRight` | `M₂(k)`, zero algebra over `k`, and `k` over `k×k` | Positive ranks are 4, 0 and `(1,0)`; bimodule-map dimensions are 16→16 for `M₂`. Zero algebra's 0→0 bijection does not give faithfulness. | Pass; none |
| `Curve.isAffine_or_isProper` | `𝔸¹`, `ℙ¹`, zero-dimensional point | Affine/proper flags are `(true,false)`, `(false,true)`, `(true,true)`; dimension one excludes the last. | Pass; none |
| `Curve.genus_baseChange` | Smooth elliptic curve and any field extension | `h⁰=1`, `h¹=1` before and after. On `ℙ¹`, genus is zero on both sides. | Pass; none |
| `Curve.vectorBundleDegree_add_of_shortExact` | Split sequence `O(a)→O(a)⊕O(b)→O(b)` on `ℙ¹` | Euler-degree values are `a`, `a+b`, `b`; rank zero gives zero. | Pass; none |
| `Curve.vectorBundleDegree_pullback` | `t=u^n` on `ℙ¹`, including `n=p` | Pullback of `O(m)` is `O(nm)`; both degrees are `nm`, including the inseparable case. | Pass; none |
| `Curve.cohomologyDim_zero_structureModule` | Pointless real conic | Global functions are ℝ, dimension one although there is no rational point. A disconnected two-point scheme gives dimension two and fails geometric integrality. | Pass; none |
| `Curve.genus_of_finite_etale` | Connected étale double cover of genus two; elliptic isogeny | First gives `g_X−1=3−1=2(2−1)=2`; elliptic case gives `0=n·0`. | Pass; none |
| `Curve.cohomologyDim_one_eq_zero_of_degree_gt` | `O(−1)` and `O(−2)` on `ℙ¹` | At degree −1, `H¹=0` and `h⁰=−1+1=0`; at boundary −2, `H¹=k`, and strict inequality fails. | Pass; none |
| `Picard.lineBundleClass_spec_equiv_pic` | Field and zero ring | Each side has one class; for an invertible ideal over a Dedekind domain, both sides retain its ideal class rather than identifying it with rank alone. | Pass; none |
| `Formal.smooth_iff_formallySmooth` | `𝔸¹_k→Spec k`; origin into `𝔸¹` | Affine coordinates lift freely in the first case. The second demands `0=ε` in the dual numbers and fails on both sides. | Pass; R03 retains the negative Check as prose |
| `Formal.etale_iff_formallyEtale` | Identity; affine-line projection | Identity has exactly one lift; projection has lifts differing by `ε`, so uniqueness and étaleness both fail. | Pass; none |
| `Formal.grothendieck_existence` | `X=Spec k[[t]]`, modules `A/(tⁿ⁺¹)` | The compatible system algebraizes to `A`, with each reduction equal to the prescribed module. Zero system algebraizes to zero. | Pass; none |
| `Formal.grothendieck_existence_fullyFaithful` | Multiplication by compatible truncated series | Endomorphism limit is `lim A/(tⁿ⁺¹)=A`; exactly one series has all prescribed residues. | Pass; none |
| `Formal.algebraize_hom` | `Spec A→𝔸¹_A`, `A=k[[t]]` | Compatible coordinate residues determine exactly one element of `A` and one scheme map over `A`. | Pass; none |
| `Formal.strictTransform_supportComparison_affine` | `I=(x,y)`, `x²m=0`, `y³m=0` | Every monomial of degree four kills `m`, so `I⁴m=0`; the converse gives separate power annihilation. | Pass; none |
| `Formal.generic_flatness` | `k[t,x]/(tx)→k[t]` | Over `D(t)`, `x=0` and the algebra is `k[t,t⁻¹]`, flat. Special fibre has dimension one versus generic dimension zero. | Pass; no base-Noetherian condition added |
| `Formal.resolution_of_curves` | Cusp `k[t²,t³]`; field | Normalization is `k[t]`, finite birational and regular; the field is unchanged, dimension zero. | Pass; none |
| `Formal.DeJong.node_local_structure_dvr` | `a=0`, `a=επ²` | First is `uv=0`; second becomes `u′v=π²` by `u=εu′`. Thickness is two, not one. | Pass; none |
| `Formal.DeJong.node_local_structure_dvr_nonzero_of_generic_smooth` | `uv=0`; `uv=π²` over the fraction field | First has a node and is not smooth; in the second, `u,v` cannot both vanish and the generic fibre is smooth. | Pass; none |
| `Formal.DeJong.curve_fibration_field_reduction` | `Spec ℂ` over ℝ | Base change is `Spec(ℂ×ℂ)`; one component is geometrically integral over ℂ and maps isomorphically to the original ℂ-scheme over ℝ. | Pass; none |
| `Formal.DeJong.alteration_theorem` | Cusp and its singular point | Normalization gives `𝔸¹`; compactification is `ℙ¹`; boundary plus inverse image is `{0,∞}`, an SNC divisor. | Pass; none |
| `Formal.DeJong.semistable_alteration_theorem` | Identity trait; ramified base change of `xy=π` | Identity trait has one reduced special-fibre component. With `π=ϖ²`, equation is `xy=ϖ²`, singular; a further modification is necessary and allowed. | Pass; none |
| `Chow.CH_coprod` | Infinitely many points; infinitely many affine lines | `CH₀(∐ Spec k)=∏ℤ`, including `(1,1,…)`; `CH₀(∐𝔸¹)=∏0=0`. A direct sum would lose the first cycle. | Pass; R03 changes labels only |
| `weil_bound` | `ℙ¹_𝔽_q`; Hermitian cubic over `𝔽₄` | First deviation is `|(q+1)−(q+1)|=0`; cubic has genus one and nine points, giving `|9−5|=4=2·1·√4`. | Pass; none |

**Additional README definitions, conventions, source-sample and end-theorem computations.** These include all seeded sections, all nonstatable end-theorem families, and the cases touched by findings. Coefficients and fields are as specified in each row; no characteristic-zero calculation is silently used for the wild case.

| Statement | Instances tried | Computed values / wrong model excluded | Result; change |
|---|---|---|---|
| §0.3 relative Proj and degree zero | Two projective lines over `k` | Degree-zero algebra is `k×k`; Veronese retains `k×k`, so both components remain. Replacing degree zero by `k` changes the object. | Pass; none |
| §0.4 coherence | Infinite polynomial ring, ideal generated by all variables | Quotient is cyclic but the kernel needs infinitely many generators; finite generation does not give finite presentation. | Pass; none |
| §0.5 pseudo-coherence | Dual-number residue module | Resolution `…→A --ε→ A --ε→ A→k` is exact; projective dimension is infinite, so replacing pseudo-coherent by perfect is wrong. | Pass; none |
| §0.10 geometric unibranchness | Cusp, split node, real node `x²+y²=0` | Normalization branches are respectively 1,2,1; the last residue extension is ℂ/ℝ of separable degree two, so geometric unibranchness fails. | Pass; none |
| §0.10 finite-component hypotheses | Eventually constant `𝔽₂` sequences | Each element satisfies `e²=e`; the finite-support ideal has no finite generating set. Local field stalks do not force global Noetherianity. | Pass; none |
| §0.20 Japanese versus universally Japanese | `k[t₁²,t₁³,…,t_r²,t_r³]` | Normalization generated by `2^r` monomials with exponents 0 or 1; for `r=0,1` the counts are 1,2. Countably many variables admit no finite such family. | Pass; none |
| §0.21 geometric regularity | `L=k(a^(1/p))`, imperfect `k` | `L` is a field, but `L⊗_kL≅L[z]/z^p` has a nonzero nilpotent; regular does not imply geometrically regular. | Pass; R05 locator |
| §0.21 regular locus and excellence | Field, zero ring, dual numbers | Regular loci are one point, empty, empty; all three rings are excellent. An empty regular locus does not imply failure of J-2. | Pass; R05 locator |
| §0.24 perfection | Dual numbers and `𝔸¹_𝔽_p` | Perfections are `Spec 𝔽_p` and spectrum of `𝔽_p[t^(1/p^∞)]`; `ε` dies and missing roots are added. | Pass; none |
| §0.27 ideal quotients versus sections | Two points in `ℙ¹_k` | `Γ(O)=k→Γ(O_Z)=k²` is diagonal, not onto; quotient of global sections is not the sheaf quotient's sections. | Pass; none |
| §0.29 Frobenius conventions | `𝔽₄/𝔽₂`, smooth affine line | Absolute `F` is nonidentity on `𝔽₄`, `F²=id`; relative Frobenius on the line has rank `p`, while the `q`-power iterate fixes `𝔽_q`. | Pass; missing scheme carrier named in docstring |
| §1.1 algebraic-space sheaf condition | Constant two-element presheaf; represented empty space | Constant presheaf has two values on the empty scheme; a sheaf must have one. Represented empty space has exactly that terminal empty-test value. | Pass; none |
| §1.2 descent | Nontrivial quadratic field torsor and split base change | `L⊗_kL=L×L`; the two descended geometric points carry exchanged descent data, recovering `Spec L`, not two rational points. | Pass; none |
| §1.10 small étale category | Algebraic space which is not a scheme | Identity object pulls back to the whole space; schemes-only objects would omit it. Deleting the unused Lean carrier changes zero theorem types. | Pass mathematics; R02 deletion |
| §1.14 action/stabilizer | Scaling `𝔾_m` on `𝔸¹`; `μ_p` | Stabilizer equation is `(λ−1)x=0`; at zero it is all `𝔾_m`, elsewhere trivial. `μ_p` has length `p` although only one geometric point. | Pass; none |
| §1.15 torsor/H¹ | `y^p=t`; trivial torsor at `t=1` | First has no section over `k(t)` and class nonzero; second has root 1 and class zero, even though its group fibre is nonreduced. | Pass; none |
| §1.16 contracted-product sign | Frame torsor of `O(1)` | `(e,a)→e(a)` is invariant under `(eg,g⁻¹a)` and gives `O(1)`; using the same action on both factors would introduce `g²` and fail invariance. | Pass; none |
| §1.16 twisting versus forms | Trivial `C₂` action on a point | Both torsor classes twist to the same point. Classifying twists by `H¹(C₂)` is not injective unless the correct automorphism group is used. | Pass; none |
| §1.18 stack fibre products | Two copies of a point over `BG` | The 2-fibre product retains the isomorphism and is `G`, with six points for `S₃`, not one point. | Pass; none |
| §1.21 root stack | Root of a DVR parameter; root order 1 and `p` | Atlas equation `z^n=π` has special ring `k[z]/z^n`; order 1 gives the original scheme, order `p` in characteristic `p` has non-étale inertia. | Pass; none |
| §1.23 Keel–Mori and tameness | `Bμ_p` and `B(ℤ/p)` over `𝔽_p` | Both coarse spaces are a point. Invariants for diagonalizable `μ_p` are exact; for `ℤ/p`, the augmentation representation gives failure of exact invariants. Finite inertia alone is not tameness. | Pass; absent stack carrier named |
| §1.25 gerb centralizer/descent | Neutral `𝔾_m` gerb over ℝ | Equivariant centralizer descends to `ℝ×`; after ℂ base change it is `ℂ×`. Identity and squaring on the kernel admit no conjugating element because conjugation is trivial. | Pass; none |
| §2.1 cohomology pullback | Identity site and constant sheaf ℤ | Unit and coefficient comparison give identity on `H⁰=ℤ`. Replacing the coefficient map by multiplication by 2 gives 2, not identity. | Pass; specified coefficient map matters |
| §2.5 filtered colimits | Finite discrete space; ℕ with finite-support sheaves | Finite products commute. On ℕ the comparison is `⊕ℤ→∏ℤ`, missing `(1,1,…)`. | Pass; none |
| §2.6 flat base change | `ℙ¹_A,O(−2)`, flat `A→B` | Both modules are `B`, via `H¹⊗B=A⊗B`; JacobianChallenge Layer C already supplies exactly this map. | R01; import, do not re-plan |
| §2.7 support and powers | `R=k[x_i]/(x_i²)`, `I=(x_i)` | `V(I)=Spec R`, so geometric support includes `1`; no power `I^n` kills 1, since products of `n` distinct variables survive. | Pass; finite-generation/Noetherian qualification essential |
| §2.7 localization triangle | DVR `R`, `I=(π)` | `H⁰_I(R)=0`, `H¹_I(R)=K/R`; the quotient follows from `R→K`. For unit ideal, both groups vanish. | Pass; none |
| §2.12–§2.13 Nisnevich/Brown–Gersten | Two-point discrete scheme | A constant presheaf with `F(∅)=A[1]` is not reduced; a sheaf's empty value is zero and its two-point value is the product of point values. | Pass; reducedness retained |
| §2.17 étale versus pro-étale | Tower of roots of unity over a number field | No finite extension contains roots of every `ℓ`-power order, so its compatible tower is zero; the pro-étale cover adjoining all roots has nonzero `ℤ_ℓ(1)`. | Pass; no étale repleteness asserted |
| §2.18 derived tensor | `ℤ/2⊗ᴸ_ℤℤ/2` | `H⁻¹=ℤ/2`, `H⁰=ℤ/2`; ordinary tensor sees only degree zero. | Pass; none |
| §2.18 derived gluing | `α:O→O(−2)[1]` on `ℙ¹` | Global Hom is `H¹(O(−2))=k`; its restriction to each affine chart is zero. On `O⊕O(−2)[1]`, `1+N≠1` but `N²=0`. | Pass; total-site descent retains this automorphism |
| §2.19 upper shriek versus right adjoint | `𝔸¹_k→Spec k` | Upper shriek is `O[1]`; the right adjoint is `Hom_k(k[t],k)` in degree zero. They are not isomorphic. | Pass; absent geometric functor named |
| §2.19 regular immersion formula | Origin in `𝔸¹`, coefficient `k` | `Li* k` has degrees −1,0; `i!k=RHom(k,k)` has degrees 0,1. Tensor by `k[−1]` shifts the first to the second. | Pass; derived pullback retained |
| §2.19 global lower bound | `∐ℙⁿ_k→∐Spec k` | Component `n` has right-adjoint coefficient `O(−n−1)[n]`, nonzero in degree `−n`; no uniform lower bound exists. | Pass; qcqs-scheme existence theorem excludes this base |
| §2.20–§2.21 dualizing normalization | `ℙ¹_k`, DVR; `k[x,y]/(x,y)²` | Dualizing complexes are `O(−2)[1]`, `R[1]`; the last Artin ring has socle dimension two and its dualizing module is not an invertible module. | Pass; Gorenstein qualification necessary |
| §2.22 Brauer units and torsion | `𝔾_m/ℝ`; infinitely many degree components | Quaternion `(−1,t)` evaluates to zero at 1 and Hamilton at −1; nonconstant unit `t` violates the constant-unit condition. Classes of unbounded order on disjoint components have no common annihilator. | Pass; R04 locator |
| §3.2 RH | `z↦z²` on `ℙ¹`, char≠2 | `−2=2(−2)+2`; two ramification points each contribute one. Frobenius has zero differential and is excluded by generic separability. | Pass; none |
| §3.2 genus-zero characterization | Pointless real conic | Genus is zero, rational-point set empty, line-bundle degrees `2ℤ`; it is not `ℙ¹_ℝ`. | Pass; rational-point requirement retained |
| §3.3 degree and duality | `O(a)⊕O(b)` on `ℙ¹`; nodal local ring | Degree is `a+b`; `O(1)⊕O(−1)` has degree zero but is not trivial. At a node, `dim Ext¹(k,k)=2` while `dim Hom(k,k)=1`, excluding naive bundle duality for arbitrary coherent sheaves. | Pass; none |
| §3.4 norm | Degree-two map of projective lines | Norm of `O(1)` has degree one; norm of pullback `O(1)` has degree two. Determinant of pushforward alone has an extra determinant-of-structure-sheaf factor. | Pass; none |
| §3.5 graded Picard sign | Degrees `(0,1)` on `Spec(ℚ×ℚ)` | Commuting the two graded factors gives `(1,−1)`; a sign supported at one closed point of `𝔸¹` is not locally constant. | Pass; none |
| §3.6 Picard torsors/Brauer obstruction | Real conic, degree one | `Pic` degrees are `2ℤ`, Picard-scheme component degrees are `ℤ`; obstruction of degree one is the nonzero Hamilton class. | Pass; missing carrier named |
| §3.7 sections | Elliptic curve, trivial/nontrivial degree-zero line | `h⁰(O)=1`; `h⁰(L)=0` for nontrivial degree-zero `L`. Projectivizing the zero section space gives empty, not a point. | Pass; none |
| §4.1 thickening | `k[x]/x²`, `k[x]/x³`, `k[x]` | Kernels to `k` have square zero, nonzero square `(x²)`, and nonnilpotent generator respectively. All distinctions in the Checks survive. | Pass; none |
| §4.3 tangent functor | `F=h_{k[[t₁,…,t_n]]}` | Tangent values are `k^n`; evaluating on `k⊕V` gives `Hom_k(k^n,V)`, dimension `n·dim V`. | Pass; none |
| §4.3 small extension | `k[t]/t³→k`; factor through `k[t]/t²` | First kernel has dimension two and is not annihilated by the maximal ideal; each successive length-one kernel is annihilated. | Pass; none |
| §4.4 Schlessinger | Formal affine space and its zero-dimensional case | Hull is the power-series ring, tangent dimension `n`; for `n=0`, every value is a singleton and hull is `k`. Fibre-product comparison is bijective. | Pass; not forced through a free predicate |
| §4.5 obstruction | Deforming `xy=0`, put `x=y=ε` over `k[ε]/ε³` | Product is `ε²≠0`; there is a genuine obstruction, while reduction modulo `ε²` gives product zero. | Pass; none |
| §4.7 adic systems | Correct powers of `(t)`; constant higher thickening | Correct kernels are `(t^(n+1))`; taking every level after 0 equal to `k[t]/t³` gives transition kernel zero where the required power is `(t²)≠0`. | Pass; compatibility laws exclude wrong model |
| §4.8 formal schemes | `Spf k[[t]]`, ideals zero and unit | First has one point versus two points of `Spec k[[t]]`; zero ideal gives ordinary Spec, unit ideal empty formal spectrum. | Pass; none |
| §4.9 formal functions | `A=k[[t]]`, finite special fibre and `F=k` | `H⁰=k`, higher cohomology zero; completion and the limit of reductions are both `k`, despite nonflatness over `A`. | Pass; supplier proper coherence has no flatness assumption |
| §4.11 strict transforms | Closed origin with open complement; whole open | Schematic closure from the complement is empty, while from the whole scheme it is the original origin. Support alone would miss nilpotent structure. | Pass; none |
| §4.14 Hom/Isom | Self-maps of `ℙ¹`, degree one | Invertible 2×2 matrices modulo scalar give dimension three, `PGL₂`; zero determinant is excluded by the open isomorphism condition. | Pass; previous R02 repaired |
| §4.15 stable-curve boundary | `(g,n)=(0,3)` and `(1,1)` | First moduli space is `Spec ℤ`, dimension zero; second includes a nodal stable curve. Smooth generic fibres cannot be imposed on every family. | Pass instance; sources listed below remain unavailable |
| §4.15 level covers | Levels 15 and 9 | `D(3)∪D(5)=Spec ℤ`; `D(3)∪D(9)=D(3)` misses characteristic 3. | Pass instance; source certification limited below |
| §4.16 projection | Blow-up of origin of `𝔸²` | In chart `(x,t)↦(x,xt)`, exceptional fibre is `ℙ¹`; the undefined slope `0/0` is replaced by that fibre, not assigned a scalar. | Pass; none |
| §4.17 imperfect fields | Characteristic-two regular nonsmooth conic | After adjoining square roots the equation becomes a doubled line; its reduced component is `ℙ¹`. Regularity over the base did not imply geometric smoothness. | Pass; none |
| §4.18 nodal normalization | `uv=0`, `uv=π`, `uv=π²` | Persistent node, regular total space, and singular thickness-two total space respectively; rescaling by a unit changes no thickness. | Pass; none |
| §4.19 split node modifications | `uv=st`; `uv=s³t` | Blowing up `(u,s)` resolves the split ordinary node in regular affine charts; the first analogous step for exponent three leaves `ab=st`, still requiring its next step. | Pass; none |
| §4.19 nonsplit boundary | `U²−aV²−st` without `√a` | Individual geometric components are not defined over the base; blowing up a Cartier component ideal is the identity, so splitting data cannot be omitted. | Pass; none |
| §4.20 trait extension | `𝔽_p[[t]]→𝔽_p[[u]]`, `t=u^p` | Extension is finite free of rank `p`, local and injective, but generically inseparable. The statement permits it. | Pass; none |
| §5.1 dimension conventions | Closed point and generic point of `𝔸¹` | Heights in the scheme order are 0 and 1; coheights are 1 and 0. Degree −1 cycle group is zero. | Pass; R03 prose Checks |
| §5.2 proper pushforward | Origin class in `𝔸¹` | `[0]=div(t)=0` in `CH₀(𝔸¹)` but its degree over `k` is 1; nonproper projection cannot induce this pushforward. | Pass; properness retained |
| §5.3–§5.4 Chern/projective formulas | `O(m)`; rank zero; `P(O⊕O(1))` | `c₁(O(m))` has degree `m`; rank-zero projective bundle is empty. On the ruled surface its negative section has square −1, unlike `ℙ¹×ℙ¹`. | Pass; none |
| §5.5 deformation/Gysin | Origin pulled back by `t↦t²` | Scheme fibre has length two, so Gysin multiplicity is 2, not the reduced support's 1. Normal line of a line in `ℙ²` is `O(1)`, conormal `O(−1)`. | Pass; none |
| §5.6 pullback | Constant map `ℙ¹→ℙ¹` | Pullback of `O(1)` is trivial and first Chern class is zero; taking the set-theoretic fibre of a point would give the wrong codimension. | Pass; none |
| §5.7 `K₀→G₀` | Nodal cubic and nontrivial gluing line `L_λ` | Normalization sequences give `[L_λ]−[O]=0` in `G₀`; determinant is `L_λ≠O`, so the class is nonzero in `K₀`. | Pass; regularity/resolution hypotheses essential |
| §5.7 blow-up formula | Point in `ℙ²`; codimension-one centre | First adds one `ℤ` in divisor degree; codimension-one blow-up is identity and adds zero summands. | Pass; none |
| §5.8 GRR | `ℙ¹→Spec k`, `O(m)` | `ch=1+mh`, `td=1+h`, `h²=0`; top degree is `m+1=χ(O(m))`. | Pass; missing operations named in docstring |
| §5.9 signed intersections | Distinct lines and negative of one line | `L·L′=1`, `(-L)·L′=−1`; the signed formula multiplies the effective length by −1, without trying to quotient by `1/x`. | Pass; previous R01 repaired |
| §5.9 vertical self-intersections | Blow-up of a rational special-fibre point | Matrix `[[-1,1],[1,-1]]` sends total fibre `(1,1)` to zero; exceptional square −1; quadratic value `−(a−b)²`. | Pass; previous R01 repaired |
| §5.10 Hodge index and Noether | `ℙ¹×ℙ¹`, `H=(1,1)`, `D=(1,−1)` | `H²=2`, `H·D=0`, `D²=−2`; `12χ(O)=12=8+4`. On `ℙ²`, `12=9+3`. | Pass; missing pairing named in docstring |
| §5.11 finite-field bound | Hermitian cubic over `𝔽₄` | Genus one, nine points, deviation four and bound four. Characteristic two is retained. | Pass; none |
| §5.12 Bézout | Intersecting/skew lines; twisted cubic and a plane | Length sums are 1,0,3; degree products are 1,1,3. Equality requires the appropriate proper projective intersection conditions. | Pass; none |
| Nitsure Theorem 3.7(3), source check | Nontrivial first-order degree-zero line deformation on an elliptic curve over `A=k[ε]/ε²` | Cohomology is represented by `[A --ε→ A]`; fibre dimensions are `(1,1)`, but cohomology modules are `εA` and `A/ε`, neither free, and degree-zero base-change map is zero. | Source error below; reduced-base supplier statement does not repeat it |

## Not verifiable

Six bibliography texts could not be read through the sources service. They are recorded together in `scratch/needs-references.toml`; this review is completed rather than parked. Failure to fetch is not presented as a mathematical counterexample.

- `liu-ag`: *Algebraic Geometry and Arithmetic Curves* (2002), including §9.1.14 used for arithmetic intersection. The DOI's Oxford landing page returned HTTP 403. The repaired vertical formula was checked against StableReduction's actual contract and the computed blow-up example, not certified from Liu's page.
- `fulton-intersection`: *Intersection Theory*, second edition (1998), including §§1–6 and §15 used throughout Layer 5. Bibliographic resolution found no readable legal text. Stacks comparisons and the computed Chow/Gysin/GRR examples above do not certify all Fulton locators.
- `kleiman-ampleness`: *Toward a Numerical Theory of Ampleness* (1966). DOI resolution reached the JSTOR landing page without an accessible classified open text. The stated surface criterion's exact Kleiman locator is uncertified.
- `grothendieck-tohoku`: *Sur quelques points d'algèbre homologique* (1957). Bibliographic resolution found no readable legal text. The relevant Stacks cohomology constructions were read independently.
- `cheng-lian-murayama`: *Projectivity of the Moduli of Curves*, §§1.3–1.4, Proposition 1.10, Lemmas 1.29–1.32, Proposition 1.33 and Lemma 1.44. The institutional NSF PDF request timed out; the numbering was not certified.
- `knudsen-stable-curves-ii`: *The projectivity of the moduli space of stable curves II*, Corollary 2.6 and Theorem 2.7, p.179. The publisher PDF request timed out.

The previously settled unavailable Hartshorne, SGA 4 XVI, SGA 6 and Huber citations were not reopened or requested under new keys. Exact locators in these texts remain uncertified. The Brauer II text read is the legal Bourbaki version, not an independently inspected Dix exposés printing; R04 explicitly records that distinction. Stacks references are certified by stable tags and the downloaded chapter text, not a fixed printed-book pagination.

Ownership searches covered main, packages and the supplied open checkouts. Ownership against open pull requests for which the brief supplied no files was not checked. The named AbundanceStatement and CommRingFactorizationSystems supplier contracts were resolved through the prescribed citation tools; that is not a claim to have independently audited all unprovided open work. Unread sources limit proof-detail certification; finite tests do not prove general theorems.

## Source issues

- **Error** in nitsure-quot at Theorem 3.7(3), printed p.17: the source says constant fibre cohomology dimension implies local freeness and lower-degree base change over an arbitrary Noetherian base; it should require reducedness of the base or suitable cohomology-and-base-change hypotheses; affects a stated result.
