# Review of CFSGStatement (pull request #1334 at 0e1627f)
**Verdict:** needs changes

AI-assisted independent review. The findings concern this folder only. No pull-request file was changed.

## R01 (P1) — The acceptance test cannot build against the pins

**Location:** `TauCetiRoadmap/CFSGStatement/Suggested.lean:3`, `import TauCetiRoadmap.ChevalleyGroups.Suggested`; also lines 326–344.

**Claim:** The acceptance test imports another roadmap and obtains its ambient carrier from that prototype. The required module is absent at this head. This violates the import rule independently of whether that supplier eventually merges.

**Witness:** The supplied gate reports a missing `TauCetiRoadmap/ChevalleyGroups/Suggested.lean` and a bad import. Direct elaboration of this head fails with `unknown module prefix 'TauCetiRoadmap'`. Main's Chevalley prototype declares neither `ChevalleyGroup` nor `rootSubgroup`.

**Repair:** Remove the roadmap import and all signatures depending on its unavailable carrier. Use individual pinned `TauCeti.*` modules for available objects; name the genuinely unavailable canonical-group headlines and their missing carriers in the module docstring. Merely copying the supplier prototype or waiting for it to merge does not repair this. Re-run the targeted build; this repair removes the exact unresolved module witnessed above. This finding accounts for the gate's `imports=1` and all three diagnostics under `build`.

## R02 (P1) — The specialization contract is cited at a nonexistent supplier section

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:478`, “RG9B.1's chart/specialization comparison”; also lines 221 and 487, citing RG9B.2/3 and RG9B.1.

**Claim:** These exact subcontracts are supplied by ReductiveGroups. The allowed main version has an unnumbered list under 9B, without these subcontracts; the revision of an existing supplier is not an admissible replacement for main.

**Witness:** `TauCetiRoadmap/ReductiveGroups/README.md:1610` on main starts 9B's bullet list; 9C starts at 1659. No 9B.1/2/3 exists. `TauCetiRoadmap/ChevalleyGroups/README.md:377` and 426–432 explicitly own specialization equality.

**Repair:** Cite ChevalleyGroups C4, “Points,” for equality after specialization, with its Chevalley-datum hypotheses, and C6 for realization comparisons. Name the applicable main ReductiveGroups 9B targets rather than revision-only subsection numbers. For the short-root G₂/𝔽₃ and F₄/𝔽₂ carriers, this supplies exactly the equality that flatness alone does not supply; no new supplier gap is necessary for that equality.

## R03 (P1) — The signed-antidiagonal Lie automorphism has the wrong final factor

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:543`, `X ↦ -J Xᵀ J`; also `Suggested.lean:370`. The signed antidiagonal convention is specified at README line 405.

**Claim:** This formula is a type-A Lie algebra automorphism with that J. In even matrix dimension, J² = −I, so this formula is the negative of the intended automorphism and does not preserve the bracket in odd characteristic.

**Witness:** With J = [[0,1],[−1,0]], H = diag(1,−1), E = E₁₂, f(H)=−H and f(E)=−E. Thus f([H,E])=−2E, while [f(H),f(E)]=2E; these differ over 𝔽₅.

**Repair:** Write `X ↦ -J Xᵀ J⁻¹`, the differential of the group formula at line 405, in both files. Retain this even-dimensional Check. Recalculation gives g(H)=H, g(E)=E, and both bracket expressions equal 2E. If a different involutory J is intended in this example, define it separately and check its simple-root signs instead of silently changing J.

## R04 (P2) — Nine data definitions are admitted instead of constructed

**Location:** `TauCetiRoadmap/CFSGStatement/Suggested.lean:277`, “`diagramPerm … := sorry`”; also lines 281, 289, 352, 363, 377, 383, 401, 547.

**Claim:** The file supplies permutations, exponents, endomorphisms and presentations sufficient to state the endpoint. All nine bodies are `sorry`: diagramPerm, lengthPerm, exponent, frobenius, graphAut, primeFrobenius, halfFrobenius, steinberg and SporadicName.presentation. Their dependents therefore do not test the specified constructions.

**Witness:** At line 547 no relator word is supplied for any of the 26 names. Lines 561 and 581 nevertheless use that admitted presentation to define the groups in ClassificationStatement.

**Repair:** Import the existing native index, permutation, exponent and sporadic-presentation APIs identified below. Remove unavailable canonical group maps and their dependents from this acceptance test, documenting the missing carriers. Keep only simple definitions with real bodies needed for remaining headlines. For example, the native presentation dispatcher at `TauCeti/GroupTheory/SpecificGroups/CFSG/Sporadic/Presentation.lean:66` supplies all 26 cases without this admission. This covers all nine `sorry-data` gate failures.

## R05 (P2) — Existing pinned work is replanned under private copies

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:253`, “Build `PrimePower`, `LieTypeIndex`”; also L1's datum map, L2's datum powers, L3, S0, S1 and A0; `Suggested.lean:30` onward.

**Claim:** These index, syntax, presentation, fixed-quotient and universe-transport constructions are new work. They already exist at the pinned Tau Ceti, including the entire sporadic presentation dispatcher. The local copies prevent direct reuse and obscure what the canonical-carrier change actually adds.

**Witness:** `TauCeti/GroupTheory/SpecificGroups/CFSG/Index.lean:71`, `Datum/Steinberg.lean:123`, `Datum/Assembly.lean:184`, `Sporadic/Presentation.lean:66`, and `Classification.lean:67` supply the corresponding objects/results. `TauCeti/GroupTheory/Presentation/Relator.lean:337` already proves compiler correctness.

**Repair:** Put the exact native declarations in the supplier contracts and delete duplicated development targets and prototype declarations. State only the new canonical-carrier comparisons and their transport consequences. Distinguish the existing represented-model ClassificationStatement from the proposed canonical one; their equality needs the advertised comparison, not a rename. The native inputs reproduce the numeric index checks, word semantics and universe transport in the table below.

## R06 (P2) — Statable new headline theorems are absent

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:738` and 742; `Suggested.lean:5`–22.

**Claim:** L6 promises Weyl correction and classification of based root-datum isogenies, but the acceptance test states neither. It also neither states nor explains the absence of the canonical L4/L5 and group-level L6 headlines.

**Witness:** A scratch signature for Weyl correction elaborated using native `RootPairingIsogeny`, `DynkinType.simplyConnectedRootDatum`, `simplyConnectedBase.IsPos`, and `RootPairing.weylGroup`. Its printed type retained t.Valid, prime p, positive n,k and the power equality.

**Repair:** State the new root-datum headlines against those native carriers, using a small real basedness predicate if useful, and `sorry` only for the theorem proofs. The special-isogeny and diagram-automorphism carriers also exist. Name each canonical group headline that cannot yet be stated and identify its missing carrier in the docstring. The successful Weyl signature is a direct test that “not statable” would be false for that headline.

