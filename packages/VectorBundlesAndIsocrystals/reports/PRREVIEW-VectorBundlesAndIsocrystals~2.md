# Review of VectorBundlesAndIsocrystals (pull request #1205 at f805de8)

**Verdict:** needs changes

## R01 (P2) — Separate the new local-system generality from the supplied interfaces

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:1813`, also 1839–1847. “purity and étaleness define open subspaces of X”; “The equivalence globalizes to perfectoid X and its tilt/inverse perfection.”

**Claim:** These appear as new Layer 6 targets, although the exact supplier contract at README:68 already imports pure/étale loci and integral/rational local-system comparisons from PadicHodgeTheory §7.5. The broader perfect-uniform characteristic-p formulation can be an extension, but the target does not distinguish that extension from the already supplied perfectoid case.

**Witness:** `TauCetiRoadmap/PadicHodgeTheory/README.md:1322` supplies these loci and integral equivalences. On Spa(C), the constant rank-one system has full pure/étale locus and fixed lattice ℤ_p in both targets.

**Repair:** Import §7.5's statements on its domain in Scope and ownership and the supplier contracts; remove their duplicated targets. Keep a separately identified extension to perfect-uniform characteristic-p bases not covered by that contract, with its additional hypotheses and proof inputs. Preserve the ring/sheaf distinction and the non-global-lattice counterexample. On Spa(C), the repaired plan should have one owner and the same full locus and ℤ_p fixed vectors; on a base outside §7.5, the extension should still be explicitly owned here. This is an ownership defect, not a request to narrow the general library.

## R02 (P3) — Correct the relative-annulus locator and FS edition description

**Location:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:108`: “CS §3.3, Definition 3.3.1 and Theorem 3.3.4, pp. 682–683”.

**Claim:** CS 3.3.1 is called a definition. The FS reference at README:2040 also describes the mutable author PDF as 356 pages, whereas the retrieved edition has 383 pages.

**Witness:** CS line 1328 labels 3.3.1 a proposition on printed p.682. The fetched FS extraction ends at page 383, not 356; the inspected Chapter II locators still agree.

**Repair:** Replace “Definition 3.3.1” by “Proposition 3.3.1”. The interval [1,2] still selects the same sheafy affinoid and plus ring; the corrected locator reaches exactly that assertion. Keep FS/KL for the additional general-coefficient and arbitrary-radius assertions. Update the FS edition description to the retrieved version, preferably using a stable version identifier; retain the verified Chapter II locators.

## Verified sound

This is a full review of the folder, not only its changes since c380d7d. No PR files were edited. The head was checked, and the diff outside this folder was empty. The supplied gate passes every scanner and its targeted build. An independent elaboration of Suggested.lean also passed, with only its admitted theorem warning. The dependency check returned:

```text
depcheck: 205 roadmaps, 1461 edges, 0 problem(s)
```

No upward edge or cycle was reported. The finer internal construction order was checked separately: early Lubin–Tate sections and degree-one divisors precede classification; ordinary projectivized properness precedes family HN, which precedes general two-term BC geometry. The references from Layer 5 to Layer 6 therefore do not by themselves form a cycle.

### Previous findings, checked individually

The seven findings from the preceding review are repaired; none is being re-raised.

| Previous finding | Passage at this head | Result and witness |
|---|---|---|
| R01, closed ordinary action relation | README:1151–1166, “pairwise disjoint translates”; “does not assert that the action relation is closed” | Repaired. For T the Sierpiński space and γ(t,x)=(t,2x), the quotient of T×ℚ₂× is T×ℤ₂×. The relation is not closed, while the local-homeomorphism assertion survives. |
| R02, second twisted-local-system carrier | README:70, “consume `TwistedLocalSystem`”; README:1849 | Repaired. PhiGammaModulesAndIwasawaCohomology §1.0b supplies the carrier and p^cτ^d=1. With (c,d)=(1,2), τ²=p⁻¹ gives pτ²=1. |
| R03, invalid semilinear test | README:848, “Φ(ae)=πφ_R(a)e” | Repaired. Γ₁ consists of fixed coefficients; e belongs, ae does not when φ_R(a)≠a. The wrong inverse twist gives (π−π⁻¹)e≠0. |
| R04, HTML-anchor residue | Layer headings and all local links | Repaired. No explicit anchor residue; the gate reports zero such failures. |
| R05, old layer identifiers | README:88 and subsequent Layer 1–6 headings | Repaired. Layers run 0–6 in the document and the Lean section is Layer 1. |
| R06, invented Lean API names | README:74, “Its declarations are”; API lists throughout | Repaired. The four advertised own names are exactly the four Lean declarations; the gate reports no missing own names. |
| R07, namespace and module form | Suggested.lean:4–8,37 | Repaired. The title is “target signatures”, README is identified as the roadmap, and the namespace is TauCetiRoadmap.VectorBundlesAndIsocrystals. |

### Legal source sample and locators

The brief's seed gives fifteen indistinguishable labels, all “API”, with no target identifiers. I used the first fifteen explicit API blocks in document order, enumerated below, and also examined the source passages for the remaining headline results, sign conventions and corrected source claims. No invented seed-to-target correspondence is assumed. Eleven distinct works were fetched through the sources service, including both cited versions of CN (twelve texts). The temporary CS/Ked retrieval failures were resolved using the publisher-open copies. No inaccessible text remains requested. Source extracts were not added to the PR.

| Sample | README API | Text opened and scope checked |
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

Additional directly read passages include FS II.2.17 and its proof (lines 2772–2841), KL 6.3.17 (5620–5644), KL 8.8.8 (7055–7098), KL 8.8.18–19 (7265–7281), CN author copy §§3.1–3.2 (531–905), SW 15.2.1 (5177–5180), 15.2.12 (5397–5403), 19.5.1–2 (6887–6974), and 22.6.1 (8145–8172). The last reconstruction requires smoothness on analytic sousperfectoid bases; the roadmap retains it. SW13 4.1.4 (1130–1131) retains f-semiperfectness, rather than claiming integral full faithfulness over every semiperfect ring. CDN 2.5 and 2.7 (859–864, 911–913) require the representation-theoretic hypotheses; rank and slope alone do not imply multiplicity one.

