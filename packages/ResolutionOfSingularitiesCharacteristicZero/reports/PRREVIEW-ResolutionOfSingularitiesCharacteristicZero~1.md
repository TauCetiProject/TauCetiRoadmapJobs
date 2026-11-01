# Review of ResolutionOfSingularitiesCharacteristicZero (pull request #1199 at bf45c86)

**Verdict:** needs changes

## R01 (P1) — The order-recovery inequality tests an extra centre

**Location:** `TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:194`: “Their admissibility is equivalent to `β(µ−1)−α≥1`”.

**Claim:** Admissibility of β point blowups followed by α controlled Cartier-centre steps is equivalent to this inequality.

**Witness:** Start with `(x²,1)`, introduce t, and take β=α=1. The t-chart gives `tv²`; the permissible Cartier step gives `v²`. Both steps are admissible, but the displayed left side is 0.

The point `(t,v)=(0,0)` remains in cosupport throughout: its orders are 3 and 2, both at least the mark 1. What fails after the Cartier step is containment of the **whole next exceptional hypersurface** `V(t)` in cosupport: the new cosupport is `V(v)`. BM1997 lines 2362–2380 defines S with precisely this additional containment condition; Lemma 5.2, lines 2387–2394, computes S, not the set of all admissible prefixes.

**Repair:** Define S as in that proof: after the β axis blowups and α Cartier steps, require the next exceptional hypersurface in the presentation space to lie in cosupport, in addition to admissibility of the steps already performed. State the displayed inequality for membership in S. Add this example as a negative control. Tested repair: `(1,0)` belongs to S, since `V(t)⊆V(tv²)` and `1≥1`; `(1,1)` does not, since `V(t)⊄V(v²)` and `0≥1` is false. The already-performed `(1,1)` sequence is still admissible. The normalized-order invariance theorem itself is supported by Propositions 4.8 and 4.11.

## R02 (P2) — Retain generically reduced schemes in the strong theorem

**Location:** `TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:967`: “for every reduced noetherian quasi-excellent ℚ-scheme X”; also lines 982, 1018 and `Suggested.lean:73`.

**Claim:** The roadmap's strong non-embedded endpoint and its field specialization only cover reduced schemes. The worked discussion at README line 1073 calls reducedness indispensable for the birational conclusion.

**Witness:** Temkin2011 lines 99–108, Theorem 1.2.1, assumes generically reduced. For `A=ℚ[x,e]/(e²,xe)`, `e≠0`, but `A[1/x]=ℚ[x,1/x]`; blowing up `(x,e)` has x-chart `ℚ[x]` and empty e-chart.

This is an excellent, generically reduced scheme with an embedded nilpotent at the origin. Its blowup is regular, surjective, projective, and an isomorphism on its entire regular locus `D(x)`. Thus the example of dual numbers only justifies excluding **generically nonreduced components**; it does not justify excluding embedded nilpotents. Under the brief's rule against narrowing below the source-supported generality, the omitted case needs an endpoint, rather than being lost at the scope paragraph.

**Repair:** State strong resolution and regular functoriality for noetherian quasi-excellent **generically reduced** ℚ-schemes, and carry that generality into the field specialization. Retain reduced schemes as a specialization and distinguish this from the source's component-destroying treatment of generically nonreduced schemes. In the finite-type characteristic-zero Lean statement, a native hypothesis that the smooth locus is dense can express the required generic condition; prove/record its equivalence to generic reducedness in the README. Keep the dense-inverse-image conclusion. Tested repair: the embedded-nilpotent example above is admitted and resolves to `Spec ℚ[x]`; `Spec ℚ[e]/e²` has empty smooth locus, so remains excluded. Update the scope and the claim at line 1073 consistently. A scratch copy with this dense-smooth-locus binder elaborated at the pins, and its printed type retains that binder.

## R03 (P3) — Use prose APIs, unnamed Checks and timeless supplier links

