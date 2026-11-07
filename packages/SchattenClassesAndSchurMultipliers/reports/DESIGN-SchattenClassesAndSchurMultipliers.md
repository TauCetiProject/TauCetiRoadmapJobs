# Design report: DESIGN-SchattenClassesAndSchurMultipliers

Deliverables: `packages/SchattenClassesAndSchurMultipliers/design/README.md` (11 layers, 44
targets), `packages/SchattenClassesAndSchurMultipliers/design/plan.json` (the same plan as data,
validated: every definition has at least three tests and an API list, every target a locator,
every `target:` and `gap:` prerequisite resolves, no target cites a later layer), and
`packages/SchattenClassesAndSchurMultipliers/sources.toml` (16 sources; three added). No
`Suggested.lean` is produced at the design stage; the README backticks only library and supplier
names, all checked at the pins (below).

## What the design covers

All eight final targets of the brief are planned, with these decisions.

- **F1 (kernel theorem).** The kernel operator `T_k` with `kernel_apply`, `kernel_unique`,
  `kernel_norm` and the trace formula are already owned by AutomorphicSpectralTheory §0.8 and
  §0.10 (an open new-roadmap pull request, line 82 of the merge order). The triage did not find
  this owner. The design imports them, and owns only what AS lacks: surjectivity onto `S₂` (so the
  unitary and the kernel `k_A`), the kernel calculus (adjoint, composition, multiplication
  operators, transposition) and the behaviour of kernels under change of measure, isomorphisms and
  sub-σ-algebras (Layer 2). AS §0.8 is stated on standard Borel spaces with separable `L²`; the
  multiplier theory needs arbitrary σ-finite spaces, because Lafforgue–de la Salle §1.4 works with
  `L²(X, 𝒜, μ)` for finite and countably generated sub-σ-algebras `𝒜`, which are not standard
  Borel. This is gap `sigma-finite-hilbert-schmidt-kernels` (supplier AutomorphicSpectralTheory,
  §0.8 and §0.10), with a route that needs no countable basis (VonNeumannAlgebras V2.RectangularL2
  with V4.Core).
- **F2–F4.** Layers 3–4. The completely bounded norm is primary in its amplification form; its
  agreement with the map amplification, with the `Ω × ℕ` and `Ω × Ω'` forms and with CStarAlgebras
  C3.2 at `p = ∞` are §3.5–§3.6. Interpolation with the compact endpoint uses
  NoncommutativeIntegration §2.3 regularisation (§1.3).
- **F5.** Layer 6: the Schur product theorem (stated for every `p`, not only `p = ∞`, which the
  same argument gives by duality and interpolation), the Haagerup factorisation constant, the
  finite characterisation (Pisier's Proposition 3.3 route through the `H′`-norm factorisation and
  the separation theorem) and the σ-finite characterisation (Lafforgue–de la Salle Theorem 1.7,
  with the Hilbert ultraproduct of VonNeumannAlgebras V13b and the Radon–Nikodým density of
  BanachSpaceTheory B4.0).
- **F6.** Layers 5, 7, 8: Lemmas 1.10, 1.11 (with the directed form), 1.13, 1.17, Theorems 1.18
  and 1.19, plus Sierpiński's theorem for atomless measures (Tau Ceti has it only for standard
  Borel spaces under null singletons) and the finitely supported approximation of a Radon measure.
- **F7.** Layer 9, for `ℝⁿ` and every `m ∈ L^∞(ℝⁿ)`, `1 ≤ p ≤ ∞`. The Caspers–de la Salle proofs
  are specialised to `ℝⁿ`: `L^p(Lℝⁿ)` is realised as `L^p(ℝⁿ)` through Fourier multipliers, the
  Følner compressions are compressions of convolution operators to cubes, and the Fourier-side
  approximate identity is Gaussian. Caspers–de la Salle assume `φ ∈ M_cb A(G)` (continuous); the
  design removes this restriction for `ℝⁿ` by mollifying the symbol (both norms decrease under
  averages of translates, and both are lower semicontinuous under bounded almost-everywhere
  convergence), so the target's hypothesis `m ∈ L^∞` is kept. No VonNeumannAlgebras V8 or
  NoncommutativeIntegration Layer 3 input is needed.
