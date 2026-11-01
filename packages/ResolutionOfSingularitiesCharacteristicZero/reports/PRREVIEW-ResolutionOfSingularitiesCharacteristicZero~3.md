# Review of ResolutionOfSingularitiesCharacteristicZero (pull request #1199 at caddfb3)

**Verdict:** accepted

🤖 Independent AI review. No new findings; all three previous findings are repaired. This verdict means ready for a human's final approval, not approval or merge by the AI.

## Previous findings

- R01 — repaired: TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:277 requires a positive-integral-mark member of F; TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:295,315 explicitly inherit membership. TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:289–291 includes the unrelated-pair negative control, the valid member, and the cusp/characteristic-two control.
- R02 — repaired: TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:511 says “the derivative ideal of I”; TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:961 describes the regular-morphism predicate in prose. Neither removed API spelling is claimed as a Lean declaration.
- R03 — repaired: TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:27,914 cites native IsEffectiveCartier and its four supporting declarations; TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/Suggested.lean:19–26 identifies the missing scheme blowup. TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:925,932–933 retains arbitrary schemes, nonreduced tests, and the flat-pullback limitation.

## Verified sound

This is an incremental re-review of 34 changed lines since c537be5, at caddfb37a2def2111617b41f63a17729fbc769af. The changed supplier paragraph, §§2.1–2.3, §2.15, §6.3, §7.0 and the Lean module docstring were checked, together with their named dependencies and uses. The full mathematical review of untouched passages is carried from [R2], not claimed as newly repeated. The normative README and CONTRIBUTING were read; StableReduction and RigidAnalyticGeometry on main were opened for shape and their supplier contracts. No pull-request file was changed.

**Gate and elaboration.** The worker's gate passes, including its build check. An independent rerun passes every scanner and dependency check; the targeted command `lake build TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero.Suggested` succeeds. Direct `lake env lean` elaboration of the submitted file succeeds with exactly three declaration-uses-sorry warnings and no other warnings. HEAD matches the requested commit; the worktree is clean, and the diff outside this roadmap folder is empty.

The required dependency command, using the supplied order and main content, returned:

```text
depcheck: 205 roadmaps, 1449 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The new §6.3 dependency is a pinned-library API, not a new roadmap edge. There are no declared supplier gaps. The edits introduce no computational algorithm, copied passage, route-specific shortcut, sorry'd data, option override or stand-in predicate.

**Source checks within the incremental scope.** Of this round's 15 seeded targets, §2.3 and §6.3 changed and were rechecked directly. The remaining 13 are unchanged: §§1.1,1.5,1.9,1.10,2.7,2.10,2.11,3.2,5.4,5.5,6.1,7.3,7.7. Their computed adversarial rows are carried from [R2]. The repaired §2.1, coefficient definition §2.2, derivative paragraph §2.15 and regular-morphism paragraph §7.0 were also checked. No changed locator is marked unverified.

| Passage checked now | Source locator and extraction | Result |
| --- | --- | --- |
| §§2.1–2.2 member, positive mark, transverse coordinate, coefficients | BM1997 line 2010, Proposition 4.12 and Remarks 4.13, printed p.244; line 2140, Construction 4.18, p.246 | The selected pair belongs to F; the last coordinate is outside the boundary-coordinate set. Taylor coefficients retain the factorial and positive lowered marks. |
| §2.3 full test equivalence and regular extension | BM1997 line 2153, Proposition 4.19 and Remark 4.20, p.246; line 2586, proof p.253 | The corrected hypotheses support the codimension-one comparison and transformed coefficient presentation. |
| §§2.1,2.3,2.15 derivative and transform route | BM1997 line 2482, proof pp.251–253; controlled formula at line 2528, exceptional formula at line 2574 | Characteristic-zero differentiation, controlled division by individual marks, and exceptional pure pullback remain distinct. |
| §6.3 arbitrary-scheme Cartier separation | BoxerPilloni line 2173, §4.1.10 and Proposition-construction 4.1.11, printed p.42; proof line 2177 | Both inputs are effective Cartier; Rees sections give the cross-sum and have no common zero. No smoothness, characteristic, reducedness, integrality or Noetherianity is assumed. |
| §7.0 definition and affine equivalence | StacksRegular line 2854, tags 07R7–07R8, More on Morphisms §21, pp.59–60; smooth case line 2890, tag 07R9 | Locally noetherian fibres, flatness and geometric regularity are retained; the affine tests and cover criterion agree. |

All three works were obtained through the sources service. BM1997 was read in the published-paginated academic seminar copy, matching pp.244–246 and 251–253; the arXiv extraction was insufficiently readable and was not used to guess formulas. Boxer–Pilloni was read on the author's institutional page and Stacks in its official chapter. No new unresolved text request remains.

**Pinned API audit.** The actual package revisions agree with the manifest: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. These ten declaration locations were opened for the changed contracts (paths relative to their library repositories):

| File and line at the pin | Declaration and boundary |
| --- | --- |
| `TauCeti/AlgebraicGeometry/EffectiveCartierDivisor/Basic.lean:50` | `AlgebraicGeometry.Scheme.IdealSheafData.IsEffectiveCartier`: affine local principal equations with injective multiplication, on an arbitrary scheme. |
| Same file:90 | `isEffectiveCartier_top`: the unit ideal is included. |
| Same file:99 | `isEffectiveCartier_ofIdealTop_span_singleton`: affine scheme, with a regular element explicitly required. |
| Same file:106 | `isEffectiveCartier_iff_exists_comap`: genuine open restriction of the native ideal sheaf. |
| Same file:166 | `IsEffectiveCartier.comap`: retains `[Flat f]`. None of these five assumes integrality, reducedness or Noetherianity. |
| `Mathlib/AlgebraicGeometry/IdealSheaf/Basic.lean:64` | `Scheme.IdealSheafData`: affine ideals with localization compatibility; Cartier regularity is additional, not part of the carrier. |
| `Mathlib/RingTheory/ReesAlgebra.lean:40` | `reesAlgebra`: degree-i coefficients lie in Iⁱ; it is a ring construction. |
| `TauCeti/AlgebraicGeometry/Blowup/AffineCharts.lean:61` | `affineBlowupι`: an affine chart into Proj of the affine Rees algebra, not the general scheme blowup functor. |
| `TauCeti/RingTheory/MvPolynomial/OrderAt.lean:403` | `succ_le_orderAt_iff`: uses additive torsion-freeness. |
| Same file:412 | `le_orderAt_iff_eval_foldl_pderiv`: same coefficient hypothesis, compatible with the characteristic-zero use in §2.15. |

**Supplier and ownership checks.** All 18 cited supplier sections were resolved again against main fa41b3747f56d4e77bd69e7099c1be4f2e4959ba. The changed passages consume SchemeAndStackFoundations §§0.21,0.28 and StableReduction Layer 4; the other citations continue to name existing sections:

| Supplier location on main | Contract resolved |
| --- | --- |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:798`, §0.8; :848, §0.9 | Étale coordinates and finite-presentation descent. |
| Same file:969,1032,1068,1090, §§0.12–0.15 | Henselization, quotient powers, henselian lifting, and Popescu for noetherian regular ring maps. |
| Same file:1394, §0.21 | GeometricallyRegular, RegularAlgebraMap, excellence predicates, and regular local G-ring completion; this supplies ring regularity, not a competing scheme predicate. |
| Same file:1765, §0.28 | Image ideals, affine quotient comparisons, open restrictions and coherence. |
| Same file:5339,5383, §§4.7–4.8 | Level-preserving adic thickening systems and formal completion. |
| Same file:5528,5643,6075, §§4.11,4.13,4.17 | Modifications/strict transforms, regular schemes, and reduced-support SNC data. |
| `TauCetiRoadmap/StableReduction/README.md:529`, Layer 4 | General blowups as relative Proj, projectivity, exceptional divisor and charts; no higher-dimensional resolution supplied here. |
| `TauCetiRoadmap/RigidAnalyticGeometry/README.md:177`, :205, §§1.1–1.2 | Affinoid noetherianity and excellence. |
| `TauCetiRoadmap/GroebnerGeometry/README.md:252`, G4 | Ordinary ideal-power associated graded ring on native quotient/direct-sum carriers. |
| `Completed/RealAlgebraicGeometry/README.md:479`, Layer 7 | Polynomial Taylor order and derivative calculus. |

