# Review of CompactQuantumMetricSpaces (pull request #1155 at f68f205)

**Verdict:** needs changes

Files reviewed: `TauCetiRoadmap/CompactQuantumMetricSpaces/README.md` (756 lines) and `TauCetiRoadmap/CompactQuantumMetricSpaces/Suggested.lean` (304 lines, 40 declarations). The worker's gate at this head passes every check (build 0, depcheck 0, stray-files 0, outside-folder 0); the pull request changes nothing outside the roadmap folder. The dependency check output is quoted under Verified sound.

## R01 (P1) — LieGroups Layer 7 does not supply the faithful finite-dimensional unitary representation

Location: README line 410–413, "consume the finite faithful unitary representation clause of LieGroups Layer 7, which uses independent Peter–Weyl separation and finite derivative kernels before complexification".

Claim: Q4.4 (and through it Q5.6 and Q6.5) takes the existence of a faithful finite-dimensional unitary representation π₀ of a compact Lie group from LieGroups Layer 7.

Witness: RepresentationTheory/LieGroups exists on main, so only its main-branch text can be cited. Main's Layer 7 (its README lines 407–427, "complexification and real forms") contains the complexification, real forms and Weyl's unitary trick, and nothing about faithful finite-dimensional representations or derivative kernels. The clause quoted in the README exists only in the open revision of that roadmap (its line 1104, "Finite faithful representations and compact-case polar geometry"), and a pull request that revises an existing roadmap is never a dependency. Rieffel's own treatment takes the representation as a hypothesis (rieffel00 line 1441–1442: "we must assume that G has a faithful finite-dimensional unitary representation").

Repair, two parts. (a) State Q4.4 and Q6.5 under the hypothesis that G admits a faithful finite-dimensional unitary representation π₀ containing the trivial representation, as rieffel00 lines 1441–1446 do; Q6 instantiates it for Tᵈ with the obvious character sum, so the quantum-torus continuity theorem needs no Lie-group input at all. (b) Own, as a Q4.4 target, the theorem that every compact Lie group admits such a π₀, with the route: CompactGroups Layer 5 on main (its README line 290, point separation by finite-dimensional unitary representations) separates each nonidentity element; LieGroups Layer 2 on main (the closed-subgroup theorem) makes the kernel of finitely many representations a closed Lie subgroup; finitely many differentials with trivial common kernel on the Lie algebra make it discrete, hence finite; finitely many more representations kill it. Cite those two main sections in `*Needs:*`.

## R02 (P2) — CompactGroups "Layer 5.1" does not exist on main

Location: README line 73–75, "RepresentationTheory/CompactGroups Layers 0–5.1 supplies Haar probability, averaging, coefficient orthogonality, Peter–Weyl and G-finite-vector approximation".

Claim: the roadmap consumes a sublayer 5.1 (G-finite vectors in strongly continuous Banach representations).

Witness: RepresentationTheory/CompactGroups on main has Layers 0–6 and the SU(2) engine (its README lines 205–390); no "5.1" occurs in it. "Layer 5.1. G-finite vectors in strongly continuous Banach representations" exists only at the open revision of that roadmap (its line 393), which cannot be cited. What Q4.2–Q4.3 actually use (isotypic Haar projections, matrix-coefficient projections, the norm-dense finite-orbit star algebra) is supplied by VonNeumannAlgebras V8.CompactErgodicActions at its open head (its README line 2037–2039), a new-folder pull request listed earlier in the merge order, which the README already cites.

Repair: cite "CompactGroups Layers 0–5" (Haar, averaging, Schur orthogonality, Peter–Weyl) and take the finite-orbit density and isotypic projections from V8.CompactErgodicActions; delete "G-finite-vector approximation" from the CompactGroups line and the sentence "Finite multiplicity is not inferred for an arbitrary Banach representation", which refers to that sublayer.

## R03 (P2) — Two headline theorems statable at the pins are absent from Suggested.lean

Location: `Suggested.lean` lines 211–227 (quantumGHEDist and the one theorem about it); README Q5.3 line 517 (triangle inequality) and Q5.4 line 533–535 (zero-distance rigidity).

Claim: the module docstring names only Q6.5 and Φ_θ as not statable; the file states no metric law and no rigidity for `quantumGHEDist`.

