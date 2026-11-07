# PORT-TopologicalMirrorSymmetryForHitchinSystems

Branch `roadmap/topological-mirror-symmetry-for-hitchin-systems`, created from main `a0ad405`; head commit `cceef7d` ("TopologicalMirrorSymmetryForHitchinSystems: roadmap (README, Suggested.lean, metadata)"). Three files added under `TauCetiRoadmap/TopologicalMirrorSymmetryForHitchinSystems/` (README.md, Suggested.lean, metadata.toml); nothing outside the folder changed (`git diff --stat a0ad405 HEAD`: 3 files, 1193 insertions).

A previous run of this job had left the same branch at `79d9ade` with its report unsubmitted. This run deleted that branch, recreated it from `a0ad405`, restored the three files from the earlier commit as a draft, and re-verified every claim below against the current index (458 open pull requests, 2026-11-05T05:39:44Z), the pins and the merge order before committing afresh.

## Build

```text
✔ [8954/8954] Built TauCetiRoadmap.TopologicalMirrorSymmetryForHitchinSystems.Suggested (3.9s)
Build completed successfully (8954 jobs).
```

Warning count: 0. The file declares nothing (no headline theorem is statable at the pins, see below), so there is no `sorry` warning and no other diagnostic. Pins: Mathlib `f6090c7`, Tau Ceti `358314d` (manifest and the package checkouts agree).

## Gate

```text
gate TopologicalMirrorSymmetryForHitchinSystems: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

Run after the commit with `--order` pointing at the board's merge-order file (the same gate before the commit reported only `dirty=3`, the three added files). Dependency direction, exact output:

```text
depcheck: 236 roadmaps, 2088 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The roadmap is line 345 of 377 in the merge order; every supplier in the order precedes it (AlgebraicModuliForArithmeticGeometry 32, ComplexComparisonPartII 39, AbelianSchemesAndArithmeticModuli 41, ArithmeticGaloisRepresentations 42, ArithmeticGaloisDuality 43, MotivesAndAlgebraicCycles 71, DeligneWeightsAndPurity 77, EtaleDualityAndPerverseSheaves 95, EndoscopicTransferAndUnitaryTraceComparison 137, CohomologyComparisons 167, MixedHodgeModulesAndIrregularHodgeTheory 250, LogicAndDefinabilityInNumberTheory 304, CountingBundlesAndHallAlgebrasOfCurves 341).

## Draft pull request body

Topological mirror symmetry for Hitchin systems: the Hausel–Thaddeus conjecture by p-adic integration. The roadmap builds character-twisted E-polynomials and weighted point counts with their fractional Lefschetz roots, the gerbe-twisted stringy invariants of smooth finite quotient stacks, and the Katz comparison that lets twisted stringy counts over finite fields determine complex stringy E-polynomials; the arithmetic gerbes, relative splitting stacks and principal splitting torsors (extension of the finite splitting torsor along Pic[r]→Picτ), with the evaluation of an arithmetic gerbe on an abelian variety over a local field through the normalized local Tate pairing; abstract dual Hitchin systems with compatible gauge forms, the identification of twisted counts with orbifold integrals, and the fibrewise and complex mirror equalities for dual pairs; the relative stable trace-free fixed-determinant SLn Higgs moduli for a general twist D, their PGLn quotient by the n-torsion of the Jacobian, the spectral Prym groups and their duality; coprime-degree independence of counts, Betti and Hodge numbers, the powered Hausel–Thaddeus μn-gerbes with their arithmetic descent and local Brauer splitting, and the separate genus-zero and canonical genus-one calculations that make the full genus range part of the theorem. The end theorems are the SLn/PGLn topological mirror symmetry E(M_SL^L)=E_st(M_PGL^e,α^d) over ℂ and its finite-field count version, the canonical-twist stringy Hodge-number comparison, the character-isotypic trace identity, and, as a distinct target, the ungraded fibrewise Galois isomorphism. Thirteen named supplier contracts record the extensions this roadmap assumes of its suppliers (equivariant scissor ring, geometric compact-support mixed Hodge realization, generic orbifold transgression and finite-quotient stack trace, relative Higgs moduli and spectral Picard families, relative gerbe splitting representability, smooth-stack Hartogs, equal-characteristic abelian local duality, fractional equivariant Hodge–Tate, represented relative Picard duality, Higgs sector purity, unitary splittings in families).

