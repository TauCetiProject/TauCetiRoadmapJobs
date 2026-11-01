# Review of CompactGroups (pull request #1047 at 12dc7ca)
Folder: `TauCetiRoadmap/RepresentationTheory/CompactGroups/`
**Verdict:** needs changes

:robot: Independent AI review. Seven findings: one P1, three P2 and three P3. The supplied gate passes; the four substantive findings below prevent acceptance. The PR was not edited. This is a full review of the six assigned files, including unchanged companion files, rather than an incremental review.

## R01 (P1) — The SU(2) kernel proof cites an absent supplier result

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:762` (also 741–745 and 777): “simplicity of su(2) from LieHighestWeight Layer 0.”

**Claim:** The proposed differential-kernel proof consumes real compact Lie-algebra simplicity from a section that does not supply it. There is no declared supplier gap for this input.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:319` develops algebraic sl₂ weight strings, classification, complete reducibility and Clebsch–Gordan. It does not construct the real su(2) comparison or prove its simplicity.

**Exact repair:** Explicitly own the real su(2) identification and simplicity theorem before using them, or use the pinned torus proof for the group kernel and remove this supplier claim. The latter uses `TauCeti.SU2.exists_isConj_torusHom` in `TauCeti/RepresentationTheory/SU2/TorusConjugacy.lean:153` and `TauCeti.SU2.symPower_torusHom_weightBasis` in `TauCeti/RepresentationTheory/SU2/Weight.lean:134`. Consecutive weights differ by 2, so for d≥1 a kernel torus element satisfies z²=1; odd d then forces z=1, while positive even d admits both signs. Keep the differential/embedding comparison as an explicit target with its own inputs if retained.

**Repair test:** d=0 gives the whole group; d=1 gives {I}; d=2 gives {±I}. Thus this repair preserves exactly the kernel and faithfulness statements, including their exceptional trivial representation.

## R02 (P2) — Put the new programme in CompactGroups Part II

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:3–7`: “The comparison targets concern invariant metrics, G-finite vectors in Banach representations, metrizability, duals of arbitrary products”.

**Claim:** The extension-placement defect from previous R05 remains. The existing roadmap has been replaced by a substantially different programme in the same folder. Recognizing implemented base results as inputs repairs duplication but does not turn the base roadmap into its own Part II.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:163–180` specifies Haar through Peter–Weyl and the SU(2) engine. This head instead adds Banach density, arbitrary-product duality, global representation rings and embedding classification as Layers 2–7.

**Exact repair:** Preserve corrections and native supplier references in the existing roadmap. Move the added programme into CompactGroups Part II, explain where the base ends, and import the base's named sections and pinned results. Do not move the base's still-owned finite-dimensional and continuous-kernel comparisons out of its specification without an explicit ownership transfer. Update the family index consistently.

**Repair test:** The extension still contains Circle^J for arbitrary J, the U(2) parity obstruction and the SU(2) embedding counts 0,0,1,1,3 for n=0,…,4. No narrowing or loss of these results is needed. This is repairable placement, so the verdict is needs changes rather than rejection.

## R03 (P2) — State the missing metric and U(2) acceptance theorems

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/Suggested.lean:8–19`; README:219–242 and 663–689. The docstring lists “Banach G-finite density, compact-group countability, duals of arbitrary products” but omits the scalar metric and U(2) recognition headlines.

**Claim:** Two statable headline results remain outside the acceptance module. The missing full isotypic metric construction and global Grothendieck ring do not prevent stating irreducible positive-scalar classification or the U(2) weight-recognition iff.

**Witness:** `InvariantMetricTargets.lean:30` already states the positive-self-intertwiner classification on native carriers. A scratch U(2) recognition signature using only `import Mathlib` also elaborated, with its sole warning being `sorry`.

**Exact repair:** Move the retained positive-scalar classification into the extension's `Suggested.lean`. State U(2) recognition using finitely supported natural multiplicities on ℤ×ℤ and the existence of a continuous representation of `Matrix.unitaryGroup (Fin 2) ℂ` on some `EuclideanSpace ℂ (Fin n)`. Its trace on every diagonal unitary matrix must equal the finite sum of the prescribed integer monomials. Equate this with symmetry and the outward inequality. This expresses actual torus weights without a new representation-ring carrier. Keep the genuinely heavy global ring, isotypic decomposition and Hilbert–Schmidt constructions explicitly listed as unstated.

**Repair test:** The elaborated U(2) signature includes all integer weights and dimension zero. Weights (2,0),(1,1),(0,2) of multiplicities 1,2,1 give differences 1,1 and dimension 4. The singleton weight (−1,−1) realizes det⁻¹. Weights (1,−1),(−1,1) alone fail 0≥1 at (0,0). For metrics, T=2I gives the unique scalar 2; diag(1,2) on trivial ℂ² fails irreducibility rather than contradicting the conclusion.

## R04 (P2) — Consume the existing strongly continuous integrated action

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:284–290`: “Construct the integrated action T_f v=∫f(g)π(g)v dμ_G … prove ‖T_f‖≤C_π‖f‖₁”.

**Claim:** This construction, bound and translation covariance are already supplied at the Tau Ceti pin, including the strong-continuity generality needed here. The supplier table omits them and the layer requests them again.

**Witness:** `TauCeti/RepresentationTheory/Continuous/Integrated/Basic.lean:147,192,203,403` defines `ContRepresentation.integratedOperatorL1` and proves its norm bound, left-translation covariance and approximate-identity convergence. Its group assumption is `AddGroup`, not `AddCommGroup`.

**Exact repair:** Cite `ContRepresentation.integratedOperatorL1`, `norm_integratedOperatorL1_le`, `comp_integratedOperatorL1` and `tendsto_integratedOperatorL1_apply` in the native contracts. Use the additive type tag for an arbitrary multiplicative group and map continuous weights into L¹. Retain the genuinely new compact uniform bound, representative-function finite-orbit witnesses, naturality not already provided, compact-vector-set refinement and G-finite density. State only any missing comparison between the two weight carriers, rather than rebuilding the operator. The existing convolution-composition theorem has stronger assumptions; it is not needed for this repair.

**Repair test:** The native covariance reads f(−h+g), which becomes f(h⁻¹g). For the trivial action, weights of mass 1 and 2 give v and 2v. For rotations on C(S¹), strong continuity suffices despite ‖Rθ−I‖=2 for θ≠0. The native integrated-action section assumes neither separability of E nor second countability of G.

