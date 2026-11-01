# Review of NoncommutativeGeometry (pull request #1143 at 497d5ef)

**Verdict:** accepted

Full re-review of `TauCetiRoadmap/NoncommutativeGeometry/` (README.md 957 lines, Suggested.lean 80 lines, unchanged since the previous head; nothing changes outside the folder: `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/NoncommutativeGeometry'` is empty). The worker's gate at 497d5ef passes every check (`depcheck=0 build=0 sorry-data=0 set_option=0 stray-files=0 readme-ids-missing=0 … OK`). Dependency check run by me on this head:

```
depcheck: 204 roadmaps, 1431 edges, 0 problem(s)
```

**Repairs of the previous review (533fbe9), finding by finding.**

- R01 (P2, N3–N4 plan again what NoncommutativeIntegration §§1.4–1.6 and VonNeumannAlgebras Layer 4 plan): resolved by the other route the brief allows. Lines 69–75 now read "The trace on trace-class operators, Hölder's inequality with constant one, the quasi-ideals S_p for 0<p<1 and the weak ideals are stated in N3–N4 for B(H) with its canonical trace Tr … tracial Lp spaces over a general semifinite trace … belong to NoncommutativeIntegration, and von Neumann algebras, preduals and normal functionals to VonNeumannAlgebras", and lines 412–437 build the B(H) instance with its own route (exterior-power log-majorization for Hölder with constant one, Fack–Kosaki Theorems 4.2 and 4.9(iii) as sources, the Schmidt series of BanachSpaceTheory B4 for the trace). The citation route the previous review asked for is closed mechanically: this roadmap is on main, the dependency check ranks a roadmap on main before every open supplier, and a scratch copy with one `*Needs:* NoncommutativeIntegration §1.5, VonNeumannAlgebras V4.Core` line prints two `UPWARD` lines (the previous review recorded the same lines and called them a false positive; the gate, not the review, decides what the worker accepts). The brief's rule for a supplier the order places later is that the notion moves down and the move is recorded: **recorded here**. The B(H) instance is restricted to what N3–N5 and N7 use; the general semifinite theory stays with NoncommutativeIntegration. The mathematics of the moved targets is verified below (table rows N3.1–N3.9, N4.1–N4.6). What remains is a two-owner overlap on the supplier's side, R04.
- R02 (P3, house shape, `*Needs:*` lines, Checks): partly repaired. Every section now ends with a `*Needs:*` line (167, 275, 381, 556, 644, 726, 820, 900); Checks were added for N2 (311–325), N3 (439–470, nine bullets), N4 (604–631, four computed examples including the `L^(1,∞)∖S_(1,∞)` diagonal and the ω-dependent one the previous review asked for) and N6 (780–798). Still absent: `# Roadmap:`/`**Summary.**`, `## Scope and ownership`/`## Conventions`/`## Exact supplier contracts`/`## How to read the build`/`## Layer k` headings, `### Examples`/`### Dependencies`; N1.Cyclic has no Checks, N5 and N7 have one each. Carried as R02 below.
- R03 (P3, SmoothBanachRepresentations SB8 states N6's estimates): not in this folder; unchanged at the SmoothBanachRepresentations head (its lines 42 and 165 still say N6 consumes SB8 and still state `Q_k≤C_kP_k`, `P_m≤D_mQ_(m+3)`). Carried as R03 below.

## R01 (P3) — Adjoint invariance of singular values is cited to OI-A20, which is the ideal inequality

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` line 418, "the ideal bounds `‖ATB‖_p≤‖A‖‖T‖_p‖B‖` and adjoint invariance from OI-A20".

Claim: both the ideal bound and `‖T*‖_p=‖T‖_p` for 0<p<1 come from OI-A20.

Witness: OperatorTheory/OperatorIdeals on main, `TauCetiRoadmap/OperatorTheory/OperatorIdeals/README.md` line 156: OI-A20 is `aₙ(ATB)≤‖A‖aₙ(T)‖B‖` only; line 196: OI-A30 is `aₙ(T†)=aₙ(T)` over `RCLike`; line 399: OI-B50 is Schatten adjoint invariance for p≥1.

Repair: "the ideal bounds … from OI-A20 and adjoint invariance from OI-A30" (and add OI-A30 to the N3 and N4 `*Needs:*` lists at lines 556 and 644, where N4's "adjoint … bounds (OI-A20)" at line 573 has the same slip).

## R02 (P3) — House shape still absent; N1.Cyclic, N5 and N7 below three Checks

Location: whole README; `## N1`–`## N7` (lines 102, 277, 383, 558, 646, 728, 822).

Witness: no `# Roadmap:` title, `**Summary.**`, `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `## How to read the build`, `## Layer k` or `### Examples`/`### Dependencies` headings; N1.Cyclic (169–275) defines universal forms, b, B, S, σ_m, c_n with no `**Checks.**` list; N5 (683–687) and N7 (891–898) have one Check each.

Repair (the author's to take or leave): add Checks for N1.Cyclic (the scalar witness `S^mτ(1,…,1)=m!=σ_m(1,…,1)`, already computed in the previous review; `φ(a,b,c)=abc` on ℂ nonzero on (1,1,1) at line 194 is one; the sign `(−1)^(n+1)` of the last coboundary term on a two-term example), for N5 (the eigenvalue count in a bounded interval for `D=diag(j)`; `(D−i)⁻¹` compact iff eigenvalues leave every bounded set) and for N7 (the orthonormality of the Fourier basis at line 827; the kernel dimension 2 of D). The heading reshaping is secondary.

## R03 (P3) — SmoothBanachRepresentations SB8 still states N6's seminorm estimates and names N6 as its consumer

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` lines 744–752 against the SmoothBanachRepresentations head, `TauCetiRoadmap/RepresentationTheory/SmoothBanachRepresentations/README.md` line 42 ("NoncommutativeGeometry N6 consumes SB8 …") and line 165 ("Prove `Q_k≤C_kP_k` and `P_m≤D_mQ_(m+3)` … at θ=0, a=1+U₁ has Q_0=1 and P_0=‖a‖=2").

Witness: the same two inequalities with the same θ=0 witness are targets of both roadmaps; this README (correctly) cites nothing from SB8.

Repair: not in this folder. SmoothBanachRepresentations' lines 42 and 165 drop the claim that N6 consumes SB8 and the two inequalities. Recorded again so the author, who owns both pull requests, can make that edit.

## R04 (P3) — The moved B(H) instance now has a second owner at the supplier's head, and an on-main trace functional is not distinguished

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` lines 69–75 and 412–437.

Witness: NoncommutativeIntegration at its open head, `TauCetiRoadmap/NoncommutativeIntegration/README.md` §1.5 lines 351–354 ("For 0<p<1 define S_p by summability of the p-th powers of the singular values of a compact operator, prove the p-triangle inequality, the ideal estimates …, completeness of the p-metric, and identify it with Lp(B(H),Tr)") and its Downstream line 1414 ("NoncommutativeGeometry consumes Layer 1 (I1): tracial Lp including 0<p<1, Hölder … specialized to B(H)"); VonNeumannAlgebras head Layer 4 V4.Core lines 972–979 (canonical trace, basis independence, cyclicity of trace-class products). On main, RandomMatrices §8.3 (`TauCetiRoadmap/RandomMatrices/README.md` lines 989–993) builds "on the operator-ideal carriers the trace-class integral-operator and Fredholm-determinant theory: summability, the trace functional, exterior powers" for integral operators on `L²(μ)`.

Repair: in this folder, one clause in the scope paragraph (lines 69–75): "RandomMatrices §8.3 builds the trace functional for trace-class integral operators on `L²(μ)` inside its determinantal constructor; N3's trace is on an arbitrary separable H with its cyclicity on dual Schatten classes." On the suppliers' side (not this folder): NoncommutativeIntegration §1.5 identifies its `Lp(B(H),Tr)` for 0<p<1 with N3's `S_p` instead of constructing it, and its Downstream line 1414 reverses direction; VonNeumannAlgebras V4.Core may keep its own trace (its predual theory needs it in its own generality) and cite N3's cyclicity on dual Schatten classes as agreeing. These are the intake's placement edits once this roadmap's position is fixed; nothing in this folder depends on them.

## R05 (P3) — Two library names are written without their namespace

Location: `TauCetiRoadmap/NoncommutativeGeometry/README.md` lines 88 and 955 (`FredholmPackage`), lines 136 and 167 (`ContinuousLinearMap.complexify`).

Witness: at the pins, `Mathlib/Analysis/Normed/Operator/Fredholm/Basic.lean` line 39 declares `ContinuousLinearMap.FredholmPackage` (`#check @FredholmPackage` under `import Mathlib` fails: unknown identifier); `TauCeti/Analysis/Normed/Module/Complexification.lean` lines 75, 347, 356 declare `TauCeti.ContinuousLinearMap.complexify` inside `namespace TauCeti`. `TauCeti.Complexification.reCLM`, `ofRealLI`, `equivProd` (lines 274, 288, 303) are named correctly.

Repair: write `ContinuousLinearMap.FredholmPackage` and `TauCeti.ContinuousLinearMap.complexify`.

## Verified sound

**Gate, diff, dependency check.** Gate at 497d5ef: every scanner 0, `OK`, build 0. Nothing outside the folder. Depcheck on the head: `204 roadmaps, 1431 edges, 0 problem(s)`; no `moved:` line (this roadmap is on main and not in the merge order). Declared gaps: none (no readable `design/plan.json`), none needed.

**Lean (pins: Mathlib 6b7abb3c, Tau Ceti a91d3aa, the worktree manifest).** `lake env lean` on a scratch copy of `Suggested.lean` with `#check @` for the three declarations: elaborated types `CyclicTwoCocycle : {A : Type u} → [Ring A] → [Algebra ℂ A] → Type u`, `torusTwoCochain : … (A →ₗ[ℂ] ℂ) → derivationLieAlgebra ℂ A → derivationLieAlgebra ℂ A → MultilinearMap ℂ (fun _ => A) ℂ`, `exists_cyclicTwoCocycle_torusTwoCochain` with the four hypotheses `htrace`, `h₁`, `h₂`, `hcomm`; no binder lost; generality equals README N6 lines 767–770 (any linear τ, two endomorphism-valued derivations of a unital complex algebra; cocycle when τ is a trace killed by both and they commute). One-tactic probe on the headline: the anonymous constructor with `simp [torusTwoCochain, mkPiAlgebraFin_apply, List.ofFn_succ, mul_sub, mul_assoc, htrace]` leaves the cyclicity goal `τ(a(δ₂b·δ₁c))−τ(a(δ₁b·δ₂c)) = τ(c(δ₂a·δ₁b))−τ(c(δ₁a·δ₂b))` and the four-term cocycle goal open: not padding (the proof needs the trace property, `τ∘δ_j=0` and commutation, the graded-trace argument of Connes III.1 Prop. 4). The proved `example` (line 58) tests the body of `torusTwoCochain`. Imports: `Mathlib` and one existing Tau Ceti module; no `set_option`, no sorry'd data, `theorem` only. Headlines: the docstring (lines 16–28) names the unstatable ones; `#check @Schatten` and `@ContinuousLinearMap.IsTraceClass` are unknown identifiers at the pin and Tau Ceti a91d3aa has no cyclic-cohomology module, so nothing statable is missing.

**Library declarations opened at the pins.** `ContinuousLinearMap.FredholmPackage` (Fredholm/Basic.lean line 39), `ContinuousLinearMap.IsFredholm.index_comp` (`#check` elaborates), `PositiveLinearMap.GNS`, `PositiveLinearMap.gnsStarAlgHom`, `CStarModule.inner_op_smul_right` (`#check` elaborate), `Matrix.transvection : n → n → R → Matrix n n R`, `Matrix.GeneralLinearGroup` (`GL`), `IsCompactOperator`, `PiTensorProduct.projectiveSeminorm`, `UniformSpace.Completion`, `WithSeminorms`, `TauCeti.derivationLieAlgebra : … LieSubalgebra R (Module.End R A)`, `TauCeti.Complexification.reCLM/ofRealLI/equivProd` and `TauCeti.ContinuousLinearMap.complexify` (Complexification.lean lines 274, 288, 303, 356), `LinearPMap` self-adjointness (`Mathlib/Analysis/InnerProductSpace/LinearPMap.lean` line 234).

**Cross-roadmap citations resolved (16).** On main: OperatorIdeals OI-A17 (`a_{m+n}(S+T)≤aₘ(S)+aₙ(T)`, line 150), OI-A20 (156), OI-A22 (`a_{m+n}(ST)≤aₘ(S)aₙ(T)`, 159), OI-B29–B30 (349–351), OI-A30 (196; R01); BanachSpaceTheory B4 Schmidt series `Tx=∑ s_j⟪e_j,x⟫f_j`, `s_n=a_n(T)` zero-based (lines 226–244) and the completed Banach projective tensor; BanachAlgebras A4 dual actions `(a·φ)(x)=φ(x·a)`, `(φ·a)(x)=φ(a·x)` (line 701; agrees with README's `(aφb)(x)=φ(bxa)` at 216), A6 bounded Hochschild cochains (801); SelfAdjointSpectralTheory Part E spectral measure (1186); OperatorAlgebraDynamics D1, D2, D4 (75, 143, 254). At open heads: OperatorKTheory K3 `[z_s]×[z_t]=q*β` (350), K3 inverse-closed Fréchet subalgebras (356), K4 Atkinson and `IsFredholm` comparison (376–380), K5 `e₁↦[[0,1],[1,0]]=σ₁`, `e₂↦[[0,i],[−i,0]]=−σ₂`, grading diag(1,−1), swapped reduction `e⊗1↦e₂, 1⊗e↦e₁` of class β, unswapped of class −β, adapter `(−1)^(pq)` (492–511), K6 two-odd-factor sign and the ordered two-circle/Dirac example (613–617), K7 `A_θ=C(𝕋)⋊_αℤ`, `α(f)(z)=f(exp(2πiθ)z)`, v the coordinate unitary, no irrationality hypothesis (963–967); CStarAlgebras C1–C5 (cfc at 22, 89, 98; `M_n⊗A≅M_n(A)` at 566); AlgebraicKTheory line 19 names N2 owner of the algebraic cyclic pairings (consistent with lines 75–79, which no longer consume it); HilbertModules H6 line 120 ("NoncommutativeGeometry N7 retains its two-torus connections, curvature and index") and HeisenbergImprimitivity line 21 (N6–N7 retain the smooth two-torus). Consumers named at 904–911 checked: SmoothBanachRepresentations line 39 (N1.Tensor sole owner, SB7 consumes), SpectralManifolds lines 7, 21, CompactQuantumMetricSpaces 90, 606, GanGrossPrasadUnitaryGroups 7, 97–107, RefinedTraceMethods 9, 59. AutomorphicSpectralTheory was not located on main or among the brief's checkouts (a Downstream mention, not a dependency). Ownership against open pull requests not listed with files in the brief was not checked.

**Sources (seeded sample of 17 locators, all read at the line).** `connes94` (author-page copy, page markers = printed pages): III.1 Prop. 3 line 6905 (universal Ω¹, `da=1⊗a`), Prop. 4 line 6933 (cycle ⇔ closed graded trace ⇔ cyclic cocycle, with the coboundary and cyclicity sign of README lines 200–205 at 6946–6949), Thm. 12 line 7223 (cup product, character of a tensor product of cycles), Lemma 14 line 7274 (S as `1/(n+3)·A(σ#φ)`), Thm. 26 line 7650 (SBI exact triangle); III.2 Prop. 5 line 7980 (H⁰=ℂ, dims 2 and 1 under Diophantine, infinite-dimensional non-Hausdorff otherwise), Thm. 7 line 7998 (HP ≅ ℂ² both parities, bases φ_j and Sτ, φ with exactly README's formula at 8006); III.3 Prop. 2 line 8469 (even pairing `(m!)⁻¹(φ#Tr)(e,…,e)`, invariance under `diag(e,0)`, S), Prop. 3 line 8493 (odd pairing with `1/√(2i)·2⁻ⁿΓ(n/2+1)⁻¹`, additivity `χ(uv)=χ(u)+χ(v)` by the path from diag(uv,1) to diag(u,v) at 8521–8545, as README line 301); IV.1 Prop. 2 line 11082 (matrix amplification, index map on K₀), Def. 3 line 11135 (p-summable for p∈[1,∞[; Hölder corollary stated without proof at 11140–11146), Tr′ line 11242 and Prop. 1 line 11252, the dual-Schatten cyclicity line 11262 (inside a proof), Prop. 2 line 11282 (`τ_(m+2)=−(2/(m+2))Sτ_m`), Def. 3 line 11343 (λ_n even and odd with `√(2i)`), Prop. 4 line 11376 (index = pairing with the character); IV.2 Def. 2 line 11754, Prop. 3 line 11765, Prop. 4 line 11789 (Tauberian equivalence), Thm. 8 line 11865 (Hochschild class with `D⁻¹∈L^(n,∞)`, `Sign D=F`, δ-regularity of a and [D,a]); IV.6 lines 13549–13560 (Heisenberg module, θ∈]0,1], ∇₁, ∇₂ with README's signs); App. C lines 17381–17404 (`‖T‖_(p,q)`, `‖T‖_(1,∞)=sup_(N≥2)σ_N/log N`). `fack-kosaki` (msp publisher copy, printed = PDF page + 267): Theorem 4.2 line 605 on p. 286 ((i) Hölder for all p,q,r>0 with constant one, (ii) `Λ_t(TS)≤Λ_t(T)Λ_t(S)`), Theorem 4.9 heading line 863 on p. 294 with clause (iii) for 0<p<1 at line 871 on p. 295 (its proof via Theorem 4.7(i) and Lemma 4.8, lines 877–881). Every locator supports the statement as written; the FK text is a poor OCR but the theorem numbers, pages and clause letters are legible.

**Adversarial pass.**

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `exists_cyclicTwoCocycle_torusTwoCochain` (Lean 68) | `Ω=A⊗Λ(ℂ²)`, `da=δ₁a e₁+δ₂a e₂`, `∫a e₁e₂=τ(a)` | `d²a=(δ₁δ₂a−δ₂δ₁a)e₁e₂=0` by `hcomm`; `∫d(ae₁)=−τ(δ₂a)=0` by `h₂`; `∫(ae₁+be₂)(ce₁+de₂)=τ(ad−bc)` and reversed `τ(cb−da)=−τ(ad−bc)` by `htrace`: closed graded trace ⇒ cyclic cocycle (Connes III.1 Prop. 4); probe leaves both goals open without these | true with exactly the four hypotheses | none |
| `CyclicTwoCocycle` conventions (Lean 39–44) | n=2 | b: `+φ(ab,c,d)−φ(a,bc,d)+φ(a,b,cd)−φ(da,b,c)`, last sign `(−1)³`; cyclic `φ(a,b,c)=φ(c,a,b)=(−1)²·shift` = Connes line 6946–6949 | agree with README 200–205 | none |
| N2.1 elementary-matrix Check (312–315) | `u=1+aE_ij`, i≠j | `u⁻¹=1−aE_ij` since `E_ij²=0`; in `(φ#Tr)(x₀,…,x_n)` each entry `(x_k)_(i_k i_(k+1))≠0` forces `i_k=i, i_(k+1)=j`, so `i₁=j` and `i₁=i` | every term zero | none |
| N2.2 trace cocycle Check (316–319) | `e∈M_n(ℂ)` idempotent | `m=0`: `(0!)⁻¹Tr(e)=rank e`; `c=½` on [1]: ½ | as stated | none |
| N2.3 circle Check (320–325) | `ψ(a₀,a₁)=(2πi)⁻¹∫a₀da₁`, `u=z^k` | `ψ(z^(−k),z^k)=(2πi)⁻¹k∫dz/z=k`; `ψ(·,1)=0`, `ψ(1,z^k)=(2πi)⁻¹∫d(z^k)=0`; pairing `(1+i)⁻¹·½·Γ(3/2)⁻¹·k=k/((1+i)√π)`; square `1/((1+i)²π)=1/(2πi)=−0.1592i` (script) | as stated, additive in k | none |
| N2 odd constants (289, 346) | n=2k+1, k=0..4 | `2^(−n)/Γ(n/2+1)=k!/((2k+1)!√π)` to 1e−16 (script) | agree | none |
| N3.1 `S_p` membership Check (440–442) | `diag((j+1)^(−3))` | `Σ(j+1)^(−3p)<∞ ⇔ 3p>1 ⇔ p>1/3` | as stated | none |
| N3.2 p-triangle Check (443–446) | p=½, `S=diag(1,0)`, `T=diag(0,4)` | `‖S‖=1`, `‖T‖=(√4)²=4`, `‖S+T‖=(1+2)²=9>5`; powers `3≤1+2`, equality | as stated; FK 4.9(iii) constant attained | none |
| N3.3 majorization Check (447–452) | `S=diag(2,1)`, `T=[[1,1],[0,1]]` | `μ(T)=(1.6180,0.6180)`, `(ST)*(ST)=[[4,4],[4,5]]`, `μ(ST)²=(8.5311,0.4689)=(9±√65)/2`, `μ(ST)=(2.9208,0.6847)`; `0.6847>0.6180`; `2.9208≤3.2361`; products 2.000 and 2.000 (script) | as stated | none |
| N3.4 Hölder route (419–426) | `‖Λ^nT‖=∏_(j<n)μ_j(T)`; `Λ^n(ST)=Λ^nSΛ^nT` | `∏_(j<n)μ_j(ST)≤∏μ_j(S)∏μ_j(T)` (Horn); log-majorization ⇒ `Σμ_j(ST)^r≤Σ(μ_j(S)μ_j(T))^r` (x↦e^(rx) convex increasing) ⇒ sequence Hölder, constant 1; from OI-A22 alone `μ_(2j),μ_(2j+1)(ST)≤μ_j(S)μ_j(T)` ⇒ `2^(1/r)` | route sufficient; `2^(1/r)` remark correct | none |
| N3.5 Hölder Checks (453–460) | `diag(2,1)·diag(1,2)`; `I₂`; `diag(1/(j+1))²` | `4≤√5·√5=5`; `2=√2·√2`; `ST∈S_r ⇔ 2r>1`; `1/r=2/p<2` as `p↓1` | as stated, exponent sharp | none |
| N3.6 inclusion `‖T‖_q≤‖T‖_p` (427) | p≤q | `Σμ_j^q=Σμ_j^pμ_j^(q−p)≤‖T‖_p^(q−p)Σμ_j^p=‖T‖_p^q` | true | none |
| N3.7 trace via Schmidt series (428–433) | ONB `(g_k)`, `Tx=Σs_j⟨e_j,x⟩f_j` | `Σ_kΣ_j s_j|⟨e_j,g_k⟩||⟨g_k,f_j⟩|≤Σ_j s_j·1·1=‖T‖₁` (Cauchy–Schwarz, Parseval), so `Σ_k⟨g_k,Tg_k⟩=Σ_j s_j⟨e_j,f_j⟩` basis-free; positive T: `f_j=e_j` ⇒ `Σμ_j` | as stated | none |
| N3.8 trace Checks (461–470) | rank-one `P_(e₀)`; `diag(1/(j+1)²)`; shift S | `⟨(e₀±e₁)/√2,P(e₀±e₁)/√2⟩=½+½`; `π²/6`; `⟨e_j,e_(j+1)⟩=0`, S not compact; `S*S−SS*=P_(e₀)`, Tr=1 | as stated | none |
| N3.9 cyclicity on dual classes (434–437) | 1<p<∞, finite-rank `S_n→S` in `S_p` | `Tr(S_nT)=Tr(TS_n)` (S_n trace class, T bounded); `|Tr((S−S_n)T)|≤‖S−S_n‖_p‖T‖_q→0` | route sufficient; p=1 or ∞ is the bounded case | none |
| N3 Hardy calibration (493–496) | `λ₁=−(1+i)Γ(3/2)`, `τ₁=2` | `(1+i)⁻¹·½·Γ(3/2)⁻¹·λ₁·2=−1+0i` (script); `ind(PuP)=0−1=−1` | consistent | none |
| N3 product reductions (522–543) | `D=−i(σ₁δ₁−σ₂δ₂)`, `D′=−D₁⊗σ₂+D₂⊗σ₁` | `[D,a][D,b]=−(δ₁aδ₁b+δ₂aδ₂b)+iσ₃(δ₁aδ₂b−δ₂aδ₁b)` using `σ₁σ₂=iσ₃`; `Tr₂(σ₃·)=2i(…)`; `λ₂=−1`, spin factor `1/(4π)`: `−2i/(4π)=1/(2πi)` ⇒ class φ, pairs +1; for D′ the σ₃ term flips sign ⇒ −φ, −1; `U=(σ₁−σ₂)/√2`: `UDU=D′`, `Uσ₃U=−σ₃`; cup product `((1+i)√π)²·(1/(2πi))=1` | both reductions as stated; consistent with K5's −β/β and K6's two-odd sign | none |
| N4.1 `L^(p,∞)` quasi-norm constant (572–573) | OI-A17 at 2j, 2j+1 | `(2j+1)^(1/p)μ_(2j)(S+T)≤2^(1/p)(j+1)^(1/p)(μ_j(S)+μ_j(T))` since `(2j+1)/(j+1)≤2`; index 2j+1 by monotonicity with `(2j+2)^(1/p)=2^(1/p)(j+1)^(1/p)` | `2^(1/p)` correct | none |
| N4.2 comparison constants (575–577) | p=2, `μ_j=(j+1)^(−1/p)` | `Σ_(j<N)(j+1)^(−1/p)≤∫₀^N t^(−1/p)dt=(p/(p−1))N^(1−1/p)`; `N^(1/p−1)Σ`=1.588, 1.859, 1.985 for N=10, 100, 10⁴ against 2 (script); converse `Nμ_(N−1)≤Σ_(j<N)μ_j≤CN^(1−1/p)` gives constant 1 | as stated | none |
| N4.3 `|T|^n` (578–579) | `μ_j(T)≤C(j+1)^(−1/n)` | `μ_j(|T|^n)=μ_j(T)^n≤Cⁿ/(j+1)`, `σ_N≤Cⁿ(1+log N)` | true | none |
| N4.4 Checks 1 and 3 (606–609, 617–618) | `diag(1/(j+1))`; `diag(1/((j+2)log(j+2)))` | `H_N/log(1+N)→1`; `Tr_ω(T+R)=1`; `σ_(10⁶)/log 10⁶=0.248`, `log log 10⁶=2.63` (script), `Σ=∞` | as stated | none |
| N4.5 `L^(1,∞)∖S_(1,∞)` Check (610–616) | `N_k=2^(2^k)`, the displayed μ to `N_4=65536` | non-increasing (script, 65536 terms); `max(j+1)μ_j=6=2k` at k=3; `sup σ_N/log(1+N)=2.485`; bound `(k+2)²/(2^k log 2)` | separating example correct | none |
| N4.6 ω-dependence Check (619–631) | recurrence `r_(k+1)=(r_k+c_k)/2`, `M_(k+1)=M_k/2+((r_k−c_k)log2+c_k)/2` from `∫_L^(2L)(rL+c(t−L))/t dt=(r−c)L log2+cL` | fixed points `r_even=0.6667`, `r_odd=0.8333`; `M_even=0.74368=2/3+log2/9`, `M_odd=0.75632=5/6−log2/9` (script, 60 iterations); the constant stretch `[N,2N)` at `1/(2N)` keeps monotonicity and changes `σ` by O(1) | as stated; T∈`L^(1,∞)`, not measurable | none |
| N4 Tauberian (636–637) | `diag(1/(j+1))` | `(s−1)ζ(s)→1`, logarithmic means →1 | Connes IV.2 Prop. 4 | none |
| N5 bounded transform Check (684–687) | `D=diag(0,1,−1)` | `F_D=(0,1/√2,−1/√2)`, `1−F_D²=(1,½,½)=(1+D²)⁻¹`; `1−(signD)²=(1,0,0)` | as stated | none |
| N6.1 multiplier Check (781–786) | `(0,1),(1,0)` | `U₂U₁=λ^(1·1)U₁U₂`; reversed `λ^(0·0)=1` ⇒ `U₂U₁=U₁U₂` | as stated | none |
| N6.2 trace Check (787–791) | `(m′,n′)=(−m,−n)`; θ=½, m=n=1; `a=U₁`, `b=U₂U₁⁻¹` | `λ^(nm′)=λ^(−nm)=λ^(n′m)`; both −1; `U₂U₁⁻¹=λ⁻¹U₁⁻¹U₂` ⇒ `ab=λ⁻¹U₂`, `ba=U₂` | as stated | none |
| N6.3 `τδ_j=0` Check (792–795) | monomials | `(0,0)`-coefficient of `2πin_jU₁^mU₂^n` is 0 unless `(m,n)=0`, where `n_j=0`; `a↦a_(1,0)` on `2πiU₁` gives 2πi | as stated | none |
| N6.4 seminorms (746–752, 796–798) | θ=0, `a=1+U₁` | `Q₀=1`, `P₀=sup|1+z|=2`; `|a_(r,s)|≤‖a‖` applied to `∂^wa` gives `Q_k≤(2π)^(−k)P_k`; reverse `Σ(1+|r|+|s|)^(−3)<∞` | as stated | none |
| N7 lattice residue (838) | `ζ_D(s)=2(2π)^(−2s)·4ζ(s)β(s)` | residue `2·4·(π/4)/(4π²)=0.15915=1/(2π)` (script) | as stated | none |
| N7 Heisenberg index (859–865) | `D⁺=−d/ds−2πs/θ` | kernel `exp(−πs²/θ)∈𝒮` (θ>0), adjoint kernel `exp(πs²/θ)∉L²`: index +1; `(2πi)⁻¹(2πi/θ)·θ=1` | as stated | none |
| N7 opposite-algebra Check (892–898) | `x=e₁₂, y=e₁₁` | `x*y=e₂₁`; Mathlib `yx*=e₁₁e₂₁=0`; `⟪ξ,op(a)•η⟫=op(⟨ξ,η⟩a)=op(a)·op(⟨ξ,η⟩)` | matches `inner_op_smul_right` | none |
| N1.Tensor Checks (148–165) | `e₀⊗e₀=(e₀+e₁)⊗e₀−e₁⊗e₀`; `Σ_(i<n)e_i⊗e_i`; `x⊗y+(ix)⊗(iy)` | products 3 vs infimum 1; trace norm n vs √n; `−((i·ix)⊗y−(ix)⊗(iy))` with `i·ix=−x` | as stated | none |

**README–Lean agreement.** Backticked own names in the README: `CyclicTwoCocycle` (208), `torusTwoCochain` (767), `exists_cyclicTwoCocycle_torusTwoCochain` (769): all declared; no other own name is backticked (gate `readme-ids-missing=0`).

**Wording.** No process words, pull-request numbers or local paths; "retains" at 348 and 887 are mathematical statements. The N3 `*Needs:*` line (556) names Fack–Kosaki as a source, not a supplier.

## Not verifiable

- none of the cited texts. Both sources (Connes' book from the author's page, Fack–Kosaki from the publisher's open archive) were read at every sampled locator. AutomorphicSpectralTheory, named only under `## Downstream consumers`, was not found on main or among the checkouts the brief lists. Ownership against open pull requests whose files the brief does not list was not checked.

## Source issues

- none
