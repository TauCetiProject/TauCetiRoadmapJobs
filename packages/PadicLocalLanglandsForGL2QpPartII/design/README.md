# P-adic local Langlands for GL₂(Q_p), Part II: geometric realisation in the Drinfeld tower

This roadmap identifies the supercuspidal locally analytic correspondence in functions and differentials on finite Drinfeld covers, extracts the Galois and Banach multiplicities of geometric étale cohomology, and factors the arithmetic completed cohomology over blocks and whole-Weil–Deligne-type deformation rings. The parent constructs the correspondence. Here the correspondence is an input to geometric comparison and interpolation.

The canonical atlas ID is `PadicLocalLanglandsForGL2QpPartII`; the longer extraction ID `PadicLocalLanglandsForGL2QpPartIIGeometricRealisation` names this same continuation. The geometric end statements already listed in the parent are assigned one proof package here (the precise ownership proposal is recorded below). No independent second correspondence, tower, mod-p theory or Kisin-ring construction is part of this roadmap.

## Conventions and end statements

Let p be prime, L/Q_p finite and sufficiently large for the finite-level types, G=GL₂(Q_p), D the quaternion division algebra, and Ω=P¹_C∖P¹(Q_p), with the L-coefficient descended function spaces when indicated. Choose ϖ_D with ϖ_D²=p up to a unit. The DLB cover Σ_r has level 1+p^rO_D, whereas the CDN index n uses 1+ϖ_D^nO_D. Thus DLB r corresponds to CDN 2r. A first ϖ_D-cover is a different level. A p superscript denotes the specified p^Z quotient, whose descent datum is imported, not discarded.

Use left actions by inverse pullback, the strong continuous dual E′_b with (gℓ)(v)=ℓ(g⁻¹v), and Z[M]=Hom_{D×}(JL(M),Z). The multiplicity Z[M] and the tensor isotypic summand Z[M]⊗JL(M) are different spaces. Over C take the invariant coefficient model before coefficient extension where required. Geometric period parameters use X_st⁺=(B_cris⁺⊗M)^{φ=p}. The CDN20 author-copy convention gives D_pst(V_{M,ℒ})=M[−1]; it must be compared with the parent convention and DLB’s dual de Rham space by the explicit normalization contract G1. Local reciprocity must be transported from the existing LocalGaloisGroups/ClassFieldTheory convention, rather than silently changing arithmetic to geometric Frobenius.

In GR.1–GR.3 fix a smooth absolutely irreducible supercuspidal π with trivial central character, ρ=JL(π), and the nontrianguline weight-{0,1} family V(π). Its unfiltered equation is N_rig(π); each filtration line ℒ changes the filtered lattice. For sufficiently large r the principal comparisons are

- O(Σ_r)^ρ ≅ (Π(V)^an/π)′_b, independently of the line, uniquely up to scalar;
- H¹_dR(Σ_r)^ρ ≅ π′_b⊗M_dR(π)∨, with the preimage of ℒ^⊥⊗π′_b in differentials equal to (Π(V_ℒ)^an)′_b;
- the supercuspidal geometric Galois multiplicity is Π(V_ℒ)′_b, and the Banach multiplicity is V_ℒ, with the corresponding JL factor when the D× action is restored.

The final factorisation fixes n, assumes p>3, and uses the arithmetic completion H¹_{n,Q̄_p}=L⊗lim_k colim_{[K:Q_p]<∞}H¹_ét(M⁽ᵖ⁾_{n,K},O_L/p^k(1)). It identifies this with

⊕_{M∈ΦNᵖ_n} (completed ⊕_B Π*(ρ_{B,M})⊗_{R_{B,M}}ρ_{B,M}⊗_{R_{B,M}}check R_{B,M})⊗_L JL(M).

Here check R=Hom_L^cont(R,L), the outer effective sum is finite, and the block completion is formed using the integral lattices before inverting p. This is the arithmetic almost-Galois-smooth subspace of geometric cohomology, as constructed in GR.5. The rank-one Steinberg branch is specified separately. The 2020 individual supercuspidal theorem is not restricted to p>3; the 2023 shortcut using mod-p finite length requires p>2. The family factorisation retains p>3.

## Existing owners and the baseline

The parent `PadicLocalLanglandsForGL2Qp` supplies rank-two (φ,Γ)-modules, Colmez’s correspondence, its classical compatibility, Banach/analytic vectors, blocks, projective generators and endomorphism rings. `PadicHodgeTheory` supplies Berger’s equation, period functors and the admissibility equivalence; `PhiGammaModulesAndIwasawaCohomology` supplies the analytic Iwasawa and exponential-image comparisons. `EndoscopicTransferAndUnitaryTraceComparison:ET.6a` supplies the tower, actions, period maps and descent only. Its ℓ≠p compact-support comparison cannot replace the p-adic fundamental diagram.

`ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5–SZ.6` supplies mod-p finite length and geometric multiplicities; `ModpRepresentationsOfGL2OverLocalFields:MP.1` supplies the cosocle criterion. `LocalGaloisDeformationRings:R08.3/weil-deligne-type-ring` supplies the whole-WD-type rings, their PID structure and universal Galois representations. These rings fix the full Weil–Deligne parameter, not only inertia. `CompletedCohomologyAndLocalGlobalCompatibility:R31.4` supplies the existing global compatibility theorem. The extra globalization and uniformization requirements are stated separately.

The current upstream SmoothRepresentationsOfLocalGroups, LocalGaloisGroups and induction/restriction and operator-theory boundaries have been checked in addition to the atlas snapshot. Reuse their generic categories, local Galois carriers and functional analysis. The current smooth roadmap’s supercuspidal projectivity is over C: the L-coefficient extension is an explicit supplier contract. No claim of a p-adic representation implementation is inferred from a generic representation carrier.

The pinned implementation baseline is Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` and Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`. The compact Suggested.lean uses only existing linear representations, von Neumann boundedness, finite-dimensional modules and bases. Heavy geometric and analytic carriers below are README targets, with their full APIs and discriminating tests. None is replaced by a proposition field or an unspecified data placeholder.

## Build order

The layers below are organized by mathematical construction and use, rather than by the sections of any one source. Each target gives its direct supplier IDs, a proof plan and an acceptance check. Definition/construction APIs are derived from their stated consumers. The source list distinguishes versions and the portions actually read. Open proof contracts identify what must be established before closure; a planned layer is not a claim of formalization.


## GR.0: Geometric types and normalization

Fix the discrete-series type sets, the p-central quotient, the conversion from p^r to ϖ_D^{2r} levels, multiplicity/strong-dual conventions and the period-line Galois parameter. The tower and all generic local Langlands, Jacquet–Langlands, Galois and period carriers are inputs from their owners. The cross-source dual-line and Frobenius-shift comparison is an explicit contract.

**Layer inputs:** `EndoscopicTransferAndUnitaryTraceComparison:ET.6a`, `GL2AutomorphicRepresentationsAndTransfer:R16.3`, `GL2AutomorphicRepresentationsAndTransfer:R17.1`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0`, `PadicHodgeTheory:R06.2`, `PadicHodgeTheory:R06.3`, `PadicLocalLanglandsForGL2Qp:R30.3`, `PadicLocalLanglandsForGL2Qp:R30.4`, `SmoothRepresentationsOfLocalGroups:SR.0`.


### level-types — Discrete-series types and the two level conventions

**Target (definition).** Use the imported rank-two discrete-series Weil–Deligne parameters and Jacquet–Langlands representations to form ΦN, its supercuspidal and special sectors, ΦNᵖ (p acts as 1 on JL(M)), and ΦNᵖ_n (JL(M) is trivial on 1+ϖ_D^n O_D). Supercuspidal geometric M has rank two, N=0 and slope 1/2; special M is Sp⊗η with nonzero monodromy. In the 2017 notation Σ_r has level 1+p^r O_D=1+ϖ_D^{2r}O_D, up to the chosen unit in ϖ_D²=p; thus r and n cannot be identified. The quotient by p^Z and its Weil descent are the imported rank-two tower, not a new moduli problem.

**Direct prerequisites:** `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/drinfeld-tower`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/actions-and-weil-descent`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/central-quotient-sector`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/rank-two-arithmetic-descent`, `GL2AutomorphicRepresentationsAndTransfer:R16.3`, `GL2AutomorphicRepresentationsAndTransfer:R17.1`.

**Construction/proof.**

1. Specialise the existing tower and transfer carriers; impose each of the central and open-subgroup conditions separately.

2. Compare ideals p^rO_D and ϖ_D^{2r}O_D and transport the descent datum, retaining the inverse-pullback and inverse-transpose action dictionaries.

**Consumers.** CDN23 Theorem 5.15: Indexes the finite outer sum and separates the Steinberg branch. DLB17 Theorems 1.2 and 1.4: Matches the geometric cover to the representation level.

**Planning API.**

- `DrinfeldType.level` (characterisation): level≤n means JL(M) factors through D×/(1+ϖ_D^nO_D).

- `DrinfeldType.centralQuotient` (compatibility): M∈ΦNᵖ exactly when the p-central quotient retains its JL(M)-sector.

- `DrinfeldType.levelMonotone` (functoriality): A type of level≤n has level≤m for n≤m, with compatible tower pullback.

- `DrinfeldType.evenLevel` (compatibility): The DLB r-th cover maps to the CDN 2r-th level with the stated common central sector.

**Unit tests a wrong definition must fail.**

- `DrinfeldType.even` (computation): At r=1, 1+pO_D is 1+ϖ_D²O_D, not 1+ϖ_DO_D.

- `DrinfeldType.special` (non-example): Sp⊗η has N≠0 and is excluded from the supercuspidal slope-1/2 construction.

- `DrinfeldType.central` (characterisation): A JL(M) on which p acts by a scalar different from 1 contributes zero to the p-central quotient.

**Check.** A special type is never passed to a rank-two absolutely irreducible Galois-family construction.

**Sources.** DLB17, §§1.1–2, pp. 324–326, 334–335: Fixes the division algebra, congruence subgroups, central quotient and left actions.; CDN23, §0.3.1, pp. 7–8; §5, pp. 49–50: Defines the type sets and level conditions.

**Atlas planet:** Drinfeld discrete-series types.


### isotypic-dual-adapter — Multiplicity spaces and dual-action conventions

**Target (definition).** For a smooth D×-module Z in the p-central sector and L splitting its finite-level D× constituents, set Z[M]=Hom_{L[D×]}(JL(M),Z); evaluation identifies Z with ⊕_M Z[M]⊗_L JL(M). Use the strong continuous dual E′_b, acting by (gℓ)(v)=ℓ(g⁻¹v). For functions and forms over C, take the Galois-invariant L⊗F-model before base change to C, as in CDN20 §2.1. The DLB notation E^ρ uses the same Hom convention, not the tensor isotypic summand. Supply the comparison of M_dR^∨ in the trivial-central-character DLB normalization with CDN’s M_dR and ℒ; carry the coefficient line rather than choosing a self-duality.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.0/level-types`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/compact-type-duality`, `PadicLocalLanglandsForGL2Qp:R30.3/contragredient`, `SmoothRepresentationsOfLocalGroups:SR.0`.

**Construction/proof.**

1. Decompose the compact-mod-centre finite-level D× action by finite-group idempotents in characteristic zero.

2. Check inverse pullback, contragredient and tensor-Hom evaluation on generators; retain the two dual de Rham spaces until the normalization comparison is supplied (gap G1).

**Consumers.** GR.3/de-rham-realisation: Translates the filtered-annihilator statement into the period-diagram convention. GR.6/factorisation: Reconstructs the D× action after the blockwise comparison.

**Planning API.**

- `DrinfeldMultiplicity.evaluation` (equivalence): ⊕_M Hom_D(JL(M),Z)⊗JL(M)→Z is the equivariant evaluation isomorphism in the stated smooth finite-level sector.

- `DrinfeldMultiplicity.map` (functoriality): A commuting equivariant continuous map induces maps on every M-multiplicity, preserving identity and composition.

- `DrinfeldMultiplicity.dualAction` (characterisation): Dual evaluation is ⟨gℓ,v⟩=⟨ℓ,g⁻¹v⟩, including the induced central character inverse.

- `DrinfeldMultiplicity.coefficientChange` (compatibility): Finite splitting-field extension commutes with the multiplicity at fixed finite level and with its finite-dimensional JL factor.

**Unit tests a wrong definition must fail.**

- `DrinfeldMultiplicity.single` (computation): For Z=W⊗JL(M) with trivial D× action on W, Z[M]≅W, not W⊗JL(M).

- `DrinfeldMultiplicity.wrongType` (non-example): Hom_D(JL(M),JL(M′))=0 for distinct irreducible types over a splitting field.

- `DrinfeldMultiplicity.dualScalar` (computation): If z acts by χ(z) on E, it acts by χ(z)⁻¹ on E′_b; omitting inverse pullback fails this test.

**Check.** The central characters of Z[M] and JL(M) reconstruct the original commuting G×D× action.

**Sources.** DLB17, §1.1, p. 324; §2, pp. 334–335: Specifies isotypic multiplicities and dual conventions.; CDN20, §0.4 and §2.1, author pp. 7–8, 19–20: Uses invariant coefficient models and Hom-isotypic parts.; CDN23, Proposition 5.7 and footnote 30, p. 51: Warns that the earlier trivial-centre convention implicitly identifies a de Rham space with its dual.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G1.


### period-line-parameter — The geometric period parameter attached to a line

**Target (construction).** Let F=Q_p, M a supercuspidal geometric rank-two module of slope 1/2 and M_dR=(C⊗_{Q_p^nr}M)^{G_F}. Put X_st⁺(M)=(B_cris⁺⊗M)^{φ=p}. For an L-line ℒ⊂M_dR define V_{M,ℒ}=ker(X_st⁺(M)→C⊗_F(M_dR/ℒ)), the map induced by θ. It is absolutely irreducible of dimension two and weights {0,1}. The line varies over P(M_dR). The association to the parent’s Galois parameter and to π=LL(M), Π_{M,ℒ}=Π(V_{M,ℒ}) must use a checked twist dictionary: in the CDN20 author copy D_pst(V_{M,ℒ})≅M[−1], where M[k] multiplies φ by p^k. No identity of this geometric M with another paper’s Galois-normalized M is imposed without G1.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`, `PadicHodgeTheory:R06.2/weak-admissibility-is-admissibility`, `PadicHodgeTheory:R06.3/plan/potentially-semistable-dieudonne-module`, `PadicHodgeTheory:R06.3/plan/fontaine-weil-deligne-functor`, `PadicLocalLanglandsForGL2Qp:R30.3/colmez-correspondence`, `PadicLocalLanglandsForGL2Qp:R30.4/locally-algebraic-vectors`.

**Construction/proof.**

1. Apply the imported Colmez–Fontaine equivalence to the filtration with one line and jumps 0,1; irreducibility of the underlying parameter makes every such line weakly admissible.

2. Recover the representation as the displayed period kernel; compare the φ=p condition with the standard φ=1 reconstruction by M[−1].

3. Use the parent correspondence to obtain the Banach object; do not use a geometric theorem to construct that correspondence.

**Consumers.** GR.4/period-multiplicity: Identifies the unique line whose period multiplicity can occur. GR.6/interpolated-banach-dual: Identifies the fibers of the universal family after normalization.

**Planning API.**

- `PeriodLineParameter.kernel` (characterisation): V_{M,ℒ} is exactly the θ-preimage of C⊗ℒ in X_st⁺(M).

- `PeriodLineParameter.dimension` (structure): For F=Q_p and supercuspidal slope-1/2 M, dim_L V_{M,ℒ}=2 and V_{M,ℒ} is absolutely irreducible.

- `PeriodLineParameter.filtration` (compatibility): The induced D_dR filtration recovers the chosen line after the explicit normalization comparison.

- `PeriodLineParameter.changeCoefficients` (functoriality): Finite extension L′/L transports M, ℒ and the period kernel compatibly.

- `PeriodLineParameter.classify` (equivalence): Every supercuspidal rank-two Galois representation of weights {0,1} arises, uniquely up to isomorphism of the pair, in this period-kernel normalization.

**Unit tests a wrong definition must fail.**

- `PeriodLineParameter.twoLines` (non-example): For fixed M and ℒ≠ℒ′, filtered D_pst data distinguish V_{M,ℒ} and V_{M,ℒ′}; the unfiltered M alone does not determine V.

- `PeriodLineParameter.rank` (computation): A line in the two-dimensional M_dR gives a two-dimensional kernel representation, not a one-dimensional Galois character.

- `PeriodLineParameter.frobeniusShift` (compatibility): The φ=p kernel is compared with the φ=1 functor on M[−1]; dropping this shift fails the author-copy convention.

**Check.** Distinct lines give distinct filtered representations even though their unfiltered differential equation is the same.

**Sources.** CDN20, §2.1.3–2.1.4, Proposition 2.5 and Lemma 2.7, author pp. 22–23 (published pp. 329–330): Gives the period kernel and its normalization.; DLB17, §1.1, pp. 325–327; Example 6.6, pp. 359–360: Parametrizes completions of π by de Rham lines.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G1.

**Atlas planet:** Period-line Galois representations.


## GR.1: Differential equations and P-finite models

Specialize Berger’s unfiltered differential equation to a fixed supercuspidal π-family. Prove polynomial injectivity and connection invertibility, construct the full P-finite/infinite-slope Kirillov function spaces, and establish the infinitesimal-action, residue-annihilator and shell-duality formulas. Derive the smooth-vector criterion and keep weights {0,1} and nontriangulinity explicit.

**Layer inputs:** `LocallyAnalyticRepresentationsOfLocalGroups:LR.0`, `PadicHodgeTheory:P7`, `PadicHodgeTheory:R06.3`, `PadicLocalLanglandsForGL2Qp:R30.1`, `PadicLocalLanglandsForGL2Qp:R30.3`, `PadicLocalLanglandsForGL2Qp:R30.4`, `PadicLocalLanglandsForGL2QpPartII:GR.0`.


### unfiltered-nrig — The filtration-independent differential equation N_rig(π)

**Target (construction).** For π smooth absolutely irreducible supercuspidal over L with trivial central character, use the parent’s set of unitary completions with smooth vectors π and the period-line parameter. Construct N_rig(π) as the descent of the unfiltered potentially semistable parameter through Berger’s differential-equation functor. For every V in that family there is an isomorphism N_rig(V)≅N_rig(π), unique up to scalar, with N_rig(V)[1/t]=D_rig(V)[1/t]. For sufficiently large n, N_dif,n⁺=L_n[[t]]⊗_L M_dR and D_dif,n⁺(V)=tN_dif,n⁺+L_n[[t]]⊗ℒ; hence tN_rig⊂D_rig(V)⊂N_rig. These are the normalized weights {0,1}, not arbitrary weights.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter`, `PadicHodgeTheory:R06.3/plan/de-rham-differential-equation`, `PadicHodgeTheory:R06.3/berger-filtered-module-robba-construction`, `PadicHodgeTheory:P7/plan/fontaine-dif-module`, `PadicLocalLanglandsForGL2Qp:R30.1/psi-and-treillis`.

**Construction/proof.**

1. Import Berger’s N_dR construction, including descent, rather than construct a second generic differential equation.

2. Apply it to the fixed unfiltered parameter and compare the local lattices prescribed by the varying filtration.

3. Prove independence by the uniqueness of the imported lattice construction and verify the inclusions at every sufficiently large localization.

**Consumers.** GR.2/common-image: Provides a single ambient sheaf for all completions. GR.3/filtration-position: Recovers the varying filtered subrepresentation from the local lattice.

**Planning API.**

- `SupercuspidalNrig.compare` (equivalence): N_rig(V)≅N_rig(π) compatibly with φ, Γ and ∂, for every V in the fixed π-family.

- `SupercuspidalNrig.localize` (compatibility): At large n, localization is L_n[[t]]⊗M_dR and the filtered lattice is tN⁺+L_n[[t]]⊗ℒ.

- `SupercuspidalNrig.bounds` (relation): The weight-one lattice sandwich is tN_rig⊂D_rig(V)⊂N_rig, with the same admissible-radius qualification on each term.

- `SupercuspidalNrig.changeLine` (characterisation): Changing ℒ changes the filtered local lattice but not the unfiltered differential equation.

**Unit tests a wrong definition must fail.**

- `SupercuspidalNrig.twoLines` (compatibility): Two distinct lines give equal unfiltered N_rig but unequal D_dif⁺ inside N_dif⁺.