### Adversarial calculations

These are computations and separating examples, not proofs of the general theorems. Each row names a target, or an inseparable group of its defining laws, and records actual outputs. “Consistent” means no counterexample in the stated instances. All reference numbers below are README lines unless identified as Lean. In the table O(a/b) has rank b and degree a in reduced form; BC Dimension is (dimension,height). Empty slope multisets are distinguished from slope zero. Field hypotheses exclude the zero ring; p prime and f>0 exclude p=0,1 and q=1. Relative perfectoid bases exclude nilpotent square-zero thickenings; the ramified Witt functor itself does not exclude coefficient rings with torsion.

| Target | Instances and values on both sides | Result / change |
| 92 Ramified Witt and coefficient change | First ghosts (x₀,x₁) give (x₀,x₀^q+πx₁); in characteristic π, (0,1,0,…) and zero both have all ghosts zero. Equal-characteristic φ(π)=π, not π^q. | Consistent; ghost injectivity is not assumed. |
| 106 Relative annuli | For x=π^n[a], norm is ∣π∣^n∣a∣^ρ; φ(x) has norm ∣π∣^n∣a∣^(qρ), equal to the norm of x at qρ. [1,2] is compact inside (0,∞); [0,2] is not. | Consistent; R02 fixes the locator. |
| 120 Integral period domain | On the boundary π=0 survives; on the punctured domain π is invertible. A ℤ_p lattice rationalizes to ℚ_p, not to zero. | Consistent; boundary deletion would lose the lattice. |
| 134 Analytic quotient | Frobenius shifts windows by q. Representatives y and φ(y) have the same orbit; an identity translate gives y itself. | Consistent; orbit topology alone gives no structure sheaf. |
| 146 Marked-untilt Cartier divisor | A primitive equation ξ and uξ, u a unit, give the same ideal; ξ² gives length two instead of one. The zero equation is not regular. | Consistent; marking and degree exclude the wrong model. |
| 161 Completed local periods | Completion at ξ gives B_dR⁺; B_dR⁺/(ξ)=C♯ and the first thickening has ideal (ξ)/(ξ²) with square zero. Changing ξ to uξ preserves all powers. | Consistent; completion retains nonreduced thickenings. |
| 175 Twists | O(1)⊗O(−1)=O; φ-basis multiplier for O(1) is π⁻¹, for O(−1) is π. Degree 1+(−1)=0. | Consistent; inverse convention excluded. |
| 187 Homogeneous sections | P₀=E, P₁·P₁⊂P₂; degrees 1+1=2. Zero belongs to every eigenspace but gives no Proj chart. | Consistent. |
| 213 Finite isocrystals (API 1) | Zero has rank 0 and empty spectrum; σ on L has rank 1, slope 0, fixed endomorphisms E. Zero Frobenius on L is not bijective. | Consistent; finite dimension is extra data/hypothesis. |
| 238 Mixed-characteristic comparison | p-Frobenius on the ordinary rank-one block is p^mσ on both carriers. At m=1 it is pσ, not σ or p⁻¹σ. | Consistent; supplier classification reused. |
| 255 Cyclic blocks (API 2) | D(1,2): Φ²(e_i)=πe_i, determinant −π, valuation 1, slope 1/2. D(−1,2): valuation −1, slope −1/2. D(0,2) fails coprimality gcd(0,2)=2. | Consistent at p=2,3; determinant sign does not change valuation. |
| 279 Equal-characteristic DM / Lean headline | Rank 0 has zero blocks, multiset ∅; rank-one π^mσ has {m}; two D(1,2) blocks have {1/2,1/2} and rank 4. Over F_p, the slope-zero Jordan matrix [[1,1],[0,1]] is not conjugate to identity. | Consistent; algebraic closure and block multiplicity are essential. |
| 295 Tensor and dual | D_(1/2)⊗D_(1/2) has rank 4 and slope 1, hence four rank-one D₁ blocks. Dual slope is −1/2; tensor with the dual has rank 4 and slope 0. | Consistent; no missing denominator multiplicity. |
| 305 Division endomorphisms | Simple rank-one endomorphisms are E; zero has no inverse. Rank-two simple block has E-dimension 4, while End of two trivial lines is M₂(E), containing nonzero singular maps. | Consistent; simplicity and nonzero hypotheses matter. |
| 315 Cyclic algebra (API 3) | r=1 gives E, invariant 0 mod ℤ. r=2 gives dimension 4; r=3,s=1 gives Π³=π⁻¹, invariant −1/3=2/3 mod ℤ. | Consistent; r=3 separates the sign missed by r=2. |
| 338 Arithmetic invariant | EndΦ(D(1,3)) has invariant −1/3; its associated bundle O(−1/3) has the same invariant. Dual block gives +1/3. | Consistent with arithmetic Frobenius. |
| 350 Coefficient adjunction | For an unramified extension of degree d, restriction multiplies rank by d; induction/restriction at d=1 returns rank r. Adjunction on one-dimensional identity data gives Hom(E,E)=E on both sides. | Consistent; no rank-preserving claim for d>1. |
| 364 Galois descent | The trivial rank-one object with trivial descent descends to E; over a finite residue field a nontrivial Jordan descent matrix remains nontrivial despite slope 0. | Consistent; forgetting descent would identify unequal objects. |
| 386 Analytic bundles (API 4) | Free modules of ranks 0,1,2 have local ranks 0,1,2; multiplication by a nonunit on a line is not a bundle isomorphism. | Consistent; local freeness excludes torsion. |
| 410 Annular descent | Identity gluing on a line yields rank 1; zero overlap map is not invertible and cannot glue a bundle. Two successive identity restrictions compose to identity. | Consistent. |
| 418 Robba carriers (API 5) | The constant 1 has norm 1 at every radius; π has norm ∣π∣. A series bounded on one compact interval need not be bounded on all radii. | Consistent; integral, bounded and full rings remain distinct. |
| 443 Frobenius modules (API 6) | Unit module with coefficient φ has slope 0 and integral lattice; πφ is invertible after π⁻¹ but not on the integral lattice. Zero map fails linearization on rank 1. | Consistent. |
| 468 Module/bundle equivalence | The unit maps to O; πφ maps to O(−1); zero maps to zero. Rank and tensor unit agree on both sides. | Consistent; generality beyond supplied specializations is stated. |
| 482 Frobenius complex (API 7) | Unit fixed coefficients give ker(φ−1)=E. A two-term complex in degrees 0,1 has zero H²; moving it to degrees −1,0 would shift that kernel to H⁻¹. | Consistent; actual common-radius differential required. |
| 511 v-descent | Identity cover has one object with identity cocycle; a two-chart rank-one cocycle g₁₂g₂₃=g₁₃ gives the same glued rank 1. A zero transition is excluded. | Consistent. |
| 519 Bundle functor (API 8) | D(1,2) maps to O(−1/2), rank 2, degree −1; D(−1,2) maps to degree 1. HomΦ(D₁,D₀)=0 while Hom(O(−1),O)=H⁰(O(1))≠0. | Consistent; isomorphism classes, not full category equivalence. |
| 549 Twist cohomology | H⁰(O)=E,H¹(O)=0; H⁰(O(−1))=0,H¹(O(−1))≠0; H⁰(O(1))≠0,H¹(O(1))=0. | Consistent; zero slope is separate from either strict sign. |
| 567 Geometric PID charts | At a degree-one point, its complement removes that point; two distinct such points have disjoint singleton supports, so the two complements cover X. A repeated point does not give a cover. | Consistent. |
| 581 Geometric algebraization (API 9) | O and O(1) retain ranks 1 and degrees 0,1 after analytification; identity and zero maps remain identity and zero. | Consistent; supplied absolute case is explicitly identified. |
| 603 Regular geometric curve | At an untilt point, maximal ideal (t), quotient C, dimension 1; the generic stalk is a field, dimension 0. A square-zero algebra C[ε]/ε² is not a regular local curve ring. | Consistent. |
| 611 Untilts/local rings | Ô_X,x=B_dR⁺, residue C_x; t≠0 and t mod t²≠0, but (t mod t²)²=0. Completion is not just the residue field. | Consistent. |
| 619 Picard | deg O(n)=n; O(1)⊗O(−1)=O has degree 0. O(1) cannot be isomorphic to O since 1≠0. | Consistent at a geometric base. |
| 631 Rank/degree (API 10) | O(1)⊕O(−1) has (rank,degree,slope)=(2,0,0). O(1/2) has (2,1,1/2). Zero has (0,0) and no slope, not the junk value 0/0. | Consistent. |
| 655 Saturation (API 11) | tB⊂B in a DVR has quotient B/t, torsion; saturation is B. 0⊂B is saturated with torsion-free quotient B. | Consistent; ordinary submodule differs from subbundle. |
| 679 Stability (API 12) | O is stable since it has no proper nonzero saturated subbundle. O⊕O is semistable but not stable; O(1)⊕O(−1) fails 1≤0. | Consistent; properness restriction repairs the source. |
| 702 HN (API 13) | For O(1)⊕O(−1), ranks 1,1 and slopes 1,−1 give filtration 0⊂O(1)⊂V. Zero has length 0. Equal-slope O² has one HN step. | Consistent. |
| 726 HN polygon (API 14) | Vertices (0,0),(1,1),(2,0) for O(1)⊕O(−1); O² gives (0,0),(2,0). At x=1 values are 1 and 0, although total degree is 0 for both. | Consistent; coordinates and majorization direction separated. |
| 765 Positive generation | For O(−1), twisting by n gives O(n−1); n=0 has H⁰=0 and cannot generate, n≥2 is positive and has H¹=0. Zero is generated by an empty family. | Consistent; “sufficiently large” is necessary. |
| 773 Proj map (API 15) | For homogeneous f of degree d>0, g/f^n has degree 0 when deg g=nd. f=0 produces the empty D₊(f); f=1 in degree 0 is not a positive-degree chart generator. | Consistent. |
| 797 Relative GAGA | The tensor unit and its identity map algebraize to themselves; zero bundle remains zero. Base change of O(1) has degree 1 on each geometric fibre. | Consistent; ringed curve required. |
| 805 Ample-line independence | Replacing O(1) by O(m),m>0, uses the m-th Veronese: O(mn) appears on both sides. m=0 has no positive growth and is excluded. | Consistent. |
| 815 Prüfer/coherent | In a DVR, ideal (t) is free rank 1 and kernel of B→B/t is (t); B/t is coherent torsion, not projective. Over a field the only ideals are 0 and B. | Consistent; coherence does not mean locally free. |
| 830 Invariant norms | For Φ(ae)=πφ_R(a)e, Φ(e)=πe and Γ₁=R^φ=1 e. Wrong multiplier π⁻¹ gives (Φ−π⁻¹)e=(π−π⁻¹)e≠0. | Consistent; repaired old R03. |
| 856 Profinite action | Trivial action fixes every section; multiplication by p on a spanning ℤ_p lattice gives pℤ_p≠ℤ_p, hence cannot be an automorphism preserving that lattice. | Consistent; boundedness is substantive. |
| 884 Two charts/cohomological dimension | Two affine opens give Čech terms C⁰,C¹ and C²=0 after the normalized cover complex; hence H²=0. Removing the same point twice leaves that point uncovered. | Consistent; distinct divisors needed. |
| 892 Tensor ampleness | O(a)⊗O(b)=O(a+b); a=b=1 gives O(2), positive. O(1)⊗O(−2)=O(−1), so positivity of both inputs matters. | Consistent. |
| 915 Positive powers | O(1)^⊗2=O(2), degree 2; zeroth power O has degree 0 and is not ample in this criterion. | Consistent; positive exponent retained. |
| 923 Positive line/presentation | O(1) is positive; O has slope 0 and fails strict positivity. A surjection from O(−d)^m has rank m≥rank target, not a zero-source presentation of a nonzero bundle. | Consistent. |
| 931 Cohomological ampleness criterion | Twists O(n) eventually kill H¹ and generate; the trivial twist leaves H¹(O(−1)) nonzero for every n. | Consistent; eventual quantifier separates the unit. |
| 939 Étale twists | An étale unit module corresponds to O; twisting by O(1) gives positive curve slope 1. Rank 0 remains 0. | Consistent. |
| 947 Affine sections | On an affine chart, free rank-two sections are A² and restrictions are componentwise; a nonunit multiplication A→A is not an isomorphism. | Consistent. |
| 967 Stable blocks | O(1/2) is stable of rank 2 and degree 1; O(1)⊕O(1) has the same slope 1 but is not stable. | Consistent; denominator/coprimality matters. |
| 975 Fixed-slope category | Two O(1/2) copies have endomorphisms M₂(D_1/2), E-dimension 16; one copy has dimension 4. Zero is the zero object. | Consistent. |
| 983 HN base change | Pullback of O(1)⊕O(−1) has the same polygon (0,0),(1,1),(2,0). Pullback of zero has empty filtration. | Consistent for geometric extension. |
| 995 Key extension | A nonzero extension 0→O(−1)→V→O→0 has V=O(−1/2), rank 2, degree −1; the zero class gives O⊕O(−1). | Consistent; nonzero class separates split and nonsplit. |
| 1009 Geometric classification | Rank 0 gives empty sum; O(1)⊕O(−1) and O² both have degree 0 but different slope multisets {1,−1} and {0,0}. | Consistent; degree alone cannot classify. |
| 1017 Hom/Ext | Hom(O(1),O)=H⁰(O(−1))=0; Hom(O,O(1))≠0. Ext¹(O,O(−1))=H¹(O(−1))≠0, while Ext¹(O(−1),O)=0. | Consistent in both directions. |
| 1025 Endomorphism comparison | End(O(1/2)) has dimension 4 and invariant 1/2; End(O(1/3)) has invariant 1/3, distinguishing the opposite algebra's 2/3. | Consistent. |
| 1037 Coherent classification | B/t² has length 2 and rank 0; B⊕B/t has rank 1 and torsion length 1. Torsion cannot be replaced by a bundle summand. | Consistent. |
| 1045 Finite étale curve algebras | E×E gives O_X×O_X, rank 2. E[ε]/ε² also has rank 2 but is not étale and is excluded. | Consistent; finite locally free alone is insufficient. |
| 1067 BC section/complex definition | BC(O)=underline E; for two connected components its sections are E². BC(O(−1)[1])=H¹(O(−1))≠0, whereas raw H⁰(O(−1))=0. | Consistent; sheafification and shift essential. |
| 1095 Lubin–Tate cover | Rank-one LT module has one-dimensional formal group and E-linear universal cover; multiplication by π is invertible on the cover, not on its integral lattice. | Consistent with universal-cover normalization. |
| 1105 Fundamental untilt sequence | 0→E→BC(O(1))→C♯→0 has Dimensions (0,1),(1,1),(1,0), and (0,1)+(1,0)=(1,1). | Consistent. |
| 1121 Scalar projectivization | Zero vector is deleted. E× acts transitively on nonzero vectors of a one-dimensional E-space, giving one point; quotienting all vectors would add a zero orbit. | Consistent. |
| 1149 Contracting quotient | γ^n(t,x)=(t,2^n x); norms tend to 0 forward, ∞ backward. Quotient T×ℚ₂×/2^ℤ=T×ℤ₂×; distinct Sierpiński specializations lie in relation closure but not relation. | Consistent repaired theorem; source's closedness claim false. |
| 1168 Ordinary BC properness | For O(1), the punctured E× quotient is Div¹; a zero bundle has empty punctured quotient. The unpunctured line includes a fixed zero orbit. | Consistent; puncturing matters. |
| 1182 Small-slope resolution | A rational 1/n satisfies 0<1/n≤1; a zero slope does not satisfy strict positivity. A rank-zero bundle needs no nonzero generators. | Consistent; no unsupported negative-slope presentation. |
| 1192 Positive presentations | For a positive line, finite presentation has source rank at least 1; zero source cannot surject. For the zero target, the empty presentation is exact. | Consistent. |
| 1202 Two-term BC geometry | Zero differential [O(−1)→O(1)] gives H¹(O(−1))⊕H⁰(O(1)), Dimension (1,−1)+(1,1)=(2,0). With O in degree 0, the strict-positive smoothness hypothesis fails. | Consistent. |
| 1212 Positive dimension | For [O(−2)→O(1)] with zero map, dimension 1−(−2)=3 and height 1−1=0; summands have Dimensions (2,−1),(1,1). | Consistent; dimension is not rank or height. |
| 1226 Absolute signed BC | D(−1,1) gives O(1), unshifted; D(1,1) gives O(−1), shifted. Both punctured constructions have dimension 1, but heights +1 and −1. | Consistent; mixed signs not covered. |
| 1236 Effective divisors | Degree 0: empty divisor and singleton moduli. x+x has degree 2 and ideal (t²), unlike reduced x of degree 1; Σ₂ quotient retains multiplicity. | Consistent. |
| 1253 Punctured spaces/quotients | O(d),d≥1, has positive degree d. Quotient by π^ℤ still has residual O_E× action; quotient by E× removes it. Relative spatial representability does not assert absolute quasiseparatedness. | Consistent; neither quotient is silently identified with the other. |
| 1263 Quaternion presentation | Nonsplit extension has rank 2, degree −1, slope −1/2. Determinant-preserving automorphisms have reduced norm 1; a central scalar a has reduced norm a² and is excluded if a²≠1. | Consistent; D× is too large. |
| 1273 SL₂ presentation | An independent pair (s₁,s₂) has s₂≠a s₁ for every a∈E; dependent pair (s,s) lies in the deleted diagonal. diag(a,1) has determinant a, so is excluded when a≠1. | Consistent at p=2,3 as well. |
| 1287 Sympathetic Vector Spaces | V₁(C)=C and constant ℚ_p(C)=ℚ_p; V₁×V₁ evaluates to C². Zero functor has zero values and dimension 0, not dimension 1. | Consistent under the stated countability assumptions. |
| 1310 BC presentations | For 0→ℚ_p→U₁→C→0, dim=1 and height=1; C/ℚ_p instead has Dimension (1,−1). Swapping kernel and cokernel reverses height. | Consistent. |
| 1333 Faithful Banach realization | C and C⊕ℚ_p have BC Dimensions (1,0),(1,1), although their underlying topological ℚ_p-spaces are isomorphic. Faithful does not mean full. | Consistent. |
| 1341 Abelian category/dimension | The fundamental sequence gives (1,1)=(0,1)+(1,0); for identity, kernel/cokernel dimensions (0,0), image Dimension unchanged. | Consistent. |
| 1349 Standard dimensions | B₂ has (2,0); U_(2,1) has (1,2); U_(1,−1) has (1,−1); U_(1,0)=ℚ_p has (0,1). | Consistent; zero branch retained. |
| 1357 Abstract BC | Generators have Dimensions (0,1),(1,0); cokernel C/ℚ_p has (1,−1). Empty finite sum is zero. Arbitrary ambient subobjects are not part of the closure rule. | Consistent. |
| 1387 Curvature | ℚ_p embeds in B_dR⁺ and has negative curvature; V₁=C has affine curvature; H¹(O(−1)) has positive curvature. Zero satisfies all five predicates, with height 0. | Consistent; strict sign of curvature does not exclude zero by definition. |
| 1414 Curvature orthogonality | Hom(positive-curvature H¹(O(−1)),C)=0; Hom(C,C) contains id≠0. Hence C is not strictly positive curvature. | Consistent. |
| 1422 Tilted heart | O(−1)[1] has H⁻¹=O(−1),H⁰=0; O has H⁻¹=0,H⁰=O. Unshifted O(−1) fails the nonnegative H⁰ requirement. | Consistent; shift direction essential. |
| 1445 Le Bras equivalence | O maps to ℚ_p, skyscraper at ∞ maps to C, O(−1)[1] maps to C/ℚ_p. Dimensions respectively (0,1),(1,0),(1,−1). | Consistent; no free equivalence parameter. |
| 1453 BC HN invariants | U_(2,1): rank 1, degree −2, slope −2=−1/(1/2); U_(1,−1): slope 1; ℚ_p has rank 0, degree −1, slope −∞; zero has no slope. | Consistent; no 0/0. |
| 1477 HN/components | Zero map [O(−1)→O] gives positive part H¹(O(−1)); divisor inclusion gives skyscraper C, slope 0 and positive part 0. ℚ_p has component quotient ℚ_p. | Consistent; cohomology sheaves, not raw terms, determine pieces. |
| 1491 Curvature filtration | For ℚ_p: (W>0,W≥0)=(0,0); C:(0,C); H¹(O(−1)):(W,W). Torsion at x≠∞ also gives (W,W) although HN slope is 0. | Consistent; support matters. |
| 1517 Euler height | O(1/2): 2−0=2; O(−1/2): 0−(−2)=2; torsion at x: 0−0=0. Each equals coherent rank. | Consistent. |
| 1525 Artinian | A descending chain of finite-dimensional ℚ_p subobjects has nonincreasing integer dimensions; in ℚ_p² possible strict ranks 2,1,0 only. The argument for general BC also bounds height after dimension stabilizes. | Consistent; dimension stabilization alone is not claimed sufficient. |
| 1533 Height bound | ℚ_p⊂C gives dim 0<height 1. Zero gives 0<0 false, hence excluded. C⊂C has dim 1,height 0 but contains V₁, hence excluded. | Consistent; repairs source's zero case. |
| 1541 Morphisms | End U_(1/2) has E-dimension 4, not 1. Hom(U_(1/2),C) has C-dimension 2. For two identical half-slope blocks tensor rank is 4. | Consistent; denominator multiplicity retained. |
| 1553 Torsion at untilt | B_dR⁺/(t²) has length 2 and endomorphism ring that quotient; m=1 gives C_x. For x≠∞, Hom(i_x C_x,i_∞ C)=0. | Consistent; support prevents false affine identification. |
| 1561 Curvature-zero modules | B₁ maps to C with Dimension (1,0); B₂ maps to Dimension (2,0). A torsion object supported at x≠∞ has height 0 but is not in this equivalence. | Consistent. |
| 1569 VS Hom vanishing | For B₁, maps into B_dR⁺ and B_dR are 0, while maps B₁→B₁ include id. Period-linearity alone would prove only a weaker statement. | Consistent; the bounded-image argument is explicitly a proof obligation here. |
| 1577 Curvature/HN support | H⁰(O)=ℚ_p is negative curvature; C at ∞ is nonpositive but not negative; torsion at x≠∞ is positive and not nonpositive. | Consistent; both directions distinguish support. |
| 1585 Height signs | ℚ_p: height 1; C:0; H¹(O(−1)):−1; torsion away from ∞:0. Thus positive curvature implies ≤0, not <0. | Consistent. |
| 1593 Subobjects/quotients | Identity quotient of torsion at x≠∞ has height 0 and positive curvature, not affine. Identity quotient of C at ∞ is affine. | Consistent; source converse correctly restricted. |
| 1601 Torsion subobject height | ℚ_p⊂C has height 1; C⊂C has height 0; 0⊂C has height 0 and is torsion. Equality distinguishes the torsion-module case. | Consistent. |
| 1609 Generating image cokernel | ℚ_p→C,1↦1 generates over B_dR⁺; cokernel C/ℚ_p has Dimension (1,−1) and positive curvature. Identity C→C gives zero cokernel, excluded from strict height conclusion. | Consistent. |
| 1617 Extension criterion | U₁ fits 0→ℚ_p→U₁→C→0, negative curvature. C fits with V=0. H¹(O(−1)) has height −1 and cannot fit with finite V of nonnegative height and affine quotient. | Consistent in both directions. |
| 1629 Semistable example | For coefficient degree [L:ℚ_p]=d, stated L-Dimension is (d,2); at d=1 it is (1,2). A bare slope-1/2 rank-two object lacks the representation hypothesis for multiplicity one. | Consistent; CDN hypothesis retained. |
| 1653 HN semicontinuity | Ordinary rank-two slopes (1,−1) give midpoint 1, split slope-zero gives 0; both endpoints (2,0). Thus specialization can raise the polygon without changing degree. | Consistent with upper semicontinuity. |
| 1663 Relative HN splitting | Constant O(1)⊕O(−1) has the same two steps on each fibre; O² has one slope-zero step. A family with both polygons cannot have one constant split slope list on all fibres. | Consistent; stratification/pro-étale hypotheses retained. |
| 1673 Slope-zero/local systems | Constant E^r maps to O^r, degree 0; O(1)⊕O(−1) also has degree 0 but is not semistable, hence not a slope-zero local system. | Consistent; degree zero alone insufficient. |
| 1683 Cohomology vanishing | O(1) has H¹=0; O(−1) has H⁰=0; O has H⁰=E. Strict inequalities cannot both include the zero-slope boundary. | Consistent. |
| 1697 Approximation | Rank-one matrix 1 with perturbation ε of norm <1 remains a unit; perturbation −1 has norm 1 and gives 0. Strict smallness excludes it. | Consistent. |
| 1705 Pure models | For φ^a(e)=p^c e, the normalized valuation slope is c/a and curve sign is reversed. Multiplying by p changes the slope by 1/a; a lattice is actual data, not a free predicate. | Consistent with the declared KL sign dictionary. |
| 1731 Pro-étale trivialization | A unit rank-one model trivializes with fixed module ℤ_(p^d); after inverting p its fixed module is ℚ_(p^d). Rank 0 gives zero in both cases. | Consistent. |
| 1739 Purity openness | Constant unit has pure/étale locus all of X; constant mixed-slope O⊕O(1) has no pure locus. Both are open, ∅ and X. | Consistent. |
| 1747 Diagonal gauge | Conjugating diag(p,1) by identity leaves eigenvaluations (1,0); zero matrix cannot be gauged to an invertible one since determinant remains 0. | Consistent; invertibility retained. |
| 1759 Robba polygons | Pure rank-two slope 1/2 gives vertices (0,0),(2,1); slopes 1,0 give midpoint 1 instead of 1/2, same endpoint (2,1). | Consistent with comparison inequalities and normalization. |
| 1767 Bounded polygons | For rank 2 and fixed total degree 1, slopes (N,1−N) have midpoint N unbounded as N grows. Thus rank and degree alone do not give the claimed bounded-family input. | Consistent; actual coefficient-family bounds are necessary. |
| 1775 Constant vertex | For fixed split slopes 1,0, the vertex (1,1) selects the rank-one slope-1 summand; a pure slope-1/2 object has no break there. | Consistent. |
| 1783 Constant polygon filtration | Slopes 1,0 give two strictly decreasing quotients; equal slopes 1,1 give one quotient of rank 2. Zero gives empty filtration. | Consistent; equal slopes are grouped. |
| 1791 Negative Frobenius cohomology | Negative curve-slope line has H⁰=0, positive twist eventually H¹=0; zero module has H⁰=H¹=0 and map 0→0 injective. | Consistent with the declared curve/KL sign conversion. |
| 1803 Ring/sheaf comparison | Unit module maps to the unit sheaf, fixed rank 1; Tate-curve p-monodromy has local étale sheaves but no global étale model over the bounded rings. | Consistent; equivalence is asserted only for the full Robba ring. |
| 1811 Adic loci | For coefficient Frobenius on a line, pure locus=étale locus=X; nonzero constant slope line has pure locus X and étale locus ∅. | Mathematically consistent; R01 removes duplicate ownership on supplied domain. |
| 1819 Nonglobal models | p-monodromy preserves no bounded spanning ℤ_p lattice: forward powers have valuations n, backward powers −n. An invariant integral section forced into ⋂p^nW(S) is 0. | Consistent; ring/sheaf distinction discriminates. |
| 1827 Two out of three | 0→O→O²→O→0 has all slopes 0. Mixed O⊕O(1) is not pure, so a single pure term cannot force purity of both others. | Consistent; pair assumption retained. |
| 1839 Integral comparison | Constant rank-one lattice has fixed vectors ℤ_p; after isogenies ℚ_p. A rational p-monodromy system has no preserved global lattice. | Consistent; R01 separates supplied perfectoid case. |
| 1849 Twisted systems | At (0,1),τ=1. At (1,2),τ²=p⁻¹ and pτ²=1. Identity τ at (1,1) gives p≠1 and is excluded. | Consistent with supplier §1.0b. |
| 1863 Denominator independence | 1/2=2/4; pτ²=1 implies p²τ⁴=1. The converse does not follow just by squaring: an operator with pτ²=−1 also squares to 1 when p≠2. | Consistent; coefficient descent, not algebraic squaring, supplies equivalence. |
| 1871 Pointwise purity | Constant unit is pure at every point over all three coefficient sheaves; mixed slopes 0,1 fail at every point. Local purity does not construct a global bounded model. | Consistent. |
| 1885 Surjective descent | Identity cover detects the same pure unit; a surjective two-chart cover sees every point. An empty cover of a nonempty space would make pointwise testing vacuous and is excluded. | Consistent. |
| 1897 Pointwise ampleness | O(1) has positive slope on every fibre; O has slope 0 and is not ample. O(1)⊕O(−1) has positive total top slope but fails fibrewise positivity. | Consistent. |
| 1921 Tensor slopes | Slopes 1/2 and 1/2 add to 1 with rank 4 and four rank-one summands; tensor with slope −1/2 gives 0 and is not ample. | Consistent; strict positivity of both factors sufficient. |
| 1929 Positive geometry | Positive line degree 1 has BC dimension 1 and H¹=0; zero-slope line has locally profinite sections of dimension 0. | Consistent; strict versus weak positivity distinguished. |
| 1937 Nonnegative extensions | Extension of slope-zero bundles is semistable slope 0; adjoining O(1) keeps all slopes ≥0. O(−1) is outside the hypothesis. | Consistent. |
| 1945 Étale resolution | Zero target has zero presentation; a nonzero rank-one target requires a nonzero surjecting source. Rank inequalities survive étale base change. | Consistent. |
| 1953 Ampleness iff | O(1) is ample and has positive slope; O and O(−1) have slopes 0,−1 and are not. Mixed O(2)⊕O(−1) has positive degree 1 but is not ample. | Consistent in both directions. |
| 1961 Relative ample families | Constant O(1) remains positive after any base change; constant O has slope 0 everywhere and fails. Fibrewise positivity is tested on every geometric point. | Consistent. |
| 1983 Untilt line | For φ^a, line L_Z has normalized slope 1/a: at a=1 it is 1, at a=2 it is 1/2. L_Z^n has n/a, not n. | Consistent; corrects KL normalization slip. |
| 2001 Integral boundary | Constant ℤ_p lattice becomes ℚ_p on the punctured domain, whose slope is 0. Multiplying the lattice by p changes the embedded lattice although rationalization is the same. | Consistent; boundary retains integral data. |
| 2011 Integral torsors | G=GL₁ gives ℤ_p×-torsors and rank-one integral local systems; G=GL₂ gives rank 2. Lang obstruction vanishes for smooth connected fibres; the disconnected constant group ℤ/2 has nontrivial finite-field torsors. | Consistent; connectedness cannot simply be removed. |
| Lean coefficientFrobenius | For f=1, aπ maps to a^pπ; for f=2, a^(p²)π. π maps to π and 0 to 0. f=0 would be identity, but headline excludes it. | Consistent with explicit binders. |
| Lean CyclicSlopeDecomposition | Two ranks 2,1 give basis cardinality 3. Exponents 1,0 pass gcd conditions 1,1; exponent 0/rank 2 fails gcd=2. Wrap for rank 1 applies on its sole index. | Consistent; no out-of-range basis index. |
| Lean slopes | Two D(1,2) blocks produce multiset {1/2,1/2}, not four entries. Empty index gives ∅. Denominator is positive PNat so division by zero is impossible. | Consistent; block, not vector, multiplicity. |

