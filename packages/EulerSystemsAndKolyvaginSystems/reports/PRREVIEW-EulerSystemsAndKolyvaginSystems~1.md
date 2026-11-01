# Review of EulerSystemsAndKolyvaginSystems (pull request #1272 at 7a0e642)

**Verdict:** needs changes

## R01 (P1) — Distinguish inclusion of torsion coefficients from multiplication

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:2297`, “multiplication `M′/M : W_M → W_{M′}`”; compare the explicit definition `W_M = M^{-1}T/T` at line 2791 and the quotient-coordinate identification at line 989.

Claim: this coefficient map sends κ_M to (M′/M)κ_M′. On the stated torsion submodules, the map is **inclusion**, not multiplication. Multiplication is the description after transporting to T/MT and T/M′T. Interchanging those descriptions changes the map, not just its name.

Witness: for T=ℤ₃, M=3, M′=9, inclusion sends 1/3 to 1/3 in ℚ₃/ℤ₃; multiplication by 3 sends it to 0. But 3·(1/9)=1/3≠0.

Repair: specify both arrows on the fixed torsion carriers: W_M′→W_M is multiplication by M′/M; W_M→W_M′ is inclusion. Keep inclusion_*(κ_M)=(M′/M)κ_M′. Under x mod M↦x/M mod T, describe the first arrow as quotient reduction and the second as multiplication on the quotients. This makes the displayed witness commute: 1 mod 3 maps to 3 mod 9, corresponding to 1/3 on both sides. Add this nonzero coefficient-map Check. Rubin IV.4.13(iii), p.67, uses the natural maps, not the mislabeled torsion multiplication (Rubin line 3157).

## R02 (P1) — Own the analytic cohomology input at infinite base fields

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:5421`, “the Appendix `C` input of Layer 4”; also line 2803.

Claim: §8.25 obtains Λ-torsion and nonzero annihilators for H¹(Ω∞/K∞,W) and its dual from a Layer 4 input. Section 4.3 only states the finite-base, nonexceptional finiteness consequence and cites Rubin C.2.2 for its proof. It does not state or build C.2.1–C.2.2's classification over a possibly infinite F/K. No supplier contract owns that classification, and no declared gap supplies it. The weak-Leopoldt route consequently has an unowned input.

Witness: Rubin lines 6951 and 7008–7015 allow infinite F/K and finite-index character-type groups. Section 4.3 only gives finite-base finiteness. Infinite D with character ρ is killed by γ−ρ(γ), despite not being finite.

Repair: add an earlier target for the exact classification needed here, with irreducibility over G_F, Ω=F(μ_{p∞},B^{1/p∞},V), a stable lattice and the arithmetic finite-generation hypotheses on B. State the finite alternative and both character/cyclotomic-character alternatives, including the finite-index conclusion. Assign its rational analytic-cohomology vanishing and integral finite-cokernel inputs to actual targets or precise earlier supplier sections; consume the resulting theorem explicitly in §§4.3 and 8.25. Retest the trivial and cyclotomic exceptional representations: the character-type branch must allow an infinite D while producing the nonzero Λ-annihilator γ−ρ(γ). Do not replace that branch by blanket finiteness.

Object searches covered main, the supplied open-head context, packages and the pins. NoncommutativeAndEquivariantIwasawa's `ellipticHCohomology_finite` (`TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:1895`) concerns elliptic torsion in its specified tower and does not supply this general classification. A reference to Rubin alone is not an ownership contract.

## R03 (P2) — Consume the pinned group-ring norm

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:1999`, the proposed `TauCeti.KolyvaginSystems.normElement`; also line 2005.

Claim: §3.1 schedules a new generic norm element and its representation-action comparison. Both objects are already supplied at the pin. The derivative operator is additional mathematics; the unweighted group sum is not.

Witness: `TauCeti/Algebra/MonoidAlgebra/SubgroupCharSum.lean:49` defines the weighted subgroup sum; χ=1,H=⊤ is exactly N_Γ. Its top-subgroup formula is line 117; `TauCeti/RepresentationTheory/SubgroupCharSum.lean:45` gives its action. For C₂ both give 1+σ.

Repair: delete the standalone norm construction and duplicate action target, and cite `TauCeti.subgroupCharSum`, `subgroupCharSum_eq_sum_of_eq_top`, and `asAlgebraHom_subgroupCharSum_apply` in Scope and ownership and the pinned supplier contract. Use their χ=1,H=⊤ specialization in the derivative statements. `Mathlib/RepresentationTheory/Basic.lean:283` supplies `Representation.norm`. Retesting C₂ gives N=1+σ and D=σ, hence (σ−1)D=2−N as before; no arithmetic or cyclic-derivative scope is lost.

## R04 (P2) — State the retained square-index application

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:153`, “The independent all-prime square-index length boundary in 4.13 is retained”; see also lines 17, 3168 and 3430.

Claim: the README retains a classical square-index length bound with a constant independent of K. Section 4.13 instead states an annihilator bound whose constants depend on its fixed arithmetic data, and expressly says it does not prove the retained length statement. No target gives the promised inequality, the family of K, the quantifier order for its constant, or a route supplying the additional uniformity.

