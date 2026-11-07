# GeometricFreyMazur repair report

## F01 (P1) — applied

Wrong supplier locators → ModularCurvesPartII §8.4 (`complexConjugationComparison`), §8.5 (`genericBaseChangeAndLevelCompatibility`), AbelianSchemesAndArithmeticModuli A1.6 (`relativeEllipticEquivalence`) and CongruenceSpectralGap §5.3. Repaired scope, contracts, proof routes and Needs in §§0.1–0.3, 0.6, 3.1, 3.4, 8.1, 9.1, 9.5 and 9.8. Compact uniformization still cites §6.1. The component Check now computes both p=5 and p=7.

## F02 (P1) — not actionable in this package: the general comparison must be supplied by ComplexComparisonPartII

Claimed finite quotient supply → étale-presentation supply plus gap:finite-group-quotient-analytification in both permitted locations. Added its invariant-sheaf, stabilizer and nilpotent requirements, three computed Checks and consumption in §§0.2, 6.1 and 6.4. Implementing the comparison requires another roadmap; this package can record the prerequisite, not amend its owner. SchemeAndStackFoundations §1.17 remains the algebraic quotient owner.

## F03 (P2) — applied

Duplicate general current/positivity/Poincaré–Lelong request → normalization, finite-map form integration, multiplicity, sublevel Green/Stokes and cusp-density transport. Imported ComplexComparisonPartII C5.4 explicitly in scope, contracts, §§0.6, 4.1, 5.1, 5.5 and the point-ball worked argument. Explained normalization once and computed masses 0, 1 and 2. Both hyperbolic-volume contracts remain unchanged; no supplier-to-consumer dependency was added.

## F04 (P3) — applied

Procedural and repeated Checks → exact matrix words at 7 and 11, numerical hyperbolic rotation counts, a nonsquare geometric-fibre multiplier and a nonconstant Legendre map. The same procedural pattern in §§5.4, 5.8, 9.5 and 10.5 now has computed exponent, distinct-fibre, ideal and intersection witnesses. No API declarations or examples were added to Suggested.lean.

## Evidence and mathematical qualifications

The four findings are supported; none requires a change to either native headline statement. The review's four numbered findings are the findings resolved above; its account of earlier repairs is background evidence.

| Finding | Evidence read and conclusion |
|---|---|
| F01, conjugation | `TauCetiRoadmap/ModularCurvesPartII/README.md` §8.4, “Complex conjugation and pairing inversion”, names `complexConjugationComparison` and changes the oriented frame by determinant −1. Section 6.1 is compact analytic–algebraic comparison. Section 8.5 names the generic base-change/level comparison. The two component computations are −1=4=2² in 𝔽₅ and −1=6∉{1,2,4} in 𝔽₇. |
| F01, relative elliptic comparison | `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md` A1.6 names `relativeEllipticEquivalence`, retaining zero, multiplication and invariant differentials over an arbitrary base, including dual numbers. A1.1 concerns products and relative dimension. The rank-zero identity group scheme has differential rank 0 and is excluded from the rank-one equivalence. |
| F01, numerical spectrum | `TauCetiRoadmap/CongruenceSpectralGap/README.md` §5.3 states the all-congruence-level 21/100 bound; §§0.5 and 0.7 fix the empty-small-spectrum value 1/4. There is no need to name its narrower eigenfunction signature as the supplied clipped-gap theorem. ABR96 line 14 states the geometric bound; ABR96 lines 50–145 give its energy/area route. |
| F02 | `TauCetiRoadmap/ComplexComparisonPartII/README.md` C−1.2 constructs local charts from a relation with unique local arrows; its branch Check explicitly excludes z↦z² at zero. C−1.3 still uses an étale presentation. An action groupoid at a fixed point has multiple isotropy arrows, so these assertions do not supply the requested finite-group comparison. C1.9's `properSchemeGagaPushforward` allows coherent nilpotents. Averaging has denominator the nonzero integer |G| in ℂ and preserves the invariant summand. This gives a proof route for the gap, not an invented supplier theorem. |
| F03 | `TauCetiRoadmap/ComplexComparisonPartII/README.md` C5.4 defines `CurrentCalculus`, weighted `AnalyticCycleIntegration`, its compact Kähler comparison and `lelongPoincareSection`. The local function formula has no curvature term; the Hermitian section formula does. The revised convention states that f is meromorphic and nonzero on each component. Since log|f|²=2log|f|, (i/2π)∂∂̄log|f|²=(i/π)∂∂̄log|f|. No second current carrier or Poincaré–Lelong theorem is needed. |
| F04 | BT16 line 392 is the systolic statement whose replacement witness is derived in the roadmap. Direct integer multiplication gives the two displayed matrices. BT16 lines 819–827 and 853–860 are the cusp-rotation argument; the exact rotation identity gives the replacement numerical values. The determinant and Legendre examples are direct computations, consistent with BT16 line 278's moduli interpretation. |

The F02 contract records local stabilizer-invariant rings of a coarse analytic quotient; it does not assert that the coarse quotient retains stack inertia. The trivial action is allowed, so the contract does not mistakenly require quotient degree |G|. The finite-map clause in F03 concerns pullback of forms and weighted pushforward on curves, not a pullback operation on arbitrary cycles without flatness. ComplexKahlerGeometry supplies transport on its native integration carrier; this package uses C5.4's comparison to the complex current. No request makes ComplexKahlerGeometry depend on ComplexComparisonPartII or on GeometricFreyMazur.

## Citation, ownership and pin audit

Read the main-branch shapes of AlgebraicCurves, FuchsianOrbifolds and SchemeAndStackFoundations before editing. Main is `35c9f96d09370061f84422fd640552aaf1609e8d`. The supplied roadmap service was used to read the open heads of ModularCurvesPartII, ComplexComparisonPartII, AbelianSchemesAndArithmeticModuli, NeronModelsAndSemistableAbelianVarieties, InverseGaloisAndArithmeticFundamentalGroups and CongruenceSpectralGap. All cross-roadmap references in the package were resolved again against those heads or main, rather than inferred from the earlier review.

