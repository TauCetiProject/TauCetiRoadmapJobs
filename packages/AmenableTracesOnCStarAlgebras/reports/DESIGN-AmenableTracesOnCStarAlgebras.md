# DESIGN-AmenableTracesOnCStarAlgebras: design report

Files written: `packages/AmenableTracesOnCStarAlgebras/design/README.md`,
`packages/AmenableTracesOnCStarAlgebras/design/plan.json`,
`packages/AmenableTracesOnCStarAlgebras/sources.toml` (citations and version notes updated; no
new keys), and this report. No `Suggested.lean` is part of this job; the README therefore
backticks only Mathlib names and Lean names of supplier roadmaps, never a proposed name of its
own (the proposed names are in `plan.json`).

## What the design covers

Eight layers, 53 targets in `plan.json` (17 definitions or constructions, each with at least
three tests in the plan and at least three Checks in the README):

1. Tracial states, the tracial state space, the trace kernel, the unitization and ideal
   extensions, the GNS data of a tracial state (vector trace, `J`, right representation, `μ_τ`),
   the normalized matrix trace and 2-norm, Brown's Lemmas 2.4, 2.5 and 2.8.
2. C.p.c. maps into matrices: block sums, compressions, the Choi–Effros factorization and
   unitalization estimates, 2-norm and norm multiplicativity defects with asymptotic
   multiplicative domains, the compression commutator identities, Ozawa's prescribed-trace maps,
   the normal extension to the bidual.
3. The definitions of amenable, quasidiagonal and uniform amenable traces and of a faithful
   amenable trace; nets, sequences, u.c.p., finite-dimensional and unitization reformulations;
   inclusions, convexity, closure, pullback, tensor products.
4. Hypertraces, representation independence, the Connes–Ozawa hypertrace-to-approximation
   theorem with normal approximants, the tensor functional and Lance's extension, the
   Connes–Kirchberg theorem (seven conditions), Connes's Følner condition, and the tracial von
   Neumann algebra corollary (amenable trace iff injective).
5. Weakly nuclear maps and Lance's criterion, the theorem UAT iff `π_τ(A)''` injective iff
   weakly nuclear iff `τ''` amenable (iff hyperfinite for separable `A`), the nuclear theorem and
   the exact theorem.
6. Dominated traces, faces of `AT` and `UAT`, normalized restriction along arbitrary star
   homomorphisms, passage to `π_τ(A)`, extension from ideals.
7. Finite-dimensional, commutative, AF and UHF examples; the canonical trace of `C*_r(Γ)` and the
   six-way characterization of amenability of `Γ`.
8. Quasidiagonal traces on quasidiagonal algebras, states of quasidiagonal algebras, faithful
   quasidiagonal traces, Rosenberg's observation, and the necessity half of Schafhauser's
   AF-embedding theorem.

Every final target of `target.md` is planned:

| `target.md` final target | Planned in |
| --- | --- |
| 1 Tracial states and the matrix 2-norm | §1.1–§1.5 (simple ⇒ faithful in §1.2) |
| 2 Inclusions and reductions; generating sets | §3.2–§3.3, §2.2 |
| 3 Connes–Kirchberg, Følner, representation independence | §4.1–§4.5 |
| 4 Nuclear algebras | §5.3 |
| 5 Exact algebras, converse for every unital `A` | §5.4, §4.6 |
| 6 Permanence | §3.3–§3.5, §6.2–§6.5 |
| 7 AF-embedding necessity | §8.5 |
| 8 Quasidiagonal traces and algebras | §8.1–§8.3 |
| 9 Examples, group algebras, Rosenberg | §7.1–§7.3, §8.4 |
| Required Checks (`M_n`, `ℂ⊕ℂ`, `C(X)`, CAR, `C*_r(ℤ)`, `C*_r(F₂)`) | §1.1, §3.1, §3.3, §7.1–§7.3 |

## Design decisions and corrections of the brief

