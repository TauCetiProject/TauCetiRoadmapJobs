# Review of GeometricQuantization (pull request #1186 at 25d4909)

**Verdict:** needs changes

## R01 (P2) — Resolve the remaining ordinary Picard ownership overlap

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:627`–647: “compute the transition of its jth line on the ith curve to have degree δᵢⱼ” and “For this compact flag prove H^q(K/H,𝒪)=0 for q>0”.

**Claim:** Section 3.3 owns the fundamental-line degree basis and the ordinary holomorphic Picard comparison, with a harmonic-representative/root-weight proof of the required vanishing. The supplied SchubertGeometry revision still independently plans exactly those constructions. Importing main's S9.7 repairs the geometric overlap, but does not resolve this second ownership conflict.

**Witness:** `TauCetiRoadmap/SchubertGeometry/README.md:233`–279 at the supplied revision: S3P.1 constructs the same δᵢⱼ basis; S3P.2 gives the same harmonic/root-weight vanishing and Picard comparison. S3P.3 at line 281 already consumes GQ Q2A.1.

**Repair:** Assign this extension to one owner explicitly. The acyclic allocation compatible with this head is to keep §3.3 here and identify the later Schubert Part II application as its consumer, replacing that application's independent S3P.1–2 construction by the import. Record that allocation in the scope/downstream contract; coordinate the competing owner accordingly. Do not add a dependency on the existing-roadmap revision or a return edge through S3P.3. Main's S9.7 remains the supplier of the flag and characteristic maps. The shared test is unchanged: ℂP¹ has degree matrix (1), and SU(3)/T has matrix ((1,0),(0,1)); both Picard computations must use those same classes. This is the unresolved part of the previous R02, not a mathematical counterexample to the Picard theorem.

## R02 (P3) — Delete the character-wrapper companion

**Location:** `TauCetiRoadmap/GeometricQuantization/HomogeneousCharacterTargets.lean:1`–91, especially line 20: “def restrictCharacter … := χ.comp i”.

**Claim:** This unchanged file contains six generic definitions and eight elementary theorems, none needed to state a geometric headline. It also has four forbidden Mathlib submodule imports, lacks the required target-signature module docstring, and lacks several declaration docstrings and all fourteen README name correspondences. The form rules apply to this file as well as Suggested.lean.

**Witness:** Seven theorem bodies are `rfl` or `Iff.rfl`; the eighth is kernel extensionality. Native composition, kernel, quotient lift and quotient continuity already supply all six operations (pinned declarations below).

**Repair:** Delete the companion file; do not move this padding into `Suggested.lean` or prove it in place. Keep the mathematical tests in the README and its native supplier citations. Native descent still sends S₃/A₃'s nonidentity coset to −1, and native restriction along multiplication by 2 sends the integral character 3 to 6. The main acceptance file correctly has no replacement wrappers. The worker gate passes but does not detect these companion-file violations.

## R03 (P3) — Record the fifteen references in the source manifest

**Location:** `TauCetiRoadmap/GeometricQuantization/README.md:1813`–1857, References; `TauCetiRoadmap/GeometricQuantization/sources.toml` is absent.

**Claim:** None of the fifteen cited works has the required persistent edition, locator, retrieval and legal-status record. The new Schottenloher, Tuynman and Ma–Marinescu citations make that record especially useful because their exact versions and normalizations matter.

**Witness:** The folder contains README.md, Suggested.lean, HomogeneousCharacterTargets.lean and metadata.toml only. Source-service attempts retrieved ten texts, classified two as uncertified and did not retrieve three; the bibliography records none of those statuses.

**Repair:** Add one `tauceti-roadmap-sources/v1` entry per work, reusing the source keys in this report. Include the exact versions/locators and the service's provenance and access status; keep published/preprint versions under one key. Do not copy source text into the folder. This is metadata only: the torus cocycle at k=1 remains 1, and the degree-two (0,1,−2) exponent count remains six one-dimensional weight spaces.

## Verified sound

I first checked all seven findings of the previous review, then read all 1,857 README lines, all 59 Suggested.lean lines and all 91 companion lines at the requested head, including unchanged passages. I read the normative repository README and CONTRIBUTING and main's SymplecticGeometry, SmoothBundlesConnections and SchubertGeometry for shape and ownership. No worktree file was changed. The outside-folder diff is empty. No route-specific restriction, copied source passage, computational-algorithm target, sorry-bodied data or `set_option` was found. The scope is repairable; the remaining blocker is the ownership conflict above. Numerical witnesses below test the statements and conventions; they are not proofs of the planned general theorems.

**Previous findings, checked individually.** No supplied repair report marks a finding “not actionable in this package”; no settled disposition was overridden.

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01: ineligible LieGroups revision | README:513, “Normalized compact rank-one period adapter”; 1324, “rather than assumed as an additional LieGroups contract” | Repaired. §3.1a now constructs the compact-real derivative/period adapter; §6.6 constructs the explicit abelian period quotient. Main's actual integration, tori and universal-complexification contracts suffice as their named inputs. |
| R02: duplicate flag construction | README:622, “Use SchubertGeometry S9.1/S9.7's actual partial flag”; 633, “Define its ordinary holomorphic Picard group” | Partly repaired. The flag/KKS/characteristic-map construction is imported. The remaining S3P.1–2 ownership overlap is R01 above. |
| R03: nonintegral torus level | README:965, “Fix an integer k>0” | Repaired. k=1/2, whose cocycle ratio is −1, is excluded; k=1,2 still give ratio 1 and dimensions 1,2. |
| R04: missing equivariant RR bridge | README:1152, “Equivariant Riemann–Roch and Fourier coefficients”; 1260, “§6.3a’s near-identity equivariant formula” | Repaired. The fixed-component formula, near-identity expansion, moving denominator and Haar extraction are stated before their use. The doubled-circle O(1) character gives 2 at identity and 0 at π/2. |
| R05: companion padding | Companion:20–21, “restrictCharacter … := χ.comp i” | Not repaired; R02 above. All fourteen declarations remain unchanged. |
| R06: incomplete locators | README:349–350, “Propositions 7.15–7.16, p. 105”; 400–406 names Tuynman 7.9; 1553–1564 names Ma–Marinescu §5.2 | Repaired for the identified targets. New exact locators and explicit supplier deductions cover the lift/operator, integration, polarization, projective/torus and orbifold inputs. §4.2's closure results are explicit Jacobi/Leibniz deductions, not an attributed book theorem. Unread background works remain uncertified below. |
| R07: absent source manifest | README:1813, “References”; no sources.toml | Not repaired; R03 above. |

**Gate, dependency direction and elaboration.** The worker's recorded gate at this exact head reports every counter zero and `OK`, including the targeted module build and outside-folder check. I independently ran the prescribed dependency check; its complete output was:

```text
depcheck: 204 roadmaps, 1450 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Every Needs line and supplier contract was read; the resolved owners appear below. No gap is declared. I ran the prescribed direct `lake env lean` elaboration of Suggested.lean: exit 0, no warnings. Suggested.lean has zero declarations. A scratch copy of the companion with `#check @name` for all fourteen declarations also elaborated: exit 0, no warnings. The resulting signatures retain normality and N≤kernel where required; they quantify over arbitrary groups/topologies, not geometric stabilizers. Unused ambient H is absent where it should be. There was no lost required binder and nothing was changed. There are zero sorried theorem candidates for a one-tactic replacement probe: the eight existing companion proofs already expose their elementary nature, seven by reflexivity and one by extensionality.

