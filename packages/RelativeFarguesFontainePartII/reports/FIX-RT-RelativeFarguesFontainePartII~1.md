# FIX-RT-RelativeFarguesFontainePartII~1

This round settles both red-team passes, `r1a` (17 findings) and `r1b` (14 findings). The sections below give the findings of r1a first (F01–F17), then those of r1b (F01–F14), each headed by the id the review gives it. Five findings appear in both passes: r1a-F05 = r1b-F04, r1a-F09 = r1b-F06, r1a-F10 = r1b-F08, r1a-F13 = r1b-F11 and r1a-F15 = r1b-F03. Each overlap is settled once and both copies cite that settlement. Files edited: `packages/RelativeFarguesFontainePartII/README.md`, `packages/RelativeFarguesFontainePartII/Suggested.lean`, and the `gaps` list of `packages/RelativeFarguesFontainePartII/design/plan.json` (one section label).

## F01 (P1) — applied

Verified. For |a|=ρ put z=[a]^p/p. Then z^n=((pn)!/p^n)·γ_(pn)([a]), and v_p((pn)!/p^n)=(n−s_p(n))/(p−1)→∞. So 1−z is a unit of B_cris,ρ⁺. But p(1−z)=p−[a^p] vanishes at radius ρ^p<ρ, so its inverse is not in B. This matches FF17 line 3942 (B⁺_(ρ^p)⊂B⁺_cris,ρ⊂B⁺_ρ, and B⁺_ρ sees only radii ≥ρ). §1.13 API: "the indicated subring B_cris,ρ⁺ of B" → "natural inclusion in the single-radius ring B_ρ⁺ (§1.5); not a subring of B". The witness is added as a Check, for general p with the p=2 values n−s₂(n)=0,1,1,3. No other place claims inclusion in B.

## F02 (P1) — applied differently

Verified. FF17 Definition 1.4.7 (line 2660) sets |·|₀=q^(−v_π), and Definition 1.6.2 completes for all ρ∈I. So for f_k=a^k, |a|=1/2, the partial sums are not Cauchy in B_[0,1/2]. §8.2's convergence claim is replaced. Σf_k⁻ converges on I_plus; Σf_k⁺ converges on every compact J⊆I_minus∖{0}, with |·|_ρ≤sup_k|f_k|_(sup I). The limit is then extended across 0 by the §1.2 boundedness criterion (N=0), and §1.2 is added to Needs. This route replaces the reviewer's Witt-carry wording. The witness is a Check. Same pattern elsewhere: §1.2's route ("sum the differences in the boundary-completed ring", which follows FF17 Proposition 1.9.1's double series, line 3654) is replaced by a coefficientwise construction through §1.1. FF17 Lemma 11.2.6 and Proposition 1.9.1 share this gap.

## F03 (P2) — applied

Verified: Γ=√2·ℤ[1/2] has 2Γ=Γ and 1∉Γ. §1.11 now defines T^α=[t^α], picks γ₀∈Γ with γ₀>0 and T₀=[t^γ₀], and sets Bᵇ=A[1/π,1/T₀]. Independence of γ₀ holds because T₁^N=T₀·[t^(Nγ₁−γ₀)] when Nγ₁>γ₀. The proof's exponent bound becomes −Mγ₀. The first Check is made conditional (norm 2^(−γ₀)), and the √2 example is added as a Check. §1.7 uses ℤ[1/p]∋1, so it needs no change.

## F04 (P1) — applied

Verified at the pin: `Mathlib/RingTheory/Perfectoid/FontaineTheta.lean` closes `WittVector` at line 190 and declares the root `surjective_fontaineTheta` at line 195. The contract now names it in the root namespace (the §2.3 Needs line was already correct).

## F05 (P3) — applied

Verified at the VectorBundlesAndIsocrystals head: VB3 has `banach-colmez-space-definition` ("Banach–Colmez section and hypercohomology sheaves") and no "general" section. §11.6 Needs now reads "VB3, Banach–Colmez section and hypercohomology sheaves (banach-colmez-space-definition); gap:positive-degree-two-obstruction". The plan gap's `section` changed from "VB3 general-BC" to "VB3 banach-colmez-space-definition"; slug and needs are unchanged.

## F06 (P2) — applied

Verified: x=1 and x_m=1+π^m differ, yet |x−x_m|_ρ<1. §1.11 proof now says the term values agree by the ultrametric inequality, hence the π-valuations agree, while the coefficients themselves may differ. This is enough to transfer well-ordering and bounded denominators.

## F07 (P3) — applied

Verified: FF17 line 3047 is Corollary 1.6.17 on PDF page 83 (printed 73), line 3053 is Definition 1.6.18 (printed 74), and line 3094 is Definition 1.6.21 (printed 75). The §0.7 locator is corrected accordingly.

