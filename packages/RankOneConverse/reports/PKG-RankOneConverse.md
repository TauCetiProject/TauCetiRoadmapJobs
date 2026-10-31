# RankOneConverse package report

The package is `packages/RankOneConverse/README.md`, `Suggested.lean`, `metadata.toml` and `sources.toml`. The seven-layer design has been expanded into the repository’s prose form, with exact hypotheses, supplier contracts, APIs, discriminating Checks and six worked examples. The eight duplicate targets listed below have become supplier contracts rather than local targets. Every design Check is retained in the corresponding local section or supplier contract. The only change in `design/plan.json` is its top-level `gaps` value: eleven supplier gaps. A structural comparison with the saved input confirms that every other JSON field is identical.

The separate `design/review.json` and pre-existing reports named in the brief were absent. The accepted review embedded in `design/plan.json` was available and was read, including all 26 target verdicts and thirteen source issues. Its mathematical corrections were independently checked rather than treated as instructions. No suspicious instruction was found in the material used.

The style comparisons were main’s `TauCetiRoadmap/EllipticCurves/README.md`, `TauCetiRoadmap/LocalGaloisGroups/README.md` and `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md`; metadata follows EllipticCurves. Main was independently confirmed at 794d0fcddfd32a8c6bb445faa33347cc578f43b0. The pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, confirmed from the manifest and each package checkout. These replace the design’s obsolete baseline hashes.

## Headline list and acceptance-file boundary

This list was saved before writing `Suggested.lean`. All are not statable at the pins; consequently there is no replacement theorem or auxiliary definition in the acceptance file.

| Headline | Status and missing arithmetic carrier/interface |
|---|---|
| Residual restriction to G_K | Not statable: the attached residual newform representation with the squarefree local realization. |
| Arithmetic rank-one localization at every λ | Not statable: coefficientwise rational Bloch–Kato Selmer, Kummer and local restriction realization. |
| Two-dimensional semilocal image | Not statable on its actual arithmetic carriers: rational global/local cohomology of the attached representation and finite local subspaces. |
| Strict and one-sided kernel vanishing | Not statable on those arithmetic carriers; an arbitrary linear-map theorem would be a stand-in. |
| Ordinary anticyclotomic reverse divisibility | Not statable: the canonical one-sided strict deformation and its attached analytic function. |
| Finite-error augmentation control | Not statable: the same coefficient deformation, actual inertia kernels and finite control comparison. |
| Augmentation obstruction | Not statable: the same arithmetic Selmer and analytic function, rather than a scalar or ideal conditional. |
| General locally prescribed value/derivative nonvanishing | Not statable with a few simple definitions: the primitive quadratic-twist newform interface and full-local character family are missing. Native newforms and their analytic L-functions do exist. |
| Theorem B | Not statable: modular abelian attachment, coefficient Selmer groups and analytic base-change dictionary. |
| Theorem A | Not statable: modular abelian attachment, geometric Sha and actual analytic product comparison. |
| Theorem A′ | Not statable: attached elliptic L-function and geometric Sha/modular comparison. |
| Theorem C | Not statable: odd-p finite elliptic Selmer and actual local Kummer image, with the attached elliptic L-function. |
| Theorem E | Not statable: modular abelian attachment, geometric Sha and its actual L-function comparison. |

The standalone abstract localization APIs, four examples and two vector-space milestones described by the design were not copied into Lean. They are either small API facts or arithmetic stand-ins, not acceptance headlines. The README retains their full mathematical content. The module has one docstring, one `import Mathlib`, the required namespace, no other imports, no declarations, no sorry’d data and no options. In particular it does not conceal the missing arithmetic interfaces in Prop fields. The height and logarithm criteria belong to GrossZagierAndArithmeticHeights and are not local headline targets.

## Ownership and duplication sweep

The sweep used `roadmaps grep` and `roadmaps show` on main and the indexed open heads, together with object searches across the board packages and both pinned library trees. It searched representations and local inertia, rational/finite Selmer and Kummer conditions, strict kernels, completed actions, Fitting/characteristic ideals, augmentation, Heegner/Hodge points, eigenlogarithms, analytic factors and quadratic nonvanishing. All supplied open-head files were covered through the indexed search. Open-head ownership was checked; no unavailable open-head files were silently assumed. A pull request revising an existing roadmap was not used in place of main: PadicMeasuresIwasawaAlgebras and the upstream style examples were checked on main.

| Design target or repeated construction removed from local ownership | Exact owner and disposition |
|---|---|
| PC.0/heegner-cases | GrossZagierAndArithmeticHeights §8.17; the full conditional ramified clause and the even inert set are imported, with sign checks retained. |
| PC.0/normalized-heegner-point | GrossZagierAndArithmeticHeights §§3.2–3.4, 8.17 and 9.13, plus HeegnerPointEulerSystems §§1.4–1.6. The rational pre-projector point, normalization API and all four original tests are in the supplier contract. |
| PC.0/transfer-differential | GL2AutomorphicRepresentationsAndTransfer R17.3.1/R17.3.8 and GrossZagierAndArithmeticHeights §§9.6/9.10. Rational transfer, norm ratio and pullback domains are imported separately. |
| PC.1/rational-selmer-comparison | SelmerIwasawaCohomology §§2.12a, 4.9, 4.26 and 4.28. Its missing coefficientwise and whole-Sha extensions are explicit supplier gaps. |
| PC.1/selmer-parity | SelmerIwasawaCohomology §4.28. Its actual family theorem does not imply the desired absolute root-number parity, so that extra result is a gap, not a copied local target. |
| PC.2/analytic-dictionary | GrossZagierAndArithmeticHeights §§9.21–9.22. Only the distinct Wan specialization/period comparison remains a gap. |
| PC.3/point-and-height | GrossZagierAndArithmeticHeights §§8.13/8.17, including the conjugate-product order-d conclusion. |
| PC.3/point-and-logarithm | GrossZagierAndArithmeticHeights §§9.13, 9.16–9.22, including ramified Case I and the actual-point eigenlogarithm repair. |
| Generic continuous cohomology and cohomological Sha | Mathlib `continuousCohomology`, ContCohomology/Basic.lean:131; `ContinuousCohomology.tateShafarevich`, ContCohomology/Sha.lean:71. No reconstructed cochain complex. |
| Generic abelian-variety or tangent carrier | Tau Ceti AbelianVariety/Basic.lean:95 and TangentSpace.lean:85. No substitute modular-abelian data record. |
| Generic newform or analytic rank | Tau Ceti Newforms/Newform.lean:104 and AnalyticInvariants.lean:80; Mathlib ModularForms/LFunction.lean:134. The analytic newform side is present, contrary to an overly broad missing-carrier claim. |
| Generic Fitting ideals and base change | Tau Ceti RingTheory/FittingIdeal/Basic.lean:343 and BaseChange.lean:134. Only arithmetic control and the completed-unramified augmentation extension are requested. |
| General elliptic Selmer/Sha foundations | EllipticCurves Layer 7 and SelmerIwasawaCohomology §§2.12–2.12a, 4.29. The perfect elliptic alternating pairing is already explicitly stated and is not requested again. |
| Large-p ordinary/residual selection | AutomorphicGaloisRepresentations §§7.5–7.7. It is used, not reconstructed. |
| Generic level lowering and weight-two dictionary | SerreWeightAndLevelOptimisation §§2.10, 4.7–4.8; ModularForms 10B–10C; ModularCurvesPartII §7.2. Section 5.2 owns only their fixed-p semistable contradiction. |
| Squarefree residue-class count | ArithmeticStatisticsPartI §0.6, “Squarefree integers in residue classes”. The mistaken AnalyticNumberTheoryPartI section title was replaced after exact lookup. |
| Statistical rank-one construction and density theorem | ArithmeticStatisticsPartVI “Anticyclotomic main-conjecture implication”, “Heegner logarithm and low rank”, “Rank one selmer criterion” and “Positive simultaneous rank one”. Their elliptic coprime and two-odd-prime scopes remain theirs. The general GL₂-type/ramified theorem and single odd nonsplit alternative here differ explicitly. No statistical counting or CM image is rebuilt. |

