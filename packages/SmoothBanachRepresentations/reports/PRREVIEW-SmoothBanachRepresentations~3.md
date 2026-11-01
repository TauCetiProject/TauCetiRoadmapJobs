# Review of SmoothBanachRepresentations (pull request #1145 at 02994d5)
Folder: `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/`

**Verdict:** needs changes

:robot: Independent AI review. Three findings, two blocking. The gate passes. No pull-request file was changed.

## R01 (P1) — Register the real tensor supplier contract

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:64`, consumed again at lines 428–430: “What NoncommutativeGeometry, Part II must provide (gap:real-locally-convex-tensors)”.

**Claim:** The real completed locally convex tensor and its scalar comparisons are an available declared supplier gap.

**Witness:** The package has no readable `design/plan.json` registering this slug. The roadmap index finds no NoncommutativeGeometryPartII. Main `TauCetiRoadmap/NoncommutativeGeometry/README.md:12,86` specifies complex scalars and their tensor construction.

**Why this blocks:** A README-only proposed gap is not the registered supplier contract required by this review's intake rules. The real/scalar-comparison construction remains unowned in the admissible dependency graph. The open revision's N1.Tensor does contain it, but a revision of an existing roadmap cannot supply it here. This is the remaining part of previous R01, not an objection to real tensor products or to properly declared gaps.

**Repair:** Establish an eligible Part II owner and section, and register the missing construction and scalar-comparison obligations in the package plan's `gaps` with matching README slugs, named supplier and precise needs. Distinguish independently deliverable contracts if necessary. Then cite that registered contract in §7.3. Keep N1 on main as the complex supplier. Do not restore a dependency on N1's open revision.

**Repair test:** For real lines the completion is ℝ and its complexification is ℂ, with `(1⊗1)⊗1 ↦ 1⊗1`. For complex lines restricted to ℝ, the balancing map sends both `i⊗1` and `1⊗i` to i; their nonzero difference lies in its kernel. The registered supplier must cover both maps, including the quotient rather than an isomorphism in the latter case.

## R02 (P2) — State the scalar parametrix on the pinned distribution carrier

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/Suggested.lean:17`: “The scalar parametrix with fixed-support strong distribution convergence and its vector passage need the fixed-support distribution-to-smooth-dual comparison”.

**Claim:** The missing comparison prevents stating the scalar-parametrix headline.

**Witness:** A scratch signature using native `TestFunction`, `Distribution.ofFun`, `Distribution.delta`, and iterated `Distribution.lineDerivCLM` elaborated with one expected admission. No additional definition, missing carrier, or option override was needed.

**Why this blocks:** The comparison is a proof obligation, not an obstacle to stating the scalar existence/convergence theorem of README §5.1. Its compact support is already specified by g and h; derivatives and partial sums retain that support. One can state native distribution convergence now and retain the stronger fixed-support topology comparison and Banach-vector passage as separate README targets. The theorem below is the actual parametrix, not an arbitrary scalar identity or a hypothesis containing its conclusion.

**Repair:** Add the scalar theorem, mention its Lean name in §5.1, and narrow the docstring's omission explanation to the genuinely missing comparison/vector interfaces. This exact body of the probe elaborated with `import Mathlib`, `open MeasureTheory TopologicalSpace Filter`, and `open scoped Topology Distributions`:

```lean
theorem scalarParametrix (ε : ℝ) (hε : 0 < ε)
    (β : ℕ → ℝ) (hβ : ∀ n, 0 < n → 0 < β n) :
    ∃ α : ℕ → ℝ, ∃ g h : TestFunction (⊤ : Opens ℝ) ℝ ⊤,
      (∀ n, 0 < α n) ∧ (∀ n, 0 < n → α n ≤ β n) ∧
      tsupport (g : ℝ → ℝ) ⊆ Set.Icc (-ε) ε ∧
      tsupport (h : ℝ → ℝ) ⊆ Set.Icc (-ε) ε ∧
      Tendsto (fun N : ℕ => ∑ n ∈ Finset.range (N + 1),
        ((-1 : ℝ)^n * α n) •
          ((Distribution.lineDerivCLM (1 : ℝ) :
            Distribution (⊤ : Opens ℝ) ℝ ⊤ →L[ℝ]
              Distribution (⊤ : Opens ℝ) ℝ ⊤)^[2*n])
            (Distribution.ofFun ⊤ (g : ℝ → ℝ) volume ⊤))
        atTop (𝓝 (Distribution.delta 0 +
          Distribution.ofFun ⊤ (h : ℝ → ℝ) volume ⊤)) := by
  sorry
```

**Repair test:** At N=0 the partial distribution is `α₀[g]`; at N=1 it is `α₀[g]−α₁D²[g]`. Pairing against a test equal to 1 on the common support gives `α₀∫g → 1+∫h`. The sign agrees with `δ''(exp)=1`, and no unsupported upper bound is imposed on α₀. This probe certifies statability, not a completed Lean proof or the missing topology comparison.