- **F8.** Layers 10–11: operator-valued column and row BMO seminorms (cube form, with the dyadic
  comparison on the torus), matrix BMO through `π(A)(z) = U_z A U_z*`, periodisation and the
  diagonal-strip projection (Lemma 1.3), the interpolation inequality (Theorem 1.1, in the
  analytic-family form, which is the only direction used and needs no Banach-space structure on
  BMO), twisted Fourier multipliers, the Littlewood–Paley estimates for `C^{σ_n}` symbols, the BMO
  endpoint and Theorem A with its completely bounded form. The one input owned nowhere and not in
  this roadmap's direction is the interpolation between semifinite operator-valued martingale BMO
  and `L²` with constant `O(p)` (Conde-Alonso–González-Pérez–Parcet–Tablate Lemma 1.4, after Mei,
  Musat and Jiao–Randrianantoanina–Wu–Zhou); it is gap `semifinite-martingale-bmo-interpolation`,
  requested of NoncommutativeIntegration, Part II, which owns finite-tracial martingale BMO (§8.4)
  and Burkholder–Gundy (§7.3).

Left outside, with the reason recorded in the README: Theorem A′ (Sobolev form) and the
divided-difference corollaries (SchattenClassesAndSchurMultipliers, Part II); transference for
groups other than `ℝⁿ` (the target's generality and its exclusion of group von Neumann algebras of
non-abelian groups); Pisier's Theorem 3.2 with the Grothendieck constant (no target needs it);
Proposition 1.15 of Lafforgue–de la Salle (no target needs it).

## Deviations from the brief and errors found in it or in the sources

- **F2 involution (false as stated).** The target says `M ↦ S_M` is a `*`-homomorphism for the
  symbol involution `M̃(x, y) = conj M(y, x)`. For the Hilbert-space adjoint of `B(S₂)` the
  involution is pointwise conjugation `M̄`. Witness: `M = 1_{(1,2)}` on `{1, 2}`; the adjoint of
  `S_M` for `Tr(A* B)` is `S_M` itself, while `S_{M̃}(E₁₂) = 0 ≠ E₁₂`. `M̃` is the symbol of
  `A ↦ S_M(A*)*`; both statements are in §3.2.
- **Lafforgue–de la Salle Remark 1.4 (line 249)** writes the interpolation identity with `p` and
  `q` exchanged: for `2 ≤ p ≤ q` it puts `S_q` between `S_p` and `S_{p'}`, impossible when `p < q`
  (`p = 4`, `q = 8`: `1/8 ∉ [1/4, 3/4]`). §4.2 interpolates `S_p` between `S_q` and `S_{q'}`
  (`1/4 = (5/6)(1/8) + (1/6)(7/8)`).
- **Lafforgue–de la Salle line 348** names the target of the embedding `S_p(L²(X, ν))`; it is
  `S_p(L²(X, μ))` (§2.4).
- **Lafforgue–de la Salle line 487** defines an atom as a set that cannot be split into two sets of
  positive measure, which taken literally makes null sets atoms; the design uses Tau Ceti's
  `MeasureTheory.Measure.IsAtom` (positive measure). Mathlib's `NoAtoms`/`NullSingletonClass` is
  strictly weaker and is not the hypothesis of §7.3 (Check: two copies of the countable–cocountable
  space, where the statement would assert an open problem).
- **Conde-Alonso–González-Pérez–Parcet–Tablate lines 375–378**: `π_k J_k(A)` is mean zero only when
  `4^k ≥ √n` (witness `n = 2`, `k = 0`, `x = (0.05, 0.05)`, `y = (0.95, 0.95)`); line 506 writes
  `‖A‖_p = lim ‖J_k(A)‖_p`, of which only `‖A‖_p ≤ liminf` holds without further argument and only
  that is used (§10.3).
