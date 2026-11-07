# Design report: DESIGN-SobolevMapsBetweenManifolds

Deliverables: `packages/SobolevMapsBetweenManifolds/design/README.md` (the design, in README form),
`packages/SobolevMapsBetweenManifolds/design/plan.json` (8 layers, 29 targets, no gaps),
`packages/SobolevMapsBetweenManifolds/sources.toml` (locators and `cited_for` updated, same eight
keys, nothing re-fetched) and this report. No `Suggested.lean` was written: it is not a
deliverable of this job. The README backticks no declaration of this roadmap's own, only pinned
Mathlib and Tau Ceti names.

## What the design covers

Eight layers, in build order:

1. Local classes on Euclidean domains. These are `L^p_loc(s, μ)` on a topological measure space
   and the vector-valued `W^{1,p}_loc(Ω; F)` on open subsets of finite-dimensional real normed
   spaces, defined through `TauCeti.HasWeakFDerivOn`. The layer also gives gluing over arbitrary
   open covers (T1(c)) and agreement with `TauCeti.W1p`.
2. Chain rules on Euclidean domains: null sets under `C¹` maps, precomposition with `C¹` local
   diffeomorphisms (T1(a)), postcomposition with `C¹` maps of bounded derivative and no
   continuity of the inner map (§2.3, new relative to the target, needed for T7), and
   postcomposition of continuous members with `C¹` maps on open sets (T1(b)).
3. Null sets on manifolds: `TauCeti.IsNullSet ↔ riemannianVolume`-null for every continuous metric;
   local Lebesgue classes on manifolds; null sets under `C¹` maps.
4. The vector-valued class `W^{1,p}_loc(M; V)`, the continuous class `W^{1,p}_loc(M, N)` with
   atlas independence (T2), the weak differential (existence for Lindelöf `M`, uniqueness up to
   a null set, chart formula), `C¹` maps, restriction and gluing, and the chain rules on manifolds.
5. `‖Df‖`, its chart comparison, the `L^p` characterisation (T3) and comparable metrics.
6. The oriented Jacobian `J(A)` of linear maps, the Jacobian `J_f` (T4) with chart formula and
   sign laws, Hadamard's inequality and `L^{p/n}_loc` integrability, and Jacobian measures with
   the change of variables for `C¹` open embeddings.
7. Euclidean compatibility (T6).
8. Local retractions of `C¹` immersions, the extrinsic description (T5), the extrinsic class of
   arbitrary maps, and its independence of the embedding for closed `N` (T7).

### Decisions that differ from `target.md`, with reasons

- **Pins are richer than the target says.** At the pinned Tau Ceti (2fd255d) the following
  exist and are cited with file paths:
  - `TauCeti.IsNullSet` (`Geometry/Manifold/Measure.lean:36`);
  - `TauCeti.Manifold.Orientation` (`Geometry/Manifold/Orientation/Basic.lean:32`);
  - `TauCeti.riemannianVolumeForm` (`Geometry/Manifold/Riemannian/VolumeForm.lean`);
  - `TauCeti.W1p.compL`, the global change of variables
    (`Analysis/Sobolev/W1p/ChangeOfVariables.lean:274`);
  - `TauCeti.HasWeakFDerivOn.comp_measurePreserving` (`…/WeakDeriv/MeasurePreserving.lean:130`);
  - `TauCeti.hasWeakFDerivOn_iff_forall_isCompact_closure` (`…/WeakDeriv/Local.lean:71`);
  - `TauCeti.exists_contMDiffOn_normalRetraction`
    (`Geometry/Manifold/TubularNeighborhood/LocalInverse.lean:46`);
  - `TauCeti.SmoothEmbedding.exists_contMDiffMap_extension_hasCompactSupport`
    (`Geometry/Manifold/SmoothEmbedding/Extension.lean:201`).

  The target's "Risks: foundations not in the pin" and its claim that `W1p.compL` is absent are
  outdated. The design consumes these declarations directly.
- **T7 is a theorem, not a statement awaiting a supplier.** The compactly supported extension
  `TauCeti.SmoothEmbedding.exists_contMDiffMap_extension_hasCompactSupport` gives a `C¹`
  `G : V₁ → V₂` with compact support and `G ∘ ι₁ = ι₂`. The new §2.3, the chain rule for `C¹`
  maps of bounded derivative with no continuity of the inner map, then proves T7. No tubular
  nearest-point retraction is needed.
