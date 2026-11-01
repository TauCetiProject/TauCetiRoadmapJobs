# Review of ArtinAlgebras (pull request #1397 at 472e13c)
Folder: `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/`

**Verdict:** needs changes

## R01 (P1) — A ring isomorphism does not give the claimed R-linear Morita equivalence

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/Suggested.lean:272–277`: `e : Module.End A M ≃+* Module.End A' M'` concludes `IsMoritaEquivalent R A A'`; README:128–130,1059–1065 fixes R-linear Morita equivalence.

**Claim:** the theorem is false because its hypothesis forgets the central R-action.

**Witness:** Take `R=k×k`, `A=k` through the first projection and `A'=k` through the second, with their regular modules. Both end rings are k. Scalar `(1,0)` acts as identity on the first category and zero on the second.

An R-linear equivalence would carry the identity of a nonzero object to zero, contradicting faithfulness. Both algebras are finite over R, and both regular modules satisfy the stated generator-cogenerator predicate. This is not a missing finiteness binder.

**Repair:** require an R-algebra equivalence of the endomorphism algebras, using the native scoped endomorphism-algebra instances. Make the reconstruction isomorphisms R-algebra equivalences too, so the forward and converse contracts use the same scalars. The corrected signature elaborates in a scratch probe. In the counterexample, an R-algebra equivalence would have to send `1` to `0`, so the new hypothesis excludes it; equal projection actions retain the ordinary equivalence of k with itself.

## R02 (P1) — The stated correspondence is not well-defined on its quotient of pairs

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:1059–1063`: pairs are identified when an equivalence “carries `add M` onto `add M'`”, but the output is “isomorphism classes” of endomorphism algebras. See also `Suggested.lean:266–270`.

**Claim:** additive closure forgets multiplicities that the isomorphism class of the endomorphism algebra retains. Moreover, the Lean injectivity theorem concludes only equivalence of the underlying algebras, not equivalence of the marked pairs required for a correspondence.

**Witness:** Over k, `(k,k)` and `(k,k²)` satisfy the proposed pair relation via the identity equivalence: both additive closures are `mod k`. Their endomorphism algebras have dimensions 1 and 4, respectively, and are not isomorphic.

**Repair:** for the advertised isomorphism-class version, identify pairs by an R-linear equivalence carrying **M itself** to an object isomorphic to M'. State that marked reconstruction/inverse property in the acceptance test, rather than describing the weaker underlying-ring theorem as injectivity of pairs. This distinguishes `(k,k)` from `(k,k²)` and correctly reconstructs `Mat₂(k)` using the marked two-dimensional module. Alternatively, retaining the additive-closure relation requires Morita classes on the output side throughout, including its inverse theorem.

## R03 (P1) — Clear the build gate's non-sorry diagnostics

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/Suggested.lean:1–4`; the supplied gate reports `build=2 FAIL`.

**Claim:** the required warning-clean build gate fails. This is a build-gate finding under the job's severity rule, not an allegation that Lean failed to elaborate a theorem.

**Witness:** The targeted build reproduces the module-system warning for this file and for imported `TauCetiRoadmap/PurityOfBranchLocus/Suggested.lean`. Lake exits 0, but these are two warnings other than `sorry`, which the gate rejects.

**Repair:** remove the forbidden roadmap import and its comparison declaration as in R07. Adapt this file's header to the pinned module system without `set_option`, then rerun the targeted build and gate. A scratch copy with a `module` header, the three permitted imports and no comparison/import of the other roadmap elaborates. Do not edit the supplier's file to repair this folder. The unchanged mathematical test values remain `⊥,0,1,∞` for the zero ring, k, ℤ and the dual numbers.

## R04 (P2) — Keep the endpoint hypotheses on the radical criterion

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:386–392`: “irreducible morphisms are the maps in `rad \\ rad²`”.

**Claim:** the last assertion is made for the arbitrary objects of the radical-ideal paragraph. It requires local endomorphism rings at both endpoints, as does the cited pinned theorem.

**Witness:** Let `B=k[ε]/(ε²)`, `S=k`, and `i:S→B` send 1 to ε. The map `(i,0):S²→B` belongs to `rad\rad²`, but factors through `S²→S→B`, with neither a split monomorphism nor a split epimorphism.

Here `rad²(S,B)=0`, hence also `rad²(S²,B)=0`. The first factor has a nonzero kernel, and the second is not surjective. The native theorem at `TauCeti/CategoryTheory/Preadditive/Radical/Basic.lean:518` explicitly requires both local endomorphism rings and binary biproducts.

**Repair:** qualify this characterization by those hypotheses, and cite the existing theorem rather than reproving it. Keep the matrix description of the radical for arbitrary finite decompositions. Add the displayed negative control: `End(S²)=Mat₂(k)` is not local; for the individual map `i:S→B`, both endpoint rings are local and the criterion correctly gives irreducibility.

## R05 (P2) — Include the statable global-dimension headlines

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:1006–1012`; `Suggested.lean:204–222` contains only the definition, a definitional comparison and the left/right Noetherian theorem.

**Claim:** three advertised Auslander theorems are absent from the acceptance test: the cyclic-module supremum, the finitely generated-module supremum, and the semiprimary quotient formula. They are deep general-ring results, not Checks, and their carriers already exist.

**Witness:** Scratch signatures for all three elaborate using `Submodule A A`, `A ⧸ I`, `FGModuleCat A`, `Ring.jacobson A`, `IsSemiprimaryRing A`, and native `projectiveDimension`. No additional definition or data placeholder is needed.

**Repair:** state the three general-ring headlines with `sorry`, retaining the exact hypotheses and the zero-module convention. Keep commutative ownership in the supplier contract. Tests: over ℤ, `ℤ/2ℤ` realizes the cyclic and finite suprema 1; over B, `B/J(B)=S` has projective dimension ∞; over the zero ring both sides of every supremum/quotient formula are `⊥`. Do not solve the missing-name gate by deleting these mathematical headlines.

## R06 (P2) — Extend the existing irreducible-morphism quotient instead of rebuilding it

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:828–833`, defining `Irr(M,N)=rad(M,N)/rad²(M,N)`; supplier inventory:172–176 lists only the radical subgroups.

**Claim:** the underlying quotient is already a general categorical construction at the pin, not merely a quiver-specific construction. The division-ring bimodule structure and valuations are new work; the quotient carrier must be cited and reused.