## R07 (P2) — The index comparison omits the choice of diagram conjugacy representatives

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:764` and 786–789, “The parameters of no valid index are exactly the range exclusions and the duplicate representatives”.

**Claim:** All raw parameters of the preceding based normal forms, apart from the listed numerical exclusions, occur in the index. The normal-form statement allows every σ in diagramSymmetry; the index stores just selected permutations.

**Witness:** For D₄, q=5, σ=(0 2) is a diagram symmetry, but twistedD uses (2 3), triality uses (0 2 3), and untwisted D uses identity. None equals σ; no rank/field exclusion applies.

**Repair:** First choose conjugacy-class representatives in diagramSymmetry, with a stated conjugacy theorem, then compare those representatives with the index. Do not claim equality of all raw maps with index maps. For the witness, τ=(0 3) gives τ(0 2)τ⁻¹=(2 3), checked by Lean; the two maps are related by graph conjugation, not literal equality. Include both D₄ triality orientations as a second Check.

## R08 (P2) — The new classification programme belongs in a Part II extension

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:724`, “L6: every Steinberg map is on the list”, contrasted with the statement-only endpoint at lines 15–20.

**Claim:** This revision adds a new classification and conjugacy programme to the established roadmap. Main already specifies the statement-construction roadmap, and its endpoint does not require L6; the revised README itself says A0 does not depend on it.

**Witness:** The main-to-head diff adds the whole L6 section; main's workstreams end with L5, S0, S1 and A0. The new section includes two classification theorems and a Weyl-correction theorem beyond that existing endpoint.

**Repair:** Move this new theorem programme to CFSGStatementPartII, explaining where CFSGStatement stops and importing its constructions by section. Keep the original roadmap's remaining comparisons and correct its native supplier references. This preserves A0's existing dependency graph and gives the additional theorems one owner. This is a repairable extension-boundary defect, not grounds to discard the whole roadmap.

## R09 (P3) — Use the pinned Suzuki supplier, not an absent Mathlib declaration

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:634`, “Mathlib has a separate Suzuki construction”; also the L4 dependency row at line 220.

**Claim:** `suzukiGroup` is available in pinned Mathlib. It is not in that source tree; this pin carries the construction in Tau Ceti.

**Witness:** `TauCeti/GroupTheory/SpecificGroups/CFSG/Suzuki/Generated.lean:253` defines `TauCeti.suzukiGroup`; `Suzuki/Generation.lean:342` supplies its equivalence with the existing Suzuki fixed-point model. Object search in pinned Mathlib finds no `suzukiGroup`.

**Repair:** Cite these Tau Ceti modules and the remaining canonical-carrier transport needed by L4. Keep the Mathlib contribution only as provenance, not as a pinned dependency. On m=1 the imported group has field size 8, matching the same source and target parameters. This is a supplier-attribution defect with an available pinned replacement, rather than a missing mathematical prerequisite.

## R10 (P3) — Remove API and boundary padding from Suggested.lean

**Location:** `TauCetiRoadmap/CFSGStatement/Suggested.lean:347`, 557, 564 and 605; also the convention-only theorems at 285, 294 and 298.

**Claim:** These declarations belong in a headline acceptance test. They instead state homomorphism API, metadata checks, the enumeration size, convention Checks, or a theorem now supplied in one step by the library.

**Witness:** Root additivity is `map_mul`. Universe transport closes by `exact TauCeti.exists_mulEquiv_of_forall_finite_isSimpleGroup_zero C h`. The native compiler theorem also closes by one `exact`; `card_sporadicName` is already `by decide`.

**Repair:** Delete them from `Suggested.lean`; keep the mathematical facts or Checks in the README and cite existing proofs. Do not prove them in place. Remove the large collection of elementary examples and helper definitions that serves only these checks. The probe confirms the one-lemma repairs on arbitrary root homomorphisms and arbitrary candidate families, not just a small instance.

## R11 (P3) — Resolve the two gate-reported identifier claims

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:548` and 734, naming `diagramPerm_mem_diagramSymmetry` and `ValidLieTypeIndex.exists_pow_datumSteinberg_eq_smulId`.

**Claim:** These are this file's named declarations, but neither is declared or mentioned in the Lean file. Both already have native owners, so adding prototype copies would compound R05.

**Witness:** `TauCeti/GroupTheory/SpecificGroups/CFSG/RootDatumAutomorphism.lean:62` and `Datum/Assembly.lean:184` contain the native theorems. The gate reports precisely these two names under `readme-ids-missing`.

**Repair:** Cite their fully qualified native names and module files in the supplier contracts; use prose for this roadmap's API bullets. Do not add declarations merely to satisfy the scanner. The native power theorem supplies positive n,k and a positive scalar c=pᵏ, exactly the intended witness.

## R12 (P3) — Remove process history from the mathematical specification

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:721`, “This supersedes PR447's blanket L5 deletion instruction”; also lines 298–303, 371, 712 and Lean lines 490–517.

**Claim:** Historical construction credit and previous implementation/review decisions belong in the roadmap. They obscure the final mathematical contract and violate the timeless-prose rule.

**Witness:** The gate's `prnum=1` points to line 721. Other passages describe earlier forms, what was retained, and when names may be retired, rather than specifying the maps and comparison laws.

**Repair:** Delete the pull-request reference and history. State directly which native models are consumed, which comparisons remain targets, and which equations those comparisons satisfy. Preserve the mathematical intertwining equations at lines 698–699.

## R13 (P3) — Supply the required definition APIs, Checks and layer structure

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:251`–290 and 803–833, representative of the whole file.

**Claim:** The definitions are sufficiently specified by naming their intended types and completion criteria. The required format additionally asks for a basic API and at least three discriminating Checks per definition, exact per-target dependencies, and Examples/Dependencies subsections per layer.

**Witness:** There are no `**Checks.**` blocks or `*Needs:*` lines. PrimePower, the graph-index subtype, fixedSubgroup and GroupPresentation have no three-test blocks; the workstream table substitutes for the prescribed layer structure.

**Repair:** Use Summary, Scope and ownership, Conventions, Exact supplier contracts, How to read the build, numbered layers, Downstream consumers and References. Give each remaining new definition its API and three computed positive/negative controls, and each target its precise inputs. For fixed-point comparisons, use identity on S₃, identity on Q₈, and the trivial endomorphism as discriminating controls: fixed-group orders 6,8,1 and derived-central-quotient orders 1,1,1. Do not reintroduce those native definitions as work.

## R14 (P3) — Attach exact legal source locators and a source manifest

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:551`, 731–790 and 985–996; the folder has no `sources.toml`.

**Claim:** The four sampled targets have verifiable references. “On the root datum” cites 11.2–11.6 without printed pages; the other three sampled blocks have no direct theorem/page locator. General book titles do not locate the individual assertions or the lifting steps.

**Witness:** The References list gives two Carter titles and GLS without chapters/pages or a GLS volume. Steinberg is cited in L6 but omitted from that list. The source service could not retrieve the cited Steinberg text legally.

**Repair:** Record every work under one stable source key and add exact theorem/section and printed-page locators at the supported statements. For material taken from a proof, locate that step and retain its hypotheses. For the readable half-Frobenius formulation, cite Radu, arXiv:2108.06291v2, §2.2, printed p.4 (`ree2021` lines 133–139). Do not invent the unread Steinberg page numbers; retain their uncertified status until text is available. This review does not edit the manifest.

## R15 (P3) — The external formalization's licence claim is obsolete

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:976`, “the repository carries no licence file”.