## R05 (P3) — Remove stale companion copies and their forbidden options

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/AbelianFourierTargets.lean:1–10`, `CountabilityTargets.lean:1–9`, `InvariantMetricTargets.lean:1–9`: “set_option autoImplicit false”.

**Claim:** Previous R09 was repaired only in the main module. Three companions still contain forbidden options and omit `import Mathlib`; two import Mathlib submodules. All four companions retain obsolete module descriptions. Nine companion admissions duplicate the countability, product-dual and abelian Fourier admissions now in `Suggested.lean`.

**Witness:** The three options occur at lines 10, 9 and 9 respectively. `ProductDualTargets.lean:25,40,53` repeats the three product headlines in `Suggested.lean:94,109,122`. The supplied gate nevertheless reports zero option/import failures.

**Exact repair:** Delete the three redundant countability/product/Fourier companions. Move the retained metric headline as in R03, and remove that obsolete companion too; keep any non-headline Gram comparison in the README. If a companion is retained for a justified distinct headline, apply the required single Mathlib import, namespace, module-docstring and no-option rules to it. Do not add aliases to preserve duplicate catalogues.

**Repair test:** A combined scratch copy with all three options removed elaborated under the defaults. The product evaluation remains −i for exponents (1,−1) at (i,−1), and the Fourier basis equation retains i rather than −i. Removing the duplicate files changes none of those acceptance statements.

## R06 (P3) — Finish the claim-level source locators and source inventory

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:165,167–172,269–307`: “Knapp, §IV.2, for finite-dimensional representations.”

**Claim:** The scalar Schur and compact global-form locators have been repaired, but the finite-dimensional categorical comparison has only a broad section citation, the continuous-kernel/Hilbert–Schmidt comparison has no locator, and the Banach-density development has no source locator. The full multiplicity-space metric classification also lacks its own locator. No `sources.toml` is present.

**Witness:** README:167–172 and 269–307 contain no theorem/page citation. Knapp's Corollary 4.9 at printed p.240 supports scalar Schur, not the whole collection of categorical, kernel and Banach comparison assertions.

**Exact repair:** Attach exact theorem/section and printed-page locators to each retained result, explicitly marking deductions and their named inputs. For consumed integration results, cite the exact pinned declarations in R04. Record each cited work once in `sources.toml`, preserving the retrieved edition and uncertified statuses; replace or precisely identify broad bibliography-only support. Update the downstream label “SmoothBanachRepresentations SB4” to its actual §4.1 and distinguish its real extension from AutomorphicFormsOnReductiveGroups §2.7's complex smooth result.

**Repair test:** A kernel locator must cover compact Hausdorff X, finite regular Borel μ and μ=0, not merely a separable Lebesgue space. A Banach locator must cover rotations on C(S¹) without operator-norm continuity. A metric locator must allow multiplicity two, where the commutant is M₂(ℂ), not just scalars. Source access limitations are listed below and do not imply these claims are false.

## R07 (P3) — Give the distinct constructions their own dependencies and Checks

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:560–646,702–710`: “*Needs:* Native compact characters, complete reducibility and SU(2) classification; LieGroups Layers 2 and 4–6; LieHighestWeight Layers 0–6”.

**Claim:** The headings and layer endings are repaired, but a single §6.1 bundles the continuous Grothendieck ring, torus weights, real complexification, Weyl action, finite cover, descent, ring restriction and U(2) recognition behind one aggregate Needs line and one test block. Several definitions lack their own API/three discriminating Checks. The finite-dimensional categorical comparison likewise has only the zero/trivial irreducibility test, not three tests of the comparison.

**Witness:** The conjugate-linear weight-space map at README:586–590 and left Weyl action at 591–593 have no attached three-test lists. The existing two-element orbit test cannot detect reversal of a noncommuting Weyl action.

**Exact repair:** Separate these constructions into named subsections with the precise inputs of each statement and proof route, an API list and at least three discriminating Checks per definition. Add explicit scalar, involution and opposite-weight tests for complexification; test the Weyl action on two noncommuting simple reflections, as well as identity and a wall weight. Keep all such tests in prose, not admitted Lean declarations.

**Repair test:** For a real rotation plane, complex weights +1 and −1 are exchanged, conjugation sends i·v to −i·conj(v), and its square is identity. For SU(3), with s₁=(12), s₂=(23), s₁s₂ sends the first coordinate weight to the second, while the reversed order sends it to the third. These discriminate the stated conventions; an SU(2)-only order-two example does not.

## Verified sound

These are finite checks and interface audits, not proofs of the admitted theorems. No false mathematical identity was found among the retained headline signatures. The defects concern ownership, missing acceptance coverage and specification requirements.

**Previous findings, checked first.** No repair report marking a finding “not actionable in this package” was supplied or found among this package's reports. Consequently no settled finding is reopened.

| Previous finding | This head's passage/evidence | Disposition |
| --- | --- | --- |
| R01 Banach ownership | README:21: “This roadmap owns field-general orbit finiteness and compact strongly continuous Banach density.” §2.1 now constructs it. | Repaired. |
| R02 missing LieGroups 5A/7F supplier | README:595: “Build the following compact structural prerequisites before descent”; 599–612 explicitly own the three missing targets. | Repaired as to the ineligible supplier; new R01 concerns a different input. |
| R03 ineligible BanachSpaceTheory revision | README:347: “build the Hilbert-basis countability bridge here”; 352 cites the pinned countable-support theorem. | Repaired. |
| R04 zero irreducible | README:51: “An irreducible representation has V≠0”; 58–62 explicitly reject V=0. | Repaired. |
| R05 extension placement | README:3–7 still replaces the base scope with the extension; no Part II folder. | Not repaired; R02. |
| R06 duplicate base constructions | README:12: “Their implemented statements are inputs, not construction targets”; native contracts now replace the old catalogue. | Largely repaired; the newly audited integrated-action duplication remains R04. |
| R07 missing headlines | Suggested:56–165 now includes all nine countability/product/Fourier headlines; 175–195 adds SU(2) statements. | Partly repaired; metrics and U(2) remain missing, R03. |
| R08 old padding | The four formerly trivially discharged admissions and the Haar/coefficient wrappers are absent. | Repaired for the identified declarations. |
| R09 options/imports | Main Suggested:1 is `import Mathlib`, with no option; companions still have the three quoted options. | Partly repaired; R05. |
| R10 HTML anchors | No explicit HTML anchors remain; the gate reports residue=0. | Repaired. |
| R11 missing identifiers | README:91 qualifies `TauCeti.haarProb_def`; the undeclared character-orthogonality label is gone. | Repaired; identifier gate passes. |
| R12 non-sorry warnings | Direct main elaboration emits 12 sorry warnings and no other warnings. | Repaired. |
| R13 algorithm deliverables | README:755 says “Prove finiteness and the cardinal identity”; 683–689 gives mathematical multiplicities and dimension. | Repaired; neither extraction nor terminating enumeration is requested. |
| R14 source locators | README:602–612,625,635 now give Knapp theorem/page locators; 372–375 accurately limits Etingof. | Partly repaired; R06. |
| R15 roadmap shape | Summary, scope, conventions, supplier contracts, eight layer subsections, eight Checks blocks and all Examples/Dependencies endings are present. | Partly repaired; per-construction requirements remain R07. |

**Gate, scope and Lean evidence.** HEAD was exactly `12dc7cab7fc5d7d09dc7300b232f365958778223`. The prescribed outside-folder diff was empty and the worktree remained clean. The family index was read. Main CompactGroups, CharacterTheory and completed roadmap material were consulted for ownership and shape, including Completed/OrthogonalL2Bases Part B and Completed/EffectiveBounds.

The supplied worker gate says all checks pass: set_option=0, imports=0, mathlib-subimports=0, no-import-mathlib=0, sorry-data=0, readme-ids-missing=0, depcheck=0, stray-files=0, outside-folder=0 and build=0, with the remaining scanners also zero. Its clean result does not override direct inspection of the four companion files in R05.

The prescribed dependency command was run without changing the order. Its complete output was:

```text
depcheck: 204 roadmaps, 1489 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurred. All eight Needs lines and the prose supplier/ownership citations were read. No declared gap is present. Implemented compact analytic inputs precede the new comparisons; the late highest-weight Haar applications are explicitly excluded from the global-form route. A missing section-level input can still escape this graph check, as R01 demonstrates.

