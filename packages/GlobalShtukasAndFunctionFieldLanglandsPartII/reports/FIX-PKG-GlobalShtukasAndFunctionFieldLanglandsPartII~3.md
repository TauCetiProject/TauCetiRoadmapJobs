# Repair report: GlobalShtukasAndFunctionFieldLanglandsPartII

## F01 (P1) — applied differently

Implicit p-adic inputs → owned Bessel construction, adjoint rigidity and an explicit local companion-transfer theorem in §4.0. The transfer uses trace formulas and separated cohomological weights, rather than a global monodromy identification. Added three earlier-supplier gaps, small-prime Checks, and dependencies; updated Scope, §4.2 and Layer 4 Dependencies. General crystalline-companion existence remains outside scope.

## F02 (P3) — applied

Incomplete §3.3 attribution → fs Theorem I.9.6(ii), (vi)–(vii), p. 36, with transport through §3.2 in the proof route. Proposition IX.5.1 “p. 328” → “pp. 327–328” in §3.0, References and the manifest. Evidence: fs line 1331, fs line 1337 and fs line 12683; the continuation starts at fs line 12694.

## F03 (P3) — applied

The missing §4.0 headline → an explicit non-statable entry in `packages/GlobalShtukasAndFunctionFieldLanglandsPartII/Suggested.lean`, covering the all-prime anchor, Bessel construction, rigidity and local transfer. It identifies missing automorphic, lisse-sheaf, overconvergent-coefficient, cohomology and local-monodromy carriers. No stand-in declaration was added.

## F04 (P3) — applied

Deleted the repeated Checks in §§0.3, 2.1, 4.1 and 7.3, the repeated Steinberg clause in §3.4, and the repeated GL_r equivalence clause in §6.1. Retained their API statements and the independent parts of compound Checks. The respective Check counts are 7, 4, 6, 6, 5 and 4. No Lean padding was introduced.

## F05 (P3) — applied

Corrected §8.6’s recognition pointer to §8.0; replaced both undefined “generic place” occurrences by the place v of §5.4(1). Removed stray periods before semicolons, duplicate supplier entries, accidental paragraph indentation and gaps inside Check lists. Added blank lines before Layer headings. Repaired the same punctuation and duplicate-entry patterns in the copied Dependencies paragraphs.

## Mathematical evidence and ownership

The all-prime conclusion is necessary: hny line 976 imposes p>3 for G₂. The Bessel rigidity theorem and its local consequences have no such restriction (xz line 2478 through xz line 2504). The construction and its actual coefficient comparison are located at xz line 1994, xz line 2201 and xz line 2329; principal residue is at xz line 2314. The formal-to-differential bound used in the rigidity proof appears at xz line 2433. Its general comparison requires algebraic coefficients and an exterior-annulus hypothesis (andre-bessel line 393 through andre-bessel line 414, Proposition 3.2, pp. 788–789). The construction now chooses algebraic lifts explicitly.

The local transfer can be proved without the stronger embedded global-monodromy comparison. Write P_i(T)=det(1−TF | Hⁱ_c). For a pure weight-zero coefficient on this affine curve, H⁰_c=0, the H¹_c eigenvalues have weights at most 1 and the H²_c eigenvalues have weight 2. Consequently P_1 and P_2 have no common root, since q>1. The companion polynomials and trace formulas identify P_1/P_2, hence identify P_1 and P_2 separately. Bessel adjoint rigidity gives dim H¹_c=r and H²_c=0. The étale boundary sequence has a known r-dimensional term at zero, so its term at infinity is zero. Euler–Poincaré then gives Swan_∞=r. This retains the full all-prime étale conclusion; it does not infer an isomorphism between groups over different coefficient fields.

For the p-adic rigidity argument, geometric semisimplicity gives reductive geometric monodromy. The principal unipotent at zero yields a principal SL₂ inside it, whose adjoint centralizer is zero. Thus the adjoint global invariants and coinvariants vanish. The localization sequence and Irr≤r force rigidity. If ker N on inertia invariants is zero, nilpotence forces that entire invariant space to be zero; the invariant adjoint vector N_∞ is then zero as well. These arguments do not require the later classification of the entire geometric monodromy group.

