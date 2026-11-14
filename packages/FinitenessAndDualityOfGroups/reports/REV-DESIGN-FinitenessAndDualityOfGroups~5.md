<!-- from CBirkbeck, https://github.com/TauCetiProject/TauCetiRoadmapJobs/pull/15109#issuecomment-6879613267 -->
Review (codex) of d567d3b

Verdict: needs_changes

**For the human reviewers:** this review raises 2 questions that a human decides (the scope of the roadmap, or a licence). They are in the section of that name at the end and do not change the verdict.

1. **F01** (P3) Give the negative finiteness controls nonzero coefficients

   **Location.** `packages/FinitenessAndDualityOfGroups/design/README.md:595`: “its abelianization is free of infinite rank and it is not of type `FP_1`”; also the lamplighter control at line 681 and `packages/FinitenessAndDualityOfGroups/design/plan.json:197` and line 307.

   **Claim.** The normal closure in the free group, and the base subgroup of the lamplighter group, fail `FP_1` without a coefficient qualification. The latter failure is explicit in the plan; the README uses it to distinguish the converse.

   **Witness.** Set `R = 0`. Every group ring and trivial module is zero; the zero resolution proves `FL`, hence `FP_1`, for both subgroups and both ambient groups. Infinite generation does not imply failure of `FP_1` here.

   **Exact repair.** In both copies of the normal-closure Check, say “over every nonzero `R`, it is not of type `FP_1`”. In both lamplighter controls say that the ambient group is `FP_1` and the base is not `FP_1` **over nonzero `R`**. Add: “Over the zero ring both groups are `FL`, so this does not distinguish the converse there.” Retain the general coefficient scope of the extension theorem.

   **Retest.** Over `ℤ`, the normal closure has abelianization `⊕_ℤ ℤ`, and the lamplighter base is `⊕_ℤ ℤ/2`; neither is finitely generated, so both fail `FP_1`. Their ambient groups have two generators and satisfy `FP_1`. Over `0`, all four satisfy `FL`. The repaired controls distinguish exactly these cases. This is a Check correction, not a restriction of a headline theorem.

One P3 Check correction, no blocking findings. R01 must be repaired before acceptance. The declared supplier contract `gap:simplicial-replacement-dimension` remains applicable. This is not a package or Lean-build acceptance. The design and its recorded source entries were left unchanged.

## Verified sound

### Previous findings and the repaired pattern

I read both previous findings and the repair report before the remaining audit. Neither finding was marked not actionable. Both repairs are complete:

| Previous finding | Repaired passage | Recomputed witness | Status |
|---|---|---|---|
| F01, rank versus the identity-class function | `design/README.md:160`: “For `R ≠ 0` and `G ≠ 1` this is not `δ_{[1]}`”; line 163 explicitly allows coincident identity coefficients and the trivial/zero cases. | `C₂/ℚ`: `(1/2,1/2) ≠ (1,0)`; `C₄/𝔽₃`: `(1,1,1,1) ≠ (1,0,0,0)` despite equal first coordinates; `1/ℚ`: `(1)=(1)`; `C₂/0`: `(0,0)=(0,0)`. | Repaired |
| F02, the zero-ring finite-group dichotomy | `design/README.md:875`: “every scalar of the zero ring is a unit, so every finite group is in the unit-order branch”; the plan's `2.7/zero_ring` agrees. | For finite `G`, `cd₀ G=0` and its order is a unit. For infinite `ℤ`, `cd₀ ℤ=0` but finiteness is false. For `C₂` over `ℤ/6`, `H²(C₂,ℤ/6)=ℤ/2`, so `cd=∞`. | Repaired |

Here and below `design/README.md` abbreviates `packages/FinitenessAndDualityOfGroups/design/README.md`. I searched the remaining finiteness, dimension, rank and duality controls for the same nontriviality pattern. R01 records the remaining occurrence. In particular, the zero-ring duality convention is intentional: all the comparison groups are zero, including when the dimension parameter is not unique.

### Coverage, principles and shape

Read all nine layers, all 51 plan targets and their 159 tests. The 12 definition targets each have an API and at least three Checks: counts for 1.2, 2.1, 4.1, 4.4, 5.1, 6.1, 6.4, 7.1, 8.3, 8.4, 9.2, 9.3 are respectively 4, 3, 4, 3, 3, 3, 3, 3, 3, 3, 3, 3. All layers have Examples and Dependencies; individual targets have Needs and source locators. I compared the shape with main's ClassifyingSpaces, AlgebraicTopology and FreeGroupsAndLimitGroups.

The plan develops the general discrete-group theory, including arbitrary commutative coefficient rings where stated. Integral Serre, Euler and abstract Poincaré-duality assertions are identified as integral statements. Signed tensor induction is not replaced by a characteristic-two construction; normalized simplicial chains, arbitrary projective terms in complete resolutions, and the nonfree finite-projective trace are distinguished from the weaker pinned objects. No algorithm, copied source passage, re-planned main roadmap, forbidden supplier, upward dependency, cycle, or process residue was found. There is no Lean file here in which sorry'd data or options could occur.

The previous review's computed rows were used for unchanged families, and their discriminating instances were compared with the current statements. No bare “sound” summary from that review was used as mathematical evidence. The following compact tables include all seeded targets, all named end theorems, the repaired passages and R01; additional rows record the convention and definition tests used across the layers. These are mathematical computations, not claims of Lean execution.

