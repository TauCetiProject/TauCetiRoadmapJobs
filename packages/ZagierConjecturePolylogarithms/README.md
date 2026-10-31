# Roadmap: polylogarithms, part II: the weight-four Zagier theorem

**Summary.** Prove Zagier's conjecture in weight four for every number field, in the form of Goncharov and Rudenko: there are `r₂` explicit weight-four cycles whose zeta-normalized `L₄` determinant is a nonzero rational multiple of `ζ_F(4)`, and every family of explicit weight-four cycles has a rational, possibly zero, multiple. The explicit trilogarithm group, the inductive Bloch groups, the Zagier determinant and its three assertions, the explicit weight-four cycles and the weight-three configuration complexes are imported from Polylogarithms; the single-valued polylogarithms from PolylogarithmFunctions; the rational pre-Bloch group from K3BlochGroups; Borel's regulator lattice and its zeta covolume from BorelRegulators. This roadmap builds the proof-specific weight-four mathematics on top of them: the specialized relation presentations `L₃` and `L₄` of single and double symbols, type-A cluster polylogarithm maps on Stasheff polytopes, the weight-four Lie coalgebra and its extension `0 → B₄ → L₄ → Λ²B₂ → 0`, framed mixed Hodge–Tate structures and their canonical real period, motivic and Hodge correlators on punctured lines with collision continuity, base-point change and depth reduction, decorated flags and the Grassmannian configuration chain map with its degree-eight cancellation, scissors-congruence groups and the trilogarithmic scissors map, the residue-compatible polylogarithmic Chern cocycle with its nonzero regulator normalization, the map `κ:K₇(F)_ℚ → ker δ₄` and the periods of every explicit cycle. The end theorems are `zagier_four_exists` and `zagier_four_everyFamily`.

## Scope and ownership

This roadmap owns:

- the raw single and double symbol modules in weights three and four, Goncharov–Rudenko's one-parameter specialization table, the specialized presentations `L₃(F)` and `L₄(F)`, the isomorphism of `L₃(F)` with the explicit trilogarithm group and the cobrackets on both presentations (Layer 1);
- oriented Stasheff cell complexes `K_m` as finite combinatorial complexes, the cluster two-forms of polygon triangulations and the weight-four cluster polylogarithm maps on cells of dimension at most three, with their boundary identities (Layer 2);
- the weight-four Lie coalgebra `U ⊕ B₂ ⊕ L₃ ⊕ L₄`, its single-symbol subspace `B₄(F)`, the explicit weight-four complex `Γ(F,4)`, the extension theorem, the cyclic shuffle coalgebra of a punctured line and its special derivations, framed mixed Hodge–Tate structures with their Lie coalgebra and canonical real period, variations of mixed Hodge–Tate structures on punctured curves with their rigidity, motivic and Hodge correlators, collision continuity, base-point change, depth reduction and the realization of the combinatorial coalgebra (Layer 3);
- the weight-four Bigrassmannian quotient, generic decorated flags of every length, the flag-to-configuration map, the acyclicity of the generic decorated-flag complex, the Grassmannian group `G₄(F)`, the normalized weight-four configuration formulas, finite symbolic Bloch modules and the configuration chain-map identities (Layer 4);
- the canonical weight-four period and its calibration on cycles, the normal-crossing coefficient diagram, the weight-four current regulator, the scissors-congruence groups `A₂(F)` and `A₃(F)` with Goncharov's map `a₃`, the Grassmannian tetralogarithm and its field-defined motivic lift, the generic and residue-extended Chern cocycle and its normalization (Layer 5);
- the K-theory comparison maps `K_{8-i}(F)_ℚ → H^iΓ(F,4)`, the regulator of `κ`, the periods of every explicit cycle, the weight-four Zagier theorem, and the presentation map from `Γ(F,4)` to the inductive weight-four complex with the transfer of the theorem to inductive cycles (Layer 6).

It leaves to other roadmaps, by section:

- **PolylogarithmFunctions** §1.1 (the classical `Liₙ`), §§4.2, 4.6–4.7 (Zagier's single-valued `Lₙ`, inversion, conjugation, continuity on `ℙ¹(ℂ)`), §§5.1–5.2 and 5.7 (the Bloch–Wigner function `D = L₂` and its five-term relation). The definitions `polylog` and `singleValued` here restate its formulas in natural weights so that the headline typechecks at the pins.
- **K3BlochGroups** §§3.2–3.5 and 3.8: the projective cross-ratio, the admissible five-term relations, the rational pre-Bloch group `B₂(F)` and its boundary to `Λ²U(F)`.
- **Polylogarithms** §2.1 (descent of `D` to `B₂`), §2.2 (the rational primitive Hurewicz isomorphism and the rank filtration), §3.1 (the explicit trilogarithm group `B₃(F)`, its 22-term relation and its cobracket), §3.2 (the complexes `Γ(F,n)` for `n ≤ 3` and the universal cycle predicates), §3.3 (exterior residues), §3.4 (generic vector configurations `C_m(q)` with deletion `∂` and projection `p`, and the weight-three Bigrassmannian), §3.5 (projected and triple ratios and the weight-three configuration maps `r₄,r₅,r₆`), §3.6 (Gale duality), §§4.1–4.3 (inductive Bloch groups, their complexes and analytic evaluation), §4.4 (the Zagier determinant, its three assertions and zagierPeriod_calibration), §4.5 (the explicit raw weight-four cycles and the universal weight-four cycle test), §4.6 (the cycle obstruction), §4.7 (the totally real even-weight case) and Layer 5 (currents, the normalized current dictionary, logarithmic `r` forms, raw Deligne regulators and the universal regulator comparison). The functions `unitVector`, `trilogCyclic` and `TrilogRelationFunction`, the predicate `IsCycle4` and the weight-four specialization `zagierDeterminantFour` of its normalized period restate those definitions so that the headline typechecks at the pins.
- **BorelRegulators** §1.1 (Tate coordinates `Vₙ(F)`), §§2.2–2.3 (Borel's regulator and its real isomorphism), §§5.3–5.4 (the regulator lattice and its zeta covolume on every rational basis), §6.0a (the universal Deligne Chern class on the simplicial classifying variety) and §6.2 (the comparison `r_Bo = −2 r_Be`).
- **MotivicEtaleKTheory** §§3.3–3.4 (the compactification-independent logarithmic Deligne complex) and §7.1 (the universal Deligne Chern character).
- **PeriodsAndSpecialValues** PS.3.0 (the number-field Tate-Hom comparison with Adams-weight K-theory), PS.9.3 (tangential regularization of iterated integrals), PS.9.8–PS.9.9 (mixed Tate motives and their extension groups) and PS.9.10 (the motivic path torsor of a punctured line), with the extensions to number fields and arbitrary punctures stated as its contracts below.
- **MotivesAndAlgebraicCycles** Layer 3 (Tannakian categories) and Layer 4 (geometric motives).
- **HodgeStructures**, Layer L2: mixed Hodge structures and strictness. Framed mixed Hodge–Tate structures and their variations on punctured curves are built here on that layer.

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

Periods. `Lₙ` is PolylogarithmFunctions' single-valued polylogarithm in Zagier's Bernoulli normalization with `B₁ = −1/2`, real part in odd and imaginary part in even weight; `L₄` is odd under complex conjugation and inversion. For a number field of signature `(r₁,r₂)` and degree `N = r₁ + 2r₂`, `d₄ = r₂` and the zeta-normalized determinant is `Z₄(F;y) = π^{4(r₁+r₂)} |disc F|^{−1/2} det(L₄(σᵢ(yⱼ)))`, rows indexed by complex places through their chosen embeddings, columns by symbol families; the empty determinant is one. Changing the chosen embedding of a complex place negates its row. The canonical period is `L₄*(z) = (5L₄(z) + (1/3)L₂(z)log²|z|)/16`, with `L₃* = 3L₃/8` and `L₂* = L₂/2` (Goncharov–Rudenko (191), p. 77). The real differential operator is `d^C = ∂ − ∂̄`. Borel's regulator `r_Bo` is taken in BorelRegulators' Tate-divided real coordinates; in those coordinates an `L₄`-period column is `λπ³` times a Borel column with `λ ∈ ℚˣ`, and `r_Bo = −2 r_Be` (BorelRegulators §6.2).

Normal-crossing degrees. In the coefficient diagram of §5.3 a codimension-`q` stratum carries weight `4−q` and a term of internal degree `j` sits in total degree `j+2q`; pushforward of a current from codimension `q` adds ordinary degree `2q` and the factor `(2πi)^q`; the current component of a Deligne term of degree `k` has ordinary degree `k−1`.

## Exact supplier contracts

### From Mathlib

`Finsupp` and `Finsupp.linearCombination` (free modules on symbols and their evaluation), `Submodule.span`, `Submodule.Quotient.mk` and `Submodule.mkQ` (presentations by relations; `mk x = 0` exactly when `x` is in the submodule), `TensorProduct.lift`, `ExteriorAlgebra.exteriorPower` and `exteriorPower.ιMulti` (`Mathlib/LinearAlgebra/ExteriorAlgebra/Basic.lean`, `Mathlib/LinearAlgebra/ExteriorPower/Basic.lean`), `Additive`, `Matrix.det`, `Matrix.det_mul` and `Matrix.det_isEmpty` (rational basis change and the empty determinant), `FreeLieAlgebra` (`Mathlib/Algebra/Lie/Free.lean`) and `LieDerivation` (`Mathlib/Algebra/Lie/Derivation/Basic.lean`) for the puncture Lie algebra and its derivations, `groupHomology` (`Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean`), `CategoryTheory.ProjectiveResolution` (`Mathlib/CategoryTheory/Preadditive/Projective/Resolution.lean`); `CategoryTheory.ProjectiveResolution.lift` (`Mathlib/CategoryTheory/Abelian/Projective/Resolution.lean`) lifts only into another projective resolution, so the comparison into the acyclic but non-projective flag complex of §4.4 is a target here. Arithmetic carriers: `NumberField.dedekindZeta` (the L-series of ideal norms, convergent at `s = 4`), `NumberField.discr`, `NumberField.InfinitePlace`, `NumberField.InfinitePlace.IsComplex`, `NumberField.InfinitePlace.embedding`, `nrRealPlaces` and `nrComplexPlaces`; `bernoulli` with `bernoulli 1 = −1/2`; `Complex.log`, `Complex.arg` and interval integrals for the polylogarithm formulas. No polylogarithm, Bloch group, configuration complex, Hodge structure, motive or higher K-group exists at the pins.

### From Tau Ceti

Nothing from Tau Ceti is consumed directly; its function-field place API enters only through the suppliers above.

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
- §3.4: genericVectorConfig, the modules `C_m(q)` without independent rescaling, deletion and projection, `∂²=p²=0`, `∂p+p∂=0`, the row-quotient Bigrassmannian construction at cutoff three.
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

Layer 3: Tannakian categories and their fundamental groups. Layer 4: geometric motives and Tate objects, through PeriodsAndSpecialValues PS.9.8.

### From TauCetiRoadmap.HodgeStructures

Layer L2 of the completed roadmap HodgeStructures: rational mixed Hodge structures, morphisms, strictness and the abelian category they form.

## How to read the build

Layer 1 presents the weight-three and weight-four groups of single and double symbols by a generic relation and all its one-parameter specializations, identifies `L₃` with the explicit trilogarithm group and puts the cobracket on `L₃`. Layer 2 builds the type-A cluster polylogarithm maps on Stasheff polytopes; their boundary identities show that the raw weight-four cobracket kills the heptagon relation. Layer 3 descends the cobracket, defines `B₄(F)` and `Γ(F,4)`, proves the extension theorem, and constructs the Hodge–Tate and motivic correlator theory that realizes the combinatorial Lie coalgebra in the motivic one. Layer 4 is linear algebra of configurations: decorated flags map to the weight-four Bigrassmannian, which maps to the weight-four Lie coalgebra complex by explicit formulas. Layer 5 turns this into a polylogarithmic Chern cocycle on the simplicial classifying space, extends it across residues, and identifies its regulator with a nonzero multiple of the universal Chern character. Layer 6 evaluates on K-theory, compares with Borel's regulator and proves the theorem. Each target's *Needs* line lists exactly what its statement and its proof route use, so a target can be attacked as soon as those inputs exist.

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

- `D₂₁(x,y) = D₂₁(y,x)` in `L₃(F)`, while in `Raw₃(F)` the two are distinct.
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

The cluster polylogarithm map assigns to each cell of the Stasheff polytope of a polygon a weight-four element of the Chevalley–Eilenberg complex of the Lie coalgebra, so that cellular boundary goes to cobracket. Its value on the top cell of the heptagon is the relation `Q₄`, which is how the cobracket is shown to kill `Q₄`. No cluster-variety conjecture is used.

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
square face j:   L²(S_j) = [s(j,j+1,j+2,j+3)]₂ ∧ [s(j+3,j+4,j+5,j+6)]₂           ∈ Λ²B₂
```

the pentagon value lying in `L₃⊗U`; product cells carry the products of these values with the remaining `W` factors by the weight grading, and orientation reversal negates a value (Goncharov–Rudenko [GR], §4.3, items 1–3, (94)–(99), pp. 50–51; §3.4, Lemmas 3.12–3.15, pp. 42–44). The vertex value is `W_T²`, without a factor `1/2`. *Needs:* §§1.4, 1.6, 2.1–2.2; Mathlib `TensorProduct.lift`, `ExteriorAlgebra.exteriorPower`.

The cell maps have the following API.

- Vertex, edge, pentagon and square values are the displayed elements, in `Λ⁴U`, `B₂⊗Λ²U`, `L₃⊗U` and `Λ²B₂` respectively.
- Reversing the orientation of a cell negates its value.
- Product cells use the Koszul sign and the weight grading.

**Checks.**

- Reversing an oriented edge negates `L³(e)`, since `X` is replaced by `X⁻¹` and `[−X⁻¹]₂ = −[−X]₂`.
- The cobracket of an edge value is `W_T² − W_T′²`: `δ[−X]₂ ∧ (W_T + W_T′) = (W_T − W_T′)∧(W_T + W_T′)`, and the cross terms cancel because two-forms commute.
- The square value of two independent flips is `[−X]₂∧[−Y]₂`; setting square values to zero breaks the boundary identity of §2.5 on the square faces of `K₃`.

### 2.4 The hexagon three-cell

For a hexagon define

```text
L¹(a₁,…,a₆) = Cyc⁻₆( D₃₁(s(a₁,a₂,a₃,a₄), s(a₄,a₅,a₆,a₁)) − S₄(s(a₁,a₃,a₄,a₅)) − S₄(Z(a₁,…,a₆)) )   ∈ L₄(F),
```

with product three-cells formed by the rule of §2.3 (Goncharov–Rudenko [GR], §4.3, item 4, Definition 4.2 with (101)–(102), p. 52; §1.2, (35)–(36), p. 13). Prove that the sum of the values on the seven hexagonal facets of the heptagon cell is `Q₄`, so that the top equation of the heptagon is `Σ_{k mod 7} L¹(a_{k+1},…,a_{k+6}) = 0`. *Needs:* §§1.1, 1.4, 2.3.

The hexagon map has the following API.

- The value is the displayed alternating cyclic sum, computed in `Raw₄(F)` and then in `L₄(F)`.
- A rotation by one step negates the value, and a rotation by two fixes it.
- The seven-facet sum of a heptagon equals `Q₄` in `Raw₄(F)`.

**Checks.**

- A rotation by one negates `L¹` and a rotation by two fixes it, as `Cyc⁻₆` requires.
- The seven-facet sum has exactly the three double-symbol terms of `Q₄`, with signs `−,+,−`.
- The six-point term carries a minus sign both in `Z` and in the summand; using the plain cyclic sum `Cyc₆` instead of `Cyc⁻₆` makes the rotation test fail.

### 2.5 Cluster boundary identities

Prove that the maps of §§2.3–2.4 satisfy `δL^j = L^{j+1}∘d` in every cell dimension, where `δ` on three-cells is the raw weight-four cobracket of §3.1 before its descent. The edge, square and pentagon identities are Lemmas 3.12, 3.13 and 3.15; the pentagon identity uses the five-term relation of `B₂`, not `Q₃`. The hexagon identity is Proposition 4.4, which uses `Q₃` through §1.5, and the heptagon identity is the vanishing of the raw cobracket on `Q₄` (Proposition 5.5), proved from `d² = 0` on `K₄` (Goncharov–Rudenko [GR], §3.4, Lemmas 3.12–3.15, pp. 42–44; §4.3, Theorem 4.3 and Proposition 4.4, pp. 52–53; §5.2, Proposition 5.5, p. 56; Theorem 1.17, p. 21). Together they give the weight-four map from the cellular chain complex to the Chevalley–Eilenberg complex once `δ` has descended. *Needs:* §§1.5–1.6, 2.3–2.4; the raw weight-four cobracket formula of §3.1; K3BlochGroups §§3.3–3.4.

**Checks.**

- On an edge the identity is the difference of squares of §2.3; dropping the factor `W_T + W_T′` from the edge value leaves `δL³ = δ[−X]₂`, which is not `W_T² − W_T′²`.
- On a pentagon of `K₃` the identity reduces, after expanding, to a five-term relation in `B₂`; replacing the pentagon value by zero leaves the five edge contributions, which do not cancel for generic points.
- On a square face of two independent flips both sides equal `[−X]₂⊗δ[−Y]₂ − [−Y]₂⊗δ[−X]₂`, up to the cell signs, in `B₂⊗Λ²U`: the left by the derivation rule of the Chevalley–Eilenberg differential on `Λ²B₂`, the right as the sum of the four edge values of the square.

### Examples

For the hexagon with points `(∞,0,1,x,y,z)` the cluster three-cell value is the alternating sum of six double symbols with the single-symbol corrections of §2.4; its cobracket is the sum over the boundary of the hexagon cell of `K₃`, which consists of six pentagons and three squares. For the heptagon the top identity is exactly `Q₄`.

### Dependencies

Layer 1, K3BlochGroups §§3.3–3.5, and the raw weight-four cobracket formula of §3.1 (its descent is not used here). No analytic, motivic or cluster-variety input.

## Layer 3: the weight-four Lie coalgebra and motivic correlators

This layer descends the weight-four cobracket, defines the single-symbol subspace `B₄(F)` and the explicit complex `Γ(F,4)`, and proves the extension theorem. It then builds framed mixed Hodge–Tate structures and their canonical real period, the cyclic shuffle coalgebra of a punctured line and its special derivations, motivic and Hodge correlators, and proves that `{x}ₙ`, `{x,y}₂,₁`, `{x,y}₃,₁` go to correlators by a morphism of Lie coalgebras.

### 3.1 The weight-four cobracket

Define the raw map on `Raw₄(F)` by `δS₄(x) = S₃(x)⊗u(x)` and

```text
δD₃₁(x,y) = D₂₁(x,y)⊗(x/y) + S₃(x/y)⊗((1−x)/(1−y)) + S₃(x)⊗(1−1/y) − S₃(y)⊗(1−1/x) + [x]₂∧[y]₂,
```

with values in `(L₃(F)⊗U(F)) ⊕ Λ²B₂(F)`. Prove that it kills `Q₄` and all its specializations, so descends to `L₄(F)`, and that with `δ` on `B₂` and §1.6 it makes `U ⊕ B₂ ⊕ L₃ ⊕ L₄` a graded Lie coalgebra through weight four: the Chevalley–Eilenberg differential squares to zero (Goncharov–Rudenko [GR], §1.2, item 3, (37)–(38) and the specialization check, pp. 13–14, GR line 573; §5.2, Proposition 5.5, p. 56; Theorem 1.14(a), p. 16). A proof route kills generic `Q₄` by §2.5 and `d² = 0` on `K₄`, checks each order case of §1.2 for the specializations, and checks co-Jacobi on single and double generators with §1.6. *Needs:* §§1.2, 1.4, 1.6, 2.5; Mathlib `TensorProduct.lift`, `ExteriorAlgebra.exteriorPower`.

The cobracket has the following API.

- On a single symbol it is `S₃(x)⊗u(x)` with zero `Λ²B₂` component; on a double symbol it is the four tensor terms plus `[x]₂∧[y]₂`.
- The induced Chevalley–Eilenberg differential on the weight-four complex `L₄ → (L₃⊗U ⊕ Λ²B₂) → B₂⊗Λ²U → Λ⁴U` squares to zero.
- The cobracket commutes with field embeddings and with `Sp`.

**Checks.**

- The `(2,2)` component of `δD₃₁(x,y)` is `[x]₂∧[y]₂` with coefficient `+1`; in particular `δD₃₁(x,y) + δD₃₁(y,x)` has zero `Λ²B₂` component.
- The specialization of `δD₃₁(t⁻¹u,t⁻¹v)` is `3[u₀/v₀]₃⊗u(u₀/v₀)`, the cobracket of the equal-pole value `3S₄(u₀/v₀)` of §1.2.
- On single symbols the cobracket followed by §1.5 is `[x]₄ ↦ [x]₃⊗u(x)`, the first differential of `Γ(F,4)`.

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

is exact for every infinite field, where `δ₂₂` is the `Λ²B₂` component of the cobracket. Consequently the inclusion of `Γ(F,4)` into the weight-four Chevalley–Eilenberg complex is a quasi-isomorphism: its cokernel is the two-term complex `Λ²B₂ → Λ²B₂` with identity differential (Goncharov–Rudenko [GR], §6, Theorem 6.1 with Lemmas 6.2–6.6 and Corollary 6.5, pp. 57–61, GR line 2604; Theorem 1.14(c) and Corollary 1.15, p. 16). A proof route specializes `Q₄` along the collision strata of `M̄₀,₇` used in §6 of the source to show that modulo `B₄(F)` the double symbol is antisymmetric and satisfies the five-term relation in each argument, so that `[x]₂∧[y]₂ ↦ D₃₁(x,y)` is a well-defined inverse of `δ₂₂` on the quotient. *Needs:* §§1.4, 3.1–3.2; K3BlochGroups §§3.3–3.4; Mathlib `ExteriorAlgebra.exteriorPower`.

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

### 3.5 Special derivations

For the punctured line with tangential base point at `a`, let `𝔤_S` be the free graded Lie algebra on the `X_s` modulo `Σ_s X_s = 0`, built from Mathlib `FreeLieAlgebra`. A special derivation is a `LieDerivation` `D` with `D(X_a) = 0` and `D(X_s) = [X_s, u_s]` for `s ≠ a`, where `X_a = −Σ_{s≠a} X_s`. Prove that the graded dual of `CLie_S` in positive weight is canonically isomorphic to the positive graded Lie algebra of special derivations, with the commutator of derivations dual to the cut cobracket (Goncharov–Rudenko [GR], §2, item 2, Theorem 2.1 with (62)–(63), pp. 26–27; Goncharov [G08], §8.2, Lemma 8.1 and Propositions 8.2–8.4, pp. 84–85). The source statements identify the shuffle quotient of all cyclic words without removing pure words; in length two that map has the kernel spanned by `⟨X_s,X_s⟩`, whose derivation is `X_s ↦ [X_s, 2X_s] = 0`, so the identification holds on the reduced coalgebra, in every weight at least two unchanged. *Needs:* §3.4; Mathlib `FreeLieAlgebra`, `LieDerivation`.

**Checks.**

- Every derivation in the image fixes `X_a`. For three punctures `a, s₁, s₂` the inner derivation `ad X_{s₁}` preserves every conjugacy class but moves `X_a`, so dropping `D(X_a) = 0` gives a strictly larger space.
- For two punctures there are no positive special derivations and `CLie_S` is zero in positive weight, matching §3.4.
- The pure word `⟨X_s,X_s⟩` maps to the zero derivation; the reduced coalgebra has no class mapping to zero.

### 3.6 Framed mixed Hodge–Tate structures

On a smooth complex variety `X`, define good variations of mixed ℚ-Hodge–Tate structures as variations of mixed Hodge structures (HodgeStructures, Layer L2, fibrewise) whose weight-graded pieces are sums of Tate structures `ℚ(n)`, with Griffiths transversality and the admissibility conditions at infinity of [G08] §5. Framings: a framed object is a triple `(H, v, f)` with `v ∈ Hom(ℚ(n), gr^W_{−2n}H)` and `f ∈ Hom(gr^W_{−2m}H, ℚ(m))`; framed objects modulo the equivalence generated by framed morphisms form a graded Hopf algebra whose indecomposables are a graded Lie coalgebra `L^HT_•(X)` with `L^HT_1(X) = O(X)ˣ_ℚ` (Goncharov–Rudenko [GR], §8.2, item 2, (183)–(184), p. 76; Goncharov [G08], §§4.1–4.2, pp. 39–44). Over a point this is the Lie coalgebra of the category of mixed ℚ-Hodge–Tate structures. *Needs:* HodgeStructures Layer L2; Mathlib `TensorProduct`, `ExteriorAlgebra.exteriorPower`.

The construction has the following API.

- Framed objects multiply by tensor product and compose by the coproduct `Σ (H,v,b_i) ⊗ (H,b_i^∨,f)` over a basis of the middle grade.
- Weight one is `O(X)ˣ⊗ℚ`, by the Kummer extension of `f`.
- Pullback along morphisms of smooth varieties gives morphisms of Lie coalgebras.

**Checks.**

- Over a point, the framed Kummer extension of `x ∈ ℂˣ` has class `x⊗1` in weight one; `x = −1` gives zero.
- A split extension `ℚ(0)⊕ℚ(n)` with its framings has zero class in `L^HT_n`.
- The framed object `(ℚ(n), id, id)` has weight zero and is the unit; no weight-zero part enters `L^HT_•`.

### 3.7 The canonical real period and rigidity

Construct the commutative dg-algebra `C_H(X) = ⊕_n C_H(ℝ_X(n))` of [G08] §4, quasi-isomorphic in weight `n` to the real Deligne complex, and the canonical real period map of commutative dg-algebras `P: CE*(L^HT_•(X)) → C_H(X)`, sending `f ∈ L^HT_1(X)` to `log|f|` and, on `Λⁿ L^HT_1`, `f₁∧…∧fₙ ↦ ω_{n−1}(log|f₁|,…,log|fₙ|)` with `dω_{n−1} = πₙ(dlog f₁∧…∧dlog fₙ)` (Goncharov–Rudenko [GR], §8.2, item 2, Theorem 8.3 with (185)–(188), pp. 76–77, GR line 3520; Goncharov [G08], §2.1, pp. 28–29, §§4.2–4.3, pp. 41–52, and §5, pp. 53–63). Prove the rigidity lemma: a two-step variation `0 → ℚ(m) → L → ℚ(0) → 0` with `m ≥ 2` over a connected smooth base is constant (Goncharov–Rudenko [GR], §2, item 7, Lemma 2.7, p. 33). A proof route for rigidity uses Griffiths transversality: the derivative of the period of the extension lies in `F^{−1}` of the pure part `ℚ(m)⊗O`, which is zero for `m ≥ 2`. *Needs:* §3.6; HodgeStructures Layer L2; MotivicEtaleKTheory §§3.3–3.4 for the real Deligne complex.

The period has the following API.

- `P` is a map of commutative dg-algebras compatible with pullback.
- Its weight-`n` part is a map of complexes to the real Deligne complex in weight `n`.
- Weight one is `log|f|`, and the top component is the alternating form `ω_{n−1}`.

**Checks.**

- `ω₃(log|x₁|,…,log|x₄|) = (1/6)Alt₄(log|x₁| d^C log|x₂| ∧ d^C log|x₃| ∧ d^C log|x₄|)`; exchanging two arguments negates it and a repeated argument gives zero.
- For the Kummer variation of `f`, `P(f) = log|f|`, not `log f` or `arg f`.
- For `m = 1` rigidity fails: the Kummer variation of the coordinate on `𝔾_m` is not constant.

### 3.8 Motivic correlators on a punctured line

For a number field `F`, a point `a ∈ ℙ¹(F)`, a nonzero tangent vector `v` at `a`, and points `b₀,…,b_m ∈ ℙ¹(F)` different from `a` (repetitions allowed for `m > 1`; `b₀ ≠ b₁` when `m = 1`), define the motivic correlator `Cor_{a,v}(b₀,…,b_m)` in the weight-`m` part of the Lie coalgebra of `MT(F)` by dualizing the special-derivation action of the motivic Lie algebra on the fundamental Lie algebra of `ℙ¹ ∖ {a, b₀,…,b_m}` at the tangential base point, through §3.5 (Goncharov–Rudenko [GR], §2, items 2–5, (62)–(68), Theorem 2.2 and Definition 2.3, pp. 26–29; §1.2, item 5, pp. 14–15). Prove cyclic invariance, independence of `v` in weight `m > 1`, the cut formula (66) for the cobracket, `Cor_∞(b₀,b₁) = u(b₀ − b₁)` for the standard tangent at `∞`, and the weight-two value given by (67). *Needs:* §§3.4–3.5; PeriodsAndSpecialValues PS.9.8–PS.9.10 with the contracts mixed-tate-number-fields and punctured-line-path-torsors; MotivesAndAlgebraicCycles Layer 3.

The correlators have the following API.

- The marked and tangential data give a weight-`m` element; cyclic permutation of the `bᵢ` leaves it unchanged.
- Its cobracket is the cyclic sum of cuts (66).
- Field embeddings and projective changes of coordinate transport all data; in weight greater than one the tangent vector does not matter.

**Checks.**

- For `u ≠ w`, `Cor_∞(u,w) = u(u − w)`, not `u(u/w)`.
- Repeated arguments are allowed in weight `m > 1`; `bᵢ = a` lies outside the domain and is reached only through §3.11's specialization.
- In weight two the correlator `Cor_∞(0,1,y)` is the motivic dilogarithm of `y` with the sign of (67); its Hodge period is `−(1/2)(2πi)^{−2}L₂` as in §3.9.

### 3.9 Hodge correlators

For the punctured complex line define the Hodge correlator `Cor^H_a(z₀,…,z_m)` as the sum over plane trivalent trees with `m+1` leaves decorated cyclically by the `zᵢ` of the integral over the internal vertices in `ℙ¹(ℂ)` of the form built from one Green function and `d^C` of the others, the Green function being `log|x−y|` normalized by the tangent vector at `a`, weighted by `1/|Aut T|` (Goncharov–Rudenko [GR], §2, item 6 and Figure 8, p. 31; Malkin [M20], §2.1.3, example after (16), p. 18; Goncharov [G08], §3.2, pp. 34–37). Prove local integrability of the integrand and that the result is the canonical real period of §3.7 of the Hodge realization of `Cor_{a,v}` under each complex embedding. *Needs:* §§3.7–3.8; Polylogarithms Layer 5 (currents).

**Checks.**

- The three-leaf correlator is `Cor^H(1,0,z) = −(1/2)(2πi)^{−2}L₂(z)` (Malkin [M20], p. 18); a normalization without the Tate factor or with the opposite sign fails this value.
- Cyclic reordering of the leaves preserves the correlator.
- An affine change of coordinate fixing the tangential data preserves correlators of weight greater than one.

### 3.10 Collision continuity

Prove that for `m > 1`, `Cor^H(z₀,…,z_m)` is continuous on `ℂ^{m+1}` minus the full diagonal, and that in a partial collision the limit is the correlator on the component nearest the tangential base point, with coincident arguments retained (Malkin [M20], §2.1.3, Theorem 11, p. 18; §4, Lemma 29 and the closing corollary, pp. 44–45). This justifies applying the realization of §3.13 to the specialized relations of Layer 1. A proof route controls the logarithmic singularities of the tree integrals, reduces the possible limit discrepancy to a constant on a boundary stratum and kills it by averaging over circles (Lemma 29). *Needs:* §3.9.

**Checks.**

- At a partial collision `z₁ → z₂` with `z₀` fixed the limit exists and equals the correlator with `z₁ = z₂`.
- Three arguments collapsing to one point give direction-dependent limits such as `L₂((a−c)/(b−c))`; the full diagonal must be excluded.
- In weight one (`m = 1`) the correlator `log|z₀ − z₁|` is not continuous at `z₀ = z₁`, so the hypothesis `m > 1` is needed.

### 3.11 Change of base point

Let `ℓ ≥ 3`, `a ≠ b`, and `x₁,…,x_ℓ ∈ ℙ¹(F)` different from `a` and `b`, repetitions allowed. For `I ⊆ {1,…,ℓ}` let `x^I` replace `xᵢ` by `a` exactly when `i ∈ I`. Prove `Cor_a(x₁,…,x_ℓ) = Σ_I (−1)^{|I|} Cor_b(x^I)` in weight `ℓ−1`, and that the specialization `Cor_a(a,x₂,…,x_ℓ)` is zero provided some `xᵢ ≠ a` (Goncharov–Rudenko [GR], §2, item 7, Theorem 2.6 with (70)–(72), p. 32; Lemmas 2.7 and 2.8 with (73), p. 33). A proof route proves the Hodge identity from `G_a(x,y) = G_b(x,y) − G_b(a,y) − G_b(x,a) + const`, compares cobrackets by induction on the weight and transports to motives by rigidity (§3.7) and injectivity of the regulator on `Ext¹` (contract mixed-tate-number-fields). *Needs:* §§3.7–3.10; PeriodsAndSpecialValues PS.9.8–PS.9.9 with the contract mixed-tate-number-fields.

**Checks.**

- For `ℓ = 3` the nonzero terms give the five-term relation of the dilogarithm.
- The empty set `I = ∅` contributes `Cor_b(x₁,…,x_ℓ)` with sign `+1`, and `I = {1,…,ℓ}` contributes `Cor_b(a,…,a)`, which is zero because its cyclic word is pure (§3.4); keeping a nonzero value there would break the identity already for `ℓ = 3`.
- `Cor_a(a,a,…,a)` is not assigned a value; the vanishing statement needs one argument different from `a`.

### 3.12 Depth reduction in weight four

Prove that for `ℓ > 3` arguments every motivic correlator of weight `ℓ−1` is a rational combination of correlators with two equal arguments, after a projective change of coordinate and the specialization of §3.11; and that every weight-four correlator (`ℓ = 5`) is a combination of `−Cor_∞(0,0,x,1,y)` and `−Cor_∞(0,0,0,1,z)` (Goncharov–Rudenko [GR], §2, item 7, Proposition 2.9 with footnote 12, pp. 33–34; Corollary 2.10, p. 34, GR line 1486). A proof route shows from §3.11 that, modulo repeated-argument correlators, exchanging the base point with an argument negates the class; for even `ℓ` cyclic invariance then kills it, and for odd `ℓ > 3` the first-shuffle relation does. *Needs:* §§3.4, 3.8, 3.10–3.11.

**Checks.**

- The threshold counts arguments: `ℓ = 3` is weight two, where the reduction is false, since `Cor_∞(0,1,y)` is the dilogarithm and has no repeated argument.
- At `ℓ = 4` (weight three) every correlator reduces to ones with a repeated argument, matching the reduction of `D₂₁` to single symbols in §1.5.
- At `ℓ = 5` two families survive, matching the two generators `S₄` and `D₃₁` of `L₄`.

### 3.13 Realization of the combinatorial Lie coalgebra

For a number field `F` prove that `Sₘ(y) ↦ −Cor_∞(0,…,0,1,y)` with `m−1` zeros, `D₂₁(x,y) ↦ Cor_∞(0,x,1,y)` and `D₃₁(x,y) ↦ −Cor_∞(0,0,x,1,y)` define a natural morphism of graded Lie coalgebras from `U ⊕ B₂ ⊕ L₃ ⊕ L₄` to the Lie coalgebra of `MT(F)`, whose image in weights at most four is the correlator subcoalgebra (Goncharov–Rudenko [GR], §1.2, item 5, Theorem 1.13, pp. 15–16, GR line 660; §2, Theorem 2.4 and Proposition 2.5, pp. 29–31; §5.3, pp. 56–57). No injectivity or surjectivity onto the motivic Lie coalgebra is asserted. A proof route compares the cut formula with the cobrackets of §§1.6 and 3.1; shows by Layer 2 that the image of each relation has zero cobracket, hence by rigidity (§3.7) is a constant extension; kills the constant using `Ext¹_{MT(ℚ)}(ℚ(0),ℚ(4)) = 0` and the value of `S₃(1)` in weight three; and uses §3.10 for the specialized relations and §3.12 for the image. *Needs:* §§1.5, 3.1, 3.7–3.12; PeriodsAndSpecialValues PS.9.9 and the contract mixed-tate-number-fields.

**Checks.**

- Weight two: `S₂(y) ↦ −Cor_∞(0,1,y)`, whose cut cobracket must equal the image of `δ[y]₂ = (1−y)∧y`; this comparison fixes the minus sign, and the opposite sign gives `y∧(1−y)`.
- The image of `S₃(1)` is the motivic `ζ(3)`, nonzero in `Ext¹_{MT(ℚ)}(ℚ(0),ℚ(3)) ≅ ℚ`.
- The image of `Q₄` vanishes because `Ext¹_{MT(ℚ)}(ℚ(0),ℚ(4)) = 0` (`K₇(ℚ)⊗ℚ = 0`); in weight three the analogous constant need not vanish and is fixed by `S₃(1)`.

### Examples

Over `F = ℚ(i)` the weight-four Lie coalgebra contains `S₄(i)`, whose image is a motivic class with Hodge period `L₄*(i) = 5L₄(i)/16` since `|i| = 1`. The correlator `Cor_∞(0,0,x,1,y)` with `x = 2, y = 3` over ℚ is the image of `−D₃₁(2,3)`, with cobracket containing `[2]₂∧[3]₂`.

### Dependencies

Layers 1–2; HodgeStructures Layer L2; MotivicEtaleKTheory §§3.3–3.4; PeriodsAndSpecialValues PS.9.8–PS.9.10 with its two contracts; MotivesAndAlgebraicCycles Layer 3; Polylogarithms §§3.1–3.2, 4.5 and Layer 5; Mathlib free Lie algebras and derivations.

## Layer 4: Grassmannian configurations and decorated flags

Generic configurations of vectors, their deletion and projection maps and Gale duality are Polylogarithms §§3.4 and 3.6. This layer truncates the Bigrassmannian at weight four, maps generic decorated flags to it, defines the Grassmannian group `G₄(F)`, and writes the explicit map from the dual weight-four Bigrassmannian to the weight-four Lie coalgebra complex, proving every square including the degree-eight one.

### 4.1 The weight-four Bigrassmannian

With Polylogarithms' `C_m(q)`, which keeps individual vector scales, define `BC_m^{(4)} = ⊕_{4≤q<m} C_m(q)` in degree `m`, as the quotient of the full Grassmannian bicomplex by the rows `q < 4`, with differential `D = ∂ + p`; outgoing components into the killed rows are zero. Gale duality maps it to the dual truncation `q ≤ m−4` and exchanges deletion and projection (Goncharov–Rudenko [GR], §7.1, (129)–(130), pp. 62–63; §7.4, the Grassmannian duality and (159), pp. 68–69). This is Polylogarithms §3.4's row-quotient construction with cutoff four instead of three. *Needs:* Polylogarithms §§3.4, 3.6; Mathlib `Finsupp`, `Submodule.Quotient.mk`.

The quotient has the following API.

- The degree-`m` term has exactly the rows `4 ≤ q < m`, and `D² = 0` from `∂² = p² = 0` and `∂p + p∂ = 0`.
- Duality sends the cutoff to `q ≤ m−4` and exchanges the two face maps.

**Checks.**

- `BC₄^{(4)} = 0` and `BC₅^{(4)} = C₅(4)`, the corner in degree five.
- The projection `C₆(4) → C₅(3)` is zero in the quotient, so `D` on `C₆(4)` is the deletion `C₆(4) → C₅(4)` alone; treating the truncation as a subcomplex would keep a spurious row-three term.
- Two consecutive mixed faces, one deletion and one projection at different indices, cancel with the zero-based signs; one-based signs reverse one of them.

### 4.2 Generic decorated flags

A decorated `p`-flag in an `N`-dimensional `F`-space `V` is a chain `0 = F₀ ⊂ F₁ ⊂ … ⊂ F_p` with `dim Fᵢ = i` together with nonzero vectors `fᵢ ∈ Fᵢ/F_{i−1}`. An `m`-tuple of decorated flags is generic when every sum `F_{1,a₁} + … + F_{m,a_m}` with `0 ≤ aᵢ ≤ p` and `Σaᵢ ≤ N` is direct. Let `C_m(A_N^{(p)})` be the free ℚ-module on generic `m`-tuples, with the alternating deletion differential, and its `GL_N(F)`-coinvariants (Goncharov–Rudenko [GR], §7.1, (131)–(132), p. 63). Decorations are vectors of native quotient modules, not representatives in `Fᵢ`. *Needs:* Mathlib `Submodule`, `Submodule.Quotient.mk`, `Finsupp`.

The flags have the following API.

- The `i`-th subspace has dimension `i` and lies in the next; the `i`-th decoration is a nonzero vector of `Fᵢ/F_{i−1}`.
- Genericity is exactly the finite family of direct-sum conditions.
- Linear isomorphisms transport flags, decorations and genericity; field extension preserves genericity.

**Checks.**

- A decorated `1`-flag is a line with a nonzero vector on it, and a generic tuple of them in dimension `N` is a generic vector configuration in the sense of Polylogarithms §3.4.
- Two flags with the same first line are not generic when `N ≥ 2`: `F_{1,1} + F_{2,1}` is not direct.
- Changing a representative of `fᵢ` by an element of `F_{i−1}` gives the same decoration.

### 4.3 From decorated flags to configurations

For `N ≥ 4` put `p = N − 4` and use decorated flags of length `p + 1`. For `m` flags and `a = (a₁,…,a_m)` with `aᵢ ≥ 0` and `Σaᵢ ≤ p`, project the decorations `f_{i,aᵢ+1}` to `V/(⊕ᵢ F_{i,aᵢ})`, a generic `m`-tuple in dimension `N − Σaᵢ`, and sum the classes over all such `a`. Prove that this is a chain map `t: C_m(A_N^{(N−3)}) → BC_m^{(4)}`, the target rows `q ≥ m` being zero, compatible with stabilization after the standard flag choices, and fix the sign comparison between the simplicial differential of the flag complex and `D = ∂ + p` by an explicit row-and-degree sign (Goncharov–Rudenko [GR], §7.1, Theorem 7.1 with (133)–(134), p. 63, GR line 2878; §9.1, items 1–3, pp. 85–87). A proof route partitions the boundary terms by whether the deleted flag has `aᵢ = 0` or `aᵢ > 0` and pairs them with deletion and projection faces; the source changes bicomplex signs without recording the conversion, so the sign is part of this target. *Needs:* §§4.1–4.2; Mathlib `Submodule.Quotient.mk`.

The map has the following API.

- Each multi-index gives a configuration in the stated dimension, well defined by directness.
- The finite sum over multi-indices defines `t`, and `D∘t = ±t∘∂` with the sign fixed here.
- Adding standard complementary flag directions gives the stabilized map.

**Checks.**

- For `N = 4`, `p = 0` and only `a = 0` occurs: `t` is the identity on generic vector configurations.
- The term with `aᵢ = p` uses decoration number `p + 1`, so flags of length `p` are not enough.
- Quotienting by `⊕F_{i,aᵢ+1}` instead of `⊕F_{i,aᵢ}` kills the vector `f_{i,aᵢ+1}` that must survive.

### 4.4 The generic-flag resolution

Over an infinite field prove that the augmented complex of generic decorated-flag tuples, before `GL_N`-coinvariants, is acyclic: a finite cycle is coned off by a flag generic to the finitely many flags in its support. Consequently a comparison map from a projective `ℚ[GL_N(F)]`-resolution of `ℚ` to this complex exists and is unique up to homotopy, and composing with §4.3 and duality gives maps `H_•(GL_N(F),ℚ)` to the homology of the dual weight-four Bigrassmannian (Goncharov–Rudenko [GR], §9.3, item 3, (240), p. 94; §9.1, items 1–3, pp. 85–87). The flag modules are not free `ℚ[GL_N]`-modules; Mathlib's `CategoryTheory.ProjectiveResolution.lift` requires a projective target, so the comparison into an acyclic target is proved here. Exactness after coinvariants is not claimed. *Needs:* §§4.2–4.3; Mathlib `groupHomology`, `CategoryTheory.ProjectiveResolution`; Polylogarithms §3.4 for the weight-three instance.

**Checks.**

- For `N = 1` with flags of length one every tuple of nonzero vectors of `F¹` is generic, and coning by any nonzero vector contracts the augmented complex, over every field.
- Over `𝔽₂` with `N = 2` there are only three lines, so four pairwise distinct lines do not exist and the coning argument fails; the infinite-field hypothesis is needed.
- The comparison map is natural in field embeddings and independent of choices up to homotopy; two comparisons differ by a chain homotopy built from projectivity of the source.

### 4.5 The Grassmannian group G₄

Let `G̃₄(F)` be the free ℚ-module on `PGL₄(F)`-orbits of generic ordered eight-tuples of points of `ℙ³(F)`, and `π₈: C₈(4) → G̃₄(F)` the projection of vectors to lines. Define `G₄(F) = G̃₄(F)/(im(π₈∂: C₉(4) → G̃₄) + im(π₈p: C₉(5) → G̃₄))`, imposing both the nine-term and the dual nine-term relation (Goncharov–Rudenko [GR], §7.4, Definition 7.5 with (161)–(162), p. 70). It is a configuration group distinct from `B₄(F)`. *Needs:* §4.1; Polylogarithms §§3.4, 3.6; Mathlib `Submodule.Quotient.mk`.

The group has the following API.

- A generic eight-tuple of vectors gives a projective class; rescaling a vector does not change it.
- The alternating deletion sum of nine points and the alternating projection sum of nine vectors in dimension five vanish.
- A configuration map killing both relations descends uniquely.

**Checks.**

- Scaling one vector of an eight-tuple by `2` preserves its class in `G̃₄`, whereas in `C₈(4)` it gives a different generator.
- All nine terms of a generic deletion boundary from `C₉(4)` sum to zero in `G₄(F)`.
- The dual nine-term relation is not a consequence of the deletion relation in `G̃₄`; omitting it gives a larger quotient on which the cobracket of §4.6 is not defined.

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

- Coefficient cancellation in (iv): for a function `g` of the first seven of eight vectors, `Alt₈ g = −(Alt₇ g)∘∂` with zero-based signs, and likewise `Alt₈` of a function projected from the eighth vector is `−(Alt₇ ·)∘p`. Hence the `Λ²B₂` part of `R₇³∂` is `−(3/28)·(−X) = (3/28)X` and that of `R₇²p` is `−(1/84)·(9X) = −(3/28)X`; they cancel. With `+1/84` the sum is `(3/7)X ≠ 0`.
- Evaluating both `Λ²B₂` contributions on `C₈(3)` with the alternating form `(D∘σ₁)∧(D∘σ₂)`, for two independent generic complex configurations `σ₁, σ₂` of eight vectors in `ℂ³` and `D` the Bloch–Wigner function, gives `X ≠ 0` and the ratio `−9`; this rules out the separate vanishing claimed by Lemma 7.9.
- `d² = 0` on the source and target is a consistency test of the signs, not a proof of any constant: the zero map satisfies it.

### Examples

For `m = 5` the map is `R₅¹` on `C₅(1)`, landing in `Λ⁴U`; on the corner `C₅(4)` of the dual complex it is zero. On `C₈(4)` the value is the class in `G₄(F)` and its boundary is `R₇³p`; this is the top of the configuration cocycle used in Layer 5.

### Dependencies

Polylogarithms §§3.1, 3.4–3.6; K3BlochGroups §3.4; Mathlib free modules, quotients, exterior powers and group homology. The relation to motivic correlators enters only in §5.7.

## Layer 5: periods, residues, scissors and the Chern cocycle

This layer evaluates the canonical period in weight four, proves that on explicit cycles it is `5/16` of the classical `L₄` period, builds the residue diagram and current regulator for normal-crossing strata, constructs the scissors-congruence comparison and the Grassmannian tetralogarithm, and assembles the polylogarithmic Chern cocycle on the simplicial classifying variety with its nonzero regulator normalization.

### 5.1 The canonical weight-four period

Compose the weight-four part of the canonical real period of §3.7 with the Hodge realization of §3.13. Prove that its single-symbol value is `L₄*(z) = (5L₄(z) + (1/3)L₂(z)log²|z|)/16`, that `L₃* = 3L₃/8` and `L₂* = L₂/2`, that on `[x]₃⊗y` it is `(5/6)L₃*(x) d^C log|y| − (1/6)log|x| d^C L₃*(y)`, on `[x]₂⊗y∧z` the three-term expression of (192), and on `Λ⁴U` the form `ω₃ = (1/6)Alt₄(log|x₁| d^C log|x₂| ∧ d^C log|x₃| ∧ d^C log|x₄|)` (Goncharov–Rudenko [GR], §8.2, item 3, (190)–(192), pp. 77–78, GR line 3590; Goncharov [G08], §11.1, pp. 102–104). The remaining components are those of the dg-algebra map; no pointwise equality with `L₄` is asserted. *Needs:* §§3.7, 3.9, 3.13; PolylogarithmFunctions §§4.2, 5.2.

The period has the following API.

- A single symbol has the value `L₄*`; four units have the value `ω₃`; exterior derivative and the Chevalley–Eilenberg differential commute under the period.
- Complex conjugation acts by the sign of even weight, so a conjugate embedding negates the `L₄*` coordinate.

**Checks.**

- At `|z| = 1` the correction vanishes and `L₄*(z) = 5L₄(z)/16`; at `z = i` both sides are `5L₄(i)/16`.
- At `z = 2` one has `L₂(2) = 0` and `L₄(2) = 0` (real argument, even weight), so `L₄*(2) = 0`; at a nonreal `z` with `|z| ≠ 1`, `L₂(z)log²|z| ≠ 0` and the ratio `L₄*/L₄` is not `5/16` in general.
- Exchanging two entries of `ω₃` negates it and a repeated entry gives zero.

### 5.2 Calibration of the classical period on cycles

Let `c = Σ q_z[z]` satisfy `IsCycle4 c` and let `σ: F → ℂ` be an embedding. Prove `Σ q_z L₂(σz)log²|σz| = 0`, hence `Σ q_z L₄*(σz) = (5/16)Σ q_z L₄(σz)` (Goncharov–Rudenko [GR], §8.2, (191)–(192), pp. 77–78; Theorem 1.3(iv), p. 7). The source states its regulator theorem with `L₄` and assigns `L₄*` to `{x}₄`; this calibration connects the two. A proof route applies `δ₃⊗id` to the vanishing of `Σ q_z [z]₃⊗u(z)` in `B₃(F)⊗U(F)` to get `Σ q_z [z]₂⊗u(z)⊗u(z) = 0` in `B₂(F)⊗U(F)⊗U(F)`, and then the well-defined trilinear functional `[x]₂⊗a⊗b ↦ D(σx)log|σa|log|σb|`, using Polylogarithms §2.1's descent of `D`. The equality is proved on raw representatives; no termwise vanishing is assumed. *Needs:* §§3.2, 5.1; Polylogarithms §§2.1, 3.1, 4.5; Mathlib `TensorProduct.lift`.

**Checks.**

- For the cycle `[x] + [x⁻¹]` the correction is `D(x)log²|x| + D(1/x)log²|x| = 0`, since `D(1/x) = −D(x)`.
- For the cycle `[1]` the correction is `L₂(1)·0 = 0` and both periods vanish, since `L₄(1) = 0`.
- For the single symbol `[z]` with `z = 2 + i` the correction is `D(2+i)log²√5 ≈ 0.5117·0.6476 ≈ 0.331 ≠ 0`, and `L₄*(2+i) ≈ 0.1463` differs from `(5/16)L₄(2+i) ≈ 0.1394`; the cycle hypothesis is needed.

### 5.3 The normal-crossing coefficient diagram

For a smooth complex variety `X` with a finite simple-normal-crossing divisor `D`, form the finite diagram on the smooth strata `Y` of `D`: a stratum of codimension `q` carries `Γ(k(Y),4−q)` shifted to total degree `j+2q` for internal degree `j`, with `Γ(k(Y),0) = ℚ` in internal degree zero. The horizontal arrows are the differentials of the complexes `Γ(·,n)`, `n ≤ 4`; the vertical arrows are residues along the divisors, with uniformizer first on exterior powers, `θ(π∧u₁∧…) = ū₁∧…` and `θ(units) = 0`, and on symbols the specialization at valuation zero and zero otherwise. Require every symbol and residue used to have support in `D`. Prove that the totalized diagram is a complex, with the sign of each residue fixed so that two successive residues anticommute; on a normal-crossing divisor the homotopy correction of the general construction is zero (Goncharov–Rudenko [GR], §8.1, Theorem 8.1 with (171), remarks 1–3, residue maps (172)–(177), pp. 72–75; Theorem 8.6, (201)–(206), pp. 80–81; §9.2, item 1, p. 88). This is the diagram the Chern cocycle uses; it is not a Gersten resolution or a motivic quasi-isomorphism. *Needs:* §3.2; Polylogarithms §§3.2–3.3 and §5.4.

**Checks.**

- `θ_v(π∧u∧w) = ū∧w̄` and `θ_v(u∧w) = 0` for units `u, w`.
- A weight-three degree-one term on a divisor has total degree `1 + 2 = 3`; the codimension-four term `ℚ` has total degree eight, not four.
- For two coordinate divisors `t₁ = 0`, `t₂ = 0`, the iterated residues of `t₁∧t₂∧u∧w` in the two orders are `ū∧w̄` and `−ū∧w̄`, and cancel in the total complex with no correction term.

### 5.4 The weight-four current regulator

On the diagram of §5.3 the canonical period forms of §5.1 are locally integrable and define currents. For each codimension-`q` stratum take `(2πi)^q` times the pushforward of its period current; together with the logarithmic holomorphic component `dlog f₁∧…∧dlog f₄` on the exterior column they define a map to the weight-four real Deligne complex of `X`. Prove the current identity `dP − Pδ = 2πi Σ_Y i_{Y*}P res_Y` with the incidence signs of §5.3 (Goncharov–Rudenko [GR], §8.2, Proposition 8.4 and Lemma 8.5, pp. 78–79; Theorem 8.6(ii), (205), p. 80; §8.4, Theorem 8.11 with (216)–(218), Proposition 8.12 and Lemma 8.13, pp. 83–85). For the simplicial varieties of §5.8 apply this levelwise and use the functoriality of the logarithmic Deligne complex for every morphism of smooth varieties. *Needs:* §§5.1, 5.3; Polylogarithms §§5.1–5.2, 5.5 and 5.9; MotivicEtaleKTheory §§3.3–3.4.

**Checks.**

- A function on a divisor becomes a current of ordinary degree two, hence a Deligne term of degree three.
- For a uniformizer `t`, `d^C log|t|` has the current boundary `2πi·δ_{t=0}` in the chosen `d^C` normalization; omitting `2πi` fails the residue identity on `t∧u`.
- Dropping the holomorphic component leaves a real current whose differential does not match on the exterior column.

### 5.5 Scissors-congruence groups

For `n = 2, 3` define `Aₙ(F)` as the rational scissors-congruence group generated by pairs `⟨L;M⟩` of ordered generic simplices in `ℙⁿ(F)`, subject to projective invariance, antisymmetry in each simplex, vanishing when a simplex is degenerate, additivity (the alternating sum over `n+2` vertices in either slot) and dual additivity (Goncharov–Rudenko [GR], §9.3, item 1, definition of `Aₙ(F)`, p. 91; Goncharov [G00], §3, item 1, (6), PDF p. 8, and §3.3, PDF pp. 11–12). Define the reduced coproduct `ν: A₃ → A₂⊗A₁ ⊕ A₁⊗A₂` and `a₂: A₂(F) → B₂(F)` by `a₂⟨l₀,l₁,l₂;m₀,m₁,m₂⟩ = Σ_{i,j}(−1)^{i+j}[r(lᵢ | l without lᵢ; m without m_j)]₂` and `a₁` by the determinant letter (Goncharov [G00], (6), PDF p. 8). No owner of scissors-congruence groups exists among the suppliers; they are built here with the five-term group of K3BlochGroups as target. *Needs:* K3BlochGroups §§3.2–3.4; Polylogarithms §3.5 (projected ratios); Mathlib `Finsupp`, `Submodule.Quotient.mk`.

The groups have the following API.

- A generic simplex pair gives a class; transposing two vertices of either simplex negates it; a simplex in a hyperplane gives zero.
- The additivity and dual additivity sums vanish in each slot.
- `a₂` kills the relations of `A₂` and satisfies `δ₂∘a₂ = (a₁∧a₁)∘ν` on `A₂`.

**Checks.**

- Transposing `l₀` and `l₁` negates `a₂`, since every term changes sign under the induced permutation of the alternating sum.
- `a₂⟨L;M⟩ = −a₂⟨M;L⟩`, the symmetry used in the proof of G00 Theorem 3.2.
- A quotient imposing additivity but not dual additivity does not carry the coproduct `ν`, because `ν` of a dual-additivity relation is a nonzero sum of products in `A₂⊗A₁`.

### 5.6 The scissors-to-trilogarithm map

Define Goncharov's map `a₃: A₃(F) → B₃(F)` by `a₃ = (1/6)a′₃ − (1/3)a″₃`, where `a′₃` is the alternating double sum over omitted vertices `(i,j)` of `r₃(lᵢ | L ∖ lᵢ; M ∖ m_j)` with `r₃ = (1/15)Alt₆[T]₃ = T₃/3`, and `a″₃` is the same sum of `μ₃(lᵢ, m_j | L ∖ lᵢ; M ∖ m_j)` with `μ₃(x₁,x₂,x₃;y₁,y₂,y₃) = (1/2)Alt_{S₃×S₃}[r(x₁,y₂,x₂,y₁)]₃`; block alternations are signed sums. Prove that `a₃` kills the scissors relations, that `δ₃∘a₃ = (a₂∧a₁)∘ν`, and the collinear degeneration `r₃ = −2μ₃` (Goncharov [G00], §3, item 2, (7), PDF p. 9; §3, item 3, PDF p. 11; Theorem 3.2, Theorem 3.3, Proposition 3.4, Lemma 3.5, Proposition 3.6 and Lemma 3.7, PDF pp. 12–16; Goncharov–Rudenko [GR], §9.2, Lemma 9.3 with (235)–(236), pp. 89–90; §9.3, item 1 with footnotes 24–25, pp. 91–92). Written with the class `T₃` normalized by (167), `a′₃` is three times Goncharov's, and the same map is `(1/18)a′₃ − (1/3)a″₃`; the coefficient `1/2` printed in [GR] §9.3 with footnote 24 is inconsistent with (236) and with G00 Theorem 3.2, and is not used. *Needs:* §§4.6, 5.5; Polylogarithms §3.1; K3BlochGroups §3.4.

**Checks.**

- With `a′₃` built from `r₃` the coefficients are `1/6` and `−1/3`; the proof of G00 Theorem 3.2 shows that only the ratio `(1/2)a′₃ − a″₃` cancels the `Δ(l₀,l₁,m₀,m₁)` terms, and taking `1/2` with the (167)-normalized class multiplies the `a′₃` coefficient by nine and breaks `δ₃∘a₃ = (a₂∧a₁)∘ν`.
- An odd permutation of either simplex negates `a₃`.
- When three projected points become collinear, `r₃` is replaced by its limit `−2μ₃`; the generic triple-ratio formula is undefined there.

### 5.7 The Grassmannian tetralogarithm and its motivic lift

On the variety of generic eight-vector configurations in dimension four, the symbol of the Grassmannian tetralogarithm is a rational multiple of `I₄ = Alt₈(|1234|⊗|2345|⊗|3456|⊗|4567|)`; it is integrable, projective, and satisfies both nine-term relations (Goncharov [G09], §4.1, Definition 4.1, p. 22, Theorems 4.2–4.3, pp. 23–24; §3.3, Theorem 3.4 and the warning after it, p. 18). Construct, for a number field `F`, an `F`-defined motivic lift with values in the weight-four motivic Lie coalgebra: along a path of eight matrix-entry segments, the `k`-th segment changing the `k`-th first-row entry, each Plücker determinant is linear, so the lift is a combination of framed subquotients of the motivic fundamental groupoid of a punctured line over `F` with tangential regularization at the segment ends; prove that it is independent of the path and of the regularization, descends to `G₄(F)`, and that its full cobracket, including the `Λ²B₂` component, is the scissors expression `(a₃∧id + id∧a₃ + id)∘r_Δ`, hence equals `δ_{G₄}` of §4.8; then apply §3.12 to express it in `L₄(F)` (Goncharov–Rudenko [GR], §9.3, item 2, pp. 92–93). Equality of symbols does not determine the lift: two lifts with the same symbol can differ by a constant extension, so constants are fixed by specialization at rational configurations. *Needs:* §§3.8, 3.12–3.13, 4.5, 4.8, 5.6; PeriodsAndSpecialValues PS.9.3, PS.9.10 and the contract punctured-line-path-torsors.

**Checks.**

- Odd permutations of the eight vectors negate `I₄`.
- Rescaling one vector adds only terms with a constant letter and leaves the projective symbol unchanged.
- At `k = 1` the segment changes the first first-row entry; an index starting at zero names no matrix entry.

### 5.8 The generic polylogarithmic Chern cocycle

For `N ≥ 4`, compose §4.3, duality, §4.8 and the lift of §5.7 to obtain an `L₄`-valued weight-four cocycle on the simplicial variety of generic decorated flags for `GL_N`, with values in the weight-four Chevalley–Eilenberg complex. Remove its `Λ²B₂` component by subtracting the coboundary of the double-symbol cochain `h = −(3/28)·Alt₈ D₃₁(r(3,4|2,5,6,7), r(6,7|1,3,4,5))`, whose `δ₂₂` is exactly the `Λ²B₂` term `−(3/28)Alt₈([r(3,4|2,5,6,7)]₂∧[r(6,7|1,3,4,5)]₂)`, and use §3.3 to factor the degree-one term through `B₄(F)`. The result has values in `Γ(F,4)` (Goncharov–Rudenko [GR], §9.1, items 2–3, (224)–(228), pp. 86–87; §9.3, item 2 with Lemma 9.6, p. 93). The correcting element printed on p. 93 omits the coefficient `−3/28`; by (38) the `Λ²B₂` component of `δD₃₁(x,y)` has coefficient one, so the coefficient is needed. *Needs:* §§3.1, 3.3, 4.3–4.4, 4.8, 5.7.

**Checks.**

- `δ₂₂` of `D₃₁(x,y)` is `[x]₂∧[y]₂` with coefficient one, so `δ₂₂h` equals the `Λ²B₂` term exactly.
- Taking the correcting coefficient `1` leaves the formal wedge `(1 + 3/28)·Alt₈(…)`, which is nonzero.
- After correction the `Λ²B₂` component is zero and the first term lies in `B₄(F)`.

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

For a single unit `x` the canonical period of `[x]₂⊗x∧y` and the classical `D(x)log|x|log|y|` term differ by the factors of (192); on the cycle `[x] + [x⁻¹]` of `Γ(F,4)` every correction vanishes. For `N = 4` the flag map of §4.3 is the identity on configurations, so the generic cocycle on `GL₄` is the configuration cocycle of §4.8 composed with the lift of §5.7.

### Dependencies

Layers 3–4; Polylogarithms §§2.1, 3.1–3.5, 4.5 and Layer 5; PolylogarithmFunctions §§4.2, 5.2; K3BlochGroups §§3.2–3.4; MotivicEtaleKTheory §§3.3–3.4, 7.1; BorelRegulators §6.0a; PeriodsAndSpecialValues PS.9.3, PS.9.10.

## Layer 6: the explicit weight-four Zagier theorem

This layer evaluates the Chern cocycle on K-theory, compares the resulting periods with Borel's regulator, shows separately that the periods of every explicit cycle lie in the rational regulator image, and proves the theorem. Two regulator statements are needed and neither implies the other: the map `κ` with a nonzero regulator comparison gives existence, and the containment for every cycle gives every-family rationality. Neither needs `κ` to be surjective.

### 6.1 From K-theory to the explicit complex

For every number field `F` and `i = 1,2,3,4` construct natural maps `K_{8−i}(F)⊗ℚ → H^iΓ(F,4)` by stabilizing the cocycle of §5.9 through the comparison of §4.4 and restricting along the rational primitive Hurewicz isomorphism. For `i = 1` this is `κ: K₇(F)_ℚ → ker(δ: B₄(F) → B₃(F)⊗U(F))`, since the complex starts in degree one. Prove that the maps vanish on the rank-at-most-three part of the rank filtration, using a `GL₃`-invariant section of the generic decorated-flag resolution given by a standard complementary flag (Goncharov–Rudenko [GR], Theorem 1.3(i), p. 6, GR line 230; §9.3, item 3 with (240), p. 94). No equality of the rank and Adams filtrations, no inverse of `κ` and no generation statement in the other degrees is asserted. *Needs:* §§4.4, 5.8–5.9; Polylogarithms §2.2 (Hurewicz isomorphism and rank filtration) and §3.7 (the weight-three instance of the construction).

The maps have the following API.

- `κ` lands in the kernel of the first differential of `Γ(F,4)`; the four maps carry the stated degree shifts.
- They commute with field embeddings and vanish on the image of rank-at-most-three group homology.

**Checks.**

- `K₇` maps to `H¹` and `K₄` maps to `H⁴`; the opposite assignment of degrees fails `8 − i`.
- `δ(κ(k)) = 0` for every `k`.
- For a totally real field `K₇(F)⊗ℚ = 0` (`r₂ = 0`), so `κ = 0`; the theorem there rests on §6.4's empty determinant, not on `κ`.

### 6.2 The regulator of κ

For a number field `F` and one chosen embedding `σⱼ` from each complex place, prove that the vector `(Σ_z q_z L₄(σⱼ z))ⱼ` attached to a representative `Σ_z q_z[z]` of `κ(k)` equals `λπ³ r_Bo(k)` in BorelRegulators' Tate-divided coordinates, with `λ ∈ ℚˣ` independent of `k` and of `F` (Goncharov–Rudenko [GR], Theorem 1.3(ii) and (iv), pp. 6–7; Theorem 9.1, p. 87; §9.3, items 3–4, p. 94). In particular the vectors `κ(k)` span a real space of dimension `r₂`. A proof route evaluates the current regulator of §5.4 on rational primitive `K₇` through §5.10, converts `L₄*` to `L₄` on cycles by §5.2 (factor `16/5`), converts the universal Deligne character to `r_Bo` by BorelRegulators §6.0a and `r_Bo = −2r_Be` (§6.2), and divides the `ℝ(3)`-valued coordinate by `(2πi)³ = −8π³i` to reach the Tate-divided coordinate, which produces the factor `π³`. *Needs:* §§5.2, 5.4, 5.10, 6.1; BorelRegulators §§1.1, 2.2–2.3, 6.0a, 6.2.

**Checks.**

- The comparison scalar `λ` is nonzero; a period map without §5.10's nonvanishing proves no rank statement.
- Each column contributes `π³`: with `d₄ = r₂` columns and BorelRegulators §5.4's `π^{d₄−4N}`, the `L₄` determinant carries `π^{4r₂−4N} = π^{−4(r₁+r₂)}`, which the factor of `zagierDeterminantFour` cancels; a conversion with `π²` per column would leave a stray `π^{−r₂}`, for `ℚ(i)` a factor `π⁻¹`.
- The sign convention `r_Bo = −2r_Be` changes `λ` by a sign only; a factor `+2` would give the same rational line, so the sign does not affect the theorem but is fixed here.

### 6.3 The periods of every explicit cycle

Prove that for every raw sum `c` with `IsCycle4 c` the vector `(L₄-period of c under σⱼ)ⱼ` lies in the ℚ-span of `π³ r_Bo(K₇(F)_ℚ)`; the vector may be zero (Goncharov–Rudenko [GR], §1.2, item 5, Theorem 1.13 with (40)–(41), pp. 15–16; §8.2, (191)–(192), pp. 77–78; §1.5, item 2.1, p. 25; Goncharov [G08], §1.3, pp. 7–8). A proof route: by §3.2 the class of `c` is a cycle of `Γ(F,4)`, so by §3.13 its realization in the motivic Lie coalgebra has zero cobracket, including the `(2,2)` component; by the contract mixed-tate-number-fields the primitive part of weight four is `K₇(F)⊗ℚ`, and the Hodge realization of that class has period `L₄*` by §5.1 and the Beilinson regulator by the same contract; §5.2 and the conversions of §6.2 give the claim. Multiplying by a nonzero rational does not change a ℚ-span, so the normalizing constants do not weaken the statement. *Needs:* §§3.2, 3.13, 5.1–5.2, 6.2; PeriodsAndSpecialValues PS.9.8–PS.9.9 with the contract mixed-tate-number-fields; BorelRegulators §§2.3, 6.2.

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

- `F = ℚ`: `r₂ = 0`, `disc ℚ = 1`, the determinant is empty and `zagierDeterminantFour ℚ c = π⁴ = 90·ζ(4)`; assigning the empty determinant the value zero would make existence fail.
- `F = ℚ(i)`: `r₁ = 0`, `r₂ = 1`, `|disc F| = 4`, so `zagierDeterminantFour F c = (π⁴/2)·Σ_z q_z L₄(z)` for a one-column family `c = Σ q_z[z]`; the column `[i] + [−i]` is a cycle ( `[−i]` is the inverse of `[i]` ) with period `L₄(i) + L₄(−i) = 0`, giving `q = 0`, allowed in the every-family statement but not as a witness of existence.
- Replacing the chosen embedding of a complex place by its conjugate negates its row, since `L₄(z̄) = −L₄(z)`, and replaces `q` by `−q`; rationality is unaffected.
- A family with a zero column has determinant zero and satisfies the every-family statement with `q = 0`; existence requires `q ≠ 0` because `ζ_F(4) > 0`.
- The cycle predicate is not a numerical test: `[2]` over ℚ has `L₄(2) = 0` but is not a cycle (§3.2), and a predicate accepting every sum with zero period would make the every-family statement false for families mixing such sums with genuine cycles.

### 6.5 Inductive cycles

Polylogarithms §4.5 shows that every explicit raw weight-four cycle is a raw cycle of the inductive weight-four presentation, with the same `L₄` periods under analytic evaluation (§4.3). Prove that the existence statement of §6.4 therefore holds verbatim for the inductive complex `Γ^ind(F,4)`. For the every-family statement, apply Polylogarithms §4.6 to the square with `C = ℚ[F]`, `D = B₄^ind(F)`, `E = B₃(F)⊗U(F)`, `J = B₃^ind(F)⊗U(F)`, `p` the raw symbol map, `a` the raw explicit cobracket, `b = δ₄^ind` and `q` the weight-three explicit-to-inductive surjection tensored with the identity; both composites send `[x]` to `[x]₃^ind⊗u(x)`. Prove that every inductive cycle whose obstruction vanishes has `Z₄ ∈ ℚ·ζ_F(4)`, and more generally every inductive cycle family whose period columns lie in the ℚ-span of `π³r_Bo(K₇(F)_ℚ)` (Goncharov–Rudenko [GR], §1.1, items 4–6, pp. 4–7; §1.2, pp. 9 and 12). The vanishing of the obstruction for every inductive cycle is not claimed; it follows if the explicit-to-inductive weight-three map is injective, which is the comparison conjecture of Polylogarithms §4.2. No map of groups from `B₄(F)` to `B₄^ind(F)` is used: such a map would need every single-symbol relation of `L₄(F)` to hold in the inductive group, which is not known. The general-weight comparison and Zagier statements remain Polylogarithms' conjectural interfaces. *Needs:* §6.4; Polylogarithms §§4.2–4.6.

**Checks.**

- An explicit raw cycle has obstruction zero, by definition of the square.
- For the inductive cycle `[1]` in weight four, `[1]₄^ind = 0` rationally by inversion (`2[1] = 0`), and its period `L₄(1) = 0`.
- If `q` were not injective, an inductive cycle could have nonzero obstruction while still having its period in the correct rational span; the second clause covers that case, the first does not.

### Examples

Over `ℚ(√−3)` (`r₁ = 0`, `r₂ = 1`, `|disc| = 3`) the theorem gives one explicit cycle `c` with `(π⁴/√3)·Σ_z q_z L₄(z) = q·ζ_F(4)`, `q ≠ 0`. Over `ℚ(√5)` (`r₂ = 0`) it gives `π⁸/√5 ∈ ℚˣ·ζ_F(4)`, which is the Siegel–Klingen rationality of `ζ_F(4)√5/π⁸` supplied through Polylogarithms §4.7.

### Dependencies

Layers 3–5; Polylogarithms §§2.2, 3.7, 4.2–4.7; BorelRegulators §§1.1, 2.2–2.3, 5.4, 6.0a, 6.2; PeriodsAndSpecialValues PS.9.8–PS.9.9 with the contract mixed-tate-number-fields; Mathlib determinants and number-field carriers.

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
- **[G93]** A. B. Goncharov, *Explicit construction of characteristic classes*, Advances in Soviet Mathematics 16, part 1 (1993), 169–210. [author's page](https://sasha-goncharov.github.io/charclasses.pdf)
