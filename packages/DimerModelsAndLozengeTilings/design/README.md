# Roadmap: dimer models and lozenge tilings

**Summary.** This roadmap builds two-dimensional lattice statistical mechanics in Tau Ceti, with
the dimer model on the hexagonal lattice (equivalently, lozenge tilings of the triangular
lattice) as its worked case. It starts from Mathlib's simple graphs, perfect matchings, product
spaces, weak convergence of probability measures and determinants, and from Tau Ceti's
characterisation of ergodic countable-group actions as extreme invariant measures. It builds the
triangular lattice with its faces, lozenges and dual hexagonal graph; tilings of regions as perfect
matchings; height functions, a combinatorial simple connectivity with a bridge to Mathlib's
`IsSimplyConnected`, the lattice of height functions, flips and Thurston's tileability criterion;
Kasteleyn's theorem and Kenyon's determinantal local statistics on finite simply connected
regions; Gibbs specifications on finite-alphabet configuration spaces with a proper action of a
countable group, and the dimer specification on any locally finite periodic graph, with the face
property and the extreme-point characterisation of ergodic Gibbs measures; slopes; the
classification of ergodic Gibbs measures on the boundary of the slope triangle; torus tilings and
the four-determinant Kasteleyn formula on the torus; and the explicit determinantal kernel of an
ergodic Gibbs measure of every interior slope, identified with Okounkov–Reshetikhin's incomplete
beta kernel and, along a row, with the discrete sine kernel. The end theorems are: tilings are
perfect matchings of the dual graph (1.5); plane tilings are height functions (2.5); Thurston's
criterion (2.9); Kasteleyn's theorem and the local statistics formula (3.2, 3.3); the face and
ergodicity theorem for translation-invariant Gibbs measures (4.6, 5.3); every torus limit is a
translation-invariant Gibbs measure of the prescribed slope (7.3); the classification on the
edges of the slope triangle, with two distinct ergodic Gibbs measures of every edge slope (6.3);
the torus partition function as a signed sum of four determinants (8.3); existence of an ergodic
Gibbs measure of every slope (9.5); existence, uniqueness and ergodicity of the incomplete beta
process of every complex slope (9.7); and convergence of local statistics of tilings of growing
regions to Gibbs measures (10.2).

The README is definitive; `Suggested.lean` is the roadmap's acceptance test and states the
headline theorems named in this document, each with `sorry`, with the simple definitions they
need. Suggested homes: `TauCeti/Combinatorics/Tiling/Lozenge/` (Layers 1–3, 7–8),
`TauCeti/Probability/Gibbs/` (Layers 4–5), `TauCeti/Probability/Dimer/` (Layers 6, 9, 10).

## Scope and ownership

This roadmap owns:

- the triangular lattice on `ℤ × ℤ`, its edges, faces, colours, lozenges and lozenge types, its
  translations and its rotation of order three; the dual hexagonal graph; regions (arbitrary
  sets of faces), their interior and boundary edges and boundary vertices; tilings and free
  tilings of regions; the comparison of tilings with Mathlib's perfect matchings (Layer 1);
- integer edge cochains on regions, combinatorial simple connectivity, its bridge from
  topological simple connectivity of the union of faces in `ℝ²`, height functions of plane
  tilings and of tilings of regions, boundary heights, the distributive lattice of height
  functions, flips, flip connectivity and Thurston's criterion (Layer 2);
- Kasteleyn matrices of finite regions with positive edge weights, Kasteleyn's theorem for
  finite simply connected regions and the determinantal formula for lozenge correlations
  (Layer 3);
- tail σ-algebras of product spaces over a countable index set with a proper action of a
  countable group, identified along an enumeration with Tau Ceti's `tailProcess`, the theorem
  that invariant events are almost surely tail events, tail triviality and ergodicity of Bernoulli
  product measures under such actions, the weak topology on probability measures of a
  finite-alphabet subshift, Gibbs specifications and their Gibbs measures, the stability of the
  Gibbs property under tail-measurable densities, the face property of the invariant Gibbs
  measures, and their weak closedness (Layer 4);
- perfect-matching configuration spaces of locally finite countable graphs with a proper action
  of a countable group, the weighted dimer specification, its cylinder-identity form, and the
  lozenge instance on the hexagonal graph (Layer 5);
- slopes of translation-invariant measures on plane tilings, the corners and the edges of the
  slope triangle (Layer 6); torus tilings, height changes and torus measures (Layer 7);
  Kasteleyn theory on the torus (Layer 8); the infinite inverse Kasteleyn kernel, Riemann-sum
  limits on good tori, the resulting ergodic Gibbs measures, the incomplete beta kernel and the
  discrete sine kernel (Layer 9); local-statistics convergence of measures on tilings of growing
  regions (Layer 10).

It does not own, and does not restate:

- simple graphs, `SimpleGraph.induce`, subgraphs and `SimpleGraph.Subgraph.IsPerfectMatching`;
  product topologies and σ-algebras, `MeasureTheory.ProbabilityMeasure` with its weak topology,
  compactness of probability measures on a compact space, the portmanteau implications and the
  π-system convergence criterion; Kolmogorov's zero-one law; `ErgodicSMul`; conditional
  expectation; determinants and inverses; the lifting criterion through covering maps;
  the Riemann–Lebesgue lemma — all in Mathlib (exact names under the supplier contracts);
- the characterisation of ergodic invariant probability measures of a countable group action as
  extreme points of the invariant probability measures, `ErgodicSMul.iff_mem_extremePoints`,
  the convex set `TauCeti.MeasureTheory.invariantMeasuresOfMeasureUnivEq`, and the test of
  ergodicity on exactly invariant events,
  `TauCeti.MeasureTheory.ergodicSMul_iff_forall_smul_invariant` — already in Tau Ceti; this
  roadmap applies them and adds the Gibbs-specific face property;
- the tail σ-algebra of an ℕ-indexed process, `TauCeti.Probability.tailProcess`, with its normal
  form as the intersection of the future σ-algebras — already in Tau Ceti; the tail σ-algebra of
  4.1 differs in being indexed by an arbitrary countable set carrying a proper action of a
  countable group, under which it is equivariant, and for an infinite index set it equals
  `tailProcess` of the coordinate process along any enumeration;
- Jacobi's complementary-minor identity, which expresses a minor of a square matrix with unit
  determinant through the complementary minor of its inverse,
  `Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv` —
  already in Tau Ceti; 3.3 and 8.4 apply it to the restricted Leibniz sums of Kasteleyn
  matrices (Conventions);
- the finite triangular array `Δₙ = {(x,y,z) ∈ ℕ³ : x+y+z = n}` with its unit rhombi and hives,
  which TensorProductCombinatorics §1.1 owns for tensor-product multiplicities: it is a finite
  barycentric carrier for concave functions, not the infinite lattice with its dual graph used
  here, and no target here needs a comparison;
- determinantal point processes on continuous spaces and the continuous sine kernel, which
  RandomMatrices §8.3–8.4 owns; the discrete sine kernel of 9.7 is the lattice counterpart and
  is stated here only as a kernel of a measure on tilings;
- the perfect-matching theory of finite bipartite multigraphs of GraphConnectivityAndFlows §6.7,
  which is not used: matchings here are Mathlib's.

Out of scope altogether, and the content of the proposed DimerModelsAndLozengeTilingsPartII:
Sheffield's uniqueness of the ergodic Gibbs measure of each interior slope and the consequent
convergence of the fixed-height-change torus measures; the specific free energy, surface tension
and the Cohn–Kenyon–Propp variational principle with limit shapes; the continuum objects of
Aggarwal's universality theorem (admissible functions, the entropy functional and its maximiser,
convergence of domains); amoebae and the frozen–liquid–gaseous classification for general
periodic weights; general periodic bipartite planar graphs, the planar Kasteleyn theorem and
domino tilings. No ergodic theorem (Birkhoff or mean ergodic theorem for `ℤ²`) and no ergodic
decomposition is used: ergodicity enters only as triviality of invariant events.

## Conventions

All conventions below are fixed.

- **Lattice.** Vertices are `ℤ × ℤ`. The positive directions are `e₁ = (1,0)`, `e₂ = (0,1)`,
  `e₃ = (1,1)`. An edge is a pair `(v,k)` with `v ∈ ℤ²` and `k ∈ {1,2,3}`, the segment from `v`
  to `v + e_k`; every edge of the triangular lattice 𝕋 has exactly one such name (carrier
  `TriEdge`, with `k` stored as `Fin 3`). This is the lattice of Aggarwal's Section 1.2
  (aggarwal2023 lines 324–336), drawn on `ℤ²` rather than with angles π/3.
- **Faces and colours.** The faces are the white faces `W(v) = {v, v+e₁, v+e₃}` and the black
  faces `B(v) = {v, v+e₂, v+e₃}` (carrier `TriFace`). The edges of `W(v)` are `(v,1)`,
  `(v+e₁,2)`, `(v,3)`; those of `B(v)` are `(v,2)`, `(v+e₂,1)`, `(v,3)`. Consequently `(v,1)` lies
  in `W(v)` and `B(v−e₂)`, `(v,2)` in `B(v)` and `W(v−e₁)`, and `(v,3)` in `W(v)` and `B(v)`.
- **Lozenges.** A lozenge is the union of the two faces containing an edge, its inner edge; its
  type is the direction of the inner edge. Type 1 is `W(v) ∪ B(v−e₂)`, with vertices
  `v−e₂, v, v+e₁, v+e₃`; type 2 is `W(v−e₁) ∪ B(v)`; type 3 is the unit square `W(v) ∪ B(v)`.
  These are Aggarwal's types 1, 2, 3 (aggarwal2023 lines 343–361). The white face `W(v)` is
  matched across `(v,1)`, `(v+e₁,2)`, `(v,3)` to `B(v−e₂)`, `B(v+e₁)`, `B(v)` respectively.
- **Regions and tilings.** A region is any set `R` of faces, finite or infinite. A tiling of `R`
  is a set `M` of edges each lying in two faces of `R`, such that every face of `R` contains
  exactly one edge of `M`; a free tiling drops the first condition and only asks `M` to consist
  of edges of faces of `R`. A plane tiling is a tiling of the set of all faces; `𝔈(𝕋)` is the set
  of plane tilings and `𝔈(R)` the set of tilings of `R`.
- **Heights.** The neutral increment of an edge is `c₀(v,k) = 0` for `k = 1, 2` and `c₀(v,3) = 1`.
  The height function `H_M` of a plane tiling `M` satisfies `H_M(0) = 0`,
  `H_M(v+e₁) − H_M(v) = [(v,1) ∈ M]`, `H_M(v+e₂) − H_M(v) = [(v,2) ∈ M]` and
  `H_M(v+e₃) − H_M(v) = 1 − [(v,3) ∈ M]`; across an edge outside `M` the increment is neutral.
  This is aggarwal2023 lines 395–398. Witness: the all-type-1 tiling `M₁` has `H(x,y) = x`, the
  all-type-2 tiling `M₂` has `H = y`, the all-type-3 tiling `M₃` has `H = 0`. Gorin's height
  (gorin2021 lines 447–453: positive directions `(1,0)`, `(0,1)`, `(−1,−1)`, increment `+1` along
  a lozenge side and `−2` across a lozenge) is `h_G(x,y) = x + y − 3H(x,y)`; for `M₃` it is
  `x + y`, which rises by `1` along `e₁` and drops by `2` along `−e₃`, across the inner edge of
  each square.
- **Translations and rotation.** `ℤ²` acts additively: `τ_w M = {(v+w,k) : (v,k) ∈ M}`, and on
  measures by push-forward. Aggarwal's `S_w` translates by `−w` (aggarwal2023 lines 416–418);
  translation invariance is the same notion. The rotation `ρ(x,y) = (−y, x−y)` has order three,
  maps white faces to white faces and edge directions `1 ↦ 2 ↦ 3 ↦ 1`; heights transform by
  `H_{ρM}(w) = H_M(ρ⁻¹w) + w₁`, where `w₁` is the first coordinate of `w`; witness: `ρM₁ = M₂`
  and `H_{M₁}(ρ⁻¹w) + w₁ = (w₂ − w₁) + w₁ = w₂`.
- **Slopes.** For a translation-invariant probability measure μ on `𝔈(𝕋)` the slope is
  `(s,t) = (μ{(0,1) ∈ M}, μ{(0,2) ∈ M})`, the expected height increments along `e₁` and `e₂`
  (aggarwal2023 lines 421–431); `s`, `t`, `1 − s − t` are the densities of lozenges of types 1,
  2, 3. `𝒯 = {(s,t) : s > 0, t > 0, s + t < 1}` and `𝒯̄` is its closure. Witness: the point
  masses at `M₁`, `M₂`, `M₃` have slopes `(1,0)`, `(0,1)`, `(0,0)`.
- **Weights.** An edge weight is a function `w : TriEdge → ℝ` with positive values; a finite set
  `M` of edges has weight `∏_{e∈M} w(e)`. Type weights `(w₁,w₂,w₃)` give every edge of direction
  `k` the weight `w_k`.
- **Kasteleyn matrices.** For a finite region `R`, `K_R` has rows the white faces and columns
  the black faces of `R`, entry `w(e)` when the two faces share the edge `e` and `0` otherwise. A
  determinant is taken after composing with a bijection from black to white faces; its absolute
  value and the inverse `K_R⁻¹` (rows black, columns white) do not depend on the bijection.
- **Restricted Leibniz sums.** Let `A` be a square matrix over a commutative ring whose rows `I`
  and columns `J` are finite types, with a fixed bijection `β : J → I` (for a Kasteleyn matrix the
  bijection of the previous item; for the twisted matrices `K_{ab}` the common indexing of white
  and black faces by the fundamental domain). A bijection `σ : I → J` has sign `sgn(β ∘ σ)`, and
  `det A` is the determinant of the square matrix `(i,i') ↦ A(i, β⁻¹ i')`. For distinct rows
  `i₁, …, i_k` and distinct columns `j₁, …, j_k` the restricted Leibniz sum is
  `Λ_A(i;j) = Σ_{σ(i_l) = j_l} sgn(σ) ∏_{i ∉ {i_l}} A(i, σ i)`: the terms of the Leibniz expansion
  of `det A` that send every `i_l` to `j_l`, each without its factors `A(i_l, j_l)`. Fixing one
  such `σ₀` and writing `σ = σ₀ ∘ ρ`, with `ρ` a permutation of the rows outside `{i_l}`, shows
  that `Λ_A(i;j)` is `sgn(σ₀)` times the determinant of the complementary minor
  `(i,i') ↦ A(i, σ₀ i')`, `i, i' ∉ {i_l}`. For `k = 0`, `Λ_A = det A`; changing `β` multiplies
  `det A` and every `Λ_A(i;j)` by the same sign. Witness: `A = [[1,2,0],[0,1,3],[4,0,1]]` indexed
  by `{0,1,2}`, `β` the identity, `(i₁,i₂) = (0,2)`, `(j₁,j₂) = (1,0)`: the only admissible `σ` is
  the 3-cycle `0 ↦ 1 ↦ 2 ↦ 0`, of sign `+1`, so `Λ_A = A(1,2) = 3`; the complementary minor is the
  same `1 × 1` matrix `[3]`. With `det A = 25` and `25 A⁻¹ = [[1,−2,6],[12,1,−3],[−4,8,1]]`,
  `det[(A⁻¹)(j_l, i_m)] = det[[12,−3],[1,6]]/625 = 3/25`, so `det A · 3/25 = 3 = Λ_A`, the form in
  which 3.3 and 8.4 use Tau Ceti's complementary-minor identity.
- **Torus.** For `n₁, n₂ ≥ 1` the torus tilings are the plane tilings invariant under
  `n₁ℤ × n₂ℤ`. The height change is `(h₁,h₂)` with `H_M(v + (n₁,0)) − H_M(v) = h₁` and
  `H_M(v + (0,n₂)) − H_M(v) = h₂`. A torus lozenge is an `L`-orbit of plane edges, so it keeps its
  direction (its type); the three torus lozenges at `W(v)` are the orbits of `(v,3)`, `(v,1)` and
  `(v+e₁,2)`, joining `W(v)` to `B(v)`, `B(v−e₂)` and `B(v+e₁)` modulo `L`. For `(a,b) ∈ {0,1}²` the
  signed weight of a torus lozenge is its weight, multiplied by `(−1)^a` for a type-2 lozenge
  crossing the vertical seam (`W(v)`–`B(v+e₁)` with `v` in the last column) and by `(−1)^b` for a
  type-1 lozenge crossing the horizontal seam (`W(v)`–`B(v−e₂)` with `v` in the first row). The
  twisted Kasteleyn matrix `K_{ab}` indexes rows and columns by the fundamental domain
  `[0,n₁) × [0,n₂)` (white `W(v)` and black `B(v)` both by `v`), and its entry at `(W(u), B(u'))` is
  the sum of the signed weights of the torus lozenges joining `W(u)` to `B(u')` modulo `L`. For
  `n₁, n₂ ≥ 2` the three black neighbours of a white face are distinct and each entry has at most
  one summand; for `n₁ = 1` (types 2 and 3) or `n₂ = 1` (types 1 and 3) different lozenges share an
  entry, and on the `1 × 1` torus all three do. This is gorin2021 Definition 3.9 (lines 1452–1457),
  whose signs are attached to edges, in these coordinates.
- **Kernels.** For type weights `w = (w₁,w₂,w₃)` put `P̂_w(θ,φ) = w₃ + w₂e^{iθ} + w₁e^{−iφ}`; `w` is
  liquid when the strict triangle inequalities hold. For liquid `w` and `d ∈ ℤ²`,
  `G_w(d) = (4π²)⁻¹ ∬_{[0,2π]²} e^{i(d₁θ + d₂φ)} / P̂_w(θ,φ) dθ dφ`, and the infinite inverse Kasteleyn
  matrix is `K⁻¹_∞(B(v'), W(v)) = G_w(v' − v)`. Witness for `w = (1,1,1)`: `G(0) = 1/3` and
  `G(0,−2) = √3/(2π) − 1/3`.