### Adversarial table: sample and end theorems

In these tables, `C_m` denotes the cyclic group of order `m`, `F_r` the free group of rank `r`, and `K` the Klein-bottle group. “Retain” means no change to that statement; it does not certify an unread source locator.

| Statement | Instances and values on the two sides | Result / change |
|---|---|---|
| 1.1, directed-colimit finiteness | `A=k[x₁,x₂,…]`, `M=k`, `N_i=A/(x₁,…,x_i)`: each `Hom_A(k,N_i)=0`, while `colim N_i=k` and `Hom_A(k,k)=k`; comparison `0→k` is injective, not surjective. For `M=0`, both sides of every Ext comparison are `0`. For `M=ℚ` over `ℤ`, `N_i=ℚ/(1/i!)ℤ` has colimit `0`, but the projection classes in `colim Hom(ℚ,N_i)` remain nonzero. | Distinguishes finite generation from finite presentation, and the injective endpoint from an isomorphism. Retain. |
| 1.4 and 1.7 negative controls | Over `ℤ`, `FP₁(F₂)=FP₁(C₂≀ℤ)=true`, but `FP₁(⟨aᵏba⁻ᵏ⟩)=FP₁(⊕_ℤ C₂)=false`. Over `0`, all four values are `true` and all four groups are `FL`. | R01. |
| 1.5, finiteness criterion | For the increasing finitely generated subgroups of `ℚ`, permutation modules have colimit `R`; invariants at every proper infinite-index stage are `0`, while invariants of the colimit are `R`. Thus the degree-zero comparison is `0→R`: injective but not surjective for nonzero `R`. Over `0` it is `0→0`. | The `n=0` endpoint passes; the `n=1` criterion rejects this non-finitely-generated group. Retain. |
| 1.7, extensions and products | The product resolution for `ℤ²` has ranks `(1,2,1)` and length `2`; hence `FL=true` over every `R`. For `C₂×ℤ` over `ℤ`, `FP∞=true` while `cd=∞` and `FP=false`. Over `0`, both groups are `FL`. | Finite-stage, infinite-stage and bounded-projective assertions are distinct. Retain theorem. |
| 3.2, Serre finite-index theorem | `ℤ²≤K` has index `2`, and both cohomological dimensions are `2`. In contrast, `ℤ≤C₂×ℤ` has index `2`, dimensions `1` and `∞`; the ambient torsion-free hypothesis fails. `1≤1` gives `0=0`. | Hypothesis discriminates; retain. |
| 4.2, virtual dimension under subgroups/extensions | `C₂≤C₂×ℤ` gives `vcd 0≤1`; its index-two subgroup `ℤ` gives `1=1`. The extension by `C₂` gives `1≤0+1=1`; the Klein-bottle extension gives `2≤1+1=2`. | Retain; finite-index equality uses Serre, not ordinary finite-index equality for torsion groups. |
| 5.2, geometric versus cohomological dimension | A point gives `cd_R 1=0≤gd 1=0`. The torus gives `cd_R ℤ²=2≤2` for nonzero `R`, and `cd₀ ℤ²=0≤2`. Finite nontrivial `C₂` over `ℤ` gives `∞≤∞`. Its finite bar skeleta give `FP_n` for every finite `n`, without a finite-dimensional classifying space. | Retain. |
| 5.3, Eilenberg–Ganea bound | `G=1,ℤ²,ℤ³`: geometric dimensions `0,2,3` are bounded by `max(3,cd)=3,3,3`; finite nontrivial `C₂` gives `∞=max(3,∞)`. | The statement does not resolve the exceptional `cd=2` question. Retain. |
| 5.4, proper acyclic action | For finite `G`, take the index-`|G|` subgroup `1`: `W=point`, coinduced `Z=point`, dimension `0≤3|G|`, stabilizer order `|G|`. For `C₂×ℤ`, the coinduced pair of lines has dimension `2≤6`; finite stabilizers have orders `1` or `2`. A fixed point for the subgroup generated by the swap followed by translation would require `a=b+1` and `b=a+1`, hence `0=2` in `ℝ`. | The construction allows finite stabilizers but excludes infinite stabilizers. Retain, conditional on the dimension gap. |
| 6.1, duality definition | For `ℤ`, cap with `[t]` sends a class `x` to `x(t)`; replacing the class by `2[t]` multiplies this map by `2` over `ℤ`, not an isomorphism. For `C₂/ℚ`, trivial coefficients give `ℚ→ℚ` equal to the identity; sign coefficients give `0→0`. Over `0`, every comparison is `0→0` for every allowed dimension parameter. | Fundamental class is substantive; zero-ring convention consistent. Retain. |
| 6.3, duality criterion | For `ℤⁿ`, regular-coefficient cohomology is `R` in degree `n` and `0` elsewhere, with flat top module; for nonzero `R`, `cd=n`. For `ℤ*ℤ²`, `cd=2` but `H¹(G,ℤG)` contains a nonzero copy of `ℤG`, so concentration fails. For `C₂/ℤ`, regular-coefficient positive cohomology vanishes but `cd=∞` and `FP=false`. For `R=0`, both sides hold in the stated convention. | Finite cohomological dimension and finiteness cannot be dropped. Retain. |
| 6.4, Poincaré duality | `K` has orientation values `(1,−1)` on the standard generators and `H²(K,ℤ)=ℤ/2`; an incorrectly untwisted duality would give `ℤ`. `F₁` is `PD₁`, whereas `F₂` has a dualizing module of infinite rank over a field. `C₂` is `PD₀` over `ℚ`, not over `ℤ`; zero coefficients give zero comparison modules. | Orientation and rank-one condition discriminate. Retain. |
| 7.1, Hattori–Stallings rank | Free `RG` has rank function `δ_[1]`; restriction to the trivial group has rank `|G|`. For the trivial projective over `ℚS₃`, the rank values on identity/transpositions/3-cycles are `(1/6,1/2,1/3)`, versus the free rank `(1,0,0)`. For `C₄/𝔽₃`, the trivial-projective values are `(1,1,1,1)`. | Full conjugacy-class function is required. Repaired F01 retained. |
| 7.2, projective characters | For the character `g↦ω` of `C₃`, the idempotent gives the class coordinate at `g⁻¹` equal to `ω/3`; multiplying by the centralizer order gives `ω`, not `ω⁻¹`. For the trivial `S₃` representation, `(6,2,3)·(1/6,1/2,1/3)=(1,1,1)`. For `R=ℚ×ℚ`, `P=(1,0)R`, the projective identity trace is `(1,0)`, whereas Mathlib's finite-basis trace is `0`. | Inverse convention and projective trace both necessary. Retain. |
| 8.2, projective complexes with finite-group action | `C=ℤS₃` in degree zero: `χ=6=6·1`, and nonidentity Lefschetz numbers are `0`. A trivial `ℤ` in degree zero has `χ=1`, not divisible by `6`, but is not projective. An infinite-free contractible disk has homology `0`, Euler value `0=|G|·0`, despite infinite-rank terms. | Boundedness, projectivity and finite homology have distinct roles. Retain. |
| 8.4, finite-index Euler characteristic | `G=C₂`, `N=1`: rational homological Euler value of `G` is `1`, group Euler value `1/2`, and `χ(N)=1=2·(1/2)`. For `C₄*_{C₂}C₆`, `χ=1/4+1/6−1/2=−1/12`; its index-12 free kernel has rank `2` and Euler value `−1=12·(−1/12)`. | Distinguishes rational homological Euler value from group Euler characteristic. Retain. |
| 8.6, extensions | For `F₂×F₃`, total homology dimensions are `(1,5,6)`, so `χ=1−5+6=2=(1−2)(1−3)`. For `K`, `χ=0=0·0`. For `C₂×ℤ`, `χ=0=(1/2)·0`. The identity extension has factor `χ(1)=1`. | Retain, with stated virtual finiteness hypotheses. |
| 8.7, equivariant Euler formula | On the Bass–Serre tree of `C₄*_{C₂}C₆`, vertex contribution `1/4+1/6`, edge contribution `−1/2`, result `−1/12`; reversing the edge sign gives `11/12`. A rose with `r` loops gives `1−r`; one-loop HNN with trivial groups gives `0=χ(ℤ)`. | Stabilizer weights and alternating sign discriminate. Retain. |
| 8.9, denominator theorem | For `C₄*_{C₂}C₆`, finite-subgroup orders divide `lcm(4,6)=12`, and `12χ=−1`; replacing the lcm by the largest displayed order gives `6χ=−1/2`. For `C₂*C₃`, `6χ=6(−1/6)=−1`; for torsion-free groups the multiplier is `1`. | Retain the lcm, not a maximum or a restricted-prime statement. |
| 9.3, Farrell cohomology | For `C₂` with trivial `ℤ` coefficients, complete differentials alternate `0,2`; degrees `−1,0,1,2` give `0,ℤ/2,0,ℤ/2`. For regular `ℤC₂` coefficients all values are `0`. For `ℤ`, finite cohomological dimension gives complete cohomology `0` in every degree. | Correct Tate normalization and total acyclicity. Retain. |
| 9.4, ordinary comparison and vanishing | At the endpoint for `C₂`, ordinary `H⁰=ℤ` maps onto complete `Ĥ⁰=ℤ/2`, kernel `2ℤ`; it is not an isomorphism. For `C₂×ℤ`, ordinary and complete groups above `vcd=1` are `ℤ/2`. In the amalgam example, `ker(ℤ/4⊕ℤ/6→ℤ/2)` has order `12` and element `(1,1)` of order `12`, giving even complete groups `ℤ/12`, odd groups `0`. | Strict inequality above virtual dimension is necessary. Retain. |

