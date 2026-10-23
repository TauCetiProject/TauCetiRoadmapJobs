# PKG-CongruenceSpectralGap

The package expands all 26 accepted design targets, their APIs, all design/accepted-review Checks and worked examples into the six-layer README. Two additional subsections move the general scalar hyper-Kloosterman input down from later consumers. The resulting acceptance file has one real finite-sum definition and two headline theorems. Only the top-level `gaps` value of `design/plan.json` changed; every other JSON value is identical. The separate `design/review.json` and initial `sources.toml` were absent. The accepted target review embedded in `design/plan.json` was read and applied; the reports directory initially contained no review body.

## Headline inventory, before writing the acceptance file

| Headline | Acceptance status |
|---|---|
| General all-rank Deligne hyper-Kloosterman bound over every finite field | **Stated:** `TauCetiRoadmap.CongruenceSpectralGap.hyperKloosterman_bound`; needs only the actual finite sum `hyperKloosterman`. This ownership supplement was listed before extending the acceptance file. |
| Uniform even nonprincipal Gauss-power average bound | **Stated:** `TauCetiRoadmap.CongruenceSpectralGap.gauss_power_even_average_bound`, using native characters and Gauss sums. |
| Curvature −1 congruence spectral gap 21/100 | **Not statable at the pins:** lacks the canonical quotient closed-energy/Friedrichs realization; arbitrary `LinearPMap` data would not state this theorem. |
| Operator and closed-form mean-zero Rayleigh inequalities | **Not statable:** same canonical operator, closed-energy domain and comparison are missing. |
| Hyperbolic metric rescaling of the gap | **Not statable:** lacks that family of quotient realizations and the corresponding scaled metrics/measures. A scalar inequality would not be this headline. |
| Spherical GLₘ/ℚ parameter bound | **Not statable:** lacks the native cuspidal automorphic representation, canonical archimedean parameter and infinite-factor carriers. |
| Prime-twist average asymptotic and dyadic nonvanishing | **Not statable:** lacks native representations and their canonical finite Rankin–Selberg functions. Arbitrary function families cannot replace them. |
| Forced archimedean zero and exact two-kernel functional equation with uniform estimates | **Not statable on the roadmap's objects:** lacks the canonical Rankin–Selberg and gamma-parameter families. The elementary kernel definitions alone would not state these results. |
| Exceptional GL₂ dictionary and spherical cuspidal GL₃ adjoint comparison | **Not statable:** lacks actual automorphic occurrence, cuspidal representation and lift carriers. |
| Arbitrary-congruence operator/spectral clipping comparison | **Not statable:** lacks the quotient realization and its compatible spectral decomposition. |
| All-rank Kloosterman sheaf realization and purity | **Not statable:** lacks the rational constructible adic direct-image/lisse-sheaf carriers for this family. The numerical theorem above is separately statable. |

The module docstring records these omissions. None is replaced by a free predicate, a hypothesis containing its conclusion, a bounded model, a scalar conversion, or sorry'd data. Empty-spectrum and r=1/5 arithmetic remain README Checks. The exact character identity is a mathematical route to the Gauss bound, rather than acceptance-file padding.

## Corrections and supplier contracts

- Applied the embedded review's four additional definition Checks: level-two area 2π, a nonzero Laplacian bump, a nonzero mean-zero vector and actual spectral-bottom evaluations. Retained both GL₂ sign parities, constituent extraction and local genericity before generic unitary classification.
- Kept the accepted multiplicative cutoff normalization and principal subtraction over all coprime integers. At q=5,n=1 the coefficient is 1, while subtraction only outside ±1 gives 2. The normalization counterexample has ordinary mass 1 but multiplicative mass log 2.
- Replaced the ambiguous cutoff letter f by φ throughout the analytic text; f remains the self-pair conductor. Added fπ>0, f>0 and q∤f, and excluded the n=1 divisor-of-zero case before estimating primes dividing n−1. Terms q|n vanish before putting r=n/f into the unit-argument Gauss identity.
- Strengthened the dual-kernel Check: support [3,4] gives reflected tail 0 and unreflected tail 1 at x=2. Support [1,2] at x=2 would make both tails zero and fail to distinguish the sign.
- Distinguished a smooth compact bump's membership in the initial differential-operator domain from an assertion that the initial core is an operator graph core. No general form-core/operator-core identification is assumed.
- The fetched Teschl text is the 12 February 2009 author edition, GSM 99, not the second edition named in the design. Its actual numbering gives Theorems 2.12–2.13 on pp.70–72 and Theorem 4.10 on p.119; see teschl line 37, line 2914, line 2960 and line 5044. Corrected the manifest and reference. GJ Theorem 9.3 begins on printed p.534, gj78 line 2151.
- Replaced obsolete AF.2/AF.3 citations with AutomorphicFormsOnReductiveGroups §§2.5–2.7, 3.1 and ArithmeticLocallySymmetricSpaces ALS.F.6. The latter actually states the discrete constituent extraction. Replaced the obsolete AL.3 strip target name by its present “L-function data and derived products” section, retaining the finite-function polynomial-strip gap separately.
- Replaced the proposed new generic OperatorTheory Part II by the actual UnboundedOperators UO-D06 owner. Its unique represented operator and Friedrichs theory are imported. Its explicit operator-domain form-core/Rayleigh comparison is registered as a supplier gap.
- Retained the arbitrary-level operator adapter as a variant of AutomorphicSpectralTheory §1.16a's Γ₀(N) theorem, with agreement on that family. Requested arbitrary-level scattering, finite small spectrum, no singular continuous component and constants-only residual space at §§1.16a and 4.8, rather than deriving these from a level-one displayed expansion.
- Replaced the old generic Wiener–Ikehara request by the actual pinned theorem. Replaced the absent AnalyticNumberTheory AN.2/AN.5 locators by the pinned qualitative prime theorem and AnalyticNumberTheoryPartI §3.26.

Eight exact supplier gaps are now in `design/plan.json`, with matching `What <Supplier> must provide (gap:<slug>): <needs>` sentences in the README. They concern form/Rayleigh core comparison, arbitrary-level spectral realization, principal-level classical constituents, all-prime positivity, local twist transport, complex gamma strips, finite-function polynomial strips and the rank-one additive-character sheaf's weight/trace normalization. The former six narrative implementation gaps are represented by these actual supplier obligations and the acceptance docstring's carrier omissions; they are not claims of implementation.

## Ownership sweep, removals and movements

The sweep used `roadmaps list`, mathematical-object `roadmaps grep` searches and `roadmaps show`, together with direct reads of main and the pinned sources. Main was a07e202; the open-head index was 2026-10-23T17:10:19Z. Revised versions of existing roadmaps were not used as dependencies. Shape examples read on main were `TauCetiRoadmap/FuchsianOrbifolds/README.md`, `TauCetiRoadmap/GlobalNumberFields/README.md` and `Completed/ArithmeticDirichletSeries/README.md`.