- `SupercuspidalNrig.quotient` (computation): N_dif,n⁺/D_dif,n⁺≅L_n⊗(M_dR/ℒ), killed by t.

- `SupercuspidalNrig.weights` (non-example): For a filtration of weights {0,k} with k>1, the t-sandwich and weight-one annihilator are not asserted.

**Check.** The quotient N_dif,n⁺/D_dif,n⁺ records M_dR/ℒ and retains the line dependence that N_rig forgets.

**Sources.** DLB17, Example 6.6 and Definition 6.7, pp. 359–360: Defines the π-dependent unfiltered equation and its differential lattices.

**Atlas planet:** N_rig of a supercuspidal representation.


### nontrianguline-differential-control — Polynomial injectivity and invertibility of the connection

**Target (theorem).** If V is absolutely irreducible, two-dimensional, de Rham and nontrianguline, every nonzero polynomial P∈L[X] acts injectively as P(∇) on D_rig(V), and ∂=t⁻¹∇ is a continuous bijection on N_rig(V). The inverse has the topology supplied by differential-equation duality. These assertions are not made for trianguline V.

**Hypotheses.** Nontrianguline is essential; π-families in GR.1/unfiltered-nrig satisfy it. Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.1/unfiltered-nrig`, `PadicLocalLanglandsForGL2Qp:R30.1/trianguline-representation`, `PadicHodgeTheory:R06.3/plan/p-adic-monodromy-theorem`.

**Construction/proof.**

1. Use finite-dimensionality of ker P(∇), then φ,Γ-stability to obtain a rank-one subobject if it is nonzero; this contradicts nontriangulinity.

2. For ∂ use the p-adic monodromy theorem to control its cokernel, and the differential-equation residue duality to turn a nonzero cokernel into horizontal vectors in the dual. The precise finite-kernel and residue-duality inputs remain G2.

**Check.** A rank-one trivial differential equation has nonzero horizontal vectors and is a counterexample if nontriangulinity is removed.

**Sources.** DLB17, Lemma 6.3 and Proposition 6.4, pp. 356–358: Establishes the two differential facts, using external finite-kernel and differential-equation duality results.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G2.

**Atlas planet:** Invertibility of the connection.


### p-finite-vectors — P-finite vectors and infinite slope

**Target (definition).** For a locally analytic G-representation Π, define Π^{P-fin} to consist of vectors v killed by (u(p^n)−1)^k for some n,k and having finite-dimensional span under diag(Z_p×,1). Define the infinite-slope condition by requiring: there exist integers n,k≥1 and m∈Z such that (Σ_{i=0}^{p^n−1}u(i))^k diag(p^m,1)v=0, as in Definition 7.4. Put Π_c^{P-fin} equal to the intersection. Retain these trace quantifiers rather than substituting topological nilpotence of one unipotent.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2Qp:R30.1/gl2qp-subgroups`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/derived-lie-action`.

**Construction/proof.**

1. Define the finite-orbit condition and trace condition on the imported analytic representation; verify invariance under P.

2. Compare the trace condition with compact support in the Kirillov model in the next node; this comparison fixes its quantifier form without a new slope operator.

**Consumers.** GR.1/kirillov-model: Identifies the domain on which the local expansion is algebraically meaningful. GR.1/kirillov-duality: Extracts smooth vectors from the special weight-zero part.

**Planning API.**

- `PFinite.mem` (characterisation): Membership is the conjunction of a unipotent difference-annihilation condition and finite-dimensional Z_p× orbit span.

- `PFinite.infiniteSlope` (characterisation): There exist n,k≥1 and m∈Z for which (Σ_{i=0}^{p^n−1}u(i))^k diag(p^m,1)v=0.

- `PFinite.pStable` (structure): The P-finite and P-finite infinite-slope spaces are P-stable subspaces.

- `PFinite.difference` (relation): For sufficiently divisible unipotent differences, a power of 1−u carries a P-finite vector into the infinite-slope subspace, as in Remark 7.5.

**Unit tests a wrong definition must fail.**

- `PFinite.zero` (degenerate): Zero satisfies both conditions.

- `PFinite.constant` (non-example): A nonzero vector in the trivial representation is P-finite but fails infinite slope, since every trace acts as the nonzero scalar p^n.

- `PFinite.finiteShell` (computation): A Kirillov function supported on one valuation shell belongs to the c-space; an allowed function with infinitely many nonzero shells approaching zero need not.

**Check.** On a Kirillov model the subscript c removes all valuation shells sufficiently close to zero.

**Sources.** DLB17, Definition 7.4 and Remark 7.5, pp. 363–364: Defines P-finite and infinite-slope vectors.


### kirillov-functions — Locally polynomial Kirillov function spaces

**Target (definition).** For a Γ-module X with the t-power torsion occurring in D_dif⁻, define LP(Q_p×,X)^Γ to be functions φ with φ(ax)=σ_aφ(x), a∈Z_p×, and compact support in Q_p (zero is allowed as a limit point of support). Define LP_c by support compact in Q_p×. The P-action is ((a b;0 1)·φ)(x)=ε(bx)exp(tbx)φ(ax) with the action order fixed by the source matrix formula; exp is finite on each t-torsion value. Finite-shell functions identify with a direct sum of coefficient spaces indexed by valuation; LP itself does not.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.1/p-finite-vectors`, `PadicHodgeTheory:P7/plan/fontaine-dif-module`, `PadicLocalLanglandsForGL2Qp:R30.1/character-dictionary`.

**Construction/proof.**

1. Construct the equivariant functions and restrict the left action from the matrix formula; use t-torsion to define the exponential.

2. Verify the semidirect-product multiplication and distinguish the two support conditions.

**Consumers.** GR.1/kirillov-model: Receives expansions of P-finite vectors. GR.3/kirillov-independence: Prevents an invalid replacement of LP by locally constant functions before untwisting.

**Planning API.**

- `KirillovFunctions.evaluate` (projection): Evaluation at p^j determines every value by Γ-equivariance.

- `KirillovFunctions.finiteShell` (equivalence): LP_c identifies with the direct sum of the allowed coefficient spaces over j∈Z.

- `KirillovFunctions.action` (simp): For the source matrix (a b;0 1), action is φ(x)↦ε(bx)exp(tbx)φ(ax).

- `KirillovFunctions.include` (coercion): LP_c→LP is injective; it is not an equivalence in general.

- `KirillovFunctions.coefficientMap` (functoriality): A Γ-equivariant map commuting with t induces a P-equivariant coefficient map.

**Unit tests a wrong definition must fail.**

- `KirillovFunctions.oneShell` (computation): An equivariant function supported on p^j Z_p× has a single nonzero valuation coordinate.

- `KirillovFunctions.approachZero` (non-example): Support on p^j Z_p× for all j≥0 is compact in Q_p after adjoining its limit zero, but not compact in Q_p×.

- `KirillovFunctions.unipotent` (compatibility): The derivative of the unipotent action is multiplication by tx, with the prescribed left-action convention.

**Check.** The two support conditions remain distinct even when each value is locally constant.

**Sources.** DLB17, §7.3, pp. 364–365: Defines LP, LP_c, their support conditions and the P-action.


### kirillov-model — The P-finite Kirillov model and infinitesimal action

**Target (theorem).** For the nontrianguline V above, the parent analytic representation Π(V)^an admits the canonical P-equivariant embedding of Π^{P-fin} into LP(Q_p×,D_dif⁻(V))^Γ; on Π_c^{P-fin} it is an isomorphism onto LP_c. For generalized Hodge–Tate weights a,b, the operators on D_rig(V) are a⁺=∇, a⁻=a+b−1−∇, u⁺=t and u⁻=−t⁻¹(∇−a)(∇−b); the Casimir scalar is ((a−b)²−1)/2. In weights {0,1}, u⁻=−t∂². This extends the parent’s P-algebraic fixed-weight model; it does not redefine it.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.1/nontrianguline-differential-control`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-functions`, `PadicLocalLanglandsForGL2Qp:R30.3/analytic-vectors-of-pi`, `PadicLocalLanglandsForGL2Qp:R30.4/kirillov-model`, `PadicLocalLanglandsForGL2Qp:R30.3/boxtimes-p1`.

**Construction/proof.**

1. Use the parent analytic-vector exact sequence to define the localization expansion and the distribution action.

2. Apply Colmez’s P-finite expansion theorem and check its compact-support bijection; the full non-algebraic expansion theorem is the exact supplier extension in G3.

3. Compute the Lie action through the Sen polynomial and check commutators with multiplication by t.

**Check.** In weights {0,1}, the formula for u⁻ is −t∂², rather than −∂²t.

**Sources.** DLB17, Theorem 7.3 and Proposition 7.6, pp. 363–365: States the infinitesimal formulas and the P-finite, infinite-slope Kirillov comparison.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G3.

**Atlas planet:** P-finite Kirillov model.


### residue-pairing — The differential residue pairing

**Target (construction).** Construct the L-valued pairing { , }_dif on the two localized differential modules from trace of the t⁻¹ residue, the factor p⁻ⁿ and the σ_{−1} convention of Proposition 7.7. For det V=χ_cyc use the alternating determinant pairing to identify the relevant dual. D_dif,n⁺ is its own annihilator. For the unfiltered weight-one lattice, the annihilator of N_dif,n⁺ is tN_dif,n⁺. Do not extrapolate the printed t^k formula to weights {0,k} with k≠1.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.1/unfiltered-nrig`, `PadicHodgeTheory:P7/plan/fontaine-dif-module`, `PadicLocalLanglandsForGL2Qp:R30.1/tate-dual`.

**Construction/proof.**

1. Use determinant evaluation followed by σ_{−1}, residue and normalized finite-level trace.

2. Check compatibility under n→n+1 and compute the annihilator in a differential basis using the t-adic exponents.

**Consumers.** GR.1/kirillov-duality: Converts the global duality into a finite-shell residue sum. GR.2/common-image: Tests whether the common dual image lies in the required lattice.

**Planning API.**

- `DifferentialResiduePairing.formula` (characterisation): The pairing is residue at t=0 of the σ_{−1}-adjusted determinant coefficient, followed by the normalized trace p⁻ⁿ Tr.

- `DifferentialResiduePairing.level` (compatibility): Changing cyclotomic level gives the same L-valued result after the normalized trace.

- `DifferentialResiduePairing.filteredAnnihilator` (relation): The annihilator of D_dif⁺ is D_dif⁺ under the determinant identification.

- `DifferentialResiduePairing.unfilteredAnnihilator` (relation): In weights {0,1}, (N_dif⁺)^⊥=tN_dif⁺.

**Unit tests a wrong definition must fail.**

- `DifferentialResiduePairing.residue` (computation): Only products whose total t-power is −1 contribute a nonzero residue in the untwisted differential coefficient.

- `DifferentialResiduePairing.annihilator` (compatibility): Testing a t⁰ coefficient against all nonnegative powers forces the annihilator threshold t¹ in the normalized determinant convention.

- `DifferentialResiduePairing.higherWeight` (non-example): The weight-one result does not assert (N_dif⁺)^⊥=t^kN_dif⁺ for k>1.

**Check.** In the unfiltered basis the t-exponents of a vector and its annihilator differ by one.

**Sources.** DLB17, Proposition 7.7, p. 365: Defines the residue pairing; the unfiltered annihilator requires the weight-one correction E19.


### kirillov-duality — Colmez duality and the smooth-vector criterion

**Target (theorem).** With the paired Kirillov expansion, ⟨ℓ,v⟩ is the sum over valuation shells of {i_{j,n}(ℓ),φ_v(p^{−j})}_dif whenever v is P-finite of infinite slope and n is large enough. The stabilizer distribution algebra preserves a restricted boxtimes module, and the parent analytic dual is self-orthogonal for det V=χ_cyc. In weights {0,1}, Π^sm=ker(u⁺)∩ker(a⁺); it also equals the P-smooth infinite-slope subspace, and Π has no nonzero vector fixed by the full upper unipotent group.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-model`, `PadicLocalLanglandsForGL2QpPartII:GR.1/residue-pairing`, `PadicLocalLanglandsForGL2Qp:R30.3/analytic-vectors-of-pi`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/distribution-module-structure`.

**Construction/proof.**

1. Restrict Colmez’s global pairing to the compact-shell model and use trace-residue compatibility to obtain the shell sum (Theorem 7.8).

2. For the smooth-vector criterion, use the Kirillov model of the smooth π and the absence of full-unipotent fixed vectors; the latter and the general duality formula are recorded as the parent extension G3.

3. Use the Lie formulas to identify ker u⁺∩ker a⁺, with the infinite-slope condition removing spurious P-smooth vectors.

**Check.** The nonzero trivial representation shows that P-smoothness alone cannot replace the stated criterion.

**Sources.** DLB17, Remark 7.2, Theorem 7.8, Proposition 7.9 and Theorem 7.11, pp. 362, 365–367: Supplies the local duality formula and the smooth-vector characterization.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G3.

**Atlas planet:** Kirillov duality.


## GR.2: The common quotient and holomorphic action

Construct the unfiltered two-chart Colmez sheaf and prove equality of the embedded quotient duals. Define Π(π,0), establish the closed unipotent operator, its coordinate and homographic covariance, then use locally analytic resolvents and Morita duality to construct the continuous O(Ω)-module action. Prove automatic O(Ω)-linearity and the separate topological irreducibility assertion.

**Layer inputs:** `LocallyAnalyticDistributions:L0`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1`, `PadicLocalLanglandsForGL2Qp:R30.3`, `PadicLocalLanglandsForGL2QpPartII:GR.1`, `PhiGammaModulesAndIwasawaCohomology:PG.4`, `PhiGammaModulesAndIwasawaCohomology:PG.5`.


### nrig-projective-line-sheaf — The unfiltered Colmez sheaf

**Target (construction).** On Z_p use tN_rig(π), on Z_p× its ψ=0 part, and glue the two standard charts of P¹(Q_p) with the restricted Colmez Weyl involution. The involution preserves (tN_rig(V))^{ψ=0} and is independent of the line ℒ after the N_rig identifications. This constructs the G-equivariant sheaf U↦tN_rig(π)⊠U as a subsheaf of the imported Drig boxtimes sheaf for every member of the family.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.1/unfiltered-nrig`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality`, `PadicLocalLanglandsForGL2Qp:R30.3/boxtimes-p1`, `PhiGammaModulesAndIwasawaCohomology:PG.5/analytic-iwasawa`.

**Construction/proof.**

1. Obtain fixed-radius control of the dual image from Proposition 8.2.

2. For Weyl stability use generation after Robba-Γ scalar extension, not generation over the distribution algebra alone; verify both ψ-cokernel hypotheses, extension through (γ−1)⁻¹ and radius control (G4).

3. Use Colmez’s line-independence of the involution (G5), then glue by the existing sheaf API.

**Consumers.** GR.2/common-image: Provides the fixed ambient space in which equality of images is proved. GR.7/boundary-sheaf: States the comparison expected for boundary functions without asserting it.

**Planning API.**

- `UnfilteredColmezSheaf.onZp` (simp): Sections over Z_p are tN_rig(π).

- `UnfilteredColmezSheaf.onUnits` (simp): Sections over Z_p× are (tN_rig(π))^{ψ=0}.

- `UnfilteredColmezSheaf.weyl` (relation): The overlap involution squares to 1 and agrees after every line comparison.

- `UnfilteredColmezSheaf.restrict` (functoriality): Restriction to compact opens commutes with the G-action and the existing boxtimes restriction maps.

- `UnfilteredColmezSheaf.embed` (compatibility): The sheaf embeds into D_rig(V)⊠− for each line, using tN_rig⊂D_rig(V).

**Unit tests a wrong definition must fail.**

- `UnfilteredColmezSheaf.overlap` (compatibility): Restricting a two-chart section to Z_p× from either chart gives the prescribed Weyl-related pair.

- `UnfilteredColmezSheaf.twoLines` (compatibility): Changing ℒ leaves the overlap operator unchanged; merely obtaining isomorphic section spaces is insufficient.

- `UnfilteredColmezSheaf.generation` (non-example): Robba-Γ generation does not imply algebraic generation over D(Γ); the construction must not use that implication.

**Check.** The two chart restrictions agree on Z_p× with the same involution for two distinct lines.

**Sources.** DLB17, Proposition 8.4 and Theorem 8.5, pp. 369–370: Gives Weyl stability and line independence, with the Robba-Γ generation correction required in the proof.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G4, PadicLocalLanglandsForGL2QpPartII/G5.

**Atlas planet:** Unfiltered Colmez sheaf.


### common-image — A common embedded analytic quotient

**Target (theorem).** Write B_V=(Π(V)^an/π)′_b. Its canonical embedding into D_rig(V)⊠P¹ has image in tN_rig(π)⊠P¹, and under the line identifications these images are equal for all V in the fixed π-family. At an admissible fixed radius the image lies in the corresponding tN lattice. Restriction to Z_p identifies its diag(p,1)-fixed part with tN_rig(π)^{ψ=1}; restriction of this same fixed part to Z_p× has image (1−φ)tN_rig(π)^{ψ=1}.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality`, `PadicLocalLanglandsForGL2QpPartII:GR.1/nontrianguline-differential-control`, `PhiGammaModulesAndIwasawaCohomology:PG.4/psi-one-to-zero`.

**Construction/proof.**

1. Use annihilation of π and the differential residue pairing to prove the fixed-radius inclusion (Proposition 8.2).

2. Prove the invariant description by gluing; injectivity of Res_Zp requires the Weyl chart and D_rig^{φ=1}=0, not the displayed restriction relation alone (E22).

3. Compare two stable integral lattices: p^n-rescaled pairings tend to zero, then a dense Lie-generated subspace and the residue annihilator force equality of the two closed images (Theorem 8.6).

**Check.** Equality is equality of embedded subspaces with compatible topologies, stronger than an abstract isomorphism of quotients.

**Sources.** DLB17, Proposition 8.2, Theorem 8.3 and Theorem 8.6, pp. 368–372: Proves the invariant description and equality of the dual images.

**Atlas planet:** Filtration-independent analytic quotient.


### pi-zero — The common representation Π(π,0)

**Target (definition).** Define E_π to be the common closed image in GR.2/common-image, with its transported nuclear Fréchet topology, and Π(π,0)=E_π′_b. Thus Π(π,0)≅Π(V)^an/π for every line. The construction includes these isomorphisms, their scalar ambiguity, and compatibility of restriction to either chart. It does not select one line as part of the invariant.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/compact-type-duality`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1/admissible-anti-equivalence`.

**Construction/proof.**

1. Choose any member of the nonempty period-line family to transport the topology to the common image.

2. Use equality of embedded images and strictness of the imported analytic duality to prove independence of the choice.

**Consumers.** GR.2/closed-unipotent: Defines the intrinsic coordinate operator on E_π. GR.3/analytic-realisation: Identifies E_π with the isotypic functions.

**Planning API.**

- `PiZero.dualImage` (characterisation): Π(π,0)′_b is the common embedded image E_π.

- `PiZero.compare` (equivalence): Π(V)^an/π≅Π(π,0), compatibly with dual inclusions, unique after choosing the scalar comparison.

- `PiZero.restrict` (projection): Chart restrictions E_π→tN_rig(π) are the restrictions of the ambient sheaf.

- `PiZero.topology` (compatibility): E_π has the nuclear Fréchet topology transported from every analytic quotient dual, rather than an arbitrary algebraic subspace topology.

**Unit tests a wrong definition must fail.**

- `PiZero.lineChange` (compatibility): Two distinct period lines give the same E_π although their full Π(V)^an need not be isomorphic.

- `PiZero.smoothRemoved` (characterisation): The quotient map Π(V)^an→Π(π,0) kills exactly the smooth π.

- `PiZero.fixedVectors` (computation): Its dual diag(p,1)-fixed vectors restrict bijectively to tN_rig(π)^{ψ=1}, with units restriction (1−φ).

**Check.** Both the representation and its topology are independent of the chosen completion; no particular filtration line survives.

**Sources.** DLB17, Definition 8.7, p. 372: Defines the common analytic quotient.

**Atlas planet:** Π(π,0).


### closed-unipotent — Closedness of u⁺ and the coordinate operator

**Target (construction).** The map u⁺ is injective with closed image on (Π(V)^an)′_b and on E_π. On Π(π,0), ker u⁺ is killed by a⁺−1; dualizing yields a⁺−1:E_π→u⁺E_π. Consequently there is a unique continuous L-linear ∂_π:E_π→E_π with a⁺−1=u⁺∂_π. Here ∂_π is distinct from multiplication by t⁻¹∇ on the ambient differential equation, though compatible with the source formulas.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/pi-zero`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1/admissible-abelian-category`.

**Construction/proof.**

1. Use Frommer’s fixed-radius distribution argument for the closed image of u⁺ (G6), then pass to the quotient dual.

2. Identify the annihilator of the image through the smooth-vector criterion; apply the open mapping theorem on the closed Fréchet image.

**Consumers.** GR.2/homography: Makes the coordinate transform by homographies. GR.2/holomorphic-action: Determines the rational resolvents and hence the continuous holomorphic action.

**Planning API.**

- `CoordinateOperator.factor` (characterisation): a⁺−1=u⁺∘∂_π on E_π.

- `CoordinateOperator.continuous` (structure): ∂_π is a continuous L-linear operator for the transported nuclear Fréchet topology.

- `CoordinateOperator.unique` (universal-property): Any continuous operator satisfying the factorization equals ∂_π, by injectivity of u⁺.

- `CoordinateOperator.commutator` (relation): ∂_πu⁺−u⁺∂_π=id, with the two orders distinguished.

**Unit tests a wrong definition must fail.**

- `CoordinateOperator.functions` (compatibility): On the geometric function model the coordinate is multiplication by z; u⁺=−d/dz gives u⁺z=−z d/dz−1=a⁺−1.

- `CoordinateOperator.order` (non-example): a⁺=∂_πu⁺ and a⁺−1=u⁺∂_π differ by the identity, so reversing the factors fails.

- `CoordinateOperator.unique` (characterisation): If u⁺T=u⁺∂_π on every vector then T=∂_π; this uses the proved injection, not a chosen inverse on a complement.

**Check.** Closedness is proved before division by u⁺; mere algebraic injectivity would not imply continuity of ∂_π.

**Sources.** DLB17, Proposition 9.1, Corollary 9.3 and Theorem 9.4, pp. 373–375: Provides the closed-image argument and existence of the intrinsic operator.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G6.

**Atlas planet:** Coordinate operator on Π(π,0).


### homography — Homographic covariance of the coordinate operator

**Target (theorem).** On E_π, ∂_πu⁺−u⁺∂_π=1, a⁺=∂_πu⁺ and u⁻=−∂_π²u⁺. For g=(a b;c d)∈G, a−c∂_π is a continuous automorphism and g∂_πg⁻¹=(d∂_π−b)(a−c∂_π)⁻¹; also gu⁺g⁻¹=(det g)⁻¹(a−c∂_π)²u⁺. Both inverse identities are part of the target.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-model`.

