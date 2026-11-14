<!-- from CBirkbeck, https://github.com/TauCetiProject/TauCetiRoadmapJobs/pull/15109#issuecomment-6877463840 -->
Review (codex) of e92e74d

Verdict: needs_changes

**For the human reviewers:** this review raises 2 questions that a human decides (the scope of the roadmap, or a licence). They are in the section of that name at the end and do not change the verdict.

1. **F01** (P2) Specify underlying contractibility in the tensor-induction Check

   **Location:** `packages/FinitenessAndDualityOfGroups/design/README.md:940` and `packages/FinitenessAndDualityOfGroups/design/plan.json:753`, target 3.1. The README says: “the tensor induction is contractible, of length `2 = 1 · 2`.”

   **Claim:** The tensor induction of the contractible disk from the trivial subgroup to C₂ is contractible. The constructed object is a complex of RG-modules; without a qualification this asserts an RG-linear contraction. Clause 3.1(c), correctly, promises only preservation of R-linear homotopy equivalences.

   **Witness:** Over ℤ, the tensor-induced disk is `ℤ_sign → ℤ[C₂] → ℤ`, with maps `1 ↦ b−a` and `a,b ↦ 1`. An equivariant section sends `1 ↦ k(a+b)`, whose augmentation is `2k ≠ 1`.

   Here a = x⊗y, b = y⊗x, and the generator of C₂ interchanges a and b. Thus a contraction in the category of ℤ[C₂]-modules cannot exist, although the complex is exact. The unsigned and signed actions agree in characteristic two, but this does not repair equivariant contractibility: the invariant section would then have augmentation zero.

   **Exact repair:** In both files replace the assertion with: “The tensor induction has length 2 and is contractible after forgetting the G-action, as an R-complex. Over ℤ it has no G-equivariant contraction: the augmentation ℤ[C₂] → ℤ has no equivariant section.” Retain the generality and the R-linear qualification of 3.1(c).

   **Repair test:** An underlying contraction is `h₀(1)=a`, `h₁(a)=0`, `h₁(b)=1`. In degrees 0, 1 and 2, `dh+hd` sends respectively `1↦1`, `a↦a, b↦b`, and `1↦1`. Its failure of equivariance is visible in `s h₀(1)=b ≠ a=h₀(s·1)`. This also tests the repaired pattern of distinguishing equivariant from underlying splittings elsewhere in the design.

2. **F02** (P3) Finish the nonzero-ring qualifications in the Checks

   **Location:** `packages/FinitenessAndDualityOfGroups/design/README.md:625` and `:792`; `packages/FinitenessAndDualityOfGroups/design/plan.json:232`, `:237` and `:505`. The independent Checks say “For `G = ℚ`, (e) fails at `k = 0`” and “For `H = 2ℤ ≤ ℤ`, both sides of (b) are `1`.”

   **Claim:** These computations hold over the standing arbitrary commutative ring. The preceding README bullet at line 623 supplies `R ≠ 0` for that bullet only; both corresponding plan tests omit it. Section 2.3 has no standing nontriviality hypothesis.

   **Witness:** At R = 0 every module is zero. Both comparison maps for G = ℚ are `0 → 0`, hence bijective; the proposed kernel element is zero. Also `cd₀(2ℤ)=cd₀(ℤ)=0`, not 1.

   **Exact repair:** Add `R ≠ 0` to the third Check of 1.5 and to the 2ℤ Check of 2.3 in the README; add the same guard to both G = ℚ tests of plan 1.5 and the 2ℤ test of plan 2.3. Add a zero-ring control recording the isomorphisms `0 → 0` and the dimensions `0 = 0`. Do not narrow the finiteness criterion or subgroup theorem themselves.

   **Repair test:** For R = ℤ, the directed-system comparison is `0 → ℤ`, not surjective; the augmentation-product comparison has the stated nonzero kernel class; the subgroup dimensions are `1 = 1`. For R = 0 the new control gives `0 → 0` and `0 = 0`. This is a remaining instance of the pattern behind previous F03, not a failure of its repaired theorem 2.2(b).

Two findings: one P2 and one P3. The six findings of round 2 are repaired. The remaining repairs concern the category in which a tensor-induced complex is contractible and nonzero-coefficient qualifications in Checks. No design text, plan or source entry was changed by this review.

## Verified sound

### Previous findings, checked first

I read the previous review and repair report, then checked the actual changed passages. None of the previous findings was marked not actionable. All six specific repairs are present; the separate pattern sweep gives R01–R02 above.

