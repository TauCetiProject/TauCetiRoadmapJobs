# Review of K3BlochGroups (pull request #1430 at 15e2117)

**Verdict:** needs changes

## R01 (P2) — Reconcile the two superseded supplier gaps with local ownership

**Location:** `TauCetiRoadmap/K3BlochGroups/README.md:23`, :403 and :1980; `packages/K3BlochGroups/design/plan.json:2`.

**Claim:** The README assigns the positive-characteristic integral torsion comparison to §2.2 and general real-closed-field elementary transfer to §5.8. The package nevertheless requests exactly those results from other suppliers, and neither declared slug appears under Exact supplier contracts.

**Witness:** `plan.json:4–13` assigns both results externally; README :403 and :1980 explicitly construct them locally. Searching this README for `gap:` returns zero occurrences. These are two ownership records for the same results.

**Repair:** Retire the two superseded entries from the package's gap record and record that the current local targets discharge those needs. Preserve the full statements, proofs and local ownership in §§2.2 and 5.8; do not announce duplicate work to the suppliers. If the accepted design instead requires those suppliers to retain ownership, restore the exact matching `What <Supplier> must provide (gap:<slug>): ...` contracts and import the generic results rather than developing them twice. In either case, the intake-visible record and README must identify one owner.

The existing local constructions pass the relevant instance tests: at Ω=𝔽̄₂ and m=5 the normalized Bockstein is C₅→C₅ and Frobenius acts by 4; rational-parameter transfer gives the same truth values for x²=2 and x²+1=0 in the real algebraic numbers and ℝ. Resolving ownership does not require weakening either theorem. This finding concerns the now-inconsistent ownership records, not the previously settled request for an unavailable positive-characteristic theorem. The local integral-injection argument supplies the formerly missing step.

## R02 (P3) — Update the supplier locators and obsolete declaration names

**Location:** `TauCetiRoadmap/K3BlochGroups/README.md:13`, :69, :83, :113 and :119. Representative claim: “Section 3.29 supplies `uce.source_superperfect` and `plusGroup_fibreUCE`”.

**Claim:** These citations identify the precise supplied plus/Q, universal-central-extension and stable-stem inputs, but some identifiers and section assignments no longer match the supplied heads.

**Witness:** The universal-central-extension fibration is at `TauCetiRoadmap/StableHomotopyKTheory/README.md:1389` (§3.33), the ring plus/Q equivalence at `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:645` (§3.14), and η³=12ν at `TauCetiRoadmap/FourManifolds/README.md:2881` (§7.1).

**Repair:** Cite StableHomotopyKTheory §3.29 for superperfectness by its actual prose target, removing the nonexistent `uce.source_superperfect` identifier; cite §3.33 for BA→BE⁺→BP⁺ instead of attributing this special fibration to §3.32 or the obsolete `plusGroup_fibreUCE` name. Add GeneralAlgebraicKTheory §3.14 to the plus/Q contract. Replace FourManifolds F7.0b by §7.1. Replace HomotopySpheres “Stage 9, item 1” by its supplied-head §9.1 and preserve that section's import of the normalized third stem from StringOrientation S2.3. Apply these replacements to the repeated Needs/Dependencies citations too.

These are locator repairs, not assertions that the mathematical inputs are unowned: the opened replacement sections contain them. The normalization tests remain π₂(BSt(ℤ)⁺)=0 versus π₂(BE(ℤ)⁺)=C₂, and C₂₄/⟨12⟩=C₁₂; changing ν to −ν still gives −12=12 modulo 24.

## Verified sound

The review covered both complete roadmap files at the requested head. The repository writing rules and contribution rules were read, and the shape was compared with AlgebraicTopology, completed UniversalCovers and completed RealAlgebraicGeometry on main. No edits were made to the pull-request worktree. The outside-folder diff is empty. No route-specific prime restriction, computational algorithm, copied prose passage, sorry-defined data, option override, import of another roadmap, or replacement of an existing whole roadmap was found.

The worker's gate for this head passes every listed check, including the targeted build, source-material, stray-files, imports, identifiers and outside-folder checks. Independent direct elaboration of `TauCetiRoadmap/K3BlochGroups/Suggested.lean` succeeded with exactly eight warnings, all `declaration uses sorry`. The scratch one-tactic probes (`simp`, `rfl`, `infer_instance`, with fallback to `sorry`) left all eight theorems admitted; no padding was identified. Object searches did not locate an exact pinned theorem that closes one of them. The additional scratch `#check @...` audit covered all 13 declarations: all field, finiteness, characteristic, infinitude, coefficient-identity and degree hypotheses survive. No signature repair was needed.

The requested dependency command, using the supplied order and main content and the movable option, returned:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Every Needs line was read; in particular §6.6 proves the mixed finite/infinite square before invoking finite-field Bloch rigidity, and §2.2 proves K₄ divisibility before constructing positive-characteristic integral torsion. Neither route uses its conclusion as an input. The declaration-gap reconciliation in R01 remains necessary despite this mechanical result.

### Seeded source checks

All 15 sampled targets were examined, including their stated hypotheses and the source text where available. There are no README targets marked unverified. “Derived” below means the displayed algebra/proof route was checked; it does not mean the source contains the roadmap's entire strengthened interface verbatim. Source references use the supplied line-numbered extractions; the CGZ published and preprint versions retain the same manifest key.