## R03 (P3) — Record both references in the source manifest

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:495`, “References”.

**Claim:** The two references and the uncertified primary locators constitute the source record.

**Witness:** The folder contains only `README.md` and `Suggested.lean`; there is no `sources.toml`. Casselman was legally fetched; the primary Dixmier–Malliavin text was not found by the sources service.

**Repair:** Add the required source manifest, one lifetime key per work, with the locators, cited targets and actual retrieval status. Use the Casselman revision read here; record Dixmier–Malliavin's unavailable/uncertified status honestly. Keep the distinction between Casselman's stated theorems and the roadmap's extensions. This review does not edit that manifest.

**Repair test:** The source record must resolve §5.1 to Casselman Lemmas 4.1–4.2, pp.9–10, and 5.1, p.12, and §6.1 to Proposition 6.1, p.13; it must not report the unread primary theorem numbers as verified.

## Verified sound

These are inspections, signature checks and computed tests, not formal proofs of the admitted theorems. No mathematical counterexample to the six existing Lean headlines was found. The normative repository README and CONTRIBUTING were read, together with main's BanachSpaceTheory, NoncommutativeGeometry, and the relevant LieGroups/CompactGroups/OneParameterSemigroups sections.

### Previous findings, checked before the full pass

The previous review read `9d2bdf0`. No repair report marking findings “not actionable in this package” was supplied or found among this job's previous artifacts.

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01 real tensor drift | README:62 “NoncommutativeGeometry N1's complex completed locally convex projective tensor”; :64 “gap:real-locally-convex-tensors” | Partly repaired: the main contract is now accurate; registration/eligible ownership is still missing (new R01). |
| R02 compact-finite supplier | README:58 “as required by AutomorphicFormsOnReductiveGroups §2.1” | Repaired: the nonexistent Layer5.1 is gone; the actual §2.1 gap and Layer 5 are identified. This is an imported supplier contract, not a newly invented local gap. |
| R03 duplicate complex smooth theory | README:7 “owns the complex Banach smooth carrier”; “Layers 1–4 here extend those contracts to real coefficients” | Repaired: the earlier owner is imported and the real, finite-k and general-test extensions are distinguished. |
| R04 real/missing headlines | Lean:32 “variable {𝕜 : Type*} [RCLike 𝕜]”; :138 “theorem smooth_lift”; :155 “theorem smooth_inverse” | Substantially repaired: all six headlines cover both fields, and omissions are named. The scalar-parametrix statability claim remains wrong (new R02). |
| R05 admitted semigroup data | Lean:22 “not additional acceptance theorems” | Repaired: adapter and dependent API theorem are absent; the README retains the construction with proved laws. |
| R06 integrability padding | README:133 cites `Continuous.integrable_of_hasCompactSupport` | Repaired: the padded Lean theorem is deleted, and its library application remains in prose. |
| R07 imports | Lean:1 “import Mathlib” | Repaired. No other import is needed by the retained statements. |
| R08 historical supplier URL | README:7 uses the relative AutomorphicFormsOnReductiveGroups link | Repaired; no commit-pinned blob link remains. |
| R09 process identifiers | README:11 “adopt Mathlib's designs when available” | Repaired; the numbered upstream-PR narrative is gone. |
| R10 Checks/layers | README:101, :160, :210, :269, :298, :343, :395, :440, :474 have Checks blocks | Repaired structurally: nine layers, individual Needs lines and layer-ending Examples/Dependencies; the mathematical Checks were recomputed below. |
| R11 source locators/record | README:317 names Lemmas 4.1–4.2 and 5.1 with pages; :364 names Proposition 6.1 | Partly repaired: precise factorization locators are supplied and match the fetched revision, but the manifest is absent (new R03). |
| R12 Lean form/name alignment | Lean:30 “namespace TauCetiRoadmap.SmoothBanachRepresentations”; :4 “target signatures” | Repaired: all 11 declared names occur in the README, six theorems have layer placement, and omitted headline families are named. |

### Gate, scope, dependency direction and Lean

The worktree head is exactly `02994d57e6da3d4d246972200f56402c595a6da1`. The outside-folder diff specified in the brief is empty. The worktree was clean and remains unchanged. The family's index is within the permitted scope.

The supplied head-specific gate reports:

```text
gate SmoothBanachRepresentations: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

I ran the required movable dependency check against the candidate order and main content. Its complete output was:

```text
depcheck: 204 roadmaps, 1485 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. This syntactic check does not register a prose-only gap or create its supplier. Every Needs line and supplier paragraph was read. Layers 0–4 feed 5, then 6 feeds quotient lifting; the tensor proof uses the independent tensor contract rather than quotient lifting. The use of Layer 3 enveloping seminorms in Layer 2 is explicitly subsequent and is not used to construct the original word topology. No route-specific prime/characteristic restriction, computational algorithm, admitted data, `set_option`, or copied source passage was found.

Direct `lake env lean` elaboration of the reviewed module succeeded: exactly six `sorry` warnings, no other warnings. No Tau Ceti module import/object build was needed. A separate scratch copy with `#check @name` for each of the 11 declarations also elaborated. I compared all expanded types with the README:

- The five definitions legitimately omit Lie, completeness or measure hypotheses not needed to define their native objects. `smear` is a total Bochner expression; its identities are only promised with integrability. `smoothLieVectors` retains the scalar tower needed for scalar closure.
- Smoothing, density, both factorizations and lifting retain the finite-dimensional Lie, boundaryless, Hausdorff and Borel hypotheses; all Banach spaces used by the analytic results retain completeness. Both orbit-continuity hypotheses occur in lifting.
- `smooth_inverse` retains completeness of A and the algebra-action laws. Its omitted Haar/Borel/local-compactness binders are unnecessary for inversion and were explicitly omitted; this is not a dropped-hypothesis error.
- There is no universe collapse, free placeholder condition, admitted structure field, or substitution of the ambient norm topology for the smooth topology.

A scratch one-tactic probe tried `simp`, `rfl` and `infer_instance` with success required to close the goal, for all six admitted theorems. None closed. The pinned object search found no single imported theorem directly matching one of these complete general signatures. Thus no new padding finding is made. The scalar-parametrix probe in R02 separately elaborated successfully. All elaboration processes have finished.

### Headline inventory