- **Generality.** Manifolds are `C¹` (`IsManifold I 1 M`) with an arbitrary boundaryless model
  `I`, not only smooth with `𝓘(ℝ, E)`. Euclidean domains are in finite-dimensional normed spaces,
  with an inner product only for the `TauCeti.W1p` comparison. T5 holds for `C¹` immersions, not
  only embeddings, because continuity lets a local retraction (§8.1) do the work. The Jacobian is
  defined in every dimension `n ≥ 0`; `n = 0` gives `J = ±1` and is a Check. Chain rule (a) holds
  for `C¹` local diffeomorphisms with no bounds, as the target asked.
- **Suppliers dropped.** SuccessiveMinima 0.1.2 is not needed: Hadamard's inequality is Mathlib's
  `Orientation.abs_volumeForm_apply_le` applied to `A b`. RiemannianGeometry R5a is not needed:
  isometry of `ι` is a pointwise hypothesis. GeometricMeasureTheory G2 is not a supplier:
  `LinearMap.normDet` is Mathlib's. GeometricCurrents G6 is not a supplier: agreement at `F = ℝ`
  is proved against `TauCeti.W1p` directly (§1.4), which is G6's own carrier.
- **DifferentialGeometry 10.2 is not cited as a section.** The open revision #886 of
  DifferentialGeometry moves Sard and the null sets to DeRhamCohomologyAndDuality. The design
  cites the pinned `TauCeti.IsNullSet` instead, so the citation does not break at that merge.
- **Locally Lipschitz maps** are not planned here. QuasiregularMaps §2.8 states that it owns that
  case. A second owner would duplicate it.
- **Jacobian measure.** A locally finite signed measure on a non-compact manifold is not a single
  Mathlib object. §6.4 defines the pair `μ_f^± = vol.withDensity (J_f)^±`, the signed difference on
  relatively compact sets and integrals against compactly supported bounded functions. It keeps
  the hypothesis `J_f ∈ L¹_loc`, which the target already added; §6.3's Check shows it is needed
  for `p < n`.

### Map from the consumer's requirements to sections

QuasiregularMaps (board design, merge order 272) states six requirements on this roadmap through
gap slugs. They are met by:

- `sobolev-maps-class`: §4.2, §4.4, §4.5;
- `sobolev-maps-weak-differential`: §3.1, §4.3;
- `sobolev-maps-norm`: §5.1, §5.2 (and §5.3);
- `sobolev-maps-jacobian`: §6.1, §6.2, §6.3;
- `sobolev-maps-chain-rules`: §3.3, §4.6;
- `sobolev-maps-euclidean`: §1.2, §7.1.

The README's Summary keeps the labels T1–T7 that the consumer cites, each mapped to sections.

## Adversarial pass