### Additional convention, definition and API controls

| Targets | Computed values / exclusion of a wrong model | Result |
|---|---|---|
| 1.2, 1.3, 1.6, 1.8 | The trivial `ℚC₂` module has projective dimension `0` and `FP=true`; a finite free resolution would require `1=2Σ(−1)^i r_i`, impossible, so `FL=false`. Over `0`, `FL=true`. For `ℤ`, free ranks `(1,1)` give `FL=true`. A free group on infinitely many generators has `cd=1` but fails `FP₁` over nonzero coefficients. | Bounded projective, bounded free and degreewise finite conditions remain distinct; finite-index transfer is not asserted for `FL`. |
| 2.1–2.4, 2.6–2.8 | `cd_R 1=hd_R 1=0`; `cd_ℤ ℤⁿ=hd_ℤ ℤⁿ=n`. For finite `C₂`, positive regular-coefficient cohomology is `0` although integral `cd=∞`. Over `ℤ[1/2]`, `cd C₂=0` but `cd C₆=∞`. Over `0`, every dimension is `0`, and there is no largest degree with nonzero regular cohomology. | Finite-dimension/nonzero qualifications and coefficient-unit dichotomy retained. |
| 2.5, directed unions | For `ℚ=colim ℤ`, `hd_ℤ=1` but `cd_ℤ=2`; the degree-two obstruction is nonzero `Ext¹_ℤ(ℚ,ℤ)` modulo the image of the countable degree-one term. A nondirected family of cyclic subgroups of `ℤ²` has dimensions at most `1`, but its union is `ℤ²` of dimension `2`. | No false unconditional cohomological-dimension supremum; directedness is essential. |
| 3.1, Koszul sign and split exactness | In the tensor square of `x↦y`, set `z=x⊗x`, `a=x⊗y`, `b=y⊗x`; `dz=b−a`, `da=db=y⊗y`, swap sends `z` to `−z`. Unsigned swap has defect `2(b−a)`, zero only in characteristic `2`. An underlying contraction is `h(yy)=a`, `h(a)=0`, `h(b)=z`; equivariance would require `h(yy)=k(a+b)` and `2k=1`. | Sign is necessary; underlying splitting does not imply integral equivariant splitting. |
| 4.1, 4.3, 4.4 | Finite groups have `vcd=0`; `C₂×ℤ` has `vcd=1`. `C₂×ℚ` has `vcd=2` but first integral homology contains `ℚ`, so it is not of finite homological type. `C₂×ℤ` has finite homological type. | Virtual dimension alone does not supply homological finiteness. |
| 5.1 and finite-model API | Geometric dimensions of `1,F_r (r>0),ℤⁿ,C₂` are `0,1,n,∞`. A finite-dimensional model and finite skeleta are separate conditions: the infinite rose is dimension `1` with infinitely many one-cells. | Empty/rank-zero and finite-type distinctions retained. |
| 6.2, 6.5 | On a left `RG` resolution, the dual right action satisfies `δ(at)=δ(a)t`; on `F₂` a convention interchanging the order would require `st=ts`. For `dℤ≤ℤ`, homological transfer sends the ambient generator to the subgroup generator, while inclusion sends that generator to `d` times the ambient generator. In `K`, orientation transport along the reversing generator is `−1`. | Right action, transfer direction and orientation retained. |
| 6.6, manifold route | `S²` has fundamental group `1` of cohomological dimension `0`, not `2`, and is not aspherical. `ℤ²` has degree-two duality from the torus. A rank-two free group has first homology `ℤ²`, incompatible with rank-one top duality. | Asphericity, closedness and rank-one orientation are substantive; Hausdorffness explicitly supplied. |
| 7.3–7.5 | `(ℤS₃)²` has integral rank `12`, rational regular multiplicity `2`; `(𝔽_p C_p)²` has dimension `2p=4,6` for `p=2,3`. The trivial integral rank `1` is not divisible by `p` and is not projective over `ℤC_p`. For `ℤ`, maps from the free rank-one group-ring module to any one-dimensional character have dimension `1`; maps from the trivial module to a nontrivial character have dimension `0`. | Swan divisibility and projectivity assumptions discriminate; no good-prime narrowing. |
| 8.1 | An infinite-free contractible disk has zero homology and admits the zero finite replacement. Over `k[x₁,x₂,…]`, the finitely generated module `k` is not finitely presented; finite homology alone does not yield a degreewise finite free resolution over an arbitrary non-Noetherian ring. | The stated Noetherian replacement setting is used. |
| 8.3, 8.5 | For `C₂`, rational homological Euler value is `1`, group Euler characteristic `1/2`, while the integral finite-projective Euler class is unavailable. For `ℚ`, rational homology dimensions `(1,1)` give rational Euler value `0`, despite failure of `FP₁`. For `ℤ` with character `λ≠1`, cohomology dimensions `(0,0)` give Euler value `0`; for `λ=1`, `(1,1)` also gives `0`. | Three Euler notions and coefficient formulas are not conflated. |
| 8.8 and normalized-chain conventions | On a point, normalized ranks are `(1,0,0,…)`, unnormalized ranks `(1,1,1,…)`, with `d₁=0,d₂=id`. Reflection of a circle gives total Betti numbers `2` and `2` for space and fixed set, and Euler identity `0+2=2·1`. A free circle action gives `0+0=2·0`; a point for `C₃` gives `1+2·1=3·1`. The unbounded free `EC₂` has Euler value `1`, so the bounded-dimensional hypothesis cannot be dropped. | Normalization, finiteness and Smith endpoint tests retained. |
| 9.1, 9.2, 9.5 | A regular-module complete complex for a finite cyclic group has kernel/image equal in each degree; applying Hom into a projective still gives zero cohomology. For trivial `ℤ` coefficients of `C₂`, the norm is `2` and augmentation-difference is `0`, giving the Tate values displayed above. The trivial group gives `0` in every complete degree. | Total acyclicity is stronger than ordinary exactness; finite-group comparison agrees with native Tate theory. |

