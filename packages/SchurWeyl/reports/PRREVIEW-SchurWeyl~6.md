# Review of SchurWeyl (pull request #1164 at 84ed5e9)
Folder: `TauCetiRoadmap/RepresentationTheory/SchurWeyl/`

**Verdict:** accepted

## R01 (P3) — Delete the duplicate auxiliary Newton signature

**Location:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/MatrixTraceNewtonTargets.lean:1,17`; duplicate at `TauCetiRoadmap/RepresentationTheory/SchurWeyl/Suggested.lean:241`. Quote: “`import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff`”.

**Claim:** the auxiliary file still violates the single `import Mathlib` rule and duplicates a headline already in the main acceptance file. Its module docstring also lacks the required headline account. This is previous R02, unchanged.

**Witness:** `matrix_trace_newton` and `matrixTraceNewton` have identical elaborated binders and equations. For the unipotent 2×2 matrix and r=1,2,3, both give −2,2,0 on each side. The auxiliary file is not imported by `Suggested.lean`.

**Exact repair:** delete `MatrixTraceNewtonTargets.lean`; retain `matrixTraceNewton` in `Suggested.lean` and §7.8 in the README. The main module builds independently and retains the identical all-ring statement and those three computed values. This is a nonblocking form/duplication note, not a mathematical objection to Newton's recurrence. The gate does not detect this auxiliary-file violation.

## Previous findings

- R01 — repaired: README:698–729 owns all three finite Frobenius formulas and names their pinned inputs; Suggested:179–204 states them. README:220–222 and 886–892 use `TauCeti.ClassFunction.ind` with finite-index hypotheses. No replacement supplier gap remains.
- R02 — not repaired: MatrixTraceNewtonTargets:1,17 still has the submodule import and duplicate recurrence. Suggested:241 retains the same headline. Carried as this report's nonblocking R01.

No supplied repair report marks either finding “not actionable in this package.”

## Verified sound

:robot: AI review by Codex. This is an **incremental re-review of 146 changed lines since ef74fd4**, at `84ed5e99a0a4cfece59eb2c7f65c14ba90070821`. I checked both previous findings, all changed passages and their immediate inputs and consumers. Untouched computations below are carried explicitly from [r5], which in turn identifies evidence inherited from [r4]. They are not represented as fresh calculations. Root README/CONTRIBUTING, the family index and the main-branch ClassicalGroups and CharacterTheory roadmap shapes were read. No pull-request file was changed.

The repair builds the missing bridge on native objects: it does not redefine Schur polynomials, characters or the characteristic map. The forward and factorial-weighted inverse formulas cover every finite alphabet and commutative ring, including the zero ring and characteristics two and three. Only the normalized formula uses rational coefficients. The class-function theorem retains the native carrier's bound n≤d. No new data definition, conclusion-shaped hypothesis, `set_option`, algorithm, route-specific restriction or supplier edge was introduced. The six new Checks distinguish signs, class-size factors, small alphabets and division in positive characteristic. The diff outside the folder is empty, both since the previous head and against origin/main after the authorized family-index exclusion; the family index itself is unchanged.

**Gate and elaboration.** The worker's gate passes, including its build. The independently rerun gate reports every scanner and dependency check as zero and ends `OK`; that invocation does not report a build field, so I ran the targeted build separately. `lake build TauCetiRoadmap.RepresentationTheory.SchurWeyl.Suggested` succeeds (9,108 jobs). Direct `lake env lean` on `Suggested.lean` succeeds with **26 expected sorry warnings and no other diagnostics**. The auxiliary file also elaborates with its one expected warning.

The separate dependency command returns exactly:

```text
depcheck: 204 roadmaps, 1498 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. All 28 `*Needs:*` occurrences and the supplier contracts were read. The changed order is finite Frobenius → character Murnaghan–Nakayama / finite Hall → stable Frobenius; no consumer is used to prove its own prerequisite.

A scratch copy printed `#check @name` for **all 41 main declarations** (26 theorems and 15 definitions/abbreviations/structures); the auxiliary signature was checked separately. The three new signatures retain `[Fintype σ]`, `[CommRing R]`, all partition parameters, natural-number division before casting in the inverse, and n≤d with a native complex class function in the characteristic formula. They match the prose. No binder disappeared and no signature repair is needed. Each new theorem fails all three single-tactic probes `simp`, `rfl`, and `infer_instance`; object searches and the opened declarations supply no exact library lemma for any of them. The 23 untouched theorem probes are inherited from [r5].

**Headline coverage.** The programme's headlines are Specht sign-transpose/self-duality and induction/Kronecker comparisons; LR and character Murnaghan–Nakayama; the finite Frobenius formulas and Hall isometry; stable symmetric functions, Hall form and Frobenius induction; matrix Newton and finite power-sum bases; simultaneous tensor decomposition and the balanced presentation; Brauer FFT, harmonics, multiplicity and semisimplicity. The three added formulas close the previously missing statable headline. The unchanged module docstring accounts for stable-ring/Frobenius-induction, RSK carrier comparisons, Brauer algebra/cell/filtration and arbitrary-slot symplectic headlines by naming the missing carriers. No new weakened substitute or padding was found.

