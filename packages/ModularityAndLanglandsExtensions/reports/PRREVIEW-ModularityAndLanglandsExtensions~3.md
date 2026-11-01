# Review of ModularityAndLanglandsExtensions (pull request #1180 at e3a0748)

**Verdict:** accepted

:robot: Independent AI review. Incremental re-review of 142 changed lines since 05a5276. No new findings; all three previous findings are repaired. This is readiness for human final approval, not an approval or merge.

## Previous findings

- R01 — repaired: README §4.41, lines 3067–3133, now constructs normalized minimal-K-type mass, owns both analytic estimates and their quantitative inputs, and derives the Bianchi consequence using §4.38.
- R02 — repaired: README §2.23, lines 1187–1209, imports the rational-field and prime-3/5 twists, confines its extension to higher-prime number-field representations, and requires comparisons on the common domain.
- R03 — repaired: README lines 206, 846, 881 and 892 replace the four stale names with IntegralHeckeAndGaloisDeterminants §5.2 and CrystallineLocalGlobalCompatibilityCM §§7.5, 7.6 and 9.12, retaining their qualifications.

## Verified sound

**Scope and checks.** I checked the specified head, both changed files, all diff hunks and their mathematical dependents. The diff outside this roadmap is empty and the worktree remains unchanged. I read the repository README's standing checklist, CONTRIBUTING, and the main-branch ModularCurves and ClassFieldTheory examples. The previous report is [r2]; its unchanged mathematical controls are carried forward below with an explicit citation on every row. This is not a second full review of the 157 targets.

The changes concern §2.23, §4.41, the supplier locators in §§2.4, 2.6 and 5.8, the matching ownership/contracts, the Marshall reference and the Lean docstring. None of this round's 15 seeded target statements falls inside a changed mathematical passage. Their controls remain in the inherited table: §§0.2, 1.2, 1.6, 1.7, 2.7, 2.30, 2.34, 3.4, 3.9, 3.11, 3.15, 3.32, 4.9, 4.28 and 4.31. I did not represent unchanged locators as newly source-certified. No added locator is marked unverified.

**Gate and elaboration.** The supplied gate reports every scanner and the targeted build passing. The independent gate rerun also returns OK with all scanner counts zero. A separate targeted build of `TauCetiRoadmap.ModularityAndLanglandsExtensions.Suggested` succeeds. Independent absolute-file elaboration succeeds with only the expected `sorry` warning. The dependency command returns:

```text
depcheck: 205 roadmaps, 1492 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The added imports in the prose are earlier suppliers; no supplier gap is used to disguise a new assumption.

The three Lean declarations are mathematically unchanged. A scratch copy elaborated with `#check @name` for all three retains exactly the two total definition signatures and the Sato–Tate signature's ellipticity, geometric non-CM surjectivity and `ContinuousOn` assumptions. There are no lost binders. The theorem fails each separate one-tactic probe `simp`, `rfl` and `infer_instance`; object searches found no pinned Sato–Tate result furnishing an `exact` proof. There is one `import Mathlib`, one used Tau Ceti import, two real-bodied definitions, one sorried theorem, no sorry'd data and no option override.

**Sources read for the changes.** All four works below were obtained through the sources service from legal copies. No repository source manifest was edited.

| Changed claim | Text and locator inspected | Result |
|---|---|---|
| §2.23 modular-curve switching | `cg` lines 4446–4461, arXiv v2 §10, pp.97–98 | The auxiliary curve and torsion comparison occur here; the precise paired moduli construction comes from the named modular-curve suppliers. |
| §2.23 normalization comparison | `stacks-03gv` lines 2724–2743, More on Morphisms, Lemma 19.2, Tag 03GV | Requires a quasi-compact, quasi-separated original morphism and smooth base change. Finite-type curves and finite separable splitting extensions meet these requirements. |
| §4.41 quotient and density | `marshall` lines 87–123, 237–303, §§2.1, 2.4, pp.1052–1056 | Narrow class number one, full level, trivial centre, cohomological types and compact-type averaging are retained. The normalized measure excludes the zero embedding. |
| §4.41 weight comparison and conditional endpoint | `marshall` lines 355–418, Theorem 1, Corollary 3 and Theorems 4–5, pp.1057–1058 | Complex weight is 2d+2; all-place Ramanujan and uniform weight growth remain hypotheses. Both displayed estimates and their error exponents agree. |
| §4.41 analytic proof inputs | `marshall` lines 782–830, 1337–1357, 2192–2244, 2430–2443, 2530–2613; Propositions 9–10, 13–15, §§8–9, pp.1065–1066, 1074–1075, 1086–1094 | The number-field estimates, real/complex archimedean factors, damping, lower bound and threshold combination support the new owned targets. No new analytic conjecture is inserted. |
| §4.41 Bianchi Ramanujan discharge | `bcgnt-2025` lines 542–559, v3 Theorem G and proof, p.11 (README gives published p.10) | The proof explicitly supplies the formerly missing Ramanujan input through Theorem E; class number one is retained. The preprint/published pagination distinction is recorded. |

**Pinned library checks.** Mathlib is pinned to `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti to `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. I reopened these declarations at those pins, rather than relying on a newer API:

| File and line | Declaration/content and limitation |
|---|---|
| `Mathlib/AlgebraicGeometry/Normalization.lean:577`, 599 | `AlgebraicGeometry.Scheme.Hom.normalizationPullback` and its smooth-base-change `IsIso` instance. Quasi-compactness and quasi-separatedness are in scope; arbitrary nonsmooth base change is not asserted. §2.23 uses this existing normalization theory. |
| `Mathlib/AlgebraicGeometry/EllipticCurve/Reduction.lean:299`, 316, 322, 329 | `WeierstrassCurve.minimal`, `reduction`, `HasGoodReduction`, `hasGoodReduction_iff_isElliptic_reduction`. Good reduction is tested on the minimal equation; the valuation is multiplicative, so the value for a unit is 1. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Hom/Basic.lean:106` | `TauCeti.Isogeny.Hom` includes the zero map and pointed nonzero morphisms, rather than only nonzero isogenies. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Hom/Ring.lean:174`, 182 | The native endomorphism ring and domain instances used in the geometric non-CM predicate. |

Object searches at the pins found no existing mass-equidistribution, shifted-convolution or Sato–Tate endpoint duplicating the new targets or the retained theorem. This is an object-search result, not a claim that every possible synonymous declaration was ruled out.

**Supplier and ownership resolution.** I used the roadmap service to search objects on main and the indexed open heads, read the matching supplier texts, and searched the board packages. The additional board match concerned torus-packet equidistribution, not minimal-K-type mass. The new analytic estimates have no competing owner in the inspected material. The retained higher-prime twist extends representations defined over arbitrary number fields; the rational-field descent and its base changes are imported.