`Suggested.lean` declares nothing: no headline theorem is statable at the pins (no Higgs or Hitchin moduli, gerbes, stringy invariants, Prym groups, lisse sheaves, étale fundamental group, scheme Brauer groups or scissor ring exist in Mathlib `f6090c7` or Tau Ceti `358314d`), and the module docstring names each headline with the carrier it lacks.

## Dependencies that are still pull requests or board designs

Open pull requests: AlgebraicModuliForArithmeticGeometry, AbelianSchemesAndArithmeticModuli, ArithmeticGaloisDuality, ArithmeticGaloisRepresentations, ComplexComparisonPartII, MotivesAndAlgebraicCycles, DeligneWeightsAndPurity, EtaleDualityAndPerverseSheaves, EndoscopicTransferAndUnitaryTraceComparison, CohomologyComparisons, CountingBundlesAndHallAlgebrasOfCurves.

Board-only (in the merge order, no open pull request): MixedHodgeModulesAndIrregularHodgeTheory (board design `packages/MixedHodgeModulesAndIrregularHodgeTheory/design/README.md`; the cited labels H.0/mixed-hodge-module, H.0/abelian-strictness, H.1/operations, H.1/weight-bounds, P/pair-cohomology, P/pair-kunneth-duality are its section headings, lines 619, 653, 683, 717, 1204, 1257) and LogicAndDefinabilityInNumberTheory (board package; see Unresolved).

On main: AlgebraicVectorBundles (L0B, L0C), JacobianChallenge (Layers A–E), SchemeAndStackFoundations (§§0.6, 1.15–1.16, 1.20–1.23, 2.11, 2.15, 2.22, 3.4–3.7, 4.6; `brauer_henselian_local` in §2.22), EtaleCohomologyFoundations (F.2.1, F.2.4–F.2.7, F.4.2–F.4.6, F.5–F.7), ClassFieldTheory (Layers 5–7), ReductiveGroupsPartII (RG2.3.7), Completed/HodgeStructures (Core definitions, L2, L3).

## What moved from the Lean to the README

Nothing. The package's `Suggested.lean` already satisfied the acceptance-test rule (one module docstring, namespace, no declaration, no `set_option`, no sorry'd data); the README already carried every target, API list and Check. The only change to the Lean file is the header: `import Mathlib` became `public import Mathlib` under the existing `module` line, the form of `TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main, so that the Lake module-system notice does not fire. The brief's mechanical `#check @name` comparison had zero candidates (no declaration), so no scratch file was elaborated and nothing changed; the worker's `signatures.md` says the same ("no named declaration").

## Supplier replacements and duplication removals

