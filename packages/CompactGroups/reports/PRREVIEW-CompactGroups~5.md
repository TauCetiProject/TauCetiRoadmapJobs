# Review of CompactGroups (pull request #1047 at fa45b40)
Folder: `TauCetiRoadmap/RepresentationTheory/CompactGroups/`
**Verdict:** needs changes

:robot: Independent AI review. Four findings: two P2 and two P3. The gate passes. No false admitted Lean theorem was found; the blocking mathematical finding concerns the uniqueness assertion in the README.

## R01 (P2) — Preserve the base roadmap and put the extension in Part II

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:3` and the replacement of its layers: “Build on normalized Haar measure, finite-dimensional unitarization, Peter–Weyl, compact character theory and the SU(2) symmetric-power classification.”

**Claim:** Carried from r4 R01. This is an extension of the existing compact-group programme, but it overwrites that programme and assigns its layer numbers to different mathematics. Referring to the base only as a library does not preserve the roadmap that consumers cite. No repair report marking this finding not actionable was supplied or found among this package's reports.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:369` is “Layer 6: characters of compact groups”; main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:915` links its exact fragment. This head deletes that fragment and makes Layer 6 global representation rings.

Main's layers at lines 205, 226, 248, 271, 295, 318 and 369 cover Haar, unitarization, complete reducibility, coefficients, orthogonality, Peter–Weyl and characters. This head replaces them with comparisons, metrics, Banach density, countability, product duals, abelian Fourier theory and global forms. The unchanged family index at `TauCetiRoadmap/RepresentationTheory/README.md:47` still describes the base. SmoothBanachRepresentations §4.1 and the board package `packages/ExceptionalThetaCorrespondencesForG2/README.md:67` likewise consume the base's Layer 5 and Layers 3–5. The progress record corroborates completion, but the finding rests on the normative main README and the live citations, not on machine-generated status alone.

**Exact repair:** Restore the base README and Suggested.lean from main, retaining only genuine corrections to that base. Put this extension in `TauCetiRoadmap/RepresentationTheory/CompactGroupsPartII/`, with namespace `TauCetiRoadmap.CompactGroupsPartII`, an introduction specifying where the base stops, and citations to its unchanged sections. Update the family index, which the brief permits this pull request to own. Keep the Banach-density consumer contract explicitly mapped to the new Part II section.

**Repair test:** Main's character fragment resolves again; base Layer 5 again means Peter–Weyl. The extension still has the same mathematical targets and the computed values below, including U(2) dimension 4 and SU(2) embedding counts 0,0,1,1,3. Moving the extension also distinguishes the base compact theory consumed by LieHighestWeight from the later global-form theory that consumes LieHighestWeight.

## R02 (P2) — Fix the central character before asserting uniqueness of the lifted highest weight

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:989`: “its Lie highest weight is the restriction of λ_χ to 𝔥 for exactly one dominant χ ∈ X by §6.5's dictionary”.

**Claim:** Restriction to the derived Cartan does not determine χ when K has a positive-dimensional center. Section 6.5 proves injectivity on the full torus Lie algebra, not injectivity after discarding the central summand. The preceding instruction to use Schur on the center needs to appear as a condition in this uniqueness assertion.

**Witness:** For K=T=Circle, 𝔥=0. Both χ₀(z)=1 and χ₁(z)=z are dominant and have λ_χ restricted to 𝔥 equal to 0, but χ₀(i)=1 and χ₁(i)=i. Thus the displayed restriction has multiple dominant lifts.

**Exact repair:** Assert uniqueness among χ whose restriction to Z(K)^0 equals the scalar central character of the given irreducible representation **and** whose differential on 𝔥 is its derived highest weight. Explain existence using the top weight line and finite-kernel compatibility. Add the two circle characters above as a negative-control Check. Knapp's proof uses both summands: `knapp line 14219` through line 14233, Theorem 5.110, printed p.336.

**Repair test:** On Circle, fixing central character 1 selects χ₀; fixing central character z selects χ₁. For U(2), weights (1,0) and (2,1) both have derived coordinate 1, but central exponents 1 and 3; specifying the central exponent distinguishes them. The repaired assertion retains all determinant twists and the existing U(2) parity condition.

