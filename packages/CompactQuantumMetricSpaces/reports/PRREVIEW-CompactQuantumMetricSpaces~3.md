# Review of CompactQuantumMetricSpaces (pull request #1155 at 25e9712)

**Verdict:** accepted

Files reviewed: `TauCetiRoadmap/CompactQuantumMetricSpaces/README.md` (1613 lines) and `TauCetiRoadmap/CompactQuantumMetricSpaces/Suggested.lean` (417 lines, 40 declarations, 18 `sorry`). This is a full review of the repaired head: the folder changed by 356 lines since 7205d1c. The worker's gate at this head passes every check (build 0, depcheck 0, stray-files 0, outside-folder 0); `git diff --stat origin/main...HEAD` outside the folder is empty. The dependency check rerun by me, the elaboration of every declaration and the padding probe are quoted under Verified sound. No P1 or P2 finding; the two P3 notes below are the author's to take or leave.

## Status of the previous review's findings

- **R01 (P2, completeness and compactness statable but absent): repaired.** `Suggested.lean` lines 384–395 state `exists_limit_of_cauchySeq_quantumGHEDist` (a `dist_q`-Cauchy sequence of complete closed presentations in one universe has a complete closed limit in that universe; Rieffel 2000, Theorem 12.11 and Corollary 12.10, rieffel00 lines 2378–2393) and lines 403–413 state `totallyBounded_quantumGHEDist_iff` (sequential total boundedness for `dist_q` ⟺ one finite diameter bound and `Scv ≤ G`; Rieffel 2000, Theorem 13.5, rieffel00 lines 2496–2509, whose necessity gives `G ≥ Scv` and whose sufficiency needs only `G ≥ Fin ≤ Scv`, line 2489). Both elaborate; README §5.5 (line 1280) and §5.6 (line 1315) name them, the Summary (lines 16–17) lists them, and the module docstring (lines 26–32) now names only the isometry-class metric space, `Φ_θ` and the quantum-torus continuity as not statable. The sequential forms are faithful to the source: Rieffel's proof of 12.11 (line 2383) is the Cauchy-sequence argument, and his Theorem 13.5 is about totally bounded subsets of `Q`, which the triangle inequality (`quantumGHEDist_triangle`, stated with `IsLipNorm` only) converts to the terms-as-centres form used in the Lean.
- **R02 (P3, three locators): repaired.** §3.5 (lines 884–889) cites Rieffel 1999, Proposition 3.7 for lower semicontinuity on a unital linear space of domain-preserving elements (rieffel99 lines 284–288: essentially self-adjoint `D`, `L(a) = ‖[D,a]‖` lower semicontinuous) and owns the extension to the maximal domain with the closed-graph route; §1.5 (lines 568–570) owns separability with the route `{L ≤ 1} ⊆ B_φ + ℝe`, `dom L = ⋃ n·{L ≤ 1}`, no locator into Rieffel 1998; the supplier contract (lines 267–269), Scope (lines 88–89), §6.0 (lines 1368–1369, 1375–1376) and the Layer 6 dependencies cite AmenableGroups Layer 6 for amenability of `ℤᵈ` only, and §6.3 (lines 1470–1473) owns the boxes `F_nᵈ = {0,…,n}ᵈ` with the estimate `|(k + F_nᵈ) △ F_nᵈ| ≤ 2 Σ|k_i| (n+1)^(d−1)`, with a Check (lines 1485–1489) whose values I recomputed below. AmenableGroups Layer 6 on main (its README lines 391–399) proves `F_n = {0,…,n}`, `|(k+F_n) △ F_n| ≤ 2|k|` and amenability of finitely generated abelian groups, as the README now says.
- **R03 (P3, "bridge" vocabulary): repaired.** Conventions (lines 171–175) define *admissible Lip-norm* as Rieffel's `M(L_E, L_F)` element and *bridge* as the seminorm `N` of Definition 5.1; §5.1 is retitled, `bridgeEDist`/`quotientBridgeEDist` are renamed `admissibleEDist`/`quotientAdmissibleEDist` (`Suggested.lean` lines 320–329), and §5.2 (lines 1198–1201) states the bridge lemma with the two words in Rieffel's roles. Every remaining "bridge" in the README (lines 173, 1148, 1198–1204, 1209) refers to `N`.
- **R04 (P3, consumer anchor): addressed as far as this folder can.** Downstream consumers (lines 1563–1568) now record the exact Layer 3 heading that is the link target. SpectralManifolds at its open head (rev b1e8fb72, README lines 33 and 236) still uses the fragment `#q3-classical-metrics-probabilities-and-commutators`; the repointing is that roadmap's.

## R01 (P3) — Three locators point beside the claim

Location: README line 1237–1241 (§5.3), line 171–172 (Conventions), §2.4 lines 714–720.