Witness: both statements elaborate against the file's own carriers (checked with `lake env lean` on a scratch copy; the only diagnostics were the two `sorry` warnings). Their sources are rieffel00 line 638 (Theorem 4.3, the triangle inequality) and rieffel00 line 1330 (Theorem 7.8, distance zero gives an isometry, for closed presentations as discussed before it at lines 1325–1327).

```lean
theorem quantumGHEDist_triangle {H : Type w} [NormedAddCommGroup H] [NormedSpace ℝ H]
    [PartialOrder H] [IsOrderedAddMonoid H] [PosSMulMono ℝ H] {h : H}
    (LE : ExtendedLipschitzSeminorm e) (LF : ExtendedLipschitzSeminorm f)
    (LH : ExtendedLipschitzSeminorm h)
    (he : IsOrderUnitNorm e) (hf : IsOrderUnitNorm f) (hh : IsOrderUnitNorm h)
    (hLE : IsLipNorm LE) (hLF : IsLipNorm LF) (hLH : IsLipNorm LH) :
    quantumGHEDist LE LH ≤ quantumGHEDist LE LF + quantumGHEDist LF LH := by
  sorry

theorem quantumGHEDist_eq_zero_iff [CompleteSpace E] [CompleteSpace F]
    (LE : ExtendedLipschitzSeminorm e) (LF : ExtendedLipschitzSeminorm f)
    (he : IsOrderUnitNorm e) (hf : IsOrderUnitNorm f)
    (hLE : IsClosedLipNorm LE) (hLF : IsClosedLipNorm LF) :
    quantumGHEDist LE LF = 0 ↔
      ∃ T : E ≃ₗᵢ[ℝ] F, T e = f ∧ (∀ a b : E, a ≤ b ↔ T a ≤ T b) ∧
        ∀ a : E, LF (T a) = LE a := by
  sorry
```

Repair: add both (the second needs the complete closed presentation, exactly as README Q5.4 says). Two further headlines are statable with small additions and should be added or named in the docstring with what they lack: Q3.3's identification of the state metric of `(C(X,ℝ), L_d)` with W₁ is statable against the pinned Tau Ceti `TauCeti.wassersteinEDist_one_eq_iSup_of_compactSpace` (`TauCeti/MeasureTheory/OptimalTransport/Wasserstein/KantorovichRubinstein.lean` line 161) once the integration functional `f ↦ ∫ f dμ` is packaged as a point of `stateSpace (1 : C(X,ℝ))`, a definition with a real body; Q4.3's closed-Lip-norm theorem for compact ergodic actions (rieffel98 line 368, Theorem 2.3) is statable existentially on `selfAdjoint A` except that `PosSMulMono ℝ (selfAdjoint A)` does not synthesise at the pin (the other four instances do), so the docstring should say that is what it lacks.

## R04 (P3) — README is not in TauCetiRoadmap form

Location: whole README (headings at lines 11, 113, 171, 223, 293, 363, 450, 583, 691, 717).

Claim: the README is a numbered Q0–Q6 outline.

Witness: it has no `**Summary.**`, `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `## How to read the build`, `## Layer k:` headings, `### k.n` subsections, `*Needs:*` lines, `**Checks.**` lists, `### Examples`, `### Dependencies` or `## Downstream consumers`; no target carries a locator at the claim (the only locators are the section-level list at lines 719–737); and none of the 40 declarations of `Suggested.lean` is named in the README (`stateEDist`, `IsLipNorm`, `quantumGHEDist`, … each occur zero times), so README and Lean cannot be matched name by name.

Repair: rewrite in the house shape (compare VonNeumannAlgebras at its open head, lines 17–275, or any roadmap on main), keeping the mathematics; put each theorem's locator at its claim (the line map under Verified sound gives them for the three Rieffel papers); give each definition its API bullets and at least three Checks (the README already contains the right discriminating examples, for instance the Q1.6 non-lsc Lip-norm, the Q2.3 three-point simplex, the Q5.1 coupled-domain bridge and the Q5.2 `L_F = L_E/2` test); name every Lean declaration where it belongs. SpectralManifolds at its open head (its README line 234) cites this roadmap by the anchor `#q3-classical-metrics-probabilities-and-commutators`, so keep "Q3" and that heading text in the layer title or expect that consumer to repoint.