Every row computes values. `Result` says whether the statement survived as stated, and `Change`
says what was edited.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Convention: direction of `Df` (Conventions, §4.3) | `M = N = ℝ`, chart `φ(x) = 2x`, `f = id` | representative `y/2`, derivative `1/2`; `1·Df·(1/2) = 1/2` gives `Df = 1`; with `dφ` instead of `(dφ)⁻¹`: `Df·2 = 1/2`, `1/4`; with no chart factors: `1/2` | holds | witness added as a Check |
| Convention: operator norm with metrics | `id` flat `ℝ` → `(ℝ, 4dt²)` | `‖Df‖ = 2`; model norms give `1` | holds | witness |
| Convention: volume of flat space | `ℝ²`, unit square, flat vs `4(dx²+dy²)` | `√det(I) = 1`, `√det(4I) = 4`; volumes `1`, `4` | holds | witness |
| Convention: sign of `J` | `diag(−1,1)` std→std, std→−std; `diag(2,1)` | `−1`, `+1`, `2` | holds | witnesses |
| 1.1 `L^p_loc` definition | `id` on `ℝ`; `|x|^{−1/2}`; `1/x` on `(0,1)`; `s = ∅` | `∫|x|ᵖ = ∞` but bounded on compacts; `∫_{−1}^1 |x|^{−p/2} = 4/(2−p)` (`4` at `p = 1`, `∞` at `p = 2`); `sup_{[a,b]} 1/x = 1/a`, `∫_0^1 dx/x = ∞`; empty set: all `g` | determines local, not global, membership | none |
| 1.1 exponent inclusion | counting measure on `ℝ`, `g = 1` on `[0,1]` | `g ∈ L^∞([0,1])`, `∫_{[0,1]} 1 = ∞` (uncountably many points), so `L^∞_loc ⊄ L¹_loc` | hypothesis "finite on compact sets" needed | kept |
| 1.2 class `W^{1,p}_loc(Ω;F)` | `id` on `E`; `log|x|` on `ℝ²`; Heaviside; Cantor function; `Ω = ∅`; `E = ℂ` | `|Du| = 1/|x|`, `∫_{|x|<1} |x|^{−p} = 2π/(2−p)`, member iff `p < 2`; Heaviside: `∫ U φ = φ(0)` impossible; Cantor: not absolutely continuous (pinned) | each wrong model (global `Lᵖ`, no bound on `Du`, a.e. classical derivative) is excluded by one Check | Checks added |
| 1.2 Haar independence | `μ' = 2μ`; weighted `e^{x} dx` | `∫ φ' u d(2μ) = 2 ∫ φ' u dμ`, so both sides scale; for `e^{x}dx`, `u = 1` gives `∫ φ' eˣ = −∫ φ eˣ ≠ 0`, so the weak derivative of a constant is not `0` | Haar hypothesis needed | kept "additive Haar" |
| 1.3 gluing (T1(c)) | `sign(x₁)` on half-planes; `log|x|` with cover `{ℝ²∖{0}, B(0,1)}`; empty cover | half-planes miss the null line `{x₁=0}`, and `sign(x₁) ∉ W^{1,1}_loc(ℝ²)`; `log|x|`: on `ℝ²∖{0}` all `p`, on `B(0,1)` `p < 2`, glued `p < 2` | an honest open cover is needed; "cover up to null sets" is false | Check added |
| 1.4 agreement with `W1p` | `x₁` on `B(0,1/2)`; `log|x|`, `p = 2`; `|x|`, `p = ∞`, `V = ℝ` | gradient `e₁`; `∫_{B(0,1/2)} |x|^{−2} = ∞`; `|x| ∉ L^∞(ℝ)` | relative compactness of `V` used | none |
| 2.1 images and preimages of null sets | projection `ℝ² → ℝ`; constant map; Cantor function | image of null `ℝ×{0}` is `ℝ` (infinite measure); preimage of a point is `ℝ²`; Cantor set (measure `0`) onto `[0,1]` (measure `1`) | dimension, invertibility and differentiability hypotheses each needed | kept |
| 2.2 precomposition (T1(a)) | `θ = 2y`, `u = |x|`; `θ = z²`, `u = log|w|`; `θ = (y₁,0)`; `θ = y³+y` | `2⟨y,·⟩/|y|` both ways; `⟨z²,2zh⟩/|z|⁴ = 2⟨z,h⟩/|z|²` both ways; `∫_{[−1,1]²} |y₁|^{−1} = ∞`; `(3y²+1) sign y` unbounded on `ℝ` | invertible derivative needed; no global bound possible | generalised from `C^∞` to `C¹`; route made precise (transport to `EuclideanSpace ℝ (Fin n)`) |
| 2.3 bounded-derivative composition | `G = e^{t²}`, `u = log|x|` | `G(u) = e^{(log|x|)²} ≥ |x|^{−2}` for `|x| ≤ e^{−2}` since `(log r)² ≥ −2 log r` iff `|log r| ≥ 2`; `∫_{|x|<e^{−2}} |x|^{−2} = ∞` | bounded derivative needed when `u` is discontinuous | new target, needed for T7 |
| 2.4 continuous composition (T1(b)) | `G = log`, `u = |x|` on `ℝ²∖{0}` and `ℝ²`; Leibniz; `e^{t²}` | `D log|x| = ⟨x,·⟩/|x|²`; on `ℝ²` hypothesis `u(Ω) ⊆ W` fails and `∫_{B} |x|^{−2} = ∞` at `p = 2` | continuity and `u(Ω) ⊆ W` used | cut-off lemma corrected to `exists_contDiff_support_eq_eq_one_iff` |
| 3.1 `IsNullSet ↔` volume null | dimension `0`; unit square; open sets; non-measurable sets | Haar on `{0}` charges `{0}`, so only `∅` null on both sides; densities `1`, `4`; open sets non-null on both sides | holds without measurability of `s` (outer measure, `MeasurableEmbedding.comap_apply`) | none |
| 3.1 flat volume = `volume` | `E` with basis `b = Module.finBasis ℝ E` | density `√det Gram(b) = volume(parallelepiped b)`, and `b.addHaar(parallelepiped b) = 1`, so density × `b.addHaar = volume` | holds | consequence added |
| 3.2 local classes on `M` | `ℝ` with `dx²` vs `e^{2x}dx²`; `1/x` on `(0,∞)`; dimension `0` | `g = 1_{[0,∞)}e^{−x}`: `∫ g = 1`, `∫ g eˣ = ∞`; local classes equal | metric independence is local only | Check added |
| 3.3 null sets under `C¹` maps | covering `ℝ → S¹`; collapse `(x,y) ↦ (x,0)`; projection | preimage of a point is `2πℤ + c` (countable); preimage of the null line is `ℝ²`; image of `ℝ×{0}` is `ℝ` | local-diffeomorphism and dimension hypotheses needed | kept |
| 4.1 `W^{1,p}_loc(M;V)` | `|x|` on `ℝ`; atlas `{x³}`; `sign(x₁)`; `0`-manifold | `|y|^{1/3}` has derivative in `L^p_loc` iff `2p/3 < 1`, so `p < 3/2`; `Du = 0` on `ℝ²∖{x₁=0}` | class depends on the `C¹` structure | Checks added |
| 4.2 continuous class and T2 | `log|x|` (discontinuous); circle map `t ↦ e^{i|t|^{1/2}}`; chart `x ↦ 2x+x³` | angle representative `|t|^{1/2}`, derivative in `L^p_loc` iff `p < 2`; transition derivative `≥ 2`, `|θ⁻¹(y)|` has bounded derivative | continuity is part of the definition | none |
| 4.3 uniqueness of `Df` | `IsNullSet` uses preferred charts at every point | `φ_x.source` (homeomorphic to an open subset of `E`) is covered by countably many `Ω_{x,y_k}`, so `{D ≠ D'}` is chartwise null without Lindelöf `M` | Lindelöf only for existence | hypothesis placed on existence only; continuity made part of the predicate |
| 4.4 `C¹` maps | `t|t|`; `|t|`; Cantor | `Df = 2|t|`; `|t|` a member though not `C¹`; Cantor `C¹` off a closed null set yet in no class | sufficient condition only | none |
| 4.5 metric copies | `TauCeti.WithMetric` copy, total choice of `Df` | two `Classical.choose` on different types may differ on a null set | "same weak differential" was too strong | changed to "agree outside a null set" (§4.5), and §5.3 to "almost everywhere" |
| 4.6 chain rules on manifolds | `θ = (y₁,0)`, `f = |x|^{1/2}`; `θ = 2y`; `g` = angle map | `|Df| ∼ |x|^{−1/2}`: `p < 4`; `f∘θ = |y₁|^{1/2}`: `p < 2`; `2Df(2y) = sign(y)|2y|^{−1/2} = D(√2|y|^{1/2})` | local diffeomorphism needed in (a) | none |
| 5.1 `‖Df‖` | `4dt²`; circle radius `1` and `3`; chart `2x` | `2`; `|t|^{−1/2}/2`, `3|t|^{−1/2}/2`; naive chart norm `1/2` vs `1` | holds | none |
| 5.2 T3 | `|t|^{1/2}`; `t log|t|`; Cantor | `|t|^{−1/2}/2 ∈ L^p_loc` iff `p < 2`; `|log|t|+1| ∈ L^p_loc` for all finite `p`, not `L^∞_loc`; Cantor in no class | hypothesis `f ∈ W^{1,1}_loc` needed | none |
| 5.3 comparable metrics | `c²g`; `dx²+4dy²`; `e^{2x}dx²` | `‖A‖' = c‖A‖`; `‖id‖' = 2 = β/a`; `‖id‖' = eˣ` | bounds sharp | "everywhere" → "a.e." |
| 6.1 `J(A)` | `diag(2,1)`; `diag(−1,1)`; bases `(2e₁,e₂)`; inverse convention; `n = 0` | `J = 2 = det`, `normDet = 2 ≤ ‖A‖² = 4`; `−1`/`+1`; matrix det `2` vs `J(id) = 1`; `(A⁻¹)^*` reading gives `1/2`; `n = 0`: `J = ±1`, `normDet = 1`, `1 ≤ ‖A‖⁰ = 1` | holds for every `n ≥ 0` | `n ≥ 1` dropped; Checks added |
| 6.1 positivity criterion | `R` from std to `−std` | `J = +1` and `R` maps std to `−std` | consistent with QuasiregularMaps' witness | none |
| 6.2 `J_f` and chart formula | `ℝ` flat; target `4dt²`; chart `φ = 2x` with basis `b`; identity `(M,o)→(M,−o)`; fold | `ε²·f'·|b|/|b| = f'`; `ρ_N = 2|b|`, so `2f'`; `DF = f'(y/2)/2`, `ρ_M = |b|/2`, `J = f'`; `−1`; `sign x₁` | formula basis-consistent | none |
| 6.3 Hadamard and integrability | radial stretch `x|x|^{−1/2}`; `λU`; disjoint bump sum `r_k = 2^{−k}`, `λ_k = 2^k/√k` | `J = |x|^{−1}/2 ≤ |x|^{−1} = ‖Df‖²`; `p < 4` iff `p/2 < 2`; `|J| = λⁿ`; `λ_k r_k = k^{−1/2} → 0`, `Σ λ_k^p r_k² = Σ 2^{k(p−2)} k^{−p/2} < ∞` for `p < 2`, inner contributions `π/(4k)` diverge | `J_f ∈ L¹_loc` fails for `p < n` | hypothesis kept on 6.4 |
| 6.4 Jacobian measures | `2x`; `−x`; `z²` on annulus `1<|z|<2` | `μ⁺([0,1]) = 2 = vol[0,2]`; `μ⁻([0,1]) = 1`, `μ⁺ = 0`; `2π∫_1^2 4r³ dr = 30π` vs area `15π` | injectivity needed for `μ⁺ = f^*vol` | none |
| 7.1 Euclidean compatibility (T6) | `id`; reflection; `z²`; radial; inversion | `J = 1`; `−1`; `4|z|² = |2z|²`; `|x|^{−1}/2`; `‖Df‖ = |x|^{−2}`, `J = −|x|^{−2n}` | holds | none |
| 8.1 local retractions | unit circle; `s³`; figure eight | `r(v) = v/|v|`; left inverse `s^{1/3}` not differentiable at `0`; patchwise retraction exists | injective differential needed, injectivity of `ι` not | none |
| 8.2 T5 | circle map with inclusion and `2ι`; `s³` with `t^{1/3}`; double cover with half-angle circle map | `|t|^{−1/2}/2` both; doubled; `ι∘f = id` while `t^{−2/3}/3 ∈ L^p_loc` iff `p < 3/2`; both members iff `p < 2` | immersion needed; embedding not needed for continuous `f` | generalised from embeddings to immersions; third Check replaced by a non-trivial one |
| 8.3 extrinsic class | hedgehog `x/|x|` on `B³`; `sign(x₁)` into `S⁰` | `|D|_HS = √2/|x|`, `∫_{B³}|x|^{−p} = 4π/(3−p)` for `p < 3`; jump | continuous class strictly smaller | none |
| 8.4 T7 | `N = ℝ`, `ι₂ = (s, exp(exp s))`, `u = log log(1/|x|)`; double cover vs inclusion; `S¹ ⊆ ℝ²` vs `z ↦ (z,z²)` | `∫_0^{1/e} dr/(r log²(1/r)) = 1`; second coordinate `1/|x|` with `∫ r^{−2} r dr = ∞`; `z/|z|` smooth on the punctured disc vs a jump; both gradients `≍ 1/|x|`, `p < 2` | compactness and injectivity both needed | Check corrected ("smooth there", not "for `p < 2`") |