**Witness:** `TauCeti/CategoryTheory/Preadditive/Radical/Quotient.lean:135–164` defines `TauCeti.irreducibleMorphismSpace k X Y` for any linear preadditive category, with additive-group/module instances; lines 166–235 supply its quotient map and universal property.

**Repair:** add this exact carrier and API to scope/supplier contracts, then specify the commuting endomorphism actions and their descent through the two Jacobson radicals on that carrier. For an unenriched preadditive category use its integer enrichment. Keep finite-dimensionality and the nonsplit valuations as new targets. On the real/complex triangular example, the carrier has real dimension 2 and the new actions give dimensions `(1,2)`; replacing it with a fresh quotient supplies no additional mathematics.

## R07 (P3) — Delete the definitional comparison and its forbidden import

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/Suggested.lean:4,209–213`: import of `TauCetiRoadmap.PurityOfBranchLocus.Suggested` and `leftGlobalDimension_eq_globalDimension`, proved by `rfl`.

**Claim:** the import violates the acceptance-file import rule (`imports=1` in the gate). The comparison is padding: the two bodies are literally the same supremum, and it is already proved by one tactic.

**Witness:** `TauCetiRoadmap/PurityOfBranchLocus/Suggested.lean:132–133` and the local definition at line 206 both take the supremum of native projective dimensions over `ModuleCat R`.

**Repair:** delete the comparison theorem from `Suggested.lean` and remove the roadmap import. Retain the agreement and commutative ownership in README §7.2 and the supplier contract. This preserves the computed values `⊥,0,1,∞`; it does not remove any noncommutative headline. Never replace this import with another roadmap import or a duplicate commutative definition.

## R08 (P3) — Resolve every identifier failure without adding API padding

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:284,360,1007–1008`; gate: `readme-ids-missing=5`.

**Claim:** the README still presents local declaration names absent from the Lean file. The paragraph at 238–239 permitting intended names does not override the requested name crosswalk.

**Witness:** The five gate names are `IsKrullSchmidt.of_equivalence`, `IsKrullSchmidt.of_fullSubcategory`, `leftGlobalDimension_eq_iSup_cyclic`, `leftGlobalDimension_eq_iSup_fg`, and `leftGlobalDimension_eq_projectiveDimension_quotient_jacobson`.

**Repair:** express closure and transport API in prose, without a claimed Lean identifier. Resolve the three genuine global-dimension headlines by R05, not by adding one-tactic API declarations. Apply the same prose rule to the other future-construction names marked “intended”; only retained acceptance declarations should be presented as this file's identifiers. The tests remain: closure of `add B` is Krull–Schmidt, whereas free modules over `k×k` fail summand closure.

## R09 (P3) — Finish claim-level locators and the source inventory

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:135–140,358–392,419–441,605–616,673–685,963–1012` and References:1116–1151.

**Claim:** the blanket assertion that numbered locators were checked does not supply exact locators for claims which have none. The source inventory is still absent. Several seeded targets have no theorem/section/page location at all; added numbered citations generally omit pages.

**Witness:** §0.5 has no source locator; §1.1 says only “Yoneda”; §3.4 has none; §7.2 cites an entire paper. Readable replacements include Krause Theorem 4.2, p.9; Enomoto Proposition A.2, p.23; Auslander Theorem 1, p.68.

**Repair:** attach exact locators to each target and API claim and record one source entry per work, preserving the source-service keys and uncertified states. For §7.2 use Auslander Theorem 1, p.68; Theorem 4/Corollary 5, p.70; Corollaries 9/11, p.73. For §3.4 use Enomoto Proposition A.2, p.23, and supply the locator for the minimal-resolution assertion. The sharp Harada–Sai bound now has claimed ARS/ASS locators, but neither book was readable in this review: do not describe that as independent certification. The length-2 negative control still gives a nonzero two-map composite and a zero three-map composite.

## R10 (P3) — Add the additive hull before using the Karoubi example

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:348–351`: the Karoubi envelope of the one-object category with end ring `k×k` “is recognized”.

**Claim:** this category is idempotent complete but has no finite biproducts, so it does not meet the recognition theorem's hypotheses or the roadmap's definition of Krull–Schmidt.

**Witness:** Its objects have rank pairs `(0,0),(1,0),(0,1),(1,1)`. The biproduct of `(1,0)` with itself would have rank `(2,0)`, which is absent. Idempotent completion splits summands; it does not adjoin repeated sums.

**Repair:** take the additive hull of the one-object category first, then its Karoubi envelope. Its objects have all rank pairs `(m,n)` with natural m,n; finite sums add these pairs, and the two indecomposable classes are `(1,0)` and `(0,1)`. Keep the original one-object category only as the idempotent-decomposition/non-splitting Check at 330–333.

## R11 (P3) — Complete the per-definition API and discriminating Checks

**Location:** `TauCetiRoadmap/RepresentationTheory/ArtinAlgebras/README.md:550–563,826–841,1046–1072`; `Suggested.lean:6–13`.

**Claim:** the rewrite adds layer structure, 34 Checks blocks and 34 Needs lines, but it still lacks the required per-definition API lists. Several nominal Checks merely repeat a target, and some bundled definitions have no three tests of their own. The module's opening still describes “particular milestones” and “suggested forms” instead of consistently stating the acceptance-test contract. The README has no Downstream consumers section, and the module docstring omits the unstated infinite-radical criterion.

**Witness:** §2.2's second Check repeats length preservation verbatim as a formula. §7.4 defines the generator-cogenerator predicate but supplies no invariance/retract/additive-closure API. The three §7.4 bullets do not test a module failing that predicate.

**Repair:** retain the mathematics and add prose API bullets for each definition, plus three discriminating tests for each bundled object. For generator-cogenerators over B, use `B` and `B⊕S` as positive examples and `S` as a negative one: B cannot retract from a length-1 module. For duality compute `D_R(R)`, `D_R(S)` and the non-Gorenstein length-3 example instead of repeating the law. State action/quotient compatibility for the new bimodule API in R06. Add the named downstream consumers, name the infinite-radical criterion and its missing ideal-power carrier in the module docstring, and replace its opening with the required target-signature description; keep tests out of Lean.

## Verified sound

### Previous findings checked first

This was a full review of all 1151 README lines and all 300 Lean lines, not an incremental review of the changed passages. No repair report marking a finding “not actionable in this package” was supplied or found among the supplied prior-review artifacts.

