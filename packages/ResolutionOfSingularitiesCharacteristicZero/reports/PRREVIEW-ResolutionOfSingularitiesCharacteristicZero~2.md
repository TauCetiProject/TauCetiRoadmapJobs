# Review of ResolutionOfSingularitiesCharacteristicZero (pull request #1199 at c537be5)

**Verdict:** needs changes

## R01 (P2) — Require the maximal-contact pair to belong to the presentation

**Location:** `TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:277`, §2.1: “Suppose an integral-mark pair `(f*,d)` has `ord_a(f*)=d`”.

**Claim:** The derivative conditions are imposed on a pair not explicitly required to lie in F. With that quantification, adjoining its order-one derivative need not preserve even the original cosupport. The reference to normalized or inductively transformed presentations does not supply the missing relation between F and the selected pair.

**Witness:** On A² at0 with empty boundary, take F={(x,1)}, but choose (f*,d)=(y,1). Then µ(F)=ord(y)=1 and ∂y/∂y=1, while V(x)≠V(x,y).

**Repair:** Require `(f*,d) ∈ F`, with integral positive d and order exactly d, before the derivative hypothesis; have §2.3 inherit that corrected hypothesis. BM1997 line 2020 explicitly chooses a member of F; lines 2021–2026 then give the transverse-coordinate hypothesis and equivalence. Add the displayed unrelated-pair example as a negative-control Check. Tested repair: (y,1) is excluded from F={(x,1)}; choosing its member (x,1) gives z=x and leaves V(x) unchanged. This retains the source's generality.

## R02 (P3) — Remove two remaining undeclared API spellings

**Location:** `TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:506`: “Define `derivativeIdeal I`”; and `README.md:953`: “construct the shared predicate `regularMorphism f`”.

**Claim:** These code spans still present this roadmap's own API names although neither is a declaration of Suggested.lean. The prescribed form reserves those names for kept Lean declarations and uses prose for README-only targets. This is the remaining portion of previous R03.

**Witness:** Suggested.lean has exactly four declarations: formalDivision, localQuotientHilbertSamuel, hsLexStabilization and exists_resolution. It has zero declarations named derivativeIdeal or regularMorphism.

**Repair:** Write “Define the derivative ideal of I” and “construct the shared predicate that f is a regular morphism”. Keep their mathematics, API facts and Checks in the README; do not add API padding to Suggested.lean. On the existing cubic test the derivative ideal remains (x²); on the dual-number fibre test the regular-morphism predicate remains false. This spelling change removes both unsupported name claims without changing either test.

## R03 (P3) — Correct the pinned effective-Cartier inventory

**Location:** `TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/Suggested.lean:19`–22 groups “effective Cartier ideal-sheaf interfaces” among the missing interfaces; `README.md:27` describes only the integral-scheme Cartier-divisor API.

**Claim:** The pin also contains the general effective-Cartier ideal-sheaf predicate, including affine local equations and flat pullback, without integrality, reducedness or Noetherianity. It should be cited as the carrier for §6.3. The scheme blowup construction remains a separate missing interface.

**Witness:** `TauCeti/AlgebraicGeometry/EffectiveCartierDivisor/Basic.lean:50` defines `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier` on every scheme; lines90,99,106,166 supply the unit ideal, affine equations, restriction comparison and flat pullback. This file exists at pin a91d3aa.

**Repair:** Add that predicate and the consumed local-equation API to the Tau Ceti supplier contract; correct the module docstring's missing-carrier explanation. Use the existing predicate on the native ideal-sheaf carrier. Retain the full blowup-specific Cartier-separation theorem in the README until its blowup carrier is available. Tested on A=ℚ[e,t]/(e²): (t) is effective Cartier despite A being nonreduced, while (e) is not, and the unit ideal is the empty effective divisor. No weakened replacement headline is requested.

## Verified sound

This full review covers both requested files at c537be53db13cc934c044903a7211837c9a83428, including unchanged passages. The previous findings were reconciled first, followed by the complete source, mathematics, ownership, supplier and signature passes. A helper located legal source texts only; the source passages used here were read and the mathematical judgments made by this reviewer. No pull-request file was changed.

**Previous findings, one by one:**

| Previous finding | Current passage | Status and recomputed witness |
| --- | --- | --- |
| R01, exceptional-axis test set | README:218 requires “the resulting exceptional hypersurface in that space is still contained, as a germ, in the transformed cosupport”. | Repaired. For (x²,1), β=1 gives tv² with V(t) contained; after α=1 the ideal is v² and V(t) is not contained. The inequality values1 and0 now agree with membership. |
| R02, reduced-only endpoints | README:1092 says “for every generically reduced noetherian quasi-excellent ℚ-scheme X”; README:1144 includes generically reduced finite-type schemes. Suggested.lean:81 uses density of the smooth locus. | Repaired. The embedded-nilpotent line ℚ[x,e]/(e²,xe) is included: blowup charts ℚ[x] and∅, dense preserved D(x). Dual numbers are excluded; the empty scheme is included. |
| R03, API/Check spellings and process link | README:293 says “Prove the following API facts”; README:33 now links GroebnerGeometry G4 on main. | Partly repaired. API bullets and Checks are predominantly prose and the pull-request link is gone. The two remaining own-name code spans are R02 above. |
| R04, namespace and layer form | Suggested.lean:36 has `namespace TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero`; lines38,70 have Layer2 and Layer5 comments. | Repaired. All4 elaborated names have the prescribed namespace and the module title uses “target signatures”. |

The repository's normative README and CONTRIBUTING were read, together with StableReduction and RigidAnalyticGeometry on main for shape and ownership. The worker's gate at this head passes every check: build, dependency scan, imports, sorry-data, option overrides, stray files, outside-folder changes and all text/form checks report zero. Independent direct elaboration of the original Suggested.lean passed with exactly3 `sorry` warnings. The outside-folder diff is empty. No copied source passage, executable algorithm, sorry'd data, arbitrary-Prop stand-in, whole-roadmap replanning or scope shortcut was identified. The two residual spelling issues escaped the scanner and are recorded above.

The required dependency command, using the given merge order and main content, returned:

```text
depcheck: 205 roadmaps, 1445 edges, 0 problem(s)
```

It emitted no UPWARD, CYCLE or moved line. Every `*Needs:*` line and supplier paragraph was read. The local/formal route distinguishes special formal excellence, the restricted part of §7.3 algebraization, weak resolution, completion permanence and strong functorial resolution; its §7.2/§7.3 cross-reference does not use strong resolution to prove itself. There are no declared gaps.

**Seeded source sample: 15 targets.** All15 source texts were legally readable. Fourteen comparisons support the statements as written; §2.1 has the missing hypothesis in R01, inherited wherever its hypothesis is used. No README locator is explicitly flagged unverified. Published BM1997 pagination was checked. Włodarczyk's arXiv v1 and January2010 author version were distinguished; Temkin2011 is the expressly cited version2. Temkin2008 theorem labels were checked in its preprint, without assuming published and preprint page numbers coincide.