**Headline inventory and statability.** The README's end/deep targets are: prequantum integral existence and flat twists (§1.1, supplied by SBC); intrinsic lifts and commutator, complete-flow essential self-adjointness and integrated central lifts (§§2.1–2.3); homogeneous descent, calibrated compact-root maps, fixed-moment integrality, ordinary Picard/period and global-form comparisons (§§3.1–3.4); polarization preservation and leafwise descent (§§4.1–4.3); cotangent half-density, projective and theta/Bohr–Sommerfeld realization (§§5.1–5.3); positive-line embedding/large-power index, torus character conversion, fixed-component equivariant RR/Fourier extraction, the global distribution limit, full-isotropy reduced lines, complexified semistability, restriction/descent and bounded extension, orbifold inertia index, joint chamber quasi-polynomials/uniform asymptotics, and ineffective-action transport (§§6.1–6.10). Section 6.11 is worked-example validation.

Suggested.lean's module docstring identifies the missing principal/associated-line, section/Hilbert/core, compact-root/flag/Picard, polarization/half-density, holomorphic-line/section, equivariant cohomology/fixed-normal and reduced-orbifold carriers. Integrated central lifts belong to its Layer 2 lifting family; ineffective transport belongs to its actual multiplicity/distribution family. Native theta functions, generic characters and projectivization do not supply those geometric objects. Object searches at the pins found no absent headline that could be stated in full merely by adding a few simple definitions. The empty acceptance namespace is therefore not itself a finding. The illustrative companion is not an acceptable substitute.

**Sources: all fifteen seeded targets.** Every reference was attempted through the legal sources service. Ten works were retrieved; the five access limitations are listed under Not verifiable. The README marks no additional locator as unverified. I read the following text at the locators, including assumptions and proof steps used as inputs. Source line numbers refer to the service's numbered extractions; page numbers are printed pages unless specified otherwise. The Schottenloher and Ma–Marinescu normalization slips were also checked against rendered PDF pages.

| Seeded target | Source passage and result |
|---|---|
| 2.2 Complete-flow domains | schottenloher lines 4337–4381, Propositions 7.15–7.16, p.105: complete Hamiltonian field, transported prequantum sections, symmetry and Stone route. The source has two proof defects recorded below; README:350–359 supplies the missing invariant-dense-domain argument and uses a correctly normalized unitary flow. Half-line deficiency indices are a direct ODE deduction. |
| 2.3 Lifted actions/central extensions | tuynman lines 1920–1930, Theorem 7.9, p.39: connected simply connected integrating group and completeness of every infinitesimal field. The ordinary-manifold specialization supports integration, not automatic descent to a non-simply-connected group. README separately tests the covering kernel and imports HamiltonianSystems Layer 3's cocycle. |
| 3.1 Homogeneous characters/descent | graham-vogan lines 1083–1088, Example 5.8, p.25: associated quotient for a unitary representation. The one-dimensional character case supplies the quotient convention. The smooth inverse, connection and holomorphic extension assertions are explicitly supplier-based deductions, not claimed verbatim at that example. |
| 3.1a Compact rank-one adapter | This is labelled a deduction from native complex Killing/sl₂ theory and the named compact-group/integration suppliers, not a theorem attributed to a paper. The actual normalized compact-real adapter is now owned here. The three su(2) brackets, period, double cover and reflection are evaluated below. |
| 3.2 Coadjoint characters/period maps | graham-vogan lines 1623–1635, Definition 6.4, p.37: full stabilizer representation with prescribed differential. The one-dimensional specialization yields the character condition, distinct from the metaplectic admissibility condition. The Maurer–Cartan connection and calibrated sphere-period equivalences are explicit new deductions. |
| 3.4 Global forms/boundaries | graham-vogan lines 1083–1088, Example 5.8, p.25, and demailly lines 15564–15573, VI §9.1 equation (9.1), p.314. These supply the associated quotient and Picard exact sequence; finite-cover/lattice consequences are correctly identified as deductions. Their ownership problem is R01. |
| 4.2 Observable Lie algebra/basic functions | README:798–841 derives the normalizer and basic-function laws using the actual Hamiltonian bracket, Jacobi and Leibniz. Independently, schottenloher lines 6347–6384, Definition 10.18/Lemma 10.19/Proposition 10.21, pp.155–156, support the polarization-preserving observable criterion. The p versus p² and basic q tests discriminate Lie closure from associative closure. |
| 4.3 Descent/Bohr–Sommerfeld leaves | schottenloher lines 6870–6908, Definition 11.4 and Proposition 11.5, pp.167–168: trivial leaf holonomy and parallel sections, with reducible/submersion hypotheses for the quotient. README's smooth quotient/connected-fibre assumptions remain explicit; both directions of trivial-holonomy descent are tested. |
| 5.1 Cotangent/Schrödinger polarization | graham-vogan lines 1028–1082, Definition 5.5 and equation (5.7), pp.23–25: actual half-densities and intrinsic Hilbert completion. The cotangent identification and half-divergence operator are deductions from C1, density integration and that construction. Real half-densities do not require a holomorphic half-form square root. |
| 5.2 Kähler projective examples | demailly lines 13179–13223, V §§11.3/12.1, pp.267–268, supports the holomorphic/Chern dictionary. ComplexKahlerGeometry K7.1–K7.2 supplies O(k), the polynomial section identification and binomial dimension. The prequantum action/L² comparison is expressly the application here. |
| 6.3a Equivariant RR/Fourier | meinrenken lines 46–67, equations (3)–(5), p.2: arbitrary fixed components, fibre character and inverse moving-normal action. vergne lines 132–179, §3, p.4, and 185–241, Theorem 3.2, p.5: near-identity character expansion and graded Todd scaling. The angular convention and normalized Haar projection are correctly separated from the source's conventions. Derivative-uniform compact-X estimates follow from the analytic Todd expansion on compact M, not an isolated-fixed-point assertion. |
| 6.4 Global distribution limit | vergne lines 185–241, Theorem 3.2, p.5: distributional expansion of rescaled multiplicities; leading term is normalized Liouville pushforward. README uses the positive-line vanishing bridge and §6.3a, and does not infer pointwise wall multiplicities from weak convergence. |
| 6.5 Reduced lines/admissible weights | sjamaar lines 1233–1289, equation (2.3) and Proposition 2.11, pp.24–25; meinrenken lines 145–208, Theorem 2.1, pp.4–6. The identity component has zero shifted infinitesimal fibre action, but finite isotropy remains. The roadmap preserves full isotropy and distinguishes generic admissibility from coarse-line descent. |
| 6.6 Complexified action/semistability | sjamaar lines 943–1012, Proposition 2.2, pp.18–19, and 1151–1160, Theorem 2.8, p.22. The source assumes a global complexified action and admissibility; compactness supplies the latter here. The roadmap now constructs the action, line lift and period quotient first, retains finite stabilizers/regularity, and uses no infinite-dimensional automorphism-group universal property. |
| 6.7 Shifted bound/global extension | sjamaar lines 1439–1488, Theorem 2.15, pp.27–28: proper moment map, norm growth and bounded holomorphic extension. The source's 8π factor becomes 4n for the roadmap's angular shifted normalization. Direct differentiation gives 72/625 on both sides. Empty-level and rank-zero cases are treated separately. |

