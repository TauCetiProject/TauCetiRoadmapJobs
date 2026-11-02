# Repair report: excursion operators and the spectral action

## F01 (P1) — not actionable in this package: package identity and base creation require a maintainer decision

Applied the local changes: “spectral action” → “excursion centre map Ψ_G of §0.0”; Chapter X’s universal spectral action is explicitly unused. The base is absent on main, at indexed heads and in packages. Renaming the package or creating a base changes files and ownership outside this job. The maintainer must decide; §0.0 retains the geometric specialization.

## F02 (P2) — applied

The normalized-Bernstein-Levi gap’s equality in I(M) → equality of traces on every irreducible smooth M(E)-representation, in both README and the plan’s gaps. Added GL₂ checks with values 6, 0 and 3. SmoothRepresentationsOfLocalGroups can state these using §SR.0.4; the orbital quotient remains with EndoscopicTransferAndUnitaryTraceComparison. Evidence: H26 line 192 and line 207.

## F03 (P2) — applied

Boundedness plus compact support → compact elliptic orbital-support closure alone, in README and gaps. Imported EndoscopicTransferAndUnitaryTraceComparison §2.1’s normalized orbital-integral bound, including the finite central-quotient measure factor. Repaired §3.2’s route and added torus, zero-function and noncompact-support controls. Evidence: that supplier’s named boundedness target; H26 line 484, line 486 and line 489.

## F04 (P2) — applied

Compound inversion/discriminant/transfer-duality gap → orbital inversion alone, with a quotient-integral deduction and locator. Transfer duality joins stable-inner-character-transfer; discriminant invariance is derived in §2.5 from geometric conjugacy. Repointed §§0.1–0.5, 3.2, 4.1, 6.1–6.2 and Layer 6 dependencies; added explicit inversion and discriminant computations. Evidence: HKW22 line 891; H26 line 398, line 597 and line 632.

## F05 (P2) — applied

One BunG gap → basic-invariant-comparison, weight-fibre-classes and basic-levi-lift, with separate supplier sections and source locators. Updated all contract, route, Needs and layer-dependency uses in Layers 1, 2, 5 and 6. Replaced the undefined spectral-centre compatibility by the L-group identification. Added integral torsion and GL₂/D× weight checks. Evidence: HKW22 line 631, line 649; FU25 line 955.

## F06 (P3) — applied differently

Defined Z_spec(G), then separated §0.0 into (a)–(e), each with its own Needs. Continuity now specifies the excursion tuple and relatively discrete endomorphism topology. The product uses disjoint clopen wild-kernel strata: the overlapping finite-wild pieces themselves cannot be product factors. Added coordinate and wild-inertia checks. Evidence: LanglandsParameterStacks §LP1.2; FS24 line 1276, line 12667 and line 12725.

## F07 (P3) — applied

Added HS1.8–HS1.9, HS3.10 and HS4.7 to the geometric contracts and relevant §0.0 Needs; recorded HS4.6’s torsion comparison, with the passage to characteristic zero. Added EndoscopicTransferAndUnitaryTraceComparison §1.6 and BunGAndNewtonStrata §1.23 to §5.1. Removed duplicate §1.18 in §§1.4 and 5.1. All cited supplier sections exist at their indexed heads and precede this package.

## F08 (P3) — applied differently

Imported §SR.1.3’s centre-corner limit; narrowed the distribution gap to its distribution realization and the shriek gap to its trace identity. §§1.1 and 1.4 derive finite length from HS3.8 and exact smooth duality with injective bidual evaluation. Compactness alone does not imply smooth reflexivity, so that suggested sentence was replaced. Evidence: §SR.0.4, §SR.0d.2; HKW22 line 3018.

## F09 (P3) — applied

Kaletha-packet target wording → the general atomic-character implication, with the packet case identified only as H26’s instance. Scope agrees. Deleted Source issues and moved the precise FKS theorem limitations into its reference; adjusted manifest uses. No packet construction or atomicity prerequisite is asserted. Evidence: H26 line 79; FKS21v2 line 993, line 1281 and line 1299.

## F10 (P3) — applied