- **Theorem 1.19, `C`.** The equivalence fails for `C = ∞` (`M(x, y) = x` on `ℝ`); §8.2 takes `C`
  finite, `C ≥ 0` (the source has `C > 0`; `C = 0` also holds).
- **Suppliers named by the target but not used:** PDE (the scalar Riesz–Thorin theorem enters
  through NoncommutativeIntegration §2.6, Mihlin–Hörmander is in Tau Ceti, and the uniform
  Littlewood–Paley estimates for `C^{σ_n}` symbols are owned here because PDE plans them only
  inside its proof route); BanachSpaceTheory B1 and B6 (only B4.0 is needed);
  OperatorTheory/PolarDecomposition and Majorization (reached through OperatorIdeals and Tau Ceti);
  VonNeumannAlgebras V8.RegularL2. VonNeumannAlgebras is on main, not in a pull request as the
  target says. The Bożejko–Fendler paper the target asked to fetch is not needed: Caspers–de la
  Salle Theorem 4.2 and Corollary 5.3 cover `p = ∞`.
- NoncommutativeIntegration's own OperatorTheory contract says "S_∞ the compact operators" while
  its §1.5 says the `p = ∞` space is `B(H)`; this roadmap defines the compact endpoint itself and
  imports nothing at `p = ∞` from NoncommutativeIntegration except the couple `(L^{p₀}, B(H))`
  with regularisation.

## Notions moved down from later roadmaps