- **Complex slope and incomplete beta kernel.** For `(s,t) ∈ 𝒯` put
  `ξ(s,t) = e^{πis} sin(πt) / sin(π(1−s−t))`, the apex of the triangle on `[0,1]` with angles
  `πs` at `0` and `πt` at `1`; `(s,t) ↦ ξ` is a bijection `𝒯 → ℍ` (aggarwal2023 lines 505–507).
  `X(M) = {v : (v,1) ∈ M}` is the set of type-1 positions (aggarwal2023 Definition 1.2, lines
  463–464: the centre of the type-1 lozenge with inner edge `(v,1)` is `v + (1/2, 0)`). For
  `v_j = (x_j,y_j)`, `K_ξ(v₁;v₂) = (2πi)⁻¹ ∫_{ξ̄}^{ξ} (1−z)^{y₁−y₂} z^{x₂−x₁−1} dz` along a path in
  `ℂ ∖ {0,1}` crossing the real axis once, in `(0,1)` when `y₁ ≥ y₂` and in `(−∞,0)` when
  `y₁ < y₂` (aggarwal2023 Definition 1.3, lines 472–476; okounkov-reshetikhin2003 Definition 4,
  lines 965–968). The integrand is single-valued with poles only at `0` and `1`, so the value
  depends only on the side of crossing; the polygonal paths `ξ̄ → 1/2 → ξ` and `ξ̄ → −1 → ξ` are
  the defining representatives. Witness: `K_ξ(v;v) = arg(ξ)/π = s`.
- **Sizes and real numbers.** Probabilities are real numbers in `[0,1]`; all divisions are real.
  Natural-number subtraction does not occur: height changes satisfy `n₂h₁ + n₁h₂ ≤ n₁n₂`, and
  `n₁n₂ − n₂h₁ − n₁h₂` is computed in `ℤ`.

## Exact supplier contracts

### From Mathlib

At the Mathlib revision pinned in `lake-manifest.json`.

- `SimpleGraph`, `SimpleGraph.induce` (`Mathlib/Combinatorics/SimpleGraph/Maps.lean`, an abbrev
  giving the induced graph on a subtype), `SimpleGraph.LocallyFinite`
  (`Mathlib/Combinatorics/SimpleGraph/Finite.lean`), `SimpleGraph.Subgraph`,
  `SimpleGraph.Subgraph.IsMatching`, `SimpleGraph.Subgraph.IsPerfectMatching` and
  `SimpleGraph.Subgraph.isPerfectMatching_iff` (`Mathlib/Combinatorics/SimpleGraph/Matching.lean`:
  a perfect matching is a spanning subgraph in which every vertex has exactly one neighbour).
- `Pi.topologicalSpace` (`Mathlib/Topology/Constructions.lean`), `Function.compactSpace` and
  `Pi.compactSpace` (`Mathlib/Topology/Compactness/Compact.lean`); `MeasurableSpace.pi`
  (`Mathlib/MeasureTheory/MeasurableSpace/Constructions.lean`); `MeasureTheory.Measure.infinitePi`
  (`Mathlib/Probability/ProductMeasure.lean`).
- `Pi.borelSpace` (`Mathlib/MeasureTheory/Constructions/BorelSpace/Basic.lean`, line 645: for a
  countable index type and factors that are second-countable Borel spaces, the product σ-algebra
  is the Borel σ-algebra of the product topology; a factor whose σ-algebra is not its Borel
  σ-algebra is not covered); `DiscreteMeasurableSpace`
  (`Mathlib/MeasureTheory/MeasurableSpace/Defs.lean`: every subset is measurable) and
  `DiscreteMeasurableSpace.toBorelSpace` (the same Borel file: a space with the discrete topology
  and the discrete σ-algebra is a Borel space); `Subtype.borelSpace` (the same Borel file: a subset
  of a Borel space, with the subspace topology and the trace σ-algebra, is a Borel space);
  `Bool.instMeasurableSpace` (defined as `⊤`,
  `Mathlib/MeasureTheory/MeasurableSpace/Instances.lean`) and `Bool.borelSpace`. These are the
  Borel structures of 4.4–4.6 and Layers 5–10.
- `MeasureTheory.ProbabilityMeasure` and its weak topology
  (`Mathlib/MeasureTheory/Measure/ProbabilityMeasure.lean`: the topology instance is stated for an
  `OpensMeasurableSpace`); the instance `CompactSpace (ProbabilityMeasure E)` for a compact
  Hausdorff Borel space `E` (`Mathlib/MeasureTheory/Measure/Prokhorov.lean`, line 176);
  `MeasureTheory.ProbabilityMeasure.tendsto_measure_of_isClopen_of_tendsto` and
  `IsPiSystem.tendsto_probabilityMeasure_of_tendsto_of_mem`
  (`Mathlib/MeasureTheory/Measure/Portmanteau.lean`: the first needs `OpensMeasurableSpace` and
  `HasOuterApproxClosed`, which Mathlib provides for every pseudo-metrisable space in
  `Mathlib/MeasureTheory/Measure/HasOuterApproxClosed.lean`; the second needs
  `OpensMeasurableSpace`, second countability, a π-system of measurable sets containing
  arbitrarily small neighbourhoods of every point, and a countably generated filter).
- `MeasureTheory.exists_measure_symmDiff_lt_of_generateFrom_isSetRing`
  (`Mathlib/MeasureTheory/Measure/MeasuredSets.lean`: approximation of measurable sets by a
  generating ring of sets, for a finite measure).
- `ProbabilityTheory.measure_zero_or_one_of_measurableSet_limsup` and its sequential form
  `ProbabilityTheory.measure_zero_or_one_of_measurableSet_limsup_atTop`
  (`Mathlib/Probability/Independence/ZeroOne.lean`, lines 229 and 290: Kolmogorov's zero-one law
  along a filter and a directed family of index sets, and for an event measurable with respect to
  `limsup s atTop` when the σ-algebras `s n` are independent under the measure).
- `ErgodicSMul`, `ErgodicVAdd` (`Mathlib/Dynamics/Ergodic/Action/Basic.lean`: ergodicity tests
  almost invariant measurable sets); `MeasureTheory.SMulInvariantMeasure`
  (`Mathlib/MeasureTheory/Group/Defs.lean`); `Set.extremePoints`, `IsExtreme`
  (`Mathlib/Analysis/Convex/Extreme.lean`).
- `MeasureTheory.condExp` (`Mathlib/MeasureTheory/Function/ConditionalExpectation/Basic.lean`).
- `Matrix.det`, `Matrix.det_apply` (`Mathlib/LinearAlgebra/Matrix/Determinant/Basic.lean`: the
  Leibniz expansion), `Matrix.inv` (`Mathlib/LinearAlgebra/Matrix/NonsingularInverse.lean`:
  the inverse of a matrix whose determinant is not a unit is `0`), `Equiv.Perm.sign`
  (`Mathlib/GroupTheory/Perm/Sign.lean`).
- `IsSimplyConnected` and `SimplyConnectedSpace`
  (`Mathlib/AlgebraicTopology/FundamentalGroupoid/SimplyConnected.lean`: a set is simply connected
  when its subtype is, which includes nonemptiness and path-connectedness);
  `LocallyPathConnectedSpace` (`Mathlib/Topology/Connected/LocallyPathConnected.lean`);
  `IsCoveringMap.existsUnique_continuousMap_lifts` (`Mathlib/Topology/Homotopy/Lifting.lean`:
  unique lifts of maps from simply connected, locally path-connected spaces);
  `AddCircle.isCoveringMap_coe` (`Mathlib/Topology/Covering/AddCircle.lean`); `convexHull`.
- `tendsto_integral_exp_inner_smul_cocompact` (`Mathlib/Analysis/Fourier/RiemannLebesgueLemma.lean`:
  Riemann–Lebesgue on a finite-dimensional inner product space; integrability is not assumed and
  the non-integrable case is vacuous); `intervalIntegral`, `Complex.log`, `Complex.arg`.

At that pin Mathlib has no lattice tilings, no height functions, no Kasteleyn matrices, no Gibbs
specifications and no tail σ-algebra of a product space (the tail σ-algebra appears only as
`limsup` of a sequence of σ-algebras in the zero-one law).

### From Tau Ceti

At the Tau Ceti revision pinned in `lake-manifest.json`.

- `TauCeti.MeasureTheory.invariantMeasuresOfMeasureUnivEq`, its convexity lemma, and
  `ErgodicSMul.iff_mem_extremePoints` (`TauCeti/MeasureTheory/Group/ErgodicExtreme.lean`): for a
  countable group acting measurably (`[Group G] [Countable G] [MulAction G X]
  [MeasurableConstSMul G X]`) an invariant probability measure is ergodic iff it is an extreme
  point, in `ℝ≥0∞`-convexity of measures, of the invariant measures of mass one. The statements
  are multiplicative only; the additive action of `ℤ²` is used through `Multiplicative (ℤ × ℤ)`.
- `TauCeti.MeasureTheory.ergodicSMul_iff_forall_smul_invariant` and
  `TauCeti.MeasureTheory.exists_smul_invariant_ae_eq`
  (`TauCeti/MeasureTheory/Group/CountableAction.lean`, lines 68 and 53, for a countable group
  acting measurably): an almost invariant measurable event is almost equal to an exactly invariant
  one, with no hypothesis on the measure; and, for a measure with
  `[SMulInvariantMeasure G X μ]`, the action is ergodic iff every measurable, exactly invariant
  event is null or conull. Its reverse implication is the criterion used in 4.3, 5.3 and 9.4: for
  an invariant probability measure, exactly invariant events of probability `0` or `1` give
  ergodicity.
- `TauCeti.MeasureTheory.isExtreme_setOf_measure_eq_zero`
  (`TauCeti/MeasureTheory/Measure/Face.lean`): measures vanishing on a fixed set form a face.
- `TauCeti.Probability.tailFamily`, `TauCeti.Probability.tailProcess` and
  `TauCeti.Probability.tailProcess_eq_iInf_tailFamily`
  (`TauCeti/Probability/Process/Tail/Basic.lean`, lines 42, 47 and 64): for a process
  `X : (k : ℕ) → Ω → β k`, the future σ-algebra generated by the `X k` with `n ≤ k`, the tail
  σ-algebra `limsup (fun k => MeasurableSpace.comap (X k) _) atTop`, and its normal form
  `⨅ n, tailFamily X n`. Target 4.1 identifies its tail σ-algebra with `tailProcess` of the
  coordinate process along an enumeration of the index set. The `ℕ × ℕ`-indexed variant
  `TauCeti.Probability.arrayTail` (`TauCeti/Probability/Process/Array/Tail/Basic.lean`,
  line 43) is not used.
- `Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`
  (`TauCeti/LinearAlgebra/Matrix/Determinant/ComplementaryMinor.lean`, line 160), Jacobi's
  complementary-minor identity: for a square matrix `A` over a commutative ring, indexed by a
  finite type `n` with decidable equality, with `IsUnit A.det`, a splitting `e : m ⊕ p ≃ n` of the
  index type into finite types and permutations `σ`, `τ` of `n`, the minor of `A` on the rows
  `τ(e(inr ·))` and the columns `σ(e(inr ·))` equals `sgn σ · sgn τ · det A` times the minor of
  `A⁻¹` on the rows `σ(e(inl ·))` and the columns `τ(e(inl ·))`. Over `ℝ` the hypothesis is
  `det A ≠ 0`. 3.3 and 8.4 use it with `m` indexing the selected rows, `τ` the identity and `σ`
  sending each selected row to its selected column (read through `β`), so that the left side is
  the complementary minor of a restricted Leibniz sum (Conventions) and the two factors `sgn σ`
  cancel. The adjugate form `Matrix.det_mul_det_submatrix_adjugate`
  (`TauCeti/LinearAlgebra/Matrix/Determinant/Jacobi.lean`, line 54), stated for `Fin n` with
  increasing enumerations, is not used.

Tau Ceti has, at that pin, the invariant σ-algebra and mean ergodic projection for one map
(`TauCeti/Probability/Ergodic/`) and one-sided shift ergodicity of i.i.d. laws
(`MeasureTheory.Measure.ergodic_shift_infinitePi_const`,
`TauCeti/Probability/Ergodic/BernoulliShift.lean`); neither is needed, since the two-sided and
proper-action statements of Layer 4 are proved directly. Its tail σ-algebras are indexed by `ℕ`
or `ℕ × ℕ` and carry no group action. It has no dimers, height functions or Gibbs measures.

## How to read the build

Layer 1 fixes the lattice, the dual graph, regions and tilings, and proves that tilings are perfect
matchings. Layer 2 builds edge cochains, simple connectivity and height functions, and from them the
lattice of height functions, flips and Thurston's criterion. Layer 3 proves Kasteleyn's theorem on
finite simply connected regions from flip connectivity, and the local statistics formula from it and
Tau Ceti's complementary-minor identity. Layer 4 is abstract: product spaces with a proper action,
tail events, Bernoulli measures, the weak topology, specifications and the face property. Layer 5
instantiates Layer 4 for perfect matchings of periodic graphs and for lozenge tilings. Layer 6
introduces slopes and settles the boundary of the slope triangle by hand. Layer 7 builds torus
tilings and shows that torus limits are translation-invariant Gibbs measures of the prescribed
slope. Layer 8 is Kasteleyn theory on the torus. Layer 9 passes to the limit on good tori, obtains
the determinantal ergodic Gibbs measure of every interior slope and identifies its kernel with the
incomplete beta kernel. Layer 10 defines local-statistics convergence for tilings of growing regions
and proves that limits of uniform measures are Gibbs. Layer 4 depends on no earlier layer, and Layer
5 uses Layers 1–2 only in its lozenge instance 5.4, so Layers 1–3 and Layers 4–5.3 may be built in
parallel.

## Layer 1: the triangular lattice and lozenge tilings

### 1.1 Vertices, edges, faces and symmetries

Define the edge carrier `TriEdge` and the face carrier `TriFace` with the colour of a face, the
three vertices and the three edges of a face, and the two endpoints of an edge, as in the
conventions (aggarwal2023 lines 324–337; gorin2021 lines 405–420). Define the translation action
of `ℤ²` on vertices, edges and faces and the rotation `ρ(x,y) = (−y, x−y)`. *Needs:* nothing
beyond Mathlib's `ℤ × ℤ` and `Fin 3`.

API:

- Every edge lies in exactly two faces, one white and one black, as listed in the conventions;
  every face has exactly three edges, one of each direction.
- Two distinct faces share at most one edge; faces sharing an edge have opposite colours.
- Exactly six faces contain a given vertex `v`: `W(v)`, `W(v−e₁)`, `W(v−e₃)`, `B(v)`, `B(v−e₂)`,
  `B(v−e₃)`.
- Translations act freely and preserve colours and directions; `ρ` has order three, preserves
  colours, sends the direction-`k` edges to direction `k+1` (mod 3) and commutes with translations
  up to the linear map `ρ` on the translation vector.

**Checks.**

- `W(0) = {(0,0),(1,0),(1,1)}` has edges `(0,1)`, `(e₁,2)`, `(0,3)` and `B(0) = {(0,0),(0,1),(1,1)}`
  has edges `(0,2)`, `(e₂,1)`, `(0,3)`: they share exactly `(0,3)`.
- The edge `(0,1)` lies in `W(0)` and in `B(−e₂) = {(0,−1),(0,0),(1,0)}`; attaching it to `B(0)`
  instead fails, since `(1,0) ∉ B(0)`.
- `ρ(W(0)) = {(0,0),(0,1),(−1,0)} = W(−e₁)`, `ρ³ = id`, `ρ(e₁) = e₂`, `ρ(e₂) = −e₃`,
  `ρ(e₃) = −e₁`. The reflection `(x,y) ↦ (y,x)` exchanges directions 1 and 2 but maps `W(0)` to
  `B(0)`: it reverses colours, and is not used as a symmetry of the coloured lattice.

### 1.2 The dual hexagonal graph

Define `hexGraph : SimpleGraph TriFace`, two faces being adjacent when they are distinct and share
an edge (gorin2021 lines 690–700; kenyon2009 Section 1.1, lines 95–113). *Needs:* 1.1; Mathlib
`SimpleGraph`, `SimpleGraph.LocallyFinite`.

API:

- `W(v)` is adjacent exactly to `B(v)`, `B(v−e₂)` and `B(v+e₁)`, across `(v,3)`, `(v,1)` and
  `(v+e₁,2)`; the graph is 3-regular, hence locally finite, and bipartite with the white and black
  faces as parts.
- Adjacent faces share a unique edge, and the map from adjacent pairs to shared edges is a
  bijection from the edge set of `hexGraph` onto `TriEdge`.
- Translations and `ρ` act by graph automorphisms; the six faces at a vertex form a 6-cycle of
  `hexGraph`.

**Checks.**

- The neighbours of `W(0)` are `B(0)`, `B(−e₂)`, `B(e₁)`; `W(0)` and `B(1,−1)` meet only in the
  vertex `(1,0)` and are not adjacent.
- The faces at the origin form the cycle `W(0) – B(0) – W(−e₁) – B(−e₃) – W(−e₃) – B(−e₂) – W(0)`,
  through the edges `(0,3)`, `(0,2)`, `((−1,0),1)`, `((−1,−1),3)`, `((0,−1),2)`, `(0,1)`.
- Declaring faces adjacent when they share a vertex would make `W(0)` adjacent to `B(1,−1)` and to
  `W(e₁)` and create odd cycles; the shared-edge definition is bipartite.

### 1.3 Regions

For a set `R` of faces define its vertices `V(R)`, its edges `E(R)` (edges of faces of `R`), its
interior edges `E°(R)` (both faces in `R`), its boundary edges `E∂(R)` (exactly one face in `R`),
its boundary vertices `∂R` (endpoints of boundary edges), its boundary graph (vertices `∂R`, edges
`E∂(R)`), connectedness (the graph `(V(R), E(R))` is connected) and the union of faces
`F(R) ⊆ ℝ²`, the union of the convex hulls of the faces under `ℤ² ⊆ ℝ²`. For a set `V` of vertices
define the region `Faces(V)` of faces with all three vertices in `V`, which is Aggarwal's
induced-subgraph convention (aggarwal2023 lines 338–341). *Needs:* 1.1; Mathlib `convexHull`.