### Seeded source checks

All cited works have a manifest entry; no source was fetched or renamed. The manifest has eleven works, six readable in the supplied legal cache and five settled uncertified. The following distinguishes direct textual support from the author's explicitly stated generalization/proof route. No missing-text request is reopened.

| Seeded target | Locator and text actually read | Outcome |
|---|---|---|
| 1.1 | Brown1975, Theorem 2, pp. 130–131, lines 83–101; Lemma 1(a), p. 131, lines 105–114; corollary, p. 130, lines 78–81. | Partial finite-projective resolutions, Ext comparison range and zero-colimit test supported. OCR damages the start of one clause at line 85; the surrounding statement and induction are readable. Arbitrary rings, not just commutative rings, are allowed. |
| 1.7 | BieriEckmann1974, Proposition 3.3(a), pp. 81–82, lines 298–313. | Integral `FP∞`/`FP` extension statement verified. Arbitrary `R` and finite `n` are the roadmap's extension through 1.5 and Hochschild–Serre, whose endpoints were checked; they are not represented as a verbatim theorem of this source. BrownGTM87 VIII.5 is uncertified. |
| 4.2 | BrownGTM87 VIII.11, as recorded. | Text/page verification unavailable; the intersection and finite-index route and its supplied Serre theorem checked independently. |
| 5.2 | Serre1971Bourbaki §1.2, p. 338, lines 55–58; Brown1975 §3, p. 134, lines 216–231. | Serre's compact-quotient example and Brown's finite-type criteria support the cited uses. The general CW/coefficient statement comes from the explicitly named cellular-resolution suppliers, not from treating Serre's example as a general theorem. BrownGTM87 VIII.7 remains uncertified. |
| 5.4 | Brown1974 §6 lemma, p. 244, lines 637–651. | Finite virtual dimension, finite-dimensional acyclic semisimplicial action, finite isotropy and acyclic finite-subgroup fixed sets verified. The simplicial-set/normalized-chain formulation has an explicit construction and the declared dimension gap. Serre1971Prospects remains uncertified. |
| 6.1 | BieriEckmann1973 Definition 1.1, p. 105, lines 116–124; Brown1975, p. 133, lines 195–199. | Cap-product definition and integral conventions verified. Arbitrary-ring version is explicit; truncated natural subtraction is guarded by `k≤n`, with separate high-degree vanishing. |
| 6.3 | BieriEckmann1973 Theorem 4.5, pp. 118–119, lines 612–621; Theorem 2.3, p. 110, lines 317–323; preceding propositions, p. 109, lines 280–298. | Integral criterion, dualizing module and torsion-freeness verified. General coefficient flatness is the explicitly stated generalization; finite dimension and `FP` remain hypotheses. |
| 6.4 | BieriEckmann1974 §3.1, p. 80, lines 253–266; Theorem 3.4, p. 82, lines 327–334. | Rank-one orientation formulation and criterion using abstract isomorphisms verified. The latter remains integral and includes all relevant degrees; no naturality is silently inserted into its hypotheses. |
| 7.1 | BrownGTM87 IX.2, as recorded. | Text/page unavailable. Idempotent/conjugacy-class construction checked against the generic trace owner and the computations above. |
| 7.2 | BrownGTM87 IX.2, as recorded. | Text/page unavailable. Independently checked the inverse-class formula by the `C₃` idempotent and `S₃` example, and opened the projective trace declarations. |
| 8.2 | Brown1974 Theorem 1, pp. 231–232, lines 125–172. | Finite group, bounded complex, projective terms and finitely generated homology all present; equivariant Euler divisibility and Lefschetz conclusion supported. The theorem does not require every chain term finitely generated. |
| 8.4 | Brown1974 Theorem 3, pp. 237–238, lines 388–401; definition, p. 238, lines 411–424; Serre1971Bourbaki, p. 339, lines 77–86. | Normal finite-index theorem and extension of Euler characteristic to finite homological type verified. Finite cohomological dimension is retained. Independence for arbitrary finite-index choices uses their common intersection. Wall1961 and Serre1971Prospects remain uncertified. |
| 8.6 | Brown1974 Corollary 2, p. 239, lines 452–463. | Kernel and quotient virtual finiteness, ambient virtual torsion-freeness and product formula supported. The design's spectral-sequence proof has a finite-support Euler supplier. |
| 9.3 | Farrell1977 and BrownGTM87 X.3, as recorded. | Text/page unavailable. Total-acyclic comparison machinery exists at the pin; cyclic, finite-dimension and finite-group normalization tests computed above. |
| 9.4 | Farrell1977 and BrownGTM87 X.3, as recorded. | Text/page unavailable. Strict comparison range and noninjective endpoint independently checked. |

