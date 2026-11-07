# Design of YangMillsConnectionsAndCaloricGauge

Deliverables: `packages/YangMillsConnectionsAndCaloricGauge/design/README.md` (ten layers, 52 targets,
every target with a `*Needs:*` line and every definition with at least three Checks),
`packages/YangMillsConnectionsAndCaloricGauge/design/plan.json` (the same 52 targets as data, three
gaps), and the updated `packages/YangMillsConnectionsAndCaloricGauge/sources.toml` (locators and
`cited_for` set to the design; `sources check`: 0 problems). Baseline: Mathlib
`1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`.

## What the design covers

| Final target of the brief | Where |
| --- | --- |
| 1 gauge invariance of finite energy | §3.2 (with §§2.3–2.4, 3.1) |
| 2 Uhlenbeck's lemma, ball and punctured ball, general compact `G` | §4.1, §4.2 (with §4.3) |
| 3 good global gauge theorem | §5.2 (with §§3.3, 3.4, 4.4, 5.1) |
| 4 topological class | §§5.3, 5.4, 5.6 (with §2.5) |
| 5 topological triviality | §5.5 |
| 6 characteristic numbers depend only on the class | §§6.1, 6.2 (with §1.4) |
| 7 Bogomol'nyi bound | §1.5 (pointwise), §6.3 (integrated) |
| 8 instanton number for `SU(2)` | §6.4 (with §7.6 for BPST) |
| 9 ground state energy | §7.7 (with §§7.1–7.6) |
| 10 local well-posedness of the heat flow | §§9.1–9.4 (with Layer 8) |
| 11 convergence to a flat connection; small energy | §9.5, §9.4 |
| 12 Dichotomy and Threshold Theorems | §9.6, §9.7 |
| 13 existence and uniqueness of the caloric gauge | §§10.1–10.2 |
| 14 caloric manifold and tangent spaces | §§10.3–10.5 |

Suppliers (all on the content repository's main branch): PDE (§§1.2, 1.4, 1.6, 2.2, 2.3, 6.1, 6.3,
7.1–7.3), SmoothBundlesConnections (B3.1, B4.1, B4.2), CharacteristicClasses (C4 item 1),
DifferentialGeometry (Layers 0–1, 5.2–5.4, 8, 10), AlgebraicTopology (Stage 8 item 3), LieGroups
(Layers 0–2), Yamabe (Y2 item 1). No supplier is an open pull request and no citation depends on an
open revision.

### Route decisions that depart from the brief

- **Instanton number by degree theory, not by clutched bundles.** §6.2 computes every characteristic
  number on `ℝ^d` by transgression, `χ_f(A) = ∫_{S^{d−1}} O_(∞)*ω_f` with a bi-invariant Cartan form, and
  §6.4 obtains `c₂ = −deg(Φ⁻¹ ∘ O_(∞))` from DifferentialGeometry Layer 10. The brief routed integrality
  through the bundle on `S⁴` clutched by `O_(∞)`, CharacteristicClasses C4's integral comparison and
  FourManifolds Layer 5's clutching comparison. The degree route needs none of them, so neither
  CharacteristicClasses C7 nor FourManifolds is a supplier; FourManifolds appears only in Checks.
- **The ground state energy without Bott's theorem or compactness.** §7.5 proves the
  Gursky–Kelleher–Streets gap directly on `ℝ⁴` in the root-free form `∫|F^±|² ≥ 16π²/γ₀²` (Weitzenböck,
  improved Kato and the sharp Sobolev inequality of Yamabe Y2), and §7.7 obtains `E_GS = 16π²/γ₀²`,
  attained by a BPST connection embedded through an `𝔰𝔲(2)` on which `γ₀` is attained. The source
  (OhTataru-TopClass §6) uses Bott's theorem `π₃(G) ≅ ℤ` for simple simply connected `G` and the
  splitting into simple ideals; the value agrees with its `16π²/⟨α, α⟩` since `γ₀ = |α|` for a highest
  root (its Lemma 6.4). Consequently the Uhlenbeck compactness and bubbling package for harmonic
  Yang–Mills connections (OhTataru-YMHF Theorem 2.2), which the brief allowed but no target needs any
  longer, is not planned.