| Previous finding | Passage at this head | Result |
| --- | --- | --- |
| R01, nonexistent pinned suppliers | README:322–326 now makes “Summand decomposition” a target in an arbitrary preadditive category; 172–200 lists the actual radical subgroups, stable transpose and hull APIs. | **Repaired** for the old nonexistent names. The newer pin was checked directly. The remaining quotient-carrier omission is R06, not a reassertion of the old missing names. |
| R02, missing converses | Lean:261 and 291 now state `exists_ringEquiv_end_of_hasProjectiveInjectiveCopresentation` and `exists_isAdditiveGenerator_ringEquiv_end`; README:1059–1063 asserts “inverse bijections”. | **Partly repaired.** Both converse existence statements are present; the claimed marked correspondence and scalar compatibility fail R01–R02. |
| R03, commutative global-dimension owner | README:72–77: “Layer 7 here owns its extension to noncommutative rings”; commutative results come from §0.3. | **Repaired in scope.** The new implementation of this acknowledgment uses a forbidden import and padding, R07. |
| R04, exact locators and source inventory | README:906–908 names ARS VI.1.2–1.3 and ASS IV.5.2–5.3, explicitly distinguishing Harada–Sai Lemma 12. | **Partly repaired.** The sharp-bound attribution is more precise; many claims still lack locators/pages and there is no manifest, R09. |
| R05, API/Checks/dependency shape | README:397–401 computes `rad²≠0`, `rad³=0`; 839–840 specifies `(1,2)`, `(2,1)` and multiplicity 1. | **Partly repaired.** Eight layers have Examples/Dependencies and 34 local Needs/Checks blocks. Remaining definition-level work and the invalid Karoubi Check are R10–R11. |
| R06, README/Lean names | README:439 names the Freyd–Auslander headline; 1079 names the forward Auslander theorem. | **Partly repaired.** All 24 retained local declarations are mentioned, but the gate still identifies five missing local names, R08. |

### Gate, elaboration, signatures and padding

The reviewed head is `472e13c8324cb89670efc2e87dbc4572d699065f`. The actual pins are Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`, matching README:144–145. The authorized-folder exclusion diff is empty. The parent family index and sibling QuiverRepresentations Layer 6 were read. No PR file was changed, and the final working-tree status is clean.

The supplied gate reports `imports=1`, `readme-ids-missing=5`, `build=2`, and `FAIL`; all other gate counters are zero. R03, R07 and R08 account for every reported failure. The independent dependency check returned exactly:

    depcheck: 205 roadmaps, 1488 edges, 0 problem(s)

There is no UPWARD or CYCLE line. Every Needs line and supplier paragraph was read. The layer flow is 0–2 into 3, 2–3 into 4, 0/4 into 5, 0/4/5 into 6, and 0–2 into 7. §4.2 needs only the definition in §3.5, not its application in §4.3. The field-specialization comparisons are compatibility outputs, not additional premises for the general proofs. No declared supplier gaps are present. No unowned prerequisite requiring a separate blocking finding was established.

Direct `lake env lean` on the exact file exits 0 with exactly 16 `sorry` warnings. The targeted Lake build also exits 0, but reproduces the two module-system diagnostics rejected by the gate. These two observations are compatible: successful elaboration is not a passing gate.

A scratch copy appended `#check @name` for **all 24 declarations**. It elaborates. Artinian-base, scalar and module-finiteness binders are retained in the headlines; `include R` works for AR existence and Brauer–Thrall. The finite-presentation predicate does not retain finite biproducts, but its actual presentation still makes sense without them, and the criterion theorem retains them. The generator predicates are defined for arbitrary modules; their correspondence theorems explicitly require finite modules over Artin algebras. No harmful implicit-binder loss was found. R01 concerns a genuinely weaker ring-isomorphism hypothesis, not a vanished binder.

Each of the **16 admitted theorems** was tried with `simp`, `rfl`, and `infer_instance` as complete one-tactic proofs in a scratch copy; all 16 remain admitted. Inspection of the corresponding pinned APIs found no one-lemma proof of their full generic statements. The separately proved comparison is itself `rfl`, R07. Additional scratch signatures demonstrate that the three missing global-dimension headlines and the R-algebra-equivalence repair are statable with native APIs. No scratch theorem was treated as a mathematical proof merely because it elaborated.

### Headline inventory

The README's three summits are Artin-algebra almost-split existence, Auslander's bounded-component theorem, and the Auslander correspondence inside Morita–Tachikawa. Its other deep milestones are categorical Krull–Schmidt uniqueness/recognition, Freyd–Auslander, Artinian Matlis biduality, exact-category AR duality/existence, Artin-algebra AR formulas, valued AR multiplicities/translation, Harada–Sai, Brauer–Thrall I, the infinite-radical criterion, and the general global-dimension formulas.

Lean states uniqueness/recognition and basic Krull–Schmidt structure, the kernel form of Freyd–Auslander, finite-length hull/biduality, one-sided Artin AR existence, Harada–Sai, Brauer–Thrall I, left/right Noetherian global-dimension equality, both dominant-dimension existence directions and both Auslander existence directions. The docstring names the absent exact-category Ext/duality, abelian `mod C` carrier, general translate/formulas, valued quiver/multiplicities/component theorem, and numerical dominant dimension. The infinite-radical criterion also uses the missing ideal-power construction and is absent from that inventory, as recorded in R11. R05 records the absent statable global-dimension formulas; R02 records the missing genuine inverse property.

### Ownership and supplier resolutions

Object searches used the roadmap service, pinned source trees, main, supplied open-head checkouts and board packages: decomposition/local endomorphism rings, finitely presented functors/weak kernels, radical quotients, Ext-trivial ideals, Matlis duality, global/dominant dimension, projectivization/double centralizers, and Baer sums. No duplicate fully qualified name of this acceptance file was found in the readable other roadmaps. There is no other generic categorical Krull–Schmidt or finitely presented-functor owner in those search results. This roadmap's arbitrary-Artin and nonsplit extensions are distinct from the existing algebraically closed bound-quiver theory. R06 identifies an actual pinned object that must be reused.

