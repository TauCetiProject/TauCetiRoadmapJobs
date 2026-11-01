# Review of VectorBundlesAndIsocrystals (pull request #1205 at c7a0b33)

**Verdict:** accepted

No findings remain. This folder is ready for a human’s final approval; this review does not approve or merge the pull request.

Incremental re-review of 41 changed lines since f805de8. Only README.md changed. The repairs, their supplier contracts and dependent comparisons were examined; the unchanged mathematics is carried forward explicitly below. No pull-request file was changed.

## Previous findings

- R01 — repaired: README:14,20,68,70,1813,1847 distinguishes supplied perfectoid loci/equivalences from the intrinsic characteristic-p interface; imports the global isogeny comparison; retains actual integral models, fixed-section sheaves and untilt compatibility.
- R02 — repaired: README:108 names CS Proposition 3.3.1; README:2052 identifies the 383-page FS edition with its matching SHA-256. The annulus hypotheses and mathematical targets are unchanged.

## Verified sound

### Gate, scope and elaboration

The reviewed head is `c7a0b335d07e241ea282a8ada318adeb6b973c99`. The diff outside `TauCetiRoadmap/VectorBundlesAndIsocrystals/` is empty, and the worktree is clean. The worker’s gate passed, including its build. The independently rerun scanners also passed, and `lake build TauCetiRoadmap.VectorBundlesAndIsocrystals.Suggested` completed successfully. Direct `lake env lean` elaboration of `Suggested.lean` passed with only the warning for the admitted headline theorem.

The independent dependency check returned exactly:

```text
depcheck: 205 roadmaps, 1467 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The added supplier edges point to earlier owners. Within Layer 6, the changed integral comparison uses pure-model trivialization (README:1733) and ring/sheaf comparison (1805); neither depends on that integral comparison. The downstream twisted comparison (1864) and integral boundary/torsor targets (2016–2034) retain the required integral data. No route restriction, computational algorithm, new sorry’d data, placeholder, import or `set_option` was introduced.

A fresh scratch copy with `#check @name` for all four declarations elaborated. Each signature agrees with the README and the worker’s extraction; no binder changed or disappeared. The theorem still has prime p, positive f, algebraically closed characteristic-p k, finite-dimensional V and bijective semilinear Frobenius. The supporting decomposition allows arbitrary field/scalar data but asserts existence only in the headline’s Laurent-series setting. Positive block ranks exclude zero denominators.

The unchanged single admission was retried with the one-tactic alternatives `simp`, `rfl` and `infer_instance`; none closed it. The pinned rank-one Witt classification is not an `exact` substitute for an arbitrary-rank Laurent-series classification. There is no padding finding.

### Repair mathematics and source verification

Four works were fetched through the legal sources service: KL from arXiv v5, CS from the publisher’s open PDF, and FS/SW from the author’s page. CS initially needed an explicit publisher-open classification; retrieval then succeeded. No source text was put in the pull request and no missing-source request remains.

- **KL analytic hypotheses:** Definition 2.4.1, printed p.38 (KL line 1484), explicitly includes a topologically nilpotent unit; Hypothesis 5.0.1, p.113 (KL line 4446), includes the analytic field. The additions at README:1695,1801,1843 retain these conditions. The completed perfection of the Laurent field is an admissible example; a trivially valued finite field is not.
- **Intrinsic loci:** Lemma 8.5.11, p.173 (KL line 6763), concerns modules on a perfect uniform characteristic-p space. Definition 8.2.11 and Lemma 8.2.12, pp.160–161 (KL line 6314 and line 6328), give the real-quotient meaning of partial properness and tautness. README:1813 states these hypotheses and correctly attaches the loci to M. The three new Checks distinguish a unit, a nonzero-slope line and a disconnected base.
- **Integral global rings:** Theorem 8.5.3, pp.169–170 (KL line 6645), supplies precisely the Spec(R), complete-subring, untilt, Witt and integral Robba categories, with scalar extension from the integral Robba ring to W(R). Its proof (KL line 6661 through line 6683) uses fixed-basis trivialization, the coefficient-ring intersection and effective descent. README:1847–1849 explicitly retains finite projectivity and makes integral limit effectivity a proof obligation; it does not infer projectivity from an arbitrary inverse limit.
- **Compatibility:** KL Theorem 3.6.5, p.89 (KL line 3500), requires the primitive degree-one ideal determining an untilt. Theorem 8.5.5 and Theorem 8.5.6, p.171 (KL line 6691 and line 6700), distinguish the perfectoid sheaf comparison from the global comparison after isogenies. The new text preserves both distinctions. Proposition 7.3.6, p.149 (KL line 5879), is the named earlier trivialization input, with a free pure model; finite projectives are handled locally and by the stated descent.
- **Geometric point:** SW Theorem 12.3.4, printed p.104 (SW line 4115), identifies the two integral module categories with finite free ℤ_p-modules; its preceding Definition 12.3.3 (SW line 4102) requires invertible Frobenius linearization. README:68 and 1854 agree, including rank zero.
- **Annuli locator:** CS Proposition 3.3.1, p.682 (CS line 1328), has rational positive endpoints and proves sheafiness of the relative affinoid annulus; Theorem 3.3.4, p.683 (CS line 1363), is the Robba-module/bundle equivalence. README:108 now calls 3.3.1 a proposition. Its additional general-coefficient/radius assertions still cite FS/KL; they are not attributed to CS alone.
- **FS edition:** The retrieved PDF has SHA-256 `9ab9efbd0df251bfa3b610d1d1d88a8dfb1bdf7c397bd04f4c277280d98ae905` and 383 page markers, ending at FS line 13878. FS §II.1 begins on printed p.47 (FS line 1784); the general-coefficient and equal-characteristic construction and the annular chart argument are there. The new reference matches the retrieved edition.

The seed again contains fifteen identical labels, “API”, without target identifiers. The previous report’s reproducible first-fifteen interpretation is retained. None of those API statements changed; their locator evidence is carried forward, not represented as a second full source audit:

