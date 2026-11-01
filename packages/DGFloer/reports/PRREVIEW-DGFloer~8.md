# Review of DGFloer (pull request #963 at 738ad99)

**Verdict:** needs changes

🤖 Independent AI review. Incremental re-review of 4 changed lines since a51bf74. The two edited passages repair the product-classification ownership/locator finding and the FHS locator finding. Two blocking dependency findings remain. Checking the formula supported by the corrected FHS citation also exposes the missing nonzero-vector hypothesis in R03. Suggested.lean is unchanged and elaborates; the gate fails on three upward edges and a cycle.

## R01 (P1) — Returning supplier edges still form a cycle

**Location:** `TauCetiRoadmap/DGFloer/README.md:53`, `:90–91`, `:286`, `:854–857`, `:1669`, `:1712`: “HomotopySpheres Stage 4A–4B supplies stable real Bott periodicity only”.

**Claim:** The base DGFloer roadmap can consume TangentialBordism and HomotopySpheres while supplying their prerequisites.

**Witness:** TangentialBordism consumes DGFloer and StringOrientation (README:142–143); StringOrientation consumes DGFloer (README:214–217); HomotopySpheres consumes TangentialBordism (README:329–338). Together with DGFloer's return edges, these give cycles of lengths three and four.

**Repair:** Move the dependent applications into DGFloer Part II after their suppliers, preserving in the base the earlier interfaces consumed by StringOrientation and TangentialBordism. Remove every returning base edge, including the mapping-space, collapse, realization and Bott uses. On the witnessed paths, deleting the base's TangentialBordism and HomotopySpheres return edges breaks both cycles. Require a clean dependency check afterward. This also covers the gate's two upward diagnostics for those suppliers. Previous R01 remains unrepaired.

## R02 (P2) — The ImplicitAtlases application still points upward

**Location:** `TauCetiRoadmap/DGFloer/README.md:1399`, `:1930`: “Apply ImplicitAtlases V0–V6 on these actual inputs”.

**Claim:** The revision of DGFloer on main consumes the later virtual engine.

**Witness:** The checker reports `UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]`. `TauCetiRoadmap/ImplicitAtlases/README.md:853` identifies V0–V6 and names DGFloer as a consumer.

**Repair:** Move the virtual application and its application-specific analytic prerequisites to DGFloer Part II after ImplicitAtlases. That places this witnessed consumer edge after its supplier; rerun the checker. Do not edit the merge order in this PR. The supplier's actual existence does not resolve the ordering defect. Previous R02 remains unrepaired.

## R03 (P2) — Require a nonzero vector in the corrected matrix application

**Location:** `TauCetiRoadmap/DGFloer/README.md:1244`, supported by the changed reference at `:1913`: “With orthogonal J, symmetric S_mat”; “Lz=0”; “construct the symmetric complex-linear matrix taking z to ξ”.

**Claim:** After the displayed adjustment, a symmetric complex-linear matrix taking z to the adjusted ξ exists under the listed hypotheses. The paragraph does not require z≠0.

**Witness:** Set J=[[0,−1],[1,0]], S=0, a=b=α=β=0, z=0 and ξ=(1,0). Then L=0 and Lz=0. Every adjustment leaves ξ unchanged and orthogonal to Jz, but A0=0≠ξ for every matrix A.

**Repair:** Add z≠0 to this application's standing hypotheses and retain it in the analytic use of the corrected source proof. Choose t=⟨ξ,Jz⟩/‖z‖²; its denominator is then positive. Add the zero-vector instance as a negative Check. This excludes the counterexample while preserving the existing z=(1,0) positive control, where t=1 and A=I works. The cited erratum explicitly assumes a nonzero vector. This is a new finding in the formula depending on the repaired locator; the locator itself is repaired.

## R04 (P3) — Required target structure and missing-headline inventory remain absent

**Location:** `TauCetiRoadmap/DGFloer/README.md:1–3`, `:43–49`; `TauCetiRoadmap/DGFloer/Suggested.lean:20–25`: “The other headlines lack carriers”.

**Claim:** The document supplies the required target dependencies, definition checks, and explicit inventory of unstatable headlines.