**Source verification.** The newly cited work was fetched through the sources service from the exact open arXiv v5, without editing any manifest. [Etingof et al., arXiv:0901.0827v5](https://arxiv.org/abs/0901.0827v5), §4.20, Proposition 4.61, printed p.66, is at **etingof2011 lines 2747–2770**. Its sum is over shapes fitting the alphabet; the roadmap's all-partition sum agrees because the other Schur polynomials vanish. The text gives the complex forward formula, not an arbitrary-ring theorem. The roadmap explicitly owns the integral descent and coefficient-change argument. Its additional locator §4.15, Theorem 4.47, printed p.61, is correct at **etingof2011 lines 2546–2565**, with the stated number-of-rows bound. The inverse and characteristic forms follow from the separately named orthogonality and coordinate inputs, rather than being falsely attributed to Proposition 4.61.

All 15 targets in this round's seeded sample are accounted for below. Only §7.4's finite-formula dependency is changed within the sample; §7.9 and §8.3 are downstream checks of the repaired bridge. Source conclusions for untouched passages are carried from [r5]/[r4], with inaccessible texts still explicitly uncertified. No README locator is marked unverified.

| Seeded target | Verification and limits |
|---|---|
| 4.1 tableau transpose/sign automorphism | Untouched; [r5] transpose, noncommuting factor order and sign-automorphism rows carried. Fulton–Harris/James text remains uncertified. |
| 4.2 sign-transpose intertwiner | Untouched; [r5] scalar 2,3,1 and inverse 1/2,1/3,1 rows carried. Book locators remain uncertified. |
| 4.3 character identity/self-duality | Untouched; [r5] S₄ characters, S₃ Gram determinant 3 and contragredient-direction tests carried. Book text remains uncertified. |
| 7.1 skew tableaux/jdt/Knuth | Untouched; [r5] filling, reading-word, insertion and rectification rows carried. Haiman's outline supplies topics, not proofs; Fulton/Stanley text unavailable. |
| 7.2 LR/evacuation/RSK | Untouched; [r5] LR counts, repeated-letter and permutation-reversal controls carried. Prior open Stanley/Lenart checks are retained; book limitations remain. |
| 7.4 finite Hall/isometry | Changed dependency freshly verified: §7.3 supplies the integral forward formula and native column orthogonality supplies diag(z). Fresh S₂/S₃ and characteristic-two values appear below. Macdonald text remains unavailable. |
| 7.9 finite power-sum bases | Repaired formula gives the rational character-table change of basis. Fresh degree-two determinant −2 and one-variable rank 1 agree with the unchanged bound; [r5] other rows carried. |
| 8.3 Schur/stable transpose | Consumer reread; it does not equate finite-rank transposed Schur functors. At d=1 the row/column dimensions remain 1/0. Source limitations carried. |
| 9.1 Brauer algebra | Untouched; diagram counts and loop tests carried from [r5]. Prior Doty–Hu §1 pp.2–3 text supports integral algebra/base change; Brauer original unavailable. |
| 9.2 orthogonal/symplectic actions | Untouched; [r5] corrected DDH arXiv v2 §1 p.4 locator and signed-generator computations carried. |
| 9.4 harmonic tensors/shape spaces | Untouched; [r5] kernel ranks, admissibility, nonvanishing and irreducibility rows carried; main Goodman–Wallach text remains uncertified. |
| 9.5 diagram ideals/trace filtration | Untouched; [r5] ideal dimensions, splitting and quotient-annihilator rows carried; Appendix F evidence and main-book limits retained. |
| 9.7 multiplicities/labels | Untouched; [r5] Hom multiplicities, transpose labels and zero-dimensional controls carried. Full signed cell comparison remains uncertified from the available supplement. |
| 9.8 semisimplicity | Untouched; [r5] B₃ Gram ranks, zero-parameter example and geometric-image distinction carried, with prior Rui/DDH source checks. |
| 9.9 rank-one symplectic examples | Untouched; [r5] corrected signed-action locator, cup relation and four action-matrix computations carried. |

**Pinned inputs and proof route.** The manifest and actual package HEADs agree: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These ten file locations were reopened; the listed declarations provide precisely the changed route's inputs.

| File and line at the pin | Declaration/body and implication |
|---|---|
| `TauCeti/RepresentationTheory/Symmetric/PermutationModule/PowerSum.lean:191,211` | `psumPart_eq_sum_card_fixedPoints_smul_msymm`, `psumPart_eq_sum_character_smul_msymm`: arbitrary-alphabet monomial expansion; character version over ℚ. Its introductory discussion does not constitute a proved Schur expansion. |
| `TauCeti/RepresentationTheory/Symmetric/PermutationModule/YoungRule.lean:192` | `char_permutationModule_eq_sum_kostkaNumber_mul_spechtChar`: rational Young's rule. Substitution followed by finite-sum interchange gives the proposed coefficient matrix. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Monomial.lean:353` | `schurPoly_eq_sum_kostkaNumber_smul_msymm`: the same Kostka entries over general coefficients, including vanishing shapes in small alphabets. |
| `TauCeti/RepresentationTheory/Symmetric/Specht/Orthogonality.lean:239,265` | Integer row orthogonality has natural class-size weights n!/z; rational form divides by z. These justify inverse normalization without division in an arbitrary ring. |
| `TauCeti/RepresentationTheory/Symmetric/ClassSize.lean:104,192,197` | `zPart_pos`, `card_partition_parts_mul_zPart_fin`, `zPart_dvd_factorial`: positivity, class sizes and exact natural division. |
| `TauCeti/RepresentationTheory/Symmetric/FrobeniusCharacteristic.lean:45,66,88` | Native map is the Specht/Schur basis equivalence; its coordinate and application formulas are Schur expansions. The added cycle-type expansion is stronger. |
| `TauCeti/RepresentationTheory/Symmetric/Partitions.lean:113` | `partitionEquivConjClasses`: partitions of n correspond to conjugacy classes of permutations on `Fin n`. |
| `TauCeti/RepresentationTheory/CharacterTable/ClassFunction.lean:80,85` | `toConjClasses` descends a class function and evaluates at a representative without averaging or conjugating its value. |
| `TauCeti/RepresentationTheory/Induction/ClassFunction.lean:265,446` | `ClassFunction.ind`: semiring coefficients, subgroup of a group and finite index, exactly as repaired. It does not require a field or invertible subgroup order. |
| `Mathlib/Algebra/MvPolynomial/Eval.lean:330,396` | `MvPolynomial.map` and `map_injective`: coefficient change and injectivity. The ℤ→ℚ descent uses an injective map; subsequent ℤ→R specialization does not require injectivity. |

The proof is acyclic: monomial power sums + Young's rule + Kostka expansion yield forward Frobenius over ℚ; coefficient injectivity descends to ℤ and specialization gives R. Integral row orthogonality gives the factorial-weighted inverse. Over a ℚ-algebra, n! is a unit, yielding the normalized inverse. Schur coordinates and character orthogonality then yield the characteristic formula. Character Murnaghan–Nakayama uses this forward formula with the existing polynomial rule and independence in a sufficiently large alphabet. The Hall computation uses column orthogonality. These are mathematical routes, not unowned upstream promises.

**Ownership and cross-roadmap citations.** Searches used `roadmaps grep` and `roadmaps show`, main, the available open heads, board packages and both pinned libraries, by the power-sum/Schur/characteristic objects as well as the new names. No independent owner or fully qualified declaration collision was found. Main `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:335–342` and `Suggested.lean:219–227` already place this bridge in SchurWeyl. The repair completes that existing work on native carriers; it is not a competing roadmap. Other occurrences concerning arithmetic Frobenius or product-one character formulas concern different objects. The pinned monomial expansion's prose suggests the route but does not already state any of the three new signatures.

The seven named roadmap contracts/boundaries were resolved again:

| Citation | Passage read and ownership |
|---|---|
| ClassicalGroups Layers 2–5 | Main `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:216–235,272–301`: Schur image, row-bound vanishing, GL characters and dimensions; Schur identities and tensor/Specht decomposition are consumed from SchurWeyl. |
| CharacterTheory Layers 2,5 and §3.6 | Main `TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md:347–365,521–548,866–910`: generic irreducible indexing, external products and the native table specification. |
| InductionRestriction Layer 2 | Main `TauCetiRoadmap/RepresentationTheory/InductionRestriction/README.md:268–340`: induced characters and reciprocity, with finiteness and invertible group order where normalized pairings need them. The complex symmetric-group application satisfies them. |
| ReductiveGroups Layers 3,6 | Main `TauCetiRoadmap/ReductiveGroups/README.md:234–246,466–477`: components and characteristic-zero connected reductive/linearly-reductive equivalence. The unchanged roadmap supplies component averaging for Oₙ. |
| TemperleyLieb Layers 2–6 | Main `TauCetiRoadmap/TemperleyLieb/README.md:208–216`: planar/Brauer boundary and cellular infrastructure; no new finite Frobenius ownership. |
| LieHighestWeight Layer 9 | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:1432–1446`: consumes classical Schur modules and supplies differentiation/intertwiner dictionaries. |
| TensorProductCombinatorics | Given open head `TauCetiRoadmap/TensorProductCombinatorics/README.md:280–328`: consumes SchurWeyl's skew/LR, evacuation and stable-ring contracts rather than rebuilding them. |

**Fresh computed adversarial table.** The following rows cover all changed mathematical statements, the three new signatures, all six new Checks, the repaired induction contract and the affected consumers. Exact arithmetic for the degree-two and degree-three character matrices and forward/inverse values was recomputed. Evaluating a degree-three characteristic at (1,2) means evaluation in three variables at (1,2,0), so its n≤d hypothesis is respected. Numerical tests discriminate conventions; the proof route above, not the tests alone, supports the general statements.

| Statement | Instances tried | Computed left side / right side | Result; change |
|---|---|---|---|
| §7.3 forward Frobenius; Suggested:179 | n=2, (x,y)=(1,2), columns 11,2 | p=(9,5); Schur=(7,2); character combinations=(7+2,7−2)=(9,5) | Pass; owned headline replaces absent supplier |
| §7.3 forward sign convention | n=2, (x,y)=(1,−1) | p=(0,2); Schur=(1,−1); sums=(0,2); reversed character rows give −2 for p₂ | Pass; sign control |
| §7.3 nonabelian forward formula | S₃, (1,2,0), columns 111,21,3 | p=(27,15,9); Schur=(15,6,0); combinations=(15+12,15,15−6)=(27,15,9) | Pass; all three columns |
| §7.3 degree-zero/empty group | n=d=0; scalar class function a=3 | z∅=1; p∅=s∅=1; forward/inverse 1=1; characteristic 3=3/1 | Pass; no 0/0 |
| §7.3 degree one | alphabet (2), trivial S₁ | z=1, 1!=1, p₁=s₁=2; inverse 2=2; f=3 gives 6=6 | Pass |
| §7.3 small alphabets | n=2, alphabet (2); n=3, alphabet (2) | Schur=(4,0) / (8,0,0); forward p=(4,4) / (8,8,8) on both sides | Pass; no n≤d restriction on polynomial identity |
| §7.3 empty alphabet, positive degree | n=2,3 | every p and every Schur term=0; forward/inverse 0=0 | Pass |
| §7.3 arbitrary-ring forward/inverse | R=𝔽₂, x=y=1, n=2 | p=(0,0); Schur=(1,1); forward=(0,0); factorial inverse=(0,0) on both sides | Pass; normalized division by 2 excluded |
| §7.3 characteristic three | R=𝔽₃, x=y=1, n=3 | p=(2,1,2); Schur=(1,2,0); forward=(2,1,2); inverse=(0,0,0) on both sides | Pass; normalized division by 3 excluded |
| §7.3 zero ring | any alphabet, n=0 or2 | 1=0 in R; every coefficient and both sides of each integral identity=0 | Pass; no Nontrivial assumption needed |
| §7.3 nonreduced coefficients | R=ℤ[ε]/ε², x=1+ε,y=2 | p₂=5+2ε=(7+4ε)−(2+2ε); p₁²=9+6ε=(7+4ε)+(2+2ε) | Pass; no domain/reduced hypothesis needed |
| §7.3 integral inverse; Suggested:188 | S₂ at (1,2), shapes 2,11 | 2s=(14,4); weighted p combinations=(9+5,9−5)=(14,4); natural weights=(1,1) | Pass; division occurs before casting |
| §7.3 integral inverse, S₃ | shapes 3,21,111 at (1,2,0) | 6s=(90,36,0); weights=(1,3,2); sums=(27+45+18,54−18,27−45+18)=(90,36,0) | Pass; exact class-size factors |
| §7.3 inverse over a ring with nonunits | R=ℤ/4, n=2, x=1,y=2 | s=(3,2), p=(1,1); 2s=(2,0)=(1+1,1−1); 2 is not a unit | Pass; factorial identity does not require division in R |
| §7.3 normalized inverse | ℚ and ℚ[ε]/ε², degree2 row | 7=(9+5)/2; 7+4ε=((9+6ε)+(5+2ε))/2 | Pass; rational scalar mapping suffices |
| §7.3 normalized inverse, standard S₃ | (1,2,0) | s₂₁=6=27/3−9/3; integral version36=54−18 | Pass; new Check matches signature |
| §7.3 characteristic; Suggested:198 | S₂, f=(1,0), (1,2) | Schur coordinates=(1/2,1/2); value9/2=(1/2)·9+0·5; omitted denominator gives9 | Pass; proper normalization |
| §7.3 characteristic linearity/bilinearity | S₂, f=(i,0), (1,2) | value9i/2=(i/2)·9; conjugating f would give−9i/2 | Pass; native map is complex-linear |
| §7.3 characteristic, non-character class function | S₃, f=(1,2,3), (1,2,0) | Schur coordinates=(13/6,−2/3,1/6); value57/2=27/6+15+9 | Pass; quantification over arbitrary class functions meaningful |
| §7.3 inputs: Young/Kostka route | S₂ transposition | permutation characters=(1,0); monomial p₂=m₂; after Young rule s₂−s₁₁=(m₂+m₁₁)−m₁₁=m₂ | Pass; no circular Frobenius input |
| §7.3 row orthogonality and z positivity | S₃; z=(6,2,3), weights=(1,3,2) | weighted character-row Gram=diag(6,6,6); off-diagonals0; all z>0 and 6/z=(1,3,2) | Pass; integral inverse input |
| §7.3 character Murnaghan–Nakayama consumer | κ=21, cycle3 | coefficient of s₂₁ in p₃ is−1; unique full rim hook has height1 and contributes−1 | Pass; uses new forward theorem |
| §7.4 Hall consumer | S₂ and S₃, d≥n | power-sum Gram=diag(2,2) / diag(6,2,3); off-diagonals0, equal z-weights | Pass; repaired supply |
| §7.4 Hall stable-range negative control | n=2,d=1 | p₂=p₁₁=x²; cross pairing1≠0 and norm1≠2 | Pass; bound retained |
| §7.4 Hall in characteristic two | n=d=2 | both power sums have Schur coordinates(1,1); pairings1+1=0=z mod2 | Pass; no power-sum basis claimed here |
| §7.6 native induction contract | S={1} in S₂; S=S₂; scalar character1 | induced values(2,0); whole-group induction(1,1); characteristic p₁² / s₂ respectively | Pass; finite indices2,1 |
| §7.6 block-induction product | S₁×S₂→S₃, trivial factors, (1,2,0) | induced values(3,1,0); ch=(3/6)27+(1/2)15=21; h₁h₂=3·7=21 | Pass; native map and product convention agree |
| §7.9 finite power-sum basis consumer | n=d=2 overℚ; d=1 | Schur transition [[1,1],[1,−1]], determinant−2; one-variable family(x²,x²) has rank1 | Pass; rationality and bound retained |
| §8.3 transpose consumer | n=2,d=1 | dim row=1, dim column=0; stable ω(h₂)=e₂ specializes to0 | Pass; no finite-rank isomorphism asserted |
| R01 duplicate Newton signature | A=[[1,1],[0,1]], r=1,2,3 | c=(1,−2,1), positive power traces2; r cᵣ=(−2,2,0)=recurrence RHS | Mathematically sound; delete auxiliary duplicate |

**Carried-forward adversarial table: 176 rows.** These are the untouched mathematical tests from [r5]. The three superseded finite-Frobenius/supplier rows are replaced by the 30 fresh rows above. Locators in these inherited rows refer to the previous head; historical repair descriptions are evidence from that report, not changes claimed in this round.

| Statement | Instances tried | Computed left side / right side | Result; change |
|---|---|---|---|
| §8.2 relation span, row shape; Suggested:255 | d=n=2, μ=(2), basis 00,01,10,11 | R=swap−I has columns 0,10−01,01−10,0; rank1; quotient dimension 4−1=3 | Pass; real definition, no extra hypotheses Inherited [r5]. |
| §8.2 relation span, column shape | d=n=2, μ=(11) | R=swap+I has columns 2·00,01+10,01+10,2·11; rank3; quotient dimension1 | Pass; wrong trivial action gives3 Inherited [r5]. |
| §8.2 group-algebra relations | a=3·1+2·(01), both shapes | ρ(a)−χ(a)I=2(swap−χ((01))I); both spans have ranks1/3 as above | Pass; linear extension adds no relations Inherited [r5]. |
| §8.2 quotient comparison; Suggested:265 | row map Qs(a,b,c,d)=(a,b+c,d); column Qa(a,b,c,d)=b−c | ranks Qs,Qa=3,1; QsRs=0 and QaRa=0; kernel dimensions1,3 equal relation dimensions1,3 | Pass; surjective with exact kernel Inherited [r5]. |
| §8.2 comparison excludes zero/proper-image maps | row target dimension3 | zero-map rank0≠3, kernel dimension4≠1; Qs rank3, kernel dimension1 | Pass; conditions discriminate Inherited [r5]. |
| §8.2 GL equivariance; Suggested:269–272 | g=diag(2,3), tensor action G=diag(4,6,6,9) | QsG−diag(4,6,9)Qs=0 (12 entries); QaG−6Qa=0 (4 entries) | Pass; eigenvalues4,6,9 and6 Inherited [r5]. |
| §8.2 relation stability/action descent | same G, Rs=swap−I, Ra=swap+I | GRs−RsG=0 and GRa−RaG=0 (16 entries each); row generator scaled by6 | Pass; general route uses commuting actions Inherited [r5]. |
| §8.2 universal property, both directions | row scalar functional L=(a,b,c,d) | LRs=(0,c−b,b−c,0)=0 iff b=c; then unique quotient coefficients (a,b,d). L=(0,1,0,0) gives (0,−1,1,0)≠0 | Pass; balanced iff factors uniquely Inherited [r5]. |
| §8.2 column universal property | scalar functional L=(a,b,c,d) | LRa=(2a,b+c,b+c,2d)=0 iff a=d=0,c=−b; unique factor b·Qa | Pass over ℂ Inherited [r5]. |
| §8.2 n=0, including d=0 | trivial S₀, empty tensor | relation rank0; source, quotient, target dimensions1,1,1; Q=[1] has kernel0 | Pass; no accidental positive-rank bound Inherited [r5]. |
| §8.2 d=0,n>0 | n=1 and2 | tensor, source, quotient and target dimensions0; unique map 0→0 is surjective with kernel0 | Pass Inherited [r5]. |
| §8.2 ℓ(μ)>d | d=1,n=2, column | relation matrix[2], rank1; source dimension1, quotient/target dimensions0/0; zero surjection has full kernel | Pass; opposite row shape gives quotient1 Inherited [r5]. |
| §8.2 right action, noncommutative control | S₃, σ=(01),τ=(12),v=012 | (v·σ)·τ=v·(στ)=120; reversed product gives201 | Pass; inverse in definition required Inherited [r5]. |
| §8.2 dependence on self-duality/§8.1 | S₂ row/sign and S₃ standard | invariant Gram forms [1],[1],[[2,1],[1,2]] have determinants1,1,3; over ℂ contraction keeps multiplicities1,1,2 at d=2,n=3 | Pass; no arbitrary map in the hypothesis Inherited [r5]. |
| §9.2 corrected source convention | Sp₂, θ=ef−fe | cap(θ)=−2; (−flip)θ=θ; E²+2E=0 (16 entries). DDH uses opposite form and opposite cup, giving identical E | Pass; dipperDotyHu2008 lines177–187, §1 p.4 Inherited [r5]. |
| §9.9 corrected citation and relation | Sp₂, free vector e | D₁₂e=efe−fee, D₁₃e=eef−fee, D₂₃e=eef−efe; D₁₂e−D₁₃e+D₂₃e=0 | Pass; same source display supports signed generators Inherited [r5]. |
| Auxiliary duplicate Newton control | unipotent 2×2 matrix, r=1,2,3 | r·cᵣ=−2,2,0 and −Σcᵣ₋ⱼ tr(Aʲ)=−2,2,0 in both signatures | Pass mathematically; delete duplicate file Inherited [r5]. |
| Partitions/diagrams/classes, consumed Layers 0–1 | n=0,2,3 | partition/class counts `1/1`, `2/2`, `3/3`; S₃ class sizes `1+3+2=6` | Pass Inherited [r5]. |
| Dominance and conjugation | (3) dominates (21) | prefix sums `(3,3)/(2,3)`; transposes `(111),(21)` reverse the inequalities `(2,3,3)≥(1,2,3)` | Pass Inherited [r5]. |
| Standard tableaux/count | ∅,(2),(11),(21) | counts `1,1,1,2`; hook dimensions `1,1,1,2` | Pass Inherited [r5]. |
| Young subgroup/index | λ=(21), n=3 | order `2!1!=2`; index `3`; `3·2=6` | Pass Inherited [r5]. |
| Row/column symmetrizer order | tableau 01/2 | `a=1+(01)`, `b=1−(02)`; `ab−ba=(02)(01)−(01)(02)≠0` | Pass; order matters Inherited [r5]. |
| Specht realization/classification, consumed | S₂,S₃ | dimensions `(1,1)` and `(1,2,1)`; square sums `2,6` | Pass Inherited [r5]. |
| §4.1 tableau transpose | 01/2, ∅ | transpose `02/1`; row group `{1,(02)}` equals original column group; empty maps to empty | Pass Inherited [r5]. |
| §4.1 sign algebra automorphism | τ=(01), c=(012) | `ε(τ)=−τ`, `ε(c)=c`; `ε(τ)²=1=ε(τ²)` | Pass Inherited [r5]. |
| §4.1 sign involution | τ=(01) | `ε²(τ)=−(−τ)=τ` | Pass Inherited [r5]. |
| §4.1 symmetrizer transformation | row (2) | `ε(1+τ)=1−τ=b_column`; transformed `c` has reversed factor order in shape21 | Pass Inherited [r5]. |
| §4.1 wrong-model Check | c=(012) | `ε(c)=c`; inversion gives `c⁻¹=(021)≠c` | Pass; repaired Inherited [r5]. |
| §4.2 sign-transpose isomorphism | λ=(2),(21),∅ | characters `(1,1)·(1,−1)=(1,−1)`; `(2,0,−1)·(1,−1,1)=(2,0,−1)`; `1·1=1` | Pass Inherited [r5]. |
| §4.2 composite scalar | n=2 row; n=3 shape21; n=0 | `κ=n!/f=2,3,1`; composites multiply by `2,3,1`, not always 1 | Pass Inherited [r5]. |
| §4.2 inverse denominator | same shapes | nonzero rational scalars `2,3,1`; inverses `1/2,1/3,1` | Pass Inherited [r5]. |
| §4.3 character transpose | S₄ shape31 | `(3,1,−1,0,−1)·(1,−1,1,1,−1)=(3,−1,−1,0,1)` | Pass Inherited [r5]. |
| §4.3 self-dual form | S₃ shape21 | Gram `[[2,1],[1,2]]`, determinant `3`; determinant modulo3 `0` | Pass over ℚ; characteristic hypothesis matters Inherited [r5]. |
| §4.3 contragredient direction | 3-cycle on basis e₀−e₂,e₁−e₂ | action `[[−1,−1],[1,0]]`; `gᵀBg=B`; `gᵀ≠(g⁻¹)ᵀ` | Pass; forward dual action excluded Inherited [r5]. |
| §4.4 induction/sign projection | S₁×S₁→S₂ | regular character `(2,0)`; sign product `(2,0)`; both multiplicities1 | Pass; generic comparison now imported Inherited [r5]. |
| §4.4 Kronecker double transpose | standard S₃ square | `(2,0,−1)²=(4,0,1)=(1,1,1)+(2,0,−1)+(1,−1,1)` | Pass; now stated in Suggested.lean Inherited [r5]. |
| §4.4 simultaneous three-index transpose not asserted | all three S₃ shapes (3) | `g((3),(3),(3))=1`; `g((111),(111),(111))=0` | Correct exclusion Inherited [r5]. |
| §5.1 symmetrizer scalar/hook product | (21) | hooks `3,1,1`, product3; `3!/2=3` | Pass Inherited [r5]. |
| §6.1 table comparison/specification | S₃ | standard row weighted square `1·4+3·0+2·1=6`; normalized norm1 | Pass; comparison with supplied specification Inherited [r5]. |
| §6.1 column normalization/class signs | S₃ transposition,3-cycle | column square sums `1+1+0=2=z₂₁`; `1+1+1=3=z₃`; signs `−1,+1` | Pass Inherited [r5]. |
| §7.1 skewCells | inner=(1), outer=(21); invalid inner=(2),outer=(1) | skew cells `{(0,1),(1,0)}`; invalid difference empty but `inner≤outer` false | Pass; carrier excludes invalid shape Inherited [r5]. |
| §7.1 skew semistandard tableau | straight column11 | entries `0,1` satisfy `0<1`; `0,0` fail `0<0`; outside entries forced0 | Pass Inherited [r5]. |
| §7.1 skewContent | two isolated cells with 0,1 | counts `(1,1,0,…)`, total2; outside zeroes do not add to content | Pass Inherited [r5]. |
| §7.1 finite bounded fillings/conversion | shape(2), alphabet {0,1} | weak rows `00,01,11`: count3; `10` excluded; bound0 gives none for a nonempty shape | Pass Inherited [r5]. |
| §7.1 straight standard conversion | shape21 | `01/2`, `02/1`: count2 on both carriers; empty shape count1 | Pass Inherited [r5]. |
| §7.1 reading order | cells (0,2),(0,1),(1,0) | order `(0,2),(0,1),(1,0)`; entries `1,0,0` read100, not001 | Pass Inherited [r5]. |
| §7.1 ballot predicate | 001,010,100 | prefix differences #0−#1: `(1,2,1)`, `(1,0,1)`, `(−1,0,1)` | First two true, third false Inherited [r5]. |
| §7.1 row insertion/bumping | insert1 into row02 | bumps2; result01/2; insert0 into00 yields000 | Pass; weak-row convention Inherited [r5]. |
| §7.1 reverse insertion | 01/2, remove lower corner | reverse bump returns entry1 and row02 | Pass; inverse test Inherited [r5]. |
| §7.1 Knuth relations | 021↔201 and 102↔120 | insertion tableaux respectively `01/2` on both sides and `02/1` on both sides | Pass Inherited [r5]. |
| §7.1 repeated-letter Knuth boundaries | 010↔100 | both insert as00/1; 001 inserts as001, so arbitrary adjacent swapping fails | Pass Inherited [r5]. |
| §7.1 Greene row sums | word102 | maximum weak increasing subsequence length2; two disjoint subsequences cover3; row sums `2,3` | Pass Inherited [r5]. |
| §7.1 jeu de taquin/rectification | skew21/1 with (0,1)=0,(1,0)=1 | slide0 left then exit: straight column01; reading word01 inserts row01, so use the appropriate reverse/row-reading convention in the conversion | Convention-sensitive; see note below Inherited [r5]. |
| §7.2 LRTableau cardinality | μ=ν=(1), κ=(2),(11) | one ballot filling for each; coefficients `1,1` | Pass Inherited [r5]. |
| §7.2 LR coefficient with empty/invalid shapes | μ=ν=κ=∅; μ not≤κ | empty filling count1; invalid shape count0 | Pass Inherited [r5]. |
| §7.2 LR coefficient2 | μ=ν=(21),κ=(321) | eligible ballot fillings001,010; 100 fails; count2 | Pass Inherited [r5]. |
| §7.2 reading direction negative control | (32)/(1), content22 | rows·01/01 read1010: false; rows·00/11 read0011: true; total1 | Pass Inherited [r5]. |
| §7.2 littlewoodRichardson | s₁², d=2 | `(x+y)²=(x²+xy+y²)+xy` | Pass Inherited [r5]. |
| §7.2 diagramLittlewoodRichardson | d=1; zero ring | `x²=x²+0`; over zero ring all terms0 | Pass; semiring generality retained Inherited [r5]. |
| §7.2 LR symmetry and shape support | c^(21)_((2),(1)) and reverse | both1; c^(1)_((2),∅)=0 by shape/size | Pass Inherited [r5]. |
| §7.2 vertical Pieri | s₁e₁; s₂e₁ | `s₂+s₁₁`; `s₃+s₂₁`; adding both new boxes to one row excluded when strip size2 | Pass Inherited [r5]. |
| §7.2 evacuation | tableau02/1 | evacuation01/2, then02/1; shape21 both times | Pass Inherited [r5]. |
| §7.2 permutation RSK/inverse symmetry | 102 and inverse102 | `P=Q=02/1`; pair swap leaves pair unchanged; empty maps to empty pair | Pass Inherited [r5]. |
| §7.2 word RSK reversal exclusion | 00 | reversed word still inserts as row00, shape2; transpose would have shape11 | Pass; no longer asserted for repeated letters Inherited [r5]. |
| §7.2 corrected permutation reversal | 102→201 | `P:02/1→01/2`; `Q:02/1→02/1`; `evac(Q)ᵗ=02/1` | Pass for corrected identities Inherited [r5]. |
| §7.2 nonnegative-matrix RSK weights | 1×1 matrix [2] | insertion row00 and recording row00, total size2; zero matrix gives two empty tableaux | Pass Inherited [r5]. |
| §7.3 character M–N | κ=21,ρ=3 | one rim hook, height1: `χ=−1=(−1)·1` | Pass Inherited [r5]. |
| §7.3 disconnected rim-hook rejection | κ=21,ρ=21,r=2 | no connected eligible skew shape; `χ=0=empty sum`; admitting it would give−1 | Pass Inherited [r5]. |
| §7.3 column sign | κ=111,ρ=3 | height2; `χ=1=(−1)²` | Pass Inherited [r5]. |
| §7.3 S₄ non-hook case | κ=211,ρ=31 | no eligible size3 hook; `χ=0=0` | Pass Inherited [r5]. |
| §7.3 height vs width Check | κ=22,ρ=22 | correct height sum `1−(−1)=2`; wrong column sign gives `−1+(−1)=−2` | Pass; repaired Inherited [r5]. |
| §7.3 empty recursion base | n=0,r=1,κ=1 | `χ¹(1)=1`; height0 times χ∅=1 | Pass Inherited [r5]. |
| §7.4 hallForm definition | d=2,n=2 | Schur Gram identity2; monomial-coordinate norm(s₂)=2 rather than1 | Pass; wrong form excluded Inherited [r5]. |
| §7.4 hallForm_psumPart | d=2,n=2 | norms `2,2`; cross pairing `1−1=0`; z values2,2 | Pass Inherited [r5]. |
| §7.4 small-alphabet exclusion | d=1,n=2 | p₂=p₁₁=x²; norm and cross pairing1 rather than2,0 | Pass; bound needed Inherited [r5]. |
| §7.4 arbitrary commutative ring Hall identity | R=𝔽₂,d=n=2 | p₂=p₁₁, their Schur coordinates(1,1); self-pairing `1+1=0=z mod2` | Pass; no basis over 𝔽₂ claimed Inherited [r5]. |
| §7.4 finite Frobenius isometry | S₂ irreducibles | character pairings matrixI₂; Schur pairings matrixI₂ | Pass Inherited [r5]. |
| §7.5 compatible families | stable e₂ at d=0,1,2,3 | components `0,0,xy,xy+xz+yz`; last-variable-zero gives predecessor | Pass Inherited [r5]. |
| §7.5 degreewise stable projection | n=2,d=1,2 | dimensions `1,2`; stable dimension2; kernel at d1 spans s₁₁, kernel at d2 zero | Pass Inherited [r5]. |
| §7.5 stable degree zero/unit | all d, n=0 | constant family1; projection1; product1·1=1, including empty alphabet | Pass Inherited [r5]. |
| §7.5 free elementary/complete generators | degree2 | `h₂=e₁²−e₂`, `e₂=h₁²−h₂`; composing returns e₂,h₂ | Pass Inherited [r5]. |
| §7.5 ω involution | e₂,h₂,p₂ | `ω(e₂)=h₂`, `ω(h₂)=e₂`, `ω(p₂)=−p₂`, second application p₂ | Pass Inherited [r5]. |
| §7.5 dual Jacobi–Trudi | λ=21 in x,y | `h₂h₁−h₃=x²y+xy²=e₂e₁−e₃`; e₃=0 | Pass Inherited [r5]. |
| §7.5 stable-tail Hall construction | s₁₁, d=1,2,3 | projected norms `0,1,1`; stable Schur-coordinate norm1; only d≥degree participates | Pass; repaired Inherited [r5]. |
| §7.5 rational Newton presentation | p₁,p₂,p₃ at eigenvalues1,2,3 | `(6²−14)/2=11=e₂`; `(216−252+72)/6=6=e₃` | Pass Inherited [r5]. |
| §7.5 denominator control | r=2 over ℚ vs𝔽₂ | 2 inverse1/2 overℚ; 2=0 in𝔽₂ and no inverse | Pass; ℚ-algebra hypothesis essential Inherited [r5]. |
| §7.5 index shift/no P₀ | d=0,1,2 | finite p₀=`0,1,2`; p₁ specializes compatibly, p₀ does not overℤ | Pass Inherited [r5]. |
| §7.5 weighted grading/base change | X₁↦p₂; ℤ→𝔽₂ | degree2 on both sides; coefficient2 becomes0 on both sides | Pass Inherited [r5]. |
| §7.6 stable ch | trivial/sign S₂ | `(p₁²+p₂)/2=s₂=h₂`; `(p₁²−p₂)/2=s₁₁=e₂` | Pass Inherited [r5]. |
| §7.6 integral virtual lattice | class values(1,0) onS₂ | irreducible coefficients(1/2,1/2), not integers; values(2,0) give(1,1) | Pass; integer-valued≠virtual Inherited [r5]. |
| §7.6 block induction product | S₁×S₁ | induced values(2,0); `ch=p₁²=s₁s₁` | Pass; native induction now cited; see fresh rows Inherited [r5]. |
| §7.6 Young's rule | μ=11 | `h₁²=s₂+s₁₁`; two Specht multiplicities1 | Pass Inherited [r5]. |
| §7.7 coproduct/alphabets | e₂ in x,y | split-alphabet coefficient of x⊗y is1; `e₂⊗1+e₁⊗e₁+1⊗e₂` gives1 | Pass; discriminating Check now present Inherited [r5]. |
| §7.7 coassociativity | e₂ split into x,y,z | both iterated coproducts give `xy+xz+yz` | Pass Inherited [r5]. |
| §7.7 counit | e₁ and1 | counit values0,1; applying counit to one coproduct factor recovers e₁,1 | Pass Inherited [r5]. |
| §7.7 antipode | e₁,e₂ | `S(e₁)=−e₁`; `e₂−e₁²+h₂=0`; `S(e₂)=h₂` | Pass Inherited [r5]. |
| §7.7 primitive power sums | P₂ | `P₂(x,y)=x²+y²`; split expression same; antipode `−P₂` | Pass Inherited [r5]. |
| §7.8 reversed coefficients | A=diag(1,2) | det(1−tA)=`1−3t+2t²`; c=(1,−3,2), E=(1,3,2) | Pass Inherited [r5]. |
| §7.8 integral Newton, matrix headline | A=[[1,1],[0,1]], r=1,2,3 | `(r c_r)=−2,2,0`; recurrence RHS=`−2,2,0` despite non-diagonalizability | Pass; now in Suggested.lean Inherited [r5]. |
| §7.8 high-index total-function behavior | same A, r=4,5 | c₄=c₅=0; recurrence RHS0,0; no coeff at truncated d−r used | Pass Inherited [r5]. |
| §7.8 rank0 and nilpotent | d=0; A=[[0,1],[0,0]] | charpolyRev=1 in both; all positive traces0; recurrence0=0 | Pass Inherited [r5]. |
| §7.8 characteristic2 | A=I₂ over𝔽₂ | p_j=0 for every j>0; c₂=1; r2 equation `0·1=0` | Pass; recurrence does not determine coefficients here Inherited [r5]. |
| §7.8 characteristic3 | A=I₃ over𝔽₃ | p_j=0; c₃=−1=2; r3 equation0=0 | Pass; rational solution requires ℚ Inherited [r5]. |
| §7.8 rational partition solution | A=diag(1,2,3), r=3 | `E₃=6`, `c₃=−6`; partition numerator `216−252+72=36` | Pass; odd-degree sign distinct Inherited [r5]. |
| §7.8 ring naturality/reindexing/similarity | unipotent A, reduce mod2; swap basis | coefficients(1,−2,1)→(1,0,1); swapped matrix has same coefficients/traces | Pass Inherited [r5]. |
| §7.8 representation trace of powers | C₂ acting diag(1,1,1,−1) | χ(g)=2; p=(2,4,2,4); polynomial `(X−1)³(X+1)` | Pass in characteristic0 Inherited [r5]. |
| §7.8 direct sums | diag(1,−1) plus one trivial | p₁0→1; p₂2→3; polynomial `(X²−1)(X−1)` | Pass Inherited [r5]. |
| §7.9 power-sum basis | degree2,d=2,ℚ | p₁₁=s₂+s₁₁, p₂=s₂−s₁₁; determinant−2≠0 | Pass; now stated in Suggested.lean Inherited [r5]. |
| §7.9 small-alphabet quotient | degree2,d=1 | relation p₁₁−p₂=0; dimension1 vs two proposed vectors | Pass Inherited [r5]. |
| §8.1 Schur–Weyl equivalence | d=2,n=2 | dimension `4=1·3+1·1`; transposition eigenvalues +1 onSym²,−1 onΛ² | Pass Inherited [r5]. |
| §8.1 simultaneous GL equivariance | g=diag(2,3),d=n=2 | eigenvalues onSym² `4,6,9`, onΛ² `6`; tensor action gives `4,6,6,9` | Pass; arbitraryS₂-map not enough Inherited [r5]. |
| §8.1 all-dimensional boundary | d=0,n=0 and n=1; d=1,n=2 | dimensions `1=1`, `0=0`, `1=1+0` | Pass Inherited [r5]. |
| §8.1 permutation action faithfulness | d=1,n=2 | transposition acts1; `1−τ` acts0; sign shape killed | Pass; native supplied fact Inherited [r5]. |
| §9.1 diagram basis/algebra | k=0,1,2,3 | diagram counts `1,1,3,15`; k3=`6+9` | Pass Inherited [r5]. |
| §9.1 loop product | e inB₂; disjoint e₁e₃ inB₄ | `e²=δe`; `(e₁e₃)²=δ²e₁e₃`; atδ2 coefficients2,4 | Pass Inherited [r5]. |
| §9.1 associativity loop cocycle | e,e,e inB₂ | left loop sum `1+1=2`; right `1+1=2`; productδ²e | Pass Inherited [r5]. |
| §9.1 permutation inclusion/unit | k=2 | `s²=1`, `se=es=e`; distinct basis vectors1,s stay independent evenδ0 | Pass Inherited [r5]. |
| §9.1 coefficient generality | B₂(0) overℤ,𝔽₂ | free rank3 in both cases; e²=0 in both; base change reduces coefficients mod2 | Pass; commutative-ring construction now stated Inherited [r5]. |
| §9.2 orthogonal action | n=2,k=2,e₀⊗e₀ | cup-cap sends to`e₀e₀+e₁e₁`; twice gives2times that cup | Pass Inherited [r5]. |
| §9.2 symplectic loop and crossing | l=1,θ=ef−fe | capθ=`−1−1=−2`; e²=−2e; (−flip)θ=θ, flipθ=−θ | Pass Inherited [r5]. |
| §9.2 no equal-slot generators | n=2,k=1; reflection diag(−1,1) | same-slot map sends e₀→e₀+e₁; compositions on e₀ give`−e₀+e₁` vs`−e₀−e₁` | Pass; a≠b necessary Inherited [r5]. |
| §9.2 orthAction and zero dimension | n=0,k=0/1 | action scalar identity onℂ / unique map on0 | Pass Inherited [r5]. |
| §9.3 Ξ₁ and self-duality direction | O₂;Sp₂ | orthogonal id→e₀e₀+e₁e₁; symplectic id→fe−ef=−θ | Pass Inherited [r5]. |
| §9.3 Ξ₂ signs | Sp₂ id,cup-cap,crossing | ε=`+1,−1,−1`; cup-cap tensor`−θ_in⊗θ_out` | Pass Inherited [r5]. |
| §9.3 matching relabeling | Sp₂ exchange endpoints of one arc | θ→−θ; orthogonal cup→same cup | Pass Inherited [r5]. |
| §9.3 invariant spanning/odd tensors | O₁, degree2/3 | invariant dimensions1/0; matching span dim1 at degree2; −1 acts−1 at degree3 | Pass overℂ Inherited [r5]. |
| §9.3 matching independence | O₂,degree4 | Gram diag4/off-diagonal2 has determinant32; n=2≥k=2 | Pass; corrected threshold Inherited [r5]. |
| §9.3 symplectic dependence | Sp₂,degree4 | 3 tensors with relation `θ₁₂θ₃₄−θ₁₃θ₂₄+θ₁₄θ₂₃=0`; rank2 | Pass Inherited [r5]. |
| §9.3 full orthogonal group hypothesis | O₂ vsSO₂,degree2 | invariant dimensions1 vs2; reflection negates alternating tensor | Pass; connected replacement false Inherited [r5]. |
| §9.3 orthogonal FFT | O₃,k=2 | image span{1,s,e} dimension3; decomposition5+3+1 has commutant dimension3 | Pass Inherited [r5]. |
| §9.3 reverse commutant | O₃,k=2 | group image and reverse commutant dimensions `5²+3²+1²=35` | Pass; complete reducibility now precedes FFT Inherited [r5]. |
| §9.4 harmonicTensors definition | O₁,q=0,1,2 | dimensions1,1,0; positive-degree cap atq2 is1 on basis tensor | Pass; doc's n0 caveat read with q0 boundary Inherited [r5]. |
| §9.4 orthogonal harmonic dimension | O₂,q=2,4; O₃,q=2,3 | tensor dimensions4,16,9,27 minus stacked-cap ranks1,14,1,9 give3,2,8,18 | Pass Inherited [r5]. |
| §9.4 symplectic harmonic dimension | Sp₂,q=2,3,4 | dimensions4,8,16 minus cap ranks1,4,11 give3,4,5 | Pass Inherited [r5]. |
| §9.4 harmonic action stability | O₂ reflection and slot flip on e₀e₁−e₁e₀ | images are negatives; contraction remains0 | Pass for both Lean stability theorems Inherited [r5]. |
| §9.4 orthShapeSpace | O₂,q=2, shapes2,11 | symmetric traceless dimension2; alternating dimension1; ranges intersectH as claimed | Pass Inherited [r5]. |
| §9.4 OrthAdmissible | n2, λ=2,11,22,111 | first-two-column sums2,2,4,3; booleans true,true,false,false | Pass; GL row bound cannot substitute Inherited [r5]. |
| §9.4 nonvanishing iff | same four shapes | E dimensions2,1,0,0; nonzero flags true,true,false,false | Pass both directions Inherited [r5]. |
| §9.4 empty shape/O₁ Check | q=0,n=0 or1 | column sum0; E∅ dimension1; admissible true | Pass; empty shape now included in Check Inherited [r5]. |
| §9.4 shape stability/irreducibility | O₂,shape2 | isotropic weight lines have weights±2; reflection swaps them; no one-line subspace stable under fullO₂ | Pass; SO₂ alone would split Inherited [r5]. |
| §9.4 harmonic decomposition | O₂,q2;O₃,q2;Sp₂,q3 | `3=2·1+1·1`; `8=5·1+3·1`; `4=dim Sym³` | Pass Inherited [r5]. |
| §9.5 diagram ideals | k2,j0,1,2 | dimensions3,1,0; e²=δe remainsinI₁; tailI₂=0 | Pass Inherited [r5]. |
| §9.5 trace filtration/splitting | O₂,k2;Sp₂,k3 | `4=3+1`; `8=4+4`; dimensions H andF₁ respectively3,1 and4,4 | Pass Inherited [r5]. |
| §9.5 coordinate Hermitian argument | O₂ cup;Sp₂ θ | Hermitian norms2,2; cap-cup scalars2,−2; neither cup lies in its cap kernel | Pass; bilinear positivity not assumed Inherited [r5]. |
| §9.5 quotient annihilator | k2,j0 | cup-cap image isF₁; induced map onT²/F₁ is0 | Pass Inherited [r5]. |
| §9.6 partial matching count | (k,j)=(3,1),(4,2),(k,0) | counts3,3,1; factorial formula gives3,3,1 | Pass; empty matching is one element Inherited [r5]. |
| §9.6 cup map and pair-order invariance | k4,j2, matching12∣34 | swapping two length2 blocks is even; coefficient product unchanged | Pass Inherited [r5]. |
| §9.6 Ψ spanning and kernel | Sp₂,k3,j1 | domain dim6, image/gr₁ dim4, kernel dim2 | Pass Inherited [r5]. |
| §9.6 matching signs D_j | placements12,13,23 | shuffle signs(+1,−1,+1); D² diagonal(1,1,1) | Pass Inherited [r5]. |
| §9.6 sufficient stability bound | O₁,k2,j1 | domain/image dim1 although1<4 | Pass; explicitly sufficient, not necessary Inherited [r5]. |
| §9.6 stable dimension | O₆,k3,j1 | Gram eigenvalues8,5,5≠0; placement factor3, dimH¹6; gr₁dim18 | Pass Inherited [r5]. |
| §9.7 Hom multiplicity and labels | O₃,k2 | group pieces5,3,1; Hom multiplicities1,1,1; total9 | Pass Inherited [r5]. |
| §9.7 symplectic transpose label | Sp₂,k2 | H²dim3, crossing−1, cup-cap0; Brauer label11, group shape2 | Pass Inherited [r5]. |
| §9.7 nonzero multiplicity boundary | O₁,k2,λ=∅; n0,k2 | positive-dimensional cup gives Homdim1; zero-dimensional tensor Homdim0 | Pass; zero case separated Inherited [r5]. |
| §9.8 image vs abstract semisimplicity | Sp₂,k3,δ−2 | geometric tensor `V₃⊕2V₁`; commutant `ℂ⊕Mat₂`, dim5; abstractB₃ dim15 with singular cell Gram | Pass distinction Inherited [r5]. |
| §9.8 B₂ exceptional parameter | δ0,±2 | e²0 atδ0; at nonzeroδ idempotent e/δ; semisimple at±2 | Pass Inherited [r5]. |
| §9.8 B₃ zero parameter | δ0 | Gram determinant2, rank3; simple-square sum `1+1+4+9=15` | Pass; semisimple Check repaired Inherited [r5]. |
| §9.8 nonsemisimple B₃ parameters | δ−2,1 | Gram ranks2,1 and determinants0,0 | Pass; exceptional set now {−2,1} Inherited [r5]. |
| §9.8 sufficient bound/generic case | k3,δ4 | determinant54, rank3; δ4 outside{−2,1} | Pass Inherited [r5]. |
| §9.9 cup relation | apply to e andf inSp₂ | D₁₂e=efe−fee, D₁₃e=eef−fee, D₂₃e=eef−efe; alternating sum0; f gives same cancellation | Pass Inherited [r5]. |
| §9.9 raw crossing action | relation vector(v,−v,v) | s₁,s₂ both return(v,−v,v); raw formula agrees with−flip | Pass Inherited [r5]. |
| §9.9 raw contraction action | relation vector(v,−v,v) | e₁ gives(−2v+v+v,0,0)=0; e₂ gives(0,0,v+v−2v)=0 | Pass Inherited [r5]. |
| §9.9 normalization/Gram transport | D=diag(1,−1,1),δ−2 | standard Gram off-diagonal+1; DGD off-diagonals(−1,+1,−1); radicals(1,1,1) and(1,−1,1) | Pass Inherited [r5]. |
| §9.9 quotient and multiplicity | Sp₂,k3 | cup quotient dim`6−2=4`; two copies of dim2 standard; harmonicdim4; total8 | Pass Inherited [r5]. |
| Worked hook/square-sum examples | n=4,5 | `1+9+4+9+1=24`; `1+16+25+36+25+16+1=120` | Pass Inherited [r5]. |
| §4.4 one-sided Kronecker transpose | S₃ trivial⊗trivial, then twist one factor | `(1,1,1)·(1,−1,1)=(1,−1,1)`; multiplicity of sign becomes1 | Pass; one-sided theorem included Inherited [r5]. |
| §7.2 semistandard reverse-complement | alphabet {0,1}, word001 | P=001; reverse-complement011 has P=011; semistandard evacuation changes content(2,1)→(1,2) | Pass; shape stays3 Inherited [r5]. |
| §7.8 padding probe | A=diag(1,2),r=2 | `2c₂=4`; `−(c₁p₁+c₀p₂)=−(−9+5)=4`; same signature appears twice | R01 here; delete auxiliary duplicate Inherited [r5]. |
| §8.3 Schur/stable transpose | n=2,d=1 | row functor dim1, column dim0; stable ω(h₂)=e₂ then specialization0 | Pass; not a GL-isomorphism between those functors Inherited [r5]. |
| §9.3 odd symplectic tensors in characteristic2 | rank1,degree3 | torus weights `3,1,−1,−3`, none0; scalar −1 acts+1, so that scalar argument alone fails | Pass; weight argument supplies vanishing Inherited [r5]. |
| §9.1 zero coefficient ring | B₂ over zero ring | all vectors coincide0; free module indexed by3 diagrams is zero; rank/cardinality distinguished | Pass; no nontriviality falsely inferred Inherited [r5]. |
| §9.6 four raw Sp₂ actions | k=3,C:ℚ⁶→ℚ⁸ | ranks C=4,kerC=2; each of Cs₁−ρ(s₁)C, Cs₂−ρ(s₂)C, Ce₁−ρ(e₁)C, Ce₂−ρ(e₂)C has all48 entries0 | Pass Inherited [r5]. |
| Appendix F stabilizer | k=4,r=1, matching12 | actual stabilizer `{1,(12),(34),(12)(34)}` order4; pair wreath group order2 | Source error, not copied into roadmap Inherited [r5]. |
| Appendix F stable bound | Sp₂,k=4,r=2 | `2k=8=dimV+3r`; three cup tensors have rank2, not3 | Source error; roadmap uses stronger sufficient bound Inherited [r5]. |
| Appendix F full matching count | k=4,r=2 | count3; printed factorial expression `24/(4·4)=3/2`; corrected `24/(4·2)=3` | Source misprint Inherited [r5]. |
| Appendix F SL₂ tensor fourth power | dimV=2 | tensor dimension16; printed summands `5+3·3+1=15`; corrected `5+9+2=16` | Source misprint Inherited [r5]. |

The inherited jeu-de-taquin row distinguishes the LR reading order from the insertion-compatible bottom-to-top row word, as explained in [r5]/[r4].

## Not verifiable

- **Carried source limitations from [r5], not re-fetched for untouched passages:** james1978 Chapter 4/Theorems 8.15,16.4,21.1 (Springer paywall); fultonHarris1991 Lecture 4/Exercise 4.4/Lemma 4.26/§6.1/Theorem 6.3 (no legal full text returned); fulton1997 and stanley1999 tableau/RSK/LR sections (publisher records without readable full text); sagan2001 §4.9/Theorem 4.10.2 (paywall/timeout); macdonald1995 I.2–I.9 (OUP403/arXiv429); weyl1939 V.7 and brauer1937 §§3–5 (no legal full text obtained).
- **goodmanWallach2009:** main-book §§5.3.2,9.1.1,10.1.1–10.1.2,10.2.1/3/4/5 remain uncertified. Prior evidence covers author contents and Appendix F, not the full main book or the complete signed cell-action comparison.
- **haiman2015:** the previously read Berkeley material is a course outline, not proofs of its listed lecture topics.

The only newly cited source, etingof2011, was read at both supplied locators. No new missing-text request is needed. This incremental review is complete despite the inherited source limitations; no mathematical defect is inferred from inaccessible text alone. No roadmap source manifest was edited.

## Source issues

No new source mistake was found at the changed Etingof locators. These five previously established Appendix F issues are carried from [r5], with their computed controls in the inherited table.

- **Error** in goodmanWallach2009 at Appendix F §F.1, printed p.2, lines 72–73: the source says the partial-matching stabilizer is the pair wreath product; it should be that product times the symmetric group on unmatched slots; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F §F.1, printed p.2, line 74: the source says the zero-pair matching set is empty; it should be a singleton containing the empty matching; affects a stated result.
- **Error** in goodmanWallach2009 at Appendix F Theorem F.1.3, printed p.4, line 134: the source says the displayed dimension bound ensures independence for both classical groups; it should be restricted or strengthened, since Sp₂ with k=4,r=2 satisfies it but has dependent cups; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F Example 1, printed p.4, line 148: the source says the full-matching denominator contains the square of m factorial; it should be 2 to the m times m factorial; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F equation (F.5), printed p.5, line 158: the source says the fourth SL₂ tensor power contains one trivial summand; it should be two trivial summands; affects a stated result.

[r5]: packages/SchurWeyl/reports/PRREVIEW-SchurWeyl~5.md
[r4]: packages/SchurWeyl/reports/PRREVIEW-SchurWeyl~4.md