| Sample | README API at f805de8 | Source evidence carried from [previous report][previous] |
|---|---|---|
| 1 | Finite isocrystals, 217 | FF lines 12848–12861, §8.2.3, pp.236–237: finite-dimensional semilinear objects and the coefficient convention. Mathlib's carrier itself does not impose finite dimension. |
| 2 | Coprime cyclic blocks, 259 | FF lines 12863–12878, p.237; Ked Definition 4.1.1, p.487: wrap exponent, denominator and sign. |
| 3 | Cyclic algebra, 319 | FF lines 12879–12910, Definitions 8.2.7/Proposition 8.2.8, pp.237–238: dimension r² and arithmetic invariant sign. |
| 4 | Analytic vector bundles, 390 | FS §II.2, pp.56–57; CS lines 1359–1366: finite locally free objects and annular Frobenius descent, not arbitrary sheaves. |
| 5 | Robba carriers, 424 | CS lines 1258–1314 and 1317–1366, §§3.2–3.3, pp.680–683: absolute versus relative completions. General E also uses FS §II.1. |
| 6 | Frobenius modules/lattices, 447 | KL lines 5803–5912, §6.3, pp.145–147: invertible linearization, actual models, purity and the distinction between local and global models. |
| 7 | Two-term complex, 486 | CS lines 1300–1314 and 1359–1366; FS §II.2: differential φ−1 and cohomological degrees 0,1. Finite-radius maps use a common smaller interval. |
| 8 | Isocrystal-to-bundle functor, 525 | FF lines 12863–12878, Proposition 8.2.6, p.237: tensor/dual and slope reversal, not full faithfulness across slopes. |
| 9 | Geometric algebraization, 585 | FS lines 2534–2543, Theorem II.2.7, p.64: algebraization after positive generation. Absolute ℚ_p overlap is imported from Part III. |
| 10 | Rank/determinant degree, 635 | FF §5.5, pp.162–164; FS geometric curve discussion: degree via determinant, zero rank excluded from slope division. |
| 11 | Saturated subbundles, 659 | FF lines 9699–9715, §5.5, p.164: strict subobjects, torsion-free quotients and generic-fibre saturation. |
| 12 | Stability, 683 | FF lines 9697–9698, Definition 5.5.5, p.164: roadmap correctly adds proper/nonzero restrictions missing from the displayed source definition. |
| 13 | HN filtration, 706 | FF lines 9630–9677, Theorem 5.5.3, pp.163–164: unique decreasing-slope filtration. |
| 14 | HN polygon, 730 | FF lines 9659–9673: vertices in rank/degree order, correcting the source's exchanged coordinates. |
| 15 | Global Proj map, 777 | FS lines 2544–2590, §II.2, pp.64–66: homogeneous charts and analytification; this is not generic Proj alone. |

### Computed checks of the changed statements

Here `K` is the completed perfection of `𝔽_(p^d)((t))` and `A=ℛ̃_K^int`. Numeric slopes use the README’s KL convention. These calculations test claims and conventions; they do not replace proofs of the general equivalences.

| Statement at this head | Instances tried | Values on both sides | Result / change |
|---|---|---|---|
| Scope and supplied perfectoid interfaces, README:14,68 | Spa(C), d=1, constant rank-one and rank-zero systems | Pure/étale loci for the unit are X/X; W(C♭) fixed sections are ℤ_p; zero fixed sections are 0. The supplied and intrinsic specializations give the same results. | Repaired R01: supplied perfectoid theorem is reused; the new work is the intrinsic formulation and compatibility. |
| Global isogeny contract, README:20,70 | c=0,d=1; integral unit versus p-monodromy | Unit lattice ℤ_p becomes ℚ_p and has slope 0 on each coefficient ring. Monodromy sends p^nℤ_p to p^(n+1)ℤ_p, a proper sublattice. | The rationalization contract includes the unit and excludes the non-global-lattice example. |
| KL base hypotheses, README:1695,1801,1843 | K with norm ∣t∣=1/2; trivially valued 𝔽_(p^d) | t is a unit and ∣t^n∣=2^(−n)→0. Every nonzero element of the finite field has norm 1, so no unit tends to 0. | Correct positive and negative controls; no chosen untilt is needed. |
| Relative annuli, README:108 | q=2, n=1, ∣π∣=1/2, ∣a∣=1/4, ρ=1, interval [1,2] | ∣π[a]∣₁=1/8; ∣φ(π[a])∣₁=(1/2)(1/4)²=1/32=∣π[a]∣₂. The endpoints 1,2 are positive rationals; 0 is not permitted. | The corrected CS locator supports this annulus; the Frobenius normalization is unchanged. |
| Unit locus and fixed sections, README:1813,1817 | d=1,2; rank-one coefficient Frobenius on a geometric point | Slopes are 0; pure and étale sets both equal {x}; coefficient fixed rings are ℤ_p and ℤ_(p²), respectively. | Both locus conditions and the coefficient extension agree. |
| Nonzero-slope and mixed module, README:1818 | φ^d(e)=pe at d=1,2, for p=2,3 | p^cφ^d fixes e for c=−1, giving KL slopes −1 and −1/2. Pure locus={x}; étale locus=∅. Adding the unit gives two unequal slopes, hence pure locus=∅. | The new sign witness agrees with README:1707,1723 and the supplier’s opposite analytic-degree convention. |
| Disconnected locus, README:1819 | Two points x₀,x₁ carrying coefficient Frobenius and p times Frobenius | Both fibres are pure; only x₀ has slope 0. Pure set={x₀,x₁}, étale set={x₀}. The identical coefficient sheaf cannot encode both sets without M. | The loci depend on the module; no common global pure slope is asserted. |
| Partial properness and tautness, README:1813 | Disjoint union of two geometric points; étale locus above | Real-quotient projection is identity on {x₀,x₁}; inverse image of {x₀} is {x₀}. This finite discrete subspace is taut. | The new KL definition and the locus witness agree. |
| Integral equivalence and fixed-section inverse, README:1847,1853 | Unit on Spec(K), no untilt chosen | K^(φ^d=1)=𝔽_(p^d), hence W(K)^(φ^d=1)=W(𝔽_(p^d))=ℤ_(p^d). A has the same fixed coefficients. A⊗_A W(K)=W(K), rank 1 on both sides. | Correct ring map and inverse; the inverse is a sheaf of fixed sections on general bases. |
| Fixed sections versus global vectors, README:1847 | Rank-one unramified local system over K with Frobenius monodromy −1 | Geometric fibre is ℤ_(p^d), rank 1; global invariants satisfy 2v=0, hence are 0, also when p=2. Étale-locally the fixed-section sheaf again has rank 1. | The newly explicit sheaf inverse excludes the wrong global-invariants construction. |
| Complete-subring compatibility, README:1847 | R₀=𝔽_(p^d)((t)), R=K; constant rank 2 | Both constant systems have fibre ℤ_(p^d)²; the resulting W(R)-module has rank 2. Reduction at p^m gives (ℤ_(p^d)/p^m)² on either side. | The completed direct-perfection comparison preserves the integral data. |
| Untilting compatibility, README:1847,1854 | R=C♭, d=1, two permitted marked untilt choices, ranks 0 and 1 | Each unit comparison has fibre ℤ_p and Witt fixed ring ℤ_p; each zero object has module 0 and fixed sections 0. | Overlap with the supplier is a compatibility requirement, not duplicated ownership. |
| Exact tensor structure, README:1847 | Split sequence 0→ℤ_p→ℤ_p²→ℤ_p→0; tensor two units | Ranks 1→2→1 correspond to A→A²→A and W(R)→W(R)²→W(R); kernels and quotients each have rank 1. Unit tensor unit has rank 1 on both sides. | Exactness and tensor directions agree. |
| Integral effectivity and descent, README:1849 | Compatible constant rank-r truncations, r=0,1,2 | lim W_m(R)^r=W(R)^r and lim(ℤ_(p^d)/p^m)^r=ℤ_(p^d)^r, with ranks 0,1,2. An unbounded product of nonzero copies would have infinite rank and is outside this finite-lattice hypothesis. | The repair requires finite projectivity/effectivity, rather than claiming it for arbitrary limits. |
| Invertible integral linearization, README:1855 | pφ on a line, p=2 and 3 | Modulo p the matrix is [0], determinant 0; after p is inverted its matrix is [p], inverse [p⁻¹]. | Correct exclusion from the integral category in both characteristics. |
| Rational p-monodromy, README:1856 | Lattice p^nℤ_p, n=−1,0,1 | Images are ℤ_p,pℤ_p,p²ℤ_p, respectively; each has index p in its original lattice. Rational rank stays 1. | Local rational étaleness does not supply a global integral object, including up to isogeny. |


