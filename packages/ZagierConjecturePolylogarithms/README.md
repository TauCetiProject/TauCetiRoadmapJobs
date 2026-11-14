# Roadmap: polylogarithms, part II: the weight-four Zagier theorem

**Summary.** Prove Zagier's conjecture in weight four for every number field, in the form of Goncharov and Rudenko: there are `r₂` explicit weight-four cycles whose zeta-normalized `L₄` determinant is a nonzero rational multiple of `ζ_F(4)`, and every family of explicit weight-four cycles has a rational, possibly zero, multiple. The explicit trilogarithm group, the inductive Bloch groups, the Zagier determinant and its three assertions, the explicit weight-four cycles, the weight-three configuration complexes and the decorated flags with their acyclic resolution are imported from Polylogarithms; the single-valued polylogarithms from PolylogarithmFunctions; the rational pre-Bloch group from K3BlochGroups; Borel's regulator lattice and its zeta covolume from BorelRegulators. This roadmap builds the proof-specific weight-four mathematics on top of them: the specialized relation presentations `L₃` and `L₄` of single and double symbols, type-A cluster polylogarithm maps on Stasheff polytopes, the weight-four Lie coalgebra and its extension `0 → B₄ → L₄ → Λ²B₂ → 0`, framed mixed Hodge–Tate structures with their canonical real period in Goncharov's Hodge complex and its comparison with the real Deligne complex, motivic and Hodge correlators on punctured lines with collision continuity, base-point change and depth reduction, the signed weight-four flag-to-configuration map and the Grassmannian configuration chain map with its degree-eight cancellation, scissors-congruence groups and the trilogarithmic scissors map, the combinatorial lift of the Grassmannian tetralogarithm to `L₄` over every infinite field, the residue-compatible polylogarithmic Chern cocycle with its nonzero regulator normalization, the map `κ:K₇(F)_ℚ → ker δ₄` and the periods of every explicit cycle. The end theorems are `zagier_four_exists` and `zagier_four_everyFamily`.

## Scope and ownership

This roadmap owns:

- the raw single and double symbol modules in weights three and four, Goncharov–Rudenko's one-parameter specialization table, the specialized presentations `L₃(F)` and `L₄(F)`, the isomorphism of `L₃(F)` with the explicit trilogarithm group and the cobrackets on both presentations (Layer 1);
- oriented Stasheff cell complexes `K_m` as finite combinatorial complexes, the cluster two-forms of polygon triangulations and the weight-four cluster polylogarithm maps on cells of dimension at most three, with their boundary identities (Layer 2);
- the weight-four Lie coalgebra `U ⊕ B₂ ⊕ L₃ ⊕ L₄`, its single-symbol subspace `B₄(F)`, the explicit weight-four complex `Γ(F,4)`, the extension theorem, the cyclic shuffle coalgebra of a punctured line and its special derivations, framed mixed Hodge–Tate structures with their Lie coalgebra, canonical real period and its comparison with the real Deligne complex, variations of mixed Hodge–Tate structures on punctured curves with their rigidity, motivic and Hodge correlators, collision continuity, base-point change, depth reduction and the realization of the combinatorial coalgebra (Layer 3);
- the weight-four Bigrassmannian quotient, the signed flag-to-configuration map into it, the resulting maps from group homology to the dual weight-four Bigrassmannian, the Grassmannian group `G₄(F)`, the normalized weight-four configuration formulas, finite symbolic Bloch modules and the configuration chain-map identities (Layer 4);
- the canonical weight-four period and its calibration on cycles, the normal-crossing coefficient diagram, the weight-four current regulator, the scissors-congruence groups `A₂(F)` and `A₃(F)` with Goncharov's map `a₃`, the Grassmannian tetralogarithm with its motivic lift over number fields and its combinatorial lift `G₄(F) → L₄(F)` over every infinite field, the generic and residue-extended Chern cocycle and its normalization (Layer 5);
- the K-theory comparison maps `K_{8-i}(F)_ℚ → H^iΓ(F,4)` for every infinite field and `i = 1,…,4`, the regulator of `κ`, the periods of every explicit cycle, the weight-four Zagier theorem, and the transfer to inductive cycles: explicit raw weight-four cycles are inductive raw cycles, so existence transfers, and every-family rationality holds for inductive cycles whose cycle obstruction vanishes or whose period columns lie in the rational regulator span; no map of complexes from `Γ(F,4)` to the inductive weight-four complex is constructed (Layer 6).

It leaves to other roadmaps, by section:

- **PolylogarithmFunctions** §1.1 (the classical `Liₙ`), §§4.2, 4.6–4.7 (Zagier's single-valued `Lₙ`, inversion, conjugation, continuity on `ℙ¹(ℂ)`), §§5.1–5.2 and 5.7 (the Bloch–Wigner function `D = L₂` and its five-term relation). The definitions `polylog` and `singleValued` here restate its formulas in natural weights so that the headline typechecks at the pins.
- **K3BlochGroups** §§3.2–3.5 and 3.8: the projective cross-ratio, the admissible five-term relations, the rational pre-Bloch group `B₂(F)` and its boundary to `Λ²U(F)`.
- **Polylogarithms** §2.1 (descent of `D` to `B₂`), §2.2 (the rational primitive Hurewicz isomorphism and the rank filtration), §3.1 (the explicit trilogarithm group `B₃(F)`, its 22-term relation and its cobracket), §3.2 (the complexes `Γ(F,n)` for `n ≤ 3` and the universal cycle predicates), §3.3 (exterior residues), §3.4 (generic vector configurations `C_m(q)` with deletion `∂` and projection `p`, the weight-three Bigrassmannian, decorated flags with their genericity, the acyclic generic decorated-flag resolution and its comparison with a projective resolution), §3.5 (projected and triple ratios and the weight-three configuration maps `r₄,r₅,r₆`), §3.6 (Gale duality), §§4.1–4.3 (inductive Bloch groups, their complexes and analytic evaluation), §4.4 (the Zagier determinant, its three assertions and zagierPeriod_calibration), §4.5 (the explicit raw weight-four cycles and the universal weight-four cycle test), §4.6 (the cycle obstruction), §4.7 (the totally real even-weight case) and Layer 5 (currents, the normalized current dictionary, logarithmic `r` forms, raw Deligne regulators and the universal regulator comparison). The functions `unitVector`, `trilogCyclic` and `TrilogRelationFunction`, the predicate `IsCycle4` and the weight-four specialization `zagierDeterminantFour` of its normalized period restate those definitions so that the headline typechecks at the pins.
- **BorelRegulators** §1.1 (Tate coordinates `Vₙ(F)`), §§2.2–2.3 (Borel's regulator and its real isomorphism), §§5.3–5.4 (the regulator lattice and its zeta covolume on every rational basis), §6.0a (the universal Deligne Chern class on the simplicial classifying variety) and §6.2 (the comparison `r_Bo = −2 r_Be`).
- **MotivicEtaleKTheory** §§3.3–3.4 (the compactification-independent logarithmic Deligne complex) and §7.1 (the universal Deligne Chern character).
- **PeriodsAndSpecialValues** PS.3.0 (the number-field Tate-Hom comparison with Adams-weight K-theory), PS.9.3 (tangential regularization of iterated integrals), PS.9.8–PS.9.9 (mixed Tate motives and their extension groups) and PS.9.10 (the motivic path torsor of a punctured line), with the extensions to number fields and arbitrary punctures stated as its contracts below.
- **MotivesAndAlgebraicCycles** §3.6 (Tannakian categories and neutral fibers), §§6.1–6.3 (neutral reconstruction of the group of tensor automorphisms, its coordinate Hopf algebra and functoriality along tensor functors) and Layer 4 (geometric motives).
- **HodgeStructures**, Layer L2: mixed Hodge structures and strictness, implemented at the pinned Tau Ceti as `TauCeti.Hodge.MixedHodgeStructure` with its abelian category and strictness theorem (supplier contracts below). Framed mixed Hodge–Tate structures, their variations on punctured curves, correlators and their periods are built here on that layer; the native structure carries no variation, framing or period map.

The theorem for totally real fields, where the determinant is empty, is Polylogarithms §4.7's zagierExistence_totallyRealEven; the existence headline here covers every number field and uses that theorem when `r₂ = 0`. FukayaTheory's oriented associahedra are compactified moduli of discs; the Stasheff complexes here are the finite cellular complexes of noncrossing dissections and use none of that geometry.

## Conventions

All tensor products, exterior powers, symbol groups and complexes are over ℚ. Put `U(F) = ℚ ⊗_ℤ Additive(Fˣ)` and write `u(x)` for the vector of a unit, with `u(0) = 0` by convention; torsion units, in particular `−1`, have zero vector. Inside tensor formulas products of units are written multiplicatively. `B₂(F)` is the rational pre-Bloch group of K3BlochGroups with symbols `[x]₂`, `[0]₂ = [1]₂ = [∞]₂ = 0`, and differential `δ[x]₂ = (1−x)∧x`, the negative of the supplier's boundary, as in Polylogarithms §3.2. `B₃(F)` is Polylogarithms' trilogGroup with symbols `[x]₃`; `[1]₃` is retained and `δ[x]₃ = [x]₂ ⊗ u(x)`. Combinatorial targets use an infinite field `F`; motives, Hodge realizations and regulators use a number field.

Cross-ratios. On `ℙ¹` put `s(a,b,c,d) = (a−b)(c−d)/((a−d)(c−b))`, so `s(∞,1,0,x) = x`, and `r(a,b,c,d) = s(a,c,b,d) = (a−c)(b−d)/((a−d)(b−c))`, so `r(∞,0,1,x) = x`; `r` is the cross-ratio of Polylogarithms and of Goncharov–Rudenko (135). For vectors in a two-dimensional space `r(1,2,3,4) = |13||24|/(|14||23|)`; for vectors in a three-dimensional space the projected ratio is `r(i|j,k,l,m) = |ijl||ikm|/(|ijm||ikl|)` and the triple ratio is `T(1,…,6) = |124||235||136|/(|125||236||134|)`, both from Polylogarithms §3.5. The six-point function is `Z(a₁,…,a₆) = −(a₁−a₂)(a₃−a₄)(a₅−a₆)/((a₂−a₃)(a₄−a₅)(a₆−a₁))`.

Sums. `Alt_m` is the full signed sum over `S_m` with **no** factor `1/m!`; `Cycₙ` is the full cyclic sum `Σ_{k∈ℤ/n}`; `Cyc⁻₆` is the cyclic sum weighted by the sign `(−1)^k` of the rotation. Deletion and projection on configurations are numbered from zero, `∂ = Σ(−1)^i delete_i`, `p = Σ(−1)^i project_i`, `∂² = p² = 0`, `∂p + p∂ = 0` and the total differential is `D = ∂ + p` (Polylogarithms §3.4).

Complexes are cohomological in degrees `1,…,n`. The explicit weight-four complex is

```text
Γ(F,4):  B₄(F) → B₃(F)⊗U(F) → B₂(F)⊗Λ²U(F) → Λ⁴U(F),
δ[x]₄ = [x]₃⊗u(x),  δ([x]₃⊗y) = [x]₂⊗x∧y,  δ([x]₂⊗y∧z) = (1−x)∧x∧y∧z.
```

The weight-four Chevalley–Eilenberg complex `L₄ → (L₃⊗U ⊕ Λ²B₂) → B₂⊗Λ²U → Λ⁴U` carries `δ([x]₃⊗y) = [x]₂⊗x∧y`, the same rule on `D₂₁(x,y)⊗c` through §1.6, `δ([x]₂⊗y∧z) = (1−x)∧x∧y∧z`, and on `Λ²B₂` the rule `δ([x]₂∧[y]₂) = [x]₂⊗δ[y]₂ − [y]₂⊗δ[x]₂` (Goncharov–Rudenko [GR], Lemma 3.13, p. 43, GR line 1901). This complex is identified with the exterior-algebra complex `Λ•L`, `d(a∧b) = δa∧b − a∧δb`, of the graded Lie coalgebra `L = U ⊕ B₂ ⊕ L₃ ⊕ L₄` as follows: the weight-`(k,1)` part `L_k∧L₁` with `L_k⊗L₁` by `a∧b ↦ a⊗b` for `a` of weight `k > 1` and `b` of weight one; `L₂∧L₁∧L₁` with `B₂⊗Λ²U` by `a∧b∧c ↦ a⊗(b∧c)`; and `Λ²L₂` with `Λ²B₂` by `A∧B ↦ −A∧B`. The sign on `Λ²B₂` is forced by the other rules: under the natural inclusion of `Λ²L₂` the derivation rule gives `[y]₂⊗δ[x]₂ − [x]₂⊗δ[y]₂` on `[x]₂∧[y]₂`, and `d² = 0` on `δD₃₁` of §3.1 then fails (§3.1, Checks). Consequently the `Λ²L₂`-component of the Lie cobracket of `D₃₁(x,y)` is `−[x]₂∧[y]₂`, while the component `δ₂₂D₃₁(x,y)` written in §3.1 and §3.3 is `+[x]₂∧[y]₂`; the two identifications of the weight-`(k,1)` parts enter only the signs of the realization of §3.13.

Periods. `Lₙ` is PolylogarithmFunctions' single-valued polylogarithm in Zagier's Bernoulli normalization with `B₁ = −1/2`, real part in odd and imaginary part in even weight; `L₄` is odd under complex conjugation and inversion. For a number field of signature `(r₁,r₂)` and degree `N = r₁ + 2r₂`, `d₄ = r₂` and the zeta-normalized determinant is `Z₄(F;y) = π^{4(r₁+r₂)} |disc F|^{−1/2} det(L₄(σᵢ(yⱼ)))`, rows indexed by complex places through their chosen embeddings, columns by symbol families; the empty determinant is one. Changing the chosen embedding of a complex place negates its row. The canonical period functions are `L₄*(z) = (5L₄(z) + (1/3)L₂(z)log²|z|)/16`, `L₃* = 3L₃/8` and `L₂* = L₂/2` (Goncharov–Rudenko (191), p. 77; Goncharov [G08] §11.1, p. 104); all are real, and with the phase of even weight they satisfy `d(i·L₄*) = (5/6)L₃* d^C log|z| − (1/6)log|z| d^C L₃*` and `dL₃* = (3/4)·i·L₂* d^C log|z| − (1/4)log|z| d^C(i·L₂*)` ([G08] p. 105, G08 line 4628). The real differential operator is `d^C = ∂ − ∂̄`; it sends a real function to an imaginary form, `d^C log|z| = i·dθ`. Three period objects are kept apart (§3.7). The canonical real period `P` takes values in Goncharov's Hodge complex `C_H` with its product `∗` and its differential `δ`, which is `−d/2` on a zero-form of weight `n ≥ 2`. The ordinary real period `R = Φ∘P` takes values in the real Deligne complex with the exterior derivative `d`, through the explicit comparison `Φ` of §3.7; on a degree-one element of weight `n`, `R = binom(2n−2, n−1)⁻¹·P`. In weight `n` both are `ℝ(n−1)`-valued forms, `ℝ(n−1) = (2πi)^{n−1}ℝ`, so degree-one values are real for odd and imaginary for even `n`; both send a unit `f` to `log|f|`, and on single symbols `P(S₂) = i·L₂ = 2i·L₂*`, `P(S₃) = −4L₃*`, `P(S₄) = 8i·L₄*`, while `R(S₂) = i·L₂*`, `R(S₃) = −(2/3)L₃*`, `R(S₄) = (2/5)i·L₄*` (§5.1). The scalar period `p` of a degree-one element of weight `m` is the real function with `R = p` for odd `m` and `R = i·p` for even `m`; it takes the values `(2/5)L₄*`, `−(2/3)L₃*`, `L₂*` on single symbols and `log|f|` on a unit. The identities of §§3.7 and 5.1 are statements about `P` and `R`, those of §5.4 about `R`; values on cycles, the calibration of §5.2 and the regulator comparisons of §§6.2–6.3 are about `p`, converted to Borel's Tate-divided coordinates only in §6.2, where the weight-four value `R = i·p` divided by `(2πi)³` is `−p/(8π³)`. The numerical Hodge correlators of §3.9 are `c_m(2πi)^{−m}p` in weight `m`, with a nonzero real constant `c_m` depending only on `m`, `c₁ = 1` and `c₂ = −2`. Borel's regulator `r_Bo` is taken in BorelRegulators' Tate-divided real coordinates; in those coordinates an `L₄`-period column is `λπ³` times a Borel column with `λ ∈ ℚˣ`, and `r_Bo = −2 r_Be` (BorelRegulators §6.2).

Normal-crossing degrees. In the coefficient diagram of §5.3 a codimension-`q` stratum carries weight `4−q` and a term of internal degree `j` sits in total degree `j+2q`; pushforward of a current from codimension `q` adds ordinary degree `2q` and carries the factor `(πi)^q`, the constant of the residue identity of §5.4 for the normalization of `R`; the current component of a Deligne term of degree `k` has ordinary degree `k−1`.

## Exact supplier contracts

### From Mathlib

`Finsupp` and `Finsupp.linearCombination` (free modules on symbols and their evaluation), `Submodule.span`, `Submodule.Quotient.mk` and `Submodule.mkQ` (presentations by relations; `mk x = 0` exactly when `x` is in the submodule), `TensorProduct.lift`, `ExteriorAlgebra.exteriorPower` and `exteriorPower.ιMulti` (`Mathlib/LinearAlgebra/ExteriorAlgebra/Basic.lean`, `Mathlib/LinearAlgebra/ExteriorPower/Basic.lean`), `Additive`, `Matrix.det`, `Matrix.det_mul` and `Matrix.det_isEmpty` (rational basis change and the empty determinant), `FreeLieAlgebra` (`Mathlib/Algebra/Lie/Free.lean`) and `LieDerivation` (`Mathlib/Algebra/Lie/Derivation/Basic.lean`) for the puncture Lie algebra and its derivations, `groupHomology` (`Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean`), `CategoryTheory.ProjectiveResolution` (`Mathlib/CategoryTheory/Preadditive/Projective/Resolution.lean`); `CategoryTheory.ProjectiveResolution.lift` (`Mathlib/CategoryTheory/Abelian/Projective/Resolution.lean`) lifts only into another projective resolution, so the comparison into the acyclic but non-projective decorated-flag complex is a separate target, owned by Polylogarithms §3.4. Arithmetic carriers: `NumberField.dedekindZeta` (the L-series of ideal norms, convergent at `s = 4`), `NumberField.discr`, `NumberField.InfinitePlace`, `NumberField.InfinitePlace.IsComplex`, `NumberField.InfinitePlace.embedding`, `nrRealPlaces` and `nrComplexPlaces`; `bernoulli` with `bernoulli 1 = −1/2`; `Complex.log`, `Complex.arg` and interval integrals for the polylogarithm formulas. No polylogarithm, Bloch group, configuration complex, motive or higher K-group exists at the pins.

### From Tau Ceti

Linear Hodge theory, consumed by §§3.6–3.7: `TauCeti.Hodge.MixedHodgeStructure` (`TauCeti/Geometry/Hodge/Mixed/Basic.lean`), a mixed Hodge structure on an integral module with rational and complex base-change models, whose fields are a bounded increasing rational weight filtration, a bounded decreasing Hodge filtration and purity of each rational graded piece; `TauCeti.Hodge.MixedHodgeStructureCat` with the instance `TauCeti.Hodge.MixedHodgeStructureCat.abelian` (`TauCeti/Geometry/Hodge/Mixed/Category.lean`, `TauCeti/Geometry/Hodge/Mixed/Abelian.lean`); strictness of morphisms for the Hodge filtration, `TauCeti.Hodge.MixedHodgeStructure.Hom.range_inf_F_eq_map_F` (`TauCeti/Geometry/Hodge/Mixed/Strictness.lean`); and the Tate structure `TauCeti.Hodge.tate` of weight `−2m` (`TauCeti/Geometry/Hodge/Tate/Basic.lean`). These carry no variation over a base, no framing, no Lie coalgebra of framed objects and no period map; those are targets of §§3.6–3.7. `Suggested.lean` uses none of them, since its headlines mention no Hodge structure.

### From TauCetiRoadmap.PolylogarithmFunctions

`polylog n z` is the principal `Liₙ` with the lower boundary value on the cut, equal to its disc series and with `Liₙ(1) = ζ(n)` for `n ≥ 2` (§1.1). `singleValued n z` is `Lₙ`, continuous on `ℙ¹(ℂ)`, with `Lₙ(z) + (−1)^n Lₙ(1/z) = 0`, `Lₙ(z̄) = (−1)^{n−1}Lₙ(z)`, `Lₙ(0) = Lₙ(∞) = 0` and `L₄(1) = 0` (§§4.2, 4.6–4.7). `blochWigner` is `D = L₂`, with the five-term relation blochWigner_fiveTerm for distinct `x,y ∈ ℂ∖{0,1}` (§§5.1–5.2, 5.7). These are consumed with the hypotheses stated there.

### From TauCetiRoadmap.K3BlochGroups

Layer 3: the projective cross-ratio (§3.2), the admissible five-term relations (§3.3), `preBloch` and its rationalization `B₂(F)` (§3.4), the boundary to the antisymmetric square and its composite to the exterior square (§§3.5, 3.8). The differential used here is the negative of that boundary. The integral presentation is not used.

### From TauCetiRoadmap.Polylogarithms

- §2.1: blochWignerDesc, the unique linear functional on `B₂(ℂ)` sending `[z]₂` to `D(z)`.
- §2.2: stableK_hurewiczPrimitive, the natural isomorphism `K_j(R)⊗ℚ ≃ Prim H_j(GL(R),ℚ)`, its inverse, the primitive projection, and the rank filtration.
- §3.1: trilogGroup `B₃(F) = ℚ[F]/R₃(F)` with `R₃` generated by `[0]`, inversion, the three-term relation with `[1]₃` retained and the coordinate 22-term relation; its universal property and field functoriality; the cobracket `δ₃[x]₃ = [x]₂⊗u(x)` well defined on `B₃(F)`. What Polylogarithms must provide (gap:trilog-specialization-closure): for every one-parameter family over `F(t)` of admissible parameters of the coordinate 22-term relation, the specialization at `t = 0` of the relation, with symbols specialized by the valuation-zero rule (`[f] ↦ [f(0)]` for a unit `f`, zero otherwise), lies in `R₃(F)`.
- §3.2: the complexes `Γ(F,n)` for `n ≤ 3`, the predicates `FiveTermFunction`, `IsCycle3`, `unitVector`, and the universal test characterization of cycles.
- §3.3: exterior residues `ΛⁿU(K) → Λⁿ⁻¹U(k)` with uniformizer first, and the weight-two and weight-three residues with their shift signs.
- §3.4: genericVectorConfig, the modules `C_m(q)` without independent rescaling, deletion and projection, `∂²=p²=0`, `∂p+p∂=0`, the row-quotient Bigrassmannian construction at cutoff three; decorated flags with their direct-sum genericity, the complex of generic tuples of decorated flags, its acyclicity over an infinite field and the comparison map from a projective resolution (stabilizedConfigurationComparison). What Polylogarithms must provide (gap:decorated-flag-lengths): for every infinite field `F`, every `N ≥ 1` and every flag length `1 ≤ k ≤ N`, the augmented complex of generic `m`-tuples of decorated `k`-flags in `F^N` with its alternating deletion differential is acyclic before `GL_N(F)`-coinvariants, and the comparison map from a projective `ℚ[GL_N(F)]`-resolution of `ℚ` into it exists, is unique up to chain homotopy, is natural in field embeddings and is compatible with the stabilization `GL_N → GL_{N+1}` by a standard complementary direction.
- §3.5: the projected ratio, the triple ratio `T`, the maps `r₄ = −3Alt₄(u|123|∧u|124|∧u|134|)`, `r₅ = Alt₅([r(1|2345)]₂⊗u|345|)`, `r₆ = 18M₃`, and the seven-term relation. No identity between `r₆` and `Alt₆[T]₃` is supplied.
- §3.6: Gale duality of generic configurations, exchanging deletion and projection.
- §3.7: the weight-three configuration homology maps and their rank-two vanishing, used as the weight-three instance of §6.1.
- §§4.1–4.3: the inductive groups `Bₙ^ind(F)`, the complexes `Γ^ind(F,n)`, the explicit-to-inductive surjection in weight three, and analytic evaluation `Bₙ^ind(ℂ) → ℝ`.
- §4.4: the Zagier determinant `Zₙ`, the three assertions, and zagierPeriod_calibration: rational K-theory columns whose calibrated period columns are `λπ^{n−1}` times Borel columns, `λ ∈ ℚˣ`, have determinant in `ℚ·√|disc F|·π^{−eₙ}·ζ_F(n)`, nonzero on a rational basis.
- §4.5: explicitRawCycleFour, the kernel of `[x] ↦ [x]₃⊗u(x)` on `ℚ[F]`, its characterization by the universal test against every trilogarithm relation function, and its inclusion into the inductive raw cycles.
- §4.6: cycleObstruction for a square `q∘a = b∘p` with `p` surjective, and its zero locus.
- §4.7: zagierExistence_totallyRealEven.
- Layer 5: test forms and currents (§5.1), the normalized current dictionary and supported Deligne models (§5.2), logarithmic `r` forms and variety residues (§5.4), raw Deligne regulators (§5.5), the universal regulator comparison (§5.9).

### From TauCetiRoadmap.BorelRegulators

§1.1: `Vₙ(F)` and its Tate-divided coordinates, `dₙ = r₂` for even `n`. §2.2: `r_Bo` on `K_{2n−1}(O_F)` and its rationalization. §2.3: the real isomorphism `K_{2n−1}(O_F)⊗ℝ ≃ Vₙ(F)` and rational injectivity. §5.3: the lattice `Λₙ(F)` and its covolume. §5.4: for every rational K-basis the signed determinant in Tate-divided coordinates lies in `ℚˣ·√|disc F|·π^{dₙ−Nn}·ζ_F(n)`. §6.0a: the universal Deligne Chern class on `B·GL_b(ℂ)`, its identification with the twisted topological Chern character and the point coordinate `κₙ`. §6.2: `r_Bo = −2 r_Be` on rationalized field K-theory.

### From TauCetiRoadmap.MotivicEtaleKTheory

§§3.3–3.4: the Deligne functor on Dolbeault complexes and the logarithmic Deligne complex `D_log(X,p)` of every smooth separated finite-type complex scheme, functorial for all morphisms and independent of compactification. §7.1: the real Beilinson character on `K_n(X)` from universal Deligne Chern classes on `BGL`.

### From TauCetiRoadmap.PeriodsAndSpecialValues

PS.3.0: for a number field `F` the natural isomorphism of the Tate Hom group with the weight-`n` part of `K_{2n−i}(F)⊗ℚ`. PS.9.3: tangential regularization of iterated integrals at the ends of a path. PS.9.8–PS.9.9: the heart `MT(ℚ)` of the motivic t-structure on Tate motives, `MT(ℤ)`, the graded fibre functor and `Ext¹`, `Ext²` between Tate objects. PS.9.10: the motivic torsor of paths on `ℙ¹∖{0,1,∞}` with tangential base points.

What PeriodsAndSpecialValues must provide (gap:mixed-tate-number-fields): for every number field `F`, the neutral Tannakian heart `MT(F)` with its graded fibre functor, `Ext¹_{MT(F)}(ℚ(0),ℚ(n)) ≃ K_{2n−1}(F)⊗ℚ` through PS.3.0 for `n ≥ 1`, vanishing `Ext²` between Tate objects, the resulting identification of the primitive part of the weight-`n` motivic Lie coalgebra with `K_{2n−1}(F)⊗ℚ`, and the Hodge realization from `MT(F)` to framed mixed Hodge–Tate structures under each complex embedding whose period on `Ext¹` is the Beilinson regulator.

What PeriodsAndSpecialValues must provide (gap:punctured-line-path-torsors): for every number field `F` and finite set `S ⊂ ℙ¹(F)`, the unipotent motivic fundamental groupoid of `ℙ¹∖S` in `MT(F)` with tangential base points at the points of `S`, its path torsors, Betti, de Rham and Hodge realizations, the identification of its Lie algebra with the free Lie algebra on the puncture loops `X_s` modulo `Σ_s X_s = 0`, and the action of the motivic Lie algebra by special derivations.

### From TauCetiRoadmap.MotivesAndAlgebraicCycles

§3.6: Tannakian categories and neutral fibers. §6.1: neutral fiber data and finite reconstruction. §6.2: the coordinate bialgebra with its antipode, the affine group scheme `G_ω` representing `Aut^⊗(ω)` and the equivalence of the category with finite-dimensional representations of `G_ω`. §6.3: finite-type quotients and the homomorphism of groups induced by a tensor functor with a marked fiber comparison. These are used for the Tannakian group of `MT(F)` and its Lie coalgebra in §3.8; the numerical-motive semisimplicity of Layer 3 is not used. Layer 4: geometric motives and Tate objects, through PeriodsAndSpecialValues PS.9.8.

### From TauCetiRoadmap.HodgeStructures

Layer L2 of the completed roadmap HodgeStructures: rational mixed Hodge structures, morphisms, strictness and the abelian category they form, implemented at the pinned Tau Ceti by the declarations listed under From Tau Ceti.

## How to read the build

Layer 1 presents the weight-three and weight-four groups of single and double symbols by a generic relation and all its one-parameter specializations, identifies `L₃` with the explicit trilogarithm group and puts the cobracket on `L₃`. Layer 2 builds the type-A cluster polylogarithm maps on Stasheff polytopes; their boundary identities show that the raw weight-four cobracket kills the heptagon relation. Layer 3 descends the cobracket, defines `B₄(F)` and `Γ(F,4)`, proves the extension theorem, and constructs the Hodge–Tate and motivic correlator theory that realizes the combinatorial Lie coalgebra in the motivic one. Layer 4 is linear algebra of configurations: decorated flags map to the weight-four Bigrassmannian, which maps to the weight-four Lie coalgebra complex by explicit formulas. Layer 5 lifts the Grassmannian group to the weight-four Lie coalgebra over every infinite field and turns this into a polylogarithmic Chern cocycle on the simplicial classifying space, extends it across residues, and identifies its regulator with a nonzero multiple of the universal Chern character. Layer 6 evaluates on K-theory, compares with Borel's regulator and proves the theorem. Each target's *Needs* line lists exactly what its statement and its proof route use, so a target can be attacked as soon as those inputs exist.

## Layer 1: specialized weight-three and weight-four relations

Goncharov and Rudenko present the weight-three and weight-four parts of their Lie coalgebra by single symbols `{x}ₙ`, double symbols `{x,y}₂,₁` and `{x,y}₃,₁`, one generic relation on configurations of points on `ℙ¹`, and every specialization of that relation along a curve. This layer builds those presentations as native quotients and connects weight three with the explicit trilogarithm group.

### 1.1 Raw symbols

For `n = 3,4` define the raw symbol module `Rawₙ(F)` as the free ℚ-module on the disjoint union of `Fˣ` and `Fˣ×Fˣ`, with single generators `Sₙ(x)` and double generators `D₂₁(x,y)` in weight three and `D₃₁(x,y)` in weight four. The symbols `Sₙ(0)` and `Sₙ(∞)` are notation for the zero vector, used only when a specialization produces them. The cross-ratio `s`, the six-point function `Z` and the cyclic sums `Cycₙ`, `Cyc⁻₆` of the conventions are evaluated on homogeneous coordinates, so a point at infinity is admitted wherever no determinant in a denominator vanishes (Goncharov–Rudenko [GR], §1.1, item 3, (3), p. 4; §1.2, (23)–(25), p. 10; (34), p. 13). *Needs:* Mathlib `Finsupp`, `Finsupp.linearCombination`.

The raw symbol module has the following API.

- The two tagged injections give the single and double generators; a single and a double generator are never equal, even when `x = y`.
- A pair of functions on `Fˣ` and on `Fˣ×Fˣ` with values in a rational module extends uniquely to a linear map on `Rawₙ(F)`.
- A field embedding acts on both arguments of every generator, compatibly with identity and composition.

**Checks.**

- `s(∞,1,0,x) = x` and `r(∞,0,1,x) = x` for `x ≠ 0,1`; swapping the middle arguments of `s` without the permutation `r(a,b,c,d) = s(a,c,b,d)` gives `s(∞,0,1,x) = 1−x`, which fails the normalization.
- `Z(0,1,2,3,4,5) = 1/5`: the numerator `−(−1)(−1)(−1) = 1` and the denominator `(−1)(−1)(5) = 5`; dropping the leading minus sign gives `−1/5`.
- `S₃(2)` and `D₂₁(2,2)` are distinct basis vectors of `Raw₃(ℚ)`; a model identifying a double symbol on the diagonal with a single symbol loses the second summand.

### 1.2 One-parameter specialization

Let `t` be a parameter, `x = tᵃu` and `y = tᵇv` with `a,b ∈ ℤ` and `u,v` units at `t = 0`, and write `u₀ = u(0)`, `v₀ = v(0)`. Define the specialization `Sp: Rawₙ(F(t)) → Rawₙ(F)`, linear and depending on the chosen parameter, by `Sₙ(x) ↦ Sₙ(u₀)` if `a = 0` and `0` otherwise; and on double symbols by the table

```text
              a=b=0       a>0,b=0    a=0,b>0    a=b<0           otherwise
D₂₁(x,y) ↦   D₂₁(u₀,v₀)  −S₃(v₀)    −S₃(u₀)    2·S₃(u₀/v₀)     0
D₃₁(x,y) ↦   D₃₁(u₀,v₀)   S₄(v₀)    −S₄(u₀)    3·S₄(u₀/v₀)     0
```

On `U(F(t))` the specialization sends `x` to `u(u₀)` (Goncharov–Rudenko [GR], §1.2, item 1, (26), pp. 10–11, GR line 441). The worked case following (38) on p. 14 prints `{u/v}₄` for the equal-pole case; its own computation and table (26) give `3{u/v}₄`, and the table is used here. *Needs:* §1.1; Mathlib `Finsupp`; the `t`-adic valuation and leading coefficient on `F(t)`.

The specialization map has the following API.

- On single symbols the value is the specialized symbol at valuation zero and zero otherwise.
- On double symbols the five order cases above are exhaustive and disjoint.
- For constant nonzero arguments the map is the identity on symbols.
- The map is ℚ-linear on `Rawₙ(F(t))`.

**Checks.**

- `Sp D₃₁(tu,v) = S₄(v₀)` while `Sp D₂₁(tu,v) = −S₃(v₀)`: the sign in the case `a > 0 = b` differs between weights three and four.
- `Sp D₃₁(t⁻²u, t⁻²v) = 3S₄(u₀/v₀)`; a table with coefficient one in the equal-pole case is incompatible with the cobracket check of §3.1, whose two contributions there are `2[u₀/v₀]₃⊗(u₀/v₀)` and `[u₀/v₀]₃⊗(u₀/v₀)`.
- For `a = −2, b = −1` the double specialization is zero, although both entries have poles.

### 1.3 The weight-three presentation

Define `L₃(F)` as `Raw₃(F)` modulo the submodule spanned by the symmetry `D₂₁(x,y) − D₂₁(y,x)`, by the relation

```text
Q₃(x₁,…,x₆) = Cyc₆( D₂₁(s(x₁,x₂,x₃,x₄), s(x₄,x₅,x₆,x₁)) − S₃(s(x₁,x₂,x₄,x₅)) + 2·S₃(s(x₁,x₃,x₄,x₅)) )
              − 4·S₃(Z(x₁,…,x₆))
```

for every six distinct points of `ℙ¹(F)`, and by every specialization of these relations along a one-parameter family of six-point configurations over `F(t)`, iterated: specializations of specialized families are included (Goncharov–Rudenko [GR], §1.2, item 1, Definition 1.10 and (28), p. 11; (29) and (19), p. 12). The relation submodule is the smallest family of submodules, indexed by all infinite fields, that contains the generic relations and is closed under `Sp` from `K(t)` to `K` for every field `K` in the family. *Needs:* §§1.1–1.2; Mathlib `Submodule.span`, `Submodule.Quotient.mk`.

The quotient has the following API.

- `S₃(x)` and `D₂₁(x,y)` denote the quotient classes, and `D₂₁` is symmetric.
- A linear map on `Raw₃(F)` descends uniquely exactly when it kills the generating relations and their specializations.
- Field embeddings preserve the relation family and induce linear maps.

**Checks.**

- `D₂₁(x,y) = D₂₁(y,x)` in `L₃(F)`, while for `x ≠ y` the two are distinct basis vectors of `Raw₃(F)`: `D₂₁(2,3) − D₂₁(3,2)` has coefficients `+1, −1` in `Raw₃(ℚ)` and is zero in `L₃(ℚ)`. On the diagonal the two raw vectors coincide, `D₂₁(2,2)` being a single basis vector.
- The standalone term of `Q₃` has coefficient `−4` and sits outside the cyclic sum; putting it inside `Cyc₆` multiplies it by six.
- Specializing `Q₃` at the divisor where the first and third points collide gives relation (29) of §1.5, expressing `D₂₁(x,y)` by single symbols and `S₃(1)`.

### 1.4 The weight-four presentation

Define `L₄(F)` as `Raw₄(F)` modulo the relation

```text
Q₄(x₁,…,x₇) = Cyc₇( −D₃₁(s(x₁,x₂,x₃,x₄), s(x₄,x₆,x₇,x₁)) + D₃₁(s(x₁,x₂,x₃,x₄), s(x₄,x₅,x₇,x₁))
                    −D₃₁(s(x₁,x₂,x₃,x₄), s(x₄,x₅,x₆,x₁)) − S₄(s(x₁,x₂,x₄,x₆)) + 3·S₄(Z(x₁,…,x₆)) )
```

for every seven distinct points of `ℙ¹(F)` and all its iterated one-parameter specializations, as in §1.3 (Goncharov–Rudenko [GR], §1.2, item 1, Definition 1.11 and (32), p. 12, GR line 505; (35)–(36), p. 13). No symmetry of `D₃₁` is imposed; antisymmetry modulo single symbols is a consequence (§3.3). *Needs:* §§1.1–1.2; Mathlib `Submodule.span`, `Submodule.Quotient.mk`.

The quotient has the following API.

- `S₄(x)` and `D₃₁(x,y)` denote the quotient classes for `x,y ∈ Fˣ`.
- A linear map on `Raw₄(F)` killing every specialization of `Q₄` descends uniquely.
- Field embeddings induce maps commuting with every generator.

**Checks.**

- The generic heptagon relation has signs `−,+,−` on its three double terms; reversing the middle sign makes the boundary identity of §2.5 fail at the heptagon.
- Specializing `Q₄` gives `D₃₁(x,1) = −S₄(1−x⁻¹) − S₄(1−x) + S₄(x)` (Goncharov–Rudenko [GR], (33), p. 12); at `x = −1` this reads `D₃₁(−1,1) = −2S₄(2) + S₄(−1)`.
- `D₃₁(x,y) + D₃₁(y,x)` is not zero in `L₄(F)` before passing to the quotient by single symbols; identifying it with zero in the presentation changes the group.

### 1.5 Reduction to the explicit trilogarithm group

Prove that the assignment `[x]₃ ↦ S₃(x)` for `x ≠ 0`, `[0]₃ ↦ 0`, defines an isomorphism from Polylogarithms' `B₃(F)` to `L₃(F)`, whose inverse sends `S₃(x)` to `[x]₃` and

```text
D₂₁(x,y) ↦ [1−1/x]₃ + [1−1/y]₃ + [y/x]₃ + [(1−y)/(1−x)]₃ − [(1−1/y)/(1−1/x)]₃ − [1]₃,
```

with degenerate arguments read through §1.2 (Goncharov–Rudenko [GR], §1.2, (29)–(31), p. 12, GR line 494; §5.1, Lemma 5.1 and (106)–(109), Lemma 5.2, p. 54). This identifies the explicit groups only; no comparison with the inductive group of Polylogarithms §4.1 is asserted, and `[1]₃` is retained.

A proof route: specializing `Q₃` at the divisor `D₁₃` gives (29) in `L₃(F)`, and further specializations give inversion and the three-term relation with `[1]₃`. Substituting (29) into `Q₃` gives the coordinate 22-term relation (Lemma 5.2(i)), so `[x]₃ ↦ S₃(x)` kills `R₃(F)`; it is onto because (29) expresses every double symbol. For the inverse, the symmetry relation maps to zero by inversion, `Q₃` maps to the 22-term relation, and table (26) is compatible with (29) in every order case: for `a > 0 = b` the right side becomes `[1−v₀⁻¹]₃ + [1−v₀]₃ − [1]₃ = −[v₀]₃`, matching `−S₃(v₀)`, and for `a = b < 0` it becomes `2[v₀/u₀]₃ = 2[u₀/v₀]₃`. Hence the specialized relations map to specializations of the 22-term relation, which lie in `R₃(F)` by the specialization-closure contract of Polylogarithms §3.1. The analytic functional equations over `ℂ` are not used: they do not prove an algebraic identity over an arbitrary infinite field. *Needs:* §§1.2–1.3; Polylogarithms §3.1 (trilogGroup, its universal property and the specialization-closure contract).

**Checks.**

- Both composites fix every single generator, and the image of `D₂₁(x,y)` determines the inverse on doubles.
- At `x = 2, y = 3` over ℚ the inverse sends `D₂₁(2,3)` to `[1/2]₃ + [2/3]₃ + [3/2]₃ + [2]₃ − [4/3]₃ − [1]₃`, using `(1−3)/(1−2) = 2` and `(1−1/3)/(1−1/2) = 4/3`.
- The three-term element `[2]₃ + [−1]₃ + [1/2]₃ − [1]₃` is zero in both groups; a presentation that also sets `[1]₃ = 0` loses the nonzero period `L₃(1) = ζ(3)`.

### 1.6 The cobracket on L₃

With `L₂ = B₂(F)` and `L₁ = U(F)`, define the raw map `δ: Raw₃(F) → B₂(F)⊗U(F)` by `δS₃(x) = [x]₂⊗u(x)` and

```text
δD₂₁(x,y) = [(1−y)/(1−x)]₂ ⊗ (y/x) + [y/x]₂ ⊗ ((1−y)/(1−x)) + [x]₂ ⊗ (1−1/y) + [y]₂ ⊗ (1−1/x).
```

Prove that it kills the symmetry relation, `Q₃` and all its specializations, so descends to `L₃(F)`, commutes with specialization in both tensor factors and agrees with Polylogarithms' `δ₃` under §1.5 (Goncharov–Rudenko [GR], §1.2, item 3, (37)–(38), pp. 13–14, GR line 567; §5.1, Definition 5.3 with (110), Proposition 5.4 with (111)–(114), pp. 54–56). A proof route collects the `B₂`-coefficient of each determinant letter in `δQ₃` into five-term relations, and treats specializations through §1.2. *Needs:* §§1.2–1.5; K3BlochGroups §§3.3–3.4; Polylogarithms §3.1; Mathlib `TensorProduct.lift`.

The cobracket has the following API.

- On a single symbol it is `[x]₂⊗u(x)`; on a double symbol it is the four-term formula, specializations included.
- It commutes with field embeddings and with `Sp`.
- Its composite with `δ⊗id` followed by wedge into `Λ³U` is zero.

**Checks.**

- The formulas for `δD₂₁(x,y)` and `δD₂₁(y,x)` agree modulo the five-term relation, as the symmetry of `D₂₁` requires.
- At `x = tu, y = v` the specialized cobracket is `−[v₀]₂⊗u(v₀)`, the cobracket of `−S₃(v₀)` from table (26).
- On `S₃(x)` the inverse of §1.5 followed by Polylogarithms' `δ₃` gives `[x]₂⊗u(x)`; a convention with `[x]₂⊗u(1−x)` fails this agreement.

### Examples

Over ℚ, `L₃(ℚ) ≅ B₃(ℚ)` contains the nonzero class `S₃(1)`, whose image under `L₃` is `ζ(3)`; the double symbol `D₂₁(2,3)` reduces to six single symbols as in §1.5. In weight four, `D₃₁(x,1)` reduces to three single symbols by (33), while a generic `D₃₁(x,y)` is not a combination of single symbols: its image `[x]₂∧[y]₂` under §3.1 is nonzero for `F = ℚ(x,y)`.

### Dependencies

Mathlib free modules, spans and quotients; K3BlochGroups §§3.3–3.4 for `B₂`; Polylogarithms §3.1 for `B₃` and the specialization-closure contract. Nothing in this layer uses analytic functions.

## Layer 2: Stasheff polytopes and cluster polylogarithms

The cluster polylogarithm map assigns to each cell of the Stasheff polytope of a polygon a weight-four element of the Chevalley–Eilenberg complex of the Lie coalgebra, so that cellular boundary goes to cobracket. The values on the seven hexagonal facets of the heptagon sum to `−2Q₄` plus elements the raw cobracket kills term by term, which is how the cobracket is shown to kill `Q₄`. No cluster-variety conjecture is used.

### 2.1 Oriented Stasheff cells

For `m ≥ 0` define `K_m` as the finite cellular complex of a labelled convex `(m+3)`-gon: a face is a set of pairwise noncrossing diagonals, its dimension is `m` minus the number of diagonals, and it is the product of the Stasheff complexes of the regions the diagonals cut out. Orient the top cell, give faces the induced boundary orientations and products the Koszul boundary `d(A×B) = dA×B + (−1)^{dim A} A×dB`, and form the cellular chain complex `C_•(K_m)` (Goncharov–Rudenko [GR], §1.3, item 2 and Figure 6, pp. 20–21; §3.2, Theorem 3.8 and Proposition 3.9, pp. 39–40; §4.1, (85), p. 46). This is a combinatorial complex; no compactified moduli space is constructed. *Needs:* Mathlib `Finsupp`, `Finset`.

The cell complex has the following API.

- A noncrossing set of diagonals gives a face with its product decomposition.
- The signed codimension-one faces define the cellular differential, and `d² = 0` because the two orders of adding two diagonals carry opposite signs.
- The boundary of a product cell is given by the Koszul rule.

**Checks.**

- `K₀` is a point; `K₁` has two vertices and one oriented edge.
- `K₂` is a pentagon: five vertices (the five triangulations of a pentagon) and five edges; a square would correspond to four triangulations.
- `K₃` has 14 vertices, 21 edges, six pentagonal and three square faces, and Euler characteristic `14 − 21 + 9 − 1 = 1`.

### 2.2 Triangle and triangulation two-forms

Let `V₂` be a two-dimensional symplectic space with form `ω` and let `l₁,…,l_k` be a generic tuple of vectors; put `Δᵢⱼ = ω(lᵢ,lⱼ) ∈ Fˣ`. An oriented triangle `(1,2,3)` contributes `W = u(Δ₁₂)∧u(Δ₂₃) + u(Δ₂₃)∧u(Δ₁₃) + u(Δ₁₃)∧u(Δ₁₂)` in `Λ²U(F)`, and a triangulation `T` contributes the sum `W_T` over its triangles. For the two triangulations `T` (diagonal 13) and `T′` (diagonal 24) of the quadrilateral `(1,2,3,4)` put `X = Δ₁₂Δ₃₄/(Δ₂₃Δ₁₄)`. Prove the flip identity `W_T − W_T′ = (1+X)∧X = δ[−X]₂` (Goncharov–Rudenko [GR], §1.3, item 1, (49)–(55), pp. 19–20; §3.1, (74)–(75), p. 36). The forms are invariant under `Aut(V₂,ω)`, not under all of `GL₂`. *Needs:* §2.1; K3BlochGroups §§3.4–3.5; Mathlib `ExteriorAlgebra.exteriorPower`.

The two-forms have the following API.

- A triangle has exactly the three displayed wedge terms, and `W_T` is additive under cutting a polygon along a diagonal.
- For the edge oriented from `T′` to `T`, `W_T − W_T′ = δ[−X]₂`; its image in Milnor `K₂` is independent of the triangulation.
- Rescaling the volume form or lifting projective vertices changes the forms by the determinant rule of `U`.

**Checks.**

- For one triangle the sum has three terms, the middle one `u(Δ₂₃)∧u(Δ₁₃)`; permuting the vertices by a transposition negates `W` modulo the relation `u(−1) = 0`.
- For the quadrilateral with `Δ₁₂ = 2, Δ₃₄ = 3, Δ₂₃ = Δ₁₄ = 1` over ℚ one has `X = 6`, and the flip difference is `u(7)∧u(6) = δ[−6]₂`, nonzero in `Λ²U(ℚ)`.
- Setting every `W_T` to zero violates the flip identity whenever `δ[−X]₂ ≠ 0`, as in the previous check.

### 2.3 Cluster maps on cells of dimension at most two

For cells of the Stasheff complexes attached to generic points of `ℙ¹` define:

```text
vertex T:        L⁴(T) = W_T ∧ W_T                                          ∈ Λ⁴U
edge T′→T:       L³(e) = [−X_e]₂ ⊗ (W_T + W_T′)                              ∈ B₂⊗Λ²U
pentagon:        L²(P) = Σ_{k mod 5} [s(k+1,k+2,k+3,k+4)]₃ ⊗ s(k+3,k+4,k,k+1)/s(k−1,k,k+1,k+2)
square face j:   L²(S_j) = 2·[s(j,j+1,j+2,j+3)]₂ ∧ [s(j+3,j+4,j+5,j+6)]₂         ∈ Λ²B₂
```

the pentagon value lying in `L₃⊗U`; product cells carry the products of these values with the remaining `W` factors by the weight grading, and orientation reversal negates a value (Goncharov–Rudenko [GR], §4.3, items 1–3, (94)–(99), pp. 50–51; §3.4, Lemmas 3.12–3.15, pp. 42–44). The vertex value is `W_T²`, without a factor `1/2`. The square value carries the factor `2`, with the orientation of `S_j` fixed by its four oriented boundary edges: for a square traversed `v₁ → v₂ → v₃ → v₄ → v₁` whose first two edges have flip symbols `A` and `B` (so `δA = W_{v₂} − W_{v₁}`, `δB = W_{v₃} − W_{v₂}`), the value is `2·B∧A`. The source passes from `e^W` in its §3.4 to `W²` in its §4.3, which doubles the vertex, edge and pentagon values relative to its Lemmas 3.12–3.15, but prints the square value (99) without the corresponding factor `2`; the edge identity of §2.5 forces it. *Needs:* §§1.4, 1.6, 2.1–2.2; Mathlib `TensorProduct.lift`, `ExteriorAlgebra.exteriorPower`.

The cell maps have the following API.

- Vertex, edge, pentagon and square values are the displayed elements, in `Λ⁴U`, `B₂⊗Λ²U`, `L₃⊗U` and `Λ²B₂` respectively; the square value is twice the wedge of the two flip symbols, oriented as above.
- Reversing the orientation of a cell negates its value.
- Product cells use the Koszul sign and the weight grading.

**Checks.**

- Reversing an oriented edge negates `L³(e)`, since `X` is replaced by `X⁻¹` and `[−X⁻¹]₂ = −[−X]₂`.
- The cobracket of an edge value is `W_T² − W_T′²`: `δ[−X]₂ ∧ (W_T + W_T′) = (W_T − W_T′)∧(W_T + W_T′)`, and the cross terms cancel because two-forms commute.
- The square value of two independent flips with symbols `A`, `B` is `2·B∧A`: with vertex forms `W, W+δA, W+δA+δB, W+δB` the four oriented edge values sum to `A⊗(2W+δA) + B⊗(2W+2δA+δB) − A⊗(2W+δA+2δB) − B⊗(2W+δB) = 2(B⊗δA − A⊗δB) = δ(2·B∧A)`. Taking the value `B∧A` leaves the factor `2` unmatched, and setting square values to zero breaks the boundary identity of §2.5 on the square faces of `K₃`.

### 2.4 The hexagon three-cell

For a hexagon define

```text
L¹(a₁,…,a₆) = Cyc⁻₆( D₃₁(s(a₁,a₂,a₃,a₄), s(a₄,a₅,a₆,a₁)) − S₄(s(a₁,a₃,a₄,a₅)) − S₄(Z(a₁,…,a₆)) )   ∈ L₄(F),
```

with product three-cells formed by the rule of §2.3 (Goncharov–Rudenko [GR], §4.3, item 4, Definition 4.2 with (101)–(102), p. 52; §1.2, (35)–(36), p. 13). For seven distinct points `x₁,…,x₇` of `ℙ¹(F)` put `Z_k = Z(x_{k+1},…,x_{k+6})` and `w_k = s(x_{k+1},x_{k+2},x_{k+4},x_{k+6})`, indices mod 7. Prove the identity in `Raw₄(F)`

```text
Σ_{k mod 7} L¹(x_{k+1},…,x_{k+6}) = −2·Q₄(x₁,…,x₇) + Σ c·( D₃₁(y,z) + D₃₁(z,y) )
                                     + Σ_{k mod 7} ( 3·(S₄(Z_k) + S₄(Z_k⁻¹)) − (S₄(w_k) + S₄(w_k⁻¹)) ),
```

the middle sum running over the 21 double-symbol terms `c·D₃₁(y,z)` of `Q₄`, `c = ±1`: the double-symbol part of the seven-facet sum is `Σ c·(D₃₁(z,y) − D₃₁(y,z))`. The two right-hand corrections are antisymmetrizers of double symbols and inversion elements of single symbols. The raw cobracket of §3.1 kills each of them: on `D₃₁(y,z) + D₃₁(z,y)` the `Λ²B₂` terms cancel and the `L₃⊗U` terms are `(D₂₁(y,z) − D₂₁(z,y))⊗(y/z) + (S₃(y/z) − S₃(z/y))⊗((1−y)/(1−z))`, zero in `L₃⊗U` by the symmetry of §1.3 and inversion in `L₃` (§1.5); on `S₄(x) + S₄(x⁻¹)` it is `(S₃(x) − S₃(x⁻¹))⊗u(x) = 0`. Hence the raw cobracket kills the seven-facet sum exactly when it kills `Q₄`. The source's form (36) of `Q₄`, and the facet sum `Σ_i (−1)^i L¹(x₁,…,x̂ᵢ,…,x₇)` of its Proposition 5.5, which is the negative of the cyclic sum above, are relations equivalent to `Q₄` only modulo these corrections; they are not equalities of vectors of `Raw₄(F)`. *Needs:* §§1.1, 1.3–1.5, 2.3; the raw weight-four cobracket formula of §3.1.

The hexagon map has the following API.

- The value is the displayed alternating cyclic sum, computed in `Raw₄(F)` and then in `L₄(F)`.
- A rotation by one step negates the value, and a rotation by two fixes it.
- The seven-facet sum of a heptagon is `−2Q₄` plus a combination of double-symbol antisymmetrizers and single-symbol inversion elements, all killed by the raw cobracket.

**Checks.**

- A rotation by one negates `L¹` and a rotation by two fixes it, as `Cyc⁻₆` requires.
- For the ordered tuple `(0,1,3,7,11,17,23)` over ℚ, the seven-facet sum has 70 nonzero raw coefficients (42 double, 28 single) and `Q₄` has 35 (21 double, 14 single); the coefficient of `D₃₁(−69/8,−1/4)` is `−1` in the facet sum and `0` in `Q₄`, while `D₃₁(−1/4,−69/8)` has coefficients `+1` and `−1`. So the facet sum is not `Q₄` in `Raw₄(F)`, and the displayed identity holds exactly, with the corrections supported on 21 antisymmetrizers and 14 inversion pairs; the same holds for `(0,1,2,5,−3,1/2,9)` and `(2,3,5,7,11,13,19)`.
- The six-point term carries a minus sign both in `Z` and in the summand; using the plain cyclic sum `Cyc₆` instead of `Cyc⁻₆` makes the rotation test fail.

### 2.5 Cluster boundary identities

Prove that the maps of §§2.3–2.4 satisfy `δL^j = L^{j+1}∘d` in every cell dimension, where `δ` on three-cells is the raw weight-four cobracket of §3.1 before its descent. The edge, square and pentagon identities are Lemmas 3.12, 3.13 and 3.15; the pentagon identity uses the five-term relation of `B₂`, not `Q₃`. The hexagon identity is Proposition 4.4, which uses `Q₃` through §1.5, and the heptagon identity is the vanishing of the raw cobracket on `Q₄` (Proposition 5.5): `d² = 0` on `K₄` with the hexagon identity gives the vanishing of the raw cobracket on the seven-facet sum, and the identity of §2.4 transfers it to `Q₄` (Goncharov–Rudenko [GR], §3.4, Lemmas 3.12–3.15, pp. 42–44; §4.3, Theorem 4.3 and Proposition 4.4, pp. 52–53; §5.2, Proposition 5.5, p. 56; Theorem 1.17, p. 21). The square identity holds with the doubled square value of §2.3; the edge and square identities of Lemmas 3.12–3.13 are stated there in the `e^W` normalization, in which the square value is undoubled. Together they give the weight-four map from the cellular chain complex to the Chevalley–Eilenberg complex once `δ` has descended. *Needs:* §§1.5–1.6, 2.3–2.4; the raw weight-four cobracket formula of §3.1; K3BlochGroups §§3.3–3.4.

**Checks.**

- On an edge the identity is the difference of squares of §2.3; dropping the factor `W_T + W_T′` from the edge value leaves `δL³ = δ[−X]₂`, which is not `W_T² − W_T′²`.
- On a pentagon of `K₃` the identity reduces, after expanding, to a five-term relation in `B₂`; replacing the pentagon value by zero leaves the five edge contributions, which do not cancel for generic points.
- On a square face whose first two oriented edges have flip symbols `A`, `B`, both sides equal `2(B⊗δA − A⊗δB)` in `B₂⊗Λ²U`: the left as `δ(2·B∧A)` by the rule `δ(x∧y) = x⊗δy − y⊗δx` of the Conventions, the right as the sum of the four edge values (§2.3, Checks). On the hexagon `(0,1,3,−3/11,2,12/11)` over ℚ the square of the long diagonal `(1,4)` has `A = [s(0,1,3,−3/11)]₂ = [−6]₂` and `B = [s(−3/11,2,12/11,0)]₂ = [−10]₂`; the functional `(ord₇∧ord₂)∘δ₂ ⊗ (ord₁₁∧ord₅)` on `B₂⊗Λ²U(ℚ)` takes the values `(1,0)` on `(A,B)` in the first slot and `(0,1)` on `(δA,δB)` in the second, hence `±1` on `δ(A∧B)` and `±2` on the edge sum; an undoubled square value fails here.
- On the hexagon three-cell the `Λ²B₂` component of `δL¹` is `2·Σ_{k=0,1,2} (−1)^k [s(a_{k+1},…,a_{k+4})]₂∧[s(a_{k+4},…,a_{k+7})]₂`, indices mod 6: the terms of `Cyc⁻₆` at `k` and at `k+3` have the same `δ₂₂`, because the shift by three exchanges the two cross-ratios of a long diagonal and the sign `(−1)^3` compensates the exchange. Each of the three wedges is half a square value, so the hexagon identity also requires the factor `2` of §2.3.

### Examples

For the hexagon with points `(∞,0,1,x,y,z)` the cluster three-cell value is the alternating sum of six double symbols with the single-symbol corrections of §2.4; its cobracket is the sum over the boundary of the hexagon cell of `K₃`, which consists of six pentagons and three squares. For the heptagon the seven hexagonal facets sum to `−2Q₄` plus antisymmetrizers and inversion elements (§2.4), so the top identity kills the raw cobracket of `Q₄`.

### Dependencies

Layer 1, K3BlochGroups §§3.3–3.5, and the raw weight-four cobracket formula of §3.1 (its descent is not used here). No analytic, motivic or cluster-variety input.

## Layer 3: the weight-four Lie coalgebra and motivic correlators

This layer descends the weight-four cobracket, defines the single-symbol subspace `B₄(F)` and the explicit complex `Γ(F,4)`, and proves the extension theorem. It then builds framed mixed Hodge–Tate structures and their canonical real period, the cyclic shuffle coalgebra of a punctured line and its special derivations, motivic and Hodge correlators, and proves that `{x}ₙ`, `{x,y}₂,₁`, `{x,y}₃,₁` go to correlators by a morphism of Lie coalgebras.

### 3.1 The weight-four cobracket

Define the raw map on `Raw₄(F)` by `δS₄(x) = S₃(x)⊗u(x)` and

```text
δD₃₁(x,y) = D₂₁(x,y)⊗(x/y) + S₃(x/y)⊗((1−x)/(1−y)) + S₃(x)⊗(1−1/y) − S₃(y)⊗(1−1/x) + [x]₂∧[y]₂,
```

with values in `(L₃(F)⊗U(F)) ⊕ Λ²B₂(F)`. Prove that it kills `Q₄` and all its specializations, so descends to `L₄(F)`, and that with `δ` on `B₂` and §1.6 it makes `U ⊕ B₂ ⊕ L₃ ⊕ L₄` a graded Lie coalgebra through weight four, its values read in `Λ²L` through the identifications of the Conventions: the Chevalley–Eilenberg differential squares to zero (Goncharov–Rudenko [GR], §1.2, item 3, (37)–(38) and the specialization check, pp. 13–14, GR line 573; §5.2, Proposition 5.5, p. 56; Theorem 1.14(a), p. 16). A proof route kills generic `Q₄` by §2.5, that is by `d² = 0` on `K₄` and the facet identity of §2.4, checks each order case of §1.2 for the specializations, and checks co-Jacobi on single and double generators with §1.6. *Needs:* §§1.2, 1.4, 1.6, 2.5; Mathlib `TensorProduct.lift`, `ExteriorAlgebra.exteriorPower`.

The cobracket has the following API.

- On a single symbol it is `S₃(x)⊗u(x)` with zero `Λ²B₂` component; on a double symbol it is the four tensor terms plus `[x]₂∧[y]₂`.
- The induced Chevalley–Eilenberg differential on the weight-four complex `L₄ → (L₃⊗U ⊕ Λ²B₂) → B₂⊗Λ²U → Λ⁴U` squares to zero.
- The cobracket commutes with field embeddings and with `Sp`.

**Checks.**

- The `(2,2)` component of `δD₃₁(x,y)` is `[x]₂∧[y]₂` with coefficient `+1`; in particular `δD₃₁(x,y) + δD₃₁(y,x)` has zero `Λ²B₂` component.
- The specialization of `δD₃₁(t⁻¹u,t⁻¹v)` is `3[u₀/v₀]₃⊗u(u₀/v₀)`, the cobracket of the equal-pole value `3S₄(u₀/v₀)` of §1.2.
- On single symbols the cobracket followed by §1.5 is `[x]₄ ↦ [x]₃⊗u(x)`, the first differential of `Γ(F,4)`.
- `d² = 0` on `D₃₁(x,y)`: applying `δ⊗id` to the four tensor terms and the Conventions' rule to `[x]₂∧[y]₂`, the two contributions cancel in `B₂⊗Λ²U`. Evaluated over `ℚ(i)` by the functional `[w]₂⊗(a∧b) ↦ D(w)(log|a| ord₃(b) − ord₃(a) log|b|)`, with `D` the Bloch–Wigner function and `ord₃` the valuation at the inert prime `3`, at `x = −7/9 − 8i`, `y = −2 + 3i` the tensor terms give `−0.5011` and the `Λ²B₂` term `+0.5011`. The natural rule `[y]₂⊗δ[x]₂ − [x]₂⊗δ[y]₂` on `Λ²B₂`, equivalently the coefficient `−1` on `[x]₂∧[y]₂`, gives the sum `−1.0023`, so the sign of the `Λ²B₂` term is not free once the other rules are fixed.

### 3.2 The single-symbol subspace and the explicit weight-four complex

Define `B₄(F)` as the ℚ-span of the classes `S₄(x)`, `x ∈ Fˣ`, inside `L₄(F)`, with its submodule inclusion. Its cobracket has zero `Λ²B₂` component and, through §1.5, values in `B₃(F)⊗U(F)`, given on generators by `S₄(x) ↦ [x]₃⊗u(x)`. Define the explicit weight-four complex `Γ(F,4)` of the conventions with `B₄(F)` in degree one (Goncharov–Rudenko [GR], §1.2, item 1, Definition 1.11, p. 12; Theorem 1.14(c) and complex (44), p. 16). This is the explicit complex named in Polylogarithms §4.5; it is not defined as a kernel and is not identified with the inductive group `B₄^ind(F)`. Prove that a finite rational sum `c = Σ aₓ[x]` is a representative of a degree-one cycle of `Γ(F,4)` exactly when the raw sum satisfies `IsCycle4 c`, the universal test of Polylogarithms §4.5, given §1.5. *Needs:* §§1.5, 3.1; Polylogarithms §§3.1, 3.2, 4.5; Mathlib `Submodule.span`, `ExteriorAlgebra.exteriorPower`.

The subspace and complex have the following API.

- Each `S₄(x)` has a class in `B₄(F)`, and the inclusion into `L₄(F)` is the injective submodule inclusion.
- A linear identity on `B₄(F)` follows from its values on all generators.
- The restricted cobracket sends `S₄(x)` to `[x]₃⊗u(x)`; consecutive differentials of `Γ(F,4)` compose to zero; field embeddings give chain maps.
- A raw sum is a cycle representative exactly when `IsCycle4` holds.

**Checks.**

- The `Λ²B₂` component of the cobracket of a single symbol is zero, so the restriction lands in `B₃⊗U`.
- Over ℚ the raw sum `[1]` satisfies `IsCycle4`, since `u(1) = 0`, although `[1]₃ ≠ 0`; the raw sum `[2]` does not, since pairing `[2]₃⊗u(2)` with `L₃ ⊗ ord₂` gives `L₃(2) = 7ζ(3)/8 ≠ 0`.
- For every `x ≠ 0` the raw sum `[x] + [x⁻¹]` satisfies `IsCycle4`, by inversion in `B₃(F)` and `u(x⁻¹) = −u(x)`; its `L₄` period is `L₄(x) + L₄(1/x) = 0`.

### 3.3 The weight-four extension theorem

Prove that

```text
0 → B₄(F) → L₄(F) → Λ²B₂(F) → 0,      δ₂₂ D₃₁(x,y) = [x]₂∧[y]₂,
```

is exact for every infinite field, where `δ₂₂` is the `Λ²B₂` component of the cobracket in the coordinates of §3.1 (the `Λ²L₂`-component of the Lie cobracket is its negative, by the Conventions; exactness does not see the sign). Consequently the inclusion of `Γ(F,4)` into the weight-four Chevalley–Eilenberg complex is a quasi-isomorphism: its cokernel is the two-term complex `Λ²B₂ → Λ²B₂` with identity differential (Goncharov–Rudenko [GR], §6, Theorem 6.1 with Lemmas 6.2–6.6 and Corollary 6.5, pp. 57–61, GR line 2604; Theorem 1.14(c) and Corollary 1.15, p. 16). A proof route specializes `Q₄` along the collision strata of `M̄₀,₇` used in §6 of the source to show that modulo `B₄(F)` the double symbol is antisymmetric and satisfies the five-term relation in each argument, so that `[x]₂∧[y]₂ ↦ D₃₁(x,y)` is a well-defined inverse of `δ₂₂` on the quotient. *Needs:* §§1.4, 3.1–3.2; K3BlochGroups §§3.3–3.4; Mathlib `ExteriorAlgebra.exteriorPower`.

**Checks.**

- Surjectivity: `[x]₂∧[y]₂ = δ₂₂ D₃₁(x,y)` for all `x,y`.
- `δ₂₂` vanishes on `B₄(F)`, since single symbols have zero `Λ²B₂` component.
- For `F = ℚ(x,y)` with `x,y` independent transcendentals, `[x]₂∧[y]₂ ≠ 0`, so `D₃₁(x,y) ∉ B₄(F)`; the extension is not split by inclusion of single symbols alone.

### 3.4 The cyclic shuffle coalgebra of a punctured line

Fix a finite set `S = {a, s₁,…,s_n}` of points with a distinguished point `a`. Let `V` be the ℚ-space spanned by `X_s`, `s ∈ S`, modulo `Σ_s X_s = 0`, with basis `X_{s₁},…,X_{s_n}`. Form the cyclic words `⊕_{r≥1}(V^{⊗r})_{ℤ/r}`, divide by the pure cyclic words `⟨X_s,…,X_s⟩`, `s ≠ a`, and by every first-shuffle sum `Σ_{σ∈Sh(p,q)}⟨v₀, v_{σ(1)},…,v_{σ(p+q)}⟩` with `p,q ≥ 1`. Keep the words of length `r ≥ 2`, in weight `r−1`, and call the result the reduced cyclic shuffle coalgebra `CLie_S`. Define its cut cobracket as the sum of `⟨vᵢ,…,vⱼ⟩∧⟨vⱼ,…,v_{i−1}⟩` over cyclic cuts, keeping positive-weight factors only, and prove that it descends through the cyclic and shuffle relations and satisfies co-Jacobi (Goncharov–Rudenko [GR], §2, item 2, p. 27; (66) and Figure 7, p. 28; Goncharov [G08], §8.2, Lemma 8.1 and Proposition 8.3, p. 84). The pure words of length two survive the first-shuffle relations, which have length at least three; they are divided out because they span the kernel of the derivation action (§3.5). *Needs:* Mathlib `TensorProduct`, `Submodule.Quotient.mk`, `Finsupp`.

The coalgebra has the following API.

- A cyclically ordered finite list of puncture letters gives a class; rotations give the same class.
- Every first-shuffle sum vanishes.
- The cut cobracket is computed on words and satisfies co-Jacobi.
- The word-length `m+1` part is the weight-`m` part.

**Checks.**

- For four letters, `⟨a,b,c,d⟩ + ⟨a,c,b,d⟩ + ⟨a,c,d,b⟩ = 0`: the shuffle of `b` with `(c,d)` behind the fixed `a`.
- A mixed two-letter word `⟨X_s,X_t⟩`, `s ≠ t`, has weight one and survives; `⟨X_s,X_s⟩` is zero in `CLie_S`.
- With two punctures `S = {a,s}` one has `V = ℚX_s` and every positive-weight class vanishes: words of length at least three are killed by shuffles and the length-two word is pure.
- The order of the two factors of a cut is a convention with a witness: the cut through the letter `vⱼ` and the arc between `v_{i−1}` and `vᵢ` contributes `⟨vᵢ,…,vⱼ⟩∧⟨vⱼ,…,v_{i−1}⟩`, the factor that begins after the cut arc first. For `⟨a,b,c⟩` this is `⟨a,b⟩∧⟨b,c⟩ + ⟨b,c⟩∧⟨c,a⟩ + ⟨c,a⟩∧⟨a,b⟩`, and the reversed word `⟨c,b,a⟩` has the negative; the opposite order negates every cobracket, and with it the signs of §3.13. For a word of length five the fifteen cuts split as five of type `(1,3)`, five of type `(3,1)` and five of type `(2,2)`, and the differential `d(a∧b) = δa∧b − a∧δb` squares to zero on every word of length four or five, before any shuffle relation is imposed.

### 3.5 Special derivations

For the punctured line with tangential base point at `a`, let `𝔤_S` be the free graded Lie algebra on the `X_s` modulo `Σ_s X_s = 0`, built from Mathlib `FreeLieAlgebra`. A special derivation is a `LieDerivation` `D` with `D(X_a) = 0` and `D(X_s) = [X_s, u_s]` for `s ≠ a`, where `X_a = −Σ_{s≠a} X_s`. Prove that the graded dual of `CLie_S` in positive weight is canonically isomorphic to the positive graded Lie algebra of special derivations, with the commutator of derivations dual to the cut cobracket (Goncharov–Rudenko [GR], §2, item 2, Theorem 2.1 with (62)–(63), pp. 26–27; Goncharov [G08], §8.2, Lemma 8.1 and Propositions 8.2–8.4, pp. 84–85). The source statements identify the shuffle quotient of all cyclic words without removing pure words; in length two that map has the kernel spanned by `⟨X_s,X_s⟩`, whose derivation is `X_s ↦ [X_s, 2X_s] = 0`, so the identification holds on the reduced coalgebra, in every weight at least two unchanged. *Needs:* §3.4; Mathlib `FreeLieAlgebra`, `LieDerivation`.

**Checks.**

- Every derivation in the image fixes `X_a`. For three punctures `a, s₁, s₂` the inner derivation `ad X_{s₁}` preserves every conjugacy class but moves `X_a`, so dropping `D(X_a) = 0` gives a strictly larger space.
- For two punctures there are no positive special derivations and `CLie_S` is zero in positive weight, matching §3.4.
- The pure word `⟨X_s,X_s⟩` maps to the zero derivation; the reduced coalgebra has no class mapping to zero.

### 3.6 Framed mixed Hodge–Tate structures

On a smooth complex variety `X`, define good variations of mixed ℚ-Hodge–Tate structures as variations of mixed Hodge structures (fibrewise `TauCeti.Hodge.MixedHodgeStructure`, HodgeStructures Layer L2) whose weight-graded pieces are sums of Tate structures `ℚ(n)`, with Griffiths transversality and the admissibility conditions at infinity of [G08] §5. Framings: a framed object is a triple `(H, v, f)` with `v ∈ Hom(ℚ(n), gr^W_{−2n}H)` and `f ∈ Hom(gr^W_{−2m}H, ℚ(m))`; framed objects modulo the equivalence generated by framed morphisms form a graded Hopf algebra whose indecomposables are a graded Lie coalgebra `L^HT_•(X)` with `L^HT_1(X) = O(X)ˣ_ℚ` (Goncharov–Rudenko [GR], §8.2, item 2, (183)–(184), p. 76; Goncharov [G08], §§4.1–4.2, pp. 39–44). Over a point this is the Lie coalgebra of the category of mixed ℚ-Hodge–Tate structures. *Needs:* HodgeStructures Layer L2, at the pins `TauCeti.Hodge.MixedHodgeStructure`, `TauCeti.Hodge.MixedHodgeStructureCat` and `TauCeti.Hodge.tate`; Mathlib `TensorProduct`, `ExteriorAlgebra.exteriorPower`.

The construction has the following API.

- Framed objects multiply by tensor product and compose by the coproduct `Σ (H,v,b_i) ⊗ (H,b_i^∨,f)` over a basis of the middle grade.
- Weight one is `O(X)ˣ⊗ℚ`, by the Kummer extension of `f`.
- Pullback along morphisms of smooth varieties gives morphisms of Lie coalgebras.

**Checks.**

- Over a point, the framed Kummer extension of `x ∈ ℂˣ` has class `x⊗1` in weight one; `x = −1` gives zero.
- A split extension `ℚ(0)⊕ℚ(n)` with its framings has zero class in `L^HT_n`.
- The framed object `(ℚ(n), id, id)` has weight zero and is the unit; no weight-zero part enters `L^HT_•`.

### 3.7 The canonical real period and rigidity

Construct the commutative dg-algebra `C_H(X) = ⊕_n C_H(ℝ_X(n))` of [G08] §4, quasi-isomorphic in weight `n` to the real Deligne complex, with its product `∗` ([G08] Definition 4.10, p. 47, G08 line 1967) and its differential `δ = −µ⁻¹∘D∘µ` ([G08] Definition 4.12 and Lemma 4.13, p. 48, G08 lines 2028–2045), and the canonical real period map of commutative dg-algebras `P: CE*(L^HT_•(X)) → C_H(X)` sending `f ∈ L^HT_1(X)` to `log|f|` (Goncharov–Rudenko [GR], §8.2, item 2, Theorem 8.3 with (185)–(186), p. 76, GR line 3520; [G08] §§4.2–4.3, pp. 41–52, and §5, pp. 53–63). In weight `n` a form of type `(a,b)` has Hodge bidegree `(a−n, b−n) = (−s,−t)` and `N`-eigenvalue `s + t − 1` ([G08] p. 42, G08 lines 1766–1775); a product of degree-one elements `φ₁,…,φ_k` with eigenvalues `N_j > 0` is `N⁻¹ Σ_j (−1)^{j−1} d^Cφ₁∧…∧N_jφ_j∧…∧d^Cφ_k` with `N = Σ_j N_j`; and on a zero-form of weight `n ≥ 2`, `δ = −d/2`. Since `P` is multiplicative, it is determined on products by its degree-one values: `P(f₁∧…∧fₙ) = (1/n!)Alt_n(log|f₁| d^C log|f₂|∧…∧d^C log|fₙ|)`, and for `a` of weight `m ≥ 2` and units `f, g`, `P(a∧f) = ((2m−1)/(2m))P(a) d^C log|f| − (1/(2m))log|f| d^C P(a)` and `P(a∧f∧g) = (1/(2m+1))((2m−1)P(a) d^C log|f|∧d^C log|g| − log|f| d^C P(a)∧d^C log|g| + log|g| d^C P(a)∧d^C log|f|)`. Its weight-`n` values are `ℝ(n−1)`-valued forms, the reality condition (93) of [G08] (p. 42, G08 line 1785): a degree-one value is real for odd `n` and imaginary for even `n`. Construct the comparison: in weight `n` and degree `k = 1,…,n`, let `µ` multiply a form of type `(a,b)` by `binom(2n−a−b−2, n−a−1)⁻¹` ([G08] (106), p. 48, G08 line 2023; it is `I∘γ` of Lemma 4.16, G08 line 2225) and put `Φ = (−1)^{k−1}µ`. Prove that `Φ` is an isomorphism of complexes from `(C_H(ℝ_X(n)), δ)` in degrees `1,…,n` onto the first `n` terms `A⁰(X)(n−1) → … → A^{n−1}(X)(n−1)` of the real Deligne complex `RD(X;n)` of [GR] (178)–(180) with the exterior derivative `d`: in these degrees `D = d`, and `µδ = −Dµ`. The ordinary real period is `R = Φ∘P`. On a degree-one element of weight `n`, `R = binom(2n−2, n−1)⁻¹P`. On `ΛⁿL^HT_1`, `R(f₁∧…∧fₙ) = ω_n(log|f₁|,…,log|fₙ|)`, Goncharov's form `(1/n!)Alt_n(φ₁ Σ_{j=0}^{n−1}(−1)^j ∂φ₂∧…∧∂φ_{j+1}∧∂̄φ_{j+2}∧…∧∂̄φₙ)` of [G08] Definition 2.1, (56), p. 28, G08 line 1151: the weight `binom(n−1, j)⁻¹` that `µ` gives to the type `(j, n−1−j)` cancels the multiplicity `binom(n−1, j)` of that type in the expanded `d^C`-wedge. By [G08] Lemma 2.3 (p. 28, G08 line 1161), off the divisors of the `fᵢ`, `dω_n = (−1)^{n−1}2^{1−n}πₙ(dlog f₁∧…∧dlog fₙ)`, with `πₙ` the projection onto `ℝ(n−1)` of [GR] (1) (p. 3, GR line 90), so `(ω_n, (−1)^{n−1}2^{1−n}dlog f₁∧…∧dlog fₙ)` is a degree-`n` cocycle of `RD(X;n)` and `R` is a map of complexes from the weight-`n` Chevalley–Eilenberg complex to `RD(X;n)`. This is the regulator (186) of the source; its display (188) writes `ω_{n−1}` without the factor `(−1)^{n−1}2^{1−n}`, and its explicit formulas (192) are not those of `P` or of `R` (§5.1). The scalar period `p` of the Conventions is `R` for odd `n` and `−i·R` for even `n`. Prove the rigidity lemma: a two-step variation `0 → ℚ(m) → L → ℚ(0) → 0` with `m ≥ 2` over a connected smooth base is constant (Goncharov–Rudenko [GR], §2, item 7, Lemma 2.7, p. 33). A proof route for rigidity uses Griffiths transversality: the derivative of the period of the extension lies in `F^{−1}` of the pure part `ℚ(m)⊗O`, which is zero for `m ≥ 2`. *Needs:* §3.6; HodgeStructures Layer L2, at the pins `TauCeti.Hodge.MixedHodgeStructure` and its strictness `TauCeti.Hodge.MixedHodgeStructure.Hom.range_inf_F_eq_map_F`; MotivicEtaleKTheory §§3.3–3.4 for the real Deligne complex.

The period has the following API.

- `P` is a map of commutative dg-algebras compatible with pullback, multiplicative for `∗` and intertwining the Chevalley–Eilenberg differential with `δ`.
- `Φ` is an isomorphism of complexes in degrees `1,…,n` of weight `n`, given type by type by the displayed rational factors and signs; `R = Φ∘P` is a map of complexes from the weight-`n` Chevalley–Eilenberg complex to `RD(X;n)`, with holomorphic component `(−1)^{n−1}2^{1−n}dlog f₁∧…∧dlog fₙ` in degree `n`.
- Weight one is `log|f|` for both; on `ΛⁿL^HT_1`, `P` is the `∗`-product `(1/n!)Alt_n(log|f₁| d^C log|f₂|∧…∧d^C log|fₙ|)` and `R` is `ω_n`.
- In weight `n` the values lie on `ℝ(n−1) = (2πi)^{n−1}ℝ`; the scalar period `p` is the real coordinate of a degree-one value of `R` on that line.

**Checks.**

- Value lines and the two differentials, on the dilogarithm: at `z = i` on the angular vector `∂θ`, `dD(∂θ) = log|z| d arg(1−z)(∂θ) − log|1−z| d arg z(∂θ) = −(1/2)log 2`. In `C_H`, `δP(S₂) = −(1/2)d(i·L₂)` and the product `P(1−z)∗P(z) = (1/2)(log|1−z| d^C log|z| − log|z| d^C log|1−z|)` both take the value `(i/4)log 2 ≈ 0.173287i`; in `RD`, `dR(S₂) = d(i·L₂/2)` and `ω₂(log|1−z|, log|z|) = (1/2)(log|z| d^C log|1−z| − log|1−z| d^C log|z|)` both take `−(i/4)log 2`. Pairing `P(S₂) = i·L₂` with the exterior derivative gives `−(i/2)log 2` against `(i/4)log 2`, and pairing `R(S₂) = i·L₂*` with `δ` gives `(i/8)log 2` against `−(i/4)log 2`; the real `L₂*` in place of `i·L₂*` gives a real value against an imaginary one.
- Four units: for the units `2, y, z, w` on `𝔾_m³` at `y = z = w = 1` on the three angular vectors, `P(2∧y∧z∧w) = (1/4)log 2·d^C log|y|∧d^C log|z|∧d^C log|w| = −(i/4)log 2 ≈ −0.173287i`. The 3-form `d^C log|y|∧d^C log|z|∧d^C log|w|` takes the value `−i` there, `−i/4` from its types `(3,0)` and `(0,3)` and `−3i/4` from `(2,1)` and `(1,2)`; `Φ = −µ` with weights `1` and `1/3` gives `R = ω₄ = (i/8)log 2 ≈ 0.086643i`, the value of [G08] (56) computed directly. The form `(1/6)Alt₄(log|x₁| d^C log|x₂| ∧ d^C log|x₃| ∧ d^C log|x₄|)` of [GR] (192) gives `−i log 2`, neither value.
- Closedness in dimension three: on `𝔾_m³` minus `z₁ = −1`, with the units `z₁, z₂, z₃, 1 + z₁`, the holomorphic form `dlog z₁∧dlog z₂∧dlog z₃∧dlog(1+z₁)` vanishes, and `dω₄ = 0` by [G08] Lemma 2.3. The differential of `(1/6)Alt₄(log|f₁| d^C log|f₂|∧d^C log|f₃|∧d^C log|f₄|)` has the `(3,1)`-component `−(1/8)(1/(z₁(1+z̄₁)) − 1/(z̄₁(1+z₁)))(z₂z₃)⁻¹ dz₁∧dz₂∧dz₃∧dz̄₁`, the terms with three holomorphic factors carrying the coefficient `−2`, which equals `(i/8)dz₁∧dz₂∧dz₃∧dz̄₁ ≠ 0` at `(i,1,1)`; that form is not a Deligne cocycle, so it is not the top component of any map of complexes.
- Exchanging two arguments of `ω₄` negates it and a repeated argument gives zero.
- For the Kummer variation of `f`, `P(f) = R(f) = log|f|`, not `log f` or `arg f`.
- For `m = 1` rigidity fails: the Kummer variation of the coordinate on `𝔾_m` is not constant.

### 3.8 Motivic correlators on a punctured line

For a number field `F`, a point `a ∈ ℙ¹(F)`, a nonzero tangent vector `v` at `a`, and points `b₀,…,b_m ∈ ℙ¹(F)` different from `a` (repetitions allowed for `m > 1`; `b₀ ≠ b₁` when `m = 1`), define the motivic correlator `Cor_{a,v}(b₀,…,b_m)` in the weight-`m` part of the Lie coalgebra of `MT(F)` by dualizing the special-derivation action of the motivic Lie algebra on the fundamental Lie algebra of `ℙ¹ ∖ {a, b₀,…,b_m}` at the tangential base point, through §3.5 (Goncharov–Rudenko [GR], §2, items 2–5, (62)–(68), Theorem 2.2 and Definition 2.3, pp. 26–29; §1.2, item 5, pp. 14–15). Prove cyclic invariance, independence of `v` in weight `m > 1`, the cut formula (66) for the cobracket, `Cor_∞(b₀,b₁) = u(b₀ − b₁)` for the standard tangent at `∞`, and the weight-two value given by (67). *Needs:* §§3.4–3.5; PeriodsAndSpecialValues PS.9.8–PS.9.10 with the contracts mixed-tate-number-fields and punctured-line-path-torsors; MotivesAndAlgebraicCycles §3.6 and §§6.1–6.3 for the Tannakian group of `MT(F)`.

The correlators have the following API.

- The marked and tangential data give a weight-`m` element; cyclic permutation of the `bᵢ` leaves it unchanged.
- Its cobracket is the cyclic sum of cuts (66).
- Field embeddings and projective changes of coordinate transport all data; in weight greater than one the tangent vector does not matter.

**Checks.**

- For `u ≠ w`, `Cor_∞(u,w) = u(u − w)`, not `u(u/w)`.
- Repeated arguments are allowed in weight `m > 1`; `bᵢ = a` lies outside the domain and is reached only through §3.11's specialization.
- In weight two the three cuts of `(0,1,y)` give `u(−1)∧u(1−y) + u(1−y)∧u(y) + u(y)∧u(−1) = (1−y)∧y = δ[y]₂`, since `u(−1) = 0`, and by (67) with the cross-ratio `s(∞,0,1,y) = 1−y` one has `Cor_∞(0,1,y) = −Li₂^M(1−y) = Li₂^M(y)`: the correlator is the motivic dilogarithm of `y` with the plus sign. Its scalar period is `p = L₂*(y) = L₂(y)/2`, its ordinary period `R = i·L₂*(y)` and its Hodge-complex period `P = i·L₂(y)` (Conventions, §§3.7, 5.1), and its numerical Hodge correlator `Cor^H(0,1,y) = c₂(2πi)^{−2}p = −(2πi)^{−2}L₂(y)` (§3.9) is the negative of `Cor^H(1,0,y)`: reversing the cyclic order of three points inverts the cross-ratio and negates a weight-two correlator.

### 3.9 Hodge correlators

For the punctured complex line with base point `∞` and its standard tangent vector, define the numerical Hodge correlator `Cor^H(z₀,…,z_m)` of weight `m ≥ 1` as Malkin's normalized tree sum with its phase fixed. For a plane trivalent tree `T` in a disc with leaves at `z₀,…,z_m` placed counterclockwise on the boundary, `m − 1` internal vertices and `2m − 1` edges `E₀,…,E_{2m−2}` numbered compatibly with the canonical orientation `Or_T` of the plane embedding, assign to an edge `(u,v)` the function `f = (2πi)^{−1} log|x_u − x_v|`, fix the leaf coordinates, integrate `(−4)^{m−1} binom(2m−2, m−1)^{−1} Or_T f₀ d^C f₁∧…∧d^C f_{2m−2}` over the internal vertices in `ℂ^{m−1}` with the orientation of the complex structure, and multiply by `i^{m−1}`; `Cor^H` is the sum over all such `T` (Malkin [M20], §1.2.1, (3), p. 3, M20 line 114). For a real function `h` one has `d^C h = −i·(dh∘J)` with `J` the complex structure, of determinant one, so `d^C h₁∧…∧d^C h_{2m−2} = (−1)^{m−1} dh₁∧…∧dh_{2m−2}` and `Cor^H = (2πi)^{−m}(2π)^{1−m}·4^{m−1}binom(2m−2, m−1)^{−1}·Σ_T Or_T ∫ h₀ dh₁∧…∧dh_{2m−2}` with the real functions `h = log|x_u − x_v|`; hence `Cor^H` takes values in `(2πi)^{−m}ℝ`. Without the factor `i^{m−1}` the integral (3) lies in `(2πi)^{−(2m−1)}ℝ = iℝ` in every weight, which is the line `(2πi)^{−m}ℝ` the source assigns to it only for odd `m`. For a base point `a` with tangent vector `v` the edge function is the Green function of `(a,v)` divided by `2πi` (Goncharov–Rudenko [GR], §2, item 6 and Figure 8, p. 31; Goncharov [G08], §3.2, pp. 34–37). Prove local integrability of the integrands, so that the tree integrals converge, and the period comparison: there is a nonzero real constant `c_m`, depending only on `m`, such that `Cor^H(x) = c_m(2πi)^{−m} p(Cor^Hod(x))` for every cyclic word `x` of weight `m`, where `Cor^Hod(x)` is the Hodge realization of the motivic correlator of §3.8 under the complex embedding and `p` is the scalar period of §3.7, the real coordinate of the ordinary period `R`; `c₁ = 1` and `c₂ = −2` (Malkin [M20], §1.4.4, Theorem 6(a), p. 13, M20 line 627; Goncharov [G08], Theorem 1.12, p. 19, and §11.1, Lemma 11.2, pp. 104–105). The sources state the comparison with constant one, but their weight-two values are mutually inconsistent (Checks), and Goncharov's normalized Hodge correlator differs from the tree sum by the factor `4^{−(m−1)}binom(2m−2, m−1)` ([G08] §11.1, p. 105, G08 line 4632); so the constant `c_m` is part of this target, and no consumer uses its value. The source [GR] §2 item 6 writes the same tree integrals with the unscaled Green function `log|x−y|`, the full alternation over the edges and the weight `1/|Aut T|`; those numbers differ from `Cor^H` by further constants depending on `m`. The period `p`, not `Cor^H`, is what §§5.1–6.3 use. *Needs:* §§3.7–3.8; Polylogarithms Layer 5 (currents).

The correlator function has the following API.

- Each tree contributes a convergent integral, and `Cor^H(z₀,…,z_m)` is `i^{m−1}` times the finite sum of these over plane trivalent trees, with values in `(2πi)^{−m}ℝ`.
- Dihedral symmetry: `Cor^H(z₀,…,z_m) = Cor^H(z₁,…,z_m,z₀) = (−1)^{m+1} Cor^H(z_m,…,z₀)` (Malkin [M20], §1.2.2, p. 4).
- Invariance under `z ↦ z + c` in every weight and under `z ↦ cz`, `c ∈ ℂˣ`, in weight `m > 1` (Malkin [M20], §1.2.2, p. 4).
- On cyclic words of weight `m`, `Cor^H = c_m(2πi)^{−m}·p∘Cor^Hod` with `c_m ∈ ℝˣ` depending only on `m`.

**Checks.**

- Weight one: the only tree is a single edge with no internal vertex and constant `1`, so `Cor^H(z₀,z₁) = (2πi)^{−1}log|z₀ − z₁|` (Malkin [M20], Figure 1, p. 4), and `(2πi)·Cor^H(z₀,z₁) = log|z₀ − z₁|` is the Kummer period of §3.7, so `c₁ = 1`; the phase factor `i^{m−1}` is `1` here. An edge function without the factor `(2πi)^{−1}` multiplies the weight-`m` value by `(2πi)^{2m−1}`, which is the uniform factor `(2πi)^m` only in weight one.
- Weight two: there is one tree, with one internal vertex `x`. At `(z₀,z₁,z₂) = (0,1,i)` ordinary integration gives `∫_ℂ log|x| d log|x−1| ∧ d log|x−i| = −πD(i)`, with `D(i) ≈ 0.915966` Catalan's constant (the integral is alternating in its three points), so the literal integral (3) is `−2(2πi)^{−3}·πD(i) = −iD(i)/(4π²) ≈ −0.023202i`, off the line `(2πi)^{−2}ℝ = ℝ`, and `Cor^H(0,1,i) = i·(−iD(i)/(4π²)) = −(2πi)^{−2}D(i) ≈ 0.023202`. This agrees with the closed formula (4) of [M20] (p. 4, M20 line 145), `Cor^H(z₀,z₁,z₂) = (2πi)^{−2}L₂((z₁−z₀)/(z₂−z₀))`, at the argument `1/i = −i`. With `p(Cor^Hod(0,1,y)) = L₂*(y) = L₂(y)/2` (§§3.13, 5.1) it gives `Cor^H(0,1,y) = −(2πi)^{−2}L₂(y) = −2(2πi)^{−2}p`, so `c₂ = −2`; at `z = i`, `p = D(i)/2 ≈ 0.457983`, and reading the numerical correlator as the period is off by `−2(2πi)^{−2} = 1/(2π²)`. The example after (16) on p. 18 of [M20] (M20 lines 889–895) reports `Cor^H(1,0,z) = −(1/2)(2πi)^{−2}L₂(z)`, half the negative of the value `(2πi)^{−2}L₂(z)` of (4), from a computation that equates the imaginary form `(2πi)^{−2}(log|z| d^C log|z−1| − log|z−1| d^C log|z|)` with the real form `−(1/2)(2πi)^{−2}dL₂(z)`; it is not used.
- Cyclic reordering preserves `Cor^H` and reversal multiplies it by `(−1)^{m+1}`: by `+1` in weight one, where `log|z₀ − z₁|` is symmetric, and by `−1` in weight two, matching `L₂(1/w) = −L₂(w)`; a symmetric weight-two correlator would contradict `Cor^H(1,0,z) = −Cor^H(0,1,z)`.

### 3.10 Collision continuity

Prove that for `m > 1`, `Cor^H(z₀,…,z_m)` is continuous on `ℂ^{m+1}` minus the full diagonal, and that in a partial collision the limit is the correlator on the component nearest the tangential base point, with coincident arguments retained (Malkin [M20], §2.1.3, Theorem 11, p. 18; §4, Lemma 29 and the closing corollary, pp. 44–45). This justifies applying the realization of §3.13 to the specialized relations of Layer 1. A proof route controls the logarithmic singularities of the tree integrals, reduces the possible limit discrepancy to a constant on a boundary stratum and kills it by averaging over circles (Lemma 29). *Needs:* §3.9.

**Checks.**

- At a partial collision `z₁ → z₂` with `z₀` fixed the limit exists and equals the correlator with `z₁ = z₂`.
- Three arguments collapsing to one point give direction-dependent limits such as `L₂((a−c)/(b−c))`; the full diagonal must be excluded.
- In weight one (`m = 1`) the full diagonal is `{z₀ = z₁}` and the correlator `(2πi)^{−1}log|z₀ − z₁|` is continuous on its complement, so the continuity clause holds there too; but there is no partial collision, the correlator depends on the tangent vector at the base point (§3.8), and it is unbounded near the diagonal. The partial-collision clause has content only for `m > 1`, the scope of Lemma 29 of the source, where the limit is the correlator with the coincident arguments retained.

### 3.11 Change of base point

Let `ℓ ≥ 3`, `a ≠ b`, and `x₁,…,x_ℓ ∈ ℙ¹(F)` different from `a` and `b`, repetitions allowed. For `I ⊆ {1,…,ℓ}` let `x^I` replace `xᵢ` by `a` exactly when `i ∈ I`. Prove `Cor_a(x₁,…,x_ℓ) = Σ_I (−1)^{|I|} Cor_b(x^I)` in weight `ℓ−1`, and that the specialization `Cor_a(a,x₂,…,x_ℓ)` is zero provided some `xᵢ ≠ a` (Goncharov–Rudenko [GR], §2, item 7, Theorem 2.6 with (70)–(72), p. 32; Lemmas 2.7 and 2.8 with (73), p. 33). A proof route proves the Hodge identity from `G_a(x,y) = G_b(x,y) − G_b(a,y) − G_b(x,a) + const`, compares cobrackets by induction on the weight and transports to motives by rigidity (§3.7) and injectivity of the regulator on `Ext¹` (contract mixed-tate-number-fields). *Needs:* §§3.7–3.10; PeriodsAndSpecialValues PS.9.8–PS.9.9 with the contract mixed-tate-number-fields.

**Checks.**

- For `ℓ = 3` the nonzero terms give the five-term relation of the dilogarithm.
- The empty set `I = ∅` contributes `Cor_b(x₁,…,x_ℓ)` with sign `+1`, and `I = {1,…,ℓ}` contributes `Cor_b(a,…,a)`, which is zero because its cyclic word is pure (§3.4); keeping a nonzero value there would break the identity already for `ℓ = 3`.
- `Cor_a(a,a,…,a)` is not assigned a value; the vanishing statement needs one argument different from `a`.

### 3.12 Depth reduction in weight four

Prove that for `ℓ > 3` arguments every motivic correlator of weight `ℓ−1` is a rational combination of correlators with two equal arguments, after a projective change of coordinate and the specialization of §3.11; and that every weight-four correlator (`ℓ = 5`) is a combination of the correlators `Cor_∞(0,0,x,1,y)` and `Cor_∞(0,0,0,1,z)` (Goncharov–Rudenko [GR], §2, item 7, Proposition 2.9 with footnote 12, pp. 33–34; Corollary 2.10, p. 34, GR line 1486). A proof route shows from §3.11 that, modulo repeated-argument correlators, exchanging the base point with an argument negates the class; for even `ℓ` cyclic invariance then kills it, and for odd `ℓ > 3` the first-shuffle relation does. *Needs:* §§3.4, 3.8, 3.10–3.11.

**Checks.**

- The threshold counts arguments: `ℓ = 3` is weight two, where the reduction is false, since `Cor_∞(0,1,y)` is the dilogarithm and has no repeated argument.
- At `ℓ = 4` (weight three) every correlator reduces to ones with a repeated argument, matching the reduction of `D₂₁` to single symbols in §1.5.
- At `ℓ = 5` two families survive, matching the two generators `S₄` and `D₃₁` of `L₄`.

### 3.13 Realization of the combinatorial Lie coalgebra

For a number field `F` prove that `Sₘ(y) ↦ Cor_∞(0,…,0,1,y)` with `m−1` zeros (`m = 2,3,4`), `D₂₁(x,y) ↦ −Cor_∞(0,x,1,y)` and `D₃₁(x,y) ↦ Cor_∞(0,0,x,1,y)` define a natural morphism of graded Lie coalgebras from `U ⊕ B₂ ⊕ L₃ ⊕ L₄`, its cobrackets of §§1.6 and 3.1 read in `Λ²L` through the identifications of the Conventions, to the Lie coalgebra of `MT(F)`, whose image in weights at most four is the correlator subcoalgebra (Goncharov–Rudenko [GR], §1.2, item 5, Theorem 1.13, pp. 15–16, GR line 660; §2, Theorem 2.4 and Proposition 2.5, pp. 29–31; §5.3, pp. 56–57). No injectivity or surjectivity onto the motivic Lie coalgebra is asserted. The signs are those forced by the cut formula (66), the value (67) and the identifications of the Conventions, and differ from the source's Definition 2.3 (whose weight-two entry has the cobracket `y∧(1−y)`); they are recomputed in the Checks. A proof route compares the cut formula with the cobrackets of §§1.6 and 3.1 through the identifications of the Conventions; shows by Layer 2 that the image of each relation has zero cobracket, hence by rigidity (§3.7) is a constant extension; kills the constant using `Ext¹_{MT(ℚ)}(ℚ(0),ℚ(4)) = 0` and the value of `S₃(1)` in weight three; and uses §3.10 for the specialized relations and §3.12 for the image. *Needs:* §§1.5, 3.1, 3.7–3.12; PeriodsAndSpecialValues PS.9.9 and the contract mixed-tate-number-fields.

**Checks.**

- Weight two: the cut cobracket of `Cor_∞(0,1,y)` is `u(1−y)∧u(y) = (1−y)∧y = δ[y]₂`, since `u(−1) = 0` kills the two cuts with the factor `Cor_∞(0,1)`; so `S₂(y) ↦ Cor_∞(0,1,y)`, and the minus sign gives `y∧(1−y)`.
- Weight three, single symbol: of the eight cuts of `(0,0,1,y)` six vanish, because `u(0) = u(−1) = 0` and `Cor_∞(0,0,1) = Cor_∞(y,0,0) = 0` by the first-shuffle relation `2⟨X₁,X₀,X₀⟩ = 0` of §3.4; the two survivors give `Cor_∞(0,1,y)∧u(y)`, which is `[y]₂⊗u(y) = δS₃(y)` under `a∧b ↦ a⊗b`, so `S₃(y) ↦ Cor_∞(0,0,1,y)`; the identification `b∧a ↦ a⊗b` would give the minus sign. Of the fifteen cuts of `(0,0,0,1,y)` only `Cor_∞(0,0,1,y)∧u(y)` survives, since `Cor_∞(0,0,0,1) = Cor_∞(y,0,0,0) = 0` by the shuffle `3⟨X₁,X₀,X₀,X₀⟩ = 0` and every `(2,2)`-cut has a factor with a repeated letter, so `S₄(y) ↦ Cor_∞(0,0,0,1,y)` with the same sign.
- Double symbols: for a word `(b₁,b₂,b₃,b₄)` the cuts give `Σ_k Cor_∞(b_k,b_{k+1},b_{k+2}) ∧ u((b_{k+2}−b_{k−1})/(b_{k−1}−b_k))`; for `(0,x,1,y)`, with `Cor_∞(0,x,1) = [1−x]₂ = −[x]₂`, `Cor_∞(x,1,y) = [(y−x)/(1−x)]₂`, `Cor_∞(1,y,0) = [y]₂` and `Cor_∞(y,0,x) = [y/x]₂` by shift, rescaling and the reflection `[1−w]₂ = −[w]₂`, this is minus the image of the four-term `δD₂₁(x,y)` of §1.6, so `D₂₁(x,y) ↦ −Cor_∞(0,x,1,y)`. For `(0,0,x,1,y)` the ten cuts of types `(3,1)` and `(1,3)` give the image of the four tensor terms of `δD₃₁(x,y)`, using `Cor_∞(0,0,x,y) = Cor_∞(0,0,1,y/x)` and `Cor_∞(0,0,x,1) = Cor_∞(0,0,1,1/x)` with `S₃(1/x) = S₃(x)`; the single surviving `(2,2)`-cut is `Cor_∞(0,x,1)∧Cor_∞(1,y,0) = −[x]₂∧[y]₂` in `Λ²L₂`, the model's `+[x]₂∧[y]₂` under the Conventions, so `D₃₁(x,y) ↦ Cor_∞(0,0,x,1,y)`. With the natural inclusion of `Λ²B₂` no choice of sign makes `D₃₁` compatible, which is how the sign of the Conventions is detected. Evaluated over `ℚ(i)` at `x = −8/9 + 6i`, `y = 4 + 5i` through `δ⊗id` and the functionals `[w]₂⊗a⊗b ↦ D(w) log|a| ord₃(b)` and `D(w) ord₃(a) log|b|`, both sides of the tensor comparison are `0.1206` and `0.1481`, and the two `Λ²B₂` terms both give `0.0275` under the functional of §3.1.
- The image of `S₃(1)` is a nonzero rational multiple of the motivic `ζ(3)`, nonzero in `Ext¹_{MT(ℚ)}(ℚ(0),ℚ(3)) ≅ ℚ`.
- The image of `Q₄` vanishes because `Ext¹_{MT(ℚ)}(ℚ(0),ℚ(4)) = 0` (`K₇(ℚ)⊗ℚ = 0`); in weight three the analogous constant need not vanish and is fixed by `S₃(1)`.

### Examples

Over `F = ℚ(i)` the weight-four Lie coalgebra contains `S₄(i)`, whose image is a motivic class with scalar period `p = (2/5)L₄*(i) = L₄(i)/8` since `|i| = 1`, ordinary period `R = i·L₄(i)/8` and Hodge-complex period `P = 8i·L₄*(i) = (5/2)i·L₄(i)`. The correlator `Cor_∞(0,0,x,1,y)` with `x = 3, y = 5` over ℚ is the image of `D₃₁(3,5)`; the `(2,2)`-cut of its cobracket is `Cor_∞(0,3,1)∧Cor_∞(1,5,0) = −[3]₂∧[5]₂` in `Λ²L₂`, the model's `δ₂₂D₃₁(3,5) = [3]₂∧[5]₂`, and it is nonzero because `[3]₂` and `[5]₂` map to the independent vectors `2∧3` and `2(2∧5)` of `Λ²U(ℚ)` and `B₂(ℚ)` injects into `Λ²U(ℚ)`. The choice `x = 2` would be degenerate: `[2]₂ ↦ u(−1)∧u(2) = 0`, so `[2]₂ = 0` in `B₂(ℚ)` and the `(2,2)`-component vanishes.

### Dependencies

Layers 1–2; HodgeStructures Layer L2 and its pinned Tau Ceti implementation `TauCeti.Hodge.MixedHodgeStructure`; MotivicEtaleKTheory §§3.3–3.4; PeriodsAndSpecialValues PS.9.8–PS.9.10 with its two contracts; MotivesAndAlgebraicCycles §3.6 and §§6.1–6.3; Polylogarithms §§3.1–3.2, 4.5 and Layer 5; Mathlib free Lie algebras and derivations.

## Layer 4: Grassmannian configurations and decorated flags

Generic configurations of vectors, their deletion and projection maps, decorated flags with the acyclic generic decorated-flag resolution, and Gale duality are Polylogarithms §§3.4 and 3.6. This layer truncates the Bigrassmannian at weight four, maps generic decorated flags of the weight-four length to it, defines the Grassmannian group `G₄(F)`, and writes the explicit map from the dual weight-four Bigrassmannian to the weight-four Lie coalgebra complex, proving every square including the degree-eight one.

### 4.1 The weight-four Bigrassmannian

With Polylogarithms' `C_m(q)`, which keeps individual vector scales, define `BC_m^{(4)} = ⊕_{4≤q<m} C_m(q)` in degree `m`, as the quotient of the full Grassmannian bicomplex by the rows `q < 4`, with differential `D = ∂ + p`; outgoing components into the killed rows are zero. Gale duality maps it to the dual truncation `q ≤ m−4` and exchanges deletion and projection (Goncharov–Rudenko [GR], §7.1, (129)–(130), pp. 62–63; §7.4, the Grassmannian duality and (159), pp. 68–69). This is Polylogarithms §3.4's row-quotient construction with cutoff four instead of three. *Needs:* Polylogarithms §§3.4, 3.6; Mathlib `Finsupp`, `Submodule.Quotient.mk`.

The quotient has the following API.

- The degree-`m` term has exactly the rows `4 ≤ q < m`, and `D² = 0` from `∂² = p² = 0` and `∂p + p∂ = 0`.
- Duality sends the cutoff to `q ≤ m−4` and exchanges the two face maps.

**Checks.**

- `BC₄^{(4)} = 0` and `BC₅^{(4)} = C₅(4)`, the corner in degree five.
- The projection `C₆(4) → C₅(3)` is zero in the quotient, so `D` on `C₆(4)` is the deletion `C₆(4) → C₅(4)` alone; treating the truncation as a subcomplex would keep a spurious row-three term.
- Mixed faces cancel in pairs with explicit coefficients: on a tuple `(v₀,…,v_{m−1})`, deleting `v₀` and then projecting along `v₁`, which has moved to position `0`, has coefficient `(+1)(+1) = +1` in `p∂`, while projecting along `v₁` at position `1` and then deleting `v₀` has coefficient `(−1)(+1) = −1` in `∂p`; both give the configuration `(v₂,…,v_{m−1})` in the quotient by `v₁`. Zero-based `(−1)^i` is the one-based `(−1)^{s−1}` with `s = i + 1`; changing both `∂` and `p` by the same global sign leaves `∂p + p∂` unchanged, so it is not a test of the convention.

### 4.2 Decorated flags of weight-four length

Decorated `k`-flags in an `N`-dimensional `F`-space `V` (a chain `0 = F₀ ⊂ … ⊂ F_k` with `dim Fᵢ = i` and nonzero decorations `fᵢ ∈ Fᵢ/F_{i−1}`), the genericity of an `m`-tuple of them (every sum `F_{1,a₁} + … + F_{m,a_m}` with `0 ≤ aᵢ ≤ k` and `Σaᵢ ≤ N` is direct) and the complex `C_•(A_N^{(k)})` of generic tuples with its alternating deletion differential and `GL_N(F)`-coinvariants are Polylogarithms §3.4, consumed for every flag length through the contract decorated-flag-lengths (Goncharov–Rudenko [GR], §7.1, (131)–(132), p. 63). Weight four uses, for `N ≥ 4`, the flag length `k = N − 3`: this is `p + 1` for the number `p = N − 4` of quotient steps of §4.3, the case `n = 4`, `p = N − 4` of Theorem 7.1 of the source (p. 63). Nothing about flags is constructed here. *Needs:* Polylogarithms §3.4 with the contract decorated-flag-lengths.

**Checks.**

- For `N = 4` the length is one: a decorated `1`-flag is a line with a nonzero vector on it, and a generic tuple of them in `F⁴` is a generic vector configuration in the sense of Polylogarithms §3.4.
- For `N = 5` the length is two, and two flags with the same first line are not generic: `F_{1,1} + F_{2,1}` is not direct, although `1 + 1 ≤ 5`.
- The decoration `f_{i,k}` is a vector of the quotient `F_{i,k}/F_{i,k−1}`: changing a representative by an element of `F_{i,k−1}` gives the same decoration, and the configurations of §4.3 depend only on these classes.

### 4.3 From decorated flags to configurations

For `N ≥ 4` put `p = N − 4` and use decorated flags of length `p + 1`. For `m` flags and `a = (a₁,…,a_m)` with `aᵢ ≥ 0` and `|a| = Σaᵢ ≤ p`, let `t_a` be the class of the projections of the decorations `f_{i,aᵢ+1}` to `V/(⊕ᵢ F_{i,aᵢ})`, a generic `m`-tuple in dimension `N − |a|`, and define the signed sum `t = Σ_a (−1)^{|a|} t_a`. Prove that `t: C_m(A_N^{(N−3)}) → BC_m^{(4)}`, the target rows `q ≥ m` being zero, satisfies `D∘t = t∘∂` for the zero-based alternating deletion differential `∂` of the flag complex and `D = ∂ + p` of the Conventions, and that it is compatible with stabilization after the standard flag choices (Goncharov–Rudenko [GR], §7.1, Theorem 7.1 with (133)–(134), p. 63, GR line 2878; §9.1, items 1–3, pp. 85–87). A proof route: with `t_d = Σ_{|a|=d} t_a`, the deletion faces of `t_d` at a flag with `aᵢ = 0` give `t_d∘∂`, and those at a flag with `aᵢ > 0` give, with the same sign `(−1)^i`, the projection face of `t_{d−1}` along its `i`-th vector, so `∂t_d = t_d∂ + p t_{d−1}`; the projection faces of `t_p` land in the killed row three. Hence `D(Σ c_d t_d) − (Σ c_d t_d)∂ = Σ_{d<p}(c_d + c_{d+1}) p t_d`, which vanishes exactly when consecutive coefficients are opposite. The source writes the unsigned sum (GR line 2901) and obtains its total complex by "changing the signs of the differentials" of the bicomplex without fixing them (§7.1, p. 62, GR line 2838); the unsigned sum is a chain map for `∂ − p`, and the row sign `(−1)^q` on `C_m(q)` carries `∂ − p` to `D = ∂ + p` and the unsigned sum to `(−1)^N t`. *Needs:* §§4.1–4.2; Polylogarithms §3.4 (decorated flags, with the contract decorated-flag-lengths); Mathlib `Submodule.Quotient.mk`.

The map has the following API.

- Each multi-index gives a configuration in the stated dimension, well defined by directness.
- The signed finite sum over multi-indices defines `t`, and `D∘t = t∘∂`.
- Adding standard complementary flag directions gives the stabilized map.

**Checks.**

- For `N = 4`, `p = 0` and only `a = 0` occurs: `t` is the identity on generic vector configurations.
- For `N = 5` (`p = 1`, flags of length two) take six flags in `ℚ⁵` with first decorations `e₁,…,e₅, e₁+⋯+e₅` and generic second steps. Then `t₀` is the configuration of the six first decorations in `C₆(5)`, and `p t₀ = A − B` in `C₅(4)`: projecting along `eᵢ`, at the zero-based positions `0,…,4` with signs `+,−,+,−,+`, gives five copies of the configuration `A` with linear relation `(1,1,1,1,−1)`, and projecting along `e₁+⋯+e₅`, at position `5`, gives the configuration `B` with relation `(1,1,1,1,1)`; `A ≠ B` because an invertible linear map preserves the unique linear relation of five generic vectors in `ℚ⁴` (over a field of characteristic two the two relations coincide and this witness degenerates). The unsigned sum `t₀ + t₁` has `D(t₀ + t₁) − (t₀ + t₁)∂ = 2p t₀ = 2A − 2B ≠ 0`, while `t = t₀ − t₁` gives `p t₀ − p t₀ = 0`.
- The term with `aᵢ = p` uses decoration number `p + 1`, so flags of length `p` are not enough.
- Quotienting by `⊕F_{i,aᵢ+1}` instead of `⊕F_{i,aᵢ}` kills the vector `f_{i,aᵢ+1}` that must survive.

### 4.4 From group homology to the weight-four Bigrassmannian

For an infinite field `F` and `N ≥ 4`, compose the comparison map of Polylogarithms §3.4 at flag length `N − 3` (a chain map from a projective `ℚ[GL_N(F)]`-resolution of `ℚ` into the augmented generic decorated-flag complex, unique up to chain homotopy; contract decorated-flag-lengths) with the signed map `t` of §4.3, pass to `GL_N(F)`-coinvariants and apply Gale duality (§4.1), to obtain maps from `H_•(GL_N(F),ℚ)` to the homology of the dual weight-four Bigrassmannian. Prove that these maps are independent of the choices, natural in field embeddings, and compatible with `GL_N → GL_{N+1}` through the stabilized form of `t` (Goncharov–Rudenko [GR], §9.3, item 3, (240), p. 94; §9.1, items 1–3, pp. 85–87). The acyclicity of the flag complex and the comparison map are the supplier's; the flag modules are not free `ℚ[GL_N]`-modules and exactness after coinvariants is not claimed. *Needs:* §§4.1–4.3; Polylogarithms §3.4 with the contract decorated-flag-lengths; Mathlib `groupHomology`.

The maps have the following API.

- For every `N ≥ 4` and every degree there is a linear map from `H_•(GL_N(F),ℚ)` to the homology of the dual weight-four Bigrassmannian, depending on no choice.
- The maps are natural in field embeddings and commute with stabilization `GL_N → GL_{N+1}`.

**Checks.**

- For `N = 4` the flag length is one and `t` is the identity on generic vector configurations (§4.3), so the map is the supplier's comparison followed by the row quotient of §4.1 and duality.
- Two comparison maps differ by a chain homotopy, built from projectivity of the source, and so induce the same map on homology; a comparison chosen without this homotopy statement would make the maps depend on choices.
- The field must be infinite: over `𝔽₂` with `N = 2` there are only three lines in `F²`, so no fourth decorated `1`-flag is generic to three given pairwise distinct ones and the supplier's coning argument fails.

### 4.5 The Grassmannian group G₄

Let `G̃₄(F)` be the free ℚ-module on `PGL₄(F)`-orbits of generic ordered eight-tuples of points of `ℙ³(F)`, and `π₈: C₈(4) → G̃₄(F)` the projection of vectors to lines. Define `G₄(F) = G̃₄(F)/(im(π₈∂: C₉(4) → G̃₄) + im(π₈p: C₉(5) → G̃₄))`, imposing both the nine-term and the dual nine-term relation (Goncharov–Rudenko [GR], §7.4, Definition 7.5 with (161)–(162), p. 70). It is a configuration group distinct from `B₄(F)`. *Needs:* §4.1; Polylogarithms §§3.4, 3.6; Mathlib `Submodule.Quotient.mk`.

The group has the following API.

- A generic eight-tuple of vectors gives a projective class; rescaling a vector does not change it.
- The alternating deletion sum of nine points and the alternating projection sum of nine vectors in dimension five vanish.
- A configuration map killing both relations descends uniquely.

**Checks.**

- Scaling one vector of an eight-tuple by `2` preserves its class in `G̃₄`, whereas in `C₈(4)` it gives a different generator.
- All nine terms of a generic deletion boundary from `C₉(4)` sum to zero in `G₄(F)`.
- The cobracket `δ̃` of §4.6 kills the dual nine-term relation term by term: `δ̃(π₈p x) = R₇³(p²x)` for a generic nine-tuple `x` of vectors in `F⁵`, and in `p²x` the two orders of projecting along the vectors at zero-based positions `a < b` carry the signs `(−1)^a(−1)^{b−1}` and `(−1)^b(−1)^a` and give the same configuration of `F⁵/⟨x_a,x_b⟩`, so the 72 ordered terms cancel in 36 pairs.

### 4.6 The normalized configuration formulas

With `|I|` the unit vector of a Plücker determinant and `r` the projected ratio, put `T₃ = (1/5)Alt₆[T(1,…,6)]₃ ∈ B₃(F)`, so that `δT₃ = Alt₆([r(1|2,3,4,5)]₂⊗u|345|)` (Goncharov–Rudenko [GR], (167), p. 71, GR line 3317), and define

```text
R₅¹ = −(5/2)·Alt₅(|1|∧|2|∧|3|∧|4|)
R₆² = Alt₆( ((1/2)[r(2,4,5,6)]₂ − [r(1,2,4,5)]₂) ⊗ |12|∧|23| + [r(1,3,5,6)]₂ ⊗ |12|∧|34| )
R₇³ = Alt₇( ((1/108)·T₃(1,…,6) − [r(6|2,4,3,5)]₃) ⊗ |123| − (3/28)·[r(1|2,5,6,7)]₂ ∧ [r(2|1,3,4,5)]₂ )
R₇² = −(1/84)·Alt₇( [r(1,2,3,4)]₂ ∧ [r(1,5,6,7)]₂ )
R₈⁴ = projection C₈(4) → G₄(F),
```

all other components zero (Goncharov–Rudenko [GR], §7.4, Theorem 7.6 with (165)–(168), pp. 70–71, GR line 3304). Define `δ̃` on `G̃₄(F)` as the descent of `R₇³∘p` through projectivization, using its invariance under rescaling (Lemma 7.7). The descent to `G₄(F)` is part of §4.8. No identity between `T₃` and Polylogarithms' `r₆ = 18M₃` is used: `δT₃ = −r₅∘∂ = −δr₆` holds at the level of cobrackets, and nothing here needs more. *Needs:* §4.5; Polylogarithms §§3.1, 3.5; K3BlochGroups §3.4; Mathlib `TensorProduct.lift`, `ExteriorAlgebra.exteriorPower`.

The formulas have the following API.

- Each nonzero component is the displayed rational combination; permuting the input multiplies the value by the sign of the permutation.
- `R₇³∘p` is invariant under independent rescaling of the vectors and descends to `δ̃` on `G̃₄(F)`; the components `R_m^q` themselves are not rescaling-invariant.

**Checks.**

- `δT₃ = Alt₆([r(1|2,3,4,5)]₂⊗u|345|)`, and since `Alt₆` of a function of the first five vectors is `−Σ_j(−1)^j` of its `Alt₅` on the faces, this is `−r₅∘∂`; the sign of `T₃` relative to `r₆` is therefore opposite, and using `+r₅∘∂` reverses the square of §4.8.
- The coefficient of the first symbol of `R₆²` is `+1/2`, the triple-ratio coefficient in `R₇³` is `+1/108`, its double wedge coefficient is `−3/28`, and `R₇²` has `−1/84`.
- Replacing every `Alt_m` by the average `Alt_m/m!` with the same constants breaks the chain identities of §4.8, because the identities compare alternations over different numbers of points.

### 4.7 Finite symbolic Bloch modules

For the finite configuration sizes needed in §4.8, define `b₁(q,m)` as the free module on `q`-element subsets of `{1,…,m}` (determinant letters, symmetric because `u(−1) = 0`); `b₂(q,m)` generated by `[i₁,…,i_{q−2}|j₁,j₂,j₃,j₄]₂`, symmetric in the projection indices and alternating in the last four, modulo the ordinary and dual five-term relations; and `b₃(3,m)` generated by `[i|j,k,l,h]₃` and `[i,j,k,l,h,s]₃` modulo dihedral and seven-term relations, the first family with the three-term relation without constant (Goncharov–Rudenko [GR], §10.1, Definitions 10.2, 10.4 and 10.7 with Examples 10.6 and 10.8, pp. 95–97). Evaluation maps `b₁ → U(F)` and `b₂ → B₂(F)`; `b₃` evaluates to `B₃(F)/ℚ[1]₃` only, because the three-term relation holds in `B₃(F)` with the constant `[1]₃` (the source's evaluation to `B₃(F)` on p. 97 needs this quotient). Every use of `b₃` in §4.8 is after the cobracket, and `δ₃[1]₃ = [1]₂⊗u(1) = 0`, so the composite `b₃ → B₂⊗U` is well defined; `R₇³` itself is defined by its formula in `B₃(F)⊗U(F)`. *Needs:* §4.6; Polylogarithms §§3.1–3.2; Mathlib `Submodule.Quotient.mk`, `ExteriorAlgebra.exteriorPower`.

The symbolic modules have the following API.

- `b₁(q,m)` is free on the `q`-element subsets of `{1,…,m}`, and evaluation on a generic configuration sends a subset to the unit vector of its Plücker determinant, independent of the order of the subset because `u(−1) = 0`.
- `b₂(q,m)` is a finite-dimensional quotient of the free module on its generators, and evaluation sends `[I|j₁,j₂,j₃,j₄]₂` to `[r(I|j₁,j₂,j₃,j₄)]₂ ∈ B₂(F)`, the cross-ratio of the four vectors projected from the span of `I`; it kills the ordinary and dual five-term relations.
- `b₃(3,m)` evaluates to `B₃(F)/ℚ[1]₃`, and its composite with `δ₃` to `B₂(F)⊗U(F)` is well defined.
- Exterior and tensor products of these modules evaluate factorwise, so an identity certified in `Λ²b₂` or `b₂⊗Λ²b₁` holds for every generic configuration.

**Checks.**

- The relation matrices give `dim b₂(2,6) = 10` and `dim b₂(3,7) = 55` (Example 10.6).
- Exchanging two indices of a determinant changes the determinant by `−1` but not its letter in `U`.
- The three-term sum `[x]₃ + [1−x]₃ + [1−x⁻¹]₃` evaluates to `[1]₃` in `B₃(F)`, so `b₃ → B₃(F)` is not defined; after `δ₃` its image is zero.

### 4.8 The configuration chain-map identities

Prove that `R₅¹, R₆², R₇³, R₇², R₈⁴` define a map from the dual weight-four Bigrassmannian complex with `D = ∂ + p` to `G₄(F) → (B₃(F)⊗U(F)) ⊕ Λ²B₂(F) → B₂(F)⊗Λ²U(F) → Λ⁴U(F)`. The identities are

```text
δR₆² = R₅¹p on C₆(2),     δR₇³ = R₆²p on C₇(3),     δR₇² = R₆²∂ on C₇(2),
δ_{G₄}R₈⁴ = R₇³p on C₈(4) (the definition of δ_{G₄}),
R₅¹∂ = 0 on C₆(1),        R₇²∂ = 0 on C₈(2),        R₇³∂ + R₇²p = 0 on C₈(3).
```

The last identity does not split: the `Λ²B₂` part of `R₇³∂` on `C₈(3)` is nonzero and is cancelled by `R₇²p`. Lemma 7.9 of the source asserts instead that `R₇³∂ = 0` on `C₈(3)`; that assertion is false, and Theorem 7.6 and Proposition 7.8 hold with the identity displayed here. Consequently `δ̃` descends to `G₄(F)`: it kills the projection relation because `p² = 0`, and the deletion relation because `δ̃∂ = R₇³p∂ = −R₇³∂p = R₇²pp = 0` (Goncharov–Rudenko [GR], §7.4, Theorem 7.6, Proposition 7.8 and Lemma 7.9, pp. 70–72, GR line 3341; §10, Theorems 10.9, 10.11 and 10.15 with Lemmas 10.10 and 10.12–10.14, pp. 98–107, GR line 4797). *Needs:* §§4.5–4.7; Polylogarithms §3.5 (seven-term relation) and §3.6; K3BlochGroups §3.4.

A proof route, square by square: (i) with `δb₁ = −3a₁ + 6a₃`, `δb₂ = a₁ − 2a₂ − a₃`, `δb₃ = −2a₂ − 4a₃`, one gets `δ(b₁/2 − b₂ + b₃) = −5a₁/2` (Lemma 10.10); (ii) the middle square expands in the cross-ratio coordinates and reduces by the explicit five-term matrices of Lemma 10.12 and the coefficient 14 of Lemma 10.13; (iii) for the unscaled wedge `W = Alt₇([r(1,2,3,4)]₂∧[r(1,5,6,7)]₂)` the computation on p. 107 gives `δW = −42·Alt₇([r(2,4,5,6)]₂⊗|12|∧|23|)`, while the right side of (244) reduces to half that alternation, so `δW = −84` times that right side and `R₇² = −W/84` is the correct normalization (the display (244) on p. 106 omits this factor); (iv) on `C₈(3)` the `B₃⊗U` part of `R₇³∂` vanishes because it does not involve the seventh vector; with `X = Alt₈([r(1|2,5,6,7)]₂∧[r(2|1,3,4,5)]₂)` the five-term relation gives `3X = −Alt₈([r(1|5,6,7,8)]₂∧[r(2|1,3,4,5)]₂) ≠ 0`, and `Alt₈([r(8|1,2,3,4)]₂∧[r(8|1,5,6,7)]₂) = −9X`, so with the coefficients `−3/28` and `−1/84` the two contributions cancel; the identity is certified in `Λ²b₂(3,8)`; (v) `R₅¹∂ = 0` because the alternation runs over two unused vectors, and `R₇²∂ = 0` is certified in `Λ²b₂(2,8)`.

**Checks.**

- Coefficient cancellation in (iv): for a function `g` of the first seven of eight vectors, `Alt₈ g = −(Alt₇ g)∘∂` with zero-based signs, and likewise `Alt₈` of a function projected from the eighth vector is `−(Alt₇ ·)∘p`. Hence the `Λ²B₂` part of `R₇³∂` is `−(3/28)·(−X) = (3/28)X` and that of `R₇²p` is `−(1/84)·(9X) = −(3/28)X`; they cancel. With `+1/84` the sum is `(3/28)X + (9/84)X = (3/14)X ≠ 0`; at the test value `X = 14` it is `3`.
- Evaluating both `Λ²B₂` contributions on `C₈(3)` with the alternating form `(D∘σ₁)∧(D∘σ₂)`, for two independent generic complex configurations `σ₁, σ₂` of eight vectors in `ℂ³` and `D` the Bloch–Wigner function, gives `X ≠ 0` and the ratio `−9`; this rules out the separate vanishing claimed by Lemma 7.9.
- `d² = 0` on the source and target is a consistency test of the signs, not a proof of any constant: the zero map satisfies it.

### Examples

For `m = 5` the map is `R₅¹` on `C₅(1)`, landing in `Λ⁴U`; on the corner `C₅(4)` of the dual complex it is zero. On `C₈(4)` the value is the class in `G₄(F)` and its boundary is `R₇³p`; this is the top of the configuration cocycle used in Layer 5.

### Dependencies

Polylogarithms §§3.1, 3.4–3.6, with the contract decorated-flag-lengths for §§4.2–4.4; K3BlochGroups §3.4; Mathlib free modules, quotients, exterior powers and group homology. Motivic correlators enter only the motivic lift of §5.7, which the Chern cocycle of §5.8 does not use.

## Layer 5: periods, residues, scissors and the Chern cocycle

This layer evaluates the canonical period and the ordinary period in weight four, proves that on explicit cycles `L₄*` sums to `5/16` of the classical `L₄` period, so that the scalar period sums to `1/8` of it, builds the residue diagram and current regulator for normal-crossing strata, constructs the scissors-congruence comparison, the Grassmannian tetralogarithm and its combinatorial lift to `L₄(F)`, and assembles the polylogarithmic Chern cocycle on the simplicial classifying variety with its nonzero regulator normalization.

### 5.1 The canonical weight-four period

Compose the weight-four parts of the canonical real period `P` and of the ordinary real period `R = Φ∘P` of §3.7 with the Hodge realization of §3.13; their values are `ℝ(3)`-valued, that is imaginary, forms. Prove that on single symbols `P(S₂(z)) = i·L₂(z)`, `P(S₃(z)) = −4L₃*(z)` and `P(S₄(z)) = 8i·L₄*(z)`, so that `R(S₂) = P(S₂)/2 = i·L₂*`, `R(S₃) = P(S₃)/6 = −(2/3)L₃*` and `R(S₄) = P(S₄)/20 = (2/5)i·L₄*`, with scalar period `p(S₄(z)) = (2/5)L₄*(z) = (1/8)(L₄(z) + (1/15)L₂(z)log²|z|)`. These values are forced by `δP(Sₙ(z)) = P(S_{n−1}(z))∗log|z|` for `n = 3, 4`, by `δP(S₂(z)) = log|1−z|∗log|z|`, by `δ = −d/2` on zero-forms of weight `n ≥ 2` and by the vanishing at `z = 0`: by the diagonal equations of the Conventions ([G08] §11.1, p. 105, G08 line 4628) the products are `P(S₃(z))∗log|z| = −4·d(i·L₄*(z))` and `P(S₂(z))∗log|z| = 2·dL₃*(z)`, which are `−(1/2)d` of `8i·L₄*` and of `−4L₃*`, and `log|1−z|∗log|z| = (1/2)(log|1−z| d^C log|z| − log|z| d^C log|1−z|) = −(i/2)dD(z) = −(1/2)d(i·L₂(z))`, since `dD = log|z| d arg(1−z) − log|1−z| d arg z`. Equivalently, in `RD(X;4)` with the exterior derivative, `dR(S₄(z)) = R([z]₃⊗z)`, that is `d((2/5)i·L₄*(z)) = (2/5)((5/6)L₃*(z) d^C log|z| − (1/6)log|z| d^C L₃*(z))`. The other components are those of `P` and of `R` on products (§3.7): with `ψ = P(S₂(x)) = i·L₂(x)`,

```text
P([x]₃⊗y)   = −4((5/6)L₃*(x) d^C log|y| − (1/6)log|y| d^C L₃*(x)),
R([x]₃⊗y)   = (2/5)((5/6)L₃*(x) d^C log|y| − (1/6)log|y| d^C L₃*(x)),
P([x]₂⊗y∧z) = (1/5)(3ψ d^C log|y|∧d^C log|z| − log|y| d^Cψ∧d^C log|z| + log|z| d^Cψ∧d^C log|y|),
R([x]₂⊗y∧z) = (1/24)(3ψ d^C log|y|∧d^C log|z| − log|y| d^Cψ∧d^C log|z| + log|z| d^Cψ∧d^C log|y|)
            + (1/120)(3ψ d log|y|∧d log|z| − log|y| dψ∧d log|z| + log|z| dψ∧d log|y|),
P(x₁∧…∧x₄) = (1/24)Alt₄(log|x₁| d^C log|x₂|∧d^C log|x₃|∧d^C log|x₄|),
R(x₁∧…∧x₄) = ω₄(log|x₁|,…,log|x₄|),
```

where `R([x]₃⊗y) = −P([x]₃⊗y)/10` because `µ = 1/10` on both types of one-forms of weight four, and `R([x]₂⊗y∧z)` applies `µ = 1/4` to the types `(2,0)`, `(0,2)` and `µ = 1/6` to the type `(1,1)`, so that `µ(d^Ca∧d^Cb) = (5/24)d^Ca∧d^Cb + (1/24)da∧db`; the holomorphic component on `Λ⁴U` is `−(1/8)dlog x₁∧…∧dlog x₄` (Goncharov–Rudenko [GR], §8.2, item 3, (190)–(191), p. 77, GR line 3590; (1), p. 3, GR line 90; Goncharov [G08], Definitions 2.1 and 4.10, pp. 28 and 47, and §11.1, pp. 102–105). The explicit formulas (192) of [GR] (p. 78) are not used: their single-symbol value `L₄*` and `B₃⊗U` coefficients `(5/6, −1/6)` agree with `R` up to the common factor `2/5` and the phase, but their three-factor coefficients `(3/7, −1/7, 1/7)` and four-unit form `(1/6)Alt₄` are neither those of `P`, namely `(3/5, −1/5, 1/5)` and `(1/24)Alt₄`, nor those of `R`, and `(1/6)Alt₄` is not a Deligne cocycle (§3.7, Checks); the second term of their `B₃⊗U` formula, `log|x| d^C L₃*(y)`, is moreover not additive in `y`. No pointwise equality with `L₄` is asserted. *Needs:* §§3.7, 3.9, 3.13; PolylogarithmFunctions §§4.2, 5.2.

The period has the following API.

- A single symbol has the values `P(S₄) = 8i·L₄*` and `R(S₄) = (2/5)i·L₄*`, with scalar period `p = (2/5)L₄*`; four units have the values `(1/24)Alt₄(…)` and `ω₄`; `P` intertwines the Chevalley–Eilenberg differential with `δ`, and `R` with the exterior derivative of `RD(X;4)`, which on single symbols is the diagonal equation `dR(S₄(z)) = R([z]₃⊗z)`.
- The `B₃⊗U` components are linear in the `B₃` factor through `L₃*` and `d^C L₃*`, and additive in the unit factor through `log|y|` and `d^C log|y|`.
- Complex conjugation acts by the sign of even weight, so a conjugate embedding negates the `L₄*` coordinate.

**Checks.**

- At `|z| = 1` the correction vanishes and `L₄*(z) = 5L₄(z)/16`; at `z = i` both sides are `5L₄(i)/16`.
- Diagonal equation in weight four, at `z = i` on the angular vector `∂θ`: `log|z| = 0`, `dL₄*(∂θ) = (5/16)Re Li₃(i) = −15ζ(3)/512` with `Re Li₃(i) = Σ_j (−1)^j/(2j)³ = −3ζ(3)/32`, `L₃*(i) = −9ζ(3)/256` and `d^C log|z|(∂θ) = i`. So `dR(S₄)(∂θ) = (2/5)i·(−15ζ(3)/512)` and `R([z]₃⊗z)(∂θ) = (2/5)(5/6)L₃*(i)·i` are both `−3iζ(3)/256 ≈ −0.014087i`, and in `C_H`, `δP(S₄)(∂θ) = −4·i·(−15ζ(3)/512)` and `(P(S₃)∗log|z|)(∂θ) = (5/6)(−4L₃*(i))·i` are both `15iζ(3)/128 ≈ 0.140866i`. Pairing the normalization `P(S₄) = i·L₄*`, `P(S₃) = L₃*` of [GR] (192) with `δ` and `∗` gives `15iζ(3)/1024` against `−15iζ(3)/512`; reading `R(S₄)` as the real `L₄*` equates a real value with an imaginary one. The same equalities hold at `z = 0.3 + 0.7i`, `2 + i` and `−1.5 + 0.4i` on both coordinate vectors, where the `log|z|` terms enter.
- Diagonal equation in weight three, at `z = i` on `∂θ`: `dR(S₃)(∂θ) = −(2/3)·(3/8)(−Im Li₂(i)) = D(i)/4 ≈ 0.228991`, and `R([z]₂⊗z)(∂θ) = −(1/3)·(3/4)·P(S₂(i))·d^C log|z|(∂θ) = −(1/4)(i·D(i))(i) = D(i)/4`; with `R(S₃) = L₃*` the left side would be `−(3/8)D(i)`.
- Constant unit, four units: for `2, y, z, w` at `y = z = w = 1` on the three angular vectors, `P(2∧y∧z∧w) = −(i/4)log 2 ≈ −0.173287i` and `R(2∧y∧z∧w) = (i/8)log 2 ≈ 0.086643i`, while the `(1/6)Alt₄` of [GR] (192) gives `−i log 2 ≈ −0.693147i` (§3.7, Checks).
- Weights `(2,1,1)` on angular vectors: for `x = i` held fixed and `y = z = 1` on `(∂θ_y, ∂θ_z)`, `d^C log|y|∧d^C log|z|` takes `−1`, of which the types `(2,0)`, `(0,2)` give `−1/2` and `(1,1)` gives `−1/2`; so `P([i]₂⊗y∧z) = (3/5)·i·D(i)·(−1) = −(3/5)i·D(i) ≈ −0.549579i` and `R([i]₂⊗y∧z) = (3/5)·i·D(i)·(−5/24) = −i·D(i)/8 ≈ −0.114496i`, while the coefficient `3/7` of [GR] (192) with `i·L₂*` gives `−(3/14)i·D(i) ≈ −0.196278i`.
- Inverse pair in the unit factor: `[2]₃⊗y + [2]₃⊗y⁻¹ = 0` in `B₃⊗U`, and the formula gives `(1/3)L₃*(2)(d^C log|y| + d^C log|y⁻¹|) − (1/15)(log|y| + log|y⁻¹|) d^C L₃*(2) = 0`. The source's placement gives `−(1/15)log 2·(d^C L₃*(y) + d^C L₃*(y⁻¹)) = −(2/15)log 2·d^C L₃*(y)` by `L₃(y⁻¹) = L₃(y)`; at `y = 1/2` on the tangent vector `∂/∂(Im y)` this is `−(2/15)log 2·i·(1/2)log²2 = −i log³2/15 ≈ −0.022202i`, using `dL₃/dy = (4/3)log²2` along the real axis at `1/2`, so it is not a map on `B₃⊗U`.
- Constant unit, `B₃⊗U`: for `y = 2` and varying `x` the formula gives `R([x]₃⊗2) = −(1/15)log 2·d^C L₃*(x)`, nonzero where `L₃` is not locally constant, as additivity requires from `[x]₃⊗2y = [x]₃⊗2 + [x]₃⊗y`; the source's placement gives `−(1/15)log|x|·d^C L₃*(2) = 0`.
- At `z = 2` one has `L₂(2) = 0` and `L₄(2) = 0` (real argument, even weight), so `L₄*(2) = 0`; at a nonreal `z` with `|z| ≠ 1`, `L₂(z)log²|z| ≠ 0` and the ratio `L₄*/L₄` is not `5/16` in general.
- Exchanging two entries of `ω₄` negates it and a repeated entry gives zero.

### 5.2 Calibration of the classical period on cycles

Let `c = Σ q_z[z]` satisfy `IsCycle4 c` and let `σ: F → ℂ` be an embedding. Prove `Σ q_z L₂(σz)log²|σz| = 0`, hence `Σ q_z L₄*(σz) = (5/16)Σ q_z L₄(σz)` (Goncharov–Rudenko [GR], §8.2, (191)–(192), pp. 77–78; Theorem 1.3(iv), p. 7). The source states its regulator theorem with `L₄` and assigns `L₄*` to `{x}₄`, and the scalar period of §5.1 is `(2/5)L₄*`; this calibration connects them, giving `Σ q_z p(σz) = (1/8)Σ q_z L₄(σz)` on cycles. A proof route applies `δ₃⊗id` to the vanishing of `Σ q_z [z]₃⊗u(z)` in `B₃(F)⊗U(F)` to get `Σ q_z [z]₂⊗u(z)⊗u(z) = 0` in `B₂(F)⊗U(F)⊗U(F)`, and then the well-defined trilinear functional `[x]₂⊗a⊗b ↦ D(σx)log|σa|log|σb|`, using Polylogarithms §2.1's descent of `D`. The equality is proved on raw representatives; no termwise vanishing is assumed. *Needs:* §§3.2, 5.1; Polylogarithms §§2.1, 3.1, 4.5; Mathlib `TensorProduct.lift`.

**Checks.**

- For the cycle `[x] + [x⁻¹]` the correction is `D(x)log²|x| + D(1/x)log²|x| = 0`, since `D(1/x) = −D(x)`.
- For the cycle `[1]` the correction is `L₂(1)·0 = 0` and both periods vanish, since `L₄(1) = 0`.
- For the single symbol `[z]` with `z = 2 + i` the correction is `D(2+i)log²√5 ≈ 0.5117·0.6476 ≈ 0.331 ≠ 0`, and `L₄*(2+i) ≈ 0.1463` differs from `(5/16)L₄(2+i) ≈ 0.1394`; the cycle hypothesis is needed.

### 5.3 The normal-crossing coefficient diagram

For a smooth complex variety `X` with a finite simple-normal-crossing divisor `D`, form the finite diagram on the smooth strata `Y` of `D`: a stratum of codimension `q` carries `Γ(k(Y),4−q)` shifted to total degree `j+2q` for internal degree `j`, with `Γ(k(Y),0) = ℚ` in internal degree zero. The horizontal arrows are the differentials of the complexes `Γ(·,n)`, `n ≤ 4`; the vertical arrows are residues along the divisors, with uniformizer first on exterior powers, `θ(π∧u₁∧…) = ū₁∧…` and `θ(units) = 0`, and on symbols the specialization at valuation zero and zero otherwise. Require every symbol and residue used to have support in `D`. Prove that the totalized diagram is a complex, with the sign of each residue fixed so that two successive residues anticommute; on a normal-crossing divisor the homotopy correction of the general construction is zero (Goncharov–Rudenko [GR], §8.1, Theorem 8.1 with (171), remarks 1–3, residue maps (172)–(177), pp. 72–75; Theorem 8.6, (201)–(206), pp. 80–81; §9.2, item 1, p. 88). This is the diagram the Chern cocycle uses; it is not a Gersten resolution or a motivic quasi-isomorphism. *Needs:* §3.2; Polylogarithms §§3.2–3.3 and §5.4.

The diagram has the following API.

- Each smooth stratum `Y` of codimension `q`, `0 ≤ q ≤ 4`, contributes `Γ(k(Y),4−q)`, its internal degree `j` placed in total degree `j + 2q`; strata of codimension greater than four contribute nothing.
- The horizontal arrows are the differentials of `Γ(·,n)`; the vertical arrow from a stratum to a component of its intersection with one further divisor is the residue along that divisor, uniformizer first on exterior powers and the valuation-zero specialization on symbols.
- Residues along two transversal divisors anticommute after the incidence signs, so the total differential squares to zero with no homotopy correction.

**Checks.**

- `θ_v(π∧u∧w) = ū∧w̄` and `θ_v(u∧w) = 0` for units `u, w`.
- A weight-three degree-one term on a divisor has total degree `1 + 2 = 3`; the codimension-four term `ℚ` has total degree eight, not four.
- For two coordinate divisors `t₁ = 0`, `t₂ = 0`, the iterated residues of `t₁∧t₂∧u∧w` in the two orders are `ū∧w̄` and `−ū∧w̄`, and cancel in the total complex with no correction term.

### 5.4 The weight-four current regulator

On the diagram of §5.3 the forms of the ordinary real period `R` of §§3.7 and 5.1 are locally integrable and define currents. For each codimension-`q` stratum take `(πi)^q` times the pushforward of its period current; together with the logarithmic holomorphic components `(−1)^{n−1}2^{1−n}dlog f₁∧…∧dlog fₙ` of §3.7 on the exterior column, `−(1/8)dlog f₁∧…∧dlog f₄` in weight four, they define a map to the weight-four real Deligne complex of `X`. Prove the current identity `dR − Rδ = πi Σ_Y i_{Y*}R res_Y` with the incidence signs of §5.3 (Goncharov–Rudenko [GR], §8.2, Proposition 8.4 and Lemma 8.5, pp. 78–79; Theorem 8.6(ii), (205), p. 80; §8.4, Theorem 8.11 with (216)–(218), Proposition 8.12 and Lemma 8.13, pp. 83–85). The constant is `πi` for the normalization of `R` by Goncharov's `ω_n`: the part of `dω_n(log|t|, φ₂,…,φₙ)` supported on `t = 0` is `πi·δ_{t=0}∧ω_{n−1}(φ₂,…,φₙ)`, because `d(∂log|t|) = πi·δ_{t=0}` and `d(∂̄log|t|) = −πi·δ_{t=0}` as currents; the components of §5.1 with a symbol factor and the holomorphic components give the same constant, the latter through `d(dlog t) = 2πi·δ_{t=0}` and the factor `−1/2` between consecutive weights. The source's `2πi` belongs to its unnormalized forms (192). For the simplicial varieties of §5.8 apply this levelwise and use the functoriality of the logarithmic Deligne complex for every morphism of smooth varieties. *Needs:* §§5.1, 5.3; Polylogarithms §§5.1–5.2, 5.5 and 5.9; MotivicEtaleKTheory §§3.3–3.4.

**Checks.**

- A function on a divisor becomes a current of ordinary degree two, hence a Deligne term of degree three.
- For a uniformizer `t`, `d^C log|t|` has the current boundary `2πi·δ_{t=0}` in the chosen `d^C` normalization, and on `t∧u` the period `ω₂(log|t|, log|u|) = (1/2)(log|u| d^C log|t| − log|t| d^C log|u|)` has the boundary `πi·log|u|·δ_{t=0}` plus a smooth form, so the residue constant is `πi`; the unnormalized form `log|u| d^C log|t| − log|t| d^C log|u|` would give `2πi`, and the constant `2πi` with the forms of `R` fails the identity on `t∧u` by the factor `2`.
- On `[x]₃⊗t` with `x` a unit along `t = 0`, the part of `dR([x]₃⊗t)` supported on `t = 0` is `−(1/10)(5/6)P(S₃(x))·2πi·δ_{t=0} = (2/3)πi·L₃*(x)·δ_{t=0}`, which is `−πi·R(S₃(x̄))·δ_{t=0}` since `R(S₃) = −(2/3)L₃*`: the same constant `πi`, with the sign of the residue taken after moving the uniformizer to the front of `[x]₃∧t`.
- Dropping the holomorphic component leaves a real current whose differential does not match on the exterior column.

### 5.5 Scissors-congruence groups

For `n = 1, 2, 3` define `Aₙ(F)` as the rational scissors-congruence group generated by pairs `⟨L;M⟩ = ⟨l₀,…,lₙ; m₀,…,mₙ⟩` of ordered simplices in `ℙⁿ(F)` in admissible position, subject to projective invariance, antisymmetry in each simplex, vanishing when a simplex lies in a hyperplane, additivity (the alternating sum over `n+2` vertices in either slot) and dual additivity (Goncharov–Rudenko [GR], §9.3, item 1, definition of `Aₙ(F)`, p. 91; Goncharov [G00], §2, item 1, PDF p. 5, and §3.3, PDF pp. 11–12). Let `A⁰ₙ(F) ⊂ Aₙ(F)` be the subspace spanned by pairs in generic position, and write `⟨x | …⟩` for the configuration obtained by projecting from the point `x`. Define the following maps.

- Degree one: `a₁: A₁(F) → U(F)`, `a₁⟨l₀,l₁;m₀,m₁⟩ = u(r(l₀,l₁,m₀,m₁))`; prove that it is an isomorphism (Goncharov [G00], §2, item 1, PDF p. 5, G00 line 178).
- The reduced coproduct: `ν_{1,1}: A⁰₂ → A₁⊗A₁` and `ν_{2,1}: A⁰₃ → A₂⊗A₁`, `ν_{1,2}: A⁰₃ → A₁⊗A₂`, by the defining formula with base vertices `l₀`, `m₀`, index sets `I, J` not containing `0` and sign `sign(I,Ī)·sign(J,J̄)` (Goncharov [G00], §2, item 2, PDF pp. 5–6, G00 lines 179–196). Prove the skew-symmetric forms `ν_{n−1,1}⟨L;M⟩ = −Σ_{i,j}(−1)^{i+j}⟨lᵢ | L∖lᵢ; M∖m_j⟩ ⊗ Δ(lᵢ, M∖m_j)` and `ν_{1,n−1}⟨L;M⟩ = −Σ_{i,j}(−1)^{i+j}Δ(m_j, L∖lᵢ) ⊗ ⟨m_j | L∖lᵢ; M∖m_j⟩`, the determinant factor read in `A₁(F) ≅ U(F)`: a single determinant depends on the chosen lifts, the alternating sum does not (Goncharov [G00], Proposition 2.3, PDF pp. 6–8).
- Degree two: `a₂: A₂(F) → B₂(F)`, `a₂⟨l₀,l₁,l₂;m₀,m₁,m₂⟩ = Σ_{i,j}(−1)^{i+j}[r(lᵢ | L∖lᵢ; M∖m_j)]₂` (Goncharov [G00], §3, item 1, (6), PDF p. 8).

Prove that `ν` is coassociative on `A⁰₃`, that is `(ν_{1,1}⊗id)∘ν_{2,1} = (id⊗ν_{1,1})∘ν_{1,2}` in `A₁^{⊗3}`, so that `A⁰₃ → A₂⊗A₁ ⊕ A₁⊗A₂ → A₁^{⊗3}` with second map `ν_{1,1}⊗id − id⊗ν_{1,1}` is a complex, and that `⟨L;M⟩ ↦ ⟨M;L⟩` is an antiautomorphism of the coalgebra (Goncharov [G00], Propositions 2.1–2.2, PDF p. 6); that `a₂` kills the relations of `A₂`; and that `δ₂∘a₂ = (a₁∧a₁)∘ν_{1,1}` on `A⁰₂`, where `(a₁∧a₁)(x⊗y) = a₁(x)∧a₁(y)` and `δ₂[x]₂ = (1−x)∧x` (Goncharov [G00], §3, item 1, PDF p. 8). The weight-three square of §5.6 uses `(a₂∧a₁)(x₂⊗x₁ + y₁⊗y₂) = a₂(x₂)⊗a₁(x₁) − a₂(y₂)⊗a₁(y₁)` on `A₂⊗A₁ ⊕ A₁⊗A₂` (Goncharov [G00], §3, item 3, PDF p. 11). No owner of scissors-congruence groups exists among the suppliers; they are built here with the five-term group of K3BlochGroups as target. *Needs:* K3BlochGroups §§3.2–3.4; Polylogarithms §3.5 (projected ratios); Mathlib `Finsupp`, `Submodule.Quotient.mk`, `TensorProduct`.

The groups have the following API.

- A simplex pair in admissible position gives a class; transposing two vertices of either simplex negates it; a simplex in a hyperplane gives zero.
- The additivity and dual additivity sums vanish in each slot.
- `a₁` is the cross-ratio isomorphism `A₁(F) ≅ U(F)`, invariant under rescaling the homogeneous lifts.
- The coproduct components are the displayed alternating sums, `ν` is coassociative on `A⁰₃`, and `⟨L;M⟩ ↦ ⟨M;L⟩` is an antiautomorphism of the coalgebra.
- `a₂` kills the relations of `A₂` and satisfies `δ₂∘a₂ = (a₁∧a₁)∘ν_{1,1}` on `A⁰₂`.

**Checks.**

- `a₁⟨∞,0;1,2⟩ = u(r(∞,0,1,2)) = u(2)`. With the lifts `(1,0),(0,1),(1,1),(2,1)`, replacing the lift of `2` by `(6,3)` leaves the cross-ratio `(1·(−6))/(3·(−1)) = 2` unchanged, while the single determinant `Δ(0,2)` changes from `−2` to `−6` and gains `u(3)`; a determinant letter alone is not a function on `A₁(F)`.
- The square of `a₂` on `L` the coordinate triangle and `M = ((1,1,1),(1,2,3),(1,3,2))` in `ℙ²(ℚ)`: both `δ₂a₂⟨L;M⟩` and `(a₁∧a₁)ν_{1,1}⟨L;M⟩` equal `2·u(2)∧u(3) + 2·u(2)∧u(5) − 2·u(3)∧u(5)`; without the leading minus sign of the skew-symmetric `ν_{1,1}` the right side is the negative, which differs because the value is nonzero.
- Additivity in `M` is respected by `ν_{1,1}`: for the same `L` and `M = ((1,1,1),(1,2,3),(1,3,2),(1,4,9))`, the four values `(a₁∧a₁)ν_{1,1}⟨L; M∖m_j⟩` are nonzero, with `u(2)∧u(3)`-coefficients `1, −9, −8, 2`, and their alternating sum is zero in every coefficient of `Λ²U(ℚ)`.
- Coassociativity on generic pairs of tetrahedra in `ℙ³(ℚ)` with small integer coordinates: both composites, read in `U(ℚ)^{⊗3}` through `a₁`, agree term by term (several hundred nonzero terms), and changing the sign of `ν_{1,2}` alone breaks the equality.
- Transposing `l₀` and `l₁` negates `a₂`, and `a₂⟨L;M⟩ = −a₂⟨M;L⟩`: on the triangle pair of the second Check, `δ₂` of `a₂⟨L;M⟩ + a₂⟨M;L⟩` is zero, and `δ₂` is injective on `B₂(ℚ)`.

### 5.6 The scissors-to-trilogarithm map

Define Goncharov's map `a₃: A₃(F) → B₃(F)` by `a₃ = (1/6)a′₃ − (1/3)a″₃`, where `a′₃` is the alternating double sum over omitted vertices `(i,j)` of `r₃(lᵢ | L ∖ lᵢ; M ∖ m_j)` with `r₃ = (1/15)Alt₆[T]₃ = T₃/3`, and `a″₃` is the same sum of `μ₃(lᵢ, m_j | L ∖ lᵢ; M ∖ m_j)` with `μ₃(x₁,x₂,x₃;y₁,y₂,y₃) = (1/2)Alt_{S₃×S₃}[r(x₁,y₂,x₂,y₁)]₃`; block alternations are signed sums. Prove that `a₃` kills the scissors relations, that `δ₃∘a₃ = (a₂∧a₁)∘ν`, and the collinear degeneration `r₃ = −2μ₃` (Goncharov [G00], §3, item 2, (7), PDF p. 9; §3, item 3, PDF p. 11; Theorem 3.2, Theorem 3.3, Proposition 3.4, Lemma 3.5, Proposition 3.6 and Lemma 3.7, PDF pp. 12–16; Goncharov–Rudenko [GR], §9.2, Lemma 9.3 with (235)–(236), pp. 89–90; §9.3, item 1 with footnotes 24–25, pp. 91–92). Written with the class `T₃` normalized by (167), `a′₃` is three times Goncharov's, and the same map is `(1/18)a′₃ − (1/3)a″₃`; the coefficient `1/2` printed in [GR] §9.3 with footnote 24 is inconsistent with (236) and with G00 Theorem 3.2, and is not used. *Needs:* §§4.6, 5.5; Polylogarithms §3.1; K3BlochGroups §3.4.

**Checks.**

- With `a′₃` built from `r₃` the coefficients are `1/6` and `−1/3`; the proof of G00 Theorem 3.2 shows that only the ratio `(1/2)a′₃ − a″₃` cancels the `Δ(l₀,l₁,m₀,m₁)` terms, and taking `1/2` with the (167)-normalized class multiplies the `a′₃` coefficient by nine and breaks `δ₃∘a₃ = (a₂∧a₁)∘ν`.
- An odd permutation of either simplex negates `a₃`.
- When three projected points become collinear, `r₃` is replaced by its limit `−2μ₃`; the generic triple-ratio formula is undefined there.

### 5.7 The Grassmannian tetralogarithm and its lifts

On the variety of generic eight-vector configurations in dimension four, the symbol of the Grassmannian tetralogarithm is a rational multiple of `I₄ = Alt₈(|1234|⊗|2345|⊗|3456|⊗|4567|)`; it is integrable, projective, and satisfies both nine-term relations (Goncharov [G09], §4.1, Definition 4.1, p. 22, Theorems 4.2–4.3, pp. 23–24; §3.3, Theorem 3.4 and the warning after it, p. 18).

Motivic lift. Construct, for a number field `F`, an `F`-defined motivic lift with values in the weight-four motivic Lie coalgebra: along a path of eight matrix-entry segments, the `k`-th segment changing the `k`-th first-row entry, each Plücker determinant is linear, so the lift is a combination of framed subquotients of the motivic fundamental groupoid of a punctured line over `F` with tangential regularization at the segment ends; prove that it is independent of the path and of the regularization, descends to `G₄(F)`, and that its full cobracket, including the `Λ²B₂` component, is the scissors expression `(a₃∧id + id∧a₃ + id)∘r_Δ`, hence the image of `δ_{G₄}` of §4.8 under §3.13 (Goncharov–Rudenko [GR], §9.3, item 2, pp. 92–93). Equality of symbols does not determine the lift: two lifts with the same symbol can differ by a constant extension, so constants are fixed by specialization at rational configurations. By §3.12 each single value of the motivic lift is the image under §3.13 of some element of `L₄(F)`; since §3.13 asserts no injectivity, preimages chosen value by value need not kill the relations of `G₄(F)` in `L₄(F)`, nor have the cobracket `δ_{G₄}` in `(L₃(F)⊗U(F)) ⊕ Λ²B₂(F)`, so the motivic lift is not used to define a map into `L₄(F)`.

Combinatorial lift. For every infinite field `F`, construct a linear map `𝓛₄: G₄(F) → L₄(F)` with the following properties.

- (i) `δ∘𝓛₄ = δ_{G₄}` as maps into `(L₃(F)⊗U(F)) ⊕ Λ²B₂(F)`: the full cobracket of §3.1, with its `Λ²B₂` component, read through §1.5 and the identifications of the Conventions.
- (ii) `𝓛₄` commutes with the maps induced by field embeddings.
- (iii) For a discrete valuation of `F` with infinite residue field `k` and a configuration `x` over its valuation ring whose reduction `x̄` is generic, the valuation-zero specialization of §§1.2 and 5.3 sends `𝓛₄(x)` to `𝓛₄(x̄)`.

Being defined on `G₄(F)`, `𝓛₄` kills the nine-term relations `π₈∂(C₉(4))` and the dual nine-term relations `π₈p(C₉(5))` in `L₄(F)` itself. Stabilization in `N` is not a property of `𝓛₄`; it enters through `t` (§4.3). The source asserts this lift for the fields it uses (§9.1, GR lines 3973–3975; §9.3, item 2, GR lines 4240–4248) by way of the motivic lift and its Corollary 2.10, which give the motivic image over number fields only. A route by obstruction theory at the universal configuration: let `k₀` be a prime field, `K` the function field over `k₀` of the variety of generic configurations of eight points of `ℙ³` modulo `PGL₄`, and `x_u` its generic point.

- (a) An element `ℓ ∈ L₄(K)` with `δℓ = δ_{G₄}(x_u)` exists exactly when the class of the cocycle `δ_{G₄}(x_u)` in `H²Γ(K,4)` vanishes, the weight-four Chevalley–Eilenberg cohomology being `H^•Γ(K,4)` by §3.3; the solutions then form a torsor under `H¹Γ(K,4)`.
- (b) The defects `Σ_{i=0}^{8}(−1)^i face_i^*ℓ` and `Σ_{i=0}^{8}(−1)^i proj_i^*ℓ`, pulled back along the deletion maps from configurations of nine points of `ℙ³` and the projection maps from configurations of nine points of `ℙ⁴`, have zero cobracket by (a) and the descent of `δ_{G₄}` to `G₄` (§4.8), so they lie in `H¹Γ(·,4)` of the corresponding function fields; a choice of `ℓ` for which both vanish is required.
- (c) For such an `ℓ`, represented by symbols whose arguments are regular and invertible at every generic configuration, `𝓛₄(x)` is the specialization of `ℓ` at `x`: it kills both relations by (b), satisfies (i) by (a) and the compatibility of the cobracket with specialization (§3.1), and satisfies (ii) and (iii) by construction.

The content of the target is the vanishing in (a) and (b); §§3.12–3.13 do not supply it.

In characteristic zero a candidate for `ℓ` is a rational multiple of `Alt₈` of the hexagon value of §2.4 at the coordinates `ρᵢ = |i,i+1,i+2,7|/|i,i+1,i+2,8|`, `1 ≤ i ≤ 4`, and the points `∞`, `0`: Charlton, Gangl and Radchenko prove that this expression agrees with the Grassmannian tetralogarithm on symbols modulo products and identify it with the hexagon value up to normalization ([CGR], §4.1, Theorem 9 and Remark 10, p. 8, CGR line 440), so for it the class in (a) is represented by an element of the kernel of the symbol map. *Needs:* for the combinatorial lift, §§1.5, 3.1, 3.3, 4.5, 4.8, and for the candidate §2.4; for the motivic lift, §§3.8, 3.12–3.13, 4.5, 4.8, 5.6, PeriodsAndSpecialValues PS.9.3, PS.9.10 and the contract punctured-line-path-torsors.

**Checks.**

- Odd permutations of the eight vectors negate `I₄`.
- Rescaling one vector adds only terms with a constant letter and leaves the projective symbol unchanged.
- At `k = 1` the segment changes the first first-row entry; an index starting at zero names no matrix entry.
- Preimages do not respect relations: in the linear model `ρ: ℚe ⊕ ℚc → ℚe` with `ρ(c) = 0`, standing for §3.13, two generators `u, v` of a source in which `u − v` is a relation, both with image `e`, lifted to `e` and `e + c`, send the relation to `−c ≠ 0`, while the choice `(e, e)` kills it. Killing the nine-term relations in `L₄(F)` is therefore a separate requirement, made explicit in (b).
- The period does not depend on the choice: two maps with (i)–(iii) differ by a natural map `ψ` into `H¹Γ(·,4)`; at the generic configuration over `ℂ`, `dR(ψ(x_u)) = R(δψ(x_u)) = 0`, so `R(ψ(x_u))` is a constant `c`, and the nine-term relation gives `c·Σ_{i=0}^{8}(−1)^i = c = 0`. Without the nine-term relations in `L₄` this constant is not determined.
- Fields: the generic coefficient field `ℚ(a₁₁,…,a₄₈)` of a `4×8` matrix, of transcendence degree 32, the field `ℚ(t)` and the field `𝔽₂(t)` are infinite, so `𝓛₄` is defined over each of them; the motivic lift, defined for number fields, covers none of them, and §5.8 needs `𝓛₄` at such function fields.

### 5.8 The generic polylogarithmic Chern cocycle

For `N ≥ 4` and every infinite field `F`, compose the signed map `t` of §4.3, duality, §4.8 and the combinatorial lift `𝓛₄` of §5.7 to obtain a map from the generic decorated-flag complex of `GL_N(F)` to the weight-four Chevalley–Eilenberg complex of `L(F)`; it is a map of complexes because `δ∘𝓛₄ = δ_{G₄}` and `𝓛₄` kills both nine-term relations in `L₄(F)` (§5.7). Applied to the function fields of the terms of the simplicial variety of generic decorated flags for `GL_N`, over `ℚ` or over `ℂ`, it is an `L₄`-valued weight-four cocycle on that simplicial variety, because `𝓛₄` commutes with the field embeddings induced by the dominant face maps (§5.7(ii)); by §5.7(iii) its specialization at an `F`-point is the map for `F`. Remove its `Λ²B₂` component by subtracting the coboundary of the double-symbol cochain `h = −(3/28)·Alt₈ D₃₁(r(3,4|2,5,6,7), r(6,7|1,3,4,5))`, whose `δ₂₂` is exactly the `Λ²B₂` term `−(3/28)Alt₈([r(3,4|2,5,6,7)]₂∧[r(6,7|1,3,4,5)]₂)`, and use §3.3 to factor the degree-one term through `B₄(F)`. The result has values in `Γ(F,4)` (Goncharov–Rudenko [GR], §9.1, items 2–3, (224)–(228), pp. 86–87; §9.3, item 2 with Lemma 9.6, p. 93). The correcting element printed on p. 93 omits the coefficient `−3/28`; by (38) the `Λ²B₂` component of `δD₃₁(x,y)` has coefficient one, so the coefficient is needed. *Needs:* §§3.1, 3.3, 4.3–4.4, 4.8 and the combinatorial lift of §5.7.

**Checks.**

- `δ₂₂` of `D₃₁(x,y)` is `[x]₂∧[y]₂` with coefficient one, so `δ₂₂h` equals the `Λ²B₂` term exactly.
- Taking the correcting coefficient `1` leaves the formal wedge `(1 + 3/28)·Alt₈(…)`, which is nonzero.
- After correction the `Λ²B₂` component is zero and the first term lies in `B₄(F)`.
- A lift cochain by cochain is not a cocycle: in the model `L⁰ = ℚe ⊕ ℚc`, `L¹ = ℚb` with `de = b`, `dc = 0`, and `M⁰ = ℚe`, `M¹ = 0`, with `ρ` killing `c` and `b`, a generator `g` of a source with zero differential mapping to `e` has the preimages `e + ac`, all with boundary `b ≠ 0`. The cocycle condition here comes from §5.7(i) and the relations of `G₄(F)` in `L₄(F)`, not from preimages under §3.13.

### 5.9 Extension across residues

Prove that the cocycle of §5.8 extends over the simplicial classifying diagram by successive residues on the smooth normal-crossing strata of §5.3. The `R₇³` residue on `|123| = 0` vanishes by the collinear degeneration of §5.6; the `R₆²` residue on `|12| = 0` is the alternating `B₂⊗U` expression (231)–(232), pulled back from five-vector data, and its next residue is given by four-vector cross-ratios; in the Milnor column the successive residual lifts `X ∈ Λ³U`, `Y ∈ Λ²U`, `Z ∈ U` on codimensions one, two, three end with zero divisor; the coboundary of §5.8 has zero residues (Goncharov–Rudenko [GR], §9.2, items 1–4, Lemmas 9.2–9.3 and Corollary 9.4, pp. 88–90; §9.3, Lemma 9.6, p. 93; Goncharov [G93], §4.3, Theorem 4.5 and (4.10)–(4.11), p. 190). Every stratum used is shown to be smooth with normal-crossing support, and the simplicial pullbacks are shown compatible; no transfer along singular strata is used. *Needs:* §§5.3–5.4, 5.6, 5.8; K3BlochGroups §3.4.

**Checks.**

- The extended cocycle has total degree eight, with the codimension-three term `Z ∈ U` in degree seven and the codimension-four condition in degree eight.
- On `|123| = 0` the trilogarithmic term `(1/108)T₃ − [r(6|2,4,3,5)]₃` has residue zero by `r₃ = −2μ₃`; with GR's printed `a₃` normalization the residue would not cancel.
- Along a divisor where the first argument of a `D₃₁` term of `h` tends to `0` with the second a unit `v`, table (26) gives `+S₄(v₀)`, whereas the weight-three table gives `−S₃(v₀)` for `D₂₁`; using the weight-three sign in the residue of `h` breaks the cancellation of Lemma 9.6.

### 5.10 The nonzero Chern normalization

Prove that the current regulator of §5.4 applied to the extended cocycle of §5.9 is a nonzero rational multiple of the suspended universal fourth Chern character in the real Deligne cohomology of the simplicial classifying variety, identified by BorelRegulators §6.0a (Goncharov–Rudenko [GR], §9.2, Theorem 9.1, p. 87, GR line 3988, and item 1, p. 88; §9.3, items 3–5, p. 94; Goncharov [G93], §4.4, Theorem 4.6 and (4.13)–(4.14), p. 191). A proof route identifies the last logarithmic current of the Milnor column with the transgression of the fourth Chern class, nonzero by G93 Theorem 4.6, and compares the rest of the cocycle through the residue identities. Only a nonzero rational multiple is claimed; no integral generator is inferred. *Needs:* §§5.4, 5.9; BorelRegulators §6.0a; MotivicEtaleKTheory §7.1.

**Checks.**

- The comparison scalar is nonzero: a chain map with zero scalar satisfies every residue identity and proves nothing about the regulator.
- The suspended rational character evaluates to one on BorelRegulators' class `ε₄`, while its twisted value is `(2πi)⁴`; using the twisted value as the rational normalization changes the scalar by `(2πi)⁴`, which is not rational.
- The degree-seven primitive class restricts to zero on `GL₃(ℂ)`, whose compact form `U(3)` has primitive cohomology only in degrees 1, 3 and 5; this matches the rank-three vanishing of §6.1, while on `GL₄(ℂ)` the class is nonzero.

### Examples

For a single unit `x` the ordinary period of `[x]₂⊗x∧y` and the classical `D(x)log|x|log|y|` term differ by the factors of §5.1; on the cycle `[x] + [x⁻¹]` of `Γ(F,4)` every correction vanishes. For `N = 4` the flag map of §4.3 is the identity on configurations, so the generic cocycle on `GL₄` is the configuration cocycle of §4.8 composed with the lift of §5.7.

### Dependencies

Layers 3–4, and §2.4 for the candidate of §5.7; Polylogarithms §§2.1, 3.1–3.5, 4.5 and Layer 5; PolylogarithmFunctions §§4.2, 5.2; K3BlochGroups §§3.2–3.4; MotivicEtaleKTheory §§3.3–3.4, 7.1; BorelRegulators §6.0a; PeriodsAndSpecialValues PS.9.3, PS.9.10.

## Layer 6: the explicit weight-four Zagier theorem

This layer evaluates the Chern cocycle on K-theory, compares the resulting periods with Borel's regulator, shows separately that the periods of every explicit cycle lie in the rational regulator image, and proves the theorem. Two regulator statements are needed and neither implies the other: the map `κ` with a nonzero regulator comparison gives existence, and the containment for every cycle gives every-family rationality. Neither needs `κ` to be surjective.

### 6.1 From K-theory to the explicit complex

For every infinite field `F` and `i = 1,…,4`, construct natural maps `K_{8−i}(F)⊗ℚ → H^iΓ(F,4)`, restricting along the rational primitive Hurewicz isomorphism.

- For `i = 3, 4`: compose the maps of §4.4 from `H_{8−i}(GL_N(F),ℚ)`, `N ≥ 4`, with the configuration chain map of §4.8 into `G₄(F) → (B₃(F)⊗U(F)) ⊕ Λ²B₂(F) → B₂(F)⊗Λ²U(F) → Λ⁴U(F)`, and stabilize. Through §1.5 and the identification of the Conventions on `Λ²B₂`, this complex coincides in degrees two to four with the weight-four Chevalley–Eilenberg complex of §3.1, so its cohomology in degrees three and four is that of the Chevalley–Eilenberg complex, which §3.3 identifies with `H³Γ(F,4)` and `H⁴Γ(F,4)`. No weight-four polylogarithm, no lift and no motivic input enters.
- For `i = 1, 2`: stabilize the map of §5.8 for `F`, built with the combinatorial lift `𝓛₄` of §5.7, through the comparison of §4.4. For `i = 1` this is `κ: K₇(F)_ℚ → ker(δ: B₄(F) → B₃(F)⊗U(F))`, since the complex starts in degree one. For `i = 3, 4` the same map gives the maps of the first item, since `𝓛₄` and the homotopy correction of §5.8 change only the components in degrees one and two.

Prove that all these maps vanish on the rank-at-most-three part of the rank filtration, using a `GL₃`-invariant section of the generic decorated-flag resolution given by a standard complementary flag, an algebraic argument valid over every infinite field (Goncharov–Rudenko [GR], Theorem 1.3(i), p. 6, GR line 230; §9.3, item 3 with (240), p. 94, GR lines 4274–4291). The source states Theorem 1.3(i) for every infinite field. In degrees one and two its construction passes through framed subquotients of the motivic fundamental group of a punctured line over a number subfield of `ℂ` (§9.3, item 2, p. 93, GR lines 4236–4243), the motivic formalism being available only for number fields or in realizations (§2, item 2, p. 26, GR lines 1126–1131); here degrees one and two rest instead on the combinatorial lift of §5.7, which is stated for every infinite field, including the function fields of the configuration varieties and their residue fields. The arithmetic statements of §§6.2–6.4 keep the number-field hypothesis. No equality of the rank and Adams filtrations, no inverse of `κ` and no generation statement in the other degrees is asserted. *Needs:* for `i = 3, 4`, §§1.5, 3.3, 4.4, 4.8; for `i = 1, 2`, §§4.4, 5.7–5.8; in both, Polylogarithms §2.2 (Hurewicz isomorphism and rank filtration) and §3.7 (the weight-three instance of the construction).

The maps have the following API.

- `κ` lands in the kernel of the first differential of `Γ(F,4)`; every map carries the stated degree shift.
- They commute with field embeddings and vanish on the image of rank-at-most-three group homology.

**Checks.**

- `K₇` maps to `H¹` and `K₄` maps to `H⁴`; the opposite assignment of degrees fails `8 − i`.
- `δ(κ(k)) = 0` for every `k`.
- For a totally real field `K₇(F)⊗ℚ = 0` (`r₂ = 0`), so `κ = 0`; the theorem there rests on §6.4's empty determinant, not on `κ`.
- Fields that are not number fields: for `F = ℚ(t)`, `F = 𝔽₂(t)` and the generic coefficient field `F = ℚ(a₁₁,…,a₄₈)` of transcendence degree 32, all four maps `K₇(F)_ℚ → H¹Γ(F,4)`, `K₆(F)_ℚ → H²Γ(F,4)`, `K₅(F)_ℚ → H³Γ(F,4)` and `K₄(F)_ℚ → H⁴Γ(F,4)` are defined, with the same degree assignment `8 − i` in characteristic zero and two; the first two need §5.7's combinatorial lift and the last two do not. Here `H⁴Γ(F,4) = Λ⁴U(F)/δ(B₂(F)⊗Λ²U(F))` is the rational Milnor group `K₄^M(F)⊗ℚ`, the relations `(1−x)∧x∧y∧z` being the Steinberg relations. No regulator statement is made for these fields.

### 6.2 The regulator of κ

For a number field `F` and one chosen embedding `σⱼ` from each complex place, prove that the vector `(Σ_z q_z L₄(σⱼ z))ⱼ` attached to a representative `Σ_z q_z[z]` of `κ(k)` equals `λπ³ r_Bo(k)` in BorelRegulators' Tate-divided coordinates, with `λ ∈ ℚˣ` independent of `k` and of `F` (Goncharov–Rudenko [GR], Theorem 1.3(ii) and (iv), pp. 6–7; Theorem 9.1, p. 87; §9.3, items 3–4, p. 94). In particular the vectors `κ(k)` span a real space of dimension `r₂`. A proof route evaluates the current regulator of §5.4 on rational primitive `K₇` through §5.10, converts the scalar period `p = (2/5)L₄*` to `L₄` on cycles by §5.2 (`Σ q_z p(σz) = (1/8)Σ q_z L₄(σz)`), converts the universal Deligne character to `r_Bo` by BorelRegulators §6.0a and `r_Bo = −2r_Be` (§6.2), and divides the `ℝ(3)`-valued degree-one value `R = i·p` (Conventions) by `(2πi)³ = −8π³i`, which gives the real Tate-divided coordinate `−p/(8π³)` and produces the factor `π³`. *Needs:* §§5.2, 5.4, 5.10, 6.1; BorelRegulators §§1.1, 2.2–2.3, 6.0a, 6.2.

**Checks.**

- The comparison scalar `λ` is nonzero; a period map without §5.10's nonvanishing proves no rank statement.
- Each column contributes `π³`: with `d₄ = r₂` columns and BorelRegulators §5.4's `π^{d₄−4N}`, the `L₄` determinant carries `π^{4r₂−4N} = π^{−4(r₁+r₂)}`, which the factor of `zagierDeterminantFour` cancels; a conversion with `π²` per column would leave a stray `π^{−r₂}`, for `ℚ(i)` a factor `π⁻¹`.
- The sign convention `r_Bo = −2r_Be` changes `λ` by a sign only; a factor `+2` would give the same rational line, so the sign does not affect the theorem but is fixed here.
- Phase of the conversion: a degree-one class with scalar period `p` has `R/(2πi)³ = i·p/(−8π³i) = −p/(8π³)`, real, as a coordinate of BorelRegulators §1.1 must be; dividing the real scalar `p` itself by `(2πi)³` gives `i·p/(8π³)`, on the imaginary axis. For the single symbol `[i]` over `ℚ(i)` with `σ(i) = i`, `p = (2/5)L₄*(i) = β(4)/8 ≈ 0.123618` and the coordinate is `−β(4)/(64π³) ≈ −0.00049836`; the Hodge-complex value `P = 20R` would give twenty times this, which changes `λ` by a rational factor only.

### 6.3 The periods of every explicit cycle

Prove that for every raw sum `c` with `IsCycle4 c` the vector `(L₄-period of c under σⱼ)ⱼ` lies in the ℚ-span of `π³ r_Bo(K₇(F)_ℚ)`; the vector may be zero (Goncharov–Rudenko [GR], §1.2, item 5, Theorem 1.13 with (40)–(41), pp. 15–16; §8.2, (191)–(192), pp. 77–78; §1.5, item 2.1, p. 25; Goncharov [G08], §1.3, pp. 7–8). A proof route: by §3.2 the class of `c` is a cycle of `Γ(F,4)`, so by §3.13 its realization in the motivic Lie coalgebra has zero cobracket, including the `(2,2)` component; by the contract mixed-tate-number-fields the primitive part of weight four is `K₇(F)⊗ℚ`, and the Hodge realization of that class has ordinary period `R = (2/5)i·L₄*`, scalar period `(2/5)L₄*`, by §5.1, a nonzero rational multiple of its Beilinson regulator by the same contract; §5.2 and the conversions of §6.2 give the claim. Multiplying by a nonzero rational does not change a ℚ-span, so the normalizing constants do not weaken the statement. *Needs:* §§3.2, 3.13, 5.1–5.2, 6.2; PeriodsAndSpecialValues PS.9.8–PS.9.9 with the contract mixed-tate-number-fields; BorelRegulators §§2.3, 6.2.

**Checks.**

- The zero cycle has zero period vector, which lies in every span.
- For `c = [x] + [x⁻¹]` the period vector is zero by inversion of `L₄`.
- The statement is a containment of periods and does not assert that the class of `c` is `κ(k)` for some `k`; no surjectivity of `κ` is used.

### 6.4 The weight-four Zagier theorem

Define the restated analytic functions `polylog` and `singleValued` (PolylogarithmFunctions §§1.1, 4.2), the unit vector `unitVector`, the cyclic block `trilogCyclic` and the relation predicate `TrilogRelationFunction` (Polylogarithms §3.1), the explicit cycle predicate `IsCycle4` (Polylogarithms §4.5), the weight-four period matrix `periodMatrixFour` and the determinant `zagierDeterminantFour`, which is Polylogarithms §4.4's normalized period at `n = 4` with the complex places of `F` as row index.

Prove `zagier_four_exists`: for every number field `F` there is a family `c` of `r₂` raw sums, indexed by the complex places, with `IsCycle4 (c j)` for every `j`, and `q ∈ ℚˣ` with `zagierDeterminantFour F c = q·ζ_F(4)`. Prove `zagier_four_everyFamily`: for every such family with `IsCycle4 (c j)` for every `j`, there is `q ∈ ℚ` with `zagierDeterminantFour F c = q·ζ_F(4)` (Goncharov–Rudenko [GR], §1.1, item 6, Theorem 1.2, p. 5, GR line 196; §9.3, item 4, p. 94, GR line 4292). The source writes the existence statement as an equality with `ζ_F(4)`; for `r₂ > 0` rescaling one family gives that equality, while for `r₂ = 0` the determinant is empty and the equality is false in general (over ℚ the ratio is `90`), so the existence statement carries a nonzero rational multiple.

A proof route: for `r₂ > 0`, choose a rational basis `k₁,…,k_{r₂}` of `K₇(F)⊗ℚ` (BorelRegulators §2.3 and the rank `d₄ = r₂`); the representatives of `κ(kⱼ)` satisfy `IsCycle4` by §3.2, and §6.2 with Polylogarithms §4.4's zagierPeriod_calibration on a rational basis gives a nonzero rational multiple. For every family, §6.3 writes each period column as a rational combination of the columns `π³r_Bo(kⱼ)`, and `Matrix.det_mul` with zagierPeriod_calibration gives a rational multiple. The exponent: with `d = r₂` and `N = r₁ + 2r₂`, BorelRegulators §5.4 gives `π^{d−4N}` for the Borel determinant and each column contributes `π³`, so the `L₄` determinant carries `π^{4d−4N} = π^{−4(r₁+r₂)}`, cancelled by the factor of `zagierDeterminantFour`. For `r₂ = 0` use Polylogarithms §4.7's zagierExistence_totallyRealEven. *Needs:* §§3.2, 6.2–6.3; Polylogarithms §§4.4, 4.7; BorelRegulators §§2.3, 5.4; Mathlib `Matrix.det`, `Matrix.det_mul`, `Matrix.det_isEmpty`, `NumberField.dedekindZeta`, `NumberField.discr`.

The definitions have the following API.

- `polylog` uses the rational formula in weight zero, the principal logarithm in weight one and the radial integral in higher weights; `singleValued` is the parity projection of the Bernoulli combination with the endpoint branches at `0` and `1`.
- `unitVector` sends zero and one to zero and products of nonzero elements to sums.
- `TrilogRelationFunction` holds exactly for functions that descend to the explicit group `B₃(F)`; the zero function satisfies it and a constant nonzero function does not.
- `IsCycle4` is closed under rational linear combinations and is equivalent to vanishing of the raw cobracket in `B₃(F)⊗U(F)`.
- `periodMatrixFour` is rationally linear in each column; `zagierDeterminantFour` is alternating and multilinear in the columns, changes by `det A` under a rational column transformation `A`, changes sign when the chosen embedding of one complex place is replaced by its conjugate, and equals `π^{4r₁}/√|disc F|` when `r₂ = 0`.

**Checks.**

- `polylog`, weight zero: `polylog 0 1 = 0`, the value the total division gives to `1/(1−1)`; it is a junk value that no statement uses, since `singleValued n` evaluates only `polylog (n−k)` with `n − k ≥ 1`.
- `polylog`, weight one: `polylog 1 3 = −Complex.log(−2) = −log 2 − πi`, because the principal logarithm has argument `π` on the negative axis; this is the limit of `−log(1−z)` from `Im z < 0`, the lower boundary value, while the upper one is `−log 2 + πi`.
- `polylog`, higher weight: since `∫₀¹ t^{k−1}(−log t)^{n−2} dt = (n−2)!/k^{n−1}`, the factor `((n−2)!)⁻¹` gives the disc coefficient `1/kⁿ` of `zᵏ`: `1/k²` for `n = 2`, with `polylog 2 1 = π²/6`, and `1/k³` for `n = 3`; normalizing by `(n−1)!` would give `1/(2k³)` at `n = 3`.
- `singleValued`, endpoint branches: `singleValued n 0 = 0`, `singleValued 3 1 = ζ(3)` and `singleValued 4 1 = 0`, the values `L₃(1)` and `L₄(1)` of PolylogarithmFunctions §§4.6–4.7.
- `singleValued`, the sign of `B₁`: `singleValued 4 2 = 0`. On the cut the lower boundary values have `Im Liₙ(2) = −π log^{n−1}2/(n−1)!`, so the imaginary parts of `Li₄(2)`, `−log 2·Li₃(2)` and `(1/3)log²2·Li₂(2)` are `−π log³2/6`, `+π log³2/2` and `−π log³2/3`, summing to zero; with `B₁ = +1/2` the middle term changes sign and the sum is `−π log³2 ≈ −1.0462`.
- `singleValued 2` is the Bloch–Wigner function: its Bernoulli combination is `Li₂(z) − log|z|·Li₁(z)`, with imaginary part `Im Li₂(z) + arg(1−z)log|z|`; at `z = i`, `log|i| = 0` and `singleValued 2 i = Im Li₂(i) = Σ_k (−1)^k/(2k+1)² ≈ 0.915966`, Catalan's constant.
- `unitVector (−1) = 0`: `2·ofMul(−1) = 0` in `Additive Fˣ`, so `1⊗ofMul(−1) = (1/2)⊗2·ofMul(−1) = 0` in `ℚ ⊗ Additive Fˣ`; without the rationalization `−1` keeps a nonzero class of order two.
- `unitVector 6 = unitVector 2 + unitVector 3` and `unitVector (1/2) = −unitVector 2` over ℚ, and these vectors are nonzero, the vectors of distinct primes being independent.
- `unitVector 0 = 0` is the convention `u(0) = 0`, so the symbol `[0]` contributes nothing to `IsCycle4`, matching `[0]₃ = 0`.
- `trilogCyclic` on a constant function `b ≡ v`: the block has five terms with sign `+` and three with sign `−`, so it is `2v`, and the 22-term sum is `3·2v + v = 7v`; a sign error in one term changes `2v` to `0v` or `4v`.
- `trilogCyclic` at `a = c = d = 1`: `A = B = 1`, the admissibility conditions hold, each block is `b(1) + b(−1)` and the 22-term relation reads `3b(1) + 4b(−1) = 0`; for `b = L₃` this is `3ζ(3) + 4·(−3/4)ζ(3) = 0`.
- `trilogCyclic` with `b = L₃` on real arguments: the 22-term sum vanishes to within `10⁻⁹` at `(a,c,d) = (2,3,5)`, `(−2,1/2,3)` and `(3/10,−7/10,3/5)`, while exchanging the definitions of `A` and `B` gives `−0.5210` at `(2,3,5)` and changing the sign of the term `b(A/d)` gives `5.9611` there.
- `TrilogRelationFunction`: the zero function satisfies it; a constant `v ≠ 0` fails `b 0 = 0`, and its three-term clause would read `3v = v`.
- `TrilogRelationFunction` keeps the endpoint: for `b = L₃` the three-term clause at `x = 2` is `L₃(2) + L₃(−1) + L₃(1/2) = (7/8 − 3/4 + 7/8)ζ(3) = ζ(3) = L₃(1)`; with right-hand side `0` in place of `b 1`, `L₃` would fail the predicate.
- `TrilogRelationFunction` has even inversion, `b x = b x⁻¹`, satisfied by `L₃(2) = L₃(1/2) = 7ζ(3)/8`; the odd clause `b x = −b x⁻¹` would exclude `L₃`.
- `IsCycle4`: `[1]` and `[−1]` are cycles over every field, since `unitVector 1 = unitVector (−1) = 0`; `[2]` over ℚ is not, since for `V = ℝ` and the relation function `b = L₃` the test value is `(7ζ(3)/8)⊗u(2) ≠ 0` in `ℝ⊗U(ℚ)`.
- `IsCycle4` is not a numerical test of periods: `[2]` over ℚ has `L₄(2) = 0` and is not a cycle, its obstruction `7ζ(3)/8` being nonzero; conversely over `ℚ(i)` the cycle `[i]`, a cycle because `i` is torsion, has period `L₄(i) = Σ_k (−1)^k/(2k+1)⁴ = β(4) ≈ 0.988945 ≠ 0`.
- `IsCycle4` holds for `[x] + [x⁻¹]` for every `x ≠ 0`, since `b(x⁻¹) = b(x)` and `unitVector x⁻¹ = −unitVector x`, and for every rational multiple of it.
- `periodMatrixFour` for `F = ℚ` is the `0×0` matrix, there being no complex place.
- `periodMatrixFour` for `F = ℚ(i)` is `1×1` with entry `Σ_z c(z)·L₄(σ(z))` for the chosen embedding `σ`; for `c = [i]` it is `β(4)` if `σ(i) = i` and `−β(4)` otherwise.
- `periodMatrixFour` has rows indexed by complex places, not by complex embeddings: indexing by the two embeddings of `ℚ(i)` would give a `2×1` matrix with entries `β(4)` and `−β(4)` and no determinant.
- `zagierDeterminantFour` for `F = ℚ`: `r₂ = 0`, `disc ℚ = 1`, the determinant is empty and `zagierDeterminantFour ℚ c = π⁴ = 90·ζ(4)`; assigning the empty determinant the value zero would make existence fail.
- `zagierDeterminantFour` for `F = ℚ(i)`: `r₁ = 0`, `r₂ = 1`, `|disc F| = 4`, so it is `(π⁴/2)·Σ_z q_z L₄(σz)` for a one-column family `c = Σ q_z[z]`. For `c = [i]` and `σ(i) = i` it is `π⁴β(4)/2 ≈ 48.166 = 45·ζ(4)β(4) = 45·ζ_{ℚ(i)}(4)`, an existence witness with `q = 45`; the column `[i] + [−i]` is a cycle with period `L₄(i) + L₄(−i) = 0` and gives `q = 0`, allowed in the every-family statement but not as a witness of existence.
- `zagierDeterminantFour` changes sign when the chosen embedding of a complex place is replaced by its conjugate, since `L₄(z̄) = −L₄(z)`; `q` becomes `−q` and rationality is unaffected.
- `zagierDeterminantFour` of a family with a zero column is zero and satisfies the every-family statement with `q = 0`; existence requires `q ≠ 0`, and `ζ_F(4) > 0`.

### 6.5 Inductive cycles

Polylogarithms §4.5 shows that every explicit raw weight-four cycle is a raw cycle of the inductive weight-four presentation, with the same `L₄` periods under analytic evaluation (§4.3). Prove that the existence statement of §6.4 therefore holds verbatim for the inductive complex `Γ^ind(F,4)`. For the every-family statement, apply Polylogarithms §4.6 to the square with `C = ℚ[F]`, `D = B₄^ind(F)`, `E = B₃(F)⊗U(F)`, `J = B₃^ind(F)⊗U(F)`, `p` the raw symbol map, `a` the raw explicit cobracket, `b = δ₄^ind` and `q` the weight-three explicit-to-inductive surjection tensored with the identity; both composites send `[x]` to `[x]₃^ind⊗u(x)`. Prove that every inductive cycle whose obstruction vanishes has `Z₄ ∈ ℚ·ζ_F(4)`, and more generally every inductive cycle family whose period columns lie in the ℚ-span of `π³r_Bo(K₇(F)_ℚ)` (Goncharov–Rudenko [GR], §1.1, items 4–6, pp. 4–7; §1.2, pp. 9 and 12). The vanishing of the obstruction for every inductive cycle is not claimed; it follows if the explicit-to-inductive weight-three map is injective, which is the comparison conjecture of Polylogarithms §4.2. No map of groups from `B₄(F)` to `B₄^ind(F)` is used: such a map would need every single-symbol relation of `L₄(F)` to hold in the inductive group, which is not known. The general-weight comparison and Zagier statements remain Polylogarithms' conjectural interfaces. *Needs:* §6.4; Polylogarithms §§4.2–4.6.

**Checks.**

- An explicit raw cycle has obstruction zero, by definition of the square.
- For the inductive cycle `[1]` in weight four, `[1]₄^ind = 0` rationally by inversion (`2[1] = 0`), and its period `L₄(1) = 0`.
- If `q` were not injective, an inductive cycle could have nonzero obstruction while still having its period in the correct rational span; the second clause covers that case, the first does not.

### Examples

Over `ℚ(√−3)` (`r₁ = 0`, `r₂ = 1`, `|disc| = 3`) the theorem gives one explicit cycle `c` with `(π⁴/√3)·Σ_z q_z L₄(z) = q·ζ_F(4)`, `q ≠ 0`. Over `ℚ(√5)` (`r₂ = 0`) it gives `π⁸/√5 ∈ ℚˣ·ζ_F(4)`, which is the Siegel–Klingen rationality of `ζ_F(4)√5/π⁸` supplied through Polylogarithms §4.7.

### Dependencies

Layer 1 (§1.5) and Layers 3–5; Polylogarithms §§2.2, 3.7, 4.2–4.7; BorelRegulators §§1.1, 2.2–2.3, 5.4, 6.0a, 6.2; PeriodsAndSpecialValues PS.9.8–PS.9.9 with the contract mixed-tate-number-fields; Mathlib determinants and number-field carriers.

## Downstream consumers

Polylogarithms §§4.4–4.6 name this roadmap as the owner of the weight-four theorem, of the canonical period `L₄*` and its conversion on cycles, of `κ` and of the transfer to inductive cycles; its statements in weight four are discharged by §§5.2 and 6.1–6.5. Special-value roadmaps using weight-four regulators of number fields consume §§6.2–6.4. The configuration chain map of Layer 4 and the Chern cocycle of Layer 5 are the weight-four instances of the Grassmannian and Chern-class constructions that higher-weight polylogarithmic regulators extend.

## Worked examples

- **The rational field.** `r₂ = 0`, the determinant is empty and `Z₄ = π⁴ = 90ζ(4)`; the existence statement holds with `q = 90`, and no column can be rescaled.
- **A cycle and a non-cycle over ℚ.** `[1]` satisfies `IsCycle4` since `u(1) = 0`; `[2]` does not, detected by `L₃ ⊗ ord₂` with value `7ζ(3)/8`.
- **The calibration.** For the cycle `[x] + [x⁻¹]` the correction `L₂log²|·|` vanishes termwise in pairs and both `L₄` and `L₄*` periods vanish; for the single symbol `[2+i]` over `ℚ(i)` the correction is about `0.331` and `L₄*(2+i) ≈ 0.1463 ≠ (5/16)L₄(2+i) ≈ 0.1394`.
- **The degree-eight cancellation.** On `C₈(3)` the `Λ²B₂` part of `R₇³∂` is `(3/28)X` and that of `R₇²p` is `−(3/28)X`, with `X ≠ 0`; the separate vanishing of the first is false.
- **The `a₃` normalization.** With `r₃ = T₃/3`, `a₃ = (1/6)a′₃ − (1/3)a″₃`; with the (167)-normalized class the same map is `(1/18)a′₃ − (1/3)a″₃`, and the factor nine between `1/2` and `1/18` is the discrepancy in [GR] §9.3.
- **The specialization coefficient.** `Sp D₃₁(t⁻¹u, t⁻¹v) = 3S₄(u₀/v₀)`, matching the cobracket `2[u₀/v₀]₃⊗u(u₀/v₀) + [u₀/v₀]₃⊗u(u₀/v₀)`.

## References

- **[GR]** A. B. Goncharov and D. Rudenko, *Motivic correlators, cluster varieties and Zagier's conjecture on ζ_F(4)*, arXiv:1803.08585v5 (2026). [arXiv](https://arxiv.org/abs/1803.08585v5)
- **[G08]** A. B. Goncharov, *Hodge correlators*, arXiv:0803.0297v4 (2016). [arXiv](https://arxiv.org/abs/0803.0297v4)
- **[G09]** A. B. Goncharov, *A simple construction of Grassmannian polylogarithms*, arXiv:0908.2238v4. [arXiv](https://arxiv.org/abs/0908.2238v4)
- **[M20]** N. Malkin, *Shuffle relations for Hodge and motivic correlators*, arXiv:2003.06521v1 (2020). [arXiv](https://arxiv.org/abs/2003.06521v1)
- **[G00]** A. B. Goncharov, *Geometry of the trilogarithm and the motivic Lie algebra of a field*, arXiv:math/0011168v1 (2000). [arXiv](https://arxiv.org/abs/math/0011168v1)
- **[CGR]** S. Charlton, H. Gangl and D. Radchenko, *Explicit formulas for Grassmannian polylogarithms*, arXiv:1909.13869v2 (2022). [arXiv](https://arxiv.org/abs/1909.13869v2)
- **[G93]** A. B. Goncharov, *Explicit construction of characteristic classes*, Advances in Soviet Mathematics 16, part 1 (1993), 169–210. [author's page](https://sasha-goncharov.github.io/charclasses.pdf)