Three missing generic prerequisites are requested from the earlier PadicDifferentialEquationsAndRigidCohomology, rather than described as supplied:

| Gap | Supplier section | Required extension |
| --- | --- | --- |
| rigid-middle-extension-specialization | §§RD.4.10–RD.4.12 and RD.6.39 | Intermediate extensions and relative specialization for exponential intersection-cohomology coefficients, with the middle-image and fusion comparisons. |
| pure-isocrystal-geometric-semisimplicity | §RD.6.77 | Geometric semisimplicity of pure curve coefficients after forgetting Frobenius. |
| formal-to-differential-maximal-slope | §§RD.1.16 and RD.6.52a | The maximal-slope comparison with its algebraic-coefficient and exterior-annulus hypotheses. |

These are supplier requests, not invented supplier targets. The supplier's ordinary coefficient categories, Fourier transform, purity-of-constituents theorem and formal classification do not alone provide these extensions. Their slugs and exact needs sentences occur in both Exact supplier contracts and the top-level gaps list. All nine pre-existing gaps are unchanged.

Ownership was searched by object with the roadmap index over main and the available open heads, and in the board packages. The Bessel construction, rigidity and companion-monodromy overlap is present in the later `packages/KloostermanSheavesAndBesselIsocrystals/design/README.md`, especially KB.1, KB.3–KB.4, KB.6–KB.7 and KB.11. The necessary Bessel construction and local rigidity/transfer move into this roadmap; the later classification, functoriality and Newton-polygon applications remain later work. That design is not used as a supplier. Its consumer must import these owned portions instead of rebuilding them. No other roadmap was edited. The earlier p-adic Part II design concerns minimal slopes, and does not supply the missing operations or the Bessel group construction.

The existing equal-characteristic ownership in §3.0 is retained. Its suppliers provide the abstract excursion centre and Schur reconstruction (LanglandsParameterStacks §§LP2e.15 and LP2c.8), and the coherent Hecke datum (HeckeStacksAndLocalShtukas §§HS4.1 and HS4.7). Neither is a substitute for the local application owned here.

## Adversarial mathematics record