The kept residual restriction and semilocal arguments are arithmetic specializations not supplied by the searched owners. The one-sided deformation and reverse bound are retained in arbitrary GL₂-type coefficient degree and in ramified Case I, beyond the existing Part VI elliptic coprime application; they specialize the general supplier carriers. A–E are the full Skinner statements, with the accepted local alternatives and full-Sha conclusions. No declaration uses another roadmap’s fully qualified name; in fact Suggested.lean has no declarations.

## Unsupported references, ownership moves and supplier gaps

`roadmaps show` confirmed that RankZeroOneBSD is absent from main and the indexed open heads. Its BSD.0–BSD.4 references therefore could not support the README. The analytic product interface is assigned to AutomorphicLFunctionsAndLocalFactors, the abelian quadratic/Sha comparison to SelmerIwasawaCohomology, and the full forward theorem to HeegnerPointEulerSystems, in their existing directions. The title and scope describe the mathematical continuation of forward theory without asserting a nonexistent parent folder.

The final BFH twist-residue/noncancellation deduction had no available earlier owner: MetaplecticAutomorphicForms §§8.85–8.87 explicitly stop at their kernel exports. It is stated here in general even weight, not only for the one selected auxiliary field. The later board design RankZeroOneBSDPartII assumes the missing parent’s theorem; it does not prove or supply it. The necessary general deduction therefore moves down to §4.1, with a route using the earlier kernel exports. No actual theorem of a later roadmap is imported, and no later roadmap appears in a Needs line or supplier contract.

`roadmaps show` likewise found no AutomorphicCongruences folder on main or the open heads; its board package held sources and reports but no mathematical specification. The brief explicitly permits it as an earlier supplier. Its ordinary Wan input is therefore identified only as the required gap `ordinary-wan-fitting`; no claim that an existing L2 declaration was read is made. Its missing section is recorded as the required ordinary Rankin–Selberg interface. The gap retains the full congruence construction, exceptional-prime and normality work instead of bypassing it.

The supplied §4.28 family-parity statement was read in full. It compares family points and requires realization and (A1)–(A2) contracts; it does not identify an individual sign with Selmer parity. The separate absolute good-ordinary root-number theorem is consequently an explicit gap. The refreshed GZ §9.17 does state the ramified Case I formula, so that former extension request was deleted. The generic Cassels–Tate and Fitting-base-change requests were also deleted where the supplier or pin now states them.

The eleven machine-readable gaps agree verbatim with the README’s “What Supplier must provide (gap:slug)” paragraphs:

- `squarefree-base-change-signs` — GL2AutomorphicRepresentationsAndTransfer, R16.3.2, R16.3.5, R16.3.6 and R16.4.6.
- `gl2-rational-kummer` — SelmerIwasawaCohomology, 2.12a, 4.9 and 4.26.
- `quadratic-abelian-sha` — SelmerIwasawaCohomology, 2.12a and 4.28.
- `ordinary-root-number-parity` — SelmerIwasawaCohomology, 4.28.
- `strict-anticyclotomic-control` — SelmerIwasawaCohomology, 3.8–3.13 and 3.16.
- `good-local-torsion-comparison` — SelmerIwasawaCohomology, 2.12 and 4.26.
- `unramified-augmentation-divisor` — PadicMeasuresIwasawaAlgebras, 4.2, 4.6 and 5.2.
- `ordinary-wan-fitting` — AutomorphicCongruences, Layer 2: ordinary Rankin–Selberg reverse divisibility (required interface).
- `wan-period-dictionary` — GrossZagierAndArithmeticHeights, 9.22.
- `gl2-full-forward` — HeegnerPointEulerSystems, 7.11–7.12.
- `gl2-analytic-products` — AutomorphicLFunctionsAndLocalFactors, AL.3: global L-functions and Rankin–Selberg products.

## Source acquisition and corrections

All seven lifetime keys were retained from the design’s source list. The sources service fetched Skinner, BSW v2, Wan, Skinner–Urban, Poonen–Stoll and BFH legally. BFH is an image-only GDZ scan on the author-hosted site; the service supplied OCR, and the printed introductory theorem was also read visually. Its second branch is labelled (ii) in the image although OCR prints another (i). Printed pages 543–544 are PDF pages 2–3. Both signs, the unrestricted positive level, even weight and trivial character hypotheses were checked at bfh-1990 lines 76–86. The §9 pole/noncancellation deduction and fundamental-discriminant extraction were read at lines 3090–3227.

The Brooks live institutional link redirected to a CDN that the initial fetch did not classify; the unsigned CDN URL then returned 403. The operator already held the certified institutional copy with hash 90898527cf2e7e69bb6eba200dc7646e7f61837fa310299852ea2b958f925219, identified by the GZ manifest. That cache’s bytes were rehashed and read, its service acquisition metadata reused under the existing `brooks-2015` key, and its expiring URL query omitted from the manifest. Thus no text is missing. The initially recorded Skinner classification failure was settled by the successful publisher-open fetch. The scratch missing-reference list contains no unresolved entry. No source text was copied into a deliverable.

| Source finding | Independent result and correction used |
|---|---|
| E1, Skinner Lemma 2.2.2 | Confirmed: an abstract map L×L→L×L, (x,y)↦(x,0), has one zero component. BSW Theorem 1.1 on an actual algebraic generator supplies all components; no unique-λ premise is added. |
| E2, Skinner Corollary 2.6.2 | Confirmed: use the rational Hodge point before coefficient projection and clear denominators before BSW. Nonzero arbitrary tensors do not qualify. |
| E3, Skinner p.346 UFD wording | Confirmed wording defect: UFD is a ring property. The proof here separately uses Fitting base change, exact arithmetic control and divisorial closure. |
| E4, residual contradiction | Confirmed: the hypothetical invariant line belongs to the restricted G_K representation; uniqueness and normality then contradict global irreducibility. |
| E5, tame-prime letter | Confirmed: the same selected q is used throughout the inertia calculation. |
| E6, omitted form argument | Confirmed only as an omitted (f) in the proof of Proposition 2.6.1. Skinner already gives the projector/logarithm comparison at lines 614–618; no missing comparison was invented. |
| E7, reversed point notation | Confirmed in the opening of §2.6; the same P_K(f) is used throughout. |
| E8, finite subscript in rank bound | Confirmed: Kummer lands in H¹_f, whose dimension is 1, rather than unrestricted H¹. |
| E9, quadratic datum terminology | Confirmed: the local twist is by an unramified quadratic character. |
| E10, alleged rank-zero proof gap | Rejected as a substantive gap. BFH has the derivative branch and Skinner refers back to the auxiliary-field method. Section 6.1 states that branch and the two-twist local-prescription deduction explicitly. |
| E11, Brooks locator | Confirmed: rational transfer normalization is Brooks §2.7 p.4190; the Petersson ratio is a separate comparison. |
| E12, Brooks logarithm exponent | Confirmed at brooks-2015 lines 2088–2115: Theorem 8.11 has a square, omitted in Propositions 8.12–8.13. Scaling log 1→2 distinguishes 1→4 from 1→2. |
| E13, pullback domain | Confirmed at brooks-2015 lines 2109–2112: for u:C→C′, log_(u*ω)(P)=log_ω(uP) requires P in C, the source. |

