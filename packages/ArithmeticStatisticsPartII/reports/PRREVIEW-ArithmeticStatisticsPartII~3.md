# Review of ArithmeticStatisticsPartII (pull request #1173 at 86c4511)

**Verdict:** accepted

🤖 Independent AI review. Both previous blocking findings are repaired. One nonblocking documentation finding remains; the folder is ready for a human’s final approval.

## R01 (P3) — Keep the missing-carrier note for cubic maximality and switching

Location: `TauCetiRoadmap/ArithmeticStatisticsPartII/Suggested.lean:23–28`: “The quartic and quintic ring dictionaries”.

Claim: the revised module docstring inventories the headlines whose signatures require unavailable carriers, but removing the cubic dictionary from that inventory also removes the explanation for the retained §1.2 headlines.

Witness: `TauCetiRoadmap/ArithmeticStatisticsPartII/README.md:3,246,262,276` still promises cubic maximality and index-p subring/overring counts. The seven Lean theorems all concern binary quartics; the docstring names neither of these cubic results.

Repair: add one docstring sentence naming §1.2’s cubic maximality and index-p switching theorems and their missing general integral cubic-algebra/overring carrier and form-to-algebra construction. Keep normalization and equivalence attributed to AnalyticNumberTheoryPartII §5.5. This covers both the split cubic, with three index-2 subrings, and the square-zero cubic, with three index-2 overrings; a cubic-field-only carrier would not cover them. No substitute Lean theorem is needed.

## Previous findings

- R01 — repaired: README:11,52,129–170 imports normalization and equivalence from AnalyticNumberTheoryPartII §5.5. The repeated construction and inverse are deleted; the retained adapter specifies inverse-transpose coordinates, composition and finite weights.
- R02 — repaired: README:1995–2009 includes characteristic five for degrees two through four and excludes it separately for degree five. The new geometric Check gives discriminant 4, j=2 and stabilizer orders 8,18,32.

## Verified sound

This is an incremental re-review of 103 changed lines since 1e084f6. I reviewed all changed passages, their affected cubic and genus-one dependencies, the new Checks, and the changed module docstring. The previous full review’s untouched source and adversarial evidence is explicitly carried forward below, rather than presented as a new full review. No mathematical Lean declaration changed: the diff there changes only the module docstring.

The supplied head-specific gate passes, including its build check. The independent gate rerun returned:

```text
gate ArithmeticStatisticsPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The separate targeted build `lake build TauCetiRoadmap.ArithmeticStatisticsPartII.Suggested` succeeded. Direct `lake env lean` elaboration also succeeded, with exactly seven sorry warnings. A scratch copy with `#check @name` for all 22 declarations elaborated: the characteristic, discriminant, number-field and local-primality hypotheses survive, with every finite and infinite completion in the local-solubility definition. No signature changed or binder repair was needed. All seven single-`simp` admission replacements failed. Inspection of the bodies and native Selmer membership unfolding also excludes a reflexive, instance-synthesis or direct imported-lemma proof of these orbit statements; no padding finding is added.

The independent supplier-order check returned:

```text
depcheck: 205 roadmaps, 1459 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All 89 standalone Needs lines were read, along with the inline supporting-descent contracts. All repointed cubic edges resolve to the earlier owner; no declared gap is assumed. The outside-folder diff is empty, HEAD is 86c451117bb4ead6086740fdffe6b9b7135935c6, and the worktree remains clean. No roadmap file was edited.

**Sources checked in the changed passages.** Four texts were fetched through the legal sources service, using their existing identifiers; no manifest was edited. No changed locator is marked unverified.

| Target | Source and exact support checked |
|---|---|
| §1.1 based index-form and stabilizer adapters | ref-6 lines 235–283,306–310: twisted action, multiplication signs, split basis and Proposition 12, preprint pp.4–6. ref-7 lines 33–39,98–169: PID/local hypotheses, unique shifts, basis-change calculation and Proposition 2.1, pp.1,3–4. The two sign conventions were compared directly, including the source slips recorded below. |
| §1.1 all-field étale criterion | stacks-0bjf lines 269–285: Lemma 49.3.1, tag 0BJF, finite locally free trace/discriminant criterion. Its field argument expressly includes reduced products and inseparable residue fields. |
| §1.2 repointed normalization/equivalence dependencies | ref-6 lines 330–385: Lemma 13, Theorem 14 and Propositions 15–16, pp.6–8. Both index-p and index-p² shapes and the double-root lift condition remain unchanged. |
| §1.14 characteristic restrictions and stabilizer groups | ref-15 lines 1203–1239,1284–1300,1335–1346,1384–1443: Theorems 4.1,4.5,4.11,4.14 and divisor-quotient remarks, pp.26–31. The Z[1/6] scope includes characteristic five in degrees 2–4; lines 1411–1412 impose the separate degree-five exclusion. Scalar kernels and line-bundle versus divisor stabilizers are retained. |

The other seeded targets retain the previous source reading. The following rows cite [previous] and carry its evidence, not a claim that those sources were fetched again:

| Target | Carried source evidence |
|---|---|
| 1.3 Quartic rings | ref-9 lines 445–490,550–643,677–685,813–865,942–956,1103–1118: multiplication, orientations, nonzero minor fibres, degenerate resolvent data and maximality. The k≠i repair agrees with associativity. The alternative published ref-53 locators remain uncertified.  [previous]. |
| 1.4 Alternating tensors | ref-10 lines 69–90 (Theorems 1–2, pp.54–55),687–745 (§4, pp.66–69): four alternating matrices, quadratic sub-Pfaffians and degree-five brackets. Scalar and determinant weights agree with 40 coordinates; characteristic two requires zero diagonal.  [previous]. |
| 1.5 Covariants, additional check | ref-11 lines 75–107,183–275,361–380,448–510: admissible evaluation, Lemmas 3,9,10 and Theorems 11–13, pp.2–11. The F₅ evaluation exception is separate from the point-orbit and stabilizer theorems.  [previous]. |
| 1.6 Points/two-descent | ref-1 lines 1251–1269: Theorem 3.2 and Proposition 3.3, p.23. ref-14 lines 65–91: Lemma 2.1, p.2. ref-17 lines 434–450 and ref-18 lines 116–150: local solubility kills the relevant Brauer obstruction. The torsion correction in the native descent map is retained.  [previous]. |
| 1.7 Integral quartics | ref-12 lines 225–236,436–471,507–520,550–575,617–622: Theorem 2.8, Theorem 3.8 and Lemmas 3.11,3.13,3.14, pp.6–16; PID and projection hypotheses retained. ref-1 lines 1272–1281,1335–1369: scaled integral models and local/global lattice argument.  [previous]. |
| 1.8 Embedding/fibres | ref-1 lines 831–919: equations (30)–(34), Theorem 2.14 and Proposition 2.16, pp.16–17. ref-16 lines 266–332: Theorem 3.1, Lemma 3.2 and Proposition 4.1, pp.6–7. ref-80 lines 130–160: Theorem 1.4, p.1509 and the p.1510 example. The corrected coordinate permutation and bound 2N are justified separately from the source's sign-losing argument.  [previous]. |
| 1.9 Local densities | ref-59 lines 3300–3421: Appendix A, Propositions A.1–A.2, pp.53–55. Counts below independently validate the corrected quartic factor and distinguish maximality from squarefree discriminant at two.  [previous]. |
| 1.10 Quintic/sextic rings | ref-10 lines 687–745,1100–1163,1360–1411,1470–1515,1730–1786: §§4,6,10–12. Integral combinations of coefficients and the sextic discriminant factor 16³ are retained. The omitted nonétale realization argument is explicitly a target here.  [previous]. |
| 1.11 Monogenized resolvents | ref-16 lines 235–256,303–332: Proposition 2.3, Theorem 2.5, Proposition 4.1 and Theorem 1.1, pp.5–7. Generator modulo integer translation, including degenerate cubic rings; not unmarked monogenicity.  [previous]. |
| 1.12 Pencils/Jacobians | ref-73 lines 276–366,500–522,572–674,740–770,824–838,926–980,1103–1125: Theorems 16–17,23–25,28–31 and Proposition 34. Norm exponent, central quotient, actual divisors, generalized modulus and powers of two retained. ref-81 lines 2794–2810,2843–2877: I §6, Lemma 6.1 and Proposition 6.4, pp.73–75, prime-to-characteristic Kummer input.  [previous]. |
| 1.13 Weak lifts | ref-59 lines 386–425,544–605,645–743: Q, Theorem 3.5, Theorem 3.7, Propositions 3.8–3.9, pp.8–14. ref-74 lines 413–443,748–759: half/quarter-integral lattices and even-degree factorization exclusion. The false Gram-product divisibility is not imported.  [previous]. |
| 1.15 Étale resolvents | ref-9 lines 339–414,618–692: §2.3 conjugate-pair map, §§3.3–3.5 discriminants and extension to zero discriminant. Pinned polynomial resolvents do not supply the integral lattice.  [previous]. |
| 1.16 Good-prime pencils | ref-73 lines 1203–1260: Proposition 35 and proof, p.29. Odd p, p²∤Δ, nonzero leading coefficient and an actual degree-one divisor are retained. Earlier unrestricted integral existence prevents a good-primes-only shortcut.  [previous]. |

**Ownership and resolved citations.** The object search used the roadmap index (main and open heads), the board packages and relevant supplied sibling checkouts, followed by reading the supplying passages. The new work is the coordinate/weight adapter, not a second cubic equivalence. The package search found no additional owner for the changed adapter. ArithmeticStatisticsPartI imports the same equivalence and fixes the simultaneously negated basis. No new Lean name is introduced. The citation resolver now reports no unresolved cross-roadmap citation or roadmap Lean name; its external-library check was unavailable, so the relevant pinned declarations were opened directly.

| Supplier; repository-relative locator | Resolved contract |
|---|---|
| `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md:656`, §5.4; :673, §5.5 | Row-variable determinant-twisted action, both multiplication signs, normalizing scalar shifts, inverse index form, free/local construction and projective gluing, stabilizer isomorphisms. The characteristic-zero local-field sentence concerns its étale orbit classification, not the general-base multiplication. |
| `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md`, Cubic supplier conventions; §§0.3–0.4,0.12,0.22–0.23 | Coefficients, negated basis, trace discriminants, maximality convention, quartic invariants, fixed-degree binary orders and signed symmetric pencils. In the split basis traces are (3,−1,−1), and determinant 1, matching §1.1 here. |
| `TauCetiRoadmap/EllipticCurves/README.md`, Layers 1,5–8 | Isogenies, twists, Mordell–Weil, Selmer/localization and integral-model interfaces; no characteristic-five exclusion added by the changed passage. |
| `Completed/GlobalNumberFields/README.md:571`, Layer 11 | Number-field orders and invertible-ideal Picard theory; the product-algebra full-lattice comparison remains distinct. |
| `Completed/PolynomialGaloisGroups/README.md`, Layers 0,2,4,6 | Root permutations, generic resolvents and transitive groups; does not identify integral resolvent lattices. |
| `TauCetiRoadmap/GlobalQuadraticForms/README.md:544`; `Completed/OrthogonalSpinGroups/README.md:331` | Hasse–Minkowski and general orthogonal/special orthogonal groups. |
| `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md`, §§0.2–0.3,4.1; `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md`, §§2.4,4.3 | Adapted primitive bases, covolumes, lattice estimates, unit equations and Thue finiteness. The separate uniform Thue-solution bound remains a hypothesis. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:4905`, §§3.6–3.7 and Layers 0–3; `TauCetiRoadmap/JacobianChallenge/README.md:111,218`, Layers A,D | Finite étale descent, torsors, Picard components and the Picard–Brauer obstruction. Actual divisors are not replaced by rational Picard-scheme points. |
| `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md`, §§1.1–1.3; `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md`, A2–A3, especially A3.5–A3.6 | Projective/Grassmannian carriers, isogenies, Cartier-dual kernels and theta groups. The characteristic-five Check uses torsion prime to the characteristic. |
| `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:2542`, §§4.8–4.12 | BGW smooth and nodal models, generalized Jacobian, two-torsion, odd-factor torsors and boundary comparison. |
| `TauCetiRoadmap/SelmerIwasawaCohomology/README.md`, §2.12a; `TauCetiRoadmap/ArithmeticGaloisDuality/README.md`, R02.4 and R02.4.5 | Abelian Kummer/Selmer carriers and finiteness, Brauer local-global comparison and prime-to-characteristic function-field cohomology. |
| `TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md`, §3.18a | Downstream use of the pencil dictionaries; no reverse supplier edge. |

Shape was compared with main’s GlobalQuadraticForms and completed EffectiveBounds. The new stabilizer adapter has an API and four Checks; characteristic-five coverage is now explicit. The seven statable headlines remain proper-orbit classification, soluble-orbit classification, compatibility with native two-descent, two-torsion stabilizers, the number-field two-Selmer dictionary, and local/global integral representatives. The remaining owned headline families are cubic maximality/switching, quartic/quintic ring and resolvent dictionaries, ternary-pair fibres, local densities, monogenized resolvents, pencil/Fano/Selmer comparisons, weak lifts, genus-one group schemes, étale-resolvent comparison, good-prime uniqueness and higher-degree/three-isogeny descent. Their missing-carrier explanations are retained except for R01’s cubic omission. Cubic normalization/equivalence is now correctly a supplier input.