Additional reads: schottenloher lines 3994–4010 (Example 7.3, pp.96–97), 4103–4121 (Theorem 7.8, p.99), 4162–4183 (Proposition 7.10, p.101), 5064–5069 (Definition 9.8, p.125), 5745–5761 (Definition 10.1, p.141); demailly lines 13142–13223 and 17559–17642 (VII Theorem 13.1, pp.358–359, Corollary 13.3 and Theorem 14.1, p.359); ma-marinescu lines 1540–1615 (§5.2, equation (5.12), Theorem 5.4, pp.32–33); meinrenken lines 209–242 (equations (17)–(21), pp.6–7). Positivity, compactness, proper orbifold bundles and large powers are retained. The ineffective-isotropy extension of the effective-orbifold Hodge theorem and the joint-parameter uniform chamber estimate are explicitly owned deductions. Cannas and Meinrenken–Sjamaar were retrieved as background, not substituted for unread theorem locators.

**Computed adversarial pass.** The following 111 roadmap rows and fourteen companion rows give computed values, including positive and negative controls. I recomputed the signs, periods, holonomies, character sums and asymptotic constants; exhaustive small-degree monomial enumeration at n=0,1,2,3,6 independently checks both projective count formulas, including exterior weights. The hypotheses fix real/complex manifolds and characteristic zero: finite-characteristic rings, DVRs and inseparable extensions are not inputs to these statements. Empty manifolds, points, rank-zero tori, disconnected finite isotropy, noncompact/incomplete examples, nonabelian groups and vanishing denominators are tested where relevant. Unless specified, ℏ=1. “Retain” means the instance agrees, not that a future general theorem has been proved.

