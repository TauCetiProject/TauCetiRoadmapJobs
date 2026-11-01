# Review of ArithmeticStatisticsPartII (pull request #1173 at a7cc3be)

**Verdict:** needs changes

## R01 (P2) — Import the cubic equivalence instead of planning it again

Location: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:175–185`, also 153–163. The ownership paragraph calls this the supplier's “free-lattice specialization”, but the target then reconstructs and proves the equivalence.

Claim: the PID/local Delone–Faddeev correspondence and normal-basis normalization are new work here.

Witness: `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md:667–691`, §5.5, already plans free/local multiplication, unique scalar shifts, both simultaneously negated basis conventions, inverse index forms, gluing, and stabilizers.

Repair: remove the repeated equivalence and normalization proof targets; import §5.5 in Scope and ownership and the supplier contract. Retain only the explicit coordinate/sign comparison and inverse-transpose formula that this part actually needs. Repoint their consumers to the supplier. Test the adapter on the split cubic, whose discriminant and automorphism order are 1 and 6, and on the zero form, whose square-zero algebra has discriminant 0. These are already admitted by the supplier; restricting its equivalence to them introduces no new dictionary. This is a repairable overlap, not grounds to reject the whole Part II.

## R02 (P2) — Retain characteristic five in the degree-two through degree-four dictionaries

Location: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:2277–2279`: “characteristic different from 2,3,5” and “conservative common characteristic restriction”.

Claim: all four genus-one presentations use the degree-five characteristic restriction.

Witness: ref-15 line 1232 explicitly works over Z[1/6]; lines 1284 and 1384 state degrees three and four. The additional characteristic-five exclusion begins only at line 1411, in degree five.

Repair: separate the hypotheses: characteristic different from two and three for degrees two, three and four, and different from two, three and five for degree five. Keep all the stated central kernels. Add a characteristic-five Check. For example over an algebraic closure of F₅, E: y²=x³+x+1 has discriminant 4 and j=2, distinct from 0 and 1728=3. Its geometric d-torsion orders are 4, 9 and 16 for d=2,3,4, and the rational-divisor stabilizer orders are 8,18,32. These presentations satisfy the repaired statement and are needlessly excluded by the original. The seven Lean headlines already retain characteristic five where appropriate; this finding concerns the wider README dictionary.

## R03 (P3) — Remove the HTML anchors that fail the supplied gate

Location: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:66`, throughout the target and reference anchors.

Claim: the folder passes the submission rules.

Witness: the supplied head-specific gate reports `residue=120` and `FAIL`; all other counters, including `build`, `depcheck`, `stray-files` and `outside-folder`, are zero.

Repair: delete the HTML anchor elements and use Markdown headings and their generated fragments, updating incoming links as necessary. For example, give Full-lattice order comparison a real subordinate heading and preserve its generated fragment. The witness is reproducible by counting the 120 `<a id=` elements. This review changes no files; the complete gate must be rerun after repair. A passing Lean build alone does not clear this failure.

## R04 (P3) — Make API bullets and the acceptance-test names agree

Location: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:119–131`, representative of the API lists; `Suggested.lean:47–72`.

Claim: backticked local declaration names in the README describe declarations in Suggested.lean.

Witness: the README names `CubicRing.det3`, `CubicRing.indexForm` and five associated API declarations. None exists in Suggested.lean, whose declarations are under `TauCetiRoadmap.ArithmeticStatisticsPartII.BinaryQuartic`. Conversely `twistedForm` and `IsProperlyEquivalent` are absent from the README.

Repair: express the unimplemented API bullets in prose, retaining their full mathematics; do not add API padding to Suggested.lean. Name the actual retained coefficient definitions in the relevant README paragraphs. Apply this to all local API lists, including `ArithmeticOrbitRefinement.*`. Checking the cited seven cubic names against the Lean file changes seven purported declarations into seven prose requirements; naming `twistedForm` and `IsProperlyEquivalent` then documents the actual row-variable action and orbit predicate. The gate's zero `readme-ids-missing` counter does not certify this manual form rule.

## R05 (P3) — Correct Wood's lemma locator and specify the version

Location: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:1473`: “Lemma 3.2, printed p. 6”.

Claim: the integral SO/Veronese comparison is located on page 6 of the cited Wood preprint.

Witness: ref-16 line 293 ends printed page 6; line 301 is Lemma 3.2 on printed page 7 of arXiv:1007.5501v2. Page 6 contains Theorem 3.1 instead.

Repair: cite v2, Lemma 3.2, p.7, using the same work/version already specified by reference 72. The matrix-kernel assertion remains unchanged: rho(−I₂)=I₃. Consolidate the duplicate reference labels when normalizing the bibliography.

## R06 (P3) — Cite the existing abelian Kummer targets by their actual titles

Location: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:50`, repeated at 2017.

Claim: SelmerIwasawaCohomology supplies four declarations named `abelianKummer`, `abelian_localH1_comparison`, `abelianDescent_exact`, and `abelianSelmerGroup_finite`.

Witness: none of these four identifiers occurs in that supplier's README or Suggested.lean. Its §2.12a, “Abelian Kummer, Selmer and Sha carriers” and “Finite Selmer and reduced primary groups”, does state the required mathematics.

Repair: replace the invented declaration citations with those two exact prose target titles and §2.12a. This is locator drift, not an unowned prerequisite: the supplier explicitly gives the Kummer injection, local comparison, descent exact sequence, and finiteness for number-field isogenies. For the identity isogeny, its Kummer quotient and Selmer group both have one element, agreeing with this roadmap's adapter.

## Verified sound

The review covered both files at the specified head, all 94 named mathematical target blocks, all 15 seeded subsections, the seven Lean headlines, and the supplied gate. No README locator is explicitly marked unverified. The outside-folder diff is empty. No sorry'd data, `set_option`, roadmap import, source passage copied into the report, or executable algorithm target was found. The full source constructions are mathematical targets; their small computations and existence proof routes are not themselves computational deliverables.

The headline inventory is: cubic/quartic/quintic integral ring dictionaries and resolvents; proper quartic orbit classification; soluble quartic orbits and two-descent; two-torsion stabilizers and the two-Selmer dictionary; local/global integral quartic representatives; the ternary-pair embedding and its bounded fibres; binary discriminant/maximality densities; monogenized resolvents; integral and rational pencil dictionaries, Fano torsors and Selmer comparisons; weak-discriminant lifts; genus-one stabilizer schemes; the integral/étale resolvent comparison; good-prime integral pencil uniqueness; and the higher-degree and three-isogeny descent dictionaries.

Suggested.lean states seven substantial quartic headlines: `cubicInvariant_determines_orbit`, `solubleOrbit_bijection`, `cubicInvariant_quarticOfPoint_eq_mu`, `stabilizer_twoTorsion`, `mem_selmerGroup₂_iff`, `exists_integral_local`, `exists_integral`. Its module docstring names the remaining families and the missing integral-table, covering, pencil, Jacobian/Fano, or group-scheme carriers. I found no omitted headline that could simply be stated using the existing coefficient definitions, and no weakened replacement theorem. The definitions have real bodies on native carriers. In particular the cubic invariant's fallback value does not replace the admissibility theorem: nonzero invariants and the field-cardinality restriction are hypotheses of its classification theorem.