The missing native objects were built with only the two allowed named commands, for `TauCeti.RepresentationTheory.Compact.PeterWeyl` (3379 jobs) and `TauCeti.RepresentationTheory.SU2.Exhaustion` (3580 jobs). Direct `lake env lean` on the absolute Suggested file then exited 0. A single combined scratch elaboration checked `#check @…` for all **28 named declarations** across the five Lean files: **23 theorems, three definitions and two named local instances**. The two anonymous companion Borel instances were included and elaborated as well. This checked the actual admitted signatures, not guessed section binders. Compactness, Hausdorffness, completeness and continuity survive where needed; `compactCharacter` correctly retains only its weaker native carrier assumptions. No repair to a dropped binder is required.

The defaults-only one-tactic probe tried `simp`, `rfl` and `infer_instance` on each of the **23 admissions**; all 23 still needed their fallback admission. Searches for native equivalents found no single exact-lemma discharge of a retained headline; the native integration duplication is in the README, not a main Lean admission. The nine companion copies are redundant with the main module, rather than newly discovered one-tactic library padding. A separate U(2) recognition signature, on the native unitary group and trace character, also elaborated with only a sorry warning.

**Headline inventory.** The README promises: (1) finite-dimensional categorical and continuous-kernel comparisons; (2) invariant metric scalar and multiplicity-space classification; (3) Banach G-finite density; (4) four-way countability/metrizability and uncountable-product obstruction; (5) finite-coordinate/product duality and arbitrary-circle-product character classification; (6) abelian irreducible/character comparison, uniform density and the exact Fourier Hilbert basis; (7) global highest-weight descent and `R(K)≃ℤ[X*(T)]^W`, including genuine U(2) weight recognition; (8) SU(2) unitary multiplicities, realization, faithfulness and the partition count. Main Suggested states 12 theorems covering (3)–(6) and the multiplicity/faithfulness/realization part of (8). The partition count is a combinatorial consequence of that classification. The docstring names the missing global ring, full isotypic metric construction and Hilbert–Schmidt carrier; R03 records the native statements that remain absent despite those explanations. No replacement free predicate or sorry-valued data is used.

**Pinned declarations opened.** Mathlib pin: `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin: `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Forty-four selected declaration excerpts were read, with additional surrounding hypotheses for the analytic and representation interfaces. The following inventory gives the operative declarations and exact file positions; same short names in unrelated namespaces were not treated as matches.