| Sample | Locator and text examined | Outcome |
| --- | --- | --- |
| 1.2 canonical homology comparison | Weibel IV, Exercise 1.9, chapter pp.14–15, combined PDF p.282; weibel line 15948 | Stable Steinberg plus comparison supports K₃≅H₃(St). The specified composite reverses q and j; tested 1↦3 in C₅ when q=×2. |
| 1.4 ring maps and finite stages | Weibel IV §1, functoriality and stable-group convention, plus Exercise 1.9; weibel lines 15102–15116 and 15948; StableHomotopyKTheory §1.17 | Naturality plus finite support gives the finite-stage statement without injective transition maps or a uniform stable range. This is a derived refinement, not a claim of finite-rank Hurewicz. |
| 2.2 injectivity and motivic edge | Weibel VI.4.3.1–4.3.2, combined PDF p.490; weibel lines 29189–29217 | Integral low-degree sequence and injectivity match. The all-prime closure route retains characteristic two and the degree-zero exception; the additional normalized characteristic-p torsion construction is explicit. R01 is ownership only. |
| 2.5 rational information | Weibel VI.5.3, combined PDF p.496; weibel lines 29617–29653 | Number-field rank r₂ and finite decomposable/torsion groups support the rational equivalence; this does not assert rational Milnor vanishing over arbitrary fields. |
| 3.9 full-tensor kernel | Explicit definition, with Weibel VI.5.1–5.4, chapter pp.23–25; weibel lines 29550–29567, 29663–29705 | Derived kernel/intersection calculation verified. Bloch Lecture 6 supplies only the name, not a theorem being certified. The full-tensor boundary does not descend through all five-term relations. |
| 3.13 older exterior convention | CGZ arXiv v3, Definition 1.1 and Lemma 2.2, pp.2,8–9; cgz2021 lines 78–100, 380–410 | The old presentation has the stated defect. The intersection repair is necessary: ξ(2,1) has exterior boundary 2∧(−1)≠0 over ℚ. Published Definition 2.1, p.391, cgz2021 lines 445–481, explicitly changes the target. |
| 4.3 scalar acyclicity | Suslin 1984, Corollary 1.8 and Theorem 1.9/proof, p.191 | Primary source waived. Infinite-field and j>0 hypotheses retained; scalar containment in either block is stated explicitly. Instance checks below do not certify the unavailable proof at this generality. |
| 4.14 rank-three comparison | Weibel VI.5.10–5.12 and preceding definition, combined PDF pp.500–502; weibel lines 29944–30049 | Cone convention requires ψ′(P)=−2c. Independently checked all 72 rotation sums over 𝔽₁₁, and 136 further sums over 𝔽₅, 𝔽₇, 𝔽₁₃. All give +2c before the cone sign. |
| 4.15 permutation/monomial sequence | Weibel VI.5.13–5.16.1 and Exercise 5.5; weibel lines 30050–30324, 30489–30490; Kerz Theorem 2, pp.2–3, kerz line 82 | Corrected identity tested over four fields; Γ conjugations recomputed. Kerz's i<(n+1)/2 gives precisely 2i≤n. The intermediate Suslin 1991 proof remains waived. |
| 4.17 cyclic Chern/doubling | Weibel VI.5.18, combined PDF p.506; weibel lines 30354–30379; Suslin 1991 Lemma 5.7 proof, p.236, waived | Statement gives doubling, not injectivity of doubling. Whitney factors (1+u)(1−u) give c₂=−u². The error in the K-book's intermediate coinvariant identification is recorded below. |
| 4.18 closure detector | Weibel VI.5.19 and diagram, chapter p.34, combined PDF p.507; weibel lines 30389–30433; V.11.3.2 | Ordinary Tor and weight-two automorphism action retained. The cofinal odd-or-8-divisible moduli avoid unsupported mod-4 product normalization. Closure torsion is not μ⊗μ. |
| 4.20 infinite Suslin sequence | Weibel VI.5.20 and VI.5.2; weibel lines 30434–30448 and 29587–29604 | The infinite-field sequence has enhanced Tor; the finite-field extension is separately constructed. Over ℚ its orders are 4,24,6. |
| 5.6 odd coefficients/Cartan | CGZ published §4.2 and Lemma 4.4, pp.406–407; cgz2021 lines 1193–1294; Hutchinson Corollaries 3.6–3.7 and 7.5, hutchinson2013 lines 704–719, 1731–1737 | CGZ treats a narrower odd-prime setup. General q, including even q, follows from the separate Hutchinson comparison and cyclic tensor arithmetic here. No false integral H₃ or canonical untwisted Cartan identification is imported. |
| 6.6 quotient comparisons | Weibel VI.5.2, VI.5.6–5.8; hutchinson2013 Theorem 4.3, Corollary 7.5; cgz2021 published Lemma 2.2, lines 459–481 | Mixed square is an additional chain-comparison target; the six-term torsion/quotient sequence is the snake sequence. Odd/root hypotheses are essential and are tested below. |
| 6.7 true finite coefficients | Levine Theorems 4.11–4.12, printed pp.334–336; levine lines 2831–2878; hutchinson2024 lines 156–171, Theorem 2.10; weibel-chern lines 398–403, 437–446 | Domain is finite-coefficient indecomposable K₃, not K₃/n. All invertible moduli are covered. Degree-two even-coefficient nonadditivity is kept separate from the additive degree-three map. |

Other source comparisons included Mirzaii Lemma 4.1, pp.8–10 (mirzaii lines 365–455), Hatcher Examples 4.51–4.52, pp.380–381 (hatcher lines 16494–16550), Goncharov Conjecture 1.20 and Proposition 1.22, p.225 (goncharov lines 893–915), Marker Theorem 3.5, Corollary 3.6 and Proposition 4.1, pp.24–25 (marker lines 398–449), and Zagier II.1.A, pp.23–24 (zagier lines 1023–1064). In particular, the all-curve relation equality is not promoted from Goncharov's conjecture to a theorem.

### Computed adversarial ledger

These are instance calculations and checks of defining laws, not substitutes for proofs of the general theorems. Cₙ denotes ℤ/n and 0 denotes the trivial group. “Retain” means no change to that mathematical statement is requested. The 138 rows include all numbered target sections, the eight acceptance headlines and the targets touched by the findings. Formulas on the same constructed object are split where they need different controls.

