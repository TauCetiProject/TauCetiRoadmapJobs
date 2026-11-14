<!-- from CBirkbeck, https://github.com/TauCetiProject/TauCetiRoadmapJobs/pull/15109#issuecomment-6878733235 -->
Review (codex) of f24e0d1

Verdict: needs_changes

**For the human reviewers:** this review raises 2 questions that a human decides (the scope of the roadmap, or a licence). They are in the section of that name at the end and do not change the verdict.

1. **F01** (P2) Qualify the introductory rank comparison

   **Location:** `packages/FinitenessAndDualityOfGroups/design/README.md:160`, in Conventions: “so `r_P` is not `δ_{[1]}` although `P ≅ R` is cyclic.”

   **Claim:** For every finite group whose order is invertible in R, the trivial projective module has a Hattori–Stallings rank different from the identity-class delta function.

   **Witness:** Take R=ℚ and G=1. Then e=1, P=ℚ, and the unique coefficient of both functions is 1. Over R=0 both functions are also zero, for every finite G.

   **Exact repair:** Retain the formula and replace the quoted conclusion with: “For R≠0 and G≠1 this differs from δ_[1]; for G=1 or R=0 the functions coincide.” This is precisely the distinction already made by the repaired Check in §7.1, `packages/FinitenessAndDualityOfGroups/design/README.md:1478`–1481. Carry it into Conventions so the two passages agree. No narrowing of the rank definition or character theorem is needed.

   **Repair test:** For ℚ and C₂ the two functions are (1/2,1/2) and (1,0), so they differ. For ℚ and 1 they are both (1); for 0 and C₂ both are (0,0). For 𝔽₃ and C₄ the functions are (1,1,1,1) and (1,0,0,0): the distinction must use a nonidentity class, since their identity coefficients can agree.

2. **F02** (P3) Correct the zero-ring negative control

   **Location:** `packages/FinitenessAndDualityOfGroups/design/README.md:871`, §2.7: “Over the zero ring the dichotomy fails (`cd = 0` for every group), so nontriviality is used.”

   **Claim:** The finite-group unit/nonunit dichotomy fails over the zero ring.

   **Witness:** In the zero ring every scalar is a unit. For C₂ and C₃, their orders are units and their cohomological dimensions are 0, exactly as the unit branch predicts. The nonunit branch has no instance.

   **Exact repair:** Replace the Check with: “Over the zero ring every finite group satisfies the unit-order branch, since every scalar is a unit. Nontriviality is needed for the converse cd_R G=0 ⇒ G finite: cd_0 ℤ=0 although ℤ is infinite.” Retain the theorem's nontriviality hypothesis. The plan's §2.7 test only says that nontriviality is used; it does not repeat the false assertion about the dichotomy.

   **Repair test:** For C₂ over 0, the proposed Check now gives 0=0 and a unit order. For ℤ over 0, the dimension-zero condition is true and finiteness is false. For C₂ over ℤ/6, 2 is not a unit and H²(C₂,ℤ/6)=ℤ/2≠0, preserving the original nonunit control.

Two findings: one P2 and one P3. Both findings from round 3 are repaired at their cited locations. The remaining findings are residual instances of the nonzero-ring/trivial-group pattern. No design text, plan or source entry was changed by this review.

## Verified sound

### Previous findings and the repair sweep

The previous review and repair report were read first, then their claims were checked against the actual README and plan. Neither previous finding was marked not actionable.

| Previous finding | Status and repaired passage | Verification |
|---|---|---|
| F01, equivariant versus underlying contraction | **Repaired.** README §3.1, lines 944–954: “It is contractible as a complex of R-modules” and “has an RG-linear contraction exactly when 2 is a unit of R”. Plan test `3.1/contractible` makes the same distinction. | The written contraction gives dh+hd=id on all four basis elements. An equivariant section requires 2k=1; the averaged contraction works precisely when 2 is a unit. Computations appear below. |
| F02, coefficient guards in finiteness/subgroup Checks | **Repaired.** README §1.5, line 626: “For `G = ℚ` and `R ≠ 0`”; §2.3, line 794, now says “For `H = 2ℤ ≤ ℤ` and `R ≠ 0`” and records the zero-ring values. Plan tests `1.5/rat_colimit`, `1.5/rat_product`, `2.3/2Z_in_Z` agree. | The comparison maps are 0→R, or have the displayed nonzero kernel, only for nonzero R. At R=0 they are 0→0. The subgroup dimensions are 1=1 for nonzero R and 0=0 for zero R. |

The repair also changed the BS(1,2) bound in §2.6, the free-group Poincaré-duality Check in §6.4, the trivial-module rank Check in §7.1, and plan test `9.1/integers`. All four changes are correct, with their values recorded below. The sweep of other contractions, splittings and homotopy equivalences found the necessary categories explicit: the tree sequence is split over the coefficient ring, §3.1(c) preserves underlying homotopy equivalences, and §9.2's finite-cd contraction is over the group ring. The sweep of all coefficient-dependent Checks and conventions found R01 and R02.

### Extent and computed adversarial pass

Read all nine layers, all 51 plan targets, their 51 API entries and 159 tests, and the README's fuller statements and Checks. Changed passages and all 15 seeded targets were reviewed anew. For unchanged material, only round 3's rows containing actual computed values were used as inherited evidence; its general summaries were not treated as computed checks. The following table records the sampled targets, the headline theorems, all changed mathematical claims and both findings. Additional rows record the remaining mathematical families without a full target-by-target catalogue.