| Previous finding | Status and repaired passage | Verification |
|---|---|---|
| F01, normalized chains | Repaired. README line 217: “every chain-level argument of 5.4, 8.8 and 8.9 uses the normalized chains”; 8.8 explicitly proves fixed-subcomplex and orbit compatibility. | Opened the specialized normalization APIs at the pin, not merely generic Dold–Kan. For Δ[0], unnormalized ranks are (1,1,1,…), normalized ranks (1,0,0,…), and both have homology (ℤ,0,…). The new compatibility assertions were recomputed below. |
| F02, finite input homology | Repaired. README line 1769 and plan 8.8(b): “with `Σᵢ dim Hᵢ(X; 𝔽_p) < ∞`”. | The plan now puts the hypothesis in clause (b), as well as its hypotheses list. Discrete ℕ with trivial C₂-action has infinite H₀ on both sides and is excluded; point and reflection examples have totals 1/1 and 2/2. |
| F03, zero-ring dimension characterization | Repaired. README line 751: “if `cd_R G < ⊤` and `Hᵏ(G, F) = 0` … then `cd_R G ≤ n`”; plan 2.2 agrees. | At R=0 the conclusion is 0≤n, without a nonexistent nonzero witness. The separate regular-coefficient characterization keeps nontriviality. Plan 2.4 and 2.6 now guard their dimension computations. R02 concerns other Checks. |
| F04, duplicated spectral Euler identity | Repaired. README line 69 imports “SpectralSequencesAndConvergence” and §3.4; the contracts and 8.6/8.7 also import §5.3. | Read the new-roadmap head #2302, §§3.4 and 5.3, including finite support, finite filtrations and convergence in every total degree. The generic target has disappeared here. F₂×F₃ gives 1−5+6=2=(−1)(−2). |
| F05, nonexistent torsion-free name | Repaired. Plan line 769: “[IsMulTorsionFree G]”; README line 946 uses the same predicate. | Read the class at Mathlib/Algebra/Group/Monoid.lean:552 and the group characterization at GroupTheory/OrderOfElement.lean:911. The commuting qualification matters for the Klein bottle group; it does not strengthen torsion-freeness. |
| F06, introductory trace locator | Repaired. README 7.1 cites “BrownGTM87, §IX.2”; 8.3 defines the “alternating sum of the identity-class coefficients” using 7.1 and Schanuel. | The unsuitable Brown1974 introductory citation has gone from both definitions and the plan. Brown1974 lines 386–424 distinguish its naive rational homology characteristic from the finite-index characteristic. Here χ̃(1)=1, χ̃(ℤ)=0, and χ̃(C₂) is undefined. |

The sweep also checked the earlier repaired patterns: projective rather than free trace, right versus left regular actions, finite versus nontrivial finite groups, characteristic-two signs, Hausdorffness of manifold carriers, the degree-zero term of a free-group resolution, and projective syzygies rather than finite free resolutions. The general denominator theorem still covers all groups of finite homological type. There is no good-prime restriction, computational algorithm, route-specific substitute, second copy of this roadmap on main, or suspicious instruction in the text read.

### Extent and computed adversarial pass

Read all nine layers, 51 plan targets, their 51 API entries and 159 plan tests, together with the fuller README APIs and Checks. All changed material and the 15 seeded targets were reviewed anew. For unchanged material, the previous report's computed rows were used only where they actually contain values; unspecific summaries were not treated as evidence. The table below covers the seeded targets, all nine numbered headline targets, changed constructions and findings. Additional checks of the other targets follow it. These are mathematical computations, not a claim of Lean elaboration or certification of unread sources.

Write C_m for a cyclic group, F_r for a free group of rank r, and K for the Klein bottle group. Rings in rows with positive dimensions are nonzero unless stated otherwise.