| Statement/convention | Instances tried and computed values on both sides | Result; change |
|---|---|---|
| Conventions: curvature and Chern sign | θ=p dq gives dθ(∂q,∂p)=−1; da(∂q,∂p)=+1; associated F(∂q,∂p)=−i; iF/(2π)=ω/(2π). | Agree; retain. |
| Conventions: Hamiltonian sign | X_q=−∂p, X_p=∂q; dq(X_p)=1=ω(X_q,X_p). For f=q²/2,g=p, [X_f,X_g]=∂p=−X_q. | Agree, including nonconstant bracket; retain. |
| Conventions: quantum commutator | On the polarized function q, Q_qQ_p(q)=iq, Q_pQ_q(q)=2iq; difference −iq=−iQ_1(q). | Agree; opposite sign fails. |
| Conventions: antiunitary dictionary | Complex conjugation sends i∂q to −i∂q and multiplication by q to itself; the dual commutator on q is +iq. | Agree; retain. |
| Conventions: zero dimensional object | On a point, ω=0, X_c=0, Q_c=c; for c=0 both lift and operator are 0. Divisions require ℏ>0, excluding ℏ=0. | Agree; retain. |
| 1.1 Integral existence | Sphere area 2πℏ gives period 1 and degree 1; area πℏ gives period 1/2 and no prequantum line. A point has period 0 and trivial line. | Both directions discriminated; retain. |
| 1.1 Exact line | Plane θ=p dq gives ∇=d+iθ/ℏ, hence F=−iω/ℏ. Reversing the connection sign gives +iω/ℏ and fails. | Agree; retain. |
| 1.1 Holonomy dictionary | Boundary of positively oriented rectangle of area A: ∮θ=−A, line holonomy exp(+iA/ℏ), principal holonomy exp(−iA/ℏ); for A=πℏ both are −1. | Agree, inverse directions explicit; retain. |
| 1.1 Tensor/dual/power API | Degrees 1 and 2 tensor to 3; dual of degree 1 has degree −1; its second power has degree 2, matching curvature sums. | Agree; retain. |
| 1.1 Flat twists and exact-potential change | A closed added form with loop period ℏ/2 changes line holonomy by exp(−i/2), not 1; period 2πℏ changes it by 1. Same curvature, different first holonomy. | Flat torsor is needed; retain. |
| 2.1 Connection-preserving lift | With a=dt−p dq, Y_q=∂p+q∂t and Y_p=−∂q; [Y_q,Y_p]=∂t=Y_1 and L_Ya=0. | Agree; retain. |
| 2.1 Rejected alternate lift | Using +X^hor+(f/ℏ)V instead gives F_q=−∂p+q∂t, F_p=∂q+2p∂t; bracket −3∂t, versus F_1=∂t. Also L_Fq a=2dq. | The roadmap's negative control is correct. |
| 2.1 Uniqueness/constant ambiguity | On one connected component, two lifts with same projected field differ by cV. On two points, differences (1,2)V cannot equal one constant times V. | Connectedness matters; retained where used. |
| 2.1 Hamiltonian versus symplectic | On the unit torus, ι_∂q(dq∧dp)=dp has loop period 1; a global df has period 0. | Symplectic alone does not give the lift of a function; retain. |
| 2.2 Operator and Leibniz rule | Q_p(qs)=i(s+q s′), while qQ_p(s)+i(∂q q)s=i q s′+is. Q_c(s)=cs. | Agree; retain. |
| 2.2 Unitary complete flow | For p, U_tφ(q)=φ(q−t), norm squared ∫\|φ(q−t)\|²dq=∫\|φ\|²dq and derivative −φ′=(iQ_p)φ. For c, U_t=e^{itc}. | Generator sign and constants agree; retain. |
| 2.2 Common compact support domain | Translation sends support K to K+t, still compact; differentiating a compactly supported smooth φ remains in that domain. Constant 1 on ℝ has infinite L² norm. | No everywhere-defined L² assertion; retain. |
| 2.2 Incomplete-flow control | iℏ∂q on (0,∞): deficiency solutions exp(q/ℏ), exp(−q/ℏ) have squared integrals ∞, ℏ/2. Indices are (0,1); tensoring the free p-variable gives (0,∞). | Completeness cannot be dropped; retain. |
| 2.3 Moment cocycle/central extension | Plane translation moment functions q,p have bracket 1 although the translation Lie algebra bracket is 0; lifted fundamental fields have central bracket −V/ℏ. | Nontrivial Heisenberg extension required; retain. |
| 2.3 Descent of integrated lift | SU(2)'s central −1 acts on degree k by (−1)^k: k=1 gives −1 and fails SO(3) descent, k=2 gives 1 and descends. | Kernel test excludes wrong global form; retain. |
| 2.3 Constant gauges | Over a connected point base the connection-preserving vertical group is U(1); over two points it is U(1)². | The connected-base central-extension contract is necessary. |
| 3.1 Associated quotient convention | For stabilizer character λ(h)=−1, [h,1]=[e,−1]; using λ inverse is indistinguishable here, so use λ(h)=i: [h,1]=[e,i], not [e,−i]. | Source quotient orientation matches; retain. |
| 3.1 Tensor and unit characters | λ=i, ν=−1 at h give λν=−i; associated tensor scalar i·(−1)=−i. Unit gives 1; dual gives −i. | Agree; retain. |
| 3.1 Full stabilizer versus differential | H=μ₂: trivial and sign characters both have differential 0, but values at −1 are 1 and −1. | Full character required; retain. |
| 3.1 Nonabelian quotient descent | S₃ sign has kernel A₃ of order 3; the quotient has order 2 and its nonidentity maps to −1. Trivial character has kernel of order 6. | Both directions and nonabelian case pass. |
| 3.1 Compact holomorphic gauge | On compact connected ℂP¹, an invertible holomorphic gauge is constant; on ℂ, exp(z) has values 1 and e at 0 and 1. | Compactness distinguishes the asserted classification; retain. |
| 3.2 Maurer–Cartan connection | d⟨μ,θ_L⟩(X,Y)=−μ([X,Y]); a=dt−⟨μ,θ_L⟩/ℏ therefore has da(X,Y)=+μ([X,Y])/ℏ. | KKS and principal signs agree. |
| 3.2 Fixed-moment criterion on a point | For the period-2π circle, μ/ℏ=0,1 give characters 1,e^{it}; μ/ℏ=1/2 gives value −1 at t=2π, failing descent. Ordinary curvature is 0 in all three cases. | Ordinary existence is weaker; retain. |
| 3.2 Rank-one period calibration | SU(2) coroot period gives degree 1; under SU(2)→SO(3), derivative doubles the period-2π generator. SO(3) weight 1/2 is not integral. | Agree; §3.1a now owns the normalized adapter. |
| 3.2 Central character twist | On a point, tensoring a weight-0 line by weight 1 changes μ from 0 to ℏ while curvature stays 0. | Moment data are not determined by curvature; retain. |
| 3.2 Ordinary versus equivariant integrality | For U(2), eigenvalues (1/2,−1/2) give root difference 1, but the two torus coordinates are nonintegral. | Integral sphere line need not have this fixed U(2) lift; retain. |
| 3.3 Integral degree basis | ℂP¹ fundamental line has degree +1; SU(3)/T fundamental lines against simple root spheres give matrix ((1,0),(0,1)); partial flag ℂP² has matrix (1). | Values agree; geometric input imported; Picard ownership R01. |
| 3.3 Flag cohomology/vanishing | A point has H²=0 and H^q(O)=0 for q>0. ℂP¹ has H²(ℤ)=ℤ and H¹(O)=H²(O)=0. An elliptic curve has dim H¹(O)=1. | Flag hypotheses distinguish the vanishing claim. |
| 3.3 Picard comparison | ℂP¹ sends O(k) to k∈ℤ, bijectively. On an elliptic curve, distinct degree-zero holomorphic lines all map to 0. | Exponential-sequence vanishing is essential; retain application. |
| 3.3 Pullback to a finer flag | The line on the SU(3) projective partial flag pulls back to degrees (1,0), while the second fundamental line has (0,1) and does not descend to that partial flag. | Selected simple-root vanishing works; retain. |
| 3.4 Exact character lattice | SU(2) weight lattice maps by k↦k; SO(3)'s character lattice maps by k↦2k. Cokernels respectively 0 and ℤ/2. | Global-form distinction retained. |
| 3.4 Central kernel | U(2) characters (a,b) map to degree a−b; kernel consists of (m,m), the determinant powers. For a torus orbit (a point), every character has degree 0. | Exactness/kernel claim passes. |
| 3.4 Projective central obstruction | On SU(3)'s ℂP², a primitive central cube root acts on O(1) by its inverse; on O(3) its cube is 1. | PU(3) descent distinguishes 1 from 3; retain. |
| 3.4 Boundary dimensions and sign | N=1 gives a point with H²=0; N=0 has no nonempty projective space. Degree −1 reverses curvature; k=0 has zero curvature, not the positive form. | Boundary qualifications agree. |
| 4.1 Real polarization | In ℝ², P=span(∂p) has rank 1 and ω\|P=0; TM has rank 2 and ω(∂q,∂p)=1. A point has P=0. | Lagrangian rank and isotropy discriminate. |
| 4.1 Polarized section equation | For θ=p dq and vertical P, ∇_∂p q=0 whereas ∇_∂p p=1. | Correct kernel; retain. |
| 4.1 Kähler polarization | In a holomorphic frame, ∂̄z=0 whereas ∂̄z̄=d z̄≠0. | Holomorphic, not antiholomorphic, sections selected. |
| 4.1 Local flatness versus global solution | A flat line on a circle has local parallel frame in both holonomy +1 and −1 cases; global parallel dimensions are 1 and 0. | Leafwise curvature zero does not erase holonomy. |
| 4.2 Observable normalizer | X_p=∂q commutes with ∂p; X_(p²)=2p∂q has [X_(p²),∂p]=−2∂q outside P. | p preserves polarization; p² does not. |
| 4.2 Failure of associative closure | p is an observable, but p·p=p² fails; indeed Q_(p²)(1)=−p² is not vertical-polarized. | Lie algebra, not associative algebra, is correct. |
| 4.2 Basic-function algebra | ∂p q=∂p(q²)=0, whereas ∂p p=1; {q,q²}=0. | Basic functions have stated product/Poisson closure. |
| 4.2 Lie and basic-module laws | {p,qp}=−p is again affine in p; multiplying p by basic q gives qp, whose second p-derivative is 0. | The two closure claims agree. |
| 4.3 Bohr–Sommerfeld criterion | Circle holonomy +1 gives a one-dimensional parallel fibre; holonomy −1 gives zero. Trivial loop gives +1. | Both directions pass. |
| 4.3 Shifted real torus leaves | k=2, α=0: p=0,1/2. α=1/2: p=1/4,3/4. Both sets have 2 elements, but are unequal. | Flat twist cannot be suppressed. |
| 4.3 Descent and pullback | A section of a line on a point pulls back to constant parallel sections on a trivial-holonomy circle, both spaces ℂ; sign holonomy gives no such descent and parallel space 0. | The holonomy hypothesis is effective. |
| 5.1 Affine observable condition | f=pq+u(q) has ∂p²f=0; f=p² has ∂p²f=2. | Exactly the fibre-affine scope; retain. |
| 5.1 Half-density correction | For v(q)=q, divergence is 1, so corrected operator is i(q∂q+1/2)+u. On constant 1 with u=0 it gives i/2; omitting half-density gives 0. | Correction discriminated. |
| 5.1 Density transformation | Under q↦2q, density scales by 2, half-density by √2, and its squared norm by 2; a scalar function alone scales by 1. | Intrinsic measure-free Hilbert construction passes. |
| 5.1 Schrödinger action | Translation has divergence 0 and generator i∂q; multiplication observable u=q gives Q_q=q. Their commutator is −i on test functions. | Compatible with Layer 2; retain. |
| 5.2 Projective dimensions | ℂP¹: dim O(0)=1, O(1)=2, O(2)=3. ℂP²: dim O(2)=6. ℂP⁰: dimension 1 for every k≥0. | Binomial formula passes all boundaries. |
| 5.2 Dual/action normalization | For SU(2), O(1) sections transform by the dual standard representation; central −I gives −1. On O(2), central phase is +1. | Action is dual, not silently the original representation. |
| 5.2 L² realization | A nonzero constant section of O(0) on compact ℂP¹ has positive finite norm; the zero section has norm 0. The same constant on ℂ with Lebesgue measure has infinite norm. | Compactness and metric are used. |
| 5.3 Torus automorphy | Translating by 1 then τ versus τ then 1 differs by exp(−2πik): k=1,2 give 1; k=1/2 gives −1. | Now passes: positive integer k is explicit; half-integral level excluded. |
| 5.3 Hermitian metric | At τ=i, k=1, z=0→i, metric ratio is exp(−2π); squared automorphy factor is exp(2π); their product is 1. | Descending norm, not constant metric, passes. |
| 5.3 Chern curvature | With b=Im τ and y=Im z, A=2πiky dz/b gives dA=−2πik dq∧dp. Thus iF/(2π) integrates to k. | Degree/curvature normalization agrees. |
| 5.3 Holonomy and theta/real dimensions | k=2, α=0, p=1/4 gives q-loop phase −1; p=0 gives +1. Theta and Bohr–Sommerfeld direct-sum dimensions are 2; smooth globally real-polarized sections are 0. | The three section notions are correctly distinguished. |
| 6.1 Geometric character | Doubled action on ℂP¹: O(n) weights 0,−2,…,−2n; n=1 trace is 1+exp(−2it), giving 2 and 0 at t=0,π/2. | Sign passes; §6.3a now states the formula. |
| 6.1 Character twist/moment shift | Twist the same O(1) lift by weight +1: weights become 1,−1, moment interval shifts [−2,0]→[−1,1]. | Same shift on both sides. |
| 6.1 Point representation | Point with fibre weight κ: L^n has weight nκ and rescaled atom δ_κ, not δ_0. | Normalization excludes losing the fibre character. |
| 6.2 Positive-line embedding | O(2) on ℂP¹ has 3 sections and the degree-2 Veronese map. Trivial O(0) has 1 section and a constant projective map. | Positive line distinguishes embedding from mere section existence. |
| 6.2 Finite residue vanishing argument | If a very ample third power has residue thresholds 2,4,1, the maximum 4 covers exponents 12,13,14 and all subsequent ones. | One bound serves every residue; retain. |
| 6.2 Equivariant versus ordinary index | O(1) doubled action: ordinary Euler number 2; character at π/2 equals 0. At identity the fixed locus is all ℂP¹, not isolated points. | Passes; §6.3a now includes the identity fixed component. |
| 6.3 Torus character periods | For P=2π, weight 1 gives exp(it); for P=1 it gives exp(2πit). Weight 1/2 at period 2π gives −1 instead of 1. | Period lattice, not bare differential, is required. |
| 6.3 Higher and zero ranks | On T², weight (1,−1) gives exp(i(t−u)), value 1 on the diagonal; rank-zero lattice has one element 0 and only character 1. | Integral lattice definitions pass. |
| 6.4 Global distribution normalization | ℂP¹: n⁻¹dim H⁰(O(n))=(n+1)/n→1. Doubled moment interval length 2 has density 1/2 and mass 1. ℂP²: n⁻² binom(n+2,2)→1/2. | Matches (2π)⁻ᵈωᵈ/d!, not unnormalized volume. |
| 6.4 Singular support/empty object | A point contributes δ_κ of total mass 1, with no Lebesgue density in a positive-rank ambient torus; empty M contributes 0. | Distribution statement handles both without a fake density. |
| 6.5 Admissible weights | Generic μ₂ kernel, fibre weight κ=1: λ−nκ must be even. For n=1, λ=1 is admissible, λ=0 is not. Index of admissible lattice is 2. | Coset and n-dependence pass. |
| 6.5 Full isotropy versus generic isotropy | On orbifold ℙ(1,2), O(1) has trivial generic stabilizer but sign at its μ₂ point; the coarse-line descent fails there despite generic index 1. | Full isotropy condition is necessary and retained. |
| 6.5 Weighted quotient integration | [point/μ₂] has orbifold volume 1/2; its trivial invariant fibre has dimension 1 and sign fibre dimension 0. | Volume alone is not the index; sector phases needed. |
| 6.6 Convex potential | ℂP¹, weights 0,1, n=2, λ=−1 at equal coordinates: normalized potential is 2log cosh(a), derivative 0 at a=0 and Hessian 2. At a fixed point the potential is linear, Hessian 0. | Strict convexity requires finite infinitesimal stabilizer. |
| 6.6 Shifted semistability | Shifted weights {−1,1}: 0 is in the interior, so the orbit is semistable. Singleton {1}: 0 is outside and unstable. Singleton {0}: semistable but nonregular. | Convex and regularity distinctions pass. |
| 6.6 Complexified line action | Weight-one fibre: compact phase exp(it) has squared norm 1; imaginary parameter ia acts by exp(−a), squared norm exp(−2a). | Holomorphic extension is not claimed unitary. |
| 6.6 Rank-zero/ineffective case | T=1 gives potential 0, Mss=M, quotient identity. A positive-dimensional kernel gives zero Hessian along that kernel. | Reduction to the effective quotient is essential. |
| 6.6 Local descent | μ₂ on one fibre: invariant dimension 1 for trivial action, 0 for sign. A free ℂ× orbit has quotient one point; adding ineffective μ₂ preserves that point but its orbifold group has order 2. | Full-isotropy local model passes. |
| 6.7 Kostant norm derivative | n=2, λ=−1, r=1/4: norm²=4/25, η=3/10. Both direct differentiation and 4nη²norm² give 72/625. | Correct positive sign and factor 4. |
| 6.7 Bound on the level | At r=1 the norm² is 1/4; at r=1/4 it is 4/25. Difference 9/100>0. | Increasing-flow bound points in correct direction. |
| 6.7 Bounded extension | On a punctured disc, constant 1 has bound 1 and extends; z⁻¹ has norm→∞ and no holomorphic extension. For the ℂP¹ xy section, both missing fixed points have value 0. | Codimension-one control passes. |
| 6.7 Empty level and rank zero | ξ outside the ℂP¹ moment interval gives multiplicity 0 and empty reduced space index 0. For T=1, restriction and extension are both identity on H⁰. | No extension across all of M is invoked. |
| 6.8 Inertia formula | [point/μ₂]: trivial fibre sectors contribute 1/2+1/2=1; sign contributes 1/2−1/2=0. Keeping identity sector alone gives wrong 1/2. | Full phases and weighting pass. |
| 6.8 Nonabelian finite chart | [point/S₃]: trivial character gives (1+3+2)/6=1; sign gives (1−3+2)/6=0, agreeing with invariant dimensions. | Full finite groups, not only cyclic charts, pass. |
| 6.8 Normal denominator | For a moving normal eigenvalue −1, 1−g⁻¹=2 and reciprocal 1/2. Eigenvalue 1 is tangent to the fixed sector and must be omitted, not divided into 0. | Correct moving-normal qualification. |
| 6.8 Ordinary Riemann–Roch boundary | ℂP¹: χ(O(n))=n+1; rewriting as K⊗O(n+2) retains degree n. For empty quotient every sector sum and Euler number is 0. | Vanishing/index bridge signs pass. |
| 6.9 Joint quasi-polynomial | Weights (0,1,2), 0<j<n: multiplicity floor(j/2)+1. At n=6, j=2,3 it is 2,2; leading terms j/2 are 1,3/2; errors 1,1/2. | The residue is in j as well as n; joint lattice retained. |
| 6.9 Lattice factor in leading density | Doubled ℂP¹: generic index q=2, normalized density ρ=1/2, so qρ=1. Even admissible weights have multiplicity 1; odd weights 0. | Omitting q would give 1/2; retained. |
| 6.9 Uniform remainder at dimension zero | d=r=1 in the previous example: admissible multiplicity minus leading term is 0, satisfying 0≤C/n uniformly. | Negative remainder exponent is meaningful, not a floor convention. |
| 6.10 Positive-dimensional kernel | T² acts on ℂP¹ through first factor and fibre weight b on second: weights (−j,nb); quotient-and-twist recovers exactly (−j,nb). Support satisfies second coordinate b. | Transport handles lower-dimensional support. |
| 6.10 Choice of extension character | Choose β=(1,b): quotient weights become −j−n; adding nβ returns (−j,nb). Choose β=(0,b): quotient weights −j, same result. | Independence of extension is tested. |
| 6.10 Entire group ineffective | A point has T′=1 and normalized measure δ_κ after the shift; for the separate doubled-circle example the finite residual μ₂ contributes lattice index 2. | Connected and finite kernels are treated separately. |
| 6.11 First exponent count | Weights (0,1,2), n=2: multiplicities for j=0,…,4 are 1,1,2,1,1; sum 6. n=3: 1,1,2,2,2,1,1; sum 10. | Matches both integer bounds and monomial enumeration. |
| 6.11 Second exponent count | Weights (0,1,−2), n=2: six weights −4,−2,−1,0,1,2 each occur once. At n=3, weight 0 occurs twice; total dimension is 10. | Matches bounds; unread Knutson pages not certified. |
| 6.11 Empty intervals and n=0 | n=0 has only (a,b,c)=(0,0,0), multiplicity 1 at j=0 and 0 elsewhere. Exterior j gives lower bound above upper bound, hence count 0. No rescaling by 1/n at n=0. | Total-function boundary handled. |
| 6.11 Density mass | First action's triangular pieces have masses 1/4+1/4=1/2. Second action's pieces have masses 1/3+1/6=1/2. Both equal ∫ω_FS²/2. | Normalized and reflected weight conventions agree. |