**Witness:** The README has zero `*Needs:*` lines, zero `**Checks.**` blocks and zero layer Examples/Dependencies headings. Its in-scope finite-rank application remains under “Out of scope”; the Lean docstring groups missing carriers without naming every headline.

**Repair:** Preserve the mathematics while adding per-target dependencies, definition API lists and at least three discriminating Checks per definition, and layer Examples/Dependencies. Supply the specified Summary, ownership, conventions, supplier-contract and build-order sections, move the in-scope bullet, and identify each unstatable headline and its missing carrier in the docstring, including Cayley-plane based-loop homology. Validate heading counts and the headline-to-docstring mapping. This carries previous R05; the four-line diff does not address it.

## R05 (P3) — The source manifest remains absent

**Location:** `TauCetiRoadmap/DGFloer/`; references begin at `README.md:1894`.

**Claim:** The cited works have the required version, locator and legal-access records.

**Witness:** The folder contains README.md, Suggested.lean, metadata.toml, STATUS.md and PROGRESS.md, but no sources.toml. The corrected FHS reference therefore still has no manifest record.

**Repair:** Add one lifetime record per work with exact versioned locators and access status; preserve existing source keys and record the FHS correction and its erratum. Check that every bibliographic work has one record and distinguish preprint from printed pagination. This carries previous R06. This review edits no manifest.

## Previous findings

- R01 — not repaired: README:53, 90–91, 286, 854–857, 1669 and 1712 retain returning supplier uses; the fresh dependency check reproduces the cycle and related upward edges.
- R02 — not repaired: README:1399 and 1930 still consume ImplicitAtlases V0–V6; the checker still reports the upward edge.
- R03 — repaired: README:82 now imports AnalyticStableMaps §2.23, §§2.4–2.5 and §2.18, retaining only the product-J application. Its class, dimension and individual compact-image statements agree with the supplied head.
- R04 — repaired: README:1913 cites Lemma 6.5’s corrected proof and the December 2024 erratum, reserving Theorem 6.1 for open density with n≥2. Indexed author text confirms the locators; new R03 addresses the dependent formula’s missing hypothesis.
- R05 — not repaired: the README still lacks the specified Needs/Checks and layer Examples/Dependencies structure; Suggested.lean still groups rather than individually identifies the missing headline carriers.
- R06 — not repaired: sources.toml remains absent, including the corrected FHS reference and its version/access record.

## Verified sound

**Scope and counts.** All six previous findings were accounted for. The actual diff is two replaced README lines, at 82 and 1913; all eight Lean declarations are unchanged. Both the incremental outside-folder list and `origin/main...HEAD` outside-folder diff are empty. There are no new options, imports, admitted data or theorem signatures. The changed source reference affects §7.C.2's matrix calculation, which was recomputed. The six seeded targets retain their previous rows below: convention/application checks; tame synthesis and staged selection; tame raw sign realization; separate finite counting budgets; regular true endpoint and energy-dependent neighborhood; positive-monotone finite Laurent matrices. No new certification of their unchanged analytic constructions is claimed.

**Gate and elaboration.** The supplied gate has build=0 and depcheck=4. The fresh gate reproduces depcheck=4, with every text/file scanner zero; its invocation does not run a build. Separately, `lake build TauCetiRoadmap.DGFloer.Suggested` and direct `lake env lean` on Suggested.lean both succeed with only the five sorry warnings at lines 43, 52, 64, 76 and 140. The fresh standalone dependency check gives:

```text
UPWARD: DGFloer (on main) -> HomotopySpheres (#63) at README lines [53, 91]
UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]
UPWARD: DGFloer (on main) -> TangentialBordism (#8) at README lines [90]
CYCLE among: DGFloer, HomotopySpheres, StringOrientation, TangentialBordism
depcheck: 205 roadmaps, 1495 edges, 4 problem(s)
```

**Elaborated signatures and padding.** A scratch copy with `#check @name` for all eight declarations was elaborated once this round and compared with the provided types and README. All eight agree; no signature changed. The two binder warnings are harmless: gradingInvolution needs only the R-module decomposition; twistedDifferential explicitly retains the commuting scalar actions needed for R-linearity. The square-zero theorem retains the scalar tower, graded action and DG-right-module hypotheses. The five failed one-tactic padding probes of [review 7](PRREVIEW-DGFloer~7.md) are carried forward for these unchanged declarations, not reported as newly run probes.