## R03 (P3) — Cite Mathlib's dimension-one theorem instead of rebuilding it

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:629`: “Prove that each complex irreducible has dimension 1: commutativity makes every action operator an intertwiner, so Schur's lemma makes it scalar”.

**Claim:** The dimension-one input already exists at the pin, for the underlying algebraic representation and in greater generality. The new continuous-character bijection is still work, but this input should be consumed by name.

**Witness:** `Mathlib/RepresentationTheory/Irreducible.lean:85`: `Representation.IsIrreducible.finrank_eq_one_of_isMulCommutative`. A scratch example with a finite-dimensional irreducible complex representation of any commutative group closes with `exact Representation.IsIrreducible.finrank_eq_one_of_isMulCommutative ρ`.

**Exact repair:** Add that declaration, file and hypotheses to the Mathlib supplier contract and change the dimension-one sentence to consume it. Retain the construction of the continuous circle-valued scalar action, the quotient-class bijection and the Fourier-basis comparison. No deletion from Suggested.lean is requested: its bijection theorem contains additional substantive conclusions.

**Repair test:** The one-lemma example elaborated without diagnostics. For a C₃ character the supplied dimension is 1; the zero representation is excluded by `IsIrreducible`; trivial ℂ² is reducible. Compactness and continuity are needed for the subsequent character comparison, not for this input.

## R04 (P3) — Restore the missing source inventory

**Location:** `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:1249`, References: “J. B. Conway, A Course in Functional Analysis, second edition, Springer (1990), VII.9, Exercises 8–11”.

**Claim:** Carried from r4 R05. The folder still contains only README.md and Suggested.lean. There is no sources.toml recording the three cited works or distinguishing the legally read sources from the uncertified Conway citation.

**Witness:** The sources service fetched Knapp's author edition and Etingof's MIT notes. For DOI 10.1007/978-1-4757-4383-8 it returned “uncertified: the citation resolves only to a paywalled page”.

**Exact repair:** Add a `tauceti-roadmap-sources/v1` inventory with the existing keys `knapp`, `etingof` and `conway`; record the legal fetch metadata for the first two and `uncertified` with VII.9 Exercises 8–11 for Conway. Include the added §6.5 locators, especially Proposition 2.13, Propositions 4.24/4.59/4.67, equations (4.31)–(4.32), and Theorem 5.107. Do not introduce a second key for any work.

**Repair test:** These three entries cover every external work in References. The source table below distinguishes deductions from direct source statements and does not certify the unread Conway exercises. This review changed no source manifest and makes no new request for a settled paywalled text.

## Verified sound

These are explicit instance checks and interface/source audits, not proofs of the admitted theorems. All sections of the 1,260-line README and all 19 declarations of Suggested.lean were read. The audit covers all 15 seeded targets, the added §6.5 dictionary, all 14 admitted theorems, definitions, conventions, API claims and Checks. Four of the six previous findings are repaired; two remain.

**Previous findings, checked before the full pass.**

| r4 finding | Passage at this head | Disposition |
| --- | --- | --- |
| R01: preserve base/Part II | README:11 calls the existing work “the base compact-group library”; README:193 starts a new Layer 0, “comparisons with the base theory”. | Not repaired; R01 above. No Part II folder is created. |
| R02: companion Lean files | Only README.md and Suggested.lean remain in the folder. | Repaired. The four companions and their forbidden options/imports are gone. |
| R03: compact-to-complex root dictionary | README:883–888: “𝔱 = 𝔷 ⊕ 𝔱'” and “𝔥 = 𝔱' ⊗ ℂ is a Cartan subalgebra”. README:898–918 adds periods, coroot integrality and the simply connected weight lattice. | Repaired. The construction is owned, sourced and included in §§6.6–6.7 Needs. The distinct central-uniqueness overclaim is R02 above. |
| R04: G-finite supplier names | README:402 names `gFiniteSubmodule`; README:429 names `gFiniteSubmodule_dense`; README:1240 records `gap:banach-gfinite-density`. | Repaired for names and mathematics. The submodule now has a real body and the density conclusion uses its carrier. The base/extension layer distinction remains part of R01. |
| R05: source inventory | References at README:1251–1260 list the three works; sources.toml is absent. | Not repaired; R04 above. |
| R06: typography | README:579 says “χ is 1”; README:1067 says “Exterior powers 1,…,n”; §§6.2–6.9 use χ, λ, SU(2) and SO(3). | Repaired at the cited locations. |

**Gate, build and signature evidence.** HEAD is `fa45b408502611f8664c0ba8a35324a60499aea7`. The supplied gate says every check is zero and ends `build=0 OK`; no failure was omitted. The prescribed outside-folder diff is empty, and the worktree was clean. The family index is unchanged. This review ran the dependency command, which printed exactly:

```text
depcheck: 204 roadmaps, 1490 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. No unlisted-roadmap finding is raised. The base/extension citation defect in R01 is not detected by this name-level check.

The checked library HEADs equal the manifest pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. After the permitted targeted builds of `TauCeti.RepresentationTheory.Compact.PeterWeyl` and `TauCeti.RepresentationTheory.SU2.Exhaustion`, `lake env lean` on Suggested.lean exited 0 with exactly 14 `declaration uses sorry` warnings. The initially missing imported object reported by the worker was therefore resolved, not treated as a mathematical failure.

A separate scratch copy with `#check @name` for **all 19 declarations** also elaborated: 14 theorems, three definitions and two local instances. The density theorem retains compactness, Hausdorffness, completeness and orbit continuity. The two countability equivalences retain the required group/topology assumptions; the L² one retains BorelSpace. The circle-product obstruction uses the full Borel sigma algebra through its local instances and does not accidentally retain an unrelated G. Finite-coordinate factorization does not acquire compactness or commutativity. `compactCharacter` correctly retains only CommGroup and TopologicalSpace. U(2) and SU(2) retain continuous parameter maps; SU(2) additionally retains unitarity. No missing standing binder was found, and no source signature was changed.

For **all 14 admissions**, a scratch copy tried closing the goal with `rfl`, `simp`, or `infer_instance`, each required to solve the whole goal. All 14 remained open. Reading the pinned APIs found no single-lemma replacement for these headline statements. The successful one-lemma test in R03 concerns an input in the README, not an admission in Suggested.lean. There is no sorried data, `set_option`, admitted example, boundary-only admission, or `lemma` declaration in Suggested.lean.