- **Primary definition.** brown2006, Definition 3.1.1 (line 589) defines amenable traces by
  hypertraces, not by approximation as `target.md` states; the design takes the intrinsic
  approximation property (brown2006, Theorem 3.1.6 (2), line 807, in the c.p.c. form of
  Proposition 3.5.10, line 1426) in finite-set form as the definition, and the hypertrace form is
  condition (b) of §4.4.
- **Generality.** All definitions and most theorems are for arbitrary C*-algebras; nets are a
  theorem and sequences follow from separability. Separability is kept exactly where a supplier
  needs it: the converse of the Følner theorem (CStarAlgebras C8.2's compression step is stated for
  separable algebras and Hilbert spaces), faithful quasidiagonal traces ⇒ quasidiagonal algebra
  (CStarAlgebras C8.3), and hyperfiniteness (VonNeumannAlgebras V13b).
- **The general exact case without Kirchberg's paper.** The risk recorded in `target.md`
  (nonseparable exact case resting on the unreadable `kirchberg1993`) is resolved: §5.4 proves
  AT ⇔ UAT ⇔ `π_τ` nuclear ⇔ `π_τ(A)''` injective for every exact `A` from CStarAlgebras C7.1's
  nuclear embeddability (no separability in that contract), §4.4 (f), and Lance's criterion
  (§5.1); local reflexivity (brown2006, Theorem 4.3.3) is not needed. `kirchberg1993` is cited
  only as the origin.
- **UAT ⇔ injective in general.** brown2006, Theorem 3.2.2 is proved through ultrapowers of `R`
  and hyperfiniteness, which VonNeumannAlgebras has only for separable predual. The design proves
  UAT ⇔ injective for arbitrary `A`: (⇐) by the normal approximants of the Connes–Ozawa argument
  (§4.2 applied to `π_τ(A)''` with the hypertrace `τ'' ∘ E`) and Mazur's lemma in the predual;
  (⇒) by the bidual extension of uniform approximants (§2.5), whose asymptotic multiplicative
  domain is all of `A**` because the trace errors tend to `0` in norm, followed by §4.6.
- **The AF-embedding statement.** `target.md` target 7 says that the restriction of `τ_B` to a
  subalgebra `A` is a faithful amenable trace; for nonunital `A` the restriction need not be a
  state (corner `M_3 ⊆ M_4 ⊆ CAR`: norm `3/4`), and `A = 0` has no tracial state. §8.5 states the
  normalized restriction for `A ≠ 0` (through the face property, §6.3) and the trace-preserving
  form when `τ_B ∘ ι` is a state.
- **One-term defect estimate.** §2.2 states `‖φ(ab) − φ(a)φ(b)‖₂ ≤ ‖b‖·d₂(φ, a*)^{1/2}`, sharper
  than brown2006, Lemma 3.1.5 (which has the sum of both defects); the proof via Stinespring gives
  it directly, and the compression `M_2 → M_1`, `a = e₁₂`, `b = e₂₁` attains it.
- **OperatorAlgebraDynamics is cited as on main.** `D2.FreeGroups` (canonical trace, trace
  uniqueness) exists only at the head of a pull request that revises the existing roadmap, which
  the brief forbids as a dependency. §7.3 therefore states the canonical trace of `C*_r(Γ)` here
  from main's D2 (faithful expectation for coefficients `ℂ`), and nowhere uses uniqueness of the
  trace of `C*_r(F₂)`. Main's D6 covers only second-countable groupoids, so the nuclearity of
  `C*_r(Γ)` for amenable `Γ` is taken from main's D2 (nuclear coefficients and amenable groups),
  valid for every discrete group; the converse direction uses only invariant means
  (AmenableGroups Layer 2).
- **Consumers.** OperatorAlgebraDynamics is a supplier (D2), so it cannot consume this roadmap;
  `target.md` listed it as a consumer, and the README lists "OperatorAlgebraDynamics, Part II"
  instead. FreeProbability likewise appears as a Part II consumer.

## Adversarial mathematics pass

Values marked "computed" were recomputed by a short script (matrix arithmetic in exact or
floating point) as well as by hand.

| # | Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- | --- |
| 1 | Tracial state (§1.1) | `M_2` with `x ↦ x₁₁`, `Tr`, `0`; `ℂ⊕ℂ` | `x₁₁(e₁₂e₂₁) = 1`, `x₁₁(e₂₁e₁₂) = 0`; `‖Tr‖ = 2`; `‖0‖ = 0` | all three wrong models excluded by trace + norm one | norm-one condition explicit |
| 2 | Polarization criterion (§1.1) | `M_2`, `a = e₁₂` | `tr_2(e₂₁e₁₂) = 1/2 = tr_2(e₁₂e₂₁)`; for `x₁₁`: `0 ≠ 1` | holds / fails as predicted | none |
| 3 | Compactness of `T(A)` (§1.1) | `c₀`, `δ_n → 0` | limit has norm `0` | fails for nonunital | hypothesis "unital and nonzero" |
| 4 | `N_τ` two-sided (§1.2) | non-tracial `x ↦ x₁₁` on `M_2` | `e₁₂ ∈ N`, `e₁₂e₂₁ = e₁₁ ∉ N` | traciality is used | Check added |
| 5 | Simple ⇒ faithful (§1.2) | `M_n`; zero algebra | `tr_n(x*x) = n⁻¹Σ|x_ij|²`; `T(0) = ∅` | holds; vacuous at `0` | none |
| 6 | Faithfulness of `τ̃` (§1.3) | `A = ℂ`; `A = c₀`, `τ = Σ2^{-n}δ_n` | `τ̃(e*e) = 1 − 1 = 0` for `e = 1_Ã − 1_A`; `τ̃(x) = Σ2^{-n}x_n` | false for unital `A` | hypothesis "`A` has no unit" |
| 7 | Ideal extension unique (§1.3) | `c₀ ⊆ c`, `δ_1`; `x_1/2 + lim/2` | restriction `δ_1/2`, norm `1/2` | no counterexample | none |
| 8 | Right representation convention (Conventions, §1.4) | `(M_2, tr_2)` | `π_τᵒᵖ(e₁₂ᵒᵖ)ê₁₁ = ê₁₂`; `Jπ_τ(e₁₂)Jê₁₁ = 0` | pinned | witness in Conventions |
| 9 | GNS inner product convention | `(M_2, tr_2)` | `⟪ê₁₂, ê₁₂⟫ = 1/2`, `⟪ê₁₁, ê₁₂⟫ = 0` (computed) | pinned | witness in Conventions |
| 10 | `μ_τ(a ⊗ bᵒᵖ) = τ(ab)` (§1.4) | `M_n`, `ℂ⊕ℂ` | `1/n` at `e₁₂ ⊗ e₂₁ᵒᵖ`; `ac` at `(a,b) ⊗ (c,d)ᵒᵖ` | holds | none |
| 11 | Uniqueness of `tr_k` (§1.5) | `k = 0, 1, 2` | `tr_0 = 0` not a state; `tr_1 = id`; `tr_2` | false at `k = 0` | hypothesis `k ≥ 1` |
| 12 | 2-norm inequalities (§1.5) | `e₁₁`; `x = e₁₂`, `y = e₂₁` | `‖e₁₁‖₂ = 0.7071 ≤ 1`; `‖xy‖₂ = 0.7071 = ‖x‖‖y‖₂`, `‖x‖₂‖y‖₂ = 0.5` (computed) | product of 2-norms is not a bound | Check added |
| 13 | `‖x − cxc‖₂ ≤ 2‖x‖‖c − 1‖₂` (§1.5) | `c = diag(1,0)`, `x = e₁₂` | `0.7071 ≤ 1.4142` (computed) | holds | none |
| 14 | Brown Lemma 2.5 (§1.6) | `γ = (1/3, 2/3)`; `γ = (1, 0)` | exact `diag(a,b,b)`; error `2/(N+1) = 0.2` at `N = 9` (computed) | multiplicity `0` would be non-unital | multiplicities `≥ 1` stated |
| 15 | Brown Lemma 2.4 (§1.6) | `ℂ³`, `τ = (1/2, 1/2, 0)`, `B = {(a,a,b)}` | faithful formula with `0⁻¹ = 0` sends `(0,0,1) ↦ 0` | junk value breaks projection | two-case construction, Check added |
| 16 | Brown Lemma 2.8 (§1.7) | `{pr₁} ⊆ S(ℂ²)` | `sup|σ(0,1)| = 0 < 1` | hypothesis needed | none |
| 17 | Choi–Effros factorization (§2.1) | zero algebra; `diag(a₁, 0)` | no u.c.p. map `0 → M_k`, `k ≥ 1`; `ψ = diag(a₁, ω(a))` | needs `A ≠ 0` | hypothesis "nonzero unital" |
| 18 | 2-norm unitalization (§2.1) | `φ = id/2` on `M_2` | `‖ψ(x) − φ(x)‖₂ = ‖x‖₂/2 ≤ 2^{1/2}‖x‖` | holds | none |
| 19 | Norm unitalization (§2.1) | `φ(1) = diag(1, 1/100)` | `‖φ(1) − φ(1)²‖ = 0.0099`, `tr φ(1) = 0.505 > 2δ`, `Q = e₁₁` | needs `Q ≠ 0` | hypothesis `tr_k φ(1) > 2δ` added |
| 20 | One-term defect estimate (§2.2) | `x ↦ x₁₁`, `(a,b) = (e₁₂, e₂₁)`, `(e₂₁, e₁₂)` | `1 ≤ 1` (attained); `0 ≤ 0` | holds, sharp | none |
| 21 | Asymptotic multiplicative domains (§2.2) | compressions of `C(𝕋)`, `n = 5` | `d₂(φ_n, z̄) = 0.2 = 1/n`, `d_∞ = 1` (computed) | `D₂ = C(𝕋) ≠ D_∞` | Check added |
| 22 | Compression identities (§2.3) | `P = e₁₁`, `T = e₁₂`; shift | `1 = 0 + 1`; `‖[M_z, P_n]‖_HS² = 2` (computed) `= n(1/n + 1/n)` | holds | none |
| 23 | Ozawa's lemma (§2.4) | `h = diag(1/3, 2/3)` | `tr_3 φ(e₁₂)φ(e₂₁) = 1/3 = tr_3 φ(e₁₁)`; with `max` instead of `min`: `2/3` (computed) | `min` is essential | Check added |
| 24 | Ozawa bound, rank one (§2.4) | `c² ∈ [0,1]`, 1001 points | `1 − c² ≤ 2^{3/2}(1 − c²)^{1/4}` everywhere (computed) | holds | none |
| 25 | Bidual extension unique (§2.5) | `c₀`, `δ_1 + lim_U` | norm `2`, not normal | uniqueness only among weak-star continuous extensions | wording |
| 26 | Amenable trace definition (§3.1) | `M_n` with unnormalized trace; CAR with star-homomorphism model | `Tr(id(1)) = n ≠ 1`; CAR has no nonzero finite-dimensional representation | both wrong models excluded | Checks |
| 27 | Quasidiagonal vs amenable (§3.1) | compressions of `C(𝕋)` | 2-norm defect `→ 0`, norm defect `1` | different approximants; equality of the sets is open (brown2006, line 1085) and not claimed | none |
| 28 | Uniform amenable definition (§3.1) | root-of-unity maps | `‖tr_n ∘ φ_n − m‖ = 2` (mutually singular measures) | pointwise ≠ norm | Check |
| 29 | Unitization of the classes (§3.2) | `c₀`, `δ_1`; UAT constant | same approximant `x ↦ x_1`; `|λ| ≤ ‖a + λ1‖` gives factor `2` | holds | constant `2` stated |
| 30 | Convexity (§3.3) | `(1/3)pr₁ + (2/3)pr₂` | exact block approximant `diag(a,b,b)` | holds | none |
| 31 | Closure of `UAT` (§3.3) | brown2006 Remark 4.1.7 | weak-star limit of UAT traces not UAT | only norm closure is true | stated |
| 32 | Pullback (§3.4) | corner `M_3 → M_4` | `tr_4(diag(1,1,1,0)) = 3/4` | not a state | hypothesis "`τ ∘ ι` a state"; §6.3 normalizes |
| 33 | Tensor products (§3.5) | `tr_k ⊗ tr_l`; `τ_{F₂} ⊗ tr_2` | `= tr_{kl}`; pullback along `x ↦ x ⊗ 1` is `τ_{F₂}` | consistent | none |
| 34 | Hypertrace (§4.1) | `ℂ²` diagonal, `ψ′ = ⟨ξ, ·ξ⟩`, `ξ = (1,1)/√2` | `ψ′(e₁₁e₁₂) = 1/2`, `ψ′(e₁₂e₁₁) = 0` | not a hypertrace although `ψ′|_A = (1/2,1/2)` | Check |
| 35 | Hypertrace ⇒ amenable (§4.2) | `ψ(T) = T₁₁/3 + 2T₂₂/3` | restricted Ozawa map `(a,b) ↦ diag(a,b,b)` recovers `(1/3, 2/3)` | holds | none |
| 36 | Connes–Kirchberg (§4.4) | `M_n`; `ℂ⊕ℂ`, `pr₁` | `Φ = id`; `Φ(T) = T₁₁`; `μ = ac` | holds; representations must be unital for (f) to give u.c.p. maps | "faithful representation" means unital |
| 37 | Følner converse (§4.5) | `ℂ²` diagonal in `B(ℂ²)`, `τ = (1/3, 2/3)` | rank-one projection with compressed trace `1/3` has normalized commutator `2/3` (computed) | converse false without general position | hypotheses `A ∩ K(H) = 0`, separability |
| 38 | Amenable ⇔ injective, tracial vN (§4.6) | `L(F₂)`, `L∞[0,1]`, `M_n` | `L(F₂)` not injective ⇒ trace not amenable; consistent with restriction to `C*_r(F₂)` | consistent | none |
| 39 | Weak nuclearity (§5.1) | `id_{B(ℓ²)}` | weakly nuclear (compressions), not nuclear | the two notions differ | Check |
| 40 | Commuting-range lemma (§5.1) | `β = id`, `y_{kl} = e_{lk}` | `Σ e_{kl}e_{lk} = 2·1` (computed) vs flip of norm `1` | commutation essential | Check |
| 41 | UAT ⇔ injective (§5.2) | `C*(F₂)` regular trace; `C(𝕋)` | amenable, `L(F₂)` not injective; arc averages give `tr_n ∘ φ_n = m` exactly | consistent | separability only for "hyperfinite" |
| 42 | Nuclear ⇒ UAT (§5.3) | `K(ℓ²)`; CAR | `T(K(ℓ²)) = ∅`; CAR trace UAT | vacuous / holds | none |
| 43 | Exact case (§5.4) | `C*(F₂)` (not exact); `C*_r(F₂)` (exact) | AT without injectivity; both sides fail | exactness needed | none |
| 44 | Dominated traces (§6.1) | `ℂ²`, `γ = (1/2,1/2)`, `τ = (1,0)`, `s = 1/2`; `γ = (1,0)`, `τ = (0,1)` | `P = e₁₁`; no `s > 0` | holds | none |
| 45 | Faces (§6.2) | `C*_r(F₂) ⊕ ℂ` | `AT = {χ ∘ pr₂}`; mixtures with `t > 0` excluded via pullback along `x ↦ (x,0)` | holds; face property of `AT_QD` open (brown2006, line 1269), not claimed | none |
| 46 | Normalized restriction (§6.3) | corner; `λ ↦ (0, λ)` with `pr₁` | `(3/4)·1 + (1/4)·0 = 3/4` at `1_{M_3}`; `c = 0` | needs `c > 0` | hypothesis |
| 47 | Passage to `π_τ(A)` (§6.4) | `C*(F₂) → C*_r(F₂)` | amenable regular trace, non-amenable `τ_{F₂}` | splitting needed for `AT` | hypothesis kept |
| 48 | Extension from ideals (§6.5) | `K ⊆ B(ℓ²)`; `M_2 ⊕ 0 ⊆ M_2 ⊕ ℂ` | vacuous; `γ = tr_2 ∘ pr₁` | holds | none |
| 49 | Commutative QD (§7.1) | `C[0,1]`, `f(x) = x`, `n = 10` | Riemann sum `0.55 = (n+1)/(2n)` (computed) `→ 1/2` | holds | none |
| 50 | AF (§7.2) | CAR; `K(ℓ²)` | exact recovery `tr_{2^n} ∘ φ_n = τ`; no trace on `K(ℓ²)` | existence needs a unit | hypothesis "nonzero unital" |
| 51 | Canonical trace (§7.3) | `ℤ`, finite `Γ`, `x ↦ ⟪δ_g, xδ_e⟫` | `τ_ℤ(λ_n) = ∫z^n dm`; `|Γ|⁻¹Tr`; value `0` at `1`, `1` at `λ_g` | wrong vector not positive | Check |
| 52 | Translation convention (§7.3) | `Γ = ℤ`, `f = δ_0` | `λ_1M_{δ_0}λ_1* = M_{δ_1}`; `f(gx)` gives `M_{δ_{−1}}` | pinned | witness |
| 53 | QD algebra ⇒ QD trace (§8.1) | `SO₂`; Toeplitz | no tracial state; not QD but QD traces | unit needed; converse false | hypothesis "nonzero unital" |
| 54 | States of QD algebras (§8.2) | `δ_1` on `C(𝕋)`; brown2006 Cor. 4.3.8 | exact factorization; traces cannot replace states | holds | none |
| 55 | Faithful QD trace ⇒ QD (§8.3) | Toeplitz; `ℂ⊕ℂ` | non-faithful QD traces on a non-QD algebra; constant faithful approximant | faithfulness needed | separability from C8.3 |
| 56 | Rosenberg (§8.4) | `ℤ`, `F₂`, finite `Γ` | `C(𝕋)` QD; `C*_r(F₂)` not QD | consistent | none |
| 57 | AF subalgebras (§8.5) | `A = 0`; `M_3 ⊆ CAR`; `C(𝕋) ⊆ CAR`; `C*_r(F₂)` | no trace; norm `3/4`, normalized `tr_3`; binary expansion pushes Bernoulli to Lebesgue | `target.md` statement false without normalization and `A ≠ 0` | corrected |

