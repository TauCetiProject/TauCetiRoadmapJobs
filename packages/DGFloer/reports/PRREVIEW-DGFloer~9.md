# Review of DGFloer (pull request #963 at 670747a)

**Verdict:** needs changes

🤖 Independent AI review. Incremental re-review of 2 changed lines since 738ad99. The nonzero-vector hypothesis and denominator repair are correct, but the newly added positive Check has a false matrix image. The earlier dependency cycle and upward supplier findings remain; the gate fails. No pull-request files were changed.

## R01 (P1) — Returning supplier edges still form a cycle

**Location:** `TauCetiRoadmap/DGFloer/README.md:53`, `:90–91`, `:286`, `:854–857`, `:1669`, `:1712`: “HomotopySpheres Stage 4A–4B supplies stable real Bott periodicity only”.

**Claim:** The base DGFloer roadmap can consume TangentialBordism and HomotopySpheres while supplying their prerequisites.

**Witness:** TangentialBordism consumes DGFloer and StringOrientation (README:142–143); StringOrientation consumes DGFloer (README:214–217); HomotopySpheres consumes TangentialBordism (README:356–362). Together with DGFloer's return edges, these give cycles of lengths three and four.

**Repair:** Move the dependent applications into DGFloer Part II after their suppliers, preserving in the base the earlier interfaces consumed by StringOrientation and TangentialBordism. Remove every returning base edge, including the mapping-space, collapse, realization and Bott uses. On the witnessed paths, deleting the base's TangentialBordism and HomotopySpheres return edges breaks both cycles. Require a clean dependency check afterward. This also covers the gate's two upward diagnostics for those suppliers. Previous R01 remains unrepaired; the dependency witnesses were reopened this round.


## R02 (P1) — The new matrix Check gives the wrong image

**Location:** `TauCetiRoadmap/DGFloer/README.md:1244`: “ξ=(0,1)”; “t=1 and A=I takes z to the adjusted ξ”.

**Claim:** For the displayed J, z=(1,0), ξ=(0,1), S=0 and a=b=0, the identity matrix maps z to ξ−tJz.

**Witness:** Jz=(0,1), ‖z‖²=1 and t=1. Hence ξ−tJz=(0,0), whereas Iz=(1,0). All stated hypotheses hold, including z≠0 and Lz=0.

**Repair:** In this Check replace A=I by A=0. On exactly the same instance, Az=(0,0)=ξ−tJz, Aᵀ=A and AJ=JA=0. Retain z≠0 and the zero-vector negative Check. If an identity-matrix positive control is also wanted, use ξ=(1,1): t=1, the adjusted vector is (1,0), and Iz=(1,0). The adjustment theorem is not refuted; this newly added Check contradicts its own formula.

## R03 (P2) — The ImplicitAtlases application still points upward

**Location:** `TauCetiRoadmap/DGFloer/README.md:1399`, `:1930`: “Apply ImplicitAtlases V0–V6 on these actual inputs”.

**Claim:** The revision of DGFloer on main consumes the later virtual engine.

**Witness:** The checker reports `UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]`. `TauCetiRoadmap/ImplicitAtlases/README.md:853` identifies V0–V6 and names DGFloer as a consumer.

**Repair:** Move the virtual application and its application-specific analytic prerequisites to DGFloer Part II after ImplicitAtlases. That places this witnessed consumer edge after its supplier; rerun the checker. Do not edit the merge order in this PR. The supplier's actual existence does not resolve the ordering defect. Previous R02 remains unrepaired; the supplier and consuming passages were reopened this round.


## R04 (P3) — Required target structure and missing-headline inventory remain absent

**Location:** `TauCetiRoadmap/DGFloer/README.md:1–3`, `:43–49`; `TauCetiRoadmap/DGFloer/Suggested.lean:20–25`: “The other headlines lack carriers”.

**Claim:** The document supplies the required target dependencies, definition checks, and explicit inventory of unstatable headlines.