| Citation refreshed | Supplier location inspected | Contract comparison |
|---|---|---|
| ModularCurves §0E, §§5B–5C, Layer 10 | `TauCetiRoadmap/ModularCurves/README.md:1313`, 1357 and the named descent/recognition sections on main | General descent and normalization are reused; §5C's twist itself is over ℚ. Row-frame determinants act on the pairing by their determinant. |
| ModularCurvesPartII §§5.13–5.14 | `TauCetiRoadmap/ModularCurvesPartII/README.md:1902`, 1936 | Fixed-pairing completion, paired representations over ℚ, frame comparison and field base change. The shared fixed-pairing geometry supplies connectedness; the extension does not assume the unconditional connectedness missing from main ModularCurves §5C alone. |
| EllipticCurveModularityImaginaryQuadratic §0.2 | `TauCetiRoadmap/EllipticCurveModularityImaginaryQuadratic/README.md:557`, 583 | Arbitrary-number-field prime-3/5 paired twists and rationality. The E[q] case uses the actual identity point. |
| PotentialModularityAndCompatibleSystems §§2.8–2.10, 2.23 | `TauCetiRoadmap/PotentialModularityAndCompatibleSystems/README.md:714`, 724, 732, 898 | Point selection, local opens and prescribed Galois data; not ownership of the twist. |
| IntegralHeckeAndGaloisDeterminants §5.2 | `TauCetiRoadmap/IntegralHeckeAndGaloisDeterminants/README.md:3468` | Uniform nilpotence with separated quotients. One exponent for every quotient is preserved. |
| CrystallineLocalGlobalCompatibilityCM §§7.5–7.6, 9.12 | `TauCetiRoadmap/CrystallineLocalGlobalCompatibilityCM/README.md:1446`, 1454, 1800 | Local deformation factorization, p∤n fixed determinant, and the cubic-tetrahedral qualification all agree. |
| LanglandsParameterStacks §§1.5, 1.8–1.11, 1.16–1.18 | `TauCetiRoadmap/LanglandsParameterStacks/README.md:357`, 387, 407, 417, 427, 502, 524, 540 | The corrected locators supply the same LCI, mapping-stack, duality, cotangent, singularity, Hochschild-action and nilpotence targets. Regular noetherian base and residue-prime restrictions remain intact. |
| AutomorphicFormsOnReductiveGroups Layers 2–3, 6 | `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:299`, 370, 510, 578, 930 | Admissible/global realizations, compact types and tensor decompositions are used; the new mass construction is owned here. |
| AutomorphicSpectralTheory §§1.2, 1.6, 4.1–4.3 | `TauCetiRoadmap/AutomorphicSpectralTheory/README.md:913`, 979, 2295, 2316, 2337 | Eisenstein/pseudo-Eisenstein objects and the full spectral decomposition, including residual terms. These supply the ambient spectral theory, not the new decay estimates. |
| AutomorphicLFunctionsAndLocalFactors AL.2–AL.3 | `TauCetiRoadmap/AutomorphicLFunctionsAndLocalFactors/README.md:1748`, 1866 and its AL.3 continuation targets | Standard and Rankin–Selberg analytic objects; quantitative mass estimates and L₁ lower bounds are explicitly owned in §4.41. |

**Headline coverage.** The unchanged headline families are Artin modularity/low-rank transfer (§§1.3–1.4, 1.9, 1.11, 1.13–1.15); potential automorphy, compatible systems, irreducibility and imaginary-quadratic modularity (§§2.26, 2.33–2.43, 2.45–2.52); classical classification, multiplicity and genus-two consequences (§§3.12, 3.15–3.19, 3.21–3.32); symmetric powers, purity, Ramanujan and equidistribution (§§4.12–4.15, 4.20–4.24, 4.28–4.43); generic transfer/descent and Whittaker implications (§§5.1, 5.4–5.5, 5.9–5.11). The conjectural frontier remains distinguished from theorems.

§4.41 now additionally exposes Marshall's general conditional theorem and its estimates. The changed module docstring names their missing minimal-K-type cuspidal realizations, associated bundles and invariant volume. A measure on an arbitrary type would not state them. The elliptic Sato–Tate endpoint remains on native carriers, and no new statable headline was displaced by the docstring change.

**Adversarial table for changed statements and dependent interfaces.** Every entry below records computed values. Bounds are tested through their normalization and threshold arithmetic; these finite controls are not substitutes for the cited analytic proofs.