Context and generality: every statement carries its hypotheses in the README sentence and in
`plan.json`'s `hypotheses`; the generality of the two agrees (nets for arbitrary algebras,
separability only where listed above). Vacuity: every headline mentions the roadmap's own objects
(`T(A)`, `AT`, `AT_QD`, `UAT`, hypertraces, `μ_τ`, `π_τ(A)''`). Duplication by object: Mathlib at
the pin has `CompletelyPositiveMap` without composition or norm API, GNS without cyclic-vector
theorems, `CStarMatrix`, `Matrix.trace`, the Frobenius norm and the opposite C*-algebra, and
nothing on tracial states of C*-algebras; Tau Ceti has no C*-algebra or matrix material of use
(its matrix folder is over `ℝ`).

## Ownership

- Searched (`roadmaps grep`, main and all 454 open roadmap pull requests at their heads, and the
  board packages): `amenable trace`, `quasidiagonal trace`, `hypertrace`, `uniform(ly) amenable`,
  `Connes.Kirchberg`, `weakly nuclear`, `tracial state`, `TracialState`, `IsTracial`. No roadmap
  or package defines amenable, quasidiagonal or uniform amenable traces or C*-algebraic
  hypertraces. Hypertraces on `B(L²M)` for finite von Neumann algebras are VonNeumannAlgebras
  V13b's (and are consumed by Subfactors and FactorRigidity); §4.6 identifies them with the
  C*-algebraic ones in standard form, so nothing is planned twice.
