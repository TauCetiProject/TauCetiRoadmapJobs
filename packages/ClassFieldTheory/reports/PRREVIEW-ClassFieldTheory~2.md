# Review of ClassFieldTheory (pull request #1411 at 90bf034)

**Verdict:** needs changes

## R01 (P1) — The build gate rejects non-sorry dependency warnings

**Location:** `TauCetiRoadmap/ClassFieldTheory/Suggested.lean:23–26`; the four roadmap imports.

**Claim:** The acceptance test must build with `sorry` as its only warning. The supplied gate reports `build=41 FAIL`. These are dependency warnings, not evidence that a class-field-theory formula is false.

**Witness:** `TauCetiRoadmap/ProfiniteCohomology/Suggested.lean:567` emits an unused-section-variable warning. A fresh targeted ClassFieldTheory build succeeds but emits 62 non-sorry dependency warnings; direct elaboration emits only sorry warnings.

**Repair:** Remove the roadmap-module dependencies as in R08, consume the pinned library declarations, and rerun the targeted build and gate. Do not suppress linters or edit other roadmap folders in this package. Building the initially missing `TauCeti.NumberTheory.ClassFieldTheory.Global.Formation` object resolved the initial object-file problem; it did not remove these warnings. This separates the reproducible gate failure from the now-successful elaboration.

## R02 (P1) — The absolute upper-filtration supplier contract does not exist on main

**Location:** `TauCetiRoadmap/ClassFieldTheory/README.md:1466–1471`: “LocalFieldsRamification §4a.1”. The same dependency appears at lines 164 and 193.

**Claim:** The absolute reciprocity comparison consumes a closed absolute upper filtration, its finite-quotient surjections, and its inertia endpoint as supplied results.

**Witness:** Main's `Completed/LocalFieldsRamification/README.md` has Layer 3 at line 724 and Layer 4 at line 1154, but no §4a.1. Its main-branch Lean file and pinned Tau Ceti have no `absoluteUpperRamificationGroup`.

**Repair:** Give the missing construction an owner before the absolute comparison: either a precise declared gap with a permitted named supplier and matching plan entry, or a construction target here, with its inverse-limit, finite-quotient and endpoint laws. An open revision of the existing LocalFieldsRamification roadmap contains the proposed section, but that revision is not an eligible supplier under this review's contract. Keep the finite reciprocity theorem independent of this gap. The repaired contract must give the entire group at depth −1 and inertia at depth 0; on an unramified finite quotient these images are respectively the whole cyclic group and the trivial group. Serre 1961 supports the inverse-limit construction; the problem is ownership, not that mathematics.

## R03 (P2) — Admitted data invalidate the acceptance test

**Location:** `TauCetiRoadmap/ClassFieldTheory/Suggested.lean:875`, `1128`, `1947`, `2744`, `2779`, `3429`, and the other occurrences counted by `sorry-data=55`. `README.md:2435–2440` explicitly permits them.

**Claim:** The file states headlines against constructed arithmetic objects. Instead, 55 definitions or instances contain admissions, including the invariant, absolute Artin map, Weil carrier and topology, global invariant, and finite supports.

**Witness:** `invMap` at line 1128 and `artinMap` at line 1947 have body `sorry`; the Weil topology at line 2779 is also admitted. Every later statement using them inherits this defect.

**Repair:** Rewrite the file as a headline acceptance test. Use existing native constructions (R04); keep only simple, genuinely defined adapters needed by a headline. Heavy unavailable constructions belong in the README, with the affected headlines and missing carriers explicitly listed in the module docstring, not encoded by admitted data. This includes the Weil reciprocity statement and the absolute upper-filtration comparison. Name the principal ideal theorem and conductor–discriminant theorem in the headline inventory as well: they are promised in the README but neither stated nor classified as unavailable in the module docstring. Test the rewritten invariant on 1/4 and its degree-two restriction 1/2, and the Artin map on the degree-four unramified example. Merely replacing the data admissions with arbitrary parameters would not repair this.

## R04 (P2) — Several purported developments already exist at the pins

**Location:** `TauCetiRoadmap/ClassFieldTheory/README.md:1040–1059`, `1070`, `1336`; `Suggested.lean:1025`, `1038`, `1128`, `1334`, `1947`.

**Claim:** The roadmap reconstructs the local Brauer carrier/invariant, Tate dual, and absolute local Artin map, while only part of the native formation machinery is deferred.

**Witness:** Pinned Tau Ceti already defines `ClassFieldTheory.invMap` in `Brauer/Invariant.lean:193`, `tateDual` in `Local/Duality/Basic.lean:95`, and `artinMap` in `Local/ArtinMap.lean:109`, with actual bodies.

**Repair:** Move these objects and their existing laws to exact supplier contracts and delete their redevelopment targets and redundant Lean copies. Retain only genuinely new comparisons, explaining their different carriers. Also defer ordinary quadratic reciprocity to Mathlib's `legendreSym.quadratic_reciprocity` in `Mathlib/NumberTheory/LegendreSymbol/QuadraticReciprocity.lean:107`; an alternative proof is not a new headline statement. The native invariant is arithmetic-normalized on the same continuous-cohomology Brauer carrier, and the native absolute Artin map has the same algebraic-closure abelianization target. Their degree-two restriction and unramified Frobenius values match this roadmap's 1/4 ↦ 1/2 and ζ₅ ↦ ζ₅² tests.

## R05 (P2) — Equal-characteristic reciprocity overlaps its existing owner

**Location:** `TauCetiRoadmap/ClassFieldTheory/README.md:1457–1465`, `1582–1650`; `Suggested.lean:2220`.

**Claim:** The new unit-filtration theorem is planned here in both characteristics, while equal-characteristic p-primary existence is excluded because its proof needs different theory. The ownership boundary omits the roadmap already extending the base development in precisely that direction.

**Witness:** `TauCetiRoadmap/FunctionFieldArithmetic/README.md:1077–1099`, at its supplied open head, states the same equal-characteristic unit-filtration equality and owns full local existence, injectivity and the local correspondence. Its §3 owns Artin–Schreier–Witt theory.

**Repair:** Cite FunctionFieldArithmetic §4.2 for the equal-characteristic extension and its filtration comparison instead of replanning that theorem here. Retain the genuinely new mixed-characteristic filtered-norm work, and explain how the two supplied cases yield the general result. Name the deferral in Scope and ownership, including full equal-characteristic existence, rather than treating it as an unowned omission. The owner consumes the base local maps and formation results: use the already pinned native versions of those inputs so this does not become a reciprocal dependency on the new comparison. Do not build another Artin–Schreier–Witt development here. As the shared normalization test, over F₂((t)) the extension y²−y=t⁻¹ has degree2, upper break1, conductor2, and norm subgroup of index2; its images at depths1 and2 are C₂ and1. Both owners state this case. The original restricted existence statements are not mathematically false; this finding concerns duplicate ownership and the unnamed extension boundary.