| Statement | Instances tried | Values computed on each side | Result/change |
|---|---|---|---|
| §2.23 paired higher-prime curve | q=7 over a splitting field | Determinant-1 frame changes preserve ζ₇; forgetting pairing yields 6 components instead of 1 | Correct paired moduli problem; existing lower-prime/rational cases imported |
| §2.23 fine representation and universal family | q=2 versus q=7 | [−1] acts as identity on 2-torsion, but as multiplication by 6≠1 on 7-torsion | q≥3 rigidity restriction retained |
| §2.23 frame comparison | diag(2,1), diag(2,4) over 𝔽₇ | Determinants 2 and 8≡1; pairing values ζ₇² and ζ₇ | Same convention as ModularCurves §5B |
| §2.23 connectedness/completion | q=3,5,7 | Full-level indices 12,60,168; cusps 4,12,24; genera 1+index/12−cusps/2=0,0,3 | Genus-zero cases imported; higher-prime case remains full level |
| §2.23 identity point | K=ℚ(i), ρ̄=E[3] | id preserves pairing with multiplier 1; genus 0 plus one K-point gives ℙ¹_K | Prior R02 witness repaired on the same instance |
| §2.23 field-change identity/composition | K→K→L on (E,id) | Both routes give (E_L,id); pairing multiplier remains 1 | Shared objects and comparison maps required |
| §2.23 separable normalization base change | Characteristic-zero splitting field L/K | [L:K]_insep=1; smooth relative dimension=0; both normalized fibres give X(q,ζ)_L | Tag 03GV applies; no inseparable base-change extrapolation |
| C-MODULI point-selection boundary | ℙ¹_K; real conic x²+y²+z²=0 | ℙ¹ has (1:0); the conic has 0 real points since a sum of squares is zero only at (0,0,0) | Nonempty local opens remain necessary; point selection does not construct twists |
| §2.4 fixed-determinant adapter | n=2, λ=(0,0), p=3 versus p=2 | Weights (0,1), sum 1; 3∤2 true, 2∤2 false | Correct supplier refinement; no lost coprimality |
| §2.6 qualified lifting adapter | p=3,5; exceptional degree 3 | Cyclotomic degrees divide 2,4, respectively, so degree 3 is impossible; at p=7 it divides 6 and degree 3 is possible | Cubic-tetrahedral exclusion preserved |
| §5.2 nilpotence contract (README line 206) | k[ε]/ε², J=(ε); k[[t]]/(t^r) | First J²=0 uniformly; second (t)^r=0 in quotient r but t^N≠0 in the limit for every N | Uniform exponent and separation retained; four obsolete aliases now resolve to four targets |
| §4.41 quotient conventions | F=ℚ and ℚ(i) | Signatures (1,0),(0,1); symmetric spaces ℍ²,ℍ³ with real dimensions 2,3 | Both signatures occur in the stated full-level setting |
| §4.41 minimal-type dimensions | Real weight 4; complex weight 4 | Character dimension 1; SU₂ dimension 4+1=5 | Complex density averages five coordinates, not one |
| §4.41 nonzero finite mass | R with ∫D_R=1; R=0 | Positive normalization 1/1=1; zero would be 0/0 | Zero explicitly excluded; integrability and positivity owned |
| §4.41 countable additivity and absolute continuity | Disjoint B,C; dv(B)=0 | μ(B⊔C)=(∫B D+∫C D)/I=μ(B)+μ(C); null B has numerator 0 and mass 0 | Positive finite denominator makes the measure construction valid |
| §4.41 scalar invariance | R→2R | D→4D, I→4I, ratio 4a/4I=a/I | Same instance as previous R01 now has a defined probability measure |
| §4.41 orthonormal-basis invariance | (1,0) and (1/√2,1/√2) | Squared norms 1 and 1; normalized two-coordinate sums 1/2 and 1/2 | Wrong single-coordinate values 1 and 1/2 are excluded |
| §4.41 compact averaging and pushforward | Irreducible unitary type of dimension d=2, total squared coordinate norm 1 | Haar average of one unit-coordinate coefficient is 1/d=1/2, equal to d⁻¹Σ; unaveraged value can be 1 | Schur averaging justifies every unit vector after pushforward |
| §4.41 fixed Hecke eigensystem | Operator diag(1,2), vector (1,1) | Image (1,2); scalar would have to equal both 1 and 2 | Mixed eigenspaces excluded from the fixed-π family |
| §4.41 Petersson normalization | Real k=2,y=2 | y^k=4, inverse convention y^(−k)=1/4 | Density uses the correct positive power |
| §4.41 harmonic/Bianchi comparison | Bianchi k=2,3 | d=k−2=0,1; Marshall weight 2d+2=2,4 | Matches §4.27, including the weight-2 boundary |
| §4.41 P and complex-place multiplicity | One real or one complex weight 4 | P=4 or 16; P^(−1/2)=1/2 or 1/4 | Complex contribution is squared |
| §4.41 M local factors and sign | N𝔭=2; roots (1,1),(i,−i),(−1,−1) | Sums 2,0,−2; factors 3,1,3; all determinants 1 | Absolute value and determinant convention discriminate |
| §4.41 M positivity/empty product | log T=2,L₁=1, one-prime model versus empty product | Product 3 or 1; M=3/4 or 1/4>0 | No empty-product zero or logarithmic denominator defect |
| §4.41 R_A index and damping | r₁+r₂=1, model numerator 1 | ℤ⁰ has 1 element; integral 2/(A−1), values 2 at A=2 and 1 at A=3 | Singleton indexing, not an empty sum |
| §4.41 R_A convergence | r=r₁+r₂, n=[F:ℚ] | Joint radial dimension r; exponent tail r−1+3n/4−A; stated A>3n/4+r+1 makes it <−2 | Strong enough for summed/integrated polynomial bound |
| §4.41 R_A monotonicity/zero numerator | Complex weight 4,L₁=1, numerator 1 or 0 | R₂=(1/4)·2=1/2; R₃=(1/4)·1=1/4; zero numerator gives 0 | Increasing damping decreases the nonnegative model |
| §4.41 independence of embedding scale | R and 2R for fixed π | Hecke eigenvalues, L₁, P, M and R_A have ratio 1; raw mass has ratio 4 | Analytic factors depend on representation, not vector normalization |
| §4.41 shifted-convolution cusp bound | L₁=(log T)^(−7/15) | M exponent 1/6−7/30=−1/15; square-root exponent −1/30 | Correct first branch |
| §4.41 weak-subconvex cusp bound | Same threshold | −1/2+7/15=−1/30 | Matches the other branch rather than losing decay |
| §4.41 incomplete-Eisenstein shifted bound | L₁=(log T)^(−13/15) | M exponent 1/6−13/30=−4/15; square root −2/15; R_A adds only ε-loss | Correct centered estimate and error exponent |
| §4.41 unitary-Eisenstein estimate | Same threshold; t=m=0 | −1+13/15=−2/15; polynomial parameter factor (1+0+0)^(2n)=1 | Matches centered incomplete-Eisenstein branch after Mellin integration |
| §4.41 archimedean period estimates | k=4, real versus complex | Squared-period scaling k⁻¹=1/4 versus k⁻²=1/16 | Agrees with Marshall Proposition 14; P uses both types |
| §4.41 L₁ lower bound and R_A cancellation | log T=2 and model L₁=1/2 | (log T)L₁=1; inverse factor cancels to 1 in R_A estimate, apart from log^ε | Positive lower bound is a quantitative target, not qualitative nonvanishing |
| §4.41 M-to-L₁ comparison | Hecke sum x=0,2 | Inequality 2|x|≤2/3+3x²/2 gives 0≤2/3 and 4≤20/3; λ(𝔭²)=x²−1 gives −1,3 | Supports the source's 1/6 exponent and preserves λ(𝔭²), not x² |
| §4.41 uniform growth | Weights (t,t²), (2,t), one coordinate w | First min=(max)^(1/2); second ratio 2/t^ν→0; one-coordinate ratio w/w¹=1 | Includes Bianchi sequence, excludes nonuniform sequence |
| §4.41 weak convergence and tightness | Tests 1,0; candidate half-mass limit | Probability integrals 1,0 on both sides; escaped-half-mass candidate gives 1/2 on test 1 | Tightness is explicitly a target |
| §4.41 quantitative endpoint | ε=1/60 | −1/30+ε=−1/60; −2/15+ε=−7/60 | Both errors decay |
| §4.41 Bianchi Ramanujan specialization | k=2,N𝔭=9 | Arithmetic root modulus 3, unitary modulus 1; |α+β|≤2 after normalization | §4.38 discharges the analytic hypothesis in its correct normalization |
| §5.8 stack comparison | W=1; free group on one generator | Unframed stack BĜ versus [Ĝ/Ĝ]; framed spaces point versus Ĝ | Corrected §1.8–1.9 citations retain stabilizers |
| §5.8 tangent/cotangent shifts | Weil cochains in degrees 0,1,2 | Shift [1] places them in −1,0,1; duality [2] followed by dual shift [−1] gives [1] | Corrected §1.11 retains Tate twist and dual Lie module |
| §5.8 singularity/Hochschild action | B=k[x,y] in characteristic zero | H¹(L∨)=0, but HH² contains ∂x∧∂y≠0 | Imported map is not asserted to be an isomorphism |
| §5.8 perfectness criterion | Free B-module; residue field over k[x,y]/(xy) | Free module has Extⁿ=0 for n>0; residue field has nonzero Ext in arbitrarily high degrees | Zero-section/perfectness statement retains singular examples |
| §5.8 nilpotence condition | Torus, q=3,n=e=1, ℓ=2 versus 5 | q^(ne)−1=2; residue 0 mod 2, 2≠0 mod 5; obstruction line versus zero fibre | Bad-prime support condition preserved |
| §5.8 finite-wild support | Objects supported on 0,1,2 clopen levels | Support unions have respectively 0,1,2 members; each finite, no common bound over all objects asserted | Per-object quasicompact support remains correctly quantified |
| Lean docstring/acceptance test | Three existing declarations before/after | Declaration bodies and signatures changed: 0; added analytic theorem stand-ins: 0 | Newly owned endpoints are named as not statable on their actual carriers |