- Lines 1237–1241: "Prove `|diam E − diam F| ≤ 2 dist_q(E, F)` and the classical comparison … (Rieffel 2000, §4)". The classical comparison is Proposition 4.7 (rieffel00 line 736–739); the diameter inequality is Lemma 13.6 (rieffel00 line 2542–2545), proved from the same `ρ_L(μ_j, ν_j) < d + ε` estimate. §5.6 (line 1321) consumes it "of 5.3", so the locator should point there. Repair: "(Rieffel 2000, Lemma 13.6 and Proposition 4.7)".
- Lines 171–172: "Rieffel 2000, Definition 4.1, the set `M(L_E, L_F)`", and line 1137 "Definition 4.1 for the finite case". The source item is "4.1 Notation" (rieffel00 line 620–621); Definition 4.2 is the distance. Repair: "Notation 4.1".
- §2.4 has no locator at all. The unital positive Lipschitz maps and their state pullbacks are Rieffel's morphisms of order-unit spaces with the dual map `S(π)` (rieffel00 lines 359–363 and Proposition 3.3 at line 471). Repair: cite Rieffel 2000, §3 (the morphism conventions before Proposition 3.1, and Proposition 3.3) for the pullback estimate.

## R02 (P3) — The quotient-by-`K` distance estimate is used twice but stated nowhere

Location: README line 1309–1311 (§5.6, "use 2.5 to get a quotient `F` with `dim F ≤ card(net)` and `dist_q(E, F) < ε`") and lines 1292–1295 (§5.5, "take the Hausdorff limit `K` … use 2.5 for the quotient Lip-norm … the coordinate spaces converge to it").

Claim: the quotient of `E` by a compact convex `K ⊆ S(E)` is within `dist_H(K, S(E))` of `E` for `dist_q`.

Witness: both routes are Rieffel's, and in the source each step is Proposition 5.7 (rieffel00 lines 966–971: for quotients `B_j` of `A` by compact convex `K_j`, `dist_q(B_1, B_2) ≤ dist_H^{ρ_L}(K_1, K_2)`), invoked at line 2376 for Corollary 12.10 and in the proof of Theorem 13.1 (line 2416–2420). §2.5 proves `S(F) = K` isometrically (Proposition 3.5) and §5.2 proves the general bridge lemma, from which the estimate follows (the bridge `N(a, b) = δ⁻¹‖π(a) − b‖_F` on `E × F` has exact coordinate quotients since `L_F(πa) ≤ L_E(a)` and `L_F` is an infimum over lifts, and gives Hausdorff distance `≤ dist_H(K, S(E)) + δ`), but no sentence states it, so an implementer of §5.5 or §5.6 has no named target to prove first.

Repair: add to §5.2, after the common-ambient-norm bridge, the target "for compact convex `K_1, K_2 ⊆ S(E)` with quotients `F_1, F_2` of 2.5, `dist_q(F_1, F_2) ≤ dist_H(K_1, K_2)` for the state metric of `L_E`; in particular `dist_q(E, F) ≤ dist_H(K, S(E))` (Rieffel 2000, Proposition 5.7, through the diagonal bridge of its Example 5.6 and the quotient by `co(K_1 ∪ K_2′)`)", and cite it from §5.5 and §5.6 in place of "use 2.5".

## Verified sound

**Gate and direction.** The worker's gate at 25e9712: `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK`. Dependency check rerun by me on this head:

```
depcheck: 204 roadmaps, 1437 edges, 0 problem(s)
```

CompactQuantumMetricSpaces is at line 194 of the merge order; VonNeumannAlgebras (supplier) at line 4; SpectralManifolds (consumer) at line 214. No UPWARD or CYCLE line. `metadata.toml` holds only `topic = "math.OA"`.

**Elaboration.** `lake env lean` on a copy of `Suggested.lean` with `#check @name` appended for all 40 declarations: exit 0 in 4.5 s, 18 `declaration uses sorry` warnings, no other diagnostic. Each elaborated type was compared with its README statement. The context audit: `IsOrderUnitNorm`, `stateSpace`, `centeredUnitBall`, `leftState`, `rightState` carry `[PartialOrder]` only; `ExtendedLipschitzSeminorm`, `stateEDist`, `scalarLine`, `IsLipNorm`, `IsClosedLipNorm`, `classicalLip`, `actionLip`, `QuotientAdmissibleLipNorm`, `AdmissibleLipNorm` carry no order instance (their types mention none); every theorem and the three distance definitions carry `[PartialOrder] [IsOrderedAddMonoid] [PosSMulMono ℝ]`, every theorem that needs the order-unit norm carries `he : IsOrderUnitNorm e`, `quantumGHEDist_eq_zero_iff` carries `[CompleteSpace E] [CompleteSpace F]` and closed Lip-norms, `exists_limit_of_cauchySeq_quantumGHEDist` carries `[∀ n, CompleteSpace (E n)]` and `IsClosedLipNorm` and produces `CompleteSpace F`, `IsOrderUnitNorm f` and `IsClosedLipNorm LF`, and `totallyBounded_quantumGHEDist_iff` carries `IsLipNorm` only, with `D : ℝ≥0` (finite) and `G : ℝ≥0∞ → ℕ`. No hypothesis the mathematics needs was lost.