Here C_m is cyclic of order m, F_r is free of rank r, and K is the Klein bottle group. Positive dimension calculations over an unspecified R assume R≠0. These are mathematical computations, not Lean elaboration or certification of unread source texts.

| Statement | Instances tried | Values computed on each side | Result / change |
|---|---|---|---|
| 1.5, colimit criterion and endpoint | G=ℚ, permutation modules R[ℚ/(1/i!)ℤ], n=0,1; R=ℤ,𝔽₂,0 | Colimit of invariants=0; invariants of colimit=R. Thus 0→R is injective but not onto for nonzero R; at R=0 it is 0→0. | Correct endpoint and repaired guard; FP₀ and FP₁ differ. |
| 1.5, product criterion | G=ℚ, augmentation family Rℚ | The sequence of augmentation differences maps to 0 in ∏R. Modulo I·∏Rℚ its class is nonzero for R≠0: finitely many group elements lie in one cyclic subgroup C, and [0]−[1/j!] stays nonzero in R[ℚ/C] for sufficiently large j. At R=0 the class is 0. | Repaired guard is necessary and sufficient for this control. |
| 1.6, finite index | ℤ⊆C₂×ℤ, index 2; ℤ and ℚ coefficients | Over ℤ: subgroup FL, total group FP∞ but not FP, with cd values 1 and ∞. Over ℚ both are FP and have cd 1. | FP_n equivalence and one-way FP/FL descent have the correct directions. |
| 2.1, definitions | 1,ℤ,C₂ over ℤ; arbitrary G over 0 | (cd,hd)=(0,0),(1,1),(∞,∞); over 0 both dimensions are 0 and all (co)homology is 0. | Least-bound convention handles zero modules and unbounded degrees. |
| 2.2, regular-coefficient detection | ℤ², C₂ over ℤ; R=0 | H²(ℤ²,Rℤ²)=R gives cd=2 for R≠0. H^{>0}(C₂,ℤC₂)=0 while cd=∞. At R=0 the upper-bound implication reads 0≤n. | Finite-cd hypothesis prevents false detection; zero-ring version remains true. |
| 2.3, subgroup inequalities | ℤ⊆C₂×ℤ; 2ℤ⊆ℤ | Over ℤ, 1≤∞ but not equality; over ℚ, 1=1. For 2ℤ⊆ℤ the values are 1=1 for nonzero R and 0=0 for zero R. | Index invertibility and the repaired Check discriminate correctly. |
| 2.6, repaired HNN Check | BS(1,2); R=ℚ,𝔽₂,0 | For nonzero R the bound is max(1,1+1)=2. At R=0 it is max(0,0+1)=1, whereas actual cd=0. | Correctly records a strict zero-ring bound. |
| 2.7, unit-order dichotomy | C₂ over ℤ/6 and 0; C₃ over 0; ℤ over 0 | H²(C₂,ℤ/6)=ℤ/2≠0 and cd=∞. In 0, both finite orders are units and cd=0. Infinite ℤ also has cd_0=0. | R02 corrects which implication fails at zero coefficients. |
| 3.1, signed differential | Disk Rx→Ry, degrees 1 and 0; z=x⊗x, a=x⊗y, b=y⊗x | d₂z=b−a; d₁a=d₁b=y⊗y. Signed swap gives d(sz)=a−b=s(dz). Unsigned swap has defect 2(b−a), nonzero over ℤ and zero over 𝔽₂. | Koszul sign checked in both characteristics. |
| 3.1, repaired contraction | R=ℤ,𝔽₂,ℤ[1/2],0 | h₀(y⊗y)=a, h₁(a)=0, h₁(b)=z gives dh+hd equal to identity on y⊗y,a,b,z. Equivariant h₀=k(a+b) gives d₁h₀=2k: no solution over ℤ or 𝔽₂; k=1/2 works over ℤ[1/2]; at 0 the identity is zero. | Repaired iff is correct, including the zero ring. With 2 invertible, h₁(a)=−z/2 and h₁(b)=z/2 give the equivariant contraction. |
| 3.2, Serre | K⊇ℤ², index 2; C₂×ℤ⊇ℤ | cd values 2=2 in the torsion-free example, ∞≠1 in the torsion example. In K, (at)²=t² with at≠t, but these elements do not commute. | The native commuting-power torsion-free predicate is the correct one. |
| 4.4, virtual finiteness and homological type | Finite G; C₂×ℚ | Finite G has vcd=0 and a trivial finite-index subgroup with homology ranks (1,0,…). C₂×ℚ has vcd=2 but the finite-index subgroup ℚ has H₁=ℚ, not finitely generated. | Finite vcd alone does not imply finite homological type. |
| 5.3, Eilenberg–Ganea | 1,ℤ²,ℤ³,C₂ over ℤ | gd≤max(3,cd) gives 0≤3, 2≤3, 3≤3 and ∞≤∞. | No unsupported equality in dimension two. |
| 5.4, induced action | Finite G, Γ=1; C₂×ℤ, Γ=ℤ | Point stabilizer order equals [G:Γ]. For the two-line product, dimension=2 and stabilizer orders are 1 or 2. For Γ′=⟨st⟩, a fixed point of st would require a=b+1 and b=a+1, hence 0=2. | Properness and freeness of torsion-free subgroups tested separately. |
| 6.3, duality criterion | ℤⁿ; ℤ∗ℤ²; R=0 | Regular cohomology of ℤⁿ is R in degree n and 0 otherwise, with R flat. For ℤ∗ℤ², cd=2 but H¹ contains ℤG≠0. At R=0 both sides hold in every dimension. | Concentration, flatness and the nontriviality needed for uniqueness are distinguished. |
| 6.4, repaired PD Check | C₂ over ℤ and ℚ; F₁,F₂ over ℚ; R=0 | C₂ has cd_ℤ=∞ but is PD₀ over ℚ. F₁ has dualizer ℚ; F₂ has infinite-dimensional dualizer. Over 0, D=0 is also free of rank one, and all duality maps are 0→0 in every dimension. | Repaired coefficient guard and zero-ring control are correct. |
| 6.6, manifolds | Torus, K, S²; circle with a doubled point | Torus has regular cohomology R only in degree n. K has H²(K,ℤ)=ℤ/2, whereas a trivial orientation would predict ℤ. S² has π₁=1 and cd=0≠2. The doubled circle has π₁=F₂ and H₁=ℤ²; a rank-one orientation system has H₀=ℤ or ℤ/2, not ℤ². | Asphericity, orientation and Hausdorffness are substantive. |
| 7.1 and introductory convention | Trivial module for C₂/ℚ, C₄/𝔽₃, 1/ℚ and C₂/0 | Ranks versus δ are (1/2,1/2) versus (1,0); (1,1,1,1) versus (1,0,0,0); (1) versus (1); (0,0) versus (0,0). | §7.1 is repaired; R01 applies the same qualification to Conventions. |
| 7.2, character formula | Trivial ℚS₃ module; R=ℚ×ℚ,P=R(1,0); C₃-character ω | Centralizers (6,2,3) times ranks (1/6,1/2,1/3) give traces (1,1,1). Projective trace on R(1,0) is (1,0), while ordinary finite-free trace is 0. For C₃, 3·(ω/3)=ω, not ω⁻¹. | Nonabelian classes, nonfree projectives and inverse convention tested. |
| 7.4, Swan modulo p | P=(ℤC_p)²; p=2,3; nonprojective trivial ℤ | Reduced dimensions 4=2·2 and 6=3·2, with free rank 2. Trivial ℤ reduces to dimension 1, not divisible by p. | Projectivity is essential; both primes are included. |
| 8.4, finite-index Euler characteristic | C₂⊇1; C₄∗_{C₂}C₆ with index-12 F₂ | 2·(1/2)=1; 12·(1/4+1/6−1/2)=−1=χ(F₂). | Correct index direction and nonzero denominator. |
| 8.6, extensions | F₂×F₃; K; C₂×ℤ; identity extensions | E₂ total dimensions (1,5,6) give 1−5+6=2=(−1)(−2). K gives 1−1=0=0·0; C₂×ℤ gives 0=(1/2)·0. Identity extension contributes factor 1. | Imported spectral Euler identity is used with its finite-support conditions. |
| 8.7, actions/amalgams/HNN | C₄∗_{C₂}C₆; C₂∗C₃; free group F_r; identity HNN of 1 | 1/4+1/6−1/2=−1/12; 1/2+1/3−1=−1/6; 1−r; 1−1=0 for ℤ. Wrong edge sign gives 11/12 in the first case. | Stabilizer weighting and alternating sign checked. |
| 8.8, normalized versus unnormalized chains | Δ[0]; four-edge reflection circle | Point has unnormalized ranks (1,1,…) with d₁=0,d₂=id, normalized ranks (1,0,…), and homology (ℤ,0,…). Circle, fixed set and quotient have normalized ranks (4,4),(2,0),(3,2). | Euler 0+2=2·1 and total fixed/input homology dimensions 2≤2. Boundedness belongs to normalized chains. |
| 8.8, other Smith boundaries | Free half-turn on circle; fixed point for C₃; discrete ℕ; EC₂ | Free circle gives 0+0=2·0; point gives 1+2·1=3·1. Discrete ℕ has infinite input and fixed H₀. EC₂ has χ=1, not divisible by 2, but unbounded dimension. | Finite input homology and finite dimension have separate roles. |
| 8.9, denominators | C₄∗_{C₂}C₆; C₂∗C₃; finite and torsion-free groups | 12·(−1/12)=−1; 6·(−1/6)=−1; order(G)·1/order(G)=1; torsion-free lcm=1. Replacing lcm(4,6) by max(4,6) gives −1/2. | General denominator statement passes; no cocompactness shortcut. |
| 9.1, repaired plan test | Trivial module for G=ℤ, R=ℤ and 0 | Over ℤ its projective dimension is 1, so it is not Gorenstein projective. Over 0 its projective dimension is 0 and it is projective. | Correct guard in plan; README already had it. |
| 9.2, complete resolutions | C₂/ℤ; finite-cd ℤ; R=0 | Applying Hom to the periodic resolution gives alternating 0 and 2, hence degrees (−1,0,1,2)=(0,ℤ/2,0,ℤ/2). Finite-cd complete complexes are split and have zero Hom cohomology; over 0 the zero complex suffices. | A complete comparison and total acyclicity are required; the periodic complex is not replaced by arbitrary acyclic data. |
| 9.4, Farrell comparison | C₂; C₂×ℤ; C₄∗_{C₂}C₆ | Endpoint n=0 is ℤ→ℤ/2, onto with kernel 2ℤ, not an isomorphism. C₂×ℤ has ℤ/2 in every degree ≥2. For the amalgam, positive even groups are ker(C₄⊕C₆→C₂)=C₁₂ and odd groups are 0. | Isomorphism strictly above the bound; only surjectivity at the endpoint. |
| 9.5, Tate comparison | C₂; trivial group | Norm 2 gives degrees (−1,0,1,2)=(0,ℤ/2,0,ℤ/2). Norm 1 for the trivial group gives zero in every degree. | Matches the native Tate grading. |