None. Completely bounded maps on `S_p` and on `L^p(ℝⁿ)` by amplification, operator-valued BMO
seminorms and Sierpiński's theorem for atomless measures are owned nowhere on main, in the open
pull requests or on the board; they are planned here at the generality the targets and the named
consumers need (maps on Schatten classes and on commutative `L^p`; general `L^p(M)` cb maps are
NoncommutativeIntegration's direction and are not planned).

## Proposed Part IIs and supplier revisions

- **NoncommutativeIntegration, Part II**: semifinite operator-valued martingale BMO and its
  interpolation inequality with `L²` with constant `O(p)` (gap
  `semifinite-martingale-bmo-interpolation`; exact statement in the README's supplier contracts).
- **AutomorphicSpectralTheory §0.8 and §0.10** at the generality of arbitrary σ-finite measure
  spaces (gap `sigma-finite-hilbert-schmidt-kernels`). Since AutomorphicSpectralTheory is still a
  pull request, this is a revision of its §0.8 rather than a Part II.
- **SchattenClassesAndSchurMultipliers, Part II**: Theorem A′, Calderón–Torchinsky variants,
  divided differences and Arazy's conjecture, discrete and Lie-group formulations.
- Further consumers (Downstream consumers of the README): operator-Lipschitz functions and double
  operator integrals; approximation properties by Schur multipliers; Fourier multipliers on group
  von Neumann algebras of amenable groups.

## Gaps

| slug | needed by | supplier and section | what is missing |
| --- | --- | --- | --- |
| `sigma-finite-hilbert-schmidt-kernels` | 2.1, 2.2, 2.4 | AutomorphicSpectralTheory §0.8 (and §0.10) | kernel operator, `kernel_apply`, `kernel_unique`, `kernel_norm` and `kernel_trace_diagonal` for arbitrary σ-finite measure spaces |
| `semifinite-martingale-bmo-interpolation` | 10.4 | NoncommutativeIntegration, Part II, extending §7.3 and §8.4 | `‖Ψ(2/p)‖_p ≤ C p max(sup ‖Ψ(it)‖_{BMO}, sup ‖Ψ(1+it)‖₂)` for mean-zero exponential families in `L^∞(Ω) ⊗̄ N`, `N` semifinite |

CStarAlgebras (C1.6, C3.2) is an open new-roadmap pull request not yet in the merge order; the
gate reports it as a note (it must be inserted before this roadmap, as it already is required
before NoncommutativeIntegration, which consumes it). It is used only for the comparison at
`p = ∞` in §1.4, §3.6 and §4.3.

## Ownership against open pull requests

Checked with `roadmaps grep` over main and the 466 open roadmap pull requests at their heads, by
object: Schur multiplier (only group-cohomology Schur multipliers, unrelated, and an example in
OperatorAlgebraDynamics), Schatten, trace class, Hilbert–Schmidt kernel, integral kernel and
kernel operator (AutomorphicSpectralTheory §0.8–§0.10, imported; UnboundedOperators UO-E01 and
RandomMatrices use other kernel classes), column/row/matrix/operator-valued BMO (only
NoncommutativeIntegration §8.4, finite-tracial martingale BMO), Herz–Schur, twisted Fourier,
transference (only lattice transference in GeometryOfNumbers, unrelated), atomless/non-atomic
(PointProcesses, OptimalTransport and GeometryOfNumbers use the word; none defines an atomless
measure class for general measure spaces). `roadmaps overlaps` reports no roadmap of this name.
The board packages index (three packages under review) and the board's targets and designs were
searched by the same objects: no overlap.

## Sources

Read (certified, open): lafforgue-delasalle-2011 (arXiv v3, §1 and Notation 2.1),
cgpt-2023 (arXiv v4, introduction, §1.1–§1.2, Theorem 1.1 and Lemmas 1.2–1.4, §2 steps 1–5,
Remark 2.1, Theorem A′), pisier-grothendieck-2012 (§3, Remark 13.4, §23), caspers-delasalle-2015
(§1, Theorem 3.1, §4–§5), neuwirth-ricard-2011 (Theorems 2.1, 2.7), potapov-sukochev-2011
(Theorems 1, 7), and, added by this design, mei-2007 (arXiv math/0311160v3: definitions of column
and row BMO, Theorem 5.1, Lemma 6.1, Theorem 6.2).

Not read: musat-2003 and jrwz-2020 (added by this design; the sources service found only paywalled
publisher pages and recorded them as uncertified; WebSearch on arxiv.org found no preprint). They
are cited only inside the gap contract, with their content as attributed by cgpt-2023 lines
471–484 and mei-2007 lines 3229–3230; the Musat theorem number is the one Mei cites, and no
theorem number is given for jrwz-2020. The paywalled books (simon-trace-ideals-2005,
gohberg-krein-1969, reed-simon-1-1980, pisier-similarity-2001, paulsen-2002,
horn-johnson-topics-1991, grafakos-classical-2014) are settled as uncertified and cited by chapter
or section only; the Reed–Simon theorem number the target quoted from memory (VI.23) is not used.
The published versions of Lafforgue–de la Salle (Duke) and of Mei (Mem. AMS) were not compared
with the preprints; all locators cite the preprints read, as recorded in the manifest's version
notes. No `needs-references.toml` request is made.

## Checks of library claims at the pins

Every backticked Mathlib and Tau Ceti name in the README was located at the pins (Mathlib
`1b1ccf4b`, Tau Ceti `2fd255d9`), including `TauCeti.OperatorIdealFamily.schatten` and its lemmas
(`TauCeti/Analysis/OperatorIdeal/Family/Schatten.lean`), `MeasureTheory.Lp.fourierMultiplierCLM`
(`TauCeti/Analysis/Fourier/L2Multiplier.lean`, symbols in `L^∞`, Hilbert-valued),
`TauCeti.UnitarilyInvariantSeminorm.schatten`, `MeasureTheory.Measure.IsAtom` (a root-namespace
declaration in `TauCeti/MeasureTheory/Measure/Atom.lean`),
`MeasureTheory.Measure.exists_subset_measure_eq_of_nullSingleton` (standard Borel only),
`ContDiffBump.exists_norm_iteratedFDeriv_littlewoodPaleyPiece_le` (smooth symbols only),
`Matrix.PosSemidef.hadamard` and `Matrix.PosSemidef.kronecker` (`Mathlib/Analysis/Matrix/Order.lean`),
`MeasureTheory.Measure.support`, `MeasureTheory.Integrable.tendsto_ae_condExp`,
`ContDiffBump.ae_convolution_tendsto_right_of_locallyIntegrable`,
`geometric_hahn_banach_point_closed`, `MeasureTheory.MemLp.exists_hasCompactSupport_eLpNorm_sub_le`,
`MeasureTheory.Lp.fourierTransformₗᵢ`, `UnitAddTorus`. Mathlib's `fourierMultiplierCLM` on
Schwartz functions and tempered distributions is meaningful only for symbols of temperate growth
and is not used for `L^∞` symbols. `roadmaps resolve` reports no cross-roadmap citation and no
Lean name found nowhere (it does not check library names on this host; they were checked by hand
as above).

## Adversarial pass

| statement | instances tried | values computed | result | change |
| --- | --- | --- | --- | --- |
| 1.1 extended gauge, compact endpoint | identity of `ℓ²(ℕ)`; identity of `ℂ^d`; rank-one projection; zero space | `‖1‖_∞ = ∞` here vs `1` in OI-B80; `d^{1/p}`, `1`; `a₀ = 1`, `‖e‖_p = 1`; `0` | holds | compact endpoint defined here rather than imported |
| 1.1 inclusions | `diag(1/(j+1))` | `‖·‖₂² = π²/6`, `‖·‖₁ = ∞`, compact | holds | none |
| 1.2 norming, membership | identity of `ℓ²(ℕ)` at `p = 1`; `diag(3, 1)` | rank-`N` projections give `Tr = N → ∞ = ‖1‖₁`; `4` at `B = 1`, `3` at `B = e₁₁` | holds | added the membership direction via compressions |
| 1.3 interpolation with `S_∞` | `p₁ = ∞`; transpose on `M_n` | norm `1` at `p ∈ {1, ∞}` gives `≤ 1` at every `p` | holds | regularisation via NCI §2.3 made explicit |
| 1.4 cb norm | transpose on `M_n`; unitary conjugation; diagonal projection; zero space | `1`, `n`, `1` (p=2), `n` (p=1); `1`; `1`; `0` | holds | none |
| 1.4 duality | transpose: `Tr(Aᵀ B) = Tr(A Bᵀ)` | both `Σ A_{ij} B_{ij}` | holds | none |
| 2.1 kernel unitary | `{1,2}`; `min(x, y)` on `[0,1]`; constant kernel; identity | `E₁₂`; `Σ ((j+½)π)^{−4} = 1/6 = ∫∫ min²`; `1 = 1`; no kernel | holds | generality: gap to AS §0.8 |
| 2.2 trace formula | `E₁₂, E₂₁` | bilinear `1`, sesquilinear `0` | holds | pairing pinned bilinear |
| 2.3 transpose | `i E₁₂`; `[[1,1],[0,0]]`; `D_i` | `i E₂₁` vs adjoint `−i E₂₁`; singular values `√2, 0` both; `D_i^T = D_i`, `D_i* = D_{−i}` | holds | none |
| 2.4 change of measure | `ν = 2x dx` on `[0,1]`; LdlS line 348 | equivalent on `(0,1]`; source names the wrong target space | holds | statement corrected |
| 3.1 multiplier on `S₂` | `[[1,2],[3,4]]`; `1_{x<y}` on `[0,1]`; `1_{x=y}`; zero measure | `[[a,2b],[3c,4d]]`, norm `4`; HS² `1/2`; `0`; `0` | holds | none |
| 3.2 algebra (target F2) | `M = 1_{(1,2)}` on `{1,2}` | adjoint `S_{M̄} = S_M`; `S_{M̃}(E₁₂) = 0` | target's involution false | corrected to `M̄`; `M̃` for `S_M(A*)*` |
| 3.3 norms, extension | `p = 2`; elementary symbols | `‖S_M‖₂ = ‖M‖_∞`; `≤ ‖f‖‖g‖` | holds | finite-rank sup equality added |
| 3.4 finite case | triangular truncation on `M₂` at `A = [[√2,1],[−1,√2]]/√3` | `(S A)*(S A)` eigenvalues `4/3, 1/3`, norm `2/√3 > 1 = ‖M‖_∞` (numerically maximal: 1.15449 by search) | holds | none |
| 3.5 cb definition | `M = 1`; alternative symbol `M δ_{ij}`; `[[1,2],[2,1]]` | identity vs pinching; cb `2` from `(3/2)J − (1/2)vvᵀ` | holds | the `δ_{ij}` model excluded by the amplification identity |
| 3.6 stabilisation | `Ω' = Fin d`; `Ω' = ℕ` | `d`-th amplification; cb norm | holds | none |
| 3.7 invariance | `δ₀ ≪ δ₀ + δ₁`, `M = [[1,2],[2,1]]` | `1 ≤ 2` | holds | none |
| 4.1 duality | `M = 1_{(1,2)}` | `A₁₂B₂₁` both sides; `Tr(A S_M B) = A₂₁B₁₂` | holds | none |
| 4.2 monotonicity | `p = 4, q = 8`; triangular truncation | `1/8 ∉ [1/4, 3/4]` (source's form); `1/4 = (5/6)/8 + (1/6)(7/8)`; values `1`, `2/√3`, bound `1.0746` at `p = 4` | source has indices exchanged | corrected form |
| 4.3 weak-* extension | `M = 1`; `1_{x=y}` on `ℕ` | identity; diagonal expectation; zero extension would kill `1` | holds | none |
| 5.1 conditional expectation | `{1,2}`, trivial `𝒜` | `3/2 ≤ 2`; `3/4 ≤ 1.155`; `1/4 ≤ 1` | holds | none |
| 5.2 martingale limit | dyadic, `1_{x<y}` | `f₀ = 1/2`; `f₁ ≥ 1` | holds | directed form included |
| 5.3 cb independence | block symbol on `{1,2,3,4}` | cb `2` on both spaces | holds (cb only; norm form is an open question, line 442) | none |
| 6.1 Schur product | `[[2,1],[1,1]]`; `[[1,2],[2,1]]`; `J`; `I`; `p = 2` | `2`; diag max `1` but norm `2`; `1`; `1`; `max\|M_{ij}\| = max M_{jj}` for PSD | holds | extended to every `p` |
| 6.2 factorisation constant | `[[1,2],[2,1]]`; constant `1` on `ℕ`; `1_{i=j}` | `2` explicit; `1` vs `∞` for an `L²` variant; `1` | holds | none |
| 6.3 finite GH | `[[1,2],[2,1]]`; triangular truncation; transpose map | all `2`; all `2/√3`; `1` vs `2` (not Schur) | holds | none |
| 6.4 σ-finite GH | `f ⊗ g`; `cos(x − y)`; `‖S_M‖_∞ = ∞` | `‖f‖‖g‖`; `1`; `inf ∅ = ∞` | holds | none |
| 7.1 atomless | Lebesgue; counting `{1,2}`; `δ₀ +` Lebesgue; countable–cocountable; zero measure | none; `{1},{2}`; `{0}`; null singletons but an atom; atomless | `NullSingletonClass` ≠ atomless | hypothesis uses `IsAtom` |
| 7.2 equal-mass refinement | `{1,2}`, trivial `𝒜` | `\|avg φ\| ≤ ‖S_φ‖` | holds | none |
| 7.3 atomless theorem | two copies of the countable–cocountable space | `L² = ℂ²`; norm vs cb for `M₂` open at `1<p<∞, p≠2` (lines 281–285) | a `NullSingletonClass` version would assert an open problem | atomless hypothesis |
| 8.2 continuous symbols | `e^{i(x−y)}` on `ℝ`; `δ₀ + δ₁`; `1_{x=y}`; `M(x,y) = x` with `C = ∞` | `1`; `2`; `0` vs finite restrictions `1`; (ii) holds, (i) fails | `C = ∞` false | `C` finite |
| 9.1 Toeplitz symbols | `e_a`; `cos`; `1_{0}` | `1`; `1` (factorisation); `0` | holds | none |
| 9.2 Fourier multiplier norms | `e_a`; `cos` at `p = 1`; `m = 1, 0` | `f(·+a)`; `‖T_m f‖₁ = ‖f‖₁` for `f ≥ 0`; `1`, `0` | holds | convention pinned on `e_a` |
| 9.3 Følner compressions | `g = 1_{[−½,½]}`; `p = 2`; frequency translate | `‖Λ_F(g)‖₁ = \|F\| = \|F\|‖g‖₁`; `≤ \|F\|‖g‖₂²`; `D_{e_a}`-conjugate | holds | none |
| 9.4 approximate identity | `p = 1` | exact `⟨f, g⟩ = 1` with `g ∈ L²`, `‖g‖_∞ = 1` impossible for `g = 1` | stated with a limit | limit form |
| 9.5 transference (F7) | `e_a`, `cos`, `0`, `1`; discontinuous `m` | both sides `1`, `1`, `0`, `1`; CdlS needs `φ ∈ M_cb A(G)` | holds for all `m ∈ L^∞` by mollification | route extended |
| 10.1 operator BMO | Rademacher column vs row; `1_{[0,½)} e`; dyadic constant | `√N` vs `1`; `1/2`; `2^{n/2}` | holds | none |
| 10.2 matrix BMO | dilation, translation identities; model `U_z A` | conjugation identities; seminorm `‖A‖` for the model | holds | definiteness on `S₂` proved (needed in 10.4) |
| 10.3 periodisation | `n = 2, k = 0`; `n = 1, k = 0`; rank-one grid operators | frequency `0` with `\|x − y\| ≈ 1.27 ≥ 1`; killed by `J₀`; `e^{2πi⟨s, a−b⟩}` | source's mean-zero claim fails for small `k` | threshold `4^k ≥ √n`; only `≤ liminf` used |
| 10.4 BMO–`S₂` interpolation | `p = 2`; `T = id`; scaling | constant `1`; `C_n p ≥ 1`; exponents sum to `1` | holds (with the gap) | none |
| 11.1 HMS norm | `sign(x−y)`; `ξ/√(1+ξ²)`; `sin x₁`; `σ_n` | `2`; `2 + 4/(3√3) ≈ 2.770`; `∞` while `‖S_M‖ = 1`; `1, 2, 2, 3` | holds | none |
| 11.3 Littlewood–Paley | `N = 1`; `σ = n/2` | exact scaling `2^{j(n−2σ)}`; divergent sums | holds; `σ_n > n/2` load-bearing | none |
| 11.4 BMO endpoint | `M = 1`; `M = sin y₁` | consistent with `‖A‖_BMO ≤ ‖A‖`; column constant `∞`, row finite | holds | none |
| 11.5 Theorem A (F8) | `M = 1`; `p = 3` vs `p' = 3/2`; `p = 2` | `C_n ≥ 1/8`; `p²/(p−1) = 4.5` both; `max(p,p') = 2 ≤ 4 ≤ 4` | holds | none |
| gap: martingale BMO interpolation | `N = ℂ`, dyadic `𝕋`; `p = 2` | classical `O(p)` (John–Nirenberg); trivial | plausible as stated | stated in analytic-family form |

Context (variable blocks): no `Suggested.lean` exists at the design stage; every README statement
carries its standing hypotheses in its sentence (σ-finiteness, atomless, Radon, `n ≥ 1`,
`1 < p < ∞`, finiteness of `C`).

## Dependency check

Output of the gate command:

```
candidate: SchattenClassesAndSchurMultipliers is not in the merge order yet; checked as if placed after NoncommutativeIntegration (the intake inserts it when its design is accepted)
note: supplier CStarAlgebras of SchattenClassesAndSchurMultipliers is not in the merge order; it must be inserted before SchattenClassesAndSchurMultipliers
depcheck: 240 roadmaps, 2355 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The note on CStarAlgebras is not a defect of this design: CStarAlgebras
is an open new-roadmap pull request that NoncommutativeIntegration (line 285) already consumes.

## Untrusted text

Nothing in the fetched texts, roadmaps or pull requests asked for any action; no suspicious
instruction was encountered.