| Resolved file and line | Contract checked |
| --- | --- |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md:2290`, main §1.M.2 | Local Noetherian Matlis hulls, completion actions and duality for arbitrary residue fields. Finite-product assembly is new here. The open revision was not substituted for main. |
| `TauCetiRoadmap/GrothendieckEulerForms/README.md:178`, main Layer 0 | Kernel-cokernel exact structures, opposites, conflation-exact functors and abelian/split examples. |
| `TauCetiRoadmap/StablePeriodicCurved/README.md:154`, main Layer 0 | Morphism ideals/quotients, relative projectives/injectives and their factoring ideals. No triangulation of arbitrary Ext-trivial quotients is assumed here. |
| `TauCetiRoadmap/GeometricRepresentationCategories/README.md:361`, main §R5.2 | Generic Baer-sum/addition comparison requires an abelian category with `HasExt`; the exact-category extension belongs here. |
| `TauCetiRoadmap/PurityOfBranchLocus/README.md:162`, main §0.3; `Suggested.lean:132` | Commutative global dimension, cyclic/finite criteria and localization; no noncommutative theorem is supplied by this contract. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:689`, main E1.6 | Regular commutative projective-dimension bounds. README explicitly does not consume this roadmap. |
| `TauCetiRoadmap/RepresentationTheory/QuiverRepresentations/README.md:385`, this head | Layer 6A–F is the algebraically closed field/bound-quiver theory. Its left/right and translate directions agree with this extension. |
| `TauCetiRoadmap/RepresentationTheory/README.md:65`, this head | Family entry and dependency description name the new Artin-algebra part. |
| `TauCetiRoadmap/QuiverRepresentationsPartII/README.md:7,73`, supplied open head | Interval/graded continuation consumes the base quiver roadmap; it does not independently build the present general theory. |
| `TauCetiRoadmap/CountingBundlesAndHallAlgebrasOfCurves/README.md:69,305,317`, supplied open head | Explicitly consumes ArtinAlgebras Layer 0 recognition, uniqueness and radical blocks; it is a consumer, not a supplier here. |

### Pinned library declarations opened

Paths below are relative to the corresponding library. This table records **22 inspected API groups**, including their material scope restrictions.

