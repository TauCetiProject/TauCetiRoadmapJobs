# Review of AffineLieAlgebras (pull request #1201 at ddffe47)

**Verdict:** needs changes

## R01 (P1) — The algebraic current space is not complete in infinite dimension

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:97–103`: “Prove Hausdorffness, completeness, continuity of bracket and basis independence.”

**Claim:** The order topology makes the stated algebraic tensor product F⊗L complete for an arbitrary Lie algebra L. The preceding finite-dimensional qualification applies to the series identification, but does not qualify this completeness assertion.

**Witness:** Take the abelian L=⊕ₙ≥0 ℂeₙ. The partial sums sᵣ=Σₙ<ᵣtⁿ⊗eₙ are Cauchy. A limit would have coefficients e₀,e₁,…, whereas every algebraic tensor has coefficients in one finite-dimensional subspace of L.

**Repair:** Distinguish algebraic currents from their order completion. State completeness of the algebraic tensor product under finite-dimensionality; for general L construct the completion and its coefficient-series comparison, with the algebraic tensor product densely embedded. Keep the general current theory. In this example sᵣ then converges to the completed current Σₙ≥0tⁿeₙ, while it still has no algebraic-tensor limit. Add this negative control as a Check.

## R02 (P2) — Put the new lattice branch in a Part II roadmap

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:11` and `:442`: “Also construct the positive even-lattice vertex algebra and its ADE degree-one Lie comparison”.

**Claim:** This independently developed extension is added inside an existing roadmap.

**Witness:** Main already contains `TauCetiRoadmap/AffineLieAlgebras/README.md`, with A1–A8 and the same center endpoints. The diff adds C7; it does not supply an implementation of an existing C7 target.

**Repair:** Move the new branch and its acceptance signatures to AffineLieAlgebrasPartII. Its introduction should identify where A1–A8 stop, import their generic field/vertex foundation by section, and own the additional oscillator/lattice construction and ADE comparison. Keep corrections to existing A1–A8 here. Verify that the A₁ lattice weight-one comparison is owned exactly once and does not make A1–A8 depend on Part II. This is a repairable extension-boundary issue, not a reason to discard the mathematics or re-plan the base roadmap.

## R03 (P2) — Import the two results already assigned to suppliers

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:782`: “Prove the Lie/group-invariant adapter for connected groups”; also `:677–679`, the norm-two-shell identification.

**Claim:** A7 rebuilds the connected-group versus Lie invariants comparison, and C7 restates the ADE shell theorem after explicitly identifying its supplier.

**Witness:** `TauCetiRoadmap/FormalConnectionsOpers/README.md:1461–1468` owns Vᴳ=Vᵍ and its symmetric-power application. Main `TauCetiRoadmap/ReductiveGroups/README.md:1135–1141` owns the norm-two-shell/root-set identification and its explicit index maps.

**Repair:** Replace these proof targets with exact imports from FormalConnectionsOpers F4.3 and ReductiveGroups §9A.1a. Retain the current-specific jet theorem, the κ₀ comparison where genuinely additional, and the VOA-to-raw-bracket comparison. On SL₂ the imported degree-two invariant is the quadratic Casimir on both sides; for A₂ the imported shell is the same six roots, giving the retained weight-one dimension 2+6=8. Neither import needs a new ownership edge to a later supplier.

## R04 (P2) — State the finite-dimensional Whitehead endpoint

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:120–125`; `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean:21–31`.

**Claim:** A1 explicitly undertakes the two finite-dimensional Whitehead vanishing theorems, but neither appears among the acceptance signatures. The docstring's missing-topology explanation concerns continuous current cohomology, not finite-dimensional Lie cochains.

**Witness:** Mathlib `Algebra/Lie/Cochain.lean:101,123,156` supplies d₁₂, d₂₃ and twoCocycle. A scratch signature for every finite-dimensional complex semisimple L and finite-dimensional L-module M, asserting every two-cocycle is d₁₂f, elaborated successfully.

**Repair:** Add the finite-dimensional Whitehead signatures on native cochains, explicitly retaining finite dimension, semisimplicity, and the module action. Degree one can be stated as every derivation into M being inner. Leave the separate continuous-current classification in the not-statable list. For L=sl₂ and trivial M=ℂ, d₁₂f(e,f)=−f(h); for the abelian two-dimensional negative control, the alternating form c(e₁,e₂)=1 is not a coboundary because d₁₂=0. The semisimplicity hypothesis excludes precisely this control.

## R05 (P2) — The orthogonal-sum signature forgets the promised comparison

**Location:** `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean:951–959`, compared with `TauCetiRoadmap/AffineLieAlgebras/README.md:663–670`.

**Claim:** The stated endpoint is only `Nonempty` of an ungraded linear equivalence. The README promises the specified graded vertex-operator-algebra equivalence, its tensor-mode formula, and its conformal-vector equation.

**Witness:** For two rank-zero lattices both Fock spaces are ℂ. Multiplication by −1 is a linear equivalence satisfying the Lean conclusion, but sends the vacuum 1 to −1; it cannot be a vertex-algebra comparison.

**Repair:** Name the graded VOA tensor-product/isometry endpoints and their missing field/conformal carriers in the module docstring, and remove this weakened substitute. When those carriers are available, state the comparison with vacuum, fields, grading and conformal-vector laws. On the rank-zero control the marked map must send 1 to 1, excluding −id. A separate linear-factorization fact can remain in the README's API.

## R06 (P3) — Delete acceptance-test padding

**Location:** `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean:113,401–428,542–564`; also the projection/definition theorems throughout the file.

**Claim:** The acceptance file contains routine API and definitional consequences rather than only its headline theorems.

**Witness:** Seven admitted declarations close in isolation with one tactic: `criticalSymm`, Heisenberg Jacobi and both central brackets, cover central-involution commutation, and the two cover unit laws. The successful combined probe has 21 remaining sorry warnings and no errors.

**Repair:** Delete them from `Suggested.lean`; keep their mathematical API in the README. Also delete the existing projection/`rfl` wrappers, the one-library-lemma PBW example, the boundary-case `latticeWeightSpace_zero`, and unused API scaffolding such as the unused charge-coefficient calculation and `dividedDerivativeFactor`. Do not “prove them in place.” The controls remain true after deletion: both central Heisenberg brackets are (0,0), and both cover products with (0,1) return (α,s).

The seven successful tactics were:

| Declaration | Single tactic used |
| --- | --- |
| `RankOne.criticalSymm` | `exact LinearMap.BilinForm.IsSymm.smul _ (LinearMap.BilinForm.isSymm_iff.mpr (LieModule.traceForm_isSymm ℂ Sl2 Sl2))` |
| `abelianHeisenbergBracket_jacobi` | `simp [abelianHeisenbergBracket]` |
| `abelianHeisenbergBracket_central_left` | `simp [abelianHeisenbergBracket, abelianHeisenbergCentral]` |
| `abelianHeisenbergBracket_central_right` | same tactic |
| `latticeCover_centralInvolution_commutes` | `simp [latticeCoverMul, latticeCoverCentralInvolution, C.epsilon_zero_left, C.epsilon_zero_right]` |
| `latticeCover_one_mul` | `simp [latticeCoverMul, latticeCoverOne, C.epsilon_zero_left]` |
| `latticeCover_mul_one` | `simp [latticeCoverMul, latticeCoverOne, C.epsilon_zero_right]` |

All 28 admitted theorems were subjected to a one-tactic probe; failure of the other probes is not evidence of truth or depth. The successful statements were then checked together without any failing-probe declarations replacing the other admissions.

