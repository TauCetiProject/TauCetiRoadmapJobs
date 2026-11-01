# Review of ModularityAndLanglandsExtensions (pull request #1180 at 05a5276)

**Verdict:** needs changes

## R01 (P1) — Own the analytic input to mass equidistribution

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:3061`–3069, §4.41. “Proof route: Marshall Cor. 3 with the Ramanujan bound supplied by [§4.38].”

**Claim:** This route imports a substantial analytic theorem without a library or roadmap owner. The section states the Bianchi consequence, but neither constructs its measure nor owns the conditional mass-equidistribution theorem used to prove it. Its only Needs entry is §4.27, the Fourier normalization. Ramanujan supplies an input to the analytic theorem; it does not supply that theorem. No declared supplier gap covers it.

**Witness:** `marshall` lines 355–364, 380–397 and 424–426: the conditional theorem uses minimal-K-type mass, weak subconvexity and shifted-convolution estimates. Object searches across main, open roadmaps and board packages found no owner for this mass-equidistribution input.

**Repair:** Add an owned construction of the probability measure, with source, target, nonzero/integrability hypotheses, API and three discriminating Checks. Add the general conditional Marshall theorem with its field, level, weight-growth and Ramanujan hypotheses, and explicitly own or import the analytic estimates its route uses. Then derive §4.41 from that target and §4.38, listing both in Needs. Do not turn the known analytic theorem into a new conjectural premise or restrict its general statement to this application.

**Repair test:** For F=ℚ(i), there is one complex weight coordinate, so k→∞ satisfies the required uniform growth (take exponent 1). For f≠0, replacing f by 2f multiplies both the density and its integral by 4; the resulting measure still has mass 1. The zero form has denominator 0 and must be excluded. With the analytic theorem and §4.38 in scope these are the hypotheses of the advertised specialization; Fourier normalization alone does not establish convergence.

## R02 (P2) — Reuse the existing fixed-pairing modular twists

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:1183`–1201 (§2.23), and C-MODULI at line 100. “Construction: descend full symplectic level-q by E[q] and its Weil pairing, then compactify via ModularCurves.”

**Claim:** The section reconstructs the fixed-pairing twist, compactification, field-change dictionary and genus-zero cases already owned by earlier roadmaps. It does not identify those cases with their existing constructions. C-MODULI names PotentialModularityAndCompatibleSystems §§2.8–2.10 and 2.23, which supply point selection/local conditions, not this twist construction.

**Witness:** `TauCetiRoadmap/EllipticCurveModularityImaginaryQuadratic/README.md:557`, §0.2, owns fixed-pairing twists over every number field for p=3,5. `TauCetiRoadmap/ModularCurvesPartII/README.md:1936`, §5.14, owns compactified paired twists over ℚ for N≥3 and their base changes.

**Repair:** Cite these existing objects and their exact scopes in ownership, C-MODULI and Needs. Delete their reconstruction here. Keep the extension to arbitrary-number-field representations at higher primes only to the extent not supplied already, explicitly comparing it with both existing constructions. Keep the E[q] application and its Checks on those shared objects. PotentialModularityAndCompatibleSystems remains the supplier for the point-selection argument.

**Repair test:** For K=ℚ(i), q=3, ρ̄=E[3] and the Weil pairing, the existing §0.2 twist already contains (E,id), has geometric genus zero, and is ℙ¹_K. The proposed section produces exactly that object. At q=7 the full-level geometric genus is 3, whereas X₀(7) has genus 0; the higher-prime extension must retain the full paired moduli problem. This repair preserves the arbitrary-number-field scope rather than replacing it by a rational-field shortcut.

## R03 (P3) — Replace four stale supplier names by their live targets

**Location:** `TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:202`, 842, 877 and 888. The first names “`Nilpotence.inverse_limit`”; line 842 names “`CrystallineCM.integral_local_global_deformation_factorization`” and “`CrystallineCM.fixed_determinant_factorization`”; the remaining name is `CrystallineCM.potentially_barsotti_tate_lifting_qualified`.

**Claim:** These four exact names occur in neither the cited suppliers' README nor their Suggested.lean at the inspected heads. The mathematical targets are present under prose titles, so this is a stale locator, not an additional unowned mathematical prerequisite.

**Witness:** `TauCetiRoadmap/IntegralHeckeAndGaloisDeterminants/README.md:3468`, §5.2, supplies uniform nilpotence. `TauCetiRoadmap/CrystallineLocalGlobalCompatibilityCM/README.md:1446`, 1454 and 1800 supply §§7.5, 7.6 and 9.12 under their section titles.

