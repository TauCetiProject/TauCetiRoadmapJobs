# Review of ArithmeticStatisticsPartV (pull request #1175 at e6310b6)

**Verdict:** needs changes

## R01 (P1) — Give the unconditional Galois bound its missing finite-group input

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:1896` and `TauCetiRoadmap/ArithmeticStatisticsPartV/Suggested.lean:314`.

Claim: the acceptance test includes the unconditional three-eighths bound, while the route explicitly leaves the large-proper-subgroup inequality unproved. Naming a required proposition is not ownership of its proof. There is no declared supplier gap, and the Needs list does not supply it.

Witness: `TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean:54` defines a proposition; line 67 transports an assumed proof between universes. Neither proves classification or the subgroup inequality. The README itself acknowledges this distinction.

Repair: add an owned target proving that every finite nonabelian simple S has a proper H with |H|²>|S|, with a genuine route and its prerequisites; or record a precise, order-compatible supplier gap for that theorem. Connect the unconditional endpoint to it. Keep the conditional arithmetic theorem separate. Test the resulting contract on A₅/A₄, where 144>60, and exclude C₂, where the only proper subgroup gives 1<2. Merely citing the classification proposition does not repair the missing proof.

## R02 (P1) — State quasi-reduction as a predicate, not universal existence

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:2229`–2233, especially “Some upper unitriangular integral change gives a reduced power basis” and the corresponding binary assertion.

Claim: these API bullets assert existence for the preceding arbitrary separable real polynomial/form. That is false. The surrounding definition and the later Checks correctly allow failure of quasi-reduction, so the section contradicts itself.

Witness: g=X²+1/4 has Gram diag(1,1/4). Every allowed upper unitriangular change fixes the first vector 1, of squared length 1; θ has squared length 1/4. The first Minkowski minimum therefore fails. The binary example has the same obstruction.

Repair: write each bullet as the definition of the respective quasi-reduction predicate, explicitly allowing it to be false. Retain unconditional existence only for an arbitrary unimodular lattice basis, and retain eventual existence after the root dilation in §3.32. On X²+1/4, the predicate is false; the swapped lattice basis is reduced; after expansion by ρ>2 the displayed monic basis is reduced. These three conclusions coexist without contradiction.

## R03 (P1) — Own the trace-slice tail instead of requesting an unstated supplier result

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:2332`–2338, “Request the codimension-one sieve with its exact height and boundary constants.”

Claim: a density theorem on a₁=0 and a trace-band variant are planned, but their indispensable restricted tail is neither stated as a target nor supplied by the cited Part III target. This is an undeclared supplier requirement.

Witness: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:1562` and `:1580` count the full weighted coefficient box, with exponent D=n(n+1)/2 and finite residue conditions. The exact slice a₁=0 has dimension one less and is not a fixed finite-modulus condition.

Repair: state and own the needed nonzero-discriminant square-divisor tail on each exact trace slice, including the exponent, height, quantifier order and boundary error, or declare it as a precise supplier gap. Only then deduce the density. Test n=2: a₁=0 gives Δ=−4a₂ and density zero, while the trace band includes odd a₁ and can have positive density. The existing full-box sieve cannot distinguish these by restriction alone. The full-dimensional monogenic lower-bound route does not repair this separately retained target.

## R04 (P2) — Restore the small degrees in the mixed-trace count

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/Suggested.lean:288`–292 and `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:1844`.

Claim: both flexible exponent bounds are quantified only for n≥6. The source's Theorem 1.2 is for n≥2; only its explicit logarithmic comparison, Theorem 1.1, starts at six.

Witness: ref98 lines 28–39, Theorem 1.2, manuscript p.1. For n=2 the least d is 2: binomial(4,2)=6≥5 and binomial(3,2)=3<5; the exponent is 4−12/12=3. The current signature excludes this valid instance.

Repair: use n≥2 in the two-generator and flexible mixed-trace conclusions, leaving n≥6 on the 1.564(log n)² conclusion. State the small-degree handling in the proof route; the existing low-degree linear counts already imply these weaker bounds. Test n=2,d=2 and n=3,r=3,d=4: the respective exponents are 3 and 12, and binomial(6,2)=15>9 in the latter case. The source's Lemma 3.3 itself starts at six; do not silently change that lemma's locator.

## R05 (P3) — Clear the residue gate and consolidate duplicate target text

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:88`, throughout the explicit HTML anchors, and `:1220`–1224.

Claim: the recorded gate fails `residue=169`. Most hits are raw anchor elements, including five adjacent anchors without individual targets in §3.20. The same large-total-ramification assertion also appears at lines 302 and 1206, and the cyclotomic obstruction at lines 1154 and 2604.

Witness: the supplied gate lists `residue=169` and ends `FAIL`; the PR files have not changed. These are formatting/ownership presentation failures, not 169 independent mathematical defects.

Repair: replace anchor stubs with ordinary named headings, update internal links, and consolidate each repeated assertion at one target. Put supplier-only material in the ownership/contracts section and refer to it from the application. Re-run the residue gate. The examples X³−3 and C₃≀C₂ must still resolve to their single owners after the links change.

## R06 (P3) — Disambiguate the sum rejected by the round-label scanner

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:2195`, `Σ_r1/r≪L^(t−2)`.

Claim: the gate fails `round-labels=1`. This occurrence is mathematical notation, not a review-round label; it is a scanner false positive, which still leaves the required gate failing.

Witness: the sole reported occurrence is the reciprocal-r sum in the fixed-prime-factor proof. At t=2 the remaining product is r=1 and its reciprocal sum is 1, matching L⁰=1.

Repair: typeset it unambiguously as `Σ_(r) 1/r≪L^(t−2)` and re-run the scanner. Do not change the mathematical estimate or the gate implementation.

## R07 (P3) — Remove undeclared API names and give definitions discriminating Checks

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:396`–408, `:1676`–1690, `:2237`; `Suggested.lean:7`–31.

Claim: API bullets claim names such as `CubicLocalSpecification.IsAcceptable` and `CubicLocalSpecification.localMass`, but the Lean file has no such declarations. The elementary-two Euler-series definition has only one Check bullet. The module docstring also uses “deferred” and does not follow the requested target-signatures form.

Witness: the 46-declaration signature probe contains none of the seven CubicLocalSpecification names. The sole Euler-series Check is the k=1 dyadic factor/pole-order example. These are README interfaces, not missing Lean headline carriers to encode artificially.

Repair: use prose for API names absent from Suggested.lean; retain backticks only for actual declarations or ordinary mathematical expressions. Add at least three independent Checks for each definition, including T,U,V separately here: at k=1,s=1 their dyadic factors are 2, 1/2 and 5/4; the imaginary selector is (T−U)/4, not T/4. Recast the docstring as target signatures and state which carriers are missing without process language. Do not fill the Lean file with these API checks.

