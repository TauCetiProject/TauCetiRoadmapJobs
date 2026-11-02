# Review of LocalFieldsRamification (pull request #1410 at 4cf8151)

**Verdict:** rejected

The new mathematics needs a continuation roadmap. This folder extends and republishes a programme that is already completed on main. The rejection concerns that ownership boundary, not a counterexample to the general Hasse–Arf theorem. The extension can be preserved in a separately owned continuation. There are also acceptance-file and gate defects below. This is an AI review for human consideration, not approval.

## Previous review reconciliation

The supplied previous report is headed “Review of LocalFieldsRamification (pull request #617 at 0794304)”, says “No finding”, and explicitly describes an incremental review. It is not a review of this head or of this 2,125-line specification. Its earlier acceptance cannot certify this package. I nevertheless checked its four recorded repairs against this head:

| Earlier finding | Passage at this head | Status |
|---|---|---|
| R01: cyclic-subextension detection and overstated prime-degree input | README:1584: “Prime-degree integrality and tower transitivity alone do not imply Hasse–Arf.” Sections 3a.3 and 4a use the proalgebraic proof instead. | The invalid inference is not present. The earlier cyclic-reduction section is absent, but is not needed by this different route. The absent `CyclicReduction` module is not cited. |
| R02: positive graded quotients and eventual triviality | README:1303 says “`G_i = 1` for all large `i`”; :1306–1312 gives the positive additive graded embedding and wild Sylow conclusion. | The mathematical inputs are present. Their general-residue extension is an explicit target, not an assertion that the old cyclic-reduction implementation exists. |
| R03: Frobenius theorem name | Suggested.lean:910 uses `TauCeti.IsArithFrobeniusLift.toTameQuotient_mul_toTameQuotient_mul_inv`. | Resolved at the pin and elaborates. This is a valid native theorem with the arithmetic convention, although the previous report mentioned a different valid variant. |
| R04: finite Tate ownership | README:11 says “build finite-group Tate cohomology”; :738 and :1057 cite `ClassFieldTheory.tateH`. | Not repaired in this head. Main's ClassFieldTheory Layer 0 consumes Mathlib's Tate complex and does not supply that proposed definition; see R08. |

No supplied repair report marked a finding “not actionable in this package”; none is being silently reopened on that basis.

## R01 (P2) — Put the extension after the completed roadmap

**Location:** `TauCetiRoadmap/LocalFieldsRamification/README.md:27`: “It also owns the ramification package over fields complete for a discrete valuation ... (Layers 3a and 4a).”

**Claim:** The original LocalFieldsRamification folder is made owner of a new general-residue programme while retaining its original Layers 0–4 as a build programme. The standing ownership rule requires an extension to build on the existing roadmap in a continuation, not enlarge/re-plan it in place.

**Witness:** `Completed/LocalFieldsRamification/README.md:3–9` records completion; :31–36 retains the original finite-local-field scope. The new general-residue Layers 3a and 4a are not that completed specification.

**Repair:** Preserve the completed base and move the new general-residue targets into a separately owned continuation, citing the completed base and the pinned declarations by exact section/name. Reconcile its name and scope with `packages/LocalFieldsRamificationPartII/design/README.md`, whose existing programme concerns arbitrary Krull valuations and tameness; do not overwrite that programme either. State where the base stops. The test is unchanged mathematics: the continuation must cover both the Artin–Schreier extension over an infinite perfect residue field and the mixed-characteristic tame example in the table, while importing finite-local-field instances. These examples do not justify rebuilding the base. This needs a scope/ownership change, hence `rejected` under the supplied verdict rules.

## R02 (P1) — The required build gate remains red

**Location:** required build of `TauCetiRoadmap.LocalFieldsRamification.Suggested` and the five other modules named in the brief; first reported diagnostic at `TauCetiRoadmap/ProfiniteCohomology/Suggested.lean:567`.

**Claim:** The supplied gate reports `build=41 FAIL`. This is a gate blocker under the brief's failed-build rule. It must not be described as a type error in LocalFieldsRamification: its direct elaboration succeeds.

**Witness:** The first diagnostic is unused section variables in `TauCetiRoadmap.ProfiniteCohomology.B1_le_Z1`. The prescribed six-module replay exits successfully but emits 63 non-`sorry` diagnostics: 57 unused-section-variable warnings, five unused-variable warnings, and one deprecated-name warning.

**Repair:** Have the owners of the affected shared modules remove unnecessary binders and replace the deprecated `AddMonoid.IsTorsion` name with `IsAddTorsion`, then rerun the identical required build and gate until only permitted `sorry` warnings remain. Do not suppress the linter with `set_option`, and do not expand this folder's patch into unrelated roadmaps. The concrete replay distinguishes successful elaboration from the still-failing warnings policy. This review changes neither shared modules nor tooling.

## R03 (P2) — Delete targets already supplied at the pins

**Location:** `TauCetiRoadmap/LocalFieldsRamification/README.md:290`: “Define `TauCeti.unitFiltration K i : Subgroup Kˣ`”; :333–346 plans its graded isomorphisms, then acknowledges their implementations.

**Claim:** Layers 0–4 repeatedly retain implemented constructions and their full API as targets, with implementation notes interspersed. Naming the native object does not turn a repeated construction into a supplier contract. The rule requires deletion of an existing target and an exact deferral in scope/supplier contracts.

**Witness:** `TauCeti/NumberTheory/LocalField/NormalizedValuation.lean:114,231` already defines the valuation and its kernel theorem. Suggested.lean:147–151 merely applies that theorem; :431–436 is a definitional equality proved by `rfl`.

**Repair:** Replace implemented target blocks with a concise inventory of the exact supplied objects, hypotheses and laws. Retain only mathematically distinct extensions, explicitly identifying the changed domain. For example, general-DVR Herbrand functions are a distinct target; defining the native finite-local-field unit filtration again is not. On the witness `5 ∈ U₂ \ U₃` in ℚ₂, the imported filtration gives exactly the same result, so no replacement construction or adapter is needed. R04 covers the separate acceptance-file padding consequence.

## R04 (P3) — Remove worked examples and API adapters from the acceptance file

**Location:** `TauCetiRoadmap/LocalFieldsRamification/Suggested.lean:353`: “Layer 1, worked example: the dyadic deep-square bound”; also :403, :411, :417, :471, :503, :513.

**Claim:** Seven admitted declarations are worked examples or negative controls. The file also contains proved API wrappers, aliases and computation rules unrelated to making a new headline statable. It is an API catalogue rather than the requested acceptance test.

**Witness:** `padicUnit_square_of_eight_dvd_sub_one`, three unramified-quadratic examples, `tameQuadratic_norm_counterexample`, `ramifiedQuadratic_finrank`, and `dyadicCyclotomic_finrank` compute Checks. `upperRamificationGroup_quotient` is already proved by `rfl`.

**Repair:** Delete them from `Suggested.lean`; retain their mathematics as README Checks. Also delete the simple imported wrappers and their now-unneeded definitions/instances: for example :147, :155, :174, :199, :243, :251, :310, :431, :752, :817, :928 and :934. Do not “repair” the examples by proving them in place. The computed rows below retain `8` square classes, degrees `2,2,4`, and the norm counterexample `v₃(16−1)=1`, so deletion loses no discriminating Check. Keep genuine unsupplied headlines, with only definitions they need.

## R05 (P3) — Supply the required shape and per-definition Checks

**Location:** `TauCetiRoadmap/LocalFieldsRamification/README.md:19,76,288,350`; Suggested.lean:47 calls the file “representative Lean-facing signatures”.

**Claim:** The README lacks the required Summary, Scope and ownership, Conventions, Exact supplier contracts and How to read the build sections. Original layers remain nested bullet catalogues with Prerequisites/API fields, and definitions such as Teichmüller and the unit filtration lack three attached discriminating Checks. Later aggregate Checks do not supply the missing per-definition tests. Layers also lack their required Examples and Dependencies endings.

**Witness:** README:350–377 gives Teichmüller's definition and API without a Checks block. README:290–332 similarly gives the filtration API without one. The first `**Checks.**` heading is at :1289.

**Repair:** Shape the continuation around the prescribed headings and prose subsections, with item-specific Needs and locators. Give every retained definition at least three discriminating Checks. For Teichmüller, use the residue-one value, the lift of `4 ∈ 𝔽₅` being `−1`, and rejection of the ordinary integer lift of `2` since `2⁴=16≠1`; for the filtration use depth zero, `5 ∈ U₂ \ U₃`, and the unequal depth-zero/positive graded orders. Rewrite the module docstring to enumerate headlines and unavailable carriers. Imported definitions should instead be removed as R03 requires.

## R06 (P3) — Remove the five forbidden anchor tags

**Location:** `TauCetiRoadmap/LocalFieldsRamification/README.md:1270`: `<a id="perfect-residue-herbrand"></a>`; also :2068, :2075, :2085, :2093.

**Claim:** These are the five `residue` gate failures. They are HTML anchors, not mathematical errors.

**Witness:** The repeated scanner run reports `residue=5`, with exactly those five lines.

**Repair:** Use ordinary Markdown headings and their generated slugs, update every corresponding internal link, and delete the tags. Check the contract and four source links after the change; their mathematical destinations remain unchanged.

## R07 (P3) — Resolve the TeX scanner's fenced-code false positive

**Location:** `TauCetiRoadmap/LocalFieldsRamification/README.md:829–832`, the `text` fenced power-basis formula.

**Claim:** The gate reports three `tex` matches on :830–831. All are inside an existing fenced code block, which the gate's stated rule expressly permits. This is a scanner false positive, not a violation of the stated outside-code rule.

**Witness:** Both formula lines lie between the opening fence at :829 and closing fence at :832; nevertheless the repeated gate reports `tex=3`.

**Repair:** For a package-only way to obtain a passing gate, write the same formula in Unicode/prose without the brace-subscript pattern, retaining the finite index condition. Alternatively have the gate owner correct the false positive outside this review. Do not change tooling here. At `1+√2` the formula still gives `min(0,1)=0`; at `√2` it gives `1`.

## R08 (P3) — Correct the obsolete finite-Tate consumer name

**Location:** `TauCetiRoadmap/LocalFieldsRamification/README.md:738`: “the finite-Tate package `ClassFieldTheory.tateH`”; repeated at :1057.

**Claim:** This consumer citation and the opening finite-Tate ownership description do not match ClassFieldTheory on main. They are downstream descriptions, not an unowned prerequisite of the general Hasse–Arf proof, so this is a citation defect rather than P1 supplier drift.

**Witness:** `TauCetiRoadmap/ClassFieldTheory/README.md:642–652` assigns Layer 0 an audit/supplement of Mathlib's `tateCohomology` and explicitly rejects a new `tateH` definition. Its existing norm-residue and conductor targets remain present.

**Repair:** Cite ClassFieldTheory Layer 0's finite-Tate supplements and Mathlib's actual Tate cohomology carrier, with the applicable action and degree. Remove the obsolete qualified name in both places and correct the introduction. The unramified quadratic norm example still has unit norm quotient trivial and valuation norm subgroup `2ℤ`; this change concerns the owner and carrier, not those values.

## Verified sound

Reviewed the entire target README and Lean file, not only the seeded sample. Head and clean worktree were checked. No tracked file was changed and the diff outside this folder is empty. Main was `fa41b374`; pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. I read the normative repository README/CONTRIBUTING and main's NewtonPolygons and FormalLaurentPuiseux roadmaps for shape.

### Mechanical checks and signatures

The supplied gate has `tex=3`, `residue=5`, `build=41`; every other reported category is zero. Repeating the text/dependency gate reproduced the same three TeX matches and five anchors. There are no `set_option`, admitted data, admitted examples, invalid imports, stray files or outside-folder edits. No computational algorithm or copied mathematical passage was identified.

The prescribed dependency check printed exactly:

```text
depcheck: 205 roadmaps, 1505 edges, 0 problem(s)
```

The earlier run reported 1500 edges and the final replay 1505; both reported zero problems. The target files remained unchanged. No UPWARD, CYCLE or `moved:` line was emitted. Every Needs line in §§3a.1–4a.3 was read, including the individual targets inside §3a.3; the internal order is lower filtration → finite Herbrand → general Hasse–Arf → finite-local specialization → absolute filtration → open-subgroup/completion comparisons. There are no declared supplier gaps. Broad foundational prerequisites in the original layers are part of the R03/R05 rewrite, not evidence for an invented dependency cycle.

Built the initially missing `TauCeti.NumberTheory.LocalField.Herbrand.UpperQuotient` object, then ran the required direct `lake env lean` on the target: exit 0, exactly 13 `sorry` warnings, no other diagnostic. The exact six-module targeted build exits 0, with the non-`sorry` warnings described in R02. Thus no Lean type failure is alleged.

A scratch copy with `#check @name` for all **88 named declarations, including the local prime instance**, elaborated successfully. I compared the emitted types with their README contexts. In particular the general different theorem carries completeness, finite faithful DVR extension, invariant action, faithful group action and separable residue; the Hasse–Arf form carries the commutative faithful action and separable residue. The finite-field Hasse–Arf statement carries both local-field structures, finite extension, compatible valuation and abelian Galois assumptions. No lost-standing-binder defect was found. Nothing in the original file was changed.

All 13 admitted declarations were tried on a scratch copy with individual `simp`, `rfl` and `infer_instance` alternatives. None closed. This does not turn the seven explicit worked examples into headlines. For the already proved wrappers, their bodies provide the one-library-lemma or `rfl` witnesses directly. The general different theorem and full Hasse–Arf were not confused with the pinned prime-degree Hasse–Arf theorem.

### Headline inventory

The original end results are the finite-extension local-field package, deep-unit logarithm/exponential equivalence and power-class counts, residue/unramified correspondence, Hilbert's different formula, Herbrand quotient/tower compatibility and shifted norm results, Hasse–Arf, wild/tame inertia and the marked Iwasawa presentation. Most original finite-local-field results are native suppliers at the pins; R03/R04 concern their repeated targeting and adapters.

The distinct extension headlines are: general separable-residue different formula; general finite Herbrand and upper-numbering package; general Hasse–Arf; residue enlargement preserving ramification; proalgebraic unit/norm-component and filtered norm theorems; absolute upper filtration; finite-separable transition functions/open-subgroup identity; completed maximal-unramified comparison. The general ideal-valued different formula and lower-numbering Hasse–Arf are stated at :591 and :610. Full finite-local Hasse–Arf is at :629. The docstring :94–110 identifies the missing general Herbrand, absolute-filtration and completion carriers and puts those targets in the README. The proalgebraic structures are substantial new constructions, not a reason to add empty predicates. Its headline inventory should explicitly name the residue-enlargement and proalgebraic results when rewritten under R05. No substitute `Prop` field, arbitrary-function stand-in or admitted data object is used.

### Pinned declarations inspected

The following **20 library-location checks** record the principal objects used in the source and adversarial audits. Paths beginning Mathlib or TauCeti are relative to that pinned library. Native definitions were read with their surrounding variables, not inferred from their names.

| Pinned location | Evidence and boundary |
|---|---|
| `Mathlib/NumberTheory/LocalField/Basic.lean:45` | `IsNonarchimedeanLocalField` bundles valuative topology, local compactness and nontrivial valuation; it is not a complete arbitrary-residue DVR carrier and does not license an unrelated uniformity. |
| `Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:56` | DVR structure is nonfield/discrete valuation ring data; the zero ring and field do not enter the generic DVR statements. |
| `Mathlib/RingTheory/Invariant/Defs.lean:31` | `Algebra.IsInvariant` says fixed elements come from the base. Compatibility of the action with base scalars is separate; the Lean signatures carry it. |
| `Mathlib/Analysis/Normed/Field/Krasner.lean:117` | `IsKrasner.of_completeSpace` requires a complete nontrivially normed base and algebraic normed extension. In §4a.3 its application is over the completed field, not an assertion that the unramified union is complete. |
| `TauCeti/NumberTheory/LocalField/NormalizedValuation.lean:114,205,231,395` | Definition, negative-log translation, kernel iff, uniformizer value. The wrappers add no mathematical result. |
| `TauCeti/NumberTheory/LocalField/DeepUnits/Basic.lean:114` | Native deep-unit exponential equivalence uses the strict bound `e < (p−1)i`; the roadmap retains this bound. |
| `TauCeti/NumberTheory/LocalField/SquareClass.lean:101,128` | Dyadic and ℚ₂ square-class counts are already supplied. |
| `TauCeti/RingTheory/DiscreteValuationRing/Monogenic.lean:62` | `exists_adjoin_eq_top` needs finite faithful DVR extension and separable residue; not completeness or finite residue cardinality. |
| `TauCeti/RingTheory/LocalRing/RamificationGroup.lean:440,465` | Generator computation of lower index and counting identity needed for the general different formula. They concern the actual local-ring action. |
| `TauCeti/NumberTheory/LocalField/Herbrand/HasseArf.lean:137` | `UpperJump.exists_eq_intCast_of_finrank_prime` has a prime-degree hypothesis. Degree four is outside it. |
| `TauCeti/NumberTheory/LocalField/Herbrand/UpperQuotient.lean:98,264` | Native normal-quotient and fixed-field upper-numbering compatibility; finite local-field domain. |
| `TauCeti/NumberTheory/LocalField/WildInertia.lean:403` | Finite-normal-subextension membership characterization of canonical wild inertia; the roadmap's finite-Galois adapter is API, not a new headline. |
| `TauCeti/NumberTheory/LocalField/Tame/Character.lean:401,521` | Canonical tame character and tame-inertia quotient equivalence; product coordinates require choices. |
| `TauCeti/NumberTheory/LocalField/Tame/Quotient.lean:160,401` | Existence of a topological tame generator and arithmetic Frobenius conjugation by the residue cardinality. |
| `TauCeti/NumberTheory/LocalField/Tame/Presentation.lean:398,424,431,437` | Marked equivalence, two marked values and uniqueness are native. |
| `TauCeti/NumberTheory/LocalField/Tame/Presentation.lean:452,459,477,487` | Coordinate, tame-inertia image, Frobenius coset, and unmarked presentation already exist. |
| `TauCeti/Topology/Algebra/Group/Profinite/ProP/Basic.lean:68` | `IsProP` tests finite open-normal quotients; the predicate alone does not assert ambient compactness. |
| `TauCeti/Topology/Algebra/Group/Profinite/Sylow/Conjugacy.lean:48` | Normal pro-Sylow uniqueness requires the profinite topological context, carried by inertia. |
| `TauCeti/Topology/Algebra/Group/Profinite/Presentation/Basic.lean:210,219` | Generator extensionality and lift; separation requirements are present. |
| `TauCeti/Topology/Algebra/Group/Profinite/ZHat/Basic.lean:125,154,163` | Dense-generator extensionality, generator value and universal lift. |

### Suppliers and ownership

Object searches used the roadmap service over main/open heads, the pinned libraries and the board packages. Open revision proposals were not substituted for an existing roadmap's main specification. Ownership against open proposals without files in the brief was not independently checked; search hits from them were treated only as leads. No second owner was found for the particular new proalgebraic norm-component package among the supplied readable proposals. The completed base and the existing Part II design, however, make R01 necessary.

Resolved **nine principal cross-roadmap contracts/consumer groups**:

| Citation | Resolution |
|---|---|
| ProfiniteProPGroups | `Completed/ProfiniteProPGroups/README.md`, Layers 2–3: abstract Sylow/pro-p theory, consumed through the pinned Tau Ceti implementations. |
| ProfiniteCohomology Kummer | `TauCetiRoadmap/ProfiniteCohomology/README.md:1445–1481`, Layer 9: invertible exponent and the power-class/Kummer comparison. |
| ReductiveGroups Layer 3 | Main `TauCetiRoadmap/ReductiveGroups/README.md:234–247`: finite-type closed subgroups, quotients with representability hypotheses, identity components. This is not itself the specialized proalgebraic component theory; §3a.3 explicitly owns the latter. |
| SchemeAndStackFoundations §0.24 | Main README:1565–1600: characteristic-p perfection and its comparisons. Not a characteristic-zero perfection assertion. |
| AdicSpacesPartII §R0.19.9 | Main README:7793–7830: generic pro-category and limit–colimit Hom formula, with size hypotheses. Specialized proalgebraic exactness remains a target here. |
| ReductiveGroupsPartII §RG2.0.4 | Main README:852–908: finite-residue completed-unramified field and arithmetic Frobenius. README:1975–1980 explicitly makes the new construction general-residue and requests agreement of the finite-residue adapter; it does not import the Frobenius theorem as a prerequisite. |
| ClassFieldTheory | Main README:552,588,1149 resolves `normResidue_uniformizer` and `eulerCharacteristic_finrank_fp`; the conductor/norm-residue targets also exist. Only the old `tateH` citation needs R08. These are consumers, not reverse supplier edges. |
| LocalGaloisGroups | `Completed/LocalGaloisGroups/README.md:1084–1098` really states rank `[K:ℚ_p]+2` for the full absolute group. The free pro-p quotient's different rank must not be substituted. |
| NumberFieldArithmetic and MassFormula | Completed NumberFieldArithmetic retains global-to-local comparison ownership; MassFormula's family/counting scope is separate from arithmetic of an individual extension. The README's :1184–1238 direction is local arithmetic → counting. No counting algorithm is introduced as a target here. |

Of the resolver's seven leads, the two ClassFieldTheory result names and LocalGaloisGroups rank are present at their actual owners; three names are in the explicitly versioned LeanBridge source, not claimed pinned Tau Ceti declarations; the remaining `ClassFieldTheory.tateH` is R08.

### Seeded source verification

All source acquisition used the sources service. The three open mathematical works were read at the claimed printed pages, with the Serre/Brinon slips also inspected as page images. The references below give extraction line locators, not copied passages. No target explicitly labelled an additional locator “unverified”. The unavailable books are listed separately below, not silently certified.

| Seeded target | Text read and result |
|---|---|
| Perfect-residue Herbrand contract | `serre-1961` lines 855–950, printed pp.126–128, n°3.1: the source there restricts to totally ramified extensions, with arbitrary residue field. Its finite sums, inverse, quotient and tower formulas support the corresponding totally ramified steps. The README separately removes the unramified part and explicitly adds separable residue/perfect residue where needed. Absolute completion uses the separate Brinon–Conrad input below. |
| Residue enlargement/preservation | `ega-iii-1` lines 637–639, printed p.20, (10.3.1), and lines 734–737, p.23, associated graded formula and completion remark: local Noetherian residue enlargement with unchanged maximal-ideal generators. Local flatness gives faithful flatness; the graded comparison and completion give a DVR with the same uniformizer. Preservation of a totally ramified extension is the README's Eisenstein/power-basis deduction, not a theorem about arbitrary unramified base change preserving degree. |
| Proalgebraic units/norm components | `serre-1961` lines 79–80,151–160,557–570,585–639, printed pp.106–108,118–120: algebraically closed residue field, coefficient sections in characteristic zero, norm surjectivity and identity component/abelianization. The stated domain is respected; the source is not restricted to finite residue fields. |
| Graded norms/filtered components | `serre-1961` lines 1092–1145, pp.132–133, Proposition 6; 1152–1184, pp.134–135, Proposition 7/corollaries; 1187–1212, p.135, Proposition 8(i)–(iii). Proposition 6 and 7 allow nonabelian finite Galois groups; Proposition 8 adds abelianity. The README puts this assumption in the correct last clause. Surjectivity is over algebraically closed residue points/proalgebraic groups, not arbitrary finite residue points. |
| Finite-local-field Hasse–Arf | `serre-1961` lines 1224–1232, p.136, Corollary 1 to Proposition 8, proves integrality in its totally ramified algebraically closed-residue setting. The README's residue enlargement, inertia reduction and finite-sum argument supply the specialization. Serre *Local Fields* V §7 Thm.1 could not be read; it is not independently certified. |
| Suppliers (README:1592–1610) | The native Sylow, free/presented profinite group and ℤ̂ interfaces resolve at the pin. ProfiniteProPGroups' archived Suggested.lean:268,306 really has reducible aliases to `TauCeti.IsProP` and `TauCeti.IsProPSylow`. The uses of normal-Sylow uniqueness and presentation extensionality have closed Lean proofs with the required topology. |
| Contract audit (README:1612–1632) | All eight interface rows were resolved: the pro-p/Sylow predicates and four Sylow operations; free/presented group maps; maximal-unramified and ℤ̂ coordinate; inertia, Frobenius and quotient maps; tame character/quotient; marked presentation; and finite-level Galois restriction/fixed fields. Native declarations have the stated characteristic scope. No maximal pro-p quotient is used in these signatures. |

Additional pin locations for that seeded audit: `TauCeti/Topology/Algebra/Group/Profinite/Sylow/Existence.lean:102`, `Containment.lean:116`, `Functoriality.lean:52` (compact source and Hausdorff target for the latter); `TauCeti/Topology/Algebra/Group/Profinite/Presentation/Basic.lean:318` (both relator-containment conditions); `TauCeti/FieldTheory/Galois/AbsoluteGaloisGroup/Basic.lean:213` (normal extension and closed subgroup); `TauCeti/NumberTheory/LocalField/Unramified/Maximal.lean:92,332`, `Unramified/ZHat.lean:170`, and `Unramified/Inertia/Basic.lean:191,194,218,310`. Their statements were opened, not only their names searched.

For the completion part of the perfect-residue sample, `brinon-conrad` lines 375–386, printed p.10, Exercise 1.4.4(2)–(3), and lines 8585–8588, p.201, Lemma 13.1.6 proof, support mixed-characteristic completion and filtration comparison. Equal characteristic is explicitly the README's Krasner/Eisenstein deduction, not a wider statement attributed to that exercise.

For the LeanBridge audit, the service fetched all six files and LICENSE at `22c093c1c5de577acebe74cf76bb33d7d2734a6c`. Each of the six files has zero `sorry` and zero `axiom` text occurrences; LICENSE is Apache-2.0 (`leanbridge` line 5, LICENSE extraction). I did not build that external repository. The named statements exist: `leanbridge` line 137 (Ramification.lean, absolute-index multiplicativity), line 226 (Monogenicity.lean, finite faithful DVR extension with separable residue), line 248 (TraceFiltration.lean, residue trace scaling with Dedekind/torsion-free/ramification hypotheses), and line 472 (DiffExp.lean, tame different criterion). Its `PadicField` class is explicitly a finite ℚ_p extension (`leanbridge` lines 25–30, Basic.lean); it is not evidence for equal-characteristic porting. The roadmap leaves the bespoke carrier unexported and the generalized proofs are owned separately.

### Adversarial computations

The **168 rows** below record actual values or separating examples, not elaboration verdicts. “Retain” concerns the mathematical claim; native results must still be imported under R03 and Checks removed from Lean under R04. Zero rings, inseparable extensions and noncompact ambient groups were tested against the hypotheses rather than silently treated as admissible fields. Finite field cardinality `q=1` is impossible. The infinite sums below have eventually zero summands `#G_i−1`, and all Herbrand denominators are positive finite group orders. The rows also check the copied-back finite-local specializations against the general formulas.

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Local-field carrier and finite residue | ℚ₂; 𝔽₃((t)); trivially valued 𝔽₂ | residue sizes 2,3; trivial-valued field fails nontrivial valuation | Retain domain. |
| DVR carrier, including degeneracy | ℤ₂; field 𝔽₂; 𝔽₂[ε]/ε²; zero ring | maximal ideals (2),0,(ε),0; latter three fail the required nonfield/domain DVR context | Retain exclusions. |
| Normalized valuation definition/sign | 12,2,1 in ℚ₂ | additive values 2,1,0; absolute values 1/4,1/2,1 | Native supplier, R03. |
| `normalizedValuation_eq_one_iff` | 1 and 2 in ℚ₂ˣ | multiplicative additive-zero value 1 for 1, `ofAdd 1 ≠ 1` for 2; unit predicate true,false | Delete wrapper, R04. |
| `normalizedValuation_irreducible` | uniformizer 2 and unit 1 | v₂(2)=1; v₂(1)=0 and 1 is not irreducible | Delete wrapper. |
| Absolute-value multiplicativity/ultrametric law | 2·4 and 2+4 in ℚ₂ | norm product 1/8=(1/2)(1/4); norm sum 1/2≤max(1/2,1/4) | Import. |
| Normalized valuation surjectivity | 2⁻²,1,2³ | values −2,0,3 | Import; sign fixed. |
| Integer/unit characterization and divisibility | 4,2,1/2 in ℚ₂ | values 2,1,−1; 2 divides 4 and 1≤2; 1/2 not integral | Import. |
| Finite-extension valuation uniqueness/induced topology | ℚ₂(√2) and identity | v_L(2)=2, v_K(2)=1, e=2; identity e=1 and unchanged open balls | Import finite package; no incomplete-base claim. |
| `valuation_algEquiv` | σ(√2)=−√2 | both valuations 1; v_L(σ(2))=v_L(2)=2 | Delete wrapper. |
| `integerRingTorsionFree` | ℤ₂⊂𝒪_{ℚ₂(√2)}; multiplication by 2 | 2(a+b√2)=0 forces a=b=0 | Native torsion-free instance, not a headline. |
| `e f = [L:K]` and maximal-ideal extension | ℚ₂(√2), ℚ₂(√5), identity | (e,f,n)=(2,1,2),(1,2,2),(1,1,1); (2) extends to (√2)² in first | Import. |
| `card_residueField` | same quadratic extensions | q_L=2=2¹ and 4=2² | Delete wrapper. |
| Index/residue tower laws | unramified quadratic inside unramified sextic | e:1=1·1; f:6=3·2 | Import. |
| Total/tame/wild predicates | identity; ℚ₃(√3); ℚ₂(√2) | (e,f)=(1,1),(2,1),(2,1); p∤e true,true,false; last wild | Identity is tame, not wild. |
| Absolute ramification index/natural casts | ℚ₃, ℚ₂, ℚ₂(√2) | v(2)=0,1,2; v_L(2)=e(L/ℚ₂)·1=2 | Mixed-characteristic hypothesis retained. |
| Unit filtration definition/membership | 1,5,2 in ℚ₂ | 1 in every U_i; v₂(5−1)=2, so in U₂ not U₃; 2 not U₀ | Native object; add attached Checks under R05. |
| Unit antitonicity and separation | 5 in ℚ₂ | in U₀,U₁,U₂ and not U₃; hence not in intersection, while 1 is | Import. |
| Unit topology and neighborhood basis | ℚ₂, depth 3 | U₃=1+8ℤ₂, compact open; 1+2ⁿ→1 | No assertion for noncompact arbitrary groups. |
| Covariant unit map | ℚ₃⊂ℚ₃(√3), u=4, i=1 | v_K(4−1)=1; v_L(4−1)=2=e·i | Shift is e·i, not i/e. |
| Graded units at zero | ℚ₂ and ℚ₃ | orders 1,2=q−1; multiplicative residue unit groups | Distinct from positive grades. |
| Positive graded units | ℚ₂ and ℚ₃ at i=1 | orders 2,3=q; (1+aπ)(1+bπ) has coefficient a+b modulo π² | Additive law retained. |
| Graded coordinate change | π=3 and π′=−3, i=1, u=4 | coefficient 1 versus −1=2 in 𝔽₃; relation is unit rescaling | Choice-dependent coordinates, same quotient. |
| `localTeichmuller` and uniqueness | residue 4 and 2 in 𝔽₅ | ω(4)=−1, (−1)⁴=1; ordinary 2 has 2⁴=16≠1 and is wrong lift | Import; three Checks as R05. |
| `teichmuller_section` | residue 4 in 𝔽₅ | reduction of −1 is 4 | Delete wrapper. |
| Teichmüller finite-order image | 𝔽₂ and 𝔽₅ | image orders 1 and 4=q−1; zero-preserving extension sends 0 to 0 | Import. |
| Unit decomposition | ℚ₂ˣ, element 12 | 12=2²·3; valuation 2 and unit factor 3 | Changing uniformizer changes splitting, not valuation. |
| `localExponential` | ℚ₂ at x=0 | exp(0)=1 | Alias is not a headline. |
| `localLogarithm` | ℚ₂ at 1 and −1 | log(1)=0; log(−1)=0, so no inverse on all U₁ | Strict-depth condition necessary. |
| `deepUnitExponentialEquiv` | ℚ₂ at i=2; boundary i=1 | 1<2 true, 1<1 false; −1∈U₁ maps to 0 and is excluded from U₂ | Native equivalence; retain bound. |
| `coe_deepUnitExponentialEquiv_apply` | x=0 in 4ℤ₂ | both sides 1 | Delete API wrapper. |
| `coe_deepUnitExponentialEquiv_symm_apply` | u=1 in U₂(ℚ₂) | both sides 0 | Delete API wrapper. |
| `localLogarithm_localExponential` | x=0; arbitrary x∈4ℤ₂ via convergent inverse | at 0: 0=0; linear coefficient of composite 1 | Native inverse theorem. |
| `localExponential_localLogarithm` | u=1; excluded u=−1 at depth 1 | 1=1; without depth restriction exp(log(−1))=1≠−1 | Retain bound; delete wrapper. |
| `continuous_localExponential_deep` | x_n=2ⁿ, n≥2 | v₂(x_n)=n→∞; v₂(exp(x_n)−1)=n→∞ | Native continuous equivalence. |
| `continuous_localLogarithm_deep` | u_n=1+2ⁿ, n≥2 | v₂(u_n−1)=n; v₂(log u_n)=n | Native continuous equivalence. |
| `card_powerClasses_mixed` | n=1; n=2 over ℚ₂,ℚ₃ | 1; 2·2·2=8; 2·2·1=4 | n=0 excluded; no 0-power formula claimed. |
| `isOpen_range_powMonoidHom_of_isUnit` | n=2 over ℚ₃; n=2 over 𝔽₂((t)) | first contains U₁; latter exponent is zero in field, has no IsUnit proof | Retain characteristic exclusion. |
| `isOpen_range_powMonoidHom` | n=2 over ℚ₂ | squares contain U₃; index 8 | Native mixed-characteristic result. |
| `square_eq_range_powMonoidHom` | x=4 and x=2 in ℚ₂ | 4=2² belongs both; odd valuation of 2 excludes both | Definitional/library API, delete. |
| Deep-square inclusion | ℚ₂ at 2v(2)+1=3 | every unit ≡1 mod8 is square; 9=3² | Import. |
| Sharp failure one level earlier | ℚ₂ at depth2; ℚ₃ at depth0 | 5≡1 mod4 is nonsquare; residue 2 in 𝔽₃ is nonsquare | Import; both directions checked. |
| `card_squareClasses_natCastValuation` | ℚ₂(√2); unramified quadratic over ℚ₂ | 4·2²=16; 4·4¹=16 | Delete wrapper. |
| `padicUnit_square_of_eight_dvd_sub_one` | 9 and 5 in ℤ₂ˣ | 8 divides 8 and 9=3²; 8 does not divide 4 and 5 nonsquare | README Check only, R04. |
| Residue/unramified correspondence | unramified degrees 1,2,3 over ℚ₂ | residue fields sizes 2,4,8; Galois orders 1,2,3 | Import; identity allowed. |
| Unramified intersection/compositum | degrees 2 and3 | intersection degree gcd(2,3)=1; compositum lcm(2,3)=6 | Import. |
| `frobeniusAlgEquiv` | ℚ₂(ζ₇)/ℚ₂ | ζ₇↦ζ₇², order3; inverse exponent4≠2 | Arithmetic convention fixed. |
| `map_norm_unitFiltration_zero` | unramified quadratic ℚ₂(√5) | unit norms all U₀; v_K(Nx)=2v_L(x) | Not surjective on all Kˣ. |
| `unramifiedQuadratic_finrank` | adjoining third roots of unity to ℚ₂ | X²+X+1 irreducible mod2, degree2 | README Check only. |
| `unramifiedQuadratic_unit_norm` | u=−1 and u=1 | 2²−5·1²=−1; 1²−5·0²=1 | General unit surjectivity supports statement; Check only. |
| `two_not_norm_unramifiedQuadratic` | proposed norm 2 | v₂(2)=1, whereas every nonzero norm has even valuation | Check only. |
| `upperRamificationGroupQuotient` | C₂² quotient by H={1,7}, upper depth2 | image of {1,5} has order2 | Definition is image; no independent quotient theorem in this abbreviation. |
| `upperRamificationGroup_quotient` | same example | image=image, both order2 | `rfl`; delete. |
| `upperRamificationGroup_fixedField` | ℚ₂(ζ₈)/ℚ₂, fixed field ℚ₂(√2), u=2 | image order2; quadratic upper group order2 | Native genuine theorem, delete adapter. |
| Shifted norm inclusion at ψ(i) | ℚ₂(ζ₈), i=2 | ψ(2)=3; target depth2, not input depth2 | Shift correct. |
| Shifted norm inclusion at ψ(i)+1 | same, i=2 | ψ(2)+1=4; target depth3 | Distinct shifted bound retained. |
| `tameQuadratic_norm_counterexample` | ℚ₃(√3), x=4 | v_L(4−1)=2; N(4)=16 and v₃(16−1)=1<2 | Refutes unshifted inclusion; Check only. |
| Total ramification iff Eisenstein generator | ℚ₂(√2); unramified quadratic | X²−2 Eisenstein and f=1; unramified f=2 cannot have such generator | Both directions consistent. |
| Eisenstein power-basis valuation | a+b√2 with (a,b)=(1,1),(0,1),(0,0) | min(0,1)=0; min(∞,1)=1; ∞ | Zero vector handled with infinite valuation; n=0 excluded by Eisenstein. |
| `localDiscriminantIdeal` | ℚ₂(√2), identity | (8), unit ideal; exponents3,0 | Native alias not necessary for new headlines. |
| `ramifiedQuadratic_finrank` | adjoining roots of X²−2 | degree2 | Check only. |
| `dyadicCyclotomic_finrank` | adjoining eighth roots of unity to ℚ₂ | Φ₈(X+1) Eisenstein of degree4 | Check only. |
| Different bounds and tame iff | unramified quadratic; ℚ₃(√3); ℚ₂(√2) | (e,d)=(1,0),(2,1),(2,3); d=e−1 exactly first two | Native results; no good-prime restriction. |
| Discriminant exponent f·d | same examples | 2·0=0; 1·1=1; 1·3=3 | Import. |
| Different tower law | ℚ₂⊂ℚ₂(√2)⊂ℚ₂(ζ₈) | d_top=8=2+2·3 | Direction/scaling fixed. |
| Lower-index definition | σ≠1 on ℚ₂(√2); identity | v_L(−2√2)=3; identity displacement0 has value∞ | Break is index−1=2, not3. |
| Lower groups at real indices | ℚ₂(ζ₈), u=1,3/2,3,7/2 | ceilings1,2,3,4; orders4,2,2,1 | Ceiling convention retained. |
| Lower group normality/antitonicity | S₃ splitting field of X³−3 over ℚ₃ | at depths0..4 orders6,3,3,3,1; A₃ normal in S₃ | Nonabelian test, no commutativity assumed. |
| Subgroup lower numbering | H={1,7}⊂Gal(ℚ₂(ζ₈)/ℚ₂) | H₁ order2; H₂=H∩{1,5}=1 | Trace on subgroup, not quotient. |
| Lower numbering fails for quotients | same H at lower depth3 | image G₃ has order2; quotient's lower group at3 has order1 | Upper theorem is essential. |
| Degree-zero tame character | ℚ₃(√3), nonidentity σ | σπ/π=−1, residue −1 of order2 | Kernel G₁=1. |
| Positive graded character | yᵖ−y=t⁻¹, π=1/y | (σπ−π)/π² reduces to −1; for p=2,3 values1,2 | Unscaled ratio reduces to1 and would be wrong. |
| `finiteTameCharacter_conj` | tame quotient C₇⋊C₃ over residue size2 | character(στσ⁻¹)=character(τ)² | Correct semilinear action. |
| `tameCharacter_conj_of_smul_eq_pow` | same, arithmetic σ | exponent2, whereas geometric σ gives4 | Orientation witness retained. |
| `exists_generator_lowerIndex_eq_addVal` | ℤ₂⊂ℤ₂[√2] | generator √2; lower index3 equals v_L(−2√2)=3 | Native ingredients; general DVR domain retained. |
| General integral closure, ef and uniqueness | Artin–Schreier over k((t)), k perfect | e=p,f=1,degree=p; v_L(t)=p | Finite/integral/separable hypotheses matter. |
| Separability of residue as negative control | zᵖ−t^(p−1)z=s over 𝔽_p(s)((t)) | e=1, f=p; G₀ orderp, G₁=1, so #G₀≠e | Excluded by separable-residue assumption. |
| General G₀/G₁ and wild Sylow | Artin–Schreier; tame degree2 in char3 | sizes of G₀/G₁:1,2; sizes G₁:p,1 | p-primary claim is at positive depth. |
| Characteristic-zero residue | ℂ((t))⊂ℂ((t^(1/2))) | G₀ order2, G₁=1 | No artificial residue prime chosen. |
| General Hilbert ideal formula | ℚ₂(ζ₈); AS at p=2,3; identity | d=3+3+1+1=8; d=2,4; d=0 and ideal 𝔪⁰=⊤ | Retain headline :591. |
| General Herbrand integral and inverse | ℚ₂(ζ₈) | φ(2)=3/2, φ(3)=2; ψ(2)=3; compositions return inputs | Denominator #G₀=4>0. |
| Herbrand on [−1,0] and tame ray | tame e=2 | φ(−1)=−1; φ(1)=1/2; ψ(1)=2 | Negative interval not rescaled. |
| Herbrand after last break | AS break1, degreep | φ(2)=1+1/p; ψ(2)=p+1 | Slope 1/p, not0. |
| Herbrand quotient compatibility | ℚ₂(ζ₈)→ℚ₂(√2), u=2 | upper image and quotient both order2 | Same convention as local native theorem. |
| Herbrand tower composition order | ℚ₂⊂ℚ₂(√2)⊂ℚ₂(ζ₈), upper input3 | ψ_bottom(3)=4 then ψ_top(4)=7; reversed composition gives8 | Correct order is top after bottom. |
| Trivial faithful group/identity extension | G=1 | all group orders1; φ(u)=ψ(u)=u; sums #G_i−1=0 | No forced eventual slope of a larger group. |
| Nonfaithful-action negative control | C₂ acts trivially on ℤ₂ | every lower group has order2, never order1; integral density1 | Faithful-action restriction excludes it. |
| Residue enlargement | k[[t]]→k̄[[t]] | v(t)=1 on each side; maximal ideal generated by t on each | Flat DVR target has correct normalization. |
| Enlargement preserves TR displacement | AS degreep and tame degreee | e=p or e; AS displacement value2 before/after; d=2(p−1) | Retain; no finite-residue hypothesis. |
| Enlargement need not preserve unramified field degree | unramified quadratic | degree2 before; tensor splits into two degree1 factors | Total ramification is necessary. |
| Proalgebraic unit group and connected graded pieces | k̄((t)), n≥1 | zero grade G_m, positive grade G_a; each π₀ order1 | Underlying abstract group need not be trivial. |
| Norm surjectivity over algebraically closed residue | tame degreee and AS degreep | z↦zᵉ has all roots in k̄; zᵖ−z has all roots in k̄ | Correct domain; finite residue contrast below. |
| Identity-component formula V⁰=I_H U_E | E=F; tame cyclic degreee | identity V=1; tame π₀(V) ordere, so V is not connected | Does not assert connected norm kernels. |
| Norm-kernel component abelianization | C_p; nonabelian S₃ group comparison | H_ab orders p and2, respectively, not p and6 | Abelianization clause essential. |
| Uniformizer-independent component map | π and aπ with a a unit | ratios differ by σ(a)/a∈I_H U_E, hence same class; identity maps to1 | Excludes arbitrary unmarked component map. |
| π₀ right exactness/finite-stage agreement | G_m→G_m, z↦zᵉ, over k̄ | source/target component groups1; kernel μ_e has e components | Right exactness does not assert left exactness. |
| π₀ inverse-limit compatibility | constant finite C₂ tower; connected unit truncations | limit components C₂ in first,1 in second | Nonempty surjective transition setting respected. |
| Graded norm exact sequence | tame e=2,char3 at s=0 | kernel μ₂ order2; z↦z² surjective on k̄ˣ | Kernel is ramification graded quotient. |
| Positive tame graded norms | tame e=2,char3 at s≥1 | ψ(s)=2s; induced nonzero scalar map is bijective; kernel1 | Not confused with depth-zero kernel2. |
| AS graded norm and finite-residue contrast | p=2,3, depth1 | kernel sizes2,3; zᵖ−z on 𝔽_p has image{0}, on k̄ image k̄ | No unramified/finite-residue surjectivity overclaim. |
| Filtered norm-kernel exact sequence | AS break1 at s=1 | ψ(1)=1, ψ(2)=p+1; left U²/U^(p+1) connected, right C_p | Component group of middle has orderp. |
| Component divisibility bound | AS at s=0,1,2 | products p,p,1; #π₀(V_s)=p,p,1 | Finite nontrivial factors only. |
| δ_s surjectivity | AS s=1 and2 | C_p→π₀(V₁)=C_p onto; 1→π₀(V₂)=1 onto | Correct depth convention. |
| Abelian interpolation equality | ℚ₂(ζ₈), s=1 | G_(ψ(1)+1)=G₂ and G_(ψ(2))=G₃, each order2 | Abelian clause agrees with break list. |
| Abelian δ_s isomorphism/component injection | AS s=1,2 | component inclusions C_p→C_p and1→C_p injective | Does not imply connected V. |
| General Hasse–Arf divisibility | ℚ₂(ζ₈), lower jumps1,3 | 4 divides4 and8; φ values1,2 | Retain :610. |
| Hasse–Arf nonjump negative control | same extension, j=2 | sum6 not divisible by4; φ(2)=3/2 | Jump hypothesis indispensable. |
| `hasseArf` finite-local specialization | identity, unramified cubic, tame quadratic | upper jump sets ∅,{−1},{0} | No positive-jump-only narrowing. |
| Hasse–Arf in both characteristics | AS at p=2,3; W(k̄)[1/p](ζ_p), p=3 | upper AS break1,1; tame break0, d=1 | Infinite-residue examples included. |
| Hasse–Arf nonabelian control | S₃ splitting X³−3 over ℚ₃ | lower groups6,3,3,3,1 at0..4; φ(3)=3/2; d=11 | Abelianity cannot be dropped. |
| Prime-degree/tower-only false proof | artificial C₉ filtration with breaks1,5 | φ(5)=(9+3+3+3+3)/9=7/3; subgroup/quotient breaks5,1 | Correct negative Check; genuine ramification input required. |
| `maximalUnramified` | finite unramified quadratic; totally ramified quadratic | first contained; second meets unramified union in K | Native fixed/compositum carrier. |
| `finiteGaloisLowerRamificationGroup` | ℚ₂(ζ₈), depth1 | native group order4=adapter group order4 | Adapter adds no new construction. |
| `finiteGaloisLowerRamificationGroup_normal` | S₃, depth1 | subgroup A₃ has index2, normal | Native instance. |
| `inertia` and finite inertia projection | unramified quadratic; ℚ₂(√2) | images orders1,2 | Distinguishes full absolute group from inertia. |
| `unramifiedQuotient_equiv_zhat` | unramified degrees2,3 | arithmetic Frobenius maps to1 mod2,1 mod3 | Generator has arithmetic orientation. |
| `wildInertia`/`mem_wildInertia_iff` | tame quadratic in residue3; AS degree3 | finite images1,C₃ respectively | Correct native membership; API statement only. |
| `map_restrictNormalHom_wildInertia` | same finite levels | image orders1,3=orders of G₁ | Uses finite-level surjectivity, not just inclusion. |
| `wildInertia_normal` | same levels | 1 normal in C₂; C₃ normal in C₃ | Native instance. |
| `wildInertia_isClosed` | finite-level inverse-image description | each condition clopen; intersection contains1 and excludes tame nonidentity image | Native closedness. |
| `maximalTame` | ℚ₃(√3); wild cubic AS | first fixed by wild inertia; second has wild image order3 | Correct fixed field. |
| `fixingSubgroup_maximalTame` | tame/wild finite quotients | fixing group images1 andC₃ respectively | Closed subgroup correspondence needed. |
| `le_maximalTame_iff` | tame quadratic; wild cubic | tame containment/e prime-to-p both true; wild both false | Both directions checked. |
| Tame radical compositum | uniformizer root of degree2 in residue3; degree3 in residue3 | degree2 is included; degree3 fails prime-to-p condition | Wild radical excluded. |
| `wildInertia_le_inertia` | S₃ local quotient in residue3 | A₃⊂S₃, orders3≤6 | Native inclusion. |
| `inertia_compactSpace` | inertia as closed subgroup of absolute Galois | finite quotients compact, inverse limit compact; ℤ discrete would not qualify | Native compactness retained. |
| `inertia_totallyDisconnectedSpace` | distinct finite-level images | separated by disjoint clopen fibers; connected component of1 singleton | Native instance, delete wrapper. |
| `wildInertia_subgroupOf_normal` | same S₃/A₃ quotient | index2 normal subgroup | Native instance. |
| `wildInertia_isProP` | p=3, finite wild quotient C₃; C₂ control | 3 is 3-power; 2 is not | Prime/residue characteristic linkage retained. |
| `PrimesAway` and prime instance | p=2; p=3 | first omits2 and includes3; second omits3 and includes2 | Data subtype enforces primality; no p=1 residue case. |
| `tameInertiaEquiv` | p=2 and p=3 | prime-to-p product has C₃ quotient/no C₂ quotient in first; C₂ quotient/no C₃ quotient in second | Choice-dependent product equivalence, not canonical marking. |
| `wildInertia_isProPSylow` | local S₃ quotient, p=3 | wild image A₃ order3, index2 prime to3 | Correct maximal p-part. |
| `wildInertia_eq_of_isProPSylow` | S₃ p=3 and p=2 control | unique normal A₃ at3; three order2 Sylows at2, none normal | Normality is necessary. |
| `tameInertia` and commutativity instance | C₇⋊C₃ tame quotient | inertia C₇ abelian; full semidirect group nonabelian | Does not assert full quotient commutative. |
| Tame Frobenius conjugation | q=2, τ of order7 | στσ⁻¹=τ²≠τ⁴ | Arithmetic relator fixed. |
| `exists_topologicalClosure_zpowers_eq_tameInertia` | finite tame quotients C₃ and C₇ | chosen compatible generator has orders3,7; powers fill each quotient | Native generator result; adapter is not new headline. |
| `iwasawaCoordinate_sigma` | arithmetic generator | coordinate=1 in additive ℤ̂ | Native computation rule. |
| `iwasawaCoordinate_tau` | tame generator | coordinate=0 additively, written multiplicative1 | No confusion with arithmetic generator. |
| `iwasawaCoordinate_unique` | two continuous maps agreeing on σ,τ | both assign1,0; all generator words have identical values | Dense-generation uniqueness, separation retained. |
| `markedTameQuotientEquiv` | marked C₇⋊C₃ quotient | σ→σ,τ→τ preserves exponent2; inversion of σ changes exponent to4 | Marking excludes inverse convention. |
| `tameQuotientEquiv_mk_frobenius` | chosen arithmetic lift | image σ, coordinate1 | Native API wrapper. |
| `tameQuotientEquiv_mk_tameGenerator` | chosen inertia generator | image τ, coordinate0 | Native API wrapper. |
| `tameQuotientEquiv_unique` | proposed automorphism τ↦τ² | sends marked τ toτ²≠τ in C₇, so fails hypothesis | Wrong rescaling excluded. |
| `map_tameInertia_tameQuotientEquiv` | C₇⋊C₃ | coordinate kernel C₇ of order7 on both sides | Native image theorem. |
| Frobenius coset independence of lift | σ and τσ | both coordinates1; different elements of same inertia coset | Not a unique lift claim. |
| Coordinate compatibility | element τ²σ³ | coordinates3=3; tame factor contributes0 | Native compatibility theorem. |
| `tameQuotientPresentation` | C₇⋊C₃, q=2 | arithmetic relator σ τ σ⁻¹ τ⁻²=1; reversed exponent gives τ⁻²≠1 | Abstract isomorphism alone insufficient; marked theorem supplies convention. |
| `iwasawaGeometricEquiv_sigma` | arithmetic/geometric generators | σ_ar maps to σ_geom⁻¹ | Correct inverse. |
| `iwasawaGeometricEquiv_tau` | tame generator | τ maps toτ | Tame marking unchanged. |
| Geometric generator coordinate | geometric generator | coordinate −1, not+1; mod3 values2 versus1 | README Check; delete computation wrapper. |
| Absolute upper filtration definition/projection | ℚ₂, projection to ℚ₂(ζ₈), u=1,3/2,3 | image orders4,2,1 equal finite upper-group orders | New general target. |
| Absolute normality, antitonicity, separation | same projection and any moved finite element | sizes4≥2≥1; a moved element is excluded after that level's last break | Correct inverse-limit argument. |
| Absolute inertia at0 | algebraically closed residue; unramified quadratic quotient | I=G in first; image1 in latter | No finite-residue restriction. |
| Absolute wild group at0+ | Frac W(𝔽̄₃), tame quadratic | I image order2; closure positive-depth union image1 | Closure and positive shift necessary. |
| Absolute characteristic-zero residue | ℂ((t)) | all finite wild groups1; inverse limit wild group1 | Retain p=0 clause. |
| Non-Galois transition definition | identity; unramified quadratic; tame quadratic | ψ(u)=u,u,2u for u≥0; derivative indices/f are1,2/2,2/1 | Formula includes residue-degree denominator. |
| Transition independence of Galois closure | insert a further unramified Galois layer | inserted φ=ψ=id; composite unchanged, slope1 | General cancellation uses tower identities already targeted. |
| Open-subgroup identity | ℚ₃⊂ℚ₃(ζ₃), u=3/2, test quotient ℚ₃(ζ₉) | ψ(u)=3; shifted group image1, unshifted G_L^(3/2) imageC₃ | Shift cannot be omitted. |
| Transition tower law | cyclotomic quadratic tower test above | ψ_total(3)=7=ψ_top(ψ_bottom(3)); reverse gives8 | Same order in finite/absolute layers. |
| Completed maximal-unramified field | finite residue k; k algebraically closed | residue becomes k̄; e=1; when k=k̄, K^ur=K and completion K | Completion is not redundant over finite residue. |
| Finite-separable equivalence under completion | identity extension; tame polynomial X²−t over ℂ((t)) | degrees1,2 preserved; repeated-root polynomial Xᵖ−t in charp outside separable category | No inseparable equivalence claimed. |
| Completion comparison of inertia groups | unramified quadratic; tame quadratic | first becomes degree1 with inertia1; second retains groupC₂ | Full original Galois group not always preserved. |
| Completion preserves e,d,d/e | ℚ₃(ζ₉)/ℚ₃ | e=6,d=5+2+2=9,d/e=3/2 before and after | Retain. |
| Completion preserves nonnegative filtration | same cyclotomic extension | orders6,3,3,1 at0..3; upper jumps0,1 before/after | No assertion at unramified jump −1. |
| Completion loses f and unramified degree | unramified quadratic | f:2→1; d:0→0; e:1→1 | Correct negative-control Check. |
| Counting consumer normalization | tame degree2; ℚ₂(√2) | c=d−n+1=1−2+1=0; 3−2+1=2 | Intrinsic arithmetic supplied, family/counting belongs elsewhere. |
| Kummer consumer and square-class normalization | ℚ₂,n=2; char2 control | size8 in characteristic0; n=0 in char2 excludes Kummer invertibility | Supplier hypotheses respected. |
| Full absolute Galois rank consumer | K=ℚ₃ | N+2=3; pro-3 free quotient rankN+1=2 | Cited owner actually makes distinction. |

## Not verifiable

- **Serre, Local Fields** (`serre-local-fields`, DOI `10.1007/978-1-4757-5673-9`): the sources service resolves only a paywalled publisher. The chapter/proposition locators throughout Layers 0–4, including V §7 Theorem 1 and IV §3 Exercise 3's quaternion example, are uncertified. I used the legally read 1961 article for the explicit general Hasse–Arf route, and the computed S₃ example rather than guessing the unread exercise.
- **Neukirch, Algebraic Number Theory** (`neukirch`, DOI `10.1007/978-3-662-03983-0`): service reports paywalled; the cited II §§3,5,6,8 locators remain uncertified. Native declarations and numerical witnesses were checked independently.
- **Neukirch–Schmidt–Wingberg, Cohomology of Number Fields** (`nsw`, DOI `10.1007/978-3-540-37889-1`): paywalled through the service; no page-level certification of the tame-presentation/group-rank references.
- **Ribes–Zalesskii, Profinite Groups** (`ribes-zalesskii`, DOI `10.1007/978-3-642-01642-4`): paywalled through the service; the native Sylow/presentation supplier was read, but the book locator was not.
- **Serre, A Course in Arithmetic** (`serre-course`, DOI `10.1007/978-1-4684-9884-4`): service reports paywalled; no source-text certification of the elementary local examples.
- **O'Meara, Introduction to Quadratic Forms** (`omeara`, §63:1): service did not provide readable text; the attempted publisher DOI lookup returned no usable open copy. The square-class assertions were independently compared with the pin, but this locator remains uncertified.

These are access limits, not allegations that the statements are false. No unavailable book has been relabelled as a new missing source to reopen a settled paywall request. The review is complete and is not parked awaiting those texts. The external LeanBridge audit was a text/declaration/license check, not a build or axiom audit of that repository. General equal-characteristic completion is supported by the stated argument and examples, not by pretending Brinon–Conrad's mixed-characteristic exercise has a wider printed statement.

## Source issues

- **Misprint** in serre-1961 at n°3.1, equation (1), printed p.126: the source says the base normalized valuation equals the degree times the extension valuation; it should be the extension valuation equals the degree times the base valuation; affects nothing. Confirmed in the page image and `serre-1961` line 866; the roadmap uses the correct direction.
- **Misprint** in serre-1961 at n°3.5, Proposition 8(i), proof, printed p.135: the source says to apply Corollary 2 of Proposition 3 for the component-order bound; it should be Corollary 2 of Proposition 7 in n°3.4; affects the proof. Confirmed in the page image and `serre-1961` line 1197; the roadmap cites the correct graded-component results.
- **Misprint** in brinon-conrad at §2 opening normalization paragraph, printed p.10: the source says ord is log base p of the absolute value while requiring ord(p)=1; it should be minus log base p for the p-adic absolute value; affects nothing. Confirmed in the page image and `brinon-conrad` lines 393–395; no sign error is imported into the roadmap.