| Statement or defining law | Instances | Computed values on the two sides / excluded model | Result; change |
| --- | --- | --- | --- |
| 1.1 Steinberg plus and connectivity | A=0,ℤ | A=0: K₃=H₃(1)=0. A=ℤ: π₂(BSt⁺)=0; π₂(BE⁺)=C₂. | Retain; wrong plus space excluded. |
| 1.1 covering comparison | A=ℚ | π₁(BSt⁺)=0; π₁(BGL⁺)=ℚˣ, containing −1≠1. | Retain. |
| 1.2 canonical composite and inverse | C₅, q=×2, others id | c(1)=3; q(c(1))=6=1; unreversed q gives 2. | Retain. |
| 1.2 additivity/naturality | Same C₅ model | c(1+1)=1=3+3; c(0)=0; inverse composite sends 2 to 2. | Retain. |
| 1.3 unnormalized differential | Identity entries | d₄[1,1,1,1]=[1,1,1]; d₃[g,1,1]=[1,1]−[g,1]. | Retain; normalized and unnormalized models differ. |
| 1.3 noncommutative bar order | S₃, g=(01),h=(12) | gh(2)=0; hg(2)=1. Middle term is −[gh], not −[hg]. | Retain pinned order. |
| 1.3 cycle evaluation and witnesses | z=d₄[1,1,1,1] | z≠0 as a free chain; d₃z=0 and ev(z)=0. | Retain; zero class need not be zero chain. |
| 1.4 identity/composition | A→A→A, identity | A support coefficient 7 remains 7; every tuple and its boundary are unchanged. A=0 gives class 0 on both routes. | Retain. |
| 1.4 filtered stages without injectivity | C₂→1 and trivial coefficient homology | Nonzero H₃(C₂)=C₂ class becomes 0 at the next stage; a later boundary witnesses equality. | Retain; no uniform/injective-stage assumption. |
| 1.5 wedge decomposition | 0,1,2,3 sphere summands | Ranks r+r(r−1)/2 are 0,1,3,6; Hopf and unordered-pair coordinates give those same ranks. | Retain. |
| 1.5 swap, pinch and fold | Two S² summands | Pair swap has sign (−1)⁴=+1; pinch Hopf coordinates (1,1,1); fold gives η+η+2η=4η. | Retain. |
| 1.5 finite-subwedge compatibility | Include first two of three spheres | (a,b,c)↦(a,b,0,c,0,0); restriction returns (a,b,c). | Retain; no extra pair coordinate. |
| 1.5 Hopf–Hurewicz kernel | ℤ; characteristic two field | ℤ: C₄₈/⟨24⟩=C₂₄. In characteristic two, [−1]=[1]=0. | Retain. |
| 1.5 sphere-unit normalization | η³ in C₂₄ | 12 has order 2; −12=12; quotient order 12. | Retain mathematics; R02 locators. |
| 2.1 Milnor image/cokernel | ℚ | Image={0,24} in C₄₈; cokernel C₂₄. Quotient by all torsion would be 0. | Retain. |
| 2.1 quotient uniqueness | C₄₈→C₂₄ | 1 and 25 both map to 1; their difference 24 lies in the specified image. | Retain. |
| 2.2 signed Chern composite | {t₁,t₂,t₃} over ℚ(t₁,t₂,t₃) | Ordered residues give 1; composite residues give +2; swap first entries gives −2; zero map gives 0. | Retain. |
| 2.2 characteristic-p branch | 𝔽₂(t₁,t₂,t₃); Prüfer C₂∞ control | Symbol residues 1 and 2 are unequal in ℤ; in C₂∞, 2·(1/2)=0 despite divisibility. | Retain torsion-freeness input. |
| 2.2 motivic edge quotient | ℚ | K₃=C₄₈, Milnor image C₂, H¹(ℚ,ℤ(2))=C₂₄; edge kernel C₂. | Retain. |
| 2.2 K₄ divisibility and coefficient boundary | Ω=𝔽̄₂, r=2,5 | K₄=0, so K₄/r=0; mod 5 boundary C₅→C₅ is bijective; mod 2 both positive-degree groups 0. | Retain proof route. |
| 2.2 degree-zero exception | Ω=𝔽̄₂ | K₀(;ℤ/2)=C₂; positive-degree defining-characteristic coefficient groups 0. | Retain. |
| 2.2 normalized torsion naturality | Ω=𝔽̄₂, m=3,5 | Frobenius multipliers 2²≡1 mod 3 and 4 mod 5; untwisted multipliers 2,2 disagree. | Retain theorem; R01 ownership record. |
| 2.3 signature image | r₁=0,1,2 | Image orders 1,2,4; all-negative triple has coordinates (1) or (1,1); sign-isolating symbols give (1,0),(0,1). | Retain. |
| 2.4 imaginary quotient | ℚ(i) | r₁=0; Milnor image 0; K₃=K₃ind=ℤ⊕C₂₄. | Retain. |
| 2.4 stable-SL quotient | ℚ | H₃(SL∞)=C₂₄ and K₃ind=C₂₄; K₃ itself is C₄₈. | Retain. |
| 2.5 rational rank | ℚ and ℚ(i) | Rational dimensions 0 and 1, equal r₂; C₄₈⊗ℚ=C₂₄⊗ℚ=0. | Retain. |
| 3.1 tensor cokernel headline | A=0,ℤ,C₃,C₂ | Qₛ=0,C₂,0,C₂; Λ²=0 in all four; kernels equal A/2A=0,C₂,0,C₂. | Retain. |
| 3.1 mixed coordinates | A=ℤ² | Qₛ=C₂²⊕ℤ, Λ²=ℤ; diagonal kernel C₂². For (1,1), diagonal is e₁²+e₂². | Retain. |
| 3.1 exact diagonal relations | A=C₄, a=1,b=3 or 0 | 1²=3² in Qₛ and 1−3=2·1; 1²≠0² and 1∉2C₄. | Retain both directions. |
| 3.1 eigenspace distinction | A=ℤ | Flip-negative subgroup is 0; cokernel is C₂. After tensoring ℚ both are 0. | Retain distinct ownership. |
| 3.2 cross-ratio and permutation | (0,∞,1,3) | cr=3; first-two swap gives 1/3; supplier reciprocal is 1/3. | Retain adapter. |
| 3.2 deletion faces | (0,∞,1,2,3) | Face values (1/2,3/4,3/2,3,2); alternating sum is R(2,3). | Retain. |
| 3.3 admissibility and junk values | (x,y)=(2,3), (1,3),(2,2) | Valid arguments 2,3,3/2,3/4,1/2. x=1 gives a zero denominator/numerator; x=y is excluded, not an added relation. | Retain. |
| 3.3 free equality certificate | Coefficients 0 and 1 at R(2,3) | 0 evaluates to the zero chain; coefficient 1 evaluates to the displayed five-term chain, zero only after quotienting. | Retain. |
| Raw/quotient symbol definitions | x=0,1 over any field | Raw(0)=0; raw(1) is one free basis vector; quotient symbol(0)=symbol(1)=0. | Retain; real bodies match. |
| 3.4 presentation, small fields | 𝔽₂,𝔽₃ | Reduced generator ranks 0,1; no admissible pairs; P=0,ℤ. | Retain. |
| 3.4 reduced/unreduced equivalence | 𝔽₃ | Unreduced has [1],[2]; killing [1] leaves ℤ[2], same as reduced. | Retain. |
| 3.5 boundary and signs | ℚ, x=3 and 1/3 | (v₂,v₃)-alternating values −1 and +1; reversing tensor order reverses these values. | Retain. |
| 3.5 kernel and K₂ cokernel | 𝔽₅ | P=C₆; ∂[3]=1 in C₂; kernel C₃; cokernel 0=K₂(𝔽₅). | Retain. |
| 3.6 reflection/inversion | 𝔽₅, generator g=[3] | [2]=2g,[4]=0; c=2g; h(2)=3g; 2h=6g=0; ∂h=1≠0. | Retain h in P, not B. |
| 3.6 3c and sixth-root cases | 𝔽₇, g=[3] | [−1]=2g, c=4g; 3c=4g=h(−1), 6c=0; c≠0. | Retain. |
| 3.7 finite presentation orders | 𝔽₅,𝔽₇,𝔽₁₁,𝔽₁₃ | Integer relation-lattice indices 6,8,12,14; c orders 3,2,6,1. | Retain. |
| 3.8 exterior comparison | 𝔽₅ | Λ²(C₄)=0; exterior kernel is all P=C₆; Suslin B=C₃, index 2. | Retain. |
| 3.9 raw full tensor | 𝔽₃ and 𝔽₅ | 𝔽₃: λ:ℤ→C₂, ker=2ℤ. 𝔽₅: R(2,3)=[4], λ[4]=2 mod 4≠0. | Retain. |
| 3.9 μ kernel and image | 𝔽₅ | 2[4]≠0 in the free group, λ=0, μ=0; 4[3] maps to 4g, of order 3. | Retain. |
| 3.9 rational noninjectivity | ℚ | 4[−1] has free coefficient 4 and infinite order; λ=0 and μ=0. It remains nonzero after tensoring ℚ. | Retain. |
| 3.10 obstruction and sixfold lift | 𝔽₃; 𝔽₅, α=2[3] | 𝔽₃: E=L=0, 2ℤ→2ℤ identity. 𝔽₅: σα=α, γ=4[4], λγ=0 and μγ=0=6·2g. | Retain. |
| 3.11 generic projective symbols | 𝔽₃ | Quadruple (0,∞,1,2) gives [2]; no 5-tuples; H₃ coinvariants=P=ℤ. | Retain. |
| 3.12 local specialization | DVR F[t]_(t) | t↦0, t⁻¹↦∞, 1+t↦1; stalk dimension 1. A field stalk has dimension 0 and is not this closed-point DVR. | Retain. |
| 3.12 singular/thickened negative controls | Cusp and square-zero thickening | Cusp cotangent dimension 2 versus ring dimension 1; thickening has ε≠0, ε²=0. Neither native stalk is a DVR. | Retain smoothness. |
| 3.12 all-curve quotient | 𝔽₃, rationalized | P⊗ℚ=ℚ; exterior target 0; projective inversion gives 2[2]=0 and therefore kills [2] rationally, so the comparison kernel is ℚ, not torsion. | Retain conditional relation equality. |
| 3.13 old relation defect | ℚ, ξ(2,1) | Boundary 2∧(−1) has nonzero value 1 under v₂⊗sign modulo 2; proposed denominator is not contained in the kernel. | Retain intersection repair. |
| 3.13 old comparison | 𝔽₁₁ | B=C₆, B_old=C₆; map image C₃, kernel C₂, cokernel C₂. Same orders do not give an isomorphism. | Retain. |
| 3.14 negative-unit target | 𝔽₃ and 𝔽₅ | Q₋=C₂ and 0, respectively; ordinary exterior target is 0 in both. | Retain. |
| 3.15 projective reduced quotient | 𝔽₂,𝔽₃,𝔽₁₁ | B_new orders 3,1,3 versus Suslin B orders 1,infinite,6. | Retain size hypotheses. |
| 3.16 convention maps | 𝔽₁₁, mod 3 and mod 2 | C₆→C₃ induces C₃≅C₃ modulo 3; modulo 2 gives C₂→0. | Retain odd/invert-two qualifications. |
| 4.0 finite words and augmentation | Sets of sizes 0,1,2 | Empty augmented degree 0 is ℤ; size 1 differential [x]↦1 gives zero homology; size 2 top cycle (a,b)+(b,a) has boundary 0. | Retain top term. |
| 4.0 exactness range | Five letters | Chain ranks 1,5,20,60,120,120; boundary ranks 1,4,16,44,76; top homology rank 44. | Retain finite/infinite distinction. |
| 4.1 total differential | Bidegree (1,1) | Cross terms have signs +1 and −1, sum 0; using + in both positions gives 2. | Retain. |
| 4.1 hyperhomology identity | Trivial G, complex ℤ in degree 0 | E²₀,₀=ℤ; all other entries 0; abutment H₀=ℤ,Hᵢ>₀=0. | Retain actual module construction. |
| 4.2 independent frames | n=1, F=𝔽₂ versus ℚ | 𝔽₂: one nonzero vector, augmented boundary is id ℤ. ℚ: reduced degree-one group consists of finite sums with coefficient sum 0. | Retain indexing. |
| 4.3 scalar coinvariants | F=ℚ,V=ℚ,j=1,k=ℚ | Scalar 2 gives (2−1)V=V, so H₀=0; with V=0 all groups 0; at j=0 H₀=ℚ≠0. | Retain j>0; source waiver noted. |
| 4.3 affine stabilizer | Upper triangular GL₂(ℚ), M=ℚ | Scalar on first block sends u↦2u; on second sends u↦u/2; differences ×1 and ×(−1/2) are invertible. | Retain either-block hypothesis. |
| 4.4 frame coinvariants | F=ℚ | S₀=ℤ; S₁=ℚˣ; the extra S₂ generator is (0,1), not zero in K₂ᴹ⊕ℤ. | Retain. |
| 4.5 ordered Milnor symbols | {t₁,t₂} | Successive parameter-last residues give 1; reversed symbol gives −1. Unadjusted inverse comparison changes the sign. | Retain supplier normalization. |
| 4.6 splitting | S₂=K₂ᴹ⊕ℤ | (x,7) projects to x and 7; inclusion-sum reconstructs (x,7); (0,1) survives. | Retain simultaneous induction. |
| 4.7 monomial subgroup | 𝔽₂ and 𝔽₃, rank 2 | Orders 2 and 2·2²=8; GL₂(𝔽₃) has order (9−1)(9−3)=48. | Retain distinct carrier. |
| GL block inclusion definition | n=0,1; g=2 over ℚ | 0×0 unit maps to (1); g maps to diag(2,1), inverse diag(1/2,1), product I₂. | Retain. |
| 4.8 GL stability headline | n=i=0; n=1,i=1 | H₀ map ℤ→ℤ sends 1↦1; H₁(ℚˣ)→H₁(GL₂ℚ) is determinant identity. n=0,i=1 would be 0→ℚˣ, not onto. | Retain i≤n. |
| 4.10 projective coinvariants | 𝔽₂,𝔽₃ | Degree-three homology 0 and ℤ, equal P; in the latter no degree-four distinct tuples exist. | Retain all-field claim. |
| 4.11 matrix faces/determinants | a=2,3 | det(A,B,C)=(−1,−2,2),(−2,−6,3); At=(∞,1,a). a=0 or 1 makes a determinant 0. | Retain. |
| 4.11 eight-term chain identity | a=2,3,−1,4 over ℚ | Expanded d(u) minus six claimed terms has zero coefficient on every right-diagonal orbit in all four cases. | Retain. |
| 4.11 Shapiro seven-commutator reduction | a=4 over ℚ | Shapiro(uw−u) minus the seven commutators equals exactly the negative boundary of the specified bar 3-chain; remaining coefficient vector 0. | Retain. |
| 4.11 differential and shear | a=3, alternating valuation | Raw signed pair (1,−1) maps to (0,−1); inverse shear restores (1,−1). | Retain; raw splitting would be wrong. |
| 4.11 determinant-one torus | Ordered pair with wedge value 1 | Raw (2,−2) maps to (0,−2); coefficient +2 would reverse the second entry. | Retain. |
| 4.12 infinite-field restriction | 𝔽₄ negative control | H₂(GL₂𝔽₄)=C₂; Λ²𝔽₄ˣ⊕K₂(𝔽₄)=0. | Retain infinite hypothesis. |
| 4.13 rotations and norm | Degrees 0,1,4 | N₀=1; N₁=1−t; N₄=1+t+t²+t³+t⁴. At fixed generators these evaluate 1,0,5. | Retain signs. |
| 4.13 cone differential | x=0, nonzero y | d(0,y)=(−Ny,−dy); two applications have first component −dNy+Ndy=0. | Retain. |
| 4.14 rank-three projection | [3;2] over ℚ | Projection gives [3], boundary valuation −1; swapped first two gives [1/3], value +1. | Retain. |
| 4.14 cyclic norm and P sign | All admissible pairs over 5,7,11,13 | Respectively 6/6,20/20,72/72,110/110 sums equal 2c. At 11, 2c has order 3; +2c on P would leave 4c≠0. | Retain −2c. |
| 4.15 corrected identity | All x≠0,1,−1 over 5,7,11,13 | Corrected equality: 2/2,4/4,8/8,10/10. Printed formula: 0/2,1/4,2/8,1/10. | Retain correction. |
| 4.15 permutation conjugation | P₁₂,P₃₄,P₁₃P₂₄ | det Γ=1; lower-right blocks diag(−1,1),diag(1,−1),swap; lower-left blocks all 0. Upper-right entries match (2,3)=1 and (1,4),(2,4)=1,−1. | Retain, including char 2. |
| 4.15 cyclic power-map headline | m=1,2,7; a=2,j=2 | H₃=0,C₂,C₇; multipliers 0,0,4. For m=7,j=1 multiplier is 2, not 4. | Retain positive-degree scope. |
| 4.15 different-order inclusion | C₂→C₄ | Odd H map sends 1↦2, order 2; erroneously squaring the index would send 1↦0 in degree three. | Retain. |
| 4.15 symmetric stability headline | (n,i)=(0,0),(2,1),(1,1) | First map ℤ≅ℤ; second C₂≅C₂; excluded third map 0→C₂ is not onto. | Retain 2i≤n. |
| 4.15 prime contributions | C₅ power 2; C₃ inversion | H₃ multipliers 4 and 1; 4−1=3 is a unit mod 5, so fixed part 0; 3-primary contribution can survive. | Retain. |
| 4.16 monomial indecomposables | 𝔽₂,𝔽₄ | π₃ind models C₁₂ and C₃⊕C₁₂; latter has exponent 12 and order 36, not C₃₆. | Retain nonsplit possibility. |
| 4.16 bottom unit and η³ | Sphere summand | Stable third stem C₂₄ maps after η³ quotient to C₁₂; element 12 is killed, element 1 survives. | Retain; R02 locators. |
| 4.17 doubling | μ=C₂,C₅ | γδ sends 1↦0 and 1↦2; not an injection at 2. | Retain distinction from detector. |
| 4.17 Chern sign | Weights +1,−1; m=5,2 | (1+u)(1−u)=1−u²; coefficients −1=4 mod 5 and 1 mod 2. | Retain. |
| 4.18 closure detector | μ₅ in 𝔽̄₂ | Domain C₅, target Tor=C₅, normalized generator 1↦1; Frobenius both sides ×4. Ordinary μ⊗μ=0. | Retain. |
| 4.18 two-primary modulus | Torsion order 2 in modulus 8 | 2 divides 8; Chern coefficient −1=7 is a unit; no product at modulus 4 is required. | Retain. |
| 4.19 enhanced Tor model | μ=C₂,C₃ | Enhanced group C₄ in char 0 versus ordinary C₂; char 2 gives C₃ versus C₃. | Retain characteristic split. |
| 4.19 naturality versus abstract roots | C₅, automorphism a=2 | Tor acts ×4; unmarked root model acts ×2. | Retain warning on nonnatural identifications. |
| 4.20 Suslin exactness | ℚ | 0→C₄→C₂₄→C₆→0, injection 1↦6, kernel {0,6,12,18}. | Retain. |
| 4.20 splitting exclusion | Same sequence | Every lift of 1 is 1+6k; sixfold multiples are 6 or 18, never 0. | Retain nonsplit assertion. |
| 4.21 rational-function rigidity | 𝔽₄ and 𝔽₄(t) | μ=C₃ in both; K₃ind=C₁₅ in both; B=C₅ after the mixed comparison. | Retain proof order. |
| 4.21 residue compatibility | {u,v,t} | Parameter-last residue is {u,v}; degree-three comparison sign (−1)²=+1. | Retain. |
| 5.1 restriction/transfer | 𝔽₂⊂𝔽₄ | K₃ orders 3,15; restriction ×5, transfer reduction mod 3; tr∘res=×2 and res∘tr=×5. | Retain. |
| 5.1 norm-one multiplication | 𝔽₄/𝔽₂, ω²+ω+1=0 | Matrix [[0,1],[1,1]] has determinant 1 and trace 1=ω+ω⁻¹. | Retain. |
| 5.2 localized-SL₂ headline | q=2,3,4,5,7 | H₃ orders after inverting characteristic: 3,8,15,24,48 = q²−1. | Retain. |
| 5.2 integral-SL₂ headline | q=2,3,4,5,7,8,9,27 | Orders 6,24,30,120,48,126,240,2184; extra p exactly on listed exceptional q. | Retain. |
| 5.2 nonabelian stable elements | S₃, p=3, Sylow C₃ | Normalizer inversion acts ×1 on H₃(C₃)=C₃; stable H₃ part C₃. H⁰ restriction sends 1↦1. | Retain separate degree zero. |
| 5.2 quaternion periodicity | Q₈ | H₁=C₂², H₃=C₈; replacing by abelianization homology would lose the order-eight class. | Retain. |
| 5.3 stabilization | 𝔽₅ | Integral H₃ C₁₂₀→K₃ C₂₄ has kernel C₅; localization gives C₂₄≅C₂₄. | Retain. |
| 5.3 extension comparisons | 𝔽₂⊂𝔽₄; 𝔽₃⊂𝔽₉ | Localized target orders 15,80; subgroup images have orders 3,8, respectively. | Retain. |
| 5.4 refined boundary | 𝔽₅, nonsquare ε | λ₁[2]=0; λ₁[3]=(ε−1)²=2(1−ε)≠0; augmented R(2,3)=[4]=0. | Retain. |
| 5.4 refined cross-ratio | (0,∞,a,b) | Value ⟨a⟩[b/a]; at a=1 equals [b]; at nonsquare a the coefficient is ε, not 1. | Retain. |
| 5.4 finite comparison range | q=4, P¹ has 5 points | Augmented top degree 5; ordinary homology vanishes in degrees 1,2,3. Transitive C₅ orbit has 5 points, so complement is empty. | Retain general comparison, not βx,y in this case. |
| 5.4 d² and torus comparison | Square class a over 𝔽₅ | Four multiplicative coordinates product a⁻¹, same square class as a; determinant-one tensor coefficient −2. | Retain. |
| 5.4 refined coinvariants | Odd q, G_F=C₂ | I=ℤ(ε−1), I²=2I,I³=4I; I²/I³=C₂ and H₁(C₂,I²_sign)=0. | Retain. |
| 5.5 finite Bloch headline | q=4,5,7,11 | B orders 5,3,4,6; enhanced kernel orders 3,8,12,20; products 15,24,48,120 equal q²−1. | Retain. |
| 5.5 integral/localized kernels | q=4,5 | Integral kernels 30/5=6,120/3=40; localized kernels 15/5=3,24/3=8. | Retain. |
| 5.5 small exclusions | q=2,3 | Actual Suslin B=0,ℤ; extrapolated order formula would give 3,2. | Retain q≥4. |
| 5.6 odd Cartan quotient | (q,n)=(4,5),(5,3),(7,3) | First five groups C₅; second five C₃; excluded third has K₃/n=C₃ but B/n=0. | Retain gcd condition. |
| 5.6 basis independence | Change basis e↦eg | Multiplication matrices M↦g⁻¹Mg; trace u+u⁻¹ and determinant 1 unchanged. At u=1 and −1: I and −I. | Retain. |
| 5.7 arithmetic quotient | ℚ,ℚ(i) | C₄₈/C₂=C₂₄; (ℤ⊕C₂₄)/0=ℤ⊕C₂₄. | Retain. |
| 5.8 Rogers detector | 1/2,2,−1 | Values −π²/12,+π²/12,−π²/4; c value −π²/6. Sixfold value −π²=0 modulo π², twofold and threefold nonzero. | Retain. |
| 5.8 general RCF transfer | ℚ_alg∩ℝ,ℝ,ℚ | ∃x x²=2 gives true,true,false; ∃x x²+1=0 gives false,false,false, but true in ℂ. | Retain theorem; R01 ownership. |
| 5.8 parameter embeddings | Any ordered RCF extension, parameter a | x=a+1 gives x−a=1>0 in both fields; x²=t solvable iff t≥0. | Retain full parameters. |
| 5.8 certificate encoding | Empty pairs, k=0; ξ=[2]−[3] | Augmentation of ξ=0 but its two coefficients are +1,−1, so free-group equality is false in both RCFs. | Retain equality-pattern requirement. |
| 5.8 formally-real headline | ℚ and a non-Archimedean RCF | 6c=0; ρ or transferred finite-certificate obstruction excludes 2c=0 and 3c=0; order 6 in both. | Retain; no embedding into ℝ assumed. |
| 6.1 witness transport | R(2,3) under identity/embedding | Five coefficients remain (1,−1,1,−1,1); their argument equalities and zero quotient are preserved. | Retain. |
| 6.2 tensor coordinates | C₄⊕ℤ² | Torsion diagonal modulus 2, torsion/free modulus 4, free diagonals modulus 2, mixed free coordinate ℤ. | Retain integral bookkeeping. |
| 6.2 boundary certificate | ℚ, [2] and [2]+[−1] | Mixed v₂/sign coordinate 1 and 1+1=0 mod 2, respectively. | Retain accepts cycle, rejects symbol. |
| 6.3 root multiple | Primitive sixth root ζ | 1−ζ=ζ⁻¹; ∂[ζ]=−ζ⊗ζ is nonzero C₂ diagonal; ∂(2[ζ])=0. | Retain. |
| 6.3 dependence on −1 square | ℚ(√−3),ℂ | (−1)∧(−1) nonzero in the former, zero in the latter since −1=i². | Retain exact condition. |
| 6.4 invertible denominators | Mod 5, m=2 or 4 | 2⁻¹=3 and 4⁻¹=4; (4·symbol)/4= symbol, (2·symbol)/2=symbol. | Retain unit hypothesis. |
| 6.4 nonflat scalar change | 2ℤ↪ℤ, tensor C₂ | Source becomes C₂, target C₂, induced map ×2=0; injectivity is lost. | Retain no flatness shortcut. |
| 6.5 fibres | C₂₄→C₆ over 1 | Fibre {1,7,13,19}; C₄ action adds 6 transitively/freely; multiplying lifts by 6 gives 6,18,6,18. | Retain no canonical additive section. |
| 6.5 bar witness boundary | Trivial group, z=[1,1,1] | z=d₄[1,1,1,1], ev(z)=0; zero witness works for z−z=0. | Retain actual chains. |
| 6.6 mixed field square | 𝔽₄→𝔽₄(t)→𝔽₄(t)(s) | Both routes send [ω]↦[ω] and [ω²]↦4[ω] in C₅. Reciprocal sends 1↦4, unequal. | Retain map-sensitive comparison. |
| 6.6 snake sequence | C₄→C₂₄→C₆, n=2 | T[2]=C₂→K[2]=C₂ is iso; K[2]→B[2] is 0; B[2]→T/2 is iso; K/2→B/2 is iso. | Retain full six-term sequence. |
| 6.6 rationalization | ℚ,ℚ(i) | T̃⊗ℚ=0; K₃ind⊗ℚ and B⊗ℚ have dimensions 0,1. | Retain. |
| 6.6 odd/root hypothesis | 𝔽₇,n=3; ℚ,n=5 | First: T̃/3=C₃, K₃/3=C₃, B/3=0. Second: all ordinary quotients 0. | Retain hypothesis. |
| 6.7 true coefficients | ℚ,n=5 | K₃/5=0; 5{2,−31}={32,−31}=0; residue 2 has powers 2,4,8,16,1 mod 31, hence exact order 5. | Retain nonzero K₂[5] extension. |
| 6.7 degree-two correction | ℝ,n=2 | K₂(;C₂)=C₄; c₂(2β)=1 in C₂ but 2c₂(β)=0. | Retain degree distinction. |
| 6.7 coefficient boundaries | n=1; characteristic p with n=p | n=1 gives 0 on both sides; n=p is excluded by invertibility, not silently evaluated as étale μ_p. | Retain. |