**Construction/proof.**

1. Use the Lie commutators and density of the quotient to prove the operator relations (Proposition 9.6).

2. Prove g∂g⁻¹(a−c∂)=d∂−b by the Bruhat generators. Apply it also to g⁻¹ to obtain the right inverse as well as the left inverse, correcting the omitted step E27.

**Check.** For w=(0 1;1 0), w∂_πw=∂_π⁻¹; for a unipotent upper translation the coordinate transforms as z↦z−b. With inverse-pullback left actions on O(Ω), u⁺f=−f′, a⁺f=−zf′, a⁻f=zf′, u⁻f=z²f′ (DLB Lemma 3.5, p. 342); all operator identifications must pass this sign check.

**Sources.** DLB17, Proposition 9.6, Lemma 9.8 and Theorem 9.7, pp. 375–377: Gives the Lie and group covariance formulas.

**Atlas planet:** Homographic covariance.


### resolvent-analyticity — Locally analytic resolvent coefficients

**Target (theorem).** For ℓ∈E_π and v∈Π(π,0), x↦⟨(∂_π−x)⁻¹ℓ,v⟩ on Q_p extends to a locally analytic function on P¹(Q_p) vanishing at ∞. The map into this locally analytic space is continuous at each fixed dual vector with the appropriate radius enlargement. Covariance is the one induced by the homography formula, including its scalar factor.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/homography`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/compact-type-duality`, `LocallyAnalyticDistributions:L0`.

**Construction/proof.**

1. Use the compact-type analytic-radius presentation of Π(π,0) and continuity of ∂ to move from a radius h to a sufficiently large h′.

2. Obtain a uniformly convergent resolvent expansion on each rational ball and use the Weyl relation near infinity. Do not assume ∂ preserves a single radius (G6).

**Check.** A single vector admits a uniform radius on the compact P¹ boundary; no uniform radius for all vectors is asserted.

**Sources.** DLB17, Lemma 9.11 and Proposition 9.10, pp. 377–378: Proves analyticity using the analytic-radius filtration.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G6.


### holomorphic-action — Continuous holomorphic functional calculus

**Target (construction).** Let S be the dense L-span in O(Ω) of (z−x)⁻¹, x∈Q_p. Set T_{Σ a_x/(z−x)}ℓ=Σ a_x(∂_π−x)⁻¹ℓ. Morita duality between O(Ω) and the analytic Steinberg realizes these coefficients as boundary distributions (Σ a_xδ_x−(Σ a_x)δ_∞). Extend by continuity in f to T_f for every f∈O(Ω). This is a unital O(Ω)-module structure on E_π with T_z=∂_π, compatible with G and the Fréchet topology. It is unique among structures for which f↦T_fℓ is continuous for each ℓ.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/resolvent-analyticity`, `PadicLocalLanglandsForGL2QpPartII:GR.2/homography`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/compact-type-duality`.

**Construction/proof.**

1. Use the Morita duality input G7 to pair f with the locally analytic resolvent coefficient.

2. Prove convergence for f_j→0 by the precise bornological/uniform boundedness argument for the nuclear Fréchet and compact-type spaces, rather than a blanket weak-sequence criterion (G6).

3. Prove T_fT_h=T_fh from the resolvent identity and density; recover constants and z.

4. For uniqueness, determine the action on rational resolvents from T_z and invertibility, then use continuity and density of S.

**Consumers.** GR.3/surjectivity: Makes every G-equivariant comparison O(Ω)-linear, allowing the coherent-bundle argument. GR.3/pi-two: Defines the differential twist with its automorphy factor.

**Planning API.**

- `HolomorphicAction.resolvent` (simp): T_{1/(z−x)}=(∂_π−x)⁻¹ for x∈Q_p.

- `HolomorphicAction.coordinate` (simp): T_z=∂_π and T_1=id.

- `HolomorphicAction.multiplicative` (relation): T_{fh}=T_f∘T_h and T_{f+h}=T_f+T_h.

- `HolomorphicAction.continuousOrbit` (structure): For each ℓ, f↦T_fℓ is continuous for the Fréchet topology of O(Ω).

- `HolomorphicAction.covariant` (compatibility): g(T_fℓ)=T_{g·f}(gℓ) with inverse-pullback action on functions.

- `HolomorphicAction.unique` (universal-property): A continuous module structure with coordinate ∂_π agrees with T on resolvents, then on every f by density.

**Unit tests a wrong definition must fail.**

- `HolomorphicAction.constant` (computation): T_cℓ=cℓ for c∈L.

- `HolomorphicAction.resolventIdentity` (computation): For x≠y, T_{1/(z−x)}−T_{1/(z−y)}=(x−y)T_{1/(z−x)(z−y)}.

- `HolomorphicAction.weyl` (compatibility): Covariance for w sends the coordinate operator to ∂_π⁻¹.

- `HolomorphicAction.continuity` (non-example): An algebraic action specified only on the polynomial coordinate is insufficient unless its orbit maps extend continuously from the dense rational subspace.

**Check.** Uniqueness without the continuity requirement is not claimed; no algebraic density argument substitutes for topological continuity.

**Sources.** DLB17, Definition 9.13, Propositions 9.12, 9.14–9.15 and Theorem 9.9, pp. 376, 378–381: Constructs the rational action and extends it through Morita duality.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G6, PadicLocalLanglandsForGL2QpPartII/G7.


### automatic-linearity — Automatic O(Ω)-linearity

**Target (theorem).** Every continuous G-equivariant map E_π→O(Σ_r)^ρ is O(Ω)-linear for the constructed action and pullback of holomorphic functions. Every continuous G-equivariant endomorphism of E_π commutes with this action.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action`, `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent`.

**Construction/proof.**

1. Differentiate equivariance to commute with u⁺ and a⁺, hence with ∂ by injectivity of u⁺.

2. Commute with every rational resolvent, and use continuity in f and density to obtain all of O(Ω).

**Check.** Commutation with the coordinate is accompanied by continuity, so the rational-to-holomorphic extension is justified.

**Sources.** DLB17, Proposition 9.16, p. 381: Proves automatic holomorphic linearity.


### pi-zero-irreducible — Topological irreducibility of the common quotient

**Target (theorem).** For the fixed supercuspidal weight-one π-family, Π(π,0) is topologically irreducible as a locally analytic G-representation. Equivalently its strong dual E_π has no nonzero proper closed G-stable submodule.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/pi-zero`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1/admissible-anti-equivalence`.

**Construction/proof.**

1. Apply Colmez’s irreducibility result in the precise form announced following Definition 8.7. The source cites a separate argument without providing its proof; obtaining a complete proof with this topology is part of G5.

2. Transport the result through the strict compact-type/Fréchet anti-equivalence.

**Check.** The G-irreducibility assertion is stronger than the semilinear O(Ω)[G]-irreducibility used in GR.3.

**Sources.** DLB17, After Definition 8.7, p. 372: Reports topological irreducibility due to Colmez, separately from the geometric semilinear irreducibility argument.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G5.


## GR.3: The filtered geometric realisation

Build a nonzero comparison using quaternionic globalization and local–global compatibility, prove surjectivity by the equivariant-bundle and finite-projective argument, construct Π(π,2), determine its two-copy smooth kernel and each filtration-line preimage, and prove injectivity with fixed-radius divisibility. Deduce the functions and de Rham Breuil–Strauch isomorphisms, unique up to a common scalar.

**Layer inputs:** `CompletedCohomologyAndLocalGlobalCompatibility:R31.4`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a`, `GL2AutomorphicRepresentationsAndTransfer:R17.3`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1`, `PadicLocalLanglandsForGL2Qp:R30.2`, `PadicLocalLanglandsForGL2Qp:R30.3`, `PadicLocalLanglandsForGL2QpPartII:GR.0`, `PadicLocalLanglandsForGL2QpPartII:GR.1`, `PadicLocalLanglandsForGL2QpPartII:GR.2`, `SmoothRepresentationsOfLocalGroups:SR.0`, `SmoothRepresentationsOfLocalGroups:SR.2`.


### nonzero-comparison — Existence of the geometric comparison map

**Target (theorem).** For the fixed trivial-central-character supercuspidal π and sufficiently high DLB level r, there exists a nonzero continuous G-map Φ:E_π→O(Σ_r)^ρ, ρ=JL(π). Its construction uses a weight-two quaternionic automorphic realization with residual local representation absolutely irreducible, together with uniformization and local–global compatibility.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/pi-zero`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.4/definite-quaternionic-local-global-compatibility`, `PadicLocalLanglandsForGL2Qp:R30.2/modp-irreducibles`, `GL2AutomorphicRepresentationsAndTransfer:R17.3`, `PadicLocalLanglandsForGL2Qp:R30.3/montreal-functor`.

**Construction/proof.**

1. Obtain a weight-two quaternionic eigenform whose p-component is π up to unramified twist and whose residual local representation is absolutely irreducible (G8). Remove the twist by the finite-order global character construction; do not discard it.

2. Apply imported local–global compatibility and the uniformization pairing G7 to obtain (Π^an)′_b→Ω¹(Σ_r)^ρ.

3. Restriction to the quotient dual is nonzero: otherwise a smooth π′_b would inject into the differentials, contradicting the u⁺ action. The induced map to H¹_dR vanishes by smoothness, so it factors through exact forms and hence O(Σ_r)^ρ.

**Check.** Both nonzeroness and removal of the unramified twist are checked before using the map.

**Sources.** DLB17, Theorem 5.1, Theorem 5.5, Theorem 5.7 and §5.3, pp. 349–355; Theorem 8.8, p. 372: Builds the nonzero map via quaternionic automorphic forms and uniformization.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G8.


### surjectivity — Surjectivity and local freeness of the comparison

**Target (theorem).** Every nonzero continuous G-map Φ:E_π→O(Σ_r)^ρ is surjective. The target is a finite projective O(Ω)-module of rank dim_Lρ, topologically irreducible as a semilinear O(Ω)[G]-module. Its continuous G-endomorphisms are scalars. The proof only establishes D(G)-coadmissibility for this fixed supercuspidal isotypic sector.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/nonzero-comparison`, `PadicLocalLanglandsForGL2QpPartII:GR.2/automatic-linearity`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1/admissible-abelian-category`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/period-morphisms`.

**Construction/proof.**

1. The closure of the image is a coherent G-equivariant subbundle over Ω. Apply the Kohlhaase bundle equivalence from G7: the target corresponds to ρ∨⊗O(P¹), and the smoothness of ρ forces a nonzero equivariant subbundle to be the whole bundle (Propositions 10.3–10.8).

2. Pass from density to surjectivity using the finite-projective Stein module argument of Proposition 10.11; this is a specific theorem, not the assertion that every dense Fréchet map is surjective.

3. Use source coadmissibility and the exact topology of the maps; prove scalar endomorphisms by the same bundle equivalence.

**Check.** The irreducibility assertion is O(Ω)-semilinear irreducibility, not topological irreducibility of the G-representation alone.

**Sources.** DLB17, Theorem 10.1, Theorem 10.5 and Propositions 10.8, 10.10–10.11, pp. 381–387: Proves density, its upgrade to surjectivity, and the scalar-endomorphism calculation.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G7.

**Atlas planet:** Surjectivity of the Drinfeld comparison.


### pi-two — The differential twist Π(π,2)

**Target (construction).** Set E_π(2)=E_π dz as an O(Ω)-module, with g·(ℓdz)=(det g)(a−c∂_π)⁻²(gℓ)dz for g=(a b;c d). Define Π(π,2)=E_π(2)′_b. The map d:E_π→E_π(2), dℓ=−u⁺ℓ dz, is continuous, G-equivariant, injective and has closed image. The coordinate dz is the common trivialization of differentials on the cover.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action`, `PadicLocalLanglandsForGL2QpPartII:GR.2/homography`, `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent`.

**Construction/proof.**

1. Twist by the differential automorphy factor and verify the cocycle through homographic covariance.

2. Use the u⁺ conjugation formula to prove equivariance of d; invoke closedness and injectivity already proved.

**Consumers.** GR.3/smooth-kernel: Its smooth kernel is the source of the de Rham multiplicity. GR.3/filtration-position: Contains the varying analytic duals inside one differential module.

**Planning API.**

- `PiTwo.action` (simp): g·(ℓdz)=det(g)(a−c∂_π)⁻²(gℓ)dz.

- `PiTwo.differential` (data): dℓ=−u⁺ℓ dz defines the equivariant closed injection E_π→E_π(2).

- `PiTwo.dual` (compatibility): Π(π,2) is the strong compact-type dual, and the transpose of d is the associated quotient map.

- `PiTwo.linearity` (structure): E_π(2) is an O(Ω)-module with the same coefficient action as E_π.

**Unit tests a wrong definition must fail.**

- `PiTwo.scalarMatrix` (computation): For g=aI₂ the factor det(g)(a−0∂)⁻² is 1, so the trivial central character is retained.

- `PiTwo.unipotent` (computation): For g=(1 b;0 1), the differential factor is 1.

- `PiTwo.weyl` (compatibility): For w=(0 1;1 0), the factor is −∂_π⁻² and d remains equivariant.

**Check.** The determinant occurs in the numerator and the homography denominator is squared; omitting either changes the central/Lie action.

**Sources.** DLB17, §11.1, formula (10) and Proposition 11.1, pp. 388–389: Defines the differential twist and its closed differential.

**Atlas planet:** Π(π,2).


### kirillov-independence — The line-independent quotient Kirillov embedding

**Target (theorem).** Localization and the identifications N_rig(V)≅N_rig(π) induce the P-equivariant embedding of the u⁺-kernel of Π(V)^an/π into LP(Q_p×,t⁻¹N_dif,∞⁺/N_dif,∞⁺)^Γ. The embeddings for different V agree up to their comparison scalar. This target carries a Tate-twisted coefficient action; it is not identified with locally constant L_∞-valued functions until the Π(π,2) twist is included. In the twisted representation, the resulting model takes values in the untwisted locally constant coefficient module.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/pi-two`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-model`, `PadicLocalLanglandsForGL2QpPartII:GR.1/residue-pairing`, `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image`.

**Construction/proof.**

1. Construct α_dif and the two-chart α_{P¹} from the N_rig comparison, then the quotient map ξ and the localization expansion ι.

2. Compare the pairings on compact-shell functions by Lemma 11.4 and use their nondegeneracy (Lemma 11.5) to prove independence.

3. Check the Tate twist explicitly before converting LP to the locally constant coefficient description.

**Check.** The construction is independent of V as an embedded P-module after the scalar is fixed, not merely as an abstract vector space.

**Sources.** DLB17, Proposition 11.2, Theorem 11.3 and Lemmas 11.4–11.5, pp. 389–392: Proves the canonical Kirillov embedding and its independence.


### smooth-kernel — The two-copy smooth kernel

**Target (theorem).** There is an isomorphism Π(π,2)^{u⁺=0}≅π⊗_L M_dR(π), P-equivariant and then G-equivariant; in particular the u⁺-kernel is smooth and consists of exactly two copies of π. The full representation Π(π,2) is locally analytic. Under the twisted embedding the maps from two distinct filtration lines span the two-dimensional multiplicity factor.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/kirillov-independence`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality`, `SmoothRepresentationsOfLocalGroups:SR.0`, `SmoothRepresentationsOfLocalGroups:SR.2`.

**Construction/proof.**

1. Prove separate local analyticity of orbit maps in the differential twist, then the Lie formulas (Lemma 11.8).

2. Use the two distinct line embeddings to obtain at least two copies and the Kirillov model to bound the multiplicity by dim M_dR=2.

3. Invoke projectivity of supercuspidals in the fixed-central-character smooth category over L, not just over C; this coefficient/descent extension is requested in G9.

**Check.** One chosen line gives only one smooth copy; a second distinct line is necessary to prove the full kernel calculation.

**Sources.** DLB17, Proposition 11.6, Theorem 11.7 and Lemma 11.8, pp. 392–394: Identifies the two-copy smooth kernel.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G9.

**Atlas planet:** Two-copy smooth kernel.


### filtration-position — Position of each analytic dual in the differential twist

**Target (theorem).** For every line ℒ⊂M_dR(π), the embedding (Π_ℒ^an)′_b→E_π(2) induced by −u⁺ contains dE_π. Under E_π(2)/dE_π≅π′_b⊗M_dR(π)∨, its image is exactly the preimage of π′_b⊗ℒ^⊥. Thus 0→E_π→(Π_ℒ^an)′_b→π′_b→0 identifies the extension specified by ℒ. The coefficient line in the right term is retained canonically before choosing a generator.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/smooth-kernel`, `PadicLocalLanglandsForGL2QpPartII:GR.3/pi-two`, `PadicLocalLanglandsForGL2QpPartII:GR.1/unfiltered-nrig`.

**Construction/proof.**

1. Use tN_rig⊂D_rig(V) and the differential twist to construct the embedding (Proposition 11.6).

2. Dualize the kernel calculation and compute the annihilator of the local filtration line through the residue pairing.

**Check.** For ℒ≠ℒ′, the two preimages intersect in dE_π and span E_π(2).

**Sources.** DLB17, Proposition 11.6 and Corollary 11.9, pp. 392, 394–395: Locates each analytic dual by its annihilator line.


### injectivity — Injectivity by fixed-radius divisibility