### Pinned libraries and duplication by object

Mathlib pin: `6b7abb3c7686292736be2955bd3eb9ebf63b456a`. Tau Ceti pin: `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searches covered Witt/Frobenius carriers, Laurent series, cyclic blocks, finite locally free sheaves, quotient curves, Brauer/crossed products, spectral topology, BC and relative period objects. These are object searches, not just searches for the proposed names.

The decisive declarations opened at these pins were:

- `Mathlib/RingTheory/WittVector/Isocrystal.lean:79,113,132,138,157,172,180`: coefficient Frobenius, isocrystal carrier, intertwining maps/equivalences, standard rank-one block and rank-one classification. The native isocrystal class provides a bijective semilinear map; it does not include finite dimension. The classification at 180 assumes finrank one and is mixed characteristic, so it does not discharge the new all-rank Laurent-series theorem.
- `Mathlib/FieldTheory/Perfect.lean:134,140`: `iterateFrobeniusEquiv` and its p^n action, matching the retained definition.
- `Mathlib/Topology/Spectral/Basic.lean:38`: spectral spaces include T₀, compactness, quasi-sobriety and quasi-separatedness, not Hausdorffness. The Sierpiński witness is therefore admissible.
- `TauCeti/AlgebraicGeometry/AdicSpace/FarguesFontaine/Quotient.lean:56,67,72,107`: `spaX`, quotient map, orbit equality and open quotient. This supplies topology, not the missing relative ringed curve.
- `TauCeti/Algebra/Category/ModuleCat/Sheaf/FiniteLocallyFree.lean:198` and `TauCeti/AlgebraicGeometry/VectorBundle/Functoriality.lean:43`: native finite local freeness and pullback identity. They justify reusing schematic infrastructure; they do not supply analytic annular descent.
- `TauCeti/Algebra/BrauerGroup/Group.lean:233` and `TauCeti/Algebra/CrossedProduct/Comparison.lean:267,295`: split endomorphism algebra class and crossed-product/cohomological Brauer comparison. These are consumed; the arithmetic sign and curve comparison remain new work.

The ownership search used the roadmap service over main and its open-head index, plus the board package files and the supplied sibling checkouts. The relevant owners were read: CrystallineCohomology §CR.4.7 (README:6620), PadicDifferentialEquationsAndRigidCohomology §§RD.1.27/1.32 (2921/3030), PhiGammaModulesAndIwasawaCohomology §§1.0b/1.0c/1.5 (552/619/808), PrismaticCohomologyPartIII §7.0 (852), PadicHodgeTheory §§7.5/7.6 (1318/1340), AlgebraicVectorBundles L0A–L0C (215/228/254), and the finite-flat universal-cover contracts (R07.2.28,4325). R01 is the remaining overlap found in those interfaces. The equal-characteristic Laurent-series classification is not supplied by the mixed-characteristic slope owners.

For the neighboring new work, AdmissiblePairsAndPadicHodgeStructures README:126,570 and CstConjectureForDaggerVarieties README:110 import this roadmap's geometric classification/finite BC results. The board's VectorBundlesAndIsocrystalsPartII and RelativeFarguesFontainePartII designs also consume the relevant finite BC/geometric results. Their extensions do not give this folder a second owner for its equal-characteristic headline. No collision with the four fully qualified Lean declaration names was found.

The five resolver leads are not missing declarations: four `FilteredBundle.*` names are the explicit §7.0 interfaces in PrismaticCohomologyPartIII, and `Rigid.diamond_hom_bijective` is the seminormal-source diamondification result of DiamondsAndVStacks D6.9 (README:9935). These are supplier targets, not claims that those declarations exist in Mathlib today.

Supplier references were read at main for existing roadmaps and at the supplied open head for new roadmaps. In addition to the owners above, checked contracts include AdicSpaces §6; AdicSpacesPartII R0.1/R0.3; AdicSpacesPartIII R3.1–R3.5/R3.8; PerfectoidSpaces P1–P3; FarguesFontaineDiamonds F4; DiamondsAndVStacks D2–D6; DiamondEtaleCohomology C4; DiamondSixOperations S4–S5; SchemeAndStackFoundations §§0.3–0.4,1.1,1.24,2.2,2.5,2.18,3.3–3.4; LocalFieldsRamification Layer 2; ReductiveGroupsPartII RG2.0.4/RG2.3.1/RG2.3.7; ClassFieldTheory Layer 5; and the stated period-ring/admissibility inputs. In particular, SchemeAndStackFoundations' Euler-characteristic degree at README:4715 is for proper curves over a field; this folder defines its own FF degree and does not apply that proper finite-type formula to the FF curve. ReductiveGroupsPartII README:5203 requires smooth connected finite-type groups for Lang. ClassFieldTheory's arithmetic reciprocity scope is not extended to equal characteristic by omission.

### Headline coverage, Lean signatures and padding

The headline list is: finite-isocrystal classification and its arithmetic endomorphism comparison; general-coefficient relative curve foundations; positive generation and GAGA; geometric Picard, stable-block, bundle/coherent and finite-étale-algebra classification; projectivized BC properness and two-term cohomological smoothness; Le Bras equivalence and dimension/height/curvature theory; family HN and pure/local-system comparisons; relative ampleness; integral boundary and group-torsor equivalences.

The equal-characteristic classification is stated on native Laurent series with three small supporting definitions. The module docstring individually accounts for the remaining headlines and their missing ringed curves, analytic bundles, period rings, BC sheaves and local systems. Generic schemes, topological `spaX` or abstract abelian categories do not suffice to state those particular results. There is no weakened substitute.

A scratch copy containing `#check @name` for all four declarations was elaborated. It agrees with the supplied signature extraction: no lost section binder. The theorem retains p primality, positive f, algebraically closed characteristic-p k, finite dimension and bijectivity. The decomposition structure is more general than the theorem and deliberately does not assert existence for π=0; the theorem supplies the nonzero Laurent monomial. All definitions have real bodies, and the sole admission is the headline theorem. No `set_option`, extra imports, admitted examples or data placeholders occur.