**Claim:** The cited FiniteSimpleGroups repository has no licence file. Its public author repository now lists LICENSE and Apache-2.0.

**Witness:** `finite-simple-groups-lean` lines 252–254 list LICENSE; lines 522–524 identify Apache License 2.0. The checked page is the exact repository linked in the README.

**Repair:** Remove the no-licence assertion or replace it with a versioned, correct licence citation. Retain the repository's coordination requirement independently of this factual claim. Reopening the cited repository reproduces the licence evidence.

## Verified sound

The review covered all 73 named Lean declarations, the anonymous instances and examples, every README workstream, the four seeded targets, the supplied gate, library duplication and supplier direction. The tables distinguish an actual calculation from an unavailable data body or an uncertified literature identification. Finite examples are tests, not proofs of the general classification theorems.

**Gate and scope.** HEAD is the requested full hash. Git status was clean; the diff outside `TauCetiRoadmap/CFSGStatement` was empty. No set_option, admitted example, extra reviewed source file or external edit was found. The worker gate failed: prnum 1, sorry-data 9, imports 1, readme-ids-missing 2, build 3; the other listed checks passed. Every failure is covered above. Direct original elaboration failed before signatures, as recorded in R01.

The dependency command was run against the provided order and content main, with this exact output:

```text
depcheck: 204 roadmaps, 1477 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. No `*Needs:*` lines exist; the workstream dependency table and all supplier prose were read instead. Mechanical ordering does not certify that a cited subsection exists (R02).

**Headlines and signatures.** The endpoint is definition of the classification proposition, not its proof. The promised substantial results are L4's Suzuki comparison, L5's root/torus/Steinberg and quotient comparisons, L6's Weyl correction, based root-datum classification and based standard group-endomorphism conjugacy. The root-datum part is statable at the pins. The uniform canonical group carrier is not supplied by the allowed pinned interfaces. The existing represented-model endpoint and its universe transport are native; the latter is padding, not a new deep theorem. The S0 compiler theorem is also native.

A scratch copy requested `#check @name` for every named declaration; its original imports prevented elaboration. An independent extraction printed 52 non-private named signatures successfully, with only sorry warnings; the three private numeric constants and supplied examples elaborated with it. No lost section hypothesis was found: this file has no standing section-variable block, and its substantive binders are explicit. The remaining carrier-dependent signatures cannot be certified through the broken import. A separate native Weyl-correction signature compiled, and its printed type retained every required hypothesis. No original file changed.

**One-tactic audit.** All 13 sorried theorems were inspected. `simp` was tried separately on each of the seven independent ones (the three length/exponent assertions, append, inverse, compiler correctness, metadata); none closed. Their opacity/private encodings do not make them headlines. The other six require the unavailable carrier: root additivity and universe transport were tested in their general native forms and closed with one `exact`; Frobenius, graph, half-Frobenius action and square statements cannot be validated on admitted maps. Native compiler correctness likewise closed by one `exact`. The 26-name theorem is an already-proved small-value calculation. These observations motivate deletion, not replacing the file with proved API lemmas.