| Sampled target | Source text and exact locator | Comparison |
| --- | --- | --- |
| 1.4 Marked ideal | BM1997 line 1822, §§4.1–4.2, p.241; line 2210, Construction4.23, p.247 | Weighted presentations, positive marks and common-mark powers support the stated carrier and rescaling. Zero functions and empty coefficient families are retained. |
| 1.10 Affine order and marked sums | BM1997 line 1822 and line 2210; Stacks Algebra line 11913, tag00NO | Regular-local graded polynomial comparison includes mixed characteristic; degree-zero coefficients live in the residue field, not in a fictitious coefficient-field section. Product/power order and common-mark sum follow. |
| 2.1 Maximal contact | BM1997 line 2010, Proposition4.12/Remark4.13, p.244; line 2482, proof pp.251–252 | The source requires the pair to be a member of F. The README omits this relation: R01. Boundary transversality and characteristic zero are otherwise retained. |
| 2.3 Coefficient equivalence | BM1997 line 2153, Proposition4.19/Remark4.20, p.246; line 2586, proof p.253 | Weighted coefficients and full test equivalence agree under the corrected maximal-contact hypotheses. Exceptional tests use pure pullback, not controlled division. |
| 2.6 formalDivision | BM1997 line 1665, Theorem3.17 and Remark3.18, p.238; line 1687, Corollary3.19, pp.238–239 | Arbitrary field, finite variables, minimum graded-lex exponent, ordered disjoint quotient supports, unique remainder agree. hα excludes zero series F_i=0. |
| 2.12 Samuel transform | BM1997 line 3429, Theorems7.20–7.21, pp.268–269; line 3501, Corollary7.24; line 3536, proof | Original generator orders, marked division, constant-Hilbert–Samuel centre and equality-locus conditions are retained; comparison is not an unconditional strict-transform equality. |
| 2.13 Semicoherent presentation | BM1997 line 2649, Definition6.4/Proposition6.5, pp.254–255; line 2036, Remark4.14; line 3920, Theorem9.6, pp.278–279 | One common regular presentation after shrinking, its germ restrictions and transform comparisons agree. Unrelated formal coefficients at separate points are not enough. |
| 3.2 Invariant word | BM1997 line 308, Remarks1.3, pp.213–214; line 2951, Definition6.15, p.259; line 4080, Remark9.15, pp.282–283; BMT2009 line 594, §6.1 | Local-ring-length normalization, old counters, terminal0/∞ and intrinsic codimension normalization agree. The total lex scheduling extension is separately supported by BMT. |
| 3.4 Invariant properties | BM1997 line 716, Theorem1.14, p.220; line 3023, end of §6, pp.259–260; BMT2009 line 594, §6.1 | Semicontinuity, bounded denominators, stabilization and centre properties retain the history and fixed-prefix conditions. Bare terminal0 need not drop in every monomial step. |
| 3.5 Monomial data | BM1997 line 738, Theorem1.14(4), p.220; line 3045, end of §6, p.260 | Inclusion-minimal threshold subsets and label tie-breaking agree; arbitrary threshold supersets would choose the wrong centre. |
| 5.3 Resolved locus | BM1997 line 4548, §12 hypotheses, Theorem12.4/Lemma12.5/Remark12.6, pp.292–293 | All boundary-subset intersections and expected dimensions are needed; testing each divisor separately misses the tangency/triple-intersection controls. |
| 5.4 Preservation of resolved points | BM1997 line 4538, Theorem12.2, p.292; line 4573, Theorem12.4 and proof, pp.293–295 | The centres avoid the resolved locus and the cleanup handles the total boundary. Already smooth X alone does not imply the pair is resolved. |
| 5.5 Local-isomorphism resolution | BM1997 line 4745, Remark13.1/Theorem13.2, pp.296–298 | Local embedding comparison and local-isomorphism compatibility agree. Generic-reduced extension is supported separately by Temkin2011 line 90, Theorem1.2.1, p.3. |
| 6.1 Projective closure | Stacks Morphisms line 4633, tag01W8; line 4729, tag01WA; line 396, §01R5 and tag01R8 | Quasi-projective immersion, projective closure and quasi-compact scheme-theoretic image give the stated preserved open. Taking the reduction uses the reduced input. |
| 6.3 Cartier separation | BoxerPilloni line 2171, Proposition-construction4.1.11 and proof, p.42 | Arbitrary schemes and two effective Cartier inputs; Rees sections generate O(1) with no common zero. Exceptional factor, residual disjointness and cross-sum identity agree. |

Additional source checks include the repaired §1.9 test set (BM1997 line 2362, proof of Proposition4.8/Lemma5.2, pp.249–250), Hilbert–Samuel stabilization (BM1989 line 785, §5.2/Theorem5.2.1, pp.820–821; BMT2009 line 594, §6.1), homogenization and companions (Wlodarczyk2005 v1 line 448 and January2010 line 918), the SNC/smooth distinction (BM2011 line 639, Definition3.3/Theorem3.4, pp.16–17), principal-ideal algebraization (Elkik line 1070, §III Theorem7, p.582), thick-fibre comparisons (Temkin2011 line 987 and line 1128, Propositions3.3.1/3.3.5), the generically reduced endpoint (Temkin2011 line 90, Theorem1.2.1), reduced-support cleanup (Temkin2008 line 1262, Lemma4.2.4) and affinoid excellence (Conrad line 160, §1.1). The three source issues below are corrected in the roadmap's mathematical formulations rather than copied into them.

**Adversarial calculations.** The following 134 rows cover every numbered subsection, their additional constructions/API groups, the sampled targets, all headline families and the targets touched by findings. They record computations, not proofs of the general theorems. “Pass” means the displayed tests agree with the statement; a row may combine related API claims that use the same calculation. Polynomial examples are over ℚ unless another field is named. Characteristic-p examples test the stated characteristic-zero restrictions. Labels inherited from earlier API terminology identify README mathematics and do not assert that those names occur in Suggested.lean.