**Headline inventory.**

| README result | Acceptance coverage |
| --- | --- |
| Invariant metric classification (§§1.2–1.3) | Positive scalar classification stated at Suggested.lean:39. The chosen isotypic tensor decomposition required by the full multiplicity-space comparison is named unavailable in the module docstring. |
| Banach G-finite density (§2.1) | `gFiniteSubmodule_dense`, line 101; its two supporting definitions have real bodies. |
| Four-way countability/metrizability and arbitrary circle-product obstruction (§3.1) | Three theorems at lines 116, 123 and 135. Compact Hausdorff metrizability versus second countability uses the native topological comparison. |
| Finite-coordinate characters, product dual and circle-product indices (§4.1) | Three theorems at lines 154, 169 and 182. The discrete direct-sum topology and coordinate evaluations are explicit. |
| Abelian irreducible-character bijection, uniform density, exact Fourier basis (§5.1) | Three theorems at lines 205, 214 and 221; scalar action and individual basis vectors are specified. |
| Continuous representation ring, root dictionary, descent and maximal-torus restriction (§6) | Global ring comparison and root dictionary named unstated in the module docstring; their maximal-torus/lattice/cover carriers are not supplied at the pins. No stand-in proposition is used. |
| Genuine U(2) weight recognition (§6.9) | `u2_weight_character_iff`, line 233, including zero dimension and negative determinant twists. |
| SU(2) multiplicities, realization and faithfulness (§7.1) | Two theorems at lines 253 and 266. The partition count follows from the multiplicity classification and is checked below. |
| Continuous-kernel/Hilbert–Schmidt comparison (§0.2) | Named unstated in the module docstring; no native Hilbert–Schmidt carrier was found. §0.1 is supporting categorical comparison work in the README, not a substitute acceptance theorem. |