## F08 (P1) — applied

Verified: the §8.5 route used the §8.9 gluing theorem, while §8.9 needs §8.5. The sentence identifying the systems with O-modules leaves §8.5 and becomes a corollary at the end of §8.9's statement, via §8.3 and the gluing theorem; §8.1 is added to the §8.9 Needs. §8.5 keeps only the definitions, restriction and cofinality.

## F09 (P3) — applied

Verified. Nothing in §2.12's statement or route uses coefficient change, so the §2.13 edge is removed. Layer 6 is physically reordered and renumbered. Old §6.4→§6.3, §6.6→§6.4, §6.7→§6.5, §6.8→§6.6, §6.3→§6.7, §6.5→§6.8; §§6.1–6.2 and 6.9–6.11 are unchanged. Every internal `§6.k` reference was remapped; the `AdicSpaces §6.x` citations were left alone. A mechanical scan of all *Needs:* lines finds no forward reference.

## F10 (P2) — applied differently

Verified that the Hahn field is native (`HahnSeries.instField`, Summable.lean line 885; `HahnSeries.order`, Basic.lean line 358; `HahnSeries.C`, Multiplication.lean line 790). Added `exists_hahnSeries_automorphism_rescaling_order`. The positive-order hypotheses already imply x,y≠0, so separate nonzero binders were dropped. No nested-ball predicate was added for the general maximally complete field. Instead the README states that Poonen93 Corollary 6 makes every such field (residue 𝔽̄_p, value group ℚ) isomorphic to this Hahn field, which transports the statement. The docstring keeps the primitive-point orbit theorem as not statable.

## F11 (P2) — applied differently

The owner is real, but it is VB2, not VB1: `norms-on-twisted-invariants` sits in Layer VB2 at the VectorBundlesAndIsocrystals head. §6.1 now imports the Banach topology and its independence of sufficiently small radii from VB2, Norm topology on twisted Frobenius invariants (standard slope-d/h module). It proves here only the extension to every compact fundamental interval and the quotient transport. This supplier is added to the §6.1 Needs and to the VB contract.

## F12 (P3) — applied

Verified: the term values are q^(−1+p^(−n))>1/q. The threshold set is now {1−p^(−n): n≥0}, of order type ω (for p=q=2: {0,1/2,3/4,…}).

## F13 (P3) — applied

Took the reviewer's alternative: the SGA 1 clause is deleted from §10.3's locator. The finite étale quotient is already the declared gap `finite-group-free-scheme-quotient`, so no new manifest key is needed.

## F14 (P2) — applied

Verified: ord_y(0)=+∞. §5.6 now says M(Y_I) is a field (injective field transitions) and defines div(f) only for nonzero f; a Check excludes 0. §5.7 now reads B={0}∪{f∈M(Y)×: div(f)≥0}, with the witness as a Check. §3.6 already said "for nonzero f".

## F15 (P1) — applied

Verified at the PadicDifferentialEquationsAndRigidCohomology head: §RD.0.10 is about product slopes and domains (line 974), §RD.0.24 is analytic Bézout (line 1362) and §RD.0.29 is Γ_an,r/Γ_an,con Bézout (line 1500). §5.4's statement and Needs now cite §RD.0.29 (discrete-Cohen comparison only) and §RD.0.24 (spherically complete Laurent comparison only).

## F16 (P3) — applied

Verified: σ(a)/a=(1−s)/(1+s)≠1, and an invariant scalar leaves the ratio unchanged. The false Check is replaced by the characteristic-3 example; the coboundary 1+s is what makes the generator invariant.

## F17 (P3) — applied

The four commentary bullets are deleted (§§6.9, 7.2, 9.5, 11.6). In §0.9 the uninstantiated and commentary Checks are replaced by f=π[a] with v_F(a)=−r: values (0,1) and (0,−1), reversed for f⁻¹. Both are power-bounded, so neither directional valuation lies in Spa(B_I,B_I°). In §1.5, π^n (norm ρ^n→0 at ρ, but 1 at radius 1) replaces the uninstantiated and commentary topology Checks.

## F01 (P2) — applied differently

The theorem is statable, as claimed. Added `exists_untilt_padicComplex_not_continuouslyIsomorphic`, with two corrections to the proposed signature:

- The proposed statement holds trivially at K=ℂ_p^♭: characteristic p, v(p)=0<1, tilt ℂ_p^♭. So `0 < Valued.v (p : K)` is added.
- The K-side `Fact` is placed in an existential. The `Fact (¬IsUnit (p : 𝓞_ℂ_[p]))` needed for `PreTilt 𝓞_ℂ_[p] p` is an instance binder, since there is no pinned instance.