| Object | Pinned declaration/file and line | Contract checked |
| --- | --- | --- |
| Continuous representation and intertwiner | `Mathlib/RepresentationTheory/Continuous/Basic.lean:54,72,80` | `ContRepresentation`, `toRepresentation`, `ContIntertwiningMap`; operators are continuous, but no group topology/parameter continuity is bundled. |
| Irreducibility | `Mathlib/RepresentationTheory/Irreducible.lean:29` | `Representation.IsIrreducible` uses `IsSimpleOrder`, excluding zero. |
| Hilbert basis | `Mathlib/Analysis/InnerProductSpace/l2Space.lean:376` | `HilbertBasis.repr` is a linear isometric equivalence with ℓ²; no countability hypothesis. |
| Continuous-function density | `Mathlib/MeasureTheory/Function/ContinuousMapDense.lean:363` | `ContinuousMap.toLp_denseRange` needs compactness, finite weakly regular measure and p≠∞. |
| Countable support | `Mathlib/Topology/Algebra/InfiniteSum/ENNReal.lean:553` | `Summable.countable_support_ennreal` uses finite ENNReal total sum. |
| Character carrier/topology | `Mathlib/Topology/Algebra/PontryaginDual.lean:37,64,84` | Continuous homomorphisms into Circle; compact-open topology, discrete for compact domain. |
| Small arc | `Mathlib/Analysis/SpecialFunctions/Complex/Circle.lean:483` | `Circle.eq_one_of_forall_pow_mem_centeredArc_pi_div_two` tests all positive powers. |
| Algebraic carriers | `Mathlib/Algebra/MonoidAlgebra/Defs.lean:64`; `Mathlib/GroupTheory/MonoidLocalization/GrothendieckGroup.lean:34–36` | `AddMonoidAlgebra` has finitely supported coefficients; additive group completion is generated by `to_additive`, not a continuous representation ring. |
| U(2) | `Mathlib/LinearAlgebra/UnitaryGroup.lean:58,70` | Native matrix unitary group and membership equation support the additional scratch signature. |
| Haar and averaging | `TauCeti/RepresentationTheory/Compact/Haar.lean:93,97,113`; `Compact/Averaging.lean:59` | `haarProb`, `haarProb_def`, `haarProb_apply_univ`, `haarAverage`; normalization and completeness requirements. |
| Unitarization | `TauCeti/RepresentationTheory/Compact/Unitarizable.lean:125,129,271`; `Compact/UnitaryModel.lean:92` | Averaged Gram operator, its integral equation, positivity and `exists_isUnitary_congr` with parameter continuity. |
| Unitarity/decomposition | `TauCeti/RepresentationTheory/Continuous/Unitary/Basic.lean:52`; `Continuous/OrthogonalDecomposition.lean:194` | `IsUnitary` and `exists_orthogonal_irreducible_decomposition`; finite-dimensional orthogonal internal sum. |
| Schur and unitary equivalence | `TauCeti/RepresentationTheory/Continuous/Schur.lean:86`; `Continuous/Unitary/Equivalence.lean:58` | Scalar endomorphisms; the native equivalence-to-isometry theorem assumes irreducibility. README's general polar-factor extension still needs proof. |
| Coefficients | `TauCeti/RepresentationTheory/Continuous/MatrixCoefficient.lean:73`; `Compact/MatrixCoefficient.lean:73` | `matrixCoeff` and `matrixCoeffLp`, conjugate-linear first slot and explicit continuity. |
| Orthogonality/density | `TauCeti/RepresentationTheory/Compact/SchurOrthogonality.lean:109,127`; `Compact/RepresentativeDensity.lean:142` | `schur_orthogonality_self`, `schur_orthogonality_basis`, `representativeStarSubalgebra_dense`. |
| Native dual and basis | `TauCeti/RepresentationTheory/Compact/PeterWeyl.lean:142,213,668,711,721` | `IrrepModel`, `IsIrrepSkeleton`, `IrrepClass`, `stdPeterWeylBasis`, `coe_stdPeterWeylBasis`; arbitrary compact group, nonzero finite model dimensions. |
| Central characters | `TauCeti/RepresentationTheory/Compact/Character/Basis.lean:346,356` | `characterBasis`, `coe_characterBasis`; trace-character vectors in the central L² subspace. |
| Frobenius–Schur | `TauCeti/RepresentationTheory/Compact/FrobeniusSchur/InvariantForm.lean:135,148`; `StructureMap.lean:130` | Indicators ±1 versus symmetric/alternating forms, and the real structure-map equivalence; unitary irreducible hypotheses retained. |
| Circle comparison | `TauCeti/RepresentationTheory/Compact/FourierPeterWeyl.lean:123,147`; `TauCeti/Analysis/Fourier/AddCircle.lean:246` | Index negation, Fourier coefficient vectors and `fourierPontryaginDualEquiv` for the additive circle, transported to Circle. |
| SU(2) | `TauCeti/RepresentationTheory/SU2/Exhaustion.lean:99,299`; `SU2/Weyl/Integration.lean:146`; `SU2/Weight.lean:134`; `SU2/TorusConjugacy.lean:153` | Native symmetric-power model/exhaustion, normalized integration, torus weights and conjugacy. |
| Virtual characters | `TauCeti/RepresentationTheory/CharacterTable/VirtualCharacter.lean:132` | Additive closure of all algebraic `FDRep.character`; no continuity condition, so not the continuous compact representation ring. |
| Strong integration | `TauCeti/RepresentationTheory/Continuous/Integrated/Basic.lean:147,192,203,403` | Native operator, estimate, covariance and approximate identity; R04. |

**Cross-roadmap ownership and order.** Object searches used the roadmap service and the supplied main/open checkouts, plus the board package READMEs. The board package search produced no additional matching ownership claim. Generic integrated operators are native (R04); the remaining compact G-finite density, product-dual and abelian Fourier comparisons have no competing new-roadmap owner in the checked material. The revised LieGroups and BanachSpaceTheory texts overlap structural/countability interfaces, but revisions of existing roadmaps were not substituted for main as suppliers. The move of the compact center/derived and finite-cover prerequisites into this roadmap is explicit; consolidating their location with the extension remains necessary under R02. No fully qualified declaration collision with a different checked roadmap was found. Claims in unrelated open work outside the supplied review scope were not used as dependencies.

| Citation resolved | Authoritative section read | Result |
| --- | --- | --- |
| LieGroups Layers 2–6 | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:275,300,326,358,383` | Automatic smoothness; differentiation/connected faithfulness; integration; universal covers; maximal tori, actual Weyl action and circle products are present. This head no longer claims main has 5A/7F. |
| LieHighestWeight Layers 0–6 | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:319,351,370,405,537,567,773–801` | Algebraic highest-weight, formal-character and finite lower-weight interfaces exist. Layer 0 does not supply real su(2) simplicity (R01). Use the supplied abstract orbit-sum theory when transferring to actual compact characters. |
| LieHighestWeight Layer 9 | Same main README:1432 | Reductive/central and trace-form interfaces; this is an ownership boundary, not a new compact-ring supplier. |
| OperatorTheory/OperatorIdeals Part C | Main `TauCetiRoadmap/OperatorTheory/OperatorIdeals/README.md:530–563` | Column ℓ² model and OI-C14 compactness. Continuous-kernel comparison remains CompactGroups-owned, as main CompactGroups:326–328 already says. |
| Completed/OrthogonalL2Bases Part B | Main `Completed/OrthogonalL2Bases/README.md`, Part B | Weighted basis assembly/product basis scope; no re-plan of it here. |
| CharacterTheory Layers 0–4 | Main `TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md`, Layers 0–4 | Finite-group theory remains a supplier/boundary; compact analytic comparisons are distinct. |
| CharacteristicClasses C5.1 | Main `TauCetiRoadmap/CharacteristicClasses/README.md:1060–1089` | Owns compact invariant-polynomial restriction, as stated; no dependency on it is introduced. |
| AutomorphicFormsOnReductiveGroups §2.1 | Open roadmap service text:51,301–319 | Explicitly asks CompactGroups for algebraic G-finiteness and Banach density, and owns the complete locally convex extension. Direction is now correct. |
| SmoothBanachRepresentations | Supplied open `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:58,286–302` | Matching Banach gap; §4.1 gives the real smooth extension and consumes the complex result from AutomorphicFormsOnReductiveGroups §2.7. “SB4” is stale shorthand, not a missing mathematical input. |