## R07 (P3) — Supply claim-level locators and the cocycle normalization adapter

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:471–495,650–674,747–758,1011–1035`.

**Claim:** The six sampled C7 blocks lack claim-level theorem/page locators. The only identified lattice-VOA theorem uses a different diagonal cocycle convention, and the two “normalized” note sources have no recoverable author/title/URL. There is no `sources.toml`.

**Witness:** Bakalov–Kac equation (4.1), printed p.8, gives ε(α,α)=−1 for a norm-two generator; the roadmap's empty lower-triangular sum gives +1. The same source's Theorem 4.1 is on p.9, not an ADE identification theorem.

**Repair:** Add exact locators next to the claims and record each work once in `sources.toml`. Explain the change from the source's diagonal convention, or give the direct proof under the stated general cocycle laws. For the same off-diagonal choice, use c(a)=(-1)^(Σᵢq(bᵢ)·binom(aᵢ,2)); its coboundary contributes (-1)^(Σᵢq(bᵢ)aᵢbᵢ). On A₁, c(1)=1 and c(−1)=−1, converting the opposite-root sign correctly. This is not a counterexample to the roadmap's cocycle: its convention is valid. Identify the two note sources or remove the historical attribution paragraph; retain the construction targets. The verification table below identifies what the readable sources actually support.

## R08 (P3) — Restore definition APIs, discriminating Checks, and layer dependencies

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:1–1035`; `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean:64–118,626–958`.

**Claim:** The README has no `*Needs:*` lines, no `**Checks.**` lists, no numbered layer/subsection structure, and no per-layer Examples/Dependencies endings. Definitions have prose obligations, but not the required API and three discriminating Checks. Numerous Lean names and declaration docstrings are missing from the README/file correspondence.

**Witness:** Searching the whole README for `Checks`, `Needs`, or `###` returns no matches. `dividedDerivativeFactor` and `chargeModeMonomialFormula` have no README identifier; `RankOne.e/f/h` have no declaration docstrings or retained headline use.

**Repair:** Use the requested Scope/Conventions/Exact supplier contracts/build/layer layout. Give each retained definition its API and at least three actual computations; assign each theorem its own prerequisites and source. Remove unused Lean helpers and name every retained declaration in the README, with docstrings and correct layer comments. For the cocycle use rank zero, A₁, and ordered A₂: the commutator values are 1,1,−1, so the third Check rejects the untwisted product. These concrete values are supplied below for reuse.

## Verified sound

This is an independent AI review of the entire folder at the specified head, including inherited A1–A8. It is not an approval. The following evidence distinguishes successful checks from defects and source-access limitations.

**Mechanical checks.** The worker's recorded gate is entirely green, including the targeted build, and there are no gate failures to convert into findings. The head is `ddffe47fa9340697064a311923cd2a041541c8f0`; the outside-folder diff and worktree status are empty. I independently ran `lake env lean` on the original module: exit 0, exactly 28 declaration-uses-sorry warnings, no other warnings. The file has one `import Mathlib`, six individual pinned Tau Ceti imports, 963 lines, no sorry-bodied data, no `set_option`, and no admitted example. No imported object needed rebuilding. A scratch copy with `#check @name` for all **126 named declarations**, including the four inline-attributed theorems, elaborated. The types retain the required data/hypotheses; no silently dropped binder was found. Scalar-order definitions correctly omit the unrelated section variable g; cocycle and lattice operands remain explicit. No worktree file was changed.

Dependency check output:

```text
depcheck: 204 roadmaps, 1437 edges, 0 problem(s)
```

No UPWARD, CYCLE, or moved line was emitted. There are no declared supplier gaps. The absence of `*Needs:*` lines is R08, not evidence that the mathematical dependencies were absent: every supplier citation was also inspected manually. The automated citation recheck found no missing cross-roadmap citation, but explicitly skipped pinned-library names; I checked those locally. The original two leads resolve as follows: `SignedADE.normalizationSign` exists in the main roadmap's `SignedADETargets.lean:199`; `RankOne.feiginFrenkel` is a proposed, nonstatable endpoint, not a pinned declaration, and should be prose under the README/Lean naming rule.

**Headline inventory.** A1: continuous residue-cohomology classification and its finite-dimensional Whitehead prerequisites. A2: central-extension classification/universality and affine loop lifts. A3: polynomial/formal smooth-module equivalence and finite-generation congruence integration. A4–A5: completed algebra and smooth/continuous module equivalence. A6: affine vacuum vertex algebra, Sugawara structure and critical deformation bracket. A7–A8: noncritical scalar centers, critical vacuum and completed Feigin–Frenkel isomorphisms, with exact actions/Poisson normalization. C7: lattice VOA construction, conformal finite-dimensional internal grading, orthogonal-sum/isometry transport, generic Borcherds and weight-one Lie theorems, and raw ADE comparison/Jacobi descent. Borcherds, weight-one alternation/Leibniz, and Fock finite-dimensional/internal grading are represented. The current completion and actual lattice-field/ADE endpoints are honestly identified as unavailable at the pins. Whitehead is the demonstrated statable omission (R04); conformal/graded transport needs its own not-statable entry (R05). The general cochain-signature probe retains semisimplicity and both finite-dimensional hypotheses.

**Pinned declarations opened.** Paths in this list are relative to the named library repository, at Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| Library file and line | Declaration/object and what was verified |
| --- | --- |
| Mathlib `Mathlib/Algebra/Lie/Loop.lean:127` | `LoopAlgebra.residuePairing`: the second mode index multiplies Φ, hence +Res(f dg). |
| Mathlib `Mathlib/Algebra/Lie/Cochain.lean:101,118,123,143,156` | `d₁₂`, trivial-action evaluation, `d₂₃`, `d₂₃_comp_d₁₂`, `twoCocycle`: actual alternating bilinear cochains and CE signs. |
| Mathlib `Mathlib/Algebra/Lie/Extension.lean:135,243,395,427,439` | `LieAlgebra.ofTwoCocycle`, extension constructor, section cocycle and coboundary comparison. `IsCentral` occurs in the TODO, not as a completed native predicate. |
| Mathlib `Mathlib/Algebra/Lie/TraceForm.lean:64,94` | symmetry and Lie invariance of trace/Killing forms. |
| Mathlib `Mathlib/LinearAlgebra/BilinearForm/Properties.lean:95,111` | the two symmetry predicates' equivalence and scalar preservation, used in the successful padding probe. |
| Mathlib `Mathlib/Algebra/Vertex/HVertexOperator.lean:47,65,73,90` | linear map to Hahn modules; coefficient maps and pointwise partially well-ordered support. This supplies truncation over ℤ, not vertex axioms, vacuum, or grading. |
| Mathlib `Mathlib/Algebra/Vertex/VertexOperator.lean:41,53` | existing homogeneous vertex-operator alias and normalized coefficient indexing. |
| Mathlib `Mathlib/Algebra/Category/ModuleCat/ChangeOfRings.lean:519,658` | algebraic coextension and restriction/coextension adjunction; continuous submodule remains additional work. |
| Mathlib `Mathlib/RingTheory/Flat/Basic.lean:258` | unit tensor map injective from `FaithfulSMul R S` and flatness of M, exactly the free signed-carrier argument; no faithful flatness of ℂ/ℤ needed. |
| Tau Ceti `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63,121` | native carrier is full and finitely generated via `IsLattice`; symmetry/integrality are included, positivity/evenness are not. Ambient finite dimension is already available. |
| Tau Ceti `TauCeti/LinearAlgebra/IntegralLattice/Signature.lean:120,175` | positive definiteness and its nondegeneracy consequence. |
| Tau Ceti `TauCeti/LinearAlgebra/IntegralLattice/PosDef/Finite.lean:85` | `IsPosDef.finite_setOf_norm_le`, with no unimodularity premise. |
| Tau Ceti `TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Injective.lean:222` | `pbwAssociatedGradedEquiv` for a free module. |
| Tau Ceti `TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Embedding.lean:53` | `ι_injective` for a free module, hence over ℂ. |
| Tau Ceti `TauCeti/Algebra/AlgebraicGroup/SpecialLinear/Basic.lean:380,402,445` | actual Hopf-point/matrix equivalence, ambient inclusion and coefficient naturality. |
| Tau Ceti `TauCeti/Algebra/Lie/Heisenberg.lean:112` | three-dimensional strictly upper-triangular algebra, distinct from the infinite oscillator-mode extension here. |