| 2.2 Invariant-domain core | A deficiency pairing proportional to exp(t) is bounded for all t only with coefficient 0; exp(−t) likewise as t→−∞. Both deficiency dimensions are 0. | Repairs the cited proof gap; retain. |
| 2.3 Complete-field integration and covering kernel | A translation field on ℝ integrates for every t to q+t; on (0,∞), q=1 and t=−2 would give −1, outside the manifold. SU(2) centre phases for k=1,2 are −1,+1. | Completeness and descent are separate effective conditions. |
| 3.1a Compact real root brackets | H=diag(i,−i), A=((0,1),(−1,0)), B=((0,i),(i,0)): HA−AH=2B, AB−BA=2H, BH−HB=2A. | Correct su(2) calibration; retain. |
| 3.1a Coroot and reflection | α(H)=2, α(H/2)=1; exp(2πH)=I, exp(πH)=−I. The reflection sends H to H−2H=−H and fixes a central vector Z with α(Z)=0. | Wrong half-coroot and central displacement excluded. |
| 3.1a Quotient and collapsed curve | SU(2)→SO(3) sends H to 2Z; radius 1/2 gives period 1 and phase −1, radius 1 gives period 2 and phase +1. Levi period 0 gives a point/zero area. | Both global form and collapsed-root controls pass. |
| 3.1a Root norm denominator | In rank one with α(H)=2 and ‖H‖²=c>0, α♯=2H/c, ‖α‖²=4/c, so 2α♯/‖α‖²=H. For a torus the root set is empty. | Metric rescaling cancels; zero root never divided by its norm. |
| 6.3 Actual Lie versus torus weights | sl₂ adjoint weights are 2,0,−2, all integral on the coroot; an arbitrary Lie-circle frequency 1/2 has period value −1 and cannot define a circle character. | Native whole-dual support is not an integral torus lattice. |
| 6.3a Fixed-component character | With u=exp(−2it), 1/(1−u)+u/(1−u⁻¹)=1+u; u=−1 gives 1/2−1/2=0. At t=0 or π, whole ℂP¹ contributes ∫(1+c)²=2. | Agrees; no evaluation of isolated denominators at u=1. |
| 6.3a Tensor powers and ordinary Todd class | O(n): fixed sum=(1−u^(n+1))/(1−u)=Σ(j=0..n)u^j. At identity ∫exp(nc)(1+c)=n+1. n=0 gives 1. | Fibre powers and moving inverse action agree. |
| 6.3a Equivariant curvature/Cartan sign | On L, d(iμ(X))=i dμ(X), while 2πiι_X(ω/(2π))=i dμ(X); their difference is 0. Fixed tangent weight β=1 contributes iX and denominator 1−exp(−iX). | Opposite moment or normal-action sign fails. |
| 6.3a Graded scaling and Fourier | On ℂP¹ at X=0, n⁻¹χ_n=1+1/n; degree-zero and degree-two Todd contributions are 1 and 1/n. O(1) coefficients at 0,−2,−1 are 1,1,0. | Correct rescaling and normalized Haar extraction. |
| 6.3a Point and empty fixed sets | A point of weight κ has χ_n(exp(X/n))=exp(iκX), Todd 1 and normalized integral exp(iκX). Empty M gives sum 0 and integral 0. | Rank-zero and empty cases retained. |
| 6.6 Abelian complexification | [z]↦exp(iz): z=0 and 2π both map to 1; z=i maps to e⁻¹ of modulus e⁻¹. For T², (π,0) maps to (−1,1); rank zero gives the point group. | Period quotient and polar direction agree. |
| 6.8 Uniform positive curvature bound | A lower curvature bound ε=1/2 and fixed negative term C=3 give nε−C=0 at n=6 and 1/2 at n=7. Positive-degree harmonic sections vanish only after the strict threshold. | “Sufficiently large” retained; no all-powers vanishing. |