One-tactic attempts with `simp`, `rfl` and `infer_instance` on a scratch copy did not prove the classification. The opened pinned classification is only rank one over Witt fractions, so it is not an `exact` replacement. The theorem is not a Check, boundary case or restatement of its decomposition definition. No padding finding was found.

## Not verifiable

- The source seed identifies only “API” fifteen times. The reproducible first-fifteen selection above is an explicit interpretation, not recovery of unprovided target identifiers.
- The complete equal-characteristic Dieudonné–Manin proof for every algebraically closed k and q=p^f is not established by the cited passages alone. Lurie Theorem 6 concerns Witt fractions and explicitly omits the proof; Ked's cited construction is mixed characteristic. FF §8.2.3 supports the equal-characteristic coefficient/block convention. The Lean statement is meaningful and passed the numerical tests, but a successful admitted build does not verify its proof. No missing text was fabricated or requested under a new source key.
- FS's mutable author URL now returns a 383-page text, whereas README:2040 describes 356 pages. The inspected Chapter II locators agree; I have not certified that all later pagination matches the obsolete page-count description. Cite a fixed edition or update that descriptive count.
- Generalizations explicitly owned here (ramified/equal-characteristic relative geometry and certain period-functor proof steps) are mathematical proof obligations. Source support and the instance table do not certify completed proofs. No implementation of these absent carriers was available to run.

