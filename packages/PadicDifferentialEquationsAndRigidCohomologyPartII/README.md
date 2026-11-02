# Roadmap: p-adic differential equations, rigid cohomology and p-adic weights, part II — pure bounded quotients and minimal slopes

**Summary.** A slope filtration can throw away most of a convergent F-isocrystal: its maximal-slope
quotient, or dually its minimal-slope subobject, may have far smaller rank than the object itself.
This roadmap proves that irreducibility and overconvergence nevertheless make that extremal piece
rigid enough to recover the whole overconvergent object. It starts from
[PadicDifferentialEquationsAndRigidCohomology](../PadicDifferentialEquationsAndRigidCohomology/README.md),
whose Robba, Amice and bounded-disc carriers, `(φ,∇)`-modules, slope filtrations, de Jong's reverse
filtration, Kedlaya's full faithfulness theorem, rigid cohomology, trace formula and weights it uses
throughout. Locally (Layers MS.0–MS.1, MS.3) it builds bounded generic solutions, the maximally
bounded quotient, Chiarellotto–Tsuzuki's pure bounded quotients (PBQ) and their canonical filtration
over the Amice field, the bounded Robba field and the bounded disc, Ohkubo's comparison of
logarithmic growth with Frobenius slopes, and Tsuzuki's saturation. On a smooth curve (Layers MS.2,
MS.4) it globalises PBQ filtrations through the completed generic field, proves Tsuzuki's rank
theorem for dagger sections inside an isoclinic convergent quotient, and deduces the curve form of
Kedlaya's minimal slope conjecture. Layer MS.5 develops D'Addezio's dagger hulls and proves the
minimal slope property on curves. Layer MS.6 passes to smooth varieties over finite fields through
Lefschetz curves and `Q̄_p`-coefficient objects. The end theorems are: on a smooth connected curve
over a perfect field, every nonzero map between the maximal-slope quotients of two irreducible
overconvergent F-isocrystals is induced by a unique overconvergent isomorphism (Tsuzuki, Corollary
6.5), with its dual minimal-slope form and D'Addezio's equality `S_1(N) = S_1(Hull†(N))` for every
convergent subobject; and on a smooth connected variety over `𝔽_q`, a nonzero map between the
maximal-slope quotients of two irreducible overconvergent `Q̄_p`-F-isocrystals forces them to be
isomorphic, the given map being induced by a unique isomorphism under an endomorphism condition
along a Lefschetz curve (Tsuzuki, Theorem 7.20).

| Layer | Title | Headline targets |
| --- | --- | --- |
| MS.0 | Generic bounded quotients | completed generic field of a curve, bounded generic solutions, the opposite slope rank bound, the maximally bounded quotient, the bounded splitting theorem, PBQ modules |
| MS.1 | Local PBQ filtrations | the PBQ filtration, the bounded graded formula, descent to the bounded Robba field and to the bounded disc, logarithmic growth versus Frobenius slopes |
| MS.2 | PBQ objects on curves | dagger sections as intersections, interior and boundary gluing, the curve PBQ filtration, finite étale transport, the curve bounded quotient, a two-step example |
| MS.3 | Saturation | local and global saturation, quasi-saturation, the saturated quotient, local graded recovery and local reconstruction |
| MS.4 | Curve reconstruction | the curve rank theorem, the curve irreducibility criterion, curve graded recovery, the specified-map theorem and its minimal-slope dual |
| MS.5 | Dagger hulls and minimal slopes | dagger hulls, the minimal slope property and its reductions, the generic proof, integral models, minimal slopes on curves, docile Lefschetz full faithfulness |
| MS.6 | Lefschetz curves and finite fields | the Lefschetz condition, fibre reconstruction, `Q̄_p`-coefficient objects and their trace formula, the projected trace average, the fibrewise isomorphism criterion, the finite-field theorems |

The layer labels MS.0–MS.6 are the labels other roadmaps cite, and target `MS.k.n` is the `n`-th
subsection of layer MS.`k`.

## Scope and ownership

**Owned here.** Bounded generic solutions and the maximally bounded quotient of `(φ,∇)`-modules over
the Amice field `E`, over the completed generic field `E_η` of a smooth affine curve and over the
local fields `E_α`; the construction of `E_η` with its embeddings into the local fields; the
normalisation of the Frobenius-fixed coefficient field (Tsuzuki, Lemma A.1(1)–(2)); the opposite
slope rank bound for `φ`-modules over the bounded Robba field and over D'Addezio's generic field of
the affine line; the bounded splitting theorem; PBQ modules and the PBQ filtration over `E`, `E†`,
`K[[t]]₀` and `E_η`, with base change, descent and the bounded graded formula; the logarithmic growth
filtration of solutions and Ohkubo's comparison with Frobenius slopes for PBQ modules; local and
global saturation, quasi-saturation and saturated quotients; the intersection description of dagger
sections of a curve (Tsuzuki, Lemmas 3.1–3.2) and the gluing of generic submodules; PBQ objects on
curves, their filtration, finite étale transport, the curve bounded quotient and the Legendre–Kummer
two-step example; the curve rank theorem, the curve irreducibility criterion, curve graded recovery,
the specified-map theorem and its dual; dagger hulls, the minimal slope property, its reductions,
the generic and the curve proofs, D'Addezio's integral models and the affine–generic hull comparison;
the docile Lefschetz full-faithfulness theorem; the Lefschetz condition and its rank consequences;
overconvergent `L`-`F_q`-isocrystals and the `Q̄_p`-coefficient category (Tsuzuki §§7.1–7.3 and
Appendix B), their coefficient-linear trace formula, the projected trace average, the fibrewise
isomorphism criterion and the finite-field theorems.

**Imported from PadicDifferentialEquationsAndRigidCohomology, by section.** The Laurent, Robba, Amice
and bounded-Robba carriers and their finite coefficient extensions (§§RD.0.1, RD.0.17, RD.0.26);
Kedlaya's analytic rings `Γ^ℓ`, including the trivially valued case `Γ^ℓ[π⁻¹]` that realises `E_η`
(§RD.0.9); the Frobenius-equivariant embeddings into Witt-vector rings and the injectivity of
overconvergent base change (§§RD.0.35, RD.0.53, RD.5.2); Taylor change of Frobenius lift and of
coordinate (§§RD.0.37, RD.1.44); weak completions, Frobenius lifts and étale lifting
(§§RD.0.39, RD.0.42, RD.3.38, RD.3.39); Dwork transfer (§§RD.1.13, RD.2.22); `(φ,∇)`-modules
(§RD.1.43); Frobenius slopes, purity, the calculus of slopes, Dieudonné–Manin, stable lattices, the
generic Harder–Narasimhan filtration and de Jong's reverse filtration
(§§RD.1.32, RD.1.35–RD.1.37, RD.1.39–RD.1.41, RD.1.72); overconvergent and convergent F-isocrystals,
their restriction functor, Dwork–Berthelot overconvergence, the affine dagger-algebra realisation,
finite étale pushforward, étale descent, unit-root objects and the dense-open slope filtration
(§§RD.3.16, RD.3.22, RD.3.25, RD.3.29, RD.3.31, RD.3.32, RD.3.34, RD.3.37, RD.3.41, RD.3.45,
RD.3.47, RD.3.50); local and global full faithfulness and dense-open restriction
(§§RD.5.4, RD.5.8, RD.5.112); Kedlaya's finite étale maps to affine space (§RD.5.7); docile objects
and logarithmic extension (§§RD.5.100, RD.5.103); Poincaré duality (§RD.5.89); closed-point
Frobenius, `L`-functions, the trace formula, `ι`-weights, constant twists and Weil II
(§§RD.6.2, RD.6.4, RD.6.23, RD.6.28, RD.6.57, RD.6.59, RD.6.60, RD.6.82, RD.6.85). The statements
that roadmap does not yet make and that this one needs are listed in its supplier subsection below
as supplier requests; none of them is rebuilt here.

**Imported from other roadmaps.** RigidAnalyticGeometry Layer 5 (Tate acyclicity) for boundary
gluing of overconvergent functions, and AlgebraicCurves Layers 2 and 12 (affine Dedekind models and
smooth completions of curves) for the curve carriers.

**Already in the library.** Mathlib's quotient-by-kernel equivalence, finite-group averaging,
linear traces, `p`-adic norms of powers of `p` and fixed subfields; see the supplier contracts.

**Not in this roadmap.** D'Addezio's minimal slope theorem for smooth varieties of dimension at least
two, his parabolicity theorem for monodromy groups, the arithmetic `𝒟`-module formalism, the
existence of companions and the Langlands correspondence for overconvergent F-isocrystals on curves:
this roadmap proves the curve and finite-field theorems and consumes only the specific finite-field
weight and Lefschetz statements listed as supplier requests.

## Conventions

1. **Coefficients.** `K` is a complete discretely valued field of characteristic zero with ring of
   integers `O_K`, uniformiser `π` and perfect residue field `k` of characteristic `p > 0`
   (Tsuzuki's Lemma A.1 in MS.0.3 also allows imperfect `k`). Fix `q = p^s` with `s ≥ 1` and a
   `q`-Frobenius `σ` on `K`: a continuous isometric field endomorphism with `σ(a) ≡ a^q mod π` for
   `a ∈ O_K`. Its fixed field is `K^σ`. In Layer MS.5 the generic field of the affine line and the
   integral models are D'Addezio's: `k` perfect, `K = W(k)[1/p]`, `σ` the Witt-vector Frobenius and
   `t ↦ t^p`, and the dagger hulls themselves are defined for the general datum. In Layer MS.6,
   `k = 𝔽_q`, `K = W(𝔽_q)[1/p]` and `σ = id_K`.
2. **Local carriers.** `E` is the Amice field over `K` (residue field `k((t))`), `E†` the bounded
   Robba field and `K[[t]]₀ = O_K[[t]] ⊗ K` the ring of bounded functions on the open unit disc, each
   with a Frobenius lift `φ` over `σ` and the derivation `d/dt` (PadicDifferentialEquationsAndRigidCohomology
   §§RD.0.1, RD.0.26, RD.0.36). `E†` is the bounded Robba field, not the full Robba ring. The completed
   generic field `E_η` of a smooth affine curve, and the local fields `E_α`, `E†_α`, `K_α[[x_α]]₀` at its
   closed points, are those of MS.0.1. Statements of MS.0–MS.1 marked "over `B`" hold for
   `B ∈ {E, E_η, E_α}`.
3. **Modules.** A `(φ,∇)`-module over one of these rings is a finite free module with an integrable
   connection and a horizontal Frobenius structure whose linearisation is invertible
   (PadicDifferentialEquationsAndRigidCohomology §RD.1.43). Over a dagger algebra the same notion is an
   overconvergent F-isocrystal on the corresponding affine curve (§RD.3.32).
4. **Slopes.** Slopes are normalised by `q`: a Frobenius eigenvector `v` with `φ(v) = c·v`, `c ∈ K`,
   has slope `v_π(c)/v_π(q)`. Generic slopes over `E`, `E†` and `E_η` are those of §RD.1.35. The slope
   filtration is increasing: `0 = S_0 ⊊ S_1 ⊊ ⋯ ⊊ S_m = M`, with isoclinic grades of strictly
   increasing slopes; `S_min(M) = S_1(M)` is the minimal-slope subobject and
   `Top(M) = M/S_(m−1)(M)` the maximal-slope quotient, of slope `λmax(M)`. Duality negates slopes and
   exchanges the two: `Top(M^∨) = S_min(M)^∨`. The Tate object `O(1)` has Frobenius multiplied by
   `q⁻¹`, hence slope `−1`.
5. **Global objects.** An overconvergent F-isocrystal on a smooth `k`-scheme `X` is an object of
   F-`Isoc†(X/K)` (§RD.3.25), written with a dagger, `M†`; its convergent realisation `j^*M†`
   (§RD.3.37) is written `M`. "`M` is slope-filtered" means that `M` admits a slope filtration as a
   convergent F-isocrystal (it does on a dense open, §RD.3.45). Generic slopes alone do not produce a
   global quotient; global statements assume the filtration or restrict to a dense open.
6. **Solutions.** Generic solutions are contravariant: `Sol(M) = Hom_∇(τ^*M, ·)`. The bounded part
   uses a uniform bound on all Taylor coefficients, not pointwise convergence. The Frobenius of a
   solution space is `f ↦ φ ∘ f ∘ φ_M⁻¹`, so a rank-one object with Frobenius `a` has solution
   eigenvalue `a⁻¹`.
7. **Bounded quotients.** `Mᵇ` is the least `∇`-submodule with bounded quotient and
   `B(M) = M/Mᵇ`; a bounded module has `Mᵇ = 0` and `B(M) = M`, and `B(0) = 0`. (Chiarellotto–Tsuzuki
   write the same kernel as `M^0`; it is a kernel, not a bounded subobject.)
8. **PBQ.** A PBQ module is nonzero by definition (Tsuzuki's convention; Ohkubo's Definition 5.10
   counts zero as PBQ). The PBQ filtration `0 = P_0 ⊊ P_1 ⊊ ⋯ ⊊ P_r = M` is increasing; its
   **grades** `G_i = P_i/P_(i−1)` are PBQ with strictly decreasing maximal slopes. Formulas for pure
   top pieces always use the grades `G_i`, never the nested terms `P_i`, all of which have maximal
   slope `λmax(M)`.
9. **Saturation** over `E†` is injectivity of the original module into its maximal-slope quotient
   after completion. That map can have a kernel even though its `E`-linearisation is surjective;
   definitions keep both carriers.
10. **Finite-field coefficients.** In MS.6, `Q̄_p` is a fixed algebraic closure of `K`, coefficient
    objects are modelled on finite extensions `L ⊂ Q̄_p` of `K`, traces and determinants are
    computed on these finite models, and `ι : Q̄_p → ℂ` is a field isomorphism. Weights are real
    numbers: a constant rank-one object can have non-integral weight.
11. **Categories.** All categories here are `K^σ`-linear abelian categories with tensor products and
    duals; isomorphisms are isomorphisms in the stated category (overconvergent, convergent or
    local).

## Exact supplier contracts

### From Mathlib (pinned at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`)

- `LinearMap.quotKerEquivRange` (`Mathlib/LinearAlgebra/Isomorphisms.lean`): for a linear map of
  modules over a ring, the quotient by the kernel is linearly equivalent to the range. Used for the
  image constructions of MS.3.4 and MS.5.4 after the analytic statements have produced the relevant
  submodules; it supplies no analytic or Frobenius descent.
- `Representation.averageMap`, `Representation.averageMap_invariant`,
  `Representation.averageMap_id` (`Mathlib/RepresentationTheory/Invariants.lean`): for a finite group
  whose cardinality is invertible in the coefficient field (`[Fintype G]`,
  `[Invertible (Fintype.card G : k)]`), the normalised group-algebra average lands in the invariants
  and fixes invariant vectors. Used in MS.6.7 for the cyclic group of order `m`; characteristic zero
  makes `m` invertible.
- `LinearMap.trace` and `LinearMap.trace_one` (`Mathlib/LinearAlgebra/Trace.lean`): the trace of an
  endomorphism, and the trace of the identity of a finite free module is its rank. Used for the
  primitive-projector normalisation of MS.6.7.
- `Padic.norm_p_pow` (`Mathlib/NumberTheory/Padics/PadicNumbers.lean`): `‖p^n‖ = p^(−n)` in `ℚ_p`.
  Used in the logarithm Checks of MS.0.2 and MS.1.6.
- `FixedPoints.subfield` (`Mathlib/FieldTheory/Fixed.lean`): the subfield fixed by a monoid acting
  by ring automorphisms. The fixed field `K^σ` of MS.0.3 is the fixed subfield of the monoid
  generated by `σ`.
- `WittVector.Isocrystal` and `WittVector.isocrystal_classification`
  (`Mathlib/RingTheory/WittVector/Isocrystal.lean`): a module over the Witt fraction field with a
  Frobenius-semilinear equivalence, classified in rank one over an algebraically closed field. These
  carry no connection and no finiteness condition; the Dieudonné–Manin inputs here are the parent's
  §RD.1.32, not this rank-one file.

### From Tau Ceti (pinned at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`)

Nothing is consumed: Tau Ceti at the pin has no carrier for differential modules, Robba or Amice
rings, or isocrystals.

### From TauCetiRoadmap.PadicDifferentialEquationsAndRigidCohomology

The sections are consumed with their stated hypotheses:

- §RD.0.1, §RD.0.26, §RD.0.36: the carriers `E`, `E†`, `K[[t]]₀`, `R^int`, their Gauss norms and the
  derivation `d/dt`; `E† = R ∩ E` is a henselian discretely valued field with residue field `k((t))`
  and completion `E`.
- §RD.0.9: Kedlaya's `Γ^ℓ`, `Γ^ℓ_con` and, for trivially valued `ℓ`, the complete discretely valued
  field `Γ^ℓ[π⁻¹]`; with `ℓ = k(C)` this is the completed generic field `E_η` of MS.0.1.
- §RD.0.17: finite isometric coefficient extension `E_K ⊗_K L ≅ E_L` and its analogues.
- §RD.0.35, §RD.0.53, §RD.5.2: the `σ`-equivariant embedding into `Γ^alg` and the injectivity of
  `Γ ⊗_(Γ_con) Γ^alg_con → Γ^alg` (after inverting `π`), under the valuation `p`-basis hypothesis of
  §RD.0.48, which `k((t))` and `k(t)` satisfy.
- §RD.0.37, §RD.1.44: two Frobenius lifts, or two coordinates, differ by a convergent Taylor series;
  the categories of `(φ,∇)`-modules for different lifts are canonically equivalent.
- §RD.0.38: the series converging only on the closed disc, separating completion from
  overconvergence.
- §RD.0.39, §RD.0.42, §RD.3.38, §RD.3.39, §RD.5.29: smooth lifts, weak completions, Frobenius lifts
  on weak completions, étale lifts with unique extension of Frobenius, and projective lifts of a
  smooth projective curve with its boundary points.
- §RD.1.13, §RD.2.22: Dwork transfer; for a solvable module the solutions at the centre of the disc
  span a space of dimension equal to the rank.
- §RD.1.43, §RD.1.45: `(φ,∇)`-modules; a Frobenius structure forces generic radius one, so every
  `(φ,∇)`-module is solvable.
- §RD.1.32, §RD.1.35, §RD.1.36, §RD.1.37: Dieudonné–Manin over an algebraically closed residue
  field, generic slopes, purity, and the calculus of slopes, including `Hom(P, Q) = 0` for isoclinic
  `P`, `Q` of different slopes.
- §RD.1.39: Frobenius-stable lattices; a unit-root module has a lattice on which Frobenius is an
  isomorphism.
- §RD.1.40: a saturated Frobenius submodule over `S` descends along `R → S` exactly when its
  determinant line does.
- §RD.1.41: the generic Harder–Narasimhan filtration over `Γ[π⁻¹]` (in particular over `E` and `E_η`)
  and, over `Γ_con[π⁻¹] = E†`, the reverse filtration after base change to `Γ^alg_con[π⁻¹]`.
- §RD.1.72: de Jong's reverse filtration over D'Addezio's `E†_alg` with corrected grades
  `S_(m+1−i)/S_(m−i)`, and Frobenius eigenbases of isoclinic grades after adjoining `p^(1/r)`.
- §RD.3.16, §RD.3.22, §RD.3.25, §RD.3.29, §RD.3.31, §RD.3.32, §RD.3.34, §RD.3.37: overconvergence
  as a property, gluing, overconvergent and convergent F-isocrystals, the Monsky–Washnitzer frame,
  Dwork–Berthelot overconvergence of Frobenius modules over dagger algebras, and restriction to
  convergent objects as an exact faithful `K^σ`-linear tensor functor.
- §RD.3.41, §RD.3.50: finite étale pushforward, adjoint to pullback up to the trace and multiplying
  ranks by the degree; étale descent.
- §RD.3.45, §RD.3.47: the slope filtration on a dense open; unit-root objects.
- §RD.5.4, §RD.5.8, §RD.5.112: full faithfulness of `F-Isoc†(k((t))) → F-Isoc(k((t)))`; Kedlaya's
  full faithfulness for smooth `X` over any field `k` of characteristic `p`; restriction to a dense
  open is fully faithful and, in the overconvergent case, closed under subquotients.
- §RD.5.7: a separated geometrically reduced `k`-scheme of pure dimension `n` contains a dense open
  affine finite étale over `A^n_k`.
- §RD.5.89: Poincaré duality `Hⁱ_rig(X, E) ≅ H^(2d−i)_(c,rig)(X, E^∨)^∨(−d)`, Frobenius-equivariant.
- §RD.5.100, §RD.5.103: unipotent monodromy along a strict normal crossings divisor (docile objects)
  and the unique logarithmic extension with nilpotent residues.
- §RD.6.2, §RD.6.4, §RD.6.23: linear Frobenius at a closed point, `L`-functions, and the trace formula
  `L(X, E, t) = ∏_i det(1 − tF | Hⁱ_(c,rig)(X, E))^((−1)^(i+1))`.
- §RD.6.28, §RD.6.57, §RD.6.59, §RD.6.60, §RD.6.82, §RD.6.85: pointwise `ι`-weights with real
  weights, `ι`-realizable objects (an object pure of weight 0 is realizable), constant twists, the
  constant twist making a rank-one object unit-root, normalisation to weight zero, and Weil II: for
  `ι`-realizable `E` mixed of weight `≤ w`, `Hⁱ_(c,rig)(X, E)` is mixed of weight `≤ w + i`.
- §RD.0.54: the ring comparison for D'Addezio's `O†_(E_alg)`, used with §RD.1.72 in MS.0.4.
- §RD.2.28: the logarithmic Robba ring `R_log` with Frobenius, derivation and monodromy operator,
  used in MS.1.7.
- §RD.3.15, §RD.3.19, §RD.3.40: Zariski gluing of coherent `j†O`-modules, pullback of overconvergent
  isocrystals along morphisms (for the witness curves of MS.6.1), and Zariski gluing of Frobenius
  structures.
- §RD.4.19: the excision sequence for compact-support rigid cohomology, used in MS.6.6.
- §RD.6.42, §RD.6.47: the Dwork and Kummer F-isocrystals, used in the Checks of MS.5.11 and in MS.2.8.
- §RD.0.34, §RD.3.48, §RD.6.61, §RD.6.77: the extended Robba ring, the Katz–Crew correspondence with
  `ℚ_q`-coefficients, its finite-field form, and purity of constituents of `ι`-real objects on curves.
  They are the statements that the supplier requests below extend; this roadmap uses only the
  extensions.

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:extended-log-robba-growth): the logarithmic extension `R̃_log = R̃[log u]` of the extended Robba ring of §RD.0.34 with a Frobenius-equivariant injective extension of the embedding `R_log → R̃_log` of §RD.2.28, injectivity of `R̃^bd ⊗_(R^bd) R_log → R̃_log`, log-growth filtrations on `R`, `R_log`, `R̃` and `R̃_log` compatible with this embedding, and the theorem that a nonzero Frobenius eigenvector of slope `λ` in `R̃_log` has slope `λ ≥ 0` and is exactly of log-growth `λ` (Ohkubo, Lemmas 1.12–1.15, 2.10–2.14).

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:dejong-disc-robba-submodules): for a `(φ,∇)`-module `M` over `K[[t]]₀` with `k` perfect, every saturated `(φ,∇)`-submodule of `E† ⊗ M` is `E† ⊗ N` for a unique saturated `(φ,∇)`-submodule `N ⊆ M` with finite free quotient (de Jong 1998, Proposition 6.4, as used in Chiarellotto–Tsuzuki, proof of Lemma 5.7, and Ohkubo, Theorem 12.7).

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:unit-root-correspondence-perfect-base): for a perfect field `k` containing `𝔽_q`, `K` with `K^σ ⊗_(W(𝔽_q)) W(k) ≅ K` and `σ = id ⊗ Frob_q`, and a smooth connected curve `C` over `k`, an equivalence between unit-root convergent F-isocrystals on `C/K` and continuous `K^σ`-representations of `π_1(C)`, under which overconvergence corresponds to finite local monodromy at the points of `C̄ ∖ C` (Tsuzuki 1998, Theorems 4.2.6 and 7.2.3), extending §RD.3.48 beyond `ℚ_q`-coefficients and §RD.6.61 beyond finite fields.

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:legendre-kummer-extension): for `p ≡ 1 mod 4`, `C = P¹_(𝔽_p) ∖ {0, 1, ∞}`, `L†` the rank-two `H¹` of the Legendre family and `χ` the quadratic character of `w² = z(z − 1)`, the space `H¹_rig(C, L†(χ))` is two-dimensional with Frobenius slopes 0 and 2, its unit-root eigenvalue is `π_p²` for the unit root `π_p` of `y² = x³ − x`, and extensions of the constant line `O(π_p²)` by `L†(χ)` in F-`Isoc†(C)` are classified by the Frobenius-equivariant part of this `H¹` (Tsuzuki §3.9, pp. 21–22).

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:irreducible-iota-purity): for every smooth connected `X` over `𝔽_q`, `K` with residue field `𝔽_q` and `σ_K = id`, and every field embedding `ι : K^alg → ℂ`, every irreducible overconvergent F-isocrystal on `X/K` is `ι`-pure of some real weight (Abe–Esnault, Theorem 2.7, restricted to F-`Isoc†`), extending §RD.6.77 beyond `ι`-real objects on curves.

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:lefschetz-curves-irreducibility): for smooth connected `X` over `𝔽_q`, a finite extension `L` of `K`, an overconvergent F-isocrystal `M` on `X/K` with a `K`-algebra map `L → End(M)` that is irreducible among such objects, and a finite set `S` of closed points of `X`, there is a smooth curve `C → X` through every point of `S` (with a `k(α)`-rational point over each `α ∈ S`) on which `M|_C` is irreducible among objects with `L`-structure (Abe–Esnault, Theorem 3.10).

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:docile-curve-restriction): for a smooth connected projective `X̄` of dimension at least 2 over a perfect field `k`, a strict normal crossings divisor `Z`, `X = X̄ ∖ Z` and a smooth curve `C̄` that is a complete intersection of ample divisors in good position with respect to `Z`, restriction `H⁰(X, E) → H⁰(C̄ ∩ X, E|)` is an isomorphism for every overconvergent isocrystal `E` on `X` with unipotent monodromy along `Z` (Abe–Esnault, Corollary 2.4 with Remark 2.5).