| Object excluded from local ownership or construction | Exact owner consumed; retained difference |
|---|---|
| New congruence predicate and finite-index API | Mathlib `CongruenceSubgroup.IsCongruenceSubgroup` and `.finiteIndex`, `Mathlib/NumberTheory/ModularForms/CongruenceSubgroups.lean:163` and line 181. The native definition is exactly a nonzero-level witness; it does not mean arbitrary finite index. |
| New orbit carrier/effective permutation machinery | `MulAction.orbitRel.Quotient` and `MulAction.toPermHom`; FuchsianOrbifolds Layers 0–1. The local adapter only transports quotient measure/L². |
| General fundamental-domain independence proof | `MeasureTheory.IsFundamentalDomain.quotientMeasure_eq`, `Mathlib/MeasureTheory/Group/FundamentalDomain.lean:630`, under countability, invariant measure and measurable constant actions. Actual fundamental domains remain required. |
| A second hyperbolic area or upstairs volume comparison | `UpperHalfPlane.volume_def`, `Mathlib/Analysis/Complex/UpperHalfPlane/Measure.lean:44`; `UpperHalfPlane.riemannianVolume_eq_volume`, `TauCeti/Analysis/Complex/UpperHalfPlane/PoincareMetric.lean:181`; FuchsianOrbifolds Layer 2. The quotient pushforward/finite-mass adapter remains new. |
| Generic L² or partial-operator carriers | `MeasureTheory.Lp`, `Mathlib/MeasureTheory/Function/LpSpace/Basic.lean:89`, and `LinearPMap`, `Mathlib/LinearAlgebra/LinearPMap.lean:41`. The former is a finite-norm subgroup of almost-everywhere classes; the latter contains only a submodule and linear action, with no density or closedness axiom. |
| New gradient, Green identity and Euclidean energy theory | DifferentialGeometry Layer 12, PDE local Sobolev targets and pinned `TauCeti.PDE.energyFormH1`, `TauCeti.PDE.energyFormH1L0`, `TauCeti/Analysis/PDE/EnergyForm/Sobolev.lean:372` and line 600. The real local energies require the appropriate coefficient estimates and do not assert a global complex cusp operator. |
| Generic adjoint and spectral calculus | SelfAdjointSpectralTheory SA-C and SA-E01–SA-E14; pinned formal-adjoint pairings at `TauCeti/Analysis/InnerProductSpace/LinearPMap/SelfAdjoint.lean:76` and line 82. |
| New generic closed-form/Friedrichs Part II | UnboundedOperators UO-D06, including its canonical represented operator and square-root form domain. The extra explicit Rayleigh/core bridge is gap:form-rayleigh-core. |
| Repeated Γ₀(N) positive Laplacian and general automorphic spectral theorem | AutomorphicSpectralTheory §§1.16–1.16a and 4.3–4.8. The retained construction extends to all congruence groups; the retained spectral theorem identifies that extension with the supplier realization. |
| Generic cuspidal representation, adelization, local classification | ArithmeticLocallySymmetricSpaces ALS.F.6; AutomorphicFormsOnReductiveGroups §§2.5–2.7, 3.1, 3.4–3.5. Only exceptional SO(2)-weight-zero and adjoint parameter comparisons remain here. |
| A second Gelbart–Jacquet lift or converse | GL2AutomorphicRepresentationsAndTransfer R17.4.13, adjoint-lift, with the self-twist branch and R17.4 proof prerequisites; gj78 line 528, line 538, line 721 and line 2151. |
| Generic all-prime Rankin–Selberg positivity and character transport | AutomorphicLFunctionsAndLocalFactors AL.3, through explicit supplier gaps; neither an unramified-only coefficient system nor an assumed parameter-bound field is introduced. |
| A new gamma/Mellin transform or inversion theorem | `Complex.Gammaℝ`, `.Gammaℝ_eq_zero_iff`, `.Gammaℝ_residue_zero`, `Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean:45`, line 75 and line 104; `mellin`, `mellinInv`, `mellin_comp_inv`, `Mathlib/Analysis/MellinTransform.lean:90`, line 95 and line 153; `mellinInv_mellin_eq`, `Mathlib/Analysis/MellinInversion.lean:92`. Only the two particular cutoff functions and their estimates remain targets. |
| Generic full character orthogonality and Gauss sums | `DirichletCharacter.sum_characters_eq`, `Mathlib/NumberTheory/DirichletCharacter/Orthogonality.lean:68`; `gaussSum`, `Mathlib/NumberTheory/GaussSum.lean:72`; `ZMod.stdAddChar` and `.isPrimitive_stdAddChar`, `Mathlib/Analysis/SpecialFunctions/Complex/CircleAddChar.lean:83` and line 95. Only the even-nonprincipal projection and Gauss-power average remain local. |
| Full unsmoothed Tauberian theorem | `TauCeti.LSeries.wienerIkehara`, `TauCeti/NumberTheory/LSeries/WienerIkehara/SharpCutoff.lean:301`; its series-sum and continuous pole-subtracted-boundary hypotheses were read. No smoothed replacement remains. |
| Qualitative prime theorem and divisor estimates | `TauCeti.primeCount_univ_isEquivalent_div_log`, `TauCeti/NumberTheory/ArithmeticDirichletSeries/Prime/PrimeIdealTheorem.lean:46`; ArithmeticDirichletSeries Layer 6; AnalyticNumberTheoryPartI §3.26. The particular dyadic 3/4 constant is derived here. |

These are the duplication removals: none of the generic theories above receives a local replacement definition or proof target. All 26 original specialized targets survive. The general scalar conversion, clipped-infimum APIs and test catalogues were also excluded from `Suggested.lean` because they are not headlines.

**Notions moved down.** FiniteFieldsAndCharacterSums is absent from main, the indexed open heads and the board material supplied. The same raw all-rank sum and numerical bound occur in the later PadicDifferentialEquationsAndRigidCohomology RD.6.95/RD.6.97 and KloostermanMomentsAndPotentialAutomorphy KM.0–KM.1 designs. The former's read proof route has characteristic restrictions even though its numerical signature is general. This package therefore owns §§4.2a–4.2b: the general raw sum, its étale Kloosterman sheaf construction and the all-finite-field bound. No later roadmap appears as a supplier. The only added weight gap concerns a generic rank-one Artin–Schreier input, owned by the earlier DeligneWeightsAndPurity direction. Katz Theorem 4.1.1 uses exponents bᵢ=1 in this specialization, so its rank remains k even when p divides k. Its §4.3 and Theorem 5.1(1)–(8) justify the construction's sign, rank and weight induction; the tame-at-zero/totally-wild-at-infinity hypotheses were read at katz-gkm line 2353, line 2392, line 2412 and line 2424.