| Statement/convention | Instances tried | Values on the two sides / positive and negative controls | Result; change |
| --- | --- | --- | --- |
| Generically reduced, noetherian and componentwise birational conventions | Empty scheme; node xy=0; dual numbers | Empty identity has empty dense open and empty inverse image. Node normalization retains two branches. Dual numbers have one nonreduced generic point and empty regular locus, which is not dense. | Pass; current generic-reduced hypothesis excludes the last case. |
| Regular versus smooth, field convention | ℚ; imperfect k=𝔽₂(s), L=k(s^(1/2)) | ℚ is regular and smooth over itself. L is a field, but L⊗k L has a nonzero square-zero element, so regular need not mean smooth over k. | Pass; characteristic zero makes the relevant fields perfect. |
| Marked steps and empty steps | Unit centre; Cartier centre (x), mark2 on x³ | Blowup of unit ideal is identity with J′=J. Cartier-centre blowup is identity but J′=(x), so the marked step changes. | Pass. |
| 1.1 regularCoordinates | A¹ at (x²+1); cusp at 0 | Smooth local completion is ℚ(i)[[t]] with one parameter and residue degree2. Cusp embedding dimension2 exceeds dimension1, so it is not a smooth chart. | Pass. |
| 1.1 derivative and chart compatibility | f=z²−x³, z=xw | Total f=x²(w²−x); ∂f/∂z=2xw; ∂(w²−x)/∂w=2w, with the expected x factor. | Pass. |
| 1.2 stalkIdeal affine/localization | I=(x²,y³) at origin and on D(x) | Origin stalk order=min(2,3)=2; on D(x), I=O and order0. Both descriptions use the localized ideal. | Pass. |
| 1.2 idealOrder / zero, unit, finite generators | 0, O, (x³,y⁵); empty generators | Orders ∞,0,3,∞ respectively; minimum of generator orders is 3, whereas a sum would be8. | Pass. |
| 1.3 sncBoundary / coordinate API | Two axes; y=0 and y=x²; irreducible nodal component | Axes gradients have rank2. Tangent pair gradients have rank1. Node component is singular at its crossing. Only the axes give two smooth labelled coordinate components. | Pass. |
| 1.3 empty boundary/restriction | E={x=0,y=0}, restrict D(x) | Label x disappears and label y survives; at D(xy) there are zero incident labels and boundary equation1. | Pass. |
| 1.4 markedIdeal/cosupport | (x²,2),(x²,3),0,O | At 0: 2≥2 true, 2≥3 false; zero passes every positive mark and unit passes none. | Pass. |
| 1.4 weighted common mark | (x²,2),(y³,3), D=6 | Powered ideal=(x⁶,y⁶), mark6; both original and common-mark cosupports are {0}. Unpowered generators at mark6 would exclude 0. | Pass. |
| 1.5 permissibleCentre / idealPower | I=(x²,y²), d=2, C=0, E={x=0}; (x,2) | I⊆(x,y)², origin order2 and coordinate centre; (x)⊄(x,y)² and order1. | Pass. |
| 1.5 SNC after blowup | Blow up origin with two axes | In x-chart y=xv, old surviving axis v=0 and new x=0 have gradient rank2; old divisor x=0 is absent from this chart. | Pass. |
| 1.6 controlledTransform factor | (z²−x³,2), x-chart | x²(w²−x)=L²J′, with L=(x) and J′=(w²−x). At exceptional origin J′ has order1, so mark2 cosupport is empty. | Pass. |
| 1.6 strict/weak/controlled distinction | (x³,2) on A²; blow up origin | x-chart: total=(x³), controlled=(x), strict=O, weak=O (generic centre order3). | Pass. |
| 1.6 Cartier identity and flat base change | Same ideal on A¹; extend ℚ→ℂ | Cartier transform (x³)/(x²)=(x); extending scalars gives (x) on both paths. | Pass. |
| 1.7 testEquivalence / rescaling | (x²,2) and (x⁴,4) | One Cartier test gives unit on each side; common-mark powers commute with division, x⁴/x⁴=(x²/x²)²=1. | Pass. |
| 1.7 initial cosupport is insufficient | (x²,1) and (x³,1) | Initially both cosupports {0}; after two Cartier divisions ideals are O and (x), giving ∅ and {0}. | Pass. |
| 1.7 type-(iii) transform | x²y, x=t,y=tv | Pure pullback is t³v; dividing by mark2 would give tv and is the wrong test operation. | Pass. |
| 1.7 equivalence relations/history | Identity test and a power-rescaled pair | Empty sequence preserves {0}; reversed equivalence has the same cosupport; composing the power comparisons gives (x,1)∼(x⁴,4). | Pass; restricted exceptional history must remain attached. |
| 1.8 normalizedOrders/common mark | (x²y³,2), E={x=0} | µ=5/2; µx=2/2=1; ν=5/2−1=3/2. | Pass. |
| 1.8 residual nonnegativity/terminal convention | Same pair with both axes; zero/empty family | ν=5/2−1−3/2=0; zero/empty gives ν=∞ directly, not ∞−∞. | Pass. |
| 1.9 ordersInvariant | (x²y³,2) and (x⁴y⁶,4), fixed codimension | Both give (µ,µx,ν)=(5/2,1,3/2); rescaling changes no recovered ratio. | Pass for theorem. |
| 1.9 test set and recovery inequality | (x²,1), β=1, α=0 or1 | After axis blowup ideal tv², V(t) is in cosupport and inequality value1. Next controlled ideal v² has order2 at origin, but V(t) is not in V(v), and inequality value0. Thus (1,0)∈S and (1,1)∉S. | Pass; previous R01 repaired. |
| 1.10 associated graded | Field k; ℤ_(p), p=2 or3 | Field has gr=k in degree0. DVR degree-n quotient (pⁿ)/(pⁿ⁺¹) is one-dimensional over 𝔽p and Tⁿ maps to [pⁿ]. No section 𝔽p→ℤ_(p) exists. | Pass. |
| 1.10 order product/power | I=(x²,y³), J=(y), r=2 | ord(I)=2, ord(J)=1, ord(IJ)=3=2+1; ord(I²)=4=2·2. | Pass. |
| 1.10 zero product and regularity control | Zero ideal; dual numbers m=(e) | ord(0·J)=∞=∞+ord(J); ord(m)=1 but ord(m²)=∞≠2. Regular-local hypothesis excludes second case. | Pass. |
| 1.10 order supremum/marked sum | I=(y²),J=(x³), a=b=2 | ord(I+J)=2=min(2,3); marked sum ideal=(y⁴,x⁶), mark4; cosupport intersection is {0}. | Pass. |
| 1.10 affine cosupport/rescaling | (m,2) versus (m²,4) in dual numbers | Cosupports ∅ and whole point respectively, so the regular-local hypothesis is needed for rescaling. | Pass. |
| 1.10 Taylor/local-order comparisons | ((x−a)³,(y−b)⁵); x^p over 𝔽p | Generator minimum3 equals localized ideal order3. At0, x^p has order p on both sides despite derivative0. Empty family has order∞. | Pass. |
| 2.1 maximalContact | (z²+x³,2); (y²−x⁵,2); characteristic2 x² | Contact derivative2z has order1; for second example x-chart gives v²−x³ with order2 outside strict transform of V(x). In characteristic2 derivative of x² is0. | Pass on these genuine member pairs; unrelated pairs require R01, and characteristic2 is excluded. |
| 2.2 coefficientPresentation/weights | z³+x⁴z+y⁵, mark3 | Nonzero pairs (y⁵,3),(x⁴,2); D=6 gives (y¹⁰,x¹²), not (y⁵,x⁴) at mark6. | Pass. |
| 2.2 coefficient zero/empty cases | z^d, mark d | Every q<d coefficient is0; coefficient ideal0 and cosupport full contact space. | Pass. |
| 2.2–2.3 coefficient transform | z²+x³, x-chart z=xw | Original c0=x³, weight2; x⁻²c0=x; transformed f=w²+x has coefficient x, weight2. Both mark2 cosupports upstairs are empty. | Pass. |
| 2.3 exceptional coefficient pullback | f=z²+x²y², boundary x,y, x=t,y=tv | f′=z²+t⁴v², c′0=t⁴v²=π*c0; no division. Original/contact cosupports agree along z=0. | Pass. |
| 2.4 residualPresentation/guard | (x²(x+y),3), E=x | (µ,µx,ν)=(1,2/3,1/3); residual pairs (x+y,1),(x²,2) intersect at0. Without guard, entire line x+y=0 remains. | Pass. |
| 2.4 residual normalized/terminal cases | (x²y³,2), E=x or both axes | E=x gives (y³,3) of normalized order1 and no guard; both axes give ν=0 and monomial (x²y³,2). | Pass. |
| 2.5 initialDiagram/upward/vertices | I=(x²,xy), zero and unit | Vertices (2,0),(1,1); (2,1) belongs via either cone. Zero diagram ∅; unit diagram ℕ². | Pass. |
| 2.5 exponent convention | x+y²; x+y | Minimum graded-lex exponents (1,0) and (0,1); pure lex would give (0,2) for x+y². | Pass. |
| 2.6 formalDivision (Lean headline) | F=(x²,xy), G=x³+xy²+y³ | Quotients (x,y), remainder y³; x·x²+y·xy+y³=G. Second translated exponent (1,2) avoids the first cone; remainder exponent (0,3) avoids both. | Pass. |
| 2.6 uniqueness/empty/unit controls | m=0; n=0,m=1,F=2,G=3; duplicate F=(x,x) | Empty family gives R=G uniquely. No-variable division gives Q=3/2,R=0. Duplicate second cone is empty, forcing Q₂=0. | Pass; nonzero-series hypothesis excludes division by0. |
| 2.6 zero remainder criterion | I=(x²,xy), G=xy² or y³ | First remainder0 and G∈I; second remainder y³≠0 and G∉I. | Pass in both directions. |
| 2.7 localQuotientHilbertSamuel (Lean definition) | A=k[[x]], I=(x²), O,0 | Values for ℓ=0,1,2: (1,2,2), (0,0,0), (1,2,3). All are finite lengths in ℕ∞. | Pass. |
| 2.7 residue-field normalization | Degree-two point over ℚ | Local quotient length1, ground-field dimension2; definition chooses1. | Pass. |
| 2.7 completion and diagram counts | k[x]_(x)/(x²) and k[[x]]/(x²) | Both give (1,2,2,…); outside diagram {2,3,…}, counts up to degrees0,1,2 are1,2,2. | Pass. |
| 2.7 pointwise and lex order | Five axes and six plane lines | Haxes(1)=6>3=Hlines(1), but Haxes(11)=56<57=Hlines(11); lex chooses axes, pointwise incomparable. | Pass. |
| 2.8 hsStabilization and hsLexStabilization (Lean headline) | I_j=(x^max(3−j,1)) | H₀=(1,2,3,3,…), H₁=(1,2,2,…), H₂=(1,1,1,…)=H₃; stabilization index2 in both orders. | Pass. |
| 2.8 realizability/zero variables | Step functions 1_{ℓ≥j}; K with n=0 | Step functions strictly lex decrease but for j>0 have H(0)=0 and later value1, impossible for a local quotient. For n=0 the only H are constant1 and0. | Pass. |
| 2.9 finiteDegree | D=∅; D=ℕ; D=a+ℕ, H=cY^a | Empty diagram contributes every monomial. Unit diagram degree0 spans iff c unit. For ℓ≥a, family {cY^ℓ} spans iff c unit at every ℓ. | Pass; threshold not inferred from vertex degree alone. |
| 2.10 jet matrix/minors | f=x²(x−1), distinguished0, k=0,1 | B₀=(f), rank0; B₁ columns (f,f′),(0,f), rank0 at0. I_S,0=(f), I_S,1=(f,f′)=(x). | Pass. |
| 2.10 jet vanishing/generator independence | At x=1; replace f by generators f,2f | H₀(1)=2 but H₁(1)=1, so rank condition excludes1. Added column multiple does not change minors' ideal (x). | Pass. |
| 2.10 zero/unit/monotonicity | f=0, f=1; preceding f | Zero gives matrix0 and ideal0. Unit gives full rank and ideal0 of oversized minors. (f)⊆(x) in preceding example. | Pass. |
| 2.11 samuelPresentationIdentity | I=(z²); I=(x,y) | z² has order2 and essential derivative2z with Jacobian2; jet ideal at k=1 is(z), also the contact equation ideal. For (x,y), Jacobian identity, H=(1,1,…) and stratum ideal(x,y). | Pass. |
| 2.11 abstract diagram/incorrect assignment | I=(x+y); f=x² assigned order1 | Division with vertex(1,0) leaves K[[y]], while actual graded-lex vertex is(0,1); both quotient counts ℓ+1. x² has order2, so assigned order1 fails hypotheses. | Pass. |
| 2.12 samuelTransform | Cusp y²=x³ blown up at0 | Hbefore(ℓ)=2ℓ+1; x-chart strict transform v²=x is smooth with Hafter(ℓ)=ℓ+1. At ℓ=1: 2<3, and controlled generator order1<2. | Pass. |
| 2.13 semicoherentPresentation/restriction | (x²/(1−x),2) on D(1−x) | Cosupport {0}; Cartier transform1/(1−x) is a unit, giving empty cosupport. Same coefficients are regular on the one common open. | Pass. |
| 2.13 nonrational contact | z²+(x²+1)³ at (z,x²+1) | Coefficient pair ((x²+1)³,2); order3≥2 at the degree-two point, order0 elsewhere on contact line. | Pass. |
| 2.14 hsSemicoherence | Cusp at origin and smooth points | Horigin=(1,3,5,…), Hsmooth=(1,2,3,…); larger-value locus is closed {0}, with coefficient presentation (x³,2). | Pass. |
| 2.15 derivativeIdeal / zero,unit,cubic | 0,O,(x³) over ℚ | D(0)=0, D(O)=O, D(x³)=(x²); D²(x³)=(x) has order1. | Pass. |
| 2.15 derivative criterion negative controls | x² over 𝔽₂; x³ over 𝔽₃; x²+y³ over 𝔽₂ | Derivative ideals remain (x²),(x³), and become (x²,y²), respectively; the last is not the original ideal. | Pass. |
| 3.1 exceptionalHistory/disjoint blocks | Empty boundary; births1,2, prefix born1 | Empty year0 counters0. Old block {H₁}, counter1; H₂ remains residual. If prefix born2, old block {H₁,H₂}, counter2. Earlier blocks are removed. | Pass. |
| 3.1 history transform/locality | First blowup preserving initial entry | New exceptional born1 is absent from E¹ born0: s₁=0, although total boundary has one component. On an open missing it, both counts remain0. | Pass. |
| 3.2 invariantWord comparison/prefix/terminal | (2,0;5/2,0;1,0;∞) and (2,0;3/2,1;1,0;∞) | Equal first prefix; 5/2>3/2 decides before counters. For a fixed prefix, terminal0<∞. | Pass. |
| 3.3 recursiveInvariant | Smooth empty-boundary X; cusp; x₃²−x₁²x₂³ | Smooth word (H,0;∞); cusp (2,0;3/2,0;∞); third hypersurface (2,0;5/2,0;1,0;∞). | Pass. |
| 3.3 codimension normalization | Smooth hypersurface in A² versus same curve in A³ | Minimal embedding dimension1 in both; normalized word retains smooth H(ℓ)=ℓ+1, s₁=0 and terminal∞, independent of the ambient extra equation. | Pass. |
| 3.4 invariantProperties/nonincrease | Cusp; fixed marks e₁=2 | Cusp first order drops2→1 after blowup. Bound2! permits3/2 since2!·3/2=3, but excludes1/3 since2/3 is not integral. | Pass. |
| 3.4 denominator iteration/stabilization | e₁=2, ν₂=3/2, ν₃=5/6 | e₂=max(2,3)=3; 3!·5/6=5; e₃=max(6,5)=6. Sequence1,1/2,1/3,… violates the fixed-prefix bound. | Pass. |
| 3.4 strata/terminal branches | Zero coefficient; terminal monomial xy, mark2 | Zero gives smooth contact stratum. Weights(1/2,1/2) give stratum V(x,y), exactly its boundary intersection. | Pass. |
| 3.5 monomialData/minimality | Weights(1/2,1/2),(1,1),(3/2) | First has only minimal pair, new weight0; second has two minimal singletons, pair not minimal; third has singleton, new weight1/2. | Pass. |
| 3.5 extendedInvariant | Two axes with labels H₁ before H₂ | Incidence vectors (1,0)>(0,1); selected z₂-axis is smooth. Union of both axes has tangent dimension2 but dimension1 at0. | Pass. |
| 3.5 selection/restriction | X=C₅⊔C₄⊔six-line curve; U=C₄⊔six-line curve | At degree1 values6,5,3 select o₅ first; on U step empty, then o₄. At degree11 values56,45,57 do not change lex order. | Pass. |
| 3.6 monomialDecrease | Weights(3/4,3/4), mark4 | New pivot weight1/2<3/4; mass3/2→5/4 while terminal0 may remain0. | Pass. |
| 3.6 infinity decrease | Pure power z^d on contact V(z), centre V(z) | Contact supporting space has strict transform∅ after blowing up itself; transformed coefficient cosupport∅. | Pass; not an assertion that every monomial step drops the bare word. |
| 3.7 finitePermissibleResolutionExists | Unit; smooth embedded X; zero on one component | Unit and smooth empty-boundary X need zero steps. Identically zero component keeps total ideal0 under birational pullback, which cannot equal an invertible nonzero ideal. | Pass; generic-nonzero condition used. |
| 4.1 residual normalization/stratum comparison | (x³y,2) with E=x | µ=2,µx=3/2,ν=1/2; residual (y,1),(x³,1) has {0}, original cosupport V(x). Guarded stratum is properly smaller. | Pass. |
| 4.1 boundaryMonomialPart/nonmonomialPart | I=x³y², E=x; E=x,y; E=∅ | Factors (x³,y²), (x³y²,1), (1,x³y²), respectively; each product recovers I and residual has no labelled divisor factor. | Pass. |
| 4.1 companionIdeal branches/maximalOrder | I=x³y², E=x, b=4 or2 | c=2; b4 companion=(y⁴,x⁶), mark4, maximum order4; b2 companion=(y²,2), without a zero mark. | Pass. |
| 4.1 companion order drop | I=x³y², b4; blow up origin | x-chart controlled I=xv², residual v², order2 but total order3<4, so outside original transformed cosupport; y-chart I=yu³ has residual u³ only if u is not labelled, but u=0 is old x-boundary, so residual is unit. New maximum on cosupport is0. | Pass; boundary labels are essential. |
| 4.1 localUnit/monomialRestrictionComparison | I=x²(x−1), b2, E=x | Cosupport {0}, c=0, N=x−1 nonunit globally; on U=D(x−1), N=O. Cartier transform x−1 has order1 at1 and0 elsewhere, so empty mark2 cosupport globally. | Pass; source's global shortcut is avoided. |
| 4.1 homogenization/mark-one | I=y²−x³, µ2; µ1 | T=(y,x²); H=(y²,x³,x²y). For µ1, H=I. Cusp H strictly contains I. | Pass. |
| 4.1 homogenize_equiv/transform | Same cusp, x-chart y=xv | I′=v²−x; H′=(v²,x,xv)=(v²,x). Both mark2 cosupports empty. Each product term's exceptional exponent is (2−i)+i=2. | Pass. |
| 4.1 tangentTransport/étale gluing | u=y,v=y+x²,E=x; v=0 control | Substitution keeps x and H, maps y² to y²+2x²y+x⁴; original I changes. v=0 has order∞, so cannot be an invertible coordinate. | Pass. |
| 4.1 smooth homogenization pullback | Add independent t to cusp | D(I) remains (y,x²), since ∂t f=0; H before/after extension is (y²,x³,x²y). | Pass. |
| 4.1 birth blocks/reset | Prefix first drops in year2, later H₃ born3 | Surviving H₁,H₂ enter the new block; H₃ does not. Removing previous blocks prevents count2 for one divisor. | Pass. |
| 4.1 monomialComponents/mass | No labels; singleton weight1; weights(1,1/4) | Empty gives no threshold subset and mass0. Singleton pivot changes1→0. Pair in third case is nonminimal because first singleton already sums to1. | Pass. |
| 5.1 principalization | (x³) on A¹; zero ideal | Cartier blowup gives total x³, weak unit, reduced support {0}; zero total stays0 and fails invertibility. | Pass. |
| 5.2 embeddedResolution | Node xy=0; nonreduced double line | Node blowup separates two smooth branches. A double line cannot be smooth on its nonempty dense open; the stated nonreduced variant only asks for smooth reduction and constant H. | Pass. |
| 5.3 resolvedLocus/subset criterion/open restriction | X={z=xy}, E={z=0} | Restricted divisor xy has embedding dimension2 and expected dimension1 at0, so unresolved; on D(x) its equation y has independent differential and is resolved. | Pass. |
| 5.4 preserveResolvedPoints | X:y=x²,E:y=0 | Restricted boundary x² has order2. After first x-chart blowup X′:v=x, old E′:v=0, new E:x=0 give coincident boundary points on X′, requiring further cleanup. Away from0 the pair is unchanged. | Pass. |
| 5.5 localIsomorphismResolution (Lean headline) | Smooth X, including doubled-origin line; nodal curve | Smooth examples admit identity: proper as a morphism, surjective, smooth source, U=X dense. Node normalization preserves both punctured branches and has dense inverse image. | Pass; no absolute separatedness is smuggled in. |
| 5.6 relativeEmbeddedResolution | y=x² with E=x versus E=y; contained X=E=x | First gradients dy,dx have rank2, quotient at intersection k. Second restriction k[x]/x² has length2. Contained case restricts boundary to0 and is excluded. | Pass. |
| 5.6 SNC versus smooth | xy=0 as an SNC divisor and as scheme | Divisor has two smooth transverse components; scheme's origin has embedding dimension2>dimension1. Preserving singular SNC locus and producing a smooth source are different conclusions. | Pass. |
| 6.1 projectiveClosure | A¹⊂P¹; Gm²⊂P¹×P¹; double line | Closures have complement1 point and4 curves. Reducing double-line closure destroys its nonzero nilpotent open structure, so reduced hypothesis matters here. | Pass. |
| 6.2 sncCompactification | A¹; Gm² | P¹ boundary has one smooth point; P¹×P¹ boundary has4 smooth curves, with at most2 through each corner and local equation uv=0. | Pass. |
| 6.2 projectivity/preserved open | Already smooth projective U; closure singular away from U | First case boundary ideal O, no principalization steps. In second, every selected centre misses U and each blowup restricts to identity there. | Pass; projectivity comes from composition of projective maps. |
| 6.3 cartierSeparation/factorization | D₁=2[0],D₂=3[0] on A¹ | I=(t²), blowup identity, F=2[0], residuals0,[0]; p*D₁+D′₂=3[0]=p*D₂+D′₁. | Pass. |
| 6.3 disjointness/equal divisors | Axes in A²; D₁=D₂ | x-chart residual equations1,v have ideal sumO; equal divisors give residuals0,0 with both supports empty. | Pass. |
| 6.4 sncCoordinates | b0; boundary on curve; three lines through0 in surface | Equations1, t, and xy(x−y). Counts0≤dim,1≤1; third count3>2 and cannot be distinct parameter hyperplanes. | Pass; algebraic fact is supplied, complex interpretation is transport. |
| 7.0 regularMorphism/affine iff | Identity; Spec(k[e]/e²)→Spec k | Identity fibre k is regular and flat; dual-number algebra is flat over k but dimension0/cotangent dimension1, hence not regular. Both affine and scheme predicates distinguish them. | Pass. |
| 7.0 completion/composition | k[t]_(t)→k[[t]], then identity | Completion is regular, not finitely presented; composition equals completion. At generic point its fibre k((t)), at closed point k, both regular in characteristic zero. | Pass. |
| 7.1 smoothFunctorialInvariant | C⊔(C×A¹)→C⊔C for cusp C | HC=2ℓ+1; ΛHC=(ℓ+1)²=Hcylinder. With d=2, both modified entries have #(x)=1 and function(ℓ+1)². | Pass; ordinary H would select only cylinder upstairs. |
| 7.1 dimension-count control | Surface and curve meeting; two surfaces meeting | Distinct-dimension counts2 and1, respectively; counting components would incorrectly give2 in both cases. | Pass. |
| 7.1 samuelPresentation_genericFibre | C×A¹_t at generic singular-line point | Raw local H=2ℓ+1 both before/after passage to ℚ(t); ℚ-extended H=(ℓ+1)². Same mark2 cusp presentation pulls back. | Pass. |
| 7.1 regular field pullback/disjoint unions | ℚ and ℚ(s) smooth summands; cusp normalization | Both field summands have empty towers, though no common finite-type field algebra presentation exists. Cusp normalization is not flat and is excluded from regular-pullback comparison. | Pass. |
| 7.1 differential-ideal non-equality | f=x⁴+y⁴+t x²y² | ∂t f=x²y². Relative cubic derivatives span degree4 terms from xfx,yfx,xfy,yfy; coefficients of x⁴ and y⁴ force the even multipliers0, leaving no x²y². | Pass; coefficient equivalence is used instead. |
| 7.2 formalCompletion/level conventions | I=(t) versus I=(t²) in k[t] | Levels k[t]/t^(n+1) versus k[t]/t^(2n+2); cofinal limits both k[[t]], but level1 lengths2 versus4. | Pass. |
| 7.2 specialFormalExcellence | k[x][[t]]; k[[x,y]] | First closed fibre k[x], distinct maximal ideals(t,x),(t,x−1); second closed fibre k, ideal of definition needs2 generators. Both special; only second maximal ideal fails principal-pair condition. | Pass. |
| 7.2 supported special restriction | Completed localization of k[x][[t]] at x | Level n is k[x,x⁻¹,t]/t^(n+1); inverse limit k[x,x⁻¹][[t]], requiring completion after localization. | Pass. |
| 7.2 weakQeResolution | Complete cusp k[[u²,u³]] | Blowup at (u²,u³) has u²-chart k[[u]], regular dimension1/cotangent dimension1; map is identity on punctured spectrum. | Pass. |
| 7.2 adicCompletion_quasiExcellent | I=0; nilpotent I=(e) in k[e]/e² | I0 gives A=completion=A/I. For e²=0 the completion is A, quotient k; both excellent despite nilpotents. | Pass; primary Nishimura text uncertified below. |
| 7.2 rigRegular/principalFormalPair | Complete cusp; k[[x,y]] with I=(x,y) | Cusp singular locus just closed point; punctured ring is field. Two-variable maximal ideal has cotangent dimension2, hence is not principal. | Pass. |
| 7.2 qeLocalFormalReduction/nonreduced fibre | Blow up k[u²,u³] at origin | u²-chart k[u], pulled centre(u²), fibre length2; reduced fibre k length1. Levels have length2(n+1), not n+1. | Pass. |
| 7.2 formal-domain components/generator | Q[[t]]⊔Q(s)[[u]]; t↦unit·t | Two reduced closed points over different fields; both towers empty. Ideals(t)=(unit·t) give equal levels, whereas(t²) changes them. | Pass. |
| 7.3 rigRegularAlgebraization | k[[t]]⟨x⟩; xy=0 family | First levels k[t,x]/t^(n+1), algebraic model k[t,x]. Second generic fibre k((t))[x,y]/xy has a node and is not rig-regular. | Pass. |
| 7.3 supportedFormalTower_algebraizes | Centre(t^N,x) on completed affine plane | Quotient mod t^N determines same open ideal; algebraic ideal(t^N,x) restricts to it. Empty tower has0 centres on both sides; nonempty Cartier centre remains1 marked step. | Pass. |
| 7.4 ElkikPair/conductor | xy=t with ideal(t); xy=0 with ideal(z) | First total space regular; relative Jacobian ideal(x,y) contains t=xy. Second singular line meets D(z), so no z^r is in(x,y). | Pass. |
| 7.4 elkikLifting | Smooth pair(k[t],(t)); first fibre of xy=t²,t³ | Smooth conductor can be0; identity fibre map lifts to identity. Both singular families mod t equal xy=0, but mod t³ equations are xy=t² versus xy=0. | Pass; first-order fibre is insufficient. |
| 7.4 same-field restriction | k=ℚ(s), s↦s+1 on k[t] | Map preserves(t) and is an abstract isomorphism, but sends s to s+1≠s; fails the k-linear lifting hypothesis and belongs to the cross-field comparison instead. | Pass. |
| 7.4 thickFibre_resolutionComparison | Smooth principal pairs and unit generator change | Completed towers have0 centres for all thicknesses; (t^m)=((ut)^m) for u unit. Source comparison bound n²+r is retained for singular cases, not replaced by1. | Pass on displayed cases; source checked for general bound. |
| 7.5 strong quasi-excellent resolution | Field, empty scheme, complete cusp, node | First two need0 steps; cusp resolves to k[[u]]; node has2 surviving branches. Dual numbers have empty regular locus and no dense reduced open. | Pass; generic reducedness is explicit. |
| 7.5 embedded nilpotents | ℚ[x,e]/(e²,xe) | e≠0, but e/x=0 on D(x). Blowup of (x,e) has charts ℚ[x] and∅. Reg(X)=D(x), and its inverse image is dense in A¹. | Pass; previous R02 repaired. |
| 7.6 regular functoriality/coherence | Restrict away from cusp origin, then smaller open; complete cusp | Origin-centre becomes∅ under either composite or two-stage restriction; completed cusp tower is base change with same nonempty centre order. | Pass. |
| 7.7 qePairPrincipalization | Unit on singular cusp; x²y³ on regular formal plane | Unit stays unit but cusp still needs regularization. Second case identity retains multiplicities(2,3); reduced support is xy with multiplicities(1,1). | Pass. |
| 7.7 strict SNC/total support | Irreducible nodal divisor blown up at node | Total divisor C̃+2E is nonreduced; reduced C̃+E has two smooth labelled components meeting transversely. | Pass; source reduction issue noted below. |
| 7.7 qeEmbeddedStrictTransform | Blow up ideal of a point in A² | Literal strict transform of point is∅, total inverse image is P¹. Thus it cannot serve as a smooth strict-transform resolution of the point. | Pass; target explicitly distinguishes these. |
| 7.8 field/affinoid resolution | K⟨u,v⟩/(uv); K⟨e⟩/e² | First has2 regular branches after resolution. Second has one generically nonreduced point and no dense regular open. No finite-generation assertion for a Tate algebra as an ordinary K-algebra is used. | Pass; second input excluded. |
| Worked coefficient formula | I=y³+x⁷+x³y, d3, H:y=0 | DI restricted=(x³), D²I restricted=(x²); coefficient ideal(x¹⁴,x⁹,x¹²)=(x⁹), mark6, versus plain restriction(x⁷), mark3. | Pass; factorial denominators positive for j<d. |
| Worked maximal-contact boundary case | y²−x⁵ with proposed H:x=0 | Initial cosupport {0} lies in H; x-chart transform v²−x³ still has order2 at0 but strict H misses that chart. | Pass; Check discriminates persistence. |
| README names and declaration inventory | derivativeIdeal I; regularMorphism f | Two own API identifiers still appear in code spans; declarations with those names in Suggested.lean:0. Four actual declarations all have README references. | R02: use prose for the two README-only targets. |
| Lean namespace/layer form | Four elaborated declarations | All4 names start TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero; required Layer2 and Layer5 comments:2. | Pass; previous R04 repaired. |
| 2.1 missing membership negative control | F={(x,1)} on A² at0, E=∅; choose (f*,d)=(y,1) | µ(F)=1, ord(y)=1, ∂y/∂y=1; z=y. Original cosupport V(x) has dimension1; augmented cosupport V(x,y) has dimension0. | Fails: R01 requires (f*,d)∈F. |
| 2.1 repaired membership test | Same F; choose its member (x,1), transverse coordinate x | z=x; both F and F∪{(x,1)} have cosupport V(x). Unrelated (y,1) fails membership. | Repair excludes the counterexample and retains a valid contact hypersurface. |
| 7.8 dense smooth locus / Lean hgen | Embedded-nilpotent line; dual numbers; empty scheme | Smooth loci D(x),∅,∅; density values true,false,true. These agree with generic reducedness true,false,true. | Pass; all three cases appear in current README. |
| Native effective Cartier carrier (R03) | A=ℚ[e,t]/(e²), ideals(t),(e),A | Multiplication by t is injective; multiplication by e kills nonzero e. Equations t and1 define effective Cartier ideals; e does not. A is nonreduced, so no integral-scheme carrier applies. | Native IsEffectiveCartier distinguishes all three; cite it. |