No additional author-marked unverified locator was found outside the settled source limitations. These limitations are recorded below rather than promoted to invented source verification.

### Pinned library and duplication audit

Pins read from the manifest: Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e`; Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`. Searches were by objects as well as identifiers: projective resolutions and pseudocoherence; group dimension and finite type; conjugacy-class trace and projective characters; normalized simplicial chains; duality and orientation; complete resolutions and Farrell cohomology. No second owner of this roadmap's general group-specific theory was identified.

The declaration search covered 98 dotted code identifiers; the two unmatched declaration tokens were the filenames `RestrictScalars.lean` and `TwoOutOfThree.lean`, which exist. This search was followed by opening the substantive supplier definitions and hypotheses, rather than treating name matches as a proof. The following are the principal declarations opened; paths refer to the pinned libraries.

| Native object or claim | File and declaration location | What was checked |
|---|---|---|
| Ordinary cohomology and Ext | `Mathlib/RepresentationTheory/Homological/GroupCohomology/Basic.lean:183`, 202, 210 | `groupCohomology`, `groupCohomologyIsoExt`, resolution computation; no finiteness bundled into the carrier. |
| Homology and Tor | `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:226`, 246, 254 | Native homology, Tor and resolution comparison. |
| Shapiro | `Mathlib/RepresentationTheory/Homological/GroupCohomology/Shapiro.lean:58`; `Mathlib/RepresentationTheory/Homological/GroupHomology/Shapiro.lean:65` | Cohomological coinduction and homological induction directions. |
| Cyclic and Tate calculations | `Mathlib/RepresentationTheory/Homological/GroupCohomology/FiniteCyclic.lean:80`; `Mathlib/RepresentationTheory/Homological/TateCohomology/Basic.lean:64`, 98, 146, 233 | Nonzero-even guard; norm, complete complex and positive comparison. |
| Projective dimension | `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:53` | Ext-vanishing bound does not assert finite generation. |
| Pseudocoherence | `TauCeti/Algebra/Module/PseudoCoherent/Basic.lean:89`; `RestrictScalars.lean:155` in that directory | Degree-zero finite generation, degree-one finite presentation, scalar restriction hypotheses, arbitrary rings. |
| Finite projective dimension plus finiteness | `TauCeti/Algebra/Module/PseudoCoherent/FiniteProjectiveDimension.lean:69`, 153 | `IsFPD` has a potentially unbounded finite-free resolution with projective syzygy, not a bounded free resolution. |
| Totally acyclic projectives | `TauCeti/Algebra/Homology/TotallyAcyclic/Abelian.lean:113`, 224; `Abelian/Ext.lean:93`; `Abelian/Frobenius.lean:195` | Projective terms, acyclicity, null-homotopy of maps into projectives; no finite-generation restriction. The finitely generated variant is deliberately not imported as a substitute. |
| Complete comparison | `TauCeti/CategoryTheory/Exact/Resolution/Complete/Comparison.lean:182`, 458, 481 | Lifting, factorization/null-homotopy criterion, and homotopy equivalence from a cycle isomorphism. |
| Cellular resolution | `TauCeti/AlgebraicTopology/EilenbergMacLane/Resolution.lean:57` | Explicit same-universe data, Hausdorff CW base, simply connected cover, commutative coefficient ring. |
| Normalized chains | `Mathlib/AlgebraicTopology/SimplicialSet/Homology/Nondegenerate.lean:43`, 86, 167, 182, 200, 252 | Actual normalized carrier, comparison, nondegenerate basis, dimension vanishing and functoriality. Unnormalized chains do not satisfy the degree bound. |
| Products of simplicial sets | `Mathlib/AlgebraicTopology/SimplicialSet/FiniteProd.lean:66`; `TauCeti/AlgebraicTopology/SimplicialSet/EilenbergZilber.lean:761` | Sum-of-dimensions bound and chain homotopy equivalence for products. |
| Trace distinction | `Mathlib/LinearAlgebra/Trace.lean:75`; `TauCeti/LinearAlgebra/Trace/Projective.lean:72`, 96, 118, 158 | Mathlib uses `0` without a finite basis. Projective trace uses finite projectivity and contracts the dual tensor; cyclicity, free comparison and base change are supplied. |
| Projective finite-group inputs | `TauCeti/Algebra/MonoidAlgebra/ProjectiveTrace.lean:67`; `TauCeti/NumberTheory/Padics/GroupAlgebra/Swan.lean:58`; `TauCeti/RepresentationTheory/CharacterTable/Determined.lean:59` | Local-ring nonunit prime, finite group, finite projectivity; the pinned Swan is specifically over `ℤ_p`; character determination uses characteristic zero and finite-dimensional representations. General rational/modular group statements are not falsely attributed to this narrower Swan declaration. |
| Universal covers and manifolds | `TauCeti/AlgebraicTopology/UniversalCover/Basic.lean:70`; `Covering.lean:58` in that directory; `Mathlib/Topology/Homotopy/Lifting.lean:489`; `Mathlib/Geometry/Manifold/ChartedSpace.lean:141`, 236 | Path-class carrier, local path connectivity and semilocal simple connectivity; covering fibers can be empty outside the based component. Charted spaces do not include Hausdorffness; the roadmap adds it. |
| Tensor induction and transfer | `TauCeti/RepresentationTheory/Tensor/Induction/Basic.lean:74`, 265; `TauCeti/RepresentationTheory/Homological/GroupCohomology/Corestriction.lean:165` | Representation-level wreath/tensor construction is not the signed complex construction; restriction/corestriction composite has the index factor. |