The other checked overlaps differ by object: AnalyticNumberTheoryPartI's positive Dedekind gamma kernels are not these compact cutoff kernels; AnalyticNumberTheoryPartII's Lerch tails and ComputationalNumberTheory §4.20a's holomorphic cusp tails are not this self-pair Mellin ratio; AlgebraicModularFormsAndSerreWeights' classical holomorphic Rankin–Selberg coefficients are not all-rank all-ramified self-pair coefficients. CyclotomicClassGroupsAndStickelberger's Gauss-power valuations are not this even-character finite average. Board GeometricFreyMazur uses the final gap as a consumer. No declaration takes a fully qualified name from another readable roadmap.

The 26 specifically named open roadmap heads were included in the indexed object searches. Their available board copies were searched as well. The supplied board package index also located AnalyticNumberTheory's actual board head; its index redirects to Part I, whose §3.26 was read at the open new-roadmap head. The broad open-head sweep was read only as ownership evidence; revisions to existing main roadmaps were not promoted to suppliers.

## Sources and what could not be certified

`gj78`, `teschl` and `katz-gkm` were fetched through the source service from Numdam or author-hosted copies, and the cited theorem passages were read in their line-numbered extracts. Every bibliography work has exactly one manifest key. The service's initial Katz URL returned 404; its successful author scan uses the same key and leaves no unresolved source request. No source extract was copied into the package.

The LRS author URL failed through the source service, and the published work is settled as `uncertified` under DOI 10.1007/BF01895672. The DOI was verified against the institutional publication record. Its theorem/equation locators come from the accepted design, not a claim of rereading the inaccessible scan. Thus this package cannot certify the typography of the two reported source misprints or the internal contour proof by direct source inspection. It can and does check their corrected mathematical formulas by independent calculations. The README clearly marks the citation status; no missing-text request is pending. There is no claim that the original AL/AF/GJ proof obligations have been implemented or independently source-certified here.

The object sweep at the pins found Mathlib's `AlgebraicGeometry.Scheme.ellAdicSheaf`, `Mathlib/AlgebraicGeometry/Sites/ElladicCohomology.lean:63`. Its body is the pro-étale sheaf of continuous ℤℓ-valued functions, not a rational constructible lisse Kloosterman family with compact direct image. This was distinguished from the missing carrier rather than treating every occurrence of “adic sheaf” as the required interface. No canonical congruence Friedrichs realization or native global cuspidal GLₘ representation was found by object/name/module searches of either pinned library. The `LinearPMap`, `Lp` and gamma definitions quoted above were inspected at these actual pins, not the design's older pins.

## Adversarial mathematics pass

The following are explicit instances and calculations, not proofs of the headline theorems. Analytic cases use actual π hypotheses and the supplier contracts; the table does not turn arbitrary coefficients or arbitrary functions into automorphic objects. Nonsensical domains (a zero ring as a field, an inseparable extension of finite fields, q=1 as a finite field size, or a compact-only spectral conclusion on a cusp quotient) are excluded by the stated carriers and hypotheses.