| File and line | Verified declaration or definition |
| --- | --- |
| `Mathlib/CategoryTheory/Limits/Shapes/BinaryBiproducts.lean:1096` | `Indecomposable` includes `¬IsZero`; rank zero is excluded. |
| `Mathlib/CategoryTheory/Idempotents/Basic.lean:54` | Idempotent completeness means splitting idempotents; it does not supply finite biproducts. |
| `Mathlib/CategoryTheory/Limits/WeakLimits/WeakKernels.lean:41` | Native weak-kernel carrier used in the criterion. |
| `Mathlib/CategoryTheory/Preadditive/Yoneda/Basic.lean:58` | Additive representable functor carrier. |
| `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:265,295,303` | Native dimension, finite bound interface, and zero-object value `⊥`. |
| `Mathlib/RingTheory/Artinian/Module.lean:616` | `quotNilradicalPowEquivPi` first decomposes the quotient by a nilradical power; vanishing identifies it with R. |
| `Mathlib/RingTheory/Morita/Basic.lean:57` | `MoritaEquivalence` contains an R-linear functor; a bare ring equivalence is insufficient. |
| `Mathlib/RingTheory/Flat/Basic.lean:82,113` | Flatness here takes a commutative semiring; README's noncommutative-flatness boundary is justified. |
| `Mathlib/RingTheory/Jacobson/Semiprimary.lean:56` | Semiprimary is native; it can be used directly in the missing quotient headline. |
| `TauCeti/Algebra/Category/ModuleCat/KrullSchmidt.lean:73` | Artinian modules decompose into finite indecomposables; this is a module theorem, not abstract categorical recognition. |
| `TauCeti/Algebra/Category/ModuleCat/Indecomposable.lean:78` | Finite-length module indecomposability/local endomorphism criterion. |
| `TauCeti/CategoryTheory/Preadditive/Radical/Basic.lean:207,417,518` | Radical, additive closure of two-fold radical composites, and local-endpoint irreducibility criterion. |
| `TauCeti/CategoryTheory/Preadditive/Radical/Quotient.lean:151,166,206,252` | Existing quotient, quotient map/lift and nonzero-class criterion; R06. |
| `TauCeti/CategoryTheory/Preadditive/MorphismIdeal/Basic.lean:85,161,254` | Two-sided additive ideals and quotient Hom groups. |
| `TauCeti/CategoryTheory/Exact/Stable/Basic.lean:123–138` | Projective stable ideal is the factoring ideal; no identification with Ext-triviality without the required enough-projectives argument. |
| `TauCeti/CategoryTheory/AlmostSplit/Basic.lean:125,132` | Almost-split maps exclude split epis/monos and quantify factorization through arbitrary objects. |
| `TauCeti/CategoryTheory/AlmostSplit/Sequence.lean:129` | Almost-split sequences require short exactness and both almost-split maps. |
| `TauCeti/Algebra/Module/Injective/Envelope/Basic.lean:101,172` | Injective hull includes injectivity of the map and essential range; uniqueness has its native smallness requirements. |
| `TauCeti/Algebra/Module/ProjectiveCover/ModuleCat.lean:128` | Covers over a ring finite over an Artinian ring, with compatible scalar action; no finiteness assumption on the covered module. |
| `TauCeti/Algebra/Module/AuslanderReiten/Transpose.lean:103`; `Equivalence.lean:179`; `Translate.lean:104` | Arbitrary-ring transpose and finitely presented stable equivalence; the existing dual translate is presentation-based. Minimality is essential for the module-level representative. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Morita.lean:98,104` | Restriction of an equivalence of module categories to finite and finite-projective modules. |
| `TauCeti/RingTheory/Morita/Corner.lean:451` | Full-idempotent corner Morita equivalence, with the central R-action retained. |

### Seeded source verification

All **15 specified sample targets** were examined. There are no separately flagged “unverified” locators in the README; instead it asserts that all numbered locators were checked. The following distinguishes actual text verification from a mathematical test or a deduction. Source numbers refer to the service's numbered extractions. All source passages used here were read by the reviewer; the helper only located/fetched texts.

| Seeded target | Locator/text result |
| --- | --- |
| 0.3 Uniqueness | `krause` line 451, Theorem 4.2, arXiv v1 p.9: finite decompositions in an additive category, local end rings, matching permutation. Corollary 4.3 at line 468 and Corollary 4.4 at 478 confirm summand/idempotent consequences. Hypotheses agree. |
| 0.5 Closure and generators | No claim-level locator is supplied. Closure and the finite-generator equivalence follow from finite decompositions plus uniqueness; tested below. Krause supplies that input, not an independently located theorem with this exact label. R09. |
| 0.6 Radical ideal | `krause` line 240, Proposition 2.9, v1 p.5, supplies the categorical ideal and diagonal Jacobson characterization; lines 488 onward give the block description. Native radical API confirms the endpoint restriction missing in the irreducibility sentence, R04. |
| 1.1 `mod C` | No precise locator; the bare Yoneda reference was unavailable. The representable/zero/non-finite examples were evaluated, but source certification of the whole construction is not claimed. |
| 1.2 Freyd–Auslander | Auslander §2/Freyd are settled uncertified. Enomoto line 1543 uses the weak-kernel criterion but is not a replacement verification of the cited original theorem. |
| 1.5 Projective covers | `krause` line 402, Proposition 4.1, v1 pp.8–9: semiperfectness iff finitely generated modules have covers. Section 3, including lines 344 and 377, gives the minimal/essential-cover machinery. The functor statement is the roadmap's deduction using a presenting representable, not a verbatim proposition in Krause. |
| 3.1 Exact-category Ext¹ | Yoneda text unavailable and no exact locator supplied. `inp` lines 485–520, Fact 1.20, supports the exact Hom/extension sequences in the extriangulated setting; an exact structure gives the monic initial term. The exact-category construction itself is still owned here. |
| 3.2 Ext-trivial ideals | `inp` line 523, Definition 1.21, v3 p.8; line 534, Remark 1.22, p.9; `enomoto` lines 1489–1496, §A.2, v4 p.24. Variance, quotient and enough-projectives/injectives qualifications agree. |
| 3.4 Functorial picture | `enomoto` line 1442, Proposition A.2, v4 p.23: simple functors, right almost-split image/presentation and finite-presentation criterion. Lines 1432–1439 give minimality of an AR conflation. The minimal-resolution formulation follows by applying representables to the conflation and using the covers; add the missing locator. |
| 4.1 Translate | ARS chapter IV unavailable. The native transpose/presentation APIs and tests below support the construction direction, but do not certify the book locator. |
| 4.3 AS existence/source/sink | ARS Theorem V.1.15 unavailable; the source/sink paragraph has no separate locator. Checked native definitions and the concrete two-simple/dual-number examples. |
| 5.1 Bimodules/valuations | No local source locator is supplied. Independently, `inp` lines 1152–1161, Definition 3.11 and Proposition 3.12, v3 p.18, gives the two division-ring dimensions and multiplicity. Its order is `(b,a)` relative to this README; the real/complex computation below verifies this README's order. |
| 6.1 Harada–Sai | `haradasai` line 652, Lemma 12, printed p.339, gives a uniform eventual bound, not the stated explicit exponent. The README now distinguishes this. ARS VI.1.2–1.3 and ASS IV.5.2–5.3 were unavailable; their sharp-bound numbering remains uncertified in this review. |
| 7.1 Projectivization/Morita | ARS Proposition II.2.1 unavailable. `krause` line 162, Proposition 2.3, v1 p.3, supplies additive-generator/projective-module comparison; native full-corner and restriction APIs agree with the opposites used here. The double-centralizer claim lacks its own locator. |
| 7.2 Global dimension | `auslander1955` line 40, Theorem 1, printed p.68; lines 123/134, Theorem 4/Corollary 5, p.70; lines 211/230, Corollaries 9/11, p.73. Cyclic supremum, two-sided Noetherian equality and semiprimary quotient support the statements. Line 252, p.74, uses dimension −1 for zero, requiring translation to native `⊥`. |

Additional route checks: `enomoto` lines 1482–1522 fixes a complete local Noetherian base and proves Proposition A.5 under Hom-finiteness or Ext-Noetherianity; Theorem A.9 at line 1557 assumes enough projectives and injectives. `inp` lines 1022–1045 and 1131–1136, Definition 3.4/Theorem 3.6, v3 pp.16,18, gives the field-base objectwise-to-global assembly. This supports the roadmap's explicit local-base extension route rather than treating either source as an arbitrary-Artinian theorem. `lenzing` lines 21–44, Theorem 1.1, printed p.169, uses an Ext-finite **skeletally small abelian** category over an Artinian ring; it is the abelian comparison, not a substitute for the exact-category theorem.

`chase` line 139, Theorem 2.1, printed p.460, confirms the left/right coherence direction. `matlis` line 638, Theorem 4.2, printed p.526, concerns complete local Noetherian biduality. `hoshino` lines 30–41, p.275, confirms flatness in its dominant-dimension convention and agreement for Artinian rings. `muller` lines 117–133, Theorem 2 and its remark, p.401, concerns a fully faithful marked module; it does not identify multiplicities merely by additive closure. Its finite-dimensional setting does not by itself certify the arbitrary-Artinian version here.

### Adversarial values

Notation: k is a field, `B=k[ε]/(ε²)`, `S=B/(ε)`, `i(1)=ε`, and `p:B→S` is quotient. Thus `p i=0` and `i p=ε≠0`. For the triangular algebra `T₂(k)`, write U for the simple projective, W for the simple nonprojective, and V for the length-2 projective-injective. Rows record computations, not proofs of the general theorems. “Pass” means these instances do not refute the statement.

| # | Statement / convention | Instances and computed values on both sides | Result / change |
| --- | --- | --- | --- |
| 1 | Artin algebra, coefficients, finite modules | `ℤ/4` is finite of base length 2 over itself; no unital field embeds in it. A field k has base length 1. Zero ring has only the zero module. | Pass; non-field and zero bases retained. |
| 2 | Hom-finiteness from endomorphism finiteness | In `mod B`, `End(B⊕S)` has k-dimension `2+1+1+1=5`; the two off-diagonal Hom spaces each have dimension 1. They are retracts of that end space. | Pass; end-only recognition hypothesis suffices. |
| 3 | Local end ring implies indecomposable | `End(S)=k`: local=true, indecomposable=true. `End(0)=0`: local=false, indecomposable=false. `End(k²)=Mat₂(k)` has nontrivial projection. | Pass. |
| 4 | Fitting/locality converse | For B, ε is nilpotent with ε²=0 and `1+ε` is a unit. For ℤ, 2 is neither nilpotent nor a unit. | Pass with finite length; ℤ excluded. |
| 5 | Idempotent-completeness hypothesis | Free `k×k` modules have rank pairs `(n,n)`; `(1,0)` cannot split there. The rank `(1,1)` object is indecomposable internally but has end ring `k×k`, not local. | Pass negative control. |
| 6 | Krull–Schmidt definition | Zero object: n=0 gives empty sum 0. `B⊕S`: two local summands of lengths 2,1. ℤ: indecomposable, nonlocal end ring, so KS=false. | Pass. |
| 7 | KS transport and idempotent completeness | In `mod(k×k)`, `(1,0)` acting on `(k,k)` has image `(k,0)` and complement `(0,k)`; dimensions add `(1,0)+(0,1)=(1,1)`. | Pass. |
| 8 | 0.3 uniqueness / Lean uniqueness | `B⊕S` versus `S⊕B`: same two classes, permutation swap. `B⊕S` length 3 versus `B⊕B` length 4: no isomorphism. Empty families: `0=0`, unique empty bijection. | Pass. |
| 9 | Nonlocal uniqueness control | In `ℤ[√−5]`, nonprincipal ideal I has class order 2: `I²=(2)`, so `I⊕I≅R²`, while `I≇R`. | Pass; local-end hypotheses discriminate. |
| 10 | Primitive orthogonal idempotents | In `k×k`, e₁e₂=0 and e₁+e₂=1, each corner k; in the zero ring the empty sum is 0=1. | Pass; splitting not assumed. |
| 11 | Categorical recognition | `mod(ℤ/4)` gives indecomposables of lengths 1,2. `Kar` of the single-object `k×k` category has only four rank pairs and lacks `(2,0)`. | The theorem survives; its advertised Check fails. R10. |
| 12 | 0.5 full-subcategory closure | `add B` contains only B-sums, with unique indecomposable B. Free `k×k` modules omit the summand `(k,0)`. | Closure theorem passes; omitted hypothesis gives failure. |
| 13 | Finite-length/quiver KS instances | Finite abelian groups: `ℤ/6≅ℤ/2⊕ℤ/3`, both local end rings. One-loop finite-dimensional nilpotent Jordan blocks have local end rings `k[t]/tⁿ`. | Pass; arbitrary finite-length module case retained. |
| 14 | Additive generators iff finitely many classes | `mod B`: classes `{S,B}`, generator `S⊕B`. `mod k`: one class, generator k. Kronecker preprojectives have dimensions `(n,n+1)`, infinitely many classes. | Both directions pass. |
| 15 | Radical convention `1−g≫f` | For f=ε on B, `1−gε` has inverse `1+gε`. For f=1 choose g=1: `1−1=0`, nonunit. | Pass; composition direction fixed. |
| 16 | 0.6 matrix radical and its powers | In `mod B`, `rad²(B,B)=kε≠0`, `rad³=0`; in the ring `End(B)=B`, `J²=0`. In `mod k`, radical=0. | Pass; category/ring squares distinguished. |
| 17 | Irreducible iff rad minus rad² | `i:S→B`: radical=true, square=false, irreducible=true. `(i,0):S²→B`: radical=true, square=false, irreducible=false. | R04: restore local endpoints. |
| 18 | 1.1 finitely presented functor | `Hom(-,k²)` has presentation `0→Hom(-,k²)→F→0`; F(k) has dimension 2. Zero functor has dimension 0. `Hom(-,k^(ℕ))` takes k to infinite dimension, impossible for a quotient of a finite representable. | Pass; wrong all-functors model excluded. |
| 19 | Cokernel/extension/projective API in mod C | For `C=proj k`, representables correspond to finite vector spaces: cokernel of id has dimension 0, cokernel of zero `k→k` dimension 1; extensions split and dimensions add. | Pass on the semisimple case. |
| 20 | 1.2 Freyd–Auslander both directions | `proj ℤ`: ker(×2)=0, weak kernel exists, finite modules form an abelian category. In `k[x,yᵢ]/(xyᵢ)`, ann(x) contains all independent yᵢ and is not finitely generated: no finite-projective weak kernel, ambient kernel not finitely presented. | Pass; noncoherent negative control. |
| 21 | 1.3 evaluation and opposite convention | `P=A`: End(P)=Aᵒᵖ; right End(P)-modules equal left A-modules. `P=k²`: End(P)=Mat₂(k), `Hom(P,k)` is a row of length 2. | Pass. |
| 22 | Abelian category with enough projectives | `C=mod B`: `B→S` has kernel S, then a second B surjects onto it, giving a two-representable presentation. `C=mod k`: all presentations split, so every finitely presented functor is representable. | Pass. |
| 23 | 1.4 dimension two iff kernels | `C=proj B`: kernel of ×ε is S, not projective, and `pd_B S=∞`. `C=mod B`: kernels exist, simple-functor projective dimensions are 2 and 1. `C=proj ℤ`: kernels free, gl.dim 1≤2. | Both directions pass. |
| 24 | 1.5 projective cover definition/existence | Zero cover has end ring 0 with identity=0 invertible as an endomorphism. `Hom(-,S)→S_S` is minimal. `ℤ→ℤ/2` is fixed by ×3, which is not a unit, so is not a cover. | Pass. |
| 25 | Artinian local factors | `ℤ/6≅𝔽₂×𝔽₃`: two factors, radical0, exponent1. `ℤ/4`: radical(2), square0, one factor. Zero ring: zero maximal ideals, empty product=zero ring. | Pass. |
| 26 | Finite injective cogenerator | Over `ℤ/4`, hull of S is R with length2, socle S. Over `k[x,y]/(x,y)²`, hull is D(R), length3, socle dimension1; R's socle dimension2. | Pass; E=R is excluded in the non-Gorenstein example. |
| 27 | Matlis biduality and exactness | Over B, D(S)≅S (length1), D(B)≅B (length2); evaluation is bijective. Dualizing `0→S→B→S→0` retains lengths `1,2,1`. Over 𝔽₂ the countable direct sum has countable size, double dual is uncountable. | Pass; infinite-length counterexample. |
| 28 | Artin left/right duality | `D_k(k²)` is the right dual row of a left column; double dual returns dimension2. `D_R A` contains each simple in its socle through the corresponding dual projective. | Pass on matrix and local examples. |
| 29 | Nakayama functor | Over B, νB=B. Over `T₂(k)`, νU=V and νV=W, with lengths `1→2` and `2→1`. Tops of projectives U,V match socles of injectives V,W. | Pass; ν need not preserve module length. |
| 30 | Finite hulls/minimal coresolution | Over B, hull S=B, cokernel S, repeated period1. Over `T₂(k)`, hull U=V, cokernel W injective, next cokernel0. | Pass. |
| 31 | 3.1 Ext¹ and Baer sum | In finite abelian groups, Ext¹(ℤ/2,ℤ/2)=ℤ/2: split class0, ℤ/4 class1, `1+1=0`. In split exact structure Ext¹=0. | Pass; both structure and non-split class distinguished. |
| 32 | Long exact sequences and variance | Apply Hom(S,−) to `0→S→B→S→0`: vector dimensions `1→1→1→1→0`, maps id,0,id,0. Dual sequence has the same values. | Exactness and boundary direction pass. |
| 33 | 3.2 Ext-trivial ideals | Split exact structure: Ext=0, both ideals all morphisms, quotients0. In `mod B`, id_B acts on Ext as0; id_S acts on Ext¹(S,S)=k as1. | Pass; wrong factoring-through-zero convention excluded. |
| 34 | Enough-projectives comparison | In `mod B`, maps through B induce zero Ext. In finite abelian groups there are no nonzero projectives; id_(ℤ/p) still acts as identity on nonzero Ext¹. | Pass; enough-projectives condition not dropped. |
| 35 | 3.3 AS conflation/uniqueness | For B and ℤ/4, the sequence lengths are `1→2→1`, nonsplit class1; the split middle has length2 but class0 and is excluded. | Pass; length alone does not define AS. |
| 36 | Extension-class criterion | For B, pushout of class1 along `i:S→B` gives 0 because B is injective; along id_S gives1, but id is split mono and not tested. Zero class fails nonzero condition. | Pass. |
| 37 | 3.4 simple functor and right AS image | `S_S(S)=k`, `S_S(B)=0`. Image of `Hom(-,p)` has values 0 at S and `k·p` at B, equal to rad(-,S); image of id_S has value k at S, too large. | Pass. |
| 38 | AS minimal projective resolution | At B, the resolution for S_S evaluates to dimensions `1→2→1→0`, maps i,p,0. At S it evaluates to `1→1→1→1`, maps id,0,id. | Exactness/minimality tests pass. |
| 39 | 3.5 AR duality/existence | B: τS=S, stable Hom(S,S)=k and Ext¹(S,S)=k, lengths1=1. Split structure: both quotient categories zero, both sides0, AS demand empty. | Pass. |
| 40 | Artinian product assembly | `R=k×k`: central e₁/e₂ split each object into ranks `(m,0)` and `(0,n)`; cross Hom and Ext are0, and duality acts separately on m,n. | Pass under idempotent completeness. |
| 41 | 4.1 translate and inverse | B: minimal presentation ×ε gives Tr S=S and τS=S; projective B gives Tr B=0 and τB=0. `T₂(k)`: τW=U, τ⁻U=W. | Pass; minimal-presentation convention essential. |
| 42 | 4.2 stable equivalence | Over B, B becomes0 and S remains nonzero in both stable categories; End_stable(S)=k and τ acts as identity on its class. | Pass. |
| 43 | Both AR formulas | B, M=N=S: both dual stable Hom spaces have dimension1=dim Ext¹. M=B or N=B: both sides0. k: all sides0. | Pass. |
| 44 | 4.3 existence and dual | Over B and ℤ/4 there is one nonprojective indecomposable, S, with middle B; over k none are demanded. Over `T₂(k)`, `0→U→V→W→0` has lengths `1+1=2`. | Pass, including semisimple boundary. |
| 45 | Source/sink and irreducible summands | B: sink B is i and source B is p. k: sink simple is `0→k`, source is `k→0`, while no AS sequence exists. For i, the complement in its minimal sink is0. | Pass; maps and sequences distinguished. |
| 46 | 5.1 bimodule actions and valuations | For the real/complex triangular algebra use U=(ℝ,0), V=(ℂ,ℂ,id), T=(ℝ,ℂ,Re). Irr(U,V)=ℂ with division rings ℝ,ℂ, giving `(1,2)`; Irr(V,T) gives `(2,1)`. | Pass; endpoint actions give unequal dimensions. R06 concerns carrier reuse. |
| 47 | 5.2 valued translation condition | For the preceding sequence `0→U→V→T→0`, τT=U, so `(2,1)` reverses to `(1,2)`. B's two arrows both have `(1,1)` and τS=S. | Pass; retaining `(1,2)` under reversal fails. |
| 48 | 5.3 valued AR quiver | B: two vertices and two directed arrows; ε at B belongs to rad² and gives no loop. k: one vertex, zero arrows. Zero ring: zero vertices. | Pass. |
| 49 | Middle-term multiplicity | In the real/complex sequence V occurs once: `b_VT=1=a_UV`. In B's sequence B occurs once: both entries1. | Pass; swapped rule would give2. |
| 50 | Field arrow-count comparison | Irr(U,V) has real dimension2=`b_UV·dimℝ F_U=2·1`; Irr(V,T) has dimension2=`1·2`. Algebraically closed split case: n=`n·1`. | Pass. |
| 51 | Mesh direction | B's mesh ending at S gives `p i=0`. Opposite composite `i p=ε≠0` ends at projective B and is not a mesh relation. | Pass. |
| 52 | Representation-finite definition | B: skeleton cardinality2; k:1; zero ring:0; Kronecker preprojectives `(n,n+1)` give infinitely many distinct dimension vectors. | Pass. |
| 53 | Chain composition | n=0 gives identity; n=1 gives f₀; `B→S→B` gives ε at n=2; append p and n=3 gives0. | Pass; order agrees with the definition. |
| 54 | 6.1 Harada–Sai | b=1: threshold1, nonisomorphisms between simples are0. b=2: threshold3, previous two-map chain≠0 and three-map chain=0. b=0: threshold0 but no length0 indecomposable. | Pass; natural subtraction creates no counterexample. |
| 55 | Radical nilpotence consequence | In `mod B`, `rad²≠0`, `rad³=0`, matching `2²−1=3`; zero ring has top ideal=bottom, so zeroth power=bottom. | Pass. |
| 56 | 6.2 bounded component | B: one two-vertex component, maximum length2, whole quiver. `k×k`: two isolated components, each length1, but nontrivial central idempotents exclude the hypothesis. | Pass. |
| 57 | Brauer–Thrall I | B: bound2 and 2 classes. k: bound1 and 1 class. Zero: bound0 and 0 classes. Kronecker preprojective lengths `2n+1` unbounded. | Pass. |
| 58 | Infinite radical iff finite type | B: rad³=0 implies intersection0. For Kronecker, a nonzero map from the sink simple to a regular simple factors through regular length-n Jordan modules for every n; choose a vector mapping to1, so each composite remains1. | Pass; nonzero infinite-radical control. |
| 59 | Connected finite-type quiver | B: one component; `T₂(k)`: three vertices joined in one chain; `k×k`: two components and fails connected-algebra premise. Empty quiver has 0 components; a nonempty connectedness convention must exclude the zero ring. | Convention must be stated when formalizing; no unsupported Lean predicate assumed. |
| 60 | 7.1 projectivization | M=k²: Γ=Mat₂(k), Hom(M,k) is a right row of dimension2, Hom(k,M) a left column of dimension2; Hom(M,M) dimension4. M=0: add0 and projectives over zero ring are both zero categories. | Pass. |
| 61 | Double centralizer | M=k²: End_Γ(M)=k, action map dimension1→1. A=Mat₂(k), M=A: Γ=Aᵒᵖ and End_Γ(M)=A, dimension4→4. M=0 over k is not a generator. | Pass. |
| 62 | Morita theory/invariants | k and Mat₂(k): simple lengths1=1, global dimensions0=0, dominant dimensions∞=∞, despite vector dimensions1≠2. k and k×k: simple-class counts1≠2, not Morita equivalent. | Pass. |
| 63 | 7.2 global dimension definition/comparison | Zero ring: supremum⊥. k:0. ℤ:1 realized by ℤ/p. B:∞ because Extⁿ(S,S)=k for every n≥1. Both commutative definitions have those same values. | Pass mathematically; comparison is padding R07. |
| 64 | Cyclic/finite/left-right formulas | ℤ: cyclic supremum1=finite supremum1=global1, both sides equal. `T₂(k)`: each side has a simple of pd1 and global1. | Pass; missing native statements R05. |
| 65 | Semiprimary quotient formula | B/J=S: pd∞=global∞; k/J=k: pd0=global0; zero quotient0: pd⊥=global⊥. | Pass; native signature elaborates. |
| 66 | 7.3 dominant dimension/copresentation | k and B: every term of minimal injective coresolution is projective, dom∞. `T₂(k)`: first term projective, second has W nonprojective, dom1. `End_B(B⊕S)`: dom2. | Pass; ≥2 predicate distinguishes the triangular algebra. |
| 67 | Generator-cogenerator predicate | Over B, B and B⊕S contain the sole indecomposable projective/injective B; S cannot contain B because lengths1<2. | Pass; use negative Check in R11. |
| 68 | 7.4 forward | M=B over B: Γ=B, dom∞≥2 but global∞. M=B⊕S: Γ has dimension5 and dom2≥2. | Pass; no accidental global bound. |
| 69 | 7.4 converse/reconstruction | Γ=End_B(B⊕S) has dimension5; its basic projective-injective sum Q has dimension3; End_Γ(Q)=B dimension2; End_B(Q)=Γ dimension5. Γ=Mat₂(k): Q=k², B=k, reconstructed end dimension4. | Pass; marked module matters. |
| 70 | R-linear injectivity signature | R=k×k with opposite projection actions: both end rings k and e=id, but `(1,0)·id` has values1 and0. | False, R01; algebra-linear e excludes the instance. |
| 71 | Pair equivalence/inverse bijection | add(k)=add(k²)=mod k; end dimensions1 and4. For corrected marked equivalence, k and k² have dimensions1≠2 and cannot be identified. | False as written, R02. |
| 72 | 7.5 Auslander forward | M=B⊕S: Γ dimension5, simple projective dimensions2,1, so global2. M=k²: Γ=Mat₂(k), global0. M=B alone misses S and has end global∞. | Pass; additive-generator hypothesis discriminates. |
| 73 | Auslander converse | Γ dimension5 has `(global,dominant)=(2,2)` and reconstructs B with2 classes. B itself has `(∞,∞)` and fails the global hypothesis. Zero ring has `(⊥,∞)` and reconstructs zero with0 classes. | Pass on stated existence; marked correspondence still R02. |

## Not verifiable

Every bibliography work was attempted through the legal source service: **19 works total**, **10 readable**, **6 unavailable**, and **3 settled uncertified**. Unavailable text is not evidence of a false theorem. This review is finished rather than parked; the source limitations below remain explicit.

- **ars**, *Representation Theory of Artin Algebras* (1995): DOI `10.1017/CBO9780511623608` resolved to the Cambridge landing page, without accessible full text. Thus II.2.1, II.3.1/3.3, chapter IV/IV.4.5–4.6, V.1.15, VI.1.2–1.5, VI.5.4/5.6/5.7 and VII.1/1.3/1.5 are not independently certified here. These affect several sampled targets and the correspondence headlines.
- **ass**, *Elements of the Representation Theory of Associative Algebras*, vol.1 (2006): DOI `10.1017/CBO9780511614309` reached the Cambridge landing page but no legal text. IV.2.13, IV.5.2 and IV.5.3 remain unverified, including the sharp Harada–Sai bound locator and the proposed proof transfer for the AR formulas.
- **auslander1971**, *Representation Dimension of Artin Algebras*: the service's title search found no legal full text. The arbitrary-Artin correspondence was tested on examples, not source-certified from these notes.
- **auslander1974**, *Representation Theory of Artin Algebras II*: DOI `10.1080/00927877409412807` returned publisher HTTP 403. The bounded-component and infinite-radical locators could not be checked.
- **roiter**, the 1968 unboundedness paper: title resolution did not provide a readable legal original. The Brauer–Thrall attribution and original locator are not certified.
- **yoneda**, *On Ext and exact sequences* (1960): title resolution did not provide legal text; the README gives no exact internal locator to verify.

These six entries are retained together in the missing-reference record. **auslander1966** (*Coherent functors*), **freyd** (*Representations in abelian categories*) and **tachikawa** (*Quasi-Frobenius Rings and Generalizations*, DOI `10.1007/BFb0059997`) remain **uncertified** publisher citations; their settled status was preserved and no renewed missing-text request was made. In particular, the Freyd–Auslander original source and full arbitrary-Artinian correspondence cannot be represented as independently verified in this report.

No source passage was copied into the roadmap or report. OCR ambiguities, including lost overbars on stable categories and inequality glyphs in older scans, were not promoted to source errors. The dependent mathematical tests and ownership review were completed despite the unavailable books.

## Source issues

- **Misprint** in enomoto at Definition A.6(2), arXiv v4 p.25 (`enomoto` line 1531): the source says the dual of F in the clause quantifying G; it should be the dual of G; affects nothing.