The README proves that a continuous isomorphism is a homeomorphism (valuation-ring overring argument), so the statement is equivalent to KT16 Theorem 1.3. The Mathlib contract now lists `PadicComplex`, `PadicComplexInt`, `PreTilt` and `PreTilt.untilt` with file and line, and the docstring is updated.

## F02 (P2) — applied differently

Verified: VB−1 supplies the DVR only at geometric points. §3.6 now imports ord_y only for algebraically closed F. §4.7 gains a target for compact J: the a_y-adic completion of B_(F,J) is a complete DVR with residue field K_y and ord_y=ord_z for every geometric z above y. The proof is algebraic rather than the proposed Galois-invariants route: B_(F,J) is a domain and B/(a_y)=K_y is a field, so each graded step a^k B/a^(k+1) B is one-dimensional. A length-2 Check is added. §§5.2 and 5.6 now list §4.7 in Needs.

## F03 (P3) — applied

Settled with r1a-F15.

## F04 (P3) — applied differently

Settled with r1a-F05. "Two-term Banach–Colmez geometry" is not cited for the representability range: that section explicitly asserts no perfectoid representability.

## F05 (P3) — disputed

The proposed bound does not hold up. FF17 line 5794 prints |z_i|=‖y‖^d and |w−π^d|₁≤‖y‖^d. But FF17 Definition 3.4.1 (lines 5720–5723) sets ‖y‖=|a₀|^(1/d)=|z_i|, and the linear term of w−π^d has norm |Σz_i|, which can be ‖y‖. With the correct |w−π^d|₁≤‖y‖, the source argument gives only ρ^(−d)√s. The Check is reworded to say exactly this, with values: 1/4 at d=1 and 2^196 at d=100, against 1/16 for the roadmap's own bound. The `||y_i|↦0` typo is fixed.

## F06 (P3) — applied

Settled with r1a-F09.

## F07 (P3) — applied

Verified: on [a]π^n both sides give q^(−(n+v/r)), and VB's point action (precomposition, ρ_VB↦qρ_VB) is the inverse of (a)↦(φ(a)). The dictionary and its two-term witness are added to the VB−1 contract.

## F08 (P3) — applied

Settled with r1a-F10.

## F09 (P3) — applied differently

Took option 2. The headline is the B⁺ assertion. The A[1/p] step could only be stated through a long ad hoc encoding (Witt coordinates y_i^(p^i), rational powers through inverse Frobenius, a convex ℤ[1/p]-sequence with irrational limit). The docstring now says that only B⁺ is missing and that the tilt is `PreTilt 𝓞_ℂ_[p] p`.

## F10 (P3) — applied

Verified: `isOpenMap` is at line 228 and `exists_nonlinearRightInverse_of_surjective` at line 278. The contract now reads "(lines 228 and 278)".

## F11 (P3) — applied

Settled with r1a-F13.

## F12 (P3) — applied