| Statement | Instances and computed values on both sides | Result | Change |
|---|---|---|---|
| §0.1 quotient measure | Γ(1): μ(X)=π/3; Γ(2): [PSL₂(ℤ):Γ̄(2)]=6, so 6π/3=2π; two effective domains push forward to the same μ. | Pass | Retained review level-two control. |
| §0.2 quotient Laplacian | Δ0=Δ1=0; locally Δy²=−2y², whereas div-grad gives +2y²; a nonconstant bump has q[b]>0 and Δb≠0. | Pass | Specified initial-domain membership. |
| §0.3 mean-zero space | For M=μ(X)>0, ∫0=0, ∫1=M, ∫i=iM; b−M⁻¹∫b has integral ∫b−∫b=0 and remains nonconstant. | Pass | Complex, not real-part, mean. |
| §0.4 Rayleigh bottom | For a normalized eigenvector with eigenvalue a, its quotient is a/1=a; S=∅ gives 1/4; including constants would give 0/‖1‖²=0. | Pass | Upper bound explicitly uses §0.6. |
| §0.5 clipped bottom | S=∅,{21/100},{1/3}: inf({1/4}∪S)=1/4,21/100,1/4 respectively; no bare empty infimum is used. | Pass | Retained lower-bound guard. |
| §0.6 spectral description | Γ(1) has one cusp, constant projection (3/π)(π/3)=1; Γ(2) has three cusps, projection (1/(2π))(2π)=1; λ(t)=1/4+t². | Pass as supplier specialization | All-level residual/scattering gap explicit. |
| §0.7 spectral clipping | Small spectrum ∅ gives 1/4 on both sides; {21/100} gives 21/100; a value exactly 1/4 is excluded from the open set and leaves 1/4. | Pass | No least eigenvector invented. |
| §1.1 exceptional dictionary | r=1/5, either ε=0,1: λ=1/4−1/25=21/100; r=0 gives 1/4 and r=1/2 gives 0, both outside 0<λ<1/4. | Pass | Both sign parities retained. |
| §1.2 monomial temperance | Real shifts σ=0,1 induce absolute central exponents 0,2; only 0 is unitary; real character exponents it₁,it₂ have real parts 0,0. | Pass | Tempered Weil parameter distinguished from gamma shifts. |
| §1.3 adjoint parameters | Ratios of sgn^ε\|·\|^(±1/5) have exponents 2/5,0,−2/5; θ² from Sym² is cancelled by θ⁻² from det⁻¹. | Pass | Central-character removal retained. |
| §2.1 finite twisted equation | m=2 gives d=4 and q⁴, not q²; at s=1/2, √f q^(d/2)(fq^d)^(−1/2)=1; a ramified character times its inverse has Euler factor (1−p⁻ˢ)⁻¹. | Pass conditional on exact AL gaps | All ramified coefficients retained; f,q nonzero. |
| §2.2 forced zero | For μ={1/5,−1/5}, gamma shifts {2/5,0,0,−2/5}; ord₂/₅(A)=−1, ord(A Lχ)≥0 forces ord(Lχ)≥1 and Lχ(2/5)=0. | Pass | Uses meromorphic order, not Γℝ(0)=0. |
| §3.1 first cutoff | Normalized support [1,2]: F₁(1/2)=1 and F₁(3)=0; zero cutoff gives 0; indicator [1,2] has ∫dx=1 but ∫dy/y=log 2. | Pass | Multiplicative normalization. |
| §3.2 dual cutoff | G=0 or φ=0 gives integrand 0 and F₂=0; normalized support [3,4] reflects to [1/4,1/3], so at x=2 reflected tail 0 versus unreflected tail 1. | Pass | Strengthened sign control. |
| §3.3 kernel bounds | σ+β₀=1 allows 1+x^(−ε); order d=4 plus 1/s allows order 5, hence log-degree 4; σ=1/2,β₀=2/5,ε′=1/10 gives ∫₀¹x^(−1/2)dx=2 for both controlling powers. | Pass conditional on gamma gap | Retained epsilon and collision case. |
| §3.4 exact two-kernel equation | Y:2→4 sends nY/(fq^d) to twice itself; wrong reciprocal sends it to half; at β=1/2 both n-powers are n^(−1/2); zero cutoff has Mellin mass 0≠1. | Pass conditional on finite-strip gap | Explicit finite-function strip input. |
| §4.1 finite prime average | L=1: (Q,fπ)=(0,1),(1,1),(2,1),(3,1),(3,5),(3,0) give 0,0,0,1,0,0; at Q=3 only q=5 has one selected character. | Pass | Added total conductor-zero control. |
| §4.2 even orthogonality | q=3: all sums 0; q=5 at a=0,±1,±2: 0,1,−1; n=1 coefficient 2−1=1, incomplete subtraction gives 2. | Pass | Accepted exact principal subtraction. |
| §4.2a raw Kloosterman definition | k=0: empty product r=1 gives 1, r≠1 gives 0; F₂ unit tuples give (−1)^k, hence −1,1 at k=1,2; F₃,k=2 gives −1,2 at r=1,−1. | Pass | Moved general sum down. |
| §4.2a rescaling and trivial-character API | Changing all xi to a xi sends ∏xi=r to ∏(a xi)=a^k r; for ψ=1,F₅,k=3 there are 4²=16 tuples, exceeding 3·5=15. | Pass | Nontrivial character required for bound. |
| §4.2b sheaf construction/purity | k=1: trace ψ(r), weight 0 and bound 1; k=2,F₃,r=1: raw −1, trace +1; r=−1: raw 2, trace −2; norm bounds 1,2≤2√3. | Pass | Geometric trace sign explicit. |
| hyperKloosterman_bound | F₂,k=2,r=1: 1≤2√2; F₃,k=2: max norm 2≤2√3; k=0,F₂,r=1 gives 1>0 and is rejected by hk. | Pass | All finite fields, every positive rank. |
| §4.3 exact Gauss identity | q=3,k=1: Kl₁(1)+Kl₁(−1)=−1, RHS −1−(−1)=0=LHS; k=2: Kl₂(1)+Kl₂(−1)=1, RHS 1−1=0. | Pass | Principal correction −(−1)^k. |
| gauss_power_even_average_bound | q=5,k=2: τ(quadratic)=√5, average ±5 at r=1,2; norm 5≤8√5+1; q=3,k=1 has norm 0≤3. | Pass | Native signature retains q>2,k≥1,r unit. |
| §4.4 first moment | d=4,σ=9/10: E=5/4; d=9,σ=4/5: E=2; d=9,σ=9/10: E=3/2; (1/2)∫₁²t dt=3/4. | Pass | Separated n=1 before n−1 divisor estimate. |
| §4.5 dyadic nonvanishing | m=3 boundary 4/5 gives E=2; σ=9/10 gives E=3/2<2; m=2 boundary 3/5 also gives E=2; (1+i)+(−1)=i≠0. | Pass | Existence only, strict region. |
| §5.1 spherical parameter bound | m=2: 1/2−1/5=3/10; m=3: 1/2−1/10=2/5; equality β₀=1−2/(m²+1) lies outside the open contradiction region. | Pass | Weak inequality retained. |
| §5.2 arithmetic conversion | r=0,1/5,3/10 give λ=1/4,21/100,4/25; last fails 2r≤2/5; r=−1 gives −3/4 and demonstrates the sign guard. | Pass | Both r bound and λ bound stated in prose. |
| §5.3 final gap | 75/400<84/400<100/400 and 84/400−75/400=9/400; empty small set returns 1/4; N=0 is not a nonzero-level witness. | Pass | No 1/4 conjecture or finite-index replacement. |
| §5.4 form inequality | u=0 gives 0=0; normalized equality vector gives q=21/100=RHS; 2iu gives both sides 21/25; constant 1 gives 0<(21/100)μ(X) and is excluded. | Pass | Real diagonal and full complex mean fixed. |
| §5.5 metric scaling | κ=1: factors 1; κ=4: (q,‖u‖²)=(21/100,1/4), quotient 21/25; threshold 1, measure μ/4; κ=0 would divide by zero. | Pass | Scale positivity explicit. |
| Layer 0 cusp example | Tail mass ≤w/R; energy =(w/R)∫₁²\|χ′\|²; both →0, versus constant norm squared M>0. | Pass | Added 0≤χ≤1 for the tail estimate. |
| Layer 1 nonabelian invariant example | Regular S₃ representation has dimension 6; transposition invariants have 3 cosets, dimension 3; full invariants have dimension 1. | Pass | Tests actual intermediate-group invariants. |
| Layer 5 consumer scalar | (21/100)(π/3)/(8π)=21/2400=7/800, not an imported area theorem. | Pass | Kept ownership of geometric comparisons outside. |

Each API statement is checked separately below. The eight original definition APIs have 27 bullets; the moved raw-sum and sheaf APIs add seven. These are mathematical targets in the README and do not pad the acceptance file.