### Ownership, supplier drift and order

I read the board package index before checking absence; searched the supplied open-head index; used `roadmaps show` and `roadmaps grep` for ownership, and checked the overlap and citation leads against the actual texts. Main has no FinitenessAndDualityOfGroups roadmap, so this is not a second copy. There are no reported conflicting heads changing it, dropped cited IDs, dropped IDs used by another roadmap, or IDs requiring an unacknowledged open revision.

The three citation-tool leads are not missing suppliers: BieriEckmann1974 §3.3 and BrownGTM87 VIII.6 are source references, and CohomologyOfGroups is the earlier board design, whose sections were read directly even though `roadmaps show` did not list a main/open copy. Its ownership exclusion at `packages/CohomologyOfGroups/design/README.md:74` explicitly leaves finiteness, dimension, duality, Euler and Farrell theory to this roadmap.

Resolved cross-roadmap contracts, with locations at main or the supplied current head:

| Supplier / related roadmap | Locations opened and resolution |
|---|---|
| CohomologyOfGroups | `packages/CohomologyOfGroups/design/README.md`: §1.2 line 620; §1.4 line 663; §1.5 line 687; §2.3 line 800; §§3.1–3.2 lines 849, 900; §§3.4–3.6 lines 959, 978, 1007; §4.6 line 1172; §5.2 line 1339; §§6.1–6.3 lines 1484, 1529, 1569. Quotient actions, orbit decompositions, hyperhomology, tree sequences, cap/transfer and Hochschild–Serre are present. Tree splitting is only over the coefficient ring; the native-page shift is retained. |
| SpectralSequencesAndConvergence | Current new-roadmap PR #2302, `TauCetiRoadmap/SpectralSequencesAndConvergence/README.md:805` (§3.4) and line 1340 (§5.3). Euler identities require finite page support and convergence in every total degree; filtered-complex Euler signs and classical/native page translation match. |
| SchemeKTheoryOperations | `TauCetiRoadmap/SchemeKTheoryOperations/README.md`, §6.7, directed-union homology block: arbitrary coefficient representation and directed family are present. It owns this generic colimit theorem; the dimension application is new here. |
| FreeGroupsAndLimitGroups | Main `TauCetiRoadmap/FreeGroupsAndLimitGroups/README.md:863`, 906, 937, 950 (§§4.5, 4.7, 4.8, 4.9): one-edge graph groups, Bass–Serre tree, free actions and finite-group fixed vertices. These are imported, not built again. |
| EtaleCohomologyFoundations | Main `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:1295`, generic trace block at 1322 (§F.10.3); open PR #1891 retains F.10.3. It owns the general ring trace. This roadmap owns its group-ring conjugacy-coordinate rank, with left modules treated via the opposite ring. The character calculation specializes that trace rather than defining a second generic trace. |
| ClassifyingSpaces | Main `TauCetiRoadmap/ClassifyingSpaces/README.md:173`, 224, 238 (Stage 2 item 10, Stage 4 items 16–17). Read both revisions #1807 and #1808; their old-numbering maps, at lines 107–159 and 113–162 respectively, preserve these references. No revision-only supplier is needed. Cellular classifying spaces and local-coefficient comparisons remain its objects. |
| AlgebraicTopology | Main `TauCetiRoadmap/AlgebraicTopology/README.md:1739`, 2491, 2873, 3219, 3334, 3413, 3618, 3971 (§§4.7, 6.3, 6.4, 8.1, 8.3, 8.5, 8.7, 8.11a). Read current #1807/#1808 scope and mapping as well. Realization/CW, orientation, manifold duality, skeletal connectivity, Hurewicz, Whitehead, finite CW type and simplicial replacement are supplied. The additional dimension bound is correctly a gap, not silently attributed to main. |
| ProfiniteCohomology / BordismFormalGroups | Main `TauCetiRoadmap/ProfiniteCohomology/README.md:2954` concerns continuous cohomology with discrete primary-torsion modules. Main `TauCetiRoadmap/BordismFormalGroups/README.md:1442` concerns completed-group-algebra complete resolutions for its analytic groups. Neither owns the arbitrary discrete-group Farrell theory here. |
| ArithmeticKTheory / BianchiModularForms / FuchsianOrbifolds | PR #1418, `TauCetiRoadmap/ArithmeticKTheory/README.md:1070`, orientation/duality block at 1164, is the arithmetic Steinberg/orientation instance. PR #1719, `TauCetiRoadmap/BianchiModularForms/README.md:2242`, is its Euler-zero application. Main `TauCetiRoadmap/FuchsianOrbifolds/README.md:742` is orbifold Euler multiplicativity. These specializations do not duplicate ownership of the general group invariants. |

