# Review of CompactGroups (pull request #1047 at fd5840e)
Folder: `TauCetiRoadmap/RepresentationTheory/CompactGroups/`
**Verdict:** needs changes

:robot: Independent AI incremental review of 46 changed lines since fa45b40. Two findings remain: one P2 and one P3. The central-character repair and the Mathlib deferral are correct. The gate, targeted build and direct Lean elaboration pass.

## R01 (P2) — Preserve the base roadmap and put the extension in Part II

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:11`: “The Haar-through-Peter–Weyl and SU(2) constructions belong to the base compact-group library”; line 709 replaces the base's Layer 6 with global forms and representation rings.

**Claim:** Previous R01 remains. The extension still replaces the existing roadmap and repurposes its layer numbers. Consuming implemented library results does not preserve the specification and section links that other roadmaps consume. No supplied or available repair report marks this finding not actionable.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:369` defines “Layer 6: characters of compact groups”. Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:915` links its exact fragment. That fragment is absent at this head; Layer 6 now means global forms.

The unchanged family index, `TauCetiRoadmap/RepresentationTheory/README.md:47`, also describes the base programme. SmoothBanachRepresentations §4.1 still consumes base Layer 5's representative-function density. AutomorphicFormsOnReductiveGroups §2.1 associates its Banach-density gap with that same layer, whereas this head puts the result in §2.1. These are live contracts, not obsolete progress text.

**Exact repair:** Restore the base README and Suggested.lean from main, retaining genuine corrections to that base. Place the extension in `TauCetiRoadmap/RepresentationTheory/CompactGroupsPartII/`, use namespace `TauCetiRoadmap.CompactGroupsPartII`, and state where the base stops. Cite the base's preserved sections and update the permitted family index. Explicitly map the Banach-density consumer contract to the Part II section.

**Repair test:** The main README already contains the character fragment linked at LieHighestWeight:915 and has Peter–Weyl at Layer 5. Preserving it restores both meanings. The Part II mathematics retains the repaired Circle values 1 and i, U(2) central exponents 1 and 3, and the same finite-kernel congruences. No mathematical narrowing is required.

## R02 (P3) — Restore the source inventory

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:1277–1288`, References, including “VII.9, Exercises 8–11, DOI 10.1007/978-1-4757-4383-8.”

**Claim:** Previous R04 remains. The folder contains only README.md and Suggested.lean; sources.toml is absent. The bibliography does not record the legal fetch metadata or distinguish the uncertified Conway locator from read sources.

**Witness:** The tracked folder has two files and no sources.toml. This round's sources-service fetch returned Knapp's author edition. The previous report records Etingof's institutional text and Conway's publisher-only, uncertified result.

**Exact repair:** Add the `tauceti-roadmap-sources/v1` inventory using the established keys `knapp`, `etingof`, `conway`. Record legal fetch metadata for Knapp and Etingof, the §6.5 locators and §6.6's Theorem 5.110 proof, and `uncertified` for Conway VII.9 Exercises 8–11. Reuse those keys; do not request the settled paywalled text again.

**Repair test:** The three keys correspond one-to-one with all three works in References. Knapp's changed locator resolves to printed p.336 at `knapp line 14211`; the two central/derived components appear at `knapp line 14219`–14233. Conway remains explicitly uncertified.

## Previous findings

- R01 — not repaired: README:11 still treats the base only as library inputs; README:709 assigns Layer 6 to global forms. The main character fragment consumed by LieHighestWeight:915 remains absent. Carried as this report's R01.
- R02 — repaired: README:1001–1010 now fixes both the scalar central character and derived highest weight, proves existence by the top line and finite-kernel descent, and explains uniqueness by injective torus pullback. Checks at 1034–1041 distinguish Circle and U(2) twists.
- R03 — repaired: README:86–90 names Mathlib's dimension-one theorem with its algebraic hypotheses; §5.1 applies it, both dependency lists cite it, and the new Check excludes zero and reducible representations.
- R04 — not repaired: References at README:1277–1288 still list three works without sources.toml. Knapp and Etingof are legally readable; Conway's prior uncertified status remains unrecorded. Carried as this report's R02.