None. All thirteen named Mathlib and Tau Ceti declarations were opened at the pins in this run: `sum_hom_units_eq_zero` (`Mathlib/RingTheory/IntegralDomain.lean:186`), `Matrix.trace` (`Mathlib/LinearAlgebra/Matrix/Trace.lean:43`), `AddMonoidAlgebra` (`Mathlib/Algebra/MonoidAlgebra/Defs.lean`); `TauCeti.Hodge.MixedHodgeStructure` (`TauCeti/Geometry/Hodge/Mixed/Basic.lean:72`), `TauCeti.Hodge.tate_hodgeNumber` (`TauCeti/Geometry/Hodge/Tate/Basic.lean:160`, the Hodge number of `tate m` is 1 exactly at `p = -m`), `TauCeti.AlgebraicGeometry.InvertibleSheaf` (`TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:112`), `LineBundleClass` (`TauCeti/AlgebraicGeometry/LineBundle/Class.lean:50`) and `LineBundleClass.inv_mk` (line 104), `AbelianVariety` (`TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95`: group object over `Spec K`, proper, geometrically integral, as the README says), `rigidifiedPicardFunctor` (`TauCeti/AlgebraicGeometry/PicardFunctor/Rigidified.lean:67`), `rigidifiedPicardPoint` (`TauCeti/AlgebraicGeometry/PicardFunctor/Point.lean:40`), `CommGroup.sum_inv_mul_monoidHom_apply_eq_ite` (`TauCeti/GroupTheory/FiniteAbelian/CharacterOrthogonality.lean:182`: the sum over characters of `(χ σ)⁻¹ · χ g` is `Nat.card G` at `g = σ` and 0 otherwise, as the README states), `TauCeti.subsingleton_brauerGroup_of_finite` (`TauCeti/Algebra/BrauerGroup/Trivial.lean:247`, hypothesis `[Finite K]`). The README restates none of them.

Duplication sweep by object through the roadmap index (main `a0ad405` and the 458 open heads, which include every sibling checkout the brief lists at the heads the index carries) for Hitchin, Higgs bundle, stringy, Hausel, topological mirror, Prym, p-adic integration, E-polynomial, Katz, splitting torsor, Chen–Ruan/inertia stack, Hodge–Deligne: no competing owner. The hits are the consumed suppliers (EndoscopicTransferAndUnitaryTraceComparison §§3.6–3.16 Hitchin stacks; CountingBundlesAndHallAlgebrasOfCurves §§7.1, 7.3, 9.1 canonical GL and the Hausel–Letellier–Rodriguez-Villegas reference; ArithmeticGaloisDuality D7.6, which cites GWZ20 for the gerbe-evaluation square this roadmap consumes), MordellLawrenceVenkatesh (reduced relative Pryms of Aff(q)-covers, a different object), PositiveScalarCurvature §6.2 (Hitchin spheres, unrelated), EtaleMassFormula (a bibliographic mention of stringy invariants of quotient singularities), main's Orbifolds (a reference to Adem–Leida–Ruan), and the "E-polynomial" hits, which are all "Weil polynomial", "bare-polynomial" or "residue-polynomial" substrings. The pull requests new since the previous run of this job (#1803–#1813: CircleMethodThreePrimes, KatoEulerSystems, RankOneConverse, EtaleHomotopyTypes, two dependency-cut revisions of main roadmaps, SheafConvolutionOnAbelianVarieties, EllipticModularityEffectiveComparisons, LocalAnabelianGeometry, FieldOfNorms, HigherLocalClassFieldTheory) match none of the objects. The sibling checkouts were not opened file by file; their heads are the ones the index carries.

## Editorial changes made in the port

