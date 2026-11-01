# Review of SmoothBanachRepresentations (pull request #1145 at 22d2666)
Folder: `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/`

**Verdict:** needs changes

:robot: Independent AI incremental re-review of 40 changed lines since 02994d5. Two findings remain, one blocking. The scalar-parametrix headline repair is complete. No pull-request file was changed.

## R01 (P1) — Register the real tensor supplier contract

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:64`, consumed at :432 and :434: “What NoncommutativeGeometry, Part II must provide (gap:real-locally-convex-tensors)”.

**Claim:** The real locally convex completed tensor and its scalar-comparison maps can be consumed as a declared supplier gap.

**Witness:** `packages/SmoothBanachRepresentations/design/plan.json` is absent. The open-roadmap index contains no NoncommutativeGeometryPartII. Main `TauCetiRoadmap/NoncommutativeGeometry/README.md:12,86` supplies complex tensors; its open revision supplies real tensors but is ineligible as a dependency under this brief.

**Repair:** Establish the Part II owner and its section, then register the real tensor and scalar-comparison obligations in the package plan's `gaps`, with matching README slugs, named supplier and precise needs. Separate independently deliverable contracts if needed. Cite that registered contract in §7.3 while retaining N1 on main as the complex supplier. A prose-only proposed contract does not satisfy the registration rule.

**Repair test:** For real lines, complexification of ℝ⊗̂ℝℝ and ℂ⊗̂ℂℂ both give ℂ, sending `(1⊗1)⊗1` to `1⊗1`. For complex lines restricted to ℝ, the balancing map has real dimensions 4→2 and kills `i⊗1−1⊗i`. The supplier must provide the second map as a quotient, not an isomorphism. These examples remain correct; the missing piece is admissible ownership and registration.

This carries forward previous R01. No supplied repair report marks it “not actionable in this package”; the present diff leaves its passages unchanged.

## R02 (P3) — Record the two references in the source manifest

**Location:** `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md:499`, “References”; the new headline cites Casselman at `Suggested.lean:112`.

**Claim:** The bibliography alone supplies the required source record.

**Witness:** The folder still contains only `README.md` and `Suggested.lean`, with no `sources.toml`. The sources service fetched Casselman's author copy, but found no legal readable primary Dixmier–Malliavin copy.

**Repair:** Add the required `sources.toml`, one lifetime key per work, with locators, cited targets and actual retrieval status. Record Casselman's 24 January 2016 revision and distinguish its statements from the roadmap's extensions; record the primary locators as uncertified rather than verified. This review does not edit the manifest.

**Repair test:** The scalar target must resolve to Casselman Lemmas 4.1–4.2, pp.9–10, and Lemma 5.1, p.12; factorization resolves to Proposition 6.1, p.13. Those pages were read. The primary Lemma 2.5 and Theorems 3.1, 3.3 were not read. This carries forward previous R03 and is nonblocking on its own.

## Previous findings

- R01 — not repaired: README:64 still proposes `gap:real-locally-convex-tensors`, consumed at :432–434, without the matching plan registration or an eligible Part II owner. Repeated as this report's R01.
- R02 — repaired: `Suggested.lean:113` now states `scalarParametrix`; README:319 describes its native distribution topology. The docstring limits its omission explanation to the stronger comparison and vector passage. The new theorem elaborates and matches the source-supported scalar statement.
- R03 — not repaired: README:499–502 retains both references, but the folder still has no `sources.toml`. Repeated as this report's R02.

## Verified sound

This is an incremental review, not a new full review of unchanged material. The previous report is `packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md`. Its 74 computed rows are carried below with individual citations; seven fresh rows test the added scalar signature and Checks. The changed passages introduce no new mathematical defect found in these tests. The checks do not prove the admitted theorems.

The repository README's standing checklist and CONTRIBUTING were read. The literal parent paths in the supplied AGENTS text were absent, so the checkout-root documents were used. Main's BanachSpaceTheory and NoncommutativeGeometry were also read for shape and contracts. Head is exactly `22d2666b03e78425f05a9d8d6ddf47fa179874d6`; the requested outside-folder diff is empty and the worktree remains clean.

### Gate and elaboration

The supplied head-specific worker gate reports every scanner and build passing:

```text
gate SmoothBanachRepresentations: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The full gate rerun in this review reported all text/scope checks zero, but stopped before building with this diagnostic:

```text
  depcheck: NOT IN ORDER: SmoothBanachRepresentations (insert it after its last supplier)
```

This is an order-input discrepancy, not an upward edge or cycle. The brief explicitly says that absence from the merge order is not a finding. The required separate movable check using the supplied candidate order completed with this entire output:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The raw full-gate rerun therefore did not report a pass; its sole failure is the explicitly exempt condition above. The supplied passing gate and the fresh candidate-order check are recorded separately rather than conflated.

The targeted build `lake build TauCetiRoadmap.RepresentationTheory.SmoothBanachRepresentations.Suggested` passed. Direct `lake env lean` elaboration passed with exactly seven admission warnings and no other warnings. No additional Tau Ceti import build was necessary. A scratch copy also elaborated with `#check @name` for all 12 declarations and three one-tactic closure probes for each of the seven theorems: `simp`, `rfl`, `infer_instance`. All 21 closure attempts failed to close their goals, as required by the probes. No matching single-library-lemma proof was found in the object search. All processes finished.