### Unchanged adversarial calculations

The following 135 rows retain the numerical and structural witnesses from [the previous report][previous]. The first-column line numbers refer to f805de8, so the provenance is unambiguous. The three changed targets (relative annuli, adic loci and integral comparison) have been replaced by the fresh rows above. All fifteen sampled API blocks and the unchanged Lean headline remain covered. “Consistent” means that the listed instances produced no counterexample, not that an admitted theorem was proved.

| Statement at f805de8 | Instances and values on both sides | Result / change / provenance |
|---|---|---|
| 92 Ramified Witt and coefficient change | First ghosts (x₀,x₁) give (x₀,x₀^q+πx₁); in characteristic π, (0,1,0,…) and zero both have all ghosts zero. Equal-characteristic φ(π)=π, not π^q. | Consistent; ghost injectivity is not assumed.  Carried from [previous report][previous]. |
| 120 Integral period domain | On the boundary π=0 survives; on the punctured domain π is invertible. A ℤ_p lattice rationalizes to ℚ_p, not to zero. | Consistent; boundary deletion would lose the lattice.  Carried from [previous report][previous]. |
| 134 Analytic quotient | Frobenius shifts windows by q. Representatives y and φ(y) have the same orbit; an identity translate gives y itself. | Consistent; orbit topology alone gives no structure sheaf.  Carried from [previous report][previous]. |
| 146 Marked-untilt Cartier divisor | A primitive equation ξ and uξ, u a unit, give the same ideal; ξ² gives length two instead of one. The zero equation is not regular. | Consistent; marking and degree exclude the wrong model.  Carried from [previous report][previous]. |
| 161 Completed local periods | Completion at ξ gives B_dR⁺; B_dR⁺/(ξ)=C♯ and the first thickening has ideal (ξ)/(ξ²) with square zero. Changing ξ to uξ preserves all powers. | Consistent; completion retains nonreduced thickenings.  Carried from [previous report][previous]. |
| 175 Twists | O(1)⊗O(−1)=O; φ-basis multiplier for O(1) is π⁻¹, for O(−1) is π. Degree 1+(−1)=0. | Consistent; inverse convention excluded.  Carried from [previous report][previous]. |
| 187 Homogeneous sections | P₀=E, P₁·P₁⊂P₂; degrees 1+1=2. Zero belongs to every eigenspace but gives no Proj chart. | Consistent.  Carried from [previous report][previous]. |
| 213 Finite isocrystals (API 1) | Zero has rank 0 and empty spectrum; σ on L has rank 1, slope 0, fixed endomorphisms E. Zero Frobenius on L is not bijective. | Consistent; finite dimension is extra data/hypothesis.  Carried from [previous report][previous]. |
| 238 Mixed-characteristic comparison | p-Frobenius on the ordinary rank-one block is p^mσ on both carriers. At m=1 it is pσ, not σ or p⁻¹σ. | Consistent; supplier classification reused.  Carried from [previous report][previous]. |
| 255 Cyclic blocks (API 2) | D(1,2): Φ²(e_i)=πe_i, determinant −π, valuation 1, slope 1/2. D(−1,2): valuation −1, slope −1/2. D(0,2) fails coprimality gcd(0,2)=2. | Consistent at p=2,3; determinant sign does not change valuation.  Carried from [previous report][previous]. |
| 279 Equal-characteristic DM / Lean headline | Rank 0 has zero blocks, multiset ∅; rank-one π^mσ has {m}; two D(1,2) blocks have {1/2,1/2} and rank 4. Over F_p, the slope-zero Jordan matrix [[1,1],[0,1]] is not conjugate to identity. | Consistent; algebraic closure and block multiplicity are essential.  Carried from [previous report][previous]. |
| 295 Tensor and dual | D_(1/2)⊗D_(1/2) has rank 4 and slope 1, hence four rank-one D₁ blocks. Dual slope is −1/2; tensor with the dual has rank 4 and slope 0. | Consistent; no missing denominator multiplicity.  Carried from [previous report][previous]. |
| 305 Division endomorphisms | Simple rank-one endomorphisms are E; zero has no inverse. Rank-two simple block has E-dimension 4, while End of two trivial lines is M₂(E), containing nonzero singular maps. | Consistent; simplicity and nonzero hypotheses matter.  Carried from [previous report][previous]. |
| 315 Cyclic algebra (API 3) | r=1 gives E, invariant 0 mod ℤ. r=2 gives dimension 4; r=3,s=1 gives Π³=π⁻¹, invariant −1/3=2/3 mod ℤ. | Consistent; r=3 separates the sign missed by r=2.  Carried from [previous report][previous]. |
| 338 Arithmetic invariant | EndΦ(D(1,3)) has invariant −1/3; its associated bundle O(−1/3) has the same invariant. Dual block gives +1/3. | Consistent with arithmetic Frobenius.  Carried from [previous report][previous]. |
| 350 Coefficient adjunction | For an unramified extension of degree d, restriction multiplies rank by d; induction/restriction at d=1 returns rank r. Adjunction on one-dimensional identity data gives Hom(E,E)=E on both sides. | Consistent; no rank-preserving claim for d>1.  Carried from [previous report][previous]. |
| 364 Galois descent | The trivial rank-one object with trivial descent descends to E; over a finite residue field a nontrivial Jordan descent matrix remains nontrivial despite slope 0. | Consistent; forgetting descent would identify unequal objects.  Carried from [previous report][previous]. |
| 386 Analytic bundles (API 4) | Free modules of ranks 0,1,2 have local ranks 0,1,2; multiplication by a nonunit on a line is not a bundle isomorphism. | Consistent; local freeness excludes torsion.  Carried from [previous report][previous]. |
| 410 Annular descent | Identity gluing on a line yields rank 1; zero overlap map is not invertible and cannot glue a bundle. Two successive identity restrictions compose to identity. | Consistent.  Carried from [previous report][previous]. |
| 418 Robba carriers (API 5) | The constant 1 has norm 1 at every radius; π has norm ∣π∣. A series bounded on one compact interval need not be bounded on all radii. | Consistent; integral, bounded and full rings remain distinct.  Carried from [previous report][previous]. |
| 443 Frobenius modules (API 6) | Unit module with coefficient φ has slope 0 and integral lattice; πφ is invertible after π⁻¹ but not on the integral lattice. Zero map fails linearization on rank 1. | Consistent.  Carried from [previous report][previous]. |
| 468 Module/bundle equivalence | The unit maps to O; πφ maps to O(−1); zero maps to zero. Rank and tensor unit agree on both sides. | Consistent; generality beyond supplied specializations is stated.  Carried from [previous report][previous]. |
| 482 Frobenius complex (API 7) | Unit fixed coefficients give ker(φ−1)=E. A two-term complex in degrees 0,1 has zero H²; moving it to degrees −1,0 would shift that kernel to H⁻¹. | Consistent; actual common-radius differential required.  Carried from [previous report][previous]. |
| 511 v-descent | Identity cover has one object with identity cocycle; a two-chart rank-one cocycle g₁₂g₂₃=g₁₃ gives the same glued rank 1. A zero transition is excluded. | Consistent.  Carried from [previous report][previous]. |
| 519 Bundle functor (API 8) | D(1,2) maps to O(−1/2), rank 2, degree −1; D(−1,2) maps to degree 1. HomΦ(D₁,D₀)=0 while Hom(O(−1),O)=H⁰(O(1))≠0. | Consistent; isomorphism classes, not full category equivalence.  Carried from [previous report][previous]. |
| 549 Twist cohomology | H⁰(O)=E,H¹(O)=0; H⁰(O(−1))=0,H¹(O(−1))≠0; H⁰(O(1))≠0,H¹(O(1))=0. | Consistent; zero slope is separate from either strict sign.  Carried from [previous report][previous]. |
| 567 Geometric PID charts | At a degree-one point, its complement removes that point; two distinct such points have disjoint singleton supports, so the two complements cover X. A repeated point does not give a cover. | Consistent.  Carried from [previous report][previous]. |
| 581 Geometric algebraization (API 9) | O and O(1) retain ranks 1 and degrees 0,1 after analytification; identity and zero maps remain identity and zero. | Consistent; supplied absolute case is explicitly identified.  Carried from [previous report][previous]. |
| 603 Regular geometric curve | At an untilt point, maximal ideal (t), quotient C, dimension 1; the generic stalk is a field, dimension 0. A square-zero algebra C[ε]/ε² is not a regular local curve ring. | Consistent.  Carried from [previous report][previous]. |
| 611 Untilts/local rings | Ô_X,x=B_dR⁺, residue C_x; t≠0 and t mod t²≠0, but (t mod t²)²=0. Completion is not just the residue field. | Consistent.  Carried from [previous report][previous]. |
| 619 Picard | deg O(n)=n; O(1)⊗O(−1)=O has degree 0. O(1) cannot be isomorphic to O since 1≠0. | Consistent at a geometric base.  Carried from [previous report][previous]. |
| 631 Rank/degree (API 10) | O(1)⊕O(−1) has (rank,degree,slope)=(2,0,0). O(1/2) has (2,1,1/2). Zero has (0,0) and no slope, not the junk value 0/0. | Consistent.  Carried from [previous report][previous]. |
| 655 Saturation (API 11) | tB⊂B in a DVR has quotient B/t, torsion; saturation is B. 0⊂B is saturated with torsion-free quotient B. | Consistent; ordinary submodule differs from subbundle.  Carried from [previous report][previous]. |
| 679 Stability (API 12) | O is stable since it has no proper nonzero saturated subbundle. O⊕O is semistable but not stable; O(1)⊕O(−1) fails 1≤0. | Consistent; properness restriction repairs the source.  Carried from [previous report][previous]. |
| 702 HN (API 13) | For O(1)⊕O(−1), ranks 1,1 and slopes 1,−1 give filtration 0⊂O(1)⊂V. Zero has length 0. Equal-slope O² has one HN step. | Consistent.  Carried from [previous report][previous]. |
| 726 HN polygon (API 14) | Vertices (0,0),(1,1),(2,0) for O(1)⊕O(−1); O² gives (0,0),(2,0). At x=1 values are 1 and 0, although total degree is 0 for both. | Consistent; coordinates and majorization direction separated.  Carried from [previous report][previous]. |
| 765 Positive generation | For O(−1), twisting by n gives O(n−1); n=0 has H⁰=0 and cannot generate, n≥2 is positive and has H¹=0. Zero is generated by an empty family. | Consistent; “sufficiently large” is necessary.  Carried from [previous report][previous]. |
| 773 Proj map (API 15) | For homogeneous f of degree d>0, g/f^n has degree 0 when deg g=nd. f=0 produces the empty D₊(f); f=1 in degree 0 is not a positive-degree chart generator. | Consistent.  Carried from [previous report][previous]. |
| 797 Relative GAGA | The tensor unit and its identity map algebraize to themselves; zero bundle remains zero. Base change of O(1) has degree 1 on each geometric fibre. | Consistent; ringed curve required.  Carried from [previous report][previous]. |
| 805 Ample-line independence | Replacing O(1) by O(m),m>0, uses the m-th Veronese: O(mn) appears on both sides. m=0 has no positive growth and is excluded. | Consistent.  Carried from [previous report][previous]. |
| 815 Prüfer/coherent | In a DVR, ideal (t) is free rank 1 and kernel of B→B/t is (t); B/t is coherent torsion, not projective. Over a field the only ideals are 0 and B. | Consistent; coherence does not mean locally free.  Carried from [previous report][previous]. |
| 830 Invariant norms | For Φ(ae)=πφ_R(a)e, Φ(e)=πe and Γ₁=R^φ=1 e. Wrong multiplier π⁻¹ gives (Φ−π⁻¹)e=(π−π⁻¹)e≠0. | Consistent; repaired old R03.  Carried from [previous report][previous]. |
| 856 Profinite action | Trivial action fixes every section; multiplication by p on a spanning ℤ_p lattice gives pℤ_p≠ℤ_p, hence cannot be an automorphism preserving that lattice. | Consistent; boundedness is substantive.  Carried from [previous report][previous]. |
| 884 Two charts/cohomological dimension | Two affine opens give Čech terms C⁰,C¹ and C²=0 after the normalized cover complex; hence H²=0. Removing the same point twice leaves that point uncovered. | Consistent; distinct divisors needed.  Carried from [previous report][previous]. |
| 892 Tensor ampleness | O(a)⊗O(b)=O(a+b); a=b=1 gives O(2), positive. O(1)⊗O(−2)=O(−1), so positivity of both inputs matters. | Consistent.  Carried from [previous report][previous]. |
| 915 Positive powers | O(1)^⊗2=O(2), degree 2; zeroth power O has degree 0 and is not ample in this criterion. | Consistent; positive exponent retained.  Carried from [previous report][previous]. |
| 923 Positive line/presentation | O(1) is positive; O has slope 0 and fails strict positivity. A surjection from O(−d)^m has rank m≥rank target, not a zero-source presentation of a nonzero bundle. | Consistent.  Carried from [previous report][previous]. |
| 931 Cohomological ampleness criterion | Twists O(n) eventually kill H¹ and generate; the trivial twist leaves H¹(O(−1)) nonzero for every n. | Consistent; eventual quantifier separates the unit.  Carried from [previous report][previous]. |
| 939 Étale twists | An étale unit module corresponds to O; twisting by O(1) gives positive curve slope 1. Rank 0 remains 0. | Consistent.  Carried from [previous report][previous]. |
| 947 Affine sections | On an affine chart, free rank-two sections are A² and restrictions are componentwise; a nonunit multiplication A→A is not an isomorphism. | Consistent.  Carried from [previous report][previous]. |
| 967 Stable blocks | O(1/2) is stable of rank 2 and degree 1; O(1)⊕O(1) has the same slope 1 but is not stable. | Consistent; denominator/coprimality matters.  Carried from [previous report][previous]. |
| 975 Fixed-slope category | Two O(1/2) copies have endomorphisms M₂(D_1/2), E-dimension 16; one copy has dimension 4. Zero is the zero object. | Consistent.  Carried from [previous report][previous]. |
| 983 HN base change | Pullback of O(1)⊕O(−1) has the same polygon (0,0),(1,1),(2,0). Pullback of zero has empty filtration. | Consistent for geometric extension.  Carried from [previous report][previous]. |
| 995 Key extension | A nonzero extension 0→O(−1)→V→O→0 has V=O(−1/2), rank 2, degree −1; the zero class gives O⊕O(−1). | Consistent; nonzero class separates split and nonsplit.  Carried from [previous report][previous]. |
| 1009 Geometric classification | Rank 0 gives empty sum; O(1)⊕O(−1) and O² both have degree 0 but different slope multisets {1,−1} and {0,0}. | Consistent; degree alone cannot classify.  Carried from [previous report][previous]. |
| 1017 Hom/Ext | Hom(O(1),O)=H⁰(O(−1))=0; Hom(O,O(1))≠0. Ext¹(O,O(−1))=H¹(O(−1))≠0, while Ext¹(O(−1),O)=0. | Consistent in both directions.  Carried from [previous report][previous]. |
| 1025 Endomorphism comparison | End(O(1/2)) has dimension 4 and invariant 1/2; End(O(1/3)) has invariant 1/3, distinguishing the opposite algebra's 2/3. | Consistent.  Carried from [previous report][previous]. |
| 1037 Coherent classification | B/t² has length 2 and rank 0; B⊕B/t has rank 1 and torsion length 1. Torsion cannot be replaced by a bundle summand. | Consistent.  Carried from [previous report][previous]. |
| 1045 Finite étale curve algebras | E×E gives O_X×O_X, rank 2. E[ε]/ε² also has rank 2 but is not étale and is excluded. | Consistent; finite locally free alone is insufficient.  Carried from [previous report][previous]. |
| 1067 BC section/complex definition | BC(O)=underline E; for two connected components its sections are E². BC(O(−1)[1])=H¹(O(−1))≠0, whereas raw H⁰(O(−1))=0. | Consistent; sheafification and shift essential.  Carried from [previous report][previous]. |
| 1095 Lubin–Tate cover | Rank-one LT module has one-dimensional formal group and E-linear universal cover; multiplication by π is invertible on the cover, not on its integral lattice. | Consistent with universal-cover normalization.  Carried from [previous report][previous]. |
| 1105 Fundamental untilt sequence | 0→E→BC(O(1))→C♯→0 has Dimensions (0,1),(1,1),(1,0), and (0,1)+(1,0)=(1,1). | Consistent.  Carried from [previous report][previous]. |
| 1121 Scalar projectivization | Zero vector is deleted. E× acts transitively on nonzero vectors of a one-dimensional E-space, giving one point; quotienting all vectors would add a zero orbit. | Consistent.  Carried from [previous report][previous]. |
| 1149 Contracting quotient | γ^n(t,x)=(t,2^n x); norms tend to 0 forward, ∞ backward. Quotient T×ℚ₂×/2^ℤ=T×ℤ₂×; distinct Sierpiński specializations lie in relation closure but not relation. | Consistent repaired theorem; source's closedness claim false.  Carried from [previous report][previous]. |
| 1168 Ordinary BC properness | For O(1), the punctured E× quotient is Div¹; a zero bundle has empty punctured quotient. The unpunctured line includes a fixed zero orbit. | Consistent; puncturing matters.  Carried from [previous report][previous]. |
| 1182 Small-slope resolution | A rational 1/n satisfies 0<1/n≤1; a zero slope does not satisfy strict positivity. A rank-zero bundle needs no nonzero generators. | Consistent; no unsupported negative-slope presentation.  Carried from [previous report][previous]. |
| 1192 Positive presentations | For a positive line, finite presentation has source rank at least 1; zero source cannot surject. For the zero target, the empty presentation is exact. | Consistent.  Carried from [previous report][previous]. |
| 1202 Two-term BC geometry | Zero differential [O(−1)→O(1)] gives H¹(O(−1))⊕H⁰(O(1)), Dimension (1,−1)+(1,1)=(2,0). With O in degree 0, the strict-positive smoothness hypothesis fails. | Consistent.  Carried from [previous report][previous]. |
| 1212 Positive dimension | For [O(−2)→O(1)] with zero map, dimension 1−(−2)=3 and height 1−1=0; summands have Dimensions (2,−1),(1,1). | Consistent; dimension is not rank or height.  Carried from [previous report][previous]. |
| 1226 Absolute signed BC | D(−1,1) gives O(1), unshifted; D(1,1) gives O(−1), shifted. Both punctured constructions have dimension 1, but heights +1 and −1. | Consistent; mixed signs not covered.  Carried from [previous report][previous]. |
| 1236 Effective divisors | Degree 0: empty divisor and singleton moduli. x+x has degree 2 and ideal (t²), unlike reduced x of degree 1; Σ₂ quotient retains multiplicity. | Consistent.  Carried from [previous report][previous]. |
| 1253 Punctured spaces/quotients | O(d),d≥1, has positive degree d. Quotient by π^ℤ still has residual O_E× action; quotient by E× removes it. Relative spatial representability does not assert absolute quasiseparatedness. | Consistent; neither quotient is silently identified with the other.  Carried from [previous report][previous]. |
| 1263 Quaternion presentation | Nonsplit extension has rank 2, degree −1, slope −1/2. Determinant-preserving automorphisms have reduced norm 1; a central scalar a has reduced norm a² and is excluded if a²≠1. | Consistent; D× is too large.  Carried from [previous report][previous]. |
| 1273 SL₂ presentation | An independent pair (s₁,s₂) has s₂≠a s₁ for every a∈E; dependent pair (s,s) lies in the deleted diagonal. diag(a,1) has determinant a, so is excluded when a≠1. | Consistent at p=2,3 as well.  Carried from [previous report][previous]. |
| 1287 Sympathetic Vector Spaces | V₁(C)=C and constant ℚ_p(C)=ℚ_p; V₁×V₁ evaluates to C². Zero functor has zero values and dimension 0, not dimension 1. | Consistent under the stated countability assumptions.  Carried from [previous report][previous]. |
| 1310 BC presentations | For 0→ℚ_p→U₁→C→0, dim=1 and height=1; C/ℚ_p instead has Dimension (1,−1). Swapping kernel and cokernel reverses height. | Consistent.  Carried from [previous report][previous]. |
| 1333 Faithful Banach realization | C and C⊕ℚ_p have BC Dimensions (1,0),(1,1), although their underlying topological ℚ_p-spaces are isomorphic. Faithful does not mean full. | Consistent.  Carried from [previous report][previous]. |
| 1341 Abelian category/dimension | The fundamental sequence gives (1,1)=(0,1)+(1,0); for identity, kernel/cokernel dimensions (0,0), image Dimension unchanged. | Consistent.  Carried from [previous report][previous]. |
| 1349 Standard dimensions | B₂ has (2,0); U_(2,1) has (1,2); U_(1,−1) has (1,−1); U_(1,0)=ℚ_p has (0,1). | Consistent; zero branch retained.  Carried from [previous report][previous]. |
| 1357 Abstract BC | Generators have Dimensions (0,1),(1,0); cokernel C/ℚ_p has (1,−1). Empty finite sum is zero. Arbitrary ambient subobjects are not part of the closure rule. | Consistent.  Carried from [previous report][previous]. |
| 1387 Curvature | ℚ_p embeds in B_dR⁺ and has negative curvature; V₁=C has affine curvature; H¹(O(−1)) has positive curvature. Zero satisfies all five predicates, with height 0. | Consistent; strict sign of curvature does not exclude zero by definition.  Carried from [previous report][previous]. |
| 1414 Curvature orthogonality | Hom(positive-curvature H¹(O(−1)),C)=0; Hom(C,C) contains id≠0. Hence C is not strictly positive curvature. | Consistent.  Carried from [previous report][previous]. |
| 1422 Tilted heart | O(−1)[1] has H⁻¹=O(−1),H⁰=0; O has H⁻¹=0,H⁰=O. Unshifted O(−1) fails the nonnegative H⁰ requirement. | Consistent; shift direction essential.  Carried from [previous report][previous]. |
| 1445 Le Bras equivalence | O maps to ℚ_p, skyscraper at ∞ maps to C, O(−1)[1] maps to C/ℚ_p. Dimensions respectively (0,1),(1,0),(1,−1). | Consistent; no free equivalence parameter.  Carried from [previous report][previous]. |
| 1453 BC HN invariants | U_(2,1): rank 1, degree −2, slope −2=−1/(1/2); U_(1,−1): slope 1; ℚ_p has rank 0, degree −1, slope −∞; zero has no slope. | Consistent; no 0/0.  Carried from [previous report][previous]. |
| 1477 HN/components | Zero map [O(−1)→O] gives positive part H¹(O(−1)); divisor inclusion gives skyscraper C, slope 0 and positive part 0. ℚ_p has component quotient ℚ_p. | Consistent; cohomology sheaves, not raw terms, determine pieces.  Carried from [previous report][previous]. |
| 1491 Curvature filtration | For ℚ_p: (W>0,W≥0)=(0,0); C:(0,C); H¹(O(−1)):(W,W). Torsion at x≠∞ also gives (W,W) although HN slope is 0. | Consistent; support matters.  Carried from [previous report][previous]. |
| 1517 Euler height | O(1/2): 2−0=2; O(−1/2): 0−(−2)=2; torsion at x: 0−0=0. Each equals coherent rank. | Consistent.  Carried from [previous report][previous]. |
| 1525 Artinian | A descending chain of finite-dimensional ℚ_p subobjects has nonincreasing integer dimensions; in ℚ_p² possible strict ranks 2,1,0 only. The argument for general BC also bounds height after dimension stabilizes. | Consistent; dimension stabilization alone is not claimed sufficient.  Carried from [previous report][previous]. |
| 1533 Height bound | ℚ_p⊂C gives dim 0<height 1. Zero gives 0<0 false, hence excluded. C⊂C has dim 1,height 0 but contains V₁, hence excluded. | Consistent; repairs source's zero case.  Carried from [previous report][previous]. |
| 1541 Morphisms | End U_(1/2) has E-dimension 4, not 1. Hom(U_(1/2),C) has C-dimension 2. For two identical half-slope blocks tensor rank is 4. | Consistent; denominator multiplicity retained.  Carried from [previous report][previous]. |
| 1553 Torsion at untilt | B_dR⁺/(t²) has length 2 and endomorphism ring that quotient; m=1 gives C_x. For x≠∞, Hom(i_x C_x,i_∞ C)=0. | Consistent; support prevents false affine identification.  Carried from [previous report][previous]. |
| 1561 Curvature-zero modules | B₁ maps to C with Dimension (1,0); B₂ maps to Dimension (2,0). A torsion object supported at x≠∞ has height 0 but is not in this equivalence. | Consistent.  Carried from [previous report][previous]. |
| 1569 VS Hom vanishing | For B₁, maps into B_dR⁺ and B_dR are 0, while maps B₁→B₁ include id. Period-linearity alone would prove only a weaker statement. | Consistent; the bounded-image argument is explicitly a proof obligation here.  Carried from [previous report][previous]. |
| 1577 Curvature/HN support | H⁰(O)=ℚ_p is negative curvature; C at ∞ is nonpositive but not negative; torsion at x≠∞ is positive and not nonpositive. | Consistent; both directions distinguish support.  Carried from [previous report][previous]. |
| 1585 Height signs | ℚ_p: height 1; C:0; H¹(O(−1)):−1; torsion away from ∞:0. Thus positive curvature implies ≤0, not <0. | Consistent.  Carried from [previous report][previous]. |
| 1593 Subobjects/quotients | Identity quotient of torsion at x≠∞ has height 0 and positive curvature, not affine. Identity quotient of C at ∞ is affine. | Consistent; source converse correctly restricted.  Carried from [previous report][previous]. |
| 1601 Torsion subobject height | ℚ_p⊂C has height 1; C⊂C has height 0; 0⊂C has height 0 and is torsion. Equality distinguishes the torsion-module case. | Consistent.  Carried from [previous report][previous]. |
| 1609 Generating image cokernel | ℚ_p→C,1↦1 generates over B_dR⁺; cokernel C/ℚ_p has Dimension (1,−1) and positive curvature. Identity C→C gives zero cokernel, excluded from strict height conclusion. | Consistent.  Carried from [previous report][previous]. |
| 1617 Extension criterion | U₁ fits 0→ℚ_p→U₁→C→0, negative curvature. C fits with V=0. H¹(O(−1)) has height −1 and cannot fit with finite V of nonnegative height and affine quotient. | Consistent in both directions.  Carried from [previous report][previous]. |
| 1629 Semistable example | For coefficient degree [L:ℚ_p]=d, stated L-Dimension is (d,2); at d=1 it is (1,2). A bare slope-1/2 rank-two object lacks the representation hypothesis for multiplicity one. | Consistent; CDN hypothesis retained.  Carried from [previous report][previous]. |
| 1653 HN semicontinuity | Ordinary rank-two slopes (1,−1) give midpoint 1, split slope-zero gives 0; both endpoints (2,0). Thus specialization can raise the polygon without changing degree. | Consistent with upper semicontinuity.  Carried from [previous report][previous]. |
| 1663 Relative HN splitting | Constant O(1)⊕O(−1) has the same two steps on each fibre; O² has one slope-zero step. A family with both polygons cannot have one constant split slope list on all fibres. | Consistent; stratification/pro-étale hypotheses retained.  Carried from [previous report][previous]. |
| 1673 Slope-zero/local systems | Constant E^r maps to O^r, degree 0; O(1)⊕O(−1) also has degree 0 but is not semistable, hence not a slope-zero local system. | Consistent; degree zero alone insufficient.  Carried from [previous report][previous]. |
| 1683 Cohomology vanishing | O(1) has H¹=0; O(−1) has H⁰=0; O has H⁰=E. Strict inequalities cannot both include the zero-slope boundary. | Consistent.  Carried from [previous report][previous]. |
| 1697 Approximation | Rank-one matrix 1 with perturbation ε of norm <1 remains a unit; perturbation −1 has norm 1 and gives 0. Strict smallness excludes it. | Consistent.  Carried from [previous report][previous]. |
| 1705 Pure models | For φ^a(e)=p^c e, the normalized valuation slope is c/a and curve sign is reversed. Multiplying by p changes the slope by 1/a; a lattice is actual data, not a free predicate. | Consistent with the declared KL sign dictionary.  Carried from [previous report][previous]. |
| 1731 Pro-étale trivialization | A unit rank-one model trivializes with fixed module ℤ_(p^d); after inverting p its fixed module is ℚ_(p^d). Rank 0 gives zero in both cases. | Consistent.  Carried from [previous report][previous]. |
| 1739 Purity openness | Constant unit has pure/étale locus all of X; constant mixed-slope O⊕O(1) has no pure locus. Both are open, ∅ and X. | Consistent.  Carried from [previous report][previous]. |
| 1747 Diagonal gauge | Conjugating diag(p,1) by identity leaves eigenvaluations (1,0); zero matrix cannot be gauged to an invertible one since determinant remains 0. | Consistent; invertibility retained.  Carried from [previous report][previous]. |
| 1759 Robba polygons | Pure rank-two slope 1/2 gives vertices (0,0),(2,1); slopes 1,0 give midpoint 1 instead of 1/2, same endpoint (2,1). | Consistent with comparison inequalities and normalization.  Carried from [previous report][previous]. |
| 1767 Bounded polygons | For rank 2 and fixed total degree 1, slopes (N,1−N) have midpoint N unbounded as N grows. Thus rank and degree alone do not give the claimed bounded-family input. | Consistent; actual coefficient-family bounds are necessary.  Carried from [previous report][previous]. |
| 1775 Constant vertex | For fixed split slopes 1,0, the vertex (1,1) selects the rank-one slope-1 summand; a pure slope-1/2 object has no break there. | Consistent.  Carried from [previous report][previous]. |
| 1783 Constant polygon filtration | Slopes 1,0 give two strictly decreasing quotients; equal slopes 1,1 give one quotient of rank 2. Zero gives empty filtration. | Consistent; equal slopes are grouped.  Carried from [previous report][previous]. |
| 1791 Negative Frobenius cohomology | Negative curve-slope line has H⁰=0, positive twist eventually H¹=0; zero module has H⁰=H¹=0 and map 0→0 injective. | Consistent with the declared curve/KL sign conversion.  Carried from [previous report][previous]. |
| 1803 Ring/sheaf comparison | Unit module maps to the unit sheaf, fixed rank 1; Tate-curve p-monodromy has local étale sheaves but no global étale model over the bounded rings. | Consistent; equivalence is asserted only for the full Robba ring.  Carried from [previous report][previous]. |
| 1819 Nonglobal models | p-monodromy preserves no bounded spanning ℤ_p lattice: forward powers have valuations n, backward powers −n. An invariant integral section forced into ⋂p^nW(S) is 0. | Consistent; ring/sheaf distinction discriminates.  Carried from [previous report][previous]. |
| 1827 Two out of three | 0→O→O²→O→0 has all slopes 0. Mixed O⊕O(1) is not pure, so a single pure term cannot force purity of both others. | Consistent; pair assumption retained.  Carried from [previous report][previous]. |
| 1849 Twisted systems | At (0,1),τ=1. At (1,2),τ²=p⁻¹ and pτ²=1. Identity τ at (1,1) gives p≠1 and is excluded. | Consistent with supplier §1.0b.  Carried from [previous report][previous]. |
| 1863 Denominator independence | 1/2=2/4; pτ²=1 implies p²τ⁴=1. The converse does not follow just by squaring: an operator with pτ²=−1 also squares to 1 when p≠2. | Consistent; coefficient descent, not algebraic squaring, supplies equivalence.  Carried from [previous report][previous]. |
| 1871 Pointwise purity | Constant unit is pure at every point over all three coefficient sheaves; mixed slopes 0,1 fail at every point. Local purity does not construct a global bounded model. | Consistent.  Carried from [previous report][previous]. |
| 1885 Surjective descent | Identity cover detects the same pure unit; a surjective two-chart cover sees every point. An empty cover of a nonempty space would make pointwise testing vacuous and is excluded. | Consistent.  Carried from [previous report][previous]. |
| 1897 Pointwise ampleness | O(1) has positive slope on every fibre; O has slope 0 and is not ample. O(1)⊕O(−1) has positive total top slope but fails fibrewise positivity. | Consistent.  Carried from [previous report][previous]. |
| 1921 Tensor slopes | Slopes 1/2 and 1/2 add to 1 with rank 4 and four rank-one summands; tensor with slope −1/2 gives 0 and is not ample. | Consistent; strict positivity of both factors sufficient.  Carried from [previous report][previous]. |
| 1929 Positive geometry | Positive line degree 1 has BC dimension 1 and H¹=0; zero-slope line has locally profinite sections of dimension 0. | Consistent; strict versus weak positivity distinguished.  Carried from [previous report][previous]. |
| 1937 Nonnegative extensions | Extension of slope-zero bundles is semistable slope 0; adjoining O(1) keeps all slopes ≥0. O(−1) is outside the hypothesis. | Consistent.  Carried from [previous report][previous]. |
| 1945 Étale resolution | Zero target has zero presentation; a nonzero rank-one target requires a nonzero surjecting source. Rank inequalities survive étale base change. | Consistent.  Carried from [previous report][previous]. |
| 1953 Ampleness iff | O(1) is ample and has positive slope; O and O(−1) have slopes 0,−1 and are not. Mixed O(2)⊕O(−1) has positive degree 1 but is not ample. | Consistent in both directions.  Carried from [previous report][previous]. |
| 1961 Relative ample families | Constant O(1) remains positive after any base change; constant O has slope 0 everywhere and fails. Fibrewise positivity is tested on every geometric point. | Consistent.  Carried from [previous report][previous]. |
| 1983 Untilt line | For φ^a, line L_Z has normalized slope 1/a: at a=1 it is 1, at a=2 it is 1/2. L_Z^n has n/a, not n. | Consistent; corrects KL normalization slip.  Carried from [previous report][previous]. |
| 2001 Integral boundary | Constant ℤ_p lattice becomes ℚ_p on the punctured domain, whose slope is 0. Multiplying the lattice by p changes the embedded lattice although rationalization is the same. | Consistent; boundary retains integral data.  Carried from [previous report][previous]. |
| 2011 Integral torsors | G=GL₁ gives ℤ_p×-torsors and rank-one integral local systems; G=GL₂ gives rank 2. Lang obstruction vanishes for smooth connected fibres; the disconnected constant group ℤ/2 has nontrivial finite-field torsors. | Consistent; connectedness cannot simply be removed.  Carried from [previous report][previous]. |
| Lean coefficientFrobenius | For f=1, aπ maps to a^pπ; for f=2, a^(p²)π. π maps to π and 0 to 0. f=0 would be identity, but headline excludes it. | Consistent with explicit binders.  Carried from [previous report][previous]. |
| Lean CyclicSlopeDecomposition | Two ranks 2,1 give basis cardinality 3. Exponents 1,0 pass gcd conditions 1,1; exponent 0/rank 2 fails gcd=2. Wrap for rank 1 applies on its sole index. | Consistent; no out-of-range basis index.  Carried from [previous report][previous]. |
| Lean slopes | Two D(1,2) blocks produce multiset {1/2,1/2}, not four entries. Empty index gives ∅. Denominator is positive PNat so division by zero is impossible. | Consistent; block, not vector, multiplicity.  Carried from [previous report][previous]. |

