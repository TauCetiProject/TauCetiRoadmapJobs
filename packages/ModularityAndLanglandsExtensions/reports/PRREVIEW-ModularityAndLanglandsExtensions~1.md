# Review of ModularityAndLanglandsExtensions (pull request #1180 at 2d70821)

**Verdict:** needs changes

## R01 (P1) — Discharge the exceptional arithmetic inputs to individual modularity

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:1392`, especially lines 1404–1434 and 1771. The endpoint begins “Assume §2.30’s data.”

**Claim:** The individual Caraiani–Newton endpoint is conditional on models, ranks, divisor computations, residue exclusions, an actual Bianchi eigenform and exact Galois comparisons. The roadmap explicitly leaves these as hypotheses. These are known mathematical inputs to the advertised theorem, not a declared supplier gap or a conjecture. The general Chabauty implications cited from EffectiveDiophantineMethods do not discharge the particular arithmetic assertions.

**Witness:** `cn` line 68, Theorem 1.1, p.2, assumes only imaginary quadratic F and finiteness of X₀(15)(F). README line 1434 makes every explicit comparison an assumption instead of a target.

**Repair:** Make the particular model, divisor, rank, residue and exceptional modularity assertions owned mathematical targets, using the named general suppliers. Prove them before §2.52, so its individual branch needs only F and finiteness of X₀(15)(F). No executable algorithm is required. Test the repaired endpoint on F=ℚ(i) and the displayed exceptional E₀: it must supply modularity without separately assuming the matching Bianchi form and trace comparison. The √−11 example's point counts do check: 42 at 37 and 75 at 89, giving traces −4 and 15; those calculations should be conclusions too. The independent height-density branch is unaffected.

## R02 (P2) — Restore the coefficient-prime-two case of residual potential automorphy

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:1733`, lines 1735–1749: “odd prime l” and “l=2 is outside this target”.

**Claim:** §2.50 restricts Qian's residual potential automorphy theorem because the chosen Dwork construction requires l∤2N. This is precisely a route-dependent good-prime restriction.

**Witness:** `qian-2023` lines 19–24, Theorem 1.1, p.1, allow any prime. F=ℚ(i), n=2, l=2 and the trivial semisimple rank-two residual representation meet that statement but fail §2.50's prime condition.

**Repair:** State the full-prime endpoint and own the additional coefficient-prime-two argument, or give an exact declared contract to an eligible supplier for it. The completed route must return an ordinary automorphic lift after the prescribed disjoint extension for the l=2 test above. An odd-prime endpoint plus an exclusion Check does not repair the scope.

## R03 (P2) — Import the existing relative φ–Γ and triangulation theory

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:2679`, the paragraph beginning “Extend this foundation to E-affinoid coefficients”, the family-triangulation paragraph and the ownership assertion at line 2726.

**Claim:** The proposed affinoid Robba category, exact fully faithful family realization, perfect Herr complex, derived base change, Euler characteristic, duality and birational family triangulation are already planned by the earlier PhiGammaModulesAndIwasawaCohomology roadmap. They are not an extension of an otherwise finite-coefficient-only foundation.

**Witness:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:707` (§1.2), 1677 (§4.4), 1703 (§4.5) and 2544 (§7.8) supply these objects, including `relativeDrig`, `relativeHerrPerfect` and `globalCoherentTriangulation`.

**Repair:** Delete the duplicate constructions and import those sections and their actual exports. Keep the additional definite-unitary eigenvariety, Jacquet comparison and application-specific adapters. The supplier already admits nonreduced affinoids such as E[ε]/ε² and specializes to finite local coefficients; this test therefore cannot distinguish the purported new general theory. For the trivial rank-one representation over ℚₚ, the common Euler characteristic is 1−2+0=−1, matching the supplier's −[K:ℚₚ]·rank formula. A smooth-curve family already has X′=X under §7.8's hypotheses.

## R04 (P2) — Carry the supplier's coefficient-prime irreducibility premise

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:151`, the unconditional import of “all-finite-place LGC for RAESDC/RAECSDC”.

**Claim:** The cited supplier's full coefficient-prime comparison carries `ExtremelyRegularIrreducibility n` for n≥2. This roadmap imports the result without that premise, although its own §2.43 is the theorem that can discharge it.

**Witness:** `TauCetiRoadmap/AutomorphicGaloisRepresentationsPartII/README.md:2300` defines the premise; 2453 requires it for `fullPolarizedCoefficientPrimeComparison`; 3658 retains it in `PolarizedComparisonExport`.

**Repair:** Split the early good-prime, away-prime and Iwahori imports from the full coefficient-prime export. Prove §2.43 using the weaker supplied comparison, then explicitly discharge `ExtremelyRegularIrreducibility n` before consuming the full export. The rank-one class-field-theory branch needs no such premise; a rank-two non-Iwahori coefficient-prime application must exhibit the discharge. This is a missing contract hypothesis, not a mechanical cross-roadmap cycle finding.

## R05 (P3) — Clear the failing residue gate

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:41`, and the other residue-rule locations reported by the gate.

**Claim:** The supplied gate fails `residue` with 269 matches. Its first reported witnesses are explicit HTML anchors; 263 `<a id=` occurrences are present in this README. Acceptance requires a passing gate.

**Witness:** Line 41 contains an explicit HTML anchor; the supplied gate reports `residue: 269` and overall failure, while the targeted build and dependency check pass.

**Repair:** Remove the prohibited anchor markup and repoint internal links to the generated heading anchors. Resolve the remaining reported residue matches and rerun the gate. Do not mechanically remove legitimate mathematical terminology merely because a broad scanner recognizes a word in it.

## R06 (P3) — Remove the catalogue of undeclared Lean names

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:379`, and API entries such as line 389.

**Claim:** The README declares that its Lean names describe the future library, then gives numerous backticked own API names absent from Suggested.lean. The required form uses prose API facts, reserving own declaration names for the actual acceptance-test declarations.

**Witness:** `TauCeti.LanglandsRegister.completedL_automorphic` at line 389 has no declaration in `TauCetiRoadmap/ModularityAndLanglandsExtensions/Suggested.lean`; that file contains only two definitions and `SymmetricPower.satoTate_elliptic`.

**Repair:** Rewrite future API entries as prose mathematical facts. Retain the three actual own names and exact existing supplier names. Do not expand Suggested.lean into the catalogue to make the names resolve. Recheck this same L-function entry against the resulting three-declaration file.

## R07 (P3) — Give the two acceptance-test definitions discriminating APIs and Checks

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:3226`, especially line 3230; `TauCetiRoadmap/ModularityAndLanglandsExtensions/Suggested.lean:42` and 51.

**Claim:** The two retained definitions are described in a sentence, without their required prose API and three discriminating Checks each. The integral normalization alone tests neither the finite set nor the point-count angle.