The remaining unchanged families were checked using the earlier computed rows, with their examples evaluated against the current statements:

| Statements | Values / discriminating instance | Result |
|---|---|---|
| 1.1–1.4 module and group finiteness | Hom(A^r,−)=(−)^r commutes with filtered colimits. The trivial ℚC₂-module is projective of ℚ-dimension 1, while every alternating sum of finite free ℚC₂ dimensions is even. Zero modules have all comparison maps 0→0. | FP and FL, and finite generation and presentation, are not identified. |
| 1.7–1.8 | Lamplighter total group has two generators, while its normal direct sum of C₂'s is not finitely generated. F_r has resolution ranks (1,r) and Euler 1−r; r=0 gives length 0. | No false kernel converse or rank-zero truncation. |
| 2.4–2.5 and 2.8 | ℤ² gives 2≤1+1. The cyclic-subgroup family of ℤ² has supremum of dimensions 1 but union ℤ² has dimension 2; the family is not directed. For ℤⁿ, top cohomology with ℤ/p is ℤ/p, so the torsion-coefficient supremum is n. | Directedness and the comparison with continuous torsion-coefficient dimension are correctly scoped. |
| 4.1–4.3 | vcd(C₂)=0, vcd(C₂×ℤⁿ)=n, vcd(⊕ℕ C₂)=∞. For C₂×ℤ, mod-2 cohomology persists in all positive degrees despite vcd=1. | Virtual and ordinary dimensions remain distinct. |
| 5.1–5.2 | gd(1)=0, gd(F_r)=1 for r>0; T² has cellular ranks (1,2,1), giving Euler 0. | Dimension, finite skeleton and finite total cell count are distinguished. |
| 6.1–6.2 | For ℤ, cap with [t] sends x to x(t); replacing the fundamental class by twice it gives multiplication by 2 over ℤ, not an isomorphism. For F₂, δ(at)=((s−1)at,(t−1)at)=δ(a)t; wrong-side multiplication introduces ts instead of st. | Fundamental class and right regular action are determined by the stated laws. |
| 6.5 | For dℤ⊆ℤ, inclusion on H₁ multiplies by d; transfer sends the base generator to the subgroup generator. Their composite is multiplication by d. | Transfer and dualizing-module restriction conventions agree. |
| 7.3,7.5 | (ℤS₃)² has integral rank 12 and rational free rank 2. Hom_{ℤΓ}(ℤΓ,K_λ) has dimension 1 for Γ=ℤ, for every λ. Replacing the projective source by trivial ℤ gives dimension 0 for λ≠1, against the claimed rank 1. | Swan and projective Hom formulas retain projectivity and the correct rank. |
| 8.1–8.3 | Infinite-free contractible disk has zero homology and finite replacement 0. Regular ℤC₂ in degree 0 has underlying Euler 2 and coinvariant Euler 1; nonprojective trivial ℤ would give 1≠2·1. For C₂, χ_ℚ=1, χ=1/2, and χ̃ is undefined; for ℚ, χ_ℚ=1−1=0 despite failure of FP₁. | Finite chain rank, finite homology, and the three Euler domains are not conflated. |
| 8.5 | For ℤ with character λ≠1, H⁰=H¹=0; for λ=1 their dimensions are 1,1. Both Euler sums are 0. F₂ has 1−2=−1. | Twist independence holds on the stated integral-FP domain. |
| 9.3 | C₂ regular coefficients give zero complete cohomology; trivial coefficients give (0,ℤ/2,0,ℤ/2) in degrees (−1,0,1,2). Torsion-free finite-cd ℤ gives zero in all degrees. | Projective-coefficient vanishing and the norm splice are consistent. |