**Adversarial mathematics: 93 rows.** Each row records the computed values, including failures of plausible wrong models. “Pass” means these instances agree, not that the general theorem has been proved. The companion statements identical to main statements are covered by the same rows; the two metric-only companion statements have separate rows. The mathematical scope is complex compact representation theory: DVRs, residue characteristics and schemes do not occur. The field-general algebraic G-finiteness prefix was also tested over 𝔽₂. The zero module, empty indices, nonabelian groups, noncompact negative control, integer exponents, zero measure and nonmetrizable inputs are included.

| Statement/definition | Instances tried | Values on the two sides / rejected model | Result | Change |
| --- | --- | --- | --- | --- |
| Haar probability and finite-group normalization | {1}, C₃ | μ({1})=1; each C₃ point has mass 1/3, total 3·(1/3)=1 | Pass | None |
| Inner-product/coefficient convention | Scalar Circle action, g=i, v=w=1 | ⟨i,1⟩=−i; trace=i; conjugate trace=−i | Pass | None |
| Zero/nonabelian coefficient checks | v=0; S₃ standard three-cycle | Coefficient 0; diagonal coefficient cos(2π/3)=−1/2 versus identity 1 | Pass | None |
| Irreducibility definition, both directions | Trivial action on 0, ℂ, ℂ² | Subspace-only predicate true,true,false; nonzero irreducibility false,true,false | Pass | Previous R04 repaired |
| Finite-dimensional categorical comparison | C₃ characters 1,χ | Continuous and algebraic endomorphism dimensions both 1; Hom(1,χ) dimensions both 0 | Pass | R07 adds distinct comparison Checks |
| Comparison preserves composition/identity | Trivial ℂ, maps 2I and 3I | Both composites 6I; both identities I | Pass | None |
| Comparison preserves tensor, dual, trace | Circle scalar characters z,z² at i | Tensor traces i·(−1)=−i on both sides; dual of z gives i⁻¹=−i | Pass | None |
| Closed-subspace/algebraic comparison | Trivial ℂ²; zero space | Invariant line on both sides; zero has one subspace and is excluded on both sides | Pass | None |
| Continuous kernel integral operator and HS identity | Two points of mass 1/2, k=1 | Matrix relative to normalized point basis has four entries 1/2; squared HS norm 4·1/4=1=∫|k|² | Pass | R06 locator |
| Kernel complex linearity | Same X, k=1 and 2i | A_(1+2i)=(1+2i)P; P+2iP has the same four entries (1+2i)/2 | Pass | None |
| Kernel adjoint convention | k(1,2)=i, other entries 0 | A_k has entry i/2; adjoint has transposed entry −i/2, matching conjugate-transposed kernel | Pass | None |
| Kernel a.e. equality; absence of injectivity | μ=0 and kernels 0,1 | Both operators 0 and both squared L² norms 0, though continuous kernels differ | Pass | None |
| Convolution HS specialization | C₂ normalized Haar, k=(1,0) | A_k=I/2 on dimension 2; HS²=1/2=‖k‖₂². With Haar mass doubled: HS²=2 versus ‖k‖₂²=1 | Pass; normalization necessary | None |
| Imported character/Weyl normalization | C₃; SU(2) constant function | Pairings 1 and (1+ω+ω²)/3=0; Weyl integral (1/(2π))·4·(π/2)=1 | Pass | None |
| Hermitian Gram representation and uniqueness | h=2⟨·,·⟩ on ℂ | T=2I; h(1,1)=⟨1,T1⟩=2; T=3I instead gives 3 | Pass | None |
| Gram self-adjoint/positive distinction | T=2I, 0, iI on ℂ | Self-adjoint: true,true,false; strict positivity at 1: 2>0,0>0 false,Re(i)>0 false | Pass | None |
| Conjugate-linear map into the linear dual | h=standard, v=i,w=1 | h(i,1)=−i=conj(i)h(1,1); the wrong linear convention gives i | Pass | R07 |
| `gramForm_invariant_iff_commutes` | C₄ rotation π and T=diag(1,2) | At g rotation by π/2 and v=w=e₁: 2≠1; Tπe₁=2e₂≠πTe₁=e₂. With T=2I both equal 2 | Pass in both directions | Keep comparison in prose |
| `positive_selfIntertwiner_existsUnique_scalar` | Irreducible ℂ, T=2I; zero module | Unique c=2>0 on ℂ. On zero every c gives 0, but irreducibility is false | Pass | R03 acceptance coverage |
| Reducible scalar-uniqueness negative control | Trivial ℂ², T=diag(1,2) | Invariant positive form has h(e₁,e₁)=1,h(e₂,e₂)=2, so no single c | Pass | None |
| Metric-rescaling isometry and inverse | h₂=4h₁ | h₂(v/2,v/2)=4·(1/4)h₁(v,v)=h₁(v,v); inverse multiplies by 2 | Pass | None |
| Commutant/multiplicity-space *-algebra | One S, S⊕S, empty sum | Commutants ℂ, M₂(ℂ), singleton zero algebra; dimensions 1,4,0 | Pass | None |
| Commutant products, adjoints and inverses | Multiplicity matrices E₁₂,E₂₁ and diag(1,2) | E₁₂E₂₁=E₁₁; E₁₂†=E₂₁; diag(1,2)⁻¹=diag(1,1/2), also for id_S⊗A | Pass | None |
| Positive-metric block classification | Multiplicity blocks diag(1,2), diag(1,0) | Quadratic values on e₁,e₂ are (1,2) and (1,0); only the first is positive definite | Pass | None |
| Decomposition change and reindexing | Swap U on multiplicity two | U diag(1,2)U†=diag(2,1); swapped coordinate form has values (2,1) | Pass | None |
| Finite-group averaging comparison | C₃ trivial action | Average h=(h+h+h)/3; unnormalized sum 3h | Pass | None |
| `IsGFinite` real-body predicate | Zero; nonzero trivial vector over ℂ and 𝔽₂ | Orbit spans have dimensions 0 and 1; finite-dimensional predicate true in both fields | Pass | None |
| G-finite sum/scalar API | Modes 0 and 1 on C(S¹) | Individual dimensions 1,1; sum dimension 2≤1+1; zero scalar gives dimension 0 | Pass | None |
| Invariance and equivariant-image API | Translate one Fourier mode; zero equivariant map | Translated span dimension 1=1; zero image span dimension 0≤1 | Pass | None |
| `gFinite_dense` headline | Trivial action; rotations on C(S¹) | All trivial vectors are G-finite, distance 0; for f(z)=Σ_(k≥1)2⁻ᵏzᵏ, the N-term tail has norm ≤2⁻ᴺ, tending to 0 | Pass | None |
| Strong versus norm continuity | Nonidentity circle rotations | Sup over norm-one test functions of difference is 2; for each fixed continuous f, uniform-continuity modulus tends to 0 | Pass | None |
| Noncompact negative control | Bilateral shift on ℓ²(ℤ) | Translates of δ₀ are orthonormal and linearly independent: infinite orbit dimension. The finite-orbit subspace is 0, distance from δ₀ is 1 | Pass; outside theorem | None |
| Integrated action and normalization | Trivial ℂ, f of mass 1,2,0 | T_f(1)=1,2,0 respectively, matching (∫f)·1 | Pass | R04 consume native |
| Integrated operator norm bound | Trivial ℂ, constant f=2 | ‖T_f‖=2=Cπ‖f‖₁=1·2 | Pass | R04 |
| Left translation covariance | C₃, π(t)=ω, f=conj χ, v=1 | T_f1=1; π(t)T_f1=ω=T_(L_t f)1. Wrong translation f(tg) gives ω² | Pass | R04 |
| Representative weights produce finite orbit | C₃ scalar action; circle one mode | T_(conj χ)1=1 with span dimension 1; scalar multiples remain in that line | Pass | None |
| Approximate-identity/density estimates | v=0; Cπ=2, ‖v‖=3, ‖p−u‖₁<ε/24 | Error 0 for v=0; second error <6ε/24=ε/4 and first <ε/2, total <3ε/4<ε | Pass | R04 consume convergence |
| Naturality/compact-vector refinement | Trivial action, intertwiner 3I; compact unit ball in ℂ | 3T_f(v)=T_f(3v); mass-one kernels give uniform error supremum 0 | Pass | None |
| `secondCountable_iff_countable_irrepClass` | {1}, S₃, Circle, Circle^J uncountable | Second countability true,true,true,false; dual sizes 1,3,ℵ₀,at least |J| respectively | Pass in both directions | None |
| `separable_L2_iff_countable_irrepClass` | S₃; Circle^J uncountable | L² dimension 6=1²+1²+2², separable, dual size 3; uncountable coordinate family has separation √2 and both predicates false | Pass in both directions | None |
| Compact metrizability/second countability | Circle^∅, Circle^ℕ, Circle^J uncountable | Both predicates true,true,false respectively; empty product has one point | Pass | None |
| Hilbert-basis separability bridge | Zero H; ℓ²(ℕ); ℓ²(J) uncountable | Index sizes 0,ℵ₀,|J|; separability true,true,false; coordinate squared distance 2> (2/3)² | Pass | None |
| Countable models separate group points | C₃ and S₃ | χ(t)=ω≠1; standard S₃ rotation differs from I by coefficient −1/2≠1; kernels intersect in {1} | Pass | None |
| Circle-product Borel instances | Empty J; Circle²; uncountable J | Empty Borel algebra has 2 sets; an arc cylinder is measurable; complement of identity depends on all J coordinates and is Borel, not cylinder-measurable | Pass | None |
| Coordinate characters distinct/orthonormal | j≠k, tuple z_j=−1,z_k=1 | Values −1 and 1 distinguish them; diagonal integrals 1, cross integral 0, squared distance 1+1=2 | Pass | None |
| `not_separable_L2_circleProduct` | Uncountable J; empty J as control | Uncountably many √2-separated vectors preclude countable dense set; empty J has L²≅ℂ, so the premise fails | Pass | None |
| Individual coefficient/block support | One χ_j; χ_j+2χ_k; zero | Support sizes 1,2,0; total squared masses 1,5,0, all finite even with uncountable ambient index | Pass | None |
| `character_finite_coordinates` | Empty product; S₃×C₃ with sign·χ | Empty product value 1=empty product; at (transposition,t), value −ω=(−1)·ω | Pass without commutativity | None |
| Small-arc tail argument | Circle elements 1,−1,i | All powers of 1 stay at 1; −1 fails at power 1; i has square −1 and fails. Hence a tail subgroup image confined to the arc is 1 | Pass | None |
| `exists_productDualEquiv`, forward/restriction inverses | Circle², exponents (1,−1) | At (i,−1), forward evaluation −i; coordinate restrictions give i and −1; reconstructed product −i | Pass | None |
| Product dual generator equation excludes zero map | One active character χ(z)=z | At i, prescribed generator value i; constant map gives 1 | Pass | None |
| Reindexing and pullback | Swap two factors; invert first input | Exponents (1,−1) become (−1,1); inversion pullback changes (1,0) to (−1,0), support stays {1} | Pass | None |
| `circleProduct_character` uniqueness | Empty J; one coordinate, candidate exponents 1 and 5 | Empty exponent family unique; at exp(iπ/3), values exp(iπ/3)≠exp(5iπ/3), so different integer weights are detected | Pass | None |
| Direct-sum topology versus product topology | Sequence e_n of coordinate characters on Circle^ℕ | Each fixed coordinate eventually 0; each full character remains nonidentity, so no convergence to 1 in discrete dual | Pass | None |
| Pointwise-convergence negative control | Constant tuple (−1,−1,…) | χ_n(z)=−1 for every n, not a sequence tending to 1 | Pass | None |
| `exists_irrepClass_characterEquiv` | Trivial group, C₃; S₃ outside abelian scope | Irrep dimensions 1; C₃ scalar actions at t are 1,ω,ω²; S₃ has a dimension-2 irrep and fails commutativity premise | Pass | None |
| Scalar-action equation excludes inversion | Circle character at i | π(i)=iI equals associated character iI; assigning inverse gives −iI | Pass | None |
| `compactCharacter` body and multiplication | χ(z)=z, ψ(z)=z², z=i | cχ=i, cψ=−1; cχcψ=−i=c_(χψ) | Pass | None |
| Character conjugation/trivial API | χ at i; trivial character | conj(i)=−i=c_(χ⁻¹)(i); trivial function value 1 at every point | Pass | None |
| Representative algebra = character span | Circle scalar action n=1 | Native coefficient is z⁻¹, itself character index −1; conjugation closes the span, and 1 is index 0 | Pass | None |
| `compactCharacter_span_dense` | {1}; C₃ | Span dimensions 1 and 3 equal C(G) dimensions; closure equals entire space | Pass | None |
| `exists_characterBasis` exact representatives | Circle at i; C₃ | Desired basis vector at i is i; native representation χ⁻¹ has coefficient conj(−i)=i. C₃ vectors have norm²=1 and cross pairing 0 | Pass | None |
| Fourier coefficient integral/a.e. independence | f=cχ+2cψ, χ≠ψ; zero | Integrals against conjugate characters are 1,2,0 off support; changing on a null set adds integral 0 | Pass | None |
| Parseval and unconditional L² expansion | Same f; zero | Σ|coeff|²=1+4=5=‖f‖²; expansion is exactly cχ+2cψ. Zero gives 0=0 | Pass | None |
| Abelian dual metrizability criterion | Circle; Circle^J uncountable | Dual ℤ is countable and Circle metrizable; coordinate injection J→dual gives both predicates false in uncountable case | Pass | None |
| Continuous representation ring and positive cone | Trivial group; Circle; virtual −1 | R({1})=ℤ, R(Circle)=ℤ[t,t⁻¹]; −1 has multiplicity −1 and is virtual, not genuine | Pass | R02 placement |
| Ring operations/character comparison | Circle classes t,t⁻¹ | Tensor tt⁻¹=1; dual(t)=t⁻¹; character(t+t⁻¹) at i is i−i=0 on both sides | Pass | None |
| Torus weight decomposition/lattice | Circle scalar z^n, n=−1,0,1 | One-dimensional weights −1,0,1; integer basis monomials match the three actual characters, including inverse | Pass | None |
| Differential and period criterion | Circle period 2π; integer n=1 and half-integer | dχ=i; exp(i·2π)=1; exp(iπ)=−1 for half-weight, so it does not descend | Pass | None |
| Real complexification conjugation | Real rotation plane | Eigenvalues i,−i; conjugation swaps eigenspaces, maps iv to −i·conj(v), square=id; multiplicities 1=1 | Pass | R07 Checks |
| Left Weyl action/representative independence | SU(3) s₁=(12),s₂=(23), first weight | s₁s₂ sends e₁ to e₂, s₂s₁ to e₃; multiplying a representative by a torus element adds only trivial torus conjugation | Pass | R07 Checks |
| Compact center/derived splitting | Circle, SU(2), U(2) | Lie dimensions 1=1+0, 3=0+3, 4=1+3; connected products surject in each case | Pass | Explicit local ownership |
| Compact semisimple universal cover | SO(3) and its SU(2) cover; Circle control | Kernel sizes 2 and finite; Circle universal cover ℝ is noncompact, but Circle is not semisimple | Pass | None |
| Finite central covering and character image | U(2), q(z,s)=zs | Kernel {(1,I),(−1,−I)}; character on second element is (−1)^(q−a); image lattice requires q−a even | Pass | None |
| Global existence/descent, both directions | SU(2) highest weights 1,2; SO(3) descent | −I acts −1,+1; both exist on SU(2), only weight 2 descends to SO(3) | Pass | None |
| Descent intertwiners/tensor/dual | U(2) admissible labels (q,a)=(1,1),(−1,1) | Kernel scalars +1,+1; product and inverse scalars remain +1. Scalar intertwiner 2I descends unchanged and pulls back to 2I | Pass | None |
| Integral ring restriction/leading orbit sum | SU(2) λ=2 and λ=0 | χ₂=t²+1+t⁻²=m₂+m₀; χ₀=m₀=1. Summing twice at the wall would incorrectly give 2 | Pass | None |
| Fixed central degree/finite lower weights | U(2) highest pair (2,0) | Lower dominant pair (1,1) has the same sum 2; arbitrary negative determinant directions are excluded from this finite lower set | Pass | None |
| Weyl-invariant positive torus weights need not be genuine | SU(2) t²+t⁻² | Equals χ₂−χ₀; irreducible multiplicities 1 and −1 despite nonnegative torus coefficients | Pass | None |
| U(n) finite kernel congruence | U(3), a₁=1,a₂=0; q=1 or 0 | At ζ³=1, kernel action ζ^(q−1) is 1 for q=1 and ζ⁻¹≠1 for q=0 | Pass | None |
| U(n) integer tuple formula and n=0,1 | λ=(2,1,−1); U(1); U(0) | q=2, a=(1,2), Σia_i=5≡2 mod3; mod1 constraint empty, all integers occur; U(0) has only trivial class | Pass | None |
| U(n) representation-ring generators | U(2); U(1) | Ring symmetric generators e₁=t₁+t₂,e₂=t₁t₂,e₂⁻¹; for n=1 obtain ℤ[t,t⁻¹], not ℤ[t] | Pass | None |
| Genuine U(2) weight-recognition iff | Zero f; det⁻¹; weights 1,2,1; negative control | Dimensions 0,1,4; outward differences respectively empty,1,(1,1). Pair ±(1,−1) gives difference −1 at (0,0) and fails | Pass both directions | R03 headline |
| L_(a,b) construction and covering comparison | (a,b)=(2,0),(−1,−1) | Strings (2,0),(1,1),(0,2) and (−1,−1); covering parity exponents 0 and −2, both even | Pass | None |
| U(2) multiplicity telescoping/uniqueness/dimension | f values 1,2,1 | m_(2,0)=1,m_(1,1)=1; reconstructed values 1,2,1; 1+2+1=3+1=4 | Pass | None |
| SU(2) unitary-conjugacy classification | n=0,1,2 | Multiplicity lists empty; m₀=1; either m₀=2 or m₁=1. Characters at −I are 0,1,2 or −2 | Pass | None |
| General linear intertwiner to unitary intertwiner | Trivial ℂ², φ=diag(2,3) | φ†φ=diag(4,9); φ(φ†φ)^−1/2=I, whose Gram matrix is I | Pass | General polar comparison remains a target |
| Symmetric-power central action/kernel | d=0,1,2,3 | −I scalars +1,−1,+1,−1; kernels whole SU(2),{I},{±I},{I} | Pass | R01 supplier repair |
| Kernel of direct sum / faithful iff odd d | Sym²⊕Sym⁰; Sym¹⊕Sym¹ | Kernel {±I}∩SU(2)={±I}, no odd d; {I}∩{I}={I}, m₁=2≠0 | Pass both directions | None |
| `su2_multiplicities_and_faithfulness` | Two copies of Sym¹; zero action | Weighted dimension 2·2=4; trace at I=4 and at −I=−4; injective=true, odd multiplicity=true. n=0: both false | Pass | None |
| `exists_su2_of_multiplicities` | Empty m; m₀=2,m₁=1 | Dimensions 0 and 2·1+1·2=4; character at −I is 0 and 2−2=0, matching direct sums | Pass | None |
| Topological/smooth embedding comparison | Standard SU(2) inclusion; Sym² | Inclusion has kernel {I} and differential rank 3; Sym² has differential rank 3 but kernel {±I}, so is not an embedding | Pass; differential injectivity alone insufficient | R01 supplies complete route |
| Partition correspondence and embedding count | n=0,…,6 | p=1,1,2,3,5,7,11; p_odd=1,1,1,2,2,3,4; differences 0,0,1,1,3,4,7 | Pass, includes empty partition | None |