| README result | Acceptance-test result |
|---|---|
| §2.1 finite-k/mixed-domain criterion and complete real smooth topology | Named as unavailable in the docstring; depends on the constructed mixed-domain/smooth-topology interface, rather than the algebraic submodule's ambient topology. |
| §§3.1–3.2 continuous Lie/enveloping action and covariance | Named as unavailable with the stronger carrier. Its algebraic universal property is imported, not a second enveloping algebra. |
| §3.3 smoothing | `isSmoothLieVector_smear`, both fields and general finite-dimensional G. |
| §4.1 density | `dense_smoothLieVectors`, both fields. Stronger-topology approximation is separately named as requiring the stronger carrier. |
| §5.1 scalar compact-support parametrix and vector passage | Scalar existence/convergence is statable now (R02); the fixed-support dual comparison and vector passage remain separate construction targets. |
| §6.1 support-controlled vector factorization | `dixmierMalliavin`, retaining smooth inner vectors, all open identity neighborhoods and finite sums. |
| §6.1 function factorization with support of second factors | `dixmierMalliavin_function`; all factors are native compactly supported smooth functions, not arbitrary variables. |
| §7.2 smooth quotient lifting and topological exactness | `smooth_lift` states the algebraic lifting headline; the topology comparison is named as needing the smooth Fréchet carrier. |
| §7.3 dense smooth completed-tensor comparison | Named as unavailable; its real supplier needs R01. |
| §8.1 inverse closure, including matrices | `smooth_inverse`; finite matrix Banach algebras are instances, not omitted separate coefficient cases. |
| §8.1 complex holomorphic closure | Named as requiring BanachAlgebras A2's general holomorphic calculus. Searches at these pins did not find that general carrier; continuous C*-functional calculus does not replace it. |
| §8.1 torus topology comparison | Specified by two finite-order inequalities in the README; it uses the supplied torus Fourier and the constructed smooth-topology interfaces, rather than an equality of individual seminorms. |

### Seeded source sample: all 15 targets

Both bibliography entries were submitted to the sources service. Casselman's author-hosted revision dated 24 January 2016 was obtained and read, including the analytic steps of §§2,4–6. The primary Dixmier–Malliavin locators explicitly labelled uncertified in the README were also attempted; they remain unread. No numbering agreement with that primary version is claimed.

“Derived” below means the cited text supplies background or an input, and the additional claim must be proved by the stated route. It is not a claim that Casselman states the extension verbatim. Cross-roadmap contracts were resolved separately below.

| Seeded target | Text/locator actually checked | Support and limits |
|---|---|---|
| 0.2 Two-sided generator comparison | casselman lines 11–19, p.1; native semigroup domain and power declarations | p.1 uses two-sided differentiation and iterated domains; it does not state the half-line comparison. That comparison is the explicitly owned inverse-group-law argument. |
| 0.3 Mixed word domains | casselman lines 13–19, p.1 | The recursion and enveloping seminorms support the all-word object. Native partial-map powers supply repeated directions; the roadmap does not falsely infer closedness of products. |
| 1.1 General test spaces | casselman lines 21–35, p.1; AutomorphicFormsOnReductiveGroups §0.1a | p.1 uses tests but does not construct their final topology. Real coefficients and arbitrary components are expressly new here; native Euclidean tests are reused. |
| 1.2 Smooth Haar density | casselman lines 21–25, p.1; pinned volume-density declarations | Casselman only fixes Haar. The metric/volume/uniqueness argument is new and explicitly localized to a Lindelöf open subgroup, as required by the pinned theorem. |
| 1.4 Convolution and modular covariance | casselman lines 26–35, p.1; BanachAlgebras A7 | Left covariance is directly supported. Nonunimodular right covariance and involution are derived from A7's stated c, not attributed to p.1. |
| 1.5 Smooth approximate identities | casselman lines 35–36, p.1; §0.1a and A7.ChosenApproximateIdentity | Norm approximation is supported; kernel construction and general-group localization use the named inputs. Uniformity on norm-compact sets follows from the local operator bound. |
| 2.1 Finite regularity and real smooth topology | casselman lines 11–20, p.1; supplier §2.7 | Supports all-order Fréchet topology. The finite-k basis-word/frame equivalence is a new bridge, explicitly requested in :191; it is not a theorem quoted from p.1. |
| 3.1 Real Lie and enveloping action | casselman lines 17–20, p.1; LieGroups Layer 0 | Supports invariance and enveloping action. Real coefficient transport, continuity and precise estimates are extensions with specified inputs. |
| 3.2 Conjugation and restriction | casselman lines 17–20, p.1; supplier §2.7 and LieGroups Layer 1 | G-invariance is supported; Ad covariance is explicitly in the supplier. General-subgroup equality is correctly not asserted. |
| 3.3 Smoothing and derivative estimates | casselman lines 26–36, p.1 | Directly supports left-translation smoothing. Its differentiated left regular action is this roadmap's −R_X; the computed sign/order tests agree. |
| 3.4 Modular integration by parts | BanachAlgebras A7:877–903 and casselman p.1 | No nonunimodular formula is stated on Casselman p.1. The roadmap explicitly derives q_X f−L_X f from the A7 convention; the affine witness verifies that derivation. |
| 5.1 Scalar parametrix and passage to vectors | casselman lines 492–526, Lemmas 4.1–4.2, pp.9–10; lines 609–637, Lemma 5.1, p.12; lines 650–669, proof of Proposition 6.1, p.13 | Numbers/pages match. Nonconstant coefficient bounds and small supports are supported. The source's sign/bound slips must be corrected as listed below; the roadmap does correct the main ones. Its uniform dual-test argument expands the source's unproved vector-passage step. |
| 7.1 Intertwiners and subspaces | casselman lines 645–682, Proposition 6.1, p.13; native continuous intertwiners | Proposition 6.1 states factorization, not this functorial theorem. Intertwiner/subspace assertions follow instead from orbit derivatives and the word topology, as the local Needs line says. |
| 7.2 Quotient lifting | casselman lines 645–682, Proposition 6.1, p.13 | Factorization supplies the algebraic lifting proof. The Fréchet open mapping/topology conclusion is an additional theorem, explicitly owned at :422, not a result of the source's Proposition 6.1 alone. |
| 8.1 Smooth algebras and spectral invariance | BanachAlgebras A1–A2; NoncommutativeGeometry N6 | These are supplier-based consequences, not Casselman results. Inversion and contour calculus are the inputs; the iterated derivative estimates and torus topology comparison are new claims here. |

This certifies the stated Casselman locators and their described limits; it does not certify a direct source theorem for each extension or the unread primary text.

### Adversarial computations

There are **74 rows** below. Related API assertions are separated when they test different directions or operations. The table covers every numbered subsection, every definition family, all 15 sampled targets, all headlines, and both mathematical objects affected by blocking findings. “Retain” means the displayed instance agrees; it is not a proof in all cases. Inapplicable arithmetic cases (DVRs, residue primes, inseparability) are excluded by the actual ℝ/ℂ Lie/Banach setup, rather than silently assumed.