The ten citation-resolver leads are names planned by those supplier sections, not assertions that the names already exist at the pins. No missing section or upward supplier was found.

Object searches used `roadmaps grep` and `roadmaps show`, the pinned sources, main and board packages for effective Cartier divisors, Cartier separation, coefficient presentations and regular morphisms. `TauCetiRoadmap/AbhyankarLemma/README.md:72` on main uses the same pinned effective-Cartier predicate. The supplied EtaleDualityAndPerverseSheavesPartII head, §5.3 at TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:844, consumes regular morphisms for a base-change theorem; it does not construct another resolution or coefficient-presentation carrier. The board's formal-scheme Cartier contracts concern different carriers. The repair adopts the existing native divisor API and adds no duplicate Lean declaration. The retained ownership is the resolution-specific member/contact/coefficient machinery and the two-divisor separation theorem; its generic divisor input belongs to Tau Ceti and its blowup construction to StableReduction.

**Headline/signature and padding checks.** The README's headline families remain: formal division; realized Hilbert–Samuel stabilization; maximal-contact, coefficient and Samuel comparisons; invariant transformations and finite resolving sequences; companion/homogenization comparisons; principalization, embedded and relative resolution, preservation of resolved pairs and local-isomorphism resolution; projective SNC compactification and Cartier separation; regular-morphism field functoriality; local/formal reduction, completion permanence, algebraization and independence; strong quasi-excellent resolution and its field/affinoid specializations.

The three statable endpoints remain in TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/Suggested.lean: `formalDivision`, `hsLexStabilization` and `exists_resolution`, with the one necessary real definition `localQuotientHilbertSamuel`. The module docstring correctly identifies the other missing geometric/formal carriers after the Cartier correction. Having the input divisor predicate does not supply the scheme blowup required by the full §6.3 headline.

All four declarations were independently printed with `#check @name` in one scratch copy and compared to the README. There are zero changed signatures and zero dropped binders: division retains the field and initial-exponent hypothesis; the length definition has values in ℕ∞ on arbitrary local rings; stabilization fixes finite ambient dimension and realized ideal quotients; resolution retains characteristic zero, finite type and dense smooth locus without separatedness. A separate scratch copy tried each of the three admissions with the single tactic `simp`; none closed. Division and stabilization reported no progress; resolution retained its existential geometric goal. These probe failures are not failures of the submitted file. No padding was added.

**Adversarial table.** The following 143 rows contain computed values: 119 rows carried from [R2] for unchanged statements, and 24 newly computed rows for the repairs and their dependencies. A carried row is cited individually and is not represented as a new full review. The old rows concerning the repaired hypotheses, names and Cartier inventory are replaced, rather than carrying obsolete failures forward. The table covers all 15 seeded targets and every headline family.