Each row gives an evaluated instance of a target, definition or convention. The new §4.0 assertions are separated below; unchanged targets are tested against their retained Checks. No finite computation is treated as a proof of a general theorem or of a supplier gap.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Frobenius/Tate convention | q=4, twist and inverse | Eigenvalues 1/4 and 4 have weights −2 and 2. | Directions agree. | None. |
| WD scaling convention | r=diag(1,4), Ne₁=e₀ | rNr⁻¹=N/4; weights 2→0. | Correct downward shift. | None. |
| Residue-degree convention | q=4→16, eigenvalue 2→4 | 2 log₄2=1=2 log₁₆4. | Normalized weight unchanged. | None. |
| Zero-rank and q restriction | Rank 0; formal q=1 | Empty weight multiset; 1=1^(w/2) for every w at q=1. | Rank-zero convention consistent; q=1 excluded. | None. |
| §0.1 geometricity | Torus values 2 and 3, q=4 | Weights 1 and log₂3=1.5849625… respectively. | First geometric, second not geometric. | None. |
| §0.2 faithful realization | Dual PGL₂, representative diag(2,1/2) | Adjoint eigenvalues 4,1,1/4 have weights 2,0,−2; trivial realization has only weight 0. | Non-faithful test loses information. | None. |
| §0.2 finite inertia | S₃ with C₃ inertia; q=5 and 4 | At q=5 Frobenius inverts C₃; a transposition has eigenvalues 1,−1. At q=4 the identity Frobenius commutes with C₃. | Both valid examples have weights 0,0. | None. |
| §0.3 purity | diag(1,4), nonzero and zero N | Nonzero N joins weights 2 and 0 about 1; zero N has rank 0 between two nonzero graded lines. | First pure, second not pure. | Deleted duplicated abstract equivalence Check. |
| §0.4 uniqueness | diag(2,1/2); diag(1,16), q=4 | Ratios 4 and 16; the WD relation permits a nonzero joining N only for ratio 4. | Steinberg completion in first case; none in second. | None. |
| §1.1 twist classes | Constant Frobenius 3; Tate inverse, q=4 | Weights log₂3 and 2; trivial-class ranks 0 and 1. | Separates arbitrary constant twist from integer weight. | None. |
| §1.2 boundary propagation | Unramified constant line of Frobenius 2 | Local and global weights both 1; under degree two, value 4 relative to q=16 still has weight 1. | Anchor propagates with correct degree normalization. | None. |
| §1.3 filtration parabolic | SL₂, diag(2,1/2) | Weights 1,−1; negative-weight line is e₂; E₂₁ preserves it, E₁₂ does not. | Lower Borel, matching the nonpositive-root convention. | None. |
| §1.4 local purity | PGL₂ Steinberg, q=4 | Frobenius weights −1,1; N has rank 1, centred weight 0. | Local pure completion fits. | None. |
| §2.1 occurrence and realizations | Two one-dimensional excursion blocks with the same Hecke factor | Multiplicity dimension 2, each block dimension 1; a rank-two realization has rank 2. | Occurrence need not choose a unique block. | Deleted repeated tensor-unit Check. |
| §2.2 rationality | Hecke matrix with polynomial T²−2 | Eigenvalues ±√2, degrees 2 over ℚ; both lie in ℚ(√2). | Rational model need not have rational eigenvalues. | None. |
| §2.3 Satake real part | diag(2,1/2) and diag(√2,1/√2), q=4 | Exponents ±1/2 and ±1/4; weights ±1 and ±1/2. | Factor 2 and non-geometric complementary point distinguished. | None. |
| §3.0 local excursion application | G=1; G_m values 2 and 1/2 | Unit scalar 1; torus Frobenius values 2 and 1/2. | Separates reciprocal conventions. | Page locator corrected. |
| §3.1 uniformization | GL₁ lattice z^(−d)O, d=1,2; degrees 1,2 | Bundle degrees d·deg(v)=1,2,2,4. | Framing and direction fixed. | None. |
| §3.2 local compatibility | GL₂ Steinberg and trivial, q=4 | Both semisimple pairs are (2,1/2); N ranks are 1 and 0. | Comparison is semisimple, not equality of N. | None. |
| §3.3 products | Two unramified torus factors, values 2 and 3 | Product Frobenius class (2,3); tensor-character value 6. | Group product and tensor realization agree. | Added fs locator and transport route. |
| §3.3 twists | Torus Frobenius 2, twisting value −1 | Twisted value −2 on both assignments; its modulus is 2. | Twisting compatibility retained. | Added fs locator and transport route. |
| §3.3 Weil restriction | Unramified quadratic E/F, q_F=4, χ(ϖ_E)=2 | Induced eigenvalues ±√2 have F-weights 1/2,1/2; E-weight is 2 log₁₆2=1/2. | Correct residue-degree normalization. | Added fs locator and transport route. |
| §3.4 geometric representations | Steinberg and a torus value 3, q=4 | Steinberg weights ±1; torus weight log₂3 is not integral. | Number-field models alone do not imply geometricity. | Deleted repeated Steinberg clause. |
| §3.5 coefficient transport | √5→−√5 | (√5,1/√5)→(−√5,−1/√5); moduli unchanged, weights ±1. | Central sign has weight 0. | None. |
| §3.6 torus criterion | Unramified quadratic, q_F=4; values 4 and 2 | q_E=16; E-weights 1 and 1/2. Induced F-weights respectively (1,1) and (1/2,1/2). | Integrality requires q_E normalization. | None. |
| §3.7 stability | Reducible GL₂ principal series, q=4 | Trivial and Steinberg share Frobenius (2,1/2), weights ±1. | Constituents retain geometric semisimple parameter. | None. |
| §3.8 central characters | Normalized GL₂ Steinberg | Determinant of (2,1/2) is 1; central character is 1. | Central restriction has weight 0. | None. |
| §4.0 affine-generic datum | Nonzero simple coefficients but zero highest-root coefficient | d+N dx/x is tame at infinity, Swan 0 instead of r>0. | Affine-genericity excludes this model. | Added negative control. |
| §4.0 Bessel functor | Tensor unit and zero adjoint object for H=1 | Unit rank 1 with Frobenius 1; adjoint rank 0 with invariant dimension 0. | Distinct objects correctly preserved. | Added construction and Check. |
| §4.0 principal residue | Standard dimension 2 and adjoint dimension 3 | Nonzero principal N has kernel dimensions 1 and 1; zero N gives 2 and 3. | Residue hypothesis excludes constant model. | Added Check. |
| §4.0 formal/differential bound | A₁: r=1,h=2,dim=3 | dim/h=3/2; integer Irr≤1. | Bound usable without a good-prime condition. | Added target with exact generic supplier gap. |
| §4.0 adjoint rigidity | A₁, principal zero boundary | 1≤dim H¹_c=Irr≤1; remaining boundary dimension 0; middle-cohomology dimensions 0. | Rigidity and no invariants follow. | Added target and proof route. |
| §4.0 small primes | G₂ at p=2 and p=3 | 14/6=7/3<3; integer Irr≤2; zero boundary dimension 2; Irr=Swan=2 and infinity invariants 0. | Covers both excluded HNY cases. | Added explicit Checks. |
| §4.0 characteristic-two inertia | SO₃, A₄ inertia | Averaged adjoint character (3+3·(−1)+8·0)/12=0. | Finite inertia has no invariant line. | Added source-pinned Check. |
| §4.0 invariants versus irreducibility | Odd-characteristic rank two | Adjoint stable subspaces have dimensions 1 and 2; invariant dimensions both 0. | Vanishing is weaker than irreducibility. | Retained and clarified Check. |
| §4.0 nilpotence step | A length-two nilpotent Jordan block versus zero-dimensional invariants | On dimension 2, nilpotent kernel dimension is at least 1; on dimension 0, kernel dimension 0. | Zero kernel forces zero invariant space. | Added route. |
| §4.0 étale transfer | q=4 | H¹_c eigenvalue moduli ≤2; H²_c eigenvalue moduli 4; these sets are disjoint. | No cancellation in P_1/P_2. | Added direct transfer route. |
| §4.0 boundary normalization | A₁ adjoint at q=4 | Eigenvalues of Ad(Frob) are 4,1,1/4; ker(ad N) has eigenvalue 1/4, weight −2; L(T)=1−T/4. | Geometric-Frobenius convention agrees. | Corrected the newly introduced witness during this pass. |
| §4.0 products and central isogenies | A₁×G₂; SL₂→PGL₂ | Ranks and conductors add to 3; invariant dimensions add to 0. The adjoint representation retains dimension 3 under the central quotient. | General semisimple reduction fits. | Added Check. |
| §4.0 no-proper-Levi consequence | PGL₂ dual Levi torus | Proper Levi supplies a one-dimensional central Lie invariant; anchor supplies 0. | Proper Levi is excluded. | Explicit local comparison and dependencies retained. |
| New specialization gap | Unit coefficient and zero morphism | Unit specializes to rank 1 with trace 1; image of zero map is rank 0 on both sides. | Requests middle-image compatibility, not a numerical dimension substitute. | Recorded supplier request. |
| New geometric-semisimplicity gap | Constant rank-two coefficient with Frobenius J₂(1) | Arithmetic Frobenius has a nonzero Jordan entry; after forgetting Frobenius, the geometric connection is 1⊕1. | Geometric and arithmetic semisimplicity distinguished. | Recorded supplier request. |
| New maximal-slope gap | Constant connection; A₁ Bessel adjoint | Constant slopes 0 and 0; formal Bessel bound 1/2 gives Irr≤3/2. | Algebraic coefficients and solvability retained. | Recorded supplier request. |
| §4.1 embedding-temperedness | Salem unit-circle conjugate; (3+4i)/5 | Moduli 1 and 1.7220838… for Salem conjugates; both conjugates of (3+4i)/5 have modulus 1. | Distinguishes fixed and all embeddings. | Deleted abstract repeated Check. |
| §4.2 supercuspidal globalization | G_m, ξ=1; nontrivial semisimple factor | Torus has exactly one Π=1 and adjoint dimension 0; a proper rank-one Levi has invariant dimension 1 versus anchor 0. | Torus exception and invariant argument agree. | All-prime source attribution updated. |
| §4.3 pseudo-globalization | PGL₂ Steinberg pseudo-coefficient | Traces on Steinberg and trivial are 1 and −1; induced trace 0=1+(−1). | Nonzero trace does not isolate the discrete-series constituent. | None. |
| §4.4 discrete-series realization | Same PGL₂ constituents | Both semisimple pairs (2,1/2); N ranks 1 and 0. | Only common semisimple parameter is needed. | None. |
| §4.5 pure completion | PGL₂ Steinberg at q=4 | Weights −1,1, N rank 1, central monodromy weight 0. | Consistent with every-embedding adjoint conclusion. | None. |
| §4.6 geometricity of discrete series | Semisimple Steinberg; G_m value 3 | Weights ±1 versus log₂3. | Semisimple conclusion does not discard the reductive centre. | None. |
| §4.7 conjugate discrete series | Steinberg exponent at q=4 | Modulus 1/2<1 under each embedding. | Strict inequality preserved. | None. |
| §4.8 temperedness with geometricity | (3+4i)/5 and a Salem unit-circle value | First has both moduli 1; Salem has an additional modulus 1.7220838…. | Geometricity excludes the misleading Salem instance. | None. |
| §5.1 separator family | Dual SL₂, real exponent (1/4,−1/4) | Adjoint pairings 1/2,0,−1/2; standard pairings 1/4,−1/4. | Adjoint alone fails to separate. | Punctuation only. |
| §5.2 adjoint lifts | Characteristic 2 and odd characteristic | H²(K′,ℤ/2)=0 in characteristic 2; in odd characteristic it identifies with Br(K′)[2]. | Coefficient characteristic matters. | None. |
| §5.3 integral anchor | Steinberg; constant value 3, q=4 | Local weights ±1 are integral; constant-line weight log₂3 is not. | Empty boundary needs an anchor. | Named the place v precisely. |
| §5.4 generic Ramanujan | PGL₂ complementary point, q=4 | Pair (√2,1/√2) gives weights ±1/2. | Excluded by integral separator weights. | None. |
| §5.5 genericity propagation | Unramified unitary PGL₂ principal series with pair (1,1) | Real exponents 0,0; root value 1 differs from 4 and 1/4. | Irreducible tempered spherical representation is generic. | None. |
| §6.1 ellipticity | GL₂ split sum; irreducible parameter | Centralizer quotient dimensions 1 and 0, respectively; irreducible centralizer is scalar. | Both directions of the criterion distinguished. | Deleted duplicate equivalence clause. |
| §6.2 elliptic temperedness | Elliptic PGL₂ parameter | Two standard good-place weights 0,0; moduli 1,1. | Weight-zero spherical conclusion fits. | None. |
| §6.3 frozen-leg realization | Moving standard of GL₂, with and without frozen dual | Central weights 1 and 0; centralizer-invariant dimensions 0 and 4 on standard and dual⊗standard, respectively. | Frozen factor changes the result. | None. |
| §6.4 stack realization | Identity morphism; empty stack | Constant rank 1 is R⁰id_!; empty-stack direct images have rank 0 in every degree. | Positive and zero witnesses agree with definition. | Punctuation only. |
| §6.5 conditional stack weights | G_m and BG_m | H¹_c(G_m) has weight 0, H²_c weight 2; H^(−2i)_c(BG_m) has weight −2i for i≥1. | Integrality differs from bounded degree. | Place pointer and punctuation corrected. |
| §7.1 weak Arthur data | Trivial versus standard SL₂ factor, q=4 | N ranks 0 and 1; Satake pairs (1,1) and (2,1/2). | Restricting to Weil alone loses SL₂. | None. |
| §7.2 Arthur weight prediction | Trivial PGL₂ and complementary point | Integer profile δ₁+δ₋₁ versus half-integer weights ±1/2. | Weight prediction excludes the complementary point, without constructing ψ. | None. |
| §7.3 compatible parameter | Residual trivial PGL₂ | Good-place pair (2,1/2) has determinant 1 and weights ±1. | Noncuspidal compatible example remains. | Deleted repeated cuspidal Check. |
| §7.4 discrete hypotheses | Residual χ∘det on PGL₂ | Central scalar a acts by χ(a²); descent requires χ²=1. | Quadratic condition necessary. | Punctuation only. |
| §7.5 conditional rationality | Operator T with polynomial T²−2 | Eigenvalues ±√2; field degree 2. | Number-field conclusion is the correct one. | None. |
| §7.6 Xue quotient | Ideal (T−a) over ℚ̄_ℓ, a transcendental over ℚ | Quotient dimension 1; its eigenvalue remains transcendental. | Finite codimension does not imply algebraicity. | Supplier duplicate and punctuation repaired. |
| §8.0 recognition | PGL₂, q=4 and 16, ν=(1/2,−1/2) | Standard profiles δ₁+δ₋₁ at both places; numerical pairs (2,1/2) and (4,1/4). | Same normalized exponent, different numerical operator. | Leading indentation only. |
| §8.1 global patterns | Residual trivial PGL₂ | n(1)=n(−1)=1; n(0)=0. | Pattern independent of degree. | None. |
| §8.2 complementary propagation | Dual Sp₆, partition (2,2,2) | Neutral profile 3δ₁+3δ₋₁; alternative profile δ₂+δ₁+2δ₀+δ₋₁+δ₋₂. | Alternatives have different greatest support. | None. |
| §8.3 weight array | a(0,1)=a(0,−1)=1 | Row margin 2δ₀; column margin δ₁+δ₋₁. | Row symmetry does not imply equal margins. | Punctuation only. |
| §8.4 Property A | a(2,1)=a(2,3)=1; zero array | Greatest discrepancy 3: c(3)=1>r(3)=0; zero array has both margins 0. | Direction and empty support agree. | Check-list spacing repaired. |
| §8.5 extraneous comparison | Sp₆ standard representation at (1/2,1/2,1/2) and (0,1/2,1) | At index 2, neutral multiplicity 0 and extraneous multiplicity 1. | Distinguishes the required profiles. | None; exceptional named-orbit identifications remain supplier requests. |
| §8.6 elimination | Same Sp₆ profiles; degree-two splitting cover | r(2)=1>c(2)=0 contradicts Property A. Also 2 log₄2=2 log₁₆4=1 and N→2N preserves rank. | Contradiction and restriction normalization agree. | Recognition pointer corrected. |