**Ownership and supplier audit.** Searches used the roadmap service by object (`Heisenberg`, Fock, lattice vertex algebra, Borcherds, Whitehead, symmetric invariants), plus direct pinned-library and board-package searches. The supplied open checkouts were used where appropriate; search hits for other open work were not treated as verified suppliers. No fully qualified declaration collision was found. FormalLaurentPuiseux and Completed/IntegralLattices were read as shape/context examples, alongside the existing base AffineLieAlgebras roadmap.

| Resolved owner | Consumed contract and direction |
| --- | --- |
| Main `TauCetiRoadmap/FormalLaurentPuiseux/README.md:48–114` and L2–L3 | Laurent coefficient topology, substitution anti-composition, differential/residue calculus. These precede affine currents. |
| Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,405,567` and Layer 7 | Cartan/root spaces, UEA/highest weight, complete reducibility and HC/Chevalley theory. Complete reducibility is in Layer 5/native Tau Ceti, so the introductory “Layers1,3,7” list should include that exact input. |
| Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:321,356` | finite ADE classification, realization and numbered integral root data; later revising open heads were not substituted for main. |
| Main `Completed/IntegralLattices/README.md:162,327` and the pinned implementation | lattice/form definitions and ADE lattice examples; native positive shell finiteness is consumed. |
| Main `TauCetiRoadmap/ReductiveGroups/README.md:1125–1228`; `SignedADETargets.lean:64,165,199` | exact cocycle, raw bracket, shell bridge, normalization signs; C7's new VOA comparison is distinct from the existing elementary integral Jacobi proof. R03 removes the duplicated shell target. |
| Supplied new FormalConnectionsOpers head, F3.1 `README.md:875–904`, F4.3 `:1383–1535`, F5, F7 `:2100–2267`, F8.4 `:2379` | formal loop groups, BCH/finite jets, finite invariant theory, oper functions, classical screening/DS and sign conventions. No Feigin–Frenkel premise is needed. R03 identifies the duplicated finite comparison. |
| Main `TauCetiRoadmap/GeometricRepresentationCategories/README.md:38,112,147,379` | downstream A2–A5/A8 consumer and R5.3 finite-Artinian adapter owner; not a supplier of affine completion. |
| Supplied NoncompactQuantumSymmetry head, `README.md:13,453` | explicitly leaves complex Whitehead to AffineLieAlgebras A1, extending it to other characteristic-zero fields. It is not a second owner for the complex application here. |

The allowed search found no separate existing lattice-VOA construction; that additional direction belongs in the Part II extension (R02), consuming the base generic vertex foundation. Generic cohomology, finite-dimensional PBW, shell finiteness, and the signed integral carrier retain their existing owners. No computational algorithm, copied source passage, route-specific prime restriction, or sorry-bodied data was found.

**Seeded source sample.** Source identifiers below refer to the legal line-numbered texts fetched through the sources service. Preprint versions read: Bakalov–Kac `math/0402315v3`, Kac `1512.00821v2`, Frenkel Wakimoto `math/0210029v2`; no published numbering is silently substituted. The two unnamed normalized note texts remain unverified, as requested. The table records support and limits rather than treating a bibliography entry as proof of every claim.

| Sample | Exact locator read | Support / limitation |
| --- | --- | --- |
| Inputs and normalization | `bakalov-kac` lines 380–388, §4.1, equations (4.1)–(4.3), printed p.8 | Integral finite-rank lattice, cocycle and twisted algebra. The diagonal normalization differs; the explicit cochain in R07 handles A₁ and the general ordered basis. No unimodularity assumption. |
| Oscillators and state space | `bakalov-kac` lines 389–407, equations (4.4)–(4.9), p.8 | Loop Heisenberg central term, symmetric Fock representation and charge-zero mode agree. The roadmap's degenerate-form generic extension is an additional elementary target, not the source's irreducibility assertion. |
| Translation from oscillator algebra | `bakalov-kac` lines 437–447, Theorem 4.1 and (4.15), p.9; lines 118–140, Definition 2.1 and (2.14),(2.17), p.3 | Correct operator covariance versus state derivative. The square-zero universal-property construction is the roadmap's proof route. |
| Fields and finiteness | `bakalov-kac` lines 418–441, (4.12)–(4.15), p.9; lines 110–116, (2.11)–(2.12), p.3 | Exponential signs and negative/nonnegative split agree. Finite subset/partition coefficients are derived from these formulas. `kac-vertex` lines 173–191, Theorem 1.1, §1.1, p.5, requires nonzero vacuum, covariance, locality and spanning. The actual Fock vacuum is nonzero. |
| Conformal grading | `bakalov-kac` lines 171–184, Definition 2.2, p.4, and lines 442–447, (4.16), p.9 | Rank central charge and dual-basis conformal vector. Positive-energy finite-dimensional grading is not a separately numbered result there: positivity, native bounded-shell finiteness, and finite oscillator partitions supply it. Indefinite lattices do not satisfy the stated nonnegative grading. |
| ADE degree-one comparison | `bakalov-kac` lines 431–447, (4.13)–(4.16), p.9; main ReductiveGroups §9A.1a | Root brackets follow by extracting z⁻¹; shell classification and signed carrier come from the supplier. The source does not state this exact raw signed comparison, and the anonymous notes cannot certify it. A₁/A₂ computations below verify its normalization directly. |

Additional source checks: `frenkel-loop` lines 5355–5435 (Proposition 4.3.4, pp.121–123) support the pole-bound invariant cutoff; lines 5514–5534 (Proposition 4.3.9, p.125) identify the noncritical center and its Kac input; lines 9470–9644 (§8.1.1, pp.222–226) supply the opposite-Wakimoto/associated-graded lower-bound route. The roadmap correctly separates that route from merely comparing two upper bounds. The Kac primary completion theorem remains unverified. The other Frenkel references were fetched legally; their broad chapter citations do not constitute claim-by-claim certification. VirasoroProject's README describes Witt/Virasoro work (`virasoro-project` lines 292–310), not an affine-center implementation.

**Adversarial values.** The two tables contain 101 README statement/convention rows and 126 individual Lean declaration rows. These are finite-instance/refutation checks, not proofs of the general theorems. “Pass” means the computed witness agrees; “fail” names the required repair. Let A₁ have L=ℤα and B(α,α)=2, with ε=1. For A₂ let a<b, B(a,a)=B(b,b)=2, B(a,b)=−1, c=−a−b, and use the displayed ordered cocycle. Put xₙ=α(−n), v=vacuum. Scalar/vector zeros below refer to the actual carriers. Characteristics 2 and 3, odd lattices, and nonpositive lattices are negative controls where the complex/even/positive hypotheses exclude them, not cases asserted by the theorem.