**Unchanged statements carried forward.** These 157 rows reproduce the computed controls of [r2], not new source checks. The last column cites that report for each row. References to older repair IDs in the result column describe that historical check. The six replaced rows are §§2.4, 2.6, 2.23, 4.41, 5.8 and the stale-locator control; their replacements are above.

| Statement | Instances tried in r2 | Values computed in r2 | Inherited result | Evidence |
|---|---|---|---|---|
| Conventions; C-GALOIS | Rank two, geometric Frobenius eigenvalues α,β | det(1−FT)=1−(α+β)T+αβT²; replacing F by F⁻¹ gives inverse roots. H¹ determinant ε⁻¹, Tate-module determinant ε | Retain dual/Frobenius distinction | [r2] |
| Supplier import, TauCetiRoadmap/ModularityAndLanglandsExtensions/README.md:146 | n=1 versus n=2, non-Iwahori coefficient place | Extra premise count 0 at rank 1, 1 at rank 2; README now retains it and §2.43 discharges it | Previous R04 repaired | [r2] |
| 0.1 | n=1,2,4 | Automorphic shifts (1−n)/2 = 0,−1/2,−3/2; unshifted comparison differs in ranks 2,4 | Retain | [r2] |
| 0.2 | 1⊕ε⁻¹ | Rank 2, Hodge list {0,1}; two isobaric constituents, not one cuspidal constituent | Correct exclusion; retain | [r2] |
| 0.3 | (k,r)=(2,1),(3,2),(0,1) | Lists (0,−1,2,1), (0,0,4,4), (0,−1,0,−1); distinct counts 4,2,2 | Retain all collision conditions | [r2] |
| 0.4 | (k,r)=(0,2) | Predicted list (0,0,1,1), rank 4; regularity false, unlike (2,1)'s four distinct labels | Retain conjectural status | [r2] |
| 1.1 | α/β=−1 | Powers i=1,2 are −1,1; 2-regular true, 3-regular false | Retain | [r2] |
| 1.2 | S₃ standard representation; 1⊕1 | Transposition trace 0, determinant −1; trivial sum trace 2, determinant 1, L=ζ² with pole order 2 | Irreducibility/oddness distinguish inputs | [r2] |
| 1.3 | Equal weights (a,a), then twist by −a | Hodge labels become (0,0); distinct count remains 1, whereas (0,1) has 2 | Retain irregular restriction | [r2] |
| 1.4 | Determinant ε̄⁻¹ over 𝔽₅, twist by ε̄ | New determinant ε̄²ε̄⁻¹=ε̄; projective image unchanged | Retain twist before applying lifting | [r2] |
| 1.5 | E[t]/t² as a negative control | One E-valued point, nonzero t with t²=0; tangent dimension 1, not 0 | Finitely many points alone is insufficient; special deformation hypotheses retained | [r2] |
| 1.6 | R=det on diag(2,3); R=std | det=6; identity roots (2,3). Sym² roots (4,6,9), rank 3 | Retain actual representation R | [r2] |
| 1.7 | (p,a,n)=(2,3,4),(5,1,2) | 8>max(5,7)=7 true; 5>max(5,3)=5 false | Retain strict field-size test | [r2] |
| 1.8 | E[X]/(X−1)² | Dimension 2, (X−1)²=0 but X−1≠0; replacing by its one character loses dimension 1 | Retain generalized eigenspace | [r2] |
| 1.9 | Odd S₃ standard Artin representation | c has roots 1,−1, trace 0 and determinant −1; even trivial rank-two representation has determinant +1 | Oddness distinguishes the cases | [r2] |
| 1.10 | Symⁿ⁻¹, n=1,2,3 | Ranks 1,2,3; roots 1; (α,β); (α²,αβ,β²) | Retain rank-one and noncuspidal branches | [r2] |
| 1.11 | V⊗V for rank-two V | Rank 4=3+1; Sym²V⊕det V. A self-pair cannot be a cuspidal rank-four transfer | Cuspidality exception retained | [r2] |
| 1.12 | SP₁ and SP₂ | Sym⁰ rank 1 trivial; Sym¹ rank 2 identity | Valid induction bases; no Lean padding | [r2] |
| 1.13 | V⊗Sym²V | Rank 6=4+2; Sym³V⊕(V⊗det V) | Retain low-rank decomposition and cusp exceptions | [r2] |
| 1.14 | Scalar aI₄, a=2 | ∧² has six roots 4, determinant 4⁶=4096; (det 2I₄)³=16³=4096, square gives 256 | README's exponent 3 is correct | [r2] |
| 1.15 | n=1,…,5; HT(V)={0,1} | Symⁿ⁻¹ ranks 1,…,5; labels {0,…,n−1} have n distinct values | Retain regular non-CM base range | [r2] |
| 2.1 | ℓ=5, labels {0,3} versus {0,4} | Widths 3,4; Fontaine–Laffaille criterion bound ℓ−2=3 | First passes criterion; second not implied | [r2] |
| 2.2 | ℓ=2 versus 3 | Odd-prime premise false,true; semistable Tate extension has rank N=1, crystalline rank N=0 | Retain this source theorem’s hypotheses; distinct from the all-prime endpoint | [r2] |
| 2.3 | U=diag(1,0) on 𝔽₃² | Ordinary projector Uᵐ=diag(1,0), image dimension 1; U=0/1 give dimensions 0/2 | Retain partial projector and all-degree distinction | [r2] |
| 2.5 | n=2, p=3 versus 2 | Weight-zero labels {0,1}; 3>2 true, 2>2 false; {0,2} has gap 2 instead of 1 | Retain strict bound and component data | [r2] |
| 2.7 | n=2, q=9, T₁=2,T₂=1 | Hecke polynomial X²−2X+9; omitted norm gives X²−2X+1 | Retain norm and full conjectural hypothesis | [r2] |
| 2.8 | n=2, determinant ε | Dual determinant ε⁻¹, not ε; at ε(g)=2 mod 5 these are 3 and 2 | Retain dual conversion and conjectural premise | [r2] |
| 2.9 | C₂ projector over ℚ versus characteristic 2 | (1+g)/2 and (1−g)/2 multiply to 0; in characteristic 2, 2=0 so averaging inverse does not exist | Retain coefficient invertibility | [r2] |
| 2.10 | N=[[0,1],[0,0]] | N²=0, rank N=1; (2N)²=0 and rank 1 over ℚ, but 2N=0 mod 2 | Retain characteristic-zero rescaling | [r2] |
| 2.11 | φ=diag(5,25), Ne₂=e₁, filtration line e₁+e₂ in degrees 1–3 | Nφ=5φN; total tN=tH=3; stable line has tH=0<tN=1; weights {0,3} | Correct negative control for overbroad source lemma | [r2] |
| 2.12 | Tate extension and its local semisimplification | Original N rank 1, semisimplified N rank 0; Hodge multiset unchanged {−1,0} in Tate-module convention | Retain distinction from global transport | [r2] |
| 2.13 | Infinite avoidance ℚ̄ with prescribed quadratic completion | Disjointness would force [L:ℚ]=1; prescribed completion has degree 2 | Excluded by finite avoidance; retain | [r2] |
| 2.14 | Symplectic ranks 2 and 3, characteristic ≠2 | Rank 2 multiplier ε⁻¹; alternating 3×3 matrix has det=−det, hence det=0 | Retain even positive ranks | [r2] |
| 2.15 | H={0,1}, w=1 | w−H={1,0}=H; taking w=0 gives {0,−1}≠H | Retain conjugate multiplier relation | [r2] |
| 2.16 | Maximal constituent dimension d=2 | Required threshold 2(d+1)=6; choosing a rank-one constituent falsely lowers it to 4 | Retain maximal-d quantifier | [r2] |
| 2.17 | Empty family and trivial avoidance | Number of representation constraints 0; field constraints still present; identity extension has intersection F | Retain empty-family field clause | [r2] |
| 2.18 | Scalar 2I₂ over 𝔽₇ | det=4≠1; over ℚ(ζ₇) determinant image instead {1} | Retain field-dependent ramification exclusion | [r2] |
| 2.19 | n=2, l=3 | N>100n+100=300; auxiliary l′>2ln+5=17 and l′≡1 mod 2N | Numerical conditions not replaced by mere primality | [r2] |
| 2.20 | n=2, M=0; one monodromy block | Rank N=1, HT={0,1}, central slope nM=0, partial slope M=0; N=0 loses Steinberg information | Retain auxiliary monodromy comparison | [r2] |
| 2.21 | Reducible r̄=1⊕1 | Rank 2, two invariant lines and irreducibility false; semisimple does not imply irreducible | Correctly not applied to arbitrary input of §2.50 | [r2] |
| 2.22 | m=1 versus m=2 | Lower bounds max(2m+3,(m+1)²)=5,9; primes must be distinct and strictly larger | Retain both bounds | [r2] |
| 2.24 | m=2, n=1 | HT={0,2}; requested Sym⁰ has rank 1, determinant 1; m=1 is outside this particular switch | Retain sufficient-condition formulation | [r2] |
| 2.25 | n=1, d=1, ℓ=5 | Threshold 2(d+1)=4, 5≥4; one weight is distinct; ℓ=3 fails bound | Retain full local lift premises | [r2] |
| 2.26 | Two systems, same avoidance extension A/F | Desired intersections F′∩A=F for both; choosing F′=A gives intersection A≠F when [A:F]=2 | Common disjointness is substantive | [r2] |
| 2.27 | n=2 and empty auxiliary prime set | Multiplier ε̄⁻¹, weight list {0,1}; number of prescribed unramified primes 0 | Retain later-extension avoidance condition | [r2] |
| 2.28 | n=1, p=5, q=11 | q mod p=1; rank 2 regular N has N²=0≠N; q=7 gives residue 2 and fails | Retain Steinberg congruence/local lift premises | [r2] |
| 2.29 | A[5] and its dual at cyclotomic value 2 | Determinants 2 and 3 mod 5; product 1 | Supplier's Weil-pairing convention matches | [r2] |
| 2.30 | Exceptional √−11 curve at (37,a=14),(89,a=37) | #E=42,75; traces −4,15; mod-5 pairs (tr,det)=(1,2),(0,4), latter roots ±1 | Counts pass; arithmetic inputs are now owned targets, previous R01 repaired | [r2] |
| 2.31 | Sym²ⁿ⁻¹ for n=1,2 | Ranks 2,4; determinant exponents 1,6 on Tate representation | Retain conditional Conjecture B premise | [r2] |
| 2.32 | n=2 | ℓ>2(n+1)=6 accepts 7, rejects 5; distinct weights remain required | Retain strict inequality | [r2] |
| 2.33 | n=2 | ℓ≥6 accepts prime 7, rejects 5; output rank still 2 | Retain totally-real and PD restrictions | [r2] |
| 2.34 | H={0,1}, multiplier weight 1 at conjugate places | Dual labels {0,−1}, adding 1 gives {1,0}; an unrelated conjugate lift need not have this list | Retain polarized local prescriptions | [r2] |
| 2.35 | Empty family; family of two systems | Number of automorphy obligations 0 or 2; number of returned fields remains 1 | Retain simultaneous quantifier | [r2] |
| 2.36 | Extremely regular labels {0,1,3,7} versus {0,1,2,3} | Pair sums first {1,3,7,4,8,10}, six distinct; second includes 0+3=1+2=3 | Extreme regularity is not ordinary regularity | [r2] |
| 2.37 | E with CM versus non-CM | Both rank 2; CM can split into 1+1 characters after extension, so isobaric branch matters | Retain potential, conditional assertion | [r2] |
| 2.38 | n=1, m=2 | Sym⁰ rank 1, HT={0}; n=2 yields rank 2, HT={0,2} | Retain n-dependent extension and good-place level | [r2] |
| 2.39 | m=1,2; H=H¹(E) | Ranks 2,3; determinants ε⁻¹, ε⁻³; weights {0,1}, {0,1,2} | Retain common elliptic convention | [r2] |
| 2.40 | Odd rank 3, c²=1 | Odd polarized pattern (+,+,−) gives trace 1; its negative gives −1, unlike unrestricted trace 3 | Retain parity and sign hypotheses | [r2] |
| 2.41 | n=2; virtual A=±χ | Threshold ℓ≥6; both virtual norms (A,A)=1 but dimensions +1,−1 | Nonnegative dimension excludes −χ; retain criterion | [r2] |
| 2.42 | Direct sum of two distinct rank-one systems | Total rank 2=1+1; constituent count 2, not a single cuspidal rank 2 | Retain direct-sum conclusion | [r2] |
| 2.43 | j=1 versus j=2 constituents | Self-pole orders −j=−1,−2; cuspidal pole order −1 forces j=1 | Weaker comparison inputs precede discharge of the full-export premise; previous R04 repaired | [r2] |
| 2.44 | Symⁿ⁻¹ H, n=2,3 | Rank 2,3; determinant exponents −1,−3; extension killing residual image has image size 1 | Retain residual-field avoidance | [r2] |
| 2.45 | K={1,2,4} versus {1,2,3} | Eight subset sums 0,…,7 in first; second has 3=1+2, so fewer than 8 distinct | Retain subset-sum condition | [r2] |
| 2.46 | Rank-one system versus rank-two direct sum | Decomposition ranks 1 and 1+1=2; repeated same character gives repeated labels and fails regularity | Distinct from the supplier’s polarized-constituent lemma; retain | [r2] |
| 2.47 | Rank-two local extension versus semisimplification | N rank 1 versus 0; identical diagonal constituents, so equality after ss cannot recover N | Retain coefficient-prime geometric argument | [r2] |
| 2.48 | GSp₂=GL₂ | Standard rank 2, alternating multiplier=det; wedge² rank 1 carries that same multiplier | Retain chosen geometric lift and potential automorphy | [r2] |
| 2.49 | Pure rank-one Frobenius root α, weight w | abs(α)²=qʷ; dual has abs(α⁻¹)²=q⁻ʷ; product 1 | Retain dual in functional equation | [r2] |
| 2.50 | F=ℚ(i), n=2, ℓ=2, r̄=1⊕1; odd Dwork N | Rank 2, image size 1, semisimplicity true; both source and README allow prime 2; projector denominator N^(N−2) is odd, hence a 2-adic unit | Previous R02 repaired; additional 2-adic comparison is an owned prerequisite | [r2] |
| 2.51 | n=2, ℓ=2 versus 3 | ℓ>n is false,true; ACC+ lifting theorem requires true | README corrects source proof gap; retain | [r2] |
| 2.52 | F=ℚ(i), exceptional E₀; √−11 arithmetic controls | Extra arithmetic hypotheses at the endpoint: 0; §2.30 now supplies them as targets. Independent traces −4,15 | Previous R01 repaired; finiteness of X₀(15)(F) remains the stated field premise | [r2] |
| 3.1 | Oscillator m=0,1; polarized plane vectors (1,0),(0,1) | Energies (2m+1)/2=1/2,3/2; commutator xy′−x′y=1, doubled cocycle gives 2 | Retain cover and factor 1/2 | [r2] |
| 3.2 | Identity Weyl element; torus Levi equal to group | Normalized intertwiner 1, weight 1; rescaling by −1 gives −1 | Retain normalization and weighted input | [r2] |
| 3.3 | Rank-one exterior square; GL₂ roots 2,3 | Exterior degrees 0,1; factors 1 and (1−6χ(ϖ)q⁻ˢ)⁻¹; symmetric roots 4,6,9 | Retain distinction | [r2] |
| 3.4 | Quadratic rank-one χ; det-one cuspidal GL₂ | χ²=1 gives symmetric zeta pole order −1, exterior factor 1; GL₂ exterior zeta pole order −1 | Type assignments agree | [r2] |
| 3.5 | Aφ=1 versus C₂ | Character groups have sizes 1,2; C₂ trivial character selects one generic member | Retain enhanced fibre, not an injective unenhanced map | [r2] |
| 3.6 | Block dimensions (), (3), (1,1), (1,2) | Sign kernels {()}, {0}, {00,11}, {00,01}; sizes 1,1,2,2 | Determinant constraint correct | [r2] |
| 3.7 | Residue q=9, coefficient prime 5 | q³ᐟ²=27; coefficient-prime substitution 5√5 has square 125 instead of 729 | Retain q normalization | [r2] |
| 3.8 | SO₁; SO₃ with 1⊠ν₂ | Standard parameter dimensions 0 and 2; component group trivial in each test | Retain empty parameter and parity | [r2] |
| 3.9 | Yoshida versus one rank-four cuspidal block | Standard dimensions 2+2=4 versus 4; constituent counts 2 versus 1 | General type distinguished from discrete | [r2] |
| 3.10 | Coefficient field degree 1; cubic character twist | Abelian dimension 2, H¹ rank 4; twist determinant χ⁴ε⁻²=χε⁻²≠ε⁻² | Trivial finite nebentypus is essential; conjecture retained | [r2] |
| 3.11 | Ordinary surface H¹ | Rank 4, labels {0,0,1,1}; not four distinct labels | Regular-weight residual premise and singular-weight conclusion distinguished | [r2] |
| 3.12 | U(1) versus U(2) | Required block signs (−1)ᴺ⁻¹ are +1,−1; replacing by constant +1 fails N=2 | Retain parity and multiset qualification | [r2] |
| 3.13 | SL₂ Klein-four parameter; split SO₂ | Component groups C₂² and 1; enhancement counts 4 and 1; even-orthogonal χ and χ⁻¹ share orbit | Retain enhancement/outer action | [r2] |
| 3.14 | GL₂ with trivial centre, χ=1 | ∧²π=1, partial zeta order at 1 is −1; removing all places gives 1, order 0 | Finite-S hypothesis excludes false control | [r2] |
| 3.15 | Tempered component group C₂ | Component character count 2; p-adic bijection gives 2 labels, archimedean injection only ≤2 | Scope control; nonseeded source not independently certified this round | [r2] |
| 3.16 | Central sign group C₂ | η(z)=+1 and −1 select disjoint singleton character sets; imposing both gives empty set | Retain inner-form central character | [r2] |
| 3.17 | Two local C₂ characters | Global products (+1)(+1)=+1 and (+1)(−1)=−1 | Matching εψ is a genuine global constraint; source-certification limitation below | [r2] |
| 3.18 | Sφ=C₂, central z nontrivial | Two enhancements, one with η(z)=+1 and one −1; split/nonsplit signs separate them | Retain across-form versus fixed-form distinction | [r2] |
| 3.19 | GSp₂=GL₂ with nontrivial quadratic self-twist | Refined LLC fibre size 1; self-twist subgroup size at least 2 | Do not identify those cardinalities | [r2] |
| 3.20 | Compact SU₂, singular λ=−ρ | O(−1) on ℙ¹ has H⁰=H¹=0; weak-range pairing 0 does not imply nonzero induction | Retain strict/nonzero conditions | [r2] |
| 3.21 | L=G | u=0, induction degree 0, Weyl quotient has one element | Character case retained | [r2] |
| 3.22 | g=2, ψ=1⊕δ₁⊠R₂, k=2 versus 1 | Dimension 5, infinitesimal list {1,0,0,0,−1}; 2k>3 gives 4>3 true, 2>3 false; a(ψu)=1≠3,5 | Same infinitesimal character does not imply membership | [r2] |
| 3.23 | Generic global parameter with C₂ sign | Diagonal product +1 yields m=1; −1 yields m=0 | Generic multiplicity condition retained | [r2] |
| 3.24 | n=1, r=4 versus 3 | 2n<r−1 gives 2<3 true, 2<2 false; extended dimensions 2+(2r−2)=2r | Retain strict stable-range bound | [r2] |
| 3.25 | GL₂ normalized induction with exponents ±1/2 | Semisimple roots same for its two constituents; N ranks 0,1 | Generic standard-module hypothesis cannot be dropped | [r2] |
| 3.26 | General type versus Yoshida | Component groups 1 and C₂; required nongeneral assembly has two characters rather than one | Do not infer full classification from general-type export | [r2] |
| 3.27 | Two indexing pairs representing same π | Coefficients 1+1=2, not multiplicity 1 for the isomorphism class | Correct warning; retain | [r2] |
| 3.28 | Two rank-two Hodge lists {0,1}, Yoshida twist ε⁻¹ | Combined shifted list {1,2,1,2}; determinant of each block ε⁻¹·ε⁻²=ε⁻³ | Retain rank-dependent twist | [r2] |
| 3.29 | Wall (p,0), p=1 | Minimal K-types (2,2),(2,0); 4 limits on restriction become 2 full-group members; p=0 excluded | Full-group versus restriction control; retain | [r2] |
| 3.30 | p=5, t=4 versus t=1 | ε̄⁻²ᵗ=ε̄⁻⁸=1; at ε̄=2, ε̄⁻²=4≠1 | Retain divisibility on weight shift | [r2] |
| 3.31 | General-type and Yoshida transfers | Rank 4 with one constituent versus 2+2; second yields reducible characteristic-zero realization | Residual irreducibility selects general-type branch | [r2] |
| 3.32 | μ=(3,3;0), λ=(2,1;−6) | Central weights +6,−6 cancel; spin exponents −3/2,−5/2,−7/2,−9/2 sum −12=2(−6) | Sign normalization agrees | [r2] |
| 4.1 | Scalar rank-two subgroup; rank one | Two repeated eigenvalues preclude regularity in rank 2; rank-one projector=1; c(aI)=−aI | Retain full adjoint action, including at p=2 | [r2] |
| 4.2 | n=1 or ℓ∣n | n>1 fails at 1; n=3,ℓ=3 has n mod ℓ=0 | Retain excluded ranks and coprimality | [r2] |
| 4.3 | φ=2,γ=3; rank-one trivial family | d⁰(1)=(1,2), d¹d⁰=2−2=0; Euler 1−2+0=−1. E[ε]/ε² is nonreduced but allowed by the supplier | Conventions pass; shared theory now imported, previous R03 repaired | [r2] |
| 4.4 | n=1, q=9 | Level-raising ratio congruence becomes ξ₁/ξ₂≡9; target rank 2n=2, not characteristic-zero equality with ξ₁⊞ξ₂ | Retain residual comparison | [r2] |
| 4.5 | n=3, refinement roots 1,−1 | Sym² roots 1,−1,1; collision count 2 distinct instead of 3 | n-regular locus essential | [r2] |
| 4.6 | 2-adic boundary weight parameter | For v₂(w)=1/2, the j-th slope j·v₂(w) gives 1/2,1,3/2 for j=1,2,3 | Boundary proportionality control; not a global slope claim | [r2] |
| 4.7 | A seed and another point on connected propagation chain | Fixed symmetric-power rank n on both; taking n=2 gives original rank 2 at each endpoint | Preserve n and component hypotheses | [r2] |
| 4.8 | Sym² of quadratic induction | Rank 3=2+1; initial theta-series power is noncuspidal before raising | Steinberg/raising step cannot be omitted | [r2] |
| 4.9 | Seed at n=3 | Sym² rank 3 and HT {0,k−1,2(k−1)}; k≥2 makes both gaps k−1≥1 | Regularity control; retain | [r2] |
| 4.10 | α/β=−1 and n=3 | i=1 gives −1≠1, i=2 gives 1=1 | A congruent form needs the n-regular improvement | [r2] |
| 4.11 | p=2,a=3,n=4 | pᵃ=8>max(5,2n−1)=7; p>n is false | Size condition differs from a prime lower bound; retain other hypotheses | [r2] |
| 4.12 | Δ and n=2,3 | Sym¹ rank 2; Sym² rank 3 with HT {0,11,22} | Level-one regularity check; retain | [r2] |
| 4.13 | Binary icosahedral irreducibles; Sym⁵ | Dimension-square sum 1+4+4+9+9+16+16+25+36=120; central −I acts on Sym⁵ by −1, trace −6 | README's correction of source table passes | [r2] |
| 4.14 | Compact group C₂ | Counts N₊,N₋; trivial average (N₊+N₋)/N=1, sign average (N₊−N₋)/N→0 implies each proportion 1/2 | Retain trivial-character counting input | [r2] |
| 4.15 | n=1,2 | Sym⁰ roots {1}, rank 1 at every place; Sym¹ retains rank 2 and original N | All-place predicate distinguishes semisimple-only matching | [r2] |
| 4.16 | Quadratic induction versus regular non-CM | Sym² has ranks 2+1, reducible; Artin twist has labels {a,a}, gap 0 | Excluded branches are genuine | [r2] |
| 4.17 | n=0,1,2 | γ₀=Γℝ(s), γ₁=Γℂ(s), γ₂=Γℝ(s)Γℂ(s); middle Sym² vector fixed by c, sign +1 | Retain gamma sign and zeta pole at n=0 | [r2] |
| 4.18 | Conjugate weights (2,0),(3,1) | Cross sums 2+1=0+3=3, differences 2,2, so k=4; coordinates are unequal | Parallelity is difference equality | [r2] |
| 4.19 | q=4,m=1, abs(α)=3 | n=3 gives abs(α)²=9>4^(1+1/2)=8; purported unbounded-power bound already fails | Unbounded powers force abs(α)=2 | [r2] |
| 4.20 | Semistable multiplicative place | WD monodromy rank 1, one accessible refinement; supercuspidal Jacquet dimension 0 | Semistable route fits nonzero-Jacquet premise | [r2] |
| 4.21 | m=1, n=1,3 | Purity weight 1 gives abs(α)²=q; Sym⁰ rank 1, Sym² rank 3, determinant ε⁻³ | Retain m=1 ACC+ branch and good-place scope | [r2] |
| 4.22 | n=p+r=8 with p=5,r=3 | 0<3<5; lower ranks p,r,p−r are 5,3,2, each <8 | Induction lowers rank | [r2] |
| 4.23 | Tensor labels {0,1} and {0,2} | Sum list {0,1,2,3}; replacing second list by {0,1} yields {0,1,1,2} | Retain no-collision condition | [r2] |
| 4.24 | m=0,1,2 | Boundaries Re s≥1,3/2,2; m=0 gives ζF with pole order −1 at 1 | Positive-power restriction correct | [r2] |
| 4.25 | ST=C₂ or trivial | Sign character integral 0 for C₂; trivial character integral 1 in both groups | Nontrivial characters alone do not count primes | [r2] |
| 4.26 | k=2, norm 9 | Coefficient rank (k−1)²=1; bound 2·9¹ᐟ²=6, not 2√3 | Norm and parabolic restriction retained | [r2] |
| 4.27 | Normalized f versus 2f; elliptic coefficient at norm 5 | Constant normalization 1 versus 2; #E=8 gives c(𝔭)=5+1−8=−2 | Scaling and point-count controls pass | [r2] |
| 4.28 | Test functions 1 and 2cosθ | SU₂ integrals 1 and 0; CM-in-F U(1) has a different distribution despite same total mass | Non-CM and conjectural premise retained | [r2] |
| 4.29 | Symⁿ, n=1,2 | Ranks n+1=2,3; determinant exponents 1,3; n=0 instead gives zeta pole | Retain positive powers | [r2] |
| 4.30 | SP₈ induction split 8=5+3 | Smaller required ranks 5,3,2; rank 8 output has HT labels 0,…,7 for weight two | General totally-real theorem distinguishes older bounded results | [r2] |
| 4.31 | F=ℚ; F=ℚ(√5) | Sym⁶/⁸ ranks 7/9; [ℚ∩ℚ(ζ₅):ℚ]=1 but [ℚ(√5)∩ℚ(ζ₅):ℚ]=2 | Sixth-power source restriction retained | [r2] |
| 4.32 | n=2 versus 0 | Sym² degree 3; Sym⁰ degree 1, ζ has pole at 1 | Positive-range analytic claim avoids boundary counterexample | [r2] |
| 4.33 | Strongly irreducible versus induced rank-two system | Sym² degree 3; induced branch splits 2+1, so constituent dimensions ≤2 rather than one cuspidal 3 | Both branches retained | [r2] |
| 4.34 | f=1, 2cosθ, (2cosθ)² | (2/π)∫sin²=1; odd cosine integral 0; (8/π)∫cos²sin²=1 | Density and trace normalization pass | [r2] |
| 4.35 | Hilbert weights 2 and 3 at two real places | Parities 0,1 differ; each kᵥ−1 positive (1,2); n=3 local gaps remain 1 and 2 | Mixed-parity scope retained | [r2] |
| 4.36 | n=2,3; quadratic induction as negative control | Sym¹ rank 2; Sym² rank 3; induced input decomposes 2+1 and fails non-induction premise | All-place cuspidal assertion retains the exclusion | [r2] |
| 4.37 | Degree 0 versus degree 1 | L(Sym⁰π)=ζF, pole order −1 at 1; positive standard cuspidal degree avoids that pole | Degree-zero exclusion retained | [r2] |
| 4.38 | k=2,q=9 | recᵀ eigenvalue modulus 9¹ᐟ²=3; unitary normalized modulus 1 | Retain normalization twist | [r2] |
| 4.39 | Determinant image μ₂ versus μ₃ | det diag(−1,1)=−1∈μ₂ but not μ₃; det diag(ζ₃,1)=ζ₃∈μ₃ | Group definition discriminates components | [r2] |
| 4.40 | q=9,k=2, roots 3 and −3 or 3 and 3 | Coefficients 0 or 6; triangle bound 2√9=6 | Correct norm-power bound | [r2] |
| 4.42 | ψ=1 versus order-two ψ | Determinant component count 1 versus 2; each order-two component has Haar mass 1/2 | Retain ST(π), not always SU₂ | [r2] |
| 4.43 | k=2, principal prime norm 9 | Coefficient rank 1, eigenvalue bound 6; dropping parabolic kernel admits different Eisenstein spectrum | Retain parabolic/principal conditions | [r2] |
| 5.1 | SO₃ versus Sp₂ | Standard dual dimensions 2 versus 3; pole types exterior versus symmetric | Retain dual-group dimension and total-centre constraint | [r2] |
| 5.2 | GL₁ L-map (z,w)↦(z,1) | Projection becomes 1 instead of w; identity map keeps w | Non-equivariant map excluded; conjectural status retained | [r2] |
| 5.3 | GL₂ roots q¹ᐟ²,q⁻¹ᐟ² | Same semisimple roots, two possible N ranks 0,1 | Semisimple assignment alone cannot be full LLC | [r2] |
| 5.4 | One symplectic GL₂ block | Total dimension 2, target SO₃; repeating same block gives multiplicity 2 and fails distinctness | Retain discrete generic parameter hypothesis | [r2] |
| 5.5 | Two distinct symplectic blocks of rank 2 | Total rank 4, target Mp₄; two distinct labels pass multiplicity-free test, repeated label has multiplicity 2 | Retain square-integrable descent domain | [r2] |
| 5.6 | Character χ versus χ₁⊕χ₂ | Ranks 1 and 2; latter has two invariant character lines and isobaric 1+1 match | Irreducibility/cuspidality distinction retained | [r2] |
| 5.7 | GL₁ modification and ℙ¹ Satake fibre | Degree 0→1; H⁰,H² ranks 1,1 with twists 0,−1, respectively | Neutral stratum alone loses degree 1 | [r2] |
| 5.9 | Tensor unit; zero/one free generators | Unit action sends Wψ to Wψ; parameter spaces Ĝ⁰=point and Ĝ¹=Ĝ retain conjugation stabilizers | Adjunction not promoted to equivalence | [r2] |
| 5.10 | GL₂ with N=0 versus regular rank-one N | Equal semisimple parameter, monodromy ranks 0,1; support data must keep them distinct | Retain actual categorical conjecture | [r2] |
| 5.11 | q=4, proposed abs(α)=3/2 | (3/2)²=9/4>√4=2, violating n=2 bound; with abs(α)=1 all powers remain 1<2 | Unbounded powers force unit modulus | [r2] |
| goodReductionPrimes | E:y²=x³−x+1, bounds 0,1,5,7 | Sets ∅,∅,{3,5},{3,5,7}; Δ=−368. Scaling x by 25 and y by 125 multiplies Δ by 5¹² but leaves minimal good primes unchanged | APIs and discriminating Checks now present; previous R07 repaired | [r2] |
| frobeniusAngle | Same E, p=5,7 | Counts 8,12; traces −2,−4; angles arccos(−1/√5), arccos(−2/√7); roots −1+2i, −2+i√3 have squared moduli 5,7 | Positive denominators and Checks agree; previous R07 repaired | [r2] |
| satoTate_elliptic | Empty finite prefix, f=1 | Lean prefix value 0/0=0; limiting integral 1; a finite prefix does not change the limit | No total-division defect | [r2] |