- Tracial states of C*-algebras appear as hypotheses in OperatorAlgebraDynamics D7,
  FreeProbability, TypeAHeckeAlgebras, NoncommutativeIntegration, OperatorKTheory and
  TemperleyLiebOperatorAlgebras; none plans their theory, so this roadmap owns it. VonNeumannAlgebras
  V5's `IsTracialState` is on the `VonNeumannAlgebra` carrier and is cited.
- Weakly nuclear maps into von Neumann algebras with Lance's criterion (§5.1) and the normal
  extension of c.p.c. maps into matrices to the bidual (§2.5) are general C*-to-W* bridge lemmas
  planned nowhere; they are owned here because the trace theory is their only use, and a later
  CStarAlgebras Part II could absorb them.
- **Notions moved down from later roadmaps:** none. Every notion used is either owned here or
  supplied by a roadmap on main, earlier in the merge order, or a new-roadmap pull request of
  another author (CStarAlgebras, VonNeumannAlgebras, CStarClassification).

## Proposed Part IIs

- **CStarAlgebras, Part II**: state Voiculescu's compression step (a u.c.p. map into `M_n` is a
  point-norm limit of compressions by isometries, for `A ∩ K(H) = 0`) without separability, which
  would remove the separability hypotheses from the converse of §4.5; and absorb §2.5 and §5.1.