| Statement | Instances | Computed values on both sides | Result / change |
|---|---|---|---|
| 1.5, colimit criterion and endpoint | G=ℚ; permutation modules R[ℚ/(1/i!)ℤ]; n=0,1 | colim invariants=0, invariants of colim=R; map 0→R is injective, not onto for R≠0. At R=0 it is an isomorphism. | FP₀/FP₁ distinguished. R02 qualifies the tests. |
| 1.5, product criterion | G=ℚ; family Rℚ | The vector of augmentation differences maps to 0 in ∏R, but its class modulo I·∏Rℚ is nonzero for R≠0: finitely many group elements lie in one cyclic subgroup, which cannot contain every 1/j!. At R=0 the vector and its class are 0. | Kernel witness correct with R≠0; R02. |
| 1.6, finite index | H=ℤ in C₂×ℤ, index 2; coefficients ℤ,ℚ | Over ℤ: H is FL, G is FP∞ but not FP, with dimensions 1 and ∞. Over ℚ both are FP with dimension 1. | FP_n equivalence and one-way FP/FL descent have the stated directions. |
| 2.1, dimension definitions | 1, ℤ, C₂ over ℤ; arbitrary G over 0 | (cd,hd)=(0,0),(1,1),(∞,∞); over 0, (0,0), with all cohomology and homology 0. | Least-bound convention includes zero coefficients and infinity. |
| 2.2, finite-cd upper bound | R=0; ℤ²; C₂ over ℤ with regular coefficients | 0≤n; H²(ℤ²,Rℤ²)=R prevents n=1 and gives cd=2; H^{>0}(C₂,ℤC₂)=0 but cd=∞. | Repaired implication true; finite cd cannot be removed. |
| 2.3, restriction and index invertibility | C₂×ℤ ⊇ ℤ; ℤ⊇2ℤ | Over ℤ: 1≤∞, not equality; over ℚ: 1=1. For 2ℤ⊆ℤ, 1=1 over nonzero R and 0=0 over zero R. | Hypotheses discriminate; R02 fixes last Check. |
| 3.1, Koszul sign | Disk Rx→Ry; R=ℤ and 𝔽₂ | d(x⊗x)=y⊗x−x⊗y. Unsigned swap defect is 2(y⊗x−x⊗y): nonzero over ℤ, zero over 𝔽₂. | Signed action correct; characteristic-two boundary explicit. |
| 3.1, contraction | Disk induced from 1 to C₂ over ℤ | Underlying dh+hd=id in all three degrees; any equivariant h₀ would have d₁h₀(1)=2k rather than 1. | R01: contractible only after forgetting the action. |
| 3.2, Serre | K⊇ℤ², index 2; C₂×ℤ⊇ℤ | 2=2 in the torsion-free example; ∞≠1 without torsion-freeness. In K, (at)²=t² but at≠t; these elements do not commute. | Correct theorem and correct native predicate. |
| 5.3, Eilenberg–Ganea | 1,ℤ²,ℤ³,C₂ | gd≤max(3,cd) gives 0≤3, 2≤3, 3≤3, ∞≤∞. | No unwarranted equality in dimension two. |
| 5.4, induced action | Finite G with Γ=1; C₂×ℤ with Γ=ℤ | Point: stabilizer order = [G:Γ]. Two-line product: dimension 2, stabilizer orders 1 or 2. For Γ′=⟨st⟩, st(a,b)=(b+1,a+1); a fixed point would give a=b+1 and b=a+1. | Finite stabilizers and freeness of every torsion-free subgroup hold. |
| 5.4, chain comparison | Δ[0] | C_n=ℤ for all n, d₁=0,d₂=id; N₀=ℤ,N_{>0}=0. Both H₀=ℤ,H_{>0}=0. | Normalization repairs boundedness without changing the homology carrier. |
| 6.3, duality criterion | ℤⁿ; ℤ∗ℤ²; zero ring | For ℤⁿ, regular cohomology is R in degree n and 0 otherwise, with R flat. For ℤ∗ℤ², cd=2 but H¹ contains ℤG≠0. Over 0 both sides of the duality criterion hold for every n. | Concentration and flatness tested; dimension uniqueness is separately nontrivial-ring guarded. |
| 6.4, Poincaré duality | Tⁿ, K, F₁,F₂, trivial group | Tⁿ: w=1, PD_n. K: w(t)=−1, H²(K,ℤ)=ℤ/2; a trivial orientation would predict ℤ. F₁ dualizer=R; F₂ dualizer has infinite R-rank. Trivial group is PD₀. | Orientation, rank-one condition and rank-zero boundary distinguished. |
| 7.2, character/rank formula | R=ℚ×ℚ,P=R(1,0); C₃-character ω; trivial ℚS₃ module | Projective trace=(1,0)=rank, whereas ordinary free trace=0. Cyclic formula gives 3ω/3=ω, not ω⁻¹. S₃ centralizers (6,2,3) times ranks (1/6,1/2,1/3) give (1,1,1). | Arbitrary-ring projective trace and inverse convention correct. |
| 8.3, two Euler constructions | 1,ℤ,C₂,ℚ | χ_ℚ and χ̃ are 1,1 for 1 and 0,0 for ℤ. C₂: χ_ℚ=1, χ=1/2, χ̃ undefined. ℚ: χ_ℚ=1−1=0 although not FP₁. | The three invariants and their domains remain distinct. |
| 8.4, finite-index Euler | C₂⊇1; C₄∗_{C₂}C₆⊇F₂ of index 12 | 2·(1/2)=1; 12·(1/4+1/6−1/2)=−1=χ(F₂). | Denominator nonzero; finite-index multiplicativity has the right direction. |
| 8.5, twisted coefficients | ℤ with one-dimensional character λ; F₂ trivial coefficients; C₂ over ℚ | λ≠1: H⁰=H¹=0, Euler 0; λ=1: dimensions 1,1, Euler 0. F₂: 1−2=−1. C₂ would give 1 rather than χ(C₂)=1/2 if integral FP were omitted. | Twist independence has its required finiteness domain. |
| 8.6, extension Euler formula | F₂×F₃; K; C₂×ℤ; identity extensions | E₂ total dimensions (1,5,6), Euler 2=(−1)(−2). K: sign-row cohomology 0, total dimensions (1,1,0), Euler 0=0·0. C₂×ℤ: 0=(1/2)·0. Identity extension contributes one row/column and factor 1. | Imported Euler identity and the group application agree. |
| 8.7, action Euler formula | C₄∗_{C₂}C₆; C₂∗C₃; F_r | 1/4+1/6−1/2=−1/12; 1/2+1/3−1=−1/6; 1−r. Wrong edge sign gives 11/12 in the first example. | Stabilizer denominators and alternating sign tested. |
| 8.8, fixed and orbit normalized chains | Four-edge circle with reflection | N(X) ranks (4,4); fixed N ranks (2,0); orbit N ranks (3,2). Euler identity 0+2=2·1; total fixed/input homology dimensions 2≤2. | New fixed-basis and coinvariant compatibilities work. Degeneracy is reflected both by fixed inclusions and orbit quotients. |
| 8.8, free action and p=3 | Free half-turn on circle; point with C₃-action | Orbit ranks (2,2), so 0+0=2·0. Point: 1+2·1=3·1. | Both free and fixed cases, p=2 and p=3. |
| 8.8, finiteness boundaries | Trivial C₂ on discrete ℕ; free EC₂; 𝔽_p[P] in degree 0 | Discrete ℕ has infinite input and fixed H₀. EC₂ has χ=1, not divisible by 2, but unbounded dimension. Regular projective complex gives χ=|P|=|P|·1. | Finite input homology and finite chain length are independently needed and now present. |
| 8.9, denominators | C₄∗_{C₂}C₆; C₂∗C₃; finite G; torsion-free groups | lcm(4,6)·(−1/12)=−1; lcm(2,3)·(−1/6)=−1; |G|·1/|G|=1; torsion-free m=1. Using maximum instead of lcm yields −1/2 in both amalgam examples. | General denominator theorem; no cocompact-action restriction inserted. |
| 9.3, Farrell convention | C₂ over ℤ; regular coefficients; ℤ | Degrees (−1,0,1,2) give (0,ℤ/2,0,ℤ/2). Regular coefficients give 0 in all degrees; torsion-free ℤ also gives 0. | Norm splice, indexing and vanishing compatible. |
| 9.4, comparison | C₂; C₂×ℤ; C₄∗_{C₂}C₆ | At endpoint n=0, ℤ→ℤ/2 is onto with kernel 2ℤ. C₂×ℤ has ℤ/2 in each degree ≥2. Amalgam: positive even cohomology is kernel(C₄⊕C₆→C₂)=C₁₂, odd cohomology 0. | Isomorphism is above the bound; endpoint is only surjective. |
| 9.5, Tate comparison | C₂; trivial group | Norm is multiplication by 2, giving degrees (0,1,2,−1)=(ℤ/2,0,ℤ/2,0); trivial-group norm=id gives zero in every degree. | Matches pinned Tate carrier. |