## Verified sound

This is an incremental review, not a fresh full review. The diff has 37 insertions and 9 deletions, all in the README. Suggested.lean, its 19 declarations, and the family index are unchanged. I reviewed the changed supplier contract, all of §5.1 and §6.6, the §6.2/§6.5 inputs and §§6.7–6.9 consequences, and accounted for all four previous findings. Unchanged mathematical checks below are explicitly attributed to [the previous review](PRREVIEW-CompactGroups~5.md).

**Gate and scope.** HEAD is `fd5840ec2fcc6f5194f58b7394f1358ee72c0e28`. The prescribed outside-folder diff is empty; no file changed outside this folder since the previous head either. The worktree is clean. The supplied worker gate reports every check zero, including `build=0 OK`. The review's gate rerun reports:

```text
gate CompactGroups: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The rerun does not print a build field; I separately ran the permitted targeted build of `TauCetiRoadmap.RepresentationTheory.CompactGroups.Suggested`, which exited 0, “Build completed successfully (9061 jobs).” Direct `lake env lean` on Suggested.lean also exited 0 with exactly 14 `declaration uses sorry` warnings. The worker's earlier missing imported object is no longer missing; no failing build is being ignored.

The dependency command printed exactly:

```text
depcheck: 204 roadmaps, 1495 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The 1495 edges reflect the current supplier snapshot, compared with 1490 in the preceding report. The semantic layer replacement in R01 is not detected by a name-level dependency check. All Needs lines were inspected; the changes only replace scalar Schur by the native dimension-one input in Layer 5. Layer 6 retains the sequence root dictionary → descent → restriction; the U(2) recognition argument uses descent without presupposing restriction surjectivity.

**Lean signatures and padding.** The checked library HEADs match the manifest: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. A scratch copy with `#check @name` for all 19 declarations (14 theorems, three definitions and two local instances) elaborated successfully. It includes the two local Borel instances omitted from the worker's generated check list. No signature changed and no missing binder was found: Banach density retains completeness and orbit continuity; compact countability retains compactness and Hausdorffness; L² statements retain BorelSpace; finite-coordinate factorization still needs neither compactness nor commutativity. The abelian bijection retains the group, topology, compactness and Hausdorff hypotheses and the actual scalar-action equation.

The additional one-lemma scratch example proves the dimension-one conclusion for any commutative monoid over an algebraically closed field, with finite dimension and irreducibility, by `exact Representation.IsIrreducible.finrank_eq_one_of_isMulCommutative ρ`. No topology is needed. The existing headline bijection has more content than that lemma. A separate copy tested all 14 admissions with goal-closing `rfl`, `simp`, and `infer_instance`; all 14 still required sorry. The prior pinned-library audit found no one-lemma headline replacement; the sole changed library input is now consumed correctly. No Lean declaration was added by this repair.

**Headline inventory, unchanged and checked against the module docstring.**

| README headline | Suggested.lean coverage |
| --- | --- |
| Scalar invariant metrics, §§1.2–1.3 | Scalar theorem at line 39; full multiplicity-space comparison named unstated because it needs a chosen isotypic tensor decomposition |
| Banach G-finite density, §2.1 | Line 101, using the two real-body orbit-span definitions |
| Compact countability/metrizability and circle-product obstruction, §3.1 | Lines 116,123,135 |
| Finite-coordinate characters, product dual, circle-product weights, §4.1 | Lines 154,169,182 |
| Abelian dual bijection, uniform density, identified Fourier basis, §5.1 | Lines 205,214,221; the changed proof input does not weaken any conclusion |
| Continuous representation ring, root dictionary, global descent and restriction, §6 | Docstring names unavailable continuous ring, maximal-torus/lattice and finite-cover carriers; no substitute predicate |
| Genuine U(2) weight recognition, §6.9 | Line 233, including zero dimension and negative determinant twists |
| SU(2) multiplicities, realization and faithfulness, §7.1 | Lines 253,266 |
| Continuous-kernel/Hilbert–Schmidt comparison, §0.2 | Docstring identifies missing Hilbert–Schmidt carrier; §0.1 remains supporting comparison work |