### Ownership, supplier resolution and pinned library evidence

The changed contracts were resolved again through the roadmap service, using main `fa41b374` for existing roadmaps and the indexed open head for new roadmaps. The specific passages read were:

| Supplier | Resolved passage | Contract used by the repair |
|---|---|---|
| PadicHodgeTheory | `TauCetiRoadmap/PadicHodgeTheory/README.md:1318`, §7.5; especially 1322 and the Checks | Relative period sheaves on perfectoid charts, partially proper pure/étale opens, integral and rational local systems, and the global-lattice restriction. |
| PhiGammaModulesAndIwasawaCohomology | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:333`, §0.4 | Finite-level Artin–Schreier–Witt descent and projectivity, with the explicit 𝔽_(p^d)-algebra condition for φ^d. |
| PhiGammaModulesAndIwasawaCohomology | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:552`, §1.0b | The relative ring carriers, positive/integral subrings, twisted local systems and integral-up-to-isogeny distinction. |
| PhiGammaModulesAndIwasawaCohomology | `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:808`, §1.5 | Global pure comparison on characteristic-p rings after taking isogenies, including complete subrings and untilts. |
| PerfectoidSpaces | `TauCetiRoadmap/PerfectoidSpaces/README.md:8562`, §P3.9; P3.20 | Finite étale tilting and étale-site comparison, compatible with ranks, tensor products and base change. |

