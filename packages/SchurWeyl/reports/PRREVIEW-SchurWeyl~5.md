# Review of SchurWeyl (pull request #1164 at ef74fd4)
Folder: `TauCetiRoadmap/RepresentationTheory/SchurWeyl/`

**Verdict:** needs changes

## R01 (P1) — The finite Frobenius prerequisites are still attributed to nonexistent suppliers

**Location:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:212–218`, with uses at 699–705, 736–745 and 819–831. Quote: “`TauCeti.frobeniusCharacteristic_eq_sum_psumPart` (the cycle-type formula”.

**Claim:** three finite Frobenius identities are supplied by Tau Ceti, and class-function induction is `Subgroup.indClassFunction`. None of those four names exists at either actual pin. The missing identities still leave the character Murnaghan–Nakayama, power-sum Hall and stable-character routes without an owned prerequisite. This is previous R01, unchanged; no declared supplier gap covers it.

**Witness:** `TauCeti/RepresentationTheory/Symmetric/FrobeniusCharacteristic.lean:18,45–96` supplies Schur coordinates, explicitly separating the cycle-type formula. `PermutationModule/PowerSum.lean:191,211` expands into monomials. The actual induction map is `TauCeti.ClassFunction.ind`, `TauCeti/RepresentationTheory/Induction/ClassFunction.lean:446`.

**Exact repair:** own the finite identities before §§7.3–7.4 and §7.6, using the pinned monomial power-sum expansion, Young's rule, Kostka expansion and character orthogonality. State the finite Frobenius headline in `Suggested.lean`; replace the induction citation with `TauCeti.ClassFunction.ind`, retaining its subgroup/finite-index hypotheses. Do not merely rename the three absent identities or wait for a pin update.

The proposed finite formula over every commutative ring and finite alphabet elaborates in a scratch copy at this head. Its degree-two equations are `p₂=s₂−s₁₁` and `p₁²=s₂+s₁₁`; at `(x,y)=(1,2)` both sides are respectively 5 and 9. Inverting the character table over ℂ gives `ch(a,b)=((a+b)/2)s₂+((a−b)/2)s₁₁`, the required cycle-type formula. This tests the repaired mathematical contract; it does not claim the absent general theorem has been implemented.

## R02 (P3) — Delete the auxiliary Newton signature

**Location:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/MatrixTraceNewtonTargets.lean:1,17`; duplicate at `TauCetiRoadmap/RepresentationTheory/SchurWeyl/Suggested.lean:210`. Quote: “`import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff`”.

**Claim:** the auxiliary file still violates the single `import Mathlib` rule and duplicates a headline already in the main acceptance file. Its module docstring also lacks the required headline account. This is previous R03, unchanged.

**Witness:** `matrix_trace_newton` and `matrixTraceNewton` elaborate to the same binders and equation. For the unipotent 2×2 matrix at r=1,2,3, both signatures give −2,2,0 on each side.

**Exact repair:** delete `MatrixTraceNewtonTargets.lean`; retain `matrixTraceNewton` in `Suggested.lean` and §7.8 in the README. The successful targeted build does not import the auxiliary module, so deletion loses no headline coverage. The gate passes despite this manually verified form violation.

## Previous findings

- R01 — not repaired: README:212–218 still names three absent finite Frobenius identities and `Subgroup.indClassFunction`; the consumers at §§7.3, 7.4 and 7.6 are unchanged. Retained as R01.
- R02 — repaired: README:975–1014 and Suggested:255–272 now define the relation span and state a surjection with exact kernel and GL equivariance for every d,n,μ, including vanishing shapes.
- R03 — not repaired: MatrixTraceNewtonTargets:1 still imports a Mathlib submodule; its theorem at line17 duplicates Suggested:210. Retained as R02.
- R04 — repaired: README:1105–1106, 1445–1446 and 1530–1533 now cite arXiv v2, §1 p.4, before Theorem1.2. The source display agrees with the signed generators.

No repair report marking either retained finding “not actionable in this package” was supplied or found in the package reports.

## Verified sound

:robot: AI review by Codex. This is an **incremental re-review of 80 changed lines since a205d48**, at `ef74fd4290448e13b57405553da6d95a58d45e82`. The changed passages, their immediate inputs/consumers, all four previous findings, the gate, elaboration and declaration signatures were checked afresh. The untouched mathematical tests below are explicitly inherited from [r4], not claimed as newly rerun. Root README/CONTRIBUTING, the family index, and the main-branch ClassicalGroups and CharacterTheory shapes were read. No PR file was edited.

The changed definition uses an actual submodule span on native tensor/Specht carriers. Its theorem has no conclusion-shaped hypothesis, no admitted data, no `set_option`, no restriction excluding the empty tensor or vanishing shapes, and no new supplier edge. The six README Checks distinguish the sign action, an incorrect zero quotient, an incorrect left/right convention and a dimension-only comparison. No new defect was found in these repairs. The outside-folder diff is empty, including the incremental change set.

**Gate and build.** The supplied worker gate passes all checks including build. The independently rerun gate also passes its reported scanners and dependency check. The separate dependency command returned exactly:

```text
depcheck: 204 roadmaps, 1496 edges, 0 problem(s)
```

No UPWARD or CYCLE line appeared. All 27 `*Needs:*` lines and the supplier-contract passages were read; the new §8.2 needs only §§4.3/8.1 and the pinned tensor/submodule APIs. The targeted build `lake build TauCetiRoadmap.RepresentationTheory.SchurWeyl.Suggested` succeeded (9,108 jobs). Direct `lake env lean` on the main file succeeded with **23 expected sorry warnings and no other diagnostics**.

A scratch copy printed `#check @name` for **all 38 main declarations** (23 theorems and 15 definitions/abbreviations/structures); the auxiliary theorem was elaborated and checked separately. The new definition retains d,n,μ; the new theorem retains surjectivity, exact kernel and equivariance for every GL element and pure tensor. The unchanged field, characteristic, finite-alphabet and positive-degree hypotheses also remain present. No signature repair is needed. The new theorem fails each of `simp`, `rfl`, and `infer_instance` in a scratch probe; the pinned intertwiner comparison is not an exact lemma for this quotient assertion. The 22 unchanged headline probes are carried from [r4]. R02 concerns a duplicate, not a claim that the main Newton theorem is padding.

**Headline coverage.** The README's programme includes sign-transpose and self-duality, induction/Kronecker comparisons, LR and character Murnaghan–Nakayama, finite Hall/Frobenius comparisons, stable symmetric functions and Frobenius induction, matrix Newton and finite power-sum bases, simultaneous tensor decomposition and the balanced presentation, and Brauer FFT/harmonic/multiplicity/semisimplicity results. The main file now adds the full balanced presentation to the 22 previous signatures. Stable-ring/Frobenius-induction, RSK carrier comparisons, Brauer algebra/cell/filtration and arbitrary-slot symplectic headlines remain explicitly identified as unstated with their missing carriers in the module docstring. The statable finite Frobenius headline is still absent (R01). No replacement assertion in the new code weakens the balanced presentation to a dimension formula.