| Supplier | Sections read and hypotheses retained |
|---|---|
| ModularCurves | 0D–0E finite étale/Galois data and effective descent; 2C dual identities; 5B–5C ordered pairing frames and twists. Actual torsion maps remain separate from scalar classes. |
| ModularCurvesPartII | §§1.2–1.3, 2.3, 3.9, 3.14, 4.1, 4.6–4.10, 5.7, 5.13, 5.16, 6.1, 8.4–8.5 and 9.13. The compact quotient and the conjugation/generic comparisons are distinct. Section 9.13 retains the cyclic filter, domains ℤ/(pd) and ℤ/p and ψ(m). Only characteristic-zero field extensions are consumed here. |
| SchemeAndStackFoundations | §§0.8–0.9, 0.11, 1.17, 3.2, 4.11–4.13, 5.1–5.3, 5.9–5.10. The projective quotient theorem has a Noetherian base and flat-base-change conclusion; its degree-zero algebra need not be the base. Curve normalization is finite in the finite-type-over-a-field application. Additional free-locus, cycle and surface claims remain explicit gaps. |
| AlgebraicCurves | Layers 3–5, 7 and 12A–12E: degrees, norm, Riemann–Roch, different, regular models and the curve dictionary. The characteristic-zero applications are separably generated and smooth. Proper-target extension and the additional gonality contracts remain gaps. |
| FuchsianOrbifolds | Layers 0–5: effective projective action, faithful finite cyclic tangent characters, polygon/area, primitive cusp widths, compactification and finite-map degree/Hurwitz. Marked trigonometry remains an explicit gap. |
| ComplexKahlerGeometry | K3, K5a and K6.1: analytic sets, integration substrate, local mass and compact integration/Stokes. This does not replace C5.4's general complex current theory. |
| RiemannianGeometry | R7.0 and R8: positive Laplacian and round unit sphere normalization. The singular conformal metric inequality remains a gap, without assuming a first discrete eigenfunction exists. |
| ComplexComparisonPartII | C−1.1–C−1.3, C1.9, C2.2, C4.1–C4.5, C5.4 and C6.2: nilpotents, coherent comparisons, proper-source algebraicity, connectedness, weighted currents and finite-type Riemann existence. The finite-group comparison is explicitly a gap. |
| InverseGaloisAndArithmeticFundamentalGroups | IG.0.3, IG.1.3's characteristic-zero base-extension paragraph, and IG.3.1. IG.1.3 explicitly includes nonproper finite-type schemes in characteristic zero. No nonproper positive-characteristic invariance is consumed. |
| AbelianSchemesAndArithmeticModuli | A1.6, A1.8, A3.1–A3.5, A3.7–A3.8, A6.1, A6.6–A6.7, A6.20, A6.25 and A6.34. The extension base here is smooth Dedekind, torsion is prime to characteristic and nonisotriviality is the package's additional rank-one input. |
| NeronModelsAndSemistableAbelianVarieties | §§1.3 and 1.8: marked extension from smooth test schemes and good abelian schemes as Néron models. They apply over the original smooth curve, with both isogeny and dual extended. |

Ownership was searched by object through `roadmaps grep` across main and the indexed open heads, and through the board packages' READMEs and Suggested.lean files. Searches included ramified finite-group analytic quotients, invariant structure sheaves, weighted cycle currents, normalization branches and sublevel Stokes transport. ComplexComparisonPartII is the complex comparison/current owner; Polylogarithms also imports its C5.4 and adds its own normalization adapter. Nonarchimedean and perfectoid finite quotient matches concern different carriers. No new foundational construction is owned here. The existing modular estimates and their applications remain this roadmap's objects. No helper agents were used.

The resolver found no missing cross-roadmap citations or Lean names. It said that it did not check external library names; those names were instead checked directly in the local pins. Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, both equal to the manifest pins.

| Pinned declarations | File and location, relative to the pinned package |
|---|---|
| `Matrix.ProjGenLinGroup`, `mk_eq_mk_iff`, PSL-to-PGL and injectivity | `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Projective.lean`:41, :64, :113, :120; `Mathlib/LinearAlgebra/Matrix/ProjectiveSpecialLinearGroup.lean`:33. Quotients are by centres; injectivity is not surjectivity over 𝔽_p. |
| Entrywise norms | `Mathlib/Analysis/Matrix/Normed.lean`:87 and :106. The existing scoped entrywise norm is used. |
| Index and symmetric multisets | `Mathlib/GroupTheory/Index.lean`:55; `Mathlib/Data/Sym/Basic.lean`:43, :342 and :361. Index uses natural cardinality; Sym remembers multiplicity and is not a scheme quotient. |
| Function fields and torsion | `Mathlib/NumberTheory/FunctionField.lean`:58; `Mathlib/Algebra/Module/Torsion/Basic.lean`:972 and :1010; `Mathlib/Algebra/Module/ZMod.lean`:81. FunctionField itself asserts finite dimensionality over RatFunc; the signatures explicitly retain the k-algebra tower. |
| Point action and determinant | `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean`:823; `Mathlib/LinearAlgebra/Determinant.lean`:173. The point map is additive. The determinant's fallback is 1 without a finite basis; actual characteristic-zero elliptic p-torsion is rank two. |
| Generation and perfectness | `TauCeti/LinearAlgebra/Matrix/SpecialLinearGroup/Transvection.lean`:595; `Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean`:804. Generation works over any field; perfectness requires a≠0, a²≠1. |
| Native isogeny and descent | `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Basic.lean`:139; `Isogeny/Descent.lean`:117; `Isogeny/MulByInt/Hom.lean`:63. Pointed coordinate pullback is real data; fixed-isogeny descent permits infinite Galois extensions; integer scaling includes zero. |
| Analytic degree and ramification | `TauCeti/Analysis/Complex/RiemannSurface/Degree.lean`:120, :133 and :434; `Ramification.lean`:112. FiniteHolomorphicMap includes holomorphicity, two distinct values and finite fibres; degree multiplication retains compactness/connectedness hypotheses. Ramification coefficients are integer e−1. |