## R08 (P3) — Repair supplier links whose targets still exist under new headings

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:56`–62 and links to AnalyticNumberTheoryPartI/II, including `:1226` and `:2201`.

Claim: numerous fragment identifiers no longer resolve at the supplier heads/main. This is locator drift, not disappearance of all the mathematics.

Witness: Part III has the secondary congruence and sieve targets at lines 1381 and 1389, but no `refinement-cubic-secondary-congruence-count` anchor. Part IV has field counting at line 67, but no `number-field-counting-function` anchor.

Repair: link the actual numbered section heading and name the target in the link text. Apply this to Parts I, III and IV and the old `sN-M` analytic links. Recheck each destination at the specified supplier revision. The secondary and field-count contracts remain the same; R03 is the separate case where the required stronger contract is genuinely absent.

## R09 (P3) — Correct the subgroup-inversion page locator

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:1136`, the citation to ref141 Lemma 2.2 at pp.9–10.

Claim: the conductor-series subgroup inversion is assigned the wrong manuscript pages.

Witness: ref141 lines 505–522 place Lemma 2.2 on printed manuscript p.11 (PDF page 13), with the argument s|G|/|H|. Pages 9–10 do not contain that lemma.

Repair: cite Lemma 2.2, p.11, and distinguish manuscript from PDF pagination. For G=C₃ and H=1 the argument is 3s; for H=G it is s. Those are the same correct scaling factors already planned in the README; only the locator changes.

## Verified sound

The review covered both files at e6310b6, the 15 seeded sections, all 39 admitted theorem statements and all seven supporting definitions. No README locator is explicitly marked unverified. No PR file was edited. The diff outside this roadmap folder is empty. No sorry-backed data, set_option, forbidden imports, copied source passage, or computational implementation was found. This is an extension of Parts I–IV, not a replacement of them.

The targeted worker build passed. I built the missing imported `TauCeti.NumberTheory.BinaryQuadraticForm.Reduction` object and then ran `lake env lean` on Suggested.lean: exit 0, with 39 sorry warnings and no other diagnostics. A scratch copy with `#check @name` for all 46 declarations elaborated; explicit number-field, degree, signature, positivity and normality binders were retained. No statement changed. The mixed-trace scope discrepancy is R04.

The one-tactic scratch probe tried simplification on all 39 admitted theorems. None closed: 38 left mathematical goals, and the relative-wreath probe reached the default heartbeat limit. Reading its native group-action and torsion statement does not identify it with a definition or one pinned lemma. The other statements are also not rfl/infer_instance claims. No padding finding is raised. This probe establishes absence of the tested shortcuts, not truth of the admitted results.

The gate result is **FAIL** solely on `residue=169` and `round-labels=1`; the other recorded counters, including build, imports, sorry-data, stray-files, dirty and outside-folder, are zero. R05 and R06 account for both failures. The independently run dependency check printed:

```text
depcheck: 205 roadmaps, 1454 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Acyclicity does not discharge the missing ownership obligations R01/R03.

### Source sample

Source identifiers below use the README's reference numbers. Duplicated bibliography entries refer to the same work: ref90=ref22, ref91=ref5, ref92=ref20, ref107=ref23. Exact cited versions were used; published ref96 was also compared with ref50. Legal cache text was obtained through the source service, including exact cached arXiv versions. OCR formulas were checked against rendered pages where necessary (ref144 p.42 and ref145 p.7).

| Seeded section | Source text and locator checked | Result |
| --- | --- | --- |
| 3.3 Resolvents/three-torsion | ref93 lines 676–697, Lemma 3.1, Remark 3.2, Lemma 3.3, p.12; ref5 lines 17–27, Theorem 2 p.1, and 1502–1530, Proposition 29 pp.23–24 | Fundamental discriminant, inverse-character pairing, both signs and uniform prime tail agree. |
| 3.4 Cubic local masses | ref5 lines 175–194, Theorem 8 p.3; 1579–1606, Theorem 31/Lemma 32 p.25 | Orders rather than arbitrary étale algebras; discriminant and automorphism weights agree. |
| 3.23 Rigid/relative torsion | ref95 lines 1856–1884, Definition 6.7/Lemma 6.8 pp.33–34; norm-kernel definition at 320–322; pinned norm-extension identity | Normalizer labels and degree-inverse section checked. |
| 3.8 Four-rank moments | ref22 lines 97–196, Theorems 1–3 and six congruence-family formulas, pp.3–4 | Narrow convention, both moment constants and rank probabilities agree. |
| 3.9 Malle obstruction | ref23 lines 31–46, Definitions 1.1–1.2/Conjecture 1.3 p.1; 65–108, §2 pp.2–3; ref141 lines 222–235, Theorem 1.7 p.5 | Conjecture is labelled; cyclotomic logarithm and nontrivial/occurring-family hypotheses retained; Lemma 2.2 page corrected in R09. |
| 3.19 Conductors | ref93 lines 678–697, p.12; ref5 Proposition 29 pp.23–24 | The exact conductor adapter needs the named class-field route; these source lines give the unramified criterion and bound, not a stand-alone conductor equality theorem. Wild three is retained. |
| 3.20 Secondary imports | ref5 Theorem 27/Remark 3 pp.19–20, §7 pp.21–22, §9 pp.27–36; Part III lines 1381–1389 | Import ownership retained; old links need R08. |
| 3.25 Uniform tower estimates | ref95 lines 476–505 (Theorem 3.1/Corollary 3.2/Remark 3.3 pp.10–11), 787–860 (Lemmas 3.13–3.14 pp.16–17), 1122–1141 (Theorem 5.1 p.22), 1286–1302 (Lemma 5.8 p.25); ref144 lines 641–649 and 1662–1682, Theorems 3.1/6.1 pp.42/68 | Five ranges, absolute versus relative heights, and corrected order weights checked. |
| 3.26 Wreath counts/means | ref95 lines 1586–1625, 1678–1699, 1865–1884, 2154–2162, 2334–2359; Theorems 6.1,6.2,6.11,8.1 pp.29–30,37,40–41 | Transposition, occurrence, unit-rank and 2/3-growth hypotheses agree. |
| 3.27 Nonabelian moments | ref96 lines 55–107, 120–140, 245–300; §§1–2 pp.378–384; ref97 lines 1588–1665, Lemma 4.9/Corollary 4.10/Theorem 4.11 pp.655–657; ref20 Theorem 8 p.5 | Rigid/unrigid factors, conditional predictions, restricted residue calculation distinguished. |
| 3.28 Field bounds | ref98 lines 20–50, 235–282, Theorems 1.1–1.2 pp.1–2 and Lemma 3.3 p.5; ref99 Theorem 1.6 p.3 and §3 p.5 | Source distinction n≥2 versus n≥6 gives R04; AH exceptions transported correctly. |
| 3.29 Special Galois/quartic | ref143 lines 210–216 and 365–379, Theorem 2.2/Proposition 3.3 pp.5/8; ref99 §6 pp.9–10; ref102 Proposition 2.8/Remark 2.10 pp.734–737; ref108 Theorems 7–8 pp.57–58 | S₄/A₄ multiplicities and wild conductor factors retained; unconditional proof ownership is R01. |
| 3.31 Pell | ref104 lines 41–94, §1 p.2; ref139 Theorem 1/Corollary 1 pp.2037–2038 and Lemma 2 p.2039; ref145 lines 254–262 and rendered p.7, Theorem 2.7; lines 429–434, Theorem 4.1 p.11 | Historical bounds are not the 1−α theorem; finite-prime-factor matrix probabilities recomputed. |
| 3.32 Reduction/sieves | ref105 lines 1100–1202, §5 pp.24–26; ref106 lines 3195–3223 and 3269–3296, Theorem 7.1/Lemma 7.2 pp.51–53 | Corrected dilation/trace issues substantiated; R02/R03 remain. |
| 3.35 All small degrees | ref142 lines 1182–1184, 1362–1381, 1449–1475, Lemma 14/Theorem 17/§3.2 pp.1583,1585–1588 | The nonsymmetric-quintic sieve includes A₅; the linear D₄ contribution is expressly included. |

### Computed adversarial pass

The 142 rows below record named statements and defining interfaces, with actual finite values, boundary values or substituted exponents. These are separating tests and consistency checks, not numerical proofs of asymptotic theorems. “Retain” means no change was indicated by that test. References are README line numbers unless marked Lean. Rows marked R01–R09 remain defects. Conditional statements are tested under their stated hypotheses, not promoted to unconditional theorems.

| Statement | Instances and values on the two sides | Result / change |
| --- | --- | --- |
| Conventions, sign/height (29) | x⁴−y⁴: 4I³−J²=4(−12)³=−6912=27(−256); A=−1,B=0: 27H_E=108=4H_IJ | Retain. |
| Embedded counting convention (66) | S₃ cubic: 3 copies·(1/3)=1; cyclic cubic: 1·(3/3)=1; quadratic inverse-Aut weight 1/2 | Retain both normalizations. |
| Splitting symbol/local sets (90) | At p=2, 15 nonzero coefficient vectors, 1 zero vector; x³ has one triple root, zero form has no symbol | Retain zero exclusion and mod-p² distinction. |
| Reduction algebra (140) | x³ mod2 gives F₂[t]/t³, dimension3, not F₂³; xy(x+y) gives three reduced F₂ factors | Retain both directions. |
| Splitting densities (160) | p=2 numerators (1,3,2,6,3), denominator16; sum15/16=1−1/16 | Retain all five types. |
| Maximal splitting densities (180) | p=2: (1,3,2,3,3/2)/16; ramified retention fractions both1/2 | Retain. |
| Maximal/non-total densities (200) | p=2: U=21/32=(3/4)(7/8), V=9/16=(3/4)²; p=3: U=208/243,V=64/81 | Retain. |
| Maximal field dictionary (220) | x³−x−1 has squarefree −23, index1; cyclic discriminant49 stays in cubic fields, but not nowhere-total family | Retain distinction. |
| Davenport–Heilbronn count (240; Lean47) | Signed constants ratio (1/4)/(1/12)=3; local product cancels ζ(2), leaving 1/(2·6ζ(3)) or 1/(2·2ζ(3)) | Retain. |
| Unramified resolvent correspondence (262) | D=−23: conductor1; x³−2: −108=(−3)·6², so conductor6, not unramified | Retain converse with S₃. |
| Three-torsion/cubic fibre (282) | Cl(−23) has three reduced classes, (3−1)/2=1 cubic; trivial 3-torsion gives(1−1)/2=0 | Retain. |
| Large-prime total ramification (302) | x³−3 at p=3 enters for X>243; X/p² at 243 is27, not X/3=81 | Retain uniform p² scale; consolidate with1206. |
| Squarefree mod4 (322) | Through1000: counts200,204,204; total608; each main term2000/π²≈202.642 | Retain three residue families. |
| Quadratic discriminant count (342; Lean343) | Negative fundamental D with 0<−D<25: ten; 3·25/π²≈7.599, difference2.401<√25 | Retain strict cutoff, D=1 excluded. |
| Mean three-torsion (366; Lean60) | Derived mean real 1+2/6=4/3, imaginary 1+2/2=2; finite negative sample below25 totals12 over 10, mean6/5, not a finite identity | Retain asymptotic quantifier. |
| Local specification definition (388) | Empty infinite-place set mass0; real-only1/6; complex-only1/2; both2/3 | Retain; R07 names. |
| Local mass API (388) | At p=2 all maximal orders mass7/4, all orders8/3; empty specification0 | Distinguishes maximal from all orders. |
| Local Haar/mass identity (438) | GL₂(F₂)/2⁴=6/16=3/8; (3/8)(7/4)=21/32; (3/8)(8/3)=1 | Retain. |
| Acceptable-order asymptotic (458) | All maximal finite factors (1−1/p)(1+1/p+1/p²)=1−1/p³; real prefactor 1/12 | Recovers cubic constant. |
| Roberts secondary (480; Lean224) | Error5/6−1/48=13/16<5/6; imaginary/real secondary ratio√3, first-term ratio3 | Retain distinct ratios. |
| Three-torsion secondary (501; Lean240) | At p=2 secondary Euler factor 1−(2^(1/3)+1)/6≈0.623346; ζ(1/3)<0 | Retain negative secondary correction. |
| Strongly acceptable secondary (522) | Empty local set gives both coefficients0; maximal p=2 first factor 21/32 differs from secondary≈0.623346 | Retain two independent local densities. |
| Mertens quadratic forms (542; Lean609) | Integral Δ multiple4 for x²+y²: Δ=−4; stabilizer in SL₂ has4 elements, unweighted orbit count1; main coefficientπ/18≈0.174533 | Retain unweighted convention. |
| Quadratic-character interval bound (562) | Nonprincipal χ mod3: χ(1)+χ(2)=0, χ(1)=1; principal sum over1…3m equals2m | Nonprincipal hypothesis discriminates. |
| Siegel indefinite forms (574; Lean633) | D=5 norm-one unit(3+√5)/2 has log≈0.962424; D=20 order period is3 times this; scaling a form does not replace its stabilizer by the larger-order regulator | Retain primitive/content distinction. |
| Classical imported counts (612) | Real/imaginary cubic coefficients1/(12ζ3),1/(4ζ3), ratio3; primitive quadratic correction divides byζ3 | Retain as references, no new owner. |
| Rigid field family (636) | n=1 gives1 label, quadratic2, S₃ cubic3·6=18; at heightD−1 count0 and atD full multiplicity | Retain normalizer, not Aut(G). |
| Relative torsion splitting (674) | C₃,d=2: norm∘extension=x², corrected section x^(2·2)=x; identity extension relative cardinal1 | Retain inverse-degree section. |
| Relative splitting bad prime (674) | C₂,d=2: x²=1 for every x, hence no inverse-power section; ℓ divides degree | Exclusion necessary. |
| S-integral orbit family (698) | Degree1 identity discriminant1; split degree3 algebra Aut6 versus S₃ field Aut1; stabilizer must distinguish these | Retain degree2–5 field restriction and stabilizers. |
| Jacobian mass (716) | Split cubic p=2 mass1/6 times GL factor3/8 equals1/16 | Retain coefficient/group-measure conversion. |
| Quartic/quintic constants (730) | Quartic archimedean1/48+1/8+1/16=5/24; quintic1/240+1/24+1/16=13/120 | Retain signature weights. |
| Quartic class-group fibre (751) | S₃ cubic resolvent has automorphism1; cyclic cubic has3 conjugate quadratic labels for one A₄ quartic | Retain multiplicity1 versus3. |
| Low-degree mass ratios (769) | Over Q: quadratic mean real4/3, imaginary2; cubic ordinary real5/4, complex3/2; narrow real2 | Retain ordinary/narrow difference. |
| Quartic count (788; Lean138) | p=2 factor 1+1/4−1/8−1/16=17/16; signature sum5/24 | Retain S₄ restriction. |
| Quintic count (808; Lean138) | p=2 factor 1+1/4−1/16−1/32=37/32; signature sum13/120 | Retain S₅ restriction. |
| Number-field-base count (828; Lean157) | F=Q,n=2 weighted constant3/π²; multiply Aut2 gives unweighted6/π² | Retain weight1/n per embedded copy. |
| Cubic two-torsion mean (848; Lean120,697) | F=Q,a=1 ordinary1+2^-2=5/4,narrow2; a=0 ordinary=narrow3/2 | Retain relative norm kernel. |
| Four-rank conic formula (871) | D=5: soluble factor classes represented by b=1,5, quotient by complements gives2/2=1=2^0 | Retain complement factor. |
| Six-family Jacobi expansion (887) | Empty symbol product1; (5/13)=−1 gives (1−1)/2=0 for the positive-symbol selector | Retain sign and zero-factor behavior. |
| Maximal unlinked supports (903) | k=0 support cardinal1; k=1 maximal size 2=2^1; a linked pair with phase−1 cannot be an unlinked support | Retain k=0 and phase distinction. |
| FK coefficient (919) | Subspace totals N₀=1,N₁=2,N₂=5,N₃=16; real coefficients1,3/2,11/4; imaginary 1,2,5 | Retain. |
| Narrow/wide comparison (935) | Q(√3): ordinary class group1, narrow C₂; both four-ranks0 despite distinct two-ranks | Retain no identification of whole groups. |
| Rank moment uniqueness (951; Lean328) | p=2,u=0: moments k=0,1,2 equal1,2,5; point mass at rank0 has1,1,1 and fails k=1 | Nonvacuous hypotheses. |
| Four-rank moments/law (980; Lean74,97) | η∞≈0.288788; imaginary P₀=η∞,P₁=2η∞; real P₀=2η∞,P₁=4η∞/3 | Retain distinct laws and k=0. |
| Cohen–Lenstra prediction (1000) | G=1 surjection count1; C₃ has Aut2, distinguishing inverse-Aut weight1/2 from1 | Retain conjectural status. |
| Malle invariants (1042) | Regular C₃ index2,a=1/2; regular S₃ index3,a=1/3; identity has index0 and is excluded from minimum | Retain nontriviality. |
| Malle prediction (1090) | C₃/Q b=2/2=1, C₃/Q(ζ₃) b=2/1=2; logarithmic exponents0 and1 | Retain base-field dependence. |
| Abelian discriminant series (1132) | V₄/Q smallest-prime elements3, cyclotomic degree1, pole order3; cumulative powerX^1/2(logX)²; trivial group excluded | Retain pole-to-count factor 1/a. |
| Klüners obstruction (1154) | \|D_L\|=27D_(L/K); square-root logarithmic lower scale versus predicted square-root scale has ratio logX→∞ | Retain; consolidate 2604. |
| Conductor identity (1174) | x³−3: −243=(−3)·9²; x³−2: −108=(−3)·6² | Retain wild conductor9. |
| Quadratic order torsion (1188) | D=−39 has class number4; conductor9 has class number36 and residue 3-kernel C₃²; 3-torsion9 exceeds tame-only bound3 | Retain extra wild dimension. |
| Total-ramification union (1206) | At M≥1, sum over integers n>M of1/n²≤1/M; prime sum is smaller | Retain; duplicate R05. |
| Imported secondary estimates (1226) | At m⁴=X the condition holds at equality; m/T term at T=m equals1, not0 | Retain dyadic contract; R08 link. |
| Relative small-split-prime bound (1232) | K=Q base discriminant factor 1; d=2,ℓ=3 permits θ<1/(12(N−1)); M=0 excluded | Retain relative-degree exponent. |
| Largest integer-lattice minimum (1248; Lean367) | Q(i) basis(1,i) lengths1,1; generic diag(1,T²) last minimumT while covolume^(1/2)=√T | Arithmetic multiplication is indispensable. |
| Small square-ideal generators (1264) | Q(√−5): I=(2,1+√−5), I²=(2), norm of generator4 is a square | Retain class-to-generator route. |
| Square-norm/nonprimitive comparison (1278) | Cubic exponents1/6+1/6=1/3; in an index2 subfield norm(β−x) is a square polynomial | Retain separate genus case. |
| Two-torsion saving (1294; Lean350) | n=3 exponent1/3,n=4 exponent3/8; ε=1/(4n) leaves saving1/(4n) below1/2 | Retain all n≥3. |
| Elliptic point/rank bounds (1308; Lean374) | y²=x³−x: cubic algebraQ³ class contribution0; Δ=64,ω=1, rank upper RHS4; singular Δ=0 excluded | Retain equation discriminant. |
| Cubic two-torsion feedback (1324; Lean357) | β=0.2782386677; a=1/[6(1−β/log2)]=0.2784337427<1/3 | Retain denominator, not1−β. |
| Uniform quadratic bound (1340; Lean502) | F=Q: D=h₂=1, RHS scaleX; X<1 gives0 fields | Retain degree-uniform constants. |
| Shintani order bound (1354) | At X=D³h^(2/3), hD^(9/2)X^-1/2=D³h^(2/3)=X | Retain threshold and separate F=Q case. |
| Relative torsion propagation (1368) | F=Q: sqrtX+X; X=1 gives2, no division by zero | Retain. |
| Cubic-order mass identity (1372) | At split prime11 in Q×Q(√5), embedded suborders3; orbit masses1+1/2=3/2, not 2·1/2=1 | Corrected Aut(R) weight is necessary. |
| Local order series (1382) | q=3,u=1/9: totally ramified2187/1936, split675/484; their ratio100/81=(1+u)² | Retain all five numerator types. |
| Cubic character Euler expansion (1390) | χ³=1: (1−χ²u²)/(1−χu)=1+χu; unit ideal coefficient1 | Retain χ² denominator and no wild-prime deletion. |
| Five-range bound (1415) | Four joining values D²,D^(5/2)h^(2/3),D³h^(2/3),D³h^(2/3); D=h=1 givesX | Adjacent bounds agree. |
| Tower tail (1429) | Y>√X gives empty family since D_top≥D_lower²; m=1 does not satisfy the stated m≥2 hypothesis | Retain absolute height. |
| Wreath fibre (1454) | H=1,d=1 gives C₂ and2 compatible labels; regular V₄ has no single transposition | Retain permutation hypothesis. |
| Thin two-groups (1470) | Regular V₄ nonidentity moves4 points in two cycles, index2; D₄ degree4 has a transposition, index1 | Distinguishes thin from linear families. |
| Tower counting constants (1491; Lean515) | m=1,k=Q gives6/π²; m=0 count1 has ratio1/X→0 | Retain m positive. |
| Two-extension torsion means (1507; Lean539) | m=1,k=Q averages equal-density4/3 and2 to5/3 | Retain signature weights. |
| Relative wreath mean (1525; Lean578) | Unit-rank u=0 gives2,u=1 gives4/3; an empty signature family has denominator0 and is excluded | Retain occurrence hypothesis. |
| Embedded wreath type (1548; Lean387,569) | G=C₃ anti-diagonal extension is S₃ with3 outside involutions in1 class; G=C₂ gives V₄ with2 such classes | Retain embedded conjugacy, not abstract group only. |
| Nonabelian moment interface (1586) | C₃ type: Aut2, outside class size3; rigid/unrigid multipliers imaginary2,real6 | Retain distinct infinity selectors. |
| Admissibility/abelianization (1626) | G=1,F=C₂ is generated by its unique outside involution; F=1 has0 outside involutions | Retain admissibility, reject vacuous type. |
| Embedded type catalogue (1642) | Swap C₂ and a base-coordinate C₂ have projection image sizes2 and1; diagonal automorphisms cannot interchange them | Retain distinct orbits. |
| Elementary-two Euler series (1676) | k=1,s=1 dyadic T=2,U=1/2,V=5/4; T pole order 2, V order 1 | R07: separate discriminating Checks. |
| Elementary-two divergence (1692) | m=2: G_T dyadic(1+m/2)2^-m=1/2; main scale XlogX, proper-image scale at most X | Retain k≥1. |
| Low-degree nonabelian means (1706; Lean643) | n=3,4,5 overQ: imaginary 1/2,1/4,1/12; real 1/6,1/24,1/120 | Retain factorials and infinite places. |
| Fixed-factor residue (1712) | p=3: A=20/27,B_min=16/27>0; p=2 B_min=0; χ(2)=±1 gives1/4,3/4 | Retain separated dyadic factor. |
| Restricted L-value mean (1726) | Diagonal m=1 density2/π²; odd factor3 changes it to(2/π²)(3/4); εn=1 principal character is excluded | Retain restricted family, not unrestricted positivity inference. |
| A₄ kernel correspondence (1748) | Two eligible kernels·24=48; one S₃ orbit·48=48; trivial C₃ action gives C₂²×C₃, not A₄ | Retain action conditions. |
| Sampling identity (1748) | List[0,48],m=1 estimates0,96 mean48; m=2 estimates0,48,48,96 mean48 | Mathematical expectation identity only; no algorithm required. |
| Small trace-zero element (1790) | Q(√2): α=√2 has trace0,minpolyX²−2; rational trace-zero element must be0 | Retain nonzero/nonrational and primitive distinction. |
| Schmidt bound (1806; Lean257) | Base degree1,n=2 exponent1;n=4 exponent3/2; T<D_base^n yields empty family | Retain absolute cutoff and uniform base quantifier. |
| Mixed-trace Jacobian (1824) | n=6,r=3: d=4 gives15<18,d=5 gives21>18; n=9,r=4,d=4 gives35<36 | Exceptions excluded correctly at stated n≥6. |
| Finite-fibre theorem (1828) | (x,y)↦(x,xy): determinantx, fibre(0,0) infinite, fibre(1,b) singleton; x² fibre0 has1 point≤2 | Retain exceptional hypersurface. |
| Finite-fibre characteristic (1828) | In characteristicp derivative ofx^p is0; in characteristic0 derivative ofx² is2x≠0 | Retain characteristic-zero route. |
| Lemke Oliver–Thorne count (1844; Lean277) | n=2,d=2 gives exponent3; n=3,r=3,d=4 gives12 with15>9 | R04 restores valid small-degree instances. |
| Cyclic prime count (1865; Lean474) | p=2 exponent1,p=3 exponent1/2; characters per fieldp−1=1,2 | Retain dividing character labels. |
| Galois three-eighths (1884; Lean296,314) | h=60 yields0.331216389<0.375; refined17/48<18/48; V₄ logarithmic factor not a pure square-root bound | Arithmetic tests pass; R01 universal finite-group input. |
| Finite-group boundary (1896) | A₅,A₄:12²=144>60; C₂,{1}:1²=1<2 | R01 nonabelian qualifier and owner needed. |
| Fixed quadratic resolvent cubics (1911; Lean484) | D=−3 admits conductor9 and −243; D=−23 conductor1 gives one cubic; −3 is the logarithmic exceptional resolvent | Retain exceptional branch. |
| Baily quartic fibre (1931) | Cubic splitting111,12,3 gives respectively3,1,0 square-norm squarefree ideal choices | Retain norm-square filter, not arbitrary ideals. |
| Weighted cubic partial summation (1960) | For N(T)=cT, integrating weightt^-1/2 gives2c√T+O(1), not c√T | Retain integration boundary term. |
| Quartic torsion applications (1978; Lean672) | a≈0.278433743, total exponent1/2+a≈0.778433743; cyclic resolvent has3 labels per A₄ field | Retain weighted cyclic branch. |
| Governing field definition (1999) | d=−4,p=5 gives fundamental−20 and genus two-rank1;p=3 gives−12 nonfundamental | Retain admissibility and conjugacy invariance. |
| Eight-rank field (2033) | p=5,h(−20)=2;p=17,h(−68)=4; both fail8 divisibility despite17≡1 mod8 | Retain full splitting criterion. |
| Fixed-field arithmetic data (2037) | 2^36/128²=2^22; Minkowski bound≈12.93514; smallest norms81,25,49,14641 exceed12 | Conditional arithmetic calculation; basis-data hypotheses remain explicit. |
| Principality transfer (2072) | Total ramification degree e>1 and unramified e=1 force intersection degree1; Cl(E)=1 surjecting implies Cl(L)=1 | Retain norm-surjectivity input. |
| Sixteen-rank spin criterion (2076) | Replacing π by πβ² multiplies symbol factors by squares, each with value1; p dividingF gives nonunit residue | Retain units domain and correction factor. |
| Joint-spin bound (2092) | Singleton order4 automorphism has S∩S^-1 empty; singleton involution has intersection size 1; emptyS forbidden | Retain nonempty/skew condition. |
| No sixteen-rank governing field (2114) | Predicted positive cX/logX divided by X^(1−δ) equals cX^δ/logX→∞ for δ>0 | Conditional contradiction, not an unconditional claim. |
| Pell radicands (2135; Lean447) | 1,2,5 included;3 excluded; D_field(2)=8≠2;1 excluded from field-rank slices | Retain junk/boundary treatment. |
| Negative Pell subset (2135; Lean451) | d=1:(0,1);d=2:(1,1);d=5:(2,1), all give−1;d=3 mod3 would require square2 | Retain integer-solubility predicate. |
| Pell proportion (2135; Lean455) | X≤1 gives0/0=0 by Lean convention; X=3 has radicands1,2, both soluble, ratio1 | Retain finite convention distinct from limit. |
| Historical Pell bounds (2171; Lean462) | α≈0.419422442<1−α≈0.580577558<2/3; for X≥e,logX^1/2≤logX^.62 | Retain historical scope. |
| Fixed-prime-factor Pell bound (2177; Lean468) | Symmetric GF₂ sizes0,1,2,3: nonsingular 1/1,1/2,4/8,28/64 =1,1/2,1/2,7/16 | Retain q₁…q₄. |
| Legendre graph convention (2197) | (5/13)=−1 gives two-vertex Laplacian rank1 and8²−65=−1; (5/41)=1 gives rank0 | Retain negative-symbol edges. |
| Reciprocal-r estimate (2195) | t=2 remaining r=1 gives sum1=L⁰ | R06 typography only. |
| Polynomial Gram metric (2217) | X²+1 gives diag(1,1),X²−2 gives diag(2,4); doubled complex norm would give wrongdiag(2,2) | Retain once-per-complex-pair metric. |
| Unimodular reduction (2227) | diag(2,1) reduces by swap to diag(1,2); [[1,−1],[−1,3]] shortens second vector by adding first, length 3→2 | Retain general lattice existence. |
| Monic quasi-reduction (2229) | X²+1/4 has θ²-norm1/4<1; every allowed change fixes first 1 | R02 universal claim false; predicate false. |
| Binary quasi-reduction (2231) | x²+2xy+3y² underx↦x−y becomesx²+2y²; x²+y²/4 still has a vector ofnorm 1/2 | R02 distinguish predicate from existence. |
| Strong reducedness (2233) | diag(1,2) unique up tosigns; diag(1,1) also hasswap, which is not diagonal | Retain non-uniqueness at ties. |
| Squarefree discriminant⇒S_n (2272; Lean269) | Cubic−23 and229 give normal degree6=3!; cyclic49 gives3≠6 and fails squarefree hypothesis | Retain. |
| Monic coefficient sieve (2288) | n=2 weighted box dimension exponent3; tracezero Δ=−4a₂ divisible4 always | Full-box result cannot imply slice positivity. |
| Weak quasi-reduction (2302) | Expanded X²+ρ² gives diag(1,ρ²), reduced for ρ>1; inverse dilation gives diag(1,ρ^-2), not reduced for ρ>1 | Retain corrected expansion. |
| Strong ring fibres (2318) | Replacingθ by−θ sends g to g*= (−1)^n g(−X); ring is unchanged, so equality without reflection is too strong | Retain sign alternatives. |
| Trace-restricted sieve (2332) | n=2, a₁=0: κ₂(2)=0; band a₁=1 hasΔ=1−4a₂≡1mod4 | R03 restricted-tail owner missing. |
| Short-generator upper bound (2346) | n=2 exponent2;n=3 exponent5; reducing a₁ mod n leaves n possibilities, not O(Y) | Retain translation normalization. |
| Regular monic region (2362) | n=2 dilation(a₁,a₂)↦(Ya₁,Y²a₂) hasJacobianY³; roots separatedc become separatedcY | Retain full dimension. |
| Regular monic sieve (2378) | An empty local class givesρ=0 and violates positivity; residueΔ≡1mod4 permits positive dyadic factor | Retain actual local conditions. |
| Generator multiplicity (2396) | \|m₂\|≤K/Y<1 for Y>K forces m₂=0; m₀ has O(Y) choices andm₁ has O(1) | Retain O(Y) loss. |
| Monogenic lower bounds (2412; Lean191,207) | n=2 exponents1 inD,2 inY;n=3 exponents5/6 inD,5 inY | Retain squarefree,signature,monogenic predicates. |
| Monogenic asymptotic conjecture (2428) | n=3 exponent5/6; ±translation contributesfactor 2; unrestricted tracezero quadratic density0 | Retain conjectural status andn≥3. |
| Imported binary factors (2446) | Quarticp=3:42768/59049=176/243;dyadic384/1024=3/8 | Retain corrected supplier factor. |
| Binary form sieve (2458) | Oddn=3 error exponent4−1/6=23/6<4; evenn=4 conditionalτ must satisfy9τ<5 | Retain conditional tail, no asserted numerical even exponent. |
| Arithmetic Bertini (2478) | n=3 maximal densityζ(2)^-1ζ(3)^-1; repeated-root nonregular section excluded by discriminant 0 | Retain odd/even distinction. |
| Regular binary-region sieve (2494) | Coefficient dilationt hasvolume t^(n+1),discriminant t^(2n−2); n=3 givesboth power 4 | Retain fixed region andpositive ρ. |
| Invariant-order fibres (2508) | OverZ h₂=1; overa base with h₂=2 the even-degree bound doubles | Retain general S-integer correction. |
| Compact transporters (2522) | n=2 formxy fixed bydiag(u,u^-1) for all u>0, noncompact; n≥3 separated projective roots eliminate thisone-parameter stabilizer | Retain n≥3. |
| Binary field lower bound (2536; Lean408) | n=3 exponent(4)/(4)=1;n=4 exponent5/6 but conditional; n=5 exponent3/4 | Retain odd-degree Lean scope. |
| Alternating transfer (2552) | n=3 normal closure S₃,quadraticfixedfield A₃=C₃; multiplicitybound2^(3!)=64; −108 notsquarefree | Retain finite/infinite ramification conditions. |
| Alternating-extension lower bound (2568; Lean424) | Totally real n=3 gives positive 229; one complex pair givesnegative −23; two complexpairs positive sign doesnot imply total reality | Retain actual infinity condition. |
| All fields degree≤5 (2584; Lean181) | Quartic total coefficient=c_S4+c_D4, c_D4>0; quintic proper transitive groups have0 transpositions versus10 inS₅ | Retain D₄ andA₅ treatment. |
| Cyclotomic subfamily (2604; Lean395) | C₃≀C₂ degree6 index2; removeO(X^(3/8+ε)),ε<1/8, fromΩ(X^1/2logX) | Retain; consolidate 1154. |
| Tame nonabelian mass (2620) | F=V₄,p=3,s=1:1+2/3=5/3; F=S₃,p=5:1+1/5=6/5; F=1 mass1 but inadmissible | Retain p∤\|F\|; S₃ at p=3 is excluded. |
| Primitive quadratic class number (Lean621) | D=−23 gives6 classes (3 positive and3 negative); D=−4 gives2; non-discriminant D=2 gives0 | Retain: this definition does not impose positive definiteness. |
| Norm-one regulator (Lean628) | D=5 minimalpositive Pell t=3,u=1 giveslog((3+√5)/2); D=20 t=18,u=4 gives3 times this; D≤0 has empty Pell set, sInf=0 and log0=0 | Retain norm one, not fundamentalnormminusone unit. |

### Pin and ownership audit

Opened the declarations below at the manifest pins, not a newer library. In this table, Mathlib paths are relative to the pinned Mathlib checkout; TauCeti paths are relative to the pinned Tau Ceti checkout.

| Declaration / object | File and line | Boundary checked |
| --- | --- | --- |
| `NumberField.finite_of_discr_bdd` | `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:494` | Finite-dimensional intermediate fields in a fixed extension, bounded absolute discriminant; this justifies finite-support counts. |
| `NumberField.abs_discr_gt_two` | same file `:273` | Requires rational degree greater than one; degree one cannot be discarded without a hypothesis. |
| `ClassGroup.extendedHom` | `Mathlib/RingTheory/ClassGroup/ExtendedHom.lean:47` | Native class-group extension, not a new carrier. |
| `ClassGroup.relNorm_extendedHom`, `relNorm_comp_extendedHom` | `TauCeti/RingTheory/ClassGroup/RelNorm.lean:166`, `:174` | Composite is degree power, not identity; Dedekind-domain finite torsion-free extension context. |
| `NumberField.NarrowClassGroup` | `TauCeti/NumberTheory/NumberField/NarrowClassGroup/Basic.lean:83` | Native narrow carrier; does not itself supply the relative narrow norm. |
| `TauCeti.NumberField.IsMonogenic` | `TauCeti/NumberTheory/NumberField/Monogenic.lean:68` | Body is existence of an integer-ring element generating its ℤ-algebra; it does not impose a height, squarefree discriminant or Galois type. |
| `isMonogenic_iff_exists_index_eq_one` | same file `:85` | Native index-one characterization reused. |
| `IntegralPrimitiveElement.index_eq_one_of_squarefree_discr` | `TauCeti/NumberTheory/NumberField/Index/Discriminant.lean:142` | Squarefree minimal-polynomial discriminant, not a blanket assertion about arbitrary presentations. |
| `NumberFieldOrder.eq_maximal_of_squarefree_discr` | `TauCeti/NumberTheory/NumberField/Global/Orders/Discriminant.lean:215` | Native order maximality; correctly left to this owner. |
| `Measure.ext_of_mgf`, `Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp` | `TauCeti/Probability/Moments/Determinacy.lean:153`, `:243` | Finite real measures with neighborhood/exponential integrability; does not prove the rank-grid theorem from its different growth assumptions. |
| `exists_isArithFrobAt_int_of_liesOver`, `isArithFrobAt_eq_of_isUnramifiedAt` | `TauCeti/NumberTheory/NumberField/Frobenius.lean:97`, `:149` | Galois/unramified hypotheses; conjugacy-invariant class functions still required. |
| `ClassificationStatement`, `classificationStatement_of_zero` | `TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean:54`, `:67` | Statement and conditional universe transport only; R01. |
| `NumberField.dedekindZeta_residue` | `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:56` | Existing residue constant reused in tower series. |

The object searches used the roadmap grep/show tools, main, board packages and the supplied open heads: field counts and discriminants, class-group torsion/norms, monogenicity, binary order reduction, squarefree field discriminants, Malle invariants, elliptic integral-point bounds and mixed-trace interpolation. No duplicate fully qualified name among the 46 declarations was found. The new objects here are statistical applications, the real-metric reduction adapter, the embedded-label normalization and their field-transfer arguments. The native carriers, order maximality, generic moment determinacy and interpolation theorem are imports. The local repeated targets are R05, not a second foundational roadmap.

Resolved supplier text includes the following concrete anchors by content. Old URL fragments are separately covered by R08. Earlier arithmetic-statistics parts were read at their supplied open heads; existing roadmaps were checked on main, including the completed folders. Main EffectiveBounds and HeightsAndUnits were also used as shape/context examples.

| Supplier | Resolved location and actual supplied object |
| --- | --- |
| ArithmeticStatisticsPartI | `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:66` cubic action, `:90` cubic rings, `:474` acceptable weights, `:1222` discriminant families; binary-order and local-family targets also present. |
| ArithmeticStatisticsPartII | `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:174` Delone–Faddeev, `:258` local sets, `:310` maximality, `:574` quartic parametrization, `:614` resolvents, `:634` quartic maximality, `:1538` binary factors, `:1732` quintic parametrization, `:1752` quintic maximality. |
| ArithmeticStatisticsPartIII | `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:1078` finite cubic congruences; `:1381`, `:1389` secondary contracts; `:1542`, `:1562`, `:1580` monic tail/sieve; `:1775`, `:1801` conditional binary tail/sieve. Full-box targets do not supply R03's slice. |
| ArithmeticStatisticsPartIV | `TauCetiRoadmap/ArithmeticStatisticsPartIV/README.md:67` counts, `:98` torsion, `:130` Gaussian counts, `:613` matrix kernels, `:648` symmetric ranks, `:826` class-group prime-power ranks. |
| ClassFieldTheory | `TauCetiRoadmap/ClassFieldTheory/README.md:1799`–1872, Layer 13: norm/class fields, ordinary and narrow class fields, quadratic ring-class fields and conductor–discriminant. |
| AnalyticNumberTheoryPartI | `TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md:1714`, `:1728`, `:2700`: §§2.48–2.49 and 3.32, zero/prime inputs and restricted Pell denominator; §§2.5,2.21,2.32 provide the stated Dedekind/convexity/Brauer–Siegel contracts. |
| AnalyticNumberTheoryPartII | `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md:714`, `:734`, `:1036`, `:1328`, `:1350`: §§5.7,5.8,5.21,5.28,5.29, field-count/Shintani analytic inputs. |
| InverseGaloisAndArithmeticFundamentalGroups | `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:3001`, `:3317`, `:4969`: reduced multipliers/covers and arithmetic lifting invariants. |
| InductionRestrictionPartII | `TauCetiRoadmap/InductionRestrictionPartII/README.md:1418`, `:1457`, `:1497`: RS.6 comparisons; RS.1 and RS.3 supply preceding laws/actions. |
| GenericDoublePointInterpolation | §§1.4 and 4.8: homogeneous-partial adapter and full double-point theorem; the exceptional tuples transported into §3.28 agree. |
| HeightsAndUnits / EffectiveBounds | `Completed/HeightsAndUnits/README.md`, Layer 2.1, integral basis from minima; `Completed/EffectiveBounds/README.md:102`, Layer 1, elementary discriminant/ideal/class-number/unit bounds. |
| Other resolved imports | NumberFieldArithmetic Layers 1,4,6; GlobalNumberFields Layers 3,11; LocalFieldsRamification Layer 3; GeometryOfNumbersAndQuadraticArithmetic §§0.2–0.3,1.2–1.5,4.1; AdelicAlgebraicGroups AA.0–AA.4; DiophantineApproximationAndTranscendence §2.4; ArithmeticDirichletSeries Layers 3,6,9; EllipticCurves Layers 6–7; PolynomialGaloisGroups Layers 0,2,6; IntegralLattices §2G on main. These provide the stated carrier/finiteness/analytic inputs, not R01's classification proof. |

### Headline coverage

All 39 stated headline theorems were inspected: the two Davenport–Heilbronn limits; four-rank moments and law; cubic two-torsion means (absolute and relative); quartic/quintic and general-base low-degree counts; all fields of degree two through five; monogenic discriminant and short-generator lower bounds; the two secondary terms; Schmidt and Lemke Oliver–Thorne bounds; the squarefree S_n criterion; conditional and unconditional Galois three-eighths bounds; rank-moment determinacy; quadratic discriminant asymptotics; general and cubic two-torsion bounds; integer-lattice basis bound; elliptic integral-point bound; Klüners obstruction; odd binary-form and alternating-extension lower bounds; historical and fixed-prime-factor Pell bounds; cyclic-prime and fixed-resolvent cubic counts; uniform quadratic count; two-extension counts and means; relative wreath means; Mertens and Siegel form means; low-degree alternating moments; quartic torsion field counts.

The docstring identifies local-specification/S-integral refinements, relative narrow means, rigid signature refinements, refined nonabelian moments, conductor-character continuation, quartic resolvent counts and spin interfaces as unavailable carriers. Their omission is not replaced by arbitrary Prop-valued fields. Even binary conclusions are explicitly conditional on the supplier's tail contract. The seven real-body definitions are Galois type, quadratic wreath type, three Pell interfaces, primitive quadratic class number and the norm-one regulator. No additional statable headline omission was established in this review; R04 is the established incomplete headline scope.

## Not verifiable

- ref54, Andrade–Jung, *Mean value of the class number in function fields revisited*, DOI 10.1007/s00605-018-1162-2: the source service reached the publisher paywall and recorded it as uncertified. No paywall was bypassed. It is a bibliography entry rather than a sampled number-field theorem; no claim of text verification is made and no renewed missing-source request is raised.
- The review does not certify the 255 integral-basis half-coset assertions in §3.30 as proved arithmetic facts: the README explicitly makes those fixed-field data hypotheses. The determinant/discriminant and small-ideal implications were checked as recorded above.
- The relative-wreath one-tactic simplification timed out under the defaults. Its original signature and the all-declaration signature probe elaborate; no set_option was used.

All 15 seeded sections were addressed. No sampled work remains unavailable for legal reading. The unavailable bibliography entry is not being used to postpone this verdict.

## Source issues

- **Misprint** in ref5 at Theorem 8, manuscript p.3 (line 176): the source says the local order condition uses tensoring with Q_p; it should use Z_p for a specification of cubic orders; affects a stated result.
- **Misprint** in ref95 at Lemma 3.14, publisher p.17 (lines 845–859): the source says ideals of O_L while quantifying only F; it should say ideals of O_F; affects a stated result.
- **Error** in ref95 at Lemma 3.13, publisher pp.16–17 (lines 787–843): the source weights isomorphism classes of orders by generic-algebra automorphisms; it should weight by order automorphisms, or count embedded orders before dividing; affects a stated result.
- **Error** in ref105 at Lemma 5.2, manuscript p.24 (lines 1131–1156): the source says large input dilation g(ρx) gives quasi-reduction; it should use monic root expansion ρⁿg(x/ρ); affects a stated result.
- **Error** in ref105 at Lemma 5.1 and its proof, manuscript p.24 (lines 1115–1128): the source concludes equality of trace-zero polynomials from reduced-basis uniqueness; it should retain the signed reflection (−1)ⁿg(−x); affects a stated result.
- **Error** in ref105 at Lemma 5.3, manuscript p.25 (lines 1159–1174): the source asserts density-one strong uniqueness from weak quasi-reduction; it should claim only weak quasi-reduction; odd-trace imaginary quadratics have two equal second minima beyond signs; affects a stated result.
- **Error** in ref105 at Theorem 5.4, manuscript p.26 (lines 1179–1183): the source asserts positive squarefree density on every trace-zero slice; it should exclude the quadratic dyadic obstruction, whose density is zero; affects a stated result.
- **Gap** in ref105 at the trace-band paragraph after Theorem 5.4, manuscript p.26 (lines 1188–1191): the source infers the unrestricted density constant from unique translation representatives; it should justify the restricted height/tail comparison and local density separately; affects the proof.
- **Gap** in ref106 at Lemma 7.2, publisher pp.52–53 (lines 3273–3283): the proof identifies reduced basis vectors without allowing their independent signs; it should retain sign alternatives or justify an orientation convention eliminating them; affects the proof.
- **Gap** in ref97 at Corollary 4.10, printed p.656 (lines 1626–1657): the proof replaces restricted coprime discriminant factorizations by an unrestricted divisor sum; it should retain congruence restrictions and prove divergence of the corresponding restricted L-value mean; affects the proof.
- **Misprint** in ref145 at Proposition 2.8, manuscript p.7 (line 258 and rendered page): the source describes arbitrary square matrices over F₂; it should specify symmetric matrices; affects a stated result.