### Pinned interfaces and duplication audit

Both manifest revisions were checked: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 16 interface groups contain opened declarations, not conclusions from name-only searches. Paths are within those pinned repositories.

| Interface opened | File and line | Scope retained / distinction checked |
| --- | --- | --- |
| `groupHomology`, `groupHomology.π` | `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:228`, :233 | Actual chain homology and cycles projection, not an arbitrary abelian carrier. |
| `inhomogeneousChains.d`, `d₂₁`, `chainsIso₃` | `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:125`; `LowDegree.lean:143`, :77 | First coefficient action is inverse; it disappears for trivial coefficients. Identity entries are retained. |
| `groupHomologyIsoEven`, `groupHomologyIsoOdd` | `Mathlib/RepresentationTheory/Homological/GroupHomology/FiniteCyclic.lean:85`, :122 | Arbitrary cyclic representations and norm-complex homology already exist. The power-map action is additional work. |
| `HSpace` | `Mathlib/Topology/Homotopy/HSpaces.lean:65` | Continuous multiplication, unit and relative unit homotopies; no associativity or commutativity field. |
| `IsCoveringMap.existsUnique_continuousMap_lifts`, `liftHomotopy` | `Mathlib/Topology/Homotopy/Lifting.lean:477`, :308 | Simply connected locally path-connected source for the first; specified initial lift for the second. |
| `Scheme.functionField`, stalk fraction-ring instance | `Mathlib/AlgebraicGeometry/FunctionField.lean:37`, :164 | Function-field notation starts under irreducibility; the field/fraction-ring conclusions require integrality. |
| `Scheme.residueField`, `residue`, `descResidueField` | `Mathlib/AlgebraicGeometry/ResidueField.lean:45`, :54, :78 | Native local residue field and induced map; not automatically the base field. |
| `TauCeti.antisymmetricTensors` | `TauCeti/LinearAlgebra/TensorProduct/Symmetric.lean:126` | Negative eigenspace. The roadmap's cokernel differs integrally, witnessed by ℤ. |
| `TauCeti.crossRatio_comp_eq_of_sub_eq_div` | `TauCeti/Algebra/Field/LinearFractional.lean:51` | Nonzero factor/denominator assumptions; reciprocal transport, not a duplicate foundational cross-ratio. |
| `TauCeti.groupHomology.indIso_inv` | `TauCeti/RepresentationTheory/Homological/GroupHomology/Shapiro.lean:98` | The actual inverse Shapiro map and its coefficient-unit normalization. |
| `transfer`, `map_comp_transfer`, `transfer_comp_map_subtype_id` | `TauCeti/RepresentationTheory/Homological/GroupHomology/Transfer/Basic.lean:65`, :89, :107 | Finite-index subgroup and actual representations; transfer then inclusion is multiplication by the index. |
| `transfer_trans`, `δ_naturality` | `TauCeti/RepresentationTheory/Homological/GroupHomology/Transfer/Trans.lean:86`; `GroupHomology/LongExactSequence.lean:106` | Nested finite-index transfer; short-exact-sequence and degree hypotheses for connecting maps. |
| `eq_zero_of_pow_nsmul_eq_zero_of_map_sylow_eq_zero` | `TauCeti/RepresentationTheory/Homological/GroupCohomology/Sylow.lean:56` | Requires a finite group and a p-power annihilator; it is not unrestricted injectivity on integral H⁰. |
| `corestriction_mackey` | `TauCeti/RepresentationTheory/Homological/ContCohomology/Corestriction/Mackey/AllDegrees.lean:279` | Profinite group, open U, closed V, discrete module; finite-group cochain comparison is explicitly a local target. |
| `exists_realClosure`, `RingPreordering.exists_linearOrder` | `TauCeti/FieldTheory/RealClosure/Basic.lean:120`; `TauCeti/Algebra/Order/Ring/Ordering/Extension.lean:158` | Ordered algebraic real closure in the same universe; extension of a specified preordering. Neither declaration is quantifier elimination. |
| Smooth stalk regularity, relative dimension, DVR criterion | `TauCeti/AlgebraicGeometry/Morphisms/Smooth/Regular.lean:39`; `Smooth/RelativeDimension.lean:83`; `TauCeti/RingTheory/RegularLocalRing/Basic.lean:171` | Locally Noetherian regular base; closed-point dimension over a field; regular local dimension one. No properness requirement. |