**Witness:** For E:y²=x³−x+1, good p=5,7 give #E(𝔽ₚ)=8,12, hence cos θ=−1/√5,−2/√7. At bounds 0 and 1 the good-prime set is empty.

**Repair:** Add the API and Checks in the README: bounds 0/1, inclusion of good 5 and 7, exclusion of bad 23, invariance under an isomorphic nonminimal equation; angle values at 5 and 7, inclusion of infinity in the point count, and agreement with the root of nonnegative imaginary part. Here Δ=−368, so 23 is bad. Keep these tests out of Suggested.lean. They distinguish a reversed trace sign, omission of infinity, and use of a nonminimal reduction.

## Verified sound

The findings are repairable within this roadmap; they do not justify rejecting its entire scope. The worktree was reviewed read-only at the requested head. The diff outside the nominated folder is empty. The repository's README and CONTRIBUTING requirements and two main-branch roadmap examples were read. No source text was copied into the roadmap or report.

**Gate and elaboration.** The supplied gate passes the targeted build and every listed rule except `residue` (269 matches). Independent `lake env lean` elaboration of Suggested.lean succeeds with the single expected `sorry` warning. There are three declarations: two real-bodied definitions and one theorem; no sorry'd data or `set_option`. A scratch copy with explicit `#check @...` for all three agrees with the supplied elaborated signatures: `E.IsElliptic`, the geometric non-CM hypothesis and `ContinuousOn f [0,π]` are retained by the theorem; no section binder disappeared. The theorem does not close by `rfl`, `simp` or `infer_instance` in the scratch one-tactic probe. Object searches found no pinned Sato–Tate theorem supplying a one-lemma proof; no padding finding is made.

The requested mechanical supplier-order check returned:

```text
depcheck: 205 roadmaps, 1478 edges, 0 problem(s)
```

This is evidence about the dependency graph, not about the content of a supplier's hypotheses: R04 remains despite that pass.

**Pinned objects opened.** Mathlib revision `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti revision `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039` were used, not newer versions.

| Pinned file and line | What the declaration actually supplies | Control |
|---|---|---|
| `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean:274`, 299, 316, 323, 328 | Minimality, a chosen minimal integral equation, residue curve, good reduction and its ellipticity criterion | Minimal reduction, not reduction of an arbitrary rational equation; Δ=−368 has good 5,7 and bad 23 |
| `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477`, 545 | The point carrier includes infinity and nonsingular affine points; on good reduction it is the elliptic curve's point set | At p=5, seven affine points plus infinity give 8, not 7 |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Hom/Basic.lean:106`, 114; `Hom/Ring.lean:174`, 182 | Pointed curve homomorphisms, including zero, with the endomorphism ring | Integer multiplication belongs to this ring; zero is present. Surjectivity of ℤ→End(Eℂ) expresses absence of extra geometric endomorphisms |
| `TauCeti/NumberTheory/ModularForms/Newforms/Satake.lean:91`, 108, 272, 323 | Satake parameters and an angle/exponential description under reality and Ramanujan hypotheses | It assumes the bound; it does not supply Sato–Tate or prove Ramanujan |
| `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290`, 292, 327 | `charpolyRev = det(1−XM)` and reverse characteristic polynomial identities | diag(2,3) gives 1−5X+6X², constant coefficient 1 |

**Ownership and resolved supplier boundaries.** Object searches used the roadmap service, main content, board packages and the accessible open heads, rather than only this roadmap's proposed names. Thirty-one supplier README exports were opened, along with the PotentialModularityAndCompatibleSystems README and Lean file. The important resolutions were:

- PhiGammaModulesAndIwasawaCohomology §§1.2, 3.6, 4.4–4.5 and 7.8 already own the general family theory in R03. LocalGaloisDeformationRings §0.4 imports its finite-local specialization; it does not establish exclusive ownership of the general object here.
- AutomorphicGaloisRepresentationsPartII AG2.6 really does contain the relative curve, bundle/lisse, Hecke and parameter-stack constructions cited by §§5.7–5.9 (`README.md:2468`, 2501, 2598). Those sections here are stated as comparisons and support/Whittaker specializations. They are not reported missing. The full coefficient-prime export is different: it retains the premise in R04.
- PotentialModularityAndCompatibleSystems §1.22 supplies the polarized-constituent lemma, not BLGGT 5.5.3's full decomposition into irreducible systems. Keeping §2.46 here is therefore not a duplication finding.
- PadicHodgeTheory §3.6 supplies ordinary flags and the consecutive-weight/maximal-monodromy criterion. §2.11 retains that restriction rather than importing Qian's overbroad printed lemma.
- EllipticCurveModularityImaginaryQuadratic §0.3 owns the fixed-pairing 3/5 switch and §5.3 the elliptic modularity criterion. §2.29 uses these rather than constructing another switch.
- BianchiModularForms explicitly consumes this roadmap's §§4.26–4.27 and Fourier/cohomological bounds (`TauCetiRoadmap/BianchiModularForms/README.md:130`, 609, 626, supplied open head). Its presence is not evidence that the Fourier comparison should be rebuilt there.
- The inspected contracts also resolve the distinct roles of ArithmeticLocallySymmetricSpaces (cohomology/Hecke carriers), AutomorphicFormsOnReductiveGroups (purity and archimedean representation theory), AutomorphicLFunctionsAndLocalFactors (factors versus analytic continuation), EndoscopicTransferAndUnitaryTraceComparison (transfer with its input hypotheses), and CompactGroups (compact harmonic analysis). No later-supplier edge was reported by the mechanical audit.

The 169 unresolved entries in the worker's citation scan were used as leads, not treated as 169 missing suppliers: many are the future own API names in R06. The checks above are the resolved objects on which this verdict relies; they are not a claim that every informal supplier label denotes a verified exported theorem.

**Headline coverage.** The end results include §§1.3–1.4, 1.9, 1.11, 1.13–1.15 (Artin modularity and low-rank transfer); §§2.26, 2.33–2.43, 2.45–2.52 (potential automorphy, compatible systems, irreducibility, analytic consequences and imaginary-quadratic modularity); §§3.12, 3.15–3.19, 3.21–3.32 (classification, multiplicity and genus-two consequences); §§4.12–4.15, 4.20–4.24, 4.28–4.43 (symmetric powers, purity, Ramanujan and equidistribution); and §§5.1, 5.4–5.5, 5.9–5.11 (transfer/descent, Whittaker construction, categorical frontier and Ramanujan implication). The conjectural statements in §§0.4, 1.2, 3.10, 5.2–5.3, 5.6 and 5.10 remain labelled as conjectural, not asserted as proved. Suggested.lean states the elliptic Sato–Tate headline §4.34 on native carriers. Its module docstring identifies the other groups of headlines and their missing automorphic, compatible-system, packet or stack carriers. The pinned newform/Satake API alone does not state those full results. No missing statable headline was established by the audit.