The accepted lattice-error correction is retained: Λ/(p) is infinite but killed by p, so bounded p-primary errors are not finite Λ-level errors. The accepted conjugate-order repair is retained in A and E. A new explicit Frobenius witness distinguishes the Tate representation from its dual: at q=5,a_q=1 the polynomials are respectively 1−T/5+T²/5 and 1−T+5T². The period/differential scaling Check specifies when c must change by the inverse square, avoiding an ambiguous normalization claim.

## Pin-level definitions and signature audit

The native definitions were read, including their limitations. Two short code excerpts pin the objects rather than importing arithmetic conclusions:

```lean
noncomputable abbrev _root_.continuousCohomology (n : ℕ) (A : TopRep k G) :
    TopModuleCat k := (homogeneousCochains A).homology n
```

This is Mathlib ContCohomology/Basic.lean:131–132; it carries a supplied topological representation, not a Bloch–Kato condition or a finite-dimensionality assertion. The Sha definition in ContCohomology/Sha.lean:71–72 is the intersection over supplied field extensions of restriction kernels. Its type is an additive subgroup in degree n, with no elliptic Kummer identification. Tau Ceti AbelianVariety/Basic.lean:95–103 has fields toOver, grpObj, isProper and geometricallyIntegral; modular attachment and an M-action are absent from that bundle. Its TangentSpace.lean:85 uses the Zariski tangent space at zero. The two-descent group in EllipticCurve/MordellWeil/SelmerGroup.lean:104–106 is the norm-kernel intersection of the specified local square-class conditions, including the chosen infinite-place family, not an odd-p Selmer group.

The Fitting base-change theorem in RingTheory/FittingIdeal/BaseChange.lean:134–135 explicitly retains commutative R,S, Algebra R S, the additive R-module and Module.Finite R M. It states Fitt_k(S⊗_R M)=Fitt_k(M)S without a flatness premise. Arithmetic Selmer specialization still needs the separately stated exact control. Newforms/Newform.lean:104 retains positive level via NeZero N, extends the good Hecke eigenform carrier, lies in the new subspace and has first q coefficient 1; full Hecke eigenproperties are theorems, not fields. AnalyticInvariants.lean:80 is analyticOrderNatAt of Mathlib’s genuine ModularForm.L at k/2, with 0<k explicit. No second analytic-rank definition was added.

The per-declaration binder check was performed on the final acceptance file: it has zero declarations, hence zero declaration types requiring `#check @name`. A scratch elaboration checked `@Module.finrank`, the map/kernel/product declarations, `@continuousCohomology`, `@ContinuousCohomology.tateShafarevich` and `@ModularForm.L` at the pins. It confirmed that finrank is total and does not carry finite dimensionality, so the README retains finite dimensionality explicitly in §1.1. Continuous cohomology takes TopRep; Sha takes the actual family of field extensions and n. No acceptance-file binders were dropped, and no hypothesis was repaired by an unmentioned section variable.

## Adversarial mathematics pass

The tables below record direct arithmetic, dimension, finite-group, ideal and local-character evaluations. They are tests of statements and normalizations, not numerical computations of an unknown elliptic Sha. A conditional theorem’s row evaluates its hypotheses/conclusions in the displayed local or linear model and identifies the separating failure; its mathematical justification also uses the legal theorem locator and supplied route. The zero variety, zero source, characteristic 2, p=3, nontrivial finite cyclic group, nonabelian S₃, finite pseudo-null and bounded p-primary modules are used where those are meaningful. An inseparable extension, a square-zero coefficient ring, an infinite split set, or a zero coefficient field is outside the explicitly characteristic-zero number-field/DVR hypotheses, not an silently admitted case. There are no executable arithmetic procedures in the README.

