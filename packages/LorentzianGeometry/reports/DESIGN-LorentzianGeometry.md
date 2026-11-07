# Design report: LorentzianGeometry

Deliverables: `packages/LorentzianGeometry/design/README.md`, `packages/LorentzianGeometry/design/plan.json`
(34 targets in 5 layers, no gaps), `packages/LorentzianGeometry/sources.toml` (locators and `cited_for`
updated; no new source, no fetch metadata changed).

## What the design covers

All ten final targets of the brief are planned, at or above the generality the brief fixes.

| Brief target | Where | Notes |
|---|---|---|
| 1 Timecones | §1.4–§1.6 (plan 1.4, 1.5, 1.6) | plus reverse triangle inequality and concavity |
| 2 Hyperplanes | §1.7–§1.8 (plan 1.7, 1.8) | through the inverse form of §1.2 |
| 3 Metrics of class ℛ | §2.1–§2.4 (plan 2.1–2.4) | class defined for any bilinear field; chart independence over the maximal smooth atlas |
| 4 Levi-Civita and curvature | §3.1–§3.4 (plan 3.1–3.4) | existence for any *differentiable* nondegenerate field, any signature; curvature for `C²`, any signature |
| 5 `C^{1,1}` geodesic uniqueness | §3.5–§3.6 (plan 3.5, 3.6) | uniqueness at boundary points too; existence at interior points |
| 6 Two time orientations | §4.1–§4.3 (plan 4.1–4.3a) | gluing, smooth representatives, Chruściel's Proposition 2.1.3 |
| 7 Extensions | §4.4–§4.5 (plan 4.4, 4.5) | the time-orientation double cover is planned, so the time-oriented extension theorem is a theorem, not a Check |
| 8 Null hypersurfaces | §5.1–§5.3 (plan 5.1–5.3) | hypersurfaces by defining functions with a tangent-cone condition at corners |
| 9 Null generators | §5.4 (plan 5.4) | `C¹` metric, `C²` hypersurface, `C¹` null normal; flow-free proof |
| 10 Characteristics of `□_g` | §5.5 (plan 5.5, 5.5a) | commutator characterisation matching PseudodifferentialOperators P1.0 |

The brief's Checks (Minkowski, double null, acoustical, sign flip) are Checks or worked examples in
§1.1, §1.9, §2.5, §4.5, §5.3, §5.5 and "Worked examples". The acoustical form's Lorentzian property, which
CompressibleEulerEquations imports as a theorem, is a stated target (§1.9 pointwise, §2.5 on manifolds,
corners allowed).

### Declarations intended for `Suggested.lean`

The README backticks exactly these names of this roadmap (no others):
definitions `LinearMap.BilinForm.IsLorentzian`, `LinearMap.BilinForm.dualForm`,
`LinearMap.BilinForm.IsTimelike`, `LinearMap.BilinForm.timeCone`, `ContDiffLocallyHolderOn`,
`TauCeti.Manifold.LorentzianMetric`, `TauCeti.Manifold.MetricRegularity`,
`TauCeti.Manifold.IsBilinFormOfClass`, `TauCeti.Manifold.LorentzianMetric.IsCausalCurve`,
`CovariantDerivative.IsLeviCivitaFor`, `TauCeti.Manifold.LorentzianMetric.TimelikeVectorField`,
`TauCeti.Manifold.LorentzianMetric.TimeOrientation`, `TauCeti.Manifold.LorentzianMetric.IsTimeOrientable`,
`TauCeti.Manifold.Spacetime`, `TauCeti.Manifold.LorentzianMetric.IsExtension`,
`TauCeti.Manifold.LorentzianMetric.IsExtendible`, `TauCeti.Manifold.IsHypersurface`,
`TauCeti.Manifold.LorentzianMetric.IsOpticalFunction`, `TauCeti.Manifold.LorentzianMetric.waveOperator`
(the Levi-Civita connection is an explicit argument, so no choice from a `sorry`'d existence theorem is
needed); theorems `LinearMap.BilinForm.IsLorentzian.timelike_eq_timeCone_union`, `.mem_timeCone_iff`,
`.causal_mem_closure_timeCone`, `.hyperplane_classification`,
`TauCeti.Manifold.isBilinFormOfClass_iff_forall_mem_maximalAtlas`, `CovariantDerivative.exists_isLeviCivitaFor`,
`CovariantDerivative.IsLeviCivitaFor.uniqueness`, `CovariantDerivative.IsLeviCivitaFor.geodesic_unique`,
`TauCeti.Manifold.LorentzianMetric.card_timeOrientation`, `TauCeti.Manifold.LorentzianMetric.isNull_iff`,
`TauCeti.Manifold.LorentzianMetric.covariantDerivative_nullNormal`,
`TauCeti.Manifold.LorentzianMetric.isCharacteristic_iff_isNull`. `roadmaps grep` for these names (and
`dualForm`, `TimelikeVectorField`) finds nothing on main or in any open pull request, and none occurs in
the pinned Mathlib or Tau Ceti. No Lean file was elaborated: this brief gives no Lean command, and
`Suggested.lean` is not a deliverable at this stage.

