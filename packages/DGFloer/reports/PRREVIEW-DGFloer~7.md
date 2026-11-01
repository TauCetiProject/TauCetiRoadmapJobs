# Review of DGFloer (pull request #963 at a51bf74)

**Verdict:** needs changes

🤖 Independent AI review. Incremental re-review of 14 changed lines since b4e6024: seven README lines replaced; Suggested.lean is unchanged. Three blocking findings remain. The build passes; the dependency gate fails. The added section locators improve the bibliography, but the new FHS theorem locator does not identify the orthogonality correction. Full-source verification limits are distinguished below from checks of indexed primary-source excerpts.

## R01 (P1) — The returning supplier edges still form a cycle

**Location:** `TauCetiRoadmap/DGFloer/README.md:53`, `:90–91`, `:286`, `:854–857`, `:1669`, `:1712`: “HomotopySpheres Stage 4A–4B supplies stable real Bott periodicity only”.

**Claim:** DGFloer can consume TangentialBordism and HomotopySpheres while supplying their prerequisites.

**Witness:** TangentialBordism consumes DGFloer and StringOrientation (`TauCetiRoadmap/TangentialBordism/README.md:142–143`); StringOrientation consumes DGFloer (`TauCetiRoadmap/StringOrientation/README.md:214–217`); HomotopySpheres consumes TangentialBordism (`TauCetiRoadmap/HomotopySpheres/README.md:1203`). The checker reproduces the four-roadmap cycle.

**Repair:** Move the dependent applications into DGFloer Part II, after their suppliers, preserving the earlier interfaces consumed by StringOrientation and TangentialBordism in the base. Remove all returning base edges, including the mapping-space, collapse, realization and Bott uses. Removing the base's TangentialBordism and HomotopySpheres edges breaks the two witnessed return paths; require a clean dependency check afterward. Changing only the supplier table is insufficient. This finding also covers the gate's two upward edges to those suppliers. Previous R01 is unchanged.

## R02 (P2) — The ImplicitAtlases dependency remains upward

**Location:** `TauCetiRoadmap/DGFloer/README.md:1399`, `:1930`: “Apply ImplicitAtlases V0–V6 on these actual inputs”.

**Claim:** This revision of the roadmap on main can consume the later virtual engine.

**Witness:** The checker reports `UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]`. `TauCetiRoadmap/ImplicitAtlases/README.md:853` supplies V0–V6 and names DGFloer as a consumer.

**Repair:** Move this virtual application, with its analytic prerequisites, to the later Part II after ImplicitAtlases, unless the board separately resolves the main-versus-order placement. Do not edit the merge order in this PR. On the witnessed edge, placing the consumer after the supplier removes the upward relation; rerun the gate to verify it. The engine exists; its existence does not repair the order. Previous R02 is unchanged.

## R03 (P1) — The product-curve contract still has two owners and nonexistent supplier labels

**Location:** `TauCetiRoadmap/DGFloer/README.md:82`: “are targets of 7.C here, with their hypotheses”; “consumes AnalyticStableMaps M2.0/M2.0a”.

**Claim:** Section 7.C owns the general closed-source slice classification and receives its moving-domain comparison from those named sections.

**Witness:** At supplied AnalyticStableMaps head 9af338e, M2.0/M2.0a occur zero times. `TauCetiRoadmap/AnalyticStableMaps/README.md:524–535`, §2.23, owns the general slice classification and normal obstruction. DGFloer's general-slice promise remains only in its scope row.

**Repair:** In the later DGFloer Part II, consume AnalyticStableMaps §2.23 and its §§2.4–2.5 moving-domain comparison, stating only the DGFloer application. Alternatively, coordinate a complete ownership move of the theorem and prerequisites; a unilateral second promise is not a move. Retain the closed connected source, connected symplectic factor with smooth tame structure, product form/structure, integral slice class, and individual compact-image treatment for a noncompact factor. The genus-one, real-two-dimensional-factor test has actual dimension 2, expected dimension 0, and complex cokernel dimension 1; genus zero has cokernel 0. The actual supplier §2.23 gives these values. No blanket regularity claim or generic-index theorem replaces this fixed-product calculation. Previous R03 is unchanged; no declared gap covers it.