**Seeded source sample (15 targets).** Fourteen sampled targets had readable source texts; Arthur's exact cited manuscript was not. “Supports” below means that the stated theorem and hypotheses were compared at the locator, not that the future Lean proof was checked. Page numbers identify the version actually read; the README's preprint/published conversions were retained.

| Target | Text and exact locator inspected | Result |
|---|---|---|
| 1.9 | `ps` lines 50–54, Theorem 0.3, p.2 | Supports finite-image, irreducible, totally odd rank two over a totally real field; the lifting theorem 0.4 has additional hypotheses and is not substituted for 0.3 |
| 2.36 | `blggt` lines 3553–3558, Proposition 5.4.6, pp.76–77, arXiv v4 | Supports purity, extreme regularity, odd polarization, density-one rational primes and a common extension for constituents |
| 2.41 | `blggt` lines 3675–3683, Theorem 5.5.1, pp.79–81 | Supports the stated prime bound, cyclotomic exclusion/irreducibility and potential diagonalizability |
| 2.46 | `blggt` lines 3837–3841, Theorem 5.5.3, p.82 | Supports decomposition of the pure extremely regular polarized system into irreducible systems |
| 2.52 | `cn` lines 68–69, Theorem 1.1, p.2; lines 113–115, p.3 | Individual theorem is unconditional apart from F/finiteness; density theorem is separate. R01 |
| 3.14 | `shahidi` lines 12–29, 64–65, Theorem 1.1, pp.311–312; `belt-square` lines 2393–2402, Theorem 5.2, p.41, and 2633–2635, Theorem 6.2, p.45 | Boundary nonvanishing and continuation support the route, with finite S, unitary hypotheses and norm-twist pole shifts retained |
| 3.15 | Arthur, Theorem 1.5.1, cited 2011 manuscript | Not verifiable from the legal URLs tried; no source-content verdict |
| 3.18 | `gan-ichino` lines 773–793, §5.2, (5.3), p.17 | Across-form parametrization and central-sign restriction match; sufficiency on a fixed form is not asserted indiscriminately over ℝ |
| 3.22 | `mr` lines 1024–1083, Theorems 7.1–7.2, pp.18–19 | The two branches, interval exclusions and strict 2k>g+1 condition match |
| 3.29 | `schmidt` lines 700–731, (2.23), pp.2393–2394; 884–966, (3.11)–(3.14), pp.2398–2399; `muic-2009` lines 939–948, Lemma 8.1, p.372 | Supports full-group two-member packet versus four limits on restriction and the specified wall |
| 4.11 | `nt2` lines 211–236, Theorem 2.1, p.5, arXiv v2 | Weight two, non-CM, nonordinarity, projective-image sandwich, congruence and Steinberg conditions retained; no extra p>n restriction |
| 4.24 | `acc` lines 8127–8148, Corollary 7.1.13, p.201, arXiv v2 | Purity and meromorphic continuation match; holomorphy/nonvanishing excludes symmetric power zero |
| 4.27 | `bcgnt-2025` lines 437–460, §1.3, p.9; 465–520, pp.10–11, arXiv v3 | Fourier normalization, all ideal-class components and coefficient-system conventions match |
| 4.31 | `ct3` lines 2232–2237, Theorem 6.1, p.44 | Sixth/eighth powers have ranks 7/9 with the respective fifth/seventh cyclotomic disjointness assumptions |
| 4.36 | `nth` lines 2361–2366, Theorem 6.5(2), p.50, arXiv v2 | RAECSDC, nonquadratically-induced, n≥2 and every-place parameter matching agree |

**Adversarial calculations.** All 157 numbered target sections were read. The following table records one explicit boundary, normalization, scope or algebraic control per section, with additional rows for the retained definitions and findings. These finite calculations test the indicated part of each statement; they do not prove an automorphy, classification or equidistribution theorem, nor certify every ancillary API bullet. “Retain” means that this control calls for no change, not that an unavailable source has been certified. Conjectural targets are tested as statements, not claimed as theorems.

