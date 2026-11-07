# Design report: DESIGN-HyperbolicDynamicsAndThermodynamicFormalism

Deliverables: `packages/HyperbolicDynamicsAndThermodynamicFormalism/design/README.md` (11 layers, 65 targets), `packages/HyperbolicDynamicsAndThermodynamicFormalism/design/plan.json` (the same plan as data), `packages/HyperbolicDynamicsAndThermodynamicFormalism/sources.toml` (17 sources; `sources check`: 0 problems).

## What the design covers

**Route.** The summit goes through Bowen's criterion, not Markov partitions. Climenhaga–Thompson prove the criterion for homeomorphisms and flows with *weak* specification, where gluing times are only bounded (ClimenhagaThompson2016, Theorem A and Theorem 5.5; read in full at the relevant lines). Weak specification follows from transitivity plus a hyperbolic local product structure. So the design needs neither a mixing hypothesis nor the reduction of non-mixing Anosov flows to constant-roof suspensions (the Anosov alternative), and it avoids building Markov sections for flows and the Ruelle–Perron–Frobenius theorem.

The smooth theory enters through one abstract interface: Bowen's Axiom A* for homeomorphisms (BowenPeriodicPoints1971, lines 66–83), which yields spectral decomposition (2.7) and specification (2.10), and its flow analogue (BowenRuelle1975, lines 96–108). Locally maximal hyperbolic sets satisfy this interface (§§8.4–8.5).

The SRB theorem follows Bowen–Ruelle exactly: the volume lemma plus the Gibbs lower bound plus P(φ^u) = 0. It needs no absolute continuity of foliations.

**Layers.**

| Layer | Content |
|---|---|
| 1 | Bowen balls, open-cover entropy, power and time-rescaling rules, expansivity (maps, Bowen–Walters flows), mixing, weak specification, Bowen property |
| 2 | Pressure on uniform spaces, its three equivalent forms, properties, flow pressure |
| 3 | Invariant measures, affinity and concavity of entropy, fine partitions, upper semicontinuity for expansive maps and flows, Abramov's formula |
| 4 | Variational principles (maps and flows), equilibrium states and their structure, existence, Newhouse's theorem stated as an input, time changes and flow coboundaries |
| 5 | Gibbs measures, Bowen's criterion for homeomorphisms and for flows |
| 6 | Abstract hyperbolic dynamics: hyperbolic local product structure, expansivity, shadowing, closing, spectral decomposition, specification, Bowen property of Hölder potentials, unique equilibrium states |
| 7 | Hyperbolic sets and Anosov systems with respect to a continuous Riemannian metric: metric independence, characterisation and uniqueness of the splitting, continuity, adapted metrics, inverses and time reversal |
| 8 | Hadamard–Perron, local stable, unstable, strong and weak manifolds, local product structure of locally maximal hyperbolic sets, nontriviality of the bundles, Hölder bundles |
| 9 | Hyperbolic toral automorphisms, suspensions and time changes, geodesic flows in negative curvature |
| 10 | Basic sets and attractors, Bowen's theorem, the Bowen–Ruelle theorem, Bowen–Margulis and Bowen measures |
| 11 | Geometric potential, bounded distortion, volume lemmas, pressure of φ^u, the SRB theorem |

**Final targets of `target.md` and where they land.**

| # | Final target | Section |
|---|---|---|
| 1 | Uniqueness of the splitting and metric independence | §7.3, §7.4 (plus §7.5) |
| 2 | Adapted metric | §7.6 |
| 3 | Examples | §§9.1–9.3 |
| 4 | Variational principle | §4.3 (with §4.1, §4.2) |
| 5 | Pressure variational principle; the three forms; flows | §4.2, §2.2, §2.4, §4.8 |
| 6 | Existence and structure of equilibrium states; Newhouse; non-existence | §§4.5–4.7; Buzzi2014 Corollary 1 as a Check of §4.6 |
| 7 | Abramov and time-t maps | §3.6, §1.4, §4.9 |
| 8 | Bowen–Ruelle for flows | §10.3 |
| 9 | Bowen for diffeomorphisms | §10.2 |
| 10 | Bowen–Margulis and SRB | §10.4, §11.5 |