What PadicDifferentialEquationsAndRigidCohomology must provide (gap:coefficient-linear-weil-ii): for an overconvergent F-isocrystal `E` on a separated `𝔽_q`-scheme with a `K`-algebra map `L → End(E)` (`L/K` finite), `ι`-mixed of weight `≤ w` for the `L`-linear Frobenius at every closed point, each `Hⁱ_(c,rig)(X, E)` with its `L`-linear Frobenius is `ι`-mixed of weight `≤ w + i` (the coefficient-linear form of §RD.6.85).

### From TauCetiRoadmap.RigidAnalyticGeometry

Layer 5 (*Čech comparison and acyclicity*): classical Tate acyclicity for finite affinoid covers.
MS.2.2 uses it to glue overconvergence conditions at the finitely many points at infinity of an
affine curve.

### From TauCetiRoadmap.AlgebraicCurves

Layer 2 (*affine models — the Dedekind bridge*): the coordinate ring of a smooth affine curve over a
perfect field is a Dedekind domain, equal to the intersection of its local rings at closed points;
MS.2.2 uses the residue form `k[C] = ⋂_(α∈C) (k(C) ∩ k(α)[[x_α]])`. Layer 12 (*the dictionary —
function fields ↔ curves*): every smooth connected curve over a perfect field has a smooth completion
`C̄`, unique up to unique isomorphism, with finite boundary `C̄ ∖ C`.

## How to read the build

MS.0 works over a complete discretely valued differential field `B` (the Amice field, a local field
`E_α` or the completed generic field `E_η` of a curve) and produces the universal bounded quotient,
its splitting by slopes and the PBQ condition. MS.1 builds the PBQ filtration over `B`, descends it to
the bounded Robba field and the bounded disc, and compares logarithmic growth with Frobenius slopes.
MS.2 globalises PBQ to curves by gluing generic and local data. MS.3 introduces saturation, locally
and on smooth varieties, and proves the local reconstruction theorem. MS.4 proves the curve rank
theorem and deduces the specified-map theorem on curves. MS.5 introduces dagger hulls and proves the
minimal slope property on curves from the curve rank theorem; its generic route through D'Addezio's
integral models is developed alongside. MS.6 passes to finite fields through Lefschetz curves and
`Q̄_p`-coefficients. A target's `*Needs:*` line lists the inputs of its statement and of the proof
route named in it; another route is free to use other inputs.

## Layer MS.0: Generic bounded quotients

This layer works over the Amice field `E`, the local fields `E_α` and the completed generic field
`E_η` of a curve. It constructs bounded generic solutions and the maximally bounded quotient, proves
that boundedness is splitting of the slope filtration, and defines PBQ modules.

### MS.0.1 Completed generic and local fields of a curve

Let `C` be a smooth connected affine curve over `k` with smooth completion `C̄`, let `Spec A_C` be a
smooth affine lift of `C` over `O_K` whose weak completion `A†_C` carries a `q`-Frobenius lift `φ`
over `σ`, and let `x ∈ A_C` reduce to a generically étale coordinate of `C`. Such lifts exist
(PadicDifferentialEquationsAndRigidCohomology §§RD.0.39, RD.0.42). Put `A†_(C,K) = A†_C ⊗ K` and
`Â_(C,K) = Â_C ⊗ K`.

Define the **completed generic field** `E_η` as the `p`-adic completion of the localisation of `A_C`
at the prime `πA_C`, with `π` inverted. For a closed point `α` of `C̄`, let `K_α` be the unramified
extension of `K` with residue field `k(α)`, `x_α` a lift of a local coordinate at `α`, and let `E_α`,
`E†_α` and `K_α[[x_α]]₀` be the Amice field, the bounded Robba field and the bounded-disc ring in the
variable `x_α` over `K_α`. Construct the injective ring maps, compatible with `φ` and the derivation,
`E_η → E_α` for every closed point `α ∈ C̄`, `Â_(C,K) → K_α[[x_α]]₀` for `α ∈ C`, and
`A†_(C,K) → E†_α` for `α ∈ C̄ ∖ C`. For a `(φ,∇)`-module `M†` over `A†_(C,K)` write
`M_η = E_η ⊗ M†`, `M_(0,α) = K_α[[x_α]]₀ ⊗ M†` and `M†_α = E†_α ⊗ M†`. For `B ∈ {E_η, E_α}`, the
generic disc of `B` is the Taylor map `f ↦ Σ_n (d^n f/dx^n)(t_*)(X − t_*)^n/n!` from `B` into
`B^τ[[X − t_*]]₀`, where `B^τ` is a copy of `B` with generic point `t_*` (Tsuzuki §3.1, pp. 10–11;
§3.3, p. 13).

The special fibre of `Spec A_C` is integral, so the localisation at `πA_C` is a discrete valuation
ring with uniformiser `π` and residue field `k(C)`; completing gives Kedlaya's `Γ^ℓ[π⁻¹]` for the
trivially valued field `ℓ = k(C)`. The Frobenius lift preserves `πA_C` and extends by continuity, and
`d/dx` extends because `dx` generates the differentials at the generic point. At a closed point the
completion along `α` in the coordinate `x_α` gives the bounded disc, and at a boundary point the
overconvergent functions land in `E†_α`. Independence of the lift, coordinate and Frobenius lift for
solvability and boundedness follows from the Taylor comparison (Tsuzuki, Proposition 3.6, p. 14).

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.0.9, RD.0.37, RD.0.39, RD.0.42, RD.1.43,
RD.1.44, RD.3.29; AlgebraicCurves Layer 12.

API:

- `E_η` is a complete discretely valued field with value group `|K^×|` and residue field `k(C)`, on
  which `φ` and `d/dx` extend uniquely.
- For every closed point `α` of `C̄` with `x = x_α`, the map `E_η → E_α` is an isometric field
  embedding commuting with `φ` and `d/dx`.
- `M† ↦ M_η` is an exact faithful tensor functor from `(φ,∇)`-modules over `A†_(C,K)` to
  `(φ,∇)`-modules over `E_η`, with `E_α ⊗_(E_η) M_η ≅ E_α ⊗ M†` for every closed point `α`.
- Changing the lift, the coordinate or the Frobenius lift replaces `E_η` by an isomorphic field, and
  the Taylor comparison transports generic modules and their solution spaces.

**Checks.**

- For `C = A¹_k` with lift `O_K[x]`, `E_η` is the `p`-adic completion of `O_K[x]_(π)` with `π`
  inverted, and its residue field is `k(x)`, not `k((x))`.
- The generic module of the unit object `(A†_(C,K), d, φ)` is `E_η` with zero connection; it is
  unit-root and bounded.
- The lacunary series `Σ_(n≥0) x^(n!)` lies in the Amice field at the origin but not in `E_η`: its reduction
  is not a rational function, while every element of `O_(E_η)` reduces into `k(x)`. Identifying `E_η`
  with a local Laurent field is wrong.

### MS.0.2 Generic bounded solutions

For a `(φ,∇)`-module `M` over `B ∈ {E, E_η, E_α}`, pull back along the Taylor map
`τ : B → B^τ[[u]]₀`, `τ(a) = Σ_i ∂^i(a) u^i/i!`, and define the **solution space**
`Sol(M) = Hom_∇(τ^*M, B^τ{u})`, with `B^τ{u}` the analytic functions on the open unit disc, and the
**bounded solution space** `Sol_0(M) = Hom_∇(τ^*M, B^τ[[u]]₀)`, both with the induced semilinear
Frobenius `f ↦ φ ∘ f ∘ φ_M⁻¹` (Tsuzuki §3.3 and Definition 3.5, p. 13; Proposition 3.14, p. 15).
Boundedness is a uniform bound on all coefficients; multiplication by bounded series preserves it,
so `Sol_0(M)` is a `B^τ`-subspace.

*Needs:* MS.0.1; PadicDifferentialEquationsAndRigidCohomology §§RD.1.13, RD.1.43, RD.1.45, RD.0.37;
Mathlib `Padic.norm_p_pow` for the Checks.

API:

- `Sol_0(M)` injects into `Sol(M)`, compatibly with Frobenius.
- `dim_(B^τ) Sol(M) = rank_B M`, because a Frobenius structure makes `M` solvable on the generic disc.
- A morphism `M → N` of `(φ,∇)`-modules induces `Sol_0(N) → Sol_0(M)` commuting with the inclusions.

**Checks.**

- For the unit object both solution spaces are one-dimensional, spanned by the constant `1`.
- For the zero module both solution spaces are zero.
- The rank-two module with basis `e_1, e_2`, `∇e_1 = 0`, `∇e_2 = e_1 ⊗ dt/t`, Frobenius
  `φ(e_1) = q⁻¹e_1`, `φ(e_2) = e_2` (for `φ(t) = t^q`; horizontality forces the factor `q⁻¹`), has a
  solution whose generic Taylor expansion is `log(1 + u/t) = Σ_(n≥1) (−1)^(n+1)(u/t)^n/n`; at
  `n = p^r` the coefficient has norm `p^r`, so this solution is unbounded and `Sol_0 ≠ Sol`.
- For the rank-one object with Frobenius `a` and zero connection, the solution `e ↦ 1` has Frobenius
  eigenvalue `a⁻¹`: the solution space carries the negatives of the slopes of `M`.

### MS.0.3 Frobenius-fixed coefficient normalisation

Prove: (1) `K^σ` is a complete discretely valued field whose residue field has at most `q` elements,
hence a finite extension of `ℚ_p`; (2) there is a finite unramified extension `K′/K` to which `σ`
extends such that `(K′)^σ` has residue field `𝔽_q` and value group `|K^×|`, and if `k` is perfect then
`(K′)^σ ⊗_(W(𝔽_q)) W(k′) → K′` is an isomorphism under which `σ = id ⊗ Frob_q`. Consequently every
element of `|K^×|` is `|b|` for some `b ∈ (K′)^σ`, and a rank-one `(φ,∇)`-module over `E`, `E_η` or
`A†_(C,K)` becomes unit-root after the constant twist by `b⁻¹` over `K′` (Tsuzuki, Lemma A.1(1)–(2)
and its proof, pp. 37–38). Statement (1) does not need `k` perfect.

A `σ`-fixed integral element satisfies `a^q ≡ a` modulo the maximal ideal, so the residue field of
`K^σ` embeds in `𝔽_q`; `K^σ` is closed, hence complete. For (2), take the completed maximal
unramified extension of the completed perfection of `K` along `σ`; its `σ`-fixed field has residue
field `𝔽_q` and the value group of `K`, and its compositum with `K` is `K′`. Comparing ramification
gives the tensor decomposition. A rank-one `φ`-module has Frobenius eigenvalue of absolute value in
`|K^×|`, so the twist by a constant of the same absolute value has slope zero.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.1.35; Mathlib
`FixedPoints.subfield`.

**Checks.**

- For `K = W(𝔽̄_p)[1/p]` with the Witt Frobenius (`q = p`), `K^σ = ℚ_p` and `K′ = K`.
- For `K = ℚ_p(√p)` with `σ = id` (`q = p`; the residue field is `𝔽_p`, so `id` is a `p`-Frobenius),
  `K^σ = K`, and the rank-one constant object with Frobenius `√p` has slope `1/2` and is made unit-root
  by `b = √p`. Twisting only by powers of `p` cannot do this: the value group, not `|p|^ℤ`, is needed.

### MS.0.4 Opposite slope rank bound