**Location:** `TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:128` and `README.md:134`: `permissibleCentre_idealPower` and `centre_contained_in_boundary`.

**Claim:** These, and many analogous backticked API and Check labels, read as declarations of this roadmap, although `Suggested.lean` deliberately contains only four declarations.

**Witness:** `Suggested.lean:42,53,60,73` declares only `formalDivision`, `localQuotientHilbertSamuel`, `hsLexStabilization`, and `exists_resolution`; neither cited label is declared. The same mismatch occurs in the API paragraphs and named Checks throughout Layers 1–7.

**Repair:** Keep these mathematical facts, but write each definition's API as prose bullets and each Check as an unnamed prose bullet. Reserve declaration names for existing supplier/library declarations and the four actual Lean declarations. Do not expand the Lean file into an API catalogue to satisfy the names. Tested repair: the origin for `(x²,y²)` with mark 2 and boundary `x=0` still has ideal containment `(x²,y²)⊆(x,y)²` and independent coordinate equations, without claiming a nonexistent Lean test. The worker's name scanner passes this head; this is a manually witnessed form defect, not a reported gate failure. Also replace the supplier hyperlink at README line 33, which points to a pull-request page, with the main GroebnerGeometry G4 section. The main supplier contract was resolved and read below, so no pull-request identifier is needed in the roadmap.

## R04 (P3) — Put the acceptance test in the prescribed namespace and layers

**Location:** `TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/Suggested.lean:36`: `namespace ResolutionOfSingularities`.

**Claim:** The file uses a different namespace from `TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero`, and its Layer 2 and Layer 5 declarations have no layer section comments.

**Witness:** Lines 36–81 enclose all four declarations in `ResolutionOfSingularities`; lines 42–66 state Layer 2 targets and line 73 states the Layer 5 target, without either required layer heading.

**Repair:** Rename the namespace, update its four README references, use the module title “Resolution of singularities in characteristic zero: target signatures”, and insert the Layer 2 and Layer 5 section comments in README order. This changes no mathematics: the displayed formal-division decomposition, Hilbert–Samuel values, and resolution conditions remain identical. A scratch copy with the namespace changed elaborated successfully; its printed resolution signature has the prescribed namespace. Re-run the four `#check @...` probes after applying the full formatting repair.

## Verified sound

This is an independent AI review of the two requested files at `bf45c86fdfe7926d08bfb736783f5b9d17fa2d7d`. The PR worktree was not changed. Text-location helpers fetched and located sources only; the mathematical decisions and the source passages relied on below were checked by this reviewer. The repository's normative README and CONTRIBUTING were read; StableReduction and RigidAnalyticGeometry on main supplied format and ownership context.

The worker's gate reports every check passing, including the targeted build, imports, sorry-data, set_option, stray files and outside-folder changes. Independent direct elaboration with `lake env lean` also passed, with precisely the three admitted-theorem warnings. The outside-folder diff is empty. There is no sorry'd data, stand-in proposition, option override, algorithm implementation, copied source passage identified, or whole-roadmap replanning in these files.

The dependency check was run with the specified merge order and main content. Its output is:

```text
depcheck: 205 roadmaps, 1438 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line was emitted. Every `*Needs:*` line was read. The internal local/formal sequence explicitly separates special excellence, restricted algebraization, weak resolution, general completion permanence, and strong functorial resolution; the cross-reference from §7.2 to the restricted part of §7.3 does not require the later strong theorem.

The source sample contains **15 targets**. All 15 have readable source support at the locators below, with the specific correction/generalization in R01/R02. No README locator is explicitly marked unverified. Published-page locators in BM1997 were checked against its printed pagination. The two Włodarczyk versions were kept distinct; Temkin2011 was read in the expressly cited version 2. Temkin2008 was read as arXiv math/0703678v2, and its cited theorem/section labels were checked there; published-page identity was not assumed.

| Sampled target | Text and locator inspected | Result of source comparison |
| --- | --- | --- |
| 1.6 controlledTransform | BM1997 lines 1641–1649, 1862–1885, 2321–2324; Prop. 3.13/Remark 3.14, p.237; (4.4)–4.5, p.242; Lemma 5.1, p.248 | Marked division and nontrivial Cartier-centre transforms agree. Strict, weak and controlled transforms are distinguished. |
| 1.9 ordersInvariant | BM1997 lines 1930–1999, 2327–2415; Props.4.8/4.11, pp.243–244; Lemma5.2, pp.249–250 | Fixed-codimension invariance agrees. The proof's test set was weakened incorrectly: R01. |
| 2.2 coefficientPresentation | BM1997 lines 2128–2152, 2172–2182; (4.17), Construction4.18 and Remark4.20, p.246 | Positive coefficient marks, factorial normalization, contact and boundary hypotheses agree. |
| 2.3 coefficientEquivalence | BM1997 lines 2153–2170, 2520–2588; Prop.4.19, p.246; proof pp.252–253 | Type-(i) coefficient division and type-(iii) pure pullback agree; different presentation codimensions are allowed. |
| 2.5 initialDiagram | BM1997 lines 1665–1707; Thm3.17/Cor.3.19, p.238; Cor.3.20, p.239 | Minimum graded-lex exponent, upward closure, finite vertices and quotient counts agree. |
| 2.9 finiteDegree | BM1997 lines 3678–3705; monotonicity and Thm8.1, p.274 | Arbitrary commutative coefficient ring and diagram-dependent threshold are retained. |
| 2.10 samuelJetIdeal | BM1997 lines 3254–3322; Defs.7.10/7.13, Remark7.11 and (7.12), pp.265–266 | Rows, columns, factorial entries, rank-plus-one minors and cumulative ideals agree. |
| 4.1 residuals, companions, homogenization, birth blocks | BM1997 lines 2210–2301, pp.247–248, 2773–2783 and 2951–2959 (Defs.6.8/6.15, pp.256/259); Wlodarczyk2005, January-2010 version, lines 918–968, pp.19–20; v1 lines 448–540, pp.9–11 | Guarded residuals, positive-c companion branch and transverse homogenization agree. The local monomial branch correctly repairs the source's global wording. |
| 5.5 localIsomorphismResolution | BM1997 lines 4745–4843; Remarks13.1 and Thm13.2, pp.296–298 | Local-embedding comparison and unique lifts throughout towers agree; arbitrary smooth functoriality is separately developed. |
| 5.6 initial boundary | BM1997 lines 2750–2762, 4210–4229, 4530–4598; (6.7), p.256; Remarks10.3, pp.284–285; Thms12.2/12.4, pp.292–293 | Existing initial boundary and smooth-pair cleanup support the stated deduction. No-contained-component and preservation-of-resolved-pair conditions are present. |
| 6.2 sncCompactification | BM1997 lines 486–491, 4475–4501, 4538–4547, 4819–4843; Thms1.10,11.14,12.2,13.2 | This is a deduction, correctly identified as such: projective closure, actual blowups, then principalization of the complement. |
| 6.4 SNC coordinates | BM1997 lines 288–304, 1607–1620; p.213 and Example3.12, pp.236–237; SchemeAndStackFoundations §4.17 | The algebraic local equations come from the supplier. Treat this export as transport of that API, with the complex-coordinate interpretation, not a second SNC construction. |
| 7.4 independence | Temkin2011 lines 987–1022, 1103–1178; Prop.3.3.1, pp.21–22; Lemma3.3.4/Prop.3.3.5, pp.24–25 | Same-field lifting, n>r, extension to n+r, and cross-field comparison from n²+r retain the source's distinctions. |
| 7.5 strong resolution | Temkin2011 lines 90–130; Thm1.2.1, p.3 | Regular centres, full regular-locus preservation and all regular maps agree. The source also covers generically reduced inputs: R02. |
| 7.7 principalization/SNC support | Temkin2008 lines 88–98, 432–460, 709–720, 1163–1175, 1262–1291; Thm1.1, Defs.2.2.1–2.2.3, Lemma2.3.7, Prop.4.2.1, Lemma4.2.4 | Semi-strict preservation and the distinction from smooth strict-transform resolution are retained. Reduction of total support is essential. |

The following adversarial table has **130 computed rows** and gives actual computations, not a claim that finite examples prove the general theorems. “Pass” means the stated test agrees with the target; hypotheses excluding the negative controls are recorded. Multiple API names in a row share the displayed calculation. They cover all numbered subsections, the additional named constructions within them, the three Lean headlines, and the statements touched by findings. Throughout the polynomial examples the field is ℚ unless a different field is displayed; characteristic-p controls are tests of the necessity of hypotheses.

| Statement/convention | Instances tried | Values on the two sides / positive and negative controls | Result; change |
| --- | --- | --- | --- |
| Reduced, noetherian and componentwise birational conventions | Empty scheme; node xy=0; dual numbers | Empty identity has empty dense open and empty inverse image. Node normalization has two branches and two punctured dense opens. Dual numbers have one nonreduced point and no nonempty reduced open. | Pass; generic/reduced distinction corrected by R02. |
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
| 1.9 proof inequality | (x²,1), β=1, α=1 | Controlled ideals tv² then v²; orders3 then2≥1. Inequality value0≥1 is false. Next V(t) is not in V(v). | Fails; R01. |
| 1.10 associated graded | Field k; ℤ_(p), p=2 or3 | Field has gr=k in degree0. DVR degree-n quotient (pⁿ)/(pⁿ⁺¹) is one-dimensional over 𝔽p and Tⁿ maps to [pⁿ]. No section 𝔽p→ℤ_(p) exists. | Pass. |
| 1.10 order product/power | I=(x²,y³), J=(y), r=2 | ord(I)=2, ord(J)=1, ord(IJ)=3=2+1; ord(I²)=4=2·2. | Pass. |
| 1.10 zero product and regularity control | Zero ideal; dual numbers m=(e) | ord(0·J)=∞=∞+ord(J); ord(m)=1 but ord(m²)=∞≠2. Regular-local hypothesis excludes second case. | Pass. |
| 1.10 order supremum/marked sum | I=(y²),J=(x³), a=b=2 | ord(I+J)=2=min(2,3); marked sum ideal=(y⁴,x⁶), mark4; cosupport intersection is {0}. | Pass. |
| 1.10 affine cosupport/rescaling | (m,2) versus (m²,4) in dual numbers | Cosupports ∅ and whole point respectively, so the regular-local hypothesis is needed for rescaling. | Pass. |
| 1.10 Taylor/local-order comparisons | ((x−a)³,(y−b)⁵); x^p over 𝔽p | Generator minimum3 equals localized ideal order3. At0, x^p has order p on both sides despite derivative0. Empty family has order∞. | Pass. |
| 2.1 maximalContact | (z²+x³,2); (y²−x⁵,2); characteristic2 x² | Contact derivative2z has order1; for second example x-chart gives v²−x³ with order2 outside strict transform of V(x). In characteristic2 derivative of x² is0. | Pass; arbitrary containing hypersurfaces and characteristic2 are excluded. |
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
| 7.5 qeResolution | Field, empty scheme, complete cusp, node | First two need0 steps; cusp resolves to k[[u]]; node yields2 surviving branches. Dual numbers have empty regular locus and cannot retain a dense reduced open. | Pass for stated reduced cases; R02 generalizes endpoint. |
| 7.5 generic-reduced negative control for scope | ℚ[x,e]/(e²,xe) | e≠0 but e/x=0 after inverting x; blowup charts ℚ[x] and∅. Regular locus D(x), source inverse image D(x) dense. | Source-supported case omitted; R02. |
| 7.6 regular functoriality/coherence | Restrict away from cusp origin, then smaller open; complete cusp | Origin-centre becomes∅ under either composite or two-stage restriction; completed cusp tower is base change with same nonempty centre order. | Pass. |
| 7.7 qePairPrincipalization | Unit on singular cusp; x²y³ on regular formal plane | Unit stays unit but cusp still needs regularization. Second case identity retains multiplicities(2,3); reduced support is xy with multiplicities(1,1). | Pass. |
| 7.7 strict SNC/total support | Irreducible nodal divisor blown up at node | Total divisor C̃+2E is nonreduced; reduced C̃+E has two smooth labelled components meeting transversely. | Pass; source reduction issue noted below. |
| 7.7 qeEmbeddedStrictTransform | Blow up ideal of a point in A² | Literal strict transform of point is∅, total inverse image is P¹. Thus it cannot serve as a smooth strict-transform resolution of the point. | Pass; target explicitly distinguishes these. |
| 7.8 resolution_field/affinoid | K⟨u,v⟩/(uv); K⟨e⟩/e² | First has2 components resolved to the two regular branches; second nonreduced single point has no dense regular open. Algebraic Spec statement uses no finite-generation assertion for the Tate algebra over K. | Pass for stated reduced cases; R02 applies to field endpoint. |
| Worked coefficient formula | I=y³+x⁷+x³y, d3, H:y=0 | DI restricted=(x³), D²I restricted=(x²); coefficient ideal(x¹⁴,x⁹,x¹²)=(x⁹), mark6, versus plain restriction(x⁷), mark3. | Pass; factorial denominators positive for j<d. |
| Worked maximal-contact boundary case | y²−x⁵ with proposed H:x=0 | Initial cosupport {0} lies in H; x-chart transform v²−x³ still has order2 at0 but strict H misses that chart. | Pass; Check discriminates persistence. |
| README API/Check spelling | Four actual declarations versus `permissibleCentre_idealPower` | Actual declaration count4; occurrences of that declaration in Lean0. Its proposed Check still computes containment in (x,y)². Supplier link at line33 points to one pull-request page; required count0. | R03. |
| Lean namespace/layer form | Four elaborated declarations | Four names start `ResolutionOfSingularities`; zero start the required roadmap namespace. Layer headings for layers2,5:0. | R04. |

The three admitted Lean theorems were each tried with the one-tactic proof `by simp` on a scratch copy. None closed: division and stabilization reported no progress; resolution retained its existential geometric goal. Source/library inspection also distinguishes formal multivariable supported division from univariate Weierstrass division. The file contains no API padding, boundary-case theorem or admitted example. A separate scratch elaboration printed **all four** `#check @name` signatures. Their field, characteristic-zero, finite-type, quasi-compactness and reducedness binders match the README as written; **zero dropped binders** and **zero PR edits**. R02 concerns the chosen mathematical scope, not silent Lean binder loss.