Additional object searches distinguished the scopes of GorensteinHomologicalAlgebra (#323, abstract Gorenstein homological algebra), SheafTheoreticSmithTheory (#1734, étale Smith theory), PosetHomotopyAndSubgroupComplexes (#2296, subgroup-complex homotopy), and MappingClassGroupsAndCanonicalRepresentations (#2266, mapping-class instances). Classical simplicial Smith theory, group-ring finiteness and discrete-group complete cohomology remain owned here. No new supplier edge was inferred from a downstream mention.

Overlap check: read ClassifyingSpaces, AlgebraicTopology, SpectralSequencesAndConvergencePartII and FreeGroupsAndLimitGroups, including the listed open heads #1807, #1808 and #2307; classifying spaces and their cellular comparison belong to ClassifyingSpaces, CW/realization/Hurewicz/Whitehead/manifold duality belong to AlgebraicTopology, Bass–Serre constructions belong to FreeGroupsAndLimitGroups, and convergence infrastructure belongs to SpectralSequencesAndConvergence (not a second plan here). SpectralSequencesAndConvergencePartII owns none of this design's group finiteness, duality or Euler targets. The third closest-roadmap list was empty.

Every Needs line and supplier contract was read. The mechanical dependency check returned:

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The declared gap is precise and minimal: given a CW complex of dimension at most `N`, its abstract-simplicial replacement must also have dimension at most `N`. Main's §8.11a supplies replacement but not this bound; normalized-chain dimension results do not create such a replacement. The slug and supplier agree in `design/plan.json` and `design/README.md:443`. Future acceptance would remain conditional on that named contract, not on an unowned prerequisite.

### Headline coverage and Lean limitations

The summary's nine numbered end targets are 1.5 (finiteness criterion), 3.2 (Serre), 5.3 (Eilenberg–Ganea), 6.3 (duality criterion), 8.4 (finite-index Euler characteristic), 8.6 (extensions), 8.7 (equivariant Euler formula), 8.9 (denominator theorem), and 9.4 (Farrell comparison). Its additional deep promises include signed tensor induction 3.1, finite-index finiteness 1.6, Swan 7.3–7.4, and the finite-group Tate comparison 9.5. All have corresponding targets and exact hypothesis discussions in this design.

This is a design-only submission: no `Suggested.lean` is present. Elaboration: **not available (this lane does not elaborate)**. Consequently there is no claim of passing elaboration or of “sorry the only warning”. There are zero sorried Lean theorems to subject to the one-tactic probe, and no binders on which to run `#check @name`. Package-stage headline statability, module-docstring omissions, one-tactic padding, import form and binder survival remain to be checked against the eventual acceptance file. README code spans were checked for purported declarations: the mathematical names of its new notions are notation, while cited native declarations resolve; it does not present an undeclared Lean acceptance API as already supplied.

### Source expression and arrangement

Compared 20 target passages with readable source text: the ten seeded targets with readable direct or supporting sources in the source table, plus 1.2, 1.4, 2.1, 2.2, 3.1, 3.2, 4.4, 6.2, 7.5 and 8.8. These cover definitions, theorem statements and proof routes, across all six readable sources. No passage reproduces non-forced source expression or follows it clause by clause. Standard mathematical terms, formulas and necessary hypothesis lists were not treated as copying. No source table, exercise list, figure or data was reused.

Counting source-key citation occurrences before References gives 129: Brown1974 35, BieriEckmann1973 28, BrownGTM87 22, BieriEckmann1974 13, Brown1975 8, Serre1971Bourbaki 7, Serre1971Prospects 6, Farrell1977 5, Floyd1952 3, EilenbergGanea1957 1, Wall1961 1. This counts occurrences, including repeated locators, not distinct theorems.

Brown1974 has the largest share. Its contents at lines 36–57 were read: projective complexes, semisimplicial actions, finiteness, Euler characteristic, equivariant Euler characteristic, finite subgroups, prime fractions, group/arithmetic applications, and appendices. The roadmap does not map its layers one-to-one onto that order: source §3 contributes to Layer 4; the §6 action lemma occurs in 5.4; Appendix A contributes to Layer 7; source §§1, 4, 5, 2 and 6 are reorganized within Layer 8. The arithmetic-application sections are not reproduced. Duality and complete cohomology are separate mathematical branches from other sources.

The dependency lines explain the core order: finiteness and dimensions feed signed induction and Serre; Serre makes virtual dimension well-defined; that feeds the acyclic action and denominator theorem; the trace theory supplies Euler calculations. Duality is its own branch, as is complete cohomology. The independent trace layer need not be artificially made dependent on duality to justify placing it before its Euler consumers. BrownGTM87's text and contents were not available, so no expression or contents certification is made for that book.

Source independence: 20 passages compared with 6 sources, no non-forced copied wording found; largest share Brown1974, 35 of 129 citation occurrences; contents compared with Brown1974: independent. BrownGTM87 text and contents were unavailable and remain untested.

## Not verifiable

- BrownGTM87: settled uncertified. Exact book theorem/page assertions, including sampled 4.2, 7.1 and 7.2 and the book's contribution to 9.3–9.4, could not be read; neither its wording nor its contents were compared.
- Farrell1977: settled uncertified. Exact printed statement/page for 9.3–9.4 unavailable. The mathematical endpoint and finite-group examples were checked independently, not substituted for source verification.
- EilenbergGanea1957, Wall1961 and Serre1971Prospects: settled uncertified. The corresponding printed locators were retained without pretending to have opened their texts. No request for these sources was made.
- Brown1975 line 85 has incomplete OCR at the beginning of a clause. The other clauses, adjacent corollary and proof are readable; the damaged words themselves were not certified.
- The downstream reference to MotivicStructuresInModuliOfCurves TC.1 was not resolved in the supplied main/open material. It is a prospective consumer, not an input to any target; no supplier edge or unowned proof step depends on it.
- `Suggested.lean`, elaboration, elaborated binder checks and one-tactic padding tests: unavailable at this design stage, as explained above. No package-level acceptance is asserted.

## Source issues

- **Misprint** in BieriEckmann1974 at Theorem 3.4 proof, printed p. 82 (line 334): the source says the earlier paper's Theorem 4.6 gives the criterion; it should be Theorem 4.5, the duality criterion; affects the proof.
- **Misprint** in BieriEckmann1974 at the remark following Theorem 3.4, printed p. 82 (line 337): the source says Theorem 4.3 has the preceding consequence; it should be Theorem 3.4 of this paper; affects nothing.

## For the human reviewers

- BrownGTM87 has 22 of 129 citation occurrences; its settled uncertified status prevented wording and contents comparison. Brown1974, the largest-share source, was available and both checks were performed.
- Farrell1977, EilenbergGanea1957, Wall1961 and Serre1971Prospects remain settled uncertified sources. This review does not reopen their access decisions or certify their unread printed locators.

<!-- tauceti-roadmap-review {"agent": "codex", "head": "d567d3b402d7135d85798d1341240c15179c72fe", "job": "REV-DESIGN-FinitenessAndDualityOfGroups~5", "model": "gpt-6-astra", "worker": "chris-10"} -->