There are 203 adversarial rows: 46 freshly evaluated rows and 157 inherited rows. The new genus, determinant, averaging, damping and decay-threshold arithmetic was also evaluated with exact rational arithmetic. Every sampled target, the headline families and each repaired finding have controls. The table tests the specification; it does not purport to formalize the deep source proofs.

## Not verifiable

- No source needed for the changed passages was unavailable. No missing-source request remains. The sources were read legally through the service.
- The incremental brief excludes a fresh audit of unchanged source locators. In particular, this round's unchanged seeded targets inherit the computed controls above, not a claim that all 15 source texts were reopened. The previous report's source-certification limits and its other source errata remain recorded in [r2].
- BCGNT Theorem G was read in arXiv v3 at p.11; the README's published p.10 locator is distinguished rather than silently treated as the preprint page.
- The refreshed supplier sections establish ownership and scope, not implemented proofs. Broad unchanged layer-level dependencies are inherited from [r2]; no exhaustive new reduction of their proof routes to formal declarations was performed.
- The conclusions are about this folder at the requested head. No pull-request file was edited, and no comment, approval or merge was sent.

## Source issues

- **Gap** in marshall at §3, pp.1057–1059: the source says the cited theta-lifting results establish Ramanujan for all Bianchi forms used; it should retain Ramanujan as a hypothesis, now supplied by BCGNT Theorem E; affects the proof; corrected in print at Erratum, JAMS 25 (2012), pp.615–616.

This existing source gap was rechecked at marshall lines 355–358 and 424–433 and bcgnt-2025 lines 547–551. The repaired roadmap explicitly retains and discharges the hypothesis.

[r2]: PRREVIEW-ModularityAndLanglandsExtensions~2.md