Further items of the pass:

- **Context.** Every statement that needs Lindelöf, Borel structure, boundaryless models or a
  continuous metric says so in its section: §3.1, §3.2, §4.1 (existence), §4.3 (existence), Layer 5
  and §6.2. No `T2Space` is used: compact sets are covered by compact neighbourhoods inside
  chart sources, and finite unions of those carry `Lᵖ`.
- **Generality in both directions.** The README and plan.json state the same generality. A wider
  input class was checked for the extrinsic class: arbitrary `ι` is admitted in the definition
  (§8.3), and the theorems add the immersion or embedding hypothesis where used. Non-injective
  immersions are admitted by T5 deliberately; T7 excludes them with a computed Check.
- **Vacuity.** No statement quantifies over unrelated data. The predicates require continuity
  (§4.2, §4.3) or chart conditions tied to the given map.
- **Imported steps.** The route of §2.2 uses `TauCeti.W1p.compL` only on relatively compact
  pieces where its hypotheses (`p ≠ ∞`, `‖DΦ‖ ≤ L`, `c ≤ |det DΦ|`, injectivity, `Φ : E → E`) are
  verified. The route of §2.3 uses the pinned mollification lemmas
  (`TauCeti.HasWeakFDerivOn.hasFDerivAt_indicator_convolution_normed`, which needs `MemLp` on the
  domain; it is applied on an intermediate relatively compact set). §8.1 replaces the embedding
  hypothesis of `Manifold.IsImmersionAt.exists_contMDiffOn_retraction` by restricting to the
  domain-chart source. That proof's identity `q (f y) = (domChart.extend I) y` holds on the
  domain-chart source with no embedding, which was checked in the pinned file.