The expanded signatures agree with the README:

- The five simple definitions legitimately omit analytic hypotheses not needed to define their objects. `smear` is a total Bochner expression; identities still require integrability. `smoothLieVectors` retains the scalar tower used for scalar closure.
- Smoothing, density, both factorizations and lifting retain the finite-dimensional, boundaryless, Hausdorff Lie-group and completeness hypotheses. The integral statements retain Borel, regular Haar and local compactness assumptions. Lifting retains both orbit-continuity assumptions and completeness of both spaces.
- `scalarParametrix` has exactly ε, ε>0, β and positivity of β at n≥1 as assumptions. The `omit` command removes unrelated group assumptions. Both tests are real-valued at infinite order; α is positive also at zero, but only its positive-index entries have upper bounds. Its real scalar form feeds both real and complex Banach representations.
- `smooth_inverse` retains the Banach-algebra and algebra-action assumptions; it does not need Haar/Borel assumptions. None of the six scanner leads about dropped binders is a defect. No declaration was changed during review.

### Headline inventory

| README headline | Status at this head |
|---|---|
| §2.1 finite-k criterion and complete mixed-word smooth topology | Docstring names the missing stronger Fréchet carrier. Unchanged. |
| §§3.1–3.2 continuous Lie/enveloping action and covariance | Docstring names the stronger carrier; imported algebraic enveloping API is reused. Unchanged. |
| §3.3 smoothing | `isSmoothLieVector_smear`, over both fields. |
| §4.1 density and smooth-topology approximation | `dense_smoothLieVectors`; the stronger topology interface remains named in the docstring. |
| §5.1 scalar compact-support parametrix | Now `scalarParametrix`; full scalar existence and native distribution convergence, with prescribed support and arbitrary positive nonconstant bounds. |
| §5.1 fixed-support strong-dual comparison and Banach-vector passage | Remain explicit README construction targets and named omissions; native distribution convergence does not pretend to state these interfaces. |
| §6.1 support-controlled vector and function factorizations | `dixmierMalliavin`, `dixmierMalliavin_function`; smooth inner vectors and second-factor support retained. |
| §7.2 quotient lifting and topological exactness | `smooth_lift`; stronger topology comparison named as unavailable. |
| §7.3 dense smooth tensor comparison | Missing tensor/smooth-topology carriers identified; supplier registration still R01. |
| §8.1 inverse closure at all matrix levels | `smooth_inverse`; finite matrix algebras are covered by the general Banach-algebra signature. |
| §8.1 holomorphic closure and torus topology comparison | General holomorphic calculus and stronger smooth-topology interfaces remain identified; no stand-in added. |

### Sources and the seeded sample

Casselman's author-hosted *The theorem of Dixmier & Malliavin*, revision of 24 January 2016, was fetched through the sources service and its §§4–6 read. The changed §5.1 statement is supported by Lemma 4.1, pp.9–10 (casselman line 492), Lemma 4.2, p.10 (line 524), and Lemma 5.1, p.12 (line 609). The latter gives positive coefficient control, compact smooth kernels, arbitrary small support and the Dirac-plus-smooth limit. Its proof's simultaneous bounds must be minima, as the roadmap already specifies. Real-valued kernels follow from the even real Fourier reciprocal and real cutoff. Compact-convergence of the sequence follows from weak convergence and equicontinuity on the barrelled test space; the stronger fixed-support and Banach-vector comparisons remain separate obligations.

The dependent factorization proof was reread at Proposition 6.1, p.13 (casselman lines 645–682). The roadmap retains alternating coefficients and subtraction of the remainder, correcting the exposition's sign slips. The new native-distribution statement does not remove the fixed-support/vector argument needed by the factorization route.

The 15 seeded targets are accounted for below. “Carried” means the source/supplier assessment and computed rows of the previous report are inherited under the incremental-review rule, not that its source was fetched again for an unchanged passage. Supplier citations themselves were resolved anew below.

| Seeded target | Source assessment this round | Computed rows |
|---|---|---|
| 0.2 Two-sided generator comparison | Carried: Casselman p.1 background; inverse-group comparison locally owned. | 5–6,47 |
| 1.1 General test spaces | Carried: Casselman p.1 background; supplier §0.1a and local real/general-group extension. | 10–15 |
| 1.2 Smooth Haar density | Carried: Casselman fixes Haar; smooth density/localization is the named new route. | 16–17 |
| 1.3 Local integrated operators | Carried: Casselman p.1 and native Bochner API with compact-support hypotheses. | 18–19 |
| 1.4 Convolution and modular covariance | Carried: Casselman p.1 plus BanachAlgebras A7 for nonunimodular conventions. | 20–24 |
| 1.5 Smooth approximate identities | Carried: Casselman p.1, §0.1a and A7.ChosenApproximateIdentity. | 25–26 |
| 3.1 Real Lie and enveloping action | Carried: Casselman p.1 and LieGroups; real transport and continuity remain new obligations. | 35–37 |
| 3.4 Modular integration by parts | Carried: derived from A7, not attributed to an absent nonunimodular Casselman formula. | 44–45 |
| 4.1 Real approximation and compact-finite comparison | Carried: supplied complex density and real complexification comparison. | 46–50 |
| 5.1 Scalar parametrix and passage to vectors | Fresh: Lemmas 4.1–4.2 and 5.1; source proof and native carrier checked, stronger passage distinguished. | 51–58,75–81 |
| 6.1 Prescribed-support factorization | Fresh dependent-source reading: Proposition 6.1; second-factor support is the explicit local fixed-support proof refinement. | 59–63 |
| 7.1 Intertwiners and subspaces | Carried: orbit differentiation and word topology; not a direct statement of Proposition 6.1. | 64–66 |
| 7.3 Smooth tensor comparison | Carried mathematical checks; real supplier registration still missing. | 67–69 |
| 7.4 Continuous contragredients | Carried: restriction to norm-continuous dual orbits is essential. | 70 |
| 8.1 Smooth algebras and spectral invariance | Carried: BanachAlgebras A1–A2 and NoncommutativeGeometry N6; conventions resolved anew. | 71–74 |