| # | Statement | Instances tried and computed sides/values | Result; change |
|---|---|---|---|
| 1 | Strong continuity predicate | Translation of 1_[0,1]: L∞ orbit difference =1 for 0<abs(t)<1; L² difference =√(2 abs(t))→0. | Correctly rejects the first, accepts the second; retain. |
| 2 | Strong versus operator-norm continuity | L² translations: each fixed-vector difference→0, but operator norm of T_t−I is 2 for t≠0. | Strong continuity is the intended condition; retain. |
| 3 | Compact operator bounds, joint action | π(t)x=e^t x: sup on [−1,1]=e, global sup=∞; (t,x)→(0,2) gives e^t x→2. | No false global bound; retain. |
| 4 | Restriction/products/intertwiners of strong actions | Diagonal characters e^t,e^(2t): projection of π(t)(x,y) is e^t x, equal to the first-factor action; at t=0 both give x. | Retain. |
| 5 | Two-sided/half-line generator | e^t x: right and left difference-quotient limits both x; realification of e^(it)z gives iz in both descriptions. | Retain. |
| 6 | Generator zero direction/closedness | X=0: derivative=0, domain=E; graph limit (v_n,0)→(v,0) stays in graph. | Retain native closed generator. |
| 7 | Word recursion/order | H=diag(1,0), N=E₁₂, v=(0,1): HNv=(1,0), NHv=(0,0). | Rightmost-first order required; retain. |
| 8 | Empty/repeated word and powers | Empty word on x gives x; n repeats of generator I give x for n=0,1,2; nonempty zero-generator word gives 0. | Matches native power domains; retain. |
| 9 | Nonexample to generator-domain membership | L² step function: squared difference-quotient norm =2/abs(t)→∞, although orbit differences tend to 0. | Domains are not all vectors; retain. |
| 10 | Manifold test-function definition | Nonzero compact smooth bump b is admitted; constant 1 on ℝ has support ℝ; abs(x) has unequal one-sided derivatives −1,1; zero support=∅. | Definition distinguishes all four; retain. |
| 11 | Fixed-support spaces | K=∅ or {0} in ℝ gives D_K={0}; bump in [−1,1] is admitted there and excluded from [2,4]. | Retain. |
| 12 | Test linearity/products/differentiation | b+b=2b and D(2b)=2Db; outside supp(b), b²=Db=0. Zero scalar gives empty support. | Linear/product/support API consistent; retain. |
| 13 | Translation/inversion/zero extension | b(x−3) has support [2,4] if b has support [−1,1]; inversion x↦−x fixes that symmetric interval; extension of a chart bump vanishes beyond its compact margin. | Retain. |
| 14 | Fixed-support derivative topology | b(x)sin(nx)/n with b=1 near 0: degree-zero norm≤‖b‖/n→0; derivative at 0=1. | Uniform norm cannot replace derivative topology; retain. |
| 15 | Final test topology | b(x−n): every derivative on a fixed compact eventually 0; a continuous weighted seminorm with weight e^abs(x) grows at a nonzero translated bump value. | Compact-open convergence does not imply test-space convergence; retain. |
| 16 | Smooth positive Haar density | Affine group: left translation Jacobian a₀² and density (a₀a)^−2 yield a^−2; chart density at a=1,2 is 1,1/4. | Positivity and invariance agree; retain. |
| 17 | Volume localization/no countability | Uncountable discrete G: H={1}, compact K finite; integral of 1_K with singleton mass c is c·card(K), while μ(G)=∞. | Finite localization works without global σ-finiteness; retain. |
| 18 | Local integral/total-function caveat | Trivial scalar action, μ({1})=2: smear(f,v)=2f(1)v; f=0 gives 0. Constant 1 over ℝ is not integrable. | Identity claims require integrability; retain. |
| 19 | Integral estimate/naturality | Nonnegative f on [−1,1], e^t character: abs(∫fe^t)≤e∫f; scalar T=2 gives Tπ(f)v=2π(f)v=π(f)Tv. | Local bound and intertwining agree; retain. |
| 20 | Convolution order | Counting S₃, s=(12),t=(23): δ_s*δ_t=δ_st, but δ_ts is the other 3-cycle. | Reversed convention excluded; retain. |
| 21 | Convolution association/support | On ℤ, δ₁*δ₂=δ₃ and (δ₁*δ₂)*δ₃=δ₆=δ₁*(δ₂*δ₃); supports {1}+{2}={3}. | Retain. |
| 22 | Integrated multiplication/left covariance | Counting group: π(δ_s*δ_t)=π(st)=π(s)π(t); L_sδ_t=δ_st, hence π(s)π(δ_t)=π(δ_st). | Retain. |
| 23 | Modular right translation | Affine c(a₀,0)=a₀: at a₀=2, integral of F(xg)=2∫F; inverse choice would give (1/2)∫F. | Convention matches A7; retain. |
| 24 | Involution/unitary comparison | Unimodular cyclic group: δ_s*=δ_s⁻¹ and unitary π(s)*=π(s⁻¹); affine c(g)c(g⁻¹)=2·(1/2)=1, giving (f*)*=f. | Retain modular factor. |
| 25 | Smooth approximate identity mass/localization | Trivial action: ∫u=1 gives π(u)1=1; ∫u=0 gives 0. A support avoiding 1 fails sufficiently small identity neighborhoods. | Both mass and shrinking support needed; retain. |
| 26 | Discrete dimension zero | μ({1})=2: u(1)=1/2 and (u*u)(1)=2·(1/2)²=1/2; unnormalized δ₁ squares to 2δ₁. | Retain dimension-zero treatment. |
| 27 | Finite regularity k=0,1,2 | Trivial action: E^k=E for all three, every positive derivative=0; step function lies in E⁰ but not E¹ or E². | Both directions have discriminating instances; retain. |
| 28 | Frame-to-coordinate derivative bridge | On ℝ with frame 2∂x and f=x: frame derivative=2, inverse coefficient=1/2, reconstructed coordinate derivative=1. | Frame inverse is essential; retain. |
| 29 | Smooth carrier/submodule | Trivial action on ℝ²: smooth set=ℝ²; 0+v=v and a v stay in it. For rotations, finite sums of smooth modes remain smooth; a nonsmooth continuous cusp does not. | Real bodies determine the carrier; retain. |
| 30 | Word seminorm, zero module | Trivial action p_m(v)=‖v‖ because only the empty word survives; E=0 gives p_m(0)=0. | Separating family uses the empty word; retain. |
| 31 | Smooth topology versus ambient norm | v_n=e^(inx)/n: p₀=1/n→0, p₁=1/n+1→1. | Stronger topology is necessary; retain. |
| 32 | Change of basis/equivalent seminorms | e^(ix): for ∂x, p_m=m+1; for 2∂x, p_m=2^(m+1)−1. At m=2: 3 versus 7. | Equality of topologies, not seminorms; retain. |
| 33 | Completeness/word-coordinate compatibility | e^(ix)/n tends in every fixed p_m to 0 with p_m=(m+1)/n; derivative coordinate limits are 0=D0. | Consistent with closed first-order graph argument; retain. |
| 34 | Smooth-space calculus interface | t↦t e^(ix): each word coordinate is t i^r e^(ix), derivative i^r e^(ix); inclusion into C(S¹) has the same derivative. | No fictitious Banach norm required; retain. |
| 35 | Lie bracket and real linearity | H,N above: [H,N]v=Nv=(1,0); (2H+N)v=(1,0)=2Hv+Nv. | Anti-representation would give wrong bracket sign; retain. |
| 36 | Enveloping unit/order | 1_U v=v; (HN)v=(1,0), (NH)v=0; HN−NH acts as N. | Universal algebra multiplication order fixed; retain. |
| 37 | Derivative seminorm bound | e^(ix), X=c∂x: p_m(dπ(X)v)=abs(c)(m+1)≤abs(c)(m+2). | Bound independent of v is plausible and consistent; retain. |
| 38 | Ad conjugation | g=diag(2,1): gNg⁻¹=2N; acting on (0,1), both sides of covariance give (2,0). | Retain. |
| 39 | Disconnected covariance | Reflection g=−1 in ℝ⋊{±1}: Ad(g)X=−X; conjugating translation generator gives −D, both on f(x)=x locally equal −1. | Disconnected components cannot be omitted; retain. |
| 40 | Subgroup restriction | Restrict a rotation action to {1}: every continuous vector becomes smooth; cusp abs(sin x) fails smoothness for S¹. Open-subgroup cosets give fixed linear translates of the same local orbit. | Inclusion for general subgroups, equality only for open restriction; retain. |
| 41 | Left/right invariant fields | Affine: R_H b=b but L_H b=0; [R_H,R_N]b=−1, [L_H,L_N]b=a. | −R is the Lie map used in smoothing; retain. |
| 42 | Smoothing derivative sign | e^t character: integration by parts gives −∫f'e^t=∫fe^t; second derivative gives ∫f''e^t=∫fe^t. | Signs at orders 1 and 2 agree; retain. |
| 43 | Mixed smoothing/order and estimates | Affine fields: R_HR_N b=0, R_NR_H b=1; composition of −R retains this order. Zero f gives both p_m(π(f)v) and derivative bound 0. | Distinguishes reversed words; retain. |
| 44 | Modular integration by parts | Affine H: q_H=1, ∫L_H f=∫f; trivial action gives π(f)dπ(H)1=0=∫(f−L_Hf). | A missing q term would give −∫f; retain. |
| 45 | q and bracket trace | [H,N]=N; tr(ad H)=1, tr(ad N)=0; q_[H,N]=0. | Retain. |
| 46 | Density in norm/smooth topology | Trivial action has approximation error 0 in every p_m. A finite Fourier polynomial is already smooth; rapidly decreasing series have derivative tails→0. | Norm and smooth conclusions distinguished; retain. |
| 47 | Half-line smooth-vector comparison | e^t: A^n v=v and half-line orbit derivatives=e^t v; for X=0, n≥1 powers=0 and orbit constant. | Same smooth vectors with correct one-sided endpoint; retain. |
| 48 | Compact-finite versus smooth | A circle mode has orbit-span dimension 1; Σ_(n≥1)e^(−n²)e^(inx) is smooth with infinitely many nonzero modes and infinite orbit span. | Density is not equality; retain. |
| 49 | Generic compact-group gap | K=∏ C₂: r-coordinate functions lie in a space of dimension 2^r; r=0 gives constants of dimension 1. K is nondiscrete, with singleton identity component. | Generic compact density is not a Lie theorem; imported gap retained. |
| 50 | Complexification/projection | x+iy↦x; inclusion then projection sends 1↦1. Complex circle mode projects to cos x, whose real rotations span cos x,sin x (dimension 2). | No erroneous dimension-one real conclusion; retain. |
| 51 | Scalar product/reciprocal normalization | At y=0 product=1 and partial multiplier=1; at y≠0 N=0 ratio=1/product∈(0,1). For finite factors λ=2,4 at y=1: product=85/64, ratio=64/85. | Positivity and partial/full bound agree; retain. |
| 52 | Fourier even-derivative signs | Fourier(D²g)(y)=−4π²y² ĝ(y); coefficient −α₁ yields +4π²α₁y² ĝ(y). | Alternating signs and absorbed powers match; retain. |
| 53 | Tail maximum | F(λ)=λe^(−2πλ): derivative at 1/(4π) is +(1/2)e^(−1/2); at 1/π it is −e^(−2); maximum at 1/(2π). | Global decreasing assumption excluded; retain. |
| 54 | Simultaneous coefficient bounds | β₁=1/10, D₃=100: α₁≤1/100 gives α₁D₃≤1; choosing maximum 1/10 gives 10. | Minimum/simultaneous bounds required; retain. |
| 55 | Scalar parametrix and α₀ | Pair with cutoff equal to 1 on common support: δ gives 1, positive-order derivatives integrate to 0, so α₀∫g=1+∫h. | Nonconstant bounds do not constrain α₀; add R02 signature. |
| 56 | Distribution-to-vector convergence | ℓ² e_n: every fixed dual pairing→0, but norm=1. Fixed-support distribution convergence plus compact dual-paired orbit family instead controls the supremum of pairings. | Weak convergence alone is insufficient; route explicitly adds compactness/equicontinuity. |
| 57 | Vector series/factorization signs | e^t orbit: A^(2n)v=v; n=1 term=−α₁v. From π_X(g)η=v+π_X(h)v, subtracting gives v; adding would give v+2π_X(h)v. | Retain corrected signs. |
| 58 | Finite-family coefficient selection | For finitely many vectors with derivative bounds M_(j,n), choose α_n≤2^(−n)/max(1,M_(j,n)) over the finitely constrained indices; each constrained product≤2^(−n). | Countable diagonal bounds are compatible; retain. |
| 59 | Vector factorization zero/trivial group | v=0: n=0 sum=0. One-point group mass 2: f=1/2, w=v gives π(f)w=v. | Headline handles zero and dimension zero; retain. |
| 60 | Product-chart density | J=2 and product kernel k: density k/2 integrated against 2dt gives ∫k; omission gives 2∫k. | Denominator J>0 fixed; retain. |
| 61 | Exact span versus closure | Trivial representation: π(u)v=v for mass-one u, so span=E=E∞ without taking closure. A zero-mass-only family would give span={0}. | Retain genuine finite witnesses, not a density substitute. |
| 62 | Function support refinement | φ=0: n=0. Derivative series of a bump in [−1,1] vanish at 2, as do their fixed-support limits; translate by 3 can be nonzero at 3. | Fixed-support proof is appropriate; arbitrary translates are not. |
| 63 | Function convolution on trivial group | Haar mass 2, f=1/2,h=φ: (f*h)(1)=2·(1/2)φ(1)=φ(1); supp(h)=supp(φ). | Both support restrictions and normalization agree; retain. |
| 64 | Intertwiners and closed subspaces | Trivial ℝ² action, M={0}×ℝ: M∞=M=M∩E∞; identity T maps v↦v and preserves every derivative, all positive derivatives 0. | Retain. |
| 65 | Smooth lifting/kernel topology | Projection ℝ²→ℝ: smooth 1 lifts to (1,0), kernel={0}×ℝ; zero quotient lifts 0 to 0. | Surjectivity hypothesis and kernel identification agree; retain. |
| 66 | Open mapping/quotient control | Projection sends open radius-ε ball onto (−ε,ε); diagonal x_n↦x_n/n on ℓ² has dense proper range (1/n has no ℓ² preimage). | Surjectivity, not dense range, is required; retain. |
| 67 | Tensor derivative/shuffle | e^t⊗e^(2t): first derivative 3=1+2; second 9=1+2·1·2+4. | Full shuffle/mixed term required; retain. |
| 68 | Tensor scalar comparisons | ℝ⊗̂ℝℝ≅ℝ, complexification≅ℂ; balancing ℂℝ⊗ℝℂℝ→ℂ sends i⊗1−1⊗i↦0. Domain real dimension 4, target dimension 2. | Mathematics agrees; register R01 supplier. |
| 69 | Dense smooth pure tensors/no isomorphism | Trivial one-dimensional factors: tensor map sends 1⊗1↦1 and has full range. Zero factor gives source=target=0. | Consistent with density; these cases do not justify a general injectivity claim, which is absent. |
| 70 | Continuous contragredient | Rotated point masses: ‖δ_z−δ₁‖=2 for z≠1; Haar and zero have constant orbit. e^t scalar action dualizes to e^(−t), derivative pairing=−λ(x). | Correct subspace and negative transpose; retain. |
| 71 | Smooth-algebra/action hypotheses | Scalar e^t action: α_t(1·1)=e^t but α_t(1)α_t(1)=e^(2t), so excluded. Zero algebra: 0=1 and its only unit is smooth with smooth inverse. | No hidden nonzero-algebra restriction; retain. |
| 72 | Inverse closure/noncommutative derivative | diag(e^t,1) conjugation, a=I+E₁₂: a⁻¹=I−E₁₂; derivatives E₁₂ and −E₁₂; −a⁻¹E₁₂a⁻¹=−E₁₂. Trivial scalar unit 2↦1/2 has derivative 0. | Retain full noncommutative rule and matrix generality. |
| 73 | Product/star/HFC | f=h=e^(ix): D²(fh)(0)=−4; derivation-only rule gives −2. δ(U₁*)=−2πiU₁*=δ(U₁)*. For a=I+N,N²=0: exp(a)=e(I+N), a polynomial in a and smooth. | Shuffle, real star law and HFC instances agree; retain. |
| 74 | Torus seminorms/summability | θ=0,1+U₁: Q₀=1, P₀=2. Radius-n shell in ℤ² has 4n points; weighted exponent 3 has tail like 4/n², exponent 2 like 4/n. | Topological equivalence and +3 loss agree, not isometry; retain. |