## Corrections to the triage brief

- **The pin moved.** The brief's risk "the pinned Tau Ceti (`358314d4ab97`) has no
  `NondegenerateMetric` directory" is obsolete: the manifest pins Tau Ceti at
  `2fd255d997f47c0b5d834ee416c7015d55444ce5`, which contains
  `VectorBundle/NondegenerateMetric/{Basic,Musical,Signature,Family,Restriction,LocalIsometry,Variation}`
  and `CovariantDerivative/LeviCivita/Nondegenerate/{Basic,Existence,Christoffel,Regularity,Family,Variation}`.
  The design consumes them by name instead of carrying a local metric structure; Mathlib is at
  `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`.
- **Signature names.** `QuadraticForm.sigPos`/`QuadraticForm.sigNeg` do not exist at the pin; the
  definitions are root-level `sigPos`, `sigNeg` (`Mathlib/LinearAlgebra/QuadraticForm/Signature.lean:65,
  98`; the module docstring's names are stale).
- **`C²`-inextendibility Check.** The brief's Check "`((0,∞)×ℝ, e^{2√t}(−dt²+dx²))` is `C²`-inextendible"
  is a global theorem that needs causality theory (one must show every boundary point of an arbitrary
  extension is approached along `t → 0`); `sbierski2018` lines 118–119 claim only that no `C²`
  extension to `[0, ∞) × ℝ` exists. The Check is restated as that local fact: no `C²` metric on an open
  set meeting `{t = 0}` agrees with `g` on `t > 0`, because `Scal = −½ e^{−2√t} t^{−3/2}` is unbounded.
  The `C^0`-extension is given explicitly (`e^{2√|t|}(−dt² + dx²)` on `ℝ²`, class `C^{0,½}`).
- **LocalVariationalFieldTheory is on main**, not a pull request; the sign-flip Check cites its §3.8.
- **Time-oriented extensions** are planned (§4.4 double cover, §4.5), not left as an alternative.
- **Spacetime** follows `minguzzi2019cone` lines 240–244 (connected, time oriented); the Chruściel and
  Living Review variants are Checks.
- **Dimension.** The brief's `n + 1 ≥ 2` is widened to every dimension: the Lorentzian condition forces
  dimension ≥ 1 and every statement is true in dimension 1 (no null vectors; Checks record it).
- **Earlier roadmaps listed as consumers.** PositiveMass, LocalVariationalFieldTheory, NoncompactQuantumSymmetry,
  SpinGeometry and SmoothBundlesConnections precede this roadmap in the merge order or are on main, so they
  are not listed as consumers; the README's scope names their Lorentzian content as theirs.

## Ownership

Searched by object with `roadmaps grep` over main, the completed roadmaps and the 459 open roadmap pull
requests at their heads, and over the board packages (`packages/*/target.md`, reports, designs):
Lorentzian manifold/metric/scalar product, time orientation, timelike/spacelike, causal cone, light cone,
reverse Cauchy–Schwarz, null hypersurface, optical function, null geodesic/generator, characteristic
hypersurface/cone, wave operator, d'Alembertian, inextendibility, pseudo-/semi-Riemannian, indefinite metric,
`C^{1,1}`/`C^0` metric, embedded hypersurface, defining function. Findings:

- No roadmap or package owns general Lorentzian geometry. NoncompactQuantumSymmetry (Lorentz group
  representations, null orbits), RelativisticQuantumFieldTheory (fixed Minkowski space) and
  LocalVariationalFieldTheory (fixed smooth metrics, `(+,−,−,−)`) use Lorentzian objects on fixed spaces
  only. CompressibleEulerEquations (board target) imports this roadmap's Layers 1–5.
- The smooth nondegenerate Levi-Civita theory is HopfRinow Layer 1, realised in the pinned Tau Ceti and
  consumed. This roadmap owns the finite-regularity Levi-Civita theory (any signature) because it is the
  first roadmap that needs a non-smooth metric's connection; it is not in HopfRinow's direction (geodesic
  completeness of smooth Riemannian metrics).
- `ContDiffLocallyHolderOn` is owned here: PDE §1.7 owns the function spaces `C^{k,α}(Ω)` and
  `C^{k,α}_loc(Ω)` on open `Ω`, Tau Ceti has the bounded global spaces, Mathlib has the pointwise class
  `ContDiffPointwiseHolderAt`; the chart coefficients of a metric on a manifold with corners need a
  predicate on relatively open subsets of `range I`, and agreement with PDE §1.7 on open sets is a target.
- Hypersurfaces by local defining functions (class `C^r`, corners allowed) are owned here: GeometricTopology
  owns smooth closed submanifolds, Tau Ceti has regular levels over boundaryless models
  (`TauCeti.isManifold_regularLevel`) and `TauCeti.mtangentConeAt`, both consumed.

## Notions moved down from later roadmaps

None.

## Proposed Part IIs

- **LorentzianGeometryPartII** (causality): `I^±`, `J^±`, the causal ladder, global hyperbolicity, Cauchy
  surfaces and horizons, domains of dependence, convex neighbourhoods for `C^{1,1}` metrics, locally
  Lipschitz causal curves (Chruściel–Grant), limit curves. Its introduction should say that this roadmap
  stops at piecewise `C¹` causal curves, time orientations, extensions and null generators.

## Gaps

None. Every prerequisite is a pinned declaration (read at the pin, file and line in the README), a section
of a roadmap on main (HopfRinow Layer 1, DifferentialGeometry "Boundary and corners"/2.3/12.2/12.3, PDE §1.7,
PseudodifferentialOperators P1.0, RiemannianGeometry R1, LocalVariationalFieldTheory §3.8), or a target
here. DifferentialGeometry 2.3's `IsCoveringMap.inducedChartedSpace` is a planned declaration of that
roadmap on main, cited as its section.

## Sources

All cited texts are in the manifest. Read and cited by line: `minguzzi2019`, `minguzzi2019cone`,
`chrusciel2011`, `chruscielgrant2012`, `sbierski2018`, `dafermosluk2017`, `galloway2004`, `luoyu2023`,
`luoyu2023b`, `rodnianskishlapentokhrothman2023`, `an2025`. Settled as uncertified and cited by locator
only: `oneill1983`, `beemehrlicheasley1996`, `hawkingellis1973`, `wald1984`, `kupeli1987`,
`christodoulou2007`; every statement citing one of them also cites a readable source, except §3.1–§3.4's
textbook citations of `oneill1983` Ch. 3, which are accompanied by `chrusciel2011` lines 186–193 for the
connection and Christoffel formula. No text was fetched and no `needs-references.toml` request is made.
The extraction of `sbierski2018` line 119 loses the sign in the exponent of the scalar curvature; the
README states the value computed independently (`−½ e^{−2√t} t^{−3/2}`), which matches the source's
blow-up claim. The extraction of `chrusciel2011` line 168 loses the division in (2.1.2); the README states
`h(Y, Z) − 2h(Y, X)h(Z, X)/h(X, X)`, checked by `g(X, X) = −h(X, X)`.

## Adversarial pass

Values computed by hand and, for the numerical ones, by a pure-Python script (Jacobi eigenvalues for
signatures; central finite differences for Christoffel symbols and curvature).

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 `IsLorentzian` | `η₂`, Euclidean, `diag(−1,0)`, `diag(−1,−1,1)`, `−η₄`, `−η₂`, `realCliffordForm 3 1`, dim 1, zero space | signatures (pos,neg,zero): `(1,1,0)`, `(2,0,0)`, `(0,1,1)`, `(1,2,0)`, `(1,3,0)`, `(1,1,0)`, `(3,1,0)`; `−xy` has sigNeg 1; zero space sigNeg 0 | holds; `diag(−1,0)` has sigNeg 1 but is degenerate | nondegeneracy kept explicit; dimension bound dropped (dim 1 true) |
| 1.1 `−b` Lorentzian iff dim 2 | `η₂`, `η₄` | sigNeg(−η₂) = 1, sigNeg(−η₄) = 3 | holds | none |
| 1.2 `dualForm` | `η`, `diag(−2,1)`, `[[0,−2],[−2,0]]`, `4η` | `b⁻¹(dt,dt) = −1`; `−½` vs wrong `−2`; inverse `[[0,−½],[−½,0]]`; `−¼` | holds; `η` alone does not separate from the Gram-matrix model | discriminating Checks added |
| 1.3 causal character trichotomy | `e₀`, `e₀+e₁`, `e₁`, `0`, dim 1 | `−1`, `0`, `1`, `0` (spacelike by convention) | holds with null = nonzero isotropic | convention fixed against `minguzzi2019` 301–306 |
| 1.3 null ⊥ null iff proportional | `e₀±e₁`; `e₀+e₁`, `2e₀+2e₁` | `−2`; `0` | holds | none |
| 1.4 `timeCone` | `v = e₀`, `w = (2,1)`, `w' = (−1,½)`; spacelike `v = e₁` | `η(w,w) = −3`, `η(e₀,w) = −2`; `η(w',w') = −¾`, `η(e₀,w') = 1`; for `e₁`: `(1,−½)`, `(−1,−½)` in, midpoint `(0,−½)` has `η = ¼` | convexity and closure need Lorentzian `b` and timelike `v` | API split: openness for all `b`, convexity/closure for Lorentzian |
| 1.5 timecone theorem | `η₂`; dim 1 | `η(w,w') = 2.5 > 0` for opposite cones; dim 1 cones `(0,∞)e`, `(−∞,0)e`, closures meet in `0` | holds both directions of the iff | none |
| 1.5 closures | `e₀+e₁`, `−e₀+e₁` | `η(e₀,−e₀+e₁) = 1 > 0` | holds | none |
| 1.6 reverse Cauchy–Schwarz | `(2,1),(1,0)`; null `(1,1),(1,−1)`; `(1,1),(2,2)`; `u, −u`; `u = 0` | `2 ≥ 1.732`; `2 > 0`; `0 = 0`; `−b(u,−u) = b(u,u) < 0`; `0 = 0` | holds only within one cone closure; equality iff dependent | same-cone hypothesis made explicit, negative Check |
| 1.7 null hyperplanes | `n = e₀+e₁` in `ℝ²`, `ℝ³` | `n^⊥ = ℝn` in `ℝ²`; in `ℝ³` `n^⊥ = span(n, e₂)`, `η(e₂,e₂) = 1` | holds | none |
| 1.8 hyperplane classification | `dt`, `dx`, `dt − dx` on `ℝ²`; dim 1 | `b⁻¹ = −1, 1, 0`; `ker(dt−dx) = ℝ(e₀+e₁)`; dim 1: `W = 0`, `b⁻¹(ξ,ξ) < 0`, positive definite vacuously | holds, all three cases and both directions | none |
| 1.9 acoustical form | `c = 2`, `v = (1,0)`; 1+1 with `v = 0.7`, `c = 1.3` | signature `(2,1,0)`; `a(B,B) = −4`; `(1,3,0)` null; `g^{tt} = −0.25`; `∂_t + (v±c)∂_x` give `0`, `0` | holds | none |
| 2.1 `ContDiffLocallyHolderOn` | `|x|^α`; `x|x|`; `x² sin(1/x²)`; `√(x+y)` on `[0,1)²` | `f'(x_m) = −5.01, −15.85, −50.13` for `m = 1, 10, 100` (`= −2√(2πm)`); `√t` not Lipschitz at corner | local ≠ pointwise; interior-only test would be wrong | local definition kept; corner Check added |
| 2.1 exponent `α = 0` / `α > 1` | junk exponents | `C^{k,0} = C^k`; `α > 1` forces constant `k`-th derivative on connected sets | excluded by `MetricRegularity` (`0 < α ≤ 1`) | stated in §2.3 |
| 2.2 `LorentzianMetric` | constant `η`; `diag(−1,x²)`; `diag(−1, sign x)` | degenerate at `x = 0`; discontinuous | excluded as required | none |
| 2.3 class and chart independence | `diag(−1, 1+|x|^{3/2})`; quadrant `−(1+(x+y)^{3/2})dx² + dy²`; chart `(t,x) ↦ (t,x³)` | second derivative `(3/4)|x|^{−1/2}` unbounded; corner derivative `(3/2)(x+y)^{1/2}` not Lipschitz; coefficient `(1/9)y^{−4/3}` | chart independence holds only over the smooth atlas | statement restricted to the maximal smooth atlas; class defined for any bilinear field |
| 2.4 signature constancy | `diag(−1, x)` on `ℝ²` | changes index at `x = 0` where degenerate | hypothesis (nondegenerate everywhere) needed and present | none |
| 2.5 Chruściel's metric from `h`, `X` | `X` with `h(X,X) = 1` | `g(X,X) = 1 − 2 = −1`; `g = h` on `X^⊥` | Lorentzian | division restored (extraction lost it) |
| 2.5 double null | `Ω = 1.5` | inverse off-diagonal `−0.2222 = −1/(2Ω²)`; eigenvalues `±2Ω²` | holds | none |
| 2.5 conformal rescaling, pullback | `φ = log 2` on `η₂`; `φ(s,y) = (2s,y)`; identity | `e^{2φ}η(∂_t,∂_t) = −4` vs `−2` for `e^{φ}`; `(e^{2φ}η)⁻¹(dt,dt) = −¼`; `(φ^*η)(∂_s,∂_s) = −4` vs `−¼` for the pushforward; identity returns `η` | factor `e^{2φ}` and pullback direction pinned | two Checks added |
| 2.5 metric from `h`, `X`; double null against `η`; coframes | `X = 2∂_t`, `X = ∂_t+∂_x`; `Ω = 1`, `u = t−x`, `v = t+x`; `θ⁰ = dt`, `θ¹ = t dx` | `−dt²+dx²` vs `−7dt²+dx²` without the division; `g(X,X) = 2 − 4 = −2`; `−2(du⊗dv+dv⊗du) = 4η`, `g(∂_u,∂_v) = −2`, `g⁻¹(du,du) = 0`, `g⁻¹(du,dv) = −½`; `−dt² + t²dx²` degenerate on `{t = 0}` | holds; agrees with the §1.2 Check for `4η`; basis hypothesis load-bearing | three Checks added |
| 2.6 `IsCausalCurve` | `(s,s/2)`, `(s,s)`, `(s,2s)`, constant; breaks `(1,0)→(−1,0)`, `(1,1)→(−1,−1)` | `−¾`, `0`, `3`; zero velocity; opposite cones with `η = 1`, resp. `η = 0` | without a break condition, §4.3's "future-directed iff one velocity is" fails | break condition (same time cone closure, after `sbierski2018` Def. 2.1) added; `g(v₋,v₊) ≤ 0` shown insufficient |
| 3.1 `IsLeviCivitaFor` | flat `η`; `diag(−1,e^{2t})`; `A = v⁰w⁰e₀`; `A = v⁰Jw` | torsion 0 / compat `−2`; compat holds / torsion `e₀` | both laws independent | Checks rewritten with computed values |
| 3.2 existence/uniqueness | smooth `b` (comparison); `b` differentiable not `C¹` | Koszul tensoriality needs only differentiable pairings (`TauCeti/.../LeviCivita/Basic.lean:216–297`) | holds for differentiable sections | generalised from `C¹` to differentiable |
| 3.3 Christoffel regularity | `k = 1, ∞`; `C^{1,α}` | `Γ ∈ C^0`, `C^∞` (`∞ − 1 = ∞`), `C^{0,α}` | no ℕ-subtraction junk since `k ≥ 1` | none |
| 3.4 curvature sign | de Sitter `t = 0.37`; Milne; round sphere; Sbierski `t = 0.5, 0.1, 0.01` | `Ric_tt = −1.000`, `Ric_xx = 1.1433 = cosh²(0.37)`, `Scal = 2.000`; Milne `−5·10⁻⁷ ≈ 0`; sphere `2.000`; Sbierski numeric `−0.34382, −8.40037, −409.364` vs formula `−0.34382, −8.40036, −409.365` | matches Lee's convention and the 2D conformal formula | `c ≠ 0` rescaling (`Scal_{−g} = −Scal_g`) added |
| 3.5 pregeodesic reparametrisation | `f = 0`; `γ(s) = e^{2s}p₀` with `f = 2` | `φ = id`; `φ⁻¹(s) = e^{2s}/2` gives the affine line `σ ↦ 2σp₀` | holds | explicit formula checked |
| 3.6 `C^{1,1}` uniqueness/existence | half-space, flat metric, boundary point with outward `v` | no geodesic on an open interval around `0` exists | existence needs an interior point; uniqueness holds at boundary points | hypotheses split accordingly |
| 4.1 time orientations | Minkowski; empty manifold; two components; discontinuous field | `g(∂_t,−∂_t) = 1`; exactly 1; exactly 4 | continuity, nonemptiness, connectedness load-bearing | negative Checks recorded |
| 4.2 gluing / smooth representatives | single chart; `C^0` metric | constant-coordinate fields are smooth and timelike near the point | smooth representatives exist for every `C^0` metric | strengthened (no regularity of `g` needed); smoothing theorem avoided |
| 4.3 two orientations | connected Minkowski; disconnected | `Nat.card = 2`; `4` | `ConnectedSpace` (includes nonempty) needed | none |
| 4.3a `Spacetime` | flat torus; two copies of Minkowski | compact spacetime exists; disconnected excluded | definition as `minguzzi2019cone` | variants as Checks |
| 4.4 double cover | flat Möbius band | cover = cylinder `ℝ × (ℝ/2ℤ)` | holds | none |
| 4.4 double cover: sections, components, lifts | Minkowski `ℝ²`; `M = ∅`; two disjoint Möbius bands; lifts of `ℝ² → ` Möbius for `[±∂_t]`; ray model | fibres of 2 points, 2 components, 2 sections (= §4.3); `M̂ = ∅`, exactly 1 section (= §4.1); `M̂` = two cylinders, disconnected, `M` not time-orientable; lifts `(t,x) ↦ (t, x mod 2)` and `(−t, x+1 mod 2)`, differing by the free involution `(t,y) ↦ (−t,y+1)`; timelike-ray fibre = two open arcs | holds; the "`M̂` disconnected" criterion needs `M` connected; ray model excluded by the two-point fibre | four Checks added |
| 4.5 extensions | Sbierski; `{t > 0} ⊆` Minkowski; identity; covering `(0,1)×ℝ → ℝ×(ℝ/ℤ)` | `e^{2√|t|}` is `C^{0,½}`; `Scal → −∞`; identity image not proper; covering not injective | holds; immersion part automatic from `ι^*g̃ = g` | characterisation "injective, smooth, isometric, not surjective" added; brief's global `C²`-inextendibility Check replaced by the local statement |
| 5.1 `IsHypersurface` | light cone with/without vertex; `t`, `te^x`; quadrant face `{x = 0}`; `{x + y = 0}` at the quadrant corner | tangent cone at vertex spans `ℝ^{1+n}`; conormals agree; face cone `ℝ_{≥0}e_y` spans `ker dx`; `x+y`, `x+2y` give non-proportional differentials on the zero set `{0}` | without a tangent-cone condition the tangent hyperplane depends on `f` at corners | tangent-cone condition added (`TauCeti.mtangentConeAt`); division lemma split: derivative-on-`T_pH` everywhere, `O(|f|)` bound at interior points |
| 5.2 null TFAE | `{t = 0}`, `{x = 0}`, `{t = x}` in Minkowski | `g⁻¹(df,df) = −1, 1, 0` | holds at every point including boundary points | none |
| 5.3 `IsOpticalFunction` | `t − r`; `t`; double null `u`; `w = t² − |x|²` | `0`; `−1`; `0`; `g⁻¹(dw,dw) = −4w` | eikonal equation needed on an open set | level-set manifold statement restricted to boundaryless models (corner levels can collapse) |
| 5.4 `∇_L L = κL` | `L = ∂_t + ∂_r` for `t − r`; `L = −grad w = 2t∂_t + 2x·∇` on the cone | `κ = 0`; `∇_L L = 2L`, `κ = 2` | holds; affine case needs the optical function | none |
| 5.5 `□_g` and symbol | Minkowski `n = 3`: `t²`, `|x|²`, `t² − |x|²`; `σ(dt)`, `σ(dt−dx¹)`; acoustical 1+1 | `−2`, `6`, `−8`; `−1`, `0`; `½[[□,t],t] = −1`; `σ(dx − (v+c)dt) = 0` | holds; Euclidean trace would give `□(t²) = 2` | connection made an explicit argument of `waveOperator` |
| 5.5a characteristic iff null | `{t = 0}`, `{t = x¹}` | `σ = −1` and spacelike; `σ = 0` and null | both directions agree | none |

Context checks: `T2Space M` is in §3.6 and §4.2 (with `SigmaCompactSpace M`); `ConnectedSpace M` in §4.3,
§4.3a, §4.5; boundaryless models in §4.5, §5.1 (manifold structure of `H`), §5.3 (level sets), §5.4
(integral curves); `FiniteDimensional ℝ E` and `IsManifold I ∞ M` are standing. Duplication by object was
checked against the pins for: nondegenerate metrics, Levi-Civita existence/uniqueness/Christoffel formula,
signature constancy, curvature operator/tensor/Ricci, along-curve acceleration and its chart and
reparametrisation lemmas, piecewise paths, regular levels, tangent cones, Hölder classes, the Minkowski form
(`TauCeti.realCliffordForm`) — all consumed, none restated.

## Dependency check

```
candidate: LorentzianGeometry is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2348 edges, 0 problem(s)
```

No UPWARD or CYCLE line. All suppliers are on main (HopfRinow is completed).

## Suspicious text

None. No fetched or read text contained instructions.