Object searches at these pins returned module symmetric powers rather than the needed scheme symmetric powers, and no projective-level quotient surface, analytic cycle carrier or geometric Frey–Mazur theorem. The existing simple gonality definition and two native elliptic/function-field headlines therefore remain appropriate. No source entry was added or renamed. BT16, BTE and ABR96 were read from the supplied legal cached extractions; BLR90 remains settled `uncertified`, cited only by its existing locators. No missing-reference request was needed.

## Adversarial mathematics pass

Each row records a statement or defining law, instances and actual values. Numerical computations are small witnesses, not proofs of the asymptotic targets. “Retain” means no mathematical edit; “gap” means an explicitly requested supplier statement, not a verified existing supplier theorem. Weighted identities apply componentwise, so the displayed one- and two-component calculations also test their finite sums.

| Statement | Instances tried | Values on the two sides or the negative control | Result | Change |
|---|---|---|---|---|
| Gonality definition, positivity | k(t), f=t | [k(t):k(t)]=1; all finite degrees ≥1 | Pass | Retain real definition |
| Gonality independent of rational subfield | k(t), replace t by t² | Chosen subfield degrees 1 and 2; infimum over all f remains 1 | Pass | Retain |
| Gonality/proper-model comparison | Genus one; hyperelliptic genus ≥2 | Pencil degree 2; degree 1 would give genus 0 | Gap control | Retain |
| Empty-set gonality | K=k | No transcendental element, sInf ∅=0; no compatible k(t) embedding | Pass | Retain headline restrictions |
| Base field/universe convention | Huge algebraically closed k; two model coefficients | Model transcendence degree ≤2 even when k has larger cardinality than ℂ | Pass | Retain finite-presentation route |
| Characteristic and prime restrictions | p=2,3,5,7 | Triangle reciprocal sums 4/3,7/6,31/30,41/42; only 7 is hyperbolic | Pass | Retain exceptions to standing p>5 |
| Empty and zero cycles | Zero cycle; doubled curve | Area, degree and all multiplicity sums 0; doubled values 2A,2D,2m | Pass | Retain weights |
| Left frame action | Noncommuting U(1), L(1) | UL=[[2,1],[1,1]], LU=[[1,1],[1,2]]; inverse composite h⁻¹g⁻¹=(gh)⁻¹ | Pass | Retain inverse |
| Determinant square classes | p=7, diag(1,3), 2I | Determinants 3∉{1,2,4} and 4∈{1,2,4} | Pass | Add fibre Check |
| Coarse frame inertia | p=7, −I | −I≠I in GL₂ but [−I]=[I] in PGL₂ | Pass | Retain actual/projective distinction |
| Conjugation component convention | p=5 and 7 | −1=4=2²; −1=6 nonsquare | Pass | New explicit Check; §8.4 |
| Metric area/radius | Disc r=0 and 1 | a(0)=0; a(1)=3.412276; a(r)/r²→π | Pass | Retain |
| Length versus radius | p=101 leading terms | ρ=9.230241+O(1), shortest length=18.460482+O(1) | Pass | Retain factor 2 |
| Degree versus volume | p=7, diagonal and degree-two cover | K_X degree 4; diagonal D=8, volume=16π; cover D=16, volume=32π | Pass | Retain |
| Current normalization | f=z,z²,1,z⁻¹ | Both conventions give [0],2[0],0,−[0]; f≡0 is excluded | Pass | Correct import and conversion |
| Weighted current | η with ∫_Lη=1; 2[L] | Reduced line gives 1; both weighted functionals give 2 | Pass | Add weight Check |
| Graph-tube convention | Matched coordinate distance 3r/2 | Midpoint distances 3r/4<r; 3r/2<2r | Pass | Retain threshold 2r |
| Disconnected metric convention | Distinct determinant labels | Compatible component has finite distance; incompatible pair is in no componentwise tube | Pass | Retain component restriction |
| Hecke index convention | m=1,4,6,9,p | ψ=1,6,12,12; σ₁(4)=7; [p] on p-torsion=0 | Pass | Retain prime-to-p |
| Finite quotient analytification | P¹, z↦−z | Quotient w=z²; derivative 0 at 0, local degree 2; germs ℂ{z²} | Gap control | Add F02 gap |
| Nonfaithful quotient action | Trivial group action on double point | Invariant ring ℂ[ε]/ε², dimension 2 over ℂ; reduction dimension 1 | Gap control | Add nilpotent Check |
| Quotient functoriality | Sign-equivariant z³; identity | q∘f=z⁶=f̄∘q; identity pulls w to w | Gap control | Add map Check |
| Current transport, normalization branches | Node xy=0; cycle twice a line | Two normalization discs contribute A₁+A₂; double line contributes 2A | Gap control | Trim to transport |
| Finite-map form integration | t↦t² | Generic fibre has 2 points, branch index 2 at 0; pushforward weight 2 | Gap control | Forms, not arbitrary cycle pullback |
| Local multiplicity transport | Branch (t²,t³) | Normalization parameter t; multiplicity min(2,3)=2, not 1 | Gap control | Retain |
| Sublevel Green/Stokes | u=log|z|², v=−log(1−|z|²) | Boundary flux ∫dᶜu=1; at r=1, V/(4π)=0.271540 | Gap control | Import current calculus |
| Cusp density extension | q=t and q=t² | Factors e² cancel; each gives dr dθ/(r log²r), no atom | Gap control | Retain transport only |
| Hyperbolic point-volume contract | Coordinate disc and weight 2 | V(r)=a(r) and 2a(r); zero cycle gives 0 | Gap control | Unchanged contract |
| Ordinary diagonal-volume contract | Transverse coordinate curve in disc² | Intersection 1; radius-r tube gives area a(2r)≥2a(r), since ratio=4cosh²(r/2) | Gap control | Unchanged contract |
| Relative diagonal normalization | r=1,R=2 | cosh1/cosh2≈0.41015; sinh1/sinh2≈0.32403, both <1 | Gap control | Retain two distinct ratios |
| Relative point-ball contract | Coordinate line, (r,R)=(1,3),(2,4) | V(r)/V(R)=0.059892,0.104994; (1+r)e^(r−R)=0.270671,0.406006 | Gap control | Unchanged contract |
| Point-ball nonincidence | Constant first coordinate a≠0, radius below | V=0 and centre multiplicity 0; no invented centre atom | Gap control | Retain |
| Hyperbolic trigonometry contract | p=7,d=1,k=1 | sinh(D/2)=sinh1 sin(π/7); D=0.980099 | Gap control | Retain |
| Lens bound | R=1,3 | 2artanh√tanh(R/2)−R≈0.657454,0.692527; bounded additive enlargement | Gap control | Retain |
| Singular-metric Li–Yau contract | Degree-one round sphere | Area=4π, λ=2; λArea=8π=8π·1 | Gap control | Retain |
| Norm/pencil gonality contract | Degree-two map to P¹ | Target gonality 1≤source; pushed degree-two divisors have degree 2 | Gap control | Retain |
| Curve extension/normalization contract | Nodal cubic | Normalization genus 0; arithmetic genus 1; proper extension fills missing points | Gap control | Retain distinct ownership |
| Free quotient and relative cycle contract | n=1,2; repeated point | Identity quotient degree 1; generic permutation fibre 2, repeated fibre 1 but cycle length 2 | Gap control | Retain multiplicity |
| Cyclic surface contract | 1/3(1,1),1/3(1,2) | Continued fractions [3],[2,2]; exceptional squares −3 and (−2,−2) | Gap control | Retain |
| Surface intersection contract | C²=−2, C·E=1,2 | Updated squares −1 and 2 | Gap control | Retain |
| §0.1 frame comparison | p=7, scalar 2I; nonsquare diag(1,3) | Scalar quotient unchanged; determinant class changes for 3 | Pass | Correct §8.4–§8.5 citations |
| §0.1 component count | p=7 | Six primitive pairings modulo three squares give 2 components | Pass | Retain |
| §0.2 quotient map and fibres | p=7, selected fixed-pairing product | Generic fibre size 168; full G has order 336 | Pass | Add analytic gap, no degree confusion |
| §0.2 composed frame invariance | φ_i→φ_i g⁻¹ | (φ₂g⁻¹)(φ₁g⁻¹)⁻¹=φ₂φ₁⁻¹; swap gives ψ⁻¹ | Pass | Retain |
| §0.2 determinant presentations | ψ=I and diag(1,3) at 7 | Square classes 1 and 3 distinct; common G action does not identify them | Pass | Retain |
| §0.3 plus/minus definition | Gaussian equal lifts and conjugate lifts | Lie eigenvalues (i,i) and (i,−i); product modular tangents (−1,−1) in both | Pass | Correct conjugation supplier |
| §0.3 equality of lifts | g and −g at odd p | Characteristic polynomials both t²+1, but matrices differ by nonzero 2g | Pass | Retain equal-frame condition |
| §0.3 stabilizer nonexample | j=1728 versus j=0 | gcd(2,3)=1; common inertia order 1 | Pass | Retain |
| §0.3 generator convention | t²+t+I=0 | Other root −1−t, sum −1 and product 1; −t has wrong sum | Pass | Retain |
| §0.4 singular bicusp definition | p=7, same inertia line | (7−1)/2=3 cusp labels; common stabilizer order 7 | Pass | Retain |
| §0.4 mixed and distinct inertia | C₂,C₃,C₇; distinct C₇ subgroups | Pairwise mixed intersection order 1; equal C₇ intersection order 7 | Pass | Retain |
| §0.5 exhaustive branch set | Orders 1,2,3,7 | All 13 off-type/ordinary table entries 1; equal nonordinary types allow 2,3,7 | Pass | Retain both directions |
| §0.6 cyclic correspondence | (ℤ/4)² | 12 primitive vectors /φ(4)=12/2=6 cyclic subgroups | Pass | Correct transport citations |
| §0.6 identity/duality | m=1; cyclic quotient degree m | T₁ diagonal, pull-push identity; dual kernel also cyclic of size m | Pass | Retain |
| §0.6 weighted degree | m=4, cycle degree D=5 | Pull-push degree 6·5=30; full-subgroup 7·5=35 is different | Pass | Import current owner explicitly |
| §1.1 triangle uniformization | (2,3,7) | 1−1/2−1/3−1/7=1/42>0; deck order 168 | Pass | Retain compact §6.1 |
| §1.2 deformation determinant | p=7 | b≈0.74849; c²−b(b−1)=1; S²=−I, tr(SU)=1 | Pass | Retain |
| §1.2 fixed point and branch | p=7 and 5 | y₇=1.725082>1; 1−4sin²(π/5)≈−0.381966 | Pass | Retain p>5 |
| §1.2 power convention | a=0,1,−1,p | Formula gives I,U,U⁻¹,−I respectively; projective pth power 1 | Pass | Retain |
| §1.2 limiting metric | p=101 | (1−b)p²/π²=1.000646; upper translation tends to [[1,1],[0,1]] | Pass | Retain |
| §1.3 integral witness, x=1 | p=7,r=2 | −L(4)U(3)L(−3)U(3)=[[8,21],[35,92]], det 736−735=1, tr 100 | Pass | New Check |
| §1.3 integral witness, x=2 | p=11,r=3 | L(7)U(−3)L(−4)U(1)L(1)U(1)=[[23,33],[154,221]], det 5083−5082=1, tr 244 | Pass | New Check |
| §1.3 congruence condition | Matrices at 7 and 11 | Both reduce to [[1,0],[0,1]] | Pass | New Check |
| §1.3 leading trace | Both residue classes | 9α² and −α²(−9)=27/(4π²)=0.683918 | Pass | New Check |
| §1.3 deformation witness | p=101,103,1009,1013 | tr/p²≈0.679810,0.680012,0.683877,0.683877; limiting coefficient 0.683918 | Pass | No numerical universal threshold asserted |
| §1.4 trace congruence | p=7 | 2−p²=−47, 2+2p²=100, both ≡2 mod49 | Pass | Retain filling condition |
| §1.4 length bound | p=7, trace −47 | 2arcosh(47/2)=7.699389 versus 4log7=7.783641 | Pass | Retain |
| §1.5 cusp star/separation | iy and i/y at p=7 | d(i,iy)=log1.725082≈0.5453; separation twice that, ≈1.0907 | Pass | Retain asymptotic constants |
| §1.6 metric comparison | R=1; R→0 | tanh²(1/2)=0.213552; length factor coth(1/2)=2.163953; lower factor tends to 0 | Pass | Retain squared area factor |
| §1.7 deep-visit count | R_b=(log p)/2,R_s=(log p)/4 | Each deep visit costs (log p)/2; L≤4log p+C gives at most 8+o(1) visits | Pass | Retain repeated visits |
| §1.7 arc error | r(s)≥|s|, |s|≥1 | coth(r/2)−1≤2/(e^|s|−1), integrable tails | Pass | Retain |
| §1.8 cusp radius | p=101,y=1/2 | |q|=0.969374; radius 4.163618 | Pass | Retain q normalization |
| §1.8 Hecke enlargement | y→2y and y/2 | q-radii 0.939686 and 0.984568; half-height gives larger disc | Pass | Retain +log m direction |
| §2.1 height convention | All-ones matrix J | h(J)=1, Frobenius=2; h(J²)=2=2h(J)² | Pass | Retain pinned norm |
| §2.1 inverse height | [[2,1],[1,1]] | Inverse [[1,−1],[−1,2]]; both heights 2 | Pass | Retain |
| §2.2 elliptic displacement | Same determinant-one matrix | cosh distance=(4+1+1+1)/2=7/2 | Pass | Retain component-preserving restriction |
| §2.3 small lifted cusp | M=I versus MU^k | Both send fixed cusp lift to itself after γ_p; minimum possible height 1 | Pass | Retain existential representative |
| §2.4 double coset | H upper unipotent at p=7, M=S | U(1)SU(1)=[[1,0],[1,1]], in neither S H nor H S | Pass | Retain both H factors |
| §2.4 identity displacement | g∈H | d(c₀,gc₀)=0, M=I of height 1 | Pass | Retain |
| §2.5 uniqueness range | δ=1/10 and 1/5 | Exponents 8δ=0.8 and 1.6; p is not O(p^0.8) but is O(p^1.6) | Pass | Retain small δ |
| §2.6 cusp lens | Doubled δ parameter | Radius (1/2+δ)ρ uses lift range (1+2δ)ρ; hence 2δ, not δ, enters uniqueness | Pass | Retain |
| §2.7 overlap count | Centre at a cusp; point outside every cusp ball | Counts 1 and 0; upper bound Cδp^(24δ) accommodates both | Pass | Retain |
| §3.1 rank reconstruction | Four entries, rank-three equations; Q=diag(1,−1) | Kernel dimension 1, primitive determinant −1; −Q still determinant −1 | Pass | Correct conjugation supplier |
| §3.1 uniqueness excludes larger kernel | Projective line over 𝔽₇ | Eight points, at most two determinant zeros, at least six invertible solutions | Pass | Retain p>3 |
| §3.1 Smith reconstruction | Q=diag(1,2) and diag(1,−2) | Smith factors (1,2), cyclic order 2; negative case factors reflection | Pass | Retain both signs |
| §3.2 definite centralizers | Gaussian and Eisenstein t | Norms a²+b², a²−ab+b²; integral norm-one counts 4 and 6 | Pass | Retain |
| §3.2 distinctness control | M_x=M_y=I | Equations coincide, solution dimension 2; points coincide | Pass | Retain distinctness |
| §3.3 Heegner repulsion | Two distinct diagonal Heegner points, when present | Index m=1, degree 1 and determinant 1 | Pass | Retain Heegner-only |
| §3.4 conjugate definition/involution | m=1 | Graph tangent {(v,bar v)} has complex-line dimension 0; c₂² gives diagonal | Pass | Correct §8.4–§8.5 |
| §3.4 signed determinant | R=diag(1,−1) | det R=−1; |det R|=1, positive complex-linear map only after conjugation | Pass | Retain real-analytic restriction |
| §3.5 Hecke avoids CM minus | E=ℂ/ℤ[i], opposite lift | Ordinary map commutes with i; replacing i by −i differs by 2i of degree 4, invertible mod p>3 | Pass | Retain |
| §3.6 three versus two cusps | 𝔽₇, fix 0 and ∞, then 1 | Six t↦at maps become one after 1↦1 | Pass | Retain third-point hypothesis |
| §3.6 negative boundary control | p=13,a=5 | a²=−1; u+v≥13 implies uv≥12, signed index 1 succeeds | Pass | Retain ordinary/conjugate union |
| §4.1 graph definition/codimension | g=1; single coordinate equality | Two simultaneous equations give surface dimension 2 in dimension 4; single equality dimension 3 | Pass | Import cycle-current owner |
| §4.1 relabeling and slot swap | Frames a,b; g=U(1) | Label ag b⁻¹; slot swap label g⁻¹=U(−1) | Pass | Retain |
| §4.2 reduced centralizer count | Split diagonal algebra; Gaussian algebra | Norm-one integral units ±I (2); Gaussian units 4 | Pass | Retain reduced/nonscalar |
| §4.2 unipotent countermodel | [[1,t],[0,1]], integer | Height≤H admits 2⌊H⌋+1 values; not O(log H) | Pass | Retain exclusion |
| §4.3 overlap cusp alternative | p=101, ξ=(a,a) at singular bicusp | 101 graph labels fix ξ, cusp distance 0; log101=4.615121 | Pass | Retain |
| §4.4 growing radius | R=10 | sinh10=11013.232875, linear term 10, ratio 1101.323287 | Pass | New Check |
| §4.4 angular count | p=7,d=1,R=1/2 | Distances 0,.980099,1.645565,1.961531,1.961531,1.645565,.980099; count 3 | Pass | New Check |
| §4.4 singular denominator | d=0 | All seven rotations fix centre, count 7; sinh d=0 is not divided by | Pass | New Check |
| §5.1 weighted degree | p=7, diagonal; constant second coordinate | Degrees 8 and 4; areas 16π and 8π; constant term 0 | Pass | Correct current input |
| §5.2 CM degree sum | d=4 | ψ(1)+ψ(2)+ψ(3)=1+3+4=8≤14<64 | Pass | Retain upper bound |
| §5.2 exponent choice | δ₁=.01, sufficiently small δ₂=.0001 | Terms p^−.0002 and p^−.97 decay; numerical example conditional on repulsion range | Pass | Retain quantifier order |
| §5.3 conjugate ratio | ε fixed, R=log p+O(1) | sinh ε/sinh R=O(p⁻¹); reversed ratio O(p) | Pass | Retain corrected direction |
| §5.4 cusp-weighted exponent | Bounds p^−.9D and p^−1.01D | Multiplication by p gives p^.1D and p^−.01D | Pass | Replace procedural Check |
| §5.4 independent scales | δ₃=.01, δ₁=.001; positive small δ₂ | 2δ₃−3δ₁=.017>0; (B+2)δ₃<1 still required separately | Pass | Retain independent choice order |
| §5.5 cusp density | e=1,2 | e²/e²=1; masses at ε=.01,10⁻⁶ are 1.364376,.454792→0 | Pass | Add C5.4 input |
| §5.5 constant cusp coordinate | t↦(t,cusp) | Second projection degree and measure 0; first unchanged | Pass | Retain no singular-form evaluation |
| §5.6 global volume error | p=7,11,101 | g=3,26,40376; cusps 24,60,5100; area ratios 7,11/5,101/95 | Pass | Retain p>5 |
| §5.7 cusped isometry | z↦2z | |2dz|²/(2Im z)²=|dz|²/(Im z)²; no compact equality follows | Pass | Retain |
| §5.8 non-Hecke hypothesis | Curve in T₁×T₁ | Ratio 3p/(p−6)=21 at 7,303/95 at101, limit 3 | Pass | Retain exclusion |
| §5.8 pencil input | n=2, distinct generic b₁,b₂; repeated b₁ | Distinct quotient points give no graph equality; repeated pair lies on Δ₁ | Pass | Replace procedural Check |
| §5.8 final error exponents | Allowed δ with Aδ<1/4 | Aδ−1<−3/4, Aδ−1/2<−1/4, −δ/2<0; log p·p^−δ decays | Pass | Retain fixed positive η |
| §6.1 symmetric-power object | n=1,2 | Sym¹Z=Z; unordered {x,y}={y,x}; distinct fibre 2, doubled fibre 1 | Pass | Add analytic comparison gap |
| §6.1 multiplicity and singularity | Doubled point in smooth surface chart | Cycle length 2; normal sign quotient has equation ac=b² and singular tangent dimension 3 | Pass | Retain scheme quotient |
| §6.2 image normalization | Degree-two cover of rational image | Map degree 2, image gonality 1; birational reduction is not an assertion degree=1 originally | Pass | Retain |
| §6.3 pencil cycle definition | Double cover, simple branch | Generic fibre [f(b₁)]+[f(b₂)]; branch fibre 2[f(b)] | Pass | Retain finite-flat weights |
| §6.3 generically injective map | t≠t′ with disjoint generic fibres | Nonempty cycle supports disjoint; equal cycles impossible; constant f instead gives n[f(b₀)] | Pass | Retain birational/nonconstant |
| §6.3 pencil basis direction | h′=A∘h | φ′(t)=φ(A⁻¹t), so φ′∘A=φ | Pass | Retain inverse |
| §6.4 wreath quotient | p=7,n=1,2 | |W|=336 and 2·336²=225792; permutation order 1 at n=1 | Pass | Add ramified analytic gap |
| §6.4 component stabilizer | r dominating components, generic free orbit | Each fibre splits into r sets of |H| points; r|H|=|W|, degree α=|H| | Pass | Retain chosen component |
| §6.4 normalized quotient | Local t=s² | ℂ[[s]]^C₂=ℂ[[s²]]=ℂ[[t]], local index 2 | Pass | No étale claim at branch |
| §6.4 change of component | Translate by w | H changes to wHw⁻¹, cardinality |H| unchanged | Pass | Retain choice independence |
| §6.5 degree sums | n=1,2,3 | Pair sums 0,D,2D=(n−1)D | Pass | Retain weighted projections |
| §6.5 degeneracy control | p=7,C=T₁×{a} | Degree 8; constant slot pushforward 0, first slot Hecke | Pass | Retain exclusions |
| §7.1 wreath support | n=2, permutation swap and (g,g⁻¹) | Fixed equations x₁=gx₂,x₂=g⁻¹x₁ give one Δ_g; free-point ramification index 1 | Pass | Retain exhaustive list |
| §7.2 cyclic local index | Two cusp slots; n=3 mixed 2,3,p | lcm(p,p)=p; mixed bound 6·3!p=36p | Pass | Retain one p factor |
| §7.2 noncyclic control | C_p×C_p | Cardinality p² but exponent p; cannot substitute group order for curve inertia | Pass | Retain faithful tangent criterion |
| §7.3 ramification charging | e=2,3,7 | e−1=1,2,6≤2,3,7; cusp coefficient needs factor p | Pass | Retain |
| §7.4 upper Hurwitz | z↦z² on P¹ | −2=2(−2)+2 | Pass | Retain −2deg α |
| §7.4 lower degree bound | n=2,D=20,d=3,K=4 | D≤2ndK=48; lower dK=12≥D/(2n)=5 | Pass | Retain algebraic degree normalization |
| §7.4 contradiction | n=2, coefficient 1/(4n) | Upper D/8 versus lower D/4 for D>0 | Pass | Retain nonconstant projection |
| §7.5 threshold quantifiers | N=1,2,3 | Possible pencil degrees ∅,{1},{1,2}; finite maximum of thresholds | Pass | Retain |
| §8.1 numerical gonality | D=1; empty small spectrum | (21/100)(π/3)/(8π)=7/800; 1/4≥21/100 | Pass | Correct §5.3 citation |
| §8.1 area negative control | Replace π/3 by 4π | Result 21/200, exactly 12·7/800 | Pass | Retain cusp metric |
| §8.2 subgroup index | p=2,3,5,7 | SL orders 6,24,120,336; transvection orders 2,3,5,7 | Pass | Retain all primes |
| §8.2 small nonabelian controls | S₃,A₃; SL₂(𝔽₃),Q₈ | Indices 6/3=2 and 24/8=3; cyclic Borel indices p+1 | Pass | Retain |
| §8.2 properness | H=SL₂(𝔽₅) | Index 1<5; no contradiction since H is not proper | Pass | Retain |
| §8.3 full image threshold | N=2,p=229 | 7p/800=1603/800>2; p=227 gives 1589/800<2 | Pass | Retain strict inequality |
| §8.3 projective lift | Proper lift of full PSL at p>3 | Index ≤2<p; proper-index theorem excludes it | Pass | Retain actual SL conclusion |
| §8.4 self-twist statement | 𝔽₅,D=diag(2,3),swap A | AD=−DA=[[0,3],[2,0]] on cyclic image; full SL excludes character | Pass | Retain surjectivity |
| §8.4 kernel and invertibility | γ∈kerρ; χ(γ)=−1 | A=−A implies 2A=0; odd p and invertibility exclude it; A=0 would satisfy | Pass | Retain |
| §9.1 actual-to-projective map | Ψ=aI | Determinant a² square, [Ψ]=[I], image in H₁ | Pass | Retain arbitrary-scalar Check |
| §9.1 component discriminator | Geometric fibre, p=7,diag(1,3) | Multiplier 3, nonsquare; no claim of a global nonscalar self-map of a full-monodromy family | Pass | New Check with fibre qualification |
| §9.1 nonconstant map | Legendre at t=2,3 and pole at 0 | j=1728,21952/9,∞; not constant | Pass | New Check |
| §9.1 twist control | Nontrivial sign cocycle at odd p | Sign is 1 in PGL₂ but −I≠I on actual E[p] | Pass | Retain actual isomorphism input |
| §9.2 Hom rank and degree | Non-CM E, h=2f | End E=ℤ; degree 4deg f; E[2] has order 4 and is noncyclic | Pass | Retain primitive generator |
| §9.2 CM negative control | E=ℂ/ℤ[i] | End rank 2, degrees a²+b², j=1728 constant | Pass | Retain nonisotriviality |
| §9.3 scalar-compatible lift | Identity; cyclic quotient degree m prime to p | f[p]=Ψ for λ=1; det f[p]=m≠0 modp | Pass | Retain |
| §9.4 descent sign | p=5; p=2 | Negative conjugate forces 2f[p]=0; at 5 contradicts invertibility, at 2 gives 0=0 | Pass | Retain odd prime |
| §9.4 scalar example | Ψ=−id,f=id | f[p]=−Ψ=id; conjugation fixes f | Pass | Retain no monodromy premise |
| §9.5 field uniformity | Model over ℚ(a,b) inside huge k | Transcendence degree ≤2; same chosen pencil degree n after both extensions | Pass | Correct §8.5 citation |
| §9.5 closed containment | I=0 or (1), faithful field extension | Tensor ideals 0 and (1); zero detected in both directions | Pass | Replace procedural Check |
| §9.6 native full_monodromy | Legendre, N=2,p=229 | Gonality 1<2,1600<1603; |SL₂(𝔽₂₂₉)|=12008760; identity realized by identity σ | Pass | Signature unchanged |
| §9.6 constant-j exclusion | Constant E over ℂ(t) | Actual Galois image order 1; misses nonidentity U(1) of order 229 | Pass | Retain hW |
| §9.7 original-base isogeny | f=id; f and dual degree n | Identity extends with degree 1; extended composites [n], kernel inside E[n] rank n² | Pass | Retain extension suppliers |
| §9.8 native geometric_frey_mazur | E′=E, Legendre, e=id | Both equivariance sides σP; degree-one identity K-isogeny; at P=0 both 0 | Pass | Signature unchanged |
| §9.8 nonvacuous thresholds | N=0,1,2 | First two admit no gonality input; N=2 includes ℂ(t) of gonality 1 | Pass | Retain ∃M before all fields |
| §10.1 genus threshold | g=0,1; N=1,2 | Gonality bounds 1≤1<2 and 2≤2<3 | Pass | Retain N+1 enlargement |
| §10.2 normalization genus | Nodal cubic; smooth genus one | Genus 0 despite arithmetic genus 1; gonalities 1,2 both <3 | Pass | Retain |
| §10.3 quotient resolution | 1/2(1,1),1/3(1,1),1/3(1,2),1/7(1,6) | Negative continued fractions [2],[3],[2,2],[2,2,2,2,2,2] | Pass | Retain |
| §10.3 intersection matrix | Chain [2,2] | Matrix [[−2,1],[1,−2]], determinant 3 | Pass | Retain signs |
| §10.3 known-curve definition | Exceptional component; nonexceptional strict transform | Image dimension 0 versus 1; second preserves normalization function field | Pass | Retain |
| §10.4 rational-curve classification | Contracted and noncontracted curves | First is rational exceptional; second normalization genus 0, hence Hecke by threshold | Pass | Retain |
| §10.5 contraction updates | C²=−2,C·E=1,2 | New squares −1 and 2 | Pass | Replace instruction with values |
| §10.5 termination | Sequence of r contractions | Picard number changes ρ→ρ−r≥0; no more than ρ steps | Pass | Retain known rational ancestry |
| Worked upper witness | Both integer residue classes | Matrices, determinants 1, traces 100/244 and leading coefficient .683918 agree with §1.3 | Pass | Recomputed |
| Worked compact lower bound | Two deep visits; total length 4log p+C | Visit cost sum ≥log p; two O(1) errors add to O(1), not a forbidden visit | Pass | Recomputed |
| Worked signed reconstruction | p=13,a=5; primitive reflection | a²≡−1, positive uv≥12; reflected determinant absolute value 1 | Pass | Recomputed |
| Worked multiplicity scales | δ₃=.01,δ₁=.001; fixed B satisfying range | −2δ₃+3δ₁=−.017; overlap exponent −1+(B+2)δ₃<0 | Pass | Recomputed |
| Worked unrestricted diagonal counterexample | p=7 and101 | |G₀|/(2K)=168/8=21;515100/161500=303/95 | Pass | Recomputed |
| Worked projectionwise area | Degrees 1 and2 | Total area 3A; first projection area A, second 2A | Pass | Recomputed |
| Worked shell order of choices | A=3,B=3 | 2B=6>A+1=4; exponent (A−2B)δ=−3δ | Pass | Recomputed |
| Worked overlap partition | N(z)=2 and3 | Low region contributes at most 2vol; value 3 enters signed thin tube; no disjointness assumption | Pass | Recomputed |
| Worked Green identity | Coordinate line at t=1,2 | V/(4π)=h′(s_t)=.271540,1.381098; pole boundary product v·log radius→0 | Pass | Correct current owner |
| Worked coarea bridge | t=1,2 | h(s_t)=.240229,.867562; ds_t/dt=1.701836,.551441; h′=sinh²(t/2) | Pass | Recomputed |
| Worked false monotonicity | a=1/2,q=1/4,3/4 | V/a=6/5 and14/13, decreasing | Pass | Retain weaker point-ball estimate |
| Worked linear descent | χ=−1,p=5 | f[p]=−f[p] implies invertible map equals its negative, impossible since 2≠0 | Pass | Recomputed |
| Worked field/surface passage | Genus one, threshold M₃; one contraction | Gonality 2<3; Picard rank drops by 1 and square −2 can become −1 | Pass | Recomputed |