- **Duplication by object.** No pinned declaration duplicates a target. Checked by object:
  - local `Lᵖ`: none in Mathlib or Tau Ceti;
  - vector local Sobolev class: none;
  - gluing of weak derivatives over open covers: only relatively compact detection in Tau Ceti;
  - multivariable chain rule `G ∘ u`: only the scalar one-variable `TauCeti.W1p.hasWeakFDerivOn_comp`;
  - null-set comparison: no use of `TauCeti.IsNullSet` outside its file;
  - oriented Jacobian between distinct spaces: Mathlib has `LinearMap.det` (endomorphisms) and
    `LinearMap.normDet` (unsigned) only;
  - `C¹` local retraction of immersions: Tau Ceti has the `C^{k+1}`-into-inner-product version
    and the embedding version only.
- **Names.** Every backticked Lean name of the README was checked against the pinned sources by
  a script (declarations indexed with their namespaces). Two names are generated rather than
  declared and were checked by hand:
  - `MeasureTheory.Measure.isAddLeftInvariant_eq_smul`, the `to_additive` of
    `isMulLeftInvariant_eq_smul` (`Mathlib/MeasureTheory/Measure/Haar/Unique.lean:919–922`,
    namespace `MeasureTheory.Measure`);
  - `exists_embedding_euclidean_of_compact`, a `public theorem` at root
    (`Mathlib/Geometry/Manifold/WhitneyEmbedding.lean:132`).

  Two names were corrected: `IsContinuousRiemannianBundle` is in the root namespace, and
  `Manifold.IsImmersionAt` was given its namespace.