## Source issues

These concern the legally read editions; the roadmap already avoids the substantive errors listed here. No published correction was verified.

- **Error** in FS at Lemma II.2.17, printed p.72: the source says the ordinary action relation is closed; it should be restricted to the valid local-disjointness and quotient conclusions without ordinary-product closedness; affects a stated result.
- **Misprint** in FF at Theorem 5.5.3, printed p.163: the source says polygon vertices have degree then rank coordinates; it should be rank then degree; affects a stated result.
- **Misprint** in FF at Definition 5.5.5, printed p.164: the source says strict slope inequality for all nonzero strict subobjects; it should be for proper nonzero strict subobjects of a nonzero object; affects a stated result.
- **Misprint** in KL at Lemma 6.3.17, printed p.142: the source says the displayed invariant eigenspace uses p to the negative twist exponent; it should use the positive exponent with its twist convention; affects a stated result.
- **Misprint** in KL at Lemma 8.8.18 and Corollary 8.8.19, printed p.186: the source says the untilt line has slope one for φ to the a-th power; it should have normalized slope 1/a; affects a stated result.
- **Misprint** in CN at §3.2.5, author-copy printed p.16: the source says the reciprocal-slope formula includes the zero curve slope; it should separate U₀ with BC slope negative infinity; affects a stated result.
- **Error** in CN at Lemma 3.16, author-copy printed pp.16–17: the source says the strict dimension-height bound includes zero; it should exclude zero; affects a stated result.
- **Misprint** in CN at the proof of Lemma 3.16, author-copy printed p.17: the source says h is less than d at the concluding comparison; it should say h is greater than d; affects the proof.
- **Error** in CN at §3.2.6(2), author-copy printed p.17: the source says the slope Hom formula omits the denominator multiplicity; it should retain the multiplicity, giving four-dimensional endomorphisms at slope one-half; affects a stated result.
- **Error** in CN at Corollary 3.20(b), author-copy printed p.18: the source says strictly negative curvature always gives positive height; it should exclude the zero object; affects a stated result.
- **Error** in CN at Corollary 3.21(iv), author-copy printed p.18: the source says every height-zero quotient of a nonnegative-curvature object is affine; it should require torsion support at the distinguished untilt; affects a stated result.