Additional computed checks cover the remaining mathematical families, without repeating a full per-target ledger:

| Statements | Computation | Result |
|---|---|---|
| 1.1–1.4 module/group finiteness | A finite free module A^r has Hom(A^r,−)=(−)^r, commuting with filtered colimits; for ℚ as an abelian group the permutation-module comparison is 0→R. Over ℚ[C₂], the trivial module has dimension 1 and is projective, but an alternating sum of dimensions of finite free modules is even. | Finite generation versus finite presentation, FP₀ versus FP₁, and FP versus FL distinguished. |
| 1.7–1.8 extensions and free groups | In the lamplighter extension the total group is finitely generated but the normal ⊕ℤ C₂ is not. F_r has free resolution ranks (1,r), hence Euler 1−r; r=0 gives length 0. | No false converse for the kernel; zero-index truncation accounted for. |
| 2.4–2.8 dimensions | ℤ² gives 2≤1+1; F₂ gives cd=1; C₂ over ℤ/6 has H²=R/2R=ℤ/2, while over ℤ[1/2] cd=0; C₆ over ℤ[1/2] still has infinite cd. For ℤⁿ, top cohomology with ℤ/p is ℤ/p, so the torsion-coefficient supremum is n. | Composite coefficient rings and bad primes included; no ℤ_p-only generalization. |
| 2.5 directedness | In the family of cyclic subgroups of S₃, H₁(C₃,ℤ)=C₃ maps to 0 in H₁(S₃,ℤ)=C₂; the cyclic-subgroup family has no larger cyclic member containing C₃ and a transposition. | The non-directed negative control is genuine. |
| 4.1–4.4 virtual invariants | vcd(C₂)=0; vcd(C₂×ℤⁿ)=n; vcd(⊕ℕ C₂)=∞. C₂×ℚ has vcd=2 but a torsion-free finite-index subgroup has H₁=ℚ, not finitely generated. | Finite vcd alone does not imply finite homological type. |
| 5.1–5.2 geometric carriers | gd(1)=0, gd(F_r)=1 for r>0; T² cellular ranks (1,2,1) give a finite free resolution. | Dimension zero and finiteness of cells distinguished. |
| 6.1–6.2 duality/action | For ℤ, cap evaluation sends the generator to 1. For F₂, δ(at)=((s−1)at,(t−1)at)=δ(a)t, whereas left multiplication in the wrong order fails when st≠ts. | Cap normalization and right regular action consistent with the supplier. |
| 6.5–6.6 inheritance/manifolds | For dℤ⊆ℤ, inclusion on H₁ multiplies by d, while transfer sends the base generator to the subgroup generator. S² has π₁=1 and cd=0≠2. | Transfer direction and the necessity of asphericity checked; Hausdorffness is explicitly assumed. |
| 7.1,7.3–7.5 projective ranks | Regular ℚS₃ has class-rank (1,0,0). (ℤS₃)² has integral rank 12 and rational free rank 2. Mod 2 and mod 3, (ℤC_p)² has dimensions 4 and 6 and free rank 2. Hom(ℤΓ,K_λ) has dimension 1 for Γ=ℤ and all λ, matching the coefficient formula; nonprojective trivial ℤ with λ≠1 gives 0 instead of 1. | Swan hypotheses, all primes, projectivity and twists tested. |
| 8.1–8.2 finite complexes | A contractible disk on countably generated free ℤ-modules has zero homology and is replaced by the zero finite complex. For ℤC₂ in degree 0, underlying Euler=2, coinvariant Euler=1; for nonprojective trivial ℤ these are 1 and 1, violating the putative factor 2. | Finite homology is not finite chain rank; projectivity is essential. |
| 9.1–9.2 complete resolutions | For finite G over a field all RG-modules are Gorenstein projective; for ℤ and nonzero R the trivial module has projective dimension 1 and is not Gorenstein projective. At R=0 the complete complex can be zero and every comparison is 0→0. | Complete resolutions use actual projectives and an actual comparison, not arbitrary complexes. |