**Seeded source sample.** Both open texts were fetched through the source service. No README locator is explicitly flagged “unverified”; all eight requested targets were nevertheless checked. Legal source references below identify the retrieved version, not a guessed published numbering. Knapp is the author-distributed digital second edition; Etingof is the MIT Spring 2024 Lecture 11 file.

| Sample target | Text/locator inspected | Result |
| --- | --- | --- |
| 0.1 Finite-dimensional and kernel comparisons | Knapp §IV.2, including Corollary 4.9, printed p.240 (`knapp line 10115`) | Finite-dimensional scalar Schur is present. The section reference does not locate the asserted categorical comparison or the continuous-kernel HS identity; R06. The kernel calculations above check the claimed normalization independently. |
| 1.1 invariant Hermitian metrics | Corollary 4.9, p.240 (`knapp line 10115`); pinned continuous Schur | Correct finite-dimensional irreducible scalar conclusion. Positivity gives real c>0 and nonzeroness gives uniqueness. Full multiplicity-space construction needs its own locator, R06. |
| 2.1 G-finite vectors in Banach representations | No local source locator; native integrated-action file opened at 147,192,203,403 | Estimates/covariance/approximation have a pinned supplier. The compact G-finite density deduction was checked mathematically, but there is no literary theorem/page locator to certify; R04/R06. |
| 3.1 countability and metrizability | Etingof §37.1 p.199 (`etingof line 6`), Theorem 37.5 p.202 (`etingof line 151`) | Countable-base assumption and countable Irrep set confirmed. README correctly says the arbitrary-compact four-way criterion is its deduction from the native general basis, not Etingof's theorem at wider generality. |
| 4.1 characters of arbitrary products | Conway VII.9 Exercise 11 | Text not legally retrieved; uncertified. Finite-coordinate proof, inverse maps, discreteness and nonabelian finite-coordinate extension were checked directly above. No assertion that the exercise itself contains every strengthened formulation. |
| 5.1 compact abelian Fourier theory | Conway VII.9 Exercises 8–10 | Text not legally retrieved; uncertified. Native carriers, scalar-action equation, inversion in the coefficient index, exact basis vector equation and Parseval were checked independently. |
| 6.1 global forms and representation rings | Knapp Corollary 4.25 p.249 (`knapp line 10501`); Theorem 4.29 pp.250–251 (`knapp line 10549`); Proposition 4.58 pp.264–265 (`knapp line 11115`); Theorem 4.69 p.268 (`knapp line 11261`); Theorem 5.110 pp.335–336 (`knapp line 14203`) and proof at `knapp line 14228` | Compact reductivity, closed semisimple factor, periods, compact cover, analytically integral dominant weights and central-kernel descent confirmed. The source uses λ=iℓ on the compact real torus, agreeing with the README's 2π normalization. Its proof uses the universal cover ℝʳ×K_der,sc; the README's finite central cover is correctly described as a deduction. Ring surjectivity and U(2) recognition are deductions, not text attributed verbatim to Theorem 5.110. |
| 7.1 unitary SU(2) actions and embeddings | Native SU(2) exhaustion, torus weights and conjugacy at the locations above; paragraph labelled deduction at README:760 | Multiplicity/partition and kernel computations agree. No exact external locator is attached to this deduction. The separate asserted real-simplicity supplier is absent (R01). |