**Witness:** The README has zero `*Needs:*` lines, zero `**Checks.**` blocks and zero layer Examples/Dependencies headings. Its in-scope finite-rank application remains under “Out of scope”; the Lean docstring groups missing carriers without naming every headline.

**Repair:** Preserve the mathematics while adding per-target dependencies, definition API lists and at least three discriminating Checks per definition, and layer Examples/Dependencies. Supply the specified Summary, ownership, conventions, supplier-contract and build-order sections, move the in-scope bullet, and identify each unstatable headline and its missing carrier in the docstring, including Cayley-plane based-loop homology. Validate heading counts and the headline-to-docstring mapping. This carries review 8 R04; the two-line diff does not address it.


## R05 (P3) — The source manifest remains absent

**Location:** `TauCetiRoadmap/DGFloer/`; references begin at `README.md:1894`.

**Claim:** The cited works have the required version, locator and legal-access records.

**Witness:** The folder contains README.md, Suggested.lean, metadata.toml, STATUS.md and PROGRESS.md, but no sources.toml. The corrected FHS reference therefore still has no manifest record.

**Repair:** Add one lifetime record per work with exact versioned locators and access status; preserve existing source keys and record the FHS correction and its erratum. Check that every bibliographic work has one record and distinguish preprint from printed pagination. This carries review 8 R05. This review edits no manifest.


## Previous findings

- R01 — not repaired: README:53, 90–91, 286, 854–857, 1669 and 1712 retain the returning supplier uses. Fresh dependency checking and reopened supplier passages confirm the cycle; carried as R01.
- R02 — not repaired: README:1399 and 1930 still consume ImplicitAtlases V0–V6. The fresh checker reproduces the upward edge; carried as R03.
- R03 — repaired: README:1244 now requires nonzero z, gives t=⟨ξ,Jz⟩/‖z‖² with positive denominator, and excludes z=0. A separate arithmetic error introduced in its new positive Check is R02.
- R04 — not repaired: README still has no required Needs/Checks or layer Examples/Dependencies structure. Suggested.lean:20–25 still groups missing carriers without the complete per-headline inventory; carried as R04.
- R05 — not repaired: sources.toml remains absent. README:1913's FHS paper and correction still have no manifest record; carried as R05.

## Verified sound

**Scope and counts.** This is the required incremental review, not a repeated full review. All five previous findings were accounted for. The only edit is README:1244; no Lean declaration, supplier citation, source locator or other file changed since 738ad99. Both outside-folder diffs are empty. The new nonzero hypothesis, normalization, negative control and positive control were computed below. There are four fresh numerical rows and 36 unchanged adversarial rows carried explicitly from [review 8](PRREVIEW-DGFloer~8.md), including all six seeded targets and all five Lean headlines.

**Gate and elaboration.** The worker's gate reports build=0 and depcheck=4. The fresh gate reproduces depcheck=4 with every other scanner zero; this invocation does not itself run a build. Separately, `lake build TauCetiRoadmap.DGFloer.Suggested`, direct `lake env lean` on the reviewed Suggested.lean, and one scratch copy with `#check @name` for all eight declarations succeed. Each gives only the five admitted-theorem warnings (lines 43, 52, 64, 76 and 140). The fresh standalone dependency output is:

```text
UPWARD: DGFloer (on main) -> HomotopySpheres (#63) at README lines [53, 91]
UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]
UPWARD: DGFloer (on main) -> TangentialBordism (#8) at README lines [90]
CYCLE among: DGFloer, HomotopySpheres, StringOrientation, TangentialBordism
depcheck: 205 roadmaps, 1499 edges, 4 problem(s)
```

All four gate diagnostics are covered by R01 and R03. No order file was edited.

**Signatures and padding.** The scratch copy's declaration text matches Suggested.lean exactly. All eight elaborated types match the provided signature record and their README statements. No signature changed. The grading involution needs only the R-module decomposition; it does not need an A-action or scalar tower. The differential explicitly retains the commuting scalar actions required for R-linearity. Its square-zero theorem retains the DG-right-module, scalar-tower and graded-action hypotheses. The unchanged five failed one-tactic padding probes are inherited through review 8; they were not repeated.