**Repair:** Cite those sections and their actual titles instead of the four undeclared aliases, preserving their hypotheses. Do not add aliases to the acceptance-test files. On the same four references, this changes four failed exact-name resolutions into four existing section resolutions; the nilpotence exponent must still be uniform, and fixed determinant still requires p∤n.

## Verified sound

The requested head and the entire folder were inspected read-only. The diff outside this folder is empty. The normative repository README and CONTRIBUTING and two main-branch examples (ModularCurves and ClassFieldTheory) were read. All 157 numbered target sections, their Checks, the conventions, contracts, Needs lines and the three Lean declarations were read. No finding calls for changing another roadmap or pushing work to Mathlib. The scope is repairable, so the verdict is not rejected.

**Previous review, finding by finding.** These are assessments of the repaired specification, not claims that the future mathematical proofs have been completed.

| Previous finding | Passage at this head | Assessment |
|---|---|---|
| R01, exceptional arithmetic left as assumptions | TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:1290–1336, §2.30: “These are arithmetic targets for the specified curves”; §2.52:1622: “its only field hypotheses are that F is imaginary quadratic and X₀(15)(F) is finite.” | Repaired. Models, ranks, divisor/residue comparisons and the exceptional modularity comparison are owned targets before the endpoint. The independent point-count witnesses are reproduced below. |
| R02, exclusion of coefficient prime 2 | TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:1589–1604, §2.50: “any prime l”; “These are prerequisites of the all-prime theorem, not assumptions on its residual input.” | Repaired. The 2-adic Dwork projector, lattice, residual-monodromy and comparison work is explicitly included. The trivial rank-two input over ℚ(i) at 2 is no longer excluded. |
| R03, duplicate relative Robba/Herr/triangulation theory | TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:17, 72 and §4.3: “uses these objects for the definite-unitary eigenvariety and its Jacquet and tangent comparisons.” | Repaired. PhiGammaModulesAndIwasawaCohomology §§1.1–1.2, 3.4–3.6, 4.4–4.5 and 7.8 are now the general suppliers. |
| R04, lost coefficient-prime irreducibility premise | TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:146: “only with `ExtremelyRegularIrreducibility n`; §2.43 discharges this premise” | Repaired. The route to §2.43 uses the weaker good-place/away-prime/Iwahori exports. Rank one remains separate; the stronger export retains the premise in higher rank. |
| R05, residue gate | Worker gate: “residue=0” and “OK” | Repaired. The previous 269 matches are absent. |
| R06, undeclared own API-name catalogue | README §4.34 retains `goodReductionPrimes`, `frobeniusAngle` and `satoTate_elliptic`; the other own API entries are prose | Repaired. The three names correspond to the three actual declarations; the gate's undeclared-own-name check passes. R03 concerns different, supplier names. |
| R07, missing definition APIs/Checks | TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:2935–2976, §4.34, including “At bounds 0 and 1” and the minimal-reduction point-count tests | Repaired. Both definitions have prose APIs and at least three discriminating Checks. The counts, bad-prime exclusion and total-function boundary are tested below. |

No repair report marking a finding “not actionable in this package” was present in the supplied previous-review material. None of the findings above re-raises a settled finding.

**Gate, dependency direction and Lean.** The worker's gate at this head reports all scanner counts zero, a successful targeted build and overall OK. The independent dependency command returned exactly:

```text
depcheck: 205 roadmaps, 1486 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. This checks order, not whether a cited analytic prerequisite has an owner: R01 remains despite the graph pass.

Independent `lake env lean` elaboration succeeds with only the theorem's expected sorry warning. There is one `import Mathlib` and one used Tau Ceti module, two real-bodied definitions and one theorem, with no sorry'd data or set_option. A scratch copy with `#check @name` for all three declarations agrees with the supplied elaborated signatures: the theorem retains E.IsElliptic, the geometric non-CM surjectivity hypothesis and continuity on [0,π]. Neither definition silently requires an omitted theorem hypothesis: they are total, and the theorem restricts their use to an elliptic curve's good primes.

The single sorried theorem does not close with `simp`, `rfl` or `infer_instance` in the one-tactic scratch probes. Object searches found no pinned Sato–Tate theorem giving a one-library-lemma proof. No padding declaration was found. There are no arbitrary Prop fields or numerical stand-ins for the missing automorphic carriers.

