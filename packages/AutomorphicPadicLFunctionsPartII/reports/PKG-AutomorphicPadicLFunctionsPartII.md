# Package report: AutomorphicPadicLFunctionsPartII

The package expands all 44 accepted nodes across nine layers. No design node, API fact, Check or example was dropped. Only the top-level gaps value of design/plan.json changed; comparison with the saved original confirms equality of every other top-level value. The generated skeleton retained statement, hypotheses, API, tests, acceptance conditions, locators and prerequisites before conversion into prose.

The separately named design/review.json and pre-existing reports were absent. The accepted review is embedded in design/plan.json under review (accepted, 2026-10-19, all 44 nodes). I applied its mathematical corrections. The old declaration baselines in that document are not the pins used for this package.

## Headline acceptance decisions

These were listed before writing Suggested.lean.

| Headline | Acceptance status |
|---|---|
| Unique equivariant coherent EK residue class | Not statable: completed Poincaré coefficients and equivariant support carrier missing. |
| Refined integral critical evaluation and polylogarithm comparison | Not statable: completed universal-extension moments and Hodge comparison carriers missing. |
| General diagonal-Hermitian Kronecker continuation, regularity at zero, at most simple pole at d | Stated: `TauCetiRoadmap.AutomorphicPadicLFunctionsPartII.kronecker_meromorphic_continuation`. |
| Residue-normalized current comparison and explicit critical EK formula | Not statable: relative bundle currents and the EK carrier missing. |
| Regularized critical-value integrality, both conductor cases | Not statable: compatible CM datum, periods and algebraic-Hecke analytic L-value interface missing. |
| Generalized Shimura algebraicity | Not statable: compatible Serre CM periods and the L-value interface missing. Abstract Hecke characters do exist. |
| Weak Deligne period relation | Not statable: Hecke-motive realization and determinant-period carriers missing. |
| Integral CM Eisenstein measure and moments | Not statable: ordinary theta datum, integral multivariate Amice and EK coordinates missing. |
| Bounded ray-class interpolation, uniqueness and Katz comparison | Not statable: the arithmetic avatar/CM-period, smoothed-family and Katz-measure interfaces missing. |

Only three explicit formula definitions support the analytic headline. They use the native lattice carrier, genuine omitted-zero summands, a real logarithm of the squared Hermitian norm and the actual infinite sum. HasSum is asserted only in the convergence half-plane. No arbitrary Prop predicates, admitted data, boundary examples or coordinate controls replace arithmetic headlines. The functional equation and its exact residues are retained in README §3.4; the acceptance signature tests the deep continuation assertion, not a scalar algebraic surrogate.

## Inputs and citation resolution

The supplied main snapshot is dfdf9a3671420779ef892df5948d52764a1c66ce, matching the roadmap service index. The local branch ref named main is older (205c555747e5f1d58e08d3afde7b3c2aa7db9601); the supplied checkout and indexed main snapshot, not that stale ref, were used. SchemeAndStackFoundations was reread from the supplied main checkout rather than the open revision selected by the default show command. The pins were verified directly: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039.

Style was compared with main PadicMeasuresIwasawaAlgebras, AlgebraicTopology and GlobalNumberFields. Supplier heads for ComplexMultiplicationAndExplicitReciprocity, AbelianSchemesAndArithmeticModuliPartII, ComplexComparisonPartII, FiniteFlatGroupsAndIntegralPadicHodgeTheory and AutomorphicLFunctionsAndLocalFactors were read through the indexed roadmap service. All cited section labels were matched to those copies. In particular the P0–P4 catalogue aliases became the head's decimal subsections, CM.1 became §1.3, and SF.2 equivariance became main §2.23.

Two inherited supplier claims cannot be supported by a readable roadmap: AutomorphicPadicLFunctions and PeriodsAndSpecialValues are absent from both the indexed main and open-head lookup. The former remains only the historical Part II boundary in the introduction, with no invented L0/L3 import. Its foundational needs now cite the actual GlobalNumberFields, ClassFieldTheory and analytic owners, with classification, avatar and ray-tower gaps. Its alleged existing Katz measure is not advertised as an available declaration: README §8.5 states the precise CM-field comparison target. PeriodsAndSpecialValues PS.0–PS.1 remain explicit supplier gaps rather than claims of existing theorem coverage. Their section labels are accepted-design contract destinations, not verified section contents. The source does not establish the sharper E-rationality, unrestricted integral torsion transfer, or boundedness from individual integral character values; none is claimed.

The resolver reports no unresolved roadmap or Lean names, but also says its host has no pinned Lake packages, so that result was not used as evidence for library coverage. The declarations were checked directly in the specified pinned source files. Every backticked own Lean name in the README is among the four declarations of Suggested.lean; no API name is advertised as a Lean declaration.

## Sources

Both cited works were fetched using the source service and have one lifetime key each. KS-v4 is the certified 85-page arXiv:1912.03657v4 text (2024), hash fab8e605123cf9c399753b7114c4fd65000e1863e3507abdd4129c8c940fbb72. All theorem numbering and pagination use that version. BKO-2021 is the certified Caltech institutional copy, hash 77ff329057e17cbad573cc309fce3f69f4ba6b73619c4ca203a4ed79a1cb790e; BKO-2021 line 70 confirms the inert/supersingular boundary. The institutional service redirect required following its own legal Caltech asset URL with the institutional classification. The manifest uses the stable institutional bibliographic URL rather than the expiring transport query. The earlier missing request was cleared once this same key was certified; no source remains requested. No source extraction was copied into the package.

The README locators point to the actual statement starts, including KS-v4 lines 324, 357, 836, 870, 918, 961, 1032, 1071, 1266, 1456, 1486, 1506, 1521, 1598, 1795, 2007, 2029, 2094, 2231, 2353, 2413, 2534, 2551, 2633, 2743, 2941, 2963, 3004, 3058, 3228, 3244, 3373, 3392, 3417, 3624 and 3636. Source proof steps used here were inspected at the split Mellin proof (KS-v4 line 1526), refined transport (KS-v4 line 1039), mixed-base comparison (KS-v4 line 1078), fibre unfolding (KS-v4 line 2049), period conversion/integrality (KS-v4 line 2359), theta moments (KS-v4 line 3016), and desmoothing (KS-v4 lines 3636 and 3727). Deligne's original propositions and de Shalit's book are not independently cited or claimed as read; their generic inputs are contracts, and KS-v4's invocation is not treated as a proof of those inputs.

## Duplication sweep and ownership

The object sweep used the required roadmap grep service against all indexed open heads and main, supplemented by board-package searches and pinned module searches. It covered embedding types/invariants, CM Serre data and periods, divided tensors, completed Poincaré coefficients, residues and supports, classifying tori and caps, current topology/resolutions, lattice summability/Poisson/Mellin, ordinary levels/theta, Amice/measures, finite Fourier pairings, local Gauss factors and ray-class fractions. The supplied open work (including Polylogarithms, OverconvergentAutomorphicForms, CohomologyComparisonsPartII and all other listed heads) was included in those service searches. No fully qualified declaration from another roadmap was reused for an own declaration.

No whole accepted target was deleted. The following duplicated subclaims or proposed local responsibilities were deleted or replaced by exact imports:

| Local work excluded | Actual supplier and exact locator | Retained specialization |
|---|---|---|
| Generic CM predicate | Mathlib/NumberTheory/NumberField/CMField.lean:69, NumberField.IsCMField | Lifted type on a possibly non-CM L, §0.1 |
| Generic weight decomposition/scalar point action | TauCeti/Algebra/Coalgebra/Comodule/MonoidAlgebra/Basic.lean:416, :568 | Torsion-free unit-invariant critical lines, §0.3 |
| A new logarithmic unit theorem or lattice | Mathlib/NumberTheory/NumberField/Units/DirichletTheorem.lean:373, :415 | Weighted logarithmic Borel coordinates and orientation, §3.1 |
| Generic translated lattice summability/counting in the continuation route | Mathlib/Algebra/Module/ZLattice/Summable.lean:236, ZLattice.summable_norm_sub_rpow | Polynomial numerator estimate and positive-Hermitian norm comparison, §3.3 |
| General Poisson, Gaussian transform, Mellin or Gamma integral | Mathlib/Analysis/Fourier/PoissonSummation.lean:216; Analysis/SpecialFunctions/Gaussian/FourierTransform.lean:352; Analysis/MellinTransform.lean:90; Analysis/SpecialFunctions/Gamma/Basic.lean:319 | Full-lattice iteration, phase, determinant and zero-mode continuation, §3.4 |
| New measure carrier, Dirac, pushforward or convolution | Mathlib/NumberTheory/Padics/Measure/Basic.lean:40, :97, :105; Measure/Monoid.lean | Arithmetic smoothing atom on the ray group, §8.2 |
| Generic one-variable integral Amice bijection | Mathlib/NumberTheory/Padics/Measure/AmiceTransform.lean:157; PadicMeasuresIwasawaAlgebras §§2.1–2.2 | CM specialization; arbitrary-rank O_Cp extension is a supplier gap |
| Generic test topology/current calculus and local regularization | ComplexComparisonPartII C5.4; Hyperfunctions HF2.AnalyticPreparation.CurrentResolution | Mixed real/complex Borel bidegrees and Poincaré-connection compatibility, §3.2 |
| A second generic finite Fourier inversion/orthogonality theorem | AutomorphicLFunctionsAndLocalFactors AL.0, Local Schwartz–Bruhat spaces and finite Fourier levels | Actual CM Weil-pairing variables, inverse kernel and refinement, §7.3 |
| Hecke carrier, purity, idelic unitary decomposition | GlobalNumberFields Layers 9–10; TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/Algebraic.lean:60 and Shift.lean:273 | Ideal-exponent convention and period-normalized values, §5.3 |
| Generic abelian/Serre/Hodge/Poincaré and formal trivialization constructions | AbelianSchemesAndArithmeticModuliPartII P0.1–P4.3 and ComplexMultiplicationAndExplicitReciprocity §§0.1,1.3 | Based datum and residue/moment applications |
| Generic equivariant, support, cover and cap theories | Main SchemeAndStackFoundations §§2.7,2.19–2.20,2.23 and AlgebraicTopology Stages 5–6,8.8 | Critical trace injection, logarithmic comparison and oriented EK application |

The later Polylogarithms §5.1 also requests a general current resolution. It is not a supplier here. Its generic local homotopy input has an earlier main owner, Hyperfunctions, and its raw calculus has the earlier ComplexComparisonPartII owner; only the mixed-connection adapter is requested from the latter. Thus no mathematical foundation was moved up from Polylogarithms or duplicated here. ModularIwasawaMainConjecturesPartII's elliptic-unit/Katz and Kronecker-limit applications do not supply the arbitrary-dimensional EK residue/current construction; Kloosterman/Bessel and OverconvergentAutomorphicForms use different sheaves and distributions. No notion was imported from a later roadmap. The three arithmetic obligations stay in this roadmap, not in a later main-conjecture consumer.

## Corrections and precise contracts

Thirteen supplier gaps were registered alongside the three original mathematical obligations: two GlobalNumberFields contracts, one ClassFieldTheory ray-tower contract, one SchemeAndStackFoundations contract, two ComplexComparisonPartII adapters, two AlgebraicTopology comparisons, one finite-flat CM pairing contract, two PadicMeasuresIwasawaAlgebras extensions and two PeriodsAndSpecialValues contracts. Every slug and sentence agrees between Exact supplier contracts and design/plan.json.