**Pinned declarations opened this round.** Mathlib pin 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti pin a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039 are unchanged. Here Mathlib/ and TauCeti/ abbreviate their repository-relative pinned package source roots.

| File and line | Declaration and boundary |
|---|---|
| `Mathlib/Algebra/CubicDiscriminant.lean:43,461` | `Cubic` has four coefficients, including a zero leading coefficient; `Cubic.discr` is the coefficient expression, with no finite-free cubic algebra bundled. |
| `Mathlib/GroupTheory/GroupAction/Defs.lean:515,524` | `MulAction.stabilizer` and `mem_stabilizer_iff` impose g·a=a; neither finiteness nor an algebra-automorphism comparison is included. |
| `Mathlib/RingTheory/Trace/Basic.lean:501` | `Algebra.traceForm_nondegenerate` requires a finite-dimensional separable field extension. The general finite-algebra criterion also needs the product/nilpotent argument, supplied by Stacks 0BJF. |
| `Mathlib/LinearAlgebra/Matrix/BilinearForm.lean:499` | `LinearMap.BilinForm.nondegenerate_iff_det_ne_zero` compares a bilinear form with its matrix in a basis. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104,111` | `selmerGroup₂` and its membership theorem impose norm and all local conditions; the quartic-orbit theorem is not this unfolding. |
| `TauCeti/FieldTheory/GaloisGroups/Resolvent/Quartic/Basic.lean:243` | `resolventCubic` produces a polynomial; it does not supply the general integral cubic ring and its subring/overring dictionary. |

These are nine named pinned declarations, in addition to the 22 elaborated local signatures. Other unchanged pinned-library checks remain the evidence of [previous].

**New adversarial values.** Each row records a changed mathematical statement, an API part of the replacement adapter, or a consumer whose supplier edge changed. Calculations use the same row-variable convention as both suppliers. Finite tests are evidence about the conventions and hypotheses, not proofs of the general theorems.

| Statement at this head | Instances and values on both sides | Result / change |
|---|---|---|
| Summary/scope/contracts: cubic equivalence is imported | Split form xy(x−y) gives rank 3 and trace determinant 1 in both suppliers and here; zero gives rank 3 and determinant 0 in all three. | Deleted construction does not drop the degenerate case. |
| §1.1 based index-form adapter, README:105–140 | For (1,−e₀,−e₁) in Z³ the basis determinant is 1. At (x,y)=(1,2),(2,1),(0,1),(1,1), determinant index and xy(x−y) both give −2,2,0,0. Negating both quotient vectors changes f to −f. | Sign and determinant twist agree with Part I and the analytic supplier. |
| Based stabilizer coordinates, README:143–162 | S=[[0,1],[1,0]], T=[[1,−1],[0,−1]] are the two coordinate transpositions. ST=[[0,−1],[1,−1]], and (ST)⁻ᵀ=[[−1,−1],[1,0]]. | Adapter applies to the nonabelian S₃ example. |
| Composition API, README:148 | S⁻ᵀT⁻ᵀ=[[−1,−1],[1,0]]=(ST)⁻ᵀ. Transpose alone gives (ST)ᵀ=[[0,1],[−1,−1]]=TᵀSᵀ, unequal to SᵀTᵀ. | Wrong transpose-only homomorphism is excluded. |
| Cardinality-weight API, README:149 | Split algebra: 6 automorphisms=6 stabilizers, weight 1/6. Non-Galois Q(cuberoot(2)): 1=1, weight 1. Square-zero algebra: both GL₂(Z), infinite; trace determinant 0=0. | Finite reciprocal weight is expressly unavailable in the infinite example. |
| Reducibility consumer, README:164–170 | y(x²+y²) has root (1:0), a=0 and ωθ=0 with nonzero basis vectors. x³−2y³ has no Q-projective root and gives a degree-3 field. | Both directions unchanged; normalization is supplied. |
| All-field étale comparison, README:179–198 | Split cubic has determinant 1 and three separable factors; K[t]/t³ has determinant 0 and t≠0,t³=0. Over F₃(t), u³−t is a field but derivative and trace discriminant are 0. | Retained positive-characteristic extension distinguishes fieldhood from étaleness. |
| Small overrings consumer, README:231–240 | x³+y³ at p=3 has discriminant −27 and overorder discriminant −3, ratio 9=3², index 3. Scaling a primitive form by 3 gives Z+3R, index 9=3² in R. | Both allowed enlargement shapes survive the imported normalization. |
| Maximality headline touched by R01, README:246 | xy(x−y) has discriminant 1, maximal split ring and membership in every U_p. x³+y³ has index-3 overorder and fails U₃: transformed a=0,b=3 satisfy 9 divides a and 3 divides b. | Same true iff; missing docstring coverage, not a mathematical failure. |
| Index-p subrings, README:262 | At p=2, split cubic roots are the three points of P¹(F₂); coordinate-equality subrings number 3. Zero form has p+1=3 projective zeros and three codimension-one radical subrings. | Counts 3=3 in both cases. |
| Index-p overrings, README:276 | Zero form at p=2 has three double projective zeros, all lift values 0 mod 4; the square-zero radical has three index-2 enlargements. Split Z³ has zero such roots and zero overrings. | Counts 3=3 and 0=0; the general cubic carrier is necessary. |
| Quartic ring/resolvent consumer, README:354–374 | Split Z⁴,Z³ have quotient ranks 3,2 and trace discriminants 1=1. Square-zero examples have discriminants 0=0; equality alone does not fix orientation or quadratic map. | Full resolvent data are retained after repointing. |
| Quartic-ring-of-pair consumer, README:390–422 | The displayed test pair has trace matrix [[4,0,0,−1],[0,0,−3,0],[0,−3,0,0],[−1,0,0,1]], determinant −27; its determinant cubic is x³+y³, discriminant −27. | Supplied cubic equivalence recovers the same resolvent. |
| Quartic parametrization consumer, README:478–486 | That pair gives discriminants −27=−27. The zero pair gives square-zero algebras of ranks 4 and 3 with discriminants 0=0. | The imported inverse includes zero discriminant. |
| §1.14 degree-dependent presentation/stabilizer theorem, README:1995 | Over an algebraic closure of F₅, E:y²=x³+x+1 has Δ=−16·31=4, j=1728·4/31=2; 1728=3. Thus Aut(E,O) has order 2. For d=2,3,4, d²=4,9,16 and divisor stabilizers 2d²=8,18,32. Degree 5 remains outside these hypotheses. | Previous R02 repaired with actual admissible examples. |
| New Check and central-kernel distinctions, README:2009–2015 | E(F₅) has 9 points, distinct from the geometric torsion counts. The central scalar pair acts by t⁻²t²=1; the degree-five tensor dimension is 5·10=50, versus 4·10=40 for quintic rings. | Geometric versus rational points and the two representations are not conflated. |
| Suggested.lean docstring, lines 23–28 | Seven quartic headline signatures before=seven after; cubic normalization/equivalence declarations before=zero after. Section 1.2 still has maximality and the two index-p counts (3=3 above), but now zero named missing-carrier explanations. | R01 is documentation-only; no replacement cubic declaration requested. |

**Carried adversarial rows.** Each row below cites [previous], whose computed values are retained for the untouched statement. Parenthesized README line numbers refer to 1e084f6, not this head. Removed normal-basis/equivalence targets and the replaced stabilizer and characteristic-restriction rows are omitted; the fresh rows above cover the changed statements and their immediate consumers.

| Target (previous README line) | Instances and computed values on both sides | Result / change; evidence |
|---|---|---|
| Full-lattice order comparison (66) | Z+2Z⁴ in Z⁴: index 8, determinant-square factor 64, trace discriminants 64 and 1. In Z+2Z² the larger stable lattice Z² has determinant norm (1/2)Z; its multiplier is Z², not the original order. For D[epsilon]/epsilon², adjoining epsilon/pi gives index q and still epsilon²=0. | Keep product and degenerate cases; do not require invertible ideals.  [previous]. |
| Quotient by scalars is free (87) | A=R gives quotient rank 0=n−1. For (Z/4)³, columns (1,1,1),e₁,e₂ have determinant 1; scalar vector extends. | Keep n≥1.  [previous]. |
| Davenport heilbronn sets (239) | x³+y³ at p=3 transforms to coefficients (0,3,−3,1), satisfying 9 divides 0 and 3 divides 3: rejected. Zero also rejected. xy(x−y) has discriminant 1 and passes every p. | Keep.  [previous]. |
| Pairs of ternary quadratic forms (329) | A=x₁x₃−x₂², B=x₁²+x₂x₃: 4det(xA−yB)=x³+y³, discriminant −27. The half-integral Gram matrix gives integer polynomial coefficients. | Keep factor 4 and minus sign.  [previous]. |
| Quartic minors (469) | Coefficient rows (1,0,0,0,0,0),(0,1,0,0,0,0) give one minor 1, all others 0, content 1. Proportional rows give all 15 minors 0. A 2-by-2 determinant-one row change preserves these values. | Keep zero/nonzero distinction.  [previous]. |
| Integral minor fibres (497) | A primitive rank-two wedge has content 1 and one oriented sublattice class. Content 2 gives index-2 sublattices of Z²: counts 1+2=3. At content 0 the rank-two finite-fibre argument fails. | Keep nonzero-minor hypothesis.  [previous]. |
| Quartic invariant index (533) | Primitive split quartic: content 1 and invariant index 1. Q=Z+2Z⁴ has content 2; the asserted invariant index is 2, while [Z⁴:Q]=8. These are different indices. | Keep distinction.  [previous]. |
| Existence and number of cubic resolvents (551) | Content 1 gives sum of divisors 1; content 2 gives 1+2=3. Zero content is not inserted into this finite divisor-sum formula. | Keep nontrivial-content restriction.  [previous]. |
| Maximality of quartic rings at p (569) | Z+2Z⁴ has overorder index 8=2³ and discriminant 64 versus 1. Three divided quotient vectors are necessary for this shape, not only one. Z⁴ is maximal at every prime. | Keep all three shapes.  [previous]. |
| Splitting types of pairs of ternary quadratic forms (587) | Modulo 5, x⁴−y⁴ has four distinct projective roots 1,2,3,4. Its cubic resolvent x³+4xy² has roots 0,1,4; discriminants are −256=4 and −256=4 modulo 5. | Split (1111) maps to split (111).  [previous]. |
| Quadruples of quinary alternating forms (607) | Four 5-by-5 alternating matrices have 4·10=40 independent coordinates. In F₂, [[0,1],[1,0]] has zero diagonal and is alternating; [1] is skew-symmetric but not alternating. | Keep zero-diagonal requirement.  [previous]. |
| Pgl2 orbits and stabilizers of binary quartic forms (649) | diag(2,1) sends x⁴−y⁴ to 4x⁴−y⁴/4; I=−12,J=0 on both. Scalar 2I acts by 2⁴/2⁴=1; untwisted substitution multiplies coefficients by 16. | Keep determinant-square twist.  [previous]. |
| Soluble binary quartic forms (683) | x⁴−y⁴ has value 0 at (1,1); −x⁴−y⁴ has strictly negative value at every nonzero real pair. At (0,0) both evaluate to 0, showing why that pair is excluded. | Keep projective nonzeroness.  [previous]. |
| Covariants of a binary quartic (731) | x⁴−y⁴ at (1,2): f=−15, h=192, g₆=−1088. x³y at (1,2): f=2,h=3,g₆=1. | Signs and leading-zero case retained.  [previous]. |
| Syzygy of binary quartic covariants (763) | For those two forms: 27g₆² and h³−48If²h−64Jf³ are respectively 31,961,088=31,961,088 and 27=27. For coefficients (1,2,3,4,5), both are 44,208,052,992. | Keep universal identity, including degeneracy.  [previous]. |
| Cubic invariant of a binary quartic (777) | I=3,J=0, point-at-infinity quartic x³y−xy³: evaluation (1,0) gives f=0,h=3,G=1. Zero quartic gives G=0 everywhere and fallback 1, but violates the nonsingular fixed-invariant hypotheses. | Fallback does not certify zero as a valid orbit.  [previous]. |
| Cubic invariant is an orbit invariant (827) | x⁴−y⁴ and 4x⁴−y⁴/4 have proper equivalence diag(2,1); both have a rational linear factor and class 1. At J≠0, negation changes J to −J. | Keep fixed invariants.  [previous]. |
| Linear factor forms (841) | x³y−xy³ at (1,0) has f=0,h=3,g₆=1, so G=h/3=1=(3g₆/h)². Its specified normal form has coefficients (0,1,0,−1,0). | Both the root and squareclass checks agree.  [previous]. |
| Auxiliary quartic root from equal cubic invariants (855) | g₁=g₂=x⁴+xy³: I=0,J=−27,a=1,p=0,r=8. Comparison −h has value 0 at (1,0); nonsingularity is −729≠0. | Keep p=0 case.  [previous]. |
| Linear factor of the comparison quartic gives equivalence (871) | Same example: a₂/a₁=1, r₂²=64=1³·64, identity matrix determinant 1. p₂/p₁ would be 0/0. For x³y versus zero, comparison is zero but discriminant is 0 and equivalence false. | README repairs the proof and excludes the false converse instance.  [previous]. |
| Cubic invariant determines the orbit (887) | The line-factor pair in row 827 has equal class 1 and a proper equivalence. The singular pair x³y,0 has I=J=0 and no invertible equivalence, so the discriminant exclusion matters. | Keep; nontrivial finite-field check below.  [previous]. |
| Quartic of a point (907) | On E:y²=x³−81x, O gives (0,1,0,−1,0), (0,0) gives (1,0,0,0,1/4). Both have I=3,J=0,Delta=4; the latter takes value 1 at (1,0). | Includes identity and two-torsion.  [previous]. |
| Cubic invariant of the quartic of a point (939) | In the split cubic T(T−9)(T+9), evaluate the (0,0)-quartic at (1,1): G=(1,−4,−9) at T=(−9,0,9). Corrected native descent is (9,−81,−9); ratios (1/9,4/81,1) are squares. At O both classes are 1. | Keep corrected torsion branch, not the nonunit −T alone.  [previous]. |
| Binary quartic parametrization of e mod 2e (961) | Over F₅, I=1,J=0: E has 10 points, E[2] has 2; quotient size 2. Exhaustive coefficient enumeration gives 120 quartics in this nonsingular fibre, two proper orbits of 60. | Characteristic five survives.  [previous]. |
| Bilinear factor criterion for proper equivalence (979) | For the identity equivalence, bilinear factor X₁Y₂−Y₁X₂ has coefficient determinant 1 and substitution matrix scalar-equivalent to I₂. For x⁴−y⁴ over Q the two proper self-equivalences are I₂ and diag(1,−1); over Q(i) there are four. | Keep invertibility and the F₅ separate argument.  [previous]. |
| Stabilizer of a binary quartic is two torsion (993) | For x⁴−y⁴ over Q, resolvent X³+36X has one rational root, hence 1+1=2 stabilizer elements. Nonidentity diag(1,−1) has trace 0 and square I₂; identity has trace 2. F₅ fibre above: 120/60=2. | Keep identity branch.  [previous]. |
| Image of the cubic invariant (1013) | I=3,J=0,m=1: Gram [[0,0,1],[0,1,0],[1,0,81]] has determinant −1=−N(1), and (1,0,0) is isotropic. m=2 gives determinant −8=−N(2), isotropic but norm 8 is nonsquare. Simon example (1/84,0,−2,28/3,−7) gives I=3,J=0,Delta=4 and norm 9604=98². | Keep square-norm domain.  [previous]. |
| Locally soluble quartics and the two selmer group (1031) | The linear-factor quartic x³y−xy³ has global point (1:0:0), local points at every place, class 1, norm 1 and local restrictions 1. | Identity agrees with the native Selmer carrier.  [previous]. |
| Primitive vectors extend to special linear matrices (1055) | Columns (2,3,0),(1,2,0),(0,0,1) have determinant 4−3=1. First column (2,4,0) forces every determinant to be even. Moving the prescribed column and negating another column corrects a permutation determinant of −1 to +1. | Primitivity is essential.  [previous]. |
| Ternary cubic forms and their invariants (1073) | F=Y²Z−X³+XZ² has c₄=48,c₆=0,Delta=64. Identity 48³−0=110592=1728·64. Zero cubic gives all three 0. | Keep invariant normalization.  [previous]. |
| Invariance of ternary cubic invariants (1119) | Scaling this cubic by 2 gives c₄=768,c₆=0,Delta=262144; factors are 2⁴ and 2¹². A determinant-one coordinate change has weights 1. | Keep separate scalar and determinant weights.  [previous]. |
| Projection of a plane cubic from a rational point (1133) | Project from (0:1:0): F₁=Z,F₂=0,F₃=−X³+XZ². F₂²−4F₁F₃=4X³Z−4XZ³ has I=48=c₄,J=0=2c₆. | Minus sign and factor 4 pass.  [previous]. |
| Cubic invariant of the projected quartic (1161) | The projected quartic has a linear factor, so its cubic invariant is 1; projecting the identity divisor gives native mu(O)=1. Its invariants are (48,0), not (3,0). | Keep normalization before comparison.  [previous]. |
| Local integral representatives of soluble quartics (1175) | A=−1,B=0: integral f=4x³y−4xy³ has I=48=−48A,J=0,Delta=16384 and point (1:0:0). Same representative is integral at p=2 and p=3, although its discriminant is not a unit there. | No good-prime restriction introduced.  [previous]. |
| Integrality from local integrality (1191) | Coefficient 1/2 has v₂=−1 and is excluded; coefficient −4 has v₂=2 and v_p≥0 for all p, hence is integral. The lattice Z² has the same completion intersection as these coordinate tests. | Keep every finite prime.  [previous]. |
| Integral representatives of locally soluble quartics (1205) | Same A=−1,B=0 and f at line 1175 gives identity rational equivalence to an integral tuple; 4A³+27B²=−4≠0. A=B=0 would give 0 and is excluded. | Keep.  [previous]. |
| Binary quartic parametrization of two selmer (1221) | E:y²=x³−x has (I,J)=(3,0); scaled pair is (48,0). The displayed integral identity quartic has those invariants and class 1. Height factor is 16³=4096=2¹². | Scaling and rational equivalence retained.  [previous]. |
| Comparison with the cohomological two selmer group (1237) | Identity point maps to multiplicative unit 1 and cohomological zero; restrictions at all places are respectively 1 and 0. A kernel statement uses E/2E, not E itself: 2P maps to 1 and 0. | Compatible neutral elements.  [previous]. |
| Embedding into pairs of ternary quadratic forms (1253) | f=x⁴−y⁴ gives 4det(A₁x−B_f y)=x³+4xy², discriminant −256 on both sides. For T=[[1,1],[0,1]], y⁴ transforms to (x+y)⁴; the corrected rho gives x₁² coefficient 1, the printed ordering 0. | Keep corrected coordinates.  [previous]. |
| Special orthogonal group of the veronese form (1299) | rho(−I₂)=I₃. For a coordinate swap, determinant-normalized symmetric square reverses coordinates with the necessary sign and preserves x₁x₃−x₂². A primitive rational lift with determinant 2 would require all four squares divisible by 2, contradicting primitivity. | Mathematics and repaired p.7 locator pass.  [previous]. |
| Orbit bijection for the embedding (1315) | x³y has I=J=Delta=0; x³y+xy³ has I=−3,J=0,Delta=−4. Their pair discriminants are 0 and −4, so both orbit sets separate them. | Keep.  [previous]. |
| Fibres of the embedding are uniformly bounded (1329) | With J≠0, f and −f have J and −J and are distinct proper orbits but pair-equivalent via B↦−B. Each first-row solution permits two determinant signs. N=10 yields 20; N=12 yields 24, not 10 or 12 by this argument. | Corrected bound retained; source proof gap recorded.  [previous]. |
| Binary quadratic order and local maximality (1349) | p=2: 44 of 64 triples modulo 4 pass, density 11/16; p=3: 630 of 729, density 70/81. t²−p is maximal; t²−p² has basis enlargement t/p and index p. xy has discriminant 1 and split algebra. | Includes nonmonic and ramified cases.  [previous]. |
| Binary density formulas (1363) | Quartics: 384/1024=3/8 at p=2; 42768/59049=176/243 at p=3. Printed degree-four factor gives 1600/2187 versus actual 1584/2187. Cubics at 3: alpha=64/81, beta=208/243. | README correction passes.  [previous]. |
| Quintic multiplication (1389) | A=0 gives eᵢeⱼ=0 for i,j>0, while e₀eᵢ=eᵢ. Scaling by 2 has coefficient weights 2⁵=32 and 2¹⁰=1024; using degree 4 would be wrong. | Retain universal all-characteristic table.  [previous]. |
| Sextic multiplication (1415) | A=0 gives rank 6 square-zero algebra, trace determinant 0. A with quintic discriminant 1 must give sextic discriminant 16³=4096; maximal split Z⁶ instead gives 1. | Factor and lattice cannot be dropped.  [previous]. |
| Based sextic resolvent (1441) | At A=0 both recovered augmentation products vanish. Replacing sextic ring by Z[t]/t⁶ gives e₁²=e₂≠0 despite equal discriminant 0; replacing quintic by Z[t]/t⁵ fails for the same reason. | Table equality excludes wrong models.  [previous]. |
| Rational quintic symmetric closure (1467) | Split L=Q⁵: closure dimension 5!=120, fixed algebra dimension 120/20=6. Trace of 1 is 120=24·5 and also 20·6. Cyclic quintic: 24 copies of L, resolvent Q×L has dimension 1+5=6. | Use labeling algebra, not field normal closure.  [previous]. |
| Nondegenerate resolvent comparison (1483) | Split quintic order: discriminant 1; required sextic lattice discriminant 4096, hence index 64 in split maximal order since 64²=4096. Replacing lattice by Q⁶ loses this index. | Keep image and lattice conditions.  [previous]. |
| Integral quintic realization (1501) | Square-zero Q⊕Q⁴ is realized by A=0, discriminant 0. Q[t]/t⁵ also has discriminant 0 but t²≠0, so A=0 cannot realize it. Scaling a tensor by 2 scales nonconstant coefficients by 32 rather than 2. | Nonétale realization is substantive owned work; source omission noted below.  [previous]. |
| Quintic minimal model (1523) | Proper index-2 overorder reduces absolute discriminant by 4. For Z+2Z⁵⊂Z⁵, index 16, discriminants 256 and 1. | Minimality must permit full rational GL₅.  [previous]. |
| Bhargava parametrization of quintic rings (1541) | Zero tensor gives ranks 5 and 6, products 0, discriminants 0 and 0. Split maximal quintic has discriminant 1, associated sextic discriminant 4096, not 1. | Keep degenerate pairs and sextic map.  [previous]. |
| Maximality of quintic rings at p (1559) | The preceding index-16 overring divides four quotient directions at p=2. Ratio 256=2⁸ is not a tenth power. The maximal split order has discriminant 1 and passes every p. | Full rational group and four shapes retained.  [previous]. |
| Monogenized resolvent (1579) | In Z[t]/(t³−t−1), lifts t and t+2 have power-basis determinant 1. They define the same class modulo Z; −t is not congruent to t modulo Z. At t in Z[t]/t³, determinant is also 1 despite discriminant 0. | Keep marking and degenerate rings.  [previous]. |
| Wood ring interpretation (1605) | f=x⁴−y⁴ gives monic cubic x³+4xy² and its generator with power index 1. Translating the generator by 2 preserves index 1; forgetting it loses that marking. Zero quartic still supplies a rank-3 monogenized cubic. | Matches general, not only étale, dictionary.  [previous]. |
| Common isotropic (1627) | Zero pencil on F₂³ has seven lines; (I₃,0) over R has no isotropic line. In F₂² the alternating matrix has all self-values 0 but mixed value e₀ᵀAe₁=1. At n=r=0 there is one submodule; r>n gives zero. | Full bilinear restriction is necessary.  [previous]. |
| Regular pencil Fano geometry (1655) | A=I₃,B=diag(1,2,3): over C equations give x²=z²,y²=−2z², four projective points; over R none. At n=4, dimensions are 1 for F and 2 for augmented F_m. | Geometric torsor does not imply a rational point.  [previous]. |
| Oriented ideal triples (1671) | For monic n=3 and I=R_f, alpha=s=1: I²⊂R_f and both norm expressions are 1. Rescaling in split degree 3 by c=(2,1,1) gives N(cI)=2, N(c²)=4=s'². Zero lattice has determinant norm 0, not sD. | Keep full rank and orientation.  [previous]. |
| Integral pencil orbits (1699) | Split rank 3 with alpha=s=1 has norm-one square-one units: 8 signs, 4 with product 1. For split even rank 4: kernel has 8 signs; quotient by diagonal ±1 has 4 geometric elements. | Quotient as group scheme, not assumed pointwise surjectivity.  [previous]. |
| Oriented norm pairs (1715) | In K³, c=(−1,1,1) has c²=1,N(c)=−1 and identifies the two orientations. In an even-degree field, the only square-one elements ±1 both have norm +1, so they do not. Declared n=3 with L=K fails dimension 1=3. | Both sign and degree constraints needed.  [previous]. |
| Field pencil stabilizers (1745) | Split n=4 over an algebraic closure: norm kernel size 8, central quotient size 4=2^(4−2). Irreducible even-degree field: orientation-forgetting has two choices of s; odd-degree factor allows a norm −1 sign and identifies them. | Keep factorization hypotheses.  [previous]. |
| Pencil existence (1761) | Negative real quartic f=−(x⁴+y⁴): f₀=−1, L=C×C, norms are positive, so −1 is not a norm times a square. For f₀=1 the infinity algebra is R×R and torus dimension 1; replacing it by R would give dimension 0. | Keep generalized obstruction.  [previous]. |
| Pencil fano torsor (1779) | With genus g=1, smooth F and J¹ both have dimension 1; generalized F_m and J_m¹ both dimension 2. With a rational base divisor, its torsor class is 0 and 2·0=0. | Do not identify the two torsors.  [previous]. |
| Jacobian Kummer/Selmer adapter (1797) | E:y²=x³+x+1 over F₅ has 9 points; multiplication by 2 and 4 has cokernel size 1 on E(F₅), while geometric kernels have orders 4 and 16. The identity isogeny has trivial Kummer quotient and Selmer group (size 1). | Distinguishes Kummer quotient from geometric kernel; finiteness over global fields is source/supplier checked, not inferred from this finite-field count.  [previous]. |
| Locally soluble pencils (1813) | For a pointed curve J¹ has class 0; the neutral cover gives W[2]=0 and lift 0 under doubling. A chosen locally soluble cover has difference 0 from itself; an empty cover set has cardinality 0 and no origin. | Keep the existence condition before identifying a cover set with a Selmer group.  [previous]. |
| Integral soluble pencils (1831) | If every coefficient is a multiple of 16, f₀^(i−1)fᵢ has at least 4i powers of 2. At i=1,2,4 the guaranteed factors are 16,256,65536, precisely 2^(4i). | Uniform scaling meets the stated local condition.  [previous]. |
| Quartic monicization (1847) | (2,3,5,7,11) maps to (1,3,10,28,88): I 226→904=4·226, J 3296→26368=8·3296, Delta 1307744→83695616=64·1307744. At a=0, output (1,b,0,0,0) has Delta 0. | Keep polynomial boundary but not twist comparison there.  [previous]. |
| Marked quartic Selmer embedding (1867) | Antidiagonal A of size 4 has determinant (−1)^6=1, matching the monic leading coefficient 1. y↦ky is invertible for k≠0. For −x⁴−y⁴ real solubility is false; monicization x⁴+y⁴ has value 1 at (1,0), so solubility cannot be transported by monicization alone. | Keep original Selmer group, not twist's Selmer group.  [previous]. |
| Weak discriminant divisibility (1883) | At p=3, x³−x²y+9y³ has Delta −2151=0 modulo 9; perturb constant to 12 gives −3840=3 modulo 9. x³ has all first-order discriminant derivatives zero; mod 4 discriminants are 0 or 1. | Weak example works; p=2 weak locus empty.  [previous]. |
| `Q` hyperdeterminant (1909) | g=1,U=(1,0),V=(0,1): signed-minor coefficient determinant −1. g=2 shift blocks give coefficient rows (0,0,1),(0,1,0),(1,0,0), determinant −1. Zero blocks give 0. Scaling by 2 gives factors 4 and 64. | Sign and degree g(g+1) pass.  [previous]. |
| `Q` discriminant divisibility (1937) | g=1,U=(1,1),V=(0,1) with lower blocks A=diag(1,0),B=diag(0,1): signed determinant x³−3x²y+xy², Delta 5, Q²=1 divides 5. Gram product is 2 and does not divide 5. | README correctly excludes stronger source error.  [previous]. |
| Marked q (1953) | Standard blocks give Q=−1 and absolute Q=1. Integral determinant-one diag(−1,−1,1) gives Q=+1 and absolute Q=1. Rational diag(2,1,1/2) gives absolute Q=2. | Integral saturated marking required.  [previous]. |
| Odd weak lift (1981) | A=[[0,1,0],[1,0,0],[0,0,1]], B=[[0,0,3],[0,−1,0],[3,0,1]] have −det(xA−yB)=x³−x²y+9y³ and Q=−3. At (1,0),(0,1),(1,1),(2,1),(1,2), both polynomials give 1,9,9,13,71; Δ=−2151 is divisible by 9. | Concrete weak-locus lift has absolute Q=3; supports the invariant and marking conventions.  [previous]. |
| One matrix slice (1997) | Antidiagonal determinants for n=3,4 are −1,+1; signed leading coefficients both 1. x⁴+1 factors over Q(sqrt(2)) as (x²+sqrt(2)x+1)(x²−sqrt(2)x+1), though irreducible over Q. | Extra even-degree exclusion is essential.  [previous]. |
| Even weak lift (2015) | f=x⁴−y⁴ has Delta −256 and f(0,1)=−1; Delta(xf)=−256·(−1)²=−256. At m=1 both allowed absolute Q values are 1 and q=1; degree increases 4→5. Zero constant coefficient would give Delta(xf)=0. | Keep generic constant term and polynomial quotient.  [previous]. |
| Quartic etale resolvent (2055) | Split quartic embeddings have three pair partitions, giving Q³, and trace discriminants 1=1. A four-cycle acts on the partitions with orbit sizes 1 and 2, giving Q times a quadratic field, not a cubic field. | Keep product-algebra target.  [previous]. |
| Good prime integral pencils (2073) | Over Q₅, f=x⁴−y⁴ has Delta −256, v₅(Delta)=0 and point (1:1:0). Reduction Jacobian y²=x³−x has 8 points, four 2-torsion points; E(Q₅)/2E(Q₅) has 4 classes. Good integral and soluble rational orbit counts are both 4, stabilizer counts both 4. | Retain odd prime and discriminant restriction for uniqueness.  [previous]. |
| Degree-three, four and five descent (2093) | Over C, E(C)/nE(C) has one element; the differential-preserving stabilizers for n=3,4,5 have orders 9,16,25. Full generic divisor stabilizers instead have 18,32,50. | Keep acting group and fixed differential.  [previous]. |
| Divided-coefficient cubic discriminant (2109) | (1,0,0,1): normalized D=1, ordinary disc −27; scalar 2 gives D=16. T sends it to (2,1,1,1) with D=1; wrong ordinary substitution (2,3,3,1) gives −23. diag(2,1) gives D=64=2⁶. | Degree drop and characteristic 3 treated separately.  [previous]. |
| Three-isogeny mirror dictionary (2123) | Constant kernel D=1 gives Dhat=−3, neutral divided tuple (0,1,0,−3) has D=−12 and ordinary discriminant 324=−27·(−12). Split mirror unit (2,1/2) has norm 1; (2,1) has norm 2, not a cube. Rational stabilizer 3 and one integral stabilizer 1 give m=3 and mass 1/3. | Keep mirror twist, norms and multiplicities.  [previous]. |

| Lean headline | Direct signature/instance test and values | Result |
|---|---|---|
| cubicInvariant_determines_orbit | Over Q, x⁴−y⁴ and its diag(2,1) transform have I=−12,J=0, both class 1; proper equivalence exists. Singular x³y versus zero has Delta=0 and no equivalence. | Binders exclude the false singular instance; no one-tactic proof.  [previous]. |
| solubleOrbit_bijection | F₅ fibre I=1,J=0: 120 forms / 60 per orbit = 2, equal to 10 / 5 = cardinality E/2E. Both orbits have square-valued evaluations. | No F₅ exclusion in the elaborated type.  [previous]. |
| cubicInvariant_quarticOfPoint_eq_mu | E:y²=x³−81x, P=(0,0): invariant/native representatives have componentwise square ratio (1/9,4/81,1). P=O gives 1=1. | Native corrected two-torsion branch retained.  [previous]. |
| stabilizer_twoTorsion | Q example has one rational cubic root plus the identity, hence 2 elements versus 2 stabilizers; F₅ example has 2 versus 120/60=2. Over C the corresponding group is (Z/2)², order 4. | Injection plus range is an isomorphism onto the intended subgroup.  [previous]. |
| mem_selmerGroup₂_iff | Identity quartic has norm 1 and restrictions 1 at finite and infinite places, hence witnesses m=1; the type explicitly includes NumberField K. | Norm and every completion retained.  [previous]. |
| exists_integral_local | A=−1,B=0,f=(0,4,0,−4,0), p=2 or 3: hDelta=−4, invariants (48,0), same integral representative. | No unit-discriminant hypothesis hidden in the type.  [previous]. |
| exists_integral | Same rational tuple: all finite-place solubility predicates true by (1:0:0); witness is the same integer tuple. | Global statement uses all finite primes; real solubility is not needed for this integrality claim.  [previous]. |

| Declaration in BinaryQuartic | Computed positive and negative controls | Result / change |
|---|---|---|
| form | (1,0,0,0,−1) gives X₀⁴−X₁⁴; the zero tuple gives 0. Fin 5 indices 0 and 4 give exponent pairs (4,0),(0,4). | No out-of-range index or negative exponent admitted.  [previous]. |
| eval | The same tuple gives −15 at (1,2) and 0 at (0,0). | Origin is later excluded by solubility, not by evaluation.  [previous]. |
| invI | x⁴−y⁴ gives −12; x³y gives 0. | Agrees with the coefficient convention.  [previous]. |
| invJ | (1,2,3,4,5) gives 270; x⁴−y⁴ gives 0. | Sign and degree-three scaling retained.  [previous]. |
| twistedForm | diag(2,1) sends x⁴−y⁴ to 4x⁴−y⁴/4; scalar 2I fixes it, versus ordinary coefficient factor 16. | Determinant is a unit for a GL₂ input.  [previous]. |
| IsProperlyEquivalent | That pair has witness diag(2,1); 0 and x³y cannot be equivalent since invertible substitution maps 0 to 0. | Both directions distinguished.  [previous]. |
| IsSoluble | x⁴−y⁴ at (1,1,0) satisfies 0=0 with nonzero projective pair; −x⁴−y⁴ has no such real point although its value at (0,0) is 0. | Nonzero-coordinate condition excludes the wrong model.  [previous]. |
| curveIJ | I=3,J=0 gives coefficients (0,0,0,−81,0); I=J=0 gives y²=x³. | Ellipticity is not part of this raw definition.  [previous]. |
| curveIJ_isCharNeTwoNF | In both examples a₁=a₃=0; those are exactly the two recorded normal-form equalities. | Does not assert that the field has characteristic other than two.  [previous]. |
| curveIJ_isElliptic | At I=3,J=0, Δ=16·3⁹·108=34012224; at I=J=0, Δ=0. | Explicit nonzero factors exclude the singular example.  [previous]. |
| quarticOfPoint | At I=3,J=0, O gives (0,1,0,−1,0), P=(0,0) gives (1,0,0,0,1/4); both I=3,J=0. In characteristic three the zero-denominator divisions totalize to 0. | The headline types exclude that characteristic; no lost binder.  [previous]. |
| hessian | x⁴−y⁴ gives 48x²y², with value 192 at (1,2); x³y gives 3x⁴. | Coefficient body matches the covariant.  [previous]. |
| irrationalCovariant | At I=3,J=0, q(0,0) and (x,y)=(1,1), its values at T=−9,0,9 are (1,−4,−9), product 36. Zero quartic gives 0. | Unit and norm-square distinction retained.  [previous]. |
| cubicInvariant | For the infinity quartic at (1,0), G=1; for the zero quartic no unit evaluation exists and the fallback is 1. | Equal fallback does not classify singular inputs; headline hΔ excludes them.  [previous]. |
| IsEverywhereLocallySoluble | x³y−xy³ has the same point (1:0:0) over every completion of Q. The negative real quartic fails at the infinite place, so its all-place conjunction is false. | Includes infinite as well as finite places.  [previous]. |

The carried tables contain 102 rows (README targets, seven Lean headlines and fifteen native definitions/instances); the fresh table contains 17 rows. The large residue and F₅ orbit enumerations in [previous] were not rerun for this docstring/ownership repair. New exact matrix, trace-determinant and F₅ arithmetic calculations were recomputed separately.

## Not verifiable

- Carried source-access limitation from [previous]: ref-53, O’Dorney, *Rings of small rank over a Dedekind domain and their ideals*, DOI 10.1186/s40687-016-0054-0, was uncertified after the legal service checked the Springer URL. Its unchanged published locators remain uncertified. The settled text was not requested again.
- The unchanged ref-10 nonétale quintic realization omission remains the source gap recorded in [previous]; the roadmap owns the missing argument. This round does not recertify that source proof.
- Unchanged mathematics and sampled locators outside the incremental scope rely on [previous]. All changed locators needed for this review were readable. The admitted Lean build verifies elaboration, not the truth of the seven headline theorems.

## Source issues

The following slips were rechecked in the sources used this round; the other unchanged source issues remain recorded in [previous].

- **Misprint** in ref-6 at §2, equation (10) and following index-form calculation, printed p.5, line 253: the source says the square has coefficients b,−a,d,−c; it should be −b,a,−d,c with its displayed multiplication table; affects the proof.
- **Misprint** in ref-7 at §2, footnote 1, printed p.3, lines 155–157: the source says its ordered-basis wedge recovers p; it should be −p with that multiplication convention, or use the opposite volume orientation; affects the proof.
- **Misprint** in ref-15 at Remark 4.2, printed p.26, line 1212: the source says the degree-two pair twists the elliptic curve with O(3O); it should be O(2O); affects a stated result.

[previous]: packages/ArithmeticStatisticsPartII/reports/PRREVIEW-ArithmeticStatisticsPartII~2.md