**Sources and seeded sample.** The new Knapp citation was fetched through the sources service from the [author's digital second edition](https://www.math.stonybrook.edu/~aknapp/download/Beyond2.pdf). I read Theorem 5.110, printed pp.335–336, and its proof, `knapp line 14203`–14247. It assumes a compact connected Lie group, a maximal torus and a positive root system; these agree with README:711–718. The proof treats the central and derived summands separately (`knapp line 14219`–14233), then checks descent by the kernel character (`knapp line 14238`–14247). This supports the repair. The README's finite compact covering product is its §6.5 deduction; it is not misidentified with the source's universal cover ℝⁿ×G̃ss.

| Seeded target(s) | Incremental disposition and evidence |
| --- | --- |
| 0.1; 0.2; 1.2; 1.3; 2.1 | Unchanged: carry r5's native-interface/source audit and the numerical rows below. Re-resolved OperatorIdeals Part C and the Banach consumers |
| 3.1 | Unchanged: carry r5's restricted attribution to Etingof's countable-base setting and independent general Peter–Weyl deduction |
| 4.1 | Unchanged: carry r5's finite-coordinate argument and compact-open/discrete distinction; Conway locator remains uncertified |
| 5.1 | Refreshed: dimension-one input at Mathlib Irreducible:85; IrrepModel fields at TauCeti PeterWeyl:142–152. Circle inverse-index and C₃/zero/reducible tests recomputed; Conway locator remains uncertified |
| 6.1; 6.2; 6.3 | Unchanged: carry r5's continuous-ring ownership, Knapp Proposition 4.58 period convention, and native conjugation comparison; the same periods feed the repaired descent |
| 6.6 | Refreshed in full against Knapp 5.110 proof, p.336, and the local §6.5 pullback dictionary; central data now included in existence and uniqueness |
| 6.7; 6.8; 6.9 | Refreshed as consequences of repaired classification: fixed-central triangularity, quotient congruences, all determinant twists and U(2) weight strings remain consistent. Knapp 5.110 supplies classification; the ring and recognition claims remain deductions, not literal source statements |

No added passage is copied source text. No unverified flag or new source work was introduced. The two changed mathematical inputs are supported; the source inventory issue is separate.

**Pinned declarations opened for the repair.** `Mathlib/RepresentationTheory/Irreducible.lean:24,29,67,85` records a monoid, a field, the nontrivial simple subrepresentation lattice, finite dimension, algebraic closure and `IsMulCommutative`. `TauCeti/RepresentationTheory/Compact/PeterWeyl.lean:142–152` bundles a standard finite-dimensional carrier, parameter continuity, unitarity and irreducibility. Lines 668 and 675 define the quotient and chosen model. Thus the algebraic theorem applies to the native model while the model's additional fields justify the continuous circle-valued scalar action. Neither zero nor trivial ℂ² passes the irreducibility input. The wider pinned-declaration audit is carried from r5; no fresh claim of library absence is inferred from an unsearched newer revision.

**Cross-roadmap citations refreshed this round (nine roadmap texts).** Main CompactGroups, main LieGroups and Completed/OrthogonalL2Bases were also read as shape references. The citation resolver found no unresolved roadmap citation; its library search was unavailable, so the changed Mathlib name was independently checked at the pin above.

| Citation | Resolved repository-relative location and contract |
| --- | --- |
| LieGroups Layers 0,2–7 | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233,275,300,326,358,383,407`: exponential, automatic smoothness, faithful connected differentiation, integration, covers, maximal tori and complexification. Layer 7 is an ownership boundary, not a root-dictionary premise |
| LieHighestWeight Layers 0–7,9 | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:319,351,370,405,537,567,773,931,1432`: root/weight language, classification, reducibility, formal characters, center and reductive comparison. The explicit distinct-orbit triangular targets are at 790–798; the broken compact character link is at 915 |
| OperatorTheory/OperatorIdeals Part C | Main `TauCetiRoadmap/OperatorTheory/OperatorIdeals/README.md:530–558`: OI-C01–OI-C11, including arbitrary-index reconstruction and norm identity |
| Completed/OrthogonalL2Bases Part B | `Completed/OrthogonalL2Bases/README.md:245`: generic weighted L² assembly |
| CharacterTheory Layers 0–4 | Main `TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md:260,302,347,397,713`: finite-group character interfaces, not a second owner of the continuous compact-group comparisons |
| CharacteristicClasses C5.1 | Main `TauCetiRoadmap/CharacteristicClasses/README.md:1060`: invariant-polynomial restriction, distinct from continuous character-ring restriction |
| AutomorphicFormsOnReductiveGroups §§2.1,2.7 | Open roadmap text, `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:300,304,468`: the same orbit-span submodule and Banach gap, locally convex extension and complex smooth topology. This is a consumer, not a premise for Banach density |
| SmoothBanachRepresentations §4.1 | Open roadmap text, `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:286–296`: real extension and smooth-topology density; base Layer 5 naming persists |
| Base CompactGroups Layer 6 | Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:369`: compact characters, the contract that must remain addressable under R01 |

The roadmap-service object search covered main and the indexed open heads; board package READMEs were searched for the new dimension-one citation, covering-torus descent and scalar central character. The focused matches in open LieGroups and ClassicalGroups were opened: LieGroups:491 concerns the center of the enveloping algebra; ClassicalGroups:1683 concerns rational GLₙ representations and SLₙ restriction. They are not the general continuous compact-group torus-character classification here. Both are revisions of existing roadmaps and were not silently promoted to new suppliers. No new carrier or Lean name is introduced by these 46 lines. Ownership of the dimension-one input is now explicitly Mathlib's; the general compact global-form comparison is this extension's work, to be housed in Part II as R01 requires. The previous broader duplication audit is retained, not represented as rerun in full.

**Adversarial table.** 80 unchanged rows are carried from r5, each with its own citation and computed values. Ten fresh rows cover the changed statements, their new Checks and dependent consequences. These finite tests do not prove the universal admissions. The old failed central-uniqueness row and duplicated dimension-one-input row are replaced by the fresh rows.

| Statement | Instances tried | Values on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| Irreducibility convention | 0, trivial ℂ, trivial ℂ² | Subrepresentation-lattice sizes 1,2,>2; irreducible values false,true,false | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| Coefficient versus trace | Circle scalar action at i | ⟨i,1⟩=−i; trace=i; inverse-character coefficient=i | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| Nonabelian coefficient normalization | S₃ standard representation, 3-cycle and identity | c(e₁,e₁)=cos(2π/3)=−1/2 and 1; zero vector gives 0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 0.1 Hom comparison, identity/composition | Trivial ℂ; maps 2I,3I | Underlying composite 6I=6I; identity I=I | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 0.1 subobjects and irreducibility | 0 and trivial ℂ | Same lattices of sizes 1 and 2; same false/true irreducibility | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 0.1 tensor and dual | C₃ with χ(g)=ω | Tensor trace ω²=ω²; dual trace ω⁻¹=ω²≠ω | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 0.2 kernel norm | Two atoms of mass 1/2; k=1 | A is averaging projection, HS²=1; ∫∣k∣²=4/4=1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 0.2 null-kernel identification | k=0; μ=0,k=1 | Operator norm and kernel L² norm both 0; nonzero continuous k need not be detected for μ=0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 0.2 linearity and adjoint | k(1,2)=i, other entries 0 | A₁₂=i/2; A*₂₁=−i/2; HS²=1/4=kernel integral | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 0.2 Haar convolution comparison | C₂, f(e)=2,f(s)=0 | A=I on two-dimensional L²; HS²=2; ∫∣f∣²=(4+0)/2=2 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| Base C₃ orthogonality | Characters 1,χ,χ² | Diagonal pairing 3/3=1; off-diagonal (1+ω+ω²)/3=0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| Base SU(2) normalization | χ₀,χ₁ at identity; constant integral | Traces 1,2; Weyl integral (1/(2π))4(π/2)=1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.1 Gram representation and real linearity | T=2I, v=1,w=i | h(1,i)=2i=⟨1,2i⟩; wrong conjugate slot −2i; Gram(h+h)=4I | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.1 positivity | ℂ, T=0,2I; zero space | h(1,1)=0,2; strict positivity false,true; zero-space condition vacuous on both sides | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.1 invariance iff commutation | diag(1,2), trivial and swapping actions | Trivial action: commutes and invariant. Swap: h(Se₁,Se₁)=2≠1; ST≠TS | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.2 unique positive scalar | Irreducible ℂ,T=2I; trivial ℂ²,T=diag(1,2) | Unique c=2; second model needs c=1 and c=2 simultaneously, excluded by reducibility | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.2 metric isometry | h₂=4h₁ | h₂(v/2,v/2)=h₁(v,v); inverse 2I composed with I/2 gives I | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.3 commutant algebra | Two copies of one irreducible | E₁₂E₂₁=E₁₁, E₂₁E₁₂=E₂₂; adjoint E₁₂*=E₂₁ on both sides | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.3 positivity and change of multiplicity basis | A=diag(1,2), U swaps coordinates | UAU*=diag(2,1); inverse blocks diag(1,1/2); positive eigenvalues 1,2 on both sides | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 1.3 empty and simple blocks | V=0; one irreducible copy | Empty product has one element and unique positive form; single block ℂ has positive cone ℝ>0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| Finite-group averaging | C₃, trivial action | Normalized average h; unnormalized sum 3h; factor 1/3 restores h | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 IsGFinite and submodule | Zero; trivial vector over 𝔽₂; two distinct Fourier modes | Orbit dimensions 0,1,2; sum-span bound 2≤1+1; scalar 0 gives dimension 0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 action/naturality | Rotate a monomial; project two modes onto one | Rotation keeps dimension 1; equivariant projection changes dimension 2 to 1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 strong versus norm continuity | Rotations of C(S¹) | Each orbit difference tends to 0; each nonidentity operator difference has norm 2 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 compactness boundary | ℤ shift on ℓ²(ℤ), δ₀ | Orbit is all δₙ, infinitely many independent vectors; finite-orbit predicate false | Outside compact theorem; retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 integrated covariance | S₃, f=6δ_(23), h=(12) | T_f=π(23); π(h)T_f=π(123); reversed product π(132) differs | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 mass normalization | Trivial action, mass 1 and mass 2 | T_f v=v and 2v; error 0 and ‖v‖ | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 density error estimate | Cπ=2,‖v‖=3; ‖p−u‖₁<ε/12 | Second error <2·3·ε/12=ε/2; total <ε/2+ε/2=ε | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 2.1 compact-vector refinement | Trivial action, Q={v,2v}, mass-one kernels | Supremum of errors 0=0; bounded equivariant scalar map commutes with T_f=I | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 3.1 second-countable iff countable dual | Trivial group,Circle,uncountable Circle^J | (true,true), (true,true), (false,false); dual sizes 1,ℵ₀,≥∣J∣ | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 3.1 separable L² iff countable dual | Same groups | L² dimensions 1,ℵ₀,≥∣J∣; separability true,true,false | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 3.1 Hilbert-basis bridge | 0,ℓ²(ℕ),ℓ²(J) for uncountable J | Basis sizes 0,ℵ₀,∣J∣; distinct basis distance √2>2/3 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 3.1 Borel choice | Empty product; uncountable Circle^J | Empty product sigma algebra {∅,G}; G\{1} Borel and depends on every coordinate, unlike a cylinder-measurable set | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 3.1 coordinate orthogonality | χ_j,χ_k, j≠k | Norms 1; pairing 0 by sign translation; squared distance 1+1=2 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 3.1 individual support | χ_j; zero vector | Supports of size 1 and 0; sums of squared coordinates 1 and 0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 4.1 finite coordinate factorization | Empty product; S₃×C₃, sign times χ | Empty evaluation 1=empty product; at ((12),g), −ω=(−1)ω | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 4.1 finite-tail proof | Tail subgroup element with χ(x)=−1 | Its first power is −1, outside centered arc π/2; χ(x)=1 has every power 1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 4.1 product-dual inverse and generator law | Circle², exponents (1,−1), point (i,−1) | Value −i=i(−1)⁻¹; restrictions recover z and z⁻¹; reconstruction gives −i | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 4.1 unique integer multi-index | Circle; weights 0,1,−1 at i | Values 1,i,−i; only exponent 0 is trivial on every circle element | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 4.1 reindexing/pullback | Swap Circle²; pull back χ₁χ₂⁻¹ along diagonal | Indices (1,−1)→(−1,1); diagonal pullback z·z⁻¹=1, support shrinks to 0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 4.1 topology distinction | Coordinate χ_n on Circle^ℕ | Each fixed restriction eventually 1; χ_n(−1,−1,…)=−1 for all n≠limit 1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 5.1 compactCharacter operations | Circle χ,χ⁻¹ at i | Product i(−i)=1; conjugate i=−i; trivial character=1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 5.1 uniform density | C₃; trivial group | Three character vectors have Fourier matrix of rank 3 and span ℂ³; constant 1 spans ℂ | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 5.1 exact Fourier basis | χ at i | Required vector i; χ-indexed coefficient would be −i; χ⁻¹-indexed coefficient gives i | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 5.1 Fourier coordinates/Parseval | f=cχ+2cψ,χ≠ψ; f=0 | Coordinates (1,2), squared norm 1+4=5; zero coordinates and norm 0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 5.1 inversion/AE representative independence | Same finite Fourier sum | Reconstruction 1cχ+2cψ=f; changing on a null set changes each integral by 0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.1 group completion | Trivial group, dimensions 0,1,−1 | R=ℤ; zero=0, unit=1; −1 is virtual but not a genuine dimension | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.1 tensor, dual and restriction | Circle χ at i, dual χ⁻¹; restriction to {1} | i(−i)=1; dual trace −i; restrictions both dimension 1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.2 weight sum and Fourier uniqueness | Trivial ℂ²; zero module; character z⁻¹ | Multiplicity 2 at weight 0, trace 2; empty weights trace 0; weight −1 trace −i at i | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.2 tensor and dual labels | Circle weights 1 and −1 | Tensor label 0 and trace 1; dual of 1 has label −1 and trace −i at i | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.2 period lattice | Slopes 1 and 1/2, period 2π | exp(2πi)=1; exp(πi)=−1; only first descends | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.3 opposite weights | Real rotation plane, v=e₁−ie₂ | Rθv=e^(iθ)v; c(v)=e₁+ie₂ has e^(−iθ); multiplicities 1=1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.3 semilinearity and involution | Same v; trivial real line | c(iv)=−ic(v); c²(v)=v; c(1)=1,c(i)=−i; fixed space ℝ | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.4 representative independence and action law | SU(3), s₁=(12),s₂=(23),e₁ | (s₁s₂)e₁=e₂; (s₂s₁)e₁=e₃; multiplying representative by t∈T leaves conjugation on T unchanged | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.4 orbit sums and ring action | SU(3) weight (1,1,0); zero | Orbit sizes 3 and 1, not 6; e^λe^μ maps to e^(wλ+wμ)=e^(w(λ+μ)) | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 center/derived splitting | Circle,SU(2),U(2) | Real dimensions 1=1+0,3=0+3,4=1+3; U(2) central Killing value B(I,I)=0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 compact cover and finite kernel | Circle; SU(2)→SO(3); S¹×SU(2)→U(2) | Kernel orders 1,2,2; Lie dimensions 1,3,4 preserved | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 torus pullback/descent | U(2) cover, pairs (q,a)=(1,1),(0,1) | Kernel scalar (−1)^(q−a)=1,−1; first descends, second does not | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 complexified pair | SU(2),U(2),torus | sl₂ dimension 3 with Cartan dimension 1; gl₂=ℂI⊕sl₂ dimension 4; torus derived pair 0 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 roots and zero space | SU(2), H=diag(1,−1); U(2) | [H,E₁₂]=2E₁₂, [H,E₂₁]=−2E₂₁; root spaces dimension 1; zero spaces dimensions 1 and 2 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 differential normalization | SU(2), χ(z)=zⁿ | λ(diag(iθ,−iθ))=inθ; λ(H)=n; root α(H)=2 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 integrality/dominance | n=1,−1,1/2; zero-root torus | Coroot values 1,−1,1/2; dominant integral true,false,false; all torus integers dominant | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.5 simply connected/quotient lattice | SU(2) versus SO(3) | SU(2) weights ℤ; SO(3) weights 2ℤ; index 2=cover kernel order | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.6 descent and intertwiners | SU(2) weights 1,2; U(2) pair (1,1) | −I scalars −1,+1; only weight 2 descends to SO(3); 2I pulls back/descends as 2I | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.6 tensor/dual and connected differentiation | U(2) standard and dual; Circle χ₁ | Kernel scalars +1,+1 and product +1; dχ₁=i distinguishes it from dχ₀=0 before restriction to derived algebra | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.7 restriction isomorphism | Trivial group and Circle | Rings ℤ=ℤ and ℤ[t,t⁻¹]=ℤ[t,t⁻¹]; t⁻¹ maps to t⁻¹ | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.7 triangular leading orbit | SU(2), highest weight 2 and 0 | χ₂=t²+1+t⁻²=(t²+t⁻²)+1; χ₀=1, leading coefficient 1 in both cases | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.7 positive-cone distinction | SU(2) t²+t⁻² | Torus coefficients 1,1; irreducible coefficients χ₂−χ₀ give 1,−1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.8 U(n) finite-kernel congruence | U(3),λ=(2,1,−1); fundamental module with q=0 | q=2; a₁+2a₂=1+4=5≡2 mod3. Wrong q gives kernel scalar ζ⁻¹≠1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.8 ranks 0,1 and generators | U(0),U(1),U(2) | Rings ℤ,ℤ[t,t⁻¹]; mod1 condition vacuous; det·det⁻¹=1 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.9 U(2) weight strings | L_(2,0),L_(−1,−1) | Weights (2,0),(1,1),(0,2) each 1; determinant inverse has only (−1,−1) | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.9 recognition, reconstruction and dimension | f values 1,2,1 on degree-2 string | Outward differences 1,1; reconstructed f=(1,2,1); dimension 1+2+1=3+1=4 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.9 failed converse without inequality | f(1,−1)=f(−1,1)=1; f(0,0)=0 | Weyl symmetry true; central inequality 0≥1 false; integral multiplicity −1 | Retain negative control; do not use truncated subtraction to hide failure  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 6.9 zero and negative powers | f=0; det⁻¹ at diag(i,−1) | Dimension/trace 0; both inequalities 0≥0. det=−i, inverse=i; diagonal entries nonzero | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 7.1 multiplicity dimension and realization | m₀=2; m₁=2; empty m | Dimensions 2,4,0; character at identity 2,4,0; faithfulness false,true,false | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 7.1 multiplicity uniqueness | Two copies Sym¹ versus Sym³, both dimension 4 | At torus −1 both trace −4, but weights are {−1,−1,1,1} versus {−3,−1,1,3}; full characters distinguish | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 7.1 irreducible kernel | d=0,1,2; z=i,−1 | Kernels SU(2),{I},{±I}; z=i eigenvalues (−i,i), (−1,1,−1); z=−1 gives −I,+I | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 7.1 faithful direct sums | Sym¹⊕Sym¹; Sym²⊕Sym⁰ | Kernels {I}∩{I}={I}; {±I}∩SU(2)={±I}; odd highest weight present iff faithful | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 7.1 topological/smooth embedding | Standard SU(2) action; trivial action | Standard kernel {I}, differential kernel 0; trivial kernel SU(2), differential kernel dimension 3 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| 7.1 partitions and count | n=0,1,2,3,4 | p(n)=1,1,2,3,5; p_odd(n)=1,1,1,2,2; differences 0,0,1,1,3 | Retain  Carried from [r5](PRREVIEW-CompactGroups~5.md). |
| Mathlib contract, README:86–90 | Trivial commutative monoid on ℂ; C₃ on ℂ; real C₃ rotation as excluded input | Complex dimensions 1=1 in both cases. Real rotation has dimension 2≠1; ℝ is not algebraically closed | Pass; consume the pinned field-general theorem |
| §5.1 application and new Check, README:633–638,692–694 | C₃ character; zero representation; trivial ℂ² | Dimensions 1,0,2; irreducibility true,false,false. Only first meets the input hypotheses and yields 1=1 | Pass; r5 R03 repaired |
| §5.1 scalar action and inverse indexing | Circle at i; C₃ generator with χ(g)=ω | Action scalars i,ω; coefficient scalars −i,ω²; inverse-character coefficients i,ω. Round trip returns χ in both cases | Pass; citation repair preserves the bijection and Fourier signs |
| §6.6 existence via top line, README:1004–1007 | U(2) standard and determinant twist, cover q(z,A)=zA | Top-line characters z·t and z³·t; at kernel (−1,−I), (−1)(−1)=1 and (−1)³(−1)=1. Descent yields weights (1,0),(2,1) | Pass; top-line character is trivial on F |
| §6.6 uniqueness, README:1001–1009 | Circle χ₀ and χ₁ | Derived restrictions 0=0; central values at i are 1≠i. Central condition 1 selects χ₀, condition z selects χ₁. Surjective pullback distinguishes these same values | Pass; r5 R02 repaired |
| §6.6 U(2) new Check, README:1038–1041 | Weights (1,0),(2,1) | Derived coordinates 1−0=2−1=1; central exponents 1+0=1 and 2+1=3; i¹=i, i³=−i. Kernel parities 1−1=0 and 3−1=2 are even | Pass; determinant twist retained |
| §6.6 finite-kernel control | U(2) covering data (q,a)=(0,1), compared with (1,1) | Kernel scalars (−1)⁻¹=−1 and (−1)⁰=1; integer weight pairs would be (1/2,−1/2) and (1,0), respectively | Pass; incompatible arbitrary central/derived data do not descend |
| §6.6 rank-zero and semisimple boundaries | Trivial K; SU(2) weights 1,2 pulled toward SO(3) | Trivial K has one character, λ=0, central scalar 1. SU(2) central-kernel scalars −1,+1; only weight 2 descends | Pass; neither a spurious center nor an omitted quotient condition |
| §6.7 fixed-central-character triangularity | U(2) highest weight (2,0) and determinant twist (3,1) | ch(2,0)=(t₁²+t₂²)+t₁t₂, degrees 2=2; ch(3,1)=(t₁³t₂+t₁t₂³)+t₁²t₂², degrees 4=4. Leading coefficients both 1 | Pass; repaired uniqueness agrees with each fixed central block |
| §§6.8–6.9 dependent U(2) classification | Standard, determinant twist, inverse determinant at diag(i,−1) | Traces i−1, (−i)(i−1)=1+i, i. Dimensions 2,2,1 equal weight totals; highest pairs (1,0),(2,1),(−1,−1) give (q,a)=(1,1),(3,1),(−2,0), each q−a even | Pass; all integer twists remain allowed |

## Not verifiable

- Conway VII.9 Exercises 8–11 remain text-uncertified. The previous sources-service attempt reached only the paywalled publisher for DOI 10.1007/978-1-4757-4383-8. I carried that settled status forward and made no new request; the exact exercise wording and pagination were not reverified. The changed §5.1 input was verified independently at the Mathlib pin.
- Unchanged source and mathematical audits are carried from the identified previous report, not claimed as a new full review. All admitted Lean theorems still require proofs; elaboration and finite computations do not establish them.

## Source issues

Carried from r5; no new source defect was found in the changed Knapp passage.

- **Misprint** in etingof at Corollary 37.7 proof, printed p.203 (`etingof line 176`): the source says the quotient using the first m irreducibles embeds into the unitary group of the first n; it should be the unitary group of the first m irreducibles; affects the proof.