**Headline and signature audit.** The README's headlines are: supported formal division; stabilization of realized Hilbert–Samuel functions; maximal contact, coefficient/Samuel presentations and their transform equivalences; intrinsic invariants and finite permissible resolution; companion/homogenization comparisons; principalization, embedded/relative resolution and preservation of resolved pairs; local-isomorphism resolution; projective SNC compactification and Cartier separation; regular-morphism field functoriality; local/formal reduction, weak resolution, completion permanence, algebraization and thick-fibre independence; strong quasi-excellent resolution, regular functoriality, pair principalization, and field/affinoid specializations.

Formal division, lexicographic Hilbert–Samuel stabilization and the abstract field-resolution endpoint are stated in Suggested.lean. Its one real definition is the local quotient length required by stabilization. The module docstring names the other headline families and their missing geometric/formal carriers; correct its effective-Cartier inventory as R03 explains. Searches at the pins found no general projective scheme-morphism predicate, scheme blowup-sequence carrier, marked presentation/test-tower carrier, labelled SNC interface or scheme excellence/regular-morphism interface supplying those full statements. The native effective-Cartier predicate supplies an input, not the missing blowup itself. No additional statable full headline was identified.

All4 declarations were printed with `#check @name` in a scratch copy and compared with the current README. There are zero dropped binders: formalDivision retains Field K and hα; the length definition deliberately admits arbitrary local commutative rings with values in ℕ∞; stabilization fixes a finite variable count and uses realized quotient functions; exists_resolution retains CharZero, locally finite type, quasi-compactness and explicit density of the smooth locus. The latter expresses generic reducedness in the stated finite-type perfect-field setting and imposes no separatedness. No signatures were changed.