### Adversarial computations

Rows 1–74 preserve the previous report's numerical witnesses, with the disposition of row 55 updated for the repaired signature. Rows 51–58 were also reconsidered against the new statement and the reread proof. Rows 75–81 are new computations for the changed passages. Arithmetic examples in positive characteristic are outside the actual real scalar statement.

| # | Statement | Instances tried and computed sides/values | Result; change and provenance |
|---|---|---|---|
| 1 | Strong continuity predicate | Translation of 1_[0,1]: L∞ orbit difference =1 for 0<abs(t)<1; L² difference =√(2 abs(t))→0. | Correctly rejects the first, accepts the second; retain.  [Previous review, row 1](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 2 | Strong versus operator-norm continuity | L² translations: each fixed-vector difference→0, but operator norm of T_t−I is 2 for t≠0. | Strong continuity is the intended condition; retain.  [Previous review, row 2](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 3 | Compact operator bounds, joint action | π(t)x=e^t x: sup on [−1,1]=e, global sup=∞; (t,x)→(0,2) gives e^t x→2. | No false global bound; retain.  [Previous review, row 3](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 4 | Restriction/products/intertwiners of strong actions | Diagonal characters e^t,e^(2t): projection of π(t)(x,y) is e^t x, equal to the first-factor action; at t=0 both give x. | Retain.  [Previous review, row 4](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 5 | Two-sided/half-line generator | e^t x: right and left difference-quotient limits both x; realification of e^(it)z gives iz in both descriptions. | Retain.  [Previous review, row 5](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 6 | Generator zero direction/closedness | X=0: derivative=0, domain=E; graph limit (v_n,0)→(v,0) stays in graph. | Retain native closed generator.  [Previous review, row 6](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 7 | Word recursion/order | H=diag(1,0), N=E₁₂, v=(0,1): HNv=(1,0), NHv=(0,0). | Rightmost-first order required; retain.  [Previous review, row 7](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 8 | Empty/repeated word and powers | Empty word on x gives x; n repeats of generator I give x for n=0,1,2; nonempty zero-generator word gives 0. | Matches native power domains; retain.  [Previous review, row 8](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 9 | Nonexample to generator-domain membership | L² step function: squared difference-quotient norm =2/abs(t)→∞, although orbit differences tend to 0. | Domains are not all vectors; retain.  [Previous review, row 9](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 10 | Manifold test-function definition | Nonzero compact smooth bump b is admitted; constant 1 on ℝ has support ℝ; abs(x) has unequal one-sided derivatives −1,1; zero support=∅. | Definition distinguishes all four; retain.  [Previous review, row 10](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 11 | Fixed-support spaces | K=∅ or {0} in ℝ gives D_K={0}; bump in [−1,1] is admitted there and excluded from [2,4]. | Retain.  [Previous review, row 11](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 12 | Test linearity/products/differentiation | b+b=2b and D(2b)=2Db; outside supp(b), b²=Db=0. Zero scalar gives empty support. | Linear/product/support API consistent; retain.  [Previous review, row 12](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 13 | Translation/inversion/zero extension | b(x−3) has support [2,4] if b has support [−1,1]; inversion x↦−x fixes that symmetric interval; extension of a chart bump vanishes beyond its compact margin. | Retain.  [Previous review, row 13](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 14 | Fixed-support derivative topology | b(x)sin(nx)/n with b=1 near 0: degree-zero norm≤‖b‖/n→0; derivative at 0=1. | Uniform norm cannot replace derivative topology; retain.  [Previous review, row 14](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 15 | Final test topology | b(x−n): every derivative on a fixed compact eventually 0; a continuous weighted seminorm with weight e^abs(x) grows at a nonzero translated bump value. | Compact-open convergence does not imply test-space convergence; retain.  [Previous review, row 15](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 16 | Smooth positive Haar density | Affine group: left translation Jacobian a₀² and density (a₀a)^−2 yield a^−2; chart density at a=1,2 is 1,1/4. | Positivity and invariance agree; retain.  [Previous review, row 16](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 17 | Volume localization/no countability | Uncountable discrete G: H={1}, compact K finite; integral of 1_K with singleton mass c is c·card(K), while μ(G)=∞. | Finite localization works without global σ-finiteness; retain.  [Previous review, row 17](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 18 | Local integral/total-function caveat | Trivial scalar action, μ({1})=2: smear(f,v)=2f(1)v; f=0 gives 0. Constant 1 over ℝ is not integrable. | Identity claims require integrability; retain.  [Previous review, row 18](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 19 | Integral estimate/naturality | Nonnegative f on [−1,1], e^t character: abs(∫fe^t)≤e∫f; scalar T=2 gives Tπ(f)v=2π(f)v=π(f)Tv. | Local bound and intertwining agree; retain.  [Previous review, row 19](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 20 | Convolution order | Counting S₃, s=(12),t=(23): δ_s*δ_t=δ_st, but δ_ts is the other 3-cycle. | Reversed convention excluded; retain.  [Previous review, row 20](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 21 | Convolution association/support | On ℤ, δ₁*δ₂=δ₃ and (δ₁*δ₂)*δ₃=δ₆=δ₁*(δ₂*δ₃); supports {1}+{2}={3}. | Retain.  [Previous review, row 21](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 22 | Integrated multiplication/left covariance | Counting group: π(δ_s*δ_t)=π(st)=π(s)π(t); L_sδ_t=δ_st, hence π(s)π(δ_t)=π(δ_st). | Retain.  [Previous review, row 22](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 23 | Modular right translation | Affine c(a₀,0)=a₀: at a₀=2, integral of F(xg)=2∫F; inverse choice would give (1/2)∫F. | Convention matches A7; retain.  [Previous review, row 23](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 24 | Involution/unitary comparison | Unimodular cyclic group: δ_s*=δ_s⁻¹ and unitary π(s)*=π(s⁻¹); affine c(g)c(g⁻¹)=2·(1/2)=1, giving (f*)*=f. | Retain modular factor.  [Previous review, row 24](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 25 | Smooth approximate identity mass/localization | Trivial action: ∫u=1 gives π(u)1=1; ∫u=0 gives 0. A support avoiding 1 fails sufficiently small identity neighborhoods. | Both mass and shrinking support needed; retain.  [Previous review, row 25](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 26 | Discrete dimension zero | μ({1})=2: u(1)=1/2 and (u*u)(1)=2·(1/2)²=1/2; unnormalized δ₁ squares to 2δ₁. | Retain dimension-zero treatment.  [Previous review, row 26](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 27 | Finite regularity k=0,1,2 | Trivial action: E^k=E for all three, every positive derivative=0; step function lies in E⁰ but not E¹ or E². | Both directions have discriminating instances; retain.  [Previous review, row 27](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 28 | Frame-to-coordinate derivative bridge | On ℝ with frame 2∂x and f=x: frame derivative=2, inverse coefficient=1/2, reconstructed coordinate derivative=1. | Frame inverse is essential; retain.  [Previous review, row 28](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 29 | Smooth carrier/submodule | Trivial action on ℝ²: smooth set=ℝ²; 0+v=v and a v stay in it. For rotations, finite sums of smooth modes remain smooth; a nonsmooth continuous cusp does not. | Real bodies determine the carrier; retain.  [Previous review, row 29](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 30 | Word seminorm, zero module | Trivial action p_m(v)=‖v‖ because only the empty word survives; E=0 gives p_m(0)=0. | Separating family uses the empty word; retain.  [Previous review, row 30](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 31 | Smooth topology versus ambient norm | v_n=e^(inx)/n: p₀=1/n→0, p₁=1/n+1→1. | Stronger topology is necessary; retain.  [Previous review, row 31](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 32 | Change of basis/equivalent seminorms | e^(ix): for ∂x, p_m=m+1; for 2∂x, p_m=2^(m+1)−1. At m=2: 3 versus 7. | Equality of topologies, not seminorms; retain.  [Previous review, row 32](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 33 | Completeness/word-coordinate compatibility | e^(ix)/n tends in every fixed p_m to 0 with p_m=(m+1)/n; derivative coordinate limits are 0=D0. | Consistent with closed first-order graph argument; retain.  [Previous review, row 33](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 34 | Smooth-space calculus interface | t↦t e^(ix): each word coordinate is t i^r e^(ix), derivative i^r e^(ix); inclusion into C(S¹) has the same derivative. | No fictitious Banach norm required; retain.  [Previous review, row 34](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 35 | Lie bracket and real linearity | H,N above: [H,N]v=Nv=(1,0); (2H+N)v=(1,0)=2Hv+Nv. | Anti-representation would give wrong bracket sign; retain.  [Previous review, row 35](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 36 | Enveloping unit/order | 1_U v=v; (HN)v=(1,0), (NH)v=0; HN−NH acts as N. | Universal algebra multiplication order fixed; retain.  [Previous review, row 36](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 37 | Derivative seminorm bound | e^(ix), X=c∂x: p_m(dπ(X)v)=abs(c)(m+1)≤abs(c)(m+2). | Bound independent of v is plausible and consistent; retain.  [Previous review, row 37](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 38 | Ad conjugation | g=diag(2,1): gNg⁻¹=2N; acting on (0,1), both sides of covariance give (2,0). | Retain.  [Previous review, row 38](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 39 | Disconnected covariance | Reflection g=−1 in ℝ⋊{±1}: Ad(g)X=−X; conjugating translation generator gives −D, both on f(x)=x locally equal −1. | Disconnected components cannot be omitted; retain.  [Previous review, row 39](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 40 | Subgroup restriction | Restrict a rotation action to {1}: every continuous vector becomes smooth; cusp abs(sin x) fails smoothness for S¹. Open-subgroup cosets give fixed linear translates of the same local orbit. | Inclusion for general subgroups, equality only for open restriction; retain.  [Previous review, row 40](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 41 | Left/right invariant fields | Affine: R_H b=b but L_H b=0; [R_H,R_N]b=−1, [L_H,L_N]b=a. | −R is the Lie map used in smoothing; retain.  [Previous review, row 41](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 42 | Smoothing derivative sign | e^t character: integration by parts gives −∫f'e^t=∫fe^t; second derivative gives ∫f''e^t=∫fe^t. | Signs at orders 1 and 2 agree; retain.  [Previous review, row 42](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 43 | Mixed smoothing/order and estimates | Affine fields: R_HR_N b=0, R_NR_H b=1; composition of −R retains this order. Zero f gives both p_m(π(f)v) and derivative bound 0. | Distinguishes reversed words; retain.  [Previous review, row 43](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 44 | Modular integration by parts | Affine H: q_H=1, ∫L_H f=∫f; trivial action gives π(f)dπ(H)1=0=∫(f−L_Hf). | A missing q term would give −∫f; retain.  [Previous review, row 44](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 45 | q and bracket trace | [H,N]=N; tr(ad H)=1, tr(ad N)=0; q_[H,N]=0. | Retain.  [Previous review, row 45](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 46 | Density in norm/smooth topology | Trivial action has approximation error 0 in every p_m. A finite Fourier polynomial is already smooth; rapidly decreasing series have derivative tails→0. | Norm and smooth conclusions distinguished; retain.  [Previous review, row 46](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 47 | Half-line smooth-vector comparison | e^t: A^n v=v and half-line orbit derivatives=e^t v; for X=0, n≥1 powers=0 and orbit constant. | Same smooth vectors with correct one-sided endpoint; retain.  [Previous review, row 47](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 48 | Compact-finite versus smooth | A circle mode has orbit-span dimension 1; Σ_(n≥1)e^(−n²)e^(inx) is smooth with infinitely many nonzero modes and infinite orbit span. | Density is not equality; retain.  [Previous review, row 48](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 49 | Generic compact-group gap | K=∏ C₂: r-coordinate functions lie in a space of dimension 2^r; r=0 gives constants of dimension 1. K is nondiscrete, with singleton identity component. | Generic compact density is not a Lie theorem; imported gap retained.  [Previous review, row 49](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 50 | Complexification/projection | x+iy↦x; inclusion then projection sends 1↦1. Complex circle mode projects to cos x, whose real rotations span cos x,sin x (dimension 2). | No erroneous dimension-one real conclusion; retain.  [Previous review, row 50](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 51 | Scalar product/reciprocal normalization | At y=0 product=1 and partial multiplier=1; at y≠0 N=0 ratio=1/product∈(0,1). For finite factors λ=2,4 at y=1: product=85/64, ratio=64/85. | Positivity and partial/full bound agree; retain.  [Previous review, row 51](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 52 | Fourier even-derivative signs | Fourier(D²g)(y)=−4π²y² ĝ(y); coefficient −α₁ yields +4π²α₁y² ĝ(y). | Alternating signs and absorbed powers match; retain.  [Previous review, row 52](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 53 | Tail maximum | F(λ)=λe^(−2πλ): derivative at 1/(4π) is +(1/2)e^(−1/2); at 1/π it is −e^(−2); maximum at 1/(2π). | Global decreasing assumption excluded; retain.  [Previous review, row 53](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 54 | Simultaneous coefficient bounds | β₁=1/10, D₃=100: α₁≤1/100 gives α₁D₃≤1; choosing maximum 1/10 gives 10. | Minimum/simultaneous bounds required; retain.  [Previous review, row 54](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 55 | Scalar parametrix and α₀ | Pair with cutoff equal to 1 on common support: δ gives 1, positive-order derivatives integrate to 0, so α₀∫g=1+∫h. | Nonconstant bounds do not constrain α₀; signature is now present. Recomputed this round.  [Previous review, row 55](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 56 | Distribution-to-vector convergence | ℓ² e_n: every fixed dual pairing→0, but norm=1. Fixed-support distribution convergence plus compact dual-paired orbit family instead controls the supremum of pairings. | Weak convergence alone is insufficient; route explicitly adds compactness/equicontinuity.  [Previous review, row 56](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 57 | Vector series/factorization signs | e^t orbit: A^(2n)v=v; n=1 term=−α₁v. From π_X(g)η=v+π_X(h)v, subtracting gives v; adding would give v+2π_X(h)v. | Retain corrected signs.  [Previous review, row 57](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 58 | Finite-family coefficient selection | For finitely many vectors with derivative bounds M_(j,n), choose α_n≤2^(−n)/max(1,M_(j,n)) over the finitely constrained indices; each constrained product≤2^(−n). | Countable diagonal bounds are compatible; retain.  [Previous review, row 58](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 59 | Vector factorization zero/trivial group | v=0: n=0 sum=0. One-point group mass 2: f=1/2, w=v gives π(f)w=v. | Headline handles zero and dimension zero; retain.  [Previous review, row 59](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 60 | Product-chart density | J=2 and product kernel k: density k/2 integrated against 2dt gives ∫k; omission gives 2∫k. | Denominator J>0 fixed; retain.  [Previous review, row 60](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 61 | Exact span versus closure | Trivial representation: π(u)v=v for mass-one u, so span=E=E∞ without taking closure. A zero-mass-only family would give span={0}. | Retain genuine finite witnesses, not a density substitute.  [Previous review, row 61](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 62 | Function support refinement | φ=0: n=0. Derivative series of a bump in [−1,1] vanish at 2, as do their fixed-support limits; translate by 3 can be nonzero at 3. | Fixed-support proof is appropriate; arbitrary translates are not.  [Previous review, row 62](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 63 | Function convolution on trivial group | Haar mass 2, f=1/2,h=φ: (f*h)(1)=2·(1/2)φ(1)=φ(1); supp(h)=supp(φ). | Both support restrictions and normalization agree; retain.  [Previous review, row 63](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 64 | Intertwiners and closed subspaces | Trivial ℝ² action, M={0}×ℝ: M∞=M=M∩E∞; identity T maps v↦v and preserves every derivative, all positive derivatives 0. | Retain.  [Previous review, row 64](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 65 | Smooth lifting/kernel topology | Projection ℝ²→ℝ: smooth 1 lifts to (1,0), kernel={0}×ℝ; zero quotient lifts 0 to 0. | Surjectivity hypothesis and kernel identification agree; retain.  [Previous review, row 65](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 66 | Open mapping/quotient control | Projection sends open radius-ε ball onto (−ε,ε); diagonal x_n↦x_n/n on ℓ² has dense proper range (1/n has no ℓ² preimage). | Surjectivity, not dense range, is required; retain.  [Previous review, row 66](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 67 | Tensor derivative/shuffle | e^t⊗e^(2t): first derivative 3=1+2; second 9=1+2·1·2+4. | Full shuffle/mixed term required; retain.  [Previous review, row 67](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 68 | Tensor scalar comparisons | ℝ⊗̂ℝℝ≅ℝ, complexification≅ℂ; balancing ℂℝ⊗ℝℂℝ→ℂ sends i⊗1−1⊗i↦0. Domain real dimension 4, target dimension 2. | Mathematics agrees; register R01 supplier.  [Previous review, row 68](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 69 | Dense smooth pure tensors/no isomorphism | Trivial one-dimensional factors: tensor map sends 1⊗1↦1 and has full range. Zero factor gives source=target=0. | Consistent with density; these cases do not justify a general injectivity claim, which is absent.  [Previous review, row 69](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 70 | Continuous contragredient | Rotated point masses: ‖δ_z−δ₁‖=2 for z≠1; Haar and zero have constant orbit. e^t scalar action dualizes to e^(−t), derivative pairing=−λ(x). | Correct subspace and negative transpose; retain.  [Previous review, row 70](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 71 | Smooth-algebra/action hypotheses | Scalar e^t action: α_t(1·1)=e^t but α_t(1)α_t(1)=e^(2t), so excluded. Zero algebra: 0=1 and its only unit is smooth with smooth inverse. | No hidden nonzero-algebra restriction; retain.  [Previous review, row 71](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 72 | Inverse closure/noncommutative derivative | diag(e^t,1) conjugation, a=I+E₁₂: a⁻¹=I−E₁₂; derivatives E₁₂ and −E₁₂; −a⁻¹E₁₂a⁻¹=−E₁₂. Trivial scalar unit 2↦1/2 has derivative 0. | Retain full noncommutative rule and matrix generality.  [Previous review, row 72](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 73 | Product/star/HFC | f=h=e^(ix): D²(fh)(0)=−4; derivation-only rule gives −2. δ(U₁*)=−2πiU₁*=δ(U₁)*. For a=I+N,N²=0: exp(a)=e(I+N), a polynomial in a and smooth. | Shuffle, real star law and HFC instances agree; retain.  [Previous review, row 73](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |
| 74 | Torus seminorms/summability | θ=0,1+U₁: Q₀=1, P₀=2. Radius-n shell in ℤ² has 4n points; weighted exponent 3 has tail like 4/n², exponent 2 like 4/n. | Topological equivalence and +3 loss agree, not isometry; retain.  [Previous review, row 74](packages/SmoothBanachRepresentations/reports/PRREVIEW-SmoothBanachRepresentations~3.md). |

| 75 | `scalarParametrix`: index, sign and cutoff pairing | N=0 gives α₀[g]; N=1 gives α₀[g]−α₁D²[g]; N=2 adds α₂D⁴[g]. Against χ=1 near [−ε,ε], all positive-order terms give 0, while δ₀(χ)=1. Both finite sums pair to α₀∫g; limit pairs to 1+∫h. | README:319,347 and Lean:113 agree; missing n=0 would pair to 0. Fresh. |
| 76 | Second-moment sign control | Take a normalized smooth bump g with integral 1 and a test equal to x² near its support. D²[g] pairs to 2, D⁴[g] to 0. With α₀=1, α₁=1/4 the partial sum for N≥1 pairs to ∫x²g−1/2; δ₀+[h] pairs to ∫x²h. A plus sign would give ∫x²g+1/2. | Fixes the even-derivative sign independently of the zeroth moment. This is a necessary moment identity for these coefficient values, not a claim that arbitrary chosen g,h solve the theorem. Fresh. |
| 77 | Strict support-radius hypothesis | ε=0 forces g=h=0 by continuity, so every partial sum is 0. A test χ with χ(0)=1 gives limit sides 0 and 1. At ε=1, a nonzero bump supported in [−1/2,1/2] is admissible as a test; constant 1 on ℝ is not. | New README:348 correctly excludes ε=0; support subtype has genuine examples and nonexamples. Fresh. |
| 78 | β₀ and quantifier scope | Put β₀=−7 and β_n=2^(−n) for n≥1. The hypotheses at n=1,2 are 0<1/2 and 0<1/4; no condition at n=0 requires 0<−7. Witness bounds are α₁≤1/2, α₂≤1/4, with α₀>0 free of β₀. β₁=0 fails the premise. | Real positivity and the n>0 bound match the README; no stray group assumptions. Fresh. |
| 79 | Native distribution derivative and junk values | Infinite-order condition is ⊤+1≤⊤, true. D[g](φ)=−∫gφ′, D²[g](φ)=∫gφ″. For φ=1 near support these are 0,0; for φ=x² there the second is 2∫g. δ₀(χ)=χ(0)=1 in the full-line domain. | No insufficient-regularity zero branch or out-of-domain Dirac. Smooth compactly supported g is locally integrable, so `ofFun` uses the integral branch. Fresh. |
| 80 | Fourier normalization in new signature | At frequency y=1, Fourier(D²g)=−4π² ĝ. Thus the n=1 term −α₁D²g contributes +4π²α₁ ĝ; with α₁=(4π²)⁻¹ that multiplier is +1. Omitting the minus gives −1. At y=0 it contributes 0. | Absorbing Fourier powers into α is consistent with the native derivative. Fresh. |
| 81 | Support and dependent vector identity | For ε=1, a test supported in (2,3) pairs with every derivative of [g] as 0 and with δ₀+[h] as 0. For X=0 and v=1 the vector identity is α₀∫g=1+∫h; subtracting the remainder yields 1, while adding yields 1+2∫h. | Native scalar convergence retains the common support; the dependent route still needs its stated vector comparison. Fresh. |

### Pinned-library and ownership inspection

The unchanged pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Eight declaration/API entries were opened for the new signature; paths below are relative to the pinned Mathlib root.

| Pinned declaration | File and line | What the definition actually provides |
|---|---|---|
| `TestFunction` | `Mathlib/Analysis/Distribution/TestFunction.lean:67` | A real smooth function, compact support, and support within the chosen open domain; the signature sets domain and order to ⊤. |
| `TestFunction.contDiff`, `.hasCompactSupport` | Same file:125,126 | Smooth compact support makes the real scalar kernel locally integrable. |
| `TestFunction.lineDerivCLM` | Same file:560 | Differentiates with the stated regularity condition; the infinite-order choice avoids its zero fallback. |
| `TestFunction.lineDerivCLM_apply_of_le` | Same file:582 | Identifies the operation with the actual directional derivative when k+1≤n. |
| `Distribution` | `Mathlib/Analysis/Distribution/Distribution.lean:165` | Continuous real-linear maps from tests with compact-convergence topology, not a fixed-support strong-dual interface. |
| `Distribution.delta`, `.delta_apply` | Same file:201,208 | Evaluation at the point; full-line domain includes 0. |
| `Distribution.lineDerivCLM`, `.lineDerivCLM_apply` | Same file:234,238 | Negative transpose of test differentiation; twice differentiating has positive pairing sign. |
| `Distribution.ofFun`, `.ofFun_apply`, `.ofFun_eq_zero` | Same file:302,306,312 | Integration against locally integrable functions; zero for non-locally-integrable input. The new theorem's tests satisfy the premise. |

The previous report's other pinned inspections are carried for unchanged material, not represented as freshly reopened here. Object searches at both pins for the compact-support parametrix, distribution derivatives and Dixmier–Malliavin found no theorem supplying the new full existence signature. The roadmap tools searched main and open heads by the same objects; the new theorem's fully qualified namespace/name occurred only in this folder. Pseudodifferential parametrices invert finite-order elliptic symbols and are a different object. AutomorphicFormsOnReductiveGroups §2.7 owns general complex factorization, not this coefficient-controlled scalar analytic engine. Thus §5.1 remains the local owner without duplicating those constructions.

The supplied board package index was checked and available board package README/Lean/plan files were searched by tensor-gap and scalar-parametrix objects. No eligible Part II registration was found. The five indexed packages are unrelated arithmetic/logic packages; their remote contents were not independently fetched, so no exhaustive claim about their contents is made.

### Cross-roadmap citations resolved this round

Main is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. The supplier passages below were reopened, not inferred from the previous review. The roadmap tool identifies AutomorphicFormsOnReductiveGroups as a new roadmap (head d9d4660) and NoncommutativeGeometry's open work as a revision (head 497d5ef); only the former is eligible for supply beyond main.

| Citation group | Resolved repository-relative passage | Result |
|---|---|---|
| AutomorphicFormsOnReductiveGroups §§0.1a,2.1,2.7 | `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:112,299,467` at its new-roadmap head | Complex tests, generic compact density extension, smooth topology and factorization contracts exist. The locally owned real/support refinements remain distinct. |
| CompactGroups Layer 5 and imported gap | Main `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:318`; AutomorphicFormsOnReductiveGroups README:51 | Uniform representative-function density exists; the Banach orbit-span gap is explicitly the supplier's contract. |
| LieGroups Layers 0–3 | Main `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md:233,261,275,300` | Lie algebra, exponential/local coordinates, Ad and automatic smoothness are present. |
| OneParameterSemigroups Part A | Main `Completed/OneParameterSemigroups/README.md:90` | Closed-generator and smooth-power foundation; two-sided comparison remains an extension here. |
| BanachSpaceTheory B4 | Main `TauCetiRoadmap/BanachSpaceTheory/README.md:167,191,204` | Real/complex Banach projective tensor and bounded-bilinear universal property. |
| NoncommutativeGeometry N1 and proposed Part II | Main `TauCetiRoadmap/NoncommutativeGeometry/README.md:12,84`; open revision N1.Tensor at :104 | Main's complex scope is unchanged. Open N1.Tensor does contain real tensors and both scalar maps, but is an ineligible revision supplier; R01 remains. |
| NoncommutativeGeometry N6 | Main `TauCetiRoadmap/NoncommutativeGeometry/README.md:480,493` | Rapid coefficients, gauge-smooth identification and 2πi derivations match the stated convention. |
| BanachAlgebras A1–A2/A7 | Main `TauCetiRoadmap/BanachAlgebras/README.md:219,875,895,915` | Holomorphic calculus, modular convention, approximate identities and globally bounded integrated action contracts remain present. Its :929 reference to local integration here is an ownership boundary, not a prerequisite. |
| NoncompactQuantumSymmetry M0 | Supplied head `TauCetiRoadmap/NoncompactQuantumSymmetry/README.md:676` | Hilbert specialization and elliptic/analytic closure results are downstream; the −R smoothing convention agrees. |
| OperatorKTheory K3 | Supplied head `TauCetiRoadmap/OperatorKTheory/README.md:356` | Dense inverse-closed Fréchet input and K-comparison; consumer, not a supplier of the smooth Banach theory. |

All Needs lines were inspected for changed dependency implications. The scalar theorem adds no cross-roadmap supplier. The chain remains scalar engine → factorization → lifting, with tensor comparisons consuming their independent tensor contract. The previous ownership allocation of the real/complex Fréchet open mapping theorem to §7.2 is unchanged; this review adds no upward dependency to LocallyAnalyticDistributions or SpectralManifolds and edits neither consumer.

## Not verifiable

- Primary Dixmier–Malliavin, Lemma 2.5 and Theorems 3.1, 3.3, Bulletin des Sciences Mathématiques 102 (1978), pp.305–330: the sources-service bibliographic request again found no legal readable copy. The missing-source record uses the existing key `dixmier-malliavin`. Its primary numbering and wording remain uncertified; this does not prevent finishing this incremental review.
- Casselman does not explicitly supply the full fixed-support strong-dual/Banach-vector comparison or the second-factor function-support refinement. These remain explicit proof obligations. Native scalar convergence and the small-instance tests do not certify their completed formal proofs.
- The real locally convex tensor supply is not certified for the concrete ownership/registration reason in R01. Correct finite-dimensional examples cannot replace that contract.
- Unchanged source checks are carried from the previous report. Supplier bibliographies were not recursively re-certified, and the five unrelated remote board packages were not reread in full.

## Source issues

These are the source-proof slips encountered again in the §§4–6 rereading. They are already corrected or explicitly guarded against by the roadmap's proof route; none is a new roadmap finding.

- **Misprint** in casselman at proof of Lemma 4.2, printed p.10 (line 509): the source says the derivative of λ^(n+1)exp(−2πλ) has inconsistent powers; it should be λ^n exp(−2πλ)(n+1−2πλ); affects the proof.
- **Misprint** in casselman at proof of Lemma 4.1, printed pp.10–11 (lines 551–566): the source says the positive coefficient series equals χλ and uses the incompatible reciprocal ratio; it should equal ϕλ, with the partial sum multiplied by χλ; affects the proof.
- **Gap** in casselman at proof of Lemma 4.4, printed p.11 (lines 577–578): the source says to take α_j=1/(j²C*_j) for unrestricted input C; it should use positive denominators, for example 2^(−j)/max(1,C*_j), including j=0; affects the proof.
- **Misprint** in casselman at proof of Lemma 5.1, printed p.12 (line 623): the source says to combine coefficient upper bounds by a supremum; it should use a minimum satisfying all prescribed upper bounds; affects the proof.
- **Misprint** in casselman at proof of Proposition 6.1, printed p.13 (lines 654–669): the source says the positive-coefficient distribution and vector series have no alternating signs; it should use (−1)^n with consistent absorbed Fourier normalization in both; affects the proof.
- **Misprint** in casselman at proof of Proposition 6.1, printed p.13 (lines 670–672): the source says to add the second term after π(μ₀)α₀=v+π(μ₁)v; it should subtract that term or negate its factor; affects the proof.