## R06 (P2) — The quadratic restriction on ring class fields is not load-bearing

**Location:** `TauCetiRoadmap/ClassFieldTheory/README.md:2134–2141`: “the quadratic hypothesis … is load-bearing”; `Suggested.lean:4400–4484`.

**Claim:** Failure of the quadratic formula for orders in higher degree is treated as a reason not to develop their ring class fields.

**Witness:** Kopp–Lagarias Theorems 1.1–1.3 quantify over every number field and every order: `kopp-lagarias line 128`, line 160, line 174. No degree-two hypothesis occurs.

**Repair:** Construct the general order quotient using the order itself, rather than only its conductor and the special quadratic congruence formula. Generalize the field, Artin isomorphism and splitting/ramification statements to all number-field orders; retain the quadratic formula as a specialization. `Completed/GlobalNumberFields/README.md:573–620` already owns general orders, invertible Picard groups, and the congruence description, and assigns the class field here. As a higher-degree endpoint check, K=Q(ζ₇+ζ₇⁻¹) has degree 3 and discriminant 49; its Minkowski bound is 14/9<2, so at O=O_K both Pic O and Gal(H_O/K) are trivial and H_O=K. The generalized construction gives this result without a degree-two binder. [Kopp–Lagarias, arXiv v3](https://arxiv.org/abs/2212.09177v3), pp. 3–5.

## R07 (P2) — The general Hilbert symbol has no fixed invariant coordinate

**Location:** `TauCetiRoadmap/ClassFieldTheory/README.md:1055–1059`; `Suggested.lean:1208–1213`: “cup followed by the invariant”.

**Claim:** This is the canonical cohomological local Hilbert symbol. The definition instead accepts an arbitrary additive equivalence `tr : H²(F,μ_n) ≃+ ZMod n`; no law identifies it with the local invariant.

**Witness:** At n=3 over Q₇, replacing a trace coordinate tr by −tr changes a cup class with coordinate 1 to coordinate 2. Bilinearity, Steinberg, antisymmetry, norm kernels and perfectness all survive this change.

**Repair:** Define the arithmetic trace through μ_n → (Fˢ)ˣ, the native local invariant and its n-torsion coordinate; require that coordinate in the public symbol. A generic pairing with a supplied coordinate may remain an auxiliary construction if it is named accordingly. Add a cubic sign check: the cyclic algebra for the unramified cubic extension, arithmetic Frobenius and parameter 7 has invariant 1/3, hence coordinate 1, while the inverse normalization gives 2. The square-root case cannot catch this defect because −1=1 in ZMod 2. This finding does not assert that the coordinate-independent kernel or duality theorems are false.

## R08 (P3) — Roadmap imports are forbidden in Suggested.lean

**Location:** `TauCetiRoadmap/ClassFieldTheory/Suggested.lean:23–26`.

**Claim:** The acceptance test is supposed to use the pinned libraries. It imports ProfiniteCohomology, LocalFieldsRamification, GlobalNumberFields and Completed.NumberFieldArithmetic roadmap modules.

**Witness:** All four imports are visible in the header; the gate reports `imports=1`. Whether a roadmap is completed does not make its Suggested module an allowed library import.

**Repair:** Delete these imports and use individual native `TauCeti.*` modules for available objects. Where a headline requires a genuinely unavailable carrier, classify it in the docstring instead of importing another acceptance test. Re-elaborate with the single `import Mathlib` and only actually used Tau Ceti modules. This also removes the dependency-warning route in R01.

## R09 (P3) — API and regression-test padding belongs in the README

**Location:** `TauCetiRoadmap/ClassFieldTheory/Suggested.lean:426`, `448`, `491`, `502`, `606`, `2429`, `2718`, `3749`, `3844`; `README.md:2200–2203`, `2351–2358`.

**Claim:** Suggested.lean contains API laws and named elementary Checks rather than just headline theorems.

**Witness:** Of 205 admitted theorems probed, `tateIso_res` and `tateIso_res_trans` close with `simp`; `ker_artinMap` and `surjective_artinMap` close with one exact native lemma. The ζ₅-at-2 theorem is expressly a numerical Check.

**Repair:** Delete these declarations from `Suggested.lean`; keep the mathematics as README targets, supplier references or Checks. Apply the same deletion rule to trivial-layer, top-norm-subgroup, special cyclotomic and inadmissible-modulus boundary tests. Do not prove the padding in place. The scratch probes elaborated successfully; the other 201 attempted declarations retained their admissions, which is not a proof of their depth.

## R10 (P3) — The README lacks the required target-level structure and exact locators

**Location:** `TauCetiRoadmap/ClassFieldTheory/README.md:1`, `265–413`, `648–690`, `2198–2373`, `2533–2537`.

**Claim:** The roadmap uses a broad catalogue and layer-wide prerequisites where the required format needs precise supplier contracts, target dependencies, definition APIs and three discriminating Checks each. Most sampled conventions and worked examples have no theorem-and-page locator at their claim.

**Witness:** The Artin–Tate reference assigns abstract existence to XIV §§1–5; its published contents put it in XIV §6, p. 163 (`artin-tate line 117`). Section 5.7 names the principal ideal theorem without hypotheses or locator.

**Repair:** Use the prescribed Summary, Scope and ownership, Conventions, Exact supplier contracts, and numbered Layer headings. Resolve the generic-supplier instructions in Layer 0 into existing named declarations or concrete owned targets; do not leave an inventory or an instruction to port something somewhere. For each retained definition give its API and three discriminating Checks; put each theorem's hypotheses, exact source locator and needs beside it. Add per-layer Examples and Dependencies. Correct the Artin–Tate existence locator to XIV §6, p. 163, and give the Tate–Nakayama generalization an exact original locator or explicitly mark it uncertified. The source contents distinguish §§5 and 6 immediately; no mathematical theorem needs changing for that locator repair.

## R11 (P3) — Residue and fence rules still fail

**Location:** `TauCetiRoadmap/ClassFieldTheory/README.md:2455`, `2541`, `2587`.

**Claim:** The gate requires no HTML anchor residue and no non-Lean, non-table fence longer than 40 lines.

**Witness:** The dependency graph is a 51-line `text` fence; two references use `<a id=...>` anchors. The rerun reports `long-fences=1` and `residue=2`.

**Repair:** Replace the graph with concise prose or a table; use ordinary Markdown reference headings and update their internal links. The mathematics and the graph's dependency direction are unchanged. The gate's separate `tex: line 99` and `tex: line 302` diagnostics are false positives against its stated rule: both expressions are already inside fenced code blocks. They are reported here as diagnostics, not mathematical defects; inline code is a simple compatible presentation if needed to satisfy the scanner. No tooling was changed.

## Verified sound

The review covered the whole 2,594-line README and 4,554-line Lean file at the requested head, not only the diff. The working tree was clean before and after; the outside-folder diff was empty. No file in the pull request was changed. The shape comparison used the main-branch NumberFieldArithmetic, ProfiniteCohomology and OrthogonalL2Bases roadmaps. No computational algorithm, copied source passage or `set_option` was found in the target files.

**Build and signature evidence.** After building the missing native Global.Formation module, direct `lake env lean` elaboration succeeded with 260 sorry warnings and no other diagnostics. A scratch copy with 457 valid `#check @...` requests elaborated successfully. These retained the explicit local-field assumptions on `invMap`, `artinMap`, `localAbelianGaloisEquiv` and `localWeilArtinEquiv`, and the discrete/smooth/finite hypotheses on duality, finiteness and Euler characteristic. The coefficient exponent n is independent of the residue prime p in `h2MuEquivZMod_mixed` and duality; in particular n=4 over Q₂ is covered. No missing section binder was established. Malformed names produced by the worker's signature extractor were removed only from the scratch probe, not from the target.

The separate targeted `lake build TauCetiRoadmap.ClassFieldTheory.Suggested` succeeded, but emitted 62 non-sorry dependency warnings; hence it does not satisfy the gate's warning policy. The original supplied gate reported `build=41`; the static rerun reported:

```text
set_option=0 blob=0 latex=0 tex=2 sorry-data=55 residue=2 imports=1
long-fences=1 depcheck=0 stray-files=0 dirty=0 outside-folder=0 FAIL
```

The two tex diagnostics are addressed in R11. Every genuine failing category is addressed in R01, R03, R08 or R11. The gate is not passing.

**Supplier order.** The prescribed dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1489 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. All 15 layer prerequisite lines and the three explicit Needs lines were read. The semantic missing contract in R02 is not detected by this name-level check. Main was checked at `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`; completed suppliers were checked under `Completed/`, not mistaken for missing roadmaps. No declared plan gap was available to discharge R02.

**Pinned library and ownership evidence.** Mathlib pin: `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin: `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following are opened declarations, not matches inferred from their names. Tau Ceti paths below are relative to the pinned Tau Ceti repository.

| Object / declarations opened | File and line | What the pin actually supplies |
|---|---|---|
| `ClassFormation` | `TauCeti/NumberTheory/ClassFieldTheory/Formation/ClassFormation.lean:94` | H¹ vanishing, injective invariant, exact torsion image, restriction/inflation/conjugation axioms; corestriction is not an extra field. |
| Fundamental-class restriction, inflation, corestriction | Same file:213, 225, 267; `inv_cor`:256 | Restriction is unscaled; inflation and corestriction scale by their respective relative degrees. |
| `ClassFormation.artinMap`, kernel and surjectivity | `TauCeti/NumberTheory/ClassFieldTheory/Formation/ArtinMap.lean:169`, 210, 215 | The map obtained from inverse Tate cup product, with the actual norm kernel. |
| Tate naturality | `TauCeti/NumberTheory/ClassFieldTheory/Formation/Tate/Naturality.lean:145`, 152, 164 | Restriction, iterated restriction and corestriction. |
| `unitsRep`, `Br`, `unitsRepH2Equiv` | `TauCeti/NumberTheory/ClassFieldTheory/Brauer/Basic.lean:109`, 149, 156 | Discrete units coefficients, native continuous H², and comparison with separable-closure cohomology. |
| `invMap`, `invMap_brRes`, `invMap_brCor` | `TauCeti/NumberTheory/ClassFieldTheory/Brauer/Invariant.lean:193`, 277, 327 | Arithmetic normalization; restriction multiplies by degree; corestriction preserves the invariant. Native extension hypotheses must be carried through any adapter. |
| `tateDual` | `TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/Basic.lean:95` | Internal hom to μ_n, with conjugation action and discrete topology, not an arbitrary dual carrier. |
| Absolute `artinMap` | `TauCeti/NumberTheory/ClassFieldTheory/Local/ArtinMap.lean:109` | Native map to the topological abelianization of the algebraic-closure Galois group. |
| Normal basis | `Mathlib/FieldTheory/Galois/NormalBasis.lean:120`, 127 | Finite Galois extension, basis indexed by automorphisms; it is not an integral normal-basis theorem. |
| PID submodule basis | `Mathlib/LinearAlgebra/FreeModule/PID.lean:278`, 298 | Finite-rank result, with `[Finite ι]`; it does not settle the roadmap's arbitrary-rank extension. |
| Quadratic reciprocity | `Mathlib/NumberTheory/LegendreSymbol/QuadraticReciprocity.lean:107` | Distinct odd primes, arithmetic Legendre symbols and the parity factor. |

Cross-roadmap contracts resolved on main include:

| Supplier | Opened location and resolution |
|---|---|
| ProfiniteCohomology | `TauCetiRoadmap/ProfiniteCohomology/Suggested.lean:1608` long exact sequence; 2350 corestriction–restriction; 3066 ordinary ≤ strict dimension; 3123 closed-subgroup bound. The worker's four unresolved-name leads are not missing declarations. |
| ProfiniteProPGroups | `Completed/ProfiniteProPGroups/Suggested.lean:3668`, 3756: pro-p cohomological-dimension test and Sylow equality, with compactness and the closed pro-p Sylow subgroup. |
| LocalFieldsRamification | `Completed/LocalFieldsRamification/README.md:950–1015`: inverse Herbrand depths, filtered norm inclusion, unramified norms, prime-degree graded cases and eventual norm surjectivity. `Suggested.lean:595`, 652 supply local logarithm and mixed-characteristic power classes. Its absolute §4a.1 contract is the exception in R02. |
| GlobalNumberFields | `Completed/GlobalNumberFields/README.md:573–620`: general orders, invertible ideals, Picard groups and congruence quotients; it expressly leaves ring class fields to ClassFieldTheory. |
| NumberFieldArithmetic | Its main completed roadmap owns Frobenius and the ideal Artin map. The target's cyclotomic comparison is a consumer, not a second ideal Artin construction. |
| FunctionFieldArithmetic | `TauCetiRoadmap/FunctionFieldArithmetic/README.md:797`, 1077–1138 at its supplied open head: Artin–Schreier–Witt theory, full equal-characteristic existence, injectivity, and unit-filtration reciprocity. Its exact base-ClassFieldTheory contract is at lines274–281. |
| RepresentationTheory/ModularInduction | Its main roadmap supplies the modular induction/Grothendieck-group route used in the Euler-characteristic argument, rather than local class field theory itself. |

The eighth unresolved-name lead, `IsAdmissibleModulus.mem_support_of_ramified`, is declared in this target at `Suggested.lean:3811`. Thus the eight worker citation leads do not themselves establish eight defects.

Object searches used the roadmap service for class formations, Tate–Nakayama, local Weil groups, ring class fields and absolute upper ramification, plus the board package READMEs. Searches included the supplied open-head index; unrelated revisions were not promoted to suppliers. The readable main and open consumer material assigns local Weil groups and reciprocity here, general order carriers to GlobalNumberFields, cohomological local symbols here, and quadratic-form/quaternion comparisons to QuadraticFormInvariants. Board hits for HeegnerPointEulerSystems, GrossZagierAndArithmeticHeights, ColemanPowerSeriesPartII and ExceptionalThetaCorrespondencesForG2 consume these objects. FunctionFieldArithmetic §§3–4.2 is the existing owner of the equal-characteristic extension, and its §4.2 filtration comparison overlaps the new target (R05). No second owner for the general number-field class-field construction was established in those searches. The duplication findings concern actual pinned library objects, not similarly named consumer constructions. No new fully qualified name collision with a distinct readable roadmap was established.

**Headline inventory.** These are the README's fourteen numbered end-result families (lines90–153), plus its Layer0 prerequisites. “Present” below only describes the signature, not its truth or compliance with the no-admitted-data rule.

| README headline | Suggested.lean status at this head |
|---|---|
| Tate theorem and its class-formation specialization | Native aliases at379 and410; consume the native theorem. Generic Tor/Tate–Nakayama variant is prose-only and lacks a precise supplier target. |
| Finite Artin equivalence and map | Native aliases at468 and473. |
| Tower/conjugation/quotient functoriality | Statements at558–578; existing native APIs and padding need deferral. |
| Local Brauer invariant and cohomological Hilbert symbol | Invariant admitted at1128; symbol at1208 uses a free trace coordinate (R07). |
| Local Tate duality, finiteness and Euler characteristic | Statements1532,1619,1642,1654; the finite smooth discrete hypotheses survive elaboration. |
| Local formation, reciprocity, dimensions, absolute Artin map, cyclotomic normalization, filtration and conductors | Native finite formation/map; cd/scd1920/1934; admitted absolute map1947; filtration2220; conductor2233. Absolute upper comparison is prose-only and not identified as unavailable in the module docstring. |
| Norm limitation | Statement595, with maximal abelian layer, rather than uniqueness among all layers. |
| Local existence and correspondence | Mixed-characteristic2447/2578 and prime-to-residue2469/2645. FunctionFieldArithmetic owns the full equal-characteristic extension. |
| Local Weil group and topological reciprocity | Heavy carrier/topology admitted at2744/2779; equivalence admitted at2980. Must be classified against available carriers, not supplied as sorry data. |
| Archimedean maps and Brauer local–global sequence | Statements3069–3240; arithmetic maps/supports have admitted definitions. The surjectivity onto Q/Z follows by a single finite-place invariant, not by the mislabeled middle-exactness statement alone. |
| Global formation and reciprocity | Formation3485 and transported maps3556/3565 depend on admitted global invariant3429. |
| Global existence and correspondence | Statements4120–4230; native carrier availability needs the R03/R08 rewrite. |
| Hasse norm, Hilbert/narrow/ray/ring class fields, Kronecker–Weber, principal ideal and conductor–discriminant theorems | Hasse norm4252/4328 and Kronecker–Weber4486 are stated; class fields are built through admitted prerequisites. Principal ideal and conductor–discriminant theorems have no signature or not-statable classification. Ring fields have the unnecessary quadratic binder. |
| Hilbert and quadratic reciprocity | Product formula4547 depends on admitted finite local data/support; quadratic reciprocity already exists in Mathlib and must be deferred. |
| Additional deep Layer0 results | Arbitrary-rank PID freeness151; projective/Tate triviality167,175,202,217; primary-component vanishing189 are actual signatures rather than free-Prop substitutes. Their original source generality is partly uncertified. |

**Seeded source audit: 15 targets.** The entire seeded sample was considered. A source's contents page is not treated as its theorem text. Missing originals are listed under Not verifiable. No locator was silently certified from memory.

| Seeded target | Text/locator examined | Result |
|---|---|---|
| 2.1 Formations | Artin–Tate XIV §1 p.143 identified in contents, `artin-tate line 111`; native Formation contract | Native formulation checked; original definition text unavailable. README needs an at-claim locator. |
| 2.2 Class formations | XIV §3 p.150, contents line113; pinned ClassFormation fields | Seven stated fields agree with the native definition. Original axioms not source-certified. |
| 2.3 Fundamental classes | Milne III §1 pp.101–102, lines4593–4648; native fundamental-class laws | 1/n normalization and local model checked. General Artin–Tate text unavailable. |
| 2.4 Tate/Tate–Nakayama | Milne II Theorem3.11 p.84, lines3911–3921 | Finite group, all-subgroup H¹/H² hypotheses and all integer degrees verified. Nakayama's Tor generalization remains uncertified. |
| 2.5 Reciprocity direction | Milne III Theorem3.1 p.107, lines4822–4842 | Artin is the inverse of the low-degree cup map. |
| 2.6 Frobenius | Milne III Proposition1.9 pp.101–102, lines4589–4648; I Theorem1.1 p.20, lines1172–1187 | Arithmetic Frobenius and uniformizer direction verified. |
| 2.7 Other conventions | Native invariant/Artin definitions; Milne III Remark2.8 p.106, lines4811–4816; Kopp–Lagarias pp.3–5 | Restriction/corestriction and abelian norm limitation agree. Ring-class scope problem R06; original Weil source has no precise at-claim locator. |
| 5.1 Trivial layer | Native Artin construction and identity norm | Trivial map and correspondence direction computed below; no specific source locator supplied. |
| 5.2 Norm kernel/cyclic layer | Milne III Theorem3.1 and Remark2.8 | Norm quotient is G_ab; cyclic cardinality is degree. Character sign also checked against the defined map. |
| 5.3 Unramified | Milne III Proposition1.9 and I Theorem1.1 | General unramified theorem verified independently; cited Serre IV §4 text unavailable. |
| 5.4 Quadratic | Norm-kernel theorem; explicit residue calculations below | Exact quadratic extension and named nonzero pairing are necessary. No source number supplied for each global example. |
| 5.5 Cyclotomic | Arithmetic Frobenius normalization; calculations modulo5 and8 | Values and inverse-convention rejection verified; example-level locators missing. |
| 5.6 Towers | Milne III Theorem3.1/Lemma3.2 p.107; native tower laws | Statements and directions agree; the source omits the proof of Lemma3.2 (Source issues). Transfer is independently distinguished from quotient below. |
| 5.7 Worked examples | Milne VIII Theorem3.1 and Remark3.2 p.234, lines10629–10644; Kopp–Lagarias1.1–1.3 | The 25 counterexample is explicitly supported; cyclic hypothesis preserved. Principal ideal theorem still needs a precise target and locator. |
| 5.8 Mandatory suite | The seven listed tests matched to the preceding rows | Arithmetic values checked; forcing these Checks into Lean is R09. |

Additional sources read: Serre 1961 n°3.1 p.128, `serre-1961 lines 927–944`, supports upper-numbering quotients and the inverse-limit definition. The algebraically closed residue-field assumption starts only at n°3.2 (`line 951`), so the title does not invalidate the §3.1 citation. Milne ADT I Theorem2.8 p.31, `milne-adt lines 1222–1229`, supports the finite-module Euler formula. Cassels–Fröhlich, Tate §8 Theorem8.3 pp.178–179, `tate-global line 1062`, states the cyclic idele-class Herbrand quotient; the interleaved OCR was not used to certify every step of its proof.

**Computed adversarial table: 150 rows.** Values are mathematical calculations, not conclusions inferred from a sorry build. “Keep” means the listed test did not refute the statement; it is not a proof of an admitted theorem. Multiplicative identity is 1; additive identity is 0. C_m denotes a cyclic group of order m. The rows cover every seeded target, all headline families and all mathematical targets touched by findings. Degenerate adapter laws are included with their actual values, rather than being counted as extra headline results.

| Statement / convention | Instance tried | Values on the two sides | Result / change |
|---|---|---|---|
| 2.1 fixed levels | G=C₂ acting by sign on Z | A^G=0; A^{1}=Z | Nontrivial action distinguished from trivial action; keep. |
| 2.1 quotient/ground identification | Same sign module, V=1 | (A^V)^{G/V}=0=A^G | Keep. |
| 2.1 trivial formation layer | U=V | U/V=1; index=1; ground invariants=A^U | Keep; finite degree cannot be0. |
| 2.2 H¹ axiom | Sign Z module under C₂ | H¹=C₂≠0 | Correctly rejected as a class-formation layer. |
| 2.2 invariant injectivity/image | C₃ local layer | image={0,1/3,2/3}; zero-map image={0} | Zero invariant fails; keep. |
| 2.2 restriction | Degree4 layer, intermediate degree2 | 2·(1/4)=1/2 | Keep. |
| 2.2 inflation | Degree2 layer refined to degree4 | inv(inf u₂)=1/2=2·1/4 | Keep; an unscaled u₄ would give1/4. |
| 2.3 fundamental class | n=1,2,4 | 1/1=0 modZ; orders of1/2,1/4 are2,4 | Keep; no denominator-zero input. |
| 2.3 corestriction | C₄ over its C₂ subgroup | inv(cor u₂)=1/2=2·inv(u₄) | Keep; reverse index gives wrong value. |
| 2.3 conjugation | C₃, identity conjugation | 1/3 ↦1/3 | Keep. |
| 2.4 Tate degree−2 | Unramified cubic local layer | source C₃; norm quotient Z/3; generator↦[π]=1 | Keep. |
| 2.4 Tate degree0 | Same layer | Z/3 → H²=C₃; 1↦u with inv1/3 | Keep. |
| 2.4 all degrees at trivial group | G=1, any module | Tate groups0→0 | Keep; delete corresponding boundary padding. |
| 2.4 tensor generalization | M=Z² over cubic layer | (Z/3)²→(Z/3)²; e₁↦(u,0) | Compatible test; original Tor theorem uncertified. |
| 2.4 Tor hypothesis | M=Z/2, C=Z/2 | Tor₁^Z(M,C)=Z/2≠0 | This coefficient pair is excluded. |
| 2.5 inverse reciprocity | Unramified cubic, generatorσ | cup σ=[π]; Art[π]=σ; inverse convention givesσ² | Direction fixed; keep. |
| 2.5 character normalization | χ(σ)=1/3, Artπ=σ | χ(Artπ)=1/3; inverse gives2/3 | Keep. |
| 2.6 local arithmetic Frobenius | Q₂(ζ₅)/Q₂ | ζ₅↦ζ₅²; geometric givesζ₅³ | Distinguishes signs; keep in README. |
| 2.6 cyclotomic character | Q₂, u=−3, mod8 | u⁻¹=5; u=5 mod8 | Mod8 alone cannot distinguish inverse here; use mod16: inverse5 vs u13. |
| 2.6 norm for a larger base | Unramified quadratic F/Q₃, scalar u=2, mod9 | N(u)=4; N(u)⁻¹=7; u⁻¹=5 | Norm factor is essential; keep. |
| 2.7 abelian norm limitation | S₃ layer | G_ab=C₂; norm index2, not6 | Abelian uniqueness hypothesis essential. |
| 2.7 Q₈ control | Q₈ layer | G_ab=C₂×C₂; norm index4, not8 | Keep maximal-abelian-layer condition. |
| 2.7 field/subgroup order | Norms π^{4Z}U⊂π^{2Z}U | C₄ field contains C₂ field; fixed subgroups have same inclusion as norms | Both order statements agree. |
| 5.1 trivial Artin map | L=K | norm=id; quotient1; Artx=1 | Correct Check; delete Lean padding. |
| 5.1 top norm subgroup | Top Galois subgroup | fixed field K; N(Kˣ)=Kˣ | Correct endpoint. |
| 5.2 kernel, both directions | Unramified degree4, x=π^r | r=4: Art=1 and norm; r=1: Art=σ≠1 and not norm | Keep. |
| 5.2 cyclic generator | Degree4, r=1,2 | orders4,2 in both norm quotient and Galois group | Keep. |
| 5.3 unramified quotient | Degree n=1,2,4 | valuation quotients Z/1,Z/2,Z/4; π maps1 modulo n | Keep. |
| 5.3 units | Unramified extension, u∈O_Kˣ | v(u)=0; Artu=σ⁰=1 | Keep. |
| 5.3 excluded ramified-root formula | K=L=Q₂, m=2, ζ=−1 | actual Art2(−1)=−1; proposed ζ^q=1 | Prime-to-residue hypothesis needed and present. |
| 5.3 root order1 | ζ=1 | actual1=1^q | Keep as README boundary Check. |
| 5.4 local quadratic kernel | Q₂(√2), a=5 | norm? no; (5,2)₂=−1; Art5=nonidentity | Keep. |
| 5.4 local quadratic positive case | Same extension, a=−2=N(√2) | norm? yes; Art(−2)=1; symbol=1 | Both directions tested. |
| 5.4 exact extension condition | Q(√2,√3), chosen√2 | degree4; three nonidentity automorphisms, not oneτ | Excluded by degree2 and generation assumptions. |
| 5.4 zero pairing control | Q₂, a=5,d=2 | zero pairing gives0; arithmetic quadratic symbol gives1 in ZMod2 | Named pairing excludes wrong model. |
| 5.4 Q(i) | ℓ=3,5 | i³=−i (inert); i⁵=i (split) | Keep. |
| 5.4 Q(√5) | ℓ=2,11 | (5/2)=−1; (5/11)=1 | Nontrivial/trivial Artin values agree. |
| 5.5 Q(ζ₅) | ℓ=2,3,11 | exponents2,3,1; orders4,4,1 | Keep; opposite convention swaps2 and3. |
| 5.5 Q(ζ₈) | ℓ=3,5,7 | exponents3,5,7; each has order2 | Keep; these alone cannot detect inversion. |
| 5.5 conductors | Q(i),Q(√2),Q(√5) | conductors4,8,5 | Match their indicated cyclotomic containments. |
| 5.6 quadratic restriction | C₄=(Z/5)ˣ→C₂ | 2,3 map nonidentity;1,4 map identity | Keep. |
| 5.6 transfer vs quotient | C₄=<g>, H=<g²> | transfer(g)=g²; quotient(g)=gH | Same order2 but different targets; do not identify maps. |
| 5.6 noncyclic transfer | V₄→H=C₂ | transfer of each element=1; quotient outsideH≠1 | Distinguishes the diagrams. |
| 5.7 Hasse norm negative control | Q(√13,√17), x=25 | local norm at every place; global norm=false | Source explicitly supports counterexample; cyclic assumption retained. |
| 5.7 local computations for25 | p=5; p=13,17; real place | v₅(25)=2 divisible by local unramified degree≤2; at13,17,25=5²; real factors split | Local claim consistent. |
| 5.7 ordinary vs narrow | Q(√3), maximal order | class number1; narrow class number2; H_O=K | Infinite modulus matters; keep. |
| 5.7 principalization endpoint | K=Q | every ideal (a) already principal; H=Q | Endpoint consistent; general target needs locator/signature classification. |
| 5.7 reciprocity product | Q, a=b=−1 | inv∞=1, inv₂=1, others0; sum0 in Z/2 | Keep. |
| 5.8 inadmissible modulus | Q(i)/Q, modulus1 | ray class size1; Gal size2; no surjection | Correct rejection Check; delete Lean padding. |
| 5.8 finite vs infinite modulus | Q(i),4 vs4∞ | ray sizes1 vs2 | Full conductor includes∞. |
| PID freeness | 2Z⊂Z and0⊂Z | free ranks1 and0 | Keep arbitrary-rank target; pinned finite-rank theorem does not settle it. |
| Projective implies Tate trivial | Regular Z[C₂] | invariants=norm multiples of1+σ; Tate H⁰=0 | Keep. |
| Exact projective resolution | 0→Z[C₂] --3→ Z[C₂]→F₃[C₂]→0 | Tate groups of quotient0 | Keep; all subgroup quantifiers retained. |
| Nakayama–Rim converse control | Trivial Z under C₂ | Ĥ⁰=Z/2≠0; not projective overZ[C₂] | Excluded; keep. |
| Kernel projectivity | Augmentation onto regular module via identity | kernel0; projective=true | Boundary consistent; stronger theorem not settled by this test. |
| p-primary vanishing | G=C₂,A=Z[1/2],p=2 | multiplication2 bijective; Tate groups0 | Keep. |
| p-primary necessity | G=C₂,A=Z,p=2 | multiplication2 not onto; Ĥ⁰=C₂ | Hypothesis discriminates. |
| μ_n and action | Q, n=3 | conjugation sendsζ→ζ²; overQ(ζ₃), action fixesζ | Triviality needs chosen root in base. |
| μ_n coordinate | n=3,ζ primitive | ζ↦1;ζ²↦2;1↦0 | Keep. |
| Kummer map | Q₂, n=2 | class4=0; class5≠0; class(4·5)=class5 | Multiplicative-to-additive convention consistent. |
| Kummer junk branch | F₂((t)),n=2 | n=0 inF; defined class=0; t is not a square | IsUnit condition prevents false Kummer equivalence. |
| Kummer n=1 | Any field | power quotient1; H¹(μ₁)=0 | Keep as boundary computation only. |
| Kummer equal characteristic | F₃((t)),n=2 | class t≠0; norm/power quotient nontrivial | Invertible exponent allowed. |
| Unit Herbrand quotient | Unramified degree2 | unit Ĥ⁰,Ĥ⁻¹ both trivial; quotient1 | Keep. |
| Full multiplicative Herbrand quotient | Unramified degree2 | norm quotient size2; H¹ size1; quotient2 | Keep; do not confuse with units. |
| Local H² bound | Degrees1,2,4 | H² cardinal1,2,4 respectively | Correct; infinite cardinal0 cannot divide a positive degree. |
| Brauer restriction | invx=1/3,degree2 | inv(resx)=2/3 | Keep. |
| Brauer corestriction | invy=1/3,degree2 | inv(cory)=1/3 | Keep; res/cor are not inverses. |
| H²(μ_n) | Q₂,n=1,2,4 | orders1,2,4; invariant subgroups generated by0,1/2,1/4 | Signature covers composite n; keep. |
| Hilbert coefficient pairing | μ₃, exponents a=1,b=2 | a·b=2=b·a; ordinary root multiplication would have exponent0 | Correct bilinear pairing distinguished from multiplication. |
| Hilbert symbol normalization | Q₇,n=3, inv(c)=1/3 | arithmetic trace1; negated trace2 | R07. |
| Steinberg | Q₂,a=−1,1−a=2 | (−1,2)₂=1; additive symbol0 | Keep. |
| Antisymmetry | Cubic coordinate pair with value1 | reversed value−1=2 mod3 | Keep; n=2 hides sign. |
| Symbol radical | Q₂,n=2,b=4 vs5 | b=4 pairs0 with all; b=5 pairs nonzero with2 | Nondegeneracy distinguishes square classes. |
| Tate dual action | Q₂, A=F₃ trivial | μ₃ has unramified−1 action; dual invariants0 | Dual is not a trivial-action Hom by default. |
| Dual evaluation | F₃ module,x=2,φ=id | φ(x)=2; atx=0 value0 | Keep. |
| Dual precomposition | f:x↦2x overF₃,φ=id,x=1 | (φ∘f)(1)=2=φ(f(1)) | Contravariance checked. |
| Dual exactness | 0→C₂→C₄→C₂→0,n=4 | dual group sizes2,4,2; injection/restriction reverse arrows | Keep invertible exponent hypothesis. |
| μ_n self-dual adapter | μ₃ with chosenζ | generator maps character takingζ↦ζ; image size3 | Nonzero pairing distinguishes zero adapter. |
| Local finiteness | Q₂,A=F₂ trivial | H⁰,H¹,H² orders2,8,2 | Finite and smooth assumptions retained. |
| Local Tate duality | Q₂,A=F₂ | degree(0,2) groupsC₂,C₂; (1,1) orders8,8 | Sizes consistent; named nonzero pairing required. |
| Euler characteristic cardinality | Q₂,A=F₂ | 8=2·2·2 | Keep. |
| Euler characteristic rank | Same | 3=1+1+1 | Keep. |
| Euler characteristic p=3 | Q₃,A=F₃ trivial | H orders3,9,1;9=3·1·3 | No assumption μ₃⊂Q₃ sneaks in. |
| Euler characteristic off residue prime | Q₂,A=F₃ trivial | orders3,3,1;3=3·1·2⁰ | Keep. |
| Zero coefficient module | Any localF | all H orders1; Euler1=1·1·1 | Rank form0=0+0+0. |
| Local H³ units | Finite cyclic layer | H³(Lˣ)=H¹(Lˣ)=0 | Fits colimit route. |
| Local cd/scd | Q₂,ℓ=2 or3 | cd=2,scd=2; F₂((t)) has cd₂=1 | Mixed-characteristic binder is necessary here. |
| Absolute Artin restriction | Q₂, x=2, unramified degree4 | finite componentσ; absolute coordinate1 mod4 | Keep; use native map R04. |
| Absolute norm functoriality | Unramified quadratic L/K,π_K=π_L | Nπ=π²; imageFrob_L=Frob_K² | Both sides exponent2. |
| Absolute unramified coordinate | x=π^r u,r=−1,0,1 | coordinates−1,0,1 | Geometric map gives1,0,−1. |
| Inertia criterion | Local unitu vsπ | unramified coordinates0 vs1 | Unit lifts lie in inertia; uniformizer lifts do not. |
| Conductor definition | Trivial/unramified extension | U⁰⊂norms; least depth0 | Keep. |
| Tame conductor | Q₅(ζ₅)/Q₅ | G⁰=C₄,G¹=1; conductor1 | Lower/upper endpoints agree. |
| Dyadic conductor | Q₂(√2)/Q₂ | G²=C₂,G³=1; conductor3; U² contains5, a nonnorm | Correctly uses upper depth. |
| Dyadic numbering control | Q₂(ζ₈)/Q₂ | lower G₃ has order2; upper G³=1 | Lower numbering substitution would be false. |
| Equal-characteristic conductor | F₂((t)),y²−y=t⁻¹ | upper G¹=C₂,G²=1; conductor2 | Full correspondence owned by FunctionFieldArithmetic §4.2; R05. |
| Filtered norm beyond last break | Q₂(√2),r=3 | ψ(3)=4; N(U_L⁴)=U_K³ | Keep. |
| Norm/unit generation before break | Same,r=2 | norms include−1; U² gives1,5 mod8; generated units give1,3,5,7 | EqualsU⁰; keep. |
| Unit-filtration reciprocity | Unramified degree4, n=0,1 | Art(U^n)=1=G^n | Keep. |
| Unit-filtration reciprocity wild | Q₂(√2),n=2,3 | imagesC₂,1 equalG²,G³ | Keep. |
| Absolute filtration comparison | Unramified finite quotientC₄ | depth−1 imageC₄; depth0 image1 | Needs the missing supplier of R02. |
| Character conductor | Trivial character vs quadratic character ofQ₂(√2) | conductors0 and3 | NSS ofCˣ matters; identityKˣ→Kˣ has no such depth. |
| Local cyclotomic uniformizer | p=2, μ_{2^a} | χ_cyc(Art2)=1 | Separate from unramified μ₅ action exponent2. |
| Local cyclotomic units | p=2,u=−1;u=−3 mod16 | inverse exponents15 and5 | Both agree with arithmetic convention. |
| Real cyclotomic symbol | x=2 and−2 | exponents1 and−1 | Sign character; no zero unit input. |
| Product of rational cyclotomic symbols | m=5,a=2 | at2 exponent2; at5 inverse exponent3; product1 mod5 | Correct global normalization. |
| Local norm correspondence | Unramified degree4 vs2 | norm indices4,2 equal degrees; containment reverses fields | Keep. |
| Local existence excluded part | AS degree2 overF₂((t)) | norm index2; gcd(2,2)=2≠1 | Use FunctionFieldArithmetic §4.2; R05. |
| Absolute Artin injectivity | Q_p, x=π or nontrivial unit | π has coordinate1; units detected in finite ramified quotients | Kernel intersection removes both; no argument from density alone. |
| Weil carrier vs absolute group | Unramified quotient | W/I=Z, G/I=Z-hat; integers dense and proper | Keep intended carrier; no admitted replacement. |
| Weil topology | Quotient by inertia | Z discrete infinite; singleton0 open; inZ-hat singleton0 not open | Distinguishes topology; W not compact. |
| Weil degree | Arithmetic Frobenius and inertia | degrees1 and0 | Kernel=inertia. |
| Weil finite-extension map | Unramified quadratic extension | degree_L1→degree_K2; subgroup index2 | Map is inclusion-like, despite name weilTransfer. |
| Weil ramified extension | Totally ramified quadratic | degree1→1; subgroup index2 | Residue degree, not full degree, scales Weil degree. |
| Weil reciprocity | Q_p, π^r u | quotient coordinate r; unit component in inertia | Compatible with Kˣ→W_ab; topology essential. |
| Archimedean Brauer invariants | R andC | BrR={0,1/2}; BrC=0 | Real image2-torsion; complex0. |
| Archimedean Artin | R, x=−1 and1; C anyx | conjugation andidentity; complexidentity | Norms Cˣ→Rˣ arepositive. |
| Global Brauer injectivity endpoint | Zero local family | only global class0 | Keep; full injectivity is a headline. |
| Global sum of invariants | Quaternion(−1,−1) overQ | at2,∞ each1/2; sum1=0 modZ | Keep. |
| Global existence of Brauer class | Finite family1/3 atv,2/3 atw | sum1=0; allowable class has order3 | Real1/3 would violate2-torsion condition. |
| Cyclic global Herbrand quotient | Q(i)/Q | h(I_S)=4,h(E_S)=2,h(C)=2 | Equals extension degree2. |
| Global H¹ vanishing | Trivial global layer | H¹=0; norm quotient1 | Boundary consistent. |
| Fixed-layer H² lift obstruction | Q(√13,√17)/Q | local-degree contributions exponent2; H²(C_L) order4 | No fixed-layer surjectivity; refinement is necessary. |
| Noncyclic lift positive control | Q(√2,√3)/Q | local degree at2 is4; generated invariant subgroup has order4 | Noncyclicity alone does not force failure. |
| Refinement invariance | Lift carrying invariant1/4 | inflation preserves1/4; two lifts differing by global class have difference sum0 | Consistent descended value. |
| Global formation invariant | Degree2 layer | image{0,1/2}, fundamental value1/2 | Norm index2. |
| Global principal Artin | Principal idele of−1 inQ(i) | real anddyadic contributions both conjugation; productidentity | Principal class mapsidentity. |
| Global ideal/local comparison | Q(ζ₅), prime2 | prime idele and ideal Artin both exponent2 | Keep. |
| Admissibility monotonicity | Q(i),4∞ divides8∞ | both contain norm ray subgroup | Upward modulus direction correct. |
| Abelian conductor | Q(i) | finite conductor4 and real place∞ | Modulus1 rejected. |
| Global norm limitation | S₃ extension | norm index2, maximal abelian degree2 | Does not assert index6. |
| S-unit definition | K=Q,S={2} | ±2^a areS-units;3 isnot | Norms use nonzero units, no0 input. |
| S-unit Kummer layer | Q,p=2,S={2} | generated rootsi,√2; degree4=2^(1+1) | Keep. |
| S-unit Kummer n=1 | Q,S empty,n=1 | generated fieldQ; degree1 | NeZero excludes invalid n=0 construction. |
| Kummer norm subgroup index | Q,p=2,S={2} | index4 equals degreeQ(i,√2)/Q | Hypotheses on primes and class generators hold. |
| Global class-field correspondence | WholeC_K | fieldK; index1=degree1 | Keep endpoint in README. |
| Norm intersections/composita | Q(i),Q(√2) | composite degree4; intersection fieldQ | Norm intersection corresponds composite; generated norms correspond intersection. |
| Cyclic Hasse norm | Q(i)/Q,x=−1 vs1 | −1 fails atR andglobally;1 islocal/global norm | Both directions consistent. |
| Everywhere local norm carrier | Complex completion | each norm map surjective; local conditiontrue | Correct place restriction. |
| Hilbert/ray class fields | Q, modulus1 vs4∞ | degrees1 vs2; fieldsQ vsQ(i) | Class-group/ray distinction maintained. |
| Ring class maximum | Q(√3),O_K | Pic order1; class fielddegree1; narrowdegree2 | Keep wide Picard group. |
| Ring class generality | Q(ζ₇+ζ₇⁻¹),O_K | degreeK=3; Pic1; Gal(H_O/K)=1 | Correct general theorem excluded by hquad: R06. |
| Ring Artin marking | Any Pic=C₃ example, generatorc | canonicalc↦σ; postcompositioninverse givesσ² | Same kernel cannot characterize marking; explicit definition needed. |
| Kronecker–Weber | Q,Q(i),Q(√5) | cyclotomic exponents1,4,5 suffice | Statable headline is present. |
| Conductor–discriminant examples | Q(i),Q(√5) | finite discriminant ideals(4),(5); nontrivial character conductors(4),(5) | README promise lacks a Lean/docstring classification: R03. |
| Finite Hilbert support | (−1,−1) overQ | finite support{2}; adjoining3 adds summand0 | Superset support does not change sum. |
| Hilbert product square control | a=1, anyb | all local invariants0; sum0 | Keep. |
| Quadratic reciprocity | p=3,q=7 | (7/3)=1,(3/7)=−1; product−1=(-1)^3 | Already Mathlib; defer R04. |
| Quadratic reciprocity second sign | p=3,q=5 | (5/3)=−1,(3/5)=−1; product1=(-1)^2 | Already Mathlib; keep as Check. |

Zero rings, residue-field cardinality 1, inseparable finite Galois extensions and empty number-field place universes do not satisfy the stated field/local-field/Galois hypotheses. The zero module and exponent-one cases were tested explicitly above. No computation used natural subtraction at conductor 0 in the predecessor theorem: that theorem assumes a positive conductor. No arbitrary equivalence was mistaken for a marked Artin map; the remaining trace-coordinate problem is R07.

## Not verifiable

The verdict does not depend on obtaining these texts. Retrieval used the prescribed legal-source service; no paywall was bypassed, no source was copied into the repository, and no manifest was edited.

- **Artin–Tate, Class Field Theory:** AMS landing page and legal open endmatter were found. The contents certify section/page locations, including XIV §6 p.163, but not Chapter XIV's theorem hypotheses or proofs. The original definitions in sampled §§2.1–2.3 and the general abstract existence axioms are not certified from the book text.
- **Tate 1952** (DOI 10.2307/1969801) and **Nakayama 1957** (DOI 10.2307/1969962): JSTOR landing pages, no legal full text located. Milne independently verifies the finite-group Tate theorem. It does not certify the exact Tor-vanishing generalization attributed to Nakayama. The legally obtained Tate 1966 tori paper uses torsion-free coefficients and is not silently substituted for that theorem.
- **Serre, Local Fields:** service classified the Springer source as uncertified. In particular IV §4, V §§3/6, XV §2 Theorem2 and Corollary3 to Theorem1 were not read. The finite filtered-norm and reciprocity formulas were tested mathematically, but their precise cited numbering is not certified. Serre1961 is readable and separately verified as above.
- **Serre, Galois Cohomology; A Course in Arithmetic; Neukirch, Algebraic Number Theory; Brown, Cohomology of Groups:** Springer sources remained uncertified. Their specific chapter claims are not certified merely from bibliographic locators.
- **NSW, Cohomology of Number Fields:** the authors' Heidelberg page advertises version2.3, but PDF requests redirected to the landing page or timed out. The downloaded HTML is not the book. Numbering/hypotheses of (3.3.4), (3.3.6), (7.1.8), (7.2.5), (7.2.6), (7.3.1)–(7.3.4) remain unverified against the original.
- **Rim 1959:** JSTOR landing page only (DOI 10.2307/1970033). In particular the arbitrary-rank generality of the Nakayama–Rim proof route has not been certified from that text.
- **Cox:** Wiley DOI 10.1002/9781118400722 returned403. Proposition7.22 and Theorem9.18 were not read. Kopp–Lagariasv3 was read instead for the general order-class-field statements; this does not certify Cox's locator.
- **Tate, Corvallis, Number theoretic background:** AMS DOI 10.1090/pspum/033.2/546607 reached authentication. Weil1951 was legally retrieved from the journal, but the roadmap gives no theorem/page pinpoint for the full modern topological local-Weil API; that entire API is not source-certified by a title citation.
- **Lang, Algebra, III Theorem7.1:** service search found no legal text. The PID statement's finite-rank library special case was checked, not treated as a proof of arbitrary rank.
- **Portability claims about kbuzzard/ClassFieldTheory and the Hill/Xie/FLT versions:** no exact commits or declaration-level source contracts are supplied. Their purported usable extent cannot be certified from the roadmap's repository names alone.

## Source issues

- **Misprint** in milne-cft at III §1, construction preceding Proposition1.9, printed p.101: the source says the lifted character is defined for 0≤i<n−1; it should be defined for 0≤i<n, including the last residue representative; affects the proof.

This was checked in the rendered author PDF as well as `milne-cft line 4619`. For n=2 the printed range supplies only i=0 and omits σ; including i=1 gives the required lift value1/2 and boundary cocycle value1 at (σ,σ). The theorem and the roadmap's arithmetic convention are unchanged.

- **Misprint** in milne-cft at III Theorem3.1, naturality discussion, printed p.107: the source says the cup-product input has coefficients Lˣ for restriction and Eˣ for inflation; it should be the integer-coefficient input of the stated Tate isomorphism; affects the proof.
- **Gap** in milne-cft at III Lemma3.2, printed p.107: the source states the norm/inclusion and inclusion/transfer squares but leaves their proof unwritten; it should justify the low-degree restriction/corestriction identifications and their compatibility with cup product; affects the proof.

The second page was also checked in the rendered author PDF; the corresponding extracted statements are `milne-cft lines 4830–4835` and `line 4862`. These are source issues, not counterexamples to the roadmap's tower formulas, which also have native-library witnesses.