| Statement | Instance tried | Computed values on the two sides / negative control | Result; change |
|---|---|---|---|
| Conventions; C-GALOIS | Rank two, geometric Frobenius eigenvalues α,β | det(1−FT)=1−(α+β)T+αβT²; replacing F by F⁻¹ gives inverse roots. H¹ determinant ε⁻¹, Tate-module determinant ε | Retain dual/Frobenius distinction |
| Supplier import, line 151 | n=1 versus n=2, non-Iwahori coefficient place | Supplier's extra premise: absent at rank 1, required at rank 2; README imports both unconditionally | R04 |
| 0.1 | n=1,2,4 | Automorphic shifts (1−n)/2 = 0,−1/2,−3/2; unshifted comparison differs in ranks 2,4 | Retain |
| 0.2 | 1⊕ε⁻¹ | Rank 2, Hodge list {0,1}; two isobaric constituents, not one cuspidal constituent | Correct exclusion; retain |
| 0.3 | (k,r)=(2,1),(3,2),(0,1) | Lists (0,−1,2,1), (0,0,4,4), (0,−1,0,−1); distinct counts 4,2,2 | Retain all collision conditions |
| 0.4 | (k,r)=(0,2) | Predicted list (0,0,1,1), rank 4; regularity false, unlike (2,1)'s four distinct labels | Retain conjectural status |
| 1.1 | α/β=−1 | Powers i=1,2 are −1,1; 2-regular true, 3-regular false | Retain |
| 1.2 | S₃ standard representation; 1⊕1 | Transposition trace 0, determinant −1; trivial sum trace 2, determinant 1, L=ζ² with pole order 2 | Irreducibility/oddness distinguish inputs |
| 1.3 | Equal weights (a,a), then twist by −a | Hodge labels become (0,0); distinct count remains 1, whereas (0,1) has 2 | Retain irregular restriction |
| 1.4 | Determinant ε̄⁻¹ over 𝔽₅, twist by ε̄ | New determinant ε̄²ε̄⁻¹=ε̄; projective image unchanged | Retain twist before applying lifting |
| 1.5 | E[t]/t² as a negative control | One E-valued point, nonzero t with t²=0; tangent dimension 1, not 0 | Finitely many points alone is insufficient; special deformation hypotheses retained |
| 1.6 | R=det on diag(2,3); R=std | det=6; identity roots (2,3). Sym² roots (4,6,9), rank 3 | Retain actual representation R |
| 1.7 | (p,a,n)=(2,3,4),(5,1,2) | 8>max(5,7)=7 true; 5>max(5,3)=5 false | Retain strict field-size test |
| 1.8 | E[X]/(X−1)² | Dimension 2, (X−1)²=0 but X−1≠0; replacing by its one character loses dimension 1 | Retain generalized eigenspace |
| 1.9 | Odd S₃ standard Artin representation | c has roots 1,−1, trace 0 and determinant −1; even trivial rank-two representation has determinant +1 | Sample hypotheses distinguish the cases |
| 1.10 | Symⁿ⁻¹, n=1,2,3 | Ranks 1,2,3; roots 1; (α,β); (α²,αβ,β²) | Retain rank-one and noncuspidal branches |
| 1.11 | V⊗V for rank-two V | Rank 4=3+1; Sym²V⊕det V. A self-pair cannot be a cuspidal rank-four transfer | Cuspidality exception retained |
| 1.12 | SP₁ and SP₂ | Sym⁰ rank 1 trivial; Sym¹ rank 2 identity | Valid induction bases; no Lean padding |
| 1.13 | V⊗Sym²V | Rank 6=4+2; Sym³V⊕(V⊗det V) | Retain low-rank decomposition and cusp exceptions |
| 1.14 | Scalar aI₄, a=2 | ∧² has six roots 4, determinant 4⁶=4096; (det 2I₄)³=16³=4096, square gives 256 | README's exponent 3 is correct |
| 1.15 | n=1,…,5; HT(V)={0,1} | Symⁿ⁻¹ ranks 1,…,5; labels {0,…,n−1} have n distinct values | Retain regular non-CM base range |
| 2.1 | ℓ=5, labels {0,3} versus {0,4} | Widths 3,4; Fontaine–Laffaille criterion bound ℓ−2=3 | First passes criterion; second not implied |
| 2.2 | ℓ=2 versus 3 | Odd-prime premise false,true; semistable Tate extension has rank N=1, crystalline rank N=0 | Retain source hypotheses, unlike R02's artificial restriction |
| 2.3 | U=diag(1,0) on 𝔽₃² | Ordinary projector Uᵐ=diag(1,0), image dimension 1; U=0/1 give dimensions 0/2 | Retain partial projector and all-degree distinction |
| 2.4 | p=n=2; only two distinguished places | p∣n true, so fixed-determinant extension fails its coprimality premise; remaining-degree sum is 0 | Retain restrictions on that branch |
| 2.5 | n=2, p=3 versus 2 | Weight-zero labels {0,1}; 3>2 true, 2>2 false; {0,2} has gap 2 instead of 1 | Retain strict bound and component data |
| 2.6 | Quaternion generators over 𝔽₇ displayed in Check | A²=B²=−I, AB=−BA; AB≠BA since 1≠−1 in 𝔽₇ | Nonabelian kernel is not a sum of characters; retain exceptional exclusion |
| 2.7 | n=2, q=9, T₁=2,T₂=1 | Hecke polynomial X²−2X+9; omitted norm gives X²−2X+1 | Retain norm and full conjectural hypothesis |
| 2.8 | n=2, determinant ε | Dual determinant ε⁻¹, not ε; at ε(g)=2 mod 5 these are 3 and 2 | Retain dual conversion and conjectural premise |
| 2.9 | C₂ projector over ℚ versus characteristic 2 | (1+g)/2 and (1−g)/2 multiply to 0; in characteristic 2, 2=0 so averaging inverse does not exist | Retain coefficient invertibility |
| 2.10 | N=[[0,1],[0,0]] | N²=0, rank N=1; (2N)²=0 and rank 1 over ℚ, but 2N=0 mod 2 | Retain characteristic-zero rescaling |
| 2.11 | φ=diag(5,25), Ne₂=e₁, filtration line e₁+e₂ in degrees 1–3 | Nφ=5φN; total tN=tH=3; stable line has tH=0<tN=1; weights {0,3} | Correct negative control for overbroad source lemma |
| 2.12 | Tate extension and its local semisimplification | Original N rank 1, semisimplified N rank 0; Hodge multiset unchanged {−1,0} in Tate-module convention | Retain distinction from global transport |
| 2.13 | Infinite avoidance ℚ̄ with prescribed quadratic completion | Disjointness would force [L:ℚ]=1; prescribed completion has degree 2 | Excluded by finite avoidance; retain |
| 2.14 | Symplectic ranks 2 and 3, characteristic ≠2 | Rank 2 multiplier ε⁻¹; alternating 3×3 matrix has det=−det, hence det=0 | Retain even positive ranks |
| 2.15 | H={0,1}, w=1 | w−H={1,0}=H; taking w=0 gives {0,−1}≠H | Retain conjugate multiplier relation |
| 2.16 | Maximal constituent dimension d=2 | Required threshold 2(d+1)=6; choosing a rank-one constituent falsely lowers it to 4 | Retain maximal-d quantifier |
| 2.17 | Empty family and trivial avoidance | Number of representation constraints 0; field constraints still present; identity extension has intersection F | Retain empty-family field clause |
| 2.18 | Scalar 2I₂ over 𝔽₇ | det=4≠1; over ℚ(ζ₇) determinant image instead {1} | Retain field-dependent ramification exclusion |
| 2.19 | n=2, l=3 | N>100n+100=300; auxiliary l′>2ln+5=17 and l′≡1 mod 2N | Numerical conditions not replaced by mere primality |
| 2.20 | n=2, M=0; one monodromy block | Rank N=1, HT={0,1}, central slope nM=0, partial slope M=0; N=0 loses Steinberg information | Retain auxiliary monodromy comparison |
| 2.21 | Reducible r̄=1⊕1 | Rank 2, two invariant lines and irreducibility false; semisimple does not imply irreducible | Correctly not applied to arbitrary input of §2.50 |
| 2.22 | m=1 versus m=2 | Lower bounds max(2m+3,(m+1)²)=5,9; primes must be distinct and strictly larger | Retain both bounds |
| 2.23 | q=7 versus q=3 | g(X(7))=3, g(X₀(7))=0; at q=3 the twisted full-level curve has a point and genus 0 | Full level distinguished from cyclic level |
| 2.24 | m=2, n=1 | HT={0,2}; requested Sym⁰ has rank 1, determinant 1; m=1 is outside this particular switch | Retain sufficient-condition formulation |
| 2.25 | n=1, d=1, ℓ=5 | Threshold 2(d+1)=4, 5≥4; one weight is distinct; ℓ=3 fails bound | Retain full local lift premises |
| 2.26 | Two systems, same avoidance extension A/F | Desired intersections F′∩A=F for both; choosing F′=A gives intersection A≠F when [A:F]=2 | Common disjointness is substantive |
| 2.27 | n=2 and empty auxiliary prime set | Multiplier ε̄⁻¹, weight list {0,1}; number of prescribed unramified primes 0 | Retain later-extension avoidance condition |
| 2.28 | n=1, p=5, q=11 | q mod p=1; rank 2 regular N has N²=0≠N; q=7 gives residue 2 and fails | Retain Steinberg congruence/local lift premises |
| 2.29 | A[5] and its dual at cyclotomic value 2 | Determinants 2 and 3 mod 5; product 1 | Supplier's Weil-pairing convention matches |
| 2.30 | Exceptional √−11 curve at (37,a=14),(89,a=37) | #E=42,75; traces −4,15; mod-5 pairs (tr,det)=(1,2),(0,4), latter roots ±1 | Arithmetic controls pass; ownership repair R01 |
| 2.31 | Sym²ⁿ⁻¹ for n=1,2 | Ranks 2,4; determinant exponents 1,6 on Tate representation | Retain conditional Conjecture B premise |
| 2.32 | n=2 | ℓ>2(n+1)=6 accepts 7, rejects 5; distinct weights remain required | Retain strict inequality |
| 2.33 | n=2 | ℓ≥6 accepts prime 7, rejects 5; output rank still 2 | Retain totally-real and PD restrictions |
| 2.34 | H={0,1}, multiplier weight 1 at conjugate places | Dual labels {0,−1}, adding 1 gives {1,0}; an unrelated conjugate lift need not have this list | Retain polarized local prescriptions |
| 2.35 | Empty family; family of two systems | Number of automorphy obligations 0 or 2; number of returned fields remains 1 | Retain simultaneous quantifier |
| 2.36 | Extremely regular labels {0,1,3,7} versus {0,1,2,3} | Pair sums first {1,3,7,4,8,10}, six distinct; second includes 0+3=1+2=3 | Extreme regularity is not ordinary regularity |
| 2.37 | E with CM versus non-CM | Both rank 2; CM can split into 1+1 characters after extension, so isobaric branch matters | Retain potential, conditional assertion |
| 2.38 | n=1, m=2 | Sym⁰ rank 1, HT={0}; n=2 yields rank 2, HT={0,2} | Retain n-dependent extension and good-place level |
| 2.39 | m=1,2; H=H¹(E) | Ranks 2,3; determinants ε⁻¹, ε⁻³; weights {0,1}, {0,1,2} | Retain common elliptic convention |
| 2.40 | Odd rank 3, c²=1 | Odd polarized pattern (+,+,−) gives trace 1; its negative gives −1, unlike unrestricted trace 3 | Retain parity and sign hypotheses |
| 2.41 | n=2; virtual A=±χ | Threshold ℓ≥6; both virtual norms (A,A)=1 but dimensions +1,−1 | Nonnegative dimension excludes −χ; retain criterion |
| 2.42 | Direct sum of two distinct rank-one systems | Total rank 2=1+1; constituent count 2, not a single cuspidal rank 2 | Retain direct-sum conclusion |
| 2.43 | j=1 versus j=2 constituents | Computed self-pole orders −j=−1,−2; cuspidal pole order −1 forces j=1 | Correct route; explicitly discharge R04 afterwards |
| 2.44 | Symⁿ⁻¹ H, n=2,3 | Rank 2,3; determinant exponents −1,−3; extension killing residual image has image size 1 | Retain residual-field avoidance |
| 2.45 | K={1,2,4} versus {1,2,3} | Eight subset sums 0,…,7 in first; second has 3=1+2, so fewer than 8 distinct | Retain subset-sum condition |
| 2.46 | Rank-one system versus rank-two direct sum | Decomposition ranks 1 and 1+1=2; repeated same character gives repeated labels and fails regularity | Source matches; no new decomposition owner elsewhere established |
| 2.47 | Rank-two local extension versus semisimplification | N rank 1 versus 0; identical diagonal constituents, so equality after ss cannot recover N | Retain coefficient-prime geometric argument |
| 2.48 | GSp₂=GL₂ | Standard rank 2, alternating multiplier=det; wedge² rank 1 carries that same multiplier | Retain chosen geometric lift and potential automorphy |
| 2.49 | Pure rank-one Frobenius root α, weight w | abs(α)²=qʷ; dual has abs(α⁻¹)²=q⁻ʷ; product 1 | Retain dual in functional equation |
| 2.50 | F=ℚ(i), n=2, ℓ=2, r̄=1⊕1 | Semisimplicity true, rank 2; source prime premise true, roadmap oddness false | R02 |
| 2.51 | n=2, ℓ=2 versus 3 | ℓ>n is false,true; ACC+ lifting theorem requires true | README corrects source proof gap; retain |
| 2.52 | F=ℚ(i), exceptional E₀; √−11 controls from §2.30 | Source requires no extra arithmetic premise; roadmap adds one. √−11 traces are −4,15 | R01; separate density branch retained |
| 3.1 | Oscillator m=0,1; polarized plane vectors (1,0),(0,1) | Energies (2m+1)/2=1/2,3/2; commutator xy′−x′y=1, doubled cocycle gives 2 | Retain cover and factor 1/2 |
| 3.2 | Identity Weyl element; torus Levi equal to group | Normalized intertwiner 1, weight 1; rescaling by −1 gives −1 | Retain normalization and weighted input |
| 3.3 | Rank-one exterior square; GL₂ roots 2,3 | Exterior degrees 0,1; factors 1 and (1−6χ(ϖ)q⁻ˢ)⁻¹; symmetric roots 4,6,9 | Retain distinction |
| 3.4 | Quadratic rank-one χ; det-one cuspidal GL₂ | χ²=1 gives symmetric zeta pole order −1, exterior factor 1; GL₂ exterior zeta pole order −1 | Type assignments agree |
| 3.5 | Aφ=1 versus C₂ | Character groups have sizes 1,2; C₂ trivial character selects one generic member | Retain enhanced fibre, not an injective unenhanced map |
| 3.6 | Block dimensions (), (3), (1,1), (1,2) | Sign kernels {()}, {0}, {00,11}, {00,01}; sizes 1,1,2,2 | Determinant constraint correct |
| 3.7 | Residue q=9, coefficient prime 5 | q³ᐟ²=27; coefficient-prime substitution 5√5 has square 125 instead of 729 | Retain q normalization |
| 3.8 | SO₁; SO₃ with 1⊠ν₂ | Standard parameter dimensions 0 and 2; component group trivial in each test | Retain empty parameter and parity |
| 3.9 | Yoshida versus one rank-four cuspidal block | Standard dimensions 2+2=4 versus 4; constituent counts 2 versus 1 | General type distinguished from discrete |
| 3.10 | Coefficient field degree 1; cubic character twist | Abelian dimension 2, H¹ rank 4; twist determinant χ⁴ε⁻²=χε⁻²≠ε⁻² | Trivial finite nebentypus is essential; conjecture retained |
| 3.11 | Ordinary surface H¹ | Rank 4, labels {0,0,1,1}; not four distinct labels | Regular-weight residual premise and singular-weight conclusion distinguished |
| 3.12 | U(1) versus U(2) | Required block signs (−1)ᴺ⁻¹ are +1,−1; replacing by constant +1 fails N=2 | Retain parity and multiset qualification |
| 3.13 | SL₂ Klein-four parameter; split SO₂ | Component groups C₂² and 1; enhancement counts 4 and 1; even-orthogonal χ and χ⁻¹ share orbit | Retain enhancement/outer action |
| 3.14 | GL₂ with trivial centre, χ=1 | ∧²π=1, partial zeta order at 1 is −1; removing all places gives 1, order 0 | Finite-S hypothesis excludes false control |
| 3.15 | Tempered component group C₂ | Dual group of components has 2 characters; a p-adic bijection gives 2 labels, an archimedean injection only ≤2 | Scope control only; Arthur source unverified |
| 3.16 | Central sign group C₂ | η(z)=+1 and −1 select disjoint singleton character sets; imposing both gives empty set | Retain inner-form central character |
| 3.17 | Two local C₂ characters | Global products (+1)(+1)=+1 and (+1)(−1)=−1 | Matching εψ is a global constraint; source unverified |
| 3.18 | Sφ=C₂, central z nontrivial | Two enhancements, one with η(z)=+1 and one −1; split/nonsplit signs separate them | Retain across-form versus fixed-form distinction |
| 3.19 | GSp₂=GL₂ with nontrivial quadratic self-twist | Refined LLC fibre size 1; self-twist subgroup size at least 2 | Do not identify those cardinalities |
| 3.20 | Compact SU₂, singular λ=−ρ | O(−1) on ℙ¹ has H⁰=H¹=0; weak-range pairing 0 does not imply nonzero induction | Retain strict/nonzero conditions |
| 3.21 | L=G | u=0, induction degree 0, Weyl quotient has one element | Character case retained |
| 3.22 | g=2, ψ=1⊕δ₁⊠R₂, k=2 versus 1 | Dimension 5, infinitesimal list {1,0,0,0,−1}; 2k>3 gives 4>3 true, 2>3 false; a(ψu)=1≠3,5 | Same infinitesimal character does not imply membership |
| 3.23 | Generic global parameter with C₂ sign | Diagonal product +1 yields m=1; −1 yields m=0 | Generic multiplicity condition retained |
| 3.24 | n=1, r=4 versus 3 | 2n<r−1 gives 2<3 true, 2<2 false; extended dimensions 2+(2r−2)=2r | Retain strict stable-range bound |
| 3.25 | GL₂ normalized induction with exponents ±1/2 | Semisimple roots same for its two constituents; N ranks 0,1 | Generic standard-module hypothesis cannot be dropped |
| 3.26 | General type versus Yoshida | Component groups 1 and C₂; required nongeneral assembly has two characters rather than one | Do not infer full classification from general-type export |
| 3.27 | Two indexing pairs representing same π | Coefficients 1+1=2, not multiplicity 1 for the isomorphism class | Correct warning; retain |
| 3.28 | Two rank-two Hodge lists {0,1}, Yoshida twist ε⁻¹ | Combined shifted list {1,2,1,2}; determinant of each block ε⁻¹·ε⁻²=ε⁻³ | Retain rank-dependent twist |
| 3.29 | Wall (p,0), p=1 | Minimal K-types (2,2),(2,0); 4 limits on restriction become 2 full-group members; p=0 is excluded | Source-supported control |
| 3.30 | p=5, t=4 versus t=1 | ε̄⁻²ᵗ=ε̄⁻⁸=1; at ε̄=2, ε̄⁻²=4≠1 | Retain divisibility on weight shift |
| 3.31 | General-type and Yoshida transfers | Rank 4 with one constituent versus 2+2; second yields reducible characteristic-zero realization | Residual irreducibility selects general-type branch |
| 3.32 | μ=(3,3;0), λ=(2,1;−6) | Central weights +6,−6 cancel; spin exponents −3/2,−5/2,−7/2,−9/2 sum −12=2(−6) | Sign normalization agrees |
| 4.1 | Scalar rank-two subgroup; rank one | Two repeated eigenvalues preclude regularity in rank 2; rank-one projector=1; c(aI)=−aI | Retain full adjoint action, including at p=2 |
| 4.2 | n=1 or ℓ∣n | n>1 fails at 1; n=3,ℓ=3 has n mod ℓ=0 | Retain excluded ranks and coprimality |
| 4.3 | φ=2,γ=3; rank-one trivial family | d⁰(1)=(1,2), d¹d⁰=2−2=0; swapping coordinates changes d¹ sign; Euler 1−2+0=−1 | Conventions pass; shared theory must be imported, R03 |
| 4.4 | n=1, q=9 | Level-raising ratio congruence becomes ξ₁/ξ₂≡9; target rank 2n=2, not characteristic-zero equality with ξ₁⊞ξ₂ | Retain residual comparison |
| 4.5 | n=3, refinement roots 1,−1 | Sym² roots 1,−1,1; collision count 2 distinct instead of 3 | n-regular locus essential |
| 4.6 | 2-adic boundary weight parameter | For v₂(w)=1/2, the j-th slope j·v₂(w) gives 1/2,1,3/2 for j=1,2,3 | Boundary proportionality control; not a global slope claim |
| 4.7 | A seed and another point on connected propagation chain | Fixed symmetric-power rank n on both; taking n=2 gives original rank 2 at each endpoint | Preserve n and component hypotheses |
| 4.8 | Sym² of quadratic induction | Rank 3=2+1; initial theta-series power is noncuspidal before raising | Steinberg/raising step cannot be omitted |
| 4.9 | Seed at n=3 | Sym² rank 3 and HT {0,k−1,2(k−1)}; k≥2 makes both gaps k−1≥1 | Regularity control; retain |
| 4.10 | α/β=−1 and n=3 | i=1 gives −1≠1, i=2 gives 1=1 | A congruent form needs the n-regular improvement |
| 4.11 | p=2,a=3,n=4 | pᵃ=8>max(5,2n−1)=7; p>n is false | Source allows this size regime; retain other hypotheses |
| 4.12 | Δ and n=2,3 | Sym¹ rank 2; Sym² rank 3 with HT {0,11,22} | Level-one regularity check; retain |
| 4.13 | Binary icosahedral irreducibles; Sym⁵ | Dimension-square sum 1+4+4+9+9+16+16+25+36=120; central −I acts on Sym⁵ by −1, trace −6 | README's correction of source table passes |
| 4.14 | Compact group C₂ | Counts N₊,N₋; trivial average (N₊+N₋)/N=1, sign average (N₊−N₋)/N→0 implies each proportion 1/2 | Retain trivial-character counting input |
| 4.15 | n=1,2 | Sym⁰ roots {1}, rank 1 at every place; Sym¹ retains rank 2 and original N | All-place predicate distinguishes semisimple-only matching |
| 4.16 | Quadratic induction versus regular non-CM | Sym² has ranks 2+1, reducible; Artin twist has labels {a,a}, gap 0 | Excluded branches are genuine |
| 4.17 | n=0,1,2 | γ₀=Γℝ(s), γ₁=Γℂ(s), γ₂=Γℝ(s)Γℂ(s); middle Sym² vector fixed by c, sign +1 | Retain gamma sign and zeta pole at n=0 |
| 4.18 | Conjugate weights (2,0),(3,1) | Cross sums 2+1=0+3=3, differences 2,2, so k=4; coordinates are unequal | Parallelity is difference equality |
| 4.19 | q=4,m=1, abs(α)=3 | n=3 gives abs(α)²=9>4^(1+1/2)=8; purported unbounded-power bound already fails | Unbounded powers force abs(α)=2 |
| 4.20 | Semistable multiplicative place | WD monodromy rank 1, one accessible refinement; supercuspidal Jacquet dimension 0 | Semistable route fits nonzero-Jacquet premise |
| 4.21 | m=1, n=1,3 | Purity weight 1 gives abs(α)²=q; Sym⁰ rank 1, Sym² rank 3, determinant ε⁻³ | Retain m=1 ACC+ branch and good-place scope |
| 4.22 | n=p+r=8 with p=5,r=3 | 0<3<5; lower ranks p,r,p−r are 5,3,2, each <8 | Induction lowers rank |
| 4.23 | Tensor labels {0,1} and {0,2} | Sum list {0,1,2,3}; replacing second list by {0,1} yields {0,1,1,2} | Retain no-collision condition |
| 4.24 | m=0,1,2 | Boundaries Re s≥1,3/2,2; m=0 gives ζF with pole order −1 at 1 | Positive-power restriction correct |
| 4.25 | ST=C₂ or trivial | Sign character integral 0 for C₂; trivial character integral 1 in both groups | Nontrivial characters alone do not count primes |
| 4.26 | k=2, norm 9 | Coefficient rank (k−1)²=1; bound 2·9¹ᐟ²=6, not 2√3 | Norm and parabolic restriction retained |
| 4.27 | Normalized f versus 2f; elliptic coefficient at norm 5 | Constant normalization 1 versus 2; #E=8 gives c(𝔭)=5+1−8=−2 | Scaling and point-count controls pass |
| 4.28 | Test functions 1 and 2cosθ | SU₂ integrals 1 and 0; CM-in-F U(1) has a different distribution despite same total mass | Non-CM and conjectural premise retained |
| 4.29 | Symⁿ, n=1,2 | Ranks n+1=2,3; determinant exponents 1,3; n=0 instead gives zeta pole | Retain positive powers |
| 4.30 | SP₈ induction split 8=5+3 | Smaller required ranks 5,3,2; rank 8 output has HT labels 0,…,7 for weight two | General totally-real theorem distinguishes older bounded results |
| 4.31 | F=ℚ; F=ℚ(√5) | Sym⁶/⁸ ranks 7/9; [ℚ∩ℚ(ζ₅):ℚ]=1 but [ℚ(√5)∩ℚ(ζ₅):ℚ]=2 | Sixth-power source restriction retained |
| 4.32 | n=2 versus 0 | Sym² degree 3; Sym⁰ degree 1, ζ has pole at 1 | Positive-range analytic claim avoids boundary counterexample |
| 4.33 | Strongly irreducible versus induced rank-two system | Sym² degree 3; induced branch splits 2+1, so constituent dimensions ≤2 rather than one cuspidal 3 | Both branches retained |
| 4.34 | f=1, 2cosθ, (2cosθ)² | (2/π)∫sin²=1; odd cosine integral 0; (8/π)∫cos²sin²=1 | Density and trace normalization pass |
| 4.35 | Hilbert weights 2 and 3 at two real places | Parities 0,1 differ; each kᵥ−1 positive (1,2); n=3 local gaps remain 1 and 2 | Mixed-parity scope retained |
| 4.36 | n=2,3; quadratic induction as negative control | Sym¹ rank 2; Sym² rank 3; induced input has decomposition 2+1 and fails non-induction premise | Source matches all-place cuspidal assertion |
| 4.37 | Degree 0 versus degree 1 | L(Sym⁰π)=ζF, pole order −1 at 1; positive standard cuspidal degree avoids that pole | Degree-zero exclusion retained |
| 4.38 | k=2,q=9 | recᵀ eigenvalue modulus 9¹ᐟ²=3; unitary normalized modulus 1 | Retain normalization twist |
| 4.39 | Determinant image μ₂ versus μ₃ | det diag(−1,1)=−1∈μ₂ but not μ₃; det diag(ζ₃,1)=ζ₃∈μ₃ | Group definition discriminates components |
| 4.40 | q=9,k=2, roots 3 and −3 or 3 and 3 | Coefficients 0 or 6; triangle bound 2√9=6 | Correct norm-power bound |
| 4.41 | Rescale nonzero f by 2 | Squared norm and mass density both multiply by 4; normalized total mass remains 1 | Normalization check only; analytic convergence not reproved |
| 4.42 | ψ=1 versus order-two ψ | Determinant component count 1 versus 2; each order-two component has Haar mass 1/2 | Retain ST(π), not always SU₂ |
| 4.43 | k=2, principal prime norm 9 | Coefficient rank 1, eigenvalue bound 6; dropping parabolic kernel admits different Eisenstein spectrum | Retain parabolic/principal conditions |
| 5.1 | SO₃ versus Sp₂ | Standard dual dimensions 2 versus 3; pole types exterior versus symmetric | Retain dual-group dimension and total-centre constraint |
| 5.2 | GL₁ L-map (z,w)↦(z,1) | Projection becomes 1 instead of w; identity map keeps w | Non-equivariant map excluded; conjectural status retained |
| 5.3 | GL₂ roots q¹ᐟ²,q⁻¹ᐟ² | Same semisimple roots, two possible N ranks 0,1 | Semisimple assignment alone cannot be full LLC |
| 5.4 | One symplectic GL₂ block | Total dimension 2, target SO₃; repeating same block gives multiplicity 2 and fails distinctness | Retain discrete generic parameter hypothesis |
| 5.5 | Two distinct symplectic blocks of rank 2 | Total rank 4, target Mp₄; two distinct labels pass multiplicity-free test, repeated label has multiplicity 2 | Retain square-integrable descent domain |
| 5.6 | Character χ versus χ₁⊕χ₂ | Ranks 1 and 2; latter has two invariant character lines and isobaric 1+1 match | Irreducibility/cuspidality distinction retained |
| 5.7 | GL₁ modification and ℙ¹ Satake fibre | Degree 0→1; H⁰,H² ranks 1,1 with twists 0,−1, respectively | Neutral stratum alone loses degree 1 |
| 5.8 | B=k[x,y]; finite group of order p≠ℓ | H¹(L∨)=0, HH² includes ∂x∧∂y≠0; averaging scalar p⁻¹p=1, unavailable when p=ℓ | Retain cotangent-to-Hochschild map, not equality |
| 5.9 | Tensor unit; zero/one free generators | Unit action sends Wψ to Wψ; parameter spaces Ĝ⁰=point and Ĝ¹=Ĝ retain conjugation stabilizers | Adjunction not promoted to equivalence |
| 5.10 | GL₂ with N=0 versus regular rank-one N | Equal semisimple parameter, monodromy ranks 0,1; support data must keep them distinct | Retain actual categorical conjecture |
| 5.11 | q=4, proposed abs(α)=3/2 | (3/2)²=9/4>√4=2, violating n=2 bound; with abs(α)=1 all powers remain 1<2 | Unbounded powers force unit modulus |
| goodReductionPrimes | E:y²=x³−x+1, bounds 0,1,5,7 | Sets ∅,∅,{3,5},{3,5,7}; Δ=−368 is a unit at 3,5,7; its 2-adic valuation 4 cannot become 0 by a 12-fold discriminant scaling | Correct good-prime controls; R07 |
| frobeniusAngle | Same E, p=5,7 | Counts 8,12; traces −2,−4; angles arccos(−1/√5), arccos(−2/√7); denominator 2√p>0 | R07 adds these discriminating Checks |
| satoTate_elliptic | Empty finite prefix, f=1 | Lean prefix value 0/0=0; limiting integral 1; a finite prefix does not change the limit | No total-division defect |