**Seeded sources and locators.** Sources were fetched through the sources service. `knapp` is the [author-distributed digital second edition](https://www.math.stonybrook.edu/~aknapp/download/Beyond2.pdf); `etingof` is the [MIT 18.755 Spring 2024 Lecture 11 text](https://ocw.mit.edu/courses/18-755-lie-groups-and-lie-algebras-ii-spring-2024/mit18_755_s24_lec11.pdf). Printed pagination and theorem numbering agree with the cited editions. There are no README locators expressly flagged unverified.

| Target | Text or pinned input opened | Outcome |
| --- | --- | --- |
| 0.1 | Mathlib Continuous/Basic:54,80; FDRep:63; FiniteDimension:282 | The stated deduction uses continuous linear intertwiners and finite-dimensional Hausdorff topology. ContRepresentation itself supplies no parameter continuity. |
| 0.2 | OperatorTheory/OperatorIdeals Part C OI-C01–OI-C11, main README:530–558; Mathlib HilbertBasis Parseval | A deduction, correctly labelled. The column model and norm identity allow arbitrary basis index. Finite-rank kernels and uniform approximation avoid a separability assumption. |
| 1.1 | Finite-dimensional Riesz/adjoint comparison; explicit inner-product convention | A deduction, not a claimed Knapp theorem. Gram operator is placed in the linear second slot. |
| 1.2 | Knapp Prop.4.8/Cor.4.9, p.240: `knapp line 10109`–10120; native scalar Schur | Supports scalarity; real positivity and the isometry scaling are additional elementary deductions. The native theorem permits the stated arbitrary group. |
| 2.1 | Native RepresentativeDensity:142; Integrated/Basic:141,178,188,198,403 | Strong continuity, uniform bound, left covariance and approximate-identity convergence are the supplied inputs. Banach density is explicitly deduced, not attributed to norm-continuous-only sources. |
| 3.1 | Etingof §37.1 p.199: `etingof line 9`–12; Thm.37.5 p.202: line 151–157 | The source assumes a countable base. README:525–527 correctly limits that attribution; the unrestricted equivalence is a deduction from the native general Peter–Weyl theorem. |
| 4.1 | Conway VII.9 Ex.11; native PontryaginDual:84 and Circle:483 | Conway not text-certified. The displayed finite-coordinate argument independently works for nonabelian, noncompact factors as stated. |
| 5.1 | Conway VII.9 Exs.8–10; native Peter–Weyl and Mathlib Irreducible:85 | Conway not text-certified. The mathematical deduction survives the sign/orthogonality checks; cite the existing dimension-one input (R03). |
| 6.1 | Native compact complete reducibility, character basis, VirtualCharacter:132; generic group completion | Correctly distinguishes continuous characters from the unrestricted algebraic virtual-character carrier. It is a new continuous comparison, not a claimed external ring theorem. |
| 6.2 | Knapp Prop.4.58 pp.264–265: `knapp line 11115`–11136 | The equivalent period condition is λ(ker exp)⊆2πiℤ. Writing λ=iℓ gives the README's 2πℤ condition. |
| 6.3 | Hodge/Conjugation:112,124,143 | Existing conjugation is semilinear and sends an eigenvalue to its conjugate. On the circle that is the inverse character; simultaneous weight spaces are the new application. |
| 6.4 | LieGroups Layer 6, main README:395; actual normalizer action | A deduction from the quotient, with inverse conjugation making a left action. The SU(3) two-reflection test fixes the order. |
| 6.7 | Knapp Thm.5.110 pp.335–336: `knapp line 14203`–14247; LieHighestWeight Layer 6 README:790–798 | The global ring isomorphism is a triangular deduction, not the literal statement of 5.110. The supplier provides finite lower weights and distinct-orbit sums. |
| 6.9 | Same Knapp theorem, and native SU2/Weight:105,134 | Highest-weight existence plus finite weight strings imply the outward-difference criterion; neither Weyl invariance alone nor positivity in the torus basis is substituted. |
| 7.1 | SU2/Exhaustion:299; SU2/TorusConjugacy:153; SU2/Weight:134 | Classification, torus conjugacy and explicit weights support the kernel deduction. The smooth comparison separately cites LieGroups Layers 0,2,3. |

The added **§6.5** was also checked in full: Proposition 2.13 p.136 (`knapp line 6121`); Proposition 4.24 and Corollaries 4.25–4.26 p.249 (lines 10491–10511); Theorem 4.29 pp.250–251 (10549–10580); §IV.5 equations (4.31)–(4.32) pp.253–254 (10666–10714); Proposition 4.59 p.265 (11137–11141); Proposition 4.67 p.267 (11241–11245); Theorem 4.69 p.268 (11261–11263); and Theorem 5.107 p.334 (14142–14152). The last proof uses semisimple highest-weight existence and integration, both now owned or supplied before the application. None proves uniqueness after forgetting a central character (R02).

**Adversarial computations (82 rows).** In the table, “retain” means no correction indicated by the computed instance. It does not claim a finite test proves a universally quantified theorem. Zero rings, characteristic-p analytic coefficients, noncompact Haar probability, and non-Lie groups in Layer 6 lie outside the explicit domains; field-general orbit finiteness is tested over 𝔽₂. The S₃ cases test noncommutative order; arbitrary circle products test cardinality and Borel conventions.

| Statement | Instances tried | Values on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| Irreducibility convention | 0, trivial ℂ, trivial ℂ² | Subrepresentation-lattice sizes 1,2,>2; irreducible values false,true,false | Retain |
| Coefficient versus trace | Circle scalar action at i | ⟨i,1⟩=−i; trace=i; inverse-character coefficient=i | Retain |
| Nonabelian coefficient normalization | S₃ standard representation, 3-cycle and identity | c(e₁,e₁)=cos(2π/3)=−1/2 and 1; zero vector gives 0 | Retain |
| 0.1 Hom comparison, identity/composition | Trivial ℂ; maps 2I,3I | Underlying composite 6I=6I; identity I=I | Retain |
| 0.1 subobjects and irreducibility | 0 and trivial ℂ | Same lattices of sizes 1 and 2; same false/true irreducibility | Retain |
| 0.1 tensor and dual | C₃ with χ(g)=ω | Tensor trace ω²=ω²; dual trace ω⁻¹=ω²≠ω | Retain |
| 0.2 kernel norm | Two atoms of mass 1/2; k=1 | A is averaging projection, HS²=1; ∫∣k∣²=4/4=1 | Retain |
| 0.2 null-kernel identification | k=0; μ=0,k=1 | Operator norm and kernel L² norm both 0; nonzero continuous k need not be detected for μ=0 | Retain |
| 0.2 linearity and adjoint | k(1,2)=i, other entries 0 | A₁₂=i/2; A*₂₁=−i/2; HS²=1/4=kernel integral | Retain |
| 0.2 Haar convolution comparison | C₂, f(e)=2,f(s)=0 | A=I on two-dimensional L²; HS²=2; ∫∣f∣²=(4+0)/2=2 | Retain |
| Base C₃ orthogonality | Characters 1,χ,χ² | Diagonal pairing 3/3=1; off-diagonal (1+ω+ω²)/3=0 | Retain |
| Base SU(2) normalization | χ₀,χ₁ at identity; constant integral | Traces 1,2; Weyl integral (1/(2π))4(π/2)=1 | Retain |
| 1.1 Gram representation and real linearity | T=2I, v=1,w=i | h(1,i)=2i=⟨1,2i⟩; wrong conjugate slot −2i; Gram(h+h)=4I | Retain |
| 1.1 positivity | ℂ, T=0,2I; zero space | h(1,1)=0,2; strict positivity false,true; zero-space condition vacuous on both sides | Retain |
| 1.1 invariance iff commutation | diag(1,2), trivial and swapping actions | Trivial action: commutes and invariant. Swap: h(Se₁,Se₁)=2≠1; ST≠TS | Retain |
| 1.2 unique positive scalar | Irreducible ℂ,T=2I; trivial ℂ²,T=diag(1,2) | Unique c=2; second model needs c=1 and c=2 simultaneously, excluded by reducibility | Retain |
| 1.2 metric isometry | h₂=4h₁ | h₂(v/2,v/2)=h₁(v,v); inverse 2I composed with I/2 gives I | Retain |
| 1.3 commutant algebra | Two copies of one irreducible | E₁₂E₂₁=E₁₁, E₂₁E₁₂=E₂₂; adjoint E₁₂*=E₂₁ on both sides | Retain |
| 1.3 positivity and change of multiplicity basis | A=diag(1,2), U swaps coordinates | UAU*=diag(2,1); inverse blocks diag(1,1/2); positive eigenvalues 1,2 on both sides | Retain |
| 1.3 empty and simple blocks | V=0; one irreducible copy | Empty product has one element and unique positive form; single block ℂ has positive cone ℝ>0 | Retain |
| Finite-group averaging | C₃, trivial action | Normalized average h; unnormalized sum 3h; factor 1/3 restores h | Retain |
| 2.1 IsGFinite and submodule | Zero; trivial vector over 𝔽₂; two distinct Fourier modes | Orbit dimensions 0,1,2; sum-span bound 2≤1+1; scalar 0 gives dimension 0 | Retain |
| 2.1 action/naturality | Rotate a monomial; project two modes onto one | Rotation keeps dimension 1; equivariant projection changes dimension 2 to 1 | Retain |
| 2.1 strong versus norm continuity | Rotations of C(S¹) | Each orbit difference tends to 0; each nonidentity operator difference has norm 2 | Retain |
| 2.1 compactness boundary | ℤ shift on ℓ²(ℤ), δ₀ | Orbit is all δₙ, infinitely many independent vectors; finite-orbit predicate false | Outside compact theorem; retain |
| 2.1 integrated covariance | S₃, f=6δ_(23), h=(12) | T_f=π(23); π(h)T_f=π(123); reversed product π(132) differs | Retain |
| 2.1 mass normalization | Trivial action, mass 1 and mass 2 | T_f v=v and 2v; error 0 and ‖v‖ | Retain |
| 2.1 density error estimate | Cπ=2,‖v‖=3; ‖p−u‖₁<ε/12 | Second error <2·3·ε/12=ε/2; total <ε/2+ε/2=ε | Retain |
| 2.1 compact-vector refinement | Trivial action, Q={v,2v}, mass-one kernels | Supremum of errors 0=0; bounded equivariant scalar map commutes with T_f=I | Retain |
| 3.1 second-countable iff countable dual | Trivial group,Circle,uncountable Circle^J | (true,true), (true,true), (false,false); dual sizes 1,ℵ₀,≥∣J∣ | Retain |
| 3.1 separable L² iff countable dual | Same groups | L² dimensions 1,ℵ₀,≥∣J∣; separability true,true,false | Retain |
| 3.1 Hilbert-basis bridge | 0,ℓ²(ℕ),ℓ²(J) for uncountable J | Basis sizes 0,ℵ₀,∣J∣; distinct basis distance √2>2/3 | Retain |
| 3.1 Borel choice | Empty product; uncountable Circle^J | Empty product sigma algebra {∅,G}; G\{1} Borel and depends on every coordinate, unlike a cylinder-measurable set | Retain |
| 3.1 coordinate orthogonality | χ_j,χ_k, j≠k | Norms 1; pairing 0 by sign translation; squared distance 1+1=2 | Retain |
| 3.1 individual support | χ_j; zero vector | Supports of size 1 and 0; sums of squared coordinates 1 and 0 | Retain |
| 4.1 finite coordinate factorization | Empty product; S₃×C₃, sign times χ | Empty evaluation 1=empty product; at ((12),g), −ω=(−1)ω | Retain |
| 4.1 finite-tail proof | Tail subgroup element with χ(x)=−1 | Its first power is −1, outside centered arc π/2; χ(x)=1 has every power 1 | Retain |
| 4.1 product-dual inverse and generator law | Circle², exponents (1,−1), point (i,−1) | Value −i=i(−1)⁻¹; restrictions recover z and z⁻¹; reconstruction gives −i | Retain |
| 4.1 unique integer multi-index | Circle; weights 0,1,−1 at i | Values 1,i,−i; only exponent 0 is trivial on every circle element | Retain |
| 4.1 reindexing/pullback | Swap Circle²; pull back χ₁χ₂⁻¹ along diagonal | Indices (1,−1)→(−1,1); diagonal pullback z·z⁻¹=1, support shrinks to 0 | Retain |
| 4.1 topology distinction | Coordinate χ_n on Circle^ℕ | Each fixed restriction eventually 1; χ_n(−1,−1,…)=−1 for all n≠limit 1 | Retain |
| 5.1 irreducible/character bijection | Trivial group; C₃; Circle | Irreducible dimensions 1; scalar at generator ω or i; native algebraic theorem supplies dimension | R03: cite input |
| 5.1 compactCharacter operations | Circle χ,χ⁻¹ at i | Product i(−i)=1; conjugate i=−i; trivial character=1 | Retain |
| 5.1 uniform density | C₃; trivial group | Three character vectors have Fourier matrix of rank 3 and span ℂ³; constant 1 spans ℂ | Retain |
| 5.1 exact Fourier basis | χ at i | Required vector i; χ-indexed coefficient would be −i; χ⁻¹-indexed coefficient gives i | Retain |
| 5.1 Fourier coordinates/Parseval | f=cχ+2cψ,χ≠ψ; f=0 | Coordinates (1,2), squared norm 1+4=5; zero coordinates and norm 0 | Retain |
| 5.1 inversion/AE representative independence | Same finite Fourier sum | Reconstruction 1cχ+2cψ=f; changing on a null set changes each integral by 0 | Retain |
| 6.1 group completion | Trivial group, dimensions 0,1,−1 | R=ℤ; zero=0, unit=1; −1 is virtual but not a genuine dimension | Retain |
| 6.1 tensor, dual and restriction | Circle χ at i, dual χ⁻¹; restriction to {1} | i(−i)=1; dual trace −i; restrictions both dimension 1 | Retain |
| 6.2 weight sum and Fourier uniqueness | Trivial ℂ²; zero module; character z⁻¹ | Multiplicity 2 at weight 0, trace 2; empty weights trace 0; weight −1 trace −i at i | Retain |
| 6.2 tensor and dual labels | Circle weights 1 and −1 | Tensor label 0 and trace 1; dual of 1 has label −1 and trace −i at i | Retain |
| 6.2 period lattice | Slopes 1 and 1/2, period 2π | exp(2πi)=1; exp(πi)=−1; only first descends | Retain |
| 6.3 opposite weights | Real rotation plane, v=e₁−ie₂ | Rθv=e^(iθ)v; c(v)=e₁+ie₂ has e^(−iθ); multiplicities 1=1 | Retain |
| 6.3 semilinearity and involution | Same v; trivial real line | c(iv)=−ic(v); c²(v)=v; c(1)=1,c(i)=−i; fixed space ℝ | Retain |
| 6.4 representative independence and action law | SU(3), s₁=(12),s₂=(23),e₁ | (s₁s₂)e₁=e₂; (s₂s₁)e₁=e₃; multiplying representative by t∈T leaves conjugation on T unchanged | Retain |
| 6.4 orbit sums and ring action | SU(3) weight (1,1,0); zero | Orbit sizes 3 and 1, not 6; e^λe^μ maps to e^(wλ+wμ)=e^(w(λ+μ)) | Retain |
| 6.5 center/derived splitting | Circle,SU(2),U(2) | Real dimensions 1=1+0,3=0+3,4=1+3; U(2) central Killing value B(I,I)=0 | Retain |
| 6.5 compact cover and finite kernel | Circle; SU(2)→SO(3); S¹×SU(2)→U(2) | Kernel orders 1,2,2; Lie dimensions 1,3,4 preserved | Retain |
| 6.5 torus pullback/descent | U(2) cover, pairs (q,a)=(1,1),(0,1) | Kernel scalar (−1)^(q−a)=1,−1; first descends, second does not | Retain |
| 6.5 complexified pair | SU(2),U(2),torus | sl₂ dimension 3 with Cartan dimension 1; gl₂=ℂI⊕sl₂ dimension 4; torus derived pair 0 | Retain |
| 6.5 roots and zero space | SU(2), H=diag(1,−1); U(2) | [H,E₁₂]=2E₁₂, [H,E₂₁]=−2E₂₁; root spaces dimension 1; zero spaces dimensions 1 and 2 | Retain |
| 6.5 differential normalization | SU(2), χ(z)=zⁿ | λ(diag(iθ,−iθ))=inθ; λ(H)=n; root α(H)=2 | Retain |
| 6.5 integrality/dominance | n=1,−1,1/2; zero-root torus | Coroot values 1,−1,1/2; dominant integral true,false,false; all torus integers dominant | Retain |
| 6.5 simply connected/quotient lattice | SU(2) versus SO(3) | SU(2) weights ℤ; SO(3) weights 2ℤ; index 2=cover kernel order | Retain |
| 6.6 central uniqueness | Circle χ₀,χ₁; U(2) weights (1,0),(2,1) | Derived restrictions 0=0 and 1=1, but central characters differ (Circle values 1,i; U(2) exponents 1,3) | Fails without fixed central character; R02 |
| 6.6 descent and intertwiners | SU(2) weights 1,2; U(2) pair (1,1) | −I scalars −1,+1; only weight 2 descends to SO(3); 2I pulls back/descends as 2I | Retain |
| 6.6 tensor/dual and connected differentiation | U(2) standard and dual; Circle χ₁ | Kernel scalars +1,+1 and product +1; dχ₁=i distinguishes it from dχ₀=0 before restriction to derived algebra | Retain |
| 6.7 restriction isomorphism | Trivial group and Circle | Rings ℤ=ℤ and ℤ[t,t⁻¹]=ℤ[t,t⁻¹]; t⁻¹ maps to t⁻¹ | Retain |
| 6.7 triangular leading orbit | SU(2), highest weight 2 and 0 | χ₂=t²+1+t⁻²=(t²+t⁻²)+1; χ₀=1, leading coefficient 1 in both cases | Retain |
| 6.7 positive-cone distinction | SU(2) t²+t⁻² | Torus coefficients 1,1; irreducible coefficients χ₂−χ₀ give 1,−1 | Retain |
| 6.8 U(n) finite-kernel congruence | U(3),λ=(2,1,−1); fundamental module with q=0 | q=2; a₁+2a₂=1+4=5≡2 mod3. Wrong q gives kernel scalar ζ⁻¹≠1 | Retain |
| 6.8 ranks 0,1 and generators | U(0),U(1),U(2) | Rings ℤ,ℤ[t,t⁻¹]; mod1 condition vacuous; det·det⁻¹=1 | Retain |
| 6.9 U(2) weight strings | L_(2,0),L_(−1,−1) | Weights (2,0),(1,1),(0,2) each 1; determinant inverse has only (−1,−1) | Retain |
| 6.9 recognition, reconstruction and dimension | f values 1,2,1 on degree-2 string | Outward differences 1,1; reconstructed f=(1,2,1); dimension 1+2+1=3+1=4 | Retain |
| 6.9 failed converse without inequality | f(1,−1)=f(−1,1)=1; f(0,0)=0 | Weyl symmetry true; central inequality 0≥1 false; integral multiplicity −1 | Retain negative control; do not use truncated subtraction to hide failure |
| 6.9 zero and negative powers | f=0; det⁻¹ at diag(i,−1) | Dimension/trace 0; both inequalities 0≥0. det=−i, inverse=i; diagonal entries nonzero | Retain |
| 7.1 multiplicity dimension and realization | m₀=2; m₁=2; empty m | Dimensions 2,4,0; character at identity 2,4,0; faithfulness false,true,false | Retain |
| 7.1 multiplicity uniqueness | Two copies Sym¹ versus Sym³, both dimension 4 | At torus −1 both trace −4, but weights are {−1,−1,1,1} versus {−3,−1,1,3}; full characters distinguish | Retain |
| 7.1 irreducible kernel | d=0,1,2; z=i,−1 | Kernels SU(2),{I},{±I}; z=i eigenvalues (−i,i), (−1,1,−1); z=−1 gives −I,+I | Retain |
| 7.1 faithful direct sums | Sym¹⊕Sym¹; Sym²⊕Sym⁰ | Kernels {I}∩{I}={I}; {±I}∩SU(2)={±I}; odd highest weight present iff faithful | Retain |
| 7.1 topological/smooth embedding | Standard SU(2) action; trivial action | Standard kernel {I}, differential kernel 0; trivial kernel SU(2), differential kernel dimension 3 | Retain |
| 7.1 partitions and count | n=0,1,2,3,4 | p(n)=1,1,2,3,5; p_odd(n)=1,1,1,2,2; differences 0,0,1,1,3 | Retain |

**Duplication and supplier audit.** Object searches were made with the roadmap service, pinned-source searches, the supplied open checkouts and board packages. Main CompactGroups, main LieGroups and Completed/OrthogonalL2Bases were read as shape/reference examples. The extended open LieGroups text and open BanachSpaceTheory text contain overlapping future root-dictionary and Hilbert-countability work; both revise existing main roadmaps and are ineligible dependencies under this brief. Main LieGroups has no Layer 5A and main BanachSpaceTheory B5 does not state the Hilbert-countability bridge. Thus neither open revision was silently treated as a supplier. The explicit local targets avoid an unowned input at the allowed baseline; when ownership is coordinated, the general results must have one owner rather than two implementations.

Searches found no duplicate fully qualified name for the new Suggested.lean declarations in another supplied roadmap. Matches in the same CompactGroups checkout were excluded. Generic algebraic representation rings and virtual characters were found, but do not encode continuity; the general Hilbert–Schmidt carrier was not found at the pins. The specific native input duplicated in §5.1 is R03.

| Cross-roadmap citation | Resolution and limit |
| --- | --- |
| LieGroups Layers 0,2,3,4,5,6 | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233,275,300,326,358,383`: exponential/local inverse; closed subgroup/automatic smoothness; differentiation and exponential naturality; integration from simply connected groups; covering homomorphisms; maximal tori, conjugacy and normalizer quotient. These are the contracts actually used. |
| LieGroups Layer 7 | Same main file:407–426 supplies group complexification and the continuous/holomorphic representation comparison. It does not supply the root identification on main; the README excludes it as a premise. |
| LieHighestWeight Layers 0–6 | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:319,351,370,405,537,567,790`: sl₂, Cartan/root framework, integral weights, highest-weight modules, classification, complete reducibility, orbit sums and finite lower weights. The Layer 6 precursor at 608 and the fragment at 915 consume the base compact theory, explaining R01. |
| LieHighestWeight Layers 7,9 | Same main file:931,1432: enveloping center and reductive comparisons. Ownership boundaries, not analytic premises. |
| OperatorTheory/OperatorIdeals Part C | Main `TauCetiRoadmap/OperatorTheory/OperatorIdeals/README.md:530–558`: all OI-C01–OI-C11 exist, including arbitrary-index column reconstruction and its norm identity. |
| Completed/OrthogonalL2Bases Part B | `Completed/OrthogonalL2Bases/README.md:245`: generic weighted-basis assembly; no second construction is proposed here. |
| CharacterTheory Layers 0–4 | Main `TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md:260,302,347,397,713`: finite-group pairing, algebra, table and arithmetic. These boundaries do not duplicate the arbitrary compact analytic extension. |
| CharacteristicClasses C5.1 | Main `TauCetiRoadmap/CharacteristicClasses/README.md:1060`: compact invariant-polynomial restriction, not continuous character-ring restriction. Its separate prospective LieGroups Layer5A citation is not imported by this roadmap. |
| AutomorphicFormsOnReductiveGroups §§2.1,2.7 | Roadmap-service head, `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:51,300,468`: declared Banach G-finite gap, locally convex extension and complex smooth vectors. Consumer direction only. |
| SmoothBanachRepresentations §4.1 | Roadmap-service head, `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:286–296`: real extension and compact-finite smooth comparison, consuming the preceding complex result. The brief's shorter checkout path did not exist; the service resolved the nested folder. |

Every Needs line was read. Layers 0–5 use pinned inputs and earlier local work; §6.3's adjoint specialization explicitly waits for §6.5 and is not used to prove §6.5. Sections 6.5→6.6→6.7 give the structure/descent/ring order; §6.9 does not assume ring surjectivity. Layer 7's analytic classification is independent of its additional smooth-embedding comparison. No new dependency cycle or upward supplier was found beyond the base/extension identity problem explained in R01.

**Pinned declaration evidence.** The following declarations and defining bodies/signatures were opened; paths are library-relative. This list records what is used, rather than claiming absence from a newer library.

- Mathlib: `RepresentationTheory/Continuous/Basic.lean:54,72,80` (`ContRepresentation`, `toRepresentation`, `ContIntertwiningMap`); `RepresentationTheory/FDRep.lean:63` (`FDRep`); `RepresentationTheory/Irreducible.lean:29,70,85` (`IsIrreducible`, scalar Schur, dimension one); `Topology/Algebra/Module/FiniteDimension.lean:282` (`LinearMap.continuous_of_finiteDimensional`); `Topology/Algebra/PontryaginDual.lean:37,84` (continuous Circle homomorphisms, compact-domain discreteness); `Analysis/SpecialFunctions/Complex/Circle.lean:483` (small-arc power criterion); `Analysis/InnerProductSpace/l2Space.lean:376,413,445,449,471` (HilbertBasis and coordinates/density/Parseval); `Topology/Algebra/InfiniteSum/ENNReal.lean:553` (finite total mass implies countable support).
- Tau Ceti: `RepresentationTheory/Compact/Haar.lean:93,97,113` (normalized measure and mass); `Compact/Averaging.lean:59`; `Compact/Unitarizable.lean:125,271`; `Compact/UnitaryModel.lean:92`; `Continuous/Schur.lean:86`; `Continuous/OrthogonalDecomposition.lean:194`; `Continuous/Unitary/Equivalence.lean:58` (the cited isometry theorem has an irreducibility hypothesis, correctly used in §1.2); `Continuous/MatrixCoefficient.lean:73`; `Compact/MatrixCoefficient.lean:73`; `Compact/SchurOrthogonality.lean:109,127`; `Compact/RepresentativeDensity.lean:142`.
- Tau Ceti integrated action: `RepresentationTheory/Continuous/Integrated/Basic.lean:141,178,188,198,403`. The additive carrier is only a type tag: no commutativity is needed for left covariance. The complete target and concentrating mass-one, uniformly L¹-bounded weights are present in the convergence theorem.
- Tau Ceti basis/characters: `RepresentationTheory/Compact/PeterWeyl.lean:142,668,675,711,721` (`IrrepModel`, `IrrepClass`, chosen model, basis, coefficient equation); `Compact/Character/Basis.lean:346,356`; `Compact/FourierPeterWeyl.lean:123,147`; `Analysis/Fourier/AddCircle.lean:246`; `RepresentationTheory/CharacterTable/VirtualCharacter.lean:132` (algebraic FDRep characters, no parameter-continuity condition); `RepresentationTheory/RepresentationRing/Basic.lean:16` describes the algebraic split ring of FDRep, likewise without continuity.
- Tau Ceti real/compact comparisons: `Geometry/Hodge/Conjugation.lean:112,124,143` (actual conjugation and eigenvalue comparison); `RepresentationTheory/Compact/FrobeniusSchur/InvariantForm.lean:135,148` and `StructureMap.lean:130`; `RepresentationTheory/SU2/Weight.lean:105,134`; `SU2/TorusConjugacy.lean:153`; `SU2/Exhaustion.lean:99,299`. The symmetric-power coordinate model need not be unitary; the README explicitly unitarizes before coefficient calculations.

The native definitions exclude the plausible wrong models: irreducibility includes a nontrivial lattice; IrrepModel includes parameter continuity, unitarity and irreducibility; a Pontryagin dual element is a continuous homomorphism, not an arbitrary function; ContRepresentation alone has no topology on G and therefore supplies no orbit continuity. The new Lean signatures respect each distinction.

The definitions in the README have API lists and at least three discriminating Checks. Map directions, inverses, positivity, the 2π normalization, conjugate-first coefficients, Weyl-action order and quotient-lattice parity have explicit witnesses above. No executable algorithm, route-specific prime restriction, source passage copied into the roadmap, or suspicious instruction was found.

## Not verifiable

- **Conway VII.9 Exercises 8–11:** text unavailable through the legal source service; the DOI resolves to a paywalled publisher. The previous review already recorded this as uncertified. I did not verify the exercise wording, page numbers or full hypotheses and did not request it again. The README's mathematical assertions were checked independently against the displayed arguments and pinned interfaces; that does not certify the locator. R04 records the inventory repair.
- The universal theorems in Suggested.lean remain admitted. Successful elaboration and the instance table do not establish their proofs. No acceptance is claimed on that basis.

## Source issues

- **Misprint** in etingof at Corollary 37.7 proof, printed p.203 (`etingof line 176`): the source says the quotient defined using the first m irreducibles embeds in the unitary group of the first n; it should be the unitary group of the first m irreducibles; affects the proof.