The generic LF-current request was narrowed after reading the newer C5.4 calculus. The local trace/cap portion of the sign comparison is proved in Layers 3–4; its p-adic extension belongs to §8.3. This avoids treating the later p-adic conclusion as an input to its earlier analytic formula. The bounded criterion now quantifies over arbitrary Cp coefficient families, all finite levels and m≥0; merely testing characters with integral coefficients would miss the indicator counterexample. The right side of interpolation is transported through the common algebraic coefficient field rather than an imagined map ℂ→Cp. Volume, test-first differential signs, zero terms, inverse ideals, and the two independent period systems are explicit.

| Accepted source issue | Computed witness and retained correction |
|---|---|
| E1 pairing order | z=1/2,w=i/2 gives ⟨w,z⟩=1/4 and phase i, reversed order −i. |
| E2 contraction recurrence | Top coefficients/C in d=1,…,6: −1,−2,6,24,−120,−720. |
| E3 binomial sign | (A+v)⁻¹=A⁻¹−vA⁻² mod v²; degree-one coefficient is negative. |
| E4 algebraic units | At L=0,c⁺≠0 the ratio is 0∈Qbar and not Qbar×. |
| E5 embedding index | Type (−2,1) is indexed by the two embeddings, not by an ideal generator; the local monomial is λ_Σ⁻²λ_barΣ. |
| E6 final sign transport | ε(1,0)=−1, ε(1,1)=1 and ε(2,0)=1; local values alone do not prove cancellation in p-adic moments. |
| E7 all complementary Euler factors | Values 2 and 3 give product 2; a single factor gives −1 or −2. |
| E8 fixed equivariant group | On a point S₃ acts nontrivially on its permutation module: fixed rank 1 versus full rank 3; all composite functors use that same action. |
| E9 completed residues | Square lattice Res₁M=1, Res₀M=−1, Res₁K=π and K(0)=−1. |
| E10 boundedness | C_p average has character values 0/1 but indicator value 1/p, of norm p>1. |
| E11 torsion transfer | H₀ transfer for μ₂⊃1 sends 1↦2 and normalized cap would send 1↦1/2. |
| E12 tame-unit closure | −1≡2 mod 3; it is a global unit but not a congruence-one unit. |
| E13 orbit index | μ₄ on t=1/3 has four distinct classes; one Γ′ sum is S, the full sum is 4S. |
| E14 torsion coefficient module | ζ₆³=−1 over R, but −1=1 in R/(2), so invariants remain nonzero. |
| E15 dual basis | For rank one the basis of ω_B and the basis of ω_B∨ each have rank 1 but different actions; they are separate chosen vectors. |

These are normalization or proof-route repairs against the read v4, not claims that the later journal version has the same errors. G1, G2 and G3 are theorem obligations of the finished library; this package does not claim to have proved them.

## Adversarial mathematics pass