**Pinned declarations reopened.** The manifest and actual package HEADs agree: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These 12 file locations distinguish the repaired targets from their inputs:

| File and line at the pin | Declaration/body inspected and implication |
|---|---|
| `TauCeti/RepresentationTheory/Symmetric/TensorAction/Basic.lean:48,70,107,126` | Reindex representation, commutation with the uniform tensor map, permutation action and its algebra extension. Reindex uses the inverse permutation on entries; applying g⁻¹ gives the required right action. |
| `TauCeti/RepresentationTheory/Symmetric/Specht/Complex.lean:92` | `spechtModuleℂ` is base change of the rational Specht representation, not an arbitrary vector space with an unspecified action. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Basic.lean:429,472,504` | Native Schur image, its row-bound vanishing criterion and `schurFunctor` specialization. The target exists even when it is zero. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Multiplicity.lean:105,136` | Equivariant ideal-intertwiner/Weyl comparison and dimension equality, not yet the balancing-kernel theorem. |
| `Mathlib/LinearAlgebra/Quotient/Defs.lean:55–62` | Native quotient by a submodule; no new heavy quotient carrier is needed. |
| `Mathlib/LinearAlgebra/Quotient/Basic.lean:116` | `Submodule.liftQ` descends a linear map whose kernel contains the relation submodule. |
| `TauCeti/RepresentationTheory/Symmetric/FrobeniusCharacteristic.lean:18,45,53,66,88` | Schur-coordinate characteristic and images/coordinates; explicitly not the missing cycle-type expansion. |
| `TauCeti/RepresentationTheory/Symmetric/PermutationModule/PowerSum.lean:191,211` | Monomial expansion via fixed tabloids/permutation characters, an input for R01's repair. |
| `TauCeti/RepresentationTheory/Symmetric/PermutationModule/YoungRule.lean:192` | Young's rule, with Kostka multiplicities. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Monomial.lean:353` | Schur-to-monomial Kostka expansion, the other input for the finite Frobenius repair. |
| `TauCeti/RepresentationTheory/Induction/ClassFunction.lean:446` | Actual `TauCeti.ClassFunction.ind`, with subgroup and finite-index binders. |
| `TauCeti/RepresentationTheory/ClassicalGroups/BrauerGenerators/Symplectic.lean:210,273,305` | Cup from −J, loop −2l and minus-flip crossing, agreeing with the repaired source convention. |

**Ownership and citations.** Object searches used `roadmaps grep`, `roadmaps show`, local main/open copies, board packages and the pinned libraries. No other owner of the **Specht-specific balancing-kernel/Schur comparison** or collision with its two new fully qualified names was found. Generic balanced tensors elsewhere do not already give this comparison. The two new declarations specialize existing tensor/submodule carriers; they do not introduce a competing general tensor-product library. The finite Frobenius bridge remains this roadmap's work, using the existing symmetric-function and character inputs, rather than an unnamed upstream promise.

The citation resolver found no unresolved roadmap names but explicitly did not check pinned Lean names; its clean result is therefore not evidence against R01. Direct pin searches found zero occurrences of all four claimed names.

