# Review of KTheoryLowDegrees (pull request #1248 at 4d2f327)

**Verdict:** accepted

:robot: Independent AI incremental re-review of 51 changed lines since 91f4cf2. No findings remain. This verdict means ready for a human's final approval; it is not an approval or merge.

## Previous findings

- R01 — repaired: README :8, :123, :323, :565 and :595 import ClassicalArithmeticCompletion §§7.84 and 7.94. The explicit retraction, determinant comparison and square-zero ring enhancement remain here; the supplied additive classification and ideal example are no longer independently planned.
- R02 — repaired: README :1789 uses (det,rank). The new Check at :1794 sends the free rank-two class to (O,2), a negative line to (L⁻¹,−1), and their sum to (L⁻¹,1).

## Verified sound

The scope of this round is the diff and its mathematical dependencies, not a second full review of the unchanged roadmap. Read the normative README and CONTRIBUTING guidance, the previous report, all changed passages, their surrounding definitions and dependent comparisons. Inspected the relevant main-branch GrothendieckEulerForms, GeneralizedCohomology and PadicMeasuresIwasawaAlgebras passages for ownership and conventions. The unchanged theorem signatures and definitions are carried forward from [r3]; all 25 declarations were nevertheless elaborated again. The Lean diff changes only the documentation of the ring-enhancement theorem.

[r3]: packages/KTheoryLowDegrees/reports/PRREVIEW-KTheoryLowDegrees~3.md

**Gate and elaboration.** HEAD is exactly 4d2f327c718368dc6463a414f9904f74df59eb60. The worker's recorded gate passes every check, including build. The independent gate rerun passes all reported scanners and dependency checks. Its output does not include a build field, so the targeted build was also run explicitly: `lake build TauCetiRoadmap.KTheoryLowDegrees.Suggested` succeeds. Direct `lake env lean` on Suggested.lean exits 0, with exactly 13 warnings, all for `sorry`. No files outside this roadmap are changed in the PR; the review leaves the worktree clean. No stray files, forbidden imports, sorry'd data or option overrides were introduced.

The independent dependency check, using the specified merge order and movable placement, returns:

```text
depcheck: 205 roadmaps, 1483 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurs. The added supplier is already on main. The affected Needs lines explicitly identify §§7.84 and 7.94; neither repair introduces an unowned prerequisite or declared gap. New §2.3 has its map domains, API and three discriminating Checks, including a nonmember of the domain and the incorrect-sign result.

**Ownership and supplier witnesses.** Reopened the following citations in their applicable main or indexed open-head copies. Source-file line numbers exclude the display header added by the roadmap tool.

| File and locator | Contract resolved and effect on the repair |
| --- | --- |
| `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:14239`, §§7.0, 7.6–7.7, 7.23 | Lattice Steinitz classification, complements and the finite-free stable-equality criterion. §5.1 here still compares the supplied lattice invariant with the actual exterior determinant. |
| `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:16443` | §7.84 supplies the additive equivalence, inverse (n−1)[A]+[I], rank-zero ideal inclusion and separate field/zero-module branches. These are exactly the imported inputs at README :123 and :565. |
| `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:16660` | §7.94 gives the norm-two ideal, nonprincipality, rank-one projectivity, nonzero reduced class and the Check I²=(2). The supplier therefore supports every newly attributed fact. |
| `TauCetiRoadmap/SchemeKTheoryOperations/README.md:2184`, :2814 | §§6.2.4 and 7.1 supply the rank/determinant kernel and square-zero multiplication. They combine with the additive Dedekind classification to give §5.2's ring equivalence; they do not make that comparison a new generic ring construction. |
| `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:3172`, :3196 | §5.1's determinant has line first and parity second, with the same Koszul sign. Reducing the repaired integer-grade example gives (O,0), (L⁻¹,1), and (L⁻¹,1). |
| `TauCetiRoadmap/GeneralizedCohomology/README.md:432` | G2.8 supplies coherent group completion and connective-spectrum comparison. It retains the actual symmetric input needed by §14.3. |
| `TauCetiRoadmap/StableHomotopyKTheory/README.md:1792`, :1821 | §§4.25–4.26 supply the coherent Γ-model, Picard criterion and π₀/π₁ identifications. Changing coordinate order in the API bullet agrees with these supplied objects. |
| `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:615`, :645, :1042, :1091, :1101, :1117 | §§3.12–3.14 and 5.7–5.11 retain projective classes, translated automorphism loops, additivity and spectrum comparison. The repaired π₀ formula does not invert the scalar on π₁. |
| `TauCetiRoadmap/ArithmeticKTheory/README.md:306`; `TauCetiRoadmap/SymplecticReidemeisterTorsionModSquares/README.md:47` | The available open consumers explicitly import the low-degree classification and graded determinant. Neither claims ownership of the newly repaired targets. |

Used `roadmaps grep` by object (Steinitz, norm-two ideal, rank–Picard, square-zero Picard and graded lines), read the relevant supplier texts with `roadmaps show`, and searched the board packages. ClassicalArithmeticCompletion is consumed on main, not through its open revision. The revised division of ownership is consistent: additive Dedekind classification and the quadratic ideal are supplied; the explicit retraction and ring/determinant comparisons remain here. There are no new Lean declaration names to collide with open work. The citation resolver reports no missing cross-roadmap citation. Its library-name pass is unavailable in that invocation, so the relevant library names were checked directly at the pins below.

**Pinned declarations reopened.** Mathlib pin 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti pin a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039 agree with the manifest and with [r3]. These eight declaration groups support the changed passages and their native-carrier interpretation.

| File and line at the pin | What was checked |
| --- | --- |
| `Mathlib/RingTheory/PicardGroup.lean:444`, :459 | `CommRing.Pic.AsModule` represents a Picard class by an invertible module; `CommRing.Pic.mk` takes its class. This is not a module with a chosen basis. |
| `Mathlib/RingTheory/PicardGroup.lean:728`, :735, :876 | `Submodule.unitsToPic`, `unitsToPicEquiv`, `ClassGroup.equivPic`: an ideal maps to its own module class, not the dual. The equivalence requires a domain. |
| `Mathlib/Algebra/TrivSqZeroExt/Basic.lean:419`, :424, :663 | `fst_mul`, `snd_mul`, `commRing`: multiplication is (nm,n·b+m·a), and commutativity uses the central scalar instance present in Suggested.lean. |
| `Mathlib/RingTheory/DedekindDomain/Basic.lean:149` | `IsDedekindDomain` includes `IsDomain`; fields are allowed and the zero ring is excluded. |
| `TauCeti/Algebra/Category/ModuleCat/CartanMap/Basic.lean:124` | `finiteProjectiveModules` is the conjunction of finite generation and projectivity. It adds neither a basis nor constant rank. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Split.lean:124`, :142, :150 | `of`, `of_biprod`, `of_eq_zero_of_isZero` supply the actual class, sum and zero relations used by the repaired comparison. |
| `TauCeti/NumberTheory/Multiquadratic/MinusFive/ClassNumber.lean:249` | `TauCeti.NumberField.classNumber_adjoinRoot_sqrt_neg_five_eq_two` states class number two for the actual AdjoinRoot field. The README retains the ring-of-integers comparison, rather than identifying carriers by notation alone. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Monoidal/Exact.lean:250` | `fromSplitRingEquiv` compares split and exact K₀; it is not the Dedekind rank–Picard equivalence and does not close the headline in one step. |

**Signatures and padding.** A scratch copy put `#check @name` for each of all 25 declarations inside the namespace and elaborated successfully. Compared the resulting signatures with the README: finite projectivity, Dedekind domain, finite S, number field, place-count, determinant-one, ideal-level and finite-index hypotheses survive. No signature changed in this diff. In particular `rank_pic_equiv_exists` still asks for a ring equivalence with its free/line normalizations, so the new additive supplier does not weaken the acceptance test. A second scratch copy tried `simp`, `rfl` and `infer_instance`, each required to close the goal, on all 13 admitted theorems: none closed. The reopened categorical and Picard declarations do not give the changed theorem by one exact library lemma. The unchanged single-lemma audit is carried from [r3].