### Seeded source verification

All eleven cited works retain their existing manifest keys. Six source texts were readable in the supplied legal cache. BrownGTM87, Farrell1977, EilenbergGanea1957, Wall1961 and Serre1971Prospects are settled uncertified; none was requested again. No new work or duplicate manifest key was needed. No author-marked unverified locator was found beyond those settled source-access limitations.

The table distinguishes a text supporting the stated result from a source supporting one part of an independently supplied route. In particular, an integral theorem was not treated as automatically certifying an arbitrary-ring extension.

| Seeded target | Locator checked | Verification and limits |
|---|---|---|
| 1.6 Subgroups of finite index | BrownGTM87 §VIII.5, settled uncertified | Exact book text and printed page not certified. The finite-free restriction and pseudocoherence route was checked against the native scalar-restriction API and the examples above. |
| 2.1 Definitions and characterizations | Serre1971Bourbaki lines 40–42, p.337; Brown1974 lines 345–348, p.236; BieriEckmann1973 line 155, p.106 | Integral dimension/vanishing conventions agree. The arbitrary-R Ext/Tor formulation and least-bound zero-ring convention are the design's explicit construction. |
| 2.3 Subgroups | BieriEckmann1973 Proposition 2.1, lines 280–286, p.109; line 396, p.112 | Finite-cd free-coefficient detection and the finite-index argument checked. BrownGTM87 §III.10 remains unread; the unit-index step is independently backed by pinned restriction/corestriction. |
| 3.1 Signed tensor induction | Brown1974 lines 643–651, p.244; BrownGTM87 §VIII.3 and Serre1971Prospects n°1.7 unread | Brown's readable passage constructs multiplicative induction of semisimplicial objects; it does not itself certify the detailed signed chain algebra. The latter's differential, action, homotopy qualification and repaired contraction were checked directly. |
| 4.4 Virtual finiteness types and finite homological type | Brown1974 lines 359–384, p.237, definition and Proposition 1 | Finite vcd plus finite generation of homology of torsion-free finite-index subgroups, and the finite-coefficient consequence. Uniform finite cohomological dimension is kept separate from finite homology. |
| 5.4 Proper actions | Brown1974 lemma, lines 637–651, p.244, proof continuing through p.245 | Finite-dimensional acyclic action, finite isotropy and multiplicative construction. The CW-to-simplicial dimension bound is expressly a supplier gap, not a theorem falsely attributed to the current supplier. |
| 6.6 Closed aspherical manifolds | Serre1971Bourbaki lines 63–67, p.338; BieriEckmann1974 §3.2, lines 271–281, pp.80–81 | Serre's passage supplies the locally symmetric compact example; Bieri–Eckmann discusses Poincaré K(G,1)'s. The full smooth-manifold statement is supported by the separately named finite-CW and twisted-duality contracts, with T2Space explicit. |
| 7.1 Hattori–Stallings rank | BrownGTM87 §IX.2, settled uncertified | Source text not certified. Generic Hattori–Stallings trace belongs to EtaleCohomologyFoundations §F.10.3; conjugacy-class specialization was checked by regular and idempotent modules. R01 concerns a boundary assertion, not this definition. |
| 7.2 Characters | BrownGTM87 §IX.2, settled uncertified | No source-text certification. Native projective trace and the S₃, product-ring and C₃ calculations verify the stated trace/rank convention independently. |
| 7.4 Swan modulo p | Brown1974 Appendix A, lines 1311–1320, p.261, proof of Theorem 7 | The printed refinement uses localization ℤ_(p). The roadmap's ℤ_p statement has its own explicit route through the pinned Swan theorem, then reduction to 𝔽_p; localization and completion are not silently identified. |
| 8.4 Finite index and homological type | Brown1974 Theorem 3, lines 388–424, pp.237–238; Serre1971Bourbaki lines 77–86, p.339 | Definition by a torsion-free finite-index subgroup, independence, and index multiplicativity. Normal cores and intersections supply comparisons; arbitrary subgroups are not silently assumed normal. |
| 8.6 Extensions | Brown1974 Corollary 2, lines 452–463, p.239 | Multiplicativity for extensions with the finite-homological-type hypotheses. The generic spectral Euler identity is imported, not re-owned. |
| 8.7 Actions, amalgams and HNN | Brown1974 lines 464–479, pp.239–240; Proposition 2(i), lines 509–510, p.240; Proposition 4, lines 558–582, p.242 | Equivariant Euler characteristic, finite-index scaling and the acyclic-action formula. The general signed monomial-chain form is the roadmap's extension via orientation characters and finite-index kernels; Serre1971Prospects n°1.8 Proposition 14(b) remains uncertified. |
| 8.9 Denominators | Brown1974 Theorem 5/Corollary 1, lines 600–610, p.243; lines 652–673, pp.244–245 | General finite-homological-type denominator conclusion, finite-subgroup orders and the acyclic-action route. No finite quotient/cocompactness hypothesis was inserted. |
| 9.2 Complete resolutions | Farrell1977 and BrownGTM87 §X.2, settled uncertified | Exact source theorem/page cannot be certified. Total acyclicity, comparison to the ordinary resolution, syzygy splicing and stable comparison were checked against the pinned complete-resolution APIs and explicit periodic complex. |