| API statement | Instances and computed values | Result | Change |
|---|---|---|---|
| μ pushforward description | For a fundamental domain F, p∗(dA\|F)(X)=dA(F); at level one both equal π/3. | Pass | No acceptance padding. |
| μ finite | Level-one M=π/3<∞; level-two M=2π<∞. | Pass | No acceptance padding. |
| μ proof independence | Two proofs of Γ(1) congruence select the same orbit measure, M=M=π/3. | Pass | No acceptance padding. |
| Δ self-adjoint | For a smooth bump u, ⟨u,Δu⟩=q[u]=conj(q[u]); for i u both real parts remain q[u]. | Pass | No acceptance padding. |
| Δ dense operator domain | A bump cutoff approximates 1: L² tail ≤w/R→0; rejecting constants via a boundary trace would lose this limit. | Pass | No acceptance padding. |
| Δ nonnegative | u=0: q=0; nonconstant bump: q[b]>0; opposite operator gives −q[b]<0. | Pass | No acceptance padding. |
| Δ kernel constants, both directions | Δ1=Δi=0; q[b]>0 gives Δb≠0 for a nonconstant compact bump. | Pass | No acceptance padding. |
| Mean-zero membership iff | ∫0=0, ∫1=M≠0, ∫i=iM≠0; b−M⁻¹∫b has integral zero. | Pass | No acceptance padding. |
| Mean-zero closed | The integral norm bound sends a convergent sequence with integrals 0 to limit 0; on the constant line it sends c·1 to cM. | Pass | No acceptance padding. |
| Mean-zero image under Δ | For u=1, ∫Δu=0; in general ⟨1,Δu⟩=⟨Δ1,u⟩=0. | Pass | No acceptance padding. |
| Rayleigh infimum description | A normalized bottom eigenvector gives quotient a; clipping examples give infimum 21/100 or 1/4. | Pass | No acceptance padding. |
| Rayleigh bottom nonnegative | q[0]=0 and nonzero domain quotients q[u]/‖u‖²≥0; wrong sign gives −q[b]/‖b‖²<0. | Pass | No acceptance padding. |
| Rayleigh bottom ≤threshold | At no small spectrum, equality is 1/4; continuous λ(0)=1/4. | Pass | No acceptance padding. |
| Rayleigh bottom ≤each quotient | At a normalized bottom eigenvector, quotient a and infimum a; at a higher value b≥a, infimum a≤b. | Pass | No acceptance padding. |
| Clipped defining infimum | S=∅ gives inf{1/4}=1/4; S={1/3} still gives 1/4. | Pass | No acceptance padding. |
| Clipped member upper bound | S={21/100}: inf=21/100≤21/100; S={1/3}: 1/4≤1/3. | Pass | No acceptance padding. |
| Clipped lower comparison | c=21/100,S=∅ or {21/100}: 21/100≤1/4 and ≤21/100; all required lower bounds hold. | Pass | No acceptance padding. |
| F₁ integral body | φ=0 gives ∫0=0; normalized support [1,2] at x=1/2 gives ∫φ/y=1. | Pass | No acceptance padding. |
| F₁ inverse Mellin | Tail Mellin transform is k(s)/s on Re s=2; k(0)=1; Mellin inversion sends it back to tails 1 below and 0 above support. | Pass | No acceptance padding. |
| F₁ below support | Normalized support [1,2], x=1/2: whole multiplicative mass 1; zero cutoff has mass 0 and fails normalization. | Pass | No acceptance padding. |
| F₁ above support | Support ≤2 and x=3: integrand zero throughout (3,∞), hence integral 0. | Pass | No acceptance padding. |
| F₂ inverse Mellin body | φ=0 or G=0 makes the transform zero and its inverse zero. | Pass | No acceptance padding. |
| F₂ zero ratio | G=0: k(−s)·0/s=0 on the line, so F₂=0. | Pass | No acceptance padding. |
| F₂ unit ratio | Support [3,4] gives reflected support [1/4,1/3]; x=2 gives F₂=0 versus unreflected F₁=1. | Pass | No acceptance padding. |
| Average finite-sum body | Q=3,fπ=1: only q=5, one even nonprincipal character, L=1 gives 1. | Pass | No acceptance padding. |
| Average congruence on selected inputs | Two families differing only at q=3 have the same Q=3 average, both 1 if selected q=5 value is 1. | Pass | No acceptance padding. |
| Average zero interface | All selected values 0 gives sum 0; (Q,fπ)=(3,5) has empty selection and value 0. | Pass | No acceptance padding. |
| Raw sum rank one | F₂,ψ(1)=−1: fibre {1} gives −1=ψ(1). | Pass | No acceptance padding. |
| Raw sum field transport | Identity isomorphism on F₃ leaves values −1 and 2 at unit arguments 1 and −1. | Pass | No acceptance padding. |
| Raw sum phase rescaling | F₃,k=1,a=−1,r=1: ψ(−1)=−1/2−i√3/2 equals the sum at argument −1. | Pass | No acceptance padding. |
| Raw sum trivial character | F₅,k=3 gives 4²=16; positive rank is required for the formula. | Pass | No acceptance padding. |
| Sheaf base extension | k=1 over F₄/F₂: Tr(1)=0, so extended ψ(1)=1 and rank remains 1, not 2. | Pass | No acceptance padding. |
| Sheaf geometric trace sign | k=2,F₃: raw −1,2 becomes trace +1,−2; k=1 has sign +1. | Pass | No acceptance padding. |
| Sheaf weight and bound | k=2,F₃: two weight-one eigenvalues have modulus √3; norm of their sum ≤2√3; trace norms are 1 and 2. | Pass | No acceptance padding. |

| Convention | Witness and computed values | Result | Change |
|---|---|---|---|
| Effective action | Γ(1) has central kernel {±I}; effective area π/3, counting it twice gives 2π/3. | Pass | Remove Γ∩{±I} first. |
| Curvature and sign | Δ1=0, Δy²=−2y²; div-grad gives +2y². | Pass | Positive spectral sign fixed. |
| Continuous spectral parameter | s=1/2 and 1/2+i give s(1−s)=1/4 and 5/4. | Pass | Continuous bottom included. |
| Complex pairing | q(iu,iu)=conj(i)i q(u,u)=q(u,u); both constant means 1,i are nonzero when M>0. | Pass | Entire complex constant line removed. |
| Positive exponential | Over F₃, ψ(1)=−1/2+i√3/2, ψ(−1)=−1/2−i√3/2; sum −1. | Pass | Additive sign explicit. |
| Gauss normalization | τ(principal)=−1; for q=5 quadratic τ=√5 and τ²=5. | Pass | No square-root-normalized sum. |
| Conductor normalization | f=4 gives \|τπ\|=2 and \|τπ f^(−1/2)\|=1; asserting \|τπ\|=1 gives normalized norm 1/2. | Pass | Two conductors distinguished. |
| Multiplicative cutoff | Indicator [1,2] has dx mass 1 but dy/y mass log 2; dividing by log 2 gives multiplicative mass 1. | Pass | No dx normalization. |
| Mellin inversion | ds=i dt changes 1/(2πi) into 1/(2π); y↦1/y sends support [3,4] to [1/4,1/3]. | Pass | Reflected argument tested. |
| Gamma at a pole | Γℝ(0)=0 pointwise; punctured sΓℝ(s)→2; meromorphic order is −1. | Pass | No zero-times-infinity argument. |
| Frobenius trace | k=2,F₃ raw values −1,2 have geometric traces +1,−2; k=1 sign is +1. | Pass | Weight and trace sign separate. |
| Metric scale | g↦g/4 gives μ/4,4Δ and unchanged energy; quotient and threshold multiply by 4. | Pass | κ>0 required. |

For completeness, every explicit README Check also has a separate row below. The value column records the Check's computation; symbolic values M>0, q[b]>0 and the domain witness are used where a quotient eigenfunction is not given numerically. These examples distinguish the defining object and a plausible incorrect model, without treating them as proofs.