The locally compact integration inputs exclude infinite-dimensional, non-Hausdorff and non-second-countable manifolds. The field inputs exclude the zero ring and mixed/equal-positive characteristic from the headline theorems. The p=2,3 subgroup examples remain admitted in their separately stated group theorem. All divisions in the changed statements have nonzero denominators: |G| in characteristic zero, sinh d only for d>0, 4π²>0, and the Legendre denominator t²(1−t)² on t≠0,1 (values 4 and 36 at t=2 and 3). No total-function junk value is used to stand for geometric gonality or a ramified quotient chart.

## Required checks and exact outcomes

1. `lake env lean` applied to the absolute tool path corresponding to `packages/GeometricFreyMazur/Suggested.lean`, from the content checkout: **exit 0**. Exact diagnostics after replacing the tool-only path by its repository-relative spelling:

   ```text
   packages/GeometricFreyMazur/Suggested.lean:54:8: warning: declaration uses `sorry`
   packages/GeometricFreyMazur/Suggested.lean:75:8: warning: declaration uses `sorry`
   ```

   There were no errors or other warnings. The imported Tau Ceti module's object file was present, so no targeted build was required. Suggested.lean is unchanged: one `import Mathlib`, one used Tau Ceti module, one real definition and two admitted headline theorems, with no options or padding.