The ownership searches used `roadmaps grep` and `roadmaps show`, the main checkout, the board packages and the provided open-head checkouts. Search objects included Milnor/Quillen comparisons, Bloch presentations, enhanced Tor, group-module hyperhomology, symmetric and linear homology stability, cyclic power maps, real-closed transfer and finite SL₂. No competing fully qualified name for a retained Lean declaration was found. Existing native tensor, exterior, free-abelian, quotient, matrix, representation and model-theoretic carriers are reused. No pinned Quillen K-group, Milnor K-group or enhanced-Tor carrier was found that makes the omitted K-theory headlines directly statable.

The following 16 cross-roadmap resolution rows give representative file-line anchors and the sections actually consumed:

| Roadmap / location | Resolved contract and ownership conclusion |
| --- | --- |
| `TauCetiRoadmap/AlgebraicKTheory/README.md`, A1 and A5 | Stable GL/E, block maps, Steinberg/UCE; the native finite block inclusion here is an adapter, not a second stable-group construction. |
| `TauCetiRoadmap/StableHomotopyKTheory/README.md:305`, :491, :1334, :1389, :1647, :2232, :2314, :2340, :2694 | §§1.17,1.30,1.32,3.26–3.29,3.31–3.33,4.14,5.19,6.3,7.1,7.27 checked. Homology continuity, nerve/bar normalization, plus, H-space, Picard, Barratt–Priddy, low sphere classes and spectrum AHSS are present. R02 updates the special-fibration locator. The module-double-complex calculation here is a different input from spectrum AHSS. |
| `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:418`, :645, :1478, :2993 | §§1.8,3.2–3.4,3.12–3.14,7.4,13.8a–c checked. Ring products/units, natural K-theory, plus/Q and finite-field computation are supplied; R02 adds the exact comparison section. |
| `TauCetiRoadmap/K2SymbolsBrauer/README.md:508`, :696, :725, :1221, :1276, :1347, :1819, :2390, :2531 | §§5.4,5.6,5.12–5.14,7.2,8.1–8.4,10.5,10.32,11.3 and Layer 9 checked. Degree-three comparison is supplied but its integral injectivity is left to this roadmap. The product-normalized degree-two adapter and parameter-last residue sign agree. |
| `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:267`, :316, :486, :512, :1204, :1360, :1484 | §§1.5,1.8,3.0,3.0a,5.17,6.5a,6.10 checked, including the actual `geisserLevine_fieldComparison` within §5.17. Finite coefficients/Bott and defining-characteristic inputs are present. No claim that these alone state the new integral torsion theorem is needed. R01 reconciles the separate gap record. |
| `TauCetiRoadmap/SchemeKTheoryOperations/README.md:1017`, :1581, :1812, :1895, :2399 | §§3.6,4.7,5.2,5.5,6.4 checked. In particular §3.6 supplies integral injection from an algebraically closed field into a nonzero commutative algebra; this supports the characteristic-p closure argument. |
| `TauCetiRoadmap/ArithmeticKTheory/README.md:950`, :1190, :1402, :1578, :1634, :1795, :1819, :4773 | §§3.2–3.4,4.1–4.4,5.1–5.4,8.10 checked. `suslinTorsionComparison` is characteristic zero, with Bott/Bockstein and weight-i naturality; the README does not apply it directly in characteristic p. Number-field ambient groups are imported, not rebuilt. |
| `TauCetiRoadmap/PolylogarithmFunctions/README.md:840`, :905, :939, :952, :973 | §§5.8,6.1,6.3–6.5 checked. General projective cross-ratio and interval Rogers function are supplied. Reciprocal coordinates and descent here are explicit additional targets. |
| `TauCetiRoadmap/AlgebraicTopology/README.md:326`, :471, :499, :849, :1602 | Main Stages 2–5,8 supply homology, CW/cover/product input and Hurewicz/Whitehead. Integral Künneth splitting is not treated as natural. |
| `Completed/UniversalCovers/README.md:98`, :126 | Main Stages 2–3 supply the lifting and higher-cover comparison; native covering lift declarations were also opened. |
| `TauCetiRoadmap/FourManifolds/README.md:741`, :2881 | Finite wedge basis and η³=12ν found in §§2.2,7.1; finite reindexing and infinite-index compatibility are extra local targets. R02 removes the obsolete label. |
| `TauCetiRoadmap/HomotopySpheres/README.md:399`, :2459 | Supplied head §9.1 uses StringOrientation S2.3's third stem and fixes its generator comparison. R02 updates the older Stage/item citation. |
| `TauCetiRoadmap/AlgebraicCurves/README.md:1583` | Main 12A explicitly assumes proper curves. The roadmap's nonproper smooth local adapter uses pinned stalk results and compares only on the overlap, rather than silently strengthening this supplier. |
| `Completed/GlobalNumberFields/README.md:259` | Main Layer 1 supplies independent real-place signs by weak approximation on Fˣ. |
| `Completed/RealAlgebraicGeometry/README.md:437`, :476 | Main Layer 6 explicitly confines its CAD-based QE to ℝ. General RCF transfer is an additional target here; the stale external gap is R01. |
| `TauCetiRoadmap/ColemanIntegration/README.md:1468`; `TauCetiRoadmap/Polylogarithms/README.md:12`, :472 | Coleman L2.Fb consumes K3BlochGroups' algebraic carriers; its analytic evaluation and coordinate adapter remain downstream. Polylogarithms Layers 2/4 consume the Bloch and rational-curve results. Other named anticipated consumers are not supplier edges. |