**Target (theorem).** Every nonzero Φ:E_π→O(Σ_r)^ρ is injective. In particular, ∩_{j≥0}(u⁺)^jE_π=0. This intersection is proved using one fixed admissible radius for the Robba restrictions; it is not deduced from ∩_jt^j over the unrestricted Robba ring.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/surjectivity`, `PadicLocalLanglandsForGL2QpPartII:GR.3/filtration-position`, `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image`.

**Construction/proof.**

1. Compare the cokernel of d with the known geometric de Rham quotient π′_b⊕π′_b from the geometry input G7.

2. The kernel of Φ is infinitely u⁺-divisible by the snake diagram.

3. At a fixed admissible annulus, restrict a divisible element to the tN lattice; divisibility by every power of t forces zero at the cyclotomic zeros. Repeat in the Weyl chart to kill the original section.

**Check.** The unrestricted Robba ring can invert t after shrinking; a proof that changes the annulus at every power fails this target.

**Sources.** DLB17, Proposition 11.10 and Remark 11.11, pp. 395–396: Proves injectivity; the radius must stay fixed throughout the divisibility argument.

**Atlas planet:** Injectivity of the Drinfeld comparison.


### analytic-realisation — Analytic realization in functions on the cover

**Target (theorem).** For π as above, ρ=JL(π) and sufficiently high level r, O(Σ_r)^ρ≅E_π as topological G-representations, uniquely up to L×. Equivalently (O(Σ_r)^ρ)′_b≅Π(V)^an/π for every V in the period-line family. The O(Ω)-module O(Σ_r)^ρ is locally free of rank dim_Lρ. This is the concrete refinement supplied to the parent analytic-quotient and Breuil–Strauch targets, not a second construction of Π(V).

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/injectivity`, `PadicLocalLanglandsForGL2QpPartII:GR.3/surjectivity`, `PadicLocalLanglandsForGL2QpPartII:GR.2/pi-zero`, `PadicLocalLanglandsForGL2QpPartII:GR.2/automatic-linearity`.

**Construction/proof.**

1. Combine the nonzero comparison, surjectivity and injectivity; use the open mapping theorem for the Fréchet isomorphism.

2. Use scalar endomorphisms to obtain uniqueness, and import the finite-étale pushforward rank from the geometric cover.

**Check.** An isomorphism for one period line simultaneously gives the same analytic quotient for every line.

**Sources.** DLB17, Theorem 1.2, p. 324; proof §11.3, pp. 395–396: Identifies the analytic quotient with the strong dual of isotypic functions.

**Atlas planet:** Analytic Drinfeld realization.


### de-rham-realisation — The filtered Breuil–Strauch realization

**Target (theorem).** For the same r and ρ, there is an isomorphism H¹_dR(Σ_r)^ρ≅π′_b⊗_L M_dR(π)∨, canonical up to the common scalar, such that the preimage of π′_b⊗ℒ^⊥ under Ω¹(Σ_r)^ρ→H¹_dR(Σ_r)^ρ is (Π_ℒ^an)′_b. The de Rham row is strict exact and identifies the inclusion of O(Σ_r)^ρ with d. In the CDN convention the normalization adapter converts this to the row with M_dR and the line ℒ; no unchosen self-duality is used.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/analytic-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.3/filtration-position`, `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`.

**Construction/proof.**

1. Transport the differential twist by the analytic comparison, so its underlying O(Ω)-module is Ω¹(Σ_r)^ρ.

2. Use the two-copy kernel and filtration-position theorem to compute the cokernel and every line preimage.

3. Compare the resulting scalar with the geometric de Rham identification through G1; this comparison is required by the period-diagram consumers.

**Check.** Two distinct lines give different preimages with intersection dO(Σ_r)^ρ; their quotient lines recover the original filtrations.

**Sources.** DLB17, Theorem 1.4, pp. 326–327; proof pp. 395–396: Describes de Rham cohomology and the position of every analytic representation.

**Atlas planet:** Breuil–Strauch realization.


## GR.4: Individual geometric multiplicities

Apply continuous Galois Hom to the strict geometric fundamental diagram with its exactness justification. Classify period multiplicities, form the normalized line extension, characterize étale cohomology as bounded vectors of pro-étale cohomology, and prove finite-length occurrence using the partial-operator extension lemma. Compare Steinberg topologies and compute both Galois and Banach multiplicities, including characters and higher-dimensional vanishing.

**Layer inputs:** `EndoscopicTransferAndUnitaryTraceComparison:ET.6a`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.2`, `PadicHodgeTheory:R06.2`, `PadicHodgeTheory:R06.3`, `PadicLocalLanglandsForGL2Qp:R30.2`, `PadicLocalLanglandsForGL2Qp:R30.3`, `PadicLocalLanglandsForGL2Qp:R30.4`, `PadicLocalLanglandsForGL2QpPartII:GR.0`, `PadicLocalLanglandsForGL2QpPartII:GR.3`, `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5`, `SmoothRepresentationsOfLocalGroups:SR.2`.


### partial-operator-extension — Extension of a partial operator with prescribed spectrum

**Target (theorem).** Let E be a finite-dimensional L-vector space of dimension d, S⊂E a subspace, and A:S→_L E linear. Suppose that the only T⊂S with A(T)⊂T is T=0. For any d pairwise distinct scalars λ₁,…,λ_d∈L there is an endomorphism B:E→_L E extending A and an eigenbasis e₁,…,e_d with Be_i=λ_i e_i. This is the precise linear algebra input in the occurrence proof.

**Hypotheses.** The invariant-subspace hypothesis is essential; no algebraic closure of L is assumed.

**Direct prerequisites:** `mathlib:Submodule`, `mathlib:LinearMap`, `mathlib:Module.finrank`, `mathlib:Module.Basis`.

**Construction/proof.**

1. Induct on dimension using a maximal A-chain inside S, whose iterates up to the first exit are linearly independent.

2. Complete the companion block with the coefficients of ∏(X−λ_i), with alternating signs. Prove the invariant-free complementary partial-operator step before applying induction (G11).

3. The distinct prescribed roots then diagonalize the extension.

**Check.** For S=0 any diagonal operator with the prescribed eigenbasis works. For d=2 and Ae₁=e₂ the companion column is −λ₁λ₂e₁+(λ₁+λ₂)e₂.

**Sources.** CDN20, Lemma 2.18 and its proof, author pp. 29–30 (published p. 335): Provides the partial-operator extension statement; the author-copy companion coefficients need alternating signs.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G11.


### period-multiplicity-spaces — Period multiplicity spaces H_M and H_C

**Target (definition).** For finite F/Q_p and a finite-dimensional continuous L-representation V of G_F, define H_M(V)=Hom_{L[G_F]}(V,X_st⁺(M)) and H_C(V)=Hom_{L[G_F]}(V,L⊗_{Q_p}C), with M supercuspidal of slope 1/2. The θ-map induces an injection ι:H_M(V)→M_dR⊗_{L⊗F}H_C(V). H_M(V) is finite-dimensional over L and H_C(V) finite over L⊗F. Use the coefficient product L⊗_{Q_p}F, not an identification with L when F≠Q_p.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter`, `PadicHodgeTheory:R06.2/plan/period-functors`, `PadicHodgeTheory:R06.3/plan/potentially-semistable-dieudonne-module`.

**Construction/proof.**

1. Take continuous equivariant Hom into the imported period modules.

2. The positive slope implies (B_cris⁺⊗M)^{φ=1}=0, so the θ-map on X_st⁺ is injective; pass to Hom and the de Rham comparison.

**Consumers.** GR.4/hom-fundamental-diagram: Provides the three multiplicity factors in the exact diagram. GR.4/finite-dimensional-multiplicity: Turns absence of period-line quotients into a transversality condition.

**Planning API.**

- `PeriodMultiplicity.hm` (data): H_M(V) is continuous G_F-equivariant Hom into X_st⁺(M).

- `PeriodMultiplicity.hc` (compatibility): H_C(V)=(C⊗_{Q_p}V∨)^{G_F}, with its L⊗F module structure.

- `PeriodMultiplicity.theta` (projection): ι is induced by θ and is injective for positive slope.

- `PeriodMultiplicity.contramap` (functoriality): A Galois map V→W induces H_M(W)→H_M(V) and H_C(W)→H_C(V), commuting with ι.

**Unit tests a wrong definition must fail.**

- `PeriodMultiplicity.zero` (degenerate): Both multiplicity spaces vanish at V=0.

- `PeriodMultiplicity.trivialHC` (computation): For V=L trivial, H_C(L)=L⊗F.

- `PeriodMultiplicity.line` (computation): For F=Q_p and V=V_{M,ℒ}, H_M(V) is one-dimensional and its θ-image is the prescribed line in M_dR⊗H_C(V).

- `PeriodMultiplicity.positiveSlope` (non-example): Injectivity of θ is not inferred for a slope-zero period module, where φ=1 invariants can survive.

**Check.** The codomain of ι has its L⊗F structure; a scalar-extension decomposition must respect each embedding of F.

**Sources.** CDN20, §2.1.2 and Remark 2.3, author p. 21 (published p. 328): Defines the multiplicity spaces and the injection.


### hom-fundamental-diagram — The fundamental diagram after taking Galois multiplicities

**Target (theorem).** For the preceding M,V, taking Hom_{G_F}(V,−) in the strict geometric fundamental diagram gives the commutative diagram with exact rows 0→H_C(V)⊗_{L⊗F}O[M]→Hom_{G_F}(V,H¹_proét[M])→H_M(V)⊗_L LL(M)′_b→0 and 0→H_C(V)⊗_{L⊗F}O[M]→H_C(V)⊗_{L⊗F}Ω¹[M]→H_C(V)⊗_{L⊗F}M_dR⊗_L LL(M)′_b→0. Vertical arrows are id, dlog and ι⊗id, injective with closed image. Completed tensor products are used for infinite-dimensional Fréchet factors.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity-spaces`, `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`, `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/completed-external-tensor`.

**Construction/proof.**

1. Import the geometric fundamental diagram, Kummer map, strictness and affinoid inverse-limit topology as the precise geometry contract G7.

2. Before asserting surjectivity after Hom, prove that H¹(G_F,C⊗̂O[M]⊗V∨)→H¹(G_F,C⊗̂Ω¹[M]⊗V∨) is injective. This is the exactness argument of Proposition 2.4, not exactness of Hom as a general rule.

3. Use the finite-dimensional H_C(V) factor and the continuous tensor-Hom statements requested in G10 to identify the terms.

**Check.** The left square is the identity on H_C(V)⊗O[M]; dlog has a closed image, not just an abstract injection.

**Sources.** CDN20, Corollary 2.1 and Proposition 2.4, author pp. 20–22 (published pp. 327–328): Supplies the strict diagram and the cohomological argument needed to take Hom.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G7, PadicLocalLanglandsForGL2QpPartII/G10.

**Atlas planet:** Period multiplicity diagram.


### period-multiplicity — Classification of rank-two period multiplicities

**Target (theorem).** For F=Q_p and supercuspidal rank-two M, if V is absolutely irreducible of dimension two then dim_L H_M(V)≤1; it is nonzero exactly when V≅V_{M,ℒ} for a unique line ℒ⊂M_dR (in the geometric normalization). More generally Hom_{G_F}(V,X_st(M))≅Hom_WD(M[−1]∨,D_pst(V∨)), and when dim V=rank M its nonzero value is one-dimensional and forces D_pst(V)≅M[−1]. The converse with weights exactly {0,1} is a Q_p assertion; the general-F embeddingwise weight alternatives are retained.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity-spaces`, `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter`, `PadicHodgeTheory:R06.3/plan/fontaine-weil-deligne-functor`.

**Construction/proof.**

1. Use semistable descent and φ=p to rewrite the Hom as WD morphisms with M[−1]∨.

2. Irreducibility forces the equal-rank map to be an isomorphism; Schur gives dimension one.

3. For X_st⁺ use positivity and the filtered kernel condition, and specialize the embeddingwise Hodge constraints to F=Q_p to recover the line.

**Check.** A character cannot occur in X_st⁺ of a supercuspidal M.

**Sources.** CDN20, Proposition 2.5, Remark 2.6 and Lemma 2.7, author pp. 22–23 (published pp. 329–330): Identifies the allowed Galois factors and the Q_p restriction.

**Atlas planet:** Rank-two period classification.


### analytic-line-extension — The line extension W_{M,ℒ}

**Target (construction).** For F=Q_p, let W′_{M,ℒ} be the preimage of ℒ⊗_L LL(M)′_b under Ω¹[M]→M_dR⊗LL(M)′_b. Put W_{M,ℒ}=ℒ∨⊗_L W′_{M,ℒ}; its right-hand quotient is canonically LL(M)′_b by evaluation ℒ∨⊗ℒ→L. The normalized Breuil–Strauch comparison gives W_{M,ℒ}≅(Π(V_{M,ℒ})^an)′_b, and Hom_{G_Qp}(V_{M,ℒ},H¹_proét[M])≅W_{M,ℒ}. Over general F the source uses a further pullback along L→L⊗F; the Q_p object does not silently claim that general-F identification.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/hom-fundamental-diagram`, `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity`, `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`.

**Construction/proof.**

1. Take the line preimage in the strict de Rham row, then tensor with its dual line without choosing a basis.

2. Apply the normalized filtered Breuil–Strauch realization.

3. Apply the Hom diagram to V_{M,ℒ}; the one-dimensional period multiplicity and its θ-image recover the same pullback.

**Consumers.** GR.4/etale-bounded: Passes from analytic multiplicity to its bounded Banach dual. GR.4/banach-differential-multiplicity: Computes the only analytic preimage that can receive a given Banach dual.

**Planning API.**

- `AnalyticLineExtension.preimage` (characterisation): W′_{M,ℒ} is the full inverse image of ℒ⊗LL(M)′_b under the de Rham quotient.

- `AnalyticLineExtension.normalize` (data): W_{M,ℒ}=ℒ∨⊗W′_{M,ℒ}, with quotient evaluated to LL(M)′_b.

- `AnalyticLineExtension.analyticComparison` (equivalence): W_{M,ℒ}≅Π(V_{M,ℒ})^{an,′}_b, with the common normalization scalar fixed.

- `AnalyticLineExtension.proetaleComparison` (equivalence): Hom_Galois(V_{M,ℒ},H¹_proét[M])≅W_{M,ℒ}, respecting the G action and topology.

**Unit tests a wrong definition must fail.**

- `AnalyticLineExtension.rescale` (compatibility): Replacing a generator e of ℒ by ae rescales the dual generator by a⁻¹; the normalized quotient map is unchanged.

- `AnalyticLineExtension.intersection` (computation): For distinct lines, W′_{M,ℒ}∩W′_{M,ℒ′}=dO[M].

- `AnalyticLineExtension.notAllForms` (non-example): W′_{M,ℒ} is a proper inverse image in Ω¹[M], since M_dR/ℒ has dimension one and LL(M)≠0.

**Check.** Scaling a generator of ℒ does not change the normalized extension.

**Sources.** CDN20, §2.1.5 and Propositions 2.9–2.10, author pp. 23–24 (published pp. 330–331): Defines W′ and W and identifies the pro-étale multiplicity.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G1.

**Atlas planet:** Breuil–Strauch line extension.


### orbit-bounded — G-bounded vectors using von Neumann boundedness

**Target (definition).** For a continuous L-linear action ρ of G on a Hausdorff locally convex L-space E, call v G-bounded exactly when Bornology.IsVonNBounded L {ρ(g)v:g∈G}. For a Fréchet presentation by seminorms q_i this means ∀i ∃C_i ∀g, q_i(ρ(g)v)≤C_i. The constant may depend on i. The bounded vectors form a G-stable L-subspace; continuous linear equivariant maps carry them to bounded vectors.

**Direct prerequisites:** `mathlib:Representation`, `mathlib:Bornology.IsVonNBounded`, `mathlib:NormedSpace.isVonNBounded_iff'`.

**Construction/proof.**

1. Use Mathlib’s von Neumann bornology, rather than metric boundedness on a chosen Fréchet metric.

2. Apply absorption and locally convex seminorm criteria to sums, scalar multiples and linear images. The general locally convex equivalence is the precise functional-analysis request G10.

**Consumers.** GR.4/etale-bounded: Identifies the integral étale lattice inside pro-étale cohomology. GR.4/bounded-duals: Recovers Π′_b from the dual of its analytic vectors.

**Planning API.**

- `OrbitBounded.normCriterion` (compatibility): In a normed space over a nontrivially normed field, boundedness is equivalent to ∃C:ℝ ∀g, ‖ρ(g)v‖≤C.

- `OrbitBounded.seminormCriterion` (characterisation): In a locally convex Fréchet presentation, each continuous defining seminorm has its own finite orbit bound.

- `OrbitBounded.subspace` (structure): The bounded vectors form a G-stable L-submodule, including 0 and closed under addition and scalar multiplication.

- `OrbitBounded.map` (functoriality): A continuous equivariant L-linear map carries bounded vectors to bounded vectors, with identity and composition laws.

- `OrbitBounded.isometric` (example): For an isometric action on a normed space every vector is bounded.

**Unit tests a wrong definition must fail.**

- `OrbitBounded.trivial` (degenerate): Every vector of the trivial action is bounded, since its orbit is a singleton.

- `OrbitBounded.unitary` (compatibility): An action preserving a norm has orbit bound ‖v‖ for each v.

- `OrbitBounded.dilation` (non-example): For G=Z acting on Q_p by n·x=p^n x, a nonzero x is not G-bounded because n ranges through negative integers as well.

- `OrbitBounded.frechet` (non-example): Replacing ∀i∃C_i by ∃C∀i is invalid: even a single vector can have unbounded values under an arbitrarily rescaled family of defining seminorms.

**Check.** For normed spaces this specializes to an ordinary norm bound on the orbit.

**Sources.** CDN20, §2.2.1, author p. 25 (published p. 332): Defines boundedness seminorm by seminorm.; CDN23, §5.1.2, Lemma 5.3, p. 50: Uses G-bounded vectors to recover unitary completions.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G10.

**Atlas planet:** G-bounded vectors.


### etale-bounded — Étale cohomology is the bounded part of pro-étale cohomology

**Target (theorem).** At fixed Drinfeld level over C, H¹_ét(M_n,L(1))→H¹_proét(M_n,L(1)) is injective and has image exactly the G-bounded vectors. The same holds after taking a supercuspidal M-multiplicity. The pro-étale topology is the inverse limit of the affinoid Banach cohomology spaces with integral unit balls; rational étale cohomology is obtained by inverting p after the integral global limit, not before it.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/orbit-bounded`, `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/stein-mittag-leffler`.

**Construction/proof.**

1. Use the geometry contract G7 for Kummer symbols, affinoid Banach unit balls and the Stein inverse-limit description.

2. The integral global group has a G-stable bounded unit ball, giving one inclusion.

3. Choose a cocompact free subgroup of the tree action and finitely many representative affinoids. Boundedness on their translates gives one integral denominator for a suitable finite union; the Čech sequence patches it globally (Proposition 2.12). This requires the specific tree-cover input in G7.

**Check.** Independent seminorm bounds in the whole pro-étale space become a single integral denominator only after using the cocompact tree cover.

**Sources.** CDN20, Proposition 2.12, author pp. 25–27 (published pp. 331–333): Proves the bounded-vector characterization by integral affinoid cohomology and tree covers.; CDN23, Proposition 5.6, p. 51: Reuses the fixed-level comparison.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G7.

**Atlas planet:** Étale cohomology as bounded vectors.


### bounded-duals — Bounded duals and universal unitary completion

**Target (theorem).** If Π is unitary Banach then every vector of Π′_b is G-bounded. For smooth admissible finite-length π₀, (π₀′_b)^b≅(π̂₀)′_b, where π̂₀ is its universal unitary completion. For admissible finite-length unitary Banach Π, ((Π^an)′_b)^b=Π′_b. Consequently Hom_{G_Qp}(V_{M,ℒ},H¹_ét[M])≅Π(V_{M,ℒ})′_b.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/orbit-bounded`, `PadicLocalLanglandsForGL2QpPartII:GR.4/etale-bounded`, `PadicLocalLanglandsForGL2QpPartII:GR.4/analytic-line-extension`, `PadicLocalLanglandsForGL2Qp:R30.2/universal-unitary-completion`, `PadicLocalLanglandsForGL2Qp:R30.3/analytic-vectors-of-pi`.

**Construction/proof.**

1. Use the invariant Banach norm for the first assertion.

2. Describe a universal completion by the gauge of the O_L[G]-span of a finite set; bounded continuous functionals give precisely its dual.

3. Apply the parent universal completion theorem for analytic vectors, with the functional-analysis tensor compatibility of G10; take bounded vectors in the pro-étale multiplicity.

**Check.** The finite-length and admissibility hypotheses accompany the analytic-vector completion equality.

**Sources.** CDN23, Lemma 5.3, p. 50: States the three bounded-dual formulas.; CDN20, Corollary 2.13, author p. 27 (published p. 333): Applies them to the geometric multiplicity.


### finite-dimensional-multiplicity — Occurrence and finite length for arbitrary finite Galois representations