**Pinned declarations opened.** The pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| File and line at the pin | Content and limitation checked | Computed control |
|---|---|---|
| `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean:299`, 316, 322, 329 | Chosen minimal integral equation, residue curve, good reduction and equivalence with elliptic reduction. This is not reduction of an arbitrary nonminimal equation. | For y²=x³−x+1, Δ=−368; 3,5,7 are good, 23 bad. |
| `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477` | Native constructors are `zero` and `some (x y : R) (h : W.Nonsingular x y)`: infinity is included, singular affine points are excluded. | Seven affine points plus infinity at 5 give 8, not 7. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Hom/Basic.lean:106`; `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Hom/Ring.lean:174`, 182 in that same directory | Pointed curve homomorphisms, zero included, and the geometric endomorphism ring. Surjectivity of ℤ→End(Eℂ) expresses geometric non-CM. | Multiplication by 0 is present; a CM endomorphism outside integer multiplication makes surjectivity false. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/TateModule/Determinant.lean:44`, 52 | Tate determinant equals cyclotomic, retaining separably closed extension, ellipticity and nonzero coefficient characteristic conditions. | Tate determinant ε versus H¹ determinant ε⁻¹; Sym²H¹ determinant ε⁻³. |
| `TauCeti/NumberTheory/ModularForms/Newforms/Satake.lean:91`, 108, 272, 323 | Parameters, sum/product characterization and angle formula. Reality, prime, trivial-nebentypus and bound hypotheses are not automatic Ramanujan. | Roots −1±2i have sum −2 and product 5; cosine −1/√5. |
| `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290` | Reverse characteristic polynomial is det(1−XM), including singular matrices. | diag(2,3) gives 1−5X+6X²; zero 2×2 gives 1. |

**Supplier and ownership audit.** The roadmap service's object searches were combined with main content, the supplied open heads and board-package searches. Searches included paired torsion twists/compactifications, Robba modules/Herr complexes/triangulations, mass equidistribution/Marshall/quantum unique ergodicity, and symmetric powers/Sato–Tate. The three fully qualified Lean names have no competing declaration in the inspected roadmaps. Bianchi Fourier comparison, arithmetic symmetric-power propagation and the endpoint implications remain distinct from the general representation-theoretic suppliers; R02 identifies an actual overlapping construction.

The ten unresolved citation-scan leads were checked rather than treated as ten defects. The own names are present; `CoefficientRobbaModule.etaleEquivalence` resolves through PhiGammaModulesAndIwasawaCohomology; `ResidualImage.IsEnormousCharZero` resolves in ArithmeticGaloisRepresentations §7.10; the Hermite oscillator module exists at the Tau Ceti pin. The four remaining stale aliases are R03.

Specific resolved boundaries include:

