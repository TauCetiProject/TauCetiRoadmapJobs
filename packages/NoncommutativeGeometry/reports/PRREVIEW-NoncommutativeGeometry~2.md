# Review of NoncommutativeGeometry (pull request #1143 at 533fbe9)

**Verdict:** needs changes

Full re-review of `TauCetiRoadmap/NoncommutativeGeometry/` (README.md 825 lines, Suggested.lean 80 lines; the pull request changes nothing outside the folder). The gate at 533fbe9 passes every check (`depcheck=0`, `build=0`, `sorry-data=0`, `set_option=0`, `stray-files=0`). Dependency check run by me on this head: `depcheck: 204 roadmaps, 1430 edges, 0 problem(s)`.

**Repairs of the previous review (537f769), finding by finding.**

- R01 (cycle with SmoothBanachRepresentations): repaired. N6 (lines 639–655) now owns the smooth-vector identification, the two-way estimates `Q_k≤C_kP_k`, `P_m≤D_mQ_(m+3)` and the inverse-differentiation route to spectral invariance; no citation of SB2/SB8 remains, and `## Downstream consumers` (line 778) lists SB7 as a consumer of N1.Tensor. The head of SmoothBanachRepresentations still says the reverse (its lines 42 and 165): see R03.
- R02 (three UPWARD rows): repaired by deleting the HilbertModules, NoncommutativeIntegration and VonNeumannAlgebras rows (lines 51–58 keep six suppliers, all on main or in open pull requests the check does not flag). What replaced them is R01 below.
- R03 (VonNeumannAlgebras V6, V10 do not exist): repaired by deletion; no "V6"/"V10" remains.
- R04 (`NormalizedEvenCycle`, `SpectralTriple` unused): repaired; `Suggested.lean` now declares only `CyclicTwoCocycle`, `torusTwoCochain`, `exists_cyclicTwoCocycle_torusTwoCochain` (lines 39, 48, 68), and README lines 356–358, 568–571 describe the cycles in prose.
- R05 (locators): repaired. Lines 789–807 cite by theorem number; every one verified in the author-page copy (`connes94`, page markers equal printed pages): III.1 Prop. 3 line 6905, Prop. 4 line 6933, Thm. 12 line 7223, Lemma 14 line 7274, Thm. 26 line 7650; III.2 Prop. 5 line 7980, Thm. 7 line 7998; III.3 Prop. 2 line 8469, Prop. 3 line 8493; IV.1 Prop. 2 line 11082 (p. 295), Def. 3 line 11135 (p. 296), Tr′ line 11242 and Prop. 1 line 11252 (p. 299), the cyclicity `Tr(T₁T₂)=Tr(T₂T₁)` on dual Schatten classes line 11262 and Prop. 2 line 11282 (p. 300), Def. 3 line 11343 (p. 302), Prop. 4 line 11376 (p. 303); IV.2 Def. 2 line 11754, Prop. 3 line 11765, Prop. 4 line 11789, Thm. 8 line 11865; IV.6 lines 13549–13560 (pp. 356–357), Thm. 2 line 13610 and Thm. 3 line 13716 (pp. 358–361); App. C Lemma 1 line 17274 with the product inequality `μ_(n+m)(T₁T₂)≤μ_n(T₁)μ_m(T₂)` at line 17283 (p. 450), the `L^(p,q)` norms and `‖T‖_(1,∞)=sup σ_N/log N` lines 17381–17404 (p. 453). The Zulip link is gone; the three Fredholm names at lines 822–824 exist at the pin.
- R06 (shape, timeless wording): partly repaired. Checks lists were added for N1.Tensor (141–160), the Schatten objects (393–406), the bounded transform (583–587) and the Heisenberg module (767–774), and "Keep/Retain/unchanged" became statements. The house shape is still absent: R02 below.