Further readable passages checked include Brown1975 Theorem 2 and proof, lines 83–101 and 147–182, pp.130–132; BieriEckmann1974 Proposition 1.2, lines 95–137, pp.75–76; BieriEckmann1973's cap and duality criterion, including Theorem 4.5 at lines 612–624, pp.118–119; Brown1974's finite-complex argument at lines 120–185, pp.231–232, and projective Hom theorem at lines 1284–1355, pp.260–261; Floyd1952 Theorems 2.3–2.4 and 4.2/4.4 at lines 110–176 and 292–348, pp.140–141 and 144–146. Floyd's space hypotheses were not silently extended: the design gives the bounded normalized permutation-chain route for its simplicial version.

### Pinned libraries and ownership

The contract hashes agree with the pinned manifest: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`. Searches covered the 89 distinct plan library prerequisites and the README's additional names. Name searches were followed by reading the relevant definitions and signatures; similarly named unrelated declarations were not evidence. Object searches covered finiteness, group dimensions, normalized chains, signed induction, trace, duality, Euler/Smith theory and complete resolutions.

The following are the decisive declarations opened at the pins. Paths beginning Mathlib or TauCeti are relative to the respective pinned library repository.

| Pinned file and line | What was read and what it supplies |
|---|---|
| `Mathlib/RepresentationTheory/Rep/Iso.lean:157`; `Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean:183`, :202; `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:226`, :246 | `Rep.equivalenceModuleMonoidAlgebra`, group (co)homology and its Ext/Tor comparisons. These existing carriers are used, not redeclared here. |
| `Mathlib/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean:58`; `Mathlib/RepresentationTheory/Homological/GroupHomology/Shapiro.lean:65` | `groupCohomology.coindIso` and `groupHomology.indIso` on the actual representation categories. |
| `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:53`; `TauCeti/Data/ENat/LeastBound.lean:39`, :70 | Projective dimension is Ext vanishing and does not include finite generation. `leastENatBound` is the infimum over natural bounds; its monotone-predicate comparison supplies the chosen extended-natural convention. |
| `TauCeti/Algebra/Module/PseudoCoherent/Basic.lean:89`, :133, :205, :320, :375; `TauCeti/Algebra/Module/PseudoCoherent/RestrictScalars.lean:155` | Actual partial finite-free resolutions, degree-zero/one characterizations, all-degree criterion, syzygy induction and scalar restriction. Generic module theory remains with the pin. |
| `TauCeti/Algebra/Module/PseudoCoherent/FiniteProjectiveDimension.lean:69`, :153 | `IsFPD` uses a projective syzygy in a finite-free resolution, not a finite free resolution ending in zero. Its projective-dimension comparison is imported. |
| `Mathlib/AlgebraicTopology/SimplicialSet/Homology/Nondegenerate.lean:43`, :86, :167, :182, :200, :252; `Mathlib/AlgebraicTopology/SimplicialSet/Dimension.lean:32`, :36 | Normalized complex, homotopy comparison, nondegenerate basis, vanishing and map. `HasDimensionLE d` bounds degrees of nondegenerate simplices, not their number. |
| `TauCeti/AlgebraicTopology/EilenbergMacLane/Resolution.lean:57`; `TauCeti/AlgebraicTopology/Cellular/Covering.lean:252` | Aspherical Hausdorff CW cellular resolution and free module on lifted cells. The actual covering, simply connected cover and separation hypotheses were read. |
| `Mathlib/Algebra/Group/Monoid.lean:552`; `Mathlib/GroupTheory/OrderOfElement.lean:911` | `IsMulTorsionFree` has a commuting-power field and is equivalent for groups to absence of nonidentity finite-order elements. |
| `Mathlib/RingTheory/Flat/Basic.lean:114`; `Mathlib/Algebra/Module/Projective.lean:71` | Flatness detects injectivity after tensoring; projectivity is a splitting of a free-module surjection. Neither field asserts finite generation. |
| `Mathlib/Geometry/Manifold/ChartedSpace.lean:141`, :236; `Mathlib/Topology/Homotopy/Lifting.lean:489` | Charted-space data has no Hausdorff axiom; second countability follows under the sigma-compact/model assumptions. Simply connected lifting uses actual local path-connectedness hypotheses. |
| `TauCeti/LinearAlgebra/Trace/Projective.lean:72`, :96, :118, :158; `Mathlib/LinearAlgebra/Trace.lean:75` | Projective trace, cyclicity, comparison when free, and base change. Ordinary trace's finite-basis fallback is not the arbitrary finite-projective trace; R=ℚ×ℚ separates them. |
| `TauCeti/NumberTheory/Padics/GroupAlgebra/Swan.lean:58`; `TauCeti/Algebra/MonoidAlgebra/ProjectiveTrace.lean:67`; `TauCeti/RepresentationTheory/CharacterTable/Determined.lean:59` | Integral p-adic projective modules determined by rationalization, projective-character vanishing at suitable p-singular elements, and characteristic-zero character determination. The actual finite-group/projective/finite-generation hypotheses were read. |
| `TauCeti/RepresentationTheory/Homological/GroupCohomology/Corestriction.lean:165`; `TauCeti/RepresentationTheory/Homological/GroupHomology/Transfer/Basic.lean:121` | Restriction followed by corestriction, and transfer followed by inclusion, equal index times identity. This fixes both directions used in the design. |
| `TauCeti/RepresentationTheory/Tensor/Induction/Basic.lean:74`, :265; `TauCeti/RepresentationTheory/Tensor/Induction/Resolution.lean:1` | Existing representation tensor induction and the smooth characteristic-two resolution construction. Neither is the arbitrary-ring Koszul-signed chain induction of §3.1. |
| `TauCeti/Algebra/Homology/TotallyAcyclic/Abelian.lean:113`, :224; `TauCeti/Algebra/Homology/TotallyAcyclic/Abelian/Extension.lean:63`; `TauCeti/CategoryTheory/Exact/Resolution/Complete/Comparison.lean:458`, :481 | Projective terms, acyclicity and the Hom-to-projectives condition, Gorenstein-projective cycles, splice input, null-homotopy criterion and comparison equivalence. The final equivalence requires an actual cycle isomorphism; stable comparisons use lifting and the preceding factorization criterion. |
| `Mathlib/RepresentationTheory/Homological/TateCohomology/Basic.lean:141`, :146, :233 | Integer-graded Tate functor and positive-degree group-cohomology comparison. The native norm splice is retained. |

No duplicate ownership was found for the new group-specific invariants. The generic objects just listed are citations/contracts, not new targets. No source-following substitute, good-prime restriction, computational algorithm, re-planned roadmap on main, or upward ownership transfer was found.

### Cross-roadmap citations, overlap and supply direction

Read the board package index before resolving package ownership, and used the supplied open-head index, `roadmaps grep` and `roadmaps show` for the open work. The three citation-resolver leads were checked: CohomologyOfGroups §4.6 exists in its board design; BieriEckmann1974 §3.3 and BrownGTM87 §VIII.6 are source citations misclassified as roadmaps. None is a missing supplier.

| Citation | Head, file and resolution |
|---|---|
| CohomologyOfGroups §§1.2,1.4,1.5,2.3,3.1,3.2,3.4–3.6,4.6,5.2,6.1–6.3 | `packages/CohomologyOfGroups/design/README.md`, sections at lines 620,663,687,800,849,900,959,978,1007,1172,1339,1484,1529,1569. Operations and hypotheses read; scope line 74 excludes this roadmap's invariants. The tree sequence splits over the coefficient ring only. Cap product is adjoint to cup without an added sign. |
| SpectralSequencesAndConvergence §§3.4,5.3 | New-roadmap PR #2302, `TauCetiRoadmap/SpectralSequencesAndConvergence/README.md:805` (Euler block at :817), :1340. Generic finite-filtration Euler invariance is owned there, with finite support and convergence in every total degree. The classical/native page shift preserves total degree p+q. |
| SchemeKTheoryOperations §6.7 | PR #1229, `TauCetiRoadmap/SchemeKTheoryOperations/README.md:2582`. Directed-union homology with arbitrary commutative coefficients is present. |
| FreeGroupsAndLimitGroups §§4.5,4.7–4.9 | Main `TauCetiRoadmap/FreeGroupsAndLimitGroups/README.md:863`, :906, :937, :950. Amalgam/HNN descriptions, Bass–Serre trees and finite-subgroup fixed points. The HNN conjugation convention agrees. |
| EtaleCohomologyFoundations §F.10.3 | Main `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:1295`, trace block at :1322. Owns general Hattori–Stallings trace; this design owns its conjugacy-class group-ring specialization and consequences. |
| ClassifyingSpaces Stage 2 item 10; Stage 4 items 16–17 | Main `TauCetiRoadmap/ClassifyingSpaces/README.md:173`, :224, :238. Classifying models, cellular resolutions and twisted comparison. Revision PRs #1807/#1808 preserve old-number mappings; their scopes and mappings were read. No open-revision numbering is needed here. |
| AlgebraicTopology §§4.7,6.3–6.4,8.1,8.3,8.5,8.7,8.11a | Main `TauCetiRoadmap/AlgebraicTopology/README.md:1739`, :2491, :2873, :3219, :3334, :3413, :3618, :3971. Realization, orientation/twisted duality, connectivity, Hurewicz, Whitehead, finite CW type and simplicial replacement. Ordinary Whitehead appears at :3455 despite the broader heading. Revision PRs #1807/#1808 were read for scope and overlap. |
| ProfiniteCohomology Layer 11 | Main `TauCetiRoadmap/ProfiniteCohomology/README.md:2954`. Continuous torsion-coefficient dimension is distinct from discrete cd and hd. |
| ArithmeticKTheory §3.2; BianchiModularForms §9.3 | PR #1418, `TauCetiRoadmap/ArithmeticKTheory/README.md:1164`, Steinberg/orientation arithmetic duality; PR #1719, `TauCetiRoadmap/BianchiModularForms/README.md:2242`, orbifold Euler calculation. These are instance owners, not a second general theory. |
| FuchsianOrbifolds Layer 5 item 6; BordismFormalGroups | Main `TauCetiRoadmap/FuchsianOrbifolds/README.md:742`, signature Euler formula; main `TauCetiRoadmap/BordismFormalGroups/README.md:1442`, continuous completed-group-algebra resolution. Their scopes differ from the general discrete constructions here. |
| Other nearby ownership | PR #323, `TauCetiRoadmap/GorensteinHomologicalAlgebra/README.md:15`, excludes complete group cohomology. PR #1734, `TauCetiRoadmap/SheafTheoreticSmithTheory/README.md:6`, treats étale sheaves. PR #2296, `TauCetiRoadmap/PosetHomotopyAndSubgroupComplexes/README.md:46`, :104, excludes the vcd/Euler group theory. PR #2266, `TauCetiRoadmap/MappingClassGroupsAndCanonicalRepresentations/README.md:33`, owns its surface-group representations and instances. |

The overlap leads show no second copy on main, conflicting open change, dropped cited id or revision-only id consumed without acknowledgement. This was checked against the supplied heads, including the old-number maps in the classifying/topology revisions. The predictive downstream reference to MotivicStructuresInModuliOfCurves TC.1 could not be resolved; it is not a supply edge and is recorded under Not verifiable.

The gap `simplicial-replacement-dimension` occurs with the same slug in plan and README, names AlgebraicTopology §8.11a, and asks that a CW complex of dimension at most N have a homotopy-equivalent abstract simplicial replacement of dimension at most N. The supplier presently supplies replacement but not that bound. This is a precise, minimal, owned contract and not a missing-prerequisite finding. Eventual acceptance would be conditional on it.

The dependency check was run for this candidate, with this output:

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
```