Each of the3 admitted theorems was tried with the single tactic `simp` in a scratch copy. None closed: division and stabilization reported no progress, and resolution retained its existential geometric goal. Direct inspection also rules out reflexivity, instance search and a single pinned resolution/division/stabilization lemma. There are no API-padding theorems, boundary-case theorems or admitted examples. The normal file elaborates; diagnostics from the unsuccessful proof probe are not build failures of the submitted file.

**Pinned declarations opened.** Mathlib is pinned at 6b7abb3c7686292736be2955bd3eb9ebf63b456a, Tau Ceti at a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Paths in the next table are relative to those repositories. In particular, the effective-Cartier file was confirmed to exist in the pinned git tree, not merely as a working-copy addition.

| Pinned location | Object/hypotheses inspected |
| --- | --- |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:59` | Relative `Smooth`; no absolute separatedness requirement on its source. |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:300` | `Scheme.Hom.smoothLocus`, an open under local finite presentation, determined by formal smoothness of stalk maps. |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:361` | `Scheme.Hom.dense_smoothLocus_of_perfectField`: reduced X, perfect field and locally finite presentation. Supplies the reduced specialization, not a proof of density for arbitrary nonreduced X. |
| `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41` | `IsProper` includes relative separatedness, universal closedness and local finite type; it is not projectivity. |
| `Mathlib/AlgebraicGeometry/IdealSheaf/Basic.lean:64` | `Scheme.IdealSheafData` uses affine ideals and localization compatibility plus their support. |
| `Mathlib/AlgebraicGeometry/IdealSheaf/Functorial.lean:39` | `IdealSheafData.comap` is the kernel of the pullback closed-subscheme morphism; the next declaration identifies its subscheme with the fibre product. |
| `Mathlib/RingTheory/RegularLocalRing/Defs.lean:51` | `IsRegularLocalRing` includes local/noetherian assumptions and the dimension equality. |
| `Mathlib/RingTheory/Length.lean:30` | `Module.length` is ℕ∞-valued, with no hidden finite-length hypothesis. |
| `Mathlib/RingTheory/MvPowerSeries/Order.lean:386` | `MvPowerSeries.order` is total-degree weighted order, with order∞ for zero. |
| `Mathlib/RingTheory/MvPowerSeries/NoZeroDivisors.lean:183` | `order_mul` comes from weighted-order multiplicativity under the nonzero-divisor assumptions. |
| `Mathlib/Data/Finsupp/MonomialOrder/DegLex.lean:80` | `Finsupp.DegLex` compares degree first and Finsupp.Lex second. For x+y the least exponent is (0,1) in the displayed variable convention. |
| `Mathlib/Order/WellQuasiOrder.lean:212` | `Pi.wellQuasiOrderedLE` requires a finite index type and coordinatewise well-quasi-orders. |
| `Mathlib/RingTheory/ReesAlgebra.lean:40` | `reesAlgebra` consists of polynomials whose degree-i coefficient belongs to Iⁱ. This is a ring construction, not the general scheme blowup interface. |
| `Mathlib/RingTheory/AdicCompletion/Basic.lean:669` | `AdicCompletion.of_bijective` retains the `IsAdicComplete I M` assumption. |
| `TauCeti/RingTheory/MvPolynomial/OrderAt.lean:264` | `orderAt` is the order of the Taylor series. |
| `TauCeti/RingTheory/MvPolynomial/OrderAt.lean:345` | `orderAt_mul` requires NoZeroDivisors; powers at line350 use this hypothesis. |
| `TauCeti/RingTheory/MvPolynomial/OrderAt.lean:403` and `:412` | Derivative-order criteria retain additive torsion-freeness; the positive-characteristic controls cannot apply them. |
| `TauCeti/AlgebraicGeometry/Scheme/RegularLocalRing.lean:73` | Affine regularity/stalk equivalence carries a noetherian-ring hypothesis. |
| `TauCeti/AlgebraicGeometry/Morphisms/Smooth/Regular.lean:39` | Smooth stalk regularity uses locally noetherian regular target stalks. |
| `TauCeti/AlgebraicGeometry/Blowup/AffineCharts.lean:61` | `affineBlowupι`, its open ranges, covering and structure-map identities are actual affine Rees charts. |
| `TauCeti/AlgebraicGeometry/Blowup/Node.lean:258` | `isRegularLocalRing_stalk_blowup_iff` resolves thickness n+2 exactly for n≤1 over a DVR with irreducible uniformizer. It is not general resolution. |
| `TauCeti/AlgebraicGeometry/CartierDivisor/Basic.lean:60` | The rational-unit-sheaf Cartier API is scoped to integral X. |
| `TauCeti/AlgebraicGeometry/EffectiveCartierDivisor/Basic.lean:50` | General `IsEffectiveCartier`, with unit-ideal theorem at90, affine equation theorem at99, restriction comparison at106 and flat comap at166: R03. |

These23 entries include native definitions and their limiting hypotheses. The order comparison in §1.10 adds the localization/ideal-generator bridge rather than restating the supplied Taylor calculus. Associated-graded specialization adds the regular-local parameter isomorphism; ordinary associated graded multiplication remains GroebnerGeometry's work.

**Ownership and supplier resolution.** Main was checked at fa41b3747f56d4e77bd69e7099c1be4f2e4959ba. Searches used the mandated `roadmaps grep`/`roadmaps show` tools, native object searches at the pins, and board-package searches. Objects searched included ideal orders and derivatives, Hilbert–Samuel functions, formal division, coefficient ideals, semicoherent presentations, regular morphisms, associated graded rings, blowups, Cartier separation, SNC boundaries, principalization, completion and homogenization. Exact-name searches found no second declaration of the four fully qualified names. Arithmetic Hilbert–Samuel asymptotics, formal-group division and polynomial homogenization concern different constructions.

The following18 supplier section contracts were opened and resolved on main, rather than treating revisions of existing roadmaps in open pull requests as new supply:

- `TauCetiRoadmap/SchemeAndStackFoundations/README.md:798`, §0.8: étale coordinates, with the separable residue-field/quasi-section restrictions retained.
- The same file at848, §0.9: affine-transition limits, finite-presentation descent and noetherian approximation.
- At969,1032,1068, §§0.12–0.14: henselization of pairs, ind-étale maps, quotient-power comparison and henselian lifting. Rig-smooth algebraization and conductor estimates are additional work here.
- At1090, §0.15: Popescu for regular maps between noetherian rings.
- At1394, §0.21: regular ring maps, G-rings, J-2, quasi-excellence and local completion. General adic-completion quasi-excellence is owned here with its weak-resolution prerequisite.
- At1765, §0.28: image ideals and affine quotient comparisons; arbitrary-open sheaf comparison is kept distinct.
- At5339 and5383, §§4.7–4.8: level-preserving adic systems and formal completion. Their morphisms are not conflated with arbitrary continuous formal-scheme morphisms.
- At5528, §4.11: modifications and strict transforms retaining a specified dense open. This roadmap explicitly supplies the componentwise generically reduced extension.
- At5643, §4.13: regular schemes, perfect-field regular/smooth comparison and curve normalization with finiteness.
- At6075, §4.17: SNCData, transversality, local equations and reduced-support strictification. Birth order is the enrichment owned here; §6.4 transports the supplied equations.
- `TauCetiRoadmap/StableReduction/README.md:529`, Layer4: general ideal-sheaf blowups, projectivity, flat base change and charts. Its arithmetic-surface resolution is not imported as higher-dimensional resolution.
- `TauCetiRoadmap/RigidAnalyticGeometry/README.md:177` and205, §§1.1–1.2: affinoid carriers, noetherianity and excellence.
- `TauCetiRoadmap/GroebnerGeometry/README.md:252`, G4: ordinary ideal-power associated graded carrier, grading, quotient classes and multiplication, as well as induced maps. Not merely a weight-filtration construction.
- `Completed/RealAlgebraicGeometry/README.md:479`, Layer7: Taylor order ownership, implemented at the pinned OrderAt interfaces above. This roadmap adds localized ideal order and non-rational primes.

The citation resolver's10 unresolved-name leads are supplied roadmap targets, not invented pinned declarations: Excellence.* resolves to SchemeAndStackFoundations §0.21, Formal.IsModification to §4.11, SNC predicates to §4.17, and AdicThickeningSystem/formalCompletion to §§4.7–4.8. No missing supplier was inferred merely because a roadmap target is not yet implemented.

The board search also located `packages/AdicSpacesPartV/design/README.md:1411` and1438, containing the field and quasi-excellent endpoints. Its ownership note at1790 assigns the scheme-level construction to a separate roadmap and retains rigid resolution as the consumer. ResolutionOfSingularitiesCharacteristicZero is at merge-order position14 and AdicSpacesPartV at204. This earlier roadmap is therefore the scheme-level owner; the later design should import §§7.1,7.5–7.6 here. It is not an upward supplier. This review does not edit that other package. Searches in the supplied open heads did not establish a competing earlier owner for the marked-presentation or formal-independence machinery. The downstream table supplies interfaces outward and is not a reverse dependency.

## Not verifiable

- Nishimura–Nishimura, *Ideal-adic completion of Noetherian rings II* (1988), Theorem B: the prior source-service result was a paywalled publisher, marked **uncertified**. Its primary proof was not read and no repeated request was made. Temkin2011 line 385 states the theorem and its weak-resolution input; that dependency is the one checked here.
- The brief supplies no checkout for the downstream AlgebraicModuliForArithmeticGeometry, DiamondsAndVStacks, ComplexComparisonPartII or InverseGaloisAndArithmeticFundamentalGroups open pull requests; none of these folders was found in the supplied main tree. Search-index hits corroborate several consumer references, but those full open files and their ownership claims were not independently checked. No additional open checkout was fetched. Ownership against open pull requests without supplied files is not certified.
- The examples do not prove the general roadmap statements, and the three `sorry` theorems remain unproved. Elaboration verifies their signatures only. Every newly requested source was obtained legally; no unresolved new text request remains.

## Source issues

- **Error** in Wlodarczyk2005 at Step2a, January27,2010 author version, printed p.19 (line 943): the source says zero residual maximum on cosupport makes the whole ideal monomial; it should be monomial on an open neighbourhood of cosupport; affects the proof.
- **Error** in Temkin2008 at Lemma4.2.4, preprint p.27 (line 1262): the source says successive total inverse-image divisors remain normal crossings; it should be their reduced supports, since a nodal blowup introduces exceptional multiplicity two; affects a stated result.
- **Misprint** in Temkin2011 at Proposition3.3.5 proof, printed p.25 (line 1149): the source says the approximated map runs from X to Y; it should run from Y to X, consistently with the proposition; affects the proof.