API:

- For finite `R`, `3|R| = 2|E°(R)| + |E∂(R)|`.
- A vertex of `V(R)` is not in `∂R` exactly when all six faces at it lie in `R`.
- Translations and `ρ` act on regions compatibly with all the constructions above.
- For `V` such that every vertex of `V` lies in a face of `Faces(V)`, Aggarwal's boundary (the
  vertices of `V` adjacent to a vertex outside `V`) equals `∂(Faces(V))`.

**Checks.**

- `R = {W(0)}`: `E°(R) = ∅`, three boundary edges, `∂R = {(0,0),(1,0),(1,1)}`, and
  `3 = 2·0 + 3`.
- The unit hexagon `R₆` (the six faces at the origin): the six edges at `0` are interior, the six
  outer edges are boundary, `∂R₆` is the six neighbours of `0`, `V(R₆) ∖ ∂R₆ = {0}`, and
  `18 = 2·6 + 6`.
- `Faces({(0,0),(1,0),(1,1),(0,1)}) = {W(0), B(0)}`, while `Faces({(0,0),(1,0)}) = ∅` although the
  induced subgraph on these two vertices has an edge: tilings live on sets of faces, and a vertex
  set is used only through `Faces`.

### 1.4 Tilings

Define `IsTiling R M`, free tilings and `IsPlaneTiling M` as in the conventions (aggarwal2023
lines 342–364 and 380–383; gorin2021 lines 690–702). *Needs:* 1.3.

API:

- Every tiling is a free tiling; the lozenges of a tiling partition `R`; a finite tileable region
  has `|R| = 2|M|` and as many white as black faces.
- The restriction of a plane tiling to the edges of `R` is a free tiling of `R`; a free tiling of
  `R` is a tiling exactly when it contains no boundary edge.
- Translations and `ρ` map tilings of `R` to tilings of the image region.

**Checks.**

- The unit hexagon has exactly two tilings, `T_a = {(0,3), ((−1,0),1), ((0,−1),2)}` and
  `T_b = {(0,1), (0,2), ((−1,−1),3)}`, each with one lozenge of each type.
- `{W(0)}` has no tiling and three free tilings, one for each edge of `W(0)`.
- `M₁`, `M₂`, `M₃` (all edges of one direction) are plane tilings; `M₁ ∪ M₃` is not, since `W(0)`
  contains two of its edges.

### 1.5 Tilings are perfect matchings

For every region `R`, the map sending a tiling `M` to the subgraph of `hexGraph.induce R` whose
edges are the pairs of faces sharing an edge of `M` is a bijection from `𝔈(R)` onto the perfect
matchings (Mathlib `SimpleGraph.Subgraph.IsPerfectMatching`) of `hexGraph.induce R`; for `R` the
set of all faces this identifies `𝔈(𝕋)` with the perfect matchings of `hexGraph`
(`isTiling_iff_isPerfectMatching`; aggarwal2023 lines 342–364; gorin2021 lines 698–702; kenyon2009
lines 96–113). *Needs:* 1.2, 1.4; Mathlib `SimpleGraph.induce`,
`SimpleGraph.Subgraph.isPerfectMatching_iff`.

**Checks.**

- `R = ∅`: the empty tiling corresponds to the empty perfect matching of the empty graph.
- `R = {W(0)}`: neither side has an element.
- Unit hexagon: two tilings, and `hexGraph.induce R₆` is a 6-cycle with exactly two perfect
  matchings.

### 1.6 Row tilings

For `ε ∈ {0,1}^ℤ` define the row tiling `M_ε = {((x,y),1) : ε_x = 1} ∪ {((x,y),3) : ε_x = 0}`:
the column `x` of the plane is filled with the type-1 lozenges `W(x,y) ∪ B(x,y−1)` when `ε_x = 1`
and with the unit squares `W(x,y) ∪ B(x,y)` when `ε_x = 0`, so `ε` is read along any row. Write
`σ` for the shift `(σε)_x = ε_{x−1}` of `{0,1}^ℤ`. These are the tilings whose laws realise the
slopes on the edge `t = 0` of the slope triangle (kenyon2009 Exercise 13, line 891; gorin2021
lines 4638–4642). *Needs:* 1.4.

API:

- `M_ε` is a plane tiling: `W(x,y)` contains `((x,y),1)` or `((x,y),3)` and `B(x,y)` contains
  `((x,y+1),1)` or `((x,y),3)`, according as `ε_x = 1` or `0`, and no other edge of the face.
- `M_ε` contains no edge of direction 2, hence no lozenge of type 2; `ε ↦ M_ε` is injective, with
  `ε_x = [((x,0),1) ∈ M_ε]`, and continuous for the product topologies on `{0,1}^ℤ` and
  `TriEdge → Bool`, each edge's membership depending on one coordinate of `ε`.
- `τ_{e₂} M_ε = M_ε` and `τ_{e₁} M_ε = M_{σε}`; the constant sequences `ε ≡ 1` and `ε ≡ 0` give
  `M₁` and `M₃`.

**Checks.**

- `ε ≡ 1` gives `M₁` and `ε ≡ 0` gives `M₃`; no `ε` gives `M₂`, whose edges all have direction 2.
- `ε = 1_{[0,∞)}`: `W(−1,0)` contains `((−1,0),3)` and `W(0,0)` contains `((0,0),1)`;
  `τ_{e₁} M_ε = M_{1_{[1,∞)}}` differs from `M_ε` at `((0,0),1)`, while `τ_{e₂}` fixes `M_ε`.
- Reading `ε` along a column instead, `{((x,y),1) : ε_y = 1} ∪ {((x,y),3) : ε_y = 0}`, is not a
  tiling for `ε = 1_{{0}}`: `B(x,0)` would have to contain `((x,1),1)`, absent since `ε_1 = 0`, or
  `((x,0),3)`, absent since `ε_0 = 1`.

### Examples

The three frozen tilings `M₁`, `M₂`, `M₃`; the row tilings `M_ε` of 1.6, with
`M_{1_{[0,∞)}}` as the non-periodic specimen; the unit hexagon `R₆` with its tilings `T_a` and
`T_b`.

### Dependencies

Mathlib `SimpleGraph`, `SimpleGraph.induce`, `SimpleGraph.Subgraph.IsPerfectMatching`,
`convexHull`. No earlier layer.

## Layer 2: height functions, simple connectivity and Thurston's criterion

### 2.1 Edge cochains and simple connectivity

An edge cochain is a function `c : TriEdge → ℤ`, read as the increment from `v` to `v + e_k`. It is
closed on `R` when, for every face of `R`, `c(v,1) + c(v+e₁,2) = c(v,3)` (for `W(v)`) and
`c(v,2) + c(v+e₂,1) = c(v,3)` (for `B(v)`); it is exact on `R` when some `g : V(R) → ℤ` has
`c(u,k) = g(u+e_k) − g(u)` for every `(u,k) ∈ E(R)`. Define `IsSimplyConnectedRegion R`: `R` is
nonempty and connected, and every cochain closed on `R` is exact on `R`. This is the combinatorial
form of the simple connectivity of `F(R)` in aggarwal2023 lines 338–341; the consistency of local
height rules it encodes is gorin2021 lines 454–457 and kos2006 lines 177–181. *Needs:* 1.3.

API:

- Exact cochains are closed; a primitive on a connected region is unique up to an additive
  constant.
- Simple connectivity is invariant under translations and `ρ`.
- Shelling: if `R` is simply connected and a face `f ∉ R` meets `F(R)` in exactly one edge whose
  opposite vertex is not in `V(R)`, or in exactly two edges of `f`, then `R ∪ {f}` is simply
  connected.

**Checks.**

- `{W(0)}` is simply connected: a cochain closed on `W(0)` has primitive `g(0) = 0`,
  `g(e₁) = c(0,1)`, `g(e₃) = c(0,3)`, consistent because `c(0,1) + c(e₁,2) = c(0,3)`.
- The ring `R_ring` of the twelve faces other than `W(0)` that meet `W(0)` (they are
  `W(−1,0)`, `W(−1,−1)`, `W(0,−1)`, `W(1,0)`, `W(1,1)`, `W(0,1)` and `B(0,0)`, `B(0,−1)`,
  `B(−1,−1)`, `B(1,−1)`, `B(1,0)`, `B(1,1)`) is connected but not simply connected: the cochain
  equal to `1` on `(e₁,2)`, `1` on the edges crossed by the path of faces
  `B(1,0), W(1,0), B(2,0), W(2,0), …` and `0` elsewhere is closed on `R_ring` and sums to
  `c(0,1) + c(e₁,2) − c(0,3) = 1` around the boundary of `W(0)`, whose three edges lie in
  `E(R_ring)`.
- The unit hexagon is simply connected by shelling in the order `W(0)`, `B(0)`, `W(−e₁)`,
  `B(−e₃)`, `W(−e₃)` (one new edge and vertex each time) and `B(−e₂)` (two edges).

### 2.2 The plane is simply connected

Every cochain closed on the set of all faces is exact; the primitive vanishing at `0` is obtained
by summing along `e₁` and then `e₂`, the two face relations giving
`c(v,1) + c(v+e₁,2) = c(v,2) + c(v+e₂,1)` on every unit square (gorin2021 lines 454–457).
*Needs:* 2.1.

**Checks.**

- The neutral cochain `c₀` is not closed: on `W(v)` it gives `0 + 0 ≠ 1`.
- For the cochain of `M₁` (value `1` on direction-1 edges, `1` on direction-3 edges, `0`
  otherwise) the primitive is `x`; for that of `M₃` it is `0`.
- On the set of all faces minus `W(0)` the cochain of 2.1's second Check is closed and not exact,
  so 2.2 needs every face.

### 2.3 Holes obstruct simple connectivity

If `R` is nonempty and `Q` is a nonempty finite set of faces outside `R` such that every face
sharing an edge with a face of `Q` lies in `Q ∪ R`, then `R` is not simply connected. The witness
is the dual-path cochain of a path of faces from a face of `Q` to infinity: it is closed off the
starting face, and its sum over the boundary chain of `Q`, a cycle of edges of `R`, is `±1`
(kenyon2009 lines 360–367 for the flow–height duality). Consequently, for finite simply connected
`R` the complement of `R` is connected through shared edges: for finite `R` the complement has
exactly one infinite component, and any other would be such a `Q`. *Needs:* 2.1, 2.2.

**Checks.**