Rows below identify each target, each API fact and each individual README Check. The values are small exact calculations, symbolic coefficient comparisons or explicit excluded models, not proofs of the deep targets. The exterior algebra calculation was recomputed independently in dimensions 1–6, preserving the ordered interleaved volume and the product-one relation u_d=−Σ_(i<d)u_i. The Fourier values were independently recomputed in orders 3 and 4. Every row records values rather than an unsubstantiated “checked”. Unit groups here are abelian; S₃ is used only for the generic equivariant supplier test, never passed off as a unit subgroup. The continuation/definition prefix of §4.1 supplies the orbit-series object to §4.2, whose theorem then supplies its continued values; no continuation theorem is used to define that prefix.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §0.1 Lifted CM types and critical coefficient indices | Gaussian weight; lifted quartic indices | μ=(−2,1) gives a=1,β=1; lifted α=(1,2) gives descent false, α=(2,2) gives true; μΣ=0 gives critical false | consistent finite probes | retain norm-pullback and strict negativity |
| §0.1 API 1: critical_iff_indices | Gaussian weight; lifted quartic indices | μΣ=−2↔a=1; μΣ=0↔a=−1 is false for a∈ℕ | consistent specialization | retain prose API only |
| §0.1 API 2: critical_restrict | Gaussian weight; lifted quartic indices | [L:K]=2 and a₀=1 give pulled-back a=(1,1), not (1,2) | consistent specialization | retain prose API only |
| §0.1 API 3: critical_change_units | Gaussian weight; lifted quartic indices | μ₄ acts by i on weight 1; Γ′=1 acts by 1, enlarging trivial weights | consistent specialization | retain prose API only |
| §0.1 Check 1 | For K=L=ℚ(i), μ(i↦i)=−2 and μ(i↦−i)=1 gives a=1, β=1, after takin… | μ=(−2,1) gives a=1,β=1 | boundary or equality probe | retain norm-pullback and strict negativity |
| §0.1 Check 2 | The type with μ∣Σ=0 is not critical; a=0 corresponds to μ∣Σ=−1. | μΣ=0 is not <0; a=0 gives μΣ=−1 | boundary or equality probe | retain norm-pullback and strict negativity |
| §0.1 Check 3 | For L=ℚ(i,√(1+i)), the assignment α=(1,2), β=(0,0) fails norm-pul… | two lifts have α=1 and 2, so no single α₀ exists | boundary or equality probe | retain norm-pullback and strict negativity |
| §0.1 Check 4 | A nonconstant assignment on embeddings above the same embedding o… | restriction-fibre indices (1,2) are unequal; (2,2) are equal | boundary or equality probe | retain norm-pullback and strict negativity |
| §0.1 Check 5 | No assertion that arbitrary totally imaginary fields are CM is us… | quartic has degree 4, CM subfield degree 2, but conjugate root is absent | boundary or equality probe | retain norm-pullback and strict negativity |
| §0.2 CM abelian data with bases and torsion | rank one; zero tensor; scalar torus point 2 | dim(O_L⊗_O_K A₀)=2 for the quartic; dim(0⊗A₀)=0; Lie scalar 2, cotangent scalar 1/2 | consistent finite probes | bases require trivialization; inverse action retained |
| §0.2 API 1: datum_base_change | rank one; zero tensor; scalar torus point 2 | R→R[1/2] sends basis 1 to 1 and a fixed torsion point x to the same x | consistent specialization | retain prose API only |
| §0.2 API 2: cotangent_weights | rank one; zero tensor; scalar torus point 2 | torus scalar 2 acts by 2 on Lie and 1/2 on its dual | consistent specialization | retain prose API only |
| §0.2 API 3: datum_serre_tensor | rank one; zero tensor; scalar torus point 2 | O_L of O_K-rank 2 times dimension 1 gives dimension 2; rank 0 gives 0 | consistent specialization | retain prose API only |
| §0.2 Check 1 | For a CM elliptic curve the cotangent weights on A and A∨ have th… | γ=i gives selected inverse −i and complementary positive −i | boundary or equality probe | bases require trivialization; inverse action retained |
| §0.2 Check 2 | A nontrivial invertible eigensheaf supplies a datum without a glo… | O(1) on ℙ¹ has rank 1 but Picard degree 1≠0, so no global trivializing basis | boundary or equality probe | bases require trivialization; inverse action retained |
| §0.2 Check 3 | O_L⊗_(ℤ[i])A₀ for L=ℚ(i,√(1+i)) has dimension two and the lifted … | [L:K]=2 times dimension 1 gives dimension 2 | boundary or equality probe | bases require trivialization; inverse action retained |
| §0.2 Check 4 | Every use names the base, bases, lattice and Γ-action. | at d=1 the two bases each have 1 vector and lattice rank 2 | boundary or equality probe | bases require trivialization; inverse action retained |
| §0.2 Check 5 | At the zero Serre module the relative dimension is zero, so the p… | rank-zero tensor gives dimension 0≠d≥1 | boundary or equality probe | bases require trivialization; inverse action retained |
| §0.2 Check 6 | For the split torus point with selected coordinate 2, the Lie act… | Lie scalar 2 versus cotangent scalar 1/2; γ=i gives −i on both cotangent labels | boundary or equality probe | bases require trivialization; inverse action retained |
| §0.3 Critical coefficient invariants | a=β=0; μ₆ on R/(2) | determinant weight −1; ζ₆³=−1≠1 in R but −1=1 in R/(2), so M^Γ=M≠0 | consistent finite probes | torsion-free M is essential |
| §0.3 Check 1 | At a=β=0 the determinant contributes −1 on each Σ embedding. | a=β=0 gives β−a−1=−1 | boundary or equality probe | torsion-free M is essential |
| §0.3 Check 2 | Do not replace Γ-invariants by invariants of a finite torsion sub… | a nontrivial scalar 2 gives (2−1)m=m; torsion-free invariance forces m=0 | boundary or equality probe | torsion-free M is essential |
| §0.3 Check 3 | For L=ℚ(ζ₃), R=ℤ[ζ₃,1/3], Γ=μ₆ and the weight 3σ, M=R/(2) has non… | ζ₆³=−1≠1 in R; −1=1 in R/(2), hence M^Γ=M≠0 | boundary or equality probe | torsion-free M is essential |
| §1.1 Trace-zero functions on étale torsion | kernels of rank 1,3; empty D; second rank 5 | h₃=(2,−1,−1), trace 0; h₁=0; R[∅]=0; second trace 4·0=0; deleting e alone gives −2 | consistent finite probes | retain both auxiliary constructions |
| §1.1 API 1: trace_zero_base_change | kernels of rank 1,3; empty D; second rank 5 | (2,−1,−1) sums to 0 before and after R→R[1/2] | consistent specialization | retain prose API only |
| §1.1 API 2: regularizer_trace | kernels of rank 1,3; empty D; second rank 5 | rank 3 gives 3·1−(1+1+1)=0; rank 1 gives 1−1=0 | consistent specialization | retain prose API only |
| §1.1 API 3: split_trace | kernels of rank 1,3; empty D; second rank 5 | finite algebra R³ has multiplication trace a+b+c; (2,−1,−1) gives 0 | consistent specialization | retain prose API only |
| §1.1 Check 1 | On a split kernel with three points h_c has values (2,−1,−1), hen… | 2−1−1=0 | boundary or equality probe | retain both auxiliary constructions |
| §1.1 Check 2 | On a nonempty split kernel in characteristic zero the constant fu… | rank-three trace of 1 is 3≠0 | boundary or equality probe | retain both auxiliary constructions |
| §1.1 Check 3 | With f=O_L and x=e the unmodified D=A[c] fails x∈U; a second auxi… | e∈A[c] true, e∈A∖A[c] false | boundary or equality probe | retain both auxiliary constructions |
| §1.1 Check 4 | Tr(h_c)=0 because A[c] has degree Nc, with no extra square on Nc. | Nc=3 gives trace 3−3=0; using Nc² would give 9−3=6 | boundary or equality probe | retain both auxiliary constructions |
| §1.1 Check 5 | D and x are disjoint in every downstream application. | x=e,D=A[c] gives intersection {e}, cardinality 1; deleting e gives intersection 0 | boundary or equality probe | retain both auxiliary constructions |
| §1.1 Check 6 | For the identity isogeny, D=ker(id) minus e is empty, R[D]=0 and … | D=∅ gives R[D]=0; h_(O_L)=1−1=0 | boundary or equality probe | retain both auxiliary constructions |
| §1.2 Equivariant residue and inverse-limit comparison | d=1,k=0; Γ=1 and Γ=ℤ | Ext⁰=0, Ext¹=R[D]; boundary on (2,−1,−1) has trace 0; H²_Γ can be H¹(ℤ,R)=R | consistent finite probes | no higher equivariant vanishing |
| §1.2 Check 1 | The injection and trace square commute before passing to the trac… | residue vector (2,−1,−1) maps to trace 0 on both paths | boundary or equality probe | no higher equivariant vanishing |
| §1.2 Check 2 | The assertion is compatible with a nontrivial Γ-action on A over … | on a point with Γ=ℤ, H¹(Γ,R)=R whereas H¹(point,R)^Γ=0 | boundary or equality probe | no higher equivariant vanishing |
| §1.3 Equivariant coherent Eisenstein–Kronecker class | zero and nonzero split residue | res EK(0)=0; res EK(2,−1,−1)=(2,−1,−1); trace(1,1)=2≠0 | consistent finite probes | residue excludes zero/wrong class |
| §1.3 API 1: ek_residue | zero and nonzero split residue | boundary of the class attached to (2,−1,−1) is exactly (2,−1,−1), not 0 | consistent specialization | retain prose API only |
| §1.3 API 2: ek_linear | zero and nonzero split residue | res EK(2h)=2h=res(2EK(h)); injectivity sends h=0 to 0 | consistent specialization | retain prose API only |
| §1.3 API 3: ek_naturality | zero and nonzero split residue | identity on support sends residue h to h; scalar 2 sends h to 2h on both paths | consistent specialization | retain prose API only |
| §1.3 Check 1 | EK(0)=0 and a class in its image with zero residue vanishes. | res EK(0)=0; injectivity forces EK(0)=0 | boundary or equality probe | residue excludes zero/wrong class |
| §1.3 Check 2 | For d=1 and Γ=1 the class is a section of P_hat⊗Ω¹ on U with the … | d=1 gives d−1=0, hence H⁰ section degree | boundary or equality probe | residue excludes zero/wrong class |
| §1.3 Check 3 | A split two-point function with values (1,1) in characteristic ze… | trace(1,1)=2≠0 | boundary or equality probe | residue excludes zero/wrong class |
| §1.3 Check 4 | Residue(EK(h))=h in the canonical supported submodule. | res EK(2,−1,−1)=(2,−1,−1), not 0 | boundary or equality probe | residue excludes zero/wrong class |
| §1.3 Check 5 | Flatness or an explicit base-change theorem accompanies each clai… | flat localization R→R[1/2] has kernel 0; (2,−1,−1) retains sum 0 | boundary or equality probe | residue excludes zero/wrong class |
| §1.4 Flat derivatives of the coherent class | ordinary derivatives at degrees 0,1,2 | D⁰1=1; D²z²=2; D₁D₂(z₁z₂)=1 | consistent finite probes | no factorial division over R |
| §1.4 API 1: derivative_zero | ordinary derivatives at degrees 0,1,2 | D⁰z²=z² and 0!=1 | consistent specialization | retain prose API only |
| §1.4 API 2: derivative_equivariance | ordinary derivatives at degrees 0,1,2 | for z↦2z, pullback of d(z²) is 8z dz=d(4z²) | consistent specialization | retain prose API only |
| §1.4 API 3: derivative_multigrading | ordinary derivatives at degrees 0,1,2 | D²z²=2; D₁D₂(z₁z₂)=1 | consistent specialization | retain prose API only |
| §1.4 Check 1 | At a=0 the image is the original pro-class, without an extra fact… | D⁰z²=z², 0!=1 | boundary or equality probe | no factorial division over R |
| §1.4 Check 2 | For a coordinate monomial z² the second ordinary derivative is 2;… | D²z²=2 | boundary or equality probe | no factorial division over R |
| §1.4 Check 3 | For two commuting coordinate directions the (1,1) derivative of z… | D₁D₂(z₁z₂)=1 | boundary or equality probe | no factorial division over R |
| §1.4 Check 4 | The zero-th derivative is EK♮ itself. | ∇⁰ has coefficient 1 | boundary or equality probe | no factorial division over R |
| §1.4 Check 5 | The derivative/moment comparison records the ordinary versus divi… | degree-two ordinary factor 2 versus divided basis coefficient 1; 1/2∉ℤ₂ | boundary or equality probe | no factorial division over R |
| §2.1 Torsion specialization and group-cohomology moments | d=1,Γ=1,a=b=0; killing dual at p | degree is 0; moment₀ is augmentation 1↦1; connected dual of [p] is not étale | consistent finite probes | rigidification and étaleness retained |
| §2.1 API 1: moment_naturality | d=1,Γ=1,a=b=0; killing dual at p | for G_a map x↦2x, degree-one moment x maps to 2x on both paths | consistent specialization | retain prose API only |
| §2.1 API 2: moment_degree_zero | d=1,Γ=1,a=b=0; killing dual at p | augmentation sends 1↦1 and the coordinate T↦0 | consistent specialization | retain prose API only |
| §2.1 API 3: moment_linear | d=1,Γ=1,a=b=0; killing dual at p | augmentation of 2h+3h is 5 times that of h | consistent specialization | retain prose API only |
| §2.1 Check 1 | An arbitrary non-torsion x has no canonical torsion splitting and… | for nontorsion x, [n]x≠0 for every n≥1, so the required isogeny kernel condition fails | boundary or equality probe | rigidification and étaleness retained |
| §2.1 Check 2 | At residue characteristic p a p-torsion point whose killing dual … | connected dual at p is not étale; over the characteristic-zero fraction field it is étale | boundary or equality probe | rigidification and étaleness retained |
| §2.1 Check 3 | For d=1, Γ=1 and a=b=0 this is the scalar value of the augmented … | d=1,a=b=0 gives degree 0 and augmentation value 1↦1 | boundary or equality probe | rigidification and étaleness retained |
| §2.1 Check 4 | The target contains H, not H¹_dR with the contravariant action. | scalar 2 acts on H covariantly by 2 and on its dual by 1/2 | boundary or equality probe | rigidification and étaleness retained |
| §2.1 Check 5 | The zero moment is the augmentation of the torsion splitting. | moment₀ sends 1 to 1 and T to 0 | boundary or equality probe | rigidification and étaleness retained |
| §2.2 Orientation-normalized critical Eisenstein classes | rank 0 cap; index 2; d=2 transposition; a=1 | cap₁(1)=1; normalized cap_μ₂(1)=1/2∉ℤ₂; (−1)(−1)=1; shift coefficient 1, shuffle coefficient 2 | consistent finite probes | integral versus localized cap separated |
| §2.2 API 1: orientation_permutation | rank 0 cap; index 2; d=2 transposition; a=1 | d=2 gives orientation −1 and determinant −1, product +1 | consistent specialization | retain prose API only |
| §2.2 API 2: critical_coordinate | rank 0 cap; index 2; d=2 transposition; a=1 | basis tensor u^[a+1]⊗v^[β] has coordinate 1; twice it has coordinate 2 | consistent specialization | retain prose API only |
| §2.2 API 3: torsion_normalized_extension | rank 0 cap; index 2; d=2 transposition; a=1 | T=μ₂ gives 1/2 after localization; 2·(1/2)=1 | consistent specialization | retain prose API only |
| §2.2 API 4: critical_rank_one_shift | rank 0 cap; index 2; d=2 transposition; a=1 | a=1 gives shift coefficient 1 and shuffle coefficient 2; at p=2 only 1 is a unit | consistent specialization | retain prose API only |
| §2.2 Check 1 | For d=1, Γ=1 and C=R, cap is the identity R→R. | cap₁(1)=1 | boundary or equality probe | integral versus localized cap separated |
| §2.2 Check 2 | For d=2 a transposition reverses the BΓ orientation and the deter… | orientation −1 times determinant −1 equals +1 | boundary or equality probe | integral versus localized cap separated |
| §2.2 Check 3 | For d=1 and Γ=μ₂ over a ring with 2 noninvertible, no extension o… | normalized cap(1)=1/2∉ℤ₂ | boundary or equality probe | integral versus localized cap separated |
| §2.2 Check 4 | For a free rank-one line Ru and a=1, the determinant shift sends … | shift coefficient 1 versus shuffle coefficient 2 | boundary or equality probe | integral versus localized cap separated |
| §2.2 Check 5 | For d=1 and Γ=1 the cap product is ordinary degree-zero evaluatio… | H⁰(1,R)=R and cap is r↦r | boundary or equality probe | integral versus localized cap separated |
| §2.2 Check 6 | For Γ=μ₂ and Γ₀=1, normalized evaluation requires 1/2; it is not … | ∣μ₂∣=2 gives denominator 1/2 | boundary or equality probe | integral versus localized cap separated |
| §2.3 Change of unit subgroup with its normalization | degree 1,2 circle covers; μ₂⊃1 | integrals 1 and 2; transfer H₀ is ×2, with image 2ℤ rather than ℤ | consistent finite probes | no nonunit cancellation |
| §2.3 Check 1 | A covering of oriented circles of degree m scales the integral by… | circle cover of degree 2 sends integral 1 to 2 | boundary or equality probe | no nonunit cancellation |
| §2.3 Check 2 | The case μ₂⊃1 is not passed off as an integral surjective transfe… | transfer sends 1 to 2; its image is 2ℤ, not ℤ | boundary or equality probe | no nonunit cancellation |
| §2.4 Refined evaluation without inverting the conductor norm | identity; conductor p; auxiliary degree 3 at p=2 | identity push and moment send 1↦1; conductor p is nonunit; degree 3 is a unit in ℤ₂ | consistent finite probes | refinement removes Nf only |
| §2.4 API 1: refined_identity | identity; conductor p; auxiliary degree 3 at p=2 | identity coefficient pushforward, connection transport and moment each send 1↦1 | consistent specialization | retain prose API only |
| §2.4 API 2: refined_integral_coordinate | identity; conductor p; auxiliary degree 3 at p=2 | the based refined tensor u^[a+1]⊗v^[β] has coordinate 1∈R at Nf=p | consistent specialization | retain prose API only |
| §2.4 API 3: refined_isogeny_naturality | identity; conductor p; auxiliary degree 3 at p=2 | scalar cotangent transports 2 then 3 compose to 6=3·2 | consistent specialization | retain prose API only |
| §2.4 Check 1 | At a prime dividing Nf the constructor still has an R-valued targ… | at p=2,Nf=2,Nc=3: 2 is nonunit,3 is unit; identity moment stays 1 | boundary or equality probe | refinement removes Nf only |
| §2.4 Check 2 | If Nc is a nonunit, this theorem does not assert a residue-class … | Nc=2 at p=2 has valuation 1 and cannot be inverted integrally | boundary or equality probe | refinement removes Nf only |
| §2.4 Check 3 | With [f]=id the pushforward and transported connection are identi… | identity push, connection transport and augmentation send 1↦1 | boundary or equality probe | refinement removes Nf only |
| §2.4 Check 4 | The result lies over R, with no 1/Nf introduced in the constructo… | identity moment of 1 is 1, without factor 1/2 at Nf=2 | boundary or equality probe | refinement removes Nf only |
| §2.4 Check 5 | Nc is still a unit; the refinement removes only the evaluation co… | Nc=3 has v₂=0 while Nf=2 has v₂=1 | boundary or equality probe | refinement removes Nf only |
| §2.4 Check 6 | Removing Nf from the denominators does not remove the separate un… | unit torsion order 2 still requires 1/2 even when refined conductor evaluation is integral | boundary or equality probe | refinement removes Nf only |
| §2.5 Comparison of refined and unrefined evaluations | identity transports; R→R[1/2] | both transported tensors equal v; 2·(1/2)=1 after localization; injection has kernel 0 | consistent finite probes | keep distinct cotangent maps and injectivity |
| §2.5 Check 1 | The comparison map on ω_A and the map on ω_A∨ are not interchange… | on scalar cotangent maps 2 and 3, mixed tensor transport gives 2^(a+1)3^β on both paths, e.g.12 at a=1,β=1 | boundary or equality probe | keep distinct cotangent maps and injectivity |
| §2.5 Check 2 | An equality after localization is used only with the stated injec… | R→R[1/2] has kernel 0 for torsion-free R; contrast 1∈ℤ/2 mapping to 0 | boundary or equality probe | keep distinct cotangent maps and injectivity |
| §2.6 Comparison with the de Rham polylogarithm | d=1,2; characteristic-zero field versus thickening | coherent degrees 0,1; de Rham degrees 1,3; ε²=0≠ε forbids injection of k[ε]/ε² into ℂ | consistent finite probes | field-base scope retained |
| §2.6 Check 1 | The de Rham degree is 2d−1, distinct from the coherent degree d−1… | d=1 gives degrees 1 versus 0; d=2 gives 3 versus 1 | boundary or equality probe | field-base scope retained |
| §2.6 Check 2 | Residue compatibility is checked rather than inferred from an iso… | residue h=(2,−1,−1) is the same on both comparison paths, not its negative | boundary or equality probe | field-base scope retained |
| §2.6 Check 3 | Do not use this field-base comparison as a theorem giving an abso… | k[ε]/ε² has ε≠0 but ε²=0 and is not a field | boundary or equality probe | field-base scope retained |
| §3.1 Unit Borel model and relative Dolbeault complex | d=1,2; coordinate scale 2 | dim E=0,1 and total dim=2,5; r=1,z=1 goes to r=4,z=1/2, metric 1=1 | consistent finite probes | inverse unit action retained |
| §3.1 API 1: borel_metric_invariance | d=1,2; coordinate scale 2 | r=1,z=1 under scalar 2 become r=4,z=1/2; 4·1/4=1 | consistent specialization | retain prose API only |
| §3.1 API 2: borel_forms_comparison | d=1,2; coordinate scale 2 | d=1 gives EΓ=point and relative extra degree 0; ordinary (1,0) kernel is holomorphic | consistent specialization | retain prose API only |
| §3.1 API 3: borel_orientation | d=1,2; coordinate scale 2 | d=2 has du₁; exchanging r₁,r₂ gives du₂=−du₁ | consistent specialization | retain prose API only |
| §3.1 Check 1 | For d=1 the constraint r₁=1 leaves EΓ a point. | d=1 forces r₁=1, real parameter dimension 0 | boundary or equality probe | inverse unit action retained |
| §3.1 Check 2 | Multiplying z_i by σ_iγ⁻¹ and r_i by ∣σ_iγ∣² leaves r_i∣z_i∣² fix… | r=1,z=1→r=4,z=1/2 gives 4·1/4=1; wrong z=2 gives 16 | boundary or equality probe | inverse unit action retained |
| §3.1 Check 3 | At d=2 the model has real dimension five and currents have comple… | d=2 gives N=5 and complementary second degree 3−q | boundary or equality probe | inverse unit action retained |
| §3.1 Check 4 | For d=1, EΓ is a point and the model reduces to the ordinary Dolb… | d=1 contributes 0 extra real directions | boundary or equality probe | inverse unit action retained |
| §3.1 Check 5 | The group action on z is inverse to that on units, while r scales… | γ scalar 2 gives r multiplier 4,z multiplier1/2; product metric multiplier1 | boundary or equality probe | inverse unit action retained |
| §3.2 Relative currents and residue-normalized integration | d=1,p=1,q=0; point trace; discontinuous dual | complement (0,1), top degree 2; Stokes coefficient −1; δ₀(1)=1; η_n→0 with Tη_n=1 violates 1→0 | consistent finite probes | LF continuity and pairing transport explicit |
| §3.2 API 1: form_to_current | d=1,p=1,q=0; point trace; discontinuous dual | dz paired test-first with dbarz is dbarz∧dz=+2i dx∧dy | consistent specialization | retain prose API only |
| §3.2 API 2: current_differential | d=1,p=1,q=0; point trace; discontinuous dual | N=2,k=1 gives test-first differential sign −1, not form-first +1 | consistent specialization | retain prose API only |
| §3.2 API 3: current_local_comparison | d=1,p=1,q=0; point trace; discontinuous dual | δ₀ acting on test 1 gives 1; smooth exact dη maps to current boundary with the same −1 sign | consistent specialization | retain prose API only |
| §3.2 Check 1 | For d=1 a (1,0)-current tests (0,1)-forms, so their wedge is top … | (p,q)=(1,0) tests (0,1); total degree 2 | boundary or equality probe | LF continuity and pairing transport explicit |
| §3.2 Check 2 | A single point Thom current pairs to 1 against a test function eq… | δ₀ evaluated on 1 near 0 is 1 | boundary or equality probe | LF continuity and pairing transport explicit |
| §3.2 Check 3 | A discontinuous algebraic functional on the smooth test-form spac… | η_n→0,Tη_n=1 contradicts continuity since 1 does not tend to0 | boundary or equality probe | LF continuity and pairing transport explicit |
| §3.2 Check 4 | Continuity of the linear functional is required; the algebraic du… | the same sequence would require Tη_n→0, but values remain1 | boundary or equality probe | LF continuity and pairing transport explicit |
| §3.2 Check 5 | The order η∧ω is used consistently in differentiation, contractio… | dbarz∧dz=+2i dxdy whereas dz∧dbarz=−2i dxdy | boundary or equality probe | LF continuity and pairing transport explicit |
| §3.2 Check 6 | In real dimension two at (p,q)=(1,0), Stokes gives ∫η∧dω=−∫dη∧ω; … | N=2,k=1 gives differential coefficient (−1)¹=−1 | boundary or equality probe | LF continuity and pairing transport explicit |
| §3.3 Generalized Eisenstein–Kronecker series | square lattice; term i; zero term; zero h | numerator conj(i)=−i; omitted term 0; at h=0, log 0=0 gives exp 0=1; K_cont(0)=−1 versus divergent tsum 0 | consistent finite probes | positivity and genuine continuation separated |
| §3.3 API 1: kronecker_lattice_translation | square lattice; term i; zero term; zero h | a=1,w=i/2 gives exp(−2πi·(−1/2))=−1 | consistent specialization | retain prose API only |
| §3.3 API 2: kronecker_convergence | square lattice; term i; zero term; zero h | d=1,ν=0,Re(s)=2 gives exponent −4<−2; s=1 gives −2=−2 and is excluded | consistent specialization | retain prose API only |
| §3.3 API 3: kronecker_completion | square lattice; term i; zero term; zero h | d=1,s=2 gives M=Γ(2)π⁻²K=K/π² | consistent specialization | retain prose API only |
| §3.3 Check 1 | For d=1, ν=0, H standard and z=w=0, K is Σ_(m,n)≠(0,0)(m²+n²)^(−s… | square-lattice shell of norm-square1 has four terms, each1 at any s | boundary or equality probe | positivity and genuine continuation separated |
| §3.3 Check 2 | For ν=1 and z+λ=i the numerator is −i, rather than i. | conj(i)=−i | boundary or equality probe | positivity and genuine continuation separated |
| §3.3 Check 3 | For z∈Λ the λ=−z term is excluded and never evaluated as 0 divide… | λ=−z gives whole vector0 and summand0 | boundary or equality probe | positivity and genuine continuation separated |
| §3.3 Check 4 | A term with λ=−z is omitted before applying logarithms. | zero branch gives0 before log; log0 would otherwise give0 and exp0=1 | boundary or equality probe | positivity and genuine continuation separated |
| §3.3 Check 5 | K and M are separate names; their residues are not interchangeabl… | Res₁M=1 versus Res₁K=π | boundary or equality probe | positivity and genuine continuation separated |
| §3.3 Check 6 | For the square lattice the continued K(0)=−1, whereas the total s… | continued K(0)=−1 versus divergent tsum0 | boundary or equality probe | positivity and genuine continuation separated |
| §3.3 Check 7 | With H standard, z=1/2 and w=i/2, the translation multiplier for … | a=1,w=i/2 gives multiplier exp(πi)=−1; zero h gives norm-square0 | boundary or equality probe | positivity and genuine continuation separated |
| §3.3 Check 8 | In d=2 at z+λ=(1,0), ν=(0,0) gives numerator 1 while ν=(0,1) give… | at (1,0), multi-indices (0,0) and(0,1) give numerators1 and0 | boundary or equality probe | positivity and genuine continuation separated |
| §3.4 Poisson continuation with completed residues | square lattice; phase z=1/2,w=i/2 | Res₁ M=1, Res₀ M=−1; Res₁ K=π, K(0)=−1; phases i and −i multiply to 1 | consistent finite probes | completed residues and phase corrected |
| §3.4 Check 1 | Applying the functional equation twice gives identity using vol(Λ… | phases i·(−i)=1 and dual covolumes V·V⁻¹=1 | boundary or equality probe | completed residues and phase corrected |
| §3.4 Check 2 | For Λ=ℤ[i], K⁰(s) has residue π at 1 and no pole at zero. | Res₁K=π and K(0)=−1 | boundary or equality probe | completed residues and phase corrected |
| §3.4 Check 3 | For H standard, z=1/2 and w=i/2, ⟨w,z⟩=1/4 gives phase i; the rev… | ⟨w,z⟩=1/4 gives i; ⟨z,w⟩=−1/4 gives−i | boundary or equality probe | completed residues and phase corrected |
| §3.5 Residue-normalized Eisenstein–Kronecker current | exterior contraction dimensions 1–6; inverse series degree 1 | top coefficients/C are −1,−2,6,24,−120,−720; j-coefficients −1,1,−2,6,−24,120; (A+v)⁻¹ coefficient −A⁻² | consistent finite probes | retain local sign corrections |
| §3.5 API 1: current_finite_projection | exterior contraction dimensions 1–6; inverse series degree 1 | degree 1 truncation keeps coefficient of v⁰ and deletes coefficient of v¹; applying twice changes 0 further coefficients | consistent specialization | retain prose API only |
| §3.5 API 2: current_contraction_formula | exterior contraction dimensions 1–6; inverse series degree 1 | top coefficients at d=1,2,3 are −C,−2C,6C; j=d has 0 | consistent specialization | retain prose API only |
| §3.5 API 3: current_regular_locus | exterior contraction dimensions 1–6; inverse series degree 1 | b=0 correction −1; b=1 correction +1 | consistent specialization | retain prose API only |
| §3.5 Check 1 | For d=1, ι_v(dz∧dbarz)=−v·dz. | ι_v(dz∧dbarz)=−v dz | boundary or equality probe | retain local sign corrections |
| §3.5 Check 2 | For d=2 and u₂=−u₁ the top contraction is −2C v₁v₂ u₁∧dz₁∧dz₂. | d=2 top coefficient−2C | boundary or equality probe | retain local sign corrections |
| §3.5 Check 3 | (A+v)⁻¹=A⁻¹−vA⁻² modulo v²; using a positive linear term fails th… | inverse coefficient of v is−A⁻² | boundary or equality probe | retain local sign corrections |
| §3.5 Check 4 | In d=1,b=0 the contraction is −C·barℓ/r·dz; changing it to +C rev… | square lattice vol(A)=−2i,C=−π, so −Cv dz=+πv dz | boundary or equality probe | retain local sign corrections |
| §3.5 Check 5 | The b=1 coefficient has the opposite sign to b=0, as required for… | b=0,1 signs are+1,−1 in Φ coefficient before contraction | boundary or equality probe | retain local sign corrections |
| §3.5 Check 6 | The j=d−1 top coefficient at d=2 is −2C, and at d=3 is +6C. | top coefficients d=2,3 are−2C,+6C | boundary or equality probe | retain local sign corrections |
| §3.6 The current realizes the coherent class | trace zero; d=1,symmetric degrees 0,1 | constant mode 2−1−1=0; inverse expansion A⁻¹−vA⁻² cancels adjacent connection terms; zero input gives 0=0 | consistent finite probes | global comparison remains a theorem target |
| §3.6 Check 1 | Check b=0 and b=1 directly in dimension one to test the d+ν cance… | (A+v)(A⁻¹−vA⁻²)=1 mod v², so linear connection terms cancel | boundary or equality probe | global comparison remains a theorem target |
| §3.6 Check 2 | Residue equality includes the orientation sign, not only an unspe… | residue of h=(2,−1,−1) is h; a sign reversal gives(−2,1,1)≠h | boundary or equality probe | global comparison remains a theorem target |
| §4.1 Eisenstein series over unit orbits | μ₄,Γ′=1,t=1/3; α=4 or 1 | four distinct classes; single-coset S=E_Γ, sum 4S=4E_Γ; i⁻⁴=1 but i⁻¹=−i≠1 | consistent finite probes | orbit multiplicity retained |
| §4.1 API 1: orbit_representative | μ₄,Γ′=1,t=1/3; α=4 or 1 | i⁻⁴=1 identifies t=1/3 and it=i/3 with the same orbit contribution | consistent specialization | retain prose API only |
| §4.1 API 2: orbit_subgroup_index | μ₄,Γ′=1,t=1/3; α=4 or 1 | μ₄⊃1,t=1/3 gives four distinct single-coset sums S; total 4S=4EΓ | consistent specialization | retain prose API only |
| §4.1 API 3: orbit_homothety | μ₄,Γ′=1,t=1/3; α=4 or 1 | c=2,α=4,β=0,s=0 gives factor 2⁻⁴=1/16 | consistent specialization | retain prose API only |
| §4.1 Check 1 | For L=ℚ(i), Γ=μ₄ and α=4, β=0, one Γ-orbit contributes once, wher… | a nonzero Gaussian μ₄-orbit has cardinality4; quotient counts1 | boundary or equality probe | orbit multiplicity retained |
| §4.1 Check 2 | For Γ=μ₄ the weight α=1, β=0 is not invariant and cannot define a… | i⁻¹=−i≠1 while i⁻⁴=1 | boundary or equality probe | orbit multiplicity retained |
| §4.1 Check 3 | At t=0 the zero vector is excluded even when the continuation at … | t=0,λ=0 yields excluded summand0 | boundary or equality probe | orbit multiplicity retained |
| §4.1 Check 4 | For L=ℚ(i), Γ=μ₄, Γ′=1 and t=1/3 mod ℤ[i], the four translates ar… | Γt has4 classes; single Γ′ series S, total4S | boundary or equality probe | orbit multiplicity retained |
| §4.1 Check 5 | The λ=0 orbit is always omitted. | zero orbit contributes0 | boundary or equality probe | orbit multiplicity retained |
| §4.1 Check 6 | An unrestricted lattice sum counts unit orbits infinitely often a… | finite Γ=μ₄ counts4 times; an infinite unit group gives infinitely many translates of each orbit | boundary or equality probe | orbit multiplicity retained |
| §4.2 Fibre integration of Kronecker series | d=1,2; α=(3,2),s=0 | Γ(3)Γ(2)=2=2!·1!; Jacobian determinant −2, absolute 2; d=1 Jacobian 1 | consistent finite probes | full finite orbit and factor d retained |
| §4.2 Check 1 | The product gamma factor at s=0, α=a+1, equals a!. | Γ(3)Γ(2)=2!1!=2 | boundary or equality probe | full finite orbit and factor d retained |
| §4.2 Check 2 | For d=1 there is no r-integral and the identity reduces to the ga… | d=1 gives integral over a point, Jacobian1 | boundary or equality probe | full finite orbit and factor d retained |
| §4.2 Check 3 | The Jacobian factor is d: at d=2, dlog(ur₁)∧dlog(ur₂) has absolut… | det[[1,1],[1,−1]]=−2, absolute value2 | boundary or equality probe | full finite orbit and factor d retained |
| §4.3 Explicit critical class in analytic and algebraic bases | d=1,2,3; β=0,1,2 | ε rows are (−1,1,−1),(1,−1,1),(1,−1,1); at a=2 coefficients multiply by 2 | consistent finite probes | separate local trace/cap sign from p-adic transport |
| §4.3 Check 1 | At d=1, β=0 the proposed corrected coefficient is −a!, and at β=1… | d=1,a=2: β=0 gives−2 andβ=1 gives+2 | boundary or equality probe | separate local trace/cap sign from p-adic transport |
| §4.3 Check 2 | At d=2, β=0 the coefficient is +a!; omitting the original dimensi… | d=2,β=0,a=2 gives+2 | boundary or equality probe | separate local trace/cap sign from p-adic transport |
| §4.3 Check 3 | The pairing uses barω_A; writing ω_A without conjugation changes … | Ω scale i gives conjugate scale−i in q, not+i | boundary or equality probe | separate local trace/cap sign from p-adic transport |
| §5.1 Ideal structures and compatible complex periods | Gaussian trace dual; rescale Ω=2,q=1 by i | dual basis 1/2,−i/2 has trace pairings 1,1 and cross pairings 0; Ω∨=πi; 2πi(−i)/(−2i)=πi | consistent finite probes | inverse different and conjugate q retained |
| §5.1 API 1: ideal_period_lattice | Gaussian trace dual; rescale Ω=2,q=1 by i | a=(2) gives lattice 2Ωℤ[i], index 4 in Ωℤ[i] | consistent specialization | retain prose API only |
| §5.1 API 2: dual_period_pairing | Gaussian trace dual; rescale Ω=2,q=1 by i | Ω=2,q=1 gives Ω∨=πi; scaling by i gives 2πi(−i)/(−2i)=πi | consistent specialization | retain prose API only |
| §5.1 API 3: period_isogeny_transport | Gaussian trace dual; rescale Ω=2,q=1 by i | identity gives cotangent scalar 1 on both sides; transports 2 and 3 give 6 | consistent specialization | retain prose API only |
| §5.1 Check 1 | An a-structure for a nonprincipal ideal still exists in the formu… | nonprincipal ideal (2,1+√−5) has index2 but a²+5b²=2 has no integer solution | boundary or equality probe | inverse different and conjugate q retained |
| §5.1 Check 2 | Replacing ω_A by uω_A multiplies Ω by u and changes q by baru, wi… | Ω=2,q=1→Ω=2i,q=−i preserves Ω∨=πi | boundary or equality probe | inverse different and conjugate q retained |
| §5.1 Check 3 | For an imaginary quadratic lattice O_KΩ, its trace-dual lattice i… | Gaussian different(2i) gives inverse ideal(1/(2i))ℤ[i], index4 overℤ[i] | boundary or equality probe | inverse different and conjugate q retained |
| §5.1 Check 4 | A nonprincipal ideal is permitted and does not require ξ_a(1) to … | 1 need not lie in the norm2 nonprincipal ideal; its rational extension contains1 | boundary or equality probe | inverse different and conjugate q retained |
| §5.1 Check 5 | The same Ω is used for all ray-class representatives. | a=(2) changes latticeΩℤ[i] to2Ωℤ[i], with the same period coordinateΩ | boundary or equality probe | inverse different and conjugate q retained |
| §5.1 Check 6 | For K=ℚ(i), the different is (2i), so the trace-dual lattice of ℤ… | Tr(1/2)=1,Tr(i(−i/2))=1; cross traces0 | boundary or equality probe | inverse different and conjugate q retained |
| §5.2 Critical-value normalization | d=1,α=3,β=0,Ω=2; zero input | 𝒩(v)=v/4; 𝒩(0)=0; at α=2,β=1 multiplier 2πi/(Ω²Ω∨) | consistent finite probes | coordinate factorial and possible zero retained |
| §5.2 API 1: normalize_linear | d=1,α=3,β=0,Ω=2; zero input | α=3,Ω=2 gives 𝒩(1+2)=3/4=1/4+1/2 | consistent specialization | retain prose API only |
| §5.2 API 2: normalize_period_rescale | d=1,α=3,β=0,Ω=2; zero input | α=3,Ω=2→4 gives multiplier 1/8; v/4→v/32 | consistent specialization | retain prose API only |
| §5.2 API 3: normalize_minimal_weight | d=1,α=3,β=0,Ω=2; zero input | d=1,α=1,β=0,Ω=2 gives v/2 | consistent specialization | retain prose API only |
| §5.2 Check 1 | In d=1, α=3 and β=0 the normalizer is 2v/Ω³. | α=3 gives2v/Ω³; atΩ=2 this isv/4 | boundary or equality probe | coordinate factorial and possible zero retained |
| §5.2 Check 2 | In d=1, α=2 and β=1 it is (2πi)v/(Ω²Ω∨). | α=2,β=1 gives2πiv/(Ω²Ω∨) | boundary or equality probe | coordinate factorial and possible zero retained |
| §5.2 Check 3 | 𝒩_(α,β)(0)=0 even when all periods are nonzero; this prevents an … | nonzero multiplier times0=0 | boundary or equality probe | coordinate factorial and possible zero retained |
| §5.2 Check 4 | A zero special value stays zero; the normalization has no nonvani… | 𝒩(0)=0∉Qbar× | boundary or equality probe | coordinate factorial and possible zero retained |
| §5.2 Check 5 | Changing α from 2 to 3 in one coordinate introduces the required … | factorial changes1!=1 to2!=2 | boundary or equality probe | coordinate factorial and possible zero retained |
| §5.3 Partial Hecke L-functions as unit-orbit series | norm power m=1; b=O_L | w=2, χᵘ=1; Euler term Nv^(1−s); factor χ(O_L)N(O_L)^(−s)=1 | consistent finite probes | unitary shift s−1, not s+1 |
| §5.3 Check 1 | At b=O_L the coefficient is χ(b)Nb^(−s)=1; for a general b its fa… | b=O givesχ(b)=1,Nb=1; a general testχ(b)=2 differs from its inverse1/2 | boundary or equality probe | unitary shift s−1, not s+1 |
| §5.3 Check 2 | The unitary norm shift is s−w/2; for χ(a)=Na^m it reduces to ζ_L(… | χ=N^m givesw=2m andζ(s−m); m=0,1,2 give shifts0,−1,−2 | boundary or equality probe | unitary shift s−1, not s+1 |
| §5.3 Check 3 | For the norm character χ(a)=Na and w=2, χᵘ=1 and the shifted func… | Euler term Nv^(1−s) versus wrong Nv^(−1−s) | boundary or equality probe | unitary shift s−1, not s+1 |
| §5.4 Integrality of normalized Eisenstein sums | zero residue; unit index 2 at p=2 | normalized zero is 0∈R; ×2 has image 2R; 1∉2ℤ₂; special EK divisibility must prove eΓ₀∈2R | consistent finite probes | full-unit divisibility explicitly retained |
| §5.4 Check 1 | The theorem does not assume Nf is globally invertible in the init… | Nf=2 is not a unit inℤ₂ but identity splitting sends1↦1 | boundary or equality probe | full-unit divisibility explicitly retained |
| §5.4 Check 2 | A proof that only gives ∣tors(O_f×)∣ times the claimed value inte… | 2·(1/2)=1∈ℤ₂ while1/2∉ℤ₂: multiplication does not prove integrality | boundary or equality probe | full-unit divisibility explicitly retained |
| §5.5 Torsion distribution and the smoothing identity | Nc=3; regularizer and larger lattice | 3S−(S₀+S₁+S₂); for equal S_i=1 this is 3−3=0; c⁻¹a/a has 3 classes | consistent finite probes | degree Nc and inverse ideal retained |
| §5.5 Check 1 | The first coefficient is Nc, the degree of the ideal isogeny. | Nc=3 gives coefficient3, not9 | boundary or equality probe | degree Nc and inverse ideal retained |
| §5.5 Check 2 | The lattice on the second term is c⁻¹a, not ca. | a=ℤ[i],c=(2+i): c⁻¹a/a has5 classes, ca is a sublattice of index5 | boundary or equality probe | degree Nc and inverse ideal retained |
| §5.6 Integral differences of partial critical values | zero L-values; ideal denominator | difference 0−0=0; (1/2)²=1/4 is integral after inverting 2, not over ℤ | consistent finite probes | localize χ(b) at Nb |
| §5.6 Check 1 | The smoothing difference pairs [b] with [bc] and has χ(c)Nc on th… | χ(c)=2,Nc=7 gives first coefficient14 and second coefficient−1; [bc] replaces[b] | boundary or equality probe | localize χ(b) at Nb |
| §5.6 Check 2 | The full-unit normalization uses the integral unit-index descent … | a normalized value1/2 with index2 is not integral although its multiple1 is | boundary or equality probe | localize χ(b) at Nb |
| §5.7 Regularized integrality and algebraicity | χ(c)=2,Nc=7,χ(c′)=3; zero value | smoothing factors 13 and (−2)13=−26; at L=0 both normalized values are 0∈k | consistent finite probes | both conductors, no unit conclusion for zero |
| §5.7 Check 1 | State both conductor cases; omitting (1−χ(c′)) in conductor one i… | test smoothing factors13 and−26 differ by conductor-one factor−2 | boundary or equality probe | both conductors, no unit conclusion for zero |
| §5.7 Check 2 | The claimed algebraicity is in a field, including zero, rather th… | L=0 gives normalized0∈k and0∉k× | boundary or equality probe | both conductors, no unit conclusion for zero |
| §5.8 Katz–Shimura algebraicity for totally imaginary extensions | [L:K]=1,2; α₀=2,β₀=1 | period exponent α₀+barβ₀=3 or 6; multiplier 2πi/Ω₀³ or its square; zero L maps to 0 | consistent finite probes | no ordinary-prime assumption |
| §5.8 Check 1 | At L=K the exponent [L:K] is one and the formula matches the CM-f… | [L:K]=1 gives period exponent3 forα₀=2,β₀=1 | boundary or equality probe | no ordinary-prime assumption |
| §5.8 Check 2 | At L=ℚ(i,√(1+i)) the K-period exponent doubles without assuming L… | [L:K]=2 gives exponent6 | boundary or equality probe | no ordinary-prime assumption |
| §5.8 Check 3 | The complex algebraicity statement has no p-ordinarity hypothesis… | at inertp=3 overℚ(i), complex exponent3 remains defined despite ordinary separation false | boundary or equality probe | no ordinary-prime assumption |
| §5.9 Deligne period comparison modulo algebraic units | L=0,c⁺≠0; algebraic rescaling 2 | 0/c⁺=0∈Qbar but 0∉Qbar×; replacing c⁺ by 2c⁺ preserves its Qbar× class | consistent finite probes | period nonzero, value may vanish |
| §5.9 Check 1 | If L_f(χ,0)=0 the conclusion is the algebraic scalar zero. | 0/c⁺=0 for c⁺≠0 | boundary or equality probe | period nonzero, value may vanish |
| §5.9 Check 2 | This does not identify an E×-ambiguity from a Qbar×-ambiguity. | Q×⊂Qbar× is proper; multiplying period by√2 preserves Qbar× class but need not preserve Q× class | boundary or equality probe | period nonzero, value may vanish |
| §6.1 Ordinary lifted types and CM level structures | ℚ(i),p=5 and p=3; n=0 | 5=(2+i)(2−i), two places; 3 inert, one place shared; q₀=id, degree 1 | consistent finite probes | ordinary predicate excludes inert input |
| §6.1 API 1: ordinary_lifted_iff | ℚ(i),p=5 and p=3; n=0 | ℚ(i),5 gives 2 separate places; 3 gives the same single place twice | consistent specialization | retain prose API only |
| §6.1 API 2: level_weil_equivalence | ℚ(i),p=5 and p=3; n=0 | order-3 perfect pairing has matrix (ζ₃^(xy)); nontrivial character sums 0, trivial sum 3 | consistent specialization | retain prose API only |
| §6.1 API 3: formal_character_modules | ℚ(i),p=5 and p=3; n=0 | d=1 has rank 1 on each connected character module, total ℤ_p-rank 2 | consistent specialization | retain prose API only |
| §6.1 Check 1 | For K=ℚ(i) and p=5 the two CM embeddings induce distinct p-places… | 5 has two Gaussian prime factors(2+i),(2−i) | boundary or equality probe | ordinary predicate excludes inert input |
| §6.1 Check 2 | For K=ℚ(i) and p=3 both embeddings induce the same inert place, s… | 3 has one Gaussian prime, so both place sets meet | boundary or equality probe | ordinary predicate excludes inert input |
| §6.1 Check 3 | For L=ℚ(i,√(1+i)) and p=5, the lifted type separates the primes b… | quartic lifted type has two selected embeddings restricting to one K-embedding, still separated at5 | boundary or equality probe | ordinary predicate excludes inert input |
| §6.1 Check 4 | The bar on barp_Σ in A_(n) is essential: q_n has étale kernel. | at Lie(i)=3 mod5,d(2−i)=4 unit; d(2+i)=0 | boundary or equality probe | ordinary predicate excludes inert input |
| §6.1 Check 5 | For L=K the predicate specializes to the CM-field place-separatio… | L=K gives exactly the same two embedding/place sets | boundary or equality probe | ordinary predicate excludes inert input |
| §6.1 Check 6 | On an ordinary Gaussian elliptic reduction at 5 with i acting on … | 2+3=0 mod5 and2−3=4 mod5 | boundary or equality probe | ordinary predicate excludes inert input |
| §6.2 Canonical differentials and p-adic periods | canonical basis; unit 2 at p=5; nonunit p | periods 1; rescaled period 2; multiplication by p has valuation 1 and loses basis status | consistent finite probes | unit-valued basis ratios only |
| §6.2 API 1: padic_period_rescale | canonical basis; unit 2 at p=5; nonunit p | p=5,Ω_p=1,unit 2 gives period 2, not 1/2 | consistent specialization | retain prose API only |
| §6.2 API 2: padic_period_isogeny | canonical basis; unit 2 at p=5; nonunit p | identity level gives period 1 before and after transport | consistent specialization | retain prose API only |
| §6.2 API 3: padic_period_unit | canonical basis; unit 2 at p=5; nonunit p | two bases 1 and 2 over ℤ₅ have ratio 2 of valuation 0; ratio 5 has valuation 1 and is excluded | consistent specialization | retain prose API only |
| §6.2 Check 1 | When the algebraic basis is the canonical one, each p-adic period… | identical bases have ratio1 | boundary or equality probe | unit-valued basis ratios only |
| §6.2 Check 2 | Multiplying ω_A by a unit u multiplies Ω_p by u, rather than by u… | unit2 atp=5 changesΩ_p=1 to2 | boundary or equality probe | unit-valued basis ratios only |
| §6.2 Check 3 | Multiplication by p does not produce an integral basis and cannot… | v_p(p)=1, so pΩ_p is not a unit | boundary or equality probe | unit-valued basis ratios only |
| §6.2 Check 4 | p-adic periods are not identified with the complex periods; each … | nonzero testΩ=2 andΩ_p=1 need not be equal; both rescale by2 under basis scale2 | boundary or equality probe | unit-valued basis ratios only |
| §6.2 Check 5 | If an algebraic differential is multiplied by a nonunit, it cease… | multiplication byp has imagepO, a proper submodule ofO | boundary or equality probe | unit-valued basis ratios only |
| §6.3 The p-adic theta function of a residue class | zero residue; index 2; elliptic augmentation | θ(0)=0; restriction coefficient 2 also in ℤ₂; at Ω_p=2,e₀₀=3, θ(0,0)=6≠0 | consistent finite probes | augmentation excludes zero stand-in |
| §6.3 API 1: theta_linear | zero residue; index 2; elliptic augmentation | θ(2h+3h)=5θ(h); at h=0 both sides 0 | consistent specialization | retain prose API only |
| §6.3 API 2: theta_subgroup_index | zero residue; index 2; elliptic augmentation | index 2 gives θΓ′=2θΓ also at p=2 | consistent specialization | retain prose API only |
| §6.3 API 3: theta_integral_generic | zero residue; index 2; elliptic augmentation | O_Cp→Cp has kernel 0; integral coordinate 1 maps to 1 | consistent specialization | retain prose API only |
| §6.3 API 4: theta_augmentation | zero residue; index 2; elliptic augmentation | Ω_p=2,e₀₀=3 gives value 6, versus 0 for the zero function | consistent specialization | retain prose API only |
| §6.3 Check 1 | θ_Γ(0,y)=0 as a formal function. | θ(0)=0 | boundary or equality probe | augmentation excludes zero stand-in |
| §6.3 Check 2 | A prime-to-p torsion y has an étale killing dual and gives an int… | prime-to-p multiplication[n] has degree prime top and dual étale; n=1 isidentity | boundary or equality probe | augmentation excludes zero stand-in |
| §6.3 Check 3 | For y in ker q_n on A_(n), q_n∨ is connected, so this argument gi… | q_n étale degreep^(dn) has connected dual, so dual étale predicate false forn>0 | boundary or equality probe | augmentation excludes zero stand-in |
| §6.3 Check 4 | For torsion-free Γ′⊂Γ of index 2, fixed h,y and unchanged canonic… | θΓ=1 givesθΓ′=2, includingp=2 | boundary or equality probe | augmentation excludes zero stand-in |
| §6.3 Check 5 | For d=1, Γ=1 and β=a=0, θ(h,y)(0,0)=Ω_p e_(0,0)(h,y). Thus a valu… | Ω_p=2,e₀₀=3 give augmentation6 | boundary or equality probe | augmentation excludes zero stand-in |
| §6.3 Check 6 | Do not declare every summand in the translation formula integral. | (1/p)+(−1/p)=0 integral while each term has normp>1 | boundary or equality probe | augmentation excludes zero stand-in |
| §6.3 Check 7 | The cap convention is identical to §2.2, including the determinan… | a=0 gives period exponenta+1=1, not0 | boundary or equality probe | augmentation excludes zero stand-in |
| §6.4 Canonical formal derivatives and embedding monomials | g=(1+T)²; mixed exponents 2,3; zero indices | D²g(0)=4 versus ordinary 2; mixed moment 6; 0⁰0⁰=1 | consistent finite probes | invariant derivative and exponent convention |
| §6.4 API 1: formal_derivative_monomial | g=(1+T)²; mixed exponents 2,3; zero indices | g=(1+T)² gives first moment 2 and second moment 4 | consistent specialization | retain prose API only |
| §6.4 API 2: embedding_monomial_product | g=(1+T)²; mixed exponents 2,3; zero indices | at t=2,s=3, (ts)(t²s)=6·12=72=t³s² | consistent specialization | retain prose API only |
| §6.4 API 3: canonical_moment_compatibility | g=(1+T)²; mixed exponents 2,3; zero indices | D²(1+T)² at 0 is 4; ordinary second derivative is 2 | consistent specialization | retain prose API only |
| §6.4 Check 1 | For g=(1+T)^2 the second invariant derivative at zero is 4; the s… | D²(1+T)²(0)=4 versus ordinary2 | boundary or equality probe | invariant derivative and exponent convention |
| §6.4 Check 2 | The (0,0) monomial is 1 everywhere, including at zero. | 0⁰0⁰=1 | boundary or equality probe | invariant derivative and exponent convention |
| §6.4 Check 3 | In two coordinates, the (1,1) derivative of (1+T₁)^2(1+T₂)^3 at z… | mixed moment2·3=6 | boundary or equality probe | invariant derivative and exponent convention |
| §6.4 Check 4 | The invariant derivative is not the ordinary ∂/∂T for higher mome… | first derivatives both2, but second derivatives4 versus2 | boundary or equality probe | invariant derivative and exponent convention |
| §6.4 Check 5 | The determinant contributes the extra Ω_p factor only when relati… | at a=0,t^a=1; determinant contributesΩ_p¹ only in EK comparison | boundary or equality probe | invariant derivative and exponent convention |
| §7.1 The CM Eisenstein measure and its moments | Dirac at 2; constant 3; determinant shift | moments 1,2,4; 3δ₀ has mass 3 and positive moments 0; Ω_p=2,e₀₀=3 gives mass 6 | consistent finite probes | native measure and α=a+1 |
| §7.1 API 1: eisenstein_moments | Dirac at 2; constant 3; determinant shift | Ω_p=2,Ω_p∨=3,a=1,β=1 gives multiplier 2²·3=12 | consistent specialization | retain prose API only |
| §7.1 API 2: eisenstein_linear | Dirac at 2; constant 3; determinant shift | zero residue gives zero theta, hence every monomial moment 0 | consistent specialization | retain prose API only |
| §7.1 API 3: eisenstein_amice | Dirac at 2; constant 3; determinant shift | δ₂ transforms to (1+T)²=1+2T+T²; mass 1, first moment 2 | consistent specialization | retain prose API only |
| §7.1 Check 1 | For the generic Amice test g=(1+T)^m, the measure is δ_m and its … | δ₂ moments of degrees0,1,2 are1,2,4 | boundary or equality probe | native measure and α=a+1 |
| §7.1 Check 2 | A constant formal function c corresponds to cδ₀, not normalized H… | 3δ₀ has mass3, first moment0 | boundary or equality probe | native measure and α=a+1 |
| §7.1 Check 3 | At derivative index a=0 the algebraic-to-canonical moment convers… | a=0 givesΩ_p exponent1 | boundary or equality probe | native measure and α=a+1 |
| §7.1 Check 4 | At a=β=0 the total mass is Ω_p^1 times the (0,0) EK coordinate, n… | Ω_p=2,e₀₀=3 give mass6 | boundary or equality probe | native measure and α=a+1 |
| §7.1 Check 5 | Transport under an integral basis change of O_L⊗ℤ_p gives the sam… | swap coordinates sendsδ_(2,3) toδ_(3,2); evaluating transported monomial stillgives6 | boundary or equality probe | native measure and α=a+1 |
| §7.2 p-power translation with Weil-pairing weights | n=0; pairing of order 3 | q₀=id and one summand θ; positive character weights (1,ζ₃,ζ₃²), sum 0 | consistent finite probes | generic terms, integral full sum |
| §7.2 Check 1 | The Weil pairing occurs with the positive power here; the inverse… | positive weights(1,ζ₃,ζ₃²) sum0; inverse weights are a different ordering | boundary or equality probe | generic terms, integral full sum |
| §7.2 Check 2 | Integrality of the sum is deduced from the left side, never termw… | 1/p−1/p=0 shows integral sum with nonintegral terms | boundary or equality probe | generic terms, integral full sum |
| §7.3 Normalized partial Fourier transform | orders 1,3,4; inflated δ₀ | F₁=id; F₃(1,ζ,ζ²)=(0,1,0); F₄(1,0,1,0)=(1/2,0,1/2,0) | consistent finite probes | inverse kernel, one group-order denominator |
| §7.3 API 1: partial_fourier_orthogonality | orders 1,3,4; inflated δ₀ | order 3 positive character transforms to (0,1,0) | consistent specialization | retain prose API only |
| §7.3 API 2: partial_fourier_inversion | orders 1,3,4; inflated δ₀ | inverse of constant (1/3,1/3,1/3) is (1,0,0) | consistent specialization | retain prose API only |
| §7.3 API 3: partial_fourier_refinement | orders 1,3,4; inflated δ₀ | inflation (1,0)→(1,0,1,0) transforms to (1/2,0,1/2,0) | consistent specialization | retain prose API only |
| §7.3 Check 1 | The constant function 1 in the transformed variable maps to the d… | F₃(1,1,1)=(1,0,0) | boundary or equality probe | inverse kernel, one group-order denominator |
| §7.3 Check 2 | The indicator of x=0 maps to the constant p^(−dn), not to 1. | F₃(1,0,0)=(1/3,1/3,1/3) | boundary or equality probe | inverse kernel, one group-order denominator |
| §7.3 Check 3 | The positive character ⟨y₀,x⟩ transforms to δ_(y₀), whereas the n… | F₃(1,ζ,ζ²)=δ₁; inverse character givesδ₂ | boundary or equality probe | inverse kernel, one group-order denominator |
| §7.3 Check 4 | For the reduction ℤ/4→ℤ/2, inflate the zero-point indicator to th… | F₄(1,0,1,0)=(1/2,0,1/2,0) | boundary or equality probe | inverse kernel, one group-order denominator |
| §7.3 Check 5 | The denominator is the order of one direction, not p^(2dn). | atd=n=1,p=3 denominator3, not9 | boundary or equality probe | inverse kernel, one group-order denominator |
| §7.3 Check 6 | Fourier coefficients can have p-denominators even when ρ is integ… | δ₀ coefficients1/3 havep-adic valuation−1 atp=3 | boundary or equality probe | inverse kernel, one group-order denominator |
| §7.3 Check 7 | At n=0 both finite groups have order 1, the normalization is 1 an… | n=0 gives group order1 and Fourier coefficient1 | boundary or equality probe | inverse kernel, one group-order denominator |
| §7.4 Locally constant twists of Eisenstein moments | ρ=0,1; level 2→4 inflation | zero twist gives 0=0; F(1)=δ₀; inflated δ₀ has transform 1/2 at 0,2 and 0 at 1,3 | consistent finite probes | retained coordinate and common periods |
| §7.4 Check 1 | For ρ=1 the identity recovers the original moment formula after t… | F(1)=δ₀ with coefficient1, giving the ordinary distribution relation | boundary or equality probe | retained coordinate and common periods |
| §7.4 Check 2 | A level increase does not multiply the integral by the size of th… | inflation2→4 gives no extra factor2; coefficients at annihilator frequencies remain1/2 | boundary or equality probe | retained coordinate and common periods |
| §8.1 Katz’s local factor for a lifted ordinary type | unramified; quadratic character mod 3 | Local=1 for c=b=1; normalized inverse Gauss sum −i/√3≠0; rescaling c by λ gives cancelling equal monomial/ideal factors | consistent finite probes | nonzero Gauss factor and extension rule |
| §8.1 API 1: local_factor_independence | unramified; quadratic character mod 3 | trivial finite part and ray λ=4,α−β=1: numerator acquires 4 and χ(b) acquires 4; ratio 1 | consistent specialization | retain prose API only |
| §8.1 API 2: local_factor_gauss | unramified; quadratic character mod 3 | quadratic mod 3 inverse Gauss coefficient is −i/√3, with squared absolute value 1/3 | consistent specialization | retain prose API only |
| §8.1 API 3: local_factor_unramified | unramified; quadratic character mod 3 | constant Σ-function transforms to δ₀ with coefficient 1 at 0; c=b=1 gives Local=1 | consistent specialization | retain prose API only |
| §8.1 Check 1 | A trivial Σ-component is extended by 1 on the entire local intege… | trivial Σ-extension has value1 even at local input0 | boundary or equality probe | nonzero Gauss factor and extension rule |
| §8.1 Check 2 | For a primitive nontrivial character of a finite local unit quoti… | quadratic mod3 coefficient−i/√3≠0 has normalization1/3 | boundary or equality probe | nonzero Gauss factor and extension rule |
| §8.1 Check 3 | Replacing c by cλ and b by b(λ)⁻¹ for λ≡1 mod f changes the indiv… | rayλ=4 andα−β=1 give cancelling factors4/4=1 | boundary or equality probe | nonzero Gauss factor and extension rule |
| §8.1 Check 4 | For all p-local components unramified take c=b=1; the local facto… | c=b=1 gives numerator1,χ(b)=1,Local1 | boundary or equality probe | nonzero Gauss factor and extension rule |
| §8.1 Check 5 | Replacing the constant extension by zero extension at a trivial Σ… | zero extension at order3 gives Fourier mass2/3, constant extension gives1 | boundary or equality probe | nonzero Gauss factor and extension rule |
| §8.1 Check 6 | At a residue field of order 3, the quadratic unit character has v… | (ζ₃⁻¹−ζ₃⁻²)/3=−i/√3; opposite kernel gives+i/√3 | boundary or equality probe | nonzero Gauss factor and extension rule |
| §8.2 Auxiliary-ideal smoothing measures | Nc=7,χ(c)=2; trivial character; c=O_L | atom 13/2 versus scalar factor 13; trivial value 6; conductor-one atom 0; unit-ideal atom 0 | consistent finite probes | Artin inverse and noninvertibility retained |
| §8.2 API 1: smoothing_character_value | Nc=7,χ(c)=2; trivial character; c=O_L | Nc=7,χ(c)=2 gives 7−1/2=13/2 | consistent specialization | retain prose API only |
| §8.2 API 2: smoothing_convolution | Nc=7,χ(c)=2; trivial character; c=O_L | moments 13/2 and 3 multiply to 39/2 under convolution | consistent specialization | retain prose API only |
| §8.2 API 3: smoothing_total_mass | Nc=7,χ(c)=2; trivial character; c=O_L | Nc=7 gives mass 6; δ′ gives mass 1−1=0 | consistent specialization | retain prose API only |
| §8.2 Check 1 | For a test character value χ(c)=2 and Nc=7, δ_c evaluates to 13/2… | 7−1/2=13/2 versus2·7−1=13 | boundary or equality probe | Artin inverse and noninvertibility retained |
| §8.2 Check 2 | At χ=1, δ_c has value Nc−1; for Nc≡1 mod p it is not a p-adic uni… | trivial valueNc−1; Nc=7 gives6, nonunit atp=2,3 | boundary or equality probe | Artin inverse and noninvertibility retained |
| §8.2 Check 3 | δ′_(c′) vanishes at the trivial character, so dividing by it requ… | 1−χ(c′)=0 atχ=1 | boundary or equality probe | Artin inverse and noninvertibility retained |
| §8.2 Check 4 | The Artin inverse belongs in the support of δ_c. | Frob₂ exponents2 versus inverse3 mod5 | boundary or equality probe | Artin inverse and noninvertibility retained |
| §8.2 Check 5 | For the trivial character its value is Nc−1, so this atom is not … | atp=3,Nc=7, trivial moment6 has valuation1 | boundary or equality probe | Artin inverse and noninvertibility retained |
| §8.2 Check 6 | For c=O_L, Nc=1 and Art(c)=1, so δ_c=0. It cannot be used as a de… | c=O gives1−1=0 atom | boundary or equality probe | Artin inverse and noninvertibility retained |
| §8.2 Check 7 | On fifth roots of unity arithmetic Frobenius at 2 sends ζ₅ to ζ₅²… | Frob₂:ζ₅↦ζ₅²; inverseζ₅↦ζ₅³ | boundary or equality probe | Artin inverse and noninvertibility retained |
| §8.3 Smoothed ray-class measures from the CM Eisenstein measure | t=2,s=3,α=2,β=1; tame unit −1 mod 3 | t²s·t⁻¹=6 versus 12 without weight; −1≡2≠1 mod 3; U_f is proper | consistent finite probes | congruence-unit kernel and sign comparison explicit |
| §8.3 API 1: smoothed_moments | t=2,s=3,α=2,β=1; tame unit −1 mod 3 | smoothing multipliers 13/2 and 1−3=−2 give product −13 | consistent specialization | retain prose API only |
| §8.3 API 2: smoothed_auxiliary_relation | t=2,s=3,α=2,β=1; tame unit −1 mod 3 | at χ, cross-moments (Nb−χ(b)⁻¹)(Nc−χ(c)⁻¹)M equal in both orders; values 2·3M=6M | consistent specialization | retain prose API only |
| §8.3 API 3: smoothed_ray_descent | t=2,s=3,α=2,β=1; tame unit −1 mod 3 | unit −1 is 2 mod 3, so full unit subgroup index over congruence subgroup is >1; f=1 gives index 1 | consistent specialization | retain prose API only |
| §8.3 Check 1 | A test local algebraic monomial with Σ-exponent α becomes t^(α−1)… | α=2,β=1 givest²s·t⁻¹=ts | boundary or equality probe | congruence-unit kernel and sign comparison explicit |
| §8.3 Check 2 | For a global unit ε not congruent to 1 mod f, its p-component is … | −1≡2≠1 mod3, so−1∉U_(3) | boundary or equality probe | congruence-unit kernel and sign comparison explicit |
| §8.3 Check 3 | At f=O_L and x=e a single h_c is invalid on U; the c′ support exc… | e∈A[c] true; e excluded from(A[c′]∖e)×A[c] | boundary or equality probe | congruence-unit kernel and sign comparison explicit |
| §8.3 Check 4 | On a character monomial the inversion and extra t⁻¹ give derivati… | at t=2,s=3 weighted moment6 versus unweighted12 | boundary or equality probe | congruence-unit kernel and sign comparison explicit |
| §8.3 Check 5 | At nontrivial f, replacing closure(U_f) by closure(O_L×) can chan… | Gaussian μ₄ has4 residues mod3, only1 congruent to1 | boundary or equality probe | congruence-unit kernel and sign comparison explicit |
| §8.3 Check 6 | The unramified barΣ-depletion is the full product over barΣ_p, no… | two factors(1−2)(1−3)=2; single factors−1,−2 | boundary or equality probe | congruence-unit kernel and sign comparison explicit |
| §8.3 Check 7 | For α=2, β=1, evaluating the algebraic character at (t⁻¹,s) gives… | t²s=12 and weightedts=6 | boundary or equality probe | congruence-unit kernel and sign comparison explicit |
| §8.4 Bounded removal of auxiliary ideals | C₂,C₃; empty combination r=0 | average character values 0 or 1, indicator values 1/2 or 1/3; empty combination 0↦0 | consistent finite probes | uniform coefficient congruences, not pointwise integrality |
| §8.4 Check 1 | On a finite cyclic group C_p, p⁻¹Σ_gδ_g has integral character va… | C₂,C₃ averages give indicator1/2,1/3 but all character values0 or1 | boundary or equality probe | uniform coefficient congruences, not pointwise integrality |
| §8.4 Check 2 | Do not assume every δ_c is a unit or equate a height-one gcd stat… | δ_(O)=0; gcd(T₁,T₂)=1 in a two-variable domain but ideal(T₁,T₂) is proper | boundary or equality probe | uniform coefficient congruences, not pointwise integrality |
| §8.5 Critical Hecke-value interpolation over totally imaginary fields | split d=1; two complementary primes; period scale 2 | period divisor Ω_p²Ω_p∨; depletion (1−2)(1−3)=2; at α=2 both sides rescale by 1/4 | consistent finite probes | all primes in product and algebraic transport retained |
| §8.5 Check 1 | For ℚ(i) at p=5, d=1 and α=2, β=1, the moment has period divisor … | d=1 divisorΩ_p²Ω_p∨; dimension2 has two selected period factors | boundary or equality probe | all primes in product and algebraic transport retained |
| §8.5 Check 2 | An inert prime for an imaginary quadratic K is outside this theor… | p=3 overℚ(i) gives intersection of place sets of size1, ordinarityfalse | boundary or equality probe | all primes in product and algebraic transport retained |
| §8.5 Check 3 | For a unit u rescaling one selected algebraic differential, Ω and… | atp=5,u=2,α=2 both normalized sides multiply by1/4 | boundary or equality probe | all primes in product and algebraic transport retained |
| §8.5 Check 4 | The general interpolation target allows tame f prime to p and arb… | overlap k=1,d(σ)=0 gives μ=−Σ; α=(1,2),β=(2,3) has parallel sum +1 and is outside the k≥1 Katz range | boundary or equality probe | all primes in product and algebraic transport retained |

The remaining conventions and explicit supplier-boundary statements have these separate probes.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Embedded arithmetic base | zero ring; characteristic p; k[ε]/ε² | 1=0 contradicts injection into ℂ; p·1=0 contradicts characteristic 0; ε maps to 0 so injection fails | excluded by datum | retain actual injective arithmetic base |
| Positive dimension, universes and finite products | d=0,1,2; Fin 0; rank-zero tensor | empty product 1, empty sum 0; omitted sole zero-lattice term gives 0; 2d=0,2,4 | theorem requires d>0; formulas total | explicit hd binder |
| Squared Hermitian norm | h=1,z=1,i,0; h=0 | H(1,1)=H(i,i)=1; H(0,0)=0; log 0=0 creates exp 0=1 in wrong model | positive h and omitted zero needed | explicit hh binder and branch |
| Pairing source and target | H(i,1),H(1,i) | Im values 1 and −1; characters have modulus 1 | alternating convention pinned | use linear-first H |
| Native lattice meaning | Λ=ℤ[i]; full ℚ(i) additive subgroup | real span full for both, but ℚ(i) has 1/n→0 and is not discrete | spanning alone insufficient | DiscreteTopology retained |
| Current pairing transport | N=2,k=1 | test-first/form-first factor (−1)¹=−1; differential signs −1 versus +1 | conventions compatible under transport | explicit comparison |
| Compact current versus unrestricted current | infinitely supported sum of locally finite point masses | compactly supported test meets finitely many masses; global constant test sums infinitely many 1s | dual carriers differ | import local homotopies, no carrier identification |
| Hyperfunctions degree transport | p=0,1 | homotopy signs +1,−1; regularization signs +1,+1 | retained supplier normalization | compare before use |
| Ideal localization | R=ℤ,a=(2) | 1/2∈intersection over ℓ≠2; 1/3∉that intersection | direction correct | specify contractions not dividing a |
| Non-CM quartic example | t²=1+i | t⁴−2t²+2=0; Norm_K/Q(1−i)=2 cannot be square of rational norm | conjugate root absent | give witness, no CM involution on L |
| Unit norm shift | m=0,1,2 | χ=N^m gives ζ(s),ζ(s−1),ζ(s−2) | shift s−w/2 with w=2m | no reversed idelic exponent |
| TSym multiplication and rank-one shift | a=0,1,2; p=2,3 | shift coefficients 1,1,1; shuffle coefficients 1,2,3 | equality of operations false | use tensor shift |
| Tensor rank and projectivity | M=0,O_K,O_L; torsion M=O_K/(2) | dimensions 0,1,2; torsion tensor is not a projective CM datum | supplier generality preserved | no basis/projectivity shortcut |
| Cover and cap direction | circle degrees 1,2; Γ=μ₂; S₃ point action | integrals 1,2; transfer ×2; permutation invariants rank 1 versus rank 3 | no universal integral normalized cap | preserve free-group/localized distinction |
| Formal derivative | m=0,1,2; k=0,1,2 | moments rows (1,0,0),(1,1,1),(1,2,4) | 0⁰=1 is intentional | invariant derivative retained |
| Fourier and characteristic | n=0,1; p=2,3; characteristic p coefficient | denominators 1,2,3; in characteristic p denominator p=0 | generic characteristic-zero field required | no division by zero |
| Smoothing inverse | χ(c)=2,Nc=7 | Nc−χ(c)⁻¹=13/2; χ(c)Nc−1=13; ratio χ(c)=2 | two factors distinguished | use Art(c) inverse |
| Integral measure bound | C₂,C₃ averaged Dirac measures | characters 0 or 1, indicators 1/2 or 1/3 with norms 2 or 3 | pointwise integrality insufficient | arbitrary coefficient congruences |
| Empty support/family | D=∅; r=0; unit auxiliary ideal | residue module 0; linear combination 0; smoothing atom 0 | no impossible inverse | retain zero controls |
| Volume denominator | d=1,2, square products | vol(A)=−2i,−4 and C=−π,π² | denominators nonzero | volume defined explicitly |
| Period denominators | Ω=2,q=1; scale by i; unit scale 2 at p=5 | Ω∨=πi; same after scale i; normalized α=2 multiplier 1/4 | common algebraic basis ties periods | no arbitrary free scalars |
| Ordinary places and ramification | ℚ(i),p=2,3,5 | 2 divides d_L=4; 3 inert; 5 splits | 2 fails unramified datum, 3 fails ordinarity, 5 admitted | no dropped bad-input hypothesis |
| All primes in depletion | two unramified values 2,3; ramified zero extension | complementary product 2; ramified factor 1−0=1 | inverse of zero never evaluated | typed Euler convention |
| Complex-to-p-adic comparison | algebraic scalar 0 or 1 and transcendental π | 0↦0 and 1↦1 under both embeddings; π has no specified algebraic-field image | no global ℂ→Cp map | algebraic normalized RHS first |

| Current out-of-range degrees | d=1,p=2 or q=2 | complementary degree would be −1; the space is 0, not degree-zero tests | excluded by explicit degree ranges | no natural-subtraction alias |
| Residue field size and finite unit characters | F₂, F₃; fictional q=1 | unit group sizes 1,2; F₂ has 0 nontrivial characters; a field with 1 element has 0=1 | no ramified nontrivial character at level 2 | retain primitive/conductor hypotheses |
| Arithmetic and inverse Frobenius | fifth roots, prime 2 | exponent 2 versus inverse exponent 3 modulo 5 | distinct actions | inverse atom support witnessed |
| CM ideal isogeny direction | Gaussian reduction, i acts by 3 mod 5 | d(2+i)=0, d(2−i)=4 | connected versus étale | retain complementary q_n direction |
| Partial Fourier natural subtraction | m=n and m=n+1 | p^(m−n)=1,p; divisibility support full, then kernel annihilator | m≥n in scope | no negative natural exponent |

## Lean elaboration and binder audit

Elaboration was run from the supplied content checkout using `lake env lean` on the absolute location of packages/AutomorphicPadicLFunctionsPartII/Suggested.lean. No TauCeti import is used, so no targeted object build was needed. Exit code: 0. Exactly **one** sorry warning; no other warning or error. Its diagnostic text, with the filename normalized to the repository-relative path, is:

```text
packages/AutomorphicPadicLFunctionsPartII/Suggested.lean:67:8: warning: declaration uses `sorry`
```

A separate scratch file contained the identical declarations and `#check @name` for all four. That elaboration also exited 0, with one sorry warning and the four requested type outputs. The theorem's explicit elaborated binders include d, 0<d, Λ, DiscreteTopology Λ, IsZLattice ℝ Λ, h, every inequality 0<h_i, ν, z and w. None disappeared. The three formula definitions retain their dimension and all formula parameters. The formulas intentionally accept total-function junk inputs; only the theorem asserts mathematical lattice continuation under the positivity/full-discreteness hypotheses. No context or generality repair was needed after checking those output types. A pre-creation invocation failed at file lookup with `no such file or directory (error code: 2)` and processed no Lean source; the completed-file acceptance run above is the elaboration result.

## Dependency check

The required gate command was run on packages/AutomorphicPadicLFunctionsPartII/README.md with name AutomorphicPadicLFunctionsPartII, the supplied ORDER.txt and --movable. Its final output is included below. The dependency directions do not cite the later nonordinary or Polylogarithms roadmaps as suppliers. The nonordinary sibling is identified by its human title in ownership, so the mechanical scan does not misread that ownership boundary as a dependency.

```text
depcheck: 28 roadmaps, 242 edges, 0 problem(s)
```

No UPWARD or CYCLE line occurred. No merge-order or tooling file was edited.