| Statement | Instances tried; computed values on the two sides | Result | Change |
|---|---|---|---|
| Coefficient field/dimension conventions | d=1,2: dim V=2 in both; rank d divided by d is 1,1; d=0 is impossible for a number field | Pass | Explicit d≥1 and nonzero coefficients. |
| Tate dual and Frobenius | q=5,a=1: det(1−F T) on V* is 1−T+5T²; on V is 1−T/5+T²/5; swapping gives unequal linear and quadratic coefficients | Pass | Added explicit dual/geometric witness. |
| Hodge–Tate normalization | χ_cyc has −1; V weights (0,−1), V* weights (0,1); twisting V by −1 gives (1,0), same multiset as V* | Pass | Retained geometric convention. |
| Local sign table | two inert: −(−1)²=−1; one inert: −(−1)=+1; ramified St⊗ξ: −(+1)=−1; ramified St: −(−1)=+1 | Pass | Conditional ramified clause preserved. |
| Continuous-cohomology/Sha carriers | degree n=1 and empty localization index gives intersection top; the number-field Sha instead uses every actual place; no finite dimension follows from homology | Pass | Supplier family is explicit; no dummy Sha. |
| Quadratic comparison | c(x)=x gives (1+c)x=2x,(1−c)x=0; c(y)=−y gives 0,2y; inverse composite is [2] | Pass | Retain 2-primary errors. |
| Kummer cokernel | finite Sha[p∞]: V_p Sha=0; Q_p/Z_p: T_p=Z_p and V_p=Q_p of dimension 1 | Pass | No integral identification claimed. |
| Ordinary root parity contract | dimensions 0,1,2 give (−1)^h=+1,−1,+1; (s−1)^3 still has negative sign and order 3 | Gap retained | Family parity is insufficient. |
| Generic Fitting base change | R/(t) has Fitt₀=(t); under t↦0 its tensor is O with Fitt₀=0, the image of (t); R/(p,t) specializes to O/(p) with Fitt₀=(p) | Pass | Use pinned theorem and actual control separately. |
| Modular differential normalization | q=exp(2πiz) gives dq/q=2πi dz; f=q+O(q²) gives f dq/q=dq+O(q)dq, while omission has leading coefficient1/(2πi) | Pass | Added explicit two-term normalization witness. |
| Normalized Heegner point contract | ℓ=2,a₂=0 gives denominator −3; numerator 3 gives −1; denominator-free value would be 3 | Pass | Imported from point owner; no new constructor. |
| Height and logarithm contracts | P↦2P: log 1↦2, square 1↦4, polarized height h↦4h; c↦c/4 if L-value is held fixed | Pass | Specified differential/period rescaling. |
| Height product order | two coefficient embeddings each order 1 give 2; at P=0 the log and c·log² are both 0 | Pass | Imported GZ all-conjugate criterion. |
| Coefficient projector contract | d=2: coefficient idempotent has components (1,0), orbit projector (1,1); the second eigenlog component is killed only in the first | Pass | No assertion φε_f=φ. |
| Inverse-different choice | changing an O-duality generator by u∈O× rescales the fibre identification by u; the rational dimension remains 2 and zero/nonzero classes are unchanged | Pass | Choice explicitly noncanonical. |
| Residual restriction §0.1 | U over F₅ has off-diagonal 1; U² has 2 and same fixed line; over F₂ U²=1; S₃|C₃ splits after scalar extension | Pass | Odd p and local unipotent retained. |
| Rank-one predicate §1.1 | id_Q: dim1,ker0 gives yes; zero_Q: dim1,ker1 gives no; zero source: dim0,ker0 gives no | Pass | Real map and finite source dimension explicit. |
| Arithmetic localization §1.2 | rank=d=2 gives each coefficient dimension1; abstract (x,y)↦(x,0) sends (1,1)↦(1,0), disproving freeness-only justification | Pass | Use actual-point BSW at every λ. |
| Semilocal image §1.3 | local dimensions 2+2=4; (h¹,h²)=(2,0) or (3,1) each give image 2 after subtracting strict kernel | Pass | No surjectivity or H²=0 assumption. |
| Strict-kernel theorem §1.4 | diagonal L² image intersects finite lines in dimension1 and has axis kernels0; finite-axis image has intersection2; e₂-axis image intersection0 | Pass | Conjugation exchanges both local spaces and finite lines. |
| Strict-kernel last clause | finite source/image dimensions (1,1) give kernel0; dimensions (2,1) give kernel1 | Pass | Retain additional source dimension assumption. |
| Anticyclotomic deformation §2.1 | ψ=1 gives W; n=2 gives weights (2,1),(−2,−3), negative count2; replacing inverse swaps the two pairs | Pass | Retain action and coefficient duality. |
| Lattice-change error | Λ/(p) has infinitely many F_p power-series coefficients, is killed by p, and becomes0 after inverting p; char (p) maps to unit | Pass | Bounded p-primary, not finite. |
| Reverse divisibility §2.2 | (t²)⊆(t) forces positive t valuation; opposite direction allows char=(1); p=5,n₀=8 gives κ=16 and 8 divides16 | Pass | Fitting-specialization route retained. |
| Augmentation control §2.3 | finite Z/p² has rational Tate dimension0; Q_p/Z_p dimension1; finite cokernel Z/p changes neither; divisible cokernel would add1 | Pass | Finite/cofinite generation explicit. |
| Unramified kernel equality | a≠1 gives L/(a−1)L=0; a=1 gives L/0=L of dimension1 | Pass | Exact rational equality; finite integral error kept. |
| Augmentation obstruction §2.4 | Λ/(t²): char(t²),coinvariant O-rank1; Λ/(t−p): rank0; Λ/(p,t): char1,rank0; Λ: char0,rank1 | Pass | Torsion and nontorsion branches separate. |
| Theorem B §3.1 | d=2: finite line1, base-change newform order1, abelian order2, rank2; rational/twist pairs (0,1),(1,0) both sum1 | Pass | No λ-primary substitute for whole Sha. |
| General BFH §4.1 | ε=+1,value δ>0; ε=−1,derivative δ>0; an excluded Q(√5) ramifies at5 while returned field splits at5 | Pass | Full even-weight theorem and infinitude deduction stated. |
| Local-prescription reduction | D₀=−7,δ=17: product−119 is squarefree and ≡1 mod4 and mod8; at3,13≡1 preserves squareclass3, while2 changes it | Pass | Full local character, not χ(q)=0. |
| Auxiliary Heegner field §4.2 | two inert signs multiply to+1 and infinity gives−1; one inert gives+1 globally; ramified St⊗ξ gives−1 globally | Pass | q kept nonsplit, q′ odd but need not be St. |
| Theorem A §4.3 | B total order1 minus twist0 gives1; for d=2 conjugates give1+1=2; conductor2q with only split multiplicative has one odd St, not two | Pass | Repeat for every conjugate. |
| Theorem A′ §4.4 | a_q=−1 maps to St⊗ξ; a_q=1 to St; rational-isogeny rank1⊗Q stays dimension1 | Pass | Exact split/nonsplit dictionary retained. |
| Mod-p localization §5.1 | Q_p/Z_p and Z/p² both have p-torsion dimension1, but Tate dimensions1 and0; cyclic alternating pairing evaluates0 on every generator pair | Pass | Perfect alternation, not square size. |
| Good local torsion | p=5: bound≤10<25 implies p-primary order1 or5; local model Z_p⊕Z/p: (1,0) has rational1, (0,1) rational0 | Pass | Good reduction/p≥5 and torsion avoidance explicit. |
| Odd residual ramification §5.2 | removing odd primes from squarefree N yields level1 or2; both cusp dimensions0; ramified q has residual exponent1 and cannot be removed | Pass | Specified-p lowering, no large-p replacement. |
| Theorem C §5.3 | rational/twist finite Selmer dimensions1+0=1; replacing0 by1 gives2 and fails B(e); trapped local torsion class has rational component0 | Pass | No initial finite-Sha assumption. |
| Rank-zero base change §6.1 | rational/twist arithmetic ranks0+d=d, signs(+1)(−1)=−1; d=2 gives coefficient dimension2/2=1 | Pass | Use derivative branch, not value branch. |
| Theorem E §6.2 | base-change order1 minus twist1=0; original order2 plus twist1 would give3 and contradict B; d=2 gives0+0=0 | Pass | All conjugates precede abelian product. |
| Full-forward supplier gap | r=0 gives d·0=0, r=1 gives d·1=d; finite single-primary quotient can coexist with abstract infinite other-primary group | Gap retained | All-prime and nonsquarefree-twist obligations explicit. |
| Source UFD/Fitting direction | principal (L) is divisorial; Fitt⊆(L) implies divisorial closure char⊆(L); ring principality alone supplies no specialized cohomology isomorphism | Pass | Corrected proof input rather than typographic inference. |

Each API fact also has a direct witness. For the imported point API the checks are part of the supplier contract; no new declaration is implied.