Witness: for M_m=(O/π)^m, πM_m=0 for every m, but length_O(M_m)=m is unbounded. Thus the supplied exponent theorem cannot fill the missing length contract.

Repair: replace the unnamed “retained boundary” with a separate, precise application target: name the Selmer/Sha quotient and point-index term, write the actual square-index inequality, specify all arithmetic hypotheses and primes, and place the existence of the constant before the quantified family of K. Give its source locator and the extra length/uniformity inputs with owners. Keep §4.13's exponent theorem separate. Test the proposed route on M_m: it must supply a generator/length restriction or other genuine input excluding unbounded m; annihilation alone is insufficient. If no such application belongs to this roadmap, remove the claims that it is retained and state its actual ownership boundary instead.

## R05 (P3) — Remove undeclared Lean names from API and Check labels

Location: `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:237`, “All declaration names and Checks below specify library targets”; examples at lines 272–293, 2001–2016 and 2294–2306.

Claim: hundreds of API bullets and Checks advertise proposed backticked declaration names, while `Suggested.lean` declares none. The standing form rule permits an owned API declaration name only when it exists in Suggested.lean, and Checks must be mathematical prose without Lean counterparts. The paragraph at line 237 does not override that rule.

Witness: the Check `kolyvaginDerivative_order_two` at line 2009 has no declaration in `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/Suggested.lean`; that file contains only its import, docstring and empty namespace.

Repair: remove the proposed declaration-name prefixes from API and Check bullets throughout, retaining their mathematical content and existing supplier declaration names. For example, keep “For order 2, D_σ=σ” without the proposed Lean label. Do not fill Suggested.lean with these API lemmas or small-value computations. The C₂ witness remains D_σ=σ after this edit.

## Verified sound

The review covered both files at the requested head, all nine layers and their 153 numbered targets, the 15 seeded source targets, the headline list, and the stated dependencies. Two main-roadmap shape comparisons were read: ImaginaryQuadraticClassNumber and DerivedModuleAlgebra. No edit was made in the pull-request worktree. Its working tree remains clean, and the diff outside the reviewed folder is empty. No algorithmic deliverable, sorry'd data, `set_option`, foreign import or route restricted to good primes was found. Arithmetic class construction, image hypotheses and Rubin–Stark integrality are explicitly conditional application inputs.

The worker gate reports every check passing, including the targeted build. Direct `lake env lean` elaboration of `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/Suggested.lean` also exited 0 with no diagnostics. The file has **zero declarations**, so there are zero omitted section binders to probe and zero sorried theorems on which to run the one-tactic padding test. The worker signature scanner's apparent single declaration is docstring text, not a Lean declaration. There is no padding theorem to delete.

The fresh dependency check returned exactly:

```text
depcheck: 205 roadmaps, 1465 edges, 0 problem(s)
```

There are no UPWARD, CYCLE or moved lines. This does not detect the missing internal analytic input in R02.

Headline coverage: the README identifies canonical/unramified core ranks (§0.10), finite–singular comparison (§1.8), prime selection (§§1.15–1.16, 1.21–1.23), Euler unramifiedness and congruence (§§2.3,3.14), derivative maps (§§3.16–3.19), rational/integral Selmer bounds (§§4.7,4.13,4.17–4.21), rank-one structure and primitivity (§§5.3,5.6,5.10,5.13), Stark freeness and regulator/Fitting results (§§6.6–6.8), higher derivatives and determinant/class-group bounds (§§7.2,7.4–7.6), and weak Leopoldt, Iwasawa structure and divisibilities (§§8.25–8.39). The module docstring names those arithmetic results and the missing Selmer/system/coefficient interfaces; it supplies no weakened substitute. Generic exterior powers and additive continuous H¹ alone do not state them. The empty file is not itself a defect. The unspecified additional length promise is R04.

The following 15 sampled source checks compare theorem numbers, version-specific printed pages, hypotheses and mathematical content. Source IDs below identify the legal copies in the source service; line numbers are their line-numbered extractions. Statements were paraphrased, not copied.