- **The generalised Coulomb condition** (OhTataru-YMHF Theorem 2.23, Proposition 7.29) and the bounds
  for linearised caloric data (§§7.3–7.4) are not in the brief's final targets and serve only the wave
  equation; the README assigns them to the hyperbolic Yang–Mills consumer.
- **`Suggested.lean`** is not a deliverable of this job; the README therefore backticks no Lean name of
  its own, and `plan.json` carries proposed names (`YangMills.*`).

## Ownership

- Searched by object with `roadmaps grep` on main and all open roadmap pull requests at their heads
  (index of 2026-11-07): `caloric`, `harmonic Yang`, `frequency envelope` have no match; `Uhlenbeck` and
  `Coulomb gauge` match only FourManifolds (Layer 5, §5.3), InstantonFloerTheory (its `SO(3)` adapter on
  a 4-ball, consuming FourManifolds), SeibergWittenTheory (abelian Coulomb representatives),
  RelativisticQuantumFieldTheory (Maxwell's Coulomb gauge) and unrelated Ornstein–Uhlenbeck hits;
  `Yang.Mills` matches SmoothBundlesConnections (which stops before the energy), LocalVariationalFieldTheory
  (jet-level Euler–Lagrange identity) and FourManifolds. None owns any target here.
- **Overlap with FourManifolds Layer 5.** FourManifolds plans Uhlenbeck's small-curvature Coulomb gauge
  on the unit 4-ball for `SU(2)` and the BPST instanton on its `S⁴` carrier. FourManifolds is earlier in
  the merge order (line 125), so it cannot consume this roadmap. §4.1 owns the lemma for every compact
  `G` and every `d ≥ 3`, of which FourManifolds' statement is the case `G = SU(2)`, `d = 4` (a Check);
  §7.6 owns the explicit BPST potential on `ℝ⁴`, the kept variant the heat flow needs. The README's
  Scope records both. Two proofs of one lemma at two generalities remain; removing it would need
  FourManifolds to move after this roadmap, which is for a human to decide.
- The open pull request SobolevDifferentialForms (real-valued Sobolev forms on bounded domains, not in
  the merge order) is not consumed: this roadmap works with `𝔤`-valued coefficient functions through Tau
  Ceti's weak derivatives and PDE.
- `roadmaps overlaps YangMillsConnectionsAndCaloricGauge`: "No roadmap YangMillsConnectionsAndCaloricGauge
  on main or in an open roadmap pull request" (a new roadmap; no dropped ids).
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. Lean names
  outside TauCetiRoadmap were checked by hand at the pins (file and namespace): `Matrix.unitaryGroup`,
  `Matrix.specialUnitaryGroup`, `NormedSpace.exp`, `NormedSpace.exp_add_of_commute`, `Matrix.isUnit_exp`,
  `ContinuousMap.Homotopic`, `ContinuousMap.Homotopic.equivalence`, `HomotopyGroup`, `MeasureTheory.Lp`,
  `MeasureTheory.eLpNorm_le_eLpNorm_fderiv_of_eq`, `MeasureTheory.Measure.toSphere`,
  `homeomorphUnitSphereProd`, `Submodule.ClosedComplemented`, `Orientation.volumeForm`,
  `LieAlgebra.IsKilling.exists_isSl2Triple_of_weight_isNonZero`, `TauCeti.HasWeakFDerivOn`, `TauCeti.W1p`,
  `TauCeti.Wkp`, `TauCeti.W1p.morreyRepresentative`, `TauCeti.enorm_sub_le_of_mem_ball_of_finrank_lt`,
  `TauCeti.exists_isOpenEmbedding_normalTube`, `Orientation.formHodgeStar`,
  `Orientation.wedge_formHodgeStar_apply`, `Orientation.formHodgeStar_formHodgeStar_of_even`,
  `TauCeti.heatKernel`.

## Notions moved down from later roadmaps

None. Every supplier is on main.

## Gaps and proposed Part IIs

| Slug | Supplier and section | What is missing | Needed by |
| --- | --- | --- | --- |
| `lp-neumann-ball` | PDE, Layer 5 (new section; a PDE, Part II item) | `W^{2,p}` solvability of the Neumann problem on the unit ball, `1 < p < ∞`, and `‖a‖_{W^{1,p}} ≲ ‖da‖_{L^p} + ‖∂^ℓa_ℓ‖_{L^p}` for 1-forms with vanishing normal component; PDE on main treats boundary regularity only for the Dirichlet problem, and its open revision (mixed boundary conditions) adds only the weak `H¹` Neumann problem | §4.1 |
| `hardy-inequality` | PDE, §1.4 (new item) | `‖u/|x|‖_{L^p(ℝ^d)} ≤ (p/(d−p))‖∇u‖_{L^p}`, `1 ≤ p < d`; at neither pin (Tau Ceti has only the Hardy–Littlewood maximal and rearrangement inequalities, Mathlib only unrelated `Hardy` names), and no roadmap plans the `d`-dimensional form (OperatorTheory/UnboundedOperators' open revision has the half-line case) | §§5.2, 5.3, 6.1 |
| `compact-su2-subalgebra` | LieGroups, Layer 6 (new item) | an `𝔰𝔲(2)` subalgebra of a noncommutative compact Lie algebra on which `γ₀` is attained (highest root, Mathlib's `𝔰𝔩₂`-triples, OhTataru-TopClass Lemma 6.4); LieGroups' open revision adds rank-one `𝔰𝔲(2)` subalgebras for every root (its Layer 6, "Rank-one representatives") but not the comparison of `γ₀` with the largest root length; a revision is not cited as a supplier | §7.7 |

## Sources

All texts the design relies on were read in the sources cache: OhTataru-YMHF, OhTataru-TopClass,
OhTataru-Threshold, OhTataru-CaloricLWP (consumer background), GurskyKelleherStreets-GapTheorem,
Rade-YMHeat (consumer background). Settled as uncertified and cited by locator only, with the certified
restatements used for every step: Uhlenbeck-LpCurvature (restated as OhTataru-TopClass Theorem 3.11),
Uhlenbeck-RemovableSingularities (Theorem 3.12), FreedUhlenbeck-Instantons, DonaldsonKronheimer,
Bogomolnyi-Stability (reproved in OhTataru-TopClass Lemma 1.31), MimuraToda-TopologyLieGroups (Scope
only). No new text was needed, none was fetched, and no `needs-references.toml` was written. The
locators are into the arXiv versions read (`version_note` in the manifest); published numbering was
not compared.

## Adversarial pass

Conventions first, then one row per target.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Gauge action `O·A = Ad(O)A − O;x` | `U(1)`, `A = i x₁dx₂`, `O = e^{iφ}`; SmoothBundlesConnections B4.2 and B3.1 | `O·A = A − i dφ`; B4.2 left action `Ad(u)A − du u⁻¹` with `u = O`; B3.1 change of section `s' = sg` gives `Ad(g⁻¹)A + g⁻¹dg`, equal to `O·A` for `O = g⁻¹` since `−∂(g⁻¹)g = g⁻¹∂g` | agrees | witness in Conventions |
| Normalisation of `⟨F ∧ F⟩` | `F₁₂ = F₃₄ = X`; OhTataru-TopClass (1.26) versus OhTataru-YMHF (6.11) | with the factor `¼`: `⋆⟨F∧F⟩ = 2|X|² = |F|²` (equality); without it: `8|X|² > 2|X|²` | source (1.26) inconsistent | Conventions pin `2(⟨F₁₂,F₃₄⟩ − ⟨F₁₃,F₂₄⟩ + ⟨F₁₄,F₂₃⟩)`; Check in §1.5 |
| Sign of `c₂` against the degree | `O = Φ(x/|x|)`; BPST | `∫_{S³}Φ*tr((dgg⁻¹)³) = −24π²`, `T_f(−O;x) = ⅓tr(R³)`, so `χ = −8π² deg`; BPST: `O_(∞) = Φ(x̄/|x|)`, degree `−1`, `χ = ℰ_e = 8π²`, `c₂ = 1` | consistent; source says only "appropriate orientations" (line 2369, and its §6 has `κ` versus `−κ`) | `c₂ = −deg(Φ⁻¹∘O_(∞))` pinned with orientations |
| Fourier/Laplacian normalisation | `A = 0` in §8.2; heat semigroup | `Δ⁻¹` multiplier `−(4π²|ξ|²)⁻¹`; heat multiplier `exp(−4π²s|ξ|²)` (PDE §6.3) | consistent with PDE | Check in §8.2 |
| Energy identity factor | `U(1)`, mode `αe^{2πiξ·x}`, `ξ·α = 0` | `d/ds(4π²|ξ|²|α|²e^{−8π²|ξ|²s}) = −32π⁴|ξ|⁴|α|²e^{…}` and `Σ_j|∂^ℓf_ℓj|² = 16π⁴|ξ|⁴|α|²e^{…}`: factor `2` | source (1.19), (5.11) print factor `1` | §9.1 states factor `2`, Check |
| 1.1 structure group | `U(1)`; `SU(2)` with `−tr`; `{±1}`; `T² ⋊ ℤ/2` | `|i|² = 2`, `[i,j] = 2k`, `[j,k] = 2i`, `[k,i] = 2j`; `𝔤 = 0`; `ad`-invariant `diag(1,2)` inner product moved by the swap | `Ad(G)`- and `ad`-invariance differ for disconnected `G` (source line 98 says "equivalently") | `Ad(G)`-invariance required; non-example Check |
| 1.2 nearest-point retraction | `U(N)`; `U(1)`; `{±1}`; `M = 0`; `M_t = [[1,t],[0,1]]` against the Gram–Schmidt retraction | nearest unitary is the polar factor `M(M*M)^{−1/2}`, `dπ(1)H = (H − H*)/2`; `U(1)`: `π(re^{iθ}) = e^{iθ}`, `dπ(1)(a+ib) = ib`; `{±1}`: `dπ = 0`; `|0 − g|² = N` for all `g ∈ U(N)`; `π(M_t) = (4+t²)^{−1/2}[[2,t],[−t,2]]` (`UᵀM_t` symmetric, trace `> 0`, det `1`), squared distance `4 + t² − 2√(4+t²) < t²` (`t = 1`: `0.528 < 1`); Tau Ceti's normal tube is only an open embedding | Gram–Schmidt retraction excluded by nearest-point property; `𝒰` cannot be global; smoothness of the inverse not at the pin | route adds the inverse function theorem; four Checks in §1.2 |
| 1.3 gauge identities | `O = g exp(x₁i)`, `g = exp(πk/4)`, `B = j` in `SU(2)` | `Ad(g)i = j`, `Ad(g)j = −i`; `∂₁(Ad(O)j)|₀ = Ad(g)[i,j] = 2k = [O;1, Ad(O)j]`; source's `Ad(O)[O;1, j] = Ad(g)[j,j] = 0` | source Lemma 3.4(3) typo | corrected rule stated, Check |
| 1.4 transgression and Cartan forms | pure gauge; `k = 2`, `SU(2)`; general `X` (not contractible) | `dA = −R∧R`, `A∧A = R∧R`, `F = 0`, `T_f = ⅓tr(R³)`; `T_f = tr(A∧dA + ⅔A³)` reproduces OhTataru-YMHF's `Y`; path `tA` is global so no contractibility needed | holds | none |
| 1.5 pointwise Bogomol'nyi | SD `X(dx¹²+dx³⁴)`; `X dx¹²`; ASD `X(dx¹²−dx³⁴)` | `2|X|² = 2|X|²`; `|X|² > 0`; `⋆⟨F∧F⟩ = −2|X|²`; cross term `F⁺∧F⁻ = −⟨F⁺,F⁻⟩vol = 0` | holds both directions of "iff" | none |
| 1.6 `γ₀` and cubic bound | `𝔰𝔲(2)`, `−tr`; BPST curvature at a point; commutative `𝔤` | ratio `√8/2 = √2`; `⟨ω,𝔉_ω(ω)⟩ = ±6√2⟨ω¹,[ω²,ω³]⟩`, `6√2·4λ³ = 24√2λ³ = (2√6/3)√2(6λ²)^{3/2}`; `0 = 0`; `𝔉_{F⁻}(ω) = 0` for SD `ω` since SD and ASD skew matrices commute | sharp | constant `2√6/3` derived in this normalisation (GKS's `γ₁ = 2γ₀/√3` in theirs) |
| 2.1 `G^{k,p}_loc` | `exp(log log(1/|x|)X)`, `d = 4`; finite `G`; vortex `d = 3` | `∫|∇²φ|² ≈ ∫dr/(r log²)`, `∫|∇φ|⁴ ≈ ∫dr/(r log⁴)`, finite, no limit at `0`; locally constant; `∫ρ^{−3}dx = ∞` | critical class not in `C⁰` | Checks |
| 2.2 approximation | `V`, `W` adjacent half-balls | the cut-off `h = 0` on `V`, `1` on `W` cannot be continuous | source hypothesis `V ∩ W = ∅` too weak | disjoint closures required; interior version (no `W^{k,p}` extension needed) |
| 2.3 products and inverses | `O⁻¹ = O*`; `k = 2` Leibniz | `∂²(O₁O₂) ∋ ∂O₁∂O₂ ∈ L^d·L^d ⊆ L^{d/2}`; `|O| = √N` | holds | inverse by the adjoint, no approximation |
| 2.4 Maurer–Cartan, `Ad` | `𝔤`-valuedness of `O;x` | smooth approximants have `O_n;x ∈ 𝔤`, `𝔤` closed | holds | route via 2.2 |
| 2.5 homotopy class on annuli | `O = Φ(x/|x|)`; disconnected `G` (`{±1}`, constant `−1`) | class of degree `1`, no extension; for `{±1}` the constant `−1` extends but is not homotopic to `id` | source's "`[id]`" wrong for disconnected `G` (Lemma 3.21 joins `O_n(0)` to `id`) | "class of a constant map" |
| 3.1 rough connections | dilation; angular `i dθ`, `d = 3`; finite `G` | `‖F[A_λ]‖_{L^{d/2}} = ‖F‖`; `d = 3`: `‖F_λ‖_{L²} = λ^{1/2}‖F‖`; `∫ρ^{−3} = ∞` | holds | Checks |
| 3.2 gauge invariance (target 1) | `U(1)`; `O = Φ(x/|x|)`, `A = 0` on `ℝ⁴∖{0}`; finite `G` | `F` unchanged; `F[O·A] = 0` with `|O;x| ≈ 1/|x|`; all zero | holds | none |
| 3.3 patching | Proposition 3.9 bound | the source writes `A ∈ W^{k,d/k}` and bounds `‖A‖_{W^{k−1,d/k}}` | typo | `W^{k−1,d/k}` stated |
| 3.4 concentration radii | `F = 0`; `‖F‖ ≤ ε`; BPST | `r_c = ∞`, `R_c = 0`; `r_c = ∞`; `‖F‖²_{L²(B_r)} = 8π²r⁴(r²+3)/(r²+1)³` (from `∫(v^{−3}−v^{−4})dv`), `r_c ≈ (ε²/24π²)^{1/4}` | holds | Checks |
| 4.1 Uhlenbeck on the ball (target 2) | `U(1)`; `A = 0`; `SU(2)`, `d = 4`; linearisation | `Δφ = −i∂·A`, `∂_νφ = −i x·A`, compatible by the divergence theorem; constants; FourManifolds' bound with `W^{1,2} ⊆ L⁴`; linearised gauges `Δψ = 0`, `∂_νψ = 0` give constants | uniqueness needs the bound inside the class | bound made part of the uniqueness class |
| 4.2 punctured ball (target 2) | `A = −O;x`, `O = Φ(x/|x|)`; arbitrary `F ∈ L^{d/2}` | `∫|x|^{−4} = ∞` so `A ∉ W^{1,2}(B'₁)`, `O⁻¹·A = 0`; small on small punctured balls | holds | Checks |
| 4.3 div–curl regularity | interior induction | `∂^{(m)}[A,A] ∈ L^{d/(m+2)}` from lower orders by Hölder | holds | none |
| 4.4 good gauge on a ball | small curvature; dilation | reduces to 4.1; bound depends on `R/r` only | holds | none |
| 5.1 good representatives | `η' ≡ 1` with `O = Φ(x/|x|)`; `{±1}`; BPST | `|∂A| ≈ |x|^{−2}`, `∫_{B₁}|x|^{−4} = ∞`; two constant gauges; `B = −Im(x̄dx)/(|x|²(1+|x|²)) = O(|x|^{−3})` | source's `1 − χ ∈ C_c^∞` admits a non-`W^{1,d/2}_loc` potential | `η' = 0` near `0` required |
| 5.2 good global gauge (target 3) | flat `F`; `A ∈ Ẇ^{1,d/2}`; dilation | `r_c = ∞`, `R_c = 0`, `O_(∞)` constant; `(1, A)`; `(r,R) ↦ (r/λ,R/λ)` | source's higher-regularity hypothesis on `L^p(B_R)` only | hypothesis on `ℝ^d` (stronger, safe) |
| 5.3 uniqueness of the gauge at infinity | `{±1}`, `A = 0`; constant gauge `c` | `O_(∞) = 1` and `−1` not homotopic; `O_(∞) ↦ cO_(∞)`, and `O_(∞)h` same potential | source Proposition 1.6(1) false for disconnected `G` | homotopy up to left and right constants |
| 5.4 topological class (target 4) | `{±1}`; `O(4)`, `d = 4`; `U(1)` | point; conjugation by `q ↦ q̄` sends `L_u` to `R_ū`, exchanging summands of `π₃(SO(4))`; `[S^{d−1}, U(1)]` a point | quotient by `G × G` needed | `Top(d,G)` defined as the double quotient |
| 5.5 trivial class (target 5) | `−ηO;x`, `O = Φ(x/|x|)` | `χ = −8π² ≠ 0`, while `χ = 0` on `Ḣ¹` | consistent | Check |
| 5.6 `Top(4,G) ≅ π₃(G)` | `SU(2)`; `U(1)` | `ℤ`; `0` | needs connected `G` | hypothesis stated |
| 6.1 characteristic numbers | `U(1)`, `d = 4`; `SU(2)`; dilation | `∫dα∧dα = 0`; `8π²c₂`; `λ⁴f(F∧F)(λx)` integrates to the same | `[O_(∞);x, b]` needs Hardy | gap `hardy-inequality` |
| 6.2 topological invariance (target 6) | `O = Φ(x/|x|)`; constant `O_(∞)`; odd `d` | `−8π²`; `0`; no `2k = d` | holds; `ω_f` bi-invariant, so invariant under the double quotient | none |
| 6.3 Bogomol'nyi integrated (target 7) | SD/ASD on separate regions; BPST; `SU(2)` | `|χ| = |∫|F⁻|² − ∫|F⁺|²| < ℰ_e`; `ℰ_e = χ = 8π²`; `ℰ_e = 8π²c₂ + 2‖F⁺‖²` (FourManifolds) | equality iff one of `F^±` vanishes globally | Check |
| 6.4 instanton number (target 8) | `Φ(x/|x|)`; BPST; reversed orientation of `S³` | `c₂ = −1`; `deg(x ↦ x̄/|x|) = (−1)³ = −1`, `c₂ = 1`; all signs flip | consistent | orientation part of the statement |
| 7.1 harmonic connections | `U(1)`, `F = i dx¹²`; `F = iψ(x₁)dx¹²`; BPST | harmonic, infinite energy; `∂^ℓF_ℓ2 = iψ' ≠ 0`; ASD hence harmonic | holds | Checks |
| 7.2 regularity | small `‖A‖_{W^{1,2}}` in Coulomb gauge | quadratic terms `[A, ∂A] ∈ L^{4/3}·…` bootstrapped through `W^{2,p}` | holds (route) | none |
| 7.3 removability and decay | BPST | `|F| = √48(1+|x|²)^{−2} ≈ √48|x|^{−4}` | rate attained | Check |
| 7.4 Weitzenböck and Kato | commutative `𝔤`; BPST | cubic term `0`; equality in 1.6 at every point | holds | constant `√6/3` derived |
| 7.5 energy gap | `SU(2)`, `γ₀ = √2`; `𝔰𝔲(2)⊕𝔰𝔲(2)` opposite instantons; unit conversion with GKS | `∫|F⁺|² ≥ 8π²`, SD BPST equality; `ℰ_e = 16π² = 0 + 32π²/2`; GKS `⟨A,B⟩ = −½tr` on `so(4)` equals `−tr_ℂ` on `𝔰𝔲(2)`, all-index norm doubles, so `16π²|κ| + 32π²` becomes `8π²|c₂| + 16π²`; `Y(S⁴) = 12(8π²/3)^{1/2} = 8√6π`, `8√6π/(6·√6/3·γ₀) = 4π/γ₀` | sharp | root-free constant `32π²/γ₀²` |
| 7.6 BPST | origin; energy; charge | `F(0) = Φ(dx̄∧dx)`, `Φ(i)`-component `2(dx¹²−dx³⁴)`; `|F|² = 48(1+|x|²)^{−4}`, `ℰ_e = 96π²·B(2,2)/2 = 96π²/12 = 8π²`; `c₂ = 1` | holds | none |
| 7.7 ground state (target 9) | `SU(2)`; rescaled inner product; commutative `G`; scaling of `γ₀` on the embedded `𝔰` | `16π²/2 = 8π²`; `E_GS ↦ cE_GS`; `+∞`; `γ₀(𝔰) = √2/√c`, `ℰ_e = 8π²c = 16π²/γ₀²` | holds; agrees with source's `16π²/⟨α,α⟩` | needs gap `compact-su2-subalgebra` |
| 8.1 spaces and envelopes | single block; `2^k` growth; `ℋ` versus `Ḣ¹` | envelope `2^{−δ|k−k₀|}c`; growth rate `1 > 1 − ε`; blocks `1/k`, `Σ1/k = ∞` | `ℋ ⊊ Ḣ¹` | Checks |
| 8.2 `Δ_A` | `A = 0`; pure gauge; diamagnetic | `−(4π²|ξ|²)⁻¹`; `Ad(O)Δ⁻¹Ad(O⁻¹)`; `⟨B,[A_j,B]⟩ = 0` | constant for the `ℓ¹Ḣ²` bound also depends on `‖∂·A‖_{ℓ¹L²}` (source's proof) | dependence stated |
| 8.3 covariant heat, `L²` | heat equation; scaling | `‖B‖² + 2∫‖∇B‖² = ‖B(0)‖²`; `λ⁴·λ^{−2}·λ^{−2} = 1` for `G` | holds | none |
| 8.4 covariant heat, `L^p` | free heat block; Duhamel with constant `G` | `exp(−c4^ks)` decay; `‖B‖ ≈ s‖G‖` | source (4.34) exponent `1 − α/2` mismatches (4.32) | exponent `1 − β` |
| 9.1 flows | energy mode; flat; scaling; caloric gauge transformation | factor `2` (above); `D^ℓF_ℓj = 0`; `∂_sO = OA_s` gives `(O·A)_s = Ad(O)A_s − ∂_sOO⁻¹ = 0` | source factor `1` | stated with `2` |
| 9.2 covariant bounds | weights from `0` | interval taken as `[0, s₁)` | holds | none |
| 9.3 local well-posedness (target 10) | dilation; flat data; `U(1)` | `s₀(a_λ) = λ^{−2}s₀(a)`; `s₀ = ∞`; `A(s) = ∇φ + e^{sΔ}a^{df}` | existence time not a function of `‖a‖` | Check |
| 9.4 caloric size (targets 10–11) | dilation; flat; BPST | `λ⁶λ^{−4}λ^{−2} = 1`; `Q = 0`; BPST `∉ L⁴` and static with infinite `L³L³` norm | holds | none |
| 9.5 flat limit (target 11) | `U(1)`; pure gauge | `A_∞ = ∇φ`; `A_∞ = a` | C¹ claimed by the source (Lemma 5.33) only on sets with `Q` bounded | stated along curves with uniform `Q` |
| 9.6 Dichotomy (target 12) | small energy; bubble energy | first alternative; `ℰ_e(Q) ≤ ℰ_e(a)` | source asserts `x_n → x₀`, not shown in its proof | clause omitted |
| 9.7 Threshold (target 12) | `SU(2)`; BPST; commutative `G` | threshold `16π²`; `ℰ_e = 8π² < 16π²` but `Q = ∞`, not `Ḣ¹` | the `Ḣ¹` hypothesis is necessary | Check |
| 10.1 flat connections are pure gauges | `U(1)`; `a = 0`; uniqueness | `O = e^{iφ}`; constants; `(O'O⁻¹);x = 0` on connected `ℝ⁴` | holds | none |
| 10.2 caloric gauge (target 13) | `U(1)`; pure gauge; constant conjugation | caloric iff `∂·a = 0`, `Cal(ã) = ã − ∇φ`; `Cal(−O;x) = 0`; `d(Ad(c)a, a) = 0` | holds | Checks |
| 10.3 `𝒞 ⊆ ℋ` | `U(1)` | `ℰ_e = ∫|∇α|² − ∫(∂·α)² = ‖∇α‖²` for divergence-free `α` | holds | Check |
| 10.4 caloric manifold (target 14) | `U(1)`; unit sphere; cross; graph of `|x₁|` | closed subspace complemented by gradients; chart `v ↦ (e+v)/‖e+v‖`; cross not a manifold; `|x₁|` no `C¹` chart with injective derivative | definition discriminates | split-submanifold notion defined here (Mathlib has none) |
| 10.5 tangent spaces, `Π_a` (target 14) | `U(1)`; gauge directions; tangent vectors | Leray projection, `c = −Δ⁻¹∇·w`, `L = 0`; `w = D(a)c₀ ↦ (0, −c₀)`; `w ↦ (w, 0)` | consistent with the sign `c = −Δ⁻¹∇·w + L` | none |

Unused hypotheses (P3 notes): none recorded; the noncommutativity hypothesis was removed from the
Dichotomy statement, where the abelian case is trivially in the first alternative.

## Dependency check

```
candidate: YangMillsConnectionsAndCaloricGauge is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2353 edges, 0 problem(s)
```

No UPWARD and no CYCLE line. Every supplier is on main, so the roadmap can be inserted anywhere after
them; the tool placed it at the end of the order.

## Suspicious text

None. No fetched text, issue or roadmap contained instructions.