| API statement | Instances and computed values | Result | Change |
|---|---|---|---|
| Point: auxiliary independence | If Hecke eigenvalues satisfy eT₂=a₂e and eT₃=a₃e, each normalized numerator is (a_ℓ−1−ℓ)eQ; division returns eQ in both cases | Pass | No padding added to Lean. |
| Point: rational Hodge representative | Q=eQ^ξ; at e=(1,0),Q^ξ=(1,2) gives Q=(1,0), equal to eQ^ξ | Pass | No padding added to Lean. |
| Point: quotient functoriality | u=[2],P=1 gives uP=2, equal to the point for 2φ | Pass | No padding added to Lean. |
| Point: eigenlogarithm compatibility | log selects first component; e(1,2)=(1,0), and both logs are1 | Pass | No padding added to Lean. |
| Localization: dimension projection | identity line has dim1; zero-space dimension0 fails premise | Pass | No padding added to Lean. |
| Localization: injection projection | id_Q kernel0; zero_Q kernelQ fails premise | Pass | No padding added to Lean. |
| Localization: zero-kernel characterization | x↦(x,2x): only x=0 maps to0, so injective and ker0 are both true | Pass | No padding added to Lean. |
| Localization: commuting-square transport | e=2,h=3 gives loc′(x)=(3x/2,3x); h loc(1)=(3,6)=loc′(2) | Pass | No padding added to Lean. |
| Strict kernel: intersection | For loc=(id,id) all kernels0; for loc=(0,id), the intersection of H and0 is0, equal to paired kernel | Pass | No padding added to Lean. |
| Strict kernel: conjugation | swap(x,y) sends axis(x,0) to(0,x); dimensions of paired kernels are equal | Pass | No padding added to Lean. |
| Strict kernel: equality under finite image1 | diagonal L² image has axis intersections0 and finite intersection1, so both one-sided kernels equal strict | Pass | No padding added to Lean. |
| Strict kernel: vanishing with source1 | rank-nullity1−1=0 | Pass | No padding added to Lean. |
| Deformation: augmentation fibre | Ψ=1 makes inverse character1 and chosen O-dual L/O gives T⊗_O L/O=V/T | Pass | No padding added to Lean. |
| Deformation: inertia membership | local tuple(0,1) satisfies the first-place zero condition, tuple(1,0) fails | Pass | No padding added to Lean. |
| Deformation: lattice change | multiplication by p becomes invertible after [1/p]; Λ/(p) error becomes0 although originally infinite | Pass | No padding added to Lean. |
| Deformation: dual action | u=2 acts by inverse1/2 on dual; evaluation on ux=2x is1, whereas untwisted gives4 for φ(x)=1 | Pass | No padding added to Lean. |
| Deformation: nontorsion characteristic | Λ has rank1, extended char0 and augmentation quotientO | Pass | No padding added to Lean. |
| General selection: sign/local classes | δ=17 has sign+ and split2 since17≡1 mod8; D₀δ=−119 has sign− and split2 | Pass | No padding added to Lean. |
| General selection: analytic order branches | nonzero central value has order0; value0 with first derivative nonzero has order1; order3 fails derivative input | Pass | No padding added to Lean. |
| General selection: monotonic split set | adding5 retains all old split conditions and forces5 split | Pass | No padding added to Lean. |
| General selection: avoidance | Q(√5) has ramification at5; any selected split-at5 field differs | Pass | No padding added to Lean. |
| Auxiliary: local prescriptions | two inert odd primes give N⁻ cardinality2; ramified St⊗ξ gives finite sign+1 | Pass | No padding added to Lean. |
| Auxiliary: twist value | value≠0 gives order0, while root sign+1 alone allows order2 | Pass | No padding added to Lean. |
| Auxiliary: residual prime | inert or ramified q has nonsplit flag1; split q flag0 fails B(b) | Pass | No padding added to Lean. |
| Auxiliary: finite avoidance | add a ramified prime of each excluded field to the split set; each equality would require both e=1 and e=2 there | Pass | No padding added to Lean. |

All README Checks are independently accounted for below, one row per Check. Their numerical or symbolic values were recomputed during the statement pass. The identifiers in the first column are report-local row numbers, not Lean names. Where a Check is a negative control, “pass” means the omitted hypothesis admits the displayed failure.