### Pinned-library inspection and duplication audit

Pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following **24 inspection entries** identify declarations actually opened, not names remembered from another revision. File paths are relative to the respective pinned library root.

| Entry | Declaration/file/line | What was verified |
|---|---|---|
| 1 | `ContRepresentation`, `Mathlib/RepresentationTheory/Continuous/Basic.lean:54` | Field is a monoid homomorphism into continuous linear maps; no topology on G or orbit continuity is bundled. |
| 2 | `ContIntertwiningMap`, same file:80 | Extends a continuous linear map and requires intertwining for every group element. |
| 3 | `ContMDiffMap`, `Mathlib/Geometry/Manifold/ContMDiffMap.lean:38` | Smooth-function subtype, appropriate for the simple LieTestFunction definition. |
| 4 | `TestFunction`, `Mathlib/Analysis/Distribution/TestFunction.lean:67` | Real-body smoothness, compact support and support in the open domain; no group structure. |
| 5 | `TestFunction` final topology, same file:261 | Coinduced locally convex construction from supported smooth maps; the roadmap's manifold comparison is additional work. |
| 6 | `Distribution`, `Mathlib/Analysis/Distribution/Distribution.lean:165` | Compact-convergence continuous dual of native real test functions. |
| 7 | `Distribution.delta`, same file:201 | Evaluation distribution, zero outside the open domain. The R02 probe uses the full real line, so 0 is inside. |
| 8 | `Distribution.lineDerivCLM`, same file:234 | Negative transpose of test differentiation; choosing both orders ⊤ avoids the insufficient-regularity zero branch. |
| 9 | `Distribution.ofFun`, same file:302 | Native locally integrable-function distribution; nonintegrable input gives zero. Smooth tests in R02 are integrable, so no junk-value escape. |
| 10 | `TemperedDistribution`, `Mathlib/Analysis/Distribution/TemperedDistribution.lean:53` | Pointwise-convergence dual, not a promised strong topology. |
| 11 | `LinearPMap`, `Mathlib/LinearAlgebra/LinearPMap.lean:41` | A linear map from a specified submodule, not an everywhere-defined generator. |
| 12 | `Seminorm`, `Mathlib/Analysis/Normed/Module/Seminorm/Basic.lean:49` | Homogeneity and triangle inequality; separation is not part of one seminorm. |
| 13 | `WithSeminorms`, `Mathlib/Analysis/LocallyConvex/WithSeminorms.lean:283` | Identifies the topology induced by a family; it does not by itself give completeness or Hausdorffness. |
| 14 | `UniversalEnvelopingAlgebra.lift`, `Mathlib/Algebra/Lie/UniversalEnveloping.lean:92` | Existing Lie-map/algebra-map universal property, sufficient for the extension step. |
| 15 | `Measure.IsHaarMeasure`, `Mathlib/MeasureTheory/Group/Measure.lean:785` | Compact finiteness, left invariance and open positivity; regularity is separate as the README says. |
| 16 | `Continuous.integrable_of_hasCompactSupport`, `Mathlib/MeasureTheory/Function/LocallyIntegrable.lean:622` | The removed integrability admission is indeed a direct library application. |
| 17 | `banach_steinhaus`, `Mathlib/Analysis/Normed/Operator/BanachSteinhaus.lean:36` | Completeness of the domain and pointwise boundedness produce a uniform operator bound. |
| 18 | `oneParameterSubgroup` / `contMDiff_oneParameterSubgroup`, `TauCeti/Geometry/Lie/Exponential/Basic.lean:180,207` | Native subgroup and smooth real-parameter orbit; no replacement exponential is planned. |
| 19 | `TauCeti.Semigroups.StronglyContinuousSemigroup`, `TauCeti/Analysis/Semigroups/Basic.lean:43` | Nonnegative-time real operators, semigroup laws, strong continuity at zero; completeness is needed by later analytic theorems. |
| 20 | `domain` / `generator`, `TauCeti/Analysis/Semigroups/Generator/Basic.lean:90,113` | Positive-side difference-quotient domain and actual linear partial map. |
| 21 | `isClosed_generator`, `TauCeti/Analysis/Semigroups/Generator/Closed.lean:91` | Closedness theorem is already supplied. |
| 22 | `IsSmoothVector` / `smoothVectors` / half-line comparison, `TauCeti/Analysis/Semigroups/Generator/SmoothVectors.lean:45,49,126` | All power domains and smooth half-line orbits, with real Banach hypotheses in the comparison. |
| 23 | `reCLM`, `ofRealLI`, `equivProd`, `ContinuousLinearMap.complexify`, `TauCeti/Analysis/Normed/Module/Complexification.lean:274,288,303,356` | Contractive real projection, isometric inclusion, product topology and extension of real bounded operators. These are normed-space objects, not the missing general Fréchet tensor comparisons. |
| 24 | `chartVolumeDensity`, `chartVolumeDensity_pos`, `contMDiffOn_chartVolumeDensity`, `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Basic.lean:46,59,72`; `Homeomorph.measurePreserving_riemannianVolume`, `VolumeDensity/Isometry.lean:177` | Positivity on the chart, smooth metric requirement, and Lindelöf hypotheses on the global isometry theorem. The README's localization respects them. |