The source-service retrievals also covered all other bibliography entries: Bump, Bröcker–tom Dieck and Hewitt–Ross returned uncertified publisher-only results; Folland failed at its publisher landing page. No source text was copied into the repository or this report. Statements and source explanations here are paraphrases; quoted passages in findings are from the roadmap being reviewed.

## Not verifiable

- **Conway**, *A Course in Functional Analysis*, second edition, VII.9 Exercises 8–11: the source service recognized DOI `10.1007/978-1-4757-4383-8` as publisher-only and returned `uncertified`. The exercise numbers, printed pages, exact hypotheses and wording could not be checked. This does not invalidate the direct mathematical checks of Layers 4–5.
- **Bump**, *Lie Groups*, second edition, Chapters 2–4,15–18, DOI `10.1007/978-1-4614-8024-2`; **Bröcker–tom Dieck**, *Representations of Compact Lie Groups*, Chapters II–III,VI, DOI `10.1007/978-3-662-12918-0`; **Hewitt–Ross**, *Abstract Harmonic Analysis* I/II, especially Volume II Chapters VII–VIII: each source-service request returned `uncertified` publisher-only access. Their broad bibliography claims were not represented as text-verified. No new request was made for those settled uncertified outcomes.
- **Folland**, *A Course in Abstract Harmonic Analysis*, second edition, Chapter 5, DOI `10.1201/b19172`: the service reached the Taylor & Francis landing page but found no legal readable copy. The single missing-reference record retains the attempted location. No passage from that book was assumed. This review is complete with that access limitation; it is not parked for a source.
- **Unlocated claims:** the kernel HS comparison, full metric commutant description and generic Banach-density literary locator cannot be certified without exact locators (R06). Their finite mathematical controls and pinned inputs are recorded above.

## Source issues

- **Misprint** in etingof at Corollary 37.7 proof, printed p.203 (`etingof line 176`): the source indexes the last summand of the unitary target by n after defining the kernel using m; it should use m consistently; affects the proof.