**Pinned declarations reopened.** The manifest pins Mathlib to f6090c7095e1e56b3464c1daba5f24631f1290d2 and Tau Ceti to 358314d4ab97483df4fc4cb8adcc02e74a8d9f5a. Five definitions were opened:

| Declaration | File and line at the pin | Content checked |
|---|---|---|
| `AlgebraicTopology.singularHomologyFunctor` | `Mathlib/AlgebraicTopology/SingularHomology/Basic.lean:52` | Singular chains followed by homology; no manifold or separation hypothesis is built into the functor. |
| `LoopSpace` | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:86` | Fixed-interval paths from the basepoint to itself. |
| `TauCeti.IsDGAlgebra` | `TauCeti/Algebra/Homology/DG/Algebra/Defs.lean:182` | Degree +1 differential, square-zero and signed Leibniz rule. |
| `TauCeti.IsDGRightModule` | `TauCeti/Algebra/Homology/DG/Module/Right/Defs.lean:68` | Opposite right action, scalar tower and module-degree Leibniz sign. |
| `TauCeti.InternalGrading.ofDecomposition` | `TauCeti/Algebra/Module/GradedModule/Internal.lean:110` | Original submodules bundled with their actual decomposition. |

**Supplier and ownership witnesses reopened.** The change adds no supplier or foundational carrier. Object searches for the symmetric complex-linear correction in the pinned libraries, main, supplied open work via `roadmaps grep`, and board package READMEs found no separate roadmap owner. Main DGFloer already contains this localized transversality construction at README:1175; this is a repair of that existing target. No new Lean name is introduced. Neighboring main DGAInfinity and HamiltonianFloerOperations were read for ownership context. The following four supplier passages were read afresh, including the provided HomotopySpheres head through `roadmaps show`:

| Roadmap | Passage and resolved edge |
|---|---|
| TangentialBordism | `TauCetiRoadmap/TangentialBordism/README.md:142–143`: consumes StringOrientation and DGFloer's Serre sequences. |
| StringOrientation | `TauCetiRoadmap/StringOrientation/README.md:214–217`: consumes DGFloer Layer 1 item 2 and Layer 11 item 3. |
| HomotopySpheres | `TauCetiRoadmap/HomotopySpheres/README.md:356–362`: consumes TangentialBordism B1/B5.2/B3.2; its Layer 4A–4B owns stable Bott theory. |
| ImplicitAtlases | `TauCetiRoadmap/ImplicitAtlases/README.md:853`: V0–V6 is the virtual engine with DGFloer as a consumer; DGFloer:1399 applies it. |

These establish DGFloer→TangentialBordism→StringOrientation→DGFloer and DGFloer→HomotopySpheres→TangentialBordism→StringOrientation→DGFloer, cycles with respectively three and four edges. Deleting the returning base edges breaks those witnessed paths; R01 requests placing their applications in Part II. The ImplicitAtlases consumer must similarly follow its supplier. There are zero Needs lines to inspect. Unchanged cross-roadmap and citation-tool assessments outside the affected passage and surviving findings are inherited from review 8, not claimed as a new global audit.

**Mathematics of the repair.** Here J is the standing orthogonal complex structure. For C=SJ−JS, CJ+JC=0. Thus Lz=0 gives Cz=az+bJz and LJz=−J(Cz)−aJz+bz=2bz−2aJz. Substitution shows the adjustment leaves Lξ−(α+βJ)z unchanged. Orthogonality of J gives ‖Jz‖²=‖z‖²>0, so the new t makes ⟨ξ−tJz,Jz⟩=0. A self-adjoint complex-linear map taking nonzero z to the adjusted vector exists: in a unitary basis with z=r e₁, its required first column has real first entry, so it extends to a Hermitian matrix. The repaired theorem is consistent, including when the adjusted vector is zero.

**Headline inventory.** The five unchanged Lean headlines are degree-one Hurewicz, mod-2 vanishing, asphericity versus double-loop homology, existence of K(A,n) for n≥1, and twisted square-zero. The README additionally targets Serre/fibration comparisons, DG Morse/Floer and symplectic homology, DG Viterbo, Theorems A–E and G–M, Theorem 3.49, the classical Arnold bound, §7.T torsion, and projective/Cayley-plane loop-space applications. Review 8's statability assessment is carried; its missing-headline docstring finding remains R04.

**Adversarial table: freshly computed changed passage and dependent formulas.**

| Statement | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| New positive Check, README:1244 | J=[[0,−1],[1,0]], S=0, a=b=0, z=(1,0), ξ=(0,1) | L=0; Lz=0; ‖z‖²=1, t=1. Adjusted ξ=(0,0), but Iz=(1,0). Repaired A=0 gives Az=(0,0), Aᵀ=A and AJ=JA=0. | False as written, R02. Replacement tested on exactly the failing instance. |
| Nonzero hypothesis and new negative Check, README:1244 | z=0, ξ=(1,0), S=0, a=b=0 | Lz=0, ‖z‖²=0 and ξ−tJz=(1,0) for every t. Az=(0,0) for every A, unequal to ξ. | New hypothesis excludes the old counterexample. Previous R03 repaired. |
| New normalized t and nonzero adjusted-vector control, README:1244 | z=(2,0), ξ=(3,4), same J, S=0, a=b=0 | ‖z‖²=4, ⟨ξ,Jz⟩=8, t=2, adjusted ξ=(3,0). Inner product with Jz is 0. A=(3/2)I gives Az=(3,0). For z=(1,0), ξ=(1,1), t=1 and A=I gives (1,0). | Positive denominator and scaling checked; the identity-matrix control works with ξ=(1,1). |
| Orthogonality adjustment and preserved expression, README:1244 | S=diag(1,−1), z=(1,0), ξ=(1,1), a=0, b=−2, α=β=0, same J | C=[[0,−2],[−2,0]], L=[[0,−4],[0,0]], Lz=0. LJz=(−4,0)=2bz−2aJz. t=1 gives (α′,β′,ξ′)=(4,0,(1,0)); before/after expressions both (−4,0); ⟨ξ′,Jz⟩=0. | Formula and coefficient signs agree; A=I sends z to ξ′. Recomputed dependency of the repair. |

**Adversarial table: 36 unchanged rows carried from review 8.** Each row preserves the previously computed values. Historical finding numbers inside those rows refer to the previous reports; the current finding numbers above govern this verdict. Source-certification limits carry with the rows.

| Statement | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| Product classification, README:82 | area(Σ)=1; u(z)=(z,p); sphere double cover | Slice: first degree 1, second area 0, total area 1=ω(A). Double cover: first degree 2 and energy at least 2>1, hence not class A. | Fresh. The integral class excludes covers; supplier §2.23 owns the proof. Previous R03 repaired.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Product normal operator and moving-domain comparison, README:82 | (g,n)=(0,2),(1,2),(2,2),(2,1) | Complex (kernel,cokernel)=(1,0),(1,1),(1,2),(0,0). Real (actual,expected)=(2,2),(2,0),(2,−2),(0,0); differences 0,2,4,0 equal twice the cokernel dimensions. | Fresh. Both displayed tests agree, including genus-one nonregularity and the rank-zero boundary.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Product compact-image qualification, README:82 | Σ=S², F=ℂ, slices at p=j≥0, area(S²)=1 | Each source image is compact and has energy 1; supⱼ∣p∣=∞. Thus individual compactness holds while a common compact target containment fails. | Fresh. The disclaimer retains the supplier's exact restriction.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| FHS regular-matrix conclusion, README:1913 | n=1, S=I₂; n=2, S=0₄; a=b=α=β=0, z=e₁ | In each case (SJ−JS−aI−bJ)z=0 and (SJ−JS−aI−bJ)Sz−αz−βJz=0 for nonzero z. Both examples are outside Sreg. | Fresh. The new citation retains n≥2 and says open dense, not every symmetric matrix. The adjustment test at n=1 does not claim density there.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| README 1207: action/index/linearization citations | Scalar B(s)=tanh(s) in D=∂s+B | D(sech s)=−sech s tanh s+tanh s sech s=0; decaying kernel dimension 1, cokernel 0, index 1; crossing spectral flow +1. | Sign witness agrees with §7.C.0. The cited sections were read in the retrieved preprint; published-version pagination remains uncertified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| README 1864: capped action/index attribution | ℂP¹, area of spherical generator 1, c₁=2 | Recapping changes A_H by +1 and μ by +4; for a small Morse Hamiltonian min/max indices 0/2 give μ=−1/+1. | Agrees with stated conventions and cyclic grading. The source conventions differ; the explicit transport remains a roadmap target. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| README 1865: generators are constructed here; variational equation | Hamiltonian H=(x²+y²)/2, ω=dx∧dy | X_H=(y,−x), dφ_t=rotation by −t, both sides of ∂t(dφ_t v)=dX_H(dφ_t v) equal [[0,1],[−1,0]]dφ_t v. At t=0 both equal (v_y,−v_x). | The elementary time-dependent-flow specialization is consistent; caps still need the explicit §7.C.1 construction. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| README 1866: weak monotonicity and coefficient models | κ=1,N_C=2; separately c₁=0 with area 1 | First: Γ≅2ℤ, deg t=4, ν(t)=−2; c₁(A)=−2 gives ω(A)=−2≤0. Second: no negative-Chern classes, deg e^A=0, ν(e^A)=−1 despite positive area. | Both satisfy the cited weak-monotonicity implication; c₁-zero alone does not bound energy. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| README 1867: continuation and inverse comparisons | Constant continuation; identity chain maps F=G=Id, homotopy 0 | E=0=ΔA; GF−Id=0=d0+0d and FG−Id=0=d0+0d. | Identity boundary normalization agrees; this does not establish parametric existence or PSS gluing. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| README 1868: PSS/Novikov/Arnold applications | ℂPⁿ, n=0,1,2; n=0 is the algebraic boundary test | Nonzero cyclic residues i are {0} mod2, {1,3} mod4, {0,2,4} mod6. Betti totals 1,2,3 equal n+1 and the minimal Morse generator counts. | The shifted module and rank arithmetic agree; integer/coefficient and analytic assertions are not certified by the unavailable sources. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Source-error control for README 1866's citation, Salamon Remark 3.13(ii) | R=ℤ, Γ=ℤ, c₁(generator)=2, t the degree-4 monomial | Λ₀=ℤ and Λ₄=ℤt. Multiplication by 2t sends 1 to 2t and has image 2ℤt, which misses t. Multiplication by t instead gives a bijection ℤ→ℤt. | The source's arbitrary-element assertion fails; a homogeneous unit supplies the correct statement. The roadmap does not repeat the error. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Evaluation-orbit bundle, README 859–860 | Closed connected M, and M=S² ⊔ T² with x₀∈S² | Connected: O=M. Disconnected: O=S², evaluation fibre over T² empty. Locally s(z)⁻¹g fixes x₀; s(gx₀)(s(gx₀)⁻¹g)=g and inverse composite returns (z,h). | Carried from [r6](PRREVIEW-DGFloer~6.md). Correct right-H local trivialization and orbit restriction. GT attribution repaired; full Palais source text unverified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Same, zero dimension | M={a,b}, x₀=a | Diff(M)=S₂, O={a,b}, H={id}; evaluation is a bijection, each fibre has 1 element. For a singleton all three have 1 element. | Carried from [r6](PRREVIEW-DGFloer~6.md). Correct finite-component and zero-dimensional cases. No new defect. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| SO(9) correction/link, README 1712 | (ℤ/2)² versus ℤ/4 | Both orders 4, but exponent 2 versus 4. Split stabilization has kernel order 2, quotient order 2, and total group (ℤ/2)². | Carried from [r6](PRREVIEW-DGFloer~6.md). css-2020 supports the former; the repaired link is well formed. Review 5 R08 repaired. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Theorem G negative control, README 1738 | Q=S²×S², X=S²×{q}, Y={p}×(S²∖{q′}), q′≠q | X∩Y={(p,q)}; tangent planes sum to dimension 4. Y≅ℝ², π₁=π₂=0, ℓ=2k−2=2, H₂(Y;ℤ)=0. No ordinary top-dimensional fundamental class or degree. | Carried from [r6](PRREVIEW-DGFloer~6.md). The missing closedness is isolated. If q′=q the intersection would instead be empty. Review 5 R09 repaired. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Module/public header, Suggested.lean 1–4,32 | Importer with all 8 fully qualified names | 8/8 names resolve; 8/8 signatures equal the recorded types; build has 0 non-sorry warnings. | Carried from [r6](PRREVIEW-DGFloer~6.md). Visibility and elaboration repaired. Review 5 R02 repaired; no mathematical signatures changed. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Theorem G hypotheses and positive control | Q=Q′♯(Sᵏ×Y), closed Y, connectivity 2k−2 | X∩Y one point; normal bundle trivial; 2k−2≥k−1 for k≥2. With degree d≠0 the claimed closed-Y setup is met. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); changed negative control computed above. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Cayley-plane index | k=1,2 | 7k+15(k−1)=7,29; nullity 15=dim S¹⁵. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Cayley-plane based-loop homology | Morse–Bott cells | Degrees 22k−15 and 22k yield H₇=ℤ, H₁₄=0, H₂₂=ℤ; same values for S⁷×ΩS²³. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); perfectness source remains unverified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Trace-one idempotent carrier | diag(1,0,0), diag(1,1,0), half of the latter | First: x²=x and trace 1. Second: x²=x but trace 2. Half: trace 1 but x²=diag(1/4,1/4,0)≠x. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Cayley-plane ownership direction | main DGFloer and its two consumers | Returning supplier paths have positive length 3 and 4; intended consumer direction does not eliminate the opposite edges. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md), subject to R01; no new global ownership audit. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Hutchings locator | Contents and sections | §7.5 p.52, §7.6 p.55, Chapter 8 p.58; cited §§7.5–7.6 occupy pp.52–57. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); no new source fetch for unchanged locator. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Existence of K(A,n) | A=0; Lean n=0,A=ℤ/2; n=1,A=ℤ | Point: all positive π=0. ℝP∞: π₁=ℤ/2, higher π=0. ℂP∞: π₂=ℤ, π₁=0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Lemma 3.41 | ℂP∞, S², S³, T², S¹ | ℂP∞ and S²: π₂=π₀Ω²=ℤ, both sides false. S³: π₃=H₁Ω²=ℤ, both false. T²,S¹: π≥2=0 and Ω² path-connected/acyclic, both true. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Theorems L and M | α=0; W=D*Tⁿ with constant coefficients | j!0=0, excluded. On the torus cotangent example evaluation splits the homology inclusion, ker i*=0; the criterion cannot fire. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Abundance and Theorem H | Tⁿ; S² | Torus: Ω² has reduced H₀=0, so constant-sphere fundamental class is excluded. Sphere: degree-3 witness has nonzero shriek image in H₁Ω²S², and 3>2. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Theorem 3.49 convergence hypotheses | First quadrant; support p=−q for all q | p,q≥0 gives only n+1 positions on total degree n≥0. Full p=−q gives infinitely many positions on degree 0, with q unbounded both ways; neither stated bound holds. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Convention and application checks (seeded) | ℂPⁿ, N_C=n+1 | Hⱼ=R in j=0,2,…,2n; n+1 distinct residues mod 2(n+1); cyclic HF has one R precisely when i+n lies in those residues. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); source not certified. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Tame synthesis and staged selection (seeded) | J(A)=eᴬJe⁻ᴬ | J(A)²=eᴬJ²e⁻ᴬ=−Id; at A=0, J(0)=J. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); not a new proof of synthesis estimates. Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Tame raw sign realization (seeded) | Parameter degree j=1 | (−1)^(i+1+i)=−1; multiply by (−1)^n to get (−1)^(n+1); Morse zero-face exponent k+(k−n)+n=2k is even. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Separate finite counting budgets (seeded) | ω=κc₁; c₁=0 branch | Bounded c₁ gives E=κc₁ bounded; c₁=0 alone provides no energy bound without the monotone relation, so the cutoff remains. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Regular true endpoint (seeded) | Constant two-marked core | ker ∂̄ has real dimension 2n, coker 0; Morse intersection dimension ind(p)+(2n−ind(p))−2n=0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Positive-monotone finite Laurent matrices (seeded) | Γ≅N_Cℤ, κ,N_C>0 | deg(t)=2N_C, ν(t)=−κN_C<0; injective c₁ fixes at most one exponent in each homogeneous matrix entry. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Degree-one Hurewicz | pt,S¹,BS₃,BQ₈ | Abelianizations 0,ℤ,ℤ/2,(ℤ/2)² agree with H₁. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Mod-2 vanishing | K(ℤ/3,2); K(ℤ/4,2) | First: reduced mod-2 homology 0, ×2 permutes 0,1,2. Second: H₂=𝔽₂≠0, excluded, and ×2 sends both 0 and 2 to 0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |
| Twisted square-zero | P empty, m=0, M=0; homogeneous coefficient | Degenerate outputs D²=0. General coefficient cancels as d(mₓ𝓏)−Σᵧ(−1)^(ind x−ind y)mₓᵧmᵧ𝓏=0 by the twisting law and graded Leibniz signs. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). Carried from [review 7](PRREVIEW-DGFloer~7.md); earlier review/finding references in this row are historical.  Carried from [review 8](PRREVIEW-DGFloer~8.md). |

## Not verifiable

- **FHS source extraction:** the sources service again returned HTTP 403 for the ETH author-hosted erratum, recorded under fhs-transversality in needs-references.toml. Review 8's indexed-text verification of Lemma 6.5's corrected proof (printed p.277, preprint p.25; erratum 10 December 2024 p.1) is carried, not newly certified. The algebra and the false Check above were independently computed without assuming the inaccessible text.
- **Unchanged seeded source limits:** review 8's limits for PSS §§2,4–5, Hofer–Salamon §§4–6, and strengthened parametric/gluing/endpoint claims remain. Its Salamon-source checks are carried. The six sampled target passages are unchanged; their numerical rows do not certify their full analytic constructions.
- **Palais and Ziller:** the unchanged restriction-map and completing-manifold perfectness limits from review 8 remain.
- **Unprovided open work:** ownership against open pull requests without supplied files was not checked. The unchanged global audit and earlier one-tactic probes are inherited through review 8. Successful elaboration does not prove the admitted statements.

## Source issues

No new source mistake was established in this incremental pass. The following three entries are carried from [review 8](PRREVIEW-DGFloer~8.md), with its source-verification limits. R02 is an error in the newly written roadmap Check, not an attributed source error.

- **Gap** in fhs-transversality at proof of Lemma 6.5, printed p.277: the source chooses a symmetric complex-linear correction without establishing the required orthogonality; it should first adjust the solution along Jz to make ξ perpendicular to Jz; affects the proof; corrected in print at the author's erratum of 10 December 2024, p.1.
- **Error** in bdho-floer at proof of Lemma 6.35, printed p.117: the source says π₈(SO(9)) is cyclic of order four; it should be (ℤ/2)², by css-2020 lines 221–223; affects the proof.
- **Error** in salamon-lectures at Remark 3.13(ii), preprint p.40, lines 1525–1526: the source says multiplication by any degree-k element gives a bijection Λ₀→Λₖ; it should require a homogeneous unit, for example a unit-coefficient monomial; affects a stated result.