Let `(E†, E)` be either the bounded Robba field and the Amice field over `K` (residue field
`k((t))`), or D'Addezio's generic pair of the affine line (`O_E` the `p`-adic completion of
`W(k)[t]_(p)`, residue field `k(t)`, and `E†` the functions converging on some annulus `ρ ≤ |t| < 1`),
with `k` perfect. Let `M†` be a `φ`-module over `E†`, `M = E ⊗ M†`, `P` an isoclinic `φ`-module over
`E`, and `f : M → P` a `φ`-morphism whose restriction to `M†` is injective. Prove that
`λmax(M) = slope(P)` and `rank_E Top(M) ≤ rank_E P`, with equality when `E · f(M†) = P` (Tsuzuki,
Theorems 2.13–2.14, p. 10; D'Addezio, Lemma 4.2.7, p. 15). No connection is needed, and `f` itself
need not be injective.

Proof route. Base change to the algebraic overconvergent field `E†_alg`: since `E†_alg` is flat over
`E†` and `E ⊗_(E†) E†_alg → E_alg` is injective, `f|_(M†)` stays injective. The first reverse-filtration
step of `M†_alg` is isoclinic of slope `λmax(M)` and maps injectively into `P ⊗ E_alg`, so the slopes
agree. After adjoining `p^(1/r)`, its Frobenius eigenvectors of slope `s/r` span a space of dimension
`rank Top(M)` and inject into the corresponding eigenspace of `P`, of dimension `rank P`. If `f` is
surjective it kills the lower-slope part of `M` by Hom vanishing, so it factors through `Top(M)`.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.0.35, RD.0.53, RD.0.54, RD.1.37, RD.1.41,
RD.1.72.

**Checks.**

- An injection over `E†` need not stay injective after `E`-linearisation: for `α ∈ E ∖ E†`, the map
  `(E†)² → E`, `(a, b) ↦ a + αb` is injective on `(E†)²` and its `E`-linearisation has a
  one-dimensional kernel. The rank conclusion concerns `Top(M)`, not `M`.
- For `M† = E†` with slope 0 and `P = E` with `f` the identity, both sides of the rank bound are 1.
- For `M† = E†` of slope 0, `P = E²` of slope 0 and `f` the inclusion into the first coordinate,
  `f|_(M†)` is injective, `rank Top(M) = 1 < 2 = rank P` and `E · f(M†) ≠ P`: the inequality can be
  strict, and equality needs the spanning hypothesis.
- For `M† = E†(1) ⊕ E†(0)` and `P = E(0)`, the projection onto the second summand is not injective
  on `M†`; no injective `φ`-map `M† → E(0)` exists, as the theorem predicts from `λmax(M) = 1 ≠ 0`.

### MS.0.5 The maximally bounded quotient

A `(φ,∇)`-module over `B ∈ {E, E_η, E_α}` is **bounded** when its Taylor realisation is trivial over
the bounded disc, equivalently when its generic solution matrix has bounded coefficients. Define `Mᵇ`
as the least `∇`-submodule of `M` with bounded quotient and the **maximally bounded quotient**
`B(M) = M/Mᵇ` (Tsuzuki, Theorem 3.12 and Definition 3.13, p. 15; Chiarellotto–Tsuzuki, Theorem 2.2,
pp. 41–42). Prove that `Mᵇ` exists and is Frobenius-stable, and that `B(M) ≠ 0` when `M ≠ 0`.

Intersections of two kernels with bounded quotients again have bounded quotient, because the quotient
embeds in the direct sum; a kernel of minimal dimension is therefore contained in all others. Frobenius
pullback preserves the universal property, so `Mᵇ` is `φ`-stable. A nonzero module has the nonzero
bounded quotient `Top(M)` by MS.0.7.

*Needs:* MS.0.1; MS.0.2; MS.0.7 (for nonvanishing); PadicDifferentialEquationsAndRigidCohomology
§RD.1.41.

API:

- Every horizontal Frobenius map `M → Q` with `Q` bounded factors uniquely through `M → B(M)`.
- `Sol_0(M) ≅ Sol(B(M))` and `Sol_0(M)` is the dual of `B(M)` as a Frobenius `B^τ`-space;
  `Mᵇ` is the common annihilator of `Sol_0(M)` under evaluation.
- `rank B(M) = dim Sol_0(M)`, and `B(M) = M` exactly when `M` is bounded.
- A surjection `M → M′` induces a surjection `B(M) → B(M′)`.

**Checks.**

- For the unit object, `1ᵇ = 0` and `B(1) = 1`.
- For the zero module, `0ᵇ = 0` and `B(0) = 0`; no nonzero quotient is asserted for `M = 0`.
- `B(B(M)) = B(M)` and `B(M)ᵇ = 0`; the kernel convention is essential, since writing `Mᵇ` for a
  bounded subobject would make `B(M)ᵇ = B(M)`.
- For the logarithmic module of MS.0.2, `Mᵇ = E e_1` and `B(M)` is the unit quotient spanned by the
  image of `e_2`; the constant solution is the only bounded one.

### MS.0.6 Bounded extension splitting

Let `0 → L → M → Q → 0` be an exact sequence of `(φ,∇)`-modules over `E` with `L`, `Q` isoclinic of
slopes `a`, `b`, and `k` perfect. Prove that it splits as `(φ,∇)`-modules if `b < a`, or `b − a > 1`,
or `M` is bounded and `0 < b − a ≤ 1` (Chiarellotto–Tsuzuki, Proposition 4.2, p. 46; Proposition 4.3,
pp. 46–47; §4.4, pp. 50–54; Ohkubo, Lemma 8.2, p. 40).

Proof route. For `b < a`, the off-diagonal Frobenius equation has a contracting solution operator, and
the resulting splitting is horizontal by Hom vanishing between slopes. For `b − a > 0` pass to an
allowable extension (completed unramified extensions and coefficient extensions with fixed field `K`),
take `φ(t) = t^q` by the Taylor comparison, and normalise the diagonal blocks; for `b − a > 1` the
coefficient orders in the Frobenius–connection identity force the off-diagonal block to vanish, and for
`0 < b − a ≤ 1` a surviving off-diagonal block produces an unbounded generic solution (of exact growth
one when `b − a = 1`), which boundedness excludes. Splittings between distinct slopes are unique and
descend from allowable extensions.

*Needs:* MS.0.2; PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.0.37, RD.1.37, RD.1.39,
RD.1.44.

**Checks.**

- The logarithmic module of MS.0.2 has `a = −1`, `b = 0`, slope difference exactly 1, is unbounded and
  does not split: the boundedness hypothesis in the third case cannot be dropped.
- A split sum `E(1) ⊕ E(0)` is bounded with `b − a = −1 < 0` for the order sub `E(1)`, quotient `E(0)`;
  the first case applies.
- Solvability is automatic for `(φ,∇)`-modules, so the third case is not a consequence of solvability.

### MS.0.7 The bounded splitting theorem

Over `B ∈ {E, E_α}` with `k` perfect, and over `B = E_η`, prove that a `(φ,∇)`-module `M` is bounded if
and only if its slope filtration splits, `M ≅ ⊕_i S_i(M)/S_(i−1)(M)`, as `(φ,∇)`-modules. In particular
every isoclinic module is bounded, and for `M ≠ 0` the maximal-slope quotient `Top(M)` is a nonzero
bounded quotient (Chiarellotto–Tsuzuki, Theorem 4.1, p. 46; Tsuzuki, Theorem 3.10 and Lemma 3.11,
p. 14; Ohkubo, Proposition 5.9, p. 26, and Theorem 8.3, p. 40).

Proof route. An isoclinic module is bounded: after a slope twist it has a Frobenius-stable unit-root
lattice and the generic Taylor estimates bound its solutions. For bounded `M`, apply MS.0.6 to
successive grades; the unique splittings descend. For `B = E_η`, take the unique upper-triangular
solution `X` over the completed perfection `Ê^perf_η` of `A φ(X) = X diag(A_11, …, A_rr)` for the
Frobenius matrix `A` in a slope-adapted basis; by the local case `X` has entries in `E_α`, and
`E_η = Ê^perf_η ∩ E_α` inside `Ẽ_α` because `k(C) = k(C)^perf ∩ k(C)_α`, the `p`-th powers being the
kernel of a derivation.

*Needs:* MS.0.1; MS.0.2; MS.0.6; PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.1.32,
RD.1.37, RD.1.41.

**Checks.**

- The split sum of two constant rank-one objects of slopes 1 and 0 is bounded.
- The logarithmic module of MS.0.2 is a nonsplit extension of slopes `−1` (sub) and `0` (quotient) and
  is unbounded; solvability alone does not give boundedness.
- A rank-one module is isoclinic, hence bounded.

### MS.0.8 Bounded base change

Let `B ⊂ B′` be an extension of complete discretely valued fields with compatible Frobenius lifts and
derivations sharing a coordinate `x`: for example a finite isometric coefficient extension `E ⊂ E_L`,
the generic-to-local embedding `E_η ⊂ E_α` with `x = x_α`, or the finite unramified extension
`E_η ⊂ E_(η′)` induced by a finite étale cover of curves. For a solvable `∇`-module `M` over `B`, prove
that `Sol(B′ ⊗ M)` and `Sol_0(B′ ⊗ M)` are the `B′^τ`-spans of `Sol(M)` and `Sol_0(M)`; consequently
`(B′ ⊗ M)ᵇ = B′ ⊗ Mᵇ` and `B(B′ ⊗ M) = B′ ⊗ B(M)` (Tsuzuki, Proposition 3.14 and Corollary 3.15,
pp. 15–16; Ohkubo, Lemma 7.10, p. 37).

Proof route. A generic solution matrix of `M` remains one over `B′^τ`. If a `B′^τ`-combination of
solutions is bounded, choose a basis `d_1, …, d_m` of the `B^τ`-span of its coefficients; on this
finite-dimensional subspace of the complete field `B′^τ` the induced topology is the product topology,
so each coefficient solution is bounded. For a finite étale cover the coordinate of `C` is an étale
coordinate of `C′` and the Frobenius lift extends uniquely.

*Needs:* MS.0.1; MS.0.2; MS.0.5; PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.3.39.

**Checks.**

- For the logarithmic module the unbounded solution stays unbounded over every `B′`, and the constant
  solution stays bounded: `B(B′ ⊗ M) = B′ ⊗ B(M)` has rank one on both sides.
- For `B′ = B` the statement is the identity.
- For a bounded `M` both sides are `B′ ⊗ M`.

### MS.0.9 Pure bounded quotients

A nonzero `(φ,∇)`-module `M` over `B ∈ {E, E_η, E_α}` is **PBQ** (pure of bounded quotient) if `B(M)`
is isoclinic. A `(φ,∇)`-module over `K[[t]]₀` or `E†` is PBQ when its scalar extension to `E` is
(Tsuzuki, Definitions 3.16 and 3.22, pp. 16–17; Chiarellotto–Tsuzuki, Definition 5.1, p. 55; Ohkubo,
Definition 5.10 and Lemma 5.11, p. 27). The zero module is not PBQ, but zero is allowed as the initial
term of a filtration.

*Needs:* MS.0.5; MS.0.7; PadicDifferentialEquationsAndRigidCohomology §RD.1.36.

API:

- If `M` is PBQ then `B(M)` is nonzero and isoclinic of slope `λmax(M)`, because `Top(M)` is a bounded
  quotient.
- PBQ of a module over `K[[t]]₀` or `E†` depends only on its `E`-realisation.
- Every nonzero isoclinic `(φ,∇)`-module is PBQ, with `B(M) = M`.

**Checks.**

- Every rank-one `(φ,∇)`-module is PBQ.
- The zero module is not PBQ.
- The split sum of two constant rank-one objects of distinct slopes is bounded and not PBQ.
- The logarithmic module of MS.0.2 is PBQ: `B(M)` is the unit quotient, isoclinic of slope `0 = λmax`.

### MS.0.10 The PBQ quotient criterion

For nonzero `M` over `B ∈ {E, E_η, E_α}`, prove that `M` is PBQ if and only if every nonzero
`(φ,∇)`-quotient `Q` of `M` has `λmax(Q) = λmax(M)`. Consequently a sum of finitely many PBQ
submodules with the same maximal slope is PBQ, and every nonzero quotient of a PBQ module is PBQ of the
same maximal slope (Tsuzuki, Lemma 3.17, p. 16; Ohkubo, Proposition 8.1 and Lemma 8.2, pp. 39–40).

If `B(M)` has two slopes, its lowest-slope summand under MS.0.7 is a quotient of smaller maximal slope.
Conversely `B(M) → B(Q)` is surjective and `B(Q) ≠ 0`, so `B(Q)` is isoclinic of slope `λmax(M)`, which
is `λmax(Q)`.

*Needs:* MS.0.7; MS.0.9; PadicDifferentialEquationsAndRigidCohomology §RD.1.37.

**Checks.**

- For the split sum `E(1) ⊕ E(0)`, the quotient `E(0)` has maximal slope `0 < 1`; the criterion
  detects the failure of PBQ.
- For the logarithmic module, its only nonzero proper quotient is the unit object, of maximal slope
  `0 = λmax`, consistent with PBQ.
- The sum of two copies of a PBQ module is PBQ; the sum of PBQ modules of different maximal slopes is
  not.

### MS.0.11 The unit-root tensor criterion

For a nonzero unit-root `(φ,∇)`-module `U` over `B ∈ {E, E_η, E_α}`, prove that `M` is PBQ if and only
if `M ⊗ U` is PBQ (Tsuzuki, Proposition 3.18, p. 16, with `U ≠ 0`).

On the generic disc `U` is trivial as a differential module, so the bounded solutions of `M ⊗ U` are
`rank U` copies of those of `M` and `B(M ⊗ U) = B(M) ⊗ U`; tensoring with nonzero slope-zero `U`
preserves and reflects isoclinicity.

*Needs:* MS.0.2; MS.0.9; PadicDifferentialEquationsAndRigidCohomology §§RD.1.37, RD.1.39, RD.3.47.

**Checks.**

- For `U = 0` the reverse implication fails: `M ⊗ 0 = 0` is never PBQ.
- For `U` the unit object the statement is trivial.
- For `M = E(1) ⊕ E(0)` and `U` any nonzero unit-root module, `M ⊗ U` is not PBQ.

### Examples

The split sum `L_1 ⊕ L_0` of constant rank-one objects of slopes 1 and 0 is bounded, has `Mᵇ = 0` and
`B(M) = M`, and is not PBQ. The logarithmic module is unbounded, PBQ, with `B(M)` the unit quotient.
The lacunary series separates `E_η` from a local Laurent field.

### Dependencies

PadicDifferentialEquationsAndRigidCohomology Layers RD.0, RD.1 and RD.3 (carriers, `(φ,∇)`-modules,
slopes, reverse filtrations, Frobenius lifts); AlgebraicCurves Layer 12; Mathlib `Padic.norm_p_pow`
and `FixedPoints.subfield`. No other layer of this roadmap is used.

## Layer MS.1: Local PBQ filtrations

This layer builds the canonical PBQ filtration over `B`, identifies the bounded quotient with the sum
of the top pieces of its grades, descends the filtration to the bounded Robba field and the bounded
disc, and compares logarithmic growth of solutions with Frobenius slopes.

### MS.1.1 The PBQ filtration

For a `(φ,∇)`-module `M` over `B ∈ {E, E_η, E_α}` (with `k` perfect), prove that there is a unique
filtration `0 = P_0 ⊊ P_1 ⊊ ⋯ ⊊ P_r = M` by `(φ,∇)`-submodules whose grades `G_i = P_i/P_(i−1)` are PBQ
with strictly decreasing maximal slopes `λ_1 > λ_2 > ⋯ > λ_r`; `P_1` is the largest PBQ submodule of
maximal slope `λmax(M)`, called the maximally PBQ submodule, and `P_(i+1)/P_i` is the maximally PBQ
submodule of `M/P_i`. For `M = 0` the filtration has length zero (Tsuzuki, Theorem 3.19(1) and
Definition 3.20, p. 16; Chiarellotto–Tsuzuki, Proposition 5.4 and Corollary 5.5, p. 56).

Proof route. Take the preimage in `M` of the maximal-slope summand of `B(M)` under MS.0.7; if it is
PBQ it is `P_1`, and otherwise it is proper and its own maximally PBQ submodule, by induction on rank,
maps onto that summand. Sums of PBQ submodules of slope `λmax(M)` are PBQ by MS.0.10, so a largest
one exists; the quotient has strictly smaller maximal slope and induction gives the filtration.
Uniqueness: if `P_1`, `P′_1` are first steps of two such filtrations, the surjection `P′_1 → (P_1 + P′_1)/P_1`
would contradict MS.0.10 unless it is zero.

*Needs:* MS.0.7; MS.0.10.

API:

- `P_1` is the unique largest PBQ submodule of maximal slope `λmax(M)`.
- Each grade `G_i` is PBQ with `λmax(G_i) = λ_i` and `λ_1 > λ_2 > ⋯ > λ_r`; this is a statement about
  grades, not about the nested terms `P_i`, all of which have maximal slope `λ_1`.
- The PBQ filtration of `M/P_j` is `(P_(j+i)/P_j)_i`.
- An irreducible `(φ,∇)`-module is PBQ.

**Checks.**

- The zero module has the empty sequence of nonzero grades.
- A nonzero isoclinic module has one step.
- For `L_1 ⊕ L_0` of slopes 1 and 0, the grades have maximal slopes 1 then 0, while the nested second
  term `P_2 = M` still has maximal slope 1; writing the decreasing condition on the `P_i` would fail.

### MS.1.2 The bounded graded formula

For `M` over `B` with PBQ grades `G_i`, prove that there is a canonical isomorphism of
`(φ,∇)`-modules `B(M) ≅ ⊕_i Top(G_i)` (Tsuzuki, Theorem 3.19(2), pp. 16–17, with grades in place of
the printed nested terms).

Induct on the length: `P_1/P_1ᵇ → B(M) → B(M/P_1) → 0` is exact, the left map is injective because its
composite with `B(M) → Top(M) ≅ Top(P_1)` is, and the maximality of `λ_1` splits the sequence by
MS.0.7. Distinct slopes make each identification unique.

*Needs:* MS.0.7; MS.0.10; MS.1.1.

**Checks.**

- For `L_1 ⊕ L_0`, `B(M) = M = Top(G_1) ⊕ Top(G_2) = L_1 ⊕ L_0`; the sum `Top(P_1) ⊕ Top(P_2)` would be
  two slope-one lines, which is wrong.
- For PBQ `M` the formula is `B(M) = Top(M)`.
- For the logarithmic module, `r = 1` and `B(M) = Top(M)` is the unit quotient.

### MS.1.3 PBQ filtration base change

For an extension `B ⊂ B′` as in MS.0.8 (in particular `E_η ⊂ E_α`, a finite coefficient extension, or
the generic fields of a finite étale cover), prove that `M` is PBQ if and only if `B′ ⊗ M` is PBQ, with
the same maximal slope, and that `B′ ⊗ P_•(M)` is the PBQ filtration of `B′ ⊗ M` (Tsuzuki,
Theorem 3.21, p. 17).

By MS.0.8, `B(B′ ⊗ M) = B′ ⊗ B(M)`, and generic slopes do not change under field extension; the base
change of the PBQ filtration satisfies the characterising conditions of MS.1.1 over `B′`.

*Needs:* MS.0.8; MS.0.10; MS.1.1.

**Checks.**

- For `L_1 ⊕ L_0` over `E_η`, the filtration and its grades are the same after passing to any `E_α`.
- For the logarithmic module the base change is again PBQ with the unit as bounded quotient.

### MS.1.4 Bounded Robba PBQ descent

For a `(φ,∇)`-module `M†` over `E†` with `k` perfect, prove that the PBQ filtration of `E ⊗ M†`
descends uniquely to a filtration of `M†` by `(φ,∇)`-submodules over `E†` (Tsuzuki, Theorem 3.23(2),
p. 17; Ohkubo, Proposition 12.4, Definition 12.5 and Theorem 12.7, pp. 45–46).

Proof route. If `M†` is PBQ there is nothing to descend. Otherwise choose an isoclinic quotient `Q` of
`B(M)` of slope below `λmax(M)` (MS.0.7) and put `N† = ker(M† → Q)`. Its image in `Q` is nonzero, so
`N†` is a proper submodule; by MS.0.4 applied to `M†/N† ↪ Q`, the completion of `N†` keeps the whole top
quotient of `M`, and the uniqueness in MS.1.1 identifies `P_1(E ⊗ N†) = P_1(E ⊗ M†)`. Induct on the
rank of `N†`, then on the quotient. No descent of arbitrary submodules of the completion is assumed.

*Needs:* MS.0.4; MS.0.7; MS.1.1; PadicDifferentialEquationsAndRigidCohomology §RD.5.4.

**Checks.**

- An irreducible `(φ,∇)`-module over `E†` is PBQ, and its filtration has one step.
- For `M† = E†(1) ⊕ E†(0)` the descended filtration is `E†(1) ⊂ M†`.

### MS.1.5 Bounded-disc PBQ descent

For a `(φ,∇)`-module `M_0` over `K[[t]]₀` with `k` perfect, prove that the PBQ filtration of
`E ⊗ M_0` descends uniquely to a filtration of `M_0` by saturated `(φ,∇)`-submodules with finite free
quotients (Tsuzuki, Theorem 3.23(1), p. 17; Chiarellotto–Tsuzuki, Theorem 5.6, Lemma 5.7 and
Corollary 5.10, pp. 56–59).

Proof route. Extend to `E†`, apply MS.1.4 to get the maximally PBQ submodule over `E†`, and bring it
back through de Jong's comparison of saturated submodules of `M_0` and of `E† ⊗ M_0`; induct on the
quotient, using local full faithfulness for uniqueness. Equivalently, run Chiarellotto–Tsuzuki's
kernel induction with the pure-target slope detection of their Lemma 5.7, whose proof uses the same
comparison.

*Needs:* MS.1.4; PadicDifferentialEquationsAndRigidCohomology §RD.5.4 and the supplier request
dejong-disc-robba-submodules.

**Checks.**

- Chiarellotto–Tsuzuki's rank-three module (Example 5.2(3), p. 55) is not PBQ, its dual is PBQ, and
  its PBQ filtration is generated by `e_1, e_3` in the first step (Example 5.11, p. 59).
- A rank-one module over `K[[t]]₀` has the one-step filtration.

### MS.1.6 Logarithmic growth of solutions

For real `λ ≥ 0` let `B^τ[[u]]_λ` be the power series `Σ a_n u^n` with `|a_n| ≤ C(n + 1)^λ` for one
real `C ≥ 0` and all `n`; for `λ < 0` set it to zero. Define `Sol_λ(M)` as the solutions with values in
this space; for modules over `K[[t]]₀` use `K[[t]]_λ`. The definition does not depend on the basis
(Tsuzuki, Remark 3.25, p. 18; Ohkubo, Definitions 2.1, 2.4 and 2.9, Lemma 2.6 and Corollary 2.7,
pp. 11–13).

Multiplication by bounded series preserves each growth class by the nonarchimedean convolution
estimate, and bases differ by bounded transition matrices.

*Needs:* MS.0.2; PadicDifferentialEquationsAndRigidCohomology §RD.0.17; Mathlib `Padic.norm_p_pow`
for the Checks.

API:

- `Sol_0(M)` in this filtration is the bounded solution space of MS.0.2.
- For `0 ≤ λ ≤ μ` the growth classes and solution spaces are nested.
- Membership for `λ ≥ 0` is a single uniform bound `|a_n| ≤ C(n + 1)^λ`.
- The product of series of growth `λ` and `μ` has growth `λ + μ`.

**Checks.**

- A nonzero constant has exact growth zero.
- `log(1 + u)` has growth at most one but is not of growth zero: along `n = p^r` its coefficients have
  norm `p^r`.
- For `λ < 0` the class is zero, although a nonzero polynomial satisfies `|a_n| ≤ C(n + 1)^λ` for a
  large `C`; the convention, not the inequality, excludes it.

### MS.1.7 Growth of Frobenius eigenvectors

For a PBQ `(φ,∇)`-module `M` over `E†` that is solvable in the logarithmic Robba ring, after an
isometric coefficient extension making `k` algebraically closed, prove that a Frobenius
`d`-eigenvector `f ∈ Sol_λ(M)` of slope `μ` satisfies `μ ≤ λ − λmax(E ⊗ M)` (Ohkubo, Proposition 10.1
and proof, pp. 41–42). Solvability in the logarithmic Robba ring is a hypothesis.

Proof route. Quotient by `ker f`; by MS.0.10 the maximal slope is unchanged. After a twist and passing
to `φ^d`, reduce to a Frobenius-fixed solution. Embed the logarithmic Robba ring in its extended form
with injective multiplication; a maximal-slope eigenvector from the reverse filtration maps to a
nonzero eigenfunction whose exact growth equals its slope.

*Needs:* MS.0.10; PadicDifferentialEquationsAndRigidCohomology §§RD.0.35, RD.1.41, RD.2.28 and the
supplier request extended-log-robba-growth.

**Checks.**

- At `λ = 0` the bound gives `μ ≤ −λmax`; since the slopes of `Sol(M)` are at least `−λmax`, a bounded
  eigen-solution has slope exactly `−λmax`.
- For the unit object, the constant solution has `μ = 0 = λ − λmax` at `λ = 0`.

### MS.1.8 Logarithmic growth versus Frobenius slopes

For a PBQ module `M_0` over `K[[t]]₀`, prove `Sol_λ(M_0) = S_(λ − λmax)(Sol(M_0))` for every real `λ`,
where `S` is the increasing Frobenius slope filtration of the solution space; the same holds over `E†`
for modules solvable in the logarithmic Robba ring (Ohkubo, Theorem 7.6(ii) and Proposition 7.7,
pp. 35–37, proving Chiarellotto–Tsuzuki's Conjecture 2.5 for PBQ modules; Tsuzuki, Remark 3.25,
p. 18).

Proof route. The Frobenius contraction estimate gives `S_(λ − λmax) ⊆ Sol_λ`. For the reverse
inclusion choose a Frobenius eigenbasis after an isometric coefficient extension and apply MS.1.7;
descend by norm equivalence. The bounded-disc case follows through the Taylor embedding.

*Needs:* MS.0.8; MS.1.6; MS.1.7; PadicDifferentialEquationsAndRigidCohomology §§RD.1.32, RD.2.22.

**Checks.**

- At `λ = 0` the shift is `−λmax`: bounded solutions are the solutions of slope `≤ −λmax`, hence of
  slope exactly `−λmax`.
- For the logarithmic module of MS.0.2 over `E†` (unipotent, so solvable in the logarithmic Robba
  ring, with `λmax = 0`), the solutions are spanned by `f_1 : e_1 ↦ 0, e_2 ↦ 1`, fixed by Frobenius
  (slope 0, growth 0), and `f_2 : e_1 ↦ 1, e_2 ↦ log t`, with Frobenius eigenvalue `q` (slope 1, exact
  growth 1): `Sol_0 = S_0 = K·f_1` and `Sol_1 = S_1 = Sol`.
- For `λ < 0` both sides are zero.

### MS.1.9 Bounded solutions of PBQ disc modules

For a PBQ module `M_0` over `K[[t]]₀`, prove that `Sol_0(M_0) = S_(−λmax)(Sol(M_0))` is isoclinic of
slope `−λmax(E ⊗ M_0)`, and that evaluation gives a surjection of `M_0` onto the isoclinic module
`L_0 = K[[t]]₀ ⊗_K Sol_0(M_0)^∨` of slope `λmax`, with `rank L_0 = dim_K Sol_0(M_0)` (Tsuzuki,
Proposition 3.24, pp. 17–18, comparing the rank with the dimension of the solution space).

The pairing `Sol_0(M_0) ⊗ M_0 → K[[t]]₀` induces the surjection onto `L_0`; a slope of `Sol_0(M_0)`
different from `−λmax` would contradict PBQ, and MS.1.8 at `λ = 0` gives the reverse inclusion.

*Needs:* MS.0.2; MS.1.5; MS.1.8; PadicDifferentialEquationsAndRigidCohomology §RD.2.22.

**Checks.**

- For the rank-one constant object with Frobenius `a`, the solution eigenvalue is `a⁻¹` while the
  evaluation quotient `L_0` has Frobenius `a`; the dual in the definition of `L_0` cannot be omitted.
- For an isoclinic `M_0` all solutions are bounded and `L_0 = M_0`.
- For the trivial module `K[[t]]₀^2` with Frobenius `diag(1, q)` (slopes 0 and 1), `M_0` is bounded but
  not PBQ; the proposition does not apply, and indeed `Sol_0` has the two slopes `0` and `−1`.

### Examples

For `L_1 ⊕ L_0`: `P_1 = L_1`, `P_2 = M`, grades `L_1`, `L_0`, and `B(M) = Top(G_1) ⊕ Top(G_2) = M`.
For the logarithmic module over `E†`: one PBQ step, bounded solutions the constant line of slope 0,
growth-one solutions everything, matching `Sol_λ = S_λ` with `λmax = 0`.

### Dependencies

MS.0; PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.0.35, RD.1.32, RD.1.41, RD.2.22,
RD.2.28, RD.5.4, and the supplier requests extended-log-robba-growth (MS.1.7) and
dejong-disc-robba-submodules (MS.1.5).

## Layer MS.2: PBQ objects on curves

Throughout, `C` is a smooth connected curve over the perfect field `k` with smooth completion `C̄`.
Statements on an affine `C` use the lift, Frobenius lift and fields of MS.0.1.

### MS.2.1 PBQ overconvergent F-isocrystals on curves

An overconvergent F-isocrystal `M†` on `C/K` is **PBQ** if, for a nonempty affine open `U ⊆ C` with a
lift and Frobenius lift as in MS.0.1, the generic module `M_η = E_η ⊗ Γ(U, M†)` is PBQ (Tsuzuki,
Definition 3.26, p. 18). Prove that this does not depend on `U`, the lift, the generic coordinate or
the Frobenius lift. It is a generic condition, not pointwise isoclinicity.

Pass between lifts by the Taylor comparison and between generic coefficient fields by MS.0.8; both
preserve the maximally bounded quotient and its slope.

*Needs:* MS.0.1; MS.0.8; MS.0.9; PadicDifferentialEquationsAndRigidCohomology §§RD.0.37, RD.1.44,
RD.3.32.

API:

- PBQ can be tested on the generic module of any nonempty affine open.
- Restriction to a nonempty open preserves and reflects PBQ.
- The condition is invariant under change of coordinate and of Frobenius lift.

**Checks.**

- A rank-one overconvergent F-isocrystal is PBQ.
- The zero object is not PBQ.
- A split sum of two constant rank-one objects of different slopes is not PBQ, although each of its
  fibres is split.

### MS.2.2 Dagger sections as generic and local intersections

For affine `C` as in MS.0.1, prove, with intersections taken inside the fields `E_α`:

1. `Â_(C,K) = ⋂_(α∈C) (E_η ∩ K_α[[x_α]]₀)`;
2. `A†_(C,K) = ⋂_(α∈C̄∖C) (E†_α ∩ Â_(C,K)) = ⋂_(α∈C) (E_η ∩ K_α[[x_α]]₀) ∩ ⋂_(α∈C̄∖C) (E_η ∩ E†_α)`;
3. for a finite projective `A†_(C,K)`-module `M†`,
   `M† = ⋂_(α∈C) (M_η ∩ M_(0,α)) ∩ ⋂_(α∈C̄∖C) (M_η ∩ M†_α)` inside `M_η`

(Tsuzuki, Lemma 3.1, p. 11; Lemma 3.2, p. 12; proof of Lemma 3.33, p. 20).

Proof route. All rings in (1) are `p`-adically complete with value group `|K^×|`, so (1) reduces
modulo the maximal ideal to `k[C] = ⋂_(α∈C) (k(C) ∩ k(α)[[x_α]])`, which holds for the Dedekind domain
`k[C]`. For a boundary point choose an affine open `V ⊂ C̄` containing it in which it is cut out by
one function; split a Laurent series into its negative and nonnegative parts to identify the
overconvergence condition at that point, and glue over the finitely many boundary points by Tate
acyclicity; the second equality in (2) then follows from (1). A finite projective module is a direct
summand of a finite free one, and the intersections commute with finite sums and summands.

*Needs:* MS.0.1; PadicDifferentialEquationsAndRigidCohomology §§RD.0.38, RD.3.15, RD.3.29;
RigidAnalyticGeometry Layer 5; AlgebraicCurves Layer 2.

**Checks.**

- On `C = G_m ⊂ P¹`, the series `Σ_(n≥0) p^n x^(p^n)` lies in `Â_(C,K)`, in `E_η` and in `E†_0`, but not
  in `E†_∞`: in `y = 1/x` it is `Σ p^n y^(−p^n)`, and `|p^n| r^(−p^n) → ∞` for every `r < 1`. So it is not
  in `A†_(C,K)`; the boundary condition at `∞` cannot be dropped.
- For `C = A¹`, (1) reduces to `k[x] = ⋂_α (k(x) ∩ k(α)[[x_α]])`: a rational function regular at every
  closed point of `A¹` is a polynomial.
- For the rank-one free module, (3) is (2).

### MS.2.3 Interior and boundary gluing

For affine `C`, an overconvergent F-isocrystal `M†` with `M† = Γ(C, M†)`, and a generic
`(φ,∇)`-submodule `L_η ⊆ M_η`, suppose that for every `α ∈ C` there is a saturated
`(φ,∇)`-submodule `L_(0,α) ⊆ M_(0,α)` over `K_α[[x_α]]₀` and for every `α ∈ C̄ ∖ C` a
`(φ,∇)`-submodule `L†_α ⊆ M†_α` over `E†_α`, each with `E_α ⊗ (local datum) = E_α ⊗ L_η`. Prove that
there is a unique overconvergent F-subisocrystal `L† ⊆ M†` realising `L_η`, every `L_(0,α)` and every
`L†_α` (Tsuzuki, Lemmas 3.32–3.33, pp. 19–20; Lemma A.1(2), pp. 37–38).

Proof route.

1. For unit-root `L_η` with lattices at all points, the corresponding `K^σ`-representation of the
   absolute Galois group of `k(C)` is unramified on `C` and has finite local monodromy at the boundary,
   so it comes from a unit-root overconvergent F-isocrystal (supplier request
   unit-root-correspondence-perfect-base).
2. For rank one, pass to the finite unramified extension of MS.0.3 so that the fixed field has value
   group `|K^×|`, twist by a constant of the slope of `L_η` to reach slope zero, glue by step 1, untwist
   and descend by uniqueness. Tsuzuki's proof applies the unit-root step directly to a rank-one
   module, which need not be unit-root.
3. In rank one the gluing map is a Frobenius-fixed generic vector that is a section at every interior
   and boundary point after twisting by `L†^∨`, hence a dagger section by MS.2.2(3). For rank `r`,
   glue the determinant line inside `∧^r M†` and recover `L†` as the twist by its dual of the kernel of
   wedging into `∧^(r+1) M†`. Uniqueness follows from local full faithfulness.

*Needs:* MS.0.3; MS.1.4; MS.1.5; MS.2.1; MS.2.2; PadicDifferentialEquationsAndRigidCohomology
§§RD.1.40, RD.3.22, RD.3.40, RD.3.50, RD.5.4 and the supplier request
unit-root-correspondence-perfect-base.

**Checks.**

- A rank-one generic datum of slope 1 (Frobenius `q` on a constant line) must be twisted before the
  unit-root step: the constant object with Frobenius `q` has slope 1 and corresponds to no
  `K^σ`-representation.
- For `L_η = M_η` the glued object is `M†`, and for `L_η = 0` it is `0`.

### MS.2.4 PBQ sums and quotients on curves

Prove that a finite sum of PBQ subobjects of an overconvergent F-isocrystal on `C` with the same
generic maximal slope is PBQ, and that every nonzero quotient of a PBQ object is PBQ with the same
generic maximal slope (Tsuzuki, Lemma 3.30, p. 19).

Apply MS.0.10 to the generic modules; scalar extension to `E_η` is exact.

*Needs:* MS.0.10; MS.2.1; PadicDifferentialEquationsAndRigidCohomology §RD.3.37.

**Checks.**

- The sum of two copies of a PBQ object is PBQ; the sum of constant objects of slopes 1 and 0 is not.
- The constant quotient of the logarithmic object on `G_m` (the curve form of the module of MS.0.2) is
  PBQ of slope 0.

### MS.2.5 The curve PBQ filtration

Prove that every overconvergent F-isocrystal `M†` on `C` has a unique filtration by overconvergent
F-subisocrystals whose generic filtration on every nonempty affine open is the PBQ filtration of
MS.1.1, whose realisations at interior points and boundary points are the PBQ filtrations of MS.1.5
and MS.1.4, and whose grades have strictly decreasing generic maximal slopes. Every irreducible
overconvergent F-isocrystal on `C` is PBQ (Tsuzuki, Theorem 3.27 and Corollary 3.28, p. 18; proof,
pp. 20–21).

Proof route. The problem is local on `C` by full faithfulness of restriction, so take `C` affine.
MS.1.3 makes the local filtrations of MS.1.4–MS.1.5 compatible with the generic one, and MS.2.3 glues
each step; induct on the rank. Uniqueness follows from the generic uniqueness.

*Needs:* MS.1.3; MS.1.4; MS.1.5; MS.2.1; MS.2.3; PadicDifferentialEquationsAndRigidCohomology
§§RD.5.8, RD.5.112.

**Checks.**

- For the constant sum `L_1 ⊕ L_0` the filtration is `L_1 ⊂ L_1 ⊕ L_0` with grades of slopes 1, 0.
- An irreducible object has a one-step filtration.
- On proper `C`, overconvergent and convergent objects coincide and the filtration is the one of the
  generic module.

### MS.2.6 Finite étale PBQ transport

For a finite étale surjective morphism `f : C′ → C` of smooth connected curves, an overconvergent
F-isocrystal `N†` on `C` and an overconvergent F-isocrystal `M†` on `C′`, prove that `f^*N†` is PBQ
if `N†` is, and that `M†` is PBQ if `f_*M†` is (Tsuzuki, Lemma 3.31, p. 19, with the coefficients on
the correct curves).

Proof route. Over a dense affine open, lift `f` to a finite étale map of weak completions with
compatible Frobenius; the generic fields form a finite unramified extension `E_η ⊂ E_(η′)` and a
coordinate of `C` is an étale coordinate of `C′`. The generic module of `f^*N†` is `E_(η′) ⊗ N_η`, so
MS.0.8 gives `B(E_(η′) ⊗ N_η) = E_(η′) ⊗ B(N_η)`, with the same slopes. For the direct image, `f^*f_*M†`
is PBQ by the first part and surjects onto `M†`, so MS.2.4 applies. Tsuzuki's printed proof of the
first assertion reduces to the hypothesis on `N†` and its second part invokes the lemma itself; the
argument above proves the pullback directly.

*Needs:* MS.0.1; MS.0.8; MS.2.4; PadicDifferentialEquationsAndRigidCohomology §§RD.3.38, RD.3.39,
RD.3.41.

**Checks.**

- For the Artin–Schreier cover of `A¹` and `N†` the unit object, `f^*N†` is the unit object of the
  cover, and `f_*` of the unit is unit-root, hence PBQ.
- For `f` an isomorphism both assertions are tautologies.

### MS.2.7 The curve bounded quotient

If the convergent realisation `M` of `M†` on `C` is slope-filtered, prove that `M` has a canonical
maximally bounded convergent quotient `B_C(M)` with `B_C(M) ≅ ⊕_i Top(G_i)`, where `G_i` are the
convergent realisations of the grades of the curve PBQ filtration, and that its generic fibre is
`B(M_η)` (Tsuzuki, Proposition 3.29, p. 19, with grades in place of nested terms). This is a
convergent quotient; its isoclinic summands need not be overconvergent.

Use MS.1.2 locally and the unique isoclinic summands to glue the quotient maps; the assumed slope
filtration identifies the isoclinic quotients globally.

*Needs:* MS.1.2; MS.2.5; PadicDifferentialEquationsAndRigidCohomology §§RD.3.34, RD.3.45.

**Checks.**

- For `L_1 ⊕ L_0`, `B_C(M) = M`.
- For an irreducible `M†`, `B_C(M) = Top(M)`.
- The Legendre `L†` of MS.2.8 is slope-filtered only on its ordinary locus `U ⊂ C`; there it is
  irreducible, `B_U(L) = Top(L|_U)` is the slope-one quotient, and this quotient is not
  overconvergent: an overconvergent structure on it would, by full faithfulness (§RD.5.8), give a
  proper nonzero quotient of the irreducible `L†|_U`. On all of `C` the hypothesis fails at the
  supersingular points.

### MS.2.8 A two-step PBQ filtration from the Legendre family

Let `p ≡ 1 mod 4`, `C = P¹_(𝔽_p) ∖ {0, 1, ∞}`, `L†` the rank-two overconvergent F-isocrystal `H¹` of the
Legendre family `y² = x(x − 1)(x − z)`, `χ` the quadratic character of the double cover
`w² = z(z − 1)`, and `π_p` the unit root of `y² = x³ − x` for a fixed embedding `ℚ̄ ⊂ ℚ̄_p`. Prove that
there is a nonsplit extension `0 → L†(χ) → M† → O(π_p²) → 0` of overconvergent F-isocrystals on `C`,
where `O(π_p²)` is the constant line with Frobenius `π_p²`, and that its PBQ filtration is
`L†(χ) ⊂ M†` with grades of generic maximal slopes 1 and 0 (Tsuzuki §3.9, pp. 21–22).

Proof route. The space `H¹_rig(C, L†(χ))` has Frobenius slopes 0 and 2 for `p ≡ 1 mod 4`, the slope-zero
eigenvalue being `π_p²`, and its Frobenius-equivariant part classifies the extensions (supplier
request legendre-kummer-extension). `L†(χ)` is irreducible with generic maximal slope 1 and the
quotient has slope 0, so by MS.2.4–MS.2.5 the filtration has these two steps.

*Needs:* MS.2.4; MS.2.5; PadicDifferentialEquationsAndRigidCohomology §RD.6.47 and the supplier
request legendre-kummer-extension.

**Checks.**

- The grades are not isomorphic (ranks 2 and 1), so this is not a self-extension.
- For `p ≡ 3 mod 4` the slopes of `H¹_rig(C, L†(χ))` are 1 and 1, there is no unit-root eigenvalue, and
  the construction gives no extension of a constant unit-root line.
- The extension does not contradict MS.4.5: there the rank-two splitting statement concerns rank-two
  extensions with the larger slope in the subobject; here the total rank is three.

### Examples

`Σ p^n x^(p^n)` on `G_m` separates `Â_(C,K) ∩ E_η` from `A†_(C,K)`. The constant sum `L_1 ⊕ L_0` has a
two-step curve PBQ filtration. The Legendre–Kummer extension is a nonsplit rank-three object with two
PBQ grades.

### Dependencies

MS.0, MS.1; PadicDifferentialEquationsAndRigidCohomology §§RD.0.37, RD.0.38, RD.1.40, RD.1.44,
RD.3.15, RD.3.22, RD.3.29, RD.3.32, RD.3.34, RD.3.37–RD.3.41, RD.3.45, RD.3.50, RD.5.4, RD.5.8,
RD.5.112, RD.6.47 and the supplier requests unit-root-correspondence-perfect-base (MS.2.3) and
legendre-kummer-extension (MS.2.8); RigidAnalyticGeometry Layer 5; AlgebraicCurves Layers 2 and 12.

## Layer MS.3: Saturation

MS.3.1–MS.3.7 are local, over `E†` with completion `E` and `k` perfect; MS.3.8–MS.3.10 are on a smooth
connected separated `k`-scheme `X` of finite type.

### MS.3.1 Local saturation

A `(φ,∇)`-module `M†` over `E†` with `M = E ⊗ M†` is **saturated** if the composite
`M† → M → Top(M)` is injective as an `E†`-linear map (Tsuzuki, Definition 4.1, p. 22). This is a
property of the canonical map; the saturated quotient of MS.3.4 is a quotient, not an enlargement of
`M†` inside `M`.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.1.41, RD.1.43.

API:

- `M†` is saturated exactly when the `E†`-kernel of `M† → Top(M)` is zero.
- If `M` is isoclinic, `M†` is saturated.
- For saturated `N†`, two morphisms `M† → N†` that agree after composing with `N† → Top(N)` are equal.
- An irreducible `M†` is saturated (Tsuzuki, Proposition 4.4, p. 22).

**Checks.**

- An isoclinic rank-one module is saturated.
- The zero module is saturated (the map from `0` is injective) and is not PBQ.
- `E†(1) ⊕ E†(0)` is not saturated: the slope-zero line lies in the kernel.

### MS.3.2 Quasi-saturation

For an isoclinic `(φ,∇)`-module `P` over `E`, an injective `E†`-linear horizontal Frobenius map
`f : N† → P` is **quasi-saturated** if `E · f(N†) = P`, that is, the `E`-linearisation `E ⊗ N† → P` is
surjective (Tsuzuki, Definition 4.3, p. 22). Its kernel can be nonzero although `f` is injective; the
definition keeps the map, not just the image lattice.

*Needs:* MS.3.1; Mathlib `LinearMap.quotKerEquivRange`.

API:

- Quasi-saturation is equivalent to surjectivity of `E ⊗ N† → P`.
- For a nonzero horizontal Frobenius map `N† → P`, its `E†`-image is a `(φ,∇)`-module over `E†` and is
  quasi-saturated in its `E`-span, which is again isoclinic (Proposition 4.4).
- For quasi-saturated `N† → P`, the induced map `Top(E ⊗ N†) → P` is an isomorphism (MS.3.5).

**Checks.**

- The inclusion `E† → E` of the unit object is quasi-saturated.
- `E† → E²` into the first coordinate is not quasi-saturated.
- For `α ∈ E ∖ E†`, the injection `(E†)² → E`, `(a, b) ↦ a + αb`, spans `E` while its `E`-linearisation
  has a one-dimensional kernel; this tests the distinction of carriers (no Frobenius structure is
  claimed for arbitrary `α`).

### MS.3.3 Pure target slope detection

Let `P` be isoclinic over `E`. Prove: if `θ† : N† → P` is injective and horizontal Frobenius, then
`λmax(E ⊗ N†) = slope(P)`; and if `θ†` has surjective `E`-linearisation, then its image `L†` is
quasi-saturated, `rank Top(E ⊗ L†) ≥ rank P`, and equality forces `Top(E ⊗ L†) ≅ P` and `L†` saturated
(Tsuzuki, Propositions 4.4–4.6, p. 22).

Restrict `θ†` to the maximally PBQ submodule of `N†` (MS.1.4): its image is a nonzero PBQ quotient of
the same maximal slope with isoclinic `E`-span, so the slopes agree. Surjectivity factors through the
top quotient, giving the inequality, and equality makes that factorisation an isomorphism.

*Needs:* MS.0.10; MS.1.4; MS.3.1; MS.3.2.

**Checks.**

- The injectivity hypothesis cannot be dropped: for `N† = E†(1) ⊕ E†(0)` and `P = E(0)`, the
  projection onto the second summand is not injective and `λmax(N) = 1 ≠ 0`.
- For `N† = E†`, `P = E` and `θ†` the inclusion, both conclusions hold with rank 1.

### MS.3.4 The saturated quotient

For `M†` over `E†`, define the **saturation** `Sat(M†)` as the `E†`-image of `M† → Top(M)`,
equivalently `M†/ker(M† → Top(M))`, with its induced `(φ,∇)`-structure and the canonical surjection
`M† → Sat(M†)` (Tsuzuki, Proposition 4.7 and Definition 4.8, p. 22). Its `E`-realisation can have rank
larger than `Top(M)`; nevertheless its top quotient is canonically `Top(M)` and it is saturated.

*Needs:* MS.0.4; MS.3.2; Mathlib `LinearMap.quotKerEquivRange`.

API:

- `M† → Sat(M†)` is surjective with kernel exactly `ker(M† → Top(M))`.
- `Top(M) → Top(E ⊗ Sat(M†))` is the canonical isomorphism induced by the quotient map.
- `Sat(M†)` is saturated, `Sat(Sat(M†)) = Sat(M†)` compatibly with both quotient maps, and
  `Sat(M†) = M†` exactly when `M†` is saturated.

**Checks.**

- For isoclinic `M`, `Sat(M†) = M†`.
- `Sat(0) = 0`.
- `Sat(E†(1) ⊕ E†(0)) = E†(1)`; an "enlargement" keeping both summands is the wrong construction.

### MS.3.5 The quasi-saturated rank theorem and local irreducibility

Prove: a quasi-saturated `N† → P` with `P` isoclinic is saturated and `Top(E ⊗ N†) → P` is an
isomorphism; and a `(φ,∇)`-module over `E†` is irreducible if and only if it is PBQ, saturated, and its
top quotient is irreducible (Tsuzuki, Proposition 4.9 and Corollary 4.10, p. 23).

Proof route. MS.0.4 gives `rank Top(E ⊗ N†) = rank P` and the slope equality, so the surjection
`Top(E ⊗ N†) → P` is an isomorphism. For an irreducible module, a nonzero quotient of its top receives
an injective map from it with nonzero image, which is quasi-saturated, so the quotient is the whole
top; PBQ follows from MS.1.4. Conversely, a nonzero submodule has the full maximal slope by MS.3.3,
and the quotient would have smaller maximal slope, contradicting PBQ unless it is zero.

*Needs:* MS.0.4; MS.1.4; MS.3.2; MS.3.3; MS.3.4.

**Checks.**

- For `k = 𝔽_q` and `K = W(𝔽_q)[1/p]`, the module `(E†)²` with zero connection and Frobenius matrix
  `[[1, 1], [0, 1]]` (for `φ(t) = t^q`) is a nonsplit extension of the unit by the unit: a splitting
  would reduce to `c^q − c = 1` with `c ∈ k((t))`, which has no solution. It is unit-root, hence bounded
  and PBQ, saturated because isoclinic, and its top is itself and reducible; so it is reducible, as the
  criterion predicts.
- `E†(1) ⊕ E†(0)` is not saturated, and not PBQ.
- An isoclinic irreducible module satisfies all three conditions.

### MS.3.6 Local graded recovery

Let `M†`, `N†` over `E†` have PBQ filtrations with grades `G_i(M†)`, `G_j(N†)`, and let
`h : B(N) → B(M)` be an isomorphism of `(φ,∇)`-modules over `E`. Prove that the two filtrations have
the same length `r` and that there is a unique isomorphism
`⊕_i Sat(G_i(N†)) → ⊕_i Sat(G_i(M†))` inducing `h` on the top quotients of the grades (Tsuzuki,
Theorem 4.11, p. 23, with grades).

Proof route. By MS.1.2, `h` matches the isoclinic summands of distinct slopes, so reduce to one PBQ
grade with saturated `M†`, `N†`. Let `L†` be the image of `M† ⊕ N† → Top(M)`, `(m, n) ↦ m + h(n)`; it is
PBQ, quasi-saturated in `Top(M)`, so `rank Top(E ⊗ L†) = rank Top(M)` by MS.3.5, and the quotient
`L†/M†` has smaller maximal slope, hence is zero by MS.0.10. Likewise `L† = N†`, which identifies
`N† = M†` inside `Top(M)`. Uniqueness follows from saturation.

*Needs:* MS.0.10; MS.1.2; MS.1.4; MS.3.4; MS.3.5.

**Checks.**

- For `M† = N† = E†(1) ⊕ E†(0)` and `h` the identity, the recovered map is the identity of
  `E†(1) ⊕ E†(0) = Sat(G_1) ⊕ Sat(G_2)`.
- Using the nested terms `P_i` in place of the grades would pair the top of `P_2` (slope 1) with the
  slope-zero summand of `B`, which has the wrong slope.

### MS.3.7 Local reconstruction

Let `h : Top(N) → Top(M)` be a morphism of `(φ,∇)`-modules over `E`. Prove: if `M†`, `N†` are
irreducible and `h ≠ 0`, or if they are PBQ and saturated and `h` is an isomorphism, there is a unique
isomorphism `g† : N† → M†` over `E†` inducing `h` (Tsuzuki, Theorem 4.2, p. 22; proof, p. 23).

In the irreducible case the tops are irreducible by MS.3.5, so `h` is an isomorphism; apply MS.3.6 to
the single PBQ grade, using that saturated modules equal their saturations.

*Needs:* MS.3.5; MS.3.6.

**Checks.**

- For `h = 0` with irreducible `M†`, `N†` there is no isomorphism inducing `h`: the nonvanishing
  hypothesis is necessary.
- For `M† = N†` isoclinic and `h` the identity, `g† = id`.
- Saturation cannot be dropped in the second case: for `N†` the logarithmic module over `E†` (PBQ, not
  saturated) and `M† = Sat(N†)`, the unit object, both tops are the unit and `h = id` is an
  isomorphism, but `N†` has rank 2 and `M†` rank 1.

### MS.3.8 Saturation on varieties

For a smooth connected separated `k`-scheme `X` of finite type and an overconvergent F-isocrystal
`M†`, choose a dense affine open `U` on which `M` is slope-filtered, with a smooth lift and Frobenius
lift. `M†` is **saturated** if `Γ(U, M†) → Γ(U, Top(M|_U))` is injective for every such `U` (Tsuzuki,
Definition 5.1, Proposition 5.2, Lemma 5.3, Corollary 5.4 and Remark 5.7, pp. 24–25). Prove that one
such `U` suffices and that the condition is invariant under restriction to dense opens.

Proof route. On a smaller dense affine `U′ ⊆ U`, `Γ(U′, M†) = A†_(U′,K) ⊗ Γ(U, M†)`, and the kernel of
the map to the top is a submodule stable under connection and Frobenius whose vanishing is detected
after localising the finite projective module; full faithfulness of restriction to dense opens
transports the kernel.

*Needs:* MS.3.1; PadicDifferentialEquationsAndRigidCohomology §§RD.3.29, RD.3.32, RD.3.45, RD.5.112.

API:

- Injectivity on one dense affine slope-filtered open is equivalent to saturation.
- Saturation is preserved and reflected by restriction to a dense open.
- On a curve, saturation is equivalent to injectivity of dagger sections over an affine open into the
  generic maximal-slope quotient.

**Checks.**

- The constant rank-one object is saturated on every smooth connected `X`.
- The zero object is saturated.
- The constant sum of slopes 1 and 0 is not saturated, on every nonempty affine open.

### MS.3.9 Saturation transport

On a smooth connected `X`, prove that every irreducible overconvergent F-isocrystal is saturated, and
that saturation is preserved by finite étale pullback and pushforward, by finite coefficient extension
with compatible Frobenius, and by replacing `σ` with a positive power; on a curve PBQ and saturation
remain independent properties (Tsuzuki, Corollary 5.5 and Proposition 5.6, pp. 25–26; the pushforward
assertion uses exactness of finite étale pushforward, which Proposition 5.6 does not state).

On a dense affine open the kernel of the top map is an overconvergent F-subisocrystal (MS.3.8), so
irreducibility excludes a nonzero proper kernel. For finite étale maps use affine lifts and the
finite projective direct-image decomposition; finite coefficient extension is faithfully flat;
Frobenius iteration multiplies all slopes by the same positive factor.

*Needs:* MS.3.8; PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.3.38, RD.3.39, RD.3.41.

**Checks.**

- On `G_m`, the logarithmic object (the curve form of the module of MS.0.2: sub of slope `−1`, unit
  quotient, nonsplit) is PBQ and not saturated; the Legendre–Kummer object of MS.2.8 is saturated and
  not PBQ (MS.4.5, third case); `O(1) ⊕ O(0)` is neither. The two properties are independent.
- An irreducible object is saturated, consistent with MS.4.3.

### MS.3.10 The canonical saturated quotient on varieties

For any overconvergent F-isocrystal `M†` on a smooth connected `X`, construct a saturated quotient
`M† → Sat_X(M†)` whose restriction to a dense affine slope-filtered open is the image in `Top(M)`;
when `M` is slope-filtered on `X` it induces an isomorphism on `Top`. It is unique up to the unique
isomorphism compatible with the quotient maps and needs no global slope filtration (Tsuzuki,
Proposition 5.8 and Definition 5.9, pp. 25–26).

Take the affine image quotient of MS.3.4 on a dense affine open, extend it to `X` because the
overconvergent restriction to a dense open is closed under subquotients, and glue by uniqueness of
the kernel.

*Needs:* MS.3.4; MS.3.8; PadicDifferentialEquationsAndRigidCohomology §§RD.3.15, RD.3.22, RD.5.112.

API:

- There is a canonical surjection `M† → Sat_X(M†)`.
- On every dense slope-filtered open the induced map of top quotients is an isomorphism.
- Two image quotients with the same kernel have a unique comparison isomorphism commuting with the
  maps from `M†`.

**Checks.**

- `Sat_X` of a rank-one object is the object itself.
- `Sat_X(0) = 0`.
- For the constant sum of slopes 1 and 0, `Sat_X` has rank one and the quotient map is not an
  inclusion.

### Examples

`E†(1) ⊕ E†(0)` is neither PBQ nor saturated and its saturation is `E†(1)`. A nonsplit extension of the
unit by the unit is PBQ and saturated with reducible top. The constant sum of slopes 1 and 0 on a curve
is not saturated on any affine open.

### Dependencies

MS.0, MS.1; PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.1.41, RD.1.43, RD.3.15,
RD.3.22, RD.3.29, RD.3.32, RD.3.38, RD.3.39, RD.3.41, RD.3.45, RD.5.112; Mathlib
`LinearMap.quotKerEquivRange`.

## Layer MS.4: Curve reconstruction

`C` is a smooth connected curve over the perfect field `k`. This layer proves Tsuzuki's rank theorem
for dagger sections inside an isoclinic convergent quotient and the specified-map theorem on curves.

### MS.4.1 Boundary PBQ kernel gluing

In the situation of MS.4.2 (affine `C`, isoclinic convergent `P`, overconvergent `N†` with
slope-filtered `N`, a surjection `N → P` injective on dagger sections), suppose
`rank Top(N) > rank P`. Let `H = ker(N → P)` and let `L` be its maximally PBQ convergent subobject,
which has the same maximal slope. At each boundary point `α ∈ C̄ ∖ C` let `L†_α` be the maximally PBQ
submodule of the `E†_α`-kernel of `N†_α → P_α`. Prove that `E_α ⊗ L†_α ≅ L_α` at every boundary point and
that these local data glue to a nonzero overconvergent F-subisocrystal of `N†` whose convergent
realisation lies in `H` (Tsuzuki, proof of Proposition 6.1, Claims (1)–(3), pp. 26–27).

Proof route. MS.3.5 applied to the boundary image computes the equality of the ranks of the
maximal-slope kernels; flatness gives an injection of the local PBQ kernel into the convergent one;
their top quotients agree, and a nonzero cokernel would be a PBQ quotient of the same maximal slope
contradicting the strict rank inequality. MS.2.3 glues, with the interior data supplied by the curve
PBQ filtration of the convergent kernel. No saturation of the kernels is assumed.

*Needs:* MS.0.10; MS.2.3; MS.2.5; MS.3.5; PadicDifferentialEquationsAndRigidCohomology §RD.1.37.

**Checks.**

- If `rank Top(N) = rank P` the hypothesis is not met and no subobject is produced.
- For proper `C` there are no boundary points; the argument is replaced by full faithfulness (MS.4.2).

### MS.4.2 The curve rank theorem

Let `P` be an isoclinic convergent F-isocrystal on `C`, `N†` an overconvergent F-isocrystal with
slope-filtered `N`, and `N → P` a surjection of convergent F-isocrystals. If the induced map
`Γ(U, N†) → Γ(U, P)` of sections is injective for one dense affine open `U`, prove that
`λmax(N) = slope(P)` and `rank Top(N) = rank P` (Tsuzuki, Proposition 6.1, pp. 26–27).

Proof route. The maximally PBQ subobject of `N†` maps nontrivially to `P`, so MS.2.4 fixes its maximal
slope. Surjectivity gives `rank Top(N) ≥ rank P`; if strict, MS.4.1 glues a nonzero overconvergent
subobject killed in `P`, contradicting injectivity on sections. For proper `C` the overconvergent and
convergent categories coincide and slope separation gives the claim directly.

*Needs:* MS.2.4; MS.4.1; PadicDifferentialEquationsAndRigidCohomology §RD.1.37.

**Checks.**

- For `N† = P†` isoclinic and the identity map, both sides are equal.
- The injectivity hypothesis cannot be dropped: for `N† = O(1) ⊕ O(0)` constant and `P = O(0)`, the
  projection kills `O(1)` and `λmax(N) = 1 ≠ 0`.
- For `N†` the logarithmic object on `G_m` and `P = Top(N)` the unit, the map on sections has kernel the
  slope `−1` line, so the hypothesis fails although the ranks agree; the theorem is an implication.

### MS.4.3 The curve irreducibility criterion

Prove that an overconvergent F-isocrystal `M†` on `C` is irreducible if and only if it is PBQ,
saturated, and `Top(M|_U)` is irreducible for every dense open `U` on which `M` is slope-filtered; if
`M` is slope-filtered on `C` the last condition can be checked on `C` (Tsuzuki, Proposition 6.2, p. 27).

Proof route. For irreducible `M†`, PBQ is MS.2.5 and saturation MS.3.9; a nonzero quotient of its top
receives an injective map on sections, so MS.4.2 makes it the whole top. Conversely, a nonzero
subobject injects into the irreducible top by saturation and has the full maximal slope; the quotient
would have smaller maximal slope, contradicting PBQ by MS.2.4 unless it is zero.

*Needs:* MS.2.4; MS.2.5; MS.3.8; MS.3.9; MS.4.2.

**Checks.**

- A rank-one object satisfies all three conditions and is irreducible.
- `O(1) ⊕ O(0)` fails PBQ and saturation.
- The logarithmic object on `G_m` is PBQ with irreducible top (the unit) but not saturated, and is
  reducible.

### MS.4.4 Curve graded recovery

For overconvergent `M†`, `N†` on `C` with slope-filtered realisations and a convergent isomorphism
`h : B_C(N) → B_C(M)` of their curve bounded quotients (MS.2.7), prove that the curve PBQ filtrations
have the same length `r` and that there is a unique overconvergent isomorphism
`⊕_i Sat_C(G_i(N†)) → ⊕_i Sat_C(G_i(M†))` inducing `h` on the top quotient of each grade (Tsuzuki,
Theorem 6.4, p. 27, with grades, and with `h` a convergent map between the global convergent bounded
quotients).

Proof route. MS.2.7 identifies the bounded quotients with the sums of grade tops. For each pair of
grades of the same slope, take the overconvergent image of the sum map into the identified isoclinic
quotient, apply MS.4.2, and use MS.2.4 to force both saturated grades to equal the image. Uniqueness
follows from saturation (MS.3.8).

*Needs:* MS.2.4; MS.2.7; MS.3.10; MS.4.2.

**Checks.**

- For `M† = N† = O(1) ⊕ O(0)` and `h` the identity, the recovered isomorphism is the identity.
- The target of `h` is the global convergent quotient `B_C(M)`, not the generic fibre `B(M_η)`, and `h`
  is convergent, not overconvergent.

### MS.4.5 Extensions of irreducible objects

Let `0 → L† → M† → N† → 0` be an exact sequence of overconvergent F-isocrystals on `C` with `L†`, `N†`
irreducible of generic maximal slopes `a`, `b`. Prove: if `a < b`, then `M†` is not saturated, and it is
PBQ exactly when the sequence does not split; if `a = b`, then `M†` is PBQ and saturated with reducible
top, and the sequence splits exactly when the induced extension of tops splits; if `a > b`, the
sequence is the PBQ filtration of `M†`, `M†` is saturated exactly when the sequence does not split, and
if `M†` has rank two the sequence splits (Tsuzuki, Example 6.3, p. 27).

Proof route. MS.4.3 identifies the saturated PBQ pieces; MS.2.4 and the kernels of the top maps
handle each slope order, and full faithfulness detects splitting. In the last case with rank two, both
pieces have rank one, the convergent extension splits by slope separation (MS.0.6, first case, on a
slope-filtered dense open, then full faithfulness of dense restriction), and full faithfulness returns
an overconvergent splitting.

*Needs:* MS.0.6; MS.2.4; MS.2.5; MS.4.3; PadicDifferentialEquationsAndRigidCohomology §§RD.1.37,
RD.5.8, RD.5.112.

**Checks.**

- The logarithmic object on `G_m` is the first case (`a = −1 < b = 0`), nonsplit, PBQ and not
  saturated.
- The Legendre–Kummer object of MS.2.8 is the third case (`a = 1 > b = 0`), nonsplit and of rank
  three, hence saturated and not PBQ; the rank-two splitting statement does not apply to it.
- No splitting is asserted for higher-rank extensions in the third case.

### MS.4.6 The specified-map theorem on curves

Let `M†`, `N†` be overconvergent F-isocrystals on `C` with slope-filtered realisations `M`, `N`, and
`h : Top(N) → Top(M)` a morphism of convergent F-isocrystals. Suppose either (i) `M†` and `N†` are
irreducible and `h ≠ 0`, or (ii) `M†` and `N†` are PBQ and saturated and `h` is an isomorphism. Prove that
there is a unique isomorphism `g† : N† → M†` of overconvergent F-isocrystals inducing `h` on the
maximal-slope quotients (Tsuzuki, Corollary 6.5, p. 28; Theorem 1.3, p. 2). This is the dual form of
the strong minimal slope conjecture on curves (Tsuzuki, Conjecture 1.2).

In case (i), MS.4.3 makes the tops irreducible, so `h` is an isomorphism; each object has one PBQ grade
and equals its saturation, so MS.4.4 gives `g†`. Uniqueness follows from saturation.

*Needs:* MS.4.3; MS.4.4.

**Checks.**

- For proper `C`, an irreducible object with a slope filtration is isoclinic (`Top(M) = M`), and the
  theorem reduces to full faithfulness.
- For `M† = N†` and `h` the identity, `g† = id`; for `h = c·id` with `c ∈ K^σ` nonzero, `g† = c·id`.
- In case (ii) saturation cannot be dropped: the logarithmic object on `G_m` and the unit object have
  isomorphic tops and are PBQ, but are not isomorphic.

### MS.4.7 The isoclinic quotient formulation

Prove that MS.4.6 holds with the slope-filtration hypotheses replaced by convergent surjections
`N → Q_N` and `M → Q_M` onto isoclinic objects such that, at every point of `C`, every slope of the
kernel is strictly smaller than the slope of the quotient, with `h : Q_N → Q_M` and the same
alternatives (i) and (ii) (Tsuzuki, Remark 6.6(2), p. 28).

On a dense open where both objects are slope-filtered the given quotients are the maximal-slope
quotients by slope separation; apply MS.4.6 there and extend the isomorphism to `C` by full
faithfulness of dense restriction and closure under subquotients; faithfulness identifies the induced
quotient map with `h` on all of `C`.

*Needs:* MS.4.6; PadicDifferentialEquationsAndRigidCohomology §§RD.3.45, RD.5.112.

**Checks.**

- If `M` is slope-filtered on `C`, `Q_M = Top(M)` and the statement is MS.4.6.
- Without the pointwise strict inequality the quotient need not be the maximal-slope quotient: for a
  constant `O(1) ⊕ O(0)`, the quotient `O(0)` has a kernel of larger slope.

### MS.4.8 The minimal-slope form

For irreducible overconvergent F-isocrystals `M†`, `N†` on `C` with slope-filtered realisations,
prove that every nonzero convergent morphism `a : S_min(M) → S_min(N)` is induced by a unique
overconvergent isomorphism `M† → N†`; `Top(M^∨) = S_min(M)^∨` and duality negates slopes (Tsuzuki,
Conjectures 1.1–1.2, pp. 1–2, and Corollary 6.5, p. 28; Kedlaya's minimal slope conjecture in its
strong form on curves).

Dualise `a` to `Top(N^∨) → Top(M^∨)`, apply MS.4.6 to the irreducible duals to obtain
`N†^∨ → M†^∨`, dualise back and identify double duals; functoriality of duality gives the induced map
and uniqueness.

*Needs:* MS.4.6; PadicDifferentialEquationsAndRigidCohomology §§RD.1.37, RD.3.37.

**Checks.**

- For rank-one objects `S_min = Top = M`, and the statement is full faithfulness of restriction.
- A map in the opposite direction `S_min(N) → S_min(M)` gives an isomorphism `N† → M†` by the same
  argument with the roles exchanged; the direction of the lift follows the direction of `a`.
- The dual of `O(1)` (slope `−1`) is `O(−1)` (slope `1`): duality negates slopes and exchanges
  `S_min` with `Top`.

### Examples

The logarithmic object on `G_m` is PBQ, not saturated, and is not determined by its top. The
Legendre–Kummer object is saturated and not PBQ. For irreducible objects on a curve, the top or the
minimal piece determines the object together with the isomorphism.

### Dependencies

MS.0, MS.2, MS.3; PadicDifferentialEquationsAndRigidCohomology §§RD.1.37, RD.3.37, RD.3.45, RD.5.8,
RD.5.112.

## Layer MS.5: Dagger hulls and minimal slopes

`X` is a smooth connected separated `k`-scheme of finite type, `k` perfect. An `F^n`-isocrystal is an
isocrystal with Frobenius structure for `σ^n` (`n ≥ 1`). A convergent `F^n`-isocrystal is
**dagger-extendable** if it is the convergent realisation of an overconvergent one; by full
faithfulness (PadicDifferentialEquationsAndRigidCohomology §RD.5.8) the overconvergent structure is
unique up to unique isomorphism. MS.5.4–MS.5.8 work over D'Addezio's generic field of the affine line
(Conventions 1).

### MS.5.1 The dagger hull

For a convergent sub-`F^n`-isocrystal `N ⊆ M`, where `M` is dagger-extendable, define the **dagger
hull** `Hull†_M(N)` as the smallest dagger-extendable convergent subobject of `M` containing `N`
(D'Addezio, Definition 4.1.1 and footnote 6, p. 11; Definition 1.2.1, p. 3). Prove that it exists:
the family of dagger-extendable subobjects containing `N` contains `M`, is closed under finite
intersections by exactness and full faithfulness of restriction, and a member of minimal rank lies in
every member. The ambient `M` is part of the data.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.3.37, RD.5.8.

API:

- `N ⊆ Hull†_M(N) ⊆ M`, and `Hull†_M(N)` is dagger-extendable as a subobject of `M`.
- If `N ⊆ L ⊆ M` with `L` dagger-extendable, then `Hull†_M(N) ⊆ L`.
- `Hull†_M(Hull†_M(N)) = Hull†_M(N)`, and `Hull†_M(N) = N` exactly when `N` is dagger-extendable.
- Restriction to a dense open commutes with hulls of isoclinic subobjects (D'Addezio, Lemma 4.1.7).

**Checks.**

- `Hull†_M(0) = 0`.
- An overconvergent subobject of `M†` is its own hull.
- For an irreducible rank-two overconvergent F-isocrystal on a curve that is generically ordinary,
  restricted to its ordinary locus, the hull of the unit-root line is the whole rank-two object: the
  hull is not the identity on arbitrary convergent subobjects.

### MS.5.2 The minimal slope property

For a dagger-extendable convergent `F^n`-isocrystal `M` on `X` with constant Newton polygon, `MS(M)`
is the statement that `S_min(N) = S_min(Hull†_M(N))` as subobjects of `M` for every convergent
sub-`F^n`-isocrystal `N ⊆ M`; `MS(X)` is `MS(M)` for every `n > 0` and every such `M` on `X`
(D'Addezio, Notation 4.1.2, p. 11; Theorem 4.1.3, p. 12). Constant Newton polygons make all slope
filtrations involved exist.

*Needs:* MS.5.1; PadicDifferentialEquationsAndRigidCohomology §RD.3.45.

API:

- For isoclinic `N`, `MS(M)` says that `N` is the first slope step of its hull.
- A dagger-extendable `N` satisfies the equality tautologically.
- The equality is an equality of subobjects of `M`, including the inclusion into `M`, not an equality
  of ranks or slopes.

**Checks.**

- `N = 0` gives two zero subobjects.
- If `M` is isoclinic, every subobject and its hull have that slope; `MS(M)` still demands equality of
  the subobjects `N = Hull†_M(N)` when `N` is isoclinic, which is a genuine condition.
- For the ordinary rank-two example of MS.5.1, `MS` identifies the unit-root line with `S_min` of the
  rank-two hull; it does not make the hull rank one.

### MS.5.3 Reductions of the minimal slope property

Prove that `MS(X)` reduces to `n = 1`, then to isoclinic subobjects, and can be checked on a dense
open; and that for a finite étale Galois cover `f : Y → X`, `MS(f^*M)` implies `MS(M)` for `M` on `X`,
and `MS(f_*M)` implies `MS(M)` for `M` on `Y` (D'Addezio, Lemmas 4.1.4–4.1.8, pp. 12–13).

Proof route. Induce an `F^n`-object to `⊕_(i<n) F^(i*)M` with cyclic Frobenius; its first slope step is
`⊕_(i<n) F^(i*)S_min(N)` (D'Addezio prints `N` in place of `S_min(N)` in the proof of Lemma 4.1.4).
Induct through the slope grades of `N`, passing to the quotient of the hull by the hull of the
penultimate step. Dense-open full faithfulness with closure under subquotients identifies hulls under
restriction; under a Galois cover, the intersection of the translates of a hull descends, and
`f^*f_*M = ⊕_g g^*M` handles the direct image.

*Needs:* MS.5.1; MS.5.2; PadicDifferentialEquationsAndRigidCohomology §§RD.3.41, RD.3.50, RD.5.112.

**Checks.**

- For `n = 1` the induction step is the identity.
- For the trivial cover `f = id` both implications are tautologies.

### MS.5.4 The dual image model of the hull

Over D'Addezio's generic pair `(E†, E)` of the affine line, let `N ⊆ M = E ⊗ M†` be `(φ,∇)`-modules.
Define `Q†` as the `E†`-image of `(M†)^∨ → M^∨ → N^∨`. Its `E`-linearisation `E ⊗ Q† → N^∨` is
surjective and need not be injective; dualising gives `N ⊆ (E ⊗ Q†)^∨ ⊆ M`, and the middle term is
the dagger hull of `N` in `M` (D'Addezio, Construction 4.2.3 and Lemma 4.2.4, p. 14).

Every dagger-extendable subobject containing `N` gives a dual quotient of `(M†)^∨` through which the
map to `N^∨` factors, so the image factors through it; dualising proves minimality.

*Needs:* MS.5.1; Mathlib `LinearMap.quotKerEquivRange`; PadicDifferentialEquationsAndRigidCohomology
§RD.1.37.

API:

- `Q†` is the `E†`-image of the restriction map on duals.
- `E ⊗ Q† → N^∨` is surjective; its kernel is part of the data.
- `(E ⊗ Q†)^∨` identifies with `Hull†_M(N)`, compatibly with both inclusions.

**Checks.**

- `N = 0` gives `Q† = 0` and hull zero.
- `N = M` gives `Q† = (M†)^∨` and hull `M`.
- An `E†`-injection into `N^∨` can acquire a kernel after `E`-linearisation (MS.3.2); replacing
  `E ⊗ Q†` by its image in `N^∨` would give `N` itself, the wrong answer when `N` is not
  dagger-extendable.

### MS.5.5 Generic minimal slopes

Over D'Addezio's generic pair, for `(φ,∇)`-modules `N ⊆ M` over `E` with `M` dagger-extendable, prove
`S_min(N) = S_min(Hull†_M(N))` (D'Addezio, Proposition 4.2.2, p. 14; Lemma 4.2.7 and §4.2.8, p. 15).
The residue field is `k(t)`, not `k((t))`.

Proof route. By the generic analogue of MS.5.3 take `N` isoclinic and `M = Hull†_M(N)`. MS.5.4 gives
an `E†`-injection of the dagger dual into `N^∨` with surjective linearisation; MS.0.4 (generic case)
identifies the maximal slope of `M^∨` with the slope of `N^∨` and bounds `rank Top(M^∨) ≤ rank N`.
Dualising, `N ⊆ S_min(M)` with `rank S_min(M) ≤ rank N`, so they coincide.

*Needs:* MS.0.4; MS.5.3; MS.5.4; PadicDifferentialEquationsAndRigidCohomology §§RD.0.9, RD.1.72.

**Checks.**

- If `N` is dagger-extendable, `Hull† = N` and the statement is trivial.
- If `N = M`, both sides are `S_min(M)`.

### MS.5.6 Affine integral models

For `n ≥ 1` let `A_n` be the image of `W(k)⟨u_1, …, u_n⟩ → W(k)⟨u⟩`, `u_i ↦ ū_i = p u^i`; let `B_n` be the
image in `O_E` of the localisation of `A_n[t]` at `(p, t, ū_1, …, ū_n)`, with `u = 1/t`; let
`B′_n = A_n[t]/(ū_1 t − p)` and `B̃_n` its localisation at the same ideal. Prove that `B̃_n → B_n` is
surjective with kernel killed by `p^(n−1)`, that `colim_n A_n[1/p] = K⟨u⟩†`, and that
`colim_n B̂_n[1/p] = colim_n (B̃_n)^∧[1/p] = E†` (D'Addezio, §4.2.9, pp. 15–16).

The relations `ū_i t^i = p` hold in `B_n`, and `p^(i−1)(ū_i t^i − p)` is a multiple of `ū_1 t − p`;
comparing radii of convergence of finitely many generators identifies the colimits.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.0.1, RD.0.38.

API:

- `A_n → W(k)⟨u⟩` sends `ū_i` to `p u^i` and respects their multiplicative relations, such as
  `ū_1² = p ū_2`.
- The kernel of `B̃_n → B_n` is annihilated by `p^(n−1)`; for `n = 1` the map is an isomorphism.
- After inverting `p` and completing, the colimits give the overconvergent fields `K⟨u⟩†` and `E†`,
  not their completions.

**Checks.**

- For `n = 1`, the only relation is `ū_1 t = p` and `B̃_1 = B_1`.
- `u` is not in `A_1`, while `p u` is; replacing `A_n` by `W(k)⟨u⟩` would give the convergent ring
  `K⟨u⟩` in the colimit instead of `K⟨u⟩†`.
- At `n = 2`, `p(ū_2 t² − p) = ū_1² t² − p² = (ū_1 t − p)(ū_1 t + p)` vanishes in `B′_2`, without
  imposing `ū_2 t² = p` as a defining relation.

### MS.5.7 Bounded torsion and generic tensor injection

Prove: if an `A_n`-module `T` has `p`-power torsion killed by `p^s`, then `Tor_1^(A_n)(B′_n, T)` is
killed by `p^s`; and the canonical map `(W⟨u⟩ ⊗̂_(A_n) B̃_n)^∧[1/p] → E` is injective (D'Addezio,
Lemmas 4.2.10–4.2.11, p. 16). Neither statement says that an arbitrary injection of finite free
modules stays injective after this completed tensor product without a torsion bound on its cokernel.

Use the free resolution of `B′_n` by multiplication by `ū_1 t − p`; after inverting `p`, `B′_n` is a
localisation, so the `Tor` is `p`-power torsion. Modulo `p^e` the kernel of the tensor map is generated
by `ut − 1` and killed by `p`; pass to the limit and invert `p`.

*Needs:* MS.5.6.

**Checks.**

- For `T` torsion free (`s = 0`) the `Tor` vanishes.
- For `T = A_n/p^s` all of `T[t]` is killed by `p^s`, so the bound is immediate; the content of the
  lemma is for modules with a torsion-free part, such as the cokernels in MS.5.8.

### MS.5.8 The affine–generic hull comparison

For `(φ,∇)`-modules `N ⊆ M` over `K⟨u⟩` with `M` dagger-extendable with constant slopes, prove that the
scalar extension of `Hull†_M(N)` to `E` along `u ↦ 1/t` equals `Hull†_(E⊗M)(E ⊗ N)` (D'Addezio,
Proposition 4.2.12, pp. 16–17).

Proof route. By the affine analogue of MS.5.4 it suffices to show that `Q† ⊗_(K⟨u⟩†) E† → P ⊗_(K⟨u⟩) E`
is injective for the dagger image `Q† ↪ P = N^∨`. Write `Q†` and `P` through integral models over `A_n`
and `W⟨u⟩` (MS.5.6) and apply MS.5.7: injectivity follows once the cokernel of each integral model of
`Q† → P` has bounded `p`-power torsion. D'Addezio derives this bound from a compactness argument for
an arbitrary injection into `W⟨u⟩`-modules, which fails already for `A_n ⊂ W⟨u⟩` (`ū_n^j` is not in
`pA_n` but has norm `p^(−j)`, and `W⟨u⟩/A_n` has unbounded `p`-power torsion); a proof must use the
Frobenius structure of the image `Q†` to obtain the bound. The curve theorem MS.5.10 does not use this
comparison.

*Needs:* MS.5.4; MS.5.6; MS.5.7.

**Checks.**

- For `N` dagger-extendable both sides are `E ⊗ N`.
- The inclusion `A_1 ⊂ W⟨u⟩` has cokernel with elements `u^j` of `p`-power torsion order `p^j`
  (`p^j u^j ∈ A_1`); no uniform torsion bound holds for arbitrary injections.

### MS.5.9 Étale affine-line reduction

For a smooth connected curve `C` over the perfect field `k`, prove that the minimal slope property for
all dagger-extendable objects on `A¹_k` implies `MS(C)` (D'Addezio, proof of Theorem 4.2.13, p. 17;
Kedlaya 2005, Theorem 1, p. 1).

`C` contains a dense open affine `U` with a finite étale morphism `U → A¹_k`
(PadicDifferentialEquationsAndRigidCohomology §RD.5.7); pass to a finite étale Galois closure `W → A¹`
of `U → A¹` and apply MS.5.3: `MS` on `A¹` gives `MS` for the direct image from `W`, hence on `W`, hence
on `U`, hence on `C`.

*Needs:* MS.5.3; PadicDifferentialEquationsAndRigidCohomology §RD.5.7.

**Checks.**

- Over `k = 𝔽_p` the finite étale map need not have tame ramification at infinity: the Artin–Schreier
  map `y ↦ y^p − y` from `A¹` to `A¹` is finite étale and wildly ramified at `∞`.
- For `C = A¹` the reduction is the identity.

### MS.5.10 Minimal slopes on curves

Prove that every smooth curve `C` over a perfect field satisfies `MS(C)`: for every `n > 0`, every
dagger-extendable convergent `F^n`-isocrystal `M` with constant Newton polygon and every convergent
sub-`F^n`-isocrystal `N`, `S_min(N) = S_min(Hull†_M(N))` (D'Addezio, Theorem 4.2.13, p. 17, and the
introduction to §4.2, p. 13; Tsuzuki, Proposition 6.1, pp. 26–27).

Proof route (through the curve rank theorem). By MS.5.3 take `N` isoclinic and `M = Hull†_M(N)` with
overconvergent `M†`. On a dense affine open, the kernel of the map of dagger sections `Γ(M†^∨) → Γ(N^∨)`
is a finitely generated module stable under connection and Frobenius; by Dwork–Berthelot it is an
overconvergent F-subisocrystal of `M†^∨`, and minimality of the hull forces it to vanish. The map
`M^∨ → N^∨` is surjective. MS.4.2 gives `λmax(M^∨) = slope(N^∨)` and `rank Top(M^∨) = rank N`; dualising,
`N = S_min(M)`. The generic route of MS.5.5 with MS.5.8–MS.5.9 is a second proof once MS.5.8 is
established.

*Needs:* MS.4.2; MS.5.3; MS.5.4; PadicDifferentialEquationsAndRigidCohomology §§RD.1.37, RD.3.16,
RD.3.31.

**Checks.**

- For the ordinary rank-two example of MS.5.1 restricted to its ordinary locus, `N` the unit-root line:
  the hull is the whole object and `S_min` of it is `N`, consistent with the theorem.
- For proper `C` every convergent object with Frobenius structure is dagger-extendable, so the hull is
  `N` and the statement is trivial.

### MS.5.11 Docile Lefschetz full faithfulness

Let `X̄` be a smooth connected projective variety of dimension at least 2 over the perfect field `k`,
`Z ⊂ X̄` a strict normal crossings divisor, `X = X̄ ∖ Z`, and `C̄ ⊂ X̄` a smooth curve that is a complete
intersection of ample divisors in good position with respect to `Z` (transverse to every stratum);
put `C = C̄ ∩ X`. Prove that restriction from docile overconvergent isocrystals on `X` (unipotent
monodromy along `Z`) to docile overconvergent isocrystals on `C` is fully faithful, with and without
Frobenius structures (D'Addezio, Theorem 4.4.2, p. 19; Abe–Esnault, Corollary 2.4 and Remark 2.5,
p. 12). Essential surjectivity is not claimed.

Internal `Hom` of docile objects is docile, `Hom(E, F) = H⁰(X, E^∨ ⊗ F)`, and the restriction of `H⁰` to
`C` is an isomorphism for docile objects (supplier request docile-curve-restriction); morphisms of
F-isocrystals are the Frobenius-fixed part.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.5.100, RD.5.103, RD.5.8 (and §RD.6.42 for
the Checks) and the supplier request docile-curve-restriction.

**Checks.**

- For docile `E`, `F`, `Hom(E, F) → Hom(E|_C, F|_C)` is bijective; for `E = F` the unit isocrystal
  (without Frobenius structure) both sides are `K`, since `X` and `C` are geometrically connected.
- For `dim X̄ = 1` the hypothesis fails; the statement is about varieties of dimension at least 2.
- Docility cannot be dropped: on `X̄ = P²` with `Z` the line at infinity, let `E` be the pullback along
  `x : A² → A¹` of the Dwork F-isocrystal (§RD.6.42), which is wildly ramified along `Z`, and let `C̄`
  be the line `x = 0`, a hyperplane meeting `Z` transversally. Then `H⁰(A², E) = 0` while `E|_C` is the
  unit object, so `H⁰` jumps from 0 to 1.

### Examples

The ordinary rank-two object illustrates a hull strictly larger than the subobject, with the minimal
slope property holding. The integral model `A_1 = W⟨pu⟩` illustrates why `W⟨u⟩` would compute the
convergent rather than the overconvergent ring.

### Dependencies

MS.0, MS.4; PadicDifferentialEquationsAndRigidCohomology §§RD.0.1, RD.0.9, RD.0.38, RD.1.37, RD.1.72,
RD.3.16, RD.3.31, RD.3.37, RD.3.41, RD.3.45, RD.3.50, RD.5.7, RD.5.8, RD.5.100, RD.5.103, RD.5.112 and
the supplier request docile-curve-restriction (MS.5.11); Mathlib `LinearMap.quotKerEquivRange`.

## Layer MS.6: Lefschetz curves and finite fields

MS.6.1–MS.6.4 work on a separated `k`-scheme `X` of finite type over the perfect field `k`; from MS.6.5
on, `k = 𝔽_q`, `K = W(𝔽_q)[1/p]`, `σ = id_K`, and `X` is smooth connected.

### MS.6.1 The Lefschetz condition

For a closed point `α` of `X` and an irreducible overconvergent F-isocrystal `M†` on `X`, the
**Lefschetz condition** `LC(X, α, M†)` asks for a smooth connected curve `C` over `k`, a morphism
`i : C → X` and a `k(α)`-rational point of `C` mapping to `α`, such that `i^*M†` is irreducible (Tsuzuki
§6.3, condition (LC), p. 28). The curve, the morphism, the rational point and the irreducibility are the
witnessing data; different objects may need different curves, and `i` need not be a closed immersion.
The coefficient form is defined in MS.6.5.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.3.19, RD.3.25.

API:

- A witness records `i : C → X` and a `k(α)`-point over `α`, not only a curve whose image contains `α`.
- The pullback `i^*M†` along a witness is irreducible.
- Witnesses for two objects at the same point need not coincide.

**Checks.**

- If `X` is itself a smooth connected curve, the identity witnesses `LC(X, α, M†)` for every
  irreducible `M†` and every closed point `α`: the inclusion `Spec k(α) → X` is a `k(α)`-rational point
  mapping to `α`.
- For a rank-one `M†`, every smooth connected curve through `α` with a `k(α)`-rational point over `α`
  is a witness, since every nonzero rank-one object is irreducible.
- Separate witnesses for `M†` and `N†` do not give one curve on which both stay irreducible; proofs
  must allow two curves.

### MS.6.2 Lefschetz rank maps

Let `M†`, `N†` on `X` have slope-filtered realisations and let `h : Top(N) → Top(M)` be a nonzero
convergent morphism. If `M†` is irreducible and `LC(X, α, M†)` holds with witness `C_M`, prove that the
maximally PBQ subobject `Q†` of `N†|_(C_M)` admits a unique surjection onto `M†|_(C_M)` inducing `h|_(C_M)`;
if `N†` is irreducible with witness `C_N`, prove that `N†|_(C_N)` admits a unique injection into the
maximally PBQ subobject of `M†|_(C_N)` inducing `h|_(C_N)` (Tsuzuki, Proposition 6.7, p. 28).

The irreducible restriction has irreducible top by MS.4.3, so the nonzero restricted map is surjective,
respectively injective; take the maximally PBQ subobject and its saturation, form the image of the sum
map in the isoclinic quotient and apply MS.4.2 and MS.4.4.

*Needs:* MS.2.5; MS.4.2; MS.4.3; MS.4.4; MS.6.1.

**Checks.**

- If `N† = M†` is irreducible and `h` is the identity, `Q† = M†|_C` and the surjection is the identity.
- If `N†` is a split sum `M† ⊕ L†` with `L†` of smaller maximal slope and `h` the projection, `Q†` is the
  `M†`-summand restricted to `C`.

### MS.6.3 Lefschetz fibre reconstruction

If `M†`, `N†` are irreducible with slope-filtered realisations, `h : Top(N) → Top(M)` is nonzero, and both
`LC(X, α, M†)` and `LC(X, α, N†)` hold (possibly with different curves), prove that
`rank M† = rank N†` and that the Frobenius fibres at `α` are isomorphic as `F`-spaces over `K_α`
(Tsuzuki, Corollary 6.8, p. 29; proof of Corollary 7.16, p. 36).

The `M`-curve gives `rank M† ≤ rank Q† ≤ rank N†` and the `N`-curve gives `rank N† ≤ rank M†`; the
surjection on the `M`-curve is then an isomorphism `N†|_(C_M) → M†|_(C_M)` (Tsuzuki's proof writes its
target as `N†`), whose fibre at the rational point over `α` is the required isomorphism.

*Needs:* MS.6.2; PadicDifferentialEquationsAndRigidCohomology §RD.6.2.

**Checks.**

- If a single curve witnesses both conditions, the statement follows directly from MS.4.6(i) on that
  curve.
- For rank-one objects with `h ≠ 0`, the fibres at `α` have the same Frobenius eigenvalue.

### MS.6.4 Unit-root source reconstruction

In the situation of the first half of MS.6.2 (`M†` irreducible with `LC` at one closed point,
slope-filtered realisations, `h ≠ 0`), suppose `N†` is unit-root. Prove that `M†` is unit-root and that
`h` is induced by a unique surjection `N† → M†` (Tsuzuki, Corollary 6.9, p. 29).

The witness curve makes `M†|_C` a quotient of a unit-root object, hence unit-root at `α`; the slope
filtration then forces all slopes of `M` to be zero, so `Top(M) = M`, `Top(N) = N`, and `h` is a global
convergent morphism, which lifts by full faithfulness and is surjective because its image is a nonzero
subobject of the irreducible `M†`.

*Needs:* MS.6.2; PadicDifferentialEquationsAndRigidCohomology §§RD.3.47, RD.5.8.

**Checks.**

- For `N† = M†` unit-root irreducible and `h = id`, the surjection is the identity.
- If `N†` is not unit-root the conclusion `M†` unit-root can fail: take `N† = M†` irreducible of
  nonzero slope and `h = id`.

### MS.6.5 Overconvergent F-isocrystals with coefficients

For a finite extension `L` of `K` in `Q̄_p`, an **overconvergent `L`-`F_q`-isocrystal** on `X` is an
overconvergent F-isocrystal `M†` on `X/K` with a `K`-algebra map `L → End(M†)`; morphisms commute with
`L`. Scalar extension is `θ_(L_1,L_2)(M†) = M† ⊗_(L_1) L_2`, with `θ_(L_2,L_3) ∘ θ_(L_1,L_2) ≅ θ_(L_1,L_3)`.
The category F_q-`Isoc†(X) ⊗ Q̄_p` of **overconvergent `Q̄_p`-F-isocrystals** is the 2-colimit over
finite `L ⊂ Q̄_p`, with `Q̄_p-rank(M†) = rank(M†)/[L : K]` on each component; tensor products and duals
are taken over `L`. An object is **irreducible** if it is irreducible in this colimit category,
equivalently if its finite models are irreducible after every finite extension of `L`. For `k_n/k` of
degree `n` with `π_n : X_n → X`, there are a pullback `π^*_n` identifying the `q^n`-Frobenius
`K_n`-structure with the coefficient `K_n`-structure through `K_n ⊂ L`, and a right adjoint pushforward
`π_(n*)`, with `Q̄_p-rank(π^*_n N†) = Q̄_p-rank(N†)` and `Q̄_p-rank(π_(n*) M†) = n · Q̄_p-rank(M†)`. The
Frobenius fibre at a closed point `α` of degree `n` with `K_α ⊂ L` is the `L`-space `i_α^* M†` with the
`L`-linear endomorphism `F^n`. The coefficient form `LC_(Q̄_p)(X, α, M†)` of MS.6.1 asks for a witness
curve on which `M†` stays irreducible in this category (Tsuzuki, Definitions 7.1 and 7.6, Example 7.2,
Propositions 7.3–7.5 and 7.9, Lemma 7.7, §7.2, pp. 29–32; Corollary 7.16, p. 36; Appendix B,
pp. 39–40).

Construction route. Tensor products and duals over `L` use the `L ⊗_K L`-actions and the
multiplication projector; the perfect `L`-valued pairing identifies the `K`-dual with the `L`-dual
through the trace of `L/K` (Tsuzuki's Proposition 7.4 leaves this identification implicit). The
pullback and pushforward come from the functors of Tsuzuki's Appendix B with étale descent along
`X_n → X`. Fibres and their traces are computed on finite `L`-models before passing to `Q̄_p`.

*Needs:* PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.3.25, RD.3.37, RD.3.50, RD.6.2.

API:

- `θ_(L_1,L_2)` is an exact `L_2`-linear tensor functor, transitive up to canonical isomorphism, preserving
  `Q̄_p`-rank.
- F_q-`Isoc†(X) ⊗ L` is an `L`-linear rigid abelian tensor category with unit `j†O ⊗_K L`; the dual
  pairing is the trace-identified `L`-dual.
- `π^*_n` is left adjoint to `π_(n*)`, with the rank formulas above and compatibility with pullback
  along morphisms `X′ → X`.
- For `k_0 ⊂ k` of degree `n` with `q_0^n = q`, restriction of Frobenius gives an equivalence
  F_q-`Isoc†(X) ⊗ Q̄_p ≃ F_(q_0)-Isoc†(X) ⊗ Q̄_p` preserving `Q̄_p`-rank (Tsuzuki, Proposition 7.9, after
  Abe).
- The fibre at `α` is an `L`-space of dimension `Q̄_p-rank(M†)` with `L`-linear `F^n`, and its
  characteristic polynomial does not depend on `L`.
- An irreducible object represented over `L` is, as an overconvergent F-isocrystal over `K`, a finite
  direct sum of copies of one irreducible object (Lemma 7.7).
- MS.4.2–MS.4.6 and MS.6.2–MS.6.4 hold for objects with `L`-structure, with irreducibility taken among
  such objects and `h` `L`-linear: the kernels in their proofs are `L`-stable, and the unique lifts are
  `L`-linear by uniqueness.

**Checks.**

- For `L = K`, `Q̄_p-rank(M†) = rank(M†)`.
- `θ_(L,L) ≅ id` and `Q̄_p-rank(θ_(L_1,L_2) M†) = Q̄_p-rank(M†)`.
- For `M†` with an `L`-structure, `M† ⊗_K L` with `L` acting on the second factor has `Q̄_p`-rank
  `rank_K(M†)`, which differs from `Q̄_p-rank(M†) = rank(M†)/[L : K]` when `L ≠ K`; forgetting the
  original `L`-action gives the wrong rank.
- `Q̄_p-rank(π_(n*) M†) = n · Q̄_p-rank(M†)` and `Q̄_p-rank(π^*_n N†) = Q̄_p-rank(N†)`; for the unit
  object on `X_n`, `π_(n*)` of it has `Q̄_p`-rank `n`.

### MS.6.6 The coefficient-linear trace formula and duality

For `X` separated of finite type over `𝔽_q` of pure dimension `d` and an overconvergent
`L`-`F_q`-isocrystal `M†`, prove that `Hⁱ_(c,rig)(X, M†)` and `Hⁱ_rig(X, M†)` are `L`-spaces with `L`-linear
Frobenius, that for every `n ≥ 1`
`Σ_(β∈X(k_n)) Tr_L(F^n | M†_β) = Σ_i (−1)^i Tr_L(F^n | Hⁱ_(c,rig)(X, M†))`,
so that `L(X, M†, t) = ∏_i det_L(1 − tF | Hⁱ_(c,rig)(X, M†))^((−1)^(i+1))` with `L(X, M†, t)` the product of
the `L`-linear local factors, and that for smooth `X` the Poincaré pairing induces an `L`-linear
Frobenius-equivariant isomorphism `H^(2d)_(c,rig)(X, M†) ≅ Hom_L(H⁰_rig(X, M†^∨), L)(−d)`, with `M†^∨` the
`L`-dual (Tsuzuki, Proposition 7.10, Lemma 7.11, Proposition 7.12 and Corollary 7.13, pp. 32–34).

Proof route. By excision it suffices to show that the alternating `L`-trace vanishes when `X(k_n)` is
empty. The `K`-linear trace formula gives the vanishing of `Σ_τ τ(Σ_i (−1)^i Tr_L(F^n | Hⁱ_c))` over the
embeddings `τ : L → Q̄_p`; applying it to the twists `M† ⊗_L L(λ)`, `λ ∈ L^×`, multiplies the inner sum
by `λ^n` (Tsuzuki's proof writes `λ`), and the `n`-th powers span `L` over `K` in characteristic zero, so
the inner sum vanishes. The trace of `L/K` is a nondegenerate form, which turns the `K`-linear Poincaré
pairing into an `L`-linear one. Local traces are computed on the finite models: Tsuzuki's proof of
Lemma 7.11(3) splits `L ⊗_K L` as if `L/K` were normal, and the correct step splits `L ⊗_K Q̄_p`.

*Needs:* MS.6.5; PadicDifferentialEquationsAndRigidCohomology §§RD.4.19, RD.5.89, RD.6.2, RD.6.4,
RD.6.23.

**Checks.**

- For `L = K` the statement is the parent's trace formula and duality.
- For `X = Spec 𝔽_q` and the rank-one object `L(λ)`, both sides of the trace formula at `n` equal `λ^n`;
  writing `λ` would be wrong already at `n = 2`.
- For a non-normal cubic `L/K`, `L ⊗_K L` has a factor of degree two, so it is not a product of copies
  of `L`; the traces must be computed through `L ⊗_K Q̄_p ≅ Q̄_p^3`.

### MS.6.7 The projected trace average

Let `k_m/k` have degree `m ≥ 1` and let `M†`, `N†` be `Q̄_p`-objects modelled over `L ⊇ K_m`. On the
`L`-space of morphisms `π_m^* N† → π_m^* M†` of `q^m`-Frobenius objects, let `T` be the action of the
generator of `Gal(k_m/k)` (conjugation by the `q`-Frobenius), so `T^m = 1`. Define
`Av(f) = m⁻¹ Σ_(i<m) T^i(f)`. Prove that `Av(f)` is `T`-invariant and hence descends to a morphism
`N† → M†`, that `Av(f) = f` when `f` is already defined over `X`, and that in the presentation of `Av` as
the unit–trace composite `N† → π_(m*)π_m^* N† → π_(m*)π_m^* M† → M†` one must first project
`K_m ⊗_K L ≅ L^m` onto the factor of the chosen embedding: the projected unit–trace composite is
`m · id`, while the unprojected one is `m² · id` (Tsuzuki, Proposition 7.15(2), pp. 35–36, dividing by
`m`, and Lemma B.1, p. 40, giving `Tr ∘ ad = n · [L : K] · id` for the unprojected functors).

Choose `L` containing `K_m` and the matrix coefficients; split the coefficient algebra and apply the
primitive idempotent before forming the cyclic Frobenius summands. The projected induction is
`⊕_(i<m) F^(i*) N`, its unit sends `v` to `(F^(−i) v)_i` and its trace sends `(v_i)` to `Σ F^i(v_i)`, so the
composite is `m` copies of `v`. The average is Mathlib's `Representation.averageMap` for the cyclic
group of order `m` acting through `T`.

*Needs:* MS.6.5; PadicDifferentialEquationsAndRigidCohomology §RD.3.50; Mathlib
`Representation.averageMap`, `Representation.averageMap_invariant`, `Representation.averageMap_id`,
`LinearMap.trace`, `LinearMap.trace_one`.

API:

- `T(Av(f)) = Av(f)`, since `T^m(f) = f`.
- If every `T^i(f)` induces the same morphism `h` of maximal-slope quotients defined over `X`, then
  `Av(f)` induces `h`.
- On the split coefficient algebra `L^m`, multiplication by a primitive idempotent has `L`-linear trace 1
  and the identity has trace `m`; after the projection the cyclic unit–trace composite is `m · id`.

**Checks.**

- `m = 1` gives `Av(f) = f`.
- For `m = 2` and `T² = 1`, `Av(f) = (f + T(f))/2` is `T`-invariant and fixes every `T`-invariant `f`.
- On `L²`, multiplication by `e_1 = (1, 0)` has `L`-linear trace 1 and multiplication by `1 = (1, 1)` has
  trace 2; using the latter in each of two induction slots gives 4 instead of 2, the `m²` error.

### MS.6.8 The endomorphism curve criterion

Let `X` be connected and `f : Y → X` a morphism from a nonempty `𝔽_q`-scheme of finite type. For a
`Q̄_p`-object `M†` with slope-filtered `M`, prove that `End(M†) → End(f^*M†)` and
`End(Top(M)) → End(f^*Top(M))` are injective; consequently, if for a closed point `α` and a smooth
curve `i : C → X` through `α` the pullback `i^*M†` is irreducible and `End(M†) → End(i^*M†)` is bijective,
then `End(M†) → End(Top(M))` is bijective (Tsuzuki, Lemma 7.17, p. 36).

Horizontal sections of `M†^∨ ⊗ M†` and of `Top(M)^∨ ⊗ Top(M)` inject into any nonempty fibre over a
connected base. For an endomorphism of `Top(M)`, restrict to `C` and lift uniquely by MS.4.6 (or by its
zero case); the assumed bijection returns it to `X`, and injectivity on the tops identifies it.

*Needs:* MS.4.6; MS.6.5; PadicDifferentialEquationsAndRigidCohomology §§RD.5.8, RD.6.2.

**Checks.**

- For `X` a curve and `i = id`, the hypothesis holds for irreducible `M†`, and the conclusion is the
  endomorphism case of MS.4.6.
- For `M†` the unit object, all endomorphism algebras are `L` and the maps are identities.

### MS.6.9 Finite-field weight and Lefschetz inputs

For smooth connected `X` over `𝔽_q`, prove: (a) every irreducible `Q̄_p`-object is `ι`-pure of some real
weight for every `ι`; (b) for every irreducible `Q̄_p`-object `M†` and every finite set of closed points of
`X` there is a witness curve through them on which `M†` stays irreducible, so `LC_(Q̄_p)(X, α, M†)` holds
at every closed point `α` (Tsuzuki, Theorems 7.18–7.19, p. 37, quoting Abe–Esnault, Theorem 2.7, p. 13,
and Theorem 3.10, pp. 17–18). Weights are real: integrality would exclude constant twists.

(a) By MS.6.5 the underlying object over `K` is a sum of copies of one irreducible overconvergent
F-isocrystal, which is `ι`-pure by the supplier request irreducible-iota-purity; the `L`-linear
eigenvalues are among the `K`-linear ones. (b) is the supplier request lefschetz-curves-irreducibility
applied to a finite model on which `M†` is absolutely irreducible.

*Needs:* MS.6.1; MS.6.5; PadicDifferentialEquationsAndRigidCohomology §§RD.6.28, RD.6.82 and the
supplier requests irreducible-iota-purity and lefschetz-curves-irreducibility.

**Checks.**

- On `Spec 𝔽_3`, the rank-one object with Frobenius 2 has weight `2 log_3 2`, which is not an integer;
  restricting to integral weights rejects a valid irreducible object.
- A constant twist by `c` with `|ι(c)| = q^(w/2)` moves the weight by `w` (§RD.6.82).

### MS.6.10 The fibrewise isomorphism criterion

Let `M†`, `N†` be irreducible `Q̄_p`-objects on smooth connected `X` over `𝔽_q` such that `N†^∨ ⊗ M†` is
`ι`-pure, and suppose there is a dense open `U` such that at every closed point `α ∈ U` the Frobenius
fibres of `M†` and `N†` are isomorphic. Prove that `N† ≅ M†` (Tsuzuki, Proposition 7.15(1), pp. 35–36).

Proof route. The fibre hypothesis makes `N†^∨ ⊗ M†` pure of weight 0 and gives
`L(U, M†^∨ ⊗ N†, t) = L(U, M†^∨ ⊗ M†, t)`. By duality (MS.6.6), `H^(2d)_c(U, M†^∨ ⊗ M†)` contains the
eigenvalue `q^d` coming from the identity in `H⁰(U, End M†)`; coefficient-linear Weil II gives weights
`≤ j < 2d` on `H^j_c` for `j < 2d`, so `L(U, M†^∨ ⊗ M†, t)` has a pole at `t = q^(−d)` that no other term
cancels. Hence `L(U, M†^∨ ⊗ N†, t)` has the same pole, `H^(2d)_c(U, M†^∨ ⊗ N†)` has generalised eigenvalue
`q^d`, and by duality `H⁰(U, N†^∨ ⊗ M†)` contains a nonzero Frobenius-fixed vector: a nonzero morphism
`N†|_U → M†|_U`, which extends to `X` by dense-open full faithfulness and is an isomorphism by
irreducibility. This replaces a general Chebotarev theorem for `Q̄_p`-objects.

*Needs:* MS.6.5; MS.6.6; PadicDifferentialEquationsAndRigidCohomology §§RD.5.112, RD.6.28, RD.6.57
and the supplier request coefficient-linear-weil-ii.

**Checks.**

- For `N† = M†` the conclusion is trivial and the pole is the one from the identity.
- For constant rank-one objects with Frobenius `a ≠ b` on `X = Spec 𝔽_q`, the fibres differ and the
  `L`-functions `(1 − a t)⁻¹`, `(1 − b t)⁻¹` differ; the hypothesis fails, consistently with `N† ≇ M†`.
- Purity cannot be dropped from the method: without weights a factor of `H^j_c` with `j < 2d` could
  cancel the pole.

### MS.6.11 The specified map from an endomorphism condition

In MS.6.10, suppose moreover that `M`, `N` are slope-filtered, `h : Top(N) → Top(M)` is an isomorphism,
and for some `m ≥ 1` either `End(π_m^* M†) → End(π_m^* Top(M))` or `End(π_m^* N†) → End(π_m^* Top(N))` is
surjective. Prove that there is a unique isomorphism `N† → M†` inducing `h` (Tsuzuki,
Proposition 7.15(2) and proof, pp. 35–36).

Proof route. Take `g′ : N† ≅ M†` from MS.6.10; the endomorphism hypothesis transfers between `M†` and
`N†`. Lift `π_m^*(Top(g′)⁻¹ ∘ h)` to `τ ∈ End(π_m^* N†)`; then `π_m^* g′ ∘ τ` induces `π_m^* h` (Tsuzuki's
proof lifts to a map with target `M†` and composes with `(g′)⁻¹` on the wrong side). Apply MS.6.7: the
average induces `h`, is nonzero, and is an isomorphism by irreducibility over `X`. Uniqueness: a
nonzero difference of two such isomorphisms would be an isomorphism inducing zero on the tops.

*Needs:* MS.3.8; MS.6.7; MS.6.10.

**Checks.**

- For `N† = M†`, `h = id`, the isomorphism is the identity.
- For `m = 1` no average is needed: the lift `g′ ∘ τ` is already defined over `X`.

### MS.6.12 Lefschetz global existence

Let `M†`, `N†` be irreducible `Q̄_p`-objects on smooth connected `X` over `𝔽_q` with slope-filtered
realisations, `N†^∨ ⊗ M†` `ι`-pure, `h : Top(N) → Top(M)` nonzero, and suppose `LC_(Q̄_p)` holds for `M†`
and for `N†` at every closed point of a dense open `U`. Prove that `N† ≅ M†` (Tsuzuki, Corollary 7.16(1),
p. 36). The isomorphism need not induce `h`.

MS.6.3, in its coefficient form (MS.6.5), gives isomorphic fibres at every closed point of `U`, possibly
with different curves for the two objects; apply MS.6.10.

*Needs:* MS.6.3; MS.6.5; MS.6.10.

**Checks.**

- For `X` a curve, `U = X` and the identity curve, the statement is weaker than MS.4.6(i), which also
  gives compatibility with `h`.
- The conclusion is existence only: for `M† = N†` with `End(M†) = L` and `h = c · id_(Top(M))`, any
  isomorphism `c′ · id` with `c′ ≠ c` is also an isomorphism, and only `c · id` induces `h`.

### MS.6.13 The finite-field minimal slope theorem

Let `M†`, `N†` be irreducible `Q̄_p`-objects on smooth connected `X` over `𝔽_q` with slope-filtered
realisations, and `h : Top(N) → Top(M)` a nonzero convergent morphism. Prove that there is an
isomorphism `N† ≅ M†` of overconvergent `Q̄_p`-F-isocrystals (Tsuzuki, Theorem 7.20(1), p. 37;
Theorem 1.4, p. 3). This statement does not say that the isomorphism induces `h`.

Proof route. MS.6.9 gives purity and `LC_(Q̄_p)` at every closed point for both objects. MS.6.3 then
gives isomorphic fibres at every closed point, so `M†` and `N†` have the same weight and `N†^∨ ⊗ M†` is
pure of weight 0; apply MS.6.12.

*Needs:* MS.6.3; MS.6.9; MS.6.12; PadicDifferentialEquationsAndRigidCohomology §RD.6.28.

**Checks.**

- For rank-one objects, `Top = M` and a nonzero `h` is already an isomorphism of convergent objects, so
  the statement is full faithfulness.
- For `X` a curve the statement is implied by MS.4.6(i), which holds over any perfect field.

### MS.6.14 The finite-field specified-map theorem

In MS.6.13, suppose moreover that after a finite extension `k_m` of `𝔽_q` there are a closed point `α`
and a smooth curve `i : C → X_m` through `α` such that `i^* π_m^* M†` is irreducible and
`End(π_m^* M†) → End(i^* π_m^* M†)` is bijective. Prove that `h` is induced by a unique isomorphism
`N† → M†` (Tsuzuki, Theorem 7.20(2), p. 37).

Proof route. MS.6.13 gives some isomorphism `g′`. Since `π_m^* M†` is irreducible (its restriction to
`C` is), `End(π_m^* M†)` is a division algebra, and MS.6.8 identifies it with `End(π_m^* Top(M))`; the
nonzero endomorphism `π_m^*(h ∘ Top(g′))` is therefore invertible, so `h` is an isomorphism. MS.6.8 also
gives the surjectivity required in MS.6.11, which produces the unique isomorphism inducing `h`. The
added curve hypothesis is not a consequence of MS.6.13 alone.

*Needs:* MS.6.8; MS.6.11; MS.6.13.

**Checks.**

- For `X` a curve the hypothesis holds with `m = 1`, `C = X`, and the statement agrees with MS.4.6(i).
- Without an endomorphism hypothesis, MS.6.13 gives an isomorphism that may differ from the required
  one by an automorphism of `M†` not inducing the identity on `Top(M)`; the curve hypothesis rules this
  out.

### Examples

On `Spec 𝔽_3`, the rank-one object with Frobenius 2 has weight `2 log_3 2`. For `m = 2`, the average
`(f + T(f))/2` preserves a map `h` induced by both summands, and on `L²` the primitive projector gives
total trace 2 while the unprojected unit gives 4.

### Dependencies

MS.2, MS.3, MS.4; PadicDifferentialEquationsAndRigidCohomology §§RD.0.17, RD.3.19, RD.3.25, RD.3.37,
RD.3.47, RD.3.50, RD.4.19, RD.5.8, RD.5.89, RD.5.112, RD.6.2, RD.6.4, RD.6.23, RD.6.28, RD.6.57, RD.6.82
and the supplier requests irreducible-iota-purity, lefschetz-curves-irreducibility (MS.6.9) and
coefficient-linear-weil-ii (MS.6.10); Mathlib `Representation.averageMap`,
`Representation.averageMap_invariant`, `Representation.averageMap_id`, `LinearMap.trace`,
`LinearMap.trace_one`.

## Downstream consumers

The curve PBQ filtration (MS.2.5), the curve rank theorem (MS.4.2), the specified-map theorem
(MS.4.6) and the minimal slope property on curves (MS.5.10) are the inputs of D'Addezio's
higher-dimensional minimal slope theorem, his PBQ filtration on smooth varieties and his parabolicity
theorem for monodromy groups of overconvergent F-isocrystals; a roadmap developing those imports
MS.2.5, MS.4.2, MS.4.6, MS.5.1–MS.5.3, MS.5.10 and MS.5.11 by name. The finite-field theorems
(MS.6.13–MS.6.14) are the inputs of the minimal-slope form of multiplicity one for cuspidal
automorphic representations of `GL_r` over function fields.

## Worked examples

**Conventions on one object.** For the split constant sum `L_1 ⊕ L_0` of slopes 1 and 0, every solution
is bounded, so `Mᵇ = 0` and `B(M) = M`. The object is not PBQ. Its PBQ filtration has `P_1 = L_1` and
`P_2 = M`, with grades `L_1` and `L_0`, whose tops sum to `M`; using `Top(P_2)` would give a second
slope-one line. Projection to `L_1` has the nonzero kernel `L_0`, so the object is not saturated and its
saturation is `L_1`. Together these fix the kernel convention for `Mᵇ`, the grade convention for the
PBQ filtration and the saturation convention.

**The logarithmic module.** With `φ(t) = t^q`, the module with `∇e_2 = e_1 ⊗ dt/t`, `φ(e_1) = q⁻¹e_1`,
`φ(e_2) = e_2` is a nonsplit extension of the unit (slope 0) by `O(1)` (slope `−1`). Its generic
solution `log(1 + u/t)` has coefficients `±1/n`, of norm `p^r` at `n = p^r`, so it is solvable and
unbounded; `B(M)` is the unit quotient, `M` is PBQ, not saturated, and its saturation is the unit. Over
`E†` its solutions in the logarithmic Robba ring are `f_1` (slope 0, growth 0) and `f_2` (slope 1, exact
growth 1), matching `Sol_λ = S_λ` with `λmax = 0`. It is the boundary case `b − a = 1` of MS.0.6, where
boundedness is required for splitting.

**A two-step filtration on the Legendre family.** For `p ≡ 1 mod 4`, MS.2.8 gives a nonsplit rank-three
extension of `O(π_p²)` by `L†(χ)` with PBQ grades of maximal slopes 1 and 0; by MS.4.5 (third case) it is
saturated and not PBQ. It is not a rank-two counterexample to the splitting statement of MS.4.5.

**The projected trace.** For a degree-two constant extension, an involution `T` on morphisms gives
`Av(f) = (f + T(f))/2`; if `f` and `T(f)` induce the same `h`, so does `Av(f)`. On `L²` multiplication by
`(1, 0)` has trace 1 and by `(1, 1)` trace 2: projecting first gives total trace 2 over the two cyclic
slots, taking the unit in both slots gives 4, which is why the average divides by `m` and not `m²`.

**Integral models.** In `A_1 = W(k)⟨pu⟩`, the element `u^j` of `W⟨u⟩` has order exactly `p^j` modulo `A_1`,
so `W⟨u⟩/A_1` has unbounded `p`-power torsion; this is why MS.5.8 needs a Frobenius-specific bound.

## Corrections to the sources

Each entry gives the locator, the corrected statement used in this roadmap, and the check that forces
the correction.

- **Tsuzuki, arXiv v3, §1.1, p. 1.** `R` is the complete discrete valuation ring and `K` its fraction
  field (the list calls `R` a field). Check: `k = R/m` needs the ring.
- **Tsuzuki, §2.1, p. 4.** The coefficient-supremum Gauss norm applies to the bounded carriers only; the
  full Robba ring uses annular norms. Check: coefficients `p^(−⌊√n⌋)` give a Robba element with infinite
  supremum.
- **Tsuzuki, Definition 2.2(2), p. 5.** The lattice is a `K[[t]]₀`-lattice; no point `α` has been chosen.
- **Tsuzuki, §2.2, p. 6.** `ℚ` is ordered, not well ordered; only the supports are well ordered.
- **Tsuzuki, proof of Proposition 2.9, p. 8, and Proposition 2.11, p. 9.** The cited lemma is
  Lemma 2.6(4), and the conclusion concerns the defined filtration length.
- **Tsuzuki, proofs of Proposition 2.10(2) and Lemma 2.12, p. 9.** The Frobenius equation is for
  `z_(i,1)`, and the result cited in Lemma 2.12 is Proposition 2.9.
- **Tsuzuki, proof of Theorem 2.14, p. 10.** The trivialised module is a direct sum of `dim_E M` copies
  of `Ẽ`, not a tensor power.
- **Tsuzuki, proof of Proposition 3.7, p. 14.** Boundedness of duals needs its own argument; solvable
  modules are not bounded (the logarithmic module).
- **Tsuzuki, Theorem 3.12 and Definition 3.13, p. 15.** The nonzero bounded quotient requires `M ≠ 0`;
  `B(0) = 0`.
- **Tsuzuki, proof of Theorem 3.19(1), p. 16.** The splitting result cited is Theorem 3.10.
- **Tsuzuki, Proposition 3.18, p. 16.** The unit-root factor must be nonzero.
- **Tsuzuki, Theorem 3.19, pp. 16–17, and its uses in Proposition 3.29, Theorem 4.11 and Theorem 6.4.**
  Decreasing maximal slopes and the bounded-quotient sum use the grades `P_i/P_(i−1)`. Check: for
  `L_1 ⊕ L_0` both nested terms have maximal slope 1.
- **Tsuzuki, Proposition 3.24 and Remark 3.25, p. 18.** The rank is compared with the dimension of the
  solution space, and derivatives are in the chosen coordinate `x`.
- **Tsuzuki, Lemma 3.31, p. 19.** For `f : C′ → C`, the direct-image object lives on `C′` and the
  pullback object on `C`; the proof of (1) concludes the hypothesis and (2) invokes the lemma itself.
  MS.2.6 proves the pullback assertion through MS.0.8.
- **Tsuzuki, proof of Lemma 3.33, p. 20, rank-one step.** A rank-one generic submodule need not be
  unit-root; twist after the fixed-field normalisation, glue, untwist (MS.2.3).
- **Tsuzuki, §3.9, p. 21.** The support-forgetting map starts from `H¹_(rig,c)`.
- **Tsuzuki, Theorem 6.4, p. 27.** `h` is a convergent map between the global convergent bounded
  quotients, not a map of overconvergent objects into a generic fibre.
- **Tsuzuki, proof of Corollary 6.8, p. 29.** The intermediate isomorphism ends at the restriction of
  `M†`; the same-curve case follows from Corollary 6.5(i).
- **Tsuzuki, Proposition 7.4, p. 30.** The `L`-valued pairing needs the trace of `L/K` and the
  multiplication projector.
- **Tsuzuki, Proposition 7.5, p. 30.** Transitivity reads `θ_(L_1,L_3) = θ_(L_2,L_3) ∘ θ_(L_1,L_2)`.
- **Tsuzuki, Lemma 7.11(1),(3), p. 33.** Traces are computed on the finite `L`-model; the splitting is
  of `L ⊗_K Q̄_p`, since `L ⊗_K L` is not a product of copies of `L` for non-normal `L/K`.
- **Tsuzuki, proof of Proposition 7.12, p. 34.** The twist by `L(λ)` contributes `λ^n` to the trace of
  `F^n`; `n`-th powers span `L` over `K` in characteristic zero.
- **Tsuzuki, Definition 7.14, p. 34, and Theorem 7.18, p. 37.** Weights are real numbers. Check: the
  rank-one object on `Spec 𝔽_3` with Frobenius 2 has weight `2 log_3 2`.
- **Tsuzuki, proof of Proposition 7.15(2), p. 35.** Lift `Top(g′)⁻¹ ∘ h` to an endomorphism `τ` of `N†`
  and use `g′ ∘ τ`.
- **Tsuzuki, Proposition 7.15(2), pp. 35–36, against Lemma B.1, p. 40.** Divide by `m` only after
  projecting `K_m ⊗_K L` to one factor; the unprojected unit–trace composite is `m² · id`.
- **Tsuzuki, Appendix A, proof of Lemma A.1(2), p. 38, and §A.2, p. 39.** The value groups (not the
  valuation rings) coincide, and the tube is the inverse image under specialisation.
- **Tsuzuki, proof of Lemma A.1(3), p. 38.** The action `id_L ⊗ σ` on `L ⊗_(K^(σ^n)) K` is defined only
  if `σ` fixes `K^(σ^n)`; MS.0.3 uses only Lemma A.1(1)–(2).
- **D'Addezio, arXiv v4, Theorem 4.2.6(i), p. 14.** The `i`-th reverse grade completes to
  `S_(m+1−i)/S_(m−i)`. Check: at `i = m` the grade is `S_1/S_0`.
- **D'Addezio, Theorem 4.2.6(ii), p. 14.** The eigenbasis statement concerns the extended module
  `M†_alg`.
- **D'Addezio, proof of Lemma 4.1.4, p. 12.** The induced first slope step is `⊕ F^(i*) S_1(N)`.
- **D'Addezio, proof of Proposition 4.2.12, p. 17.** The positive lower bound for norms outside `pQ`
  fails for `A_n ⊂ W⟨u⟩`; the proposition needs a Frobenius-specific torsion bound (MS.5.8).
- **Ohkubo, arXiv v1, Proposition 5.9, p. 26.** For a bounded module the log-growth kernel is zero, so
  the bounded quotient is the module itself.

## References

- **TSU.** Nobuo Tsuzuki, *Minimal slope conjecture of F-isocrystals*, arXiv:1910.03871v3 (2021).
  Locators refer to arXiv v3.
- **DAD.** Marco D'Addezio, *Parabolicity conjecture of F-isocrystals*, arXiv:2012.12879v4 (2023);
  Ann. of Math. 198 (2023), 619–656. Locators refer to arXiv v4.
- **CT11.** Bruno Chiarellotto and Nobuo Tsuzuki, *Log-growth filtration and Frobenius slope filtration
  of F-isocrystals at the generic and special points*, Doc. Math. 16 (2011), 33–69.
- **OHK.** Shun Ohkubo, *Logarithmic growth filtrations for (φ,∇)-modules over the bounded Robba ring*,
  arXiv:1809.04065v1 (2018). Locators refer to arXiv v1.
- **AE.** Tomoyuki Abe and Hélène Esnault, *A Lefschetz theorem for overconvergent isocrystals with
  Frobenius structure*, Ann. Sci. Éc. Norm. Supér. 52 (2019), 1243–1264; author's PDF.
- **KED05.** Kiran S. Kedlaya, *More étale covers of affine spaces in positive characteristic*,
  J. Algebraic Geom. 14 (2005), 187–192; arXiv:math/0303382v3.
- **de Jong 1998.** A. J. de Jong, *Homomorphisms of Barsotti–Tate groups and crystals in positive
  characteristic*, Invent. Math. 134 (1998); Proposition 6.4, cited by its locator.
- **Tsuzuki 1998.** Nobuo Tsuzuki, *Finite local monodromy of overconvergent unit-root F-isocrystals
  on a curve*, Amer. J. Math. 120 (1998); Theorems 4.2.6 and 7.2.3, cited by their locators.