**Headline inventory.** The inventory below is retained from [r3]; the documentation repair changes ownership of an input, not the set of headline results.

| README theorem family | Acceptance test or named missing carrier |
| --- | --- |
| Rank section and semilocal classification, §§2.1–2.2 | `rank_exists_split`, `semilocal_rank_equiv_exists`. |
| Positive-rank Steinitz decomposition and Dedekind rank–Picard ring equivalence, §§5.1–5.2 | `steinitz_decomposition`, `rank_pic_equiv_exists`; the latter retains its new ring enhancement after the additive-input ownership repair. |
| Euclidean elementary generation, §8.1 | `euclidean_elementary_generation`, all finite ranks. |
| Stable nonvanishing of the real-circle rotation, §8.4 | `circle_rotation_not_stably_elementary`, all identity paddings. |
| S-integer absolute and relative elementary generation, §11.3 | `sinteger_elementary_generation`, `sinteger_relative_elementary_generation`, n≥3. |
| Higher-rank CSP and exceptional failure, §11.3 | `congruence_subgroup_property`, `congruence_subgroup_failure`. |
| Arithmetic SL₂ finite generation, §11.4 | `arithmeticSL2_finitelyGenerated`, every finite-index subgroup, no positive-unit-rank assumption. |
| Rank-two CSP and exceptional failure, §11.5 | `rankTwo_congruence_subgroup_property`, `rankTwo_congruence_subgroup_failure`, with positive unit rank. |
| Exterior/λ/γ/Adams, determinant and norm comparisons, §§3–5 | Module docstring names missing projective-operation and determinant interfaces. The numerical identities remain README targets. |
| Stable/relative K₁, Mennicke extension and congruence completions, §§7–11 | Docstring names missing stable GL/E, relative K₁, patching and defect/completion carriers. Native finite-group consequences are stated above. |
| Curve K₀/G₀ and signed K-space/Steinberg boundary comparisons, §§12–13 | Docstring names missing scheme Grothendieck groups, plus constructions, stable Steinberg groups and based boundaries. |
| Graded, perfect and Witt-supported determinant; finite-length filtration comparison, §14 | Docstring names missing graded-line spectra and enhanced supported K-theory. No scalar or free-predicate substitute is used. |

**Source sample in this incremental round.** Re-fetched both needed works through the sources service: Weibel from his Rutgers author page and Bhatt–Scholze arXiv:1507.06490v3. The initial Weibel licence-class rejection was resolved by identifying the author-page licence class; no missing reference remains. No target is newly marked unverified. The changed sampled targets are §§5.2, 5.3 and 14.3. The unchanged sampled targets retain their mathematical rows from [r3], as required by the incremental scope; they were not represented as a new full source review.

| Changed target or dependency | Source text reopened | Verification |
| --- | --- | --- |
| §2.3 retraction and determinant comparison | weibel2013 line 1253, I.3.4, p. 19; line 1281, I.3.5 and proof, p. 20 | The finite-projective/line comparison and the dual-basis retraction apply. The displayed coefficients are the roadmap's own explicit calculation, recomputed below. |
| §§4.1–4.2 and 5.2 | weibel2013 line 1230, p. 19; line 4186, II.2.6, p. 74; lines 4206 and 4210, II.2.6.2–2.6.3, p. 75 | Componentwise determinant, square-zero multiplication and one-dimensional noetherian classification agree. The field branch comes separately from the supplied additive theorem; it is not obtained by claiming a field has dimension one. |
| §5.3 | weibel2013 line 1742, Ex. I.3.8(a),(c), p. 29; line 4210, II.2.6.3, p. 75 | Localization kills precisely the ideal classes of primes meeting the multiplicative set. The order-two arithmetic input is imported from ClassicalArithmeticCompletion §7.94 and combined with the pinned class-number theorem. |
| §14.3 coordinate repair and its dependencies | bhattScholze2015 line 821, Construction 5.1, p. 18; lines 2654, 2680, 2689, §§12.9–12.12, pp. 57–58; lines 2718 and 2726, §§12.17–12.18, p. 59 | The pair is (line,grade); tensor adds grades, inverse dualizes the line and negates grade. The determinant gives a spectrum map, and its first truncation is a Zariski-local equivalence. No global full-spectrum equivalence is introduced. |

The other seeded targets are §1.2; §§4.1–4.3 (apart from the dependency rechecks above); §8.3; §§10.3,10.7; §§11.2,11.4; §§13.2,13.4; and §14.6. Their unchanged assertions and computed tests are carried below with individual [r3] citations. Likewise the unchanged Layers 5, 12 and 14 consumers use the same ideal and determinant classes, so the repaired ownership and coordinate order preserve their prior calculations.

**Fresh adversarial calculations.** In these rows A=ℤ[s], s²=−5, I=(2,1+s); additive Picard zero means the trivial line. Matrix E is written in column coordinates for π and ι; the roadmap's left-row presentation is its transpose. Both give the same idempotent summand. These 20 rows cover the changed mathematical claims, new Checks, imported normalizations and the unchanged signature whose documentation changed.