- The thirteen supplier contracts carried process tags of the form `(gap:slug)`, which no roadmap on main uses. Each "What X must provide (gap:slug):" paragraph now reads "What X must provide (the <name> contract):", and the 106 tag occurrences in Needs lines and layer Dependencies were removed, leaving the contract names the text already used (as the SheafConvolutionOnAbelianVarieties port renders its contracts). Mapping from the review's `conditional_gaps` slugs: unitary-splitting-families → the rank-one unitary-family contract; geometric-compact-mhs → the geometric compact-support mixed-Hodge contract; generic-orbifold-transgression → the generic orbifold/transgression contract; relative-hitchin-picard → the relative spectral Picard contract; equivariant-grothendieck → the equivariant scissor contract; fractional-equivariant-hodge-tate → the fractional equivariant Hodge–Tate contract; equal-characteristic-abelian-duality → the equal-characteristic local-duality contract; relative-picard-norm-duality → the represented relative Picard contract; relative-higgs-git-properness → the relative Higgs/GIT/properness contract; smooth-stack-hartogs → the smooth-stack Hartogs contract; relative-gerbe-splitting-representability → the relative splitting-stack contract; higgs-sector-purity → the fixed-determinant and twisted-sector purity contract; tame-stack-trace (the review's slug) = finite-quotient-stack-trace (the package's slug) → the finite-quotient trace contract.
- The four non-blocking notes of the accepted review (A1.3/A1.5 typography, the definition of Br(X)_K, the "corrected"/printed-text sentences, the "Lemma 6.7" supplier) were already applied in the package head; verified by grep (no `A¹.`, no "corrected", no "Lemma 6.7" as a supplier; Br(X)_K defined at its first use in §1.4).
- `metadata.toml`: `topic = "math.AG"` (the package had `math.CO`; the folders on main carry a single `topic` line, compared with `TauCetiRoadmap/CoboundaryExpansion/metadata.toml`).
- No other prose change. Policy greps (LaTeX delimiters, process words, pull-request numbers, machine paths, "optional"/"deferred") hit nothing; the one "removed" is the mathematical use in §3.2's Check.

## Reviewer pass

Read the whole README (1134 lines) as an upstream reviewer. Nothing was found wrong, vacuous or unsourced; every theorem subsection carries hypotheses, a locator and a Needs line, every construction its API and at least three Checks. Items checked hardest, all confirmed by the computations in the table below: the norm correction M=D^(−n(n−1)/2) and its sign through §§3.6, 3.10, 4.2, 4.6 and the Layer 3 and 4 examples; the §4.8 genus-one sector sums over constant and nonconstant Γ and the Atiyah decomposition End(E)≃⊕N; the §1.1 Galois-cohomology orders over ℂ, 𝔽₅ (e=2 and e=3) and ℚ₅; the fractional root system at q=4; the Fourier normalizations; the genus-zero instability argument of §3.9 including its splitting lemma; the §5.5 Hilbert-symbol diagonal; the §3.3 elliptic-curve witness over 𝔽₁₇.

## Citations

`roadmaps resolve` on the ported README (main `a0ad405`, 458 open heads, index of 2026-11-05T05:39:44Z) lists one lead, `LogicAndDefinabilityInNumberTheory §2.11`, and no unresolved Lean name. Every other cross-roadmap section was confirmed by heading in the supplier at its head in this run: AlgebraicModuliForArithmeticGeometry §§1.3, 2.1, 2.2, 4.1, 4.2, 4.3, 4.5 (with `quotientGerbeTransgression` and `quotientInertiaComponents`), 4.9, 4.20, 5.1, 7.3, 7.6.1, 8.2, 9.4, 9.5, 9.7; AbelianSchemesAndArithmeticModuli A1.3, A1.5, A2.2, A2.3, A3.2–A3.7; EndoscopicTransferAndUnitaryTraceComparison 3.6, 3.7, 3.8, 3.10, 3.12, 3.13, 3.14, 3.16; CountingBundlesAndHallAlgebrasOfCurves 7.1, 7.3, 8.3, 9.1, 10.4; MotivesAndAlgebraicCycles 4.20; CohomologyComparisons 2.15; ArithmeticGaloisDuality D7.6 with the paragraphs "Local abelian-variety duality and gerbe evaluation" and "Self-dual isogenies and their local index"; ArithmeticGaloisRepresentations 1.7, 1.8, 5.1, 5.2, 5.3; DeligneWeightsAndPurity 7.8, 7.12, 7.15; EtaleDualityAndPerverseSheaves 3.7, 6.3, 6.4; ComplexComparisonPartII C3.2e (`picardTorsionComponent`), C3.2f.1 (`picardZeroSheaf`); ReductiveGroupsPartII RG2.3.7 (on main); SchemeAndStackFoundations, EtaleCohomologyFoundations, JacobianChallenge, AlgebraicVectorBundles, ClassFieldTheory and Completed/HodgeStructures as listed above; MixedHodgeModulesAndIrregularHodgeTheory's six labels in its board design. Certified-source locators spot-checked in the line-numbered extractions: HT03 line 385 (Proposition 3.2) and line 498 (Proposition 3.6); ITO04 lines 524, 555, 573, 611, 624, 666 (Lemma 4.3, Proposition 5.1, Definitions 5.2–5.3, §5.3, Example 5.5); BITTNER04 lines 805, 812, 830 (representation quotient, Lemma 7.1, the proof's good-action step).