## R04 (P3) — Cite the corrected matrix proof, not Theorem 6.1

**Location:** `TauCetiRoadmap/DGFloer/README.md:1913`, referring to `:1244`: “orthogonality and symmetric-matrix lemma (§6, Theorem 6.1)”.

**Claim:** The new theorem number locates the orthogonality adjustment used in §7.C.2.

**Witness:** FHS Theorem 6.1, preprint p.22, is openness/density of regular symmetric matrices for n≥2. The author's erratum identifies the orthogonality adjustment in the proof of Lemma 6.5, published p.277, preprint p.25.

**Repair:** Cite the proof of Lemma 6.5 at p.277 and the 10 December 2024 erratum, p.1, for this adjustment; cite Theorem 6.1 separately only for its actual open-density conclusion and hypotheses. Distinguish preprint and published pagination in the source record. The indexed [primary theorem text](https://people.math.ethz.ch/~salamon/PREPRINTS/trans.pdf) and [author's erratum](https://people.math.ethz.ch/~salamon/PREPRINTS/trans-err.pdf) identify these different results; full downloads failed, as recorded below.

The algebra in the README passes its nonzero-vector test: with J=[[0,−1],[1,0]], S=diag(1,−1), z=(1,0), a=0, b=−2, ξ=(1,1), α=β=0 and t=1, the original and adjusted expressions both equal (−4,0), while the adjusted ξ=(1,0) is perpendicular to Jz. Thus this finding concerns the locator, not a refutation of that calculation. The five table rows and line 1207 now have section numbers; that part of previous R04 is repaired. The new precise FHS attribution needs the correction above; the other sources' full hypotheses remain unverified.

## R05 (P3) — The required roadmap structure and headline inventory are still absent

**Location:** `TauCetiRoadmap/DGFloer/README.md:1–3`, `:43–49`; `TauCetiRoadmap/DGFloer/Suggested.lean:20–25`.

**Claim:** The targets, checks and missing headline carriers are presented in the required form.

**Witness:** There are zero `*Needs:*` lines, zero `**Checks.**` blocks, and zero layer `### Examples` or `### Dependencies` headings. The in-scope finite-rank application remains under “Out of scope”; the docstring lists missing carriers collectively.

**Repair:** Preserve the mathematics while adding individual target dependencies, definition API lists and at least three discriminating Checks per definition, and layer Examples/Dependencies. Supply the required Summary, ownership, conventions, supplier-contract and build-order sections; move the in-scope bullet. Name each unstatable headline and its missing carrier in the docstring, including the Cayley-plane based-loop theorem. Verify headings/counts and the headline-to-docstring mapping. Previous R05 is unchanged.

## R06 (P3) — The source manifest is still missing

**Location:** `TauCetiRoadmap/DGFloer/`; references start at `README.md:1894`.

**Claim:** References and their access/locator status have the required source records.

**Witness:** The folder contains README.md, Suggested.lean, metadata.toml, STATUS.md and PROGRESS.md; sources.toml is absent, including for the four works whose locators changed.

**Repair:** Add one lifetime record per work, with exact versioned locators and legal-access status. Reuse established keys, including css-2020 and bdho-floer, and distinguish accessible text, inaccessible text and verification pages. Include the corrected FHS proof and its erratum. Verify every reference maps to one record. This review changes no manifest. Previous R06 is unchanged.

## Previous findings

- R01 — not repaired: README lines 53, 90–91, 286, 854–857, 1669 and 1712 retain the returning suppliers; the dependency checker reproduces the cycle and both related upward edges.
- R02 — not repaired: README lines 1399 and 1930 still consume ImplicitAtlases V0–V6; its upward diagnostic remains.
- R03 — not repaired: README line 82 still claims the general-slice target and cites M2.0/M2.0a; the supplied AnalyticStableMaps head instead owns it in §2.23.
- R04 — partly repaired: README lines 1207 and 1864–1868 now have section locators. Line 1913 newly identifies Theorem 6.1 instead of the corrected proof of Lemma 6.5; full classical-source verification remains incomplete.
- R05 — not repaired: the required per-target Needs/Checks and layer Examples/Dependencies structure remains absent, and the unchanged Lean docstring does not identify every unstatable headline and its missing carrier.
- R06 — not repaired: sources.toml remains absent; the new locators have no recorded version or access status.

## Verified sound

**Scope and counts.** All six previous findings were checked. The diff is exactly seven insertions and seven deletions in README.md. Both the incremental outside-folder list and the merge-base outside-folder diff are empty. All eight Lean declarations are unchanged. This review checks the seven changed citation passages and their affected mathematics and suppliers, carrying forward the previous review's 28 adversarial rows rather than claiming a new full audit. Seven additional rows below compute instances for the changed passages, followed by one source-error control. The six seeded targets are unchanged mathematically; their formulas were checked against the changed source attributions and retain the explicit verification limits below. The PR worktree remains unchanged.

**Gate and elaboration.** The supplied gate has build=0 and depcheck=4. The fresh gate rerun has all text/file scanners at zero and depcheck=4; that command does not itself run a build. Independently, `lake build TauCetiRoadmap.DGFloer.Suggested` and direct `lake env lean` elaboration of Suggested.lean succeed with only five sorry warnings (lines 43, 52, 64, 76 and 140). The standalone requested dependency check produces:

```text
UPWARD: DGFloer (on main) -> HomotopySpheres (#63) at README lines [53, 91]
UPWARD: DGFloer (on main) -> ImplicitAtlases (#199) at README lines [1930]
UPWARD: DGFloer (on main) -> TangentialBordism (#8) at README lines [90]
CYCLE among: DGFloer, HomotopySpheres, StringOrientation, TangentialBordism
depcheck: 205 roadmaps, 1477 edges, 4 problem(s)
```

**Signatures and padding.** A scratch copy with `#check @name` for all eight declarations elaborates. The types match the supplied signature inventory. The grading involution needs only the graded R-module; it does not need the omitted A-action/tower. The differential retains the commuting actions required for R-linearity. Its square-zero theorem retains the scalar tower, graded action and DG-right-module hypotheses. No needed hypothesis disappeared. Five fresh one-tactic probes fail: `infer_instance` for Hurewicz, `simp` for each of mod-2 vanishing, the double-loop equivalence and Eilenberg–MacLane existence, and `simp [twistedDifferential]` for square-zero. These are limited padding probes, not proofs. No new declarations, sorry'd data or options were introduced.

**Five pinned declarations reopened.** The pins remain Mathlib f6090c7095e1e56b3464c1daba5f24631f1290d2 and Tau Ceti 358314d4ab97483df4fc4cb8adcc02e74a8d9f5a.

| Declaration | Repository-relative file at the pin | Relevant content |
|---|---|---|
| `AlgebraicTopology.singularHomologyFunctor` | `Mathlib/AlgebraicTopology/SingularHomology/Basic.lean:52` | Native TopCat singular homology; no manifold or separation assumption. |
| `LoopSpace` | `Mathlib/Topology/Homotopy/HomotopyGroup.lean:86` | `Path x x`, hence fixed-interval loops, not Moore loops. |
| `TauCeti.IsDGAlgebra` | `TauCeti/Algebra/Homology/DG/Algebra/Defs.lean:182` | Degree +1, square-zero and signed Leibniz rule. |
| `TauCeti.IsDGRightModule` | `TauCeti/Algebra/Homology/DG/Module/Right/Defs.lean:68` | Opposite right action, scalar tower, degree +1 and module-first Koszul sign. |
| `TauCeti.InternalGrading.ofDecomposition` | `TauCeti/Algebra/Module/GradedModule/Internal.lean:110` | Actual submodule decomposition, with the original pieces. |

**Ownership and supplier resolution.** Main is fa41b374; the supplied AnalyticStableMaps head is 9af338e0. The ownership searches used `roadmaps grep` by product-slice/normal-obstruction and symmetric-matrix/orthogonality objects, `roadmaps show AnalyticStableMaps`, the supplied checkouts, board packages, and the pinned source trees. The generic slice theorem has the existing owner in R03. No separate owner was found for DGFloer's localized FHS adjustment/application; this is an application in existing DGFloer, not a new foundational Lean declaration. There are no changed Lean names to collide with another roadmap. The unchanged general ownership conclusions remain inherited from review 6.

| Citation checked this round | Actual passage |
|---|---|
| AnalyticStableMaps moving-domain and product contracts | `TauCetiRoadmap/AnalyticStableMaps/README.md:294–318`, §§2.4–2.5, and `:524–535`, §2.23; no M2.0/M2.0a. |
| HeegaardFloer F2.6c | Main `TauCetiRoadmap/HeegaardFloer/README.md:2461–2468` gives energy/area and product projections; `:2702–2704` gives the sphere-class product application. |
| MorseNovikov N1 | Main `TauCetiRoadmap/MorseNovikov/README.md:75–135` supplies finite-below support, convolution, completion and geometric-series inverses. DGFloer's geometric support remains its own obligation. |
| TangentialBordism, StringOrientation, HomotopySpheres | Supplied heads: `TauCetiRoadmap/TangentialBordism/README.md:142–143`, `TauCetiRoadmap/StringOrientation/README.md:214–217`, `TauCetiRoadmap/HomotopySpheres/README.md:1203` give the returning edges. |
| ImplicitAtlases V0–V6 | Supplied `TauCetiRoadmap/ImplicitAtlases/README.md:853` explicitly labels Layers 0–6 as V0–V6 and names DGFloer as consumer. |
| Citation-tool leads | Main `TauCetiRoadmap/AlgebraicTopology/README.md:910–914` names the Serre-fibration interfaces; `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:1261`, `:1333–1334` names compact octonion/Albert targets. These are roadmap contracts, not verified pinned declarations. |

The citation resolver rerun finds no unmatched roadmap names, but explicitly skips library names because it cannot locate Lake packages. It is not proof of library availability; the manual pin checks above supply the relevant evidence. Unprovided open-PR files were not sought. The source-table change introduces no supplier edge. There are no `*Needs:*` lines to inspect; the prose supplier edges remain, as R05 records.

**Source-locator checks.** The sources service retrieved and OCR'd the [institutional Salamon copy](https://www.math.utoronto.ca/mgualt/Morse%20Theory/Salamon%20floer.pdf), dated 1 December 1997 (salamon-lectures line 9). I read §1.4, p.10 (lines 342–374); §2.2, pp.14–16 (531–590); §§2.4–2.5, pp.20–23 (734–855); §3.4, pp.35–38 (1343–1436); §3.5, pp.38–39 (1437–1468); and §3.7, pp.40–41 (1504–1580). These locators match the changed subjects. The source uses its own action, index, cap quotient and positive-area Novikov convention; the roadmap explicitly constructs its convention and quotient adapters. The source's PSS passage is an outline referring to PSS for details, not a proof of the roadmap's strengthened parametric endpoints. Published/preprint correspondence remains uncertified. Page 40 was also rendered and inspected to verify the source error below, rather than trusting OCR alone.

The [indexed Hofer–Salamon Lemma 1.1](https://people.math.ethz.ch/~salamon/PREPRINTS/lowdim.pdf), preprint p.3, includes both nonnegative spherical monotonicity and spherical-c₁-zero among its weakly monotone cases. The indexed FHS text distinguishes Theorem 6.1 from the corrected Lemma 6.5 proof (R04). Full retrieval of these two papers and PSS failed; their indexed excerpts are not full-source certification.

The six seeded targets are: convention/application checks (1215), tame synthesis and staged selection (1314), tame raw sign realization (1318), separate finite counting budgets (1326), regular true endpoint and energy-dependent neighborhood (1352), and positive-monotone finite Laurent matrices (1407). Their unchanged computed rows are carried below. Section headings and weak-monotonicity classification alone do not certify the detailed perturbation, determinant, gluing and endpoint constructions.

**Headline inventory.** The unchanged five Lean headlines are degree-one Hurewicz, mod-2 vanishing, the asphericity/double-loop homology equivalence, existence of K(A,n) for n≥1, and twisted square-zero. The README additionally seeks Serre/fibration comparisons, DG Morse/Floer and symplectic homology, DG Viterbo comparison, Theorems A–E and G–M, Theorem 3.49, the classical Arnold bound, §7.T torsion, and projective/Cayley-plane loop-space applications. Review 6's statability assessment is inherited; no theorem or signature changed here. The unstatable-headline docstring issue remains R05.

**Adversarial table: changed source attributions and their dependent formulas.** These computations test the mathematics being attributed, not the existence of the analytic constructions. There are seven replaced lines and seven rows, with a further dependent matrix calculation in the final row.

| Changed passage / statement | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| README 1207: action/index/linearization citations | Scalar B(s)=tanh(s) in D=∂s+B | D(sech s)=−sech s tanh s+tanh s sech s=0; decaying kernel dimension 1, cokernel 0, index 1; crossing spectral flow +1. | Sign witness agrees with §7.C.0. The cited sections were read in the retrieved preprint; published-version pagination remains uncertified. |
| README 1864: capped action/index attribution | ℂP¹, area of spherical generator 1, c₁=2 | Recapping changes A_H by +1 and μ by +4; for a small Morse Hamiltonian min/max indices 0/2 give μ=−1/+1. | Agrees with stated conventions and cyclic grading. The source conventions differ; the explicit transport remains a roadmap target. |
| README 1865: generators are constructed here; variational equation | Hamiltonian H=(x²+y²)/2, ω=dx∧dy | X_H=(y,−x), dφ_t=rotation by −t, both sides of ∂t(dφ_t v)=dX_H(dφ_t v) equal [[0,1],[−1,0]]dφ_t v. At t=0 both equal (v_y,−v_x). | The elementary time-dependent-flow specialization is consistent; caps still need the explicit §7.C.1 construction. |
| README 1866: weak monotonicity and coefficient models | κ=1,N_C=2; separately c₁=0 with area 1 | First: Γ≅2ℤ, deg t=4, ν(t)=−2; c₁(A)=−2 gives ω(A)=−2≤0. Second: no negative-Chern classes, deg e^A=0, ν(e^A)=−1 despite positive area. | Both satisfy the cited weak-monotonicity implication; c₁-zero alone does not bound energy. |
| README 1867: continuation and inverse comparisons | Constant continuation; identity chain maps F=G=Id, homotopy 0 | E=0=ΔA; GF−Id=0=d0+0d and FG−Id=0=d0+0d. | Identity boundary normalization agrees; this does not establish parametric existence or PSS gluing. |
| README 1868: PSS/Novikov/Arnold applications | ℂPⁿ, n=0,1,2; n=0 is the algebraic boundary test | Nonzero cyclic residues i are {0} mod2, {1,3} mod4, {0,2,4} mod6. Betti totals 1,2,3 equal n+1 and the minimal Morse generator counts. | The shifted module and rank arithmetic agree; integer/coefficient and analytic assertions are not certified by the unavailable sources. |
| README 1913: orthogonality adjustment | J=[[0,−1],[1,0]], S=diag(1,−1), z=(1,0), a=0,b=−2, ξ=(1,1), α=β=0,t=1 | C=SJ−JS=[[0,−2],[−2,0]], L=[[0,−4],[0,0]], Lz=0, LJz=(−4,0)=2bz−2aJz. Adjustment gives (α′,β′,ξ′)=(4,0,(1,0)); both expressions are (−4,0), and ⟨ξ′,Jz⟩=0. A=Id is symmetric, commutes with J and sends z to ξ′; no symmetric commuting 2×2 matrix sends z to the original (1,1). | Orthogonality is necessary; the adjustment works. Cite the corrected proof of Lemma 6.5 rather than the distinct Theorem 6.1. R04. |

| Source-error control for README 1866's citation, Salamon Remark 3.13(ii) | R=ℤ, Γ=ℤ, c₁(generator)=2, t the degree-4 monomial | Λ₀=ℤ and Λ₄=ℤt. Multiplication by 2t sends 1 to 2t and has image 2ℤt, which misses t. Multiplication by t instead gives a bijection ℤ→ℤt. | The source's arbitrary-element assertion fails; a homogeneous unit supplies the correct statement. The roadmap does not repeat the error. |

**Adversarial table: 28 carried rows.** Every row cites review 6. Its original earlier-review references and numerical values are retained as provenance; references to previous changes describe that earlier review, not changes at this head. These rows cover the unchanged seeded targets, Lean headlines and earlier finding witnesses. They do not reopen the full roadmap review.

| Statement | Instances tried | Computed values on each side | Result / change |
|---|---|---|---|
| Product projection/classification, README 82 | Split Σ×F, area(Σ)=1; u(z)=(z,p); double cover of a sphere | Slice: first degree 1, second area 0, total area 1. Double cover: first degree 2, total area 2≠1, excluded from the slice class. | Carried from [r6](PRREVIEW-DGFloer~6.md). Mathematical contract discriminates covers; the full contract is absent from 7.C and exists in ASM §2.23. R03. |
| Same, normal obstruction | genus g=0,1,2 and n=2; n=1 | Complex ker/coker: (1,0),(1,1),(1,2); real indices 2,0,−2 versus actual dimension 2. For n=1: ker=coker=0 and index=actual=0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Genus-one slice is not regular; ASM has the required comparison. R03; do not treat a generic index theorem as this fixed-J statement. |
| Same, noncompact factor | Σ=S², F=ℂ, slices at p=j∈ℕ | Each image is compact, each energy 1, but supⱼ|p|=∞. | Individual compact image gives no common confinement; line 82 correctly disclaims that inference. | Carried from [r6](PRREVIEW-DGFloer~6.md). Preserve this restriction. |
| Evaluation-orbit bundle, README 859–860 | Closed connected M, and M=S² ⊔ T² with x₀∈S² | Connected: O=M. Disconnected: O=S², evaluation fibre over T² empty. Locally s(z)⁻¹g fixes x₀; s(gx₀)(s(gx₀)⁻¹g)=g and inverse composite returns (z,h). | Carried from [r6](PRREVIEW-DGFloer~6.md). Correct right-H local trivialization and orbit restriction. GT attribution repaired; full Palais source text unverified. |
| Same, zero dimension | M={a,b}, x₀=a | Diff(M)=S₂, O={a,b}, H={id}; evaluation is a bijection, each fibre has 1 element. For a singleton all three have 1 element. | Carried from [r6](PRREVIEW-DGFloer~6.md). Correct finite-component and zero-dimensional cases. No new defect. |
| SO(9) correction/link, README 1712 | (ℤ/2)² versus ℤ/4 | Both orders 4, but exponent 2 versus 4. Split stabilization has kernel order 2, quotient order 2, and total group (ℤ/2)². | Carried from [r6](PRREVIEW-DGFloer~6.md). css-2020 supports the former; the repaired link is well formed. Review 5 R08 repaired. |
| Theorem G negative control, README 1738 | Q=S²×S², X=S²×{q}, Y={p}×(S²∖{q′}), q′≠q | X∩Y={(p,q)}; tangent planes sum to dimension 4. Y≅ℝ², π₁=π₂=0, ℓ=2k−2=2, H₂(Y;ℤ)=0. No ordinary top-dimensional fundamental class or degree. | Carried from [r6](PRREVIEW-DGFloer~6.md). The missing closedness is isolated. If q′=q the intersection would instead be empty. Review 5 R09 repaired. |
| Module/public header, Suggested.lean 1–4,32 | Importer with all 8 fully qualified names | 8/8 names resolve; 8/8 signatures equal the recorded types; build has 0 non-sorry warnings. | Carried from [r6](PRREVIEW-DGFloer~6.md). Visibility and elaboration repaired. Review 5 R02 repaired; no mathematical signatures changed. |
| Theorem G hypotheses and positive control | Q=Q′♯(Sᵏ×Y), closed Y, connectivity 2k−2 | X∩Y one point; normal bundle trivial; 2k−2≥k−1 for k≥2. With degree d≠0 the claimed closed-Y setup is met. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); changed negative control computed above. |
| Cayley-plane index | k=1,2 | 7k+15(k−1)=7,29; nullity 15=dim S¹⁵. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). |
| Cayley-plane based-loop homology | Morse–Bott cells | Degrees 22k−15 and 22k yield H₇=ℤ, H₁₄=0, H₂₂=ℤ; same values for S⁷×ΩS²³. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); perfectness source remains unverified. |
| Trace-one idempotent carrier | diag(1,0,0), diag(1,1,0), half of the latter | First: x²=x and trace 1. Second: x²=x but trace 2. Half: trace 1 but x²=diag(1/4,1/4,0)≠x. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). |
| Cayley-plane ownership direction | main DGFloer and its two consumers | Returning supplier paths have positive length 3 and 4; intended consumer direction does not eliminate the opposite edges. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md), subject to R01; no new global ownership audit. |
| Hutchings locator | Contents and sections | §7.5 p.52, §7.6 p.55, Chapter 8 p.58; cited §§7.5–7.6 occupy pp.52–57. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); no new source fetch for unchanged locator. |
| Existence of K(A,n) | A=0; Lean n=0,A=ℤ/2; n=1,A=ℤ | Point: all positive π=0. ℝP∞: π₁=ℤ/2, higher π=0. ℂP∞: π₂=ℤ, π₁=0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Lemma 3.41 | ℂP∞, S², S³, T², S¹ | ℂP∞ and S²: π₂=π₀Ω²=ℤ, both sides false. S³: π₃=H₁Ω²=ℤ, both false. T²,S¹: π≥2=0 and Ω² path-connected/acyclic, both true. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Theorems L and M | α=0; W=D*Tⁿ with constant coefficients | j!0=0, excluded. On the torus cotangent example evaluation splits the homology inclusion, ker i*=0; the criterion cannot fire. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Abundance and Theorem H | Tⁿ; S² | Torus: Ω² has reduced H₀=0, so constant-sphere fundamental class is excluded. Sphere: degree-3 witness has nonzero shriek image in H₁Ω²S², and 3>2. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Theorem 3.49 convergence hypotheses | First quadrant; support p=−q for all q | p,q≥0 gives only n+1 positions on total degree n≥0. Full p=−q gives infinitely many positions on degree 0, with q unbounded both ways; neither stated bound holds. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Convention and application checks (seeded) | ℂPⁿ, N_C=n+1 | Hⱼ=R in j=0,2,…,2n; n+1 distinct residues mod 2(n+1); cyclic HF has one R precisely when i+n lies in those residues. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); source not certified. |
| Tame synthesis and staged selection (seeded) | J(A)=eᴬJe⁻ᴬ | J(A)²=eᴬJ²e⁻ᴬ=−Id; at A=0, J(0)=J. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md); not a new proof of synthesis estimates. |
| Tame raw sign realization (seeded) | Parameter degree j=1 | (−1)^(i+1+i)=−1; multiply by (−1)^n to get (−1)^(n+1); Morse zero-face exponent k+(k−n)+n=2k is even. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). |
| Separate finite counting budgets (seeded) | ω=κc₁; c₁=0 branch | Bounded c₁ gives E=κc₁ bounded; c₁=0 alone provides no energy bound without the monotone relation, so the cutoff remains. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). |
| Regular true endpoint (seeded) | Constant two-marked core | ker ∂̄ has real dimension 2n, coker 0; Morse intersection dimension ind(p)+(2n−ind(p))−2n=0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). |
| Positive-monotone finite Laurent matrices (seeded) | Γ≅N_Cℤ, κ,N_C>0 | deg(t)=2N_C, ν(t)=−κN_C<0; injective c₁ fixes at most one exponent in each homogeneous matrix entry. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md). |
| Degree-one Hurewicz | pt,S¹,BS₃,BQ₈ | Abelianizations 0,ℤ,ℤ/2,(ℤ/2)² agree with H₁. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Mod-2 vanishing | K(ℤ/3,2); K(ℤ/4,2) | First: reduced mod-2 homology 0, ×2 permutes 0,1,2. Second: H₂=𝔽₂≠0, excluded, and ×2 sends both 0 and 2 to 0. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |
| Twisted square-zero | P empty, m=0, M=0; homogeneous coefficient | Degenerate outputs D²=0. General coefficient cancels as d(mₓ𝓏)−Σᵧ(−1)^(ind x−ind y)mₓᵧmᵧ𝓏=0 by the twisting law and graded Leibniz signs. | Carried from [r6](PRREVIEW-DGFloer~6.md). Carry [r5](PRREVIEW-DGFloer~5.md) / [r4](PRREVIEW-DGFloer~4.md). |