The finite point counts and sign-kernel enumerations were independently recomputed in scratch code. The Hodge, determinant, dimension, slope, gamma-sign, parity, pole-order and normalization calculations in the table were recomputed directly. There are 157 numbered-section controls, two convention/contract controls and three Lean-declaration controls. In particular the table's rank-one or degenerate examples are review witnesses, not proposed additions to Suggested.lean.

## Not verifiable

- **Arthur, The Endoscopic Classification of Representations, cited 2011 manuscript, Theorem 1.5.1 (sample §3.15), and its related classification locators.** The Toronto author URL returned 403; the Clay `library/cw/arthur/pdf/Book.pdf` and `cw/arthur/pdf/Book.pdf` URLs returned 404. A title search through the source service resolved to a book review rather than the book; that is not verification of the theorem. The component-group controls above do not certify the unread theorem or its external hypotheses.
- **Howe, Transcending classical invariant theory**, §3.1's real oscillator input: the source service reached the AMS DOI landing page but did not retrieve the article. **Vogan, Unitarizability of Certain Series of Representations**, §3.20: the DOI resolved to JSTOR without a readable article. No paywall was bypassed.
- **Nakamura**, §4.3's trianguline deformation locators: the cited Tokyo institutional PDF returned HTTP 503. This does not affect the independent ownership witness in R03.
- The source-service requests for **Gulliksen (1974)**, **Harder (1987)**, **Roberts's similitude theta correspondence**, and **Serre (1972)** timed out. Their particular internal proof steps have not been source-certified here. In particular the BCGNT Fourier conventions in the seeded §4.27 sample were read, but the independent Harder proof of the full comparison in §4.26 was not.
- The other successfully fetched references were not all checked theorem-by-theorem. The source certification is the 15-target seeded sample above, supplemented by the explicitly cited proof steps and errata. The row for each numbered section records the control actually tested, not certification of every subsidiary construction, API bullet or deep proof route. The remaining broad supplier labels likewise have not all been converted to declaration-level contracts by this review.