**Target (theorem).** For any finite-dimensional continuous L-representation V of G_Qp, Hom(V,H¹_ét[M]) is nonzero exactly when, after a finite coefficient extension if necessary, V has a quotient V_{M,ℒ}. Its strong dual Π_M(V) is an admissible finite-length unitary Banach representation, with all irreducible constituents among the Π(V_{M,ℒ}). No assertion of exactness of V↦Π_M(V) is included.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity`, `PadicLocalLanglandsForGL2QpPartII:GR.4/bounded-duals`, `PadicLocalLanglandsForGL2QpPartII:GR.4/hom-fundamental-diagram`, `PadicLocalLanglandsForGL2Qp:R30.2/admissible-unitary-banach`, `PadicLocalLanglandsForGL2QpPartII:GR.4/partial-operator-extension`.

**Construction/proof.**

1. If no allowed quotient occurs, the period multiplicity subspace in M_dR⊗H_C is transverse to every line. Write it as the graph of a partial linear operator A:S→H_C with no nonzero A-invariant subspace.

2. Use the linear-extension lemma with prescribed distinct eigenvalues (G11) to embed the pro-étale Hom into sums of analytic duals for arbitrarily chosen distinct lines. Taking bounded vectors gives sums of pairwise nonisomorphic simple Banach duals, forcing vanishing.

3. For a permitted quotient take the resulting left-exact Hom sequence and induct on dim V; use the abelian finite-length Banach category from the parent for the constituent statement.

**Check.** A non-split extension V with an allowed quotient is included; semisimplicity of V is not assumed.

**Sources.** CDN20, Theorem 2.15 and Lemmas 2.17–2.18, author pp. 27–30 (published pp. 333–335): Proves occurrence and finite length using a partial-operator extension argument.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G11.

**Atlas planet:** Finite-length geometric multiplicities.


### steinberg-comparison — Three Steinberg topologies and the special sector

**Target (construction).** For finite F/Q_p define St^sm, St^cont and St^an as C^sm(P¹(F),L)/L, C⁰(P¹(F),L)/L and C^{F-la}(P¹(F),L)/L, with inverse-pullback left action and quotient topologies from the imported function spaces. Their strong duals are the corresponding functionals of total mass zero. St^cont is the universal unitary completion of St^sm and of St^an in this setting. For M=Sp⊗η the tower’s M-sector is obtained from the half-plane by the twists η_G=η∘det and η_D=η∘Nrd, with η on Galois groups via the fixed reciprocity convention.

**Direct prerequisites:** `SmoothRepresentationsOfLocalGroups:SR.2`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0/locally-analytic-representation`, `PadicLocalLanglandsForGL2Qp:R30.2/universal-unitary-completion`, `PadicLocalLanglandsForGL2QpPartII:GR.0/level-types`.

**Construction/proof.**

1. Use the imported induction/function-space constructions, then quotient the closed constants.

2. Identify the dual by the annihilator of constants, and complete for the quotient sup norm.

3. Apply the half-plane cohomology computation from G7 and transport character twists through the three commuting actions.

**Consumers.** GR.4/galois-socle: Supplies the rank-one Galois branch. GR.6/special-family: Prevents a rank-two supercuspidal family from being used for a special type.

**Planning API.**

- `SteinbergComparison.quotient` (characterisation): Each Steinberg form is the specified function space modulo constants, with the quotient topology.

- `SteinbergComparison.dual` (equivalence): Its continuous dual is the annihilator of constants, equivalently mass-zero functionals.

- `SteinbergComparison.completion` (universal-property): The maps from St^sm and St^an to St^cont have the universal unitary-completion property.

- `SteinbergComparison.twist` (compatibility): Twisting by η commutes with the half-plane comparison using η_G and η_D with the reciprocity convention fixed.

**Unit tests a wrong definition must fail.**

- `SteinbergComparison.constants` (degenerate): A constant function represents zero in all three quotients.

- `SteinbergComparison.massZero` (computation): δ_x−δ_y has total mass zero and defines a nonzero dual element when x≠y; δ_x alone does not.

- `SteinbergComparison.topologies` (non-example): A continuous non-locally-analytic function defines a vector of St^cont that need not lie in the image of St^an.

- `SteinbergComparison.centralTwist` (compatibility): A scalar aI₂ acts on St^cont⊗η_G by η(a²), matching η_D(a)=η(a²) on the central D× action before dualizing.

**Check.** The same algebraic quotient written with three different source topologies gives different representation objects.

**Sources.** CDN20, §1.3, author pp. 15–16 (published pp. 323–324): Defines the three Steinberg forms and their duals.; CDN23, Theorem 5.1 and Remark 5.2, p. 50: Derives character multiplicities from special types and half-plane cohomology.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G7.


### banach-differential-multiplicity — Banach multiplicities in differentials

**Target (theorem).** Let Π be absolutely irreducible admissible unitary Banach over L. At fixed p-central level n, Hom_G(Π′_b,L⊗Ω¹(M⁽ᵖ⁾_{n,Q_p})) is ℒ⊗JL(M) if Π=Π_{M,ℒ} for a supercuspidal M of level≤n, is η_D if Π=St^cont⊗η_G of level≤n, and is zero otherwise. The line ℒ is part of the multiplicity, not an unspecified one-dimensional scalar space.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.4/analytic-line-extension`, `PadicLocalLanglandsForGL2QpPartII:GR.4/bounded-duals`, `PadicLocalLanglandsForGL2QpPartII:GR.4/steinberg-comparison`, `PadicLocalLanglandsForGL2Qp:R30.4/locally-algebraic-vectors`.

**Construction/proof.**

1. For supercuspidal M apply Hom to the line-preimage exact sequence, using injectivity of the parent correspondence and its classical compatibility.

2. Compare with a second distinct line to bound the Hom by one dimension and identify its image as ℒ.

3. For special M use the explicit half-plane computation and twist; the other Banach types give zero.

**Check.** Replacing ℒ by an abstract L loses the filtration information needed by the fundamental diagram.

**Sources.** CDN23, Proposition 5.7, pp. 51–52: Computes differential multiplicities using two filtration lines.


### banach-etale-multiplicity — Banach multiplicities in geometric étale cohomology

**Target (theorem).** Let Π be absolutely irreducible admissible unitary Banach over L, with n fixed and the p-central quotient understood. Then Hom_G(Π′_b,H¹_ét(M⁽ᵖ⁾_{n,C},L(1)))≅V_{M,ℒ}⊗JL(M) for Π=Π_{M,ℒ}, ≅η⊗η_D for Π=St^cont⊗η_G, and vanishes otherwise, with the same level conditions. The isomorphism is G_Qp×D×-equivariant and topological.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/banach-differential-multiplicity`, `PadicLocalLanglandsForGL2QpPartII:GR.4/etale-bounded`, `PadicLocalLanglandsForGL2QpPartII:GR.4/bounded-duals`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.2/admissible-banach-analytic-vectors`.

**Construction/proof.**

1. Use the completed tensor-Hom and invariant compatibility in G10 to apply Hom_G to the fundamental diagram with closed vertical maps.

2. The differential multiplicity identifies the period kernel as V_{M,ℒ}; the special branch is the character η.

3. Prove the source Lemma 5.9: Hom_G((Π^an)′_b,H¹_proét)≅Hom_G(Π′_b,H¹_ét), using analytic-vector density and the completed distribution tensor presentation, rather than identifying these Hom spaces algebraically.

**Check.** The Hom direction is from Π′_b into cohomology; reversing it changes the representation.

**Sources.** CDN23, Theorem 5.8 and Lemma 5.9, pp. 52–53: Computes Banach multiplicities and the analytic-to-Banach Hom comparison.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G10.


### galois-socle — Galois multiplicities and the vanishing of higher dimensions

**Target (theorem).** For absolutely irreducible continuous V of G_Qp, Hom_{W_Qp}(V,H¹_ét(M⁽ᵖ⁾_{n,C},L(1))) is Π(V)′_b⊗JL(M) when V=V_{M,ℒ} with level≤n, is (St^cont⊗η_G)′_b⊗η_D when V=η has level≤n, and is zero otherwise. In particular all dim V≥3 vanish. The supercuspidal dim≥2 statement passes to the direct-limit tower with its stated central sector. The rank-one branch is not a supercuspidal exception.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/finite-dimensional-multiplicity`, `PadicLocalLanglandsForGL2QpPartII:GR.4/bounded-duals`, `PadicLocalLanglandsForGL2QpPartII:GR.4/steinberg-comparison`, `PadicLocalLanglandsForGL2QpPartII:GR.4/banach-etale-multiplicity`, `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5/finite-length`, `PadicLocalLanglandsForGL2Qp:R30.2/admissible-unitary-banach`.

**Construction/proof.**

1. For dimension two apply the period classification and bounded-dual comparison; for dimension one use the special half-plane sector.

2. For dim≥3 the 2020 argument follows the finite-dimensional occurrence theorem without a restriction p>2. The alternative 2023 proof, valid under its mod-p finiteness hypotheses p>2, obtains an admissible finite-length Banach multiplicity, chooses an absolutely irreducible Banach constituent after finite coefficient extension, and contradicts the Banach multiplicity computation.

3. Check passage between Weil and Galois equivariance using the continuous extended action, and then the central-quotient/direct-limit convention.

**Check.** A rank-three absolutely irreducible V contributes zero; a rank-one character can contribute through the Steinberg branch.

**Sources.** CDN20, Theorem 0.2 and Corollary 2.16, author pp. 4, 28 (published pp. 314, 334): Identifies the supercuspidal socle and excludes other higher-dimensional Galois factors.; CDN23, Theorem 5.1 and Theorem 5.10, pp. 50, 53: Adds the character branch and a finite-length proof of higher-dimensional vanishing.


## GR.5: Integral arithmetic block decomposition

Define the fixed-geometric-level arithmetic completion with integral coefficients before inverting p. Prove saturation and smooth Galois reductions, form block multiplicities from the parent projective generators, prove their completed evaluation and reduction-lifting theorem, establish finite generation of the continuous integral dual, and isolate the finite, level-stable type sectors and their central characters. Use the existing mod-p finite-length and geometric-multiplicity theorems.

**Layer inputs:** `EndoscopicTransferAndUnitaryTraceComparison:ET.6a`, `PadicLocalLanglandsForGL2Qp:R30.5`, `PadicLocalLanglandsForGL2Qp:R30.6`, `PadicLocalLanglandsForGL2QpPartII:GR.0`, `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.0`, `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5`.


### arithmetic-completion — Arithmetic completed cohomology at fixed level

**Target (construction).** Fix n and the p-central quotient M⁽ᵖ⁾_n. Set H^{i,+}_{n,Q̄p}=lim_k colim_{K/Q_p finite} H^i_ét(M⁽ᵖ⁾_{n,K},(O_L/p^k)(1)), and H^i_{n,Q̄p}=L⊗_{O_L}H^{i,+}_{n,Q̄p}. The projective limit has its natural p-adic topology; n stays fixed. In degrees 0,1 compare with the integral cohomology over C using the actual Weil descent of the tower. For i=1 the arithmetic image consists exactly of elements whose reduction modulo every p^k has an open G_Qp stabilizer.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.0/level-types`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/rank-two-arithmetic-descent`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/stein-mittag-leffler`, `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.0/lubin-tate-components`.

**Construction/proof.**

1. Use finite-level étale cohomology and restriction in finite K from the imported tower, then take the indicated colimit before the integral inverse limit.

2. The Hochschild–Serre edge sequence and finiteness of H⁰ at the p-central finite level kill the H¹,H² obstructions after colim_K.

3. Pass to lim_k with the integral injections, producing the almost-Galois-smooth characterization.

**Consumers.** GR.5/integral-block-evaluation: Makes each mod-p^k quotient a union of finite-K invariant pieces. GR.6/factorisation: Fixes the left side and completion topology of the headline formula.

**Planning API.**

- `ArithmeticTowerCohomology.definition` (characterisation): H^{i,+}_{n,Q̄p}=lim_k colim_K H^i_ét(M⁽ᵖ⁾_{n,K},O_L/p^k(1)).

- `ArithmeticTowerCohomology.rationalize` (data): H^i_{n,Q̄p}=L⊗H^{i,+}_{n,Q̄p}; p is inverted after both integral limits.

- `ArithmeticTowerCohomology.geometricMap` (projection): For i=1 there is a continuous G×D××G_Qp-equivariant injection into H^{1,+}_{n,C}.

- `ArithmeticTowerCohomology.almostSmooth` (characterisation): An integral geometric class is arithmetic iff its reduction modulo each p^k is fixed by some open Galois subgroup, which may depend on k.

- `ArithmeticTowerCohomology.levelMap` (functoriality): Restriction/corestriction in n commute with the arithmetic and geometric maps, but the defining completion keeps n fixed.

**Unit tests a wrong definition must fail.**

- `ArithmeticTowerCohomology.fixedN` (characterisation): Holding n fixed and varying only K,k produces the arithmetic object; lim_n is a different construction.

- `ArithmeticTowerCohomology.openStabilizer` (non-example): Almost Galois smoothness permits a decreasing sequence of stabilizers as k grows; one fixed open subgroup for the whole integral class is stronger.

- `ArithmeticTowerCohomology.order` (compatibility): The rational object is L⊗lim_k colim_K of integral groups, not lim_k of groups already tensored with L, which would vanish on p^k-torsion.

**Check.** No inverse limit in n appears in the final factorisation space.

**Sources.** CDN23, §5.3.1 and Proposition 5.16, pp. 55–56: Defines the arithmetic completion and its image in geometric cohomology.

**Atlas planet:** Arithmetic cohomology at fixed level.


### integral-reduction — Saturation and finite-K invariant pieces

**Target (theorem).** The arithmetic H⁺=H^{1,+}_{n,Q̄p} is p-torsion-free, p-adically separated and complete, and p-saturated in H^{1,+}_{n,C}. Each H⁺/p^k is a smooth G_Qp-module. For every finite K/Q_p, (H⁺/p^k)^{G_K} with its induced topology is the continuous dual of a smooth finite-length O_L[G′]-representation, G′=G/p^Z. Here p>2 is imposed for the mod-p finiteness input.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.5/arithmetic-completion`, `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5/finite-length`.

**Construction/proof.**

1. Use the saturated injection into geometric integral cohomology and the mod-p^k smoothness from Proposition 5.16 to prove Corollary 5.17.

2. Embed finite-K invariants into the geometric mod-p^k invariants and use the imported finite-length theorem.

3. For a compact open H⊂G, the induced O_L[[H]] module is finite over a noetherian Iwasawa algebra; separatedness identifies its given topology with the compact module topology. Supply the topology/noetherianity interface in G12.

**Check.** The invariant piece is compact with the induced topology; algebraic finite generation alone is not the topology assertion.

**Sources.** CDN23, Corollary 5.17 and Proposition 5.19, pp. 56–57: Provides saturation, Galois smoothness and the compact finite-length invariant pieces.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G12.


### block-multiplicity — Cohomological block multiplicity modules

**Target (definition).** Use the parent’s compact projective generator P_B, endomorphism algebra E_B and pseudodeformation center R_B^ps. Define m_{n,B}=Hom_G^cont(P_B,H⁺) with its p-adic topology and check m_{n,B}=Hom_{O_L}^cont(m_{n,B},O_L). After inverting p and taking the M-part define m_{B,M}=Hom_{G×D×}^cont(P_B⊗JL(M),H¹_{n,Q̄p}). Opposite-algebra conventions are chosen so evaluation P_B⊗_{E_B}m_B(X)→X is balanced; this is the parent’s Morita convention, not a second projective-envelope construction.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.5/arithmetic-completion`, `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`, `PadicLocalLanglandsForGL2Qp:R30.5/projective-envelope`, `PadicLocalLanglandsForGL2Qp:R30.5/paskunas-endomorphism-rings`, `PadicLocalLanglandsForGL2Qp:R30.5/blocks`.

**Construction/proof.**

1. Specialize the parent Hom/evaluation functors to the arithmetic cohomology.

2. Transport the commuting Galois and D× actions by postcomposition; compare integral and rational Hom using compactness of P_B.

**Consumers.** GR.5/integral-block-evaluation: Reconstructs integral arithmetic cohomology from the block multiplicities. GR.6/typed-multiplicity-structure: Is the left-hand module in the interpolated structure theorem.

**Planning API.**

- `CohomologicalBlockMultiplicity.evaluation` (data): P_B⊗_{E_B}m_B(X)→X sends p⊗f to f(p), with the imported opposite-ring convention.

- `CohomologicalBlockMultiplicity.dual` (projection): check m_{n,B}=Hom^cont_{O_L}(m_{n,B},O_L), carrying its compact topology.

- `CohomologicalBlockMultiplicity.type` (characterisation): m_{B,M}=Hom_{G×D×}^cont(P_B⊗JL(M),H¹_{n,Q̄p}).

- `CohomologicalBlockMultiplicity.rationalize` (compatibility): m_B(H¹_{n,Q̄p})=L⊗m_B(H⁺), by compactness of P_B.

- `CohomologicalBlockMultiplicity.commutingActions` (structure): G_Qp acts on multiplicities and commutes with the E_B and central R_B^ps actions.

**Unit tests a wrong definition must fail.**

- `CohomologicalBlockMultiplicity.wrongBlock` (degenerate): If X belongs to a different block B′, Hom(P_B,X)=0 in the imported block category.

- `CohomologicalBlockMultiplicity.evaluationBalance` (compatibility): Evaluation of (pe)⊗f and p⊗(ef) agrees for every e∈E_B.

- `CohomologicalBlockMultiplicity.dualDirection` (non-example): check m is the O_L-valued continuous dual of m, not its Pontryagin dual into L/O_L.

- `CohomologicalBlockMultiplicity.typeNormalization` (computation): If X=Y⊗JL(M) with one D× type, m_{B,M}(X)≅Hom_G(P_B,Y).

**Check.** E_B acts on the appropriate opposite side of Hom, so evaluation descends to the tensor product.

**Sources.** CDN23, Proposition 5.21, Theorem 5.22 and Remark 5.23, pp. 57–59: Defines the integral, dual and typed multiplicity modules.

**Atlas planet:** Cohomological block multiplicities.


### integral-block-evaluation — Integral block decomposition and lifting modulo p

**Target (theorem).** For p>2, evaluation identifies H⁺ with the p-adic completion of ⊕_B P_B⊗_{E_B}m_{n,B}. Moreover m_{n,B}/p^k≅Hom_G(P_B,H⁺/p^k). The sum is completed as lim_k of its integral reductions; it is neither the algebraic sum nor the full product over all blocks.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.5/integral-reduction`, `PadicLocalLanglandsForGL2QpPartII:GR.5/block-multiplicity`, `PadicLocalLanglandsForGL2Qp:R30.5/projective-envelope`, `PadicLocalLanglandsForGL2Qp:R30.5/blocks`.

**Construction/proof.**

1. At each finite-K invariant piece use the parent block Morita evaluation for compact finite-length modules.

2. Compactness of P_B permits passage through colim_K.

3. For reduction-surjectivity, finite length puts a given map into one finite-K piece and lifts it to a larger finite extension at level k+1; projectivity then lifts the map.

4. Pass to the integral inverse limit and identify the completed direct sum. The parent extension of Morita theory to these noncompact p-adically complete targets is the precise request G12.

**Check.** Modulo p^k each vector has finite block support, while the finite set may grow with k.

**Sources.** CDN23, Proposition 5.21, pp. 57–58: Proves the evaluation and the Hom-reduction surjectivity.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G12.

**Atlas planet:** Integral block decomposition.


### finite-dual-multiplicity — Finite generation of the dual multiplicity