## Not verifiable

- **Classical sources in the changed table:** sources-service retrieval failed for the ETH copies of FHS and Hofer–Salamon (HTTP 403), for the FHS alternate author path (HTTP 404), and for bibliographic searches for Salamon and Piunikhin–Salamon–Schwarz. The Toronto institutional Salamon copy was successfully retrieved and its cited sections read, as recorded above. The remaining missing works are recorded in needs-references.toml; Salamon was removed from that list after successful retrieval. The remaining indexed excerpts establish only the weak-monotonicity implication and FHS distinction described above; they do not certify those full sources or the six seeded targets' detailed analytic and orientation constructions. PSS §§2,4–5 and Hofer–Salamon §§4–6 remain uncertified here.
- **FHS erratum:** the indexed author-hosted one-page text identifies and repairs the orthogonality step, and its algebra was independently computed above. Its source-service download returned HTTP 403; there is no line-numbered extraction to cite. This limited indexed evidence is explicitly distinguished from full cache verification.
- **Palais restriction-map theorem and Ziller's completing-manifold perfectness:** unchanged verification limits inherited from [review 6](PRREVIEW-DGFloer~6.md). No new assertion of source verification is made; the prior Palais extraction was a verification page, not the paper.
- **Unprovided open work and unchanged global claims:** ownership against open pull requests without supplied files was not checked. Unchanged material outside the seven-line repair's dependency scope retains review 6's limits; no whole-roadmap certification is inferred from the successful Lean build.

## Source issues

The bdho-floer entry is carried from [review 6](PRREVIEW-DGFloer~6.md), which checked bdho-floer line 5076. FHS uses the indexed author erratum with the retrieval limitation above; the Salamon entry was checked in the retrieved text and page image.

- **Gap** in fhs-transversality at proof of Lemma 6.5, printed p.277: the source chooses a symmetric complex-linear correction without establishing the required orthogonality; it should first adjust the solution along Jz to make ξ perpendicular to Jz; affects the proof; corrected in print at the author's erratum of 10 December 2024, p.1.
- **Error** in bdho-floer at proof of Lemma 6.35, printed p.117: the source says π₈(SO(9)) is cyclic of order four; it should be (ℤ/2)², by css-2020 lines 221–223; affects the proof.

- **Error** in salamon-lectures at Remark 3.13(ii), preprint p.40, lines 1525–1526: the source says multiplication by any degree-k element gives a bijection Λ₀→Λₖ; it should require a homogeneous unit, for example a unit-coefficient monomial; affects a stated result.