## R01 (P2) — N3 and N4 plan again what NoncommutativeIntegration §§1.4–1.6 and VonNeumannAlgebras Layer 4 already plan

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` lines 68–74 ("None of those three roadmaps is an input here: N3 builds the trace on trace-class operators, Hölder's inequality and the Schatten quasi-ideals for 0<p<1 … N4 the weak Schatten ideals"), lines 377–391 and 504–509.

Claim: the quasi-ideals `S_p`, 0<p<1, with the p-triangle inequality, ideal bounds and completeness; Hölder `‖ST‖_r≤‖S‖_p‖T‖_q` for 0<p,q≤∞; the trace `Tr(T)=Σ_j⟨e_j,Te_j⟩` with basis independence and cyclicity; and the weak Schatten ideals `L^(p,∞)` with quasi-norm, adjoint and ideal bounds are this roadmap's targets.

Witness: NoncommutativeIntegration at its open head, `TauCetiRoadmap/NoncommutativeIntegration/README.md` §1.5 lines 351–354: for 0<p<1 define `S_p` by summability of the p-th powers of the singular values of a compact operator, prove the p-triangle inequality, the ideal estimates, completeness of the p-metric; §1.4 line 309: Hölder for all positive exponents with constant one (Fack–Kosaki Thm 4.2(i)); §1.6 line 371: weak Lp with its quasi-norm, adjoint and ideal estimates. Its Checks are the same examples (lines 293–296: `e₁,e₂` at p=1/2, `4>2`; lines 366–367: the (1/n²) diagonal in `S_1` and not `S_(1/2)`). VonNeumannAlgebras at its open head, `TauCetiRoadmap/VonNeumannAlgebras/README.md` Layer 4 lines 975–982: the canonical trace `Tr(x)=Σ⟨e_i,xe_i⟩`, trace class iff `Tr|x|<∞`, basis independence, cyclicity of trace-class products, the trace-class duality. Both roadmaps are earlier in the merge order (positions 4 and 276) and are in this review's list of permitted suppliers. A second witness that the restatement is also weaker than the supplier's: from `μ_(j+k)(ST)≤μ_j(S)μ_k(T)` alone (line 385) one gets `μ_(2j)(ST),μ_(2j+1)(ST)≤μ_j(S)μ_j(T)`, hence `Σ_nμ_n(ST)^r≤2Σ_j(μ_j(S)μ_j(T))^r`, i.e. `‖ST‖_r≤2^(1/r)‖S‖_p‖T‖_q`; constant one needs Horn's log-majorization `∏_(j<n)μ_j(ST)≤∏_(j<n)μ_j(S)μ_j(T)`, which §1.4 takes from Fack–Kosaki and which no target here states.

Why the head looks like this: the gate. A scratch copy of this README with one line `*Needs:* NoncommutativeIntegration §1.5, VonNeumannAlgebras V3.3, HilbertModules H6.` gives

```
UPWARD: NoncommutativeGeometry (on main) -> HilbertModules (#9) at README lines [828]
UPWARD: NoncommutativeGeometry (on main) -> NoncommutativeIntegration (#275) at README lines [828]
UPWARD: NoncommutativeGeometry (on main) -> VonNeumannAlgebras (#3) at README lines [828]
depcheck: 204 roadmaps, 1433 edges, 3 problem(s)
```

while OperatorKTheory, CStarAlgebras and AlgebraicKTheory (lines 54, 57, 286) are not flagged. The check ranks a roadmap on main before every listed roadmap, whereas this brief's rule is that a roadmap the order does not list is placed after its last supplier. I report these lines as a false positive; the previous review's R02 said the same, and its repair was placement, not re-planning. Moving three suppliers' objects into this roadmap is the route that review called not recommended.

Repair (tested against the suppliers' text): in lines 60–74 replace "None of those three roadmaps is an input here …" by the citations "NoncommutativeIntegration §1.5 supplies `S_p` for 0<p<1 on `B(H)` with the p-triangle inequality, ideal estimates and completeness, §1.4 Hölder with constant one for all positive exponents, and §1.6 the weak Lp quasi-norm, adjoint and ideal estimates, specialized to `(B(H),Tr)` by §1.5; VonNeumannAlgebras Layer 4 supplies the canonical trace, its basis independence, its cyclicity on trace-class products and the trace-class duality." Delete lines 377–391 except the consequence `S_(p₁)⋯S_(p_k)⊆S_p`, which is a one-line corollary of the cited Hölder, and turn the four Checks of lines 393–406 into agreement checks with the cited notions or delete them. In lines 504–509 define `L^(p,∞)` as §1.6's weak Lp of `(B(H),Tr)` and keep as N4's own the partial-sum Banach norm `sup_N N^(1/p−1)Σ_(j<N)μ_j(T)` (§1.6 only distinguishes these norms from the gauge; it does not construct them), the comparison with the logarithmic ideal and `T∈L^(n,∞)⇒|T|^n∈L^(1,∞)`. HilbertModules needs no citation: N5's `F_D` is an instance of N5's own Borel calculus `f(D)` with `f(λ)=λ(1+λ²)^(−1/2)`, and lines 62–64 already defer the regular-operator transform. If the gate then prints the three UPWARD lines again, that is the placement question for the board (insert NoncommutativeGeometry after NoncommutativeIntegration, position 276), not a README defect.

## R02 (P3) — Shape: house headings, `*Needs:*` lines and Checks are still missing for most definitions

Location: whole README; `## N1`–`## N7` (lines 97, 268, 348, 492, 546, 626, 698).

Witness: no `# Roadmap:` title or `**Summary.**`, no `## Scope and ownership` / `## Conventions` / `## Exact supplier contracts` / `## How to read the build` / `## Layer k` headings, no `*Needs:*` line on any target, no `### Examples` / `### Dependencies`. The definitions of N1.Cyclic (universal forms, b, B, S, σ_m, c_n), N2 (the pairings, ch_n, φ_B), N4 (`L^(1,∞)`, generalized limits, `Tr_ω`) and N6 (𝒜_θ, τ, δ_j, φ, the gauge action) have no `**Checks.**` lists; N4's "Give diagonal examples with nonzero trace, zero trace outside trace class, and dependence on ω" (lines 529–530) names tests without computing any.

Repair: at minimum add Checks for `L^(1,∞)`/`Tr_ω` (the diagonal 1/(j+1) with `Tr_ω=1`; a finite-rank perturbation leaving it unchanged; the diagonal `μ_j=k/N_k` on `[N_k,2N_k)`, `(k+1)/N_(k+1)` on `[2N_k,N_(k+1))`, `N_k=2^(2^k)`, whose `(j+1)μ_j=2k` at `j=2N_k−1` is unbounded while `Σ_(j<N)μ_j≤(k+2)²` for `N<N_(k+1)`, so it lies in `L^(1,∞)` and not in `S_(1,∞)`) and for 𝒜_θ (the multiplier `exp(2πiθnm′)` on `(U₁^mU₂^n)(U₁^(m′)U₂^(n′))`; `τδ_j=0` on `U₁^mU₂^n`; the θ=0 witness `Q_0=1`, `P_0=2` already present), and `*Needs:*` lines per target. The full reshaping is the author's to take or leave.

## R03 (P3) — SmoothBanachRepresentations SB8 still states N6's seminorm estimates and names N6 as its consumer

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` lines 639–655 (N6's estimates) against the head of SmoothBanachRepresentations, `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md` line 42 ("NoncommutativeGeometry N6 consumes SB8") and line 165 ("Prove `Q_k≤C_kP_k` and `P_m≤D_mQ_(m+3)` … Under this topological identification consume the generic density, star, derivation and all-matrix inverse/holomorphic-closure theorems").

Witness: the same two inequalities, with the same θ=0 witness `Q_0=1`, `P_0=2`, are targets of both roadmaps; N6 (line 650–653) also proves the inverse closure itself. Two owners for one statement.

Repair: not in this folder. N6 is the right owner (the estimates are about the torus and SB consumes N1.Tensor, so it is later). SmoothBanachRepresentations' lines 42 and 165 drop the claim that N6 consumes SB8 and the two inequalities; its SB8 keeps the generic smooth-vector theorems. Recorded here so the author, who owns both pull requests, can make that edit.

## Verified sound

**Gate, diff, dependency check.** `git diff --stat origin/main...HEAD` outside the folder: nothing. Gate at 533fbe9: every scanner 0, `OK`. Depcheck on the head: `204 roadmaps, 1430 edges, 0 problem(s)`; the three UPWARD lines above appear only on my scratch copy with the citations restored.

**Lean (pins: Mathlib 6b7abb3c, Tau Ceti a91d3aa, the worktree manifest; the content repository's manifest pins 358314d4/f6090c70, where none of the names below changes).** `lake env lean` on a scratch copy of `Suggested.lean` with `#check @` for all three declarations: elaborates with the single `sorry` warning; the elaborated types carry `[Ring A] [Algebra ℂ A]`, `τ : A →ₗ[ℂ] ℂ`, two elements of `TauCeti.derivationLieAlgebra ℂ A` and the four hypotheses, matching README N6 lines 665–668 ("any linear functional τ and two endomorphism-valued derivations of a unital algebra … a trace killed by both derivations and the derivations commute"). One-tactic probe on `exists_cyclicTwoCocycle_torusTwoCochain`: the anonymous constructor with `simp [torusTwoCochain]` leaves the cyclicity goal `τ(a(δ₁bδ₂c))−τ(a(δ₂bδ₁c))=τ(c(δ₁aδ₂b))−τ(c(δ₂aδ₁b))` open and the `simp` attempt with the hypotheses times out: not padding; the proof needs the trace property and `τ∘δ_j=0` (graded-trace argument below). The proved `example` (line 58) tests the body of `torusTwoCochain`. Imports: `Mathlib` and one existing Tau Ceti module. No `set_option`, no sorry'd data, `theorem` only.

**Library declarations opened at the pins.** `CStarModule` (`Mathlib/Analysis/CStarAlgebra/Module/Defs.lean` line 72): `inner_op_smul_right : inner x (a • y) = a * inner x y`, as README line 730; the self-instance `CStarModule A A` (`Module/Constructions.lean` line 78) has `inner x y := y * star x`, as README line 770; `CStarAlgebra Aᵐᵒᵖ` exists (`Classes.lean` line 167), so the opposite-algebra module of line 729 has its instances. `PositiveLinearMap.GNS` (`Mathlib/Analysis/CStarAlgebra/GelfandNaimarkSegal.lean` line 147) is the completion of `PreGNS` with inner product `f(star a * b)` (line 82), as README line 701; `gnsStarAlgHom` (line 27) is the unital representation. `ContinuousLinearMap.IsFredholm`, `FredholmPackage`, `IsFredholm.index_comp` (`Mathlib/Analysis/Normed/Operator/Fredholm/Basic.lean` lines 123, 178, and the `#check` of `index_comp`). `TauCeti.Complexification.reCLM`, `ofRealLI`, `equivProd` and `ContinuousLinearMap.complexify` (`TauCeti/Analysis/Normed/Module/Complexification.lean` lines 274, 288, 303, 356). `TauCeti.derivationLieAlgebra` (`TauCeti/Algebra/Lie/Derivation/Basic.lean`), `PiTensorProduct.projectiveSeminorm`, `IsCompactOperator`, `MultilinearMap.mkPiAlgebraFin` exist. Not at the pins (unknown identifiers under `import Mathlib`): `Schatten`, `ContinuousLinearMap.IsTraceClass`; no cyclic cohomology carrier in Tau Ceti a91d3aa (no `*Cyclic*` module under `RingTheory`). So the docstring's list of unstatable headlines (lines 16–28) is right, and nothing statable is missing.

**Cross-roadmap citations resolved (14).** OperatorKTheory #866: K3 `[z_s]×[z_t]=q*β` (line 350) and "NoncommutativeGeometry N2 computes its cyclic pairing" (354); K4 `IsFredholm` (380); K5 `e₁↦[[0,1],[1,0]]=σ₁`, `e₂↦[[0,i],[−i,0]]=−σ₂`, grading `diag(1,−1)` (492–493), swapped reduction `e⊗1↦e₂, 1⊗e↦e₁` with class β and the unswapped one with class −β, adapter `(−1)^(pq)` (499–511); K6 records the two-odd-factor sign (614–617); K7 `A_θ=C(𝕋)⋊_αℤ`, `α(f)(z)=f(exp(2πiθ)z)`, v the coordinate unitary (963–964). AlgebraicKTheory #1142 line 19 names N2 as owner of the cyclic pairings on its A0–A3. On main: BanachAlgebras A4 (line 697) and A6 bounded Hochschild cohomology (801, 805); BanachSpaceTheory B4 completed projective tensor (167, 204); OperatorAlgebraDynamics D1 (75), D2 (143), D4 dual actions (254, 258); SelfAdjointSpectralTheory Part E spectral measure (1186); OperatorIdeals singular values and `S_p`, 1≤p≤∞, trace-class family (OI-B30, B76–B88) with no trace functional, no Hölder and no p<1 (R01). IndexTheory #1077: cited only as not a prerequisite. HilbertModules #861 H6 line 712 constructs `z_T=T(1+T*T)^(−1/2)` for regular module operators; its line 120 names N7 owner of the torus connections. HeisenbergImprimitivity #1149 lines 21–23 cede "its specified 0<θ<1 Schwartz module" and (361) "the original N7 inner product" to N6–N7, so N7's inner product and completion (lines 727–731) have one owner.

**Consumers named at line 776–785.** SpectralManifolds #1158 (lines 7, 21: N1–N2, N4–N5), CompactQuantumMetricSpaces #1155 (lines 90, 606: N5–N7, N6's torus), HeisenbergImprimitivity #1149 (N6–N7), GanGrossPrasadUnitaryGroups #1404 (line 97–99: N1's completed tensor), RefinedTraceMethods #1493 (lines 59, 184: N1's cyclic operators), AutomorphicSpectralTheory #925 (lines 321, 335, 357: N1's completed projective tensors). SmoothBanachRepresentations #1145 line 39 names N1.Tensor sole owner and SB7 (154) consumes it.

**Ownership against open pull requests.** `roadmaps grep` for "Dixmier trace", a spectral-triple definition and "locally convex projective tensor": only this roadmap defines them; SpectralManifolds and CompactQuantumMetricSpaces consume. Open pull requests not listed with files in the brief were not checked.

**Sources: 25 locators in `connes94`** (the author-page copy, the README's only source), listed under R05 above; each supports the statement cited. Three new ones in substance: Def. 3 p. 296 (line 11135) defines p-summability for `p∈[1,∞[` only, and the Hölder corollary `L^(p₁)⋯L^(p_k)⊂L^p` is stated without proof (line 11140–1146); the cyclicity on dual Schatten classes (line 11262) is used inside a proof, not stated as a theorem; App. C p. 453 writes `‖T‖_(1,∞)=sup_(N≥2)σ_N/log N`, equivalent to the README's `log(1+N)` normalization (ratio →1).

**Adversarial pass.**

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `torusTwoCochain` (N6, Lean 48) | `A=ℂ`, `δ=0`; `δ₁=δ₂` | both sides 0; the `example` at line 58 gives `(2πi)⁻¹τ(a(δ₁bδ₂c−δ₂bδ₁c))` | correct | none |
| `exists_cyclicTwoCocycle_torusTwoCochain` | `Ω=A⊗Λ(ℂ²)`, `da=δ₁a e₁+δ₂a e₂`, `∫a e₁e₂=τ(a)` | `d²a=(δ₁δ₂a−δ₂δ₁a)e₁e₂=0` by `hcomm`; `∫d(a e₁)=−τ(δ₂a)=0`; for 1-forms `∫(ae₁+be₂)(ce₁+de₂)=τ(ad−bc)`, reversed `τ(cb−da)=−τ(ad−bc)` by `htrace`: graded trace; Connes III.1 Prop. 4 ⇒ cyclic cocycle; `bφ(a,b,c,d)=∫a db dc·d−∫da·b dc dd… =0` | true with exactly the four hypotheses | none |
| `CyclicTwoCocycle` conventions | n=2 | `b`: `+φ(ab,c,d)−φ(a,bc,d)+φ(a,b,cd)−φ(da,b,c)`, last sign `(−1)³`; `cyclic`: `φ(a,b,c)=φ(c,a,b)=(−1)²·shift` = Connes III.1 Prop. 4(3) line 6946 | agree with N1 lines 196–198 | none |
| N3 Schatten Checks (394–402) | `diag(1/(j+1)²)`; `e₁₁,e₂₂`, p=½; `diag(2,1)·diag(1,2)` | `Σ(j+1)^(−2p)<∞ ⇔ p>½`; `‖e₁₁+e₂₂‖_(½)=(1+1)²=4>2`, `‖·‖^(½)=2≤1+1`; `‖ST‖₁=4≤√5·√5=5`; `I₂`: `2=√2·√2` | all as stated | none |
| N3 Hölder route (382–385) | `S=T=diag(1,1)`, r=1 | from `μ_(j+k)` alone: `Σμ_n(ST)^r≤2Σ(μ_jμ_j)^r` ⇒ constant `2^(1/r)`; constant one needs Horn | route insufficient | R01 |
| N3 shift Check (403–406) | unilateral S | `S*S−SS*=e₀⊗e₀*`, `Tr=1≠0` | as stated | none |
| Hardy calibration (429–432) | `u=z`, `F=2P−1` on `ℓ²(ℤ)` | `[P,u]=e₀⊗e₋₁*`; `T=(u⁻¹−1)[F,u]=2(e₋₁−e₀)⊗e₋₁*`, `Tr′T=TrT=2`; `λ₁=−(1+i)Γ(3/2)=−(1+i)√π/2`; pairing `(1+i)⁻¹·(2⁻¹/Γ(3/2))·λ₁·2=−1`; `PuP`: `e_k↦e_(k+1)`, coker `⟨e₀⟩`, index `0−1=−1` | consistent | none |
| Odd pairing constants (280–281 vs 313) | n=2k+1, k=0..4 | `2^(−n)/Γ(n/2+1)=k!/((2k+1)!√π)` to 1e−12 (script), using `Γ(k+3/2)=(2k+2)!√π/(4^(k+1)(k+1)!)` | the two displays agree | none |
| Even `λ_n` sign (425 vs Connes line 11324) | n=2,4,6,8 | `(−1)^(n(n−1)/2)=(−1)^(n/2)`: −1,1,−1,1 both | agree | none |
| `Ch(x)#Ch(y)` on β (474–476) | `Ch(x)=−(1+i)√πψ` | `((1+i)√π)²/(2πi)=2πi/(2πi)=1`; `(1/((1+i)√π))²=1/(2πi)=−0.159i` | +1 | none |
| Bott pairing `⟨β,φ_B⟩=+1` (344) | `p(z)=(1+|z|²)⁻¹[[1,z̄],[z,|z|²]]`, orientation `dx∧dy` | `(2πi)⁻¹∫Tr(p[∂_xp,∂_yp])dxdy=0.999` (numerical, disk radius 60) | +1 for the tautological projection with this orientation | none |
| Product reductions (459–463) | `e₁=σ₁`, `e₂=−σ₂` | `D₁σ₁−D₂σ₂=−i(σ₁δ₁−σ₂δ₂)` = N7's D; `U=(σ₁−σ₂)/√2`: `U²=1`, `Uσ₁U=−σ₂`, `Uσ₂U=−σ₁`, `Uσ₃U=−σ₃` | as displayed; with K5's "unswapped class −β" both pairings −1 under the same reduction on both sides, the graded sign | none |
| Naive bounded product (464–467) | `[F₁⊗1⊗σ₁,z₁]` | `=[F₁,z₁]⊗1⊗σ₁`, rank one ⊗ `id_(ℓ²(ℤ))`: not compact | non-example correct | none |
| N7 Dirac (705–706) | `σ₁δ₁−σ₂δ₂=[[0,δ₁+iδ₂],[δ₁−iδ₂,0]]` | `D⁺=−i(δ₁−iδ₂)` (lower-left); `D²=−(δ₁²+δ₂²)` since `σ₁σ₂+σ₂σ₁=0`; on `U₁^mU₂^n`: `4π²(m²+n²)`, multiplicity 2, kernel dim 2 | as stated | none |
| `Tr_ω(|D|⁻²)=1/(2π)` (714) | lattice sum | `ζ_D(s)=2(4π²)^(−s)·4ζ(s)β(s)`, residue at 1: `2·4·(π/4)/(4π²)=1/(2π)`; partial sums at R=400: 0.147 → 0.159 | 1/(2π) by N4's Tauberian bridge | none |
| Hochschild class (477–478) | `D`, `γ=σ₃` | `[D,a][D,b]=−δ₁aδ₁b−δ₂aδ₂b+iσ₃(δ₁aδ₂b−δ₂aδ₁b)`; `Tr₂(σ₃·)=2i(…)`; `λ₂=−1`; `(−1)(2i)/(4π)=−i/(2π)=1/(2πi)` | `φ_ω=φ` | none |
| Spin trace (716) | `M=diag(a,b)` | `Tr_ω(π(a)Δ⁻¹⊗e₁₁)=τ(a)/(4π)` (half of 1/(2π) per unit) ⇒ `τ(Tr₂M)/(4π)` | consistent | none |
| Heisenberg module (726–741) | `(ξU₁)(s)=ξ(s+θ)`, `(ξU₂)=e^(2πis)ξ` | `ξU₂U₁=e^(2πiθ)ξU₁U₂` ✓; `[∇₁,∇₂]ξ=(2πi/θ)ξ`; `D⁺=−2πs/θ−d/ds`, kernel `exp(−πs²/θ)`∈𝒮 (θ>0), adjoint kernel `exp(πs²/θ)`∉L²: index +1; `(2πi)⁻¹(2πi/θ)·θ=1` | +1 = φ(generator); `φ([1])=0` | none |
| Opposite-algebra Check (768–774) | `x=e₁₂,y=e₁₁` | `x*y=e₂₁e₁₁=e₂₁`; Mathlib `y·x*=e₁₁e₂₁=0`; `⟪ξ,op(a)•η⟫=op(⟨ξ,ηa⟩)=op(⟨ξ,η⟩a)=op(a)·op(⟨ξ,η⟩)` | matches the pinned law | none |
| GNS orthonormality (703) | `U₁^mU₂^n` | `τ(U₂^(−n)U₁^(m′−m)U₂^(n′))` has zero mode iff `m=m′, n=n′`, then `=1` | correct | none |
| Odd torus modules (752–760) | `ρ₁`, `ρ₂`, `F=1−2P_H` | `V₊S=e^(2πiθ)SV₊`, `SV₋=e^(2πiθ)V₋S` ✓; `(1−P_H)S(1−P_H)`: `e₋₁↦0`, onto ⇒ index +1; diagonal V ⇒ 0; `ν_j(U_k)=(1+i)⁻¹π^(−½)·((1+i)√π/(2πi))·2πiδ_jk=δ_jk` | consistent | none |
| N6 ordered multiplier (635–636) | `U₂^nU₁^(m′)` | `=λ^(nm′)U₁^(m′)U₂^n` ⇒ `exp(2πiθnm′)` | correct | none |
| N6 seminorm estimates (644–650) | general a; θ=0, `a=1+U₁` | `|r^αs^βa_(rs)|≤(2π)^(−α−β)‖δ₁^αδ₂^βa‖≤(2π)^(−m)P_m` ⇒ `Q_k≤C_kP_k`; `‖∂^wa‖≤(2π)^mQ_(m+3)Σ(1+|r|+|s|)^(−3)`, `Σ4n/(1+n)³<∞` (diverges with exponent 2); `Q₀=1`, `P₀=2` | both directions, offset 3 right, constants θ-free | none |
| N4 `L^(1,∞)` vs `S_(1,∞)` (501–504) | `μ_j=k/N_k` on `[N_k,2N_k)`, `(k+1)/N_(k+1)` on `[2N_k,N_(k+1))`, `N_k=2^(2^k)` | non-increasing to `2^16` (script); `sup_N Σ_(j<N)μ_j/log(1+N)=2.49` up to `2^16`; `(j+1)μ_j=2k` at `j=2N_k−1` → ∞ | separating example exists | R02 (as a Check) |
| `L^(p,∞)` partial sums (506–507) | `μ_j=(j+1)^(−1/p)`, p=2 | `N^(1/p−1)Σ_(j<N)μ_j`=1.59,1.86,1.95,1.99 (N=10..10⁴), bounded by `1/(1−1/p)`; conversely `Nμ_(N−1)≤Σ_(j<N)μ_j≤CN^(1−1/p)` | equivalent, and a norm by Ky Fan | none |
| `T∈L^(n,∞)⇒|T|^n∈L^(1,∞)` (509) | `μ_j≤C(j+1)^(−1/n)` | `μ_j(|T|^n)≤Cⁿ/(j+1)`, partial sums `≤Cⁿ(1+log N)` | true | none |
| Normal functionals (524–528) | `ρ` trace class, `T=ξ⊗η*` | `Tr(ρξ⊗η*)=⟨η,ρξ⟩`; vanishing for all ξ,η ⇒ ρ=0; `Tr_ω(1/(j+1))=1≠0` | no Dixmier trace is normal | none |
| Tauberian example (542) | `diag(1/(j+1))` | `(s−1)ζ(s)→1`; `Σ_(j<N)1/(j+1)/log(1+N)→1` | `Tr_ω=1` | none |
| N5 bounded transform Check (584–587) | `D=diag(0,1,−1)` | `F_D=(0,0.7071,−0.7071)`, `1−F_D²=(1,½,½)=(1+D²)⁻¹`; `1−(signD)²=(1,0,0)` | as stated | none |
| `K=(1+D²)⁻¹` (553) | self-adjoint D | `((D−i)⁻¹)*=(D+i)⁻¹`, `(D+i)⁻¹(D−i)⁻¹=(D²+1)⁻¹` | correct | none |
| N1.Tensor Checks (143–160) | `e₀⊗e₀=(e₀+e₁)⊗e₀−e₁⊗e₀`; `Σ_(i<n)e_i⊗e_i`; `x⊗y+(ix)⊗(iy)` | products `2+1=3`, infimum 1; trace norm n vs HS norm √n; `−((i·ix)⊗y−(ix)⊗(iy))=x⊗y+(ix)⊗(iy)` since `i·ix=−x` | all as stated | none |
| Scalar `σ_m↦z↦z` (244–246) | `ℂ`, e=1 | Connes III.3 Prop. 2 with `(φ#σ)(e,…,e)=(m+1)φ(e,…,e)` (line 7258, m′=1): `S^mτ(1,…,1)=m!=σ_m(1,…,1)` | consistent | none |
| Even/odd ch pairings (302–317) | k=m; n=2k+1 | `(−1)^k(2k)!/k!·(−1)^k/(2k)!=1/k!`; `(−1)^kk!·(−1)^k/((1+i)√π(2k+1)!)=k!/((1+i)√π(2k+1)!)` = N2's constant | agree | none |
| Hochschild dims (688–695) | Diophantine θ | Connes Prop. 5 (line 7980–7985): `H⁰=ℂ`, dims 2 and 1, non-Diophantine infinite-dimensional; two-step resolution ⇒ 0 above 2 | as stated | none |

**README–Lean agreement.** Backticked own names in the README: `torusTwoCochain` (665), `exists_cyclicTwoCocycle_torusTwoCochain` (667), `CyclicTwoCocycle` (201): all declared; no other own name is backticked. Generality equal (unital `Ring`, any `τ`, `derivationLieAlgebra`).

**Wording.** No process words, pull-request numbers or local paths; "retains"/"Keep" at lines 315, 684, 763 are mathematical statements.

## Not verifiable

- none. Every locator is in the author-page copy of Connes' book. Ownership against open pull requests whose files the brief does not list was not checked.

## Source issues

- none