The source conditions are retained in the new targets: finite k, ℓ≠p, actual affine-generic automorphic datum, almost-simple H for r and h, algebraic lifts for the slope comparison, purity and the common companion polynomials for the transfer. No parameter is an arbitrary tuple with its conclusion assumed. The existence of the generic supplier extensions and the exceptional named-orbit identifications is recorded as work, not certified by these examples.

## Validation and exact outcomes

- **Acceptance elaboration:** `lake env lean` on `packages/GlobalShtukasAndFunctionFieldLanglandsPartII/Suggested.lean`, from the pinned content checkout, exited **0**, with no output. No TauCeti module imports or targeted module builds were needed. No Lean process remains running.
- **Signature audit:** the module declares **zero** definitions, instances or theorems, so the list requiring `#check @name` is empty. A separate scratch audit elaborated the nine cited native names with `#check @name`: Finsupp, Finsupp.sum, Finsupp.mapDomain, Finset.sum_comm, Finset.sum_eq_single, Representation, LinearMap, AlgebraicGeometry.Scheme and IsSl2Triple. It exited **0**. There are no dropped local binders and no changed local declaration signatures.
- **Pin audit:** content main is 86e155ca; Mathlib is 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti is a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Native Finsupp and mapDomain were read at Mathlib/Data/Finsupp/Defs.lean:88 and Mathlib/Data/Finsupp/Basic.lean:267. The Tau Ceti newform Satake definition was read at TauCeti/NumberTheory/ModularForms/Newforms/Satake.lean:91 and smooth discrete representations at TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete/Basic.lean:272.
- **Statability audit:** object searches at both pins found no global shtuka, Kloosterman, lisse-curve or reductive L-parameter carrier. Mathlib/RingTheory/WittVector/Isocrystal.lean:113 does define a point isocrystal by a Frobenius-semilinear automorphism; it has no curve, connection, overconvergence or Bessel eigenobject. It therefore does not make the new headline statable. The docstring correctly specifies the missing curve coefficients. No scalar surrogate was added.
- **Supplier audit:** the current index located 127 cited numbered supplier sections, whose headings and opening statements were checked against their cited use. Parent §§1.4, 1.9–1.14, 2.1–2.5, 2.9–2.10, 3.6, 3.10, 3.12, 4.8, 4.12, 5.3–5.10, 6.1–6.2 and 7.6–7.9; FunctionFieldArithmetic §5.8 and §§6.1–6.6; SmoothRepresentationsOfLocalGroups §§SR.0.2, SR.1.3–SR.1.5, SR.2.2, SR.3.1–SR.3.4, SR.4.1–SR.4.2 and SR.5.2; ArithmeticGaloisRepresentations §2.6 and §§3.1–3.4; DeligneWeightsAndPurity §§0.1–0.19, 5.2–5.12, 7.8–7.9, 8.5, 8.17–8.18; LanglandsParameterStacks §§LP0.1–LP0.4, LP1.11–LP1.12, LP2e.5, LP2e.15 and LP2c.1–LP2c.4, LP2c.8; ReductiveGroupsPartII §§RG2.3–RG2.5.2; MotivesAndAlgebraicCycles §6.3; HeckeStacksAndLocalShtukas §§HS0.1–HS0.4, HS2.9, HS3.1–HS3.4, HS4.1 and HS4.7; and DiamondSixOperations §§S1.2, S1.5, S2.1–S2.4 exist at their supplied heads. Main's NilpotentOrbits N0–N2, RepresentationTheory/LieHighestWeight Layers 0 and 6, SchemeAndStackFoundations Layers 1–2 and EtaleCohomologyFoundations F.0–F.4 were checked read-only, as was DiamondEtaleCohomology C0. The new RD sections were checked at their open head; RD.6.23, rather than RD.6.22, is the coefficient trace formula.
- **Citation resolver:** no unresolved Lean names of this roadmap. Its sole cross-roadmap lead is KloostermanSheavesAndBesselIsocrystals in Scope: the readable board design has the cited sections and is a later consumer. The resolver did not inspect pinned Lake packages from the board checkout; the separate pin and Lean audits above did. No lead was treated as a missing supplier without checking it.
- **Sources:** the 15 source entries parse as TOML and are certified legal copies. The newly cited André text was fetched through the source service from Numdam; its mathematical hypotheses were read at andre-bessel line 393. Its bibliographic metadata and exact locator are recorded. No missing source remains. README/manifest locators for fs and xz agree.
- **Gap and edit boundaries:** all **12** gaps have exactly matching README needs sentences. Parsing the original and edited plans and deleting their top-level gaps fields leaves identical JSON objects; the original nine gap entries are unchanged. No other design field, metadata, tool, merge-order file or sibling roadmap was edited.
- **Shape and repeated-pattern checks:** all Layer headings have the required preceding blank line; no stray period-semicolon, duplicate recognition pointer, undefined generic-place phrase or obsolete IX.5.1 page survives. The six F04 Check counts are **7, 4, 6, 6, 5, 4**; §4.0 has **9** discriminating Checks. `git diff --check` exits **0**.
- **Gate failures supplied by the brief:** none beyond the five review findings. Their changes are recorded in F01–F05 above.

The required dependency command exited **0**, with this complete output:

    depcheck: 51 roadmaps, 593 edges, 0 problem(s)

There is no UPWARD, CYCLE or moved line.

## Maintainer consequences

The later KloostermanSheavesAndBesselIsocrystals design must import the Bessel construction and local rigidity/transfer now owned in §4.0. This report does not edit that design or claim its full monodromy classification has moved. PadicDifferentialEquationsAndRigidCohomology must address the three explicit prerequisite gaps above; this package cannot implement or amend that supplier. Its previously planned sections are not advertised as already proving those extensions.

No Lean name was introduced, removed or renamed. Consumers of §4.0 retain its section number and all-prime étale conclusion; §§4.2, 4.4 and 4.5 keep their characteristic range. This report records repairs and checks, not independent acceptance.