### Seeded sources and remaining source certification

All eleven cited works have their existing manifest keys. Six texts were readable in the supplied legal source cache. The five settled uncertified works were not requested again, and no missing-reference request or duplicate key was created. The author distinguishes integral source statements from its own arbitrary-ring arguments; those arguments were checked rather than attributing extra generality to the printed text.

| Seeded target | Text and locator read | What was verified, or limit |
|---|---|---|
| 1.5 | Brown1975 lines 83–101, 147–182, printed pp.130–132; BieriEckmann1974 lines 95–137, pp.75–76 | The finite-presentation-degree convention and the mono/epi endpoints. The product criterion is supported by the module criterion and dimension shifting. OCR loses part of Brown's first hypothesis at line 85; the other clauses and proof were read, and the companion source supplies the module formulation. |
| 1.6 | BrownGTM87 §VIII.5, settled uncertified | Could not inspect the book. Independently checked the restriction-of-scalars route at the Tau Ceti pin and finite-index free rank. No claim of page/theorem certification. |
| 2.1 | BieriEckmann1973 lines 105–164, pp.105–106; Serre1971Bourbaki lines 40–58, pp.337–338 | Integral dimension conventions; the roadmap's R-version is explicitly its own Ext/Tor construction. The zero-ring extension uses least bounds, not largest nonvanishing degrees. |
| 2.3 | BieriEckmann1973 Proposition 2.1, lines 280–286, p.109, and line 396, p.112 | Free-coefficient detection with finite cd; finite-index equality route. The unit-index claim additionally cites BrownGTM87 §III.10, unread, and is independently supported by the pinned restriction/corestriction identity. |
| 3.2 | Brown1974 line 354, p.236; BieriEckmann1973 line 396, p.112 | Both attribute the torsion-free finite-index theorem to Serre. Primary Serre1971Prospects n°1.7 Théorème 1 and BrownGTM87 §VIII.3 remain uncertified. These secondary citations do not certify the primary numbering or pages. |
| 5.3 | EilenbergGanea1957 and BrownGTM87 §VIII.7, settled uncertified | Primary text unavailable. The max(3,cd) statement and its cellular/Hurewicz route were reviewed; exact printed theorem/page could not be certified. |
| 5.4 | Brown1974 lines 637–651, pp.244–245 | Serre's multiplicative construction, acyclicity and finite stabilizers. The dimension-preserving replacement is the declared supplier contract, not falsely claimed as present at the supplier. |
| 6.4 | BieriEckmann1974 lines 253–281, pp.80–81, and Theorem 3.4, lines 327–334, p.82; BieriEckmann1973 lines 105–164 | Rank-one orientation, integral abstract-isomorphism characterization, and cap-product duality. Arbitrary-ring generalization is separately formulated, with R-flatness and correct action. The source cross-reference misprint is recorded below. |
| 7.2 | BrownGTM87 §IX.2, settled uncertified | No source-text certification. Independently checked projective trace at the pin and computed the nonfree idempotent, nonabelian S₃ and inverse-character tests above. |
| 8.3 | Brown1974 lines 386–424, pp.237–238 | Rational-homology characteristic, its domain and the distinction from χ. The identity-class-rank construction is explicitly based on 7.1, not on Brown's introduction. |
| 8.4 | Brown1974 lines 345–382, pp.236–237, 414–424, p.238 | Finite homological type, independence through finite-index intersections and index multiplicativity. Normality is not silently imposed on all comparison subgroups. |
| 8.5 | Brown1974 Theorem 4 and Corollary 1, lines 425–451, pp.238–239, and Appendix A Theorem 7, lines 1284–1313, p.260 | Twisted Euler and projective Hom dimension formula, with arbitrary field and finite-dimensional coefficient representation. Integral type FP supplies the finite projective resolution. |
| 8.8 | Floyd1952 Theorems 2.3–2.4, lines 110–176, pp.140–141; Theorems 4.2/4.4, lines 292–348, pp.144–146; Brown1974 lines 174–185, 243–333, pp.232–236 | Smith sequences, Euler identity and inequality, relative-orbit comparison, finite total input homology. Floyd's topological setting is narrower; the design expressly proves the bounded normalized permutation-chain application instead of asserting Floyd's space theorem for arbitrary realizations. |
| 8.9 | Brown1974 lines 600–673, pp.243–245 | General denominator conclusion and finite-subgroup argument. Lcm of subgroup orders, not maximum order; no finite quotient of the action is assumed. |
| 9.3 | Farrell1977 and BrownGTM87 §X.3, settled uncertified | Primary text unavailable. The complete-resolution definition, comparison input, integer grading and finite-group norm-splice tests were checked independently. |