| Statement | Instances tried | Values computed on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| Scope / §7.84 supplier normalization | P=0, P=k² over a field | (rank,st)(0)=(0,1); (rank,st)(k²)=(2,1); inverse gives 0 and 2[k] | Pass | Additive result correctly imported. |
| §2.3 source/target and image of π | Basis vectors of A² | π(1,0)=2; π(0,1)=1+s; these generate exactly I | Pass | Explicit maps remain here. |
| §2.3 first integrality Check | a=2 | ι(2)=(−1+s,−1−s); π of that pair=2 | Pass | New Check recomputed. |
| §2.3 second integrality Check | a=1+s | ι(1+s)=(−3,2−s); π=−6+(1+s)(2−s)=1+s | Pass | New Check recomputed. |
| §2.3 linearity and all-element integrality | a=2r+(1+s)t | ι(a)=r(−1+s,−1−s)+t(−3,2−s); both sides have integral coordinates | Pass | Extends generator calculations without a denominator assumption on all A. |
| §2.3 retraction identity | Arbitrary a∈I | πι(a)=a((−1+s)−(1+s)²/2)=a((−1+s)−(−2+s))=a | Pass | Actual retraction, not merely abstract projectivity. |
| §2.3 idempotent API | E=[[−1+s,−3],[−1−s,2−s]] | E²=E entrywise; trace(E)=1 and det(E)=0 | Pass | Column E, row Eᵗ; image is I. |
| §2.3 incorrect sign | a=2, second coordinate sign reversed | π(−1+s,1+s)=−6+4s ≠ 2 | Pass | New negative control detects the sign. |
| §2.3 zero and domain exclusion | a=0 and a=1 | ι(0)=(0,0); ι(1)=((−1+s)/2,−(1+s)/2) is outside A²; 1 mod I=1∈𝔽₂ | Pass | Domain I cannot be replaced by A. |
| §2.3 class comparison | I and A, localized at any prime | Global reduced coordinate (0,[I])≠0; local [Iₚ]−[Aₚ]=1−1=0 | Pass | Global nonzero class is supplied. |
| §5.2 native scalar actions | Integer −2 acting on Picard class a | Left action=−2a; opposite action=−2a | Pass | Native central action retained. |
| §5.2 transported inclusion and determinant | Class L of order 3; trivial line | ι(L)=[L]−1; determinant=L·1⁻¹=L; ι(1)=0 and determinant=1 | Pass | Order 3 distinguishes L from the incorrect inverse L⁻¹. |
| §5.2 inverse at negative/zero rank | (0,L), (−1,L), (2,L) | [L]−1, [L]−2, [L]+1 have coordinates (0,L),(−1,L),(2,L) | Pass | Imported inverse remains valid for all integers. |
| §5.2 ring enhancement / rank_pic_equiv_exists | (2,L),(3,M); reduced pairs | Product=(6,L³M²); (0,L)(0,M)=(0,1)=0 | Pass | Adds multiplication to the supplied additive equivalence. |
| §5.2 field and residue map | k; A→A/I=𝔽₂ | Pic(k)=0, so ring target=ℤ; (3,[I]) maps to (3,1); free ranks 0,2 map to (0,0),(2,0) | Pass | Field allowed; zero ring excluded by IsDedekindDomain. |
| §5.3 supplied I² and exact order | I²=(4,2+2s,−4+2s) | (2+2s)−(−4+2s)−4=2; all generators divisible by 2; norm equation a²+5b²=2 has no solutions | Pass | I²=(2), [I]≠1 and order=2 are imported. |
| §5.3 square-zero arithmetic ring | x=[I]−[A] | x↦(0,1 mod2); 2x=0; x²=(0,0); (1,x)²=(1,0) in ℤ⋉ℤ/2 | Pass | Ring refinement distinguishes it from a product ring. |
| §5.3 localization and torsion quotient | A at I, and fraction field | x↦0 in each local target; rank 1↦1; [A/I]=[A]−[I]=−x=x here | Pass | Same arithmetic example with supplied class. |
| §14.3 component coordinate order | A²; negative line; their sum | (O,2); (L⁻¹,−1); (O⊗L⁻¹,2−1)=(L⁻¹,1) | Pass | Replaces the erroneous (rank,det) bullet. |
| §14.3 consistency with loop and parity | −1 on a ℤ-line; swap two lines; grades 2,−1,1 | Scalar loop=−1; swap sign=−1; parity grades=0,1,1 | Pass | Coordinate repair preserves morphism and Koszul conventions. |

**Carried adversarial calculations.** The following 188 unchanged rows are reproduced from [r3], each citing that report. Former R01 references inside those rows refer to the repaired ownership finding of [r3], not an outstanding finding here. The former erroneous coordinate-order row is replaced by the fresh row above. This retains all sampled targets and all headline families without claiming to have repeated the full mathematical review.

