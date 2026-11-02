# Review of CompactGroups (pull request #1047 at 7c7d91c)
Folder: `TauCetiRoadmap/RepresentationTheory/CompactGroups/`
**Verdict:** needs changes

Independent AI incremental re-review of 11 changed lines since fd5840e. Two findings remain: one P2 and one P3. The expanded bibliography is supported by the author edition, and Conway is now explicitly uncertified. The gate, targeted build, direct Lean elaboration and 19 signature checks pass. The existing-roadmap replacement remains the blocking issue.

## R01 (P2) — Preserve the base roadmap and put the extension in Part II

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:11`: “The Haar-through-Peter–Weyl and SU(2) constructions belong to the base compact-group library”; line 709 assigns Layer 6 to global forms and representation rings.

**Claim:** The previous R01 is unchanged. The extension replaces the existing roadmap and reassigns its section meanings. Consuming its implemented results does not preserve the specification that other roadmaps cite. No supplied or available repair report marks this finding not actionable.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:369` defines “Layer 6: characters of compact groups”. Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:915` links that fragment. It remains absent at this head.

The family index, `TauCetiRoadmap/RepresentationTheory/README.md:47`, still describes the base programme. AutomorphicFormsOnReductiveGroups §2.1 and SmoothBanachRepresentations §4.1 still name CompactGroups Layer 5 for their compact-finite contracts. This head instead assigns Layer 5 to abelian Fourier theory and puts Banach density in §2.1.

**Exact repair:** Restore the base README and Suggested.lean from main, retaining genuine corrections to the base. Put the extension in `TauCetiRoadmap/RepresentationTheory/CompactGroupsPartII/` with namespace `TauCetiRoadmap.CompactGroupsPartII`, and explain where the base stops. Preserve the base section links, update the permitted family index, and explicitly map the Banach-density consumer contract to the Part II section.

**Repair test:** The main character fragment exists once and the current fragment zero times; restoration supplies the exact target of LieHighestWeight:915. Main Layer 5 again means Peter–Weyl. The extension's Circle values 1 and i, U(2) central exponents 1 and 3, and finite-kernel congruences remain unchanged under relocation.

## R02 (P3) — Finish the source inventory

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:1277`, References; line 1293 adds “Locator-only citation (uncertified).”

**Claim:** Previous R02 is partly repaired. Conway's status and the missing Knapp bibliography locators are now explicit, but `sources.toml` is still absent. A bibliography does not supply the requested legal-fetch provenance and stable source records.

**Witness:** The tracked folder still contains only README.md and Suggested.lean: three bibliography works, zero source-inventory entries. This round's sources-service fetch resolves `knapp` to the author's edition; Conway's settled uncertified status is now stated in the README.

**Exact repair:** Add the `tauceti-roadmap-sources/v1` inventory using the established keys `knapp`, `etingof` and `conway`. Record legal-fetch metadata for Knapp and Etingof, the expanded Knapp locators and Theorem 5.110 proof, and `uncertified` for Conway VII.9 Exercises 8–11. Reuse the settled keys and do not request Conway again.

**Repair test:** These three keys cover exactly the three works in References. The added Knapp entries resolve to the source lines below, including the published expanded proof of Proposition 4.67; Conway remains locator-only. This completes provenance without changing any mathematical statement.

## Previous findings

- R01 — not repaired: README:11 and :709 are unchanged; the existing character-theory section is still replaced. Main LieHighestWeight:915 still links its missing fragment. Carried as R01.
- R02 — partly repaired: README:1280–1286 expands Knapp's locators and :1293 explicitly marks Conway uncertified. The folder still has no sources.toml. Carried as R02.

## Verified sound

**Scope and counts.** This is an incremental review of 8 inserted and 3 deleted README lines. No mathematical statement, Lean declaration, supplier contract, family-index file or file outside the folder changed since fd5840e. I checked the changed References, the Knapp-dependent §§1.2–1.3 and §§6.2,6.5–6.9, and the two previous findings. The table carries all 90 previous computed rows with individual attribution and adds 10 fresh rows. It is not a claim to have repeated the full earlier review.

The repository guidance was read from root README.md and CONTRIBUTING.md; the supplied parent-relative paths did not exist in this worktree. Main CompactGroups, main LieGroups and Completed/OrthogonalL2Bases supplied the shape and ownership comparisons. The inspected content main is fa41b3747f56d4e77bd69e7099c1be4f2e4959ba; review HEAD is 7c7d91c6e8dab6324b44e3939c7b0df56bd0db42. The prescribed outside-folder diff is empty, and the worktree is clean.

**Gate and elaboration.** The worker's gate reports every check zero, including build. The independent gate rerun reports:

```text
gate CompactGroups: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The rerun omits a build field, so I separately ran `lake build TauCetiRoadmap.RepresentationTheory.CompactGroups.Suggested`: exit 0, “Build completed successfully (9061 jobs).” Direct `lake env lean` on Suggested.lean also exited 0 with only the 14 intentional sorry warnings. The initially reported missing PeterWeyl object is not a remaining failure.

The prescribed dependency command printed exactly:

```text
depcheck: 204 roadmaps, 1496 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All Needs lines were reread; none changed. The name-level dependency check does not detect R01's reassigned layer meanings.

**Elaborated signatures and padding.** A scratch copy with `#check @name` for all 19 declarations, including both local Borel instances, elaborated successfully. I compared the displayed types with the README. No signature or required binder changed: Banach density retains completeness and orbit continuity; compact countability retains compactness and Hausdorffness; Haar L² retains BorelSpace; product factorization retains its stronger noncompact, noncommutative scope. The simple `compactCharacter` definition retains only group/topology data, which suffice for its body. All 14 theorem statements are unchanged. The r6 one-tactic tests (rfl, simp, infer_instance) and its one-library-lemma audit are carried forward, not presented as newly rerun. No new declaration or stand-in was introduced.

**Headline inventory.** All locations below are in `TauCetiRoadmap/RepresentationTheory/CompactGroups/Suggested.lean`; coverage is unchanged.

| README headline | Acceptance statement or stated missing carrier |
| --- | --- |
| Invariant metrics, §§1.2–1.3 | Scalar classification at :39; full multiplicity-space metric comparison needs a chosen isotypic tensor decomposition, named in the docstring |
| Banach G-finite density, §2.1 | :101, using real-body orbit-span predicate/submodule definitions |
| Countability/metrizability and uncountable circle products, §3.1 | :116, :123, :135 |
| Finite-coordinate characters and product duals, §4.1 | :154, :169, :182 |
| Abelian character bijection, uniform density and identified Fourier basis, §5.1 | :205, :214, :221 |
| Continuous representation ring, root dictionary, descent and restriction, §6 | Docstring names unavailable continuous-representation ring, compact maximal-torus/character-lattice and finite-cover carriers |
| U(2) genuine weight recognition, §6.9 | :233 |
| SU(2) multiplicities, realization and faithfulness, §7.1 | :253, :266 |
| Continuous-kernel/Hilbert–Schmidt comparison, §0.2 | Docstring names missing Hilbert–Schmidt carrier; §0.1 is supporting comparison work |