**Target (theorem).** For p>2, check m_{n,B} is a compact, p-torsion-free, finitely generated R_B^ps-module. This is a theorem about the O_L-valued dual; it does not assert that m_{n,B} itself is finitely generated over R_B^ps.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.5/integral-block-evaluation`, `PadicLocalLanglandsForGL2QpPartII:GR.5/block-multiplicity`, `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5/finite-length`, `PadicLocalLanglandsForGL2Qp:R30.6/paskunas-tung-finiteness`.

**Construction/proof.**

1. Apply topological Nakayama to the compact dual.

2. Inject the residual socle of m_{n,B}/ϖ into Hom_G(k_L⊗_{R_B^ps}P_B,H¹_ét(M⁽ᵖ⁾_{n,C},k_L(1))).

3. Use the parent’s finite-length residual projective specialization and SZ.5/finite-length(c), the finite-Hom assertion of CDN23 Corollary 4.21(c), for the geometric residual multiplicity.

**Check.** The residual Hom is finite-dimensional; finite arithmetic length alone does not imply this geometric multiplicity bound.

**Sources.** CDN23, Theorem 5.22, p. 58: Proves finite generation by residual multiplicities and topological Nakayama.

**Atlas planet:** Finite dual multiplicity.


### level-and-central-character — Type decomposition, level stability and central character

**Target (theorem).** At fixed n only finitely many D×-types M occur in H¹_{n,Q̄p} and in each block multiplicity. There are equivariant decompositions H¹_{n,Q̄p}=⊕_M H¹_{n,Q̄p}[M]⊗JL(M) and m_B(H¹_{n,Q̄p})=⊕_M m_{B,M}⊗JL(M). For n≥level(M), restriction/corestriction identifies m_{B,M} independently of n after inverting p. The G-central character δ_M is the inverse of the central character on JL(M), for the tower’s action convention.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.5/block-multiplicity`, `PadicLocalLanglandsForGL2QpPartII:GR.0/level-types`, `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`, `PadicLocalLanglandsForGL2QpPartII:GR.5/arithmetic-completion`.

**Construction/proof.**

1. Use the finite D× quotient at geometric finite level and the arithmetic injection.

2. Average restriction/corestriction over the finite covering group in characteristic zero to prove stabilization of the isotypic sector.

3. Compare the two central actions on the imported tower before defining the fixed-determinant center.

**Check.** Integral level independence is not asserted: the averaging denominator can be divisible by p.

**Sources.** CDN23, Remark 5.23, pp. 58–59: Gives the finite type decomposition, stable multiplicities and central-character constraint.

**Atlas planet:** Level-stable type multiplicities.


## GR.6: Interpolated factorisation over type rings

Import the whole-Weil–Deligne-type Kisin rings and universal Galois representations. Construct their Banach dual interpolation from stable dual lattices, separate the rank-one Steinberg branch, prove annihilation by the type ideal on the whole multiplicity module, and identify finite locally free dual multiplicities by PID rigidity with the joint endomorphism/Galois action. For p>3 deduce the topological arithmetic factorisation with its p-adically completed block sum and continuous ring dual.

**Layer inputs:** `LocalGaloisDeformationRings:R08.3`, `PadicLocalLanglandsForGL2Qp:R30.3`, `PadicLocalLanglandsForGL2Qp:R30.5`, `PadicLocalLanglandsForGL2QpPartII:GR.0`, `PadicLocalLanglandsForGL2QpPartII:GR.4`, `PadicLocalLanglandsForGL2QpPartII:GR.5`.


### interpolated-banach-dual — The interpolated Banach dual Π*(ρ_{B,M})

**Target (construction).** Let M be supercuspidal and let R=R_{B,M}, R⁺ and ρ=ρ_{B,M} be the imported whole-WD-type ring, integral image and universal Galois representation. Choose a G_Qp-stable R⁺ lattice ρ^{diamond,+} in the R-linear dual of ρ. Write its Pontryagin dual as colim_i V_i over finite coefficient quotients and define Π*(ρ)=L⊗_{O_L}lim_i Π(V_i)^∨ using the parent’s integral correspondence. The construction is independent of the lattice up to the compatible canonical comparison. It has the equivalent integral Colmez description D(ρ^{diamond,+})^natural⊠P¹ (with rationalization understood) and the continuous R-dual of the block-adic completion LL_M,B^{[0,1]}. At each closed x, κ(x)⊗_RΠ*(ρ)≅Π(ρ_x)′_b. The fiber property alone is not its definition.

**Direct prerequisites:** `LocalGaloisDeformationRings:R08.3/weil-deligne-type-ring`, `PadicLocalLanglandsForGL2Qp:R30.3/montreal-functor`, `PadicLocalLanglandsForGL2Qp:R30.3/family-stability`, `PadicLocalLanglandsForGL2Qp:R30.3/pi-of-D`, `PadicLocalLanglandsForGL2Qp:R30.5/dual-of-universal-deformation`, `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter`.

**Construction/proof.**

1. Import R, R⁺ and ρ, including the empty type-locus convention, from the deformation-ring owner.

2. Use the stable dual lattice and the parent’s integral finite-quotient correspondence to form the inverse limit.

3. Prove lattice-independence, continuity and base change using the exact integral-family contract G13.

4. Compare with D^natural and the universal block-adic completion; the latter is a supplier extension G14, not a fiberwise definition.

**Consumers.** GR.6/typed-multiplicity-structure: Supplies the representation factor in the blockwise formula. GR.6/factorisation: Interpolates the individual multiplicity Π(V)′_b over the type ring.

**Planning API.**

- `InterpolatedBanachDual.integralLimit` (characterisation): Π*(ρ)=L⊗lim_iΠ(V_i)^∨ from the stable dual lattice and its finite coefficient quotients.

- `InterpolatedBanachDual.fiber` (compatibility): For closed x, κ(x)⊗_RΠ*(ρ)≅Π(ρ_x)′_b with the specialized G action.

- `InterpolatedBanachDual.latticeIndependent` (equivalence): Commensurable stable lattices give the same rational object through compatible comparison maps.

- `InterpolatedBanachDual.colmez` (equivalence): The rationalized D(ρ^{diamond,+})^natural⊠P¹ description agrees with the integral-limit construction.

- `InterpolatedBanachDual.completionDual` (equivalence): Π*(ρ)≅Hom_R^cont(LL_M,B^{[0,1]},R), with the block-adic completion topology.

- `InterpolatedBanachDual.empty` (example): If R=0 because there are no type-M points in B, the family and its contribution are zero.

**Unit tests a wrong definition must fail.**

- `InterpolatedBanachDual.fieldFiber` (compatibility): At a type-M closed point x the fiber is Π(V_{M,ℒ_x})′_b, with the line determined by the Galois fiber.

- `InterpolatedBanachDual.emptyLocus` (degenerate): An empty type locus gives zero, not a residual constant family.

- `InterpolatedBanachDual.dualLattice` (non-example): Using a lattice in ρ instead of its R-dual without changing the integral correspondence reverses the specified dual convention.

- `InterpolatedBanachDual.notFiberDefinition` (non-example): An R-module can have the same closed fibers as another while differing by non-finite or non-separated pieces; the construction must retain the integral limit and topology.

**Check.** Both the generic field fibers and the integral inverse-limit origin must be established.

**Sources.** CDN23, Definition 5.14, pp. 54–55 (following Remark 5.13): Constructs the interpolated representation in three forms.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G13, PadicLocalLanglandsForGL2QpPartII/G14.

**Atlas planet:** Interpolated p-adic Langlands family.


### special-family — The special-type family convention

**Target (construction).** For M=Sp⊗η use R_{B,M}=L. If B is the block containing the mod-p Steinberg twist St⊗bar η_G, set ρ_{B,M}=η (rank one) and Π*(ρ_{B,M})=(St^cont⊗η_G)′_b. For every other block set the representation contribution to zero. This is a separate branch of the family notation and is not a two-dimensional absolutely irreducible universal Galois representation.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.4/steinberg-comparison`, `PadicLocalLanglandsForGL2QpPartII:GR.5/level-and-central-character`, `PadicLocalLanglandsForGL2Qp:R30.5/blocks-classification`, `LocalGaloisDeformationRings:R08.3/weil-deligne-type-ring`.

**Construction/proof.**

1. Specialize the type convention of the deformation-ring supplier.

2. Use the character multiplicity in the half-plane to determine the only nonzero block and its rank-one Galois factor.

**Consumers.** GR.6/factorisation: Supplies the special summands in the finite-level decomposition.

**Planning API.**

- `SpecialFamily.ring` (simp): For special M the type ring convention is R_{B,M}=L.

- `SpecialFamily.galois` (simp): In the Steinberg block the Galois factor is η, of rank one.

- `SpecialFamily.banach` (compatibility): The G factor is the dual of St^cont⊗η_G.

- `SpecialFamily.otherBlock` (characterisation): All other blocks have zero representation contribution.

**Unit tests a wrong definition must fail.**

- `SpecialFamily.rankOne` (computation): For η=1 the Galois factor is L with trivial action, not a rank-two semistable extension.

- `SpecialFamily.wrongBlock` (degenerate): A block not containing the relevant Steinberg twist contributes zero.

- `SpecialFamily.twist` (compatibility): Replacing η by ηχ twists the Galois factor by χ and the G factor contragrediently by χ_G, with JL(M) twisted by χ_D.

**Check.** The rank-one character in this branch agrees with the special-sector term of GR.4/galois-socle.

**Sources.** CDN23, §0.3.3, p. 8; §5.2, p. 53; Theorem 5.24, p. 59: Separates the special-type convention from the supercuspidal universal family.

**Atlas planet:** Steinberg family convention.


### type-annihilator — The pseudodeformation action factors through the type ring

**Target (theorem).** For p>3, the fixed-central-character action of R_B^{ps,δ_M}[1/p] on m_{B,M} factors through R_{B,M}. For M supercuspidal, I_{B,M}=ker(R_B^{ps,δ_M}[1/p]→R_{B,M}) annihilates the full multiplicity module, not merely its closed fibers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.5/level-and-central-character`, `PadicLocalLanglandsForGL2QpPartII:GR.5/finite-dual-multiplicity`, `PadicLocalLanglandsForGL2QpPartII:GR.4/etale-bounded`, `PadicLocalLanglandsForGL2QpPartII:GR.4/bounded-duals`, `LocalGaloisDeformationRings:R08.3/weil-deligne-type-ring`, `PadicLocalLanglandsForGL2Qp:R30.5/block-pseudodeformation-ring`, `PadicLocalLanglandsForGL2Qp:R30.5/paskunas-endomorphism-rings`.

**Construction/proof.**

1. The geometry input gives O(M_n)[M]^b=0, so the fundamental row and bounded-dual theorem embed H¹_ét[M] into X_st⁺(M)⊗̂LL(M)̂′_b.

2. Choose a G-stable integral lattice in LL(M), complete it and take its block-adic quotient.

3. Use the Kisin/block-adic comparison G14: this quotient is p-torsion-free, complete and annihilated by the integral type ideal; reduction maps have the stated surjectivity.

4. Every map from compact P_B factors through a finite-length block quotient, so the two center actions agree and the type ideal kills the whole Hom.

**Check.** Vanishing of the ideal in every closed fiber by itself is insufficient; the integral block-adic argument removes that gap.

**Sources.** CDN23, Theorem 5.24(i), pp. 59–60: Proves annihilation via bounded functions and the universal block completion.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G7, PadicLocalLanglandsForGL2QpPartII/G14.

**Atlas planet:** Type-ring annihilator.


### typed-multiplicity-structure — Structure of the type multiplicity module

**Target (theorem).** For p>3 there is an E_B^{δ_M}[G_Qp]-equivariant isomorphism m_{B,M}≅m_B^{δ_M}(Π*(ρ_{B,M}))⊗_{R_{B,M}}ρ_{B,M}⊗_{R_{B,M}}check R_{B,M}, where check R=Hom_L^cont(R,L), with R action (rℓ)(s)=ℓ(rs). The special convention is GR.6/special-family. The topology and duality are those induced by the integral construction and the finite module duals; this is not a formula for m⁺ before p is inverted.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.6/type-annihilator`, `PadicLocalLanglandsForGL2QpPartII:GR.6/interpolated-banach-dual`, `PadicLocalLanglandsForGL2QpPartII:GR.6/special-family`, `PadicLocalLanglandsForGL2QpPartII:GR.5/finite-dual-multiplicity`, `PadicLocalLanglandsForGL2QpPartII:GR.4/banach-etale-multiplicity`, `LocalGaloisDeformationRings:R08.3/weil-deligne-type-ring`, `LocalGaloisDeformationRings:R08.3`, `PadicLocalLanglandsForGL2Qp:R30.5/paskunas-endomorphism-rings`.

**Construction/proof.**

1. At a closed point x apply the parent Morita specialization P_B/𝔪_x and the Banach étale multiplicity to compute m_{B,M}[𝔪_x].

2. Pass to the continuous L-duals. Prove these duals are finite locally free over each PID factor of R (G15); fiber identification alone is not enough.

3. Apply the supplier’s PID rigidity extension (request at R08.3): all closed fibers are absolutely irreducible for the joint E_B,M×G_Qp action. Generic semisimplicity of E_B,M and characteristic-zero trace determine the generic representation. Smith normal form removes denominators without creating reducible fibers.

4. Dualize back, with check R accounting for the continuous dual of the coefficient ring.

**Check.** The proof keeps the commuting E_B action and G_Qp action; a comparison only of Galois modules is weaker than the target.

**Sources.** CDN23, Theorem 5.24(ii), pp. 59–60 and footnote 32; Lemma 5.12, p. 54: Computes fibers and applies the PID rigidity argument, with local freeness and generic semisimplicity explicit.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G15.

**Atlas planet:** Interpolated multiplicity structure.


### factorisation — Emerton-style factorisation of arithmetic cohomology

**Target (theorem).** Fix p>3 and n, and take L large enough to define all finite-level JL(M). There is a topological G×D××G_Qp-equivariant isomorphism H¹_ét(M⁽ᵖ⁾_{n,Q̄p},L(1))≅⊕_{M∈ΦNᵖ_n} (completed ⊕_B [Π*(ρ_{B,M})⊗_{R_{B,M}}ρ_{B,M}⊗_{R_{B,M}}check R_{B,M}])⊗_L JL(M). Only the finitely many nonzero finite-level M-sectors are retained. The inner completion is p-adic with the integral lattices transported from the block evaluation, then p is inverted. check R is Hom_L^cont(R,L), not the recursive dual printed in the source. This is a factorisation of the arithmetic completion defined in GR.5, not all of H¹_ét(M⁽ᵖ⁾_{n,C},L(1)).

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.5/integral-block-evaluation`, `PadicLocalLanglandsForGL2QpPartII:GR.5/level-and-central-character`, `PadicLocalLanglandsForGL2QpPartII:GR.6/typed-multiplicity-structure`, `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`.

**Construction/proof.**

1. Invert p in the integral block evaluation with its inherited lattices.

2. Take the finite D×-isotypic decomposition and use level stabilization.

3. Substitute the typed multiplicity structure and use the parent Morita evaluation to recover Π*(ρ).

4. Check the three commuting actions and the completed-sum topology term by term.

**Check.** At a closed supercuspidal point, the corresponding multiplicity recovers Π(ρ_x)′_b⊗ρ_x and its JL factor. Modulo p^k the integral completed sum has finite support per vector; an unrestricted product is rejected.

**Sources.** CDN23, Theorem 5.15, p. 55 (= Theorem 0.1, p. 2); Theorem 0.18(ii), p. 9; footnote 32, p. 60: Combines integral block decomposition with the interpolated multiplicities; the p>3 hypothesis is retained.

**Atlas planet:** Drinfeld cohomology factorisation.


## GR.7: Weighted, Iwasawa and boundary consequences

Prove the weighted BGG/de Rham extension, the original first-cover Breuil–Strauch comparison using three global lines, the analytic Iwasawa description of diagonal invariants, the corrected infinite-primitives containment and the filtered derived de Rham realization in a fixed coadmissible sector. Construct the boundary germ sheaf and its restriction, action and duality API. Its equality with the Colmez sheaf and a log-rigid Hyodo–Kato refinement remain explicitly conjectural expectations, not theorem targets.

**Layer inputs:** `EndoscopicTransferAndUnitaryTraceComparison:ET.6a`, `GL2AutomorphicRepresentationsAndTransfer:R17.3`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1`, `PadicHodgeTheory:R06.5`, `PadicLocalLanglandsForGL2Qp:R30.4`, `PadicLocalLanglandsForGL2QpPartII:GR.0`, `PadicLocalLanglandsForGL2QpPartII:GR.2`, `PadicLocalLanglandsForGL2QpPartII:GR.3`, `PhiGammaModulesAndIwasawaCohomology:PG.5`.


### weighted-action — The integral-weight automorphy twist

**Target (construction).** For each integer k put E_π[k]=E_π as a topological O(Ω)-module and give it the action g⋆_kℓ=(a−c∂_π)^{−k}gℓ. Negative powers are defined by the continuous automorphism from GR.2/homography. Its strong dual is the analytic quotient that realizes the imported geometric bundle O(k)(Σ_r)^ρ; this target builds the representation twist, not a second generic line-bundle theory.

**Hypotheses.** Throughout this supercuspidal comparison, L/Q_p is finite, π is smooth absolutely irreducible supercuspidal with trivial central character, and the varying nontrianguline Galois family has weights {0,1}; general-purpose function-space and P-finite definitions apply to their explicitly stated carriers.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.2/homography`, `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action`, `PadicLocalLanglandsForGL2QpPartII:GR.3/analytic-realisation`.

**Construction/proof.**

1. Check the cocycle using g∂g⁻¹=(d∂−b)(a−c∂)⁻¹.

2. Transport the geometric automorphy trivialization through the function comparison; check each integral power and the central scalar action.

**Consumers.** GR.7/weighted-realisation: Supplies the two integral-weight representations in the BGG row.

**Planning API.**

- `WeightedAutomorphy.action` (characterisation): g⋆_kℓ=(a−c∂_π)^{−k}gℓ.

- `WeightedAutomorphy.cocycle` (relation): The formula respects identity and group multiplication for every k∈Z.

- `WeightedAutomorphy.zero` (simp): At k=0 the original action is recovered.

- `WeightedAutomorphy.geometric` (compatibility): The comparison with O(k)(Σ_r)^ρ respects its existing geometric automorphy factor and the common scalar.

**Unit tests a wrong definition must fail.**

- `WeightedAutomorphy.zero` (degenerate): At k=0 every automorphy factor is id.

- `WeightedAutomorphy.central` (computation): The scalar matrix aI₂ acts by a^{−k} relative to its action on E_π; determinant twists must therefore be accounted for separately.

- `WeightedAutomorphy.differentials` (compatibility): The k=2 action, tensored by det, is exactly E_π(2), including the factor det(g)(a−c∂)^{−2}.

**Check.** The untwisted integer k=0 recovers E_π exactly.

**Sources.** DLB17, Remark 11.12, p. 396: Specifies the integral-weight action twist.


### weighted-realisation — Weighted analytic realization and the BGG row

**Target (theorem).** For k∈Z, twist the action on E_π by (a−c∂_π)^{−k}; this is the dual analytic object for O(k)(Σ_r)^ρ with the source’s automorphy convention. For k≥0 prove the strict exact BGG row 0→O(−k)(Σ_r)^ρ→O(k+2)(Σ_r)^ρ⊗det^{k+1}→H¹_dR(Σ_r)^ρ⊗Sym^k→0, whose first map is (u⁺)^{k+1}. Its line preimages describe the de Rham Galois representations with weights {0,k+1}. General smooth central characters require the explicit extension G16; the argument for trivial central character does not by itself establish them.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.2/homography`, `PadicLocalLanglandsForGL2Qp:R30.4/locally-algebraic-type`, `PadicLocalLanglandsForGL2Qp:R30.4/locally-algebraic-vectors`, `PadicLocalLanglandsForGL2QpPartII:GR.7/weighted-action`.

**Construction/proof.**

1. Define the automorphy action using homographic covariance and verify the cocycle.

2. Apply the equivariant differential operator (u⁺)^{k+1} and the vector-bundle BGG comparison in the geometry contract G16.

3. Identify its quotient and filtration by the normalized de Rham row; retain the determinant twist.

**Check.** For k=0 the row is the original de Rham row with O(2)⊗det identifying differentials.

**Sources.** DLB17, Remark 11.12, p. 396; Remark 1.3(a), p. 324: States weighted extensions and the differential sequence.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G16.

**Atlas planet:** Weighted Breuil–Strauch realization.


### original-breuil-strauch — Comparison with the original first-cover formulation

**Target (theorem).** At the first cover of level 1+ϖ_DO_D, use its semistable model over K=Q_{p²}((-p)^{1/(p²−1)}). The de Rham realization transported from its Hyodo–Kato (φ,N,G_Qp)-module gives the same line-preimage representations as GR.3/de-rham-realisation. Thus the original BS(ℒ), defined as the strong dual of the preimage of π′_b⊗ℒ^⊥, is Π_ℒ^an. The comparison of the two projective-line parametrizations is over P¹(L), and a common projectivity must be checked using three distinct filtration lines.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.3/nonzero-comparison`, `PadicHodgeTheory:R06.5/proper-smooth-rational-de-rham-comparison`, `GL2AutomorphicRepresentationsAndTransfer:R17.3`.