| Supplier citation | Location inspected | Scope retained |
|---|---|---|
| PhiGammaModulesAndIwasawaCohomology §§1.2, 4.4–4.5, 7.8 | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:707`, 1677, 1703, 2544 | Finite-projective affinoid realization including nonreduced coefficients; perfect Herr amplitude [0,2]; derived base change; proper birational triangulation with dense-parameter and saturation hypotheses. Smooth-curve modification is the identity. |
| AutomorphicGaloisRepresentationsPartII AG2.6–AG2.7 | `TauCetiRoadmap/AutomorphicGaloisRepresentationsPartII/README.md:2300`, 2453, 3658 | The full polarized coefficient-prime theorem and export retain ExtremelyRegularIrreducibility; §2.43 now discharges it. |
| AutomorphicGaloisRepresentationsPartII AG2.6 and LanglandsParameterStacks LP1 | Same AG2 README, shared geometric targets following line 2468; LP1.5, LP1.10, LP1.13–LP1.15 | Relative curves, bundle/Hecke categories and spectral action are supplied, while this roadmap's §§5.7–5.9 compare and specialize them. Cotangent-to-Hochschild is a map, not an equality for arbitrary coefficients. |
| CrystallineLocalGlobalCompatibilityCM §§7.4–7.6 and 9.12 | `TauCetiRoadmap/CrystallineLocalGlobalCompatibilityCM/README.md:1438`, 1446, 1454, 1800 | Derived integral factorization retains quotient maps, possible nilpotents and p∤n for fixed determinant; qualified potentially Barsotti–Tate lifting retains its residual and seed conditions. |
| IntegralHeckeAndGaloisDeterminants §5.2 | `TauCetiRoadmap/IntegralHeckeAndGaloisDeterminants/README.md:3468` | One uniform nilpotence exponent and separated coefficient quotients, not an exponent depending on the quotient. |
| EllipticCurveModularityImaginaryQuadratic §0.2; ModularCurvesPartII §5.14 | Locations in R02 | Existing paired twists include arbitrary-number-field 3/5 cases and rational-field arbitrary levels, respectively. |
| PotentialModularityAndCompatibleSystems §§2.8–2.10, 2.23 | `TauCetiRoadmap/PotentialModularityAndCompatibleSystems/README.md:714`, 724, 732, 898 | Point-selection and local-field conditions; not the modular-twist construction attributed to this group of sections. |

The remaining layer-level citations were read for scope and order; a layer label is not evidence that every internal proof step is an exported theorem. The three main-branch analytic suppliers inspected through the service (PadicFunctionalAnalysis, CompactOperators and RigidAnalyticGeometry) were also compared byte-for-byte with main and agree. No additional numerical or convention counterexample was established for the remaining layer-level imports. In particular an earlier roadmap's hypothesis is not discharged merely because the source literature proves a stronger result.

**Headline coverage.** The README's end results are Artin modularity/low-rank transfer (§§1.3–1.4, 1.9, 1.11, 1.13–1.15); potential automorphy, compatible systems, irreducibility and imaginary-quadratic modularity (§§2.26, 2.33–2.43, 2.45–2.52); classical classification/multiplicity and genus-two consequences (§§3.12, 3.15–3.19, 3.21–3.32); symmetric powers, purity, Ramanujan and equidistribution (§§4.12–4.15, 4.20–4.24, 4.28–4.43); and generic transfer/descent and the Whittaker/categorical implications (§§5.1, 5.4–5.5, 5.9–5.11). The Langlands frontier and singular-weight expectations remain propositions/conjectures, not asserted unconditional theorems.

The elliptic Sato–Tate headline (§4.34) is stated on native carriers. The module docstring identifies the remaining headline families and the missing compatible-system, automorphic, packet, Weil–Deligne or stack carriers. Classical newforms and their Satake API do not make the general statements statable. No additional statable headline was established as missing. The two retained definitions serve that one deep theorem.

**Seeded source sample: 15 of 15 targets had readable legal texts.** No additional locator was explicitly flagged unverified in this README. The statements and hypotheses at the following locators were compared with the actual text; this does not assert that their proofs have been formalized.

| Target | Source text and locator inspected | Comparison |
|---|---|---|
| 1.1 | `nt1` lines 1634–1639 and 1939–1942, accessible refinements, p.34, Definition 2.23, p.40 | Accessibility and n-regularity are separate; the powers through n−1 are required. |
| 1.12 | `nth` lines 116–118, Conjecture B, p.3 | SP_n is the rank-n symmetric-power assertion over totally real fields; SP₁/SP₂ are the bases. |
| 1.14 | `kim` lines 34–37 and 67–75, Theorems A/B, pp.139–140; `henniart-2009` lines 45–66, §1.3, p.34; `kim-shahidi-cuspidality` lines 331–341, Theorem 3.3.7, p.185 | Kim's original exterior-square exceptional places and Henniart's completion are distinguished; symmetric-fourth degree and cuspidality exceptions are retained. `shahidi-real` lines 637–647 and 1008–1012, Theorems 3.1/3.13, pp.990–991/1003, retains generic admissible Banach hypotheses at infinity. |
| 2.8 | `cg` lines 2936–2959, Theorem 5.16, pp.64–65 | Conditional on the specified conjecture and all eight hypotheses; the cohomological dual conversion is retained. |
| 2.34 | `blggt` lines 2769–2816, Corollary 4.5.3, pp.60–61, v4 | Prescribed potentially diagonalizable local lifts, polarization, maximal constituent dimension and avoidance hypotheses retained. |
| 2.39 | `acc` lines 8302–8319, Corollary 7.2.4, pp.205–206, v2 | Positive symmetric powers of non-CM E/ℚ; common cohomological convention and good-place conclusion agree. |
| 2.40 | `blggt` lines 3453–3473, Corollary 5.4.3, pp.74–75, v4 | Purity, strict compatibility, meromorphic continuation, dual functional equation and odd-rank conjugation constraint agree. |
| 2.45 | `blggt` lines 3475–3505, Corollary 5.4.4, pp.75–76, v4 | Non-CM inputs and distinct subset sums are substantive; regularity alone does not replace the latter. |
| 2.51 | `qian-2023` lines 77–90 and 1299–1304, Theorem 1.4, p.2, proof p.26; `acc` lines 5390–5420, Theorem 6.1.2, pp.133–134 | README retains ℓ>n, needed by the invoked lifting theorem but missing from Qian's printed endpoint. |
| 3.12 | `mok` lines 1330–1343, Theorem 2.5.1, p.32; 1451–1466, Theorem 2.5.2, p.35 | Quasi-split unitary classification, rank-dependent sign and packet-multiset qualifications agree; no general multiplicity-free claim is substituted. |
| 4.17 | `dmw` lines 55–60 and 124–225, Introduction p.1312 and §§2–3 pp.1314–1317; `martin-watkins` lines 341–353, §4.2, PDF p.7 | Finite factors use inertia and monodromy, conductor is included, gamma factors distinguish the middle real sign. The roadmap uses the corrected unitary/motivic shift. |
| 4.20 | `nt1` lines 4435–4443, Theorem 8.1, p.91, and introductory Theorem B/Corollary C | Non-CM and nonzero Jacquet module at each finite place retained; semistable elliptic positive powers fit the corollary. |
| 4.21 | `bcgnt-2025` lines 2954–2977, Theorem 6.2.1, pp.59–60, v3 | Determinant ε⁻ᵐ and HT={0,m}, strong irreducibility, purity and the separate m=1 route are retained. |
| 4.33 | `bcgnt-2025` lines 3412–3432, Theorem 7.2.1, p.69, v3 | Strongly irreducible and induced rank-two branches both present; the latter permits a noncuspidal isobaric answer. |
| 4.42 | `bcgnt-2025` lines 3433–3485, Theorem 7.2.3, pp.69–70, v3 | Parallel weight, non-CM and the full determinant-component Sato–Tate group retained. README correctly excludes ramified places, correcting the source's reversed word. |

Here nt1 denotes the cited arXiv v3 of Newton–Thorne I and nth the cited v2 of Newton–Thorne on Hilbert modular forms; the page numbers are those versions, not silently substituted published pages.

The central elliptic Sato–Tate route was additionally compared with `nt2` lines 34–50, Theorem A/Corollary B, pp.1–2, and `kedlaya` lines 5590–5626, §§24.4–24.5, pp.134–135. R01 uses the published Marshall text, not an earlier numbering of its preprint. Source issues found in these comparisons are listed below.

**Adversarial calculations.** The table records a computed control for every numbered section, plus conventions, the supplier premise, the three retained Lean declarations and R03. It covers all sampled targets, all headline groups and every finding. The controls test the stated part of each target; a rank or determinant computation is not a proof of an automorphy or equidistribution theorem. “Retain” means this test found no correction, not that every ancillary source proof has been certified.


| Statement | Instance tried | Computed values on the two sides / negative control | Result; change |
|---|---|---|---|
| Conventions; C-GALOIS | Rank two, geometric Frobenius eigenvalues α,β | det(1−FT)=1−(α+β)T+αβT²; replacing F by F⁻¹ gives inverse roots. H¹ determinant ε⁻¹, Tate-module determinant ε | Retain dual/Frobenius distinction |
| Supplier import, TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:146 | n=1 versus n=2, non-Iwahori coefficient place | Extra premise count 0 at rank 1, 1 at rank 2; README now retains it and §2.43 discharges it | Previous R04 repaired |
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
| 1.9 | Odd S₃ standard Artin representation | c has roots 1,−1, trace 0 and determinant −1; even trivial rank-two representation has determinant +1 | Oddness distinguishes the cases |
| 1.10 | Symⁿ⁻¹, n=1,2,3 | Ranks 1,2,3; roots 1; (α,β); (α²,αβ,β²) | Retain rank-one and noncuspidal branches |
| 1.11 | V⊗V for rank-two V | Rank 4=3+1; Sym²V⊕det V. A self-pair cannot be a cuspidal rank-four transfer | Cuspidality exception retained |
| 1.12 | SP₁ and SP₂ | Sym⁰ rank 1 trivial; Sym¹ rank 2 identity | Valid induction bases; no Lean padding |
| 1.13 | V⊗Sym²V | Rank 6=4+2; Sym³V⊕(V⊗det V) | Retain low-rank decomposition and cusp exceptions |
| 1.14 | Scalar aI₄, a=2 | ∧² has six roots 4, determinant 4⁶=4096; (det 2I₄)³=16³=4096, square gives 256 | README's exponent 3 is correct |
| 1.15 | n=1,…,5; HT(V)={0,1} | Symⁿ⁻¹ ranks 1,…,5; labels {0,…,n−1} have n distinct values | Retain regular non-CM base range |
| 2.1 | ℓ=5, labels {0,3} versus {0,4} | Widths 3,4; Fontaine–Laffaille criterion bound ℓ−2=3 | First passes criterion; second not implied |
| 2.2 | ℓ=2 versus 3 | Odd-prime premise false,true; semistable Tate extension has rank N=1, crystalline rank N=0 | Retain this source theorem’s hypotheses; distinct from the all-prime endpoint |
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
| 2.23 | K=ℚ(i), q=3; q=7 | At 3, both existing and proposed paired twists have point (E,id), genus 0 and are ℙ¹; at 7 full-level genus 3 versus cyclic-level genus 0 | R02: import the covered constructions, compare the extension |
| 2.24 | m=2, n=1 | HT={0,2}; requested Sym⁰ has rank 1, determinant 1; m=1 is outside this particular switch | Retain sufficient-condition formulation |
| 2.25 | n=1, d=1, ℓ=5 | Threshold 2(d+1)=4, 5≥4; one weight is distinct; ℓ=3 fails bound | Retain full local lift premises |
| 2.26 | Two systems, same avoidance extension A/F | Desired intersections F′∩A=F for both; choosing F′=A gives intersection A≠F when [A:F]=2 | Common disjointness is substantive |
| 2.27 | n=2 and empty auxiliary prime set | Multiplier ε̄⁻¹, weight list {0,1}; number of prescribed unramified primes 0 | Retain later-extension avoidance condition |
| 2.28 | n=1, p=5, q=11 | q mod p=1; rank 2 regular N has N²=0≠N; q=7 gives residue 2 and fails | Retain Steinberg congruence/local lift premises |
| 2.29 | A[5] and its dual at cyclotomic value 2 | Determinants 2 and 3 mod 5; product 1 | Supplier's Weil-pairing convention matches |
| 2.30 | Exceptional √−11 curve at (37,a=14),(89,a=37) | #E=42,75; traces −4,15; mod-5 pairs (tr,det)=(1,2),(0,4), latter roots ±1 | Counts pass; arithmetic inputs are now owned targets, previous R01 repaired |
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
| 2.43 | j=1 versus j=2 constituents | Self-pole orders −j=−1,−2; cuspidal pole order −1 forces j=1 | Weaker comparison inputs precede discharge of the full-export premise; previous R04 repaired |
| 2.44 | Symⁿ⁻¹ H, n=2,3 | Rank 2,3; determinant exponents −1,−3; extension killing residual image has image size 1 | Retain residual-field avoidance |
| 2.45 | K={1,2,4} versus {1,2,3} | Eight subset sums 0,…,7 in first; second has 3=1+2, so fewer than 8 distinct | Retain subset-sum condition |
| 2.46 | Rank-one system versus rank-two direct sum | Decomposition ranks 1 and 1+1=2; repeated same character gives repeated labels and fails regularity | Distinct from the supplier’s polarized-constituent lemma; retain |
| 2.47 | Rank-two local extension versus semisimplification | N rank 1 versus 0; identical diagonal constituents, so equality after ss cannot recover N | Retain coefficient-prime geometric argument |
| 2.48 | GSp₂=GL₂ | Standard rank 2, alternating multiplier=det; wedge² rank 1 carries that same multiplier | Retain chosen geometric lift and potential automorphy |
| 2.49 | Pure rank-one Frobenius root α, weight w | abs(α)²=qʷ; dual has abs(α⁻¹)²=q⁻ʷ; product 1 | Retain dual in functional equation |
| 2.50 | F=ℚ(i), n=2, ℓ=2, r̄=1⊕1; odd Dwork N | Rank 2, image size 1, semisimplicity true; both source and README allow prime 2; projector denominator N^(N−2) is odd, hence a 2-adic unit | Previous R02 repaired; additional 2-adic comparison is an owned prerequisite |
| 2.51 | n=2, ℓ=2 versus 3 | ℓ>n is false,true; ACC+ lifting theorem requires true | README corrects source proof gap; retain |
| 2.52 | F=ℚ(i), exceptional E₀; √−11 arithmetic controls | Extra arithmetic hypotheses at the endpoint: 0; §2.30 now supplies them as targets. Independent traces −4,15 | Previous R01 repaired; finiteness of X₀(15)(F) remains the stated field premise |
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
| 3.15 | Tempered component group C₂ | Component character count 2; p-adic bijection gives 2 labels, archimedean injection only ≤2 | Scope control; nonseeded source not independently certified this round |
| 3.16 | Central sign group C₂ | η(z)=+1 and −1 select disjoint singleton character sets; imposing both gives empty set | Retain inner-form central character |
| 3.17 | Two local C₂ characters | Global products (+1)(+1)=+1 and (+1)(−1)=−1 | Matching εψ is a genuine global constraint; source-certification limitation below |
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
| 3.29 | Wall (p,0), p=1 | Minimal K-types (2,2),(2,0); 4 limits on restriction become 2 full-group members; p=0 excluded | Full-group versus restriction control; retain |
| 3.30 | p=5, t=4 versus t=1 | ε̄⁻²ᵗ=ε̄⁻⁸=1; at ε̄=2, ε̄⁻²=4≠1 | Retain divisibility on weight shift |
| 3.31 | General-type and Yoshida transfers | Rank 4 with one constituent versus 2+2; second yields reducible characteristic-zero realization | Residual irreducibility selects general-type branch |
| 3.32 | μ=(3,3;0), λ=(2,1;−6) | Central weights +6,−6 cancel; spin exponents −3/2,−5/2,−7/2,−9/2 sum −12=2(−6) | Sign normalization agrees |
| 4.1 | Scalar rank-two subgroup; rank one | Two repeated eigenvalues preclude regularity in rank 2; rank-one projector=1; c(aI)=−aI | Retain full adjoint action, including at p=2 |
| 4.2 | n=1 or ℓ∣n | n>1 fails at 1; n=3,ℓ=3 has n mod ℓ=0 | Retain excluded ranks and coprimality |
| 4.3 | φ=2,γ=3; rank-one trivial family | d⁰(1)=(1,2), d¹d⁰=2−2=0; Euler 1−2+0=−1. E[ε]/ε² is nonreduced but allowed by the supplier | Conventions pass; shared theory now imported, previous R03 repaired |
| 4.4 | n=1, q=9 | Level-raising ratio congruence becomes ξ₁/ξ₂≡9; target rank 2n=2, not characteristic-zero equality with ξ₁⊞ξ₂ | Retain residual comparison |
| 4.5 | n=3, refinement roots 1,−1 | Sym² roots 1,−1,1; collision count 2 distinct instead of 3 | n-regular locus essential |
| 4.6 | 2-adic boundary weight parameter | For v₂(w)=1/2, the j-th slope j·v₂(w) gives 1/2,1,3/2 for j=1,2,3 | Boundary proportionality control; not a global slope claim |
| 4.7 | A seed and another point on connected propagation chain | Fixed symmetric-power rank n on both; taking n=2 gives original rank 2 at each endpoint | Preserve n and component hypotheses |
| 4.8 | Sym² of quadratic induction | Rank 3=2+1; initial theta-series power is noncuspidal before raising | Steinberg/raising step cannot be omitted |
| 4.9 | Seed at n=3 | Sym² rank 3 and HT {0,k−1,2(k−1)}; k≥2 makes both gaps k−1≥1 | Regularity control; retain |
| 4.10 | α/β=−1 and n=3 | i=1 gives −1≠1, i=2 gives 1=1 | A congruent form needs the n-regular improvement |
| 4.11 | p=2,a=3,n=4 | pᵃ=8>max(5,2n−1)=7; p>n is false | Size condition differs from a prime lower bound; retain other hypotheses |
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
| 4.36 | n=2,3; quadratic induction as negative control | Sym¹ rank 2; Sym² rank 3; induced input decomposes 2+1 and fails non-induction premise | All-place cuspidal assertion retains the exclusion |
| 4.37 | Degree 0 versus degree 1 | L(Sym⁰π)=ζF, pole order −1 at 1; positive standard cuspidal degree avoids that pole | Degree-zero exclusion retained |
| 4.38 | k=2,q=9 | recᵀ eigenvalue modulus 9¹ᐟ²=3; unitary normalized modulus 1 | Retain normalization twist |
| 4.39 | Determinant image μ₂ versus μ₃ | det diag(−1,1)=−1∈μ₂ but not μ₃; det diag(ζ₃,1)=ζ₃∈μ₃ | Group definition discriminates components |
| 4.40 | q=9,k=2, roots 3 and −3 or 3 and 3 | Coefficients 0 or 6; triangle bound 2√9=6 | Correct norm-power bound |
| 4.41 | F=ℚ(i), k→∞; f and 2f; zero form | One weight coordinate gives k≥k¹; rescaling density and norm by 4 gives mass 4/4=1; zero form gives denominator 0 | R01: normalization and nonzero input must be defined; analytic convergence needs an owner |
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
| goodReductionPrimes | E:y²=x³−x+1, bounds 0,1,5,7 | Sets ∅,∅,{3,5},{3,5,7}; Δ=−368. Scaling x by 25 and y by 125 multiplies Δ by 5¹² but leaves minimal good primes unchanged | APIs and discriminating Checks now present; previous R07 repaired |
| frobeniusAngle | Same E, p=5,7 | Counts 8,12; traces −2,−4; angles arccos(−1/√5), arccos(−2/√7); roots −1+2i, −2+i√3 have squared moduli 5,7 | Positive denominators and Checks agree; previous R07 repaired |
| satoTate_elliptic | Empty finite prefix, f=1 | Lean prefix value 0/0=0; limiting integral 1; a finite prefix does not change the limit | No total-division defect |
| R03 supplier locators | Four exact aliases versus their named sections | 0 of 4 aliases resolve; 4 of 4 mathematical section targets exist | Replace stale names with live section titles |

The finite point counts, sign-kernel enumerations and subset-sum tests were independently recomputed in scratch code. The determinant, Hodge, parity, dimension and normalization calculations were recomputed directly. The table has 157 numbered-section controls, two convention/contract controls, three Lean-declaration controls and one stale-citation control: 163 rows. These boundary examples belong in the review and README, not as padding in Suggested.lean.

## Not verifiable

- No seeded target remains unread for lack of a legal source. Initial retrieval failures for DMW, Marshall, Kedlaya and Kim–Shahidi were resolved through legal publisher/author copies; their obsolete missing-source requests were cleared. No repository source manifest was edited.
- Source certification in this round is the 15-target seeded sample, the additional elliptic Sato–Tate route and the explicit proof steps/errata cited above. The nonseeded Arthur, inner-form, theta and categorical classification proof locators were not all independently source-certified in this round. Their computed controls are not a claim to have read every ancillary reference.
- The dependency graph and the supplier sections listed above were checked, but the remaining broad layer-level imports were not all reduced to individual formal declarations. No claim of a complete formal proof-dependency certification is made. R01 identifies one concrete missing ownership boundary; a passing gate cannot certify the other deep proof routes.

These limits do not suspend the review: the concrete blocking findings warrant needs changes. The folder was not modified, and no comment, approval or merge was sent.

## Source issues

- **Gap** in qian-2023 at Theorem 1.4, p.2, and its proof, p.26 (lines 77–90, 1299–1304): the source says its hypotheses permit invoking ACC+ Theorem 6.1.2; it should be supplemented by ℓ>n or an argument replacing that theorem's prime bound; affects the proof.
- **Misprint** in henniart-2009 at §1.3(2), p.34; §2.1(i), p.37; §4.1, p.44 (lines 77, 218, 506): the source says the exterior-square transfer has the square of the original central character; it should be the cube, since det(∧²V)=(det V)³ for dimension four; affects a stated result.
- **Misprint** in henniart-2009 at the final displayed comparison of §3, p.43 (lines 453–456): the source says the final norm twist has exponent three and the resulting parameter is ∧²sᵥ; it should be exponent minus three and ∧²σᵥ, with σᵥ as defined immediately before; affects the proof.
- **Misprint** in dmw at the Introduction, p.1312 (line 39): the source says the motivic symmetric-power function shifted by minus n/2 is the unitary function; it should be shifted by plus n/2; affects a stated result.
- **Misprint** in bcgnt-2025 at Theorem 7.2.3, p.70 (line 3462): the source says S is the set of unramified places while indexing Frobenius classes outside S; it should be the set of ramified places; affects a stated result.
- **Misprint** in kedlaya at Conjecture 24.3, p.134 (lines 5582–5584): the source says a bound independent of n on indices whose norm is at most c; it should be a uniform bound on multiplicity at each norm n; affects a stated result.
- **Misprint** in kedlaya at §24.4, p.134 (lines 5595–5597): the source says an elliptic curve with only integer geometric endomorphisms has complex multiplication; it should be without complex multiplication; affects a stated result.
- **Misprint** in kedlaya at Theorem 24.6, p.135 (lines 5620–5624): the source says the Euler-denominator polynomial has the Frobenius eigenvalue monomials as roots; it should be their reciprocals, with constant coefficient one; affects a stated result.
- **Error** in kedlaya at Theorem 24.6, final parenthesis, p.135 (lines 5625–5626): the source says convergence beyond 3/2 makes the required holomorphy and nonvanishing on the closed boundary automatic; it should be convergence beyond 1+n/2, with boundary nonvanishing supplied by a separate theorem; affects the proof.
- **Gap** in marshall at §3, pp.1057–1059 (lines 355–358, 424–433): the source says the cited theta-lifting results establish Ramanujan for all the Bianchi forms used; it should be retained as a hypothesis of the analytic theorem; BCGNT now supplies that hypothesis; affects the proof; corrected in print at Erratum, JAMS 25 (2012), pp.615–616.

The determinant correction has the concrete witness 4⁶=4096=16³, whereas 16²=256. For the Euler-root correction, E at 5 gives P(T)=1+2T+5T² with roots (−1±2i)/5, not −1±2i. For n=2 the motivic boundary is 2; evaluating the correct shift at the unitary boundary s=1 gives 1+2/2=2, whereas the reversed shift gives 0. These source errors are not copied into the roadmap targets.


For the multiplicity typo, c=1 and two indices of norm 2 give zero indices of norm at most c, but multiplicity 2 at norm n=2. The roadmap uses actual norm ordering and bounded multiplicity. Marshall’s correction and the modern discharge of Ramanujan are explicitly discussed in [BCGNT §1.3](https://arxiv.org/abs/2309.15880v3); its publication locator also appears in [Marshall’s bibliography](https://people.math.wisc.edu/~smarshall3/CV.pdf).
