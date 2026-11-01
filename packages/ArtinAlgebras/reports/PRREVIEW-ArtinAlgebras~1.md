# Review of ArtinAlgebras (pull request #1397 at ca98ae0)
Folder: `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/`

**Verdict:** needs changes

## R01 (P1) — Replace nonexistent pinned suppliers with owned prerequisites

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:166–169`: “The summand form of the decomposition is in Tau Ceti (`TauCeti.exists_isLocalRing_end_sum_comp_eq_id`)”.

**Claim:** the recognition proof consumes this categorical decomposition theorem as an existing supplier. It does not exist at the pinned Tau Ceti revision. No declared gap supplies it. Several other assertions about existing APIs have the same problem.

**Witness:** Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039` has module decomposition at `TauCeti/Algebra/Category/ModuleCat/KrullSchmidt.lean:73`, not the cited generic categorical decomposition. Searching the full pinned source finds no `exists_isLocalRing_end_sum_comp_eq_id`.

Also absent at that pin are the cited `TauCeti.isLocalRing_end_of_indecomposable`, `TauCeti.indecomposable_of_isLocalRing_end`, `TauCeti.jacobsonRadicalIdeal`, `TauCeti.ExactStructure.InjectiveStableCategory`, `LinearMap.auslanderReitenExtEquiv`, `TauCeti.IrreducibleMorphismQuiver`, `TauCeti.ARTranslation`, `TauCeti.IsSemiperfectRing.exists_isBasic_isMoritaEquivalent`, and `CategoryTheory.ShortComplex.ShortExact.isLeftAlmostSplit_f_iff_extClass`. `ModuleCat.arTranslate` is absent too: the existing quiver translate has a different carrier. The Lean docstring's `TauCeti.IsRepresentationFinite` is also not at this pin. These are not conclusions drawn from a newer library or an unavailable checkout.

**Repair:** correct the inventory against the pin; give each genuinely missing input a target here or an exact, declared supplier contract. In particular, own the finite-endomorphism-ring categorical decomposition needed for recognition, rather than claiming the module theorem supplies it. Reuse the actual module/local-ring declarations and radical subgroups with their hypotheses; add the missing categorical ideal/comparison work explicitly. Cite QuiverRepresentations Layer 6D–F for the field-specialized work it really plans. Do not narrow the Artin-ring results to fields. For the recognition input, test the repaired contract on `mod (ℤ/4ℤ)` (indecomposables of lengths 1 and 2) and on an idempotent-complete additive category presented abstractly rather than as `ModuleCat`; an input restricted to module objects cannot prove the latter statement.

## R02 (P2) — State the converse directions of the headline correspondences

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:416–435`; `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/Suggested.lean:189–209`. The README promises constructions that are “inverse bijections” and the converse for `gl.dim Γ ≤ 2 ≤ dom.dim Γ`.

**Claim:** the acceptance test contains only the forward dominant-dimension bound and the forward projective-dimension bound. It cannot test either converse or the asserted correspondence. These directions are statable at the pins.

**Witness:** a scratch signature successfully elaborated the converse: an Artin algebra of global dimension at most 2 admitting a finite projective-injective copresentation is an endomorphism ring of a finite additive generator over an Artin algebra.

The probe used only native `ModuleCat`, `Projective`, `Injective`, `ShortComplex.Exact`, `Module.Finite`, `Module.End`, ring equivalence, and a simple predicate for the same copresentation already written at lines 195–200. No new heavy carrier or sorry'd data was required. It was a statement/elaboration test, not a proof.

**Repair:** include both converse headlines, with the generator-cogenerator/additive-generator conditions and the reconstruction map, and state the correspondence's equivalence relation and inverse property on native data. Keep the forward results. Inventory the other headlines in the module docstring and name precisely which cannot yet be stated, including the general exact-category AR duality and valued-component result if their carriers are not retained. Replace the current “particular milestones” description with the acceptance-test contract. Test the two converse hypotheses separately: `B = k[ε]/(ε²)` has dominant dimension infinity but global dimension infinity; `End_B(B ⊕ k)` has dimension 5 over `k`, global dimension 2 and dominant dimension 2, and reconstructs the representation-finite algebra `B`. Dominant dimension alone must not imply the Auslander conclusion.

## R03 (P2) — Resolve the existing owner of commutative global dimension

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:104–106,403–410`; `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/Suggested.lean:169`.

**Claim:** the ownership paragraph assigns arbitrary-ring global dimension here without acknowledging that its commutative restriction and a comparison interface already have an owner on main.

**Witness:** `TauCetiRoadmap/PurityOfBranchLocus/README.md:164–171`, §0.3, owns this supremum; its `Suggested.lean:132–133` defines `globalDimension R` as the identical supremum over `ModuleCat R`, for `[CommRing R]`.

**Repair:** cite PurityOfBranchLocus §0.3 in scope and supplier contracts. Describe this target explicitly as its noncommutative extension and specify compatibility with the existing definition and bounds, preserving one implementation/interface when the library is built. Import the already-owned commutative results rather than planning them again. The new noncommutative theory itself belongs here. On a commutative ring the two displayed definitions reduce to the same expression; the agreement gives respectively `⊥`, `0`, `1`, and `∞` on the zero ring, a field, `ℤ`, and `k[ε]/(ε²)`. This repair preserves all four values, including the zero-ring convention.

## R04 (P3) — Attach exact locators to claims and record the references

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:155–435,470–519`, for example the Harada–Sai bound at line 363 and the correspondences at lines 416 and 426.

**Claim:** the bibliography and occasional author/chapter citations do not identify theorem numbers and pages for most of the 49 target bullets. There is no `sources.toml`. This prevents checking which source supplies each hypothesis and sharp bound.

**Witness:** `haradasai` line 652, Lemma 12, printed p. 339, states eventual vanishing for some bound. It does not state the roadmap's explicit `2^b − 1` bound. The bound was not refuted by the tests below.

**Repair:** add claim-level theorem/section/page locators and a single manifest entry per work, preserving unavailable works as uncertified where appropriate. Supply an exact locator for the sharp Harada–Sai bound. Distinguish the local-base exact-category theorem in Enomoto from the field-base theorem in Iyama–Nakaoka–Palu and state the finite-product extension route to the advertised Artinian base. The bound's negative control is a two-map chain `B → k → B` with composite multiplication by `ε ≠ 0`, while every three-map chain of nonisomorphisms between these indecomposables is zero. The correct locator must support the latter bound, not just unspecified eventual vanishing. Unread texts are listed below; their contents have not been guessed.

## R05 (P3) — Give the definitions APIs, discriminating Checks, and local dependencies

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:151–435` and worked examples at lines 437–459.