**Generality decisions.**

- The variational principle (§§4.1–4.3) is stated on compact Hausdorff uniform spaces with regular invariant measures. That is Misiurewicz's generality: his proof is entourage-based, matching Mathlib's uniform-space entropy.
- Statements that need the ergodic decomposition (ergodic suprema, ergodic components of equilibrium states) are stated on compact metric spaces, because ArithmeticDynamics §2.7 supplies the decomposition on standard Borel spaces.
- Misiurewicz's ℤ^N_+-actions are specialised to N = 1. No supplier defines measure entropy for ℤ^N-actions, and no target needs it. A ℤ^d thermodynamic formalism would be a separate roadmap; this is recorded in the README's scope.
- The summit is stated at the sources' regularity: C¹ for uniqueness (BowenRuelle1975 Theorem 3.3 assumes only a differentiable flow; Bowen1975 Theorem 4.1), and C² for the geometric potential and SRB (BowenRuelle1975 Section 4). The target's C² wording is the specialisation, recorded as such.
- Statements are made for basic sets and attractors, with Anosov systems as the case Λ = M.
- Hyperbolicity is defined with respect to a continuous Riemannian metric (Mathlib `Bundle.ContinuousRiemannianMetric`), and the splitting is not assumed continuous. Continuity is the theorem §7.5, so the target's "automatic continuity" item becomes a real target.

**Ownership.** Searched by object (hyperbolic set, Anosov, pressure, equilibrium state, Gibbs measure, expansive, specification, shadowing, stable manifold, Abramov, variational principle, measureEntropy, unit tangent/sphere bundle) with `roadmaps grep` against main and the 459 open roadmap pull requests at their heads, and in the board's packages.

- The only hits are other objects: pseudo-Anosov mapping tori (GeometricTopology); C*-algebraic and quantum-lattice equilibrium states and pressure (OperatorAlgebraDynamics, CStarAlgebras); Gibbs measures of stochastic PDE (PDE); a "hyperbolic" localisation (VStackSheavesAndLisseCategories).
- Stable manifolds appear only at hyperbolic zeros of vector fields (HeegaardFloer M.0a, MorseNovikov) and in Tau Ceti's Lyapunov–Perron theorem at an equilibrium. Hyperbolic sets need the sequence (Hadamard–Perron) version, which this roadmap owns (§8.1).
- Bowen balls appear inside homogeneous-dynamics material in the board package GeometryOfNumbersAndQuadraticArithmeticPartII. That package is later in the merge order, is a potential consumer of §1.1, and defines no generic notion.
- No declaration of a future `Suggested.lean` would take the name of a declaration in a roadmap I can read; the proposed names in `plan.json` live in the `Dynamics`, `Flow` and `Manifold` namespaces and collide with none found by `roadmaps resolve`.

## Adversarial pass

One row per statement; values are computed.

| § | Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|---|
| conv | Pressure sign, P(0) = h | full k-shift, constant c | P(c) = log k + c; P(−β) = log k − β | pinned |
| conv | Bowen-ball indexing | doubling map, ε = 1/8 | half-width 1/8 (n=1), 1/16 (n=2); k ≤ n convention gives 1/16 at n=1 | n-term convention (Mathlib `dynEntourage`) pinned |
| conv | φ^u sign | curvature −1 surface | λ_t = e^t, φ^u = −1, ∫₀ᵀφ^u = −T | pinned |
| 1.1 | Bowen balls, flow/time-t comparison | rotation; doubling; n = 0; flow vs g^t | B_n = ε-ball; 2^{−n−2}; B_0 = X; B_{nt} ⊆ B^{g^t}_n since times kt ≤ (n−1)t | the converse needs the uniform-continuity modulus δ; stated so |
| 1.2 | h_cov = coverEntropy | identity; k-shift cylinders; trivial cover | 0; N(𝒰^n) = k^n → log k; {X} gives 0 | sup over covers is required (Check) |
| 1.3 | power and inverse rule | k-shift squared; k = 0; empty X; cat | 2 log k; id gives 0 = 0·∞ in EReal; ∅: ⊥ vs 0·⊥ = 0 | **k ≥ 1 added** (empty space breaks k = 0) |
| 1.4 | h(g^t) = \|t\| h(g^1) | periodic orbit; suspension; rescaling | 0; log 2 and 2 log 2; g(2t) has 2 log 2 | holds; t < 0 via inverse rule |
| 1.5 | expansive maps | k-shift, c = 1/2; rotation; identity on finite set and on [0,1] | distinct points differ at index n, d(T^n x, T^n y) = 1 > 1/2; rotation distances preserved | API restated: uniform-N lemma written correctly |
| 1.6 | Bowen–Walters expansive flows | periodic orbit; irrational linear flow; identity flow | expansive; transverse pairs stay at fixed distance; circle of fixed points not isolated | holds |
| 1.7 | mixing | k-shift; rotation; swap; constant-roof suspension | cylinders meet for n ≥ m; sparse returns; returns only near 1/2 + ℤ | **corrected**: the draft said "flow mixing if a time-t map mixes, converse fails"; both directions hold (restrict to times nt; cover offsets in [0,t]) |
| 1.8 | weak specification | swap; k-shift; disjoint union; rotation | swap: gaps 0/1 work, strong spec needs 1+τ both even and odd; shift strong with gap ≈ 2m; rotation has weak spec | rotation example recorded: weak spec without expansivity, so expansivity is an independent hypothesis |
| 1.9 | Bowen property | constants; x_0 on 2-shift; harmonic potential | K = 0; K = 0 at ε = 1/2; S_{n−1} gap = 1/2 + ⋯ + 1/n → ∞ | non-Bowen continuous potential recorded |
| 2.1 | pressure | point; identity on m points; k-shift + c | φ(pt); max φ; log k + c | P(0) = coverEntropy via `netMaxcard` |
| 2.2 | three forms agree | φ = 0; identity; inf vs sup | entropies of §1.2; max φ; inf gives min φ for {X} | sup confirmed |
| 2.3 | properties | Lipschitz; coboundary x_1 − x_0; power rule with φ = x_0 | P(c) − P(0) = c; sums bounded by 1, P = log 2; 2 log(1+e) vs log(1+e) | holds |
| 2.4 | flow pressure | constant; periodic orbit; rescaling | h + c; orbit average; P_{g'}(2F) = 2P_g(F) | holds |
| 3.1 | invariant measures | id; swap; rotation; periodic flow | all measures; {(δ_a+δ_b)/2}; {Haar}; M(g) one point while M(g^p) has all point masses | M(g) ≠ M(g^p) recorded |
| 3.2 | affinity and concavity | two-point identity; Bernoulli mixture | partition entropy log 2 at n = 1, rate 0; 0.6648 < 0.6792 | concavity for integrals added (needed by §3.5 and §4.8) |
| 3.3 | fine partitions | Bernoulli(1/2) with [−k,k] coordinates; identity; {X} | log 2 for every k; 0; 0 | diameter → 0 is necessary |
| 3.4 | expansive ⇒ generator, u.s.c. | x_{−1}x_0x_1 partition (diameter 1/4 < 1/2); periodic measures → Bernoulli | rate H(p); entropies 0 → log 2 | u.s.c. but not l.s.c. recorded |
| 3.5 | expansive flows | periodic orbit; suspension; irrational linear flow | 0; log 2; 0 | **route corrected**: g^1-ergodic components are not flow-invariant; now uses entropy-expansivity of g^1 for every g^1-ergodic measure, then concavity |
| 3.6 | Abramov | roof 2 over Bernoulli; periodic orbit; t = −1 | h(g^2) = log 2, h(g^1) = (log 2)/2; 0; equal by `entropy_inverse` | own proof via refinement comparison; no unread text used |
| 4.1 | h + ∫φ ≤ P | Bernoulli(p); two-point identity | H(p) ≤ log 2; 1/2 ≤ 1 | agrees with ArithmeticDynamics §2.7 at φ = 0 |
| 4.2 | variational principle | k-shift with φ(x_0); finite identity | maximiser e^{φ(a)}/Σ, value log Σ e^φ; max φ | regularity needed only off metrizable spaces |
| 4.3 | entropy VP, ergodic sup | k-shift; identity; fixed point ⊔ shift | log k attained; 0; (log 2)/2 < log 2 | holds |
| 4.4 | equilibrium states | two-point identity; swap; fixed point of 2-shift | ES = {δ_a}; unique measure; δ is not an MME | holds |
| 4.5 | structure | two shifts; −(x−1/2)²; midpoint | ES(0) a segment, ergodic endpoints; {δ_{1/2}}; free energy 1/2 < 1 | third item restricted to equilibrium states |
| 4.6 | existence | shift; Buzzi; identity of [0,1] | uniform Bernoulli; no MME for finite r; measures on argmax | Buzzi2014 Corollary 1 (lines 114–116) is the non-existence Check |
| 4.7 | Newhouse (input) | toral automorphism; finite r; identity | consistent with §3.4; fails for finite r; trivial | stated as an input, used by no target |
| 4.8 | flow VP and ES | periodic orbit; suspension; period-1 orbit | time measure; product measure; point masses maximise over M(g^1) but are not flow-invariant | maximisation over M(g) is essential |
| 4.9 | time change, coboundaries | ∫L_gψ on a periodic orbit; F vs F + 5 + L_gψ; period-1 orbit | 0; pressure +5, same state; point masses are ES of F_1 for g^1 | **equivalence restricted to g-invariant μ** |
| 5.1 | Gibbs | uniform Bernoulli; swap; fixed-point mass | ratio 2^{−(n+2)}·2^n = 1/4; \|nP − S_nφ\| ≤ \|φ(a) − φ(b)\|/2; 0 on other balls | K = 4 computed |
| 5.2 | Bowen for homeomorphisms | Bernoulli; swap; two shifts | Bernoulli weights; ergodic not mixing; ES(0) a segment | specification hypothesis necessary |
| 5.3 | Bowen criterion for flows | suspension; periodic orbit; identity flow on 2 points | unique MME, not mixing; time measure; every measure an MME | holds |
| 6.1 | Axiom A* | 2-shift; finite identity; rotation | W^s_{1/2} = {y_i = x_i, i ≥ 0}, c = 1, λ = 1/2, bracket by coordinates; trivial; (A3) fails | holds |
| 6.2 | expansive, shadowing, closing, dense periodic | shift; finite set; rotation | constant δ*; d(x,y) ≤ cλ^nδ* → 0 | **corrected**: the draft claimed every point of a transitive system is recurrent (false: the point …000.1000… of the full shift is not); replaced by nonwandering |
| 6.3 | spectral decomposition, specification | swap (m = 2); shift (m = 1); two shifts | weak not strong spec; strong spec; permutation not a cycle | holds |
| 6.4 | Hölder ⇒ Bowen | x_0 Lipschitz; constants; harmonic potential | K = 0; K = 0; variation 1/m not exponential | K = 2C(cδ)^θ/(1 − λ^θ) |
| 6.5 | flow LPS | suspension; periodic orbit; linear flow | v = height difference; z = g^v x; (F3) fails | holds |
| 6.6 | flow expansivity, closing, weak spec | suspension; periodic orbit; two orbits | weak spec with integer periods; gaps ≤ one period; no spec | holds |
| 6.7 | Hölder ⇒ Bowen (flows) | constants; suspension potential | K = 0 | holds |
| 6.8 | unique ES for transitive systems | shift; swap; periodic orbit | Bernoulli; h = 0; time measure | holds |
| 7.1 | hyperbolic set | diag(2, 1/2); diag(2, 1); identity; λ = 1 | E^s = second axis, λ = 1/2; eigenvalue 1 fails; E^s = E^u = 0; isometries would qualify | λ < 1 strict |
| 7.2 | flow hyperbolic set | constant field on 𝕋²; suspended saddle; hyperbolic zero | not Anosov; κ = log 2; excluded | holds |
| 7.3 | metric independence | metric × 4; Gram (2 1; 1 1) | K₁K₂ = 1; K₁K₂ = (3 + √5)/2 ≈ 2.618 | **constant corrected** from CK² to CK₁K₂ (scaling refuted CK²) |
| 7.4 | characterisation | (1,1), (0,1) for diag(2, 1/2); flow direction | unbounded, decays like 2^{−n}; bounded, not decaying | holds |
| 7.5 | continuity | toral; saddle ⊔ sink; diag(1+t, 1/(1+t)) | constant; dims 1 and 2; rates degenerate as t → 0 | locally constant, not constant |
| 7.6 | adapted metric | Euclidean for the saddle; Sasaki on a curvature −1 surface; Jordan block (1/2 1; 0 1/2) | C = 1, rate 1/2; C = 1, κ = 1; J^n has entries 2^{−n} and n2^{1−n} | **λ' > λ strict** (rate itself cannot be kept) |
| 7.7 | inverses, reversal | cat inverse (1 −1; −1 2); f² of the saddle; time-1 of a suspension | eigenvalues exchanged; rate 1/4; \|Dg^1 X\| = \|X\| | time-t maps are not Anosov |
| 8.1 | Hadamard–Perron | linear maps; λ ≥ 1; identity | graphs = E^u; dominated case allowed (μ > max(1, λ)); every line invariant | hypotheses copied from ClimenhagaPesin2016 Theorem 11.1 (lines 1822–1840) |
| 8.2 | local manifolds (diffeos) | toral; time-one map; saddle | eigenline segment; contains an orbit segment; second-axis segment | hyperbolicity used |
| 8.3 | strong/weak manifolds (flows) | suspension; horocycles; without convergence | stable segment at fixed height; horocycle arcs; orbit segment included | convergence condition necessary |
| 8.4 | LPS of locally maximal sets | Anosov; periodic orbit; {p} ∪ homoclinic orbit | U = M; trivial; bracket leaves the set | local maximality necessary |
| 8.5 | LPS for flows | Anosov flow; suspension; periodic orbit | U = M; toral bracket at matched heights; trivial | holds |
| 8.6 | nontriviality | cat; circle flow; sink | dims 1, 1; E^s = E^u = 0 in dimension 1; sink not Anosov | **(b) corrected**: tube radius C'εe^{−κT} around an orbit segment of length 2ε; volume ≲ e^{−κT(n−1)} → 0 for n ≥ 2 |
| 8.7 | Hölder bundles | toral; horocyclic; C¹ | constant; smooth; only continuous in general | C² hypothesis kept |
| 9.1 | toral automorphisms | cat; shear (1 1; 0 1); (0 −1; 1 0); n = 1 | eigenvalues 2.618, 0.382, h = 0.9624, E^u along (1, 0.618); entropy 0; order 4; ±1 excluded | det ±1 and no unimodular eigenvalue are both needed |
| 9.2 | suspensions, time changes | cat suspension; speed 2; constant roof | h = 0.9624; 1.9248; integer periods, not mixing | roof realisation up to a cohomologous roof stated |
| 9.3 | geodesic flows | curvature −1; flat torus; round sphere | \|Dg^t ξ\| = e^t\|ξ\| on E^u; J = p + tq; J = sin t | rests on the two recorded gaps |
| 10.1 | basic sets, attractors | periodic orbit; two fixed points; cat suspension | basic; attractor iff E^u = 0; not transitive; basin M | density of periodic orbits proved, not assumed |
| 10.2 | Bowen | cat with φ = 0 and φ = φ^u; fixed point | Haar, h = 0.9624; Haar, P = 0.9624 − 0.9624 = 0; point mass | C¹ (source generality) |
| 10.3 | Bowen–Ruelle | cat suspension; periodic orbit; F + 5 + L_gψ | product measure; orbit average; same state, P + 5 | C¹ (source generality) |
| 10.4 | Bowen–Margulis | cat; periodic orbit; curvature −1 surface | Haar, h > 0; h = 0 (exception); Liouville, h = 1 | exception needed |
| 11.1 | geometric potential | curvature −1; cat suspension; opposite sign | φ^u = −1; −0.9624, P = 0; opposite sign gives 2h | sign pinned |
| 11.2 | bounded distortion | linear flow; E* = E^u_y | ratio bounded by the cone opening; reduces to the Bowen property of φ^u | C² needed |
| 11.3 | volume lemmas | cat suspension; curvature −1; T = 0 | box ≈ ε·ε·ε·2.618^{−T}, times λ_T ≈ ε³; e^{−T}; bounded | chart route (no manifold change of variables needed) |
| 11.4 | P(φ^u) ≤ 0, = 0 on attractors | cat suspension; curvature −1; saddle orbit | 0; h_top = 1; −(1/p) log λ_p < 0 | holds |
| 11.5 | SRB | curvature −1; cat suspension; two measures | Bowen–Margulis = SRB = Liouville; μ⁺ = volume; a common generic point forces equality | holds |

**Context and vacuity checks.**

- Every theorem states its standing hypotheses in the sentence: compactness, nonemptiness, h_top < ∞ where pressure must be finite, regularity of measures off metric spaces, C¹ versus C², local maximality, transitivity.
- No statement quantifies over data unrelated to the construction.
- The headline of every layer mentions objects the roadmap defines.

**Duplication by object.**

- Mathlib's entropy is consumed, not redefined: §2.1's P(0) is `Dynamics.coverEntropy` by `Dynamics.coverEntropy_eq_iSup_netEntropyEntourage`, read at the pin in `Mathlib/Dynamics/TopologicalEntropy/NetEntropy.lean`, lines 345–356.
- Mathlib has no open-cover form, no pressure, no expansivity, no specification and no hyperbolic set at the pin (files under `Mathlib/Dynamics/` read).
- Tau Ceti's `TauCeti/Dynamics/CatMap.lean` gives only the matrix data of the cat map, and Tau Ceti's Lyapunov–Perron theorem is autonomous, at an equilibrium. Both are consumed or cited accordingly.

## Notions moved down from later roadmaps

None. Every supplier is on main or earlier in the merge order: ArithmeticDynamics, GeometryOfNumbersAndQuadraticArithmetic, ProbabilisticAndMetricNumberTheory and TangentialBordism are in the merge order before the insertion point; DifferentialGeometry and RiemannianGeometry are on main.

The volume lemmas would naturally use a change-of-variables formula for non-isometric diffeomorphisms against `TauCeti.riemannianVolume`, which no roadmap supplies. Following Bowen–Ruelle's appendix, the design works in charts instead, with Mathlib's Euclidean change of variables and Tau Ceti's chart densities, so nothing had to move down.

## Proposed Part IIs and extensions

- **RiemannianGeometry, Part II**: the connection map of the Levi-Civita connection, the horizontal–vertical splitting of T(TM), and the theorem that the derivative of the geodesic flow is the Jacobi-field map. Needed only by §9.3. Recorded as `gap:connection-map-jacobi-derivative`.
- **TangentialBordism §2.3 extension**: the unit sphere bundle of a smooth Riemannian vector bundle as a closed embedded submanifold of the total space. Needed only by §9.3. Recorded as `gap:sphere-bundle-embedding`.

## Gaps

| slug | needed by | what is missing | supplier / section |
|---|---|---|---|
| sphere-bundle-embedding | 9.3 | the sphere bundle as a closed smooth submanifold of the total space, smooth inclusion and corestriction | TangentialBordism, §2.3 (B1.5) |
| connection-map-jacobi-derivative | 9.3 | connection map, horizontal–vertical splitting, D(geodesic flow) = Jacobi map | RiemannianGeometry, proposed Part II |

Nothing outside §9.3 depends on either gap. The README lists both under "Exact supplier contracts → Required extensions".

## Sources

**Fetched in this run (certified):**

- ClimenhagaThompson2016 (arXiv:1505.03803v2)
- ClimenhagaPesin2016 (arXiv:1303.2375v1)
- Buzzi2014 (arXiv:1205.4096v1)
- BowenPeriodicPoints1971, BowenEntropyExpansive1972, BowenGroupEndomorphisms1971 (AMS open archive)
- Smale1967 (AMS open archive)

**Already in the manifest, read:** BowenRuelle1975, Misiurewicz1976, TsujiiZhang2023, BCS2022.

**Settled as uncertified** (cited by locator, never requested): Walters1982, Bowen1975, KatokHasselblatt1995, FH2019, Newhouse1989, BowenWalters1972. The one KatokHasselblatt1995 theorem number used in the README, Theorem 6.2.8, is also cited in the certified ClimenhagaPesin2016 (lines 281–283); all other KatokHasselblatt1995 citations are at section or chapter level.

**Version notes.** ClimenhagaPesin2016 and Buzzi2014 are cited in the arXiv versions read (v1). I did not compare their theorem numbering with the published versions in Ergodic Theory and Dynamical Systems; the `version_note` fields say "arXiv v1".

**Could not read:** L. M. Abramov, *On the entropy of a flow* (1959), and D. V. Anosov, *Geodesic flows on closed Riemannian manifolds of negative curvature* (1967). Math-Net.Ru timed out again (the triage recorded seven earlier timeouts). Neither is cited in the README or recorded in the manifest, and no statement depends on their contents:

- Abramov's formula is located in the certified BowenRuelle1975 (lines 225–227, 409–411) and ClimenhagaThompson2016 (line 588), and §3.6 gives its own proof route.
- The geodesic-flow example is located in FH2019 and KatokHasselblatt1995.

No `needs-references.toml` request is open; the file was removed after its only entry was resolved.

**Process note.** My first fetches of Climenhaga–Pesin and Buzzi used arXiv ids I had guessed, and they returned unrelated papers (graph theory, astrophysics). I deleted those two manifest entries and refetched with the correct ids before citing anything. The unrelated texts remain only in the operator's cache.

## Dependency check

```
candidate: HyperbolicDynamicsAndThermodynamicFormalism is not in the merge order yet; checked as if placed after ArithmeticDynamics (the intake inserts it when its design is accepted)
depcheck: 242 roadmaps, 2368 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere. An earlier run flagged "KatokHasselblatt1995, §18.1" as a roadmap citation (a false positive on a source locator), so source locators now read "Section". Lean names outside TauCetiRoadmap were not checked by the tool on this host; I checked each cited Mathlib and Tau Ceti declaration in its file at the pinned commits.

## Untrusted text

Nothing in any fetched paper, roadmap or board file asked for any action. One local shell hook rejected a heredoc whose prose apparently matched a network-tool pattern; I wrote that chunk with the file tool instead. No network tool was used.