Every Needs line and supplier contract was read. No UPWARD or CYCLE line occurs, no forbidden supplier is used, and absence from the order at design stage is not a defect.

Overlap check: read ClassifyingSpaces and AlgebraicTopology on main and at #1807/#1808, FreeGroupsAndLimitGroups on main, and SpectralSequencesAndConvergencePartII at #2307; classifying models/cellular resolutions belong to ClassifyingSpaces and the native pins, topological replacement/manifold duality to AlgebraicTopology, trees/splittings to FreeGroupsAndLimitGroups, generic spectral constructions to SpectralSequencesAndConvergencePartII and generic convergence/Euler invariance to its base roadmap. The results/heading closest-roadmap list is empty; no shared object has two owners here.

### Shape, headline coverage and source independence

The main-roadmap shapes of ClassifyingSpaces, AlgebraicTopology and FreeGroupsAndLimitGroups were read. This README has the required summary, ownership, conventions, exact supplier contracts, build explanation, nine mathematical layers with Examples and Dependencies, downstream consumers and references. All twelve definition targets have an API and at least three Checks; construction §3.1 also has three Checks. Plan identifiers describe future design data; the README does not claim an absent Lean declaration implements those identifiers. No process residue, machine path, HTML anchor, executable algorithm or route-specific scope restriction was found in the roadmap text.