| Statement/convention | Instances tried | Values on the two sides / positive and negative controls | Result; change |
| --- | --- | --- | --- |
| §2.1 member selection, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:277,289 | F={(x,1)} at 0 on A²; candidate (y,1) | µ(F)=1, ord(y)=1, ∂y/∂y=1, but (y,1)∉F. Old cosupport V(x) has dimension 1; adjoining y gives V(x,y) of dimension 0. | Pass: revised membership excludes the counterexample. |
| §2.1 admissible member, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:290 | Same F; choose (x,1) | d=1, z=∂⁰x=x, derivative 1; both cosupports equal V(x). No natural-number subtraction at d=0 is admitted. | Pass; prior R01 repaired. |
| §2.1 cusp and characteristic control, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:291 | F={(y²−x³,2)} over ℚ; same polynomial over 𝔽₂ | ∂²_y f=2, z=2y, ord(z)=1; f(x,xv)/x²=v²−x has derivative −1 in x, so order at most 1 and mark-2 cosupport ∅. z′=2v. In 𝔽₂ the second derivative is 0, not a unit. | Pass; all three new Checks agree. |
| §2.2 weighted coefficients, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:295 | f=z³+x⁴z+y⁵, mark 3 | Lower pairs (y⁵,3),(x⁴,2),(0,1); D=6 gives (y¹⁰,x¹²). At 0 the normalized minimum is min(5/3,4/2)=5/3, also min(10,12)/6=5/3. | Pass; positive marks and weights retained. |
| §2.2 zero coefficients and inherited member condition | F={(zᵈ,d)}, d>0; F={(x,1)} with z=x | All lower coefficients are 0; coefficient ideal 0 has full cosupport on V(z). In the second example coefficient 0 on V(x) gives V(x), equal to the original cosupport. | Pass; no unit ideal substituted for zero. |
| §§2.2–2.3 controlled comparison, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:305,315 | f=y²−x³, contact z=2y, x-chart y=xv | f=z²/4−x³ has c₀=−x³ of weight 2 and c₁=0. Transformed f=(z′)²/4−x has c′₀=−x=x⁻²c₀. Both transformed mark-2 cosupports are ∅. | Pass; corrected §2.1 hypothesis propagates explicitly. |
| §2.3 exceptional comparison | f=z²+x²y² with boundary x,y; x=t,y=tv | f′=z²+t⁴v² and c′₀=t⁴v²=π*c₀. No exceptional division occurs. At t=v=z=0 the orders are 2 and 6 against mark 2; both cosupport conditions hold. | Pass; genuine member (f,2), transverse coordinate z. |
| Dependent §§2.4,3.3,4.1 residual normalization | Coefficient x²y³, mark 2, remaining boundary x | µ=5/2, µx=1, ν=3/2; normalized residual pair (y³,3) has ratio 1 and no remaining y-boundary. Its member has third y-derivative 6 and contact derivative 6y. | Pass; normalization provides an actual member satisfying repaired §2.1. |
| Dependent §§2.11–2.14 Samuel/contact bridge | I=(z²); nonrational pair (z²+(x²+1)³,2) | First: member derivative 2z, Jacobian 2, stratum equation (z). Second: contact z=0 has coefficient order 3 at (x²+1), 0 elsewhere, giving precisely that degree-two point at mark 2. | Pass; membership repair does not change these uses. |
| §2.15 derivative ideal, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:511 | 0, O, (x³) over ℚ | D(0)=0, D(O)=O, D(x³)=(x²); D²(x³)=(x) has order 1. | Pass; prose-only rename preserves the construction. |
| §2.15 characteristic controls | x² over 𝔽₂; x³ over 𝔽₃; x²+y³ over 𝔽₂ | D(x²)=(x²), D(x³)=(x³), while ∂y(x²+y³)=y² and D(x²+y³)=(x²,y²). | Pass; characteristic-zero order-drop hypothesis remains necessary. |
| Native IsEffectiveCartier, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:27 | A=ℚ[e,t]/(e²), equations t,e | Writing a=f(t)+eg(t), ta=0 forces f=g=0, so ker(mul t)=0. But e·e=0 with e≠0, so ker(mul e)≠0. | Pass; arbitrary-scheme predicate accepts (t), rejects (e). |
| Native isEffectiveCartier_top | Equation 1 on A; empty scheme | ker(mul 1)=0, ideal (1)=A, support V(1)=∅. On the empty scheme the pointwise condition has zero points to test. | Pass; no integrality or nonemptiness assumed. |
| Native isEffectiveCartier_ofIdealTop_span_singleton | Equation t on Spec A, with A nonreduced | ker(mul t)=0 and the affine section ideal is exactly (t); e²=0 does not change the result. | Pass; affine hypothesis and regular-element argument match the API. |
| Native isEffectiveCartier_iff_exists_comap | Restrict (t) to D(t) | Localized ideal (t)A_t=(1); both the affine section description and restricted ideal sheaf have empty support and an injective equation. | Pass in both presentations. |
| Native IsEffectiveCartier.comap | Flat extension A→A[u]; nonflat A→A/(t) | In A[u], ker(mul t)=0, so pullback remains Cartier. In A/(t)≠0, t maps to 0 and ker(mul 0)=A/(t), so Cartier fails. | Pass; flatness is explicit, not silently dropped. |
| §6.3 factorization/cross-sum, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:914 | D₁=2[0], D₂=3[0] on A¹; D₁=D₂ | First: centre (t²), identity blowup, F=2[0], residuals 0,[0], both cross-sums 3[0]. Equal divisors: both residuals 0 and support intersection ∅. | Pass; unchanged theorem now uses native input predicate. |
| §6.3 nonreduced Check, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:932 | D₁=(t), D₂=(t²) on Spec A | Centre (t), blowup identity, F=V(t); residual ideals (1),(t), sum (1), empty support intersection. Cross-sums V(t)+V(t)=2V(t)+0. | Pass; full nonreduced generality retained. |
| §6.3 empty-divisor Check, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:933 | D₁=0, arbitrary effective D₂ | Centre O+I₂=O, blowup identity, F=0, residuals 0,D₂. Cross-sums 0+D₂=D₂+0. | Pass; no proper-ideal assumption added. |
| §6.3 Rees-chart argument, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:925 | Blow up axes on A²; x-chart y=xv | Residual equations 1,v generate (1), so supports are disjoint. For A=ℚ[x,y], B=ℚ[x,v], multiplication by y is injective on A/(x) but becomes the zero map on B/(x)=ℚ[v]≠0. | Pass; blowup chart is not flat, so native flat-pullback API alone cannot prove this case. |
| §7.0 regular-morphism affine comparison, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:961 | Identity; Spec(k[e]/e²)→Spec k | Identity fibre k has dimension/cotangent dimension 0/0. Dual-number fibre is flat over k but has dimensions 0/1, so scheme and ring regularity are both false. | Pass; prose rename preserves the supplier's predicate. |
| §7.0 completion/composition | ℚ[t]_(t)→ℚ[[t]], followed by identity | Closed fibre ℚ and generic fibre ℚ((t)) are regular; the composite equals the completion map. No finite-presentation condition is introduced. | Pass; uses supplied local G-ring completion theorem. |
| README API spellings, TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/README.md:511,961 | Two old own-name code spans; actual Lean inventory | Occurrences of derivativeIdeal and regularMorphism as own API code spans: 0; kept Lean declarations: 4, all named in README. | Pass; prior R02 repaired without adding padding. |
| TauCetiRoadmap/ResolutionOfSingularitiesCharacteristicZero/Suggested.lean:19–26 missing-carrier explanation | Native effective-Cartier inputs; affine Rees charts | General effective-Cartier predicate exists: 1; four supporting API declarations exist: 4. Affine chart target is Proj(grade I), not a blowup of arbitrary X. General scheme-blowup carrier found: 0. | Pass; prior R03 repaired; no substitute headline added. |

**Unchanged statements, carried from the previous report.**