**Construction/proof.**

1. Use Teitelbaum’s semistable model and the nonproper Hyodo–Kato/uniformization comparison requested in G16.

2. Compare with the local Galois representation of a weight-two quaternionic form by proper Shimura-curve de Rham comparison.

3. Produce three distinct global filtration lines by the exact globalization extension in G8. Agreement on three lines forces the comparison projectivity to be scalar; two lines would leave a diagonal ambiguity.

**Check.** The DLB cover indexed r=1 is not this first ϖ_D-cover; use GR.0’s level conversion.

**Sources.** DLB17, Remark 11.13, pp. 396–398: Relates the original Hyodo–Kato-based formulation to the analytic realization; the projectivity argument needs three lines.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G8, PadicLocalLanglandsForGL2QpPartII/G16.

**Atlas planet:** Original Breuil–Strauch comparison.


### iwasawa-invariants — Iwasawa description of the diagonal invariants

**Target (theorem).** For V in the trivial-central-character π-family, the diag(p,1)-invariants of O(Σ_r)^ρ identify with {μ∈H¹(G_Qp,D(Γ)⊗_LV): for every cyclotomic level m, ∫_{1+p^mZ_p}μ∈H¹_e(G_{Q_p(μ_{p^m})},V)}. This is a free rank-two D(Γ)-module. H¹_e means the image of the Bloch–Kato exponential, not H¹_f or H¹_g; the analytic Iwasawa coefficient uses the source’s inverse-character Galois action.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/analytic-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image`, `PhiGammaModulesAndIwasawaCohomology:PG.5/analytic-bloch-kato-image`, `PhiGammaModulesAndIwasawaCohomology:PG.5/analytic-iwasawa`.

**Construction/proof.**

1. Identify diagonal invariants by restriction with tN_rig^{ψ=1}, and the units restriction with (1−φ)tN_rig^{ψ=1}.

2. Apply the exact analytic exponential-image comparison imported from PG.5, preserving its unresolved lattice-comparison obligation (G17).

3. Use its injectivity and freeness conclusions in the stated coefficient convention.

**Check.** The cover level r and the universally quantified cyclotomic level m are different indices.

**Sources.** DLB17, Theorem 1.9, p. 333; proof §12.1, p. 398: Identifies the invariants with the analytic Iwasawa exponential-image condition.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G17.

**Atlas planet:** Iwasawa invariants of Drinfeld functions.


### infinite-primitives — Infinitely primitivable functions with component coefficients

**Target (theorem).** For the p-central cover Σ_r, the functions lying in ∩_{j≥0}(d/dz)^jO(Σ_r) are contained in H⁰_dR(Σ_r)·O(Ω), interpreted as finite sums of locally constant functions on geometric components times pullbacks of half-plane functions. This containment is understood after the compatible coefficient/base-field extension needed to split components. In particular the nontrivial supercuspidal ρ-sector has zero infinite-primitivity intersection. This is a containment, with no assertion that every half-plane function has arbitrarily many primitives. The stronger conclusion that every such function lies in O(Ω) is false when component constants are nontrivial.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/injectivity`, `PadicLocalLanglandsForGL2QpPartII:GR.3/analytic-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.0/level-types`.

**Construction/proof.**

1. Use fixed-radius divisibility or the dense u⁺-power-torsion criterion to kill every supercuspidal isotypic sector.

2. For the special one-dimensional D× sectors use the corrected component-constant factor and the half-plane differentiation theorem in G7.

3. To cover every central character use G16; the restricted π argument cannot silently eliminate the missing sectors.

**Check.** A locally constant nonconstant component function is infinitely primitivable after multiplying successive primitives on Ω, and disproves the printed stronger conclusion.

**Sources.** DLB17, Theorem 1.10, p. 333; §12.1 and Remark 12.1, pp. 398–399: The printed conclusion requires the component-coefficient correction and a central-character extension.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G3, PadicLocalLanglandsForGL2QpPartII/G16.

**Atlas planet:** Infinitely primitivable functions.


### filtered-derived-realisation — Filtered derived de Rham realization

**Target (theorem).** For V in the supercuspidal π-family and sufficiently large r, Hom_{Dᵇ(D(G))}((Π(V)^an)′_b,RΓ_dR(Σ_r)^ρ[1])≅D_dR(V) as filtered L-vector spaces, up to the common scalar. The derived category is that of coadmissible distribution modules in this fixed ρ-sector. RΓ_dR is the two-term complex O(Σ_r)^ρ→Ω¹(Σ_r)^ρ in degrees 0,1, with F⁰=[0→Ω¹] and the source’s shifted stupid filtration. This statement supplies no Frobenius or monodromy enhancement.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.3/surjectivity`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.1/admissible-abelian-category`.

**Construction/proof.**

1. The supercuspidal sector has no H⁰_dR, so its de Rham complex is quasi-isomorphic to H¹_dR[−1].

2. Compute Hom to the two-copy smooth quotient by the parent analytic/smooth-vector comparison; the filtered subspace is the line specified by the de Rham preimage theorem.

3. Use the enhanced/derived coadmissible-category construction requested in G18. Do not infer coadmissibility for the entire unprojected O(Σ_r).

**Check.** For the chosen line, the induced filtration on the two-dimensional Hom recovers Fil⁰D_dR(V); it is not merely an unfiltered dimension count.

**Sources.** DLB17, Proposition 12.2 and its proof, pp. 399–400: Gives the filtered derived realization in the nontrivial supercuspidal sector.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G18.

**Atlas planet:** Derived de Rham realization.


### boundary-sheaf — The boundary-function sheaf

**Target (construction).** Let τ_r:Σ_r→the Bruhat–Tits tree be the period projection followed by the standard retraction. For an open U⊂P¹(Q_p), let V(U) be the union of rays from a chosen vertex toward U, and B_i its radius-i ball. Form the sheaf of germs at the boundary by sheafifying U↦colim_i O(τ_r⁻¹(V(U)∖B_i))^ρ, with admissible analytic neighborhoods as in §12.3. Denote it F_π. Its restriction maps and G-action are independent of the chosen origin and cofinal collar sequence. It is a proved construction, whereas its proposed identification with tN_rig(π)⊠− is Conjecture 12.4, recorded only as an expectation.

**Direct prerequisites:** `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`, `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6a/drinfeld-tower`.

**Construction/proof.**

1. Use the imported tree retraction and analytic neighborhoods (geometry contract G7) to define the directed collar system.

2. Pass to germs, restrict to boundary opens and sheafify; check gluing on compact opens by disjoint sufficiently deep collars.

3. Changing the origin changes only a bounded initial part of each ray, so the collar systems are cofinal and the G-action is well-defined.

**Consumers.** DLB17 Conjecture 12.4: Provides a geometric boundary object against which the unfiltered Colmez sheaf can be compared; equality remains an expectation.

**Planning API.**

- `DrinfeldBoundarySheaf.germs` (characterisation): On compact boundary opens, sections are the stabilized germ colimit over admissible collars.

- `DrinfeldBoundarySheaf.restrict` (functoriality): Boundary restriction commutes with passage to germs, identities and composition.

- `DrinfeldBoundarySheaf.cofinal` (equivalence): Cofinal collars and changes of the tree origin give canonically isomorphic germ sheaves.

- `DrinfeldBoundarySheaf.action` (structure): The G-action transports collars and commutes with restriction and the D×-isotypic projection.

- `DrinfeldBoundarySheaf.serreRow` (compatibility): On P¹ the geometric Serre-duality boundary row is 0→O(Σ_r)^ρ→F_π(P¹)→(Ω¹(Σ_r)^ρ)′_b→0, with the precise topology supplied by G7.

**Unit tests a wrong definition must fail.**

- `DrinfeldBoundarySheaf.empty` (degenerate): The empty boundary open has zero sections.

- `DrinfeldBoundarySheaf.cofinalShift` (compatibility): Replacing B_i by B_{i+c} for fixed c gives the same germs.

- `DrinfeldBoundarySheaf.disjoint` (characterisation): For disjoint compact open U₁,U₂, the deep collars separate and F_π(U₁∪U₂)≅F_π(U₁)×F_π(U₂).

- `DrinfeldBoundarySheaf.constants` (non-example): A pulled-back constant function has zero ρ-part for nontrivial supercuspidal ρ, so the isotypic projection cannot be omitted.

**Check.** No map from this sheaf to the Colmez sheaf is declared an isomorphism without proving the boundary conjecture.

**Sources.** DLB17, §12.3, pp. 400–401: Constructs boundary germs and formulates their sheaf comparison as a conjecture.

**Proof contracts:** PadicLocalLanglandsForGL2QpPartII/G7.


## Proof contracts and supplier extensions

These contracts are part of the build specification. They identify the exact inputs still needed for closure, rather than treating a subject name or a source citation as a proof.


### G1: Normalization across the three sources

Construct the explicit twist, reciprocity and dual-line dictionary among the parent Galois normalization, DLB’s M_dR∨ and geometric CDN M with φ=p. In the CDN20 author convention D_pst(V)=M[−1]. Preserve the determinant/central-character relation in every comparison.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter`, `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter`, `PadicLocalLanglandsForGL2QpPartII:GR.4/analytic-line-extension`.


### G2: Differential kernel and duality inputs

Read and supply the finite-dimensionality theorem for ker P(∇), then the differential-equation duality and strict topology that prove surjectivity and continuity of ∂⁻¹ on N_rig. The p-adic monodromy theorem alone does not supply either statement.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.1/nontrianguline-differential-control`.


### G3: Full P-finite model and analytic density

The parent’s fixed-weight P-algebraic Kirillov model does not supply the full P-finite expansion, residue duality or distribution-stabilizer theorem. Supply those precise extensions and, if used for GR.7, density of u⁺-power-torsion in Π(V)^an (DLB §12.1 cites Dospinescu’s thesis Theorem 8.4.3).

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-model`, `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality`, `PadicLocalLanglandsForGL2QpPartII:GR.7/infinite-primitives`.


### G4: Robba-Γ generation and radius descent

Apply PG.5/analytic-iwasawa only after checking both ψ−1 cokernel vanishings. Prove passage from generation over the Robba ring of Γ to fixed-radius control and extension through (γ−1)⁻¹ in DLB Proposition 8.4. It is not generation over D(Γ).

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf`.


### G5: Colmez line-independence and irreducibility

DLB Theorem 8.5 and the assertion after Definition 8.7 invoke Colmez results whose proofs are not supplied there. Supply the Weyl involution’s independence of the line and topological irreducibility of the common quotient, in the exact topology used here.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf`, `PadicLocalLanglandsForGL2QpPartII:GR.2/pi-zero-irreducible`.


### G6: Closed distributions and resolvent topology

Supply Frommer’s closed-image theorem for u⁺ on the relevant coadmissible dual, the h→h′ analytic-radius estimate for resolvents, and the nuclear Fréchet/compact-type uniform-boundedness argument needed for the continuous rational functional calculus. A blanket criterion that weak sequential convergence implies convergence in any locally convex space is not an input.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent`, `PadicLocalLanglandsForGL2QpPartII:GR.2/resolvent-analyticity`, `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action`.


### G7: Geometric cohomology and bundle contract

The proposed ProetaleCohomologyOfPAdicCurvesAndTowers owner has no stage/node in this checkout. Required are the strict supercuspidal Hyodo–Kato/de Rham fundamental diagram, Kummer/dlog, affinoid integral Banach unit balls, Stein inverse limits and cocompact tree-cover Čech patching; half-plane Steinberg cohomology and vanishing of nonconstant bounded functions; Morita analytic Steinberg duality; Kohlhaase’s equivariant bundle equivalence, finite-projective density-to-surjectivity and the boundary Serre-duality row. These are not supplied by ET.6a’s ℓ≠p compact-support comparison. Route these exact contracts to the geometry design, with no invented supplier ID.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action`, `PadicLocalLanglandsForGL2QpPartII:GR.3/surjectivity`, `PadicLocalLanglandsForGL2QpPartII:GR.4/hom-fundamental-diagram`, `PadicLocalLanglandsForGL2QpPartII:GR.4/etale-bounded`, `PadicLocalLanglandsForGL2QpPartII:GR.4/steinberg-comparison`, `PadicLocalLanglandsForGL2QpPartII:GR.6/type-annihilator`, `PadicLocalLanglandsForGL2QpPartII:GR.7/boundary-sheaf`.


### G8: Globalization beyond the existing compatibility theorem

R31.4 owns the local–global compatibility theorem, not all of DLB Theorem 5.5. Supply the parent integral reduction comparison: if the residual Galois representation is absolutely irreducible, every invariant Banach lattice has the corresponding irreducible mod-p representation as its reduction. Exactness and integral-limit compatibility of the Montreal functor must be combined with its mod-p values; the CDP classification alone is not the comparison. Supply a weight-two quaternionic realization with the required residual irreducibility, removal of the unramified twist by a finite-order global character, the uniformization map, and three distinct global filtration lines over P¹(L) for the original first-cover comparison.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.3/nonzero-comparison`, `PadicLocalLanglandsForGL2QpPartII:GR.7/original-breuil-strauch`.


### G9: Projectivity with p-adic coefficients

The current upstream SmoothRepresentationsOfLocalGroups roadmap states supercuspidal projectivity over C. Supply the L-coefficient version for smooth admissible fixed-central-character GL₂(Q_p)-representations needed to split the two-copy smooth kernel; do not identify C and L.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.3/smooth-kernel`.


### G10: Locally convex boundedness and completed Hom

Supply the defining-seminorm characterization of von Neumann boundedness in the nonarchimedean Fréchet spaces, continuity and tensor-Hom commutation with finite-dimensional period factors, and the analytic-vector/distribution tensor comparison in CDN23 Lemma 5.9. State each nuclearity, strictness and completeness hypothesis explicitly.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.4/orbit-bounded`, `PadicLocalLanglandsForGL2QpPartII:GR.4/hom-fundamental-diagram`, `PadicLocalLanglandsForGL2QpPartII:GR.4/banach-etale-multiplicity`.


### G11: Partial-operator proof repair

Supply a complete proof of CDN20 Lemma 2.18: the maximal-chain induction must justify the invariant-free complementary partial operator. Use the alternating companion coefficients of ∏(X−λ_i). The author-copy all-positive symmetric coefficients already fail in dimension two.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.4/partial-operator-extension`, `PadicLocalLanglandsForGL2QpPartII:GR.4/finite-dimensional-multiplicity`.


### G12: Morita evaluation on the arithmetic completion

Extend the parent’s compact block Morita evaluation to the noncompact p-adically complete arithmetic target via finite-K invariant pieces, including the induced compact topology over O_L[[H]], projective Hom lifting mod p^k and the completed direct-sum topology.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.5/integral-reduction`, `PadicLocalLanglandsForGL2QpPartII:GR.5/integral-block-evaluation`.


### G13: Integral family interpolation

The parent family-stability node only controls local O_L-points and an unsaturated quotient. Supply the finite coefficient-quotient integral correspondence for the stable dual lattice over R⁺, lattice independence, continuity and the claimed closed-point specialization of Π*(ρ). Do not infer arbitrary base change from that parent node.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.6/interpolated-banach-dual`.


### G14: Block-adic type comparison

Supply the p-torsion-free complete block-adic quotient of the universal unitary completion of LL(M), its reduction-surjectivity and annihilation by the integral Kisin ideal. Compare its continuous R-dual with the integral-limit Π*(ρ). This proves ideal annihilation of the whole cohomological Hom, beyond vanishing at points.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.6/type-annihilator`, `PadicLocalLanglandsForGL2QpPartII:GR.6/interpolated-banach-dual`.


### G15: Local freeness before PID rigidity

Prove both continuous dual multiplicity modules finite locally free on every PID factor and verify the joint endomorphism-algebra/Galois action, generic semisimplicity and absolutely irreducible closed fibers. Only then apply the PID rigidity lemma. Matching fibers without these hypotheses is insufficient.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.6/typed-multiplicity-structure`.


### G16: Weighted and central-character extensions

Supply the nontrivial-central-character comparison used by the whole-tower infinite-primitives containment, the weighted BGG sequence with all determinant factors, and the nonproper first-cover Hyodo–Kato comparison. DLB Remark 1.3(a) announces the extension; the restricted trivial-centre proof is not a proof for every sector.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.7/weighted-realisation`, `PadicLocalLanglandsForGL2QpPartII:GR.7/infinite-primitives`, `PadicLocalLanglandsForGL2QpPartII:GR.7/original-breuil-strauch`.


### G17: Inherited analytic Iwasawa lattice comparison