The README's headline inventory is: supported formal division; stabilization of realized Hilbert–Samuel functions; maximal contact, coefficient/Samuel presentations and their test-transform comparisons; intrinsic invariant and finite permissible resolution; companion/homogenization comparisons; principalization, embedded and relative resolution, preservation of resolved pairs and local-isomorphism resolution; projective SNC compactification and Cartier separation; regular-morphism field functoriality; local/formal reduction, weak resolution, completion permanence, algebraization and thick-fibre independence; strong quasi-excellent resolution, regular functoriality, pair principalization, and field/affinoid specializations. The first two and the abstract field endpoint are in Lean. Its module docstring names the unavailable carrier families for the remaining geometric headlines. The search found no pinned general projective-morphism or scheme blowup-sequence interface, general excellence/regular-map interface, marked-tower carrier, or labelled SNC structure that would make those full versions immediately statable. Affine Rees charts and integral Cartier divisors do not supply those interfaces. The native dense-smooth-locus formulation in R02 avoids inventing a generic-reduced carrier.

The following **13 pinned-location entries** record declarations opened and compared. Paths beginning `Mathlib/` and `TauCeti/` are relative to those pinned repositories, respectively Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| Pinned location | Declaration and relevant content |
| --- | --- |
| `Mathlib/AlgebraicGeometry/Properties.lean:68` | `AlgebraicGeometry.IsReduced` requires reduced sections over every open; it does not merely require generic reducedness. |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:59` | `Smooth` is a relative morphism property. It supplies no absolute separatedness assumption on X. |
| `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:300` | `Scheme.Hom.smoothLocus` is an actual open under local finite presentation, with membership determined by formal smoothness of the stalk map. |
| `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41` | `IsProper` extends relative separatedness, universal closedness and local finite type; it is not projectivity. |
| `Mathlib/RingTheory/RegularLocalRing/Defs.lean:51` | `IsRegularLocalRing` includes local and noetherian hypotheses and equality of maximal-ideal generator dimension with Krull dimension. |
| `Mathlib/RingTheory/Length.lean:30` | `Module.length` takes values in ℕ∞; no automatic finite-length assertion is hidden in the definition. |
| `Mathlib/RingTheory/MvPowerSeries/Order.lean:386` | `MvPowerSeries.order` is total-degree weighted order, suitable for the local ideal-order comparison. |
| `TauCeti/RingTheory/MvPolynomial/OrderAt.lean:264` | `MvPolynomial.orderAt` is the order of the Taylor series on a native power-series carrier. |
| `TauCeti/RingTheory/MvPolynomial/OrderAt.lean:345` | `orderAt_mul` requires `NoZeroDivisors`; dual numbers cannot use it. |
| `TauCeti/RingTheory/MvPolynomial/OrderAt.lean:403` and `:412` | Successor-order and iterated-derivative characterizations have `IsAddTorsionFree`; the characteristic-p controls are excluded. |
| `TauCeti/AlgebraicGeometry/Scheme/RegularLocalRing.lean:73` | Affine regularity/stalk equivalence carries a noetherian-ring hypothesis. |
| `TauCeti/AlgebraicGeometry/Morphisms/Smooth/Regular.lean:39` | Smooth stalk regularity requires locally noetherian regular target stalks. |
| `TauCeti/AlgebraicGeometry/Blowup/AffineCharts.lean:61` | `affineBlowupι` and its open-cover/structure-map API are affine Rees charts, not arbitrary scheme blowup towers. |

Ownership was searched by objects using `roadmaps grep` and the available board packages: ideal orders/Taylor calculus, formal division, Hilbert–Samuel functions, associated graded rings, regular morphisms, blowups, SNC data, principalization, formal completion and homogenization. Exact proposed Lean names were also searched: the four names occur in this roadmap's file, with no second declaration found in the roadmap search. Arithmetic Hilbert–Samuel results and polynomial homogenization hits concern different objects. General formal division is not the restricted-series Weierstrass theorem. The main-roadmap and supplied open-work searches found no competing owner for the resolution-specific marked presentations, exceptional history or formal independence machinery. The retained SNC coordinate export should use the supplier's local-equation theorem; its complex interpretation is an application contract, not a claim to own SNC again.

Supplier cross-roadmap locations were resolved against main, rather than assuming that an open revision changes the available supplier. The following **18 section contracts** were inspected directly:

- `TauCetiRoadmap/SchemeAndStackFoundations/README.md:798`, §0.8: étale coordinates, with the supplier's quasi-section restrictions retained.
- The same file at `:848`, §0.9: affine-transition limits, finite-presentation descent and noetherian approximation.
- At `:969`, `:1032`, `:1068`, §§0.12–0.14: henselization of pairs, ind-étale maps, quotient-power comparison and henselian lifting. The roadmap constructs the stronger rig-smooth algebraization and conductor argument itself.
- At `:1090`, §0.15: Popescu for regular maps between noetherian rings.
- At `:1394`, §0.21: geometric regularity, regular ring maps, G-rings/J-2, quasi-excellence and local completion. The general adic-completion theorem is explicitly owned here.
- At `:1765`, §0.28: image ideals and affine quotient comparisons, with arbitrary-open sheaf comparison kept separate.
- At `:5339` and `:5383`, §§4.7–4.8: level-preserving adic systems and formal completion. The roadmap does not identify them with unrestricted continuous formal-scheme morphisms.
- At `:5528`, §4.11: modifications and strict transforms with explicit dense open; integral assumptions are explicitly extended componentwise here.
- At `:5643`, §4.13: regular schemes, perfect-field regular/smooth comparison and curve resolution with finite-normalization hypothesis.
- At `:6075`, §4.17: `Formal.SNCData`, transversality, local equations and reduced-support strictification.
- `TauCetiRoadmap/StableReduction/README.md:529`, Layer4: general ideal-sheaf blowups, projectivity, flat base change, strict transforms and charts. Its arithmetic-surface resolution is not used as higher-dimensional resolution.
- `TauCetiRoadmap/RigidAnalyticGeometry/README.md:177` and `:205`, §§1.1–1.2: classical affinoid carriers, noetherianity and excellence.
- `TauCetiRoadmap/GroebnerGeometry/README.md:252`, G4: ordinary `⊕ Iⁿ/Iⁿ⁺¹`, multiplication, unit, quotient classes and induced maps; not only polynomial weight filtrations. The regular-local parameter comparison is additional work here.
- `Completed/RealAlgebraicGeometry/README.md:479`, Layer7's Taylor-order ownership is implemented by the pinned `TauCeti/RingTheory/MvPolynomial/OrderAt.lean` interfaces above; this roadmap adds localized-ideal comparison and non-rational primes.

These are supplier contracts, not assumptions that their targets are already implemented. The downstream table is not interpreted as reverse supply. No declared gap was silently treated as a completed implementation, and no upward dependency was introduced.

## Not verifiable

- **Nishimura–Nishimura, “Ideal-adic completion of Noetherian rings II” (1988), Theorem B:** the sources service found only a paywalled publisher; its primary proof was not read. This is **uncertified**, not a new request for the same text. Temkin2011 lines 385–396 state the theorem and identify the weak-resolution input used by §7.2. The review checks that dependency through Temkin, not the inaccessible original proof.
- No claim is made that the finite adversarial examples prove all roadmap theorems or that the three `sorry` statements have been proved. The recorded elaboration establishes types only. Ownership outside the main repository, supplied open-work context and board search is not certified. The brief supplies no checkout for the downstream AlgebraicModuliForArithmeticGeometry, DiamondsAndVStacks, ComplexComparisonPartII or InverseGaloisAndArithmeticFundamentalGroups pull requests. Search-index hits corroborate the named consumer interfaces, but their full open files were not independently audited for ownership.

## Source issues

- **Error** in Wlodarczyk2005, January 27, 2010 author version, at Step 2a, printed p.19 (lines 943–946): the source says zero residual maximum on cosupport makes the whole ideal monomial; it should be monomial on an open neighbourhood of cosupport; affects the proof.
- **Error** in Temkin2008 at Lemma 4.2.4, preprint p.27 (lines 1262–1273): the source says successive total inverse-image divisors remain normal crossings; it should be their reduced supports, since a nodal blowup introduces exceptional multiplicity two; affects a stated result.
- **Misprint** in Temkin2011 at Proposition 3.3.5 proof, printed p.25 (lines 1149–1153): the source says the approximated map runs from X to Y; it should run from Y to X, consistently with the proposition; affects the proof.