Further readable locators checked include Brown1974's Wall finiteness lemma/Theorem 1 at lines 120–185, pp.231–232; its extension formula at lines 425–463, pp.238–239; and Appendix A Theorem 7 at lines 1284–1355, pp.260–261. The p-adic and mod-p Swan routes use the pinned Swan theorem; Brown's localized integral refinement is not misrepresented as literally a statement about ℤ_p.

### Pins, duplication and supplier direction

The hashes in the contracts equal `lake-manifest.json`: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`. Searched 89 distinct library prerequisites extracted from the plan and checked the README's additional names against the pins. Object searches, rather than name matches alone, covered normalized chains, pseudocoherence, projective dimension, tensor induction, traces, complete resolutions, group dimensions, Euler characteristics and Smith theory. Relevant definitions/signatures opened include:

| Pinned file and line | Declaration and consequence for ownership |
|---|---|
| Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean:183, :202; GroupHomology/Basic.lean:226, :246 | Native group (co)homology and Ext/Tor comparisons; not restated as new carriers. |
| Mathlib/RepresentationTheory/Rep/Iso.lean:157; Homological/GroupCohomology/Shapiro.lean:58; GroupHomology/Shapiro.lean:65 | Module/representation equivalence and Shapiro on the actual coefficient categories. |
| Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:53 | HasProjectiveDimensionLE is Ext vanishing, without finite generation. |
| Mathlib/AlgebraicTopology/SimplicialSet/Homology/Nondegenerate.lean:43, :86, :167, :182, :200, :252; Dimension.lean:32, :36 | Normalized complex, comparison, basis, dimension vanishing and functorial map already exist. HasDimensionLE means every nondegenerate simplex has bounded degree; it says nothing about number of simplices. |
| Mathlib/Algebra/Group/Monoid.lean:552; GroupTheory/OrderOfElement.lean:911 | Native IsMulTorsionFree, equivalent for groups to absence of nonidentity finite-order elements. |
| Mathlib/RingTheory/Flat/Basic.lean:114; Algebra/Module/Projective.lean:71 | Flatness is used over the commutative coefficient ring; projectivity works on the group-ring module. No invented noncommutative-flat carrier. |
| Mathlib/Topology/Homotopy/Lifting.lean:489; Geometry/Manifold/ChartedSpace.lean:141, :236; Geometry/Manifold/IsManifold/Basic.lean:777 | Simply connected lifting and second countability. ChartedSpace/IsManifold do not include Hausdorffness; 6.6 supplies T2Space. |
| Mathlib/RepresentationTheory/Homological/TateCohomology/Basic.lean:146, :233 | Native norm-splice comparison and Tate cohomology, with integer grading. |
| TauCeti/Algebra/Module/PseudoCoherent/Basic.lean:89, :133, :205, :320, :375 | Real partial finite-free resolutions; degrees zero and one, all-degree criterion, syzygy induction. Native module theory is consumed rather than rebuilt. |
| TauCeti/Algebra/Module/PseudoCoherent/FiniteProjectiveDimension.lean:69, :153 | FPD uses an unbounded finite-free resolution with projective syzygy; it is not a finite free resolution. The categorical projective-dimension comparison applies. |
| TauCeti/LinearAlgebra/Trace/Projective.lean:72, :96, :118, :158; TauCeti/CategoryTheory/Exact/Resolution/Complete/Comparison.lean:458, :481 | Projective trace, cyclicity, finite-free comparison and base change; complete-resolution homotopy criterion and homotopyEquiv. Finite projective does not mean free; the homotopy theorem requires an actual cycle comparison. These inputs remain imported. |

In particular the projective trace calculation on R=ℚ×ℚ excludes silently replacing it with ordinary finite-free trace. The tensor-induced representation already present in Tau Ceti is sign-free in degree zero; it does not duplicate the signed chain-complex construction owned here.

I read scopes in main's ClassifyingSpaces, AlgebraicTopology and FreeGroupsAndLimitGroups, and the relevant supplied open heads. The board package index was checked before resolving the local CohomologyOfGroups supplier. `roadmaps grep` was used for ownership searches and `roadmaps show` for open heads. The overlap leads were verified: no second copy, no conflicting open change to this roadmap, no dropped cited id and no citation depending only on an open revision's numbering. The main-roadmap revisions below preserve mappings for older ids.

| Cross-roadmap citation | File/head and resolution |
|---|---|
| CohomologyOfGroups §§1.2,1.4,1.5,2.3,3.1,3.2,3.4–3.6,4.6,5.2,6.1–6.3 | `packages/CohomologyOfGroups/design/README.md`, respective sections at lines 620,663,687,800,849,900,959,978,1007,1172,1339,1484,1529,1569. Read the claimed operations and hypotheses. Scope line 74 excludes this roadmap's invariants. Its tree splitting is over the coefficient ring, not equivariant. |
| SpectralSequencesAndConvergence §§3.4,5.3 | New-roadmap PR #2302, `TauCetiRoadmap/SpectralSequencesAndConvergence/README.md:818` and `:1340`. Owns generic Euler invariance and the filtered-complex version. Classical page r is native page r+1; position (2p+q+1,−p−1) still has total degree p+q. No sign discrepancy. |
| FreeGroupsAndLimitGroups §§4.5,4.7–4.9 | Main `TauCetiRoadmap/FreeGroupsAndLimitGroups/README.md:863`, :906, :937, :950. Owns amalgam/HNN interpretations, Bass–Serre trees and finite-subgroup fixed points. |
| SchemeKTheoryOperations §6.7 | PR #1229, `TauCetiRoadmap/SchemeKTheoryOperations/README.md:2582`. Directed unions and homology with arbitrary commutative coefficients are supplied. |
| EtaleCohomologyFoundations §F.10.3 | Main `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:1295`, trace block at :1322. Owns arbitrary-ring Hattori–Stallings trace; this design owns its group-ring conjugacy-class specialization and rank consequences. |
| ClassifyingSpaces Stage 2 item 10 and Stage 4 items 16–17 | Main `TauCetiRoadmap/ClassifyingSpaces/README.md:173`, :224, :238. Classifying spaces, cellular resolutions and twisted group comparison. PRs #1807/#1808 retain old-number mappings; both scopes and mappings were read. No revision-only supplier required. |
| AlgebraicTopology §§4.7,6.3–6.4,8.1,8.3,8.5,8.7,8.11a | Main `TauCetiRoadmap/AlgebraicTopology/README.md:1739`, :2491, :2873, :3219, :3334, :3413, :3618, :3971. Realization, local orientations/duality, connectivity, Hurewicz, Whitehead and finite CW type resolve. Ordinary Whitehead is explicitly discussed at :3455 despite the proper-homotopy heading. PRs #1807/#1808 scopes and overlap mappings were also read. |
| ProfiniteCohomology Layer 11 | Main `TauCetiRoadmap/ProfiniteCohomology/README.md:2954`. Continuous cohomological dimension with discrete primary coefficients, distinct from this roadmap's discrete cd. |
| ArithmeticKTheory §3.2; BianchiModularForms §9.3 | PR #1418, `TauCetiRoadmap/ArithmeticKTheory/README.md:1165`, Steinberg/orientation duality for arithmetic groups; PR #1719, `TauCetiRoadmap/BianchiModularForms/README.md:2242`, orbifold Euler characteristics. Instances remain with those owners. |
| FuchsianOrbifolds Layer 5 item 6; BordismFormalGroups | Main `TauCetiRoadmap/FuchsianOrbifolds/README.md:742` computes the signature formula and −1/6; main `TauCetiRoadmap/BordismFormalGroups/README.md:1442` constructs a continuous completed-group-algebra resolution. Neither is a second owner of this discrete general theory. |
| Other nearby ownership | PR #323 GorensteinHomologicalAlgebra scope, `TauCetiRoadmap/GorensteinHomologicalAlgebra/README.md:15`, excludes complete group cohomology. PR #1734 SheafTheoreticSmithTheory scope, :6, concerns étale sheaves. PR #2296 PosetHomotopyAndSubgroupComplexes scope, :46 and :104, excludes the vcd/Euler group theory. PR #2266 MappingClassGroupsAndCanonicalRepresentations scope, :33, owns its surface-group representations and instances, not these general invariants. |

The three resolver leads are not missing suppliers: CohomologyOfGroups §4.6 is in the board design at line 1172; BieriEckmann1974 §3.3 and BrownGTM87 §VIII.6 are source citations misclassified as roadmap names. No unknown Lean-name lead was reported.

The one declared gap, `simplicial-replacement-dimension`, agrees between plan and README: AlgebraicTopology §8.11a must preserve an upper bound N on CW dimension in its abstract simplicial replacement. The present supplier supplies replacement but not that bound. The contract is precise, minimal and owned; it is not a finding or an upward edge. Any eventual acceptance remains conditional on that contract.

Dependency check output:

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
```