The summary's nine numbered headlines are §1.5 finiteness criteria; §3.2 Serre's finite-index theorem; §5.3 Eilenberg–Ganea; §6.3 the duality criterion; §8.4 finite-index Euler characteristic; §8.6 extension multiplicativity; §8.7 equivariant Euler formulas; §8.9 denominators; and §9.4 Farrell comparison. It also describes signed induction, finite-index stability, Swan's theorem and the finite-group Tate comparison, all present in their layers.

This is the design lane. There is no `Suggested.lean` in the package: zero sorried declarations to probe, no import header, data bodies, options, Lean docstrings or retained section-variable signatures to inspect. Headline statability/coverage in that future acceptance test has not passed by implication. Elaboration, one-tactic probes and mechanical `#check @name`: **not available (this lane does not elaborate)**. No Lean command was run and no passing build or warning count is claimed. At package stage each headline must be stated using native carriers and simple real definitions or individually explained as not statable; no substitute or padding is authorized by this review.

Wording comparisons covered 20 passages in §§1.1,1.2,1.5,2.1,2.3,3.1,4.4,5.4,6.1,6.3,6.4,6.6,7.4,7.5,8.1,8.4,8.6,8.7,8.8,8.9 against the six readable sources. This includes more than five further nonsampled definition/proof/API passages from different sections. No reproduced extended sentence, clause-by-clause translation, source table, figure or exercise list was found. Shared formulas, short mathematical statements and standard names were not treated as copied expression. There is no Lean declaration to compare for adaptation from an external formalization.

