# Review of K3BlochGroups (pull request #1430 at b628a17)

**Verdict:** needs changes

## R01 (P2) — Reconcile the supplier-gap record with the locally owned results

**Location:** `TauCetiRoadmap/K3BlochGroups/README.md:23`, :403 and :1980; `packages/K3BlochGroups/design/plan.json:4` and :10. The README says “The normalized positive-characteristic integral K₃-torsion comparison is a consequence proved in §2.2” and assigns real-closed transfer to §5.8.

**Claim:** Previous R01 remains unresolved. Both gap entries still request precisely these locally constructed results from other roadmaps. Neither slug occurs in the README's Exact supplier contracts. The intake-visible plan and the mathematical specification therefore assign two owners to the same work.

**Witness:** `packages/K3BlochGroups/design/plan.json:4–13` still assigns the results to RealAlgebraicGeometry and KTheoryFiniteLocalFields. `TauCetiRoadmap/K3BlochGroups/README.md:403` and :1980 construct them locally; a search for `gap:` in that README returns zero matches.

**Exact repair:** Reconcile the package's gap bookkeeping with the chosen ownership. With the present local constructions, retire the two superseded gap entries and record that §§2.2 and 5.8 discharge those needs. Preserve both complete mathematical targets. If external ownership is retained instead, restore the matching `What <Supplier> must provide (gap:<slug>): ...` contracts and consume those results rather than also planning their construction here. Do not announce requests for work already owned locally.

**Repair controls:** At Ω=𝔽̄₂ and modulus 5 the normalized Bockstein comparison is C₅→C₅, with Frobenius multiplication by 4 on both sides. The sentences asserting roots of x²−2 and x²+1 have truth values true/false in both the real algebraic numbers and ℝ. Either consistent ownership choice preserves these tests; the present problem is the duplicate contract, not a false mathematical statement.

This does not re-open FIX-RT-K3BlochGroups~2 F06's settled missing-input finding. It concerns the later discrepancy between the retained gap entries and the local construction already examined in the previous review. No missing supplier theorem or new source request is being raised.

## Previous findings

- R01 — not repaired: README §§2.2 and 5.8 still construct both results locally, while `packages/K3BlochGroups/design/plan.json` retains both external supplier gaps and the README contains neither matching slug.
- R02 — repaired: README :9, :13, :69, :83, :113, :119, :335, :1574, :1591 and :1731 now cite the actual superperfectness, plus/Q, universal-central-extension fibration and stable-stem sections. Their mathematical inputs and normalization agree.

## Verified sound

This is an AI-assisted incremental re-review of 20 changed lines since 15e2117. All ten replacements are in the README; `Suggested.lean` is byte-for-byte unchanged. I reviewed the repairs and their affected uses, not the entire mathematical development again. The inherited evidence below is explicitly attributed to [r1]. The repository writing and contribution rules were read, with the AlgebraicTopology and completed UniversalCovers roadmaps on main as shape references.

The requested head is b628a1744fda796c65aa9b397fcdf6c08811f2fb. The worktree was clean before review, and the outside-folder diff against origin/main is empty. No pull-request file was edited. The changes introduce no new construction, computational algorithm, copied source passage, Lean declaration, import, sorry-defined data, or option override.

### Gate, elaboration and acceptance signatures

The worker's supplied gate passes, including build. The independently rerun scanner gate also passes all checks:

```text
gate K3BlochGroups: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

`lake build TauCetiRoadmap.K3BlochGroups.Suggested` completed successfully. Independent `lake env lean` elaboration of the requested file and a scratch copy with `#check @name` for every declaration both returned exit 0. Each produced only the eight expected `declaration uses sorry` warnings. The scratch copy was checked against the current file before using its signatures. All 13 declarations retain their required binders: infinite fields and i≤n for GL stability, 2i≤n for symmetric stability, nonzero cyclic modulus and positive j, finite fields with prime characteristic for SL₂, q≥4 for the Bloch-order formula, formal reality, and the identity coefficient morphisms. No signature change was needed.

The eight statable headlines remain integral antisymmetric diagonal exactness (§3.1); infinite-field GL stability (§4.8); cyclic power action and symmetric stability (§4.15); localized and integral finite SL₂ homology (§5.2); finite Bloch order (§5.5); and the formally-real order-six theorem (§5.8). The five supporting definitions have real bodies. The docstring still names the unstatable homological Quillen comparison/Hopf kernel, Milnor injection/motivic edge, Suslin sequence and enhanced Tor, transcendental rigidity, arithmetic and mixed-field comparisons, integral closure torsion, finite Chern comparison and Rogers detector, with their missing carriers. The unchanged one-tactic padding audit and wider carrier search are carried from [r1]; no new declaration requires a new padding probe.

The prescribed dependency command returned:

```text
depcheck: 204 roadmaps, 1496 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The changed Needs/Dependencies references were followed to their actual sections. The citation resolver found no cross-roadmap citation or roadmap Lean name found nowhere. Its explicit limitation about native-library discovery was not treated as evidence about the pins.

### Supplier and ownership checks refreshed for the repairs

The following are actual sections opened through `roadmaps show` at the available heads, with main used for the completed roadmap. Line numbers exclude the tool's provenance header. Object searches used `roadmaps grep` for universal central extensions, the stable cube η³ and the two gap objects, together with the package's plan and repair record. The wider unchanged ownership audit is inherited from [r1].

| Citation resolved | File and line | Content and effect of the repair |
| --- | --- | --- |
| StableHomotopyKTheory §§3.29, 3.31, 3.33 | `TauCetiRoadmap/StableHomotopyKTheory/README.md:1334`, :1373, :1389 | Superperfectness is a prose theorem for a universal central extension of a perfect group. The special fibre sequence is in §3.33; §3.31 supplies the universal-cover comparison. The obsolete declaration names are gone. |
| GeneralAlgebraicKTheory §§3.2, 3.12–3.14 | `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:418`, :615, :645 | Ring Q-theory, split group completion and the normalized ring plus/Q comparison give BGL(R)⁺≃K(R)₀ and all positive K-groups. The added §3.14 is the precise missing locator. |
| HomotopySpheres §9.1 | `TauCetiRoadmap/HomotopySpheres/README.md:2459` | Imports the normalized third stem from StringOrientation S2.3 and compares quaternionic Hopf, EHP and framed-fibre representatives. This is what the replacement contract says. |
| StringOrientation S2.3 | `TauCetiRoadmap/StringOrientation/README.md:580` | Supplies C₂₄ with the quaternionic Hopf normalization, importing its group computation from EllipticCohomology E4.S/E5. K3BlochGroups does not plan another third-stem computation. |
| FourManifolds §7.1 | `TauCetiRoadmap/FourManifolds/README.md:2870`, :2881 | The Lie-framed T³ class is η³=12ν in C₂₄. The replacement of F7.0b preserves precisely the class needed in §4.16. |
| RealAlgebraicGeometry Layer 6 | `Completed/RealAlgebraicGeometry/README.md:437`, :476 | Its CAD quantifier-elimination claim is expressly over ℝ. General real-closed transfer is the additional local target at README :1980, also still requested by the stale gap. |
| KTheoryFiniteLocalFields §6.5a | `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:1360` | Supplies invertible finite-coefficient Bott/descent comparisons, including separably closed fields. The local integral torsion construction at README :403 is distinct from this supplied coefficient theorem, but identical to the outstanding gap request. |

The pins remain Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Three native interfaces were reopened during this round:

| Declaration | File and line at the pin | Verified boundary |
| --- | --- | --- |
| `HSpace` | `Mathlib/Topology/Homotopy/HSpaces.lean:65` | Continuous multiplication and based unit homotopies; no associativity or commutativity field is silently assumed in §1.5. |
| `groupHomology`, `groupHomology.π` | `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:228`, :233 | Homology of the actual inhomogeneous chain complex and its cycle projection; group and coefficient ring share a universe. |
| `TauCeti.antisymmetricTensors` | `TauCeti/LinearAlgebra/TensorProduct/Symmetric.lean:126` | Negative eigenspace of the flip; for ℤ it is 0, while the roadmap's cokernel is C₂. No duplication is introduced by the unchanged acceptance definition. |

### Source sample within the incremental scope

The seeded targets intersecting the repaired contracts were followed through §§1.1, 1.5 and 4.16; previous R01 also requires §2.2 and §5.8. The arithmetic use in §5.7 retains the same quotient normalization. I opened Weibel IV.1 Exercises 1.8–1.12 (chapter pp.14–15; weibel lines 15935–15996), supporting the covering, universal-central-extension fibration, two-connected Steinberg plus space and stable η→[−1] product comparison. I opened Hatcher Examples 4.51–4.52 (printed pp.380–381; hatcher lines 16494–16550), giving the Hopf and unordered-pair generators used by §1.5. Weibel VI.5.16.1–5.17 and its proof (chapter pp.32–33; weibel lines 30300–30353) give the monomial indecomposable quotient, C₁₂ summand and spectral-sequence route. The ordinary Tor interpretation and naturality qualification remain unchanged from [r1]. Marker Theorem 3.5, Corollary 3.6 and Proposition 4.1 (printed pp.24–25; marker lines 398–449) support the general real-closed transfer target, with its previously recorded unbounded-interval proof gap.

The remainder of this round's seeded list is unchanged: §§3.1, 3.7, 3.9, 3.12, 3.15, 3.16, 4.6, 4.14, 5.2 and 5.4. Their computed rows, and the unchanged mathematics of §§2.2 and 5.7, are carried explicitly from [r1] below. This is not a claim to have re-read all those primary locators in this incremental round. No README locator is newly marked unverified.

### Fresh adversarial checks of the changed passages and outstanding finding

Cₙ denotes ℤ/n. Repeated citation changes receive separate rows so every changed line is accounted for. The computations check normalization and boundary cases; they do not replace proofs of the general theorems.

| Statement / changed location in README | Instances | Computed values on both sides / excluded model | Result; change |
| --- | --- | --- | --- |
| :9 UCE-source superperfectness | Trivial extension; central identity C₃→C₃ | Trivial source has H₁=H₂=0. C₃ has H₁=C₃≠0 despite H₂=0, so it is not a universal extension of a perfect group. | Correct prose contract; previous R02 repaired. |
| :13 positive plus/Q groups | R=𝔽₅, n=1; zero ring | Both first groups are 𝔽₅ˣ=C₄; unit 2 maps to 2. Zero ring gives 0=0 in positive degrees. | §3.14 now cited; n≥1 retained. |
| :69 normalized plus/Q contract | Unit 2 over 𝔽₅ | Inverse transpose gives 3; subsequent grouplike inversion gives 2, matching the original unit. Omitting the second step gives 3≠2. | Correct supplied normalization. |
| :83 Steinberg plus fibre and cover | R=ℤ and R=0 | At ℤ: π₂(BSt⁺)=0, π₂(BE⁺)=C₂=π₁(BK₂); at 0 all three are 0. | §3.33 supplies the needed fibre sequence. |
| :113 normalized third stem | ν and −ν in C₂₄ | Coordinates 1 and 23 both have order 24; their twelvefold multiples are both 12. | Hopf comparison retained; no sign ambiguity in η³ quotient. |
| :119 η³ and its quotient | C₂₄ | η³=12≠0, 2·12=0; subgroup {0,12}; quotient has order 12. | FourManifolds §7.1 resolves. |
| :335 Layer 1 comparison dependencies | R=ℤ; Hurewicz quotient | C₄₈/{0,24}=C₂₄, with 1↦1 and 24↦0; treating elementary homology as C₄₈ fails. | Added plus/Q locator preserves §1.5. |
| :1574 monomial stem quotient | F=𝔽₂ | Fˣ=1, π₃=C₂₄; quotient by {0,12} is C₁₂. Setting η³=0 would leave C₂₄. | Both corrected supplier locators give the required value. |
| :1591 monomial Needs line | F=𝔽₄ | C₃⊕C₁₂ has order 36 and exponent 12; C₃₆ has exponent 36. | Revised citations preserve the direct-sum control. |
| :1731 Layer 4 stable-stem dependencies | ν↦−ν | 12·(−1)=12 mod 24; both quotient maps have kernel {0,12} and target C₁₂. | No normalization drift into later layers. |
| :403 positive-characteristic torsion, previous R01 | Ω=𝔽̄₂, m=5 | K₄/5=0; normalized boundary C₅→C₅ sends 1↦1; Frobenius acts by 2²=4 on both sides, versus 2 on untwisted roots. | Mathematics retained; duplicated ownership record remains. |
| :1980 real-closed transfer, previous R01 | Real algebraic numbers, ℝ, ℚ | Root of x²−2: true,true,false. Root of x²+1: false,false,false; over ℂ it is true. Parameter witness x=a+1 gives x−a=1 in each ordered extension. | Full RCF scope retained; duplicated ownership record remains. |
| §5.7 affected arithmetic quotient | ℚ; ℚ(i) | C₄₈/C₂=C₂₄; (ℤ⊕C₂₄)/0=ℤ⊕C₂₄. Every lift 1 or 25 of 1 in C₂₄ has order 48, so the first quotient has no additive section. | Compatible with the repaired Layer 1 contracts. |

### Carried adversarial ledger

The following 138 rows are the computations recorded in [r1], carried forward because their mathematical statements are unchanged. Each row cites that report; historical R01/R02 references in their result cells refer to its findings. This round's disposition is stated above. Together with the 13 fresh rows, this records 151 rows and covers the requested seeded targets, all eight Lean headlines, and the targets touched by the remaining finding.

| Statement or defining law | Instances | Computed values on the two sides / excluded model | Result; change |
| --- | --- | --- | --- |
| 1.1 Steinberg plus and connectivity | A=0,ℤ | A=0: K₃=H₃(1)=0. A=ℤ: π₂(BSt⁺)=0; π₂(BE⁺)=C₂. | Retain; wrong plus space excluded.  [r1] |
| 1.1 covering comparison | A=ℚ | π₁(BSt⁺)=0; π₁(BGL⁺)=ℚˣ, containing −1≠1. | Retain.  [r1] |
| 1.2 canonical composite and inverse | C₅, q=×2, others id | c(1)=3; q(c(1))=6=1; unreversed q gives 2. | Retain.  [r1] |
| 1.2 additivity/naturality | Same C₅ model | c(1+1)=1=3+3; c(0)=0; inverse composite sends 2 to 2. | Retain.  [r1] |
| 1.3 unnormalized differential | Identity entries | d₄[1,1,1,1]=[1,1,1]; d₃[g,1,1]=[1,1]−[g,1]. | Retain; normalized and unnormalized models differ.  [r1] |
| 1.3 noncommutative bar order | S₃, g=(01),h=(12) | gh(2)=0; hg(2)=1. Middle term is −[gh], not −[hg]. | Retain pinned order.  [r1] |
| 1.3 cycle evaluation and witnesses | z=d₄[1,1,1,1] | z≠0 as a free chain; d₃z=0 and ev(z)=0. | Retain; zero class need not be zero chain.  [r1] |
| 1.4 identity/composition | A→A→A, identity | A support coefficient 7 remains 7; every tuple and its boundary are unchanged. A=0 gives class 0 on both routes. | Retain.  [r1] |
| 1.4 filtered stages without injectivity | C₂→1 and trivial coefficient homology | Nonzero H₃(C₂)=C₂ class becomes 0 at the next stage; a later boundary witnesses equality. | Retain; no uniform/injective-stage assumption.  [r1] |
| 1.5 wedge decomposition | 0,1,2,3 sphere summands | Ranks r+r(r−1)/2 are 0,1,3,6; Hopf and unordered-pair coordinates give those same ranks. | Retain.  [r1] |
| 1.5 swap, pinch and fold | Two S² summands | Pair swap has sign (−1)⁴=+1; pinch Hopf coordinates (1,1,1); fold gives η+η+2η=4η. | Retain.  [r1] |
| 1.5 finite-subwedge compatibility | Include first two of three spheres | (a,b,c)↦(a,b,0,c,0,0); restriction returns (a,b,c). | Retain; no extra pair coordinate.  [r1] |
| 1.5 Hopf–Hurewicz kernel | ℤ; characteristic two field | ℤ: C₄₈/⟨24⟩=C₂₄. In characteristic two, [−1]=[1]=0. | Retain.  [r1] |
| 1.5 sphere-unit normalization | η³ in C₂₄ | 12 has order 2; −12=12; quotient order 12. | Retain mathematics; R02 locators.  [r1] |
| 2.1 Milnor image/cokernel | ℚ | Image={0,24} in C₄₈; cokernel C₂₄. Quotient by all torsion would be 0. | Retain.  [r1] |
| 2.1 quotient uniqueness | C₄₈→C₂₄ | 1 and 25 both map to 1; their difference 24 lies in the specified image. | Retain.  [r1] |
| 2.2 signed Chern composite | {t₁,t₂,t₃} over ℚ(t₁,t₂,t₃) | Ordered residues give 1; composite residues give +2; swap first entries gives −2; zero map gives 0. | Retain.  [r1] |
| 2.2 characteristic-p branch | 𝔽₂(t₁,t₂,t₃); Prüfer C₂∞ control | Symbol residues 1 and 2 are unequal in ℤ; in C₂∞, 2·(1/2)=0 despite divisibility. | Retain torsion-freeness input.  [r1] |
| 2.2 motivic edge quotient | ℚ | K₃=C₄₈, Milnor image C₂, H¹(ℚ,ℤ(2))=C₂₄; edge kernel C₂. | Retain.  [r1] |
| 2.2 K₄ divisibility and coefficient boundary | Ω=𝔽̄₂, r=2,5 | K₄=0, so K₄/r=0; mod 5 boundary C₅→C₅ is bijective; mod 2 both positive-degree groups 0. | Retain proof route.  [r1] |
| 2.2 degree-zero exception | Ω=𝔽̄₂ | K₀(;ℤ/2)=C₂; positive-degree defining-characteristic coefficient groups 0. | Retain.  [r1] |
| 2.2 normalized torsion naturality | Ω=𝔽̄₂, m=3,5 | Frobenius multipliers 2²≡1 mod 3 and 4 mod 5; untwisted multipliers 2,2 disagree. | Retain theorem; R01 ownership record.  [r1] |
| 2.3 signature image | r₁=0,1,2 | Image orders 1,2,4; all-negative triple has coordinates (1) or (1,1); sign-isolating symbols give (1,0),(0,1). | Retain.  [r1] |
| 2.4 imaginary quotient | ℚ(i) | r₁=0; Milnor image 0; K₃=K₃ind=ℤ⊕C₂₄. | Retain.  [r1] |
| 2.4 stable-SL quotient | ℚ | H₃(SL∞)=C₂₄ and K₃ind=C₂₄; K₃ itself is C₄₈. | Retain.  [r1] |
| 2.5 rational rank | ℚ and ℚ(i) | Rational dimensions 0 and 1, equal r₂; C₄₈⊗ℚ=C₂₄⊗ℚ=0. | Retain.  [r1] |
| 3.1 tensor cokernel headline | A=0,ℤ,C₃,C₂ | Qₛ=0,C₂,0,C₂; Λ²=0 in all four; kernels equal A/2A=0,C₂,0,C₂. | Retain.  [r1] |
| 3.1 mixed coordinates | A=ℤ² | Qₛ=C₂²⊕ℤ, Λ²=ℤ; diagonal kernel C₂². For (1,1), diagonal is e₁²+e₂². | Retain.  [r1] |
| 3.1 exact diagonal relations | A=C₄, a=1,b=3 or 0 | 1²=3² in Qₛ and 1−3=2·1; 1²≠0² and 1∉2C₄. | Retain both directions.  [r1] |
| 3.1 eigenspace distinction | A=ℤ | Flip-negative subgroup is 0; cokernel is C₂. After tensoring ℚ both are 0. | Retain distinct ownership.  [r1] |
| 3.2 cross-ratio and permutation | (0,∞,1,3) | cr=3; first-two swap gives 1/3; supplier reciprocal is 1/3. | Retain adapter.  [r1] |
| 3.2 deletion faces | (0,∞,1,2,3) | Face values (1/2,3/4,3/2,3,2); alternating sum is R(2,3). | Retain.  [r1] |
| 3.3 admissibility and junk values | (x,y)=(2,3), (1,3),(2,2) | Valid arguments 2,3,3/2,3/4,1/2. x=1 gives a zero denominator/numerator; x=y is excluded, not an added relation. | Retain.  [r1] |
| 3.3 free equality certificate | Coefficients 0 and 1 at R(2,3) | 0 evaluates to the zero chain; coefficient 1 evaluates to the displayed five-term chain, zero only after quotienting. | Retain.  [r1] |
| Raw/quotient symbol definitions | x=0,1 over any field | Raw(0)=0; raw(1) is one free basis vector; quotient symbol(0)=symbol(1)=0. | Retain; real bodies match.  [r1] |
| 3.4 presentation, small fields | 𝔽₂,𝔽₃ | Reduced generator ranks 0,1; no admissible pairs; P=0,ℤ. | Retain.  [r1] |
| 3.4 reduced/unreduced equivalence | 𝔽₃ | Unreduced has [1],[2]; killing [1] leaves ℤ[2], same as reduced. | Retain.  [r1] |
| 3.5 boundary and signs | ℚ, x=3 and 1/3 | (v₂,v₃)-alternating values −1 and +1; reversing tensor order reverses these values. | Retain.  [r1] |
| 3.5 kernel and K₂ cokernel | 𝔽₅ | P=C₆; ∂[3]=1 in C₂; kernel C₃; cokernel 0=K₂(𝔽₅). | Retain.  [r1] |
| 3.6 reflection/inversion | 𝔽₅, generator g=[3] | [2]=2g,[4]=0; c=2g; h(2)=3g; 2h=6g=0; ∂h=1≠0. | Retain h in P, not B.  [r1] |
| 3.6 3c and sixth-root cases | 𝔽₇, g=[3] | [−1]=2g, c=4g; 3c=4g=h(−1), 6c=0; c≠0. | Retain.  [r1] |
| 3.7 finite presentation orders | 𝔽₅,𝔽₇,𝔽₁₁,𝔽₁₃ | Integer relation-lattice indices 6,8,12,14; c orders 3,2,6,1. | Retain.  [r1] |
| 3.8 exterior comparison | 𝔽₅ | Λ²(C₄)=0; exterior kernel is all P=C₆; Suslin B=C₃, index 2. | Retain.  [r1] |
| 3.9 raw full tensor | 𝔽₃ and 𝔽₅ | 𝔽₃: λ:ℤ→C₂, ker=2ℤ. 𝔽₅: R(2,3)=[4], λ[4]=2 mod 4≠0. | Retain.  [r1] |
| 3.9 μ kernel and image | 𝔽₅ | 2[4]≠0 in the free group, λ=0, μ=0; 4[3] maps to 4g, of order 3. | Retain.  [r1] |
| 3.9 rational noninjectivity | ℚ | 4[−1] has free coefficient 4 and infinite order; λ=0 and μ=0. It remains nonzero after tensoring ℚ. | Retain.  [r1] |
| 3.10 obstruction and sixfold lift | 𝔽₃; 𝔽₅, α=2[3] | 𝔽₃: E=L=0, 2ℤ→2ℤ identity. 𝔽₅: σα=α, γ=4[4], λγ=0 and μγ=0=6·2g. | Retain.  [r1] |
| 3.11 generic projective symbols | 𝔽₃ | Quadruple (0,∞,1,2) gives [2]; no 5-tuples; H₃ coinvariants=P=ℤ. | Retain.  [r1] |
| 3.12 local specialization | DVR F[t]_(t) | t↦0, t⁻¹↦∞, 1+t↦1; stalk dimension 1. A field stalk has dimension 0 and is not this closed-point DVR. | Retain.  [r1] |
| 3.12 singular/thickened negative controls | Cusp and square-zero thickening | Cusp cotangent dimension 2 versus ring dimension 1; thickening has ε≠0, ε²=0. Neither native stalk is a DVR. | Retain smoothness.  [r1] |
| 3.12 all-curve quotient | 𝔽₃, rationalized | P⊗ℚ=ℚ; exterior target 0; projective inversion gives 2[2]=0 and therefore kills [2] rationally, so the comparison kernel is ℚ, not torsion. | Retain conditional relation equality.  [r1] |
| 3.13 old relation defect | ℚ, ξ(2,1) | Boundary 2∧(−1) has nonzero value 1 under v₂⊗sign modulo 2; proposed denominator is not contained in the kernel. | Retain intersection repair.  [r1] |
| 3.13 old comparison | 𝔽₁₁ | B=C₆, B_old=C₆; map image C₃, kernel C₂, cokernel C₂. Same orders do not give an isomorphism. | Retain.  [r1] |
| 3.14 negative-unit target | 𝔽₃ and 𝔽₅ | Q₋=C₂ and 0, respectively; ordinary exterior target is 0 in both. | Retain.  [r1] |
| 3.15 projective reduced quotient | 𝔽₂,𝔽₃,𝔽₁₁ | B_new orders 3,1,3 versus Suslin B orders 1,infinite,6. | Retain size hypotheses.  [r1] |
| 3.16 convention maps | 𝔽₁₁, mod 3 and mod 2 | C₆→C₃ induces C₃≅C₃ modulo 3; modulo 2 gives C₂→0. | Retain odd/invert-two qualifications.  [r1] |
| 4.0 finite words and augmentation | Sets of sizes 0,1,2 | Empty augmented degree 0 is ℤ; size 1 differential [x]↦1 gives zero homology; size 2 top cycle (a,b)+(b,a) has boundary 0. | Retain top term.  [r1] |
| 4.0 exactness range | Five letters | Chain ranks 1,5,20,60,120,120; boundary ranks 1,4,16,44,76; top homology rank 44. | Retain finite/infinite distinction.  [r1] |
| 4.1 total differential | Bidegree (1,1) | Cross terms have signs +1 and −1, sum 0; using + in both positions gives 2. | Retain.  [r1] |
| 4.1 hyperhomology identity | Trivial G, complex ℤ in degree 0 | E²₀,₀=ℤ; all other entries 0; abutment H₀=ℤ,Hᵢ>₀=0. | Retain actual module construction.  [r1] |
| 4.2 independent frames | n=1, F=𝔽₂ versus ℚ | 𝔽₂: one nonzero vector, augmented boundary is id ℤ. ℚ: reduced degree-one group consists of finite sums with coefficient sum 0. | Retain indexing.  [r1] |
| 4.3 scalar coinvariants | F=ℚ,V=ℚ,j=1,k=ℚ | Scalar 2 gives (2−1)V=V, so H₀=0; with V=0 all groups 0; at j=0 H₀=ℚ≠0. | Retain j>0; source waiver noted.  [r1] |
| 4.3 affine stabilizer | Upper triangular GL₂(ℚ), M=ℚ | Scalar on first block sends u↦2u; on second sends u↦u/2; differences ×1 and ×(−1/2) are invertible. | Retain either-block hypothesis.  [r1] |
| 4.4 frame coinvariants | F=ℚ | S₀=ℤ; S₁=ℚˣ; the extra S₂ generator is (0,1), not zero in K₂ᴹ⊕ℤ. | Retain.  [r1] |
| 4.5 ordered Milnor symbols | {t₁,t₂} | Successive parameter-last residues give 1; reversed symbol gives −1. Unadjusted inverse comparison changes the sign. | Retain supplier normalization.  [r1] |
| 4.6 splitting | S₂=K₂ᴹ⊕ℤ | (x,7) projects to x and 7; inclusion-sum reconstructs (x,7); (0,1) survives. | Retain simultaneous induction.  [r1] |
| 4.7 monomial subgroup | 𝔽₂ and 𝔽₃, rank 2 | Orders 2 and 2·2²=8; GL₂(𝔽₃) has order (9−1)(9−3)=48. | Retain distinct carrier.  [r1] |
| GL block inclusion definition | n=0,1; g=2 over ℚ | 0×0 unit maps to (1); g maps to diag(2,1), inverse diag(1/2,1), product I₂. | Retain.  [r1] |
| 4.8 GL stability headline | n=i=0; n=1,i=1 | H₀ map ℤ→ℤ sends 1↦1; H₁(ℚˣ)→H₁(GL₂ℚ) is determinant identity. n=0,i=1 would be 0→ℚˣ, not onto. | Retain i≤n.  [r1] |
| 4.10 projective coinvariants | 𝔽₂,𝔽₃ | Degree-three homology 0 and ℤ, equal P; in the latter no degree-four distinct tuples exist. | Retain all-field claim.  [r1] |
| 4.11 matrix faces/determinants | a=2,3 | det(A,B,C)=(−1,−2,2),(−2,−6,3); At=(∞,1,a). a=0 or 1 makes a determinant 0. | Retain.  [r1] |
| 4.11 eight-term chain identity | a=2,3,−1,4 over ℚ | Expanded d(u) minus six claimed terms has zero coefficient on every right-diagonal orbit in all four cases. | Retain.  [r1] |
| 4.11 Shapiro seven-commutator reduction | a=4 over ℚ | Shapiro(uw−u) minus the seven commutators equals exactly the negative boundary of the specified bar 3-chain; remaining coefficient vector 0. | Retain.  [r1] |
| 4.11 differential and shear | a=3, alternating valuation | Raw signed pair (1,−1) maps to (0,−1); inverse shear restores (1,−1). | Retain; raw splitting would be wrong.  [r1] |
| 4.11 determinant-one torus | Ordered pair with wedge value 1 | Raw (2,−2) maps to (0,−2); coefficient +2 would reverse the second entry. | Retain.  [r1] |
| 4.12 infinite-field restriction | 𝔽₄ negative control | H₂(GL₂𝔽₄)=C₂; Λ²𝔽₄ˣ⊕K₂(𝔽₄)=0. | Retain infinite hypothesis.  [r1] |
| 4.13 rotations and norm | Degrees 0,1,4 | N₀=1; N₁=1−t; N₄=1+t+t²+t³+t⁴. At fixed generators these evaluate 1,0,5. | Retain signs.  [r1] |
| 4.13 cone differential | x=0, nonzero y | d(0,y)=(−Ny,−dy); two applications have first component −dNy+Ndy=0. | Retain.  [r1] |
| 4.14 rank-three projection | [3;2] over ℚ | Projection gives [3], boundary valuation −1; swapped first two gives [1/3], value +1. | Retain.  [r1] |
| 4.14 cyclic norm and P sign | All admissible pairs over 5,7,11,13 | Respectively 6/6,20/20,72/72,110/110 sums equal 2c. At 11, 2c has order 3; +2c on P would leave 4c≠0. | Retain −2c.  [r1] |
| 4.15 corrected identity | All x≠0,1,−1 over 5,7,11,13 | Corrected equality: 2/2,4/4,8/8,10/10. Printed formula: 0/2,1/4,2/8,1/10. | Retain correction.  [r1] |
| 4.15 permutation conjugation | P₁₂,P₃₄,P₁₃P₂₄ | det Γ=1; lower-right blocks diag(−1,1),diag(1,−1),swap; lower-left blocks all 0. Upper-right entries match (2,3)=1 and (1,4),(2,4)=1,−1. | Retain, including char 2.  [r1] |
| 4.15 cyclic power-map headline | m=1,2,7; a=2,j=2 | H₃=0,C₂,C₇; multipliers 0,0,4. For m=7,j=1 multiplier is 2, not 4. | Retain positive-degree scope.  [r1] |
| 4.15 different-order inclusion | C₂→C₄ | Odd H map sends 1↦2, order 2; erroneously squaring the index would send 1↦0 in degree three. | Retain.  [r1] |
| 4.15 symmetric stability headline | (n,i)=(0,0),(2,1),(1,1) | First map ℤ≅ℤ; second C₂≅C₂; excluded third map 0→C₂ is not onto. | Retain 2i≤n.  [r1] |
| 4.15 prime contributions | C₅ power 2; C₃ inversion | H₃ multipliers 4 and 1; 4−1=3 is a unit mod 5, so fixed part 0; 3-primary contribution can survive. | Retain.  [r1] |
| 4.16 monomial indecomposables | 𝔽₂,𝔽₄ | π₃ind models C₁₂ and C₃⊕C₁₂; latter has exponent 12 and order 36, not C₃₆. | Retain nonsplit possibility.  [r1] |
| 4.16 bottom unit and η³ | Sphere summand | Stable third stem C₂₄ maps after η³ quotient to C₁₂; element 12 is killed, element 1 survives. | Retain; R02 locators.  [r1] |
| 4.17 doubling | μ=C₂,C₅ | γδ sends 1↦0 and 1↦2; not an injection at 2. | Retain distinction from detector.  [r1] |
| 4.17 Chern sign | Weights +1,−1; m=5,2 | (1+u)(1−u)=1−u²; coefficients −1=4 mod 5 and 1 mod 2. | Retain.  [r1] |
| 4.18 closure detector | μ₅ in 𝔽̄₂ | Domain C₅, target Tor=C₅, normalized generator 1↦1; Frobenius both sides ×4. Ordinary μ⊗μ=0. | Retain.  [r1] |
| 4.18 two-primary modulus | Torsion order 2 in modulus 8 | 2 divides 8; Chern coefficient −1=7 is a unit; no product at modulus 4 is required. | Retain.  [r1] |
| 4.19 enhanced Tor model | μ=C₂,C₃ | Enhanced group C₄ in char 0 versus ordinary C₂; char 2 gives C₃ versus C₃. | Retain characteristic split.  [r1] |
| 4.19 naturality versus abstract roots | C₅, automorphism a=2 | Tor acts ×4; unmarked root model acts ×2. | Retain warning on nonnatural identifications.  [r1] |
| 4.20 Suslin exactness | ℚ | 0→C₄→C₂₄→C₆→0, injection 1↦6, kernel {0,6,12,18}. | Retain.  [r1] |
| 4.20 splitting exclusion | Same sequence | Every lift of 1 is 1+6k; sixfold multiples are 6 or 18, never 0. | Retain nonsplit assertion.  [r1] |
| 4.21 rational-function rigidity | 𝔽₄ and 𝔽₄(t) | μ=C₃ in both; K₃ind=C₁₅ in both; B=C₅ after the mixed comparison. | Retain proof order.  [r1] |
| 4.21 residue compatibility | {u,v,t} | Parameter-last residue is {u,v}; degree-three comparison sign (−1)²=+1. | Retain.  [r1] |
| 5.1 restriction/transfer | 𝔽₂⊂𝔽₄ | K₃ orders 3,15; restriction ×5, transfer reduction mod 3; tr∘res=×2 and res∘tr=×5. | Retain.  [r1] |
| 5.1 norm-one multiplication | 𝔽₄/𝔽₂, ω²+ω+1=0 | Matrix [[0,1],[1,1]] has determinant 1 and trace 1=ω+ω⁻¹. | Retain.  [r1] |
| 5.2 localized-SL₂ headline | q=2,3,4,5,7 | H₃ orders after inverting characteristic: 3,8,15,24,48 = q²−1. | Retain.  [r1] |
| 5.2 integral-SL₂ headline | q=2,3,4,5,7,8,9,27 | Orders 6,24,30,120,48,126,240,2184; extra p exactly on listed exceptional q. | Retain.  [r1] |
| 5.2 nonabelian stable elements | S₃, p=3, Sylow C₃ | Normalizer inversion acts ×1 on H₃(C₃)=C₃; stable H₃ part C₃. H⁰ restriction sends 1↦1. | Retain separate degree zero.  [r1] |
| 5.2 quaternion periodicity | Q₈ | H₁=C₂², H₃=C₈; replacing by abelianization homology would lose the order-eight class. | Retain.  [r1] |
| 5.3 stabilization | 𝔽₅ | Integral H₃ C₁₂₀→K₃ C₂₄ has kernel C₅; localization gives C₂₄≅C₂₄. | Retain.  [r1] |
| 5.3 extension comparisons | 𝔽₂⊂𝔽₄; 𝔽₃⊂𝔽₉ | Localized target orders 15,80; subgroup images have orders 3,8, respectively. | Retain.  [r1] |
| 5.4 refined boundary | 𝔽₅, nonsquare ε | λ₁[2]=0; λ₁[3]=(ε−1)²=2(1−ε)≠0; augmented R(2,3)=[4]=0. | Retain.  [r1] |
| 5.4 refined cross-ratio | (0,∞,a,b) | Value ⟨a⟩[b/a]; at a=1 equals [b]; at nonsquare a the coefficient is ε, not 1. | Retain.  [r1] |
| 5.4 finite comparison range | q=4, P¹ has 5 points | Augmented top degree 5; ordinary homology vanishes in degrees 1,2,3. Transitive C₅ orbit has 5 points, so complement is empty. | Retain general comparison, not βx,y in this case.  [r1] |
| 5.4 d² and torus comparison | Square class a over 𝔽₅ | Four multiplicative coordinates product a⁻¹, same square class as a; determinant-one tensor coefficient −2. | Retain.  [r1] |
| 5.4 refined coinvariants | Odd q, G_F=C₂ | I=ℤ(ε−1), I²=2I,I³=4I; I²/I³=C₂ and H₁(C₂,I²_sign)=0. | Retain.  [r1] |
| 5.5 finite Bloch headline | q=4,5,7,11 | B orders 5,3,4,6; enhanced kernel orders 3,8,12,20; products 15,24,48,120 equal q²−1. | Retain.  [r1] |
| 5.5 integral/localized kernels | q=4,5 | Integral kernels 30/5=6,120/3=40; localized kernels 15/5=3,24/3=8. | Retain.  [r1] |
| 5.5 small exclusions | q=2,3 | Actual Suslin B=0,ℤ; extrapolated order formula would give 3,2. | Retain q≥4.  [r1] |
| 5.6 odd Cartan quotient | (q,n)=(4,5),(5,3),(7,3) | First five groups C₅; second five C₃; excluded third has K₃/n=C₃ but B/n=0. | Retain gcd condition.  [r1] |
| 5.6 basis independence | Change basis e↦eg | Multiplication matrices M↦g⁻¹Mg; trace u+u⁻¹ and determinant 1 unchanged. At u=1 and −1: I and −I. | Retain.  [r1] |
| 5.7 arithmetic quotient | ℚ,ℚ(i) | C₄₈/C₂=C₂₄; (ℤ⊕C₂₄)/0=ℤ⊕C₂₄. | Retain.  [r1] |
| 5.8 Rogers detector | 1/2,2,−1 | Values −π²/12,+π²/12,−π²/4; c value −π²/6. Sixfold value −π²=0 modulo π², twofold and threefold nonzero. | Retain.  [r1] |
| 5.8 general RCF transfer | ℚ_alg∩ℝ,ℝ,ℚ | ∃x x²=2 gives true,true,false; ∃x x²+1=0 gives false,false,false, but true in ℂ. | Retain theorem; R01 ownership.  [r1] |
| 5.8 parameter embeddings | Any ordered RCF extension, parameter a | x=a+1 gives x−a=1>0 in both fields; x²=t solvable iff t≥0. | Retain full parameters.  [r1] |
| 5.8 certificate encoding | Empty pairs, k=0; ξ=[2]−[3] | Augmentation of ξ=0 but its two coefficients are +1,−1, so free-group equality is false in both RCFs. | Retain equality-pattern requirement.  [r1] |
| 5.8 formally-real headline | ℚ and a non-Archimedean RCF | 6c=0; ρ or transferred finite-certificate obstruction excludes 2c=0 and 3c=0; order 6 in both. | Retain; no embedding into ℝ assumed.  [r1] |
| 6.1 witness transport | R(2,3) under identity/embedding | Five coefficients remain (1,−1,1,−1,1); their argument equalities and zero quotient are preserved. | Retain.  [r1] |
| 6.2 tensor coordinates | C₄⊕ℤ² | Torsion diagonal modulus 2, torsion/free modulus 4, free diagonals modulus 2, mixed free coordinate ℤ. | Retain integral bookkeeping.  [r1] |
| 6.2 boundary certificate | ℚ, [2] and [2]+[−1] | Mixed v₂/sign coordinate 1 and 1+1=0 mod 2, respectively. | Retain accepts cycle, rejects symbol.  [r1] |
| 6.3 root multiple | Primitive sixth root ζ | 1−ζ=ζ⁻¹; ∂[ζ]=−ζ⊗ζ is nonzero C₂ diagonal; ∂(2[ζ])=0. | Retain.  [r1] |
| 6.3 dependence on −1 square | ℚ(√−3),ℂ | (−1)∧(−1) nonzero in the former, zero in the latter since −1=i². | Retain exact condition.  [r1] |
| 6.4 invertible denominators | Mod 5, m=2 or 4 | 2⁻¹=3 and 4⁻¹=4; (4·symbol)/4= symbol, (2·symbol)/2=symbol. | Retain unit hypothesis.  [r1] |
| 6.4 nonflat scalar change | 2ℤ↪ℤ, tensor C₂ | Source becomes C₂, target C₂, induced map ×2=0; injectivity is lost. | Retain no flatness shortcut.  [r1] |
| 6.5 fibres | C₂₄→C₆ over 1 | Fibre {1,7,13,19}; C₄ action adds 6 transitively/freely; multiplying lifts by 6 gives 6,18,6,18. | Retain no canonical additive section.  [r1] |
| 6.5 bar witness boundary | Trivial group, z=[1,1,1] | z=d₄[1,1,1,1], ev(z)=0; zero witness works for z−z=0. | Retain actual chains.  [r1] |
| 6.6 mixed field square | 𝔽₄→𝔽₄(t)→𝔽₄(t)(s) | Both routes send [ω]↦[ω] and [ω²]↦4[ω] in C₅. Reciprocal sends 1↦4, unequal. | Retain map-sensitive comparison.  [r1] |
| 6.6 snake sequence | C₄→C₂₄→C₆, n=2 | T[2]=C₂→K[2]=C₂ is iso; K[2]→B[2] is 0; B[2]→T/2 is iso; K/2→B/2 is iso. | Retain full six-term sequence.  [r1] |
| 6.6 rationalization | ℚ,ℚ(i) | T̃⊗ℚ=0; K₃ind⊗ℚ and B⊗ℚ have dimensions 0,1. | Retain.  [r1] |
| 6.6 odd/root hypothesis | 𝔽₇,n=3; ℚ,n=5 | First: T̃/3=C₃, K₃/3=C₃, B/3=0. Second: all ordinary quotients 0. | Retain hypothesis.  [r1] |
| 6.7 true coefficients | ℚ,n=5 | K₃/5=0; 5{2,−31}={32,−31}=0; residue 2 has powers 2,4,8,16,1 mod 31, hence exact order 5. | Retain nonzero K₂[5] extension.  [r1] |
| 6.7 degree-two correction | ℝ,n=2 | K₂(;C₂)=C₄; c₂(2β)=1 in C₂ but 2c₂(β)=0. | Retain degree distinction.  [r1] |
| 6.7 coefficient boundaries | n=1; characteristic p with n=p | n=1 gives 0 on both sides; n=p is excluded by invertibility, not silently evaluated as étale μ_p. | Retain.  [r1] |

## Not verifiable

- **suslin-1984** remains waived, including the frame and homological-stability proofs. No primary-text certification or renewed request is made. The unchanged evidence is in [r1].
- **suslin-1991** remains waived, including the primary §5 proof behind the monomial calculation. This round checks the available K-book exposition and the supplier targets, not that unavailable primary text.
- **bloch** Lecture 6 remains waived; its full-tensor convention is unchanged. No theorem from the monograph is newly certified.
- Unchanged source and ownership checks outside the repair's dependency footprint are carried from [r1], as required for an incremental re-review, rather than independently repeated. No new unreadable source was needed, no manifest was edited, and no source request was added.

## Source issues

The following errata are carried from [r1], not claimed as new discoveries. The Marker interval issue was also visible in the text reopened this round. No additional source error was found in the changed passages.


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

[r1]: packages/K3BlochGroups/reports/PRREVIEW-K3BlochGroups~1.md