Every Needs line was read. The check has no UPWARD or CYCLE line. Being absent from the order at this design stage is expected. No forbidden supplier is introduced, and the instance roadmaps listed downstream are not reverse supply edges.

Overlap check: read ClassifyingSpaces and AlgebraicTopology on main and at #1807/#1808, FreeGroupsAndLimitGroups on main, and SpectralSequencesAndConvergencePartII at #2307; classifying-space and cellular-resolution objects belong to ClassifyingSpaces/native pins, topological replacements and manifold duality to AlgebraicTopology, trees/splittings to FreeGroupsAndLimitGroups, generic spectral constructions to SpectralSequencesAndConvergencePartII and generic convergence/Euler invariance to its base roadmap. The results/heading closest-roadmap list is empty; no shared object has two owners here.

### Shape, headline acceptance tests and source independence

The README has the required summary, ownership, conventions, exact contracts, mathematical build explanation, nine mathematical layers with Examples and Dependencies, downstream consumers and references. The twelve plan targets marked definitions each have an API and at least three Checks (3 or 4); the construction 3.1 has its own API and three Checks. The prose is Unicode mathematics with code spans; no executable algorithms, local machine paths, process instructions or compulsory source-following route were found. Plan identifiers are design data, not claims that an absent Lean file already declares them.

The summary names nine numbered headline targets: 1.5 finiteness criterion, 3.2 Serre, 5.3 Eilenberg–Ganea, 6.3 duality criterion, 8.4 finite-index Euler characteristic, 8.6 extension multiplicativity, 8.7 equivariant Euler formula, 8.9 denominator theorem, and 9.4 Farrell comparison. Each remains a mathematical target with its hypotheses. The summary also describes Swan's theorem, signed tensor induction, finite-index stability and the Tate comparison; they are present in the corresponding layers.