| Target | Text read at locator | Result |
| --- | --- | --- |
| 1.13 | [MR16 arXiv v1](https://arxiv.org/abs/1312.4052v1), §4 and Lemma 4.5, p.9, lines 355–400; global consumers lines 633–655, 723–770. Published §4, pp.154–155, lines 400–442. | The roadmap explicitly strengthens the flawed splitting-field contract. The q=11 test below explains why. |
| 1.23 | [MR04](https://webusers.imj-prg.fr/~christophe.cornut/ES/Ref/KolySys.pdf), Proposition 3.6.2 and proof, pp.30–32, lines 1305–1415. | Scalar-span and paired-class independence hypotheses retained; kernel prescription is stronger than nonvanishing. |
| 2.3 | [Rubin draft](https://swc-math.github.io/notes/files/99RubinES.pdf), II §2 before Theorem 2.10, p.25, lines 1282–1290; [BSS18 v1](https://arxiv.org/abs/1805.08448v1), Lemma 6.6, p.38, lines 1874–1909. | Universal-norm unramifiedness uses the stated tower/prime hypotheses. |
| 3.9 | Rubin IV.4.10, p.66, lines 3112–3139; IV.4.13, p.67, lines 3155–3161. | Construction and bottom component agree; coefficient-map wording fails as detailed in R01. |
| 3.11 | Rubin IV §7 identity (9), Lemmas 7.1/7.3, pp.74–76, lines 3475–3568. | Lifted norm is retained; m=1 gives 0=0. Source proof has the r/rq misprint listed below. |
| 3.13 | Rubin IV.5.1/5.4, pp.67–68, lines 3170–3210; IX.5.2, p.140, lines 6149–6168. | Finite and singular conclusions, local coefficient action and the finite–singular normalization retained. |
| 4.1 | MR04 Definitions 3.1.1–3.1.2, pp.19–20, lines 786–847. | Graph, incidence maps and section relation agree; the roadmap avoids the source's unqualified direct-sum claim. |
| 4.9 | [NekCM author manuscript](https://web.archive.org/web/20240000000000id_/https://webusers.imj-prg.fr/~jan.nekovar/pu/euler.pdf), 6.4.1–6.4.3, pp.38–40, lines 1824–1951. | Source states c₀d₀. Roadmap explicitly proves the weaker uniform c₀d₀³ using both kernels; it does not falsely attribute this repaired proof or a counterexample to the source. |
| 4.16 | MR04 Definition 4.3.1/Theorem 4.3.4, p.41, lines 1768–1798; Theorem 4.4.1, p.45, lines 1961–1980; Theorem 4.2.2, p.40, lines 1746–1759. | Principal-Artinian depth, core rank and the extra hypotheses for all systems to be stub sections retained. |
| 6.7 | MR16 Definitions 10.3–10.4/Proposition 12.3, pp.21,24, lines 910–941,1033–1096; [BS16 v1](https://arxiv.org/abs/1612.06187v1), §4.2, lines 1585–1639; BSS18 §5.2, p.25, lines 1284–1323. | Positive-rank restriction and conductor sign retained. Explicit one-prime computation tests the contraction convention. |
| 6.8 | MR16 Theorem 12.4, p.25, lines 1097–1107; BSS18 Theorems 5.2/5.25, pp.25–26,36, lines 1339–1359,1778–1795. | Initial Fitting equality distinguished from higher equalities requiring a principal ring. |
| 7.6 | BSS18 §7 and Theorem 7.1, pp.47–50, lines 2395–2549. | Character exclusions, split archimedean data, tower scope and conditional Rubin–Stark family retained. |
| 8.5 | MR04 Lemma 5.3.1/Definition 5.3.2, p.60, lines 2550–2590; [Howard v1](https://arxiv.org/abs/1202.6340v1), Proposition 2.2.4/Definitions 2.2.5–2.2.6, pp.24–25, lines 1067–1097. | Inverse tower action and propagated local conditions distinguished; no unconditional base-change isomorphism inferred. |
| 8.6 | Rubin II §3, p.27, lines 1367–1390. | The extra d=1 hypothesis and its real-place alternatives agree. |
| 8.9 | Rubin VI.2.1–VI.3.6, pp.91–94, lines 4127–4250. | Character must factor through Γ; inverse factor in class twisting and the corresponding ring automorphism agree. |

Pinned declarations opened include the following 14 declarations or declaration groups. Mathlib is at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, matching lake-manifest.json.

| Pin file and line | Declaration and scope checked |
| --- | --- |
| `Mathlib/RepresentationTheory/Basic.lean:283` | `Representation.norm`: finite-group sum of linear actions. |
| `Mathlib/LinearAlgebra/Charpoly/Basic.lean:44` | `LinearMap.charpoly`: commutative ring, finite free module. |
| `Mathlib/LinearAlgebra/Charpoly/Basic.lean:89` | `LinearMap.aeval_self_charpoly`: same finite-free context. |
| `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290` | `Matrix.charpolyRev` and the following `reverse_charpoly`: determinant of 1−XA. |
| `Mathlib/LinearAlgebra/ExteriorPower/Pairing.lean:64` | `exteriorPower.pairingDual`: native evaluation, not a Selmer determinant carrier. |
| `TauCeti/Algebra/MonoidAlgebra/SubgroupCharSum.lean:49` | `subgroupCharSum`, coefficient and top-subgroup formulas; no cyclicity required. |
| `TauCeti/RepresentationTheory/SubgroupCharSum.lean:45` | `asAlgebraHom_subgroupCharSum_apply`: character sum acts by the corresponding weighted sum. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:712` | `H1`: quotient of additive cocycles by coboundaries; not a Selmer structure or a packaged coefficient-linear arithmetic interface. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/Coinduced.lean:104` | `coind`: locally constant equivariant functions, right-translation action. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/Shapiro/Basic.lean:415` | `explicitShapiro1`: additive equivalence with closed-subgroup hypothesis and discrete coefficient interface. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/Corestriction/Basic.lean:467` | `explicitCor1`: additive corestriction; no silent compact-coefficient extension. |
| `TauCeti/RingTheory/FittingIdeal/Basic.lean:343` | `fittingIdeal`: finite module over a commutative ring. |
| `TauCeti/RingTheory/FittingIdeal/BaseChange.lean:134` | `fittingIdeal_baseChange`: the generic ideal base-change theorem is already provided. |
| `TauCeti/RingTheory/Morita/Corner.lean:388` and line 440 | `cornerEquivalence`, `moritaEquivalenceCorner`: require fullness; they do not prove the local order/lattice hypotheses. |

Cross-roadmap resolution used the current main copies and the new-roadmap heads returned by the supplied roadmap tools, rather than remembering old section numbers. Concrete resolved contracts include:

- `TauCetiRoadmap/SelmerIwasawaCohomology/README.md`: §§2.5–2.6 at lines 441/469 (propagation/saturation), §2.13 at 717 (dual conditions with trace comparison), §§2.17–2.19 at 791/807/821 (finite duality, limits, Poitou–Tate), §3.0 at 1329 (coordinates/twists), §§3.11/3.13 at 1582/1619 (control and cyclotomic finiteness), §4.18 at 2165 (Leopoldt application), §4.25 at 2310 (uniform local annihilation). In particular §4.25 retains both integral torsion losses.
- `TauCetiRoadmap/ArithmeticGaloisDuality/README.md`: R02.1.2 at 599 (Milnor/compact passage), D7.3's compact Shapiro at 5309, D7.7.1–D7.7.2 at 6232/6354 (orthogonals and coefficient compatibility), R02.5.1 at 6600 (ordinary-H⁰ archimedean convention in Greenberg–Wiles).
- `TauCetiRoadmap/IntegralIwasawaTheory/README.md:1688`, §12.6: shared exterior bidual, finite-CM unit lattice, order regulator and rational Rubin–Brumer–Stark element. The system-level extensions here differ from that supplied core. Its downstream mention of this roadmap is not an input edge.
- `TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:43`, H1.4: conductor residue-unit exact sequence and exceptional unit indices; the ℚ(i), conductor-3 test gives degree 2.
- `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403` and 2242: §§1.T.1/1.M.1 supply tower limits and the essential injective-hull Matlis duality, including finite/cofinite restrictions.
- Chebotarev Layer 10's Frobenius-class density is #C/#G, with invariance under removing finitely many primes; ClassicalArithmeticCompletion §§7.4/7.21/7.56 supply order/maximality/existence, not the rectangular local lattice argument; ClassFieldTheory Layers 5/12/13 and ProfiniteCohomology Layer 11 supply the stated local/global and discrete cd inputs. PadicMeasuresIwasawaAlgebras §§4.1–4.6/5.2 supply one-variable divisor algebra and compact Nakayama; they are not credited with multivariable regularity or arbitrary-character-quotient Gorenstein properties.

Object searches also included the supplied open HeegnerPointEulerSystems and SelmerIwasawaCohomologyPartII context and the board packages. Arithmetic Heegner classes are downstream inputs; the generic derivative/system theory belongs here. There are no fully qualified declaration collisions in this Suggested.lean because it declares nothing. The additional norm duplication is R03. Open work without supplied file context was not independently fetched for ownership judgments.

The adversarial pass covered **153 numbered targets**. This condensed table retains **62 rows** covering all 15 seeded targets, the headline theorems, and the finding and source-error witnesses. Values are computed module, local-field, group-ring or specialization examples; an algebraic diagram is not claimed to be an arithmetic realization. “Pass” means consistency with the test, not a proof of the general theorem. The complete per-target ledger remains in the review scratch records.

| Target / statement | Instances tried | Values computed on the two sides; result | Change |
| --- | --- | --- | --- |
| 0.10 — Core rank of the canonical and unramified structures | Tate module of an elliptic curve over ℚ; even/odd Tate-character twists | Complex-conjugation minus ranks 1 for the elliptic module, 1 for an even character times Tate, 0 for an odd character times Tate; canonical core-rank formula retains these values. | Pass |
| 1.8 — The finite–singular comparison map | Frobenius diag(1,2) over 𝔽₅; trivial one-dimensional factor | P=(1−X)(1−2X), Q(1)=1; for P=1−X, Q(1)=−1=4. Direct-sum naturality without polynomial intertwining fails. | Pass |
| 1.10 — The transverse condition is self-dual | p=2, ℚ₃, quadratic extension ℚ₃(√−3) | Hilbert symbol (−3,−3)₃=−1, so transverse self-pairing is nonzero. The added dyadic hypothesis excludes it. | Pass |
| 1.13 — The Mazur–Rubin 2016 hypotheses (H.1)–(H.7) over a number field | K=ℚ,p=5,T=𝔽₅(χ√₂),q=11,τ=1 | q splits in ℚ(μ₅), but χ(q)=−1, so T/(Fr−1)T=0 rather than 𝔽₅ and I_q=R rather than 0. Corrected splitting field excludes q. | Pass |
| 1.15 — Existence of abundant tuples under the corrected span hypothesis | G=ℤ₅², action by 6 on one factor, A=ℤ/125 | For the cyclic order-25 quotient, ker(norm)=5A and (6−1)A=5A, giving H¹=0; the joint kernel condition cannot be replaced by a scalar-span assertion alone. | Pass |
| 1.16 — Residual detection of two classes and classes with prescribed ramification | Residual GL₂(k) with determinant cyclotomic | Surjective determinant has image k×; cyclotomic determinant lies in 𝔽_p×, forcing k=𝔽_p. The two conjugation eigenspaces have dimension 1 each. | Pass |
| 1.21 — Simultaneous nonvanishing of localisations | Two proper linear subspaces; four affine bad sets at p=5 | Two linear subspaces do not cover the vector space; four index-5 cosets cover at most 4/5, leaving at least 1/5. | Pass |
| 1.22 — Chebotarev selection of Kolyvagin primes with error terms | Class order a, error e | Guaranteed order max(0,a−e); a=2,e=3 gives 0, not a negative order; e=0 gives a. | Pass |
| 1.23 — Primes with prescribed localisation kernels | C=(ℤ/9)², φ(x,y)=3x, x, or 0 | Kernel sizes 27,9,81, respectively. Prescribing nonvanishing alone cannot distinguish these kernels. | Pass |
| 2.3 — Euler-system classes are unramified away from p | Kummer unit and uniformizer away from p | Unit valuation 0, uniformizer valuation 1. Norms from unramified degrees pⁿ have valuations in pⁿℤ_p, whose intersection is 0. | Pass |
| 3.1 — The norm and Kolyvagin derivative operators | C₂,C₃,trivial cyclic group | D₂=σ, N₂=1+σ, (σ−1)D₂=1−σ=2−N₂; augmentation D₃=3; D₁=0,N₁=1. Pinned norm duplication: R03. | R03: consume pinned norm |
| 3.3 — Kolyvagin systems, weak Kolyvagin systems and their limits | Empty prime set; rank-two identity Frobenius | No edges gives KS=H¹; for P=(1−X)², Q(1)=0, versus −1 on each rank-one summand. Direct-sum systems need not agree. | Pass |
| 3.9 — Kolyvagin's derivative classes κ_{F,r,M} | W₃⊂W₉⊂ℚ₃/ℤ₃ | Inclusion sends 1/3↦1/3; multiplication by 3 sends it to 0. Required compatibility gives 3·(1/9)=1/3. Fails as named: R01. | R01: correct coefficient map |
| 3.11 — The lifted telescoping identity and the key norm relation for lifts | Lifted cyclic degree m=1 | D=0, lifted N=σ, so (σ−1)D=0=σ−σ. Replacing lifted N by 1 would give σ−1≠0. | Pass |
| 3.13 — Local behaviour of derivative classes | Q=−1 on ℤ/9 and class 3 | Finite–singular map sends 3 to −3=6, both of order 3; zero alone would not test invertibility. | Pass |
| 3.14 — Kolyvagin's congruence | q=2,p=3,trivial finite-ray edge | Local identity convention yields the unchanged class; dividing by the nonexistent ray degree would supply an extra factor. For nontrivial edges the divided-polynomial term retains its stated sign. | Pass |
| 3.16 — Derivative classes of χ-anticyclotomic Euler systems | χ of order 2, candidate P=1−X versus 1−X² | At χ=−1, first P gives 2, second gives 0. The all-character-root divisibility condition excludes the first model. | Pass |
| 3.17 — The map from Euler systems to Kolyvagin systems | Two-prime permutation correction | Identity contribution minus transposition contribution; at conductor 1 the correction is 0 and κ₁=c₁. | Pass |
| 3.18 — Worked example: Kolyvagin's congruence for the multiplicative group | p=2,q=3,trivial finite-ray edge | Ray degree 1, so identity comparison sends 2 to 2. An inserted extra square sends 2 to 4 and changes the class. | Pass |
| 3.19 — Derivative classes and the key relation under the alternative rigidity conditions | Depth loss m followed by target modulus M | A lift at mM can descend to M; a lift only at M cannot in general survive division by m. For m=p, loss is one p-power. | Pass |
| 4.1 — The Selmer graph and the Selmer sheaf | Two auxiliary primes; identity edge maps | Graph has 4 vertices and 4 edges, no edge 1→q₁q₂. Two identity-connected stalks have diagonal sections of rank 1, not product rank 2. | Pass |
| 4.3 — Rubin's hypotheses, index of divisibility and error terms | O⊕O/π²; finite versus character-type error | (π³,1) has index 3 modulo torsion; (0,1) has index ∞. A character-type Γ-module D has infinite cardinality yet annihilator γ−ρ(γ)≠0. General analytic input unowned: R02. | R02: own analytic input |
| 4.7 — Rational Kolyvagin descent for ring-class anticyclotomic Euler systems | Nonzero versus zero initial class | Nonzero initial class spans dimension 1 in the claimed rank-one conclusion; zero spans dimension 0 and supplies no rank bound. | Pass |
| 4.8 — Local maximal orders and the pairing's lattice interfaces | B=M₂(F), V=M₂,₃(F); ramified quaternion division algebra | Right commutant is M₃(F), not a division algebra; quaternion uniformizer has valuation 1/2, J²=pOΔ and residue cardinality p². | Pass |
| 4.9 — Uniform cokernel bound for a separated pairing over orders | A=ℤ/9,K=3A,f=id; maximal orders; V=0 | 3K=0 but f(3)=3≠0. Multiplying by the annihilator kills the restriction. Maximal orders give equal dual cardinalities and cokernel 0; V=0 forces X=W=0. | Pass |
| 4.13 — All-prime CM-point descent with bounded error | M=(O/π)ᵐ | Exponent 1 for every m, length m. An exponent bound cannot supply the separately mentioned square-index length bound. | R04: specify separate length target |
| 4.16 — The sheaf of stub Selmer modules | Coefficient length 2, dual lengths λ=0,1,2 | Stub contributions R,πR,0, of lengths 2,1,0. Formula max(2−λ,0) gives 2,1,0; χ=0 branch gives KS=0. | Pass |
| 4.17 — Rubin's bound with error terms | Projection 𝔽_p²→𝔽_p in dual diagram | Kernel length 1 plus complementary image length 1 equals total length 2. Dropping either error loses one unit of length. | Pass |
| 4.18 — Self-dual descent with explicit error constants | M=O/π³, doubled torsion | Length M=3, doubled torsion length 6 and exponent 3; the half-length bound applies to 3, not 6. | Pass |
| 4.19 — Kolyvagin bounds with error independent of the twist, for characters close to 1 | α(γ)=1+pᵐ approaching 1 | Old character error m tends to ∞; a constant independent of α must remain fixed. The stated uniform formulation keeps that quantifier order. | Pass |
| 4.20 — The Kolyvagin system bound | Zero versus primitive leading component | Zero generates ideal 0, whose containment is automatic; it does not give finiteness. A unit leading index ideal forces the stated Fitting ideal to be unit. | Pass |
| 4.21 — Bounds for the variants: finite depth and anticyclotomic systems | R=O/πᵐ, a₁=πᵃ, index s | Complementary annihilator exponent m−a−s; total bound uses 2a+s. At the extreme πᵐ=0, the corresponding annihilation is tautological, not a unit bound. | Pass |
| 5.3 — Kolyvagin systems in core rank one | R=ℤ/25, prime congruent to 1 mod 5 but not at depth 25 | Conductor ideal (5) is nonzero in R; P⊆P₂ fails. Residual admissibility alone does not imply finite-level freeness. | Pass |
| 5.6 — Structure of the dual Selmer group from a Kolyvagin system | Primitive leading index s; multiply system by π | Primitive formula gives dual length s; scaled leading index s+1 while dual length remains s, so equality needs primitivity. | Pass |
| 5.10 — Howard's bound for self-dual Kolyvagin systems over a discrete valuation ring | D⊕(O/π²)² | Cotorsion length 4; half-length bound is 2. A leading index 1 would violate the claimed inequality, while index 2 meets it. | Pass |
| 5.13 — Exact length of the Tate–Shafarevich module from a self-dual Kolyvagin system | Leading index 5, system defect 2 | Length M=5−2=3 and doubled Sha length 6; scaling by π changes indices to 6 and 3, leaving length 3. | Pass |
| 6.6 — Freeness of Stark systems and control of the dual Selmer group | Dual module O/π³⊕O/π | Fitt₀=(π⁴), Fitt₁=(π), Fitt₂=O; primitive index sequence 4,1,0, scaled sequence 5,2,1. | Pass |
| 6.7 — Kolyvagin systems of rank r and the regulator map | One prime, ε=e₁∧e₂,v=e₁*,φ=e₂* | ε₁=e₂; signed regulator at q is e₁; v(e₁)=1=φ(e₂). Unsigned contraction gives −1 on the left when 2≠0. | Pass |
| 6.8 — The regulator isomorphism and structure of Kolyvagin systems of rank r | Same module and π-scaled regulator | Primitive Fitting valuations 4,1,0 equal the ideals above; π-scaling gives 5,2,1 and strict containments. Nonprincipal higher equalities are not inferred. | Pass |
| 7.2 — The higher Kolyvagin derivative | Empty, one-prime, two-prime correction determinants | Δ₁=1, Δ_q=0, Δ_qr=−ab; corrected two-prime class is κ′_qr−abκ′₁, not plus abκ′₁. | Pass |
| 7.4 — Fitting-ideal control from higher-rank Euler systems | DVR ideals (πˢ)⊆(πᵗ) | Containment means s≥t; s=t gives equality and s=t+1 strict containment. Zero ideal containment does not by itself give a finite group. | Pass |
| 7.5 — Rank-one specialisation of the higher-rank theory | Rank one, finite reflexive coefficients | Bidual evaluation is identity; conductor-one class c maps to c, and the tame tensor generator is σ−1 with the same sign. | Pass |
| 7.5a — Arithmetic determinantal systems and derivative surjectivity | Tate coefficients over ℚ, odd p; ordinary versus modified compact support | Archimedean contribution changes Euler characteristic by 1; suppressing it changes ordinary 0 to modified 1 in the test complex. Image pO⊂O has cokernel O/p and contains no basis. | Pass |
| 7.6 — Euler-system and Rubin–Stark class-group bounds | χ-class module O/π³⊕O/π | Higher Fitting valuations 4,1,0; successive elementary quotients O/π³ and O/π. Rubin–Stark integrality remains a premise, not an unconditional consequence. | Pass |
| 8.5 — The Λ-adic representation 𝐓 = T ⊗ Λ and its Selmer structures | Cyclotomic Tate coefficients; specialization J and (p,U) | Local H²≅ℤ_p, so H²[J]=ℤ_p. At maximal specialization the Tor correction can be 𝔽_p while H²[(p,U)]=0; principal-ideal control cannot replace the full correction. | Pass |
| 8.6 — Rubin's hypothesis Hyp(K∞/K) | Pure cubic number field of signature (1,1), Tate coefficient, d=1 | Complex place exists and T is odd at the real place, so both alternatives fail; for ℚ with Tate coefficients the totally-real odd branch holds. For d>1 this extra rank-one condition is absent. | Pass |
| 8.9 — Twisting Euler systems by characters of infinite order | ρ(γ)=1+p | Twist sends γ to (1+p)γ; Tw_ρ(γ−(1+p))=(1+p)(γ−1). Class comparison uses inverse coefficient factor (1+p)⁻¹. A character outside Γ has no such tower twist. | Pass |
| 8.25 — Weak Leopoldt from an Euler system (Rubin, Theorem II.3.2) | Zero Euler system; character-type analytic error D | Zero lies in Λ-torsion and fails the premise. D with γ acting by u is killed by γ−u≠0 despite being infinite; finite-base §4.3 alone does not provide this input: R02. | R02: own infinite-base input |
| 8.26 — Residual primitivity implies Λ-primitivity | Reduction modulo P then maximal ideal m | If first image is 0, final image is 0; final image 1≠0 therefore forces first image ≠0. No converse is inferred. | Pass |
| 8.27 — Weak Leopoldt from a Λ-adic Kolyvagin system (Mazur–Rubin, Theorem 5.3.6) | Free Λ-system with nonzero leading factor f | Only the finitely many height-one prime factors of f kill its specialization; f=0 would vanish at every prime and is excluded. | Pass |
| 8.28 — The self-dual Λ-adic Kolyvagin bound (Howard, Theorem 2.2.10) | Self-dual torsion factors Pᵃ twice | ord_P char(X_tor)=2a; the half-module has valuation a. Replacing char(M) by char(X_tor) doubles the bound incorrectly. | Pass |
| 8.29 — Selmer sequences, Kolyvagin sequences and the inductive step (Rubin, Propositions VII.1.4 and VII.1.6) | Zero and one elementary divisor; a=1 | Empty product 1; one factor contributes its stated power; a=1 removes the error exponent entirely. | Pass |
| 8.30 — The Λ-adic Kolyvagin-system bound and its equality criterion (Mazur–Rubin, Theorem 5.3.10) | O with π²=−5; U²ᵐ+5 | It factors as (Uᵐ−π)(Uᵐ+π), so is not an irreducible vertical perturbation. Uᴺ+π is Eisenstein and yields length Na on Λ/πᵃ. | Pass |
| 8.31 — The error-tolerant self-dual Λ-adic bound (Castella–Grossi–Lee–Skinner, Theorem 3.4.1) | Near-trivial α=1+pᵐ; augmentation quotient | Character-dependent error m grows unboundedly; a fixed error remains constant. Finite M/UM has U-characteristic order 0, unlike a free O augmentation factor. | Pass |
| 8.32 — Equality in Howard's Λ-adic bound for Λ-primitive self-dual systems | Vertical perturbation Uᵐ+p with m≥k | Modulo (p,U)ᵏ, imposing Uᵐ+p is imposing p; the resulting error is bounded by k, independent of m. | Pass |
| 8.33 — The error-tolerant Iwasawa bound char(X∞) ∣ a_τ^{5r} ind_Λ(c) (Rubin, Theorem VII.1.9) | r=0 or 1; a_τ=5 or 1 | a_τ^(5r)=1 for r=0; 5⁵=3125 for r=1,a_τ=5; 1 for a_τ=1. The coefficient-prime error is not removed by ignoring r. | Pass |
| 8.34 — Residual transfer of anticyclotomic μ-vanishing | Finite residual error k; free Λ/π summand | Finite error has 𝔽_p-dimension 1 and μ=0; Λ/π is infinite-dimensional and has μ=1, so finite-error arguments cannot discard it. | Pass |
| 8.35 — From unramified μ-vanishing to the ordinary coefficient-prime bound | Balanced ordinary local ranks; exact sequence R --π→ R | Full/zero rank differences +2 and −2 cancel; ordinary/ordinary difference 0. Cokernel R/π cannot embed into a torsion-free module, forcing surjectivity only with that final hypothesis. | Pass |
| 8.36 — Λ-adic divisibility including the augmentation prime | Ordinary coefficient-prime μ=0 | Left valuation 0, hence 0≤length of the leading quotient; omitting uniform control could add an unbounded specialization term. | Pass |
| 8.37 — Rubin's Iwasawa divisibility char(X∞) ∣ ind_Λ(c) (Theorem II.3.3) | a_τ=1; zero Euler system | Containment is index ideal ⊆ characteristic ideal, equivalent to char dividing index. Zero gives 0⊆char and no nonvanishing conclusion. | Pass |
| 8.38 — Divisibility up to a power of p (Rubin, Theorem II.3.4) | Height-one prime not dividing p | pᵗ is a unit there, so its valuation is 0; only the coefficient prime can retain the correction t·v(p). | Pass |
| 8.39 — Divisibility for the true Selmer group (Rubin, Theorem II.3.8) | Poitou–Tate exact sequence; full p-condition | Characteristic valuations add: a for restricted dual plus b for local cokernel gives a+b. Full p-condition has singular module 0, so the non-torsion-local-class premise fails. | Pass |

## Not verifiable

- The exact published Rubin pagination/numbering was not certified from the published text. The source service's legal W. Stein author-file copy has an unreadable glyph-name extraction; the refresh did not complete. The readable 1999 author draft supplies every sampled Rubin statement. In particular §8.39's mathematical statement matches draft II.3.8, pp.29–30 (Rubin line 1451), but the additional published locator “2.3.8, p.43” remains uncertified. No missing text prevents completing the seeded sample, and no source file was copied into the repository or report.
- The NSF LTXZZ refresh timed out; its existing legal published-text extraction was available. This is not treated as a missing source. The other cited works were located through the source service. Retrieval is not represented as verification of every nonsampled source passage.
- The square-index assertion cannot be mathematically certified until its actual statement and uniformity domain are supplied (R04). The checks of §4.13 certify neither that absent assertion nor a sharper constant in NekCM 6.4.3.
- The condensed table records computed tests, not formal proofs of arithmetic existence assertions. No numerical experiment can replace the missing proof ownership in R02. No acceptance or merge is recommended by this review.

## Source issues

- **Error** in MR04 at Proposition 1.3.2(ii), printed p.12: the source says transverse conditions are exact annihilators without a dyadic qualification; it should retain odd residue characteristic or an additional dyadic annihilation hypothesis; affects a stated result.
- **Error** in MR04 at Remark 3.1.4, printed p.20: the source says the Selmer sheaf and Kolyvagin systems commute naturally with arbitrary direct sums; it should require compatibility of conductor ideals and finite–singular polynomial maps; affects a stated result.
- **Misprint** in MR04 at proof of Proposition 3.6.2, printed pp.31–32: the source says the selected Frobenius lies in the extension group over F; it should use the group over ℚ when its restriction to F is τ; affects the proof.
- **Error** in MR16 at §4 (H.2), Remark 4.3 and Lemma 4.5, printed p.9 of arXiv v1 and pp.154–155 published: the source says prescribing Frobenius only on H_M determines rank-one T-coinvariants; it should prescribe Frobenius on a field containing the coefficient representation and impose residual restriction vanishing over the compositum; affects a stated result.
- **Misprint** in MR16 at proof of Theorem 6.10, printed p.15 of arXiv v1: the source says the vanishing strict-dual cohomology group has coefficient T; it should have coefficient T* as in the preceding hypothesis and Lemma 6.9; affects the proof.
- **Misprint** in Rubin at proof of Lemma IV.7.3, printed p.76 of the 1999 draft: the source says the lifted comparison's left side uses the interchanged r and rq indices; it should use the indices of the lemma's statement and the final norm calculation; affects the proof.
- **Misprint** in Rubin at proof of Proposition VI.2.1, printed p.91 of the 1999 draft: the source says I is the decomposition group in the argument showing ρ(I)=1; it should say inertia group; affects the proof.
- **Gap** in Rubin at proof of Corollary C.2.2, printed p.162 of the 1999 draft: the source says Gal(Ω/F) is topologically finitely generated for the preceding unrestricted subgroup B⊆K×; it should justify that hypothesis or restrict B, as finitely generated arithmetic units allow; affects the proof.
- **Gap** in NekCM at Proposition 6.4.3, printed p.39: the source says an arbitrary extended functional defines the comparison map into Hom(W′,Q); it should prove that it kills the tensor-to-image kernel or multiply by a uniform annihilator first; affects the proof.
- **Error** in NekCM at proof of Proposition 6.4.3, printed p.40: the source says simple B permits the opposite centralizer to be treated as a division algebra; it should retain both rectangular multiplicities, or explicitly perform the corresponding Morita reduction; affects the proof.
- **Gap** in BSS18 at §5.2 regulator calculation, printed p.25: the source says the contraction maps commute in the displayed edge calculation without specifying the compensating signs; it should retain the ordered transition and conductor signs, since two functional-first contractions anticommute; affects the proof.
- **Misprint** in BSS18 at Theorem 4.12(ii)(b), printed p.24: the source says the complete-coefficient Stark system is a basis of SS_r(A,F); it should say SS_r(T,F), consistent with the theorem and its reductions; affects a stated result.
- **Misprint** in BSS18 at Theorem 5.25(iii), printed p.36: the source says κ belongs to KS_r(A,F) in the complete-coefficient assertion; it should say KS_r(T,F); affects a stated result.