## Adversarial pass

| Statement | Instances tried | Values computed (both sides) | Result | Change |
|---|---|---|---|---|
| Conventions, stack masses | trivial C₂-action on a point over 𝔽₃ | two rational torsors, each weight 1/2: trivial character 1/2+1/2=1; sign 1/2−1/2=0 | holds | none |
| §0.1 Check, [A¹/C₂] sign action over 𝔽₃ | orbits {0} (stabilizer C₂), {1,2}, nonsplit torsor x²=−1 in 𝔽₉ | 1/2+1/2+1+1=3=q | holds | none |
| §0.1 Künneth for abelian G | sign rep of C₂, tensor square | sign multiplicity 1, of the square 0 | χ-projection not multiplicative, as stated | none |
| §0.2 root systems at q=4 | s_r=exp((log 4+2πi)/r) | s_1=4, s_2=exp(log 2+πi)=−2; positive system s_2=2 | two compatible systems differ, as the Check says | none |
| §0.2 Tate sign | ℒ=[A¹] vs ℤ(1) | ℒ bidegree (1,1); `tate_hodgeNumber`: ℤ(m) has its Hodge number at p=−m, so ℤ(1) at (−1,−1) | consistent | none |
| §0.6 stringy invariants | Spec k; BC₂ split; BS₃; [A¹/C₂] sign | 1; 2 age-zero sectors of mass 1 → 2 (ordinary mass 1); 3 conjugacy classes → 3 (6 if elements counted); xy+(xy)^{1/2}, count q+q^{1/2}; over 𝔽₃ ordinary mass 3 plus sector mass 1·√3 | holds | none |
| §0.7 Check, root gerbe of O(1) on ℙ¹ | trivial Γ | identity sector only, transgression trivial, E=1+xy | holds | none |
| §1.1 Hamilton class | U=V=Spec ℝ, r=2 | H²(ℝ,μ₂)≅Br(ℝ)[2]=ℤ/2 (Pic(ℝ)/2=0); neutral over ℂ, not over ℝ | arithmetic, not neutral | none |
| §1.1 ℙ¹ root gerbe | r=2 over ℂ | Kummer class 1 in Pic/2=ℤ/2, Brauer image 0 in Br(ℙ¹)=0 | Gₘ-neutral, not arithmetic | none |
| §1.1 orders over ℂ, 𝔽₅, ℚ₅ (Künneth H*(C₂×G_K,𝔽₂)) | e=2 | ℂ: (2,2,1); 𝔽₅: 2·2·1=4, Pic/2=2, Br[2]=2; ℚ₅: 2·4·2=16, Pic/2=2, Br[2]=8; Kummer 16=2·8, 4=2·2, 2=2·1 | holds | none |
| ClassFieldTheory contract orders | cyclic I of order e, e \| q−1 | H⁰(k,H²(I,μe))=μe/eμe of order e, H¹(k,Hom(I,μe)) of order e, H²(k,μe)=0: total e²; Pic/e=Hom(I,k×) of order e; Br[e] of order e | holds | none |
| §1.1 e∤q−1 | C₃ over 𝔽₅ | Fr inverts μ₃: invariants 0, coinvariants ℤ/3/(−2)=0, Hom(C₃,𝔽₅×)=1, 𝔽₅×/𝔽₅×³=1 → (1,1,1) | divisibility needed, as stated | none |
| §1.2 Check | neutral μr-gerbe on a curve | rigidified sheaf Pic[r], order r^{2g} | holds | none |
| §1.3 Split′ | neutral μ₂ on E; U=V=Spec K | E[2]×^{E[2]}Pic⁰=E∨ (dimension 1, not 4 points); Pic=0 gives a point | holds | none |
| §1.4 low-degree sequence | pointless real conic; X(K)≠∅; H³(ℝ,ℂ×)=0 | (−1,−1) dies in Br(conic): no unconditional injection; a point retracts, so injective; surjectivity onto H¹ with H³=0 | holds | none |
| §1.6 evaluation | t=0, c of invariant 1/2; A=0; t of order 3 | 1/2−1/2=0=⟨x,0⟩, fα≡−1; both sides 0; exp(2πi/3) vs exp(−2πi/3) distinguishes t from −t, order 2 does not | holds; normalization at 0 necessary | none |
| §2.1 abstract systems | E×A¹/A¹; trivial group; blow-up of a point | complement empty; relative dimension 0; exceptional divisor codimension 1 fails the bound | holds | none |
| §2.3 gauge forms | a=xy on 𝔾_m²; u∈O_F×; π at q=3 | da∧(−dx/x)=x dy∧(−dx/x)=dx∧dy; density ×1; vol(πO_F)=1/3, \|π²\|^{1/2}=1/3 | holds | none |
| §2.5 self-dual index | [n] on E/F, n prime to p | E(F)=O_F^d×finite is uniquely n-divisible on O_F^d, so \|E(F)[n]\|=\|E(F)/n\| | holds | none |
| §3.2 dimension | general D; D=ω; g=1, D=O; g=0, D=ω, n>1 | χ(End₀ complex)=−(n²−1)deg D, h⁰=h²=0 → (n²−1)deg D; 2(n²−1)(g−1); 0; negative ⇒ empty (§3.9) | holds | none |
| §3.3 Check | y²=x³+x+3 over 𝔽₁₇ | x³+x+3 takes the values 3,5,13,16,3,14,4,13,13,10,10,2,9,3,7,10,1 for x=0,…,16, no zero; discriminant −16·247≡−16·9≠0; E[2](𝔽₁₇)=1 vs geometric 4; μ₈⊂𝔽₁₇ since 8\|16 | holds | none |
| §3.3 Check | diag(1,1) vs diag(1,−1) | traces 2 and 0; both 2 on even powers | holds | none |
| §3.6, §3.10 norm signs | n=2; e=0,1,2 | M=det(O⊕D⁻¹)=D⁻¹, target LD; label M at e=0 (target O), L at e=1, L²M⁻¹=L²D at e=2 | signs consistent in Conventions, §§3.6, 3.10, 4.2 and both examples | none |
| Layer 3 example | n=2, g=2, D=ω | g_Y=n²(g−1)+1=5; Prym 5−2=3; base 3g−3=3; total 6=(n²−1)(2g−2) | holds | none |
| §3.9 genus zero | ℙ¹, D=O, n=2, d=1; n=3, d=2, O(1)²⊕O; n=2, d=0 | a≥1>1/2 and H⁰(O(1−2a))=0; block slope 1>2/3, H⁰(O(−1))=0; slope 0=0 only equality | empty as stated; noncoprime case excluded | none |
| §3.9 splitting lemma | extension of O(b) by O(a), b>a | χ(F(−a−1))=(a+b−2a−2)+2=b−a>0 gives a line of degree ≥a+1 | contradiction, as stated | none |
| §3.9, §4.8 genus one | stable E of rank n, degree d coprime, D=O | trace-free Higgs field is a trace-free endomorphism of a stable bundle, hence 0; End(E)≃⊕_{N∈Γ}N by injectivity of ⊕N⁻¹→End(E) and equal rank n², degree 0 | one point, quotient BΓ | none |
| §4.2 N and parity | n=2, deg D=2; n=2, deg D=1; n=3, deg D=1 | deg M=−2, Q of degree −1, N=ωQ² degree 0; deg M=−1, no Q; deg M=−3, Q of degree −1 | parity hypothesis detected | none |
| §4.2 label | e, Q | L^e M^{1−e} Q^{n(e−1)}=L^e(M⁻¹Q^n)^{e−1}=L^eN^{e−1} | holds | none |
| §4.1 Check | n=3, d=1, e=3 | t of order 3: et=0 though gcd(e,d)=1 | gcd(e,n) is the condition | none |
| §4.6 PGL degree | even n, unit a | a odd, (1−a) even, (1−a)deg M=−n(n−1)deg D(1−a)/2 divisible by n | no parity of deg D needed | none |
| Conventions, root bound | n=2, g=2 | n\|Γ\|=2·16=32=n^{2g+1} | holds | none |
| §4.8 sector sums | n=2, g=1; constant Γ over 𝔽q; Γ(𝔽q) of order 2 | 1+0+0+0=1 (neutral gerbe 4); γ≠0: four torsors of mass 1/4 with traces 1,1,−1,−1 → 0; Γ/(Fr−1)Γ={[0],[a]} with (a,γ)=−1 → 1+0=1 | holds | none |
| §4.8 well-definedness of ν↦(ν,γ) on H¹(k,Γ) | γ∈Γ(k), μn⊂k | (Frν−ν,γ)=(ν,γ)(ν,γ)⁻¹=1 | descends | none |
| §5.1 Check | n=2, g=2, q=3⁸ | 3⁸−1=6560=32·205, so μ₃₂⊂𝔽_{3⁸}; p=3>2 | admitted | none |
| §5.2 ages | symplectic Γ-action; eigenvalue −1 | pairs ζ^b, ζ^{n−b} sum to age 1; −1-eigenspace symplectic, even-dimensional | ages integral | none |
| §5.3, §5.4 | I₂ vs J₂^m=((1,m),(0,1)); ℚℓ[0]⊕ℚℓ[−1] | traces 2=2 for all m, fixed spaces 2 vs 1; trace 0, dimension 2 | virtual ≠ actual, as stated | none |
| §5.5 Check | (−3,−3)₃ | (−3,−3)=(−3,−1)=(−1,−1)₃(3,−1)₃=1·(−1\|3)=−1, invariant 1/2 | diagonal need not vanish | none |
| §5.6, Conventions | C₃ Fourier sum; n=2, g=2 | (1/3)Σ_ν ζ^{νγ}ζ^{−νδ}=1 at δ=γ, 0 otherwise; 1/16 | holds | none |
| Review's E/𝔽₃ control | y²=x³−x | affine points (0,0),(1,0),(2,0); #E(𝔽₃)=4 | recomputed | none |