**Claim:** the eight layers are bullet catalogues without the required subsection structure, per-definition API and three Checks, per-target `*Needs:*` lines, or layer-ending Examples and Dependencies. The six worked-example bullets do not cover these obligations for each definition. The opening also lacks the required Summary and exact supplier-contract sections.

**Witness:** the class at lines 155–157 has no Checks; neither do Ext-trivial ideals at lines 254–264 or the valued translation quiver at lines 338–359. There are zero `**Checks.**` and zero `*Needs:*` lines.

**Repair:** retain the mathematics but arrange it into the required scope/conventions/supplier contracts/build/layer form. For every definition state its API and at least three discriminating tests; attach dependencies to individual targets. In particular compute the nonsplit real/complex example, rather than merely naming it: the successive valuation pairs are `(1,2)` and `(2,1)`, and the middle-term multiplicity is 1. Reversing the two dimensions would predict 2. Also distinguish the categorical radical of `mod B` (cube zero, square nonzero) from the ring radical of `End_B(B)` (square zero), and test the zero object/empty decomposition for Krull–Schmidt. These are explicit controls for the proposed repair.

## R06 (P3) — Make the README and Lean declaration names agree

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/Suggested.lean:34–209`; corresponding README target bullets at lines 155–435.

**Claim:** the README does not identify the kept Lean headline names. Of the 17 local declarations, only `IsKrullSchmidt` is identified there as this file’s declaration. The suffix `exists_equiv_iso_of_iso_biproduct` occurs as a Tau Ceti supplier citation, not as the local headline. Conversely, intended heavy objects such as `ExactStructure.Ext1` and `valuedARQuiver` are written as code identifiers without declarations in this acceptance test.

**Witness:** `hasProjectiveDimensionLE_two` at `Suggested.lean:204` and `IsFinitelyPresentedFunctor` at line 76 occur nowhere in the README. The former is the Layer 7 forward Auslander target; the latter supplies Layer 1's carrier predicate.

**Repair:** name each retained headline and its necessary definition at the matching README statement. Describe heavy future constructions in prose with intended signatures, without claiming an existing local declaration. Do not add API lemmas or Checks to Lean merely to satisfy a name crosswalk. Recheck the crosswalk after adding R02's headlines. This is a naming repair: it must leave the computed projective-dimension bounds 0 for `Mat₂(k)` and 2 for `End_B(B ⊕ k)` unchanged.

## Verified sound

### Scope, gate, build, signatures, and ownership

The full 519-line README and 213-line Lean file were read. The review considered all 49 target bullets, all conventions and worked examples, all 17 Lean declarations, the parent family index, and the sibling QuiverRepresentations changes on this head. The authorized-folder exclusion diff was empty. No repository file was changed. No route-specific arithmetic restriction, computational algorithm, copied source passage, sorry'd data, `set_option`, or extra repository file was identified.

The supplied gate at `ca98ae0` passed every check, including the targeted build. Independently, the required dependency check returned exactly:

    depcheck: 205 roadmaps, 1486 edges, 0 problem(s)

There was no UPWARD or CYCLE line. The README has no `*Needs:*` lines to resolve; that missing information is R05, not evidence that all mathematical dependencies are supplied.

The pins checked were Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. After building the two imported Tau Ceti modules whose objects were initially missing, direct `lake env lean` elaboration succeeded with exactly 13 `sorry` warnings. A scratch copy with `#check @name` for every one of the 17 declarations also elaborated. Artinian-base, algebra, and finite-generation hypotheses required by the Artin-algebra headlines are retained; the `include R` blocks work. No signature repair for a dropped section binder is needed. Recognition explicitly assumes finite endomorphism modules; with finite biproducts, each Hom module is a retract of the endomorphism module of a biproduct, so this matches the prose’s Hom-finiteness. The finite-presentation predicate uses an actual presentation; epimorphic quotients of additive representables are additive, so the absent explicit additive-functor field is not a free placeholder.

For each of the 13 admitted theorems, a scratch copy tried `simp`, `rfl`, and `infer_instance` as complete one-tactic proofs. None closed: all 13 remained admitted. Reading the corresponding pinned APIs found no single existing theorem with the full generic statement that would supply an `exact` padding proof. The module-specific decomposition and quiver results do not prove the generic categorical results in one application. No padding finding is made.

The headline inventory is: categorical Krull–Schmidt recognition and uniqueness; Freyd–Auslander; finite-length Artinian Matlis duality; exact-category AR duality/existence; Artin-algebra AR duality and existence; valued AR multiplicities/translation; Harada–Sai; Auslander's bounded-component theorem; Brauer–Thrall I and infinite-radical criterion; general global-dimension comparisons; Morita–Tachikawa and Auslander correspondences. Lean states recognition/uniqueness, Freyd–Auslander, hull/biduality, one-sided AS existence, Harada–Sai, Brauer–Thrall I, left/right global-dimension equality, and only the forward parts of the two correspondences. R02 addresses the missing statable converse headlines and the missing explanation of unstated headlines.

Ownership searches used the roadmap service by object (Krull–Schmidt decompositions, local endomorphism rings, finitely presented functors, weak kernels, Ext-trivial quotients, global/dominant dimension, Matlis duality, AR translation and correspondences), followed by reading the relevant main/open-head files and searching local board packages. No duplicate fully qualified name was found. Generic categorical decomposition, finitely presented functors, and the general Artin-ring extensions were not found under another owner. The global-dimension overlap is R03. This is not a wholesale re-planning of QuiverRepresentations: that roadmap's Layer 6 has the algebraically closed field/bound-quiver setting, while this one supplies generic categories, arbitrary Artin coefficients, and nonsplit valuations.

Resolved supplier/consumer citations:

| Roadmap and exact place read | Resolution |
| --- | --- |
| `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:385–418`, Layer 6, this head | Field/bound-quiver AR results are the earlier specialization. The ownership paragraph at lines 396–398 identifies the Artin-ring extension. |
| `TauCetiRoadmap/RepresentationTheory/README.md`, family index, this head | The family places the two parts in the intended direction; no extra folder was silently treated as authorized. |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md:2290–2304`, §1.M.2, main | Local Matlis hull/duality input exists, including non-field residue rings. Finite-product assembly belongs here. |
| `TauCetiRoadmap/GrothendieckEulerForms/README.md:178–204`, Layer 0, main | Exact structures, opposites and exact functors are supplied. |
| `TauCetiRoadmap/StablePeriodicCurved/README.md:174–184,199–211`, Layers 0–1, main | Relative projectives/injectives and stable constructions are supplied; triangulation is for Frobenius categories, not an automatic property of the present Ext-trivial quotients. |
| `TauCetiRoadmap/GeometricRepresentationCategories/README.md:361–364`, §R5.2, main | The generic abelian Baer-sum/extClass comparison is owned there; this roadmap's exact-category extension is distinct. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:689–704`, E1.6, main | Regular commutative-ring projective-dimension bound exists; it does not settle the additional overlap with PurityOfBranchLocus. |
| `TauCetiRoadmap/PurityOfBranchLocus/README.md:164–171`, §0.3, main | Existing commutative global-dimension owner: R03. |
| `TauCetiRoadmap/QuiverRepresentationsPartII/README.md:7,69,77`, supplied open head | Consumes the base quiver roadmap; no second owner of this general categorical construction was found. |
| `TauCetiRoadmap/CountingBundlesAndHallAlgebrasOfCurves/README.md:11,71,321`, supplied open head | Consumes ArtinAlgebras recognition/uniqueness/radical statements. It is a consumer, not an available substitute supplier. |

### Pinned library witnesses

The following declarations or definitions were opened at the pins. Paths in this table are library-relative. These are positive witnesses; the nonexistent names in R01 are not counted as supplied APIs.