Build and signatures: after building the missing imported `TauCeti.AlgebraicGeometry.EllipticCurve.MordellWeil.SelmerGroup` module, direct `lake env lean` elaboration of Suggested.lean succeeded with exactly its seven sorry warnings. A scratch copy with `#check @name` for all 22 declarations also elaborated. The characteristic restrictions, discriminant conditions, number-field binder and local primality binder are present in the expanded signatures; no signature correction was needed. A separate scratch copy replacing every sorried proof with the single tactic `simp` failed at all seven headlines. Reading their definitions confirms they are not reflexivity, instance synthesis, small-value Checks, or direct restatements of the opened library results. No padding finding is raised.

The dependency command specified in the brief returned:

```text
depcheck: 205 roadmaps, 1448 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This checks order, not ownership; R01 remains despite the clean graph. No supplier gap was declared, and none was treated as an implicit permission to assume an unavailable theorem.

The supplied full gate's nonzero counter is exactly `residue=120`; its final result is FAIL. Its build counter is zero. The independently repeated Lean elaboration is consistent with that build result. No acceptance is recorded while that gate fails.

**Source sample.** References below use the README's `ref-N` identifiers and the sources service's numbered legal extractions. References 9/70, 10/71, 15/76 and 16/72 denote the same works; 59/75 are the published and author versions of the same work. No source material was copied into the worktree. Page numbers are printed pages, not PDF offsets.

| Seeded target | Text opened and support tested |
|---|---|
| 1.1 Binary cubics | ref-7 lines 33–53, 98–166: Lemma 1.1 and Proposition 2.1, pp.1–4, PID/local hypotheses. ref-6 lines 239–306: Theorem 9 and Propositions 10–12, pp.4–6. ref-8 lines 516–533: Lemma 5.3, pp.117–118, absolute index rather than its sign. Stacks 0BJF lines 269–285: finite locally free trace criterion. |
| 1.2 Maximality and switching | ref-6 lines 330–365: Lemma 13, Theorem 14, Propositions 15–16, pp.6–7. Degenerate rings and the two small-overring shapes are retained. The rewritten finite-overring argument avoids relying on an unnormalized divided basis. |
| 1.3 Quartic rings | ref-9 lines 445–490, 550–643, 677–685, 813–865, 942–956, 1103–1118: polynomial tables, orientation, nonzero minor fibres, degenerate resolvent data, maximality. The corrected k≠i convention is tested below. ref-53's alternate preprint supports the corresponding content statements, but its published numbering is uncertified below. |
| 1.5 Covariants and orbits | ref-11 lines 75–107, 183–275, 361 onward, 448–510: Lemmas 1,3,9,10, Propositions 6–8 and Theorems 11–13, pp.2–11. The syzygy/resultant normalization and the exclusion of the six-point projective line over F₅ in the evaluation argument are distinguished from the unrestricted orbit dictionary. |
| 1.6 Points and two-descent | ref-1 lines 1251–1269: Theorem 3.2 and Proposition 3.3, p.23. ref-14 lines 65–91: Lemma 2.1 and cubic invariant, p.2. ref-17 lines 434–486 and ref-18 lines 116–150: locally soluble coverings have trivial Brauer obstruction. The native two-torsion correction is checked below. |
| 1.7 Integral representatives | ref-12 lines 225–236, 436–471, 507–520, 550–575, 617–622: Theorem 2.8, Theorem 3.8, Lemmas 3.11,3.13,3.14 and projection proof, pp.6–16; retain the PID hypotheses of §3.2. ref-1 lines 1272–1281 and 1335–1369: scaled integral representatives and local/global lattices. |
| 1.8 Embedding and fibres | ref-1 lines 831–919: equations (30)–(34), Theorem 2.14 and Proposition 2.16, pp.16–17. ref-16 lines 266–301: equivariance and SO surjectivity, pp.6–7. The coefficient permutation and the additional sign fibre are real corrections, not claimed verbatim consequences of the printed formulas. ref-80 lines 130–160: bound 10 and discriminant-49 example. |
| 1.9 Densities | ref-59 lines 3300–3421: Appendix A, Propositions A.1–A.2, pp.53–55. Independent residue counts validate the corrected degree-four formula and distinguish squarefree discriminant from maximality at two. |
| 1.10 Quintic/sextic tables | ref-10 lines 687–745, 1100–1163, 1360–1411, 1470–1515, 1730–1786: §§4,6,10–12. Sextic discriminant factor 4096, integral combinations of D-coefficients, and all-discriminant tables are retained. The missing nonétale rational-realization proof is explicitly owned in the target, not assumed supplied. |
| 1.11 Monogenization | ref-16 lines 235–256, 303–332: Proposition 2.3, Theorem 2.5, Proposition 4.1 and Theorem 1.1, pp.5–7. The generator is retained modulo integer translation; its negative is not silently identified. |
| 1.12 Pencils/torsors | ref-73 lines 276–366, 500–522, 572–674, 740–770, 824–838, 926–1064, 1103–1125: Theorems 16–17,23–25,28–31 and Proposition 34. Field signs, central quotient points, actual rational divisors, generalized modulus and powers of two are retained. ref-33 lines 162–172 and §3 support the separate marked quartic embedding. |
| 1.13 Weak lifts | ref-75 lines 386–425, 544–566, 645–679, 680–743: Q, Theorem 3.5, Theorem 3.7, Propositions 3.8–3.9. ref-74 lines 413–443 and 748–759: half/quarter-integral one-matrix lattices and the extra even-degree factorization exclusion. The roadmap correctly does not use the false Gram-determinant claim. |
| 1.14 Stabilizer schemes | ref-15 lines 1203–1238,1284–1300,1384–1400,1411–1443: Theorems 4.1,4.5,4.11,4.14 and the specified remarks. Scalar kernels and full versus differential-preserving groups agree; generality needs R02. |
| 1.15 Étale resolvent | ref-9 lines 339–414 (§2.3),618–643,677–692: conjugate-pair resolvent and equal discriminants. The integral order comparison is additional to the pinned polynomial resolvent and retains its lattice. |
| 1.16 Good-prime pencils | ref-73 lines 1203–1260: Proposition 35 and proof, p.29. Odd p, p² not dividing the discriminant, nonzero leading coefficient and actual degree-one divisor are all retained. This restricted uniqueness theorem is accompanied by the earlier unrestricted existence target; it is not a good-primes-only library. |

**Adversarial values.** Each row identifies a named target by its README line. These are computations and negative controls, not claims that finitely many tests prove a theorem. Algebraic geometric rows test dimensions, norm equations, kernel cardinalities or a specified fibre; the source audit supplies their general statements. “Keep” means no change follows from that particular computation. The seven Lean headlines have additional rows after the 94 README targets.

| Target (README line) | Instances and computed values on the two sides | Result / change |
|---|---|---|
| Full-lattice orders (68) | Z+2Z⁴ in Z⁴: index 8, determinant-square factor 64, trace discriminants 64 and 1. In Z+2Z² the larger stable lattice Z² has determinant norm (1/2)Z; its multiplier is Z², not the original order. For D[epsilon]/epsilon², adjoining epsilon/pi gives index q and still epsilon²=0. | Keep product and degenerate cases; do not require invertible ideals. |
| Scalar quotient (91) | A=R gives quotient rank 0=n−1. For (Z/4)³, columns (1,1,1),e₁,e₂ have determinant 1; scalar vector extends. | Keep n≥1. |
| Based cubic index (111) | In Z³ with basis (1,e₀,e₁), determinant at (x,y)=(1,2) is 2, equal to xy²−x²y. Scaling both quotient basis vectors by 2 multiplies it by 2, not the untwisted factor 8. | Keep coordinate adapter; R04 names. |
| Normal bases (153) | In Z[t]/(t³−2), (t+1)(t²+2)=−2+2(t+1)+(t²+2). Shifts (−1,−2) give product 2; reversed shifts leave nonconstant terms. Square-zero translated epsilon+1,eta has product eta and shifts (−1,0). | Correct calculation; import normalization, R01. |
| Cubic equivalence (175) | xy(x−y) has discriminant 1 and split algebra Z³; zero has discriminant 0 and augmentation products 0. Both already occur in supplier §5.5. | R01. |
| Cubic automorphisms (197) | Split cubic: automorphism order 6=stabilizer order 6, nonabelian S₃. Non-Galois cubic field: both orders 1. Inverse-transpose satisfies (ST)⁻ᵀ=S⁻ᵀT⁻ᵀ; transpose reverses the order of two noncommuting permutation actions. | Keep explicit convention adapter; import equivalence. |
| Reducibility (217) | y(x²+y²) has projective zero (1:0) and omega theta=0 with both vectors nonzero. x³−2y³ has no rational projective zero and gives a cubic field. Zero excluded. | Both directions survive. |
| Étale criterion (235) | Split cubic: trace determinant 1, three separable factors. K[t]/t³: determinant 0 and nonzero nilpotent t. Over F₃(u), t³−u is a field but trace determinant 0. | Keep separability, not just fieldhood. |
| Davenport–Heilbronn locus (259) | x³+y³ at p=3 transforms to coefficients (0,3,−3,1), satisfying 9 divides 0 and 3 divides 3: rejected. Zero also rejected. xy(x−y) has discriminant 1 and passes every p. | Keep. |
| Small cubic overrings (295) | The preceding transformed form has index-3 overring. Scaling a primitive cubic by 3 gives Z+3R with index 3²=9 in R. | Both shapes needed. |
| Cubic maximality (311) | x³−2y³ has discriminant −108 and maximal order at 2,3; x³+y³ has discriminant −27 versus −3 in its overorder, ratio 9=3². | Discriminant divisible by p² does not imply nonmaximality. |
| Index-p subrings (329) | Split cubic at p=2: projective zeros (1:0),(0:1),(1:1), count 3; the three coordinate-equality subrings also count 3. Zero reduction gives p+1, not 0. | Keep degenerate convention. |
| Index-p overrings (345) | Zero cubic at p=2: all three projective directions are double zeros and every lift evaluates to 0 modulo 4. Its two-dimensional square-zero radical has three index-2 enlargements. Split maximal algebra has 0 such overrings. | Keep. |
| Ternary pairs (363) | A=x₁x₃−x₂², B=x₁²+x₂x₃: 4det(xA−yB)=x³+y³, discriminant −27. The half-integral Gram matrix gives integer polynomial coefficients. | Keep factor 4 and minus sign. |
| Quartic resolvent data (433) | Split Q=Z⁴, R=Z³: trace discriminants 1=1, quotient ranks 3 and 2. Zero multiplication examples have both discriminants 0, so equality alone cannot specify their quadratic map or orientation. | Keep full resolvent data. |
| Quartic multiplication (475) | On the pair at line 363, the trace matrix is [[4,0,0,−1],[0,0,−3,0],[0,−3,0,0],[−1,0,0,1]], determinant −27. Correct k≠i gives c⁰₁₂=−1 for both choices; printed k≠j gives 0 and −1. | README correction passes. |
| Quartic minors (525) | Coefficient rows (1,0,0,0,0,0),(0,1,0,0,0,0) give one minor 1, all others 0, content 1. Proportional rows give all 15 minors 0. A 2-by-2 determinant-one row change preserves these values. | Keep zero/nonzero distinction. |
| Integral minor fibres (555) | A primitive rank-two wedge has content 1 and one oriented sublattice class. Content 2 gives index-2 sublattices of Z²: counts 1+2=3. At content 0 the rank-two finite-fibre argument fails. | Keep nonzero-minor hypothesis. |
| Quartic parametrization (575) | The explicit pair above gives quartic discriminant −27 and cubic discriminant −27. Zero pair gives ranks 4 and 3 with all augmentation products 0, and discriminants 0=0. | Keep all-discriminant construction. |
| Quartic invariant index (595) | Primitive split quartic: content 1 and invariant index 1. Q=Z+2Z⁴ has content 2; the asserted invariant index is 2, while [Z⁴:Q]=8. These are different indices. | Keep distinction. |
| Number of resolvents (615) | Content 1 gives sum of divisors 1; content 2 gives 1+2=3. Zero content is not inserted into this finite divisor-sum formula. | Keep nontrivial-content restriction. |
| Quartic maximality (635) | Z+2Z⁴ has overorder index 8=2³ and discriminant 64 versus 1. Three divided quotient vectors are necessary for this shape, not only one. Z⁴ is maximal at every prime. | Keep all three shapes. |
| Quartic splitting (655) | Modulo 5, x⁴−y⁴ has four distinct projective roots 1,2,3,4. Its cubic resolvent x³+4xy² has roots 0,1,4; discriminants are −256=4 and −256=4 modulo 5. | Split (1111) maps to split (111). |
| Alternating quadruples (677) | Four 5-by-5 alternating matrices have 4·10=40 independent coordinates. In F₂, [[0,1],[1,0]] has zero diagonal and is alternating; [1] is skew-symmetric but not alternating. | Keep zero-diagonal requirement. |
| Proper quartic action (727) | diag(2,1) sends x⁴−y⁴ to 4x⁴−y⁴/4; I=−12,J=0 on both. Scalar 2I acts by 2⁴/2⁴=1; untwisted substitution multiplies coefficients by 16. | Keep determinant-square twist. |
| Solubility (769) | x⁴−y⁴ has value 0 at (1,1); −x⁴−y⁴ has strictly negative value at every nonzero real pair. At (0,0) both evaluate to 0, showing why that pair is excluded. | Keep projective nonzeroness. |
| Quartic covariants (823) | x⁴−y⁴ at (1,2): f=−15, h=192, g₆=−1088. x³y at (1,2): f=2,h=3,g₆=1. | Signs and leading-zero case retained. |
| Syzygy (861) | For those two forms: 27g₆² and h³−48If²h−64Jf³ are respectively 31,961,088=31,961,088 and 27=27. For coefficients (1,2,3,4,5), both are 44,208,052,992. | Keep universal identity, including degeneracy. |
| Cubic invariant (877) | I=3,J=0, point-at-infinity quartic x³y−xy³: evaluation (1,0) gives f=0,h=3,G=1. Zero quartic gives G=0 everywhere and fallback 1, but violates the nonsingular fixed-invariant hypotheses. | Fallback does not certify zero as a valid orbit. |
| Orbit invariance (933) | x⁴−y⁴ and 4x⁴−y⁴/4 have proper equivalence diag(2,1); both have a rational linear factor and class 1. At J≠0, negation changes J to −J. | Keep fixed invariants. |
| Linear factors (949) | x³y−xy³ at (1,0) has f=0,h=3,g₆=1, so G=h/3=1=(3g₆/h)². Its specified normal form has coefficients (0,1,0,−1,0). | Both the root and squareclass checks agree. |
| Auxiliary root (965) | g₁=g₂=x⁴+xy³: I=0,J=−27,a=1,p=0,r=8. Comparison −h has value 0 at (1,0); nonsingularity is −729≠0. | Keep p=0 case. |
| Comparison implies equivalence (983) | Same example: a₂/a₁=1, r₂²=64=1³·64, identity matrix determinant 1. p₂/p₁ would be 0/0. For x³y versus zero, comparison is zero but discriminant is 0 and equivalence false. | README repairs the proof and excludes the false converse instance. |
| Classification (1001) | The line-factor pair in row 933 has equal class 1 and a proper equivalence. The singular pair x³y,0 has I=J=0 and no invertible equivalence, so the discriminant exclusion matters. | Keep; nontrivial finite-field check below. |
| Point quartic (1023) | On E:y²=x³−81x, O gives (0,1,0,−1,0), (0,0) gives (1,0,0,0,1/4). Both have I=3,J=0,Delta=4; the latter takes value 1 at (1,0). | Includes identity and two-torsion. |
| Point invariant/native descent (1061) | In the split cubic T(T−9)(T+9), evaluate the (0,0)-quartic at (1,1): G=(1,−4,−9) at T=(−9,0,9). Corrected native descent is (9,−81,−9); ratios (1/9,4/81,1) are squares. At O both classes are 1. | Keep corrected torsion branch, not the nonunit −T alone. |
| E/2E dictionary (1085) | Over F₅, I=1,J=0: E has 10 points, E[2] has 2; quotient size 2. Exhaustive coefficient enumeration gives 120 quartics in this nonsingular fibre, two proper orbits of 60. | Characteristic five survives. |
| Bilinear criterion (1105) | For the identity equivalence, bilinear factor X₁Y₂−Y₁X₂ has coefficient determinant 1 and substitution matrix scalar-equivalent to I₂. For x⁴−y⁴ over Q the two proper self-equivalences are I₂ and diag(1,−1); over Q(i) there are four. | Keep invertibility and the F₅ separate argument. |
| Two-torsion stabilizer (1121) | For x⁴−y⁴ over Q, resolvent X³+36X has one rational root, hence 1+1=2 stabilizer elements. Nonidentity diag(1,−1) has trace 0 and square I₂; identity has trace 2. F₅ fibre above: 120/60=2. | Keep identity branch. |
| Image conic (1143) | I=3,J=0,m=1: Gram [[0,0,1],[0,1,0],[1,0,81]] has determinant −1=−N(1), and (1,0,0) is isotropic. m=2 gives determinant −8=−N(2), isotropic but norm 8 is nonsquare. Simon example (1/84,0,−2,28/3,−7) gives I=3,J=0,Delta=4 and norm 9604=98². | Keep square-norm domain. |
| Quartic two-Selmer (1163) | The linear-factor quartic x³y−xy³ has global point (1:0:0), local points at every place, class 1, norm 1 and local restrictions 1. | Identity agrees with the native Selmer carrier. |
| Primitive columns (1189) | Columns (2,3,0),(1,2,0),(0,0,1) have determinant 4−3=1. First column (2,4,0) forces every determinant to be even. Moving the prescribed column and negating another column corrects a permutation determinant of −1 to +1. | Primitivity is essential. |
| Ternary invariants (1209) | F=Y²Z−X³+XZ² has c₄=48,c₆=0,Delta=64. Identity 48³−0=110592=1728·64. Zero cubic gives all three 0. | Keep invariant normalization. |
| Ternary transformation (1257) | Scaling this cubic by 2 gives c₄=768,c₆=0,Delta=262144; factors are 2⁴ and 2¹². A determinant-one coordinate change has weights 1. | Keep separate scalar and determinant weights. |
| Projection (1273) | Project from (0:1:0): F₁=Z,F₂=0,F₃=−X³+XZ². F₂²−4F₁F₃=4X³Z−4XZ³ has I=48=c₄,J=0=2c₆. | Minus sign and factor 4 pass. |
| Projected invariant (1309) | The projected quartic has a linear factor, so its cubic invariant is 1; projecting the identity divisor gives native mu(O)=1. Its invariants are (48,0), not (3,0). | Keep normalization before comparison. |
| Local integral quartics (1325) | A=−1,B=0: integral f=4x³y−4xy³ has I=48=−48A,J=0,Delta=16384 and point (1:0:0). Same representative is integral at p=2 and p=3, although its discriminant is not a unit there. | No good-prime restriction introduced. |
| Local/global integrality (1343) | Coefficient 1/2 has v₂=−1 and is excluded; coefficient −4 has v₂=2 and v_p≥0 for all p, hence is integral. The lattice Z² has the same completion intersection as these coordinate tests. | Keep every finite prime. |
| Global integral quartics (1359) | Same A=−1,B=0 and f at line 1325 gives identity rational equivalence to an integral tuple; 4A³+27B²=−4≠0. A=B=0 would give 0 and is excluded. | Keep. |
| Integral two-Selmer dictionary (1377) | E:y²=x³−x has (I,J)=(3,0); scaled pair is (48,0). The displayed integral identity quartic has those invariants and class 1. Height factor is 16³=4096=2¹². | Scaling and rational equivalence retained. |
| Cohomological comparison (1395) | Identity point maps to multiplicative unit 1 and cohomological zero; restrictions at all places are respectively 1 and 0. A kernel statement uses E/2E, not E itself: 2P maps to 1 and 0. | Compatible neutral elements. |
| Ternary-pair embedding (1413) | f=x⁴−y⁴ gives 4det(A₁x−B_f y)=x³+4xy², discriminant −256 on both sides. For T=[[1,1],[0,1]], y⁴ transforms to (x+y)⁴; the corrected rho gives x₁² coefficient 1, the printed ordering 0. | Keep corrected coordinates. |
| SO/Veronese (1465) | rho(−I₂)=I₃. For a coordinate swap, determinant-normalized symmetric square reverses coordinates with the necessary sign and preserves x₁x₃−x₂². A primitive rational lift with determinant 2 would require all four squares divisible by 2, contradicting primitivity. | Mathematics passes; locator R05. |
| Embedding orbit bijection (1483) | x³y has I=J=Delta=0; x³y+xy³ has I=−3,J=0,Delta=−4. Their pair discriminants are 0 and −4, so both orbit sets separate them. | Keep. |
| Bounded fibres (1499) | With J≠0, f and −f have J and −J and are distinct proper orbits but pair-equivalent via B↦−B. Each first-row solution permits two determinant signs. N=10 yields 20; N=12 yields 24, not 10 or 12 by this argument. | Corrected bound retained; source proof gap recorded. |
| Quadratic maximality (1523) | p=2: 44 of 64 triples modulo 4 pass, density 11/16; p=3: 630 of 729, density 70/81. t²−p is maximal; t²−p² has basis enlargement t/p and index p. xy has discriminant 1 and split algebra. | Includes nonmonic and ramified cases. |
| Binary densities (1539) | Quartics: 384/1024=3/8 at p=2; 42768/59049=176/243 at p=3. Printed degree-four factor gives 1600/2187 versus actual 1584/2187. Cubics at 3: alpha=64/81, beta=208/243. | README correction passes. |
| Quintic table (1567) | A=0 gives eᵢeⱼ=0 for i,j>0, while e₀eᵢ=eᵢ. Scaling by 2 has coefficient weights 2⁵=32 and 2¹⁰=1024; using degree 4 would be wrong. | Retain universal all-characteristic table. |
| Sextic table (1595) | A=0 gives rank 6 square-zero algebra, trace determinant 0. A with quintic discriminant 1 must give sextic discriminant 16³=4096; maximal split Z⁶ instead gives 1. | Factor and lattice cannot be dropped. |
| Based sextic resolvent (1623) | At A=0 both recovered augmentation products vanish. Replacing sextic ring by Z[t]/t⁶ gives e₁²=e₂≠0 despite equal discriminant 0; replacing quintic by Z[t]/t⁵ fails for the same reason. | Table equality excludes wrong models. |
| Quintic symmetric closure (1651) | Split L=Q⁵: closure dimension 5!=120, fixed algebra dimension 120/20=6. Trace of 1 is 120=24·5 and also 20·6. Cyclic quintic: 24 copies of L, resolvent Q×L has dimension 1+5=6. | Use labeling algebra, not field normal closure. |
| Nondegenerate sextic comparison (1669) | Split quintic order: discriminant 1; required sextic lattice discriminant 4096, hence index 64 in split maximal order since 64²=4096. Replacing lattice by Q⁶ loses this index. | Keep image and lattice conditions. |
| Quintic realization (1689) | Square-zero Q⊕Q⁴ is realized by A=0, discriminant 0. Q[t]/t⁵ also has discriminant 0 but t²≠0, so A=0 cannot realize it. Scaling a tensor by 2 scales nonconstant coefficients by 32 rather than 2. | Nonétale realization is substantive owned work; source omission noted below. |
| Quintic minimal model (1713) | Proper index-2 overorder reduces absolute discriminant by 4. For Z+2Z⁵⊂Z⁵, index 16, discriminants 256 and 1. | Minimality must permit full rational GL₅. |
| Quintic parametrization (1733) | Zero tensor gives ranks 5 and 6, products 0, discriminants 0 and 0. Split maximal quintic has discriminant 1, associated sextic discriminant 4096, not 1. | Keep degenerate pairs and sextic map. |
| Quintic maximality (1753) | The preceding index-16 overring divides four quotient directions at p=2. Ratio 256=2⁸ is not a tenth power. The maximal split order has discriminant 1 and passes every p. | Full rational group and four shapes retained. |
| Monogenized resolvent (1775) | In Z[t]/(t³−t−1), lifts t and t+2 have power-basis determinant 1. They define the same class modulo Z; −t is not congruent to t modulo Z. At t in Z[t]/t³, determinant is also 1 despite discriminant 0. | Keep marking and degenerate rings. |
| Wood interpretation (1803) | f=x⁴−y⁴ gives monic cubic x³+4xy² and its generator with power index 1. Translating the generator by 2 preserves index 1; forgetting it loses that marking. Zero quartic still supplies a rank-3 monogenized cubic. | Matches general, not only étale, dictionary. |
| Common isotropy (1827) | Zero pencil on F₂³ has seven lines; (I₃,0) over R has no isotropic line. In F₂² the alternating matrix has all self-values 0 but mixed value e₀ᵀAe₁=1. At n=r=0 there is one submodule; r>n gives zero. | Full bilinear restriction is necessary. |
| Fano geometry (1857) | A=I₃,B=diag(1,2,3): over C equations give x²=z²,y²=−2z², four projective points; over R none. At n=4, dimensions are 1 for F and 2 for augmented F_m. | Geometric torsor does not imply a rational point. |
| Ideal triples (1875) | For monic n=3 and I=R_f, alpha=s=1: I²⊂R_f and both norm expressions are 1. Rescaling in split degree 3 by c=(2,1,1) gives N(cI)=2, N(c²)=4=s'². Zero lattice has determinant norm 0, not sD. | Keep full rank and orientation. |
| Integral pencil orbits (1905) | Split rank 3 with alpha=s=1 has norm-one square-one units: 8 signs, 4 with product 1. For split even rank 4: kernel has 8 signs; quotient by diagonal ±1 has 4 geometric elements. | Quotient as group scheme, not assumed pointwise surjectivity. |
| Norm pairs (1923) | In K³, c=(−1,1,1) has c²=1,N(c)=−1 and identifies the two orientations. In an even-degree field, the only square-one elements ±1 both have norm +1, so they do not. Declared n=3 with L=K fails dimension 1=3. | Both sign and degree constraints needed. |
| Field pencil stabilizers (1959) | Split n=4 over an algebraic closure: norm kernel size 8, central quotient size 4=2^(4−2). Irreducible even-degree field: orientation-forgetting has two choices of s; odd-degree factor allows a norm −1 sign and identifies them. | Keep factorization hypotheses. |
| Pencil existence (1977) | Negative real quartic f=−(x⁴+y⁴): f₀=−1, L=C×C, norms are positive, so −1 is not a norm times a square. For f₀=1 the infinity algebra is R×R and torus dimension 1; replacing it by R would give dimension 0. | Keep generalized obstruction. |
| Fano torsor (1997) | With genus g=1, smooth F and J¹ both have dimension 1; generalized F_m and J_m¹ both dimension 2. With a rational base divisor, its torsor class is 0 and 2·0=0. | Do not identify the two torsors. |
| Jacobian Selmer adapter (2017) | Constant E:y²=x³+x+1 over F₅(t) has 9 F₅-points, hence multiplication by 2 and 4 on that finite group has cokernel size 1. Good reduction everywhere and unramified cohomology of P¹ give Sel₂=Sel₄=1 here. The geometric kernels still have orders 4 and 16. | Function-field carrier and finite groups are distinct from the elliptic number-field specialization. |
| Locally soluble pencils (2035) | For the preceding pointed constant genus-one curve, J¹ has trivial class, W[2]=0 has lift 0, and its locally soluble orbit torsor has size Sel₂=1. An empty cover set has size 0 and no chosen origin. | Keep existence before torsor trivialization. |
| Integral soluble pencils (2055) | If every coefficient is a multiple of 16, f₀^(i−1)fᵢ has at least 4i powers of 2. At i=1,2,4 the guaranteed factors are 16,256,65536, precisely 2^(4i). | Uniform scaling meets the stated local condition. |
| Monicization (2073) | (2,3,5,7,11) maps to (1,3,10,28,88): I 226→904=4·226, J 3296→26368=8·3296, Delta 1307744→83695616=64·1307744. At a=0, output (1,b,0,0,0) has Delta 0. | Keep polynomial boundary but not twist comparison there. |
| Marked quartic Selmer embedding (2095) | Antidiagonal A of size 4 has determinant (−1)^6=1, matching the monic leading coefficient 1. y↦ky is invertible for k≠0. For −x⁴−y⁴ real solubility is false; monicization x⁴+y⁴ has value 1 at (1,0), so solubility cannot be transported by monicization alone. | Keep original Selmer group, not twist's Selmer group. |
| Weak discriminant (2113) | At p=3, x³−x²y+9y³ has Delta −2151=0 modulo 9; perturb constant to 12 gives −3840=3 modulo 9. x³ has all first-order discriminant derivatives zero; mod 4 discriminants are 0 or 1. | Weak example works; p=2 weak locus empty. |
| Hyperdeterminant (2141) | g=1,U=(1,0),V=(0,1): signed-minor coefficient determinant −1. g=2 shift blocks give coefficient rows (0,0,1),(0,1,0),(1,0,0), determinant −1. Zero blocks give 0. Scaling by 2 gives factors 4 and 64. | Sign and degree g(g+1) pass. |
| Q² divisibility (2171) | g=1,U=(1,1),V=(0,1) with lower blocks A=diag(1,0),B=diag(0,1): signed determinant x³−3x²y+xy², Delta 5, Q²=1 divides 5. Gram product is 2 and does not divide 5. | README correctly excludes stronger source error. |
| Marked Q (2189) | Standard blocks give Q=−1 and absolute Q=1. Integral determinant-one diag(−1,−1,1) gives Q=+1 and absolute Q=1. Rational diag(2,1,1/2) gives absolute Q=2. | Integral saturated marking required. |
| Odd weak lift (2219) | For the weak cubic x³−x²y+9y³ at m=3, lift must retain coefficient tuple (1,−1,0,9), Delta −2151 and absolute Q=3; 3² divides −2151. At m=1 required absolute Q is 1. | Consistency of invariant/divisibility tested; construction checked against source theorem. |
| One-matrix slice (2237) | Antidiagonal determinants for n=3,4 are −1,+1; signed leading coefficients both 1. x⁴+1 factors over Q(sqrt(2)) as (x²+sqrt(2)x+1)(x²−sqrt(2)x+1), though irreducible over Q. | Extra even-degree exclusion is essential. |
| Even weak lift (2257) | f=x⁴−y⁴ has Delta −256 and f(0,1)=−1; Delta(xf)=−256·(−1)²=−256. At m=1 both allowed absolute Q values are 1 and q=1; degree increases 4→5. Zero constant coefficient would give Delta(xf)=0. | Keep generic constant term and polynomial quotient. |
| Genus-one stabilizers (2277) | Characteristic-five generic E above: geometric E[d] sizes 4,9,16; full divisor stabilizers 8,18,32. Central pair (t⁻²I,tI) acts by t⁻²t²=1. Degree-five tensor count 5·10=50, not quintic-ring count 40. | R02; retain scalar kernel distinctions. |
| Quartic étale comparison (2302) | Split quartic embeddings have three pair partitions, giving Q³, and trace discriminants 1=1. A four-cycle acts on the partitions with orbit sizes 1 and 2, giving Q times a quadratic field, not a cubic field. | Keep product-algebra target. |
| Good-prime integral pencils (2322) | Over Q₅, f=x⁴−y⁴ has Delta −256, v₅(Delta)=0 and point (1:1:0). Reduction Jacobian y²=x³−x has 8 points, four 2-torsion points; E(Q₅)/2E(Q₅) has 4 classes. Good integral and soluble rational orbit counts are both 4, stabilizer counts both 4. | Retain odd prime and discriminant restriction for uniqueness. |
| Higher-degree descent (2342) | Over C, E(C)/nE(C) has one element; the differential-preserving stabilizers for n=3,4,5 have orders 9,16,25. Full generic divisor stabilizers instead have 18,32,50. | Keep acting group and fixed differential. |
| Divided cubic discriminant (2358) | (1,0,0,1): normalized D=1, ordinary disc −27; scalar 2 gives D=16. T sends it to (2,1,1,1) with D=1; wrong ordinary substitution (2,3,3,1) gives −23. diag(2,1) gives D=64=2⁶. | Degree drop and characteristic 3 treated separately. |
| Three-isogeny mirror (2372) | Constant kernel D=1 gives Dhat=−3, neutral divided tuple (0,1,0,−3) has D=−12 and ordinary discriminant 324=−27·(−12). Split mirror unit (2,1/2) has norm 1; (2,1) has norm 2, not a cube. Rational stabilizer 3 and one integral stabilizer 1 give m=3 and mass 1/3. | Keep mirror twist, norms and multiplicities. |

The exact arithmetic residue enumeration covered 60,073 quartic tuples and 793 quadratic tuples. The F₅ orbit enumeration used all 3,125 coefficient tuples and all 480 invertible matrices, then obtained two 60-element orbits in the selected 120-element invariant fibre. These are scratch computations, not added roadmap algorithms.

| Lean headline | Direct signature/instance test and values | Result |
|---|---|---|
| cubicInvariant_determines_orbit | Over Q, x⁴−y⁴ and its diag(2,1) transform have I=−12,J=0, both class 1; proper equivalence exists. Singular x³y versus zero has Delta=0 and no equivalence. | Binders exclude the false singular instance; no one-tactic proof. |
| solubleOrbit_bijection | F₅ fibre I=1,J=0: 120 forms / 60 per orbit = 2, equal to 10 / 5 = cardinality E/2E. Both orbits have square-valued evaluations. | No F₅ exclusion in the elaborated type. |
| cubicInvariant_quarticOfPoint_eq_mu | E:y²=x³−81x, P=(0,0): invariant/native representatives have componentwise square ratio (1/9,4/81,1). P=O gives 1=1. | Native corrected two-torsion branch retained. |
| stabilizer_twoTorsion | Q example has one rational cubic root plus the identity, hence 2 elements versus 2 stabilizers; F₅ example has 2 versus 120/60=2. Over C the corresponding group is (Z/2)², order 4. | Injection plus range is an isomorphism onto the intended subgroup. |
| mem_selmerGroup₂_iff | Identity quartic has norm 1 and restrictions 1 at finite and infinite places, hence witnesses m=1; the type explicitly includes NumberField K. | Norm and every completion retained. |
| exists_integral_local | A=−1,B=0,f=(0,4,0,−4,0), p=2 or 3: hDelta=−4, invariants (48,0), same integral representative. | No unit-discriminant hypothesis hidden in the type. |
| exists_integral | Same rational tuple: all finite-place solubility predicates true by (1:0:0); witness is the same integer tuple. | Global statement uses all finite primes; real solubility is not needed for this integrality claim. |

**Pinned declarations opened.** The pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. In the following table, `Mathlib/` means the repository-relative prefix `.lake/packages/mathlib/Mathlib/`, and `TauCeti/` means `.lake/packages/TauCeti/TauCeti/`. The table records 24 declaration checks, grouped by their mathematical use; these are not claims about a newer library.

| Pinned file and line | Declaration and boundary checked |
|---|---|
| `Mathlib/RingTheory/Discriminant.lean:113` | `Algebra.discr_of_matrix_mulVec`: basis-coordinate determinant is squared. It supplies the trace-lattice identity, not the orbit parametrization. |
| `Mathlib/RingTheory/Trace/Basic.lean:501` | `Algebra.traceForm_nondegenerate`: finite-dimensional separable field extension. A finite étale product still needs its product comparison; inseparable fields are not covered. |
| `Mathlib/LinearAlgebra/FreeModule/PID.lean:385`, 532 | `Module.free_of_finite_type_torsion_free'`, `Submodule.smithNormalForm`: finite generation and torsion-freeness/basis hypotheses are explicit. |
| `Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean:434` | `IsCoprime.exists_SL2_col`: any prescribed column of a 2-by-2 matrix over a commutative ring, determinant one. The 3-dimensional primitive-vector extension is not this declaration verbatim. |
| `Mathlib/LinearAlgebra/QuadraticForm/Basic.lean:667` | `LinearMap.BilinMap.toQuadraticMap`: diagonal evaluation B(x,x); its companion is B plus its transpose. Polar vanishing in characteristic two cannot replace quadratic vanishing. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Basic.lean:52`; `Projective.lean:54`, 57 in that directory | `center_eq_range_scalar`, `ProjGenLinGroup.mk`, `mk_surjective`: abstract quotient and its surjectivity. This does not identify arbitrary rational points of a group-scheme quotient with a quotient of rational points. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/XSubT.lean:276`, 505, 548, 794, 961, 991, 1030 | `A`, `M`, `μX`, `μ`, `ker_μ_eq`, `normM`, `range_μ_le_ker_normM`. The μX branch at a root uses the corrected unit. The kernel and norm statements are native two-descent inputs, not new targets here. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/LocalCondition.lean:156`, 234, 270 | `localRes`, `localCondition`, `localRes_comp_μ`: unit-squareclass restriction and preimage of the local Kummer range. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104`; `TwoTorsion.lean:57` in that directory | `selmerGroup₂`, `card_ker_nsmul_two`: norm kernel intersected with finite and infinite local conditions; cubic roots plus identity, respectively. |
| `TauCeti/FieldTheory/GaloisGroups/Resolvent/Quartic/Basic.lean:243`; `Discriminant.lean:85` in that directory | `resolventCubic`, `discr_resolventCubic`: for depressed X⁴+pX²+qX+r the cubic is X³−pX²−4rX+4pr−q². This is not an integral resolvent order. |
| `TauCeti/NumberTheory/NumberField/Monogenic.lean:68` | `NumberField.IsMonogenic`: generation of the maximal number-field order. It neither remembers a generator nor includes nonétale cubic rings. |