## R05 (P3) — Padding and unused definitions in Suggested.lean

Location: `Suggested.lean` lines 50, 236–248, 256–280, 289–302.

Claim: these declarations are headline theorems or definitions a headline needs.

Witness: `StarLeibnizSeminorm` (line 267), `IsStrongLeibniz` (278), `cstarStateSpace` (256) and `positiveToState` (50) are mentioned by no theorem in the file; `cstarState_norm` (259) is three lines from the pinned `PositiveContinuousLinearMap.ofReal_opNorm_eq_map_one` (`Mathlib/Analysis/CStarAlgebra/PositiveLinearFunctional.lean` line 74); `dist_eq_iSup_bounded_lipschitz` (245) is a statement about a bare metric space with none of the roadmap's objects; `classicalLip_le_iff` (239), `actionLip_mul_le` (293) and `actionLip_inv_le` (299) are API comparisons ("easily verified", rieffel98 line 324). None closes in one `simp` (probed), so they are not false, only not headlines.

Repair: delete them from `Suggested.lean`; the README keeps each as a target or Check (Q3.1, Q4.1). If a C*-level headline is wanted, state Q4.3's theorem (R03) instead.

## R06 (P3) — `closedLipNorm_recovery` carries an unused Lip-norm hypothesis

Location: `Suggested.lean` line 144–148.

Claim: recovery `L a = sup |φ(a) − ψ(a)| / ρ_L(φ,ψ)` needs `IsClosedLipNorm L`, that is total boundedness plus closed sublevel sets.

Witness: README Q2.2 (line 240–242) and rieffel99 line 310 (Theorem 4.1) assume only lower semicontinuity and the scalar kernel; the proof (rieffel99 line 316–320, Theorem 4.2) is the bipolar theorem for the closed balanced unit ball and uses no total boundedness. With `IsLipNorm` dropped the statement still holds in `ℝ≥0∞` (denominators are nonzero for φ ≠ ψ by `stateEDist_eq_zero_iff`; infinite denominators give value 0, which is still below `L a`).

Repair: replace `(hL : IsClosedLipNorm L)` by `(hL : ∀ t, IsClosed {a : E | L a ≤ t})`, matching the README's generality.

## R07 (P3) — Small statement slips and link slips

Location: README lines 76, 408–410, 637–638.

- Line 637–638: for self-adjoint `x = δ₁a`, `y = δ₂a` the two block norms coincide, since `(x + iy)* = x − iy`, so `max(‖x+iy‖, ‖x−iy‖)` is `‖x+iy‖`; write the latter.
- Line 408–410: conjugation invariance of ℓ is needed for `α_g` to preserve `L`, not for central kernels to decrease `L`: rieffel00 line 1552–1557 (Lemma 8.4) proves `L(P_n a) ≤ L(a)` from centrality of the kernel alone, via `‖α_x(P_n a) − P_n a‖ = ‖P_n(α_x a − a)‖`. Split the sentence so the second clause has no invariance hypothesis.
- Line 76: the anchor `#v8-group-algebras-actions-and-discrete-crossed-products` does not match the heading "Layer 8: Group algebras, actions, and discrete crossed products" at the VonNeumannAlgebras head (its line 1917); cite "VonNeumannAlgebras V8.CompactErgodicActions" by name, which does occur there (line 2037).

## R08 (P3) — Ownership of the twisted group C*-algebra of ℤᵈ should be stated against its other builder

Location: README lines 106–111 and 585–598.

Claim: Q6 owns the scalar-twisted C*-algebra of ℤᵈ (regular model, universal property, gauge action, faithful coefficient trace).

Witness: OperatorAlgebraDynamics on main has no twisted group algebra (no "cocycle" or "twisted" sublayer), so the claim is consistent with what can be cited today. But the open revision of that roadmap adds "D1.CentralTwists" and "D2.CentralTwists" (its lines 155 and 579, continuous central multiplier cocycles and reduced central twisted products), and OperatorKTheory at its open head (its line 984–986) already consumes "C*(L, c), its faithful coefficient trace and gauge action of L̂" for `L = ℤᵈ` from there, writing `W_x W_y = c(x,y) W_{x+y}`. That is Q6's object with the cocycle `c = σ_Θ`.