Object searches covered representations, tests/distributions, partial generators/powers, smooth topology, real complexification, projective tensors, Fréchet open mapping, and Banach holomorphic calculus. The native carriers are used rather than recreated. Manifold tests and smooth-vector predicates are the small definitions needed by the headlines; their real bodies and namespace do not collide with the available supplier declarations.

### Cross-roadmap ownership and order

Main was checked at `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. The roadmap tools searched main and the indexed open heads; the supplied board package index was read and board package files searched for the relevant analytic/tensor objects. None of the five listed board packages claims these constructions. The broad search was narrowed by object to avoid truncated-result conclusions. Existing-roadmap revisions were inspected for ownership context, never promoted to suppliers. The citation resolver found no unresolved roadmap references, but its output expressly did not check these local pins; the library checks above were done directly.

The following **10 supplier/consumer groups** were resolved:

| Roadmap contract | Resolved passage | Ownership consequence |
|---|---|---|
| AutomorphicFormsOnReductiveGroups §0.1a | `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:112`, open new-roadmap head | Complex archimedean tests, fixed-support topology, convolution and smooth approximate identities; the real/general-component extension is distinct. |
| Same, §2.1 and compact gap | Same file:51,299–317 | Field-general orbit finiteness and Banach density come through `gap:banach-gfinite-density`; the complete locally convex extension is supplied by §2.1. |
| Same, §2.7 | Same file:467–475 | Complex all-word topology, derived action, smoothing/density and finite-sum factorization already have an owner. This roadmap's real and support-refined comparisons are additions. |
| CompactGroups Layer 5 | Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:318` | Representative-function uniform density is actually present; generic Banach orbit-span density is correctly treated as the supplier's gap. |
| LieGroups Layers 0–3 | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233,261,275,300` | Lie algebra/exponential/local inversion, Ad and automatic smoothness. Product-of-exponentials coordinates follow using the stated local inverse-function inputs. |
| OneParameterSemigroups Part A | Main `Completed/OneParameterSemigroups/README.md:90` | Closed densely defined generators, powers and semigroup foundation; the group two-sided comparison is additional. |
| BanachSpaceTheory B4 | Main `TauCetiRoadmap/BanachSpaceTheory/README.md:167,190–209` | Real/complex completed Banach tensors and bilinear universal property. No new generic Banach completion is planned here. |
| NoncommutativeGeometry N1/N6 | Main `TauCetiRoadmap/NoncommutativeGeometry/README.md:12,84–99,480–499` | N1 supplies complex locally convex tensors; N6 supplies torus rapid coefficients and 2πi derivations. Real tensor extension still needs R01. |
| BanachAlgebras A1–A2/A7 | Main `TauCetiRoadmap/BanachAlgebras/README.md:219–249,875–934` | General inversion/HFC and precisely the modular convention, localized integration and globally bounded L¹ comparison claimed here. Its reference back to this roadmap is a scope boundary, not an input to A7's proof. |
| NoncompactQuantumSymmetry M0 / OperatorKTheory K3 | Supplied open heads: `TauCetiRoadmap/NoncompactQuantumSymmetry/README.md:628,676–713`; `TauCetiRoadmap/OperatorKTheory/README.md:356–372` | Hilbert analytic-vector/elliptic closures and inverse-closed Fréchet K-comparison are consumer extensions. The generic Banach theory here must remain their shared input. |

There is a further explicit ownership overlap to record, rather than creating an upward edge: `TauCetiRoadmap/LocallyAnalyticDistributions/README.md:1107` also plans the Fréchet open mapping theorem without an ultrametric hypothesis; SpectralManifolds SM3 consumes it at `README.md:83`. The candidate order places SmoothBanachRepresentations at line 63 and LocallyAnalyticDistributions at line 64. Under the brief's rule for a needed notion in a later roadmap, keep the theorem owned in this roadmap's §7.2 and move the overlapping later contract to consumption of that earlier theorem. Do not add LocallyAnalyticDistributions or SpectralManifolds as an upward supplier here. This records the ownership move; it does not claim that the other read-only roadmaps were edited.

The open N1.Tensor revision was read at `TauCetiRoadmap/NoncommutativeGeometry/README.md:104` and does contain the proposed real tensor and scalar maps. Its existence does not resolve R01 because it revises an existing roadmap; an eligible registered Part II contract is required. No second fully qualified declaration in the reviewed namespace was found by the Lean ownership search.

## Not verifiable

- **Primary Dixmier–Malliavin**, Lemma 2.5 and Theorems 3.1, 3.3, Bulletin des Sciences Mathématiques 102 (1978), pp.305–330: the sources-service bibliographic request found no legal readable copy. The README itself calls these locators uncertified. The missing-source record retains this work under `dixmier-malliavin`; no primary page/theorem-number verification or attribution of a primary-source error is claimed. This review is completed, not parked.
- Casselman's Proposition 6.1 supplies support control for the first kernels and smooth inner vectors. It does **not** explicitly state the second-factor support refinement of the function theorem, nor the full Banach-norm dual-compactness argument in §5.1. Their given proof routes were inspected and tested as new obligations; they were not falsely certified as quoted source theorems.
- The strongest fixed-support dual topology comparison is not formalized by the scalar probe. The probe shows that the scalar headline can already be stated on native distributions; the additional topology/vector theorem remains work for the roadmap.
- General real locally convex tensor/scalar-comparison supply is not certified, for the concrete registration/ownership reason in R01. The mathematical examples of those maps do not manufacture a supplier contract.
- Source citations inside suppliers were not recursively certified as part of this folder review. The supplier contracts themselves were read at main or the admissible new-roadmap head. No ownership claim is based on an unread historical version.

## Source issues

- **Error** in casselman at Proposition 1.1, printed p.2 (lines 67–72): the source says derivatives of order at most m of C^m functions can sum to the Dirac distribution; it should allow derivative orders beyond m and specify those finite orders; affects a stated result.
- **Error** in casselman at Proposition 2.2(a), printed p.6 (lines 278–284): the source says the inverse Fourier residue sum has coefficients 1/ϕ′(iλ); it should include the contour factor 2πi; affects the proof.
- **Error** in casselman at proof of Proposition 2.2, printed p.6 (lines 293–300): the source says (s²+α²)²+4s²≥s⁴+4s²+1 whenever α²≥0; it should assume α²≥1 for that bound, or use a weaker valid estimate; affects the proof.
- **Misprint** in casselman at proof of Theorem 2.1, printed p.8 (line 436): the source says y^m exp(2πλy) has a finite positive maximum; it should have exponent −2πλy; affects the proof.
- **Misprint** in casselman at proof of Lemma 4.2, printed p.10 (line 509): the source says the derivative of λ^(n+1)exp(−2πλ) has inconsistent powers; it should be λ^n exp(−2πλ)(n+1−2πλ); affects the proof.
- **Misprint** in casselman at proof of Lemma 4.1, printed pp.10–11 (lines 551–566): the source says the positive coefficient series equals χλ and uses the incompatible reciprocal ratio; it should equal ϕλ, with the partial sum multiplied by χλ; affects the proof.
- **Gap** in casselman at proof of Lemma 4.4, printed p.11 (lines 577–578): the source says to take α_j=1/(j²C*_j) for unrestricted input C; it should use positive denominators, for example 2^(−j)/max(1,C*_j), including j=0; affects the proof.
- **Misprint** in casselman at proof of Lemma 5.1, printed p.12 (line 623): the source says to combine coefficient upper bounds by a supremum; it should use a minimum satisfying all prescribed upper bounds; affects the proof.
- **Misprint** in casselman at proof of Proposition 6.1, printed p.13 (lines 654–669): the source says the positive-coefficient distribution and vector series have no alternating signs; it should use (−1)^n with consistent absorbed Fourier normalization in both; affects the proof.
- **Misprint** in casselman at proof of Proposition 6.1, printed p.13 (lines 670–672): the source says to add the second term after π(μ₀)α₀=v+π(μ₁)v; it should subtract that term or negate its factor; affects the proof.