The declaration checks cover the eight statable headlines: integral antisymmetric diagonal exactness (§3.1), infinite-field GL stability (§4.8), cyclic power action and symmetric stability (§4.15), localized and integral finite SL₂ homology (§5.2), finite Bloch order (§5.5), and the formally-real order-six theorem (§5.8). Their five supporting definitions have real bodies on native carriers. Their signatures agree with the README, including the exceptional finite cardinalities, n≥1 cyclic modulus, j≥1 degree, q≥4 Bloch formula and explicit identity coefficient morphisms.

The other end results are the canonical homological Quillen comparison and Hopf kernel (§1), integral Milnor injection and motivic edge (§2), Suslin exactness with normalized enhanced Tor (§4), transcendental rigidity (§4.21), finite/arithmetic comparisons (§5), and the mixed-field, quotient and true finite-Chern comparisons (§6). The module docstring names their missing Quillen, Milnor, motivic, Bloch-boundary, enhanced-Tor, configuration and finite-coefficient carriers. It also names the algebraically closed torsion comparison and Rogers descent. No arbitrary predicate or weakened scalar substitute is placed in the Lean file for these results.

## Not verifiable

- **suslin-1984**: the primary text is settled as waived. Corollary 1.8/Theorem 1.9 (p.191), frame/symbol calculations (§2, pp.192–195), and Theorem 3.4 (pp.196–198) were not certified against that text. I checked the stated boundaries, native stability signature and available worked instances, not an unavailable proof. No renewed source request was made.
- **suslin-1991**: the primary text is settled as waived. This includes Lemmas 4.1–4.4/Sublemma 4.4.1 (pp.227–229) and Lemmas 5.7–5.8 (pp.236–237). The accessible K-book and Hutchinson texts, explicit chains, Γ calculation and finite cyclic tests give the evidence recorded above; they do not constitute a fresh reading of Suslin's proof.
- **bloch**: Lecture 6 is settled as waived. The README uses it only to name the full-tensor convention, and gives its definitions and algebraic comparisons explicitly. No theorem of the monograph was certified or requested.