| Statement | Instances tried | Values computed on the two sides | Result / change and provenance |
| --- | --- | --- | --- |
| Conventions: left rows versus right columns | Quaternion coefficients i,j | (i,0)e₁₂(j)=(i,k); reversed multiplication gives (i,−k) | Retain opposite-ring transport. [r3]. |
| Conventions: two stabilizations | Rank-one identity/idempotent | GL padding diag(1,1) has rank 2; projective padding diag(1,0) has rank 1 | Retain distinction. [r3]. |
| 1.1 idempotent presentation | e=[[1,1],[0,0]] | e²=e; row image={(a,a)}, column image={(a,0)} | Retain row convention. [r3]. |
| 1.1 complement and stabilization | e and 1−e over a field; zero module | R²=eR²⊕(1−e)R² has ranks 1+1=2; zero idempotent has rank 0 | Retain. [r3]. |
| 1.2 class and split relation | Field, finite vector spaces of ranks 2 and 3 | [k²⊕k³]=5=2+3; [0]=0 | Retain. [r3]. |
| 1.2 stable equality/finite generation | k⊕k^(ℕ)≅k^(ℕ) | Infinite swindle would force 1=0; finite K₀(k)=ℤ has 1≠0 | Finite projectivity excludes wrong model. [r3]. |
| 1.3 base change without flatness | ℤ→𝔽₂, module ℤ | Extended module has rank 1=rank ℤ; tensoring arbitrary exact sequences is not claimed | Retain. [r3]. |
| 1.3 products and transfer | k→k×k | Extension 1↦(1,1); restriction (a,b)↦a+b; composite 1↦2 | Retain. [r3]. |
| 1.3 Morita regular/simple normalization | M₂(k) and k | Simple column class↦1; regular M₂(k) class↦2; scalar restriction regular rank=4 | Retain, distinguishes the two maps. [r3]. |
| 1.3 duality versus side conversion | Invertible ideal class L of order 3 | Dual class L⁻¹=L²; side conversion class L | Retain distinction. [r3]. |
| 1.4 identity/lifted transition | Identity, empty matrix, endpoint unit | Patched class−free class=0 in each case | Retain. [r3]. |
| 1.4 boundary sign and inverse | ℤ× over 𝔽₅ ℤ, residue 2; over 𝔽₇, residue 2 | 𝔽₅ˣ/{±1} has [2] of order 2; 𝔽₇ˣ/{±1} has [2] of order 3, inverse [4]≠[2] | Retain; 𝔽₇ detects the sign that 𝔽₅ cannot. [r3]. |
| 1.4 row/column opposite transpose | Quaternion row (i,0), e₁₂(j) | Transposed equation over ℍᵒᵖ has coordinate k, matching the row; untransported equation has −k | Retain. [r3]. |
| 2.1 locally constant rank | R=k×k, e=(1,0) | ranks(eR)=(1,0), ranks((1−e)R)=(0,1), sum=(1,1) | Retain full rank function. [r3]. |
| 2.1 rank section/rank_exists_split | Clopen rank (1,2); zero ring | Corresponding projective has ranks (1,2); empty spectrum gives unique zero function and zero K₀ | Retain. [r3]. |
| 2.1 projectivity hypothesis/native rank | ℤ/2 over Spec ℤ | Native stalk finrank is 0 at every prime; residue-fibre dimension is 1 at (2), 0 generically | Finite flat hypothesis excludes it; native rank is not arbitrary fibre dimension. [r3]. |
| 2.2 semilocal classification | Connected ℤ localized at the two primes 2,3 | Two maximal ideals, but one connected rank coordinate: K₀=ℤ, not ℤ² | Retain component count. [r3]. |
| 2.2 field and zero-ring boundaries | 𝔽₂ and zero ring | K₀(𝔽₂)=ℤ, Pic=0; K₀(0)=0, not ℤ | Retain nonempty connected qualification. [r3]. |
| 2.3 quadratic ideal retraction | A=ℤ[s], s²=−5, I=(2,1+s) | Composite on a∈I equals a((−1+s)−(1+s)²/2)=a | Retain explicit retraction; import nonprincipality under R01. [r3]. |
| 2.3 nonprincipal rank-one ideal | Same I | Local rank=1 everywhere; norm equation x²+5y²=2 has no integer solution | Nontrivial class invisible to rank; import supplied result under R01. [r3]. |
| 3.1 exterior sum | Two rank-two summands, exterior degree 2 | Graded ranks 1,4,1 sum to 6=binom(4,2) | Retain ordered restriction of native equivalence. [r3]. |
| 3.1 wedge ordering/base change | One vector in each summand | M-before-N gives e₁∧e₂; reversal gives −e₁∧e₂; in characteristic 2 both signs equal 1 | Retain signed ordered formula. [r3]. |
| 3.1 virtual exterior operations | Class −1 | λ_t(−1)=1−t+t²−t³+…; λ²=1, λ³=−1 | Retain inverse-series rule. [r3]. |
| 3.2 pre-λ axioms | Proposed λⁿ(x)=xⁿ, x=y=1,n=2 | λ²(2)=4; sum convolution=1+1+1=3 | Wrong model rejected. [r3]. |
| 3.2 special unit axiom | λ_t(m)=(1+t+t²)^m | Sum rule holds, but λ²(1)=1 instead of 0 | Pre-λ and special notions distinguished. [r3]. |
| 3.2 λ-ideal condition | Ideal (2) in binomial ℤ | 2∈(2), λ²(2)=1∉(2) | Correct nonexample. [r3]. |
| 3.3 product polynomial | Ranks 3 and 2 | 3²·1+2²·3−2·3·1=15=binom(6,2) | Retain. [r3]. |
| 3.3 composition polynomial | Rank 4, λ²λ² | 4·4−1=15=binom(6,2) | Retain. [r3]. |
| 3.4 γ versus λ | Integer rank 3 | γ²(3)=6, λ²(3)=3; substitution distinguishes them | Retain. [r3]. |
| 3.4 positive filtration | ℤ[C₂], u=σ−1 | u²=−2u; u³=4u; F²=2ℤu, F³=4ℤu | Retain integral/nonvanishing filtration. [r3]. |
| 3.4 degree zero and rank quotient | ℤ and k×k | Empty product gives F⁰=whole ring; degree-zero rank functions include (1,0), not just diagonal integers | Retain. [r3]. |
| 4.1 determinant with variable rank | Two clopens, ranks 1 and 2 | L^(1,2) restricts to L and L², not a single global power | Retain clopen construction. [r3]. |
| 4.1 compound matrix determinant | diag(2,3,5), exterior degree 2 | det Λ²=6·10·15=900; det(g)^binom(2,1)=30²=900 | Retain. [r3]. |
| 4.1 exterior endpoint degrees | Rank 3, j=0 and j=3 | Λ⁰ determinant=1; Λ³ determinant=30 | Retain separate degree-zero handling. [r3]. |
| 4.2 square-zero rank–Picard multiplication | Reduced classes (0,L),(0,M) | Product=(0,1), i.e. additive zero; rank product=0 | Retain supplied formula. [r3]. |
| 4.2 rank–determinant section | Virtual class s(f)+[L]−1 | Rank=f+1−1=f; determinant=1·L·1=L | Retain comparison. [r3]. |
| 4.2 F² kernel | A and a nontrivial Dedekind ideal I | [A] has (1,1), excluded; [I]−[A] has (0,I), excluded when I≠1 | Retain simultaneous kernel. [r3]. |
| 4.3 Adams normalization | Integer −1 and a line L | ψ²(−1)=−1; ψ²(L)=L²; reduced line quotient doubles | Retain. [r3]. |
| 4.3 characteristic-2 congruence | General λ-ring, ψ²(x)=x²−2λ²(x) | Difference ψ²(x)−x²=−2λ²(x), hence 0 mod 2 | Retain. [r3]. |
| 5.1 Steinitz positive rank | Rank-one I; I of order two | I≅A⁰⊕I; I⊕I has determinant I²=1 and is A² | Retain r+1 bound in Lean. [r3]. |
| 5.1 zero module | Rank 0 | Determinant=1, K₀ class=0; it is not A^(−1)⊕1 | Zero case separate. [r3]. |
| 5.2 rank_pic_equiv_exists | Virtual pair (−1,L) | [L]−2[A] maps to (−1,L); reduced products vanish | Retain ring enhancement; import the additive classification under R01. [r3]. |
| 5.2 field and residue base change | Field k; Dedekind A→κ(p) | Pic(k)=0; (n,L)↦n and L becomes trivial | Retain. [r3]. |
| 5.3 localization | PID; fraction field of nonprincipal Dedekind A | PID gives ℤ→ℤ identity; fraction field kills all Pic and preserves n | Retain localization; import the quadratic class under R01. [r3]. |
| 5.3 quadratic order | I=(2,1+√−5) | I²=(2), so twice reduced class=0; norm-2 obstruction makes class nonzero | Correct value; import the existing order-two result under R01. [r3]. |
| 5.3 disconnected negative control | k×k, invert (1,0) | Rank group ℤ²→ℤ is projection, not rank-preserving on a fixed domain | Dedekind-domain hypothesis excludes it. [r3]. |
| 5.4 index-ideal definition | ℤ-line maps 0,1,6 | Index ideals (0),(1),(6); multiplication by 6 has source class (6)·target class | Retain mathematical definition. [r3]. |
| 5.4 semilocal norm valuation | ℤ_(5)[i], J=(i−2) | Residue lengths 1 and 0, degrees 1 and 1; sum=1=ord₅(5) | Retain sum over primes, not a product-ring assumption. [r3]. |
| 5.5 norm correction | Identity extension; trivial S-line | d=1,s=1 gives N(L)=L; general N(S)=s·s⁻¹=1 | Retain correction factor. [r3]. |
| 5.5 transfer negative rank | Pair (−1,1) | Output (−d,s⁻¹); add output of (1,1)=(d,s) to obtain (0,1) | Retain. [r3]. |
| 5.5 projection formula | (n,L), finite extension degree d | f_*f*(n,L)=(dn,L^d s^n)=(n,L)·(d,s) | Retain; omitting s^n changes the determinant. [r3]. |
| 5.5 inseparable boundary | k(t)⊂k(u), u^p=t | Restriction of a line has rank p; scalar a has norm a^p | No separability needed. [r3]. |
| 5.5 finite/empty products | k×k over k; empty product | (a,b)↦a+b; empty sum=0, empty determinant product=1 | Retain. [r3]. |
| 6.1 stable matrices/block sum | u=2 over ℚ | diag(2,1)≠diag(1,2) as stable matrices; both determinant classes=2 | Retain distinction. [r3]. |
| 6.1 contiguous block dependence | u=2,v=3 | diag(2,1,3)≠diag(2,3,1); both K₁ values=6 | No block operation on arbitrary stable representatives. [r3]. |
| 6.2 coefficient order | Distinct roots, a=i,b=j in ℍ | Opposite-root coefficient −ba=−ji=k, whereas −ab=−k | Retain noncommutative refinement. [r3]. |
| 6.2 signed Weyl word | Integral 2×2 roots at 1,−1,1 | w=[[0,1],[−1,0]], w²=−I; in characteristic 2, w²=I | Retain. [r3]. |
| 6.2 finite perfection | E₂(𝔽₂),E₂(𝔽₃),E₃(𝔽₂) | Group/derived orders 6/3,24/8,168/168 | Retain imported AlgebraicKTheory §1.3; previous R02 repaired. [r3]. |
| 6.2 finite/stable centralizer | Central scalar uI_n, u≠1; new-index root | Finite commutator=1; after padding, new-index coefficient changes from 1 to u | Finite scalars survive; stable centralizer only 1. [r3]. |
| 7.1 Morita K₁ normalization | M₂(ℚ), units diag(2,1) and 2I | Underlying determinants 2 and 4 | Retain, excludes assigning both class 2. [r3]. |
| 7.1 triangular radical | T₂(𝔽₂), upper unipotent | Stable determinant/class=1 | Retain radical calculation. [r3]. |
| 7.2 projective automorphism/complement | Swap of k², then ⊕id on k | Both determinants=−1; characteristic 2 gives 1 | Retain complement independence. [r3]. |
| 7.2 variable-rank determinant | R=k×k, module k×0, automorphism −1 | Componentwise determinant=(−1,1); a globally nonfree carrier's default determinant is not the intended construction | Retain componentwise normalization. [r3]. |
| 7.2 opposite module side | e₁₂(a) | Right-column e₂↦e₂+a e₁; left-row conversion uses transpose over Rᵒᵖ | Same coefficient, not inverse. [r3]. |
| 7.3 tensor action | Rank-r vector space acting on class u | Tensor automorphism determinant=u^r; r=0 gives 1 | Retain. [r3]. |
| 7.3 restriction/norm | ℂ/ℝ, i and 1+i | Real determinants 1 and 2; norms 1 and 2 | Retain. [r3]. |
| 7.3 product restriction | k×k, class (u,v) | Underlying determinant uv; restricting a supported factor (u,1) gives u | Retain. [r3]. |
| 8.1 determinant splitting | ℤ, diag(−1),diag(−1,−1) | Classes −1 and +1; split projection followed by section returns the unit | Retain imported splitting. [r3]. |
| 8.1 Euclidean generation | ℤ, n=0,1,2; signed rotation | Empty/size-one determinant-one matrices are identity; w is a product of three roots | Retain all finite ranks; no positive-rank binder needed. [r3]. |
| 8.2 stable range | ℤ pair (2,5); field | 2+5b never ±1; over a field a nonzero coordinate can give 1 | Retain sharp distinction between range 2 and range 1. [r3]. |
| 8.2 quotient/zero ring | ℤ/6; zero ring | Semilocal range=1; in zero ring unit equation 0=1 holds | Retain n≥1 convention. [r3]. |
| 8.3 Schur complement | [[1,2],[3,4]] over ℚ | 1·(4−3·1⁻¹·2)=−2=ordinary determinant | Retain order. [r3]. |
| 8.3 division-ring/small-rank exception | ℍ, n=1; 𝔽₂,n=2 | [i,j]=−1 has norm1 while E₁=1; GL₂(𝔽₂)=E₂ has order6, derived subgroup order3 | Retain distinction between kernel and finite commutator. [r3]. |
| 8.3 quaternion scalar normalization | Scalars −1 and 2 | Norms 1 and 4, not −1 and 2 | Retain squared norm. [r3]. |
| 8.4 circle charts | Plus chart t=0,1; minus chart t=0 | (1,0),(0,1),(−1,0); x²+y²=1 in each | Retain both charts. [r3]. |
| 8.4 determinant-preserving deformation | diag(2,1/2), halfway linear interpolation to I | Intermediate diagonal (3/2,3/4), determinant9/8; dividing by sqrt(9/8) restores determinant1 | Retain normalization. [r3]. |
| 8.4 Spin obstruction | Positive full rotation | Lift starts 1, ends −1; stabilization leaves this endpoint −1 | Retain stable, not only size-two, obstruction. [r3]. |
| 9.1 relative normal closure | Dual numbers k[ε]/ε² | (1+aε)(1+bε)=1+(a+b)ε; relative units identify with additive k | Retain nilpotent case. [r3]. |
| 9.1 Jacobson versus radical ideal | Ideal (6)⊂ℤ | (6) is radical, but Jac(ℤ)=0 and (6) is not contained in it | Correct stronger hypothesis retained. [r3]. |
| 9.2 augmented multiplication | I=2ℤ, (1,2) | Square=(1,8); pullback coordinates (1,3) square to (1,9) | Retain corrected source locator. [r3]. |
| 9.2 zero/unit ideal | I=0 and I=A | Relative K₀=0 and K₀(A), respectively | Retain. [r3]. |
| 9.2 projection and central factor | A=k×k,I=k×0 | Relative class n maps by add to (n,0); pr maps it to 0 | Retain, distinguishes projections. [r3]. |
| 9.2 boundary/opposite/inverse | A patched class of order 3 | Opposite-transpose preserves class 1 mod3; inverse transition gives 2 mod3 | Retain. [r3]. |
| 9.3 denominator-clearing boundary | v₂(12), clear denominator by 2 | 2=3−1; diag(π,π⁻¹) gives 1−1=0 | Retain positive valuation. [r3]. |
| 9.3 ramification/residue degree | Ramified quadratic DVR, e=2,f=1 | Pullback of π has valuation2; norm valuation of upstairs uniformizer=1 | Retain distinct e and f rules. [r3]. |
| 10.1 universal symbol and identity levels | I=0; A=ℤ,I=A | Only trivial symbol at zero level; absolute integer stable defect=1 | Retain. [r3]. |
| 10.1 image commutativity | Symbol image C₂ inside C₂×S₃ | Image commutator=1; ambient S₃ still has nontrivial commutators | Retain image-only assertion. [r3]. |
| 10.2 completion/level | [[5,2],[12,5]] | det=25−24=1; congruent I mod2, not mod4 | Retain exact ideal level. [r3]. |
| 10.2 transpose/inverse | Diagonal unit completion | Symbol of unit numerator=1; transpose sends symbol value to its inverse, also 1 here | Nonunit order-three test above detects inverse. [r3]. |
| 10.3 relative unimodularity | Columns (3,2,0),(2,1,0),(3,6,0), level2 | First: gcd1 and e₁ mod2; second: gcd1 but wrong residue; third: right residue but gcd3 | Retain both conditions. [r3]. |
| 10.3 relative perfectness caution | E₃(ℤ,2ℤ) | Commutators are I mod4, while e₁₂(2) is not | Do not infer relative perfection from absolute perfection. [r3]. |
| 10.3 oriented reduction | e₁₂(2), contraction parameter t | t=1 gives e₁₂(2); t=0 gives I | Retain direction. [r3]. |
| 10.4 L-standard form multiplication | Scalar blocks a=2,b=3,y=5,z=7 | L product block=6, off-block az+y=19 | Retain order of coefficients. [r3]. |
| 10.4 R-standard form multiplication | a=2,b=3,p=5,q=7 | R product block=6, off-block q+pb=22 | Retain distinct right formula. [r3]. |
| 10.5 multiplier definition | S₃, f=id, square, constant1 | (size H,size N)=(6,1),(1,3),(6,6) | Retain mathematical definition. [r3]. |
| 10.5 stabilizer versus kernel | S₃,f=id | Every conjugation preserves {1}; only identity preserves all values | Retain stronger condition. [r3]. |
| 10.5 endpoint reflection | Rank4, e₀₁(t) | Transpose+swap endpoints gives e₁₃(t); full reversal gives e₂₃(t) | Retain endpoint-only convention. [r3]. |
| 10.5 GE versus E | ℤ, diag(−1,1) | determinant−1; in GE₂, not E₂ | Retain diagonal generators. [r3]. |
| 10.6 last interchange/rank two | Determinant value of swap, rank2 | Value−1; ordinary integers have stable-range bound2, insufficient for the bound1 special argument | Retain stronger rank-two hypotheses. [r3]. |
| 10.7 finite universal defect | SL₃(𝔽₂), I=whole field | SL₃ and E₃ both order168; quotient order1 | Retain special-linear, not unrestricted GL, defect. [r3]. |
| 11.1 ramified higher units | ℚ₂(i), h=0,1,2,3,4,5,6 | Formula gives r=1,1,1,1,2,2,4 | Retain ramification-dependent threshold, including p=2. [r3]. |
| 11.1 roots and tame orientation | ℚ₇, cubic residue, unit3 | 3² mod7=2; inverse symbol corresponds to4 | Retain transposition to BMS order. [r3]. |
| 11.2 finite defect orders | ℤ[ζ₃], levels6,12,18,36 | Orders1,2,3,6 from the 2- and 3-primary thresholds | Retain. [r3]. |
| 11.2 transition exponent | μ₄→μ₂ | i↦i²=−1; identity on μ₂ is not restriction of i↦i | Retain power transition. [r3]. |
| 11.2 corrected extension exponent | ℚ(ζ₈)/ℚ(√2), and /ℚ(√−2) | Norm ζ₈=ζ₈⁸=1 in first, ζ₈⁴=−1 in second; both extensions degree2 | Retain norm-on-roots rule; degree-only rule fails. [r3]. |
| 11.3 higher-rank kernel | SL₃(ℤ); SL₃(ℤ[i]); invert one finite prime | Kernel orders1,4,1 respectively | Retain place hypotheses. [r3]. |
| 11.3 absolute/relative elementary generation | Nonexceptional S-integers, I=0 and I=A | Zero level gives 1=1; unit level reduces to SL_n=E_n | Retain; n≥3 still required. [r3]. |
| 11.3 arithmetic nonzero level | Field 𝔽₂ versus number-field ring | Over field only nonzero ideal is whole field, so identity subgroup cannot contain its full SL₃ of order168 | Number-field arithmetic hypothesis essential. [r3]. |
| 11.4 coarse-domain generation | ℤ on ℝ, U=(−0.1,1.1) | Overlap set={−1,0,1}, generating ℤ | Retain. [r3]. |
| 11.4 connectedness | Infinite direct sum C₂ acting discretely on itself | U={0} has overlap set {0}, yet generated subgroup is {0}, not whole group | Connectedness excludes false inference. [r3]. |
| 11.4 arithmetic tree quotient | SL₂(ℤ[1/p]) | Two vertex orbits, one edge; common stabilizer has lower-left entry0 mod p | Retain both vertex types. [r3]. |
| 11.4 Serre closure versus bare roots | ℤ,I=2ℤ | e₀₁(1)e₁₀(2)e₀₁(−1)=[[3,−2],[2,−1]]; top-left3 mod4 versus bare even-root words1 mod4 | Retain ambient SL₂ normal closure. [r3]. |
| 11.4 zero and field levels | I=0; I=k over 𝔽₂,𝔽₃ | Serre closure orders1;6;24 | Retain, no small-field perfectness assumption. [r3]. |
| 11.4 finite generation versus centrality | ℚ,S=∅ | Unit rank0; SL₂(ℤ) finitely generated; positive-unit-rank premise false | Retain separate bounds and the new per-target dependencies. [r3]. |
| 11.5 relative extension zero coefficient | M=1 | Hom(C,1) has one element; split relative extension has one isomorphism class | Retain. [r3]. |
| 11.5 rank-two kernel/CSP | ℚ,S={p}; ℚ,empty; CM quartic ℚ(ζ₅),empty | Place counts2,1,2; kernel orders1,infinite,10 | Retain; both rank-two native headlines are now present. [r3]. |
| 11.5 finite-generation inference | Finitely generated abelian ℤ^r⊕T | Profinite completion contains ℤ̂^r; finite completion forces r=0, leaving T | Retain finiteness prerequisite. [r3]. |
| 11.6 prime-to-p descent | C=C₄, k=𝔽₅ or 𝔽₂ | Hom(C₄,𝔽₅) has1 element; Hom(C₄,𝔽₂) has2 | Retain p∤size C. [r3]. |
| 11.6 PGL determinant quotient | Exponent2 quotient, characteristic5 | 2a=0 forces a=0; characteristic2 admits nonzero a | Retain p>n. [r3]. |
| 11.6 common neighborhood | Two characters with kernels U,V | Both vanish on U∩V; finite intersection open; infinitely many p-adic levels intersect in {0}, not open | Retain finite-dimensional qualification. [r3]. |
| 12.1 regular curve resolution | Doubled affine line, skyscraper at one origin | 0→O(−D)→O→k_D→0; rank terms1−1=0 | Retain nonseparated curves. [r3]. |
| 12.1 dimension-zero component | Spec k | Finite vector-space resolution already degree0; K₀=G₀=ℤ | Retain dimension≤1. [r3]. |
| 12.2 curve rank/determinant | Point class D on ℙ¹ | [O]−[O(−D)] has rank0, determinant O(D) | Retain positive divisor sign. [r3]. |
| 12.2 curve square-zero ideal | Two reduced line classes | (0,L)(0,M)=(0,1) | Retain curve rank–Picard ring. [r3]. |
| 12.3 projective-line coordinates | O(1),O(−1), basis O,O(−1) | Coordinates(2,−1),(0,1); rank/degree(1,1),(1,−1); Euler characteristics2,0 | Retain. [r3]. |
| 12.3 reduced multiplication | z=[O]−[O(−1)] | rank/degree(z)=(0,1); z²=(0,0) | Retain z²=0. [r3]. |
| 12.4 doubled origins | Coordinate t on doubled line | Divisor(t)=D₀+D₁, so [D₁]=−[D₀]; Pic=ℤ; K₀=ℤ² | Retain correction of Weibel example. [r3]. |
| 12.4 elliptic finite field | y²=x³−x over 𝔽₅ | Seven affine points+infinity=8; 2(2,1)=(0,0), order4; three nonzero 2-torsion points | Group C₄×C₂, not cyclic C₈. [r3]. |
| 12.4 anisotropic conic | Real conic without real points | Degrees over ℝ form2ℤ; after ℂ base change degrees formℤ | Retain actual degree image. [r3]. |
| 13.1 absolute/support Euler class | [ℤ —p→ ℤ] | Absolute K₀ class1−1=0; supported length class1 | Retain support distinction. [r3]. |
| 13.1 nonprincipal resolution/Cartan | I→A; dual numbers over k | Euler class[A]−[I]; Cartan of free dual-number module has k-length2 | Retain. [r3]. |
| 13.1 automorphism transfer loop | ℂ/ℝ multiplication i | Underlying block determinant1 equals norm1 | Retain θ-normalization. [r3]. |
| 13.2 Steinberg coefficient order | Roots ij(i),jk(j) over ℍ | Commutator root ik(k); reversed factors would give −k | Retain. [r3]. |
| 13.2 quotient roots/prism | Quotient map identity versus zero; integer class3 | Root kernel {1} versus whole St; transposing the two interval coordinates has degree −1, sending 3 to −3 | Retain explicit quotient and sign. [r3]. |
| 13.3 congruence loop | I=0; I=A and scalar−1 over ℤ | Zero ideal has trivial relative loop; unit ideal contains loop of−1 of order2 | Retain based relative, not absolute-zero, construction. [r3]. |
| 13.4 inverse lifted-word boundary | Boundary coordinate3 in an infinite cyclic target | Inverse word gives−3, not3; identity word gives0 | Retain negative normalization. [r3]. |
| 13.4 split quotient | Split dual-number reduction k[ε]→k | Lifted source loops give boundary0 | Retain, excludes arbitrary nonzero boundary. [r3]. |
| 13.5 double comparison | ℤ/4→ℤ/2, lift coordinates (1,3) | Square=(1,1); first projection1, second3 | Retain two projections separately. [r3]. |
| 14.1 graded-line symmetry | Degrees1,1; −1,1;1,2 | Signs−1,−1,+1; characteristic2 gives+1 in all cases but grades remain distinct | Retain integer grading and Koszul rule. [r3]. |
| 14.1 automorphism group | Trivial line over 𝔽₅; empty scheme | Four scalar automorphisms; empty scheme has one | Retain groupoid rather than Picard set. [r3]. |
| 14.2 symmetric determinant | Swaps of ranks1/1 and1/2 | Determinants−1 and+1 equal (−1)^(rs) | Retain. [r3]. |
| 14.2 scalar/isomorphism naturality | Scalar2 on one ℚ-line | Determinant scalar2, not1 | Retain actual morphisms. [r3]. |
| 14.3 first truncation | Field 𝔽₅ and field 𝔽₂ | π₀=ℤ; π₁ sizes4 and1; graded-line units have same sizes | Retain τ≤1, no full-spectrum equivalence asserted. [r3]. |
| 14.3 loop determinant | ℚ-line automorphism−1 | Loop maps to scalar−1 | Retain fixed orientation. [r3]. |
| 14.4 shift and acyclic trivialization | Line in degree−1; [ℚ —2→ ℚ] | Grade−1 and dual line; acyclic grade0 and coefficient1/2 | Agrees with PadicMeasures §5.1. [r3]. |
| 14.4 divisor perfect complex | O(−1)→O on ℙ¹ | Determinant O(1), grade0 | Retain triangle order. [r3]. |
| 14.4 descent compatibility | Overlap identifying grades1 and2 | Equality1=2 fails, so no descent datum; matching grade1 retains scalar-unit cocycle | Retain graded descent. [r3]. |
| 14.5 supported extension | α of line L | Output(L,1), not(L,0); W(k) itself has nonzero p-inversion | Retain specified support and extension homotopy. [r3]. |
| 14.5 filtration/shift difference | Two degree-zero lines; C→0→C[1] | Filtration grade1+1=2; triangle grades r+(−r)=0 | Retain no alternating filtration signs. [r3]. |
| 14.5 uniqueness data | Swap two rank-one factors | Comparison scalar−1; erasing coherence would give+1 | Retain specified comparison homotopy. [r3]. |
| 14.6 constant finite length | Q=0,k,W(k)/p² | Grades0,1,2; lines1,det(k),det(k)⊗det(k) | Retain. [r3]. |
| 14.6 nontrivial factors/trivial product | Q=k², tautological line on perfected ℙ¹ | Determinants O(−1),O(1); productO, degrees−1+1=0 | Retain product theorem, not factor triviality. [r3]. |
| 14.6 basis normalization | One-dimensional k-line, basis multiplied by a≠1 | Chosen generator changes by a; isomorphism class remains trivial | Retain trivializable, not preferred trivialization. [r3]. |
| Lean carriers: FiniteProjectives, RingK0, projectiveClass | k² and k³; ℤ/2 over ℤ | finite projective classes 2+3=5; ℤ/2 has no projective-object witness | Retain genuine full subcategory, not an arbitrary carrier. [r3]. |
| Lean freeProjective and Picard scalar instances | n=0,2; additive Picard class a | free classes 0,2; left and opposite integer action by −2 both give −2a | Retain zero rank and matching central actions. [r3]. |
| Lean lineProjective | trivial line and a nonprincipal invertible ideal | ranks 1,1; reduced classes 0 and nonzero [I]−1 | Retain class normalization; R01 supplies additive classification. [r3]. |
| Lean finiteElementaryGroup | rank 0,1; field rank2 | no distinct root indices give trivial groups in ranks0,1; E₂(𝔽₂) has6 elements | Retain exact native closure. [r3]. |
| Lean CircleRing/circleRotation | real evaluations (1,0),(0,1) | rotation matrices I and [[0,−1],[1,0]], both determinant1 | Retain honest quotient and inverse data. [r3]. |
| Lean principalCongruence | I=0 and I=R | kernels {1} and whole SL_n respectively | Retain nonzero-ideal requirement in CSP. [r3]. |
| Lean relativeElementaryGroup | I=0, I=R; rank1 | normal closures {1}, E_n; rank1 always {1} | Retain normal closure inside E, distinct from Serre closure. [r3]. |
| 1.1 idempotent conjugation | e=diag(1,0), g=[[1,1],[0,1]] | g⁻¹eg=[[1,1],[0,0]]; its row image is the image of e followed by g | Retain conjugation direction. [r3]. |
| 1.2 invariant-basis-number criterion | zero ring versus M₂(k) | η:ℤ→0 has kernelℤ; η for M₂(k) is n↦2n, injective but not onto | Retain the specified η, not an abstract K₀≅ℤ. [r3]. |
| 1.3 projection formula direction | k→k×k, class(1,0) | extension after restriction gives(1,1) ≠ 2(1,0)=(2,0); restriction after extension gives2 | Retain only the justified projection formula. [r3]. |
| 2.1 clopen rank section is multiplicative | k×k, idempotents e=(1,0), f=(0,1) | eR⊗fR=0; rank product(1,0)(0,1)=(0,0) | Retain ring section. [r3]. |
| 2.3 retraction integrality | a=2 and a=1+s, s²=−5 | ι(2)=(−1+s,−1−s); ι(1+s)=(−3,2−s), both in A² | Retain extra retraction calculation after R01. [r3]. |
| 3.1 exterior degree zero and above rank | rank-one line L | Λ⁰L=R, Λ¹L=L, Λ²L=0; ranks1,1,0 | Retain real exterior powers. [r3]. |
| 3.4 line γ-series | x=[L]−1 | γ_t(x)=1+xt, so γ²(x)=0; λ²(x)=−x | Retain substitution, not coefficient renaming. [r3]. |
| 4.1 determinant tensor powers | ranks2 and3, determinants L,M | det(P⊗Q)=L³M²; for diagonal(2,3) and identity rank3 determinant=6³=216 | Retain cross exponents. [r3]. |
| 5.1 cancellation | rank-one ideals I,J; I⊕A≅J⊕A | determinants I and J must agree; zero summand leaves I≅J | Retain positive-rank decomposition and separate zero case. [r3]. |
| 5.2 multiplication coordinates | (2,L),(3,M) | product(6,L³M²); reduced pairs(0,L),(0,M) multiply to(0,1) | Retain the new square-zero ring enhancement. [r3]. |
| 5.4 composition of line indices | ℤ multiplication2 then3; zero map | indices(2)(3)=(6)=index(6); composing zero gives(0) | Retain map-level multiplicativity. [r3]. |
| 7.2 automorphism zero and sum | zero object; line scalars2 and3 | zero automorphism class1; direct sum determinant6=2·3 | Retain actual automorphism-class normalization. [r3]. |
| 7.3 projection formula | rank2 module, ℂ/ℝ scalar1+i | restriction norm2, then rank2 action4; norm((1+i)²)=norm(2i)=4 | Retain. [r3]. |
| 8.4 elementary nullhomotopy | continuous e₁₂(f), scale f by t | at t=0 identity, at t=1 original shear; determinant1 for all t | Retain continuous stable obstruction. [r3]. |
| 9.1 relative square-zero non-excision control | strict upper radical J of T₂(k) | 1+aE₁₂ elementary, so ambient relative K₁ class1; unitization retains additive parameter a | Retain distinction between ambient relative and nonunital models. [r3]. |
| 10.3 relative-row equivalence direction | t=0 and t=1 in displayed homotopy | at0 the elementary correction contracts toI; at1 the original correction remains | Retain specified endpoints. [r3]. |
| 11.1 arithmetic parameter exclusions | F=ℚ,S=∅; F=ℚ,S={2}; p=2 | place counts1,2; S-unit ranks0,1; ramified exponent uses e=2, not e=1 | Retain finite S and ramification. [r3]. |
| 11.3 congruence_subgroup_failure witness | F=ℚ(i),n=3,I=(1+i)⁶ | Γ(I)/E(I) has order4; finite-index E(I) contains no nonzero principal level | Retain exceptional failure headline. [r3]. |
| 11.4 noncentral normalizer condition | central {±I}⊂SL₂(F), F infinite | all its matrices have off-diagonal entries0; e₀₁(t) with t≠0 is absent | Retain noncentral premise. [r3]. |
| 11.5 rankTwo_congruence_subgroup_property | ℚ,S={2}; ℚ,S=∅ | rank bound2≤2 is true, congruence kernel1; 2≤1 false, kernel infinite | Retain explicit hRank in Lean. [r3]. |
| 11.5 rankTwo_congruence_subgroup_failure | ℚ(ζ₅),S=∅; ℚ(i),S=∅ | r₂=2 gives hRank true and kernelμ₁₀; r₂=1 fails hRank | Retain exceptional positive-rank scope. [r3]. |
| 12.3 proper Euler degree | ℙ¹ and O(−2) | χ(O(−2))=−1, rank1, χ(O)=1; degree=−1−1=−2 | Retain integer subtraction and properness. [r3]. |
| 13.2 quotient-root surjectivity | identity quotient and R→0 | St(identity) is identity; St(0)=1, so quotient map is onto in both cases | Retain group-presentation route. [r3]. |
| 13.4 supported non-excision control | ℝ[t], I=(t²−t) | relative defect C₂ can be nontrivial while absolute SK₁(ℝ[t])=1 | Retain relative group rather than absolute kernel shortcut. [r3]. |
| 14.1 object definition and wrong model | field k, grades0,1 with same line | Hom((k,0),(k,1)) empty; Aut((k,0))=k× | Retain groupoid and full integer degree. [r3]. |
| 14.1 forgetting degree | two odd ℚ-lines | graded self-swap scalar−1; ungraded line self-swap scalar+1 | Retain E₁ splitting, reject symmetric splitting. [r3]. |
| 14.5 support at p=2 | W(𝔽₂)=ℤ₂, cone(2), cone(4) | supported lengths1,2; ordinary Euler ranks0,0 | Retain p=2 and support; no good-prime restriction. [r3]. |
| 14.6 refinement and change of filtration | length2 module, two length1 quotients | sum grades1+1=2; determinant product equals the fixed length2 line | Retain unalternated filtration and coherent comparison. [r3]. |