| Check | Instance and computed values | Result | Change |
|---|---|---|---|
| §0.1 Check 1 | For Γ(1), μΓ(XΓ).toReal=π/3. Counting the central kernel twice would give 2π/3. | Pass | See target row. |
| §0.1 Check 2 | For M=π/3 at Γ(1), 0<M<∞; zero measure gives 0 instead. | Pass | See target row. |
| §0.1 Check 3 | At Γ(1) the two effective domain areas both equal π/3; after pushforward μ=μ. | Pass | See target row. |
| §0.1 Check 4 | For Γ(2), μΓ(XΓ).toReal=2π; its effective index is six, rather than the level-one area. A level-independent normalization would give π/3 instead of 2π. | Pass | See target row. |
| §0.2 Check 1 | Δ0=0. Linearity requires this value. | Pass | See target row. |
| §0.2 Check 2 | The L² class of the constant 1 is in the domain and Δ1=0. This rejects a cusp boundary condition that excludes constants. | Pass | See target row. |
| §0.2 Check 3 | For a nonconstant bump b, Re⟨b,Δb⟩=q[b]>0; using −Δ gives −q[b]<0. | Pass | See target row. |
| §0.2 Check 4 | A free-chart nonconstant bump b has q[b]>0, so Δb≠0; the zero operator has Δb=0. | Pass | See target row. |
| §0.3 Check 1 | 0 belongs to the mean-zero subspace. The kernel contains zero. | Pass | See target row. |
| §0.3 Check 2 | The almost-everywhere constant 1 does not belong to the mean-zero subspace. The integral is μΓ(XΓ)≠0. | Pass | See target row. |
| §0.3 Check 3 | The almost-everywhere constant i does not belong; taking only a real mean fails. The integral is iμΓ(XΓ)≠0, detecting use of a real-part mean. | Pass | See target row. |
| §0.3 Check 4 | b−M⁻¹∫b has integral 0 and nonzero norm; the zero submodule has no such vector. | Pass | See target row. |
| §0.4 Check 1 | If no nonzero operator-domain eigenvector has eigenvalue in (0,1/4), then λ′₁(Γ)=1/4. The continuous threshold supplies the infimum even when no small eigenvector exists. | Pass | See target row. |
| §0.4 Check 2 | For ‖u‖=1 and Δu=λu, its quotient is λ; the lower bound and this value force infimum λ. | Pass | See target row. |
| §0.4 Check 3 | Γ(1) has positive bottom ≥21/100; a quotient retaining 1 has Rayleigh value 0. | Pass | See target row. |
| §0.5 Check 1 | The clipped bottom of ∅ is 1/4. A bare empty infimum would not enforce the threshold. | Pass | See target row. |
| §0.5 Check 2 | The clipped bottom of {21/100} is 21/100. This detects a convention that always returns the threshold. | Pass | See target row. |
| §0.5 Check 3 | The clipped bottom of {1/3} is 1/4, not 1/3. The threshold clips an input lying above it. | Pass | See target row. |
| §0.6 Check 1 | For Γ(1) there is one cusp and the constant term is (3/π)∫u; its extension to 1 gives (3/π)(π/3)=1. | Pass | See target row. |
| §0.6 Check 2 | For Γ(2) there are three cusps and area 2π; the constant projection of 1 is (1/(2π))(2π)=1 and there are three continuous channels. A single level-one channel fails. | Pass | See target row. |
| §0.6 Check 3 | For s=1/2+it the cusp eigenvalue is 1/4+t²; at t=0 it is 1/4. A hypothetical positive residual eigenvalue 1/5 violates the constants-only residual contract. | Pass | See target row. |
| §0.7 Check 1 | If SΓ=∅, its clipped bottom is 1/4. | Pass | See target row. |
| §0.7 Check 2 | For SΓ={21/100}, the infimum is 21/100; for a model eigenvalue 1/4 alone the open small set is empty and the answer is 1/4. | Pass | See target row. |
| §0.7 Check 3 | The constant eigenvalue 0 is absent from SΓ; inserting it would give zero and contradict the mean-zero restriction. | Pass | See target row. |
| §1.1 Check 1 | At r=1/5, both common parities ε=0,1 give λ=1/4−1/25=21/100. Reflection-even parity cannot be inferred from SO(2)-weight zero. | Pass | See target row. |
| §1.1 Check 2 | At r=0 the eigenvalue is 1/4 and the strict exceptional hypothesis fails; at r=1/2 it is zero and fails again. | Pass | See target row. |
| §1.1 Check 3 | At Γ=Γ(3) the cover comparison is identity; the Casimir value 21/100 stays 21/100. Regular S₃ invariants have dimensions 3,1,6 for H, all, none. | Pass | See target row. |
| §1.2 Check 1 | For real quadratic induction of \|·\|^(it₁),\|·\|^(it₂), both real parts are zero; the positive real exponents ±1/5 cannot occur. | Pass | See target row. |
| §1.2 Check 2 | For imaginary quadratic induction of a unitary character (z/\|z\|)^k\|z\|ℂ^(it), its Weil parameter is unitary, hence tempered. A discrete-series gamma shift need not have zero real part; temperedness concerns the Weil representation. | Pass | See target row. |
| §1.2 Check 3 | A real shift σ=1 gives absolute central exponent 2σ=2, which violates unitarity; σ=0 gives exponent zero. | Pass | See target row. |
| §1.3 Check 1 | At r=1/5, the ratios have exponents 2/5,0,−2/5. | Pass | See target row. |
| §1.3 Check 2 | Two signs cancel: (sgn\|·\|^r)/(sgn\|·\|^(−r))=\|·\|^(2r), so either parity gives the same spherical adjoint. | Pass | See target row. |
| §1.3 Check 3 | Twisting a parameter by θ multiplies raw Sym² by θ², while multiplying by the inverse determinant cancels θ²; a nontrivial θ² detects omission of ωπ⁻¹. | Pass | See target row. |
| §2.1 Check 1 | For m=2, d=4; at an unramified q with primitive χ the twisted local L-factor is 1 and the conductor power is q⁴, not q². | Pass | See target row. |
| §2.1 Check 2 | The normalized epsilon at s=1/2 has norm \|τπ\| q^(d/2)(fq^d)^(−1/2)=1; asserting \|τπ\|=1 when f>1 gives f^(−1/2). | Pass | See target row. |
| §2.1 Check 3 | At p≠q, even if πp is ramified, coefficient b(p^a) is multiplied by χ(p)^a and is retained; a ramified character paired with its inverse can have local factor (1−p⁻ˢ)⁻¹. | Pass | See target row. |
| §2.1 Check 4 | An odd real character changes Γℝ(s−μ) to Γℝ(s−μ+1); the gamma argument differs by 1. | Pass | See target row. |
| §2.2 Check 1 | With real standard exponents {r,−r}, A(s) has shifts {2r,0,0,−2r}; for r=1/5 there is a pole at β₀=2/5. | Pass | See target row. |
| §2.2 Check 2 | At β₀=0 the hypothesis β₀>0 fails and no contradiction is needed. | Pass | See target row. |
| §2.2 Check 3 | At s=0, the totalized Γℝ is zero, while lims→0 sΓℝ(s)=2; meromorphic order −1, rather than that point value, forces finite-function vanishing. | Pass | See target row. |
| §3.1 Check 1 | F₁(0,x)=0 for every x. The zero integrand gives zero. | Pass | See target row. |
| §3.1 Check 2 | Normalized support [1,2] gives F₁(1/2)=1; zero φ has Mellin mass 0. | Pass | See target row. |
| §3.1 Check 3 | Support ≤2 gives integral over (3,∞) equal to 0. | Pass | See target row. |
| §3.2 Check 1 | φ=0 gives F₂=0 for any G, β and x. The transform integrand is zero. | Pass | See target row. |
| §3.2 Check 2 | G=0 gives F₂=0 for any φ, β and x. The transform integrand is zero. | Pass | See target row. |
| §3.2 Check 3 | For smooth compact positive support, G=1 and x=2, F₂=F₁(φ∘inv,2), detecting the sign of the Mellin argument. For a multiplicatively normalized φ supported in [3,4], the reflected support is [1/4,1/3], so the value at x=2 is zero, while the unreflected tail is one. | Pass | See target row. |
| §3.3 Check 1 | If σ+β₀=1, the estimate is Cε(1+x^(−ε)); a logarithm at x→0 is permitted, while a constant bound would fail for a collided pole. | Pass | See target row. |
| §3.3 Check 2 | A gamma-ratio pole of order d=4 colliding with 1/s has order at most 5; the logarithm degree is at most 4 and is absorbed in every x^(−ε). | Pass | See target row. |
| §3.3 Check 3 | For σ=1/2, β₀=2/5 and ε′=1/10 the dual-integral powers are x^(−1/2) and x^(−1/2); both integrate to 2 on (0,1). | Pass | See target row. |
| §3.4 Check 1 | The choices Y=2 and Y=4 multiply the dual argument nY/(fq^d) by two; placing Y in the denominator would halve it. | Pass | See target row. |
| §3.4 Check 2 | At β=1/2 the primal and dual n-powers are both n^(−1/2), but the characters are χ and χ̄ and the kernels differ. | Pass | See target row. |
| §3.4 Check 3 | For the zero cutoff both kernels and the right side are zero, so the normalization mellin(φ,0)=1 excludes it from this identity. | Pass | See target row. |
| §4.1 Check 1 | Q=0 gives zero for every family and conductor. The dyadic interval is empty; Q=1 selects q=2 but its nonprincipal character set is empty. A generic conductor value fπ=0 excludes every prime and also gives zero, whereas the analytic conductor is positive. | Pass | See target row. |
| §4.1 Check 2 | For L≡1, fπ=1 and Q=2 the average is zero; q=3 has no even nonprincipal character. The only selected prime is 3, with zero even nonprincipal characters. | Pass | See target row. |
| §4.1 Check 3 | For L≡1, fπ=1 and Q=3 the average is one, coming from q=5. Only q=5 contributes, with exactly one selected character. | Pass | See target row. |
| §4.1 Check 4 | For L≡1, fπ=5 and Q=3 the average is zero, since q=5 is excluded. The selected prime is excluded before summation. | Pass | See target row. |
| §4.2 Check 1 | For q=3 the even nonprincipal set is empty, and every class gives zero. | Pass | See target row. |
| §4.2 Check 2 | For q=5 its unique member is the quadratic character: values at a=0,±1,±2 are 0,1,−1, matching the three branches. | Pass | See target row. |
| §4.2 Check 3 | At n=1 and q=5 the coefficient is (5−1)/2−1=1; subtracting the principal character only outside ±1 would give 2. | Pass | See target row. |
| §4.2a Check 1 | At k=0 the values at r=1 and r≠1 are 1 and 0; a definition that silently uses natural subtraction k−1 in the bound would mishandle this rank. | Pass | See target row. |
| §4.2a Check 2 | Over 𝔽₂, ψ(0)=1 and ψ(1)=−1, every unit tuple has all coordinates one, and the raw sum at r=1 is (−1)ᵏ. Thus ranks 1 and 2 give −1 and 1, without excluding characteristic two. | Pass | See target row. |
| §4.2a Check 3 | Over 𝔽₃ with the positive standard character, the rank-two values at 1 and −1 are −1 and 2. A sheaf trace convention with the factor −1 would reverse them. | Pass | See target row. |
| §4.2a Check 4 | At k=3 over 𝔽₅ with trivial ψ, the value is 16, larger than the nontrivial-character bound 3·5=15; the nontriviality hypothesis is necessary. | Pass | See target row. |
| §4.2b Check 1 | At k=1 the sheaf is Lψ on Gₘ, the sign is +1 and both the trace norm and the bound are 1. | Pass | See target row. |
| §4.2b Check 2 | At k=2,F=𝔽₃,r=1, the raw sum is −1, the sheaf trace is +1 and its norm satisfies 1≤2√3. At r=−1 the raw sum is 2 and the trace is −2. | Pass | See target row. |
| §4.2b Check 3 | At k=2 over 𝔽₂, the raw sum is 1, its trace is −1 and 1≤2√2; excluding p=2 would lose this case. | Pass | See target row. |
| §4.2b Check 4 | At k=0,F=𝔽₂,r=1 the raw sum is 1 but the proposed right side would be zero; the positive-rank binder cannot be omitted. | Pass | See target row. |
| §4.3 Check 1 | For q=3,k=1,r=1, Kl₁(1)+Kl₁(−1)=−1 and the right side is −1−(−1)=0, agreeing with the empty character sum. | Pass | See target row. |
| §4.3 Check 2 | For q=3,k=2,r=1, Kl₂(1)=−1 and Kl₂(−1)=2, so the right side is (−1+2)−1=0. The sign of the principal correction is essential. | Pass | See target row. |
| §4.3 Check 3 | For q=5,k=2 the even quadratic Gauss sum is √5; its square times χ(r) is 5 at r=1 and −5 at r=2, and both have norm 5≤8√5+1. | Pass | See target row. |
| §4.3 Check 4 | At k=0,F₂,r=1 the raw sum is 1 but the bound RHS is 0; nonunit r=0 is outside the unit carrier. | Pass | See target row. |
| §4.4 Check 1 | For d=4 and σ=9/10 the error exponent is 1+5/20=5/4, strictly below 2. | Pass | See target row. |
| §4.4 Check 2 | For d=9 and σ=4/5 the exponent is 2; at σ=9/10 it is 3/2. This pins the strict boundary used in §4.5. | Pass | See target row. |
| §4.4 Check 3 | The dyadic integral (1/2)∫Q^(2Q)t/log t dt has leading coefficient (1/2)((4−1)/2)=3/4. A coefficient 1/2 is wrong. | Pass | See target row. |
| §4.4 Check 4 | At n=1, n−1=0 and all primes divide it; τ(0)=0 would not bound this count. | Pass | See target row. |
| §4.5 Check 1 | For m=3 the left boundary is 1−2/10=4/5 and is excluded; β=9/10 lies in the region. | Pass | See target row. |
| §4.5 Check 2 | For m=2 the boundary is 3/5; at equality the main error exponent is 2 and cannot be dominated by Q²/log Q. | Pass | See target row. |
| §4.5 Check 3 | The two complex terms 1+i and −1 have nonzero sum i; extracting one nonzero term is valid without positivity, while existence does not imply every term is nonzero. | Pass | See target row. |
| §5.1 Check 1 | For m=3, 1/2−1/10=2/5. | Pass | See target row. |
| §5.1 Check 2 | For m=2, 1/2−1/5=3/10, yielding only λ≥1/4−9/100=4/25 directly. | Pass | See target row. |
| §5.1 Check 3 | Equality β₀=1−2/(m²+1) is outside the strict contradiction region; the conclusion is a weak inequality. | Pass | See target row. |
| §5.2 Check 1 | At r=1/5, 2r=2/5 and λ=21/100. | Pass | See target row. |
| §5.2 Check 2 | At r=0, λ=1/4; at r=3/10, λ=4/25 and the hypothesis 2r≤2/5 fails. | Pass | See target row. |
| §5.2 Check 3 | The sign hypothesis r≥0 matters: r=−1 satisfies 2r≤2/5 but gives λ=−3/4. | Pass | See target row. |
| §5.3 Check 1 | The rational comparisons are 3/16=75/400, 21/100=84/400 and 1/4=100/400; the improvement is 9/400. | Pass | See target row. |
| §5.3 Check 2 | An empty small spectrum gives λ′₁=1/4≥21/100. | Pass | See target row. |
| §5.3 Check 3 | N=0 fails N≠0 (0≠0 is false); finite index supplies no such congruence witness. | Pass | See target row. |
| §5.4 Check 1 | For u=0 both sides are zero; the inequality includes this vector without division by its norm. | Pass | See target row. |
| §5.4 Check 2 | At a hypothetical normalized equality eigenvector with λ=21/100, both sides are 21/100; replacing it by 2iu makes both sides 21/25. | Pass | See target row. |
| §5.4 Check 3 | For the nonzero constant 1 the energy is zero but (21/100)‖1‖²=(21/100)μΓ(XΓ)>0, so omitting mean zero makes the inequality false. | Pass | See target row. |
| §5.5 Check 1 | At κ=1 all measure, operator, threshold and gap factors are unchanged. | Pass | See target row. |
| §5.5 Check 2 | At κ=4, μκ=μ/4, Δκ=4Δ, the energy is unchanged, the threshold is 1 and the lower gap is 21/25. | Pass | See target row. |
| §5.5 Check 3 | For a normalized vector of norm squared 1 and energy 21/100, the same function has new norm squared 1/4 and energy 21/100, hence Rayleigh value 21/25. | Pass | See target row. |
| §5.5 Check 4 | κ=0 and κ<0 do not define the stated Riemannian scaling; division by κ requires κ>0. | Pass | See target row. |