**Pinned declarations opened.** Paths below are relative to the named library, at Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`:

| Object | Declaration and file:line | Relevant content and limit |
| --- | --- | --- |
| Simplicity | `IsSimpleGroup`, `Mathlib/GroupTheory/Subgroup/Simple.lean:38` | Extends Nontrivial; normal subgroups are bottom or top. It excludes the trivial group. |
| Alternating group | `alternatingGroup`, `Mathlib/GroupTheory/SpecificGroups/Alternating.lean:72` | Kernel of permutation sign, for a finite carrier. |
| Presentations | `PresentedGroup`, `Mathlib/GroupTheory/PresentedGroup.lean:39` | Free group modulo normal closure; does not assert finiteness or identify a named sporadic. |
| Derived subgroup / centre | `commutator`, `Mathlib/GroupTheory/Commutator/Basic.lean:449`; `Subgroup.center`, `Mathlib/GroupTheory/Subgroup/Center.lean:30` | The centre is taken in the actual group passed, which matters for the two-step quotient. |
| Root lengths | `DynkinType.IsLongSimpleRoot`, `TauCeti/LinearAlgebra/RootSystem/RootLength.lean:241` | B: all but last; C: last; F₄: first two; G₂: index 1. The predicate alone does not restrict to valid rank. |
| Pinned root datum / base | `DynkinType.simplyConnectedRootDatum`, `simplyConnectedBase`, `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Assembly.lean:79` and 94 | Real family-by-family carriers, explicit valid-type argument. |
| Isogeny | `RootPairingIsogeny`, `TauCeti/LinearAlgebra/RootSystem/Isogeny/Basic.lean:107`; `smulId`:181 | Positive integral root factors, injective lattice maps with finite-index images, transposed maps. A scalar is a positive natural, not an unchecked natural. |
| Composition | `RootPairingIsogeny` monoid, `TauCeti/LinearAlgebra/RootSystem/Isogeny/Power.lean:109` | f*g applies g first; coweight maps compose in reverse order. |
| Diagram lift | `DynkinType.diagramAut`, `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/DiagramAutomorphism.lean:267` | Actual root permutation and lattice maps; supports the inverse pullback convention. |
| Index / length factors | `PrimePower`, `TauCeti/GroupTheory/SpecificGroups/CFSG/Index.lean:71`; `SuzukiReeIndex.lengthPerm`, `SuzukiRee.lean:81`; `exponent`:182 | Native valid subtypes, actual length permutation and 1/p factors. |
| Root-datum maps | `GraphTwistedIndex.datumSteinberg`, `TauCeti/GroupTheory/SpecificGroups/CFSG/Datum/Steinberg.lean:123`; power theorem:231; `SuzukiReeIndex.datumSteinberg`, `HalfFrobenius.lean:174`; square:203 | These do not by themselves identify the canonical group-level maps. |
| Uniform datum power | `ValidLieTypeIndex.exists_pow_datumSteinberg_eq_smulId`, `TauCeti/GroupTheory/SpecificGroups/CFSG/Datum/Assembly.lean:184` | Positive n,k and scalar c=pᵏ. |
| Fixed-point recipe | `fixedSubgroup`, `TauCeti/GroupTheory/FixedSubgroup.lean:58`; `FixedPointCandidate`, `FixedPointCandidate.lean:60`; `FixedPointCandidate.congr`:74 | Equalizer and derived central quotient, with intertwining equivalence transport; no finiteness assertion. |
| Word semantics | `TauCeti.Relator.toWord_toFreeGroup`, `TauCeti/GroupTheory/Presentation/Relator.lean:337` | Native signed-word compilation has proved semantics for arbitrary generator types. |
| Presentation records | `GroupPresentation`, `TauCeti/GroupTheory/Presentation/GroupPresentation.lean:59`; relatorSet:174; Group:201; matchesMetadata:208 | Counts test syntax, not presentation correctness. |
| All sporadics | `SporadicName.presentation`, `TauCeti/GroupTheory/SpecificGroups/CFSG/Sporadic/Presentation.lean:66`; metadata:100 | 26 actual branches, including Monster and Baby Monster. |
| Universe transport | `exists_mulEquiv_of_forall_finite_isSimpleGroup_zero`, `TauCeti/GroupTheory/SimpleGroupUniverse.lean:45`; `classificationStatement_of_zero`, `SpecificGroups/CFSG/Classification.lean:67` | Works for arbitrary candidate families with multiplication; uses finite shrinking. |
| Suzuki model | `TauCeti.suzukiGroup`, `TauCeti/GroupTheory/SpecificGroups/CFSG/Suzuki/Generated.lean:253`; `SuzukiLieIndex.suzukiGroupEquivFixedPoints`, `Suzuki/Generation.lean:342` | Identifies the existing model, not automatically the proposed new canonical carrier. |
| Type-A graph map | `TauCeti.SlStd.graphAutomorphismPoints`, `TauCeti/Algebra/Lie/SpecialLinear/StandardCarrier/GraphAutomorphism.lean:564` | A real automorphism on the standard carrier over a commutative ring; does not construct the missing uniform canonical carrier. |
| Rank-two special map | `TauCeti.SpStd.specialIsogeny`, `TauCeti/Algebra/Lie/Symplectic/StandardCarrier/SpecialIsogeny.lean:68` | Over a field of characteristic 2; carrier parameter 1 means rank 2. |
| Short-root special maps | `TauCeti.G2ShortRoot.PrimeField.specialIsogeny`, `TauCeti/Algebra/Lie/G2/ShortRoot/PrimeField/SpecialIsogeny.lean:359`; `TauCeti.F4ShortRoot.PrimeField.specialIsogeny`, `TauCeti/Algebra/Lie/F4/ShortRoot/PrimeField/QuotientSpecialIsogeny.lean:308` | Real maps on points over every commutative 𝔽₃/𝔽₂ algebra respectively. The latter's scheme square is Frobenius at line 296. |
| Flatness input | `isTorsionFree_kostantToralCoordinateHopfAlgebra`, `TauCeti/Algebra/Lie/UniversalEnveloping/Kostant/RootSubgroup/Scheme/ToralClosure/Flat.lean:54` | Torsion-free integral coordinate algebra. Its header explicitly does not assert specialization equality. |

**Ownership and resolved suppliers.** Read main RootSystems (including Layer 6), ReductiveGroups (including 9B), and ChevalleyGroups (including C2–C7), plus main CFSGBasicProperties for the downstream boundary. The roadmap service's object searches covered indices, presentations, fixed quotients, root isogenies, Steinberg normal forms and represented carriers; board-package searches and the supplied open-work paths were also consulted. Existing-roadmap revisions were not substituted for main. In particular:

- RootSystems Layer 6 at `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:356`–388 supplies numbering, the datum/base and root counts; its Layer 4 supplies the chamber/fundamental-domain theory used by Weyl correction. L6 should explicitly cite that input.
- ReductiveGroups main 9B at `TauCetiRoadmap/ReductiveGroups/README.md:1610`–1656 owns the generic pinned construction, special scheme isogenies, short-root and tripled represented carriers. CFSG should consume those construction contracts, retaining its family selection and required comparisons; it must not create a second generic owner.
- ChevalleyGroups C2, C4, C5, C6, C7 resolve at lines 241, 377, 455, 628, 664 respectively. C5's character-map composition, uniqueness, standard-map rigidity and torus Lang argument are present at 490–617. The current prototype's predicate has an explicit torus parameter at `Suggested.lean:74`; the canonical simply connected point carrier is not defined there. The README's short `IsCharacterMap F φ` notation needs its torus specialization made explicit.
- Main CFSGBasicProperties at `TauCetiRoadmap/CFSGBasicProperties/README.md:33`–63 owns finiteness/simplicity and finite fixed-point theory; those are correctly outside the present theorem endpoint. The named external formalization is a separate construction, not a permissible replacement for the specified presentation carriers.
- Open RootSystemsPartII, ClassicalGroupsPartII and SpinRepresentations object matches concern generic root/classical/spin infrastructure. No additional owner of the proposed full L6 normal form was found in the permitted main/open/package searches. This does not remove the Part II requirement in R08. No fully qualified declaration collision with a *different* readable roadmap was found; the substantial collisions are objects already native, under different namespaces.

**Seeded source sample.** All four requested blocks were inspected. “The root-datum Steinberg map” agrees with the pinned inverse-pullback construction; “On the root datum” has the computations below but its Steinberg locator could not be text-certified; “On the group” has its stated supplier route, with the algebraic checks below, but the cited source's full hypotheses remain uncertified; “Relation to the index” has the D₄ defect R07. No locator was explicitly marked unverified in the README; lack of a marker was not treated as verification.

The readable source evidence is `ree2021` lines 58–62 and 133–139 (arXiv v2 §2.2, printed p.4: three special pairs and odd powers); `bray-monster` lines 25–37 (12 involutory generators, Y₄₄₃ and spider relation for M×2); `atlas-monster` lines 35–38 (semi-presentation label); `atlas-m22` lines 17–18 (six displayed relators). Bray's page does not give the central-involution word needed for Z=1, nor the proof of the presentation theorem. Those limits are retained below. The official FiniteSimpleGroups page lists the same 14 sporadic names (`finite-simple-groups-lean` lines 300–360), but its claimed kernel checks were not rerun.

**Computed adversarial table.** In rows involving admitted data, “required” denotes the README value; the Lean side is explicitly recorded as unavailable, not passed. Cₙ denotes a cyclic group of order n. E denotes E₁₂. There are 119 rows; rows with several cases report each computed output.

| Statement | Instances | Values on the two sides / discriminating outputs | Result | Change |
| --- | --- | --- | --- | --- |
| PrimePower | (p,e)=(2,1),(3,2),(1,1),(2,0) | Required prime/positive flags: (T,T),(T,T),(F,T),(T,F); record admits exactly first two | Pass | Reuse native |
| PrimePower.card | 2¹, 3², 2² | Body and intended cardinalities: 2=2, 9=9, 4=4; 1 cannot be represented | Pass | Reuse native |
| LieTypeIndex | All constructor branches | 6 classical+5 untwisted exceptional+2 graph exceptional+3 Suzuki/Ree+1 Tits = 17; code has 17 | Pass | Reuse native |
| InStandardRange: A | r=0,1,2; q=2,3,4 | A₀(2): F; A₁(2),A₁(3): F,F; A₁(4),A₂(2): T,T, matching prose | Pass | Reuse native |
| InStandardRange: twistedA | (r,q)=(1,3),(2,2),(2,3),(3,2) | Code/prose flags F,F,T,T; q means 3 rather than 9 in the third input | Pass | Reuse native |
| InStandardRange: B,C | B₂(2),B₂(4),B₁(4),C₂(3),C₃(2),C₃(3) | Flags F,T,F,F,F,T on both sides; B₃(3) also T | Pass | Reuse native |
| InStandardRange: D,twistedD | r=0,1,2,3,4; q=2 | Both families: F,F,F,F,T; no junk low-rank carrier admitted | Pass | Reuse native |
| InStandardRange: exceptional | G₂(2),G₂(3),E₆(2),E₇(2),E₈(2),F₄(2),²E₆(2),³D₄(2) | Flags F,T,T,T,T,T,T,T match the listed restrictions | Pass | Reuse native |
| InStandardRange: Suzuki/Ree/Tits | m=0,1 for all three; Tits | Each ordinary Suzuki/Ree flag F,T; Tits T with q=2 | Pass | Reuse native |
| IsDuplicateRepresentative | A₁(4),A₁(5),A₁(9),A₂(2),A₃(2),B₂(3),A₁(7) | First six flags T, last F; matches every table row | Pass on predicates | Literature identifications separately uncertified |
| LieTypeIndex.Valid | A₁(4),A₁(7),²A₂(3),B₂(3) | Range∧¬duplicate gives F,T,T,F on both sides | Pass | Reuse native |
| q2 | Private constant | p=2,e=1,card=2, both proof fields true | Pass | Delete Check-only helper |
| q3 | Private constant | p=3,e=1,card=3, both proof fields true | Pass | Delete Check-only helper |
| q4 | Private constant | p=2,e=2,card=4, both proof fields true | Pass | Delete Check-only helper |
| ValidLieTypeIndex | A₀(2),A₁(4),A₁(7) | Subtype fibres: empty,empty,one proof-irrelevant fibre; desired accepted index only last | Pass | Reuse native |
| UsesHalfFrobenius | F₄(2),G₂(3),Suzuki(1),ReeG₂(1),ReeF₄(1),Tits | Flags F,F,T,T,T,T; exceptional Dynkin type alone gives wrong first two | Pass | Reuse native |
| SuzukiReeIndex | Suzuki(0),Suzuki(1),Tits,A₁(7) | Subtype admissibility F,T,T,F | Pass | Reuse native |
| GraphTwistedIndex | A₁(7),²A₂(3),Suzuki(1),Tits | Subtype admissibility T,T,F,F; untwisted family legitimately has identity graph map | Pass | Reuse native |
| ValidLieTypeIndex.dynkinType | ²A₂(3),³D₄(2),Suzuki(1),ReeG₂(1),Tits | A₂,D₄,B₂,G₂,F₄ respectively in body and intended diagram | Pass | Reuse native |
| dynkinType_valid | B₂(4),C₃(3),D₄(2),A₁(7) | Native bounds 2≥2,3≥3,4≥4,1≥1 all true; B₁ rejected before map | Pass | Reuse native |
| ValidLieTypeIndex.rank | Previous five mapped inputs | Ranks 2,4,2,2,4 equal native ranks; raw rank zero has no valid preimage | Pass | Reuse native |
| ValidLieTypeIndex.characteristic | A₁(7),²A₂(3),Suzuki(1),ReeG₂(1),Tits | 7,3,2,3,2 on both sides | Pass | Reuse native |
| characteristic_prime / Fact instance | Same five cases | Prime flags T,T,T,T,T; neither characteristic 0 nor 1 occurs | Pass | Reuse native |
| ValidLieTypeIndex.fieldOrder | ²A₂(3),Suzuki(0/1),ReeG₂(1),Tits | 3,2/8,27,2; first matrix field is 3²=9; raw Suzuki(0) excluded | Pass | Reuse native |
| graphPermA | n=0,1,2,3 | Images [],[0],[1,0],[2,1,0]; reversal squared is identity in each case | Pass | Native API; low n are Checks only |
| graphPermD | n=2,4,5 | Images [1,0],[0,1,3,2],[0,1,2,4,3]; last two are the valid fork swaps | Pass | Native API; n=2 is only junk-domain test |
| graphPermE6 | Indices 0,…,5 | Images [5,1,4,3,2,0]; square [0,1,2,3,4,5]; branch nodes 1,3 fixed | Pass | Native API |
| trialityPermD4 | Indices 0,…,3 | Images [2,1,3,0]; cube [0,1,2,3]; inverse images [3,1,0,2] | Pass | Native API |
| lengthPermRankTwo | Indices 0,1 | Images [1,0]; square [0,1]; B₂ lengths [long,short] become [short,long] | Pass | Native API |
| lengthPermF4 | Indices 0,…,3 | Images [3,2,1,0]; length flags [T,T,F,F] become [F,F,T,T] | Pass | Native API |
| GraphTwistedIndex.diagramPerm | A₁(7),²E₆(2),³D₄(2) | Required images [0],[5,1,4,3,2,0],[2,1,3,0]; local body unavailable | Admission | R04/R05 |
| SuzukiReeIndex.lengthPerm | B₂,G₂,F₄ | Required [1,0],[1,0],[3,2,1,0]; local body unavailable | Admission | R04/R05 |
| isLongSimpleRoot_lengthPerm | B₂ i=0,1; F₄ i=0,2 | Required equivalences F↔¬T,T↔¬F,F↔¬T,T↔¬F are all true; no local map to evaluate | Native theorem exists | R05/R10 |
| SuzukiReeIndex.exponent | B₂,G₂,F₄ | Required arrays [1,2],[3,1],[1,1,2,2]; local body unavailable | Admission | R04/R05 |
| exponent_of_isLongSimpleRoot | B₂ i=0; G₂ i=1; F₄ i=0,1 | Required exponents 1,1,1,1 = RHS 1; arbitrary local data cannot be evaluated | Native theorem exists | R05/R10 |
| exponent_of_not_isLongSimpleRoot | B₂ i=1; G₂ i=0; F₄ i=2,3 | Required exponents 2,3,2,2 = characteristic in each case | Native theorem exists | R05/R10 |
| fixedSubgroup | F=id and F=trivial on S₃,C₃,Q₈,1 | Identity fixed orders 6,3,8,1; trivial-map fixed orders 1,1,1,1; equalizer gives these exact values | Pass | Cite native equalizer |
| ValidLieTypeIndex.Closure | p=2,3 | Characteristic 2/3 as required; element a with a²+a+1=0 over 𝔽₂ has a²=a+1≠a | Pass on carrier convention | Cite native closure |
| ValidLieTypeIndex.AmbientGroup / Group instance | A₁ over 𝔽̄₅ versus PGL₂ | Intended SL₂ contains −I≠I; PGL₂ identifies their classes; required centre has two points | Unavailable canonical carrier | R01/R04; no adjoint stand-in |
| simpleRootSubgroup | SL₂ x(t)=I+tE; t=0,1 | x(0)=I, x(1)=I+E≠I; rules out zero subgroup map | Correct required model; local import fails | R01 |
| simpleRootSubgroup_add | SL₂ s=1,t=2 over 𝔽₅ | (I+E)(I+2E)=I+3E=x(3), since E²=0; map_mul gives general equation | One-lemma API | R10 |
| frobenius | 𝔽₄ element a, q=2; q=4 | Required a↦a+1 and a↦a; identity is wrong for q=2 | Admission | R04 |
| frobenius_simpleRootSubgroup | SL₂ x(a) over 𝔽₄, q=2 | Entrywise square yields I+(a+1)E = x(a²) | Correct required equation | R04; not certified for local admitted map |
| graphAut | A₂ graph swap; D₄ triality | Required simple-node arrays [1,0] and [2,1,3,0]; orders 2 and 3 | Admission | R04 |
| graphAut_simpleRootSubgroup | D₄ root α₀, coefficient 1 | Required output x_{α₂}(1), not x_{α₃}(1); inverse triality distinguished | Correct orientation | R04 |
| primeFrobenius | 𝔽₄ a; 𝔽₃ scalar 2 | a²=a+1; 2³=2; both distinct from an arbitrary zero map | Admission | R04 |
| halfFrobenius | Long/short B₂ at t=a∈𝔽₄ | Required outputs x_short(a),x_long(a²)=x_long(a+1); reversed factors swap a and a+1 | Admission | R04 |
| halfFrobenius_simpleRootSubgroup | G₂, t transcendental over 𝔽₃ | Long→short coefficient t; short→long coefficient t³; t≠t³, unlike prime-field test | Correct required convention | R04 |
| halfFrobenius_sq | B₂,G₂,F₄, each length orbit | Exponent products 1·2=2,1·3=3,1·2=2; reverse product same, so square alone insufficient | Pass as formal computation | Retain torus negative control |
| steinberg | m=0,1,2 | Required τ,τ³,τ⁵; squares Frob_p,Frob_p³,Frob_p⁵; τ∘Frob_q instead has exponent 4m+3 | Admission | R04 |
| ValidLieTypeIndex.FixedPoints | SL₂ Frobenius at q=2; F=id on S₃ | Intended fixed orders 6 and 6; arbitrary id on SL₂(𝔽̄₂) instead has infinitely many points | Correct construction, admitted dispatch | R04 |
| ValidLieTypeIndex.Group | H=S₃,Q₈,C₃,1,A₄,A₅ | Derived orders 3,2,1,1,4,60; derived-centre orders 3,2,1,1,4,1; quotient orders 1,1,1,1,1,60 | Pass; replacing centre with Z(H) fails S₃ | Cite FixedPointCandidate |
| SporadicName / Fintype | Enumerated families | 5 Mathieu+4 Janko+6 HS…ONan+3 Conway+3 Fischer+5 HN…M=26; no duplicate constructor | Pass | Native enumeration |
| GeneratorLetter | n=0,1 | 0 letters for Fin 0; 2 letters for Fin 1, positive and inverse | Pass | Use native signed alphabet |
| GeneratorLetter.toFreeGroup | Positive/negative a; C₃ image | a↦a, inverse a↦a⁻¹; in C₃ these are 1 and 2 additively | Pass | Use native signed alphabet |
| PresentationWord | n=0,1 | Only [] at n=0; [a,a⁻¹] at n=1 has length 2 although group value 1 | Pass | Use native word format |
| PresentationWord.toFreeGroup | [],[a,b],[a,a⁻¹] | 1,ab,1 on both semantics; nonabelian order remains ab rather than ba | Pass | Native syntax |
| Relator | a,b; all five constructors | gen a→a; inv a→a⁻¹; mul a b→ab; pow a 0→1; comm a b→aba⁻¹b⁻¹ | Pass | Native syntax |
| PresentationWord.inv | [a,b],[] | Inverses [b⁻¹,a⁻¹],[] evaluate b⁻¹a⁻¹,1; unreversed [a⁻¹,b⁻¹] differs in a free group | Pass | Native syntax |
| Relator.toWord | (ab)²; [a,b] | Letters a,b,a,b and a,b,a⁻¹,b⁻¹; lengths 4 and 4 | Pass | Native compiler |
| Relator.toFreeGroup | a=(12),b=(23) in S₃; exponent 0 | Commutator (ab)²=(132), not inverse (123); a⁰=1 | Pass | Native semantics |
| toFreeGroup_append | v=[a],w=[b]; empty v | LHS ab and b; RHS a·b and 1·b equal | Pass | Native word API |
| toFreeGroup_inv | w=[a,b],[] | LHS b⁻¹a⁻¹,1; RHS (ab)⁻¹,1; equal | Pass | Native word API |
| Relator.toWord_toFreeGroup | pow(ab,2),comm(a,b),inv(ab) | Both semantics abab,aba⁻¹b⁻¹,b⁻¹a⁻¹ respectively | Pass; native theorem | R05 |
| GroupPresentation | One generator, relator a²; zero generators/no relators | Arity 1/0 and relator counts 1/0; presents C₂/1; metadata field values do not change the group | Pass | Native record |
| GroupPresentation.generatorCount | Names [],[a],[a,b] | Body and arities 0,1,2; separate expected count 9 would not change these | Pass | Native API |
| GroupPresentation.relators | Transcribed [a²],[] | Compiled [[a,a]],[]; lengths 1,0 match input relator counts | Pass | Native API |
| GroupPresentation.relatorSet | Transcribed [a²,a²] | Set is {a²}, cardinality 1 versus list length 2; repeated equations do not change quotient | Pass | Native API |
| GroupPresentation.Group | 0 generators/0 relators; 1 generator/0 relators; [a²] | Groups 1,ℤ,C₂ respectively; orders 1,infinite,2; empty relator list is not always trivial | Pass | Native API |
| SporadicName.presentation | M,B and all constructors | Required 26 concrete presentations; local data body supplies 0 inspectable branches, native dispatcher supplies 26 | Admission / duplicate | R04/R05 |
| GroupPresentation.matchesMetadata | Actual (g,r)=(1,1), expected (1,1),(2,1),(1,2) | Predicate T,F,F; actual relator a³ with expected (1,1) also T | Pass; not semantic certification | Native API |
| presentation_matchesMetadata | Any 1-generator/1-relator record | [a²] and [a³] both return T despite orders 2 and 3; cannot certify a named group | Check padding; local s.presentation opaque | R10 |
| SporadicName.Group | Rename M and B presentations | The two labels exchange group values; image set unchanged; no correct labelling follows from existential CFSG | Pass as stated caveat | Import native data |
| card_sporadicName | Complete enumeration | 26=26 by decide; no group-order assertion | Padding | R10 |
| CFSGIndex | p=1,2; degree=4,5; invalid A₀ | Cyclic fibres empty/nonempty; alternating empty/nonempty; invalid Lie fibre empty | Pass | Native index |
| CFSGIndex.Group / dependent instance | cyclic 2; alternating 5 | Native carriers C₂ and A₅ have orders 2 and 60; omitted Lie/sporadic bodies prevent a complete local endpoint | Partial / unavailable | R01/R04/R05 |
| ClassificationStatement | Trivial G; G=C₂; G=S₃ | Trivial fails Nontrivial premise; C₂ has cyclic witness; S₃ has normal A₃≠1,S₃ so fails IsSimpleGroup premise | Pass on quantifiers; no CFSG proof claimed | Native endpoint plus explicit comparison |
| classificationStatement_of_zero | ULift C₂; finite G of order N | Transport uses a 2-element carrier for ULift C₂ and N-element carrier for G; inverse/forward equivalences compose to identity | Native theorem closes by exact | R10 |
| Small case A₁(2) | SL₂(𝔽₂)≅S₃ | Order 6; derived C₃ order 3; centre order 3; quotient order 1 | Pass | Keep negative control |
| Small case A₁(3) | SL₂(𝔽₃) | Order 24; derived Q₈ order 8; centre order 2; quotient order 4=C₂×C₂ | Pass | Keep negative control |
| Small case ²A₂(2) | 3×3 unitary determinant-one matrices over 𝔽₄ | Direct enumeration: 36 unit vectors, 216 matrices; commutator closure 54, centre 3, quotient 18, matching README | Pass by finite enumeration | Keep negative control |
| Small case ²B₂(2) | C₅⋊C₄ with faithful action | Order 20; derived C₅ order 5; centre of derived 5; quotient 1 | Pass on explicit Frobenius model | Keep negative control |
| Exceptional duplicates | B₂(2),G₂(2),²G₂(3) | Claimed derived-simple orders 360,6048,504; A₆=6!/2=360, PSU₃(3)=27·28·8=6048, PSL₂(8)=8·63=504 | Order consistency only | Isomorphism source not certified |
| Small duplicate table | A₁(4/5/9),A₂(2),A₃(2),B₂(3) | Order matches:60/60/360,168,20160,25920; retained A₅/A₆,A₁(7),A₈,²A₃(2) have those same orders | Arithmetic consistency only | Equal order is not isomorphism |
| Tits branch | F₄,m=0 | τ¹ squared=Frob₂; claimed fixed order 35942400, derived index2 gives17971200; central quotient unchanged if centre1 | Formal exponent pass; structural orders uncertified | Preserve distinct Tits case |
| L0 full-weight control | D₄ vector/half-spin/full spin/triple | Centre-character group C₂²; one 8-dimensional constituent spans a subgroup of order2; two spin constituents span order4; triple dimension8+8+8=24 | Correct discriminating lattice calculation | Consume supplier construction |
| L0 minuscule and Geck carriers | E₆,E₇,E₈,F₄,G₂ | P/Q orders3,2,1,1,1; minuscule generator has order3/2; adjoint weights suffice only when quotient1 | Correct lattice control | Native/supplier comparisons, not second carrier owner |
| L0 short-root modules | G₂ and F₄ | Weight counts 6 short+1 zero=7; 24 short+2 zero=26; Lie quotient dimensions14−7=7 and52−26=26 | Dimension check only | Integral-lattice and irreducibility claims need exact sources |
| L0 faithful scheme versus points | μ₂ in characteristic2 | μ₂(k)={1}, but k[z]/((z−1)²) has dimension2, not1 | Pass; pointwise faithfulness insufficient | Keep scheme-level condition |
| L0 generation control | Model G×C₂ with roots (xα(t),1) | Generated root subgroup projects trivially to C₂; element (1,nonidentity) not generated | Pass; rules out inert factor | Retain generation hypothesis |
| L0 flatness caveat | 𝔾a over ℤ; generator map t↦2t; specialize mod2 | Integral schematic image=𝔾a and flat; reduced generator map=0 with image{0}; fibre 𝔾a≠{0} | Pass; flatness alone insufficient | R02 correct owner |
| L0 canonical assembly versus L5 | Same diagram and characteristic on two models | Canonical point carrier may be defined before e; theorem transport needs eF=F'e; if F'=eFe⁻¹ by definition, defect test is 0=0 | Correct non-tautology requirement | Remove contradictory historical assembly wording |
| L1 ordinary / graph powers | σ orders1,2,3; q=2 | F powers Frob₂,Frob₄,Frob₈ respectively; datum powers 2I,4I,8I | Pass formal composition | Cite native datum results |
| Root-datum Steinberg map (sample) | D₄ σ=(0 2 3), q=2 | Group sends α₀→α₂; pullback sends α₀→2α₃; cube on weights=8I; using σ instead gives2α₂ | Pass orientation against pin | Cite native map; source locator missing |
| Character-map composition and uniqueness | Two coordinate maps A=diag(2,1), B=swap | Group AB pullback is BᵀAᵀ=[[0,1],[2,0]], whereas AᵀBᵀ=[[0,2],[1,0]]; over 𝔽₅ exponents1,5 agree on units | Pass; infinite-field condition matters | Explicit torus parameter in contracts |
| Graph-map determination | SL₃ upper highest-root element I+cE₁₃ | It commutes with I+tE₁₂ and I+tE₂₃, but [E₁₃,E₃₂]=E₁₂≠0 | Pass; positive roots alone insufficient | Retain negative-simple equations |
| All-root signs / signed J | J=[[0,1],[−1,0]],H,E over 𝔽₅ | Wrong f([H,E])=3E, [fH,fE]=2E; corrected g has2E on both sides | Fail | R03 use J inverse |
| L2 forced exponents | B₂ torus relation; generator s of 𝔽₈ˣ | Correct exponents require −2=−2; reversed require s⁻¹=s⁻⁴, i.e. powers6=3 modulo7, false | Pass negative control | Keep both square and torus Checks |
| L2 B₂/C₂ adapter | B₂ nodes0,1 versus C₂ nodes0,1 | B₂ flags[T,F]; C₂ flags[F,T]; swap yields[T,F]; identity mismatches both | Pass | Cite native adapter |
| L4 Suzuki comparison | m=1 versus m=0 | q=8 gives 8²(8²+1)(8−1)=29120; m=0 gives solvable order20, recipe quotient1≠20 | Correct need m≥1; no general proof certified | Use native model plus L5 transport |
| L5 intertwining transport | F=id on S₃ and F'=trivial on S₃ | Fixed orders6 and1, so no e intertwines them; for F'=eFe⁻¹ fixed groups carry bijection g↦e(g) | Pass hypothesis discrimination | Keep independent F' construction |
| On root datum: Weyl correction (sample) | A₁, φ=−3I; φ=3I | Unique corrections −I and I; resulting weights3I and3I; other correction gives−3I and is unbased | Pass instance; native signature elaborates | R06 |
| On root datum: based ordinary form (sample) | A₁ p=3,e=1; A₂ diagram swap,q=2 | Scalars3 and root permutation swap with factor2; powers3I and4I; q=1 has no positive p-power witness | Pass instance | General source theorem uncertified |
| On root datum: based exceptional form (sample) | B₂,p=2,m=0,1; G₂,p=3,m=0 | Pullback long/short factors(2,1),(4,2),(3,1); squares2I,8I,3I | Pass instance; pair restriction essential | State native headline; source uncertified |
| On root datum: negative regression | A₁ φ=−pI, p=2,3 | Squares4I,9I; reflection composition gives2I,3I; conjugation by ±I leaves−2I,−3I | Pass | Keep as README Check |
| On group: power and character map (sample) | SL₂ F=Frob₃; torus h(s) | F(h(s))=h(s³); F² givesh(s⁹); pullback3I squared9I | Pass instance | General lift uses supplier C5 |
| On group: rigidity and Lang equation (sample) | SL₂, q=3; torus parameter u=i over 𝔽̄₃ with i²=−1 | u/u³=i/(−i)=−1; over 𝔽₃ itself both units instead map to1; character1−3=−2≠0 | Pass; algebraic closure used | No full general source certification |
| On group: conjugacy transport (sample) | F=Int(u)F₀Int(u)⁻¹ | For F₀(g)=g, F(u g u⁻¹)=u g u⁻¹; fixed-point image and candidate quotient image equal the transported elements | Pass identity calculation | Cite FixedPointCandidate.congr |
| On group: unbased regression | SL₂ n=[[0,1],[−1,0]],F=Int(n)Frob₃ | n²=−I, Int(n)²=id; torus character−3; F² character9; positive root maps to negative | Pass | Retain basedness |
| Relation to index (sample) | D₄, q=5, σ=(0 2) | σ(0)=2 versus canonical transposition(0)=0; conjugation by(0 3) changesσ to(2 3) | Fail exact raw-parameter claim | R07 choose conjugacy representatives |
| Relation to index: raw boundary | A₁,q=2; half-Frobenius B₂,m=0 | Datum normal forms2I andτ exist; GraphTwistedIndex/SuzukiReeIndex fibres are empty | Expected numerical exceptions | Do not apply valid-index maps to raw data |
| S0 commutator convention | a=(123),b=(12) in S₃ | aba⁻¹b⁻¹=(132); a⁻¹b⁻¹ab=(123); copying the alternate source word reverses value | Pass | State source conversion and reuse native syntax |
| S0/S1 metadata is not truth | One generator; relators a² and a³ | Both metadata counts (1,1); group orders2 and3 differ | Pass caveat | Keep source-to-word verification |
| S1 Monster presentation count | Y₄₄₃ plus spider then central relation | 12 involutions+choose(12,2)=66 pair relators+1 spider=79; +Z=1 gives80 | Count agrees with Bray | Central word/proof not supplied by that page |
| S1 Bimonster distinction | M embedded in M wr C₂ | Order of ambient=2·order(M)²; index of one M factor=2·order(M), not2 | Pass arithmetic | Cannot substitute Bimonster presentation |
| S1 redundant or altered relators | ⟨a∣a²,a⁴⟩; replace a² in⟨a∣a²⟩ by a³ | First and after dropping a⁴ both C₂; second changes C₂ to C₃, neither a quotient nor a cover of C₂ | Pass | Keep caveat |
| S1 endpoint ignores labels | Swap M and B | Image before={M,B,…}; after={B,M,…}, exactly the same; missing M without replacement removes one isomorphism type | Pass set-theoretic observation | Presentation labelling requires separate evidence |
| A0 finite universe transport | G finite orderN and Shrink G | card(Shrink G)=N=card(G); e⁻¹ followed by e is identity; no candidate finiteness assumed | Pass native theorem | R05/R10 |
| External formalization licence | Linked public repository | README assertion:0 licence files; source lists LICENSE and Apache-2.0 | Fail factual claim | R15 |

## Not verifiable

- **Steinberg 1968 (`steinberg1968`):** the seeded L6 locator 11.2–11.6, and 7.2/10.1/10.10 used for the unbased discussion, could not be checked against the text or printed pages. The sources service tried the AMS DOI landing page and the AMS PDF URL; the latter redirected to an institutional-login service. No login or paywall bypass was attempted. Thus this review does not certify that the exact abstract-root-datum or abstract-group formulations follow from those numbered results. L1 and the index comparison supply no independent exact source locator.
- **Carter 1972, Carter 1985, GLS and the printed Atlas (`carter1972`, `carter1985`, `gls`, `atlas1985`):** the bibliography gives broad titles rather than locators (and no GLS volume). The sources service's bibliographic searches found no legal full text; GLS resolved to an AMS landing page without readable text. The isomorphisms in the duplicate table and all representation-theoretic assertions have not been literature-certified merely from equal orders, weight counts or the pin's API names.
- **Norton (1990) and Ivanov (1999):** the README gives neither a title nor a theorem/page for the Monster and Baby Monster claims. Author/year/presentation searches were submitted through the source service. Bray's accessible page gives the Y₄₄₃ presentation for M×2 and the count 79, but no central-involution word or proof. The 80-relator Monster claim needs that additional word and its precise theorem source.
- **Farooq–Norton–Wilson (`farooq2013`):** the source service classified DOI 10.1016/j.jalgebra.2013.01.015 as paywalled/uncertified. It was not placed in the missing-reference request. Its contents were not guessed.
- **Other presentation provenance:** no 26-row source manifest is present in the roadmap. The existing native dispatcher proves that concrete data exist, not that each datum is the correct named sporadic group. This review did not re-certify all 26 source presentations, their finiteness, simplicity or external relator tests. The ATLAS M₂₂ page's displayed presentation and the Monster page's semi-presentation label were checked; neither page is a substitute for the missing presentation-proof references.
- **External formalization and historical discussion:** the public FiniteSimpleGroups README and its licence were read, but its full implementation, axiom audits and fourteen builds were not rerun. The pinned Formal Abstracts page was readable and has the stated predicate/disjunction form. The sources service could not classify the linked Zulip history as a legal retrievable source; the attribution of the historical discussion was not certified. Public Mathlib contribution pages were fetched only as provenance; availability claims were decided on the pinned trees.
- **Full Lean signature audit:** the original module and full signature probe stop at the forbidden missing roadmap import. Only the independent extraction and native probes elaborated. No classification theorem or general L4/L5/L6 theorem was proved by this review; the explicit instance computations above are the advertised adversarial tests.

All unresolved text requests are recorded together in the scratch missing-reference ledger, using one key per work. The review is complete as a needs-changes verdict; no approval, merge, public comment or request to park the job was issued.

## Source issues

- none