Verified: FF17 line 14810 takes endpoints in |F|∩[0,1[, and so does Proposition 11.2.18 (line 14907) for descent. §§9.1 and 9.3 now read "endpoints in |F|∩[0,1), the endpoint 0 allowed".

## F13 (P3) — applied differently

The absolute value is added: "|v_y(f)−v_z(f)|≥delta(y,z)". The reviewer's witness is wrong in one point. FF17's d (line 4742, d(y₁,y₂)=v_(y₁)(θ_(y₁)(a₂))) is the valuation-type quantity, i.e. this roadmap's δ, not q^(−δ). So the refuting instance stays 0≥δ.

## F14 (P3) — applied

Verified at the RelativeFarguesFontaine head: §§0.6, 0.9, 0.11, 0.12 and 0.14 plan the truncations, the diagonal, the Q-twisted vectors, the Q-Teichmüller lift and the Lubin–Tate lift. It is later in the order (line 143, after this roadmap at line 140). The scope paragraph now says that §0.1 owns the truncations, diagonal, Q-twisted comparison and [a]_Q, and §2.10 owns [x]_LT, and that RelativeFarguesFontaine's coefficient layer consumes them.

## Checks

- `lake env lean packages/RelativeFarguesFontainePartII/Suggested.lean`: success. The only output is three `declaration uses 'sorry'` warnings, at lines 42, 64 and 79.
- `#check @name` for all three declarations in one scratch file, compared against the README:
  - `exists_strict_laurentClosure_endomorphism`: unchanged; all binders present.
  - `exists_untilt_padicComplex_not_continuouslyIsomorphic`: keeps the p-primality and `Fact ¬IsUnit (p : 𝓞_ℂ_[p])` binders, and the existential carries `Field`, `Valued K ℝ≥0`, completeness, algebraic closure, 0<v p<1 and the K-side `Fact`.
  - `exists_hahnSeries_automorphism_rescaling_order`: keeps p-primality and both positive-order hypotheses.

  No binder was lost, and nothing changed after the comparison.
- Depcheck output: `depcheck: 56 roadmaps, 651 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve`: no unresolved cross-roadmap citation or Lean name.
- No gate failures were listed for this round.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §1.13 B_cris,ρ⁺ vs B | p=2,3; z=[a]^p/p | v_p((pn)!/p^n)=(n−s_p(n))/(p−1): p=2 gives 0,1,1,3; p=3 n=3 gives 1; zero radius ρ^p (1/4 at ρ=1/2) | Inclusion only in B_ρ⁺ |
| §8.2 splitting | f_k=a^k, I={1/2}; trivial I∋0 | annular 2^(−k)→0; radius-0 norm 1; limit a/(1−a)∈O_F | Route via §1.2 |
| §1.11 localization | Γ=√2ℤ[1/2], γ₀=√2; Γ=ℤ[1/2], γ₀=1 | 1∉Γ; |T₀|=q^(−√2); T₁^N=T₀[t^(Nγ₁−γ₀)] | γ₀-independent |
| §1.11 approximation | x=1, x_m=1+π^m, ρ=1/2, c=1 | error 2^(−m)<1; term values 1=1; v_π both 0 | Equal term values, not coefficients |
| §4.7 completion | deg 2, n=2; deg 3, ord 2 | length of B/(a_y²)=2 (not K_y×K_y); Newton jump 3·2=6=2+2+2 | DVR, unramified pullback |
| §5.6–5.7 divisors | 0, 1, 1/a_y | 0 excluded (ord=+∞); div 1=0; coefficient −1 | B={0}∪{div≥0} |
| §4.3 Check | char 3, a=(1+s)(π−t) | σ(a)/a=(1−s)/(1+s); ·(−1) unchanged | Check corrected |
| §0.9 Check | f=π[a], v(a)=−r | v_r=0; values (0,1),(0,−1); f⁻¹ reversed; norm 1 | Rank-one model excluded |
| §1.5 Check | π^n | |π^n|_ρ=ρ^n→0; |π^n|_1=1 | Topologies differ |
| §4.8 Check | s=2^(−8), ρ=1/4 | ours 1/16 (d=1,100); ρ^(−d)√s=1/4 and 2^196 | Source derivation inconsistent |
| `exists_untilt_…` | K=ℂ_p^♭; K=ℂ_p with v∘τ for a discontinuous τ | char p: 0<v(p) fails, so excluded; τ: (K,v∘τ)→ℂ_p is a continuous isomorphism, so excluded | Hypothesis 0<v p added |
| `exists_hahnSeries_…` | x=t, y=t²; z=0; p=2,3 | ratio 2; order σ(t^(1/2))=1; 0=2·0 | Positive order rules out 0/0 |
| VB−1 dictionary | [a]π^n, v_F(a)=v | n_ρ=q^(−(n+v/r)) = VB value at 1/r; π−[a]↦π−[a^q], r↦qr | Inverse point actions |
| §9.1/9.3 endpoints | I={0}; I=[0,ρ] | FF17 lines 14819–14820 treat I={0} first | 0 allowed |

## Ownership and sources

Ownership was checked by object against main, the board packages and the listed open heads: VectorBundlesAndIsocrystals (VB2 twisted-invariant norms, VB3 Banach–Colmez), PadicDifferentialEquationsAndRigidCohomology and RelativeFarguesFontaine. No new target here duplicates an owner. The §4.7 completion at degree-d points is owned here, because VB−1 covers only geometric points. No source was fetched: the SGA 1 mention was removed, and every other locator uses the cached FF17, KT16 and Poonen93. `needs-references.toml` was not created.

## For the maintainer

- The Layer 6 sections are renumbered: old §6.3→§6.7, §6.4→§6.3, §6.5→§6.8, §6.6→§6.4, §6.7→§6.5, §6.8→§6.6. Other roadmaps that cite these numbers need updating.
- `design/plan.json` still has `VectorBundlesAndIsocrystals:VB3:general-BC` outside `gaps` (around lines 5177 and 5238), and its section numbering predates the Layer 6 reorder. This job may edit only `gaps`, so those entries were left alone.
- There are two new Lean names: `exists_untilt_padicComplex_not_continuouslyIsomorphic` and `exists_hahnSeries_automorphism_rescaling_order`.
- RelativeFarguesFontaine §§0.6, 0.9, 0.11, 0.12 and 0.14 should cite this roadmap's §0.1 and §2.10 instead of rebuilding those objects.
- FF17 Proposition 1.9.1 / Lemma 11.2.6 (sums taken in the radius-zero topology) and Lemma 3.4.5 (|z_i|=‖y‖^d) are source issues that could be recorded in `sourceIssues`.