All other cited works in the supplied manifest had a legal cached text available. No unresolved additional source was discovered, no manifest was edited, and no source text was copied into the worktree or report. Computed examples do not independently prove the admitted general theorems.

## Source issues

- **Error** in weibel at VI.5.4(c), printed p.488: the source says inversion symbols define a homomorphism into B(F); it should be into P(F), with boundary x∧(−x) possibly nonzero; affects a stated result.
- **Misprint** in weibel at Corollary VI.5.4.1, printed p.489: the source says adjoining a cube root of −1 forces 2c=0; it should specify a root of t²−t+1, excluding the ever-present root −1; affects a stated result.
- **Error** in weibel at Theorem VI.5.7, printed p.490: the source says the H₂(GL₂) formula holds for all fields; it should require an infinite field for this statement, since 𝔽₄ gives C₂ versus 0; affects a stated result.
- **Misprint** in weibel at the definition preceding Lemma VI.5.10, printed p.493: the source says ψ′([a;x]) is the field element a; it should be the pre-Bloch symbol [a]; affects a stated result.
- **Error** in weibel at the definition preceding Lemma VI.5.10, printed p.493: the source says ψ′(P)=2c with the displayed cone differential; it should be −2c, since the five rotations sum to 2c; affects a stated result.
- **Error** in weibel at Exercise VI.5.5, printed p.500: the source says the second identity uses [−x²] and [1/x²]; it should use [−x⁻¹] and [(1−x)⁻²], respectively; affects a stated result.
- **Error** in weibel at the proof of Lemma VI.5.18, printed p.498: the source says inversion coinvariants of H₃(μ) are μ/{±1}; it should retain H₃(μ), since inversion acts by (−1)²=1; affects the proof.
- **Error** in cgz2021 at arXiv v3 Definition 1.1, printed p.2: the source says all permitted projective five-term relations lie in the ordinary exterior-boundary kernel; it should intersect with the kernel or change the tensor target; affects a stated result; corrected in print at Definition 2.1, p.391.
- **Error** in cgz2021 at arXiv v3 Lemma 2.2, printed p.9: the source says inversion symbols themselves generate the Bloch-kernel subgroup; it should intersect their subgroup with the relevant boundary kernel; affects a stated result.
- **Error** in cgz2021 at published Lemma 2.2, printed p.391: the source says the comparison is surjective for an unrestricted field; it should exclude the small-field exception, since at 𝔽₂ the map is 0→C₃; affects a stated result.
- **Error** in cgz2021 at published §4.2, printed p.406: the source says integral H₃(SL₂(𝔽q)) has order q²−1; it should use the characteristic-localized group, since q=5 has integral order 120; affects a stated result.
- **Error** in cgz2021 at published §4.2, printed p.406: the source says C¹ canonically identifies with its third integral homology; it should retain the homology carrier or a marked generator, since power maps have weights one and two; affects a stated result.
- **Misprint** in hutchinson2013 at the proof of Corollary 3.13, printed p.17: the source says a nonzero fixed vector exists precisely when 1 is not an eigenvalue; it should say when 1 is an eigenvalue; affects the proof.
- **Gap** in marker at the end of Theorem 3.5's proof, printed p.25: the source says to take the midpoint after allowing infinite interval endpoints; it should separately choose a finite interior point in each unbounded case; affects the proof.