**Sources and changed locators.** Knapp was fetched through the sources service from the [legal author edition](https://www.math.stonybrook.edu/~aknapp/download/Beyond2.pdf). I opened all 15 numbered items in the expanded bibliography and the relevant proofs, checking their printed pages and hypotheses. Eight numbered locators are newly listed; Theorem 5.110's proof is now explicitly listed too. The compact connected hypotheses and the separation of the center from the semisimple derived algebra agree with the dependent README passages. The finite compact covering product is a stated deduction, not a claim that Knapp's universal cover is compact when a central torus is present.

| Bibliography item | Verified locator and support |
| --- | --- |
| Proposition 2.13, p.136 | `knapp line 6121`: maximal simultaneously diagonalizable abelian subalgebra of a complex semisimple algebra is Cartan; application in IV.5 at `knapp line 10666`–10674 |
| Proposition 4.8 and Corollary 4.9, p.240 | `knapp line 10109`–10120: finite-dimensional irreducible intertwiner dichotomy and scalar commutant; metric classification is a deduction |
| Proposition 4.24, Corollaries 4.25–4.26, p.249 | `knapp line 10491`–10511: invariant positive form, reductive splitting, negative semidefinite Killing form. On the semisimple summand nondegeneracy makes it negative definite; the argument is explicit at `knapp line 10572`–10578 |
| Theorem 4.29, pp.250–251 | `knapp line 10549`–10581: closed connected derived subgroup, finite center, commuting product with the connected center |
| Equations (4.31)–(4.32), pp.253–254 | `knapp line 10683`–10714: reductive root decomposition, actual torus characters on root lines, imaginary differential on the compact real Cartan |
| Propositions 4.58–4.59, pp.264–265 | `knapp line 11115`–11139: exponential-kernel criterion with 2πi periods; analytical integrality implies integral coroot pairings |
| Proposition 4.67, p.267 | `knapp line 11241`–11245: lattice index equals finite-cover kernel order. Expanded author proof at `knapp line 34709`–34727 supplies the finite-kernel character-extension step; see Source issues |
| Theorem 4.69, p.268 | `knapp line 11261`–11263: compact semisimple groups have finite fundamental group and compact universal cover |
| Theorem 5.107, p.334 | `knapp line 14142`–14152: on the simply connected compact semisimple group, algebraic integral weights are actual torus characters |
| Theorem 5.110 and proof, pp.335–336 | `knapp line 14203`–14247: dominant analytically integral weights classify irreducibles; central scalar and derived highest weight both enter uniqueness, and the kernel character governs descent |

The author's appended Corrections as of June 30, 2023 explicitly say that corrections are not incorporated into the main pages (`knapp line 34633`–34641). The extra proof for 4.67 supports the README statement; it does not refute it. Conway's new label accurately preserves the settled uncertified status. No new source work or copied passage was introduced.

**Seeded sample disposition.**

| Seeded targets | This round's evidence |
| --- | --- |
| 0.1; 1.1; 1.3 | Carry r6's native-interface/Gram checks; reopened 4.8–4.9 for the metric and multiplicity consequences |
| 2.1; 3.1 | Unchanged; carry r6's Banach and countability tests, including Etingof's countable-base limitation; refresh consumer and native signatures |
| 4.1; 5.1 | Unchanged mathematics; Conway label checked against the settled status. Carry finite-coordinate, inverse-index, Fourier and discreteness rows |
| 6.1; 6.2 | Ring construction unchanged; period and actual-character interpretation refreshed against 4.58 |
| 6.3; 6.4 | Carry conjugation and left-action rows; reopened native conjugation and current LieGroups torus/Weyl contract |
| 6.5 | Refresh the full expanded Knapp locator chain, its hypotheses and computations below |
| 6.6 | Refresh Theorem 5.110 and its proof, including both central and derived data and finite-kernel descent |
| 6.9 | Refresh dependence on that classification; carry weight-string recognition and negative-control computations |
| 7.1 | Unchanged; carry multiplicity, kernel, parity, embedding and partition computations; fresh signature elaboration |

**Pinned-library evidence.** Library HEADs equal the manifest pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Four source files were reopened for the dependent interfaces:

- `Mathlib/RepresentationTheory/Continuous/Basic.lean:54` defines ContRepresentation by `toMonoidHom : G →* V →L[R] V`; it does not impose continuity in the group parameter. Lines 72 and 80 give the algebraic representation and continuous intertwiner.
- `Mathlib/RepresentationTheory/Irreducible.lean:29` uses `IsSimpleOrder (Subrepresentation ρ)`, excluding the zero carrier. Lines 24,67,85 supply the field-general dimension-one theorem under finite dimension, algebraic closure and commutativity.
- `TauCeti/RepresentationTheory/Compact/PeterWeyl.lean:142` bundles the finite-dimensional model; lines 146–152 supply its action, parameter continuity, unitarity and irreducibility, separately.
- `TauCeti/Geometry/Hodge/Conjugation.lean:112` defines the semilinear involution, :124 gives its tensor formula, and :143 gives the eigenspace comparison for a real-linear endomorphism. The simultaneous torus-weight restriction remains the roadmap's comparison.

The broader unchanged library-duplication audit is inherited from r6. The bibliography-only diff introduces no carrier or fully qualified declaration name. No new claim about library absence is based on the resolver: its rerun found no unresolved roadmap citation but explicitly skipped external Lean names because its own search context lacked pinned packages; the local checks above used the actual pins.

**Cross-roadmap resolution and ownership.** Nine roadmap texts were refreshed, using main for existing roadmaps and the indexed open head for new ones. Lines in this table refer to the actual README, excluding the roadmap service's extra header line.

| Citation | Resolved repository-relative location and contract |
| --- | --- |
| LieGroups Layers 0,2–7 | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233,275,300,326,358,383,407`: exponentials, smoothness, faithful connected differentiation, integration, covers, maximal tori/Weyl groups, and group complexification |
| LieHighestWeight Layers 0–7,9 | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:319,351,370,405,537,567,773,931,1432`: algebraic highest-weight inputs and ownership boundaries; distinct-orbit triangularity at :790–798; the surviving base link at :915 |
| OperatorTheory/OperatorIdeals Part C | Main `TauCetiRoadmap/OperatorTheory/OperatorIdeals/README.md:530`: OI-C01–OI-C11 supply arbitrary-index Hilbert–Schmidt columns, reconstruction and norm identity |
| Completed/OrthogonalL2Bases Part B | `Completed/OrthogonalL2Bases/README.md:245`: generic weighted L² basis assembly |
| CharacterTheory Layers 0–4 | Main `TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md:260,302,347,397,713`: finite-group character programme, an ownership boundary |
| CharacteristicClasses C5.1 | Main `TauCetiRoadmap/CharacteristicClasses/README.md:1060`: invariant-polynomial restriction, distinct from continuous group-character restriction |
| AutomorphicFormsOnReductiveGroups §§2.1,2.7 | Indexed new roadmap `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:300,304,468`: consumes CompactGroups' Banach gap; owns the locally convex extension and complex smooth-topology result |
| SmoothBanachRepresentations §4.1 | Indexed new roadmap `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:286,296`: real smooth-topology comparison; still names base Layer 5 |
| Base CompactGroups Layer 6 | Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:369`: character theory, whose link R01 preserves |

The roadmap service object search covered main and indexed open heads for analytical integrality, covering tori and scalar central characters; the board packages were searched too. I opened the relevant open LieGroups and ClassicalGroups matches: the former concerns the enveloping-algebra center, the latter rational GLₙ central characters and SLₙ restriction. The board match at `packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/design/README.md:1760` concerns cancellation of central characters in a kernel diagonal. None introduces ownership of the general compact-cover character classification. These open revisions are not treated as suppliers replacing their main roadmaps. The previous broader ownership audit is carried forward; no new construction is introduced by this diff. The general compact global-form extension belongs in the Part II required by R01.

**Adversarial table.** All 90 unchanged rows below retain the previous report's computed values and cite that report individually. Ten fresh rows then cover the added locator chain and its consequences. Finite tests and sorry elaboration are evidence about conventions and signatures, not proofs of the universal targets.

| Statement | Instances tried | Values on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| Irreducibility convention | 0, trivial ℂ, trivial ℂ² | Subrepresentation-lattice sizes 1,2,>2; irreducible values false,true,false | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| Coefficient versus trace | Circle scalar action at i | ⟨i,1⟩=−i; trace=i; inverse-character coefficient=i | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| Nonabelian coefficient normalization | S₃ standard representation, 3-cycle and identity | c(e₁,e₁)=cos(2π/3)=−1/2 and 1; zero vector gives 0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 0.1 Hom comparison, identity/composition | Trivial ℂ; maps 2I,3I | Underlying composite 6I=6I; identity I=I | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 0.1 subobjects and irreducibility | 0 and trivial ℂ | Same lattices of sizes 1 and 2; same false/true irreducibility | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 0.1 tensor and dual | C₃ with χ(g)=ω | Tensor trace ω²=ω²; dual trace ω⁻¹=ω²≠ω | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 0.2 kernel norm | Two atoms of mass 1/2; k=1 | A is averaging projection, HS²=1; ∫∣k∣²=4/4=1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 0.2 null-kernel identification | k=0; μ=0,k=1 | Operator norm and kernel L² norm both 0; nonzero continuous k need not be detected for μ=0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 0.2 linearity and adjoint | k(1,2)=i, other entries 0 | A₁₂=i/2; A*₂₁=−i/2; HS²=1/4=kernel integral | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 0.2 Haar convolution comparison | C₂, f(e)=2,f(s)=0 | A=I on two-dimensional L²; HS²=2; ∫∣f∣²=(4+0)/2=2 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| Base C₃ orthogonality | Characters 1,χ,χ² | Diagonal pairing 3/3=1; off-diagonal (1+ω+ω²)/3=0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| Base SU(2) normalization | χ₀,χ₁ at identity; constant integral | Traces 1,2; Weyl integral (1/(2π))4(π/2)=1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.1 Gram representation and real linearity | T=2I, v=1,w=i | h(1,i)=2i=⟨1,2i⟩; wrong conjugate slot −2i; Gram(h+h)=4I | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.1 positivity | ℂ, T=0,2I; zero space | h(1,1)=0,2; strict positivity false,true; zero-space condition vacuous on both sides | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.1 invariance iff commutation | diag(1,2), trivial and swapping actions | Trivial action: commutes and invariant. Swap: h(Se₁,Se₁)=2≠1; ST≠TS | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.2 unique positive scalar | Irreducible ℂ,T=2I; trivial ℂ²,T=diag(1,2) | Unique c=2; second model needs c=1 and c=2 simultaneously, excluded by reducibility | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.2 metric isometry | h₂=4h₁ | h₂(v/2,v/2)=h₁(v,v); inverse 2I composed with I/2 gives I | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.3 commutant algebra | Two copies of one irreducible | E₁₂E₂₁=E₁₁, E₂₁E₁₂=E₂₂; adjoint E₁₂*=E₂₁ on both sides | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.3 positivity and change of multiplicity basis | A=diag(1,2), U swaps coordinates | UAU*=diag(2,1); inverse blocks diag(1,1/2); positive eigenvalues 1,2 on both sides | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 1.3 empty and simple blocks | V=0; one irreducible copy | Empty product has one element and unique positive form; single block ℂ has positive cone ℝ>0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| Finite-group averaging | C₃, trivial action | Normalized average h; unnormalized sum 3h; factor 1/3 restores h | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 IsGFinite and submodule | Zero; trivial vector over 𝔽₂; two distinct Fourier modes | Orbit dimensions 0,1,2; sum-span bound 2≤1+1; scalar 0 gives dimension 0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 action/naturality | Rotate a monomial; project two modes onto one | Rotation keeps dimension 1; equivariant projection changes dimension 2 to 1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 strong versus norm continuity | Rotations of C(S¹) | Each orbit difference tends to 0; each nonidentity operator difference has norm 2 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 compactness boundary | ℤ shift on ℓ²(ℤ), δ₀ | Orbit is all δₙ, infinitely many independent vectors; finite-orbit predicate false | Outside compact theorem; retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 integrated covariance | S₃, f=6δ_(23), h=(12) | T_f=π(23); π(h)T_f=π(123); reversed product π(132) differs | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 mass normalization | Trivial action, mass 1 and mass 2 | T_f v=v and 2v; error 0 and ‖v‖ | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 density error estimate | Cπ=2,‖v‖=3; ‖p−u‖₁<ε/12 | Second error <2·3·ε/12=ε/2; total <ε/2+ε/2=ε | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 2.1 compact-vector refinement | Trivial action, Q={v,2v}, mass-one kernels | Supremum of errors 0=0; bounded equivariant scalar map commutes with T_f=I | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 3.1 second-countable iff countable dual | Trivial group,Circle,uncountable Circle^J | (true,true), (true,true), (false,false); dual sizes 1,ℵ₀,≥∣J∣ | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 3.1 separable L² iff countable dual | Same groups | L² dimensions 1,ℵ₀,≥∣J∣; separability true,true,false | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 3.1 Hilbert-basis bridge | 0,ℓ²(ℕ),ℓ²(J) for uncountable J | Basis sizes 0,ℵ₀,∣J∣; distinct basis distance √2>2/3 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 3.1 Borel choice | Empty product; uncountable Circle^J | Empty product sigma algebra {∅,G}; G\{1} Borel and depends on every coordinate, unlike a cylinder-measurable set | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 3.1 coordinate orthogonality | χ_j,χ_k, j≠k | Norms 1; pairing 0 by sign translation; squared distance 1+1=2 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 3.1 individual support | χ_j; zero vector | Supports of size 1 and 0; sums of squared coordinates 1 and 0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 4.1 finite coordinate factorization | Empty product; S₃×C₃, sign times χ | Empty evaluation 1=empty product; at ((12),g), −ω=(−1)ω | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 4.1 finite-tail proof | Tail subgroup element with χ(x)=−1 | Its first power is −1, outside centered arc π/2; χ(x)=1 has every power 1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 4.1 product-dual inverse and generator law | Circle², exponents (1,−1), point (i,−1) | Value −i=i(−1)⁻¹; restrictions recover z and z⁻¹; reconstruction gives −i | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 4.1 unique integer multi-index | Circle; weights 0,1,−1 at i | Values 1,i,−i; only exponent 0 is trivial on every circle element | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 4.1 reindexing/pullback | Swap Circle²; pull back χ₁χ₂⁻¹ along diagonal | Indices (1,−1)→(−1,1); diagonal pullback z·z⁻¹=1, support shrinks to 0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 4.1 topology distinction | Coordinate χ_n on Circle^ℕ | Each fixed restriction eventually 1; χ_n(−1,−1,…)=−1 for all n≠limit 1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 5.1 compactCharacter operations | Circle χ,χ⁻¹ at i | Product i(−i)=1; conjugate i=−i; trivial character=1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 5.1 uniform density | C₃; trivial group | Three character vectors have Fourier matrix of rank 3 and span ℂ³; constant 1 spans ℂ | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 5.1 exact Fourier basis | χ at i | Required vector i; χ-indexed coefficient would be −i; χ⁻¹-indexed coefficient gives i | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 5.1 Fourier coordinates/Parseval | f=cχ+2cψ,χ≠ψ; f=0 | Coordinates (1,2), squared norm 1+4=5; zero coordinates and norm 0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 5.1 inversion/AE representative independence | Same finite Fourier sum | Reconstruction 1cχ+2cψ=f; changing on a null set changes each integral by 0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.1 group completion | Trivial group, dimensions 0,1,−1 | R=ℤ; zero=0, unit=1; −1 is virtual but not a genuine dimension | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.1 tensor, dual and restriction | Circle χ at i, dual χ⁻¹; restriction to {1} | i(−i)=1; dual trace −i; restrictions both dimension 1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.2 weight sum and Fourier uniqueness | Trivial ℂ²; zero module; character z⁻¹ | Multiplicity 2 at weight 0, trace 2; empty weights trace 0; weight −1 trace −i at i | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.2 tensor and dual labels | Circle weights 1 and −1 | Tensor label 0 and trace 1; dual of 1 has label −1 and trace −i at i | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.2 period lattice | Slopes 1 and 1/2, period 2π | exp(2πi)=1; exp(πi)=−1; only first descends | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.3 opposite weights | Real rotation plane, v=e₁−ie₂ | Rθv=e^(iθ)v; c(v)=e₁+ie₂ has e^(−iθ); multiplicities 1=1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.3 semilinearity and involution | Same v; trivial real line | c(iv)=−ic(v); c²(v)=v; c(1)=1,c(i)=−i; fixed space ℝ | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.4 representative independence and action law | SU(3), s₁=(12),s₂=(23),e₁ | (s₁s₂)e₁=e₂; (s₂s₁)e₁=e₃; multiplying representative by t∈T leaves conjugation on T unchanged | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.4 orbit sums and ring action | SU(3) weight (1,1,0); zero | Orbit sizes 3 and 1, not 6; e^λe^μ maps to e^(wλ+wμ)=e^(w(λ+μ)) | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 center/derived splitting | Circle,SU(2),U(2) | Real dimensions 1=1+0,3=0+3,4=1+3; U(2) central Killing value B(I,I)=0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 compact cover and finite kernel | Circle; SU(2)→SO(3); S¹×SU(2)→U(2) | Kernel orders 1,2,2; Lie dimensions 1,3,4 preserved | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 torus pullback/descent | U(2) cover, pairs (q,a)=(1,1),(0,1) | Kernel scalar (−1)^(q−a)=1,−1; first descends, second does not | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 complexified pair | SU(2),U(2),torus | sl₂ dimension 3 with Cartan dimension 1; gl₂=ℂI⊕sl₂ dimension 4; torus derived pair 0 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 roots and zero space | SU(2), H=diag(1,−1); U(2) | [H,E₁₂]=2E₁₂, [H,E₂₁]=−2E₂₁; root spaces dimension 1; zero spaces dimensions 1 and 2 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 differential normalization | SU(2), χ(z)=zⁿ | λ(diag(iθ,−iθ))=inθ; λ(H)=n; root α(H)=2 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 integrality/dominance | n=1,−1,1/2; zero-root torus | Coroot values 1,−1,1/2; dominant integral true,false,false; all torus integers dominant | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.5 simply connected/quotient lattice | SU(2) versus SO(3) | SU(2) weights ℤ; SO(3) weights 2ℤ; index 2=cover kernel order | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.6 descent and intertwiners | SU(2) weights 1,2; U(2) pair (1,1) | −I scalars −1,+1; only weight 2 descends to SO(3); 2I pulls back/descends as 2I | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.6 tensor/dual and connected differentiation | U(2) standard and dual; Circle χ₁ | Kernel scalars +1,+1 and product +1; dχ₁=i distinguishes it from dχ₀=0 before restriction to derived algebra | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.7 restriction isomorphism | Trivial group and Circle | Rings ℤ=ℤ and ℤ[t,t⁻¹]=ℤ[t,t⁻¹]; t⁻¹ maps to t⁻¹ | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.7 triangular leading orbit | SU(2), highest weight 2 and 0 | χ₂=t²+1+t⁻²=(t²+t⁻²)+1; χ₀=1, leading coefficient 1 in both cases | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.7 positive-cone distinction | SU(2) t²+t⁻² | Torus coefficients 1,1; irreducible coefficients χ₂−χ₀ give 1,−1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.8 U(n) finite-kernel congruence | U(3),λ=(2,1,−1); fundamental module with q=0 | q=2; a₁+2a₂=1+4=5≡2 mod3. Wrong q gives kernel scalar ζ⁻¹≠1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.8 ranks 0,1 and generators | U(0),U(1),U(2) | Rings ℤ,ℤ[t,t⁻¹]; mod1 condition vacuous; det·det⁻¹=1 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.9 U(2) weight strings | L_(2,0),L_(−1,−1) | Weights (2,0),(1,1),(0,2) each 1; determinant inverse has only (−1,−1) | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.9 recognition, reconstruction and dimension | f values 1,2,1 on degree-2 string | Outward differences 1,1; reconstructed f=(1,2,1); dimension 1+2+1=3+1=4 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.9 failed converse without inequality | f(1,−1)=f(−1,1)=1; f(0,0)=0 | Weyl symmetry true; central inequality 0≥1 false; integral multiplicity −1 | Retain negative control; do not use truncated subtraction to hide failure; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 6.9 zero and negative powers | f=0; det⁻¹ at diag(i,−1) | Dimension/trace 0; both inequalities 0≥0. det=−i, inverse=i; diagonal entries nonzero | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 7.1 multiplicity dimension and realization | m₀=2; m₁=2; empty m | Dimensions 2,4,0; character at identity 2,4,0; faithfulness false,true,false | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 7.1 multiplicity uniqueness | Two copies Sym¹ versus Sym³, both dimension 4 | At torus −1 both trace −4, but weights are {−1,−1,1,1} versus {−3,−1,1,3}; full characters distinguish | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 7.1 irreducible kernel | d=0,1,2; z=i,−1 | Kernels SU(2),{I},{±I}; z=i eigenvalues (−i,i), (−1,1,−1); z=−1 gives −I,+I | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 7.1 faithful direct sums | Sym¹⊕Sym¹; Sym²⊕Sym⁰ | Kernels {I}∩{I}={I}; {±I}∩SU(2)={±I}; odd highest weight present iff faithful | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 7.1 topological/smooth embedding | Standard SU(2) action; trivial action | Standard kernel {I}, differential kernel 0; trivial kernel SU(2), differential kernel dimension 3 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| 7.1 partitions and count | n=0,1,2,3,4 | p(n)=1,1,2,3,5; p_odd(n)=1,1,1,2,2; differences 0,0,1,1,3 | Retain; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| Mathlib contract, README:86–90 | Trivial commutative monoid on ℂ; C₃ on ℂ; real C₃ rotation as excluded input | Complex dimensions 1=1 in both cases. Real rotation has dimension 2≠1; ℝ is not algebraically closed | Pass; consume the pinned field-general theorem; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §5.1 application and new Check, README:633–638,692–694 | C₃ character; zero representation; trivial ℂ² | Dimensions 1,0,2; irreducibility true,false,false. Only first meets the input hypotheses and yields 1=1 | Pass; r5 R03 repaired; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §5.1 scalar action and inverse indexing | Circle at i; C₃ generator with χ(g)=ω | Action scalars i,ω; coefficient scalars −i,ω²; inverse-character coefficients i,ω. Round trip returns χ in both cases | Pass; citation repair preserves the bijection and Fourier signs; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §6.6 existence via top line, README:1004–1007 | U(2) standard and determinant twist, cover q(z,A)=zA | Top-line characters z·t and z³·t; at kernel (−1,−I), (−1)(−1)=1 and (−1)³(−1)=1. Descent yields weights (1,0),(2,1) | Pass; top-line character is trivial on F; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §6.6 uniqueness, README:1001–1009 | Circle χ₀ and χ₁ | Derived restrictions 0=0; central values at i are 1≠i. Central condition 1 selects χ₀, condition z selects χ₁. Surjective pullback distinguishes these same values | Pass; r5 R02 repaired; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §6.6 U(2) new Check, README:1038–1041 | Weights (1,0),(2,1) | Derived coordinates 1−0=2−1=1; central exponents 1+0=1 and 2+1=3; i¹=i, i³=−i. Kernel parities 1−1=0 and 3−1=2 are even | Pass; determinant twist retained; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §6.6 finite-kernel control | U(2) covering data (q,a)=(0,1), compared with (1,1) | Kernel scalars (−1)⁻¹=−1 and (−1)⁰=1; integer weight pairs would be (1/2,−1/2) and (1,0), respectively | Pass; incompatible arbitrary central/derived data do not descend; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §6.6 rank-zero and semisimple boundaries | Trivial K; SU(2) weights 1,2 pulled toward SO(3) | Trivial K has one character, λ=0, central scalar 1. SU(2) central-kernel scalars −1,+1; only weight 2 descends | Pass; neither a spurious center nor an omitted quotient condition; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §6.7 fixed-central-character triangularity | U(2) highest weight (2,0) and determinant twist (3,1) | ch(2,0)=(t₁²+t₂²)+t₁t₂, degrees 2=2; ch(3,1)=(t₁³t₂+t₁t₂³)+t₁²t₂², degrees 4=4. Leading coefficients both 1 | Pass; repaired uniqueness agrees with each fixed central block; carried from [r6](PRREVIEW-CompactGroups~6.md). |
| §§6.8–6.9 dependent U(2) classification | Standard, determinant twist, inverse determinant at diag(i,−1) | Traces i−1, (−i)(i−1)=1+i, i. Dimensions 2,2,1 equal weight totals; highest pairs (1,0),(2,1),(−1,−1) give (q,a)=(1,1),(3,1),(−2,0), each q−a even | Pass; all integer twists remain allowed; carried from [r6](PRREVIEW-CompactGroups~6.md). |

| §6.5 / Proposition 2.13 | sl₂ with H=diag(1,−1); zero derived algebra | ad H eigenvalues 0,2,−2; centralizer and Cartan both ℂH of dimension 1. Zero algebra has Cartan 0 and dimension 0=0 | Pass; added p.136 locator supports the stated semisimple application |
| §6.5 / Proposition 4.24 | su₂, X=diag(i,−i), invariant form −tr(XY) | On the real root plane ad X has matrix [[0,−2],[2,0]]; its transpose equals its negative. Squared norm of X is −tr(X²)=2>0 | Pass; skew-adjointness has the stated sign |
| §6.5 / Corollaries 4.25–4.26 | u₂, su₂, circle | Dimensions 4=1+3, 3=0+3, 1=1+0. For X=diag(i,−i), Killing value −8; for iI, value 0 | Pass; negative definiteness is restricted to the derived summand |
| §6.5 / (4.31) | gl₂ and rank-zero derived torus | gl₂ dimensions 4=2+1+1; zero weight includes the center. For Circle, 1=1+0 and no roots | Pass; center is retained in the zero space |
| §6.5 / (4.32) | SU₂ torus t=diag(i,−i), root vector E₁₂ | Ad(t)E₁₂=−E₁₂ and ξα(t)=i²=−1; α(diag(iθ,−iθ))=2iθ, while α(H)=2 | Pass; actual root character and differential agree |
| §§6.2,6.5 / Propositions 4.58–4.59 | Circle slopes 1,1/2; SU₂ weights 1,−1 | At period 2π, exponentials 1,−1; coroot values 1,−1 are integral, with dominance true,false. Half-weight gives 1/2 and fails integrality | Pass; period and coroot requirements are distinct and consistent |
| §6.5 / Proposition 4.67 | Circle maps z↦z and z↦z²; SU₂→SO₃ | Pullback lattices ℤ and 2ℤ have indices 1,2; kernels have orders 1,2. SO₃ lattice 2ℤ has index 2 in SU₂ lattice ℤ | Pass; identity and nontrivial finite cover; expanded proof read |
| §6.5 / Theorem 5.107 | SU₂ and SO₃, weight 1; trivial group | Weight 1 is a character of SU₂'s torus but −I acts by −1, preventing SO₃ descent; weight 2 gives +1. Trivial group's lattice is 0=0 | Pass; simply connected hypothesis is not dropped |
| §6.6 / Theorem 5.110 proof | U₂ highest pairs (1,0),(2,1), covering point (−1,−I) | Derived weights 1=1, central exponents 1≠3; kernel scalars (−1)²=(−1)⁴=1. At scalar i, actions i versus −i distinguish the representations | Pass; central character prevents false uniqueness |
| §§6.7–6.9 dependent character consequences | U₂ Sym², determinant and det⁻¹ at diag(i,−1) | Sym² trace −1−i+1=−i; det trace −i; their sum −2i equals weight sum −1−2i+1. det⁻¹ trace i equals (−i)⁻¹ | Pass; multiplicities (1,2,1) give dimension 4=3+1, and negative twists remain included |

## Not verifiable

- Conway VII.9 Exercises 8–11 remain text-uncertified. The previous sources-service attempt reached the publisher-only result for DOI 10.1007/978-1-4757-4383-8. The new README explicitly records this limitation. The settled status was carried forward; no new request or guessed source wording was used.
- Unchanged source and mathematical audits, including Etingof's limited countable-base setting and the earlier one-tactic audit, are attributed to r6 rather than represented as a fresh full review. This round's Knapp checks used the legally fetched author edition and its appended corrections.

## Source issues

The Etingof entry is carried from r6. The Knapp proof gap and its published correction were read this round; neither changes a roadmap theorem's truth.

- **Misprint** in etingof at Corollary 37.7 proof, printed p.203 (etingof line 176): the source says the quotient using the first m irreducibles embeds into the unitary group of the first n; it should be the unitary group of the first m irreducibles; affects the proof.
- **Gap** in knapp at Proposition 4.67 proof, printed p.267 (knapp line 11245): the source says the lattice-index assertion follows from torus containment and the exponential-period criterion; it should be justified by extending every character of the finite kernel to the covering torus and identifying the resulting quotient; affects the proof; corrected in print at appended Corrections as of June 30, 2023, pp.814–815 (knapp line 34709–34727).