The exhaustive (0,1,2) count for n=6 is 1,1,2,2,3,3,4,3,3,2,2,1,1, summing to 28. For (0,1,−2), n=3 has multiplicity 2 at zero and total 10; n=6 has multiplicity 3 at zero and total 28. These were compared to the two floor/ceiling interval formulas for every integer between −2n−2 and 2n+2, so empty intervals and boundary weights were tested as well.

**All fourteen companion declarations.** Their native source/target data are real maps, not hidden geometry. Each is mathematically sound generic algebra. Each remains padding under R02.

| Declaration (companion line) | Instances and both computed values | Result; change |
|---|---|---|
| restrictCharacter (20) | Circle character z↦z³ restricted along z↦z² gives z⁶; at z=i both composition and restriction equal −1. | True wrapper; delete. |
| restrictCharacter_apply (23) | Same z=i: (i²)³=−1=i⁶. Trivial character gives 1=1. | rfl; delete. |
| characterKernel (27) | S₃ sign: A₃ has 3 elements; trivial character's kernel has 6. | Native kernel; delete. |
| mem_characterKernel (29) | A transposition: membership false and sign=1 false; a 3-cycle: membership true and sign=1 true. | Iff.rfl; delete. |
| descendCharacter (34) | Sign modulo A₃: identity coset↦1, nonidentity coset↦−1; sign cannot descend modulo S₃. | Native quotient lift; delete. |
| descendCharacter_mk (38) | Transposition coset maps to −1=sign(transposition); identity maps to 1=1. | rfl; delete. |
| descendCharacter_comp (43) | Composite S₃→C₂→Circle has values 1 on A₃ and −1 on its other coset, exactly sign. | rfl; delete. |
| descendContinuousCharacter (47) | Finite discrete S₃ quotient has two open singleton fibres; descended ±1 map is continuous. N=1 leaves original character. | Native quotient continuity; delete. |
| descendContinuousCharacter_mk (52) | Same transposition gives −1 on both sides; constant character gives 1 on both. | rfl; delete. |
| periodRestriction (62) | j:ℤ→ℤ is multiplication by 2; χ is multiplication by 3. Restriction at 1 is 6=3·2. For j=0 it is 0. | Native composition; delete. |
| periodRestriction_apply (67) | With those inputs, at q=−1 both sides equal −6. | rfl; delete. |
| centralCharacterLattice (72) | For j=2, its kernel in Hom(ℤ,ℤ) is {0}; for j=0 it is all ℤ. | Native kernel; delete. |
| mem_centralCharacterLattice (75) | j=2, χ=3: membership false and χ(j(1))=6≠0. χ=0: both conditions true. | Elementary extensionality; delete. |
| ordinaryDegree_has_specifiedCharacter (87) | j=2: degree 1 is outside 2ℤ and has no preimage; degree 2 is inside and χ=1 is a preimage. | Iff.rfl; delete. |

**Pinned-library object audit.** Mathlib was read at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following sixteen object groups were opened at those pins, including their binders. Paths are relative to the respective libraries. Native definitions determine what they do and do not bundle; name similarity was not treated as a geometric construction.