Repair: in the Scope section say that Q6 builds the concrete regular model because no central-twist theory is on main, keep the universal property and the finite-Fourier estimates (which the other builder does not state), and add a one-line adapter target identifying `A_Θ` with `C*(ℤᵈ, σ_Θ)` for when a central-twist sublayer reaches main. Not blocking: a revision pull request is not citable, so no two-owner edge exists at present.

## Verified sound

**Gate and direction.** The worker's gate at f68f205: every check 0, "Every check passed". Dependency check, run by me on this head:

```
depcheck: 204 roadmaps, 1431 edges, 0 problem(s)
```

CompactQuantumMetricSpaces is at line 194 of the merge order; VonNeumannAlgebras at line 4 (supplier, earlier); SpectralManifolds at line 214 (consumer, later). `git diff --stat origin/main...HEAD` outside the folder is empty.

**Supplier citations resolved.** On main: BanachSpaceTheory B1 (annihilators, line 41–73) and B5 (Jordan decomposition via `RealRMK.rieszMeasure`, line 274); OptimalTransport Layers 0–3 (lines 346–613) and the pinned `TauCeti/MeasureTheory/OptimalTransport/Wasserstein/KantorovichRubinstein.lean` (exists; `wassersteinEDist_one_eq_iSup_of_compactSpace` at line 161; the worker's "found nowhere" lead was a module path, not a declaration, and is a false positive); NoncommutativeGeometry N5 (line 410), N6 (line 475, `U₂U₁ = exp(2πiθ)U₁U₂` at line 484, faithful trace at line 493), N7 (line 530, `D = −i(σ₁δ₁ − σ₂δ₂)` at line 534, ordered Fourier basis at line 532), which match the README's Q6.1–Q6.2 conventions; RiemannianGeometry R7.8 (item 8 of "R7.1–R7.8", lines 1373–1402: bounded Lipschitz approximation, intrinsic-distance duality, Clifford commutator theorem citing SpinGeometry G6); OperatorAlgebraDynamics D2 (line 143; almost invariant vectors, weak containment, tensoring/absorption at lines 184–189); AmenableGroups Layers 5–6 (lines 289, 391); SpinGeometry G6 (line 569); RepresentationTheory/CompactGroups Layers 0–5 (lines 205–318). At open heads of new-folder pull requests: VonNeumannAlgebras Layer 0 (line 275) and V8.CompactErgodicActions (lines 2037–2043, with the HKLS citation); CStarAlgebras C1 (line 85, Gelfand at 140) and C2 (line 263, state extension at 269); SmoothBanachRepresentations SB2 (line 64) and SB8 (line 157). The two citations that do not resolve on main are R01 and R02.

**Ownership.** `roadmaps grep` over all open heads and main for "Lip-norm", "quantum metric", "order-unit space", "quantum Gromov" finds them only in this roadmap, in SpectralManifolds as a consumer (its line 234) and in QuantumFoundations as a consumer of RiemannianGeometry R7.8; the pinned Tau Ceti has no order-unit or Lip-norm object (`grep -ril OrderUnit|LipNorm` empty). The torus overlap is R08.

**Sources.** All three Rieffel papers were read from arXiv (ids rieffel98, rieffel99, rieffel00 in the worker's cache); their preprint numbering is the one the README uses. Locators verified, with the source line:

| README claim | Source | Line | Agrees |
|---|---|---|---|
| Q1.4 criterion (b): totally bounded quotient ball ⟺ weak-* | rieffel98 Thm 1.8 | 203–215 | yes; converse needs Condition 1.5 (automatic for order-unit spaces) |
| Q1.4 criterion (c): bounded radius + totally bounded B₁ | rieffel98 Thm 1.9 | 263–269 | yes |
| Q4.1 dense finite domain by L¹ convolution and Stone–Weierstrass | rieffel98 Prop 2.2 | 339–358 | yes, same route |
| Q4.3 ergodic compact actions give Lip-norms | rieffel98 Thm 2.3 | 368–370 | yes; ℓ any continuous length function |
| Q4.3 `diam ≤ 2∫ℓ` | rieffel98 Lemma 2.4 | 386–405 | yes |
| Q4.5 derivative seminorm on compact connected Lie G | rieffel98 Thm 3.1 | 464–467 | yes |
| Q0.4 dual-ball identity `{λ(e)=0, ‖λ‖≤2} = {φ−ψ}` | rieffel99 Lemma 2.1 | 184 | yes |
| Q1.3 `diam ≤ 2r ⟺ ‖q(a)‖ ≤ r L(a)` | rieffel99 Prop 2.2 | 193–205 | yes |
| Q1.6 `L(a)=‖q(a)‖` has finite radius, not a Lip-norm | rieffel99 | 210–212 | yes |
| Q1.6 `C¹([−1,1])`, `L(f)=‖f'‖+|f'(0)|` not lsc | rieffel99 Ex 3.5 | 249–258 | yes, same functions |
| Q2.2 recovery for lsc L | rieffel99 Thm 4.1 | 310–313 | yes (R06: needs only lsc) |
| Q2.1 closure = largest lsc seminorm below L, same metric | rieffel99 Thm 4.2 | 316–320 | yes |
| Q2.1 closure may lose the scalar kernel | rieffel99 after Prop 4.4 | 366–369 | yes |
| Q2.3 three conditions (convex, midpoint balanced, midpoint concave) | rieffel99 9.1, 9.2, 9.5, Thm 9.7 | 788–845 | yes |
| Q2.3 metrics from closed Lip-norms | rieffel99 Thm 9.11 | 920–923 | yes (misprint, see Source issues) |
| Q5.1 Lip-norm finite everywhere in the source | rieffel00 Def 2.1 | 258–261 | yes: the domain coupling is specific to the README's extended-valued presentation |
| Q2.5 quotient Lip-norm, `S(F)=K` | rieffel00 Prop 3.1, 3.5 | 376–384, 512–524 | yes |
| Q5.1 `dist_q` as infimum over admissible Lip-norms | rieffel00 Def 4.2 | 627–630 | yes |
| Q5.3 triangle inequality by gluing | rieffel00 Thm 4.3, Lemma 4.4, 4.6 | 638–703 | yes |
| Q5.3 `dist_q ≤ dist_GH`, not equality | rieffel00 | 739, 753, 795 | yes |
| Q5.2 bridge definition and theorem | rieffel00 Def 5.1, Thm 5.2 | 825–839 | yes |
| Q5.4 rigidity for closed presentations | rieffel00 Thm 7.8 | 1330–1333 | yes |
| Q4.4 χ = |χ_{π₀}|², k_n, B_n, δ_n, P_n | rieffel00 Prop 8.1–Lemma 8.4 | 1437–1557 | yes |
| Q5.2 nonlinear P bridge lemma | rieffel00 Prop 8.5 | 1562–1569 | yes |
| Q6 `σ_Θ(p,q) = exp(πi pᵀΘq)`, regular model | rieffel00 §9 | 1629–1640 | yes (`π_θ(δ_p)δ_q = σ(p,q)δ_{p+q}` recomputed from (9.1)) |
| Q6.5 continuity in Θ, δ_n uniform in Θ | rieffel00 Thm 9.2 | 1666–1687 | yes |
| Q6.3 strong continuity is not norm continuity | rieffel00 | 1710–1713 | yes |
| Q6.4 finite-dimensional continuity lemma | rieffel00 Lemma 10.1, Thm 11.2 | 1830, 2138–2144 | yes |
| Q5.5 completeness | rieffel00 Thm 12.11 | 2381–2393 | yes |
| Q5.6 finite-dimensional quotient approximation | rieffel00 Thm 13.1 | 2410–2419 | yes |
| Q5.6 Fin, Scv and the compactness theorem | rieffel00 Def 13.4, Thm 13.5 | 2473–2509 | yes |

**Adversarial table.** One row per statement, with the values computed.

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| `IsOrderUnitNorm` encodes Archimedean order unit | a with `a ≤ εe` ∀ε>0, `M=‖a‖` | `‖a+Me‖ ≤ M+ε` ∀ε ⟹ `‖a+Me‖ ≤ M` ⟹ by the iff `a+Me ≤ Me` ⟹ `a ≤ 0` | holds; negative control: ℝ² with cone `{x>|y|} ∪ {(t,−t):t≥0}`, `e=(1,0)`: `‖(0,1)‖=1` but `(1,1) ∉ cone`, iff fails, so the non-Archimedean model is excluded |
| `map_smul` at r = 0 | `L a = ∞` | LHS `L 0 = 0`; RHS `ofReal 0 · ∞ = 0` | consistent |
| `stateEDist`, radius 0 | `E=ℝ, e=1` | kernel forces `L ≡ 0`, `stateSpace = {id}`, `stateEDist = 0`, quotient `E/ℝe = 0` totally bounded | singleton case correct |
| Q0.4 dual ball | `E=ℝ²`, `e=(1,1)`, `λ=(1,−1)` | `λ(e)=0`, `‖λ‖=1≤2`; `λ = (1,0)−(0,1)` with both states; Jordan masses `t=1/2·‖λ‖=1/2`, `φ=tφ'+(1−t)ω` | identity holds; normalising alone gives only `t(φ'−ψ')` as the README says |
| Q1.3 radius identity | `E=ℝ²`, `L(a)=|a₁−a₂|` | `ρ_L(φ_s,φ_t)=|s−t|`, diam 1; `‖q(a)‖=|a₁−a₂|/2 = L(a)/2`, r = 1/2, 2r = 1 | equal |
| Q1.4 (b)⟺(c) | section `s_μ(q a)=a−μ(a)e` | `‖a−μ(a)e‖ = sup_φ|(φ−μ)(a−te)| ≤ 2‖q(a)‖` | norm ≤ 2 as stated |
| Q1.6 non-lsc Lip-norm | `G_n = 1+∫₀ᵗ min(n|s|,1)ds` | `L(G_n)=1+0`, `‖G_n−(t+1)‖_∞ = 1/(2n)`, `L(t+1)=1+1=2` | sublevel `{L≤1}` not closed |
| Q2.2 recovery, junk values | `φ=ψ`; `a=re`; `a∉dom L` | `0/0=0`; numerator 0 so sup 0 = L(re); if sup = C < ∞ then `a ∈ closure(C·L₁) = C·L₁` by closedness, contradiction | formula exact in `ℝ≥0∞` |
| Q2.3 simplex | 3-point simplex, Euclidean norm on `Σx=0` | `K−K = {Σx=0, Σ|x|≤2}`; `‖e₁−e₂‖=√2`; `‖(½,½,−1)‖ = √(3/2) ≈ 1.225`; `W₁(δ₃,(δ₁+δ₂)/2) = √2 ≈ 1.414` | extreme-point distances agree, full metrics differ |
| Q3.1 distance formula | `f(z)=min(d(z,x),d(x,y))` | `L_d(f)≤1`, `f(x)=0`, `f(y)=d(x,y)`; empty X vacuous; singleton gives `0=0` | holds |
| Q4 Leibniz, inverse (`actionLip_mul_le`, `actionLip_inv_le`) | identities; `a=0`; zero C*-algebra | `α_g(ab)−ab = (α_g a−a)α_g b + a(α_g b−b)`; `α_g(a⁻¹)−a⁻¹ = α_g(a⁻¹)(a−α_g a)a⁻¹`; `a=0`: `0 ≤ ∞·0+0 = 0`; zero algebra: `0 ≤ 0` | true, including ENNReal junk values |
| Q4.3 bounds | `η(a)=∫α_g(a)dg` | `‖a−η(a)1‖ ≤ ∫‖a−α_g a‖ ≤ L(a)∫ℓ`; radius ≤ ∫ℓ so diam ≤ 2∫ℓ | agrees with rieffel98 line 386–405 |
| Q4.4 χ has unique maximum at 1 | `G=ℤ/2`, `π₀ = 1 ⊕ sign` | `χ₀(−1)=0`, `χ(−1)=0 < 4=χ(1)`; general: `χ(x)=d₀²` iff `π₀(x)` scalar, trivial summand forces scalar 1, faithfulness forces `x=1` | holds |
| Q4.4 `L(P_n a) ≤ L(a)` | central `k_n` | `α_h α_{k}=α_{k}α_h` for central k; `‖α_h P_n a − P_n a‖ ≤ ‖α_h a − a‖` | holds without conjugation invariance of ℓ (R07) |
| Q4.6 quotient metric | `x=gH, y=kH`, `u=gh⁻¹k⁻¹` | `u⁻¹x = khH = y`, `ℓ(u)=ℓ(g⁻¹kh)` by conjugation invariance; `d(g⁻¹x,x) ≤ ℓ(k⁻¹gk)=ℓ(g)` | `L_α = L_d` |
| Q5.1 regularised bridge `M_ε` | `v=(a,b)`, `w` with `M(w)+ε⁻¹‖v−w‖ ≤ 1+η` | `|(φ−ψ)(v)| ≤ (1+η)ρ_M + 2ε(1+η)` ⟹ `ρ_M ≤ ρ_{M_ε} ≤ ρ_M+2ε`; `N_ε ≥ ‖q(v)‖/max(R,ε)` ⟹ kernel `ℝ(e,f)`; `inf_b M_ε(a,b) ≤ max(L_E a, M(a,b)) ≤ L_E a+η` ⟹ exact quotients; `N_ε ≤ ε⁻¹‖v‖` ⟹ full product domain | `quantumGHEDist_eq_quotientQuantumGHEDist` sound |
| Q5.1 coupled-domain counterexample | Lorentz `ℝ⊕L²`, `T` = multiplier `e^{−n²}`, `U` = sign | `‖(t,x)‖=|t|+‖x‖`; adjoint kernel `Ty=−UTz ⟹ Ty ∈ ran T ∩ U ran T = 0` (analytic on a connected circle) so `x↦(Tx,TUx)` has dense range; left quotient `inf_s max(‖x‖,|t−s|)=‖x‖` at `s=t`; glued `dom K = {((t,Tx),(t',Tx))}`, closure a proper subspace | example correct; quotient-only bridges cannot be glued |
| Q5.2 bridge lemma | `b=Pa` and `a=b` | `max(L_E a, L_F(Pa), δ⁻¹‖a−Pa‖) ≤ L_E a`; `max(L_E b, L_F b, 0) = L_F b` by compatibility; restriction/extension give Hausdorff ≤ δ | `dist_q ≤ δ` |
| Q5.2 test `E=F=ℝ², P=id, L_F=L_E/2` | `b` with `L_E b>0` | `L_F(Pa)=L_E a/2 ≤ L_E a`, `‖a−Pa‖=0`; but `L_E b ≤ L_F b = L_E b/2` fails | P-estimates do not give compatibility, as claimed |
| Q5.3 diameter comparison | Hausdorff distance h | `ρ(φ,φ') ≤ ρ(ψ,ψ')+2h` | `|diam E − diam F| ≤ 2 dist_q` |
| Q6 twisted relations | `W_pW_qδ_r` vs `σ(p,q)W_{p+q}δ_r` | exponents `qᵀΘr+pᵀΘq+pᵀΘr` both sides; `W_pW_{−p} = e^{−πi pᵀΘp} = 1` since `pᵀΘp=0` | `W_pW_q=σ_Θ(p,q)W_{p+q}`, `W_p*=W_{−p}` |
| Q6.1 d = 2 convention | `Θ₁₂=−θ` | `W_(1,0)W_(0,1) = e^{πiΘ₁₂}W_(1,1)`, `W_(0,1)W_(1,0) = e^{−πiΘ₁₂}W_(1,1)`, ratio `e^{2πiΘ₁₂} = e^{−2πiθ}`; N6 has `U₂U₁ = e^{2πiθ}U₁U₂` | conventions agree |
| Q6.1 `Φ_θ` multiplicative | `W_(m,n)W_(m',n')` | both sides phase `exp(πiθ(mn+m'n'+2nm'))` | homomorphism |
| Q6.1 `V*π_τ(U_j)V` | `δ_(m,n)` | `U₁`: `e^{πiθ(mn−(m+1)n)} = e^{−πiθn}` = `σ((1,0),(m,n))`; `U₂`: `e^{πiθ(mn+2m−m(n+1))} = e^{πiθm}` = `σ((0,1),(m,n))` | both intertwinings hold |
| Q6.2 Clifford estimate | `[[0,x+iy],[x−iy,0]]` | norm `= max(‖x+iy‖,‖x−iy‖) = ‖x+iy‖` (adjoint); `‖x‖ = ‖Re(x+iy)‖ ≤ ‖x+iy‖ ≤ ‖x‖+‖y‖` | bounds correct, max redundant (R07) |
| Q6.3 localisation | bump h, support S | `‖[λ_Θ(f),M_h]‖ ≤ ‖f‖₁ sup_{p∈S,q}|h(q)−h(q+p)|`, Θ-independent; `ρ_Θ(t)` conjugates `λ_Θ(f)P_K` to `λ_Θ(f)P_{K+t}` | upper semicontinuity argument sound |
| Q6.5 integer shift | `N` integer skew | `σ_N(p,q)·b_N(p+q)/(b_N(p)b_N(q)) = exp(2πi Σ_{j<k}N_jk p_j q_k) = 1` | `σ_{Θ+N} = (δb_N)σ_Θ` with `δb(p,q)=b(p)b(q)/b(p+q)` |
| `stateEDist_eq_zero_iff` without `he` | φ,ψ agreeing on `{L≤1}` | homogeneity extends agreement to `dom L`, density and continuity to E | true for any pair in `WeakDual`, as stated |
| `isCompact_stateSpace`, `stateSpace_nonempty` | `he` | states lie in the dual unit ball (`‖φ‖=φ(e)=1`), closed conditions; `WeakDual.isCompact_closedBall` (`Mathlib/Analysis/Normed/Module/WeakDual.lean` line 269); Hahn–Banach extension of `re↦r` | sound |
| `quantumGHEDist` on empty bridge type | no admissible bridge | `⨅` over empty type = ∞ | consistent: existence is a Q5.1 target under `he, hf, hLE, hLF` |

**Lean form.** Imports: `import Mathlib` only; no `set_option`, no `lemma`, no sorried data; `stateEMetricSpace` (line 154) is a `def` with honest data whose proof fields invoke sorried theorems, used only locally through `letI` for `hausdorffEDist`, so the inherited weak-star topology is not overwritten. The 19 "dropped binder" leads in the worker's signature list are all order instances absent from definitions and structures whose types do not mention the order (`IsOrderUnitNorm`, `stateSpace`, `ExtendedLipschitzSeminorm`, `stateEDist`, …); every theorem keeps `[PartialOrder E] [IsOrderedAddMonoid E] [PosSMulMono ℝ E]` and `he : IsOrderUnitNorm e` where the mathematics needs them, so no hypothesis was lost. `CStarAlgebra` at the pin (`Mathlib/Analysis/CStarAlgebra/Classes.lean` line 38) does not include `NormOneClass`, so the zero algebra is admitted; `actionLip_inv_le` and `cstarState_norm` were checked on it (all norms zero, the state type empty). Padding probe: `stateEDist_triangle` and `classicalLip_le_iff` do not close by `simp` with the natural lemma list; the two proved lemmas `stateEDist_self`, `stateEDist_comm` are one `simp` each but are the structural fields of `stateEMetricSpace`, so they stay.

**Counts.** 33 source locators verified (table above); 12 supplier citations resolved on main or at open heads, 2 found missing (R01, R02); 31 adversarial rows; 5 library declarations opened at the pins; 40 Lean declarations compared with the README.

## Not verifiable

- hkls81 (Høegh-Krohn–Landstad–Størmer, Annals 114 (1981)): the Annals page (hkls81 line 23–27) gives only the abstract, which states the unique invariant state of a compact ergodic action is a trace; the full text is on JSTOR behind a paywall. The README consumes it only through VonNeumannAlgebras V8.CompactErgodicActions, whose own review owns the check; the finite-multiplicity statement is also what rieffel98 line 406–409 cites from it.
- The two further headlines named in R03 (Q3.3 W₁ identification, Q4.3 ergodic Lip-norm) were checked for statability by reading the pinned declarations, not by elaborating a full statement.

## Source issues

- **Misprint** in rieffel99 at Theorem 9.11, printed page 26: the source says the metric must be convex, midpoint balanced and "midpoint convex"; it should be "midpoint concave", the condition of its Definition 9.5 used in Theorem 9.7; affects nothing.