| File and line | Declaration or object, and limitation checked |
| --- | --- |
| `Mathlib/CategoryTheory/Limits/Shapes/BinaryBiproducts.lean:1096` | `Indecomposable`: excludes the zero object and excludes nontrivial binary decompositions. |
| `Mathlib/CategoryTheory/Idempotents/Basic.lean:54` | `IsIdempotentComplete`: actual splitting condition. |
| `Mathlib/CategoryTheory/Limits/WeakLimits/WeakKernels.lean:41,47` | `HasWeakKernels` and the instance from kernels. |
| `Mathlib/CategoryTheory/Triangulated/WeakKernels.lean:44` | Weak-kernel instance for pretriangulated categories with the required additive shifts. |
| `Mathlib/CategoryTheory/Preadditive/Yoneda/Basic.lean:58` | Additive representable/Yoneda carrier used by the retained presentation predicate. |
| `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:265,295,303,332` | `projectiveDimension`, its bound interface, zero-object value `⊥`, and value 0 for nonzero projectives. |
| `Mathlib/RingTheory/Artinian/Module.lean:616` | `IsArtinianRing.quotNilradicalPowEquivPi`: quotient by a nilradical power; obtain the claimed ring decomposition when that power is zero. |
| `Mathlib/RingTheory/Flat/Basic.lean:82,113` | The native flat-module framework here assumes commutative scalars; it is not a general noncommutative flatness supplier. |
| `Mathlib/RingTheory/Morita/Basic.lean:122` | `IsMoritaEquivalent`: nonempty existence of the relevant linear equivalence. |
| `Mathlib/Algebra/Category/ModuleCat/Basic.lean:418–439` | Scoped `ModuleCat.Algebra` scalar/module/linear instances work over general commutative scalars, not only fields. |
| `TauCeti/CategoryTheory/AlmostSplit/Basic.lean:125,132` | Right/left almost-split lifting predicates. |
| `TauCeti/CategoryTheory/AlmostSplit/Sequence.lean:129` | `ShortComplex.IsAlmostSplit`: short exactness and both lifting predicates, with no finite-dimensional assumption built into the predicate. The chosen finite module category matters. |
| `TauCeti/CategoryTheory/Preadditive/Indecomposable.lean:119` | Local-endomorphism implication via an injective map; not the missing declaration named in R01. |
| `TauCeti/RingTheory/KrullSchmidt/Indecomposable.lean:266,276` | Module indecomposability/local-endomorphism theorems, with their module hypotheses. |
| `TauCeti/Algebra/Category/ModuleCat/KrullSchmidt.lean:73,98` | Finite-length module decomposition and uniqueness. These have a module carrier. |
| `TauCeti/RepresentationTheory/Quiver/Representation/KrullSchmidt.lean:85,110` | Quiver-representation decomposition/uniqueness; finite quiver and finite-dimensional hypotheses are retained. |
| `TauCeti/CategoryTheory/Preadditive/Radical/Basic.lean:207,370,417,518,567` | Radical additive subgroup, nonisomorphism criterion under local ends, square, irreducibility criterion, and scalar submodule. Not a declaration named `jacobsonRadicalIdeal`. |
| `TauCeti/CategoryTheory/Exact/ExactStructure.lean:241` | Quillen exact structure with conflations and universal pullback/pushout axioms. |
| `TauCeti/CategoryTheory/Exact/Stable/Basic.lean:123,129` | Projective-factorization ideal and `ProjectiveStableCategory`; the alleged injective companion name is absent. |
| `TauCeti/Algebra/Module/AuslanderReiten/Transpose.lean:103` | Presentation-level transpose. |
| `TauCeti/Algebra/Module/AuslanderReiten/Translate.lean:111` | Presentation-level `AuslanderReitenTranslate`, not `ModuleCat.arTranslate`. |
| `TauCeti/Algebra/Module/AuslanderReiten/Equivalence.lean:179` | Stable transpose equivalence with finite projective presentations and its actual universe parameters. |
| `TauCeti/RepresentationTheory/Quiver/Representation/Translate.lean:85` | `TauCeti.QuiverRep.arTranslate`, with its finite-path quiver setting. |
| `TauCeti/Algebra/Module/ProjectiveCover/ModuleCat.lean:128` | Projective-cover existence for a finite algebra over an Artinian base. |
| `TauCeti/Algebra/Module/Injective/Envelope/Basic.lean:101,172` | `IsInjectiveEnvelope`: injective target, injective essential embedding; uniqueness by linear equivalence. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Morita.lean:98–108` | Restriction to finite modules/projectives and additivity. R-linearity still must be transported as the README says. |

### Source sample and exact textual checks

The worker described a 15-target sample but supplied no target identifiers (“none found by heading”). It would be misleading to claim to have reconstructed that sample. A reproducible supplemental sample was taken instead: Python's `random.Random(int('ca98ae0', 16)).sample` on the 49 target-bullet start lines, choosing 15 and sorting by line. All 19 bibliography works were requested through the source service. Ten texts were legally readable, three were returned uncertified, and six remained unavailable. No README locator was explicitly marked unverified.

The table records what the text actually supports; a matching example below does not certify an unread theorem. Preprint locators refer to the version actually read, not presumed published numbering.

| Sample target (README line) | Text and locator inspected | Result |
| --- | --- | --- |
| Indecomposables (158) | `krause` lines 451–486, Theorem 4.2/Corollary 4.4, arXiv v1 pp. 9–10; pinned module/local-ring results above | Local-end/split-idempotent characterization and uniqueness support the categorical framework; the claimed Tau Ceti name is wrong (R01). |
| Additive generators (172) | `krause` lines 162–171, Proposition 2.3, p. 3, together with Theorem 4.2 | Projectivization is stated; the finite-indecomposable-class equivalence follows from the displayed finite KS decomposition, not from an unquoted new source theorem. |
| Freyd–Auslander (187) | Freyd and Auslander 1966 source requests | Uncertified. The exact weak-kernel equivalence was not text-certified. |
| Artinian Matlis duality (226) | `matlis` lines 638–645, Theorem 4.2, printed p. 526; lines 702–721, Corollary 4.3, p. 528 | Complete Noetherian local duality/reflexivity verified. General Artinian coefficients require the finite-product assembly explicitly planned in Layer 2. |
| Exact-category AR duality (287) | `enomoto` lines 1484–1522, Proposition A.5, arXiv v4 p. 24; `inp` lines 1022–1040, Definition 3.4/Theorem 3.6, arXiv v3 p. 16 | Enomoto's base is complete Noetherian local; INP's section uses a field. Neither alone is a literal citation for the full nonlocal Artinian statement. R04 requests the extension route/locator. |
| Almost-split existence for Artin algebras (324) | ARS and ASS requests; stated ASS Theorem IV.2.13 | Full texts unavailable; not certified from these books. The exact-category sources were not silently substituted for this existence theorem. |
| Source/sink maps (330) | `enomoto` lines 1442–1471, Propositions A.2–A.3, arXiv v4 p. 23; `krause` lines 303–315, Lemma 3.4, p. 6 | Simple-functor presentations and minimal-cover criterion checked. The additional Artin-module existence/boundary claims still need the book locator. |
| Middle-term multiplicities (354) | ARS request | Not text-certified. Explicit nonsplit computation below checks the two sides of the valuation formula. |
| Field dimension/valuation identity (357) | Valuation definition at README 338–343 | Dimension-of-scalars computation: `dim_k V = dim_D V · dim_k D`; checked on the nonsymmetric real/complex example. No book passage claimed. |
| Bounded-component theorem (368) | Auslander 1974 request | Landing page returned HTTP 403; no theorem/page certified. |
| Connectedness (376) | ARS/Auslander 1974 requests | Not text-certified. Connected and disconnected finite examples checked below. |
| Double centralizer (388) | `krause` Proposition 2.3; Müller Theorem 2 | Projectivization and the field-case correspondence checked, but neither inspected locator alone is the stated arbitrary-Artin-generator double-centralizer theorem. Exact locator still needed. |
| Morita theory (390) | `krause` Proposition 2.3, p. 3; pinned Morita definitions/restriction | Additive projectivization and the library carriers checked. Entire R-linear finite/all-module correspondence not certified from an unread book. |
| Global dimension (403) | `auslander1955` lines 40–44, Theorem 1(a,b), p. 68; lines 123–135, Theorem 4/Corollary 5, p. 70; lines 230–237, Corollary 11(b,d), p. 73 | Cyclic reduction, two-sided Noetherian equality, and semiprimary simple-module formula supported. The source explicitly assigns projective dimension −1 to zero (line 252); the roadmap uses Mathlib’s `⊥`. |
| Auslander correspondence (426) | Auslander 1971, ARS and Tachikawa requests; `muller` lines 117–127, Theorem 2, p. 401 | Müller supports a finite-dimensional-field dominant-dimension correspondence, not a complete certification of the arbitrary-Artin Auslander correspondence. Missing acceptance-test converse is independently witnessed by elaboration (R02). |

Additional locators read: `krause` Proposition 4.1, pp. 8–9 (semiperfectness), and the radical discussion at lines 488–495; `enomoto` Appendix A.2 lines 1490–1496 and `inp` Definition 1.21/Remark 1.22 lines 523–539 (Ext-trivial quotients, with enough-projective/injective qualifications); `lenzingzuazua` Theorem 1.1, printed p. 169, lines 21–44 (commutative Artinian base, but abelian category), and the quotient conventions at lines 58–84; `chase` Theorem 2.1, printed p. 460, lines 139–144 (left coherence versus products of flat right modules); `haradasai` Lemmas 11–12, printed p. 339, lines 639–660; `hoshino` printed p. 275, lines 30–41 (dominant-dimension convention and two-sided Noetherian context); `muller` printed p. 398, lines 36–38 (field assumption). These qualifications were retained when judging the proposed generalizations.

Readable legal sources were [Krause](https://arxiv.org/abs/1410.2822), [Enomoto](https://arxiv.org/abs/1705.02163), [Iyama–Nakaoka–Palu](https://arxiv.org/abs/1805.03776), [Harada–Sai](https://ir.library.osaka-u.ac.jp/repo/ouka/all/12717/ojm07_02_09.pdf), [Auslander 1955](https://doi.org/10.1017/S0027763000023291), [Matlis](https://msp.org/pjm/1958/8-3/pjm-v8-n3-p13-p.pdf), [Müller](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/40AA7493D7083513CD09EABE68FF54FF/S0008414X00051750a.pdf/the-classification-of-algebras-by-dominant-dimension.pdf), [Chase](https://www.ams.org/journals/tran/1960-097-03/S0002-9947-1960-0120260-3/S0002-9947-1960-0120260-3.pdf), [Hoshino](https://ir.library.osaka-u.ac.jp/repo/ouka/all/11073/ojm26_02_04.pdf), and [Lenzing–Zuazua](https://smm.org.mx/boletin_anterior/v10/n2.pdf). No source text has been copied into the repository or this report.

### Computed adversarial pass

There are 60 rows below. They cover every target-bullet start, the sampled targets, all retained Lean definitions/headlines, and the conventions involved in the findings. These are computed tests and countercontrols, not proofs of universal statements. “Pass” means the displayed instance satisfies the claim; it does not certify an unavailable source. R01–R06 still apply where indicated.

Notation for the computations: `k` is `𝔽₂` or `𝔽₃`; `B = k[ε]/(ε²)`; `S = B/(ε)`; `P = B`; `i : S → P` sends `1` to `ε`; `p : P → S` is the quotient. Thus `p ∘ i = 0`, `i ∘ p` is multiplication by `ε ≠ 0`, `End(S) = k`, and `End(P) = B`. `hX` means `Hom(-,X)` and `S_X` is its simple quotient. Lengths are composition lengths, not dimensions over the coefficient ring's residue fields taken without qualification.

For the nonsplit valuation test, use the real algebra of upper triangular blocks `[[ℝ,ℂ],[0,ℂ]]`. A left module is a triple `(V_ℝ,W_ℂ,f : W_ℝ → V_ℝ)`. Put `U=(ℝ,0)`, `V=(ℂ,ℂ,id)`, `W=(ℂ/ℝ,ℂ,quotient)`. The sequence `0 → U → V → W → 0` is almost split; the endomorphism division rings are respectively `ℝ,ℂ,ℝ`. This explicitly fixes the left/right and valuation convention used in the rows below.

| # | Statement / README line (Lean when present) | Instances and computed values on the two sides | Result and change |
| --- | --- | --- | --- |
| 01 | Artin coefficient convention, 122–127 | `A=ℤ/4ℤ` over itself: finite module of length 2, not a field. `k[ε]/ε²` has length 2 and is nonreduced. `ℤ` over itself is not Artinian. | Includes the first two, excludes the third from Artin-specific results. Keep arbitrary-ring global dimension separate. |
| 02 | Left/right End action, 145–146 | For `M=k²`, End is `Mat₂(k)`: `E12 E21=E11`, while `E21 E12=E22`. Postcomposition acts on columns on the left; precomposition on rows on the right. | Pass; the opposite ring in projectivization is essential. |
| 03 | Krull–Schmidt class, 155; Lean 34 | `0` is the empty sum (0 summands); `k` one local-end summand; `k²` two. `End(0)` is the zero ring, not a local ring in this convention. | Definition excludes a spurious zero summand and permits the empty decomposition. R05 requests these Checks. |
| 04 | Indecomposable iff local End, 158; Lean 44 | `S`: true/true, End=`k`. `P`: true/true, End=`B`. `k²`: false/false, End=`Mat₂(k)` has the nontrivial idempotent `diag(1,0)`. `0`: false/false. | Pass both directions on these controls; supplier name repair R01. |
| 05 | Idempotent splitting, 161; Lean 49 | On `k²`, `e=diag(1,0)`, `e²=e`, image dimension 1, projection/inclusion composite `e`; zero projector has image dimension 0. | Pass, including the zero retract. |
| 06 | Uniqueness, 163; Lean 54 | `P⊕S` has length 3, indecomposable lengths `{2,1}`; reversing the order gives the matching permutation. `k²` has multiset `{k,k}`, not `{k}`. Empty sums have index cardinalities `0=0`. | Pass; finite indices and local-end conditions carry real content. |
| 07 | Recognition, 166; Lean 61 | `mod B`: finite End modules, split idempotents; `P⊕S` decomposes into 2 local-end summands. Category of even-dimensional `k` spaces has `End(k²)=Mat₂(k)` finite but rank-one projector does not split there. | Positive value 2 summands; negative example violates idempotent completeness. R01: generic recognition input is not supplied by a module-only theorem. |
| 08 | Closure under retracts, 170 | `add S` inside `mod B`: objects `S^n`, n local-end summands; retracts have rank `r≤n` and remain `S^r`. Even-dimensional spaces: a rank-1 retract of dimension 2 leaves the category. | Pass; closure condition excludes the wrong subcategory. |
| 09 | Additive generators iff finite indecomposable classes, 172 | `mod k`: 1 class, generator `k`; `mod B`: 2 classes, generator `P⊕S`; zero category: 0 classes, generator 0. Kronecker preprojectives have lengths `2n+1`, hence infinitely many classes. | Both finite examples and infinite negative control agree. |
| 10 | Instances, 175 | Finite-length `ℤ` modules: `ℤ/4` length 2 indecomposable, `ℤ/2 ⊕ ℤ/3` length 2 with 2 summands. One-vertex/no-arrow quiver: `k²` splits into 2 simples. Empty quiver: only zero, empty decomposition. | Pass; no restriction to algebras over a field is needed for finite-length modules. |
| 11 | Categorical radical, 177 | In `mod B`, `ε:P→P` is noninvertible and radical; `id_P` is invertible and not radical. On `S⊕P`, a diagonal `id_S` component excludes radical membership. | Matrix criterion agrees. R01/R05: distinguish subgroup, ideal and its powers. |
| 12 | Finitely presented functor, 184; Lean 76 | For `C=mod k`, `h(k²)→h(k)` induced by projection has kernel `h(k)` and cokernel 0. At `k`, vector dimensions are `2→1`, kernel dimension 1. Identity presentation gives zero functor; presentation `0→h(k)` gives `h(k)`. | Actual presentation distinguishes zero and representable functors; no arbitrary predicate stand-in. |
| 13 | Cokernels/extensions/projectives in mod C, 184 | For `C=mod k`, evaluation identifies `h(k^r)` with `k^r`. Cokernel of inclusion `k→k²` has dimension 1; an extension of dimensions 1 and 2 has dimension 3 and splits. | Computed closure and projectivity in this test category. |
| 14 | Freyd–Auslander, 187; Lean 82 | `C=mod k`: projection `k²→k` has weak kernel `k`; kernel functor has presentation `0→h(k)` and evaluates to dimension 1. Both sides true. Zero category: only zero kernel, both sides true. | Pass on these instances; general iff source remains uncertified. |
| 15 | Ring evaluation/coherence, 190 | For finitely generated projective `ℤ` modules, multiplication by 2 on `ℤ` has kernel 0; its representable cokernel evaluates to `ℤ/2`. `ℤ/2` has presentation `ℤ --2→ ℤ`, with 1 generator and 1 relation. | Correct left-module carrier and finite-presentation test; Chase's left/right qualifications retained. |
| 16 | Enough-projectives/progenerator equivalence, 195 | In `mod B`, generator `B` has `End_B(B)=Bᵐᵒᵖ`; `Hom(B,S)` has length 1 as a right End module. For `Mat₂(k)`, the simple column module has End=`k` and Hom equivalence sends it to dimension 1. | Pass; the right End-module convention is not reversed. |
| 17 | pd≤2 iff kernels, 201 | For `C=mod B`, `S_S` has projective resolution `0→hS→hP→hS→S_S→0`, pd=2; `S_P` has `0→hS→hP→S_P→0`, pd=1. Kernels exist in C. | Bound is 2, not 1. For `C=mod k`, both kernel existence and pd≤0 hold. |
| 18 | Projective covers/right minimality, 207 | `hS→S_S` is right minimal: scalar stabilizer must be 1. Add a zero summand to the source: `diag(1,0)` stabilizes the map but is not invertible. | Correct cover passes; redundant-source model fails. |
| 19 | Artinian local factors, 219 | `R=ℤ/12`: for n=2, maximal-ideal powers give quotients `ℤ/4`, `ℤ/3`; cardinalities `12=4·3`. The nilradical is nonzero at n=1 and square zero at n=2. Zero ring: empty product is the zero ring. | Pass; nilradical-power hypothesis cannot be dropped. |
| 20 | Finite injective cogenerator, 222; Lean 97 | `R=ℤ/4`: `E_R=R`, embedding `ℤ/2→R`, `1↦2`, length(E)=2. `R=k×k`: `E_R=R`, two simples each embed. First factor alone omits the second simple (Hom=0). | Correct cogenerator versus wrong one; finite hull verified in examples. |
| 21 | Exact duality and length, 226 | Over `ℤ/4`, `D(S)={0,2}` has cardinality 2 and length 1; `D(R)=R` cardinality 4 length 2; `D(0)=0`. Dualizing quotient `R→S` gives inclusion of the length-1 socle. | Lengths and map directions agree. |
| 22 | Biduality, 226; Lean 104 | For the same S and R, evaluation maps have sizes `2→2` and `4→4` and zero kernels. For 0, `0→0` is bijective. For `R=𝔽₂[x,y]/(x,y)²`, using R instead of its injective cogenerator gives `dim Hom_R(k,R)=2`, not 1. | Correct E is essential: `Hom_k(R,k)` has length 3 and socle dimension 1. Wrong self-duality model excluded. |
| 23 | Artin duality, Nakayama, hulls, 230 | For `B`, D exchanges S with S and P with P; `νP=P`. For representations of `1→2`, `P1=(k→k)`, `P2=(0→k)`, `I1=(k→0)`, `I2=(k→k)`; `νP1=I1`, `νP2=I2`. | Projective cover of each simple goes to its injective hull; ν need not be the identity. |
| 24 | Exact-category Ext¹/Baer convention, 242 | `Ext¹_B(S,S)=k`: nonsplit sequence has class 1, split sequence class 0. Over `𝔽₂`, `1+1=0`; over `𝔽₃`, `1+1=2≠0`, `1+1+1=0`. Split exact structure has Ext¹=0. | Contravariance/covariance and zero class consistent; exact structure changes the answer. |
| 25 | Hom–Ext exact sequence, 251 | Apply Hom(S,-) to `0→S→P→S→0`: dimensions `1→1→1→1→0`, maps respectively isomorphism, zero, connecting isomorphism, zero. Kernel/image dimensions match at each interior term. | Pass; dual computation is the same for this self-injective commutative B. |
| 26 | Ext-trivial ideals and comparison, 254 | `id_P` acts by zero on Ext¹(P,-) and factors through P. `id_S` acts by 1 on Ext¹(S,S)=k and is not trivial; stable End(S)=k. With split exact structure all Ext¹=0 and quotient Hom spaces are zero. | Quotient depends on E; equality with factorization uses enough projectives/injectives. |
| 27 | Almost-split conflation/uniqueness/class criterion, 265 | `0→S --i→ P --p→ S→0` represents 1 and has both almost-split maps. Split sequence represents 0 and is rejected. Over `𝔽₃`, scaling i by 2 produces an isomorphic almost-split sequence with nonzero class 2. | Nonzero and endpoint conventions pass; the missing pinned criterion is R01. |
| 28 | Simple functors/minimal resolution, 273 | For Z=S over B, `rad(-,S)=im(hP→hS)`; evaluation at S gives radical 0 and `S_S(S)=k`. Minimal resolution has lengths 2 as in row 17. For projective Z=P, `S_P` has pd1. | Distinguishes almost-split conflations from the projective boundary sink map. |
| 29 | AR duality, 287 | Over B with Z=X=S, Ext¹=k and dual stable Hom(S,τS)=Dk=k, dimensions `1=1`. With Z=P, Ext¹=0 and τP=0, dimensions `0=0`. | Pass; costable quotient is required, since ordinary Hom(P,P) has dimension 2. |
| 30 | Existence iff AR duality, 292 | `mod B`: one nonprojective indecomposable S, one AS sequence, τ fixes its stable class; duality space dimension 1. `mod k`: zero such indecomposables, zero stable categories, zero duality spaces. | Both directions consistent, including semisimple empty obligation. General source extension is R04. |
| 31 | Transpose/translate, 304 | Minimal presentation of S over B uses multiplication by ε; transpose is S and DTr(S)=S. A projective P has transpose 0, τP=0. The same length pattern holds over `ℤ/4`. | Pass; projective boundary has total value 0, not S. |
| 32 | Stable equivalence, 312 | Over B, nonzero stable indecomposable class is S, stable End=k; τ and τ⁻ send S to S. P becomes zero and maps to zero. | Composites give identity on stable S (scalar 1), zero on the projective class. |
| 33 | Two AR formulas, 317 | At S,S over B, each Ext/dual stable-Hom side has dimension 1. With a projective/injective P in the vanishing slot, each side dimension 0. | Both formulas and vanishing conventions pass. |
| 34 | Artin AS existence, 324; Lean 122 | B and `ℤ/4` each have exactly one nonprojective indecomposable S; middle P has length 2, endpoints length 1: `2=1+1`. For a field all finite modules are projective; no endpoint is demanded. | FGModuleCat statement matches the finite-module theorem, including the vacuous semisimple boundary. |
| 35 | Source/sink maps, 330 | Over B, sink of projective P is `i:S→P`, radical length 1; source of injective P is `p:P→S`, quotient by socle length 1. Over k, sink `0→k` and source `k→0` are almost split as morphisms, not short exact sequences. | Correct boundary distinction; zero morphisms here are permitted. |
| 36 | Irreducibles/division bimodule/valuation, 338 | Real/complex test: Irr(U,V)=ℂ, End(U)=ℝ, End(V)=ℂ; dimensions `(a,b)=(1,2)`. Irr(V,W) has real dimension 2, pair `(2,1)`. | End division-ring sides agree; wrong swapped convention fails. |
| 37 | Valued translation quiver, 344 | τW=U reverses the arrow V→W into U→V; valuations `(2,1)` reverse to `(1,2)`. Over B, τS=S; P is outside τ's nonprojective domain. | Inverse pairing and domain pass; no arbitrary τP=P convention. |
| 38 | Valued AR quiver vertices/arrows, 351 | B has 2 vertices S,P and exactly the arrows S→P, P→S, each valuation `(1,1)`. No loop at P: ε lies in categorical rad². k has 1 vertex and 0 arrows. Zero algebra has 0 vertices. | Correct Irr quotient removes the tempting spurious loop. |
| 39 | Middle-term multiplicity, 354 | Real/complex sequence has V once. Formula gives `b_VW=1=a_UV`. Swapping a/b predicts 2. Projective sink at V has U twice, matching `b_UV=2`. | Pass on nonsymmetric valuations; precise Check requested by R05. |
| 40 | Mesh relation, 356 | B: the mesh path S→P→S has composite `p∘i=0`. Opposite composite P→S→P is ε≠0 and is not a mesh relation ending at projective P. | Distinguishes direction and translation domain. |
| 41 | Field dimension identity, 357 | Real/complex U→V: `dim_ℝ Irr=2=b·dim_ℝ F_U=2·1`. V→W: `2=1·2`. B over k: `1=1·1`. | Pass; covers nonsplit end division rings, not only algebraically closed fields. |
| 42 | Chain convention, Lean 134 | n=0: composite is identity; n=1: f0; n=2 on P→S→P is ε, not zero. n=3 on P→S→P→S is zero. | Recursive direction agrees with categorical composition. |
| 43 | Harada–Sai, 363; Lean 141 | b=1: threshold `2¹−1=1`, any nonisomorphism between simples is zero. b=2: threshold 3; two-map composite ε≠0, three-map composites zero for B. b=0: threshold 0, but no indecomposable has length 0. | No natural-subtraction counterexample: b=0 hypotheses are impossible. Sharp bound locator R04. |
| 44 | Radical nilpotence consequence, 363 | In `mod B`, rad²(P,P)=kε≠0 from P→S→P; rad³=0. In the ring End(P)=B, J²=0. | Nilpotence values 3 versus 2 separate the two radicals; R05. |
| 45 | Auslander's bounded component, 368 | B is connected, its component has 2 vertices with lengths 1,2 and is the whole quiver. `k×k` has two isolated vertices, each bounded by 1, but is not connected (central idempotent `(1,0)`). | Hypothesis excludes the false whole-quiver conclusion in the product case. Source unavailable. |
| 46 | Brauer–Thrall I, 372; Lean 154 | B: bound 2, skeleton cardinality 2. k: bound 1, cardinality 1. Zero ring: bound 0, cardinality 0. Kronecker preprojectives have lengths `2n+1`, so no uniform finite bound. | Finite conclusion and negative control agree; no bounded family substituted for all indecomposables. |
| 47 | Infinite radical iff finite type, 374 | B: rad³=0, hence rad∞=0. For Kronecker, a nonzero map from the simple projective at the sink to a regular simple factors through regular Jordan modules of every length n; choose a vector mapping to 1 under the successive quotients. Composite value remains 1 for every n. | In the latter example rad∞ contains a nonzero map; finite/infinite sides separate. |
| 48 | Connected finite-type quiver, 376 | B: underlying graph has 2 vertices and 1 undirected connection, one component. k: 1 vertex, one component. `k×k`: 2 vertices, two components; algebra not connected. | Pass; specify the empty-quiver convention when adding the zero-ring Checks. |
| 49 | Projectivization/add M, 381 | M=k², Γ=Mat₂(k): Hom(M,k) is a row module of k-dimension 2 on the right; Hom(k,M) a column module of dimension 2 on the left. Hom(M,M)=Γ has dimension 4. M=0 gives zero end ring and zero additive category. | Pass for covariance, opposites and zero case. |
| 50 | End algebra/scoped scalars, 381 | Over R=`ℤ/4`, M=R: End_R(M)=R, finite length 2 over R; scalar 2 acts as multiplication by 2 and commutes with endomorphisms. Over k, M=k²: scalar λ acts as λI₂. | Correct R-algebra structure and finiteness; native scoped instances suffice. |
| 51 | Double centralizer, 388 | M=k²: Γ=Mat₂(k), End_Γ(M)=k, action is identity on k. For A=Mat₂(k), M=A: Γ=Aᵐᵒᵖ and End_Γ(M)=A, both dimensions 4. | Pass, including noncommutative order. Generator hypothesis excludes taking M=0 for nonzero A. |
| 52 | Morita equivalence/invariants, 390 | k versus Mat₂(k): one indecomposable finite-module class each, simple composition length `1=1` although k-vector dimensions `1≠2`; gl.dim `0=0`, dom.dim `∞=∞`. B versus Mat₂(B): two indecomposable classes each, lengths 1,2 and global dimensions ∞. | Preserves listed invariants, not raw coefficient dimensions. |
| 53 | Global dimension definition, 403; Lean 169 | Supremum over modules: zero ring `⊥`; field 0; ℤ 1 (ℤ/p has pd1); B ∞ (S has nonzero Ext in every positive degree). | Pass with pinned `WithBot ℕ∞` convention; agrees with earlier commutative owner, R03. |
| 54 | Cyclic/finite/left-right formulas, 403; Lean 174 | Over ℤ, cyclic ℤ/p realizes 1, all modules have pd≤1, left/right values `1=1`. Over the triangular k-algebra for `1→2`, a nonprojective simple has pd1 on each side and gl.dim `1=1`. | Cyclic and finite suprema agree in these Noetherian cases; no unchecked change to one-sided Noetherian hypotheses. |
| 55 | Semiprimary/simple formula, 408 | B: A/J=S has pd∞; both gl.dim and simple supremum are ∞. k: quotient/simple pd0 and gl.dim0. Zero ring: quotient 0 has pd⊥ and empty simple supremum ⊥. | Pass; the source’s `1+pd J` formula uses pd(0)=−1 and cannot be imported without translating conventions. |
| 56 | Dominant dimension, 412 | Field and self-injective B: coresolution starts with the regular injective/projective and then zero, so dom.dim∞. Triangular `1→2` algebra: first injective term projective, next has a nonprojective injective summand, dom.dim1. | Distinguishes ≥1 from ≥2 and finite from infinite dominant dimension. |
| 57 | Morita–Tachikawa forward, 416; Lean 189 | For self-injective B and M=B, generator-cogenerator condition true, Γ=B, dom.dim∞ but gl.dim∞. For M=P⊕S, Γ has k-dimension 5, dom.dim2. | Forward bound ≥2 holds; no accidental global-dimension conclusion. |
| 58 | Morita–Tachikawa reconstruction, 418–425 | Γ=End_B(P⊕S), dim Γ=5: a basic projective-injective generator Q has k-dimension 3, End_Γ(Q)≅B has dimension 2, and End_B(Q)≅Γ dimension 5. Semisimple Γ=k gives Q=k and both End rings k. | Double-centralizer dimensions `5→2→5` agree. Missing acceptance-test converse R02. |
| 59 | Auslander forward, 426; Lean 204 | B with M=P⊕S: Γ dimension 5, simple-functor pd values 2 and 1, hence gl.dim2. k with M=k²: Γ=Mat₂(k), gl.dim0. M=P alone over B misses S as a summand and gives gl.dim∞. | Additive-generator hypothesis is needed; bound 2 is attained. |
| 60 | Auslander converse/correspondence, 431–435 | The dimension-5 Γ has `(gl.dim,dom.dim)=(2,2)`, reconstructing B with exactly 2 indecomposable classes. B itself has `(∞,∞)` and fails the global bound. Zero ring has `(⊥,∞)` and zero indecomposable classes. | Both inequalities and degenerate case behave correctly; native converse signature elaborates, R02. |

No statement was treated as proved merely because its `sorry` elaborates. The source limitations below are material: in particular the arbitrary-Artin correspondence and bounded-component theorem have not received full source certification in this review.

## Not verifiable

The following six bibliography works could not be read legally through the source service. They are recorded together in the scratch missing-reference list; no source passage or hypothesis from them is asserted as verified.

- **`ars`**, Auslander–Reiten–Smalø, *Representation Theory of Artin Algebras* (1995), Chapters II, IV–VII: searched the citation and [publisher DOI/landing page](https://doi.org/10.1017/CBO9780511623608); no legal full text was obtained. Needed for Layers 2 and 4–7, especially AS existence, valued multiplicities and correspondences.
- **`ass`**, Assem–Simson–Skowroński, *Elements of the Representation Theory of Associative Algebras* (2006), Theorem IV.2.13: searched the citation and [publisher DOI](https://doi.org/10.1017/CBO9780511614309); no legal full text was obtained. The stated theorem number and its hypotheses remain unverified.
- **`auslander1971`**, *Representation Dimension of Artin Algebras* (1971): source service title search and searches for the Queen Mary notes located bibliographic references/secondary discussions, not a legal original text. Needed for the Auslander correspondence; the README gives no exact theorem/page.
- **`auslander1974`**, *Representation Theory of Artin Algebras II* (1974), pp. 269–310: [DOI](https://doi.org/10.1080/00927877409412807) resolved to a publisher page returning HTTP 403. Needed for the bounded-component theorem and connectedness consequences; no theorem locator could be certified.
- **`roiter`**, *Unboundedness of the dimensions of the indecomposable representations of an algebra which has infinitely many indecomposable representations* (1968), original pp. 1275–1282: title search and [MathNet bibliographic page](https://www.mathnet.ru/eng/im2517) located the record but not readable original text through the service. Translation pagination differs. Needed for Brauer–Thrall I.
- **`yoneda`**, *On Ext and exact sequences* (1960), pp. 507–576: source-service title search and bibliographic references did not yield legal full text. Needed for the generic exact-category Yoneda/Baer construction and comparisons.

Three further works were returned **uncertified**, and are not included as renewed missing-text requests: **`auslander1966`**, *Coherent functors*; **`freyd`**, *Representations in abelian categories*; and **`tachikawa`**, *Quasi-Frobenius Rings and Generalizations* ([DOI](https://doi.org/10.1007/BFb0059997)). Their bibliography locators remain usable as uncertified citations, but their text was not checked. This distinction does not turn a source access failure into a false mathematical claim.

The exact identity of the worker's original 15 sampled targets was unavailable; the explicitly seeded supplemental sample above is the auditable replacement, not a claim about hidden identifiers. General Artinian-base extensions of the local/field AR sources, and complete source certification of the headline correspondences, remain unverified even though the displayed test instances agree.

## Source issues

- **Misprint** in enomoto at Definition A.6(2), arXiv v4 p. 25 (`enomoto` line 1531): the source says the dual uses F although the quantified functor is G; it should be the dual of G; affects nothing.

An apparent problem with Auslander's Corollary 11(c), printed p. 73, is **not** a source error: its proof on p. 74 explicitly assigns projective dimension −1 to the zero module (`auslander1955` line 252). For a field the formula therefore gives `0 = 1 + (−1)`. This differs from Mathlib's `⊥` convention and must be translated, not reported as a false theorem. Apparent OCR substitutions were likewise not counted as source errors.