| Check | Computed instance and values | Result | Change |
|---|---|---|---|
| C1, Conventions | With two inert level primes the sign is (−1)·(−1)²=−1 and N⁻ has two factors. With one inert prime it is +1. Treating the quaternion algebra as definite would reverse this parity. | Pass | Witness retained. |
| C2, Conventions | With one ramified St⊗ξ prime and all others split, the sign is (−1)·(+1)=−1; replacing St⊗ξ by St gives +1. For (D,N)=1 the conditional clause imposes no extra splitting. | Pass | Witness retained. |
| C3, Conventions | The cyclotomic character and its inverse have weights −1 and +1; V has weights 0,−1 while V* has weights 0,+1. Swapping these representations changes the ordinary filtration and the logarithm quotient. | Pass | Witness retained. |
| C4, Conventions | At q=5 and a_q=1 the geometric-Frobenius Euler polynomial on V* is 1−T+5T²; on V it is 1−T/5+T²/5. Replacing geometric by arithmetic Frobenius without dualizing would exchange these polynomials. | Pass | Witness retained. |
| C5, Conventions | Two conjugate newform factors each of order one give order 1+1=2 for the abelian L-function when d=2. Order one for that product would lose a coefficient embedding. | Pass | Witness retained. |
| C6, Conventions | At p=5 and a_p=1 the good logarithmic Euler factor is (1+5−1)/5=1; at a_p=0 it is 6/5. Its possible zero a_p=6 violates ∣a_p∣≤2√5<6. The same strict inequality holds for every p>1. | Pass | Witness retained. |
| C7, From TauCetiRoadmap.SelmerIwasawaCohomology | If rank_ℤ A(K)=d=2 and Sha[p∞] is finite, each coefficient component has dimension 2/2=1 and rational Tate-Sha cokernel zero; the integral Selmer quotient can still have finite torsion. | Pass | Witness retained. |
| C8, From TauCetiRoadmap.SelmerIwasawaCohomology | A quadratic point with c(x)=x maps to the + eigenspace: (1+c)x=2x and (1−c)x=0; for c(y)=−y the values are 0 and 2y. Dividing by 2 is legitimate rationally, while two-primary integral errors survive. | Pass | Witness retained. |
| C9, From TauCetiRoadmap.SelmerIwasawaCohomology | A cyclic group of order p² has square cardinality p², but every alternating pairing is zero since b(ng,mg)=nm b(g,g)=0; it cannot be perfectly paired with itself unless it is zero. | Pass | Witness retained. |
| C10, From TauCetiRoadmap.SelmerIwasawaCohomology | A finite Sha[p∞] has rational Tate module zero. The group ℚ_p/ℤ_p has Tate module ℤ_p and rational Tate module ℚ_p, so finiteness cannot be replaced by finiteness of p-torsion. | Pass | Witness retained. |
| C11, From TauCetiRoadmap.SelmerIwasawaCohomology | Root-number parity at dimensions 0,1,2 must give +1,−1,+1. An odd function (s−1)³ has sign −1 and central order 3, so parity alone cannot give a nonzero derivative. | Pass | Witness retained. |
| C12, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | For a normalized expansion f=q+O(q²), the differential f dq/q has leading term dq, because dq/q=2πi dz. Omitting 2πi would give leading coefficient 1/(2πi). | Pass | Witness retained. |
| C13, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | If ℓ=2 is permitted and a₂=0, the denominator is −3 and P_K(f)=−u/3 for u=φε_f[D_K,2]. For u=3 this gives −1; dropping the denominator gives 3 and the zero construction gives 0. | Pass | Witness retained. |
| C14, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | An Eisenstein correction has zero ε_f-projection; adding it changes a divisor but changes the eigenpoint by 0. The cusp and Hodge corrections likewise differ by an element with zero f-projection. | Pass | Witness retained. |
| C15, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | Replacing φ by [2]φ sends a point with logarithm 1 to one with logarithm 2; its squared logarithm is 4. Height also scales by 4. This separates a point, a linear logarithm and its square. | Pass | Witness retained. |
| C16, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | For an isogeny u:A→A′, the pullback identity is log_(u*ω′)(P)=log_ω′(uP) for P∈A. A point of A′ cannot be inserted in u. With u=[2], both sides at log_ω′P=1 are 2. | Pass | Witness retained. |
| C17, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | Rescaling ω to 2ω multiplies its logarithm by 2. If the analytic function is fixed, c changes to c/4, so c(log_ωP)² remains c when log_ωP=1. If the transferred form and its analytic normalization scale together, their squared value scales by 4. | Pass | Witness retained. |
| C18, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | At d=2, the multiplication idempotent in M⊗M has component values (1,0), whereas the rational orbit projector acts as (1,1); identifying them would retain the wrong embedding. The matching eigenlogarithm annihilates the second component. | Pass | Witness retained. |
| C19, From TauCetiRoadmap.GrossZagierAndArithmeticHeights | The zero Heegner point has logarithm 0 and analytic value c·0²=0. A nonzero arbitrary Selmer class may also have logarithm 0; only the actual-point eigenlogarithm input proves the converse. | Pass | Witness retained. |
| C20, 0.1 Irreducibility after restriction | Over 𝔽₅, U=(1 1;0 1) has square (1 2;0 1), with the same unique fixed line spanned by (1,0); the off-diagonal entry remains nonzero. | Pass | Witness retained. |
| C21, 0.1 Irreducibility after restriction | In characteristic 2 the same square is the identity. The fixed-line proof therefore requires odd characteristic; p=2 is outside the theorem. | Pass | Witness retained. |
| C22, 0.1 Irreducibility after restriction | The irreducible two-dimensional representation of S₃ in characteristic 5 restricts to C₃ as two eigenlines after adjoining cube roots of unity. Its transpositions have eigenvalues 1,−1, rather than nontrivial unipotent inertia of odd order. This is a negative control for dropping the local ramification input. | Pass | Witness retained. |
| C23, 1.1 The rank-one localization condition | The identity ℚ→ℚ has dimension 1 and kernel 0, so satisfies the condition. The zero map on ℚ has the same source dimension and kernel ℚ, so fails. | Pass | Witness retained. |
| C24, 1.1 The rank-one localization condition | The unique map from the zero vector space is injective and has dimension 0; it fails the line condition. Likewise an injection ℚ²→ℚ² fails because its dimension is 2. | Pass | Witness retained. |
| C25, 1.1 The rank-one localization condition | Let loc(x)=(x,2x), e(x)=2x and h(y,z)=(3y,3z). The transported map sends x to (3x/2,3x); its kernel is still 0 and the commuting square gives h(loc(1))=(3,6)=loc′(e(1)). Transporting the spaces without transporting the map would not test the condition. | Pass | Witness retained. |
| C26, 1.2 Arithmetic rank one at every coefficient place | For M=ℚ and arithmetic rank 1, the source dimension is 1/1=1; a nonzero local logarithm gives a rank-one local map. | Pass | Witness retained. |
| C27, 1.2 Arithmetic rank one at every coefficient place | If p has two coefficient places, an abstract map L×L→L×L given by (x,y)↦(x,0) has nonzero full image and zero second component. The algebraic-point eigenlogarithm theorem excludes this wrong model for the actual generator. | Pass | Witness retained. |
| C28, 1.2 Arithmetic rank one at every coefficient place | A torsion point has logarithm 0, and rational Kummer class 0. It is ineligible as the nonzero M-generator, even if it is nonzero in A(K). | Pass | Witness retained. |
| C29, 1.2 Arithmetic rank one at every coefficient place | If Sha[p∞] contains a divisible line, its rational Tate module has dimension 1 and the Kummer cokernel need not vanish. The arithmetic-rank calculation alone then does not give the claimed Selmer dimension. | Pass | Witness retained. |
| C30, 1.3 The unrestricted semilocal image | The target dimension is 2+2=4, while the image dimension is 2. A surjectivity assertion would claim 2=4 and is rejected. | Pass | Witness retained. |
| C31, 1.3 The unrestricted semilocal image | If dim H²=0, the formula gives dim H¹=2 and strict-kernel dimension 0. If dim H²=1, it gives dim H¹=3 and strict-kernel dimension 1; both give image dimension 2. | Pass | Witness retained. |
| C32, 1.3 The unrestricted semilocal image | A trivial one-dimensional coefficient has H⁰ dimension 1 and fails the invariant hypotheses. It cannot be substituted into the rank-two weight −1 calculation. | Pass | Witness retained. |
| C33, 1.4 Strict and one-sided kernels | In P=L² with finite line Le₁, the diagonal image X={(x,x):x∈P}⊂P⊕P has dimension 2 and finite intersection {(ae₁,ae₁)} of dimension 1. Both coordinate projections have zero kernel. | Pass | Witness retained. |
| C34, 1.4 Strict and one-sided kernels | For the axis image X=(Le₁⊕0)⊕(0⊕Le₁), the finite intersection is all X, dimension 2. This is the wrong model excluded by dimension 1. If the axes use Le₂, their finite intersection has dimension 0 instead. | Pass | Witness retained. |
| C35, 1.4 Strict and one-sided kernels | If the finite Selmer group has dimension 2, image dimension 1 and kernel dimension 1 are compatible with rank-nullity. The equality of one-sided kernels does not by itself make them zero. | Pass | Witness retained. |
| C36, 1.4 Strict and one-sided kernels | At B(e), source dimension 1 and injective semilocal map give finite-image dimension 1 and strict-kernel dimension 1−1=0; individual injectivity is then a conclusion, not an additional hypothesis. | Pass | Witness retained. |
| C37, 2.1 The one-sided anticyclotomic specialization | At the trivial character, Ψ⁻¹=1 and the fibre is W, a discrete divisible torsion module; it is not the compact lattice T. | Pass | Witness retained. |
| C38, 2.1 The one-sided anticyclotomic specialization | A global class whose 𝔭 restriction is zero and whose 𝔭̄ restriction is nonzero remains in this kernel. Imposing strictness at both places would reject it. | Pass | Witness retained. |
| C39, 2.1 The one-sided anticyclotomic specialization | For X=Λ, the extended characteristic ideal is 0 and X/(γ−1)X=O. Assigning the unit ideal to X would erase this nontorsion branch. | Pass | Witness retained. |
| C40, 2.1 The one-sided anticyclotomic specialization | With n=2, the specialized weights are (2,1) and (−2,−3), so exactly two are negative. Using Ψ in place of Ψ⁻¹ reverses the character contribution and gives (−2,−3) and (2,1). | Pass | Witness retained. |
| C41, 2.1 The one-sided anticyclotomic specialization | Λ/(p) is infinite, killed by p and has characteristic ideal (p); after inverting p it is zero with characteristic ideal (1). A promise of finite lattice-change error at the Λ-level fails this test. | Pass | Witness retained. |
| C42, 2.1 The one-sided anticyclotomic specialization | For a scalar action by u, the dual acts by u⁻¹: pairing u⁻¹φ with ux returns φ(x). Omitting the inverse gives u²φ(x), which for u=2 and φ(x)=1 is 4 rather than 1. | Pass | Witness retained. |
| C43, 2.2 The ordinary reverse divisibility | In R=O[[t]], (t²)⊆(t); when L=t, the inclusion forces a t-divisor on a nonzero torsion characteristic ideal. The reversed inclusion allows char=(1), which gives no augmentation class. | Pass | Witness retained. |
| C44, 2.2 The ordinary reverse divisibility | For p=5 choose n₀=8; then κ=16≥6 and 2(p−1)=8 divides κ. n₀=4 fails the chosen n₀>6 interpolation branch. | Pass | Witness retained. |
| C45, 2.2 The ordinary reverse divisibility | At ψ₀(γ)=a, the twist sends γ to a⁻¹γ, and evaluating γ at a gives 1. The map γ↦aγ instead gives a², so misses the required specialization. | Pass | Witness retained. |
| C46, 2.2 The ordinary reverse divisibility | A finite module R/(p,t) has characteristic ideal (1). An arbitrary pseudo-null error cannot be discarded inside a Fitting specialization without its exact control terms; at t=0 it gives the nonzero finite module O/(p). | Pass | Witness retained. |
| C47, 2.3 Finite-error augmentation control | A finite group ℤ/p² has rational Tate module 0; ℚ_p/ℤ_p has rational Tate module ℚ_p of dimension 1. This distinguishes infinitude with finite cotype from a finite control error. | Pass | Witness retained. |
| C48, 2.3 Finite-error augmentation control | A map with cokernel ℤ/p has the same divisible corank on both sides. A cokernel ℚ_p/ℤ_p would raise corank by 1 and invalidate the conclusion; “torsion error” is insufficient. | Pass | Witness retained. |
| C49, 2.3 Finite-error augmentation control | If a Frobenius eigenvalue on V^I is a≠1, the unramified cohomology quotient is V^I/(a−1)V^I=0. At a=1 it is V^I, exhibiting the exceptional case excluded by purity. | Pass | Witness retained. |
| C50, 2.4 The augmentation obstruction | X=Λ/(t²) has char=(t²)⊆(t) and coinvariant O-rank 1, so contributes a nonzero rational class. For Λ/(t−p), t acts as p and the coinvariant O/(p) has rank 0; its characteristic ideal is not contained in (t) after inverting p. | Pass | Witness retained. |
| C51, 2.4 The augmentation obstruction | A finite Λ/(p,t) has characteristic ideal (1) and coinvariant O-rank 0. It cannot create a height-one augmentation zero. | Pass | Witness retained. |
| C52, 2.4 The augmentation obstruction | For X=Λ, char=0 and coinvariant rank 1. The nontorsion argument is necessary even though ideal containment is automatic in that branch. | Pass | Witness retained. |
| C53, 3.1 Theorem B | When (D,N)=1 and two level primes are inert, condition 4 is vacuous, the global sign is −1 and Case II is allowed. Requiring all other level primes to split in this branch would wrongly exclude it. | Pass | Witness retained. |
| C54, 3.1 Theorem B | At d=2, newform base-change order 1 gives abelian order 2 and arithmetic rank 2. It does not assert abelian order 1. | Pass | Witness retained. |
| C55, 3.1 Theorem B | Orders (0,1) and (1,0) of the rational and twisted factors each sum to 1; both are permitted. Orders (1,1) sum to 2 and are excluded. | Pass | Witness retained. |
| C56, 3.1 Theorem B | The abstract torsion group ℤ/5 ⊕ ℚ₇/ℤ₇ has finite 5-primary subgroup and is infinite. Finiteness at the coefficient prime alone cannot supply the full-Sha conclusion; the forward theorem and quadratic comparison account for every primary component. | Pass | Witness retained. |
| C57, 3.1 Theorem B | The zero Heegner point gives logarithm 0 and analytic value 0. With c≠0, an analytic value c at logarithm 1 forces a nonzero point; replacing c by 0 would destroy this implication and is excluded by the period/Euler contract. | Pass | Witness retained. |
| C58, 4.1 General quadratic nonvanishing with local prescriptions | With ε(g)=+1 the value branch has δ>0; with ε(g)=−1 the derivative branch has δ>0. Exchanging the branches gives a negative δ and changes an imaginary D₀δ to a positive discriminant. | Pass | Witness retained. |
| C59, 4.1 General quadratic nonvanishing with local prescriptions | D₀=−7 and δ=17 are coprime fundamental discriminants, δ≡1 mod8, and D₀δ=−119 is fundamental and congruent to 1 mod8. This checks the sign and the split-2 condition only; it makes no claim of nonvanishing or of extra splitting for this pair. | Pass | Witness retained. |
| C60, 4.1 General quadratic nonvanishing with local prescriptions | Locally at 3, 13≡1 mod3 is a square in ℚ₃, so multiplying the squareclass of 3 by 13 preserves it. Multiplication by the nonsquare unit 2 changes that ramified squareclass. The Dirichlet value at 3 is 0 in both cases and cannot distinguish them. | Pass | Witness retained. |
| C61, 4.1 General quadratic nonvanishing with local prescriptions | An excluded field ℚ(√5) is ramified at 5; a returned field with 5 split cannot equal it. Enlarging the split set supplies avoidance without a quantitative counting claim. | Pass | Witness retained. |
| C62, 4.1 General quadratic nonvanishing with local prescriptions | A negative functional-equation sign permits an analytic germ (s−1)³ of order 3. A nonzero derivative, supplied by the derivative branch on the actual L-function, is the extra property giving order 1. | Pass | Witness retained. |
| C63, 4.2 The auxiliary Heegner field | At a nonsplit-multiplicative q the ramified St⊗ξ contribution is +1, and the global sign with the archimedean factor is −1. A coprime-only twist-sign formula cannot be used at q. | Pass | Witness retained. |
| C64, 4.2 The auxiliary Heegner field | Two distinct odd inert primes give N⁻ with two factors and global sign −1; one inert prime gives sign +1 and fails the selection. | Pass | Witness retained. |
| C65, 4.2 The auxiliary Heegner field | Making every residual-ramified prime split makes B(b) false, even if the twist value is nonzero. If q has St type, q′ must be odd because 2 is prescribed split. | Pass | Witness retained. |
| C66, 4.2 The auxiliary Heegner field | A positive second discriminant δ that is square at the specified local fields preserves the negative sign of D₀δ and every local character; a merely positive δ that is nonsquare at a level prime would fail. | Pass | Witness retained. |
| C67, 4.2 The auxiliary Heegner field | Root number +1 allows central order 2. The selected twist instead has order 0 by nonvanishing; this separates the analytic selection from the local sign conditions. | Pass | Witness retained. |
| C68, 4.3 Theorem A | For d=1 the arithmetic rank and the final analytic order are both 1. For d=2 two conjugate orders 1 give 2; proving order 1 in a single embedding would not by itself establish the product claim. | Pass | Witness retained. |
| C69, 4.3 Theorem A | There may be several λ∣p. The prime-selection theorem requires some ordinary λ and all sufficiently large λ residually admissible; no uniqueness of λ is needed. | Pass | Witness retained. |
| C70, 4.3 Theorem A | An odd St⊗ξ prime alone satisfies the first local alternative. A conductor 2q with only split multiplicative types at 2 and q has only one odd St prime and fails both alternatives. | Pass | Witness retained. |
| C71, 4.4 Theorem A′ | Nonsplit multiplicative reduction corresponds to a_q=−1 and St⊗ξ, while split multiplicative reduction corresponds to a_q=+1 and St. Reversing the dictionary exchanges the two alternatives. | Pass | Witness retained. |
| C72, 4.4 Theorem A′ | Two split multiplicative primes, both odd, satisfy the second alternative; replacing one by 2 leaves only one odd prime and no longer satisfies it. | Pass | Witness retained. |
| C73, 4.4 Theorem A′ | A rational isogeny has finite kernel and cokernel on rational points after tensoring with ℚ, so rank 1 maps to rank 1. Entire Sha finiteness is transferred by the separate isogeny theorem, retaining finite primary errors. | Pass | Witness retained. |
| C74, 5.1 A mod-p Selmer line detects rational localization | For p=5, a cyclic group ℤ/25 has cardinality 25, a square, but b(ng,mg)=nm b(g,g)=0 for every alternating form. Square cardinality cannot replace perfect alternation. | Pass | Witness retained. |
| C75, 5.1 A mod-p Selmer line detects rational localization | ℚ_p/ℤ_p has p-torsion 𝔽_p and rational Tate module dimension 1; ℤ/p² also has p-torsion 𝔽_p but rational Tate module 0. The pairing argument separates these alternatives. | Pass | Witness retained. |
| C76, 5.1 A mod-p Selmer line detects rational localization | At p=5, #E(𝔽₅)≤10<25, so injective reduction gives local p-primary torsion order at most 5 and exponent at most 5. The analogous bound at p=3 is 7<9, but the theorem’s p≥5 hypotheses and specified global suppliers remain; no p=3 converse is asserted. | Pass | Witness retained. |
| C77, 5.1 A mod-p Selmer line detects rational localization | In the local model E(ℚ_p)⊗ℤ_p≅ℤ_p⊕ℤ/p, the torsion image modulo p is the second coordinate. The class (1,0) lies outside it and has nonzero rational component; (0,1) lies inside it and has rational component 0. | Pass | Witness retained. |
| C78, 5.2 An odd residual-ramified bad prime | Removing every odd prime from squarefree N leaves N′∈{1,2}. The genus formula gives 1+1/12−1/4−1/3−1/2=0 at level 1 and 1+3/12−1/4−0−2/2=0 at level 2, hence cusp dimensions 0,0. A nonzero weight-two witness cannot remain. | Pass | Witness retained. |
| C79, 5.2 An odd residual-ramified bad prime | If odd q remains residually ramified, its conductor exponent is 1 and the lowering hypothesis at q fails, so the contradiction cannot remove it. | Pass | Witness retained. |
| C80, 5.2 An odd residual-ramified bad prime | A reducible residual representation can be Eisenstein and fails the irreducible lowering hypothesis. The reducible mod-5 representation of the semistable curve 11a1 therefore is not a counterexample to this argument. | Pass | Witness retained. |
| C81, 5.3 Theorem C | For a fixed p the chosen residual-ramified q cannot be replaced by a prime that is ramified only for another coefficient prime; condition B(b) would then be unsupported. | Pass | Witness retained. |
| C82, 5.3 Theorem C | Over K, the rational Selmer dimensions add as 1+0=1. If the twist instead had dimension 1, the sum would be 2 and B(e) would fail. | Pass | Witness retained. |
| C83, 5.3 Theorem C | If the mod-p local image is contained in the local torsion image, its rational component may be 0; the line condition alone does not prove the injection. | Pass | Witness retained. |
| C84, 5.3 Theorem C | The conclusion includes every primary part of Sha. A bound at p alone cannot yield that conclusion; the full forward theorem is used after analytic order 1 is established. | Pass | Witness retained. |
| C85, 6.1 Base change with a derivative twist | Rational sign +1 and twist sign −1 multiply to base-change sign −1. The nonzero value branch would instead force twist order 0 and could not supply this rank-d arithmetic base change. | Pass | Witness retained. |
| C86, 6.1 Base change with a derivative twist | The arithmetic ranks add as 0+d=d. For d=2 this is 0+2=2, yielding a one-dimensional coefficient Selmer group rather than a two-dimensional one. | Pass | Witness retained. |
| C87, 6.1 Base change with a derivative twist | If the twist merely had root sign −1, order 3 would remain possible. The derivative branch gives a nonzero first derivative and order 1, which is the input to the forward theorem. | Pass | Witness retained. |
| C88, 6.1 Base change with a derivative twist | A positive δ square at every specified local field preserves D₀’s negative sign and residual nonsplit prime; a negative δ would produce a positive D and fail the imaginary-quadratic hypothesis. | Pass | Witness retained. |
| C89, 6.2 Theorem E | Base-change order 1 minus twist order 1 is 0. A twist order 0 instead would give original order 1 and prove the wrong conclusion. | Pass | Witness retained. |
| C90, 6.2 Theorem E | For d=2, each conjugate order 0 gives product order 0+0=0; nonvanishing of only one conjugate factor would not establish this. | Pass | Witness retained. |
| C91, 6.2 Theorem E | If the original factor had order 2 and the twist order 1, the product would have order 3, contradicting B’s order 1. Nonnegative analytic orders rule out cancellation of zeros. | Pass | Witness retained. |