| README statement / convention | Instance | Computed sides / control | Result; change |
| --- | --- | --- | --- |
| coefficient field and rank-zero convention | ℂ; L=0 | 2,3,12≠0; Fock=ℂ, rank=0 | Pass; retain characteristic-zero scope. |
| residue sign | x₁,y₋₁ with κ(x,y)=1 | −Res(t·d(t⁻¹))=1; central term=1 | Pass. |
| critical normalization | sl₂, h=diag(1,−1) | Killing(h,h)=8; κc(h,h)=−4=−2·2 | Pass. |
| scalar level/central character | κ′=2κ | image of cκK=2cκK′; cκ′K′=2cκK′; K eigenvalue=2 | Pass; not a level-one equivalence. |
| algebraic currents, coefficient extensionality | t⊗e+t²⊗f | coefficients (e,f); all others 0 on both descriptions | Pass. |
| order bracket | e·t⁻²,f·t³ in sl₂ | bracket=h·t; order bound −2+3=1 | Pass. |
| polynomial density | Σₙ≥0tⁿe | tail after r terms has order r | Pass for this algebraic tensor. |
| algebraic-current completeness | L=⊕ℂeₙ | ord(sᵣ₊₁−sᵣ)=r; hypothetical limit coefficients span infinite dimension | **Fail R01**. |
| residue continuity criterion | cκ on a₁×a₁ | all exponents in f dg≥1; residue=0 | Pass; fixed lower-order inputs give separate bounds. |
| CE sign, d² | trivial coefficients, f(h)=1 | d₁₂f(e,f)=−1; d₂₃d₁₂f=0 | Pass. |
| finite Whitehead / missing semisimplicity control | sl₂ vs abelian ℂ² | H²(sl₂,ℂ)=0; c(e₁,e₂)=1 while every abelian coboundary=0 | Correct scope; R04 signature missing. |
| residue class nonzero and coefficient-valued extension | commuting h₁,h₋₁, κ(h,h)=2 | c=2z; any coboundary on this commuting pair=0 | Pass for z≠0; z=0 gives zero class. |
| semisimple product classification | sl₂⊕sl₂ | two independent residue values (2,0),(0,2) | Pass; one-dimensionality restricted to simple g. |
| perfectness and split extension | κ=0 and κ≠0 | split center K not in derived algebra; at κ=κ₀ with κ₀(h,h)=2, [h₁,h₋₁]=2K | Pass; nonzero κ detects K. |
| universal extension kernel transport | central coefficient map z↦2z | residue 2z maps to 4z on both constructions | Pass. |
| positive-current splitting | m,n≥0, m+n=0 | m=n=0 gives central coefficient 0 | Pass. |
| affine loop lift | g=diag(t,t⁻¹), A=h | g⁻¹dg=h·dt/t; Res κ(g⁻¹dg,h)=κ(h,h) | Pass; critical sl₂ shift −4. |
| lift bracket check | e₀,f₀ and same g | images e₂,f₋₂ bracket=h₀+2κ(e,f)K; lifted h₀=h₀+κ(h,h)K, κ(h,h)=2κ(e,f) | Pass. |
| coordinates compose oppositely | φ=2t, ψ=t+t² | σφσψ(t)=2t+4t²=ψ(φ); φ(ψ)=2t+2t² | Pass; rejects ordinary parameter composition. |
| smoothness and formal action | v killed by a₃ | Σₙ≥0xₙv=x₀v+x₁v+x₂v; tail=0 | Pass. |
| products use smooth part | v=(v_M) in ∏Q_M | for each fixed N, component M>N has x_Nv_M≠0 | Pass; ordinary product need not be smooth. |
| congruence exp/log | Gₘ, N=1, modulo t³ | exp(t)=1+t+t²/2; log(exp(t))=t | Pass; characteristic 2 lacks 1/2. |
| rational finite-jet integration | Q₂ vacuum and x₁ | x₁ᵏv has nonzero PBW symbol for every k | Pass negative control for K₁ integration. |
| finite-generation uniform order | generators killed by a₂ and a₃ | common bound M=3; both annihilated by a₃ | Pass; bound is on generators. |
| direct-sum nonuniform counterexample | ⊕Q_M | each finite sum has max(M); no bound for all summands | Pass. |
| fixed-extension quotient k=0 | Kstandard↦0 | current bracket becomes [x,y] with central coefficient 0 | Pass; algebra comparison, not central-generator Lie equivalence. |
| left ideal is not two-sided | h_N∈I_N, e₋N | h_Ne₋N=e₋Nh_N+2e₀; quotient classes 2e₀≠0 vs 0 | Pass. |
| right-shift estimate | b=e₋₂, current x_M | commutator index M−2; M≥N+2 forces it into a_N | Pass. |
| completion multiplication | A discrete, J_N=0 | compatible family constant; (ab)_N=ab=b_N acted on by a | Pass identity specialization. |
| unbounded PBW series | Σₙ≥1(x₀)ⁿxₙ | mod I_N only n<N survive; PBW degrees n+1 unbounded globally | Pass; rejects exhaustive global degree filtration. |
| continuous/smooth module criterion | A=ℂ discrete, J_N=0 | annihilator condition true and orbit maps continuous; both true | Pass. |
| smooth-vector coreflection | A=ℂ[[t]], J_N=(tᴺ), M=A algebraic | smooth part=0 since tᴺm≠0 for m≠0 | Pass; stability requires right-shift condition. |
| coinduction action / smoothness | f(a)=a₀ on ℂ[[t]] | (t·f)(a)=f(at)=0; f kills J₁ | Pass, both implications. |
| coinduction unit and injectivity | m≠0 | (unit m)(1)=m≠0 | Pass. |
| central quotient category | A=ℂ[x], L=(x) | modules killed by x have x·v=0=χ(x)v | Pass; quotient A/(x)=ℂ. |
| character transport direction | a(x)=2x, χ(x)=3 | χ∘a⁻¹(x)=3/2; pulled-back action x↦3/2 | Pass. |
| center detected by generators | A=M₂(ℂ), diagonal diag(1,0) | commutator with E₁₂ is E₁₂≠0 | Pass rejection of a noncentral candidate. |
| affine vacuum/PBW | sl₂, lowest grades | grade 0 dimension 1; grade 1 dimension 3 | Pass. |
| noncritical Sugawara | sl₂ k=0,1 | c=0/2=0; c=3/3=1; k=−2 denominator=0 excluded | Pass. |
| critical unnormalized state | sl₂ | quadratic symbol ef+h²/4≠0; no division by k+2 | Pass. |
| completed deformation vs ordinary free module | Σⱼℏʲeⱼ | mod ℏʳ has r coefficients; whole series has infinite basis support | Pass; completion is necessary. |
| level-dependent shift bound | b=Σⱼℏʲx₋ⱼ | mod ℏʳ need only j<r; shift may grow with r | Pass. |
| Poisson bracket from divided commutator | Weyl deformation [p,q]=ℏ | {[p],[q]}=1; lifts p+ℏb change bracket by 0 mod ℏ | Pass. |
| divided derivation lift change | zℏ↦zℏ+ℏb | difference on a is [b,a] on both sides | Pass. |
| ordered cocycle / evenness | rank0, A₁, A₂ a,b | commutators 1,1,−1; (−1)^B equals 1,1,−1 | Pass; odd rank-one B=1 would give 1≠−1. |
| cocycle associativity | A₂ a,b,c | ε(a,b)ε(a+b,c)=−1; ε(b,c)ε(a,b+c)=−1 | Pass. |
| source diagonal convention adapter | A₁ α | εroad(α,α)=1; εsource(α,α)=−1; coboundary factor=−1 | R07 adapter, not a false roadmap cocycle. |
| cover inverse/involution | A₂ a+b | ε(a+b,−a−b)=−1; inverse of (a+b,1) is (−a−b,−1); τ²=(0,1) | Pass. |
| twisted algebra vs pointwise product | A₂ a,b | eᵃeᵇ=eᵃ⁺ᵇ, eᵇeᵃ=−eᵃ⁺ᵇ; pointwise product=0 | Pass; rejects wrong carrier multiplication. |
| cocycle change and characters | rank1 c(n)=(-1)^binom(n,2) | c(1)c(1)/c(2)=−1; not a character | Pass; arbitrary section changes differ from homomorphic lifts. |
| Heisenberg finite-mode bracket | α₁,α₋₁; α₀,α₋₁ | brackets 2K and 0 | Pass. |
| Heisenberg skew/Jacobi | those modes plus any third | 2K+(−2K)=0; three iterated central brackets=0 | Pass; R06 padding in Lean. |
| generic degenerate form | B=0 on ℂ | all contractions and commutators=0; creation multiplication remains nonzero | Pass; no irreducibility claimed. |
| charged/uncharged zero mode | e^α and v | α(0)e^α=2e^α; α(0)v=0 | Pass; rejects zero action on all charges. |
| creation/contraction action | x₁²v | α(1)x₁²v=4x₁v; [α(1),α(−1)]x₁v=2x₁v | Pass. |
| oscillator derivation | x₁² | δ(x₁²)=2x₁x₂; Leibniz gives x₂x₁+x₁x₂ | Pass. |
| translation on charges | e^α,v | Te^α=x₁e^α; Tv=0 | Pass. |
| translation covariance n=1 | e^α | [T,α(1)]e^α=−2e^α=−α(0)e^α | Pass; charge term is essential. |
| translation covariance n=0,−1 | e^α | [T,α(0)]=0; [T,α(−1)]e^α=x₂e^α | Pass. |
| charge-field covariance | Y(e^α)₍₁₎ on e^−α | left=−x₁v; right=−Y(e^α)₍₀₎e^−α=−x₁v | Pass. |
| negative exponential coefficients | degrees 0,1,2 | 1, x₁, (x₁²+x₂)/2 on both expansion and partition sum | Pass. |
| charge-on-charge field | α,−α, modes 1,0,−1 | v, x₁v, (x₁²+x₂)v/2 | Pass; signs agree with chosen ε. |
| full word charge formula | word α(−1), charge 0 | modes 0,−1 are −2e^α, −x₁e^α | Pass against E⁺ contraction. |
| q_J and negative-index guard | empty word, α=β=0 | r=−1 gives q=0 and v; r=0 gives q=−1 and 0 | Pass; rejects unguarded `toNat`. |
| normal-product shift | two identity fields | only i=j=−1 survives; n=i+j+1=−1, coefficient=id | Pass. |
| normal-product tails | fixed v, bounds i≥P and j≥Q kill | i≥P kills Aᵢv; i≤n−1−Q kills Bₙ₋₁₋ᵢv | Pass; finite interval of possible terms. |
| creation and state derivative | a=e^α | Y(a,z)v=a+zx₁a+z²(x₁²+x₂)a/2+…; T²a=(x₁²+x₂)a | Pass. |
| locality exponent | α,−α in A₁ | B=−2 gives order-two pole; (z−w)² removes it | Pass; same-charge B=2 has no pole. |
| generic Borcherds | m=n=r=0 on weight-one h,e,f | h₀(e₀f)=0; (h₀e)₀f+e₀(h₀f)=2h−2h=0 | Pass. |
| conformal vector and rank | A₁ | ω=x₁²v/4; [L₂,L₋₂]v=v/2 from c/2=1/2 | Pass. |
| normalized conformal indexing | state modes m=3,n=−1 | central term ((2³−2)/12)v=v/2; ω-index sum=2 | Pass. |
| monomial weights | x₂e^α, x₁²e^0 | weights 2+1=3 and 1+1+0=2 | Pass. |
| positive finite grading | ranks 0,A₁,A₂ | dimensions at weights 0,1,2: (1,0,0),(1,3,4),(1,8,17) | Pass; independently enumerated charges/partitions. |
| positivity negative controls | B=0; B(α,α)=−2 | first gives infinitely many weight-zero charges; second gives q(α)=−1 | Excluded; validates hypotheses. |
| nonunimodular even lattice | B(α,α)=4 | weight-one dimension 1; determinant 4 | Pass; no unimodularity required. |
| actual internal direct sum | v+x₁v | decomposition has components v at 0 and x₁v at 1; inclusion sum returns v+x₁v | Pass. |
| tensor VOA modes and conformal vector | A₁⊕A₁ | weight-one dimension 6=3+3; central charge 2=1+1; ω=ω⊗1+1⊗ω | Pass in prose; R05 weak signature. |
| isometry lift | A₁ α↦−α | B preserved: 2=2; charge changes e^α↦e^−α; weight 1=1 | Pass with chosen compatible lift. |
| ADE shell and decomposition | A₂ | q(a)=q(b)=q(a+b)=1; six roots; 2+6=8 | Pass; R03 imports shell. |
| degree rule incl. junk value | p=q=1 | n=0 gives degree1; n=1 gives degree0; n=2 gives forced zero, not a spurious weight-zero mode | Pass. |
| generic weight-one bracket | A₁ h=x₁v,e=e^α,f=e^−α | [h,e]=2e,[h,f]=−2f,[e,f]=h | Pass. |
| raw ADE root brackets | A₂ a,b,a+b | [eᵃ,eᵇ]=eᵃ⁺ᵇ; [eᵃ⁺ᵇ,e^−a−b]=−Hₐ₊ᵦ | Pass; agrees with supplier. |
| raw ADE Jacobi | A₂ a,b,c | left-nested cyclic terms −Hₐ₊ᵦ,Hₐ,Hᵦ sum to 0 | Pass. |
| integral descent | ℤ-basis vector versus torsion control | 1⊗e≠0 over ℂ; 1⊗(1 mod2)=0 for ℤ/2 | Pass; free source is essential. |
| diagonal pinning is not character | A₂ positive a+b and negative −a−b | s(a+b)=1, s(−a−b)=−1; opposite structure constant changes −1 to +1 | Pass; bracket must be transported. |
| noncritical vacuum center | sl₂ k=0 vs critical k=−2 | only scalar center at 0; quadratic critical PBW symbol ef+h²/4 nonzero | Pass source-supported endpoint test. |
| invariant-jet homogeneous scaling | P(X)=tr(X²), X=diag(1,−1), N=1 | P(tX)=2t²=t²P(X) | Pass. |
| invariant character | sl₂ exponents (1) | ∏ₙ≥0(1−q²⁺ⁿ)⁻¹ starts 1+q²+q³+2q⁴ | Pass. |
| Wakimoto lower-bound route | sl₂ degree≤2 | Heisenberg invariant character 1+q+2q²; vacuum center 1+q²; degree1 generator is killed by quotient | Pass source check; not two upper bounds. |
| finite group/Lie invariant adapter | SL₂ quadratic polynomial | P(Ad_g X)=P(X)=2; infinitesimal derivative 0 | Pass mathematics; R03 duplicate. |
| completed critical cutoff | degree w=2, N=1 | largest current indices 0,0 give r=1<2; r=2 has zero restriction | Pass. |
| noncritical degree derivation | sl₂ k=0, mode e₁ | [−L₀,e₁]=e₁; [d−D,e₁]=0 | Pass. |
| extended HC quadratic | sl₂ weight λ=0,δ=1,k=0,h∨=2 | Q=4; Q/(2(k+h∨))=1=δ+Sugawara eigenvalue | Pass; k=−2 excluded. |
| restricted-series polynomiality test | zⱼ→0 mod ker π₁ | all j≥j₀ have highest-vector eigenvalue 0; only j<j₀ contribute | Pass; completion-specific detection remains a requested proof. |
| regular vs punctured oper functions | q=t⁻² | regular disc excludes pole; punctured pole-bound stage includes coefficient q₋₂=1 | Pass. |
| rank-one FF generator law | q=t⁻², n=0 | Res(tq dt)=1=q₋₂ | Pass normalization. |
| coordinate action duality | φ=2t, n=1 | central mode factor 2; dual oper coefficient factor 1/2 | Pass, distinct actions. |
| rank-one Poisson/Virasoro | m=2,n=−2 | {S₂,S₋₂}=4S₀−3; swapped bracket=−4S₀+3 | Pass. |
| Schwarzian/KdV sign | q=0, φ=t+εt³, ε²=0 | Schwarzian=6ε; q^φ=−3ε; δq=−(t³)'''ε/2=−3ε | Pass. |
| cubic PBW sign | X=diag(1,1,−2) in sl₃ | tr(X³)=−6; tr((−X)³)=6=−tr(X³) | Pass. |
| inverse dual form | B₂/C₂ coroots e₁−e₂,2e₂ | lengths 2,4; divide inverse metric by r∨=2 gives 1,2 | Pass. |


The following table checks every named Lean declaration individually (126 rows); all names are relative to `TauCetiRoadmap.AffineLieAlgebras`, in `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean`. Structure rows test the actual laws/data, not invented instances. The single unnamed PBW example is the direct pinned theorem noted above.

| Lean declaration | Instance | Values / excluded model | Result; change |
| --- | --- | --- | --- |
| `genericSmoothProperty` | ℂ discrete, J=0; regular ℂ[[t]], J=(tᴺ) | all ℂ-vectors qualify; only 0 in the regular series module | Pass |
| `genericContinuousProperty` | same modules, discrete targets | all scalar orbit maps continuous; series orbit of 1 not continuous | Pass |
| `genericSmooth_iff_continuous` | those two cases | true↔true; false↔false | Pass |
| `PolynomialCurrent` | sl₂ | e·t+f·t² has coefficient support {1,2} | Pass |
| `FormalCurrent` | sl₂; ⊕ℂeₙ | e/(1−t) is a tensor; Σtⁿeₙ is not | Pass carrier; R01 completeness |
| `scalarOrderSubspace` | t², t⁻¹, 0 at N=1 | membership true,false,true | Pass |
| `orderSubspace` | t²⊗e, t⁻¹⊗e at N=1 | membership true,false | Pass |
| `mode` | e, n=−1; e=0 | coefficient at −1 is e; zero input gives 0 | Pass |
| `bracket_order` | e·t⁻²,f·t³ | bracket=h·t belongs to a₁; M+N=1 | Pass |
| `criticalForm` | sl₂ h,h and e,f | values −4 and −2 | Pass |
| `RankOne.Sl2` | e,f,h vs identity | traces 0,0,0 vs 2, so identity excluded | Pass |
| `RankOne.OriginalSL2Loops` | diag(t,t⁻¹), diag(t,1) | determinants 1,t; first admitted, second excluded | Pass |
| `RankOne.OriginalSL2HopfLoops` | determinant coordinate evaluated on same matrices | values 1,t; quotient relation holds only for first | Pass |
| `RankOne.criticalInvariant` | h,e,f | κc([h,e],f)=−4=κc(h,[e,f]) | Pass |
| `RankOne.criticalSymm` | e,f | κc(e,f)=−2=κc(f,e) | Pass; R06 delete |
| `RankOne.e` | matrix entries | (0,1) entry 1; other entries 0; [e,f]=h | Pass; unused scaffold |
| `RankOne.f` | matrix entries | (1,0) entry 1; other entries 0; [h,f]=−2f | Pass; unused scaffold |
| `RankOne.h` | matrix entries | diagonal (1,−1); trace=0; [h,e]=2e | Pass; unused scaffold |
| `VertexFoundations.FieldTranslationCovariant` | charge α and n=1 on e^−α | commutator=−x₁v; right side=−x₁v | Pass |
| `VertexFoundations.fieldTranslationCovariant_of_span_top` | spanning h,e,f at weight one | covariance defects 0,0,0; defect on h+e is 0+0 | Pass |
| `VertexFoundations.FormalVertexAxioms` | trivial ℂ VOA, T=0; zero space | only a₍₋₁₎b=ab; higher creation coefficients 0; zero model all 0 | Pass; generic bundle admits zero model |
| `VertexFoundations.formalMode` | trivial VOA | n=−1 gives multiplication by a; n=0 gives 0 | Pass |
| `VertexFoundations.formalVertex_translation_covariance` | trivial VOA; charged n=1 | 0=0; −x₁v=−x₁v | Pass; axiom projection padding |
| `VertexFoundations.formalVertex_borcherds` | trivial ℂ VOA m=0,n=−1,r=−1 | left=(ab)c; right=a(bc); both abc | Pass |
| `VertexFoundations.GradedFormalVertexAxioms` | trivial VOA, only degree0; A₁ | V₀=ℂ; weight-one zero product has degree 1+1−0−1=1 | Pass |
| `VertexFoundations.GradedFormalVertexAxioms.gradedDecomposition` | A₁ v+x₁v | components (v,x₁v,0,…); sum returns v+x₁v | Pass |
| `VertexFoundations.GradedFormalVertexAxioms.gradedDecomposition_symm_of` | component 1, x₁v | inverse returns x₁v=inclusion | Pass; delete API wrapper |
| `VertexFoundations.GradedFormalVertexAxioms.gradedDecomposition_apply_mem` | x₁v∈V₁ | image is only degree1 component x₁v | Pass; delete API wrapper |
| `VertexFoundations.GradedFormalVertexAxioms.gradedDecomposition_symm_eq_inclusion` | component v at 0 | both maps return v | Pass; rfl padding |
| `VertexFoundations.GradedFormalVertexAxioms.weightSpace_spans` | v+x₁v | sum Vₙ contains v+x₁v; top does too | Pass; library consequence |
| `VertexFoundations.GradedFormalVertexAxioms.weightSpace_independent` | V₀,V₁ | intersection=0; v≠x₁v | Pass; library consequence |
| `VertexFoundations.weightOneZeroProduct_mem` | A₁ e,f | zero product=h∈V₁; 1+1−1=1 | Pass |
| `VertexFoundations.weightOneZeroProduct` | A₁ h,e | field coefficient −1 gives 2e | Pass |
| `VertexFoundations.weightOneZeroProduct_apply` | same | coerced bracket=2e=field coefficient | Pass; rfl padding |
| `VertexFoundations.weightOneZeroProduct_is_actual_zero_mode` | same | normalized mode0=coefficient−1=2e | Pass; rfl padding |
| `VertexFoundations.weightOneZeroProduct_alternating` | A₁ h,e,h+e | brackets 0,0,2e−2e=0 | Pass |
| `VertexFoundations.weightOneZeroProduct_skew` | A₁ e,f | h+(−h)=0 | Pass |
| `VertexFoundations.weightOneZeroProduct_leibniz` | A₁ h,e,f | [h,[e,f]]=0; [[h,e],f]+[e,[h,f]]=2h−2h=0 | Pass |
| `VertexFoundations.weightOneLieRing` | A₁ weight one | underlying addition h+e unchanged; bracket [h,e]=2e | Pass |
| `VertexFoundations.weightOneLieRing_parent` | vectors e,f | parent sum e+f equals submodule sum e+f | Pass; rfl padding |
| `VertexFoundations.weightOneLieAlgebra` | A₁, scalar 2 | [h,2e]=4e=2[h,e] | Pass |
| `VertexFoundations.weightOneLieAlgebra_parent` | scalar 2, vector e | parent scalar action=2e=old action | Pass; rfl padding |
| `VertexFoundations.weightOneZeroProduct_isLie` | A₁; rank0 | chosen bracket [e,f]=h; zero carrier bracket=0 | Pass; witness projection |
| `VertexFoundations.weightOneZeroProduct_jacobi` | A₁ h,e,f | terms 0,2h,−2h sum to 0 | Pass; native Jacobi consequence |
| `VertexFoundations.AbelianHeisenbergCarrier` | α₁+α₂, central 3 | two supported loop entries and central coordinate 3 | Pass; not one additive mode index |
| `VertexFoundations.abelianHeisenbergLoopMode` | n=1,h=α; h=0 | single coefficient α at 1; zero input has empty support | Pass |
| `VertexFoundations.abelianHeisenbergCentral` | c=2 | loop part=0; central part=2 | Pass |
| `VertexFoundations.abelianHeisenbergBracket` | α₁,α₋₁ | (0,2); zero mode pair gives (0,0) | Pass |
| `VertexFoundations.abelianHeisenbergBracket_skew` | same | (0,2)+(0,−2)=(0,0) | Pass |
| `VertexFoundations.abelianHeisenbergBracket_jacobi` | α₁,α₋₁,α₂ | all three nested terms (0,0); sum=(0,0) | Pass; R06 delete |
| `VertexFoundations.abelianHeisenbergBracket_single_modes` | (m,n)=(1,−1),(1,1),(0,0) | central values 2,0,0 match delta formula | Pass; README API |
| `VertexFoundations.abelianHeisenbergBracket_central_left` | c=2, α₁ | (0,0)=0 | Pass; R06 delete |
| `VertexFoundations.abelianHeisenbergBracket_central_right` | α₁,c=2 | (0,0)=0 | Pass; R06 delete |
| `VertexFoundations.AbelianOscillatorFock` | H=0; H=ℂα | Sym(0)=ℂ; rank1 has independent x₁,x₂,… | Pass |
| `LatticeVOA.PositiveEvenLattice` | Gram [2],[4],[1],[0],[−2] | first two accepted; odd, degenerate, negative controls excluded | Pass |
| `LatticeVOA.carrierModuleFinite` | A₁ and rank0 | ℤ-ranks 1 and 0 | Pass; stored/native fact |
| `LatticeVOA.carrierModuleFree` | same | bases {α} and empty | Pass; stored/native fact |
| `LatticeVOA.positiveEvenLattice_bounded_vectors_finite` | A₁ bound 2 and −1 | vector sets {−α,0,α} and ∅; cardinalities 3,0 | Pass; direct library padding |
| `LatticeVOA.positiveEvenLattice_ambientFiniteDimensional` | A₁ and rank0 | ℚ dimensions 1,0 | Pass; projection padding |
| `LatticeVOA.instDecidableEqLatticeCarrier` | α,α; α,0 | equality true,false | Pass |
| `LatticeVOA.ComplexAmbient` | A₁ | ℂ⊗ℚℚ has dimension1; 1⊗α≠0 | Pass; native rationalization available |
| `LatticeVOA.complexLatticeForm` | A₁ complex coefficients | B(iα,iα)=−2, not Hermitian value +2 | Pass |
| `LatticeVOA.complexLatticeForm_tmul` | c=2,d=3,x=y=α | B(2α,3α)=12=2·3·2 | Pass |
| `LatticeVOA.OscillatorGenerators` | indices1,2 | single(1,α)+single(2,α) has support {1,2}; 0 has ∅ | Pass |
| `LatticeVOA.NormalizedSignCocycle` | A₂; wrong ε=1 | ordered commutator −1; constant ε gives +1 and violates B(a,b)=−1 | Pass |
| `LatticeVOA.LatticeCoverElement` | (α,1),(α,−1) | both valid; proposed sign 2 is not a unit of ℤ | Pass |
| `LatticeVOA.latticeCoverMul` | A₂ a,b | (a,1)(b,1)=(a+b,1); reversed gives (a+b,−1) | Pass |
| `LatticeVOA.latticeCoverOne` | A₁ | charge0,sign1; not (0,−1) | Pass |
| `LatticeVOA.latticeCoverProjection` | (α,−1) | α on projection, discarding only sign | Pass |
| `LatticeVOA.latticeCoverSection` | α | (α,1); projection α | Pass |
| `LatticeVOA.latticeCoverCentralInvolution` | all ranks | (0,−1)²=(0,1); distinct since −1≠1 in ℤ | Pass |
| `LatticeVOA.latticeCoverProjection_mul` | A₂ a,b | projection=a+b=project(a)+project(b) | Pass; rfl padding |
| `LatticeVOA.latticeCoverSection_projection` | A₁ α | projection(section α)=α | Pass; rfl padding |
| `LatticeVOA.latticeCover_centralInvolution_commutes` | (α,s) | both products (α,−s) | Pass; R06 delete |
| `LatticeVOA.latticeCoverMul_assoc` | A₂ a,b,c | both products (0,−1) | Pass |
| `LatticeVOA.latticeCover_one_mul` | (α,−1) | both sides (α,−1) | Pass; R06 delete |
| `LatticeVOA.latticeCover_mul_one` | (α,−1) | both sides (α,−1) | Pass; R06 delete |
| `LatticeVOA.latticeCover_inv_exists` | A₂ a+b | inverse (−a−b,−1); both products (0,1) | Pass |
| `LatticeVOA.orderedSignExponent` | A₂ (a,b),(b,a),(a+b,−a−b) | exponents 0,−1,1; signs 1,−1,−1 | Pass |
| `LatticeVOA.TwistedGroupAlgebraCarrier` | A₁ | e⁰+e^α has support {0,α}; not all functions on ℤ | Pass |
| `LatticeVOA.twistedGroupAlgebraMul` | A₂ a,b | eᵃeᵇ=eᵃ⁺ᵇ; reversed=−eᵃ⁺ᵇ | Pass |
| `LatticeVOA.twistedGroupAlgebraOne` | A₁ | coefficient at0=1, others0 | Pass |
| `LatticeVOA.twistedGroupAlgebraMul_assoc` | A₂ a,b,c | both parenthesizations −e⁰ | Pass |
| `LatticeVOA.twistedGroupAlgebraOne_mul` | e^α | product=e^α | Pass; README API |
| `LatticeVOA.twistedGroupAlgebraMul_one` | e^α | product=e^α | Pass; README API |
| `LatticeVOA.FockSpace` | rank0,A₁ | rank0=ℂ; A₁ contains independent charges e^α,e^−α | Pass |
| `LatticeVOA.vacuumState` | A₁ | oscillator1, charge0; coefficient at charge0=1 | Pass |
| `LatticeVOA.chargeState` | α,0 | 1⊗e^α; at0 equals vacuum | Pass |
| `LatticeVOA.oscillatorGenerator` | n=2,h=α | coefficient2=α; coefficient1=0 | Pass |
| `LatticeVOA.latticeOscillatorEmbedding` | 1,x₁ | images v,x₁v; charge always0 | Pass |
| `LatticeVOA.latticeHeisenbergState` | h=α | x₁v, weight1; h=0 gives0 | Pass |
| `LatticeVOA.OrthonormalComplexBasis` | A₁ h=α/√2; α itself | B(h,h)=1; B(α,α)=2 excludes unnormalized basis | Pass |
| `LatticeVOA.oscillatorWordMonomial` | empty; [(1,α),(2,α)] | 1; x₁x₂; reversed list same product | Pass |
| `LatticeVOA.latticeFockMonomial` | empty/α; [(2,α)]/0 | e^α; x₂v | Pass |
| `LatticeVOA.latticeFockMonomials_span` | v+x₁e^α | sum of two listed monomials, coefficients1,1 | Pass finite witness |
| `LatticeVOA.dividedDerivativeFactor` | m=1,k=0; m=2,k=0 | values1,1; if k labels input normalized mode the derivative factor should be1,−1 | Unused and unconnected; R06 delete, do not certify an unspecified derivative convention |
| `LatticeVOA.normalOrderedPairModeTerm` | identity fields, n=−1 | term at i=−1 is id; every other term0 | Pass |
| `LatticeVOA.normalOrderedPairModeTerm_support` | same, any v | support⊆{−1}; N=1 bounds it | Pass |
| `LatticeVOA.EminusPartitionIndex` | q=0,1,2 | cardinalities1,1,2; q=2 partitions (k₁,k₂)=(2,0),(0,1) | Pass |
| `LatticeVOA.instFintypeEminusPartitionIndex` | same | finite counts1,1,2 | Pass |
| `LatticeVOA.EminusPartitionMonomial` | q=2 partitions | monomials x₁² and x₂ | Pass |
| `LatticeVOA.EminusCoefficient` | q=0,1,2 | 1,x₁,(x₁²+x₂)/2 | Pass |
| `LatticeVOA.chargeWordModeSum` | word modes1,2; J=∅,{0},{0,1} | sums0,1,3 | Pass |
| `LatticeVOA.chargeWordContraction` | α; word α at modes1,2 | J=∅ gives1; singleton gives−2; both gives4 | Pass |
| `LatticeVOA.chargeWordUncontracted` | same | J=∅:x₁x₂; J={0}:x₂; both:1 | Pass |
| `LatticeVOA.chargeModeMonomialFormula` | word[(1,α)], β=0, r=0,−1 | −2e^α; −x₁e^α | Pass; unused API scaffold |
| `LatticeVOA.chargeFieldCoefficient` | α,−α at r=1,0 | v,x₁v | Pass; unused API scaffold |
| `LatticeVOA.latticeFockMonomialWeight` | word modes1,2; charge α | 1+2+1=4; empty/0 gives0 | Pass |
| `LatticeVOA.latticeWeightSpace` | A₁ degrees0,1 | ℂv; span{x₁v,e^α,e^−α} | Pass |
| `LatticeVOA.latticeWeightSpace_contains_monomial` | x₂e^α | weight3; included among spanning generators of V₃ | Pass; definition consequence |
| `LatticeVOA.latticeWeightSpace_zero` | A₁ and rank0 | V₀=ℂv, dimension1 in both | Pass; boundary padding per acceptance rule |
| `LatticeVOA.latticeWeightSpace_finiteDimensional` | A₁ degrees0,1,2 | dimensions1,3,4 | Pass |
| `LatticeVOA.latticeWeightSpace_isInternal` | v+x₁v+e^α | components v at0 and x₁v+e^α at1; unique | Pass |
| `LatticeVOA.latticeGradedDecomposition` | same | returns those two components; inverse sum recovers vector | Pass |
| `LatticeVOA.latticeGradedDecomposition_symm_of` | e^α∈V₁ | returns e^α=inclusion | Pass; API wrapper |
| `LatticeVOA.latticeGradedDecomposition_apply_mem` | e^α∈V₁ | one component at1 with value e^α | Pass; API wrapper |
| `LatticeVOA.latticeGradedDecomposition_symm_eq_inclusion` | degree0 vacuum | both maps return v | Pass; rfl padding |
| `LatticeVOA.latticeGradedDecomposition_fockMonomial` | x₂e^α | component3 equals x₂e^α; others0 | Pass; API consequence |
| `LatticeVOA.latticeWeightSpace_spans` | v+x₁v | belongs to V₀+V₁ and to top | Pass; library consequence |
| `LatticeVOA.latticeWeightSpace_independent` | V₀,V₁ | intersection=0 | Pass; library consequence |
| `LatticeVOA.latticeWeightOne` | A₁ and norm4 rank1 | dimensions3 and1 | Pass |
| `LatticeVOA.latticeWeightOne_decomposition` | A₂ and rank0 | dimensions8=2+6; 0=0+0 | Pass as vector-space statement, not marked ADE Lie comparison |
| `LatticeVOA.CocycleChange` | A₁ c(n)=(-1)^binom(n,2) | c(0)=1,c(1)=1,c(2)=−1; new ε(1,1)=−1 | Pass |
| `LatticeVOA.LiftedLatticeIsometry` | A₁ α↦−α, trivial ε | inverse same map, norm2 preserved, lift factor1 satisfies cocycle equation | Pass |
| `LatticeVOA.OrthogonalSumData` | A₁⊕A₁ | Gram diag(2,2), cross-pairing0, product cocycle1 | Pass |
| `LatticeVOA.fock_orthogonal_directSum` | two rank0 lattices | id and −id both linear equivalences; vacuum images1 and−1 | **Fail R05** as acceptance for marked VOA comparison |

Two additional negative controls: a nonsymmetric form with B(e₁,e₂)=1 and B(e₂,e₁)=0 gives Heisenberg bracket sum K rather than 0, explaining the retained symmetry binder; and changing a rank-zero tensor comparison from id to −id preserves linear bijectivity but changes its vacuum image from 1 to −1 (R05). The KacMoody open head explicitly consumes the existing base A1–A2 polynomial extension (`TauCetiRoadmap/KacMoody/README.md:69,165,441`); it is not a supplier to be imported back here.

The original degree-one normalization checks reject the plausible wrong models: the trivial A₂ cocycle, a globally zero charged zero mode, a missing charge term in T, the Hermitian instead of complex-bilinear form, an unguarded negative-energy `toNat`, and a diagonal rescaling without bracket transport. The computed values agree with the retained general statements except where the tables identify R01 or R05. The proof obligations for the deep general center/reconstruction results remain mathematical targets; these finite tests do not establish them.

## Not verifiable

- **`construction11`, normalized Construction11 p.4.** No author, title, URL, manifest entry, or supplied source text identifies this work. The source service could not resolve the supplied description. Searches in main and the available board package text did not identify the transcription. The attribution and reported uncertainty at README:747–751 remain unverified; no mathematical conclusion here relies on that attribution.
- **`semester-two`, normalized pages 111–113 and 124.** The same identification problem prevents checking the proposed raw-bracket/Jacobi background. The source service could not resolve the description. Neither note text is treated as a proof of lattice VOA reconstruction.
- **`kac-laplace`, Corollary 1.** Tried the cited PMC landing page, PubMed and the DOI landing page. PMC returned a browser check and the source service did not obtain the text; the publisher returned HTTP 403. Frenkel's use of this result at `frenkel-loop` lines 5526–5534 was read, but the primary theorem's completion and hypotheses could not be checked. This is not a claim that the theorem is false.
- **`virasoro-zulip`, message 491524778.** The source service fetched only the public-view application shell (`virasoro-zulip` lines 5–11), not the message. The claimed design discussion is unverified. The independently readable VirasoroProject README does not establish the affine targets.
- The missing sources are collected in `needs-references.toml` for the worker. This review does not edit a source manifest or wait for a source response. It issues the repairable verdict on the available mathematical evidence. No ownership claim is made against open heads for which the brief supplied no checkout.

## Source issues

- **Misprint** in frenkel-loop at §8.1.1, printed p.225, line 9597: the source says the generator Pᵢ,ₘ has degree m−dᵢ; it should be dᵢ−m, consistent with p.222 and the following positive-degree character; affects nothing.

For that misprint, d₁=1 and m=−1 in sl₂ give printed degree −2, whereas the quadratic generator has degree 2; `frenkel-loop` line 9488 has the latter convention. The roadmap's weights dᵢ+1+n already use the correct sign. The author-hosted [Frenkel book](https://math.berkeley.edu/~frenkel/loop.pdf) was the version checked; no published correction was located.