## Unresolved

- LogicAndDefinabilityInNumberTheory (merge order 304) is a board package with no open pull request; the board checkout holds only its reports and `sources.toml`, not its README (its last review, round 7, is "needs changes"). The cited sections could not be reread here. Its review reports' own adversarial tables name the cited sections with the content this roadmap consumes: 2.5 (change of variables, Haar-nullity of lower dimension), 2.7 (gauge measures, `|π²|^{1/2}=q⁻¹` for `π²(dx)^{⊗2}`), 2.8 (positive-codimension loci are null, citing GWZ20 Proposition 4.4(1)), 2.9 (Weil volume `#X(k)/q^d`), 2.11 (isogeny and dual-abelian volume invariance), 2.12 (base-first Fubini, `dt∧dx`). The citation is kept as the accepted review of this package settled it; the resolver lead is a coverage limitation.
- MixedHodgeModulesAndIrregularHodgeTheory (merge order 250) is a board design without a pull request; its labels were checked in the board design, not at a pull-request head.
- GWZ20 remains uncertified (paywalled); its theorem numbers and pages are cited by locator without the text, as the review settled.
- Ownership against open pull requests was checked through the roadmap index at the heads of 2026-11-05T05:39:44Z, which include the sibling checkouts the brief lists; those checkouts were not opened file by file.


Pull request: #1814 (roadmap/topological-mirror-symmetry-for-hitchin-systems at cceef7d)