There are 91 discriminating Check bullets. The six worked examples repeat these independently recomputed witnesses in the global argument. Their values are: (1) d=2 gives Selmer dimension1, local dimensions2+2 and abelian order2; (2) ramified St⊗ξ gives sign−1 and the normalized numerator3 gives point−1; (3) two inert primes give sign−1 and one gives+1; (4) the four coinvariant ranks are1,0,0,1; (5) local classes (1,0),(0,1) have rational components1,0; (6) the analytic subtractions are1−0=1 and1−1=0. Each agrees with every formula in its layer.

## Elaboration and mechanical outcomes

From the content checkout, `lake env lean` was run on the absolute path of `packages/RankOneConverse/Suggested.lean`, as required. It exited 0 with no output. Exact count of sorry warnings: **0**. Other messages: **none**. The file has no Tau Ceti import to build. The scratch binder/library-signature check from the same checkout also exited 0, with only the requested declaration-type output and no warnings.

One earlier scratch-check attempt was launched from the board instead of the content checkout. Its complete message was:

```text
error: no default toolchain configured. run `elan default stable` to install & configure the latest Lean 4 stable release.
```

It was corrected by rerunning in the content checkout. No toolchain setting, manifest or library file was changed. This message was not from the acceptance-file elaboration.

The citation resolver returned no missing cross-roadmap citations and no missing Lean names. It reported that its remote host did not check external pinned names; those were separately read in the local pinned trees and Mathlib declarations were checked by Lean. The README claims zero backticked identifiers as this roadmap’s own declarations. Its local APIs and Checks are prose, so there is no missing-identifier padding.

Source-manifest check output:

```text
packages/RankOneConverse/sources.toml: 0 problem(s)
```

The required dependency command used the package README, name RankOneConverse, the supplied merge order and `--movable`. Its output was:

```text
depcheck: 52 roadmaps, 596 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The final source count is seven, with no duplicate work keys and no unresolved text request. Only the authorized package deliverables and the plan’s gap list were edited; all auxiliary work remains in scratch. No repository list, supplier file, merge order or library pin was edited, and no external write was performed.