2. A scratch copy of the same file, followed by `#check @TauCetiRoadmap.GeometricFreyMazur.gonality`, `#check @TauCetiRoadmap.GeometricFreyMazur.full_monodromy` and `#check @TauCetiRoadmap.GeometricFreyMazur.geometric_frey_mazur`, elaborated separately with `lake env lean`: **exit 0**, the same two `sorry` warnings and three printed signatures. All three were compared with Conventions and §§9.6, 9.8. No binders disappeared. The gonality definition has both field instances and its algebra; full monodromy retains the closed characteristic-zero constant field, field tower, FunctionField, gonality, ellipticity, nonconstant j, prime and both bounds. Frey–Mazur retains both ellipticity/nonconstant-j assumptions, actual equivariance and ∃M before fields. No signature edit was necessary.

3. Prescribed `gate --depcheck` with `--name GeometricFreyMazur`, the supplied order and `--movable`: **exit 0**, output:

   ```text
   depcheck: 51 roadmaps, 587 edges, 0 problem(s)
   ```

   No UPWARD, CYCLE or moved line appeared.

4. `roadmaps resolve packages/GeometricFreyMazur/README.md`: **exit 0**. Cross-roadmap citations found nowhere: **None**. Lean names found nowhere: **None**. The external pinned-name limitation in its output is addressed by the direct pin audit above.