PG.5/analytic-bloch-kato-image records a lattice-comparison obligation. Establish the exact exponential-image condition with inverse cyclotomic coefficient action before claiming the free rank-two invariant description here.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.7/iwasawa-invariants`.


### G18: Filtered derived coadmissible category

Supply the bounded derived category and filtered two-term de Rham complex in the fixed ρ-sector of coadmissible D(G)-modules, with the Hom/filter comparison and exact-category enhancement. Mathlib’s generic derived categories alone do not give the locally analytic coadmissible carrier.

**Needed by:** `PadicLocalLanglandsForGL2QpPartII:GR.7/filtered-derived-realisation`.


## Ownership assignments

- Keep the issue/deliverable ID PadicLocalLanglandsForGL2QpPartII. Treat the three extractions’ longer PadicLocalLanglandsForGL2QpPartIIGeometricRealisation as an alias of this one roadmap. Do not create two continuations for the same mathematics.

- The parent already lists these geometric end statements. Replace that parent node by a reference to this geometric proof package, retaining the parent’s correspondence construction. Do not implement a second Breuil–Strauch proof. This issue does not edit parent deliverables.

- Retain the parent’s general-weight abstract quotient-independence theorem. The present target supplies the stronger equal-embedded-image and fixed-radius result in the weight-{0,1} supercuspidal case. Avoid a backward prerequisite from this proof to the parent’s geometric R30.6 target.

- Current upstream complex-coefficient projectivity must be extended to smooth L-linear fixed-central-character supercuspidals as an addition in that direction; do not reproduce generic smooth categories here.

- Keep the whole-WD-type ring and universal Galois representation in R08.3. Add the precise general PID rigidity statement there; this roadmap owns only the cohomological interpolation and comparison.


## Source corrections used by this specification

All descriptions below are in our own words. The numbering is local to this roadmap; the inherited extraction IDs identify prior records, not a claim of an independent erratum.


**E1 — DLB17, Theorem 9.9, pp. 376–380, published PDF (gap; affects a stated result).** Uniqueness of the holomorphic module structure is stated without making continuity in the function variable explicit. Require f↦T_fℓ continuous for every ℓ. Check: Agreement on the dense rational subspace determines a continuous action, but algebraic density does not determine an arbitrary action. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E7; no independent journal erratum located.


**E2 — DLB17, Theorem 1.10, p. 333; §12.1, pp. 398–399, published PDF (error; affects a stated result).** The conclusion puts every infinitely primitivable function in the pullback of O(Ω). Use containment in H⁰_dR(Σ_r)·O(Ω), retaining component constants; extend the central-character argument explicitly. Do not strengthen this containment to equality. Check: A nonconstant locally constant function c on geometric components has successive primitives c z^j/j!, but need not descend to Ω. The proof also treats each nontrivial D× type as supercuspidal, omitting nontrivial character types. Status: Component correction recorded in PAPER-DOSPINESCU-LEBRAS-17/E9; central-character issue in its E40; no independent published correction located.


**E3 — DLB17, Proof of Theorem 5.1, p. 355, published PDF (gap; affects the proof).** A globalization obtained up to unramified twist is used for the untwisted local representation. Remove the twist by the finite-order global character construction before taking the relevant isotypic part. Check: Twisting changes π and its Jacquet–Langlands type; a map for π⊗χ∘det is not yet a map for the specified π. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E16; retained as an explicit globalization contract.


**E4 — DLB17, Proposition 7.7(b), p. 365, published PDF (error; affects a stated result).** The unfiltered differential-lattice annihilator is stated with a general weight-dependent t-power. Use (N_dif⁺)^⊥=tN_dif⁺ in the weight-{0,1} normalization used here. Check: Computing residues in a basis with the normalized determinant pairing gives the threshold one; the displayed higher-weight formula is not inferred. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E19; this plan restricts the result to weights {0,1}.


**E5 — DLB17, Theorem 8.3 proof, pp. 368–369, published PDF (gap; affects the proof).** A restriction relation is used as if it already proves injectivity of restriction to Z_p. Use the Weyl chart relation and D_rig^{φ=1}=0 to eliminate a section with zero Z_p restriction. Check: A relation between two restrictions alone does not eliminate a possible section supported in the other chart. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E22.


**E6 — DLB17, Proposition 8.4 proof, pp. 369–370, published PDF (error; affects the proof).** A generation statement is used over the analytic distribution algebra at a point where only Robba-Γ generation is justified. Work over the Robba ring of Γ, check the ψ-cokernel hypotheses and descend the fixed-radius estimate through (γ−1)⁻¹. Check: Generation after a scalar extension is weaker than generation before it. The analytic Iwasawa theorem supplies the former. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E24; exact supplier extension is G4.


**E7 — DLB17, Theorem 9.7 proof, p. 376, published PDF (gap; affects the proof).** The displayed inverse calculation gives only one of the two inverse identities for a−c∂. Apply the covariance relation to g⁻¹ as well and verify the other inverse identity. Check: A one-sided inverse of an endomorphism on an infinite-dimensional space is not automatically two-sided. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E27.


**E8 — DLB17, Theorem 10.1 and §12.2, pp. 381–387, 399, published PDF (gap; affects a stated result).** A fixed supercuspidal-sector coadmissibility argument is cited for the entire unprojected function/de Rham complex. Keep the coadmissible derived assertion in the fixed ρ-sector actually proved. Check: The finite coherent isotypic bundle and its density argument do not prove coadmissibility of an unrestricted sum over all types. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E30.


**E9 — DLB17, Proposition 11.2 and Theorem 11.3, pp. 389–391, published PDF (error; affects the proof).** The twisted localized coefficient target is treated as locally constant functions before its Tate twist has been removed. Retain LP with the twisted Γ-coefficient action; pass to the locally constant model only after the Π(π,2) twist. Check: The Γ action on t⁻¹N_dif⁺/N_dif⁺ contains a nontrivial character before untwisting. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E34.


**E10 — DLB17, Proposition 11.10, pp. 395–396, published PDF (gap; affects the proof).** Infinite t-divisibility is used to infer vanishing without fixing a common annulus. Show that every divisibility statement lies in one admissible fixed-radius lattice, on both charts. Check: Robba elements allow changing annuli; an intersection of t-powers with changing radii need not be the separated intersection of a fixed lattice. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E38.


**E11 — DLB17, Remark 11.13, pp. 396–398, published PDF (gap; affects the proof).** Agreement on too few global filtration lines is used to determine a projectivity. Use three distinct global lines over P¹(L). Check: Two fixed projective points still permit a nontrivial diagonal projectivity; three distinct points determine it. Status: Recorded in PAPER-DOSPINESCU-LEBRAS-17/E41.


**E12 — CDN23, Theorem 5.15, p. 55, published PDF (misprint; affects nothing).** The displayed definition of check R uses its own checked object as the Hom input. Set check R=Hom_L^cont(R,L) with (rℓ)(s)=ℓ(rs). Check: The tensor factor is the continuous dual of the coefficient ring, as in the block-duality argument. A recursive definition supplies no such carrier. Status: Recorded in PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/E1.


**E13 — CDN23, Theorem 5.15, p. 55; Theorem 5.24(ii), pp. 59–60; footnote 32, p. 60, published PDF (gap; affects a stated result).** The local statement of the structure/factorisation does not repeat the p>3 condition used by the generic endomorphism-algebra argument. Retain p>3 in GR.6, as in Theorem 0.18(ii), p. 9. Check: The proof invokes the generic semisimplicity property under this prime restriction; the footnote explains the restriction. No proof of the excluded primes is supplied. Status: Recorded in PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/E3.


**E14 — CDN20, Lemma 2.18 proof, author PDF pp. 29–30 (not checked in publisher copy) (misprint; affects the proof).** The final companion column is formed using only positive elementary symmetric coefficients. Use alternating coefficients of ∏(X−λ_i); in dimension two set B e₂=−λ₁λ₂e₁+(λ₁+λ₂)e₂ when A e₁=e₂. Check: The all-positive dimension-two column has determinant −λ₁λ₂, whereas eigenvalues λ₁,λ₂ require determinant λ₁λ₂. The PDF page was visually checked. This changes the companion calculation, not the extension theorem. Status: new, scoped only to the GPW5 author copy; no correction located and the publisher text was inaccessible.


## Expectations

DLB Conjecture 12.4 identifies the geometric boundary germ sheaf with the unfiltered Colmez sheaf. Remark 12.3 proposes a log-rigid Hyodo–Kato enhancement recovering filtered (φ,N,G)-data. Neither is asserted as a proved theorem here.


## Sources and version scope


**DLB17.** Gabriel Dospinescu; Arthur-César Le Bras. [Revêtements du demi-plan de Drinfeld et correspondance de Langlands p-adique](https://annals.math.princeton.edu/wp-content/uploads/annals-v186-n2-p01-p.pdf). Annals of Mathematics 186 (2017), no. 2, pp. 321–411, published PDF. Accessed 2026-10-19. SHA-256 `00fb89502da84ea38738734652733ea6487e13686a8e54d32eecf4575d6b0094`.

Read: Introduction, pp. 321–334; conventions §2, pp. 334–335; actions and geometry §3, especially Lemma 3.5, pp. 341–342; uniformization interfaces in §4. §5, pp. 349–355: nonzero map and globalization; §6–§12, pp. 356–401: differential equations, Kirillov model, common quotient, functional calculus, surjectivity, injectivity, filtered realization and consequences.

Imported proof scope: The detailed geometry behind §§3–4 is an imported contract, not certified here; §13 global appendix is owned by completed cohomology.


**CDN20.** Pierre Colmez; Gabriel Dospinescu; Wiesława Nizioł. [Cohomologie p-adique de la tour de Drinfeld: le cas de la dimension 1](https://webusers.imj-prg.fr/~wieslawa.niziol/GPW5.pdf). Author PDF GPW5.pdf, 60 pages; published as JAMS 33 (2020), pp. 311–362. Primary locators below are author-page locators.. Accessed 2026-10-19. SHA-256 `2cdb1de25b5201ed46f8af6c06c19b72fdc5cbe1dd2037b4e1d24dee30155776`.

Read: Introduction and conventions, author pp. 1–8; Steinberg definitions §1.3, author pp. 15–16. §2, author pp. 19–30: fundamental-diagram multiplicities, period kernels, analytic line extensions, bounded vectors, finite length and partial-operator lemma. Selected §3 geometric interfaces: Kummer/dlog and the tautological diagram, author pp. 30–33.

Imported proof scope: Full proofs of the geometric results of §§3–5: requested from the geometry owner.

The AMS publisher PDF returned HTTP 403 on 2026-10-19. Published page numbers inherited from the extraction are secondary cross-references; source-specific checks use the author PDF and do not assert agreement of the inaccessible publisher copy.


**CDN23.** Pierre Colmez; Gabriel Dospinescu; Wiesława Nizioł. [Factorisation de la cohomologie étale p-adique de la tour de Drinfeld](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/79733067FC7CB7574B408744E4387F91/S205050862300015Xa.pdf/factorisation-de-la-cohomologie-etale-p-adique-de-la-tour-de-drinfeld.pdf). Forum of Mathematics, Pi 11 (2023), e16, 62 pages, published PDF; PDF and printed page numbers agree. Accessed 2026-10-19. SHA-256 `b007a4e37b824ca5986ac6152ed9fabcf38dde97e16d8f5f7f60756fe77d3418`.

Read: Introduction §§0.1–0.3, pp. 1–9. §5, pp. 49–60: individual multiplicities, bounded vectors, type rings, interpolation, arithmetic block decomposition and structure theorem.

Imported proof scope: The mod-p arguments of §§1–4 are imported from their existing roadmap owners, with their recorded gaps.


## Routed-result concordance

Each of the 137 routed extraction IDs has exactly one disposition. Several source items feed one mathematical target. Imports and explicit geometry contracts keep existing owners intact.

| Extraction item | Disposition | Target |
|---|---|---|

| `PAPER-DOSPINESCU-LEBRAS-17/7` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter` |

| `PAPER-DOSPINESCU-LEBRAS-17/8` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/unfiltered-nrig` |

| `PAPER-DOSPINESCU-LEBRAS-17/34` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/nonzero-comparison` |

| `PAPER-DOSPINESCU-LEBRAS-17/39` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/nontrianguline-differential-control` |

| `PAPER-DOSPINESCU-LEBRAS-17/41` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/nontrianguline-differential-control` |

| `PAPER-DOSPINESCU-LEBRAS-17/43` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-model` |

| `PAPER-DOSPINESCU-LEBRAS-17/44` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/p-finite-vectors` |

| `PAPER-DOSPINESCU-LEBRAS-17/45` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-model` |

| `PAPER-DOSPINESCU-LEBRAS-17/46` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/residue-pairing` |

| `PAPER-DOSPINESCU-LEBRAS-17/48` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality` |

| `PAPER-DOSPINESCU-LEBRAS-17/49` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality` |

| `PAPER-DOSPINESCU-LEBRAS-17/50` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image` |

| `PAPER-DOSPINESCU-LEBRAS-17/53` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image` |

| `PAPER-DOSPINESCU-LEBRAS-17/54` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf` |

| `PAPER-DOSPINESCU-LEBRAS-17/55` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf` |

| `PAPER-DOSPINESCU-LEBRAS-17/56` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf` |

| `PAPER-DOSPINESCU-LEBRAS-17/57` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image` |

| `PAPER-DOSPINESCU-LEBRAS-17/58` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/pi-zero` |

| `PAPER-DOSPINESCU-LEBRAS-17/59` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/pi-zero-irreducible` |

| `PAPER-DOSPINESCU-LEBRAS-17/60` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent` |

| `PAPER-DOSPINESCU-LEBRAS-17/61` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent` |

| `PAPER-DOSPINESCU-LEBRAS-17/62` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/homography` |

| `PAPER-DOSPINESCU-LEBRAS-17/63` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/homography` |

| `PAPER-DOSPINESCU-LEBRAS-17/64` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/resolvent-analyticity` |

| `PAPER-DOSPINESCU-LEBRAS-17/66` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action` |

| `PAPER-DOSPINESCU-LEBRAS-17/67` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action` |

| `PAPER-DOSPINESCU-LEBRAS-17/68` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/automatic-linearity` |

| `PAPER-DOSPINESCU-LEBRAS-17/74` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/surjectivity` |

| `PAPER-DOSPINESCU-LEBRAS-17/75` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/pi-two` |

| `PAPER-DOSPINESCU-LEBRAS-17/76` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/kirillov-independence` |

| `PAPER-DOSPINESCU-LEBRAS-17/77` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/kirillov-independence` |

| `PAPER-DOSPINESCU-LEBRAS-17/78` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/filtration-position` |

| `PAPER-DOSPINESCU-LEBRAS-17/79` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/smooth-kernel` |

| `PAPER-DOSPINESCU-LEBRAS-17/80` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/filtration-position` |

| `PAPER-DOSPINESCU-LEBRAS-17/81` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/injectivity` |

| `PAPER-DOSPINESCU-LEBRAS-17/82` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/analytic-realisation` |

| `PAPER-DOSPINESCU-LEBRAS-17/83` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation` |

| `PAPER-DOSPINESCU-LEBRAS-17/84` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.7/weighted-realisation` |

| `PAPER-DOSPINESCU-LEBRAS-17/85` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.7/original-breuil-strauch` |

| `PAPER-DOSPINESCU-LEBRAS-17/86` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.7/iwasawa-invariants` |

| `PAPER-DOSPINESCU-LEBRAS-17/87` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.7/infinite-primitives` |

| `PAPER-DOSPINESCU-LEBRAS-17/88` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.7/filtered-derived-realisation` |

| `PAPER-DOSPINESCU-LEBRAS-17/isotypic-parts-duals-coefficients` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter` |

| `PAPER-DOSPINESCU-LEBRAS-17/group-lie-algebra-notation-left-actions` | import | `PadicLocalLanglandsForGL2Qp:R30.1/gl2qp-subgroups` |

| `PAPER-DOSPINESCU-LEBRAS-17/quaternion-algebra-D` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/level-types` |

| `PAPER-DOSPINESCU-LEBRAS-17/fields-and-galois-groups` | import | `tauceti:TauCetiRoadmap/LocalGaloisGroups` |

| `PAPER-DOSPINESCU-LEBRAS-17/remark-1-3a-central-character` | requested | `PadicLocalLanglandsForGL2QpPartII/G16` |

| `PAPER-DOSPINESCU-LEBRAS-17/theoreme-8-8-map-from-Pi-pi-0` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/nonzero-comparison` |

| `PAPER-DOSPINESCU-LEBRAS-17/dospinescu-kernel-P-nabla-finite` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/nontrianguline-differential-control` |

| `PAPER-DOSPINESCU-LEBRAS-17/reduction-mod-p-of-Pi-V` | requested | `PadicLocalLanglandsForGL2QpPartII/G8` |

| `PAPER-DOSPINESCU-LEBRAS-17/mdr-pi-filtrations-and-Nrig-pi-dif` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/unfiltered-nrig` |

| `PAPER-DOSPINESCU-LEBRAS-17/bijection-V-pi-Proj-MdR` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter` |

| `PAPER-DOSPINESCU-LEBRAS-17/identifications-5-for-V-in-V-pi` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/unfiltered-nrig` |

| `PAPER-DOSPINESCU-LEBRAS-17/remarque-7-2-a-self-orthogonal` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality` |

| `PAPER-DOSPINESCU-LEBRAS-17/remarque-7-2-b-distributions-of-stabilisers` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality` |

| `PAPER-DOSPINESCU-LEBRAS-17/remarque-7-5-infinite-slope` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/p-finite-vectors` |

| `PAPER-DOSPINESCU-LEBRAS-17/lp-spaces-kirillov-p-action` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-functions` |

| `PAPER-DOSPINESCU-LEBRAS-17/remarque-7-10-classical-kirillov` | import | `PadicLocalLanglandsForGL2Qp:R30.4/kirillov-model` |

| `PAPER-DOSPINESCU-LEBRAS-17/theoreme-7-11-smooth-vectors` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality` |

| `PAPER-DOSPINESCU-LEBRAS-17/dospinescu-no-unipotent-invariants` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.1/kirillov-duality` |

| `PAPER-DOSPINESCU-LEBRAS-17/theoreme-8-1-colmez-independence` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/common-image` |

| `PAPER-DOSPINESCU-LEBRAS-17/proposition-8-4-b-G-stability` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/nrig-projective-line-sheaf` |

| `PAPER-DOSPINESCU-LEBRAS-17/cor-9-3-cokernel-of-u-plus` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent` |

| `PAPER-DOSPINESCU-LEBRAS-17/lemma-9-5` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/closed-unipotent` |

| `PAPER-DOSPINESCU-LEBRAS-17/prop-9-6-b` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/homography` |

| `PAPER-DOSPINESCU-LEBRAS-17/lemma-9-8` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/homography` |

| `PAPER-DOSPINESCU-LEBRAS-17/lemma-9-11` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/resolvent-analyticity` |

| `PAPER-DOSPINESCU-LEBRAS-17/colmez-dospinescu-radius-filtration-use` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/resolvent-analyticity` |

| `PAPER-DOSPINESCU-LEBRAS-17/prop-9-14` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action` |

| `PAPER-DOSPINESCU-LEBRAS-17/prop-9-15-a` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action` |

| `PAPER-DOSPINESCU-LEBRAS-17/prop-9-15-b` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.2/holomorphic-action` |

| `PAPER-DOSPINESCU-LEBRAS-17/pi-pi-0-dual-locally-free` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/analytic-realisation` |

| `PAPER-DOSPINESCU-LEBRAS-17/coadmissibility-O-Sigma-n` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/surjectivity` |

| `PAPER-DOSPINESCU-LEBRAS-17/prop-11-1` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/pi-two` |

| `PAPER-DOSPINESCU-LEBRAS-17/xi-iota-V-alpha` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/kirillov-independence` |

| `PAPER-DOSPINESCU-LEBRAS-17/i-jn-on-Pi-pi-0-and-dif-pairing` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/kirillov-independence` |

| `PAPER-DOSPINESCU-LEBRAS-17/lemma-11-4` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/kirillov-independence` |

| `PAPER-DOSPINESCU-LEBRAS-17/lemma-11-5` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/kirillov-independence` |

| `PAPER-DOSPINESCU-LEBRAS-17/lemma-11-8` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/smooth-kernel` |

| `PAPER-DOSPINESCU-LEBRAS-17/remark-11-11` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/injectivity` |

| `PAPER-DOSPINESCU-LEBRAS-17/remark-12-1` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.7/infinite-primitives` |

| `PAPER-DOSPINESCU-LEBRAS-17/remark-12-3` | expectation | `boundary-and-hyodo-kato-expectations` |

| `PAPER-DOSPINESCU-LEBRAS-17/dospinescu-31-th-8-4-3` | requested | `PadicLocalLanglandsForGL2QpPartII/G3` |

| `PAPER-DOSPINESCU-LEBRAS-17/boundary-sheaf-F-pi` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.7/boundary-sheaf` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/0.2-thm-0-2` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/galois-socle` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/0.2-remark-0-3` | scope | `PadicLocalLanglandsForGL2QpPartII:GR.4/galois-socle` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/0.2-mPi-knight` | import | `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.1/scholze-functor` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/0.4-Zbracket` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/isotypic-dual-adapter` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/0.5-VML` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/0.5-prop-0-9` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.3/de-rham-realisation` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/0.5-deduction` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/galois-socle` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/1.3-steinberg` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/steinberg-comparison` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-cor-2-1` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/hom-fundamental-diagram` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-kummer-symbols` | requested | `PadicLocalLanglandsForGL2QpPartII/G7` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-HM-HC` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity-spaces` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-prop-2-4` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/hom-fundamental-diagram` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-prop-2-5` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-remark-2-6` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-lemma-2-7` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/period-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-WML` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/analytic-line-extension` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-prop-2-9` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/analytic-line-extension` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.1-prop-2-10` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/analytic-line-extension` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-bounded` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/orbit-bounded` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-prop-2-12` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/etale-bounded` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-cor-2-13` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/bounded-duals` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-thm-2-15` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/finite-dimensional-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-lemma-2-17` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/finite-dimensional-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-lemma-2-18` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/partial-operator-extension` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-cor-2-16` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/galois-socle` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-20-B/2.2-O-no-bounded` | requested | `PadicLocalLanglandsForGL2QpPartII/G7` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-VML` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/period-line-parameter` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-14` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/galois-socle` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-16` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/banach-etale-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-kisin-rings` | split-import | `PadicLocalLanglandsForGL2QpPartII:GR.6/interpolated-banach-dual` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-1` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.6/factorisation` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-2` | import | `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5/finite-length` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-3` | import | `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.6/geometric-multiplicity-theorem` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-4` | requested | `PadicLocalLanglandsForGL2QpPartII/G7` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-5` | requested | `PadicLocalLanglandsForGL2QpPartII/G7` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-7` | import | `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.6/multiplicity-finiteness-general-F` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-9` | import | `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.5/almost-all-vanishing` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-proof-strategy` | import | `ScholzeFunctorAndModpCohomologyOfTheLubinTateTower:SZ.4/key-local-proposition` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-cor-0-11` | import | `ModpRepresentationsOfGL2OverLocalFields:MP.1/cosocle-length` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/0-thm-0-17` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.6/typed-multiplicity-structure` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-PhiN-sets` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.0/level-types` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-thm-5-1` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/galois-socle` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-bounded-vectors` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/bounded-duals` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-prop-omega` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/banach-differential-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-thm-5-8` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/banach-etale-multiplicity` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-thm-5-9` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.4/galois-socle` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-thm-fami5` | import | `LocalGaloisDeformationRings:R08.3/weil-deligne-type-ring` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-def-Pi-rho` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.6/interpolated-banach-dual` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-thm-factor10` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.6/factorisation` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-block-decomposition` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.5/integral-block-evaluation` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-remark-factor4` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.5/level-and-central-character` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/5-thm-factor5` | planned | `PadicLocalLanglandsForGL2QpPartII:GR.6/typed-multiplicity-structure` |

| `PAPER-COLMEZ-DOSPINESCU-NIZIOL-23/in-fundamental-diagram` | requested | `PadicLocalLanglandsForGL2QpPartII/G7` |