| Statement/convention | Instances tried | Values on the two sides / positive and negative controls | Result; change |
| --- | --- | --- | --- |
| Generically reduced, noetherian and componentwise birational conventions | Empty scheme; node xy=0; dual numbers | Empty identity has empty dense open and empty inverse image. Node normalization retains two branches. Dual numbers have one nonreduced generic point and empty regular locus, which is not dense. | Pass; current generic-reduced hypothesis excludes the last case. Carried from [R2]. |
| Regular versus smooth, field convention | ℚ; imperfect k=𝔽₂(s), L=k(s^(1/2)) | ℚ is regular and smooth over itself. L is a field, but L⊗k L has a nonzero square-zero element, so regular need not mean smooth over k. | Pass; characteristic zero makes the relevant fields perfect. Carried from [R2]. |
| Marked steps and empty steps | Unit centre; Cartier centre (x), mark2 on x³ | Blowup of unit ideal is identity with J′=J. Cartier-centre blowup is identity but J′=(x), so the marked step changes. | Pass. Carried from [R2]. |
| 1.1 regularCoordinates | A¹ at (x²+1); cusp at 0 | Smooth local completion is ℚ(i)[[t]] with one parameter and residue degree2. Cusp embedding dimension2 exceeds dimension1, so it is not a smooth chart. | Pass. Carried from [R2]. |
| 1.1 derivative and chart compatibility | f=z²−x³, z=xw | Total f=x²(w²−x); ∂f/∂z=2xw; ∂(w²−x)/∂w=2w, with the expected x factor. | Pass. Carried from [R2]. |
| 1.2 stalkIdeal affine/localization | I=(x²,y³) at origin and on D(x) | Origin stalk order=min(2,3)=2; on D(x), I=O and order0. Both descriptions use the localized ideal. | Pass. Carried from [R2]. |
| 1.2 idealOrder / zero, unit, finite generators | 0, O, (x³,y⁵); empty generators | Orders ∞,0,3,∞ respectively; minimum of generator orders is 3, whereas a sum would be8. | Pass. Carried from [R2]. |
| 1.3 sncBoundary / coordinate API | Two axes; y=0 and y=x²; irreducible nodal component | Axes gradients have rank2. Tangent pair gradients have rank1. Node component is singular at its crossing. Only the axes give two smooth labelled coordinate components. | Pass. Carried from [R2]. |
| 1.3 empty boundary/restriction | E={x=0,y=0}, restrict D(x) | Label x disappears and label y survives; at D(xy) there are zero incident labels and boundary equation1. | Pass. Carried from [R2]. |
| 1.4 markedIdeal/cosupport | (x²,2),(x²,3),0,O | At 0: 2≥2 true, 2≥3 false; zero passes every positive mark and unit passes none. | Pass. Carried from [R2]. |
| 1.4 weighted common mark | (x²,2),(y³,3), D=6 | Powered ideal=(x⁶,y⁶), mark6; both original and common-mark cosupports are {0}. Unpowered generators at mark6 would exclude 0. | Pass. Carried from [R2]. |
| 1.5 permissibleCentre / idealPower | I=(x²,y²), d=2, C=0, E={x=0}; (x,2) | I⊆(x,y)², origin order2 and coordinate centre; (x)⊄(x,y)² and order1. | Pass. Carried from [R2]. |
| 1.5 SNC after blowup | Blow up origin with two axes | In x-chart y=xv, old surviving axis v=0 and new x=0 have gradient rank2; old divisor x=0 is absent from this chart. | Pass. Carried from [R2]. |
| 1.6 controlledTransform factor | (z²−x³,2), x-chart | x²(w²−x)=L²J′, with L=(x) and J′=(w²−x). At exceptional origin J′ has order1, so mark2 cosupport is empty. | Pass. Carried from [R2]. |
| 1.6 strict/weak/controlled distinction | (x³,2) on A²; blow up origin | x-chart: total=(x³), controlled=(x), strict=O, weak=O (generic centre order3). | Pass. Carried from [R2]. |
| 1.6 Cartier identity and flat base change | Same ideal on A¹; extend ℚ→ℂ | Cartier transform (x³)/(x²)=(x); extending scalars gives (x) on both paths. | Pass. Carried from [R2]. |
| 1.7 testEquivalence / rescaling | (x²,2) and (x⁴,4) | One Cartier test gives unit on each side; common-mark powers commute with division, x⁴/x⁴=(x²/x²)²=1. | Pass. Carried from [R2]. |
| 1.7 initial cosupport is insufficient | (x²,1) and (x³,1) | Initially both cosupports {0}; after two Cartier divisions ideals are O and (x), giving ∅ and {0}. | Pass. Carried from [R2]. |
| 1.7 type-(iii) transform | x²y, x=t,y=tv | Pure pullback is t³v; dividing by mark2 would give tv and is the wrong test operation. | Pass. Carried from [R2]. |
| 1.7 equivalence relations/history | Identity test and a power-rescaled pair | Empty sequence preserves {0}; reversed equivalence has the same cosupport; composing the power comparisons gives (x,1)∼(x⁴,4). | Pass; restricted exceptional history must remain attached. Carried from [R2]. |
| 1.8 normalizedOrders/common mark | (x²y³,2), E={x=0} | µ=5/2; µx=2/2=1; ν=5/2−1=3/2. | Pass. Carried from [R2]. |
| 1.8 residual nonnegativity/terminal convention | Same pair with both axes; zero/empty family | ν=5/2−1−3/2=0; zero/empty gives ν=∞ directly, not ∞−∞. | Pass. Carried from [R2]. |
| 1.9 ordersInvariant | (x²y³,2) and (x⁴y⁶,4), fixed codimension | Both give (µ,µx,ν)=(5/2,1,3/2); rescaling changes no recovered ratio. | Pass for theorem. Carried from [R2]. |
| 1.9 test set and recovery inequality | (x²,1), β=1, α=0 or1 | After axis blowup ideal tv², V(t) is in cosupport and inequality value1. Next controlled ideal v² has order2 at origin, but V(t) is not in V(v), and inequality value0. Thus (1,0)∈S and (1,1)∉S. | Pass; previous R01 repaired. Carried from [R2]. |
| 1.10 associated graded | Field k; ℤ_(p), p=2 or3 | Field has gr=k in degree0. DVR degree-n quotient (pⁿ)/(pⁿ⁺¹) is one-dimensional over 𝔽p and Tⁿ maps to [pⁿ]. No section 𝔽p→ℤ_(p) exists. | Pass. Carried from [R2]. |
| 1.10 order product/power | I=(x²,y³), J=(y), r=2 | ord(I)=2, ord(J)=1, ord(IJ)=3=2+1; ord(I²)=4=2·2. | Pass. Carried from [R2]. |
| 1.10 zero product and regularity control | Zero ideal; dual numbers m=(e) | ord(0·J)=∞=∞+ord(J); ord(m)=1 but ord(m²)=∞≠2. Regular-local hypothesis excludes second case. | Pass. Carried from [R2]. |
| 1.10 order supremum/marked sum | I=(y²),J=(x³), a=b=2 | ord(I+J)=2=min(2,3); marked sum ideal=(y⁴,x⁶), mark4; cosupport intersection is {0}. | Pass. Carried from [R2]. |
| 1.10 affine cosupport/rescaling | (m,2) versus (m²,4) in dual numbers | Cosupports ∅ and whole point respectively, so the regular-local hypothesis is needed for rescaling. | Pass. Carried from [R2]. |
| 1.10 Taylor/local-order comparisons | ((x−a)³,(y−b)⁵); x^p over 𝔽p | Generator minimum3 equals localized ideal order3. At0, x^p has order p on both sides despite derivative0. Empty family has order∞. | Pass. Carried from [R2]. |
| 2.4 residualPresentation/guard | (x²(x+y),3), E=x | (µ,µx,ν)=(1,2/3,1/3); residual pairs (x+y,1),(x²,2) intersect at0. Without guard, entire line x+y=0 remains. | Pass. Carried from [R2]. |
| 2.4 residual normalized/terminal cases | (x²y³,2), E=x or both axes | E=x gives (y³,3) of normalized order1 and no guard; both axes give ν=0 and monomial (x²y³,2). | Pass. Carried from [R2]. |
| 2.5 initialDiagram/upward/vertices | I=(x²,xy), zero and unit | Vertices (2,0),(1,1); (2,1) belongs via either cone. Zero diagram ∅; unit diagram ℕ². | Pass. Carried from [R2]. |
| 2.5 exponent convention | x+y²; x+y | Minimum graded-lex exponents (1,0) and (0,1); pure lex would give (0,2) for x+y². | Pass. Carried from [R2]. |
| 2.6 formalDivision (Lean headline) | F=(x²,xy), G=x³+xy²+y³ | Quotients (x,y), remainder y³; x·x²+y·xy+y³=G. Second translated exponent (1,2) avoids the first cone; remainder exponent (0,3) avoids both. | Pass. Carried from [R2]. |
| 2.6 uniqueness/empty/unit controls | m=0; n=0,m=1,F=2,G=3; duplicate F=(x,x) | Empty family gives R=G uniquely. No-variable division gives Q=3/2,R=0. Duplicate second cone is empty, forcing Q₂=0. | Pass; nonzero-series hypothesis excludes division by0. Carried from [R2]. |
| 2.6 zero remainder criterion | I=(x²,xy), G=xy² or y³ | First remainder0 and G∈I; second remainder y³≠0 and G∉I. | Pass in both directions. Carried from [R2]. |
| 2.7 localQuotientHilbertSamuel (Lean definition) | A=k[[x]], I=(x²), O,0 | Values for ℓ=0,1,2: (1,2,2), (0,0,0), (1,2,3). All are finite lengths in ℕ∞. | Pass. Carried from [R2]. |
| 2.7 residue-field normalization | Degree-two point over ℚ | Local quotient length1, ground-field dimension2; definition chooses1. | Pass. Carried from [R2]. |
| 2.7 completion and diagram counts | k[x]_(x)/(x²) and k[[x]]/(x²) | Both give (1,2,2,…); outside diagram {2,3,…}, counts up to degrees0,1,2 are1,2,2. | Pass. Carried from [R2]. |
| 2.7 pointwise and lex order | Five axes and six plane lines | Haxes(1)=6>3=Hlines(1), but Haxes(11)=56<57=Hlines(11); lex chooses axes, pointwise incomparable. | Pass. Carried from [R2]. |
| 2.8 hsStabilization and hsLexStabilization (Lean headline) | I_j=(x^max(3−j,1)) | H₀=(1,2,3,3,…), H₁=(1,2,2,…), H₂=(1,1,1,…)=H₃; stabilization index2 in both orders. | Pass. Carried from [R2]. |
| 2.8 realizability/zero variables | Step functions 1_{ℓ≥j}; K with n=0 | Step functions strictly lex decrease but for j>0 have H(0)=0 and later value1, impossible for a local quotient. For n=0 the only H are constant1 and0. | Pass. Carried from [R2]. |
| 2.9 finiteDegree | D=∅; D=ℕ; D=a+ℕ, H=cY^a | Empty diagram contributes every monomial. Unit diagram degree0 spans iff c unit. For ℓ≥a, family {cY^ℓ} spans iff c unit at every ℓ. | Pass; threshold not inferred from vertex degree alone. Carried from [R2]. |
| 2.10 jet matrix/minors | f=x²(x−1), distinguished0, k=0,1 | B₀=(f), rank0; B₁ columns (f,f′),(0,f), rank0 at0. I_S,0=(f), I_S,1=(f,f′)=(x). | Pass. Carried from [R2]. |
| 2.10 jet vanishing/generator independence | At x=1; replace f by generators f,2f | H₀(1)=2 but H₁(1)=1, so rank condition excludes1. Added column multiple does not change minors' ideal (x). | Pass. Carried from [R2]. |
| 2.10 zero/unit/monotonicity | f=0, f=1; preceding f | Zero gives matrix0 and ideal0. Unit gives full rank and ideal0 of oversized minors. (f)⊆(x) in preceding example. | Pass. Carried from [R2]. |
| 2.11 samuelPresentationIdentity | I=(z²); I=(x,y) | z² has order2 and essential derivative2z with Jacobian2; jet ideal at k=1 is(z), also the contact equation ideal. For (x,y), Jacobian identity, H=(1,1,…) and stratum ideal(x,y). | Pass. Carried from [R2]. |
| 2.11 abstract diagram/incorrect assignment | I=(x+y); f=x² assigned order1 | Division with vertex(1,0) leaves K[[y]], while actual graded-lex vertex is(0,1); both quotient counts ℓ+1. x² has order2, so assigned order1 fails hypotheses. | Pass. Carried from [R2]. |
| 2.12 samuelTransform | Cusp y²=x³ blown up at0 | Hbefore(ℓ)=2ℓ+1; x-chart strict transform v²=x is smooth with Hafter(ℓ)=ℓ+1. At ℓ=1: 2<3, and controlled generator order1<2. | Pass. Carried from [R2]. |
| 2.13 semicoherentPresentation/restriction | (x²/(1−x),2) on D(1−x) | Cosupport {0}; Cartier transform1/(1−x) is a unit, giving empty cosupport. Same coefficients are regular on the one common open. | Pass. Carried from [R2]. |
| 2.13 nonrational contact | z²+(x²+1)³ at (z,x²+1) | Coefficient pair ((x²+1)³,2); order3≥2 at the degree-two point, order0 elsewhere on contact line. | Pass. Carried from [R2]. |
| 2.14 hsSemicoherence | Cusp at origin and smooth points | Horigin=(1,3,5,…), Hsmooth=(1,2,3,…); larger-value locus is closed {0}, with coefficient presentation (x³,2). | Pass. Carried from [R2]. |
| 3.1 exceptionalHistory/disjoint blocks | Empty boundary; births1,2, prefix born1 | Empty year0 counters0. Old block {H₁}, counter1; H₂ remains residual. If prefix born2, old block {H₁,H₂}, counter2. Earlier blocks are removed. | Pass. Carried from [R2]. |
| 3.1 history transform/locality | First blowup preserving initial entry | New exceptional born1 is absent from E¹ born0: s₁=0, although total boundary has one component. On an open missing it, both counts remain0. | Pass. Carried from [R2]. |
| 3.2 invariantWord comparison/prefix/terminal | (2,0;5/2,0;1,0;∞) and (2,0;3/2,1;1,0;∞) | Equal first prefix; 5/2>3/2 decides before counters. For a fixed prefix, terminal0<∞. | Pass. Carried from [R2]. |
| 3.3 recursiveInvariant | Smooth empty-boundary X; cusp; x₃²−x₁²x₂³ | Smooth word (H,0;∞); cusp (2,0;3/2,0;∞); third hypersurface (2,0;5/2,0;1,0;∞). | Pass. Carried from [R2]. |
| 3.3 codimension normalization | Smooth hypersurface in A² versus same curve in A³ | Minimal embedding dimension1 in both; normalized word retains smooth H(ℓ)=ℓ+1, s₁=0 and terminal∞, independent of the ambient extra equation. | Pass. Carried from [R2]. |
| 3.4 invariantProperties/nonincrease | Cusp; fixed marks e₁=2 | Cusp first order drops2→1 after blowup. Bound2! permits3/2 since2!·3/2=3, but excludes1/3 since2/3 is not integral. | Pass. Carried from [R2]. |
| 3.4 denominator iteration/stabilization | e₁=2, ν₂=3/2, ν₃=5/6 | e₂=max(2,3)=3; 3!·5/6=5; e₃=max(6,5)=6. Sequence1,1/2,1/3,… violates the fixed-prefix bound. | Pass. Carried from [R2]. |
| 3.4 strata/terminal branches | Zero coefficient; terminal monomial xy, mark2 | Zero gives smooth contact stratum. Weights(1/2,1/2) give stratum V(x,y), exactly its boundary intersection. | Pass. Carried from [R2]. |
| 3.5 monomialData/minimality | Weights(1/2,1/2),(1,1),(3/2) | First has only minimal pair, new weight0; second has two minimal singletons, pair not minimal; third has singleton, new weight1/2. | Pass. Carried from [R2]. |
| 3.5 extendedInvariant | Two axes with labels H₁ before H₂ | Incidence vectors (1,0)>(0,1); selected z₂-axis is smooth. Union of both axes has tangent dimension2 but dimension1 at0. | Pass. Carried from [R2]. |
| 3.5 selection/restriction | X=C₅⊔C₄⊔six-line curve; U=C₄⊔six-line curve | At degree1 values6,5,3 select o₅ first; on U step empty, then o₄. At degree11 values56,45,57 do not change lex order. | Pass. Carried from [R2]. |
| 3.6 monomialDecrease | Weights(3/4,3/4), mark4 | New pivot weight1/2<3/4; mass3/2→5/4 while terminal0 may remain0. | Pass. Carried from [R2]. |
| 3.6 infinity decrease | Pure power z^d on contact V(z), centre V(z) | Contact supporting space has strict transform∅ after blowing up itself; transformed coefficient cosupport∅. | Pass; not an assertion that every monomial step drops the bare word. Carried from [R2]. |
| 3.7 finitePermissibleResolutionExists | Unit; smooth embedded X; zero on one component | Unit and smooth empty-boundary X need zero steps. Identically zero component keeps total ideal0 under birational pullback, which cannot equal an invertible nonzero ideal. | Pass; generic-nonzero condition used. Carried from [R2]. |
| 4.1 residual normalization/stratum comparison | (x³y,2) with E=x | µ=2,µx=3/2,ν=1/2; residual (y,1),(x³,1) has {0}, original cosupport V(x). Guarded stratum is properly smaller. | Pass. Carried from [R2]. |
| 4.1 boundaryMonomialPart/nonmonomialPart | I=x³y², E=x; E=x,y; E=∅ | Factors (x³,y²), (x³y²,1), (1,x³y²), respectively; each product recovers I and residual has no labelled divisor factor. | Pass. Carried from [R2]. |
| 4.1 companionIdeal branches/maximalOrder | I=x³y², E=x, b=4 or2 | c=2; b4 companion=(y⁴,x⁶), mark4, maximum order4; b2 companion=(y²,2), without a zero mark. | Pass. Carried from [R2]. |
| 4.1 companion order drop | I=x³y², b4; blow up origin | x-chart controlled I=xv², residual v², order2 but total order3<4, so outside original transformed cosupport; y-chart I=yu³ has residual u³ only if u is not labelled, but u=0 is old x-boundary, so residual is unit. New maximum on cosupport is0. | Pass; boundary labels are essential. Carried from [R2]. |
| 4.1 localUnit/monomialRestrictionComparison | I=x²(x−1), b2, E=x | Cosupport {0}, c=0, N=x−1 nonunit globally; on U=D(x−1), N=O. Cartier transform x−1 has order1 at1 and0 elsewhere, so empty mark2 cosupport globally. | Pass; source's global shortcut is avoided. Carried from [R2]. |
| 4.1 homogenization/mark-one | I=y²−x³, µ2; µ1 | T=(y,x²); H=(y²,x³,x²y). For µ1, H=I. Cusp H strictly contains I. | Pass. Carried from [R2]. |
| 4.1 homogenize_equiv/transform | Same cusp, x-chart y=xv | I′=v²−x; H′=(v²,x,xv)=(v²,x). Both mark2 cosupports empty. Each product term's exceptional exponent is (2−i)+i=2. | Pass. Carried from [R2]. |
| 4.1 tangentTransport/étale gluing | u=y,v=y+x²,E=x; v=0 control | Substitution keeps x and H, maps y² to y²+2x²y+x⁴; original I changes. v=0 has order∞, so cannot be an invertible coordinate. | Pass. Carried from [R2]. |
| 4.1 smooth homogenization pullback | Add independent t to cusp | D(I) remains (y,x²), since ∂t f=0; H before/after extension is (y²,x³,x²y). | Pass. Carried from [R2]. |
| 4.1 birth blocks/reset | Prefix first drops in year2, later H₃ born3 | Surviving H₁,H₂ enter the new block; H₃ does not. Removing previous blocks prevents count2 for one divisor. | Pass. Carried from [R2]. |
| 4.1 monomialComponents/mass | No labels; singleton weight1; weights(1,1/4) | Empty gives no threshold subset and mass0. Singleton pivot changes1→0. Pair in third case is nonminimal because first singleton already sums to1. | Pass. Carried from [R2]. |
| 5.1 principalization | (x³) on A¹; zero ideal | Cartier blowup gives total x³, weak unit, reduced support {0}; zero total stays0 and fails invertibility. | Pass. Carried from [R2]. |
| 5.2 embeddedResolution | Node xy=0; nonreduced double line | Node blowup separates two smooth branches. A double line cannot be smooth on its nonempty dense open; the stated nonreduced variant only asks for smooth reduction and constant H. | Pass. Carried from [R2]. |
| 5.3 resolvedLocus/subset criterion/open restriction | X={z=xy}, E={z=0} | Restricted divisor xy has embedding dimension2 and expected dimension1 at0, so unresolved; on D(x) its equation y has independent differential and is resolved. | Pass. Carried from [R2]. |
| 5.4 preserveResolvedPoints | X:y=x²,E:y=0 | Restricted boundary x² has order2. After first x-chart blowup X′:v=x, old E′:v=0, new E:x=0 give coincident boundary points on X′, requiring further cleanup. Away from0 the pair is unchanged. | Pass. Carried from [R2]. |
| 5.5 localIsomorphismResolution (Lean headline) | Smooth X, including doubled-origin line; nodal curve | Smooth examples admit identity: proper as a morphism, surjective, smooth source, U=X dense. Node normalization preserves both punctured branches and has dense inverse image. | Pass; no absolute separatedness is smuggled in. Carried from [R2]. |
| 5.6 relativeEmbeddedResolution | y=x² with E=x versus E=y; contained X=E=x | First gradients dy,dx have rank2, quotient at intersection k. Second restriction k[x]/x² has length2. Contained case restricts boundary to0 and is excluded. | Pass. Carried from [R2]. |
| 5.6 SNC versus smooth | xy=0 as an SNC divisor and as scheme | Divisor has two smooth transverse components; scheme's origin has embedding dimension2>dimension1. Preserving singular SNC locus and producing a smooth source are different conclusions. | Pass. Carried from [R2]. |
| 6.1 projectiveClosure | A¹⊂P¹; Gm²⊂P¹×P¹; double line | Closures have complement1 point and4 curves. Reducing double-line closure destroys its nonzero nilpotent open structure, so reduced hypothesis matters here. | Pass. Carried from [R2]. |
| 6.2 sncCompactification | A¹; Gm² | P¹ boundary has one smooth point; P¹×P¹ boundary has4 smooth curves, with at most2 through each corner and local equation uv=0. | Pass. Carried from [R2]. |
| 6.2 projectivity/preserved open | Already smooth projective U; closure singular away from U | First case boundary ideal O, no principalization steps. In second, every selected centre misses U and each blowup restricts to identity there. | Pass; projectivity comes from composition of projective maps. Carried from [R2]. |
| 6.4 sncCoordinates | b0; boundary on curve; three lines through0 in surface | Equations1, t, and xy(x−y). Counts0≤dim,1≤1; third count3>2 and cannot be distinct parameter hyperplanes. | Pass; algebraic fact is supplied, complex interpretation is transport. Carried from [R2]. |
| 7.1 smoothFunctorialInvariant | C⊔(C×A¹)→C⊔C for cusp C | HC=2ℓ+1; ΛHC=(ℓ+1)²=Hcylinder. With d=2, both modified entries have #(x)=1 and function(ℓ+1)². | Pass; ordinary H would select only cylinder upstairs. Carried from [R2]. |
| 7.1 dimension-count control | Surface and curve meeting; two surfaces meeting | Distinct-dimension counts2 and1, respectively; counting components would incorrectly give2 in both cases. | Pass. Carried from [R2]. |
| 7.1 samuelPresentation_genericFibre | C×A¹_t at generic singular-line point | Raw local H=2ℓ+1 both before/after passage to ℚ(t); ℚ-extended H=(ℓ+1)². Same mark2 cusp presentation pulls back. | Pass. Carried from [R2]. |
| 7.1 regular field pullback/disjoint unions | ℚ and ℚ(s) smooth summands; cusp normalization | Both field summands have empty towers, though no common finite-type field algebra presentation exists. Cusp normalization is not flat and is excluded from regular-pullback comparison. | Pass. Carried from [R2]. |
| 7.1 differential-ideal non-equality | f=x⁴+y⁴+t x²y² | ∂t f=x²y². Relative cubic derivatives span degree4 terms from xfx,yfx,xfy,yfy; coefficients of x⁴ and y⁴ force the even multipliers0, leaving no x²y². | Pass; coefficient equivalence is used instead. Carried from [R2]. |
| 7.2 formalCompletion/level conventions | I=(t) versus I=(t²) in k[t] | Levels k[t]/t^(n+1) versus k[t]/t^(2n+2); cofinal limits both k[[t]], but level1 lengths2 versus4. | Pass. Carried from [R2]. |
| 7.2 specialFormalExcellence | k[x][[t]]; k[[x,y]] | First closed fibre k[x], distinct maximal ideals(t,x),(t,x−1); second closed fibre k, ideal of definition needs2 generators. Both special; only second maximal ideal fails principal-pair condition. | Pass. Carried from [R2]. |
| 7.2 supported special restriction | Completed localization of k[x][[t]] at x | Level n is k[x,x⁻¹,t]/t^(n+1); inverse limit k[x,x⁻¹][[t]], requiring completion after localization. | Pass. Carried from [R2]. |
| 7.2 weakQeResolution | Complete cusp k[[u²,u³]] | Blowup at (u²,u³) has u²-chart k[[u]], regular dimension1/cotangent dimension1; map is identity on punctured spectrum. | Pass. Carried from [R2]. |
| 7.2 adicCompletion_quasiExcellent | I=0; nilpotent I=(e) in k[e]/e² | I0 gives A=completion=A/I. For e²=0 the completion is A, quotient k; both excellent despite nilpotents. | Pass; primary Nishimura text uncertified below. Carried from [R2]. |
| 7.2 rigRegular/principalFormalPair | Complete cusp; k[[x,y]] with I=(x,y) | Cusp singular locus just closed point; punctured ring is field. Two-variable maximal ideal has cotangent dimension2, hence is not principal. | Pass. Carried from [R2]. |
| 7.2 qeLocalFormalReduction/nonreduced fibre | Blow up k[u²,u³] at origin | u²-chart k[u], pulled centre(u²), fibre length2; reduced fibre k length1. Levels have length2(n+1), not n+1. | Pass. Carried from [R2]. |
| 7.2 formal-domain components/generator | Q[[t]]⊔Q(s)[[u]]; t↦unit·t | Two reduced closed points over different fields; both towers empty. Ideals(t)=(unit·t) give equal levels, whereas(t²) changes them. | Pass. Carried from [R2]. |
| 7.3 rigRegularAlgebraization | k[[t]]⟨x⟩; xy=0 family | First levels k[t,x]/t^(n+1), algebraic model k[t,x]. Second generic fibre k((t))[x,y]/xy has a node and is not rig-regular. | Pass. Carried from [R2]. |
| 7.3 supportedFormalTower_algebraizes | Centre(t^N,x) on completed affine plane | Quotient mod t^N determines same open ideal; algebraic ideal(t^N,x) restricts to it. Empty tower has0 centres on both sides; nonempty Cartier centre remains1 marked step. | Pass. Carried from [R2]. |
| 7.4 ElkikPair/conductor | xy=t with ideal(t); xy=0 with ideal(z) | First total space regular; relative Jacobian ideal(x,y) contains t=xy. Second singular line meets D(z), so no z^r is in(x,y). | Pass. Carried from [R2]. |
| 7.4 elkikLifting | Smooth pair(k[t],(t)); first fibre of xy=t²,t³ | Smooth conductor can be0; identity fibre map lifts to identity. Both singular families mod t equal xy=0, but mod t³ equations are xy=t² versus xy=0. | Pass; first-order fibre is insufficient. Carried from [R2]. |
| 7.4 same-field restriction | k=ℚ(s), s↦s+1 on k[t] | Map preserves(t) and is an abstract isomorphism, but sends s to s+1≠s; fails the k-linear lifting hypothesis and belongs to the cross-field comparison instead. | Pass. Carried from [R2]. |
| 7.4 thickFibre_resolutionComparison | Smooth principal pairs and unit generator change | Completed towers have0 centres for all thicknesses; (t^m)=((ut)^m) for u unit. Source comparison bound n²+r is retained for singular cases, not replaced by1. | Pass on displayed cases; source checked for general bound. Carried from [R2]. |
| 7.5 strong quasi-excellent resolution | Field, empty scheme, complete cusp, node | First two need0 steps; cusp resolves to k[[u]]; node has2 surviving branches. Dual numbers have empty regular locus and no dense reduced open. | Pass; generic reducedness is explicit. Carried from [R2]. |
| 7.5 embedded nilpotents | ℚ[x,e]/(e²,xe) | e≠0, but e/x=0 on D(x). Blowup of (x,e) has charts ℚ[x] and∅. Reg(X)=D(x), and its inverse image is dense in A¹. | Pass; previous R02 repaired. Carried from [R2]. |
| 7.6 regular functoriality/coherence | Restrict away from cusp origin, then smaller open; complete cusp | Origin-centre becomes∅ under either composite or two-stage restriction; completed cusp tower is base change with same nonempty centre order. | Pass. Carried from [R2]. |
| 7.7 qePairPrincipalization | Unit on singular cusp; x²y³ on regular formal plane | Unit stays unit but cusp still needs regularization. Second case identity retains multiplicities(2,3); reduced support is xy with multiplicities(1,1). | Pass. Carried from [R2]. |
| 7.7 strict SNC/total support | Irreducible nodal divisor blown up at node | Total divisor C̃+2E is nonreduced; reduced C̃+E has two smooth labelled components meeting transversely. | Pass; source reduction issue noted below. Carried from [R2]. |
| 7.7 qeEmbeddedStrictTransform | Blow up ideal of a point in A² | Literal strict transform of point is∅, total inverse image is P¹. Thus it cannot serve as a smooth strict-transform resolution of the point. | Pass; target explicitly distinguishes these. Carried from [R2]. |
| 7.8 field/affinoid resolution | K⟨u,v⟩/(uv); K⟨e⟩/e² | First has2 regular branches after resolution. Second has one generically nonreduced point and no dense regular open. No finite-generation assertion for a Tate algebra as an ordinary K-algebra is used. | Pass; second input excluded. Carried from [R2]. |
| Worked coefficient formula | I=y³+x⁷+x³y, d3, H:y=0 | DI restricted=(x³), D²I restricted=(x²); coefficient ideal(x¹⁴,x⁹,x¹²)=(x⁹), mark6, versus plain restriction(x⁷), mark3. | Pass; factorial denominators positive for j<d. Carried from [R2]. |
| Worked maximal-contact boundary case | y²−x⁵ with proposed H:x=0 | Initial cosupport {0} lies in H; x-chart transform v²−x³ still has order2 at0 but strict H misses that chart. | Pass; Check discriminates persistence. Carried from [R2]. |
| Lean namespace/layer form | Four elaborated declarations | All4 names start TauCetiRoadmap.ResolutionOfSingularitiesCharacteristicZero; required Layer2 and Layer5 comments:2. | Pass; previous R04 repaired. Carried from [R2]. |
| 7.8 dense smooth locus / Lean hgen | Embedded-nilpotent line; dual numbers; empty scheme | Smooth loci D(x),∅,∅; density values true,false,true. These agree with generic reducedness true,false,true. | Pass; all three cases appear in current README. Carried from [R2]. |

## Not verifiable

- Carried from [R2]: Nishimura–Nishimura, *Ideal-adic completion of Noetherian rings II*, Theorem B, remains uncertified at the primary text. The change does not touch it; no repeat request or new claim of verification is made.
- Ownership against open pull requests without supplied files was not checked. In particular, the earlier report's limitations for AlgebraicModuliForArithmeticGeometry, DiamondsAndVStacks, ComplexComparisonPartII and InverseGaloisAndArithmeticFundamentalGroups remain. Search-index hits are not substituted for reading those full files.
- Untouched source locators and mathematical claims inherit [R2]'s review and limitations. The displayed examples test the statements; they do not prove the general theorems. Lean elaboration verifies signatures, and all three theorem bodies remain admitted.

## Source issues

- none

No new source issue was found in the changed passages. The three source issues recorded by [R2] concern untouched passages and have not been re-audited or withdrawn.

[R2]: packages/ResolutionOfSingularitiesCharacteristicZero/reports/PRREVIEW-ResolutionOfSingularitiesCharacteristicZero~2.md