## Ownership and overlaps

Searched by object on main, at the open pull-request heads (`roadmaps grep`, `roadmaps show`), on
the board and in the pins:

- **Local `Lᵖ` and vector local Sobolev classes.** PseudoholomorphicCurveAnalysis (main) PH1.1
  defines `MemLpLoc` and `MemWkpLoc` on open subsets of `ℂ` only. Its scope excludes other
  dimensions ("Every surface here is two-dimensional"). GeometricCurrents (main) G6 defines
  scalar `W^{j,p}_loc(Ω)` with finite-cover gluing. Neither is the general first-order
  vector-valued class on finite-dimensional domains, so it is owned here, with literal-agreement
  Checks for `E = ℂ` and a theorem for `F = ℝ` (§1.4). A later revision of PH1.1 could restate its
  order-one class through §1.2; this is not required.
- **Change of variables and composition.** SobolevPolynomialApproximation §2.1 and
  SobolevDifferentialForms §4.1 (open pull requests, not in the merge order, not cited in the
  README) plan global bounded-derivative versions for scalar `W^{k,p}` and for forms, built on
  `TauCeti.W1p.compL`. The local vector-valued first-order statements here contain neither, and
  are contained in neither.
- **Maps between manifolds.** PH4.1 (main) covers surfaces with `kp > 2`. AnalyticStableMaps §2.2
  (open pull request) builds Banach manifolds of `W^{k,p}` maps from compact surfaces with
  `kp > 2`. TeichmullerGeometry §7.4 (open pull request, merge order 271) covers planar
  quasiconformal maps. None owns the general continuous class, the weak differential, `‖Df‖` or
  `J_f`.