| Native object/declaration | File and line at the pin; what it supplies and does not supply |
|---|---|
| CovariantDerivative | `Mathlib/Geometry/Manifold/VectorBundle/CovariantDerivative/Basic.lean:365`: section-first covariant derivative, with its covariant-derivative law. It is not a principal circle bundle, Hermitian metric, or real-base complex Chern dictionary. |
| LinearPMap | `Mathlib/LinearAlgebra/LinearPMap.lean:41`: a linear map on a specified submodule. Closedness, dense domain and self-adjointness do not follow merely from this carrier. |
| LieSubalgebra | `Mathlib/Algebra/Lie/Subalgebra.lean:45`: a submodule closed under the Lie bracket. It does not assert associative multiplicative closure; the p² test above matters. |
| ContinuousMonoidHom.comp | `Mathlib/Topology/Algebra/ContinuousMonoidHom.lean:152`: actual continuous composition. No Lie smoothness or stabilizer construction. |
| MonoidHom.ker | `Mathlib/Algebra/Group/Subgroup/Ker.lean:238`: subgroup of elements mapping to 1. This is exactly the companion's characterKernel. |
| QuotientGroup.lift, lift_mk, lift_comp_mk' | `Mathlib/GroupTheory/QuotientGroup/Defs.lean:249`, 253, 262: quotient lift under N≤ker, value on a representative, and recovery of the original map. Normality is retained. |
| continuous_quot_lift | `Mathlib/Topology/Constructions.lean:729`: continuity for the quotient topology, from continuity upstairs and well-definedness. No Hausdorff quotient hypothesis is asserted or needed for this statement. |
| jacobiTheta₂ and its actual series | `Mathlib/NumberTheory/ModularForms/JacobiTheta/TwoVariable.lean:45`, 123, 251, 384, 390: exponential summands, summability iff Im τ>0, sum and both z translations. The quasi-period is exp(−πi(τ+2z)), not its inverse. This is not the degree-k bundle or its full theta-section basis. |
| SmoothTwoForm.IsSymplectic | `TauCeti/Geometry/Symplectic/Manifold/TwoForm.lean:92`: fields `isClosed` and `isNondegenerate`. It does not bundle Hausdorffness, second countability, nonemptiness or compactness. The README explicitly supplies the first two and uses compactness separately. |
| curvatureOperator | `TauCeti/Geometry/Manifold/VectorBundle/CovariantDerivative/Curvature/Basic.lean:85`: ∇X∇Y−∇Y∇X−∇[X,Y], initially an unbundled section. Smoothness requires additional regularity. The prequantum curvature identity is not a field of this operation. |
| exists_contDiffAt_picard_solution | `TauCeti/Analysis/ODE/SmoothParameter.lean:207`: finite-dimensional real parameter/state, C^(n+1) germ, and vector field zero near the base state at the distinguished parameter. It is a local parameter theorem, not arbitrary global completeness. The linear-parameter base-zero use fits; the complete-field theorem remains a roadmap target. |
| TauCeti.fourierChar, fourierRep | `TauCeti/RepresentationTheory/Compact/Circle.lean:126`, 142: actual additive-circle character and one-dimensional continuous representation. The period parameter is explicit. The product-torus integral-period conversion is additional work here. |
| TauCeti.formalCharacter | `TauCeti/Algebra/Lie/Weights/FormalCharacter.lean:156`, 164: finite support of generalized weight-space dimensions and coefficient equation. It is a Lie-module formal character, not automatically a compact-group weight lattice. |
| Honest weight coefficients/integrality | Same file:485, 493: Killing-semisimple finite-dimensional Lie algebra, Cartan subalgebra and finite-dimensional module; the integrality theorem additionally has triangularizability and characteristic zero. These cannot supply an arbitrary torus period condition. |

| LieAlgebra.IsKilling.rootSystem | `Mathlib/Algebra/Lie/Weights/RootSystem.lean:411`, binders at 44: finite-dimensional characteristic-zero Killing Lie algebra with splitting Cartan. A complex root system, not the normalized compact real group map. |
| LieAlgebra.IsKilling.exists_isSl2Triple_of_weight_isNonZero | `Mathlib/Algebra/Lie/Weights/Killing.lean:555`: the complex root sl₂ triple under the native Killing hypotheses. §3.1a still has to construct its compact real form and integrate the calibrated derivative. |