Counting source-key citation occurrences before References gives 129: Brown1974 35, BieriEckmann1973 28, BrownGTM87 22, BieriEckmann1974 13, Brown1975 8, Serre1971Bourbaki 7, Serre1971Prospects 6, Farrell1977 5, Floyd1952 3, EilenbergGanea1957 1, Wall1961 1. Brown1974 has the largest share. Its contents at lines 36–57 run from projective complexes and semisimplicial actions through finiteness, Euler invariants, finite subgroups, p-fractional parts and applications, followed by appendices. The roadmap places its §3 material in Layer 4, the §6 action construction in §5.4, Appendix A in Layer 7, and §1/§4/§5/§2/§6 material across Layer 8. It does not reproduce the arithmetic-application or subgroup-poset chapters.

The dependency lines explain the mathematical order: finiteness/dimension feed Serre and virtual dimension; the dimension-preserving action and bounded Smith theory feed denominators; projective ranks feed Euler formulas; duality branches from dimension and cap products; complete resolutions branch from finite-index/projective theory. This is not a one-to-one run of the principal source's contents. BrownGTM87's text and full contents remain unavailable, so no corresponding independence certification against that book is claimed.

Source independence: 20 passages compared with 6 sources; no copied expression or reused source artifacts found. Largest share Brown1974, 35 of 129 source-key citation occurrences; contents compared with Brown1974: independent. BrownGTM87 text and contents, and the other four settled uncertified texts, were not available for direct comparison.

## Not verifiable

- BrownGTM87, Farrell1977, EilenbergGanea1957, Wall1961 and Serre1971Prospects remain settled uncertified. Their exact printed locators, wording and full proofs were not read. Secondary attestations and independent computations are distinguished above from primary-source certification; no settled request was reopened.
- Brown1975 line 85 incompletely renders the first clause of Theorem 2 in OCR. Neighbouring clauses and proof, together with BieriEckmann1974's module criterion, were read; missing characters were not guessed.
- No `Suggested.lean` exists and this lane does not elaborate. No one-tactic probe, binder extraction, warning check or successful Lean build is claimed.
- MotivicStructuresInModuliOfCurves TC.1 is a predictive downstream citation without a matching readable head in the supplied list or folder on main. Its ownership cannot be verified here; it is not used as a prerequisite.

## Source issues

- **Misprint** in BieriEckmann1974 at Theorem 3.4 proof, printed p.82 (line 334): the source says the duality conclusion uses the 1973 paper's Theorem 4.6; it should be Theorem 4.5, the concentration and torsion-freeness criterion; affects the proof.
- **Misprint** in BieriEckmann1974 at the remark after Theorem 3.4, printed p.82 (line 337): the source says Theorem 4.3 in contrasting the preceding criterion with the naturality criterion; it should be Theorem 3.4; affects nothing.

Both numbering slips were checked against the surrounding text and BieriEckmann1973 lines 612–624: Theorem 4.5 is the duality criterion; Theorem 4.6 is finite generation. No new source error was identified.

## For the human reviewers

- BrownGTM87 has 22 citation occurrences before References, but its text and contents were unavailable. Wording and arrangement against that book were not tested; its source-manifest status is settled uncertified.
- Farrell1977, EilenbergGanea1957, Wall1961 and Serre1971Prospects are settled uncertified. Their primary numbering and wording could not be certified; no new access or licence request is being made to the author.

<!-- tauceti-roadmap-review {"agent": "codex", "head": "f24e0d1755fbd4285b294b01dd3bb259383b2ecf", "job": "REV-DESIGN-FinitenessAndDualityOfGroups~4", "model": "gpt-6-astra", "worker": "chris-9"} -->