- **Null sets.** RiemannianGeometry (main) R4.6 and R6 relate chart nullity to the smooth-metric
  volume for the cut locus and the focal set. The general statement for every set and every
  continuous metric is §3.1; their steps are special cases.
- **Consumers named by the filer.** CalibratedGeometry, VariationalMethods and PositiveMass do not
  mention manifold-valued Sobolev maps at their heads; they are not listed as consumers.
- **Overlaps tool.** For SobolevMapsBetweenManifolds it reports no roadmap on main or in a pull
  request. For the cited roadmaps:
  - DifferentialGeometry: #886 drops Layer 10 (moved to DeRhamCohomologyAndDuality), handled by
    citing `TauCeti.IsNullSet`; Layer 2.1–2.2, 12.1 and 12.4 exist at #886 and #1187 heads;
  - RiemannianGeometry: R4.6 and R6 exist at the #1327 and #1683 heads;
  - PseudoholomorphicCurveAnalysis, GeometricCurrents and TeichmullerGeometry: no changing pull
    request;
  - PDE: #1614 keeps Layer 1.

  No citation of this README depends on an open revision ("only an open revision defines": none).

## Notions moved down from later roadmaps

None. QuasiregularMaps (merge order 272) is a consumer; nothing is taken from it.

## Proposed Part IIs

- **SobolevMapsBetweenManifolds, Part II.** Its targets:
  - density of smooth maps (Hajlasz2009 Theorem 2.1, lines 129–137; Bethuel1991);
  - traces, and homotopy classes of Sobolev maps;
  - Sobolev maps into metric spaces, and higher-order classes `W^{k,p}_loc(M, N)`;
  - bi-Lipschitz changes of variables (Ziemer1989 Theorem 2.2.2), on GeometricMeasureTheory's
    Rademacher calculus;
  - approximate differentiability, and the tangency `D(ι ∘ u) ∈ dι(TN)` for the extrinsic class;
  - weakly (p-)harmonic maps (Hajlasz2009 lines 37–53).

  It consumes §8.3–§8.4.

## Gaps

None. Every prerequisite is a pinned declaration, a section of a roadmap on main
(DifferentialGeometry Layer 2.1–2.2, 12.1 and 12.4, realised in Tau Ceti; PseudoholomorphicCurveAnalysis
PH1.1 for Checks), or an earlier target here.

## Sources

- Read in the cache: HeikkilaPankka2025 lines 12–40, 1230–1265 and 1315–1345; Hajlasz2009
  lines 1–140; MartioRickmanVaisala1969 lines 110–135, 325–345 and 405–420. All locators in the
  README were checked against these lines. HeikkilaPankka2025 is cited at the arXiv v2 numbering
  that was read.
- Settled as `uncertified` and cited by locator only: Ziemer1989 (Ch. 2 §2.1, Theorems 2.1.11 and
  2.2.2), Mazya2011 (§1.1), Rickman1993 (Ch. I §1), Lee2012 (Ch. 4, 6, 15, 16) and Bethuel1991
  (Introduction). No new work is cited, nothing was fetched, and `needs-references.toml` was not
  created: no text is missing.
- `sources.toml` keeps its eight keys. Only `locator` (HeikkilaPankka2025, Hajlasz2009,
  MartioRickmanVaisala1969, Ziemer1989, Lee2012) and `cited_for` (all) were edited, to name the
  sections that use each work.

## Merge order and dependency check

All suppliers are on main and none is in the merge order. The README names TeichmullerGeometry
(271) and PseudodifferentialOperators (9) only in Scope, and QuasiregularMaps (272) only as a
consumer. The intake must place SobolevMapsBetweenManifolds before QuasiregularMaps, which
consumes it; any position before 272 is compatible with this roadmap's suppliers.

Output of the gate:

    candidate: SobolevMapsBetweenManifolds is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2351 edges, 0 problem(s)

No UPWARD or CYCLE line.

## Other notes

- No Lean was run: the job has no Lean deliverable.
- No fetched text, issue or pull-request content contained instructions; nothing suspicious to
  report.