- `R_ring` with `Q = {W(0)}` satisfies the hypothesis.
- The five faces at the origin other than `W(0)` with `Q = {W(0)}` do not: `B(e₁)` shares the edge
  `(e₁,2)` with `W(0)` and lies in neither set; that region is simply connected (it is the
  hexagon's shelling stopped after five faces, reordered).
- For `R = ∅` the conclusion is vacuous, since simple connectivity includes nonemptiness.

### 2.4 From topological to combinatorial simple connectivity

If `F(R) ⊆ ℝ²` satisfies Mathlib's `IsSimplyConnected`, then `IsSimplyConnectedRegion R`. Route:
`F(R)` is locally path-connected (a locally finite union of closed triangles); a cochain closed on
`R` defines a continuous map `F(R) → ℝ/ℤ` that vanishes at vertices, is `t ↦ t·c(e)` along each
edge and is affine on each triangle after lifting the vertex values `0`, `c(e)`, `c(e) + c(e')` to
`ℝ`; it lifts through `ℝ → ℝ/ℤ`, and the lift restricted to vertices is an integer primitive.
Path-connectedness of `F(R)` gives connectedness of `R`, since triangles of the lattice meet only
in shared vertices or edges. Thus every domain in Aggarwal's sense is simply connected here.
*Needs:* 2.1; Mathlib `IsSimplyConnected`, `LocallyPathConnectedSpace`,
`IsCoveringMap.existsUnique_continuousMap_lifts`, `AddCircle.isCoveringMap_coe`.

**Checks.**

- `R = {W(0)}`: `F(R)` is a closed triangle, convex, hence simply connected, as is `R`.
- `W(0)` and `B(1,1)` meet in the single vertex `(1,1)`: `F(R)` is a wedge of two triangles,
  simply connected, and closed cochains on the two faces glue at `(1,1)`.
- For `R_ring`, `F(R)` is not simply connected; 2.4 gives nothing and 2.3 shows that `R_ring` is
  not simply connected either.

### 2.5 Heights of plane tilings

For every plane tiling `M` there is a unique `H_M : ℤ² → ℤ` with `H_M(0) = 0` and the increments of
the conventions; `H_M` is a height function (increments in `{0,1}` along `e₁`, `e₂`, `e₃`), and
`M ↦ H_M` is a bijection from `𝔈(𝕋)` onto the height functions vanishing at `0`, with inverse
`H ↦ {(v,1) : H(v+e₁) − H(v) = 1} ∪ {(v,2) : H(v+e₂) − H(v) = 1} ∪ {(v,3) : H(v+e₃) = H(v)}`
(`planeHeight_bijective`; aggarwal2023 lines 384–399; gorin2021 lines 447–458; kenyon2009
Section 2.2, lines 353–385). *Needs:* 1.4, 2.2.

API:

- Translation: `H_{τ_w M}(v) = H_M(v − w) − H_M(−w)`; rotation: `H_{ρM}(w) = H_M(ρ⁻¹w) + w₁`.
- Lipschitz bound: `H_M(u + (a,b)) − H_M(u) ≤ max(a, b, 0)` for all `u` and `(a,b)`.
- Gorin's height is `x + y − 3H_M`.

**Checks.**

- `H_{M₁} = x`, `H_{M₂} = y`, `H_{M₃} = 0`, and for the row tiling `H_{M_ε}(x,y) = Σ_{0≤i<x} ε_i`
  for `x ≥ 0` and `−Σ_{x≤i<0} ε_i` for `x < 0`, independent of `y`; for the alternating
  `ε_x = [x odd]` this is `⌊x/2⌋`.
- `H(x,y) = ⌊(x+y)/2⌋` is a height function; its tiling has no type-3 lozenge, since
  `H(v+e₃) − H(v) = 1` everywhere.
- `H(x,y) = x + y` is not a height function: its increment along `e₃` is `2`.

### 2.6 Heights on regions

A height function on `R` is `H : V(R) → ℤ` with `H(v) − H(u) ∈ {0,1}` for every positively
oriented edge `u → v` of `E(R)`. For simply connected `R`, `v₀ ∈ V(R)` and `m ∈ ℤ`, free tilings of
`R` correspond bijectively to height functions on `R` with `H(v₀) = m` (the increments are those of
the conventions on `E(R)`), and tilings correspond to the height functions whose increment along
every boundary edge is neutral (aggarwal2023 lines 380–401; gorin2021 lines 511–514). Restricting
a plane tiling commutes with restricting its height function. *Needs:* 1.4, 2.1.

**Checks.**

- `R = {W(0)}`, `H(0) = 0`: the free tilings `{(0,1)}`, `{(e₁,2)}`, `{(0,3)}` have
  `(H(e₁), H(e₃)) = (1,1)`, `(0,1)`, `(0,0)`, which are all the height functions; none is a
  tiling, because neutral boundary increments would force `H(e₁) = 0 = H(e₃)` and `H(e₃) = 1`.
- On `R_ring` the tiling `T = {(0,2), ((1,1),1), ((0,−1),3), ((−1,−1),3), ((1,0),1), ((1,1),2)}`
  has increments `0`, `0`, `1` along `(0,1)`, `(e₁,2)`, `(0,3)`, which sum to `−1` around `W(0)`:
  `T` has no height function, so simple connectivity cannot be dropped.
- On the unit hexagon, normalised by `H(1,0) = 0`: `T_a` and `T_b` both give `H = 0` at `(1,0)`,
  `(0,1)`, `(1,1)` and `H = −1` at `(−1,0)`, `(0,−1)`, `(−1,−1)`, while `H(0) = 0` for `T_a`
  (because `(0,1) ∉ T_a`) and `H(0) = −1` for `T_b` (because `(0,1) ∈ T_b`).

### 2.7 Boundary heights

If `R` is finite and simply connected, its boundary graph is connected. Route: the complement of
`R` is connected (2.3); a function on `∂R` constant along boundary edges extends to a cochain on
the plane that is closed (zero on faces outside `R`, the coboundary of an extension on `R`), hence
exact (2.2), and comparing primitives on the two connected closures shows the function constant.
If the boundary graph of `R` is connected and `M`, `M'` are tilings of `R` whose height cochains
are exact on `R` (for simply connected `R`, every tiling, by 2.6), their height functions agree
on `∂R` once normalised at a common boundary vertex: along a boundary edge, which lies in neither
tiling, the increment of either height function is the neutral `c₀`, so its restriction to `∂R`
is determined by `c₀`, the connectedness of the boundary graph and the normalisation. The
boundary height `h_R` therefore depends only on `R` (aggarwal2023 lines 403–407; gorin2021 lines
511–514). *Needs:* 2.2, 2.3, 2.6.

**Checks.**

- Unit hexagon: integrating `c₀` round the outer hexagon from `h(1,0) = 0` gives `h = 0` at
  `(1,0)`, `(1,1)`, `(0,1)` and `h = −1` at `(−1,0)`, `(−1,−1)`, `(0,−1)` (the two diagonal boundary
  edges carry the increments), consistently round the loop, and both tilings induce it.
- The strip `R_strip` of all faces between `y = 0` and `y = 1` is simply connected, its boundary
  graph has two components (the two lines), and the tilings `M₃|R_strip` (type 3) and
  `M₂|R_strip` (type 2) have boundary heights, normalised by `h(0,0) = 0`, equal to `0` and `1` on
  the line `y = 1`: connectedness of the boundary cannot be dropped for infinite regions.
- `W(0)` and `B(1,1)` meeting at a vertex: the region is finite and simply connected with
  connected boundary graph, as 2.7 asserts, and no boundary height exists (each triangle's
  boundary is inconsistent), so the region is untileable although it has one face of each colour.
- Exactness cannot be dropped: `R_ring` minus `W(−e₃)` and `B(−e₃)` has connected boundary graph
  (the inner triangle `0, e₁, e₃` meets the outer boundary at `0` through the boundary edge
  `((−1,0),1)`), its dual graph is a path of ten faces with the unique tiling `T ∖ {((−1,−1),3)}`
  (`T` as in 2.6), and that tiling's cochain sums to `−1` round `W(0)`, a loop of edges of the
  region: the tiling has no height function at all, and no `h : ∂R → ℤ` has increments `c₀` along
  the boundary edges `(0,1)`, `(e₁,2)`, `(0,3)`.

### 2.8 The lattice of height functions and flips

The pointwise minimum and maximum of two height functions on `R` are height functions. For finite
simply connected tileable `R` with boundary height `h = h_R`, the height functions with boundary
values `h` have a least element `H_min(v) = max_{u∈∂R}(h(u) − ρ_R(v,u))` and a greatest
`H_max(v) = min_{u∈∂R}(h(u) + ρ_R(u,v))`, where `ρ_R(u,v)` is the least number of positively
oriented steps of an edge path from `u` to `v` in `E(R)`. A flip at an interior vertex `v` lowers
`H(v)` by one where allowed, that is when `H(v+e_k) = H(v) = H(v−e_k) + 1` for `k = 1,2,3`;
equivalently it replaces the edges `(v,3)`, `(v−e₁,1)`, `(v−e₂,2)` of `M` by `(v,1)`, `(v,2)`,
`(v−e₃,3)`. If `H ≠ H_min`, a flip is available at a vertex `v` where `H − H_min` is maximal,
chosen first with `H(v)` maximal and then with `v₁ + v₂` minimal, and the flipped function stays
`≥ H_min`. Hence any two tilings of a finite simply connected region are joined by finitely many
flips, and all tilings of such a region have the same number of lozenges of each type
(gorin2021 lines 756–782 and footnote 1, lines 765–769; kenyon2009 lines 537–550;
cohn-kenyon-propp2001 Section 1.4 for the lattice structure). *Needs:* 2.6, 2.7.

**Checks.**

- Unit hexagon: `T_a` admits the flip at `0` and becomes `T_b`; `T_a` is `H_max`, `T_b` is `H_min`,
  and `H_max(0) − H_min(0) = 1`; both have one lozenge of each type.
- The flip changes `W(0)–B(0)`, `W(−e₁)–B(−e₃)`, `W(−e₃)–B(−e₂)` into `W(0)–B(−e₂)`,
  `W(−e₁)–B(0)`, `W(−e₃)–B(−e₃)`: a 3-cycle of the black partners.
- On the 2 × 2 torus (Layer 7) the two tilings with height change `(1,0)` have no type-2 lozenge,
  admit no flip and differ: flip connectivity is a statement about simply connected regions.

### 2.9 Thurston's criterion

Let `R` be finite and connected. If there is `h : ∂R → ℤ` with `h(v) − h(u) = c₀(u,k)` along every
boundary edge `(u,k)` (with `v = u + e_k`) and `h(v) − h(u) ≤ ρ_R(u,v)` for all `u, v ∈ ∂R`, then
`R` has a tiling whose height cochain is exact, namely that of
`H(v) = min_{u∈∂R}(h(u) + ρ_R(u,v))`; conversely such a tiling yields such an `h`. If `R` is
moreover simply connected, `R` is tileable iff such an `h` exists (`thurston_tileable_iff`;
gorin2021 Theorem 1.4, lines 521–526, with its proof, and Corollary 1.5, line 613; thurston1990).
Gorin states the criterion for his height `h_G = x + y − 3h` and his oriented distance along the
directions `(1,0)`, `(0,1)`, `(−1,−1)`; both forms characterise tileability of simply connected
regions, so they are equivalent. *Needs:* 2.6, 2.8.

**Checks.**

- Unit hexagon: `h` exists and the inequalities hold; `R` is tileable.
- `R = {W(0)}` or a single black face: no `h` exists, since round the triangle `c₀` sums to
  `0 + 0 − 1 ≠ 0`.
- `R₆' = {W(0,0), B(1,0), W(1,0), W(1,1), B(1,1), B(2,1)}` is simply connected (shelling), has three
  faces of each colour and a consistent boundary height (`h = 0` at `(0,0)`, `(1,0)`, `(2,0)`,
  `(2,1)` and `h = 1` at `(3,2)`, `(2,2)`, `(1,2)`, `(1,1)`), but
  `h(1,1) − h(2,1) = 1 > 0 = ρ_R((2,1),(1,1))`, the step `(2,1) → (1,1)` along the interior edge
  `((1,1),1)` being negative; indeed `W(0,0)` and `W(1,0)` are both adjacent only to `B(1,0)` in
  `R₆'`, so it has no tiling.

### 2.10 Finite changes preserve lozenge counts

If two plane tilings `M`, `M'` differ on finitely many edges, then for each direction `k` the sets
`M ∖ M'` and `M' ∖ M` contain equally many edges of direction `k`; the difference `H_M − H_{M'}`,
normalised to vanish far away, has finite support, and the counts are telescoping sums of its
increments (kenyon2009 lines 869–878; kos2006 lines 239–256 for gauge and magnetic changes).
*Needs:* 2.5.

**Checks.**

- `T_a ∖ T_b = {(0,3), ((−1,0),1), ((0,−1),2)}` and `T_b ∖ T_a = {(0,1), (0,2), ((−1,−1),3)}`: one
  edge of each direction on each side.
- `M₁` and `M₃` differ on infinitely many edges and have type-1 densities `1` and `0`.
- Row tilings `M_ε`, `M_ε'` with `ε`, `ε'` differing at one coordinate differ along a whole column
  of edges, and 2.10 says nothing about them.

### Examples

The unit hexagon with `T_a`, `T_b`, its flip and its boundary height; `R_ring` with its two tilings
(Layer 3); `R₆'`, balanced and untileable; the strip `R_strip`.

### Dependencies

Layer 1; Mathlib `IsSimplyConnected`, `LocallyPathConnectedSpace`,
`IsCoveringMap.existsUnique_continuousMap_lifts`, `AddCircle.isCoveringMap_coe`.

## Layer 3: Kasteleyn theory on finite simply connected regions

### 3.1 Kasteleyn matrices and Boltzmann measures

For a finite region `R` and an edge weight `w`, define the Kasteleyn matrix `kasteleynMatrix R w`
(rows the white faces of `R`, columns the black faces, entry `w(e)` for faces sharing `e`, else
`0`), the partition function `partitionFunction R w = Σ_{M ∈ 𝔈(R)} ∏_{e∈M} w(e)`, and, when it is
positive, the Boltzmann probability measure on `𝔈(R)` with masses proportional to the weights
(gorin2021 lines 1199–1215; kenyon2009 Sections 3.1 and 3.4, lines 428–503). *Needs:* 1.4, 1.5;
Mathlib `Matrix.det`.

API:

- Each row and each column has at most three nonzero entries; the matrix is square exactly when
  `R` has as many white as black faces, and otherwise `R` has no tiling.
- For bijections `e, e'` from black to white faces, the determinants of the two square matrices
  differ by the sign of a permutation; the inverse, as a matrix with rows black and columns white,
  does not depend on the bijection.
- Translations and `ρ` act compatibly (with translated or rotated weights).

**Checks.**

- Unit hexagon, rows `W(0)`, `W(−e₁)`, `W(−e₃)`, columns `B(0)`, `B(−e₃)`, `B(−e₂)`, unit weights:
  `[[1,0,1],[1,1,0],[0,1,1]]`, determinant `2`; exchanging the first two columns gives `−2`
  (gorin2021 lines 722–744), so only the absolute value is intrinsic.
- With type weights `(a,b,c)` the matrix is `[[c,0,a],[b,a,0],[0,c,b]]` with determinant `2abc`,
  the sum of the weights `abc` of `T_a` and of `T_b`.
- `R = {W(0)}`: one row, no column, partition function `0`.

### 3.2 Kasteleyn's theorem

For a finite simply connected region `R` with as many white as black faces and a positive edge
weight `w`, all nonzero terms of the Leibniz expansion of the (square) Kasteleyn matrix have the
same sign, so `|det| = partitionFunction R w`; with unit weights `|det|` is the number of tilings
(`partitionFunction_eq_abs_det`; gorin2021 Theorem 2.1, lines 714–717, Theorem 3.1, lines
1218–1219; kenyon2009 Theorem 2, line 504, with the honeycomb proof of lines 537–550; kenyon1997
Theorem 2, lines 184–186). Route: a flip changes the matching bijection by a 3-cycle, which is
even, and multiplies the term by a positive factor; flips connect all tilings (2.8). *Needs:* 2.8,
3.1; Mathlib `Matrix.det_apply`, `Equiv.Perm.sign`.

**Checks.**

- Unit hexagon: `2` and `2abc`, as in 3.1.
- `R₆'` (2.9) is simply connected and balanced; its matrix, rows `W(0,0)`, `W(1,0)`, `W(1,1)`,
  columns `B(1,0)`, `B(1,1)`, `B(2,1)`, is `[[1,0,0],[1,0,0],[1,1,1]]`, of determinant `0`, and it
  has no tiling.
- `R_ring` (2.1) is not simply connected: its dual graph is the 12-cycle
  `W(−1,−1) – B(0,−1) – W(0,−1) – B(1,−1) – W(1,0) – B(1,0) – W(1,1) – B(1,1) – W(0,1) – B(0,0) –
  W(−1,0) – B(−1,−1)`, it has exactly the two tilings `T` (2.6) and
  `T' = {((−1,0),1), ((0,−1),2), ((1,−1),2), ((1,0),3), ((1,1),3), ((0,1),1)}`, whose matching
  bijections differ by a 6-cycle (odd), so with unit weights the determinant is `0` while the
  partition function is `2`.

### 3.3 Local statistics on finite regions

For a finite simply connected region `R` with positive partition function, a positive weight `w` and
pairwise distinct pairs `(f_i, g_i)` of a white and a black face of `R`, the Boltzmann probability
that every `f_i` is matched to `g_i` is `∏ K(f_i, g_i) · det[K⁻¹(g_i, f_j)]_{i,j}`, without absolute
value (`lozenge_correlation_eq_det`; gorin2021 Theorem 3.5, lines 1281–1288, and its proof, lines
1294–1352; kenyon2009 Corollary 3, lines 557–565; kenyon1997 Theorem 6, lines 362–373). Route: `R`
is tileable, so `K = K_R` is square (3.1); by 3.2 all nonzero terms of its Leibniz expansion have
the sign `ε` of `det K`, and `ε det K = partitionFunction R w > 0`. The tilings in the event are the
bijections `σ` with nonzero term and `σ(f_i) = g_i`, so the event's weight is
`ε ∏ K(f_i, g_i) · Λ_K(f;g)`, with `Λ_K` the restricted Leibniz sum of the Conventions. If a white or
a black face repeats among the pairs, the event is empty and `[K⁻¹(g_i, f_j)]` has two equal columns or rows. Otherwise Tau
Ceti's `Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`,
applied to the square matrix `(f,f') ↦ K(f, β⁻¹ f')` with the splitting that lists `f₁, …, f_k`
first, `τ` the identity and `σ = β ∘ σ₀` for a bijection `σ₀` with `σ₀(f_i) = g_i`, evaluates the
complementary minor of `Λ_K(f;g)` and gives `Λ_K(f;g) = det K · det[K⁻¹(g_i, f_j)]`; dividing the
event's weight by `ε det K` gives the formula. *Needs:* 3.2; Tau Ceti
`Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`; Mathlib
`Matrix.det_apply`, `Matrix.inv`, `Equiv.Perm.sign`.

**Checks.**

- Unit hexagon, unit weights: `K⁻¹` has `K⁻¹(B(0),W(0)) = 1/2`, `K⁻¹(B(0),W(−e₁)) = 1/2`,
  `K⁻¹(B(−e₃),W(0)) = −1/2`, `K⁻¹(B(−e₃),W(−e₁)) = 1/2`; the probability of `W(0)–B(0)` is `1/2`,
  and that of `W(0)–B(0)` together with `W(−e₁)–B(−e₃)` is
  `det[[1/2,1/2],[−1/2,1/2]] = 1/2`, the mass of `T_a`.
- The pairs `W(0)–B(0)` and `W(−e₁)–B(0)` share `B(0)`: the determinant has two equal rows and the
  probability is `0`.
- With type weights `(a,b,c)` on the hexagon both tilings have weight `abc` and the probability of
  `W(0)–B(0)` stays `c · K⁻¹(B(0),W(0)) = c · (ab)/(2abc) = 1/2`.
- Normalisation of the route on the unit hexagon, `β` sending the listed columns to the listed
  rows in order: for the pairs `W(0)–B(0)` and `W(−e₁)–B(−e₃)` the only admissible bijection also
  sends `W(−e₃)` to `B(−e₂)`, with sign `+1`, so `Λ_K = K(W(−e₃),B(−e₂)) = 1`, and
  `det K · det[[1/2,1/2],[−1/2,1/2]] = 2 · 1/2 = 1` agrees; dropping the factor `det K` would give
  `1/2 ≠ 1`, and the event's weight `ε · 1 · Λ_K = 1` over `ε det K = 2` is the probability `1/2`.

### Examples

The unit hexagon (determinant `2`, probability `1/2`), `R₆'` (determinant `0`), `R_ring` (the
negative control for simple connectivity).

### Dependencies

Layers 1–2; Tau Ceti's complementary-minor identity; Mathlib determinants and inverses.

## Layer 4: Gibbs specifications on configuration spaces

Throughout this layer `Γ` is a countable infinite group acting on a countable set `I`, and the
action is proper: for finite `F, F' ⊆ I` only finitely many `γ ∈ Γ` have `γF ∩ F' ≠ ∅`. `S` is a
measurable space, `Ω = I → S` carries the product σ-algebra, and `Γ` acts on `Ω` by
`(γω)(i) = ω(γ⁻¹i)`. For 4.4–4.6 `S` is moreover finite and carries both the discrete topology and
the discrete σ-algebra (every subset measurable, Mathlib `DiscreteMeasurableSpace`); `Ω` carries
the product topology, and a subset `X ⊆ Ω` carries the subspace topology and the trace σ-algebra.
Then `S` is a Borel space (`DiscreteMeasurableSpace.toBorelSpace`), so is `Ω` (`Pi.borelSpace`:
`I` is countable and the finite discrete `S` is second-countable), and so is `X`
(`Subtype.borelSpace`): the product σ-algebra of `Ω` and its trace on `X` are the Borel
σ-algebras. The discrete topology alone does not force this; with the trivial σ-algebra on
`{0,1}` the product σ-algebra is trivial (4.4, Checks). `Bool`, the alphabet of Layers 5–10,
carries both discrete structures natively (`Bool.instMeasurableSpace` is `⊤`; `Bool.borelSpace`).

### 4.1 Outside and tail σ-algebras

For `Λ ⊆ I` let `𝓕_{Λᶜ}` be the σ-algebra generated by the coordinates outside `Λ`; the tail
σ-algebra is `𝓣 = ⋂_{Λ finite} 𝓕_{Λᶜ}` (sheffield2005 lines 1341–1344). Cylinder events are those
depending on finitely many coordinates. *Needs:* Mathlib `MeasurableSpace.pi`; Tau Ceti
`TauCeti.Probability.tailProcess`, `TauCeti.Probability.tailProcess_eq_iInf_tailFamily`.

API:

- `𝓣` is a sub-σ-algebra; tail events are invariant under any change of finitely many
  coordinates; `𝓣` is mapped to itself by the action.
- Cylinder events form a ring of sets generating the product σ-algebra.
- For `I` infinite (which properness forces unless `I = ∅`) and any enumeration `e : ℕ ≃ I`,
  `𝓣` equals `TauCeti.Probability.tailProcess (fun k ω => ω (e k))`, the tail σ-algebra of the
  coordinate process read along `e`: by `tailProcess_eq_iInf_tailFamily` the latter is
  `⋂_n 𝓕_{e([0,n))ᶜ}`, and every finite `Λ` lies in some `e([0,n))`. So `𝓣` is a σ-algebra of the
  form `limsup s atTop`, the one Mathlib's
  `ProbabilityTheory.measure_zero_or_one_of_measurableSet_limsup_atTop` consumes, and it does not
  depend on the enumeration.

**Checks.**

- `I = ℤ`, `S = {0,1}`: the event that `ω` has infinitely many ones lies in `𝓣` and in
  `tailProcess` along any enumeration of `ℤ`; the cylinder event `ω(0) = 1` lies in neither.
- `I` finite: `𝓣` is trivial, taking `Λ = I`.
- `Γ = ℤ` acting trivially on `I = {pt}` is not proper; for it the invariant event `ω(pt) = 1` has
  measure `1/2` under `(δ₀ + δ₁)/2` and is not almost surely equal to a tail event, so 4.2 needs
  properness.

### 4.2 Invariant events are almost surely tail events

If μ is a `Γ`-invariant probability measure on `Ω` and `A` is a measurable event with `γA = A` for
all `γ`, there is a tail event `T` with `μ(A Δ T) = 0`. Route: approximate `A` by cylinder events
`C_k` with `μ(A Δ C_k) < 2^{−k}`, translate `C_k` by `γ_k` so that it depends only on coordinates
outside the `k`-th set of an exhaustion of `I`, and take `T = limsup γ_kC_k`. This is the ingredient of the face theorem georgii2011 Theorem 14.15
(uncertified), restated as sheffield2005 Lemma 3.2.2 (lines 1367–1371); the approximation is
Mathlib's. *Needs:* 4.1; Mathlib
`MeasureTheory.exists_measure_symmDiff_lt_of_generateFrom_isSetRing`.

**Checks.**

- For `Γ = ℤ` acting on `ℤ` by translation and the invariant event "the density of ones exists and
  equals `1/2`", `T` may be taken equal to it: it is already a tail event.
- For the trivial group (finite, excluded) acting on `I = {pt}` the conclusion fails as in 4.1.
- For the point mass at the constant configuration every event is almost surely trivial and the
  statement holds with `T ∈ {∅, Ω}`.

### 4.3 Bernoulli product measures

For a probability measure `ν` on `S`, the product `ν^{⊗I}` (Mathlib `Measure.infinitePi`) is
`Γ`-invariant and trivial on `𝓣` (Kolmogorov's zero-one law), hence `ErgodicSMul Γ Ω ν^{⊗I}` by
4.2 (ergodicity as triviality of invariant events: sheffield2005 Lemma 3.2.1, lines 1352–1360).
Route for tail triviality: read the coordinates along an enumeration of `I`, under which they are
independent with law `ν`, and apply the sequential zero-one law to `𝓣 = tailProcess` (4.1).
*Needs:* 4.1, 4.2; Mathlib `Measure.infinitePi`,
`ProbabilityTheory.measure_zero_or_one_of_measurableSet_limsup_atTop`, `ErgodicSMul`; Tau Ceti
`TauCeti.MeasureTheory.ergodicSMul_iff_forall_smul_invariant` (reverse implication).

**Checks.**

- `I = Γ = ℤ`, `ν` the uniform law on `{0,1}`: the two-sided Bernoulli shift is ergodic.
- `ν = δ_a`: the product is the point mass at the constant configuration, ergodic.
- `(Bern(1/3)^{⊗ℤ} + Bern(2/3)^{⊗ℤ})/2` is shift-invariant and not ergodic (the event "the
  density of ones is `1/3`" has measure `1/2`): the product structure is used.

### 4.4 The weak topology on a finite-alphabet subshift

Let `S` be finite with the discrete topology and the discrete σ-algebra, and `X ⊆ Ω` closed and
`Γ`-invariant, with the subspace topology and the trace σ-algebra. Then `X` is a compact
metrisable Borel space, the traces on `X` of cylinder events are clopen and measurable, `𝔓(X)`
(Mathlib `ProbabilityMeasure X`) is compact, `Γ` acts on `𝔓(X)` by affine homeomorphisms, and
`μ_n → μ` iff `μ_n(C) → μ(C)` for every cylinder event `C`.
For `S = Bool` the correlation functions `ρ_F(μ) = μ{ω : ω = 1 on F}`, `F ⊆ I` finite, determine
`μ`, and convergence of all of them is weak convergence (gorin2021 Definition 13.1 and Lemma 13.2,
lines 4509–4519; aggarwal2023 lines 412–418). *Needs:* 4.1; Mathlib `Function.compactSpace`,
`DiscreteMeasurableSpace.toBorelSpace`, `Pi.borelSpace`, `Subtype.borelSpace`, the compact-space
instance of `ProbabilityMeasure`,
`ProbabilityMeasure.tendsto_measure_of_isClopen_of_tendsto`,
`IsPiSystem.tendsto_probabilityMeasure_of_tendsto_of_mem`.

**Checks.**

- `I = ℤ`, `S = Bool`: the point masses at the indicators of `[n, ∞)` converge to the point mass
  at the zero configuration, since every cylinder event eventually sees only zeros.
- `Bern(1/2)^{⊗ℤ}` and `(δ_0 + δ_1)/2` (all zeros, all ones) have the same one-point function
  `1/2` and two-point functions `1/4` and `1/2` at `{0,1}`: one-point functions do not determine
  the measure.
- The set of finitely supported configurations is not closed, and the point masses at the
  indicators of `[0,n]` converge to the point mass at the indicator of `[0,∞)`: closedness of `X`
  is needed for the limit to stay in `𝔓(X)`.
- The discrete σ-algebra on `S` is needed, not only the discrete topology: take `Γ = I = ℤ` with
  the shift, `S = {0,1}` with the discrete topology but the trivial σ-algebra `{∅, S}`, and
  `X = {0̄, 1̄}`. The product σ-algebra of `Ω` is `{∅, Ω}`, so its trace on `X` has 2 sets while
  the Borel σ-algebra of the discrete two-point space `X` has 4; the clopen set
  `{1̄} = X ∩ {ω(0) = 1}` is not measurable, the Borel-factor hypothesis of `Pi.borelSpace` and the
  `OpensMeasurableSpace` hypothesis of the weak topology fail, and the only probability measure on
  `X` gives `X` mass 1, so `δ_{0̄} = δ_{1̄}`. With the discrete σ-algebra the trace and the Borel
  σ-algebra both have the 4 sets `∅, {0̄}, {1̄}, X`, and `(δ_{0̄} + δ_{1̄})/2` gives `{1̄}` mass
  `1/2`.

### 4.5 Specifications and Gibbs measures

A specification on `X` is a family `γ = (γ_Λ)` indexed by finite `Λ ⊆ I` of Markov kernels from
`X` to `X` such that `γ_Λ(·|ω)` is measurable in `ω` for the trace of `𝓕_{Λᶜ}` on `X`, proper
(`γ_Λ(B ∩ C|ω) = 1_B(ω) γ_Λ(C|ω)` for `B ∈ 𝓕_{Λᶜ}`) and consistent (`γ_Δ γ_Λ = γ_Δ` for
`Λ ⊆ Δ`). A probability measure μ on `X` is Gibbs for `γ` when `μγ_Λ = μ` for every finite `Λ`
(sheffield2005 Section 1.1.2, lines 303–342). It is `Γ`-equivariant when
`γ_{γ'Λ}(γ'C|γ'ω) = γ_Λ(C|ω)`, and quasilocal when `ω ↦ γ_Λ(C|ω)` is continuous on `X` for every
cylinder event `C`. *Needs:* 4.1; Mathlib `MeasureTheory.condExp`.

API:

- μ is Gibbs iff for every finite `Λ` and measurable `C`, `γ_Λ(C|·)` is a version of the conditional
  expectation of `1_C` given `𝓕_{Λᶜ}` (Mathlib `condExp`).
- The Gibbs measures `𝒢(γ)` form a convex set.
- For `Γ`-equivariant `γ`, `𝒢(γ)` is `Γ`-invariant; write `𝒢_inv(γ)` for its invariant elements
  and `𝔓_inv(X)` for the invariant probability measures.

**Checks.**

- On the closed shift-invariant subshift `X₀ = {0̄, 1̄}` of the two constant configurations of
  `{0,1}^ℤ`, `{0,1}` with its discrete σ-algebra, any coordinate outside a finite `Λ` determines
  the configuration, so the trace of `𝓕_{Λᶜ}` on `X₀` is the full σ-algebra; the identity
  specification `γ_Λ(·|ω) = δ_ω` is then measurable, proper and consistent, and every probability
  measure on `X₀` is Gibbs for it.
- The identity kernels on all of `{0,1}^ℤ` are not a specification: for `Λ = {0}` and
  `C = {ω(0) = 1}`, two configurations differing only at `0` have the same exterior but
  `γ_Λ(C|·)` takes the values `0` and `1`, so the measurability clause fails (under `Bern(1/2)^{⊗ℤ}`
  the conditional expectation of `1_C` given `𝓕_{Λᶜ}` is `1/2`, not `1_C`).
- The independent specification `γ_Λ(·|ω) = ν^{⊗Λ} ⊗ δ_{ω|Λᶜ}` on `X = Ω` has `ν^{⊗I}` as its
  only Gibbs measure: `μγ_{{i}} = μ` makes the coordinate `i` independent of the others with
  law `ν`.
- Kernels `γ_{{i}}` independent with law `ν` and `γ_{{i,j}}` independent with law `ν' ≠ ν` violate
  consistency, and no measure is Gibbs for both.

### 4.6 The face property and closedness

(a) If μ is Gibbs for `γ` and `ν` is a probability measure with `ν = f·μ` for a `𝓣`-measurable
`f ≥ 0`, then `ν` is Gibbs. (b) If `γ` is `Γ`-equivariant, `𝒢_inv(γ)` is a face of `𝔓_inv(X)`:
if a convex combination with positive weights of invariant probability measures is Gibbs, both
are Gibbs. Hence an element of `𝒢_inv(γ)` is extreme in `𝒢_inv(γ)` iff it is extreme in
`𝔓_inv(X)` iff it is ergodic (`gibbsInvariant_extreme_iff_ergodic`), and conditioning an element of
`𝒢_inv(γ)` on an invariant event of positive measure stays in `𝒢_inv(γ)`. (c) If `γ` is
quasilocal, `𝒢(γ)`, `𝔓_inv(X)` and `𝒢_inv(γ)` are weakly closed, hence compact (sheffield2005
Lemma 3.2.2, lines 1367–1371; georgii2011 Theorem 14.15, uncertified; gorin2021 Lemma 13.7 and its
proof, lines 4561–4582; kos2006 lines 195–202; kenyon2009 Section 5.1, lines 799–809). Route for
(b): the densities of the two measures with respect to their combination are almost surely
invariant, hence almost surely tail-measurable by 4.2, and (a) applies; the ergodicity statement is
Tau Ceti's `ErgodicSMul.iff_mem_extremePoints`. *Needs:* 4.2, 4.4, 4.5; Tau Ceti
`ErgodicSMul.iff_mem_extremePoints`, `TauCeti.MeasureTheory.invariantMeasuresOfMeasureUnivEq`.

**Checks.**

- For the identity specification of 4.5 on `X₀ = {0̄, 1̄}` with the shift, both points are fixed,
  `𝒢_inv = 𝔓_inv` is the segment from `δ_{0̄}` to `δ_{1̄}`, and the face statement holds trivially;
  its extreme points `δ_{0̄}`, `δ_{1̄}` are the ergodic elements, while the midpoint gives the
  invariant event `{1̄}` measure `1/2`.
- For the independent specification, `𝒢_inv = {ν^{⊗ℤ}}`, a one-point face of `𝔓_inv`, and
  `ν^{⊗ℤ}` is ergodic (4.3).
- The tail hypothesis of (a) is needed: for the independent specification with `ν = Bern(1/2)`,
  the density `f(ω) = 2·1_{ω(0)=1}` is not tail-measurable and `f·Bern(1/2)^{⊗ℤ}` (coordinate `0`
  equal to `1` almost surely) is not Gibbs.

### Examples

Two-sided Bernoulli shifts (4.3); the identity specification on the subshift of constant
configurations and the independent specification (4.5).

### Dependencies

Mathlib product spaces, the Borel structure of a discrete finite alphabet and its products and
subspaces, weak topology, portmanteau, zero-one law, conditional expectation; Tau Ceti
`TauCeti.Probability.tailProcess`, `ErgodicSMul.iff_mem_extremePoints`,
`TauCeti.MeasureTheory.ergodicSMul_iff_forall_smul_invariant`. No earlier layer.

## Layer 5: dimer models on periodic graphs

Throughout, `G` is a locally finite simple graph on a countable vertex type with an action of a
countable infinite group `Γ` by graph automorphisms whose induced action on the edge set is proper
(for `Γ = ℤ²` acting freely with finitely many vertex orbits this holds), and `w` is a positive
edge weight.

### 5.1 The configuration space of perfect matchings

Define `𝔛(G)` as the set of `ω : G.edgeSet → Bool` such that every vertex lies in exactly one edge
`e` with `ω e = true`; it is the set of indicators of edge sets of perfect matchings (Mathlib
`SimpleGraph.Subgraph.IsPerfectMatching` of the spanning subgraph with those edges) (kenyon2009
lines 96–100; gorin2021 lines 4494–4501). *Needs:* 4.4; Mathlib
`SimpleGraph.Subgraph.IsPerfectMatching`, `SimpleGraph.LocallyFinite`.

API:

- `𝔛(G)` is closed, hence compact and metrisable, and `Γ`-invariant; `Γ` acts by homeomorphisms.
- The correspondence with Mathlib's perfect matchings is a bijection.
- For a finite set `F` of edges and `ω ∈ 𝔛(G)`, the completion set
  `Ω_F(ω) = {ω' ∈ 𝔛(G) : ω' = ω off F}` is finite and contains `ω`. Its set of restrictions
  `{ω'|_F : ω' ∈ Ω_F(ω)}` is the set of `η : F → Bool` such that every endpoint of an edge of `F`
  lies in exactly one edge that is either in `F` with value `true` under `η` or outside `F` with
  value `true` under `ω`; it therefore depends only on `ω` on the finitely many edges outside `F`
  sharing a vertex with an edge of `F`, and `Ω_F(ω)` is obtained by gluing these restrictions to
  the fixed exterior `ω|_{Fᶜ}`.

**Checks.**

- `G = ℤ` with nearest-neighbour edges and `Γ = 2ℤ`: `𝔛(G)` has exactly two points, the even and
  the odd edges. For `F = ∅` both restriction sets are `{∅}`, while the completion sets are the
  two different singletons: the completion set itself is not determined by `ω` near `F`, only its
  restrictions to `F` are.
- Local finiteness is needed for closedness (a statement about the graph alone, without a group
  action): on the vertices `c, d, x_n, y_n` (`n ≥ 1`) with edges `c x_n`, `d y_n`, `x_n y_n`, the
  perfect matchings `M_k = {c x_k, d y_k} ∪ {x_n y_n : n ≠ k}` converge coordinatewise to
  `{x_n y_n : n ≥ 1}`, which leaves `c` and `d` uncovered.
- The unit hexagon cycle `C₆`, a finite graph (5.1 and 5.2 do not use `Γ`): two points, matching
  1.5.

### 5.2 The dimer specification

For finite `F` define `γ^w_F(·|ω)` on `𝔛(G)` as the probability measure on `Ω_F(ω)` with masses
proportional to `∏_{e ∈ ω'∩F} w(e)` (kos2006 Section 2.2.1, lines 195–202; kenyon2009 Section 5.1,
lines 781–809; gorin2021 Definition 13.4, lines 4534–4537). *Needs:* 4.5, 5.1.

API:

- `γ^w` is a proper, consistent, quasilocal specification on `𝔛(G)`; it is `Γ`-equivariant when
  `w` is `Γ`-invariant; for `w ≡ 1` it is uniform on completion sets. Quasilocality comes from the
  restriction sets of 5.1: for a cylinder event `C` on a finite edge set `E`, `γ^w_F(C|ω)` is a sum
  over the restriction set of `ω` at `F`, so it depends only on `ω` on `E ∖ F` and on the edges
  outside `F` sharing a vertex with an edge of `F`, and is locally constant.
- Cylinder identities: μ is Gibbs iff for every finite `F`, all `ω, ω' ∈ 𝔛(G)` agreeing off `F`,
  and every finite `E` containing `F` and the edges sharing a vertex with `F`,
  `w(ω' ∩ F) · μ[ω]_E = w(ω ∩ F) · μ[ω']_E`, where `[ω]_E` is the cylinder of configurations
  agreeing with `ω` on `E`; this needs no conditional probability.
- Gorin's vertex form: for every finite vertex set `Λ`, conditionally on the configuration outside
  `Λ` and on all vertices of `Λ` being matched inside `Λ`, the law inside is the Boltzmann law.
- Gauge invariance: replacing `w(uv)` by `w(uv)·g(u)·g(v)` for positive `g` leaves `γ^w`
  unchanged.

**Checks.**

- On `ℤ` with nearest-neighbour edges every completion set is a singleton, so every probability
  measure on `𝔛(G)`, for example `(δ_even + δ_odd)/2`, is Gibbs.
- On the finite cycle `C₆`, taking `F` all six edges, the only Gibbs measure is the Boltzmann
  measure; with unit weights it gives each matching mass `1/2`.
- A gauge transformation changes the weights of the two matchings of `C₆` by the same factor
  `∏_v g(v)`, so it does not change the Boltzmann measure; weights are not determined by the
  specification.

### 5.3 Gibbs, translation-invariant and ergodic dimer measures

For `Γ`-invariant `w`: the Gibbs measures `𝒢`, the invariant measures `𝔓_inv` and the invariant
Gibbs measures `𝒢_inv` of `γ^w` are weakly closed convex subsets of `𝔓(𝔛(G))`, hence compact;
`𝒢_inv` is a face of `𝔓_inv`; an element of `𝒢_inv` is ergodic iff it is extreme in `𝒢_inv` iff it
is extreme in `𝔓_inv`, iff every invariant event has measure `0` or `1`; conditioning on an
invariant event of positive measure stays in `𝒢_inv` (gorin2021 Definitions 13.4–13.6 and Lemma
13.7, lines 4534–4582; aggarwal2023 lines 413–420; kos2006 lines 195–202; kenyon2009 lines
825–835; sheffield2005 Lemmas 3.2.1–3.2.2, lines 1352–1371). *Needs:* 4.6, 5.2; Tau Ceti
`TauCeti.MeasureTheory.ergodicSMul_iff_forall_smul_invariant`.

**Checks.**

- On `ℤ` with `Γ = 2ℤ`: `𝒢_inv` is the segment between `δ_even` and `δ_odd`, both invariant under
  `2ℤ` and ergodic, and the midpoint is not ergodic (the event "the edge `{0,1}` is present" is
  `2ℤ`-invariant of measure `1/2`).
- Gorin's Definition 13.6 calls ergodic the extreme points of `𝒢_inv`, and Kenyon's Section 5.3 the
  invariant Gibbs measures with trivial invariant events; 5.3 shows the two agree.
- Gibbs measures need not be invariant: on `ℤ` with `Γ = ℤ` (translation by one, swapping even and
  odd), `δ_even` is Gibbs and not invariant.

### 5.4 The lozenge instance

`hexGraph` is locally finite and countable, and `ℤ²` acts on it freely by colour-preserving
translations, properly on edges. Through 1.5 and 1.2, `𝔈(𝕋)` is `𝔛(hexGraph)` with the edge set
of `hexGraph` identified with `TriEdge`, the action is `τ`, and `𝔓(𝕋)` denotes
`𝔓(𝔛(hexGraph))`. The uniform specification is written `γ^unif` and its Gibbs measures are the
Gibbs measures on lozenge tilings (`IsLozengeGibbs`). For type weights `(w₁,w₂,w₃)` the
specification `γ^w` equals `γ^unif` (by 2.10, two tilings agreeing off a finite set have equal
type counts there) (aggarwal2023 lines 412–420; kenyon2009 lines 869–878). *Needs:* 1.5, 2.10,
5.3.

**Checks.**

- The three frozen tilings are fixed by every translation; their point masses are invariant and
  Gibbs, since their completion sets are singletons (6.3).
- `(δ_{M₁} + δ_{M₂} + δ_{M₃})/3` is in `𝒢_inv` and not ergodic (gorin2021 Exercises 13.3 and
  13.9, lines 4520–4526 and 4583–4585).
- With type weights `(a,b,c)`, the two tilings of the unit hexagon have equal weights `abc`, so the
  weighted and uniform completion laws agree on that window.

### Examples

Matchings of `ℤ` (two configurations, every measure Gibbs); `C₆`; the frozen lozenge tilings.

### Dependencies

Layer 4; for 5.4 also 1.2, 1.5 and 2.10.

## Layer 6: slopes and the boundary of the slope triangle

### 6.1 The slope

For μ ∈ `𝔓_inv(𝕋)` define `slope μ = (μ{(0,1) ∈ M}, μ{(0,2) ∈ M})` (aggarwal2023 lines 421–431;
gorin2021 Definition 13.10 and Remark 13.11, lines 4590–4627; kos2006 lines 203–205; kenyon2009
lines 829–832). *Needs:* 2.5, 5.4.

API:

- With `slope μ = (s,t)`, every face lies in a lozenge of type 1, 2, 3 with probabilities `s`, `t`,
  `1 − s − t`, independent of the face; hence `slope μ ∈ 𝒯̄` (aggarwal2023 lines 453–456).
- `E_μ[H_M(x,y)] = sx + ty` for all `(x,y)`, the integrand being bounded by `|x| + |y|` (kos2006
  line 204).
- `slope` is affine and weakly continuous on `𝔓_inv(𝕋)` (it evaluates clopen cylinder events);
  `slope(ρ_*μ) = (1 − s − t, s)`.
- For every `(s,t)`, the fibre `{μ ∈ 𝒢_inv : slope μ = (s,t)}` is compact and convex.

**Checks.**

- `δ_{M₁}`, `δ_{M₂}`, `δ_{M₃}` have slopes `(1,0)`, `(0,1)`, `(0,0)`, and `ρ_*δ_{M₁} = δ_{M₂}`
  matches `(1 − 1 − 0, 1) = (0,1)`.
- `(δ_{M₁} + δ_{M₂} + δ_{M₃})/3` has slope `(1/3, 1/3)`.
- For `ε` distributed as `Bern(s)^{⊗ℤ}`, the row tiling `M_ε` has law of slope `(s, 0)`; the
  face `W(0)` lies in a type-3 lozenge with probability `1 − s`.

### 6.2 The corners

For μ ∈ `𝔓_inv(𝕋)`: `slope μ = (1,0)` iff `μ = δ_{M₁}`; `(0,1)` iff `δ_{M₂}`; `(0,0)` iff
`δ_{M₃}`. Each of these point masses is an ergodic Gibbs measure (gorin2021 lines 4638–4642;
kenyon2009 Exercise 13, line 891). Route: slope `(1,0)` puts every direction-1 edge in `M` almost
surely, and `M₁` is the only plane tiling containing them all. *Needs:* 6.1.

**Checks.**

- `δ_{M₁}` has slope `(1,0)`; a mixture `(δ_{M₁} + δ_{M₂})/2` has slope `(1/2, 1/2)`, not a corner.
- A non-invariant measure, the point mass at `M_ε` with `ε = 1_{[0,∞)}`, has `μ{(0,1) ∈ M} = 1` but
  is not `δ_{M₁}`: invariance is used.
- The fibre over each corner is a single point, hence a face of `𝒢_inv`.

### 6.3 The edges of the slope triangle

Let `Φ₂` be the set of plane tilings with no lozenge of type 2. (a) `M ↦ ε(M)`,
`ε(M)_x = [((x,0),1) ∈ M]`, is a homeomorphism `Φ₂ → {0,1}^ℤ` with inverse `ε ↦ M_ε`; it turns
`τ_{e₁}` into the shift and `τ_{e₂}` into the identity. (b) If `M ∈ Φ₂` and `M'` is a plane tiling
with `M Δ M'` finite, then `M' = M`: the height of `M'` agrees with that of `M` far away and is
nondecreasing along each vertical line, on which `H_M` is constant. (c) Every probability measure
on `𝔈(𝕋)` concentrated on `Φ₂` is Gibbs. (d) A translation-invariant μ has slope `(s,0)` iff
`μ(Φ₂) = 1` and `μ{(0,1) ∈ M} = s`. (e) `μ ↦ ε_*μ` is an affine homeomorphism from the invariant
Gibbs measures of slope `(s,0)` onto the shift-invariant probability measures `ν` on `{0,1}^ℤ`
with `ν{ε₀ = 1} = s`, and μ is ergodic under `ℤ²` iff `ε_*μ` is ergodic under the shift.
(f) For `0 < s < 1`, `Bern(s)^{⊗ℤ}` and the phase-randomised block measure
`β_s = (β + σ_*β)/2` (where `β` makes the pairs `(ε_{2k}, ε_{2k+1})` independent, equal to `(1,1)`
with probability `s` and `(0,0)` otherwise, and `σ` is the shift) are distinct ergodic
shift-invariant measures of density `s`; so there are at least two ergodic Gibbs measures of
slope `(s,0)`, and by `ρ` the same holds on the edges `s = 0` and `s + t = 1`
(`slopeEdge_ergodicGibbs_equiv`, `two_ergodicGibbs_of_slopeEdge`; sheffield2005 Theorem 9.5.1,
lines 6195–6198; gorin2021 lines 4638–4642; kenyon2009 Exercise 13, line 891). Route for the
ergodicity of `β_s`: `β` is a Bernoulli measure for the square of the shift (4.3), and a
shift-invariant event `A` has `β_s(A) = β(A) ∈ {0,1}`. *Needs:* 1.6, 2.5, 4.3, 5.3, 6.1.

**Checks.**

- `P(ε₀ = ε₁ = 1)` is `s²` under `Bern(s)^{⊗ℤ}` and `(s + s²)/2` under `β_s`; at `s = 1/2` these
  are `1/4` and `3/8`, and they agree only at `s ∈ {0,1}`.
- The corners are the degenerate cases: at `s = 1`, the invariant probability measures
  concentrated on `Φ₂` with slope `(1,0)` form the singleton `{δ_{M₁}}` (the mixture
  `(δ_{M₁} + δ_{M₃})/2` is concentrated on `Φ₂` but has slope `(1/2, 0)`), and the only
  shift-invariant measure of density `1` is the point mass at the all-ones sequence.
- The row tiling with `ε = 1_{[0,∞)}` lies in `Φ₂`, its point mass is Gibbs by (c) and is not
  translation-invariant: Gibbs measures concentrated on `Φ₂` need not be invariant.

### 6.4 Extreme points of slope fibres

The measure `ν₃ = (δ_{M₁} + δ_{M₂} + δ_{M₃})/3` is an extreme point of the slope fibre over
`(1/3, 1/3)` in `𝒢_inv` and is not ergodic: any invariant Gibbs measure absolutely continuous with
respect to `ν₃` is `Σ a_k δ_{M_k}`, of slope `(a₁, a₂)`, and slope `(1/3,1/3)` forces
`a = (1/3,1/3,1/3)`. Likewise `Σ a_k δ_{M_k}` with `a = (s, t, 1 − s − t)` lies in the fibre over
any non-corner slope `(s,t)` and is a proper combination of measures outside it, so no fibre over a
non-corner slope is a face of `𝒢_inv`, and the existence of an ergodic Gibbs measure of a given
slope does not follow from Krein–Milman on the fibre; 9.5 proves it with the explicit kernel. (This corrects the argument of
kenyon2009 lines 860–866, which deduces ergodicity of fibre elements from extremality in the
fibre.) *Needs:* 5.3, 6.1.

**Checks.**

- `ν₃` is in `𝒢_inv` (5.4) with slope `(1/3, 1/3)`, and the invariant event "`M = M₁`" has measure
  `1/3`.
- At a corner the fibre is a point (6.2), which is a face, so the phenomenon is specific to
  non-corner slopes.
- On the edge `t = 0`, the average of the point masses at `M_ε` and `M_{σε}` for the alternating
  sequence `ε` is invariant, Gibbs by 6.3(c), of slope `(1/2, 0)`, and ergodic by 6.3(e), the shift
  acting transitively on the two-point orbit.

### Examples

Frozen measures, Bernoulli rows, block rows, `ν₃`.

### Dependencies

Layers 1 (the row tilings of 1.6), 2, 4, 5.

## Layer 7: torus tilings and torus limits

### 7.1 Torus tilings and height changes

For `n₁, n₂ ≥ 1` let `L = n₁ℤ × n₂ℤ`; the torus tilings are the `L`-invariant plane tilings
(for `n₁, n₂ ≥ 2`, the perfect matchings of the quotient of `hexGraph` by `L`, a simple graph whose
white faces have three distinct neighbours; for `n₁ = 1` or `n₂ = 1` the quotient has multiple
edges and only the periodic description is used). Their height change
`(h₁,h₂)` is defined in the conventions (kos2006 lines 187–192; kenyon2009 lines 665–690;
gorin2021 Section 3.3, lines 1353–1392). *Needs:* 1.5, 2.5.

API:

- `h₁` is the number of type-1 lozenges on any horizontal segment of length `n₁`, and `h₂` the
  number of type-2 lozenges on any vertical segment of length `n₂`.
- Per fundamental domain there are `n₂h₁` lozenges of type 1, `n₁h₂` of type 2 and
  `n₁n₂ − n₂h₁ − n₁h₂` of type 3 (kenyon2009 Lemma 4, lines 682–690, for `n₁ = n₂`).
- The attainable height changes are exactly the `(a,b) ∈ ℕ²` with `n₂a + n₁b ≤ n₁n₂`, each
  realised by the floor tiling `H(x,y) = ⌊(n₂ax + n₁by)/(n₁n₂)⌋` (kenyon2009 lines 845–857).

**Checks.**

- `n₁ = n₂ = 1`: exactly three torus tilings, one of each type, with height changes `(1,0)`,
  `(0,1)`, `(0,0)`.
- `n₁ = n₂ = 2`, `(a,b) = (1,1)`: the floor tiling `⌊(x+y)/2⌋` has increment `1` along every `e₃`,
  so no type-3 lozenge, matching `4 − 2 − 2 = 0`.
- `(a,b) = (2,1)` on the 2 × 2 torus violates `2a + 2b ≤ 4` and is not attained.

### 7.2 Torus measures

For attainable `(a,b)` let `μ^{(a,b)}_{n₁,n₂}` be the uniform measure on torus tilings with height
change `(a,b)`; for `(s,t) ∈ 𝒯̄` let `μ^{s,t}_n = μ^{(⌊ns⌋,⌊nt⌋)}_{n,n}`, defined because
`⌊ns⌋ + ⌊nt⌋ ≤ n`; for type weights `w` let `μ^w_{n₁,n₂}` be the Boltzmann measure on all torus
tilings. All are viewed in `𝔓(𝕋)` (kos2006 Section 2.2.2, lines 206–213; kenyon2009 lines
860–863). *Needs:* 7.1.

API:

- Each is invariant under all of `ℤ²`.
- `slope μ^{(a,b)}_{n₁,n₂} = (a/n₁, b/n₂)`.

**Checks.**

- `μ^{0,0}_1 = δ_{M₃}`.
- `n = 2`, `(s,t) = (1/2, 0)`: height change `(1,0)`, two torus tilings (row tilings with `ε` of
  period two), each of mass `1/2`, slope `(1/2, 0)`.
- On the 2 × 2 torus with unit type weights, `μ^w_{2,2}` is uniform on the nine torus tilings
  (8.3), and its slope is `(1/3, 1/3)` by symmetry under `ρ`.

### 7.3 Torus limits are translation-invariant Gibbs measures

Every weak limit point of `(μ^{s,t}_n)_n` lies in `𝒢_inv` and has slope `(s,t)`; every weak limit
point of `μ^w_{n₁(k),n₂(k)}` with `n₁(k), n₂(k) → ∞` lies in `𝒢_inv`. Hence for every
`(s,t) ∈ 𝒯̄` the fibre of `𝒢_inv` over `(s,t)` is nonempty, compact and convex
(`torusLimit_mem_gibbsInvariant_slope`; kenyon2009 Section 5.4, lines 844–866; kos2006 Theorem
2.1, lines 215–220, whose existence half this is, without the ergodicity of the limit; gorin2021
Section 3.3). Route: the cylinder
identities of 5.2 hold exactly for windows that embed in the torus, because a change inside such a
window does not change the height change; they pass to weak limits; the slope is continuous.
Ergodicity of these limits is not asserted (6.4); for the weighted tori it follows from 9.4 along
good sizes. *Needs:* 5.3, 6.1, 7.2; Mathlib compactness of `ProbabilityMeasure`.

**Checks.**

- `(s,t) = (0,0)`: every `μ^{0,0}_n` is `δ_{M₃}`.
- `(s,t) = (1/2, 0)`: `μ^{1/2,0}_{2m}` is the law of the row tiling of a uniformly random sequence
  of period `2m` with `m` ones per period; a pattern on `k` fixed sites with `j` ones has
  probability `C(2m−k, m−j)/C(2m, m) → 2^{−k}`, so the sequence converges to the Bernoulli row
  measure, an ergodic Gibbs measure of slope `(1/2, 0)` (6.3).
- For `n = 3` and `(s,t) = (1/3, 1/3)` the measure `μ^{1/3,1/3}_3` has height change `(1,1)` and
  slope exactly `(1/3,1/3)`.

### Examples

The 1 × 1 and 2 × 2 tori; row tilings of period two.

### Dependencies

Layers 1, 2, 5, 6.

## Layer 8: Kasteleyn theory on the torus

### 8.1 Twisted Kasteleyn matrices

For `n₁, n₂ ≥ 1`, an `L`-periodic positive edge weight `w` and `(a,b) ∈ {0,1}²`, define `K_{ab}` as
in the conventions: a square matrix indexed by `[0,n₁) × [0,n₂)`, with rows the white faces and
columns the black faces of the fundamental domain (gorin2021 Definition 3.9, lines 1452–1457;
kenyon1997 Section 4.1, lines 380–390). *Needs:* 7.1; Mathlib `Matrix.det`.

API:

- The row of `W(v)` receives three edge contributions, the signed weights `w₃`, `±w₁`, `±w₂` (for
  type weights) of its torus lozenges of types 3, 1, 2, at the columns `v`, `v − e₂`, `v + e₁` taken
  modulo `L`; contributions whose columns coincide are added, so an entry may vanish although its
  summands do not.
- For type weights, `K_{ab}` commutes with the twisted translations of the torus.
- Leibniz expansion: expanding every entry into its edge contributions, `det K_{ab}` is a signed
  sum, over torus tilings, of their weights.

**Checks.**

- `n₁ = n₂ = 1`: `K_{ab} = w₃ + (−1)^b w₁ + (−1)^a w₂`, a 1 × 1 matrix whose single entry adds the
  three edge contributions, every lozenge of type 1 crossing the horizontal seam and every lozenge
  of type 2 the vertical one; at type weights `(1,1,2)`, `K₁₁ = 2 − 1 − 1 = 0` although its three
  summands are nonzero.
- `n₁ = n₂ = 2`, unit weights: `det K₀₀ = −3`, `det K₁₀ = det K₀₁ = det K₁₁ = 5` (by 8.5).
- Reversing the convention for which seam carries `a` exchanges `K₁₀` and `K₀₁`: on the 1 × 2 torus
  (`n₁ = 1`, `n₂ = 2`) with unit weights `det K₁₀ = −1` and `det K₀₁ = 5`, so the convention is
  pinned; there `det K₀₀ = 3`, `det K₁₁ = 1`, `ε₁₀ = −1`, and 8.3 gives `(3 + 5 + 1 + 1)/2 = 5`
  tilings (height changes `(0,0)`, `(1,0)`, `(0,2)` once each and `(0,1)` twice).

### 8.2 The sign of a torus tiling

The term of a torus tiling `M` with height change `(h₁,h₂)` in `det K_{ab}`, expanded into edge
contributions (8.1), has sign
`(−1)^{h₁h₂ + (n₂+1+b)h₁ + (n₁+1+a)h₂}`, the all-type-3 tiling having sign `+1` (kenyon2009 Lemma 5,
lines 698–717; gorin2021 Propositions 3.7–3.8 and the proof of Theorem 3.10, lines 1416–1504).
Route: the matching bijection of `M` relative to the all-type-3 tiling is the permutation
`v ↦ v + δ(v)` of the torus with `δ(v) ∈ {0, −e₂, e₁}`; the orbits of its lift to `ℤ²` are
monotone staircase paths, totally ordered because two disjoint staircases cannot cross (the
difference of their `x + y` values at equal `x − y` is even and changes by `0` or `±2`); hence all
non-trivial cycles have the same primitive winding `(k₁,k₂)`, their number is `gcd(h₁,h₂)`, and
the lengths sum to `n₁h₂ + n₂h₁`; the twists contribute `(−1)^{ah₂ + bh₁}`; and
`(−1)^{gcd(h₁,h₂)} = (−1)^{h₁h₂ + h₁ + h₂}`. *Needs:* 7.1, 8.1; Mathlib `Equiv.Perm.sign`.

**Checks.**

- `n₁ = n₂ = 1`: the type-1 tiling has `(h₁,h₂) = (1,0)` and sign `(−1)^b`, the type-2 tiling sign
  `(−1)^a`, matching the entries of 8.1.
- `n₁ = n₂ = 2`, the floor tiling of height change `(1,1)`: the permutation is the 4-cycle
  `(0,0) → (1,0) → (1,1) → (0,1) → (0,0)`, with one type-2 lozenge on the vertical seam and one
  type-1 lozenge on the horizontal seam, so for `a = b = 0` the sign is `−1`, as the formula gives.
- Summing signs over the nine tilings of the 2 × 2 torus (counts `1, 2, 2, 1, 1, 2` for height
  changes `(0,0), (1,0), (0,1), (2,0), (0,2), (1,1)`, signs `+, −, −, +, +, −` for `a = b = 0`)
  gives `1 − 2 − 2 + 1 + 1 − 2 = −3 = det K₀₀`.

### 8.3 The torus partition function

`Σ_M ∏_{e∈M} w(e) = (ε₀₀ det K₀₀ + ε₀₁ det K₀₁ + ε₁₀ det K₁₀ + ε₁₁ det K₁₁)/2`, the sum over torus
tilings, with `ε_{ab} = −1` exactly when `(a,b) ≡ (n₁,n₂)` modulo `2` and `+1` otherwise
(`torus_partitionFunction_eq`; gorin2021 Theorem 3.10 and table (3.4), lines 1458–1472; kenyon2009
equation (3), line 724, for `n` odd; kenyon1997 Lemma 7, lines 392–396; kos2006 Theorem 4.2
context, lines 657–666). Route: by 8.2, for every height change the four signs weighted by
`ε_{ab}` sum to `2`, a check over the parities of `h₁`, `h₂`, `n₁`, `n₂`. *Needs:* 8.2.

**Checks.**

- `n₁ = n₂ = 1`, odd parities, `ε₁₁ = −1`:
  `((w₃+w₁+w₂) + (w₃−w₁+w₂) + (w₃+w₁−w₂) − (w₃−w₁−w₂))/2 = w₁ + w₂ + w₃`.
- `n₁ = n₂ = 2`, unit weights, `ε₀₀ = −1`: `(3 + 5 + 5 + 5)/2 = 9`, the number of tilings counted in
  8.2.
- Using `ε₀₀ = −1` on the 1 × 1 torus would give `(−(w₃+w₁+w₂) + (w₃−w₁+w₂) + (w₃+w₁−w₂) +
  (w₃−w₁−w₂))/2 = w₃ − w₁ − w₂`, wrong: the signs depend on the parities of `n₁`, `n₂`.

### 8.4 Torus correlations

For pairwise distinct torus lozenges `ℓ₁, …, ℓ_k`, with `ℓ_i` joining `W(u_i)` to `B(v_i)` and of
signed weight `κ_{ab}(ℓ_i)` (8.1), the Boltzmann probability that all occur is
`(2Z)⁻¹ Σ_{ab} ε_{ab} ∏_i κ_{ab}(ℓ_i) · c_{ab}`. Here `c_{ab} = 0` when two of the `ℓ_i` share a
white or a black face; otherwise `c_{ab} = Λ_{K_{ab}}(u;v)` is the restricted Leibniz sum of the
Conventions, the signed complementary minor of `K_{ab}`: the sum over bijections `σ` from the white
to the black faces of the fundamental domain with `σ(u_i) = v_i` of
`sgn(σ) ∏_{u ∉ {u_i}} K_{ab}(u, σu)`, where `sgn(σ)` is the sign of `σ` read as a permutation of
`[0,n₁) × [0,n₂)`. When `det K_{ab} ≠ 0`, `c_{ab} = det K_{ab} · det[K_{ab}⁻¹(v_i, u_j)]` with this
convention, the determinant having two equal rows or columns when a face repeats (gorin2021
Theorem 4.10, lines 1847–1850; kos2006 Theorem 4.2, lines 658–666; kenyon1997 Lemma 8, lines
401–406). The coefficients `ε_{ab} det K_{ab}/(2Z)` have absolute value at most `1/2` and sum to
`1`. Route: expanding the entries into edge contributions, the tilings containing all `ℓ_i`
contribute `∏_i κ_{ab}(ℓ_i) · c_{ab}` to `det K_{ab}`, and the sign identity of 8.3 holds tiling by
tiling. When `det K_{ab} ≠ 0` and the faces are distinct, Tau Ceti's
`Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`, applied to
`K_{ab}` with the splitting that lists `u₁, …, u_k` first, `τ` the identity and `σ` a permutation
with `σ(u_i) = v_i`, evaluates the complementary minor of `Λ_{K_{ab}}(u;v)` and gives the inverse
form. *Needs:* 8.1, 8.3; Tau Ceti
`Matrix.det_submatrix_comp_inr_eq_sign_mul_det_mul_det_submatrix_comp_inl_nonsing_inv`; Mathlib
`Matrix.det_apply`, `Matrix.inv`, `Equiv.Perm.sign`.

**Checks.**

- `n₁ = n₂ = 1`, the lozenge of type 3: `∏ κ_{ab} = w₃` and `c_{ab} = 1`, so the formula gives
  `w₃(1 + 1 + 1 − 1)/(2(w₁ + w₂ + w₃)) = w₃/(w₁ + w₂ + w₃)`, `1/3` at unit weights; using the
  aggregated entry `K_{ab}` in place of `κ_{ab}` would give `(3 + 1 + 1 + 1)/6 = 1` at unit weights.
- The bound `|det K_{ab}| ≤ Z` (a signed sum of the same weights) gives `|ε_{ab} det K_{ab}/(2Z)| ≤ 1/2`;
  on the 2 × 2 torus the coefficients are `3/18, 5/18, 5/18, 5/18`, summing to `1`.
- On the 1 × 1 torus the lozenges of types 1 and 3 share both `W(0)` and `B(0)`: `c_{ab} = 0` and the
  probability is `0`. Without the convention the complementary sum would be `1` and the formula
  would give `w₁w₃(1 − 1 + 1 + 1)/(2Z) = w₁w₃/(w₁ + w₂ + w₃)`, `1/3` at unit weights.
- `n₁ = n₂ = 2`, the type-3 lozenge at `W(0)`: at unit weights `(c₀₀, c₀₁, c₁₀, c₁₁) = (−1, 1, 1, 3)`,
  each equal to `det K_{ab} · K_{ab}⁻¹(B(0),W(0))` with determinants `−3, 5, 5, 5`, and
  `(−(−1) + 1 + 1 + 3)/18 = 1/3`, the type-3 density. At type weights `(w₁,w₂,w₃) = (2,3,5)`:
  `det K₀₀ = 0` (the eigenvalue `5 − 3 − 2` of 8.5) while `c₀₀ = 60`, and
  `(c₀₁, c₁₀, c₁₁) = (100, 150, 190)` with determinants `544, 1044, 1300`, so `Z = 1444` and the
  probability is `5(−60 + 100 + 150 + 190)/2888 = 25/38`, the share of the nine tilings' weight
  carried by those containing that lozenge; reading `c₀₀` through Mathlib's inverse, which is `0`
  for a singular matrix, would give `5(100 + 150 + 190)/2888 = 275/361`.

### 8.5 Fourier diagonalisation

For type weights, the twisted characters `v ↦ z^{v₁} w^{v₂}` with `z^{n₁} = (−1)^a`,
`w^{n₂} = (−1)^b` diagonalise `K_{ab}` with eigenvalue `w₃ + w₂z + w₁w⁻¹`, so
`det K_{ab} = ∏_{z,w} (w₃ + w₂z + w₁w⁻¹)`, and when this is nonzero
`K_{ab}⁻¹(B(v'), W(v)) = (n₁n₂)⁻¹ Σ_{z,w} z^{v'₁−v₁} w^{v'₂−v₂} / (w₃ + w₂z + w₁w⁻¹)` for `v, v'` in the
fundamental domain (gorin2021 Claims 4.1–4.2, lines 1545–1600, and (4.8), line 1895; kenyon2009
Section 4.3, lines 729–763; kos2006 lines 668–679). *Needs:* 8.1.

**Checks.**

- `n₁ = n₂ = 1`: the single character `z = (−1)^a`, `w = (−1)^b` gives `w₃ + (−1)^a w₂ + (−1)^b w₁`,
  the 1 × 1 matrix of 8.1.
- `n₁ = n₂ = 2`, unit weights, `a = b = 0`: `z, w ∈ {±1}` give eigenvalues `3, 1, 1, −1`, product
  `−3`; for `a = 1, b = 0`, `z ∈ {±i}` gives `(2+i)(2−i)·(i)(−i) = 5`.
- Uniform weights, `n₁ = n₂ = 3`, `a = b = 0`: at `z = w = e^{2πi/3}` the eigenvalue is
  `1 + e^{2πi/3} + e^{−2πi/3} = 0`, so `det K₀₀ = 0` although the partition function is positive;
  this is why 8.4 is stated with complementary minors.

### Examples

The 1 × 1 and 2 × 2 tori with all four determinants.

### Dependencies

Layer 7; Tau Ceti's complementary-minor identity; Mathlib determinants and inverses.

## Layer 9: the explicit kernel and ergodic Gibbs measures of interior slopes

### 9.1 The characteristic function and the infinite inverse Kasteleyn kernel

For type weights `w` define `P̂_w` and, for liquid `w`, the kernel `G_w` as in the conventions
(gorin2021 Theorem 4.11, lines 1853–1871; kenyon2009 Section 6.1, lines 958–975; kos2006 Theorem
4.3, lines 714–727). *Needs:* 8.5; Mathlib `intervalIntegral`, `tendsto_integral_exp_inner_smul_cocompact`.

API:

- For liquid `w`, `P̂_w` vanishes at exactly two points `(θ₀,φ₀)` and `(−θ₀,−φ₀)` of the torus
  `(ℝ/2πℤ)²`, with `θ₀, φ₀ ∉ πℤ`, and its real Jacobian is invertible there; `1/P̂_w` is
  integrable (kenyon2009 footnote 5, lines 978–980; kos2006 lines 728–740).
- Inverse identities: `Σ_{v'} K(W(u), B(v')) G_w(v' − v) = [u = v]` and
  `Σ_u G_w(v' − u) K(W(u), B(v'')) = [v' = v'']`, each sum having at most three nonzero terms.
- Decay: `G_w(d) → 0` as `|d| → ∞` (Riemann–Lebesgue applied to the integrable function
  `1_{[0,2π]²}/P̂_w` on `ℝ²`).
- Angles: `w₁G_w(−e₂) = θ₁/π`, `w₂G_w(e₁) = θ₂/π`, `w₃G_w(0) = θ₃/π`, where `θ_k` is the angle
  opposite the side `w_k` in the triangle with sides `w₁, w₂, w₃` (gorin2021 Theorem 6.1, lines
  2256–2279: the density of a lozenge is the angle opposite the side of its weight; kenyon2009
  lines 976–1007). Along a row, `w₁G_w((m,−1)) = (−1)^m sin(θ₁m)/(πm)` for `m ≠ 0`, obtained by
  integrating `φ` by residues over the arc `|w₃ + w₂e^{iθ}| < w₁`, of half-width `θ₁` about `π`.

**Checks.**

- `w = (1,1,1)`: zeros at `±(2π/3, 2π/3)`; `G(0) = 1/3`, so each type has density `1/3`; and
  `G(0,−2) = √3/(2π) − 1/3`, by integrating `θ` first over `cos φ > −1/2`.
- `w = (1,1,3)` is not liquid: `|P̂_w| ≥ 1`, the geometric expansion of `1/P̂_w` has constant term
  `1/3`, so `w₃G(0) = 1`, the frozen all-type-3 value (gorin2021 Exercise 6.2, lines 2281–2286).
- `w = (1,1,2)` is degenerate: `P̂_w` has the single zero `(π, π)`, where both partial derivatives
  are imaginary, so the real Jacobian is singular; such weights are excluded from "liquid".

### 9.2 Good torus sizes and Riemann sums

For `θ ∈ ℝ` let `W_θ = {n ≥ 1 : |θ − πj/n| > n^{−3/2} for every j ∈ ℤ}`. (a) If `θ ∉ πℤ`, then for
all large `n`, `n ∈ W_θ` or `n + 1 ∈ W_θ`. (b) Let `w` be liquid with zero `(θ₀,φ₀)`, and let
`n₁(k) ∈ W_{θ₀}` and `n₂(k)` tend to infinity with `n₁(k)/n₂(k)` and `n₂(k)/n₁(k)` bounded. For each
`(a,b)` and `d ∈ ℤ²`, the twisted Riemann sums
`(n₁n₂)⁻¹ Σ_{z^{n₁}=(−1)^a, w^{n₂}=(−1)^b} z^{d₁}w^{d₂}/(w₃ + w₂z + w₁w⁻¹)` converge to `G_w(d)`; in
particular `det K_{ab} ≠ 0` along the sequence. Route: grid points lie at distance more than
`n₁^{−3/2}` from both zeros; split the sum near the zeros, where `|P̂_w|` is at least a constant
times the distance, from the rest, where the integrand is smooth (gorin2021 Lemma 4.7 and the
following argument, lines 1748–1806; kos2006 lines 691–708; kenyon2009 lines 945–952).
Gorin's Lemma 4.7 asserts `n` or `n + 2`; that fails for `θ = π/2`, where every even `n` has
`j = n/2`, so (a) uses `n + 1`. *Needs:* 8.5, 9.1.

**Checks.**

- `W_{π/2}` contains no even `n` and contains every odd `n ≥ 2`: for odd `n` the nearest `πj/n`
  is at distance `π/(2n) > n^{−3/2}`.
- `θ = 2π/3`: `3 ∉ W_θ` (`j = 2`), and `4 ∈ W_θ`, since `min_j |2π/3 − πj/4| = π/12 > 1/8`.
- On the 3 × 3 torus with uniform weights the grid of `(a,b) = (0,0)` hits the zero (8.5), and
  indeed `3 ∉ W_{2π/3}`.

### 9.3 The determinantal Gibbs measure of liquid weights

For liquid `w` there is a unique `μ^w ∈ 𝔓(𝕋)` such that, for pairwise distinct lozenges
`ℓ_i = (W(u_i), B(v_i))`, `μ^w{ℓ₁, …, ℓ_k ∈ M} = ∏ w(ℓ_i) · det[G_w(v_i − u_j)]`; it is the weak
limit of `μ^w_{n₁(k),n₂(k)}` along every sequence of 9.2(b); it lies in `𝒢_inv`; and its slope is
`(θ₁/π, θ₂/π)` (gorin2021 Theorem 4.11 and Corollary 13.14, lines 1853–1871 and 4695–4723; kos2006
Theorem 4.3, lines 714–725; kenyon2009 lines 958–975; kenyon1997 Section 4). Route: place the
window inside the fundamental domain, away from the seams, use 8.4 and 9.2 (the coefficients are
bounded and sum to `1`, and every term converges to the same limit), identify the limit by its
correlation functions (4.4), and use 7.3 and 9.1. *Needs:* 4.4, 7.3, 8.4, 9.1, 9.2.

**Checks.**

- `w = (1,1,1)`: slope `(1/3, 1/3)`; the probability of type-1 lozenges at `(0,0)` and `(0,1)` is
  `det[[G(0,−1), G(0,−2)],[G(0,0), G(0,−1)]] = 1/9 − (1/3)(√3/(2π) − 1/3) = 2/9 − √3/(6π) ≈ 0.130`.
- One lozenge: the formula gives the densities `θ_k/π` of 9.1, which sum to `1`.
- Two lozenges sharing a face: two equal rows or columns, probability `0`.

### 9.4 Mixing and ergodicity

For liquid `w`, `μ^w(A ∩ τ_d B) → μ^w(A) μ^w(B)` as `|d| → ∞` for all measurable `A`, `B`; hence
`μ^w` is ergodic under `ℤ²` and under the subgroup `ℤd₀` for every `d₀ ≠ 0` (kenyon1997 abstract
and lines 85–93, mixing for the lozenge measure; kos2006 lines 732–735; kenyon2009 Section 6.2,
lines 1011–1036). Route: for inclusion events the correlation is a block determinant whose
off-diagonal blocks tend to `0` (9.1); inclusion–exclusion gives all cylinder events; cylinder
events approximate measurable ones; an invariant event `A` then has `μ(A) = μ(A)²`, and Tau
Ceti's criterion turns this into ergodicity. *Needs:* 4.4, 9.1, 9.3; Tau Ceti
`TauCeti.MeasureTheory.ergodicSMul_iff_forall_smul_invariant` (reverse implication).

**Checks.**

- For the type-3 lozenges at `0` and at `d`, the covariance is `−w₃² G_w(d) G_w(−d)`, which tends to
  `0`.
- The frozen point masses are mixing trivially.
- `ν₃` (6.4) is not mixing: `ν₃({M = M₁} ∩ τ_d{M = M₁}) = 1/3 ≠ 1/9`.

### 9.5 Ergodic Gibbs measures of every slope

For every `(s,t) ∈ 𝒯̄` there is an ergodic translation-invariant Gibbs measure on `𝔈(𝕋)` of slope
`(s,t)` (`exists_ergodicGibbs_of_slope`; kos2006 Theorem 2.1, existence part, lines 215–220;
kenyon2009 lines 836–843; gorin2021 Corollary 6.3, lines 2287–2298). Route: the corners by 6.2,
the edges by 6.3, and interior slopes by `μ^w` with `w(s,t) = (sin πs, sin πt, sin π(1−s−t))`,
which is liquid by the law of sines and has angles `πs`, `πt`, `π(1−s−t)` opposite its sides
(9.3, 9.4). *Needs:* 6.2, 6.3, 9.3, 9.4.

**Checks.**

- `(1/3, 1/3)`: `w = (√3/2, √3/2, √3/2)`, a multiple of the uniform weights, with the same measure.
- `(1/2, 1/4)`: `w = (1, √2/2, √2/2)` and `1 < √2`, so `w` is liquid.
- `(1/2, 0)`: `w(s,t) = (1, 0, 1)` is not positive; edge slopes need 6.3.

### 9.6 The complex slope and the incomplete beta kernel

Define `ξ(s,t)`, `X(M)` and `incompleteBetaKernel ξ v₁ v₂ = K_ξ(v₁;v₂)` as in the conventions, with
the polygonal defining paths (aggarwal2023 Definitions 1.2–1.3, lines 463–476;
okounkov-reshetikhin2003 Definition 4, lines 965–968). *Needs:* Mathlib `intervalIntegral`,
`Complex.log`.

API:

- `ξ` is a bijection from `𝒯` onto the upper half-plane with inverse
  `ξ ↦ (arg ξ / π, −arg(1 − ξ) / π)`: `πs` and `πt` are the angles at `0` and `1` of the triangle
  `0, 1, ξ`, and `|ξ| = sin(πt)/sin(π(1−s−t)) = w₂/w₃`, `|1 − ξ| = sin(πs)/sin(π(1−s−t)) = w₁/w₃`
  for `w = w(s,t)` of 9.5 is the law of sines.
- `K_ξ(v₁;v₂)` depends only on `v₂ − v₁` and on the side of crossing, and any path in `ℂ ∖ {0,1}`
  from `ξ̄` to `ξ` crossing the real axis once on the prescribed side gives the same value
  (Cauchy's theorem for the single-valued integrand).
- `K_ξ(v;v) = s`; along a row, `K_ξ((x,y);(x+m,y)) = |ξ|^m sin(πsm)/(πm)` for `m ≠ 0`.

**Checks.**

- Diagonal: `(2πi)⁻¹ ∫ z^{−1} dz` across `(0,1)` is `arg ξ/π = s`; across `(−∞,0)` it would be
  `−(1 − s)`, so the side of crossing matters.
- Vertical neighbours `v₁ = (0,0)`, `v₂ = (0,1)`: `K_ξ(v₁;v₂) = −(1 − s − t)` (crossing `(−∞,0)`)
  and `K_ξ(v₂;v₁) = s − Im ξ/π` (crossing `(0,1)`); for `s = t = 1/3`, `ξ = e^{πi/3}` and these are
  `−1/3` and `1/3 − √3/(2π)`.
- `s = t = 1/3`: `ξ = e^{πi/3}`, `|ξ| = 1`, and the row kernel is the discrete sine kernel itself.

### 9.7 The incomplete beta process

Let `ξ` be in the upper half-plane, `(s,t)` its slope and `w = w(s,t)`. (a) For all
`v_i = (x_i,y_i)` and `v_j = (x_j,y_j)` in `ℤ²`,
`w₁G_w(v_i − v_j − e₂) = (−1)^{(x_i−x_j)+(y_i−y_j)} |ξ|^{x_j−x_i} |1−ξ|^{y_i−y_j} K_ξ(v_j;v_i)`,
with `|ξ| = w₂/w₃` and `|1−ξ| = w₁/w₃` by the law of sines (9.6); it is obtained by evaluating the
`φ`-integral of `G_w` by residues (okounkov-reshetikhin2003 equation (36), lines 1076–1083;
gorin2021 lines 4744–4755). The factor is `κ(v_i)/κ(v_j)` for
`κ(x,y) = (−1)^{x+y} |ξ|^{−x} |1−ξ|^{y}`, so for pairwise distinct `v₁, …, v_m` the matrix
`[w₁G_w(v_i − v_j − e₂)]` is the conjugate of the transpose of `[K_ξ(v_i;v_j)]` by the diagonal
matrix of `κ`, and `det[w₁G_w(v_i − v_j − e₂)] = det[K_ξ(v_i;v_j)]`. (b) Hence
`μ_ξ = μ^w` satisfies `μ_ξ{v₁, …, v_m ∈ X(M)} = det[K_ξ(v_i;v_j)]` (aggarwal2023 equation (1.2),
lines 491–505; okounkov-reshetikhin2003 Theorem 2, lines 993–1006). (c) `μ_ξ` is the unique
probability measure on `𝔈(𝕋)` with this property. (d) `μ_ξ` is an ergodic translation-invariant
Gibbs measure of slope `(s,t)` (aggarwal2023 lines 505–507). (e) Along a row,
`μ_ξ{(x₁,y), …, (x_m,y) ∈ X(M)} = det[S_s(x_i − x_j)]` with `S_s(m) = sin(πsm)/(πm)` and
`S_s(0) = s`, the discrete sine kernel; by `ρ` the same holds for types 2 and 3 along the rotated
lines with `t` and `1 − s − t` (gorin2021 Corollary 13.16 and Remark 13.17, lines 4762–4786).
(f) `μ_ξ`-almost surely every row contains infinitely many type-1 lozenges, and on the tilings in
which no two consecutive rows lack type-1 lozenges `M` is a measurable function of `X(M)`
(`incompleteBetaProcess_exists_unique`). Route for (c): two measures with (1.2) give `X` the same
law (4.4); under it rows are almost surely nonempty, by ergodicity of `μ_ξ` under `ℤe₁` (9.4) and
density `s > 0`; and between rows `y` and `y + 1` the vertical increments are determined as soon as
one of the two rows has a type-1 lozenge. Aggarwal's remark that a plane tiling is determined by
`X(M)` whenever `X(M) ≠ ∅` (aggarwal2023 lines 465–467) is false; (f) is the correct statement.
*Needs:* 4.4, 9.3, 9.4, 9.6.

**Checks.**

- `ξ = e^{πi/3}`: the two-point value of type-1 lozenges at `(0,0)` and `(0,1)` is
  `s² − K_ξ(v₁;v₂)K_ξ(v₂;v₁) = 1/9 + (1/3)(1/3 − √3/(2π)) = 2/9 − √3/(6π)`, equal to the value of 9.3
  computed from `G`; here `|ξ| = |1−ξ| = 1`, which holds for `ξ = e^{πi/3}` alone, and the
  entrywise identity reduces to the conjugation `κ(x,y) = (−1)^{x+y}`: `G(0,−2) = −K_ξ(v₂;v₁)` and
  `G(0,0) = −K_ξ(v₁;v₂)`.
- Slope `(0.3, 0.45)`: `w ≈ (0.8090, 0.9877, 0.7071)`, `|ξ| = w₂/w₃ ≈ 1.3968`,
  `|1−ξ| = w₁/w₃ ≈ 1.1441`, and the ratios `w₁G_w(0,−2) / K_ξ((0,1);(0,0)) ≈ −0.8740 = −1/|1−ξ|`,
  `w₁G_w(−2,−1) / K_ξ((2,0);(0,0)) ≈ 1.9511 = |ξ|²` and
  `w₁G_w(−1,−2) / K_ξ((1,1);(0,0)) ≈ 1.2209 = |ξ|/|1−ξ|` are the factors of (a), none of them
  `±1`; the vertical pair `(0,0), (0,1)` has `det[w₁G_w] = det[K_ξ] ≈ 0.0751` and the triple
  `(0,0), (1,2), (−1,1)` has both determinants `≈ 0.0342`.
- Row, `s = 1/2`: two adjacent type-1 lozenges have probability `1/4 − 1/π² ≈ 0.149 < 1/4`.
- The plane tilings with heights `H = 1_{x>0}` on rows `y ≤ 0` and, on rows `y ≥ 1`, either `H = 1`
  or `H = y`, are different and have the same `X(M) = {(0,y) : y ≤ 0}`: rows `1, 2, …` lack type-1
  lozenges, which is excluded by (f).

### Examples

The uniform kernel (`ξ = e^{πi/3}`) with the values `1/3` and `√3/(2π) − 1/3`; the discrete sine
kernel at `s = 1/2`.

### Dependencies

Layers 4–8.

## Layer 10: local statistics of tilings of growing regions

### 10.1 Local convergence

For regions `R_N`, finite or infinite, probability measures `μ_N` on `TriEdge → Bool` concentrated
on `𝔈(R_N)` (a closed set: each face of `R_N` and each edge outside `E°(R_N)` imposes a clopen
condition) and vertices `v_N`, say that the local statistics of `μ_N` around `v_N` converge to
μ ∈ `𝔓(TriEdge → Bool)` when `τ_{−v_N *} μ_N → μ` weakly; by 4.4 this means that for every finite
set `E₀` of edges and every `σ ⊆ E₀`,
`μ_N{M : (M − v_N) ∩ E₀ = σ} → μ{M : M ∩ E₀ = σ}`, which is Aggarwal's convergence "in
distribution" of `S_{v_N} μ_N` (aggarwal2023 lines 568–580; gorin2021 Section 13.2, lines
4530–4541; kenyon2009 lines 786–793). *Needs:* 4.4, 5.4.

API:

- The cylinder criterion and the criterion by correlation functions (4.4).
- Compatibility with translations: shifting all `v_N` by a fixed vector shifts the limit.
- Subsequential limits always exist (compactness).

**Checks.**

- `R_N` the set of all faces (an infinite region), `μ_N = μ ∈ 𝔓(𝕋)` and `v_N = 0`: the limit is μ;
  for `μ = δ_{M₃}` every type-3 edge has limiting probability `1`.
- `R_N = R₆ + v_N` (translated unit hexagons) with uniform `μ_N`: the limit is
  `(δ_{T_a} + δ_{T_b})/2`, which is not concentrated on `𝔈(𝕋)`: without exhaustion the limit is not
  a plane tiling measure.
- Translating by `+v_N` instead of `−v_N` makes the window recede: for `R_N = R₆ + v_N` with
  `|v_N| → ∞` the limit is the point mass at the empty configuration (for `v_N = 0` both
  conventions give the hexagon law, which is why `|v_N| → ∞` is part of this Check).

### 10.2 Limits of uniform measures are Gibbs

(a) Limits are unique. (b) If every `R_N` is the set of all faces, local convergence with
`v_N = 0` is weak convergence in `𝔓(𝕋)`. (c) If every face lies in `R_N − v_N` for all large `N`,
every limit is concentrated on `𝔈(𝕋)`. (d) If moreover each `R_N` is finite and tileable and `μ_N`
is the uniform measure on `𝔈(R_N)`, every limit is a Gibbs measure (`localLimit_isLozengeGibbs`;
aggarwal2023 lines 413–415 and 568–580; gorin2021 lines 4538–4541; kenyon2009 lines 786–809).
Route: the cylinder identities of 5.2 hold for the uniform measure on `𝔈(R_N)` for windows inside
`R_N`, and pass to the limit. Limits need not be translation-invariant: proving invariance, and
identifying the limit as `μ_{ξ(s,t)}`, is the content of Aggarwal's universality theorem.
*Needs:* 5.2, 10.1.

**Checks.**

- `R_N` the union of the lozenges of the row tiling `M_ε`, `ε = 1_{[0,∞)}`, inside the box
  `[−N,N]²`: by 6.3(b) its only tiling is the restriction of `M_ε`, so the limit around `0` is
  `δ_{M_ε}`, Gibbs and not translation-invariant.
- Regions on which `M₃` restricts to the only tiling (unions of squares in a box) give the limit
  `δ_{M₃}`, of slope `(0,0)`.
- Uniformity is used in (d): the plane tiling `M_c` with height `min(0, x, y)` admits a flip at `0`
  (`H(e_k) = 0 = H(−e_k) + 1` for `k = 1,2,3`), the point masses at its restrictions to the unions of
  its lozenges inside `[−N,N]²` converge to `δ_{M_c}`, and `δ_{M_c}` is not Gibbs, since its
  completion set at the hexagon around `0` has two elements and only one carries mass.

### 10.3 The lattice side of Aggarwal's universality theorem

The lattice objects in the statement of aggarwal2023 Theorem 1.5 (lines 572–580) are defined here:
finite simply connected tileable domains (1.3, 2.1, with 2.4 for Aggarwal's topological
convention), their boundary height functions (2.7), uniform measures on tilings (10.2), shifts and
local convergence (10.1), and `μ_{s,t} = μ_{ξ(s,t)}` (9.7), the ergodic Gibbs measure of slope
`(s,t)` with the kernel of (1.2). The continuum objects (admissible functions, the entropy
functional and its maximiser, convergence of domains) and the uniqueness of the ergodic Gibbs
measure of slope `(s,t)`, which makes "the" measure of slope `(s,t)` meaningful, belong to the
proposed Part II. *Needs:* 2.4, 2.7, 9.7, 10.2.

**Checks.**

- Aggarwal's `A × B × C` hexagon (aggarwal2023 Example 1.1, lines 370–375) is a finite region whose
  union of faces is a convex hexagon, simply connected by 2.4.
- Its boundary graph is a single closed curve, so its boundary height is determined (2.7).
- For `A = B = C = 1` its vertices are `(0,0), (1,0), (0,1), (1,2), (2,2), (2,1)`, centred at
  `(1,1)`: it is the translate `R₆ + (1,1)` of the unit hexagon, with two tilings, the translates of
  `T_a` and `T_b`; it is not `R₆` itself, which is centred at `0`.

### Examples

Translated hexagons; forced regions with a unique tiling.

### Dependencies

Layers 4, 5, 9 (for 10.3), and 2.

## Downstream consumers

- **DimerModelsAndLozengeTilingsPartII** (proposed): Sheffield's uniqueness of the ergodic Gibbs
  measure of each interior slope and the convergence `μ^{s,t}_n → μ_{ξ(s,t)}`; the surface tension
  and the variational principle; limit shapes; the statement and proof of Aggarwal's universality
  theorem; general periodic weights and amoebae. It consumes Layers 2, 5–7, 9 and 10 verbatim.
- A roadmap on discrete determinantal point processes takes 3.3, 9.3 and 9.7 as its first examples
  of determinantal laws on countable sets.
- Lattice spin systems with a finite single-site space (Ising-type models) consume Layer 4: the
  tail lemma, Bernoulli ergodicity, specifications, the face property and closedness.
- Random surfaces and Gaussian free field fluctuations of lozenge tilings (kenyon2009 Section 6.3;
  gorin2021 Lectures 11–12) consume Layers 2 and 9.

## Worked examples

- The unit hexagon `R₆`: tilings `T_a`, `T_b`; boundary height `0, 0, 0, −1, −1, −1`; flip at `0`;
  Kasteleyn determinant `2` (`2abc` with type weights); edge probability `1/2`.
- The ring `R_ring`: not simply connected, two tilings with winding `−1`, determinant `0`.
- `R₆'`: simply connected, balanced, Thurston's inequality fails at `((2,1),(1,1))`, determinant `0`.
- The 2 × 2 torus: nine tilings; `det K₀₀ = −3`, the other three determinants `5`.
- The uniform measure `μ^{(1,1,1)} = μ_{e^{πi/3}}`: densities `1/3`; vertical type-1 pair
  `2/9 − √3/(6π)`.

## References

- [aggarwal2023] A. Aggarwal, *Universality for lozenge tiling local statistics*, Ann. of Math.
  198 (2023); read as arXiv:1907.09991v4 and cited in that version's numbering (Definitions 1.2–1.3,
  equation (1.2), Theorem 1.5). Lines 322–407 (lattice, tilings, heights), 408–507 (Gibbs measures,
  slope, the incomplete beta kernel), 568–580 (Theorem 1.5).
- [sheffield2005] S. Sheffield, *Random surfaces*, Astérisque 304 (2005); read as
  arXiv:math/0304049v3. Section 1.1.2 (lines 303–342), Section 3.2, Lemmas 3.2.1–3.2.2 (lines
  1341–1371), Theorem 9.1.1 (lines 5443–5445, Part II), Theorem 9.5.1 (lines 6195–6198).
- [kos2006] R. Kenyon, A. Okounkov, S. Sheffield, *Dimers and amoebae*, Ann. of Math. 163 (2006);
  read as arXiv:math-ph/0311005v1. Section 2 (lines 158–256), Theorem 2.1 (lines 215–220),
  Theorems 4.2–4.3 (lines 652–727).
- [kenyon2009] R. Kenyon, *Lectures on dimers*, IAS/Park City Math. Ser. 16 (2009); read as
  arXiv:0910.3129v1. Sections 1.1, 2.2, 3.3–3.5, 4.2–4.3, 5.1–5.5, 6.1–6.2 (lines 95–1036).
- [okounkov-reshetikhin2003] A. Okounkov, N. Reshetikhin, *Correlation function of Schur process
  with application to local geometry of a random 3-dimensional Young diagram*, J. Amer. Math. Soc.
  16 (2003); read as arXiv:math/0107056v3. Definition 4 (lines 965–968), Theorem 2 (lines
  993–1006), equation (36) (lines 1076–1083).
- [kenyon1997] R. Kenyon, *Local statistics of lattice dimers*, Ann. Inst. H. Poincaré Probab.
  Statist. 33 (1997), 591–618 (Numdam). Theorem 2 (lines 184–197), Theorem 6 (lines 362–373),
  Lemmas 7–8 (lines 392–406), the mixing statement of the introduction (lines 85–93).
- [gorin2021] V. Gorin, *Lectures on random lozenge tilings*, Cambridge Stud. Adv. Math. 193
  (2021); read from the author's pre-publication copy, lecture and theorem numbers as printed.
  Theorem 1.4 and Corollary 1.5 (lines 521–613), Theorem 2.1 (lines 714–782), Theorems 3.1, 3.5,
  3.10 (lines 1218–1504), Theorems 4.3–4.11 (lines 1603–1898), Theorem 6.1 (lines 2256–2298),
  Lecture 13 (lines 4491–4786).
- [cohn-kenyon-propp2001] H. Cohn, R. Kenyon, J. Propp, *A variational principle for domino
  tilings*, J. Amer. Math. Soc. 14 (2001); read as arXiv:math/0008220v3. Section 1.4 (the lattice
  of height functions), cited for 2.8; Theorem 1.1 belongs to Part II.
- [thurston1990] W. P. Thurston, *Conway's tiling groups*, Amer. Math. Monthly 97 (1990), 757–773;
  cited by bibliographic data for 2.9, the statement and proof used being gorin2021 Theorem 1.4.
- [georgii2011] H.-O. Georgii, *Gibbs measures and phase transitions*, 2nd ed., de Gruyter (2011);
  cited by bibliographic data, Theorem 14.15, for 4.2 and 4.6, whose statement is restated in
  sheffield2005 Lemma 3.2.2.
