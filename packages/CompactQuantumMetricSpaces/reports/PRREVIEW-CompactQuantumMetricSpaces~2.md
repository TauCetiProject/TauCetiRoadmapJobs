# Review of CompactQuantumMetricSpaces (pull request #1155 at 7205d1c)

**Verdict:** needs changes

Files reviewed: `TauCetiRoadmap/CompactQuantumMetricSpaces/README.md` (1575 lines) and `TauCetiRoadmap/CompactQuantumMetricSpaces/Suggested.lean` (375 lines, 38 declarations). This is a full review of the repaired head: the folder changed by 2648 lines since f68f205. The worker's gate at this head passes every check (build 0, depcheck 0, stray-files 0, outside-folder 0); `git diff --stat origin/main...HEAD` outside the folder is empty. The dependency check, rerun by me, and the elaborated signatures are quoted under Verified sound.

## Status of the previous review's findings

- **R01 (P1, faithful representation taken from a LieGroups sublayer not on main): repaired.** §4.4 now owns `exists_faithful_unitary_representation` with the route "by CompactGroups Layer 5 the matrix coefficients … separate points … by LieGroups Layer 2 the common kernel of finitely many representations is a closed, hence embedded Lie, subgroup" (README lines 1014–1023), and `Suggested.lean` lines 265–273 state it. Both cited sections exist on main: CompactGroups README line 318 ("Layer 5: the Peter-Weyl theorem") with `representativeStarSubalgebra_separatesPoints` at its `Suggested.lean` line 256; LieGroups README line 275 ("Layer 2: the closed-subgroup (Cartan) theorem", finite-dimensional real case, Lie algebra `{X : lieExp (t • X) ∈ H ∀ t}`, Cartan's automatic smoothness at line 296). The route is sound (checked below in the adversarial table).
- **R02 (P2, CompactGroups "Layer 5.1"): repaired.** Line 228–232 cites "Layers 0–5" and takes the isotypic projections and the finite-orbit algebra from "VonNeumannAlgebras V8.CompactErgodicActions" (line 217–224), which exists at that roadmap's open head (its README line 2037, for arbitrary compact Hausdorff `G`, no length function). The sentence about arbitrary Banach representations is gone; line 61–62 now says finite multiplicity "is not asserted for an arbitrary Banach representation".
- **R03 (P2, absent headlines): repaired.** `quantumGHEDist_triangle` (line 353), `quantumGHEDist_eq_zero_iff` (line 364, with `[CompleteSpace E] [CompleteSpace F]` and closed Lip-norms), `stateEDist_integrationState` (line 229, against `TauCeti.wassersteinEDist 1 μ ν` with `integrationState` as a real-bodied definition at line 205) and `exists_closedLipNorm_actionLip` (line 254, existential on `selfAdjoint A`, which needs no `PosSMulMono` instance since `ExtendedLipschitzSeminorm` carries no order) are all stated.
- **R04 (P3, README shape): repaired.** Summary, Scope and ownership, Conventions, Exact supplier contracts, How to read the build, `## Layer k` with `### k.n`, `*Needs:*` lines, `**Checks.**` lists, Examples and Dependencies per layer, Downstream consumers, References. Every one of the 38 Lean names occurs in the README and every backticked roadmap name in the README is declared (gate readme-ids 0; checked by grep). The consumer-anchor consequence is R04 below.
- **R05 (P3, padding): repaired.** `positiveToState`, `cstarStateSpace`, `cstarState_norm`, `dist_eq_iSup_bounded_lipschitz`, `classicalLip_le_iff`, `StarLeibnizSeminorm`, `IsStrongLeibniz`, `actionLip_mul_le`, `actionLip_inv_le` are deleted; the README keeps them as targets (§3.1, §4.1).
- **R06 (P3, unused Lip-norm hypothesis in recovery): repaired.** Line 165 reads `(hL : ∀ t : ℝ≥0∞, IsClosed {a : E | L a ≤ t})`, matching Rieffel 1999 Theorem 4.1 (rieffel99 line 310–313: lower semicontinuous Lipschitz seminorm, `ρ_L` possibly `+∞`).
- **R07 (P3, three slips): repaired.** Line 1419–1420: "has norm `‖x + iy‖` (the two block norms coincide, since `(x + iy)* = x − iy`)"; line 1009–1012 splits the invariance statement from the central-kernel contraction and says "centrality of the kernel gives `α_g(Pa) − Pa = P(α_g(a) − a)`" (rieffel00 line 1552–1557); line 215–217 cites "VonNeumannAlgebras V8.CompactErgodicActions" by name with the roadmap link and no anchor.
- **R08 (P3, twisted ℤᵈ algebra ownership): repaired.** Lines 91–99 say no roadmap on main builds `C*(ℤᵈ, σ)`, that §6.0 builds the regular model, and state the identification theorem for any other model with a faithful coefficient trace.

## R01 (P2) — Completeness and compactness of quantum Gromov–Hausdorff space are statable at the pins but absent

Location: `Suggested.lean` lines 25–27, "Not statable at the pins: completeness (§5.5) and the quantum compactness theorem (§5.6), which need the metric space of isometry classes of complete closed presentations"; README §5.5 line 1266 ("Prove completeness (Rieffel 2000, Theorem 12.11)") and §5.6 line 1299.

Claim: the two Layer 5 headlines named in the Summary (line 16, "completeness and compactness theorems") cannot be stated without the isometry-class metric space.

Witness: Rieffel's own proof of Theorem 12.11 (rieffel00 line 2383, "Let {(A_j, L_j)} be a Cauchy sequence. It suffices to show that a subsequence converges") is the Cauchy-sequence statement, and that statement elaborates against the file's own carriers: a sequence `E : ℕ → Type u` of complete order-unit spaces with closed Lip-norms, `dist_q`-Cauchy, has a limit `F : Type u` with a closed Lip-norm. Theorem 13.5's sufficiency direction (rieffel00 line 2502–2509, uniform diameter bound and `G(ε) ≥ Fin_L(ε)`, with `Scv ≥ Fin` at line 2489) likewise elaborates in sequential form, with the diameter bound written on `stateEDist` and the `ε`-net as a `Finset` of states. Both probes were elaborated with `lake env lean` on a copy of `Suggested.lean` plus the statement; the only diagnostics were the `sorry` warnings (17 each). The limit lives in `Type u` because Rieffel's construction (Corollary 12.10) takes a subspace of the product of the `E_j`, its quotient and completion.

```lean
/-- Completeness (§5.5): a `dist_q`-Cauchy sequence of complete closed presentations has a
complete closed limit (Rieffel, *Gromov–Hausdorff distance for quantum metric spaces*,
Theorem 12.11). -/
theorem exists_limit_of_cauchySeq_quantumGHEDist
    {E : ℕ → Type u} [∀ n, NormedAddCommGroup (E n)] [∀ n, NormedSpace ℝ (E n)]
    [∀ n, PartialOrder (E n)] [∀ n, IsOrderedAddMonoid (E n)] [∀ n, PosSMulMono ℝ (E n)]
    [∀ n, CompleteSpace (E n)] (e : ∀ n, E n) (L : ∀ n, ExtendedLipschitzSeminorm (e n))
    (he : ∀ n, IsOrderUnitNorm (e n)) (hL : ∀ n, IsClosedLipNorm (L n))
    (hc : ∀ ε : ℝ≥0∞, 0 < ε → ∃ N : ℕ, ∀ m n, N ≤ m → N ≤ n →
      quantumGHEDist (L m) (L n) < ε) :
    ∃ (F : Type u) (_ : NormedAddCommGroup F) (_ : NormedSpace ℝ F) (_ : PartialOrder F)
      (_ : IsOrderedAddMonoid F) (_ : PosSMulMono ℝ F) (_ : CompleteSpace F) (f : F)
      (LF : ExtendedLipschitzSeminorm f), IsOrderUnitNorm f ∧ IsClosedLipNorm LF ∧
        Filter.Tendsto (fun n => quantumGHEDist (L n) LF) Filter.atTop (𝓝 0) := by
  sorry

/-- Quantum compactness, sufficiency (§5.6): uniformly bounded state diameters and `ε`-net
cardinalities give a `dist_q`-Cauchy subsequence (Rieffel, ibid., Theorem 13.5). -/
theorem exists_cauchy_subseq_of_diam_scv_bounded
    {E : ℕ → Type u} [∀ n, NormedAddCommGroup (E n)] [∀ n, NormedSpace ℝ (E n)]
    [∀ n, PartialOrder (E n)] [∀ n, IsOrderedAddMonoid (E n)] [∀ n, PosSMulMono ℝ (E n)]
    (e : ∀ n, E n) (L : ∀ n, ExtendedLipschitzSeminorm (e n))
    (he : ∀ n, IsOrderUnitNorm (e n)) (hL : ∀ n, IsLipNorm (L n))
    (D : ℝ≥0∞) (hD : ∀ n, ∀ φ ψ : stateSpace (e n), stateEDist (L n) φ.1 ψ.1 ≤ D)
    (G : ℝ≥0∞ → ℕ)
    (hG : ∀ n, ∀ ε : ℝ≥0∞, 0 < ε → ∃ s : Finset (stateSpace (e n)), s.card ≤ G ε ∧
      ∀ φ : stateSpace (e n), ∃ ψ ∈ s, stateEDist (L n) φ.1 ψ.1 ≤ ε) :
    ∃ k : ℕ → ℕ, StrictMono k ∧ ∀ ε : ℝ≥0∞, 0 < ε → ∃ N : ℕ, ∀ m n, N ≤ m → N ≤ n →
      quantumGHEDist (L (k m)) (L (k n)) < ε := by
  sorry
```

Repair: add both (in a section after `Bridges`, since `E` is a section variable there), name them in the README at §5.5 and §5.6, and reduce the docstring's "not statable" list to `Φ_θ` (§6.1) and the quantum-torus continuity (§6.5), which are genuinely not statable: the pinned Tau Ceti has no rotation algebra, order-unit or Lip-norm object (`grep -rli 'rotation algebra|OrderUnit|LipNorm'` over the pinned `TauCeti/` is empty). If the author prefers to state compactness in the `Fin` form of Theorem 13.5(2), the sequential shape above still applies with `Fin_E(ε) ≤ G(ε)` written as an existential over finite-dimensional quotients; the `Scv` form is the one whose hypothesis is expressible with the file's current definitions.

## R02 (P3) — Three locators point to text that does not contain the claim

Location: README line 874 (§3.5), line 559 (§1.5), line 258–259 and 1340–1341 (supplier contract and §6.0).

- Line 873–874, "lower semicontinuity of its extended maximal-domain seminorm (Rieffel 1998, §4)": rieffel98 §4 (line 496–545) constructs the Clifford–Dirac triple of a compact connected Lie action and computes `[D, λ_a]`; it proves no lower semicontinuity. The statement is rieffel99 Proposition 3.7 (line 284–288): for an essentially self-adjoint `D` whose domain is carried into itself by each element of a unital linear space of self-adjoint operators with bounded commutators, `L(a) = ‖[D, a]‖` is lower semicontinuous. Repair: cite Rieffel 1999, Proposition 3.7 for lower semicontinuity and keep Rieffel 1998 §4 for the Leibniz construction.
- Line 557–559, "Prove that `E` is then separable … (Rieffel 1998, §1)": the word "separable" does not occur in rieffel98. The statement is true (`dom L = ⋃_n {L ≤ n}`, each `{L ≤ n}` lies in a totally bounded set plus `ℝe`, so `dom L` and then `E` are separable) and should be marked as owned here with its one-line route, without a locator into Rieffel 1998.
- Line 258–259 and 1340–1341, AmenableGroups "Layers 5–6: amenability of `ℤᵈ` and its explicit Følner boxes": AmenableGroups Layer 6 on main (its README line 391–404) proves `ℤ` amenable with the intervals `F_n = {0, …, n}` and finitely generated abelian groups through a surjection from a finite product of copies of `ℤ`; no box `F_nᵈ` is stated. Repair: cite Layer 6 for amenability of `ℤᵈ` and own the box computation `|(k + F_nᵈ) △ F_nᵈ| ≤ 2d‖k‖_∞ (n+1)^(d−1)` in §6.3, where it is used.

## R03 (P3) — "Bridge" names the wrong object relative to the source

Location: README line 1125–1126, "Define `AdmissibleLipNorm LE LF`, a **bridge**, as a quotient-admissible `M` with the full product finite domain"; line 1185–1187, "for a continuous seminorm `N` on `E × F` with `N(e, f) = 0`, `N(e, 0) > 0`, and approximate lift estimates …, that maximum is a bridge".

Claim: the admissible Lip-norm `M` on `E × F` is called a bridge.

Witness: rieffel00 Definition 5.1 (line 825–832) calls the seminorm `N` the bridge, and Theorem 5.2 (line 833–838) says `L = L_A ∨ L_B ∨ N` is "a Lip-norm which induces `L_A` and `L_B`", that is, an element of `M(L_A, L_B)`. The README's "bridge lemma" (§5.2) thus takes a bridge `N` and produces a "bridge" `M`, and `bridgeEDist` (`Suggested.lean` line 325) is the distance of an admissible Lip-norm, not of a bridge in the source's sense.

Repair: call `M` an admissible Lip-norm throughout (the Lean names already do), reserve "bridge" for `N` as in the source, and rename `bridgeEDist` to `admissibleEDist` or say in Conventions, in one sentence, that this roadmap's "bridge" is the source's admissible Lip-norm.

## R04 (P3) — The consumer's anchor into this roadmap is dead at this head

Location: README line 762, "## Layer 3: Classical metrics, probabilities and commutators (Q3)".

Claim: other roadmaps cite the layers "by the labels Q0–Q6" (line 111–112).

Witness: SpectralManifolds at its open head cites this roadmap twice by the fragment `#q3-classical-metrics-probabilities-and-commutators` (its README lines 33 and 236); the heading at this head renders the fragment `#layer-3-classical-metrics-probabilities-and-commutators-q3`, so both links fall to the top of the file. The sections it consumes (§3.1 and §3.6) exist with the content it names.

Repair: none in this folder is required; the consumer repoints to `#layer-3-classical-metrics-probabilities-and-commutators-q3` or cites "§3.1" by text. Since both pull requests have the same author, recording the new fragment in the Downstream consumers paragraph (line 1527–1529) would save a round there.

## Verified sound

**Gate and direction.** The worker's gate at 7205d1c: `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK`. Dependency check rerun by me on this head:

```
depcheck: 204 roadmaps, 1437 edges, 0 problem(s)
```

CompactQuantumMetricSpaces is at line 194 of the merge order; VonNeumannAlgebras (supplier) at line 4; SpectralManifolds (consumer) at line 214. No UPWARD or CYCLE line.

**Elaboration.** `lake env lean` on a copy of `Suggested.lean` with `#check @name` for all 38 declarations: exit 0, 16 `sorry` warnings, no other diagnostic. Each elaborated type was compared with its README statement; what the mechanical comparison shows is: `IsOrderUnitNorm`, `stateSpace`, `centeredUnitBall`, `leftState`, `rightState` carry `[PartialOrder E]` only; `ExtendedLipschitzSeminorm`, `IsLipNorm`, `IsClosedLipNorm`, `stateEDist`, `scalarLine`, `classicalLip`, `actionLip`, `QuotientAdmissibleLipNorm`, `AdmissibleLipNorm` carry no order instance (their types mention none); every theorem and the three distance definitions (`quotientBridgeEDist`, `bridgeEDist`, `quantumGHEDist`, through `stateEMetricSpace`) carry `[PartialOrder E] [IsOrderedAddMonoid E] [PosSMulMono ℝ E]`, and every theorem that needs the order-unit norm carries `he : IsOrderUnitNorm e`. No hypothesis the mathematics needs was lost; `exists_closedLipNorm_actionLip` needs no `PosSMulMono ℝ (selfAdjoint A)` for the reason given under R03 above. The two probes of R01 elaborated the same way (17 `sorry` warnings each, exit 0).

**Lean form.** Imports: `import Mathlib` and `import TauCeti.MeasureTheory.OptimalTransport.Wasserstein.Basic` (the module exists at the branch pin `a91d3aa` and at main's pin `358314d4`; its object file exists in the shared build). No `set_option`, no `lemma`, no `#eval`, no sorried data: `stateEMetricSpace` (line 173) is a `def` with honest data whose proof fields are the sorried theorems, used only through `letI` in `quotientBridgeEDist`; `integrationState` (line 205) has a real body proved in place. The worker's signature elaboration failed because its lake directory was the main-pin one (`lake/315a2ceb…`) without the Tau Ceti Wasserstein object file; the branch-pin directory the worktree is attached to has it, which is why the gate's build and my elaboration pass.

**Supplier citations resolved.** On main (content at fa41b37): BanachSpaceTheory B1 (annihilators, `(E/F)* ≅ Fᗮ`, line 41–48) and B5 (positive and negative parts `Λ⁺(f) = sup{Λ(g) : 0 ≤ g ≤ f}`, `RealRMK.rieszMeasure`, variation norm equality, line 268–284); CompactGroups Layer 5 (line 318; `representativeStarSubalgebra_separatesPoints` at `Suggested.lean` line 256) and Layer 0 (line 205); LieGroups Layer 2 (line 275–297); OptimalTransport Layers 0–3 (lines 346, 395, 444, 504; pushforward at line 354); NoncommutativeGeometry N5 (line 410), N6 (line 475; `U₂U₁ = exp(2πiθ)U₁U₂` at 484, faithful trace `τ(a) = a_00` at 493) and N7 (line 530; ordered Fourier basis at 532, `D = −i(σ₁δ₁ − σ₂δ₂)` at 534); RiemannianGeometry R7.8 (item 8 of "R7.1–R7.8", line 1303 onwards: bounded Lipschitz approximation, intrinsic-distance comparison of `sup|df|`, Clifford commutator theorem for nonzero-fibre Hermitian Clifford modules, open Euclidean domains); SpinGeometry G6 (line 569); OperatorAlgebraDynamics D2 (line 143; almost-invariant vectors, weak containment, tensoring and absorption at 184–190); AmenableGroups Layer 5 (line 289) and 6 (line 391; see R02 for the boxes). At open heads of new-folder pull requests: VonNeumannAlgebras at dee80881 Layer 0 (line 275: GNS, state separation, faithful direct-sum representation) and V8.CompactErgodicActions (line 2037–2043: arbitrary compact Hausdorff `G`, Haar expectation, isotypic and matrix-coefficient projections, finite-orbit algebra, `multiplicity(π) ≤ dim π`, unique faithful tracial invariant state, HKLS citation); CStarAlgebras C1 (line 85; Gelfand at 140) and C2 (line 263; state extension at 269); SmoothBanachRepresentations SB2 (line 64, `E^k` by `ContMDiff`, derivatives along a basis) and SB8 (line 157, smooth Banach star algebras, `dα(X)` derivations). Note for the board, not a finding here: VonNeumannAlgebras has a second open pull request (#1041, head d9e53b3e) whose folder labels its layers V0–V4 and has no V8; this roadmap's citations ("Layer 0", "V8.CompactErgodicActions") resolve only at the dee80881 head.

**Pinned declarations opened.** `WeakDual.isCompact_closedBall` (`Mathlib/Analysis/Normed/Module/WeakDual.lean` line 269, needs `[ProperSpace 𝕜]`, true for `ℝ`); `PositiveContinuousLinearMap.ofReal_opNorm_eq_map_one` (`Mathlib/Analysis/CStarAlgebra/PositiveLinearFunctional.lean` line 74, `[PartialOrder A] [StarOrderedRing A]`); `exists_extension_norm_eq` (`Mathlib/Analysis/Normed/Module/HahnBanach.lean`); `geometric_hahn_banach_closed_point` (`Mathlib/Analysis/LocallyConvex/Separation.lean`); `BoundedContinuousFunction.arzela_ascoli` (`Mathlib/Topology/ContinuousMap/Bounded/ArzelaAscoli.lean`); `RealRMK.rieszMeasure` (`Mathlib/MeasureTheory/Integral/RieszMarkovKakutani/Real.lean`); `MeasureTheory.L1.integralCLM` (`Mathlib/MeasureTheory/Integral/Bochner/L1.lean` line 533); `GroupNorm` (`Mathlib/Analysis/Normed/Group/Seminorm.lean`, with `eq_one_of_map_eq_zero`); `IsCompactOperator` (`Mathlib/Analysis/Normed/Operator/Compact/Basic.lean`); `LieGroup` (`Mathlib/Geometry/Manifold/Algebra/LieGroup.lean`); `Matrix.unitaryGroup` (`Mathlib/LinearAlgebra/UnitaryGroup.lean`); `GromovHausdorff.ghDist` (`Mathlib/Topology/MetricSpace/GromovHausdorff.lean`); `StarAlgEquiv.aut : Group (R ≃⋆ₐ[S] R)` (`Mathlib/Algebra/Star/StarAlgHom.lean` line 1098); `Prod.norm_def : ‖x‖ = max ‖x.1‖ ‖x.2‖` (`Mathlib/Analysis/Normed/Group/Constructions.lean` line 237), which is the "maximum order-unit norm on `E × F`" of §5.1. Tau Ceti at the branch pin: `TauCeti.wassersteinEDist (p : ℝ≥0∞) (μ ν : Measure X) : ℝ≥0∞ := ⨅ π coupling, eLpNorm (edist) p π` (`Wasserstein/Basic.lean` line 160); `wassersteinEDist_one_eq_iSup_of_compactSpace` (`Wasserstein/KantorovichRubinstein.lean` line 161, variables `[PseudoMetricSpace X] [CompactSpace X] [OpensMeasurableSpace X]` at line 115, probability measures, conclusion `⨆ f (LipschitzWith 1 f), ofReal (∫ f dμ − ∫ f dν)`, no moment hypothesis); `wassersteinEDist_one_eq_iSup_apply_eq_zero` (line 304, needs `HasFiniteMoment 1`, automatic on a compact space, which the README's §3.3 "moment properties" sentence covers). The supremum without absolute value equals the README's with absolute value by `f ↦ −f`.

**Ownership.** `roadmaps grep` over all open heads and main: "twisted group C*-algebra" and `C*(ℤᵈ, σ)` occur only in this roadmap; "Lip-norm" in this roadmap (53), SpectralManifolds (1, consumer) and QuantumFoundations (1, consumer); "quantum Gromov" in this roadmap and SpectralManifolds; "order-unit space" only here. The pinned Tau Ceti has no order-unit, Lip-norm or rotation-algebra object (grep empty). OperatorAlgebraDynamics on main has no central-twist sublayer; its open revision's D1/D2.CentralTwists (rev head line 155, 442) is not citable, and the README's identification theorem (line 94–99) covers the eventual overlap. Ownership against open pull requests was checked through the brief's sibling checkouts and `roadmaps grep`.

**Sources.** The three Rieffel papers read from the arXiv texts in the sources cache (rieffel98 = math/9807084v2, rieffel99 = math/9906151v2, rieffel00 = math/0011063v4); their numbering is the one the README cites. The seeded sample and the headline locators:

| README target | Source | Line | Agrees |
|---|---|---|---|
| 0.2 states, `‖φ‖ = φ(e)`, Kadison's extension argument | rieffel99 §2 | 152–160, 171–177 | yes (Condition 1.5 with `k = 1` for order-unit spaces, rieffel98 161–168) |
| 0.3 `S(E)` compact, `‖a‖ = sup_φ|φ(a)|`, `A ⊆ Af(K) ⊆ C(K)` | rieffel99 §2 | 171–176 | yes |
| 0.4 dual-ball identity `D₂ = {μ − ν}` with the Jordan decomposition and the rescaling `φ = tφ′ + (1−t)ω` | rieffel99 Lemma 2.1 | 174–184 | yes, same construction |
| 1.1 Lip-norm: seminorm, kernel `ℝe`, `ρ_L`-topology weak-* | rieffel00 Def 2.1 | 258–263 | yes; the source's `L` is finite on `A`, the README's extended-valued presentation with dense domain is its own (stated as such at line 132–134) |
| 1.2 `ρ_L(μ,ν) = sup{|μ(a) − ν(a)| : L(a) ≤ 1}`, possibly `+∞` | rieffel99 §2 | 156–159 | yes |
| 1.3 radius identity `ρ ≤ 2r ⟺ ‖ã‖ ≤ r L̃(ã)`; radius ≠ ball radius | rieffel99 Prop 2.2 | 193–209 | yes |
| 1.4 (b) ⟹ (a) and converse under Condition 1.5; (c) via `B₁` | rieffel98 Thm 1.8, 1.9 | 203–215, 263–269 | yes; the README's centered ball replaces `B₁ = {L ≤ 1, ‖a‖ ≤ 1}`, equivalent through the 2-Lipschitz section `q(a) ↦ a − φ(a)e` (Check at line 541) |
| 1.6 `L(a) = ‖ã‖` not a Lip-norm; `C¹([−1,1])`, `‖f′‖_∞ + |f′(0)|` | rieffel99 210–212, Ex 3.5 | 210–212, 249–258 | yes; the README's `G_n` differ from the source's `f_n` by the constant `1 − 1/(2n)`, same `L` and limit |
| 2.1 closure = largest lsc seminorm below `L`, same metric; kernel loss on `[0,2]` polynomials | rieffel99 Thm 4.2, after Prop 4.4 | 316–320, 366–369 | yes |
| 2.2 recovery for lsc `L`, `ρ` possibly `+∞` | rieffel99 Thm 4.1 | 310–313 | yes |
| 2.3 metrics from Lip-norms, misprint | rieffel99 Thm 9.11 | 920–923 | yes (Source issues) |
| 2.5 quotient seminorm, `S(F) = K` | rieffel00 Prop 3.1, 3.5 | 376–385, 512–525 | yes |
| 3.1 classical distance formula with the witness `min(d(z,x), d(x,y))` | own target, no locator needed | — | checked (table below) |
| 3.5 commutator seminorm `L(a) = ‖[D,a]‖`, Leibniz | rieffel98 intro and §4 | 77–92, 496–545 | yes for the construction; lsc is R02 |
| 4.1 `L(a) = sup‖α_x(a) − a‖/ℓ(x)`, Leibniz "easily verified", `α`-invariance for conjugation-invariant `ℓ` | rieffel98 §2 | 320–336 | yes |
| 4.1/4.3 density of `L` by `L¹` convolution | rieffel98 Prop 2.2 | 339–358 | yes |
| 4.3 ergodic compact actions give Lip-norms; `ρ ≤ 2∫ℓ`; closedness | rieffel98 Thm 2.3, Lemma 2.4; rieffel00 Prop 8.1 | 368–370, 386–405; 1437–1439 | yes |
| 4.4 faithful `π₀` assumed in the source, adjoined trivial summand, `χ ≥ 0` | rieffel00 §8 | 1441–1447 | yes; owned here as R01 of the previous review asked |
| 4.4 `δ_n` depends on `G` and `ℓ` only; `P_n` equivariant for central kernels | rieffel00 Thm 8.2, Lemmas 8.3, 8.4 | 1468–1480, 1539, 1552–1557 | yes |
| 4.5 derivative seminorm on compact connected Lie `G` | rieffel98 Thm 3.1 | 464–467 | yes |
| 5.1 `M(L_A, L_B)`, `dist_q` as infimum of Hausdorff distances | rieffel00 4.1, 4.2 | 620–630 | yes |
| 5.2 bridge `N` and `L = L_A ∨ L_B ∨ N`; nonlinear `P` | rieffel00 Def 5.1, Thm 5.2, Prop 8.5 | 825–839, 1562–1572 | yes (vocabulary: R03) |
| 5.3 triangle inequality; `dist_q ≤ dist_GH`, not equality | rieffel00 Thm 4.3, Lemmas 4.4, 4.6; 739–741 | 638–640, 650, 697; 739–741 | yes |
| 5.4 rigidity in the closure sense of §6 | rieffel00 Thm 7.8 | 1325–1333 | yes |
| 5.5 completeness; 5.6 finite approximation, `Fin`, `Scv`, compactness | rieffel00 12.11, 13.1, 13.4, 13.5 | 2381–2392, 2410–2419, 2473–2489, 2496–2509 | yes; the source says "totally bounded", equivalent to compact closure by 12.11 |
| 6.0/6.1 `σ_θ(p,q) = exp(iπ p·θq)`, twisted convolution (9.1), `π_θ`, gauge action of `Tᵈ` | rieffel00 §9 | 1627–1642 | yes; `λ_Θ(p)δ_q = σ(p,q)δ_{p+q}` recomputed from (9.1) using `σ(p,p) = 1` |
| 6.5 continuity in `Θ`; `B_n` independent of `θ`; strong continuity insufficient | rieffel00 Thm 9.2, 1712, Lemma 9.3 | 1666–1690, 1712, 1722 | yes |
| 6.4 joint continuity of norms, finite-dimensional comparison | rieffel00 Lemma 10.1, Thm 11.2 | 1830–1834, 2138–2144 | yes |

**Adversarial table.** One row per statement, with the values computed.

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| `IsOrderUnitNorm` excludes a non-Archimedean cone | `ℝ²`, cone `{x>|y|} ∪ {(t,−t)}`, `e=(1,0)`, `a=(0,1)` | `inf{r : −re ≤ a ≤ re} = 1`; `(1,1) ∉` cone so `‖a‖ ≤ 1 ↔ −e ≤ a ≤ e` fails | iff excludes it, as README line 310–313 says |
| `map_smul` at `r=0`, `L a = ∞` | — | LHS `L 0 = 0`; RHS `ofReal 0 · ∞ = 0` | consistent |
| `stateEDist_eq_zero_iff` without `he` | `φ ≠ ψ` agreeing on `{L ≤ 1}` | homogeneity gives agreement on `dom L` (`a/L(a)` or `a = re`), density and continuity give `φ = ψ` | true as stated |
| `norm_eq_iSup_states` in `ℝ≥0` | `E = ℝ²`, `a = (1,−1)` | states `φ_t`, `sup_t|2t−1| = 1 = ‖a‖_∞`; set bounded by `‖a‖` so the `ℝ≥0` sup is not junk | holds |
| 0.4 dual ball | `λ = (1/2,−1/2)`, `ω = (1/2,1/2)` | `t = ‖λ‖/2 = 1/2`; `φ = (3/4,1/4)`, `ψ = (1/4,3/4)`; `φ − ψ = λ`; `φ′ − ψ′ = (1,−1) ≠ λ` | exact as README line 405–407 |
| 1.2 Lebesgue check | `ρ_L(δ_x, Leb)` on `[0,1]` | `∫|t−x|dt = x²/2 + (1−x)²/2 = x² − x + 1/2`; `x = 1/2` gives `1/4` | holds |
| 1.3 radius identity | `ℝ²`, `L = |a₁−a₂|`; `L′ = L/2` | diam `1`, `‖q(a)‖ = L(a)/2`, `r = 1/2`; `L′`: diam `2`, `r = 1` | holds; centered ball at `ev₂` has norm sup `1 = diam > r` |
| 1.4 section bound sharp | `a = (1,−1)`, `φ = ev₁` | `‖q(a)‖ = 1`, `‖a − φ(a)e‖ = ‖(0,−2)‖ = 2` | constant 2 sharp |
| 1.4 (b) ⟺ (c) | section `s_φ(q a) = a − φ(a)e` | `s_φ` 2-Lipschitz, `q` 1-Lipschitz, `s_φ(q(L₁)) =` centered ball, `q(`centered ball`) = q(L₁)` | equivalence needs no finite radius |
| 1.5 separability | `dom L = ⋃_n {L ≤ n}` | `{L ≤ n} ⊆ n·s_φ(q(L₁)) + ℝe`, totally bounded plus a line, separable; `dom L` dense | true (locator: R02) |
| 1.6 non-lsc Lip-norm | `G_n = 1 + ∫₀ᵗ min(n|s|,1)ds` | `L(G_n) = 1 + 0`; `‖G_n − (t+1)‖_∞ = ∫₀^{1/n}(1 − ns)ds = 1/(2n)`; `L(t+1) = 2` | `{L ≤ 1}` not closed |
| 2.1 kernel loss | polynomials on `[0,2]`, `L` = Lipschitz constant on `[0,1]`, `g = (s−1)²₊` | `p_n = ∫₀ᵗ q_n` with `q_n → g′` uniformly: `‖p_n − g‖ → 0`, `L(p_n) ≤ ‖q_n − g′‖ → 0`, `‖q(p_n)‖ ≥ 1/2 − ‖p_n − g‖` | closure kernel contains `g ∉ ℝ·1`; radius infinite |
| 2.1 graph norm | `f_n = √((t−½)² + 1/n)` | `f_n′ = (t−½)/√(…) → sign(t−½)` pointwise, not uniformly | uniformly Cauchy, not graph-Cauchy |
| 2.2 recovery, junk values | `φ = ψ`; `a = re`; `a ∉ dom L`, `a = √t`, `φ = δ_h`, `ψ = δ₀` | `0/0 = 0`; numerators `0` so sup `0 = L(re)`; `√h/h = h^{−1/2} → ∞` | formula exact in `ℝ≥0∞`; bipolar on `q(B)`, closed in `E/ℝe` iff `B` closed since `B + ℝe = B` |
| 2.3 simplex | `K ⊆ ℝ³`, Euclidean norm on `Σx = 0` | `‖e₁ − e₂‖ = √2`; `‖(½,½,−1)‖ = √(3/2) ≈ 1.225 < √2 = W₁(δ₃, (δ₁+δ₂)/2)` for the equilateral `√2` metric | two closed Lip-norms, same pure-state distances |
| 2.3 non-examples | `√|x−y|`; `|x−y|²` on `[0,1]` | `√(1/2) ≈ 0.707 > 1/2`; `|x−y|²` convex, translation invariant, midpoint concave, but `1 > 1/4 + 1/4` | hypotheses independent |
| 2.5 edge quotients | `L = max|a_i − a_j|`, edge `ev₁ev₂`; `L = |a₁−a₂| + 2|a₂−a₃|`, edge `ev₁ev₃` | `inf_{a₃} max(|b₁−b₂|, |b₁−a₃|, |b₂−a₃|) = |b₁−b₂|` at the midpoint; `inf_t(|b₁−t| + 2|t−b₃|) = |b₁−b₃|` at `t = b₃` vs restriction `2|a₁−a₃|` | quotient ≠ restriction |
| 2.5 image norm vs quotient norm | `K` = segment `δ₀` to `(δ₀+δ₁)/2`, `b = (0,1)` | image norm `max(0,1) = 1`; every lift has `a(0) = 0`, `a(1) = 2`, quotient norm `2` | not identified, as stated |
| 3.1 distance formula | `X = ℝ`, `x=0`, `y=3`; `X = ∅`, singleton | `f(z) = min(|z|,3)`: bounded, `1`-Lipschitz, `f(3) − f(0) = 3`; empty sup `0` | holds; `z ↦ z` excluded |
| 3.1 Leibniz | `f = g = t` on `[0,1]` | `classicalLip(t²) = 2 = 1·1 + 1·1` | equality |
| 3.2 Lipschitz approximation | `f = √x`, `f_r = inf_y(√y + r|x−y|)` | `= min(rx, √x)`; error `max(√x − rx) = 1/(4r)` at `x = 1/(4r²)` | as stated |
| 3.2 strong inverse | `f = t` on `[1,2]` | `classicalLip(1/t) = sup 1/t² = 1 = ‖1/t‖²·1` | square sharp |
| 3.3 `stateEDist_integrationState` | `X = {0,1}`, `d = 1`; `X = [0,1]`, `μ = δ_{1/2}`, `ν` = Leb | `W₁ = |t−s|` = state metric of `|a₁−a₂|`; `W₁ = 1/4` = 1.2's value | agrees with Tau Ceti's sup over `LipschitzWith 1 f` (sign symmetry gives the absolute value) |
| 3.5 `M₂(ℂ)`, `D = diag(1,−1)` | `[D,a]` | entries `(d_i − d_j)a_{ij}`: `2a₁₂`, `−2a₂₁`; norm `2max(|a₁₂|,|a₂₁|)`; kernel the diagonal `ℂ²` | not an extended Lipschitz seminorm |
| 4.1 inverse law | `C(T)`, `f = 2 + z`, `ℓ = |arg|` | `L(f) = sup|e^{iθ}−1|/|θ| = 1`; `‖f⁻¹‖ = 1`; `L(f⁻¹) = sup|f′|/|f|² = 1` at `z = −1` | `L(f⁻¹) = ‖f⁻¹‖²L(f)`, equality |
| 4.3 `exists_closedLipNorm_actionLip`, degenerate inputs | trivial `G`; zero algebra `A = 0` (admitted by `CStarAlgebra`) | trivial `G`: `actionLip ≡ 0`, ergodicity forces `A = ℂ1`, kernel `ℝ·1`; `A = 0`: `selfAdjoint A = {0}`, `1 = 0`, `L = 0` satisfies `kernel_iff` (`0 = r • 0`), totally bounded, closed | true in both; README's "nonzero" is a stronger hypothesis than the Lean needs |
| 4.3 diameter bound | `T` on `C(T)`, `ℓ = |θ|`; `ℤ/2` | `∫ℓ = (1/2π)∫|θ| = π/2`, `2∫ℓ = π` = diam of `(T, W₁)`; `∫ℓ = 1/2`, diam `1` | sharp in both |
| 4.4 `exists_faithful_unitary_representation`, route | `X ≠ 0` in `Lie(K)` | `g = exp(tX) ≠ 1` for small `t ≠ 0`, some `π_g(g) ≠ 1`, so `dπ_g(X) ≠ 0`; finitely many `dπ` with trivial common kernel by finite dimension; common kernel `H` closed with `Lie(H) = 0`, discrete and compact, hence finite; finitely many more reps kill `H` | sound; trivial `K`: `n = 0`, `unitaryGroup (Fin 0) ℂ` a singleton, injective |
| 4.4 `χ` unique maximum | `π₀ = 1 ⊕ z` on `T`; `π₀ = 1 ⊕ z²` | `χ = 2 + 2cos θ`, max `4` at `0` only; `|1 + z²|²` has maxima at `0, π`, `δ_n → π/2` | faithfulness needed, Check correct |
| 4.4 `ℤ/2` kernel | `π₀ = 1 ⊕ sgn` | `χ(1) = 4`, `χ(−1) = 0`; `∫χⁿ = 4ⁿ/2`; `k_n(1) = 2`, `k_n(−1) = 0`; `P_n = id`, `δ_n = 0` | as stated |
| 4.4 `L(P_n a) ≤ L(a)` | central kernel | `α_g P_n = P_n α_g`, `‖α_g P_n a − P_n a‖ ≤ ‖α_g a − a‖` | no conjugation invariance of `ℓ` used |
| 5.1 `M_ε` regularization | `N_ε(v) = inf_w(M(w) + ε⁻¹‖v−w‖)` | `N_ε ≤ M`, `N_ε(v) ≤ ε⁻¹‖v‖` (`w = 0`); with `‖q(w)‖ ≤ R M(w)`: `M(w) + ε⁻¹‖v−w‖ ≥ (‖q(w)‖ + ‖q(v) − q(w)‖)/max(R,ε) ≥ ‖q(v)‖/max(R,ε)`; `inf_b M_ε(a,b) ≤ max(L_E a, M(a,b)) ≤ L_E a + η` | kernel `ℝ(e,f)`, full product domain, exact quotients |
| 5.1 `M_ε` is a Lip-norm | `v = (a₀ + se, b₀ + tf)`, `a₀, b₀` in centered balls of diameter-bounded norm `C` | `‖q(v)‖ ≥ |t−s|/2 − C` and `‖q(v)‖ ≤ max(R,ε)N_ε(v) ≤ max(R,ε)`, so `|t−s| ≤ 2(max(R,ε) + C)` | quotient ball inside totally bounded + bounded segment |
| 5.1 `ρ_M ≤ ρ_{M_ε} ≤ ρ_M + 2ε` | `M_ε(v) ≤ 1`, `w` with `M(w) + ε⁻¹‖v−w‖ ≤ 1+η` | `|(φ−ψ)(v)| ≤ M(w)ρ_M + 2‖v−w‖ ≤ (1+η)(ρ_M + 2ε)` | `quantumGHEDist_eq_quotientQuantumGHEDist` sound; both infima `∞` if no `M` exists |
| 5.1 Check 2 | `E = ℝ²`, `F = ℝ`, `M_δ` | `φ_t − ψ = (t−½)(a₁−a₂) + ((a₁+a₂)/2 − b)`; sup over `|a₁−a₂| ≤ 1`, `|(a₁+a₂)/2 − b| ≤ δ` is `|t−½| + δ`; Hausdorff `½ + δ`; lower bound `|diam E − diam F|/2 = ½` | `dist_q = ½` |
| 5.2 `P`-estimates alone insufficient | `E = F = ℝ²`, `P = id`, `L_F = L_E/2` | `L_F(Pa) = L_E a/2 ≤ L_E a`, `‖a − Pa‖ = 0`, but `L_E b ≤ L_F b` fails; `diam E = 1`, `diam F = 2`, `dist_q ≥ ½` | compatibility needed |
| 5.2 generalized bridge lemma | `L_E(b) ≤ L_F(b)` on `F ⊆ E` | `E`-quotient at `b = Pa`: `max(L_E a, L_F(Pa), δ⁻¹‖a − Pa‖) ≤ L_E a`; `F`-quotient at `a = b`: `max(L_E b, L_F b, 0) = L_F b` | sound beyond the source's restriction case |
| 5.3 `quantumGHEDist_triangle` with `IsLipNorm` only | glue `G = max(M_EF, M_FH)`, `K(a,c) = inf_b G` | `K(a,c) ≤ G(a, tf, c) < ∞` on `dom L_E × dom L_H`; `inf_c K(a,c) = inf_b max(M_EF(a,b), L_F b) = L_E a` since `L_F b ≤ M_EF(a,b)`; kernel of `K` by finite radius of `G` (no attainment needed); `G`-quotient ball: `b₀ + sf = b₁ + tf` forces `|t−s| ≤ ‖b₀‖ + ‖b₁‖`, totally bounded; `ρ_K(φ_E, ψ_H) = ρ_G`, `ρ_G(φ_E, χ_F) = ρ_{M_EF}` up to `(1+ε)` | holds without closedness; `∞ ≤ ∞ + x` when no bridge exists |
| 5.3 two-point spaces | `d = 1` vs `d = 2` | `ghDist = ½` (embed with cross distances `½`: `2 ≤ ½ + 1 + ½`); `dist_q ≥ ½` by diameters | equality |
| 5.4 `quantumGHEDist_eq_zero_iff`, ⟸ | `T` isometry, `M_δ(a,b) = max(L_E a, L_F b, δ⁻¹‖Ta − b‖)` | quotients exact at `b = Ta`, `a = T⁻¹b`; `ψ = φ ∘ T⁻¹` gives `|φ(a) − ψ(b)| ≤ ‖Ta − b‖ ≤ δ M_δ(a,b)`, Hausdorff `≤ δ` | distance `0`; ⟹ needs closedness (Check 3: `C¹` vs Lipschitz, distance `0`, not isomorphic) |
| 5.6 covering numbers | `[0,1]` with `|s−t|`; simplices `ℝ^d`, `max|a_i − a_j|` | `Scv(ε) = ⌈1/(2ε)⌉` (`ε = ¼` gives `2`, points `¼, ¾`); vertex states pairwise at `sup{|a_i − a_j| : L ≤ 1} = 1`, so `Scv(ε) ≥ d` for `ε < ½` | as stated |
| 5.6 `Fin_E(ε)` for `C([0,1])` | net `{δ_{k/n}}` | every probability within `W₁ ≤ 1/(2n)` of the hull; `n = ⌈1/(2ε)⌉ ≤ 1/(2ε) + 1`, `Fin ≤ n + 1 ≤ 1/ε + 2` | holds |
| 6.0 twisted relations from (9.1) | `(δ_p ∗ δ_q)(r) = δ_q(r − p)σ(p,r)` | nonzero at `r = p + q`, value `σ(p, p+q) = σ(p,p)σ(p,q) = σ(p,q)` (`pᵀΘp = 0`) | `λ_Θ(p)δ_q = σ(p,q)δ_{p+q}`; cocycle identity by bilinearity |
| 6.0 `d = 2` convention | `Θ₁₂ = −θ` | `W_(1,0)W_(0,1) = e^{−πiθ}W_(1,1)`, `W_(0,1)W_(1,0) = e^{πiθ}W_(1,1)`, ratio `e^{−2πiθ}` | `U₂U₁ = e^{2πiθ}U₁U₂`, matches N6 line 484 |
| 6.1 `V*π_τ(U_j)V` | `δ_(m,n)` | `U₁`: phase `e^{πiθmn − πiθ(m+1)n} = e^{−πiθn} = σ((1,0),(m,n))`; `U₂`: `e^{πiθmn + 2πiθm − πiθm(n+1)} = e^{πiθm} = σ((0,1),(m,n))` | both intertwinings hold |
| 6.2 Clifford estimate | `a = W_(1,0) + W_(−1,0)` | `x = 2πi(W − W*)`, `‖x‖ = 2π·2 = 4π`, `y = 0`; `‖x + iy‖ = 4π = max = sum` | both bounds attained |
| 6.3 Harper operator | `θ = ½` | `U₁U₂ = −U₂U₁` and `U₁*U₂ = −U₂U₁*`, cross terms of `H²` cancel, `H² = X² + Y²`; `‖H‖ = 2√2` vs `4` at `θ = 0` | continuous, not constant |
| 6.3 `‖W_(1,0) + W_(0,1)‖` | any `Θ` | `= ‖1 + W_(1,0)*W_(0,1)‖`, spectrum of `W_(−1,1)` gauge-invariant hence the circle, value `2` | constant in `Θ` |
| 6.4 support function | `a = (−1,−3)`, `e = (1,1)` | `R ≥ 2`: `max(R−1, R−3) − R = −1 = max(a)`; `R = 1`: `max(0,2) − 1 = 1` | common `R` needed |
| 6.5 periodicity | `N₁₂ = −N₂₁ = 1` | `σ_{Θ+N}/σ_Θ = e^{πi(p₁q₂ − p₂q₁)}`; `b(p+q)/(b(p)b(q)) = e^{πi(p₁q₂ + q₁p₂)}`; ratio `e^{2πi p₂q₁} = 1`; both `±1`-valued, so `δb` and its inverse agree | transport consistent |

**Checks per definition.** Every `### k.n` with a definition carries at least three Checks (counted: 0.1–0.5: 4/4/4/5/3; 1.1–1.6: 3/4/4/4/3/3; 2.1–2.5: 4/4/3/3/4; 3.1–3.6: 4/4/4/3/3/3; 4.1–4.6: 4/3/4/4/3/3; 5.1–5.6: 4/3/3/3/3/3; 6.0–6.5: 4/4/3/3/3/4), each with a computed value, a degenerate case or a non-example; every layer ends with `### Examples` and `### Dependencies`; every target carries a `*Needs:*` line and a locator or an explicit own route.

**Padding probe.** `stateEDist_self` and `stateEDist_comm` close by one `simp` each but are the fields of `stateEMetricSpace` and stay. The sorried statements were read against the library at the pin: none restates a definition, mirrors a Check or computes a value; `stateEDist_ne_top` and `isLipNorm_iff_centered` are the two halves of the Lip-norm criterion the README names as such.

**Counts.** 33 source locators verified (table), 3 found pointing elsewhere (R02); 15 supplier citations resolved on main or at open heads, none missing; 48 adversarial rows; 16 library declarations opened at the pins with file and line; 38 Lean declarations compared with the README; 2 statability probes elaborated.

## Not verifiable

- hkls81 (Høegh-Krohn–Landstad–Størmer, Annals 114 (1981)): the full text is on JSTOR behind a paywall; the README consumes it only through VonNeumannAlgebras V8.CompactErgodicActions (its line 2043 carries the citation), whose own review owns the check.
- Rieffel 2000 Lemmas 4.4 and 4.6 (lines 650 and 697) were read for their statements' headings and the gluing they define; their proofs were not rechecked line by line, the gluing argument being recomputed in the table instead.

## Source issues

- **Misprint** in rieffel99 at Theorem 9.11, printed page 26: the source says the metric must be convex, midpoint balanced and "midpoint convex"; it should be "midpoint concave", the condition of its Definition 9.5 used in Theorem 9.7; affects nothing.