- **AmenableTracesOnCStarAlgebras, Part II**: uniform quasidiagonal and locally
  finite-dimensional traces, `AT_QD = UAT_QD` for locally reflexive algebras (brown2006, Theorem
  4.3.3), traces on type I algebras (§4.4 of brown2006), the WEP theorem (Proposition 4.2.2),
  Kirchberg's factorization property (Theorem 4.1.9), and Brown's II₁-factor representations of
  Popa algebras.
- **OperatorAlgebraDynamics, Part II** and **FreeProbability, Part II** as consumers of Layer 1.

## Gaps

None. Two supplier contracts rest on terse wording and are recorded here for the reviewer:
CStarAlgebras C8.2 lists "the finite-set isometry and compression approximations" as part of its
proof, which §4.5 consumes in the explicit form written in the README's contracts; and
CStarAlgebras C7.1's nuclear embeddability is consumed without separability, as stated there.

## Sources

- Read in the worker's cache this run: `brown2006` (Chapters 2–4, lines 340–2010),
  `schafhauser2020` (lines 60–115), `tikuisis-white-winter2017` (lines 45–60 and 355–470). Every
  locator in the README was checked against these texts.
- Cited by locator without the text (settled in the manifest): `kirchberg1993` (uncertified),
  `brown-ozawa2008`, `connes1976`, `paulsen2002`, `pedersen2018` (waived). None carries a
  statement that the certified texts do not also support; `kirchberg1993` is needed for no proof.
- Numbering: the arXiv v2 numbering of the three open texts is cited; the published versions were
  not compared (publisher copies are not readable). This is recorded in each `version_note`.
- No `needs-references.toml` was written: no text is missing.

## Dependency check

Command: the gate with `--candidate packages/AmenableTracesOnCStarAlgebras/design/README.md
--only AmenableTracesOnCStarAlgebras` against the board's merge order and the content checkout.

```
candidate: AmenableTracesOnCStarAlgebras is not in the merge order yet; checked as if placed after CStarClassification (the intake inserts it when its design is accepted)
note: supplier CStarAlgebras of AmenableTracesOnCStarAlgebras is not in the merge order; it must be inserted before AmenableTracesOnCStarAlgebras
depcheck: 235 roadmaps, 2165 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The note concerns CStarAlgebras, another author's open pull request
adding a new roadmap folder, which the brief allows as a supplier; it must enter the merge order
before this roadmap.

Citation resolver (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name
found nowhere. Ownership against open pull requests was checked with the roadmap tools over all
open heads, as listed above.

## Suspicious text

None. No fetched text, roadmap or report contained instructions.