## Not verifiable

None in the changed passages. Both required source texts were obtained legally and their locators read; no missing-text request or conditional supplier gap remains. Unchanged source verification and adversarial rows are explicitly carried from [r3], rather than newly certified in this incremental round. The admitted theorem proofs remain implementation work; successful elaboration establishes their types, not their truth.

## Source issues

The prior source issues remain recorded in [r3]. The first two below were encountered again in the source passages reopened this round; the third is a further adjacent misprint. Its witness is X=ℤ as a discrete E∞ group: π₀(ΩBℤ)=ℤ, whereas π₁(ℤ)=0. The corrected π₁(Bℤ) is ℤ (bhattScholze2015 line 2684; [author preprint, Remark 12.11](https://arxiv.org/pdf/1507.06490v3#page=58)). None changes this verdict.

- **Error** in weibel2013 at Example II.2.5.4, printed p. 74: the source says every characteristic-zero field gives one simple group-algebra factor per conjugacy class; it should be restricted to a splitting field, since ℚ[C₃] has two simple factors; affects a stated result.
- **Misprint** in weibel2013 at Proposition II.2.6, proof, printed p. 74: the source says exterior summands use Q in degree i and P in degree j; it should be P in degree i and Q in degree j to match the rank bounds; affects the proof.
- **Misprint** in bhattScholze2015 at Remark 12.11, printed p. 58: the source says π₀(ΩBX) equals π₁(X); it should be π₁(BX); affects the proof.