**Pinned APIs reopened.** Mathlib is f6090c7095e1e56b3464c1daba5f24631f1290d2 and Tau Ceti is 358314d4ab97483df4fc4cb8adcc02e74a8d9f5a. Six declarations were read at those pins:

| Declaration | File and line at the pin | Relevant content |
|---|---|---|
| `AlgebraicTopology.singularHomologyFunctor` | `Mathlib/AlgebraicTopology/SingularHomology/Basic.lean:52` | Native TopCat singular homology, without manifold/separation assumptions. |
| `LoopSpace` | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:86` | `Path x x`, the fixed-interval loop model. |
| `TauCeti.IsDGAlgebra` | `TauCeti/Algebra/Homology/DG/Algebra/Defs.lean:182` | Differential of degree +1, square-zero, signed Leibniz rule. |
| `TauCeti.IsDGRightModule` | `TauCeti/Algebra/Homology/DG/Module/Right/Defs.lean:68` | Opposite right action, scalar tower and module-first graded Leibniz sign. |
| `TauCeti.InternalGrading.ofDecomposition` | `TauCeti/Algebra/Module/GradedModule/Internal.lean:110` | Actual decomposition with the original submodules. |
| `TauCeti.RiemannSurface.biholomorphOfDegreeEqOne` | `TauCeti/Analysis/Complex/RiemannSurface/Degree.lean:442`; standing assumptions at :159 and :374 | Degree-one finite holomorphic map gives a biholomorphism; source compact, Hausdorff and preconnected, target Hausdorff and preconnected, with complex manifold structures. The closed-surface application meets these hypotheses. |

**Ownership and supplier resolution.** Main is fa41b374; the supplied AnalyticStableMaps head is 9af338e0. Object searches used `roadmaps grep`, `roadmaps show AnalyticStableMaps`, the supplied heads, board packages and pinned sources. The corrected row imports the existing general product theorem instead of assigning a second owner. No separate owner was found for the localized FHS adjustment already in DGFloer on main; no new foundational declaration or Lean name is introduced. The brief allows consumption of this other author's new AnalyticStableMaps roadmap; its absence from this merge-order list is not an upward diagnostic. No scope/order exemption removes R01 or R02.

| Citation resolved for the repair or surviving finding | Passage read |
|---|---|
| AnalyticStableMaps §§2.4–2.5 | `TauCetiRoadmap/AnalyticStableMaps/README.md:294–318`: moving-domain carriers, low-genus offsets and full deformation-complex index. |
| AnalyticStableMaps §2.18 | `TauCetiRoadmap/AnalyticStableMaps/README.md:464–475`: compact-image local carriers on noncompact targets, with no global no-escape theorem. |
| AnalyticStableMaps §2.23 | `TauCetiRoadmap/AnalyticStableMaps/README.md:524–535`: product form/structure, integral slice class, rigidity and normal cokernel. |
| HeegaardFloer F2.6c | Main `TauCetiRoadmap/HeegaardFloer/README.md:2461–2468`, `:2702–2704`: energy/product projections and the torus-times-sphere class-A application. |
| TangentialBordism and StringOrientation | Supplied `TauCetiRoadmap/TangentialBordism/README.md:142–143` and `TauCetiRoadmap/StringOrientation/README.md:214–217`: incoming DGFloer dependencies. |
| HomotopySpheres | Supplied `TauCetiRoadmap/HomotopySpheres/README.md:329–338`, `:1193`: TangentialBordism contract and its PT application. The previous report's line 1203 has shifted. |
| ImplicitAtlases | Supplied `TauCetiRoadmap/ImplicitAtlases/README.md:853`: V0–V6 and DGFloer as consumer. |

There are no Needs lines to inspect; the unchanged prose dependency defects are carried above. The four worker citation-tool leads concern unchanged Serre-fibration/octonion interfaces, not either edited passage; review 7's distinction between roadmap contracts and verified pinned declarations is retained. Unchanged global ownership conclusions are inherited, not a fresh whole-repository audit. Main HeegaardFloer, DGAInfinity and HamiltonianFloerOperations were consulted for the neighboring structure and scope.

**Changed source locator.** The [indexed author-hosted FHS text](https://people.math.ethz.ch/~salamon/PREPRINTS/trans.pdf), preprint p.22, states openness/density of the regular symmetric matrices under n≥2. The [author's erratum](https://people.math.ethz.ch/~salamon/PREPRINTS/trans-err.pdf), dated 10 December 2024, p.1, points to Lemma 6.5's proof at printed p.277/preprint p.25 and supplies the orthogonality adjustment. Thus README:1913 now assigns each locator to the appropriate claim. The adjustment was independently checked below for nonzero z; its missing nonzero hypothesis is new R03. The sources service returned HTTP 403 for both author-hosted PDFs; indexed text is distinguished from a fetched line-numbered extraction.

**Headline inventory.** The five unchanged Lean headlines are degree-one Hurewicz, mod-2 vanishing, the asphericity/double-loop homology equivalence, existence of K(A,n) for n≥1, and twisted square-zero. The README additionally seeks the Serre/fibration comparisons, DG Morse/Floer and symplectic homology, DG Viterbo comparison, Theorems A–E and G–M, Theorem 3.49, the classical Arnold bound, §7.T torsion, and projective/Cayley-plane loop-space applications. Review 7's statability assessment is inherited. The missing per-headline docstring inventory remains R04.

**Adversarial table: freshly computed changed passages and their dependencies.** Here n denotes the complex dimension of Σ×F as in the cited supplier. The matrix witness tests the correction, not the existence of the analytic transversality construction.

| Statement | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| Product classification, README:82 | area(Σ)=1; u(z)=(z,p); sphere double cover | Slice: first degree 1, second area 0, total area 1=ω(A). Double cover: first degree 2 and energy at least 2>1, hence not class A. | Fresh. The integral class excludes covers; supplier §2.23 owns the proof. Previous R03 repaired. |
| Product normal operator and moving-domain comparison, README:82 | (g,n)=(0,2),(1,2),(2,2),(2,1) | Complex (kernel,cokernel)=(1,0),(1,1),(1,2),(0,0). Real (actual,expected)=(2,2),(2,0),(2,−2),(0,0); differences 0,2,4,0 equal twice the cokernel dimensions. | Fresh. Both displayed tests agree, including genus-one nonregularity and the rank-zero boundary. |
| Product compact-image qualification, README:82 | Σ=S², F=ℂ, slices at p=j≥0, area(S²)=1 | Each source image is compact and has energy 1; supⱼ∣p∣=∞. Thus individual compactness holds while a common compact target containment fails. | Fresh. The disclaimer retains the supplier's exact restriction. |
| FHS orthogonality adjustment, README:1913 and :1244 | J=[[0,−1],[1,0]], S=diag(1,−1), z=(1,0), a=0,b=−2, ξ=(1,1), α=β=0,t=1 | C=[[0,−2],[−2,0]], L=[[0,−4],[0,0]]. Lz=0; LJz=(−4,0)=2bz−2aJz. Adjusted (α′,β′,ξ′)=(4,0,(1,0)); before/after expressions both (−4,0). ⟨ξ′,Jz⟩=0, ‖z‖²=1. A=I has Az=ξ′, Aᵀ=A and AJ=JA. | Fresh. Formula preserves the equation. General t=⟨ξ,Jz⟩/‖z‖² is defined for z≠0, which R03 requires adding. A symmetric commuting 2×2 matrix cannot send z to the unadjusted (1,1). Previous R04 locator repaired; the dependent missing hypothesis is new R03. |
| Corrected matrix application at the omitted boundary, README:1244 | J=[[0,−1],[1,0]], S=0, a=b=α=β=0, z=0, ξ=(1,0), arbitrary t | Lz=0=0; ξ−tJz=(1,0), inner product with Jz=0. Both preserved expressions are 0. But A z=0 for every A, while the required output is (1,0)≠0; denominator ‖z‖²=0. | Fresh. R03: add z≠0. The repaired hypothesis excludes precisely this counterexample and retains the preceding positive control. |
| FHS regular-matrix conclusion, README:1913 | n=1, S=I₂; n=2, S=0₄; a=b=α=β=0, z=e₁ | In each case (SJ−JS−aI−bJ)z=0 and (SJ−JS−aI−bJ)Sz−αz−βJz=0 for nonzero z. Both examples are outside Sreg. | Fresh. The new citation retains n≥2 and says open dense, not every symmetric matrix. The adjustment test at n=1 does not claim density there. |

**Adversarial table: 32 unchanged rows carried from review 7.** Numerical values and prior provenance are retained. These include the six seeded targets and all five Lean headlines.

| Statement | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| README 1207: action/index/linearization citations | Scalar B(s)=tanh(s) in D=∂s+B | D(sech s)=−sech s tanh s+tanh s sech s=0; decaying kernel dimension 1, cokernel 0, index 1; crossing spectral flow +1. | Sign witness agrees with §7.C.0. The cited sections were read in the retrieved preprint; published-version pagination remains uncertified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| README 1864: capped action/index attribution | ℂP¹, area of spherical generator 1, c₁=2 | Recapping changes A_H by +1 and μ by +4; for a small Morse Hamiltonian min/max indices 0/2 give μ=−1/+1. | Agrees with stated conventions and cyclic grading. The source conventions differ; the explicit transport remains a roadmap target. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| README 1865: generators are constructed here; variational equation | Hamiltonian H=(x²+y²)/2, ω=dx∧dy | X_H=(y,−x), dφ_t=rotation by −t, both sides of ∂t(dφ_t v)=dX_H(dφ_t v) equal [[0,1],[−1,0]]dφ_t v. At t=0 both equal (v_y,−v_x). | The elementary time-dependent-flow specialization is consistent; caps still need the explicit §7.C.1 construction. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| README 1866: weak monotonicity and coefficient models | κ=1,N_C=2; separately c₁=0 with area 1 | First: Γ≅2ℤ, deg t=4, ν(t)=−2; c₁(A)=−2 gives ω(A)=−2≤0. Second: no negative-Chern classes, deg e^A=0, ν(e^A)=−1 despite positive area. | Both satisfy the cited weak-monotonicity implication; c₁-zero alone does not bound energy. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| README 1867: continuation and inverse comparisons | Constant continuation; identity chain maps F=G=Id, homotopy 0 | E=0=ΔA; GF−Id=0=d0+0d and FG−Id=0=d0+0d. | Identity boundary normalization agrees; this does not establish parametric existence or PSS gluing. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| README 1868: PSS/Novikov/Arnold applications | ℂPⁿ, n=0,1,2; n=0 is the algebraic boundary test | Nonzero cyclic residues i are {0} mod2, {1,3} mod4, {0,2,4} mod6. Betti totals 1,2,3 equal n+1 and the minimal Morse generator counts. | The shifted module and rank arithmetic agree; integer/coefficient and analytic assertions are not certified by the unavailable sources. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Source-error control for README 1866's citation, Salamon Remark 3.13(ii) | R=ℤ, Γ=ℤ, c₁(generator)=2, t the degree-4 monomial | Λ₀=ℤ and Λ₄=ℤt. Multiplication by 2t sends 1 to 2t and has image 2ℤt, which misses t. Multiplication by t instead gives a bijection ℤ→ℤt. | The source's arbitrary-element assertion fails; a homogeneous unit supplies the correct statement. The roadmap does not repeat the error. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Evaluation-orbit bundle, README 859–860 | Closed connected M, and M=S² ⊔ T² with x₀∈S² | Connected: O=M. Disconnected: O=S², evaluation fibre over T² empty. Locally s(z)⁻¹g fixes x₀; s(gx₀)(s(gx₀)⁻¹g)=g and inverse composite returns (z,h). | Carried from [r6](PRREVIEW-DGFloer~6.md). Correct right-H local trivialization and orbit restriction. GT attribution repaired; full Palais source text unverified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Same, zero dimension | M={a,b}, x₀=a | Diff(M)=S₂, O={a,b}, H={id}; evaluation is a bijection, each fibre has 1 element. For a singleton all three have 1 element. | Carried from [r6](PRREVIEW-DGFloer~6.md). Correct finite-component and zero-dimensional cases. No new defect. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| SO(9) correction/link, README 1712 | (ℤ/2)² versus ℤ/4 | Both orders 4, but exponent 2 versus 4. Split stabilization has kernel order 2, quotient order 2, and total group (ℤ/2)². | Carried from [r6](PRREVIEW-DGFloer~6.md). css-2020 supports the former; the repaired link is well formed. Review 5 R08 repaired. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Theorem G negative control, README 1738 | Q=S²×S², X=S²×{q}, Y={p}×(S²∖{q′}), q′≠q | X∩Y={(p,q)}; tangent planes sum to dimension 4. Y≅ℝ², π₁=π₂=0, ℓ=2k−2=2, H₂(Y;ℤ)=0. No ordinary top-dimensional fundamental class or degree. | Carried from [r6](PRREVIEW-DGFloer~6.md). The missing closedness is isolated. If q′=q the intersection would instead be empty. Review 5 R09 repaired. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Module/public header, Suggested.lean 1–4,32 | Importer with all 8 fully qualified names | 8/8 names resolve; 8/8 signatures equal the recorded types; build has 0 non-sorry warnings. | Carried from [r6](PRREVIEW-DGFloer~6.md). Visibility and elaboration repaired. Review 5 R02 repaired; no mathematical signatures changed. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Theorem G hypotheses and positive control | Q=Q′♯(Sᵏ×Y), closed Y, connectivity 2k−2 | X∩Y one point; normal bundle trivial; 2k−2≥k−1 for k≥2. With degree d≠0 the claimed closed-Y setup is met. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); changed negative control computed above. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Cayley-plane index | k=1,2 | 7k+15(k−1)=7,29; nullity 15=dim S¹⁵. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Cayley-plane based-loop homology | Morse–Bott cells | Degrees 22k−15 and 22k yield H₇=ℤ, H₁₄=0, H₂₂=ℤ; same values for S⁷×ΩS²³. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); perfectness source remains unverified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Trace-one idempotent carrier | diag(1,0,0), diag(1,1,0), half of the latter | First: x²=x and trace 1. Second: x²=x but trace 2. Half: trace 1 but x²=diag(1/4,1/4,0)≠x. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Cayley-plane ownership direction | main DGFloer and its two consumers | Returning supplier paths have positive length 3 and 4; intended consumer direction does not eliminate the opposite edges. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md), subject to R01; no new global ownership audit. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Hutchings locator | Contents and sections | §7.5 p.52, §7.6 p.55, Chapter 8 p.58; cited §§7.5–7.6 occupy pp.52–57. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); no new source fetch for unchanged locator. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Existence of K(A,n) | A=0; Lean n=0,A=ℤ/2; n=1,A=ℤ | Point: all positive π=0. ℝP∞: π₁=ℤ/2, higher π=0. ℂP∞: π₂=ℤ, π₁=0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Lemma 3.41 | ℂP∞, S², S³, T², S¹ | ℂP∞ and S²: π₂=π₀Ω²=ℤ, both sides false. S³: π₃=H₁Ω²=ℤ, both false. T²,S¹: π≥2=0 and Ω² path-connected/acyclic, both true. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Theorems L and M | α=0; W=D*Tⁿ with constant coefficients | j!0=0, excluded. On the torus cotangent example evaluation splits the homology inclusion, ker i*=0; the criterion cannot fire. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Abundance and Theorem H | Tⁿ; S² | Torus: Ω² has reduced H₀=0, so constant-sphere fundamental class is excluded. Sphere: degree-3 witness has nonzero shriek image in H₁Ω²S², and 3>2. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Theorem 3.49 convergence hypotheses | First quadrant; support p=−q for all q | p,q≥0 gives only n+1 positions on total degree n≥0. Full p=−q gives infinitely many positions on degree 0, with q unbounded both ways; neither stated bound holds. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Convention and application checks (seeded) | ℂPⁿ, N_C=n+1 | Hⱼ=R in j=0,2,…,2n; n+1 distinct residues mod 2(n+1); cyclic HF has one R precisely when i+n lies in those residues. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); source not certified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Tame synthesis and staged selection (seeded) | J(A)=eᴬJe⁻ᴬ | J(A)²=eᴬJ²e⁻ᴬ=−Id; at A=0, J(0)=J. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); not a new proof of synthesis estimates. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Tame raw sign realization (seeded) | Parameter degree j=1 | (−1)^(i+1+i)=−1; multiply by (−1)^n to get (−1)^(n+1); Morse zero-face exponent k+(k−n)+n=2k is even. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Separate finite counting budgets (seeded) | ω=κc₁; c₁=0 branch | Bounded c₁ gives E=κc₁ bounded; c₁=0 alone provides no energy bound without the monotone relation, so the cutoff remains. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Regular true endpoint (seeded) | Constant two-marked core | ker ∂̄ has real dimension 2n, coker 0; Morse intersection dimension ind(p)+(2n−ind(p))−2n=0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Positive-monotone finite Laurent matrices (seeded) | Γ≅N_Cℤ, κ,N_C>0 | deg(t)=2N_C, ν(t)=−κN_C<0; injective c₁ fixes at most one exponent in each homogeneous matrix entry. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Degree-one Hurewicz | pt,S¹,BS₃,BQ₈ | Abelianizations 0,ℤ,ℤ/2,(ℤ/2)² agree with H₁. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Mod-2 vanishing | K(ℤ/3,2); K(ℤ/4,2) | First: reduced mod-2 homology 0, ×2 permutes 0,1,2. Second: H₂=𝔽₂≠0, excluded, and ×2 sends both 0 and 2 to 0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |
| Twisted square-zero | P empty, m=0, M=0; homogeneous coefficient | Degenerate outputs D²=0. General coefficient cancels as d(mₓ𝓏)−Σᵧ(−1)^(ind x−ind y)mₓᵧmᵧ𝓏=0 by the twisting law and graded Leibniz signs. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical. |

## Not verifiable

- **Full FHS paper and erratum extraction:** sources-service attempts at the two ETH author URLs returned HTTP 403. Both are recorded in needs-references.toml. The accessible indexed primary text supports the corrected locators and displayed algebra; it is not a line-numbered full-paper verification. No source passage was copied into the repository or this report.
- **Unchanged seeded analytic/orientation assertions:** review 7's limits remain for PSS §§2,4–5 and Hofer–Salamon §§4–6, and for strengthened parametric/gluing/endpoints beyond the retrieved Salamon outline. The present two-line repair supplies no new evidence for those assertions. Review 7's Salamon extraction checks are carried, not repeated.
- **Palais and Ziller:** the unchanged restriction-map and completing-manifold perfectness source limitations in review 7 remain. No renewed source-certification claim is made.
- **Unprovided open work and unchanged global claims:** ownership against open pull requests without supplied files was not checked. Only the changed passages and their affected contracts were re-reviewed; unchanged adversarial rows explicitly cite the previous report. The successful Lean elaboration does not prove the admitted theorems.

## Source issues

The FHS gap is confirmed by the indexed author erratum; the other two entries are carried from [review 7](PRREVIEW-DGFloer~7.md), including its original source-line evidence. No new source error is asserted this round.

- **Gap** in fhs-transversality at proof of Lemma 6.5, printed p.277: the source chooses a symmetric complex-linear correction without establishing the required orthogonality; it should first adjust the solution along Jz to make ξ perpendicular to Jz; affects the proof; corrected in print at the author's erratum of 10 December 2024, p.1.
- **Error** in bdho-floer at proof of Lemma 6.35, printed p.117: the source says π₈(SO(9)) is cyclic of order four; it should be (ℤ/2)², by css-2020 lines 221–223; affects the proof.
- **Error** in salamon-lectures at Remark 3.13(ii), preprint p.40, lines 1525–1526: the source says multiplication by any degree-k element gives a bijection Λ₀→Λₖ; it should require a homogeneous unit, for example a unit-coefficient monomial; affects a stated result.