Service exports add one heading line; the repository line numbers above exclude it. The changed *Needs:* lists are compatible with these contracts. In particular, the supplier’s global rational theorem is imported at README:70, while the kept target constructs the integral equivalence before inverting p and its intrinsic compatibility. The perfectoid specialization has one owner. The repair adds no declared supplier gap and makes no consumer a supplier.

Object searches used `roadmaps grep` over main and indexed open heads, the board’s package/design files, the supplied AdmissiblePairsAndPadicHodgeStructures and CstConjectureForDaggerVarieties checkouts, and the pinned library sources. The neighboring roadmaps consume slope/bundle/period comparisons; they do not introduce a competing intrinsic integral equivalence in the changed domain. The unchanged wider ownership audit is retained from the previous report. No new Lean declaration name was added, so there is no new namespace collision. The resolver found no unresolved cross-roadmap citations; its standalone run did not inspect library names, which were checked directly at the pins instead.

Reopened pinned declarations:

- Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, `Mathlib/FieldTheory/Perfect.lean:134,140`: `iterateFrobeniusEquiv` and its coefficient action x↦x^(p^f).
- At that same pin, `Mathlib/RingTheory/WittVector/Isocrystal.lean:113,132,138,172,180`: bijective semilinear isocrystals, intertwining maps/equivalences, p^mσ on the standard line, and the rank-one mixed-characteristic classification. The carrier does not itself impose finite dimension. These declarations do not state the retained all-rank equal-characteristic theorem or the new relative integral equivalence.
- Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, `TauCeti/AlgebraicGeometry/AdicSpace/FarguesFontaine/Quotient.lean:56,61,67,72`: `spaX`, its topology, quotient map and orbit equality. This is a topological quotient, not the relative coefficient sheaf or the integral local-system comparison.