This is a design, not the package acceptance-test lane. No Suggested.lean exists in the reviewed package. Consequently there are zero sorried declarations to probe, no imports, sorry'd data, set_option, Lean docstrings or section-variable signatures to inspect, and no claim that headline coverage at the pins has passed. Elaboration and mechanical `#check @name`: **not available (this lane does not elaborate)**. At package stage the nine headlines must each be stated with native carriers and simple real definitions, or individually explained as not statable in the module docstring; this review does not waive that requirement. There is no padding finding to make about a file that does not yet exist.

Wording was compared for 21 roadmap passages against six readable sources: 1.1,1.2,1.5,2.1,2.2,2.3,3.2,4.1,5.4,6.1,6.3,6.4,6.5,7.5,8.1,8.3,8.4,8.5,8.6,8.8,8.9. This includes more than five nonsampled definition/proof/API passages from different sections. No passage reproducing source expression, translated clause-by-clause prose, source table, figure or exercise list was found. Shared formulas and standard theorem names were not treated as copied expression. No external formalization is claimed as the origin of a Lean declaration.

Counting source-key citation occurrences before References gives 129: Brown1974 35, BieriEckmann1973 28, BrownGTM87 22, BieriEckmann1974 13, Brown1975 8, Serre1971Bourbaki 7, Serre1971Prospects 6, Farrell1977 5, Floyd1952 3, EilenbergGanea1957 1, Wall1961 1. Brown1974 has the largest share. Its contents were read at Brown1974 lines 36–57: §1 projective complexes, §2 semisimplicial actions, §3 finiteness, §§4–5 Euler invariants, §§6–7 finite subgroups and p-fractional parts, §§8–9 applications, Appendices A–B. The roadmap instead places §3 material in Layer 4, the §6 action construction in 5.4, Appendix A inputs in Layer 7, and §1/§4/§5/§2/§6 material in that dependency order across Layer 8. It omits the arithmetic application chapters and subgroup-poset refinements. This is not a one-to-one run of Brown's contents.

The mathematical dependencies explain the retained order: finiteness and dimension feed virtual dimension; Serre's theorem feeds finite-dimensional actions; rank/projective-module results feed Euler formulas; bounded Smith chains and the action supply the denominator theorem. Duality branches from the dimension/cap-product theory and complete resolutions branch from finite-index/projective theory. The independent character-theory branch is not presented as a compulsory source sequence. BrownGTM87's complete contents and wording were not available, so no certification against that book is claimed.

Source independence: 21 passages compared with 6 sources; no copied expression or reused source artifacts found. Largest share Brown1974, 35 of 129 source-key citation occurrences; contents compared with Brown1974: independent. BrownGTM87 text and contents, and the other four settled uncertified primary works, were not available for direct comparison.

## Not verifiable

- BrownGTM87, Farrell1977, EilenbergGanea1957, Wall1961 and Serre1971Prospects remain settled uncertified sources. Their exact printed locators, wording and full proofs were not read. The report distinguishes secondary attestations and independent mathematics from source verification. No settled request was reopened.
- Brown1975 line 85 has an incomplete OCR rendering of the first clause of Theorem 2. The neighbouring clauses and proof, and BieriEckmann1974's module criterion, were read; the missing characters were not guessed.
- No Suggested.lean is present and this lane cannot elaborate. No one-tactic probe, binder extraction or passing Lean build is claimed; warnings cannot be assessed.
- The predictive downstream citation to MotivicStructuresInModuliOfCurves TC.1 could not be checked against a head in the supplied open-roadmap list or a matching folder on main. It is not consumed as a prerequisite; no missing-supplier finding is inferred from it.

## Source issues

- **Misprint** in BieriEckmann1974 at Theorem 3.4 proof, printed p.82 (line 334): the source says its duality conclusion follows from the 1973 paper's Theorem 4.6; it should be Theorem 4.5, the concentration and torsion-freeness criterion; affects the proof.

The correction was checked against BieriEckmann1973 lines 612–624: Theorem 4.5 is the criterion, whereas 4.6 asserts finite generation. The following additional numbering slip occurs in the immediately following remark:

- **Misprint** in BieriEckmann1974 at the remark after Theorem 3.4, printed p.82 (line 337): the source says Theorem 4.3 when contrasting the preceding abstract-isomorphism criterion with the naturality criterion; it should be Theorem 3.4; affects nothing.

## For the human reviewers

- BrownGTM87 is cited 22 times before References, but its text and contents were unavailable. Wording and arrangement against that book were not tested; its manifest status is settled uncertified.
- Farrell1977, EilenbergGanea1957, Wall1961 and Serre1971Prospects remain settled uncertified. The source sample cannot certify their primary theorem numbering or wording. No new source access or licence decision is requested from the author.

<!-- tauceti-roadmap-review {"agent": "codex", "head": "e92e74d34a8a7eaa2c3fabcac625464fb279b36e", "job": "REV-DESIGN-FinitenessAndDualityOfGroups~3", "model": "gpt-6-astra", "worker": "chris-9"} -->