Further resolvent declarations were opened together: `TauCeti/FieldTheory/GaloisGroups/Resolvent/Quartic/Basic.lean:74`, 188,229 give `quarticD4Invariant`, `quarticD4Spec`, `quarticD4Spec_specialize`; `Quintic/Basic.lean:70`,202,215,223,231,237 give `quinticF20Invariant`, `quinticF20Spec`, `card_renameOrbit_quinticF20Invariant`, `resolventSextic`, `monic_resolventSextic`, `natDegree_resolventSextic`. The six-element orbit and monic degree-six polynomial do not supply the sextic lattice with discriminant (16 Disc R)³. The associated quartic separability declaration and monogenicity/index-one equivalence were also inspected. Object searches found no pinned integral cubic/quartic/quintic multiplication-table or regular-pencil Fano construction that would replace the new representation-specific targets.

**Resolved supplier contracts and ownership.** The indexed roadmap search was used for the constructions, not only their proposed names: cubic algebras/index forms, quartic rings/resolvents, monogenized cubic rings, quintic/sextic algebras, symmetric pencils/Fano torsors, Selmer comparisons and hyperdeterminants. I also searched the board packages and the supplied sibling checkouts. The ArithmeticStatistics umbrella is an index of its parts, not a second construction. The later statistics parts and HeightsRationalPointsAndObstructions consume these dictionaries. No duplicate fully qualified name of a retained Lean declaration was found. No construction was moved to a later supplier.