### Headline coverage

The unchanged headline list comprises finite-isocrystal classification and arithmetic endomorphism invariants; general-coefficient relative curves; positive generation and GAGA; geometric Picard, stable-block, bundle/coherent and finite-étale-algebra classification; projectivized Banach–Colmez properness and two-term smoothness; Le Bras equivalence and dimension/height/curvature theory; family HN, pure/local-system comparisons and relative ampleness; and integral boundary/group-torsor equivalences.

`Suggested.lean` states the equal-characteristic Dieudonné–Manin theorem with three supporting real-bodied definitions. Its module docstring identifies the missing relative curve, analytic bundle, period, Banach–Colmez and local-system carriers for the other headlines. The repaired intrinsic integral comparison still needs those absent relative rings and local-system interfaces; no extra statable headline has become missing. There is no replacement by an arbitrary predicate or free-variable algebra identity.

## Not verifiable

- The fifteen seed labels are identical. The first-fifteen interpretation and its source evidence are inherited explicitly from the previous report; the brief does not provide more specific target identifiers.
- The unchanged complete equal-characteristic Dieudonné–Manin proof is not certified by the cited source excerpts alone. As recorded previously, Lurie’s cited theorem addresses Witt fractions and omits its proof, while Ked’s cited construction is mixed characteristic. The meaningful all-rank Laurent-series statement passes elaboration and the recorded instances; an admitted build is not a proof.
- This is an incremental review. Unchanged source locators and calculations retain the previous report’s evidence rather than a fresh full audit. No changed locator remains unreadable. General intrinsic comparison, descent and effectivity claims are roadmap proof obligations, not completed formal proofs.

## Source issues

The source issues already recorded in the previous report are not rediscovered by this incremental pass. One additional slip was encountered in the changed locator; the roadmap already states it correctly:

- **Misprint** in KL at Lemma 8.5.11, printed p.173: the source says purity and étaleness loci belong to the coefficient sheaf; it should be the loci of the specified Frobenius module M; affects a stated result.

[previous]: packages/VectorBundlesAndIsocrystals/reports/PRREVIEW-VectorBundlesAndIsocrystals~2.md