No supplied theorem is inferred from its own consequence: §2.1 uses generic local/global factors and unsmoothed Tauberian input; §3.4 adds finite-function polynomial strips; §4.4 adds the general finite-field bound and divisor/prime asymptotics; §5.1 alone uses the contradiction. The geometry branch uses the supplier's all-level residual classification before it calls small positive eigenvalues cuspidal. A Check anticipating §5.3 is a final acceptance condition, not an input to Layer 0's construction. The operator/form comparison and constant projection have explicit actual-domain hypotheses. The generic real-valued Rayleigh-infimum gap explicitly requires a nonzero reducing complement: the zero Hilbert space has an empty nonzero-vector set, while HΓ⁰ contains a bump minus its mean with positive norm. All denominators have positive bases or nonzero norm hypotheses; k−1 in the Lean real exponent is real subtraction and not truncated natural subtraction.

## Elaboration and binder audit

Pins read from `lake-manifest.json`: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The exact prescribed `lake env lean` elaboration was run on `packages/CongruenceSpectralGap/Suggested.lean` from the content repository, using the absolute tool argument required by the brief. Exit status **0**. There were exactly **2 `sorry` warnings**, at the two theorem declarations, and **no other messages**. Each warning's message was exactly:

```text
warning: declaration uses `sorry`
```