These limitations are recorded rather than turned into invented mathematical findings. The review is finished with **needs changes**, not parked for a source request. The unread-source records were consolidated in the job's `needs-references.toml`; successfully recovered Shahidi, Clozel–Thorne, Muić and Henniart texts were removed from its missing list. No sources manifest was edited.

Legal copies used for the seeded sample and findings: [Pilloni–Stroh](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/Artinfinal.pdf), [BLGGT v4](https://arxiv.org/abs/1010.2561v4), [Caraiani–Newton v3](https://arxiv.org/abs/2301.10509v3), [Qian v1](https://arxiv.org/abs/2104.09761v1), [Shahidi](https://msp.org/pjm/1997/181-3/pjm-v181-n3-p17-s.pdf), [Gan–Ichino v3](https://arxiv.org/abs/1705.10106v3), [Mœglin–Renard v4](https://arxiv.org/abs/1802.04611v4), [Schmidt](https://www.math.ou.edu/~rschmidt/papers/hodge.pdf), [Muić](<https://web.math.pmf.unizg.hr/glasnik/44.2/44(2)-08.pdf>), [Newton–Thorne II v2](https://arxiv.org/abs/2009.07180v2), [ACC+ v2](https://arxiv.org/abs/1812.09999v2), [BCGNT v3](https://arxiv.org/abs/2309.15880v3), [Clozel–Thorne III](https://www.repository.cam.ac.uk/bitstreams/dc59bf8c-174b-4034-9f2f-070974d101af/download), [Newton–Thorne Hilbert v2](https://arxiv.org/abs/2212.03595v2). Line references above are to the source service's numbered extractions, with keys `ps`, `blggt`, `cn`, `qian-2023`, `shahidi`, `gan-ichino`, `mr`, `schmidt`, `muic-2009`, `nt2`, `acc`, `bcgnt-2025`, `ct3`, `nth` respectively.

## Source issues

- **Error** in qian-ordinarity at Lemma 4.2, printed p.20 (lines 919–926): the source says maximal monodromy for a semistable representation implies regular ordinarity without restricting Hodge weights; it should be restricted to the consecutive weight-zero list and explicit character twists supplied by BLGHT Lemma 2.2(2); affects a stated result.
- **Gap** in qian-2023 at Theorem 1.4, printed p.2, and its proof, p.26 (lines 77–90, 1299–1304): the source says its hypotheses suffice to invoke ACC+ Theorem 6.1.2; it should be supplemented by ℓ>n or an argument replacing that theorem's explicit prime bound; affects the proof.
- **Misprint** in wang-icosahedral at Table 1, printed p.5 (line 204): the source says the dimension-six representation has trace +6 at the central element −I; it should be −6, as −I acts by −1 on Sym⁵ of the standard representation; affects a stated result.
- **Misprint** in schmidt at §3.2, printed p.2397 (line 834): the source says the dual group of GSp₄ is GSp₄(ℝ); it should be GSp₄(ℂ), as in the immediately following parameter map; affects nothing.
- **Error** in acc at Corollary 7.1.16, printed p.203 (lines 8210–8217): the source says nonnegative m,m′ give no poles on the stated boundary, including m=m′=0; it should be restricted to m+m′>0, with the zero-zero case retaining the Dedekind-zeta pole at 1; affects a stated result.
- **Misprint** in henniart-2009 at §1.3(2), printed p.34; §2.1(i), p.37; §4.1, p.44 (lines 77, 218, 506): the source says the exterior-square transfer's central character is the square of the original central character; it should be its cube, since det(∧²V)=(det V)³ in dimension four; affects a stated result.
- **Misprint** in henniart-2009 at the final displayed comparison of §3, printed p.43 (lines 453–456): the source says the final twist is the third power of the norm and the resulting parameter is ∧²sᵥ; it should be the inverse third power and ∧²σᵥ, using the immediately preceding definition of σᵥ; affects the proof.