**Padding probe.** On a second copy every `sorry` was replaced by `first | rfl | simp | infer_instance | (intros; rfl) | (intros; simp)`: all 18 sites fail (18 errors, each "simp made no progress" or an unsolved goal), so no sorried statement closes in one tactic. `stateEDist_self` and `stateEDist_comm` are proved in place by `simp` and are the fields of `stateEMetricSpace`. No declaration restates a definition, mirrors a Check or computes a value.

**Lean form.** Imports: `import Mathlib` and `import TauCeti.MeasureTheory.OptimalTransport.Wasserstein.Basic` (module present at the branch pin). No `set_option`, no `lemma`, no `#eval`, no sorried data (`stateEMetricSpace`, line 174, is a `def` with honest data whose proof fields are the sorried theorems; `integrationState`, line 206, has a real body proved in place). `@[instance_reducible]` is a Lean attribute used in Mathlib at the pin (`Mathlib/Tactic/Inhabit.lean` line 23). Section comments follow README layer order; `section Sequences` sits under the Layer 5 comment. Every Lean name occurs in the README and the gate's `readme-ids-missing=0` confirms every backticked own name is declared.

**Supplier citations resolved.** On main (content at fa41b37): BanachSpaceTheory B1 (line 41) and B5 (line 255); OptimalTransport layers (line 339 onwards; pushforward at line 354); NoncommutativeGeometry N5 (line 410), N6 (line 475, `U₂U₁ = exp(2πiθ)U₁U₂` at 484), N7 (line 530, `D = −i(σ₁δ₁ − σ₂δ₂)` at 534); RiemannianGeometry R7.1–R7.8 (line 1303, Clifford commutator at 1388–1394); SpinGeometry G6 (line 569); OperatorAlgebraDynamics D2 (line 143, tensoring and absorption at 189); AmenableGroups Layer 6 (line 391; intervals and `2|k|` at 393–394, finitely generated abelian at 399); RepresentationTheory/CompactGroups Layers 0–5 (lines 205–318; `representativeStarSubalgebra_separatesPoints` at README 292 and `Suggested.lean` 212); RepresentationTheory/LieGroups Layer 2 (line 275, "the closed-subgroup (Cartan) theorem"). At open heads: VonNeumannAlgebras at dee80881 Layer 0 (line 275) and V8.CompactErgodicActions (line 2037: arbitrary compact Hausdorff `G`, Haar expectation, unique faithful tracial invariant state, no separability); CStarAlgebras (#860) C1 (line 85) and C2 (line 263); SmoothBanachRepresentations (#1145) SB2 (line 64) and SB8 (line 157). Board note, not a finding: VonNeumannAlgebras has a second open pull request (#1041) whose folder has no V8; the citations resolve at dee80881 only.

**Pinned declarations opened.** `WeakDual.isCompact_closedBall` (`Mathlib/Analysis/Normed/Module/WeakDual.lean` line 269, `[ProperSpace 𝕜]`); `PositiveContinuousLinearMap.ofReal_opNorm_eq_map_one` (`Mathlib/Analysis/CStarAlgebra/PositiveLinearFunctional.lean` line 74); `RealRMK.rieszMeasure` (`Mathlib/MeasureTheory/Integral/RieszMarkovKakutani/Real.lean` line 65); `MeasureTheory.L1.integralCLM` (`Mathlib/MeasureTheory/Integral/Bochner/L1.lean` line 533); `GromovHausdorff.ghDist` (`Mathlib/Topology/MetricSpace/GromovHausdorff.lean` line 175, `[Nonempty X] [CompactSpace X]`, matching §5.3's "nonempty compact"); `Matrix.unitaryGroup` (`Mathlib/LinearAlgebra/UnitaryGroup.lean`). Tau Ceti: `TauCeti.wassersteinEDist` (`Wasserstein/Basic.lean` line 160); `wassersteinEDist_one_eq_iSup_of_compactSpace` (`KantorovichRubinstein.lean` line 161 under `[PseudoMetricSpace X] [CompactSpace X] [OpensMeasurableSpace X]`, line 115, probability measures); `wassersteinEDist_one_eq_iSup_apply_eq_zero` (line 304, under the additional `[SecondCountableTopology X]` of line 184, automatic for a compact metric space). The pinned Tau Ceti has no order-unit, Lip-norm or rotation-algebra object (grep over `TauCeti/` empty), so the docstring's three "not statable" items are correctly not statable.

**Ownership.** `roadmaps grep` over all open heads and main for "twisted group C*", "quantum Gromov", "Lip-norm", "order-unit space", "Følner box": 121 hits in this roadmap, 2 in SpectralManifolds (#1158, consumer), 1 in QuantumFoundations (#1771, consumer of the Lip-norm vocabulary), 1 in NoncompactQuantumSymmetry (#1015); no other roadmap builds `C*(ℤᵈ, σ)`, the order-unit distance or the ergodic closed Lip-norm theorem. Ownership against open pull requests was checked through the brief's sibling checkouts and `roadmaps grep`.

**Sources.** The three Rieffel papers were read from the arXiv texts in the sources cache (rieffel98 = math/9807084v2, rieffel99 = math/9906151v2, rieffel00 = math/0011063v4). The seeded sample and every locator a finding or a new passage touches:

| README target | Source | Line | Agrees |
|---|---|---|---|
| 0.3 `S(E)` compact, `A ⊆ Af(K) ⊆ C(K)`, norm by states | rieffel99 §2 | 171–176 | yes |
| 0.3 / 0.4 dual-ball identity and rescaling `tμ − tν = μ − (tν + (1−t)μ)` | rieffel99 Lemma 2.1 | 174–184 | yes |
| 0.5 functoriality of states, order quotient `S(F) = K` | rieffel00 Prop 3.1, 3.5 | 376–385, 512–525 | yes (0.5 itself is elementary, no locator needed) |
| 1.1 Lip-norm: kernel `ℝe`, `ρ_L` gives weak-* | rieffel00 Def 2.1 | 258–261 | yes; extended-valued dense-domain form is the README's own |
| 1.3 radius identity `ρ ≤ 2r ⟺ ‖ã‖ ≤ r L̃(ã)`; radius ≠ ball radius | rieffel99 Prop 2.2 | 193–209 | yes |
| 1.4 (b) ⟹ (a), converse under Condition 1.5; `B₁` form | rieffel98 Thm 1.8, 1.9 | 203–215, 263–269 | yes |
| 1.5 separability | own (R02 of r2) | — | route checked below |
| 1.6 `L(a) = ‖ã‖` not a Lip-norm; `C¹([−1,1])`, `‖f′‖_∞ + |f′(0)|` | rieffel99 | 210–212, 249–258 | yes; `G_n = f_n + const` |
| 2.4 Lipschitz maps | none cited | — | R01 |
| 2.5 quotient seminorm infimum, `S(B) = K` | rieffel00 Prop 3.1, 3.5 | 380–385, 512–525 | yes; "order-unit norm ≤ quotient norm, not equal" at 386–389 matches the Check |
| 3.2 closed Lip-norm of `C(X)` | rieffel98 §1, rieffel99 §2 | 203–215, 152–176 | yes (generic) |
| 3.5 lower semicontinuity | rieffel99 Prop 3.7 | 284–288 | yes |
| 4.1 `L(a) = sup‖α_x a − a‖/ℓ(x)`, Leibniz "easily verified", `α`-invariance for conjugation-invariant `ℓ` | rieffel98 §2 | 320–336 | yes |
| 4.1 density by convolution with Lipschitz `L¹` kernels | rieffel98 Prop 2.2 | 339–358 | yes |
| 4.2 finite multiplicity, trace | rieffel98 | 406–409 (cites HKLS) | yes; consumed through V8.CompactErgodicActions |
| 4.3 `ρ ≤ 2∫ℓ`, weak-* topology, closedness | rieffel98 Thm 2.3, Lemma 2.4; rieffel00 Prop 8.1 | 368–405; 1437–1439 | yes |
| 4.4 faithful `π₀` assumed, trivial summand adjoined, `χ ≥ 0`, `B_n` finite-dimensional with finite `L` | rieffel00 §8 | 1441–1466 | yes; the faithful representation is owned here |
| 4.4 `δ_n = ∫ φ_n ℓ` depends on `π, ℓ` only; `‖a − P_n a‖ ≤ δ_n L(a)`; `P_n` equivariant for central kernel | rieffel00 Thm 8.2, Lemmas 8.3, 8.4 | 1468–1484, 1539–1557 | yes |
| 5.1 `M(L_A, L_B)`, `dist_q` | rieffel00 Notation 4.1, Def 4.2 | 620–630 | yes (R01: "Notation") |
| 5.2 bridge `N`, nonlinear `P` | rieffel00 Thm 5.2, Prop 8.5 | 825–839, 1562–1572 | yes |
| 5.3 triangle inequality, gluing `L_AB ∨ L_BC`, quotient to `A ⊕ C` | rieffel00 Thm 4.3, Lemmas 4.4, 4.6 | 638–660, 697–699 | yes |
| 5.3 `dist_q ≤ dist_GH`, not equality | rieffel00 Prop 4.7 | 736–741 | yes (R01: locator) |
| 5.3 `\|diam − diam\| ≤ 2 dist_q` | rieffel00 Lemma 13.6 | 2542–2556 | yes (R01: locator) |
| 5.4 rigidity in the §6 closure sense | rieffel00 Thm 7.8 | 1325–1333 | yes; "closed" = unit ball closed in the completion, line 435–436 |
| 5.5 completeness, limit as affine quotient of a subspace of the product | rieffel00 Thm 12.9, Cor 12.10, Thm 12.11 | 2359–2393 | yes |
| 5.5 / 5.6 quotient distance `≤ dist_H(K_1, K_2)` | rieffel00 Prop 5.7 | 966–971, used at 2376, 2416–2420 | R02 |
| 5.6 finite approximation; `Fin, Cov, Scv`; `Scv ≥ Cov ≥ Fin` | rieffel00 Thm 13.1, Def 13.4 | 2410–2420, 2473–2489 | yes |
| 5.6 compactness: necessity `G(ε) = max Scv(ε/3)`; sufficiency via `Fin`, `S_n(d)`, John's theorem | rieffel00 Thm 13.5, Prop 13.7 | 2496–2509, 2560–2604 | yes |
| 6.0 / 6.1 `σ_θ(p,q) = exp(iπ p·θq)`, twisted convolution (9.1), `π_θ`, gauge action | rieffel00 §9 | 1625–1645 | yes |
| 6.4 joint continuity of a continuous field of norms, dual field, uniform equivalence; finite-dimensional comparison | rieffel00 Lemma 10.1, Thm 11.2 | 1830–1835, 2138–2144 | yes; 10.1 is applied to `L̃_θ` at 2145–2147 |
| 2.3 misprint "midpoint convex" | rieffel99 Thm 9.11, Def 9.5 | 920–923, 834 | yes (Source issues) |

**Adversarial table.** One row per statement, with the values computed.

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| 0.3 `norm_eq_iSup_states` | `ℝ²`, `e = (1,1)`, `a = (1,−1)` | `φ_t(a) = 2t − 1`, `sup_{[0,1]}|2t−1| = 1 = ‖a‖_∞`; `φ_{1/2}(a) = 0` but `a ≱ 0` | holds; one state does not detect order |
| 0.4 dual ball | `λ = (1/2, −1/2)`, `ω = (1/2,1/2)` | `t = 1/2`, `φ = (3/4,1/4)`, `ψ = (1/4,3/4)`, `φ − ψ = λ`; `φ′ − ψ′ = (1,−1) ≠ λ` | exact |
| 0.5 edge quotient; non-Archimedean algebraic quotient | `ℝ³`, `K = [ev₁, ev₂]`; `C[0,1]/(o(t))`, class of `t` | quotient `ℝ²`, `S(ℝ²) = K`; `ε − t + max(t−ε, 0) ≥ 0` with `max(t−ε,0) = o(t)` so `[t] ≤ ε[1]` for all `ε`, while `g ≥ t` with `g = o(t)` is impossible | Check correct; Archimedeanization needed |
| 1.1 kernel axiom | `|a₁|` on `ℝ²`; `L = ∞` off `ℝe` | kernel `{a₁ = 0} ≠ ℝe`; density fails when `E ≠ ℝe` | both excluded |
| 1.2 Lebesgue | `ρ_L(δ_x, Leb)` on `[0,1]` | `∫|t−x| = x² − x + 1/2 = 1/4` at `x = 1/2` | holds |
| 1.3 radius identity | `L = |a₁−a₂|`; `L′ = L/2` | diam `1`, `‖q(a)‖ = L(a)/2`, `r = 1/2`; `L′`: diam `2`, `r = 1`; centered ball at `ev₂` has sup norm `1 > 1/2` | holds |
| 1.4 section constant | `a = (1,−1)`, `φ = ev₁` | `‖q(a)‖ = 1`, `‖a − φ(a)e‖ = 2` | 2 sharp |
| 1.5 separability route | `a` with `L(a) ≤ 1` | `a − φ(a)e ∈ B_φ`, so `{L ≤ 1} ⊆ B_φ + ℝe`; `B_φ` totally bounded ⟹ separable; `dom L = ⋃_n n{L ≤ 1}` dense | true; `ℓ^∞ = C(βℕ)` nonseparable ⟹ no Lip-norm |
| 1.6 non-lsc Lip-norm | `G_n = 1 + ∫₀ᵗ min(n|s|,1)` | `G_n′(0) = 0`, `L(G_n) = 1`; `G_n − (t+1) = −∫₀^{1/n}(1 − ns)ds = −1/(2n)` for `t ≥ 1/n`; `L(t+1) = 2` | `{L ≤ 1}` not closed |
| 2.1 kernel loss | polynomials on `[0,2]`, `L` = Lipschitz constant on `[0,1]`, `g = (s−1)²₊` | `p_n = ∫₀ᵗ q_n`, `q_n → g′` uniformly: `‖p_n − g‖ → 0`, `L(p_n) ≤ ‖q_n − g′‖ → 0`, `‖q(p_n)‖ ≥ 1/2 − ‖p_n − g‖` | closure kernel ∋ `g ∉ ℝ1`, radius `∞` |
| 2.2 recovery junk values | `φ = ψ`; `a = re`; `a = √t`, `φ = δ_h`, `ψ = δ_0` | `0/0 = 0`; numerators `0`; `√h/h → ∞` | exact in `ℝ≥0∞` |
| 2.3 simplex | `K ⊆ ℝ³` equilateral side `√2` | `K − K = {Σx = 0, Σ|x| ≤ 2}`; `‖e₁−e₂‖ = √2`; `‖(1/2,1/2,−1)‖ = √1.5 < √2 = W₁(δ₃, (δ₁+δ₂)/2)` | pure-state distances do not recover `L` |
| 2.4 Lipschitz maps | `T = id`, `L_F = L_E/2`; `f ↦ (f(0), f(1))` | `ρ_F = 2ρ_E`, `ρ_E(T*φ,T*ψ) = (1/2)ρ_F`; pullback of `φ_t` is `tδ_0 + (1−t)δ_1`, `W₁ = |t − s|` | direction correct |
| 2.5 restriction ≠ quotient | `L = |a₁−a₂| + 2|a₂−a₃|`, edge `ev₁ev₃` | `inf_t(|b₁−t| + 2|t−b₃|) = |b₁−b₃|` at `t = b₃`; restriction to `{a₁ = a₂}` is `2|a₁−a₃|` | differ |
| 2.5 image norm vs quotient norm | `K = [δ_0, (δ_0+δ_1)/2]`, `b = (0,1)` | image norm `1`; every lift has `a(0) = 0`, `a(1) = 2`, quotient norm `2` | not identified, as rieffel00 386–389 |
| 3.1 distance formula | `X = ℝ`, `x = 0`, `y = 3`; `X = ∅` | `f = min(|z|,3)` bounded 1-Lipschitz, `f(3) − f(0) = 3`; empty sup `0` | holds |
| 3.2 Lipschitz approximation | `f = √x`, `f_r = inf_y(√y + r|x−y|)` | `y ↦ √y + r(x−y)` concave on `[0,x]`, min at an endpoint: `f_r = min(rx, √x)`; `max(√x − rx) = 1/(4r)` at `x = 1/(4r²)` | as stated |
| 3.2 strong inverse | `f = t` on `[1,2]` | `classicalLip(1/t) = 1`, `‖1/t‖² · 1 = 1` | sharp |
| 3.3 `stateEDist_integrationState` | `X = {0,1}`; `X = [0,1]`, `μ = δ_{1/2}`, `ν = Leb` | `W₁ = |t−s|`; `W₁ = 1/4` | agrees with Tau Ceti's `⨆ LipschitzWith 1 f, ofReal(∫f dμ − ∫f dν)` (sign symmetry gives the absolute value) |
| 3.5 lsc on the maximal domain (owned) | `a_n → a`, `‖[D,a_n]‖ ≤ k`, `ξ ∈ dom D` | `‖D a_n ξ‖ ≤ ‖a_n‖‖Dξ‖ + k‖ξ‖` bounded; a weakly convergent subsequence `(a_nξ, Da_nξ) ⇀ (aξ, η)` in the weakly closed graph gives `aξ ∈ dom D`, `Daξ = η`; `‖[D,a]ξ‖ ≤ liminf ‖[D,a_n]ξ‖ ≤ k‖ξ‖` | sublevel sets norm closed; route sound |
| 3.5 `M₂(ℂ)`, `D = diag(1,−1)` | `[D,a]` | entries `2a₁₂`, `−2a₂₁`; kernel the diagonal `ℂ²` | not an extended Lipschitz seminorm |
| 4.1 inverse law | `C(T)`, `f = 2 + z`, `ℓ = |arg|` | `L(f) = sup|2 sin(θ/2)|/|θ| = 1`; `‖f⁻¹‖ = 1`; `L(f⁻¹) = sup 1/|2+z|² = 1` at `z = −1` | equality |
| 4.2 SU(2) on `M₂` | conjugation | `η = tr/2`, `M₂ = ℂ1 ⊕ 𝔰𝔩₂`, adjoint multiplicity `1 ≤ 3` | as stated |
| 4.3 diameter bound | `T` on `C(T)`, `ℓ = |θ|`; `ℤ/2` | `∫ℓ = (1/2π)π² = π/2`, `2∫ℓ = π = W₁(δ_0, δ_π)`; `∫ℓ = 1/2`, diam `1` | sharp in both |
| 4.3 `exists_closedLipNorm_actionLip`, degenerate | trivial `G`; `A = 0` | `actionLip ≡ 0`, ergodicity forces `A = ℂ1`, kernel `ℝ1`; `A = 0`: `selfAdjoint A = {0}`, `L = 0` satisfies every field | true in both |
| 4.4 faithful representation route | `X ≠ 0` in `Lie(K)` | `exp(tX) ≠ 1` for small `t ≠ 0`, some `π_g(g) ≠ 1`, `dπ_g(X) ≠ 0`; finite dimension gives finitely many `dπ` with trivial common kernel; common kernel closed with `Lie = 0`, discrete compact, finite; finitely many more reps kill it | sound; trivial `K`: `n = 0` |
| 4.4 kernels | `T`, `π₀ = 1 ⊕ z`; `ℤ/2`, `1 ⊕ sgn`; `T`, `1 ⊕ z²` | `χ = 2 + 2cos θ`, support of `χⁿ` is `{−n..n}`; `χ(1) = 4, χ(−1) = 0`, `k_n = 2δ_1`, `P_n = id`, `δ_n = 0`; `|1+z²|²` maximal at `0, π`, `δ_n → π/2` | all three Checks correct |
| 5.1 `M_ε` regularization | `N_ε(v) = inf_w(M(w) + ε⁻¹‖v−w‖)` | `N_ε ≤ M`, `N_ε(v) ≤ ε⁻¹‖v‖`; with `‖q(w)‖ ≤ RM(w)`: `N_ε(v) ≥ ‖q(v)‖/max(R,ε)`; `|(φ−ψ)(v)| ≤ M(w)ρ_M + 2‖v−w‖` gives `ρ_{M_ε} ≤ ρ_M + 2ε` | `quantumGHEDist_eq_quotientQuantumGHEDist` sound |
| 5.1 Check 2 | `ℝ²` vs `ℝ`, `M_δ` | `φ_t − ψ = (t−1/2)(a₁−a₂) + ((a₁+a₂)/2 − b)`, sup `|t−1/2| + δ`, Hausdorff `1/2 + δ`; lower bound `|1 − 0|/2` | `dist_q = 1/2` |
| 5.2 compatibility needed | `P = id`, `L_F = L_E/2` | `P`-estimates hold, `L_E(b) ≤ L_F(b)` fails, diameters `1` vs `2`, `dist_q ≥ 1/2` | Check correct |
| 5.3 triangle, `IsLipNorm` only | glue `G = max(M_EF, M_FH)`, `K = inf_b G` | `inf_c K(a,c) = inf_b max(M_EF(a,b), L_F b) = L_E a`; quotient ball of `G` totally bounded; `ρ_K = ρ_G` on endpoints up to `(1+ε)` | holds without closedness |
| 5.3 diameter inequality (R01 locator) | `ρ_M(μ_j, ν_j) < d + ε` | `ρ(μ₁,μ₂) ≤ diam F + 2(d+ε)` | Lemma 13.6 exactly |
| 5.3 two-point spaces | `d = 1` vs `d = 2` | `ghDist = 1/2` (cross distances `1/2, 3/2`, `2 ≤ 1/2+1+1/2`); `dist_q ≥ 1/2` | equality |
| 5.4 `quantumGHEDist_eq_zero_iff` ⟸ | `T` isometry, `M_δ = max(L_E a, L_F b, δ⁻¹‖Ta − b‖)` | exact quotients at `b = Ta`, `a = T⁻¹b`; Hausdorff `≤ δ` | `0`; ⟹ needs closedness (Check 3) |
| 5.5 `exists_limit_of_cauchySeq_quantumGHEDist`, degenerate | constant sequence; `E_n = ℝ` in `Type u` | limit `E`; `ULift ℝ` with its normed structure | statable and true |
| 5.5 limit made complete and closed | `(D, L_D)` of Cor 12.10, `D̄` with closure `L̄` | `L̄ ≤ L_D` on `D`; for `L̄(a) ≤ 1` approximants `a′ ∈ D` with `L_D(a′) ≤ 1` arbitrarily close, so the bridge `δ⁻¹‖a − a′‖` gives `dist_q(D, D̄) ≤ δ` for all `δ`; triangle inequality | limit may be taken complete closed, as the Lean asks |
| 5.6 `totallyBounded_quantumGHEDist_iff`, necessity | `dist_q(E,F) < ε/3`, net `ψ_i` of `S(F)` | `φ_i` with `ρ_M(φ_i,ψ_i) < ε/3`; any `φ`: `ρ(φ, φ_i) ≤ ε/3·3`; `ρ_M` on left states equals `ρ_{L_E}` by homogeneity and approximate lifts | `Scv_E(ε) ≤ Scv_F(ε/3)`; `G(ε) = max` over an `ε/3`-net of terms |
| 5.6 sufficiency, hypothesis translation | Lean RHS `Scv ≤ G` | `Fin ≤ Cov ≤ Scv ≤ G` (rieffel00 2489), so Rieffel's `Fin` hypothesis holds; `S_n(d)` totally bounded by Prop 13.7; centres moved to terms with `4ε` | iff holds in `Scv` form |
| 5.6 diameter clause redundant | two states at distance `d`, segment `φ_t` | `ρ(φ_s,φ_t) = |s−t|d`; a `1`-net point covers a sub-segment of diameter `≤ 2`, so `Scv(1) ≥ d/2`, `diam ≤ 2Scv(1) ≤ 2G(1)` | README's Check correct; `D = 2G(1)` |
| 5.6 `Fin` needs the clause | `(ℝ², t|a₁−a₂|)` | `Fin(ε) ≤ 2`, diam `1/t → ∞` | kept for the `Fin` form, as stated |
| 5.6 covering numbers | `[0,1]`; simplices `ℝ^d` | `Scv(ε) = ⌈1/(2ε)⌉` (`ε = 1/4`: `{1/4, 3/4}`); vertex states pairwise at `1`, `Scv(ε) ≥ d` for `ε < 1/2` | as stated |
| 5.6 `Fin_E(ε)` for `C([0,1])` | net `{δ_{k/n}}` | hull within `W₁ ≤ 1/(2n)`; `n = ⌊1/(2ε)⌋ + 1`, `dim = n+1 ≤ 1/(2ε) + 2 ≤ 1/ε + 2` | holds |
| 5.6 families | `(ℝ², t|a₁−a₂|)`, `t → 0`; simplices | LHS fails by Lemma 13.6, RHS fails (no `D`); LHS fails, RHS fails (`Scv`) | both sides agree on the non-examples |
| 6.0 twisted relations | `(δ_p ∗ δ_q)(r) = δ_q(r−p)σ(p,r)` | nonzero at `r = p+q`, value `σ(p,p)σ(p,q) = σ(p,q)` | `λ_Θ(p)δ_q = σ(p,q)δ_{p+q}` |
| 6.0 `d = 2` convention | `Θ₁₂ = −θ` | `W_(1,0)W_(0,1) = e^{−πiθ}W_(1,1)`, `W_(0,1)W_(1,0) = e^{πiθ}W_(1,1)` | `U₂U₁ = e^{2πiθ}U₁U₂`, N6 line 484 |
| 6.1 `Φ_θ(W_(m,n)) = e^{πiθmn}U₁^mU₂^n` | `W_(m,0)W_(0,n)` | `σ((m,0),(0,n)) = e^{πimΘ₁₂n} = e^{−πiθmn}`, so `W_(m,n) = e^{πiθmn}W_(1,0)^mW_(0,1)^n` | consistent with `W_(1,0) ↦ U₁`, `W_(0,1) ↦ U₂` |
| 6.1 intertwinings | `V*π_τ(U_j)V` on `δ_(m,n)` | `U₁`: phase `e^{πiθmn − πiθ(m+1)n} = e^{−πiθn} = σ((1,0),(m,n))`; `U₂`: `e^{πiθmn + 2πiθm − πiθm(n+1)} = e^{πiθm}` | both hold |
| 6.3 Følner boxes | `d = 2`, `n = 1`, `k = (1,0)`; `k = (1,1)`; general | `{0,2}×{0,1}`: `4 = 2·1·2`; intersection `{(1,1)}`: `4+4−2 = 6 ≤ 2·2·2 = 8`; `x ∈ F ∖ (k+F)` has `x_i − k_i ∉ [0,n]`, at most `|k_i|` values per `i`, symmetric in `±k` | estimate and Checks correct; `d = 1` gives `2|k|` |
| 6.3 Harper | `θ = 1/2` | `U₁U₂ = −U₂U₁`, `U₁U₂* = −U₂*U₁`, `H² = X² + Y²`, `U₁², U₂²` commute: spectrum `2cos2s + 2cos2t + 4`, `‖H‖ = √8` | `2√2` vs `4` at `θ = 0` |
| 6.4 support function | `a = (−1,−3)`, `e = (1,1)` | `R = 2`: `‖(1,−1)‖ − 2 = −1 = max(a)`; `R = 1`: `‖(0,−2)‖ − 1 = 1` | common `R` needed |
| 6.5 periodicity | `N₁₂ = −N₂₁ = 1` | `σ_{Θ+N}/σ_Θ = e^{πi(p₁q₂ − p₂q₁)}`; `b(p+q)/(b(p)b(q)) = e^{πi(p₁q₂ + q₁p₂)}`; ratio `e^{2πip₂q₁} = 1` | consistent |

**Checks per definition.** Every `### k.n` with a definition carries at least three Checks (0.1–0.5: 4/4/4/5/3; 1.1–1.6: 3/4/4/4/3/3; 2.1–2.5: 4/4/3/3/4; 3.1–3.6: 4/4/4/3/3/3; 4.1–4.6: 4/3/4/4/3/3; 5.1–5.6: 4/3/3/3/3/4; 6.0–6.5: 4/4/3/4/3/4), each with a computed value, a degenerate case or a non-example; every layer ends with `### Examples` and `### Dependencies`; every target carries a `*Needs:*` line.

**Counts.** 33 source locators verified at their lines (table), 3 slips (R01) and 1 unstated intermediate (R02); 15 supplier citations resolved on main or at open heads, none missing; 52 adversarial rows; 9 library declarations opened at the pins with file and line; 40 Lean declarations elaborated and compared with the README; 18 sorried statements probed for padding, none closes.

## Not verifiable

- hkls81 (Høegh-Krohn–Landstad–Størmer, Ann. of Math. 114 (1981)): JSTOR, paywalled; consumed only through VonNeumannAlgebras V8.CompactErgodicActions, whose review owns the check.
- Rieffel 2000 Lemmas 13.8–13.11 (lines 2608–2665) were read for their statements and the shape of the bridge `N(u,v) = (nδ)⁻¹ max|μ(u) − ν(v)|`; their proofs were not rechecked line by line, since the README cites only Proposition 13.7 for the conclusion.

## Source issues

- **Misprint** in rieffel99 at Theorem 9.11, printed page 26: the source says the metric must be convex, midpoint balanced and "midpoint convex"; it should be "midpoint concave", the condition of its Definition 9.5 used in Theorem 9.7; affects nothing.