**Cross-roadmap ownership and supply.** I used `roadmaps grep`/`roadmaps show` by object (homogeneous characters, compact real roots, root curves, Picard/exponential sequence, half-densities, equivariant RR and semistable descent), searched main and the board packages, and read relevant supplied sibling heads. Existing-roadmap revisions served as overlap evidence, not replacement suppliers. The supplied SchubertGeometry, LieGroups and ComplexKahlerGeometry revisions were compared with main; IndexTheory, PseudodifferentialOperators and LieGroupoidsPoisson were read as new-roadmap suppliers. HamiltonianSystems and ComplexComparisonPartII were resolved through the indexed new-roadmap texts. Main was `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. The namespace search found no colliding fully qualified companion namespace on main or in the indexed open Suggested.lean files; duplication by object remains R02.

The normalized compact-root and explicit torus-complexification adapters now move here rather than depending on the ineligible LieGroups revision. General fixed-component equivariant RR also belongs here: IndexTheory's supplied isolated fixed-point theorem does not cover identity components. These ownership decisions preserve the downward direction. The unresolved Picard overlap is R01. The nineteen supplier groups below resolve the cited contracts; they are planning contracts, not claims that all supplier proofs are complete.

| Supplier and resolved locations | Contract checked; outcome |
|---|---|
| DifferentialGeometry, `TauCetiRoadmap/DifferentialGeometry/README.md:294`, 325, 371, 400, 463, 524, 816 | §0.4 forms; §1.4 Cartan calculus; Layer 3/§3.5 flows; §4.3 Frobenius; §5.4 homotopy and integration/de Rham. Signs agree with dq∧dp. |
| SmoothBundlesConnections, `TauCetiRoadmap/SmoothBundlesConnections/README.md:421`, 559, 605, 776 | B1.4 quotients/local sections; B2.1 associated sections; B2.2/B2.4 Hermitian L², compact-support density and integration resolve. |
| Same supplier:871, 936, 1010, 1209, 1668, 1716, 1739, 1780 | B3 connections; B4.2 gauge constants; B5.2 holonomy; B6.2–5 Chern/existence/flat torsor resolve. Dual-circle sign: F=−iω/ℏ. |
| HamiltonianSystems, indexed new-roadmap head, `TauCetiRoadmap/HamiltonianSystems/README.md`, Layers 1–3 | Contraction, Poisson fields, dynamics and moment cocycle resolve; q,p and translation-cocycle signs agree. |
| LieGroupoidsPoisson, new-roadmap head, `TauCetiRoadmap/LieGroupoidsPoisson/README.md:1205` | G4.2a has ω(X,·)=df, X_q=−∂p, X_p=∂q; G4.3 uses the Poisson homomorphism −X_f. Signs agree. |
| CotangentLagrangian, `TauCetiRoadmap/SymplecticGeometry/CotangentLagrangian/README.md:25` | C1 supplies λ=Σpᵢdqᵢ, ω=−dλ; fibre translation changes ω by −π*dα, agreeing with the exact-line computation. |
| HamiltonianReduction, `TauCetiRoadmap/SymplecticGeometry/HamiltonianReduction/README.md`, R1–R3, including R2a at 157 | R1–R3 group moment data, KKS orbit, even-cell model and regular locally free reduction resolve. §3.1a now owns the additional normalized compact root maps. |
| ConvexityToric, `TauCetiRoadmap/SymplecticGeometry/ConvexityToric/README.md:32`, 106, 156 | T1 periods, T3 translated moment-square flow and T4 raw DH/full-isotropy volume resolve. Normalization (2π)⁻ᵈ and lattice index are owned here. |
| SelfAdjointSpectralTheory, `TauCetiRoadmap/OperatorTheory/SelfAdjointSpectralTheory/README.md:149`, 217, 888 | Part A/Stone and SA-C39–42 graph-core inputs resolve. The geometric complete-flow core remains §2.2’s target. |
| ComplexKahlerGeometry, `TauCetiRoadmap/ComplexKahlerGeometry/README.md:96`, 193, 296, 437, 444, 1208, 1245, 1274, 1407, 1444 | K1–K4 type/Dolbeault, bounded extension and bundles; K5a/K5b.1 elliptic theory; K6.0–1 curvature/Hodge; K7.1–2 projective/tori resolve. Positive torus-line quantization belongs here. |
| ComplexComparisonPartII, new-roadmap head, `TauCetiRoadmap/ComplexComparisonPartII/README.md`, C0.3, C1.7–1.9, C5.1, C5.4 | C0.3, C1.7–1.9 and C5.1/4 dictionaries, twists, Serre vanishing, GAGA and integral exponential/Chern comparison resolve. Picard application still needs H¹(O)=H²(O)=0. |
| IndexTheory, new-roadmap head, `TauCetiRoadmap/IndexTheory/README.md:669`, 742, 888–895 | I6, I7.3 and I8.4 resolve. I8.2 supplies the heat trace floor; I8.3 is isolated-fixed-point only. The general component formula is now §6.3a. |
| PseudodifferentialOperators, new-roadmap head, `TauCetiRoadmap/PseudodifferentialOperators/README.md:151`, 530 | P1 sections/differential floor and P2 symbols resolve. Finite-chart orbifold Hodge extension is owned here. |
| Orbifolds, `TauCetiRoadmap/Orbifolds/README.md:296`, 334, 394, 419, 672 | O4, O4-S/W/T and O5 full-isotropy bundles, integration and cohomology resolve; finite-chart factor 1/\|G\| agrees. |
| CompactGroups, `TauCetiRoadmap/RepresentationTheory/CompactGroups/README.md:103`, 369 | Circle Fourier and orthogonality resolve: probability Haar extracts coefficient 1 or 0 for equal or unequal characters. |
| LieGroups, `TauCetiRoadmap/RepresentationTheory/LieGroups/README.md`, Layers 4–8; Layer 6 at 383 | Main supplies integration, covering, tori/Weyl, complexification and full flags. The additional compact-root and abelian period adapters are now owned here. |
| AlgebraicTopology, `TauCetiRoadmap/AlgebraicTopology/README.md:499`, 849, 946 | Stages 4–6 cellular/singular comparison, orientations and universal coefficients resolve; even-cell free H₂ specialization belongs here. |
| SchubertGeometry, `TauCetiRoadmap/SchubertGeometry/README.md:123` | Main S9.7 owns partial-flag/KKS and root-handle comparisons. The supplied revision S3P.1–2 still overlaps the Picard extension: R01. |

| LieHighestWeight, `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:319`, 323, 340 | Layer 0 supplies sl₂ strings and complete reducibility, used in the compact-root adapter; the native complex triple is not itself a compact group map. |


The README has the requested summary, scope, conventions, supplier contracts, ordered layers, API bullets, at least three discriminating Checks per definition block, examples/dependencies per layer, downstream scope and references. Mathematical statements keep their compactness, positivity, regularity, full-isotropy, integrality and nonzero-period hypotheses. The three findings above identify the remaining ownership/form/record defects.

## Not verifiable

This review is complete; access limitations are recorded rather than used to park it. No unread source is certified, no manifest was edited, and no source text was copied into the repository or this report.

- **kostant**, *Quantization and Unitary Representations* (1970): the source service classified the Springer route as **uncertified**, returning no readable text. Its background attribution is not a certification of a particular theorem or page. No missing-text request was added for this settled status.
- **sniatycki**, *Geometric Quantization and Quantum Mechanics* (1980), DOI `10.1007/978-1-4612-6066-0`: **uncertified**, with no readable book. Its background real-polarization and Bohr–Sommerfeld attribution remains unchecked; the sampled leafwise assertions were checked at Schottenloher's explicit locators instead. No missing-text request was added.
- **woodhouse**, *Geometric Quantization*, second edition (1992), DOI `10.1093/oso/9780198536734.001.0001`: the service's Oxford route returned HTTP 403. No exact book locator is supplied for the background attribution; that text was not read.
- **kodaira**, *On Kähler varieties of restricted type* (1954), DOI `10.2307/1969701`: the service reached JSTOR's landing page but returned no legally classified open text. The positive-line theorem was checked in Demailly, not assumed to share Kodaira's numbering.
- **knutson**, *Lie Groups notes, Semester 2*: the service's author/title search found no legal text identifying the cited April 23 entries, physical pp.106/119 of 131. No year is specified. The two projective counts were independently verified; their attribution is not certified.

The last three items are recorded together in the missing-reference file. Source keys for the ten retrieved works are **graham-vogan**, **demailly**, **schottenloher**, **tuynman**, **ma-marinescu**, **cannas**, **vergne**, **meinrenken**, **meinrenken-sjamaar** and **sjamaar**. The checks use Schottenloher version 15.6 (2025-08-27), Tuynman arXiv v2, Ma–Marinescu arXiv v1, Vergne v1, Meinrenken v2 and Sjamaar v1; no unverified equivalence with another edition's pagination is presumed.

## Source issues

- **Error** in schottenloher at Proposition 7.16 proof, printed p.105 (schottenloher line 4361): the source says scalar multiplication by −2π converts the transport into a unitary group; it should be time reparametrization Φ_(−2πt), whose value at zero is identity; affects the proof.
- **Gap** in schottenloher at Proposition 7.16 proof, printed p.105 (schottenloher line 4378): the source says a self-adjoint extension establishes essential self-adjointness; it should be justified using the invariant dense smooth domain as a core; affects the proof.
- **Misprint** in ma-marinescu at §5.2 before equation (5.12), printed p.33 (ma-marinescu lines 1583–1594): the source says the prequantum form is iRᴸ/π in its first displayed normalization; it should be iRᴸ/(2π), agreeing with the subsequent normalization; affects nothing.
- **Misprint** in graham-vogan at §7 after Proposition 7.2, printed p.39 (graham-vogan line 1727): the source says Proposition 6.4 follows from Proposition 7.2; it should be Proposition 6.5, whose proof was deferred; affects nothing.
- **Misprint** in demailly at VI §9.1, printed p.314 (demailly line 15573): the source says the Dolbeault identification follows from V-11.6; it should be V-11.5; V-11.6 introduces notation for holomorphic differential forms; affects nothing.
- **Misprint** in demailly at proof of VII Theorem 13.1, printed p.359 (demailly line 17604): the source says the canonical section with divisor E belongs to O(E)⁻¹; it should be a section of O(E), as the subsequent tensor powers require; affects the proof.
- **Error** in sjamaar at Proposition 2.11 proof, printed p.24 (sjamaar lines 1276–1279): the source says averaging over H⁰ produces Hᶜ-invariance; it should be (H⁰)ᶜ-invariance, retaining the finite component action separately; affects the proof.
- **Gap** in sjamaar at Theorem 2.15 proof, printed p.28 (sjamaar line 1487): the source says section values coincide at a point and its limiting complex orbit; it should be nonvanishing of the limit justified by monotone norm and continuity; affects the proof.