The following contracts were resolved against main where present and the available new-roadmap head otherwise. Paths are repository-relative; line ranges identify the inspected contract rather than a declaration promised to exist in Lean.

| Supplier and inspected location | Resolution / ownership boundary |
|---|---|
| `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md:650–700`, §§5.4–5.5 | Cubic action, discriminant and general projective algebra correspondence, including free tables, normalization and stabilizers. R01 is the overlap. |
| `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:1275`, §0.8; 2366, §0.22; 2446, §0.23 | Coefficients, invariant polynomials and heights, fixed-degree discriminants, local proportions, binary-form orders and signed symmetric pencils. Part II's new tables and orbit comparisons are distinct from these carriers. |
| `TauCetiRoadmap/EllipticCurves/README.md:1154`,1200,1262,1374, Layers 5–8 | Twists, Mordell–Weil, Selmer sequence, localization and integral short models. Native explicit two-descent is imported through the pinned modules above. |
| `Completed/GlobalNumberFields/README.md:572–608`, Layer 11 | Number-field orders and ideals. The present finite étale product-algebra lattice and noninvertible-module variants extend beyond this specialization. |
| `Completed/PolynomialGaloisGroups/README.md`, Layers 0,2,4,6 | Root permutation actions and generic resolvents. Retaining integral lattices and orientations distinguishes the new comparisons. |
| `TauCetiRoadmap/GlobalQuadraticForms/README.md:665`, §5.5 | Hasse–Minkowski for regular forms over number fields, hence the nonsingular conic test; not a general-field local-global assertion. |
| `Completed/OrthogonalSpinGroups/README.md:331–407`, Layer 0 | General orthogonal group, determinant kernel and base change. Fixed arithmetic matrices/lattices here are specializations. Its bilinear/quadratic comparison retains invertibility of two. |
| `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:248`,324,1258, §§0.2–0.3,4.1 | Primitive bases, saturation/covolumes and semialgebraic lattice bounds. The nonzero Plücker-minor fibre count remains representation-specific. |
| `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:1086`,2873, §§2.4,4.3 | Unit equations and effective Thue finiteness. The bound on the number of solutions is separately hypothesized/cited here, rather than inferred from finiteness. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4905`,4937, §§3.6–3.7, with Layers 0–2 | Unpointed Picard torsors and Brauer obstruction; finite étale descent and fppf torsors. A rational Picard point is not automatically an actual rational divisor. |
| `TauCetiRoadmap/JacobianChallenge/README.md:111`,218, Layers A,D | Pointed Jacobians and divisor/line-bundle comparison. The pencil Fano construction is not supplied by merely choosing a Jacobian. |
| `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:306`,505,602, §§1.1–1.3 | Projective and Grassmannian representability. The present closed isotropic loci and torsor identification are new. |
| `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1042`,1381,1584, Layers A2–A3 | Isogeny kernels, duality and theta-group pairings. Characteristic restrictions must be applied to each representation as in R02. |
| `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:2542–2668`, §§4.8–4.12 | All six named Bgw contracts exist: smooth model, nodal pinch, generalized Jacobian, two-torsion, odd-factor torsors and boundary cup product. The norm-one torus and divisor-at-infinity convention match. |
| `TauCetiRoadmap/SelmerIwasawaCohomology/README.md:676–725`, §2.12a | Number-field abelian Kummer localization and finite Selmer groups are owned, with all places and actual Kummer images. Correct the invented names as R06. |
| `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:3870–3925`, §R02.4.5 and Layer R02.4 | Prime-to-characteristic restricted-ramification finiteness over global function fields and global-to-local Brauer input. The explicit function-field Jacobian adapter is a target here, not silently attributed to number-field Selmer theory. |

These are 16 resolved supplier groups. The downstream HeightsRationalPointsAndObstructions §3.18a was inspected as a consumer, not counted as a supplier. Main-branch roadmap shape was compared with the GlobalQuadraticForms and completed EffectiveBounds and GlobalNumberFields READMEs. The target has its Summary, scope, conventions, contracts, build order, one layer with Examples and Dependencies, downstream consumers and references. Its definition blocks have API requirements and at least three Checks; R04 concerns their presentation as undeclared Lean identifiers, not deletion of their mathematical content. The trivial-group, degree-drop, small-characteristic, nonétale, nonmaximal, nonsquare-norm and central-kernel controls in the table distinguish the important wrong models.

## Not verifiable

- The published numbering of O'Dorney's quartic-resolvent results (ref-53) was not certified from the published text. The legal Harvard author preprint was readable: lines 1172–1189 (Lemma 8.4),1235–1278 (Theorem 8.5 and Corollary 8.7),1315–1330 (Example 8.10) support the content/uniqueness comparisons. Its numbering differs from the publication cited by the README. The source service and the author/institutional copy were checked; this limitation is not an assertion that the mathematics is false.
- The source itself omits the nonétale rational quintic realization argument (ref-10 lines 1404–1406). Consequently that part cannot be certified as a supplied proof. The README explicitly owns the missing argument, so this is recorded as a source gap rather than an unowned prerequisite finding.
- No finite set of examples certifies the full general orbit, Fano-torsor or weak-lift theorems. The table records the actual computations and source/hypothesis checks, not machine-checked proofs of those future targets. Lean elaboration verifies the seven signatures only; their proofs remain sorry.

## Source issues

- **Misprint** in ref-6 at §2, equation (10) and the following index-form calculation, printed p.5: the source says the displayed square has coefficients b,−a,d,−c; it should be −b,a,−d,c as in its multiplication table; affects the proof.
- **Misprint** in ref-7 at §2, footnote 1, printed p.3: the source says its ordered-basis wedge recovers p; it should be −p with the displayed multiplication convention, or use the opposite volume orientation; affects the proof.
- **Misprint** in ref-9 at §3.2, equation (23), printed p.1343: the source says choose k different from j in the constant-coefficient identity; it should be k different from i; affects a stated result.
- **Misprint** in ref-9 at §3.5, cubic-resolvent footnote, printed p.1345: the source says the constant term is −p²s−4qs+r²; it should be 4qs−r²−p²s; affects a stated result.
- **Misprint** in ref-10 at §4, paragraph following equation (22), printed p.69: the source says a general quintic basis has only 1,alpha₁,alpha₂,alpha₃; it should be 1,alpha₁,alpha₂,alpha₃,alpha₄, as the next sentence confirms; affects nothing.
- **Gap** in ref-10 at §10, rational-realization argument, printed p.84: the source says nonétale rational quintic algebras are handled by omitted cases; it should be accompanied by the case argument producing rational tensors; affects the proof.
- **Misprint** in ref-11 at Lemma 10 proof, printed p.7: the source says t equals p₂/p₁ without assuming p₁ nonzero; it should be t=a₂/a₁ with p₂=tp₁, allowing p₁=p₂=0; affects the proof.
- **Gap** in ref-1 at Proposition 2.16 proof, printed p.17: the source says inequivalent ternary pairs necessarily give inequivalent determinant cubics under the unipotent group; it should be justified with the residual sign fibre retained; affects the proof.
- **Misprint** in ref-15 at Remark 4.2, printed p.26: the source says the degree-two pair twists the elliptic curve with O(3O); it should be O(2O); affects a stated result.
- **Error** in ref-59 at Proposition A.1, printed p.53: the source says the degree-four binary squarefree density at three is 1600/2187; it should be 176/243=1584/2187, agreeing with 42768 good tuples modulo nine; affects a stated result.
- **Error** in ref-59 at Proposition A.1 proof, displayed nu₁ formula, printed p.53: the source says the exponent is −n, giving 80/729 for monic quartics at three; it should be 2−n, giving 8/81=648/6561; affects the proof.
- **Misprint** in ref-59 at Proposition A.1 proof, Subset 2, printed p.54: the source says the proportion with discriminant divisible by p² is nu₀+nu₁; it should be 1−nu₀−nu₁, since the named sets are the bad loci; affects the proof.
- **Error** in ref-73 at paragraph following Corollary 19, printed p.9: the source says the norm squareclass is f₀ for every degree; it should be f₀^(n−3), hence trivial in odd degree; affects a stated result.
- **Error** in ref-75 at Proposition 3.6, printed p.11: the source says the product of the two top-block Gram determinants divides the discriminant; it should be omitted: the g=1 example above has product 2 and discriminant 5; affects a stated result.