5. Plan structural comparison: **pass**. Removing the top-level `gaps` key from both parsed versions gives equal JSON objects. One gap was added, one narrowed, and the other nine gap records are identical. All eleven gap needs match their README “What … must provide” lines exactly. The two hyperbolic-volume contracts are unchanged.

6. Final `git diff --check`: **exit 0**, no output. Allowed-file inspection: **pass**; only `packages/GeometricFreyMazur/README.md`, the top-level gaps of `packages/GeometricFreyMazur/design/plan.json`, and this requested report changed. All four finding sections are present. The adversarial table has 180 statement rows. No separate gate failures were listed in the brief; the changes above respond to F01–F04. No Lean process remains running.

## Maintainer notes

F02 remains a supplier obligation requiring action outside this package: ComplexComparisonPartII C−1.3 must acquire the recorded ramified finite-group comparison. The local attribution, gap record and consumers are repaired. Its status is not a request to implement the theorem or change merge order inside this job. The narrowed ComplexKahlerGeometry transport contract retains all branch, finite-map, multiplicity, sublevel and cusp needs.

No headline, native declaration name or downstream signature changed. Metadata and the four-key sources manifest are unchanged. The only changed design data are the permitted top-level gap entries. No other package, tooling, merge-order file, library checkout or pull-request text was edited. Nothing was committed or pushed. These computations and elaboration are repair evidence, not independent acceptance of the roadmap.