Attributed the quantitative deduction to FU25’s product and degree bounds, and H26’s use of the rate, including the Lean docstring. Corrected all editable HKW Lemma 3.1.1 locators to p. 13 and FU Lemmas 3.2.1–3.2.3 to p. 20; synchronized source metadata. Evidence: FU25 line 719, line 794, line 852 and line 1085; HKW22 line 566 and line 609.

## Verification outcomes

- Required elaboration: from the content checkout, `lake env lean` on `packages/ExcursionOperatorsAndSpectralActionPartII/Suggested.lean`, using the required absolute argument, exited 0. Its only diagnostic was at line 44: a warning that the declaration uses `sorry`. No module object was missing, and no build was needed.
- Elaborated signatures: appended `#check @TauCetiRoadmap.ExcursionOperatorsAndSpectralActionPartII.weightPushforward_sum_abs_sub_uniform_le` to a scratch copy and elaborated once successfully from the content checkout. Exit 0, the same single expected warning, and the full elaborated type printed. Compared it with README §2.4(a): field, characteristic zero, algebraic closedness, Lie algebra, Killing semisimplicity, finite dimension, Cartan, base, finite abelian quotient, surjectivity, m≥1, finite-dimensional module, nonzero highest-weight vector and generation all remain present. No binder changed or disappeared. The theorem signature and proof placeholder are byte-identical to their previous text; only its source docstring changed.
- The signature probe was initially launched from the board directory and exited 1 with `error: no default toolchain configured`. It was rerun from the required content directory, with the successful outcome above. No toolchain or configuration was changed.
- Dependency check, with `--movable`: exit 0. Exact output:

  ```text
  depcheck: 52 roadmaps, 589 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line.
- Citation resolution: exit 0; no unresolved cross-roadmap citations. The resolver says it did not check external Lean names because its own lookup did not find the pinned packages. Those names were checked directly at the actual supplied pins, as recorded below. The earlier lead `TauCeti.IsStableDistribution` is a planned name in EndoscopicTransferAndUnitaryTraceComparison §2.4, not a claim of a pinned declaration.
- Structural checks: all 14 plan gaps have exactly matching supplier/needs sentences under Exact supplier contracts; every referenced gap has a contract; no orphan contract or plan gap. Both TOML files and the JSON parse successfully. All plan data outside the top-level gaps value, including the surrounding bytes, are unchanged. `git diff --check` passes.
- Arithmetic fixtures were recomputed with exact rational arithmetic: m=0,1,2 in type A₁, quotients ℤ/2 and ℤ/3, GL₂ discriminants and a nonabelian S₃ convolution test. Their values appear in the adversarial table.
- No additional gate failures were listed in the brief. No Lean target or definition was added or deleted; no acceptance-test padding was introduced.

## Source and ownership audit

Read the cached, legally retrieved versions of all five manifest works. No new work was needed, no source was unavailable, and no reference request was created. Locators use the recorded versions: FS24 arXiv v4; FU25 arXiv v1; FKS21v2 arXiv v2; the published H26 and HKW22. The HKW22 manifest now includes §3.4, p. 19, for the inversion deduction. No source text was copied into the package.

Read main at e9512ca, including the shape and ownership of `TauCetiRoadmap/LocalGaloisGroups/README.md`, `TauCetiRoadmap/ComplexTori/README.md` and `TauCetiRoadmap/ReductiveGroups/README.md`, and the LieHighestWeight Layer 6 interface. The main pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039.

Used the required roadmap index, grep and show commands for object ownership and citation resolution. The readable supplier heads are SmoothRepresentationsOfLocalGroups and ReductiveGroupsPartII at 1383569, EndoscopicTransferAndUnitaryTraceComparison at 40d60b6, LanglandsParameterStacks at 3e9dc9d, GeometricSatakeAndFusion at 0652974, BunGAndNewtonStrata at 0d1e747 and HeckeStacksAndLocalShtukas at 48d21c7. Mechanically resolved all 45 cited section headings in the four supplier documents SR, HS, EndoscopicTransferAndUnitaryTraceComparison and BunGAndNewtonStrata, and read the relevant RG2 and GS4 interfaces and EndoscopicTransferAndUnitaryTraceComparison §1.2(a) separately. The invariant comparison explicitly maps the cohomological invariant into the torsion part of B(T), so its two sides have the same carrier. Named imports and conditions were compared with those sections, including HS4.6’s torsion-only scope. Searches included main, indexed open heads and board packages, by excursion actions, stable orbital integrals, invariant fibres, highest weights and centre distributions. No new generic construction is taken from an unidentified owner: Z_spec is imported from LP1.2; the local geometric specialization remains this package’s §0.0, as LP2e.15 and HS4.7 expressly leave that application to consumers. The refined gaps remain requests to their named suppliers, not invented supplier targets.

The exact base lookup returned “no roadmap ExcursionOperatorsAndSpectralAction on main or in an open roadmap pull request”; the directory and board searches agree, and ORDER contains only the PartII entry. The fixed-string regular-supercuspidal search returned no owner. Neither absence authorizes creating a base or a packet-construction layer in this package.

Pinned declarations were checked by file and definition, not by the resolver’s missing-package fallback:

| Imported declaration | Pinned file and line | Relevant limit of the interface |
|---|---|---|
| Finsupp; Finsupp.mem_support_iff | Mathlib/Data/Finsupp/Defs.lean:88,158 | Finite support and a zero; no representation interpretation |
| Submodule; Subalgebra | Mathlib/Algebra/Module/Submodule/Defs.lean:39; Mathlib/Algebra/Algebra/Subalgebra/Basic.lean:29 | Algebraic subobjects |
| Finset.expect; Fintype.expect_eq_sum_div_card | Mathlib/Algebra/BigOperators/Expect.lean:60,371 | Empty expectation is total; class sets here are nonempty |
| AddChar.complexBasis | Mathlib/Analysis/Fourier/FiniteAbelian/PontryaginDuality.lean:125 | Finite abelian group and complex coefficients |
| AddChar.wInner_cWeight_eq_boole | Mathlib/Analysis/Fourier/FiniteAbelian/Orthogonality.lean:58 | Normalized counting inner product |
| AlgHom.range; rangeRestrict; rangeRestrict_surjective | Mathlib/Algebra/Algebra/Subalgebra/Basic.lean:545,582,588 | Surjection only onto the range |
| Ideal.quotientKerEquivRange | Mathlib/RingTheory/Ideal/Quotient/Operations.lean:819 | Specified algebra/ring hypotheses and kernel |
| MeasureTheory.norm_integral_le_of_norm_le_const | Mathlib/MeasureTheory/Integral/Bochner/Basic.lean:999 | Finite restricted measure and nonnegative bound |
| TauCeti.ExactK0; ExactK0.lift | TauCeti/CategoryTheory/GrothendieckGroup/Exact.lean:163,324 | Supplied exact structure and additive invariant |
| TauCeti.AbelianK0.homologyEulerChar | TauCeti/CategoryTheory/GrothendieckGroup/EulerCharacteristic.lean:307 | Finite cohomology-degree support |
| TauCeti.IsHighestWeightVector | TauCeti/Algebra/Lie/HighestWeight/Basic.lean:122 | Explicitly requires v≠0, its weight equation and positive-root annihilation |
| TauCeti.formalCharacter | TauCeti/Algebra/Lie/Weights/FormalCharacter.lean:156 | Generalized weight multiplicities, with finite dimension supplied here |
| TauCeti.twoWeylVector | TauCeti/LinearAlgebra/RootSystem/Weyl/Vector.lean:102 | Sum over the chosen positive roots |
| TauCeti.formalCharacter_mul_weylDenominator_eq_weylNumerator | TauCeti/Algebra/Lie/HighestWeight/Weyl/Character.lean:319 | Highest-weight generation and finite Weyl-group enumeration |
| TauCeti.finrank_eq_prod_coweightPairing_div | TauCeti/Algebra/Lie/HighestWeight/Weyl/Dimension.lean:113 | Same representation hypotheses and positive Weyl-vector denominators |

The headline’s native carriers exist at these pins. The missing geometric, smooth-character and stable-orbital carriers for the other headlines remain identified in the Lean module docstring. No new declaration borrows a supplier’s fully qualified name.

## Adversarial mathematics pass

Each row records a statement or definition and computed values. Finite coefficient-space fixtures test the indicated linear operation; they do not replace the actual reductive-group theorem. Source locators and supplier ownership above supply the nonformal inputs.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Standing field and coefficient convention | E=ℚ₂, ℓ=3; q=1; ℓ=p | q=2, ℓ−p=1; q=1 contradicts q≥2; ℓ−p=0 violates ℓ≠p | Small primes included; excluded inputs receive no theorem | None |
| Transport through ι | scalars 0,1,2 and 2⁻¹ | ι(0)=0, ι(1)=1, ι(2)=2, ι(2⁻¹)=1/2 | Field operations preserved; no complex continuity inferred | None |
| Z_spec definition | GL₁ unramified locus; two disjoint strata | ring ℚ̄_ℓ[t,t⁻¹], evaluation (t,t⁻¹)=(2,1/2); two strata give idempotents (1,0),(0,1) | Ring and product factors specified | Defined; separated disjoint strata |
| Basic convolution evaluation | C₃, generator t, f(t)=1,f(t⁻¹)=0 | (δ_t∗f)(1)=0=f(t⁻¹); δ₁(δ_t∗f^vee)=1=f(t) | Inversion distinguished | None |
| Product pairing on a nonabelian group | S₃, y=δ₁+sum of transpositions, z=sum of 3-cycles, f=δ_(12) | (y∗z)(f)=2=y(z^vee∗f) | Central convolution convention survives noncommutativity | None |
| Normalized induction | upper Borel GL₂, q=2, torus values 2,3 | δ_B(diag(ϖ,1))=1/2; eigenvalue=5√2, square 50; inverted modulus gives square 25/2 | Half-modulus fixed | None |
| Geometric reciprocity | rank-one unramified value 2 | geometric Frobenius 2; inverse Frobenius 1/2 | Reciprocal convention detected | None |
| Kottwitz sign and duality | GL₂/D×, μ=(1,0), value 3 | exponent 1, sign −1; transfer −3; doubled exponent gives +3 | Full positive-root sum used once | None |
| Hecke label direction | torus degree d, weights ±1 | degree d+1 or d−1; inverse basic labels a−1 or a+1 | Equal dimensions do not identify directions | None |
| §0.0(a) finite ramification | zero compact object; unramified GL₁ datum | all T_V(0)=0; wild inertia acts as 1 on unramified one-leg data, and tensor powers still 1 | Full wild subgroup works in both examples | Explicit Checks |
| §0.0(b) centre map and Hecke commutation | unit datum; zero creation; scalar 2 | unit↦1, zero creation↦0; T(2A)=2T(A) | Zero map excluded by the unit | Separated target and Needs |
| §0.0(b) multiplicativity | GL₁ coordinate t and its inverse at 2 | evaluation(tt⁻¹)=1=2·1/2 | Map respects the specified coordinate product | Ring Check |
| §0.0(c) basic restriction | GL₁ b=1 and degree-one b | J_b=GL₁, twist 2ρ−2ρ=0; both evaluations (2,1/2), units 1 | Intrinsic and restricted maps agree | Separated target |
| §0.0(d) parabolic compatibility | GL₂ and T, coordinate trace at (2,3) | r Ψ(trace)=5=Ψ_T(res trace); spherical value 5√2 | Extra uncancelled twist fails | Separated target; torsion route made explicit |
| §0.0(e) excursion continuity | unramified GL₁, Frobenius exponent n | on its inertia coset value is constantly 2ⁿ; n=0,1,−1 gives 1,2,1/2 | Locally constant witness in supplied topology | Replaced vague continuity input |
| §0.0(e) semisimple uniqueness | diag(2,3), diag(3,2), diag(2,4); unipotent vs identity | invariants (5,6),(5,6),(6,8); unipotent and identity both (2,1) | Full invariants and semisimplicity necessary | None |
| Distribution-realization gap | point group; torus δ_t | limit centre ℂ and distributions ℂ; (δ_t∗f^vee)(1)=f(t)=δ_t(f) | Pairing determines the distribution realization | Narrowed to missing realization |
| Normalized-Levi gap, induction action | GL₂/T, z scalar 2, induced trace 3 | z·iχ has trace 6=i(2χ) | Ordinary representation-theoretic statement | Removed orbital quotient |
| Normalized-Levi gap, constant term | same f; f=0; z=1 | traces 6=6, 0=0, 3=3 | Statement statable by smooth supplier | Added Check |
| §0.1 stable submodule | U=span(1,−1) in ℂ² | (a,b)(1,−1)=a−b; (2,2) gives 0, (1,0) gives 1 | Correct annihilator | None |
| §0.1 zero, linearity and injection | stable vectors (2,2),(3,3); scalar 2 | sum (5,5), multiple (4,4), zero (0,0); each pairs to 0 | Submodule APIs compatible | None |
| §0.1 stable identity | torus; unstable u on general G | U(T)=0, δ₁(0)=0; supplied stable δ₁ gives u(1)=0 | Identity permitted | None |
| §0.2 preservation subalgebra | U=span(1,−1), diag(a,b) | image (a,−b) lies in U iff a=b; diag(1,0) gives (1,0) | Tests preservation in both directions | None |
| §0.2 algebra laws | scalar operators 0,1,2,3 | 0u=0, 1u=u, (2+3)u=5u, (2·3)u=6u | Zero, unit, addition and product preserve U | None |
| §0.2 GL_n boundary | strongly regular GL₂; null f | rational stable-class cardinality 1; every Θ_π(z∗f)=z_π·0=0 | Kazhdan density supplies null output | None |
| Inversion gap | torus, f(t)=1,f(t⁻¹)=0 | SO_t(f^vee)=0=SO_(t⁻¹)(f); inverse input gives 1=1 | Equality holds in both directions | Narrowed; explicit quotient-integral proof |
| §0.3 inclusion and module law | torus δ₁; scalar-2 operator and stable (3,3) | y∗δ₁=y; product gives (6,6), pairing with (1,−1) is 0 | Stable product and very-stable inclusion consistent | Added inversion Check |
| §0.4 character criterion | diag(2,2) vs diag(1,0) | first preserves U and dual line; second gives (1,0) from both (1,−1) and (1,1) | Both directions reject same operator | Repointed Needs |
| §0.5 faithful action | scalar line and torus | scalar 2 on 1 gives 2≠0; scalar 0 gives 0; z∗f^vee=0 implies z(f)=0 | Zero is the unique annihilating scalar | Repointed Needs |
| §1.1 Euler definition | cohomology dimensions (2,1); shifts 1 and 2 | Euler 2−1=1; shift values −1,+1 | Sign and boundedness used correctly | Finite-length route clarified |
| §1.1 linearity, unit and zero | μ=0; two rank-one inputs; zero | T₀(1)=1, T₀(1+1)=2, T₀(0)=0 | Rules out zero/constant assignment | None |
| Finite length by smooth duality | finite-length coefficient object W, length r; shifts | length(W∨)=r, W→W∨∨ injective; r=1 gives 1≤1, r=0 gives 0≤0; degree j dualizes to −j | Finite-length dual bounds original cohomology and detects zero degrees | Replaced compact-reflexivity suggestion |
| Compactness alone, negative control | GL₁, V=c-Ind_(𝒪×)^(E×)1≃ℂ[ℤ] | V^K=ℂ^(ℤ), dimension infinite; nonrepresentable bidual functional has F(δ_n)=0 for all n but F(1)=1 | Compact generator need not be smoothly reflexive | Kept out of the repaired proof |
| Shriek trace gap | μ=0,b=1; GL₂/D× | T₀Θ=Θ; sign-weight sum −(1+1)·3=−6 | Formula still needed independently of finite length | Narrowed to trace identity |
| §1.2 self-Hecke commutation | unit μ; zero; diagonal vs swap model | identity gives zΘ=zΘ; zero gives 0=0; diag(1,2) and swap give (1,2) vs (2,1) on (1,1) | Geometric commutation is essential | None |
| §1.3 induced preservation | induced elliptic value 0; stable value 3, dim 5 | T(0)=0; T(3)=15; correction 15−15=0 | Only elliptic correction asserted zero | Fibre gap repointed |
| §1.4 forward and reverse definitions | μ=0,b=1; zero; shifted unit | forward/reverse (1,1), (0,0), (−1,−1) | Unit and Euler laws agree | Finite-length route clarified |
| §1.4 dual-label distinction | GL₁, μ=1 | forward weight −1 and reverse +1; both dimensions 1 | Does not identify the two kernels | None |
| §1.5 inner commutation | common scalar 2 and operator scalar −2 | both composites −4; wrong target scalar 3 gives −6 | Same spectral action required | None |
| Weight-fibre gap | elliptic quadratic torus in GL₂, μ=(1,0), b giving D× | (1,0)↦1 and (0,1)↦1 in coinvariants; exactly one class, total multiplicity 2 | Coinvariant image and multiplicities retained | Split gap; added Check |
| §1.6 stable inner formulas | GL₂/D×, stable value 3 | forward −2·3=−6; reverse −2·3=−6; trivial modification +1·3=3 | Sign and dimensions agree in both directions | Fibre gap repointed |
| §2.1 arithmetic average | values 2,6; singleton 2; empty set | (2+6)/2=4; singleton 2; empty expectation 0 | Nonempty actual class set excludes junk value | None |
| §2.1 projection and linearity | average of (2,6), then average again; zero | (4,4) averages to 4; zero to 0; unequal weights give 5 | Uniform weights and idempotence fixed | None |
| §2.2 sequence and dimension | root rank 0; A₁ m=0,1,2 | μ=0,d=1 for rank 0; A₁ μ=0,2α,4α and d=1,5,9 | Empty product and factors correct | None |
| §2.2 group central weights | GL₂ det vs trivial module | derived Lie weight 0 for both; central values z² vs 1 | Supplied full group character needed | None |
| §2.2 dual-root convention | G of type B₂ | G-root sum (3,1); coroot/dual-root sum (4,2); μ_m=(8m,4m) | Wrong root datum gives a different sequence | None |
| §2.2 self-duality and denominator | A₁ highest weight 4 | weights 4,2,0,−2,−4 reverse to same multiset; Weyl-vector coroot pairing 1 | Positive denominators; dual representation agrees | None |
| §2.2 basic acceptability | GL₂ μ=(1,0) vs (1,−1) | κ=1 vs 0; slopes (1/2,1/2) for first; b=1 has κ=0 | Full integral κ cannot be discarded | None |
| Invariant-comparison gap | quadratic norm-one T in SL₂; torus GL₁ | H_g=ℤ/2 has classes 0,1, both Newton 0; GL₁ H_g=ker(ℤ→ℤ)=0 | Rationalization loses one class | Split gap; integral Check |
| §2.3 coefficient definition and positivity | A₁ m=1,2; torus | masses (3/5,2/5),(5/9,4/9),(1); all ≥0 | Uses actual weight fibres | Gap repointed |
| §2.3 mass and representative independence | same finite multisets with opposite enumeration | sums 1,1,1; swapping labels permutes (3/5,2/5) but not total | Nonempty fibres and multiplicities accounted for | None |
| §2.3 normalized Hecke evaluation | class values (2,6) | m=1 gives 18/5; m=2 gives 34/9 | Agreement with finite kernel | None |
| §2.4(a) native headline | A₁ quotient ℤ/2, m=1,2 | ℓ¹ errors 1/5≤1/4 and 1/9≤1/8 for C=1/4 | Bound and quantifier order consistent | Source attribution corrected |
| §2.4(a) finite quotient beyond parity | A₁ quotient ℤ/3, m=1,2 | masses (1/5,2/5,2/5), error 4/15; then (1/3,1/3,1/3), error 0 | No parity-specific theorem | None |
| §2.4(a) excluded m=0 | A₁ quotient ℤ/2 | masses (1,0), error 1; Lean’s total C/0=0 | Positive-m hypothesis necessary | None |
| §2.4(a) excluded nonsurjection | φ(α)=0 in ℤ/2 | masses (1,0), error 1 for all m; C/m<1 at m>C | Surjectivity necessary | None |
| §2.4(a) rank-zero and zero-module boundary | Q=0; A trivial; M=0 | surjectivity forces |A|=1; generated highest-weight module dimension 1, error 0; zero module has no v≠0 | No denominator can vanish | None |
| §2.4 Fourier deduction | A₁, χ(α)=−1; χ(α)=ζ₃ | raw sum at m=1 is 1 or −1; normalized absolute value 1/5; root-factor bounds 1 and 2/√3 respectively | One bounded factor gives O(1/m) | Attribution made a local deduction |
| §2.4(b) group-uniform estimate | singleton torus; A₁ two-class fixture | errors 0 and 1/(4m+1); finite maximum of constants 0,1/4 is 1/4 | Finite torus types supply uniformity | Split arithmetic inputs named |
| Discriminant invariance in §2.5 | GL₂/ℚ₅, diag(2,3), swap and inverse; torus | all three products −1/6, norm 1; empty product 1 | Geometric conjugacy preserves determinant | Proof and Check added |
| §2.5 weighted averaging | A₁ values 2,6 and discriminant norm 1 | m=1 error 2/5; m=2 error 2/9; weights divide by 5 and 9 | Matches kernel and average | Invariant-fibre reference updated |
| Elliptic-torus finiteness gap | torus G=T; quadratic elliptic torus | one G-conjugacy type for G=T; stable class is singleton there | Finiteness differs from compactness of a full orbit | Locator corrected |
| §3.1 compact stable representatives | torus compact C; conjugates diag(1,2) in GL₂ | U=C suffices for torus; conjugating by [[1,x],[0,1]] gives off-diagonal x, unbounded as |x|→∞ | Compact representatives do not imply compact orbit | None |
| Orbital-support gap | G=GL₁, f=1_(𝒪×), f=0, f=1 | nonzero supports 𝒪×, ∅, E× respectively; first two compact, third not in H(G) | Compact support hypothesis discriminates | Narrowed gap; Check added |
| Imported orbital bound and measure factor | torus, f=1_(𝒪×), central quotient factor c>0 | normalized orbital values 1 or 0; H26 values c or 0; discriminant 1 | Multiplication by finite c preserves boundedness | Supplier import explicit |
| Stable-projection gap | two values 2,6; stable values 4,4 | P_st gives 4; P_st(4)=4; remainder (−2,2) has mean 0 | Required elliptic averaging identified | None |
| §3.2 integral estimate | compact piece measure 2, orbital bound 3, error 5/m | norm ≤2·3·5/m=30/m; zero test gives 0 | Two half-discriminants give bounded integrand | Route repointed |
| §3.3 rank-zero boundary | torus; unstable function 0 | U=0 and z∗0=0 | General theorem includes rank zero | None |
| §3.3 limiting argument | constant c=1 and bound 30/m | at m=31, 1>30/31; constant satisfying every bound must be 0 | Does not assume stability of z·Θ | None |
| Kazhdan-cuspidal gap | torus and zero function | no proper-Levi term; I_cusp=I, noncuspidal annihilator 0; all four evaluations on 0 equal 0 | No mistaken proper-Levi rank-zero requirement | None |
| Arthur-decomposition gap | torus; ordinary elliptic scalar 2 | single summand; 2·3=6 remains in it; induced span 0 | Ordinary invariance separated from later stable theorem | None |
| Unstable-separation gap | torus; U=span(1,−1) dual fixture | torus unstable space 0; stable functional (1,1) evaluates (1,−1) to 0 | Annihilator criterion matches definitions | None |
| §4.1 atomic definition | torus singleton; stable line span(1,2) | singleton support size 1; every nonzero line vector has support {1,2}; zero has empty support | Nonzero condition and arbitrary coefficients retained | Needs repointed |
| §4.1 minimality negative controls | stable plane span((1,2,0),(1,1,1)) | (1,1,1) has support size 3; stable (1,2,0) has size 2; no proper 0/1 subsum lies in the plane | Packet-subsum stability is insufficient | None |
| §4.2 scalar rigidity | atomic (1,2), eigenvalues (3,3) or (3,5) | zΘ=(3,6) or (3,10); subtract 3Θ gives 0 or (0,4) | Unequal eigenvalues violate minimality | None |
| §4.3 parameter constancy | semisimple GL₂ diagonal pairs; torus singleton | (5,6)=(5,6) for swapped pair; diag(2,4) gives (6,8); singleton class unchanged | Full invariant coordinates consumed | Packet construction wording removed |
| §4.3 external packet illustration | A₁/ℚ₃, faithful dimension 2 | 3∤2; sufficient exponential condition is 3≥6, false | FKS hypotheses are not silently weakened | Limitations kept in reference |
| Basic-Levi-lift gap | D× with G*=GL₂; split GL₂ and M=T | only parabolic Levi D× corresponds to GL₂, b_M=b; split case uses T with b_M=1 | No nonexistent split-torus Levi in D× | Split gap |
| §5.1 kernel detection | inner elliptic value 3, dimension 2, sign −1; a=0 | detected quasi-split value −6≠0; zero element gives (0,0) | Kernel inclusion has correct direction | Needs repaired |
| §5.2 quotient definition | A=ℂ[X], id and evaluation at 0 | kernels 0⊆(X); τ(X)=0, τ(1)=1, τ(X+2)=2 | Lift independence and image surjectivity | None |
| §5.2 impossible quotient control | projections ℂ×ℂ→ℂ | at (0,1), pr₁=0 and pr₂=1; would force τ(0)=1 | Reversing or omitting inclusion fails | None |
| §5.2 uniqueness and algebra laws | polynomial evaluations and scalar values 0,1,2,3 | τ(2+3)=5=2+3; τ(2·3)=6=2·3; every constant c lifts to c | Only image algebra is asserted target | None |
| §5.2 torus basic comparison | GL₁ degree-one basic class | σ-centralizer still GL₁; τ fixes 0,1 and geometric coordinate value 2 | Nontrivial b need not give nontrivial quotient | None |
| §5.3 Levi square | identity Levi; scalar spectral inputs 0,1,2 | both composites τ_G; both yield 0,1,2 after restriction | No extra spectral compatibility in BunG gap | Gap repointed |
| Stable-inner-transfer gap | quaternion sign −1; matching scalar values f*=3,f=−3 | Trans Θ has sign −1; pairings 3=(−1)(−3) | Transfer and matching duality share sign | Duality moved into this gap |
| §6.1 character compatibility | common scalar 2, elliptic value 3, sign −1; irrelevant summand | Trans(2·3)=−6=2·(−3); irrelevant gives 0=0 | Relevant lift and central restriction sufficient | Gap references repointed |
| §6.2 function compatibility | matching orbital values 3,−3; scalar 2; irrelevant class | output 6,−6; dual pairings both 6; irrelevant 0 remains 0 | Same sign and duality as §6.1 | Uses transfer gap directly |

For the smooth-reflexivity negative control, let K=𝒪_E× in E× and V=ℂ[ℤ]. K acts trivially, so the smooth dual is ℂ^ℤ. Choose a linear functional on ℂ^ℤ that kills the finite-support subspace and takes the constant sequence to 1; such a functional exists because that sequence has nonzero class in the quotient. It cannot be evaluation at any v∈V: its values on the coordinate vectors force every coefficient of v to be 0, but its value on the constant sequence is 1. Thus V is a compact generator without smooth biduality. In the repaired argument, exact smooth duality supplies an injection H^j(F)→(H^j(F))∨∨. The dual is bounded finite length by HS3.8; its dual is finite length, so the injection forces H^j(F) to be finite length and zero outside finitely many degrees. This uses the coefficient field of the roadmap and makes no arbitrary-coefficient assertion.

## Maintainer consequences

F01’s naming/base decision remains outside the package and requires human disposition. No rename, new roadmap, supplier edit or merge-order edit was attempted. Supplier comments that name the absent base are unchanged; the universal Chapter X action remains outside these targets.

The old gap slug basic-weight-invariant-fibres is replaced by three explicit slugs. No Lean declaration name changed, including the headline that other roadmaps may cite. The existing slugs bounded-elliptic-orbital-integrals and stable-orbital-inversion-duality are retained with narrower needs to avoid gratuitous identifier churn. All supplier prerequisites still have to be provided by their owners; this report does not claim their implementation.

The scope restriction permits only the top-level gaps list in `packages/ExcursionOperatorsAndSpectralActionPartII/design/plan.json`. Its non-gap source summary, target locators and historical review data still contain the old HKW “pp. 12–13” references. They were identified by the pattern search and left untouched under that restriction. README, sources.toml, the editable gap locators and the Lean docstring carry the corrected locators.

Only README.md, Suggested.lean, sources.toml, the plan’s top-level gaps and this report were written. metadata.toml did not need a change. No commit or network write was made, and no Lean process remains running. The repaired roadmap is ready for the requested independent review, subject to the maintainer’s F01 decision.