| Citation resolved this round | Actual ownership/contract |
|---|---|
| main `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:216–235`, Layer2 | Owns the Schur image/vanishing/extremes; explicitly takes tensor/Specht decomposition from SchurWeyl. The §8.2 repair consumes only that carrier, not a circular decomposition supply. |
| main `TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md:521–548`, §3.6 | Generic external tensor products and their character comparison; retained Specht-transpose comparisons are specific. |
| main `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:213–240,268–307` | Projection formula and induced-character infrastructure; does not supply the three finite Frobenius formulas. |
| main `TauCetiRoadmap/ReductiveGroups/README.md:234–246,466–477` | Components and characteristic-zero connected reductive/linearly-reductive equivalence; disconnected orthogonal case still uses the roadmap's component averaging. |
| main `TauCetiRoadmap/TemperleyLieb/README.md:208–216` | Brauer versus planar/cellular boundary; full Brauer theory remains here. |
| main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:1432–1446`, Layer9 | Polynomial group/Lie comparison consumes classical Schur modules and owns differentiation/intertwiner dictionaries. |
| open `TauCetiRoadmap/TensorProductCombinatorics/README.md:280–328` | Explicit skew-LR, evacuation and stable-ring supplier contracts ask SchurWeyl for these objects, not independent constructions there. |

Other unchanged downstream application claims and their limitations are carried from [r4]; no new dependence on them is inferred. Open ownership was checked through the provided indexed heads; inherited copies of this same folder were not counted as independent owners.

**Seeded targets.** The following accounts for all 15 targets in this round's seed. Only §8.2 and the signed-action locators in §§9.2/9.9 changed; the other source conclusions are carried from [r4]. Previously unread book text remains uncertified.

| Seeded target | Evidence and status |
|---|---|
| 4.2 sign-transpose intertwiner | Unchanged; [r4] group-ring scalar/sign rows carried below. Fulton–Harris Exercise4.4 and James8.15 text remains unavailable. |
| 4.3 character identity/self-duality | Unchanged; [r4] S₄ characters, S₃ Gram determinant3 and contragredient-direction tests carried. James/Fulton–Harris locators uncertified. |
| 6.1 character table/specification | Unchanged; [r4] S₃ row/column normalization rows carried; CharacterTheory §3.6/Layer5 ownership remains. Printed book locators uncertified. |
| 7.5 stable ring/Hall/ω | Unchanged; [r4] stable-tail, empty alphabet, ω and Newton rows carried. Macdonald I.2–I.5 text unavailable. |
| 7.6 stable Frobenius/induction | Unchanged mathematics; missing finite suppliers rechecked at pin (R01). [r4] S₂ characteristic and induction values carried. |
| 7.9 finite power-sum bases | Unchanged; [r4] degree-two determinant−2 and one-variable dependence carried. Macdonald I.2(2.12) unavailable. |
| 8.1 simultaneous decomposition | Unchanged; input of the repair. Native equivariant Weyl/Hom comparison reopened; [r4] dimension/eigenvalue/zero-rank rows carried. Fulton–Harris6.3/Goodman–Wallach9.1.1 text uncertified. |
| 8.2 balanced tensor | Newly checked in full; exact kernel, universal property, equivariance, S₃ direction and all six Checks tested below. Fulton–Harris §6.1 fetch again returned no legal full text. |
| 8.3 transpose comparisons | Immediate consumer reread at README:1016–1030. Uses abstract/stable multiplicities; explicitly does not identify finite-rank transposed Schur functors. [r4] d=1 row/column values carried. |
| 9.2 orthogonal/symplectic actions | Corrected signed-action locator freshly read: dipperDotyHu2008 lines177–187, arXiv v2 §1 p.4. Opposite form/cup conventions cancel in cup-cap; signs agree. Orthogonal/coefficient-ring source conclusions carried from [r4]. |
| 9.3 invariant-tensor bridge/FFT | Untouched; [r4] Ξ signs, matching ranks, O/SO distinction, FFT/reverse-centralizer and characteristic2 weight rows carried. Source conclusions/limitations unchanged. |
| 9.4 harmonics/shape spaces | Untouched; [r4] contraction ranks, nonvanishing and irreducibility rows carried. Main Goodman–Wallach text remains uncertified. |
| 9.6 cups/signs/graded action | Untouched; [r4] matching signs, cup ranks and four raw-action matrix checks carried. AppendixF evidence and full signed-cell-comparison limitation carried. |
| 9.8 semisimplicity distinctions | Untouched; [r4] B₃ Gram ranks and geometric-image distinction carried; Rui1.2 and DDH1.2/1.4 source results carried. |
| 9.9 rank-one examples | Only citation changed. Corrected DDH display freshly verified; cup relation recomputed. All four unchanged matrix checks carried from [r4]. |

**Computed adversarial table.** 18 fresh rows cover every changed mathematical assertion, the new definition/API/Checks, its inputs and both retained findings. 161 untouched rows follow, each citing [r4]. The fresh degree-two quotient maps are written in coordinates on the symmetric/exterior targets; the corresponding native symmetrizer images differ only by invertible basis choices. Exact rational elimination verifies the ranks. The universal-property rows test both directions; the full general statement follows from the native tensor/quotient universal properties, not from a finite test alone.

| Statement | Instances tried | Computed left side / right side | Result; change |
|---|---|---|---|
| §8.2 relation span, row shape; Suggested:255 | d=n=2, μ=(2), basis 00,01,10,11 | R=swap−I has columns 0,10−01,01−10,0; rank1; quotient dimension 4−1=3 | Pass; real definition, no extra hypotheses |
| §8.2 relation span, column shape | d=n=2, μ=(11) | R=swap+I has columns 2·00,01+10,01+10,2·11; rank3; quotient dimension1 | Pass; wrong trivial action gives3 |
| §8.2 group-algebra relations | a=3·1+2·(01), both shapes | ρ(a)−χ(a)I=2(swap−χ((01))I); both spans have ranks1/3 as above | Pass; linear extension adds no relations |
| §8.2 quotient comparison; Suggested:265 | row map Qs(a,b,c,d)=(a,b+c,d); column Qa(a,b,c,d)=b−c | ranks Qs,Qa=3,1; QsRs=0 and QaRa=0; kernel dimensions1,3 equal relation dimensions1,3 | Pass; surjective with exact kernel |
| §8.2 comparison excludes zero/proper-image maps | row target dimension3 | zero-map rank0≠3, kernel dimension4≠1; Qs rank3, kernel dimension1 | Pass; conditions discriminate |
| §8.2 GL equivariance; Suggested:269–272 | g=diag(2,3), tensor action G=diag(4,6,6,9) | QsG−diag(4,6,9)Qs=0 (12 entries); QaG−6Qa=0 (4 entries) | Pass; eigenvalues4,6,9 and6 |
| §8.2 relation stability/action descent | same G, Rs=swap−I, Ra=swap+I | GRs−RsG=0 and GRa−RaG=0 (16 entries each); row generator scaled by6 | Pass; general route uses commuting actions |
| §8.2 universal property, both directions | row scalar functional L=(a,b,c,d) | LRs=(0,c−b,b−c,0)=0 iff b=c; then unique quotient coefficients (a,b,d). L=(0,1,0,0) gives (0,−1,1,0)≠0 | Pass; balanced iff factors uniquely |
| §8.2 column universal property | scalar functional L=(a,b,c,d) | LRa=(2a,b+c,b+c,2d)=0 iff a=d=0,c=−b; unique factor b·Qa | Pass over ℂ |
| §8.2 n=0, including d=0 | trivial S₀, empty tensor | relation rank0; source, quotient, target dimensions1,1,1; Q=[1] has kernel0 | Pass; no accidental positive-rank bound |
| §8.2 d=0,n>0 | n=1 and2 | tensor, source, quotient and target dimensions0; unique map 0→0 is surjective with kernel0 | Pass |
| §8.2 ℓ(μ)>d | d=1,n=2, column | relation matrix[2], rank1; source dimension1, quotient/target dimensions0/0; zero surjection has full kernel | Pass; opposite row shape gives quotient1 |
| §8.2 right action, noncommutative control | S₃, σ=(01),τ=(12),v=012 | (v·σ)·τ=v·(στ)=120; reversed product gives201 | Pass; inverse in definition required |
| §8.2 dependence on self-duality/§8.1 | S₂ row/sign and S₃ standard | invariant Gram forms [1],[1],[[2,1],[1,2]] have determinants1,1,3; over ℂ contraction keeps multiplicities1,1,2 at d=2,n=3 | Pass; no arbitrary map in the hypothesis |
| §9.2 corrected source convention | Sp₂, θ=ef−fe | cap(θ)=−2; (−flip)θ=θ; E²+2E=0 (16 entries). DDH uses opposite form and opposite cup, giving identical E | Pass; dipperDotyHu2008 lines177–187, §1 p.4 |
| §9.9 corrected citation and relation | Sp₂, free vector e | D₁₂e=efe−fee, D₁₃e=eef−fee, D₂₃e=eef−efe; D₁₂e−D₁₃e+D₂₃e=0 | Pass; same source display supports signed generators |
| R01 finite Frobenius repair control | degree2; (x,y)=(0,0),(1,2),(1,−1) | p₂ and s₂−s₁₁ both0,5,2; p₁² and s₂+s₁₁ both0,9,0; S₂ characteristic of (a,b) has Schur coordinates ((a+b)/2,(a−b)/2) | Identities correct; supplier remains absent |
| R02 duplicate Newton control | unipotent 2×2 matrix, r=1,2,3 | r·cᵣ=−2,2,0 and −Σcᵣ₋ⱼ tr(Aʲ)=−2,2,0 in both signatures | Pass mathematically; delete duplicate file |

The remaining rows retain their historical mathematical results. Mentions of an earlier repair describe [r4]'s evidence; they do not assert that those untouched passages changed in this round.

| Statement | Instances tried | Computed left side / right side | Result; change |
|---|---|---|---|
| Partitions/diagrams/classes, consumed Layers 0–1 | n=0,2,3 | partition/class counts `1/1`, `2/2`, `3/3`; S₃ class sizes `1+3+2=6` | Pass  Inherited [r4]. |
| Dominance and conjugation | (3) dominates (21) | prefix sums `(3,3)/(2,3)`; transposes `(111),(21)` reverse the inequalities `(2,3,3)≥(1,2,3)` | Pass  Inherited [r4]. |
| Standard tableaux/count | ∅,(2),(11),(21) | counts `1,1,1,2`; hook dimensions `1,1,1,2` | Pass  Inherited [r4]. |
| Young subgroup/index | λ=(21), n=3 | order `2!1!=2`; index `3`; `3·2=6` | Pass  Inherited [r4]. |
| Row/column symmetrizer order | tableau 01/2 | `a=1+(01)`, `b=1−(02)`; `ab−ba=(02)(01)−(01)(02)≠0` | Pass; order matters  Inherited [r4]. |
| Specht realization/classification, consumed | S₂,S₃ | dimensions `(1,1)` and `(1,2,1)`; square sums `2,6` | Pass  Inherited [r4]. |
| §4.1 tableau transpose | 01/2, ∅ | transpose `02/1`; row group `{1,(02)}` equals original column group; empty maps to empty | Pass  Inherited [r4]. |
| §4.1 sign algebra automorphism | τ=(01), c=(012) | `ε(τ)=−τ`, `ε(c)=c`; `ε(τ)²=1=ε(τ²)` | Pass  Inherited [r4]. |
| §4.1 sign involution | τ=(01) | `ε²(τ)=−(−τ)=τ` | Pass  Inherited [r4]. |
| §4.1 symmetrizer transformation | row (2) | `ε(1+τ)=1−τ=b_column`; transformed `c` has reversed factor order in shape21 | Pass  Inherited [r4]. |
| §4.1 wrong-model Check | c=(012) | `ε(c)=c`; inversion gives `c⁻¹=(021)≠c` | Pass; repaired  Inherited [r4]. |
| §4.2 sign-transpose isomorphism | λ=(2),(21),∅ | characters `(1,1)·(1,−1)=(1,−1)`; `(2,0,−1)·(1,−1,1)=(2,0,−1)`; `1·1=1` | Pass  Inherited [r4]. |
| §4.2 composite scalar | n=2 row; n=3 shape21; n=0 | `κ=n!/f=2,3,1`; composites multiply by `2,3,1`, not always 1 | Pass  Inherited [r4]. |
| §4.2 inverse denominator | same shapes | nonzero rational scalars `2,3,1`; inverses `1/2,1/3,1` | Pass  Inherited [r4]. |
| §4.3 character transpose | S₄ shape31 | `(3,1,−1,0,−1)·(1,−1,1,1,−1)=(3,−1,−1,0,1)` | Pass  Inherited [r4]. |
| §4.3 self-dual form | S₃ shape21 | Gram `[[2,1],[1,2]]`, determinant `3`; determinant modulo3 `0` | Pass over ℚ; characteristic hypothesis matters  Inherited [r4]. |
| §4.3 contragredient direction | 3-cycle on basis e₀−e₂,e₁−e₂ | action `[[−1,−1],[1,0]]`; `gᵀBg=B`; `gᵀ≠(g⁻¹)ᵀ` | Pass; forward dual action excluded  Inherited [r4]. |
| §4.4 induction/sign projection | S₁×S₁→S₂ | regular character `(2,0)`; sign product `(2,0)`; both multiplicities1 | Pass; generic comparison now imported  Inherited [r4]. |
| §4.4 Kronecker double transpose | standard S₃ square | `(2,0,−1)²=(4,0,1)=(1,1,1)+(2,0,−1)+(1,−1,1)` | Pass; now stated in Suggested.lean  Inherited [r4]. |
| §4.4 simultaneous three-index transpose not asserted | all three S₃ shapes (3) | `g((3),(3),(3))=1`; `g((111),(111),(111))=0` | Correct exclusion  Inherited [r4]. |
| §5.1 symmetrizer scalar/hook product | (21) | hooks `3,1,1`, product3; `3!/2=3` | Pass  Inherited [r4]. |
| §6.1 table comparison/specification | S₃ | standard row weighted square `1·4+3·0+2·1=6`; normalized norm1 | Pass; comparison with supplied specification  Inherited [r4]. |
| §6.1 column normalization/class signs | S₃ transposition,3-cycle | column square sums `1+1+0=2=z₂₁`; `1+1+1=3=z₃`; signs `−1,+1` | Pass  Inherited [r4]. |
| §7.1 skewCells | inner=(1), outer=(21); invalid inner=(2),outer=(1) | skew cells `{(0,1),(1,0)}`; invalid difference empty but `inner≤outer` false | Pass; carrier excludes invalid shape  Inherited [r4]. |
| §7.1 skew semistandard tableau | straight column11 | entries `0,1` satisfy `0<1`; `0,0` fail `0<0`; outside entries forced0 | Pass  Inherited [r4]. |
| §7.1 skewContent | two isolated cells with 0,1 | counts `(1,1,0,…)`, total2; outside zeroes do not add to content | Pass  Inherited [r4]. |
| §7.1 finite bounded fillings/conversion | shape(2), alphabet {0,1} | weak rows `00,01,11`: count3; `10` excluded; bound0 gives none for a nonempty shape | Pass  Inherited [r4]. |
| §7.1 straight standard conversion | shape21 | `01/2`, `02/1`: count2 on both carriers; empty shape count1 | Pass  Inherited [r4]. |
| §7.1 reading order | cells (0,2),(0,1),(1,0) | order `(0,2),(0,1),(1,0)`; entries `1,0,0` read100, not001 | Pass  Inherited [r4]. |
| §7.1 ballot predicate | 001,010,100 | prefix differences #0−#1: `(1,2,1)`, `(1,0,1)`, `(−1,0,1)` | First two true, third false  Inherited [r4]. |
| §7.1 row insertion/bumping | insert1 into row02 | bumps2; result01/2; insert0 into00 yields000 | Pass; weak-row convention  Inherited [r4]. |
| §7.1 reverse insertion | 01/2, remove lower corner | reverse bump returns entry1 and row02 | Pass; inverse test  Inherited [r4]. |
| §7.1 Knuth relations | 021↔201 and 102↔120 | insertion tableaux respectively `01/2` on both sides and `02/1` on both sides | Pass  Inherited [r4]. |
| §7.1 repeated-letter Knuth boundaries | 010↔100 | both insert as00/1; 001 inserts as001, so arbitrary adjacent swapping fails | Pass  Inherited [r4]. |
| §7.1 Greene row sums | word102 | maximum weak increasing subsequence length2; two disjoint subsequences cover3; row sums `2,3` | Pass  Inherited [r4]. |
| §7.1 jeu de taquin/rectification | skew21/1 with (0,1)=0,(1,0)=1 | slide0 left then exit: straight column01; reading word01 inserts row01, so use the appropriate reverse/row-reading convention in the conversion | Convention-sensitive; see note below  Inherited [r4]. |
| §7.2 LRTableau cardinality | μ=ν=(1), κ=(2),(11) | one ballot filling for each; coefficients `1,1` | Pass  Inherited [r4]. |
| §7.2 LR coefficient with empty/invalid shapes | μ=ν=κ=∅; μ not≤κ | empty filling count1; invalid shape count0 | Pass  Inherited [r4]. |
| §7.2 LR coefficient2 | μ=ν=(21),κ=(321) | eligible ballot fillings001,010; 100 fails; count2 | Pass  Inherited [r4]. |
| §7.2 reading direction negative control | (32)/(1), content22 | rows·01/01 read1010: false; rows·00/11 read0011: true; total1 | Pass  Inherited [r4]. |
| §7.2 littlewoodRichardson | s₁², d=2 | `(x+y)²=(x²+xy+y²)+xy` | Pass  Inherited [r4]. |
| §7.2 diagramLittlewoodRichardson | d=1; zero ring | `x²=x²+0`; over zero ring all terms0 | Pass; semiring generality retained  Inherited [r4]. |
| §7.2 LR symmetry and shape support | c^(21)_((2),(1)) and reverse | both1; c^(1)_((2),∅)=0 by shape/size | Pass  Inherited [r4]. |
| §7.2 vertical Pieri | s₁e₁; s₂e₁ | `s₂+s₁₁`; `s₃+s₂₁`; adding both new boxes to one row excluded when strip size2 | Pass  Inherited [r4]. |
| §7.2 evacuation | tableau02/1 | evacuation01/2, then02/1; shape21 both times | Pass  Inherited [r4]. |
| §7.2 permutation RSK/inverse symmetry | 102 and inverse102 | `P=Q=02/1`; pair swap leaves pair unchanged; empty maps to empty pair | Pass  Inherited [r4]. |
| §7.2 word RSK reversal exclusion | 00 | reversed word still inserts as row00, shape2; transpose would have shape11 | Pass; no longer asserted for repeated letters  Inherited [r4]. |
| §7.2 corrected permutation reversal | 102→201 | `P:02/1→01/2`; `Q:02/1→02/1`; `evac(Q)ᵗ=02/1` | Pass for corrected identities  Inherited [r4]. |
| §7.2 nonnegative-matrix RSK weights | 1×1 matrix [2] | insertion row00 and recording row00, total size2; zero matrix gives two empty tableaux | Pass  Inherited [r4]. |
| §7.3 character M–N | κ=21,ρ=3 | one rim hook, height1: `χ=−1=(−1)·1` | Pass  Inherited [r4]. |
| §7.3 disconnected rim-hook rejection | κ=21,ρ=21,r=2 | no connected eligible skew shape; `χ=0=empty sum`; admitting it would give−1 | Pass  Inherited [r4]. |
| §7.3 column sign | κ=111,ρ=3 | height2; `χ=1=(−1)²` | Pass  Inherited [r4]. |
| §7.3 S₄ non-hook case | κ=211,ρ=31 | no eligible size3 hook; `χ=0=0` | Pass  Inherited [r4]. |
| §7.3 height vs width Check | κ=22,ρ=22 | correct height sum `1−(−1)=2`; wrong column sign gives `−1+(−1)=−2` | Pass; repaired  Inherited [r4]. |
| §7.3 empty recursion base | n=0,r=1,κ=1 | `χ¹(1)=1`; height0 times χ∅=1 | Pass  Inherited [r4]. |
| Finite Frobenius power-sum formula | degree2 | `p₂=s₂−s₁₁`; `p₁²=s₂+s₁₁` | Mathematics passes; supplier absent R01  Inherited [r4]. |
| §7.4 hallForm definition | d=2,n=2 | Schur Gram identity2; monomial-coordinate norm(s₂)=2 rather than1 | Pass; wrong form excluded  Inherited [r4]. |
| §7.4 hallForm_psumPart | d=2,n=2 | norms `2,2`; cross pairing `1−1=0`; z values2,2 | Pass  Inherited [r4]. |
| §7.4 small-alphabet exclusion | d=1,n=2 | p₂=p₁₁=x²; norm and cross pairing1 rather than2,0 | Pass; bound needed  Inherited [r4]. |
| §7.4 arbitrary commutative ring Hall identity | R=𝔽₂,d=n=2 | p₂=p₁₁, their Schur coordinates(1,1); self-pairing `1+1=0=z mod2` | Pass; no basis over 𝔽₂ claimed  Inherited [r4]. |
| §7.4 finite Frobenius isometry | S₂ irreducibles | character pairings matrixI₂; Schur pairings matrixI₂ | Pass  Inherited [r4]. |
| §7.5 compatible families | stable e₂ at d=0,1,2,3 | components `0,0,xy,xy+xz+yz`; last-variable-zero gives predecessor | Pass  Inherited [r4]. |
| §7.5 degreewise stable projection | n=2,d=1,2 | dimensions `1,2`; stable dimension2; kernel at d1 spans s₁₁, kernel at d2 zero | Pass  Inherited [r4]. |
| §7.5 stable degree zero/unit | all d, n=0 | constant family1; projection1; product1·1=1, including empty alphabet | Pass  Inherited [r4]. |
| §7.5 free elementary/complete generators | degree2 | `h₂=e₁²−e₂`, `e₂=h₁²−h₂`; composing returns e₂,h₂ | Pass  Inherited [r4]. |
| §7.5 ω involution | e₂,h₂,p₂ | `ω(e₂)=h₂`, `ω(h₂)=e₂`, `ω(p₂)=−p₂`, second application p₂ | Pass  Inherited [r4]. |
| §7.5 dual Jacobi–Trudi | λ=21 in x,y | `h₂h₁−h₃=x²y+xy²=e₂e₁−e₃`; e₃=0 | Pass  Inherited [r4]. |
| §7.5 stable-tail Hall construction | s₁₁, d=1,2,3 | projected norms `0,1,1`; stable Schur-coordinate norm1; only d≥degree participates | Pass; repaired  Inherited [r4]. |
| §7.5 rational Newton presentation | p₁,p₂,p₃ at eigenvalues1,2,3 | `(6²−14)/2=11=e₂`; `(216−252+72)/6=6=e₃` | Pass  Inherited [r4]. |
| §7.5 denominator control | r=2 over ℚ vs𝔽₂ | 2 inverse1/2 overℚ; 2=0 in𝔽₂ and no inverse | Pass; ℚ-algebra hypothesis essential  Inherited [r4]. |
| §7.5 index shift/no P₀ | d=0,1,2 | finite p₀=`0,1,2`; p₁ specializes compatibly, p₀ does not overℤ | Pass  Inherited [r4]. |
| §7.5 weighted grading/base change | X₁↦p₂; ℤ→𝔽₂ | degree2 on both sides; coefficient2 becomes0 on both sides | Pass  Inherited [r4]. |
| §7.6 stable ch | trivial/sign S₂ | `(p₁²+p₂)/2=s₂=h₂`; `(p₁²−p₂)/2=s₁₁=e₂` | Pass  Inherited [r4]. |
| §7.6 integral virtual lattice | class values(1,0) onS₂ | irreducible coefficients(1/2,1/2), not integers; values(2,0) give(1,1) | Pass; integer-valued≠virtual  Inherited [r4]. |
| §7.6 block induction product | S₁×S₁ | induced values(2,0); `ch=p₁²=s₁s₁` | Pass; use real induction API R01  Inherited [r4]. |
| §7.6 Young's rule | μ=11 | `h₁²=s₂+s₁₁`; two Specht multiplicities1 | Pass  Inherited [r4]. |
| §7.7 coproduct/alphabets | e₂ in x,y | split-alphabet coefficient of x⊗y is1; `e₂⊗1+e₁⊗e₁+1⊗e₂` gives1 | Pass; discriminating Check now present  Inherited [r4]. |
| §7.7 coassociativity | e₂ split into x,y,z | both iterated coproducts give `xy+xz+yz` | Pass  Inherited [r4]. |
| §7.7 counit | e₁ and1 | counit values0,1; applying counit to one coproduct factor recovers e₁,1 | Pass  Inherited [r4]. |
| §7.7 antipode | e₁,e₂ | `S(e₁)=−e₁`; `e₂−e₁²+h₂=0`; `S(e₂)=h₂` | Pass  Inherited [r4]. |
| §7.7 primitive power sums | P₂ | `P₂(x,y)=x²+y²`; split expression same; antipode `−P₂` | Pass  Inherited [r4]. |
| §7.8 reversed coefficients | A=diag(1,2) | det(1−tA)=`1−3t+2t²`; c=(1,−3,2), E=(1,3,2) | Pass  Inherited [r4]. |
| §7.8 integral Newton, matrix headline | A=[[1,1],[0,1]], r=1,2,3 | `(r c_r)=−2,2,0`; recurrence RHS=`−2,2,0` despite non-diagonalizability | Pass; now in Suggested.lean  Inherited [r4]. |
| §7.8 high-index total-function behavior | same A, r=4,5 | c₄=c₅=0; recurrence RHS0,0; no coeff at truncated d−r used | Pass  Inherited [r4]. |
| §7.8 rank0 and nilpotent | d=0; A=[[0,1],[0,0]] | charpolyRev=1 in both; all positive traces0; recurrence0=0 | Pass  Inherited [r4]. |
| §7.8 characteristic2 | A=I₂ over𝔽₂ | p_j=0 for every j>0; c₂=1; r2 equation `0·1=0` | Pass; recurrence does not determine coefficients here  Inherited [r4]. |
| §7.8 characteristic3 | A=I₃ over𝔽₃ | p_j=0; c₃=−1=2; r3 equation0=0 | Pass; rational solution requires ℚ  Inherited [r4]. |
| §7.8 rational partition solution | A=diag(1,2,3), r=3 | `E₃=6`, `c₃=−6`; partition numerator `216−252+72=36` | Pass; odd-degree sign distinct  Inherited [r4]. |
| §7.8 ring naturality/reindexing/similarity | unipotent A, reduce mod2; swap basis | coefficients(1,−2,1)→(1,0,1); swapped matrix has same coefficients/traces | Pass  Inherited [r4]. |
| §7.8 representation trace of powers | C₂ acting diag(1,1,1,−1) | χ(g)=2; p=(2,4,2,4); polynomial `(X−1)³(X+1)` | Pass in characteristic0  Inherited [r4]. |
| §7.8 direct sums | diag(1,−1) plus one trivial | p₁0→1; p₂2→3; polynomial `(X²−1)(X−1)` | Pass  Inherited [r4]. |
| §7.9 power-sum basis | degree2,d=2,ℚ | p₁₁=s₂+s₁₁, p₂=s₂−s₁₁; determinant−2≠0 | Pass; now stated in Suggested.lean  Inherited [r4]. |
| §7.9 small-alphabet quotient | degree2,d=1 | relation p₁₁−p₂=0; dimension1 vs two proposed vectors | Pass  Inherited [r4]. |
| §8.1 Schur–Weyl equivalence | d=2,n=2 | dimension `4=1·3+1·1`; transposition eigenvalues +1 onSym²,−1 onΛ² | Pass  Inherited [r4]. |
| §8.1 simultaneous GL equivariance | g=diag(2,3),d=n=2 | eigenvalues onSym² `4,6,9`, onΛ² `6`; tensor action gives `4,6,6,9` | Pass; arbitraryS₂-map not enough  Inherited [r4]. |
| §8.1 all-dimensional boundary | d=0,n=0 and n=1; d=1,n=2 | dimensions `1=1`, `0=0`, `1=1+0` | Pass  Inherited [r4]. |
| §8.1 permutation action faithfulness | d=1,n=2 | transposition acts1; `1−τ` acts0; sign shape killed | Pass; native supplied fact  Inherited [r4]. |
| §9.1 diagram basis/algebra | k=0,1,2,3 | diagram counts `1,1,3,15`; k3=`6+9` | Pass  Inherited [r4]. |
| §9.1 loop product | e inB₂; disjoint e₁e₃ inB₄ | `e²=δe`; `(e₁e₃)²=δ²e₁e₃`; atδ2 coefficients2,4 | Pass  Inherited [r4]. |
| §9.1 associativity loop cocycle | e,e,e inB₂ | left loop sum `1+1=2`; right `1+1=2`; productδ²e | Pass  Inherited [r4]. |
| §9.1 permutation inclusion/unit | k=2 | `s²=1`, `se=es=e`; distinct basis vectors1,s stay independent evenδ0 | Pass  Inherited [r4]. |
| §9.1 coefficient generality | B₂(0) overℤ,𝔽₂ | free rank3 in both cases; e²=0 in both; base change reduces coefficients mod2 | Pass; commutative-ring construction now stated  Inherited [r4]. |
| §9.2 orthogonal action | n=2,k=2,e₀⊗e₀ | cup-cap sends to`e₀e₀+e₁e₁`; twice gives2times that cup | Pass  Inherited [r4]. |
| §9.2 symplectic loop and crossing | l=1,θ=ef−fe | capθ=`−1−1=−2`; e²=−2e; (−flip)θ=θ, flipθ=−θ | Pass  Inherited [r4]. |
| §9.2 no equal-slot generators | n=2,k=1; reflection diag(−1,1) | same-slot map sends e₀→e₀+e₁; compositions on e₀ give`−e₀+e₁` vs`−e₀−e₁` | Pass; a≠b necessary  Inherited [r4]. |
| §9.2 orthAction and zero dimension | n=0,k=0/1 | action scalar identity onℂ / unique map on0 | Pass  Inherited [r4]. |
| §9.3 Ξ₁ and self-duality direction | O₂;Sp₂ | orthogonal id→e₀e₀+e₁e₁; symplectic id→fe−ef=−θ | Pass  Inherited [r4]. |
| §9.3 Ξ₂ signs | Sp₂ id,cup-cap,crossing | ε=`+1,−1,−1`; cup-cap tensor`−θ_in⊗θ_out` | Pass  Inherited [r4]. |
| §9.3 matching relabeling | Sp₂ exchange endpoints of one arc | θ→−θ; orthogonal cup→same cup | Pass  Inherited [r4]. |
| §9.3 invariant spanning/odd tensors | O₁, degree2/3 | invariant dimensions1/0; matching span dim1 at degree2; −1 acts−1 at degree3 | Pass overℂ  Inherited [r4]. |
| §9.3 matching independence | O₂,degree4 | Gram diag4/off-diagonal2 has determinant32; n=2≥k=2 | Pass; corrected threshold  Inherited [r4]. |
| §9.3 symplectic dependence | Sp₂,degree4 | 3 tensors with relation `θ₁₂θ₃₄−θ₁₃θ₂₄+θ₁₄θ₂₃=0`; rank2 | Pass  Inherited [r4]. |
| §9.3 full orthogonal group hypothesis | O₂ vsSO₂,degree2 | invariant dimensions1 vs2; reflection negates alternating tensor | Pass; connected replacement false  Inherited [r4]. |
| §9.3 orthogonal FFT | O₃,k=2 | image span{1,s,e} dimension3; decomposition5+3+1 has commutant dimension3 | Pass  Inherited [r4]. |
| §9.3 reverse commutant | O₃,k=2 | group image and reverse commutant dimensions `5²+3²+1²=35` | Pass; complete reducibility now precedes FFT  Inherited [r4]. |
| §9.4 harmonicTensors definition | O₁,q=0,1,2 | dimensions1,1,0; positive-degree cap atq2 is1 on basis tensor | Pass; doc's n0 caveat read with q0 boundary  Inherited [r4]. |
| §9.4 orthogonal harmonic dimension | O₂,q=2,4; O₃,q=2,3 | tensor dimensions4,16,9,27 minus stacked-cap ranks1,14,1,9 give3,2,8,18 | Pass  Inherited [r4]. |
| §9.4 symplectic harmonic dimension | Sp₂,q=2,3,4 | dimensions4,8,16 minus cap ranks1,4,11 give3,4,5 | Pass  Inherited [r4]. |
| §9.4 harmonic action stability | O₂ reflection and slot flip on e₀e₁−e₁e₀ | images are negatives; contraction remains0 | Pass for both Lean stability theorems  Inherited [r4]. |
| §9.4 orthShapeSpace | O₂,q=2, shapes2,11 | symmetric traceless dimension2; alternating dimension1; ranges intersectH as claimed | Pass  Inherited [r4]. |
| §9.4 OrthAdmissible | n2, λ=2,11,22,111 | first-two-column sums2,2,4,3; booleans true,true,false,false | Pass; GL row bound cannot substitute  Inherited [r4]. |
| §9.4 nonvanishing iff | same four shapes | E dimensions2,1,0,0; nonzero flags true,true,false,false | Pass both directions  Inherited [r4]. |
| §9.4 empty shape/O₁ Check | q=0,n=0 or1 | column sum0; E∅ dimension1; admissible true | Pass; empty shape now included in Check  Inherited [r4]. |
| §9.4 shape stability/irreducibility | O₂,shape2 | isotropic weight lines have weights±2; reflection swaps them; no one-line subspace stable under fullO₂ | Pass; SO₂ alone would split  Inherited [r4]. |
| §9.4 harmonic decomposition | O₂,q2;O₃,q2;Sp₂,q3 | `3=2·1+1·1`; `8=5·1+3·1`; `4=dim Sym³` | Pass  Inherited [r4]. |
| §9.5 diagram ideals | k2,j0,1,2 | dimensions3,1,0; e²=δe remainsinI₁; tailI₂=0 | Pass  Inherited [r4]. |
| §9.5 trace filtration/splitting | O₂,k2;Sp₂,k3 | `4=3+1`; `8=4+4`; dimensions H andF₁ respectively3,1 and4,4 | Pass  Inherited [r4]. |
| §9.5 coordinate Hermitian argument | O₂ cup;Sp₂ θ | Hermitian norms2,2; cap-cup scalars2,−2; neither cup lies in its cap kernel | Pass; bilinear positivity not assumed  Inherited [r4]. |
| §9.5 quotient annihilator | k2,j0 | cup-cap image isF₁; induced map onT²/F₁ is0 | Pass  Inherited [r4]. |
| §9.6 partial matching count | (k,j)=(3,1),(4,2),(k,0) | counts3,3,1; factorial formula gives3,3,1 | Pass; empty matching is one element  Inherited [r4]. |
| §9.6 cup map and pair-order invariance | k4,j2, matching12|34 | swapping two length2 blocks is even; coefficient product unchanged | Pass  Inherited [r4]. |
| §9.6 Ψ spanning and kernel | Sp₂,k3,j1 | domain dim6, image/gr₁ dim4, kernel dim2 | Pass  Inherited [r4]. |
| §9.6 matching signs D_j | placements12,13,23 | shuffle signs(+1,−1,+1); D² diagonal(1,1,1) | Pass  Inherited [r4]. |
| §9.6 sufficient stability bound | O₁,k2,j1 | domain/image dim1 although1<4 | Pass; explicitly sufficient, not necessary  Inherited [r4]. |
| §9.6 stable dimension | O₆,k3,j1 | Gram eigenvalues8,5,5≠0; placement factor3, dimH¹6; gr₁dim18 | Pass  Inherited [r4]. |
| §9.7 Hom multiplicity and labels | O₃,k2 | group pieces5,3,1; Hom multiplicities1,1,1; total9 | Pass  Inherited [r4]. |
| §9.7 symplectic transpose label | Sp₂,k2 | H²dim3, crossing−1, cup-cap0; Brauer label11, group shape2 | Pass  Inherited [r4]. |
| §9.7 nonzero multiplicity boundary | O₁,k2,λ=∅; n0,k2 | positive-dimensional cup gives Homdim1; zero-dimensional tensor Homdim0 | Pass; zero case separated  Inherited [r4]. |
| §9.8 image vs abstract semisimplicity | Sp₂,k3,δ−2 | geometric tensor `V₃⊕2V₁`; commutant `ℂ⊕Mat₂`, dim5; abstractB₃ dim15 with singular cell Gram | Pass distinction  Inherited [r4]. |
| §9.8 B₂ exceptional parameter | δ0,±2 | e²0 atδ0; at nonzeroδ idempotent e/δ; semisimple at±2 | Pass  Inherited [r4]. |
| §9.8 B₃ zero parameter | δ0 | Gram determinant2, rank3; simple-square sum `1+1+4+9=15` | Pass; semisimple Check repaired  Inherited [r4]. |
| §9.8 nonsemisimple B₃ parameters | δ−2,1 | Gram ranks2,1 and determinants0,0 | Pass; exceptional set now {−2,1}  Inherited [r4]. |
| §9.8 sufficient bound/generic case | k3,δ4 | determinant54, rank3; δ4 outside{−2,1} | Pass  Inherited [r4]. |
| §9.9 cup relation | apply to e andf inSp₂ | D₁₂e=efe−fee, D₁₃e=eef−fee, D₂₃e=eef−efe; alternating sum0; f gives same cancellation | Pass  Inherited [r4]. |
| §9.9 raw crossing action | relation vector(v,−v,v) | s₁,s₂ both return(v,−v,v); raw formula agrees with−flip | Pass  Inherited [r4]. |
| §9.9 raw contraction action | relation vector(v,−v,v) | e₁ gives(−2v+v+v,0,0)=0; e₂ gives(0,0,v+v−2v)=0 | Pass  Inherited [r4]. |
| §9.9 normalization/Gram transport | D=diag(1,−1,1),δ−2 | standard Gram off-diagonal+1; DGD off-diagonals(−1,+1,−1); radicals(1,1,1) and(1,−1,1) | Pass  Inherited [r4]. |
| §9.9 quotient and multiplicity | Sp₂,k3 | cup quotient dim`6−2=4`; two copies of dim2 standard; harmonicdim4; total8 | Pass  Inherited [r4]. |
| Worked hook/square-sum examples | n=4,5 | `1+9+4+9+1=24`; `1+16+25+36+25+16+1=120` | Pass  Inherited [r4]. |
| §4.4 one-sided Kronecker transpose | S₃ trivial⊗trivial, then twist one factor | `(1,1,1)·(1,−1,1)=(1,−1,1)`; multiplicity of sign becomes1 | Pass; one-sided theorem included  Inherited [r4]. |
| §7.2 semistandard reverse-complement | alphabet {0,1}, word001 | P=001; reverse-complement011 has P=011; semistandard evacuation changes content(2,1)→(1,2) | Pass; shape stays3  Inherited [r4]. |
| §7.6 finite Frobenius supplier contract | S₂ class values(a,b) | Schur coefficients `((a+b)/2,(a−b)/2)`; three advertised power-sum declarations found0 times at pin | R01; restore owned finite formula  Inherited [r4]. |
| §7.8 padding probe | A=diag(1,2),r=2 | `2c₂=4`; `−(c₁p₁+c₀p₂)=−(−9+5)=4`; same signature appears twice | R02 here; delete auxiliary duplicate  Inherited [r4]. |
| §8.3 Schur/stable transpose | n=2,d=1 | row functor dim1, column dim0; stable ω(h₂)=e₂ then specialization0 | Pass; not a GL-isomorphism between those functors  Inherited [r4]. |
| §9.3 odd symplectic tensors in characteristic2 | rank1,degree3 | torus weights `3,1,−1,−3`, none0; scalar −1 acts+1, so that scalar argument alone fails | Pass; weight argument supplies vanishing  Inherited [r4]. |
| §9.1 zero coefficient ring | B₂ over zero ring | all vectors coincide0; free module indexed by3 diagrams is zero; rank/cardinality distinguished | Pass; no nontriviality falsely inferred  Inherited [r4]. |
| §9.6 four raw Sp₂ actions | k=3,C:ℚ⁶→ℚ⁸ | ranks C=4,kerC=2; each of Cs₁−ρ(s₁)C, Cs₂−ρ(s₂)C, Ce₁−ρ(e₁)C, Ce₂−ρ(e₂)C has all48 entries0 | Pass  Inherited [r4]. |
| Appendix F stabilizer | k=4,r=1, matching12 | actual stabilizer `{1,(12),(34),(12)(34)}` order4; pair wreath group order2 | Source error, not copied into roadmap  Inherited [r4]. |
| Appendix F stable bound | Sp₂,k=4,r=2 | `2k=8=dimV+3r`; three cup tensors have rank2, not3 | Source error; roadmap uses stronger sufficient bound  Inherited [r4]. |
| Appendix F full matching count | k=4,r=2 | count3; printed factorial expression `24/(4·4)=3/2`; corrected `24/(4·2)=3` | Source misprint  Inherited [r4]. |
| Appendix F SL₂ tensor fourth power | dimV=2 | tensor dimension16; printed summands `5+3·3+1=15`; corrected `5+9+2=16` | Source misprint  Inherited [r4]. |

The inherited jeu-de-taquin row uses LR reading order for LR and the distinct insertion-compatible bottom-to-top row word for rectification, as explained in [r4].

## Not verifiable

- **fultonHarris1991 §6.1**: the fresh sources-service request by authors/title/year returned no legal full text. The balanced-presentation mathematics and its Lean signature were checked independently; the exact source wording, page and hypotheses were not certified.
- **Carried from [r4], not re-fetched for untouched passages:** james1978 Chapter4/Theorems8.15,16.4,21.1 (Springer paywall); fultonHarris1991 Lecture4/Exercise4.4/Lemma4.26/Theorem6.3; fulton1997 and stanley1999 tableau/RSK/LR sections (publisher records without readable full text); sagan2001 §4.9/Theorem4.10.2 (paywall/timeout); macdonald1995 I.2–I.9 (OUP403/arXiv429); weyl1939 V.7 and brauer1937 §§3–5 (no legal full text obtained).
- **goodmanWallach2009**: main-book §§5.3.2,9.1.1,10.1.1–10.1.2,10.2.1/3/4/5 remain uncertified. [r4] read author contents and AppendixF, not the full main book or a complete signed-cell-action proof.
- **haiman2015**: the previously read Berkeley material is a course outline, not proofs of the listed lecture topics.

This review is complete despite these source limitations. No mathematical finding is inferred from inaccessible text alone. No source manifest was edited; the existing source key was reused for the failed Fulton–Harris request.

## Source issues

No new source error was found in the changed DDH locator. The following established AppendixF issues are carried from [r4], which gives the source-line witnesses and computed controls.

- **Error** in goodmanWallach2009 at Appendix F §F.1, printed p.2, lines 72–73: the source says the partial-matching stabilizer is the pair wreath product; it should be that product times the symmetric group on unmatched slots; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F §F.1, printed p.2, line 74: the source says the zero-pair matching set is empty; it should be a singleton containing the empty matching; affects a stated result.
- **Error** in goodmanWallach2009 at Appendix F Theorem F.1.3, printed p.4, line 134: the source says the displayed dimension bound ensures independence for both classical groups; it should be restricted or strengthened, since Sp₂ with k=4,r=2 satisfies it but has dependent cups; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F Example 1, printed p.4, line 148: the source says the full-matching denominator contains the square of m factorial; it should be 2 to the m times m factorial; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F equation (F.5), printed p.5, line 158: the source says the fourth SL₂ tensor power contains one trivial summand; it should be two trivial summands; affects a stated result.

[r4]: packages/SchurWeyl/reports/PRREVIEW-SchurWeyl~4.md