The file imports only `Mathlib`; no Tau Ceti object build was needed. It has no `set_option`, no sorry'd data, no API or Check declarations and no admitted examples.

A separate scratch file copied the finished module and added `#check @name` for all three declarations. It elaborated successfully. The printed types retained: an arbitrary universe-polymorphic finite field with explicit field and finite-type binders for `hyperKloosterman`; the positive natural rank, nontrivial additive character and unit argument for `hyperKloosterman_bound`; and the prime fact, nonzero modulus, q>2, positive rank and unit argument for `gauss_power_even_average_bound`. Both exponents elaborate in ℝ as (k−1)/2. No binder disappeared, and no signature change was needed after this check. README generalities match these types.

The own-identifier check found exactly `hyperKloosterman`, `hyperKloosterman_bound`, `gauss_power_even_average_bound` and their namespace in README code spans, all declared. Definition API bullets and Checks contain no invented dotted or stem-based names. The resolver found no unresolved roadmap citations or Lean names. It also reported verbatim:

```text
Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host.
```

That resolver limitation was covered by direct pinned-source inspection and the successful Lean elaboration; it is not evidence that the libraries are absent.

## Dependency check

The prescribed dependency check was run on `packages/CongruenceSpectralGap/README.md`, with name `CongruenceSpectralGap`, `merge-order/ORDER.txt` and `--movable`. Its exact output was:

```text
depcheck: 27 roadmaps, 239 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line and no merge-order edit. Supplier gaps name earlier suppliers, and later scalar/Kloosterman users appear only as consumers. The open-head ownership evidence is not a dependency on a revised existing roadmap. No tool or external text supplied instructions that were acted on outside this brief. No helper agents, external writes, pushes or issue/PR edits were used.
