# Review of GeneralAlgebraicKTheory (pull request #1212 at f16a788)

**Verdict:** needs changes

## R01 (P1) — The additivity fibre is not contractible

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:1085`, §5.4; also the supplier contracts at lines 7 and 65. Claim: the subobject map has contractible simplex fibres.

Witness: take finite-dimensional k-vector spaces with isomorphisms as weak equivalences. Over the zero vertex the object-S fibre is δC, with π₁=K₀(C)=ℤ, not 0. In degree S₁ the corresponding isomorphism-category fibre has components ℕ.

The quotient coordinate survives the pushout homotopy. This is also what the fourth Check says. The cited supplier now states the correct result in `TauCetiRoadmap/StableHomotopyKTheory/README.md:2205`, §6.2: the quotient projection from the simplex fibre to δC is a homotopy equivalence. The names `additivity_simplexFibre` and `additivity_swallowing` are not that supplier's current contract. Waldhausen's proof preserves the quotient (`waldhausen-5` line 884, printed pp.339–340).

Repair: consume §6.2's `AdditivityFibre`, `AdditivityFibre.pushout_contraction` and `SConstruction.object_additivity`. State the comparison F_y→Δ[n]×δC, not F_y→*. Update §5.3 as well: the supplier already gives the natural-isomorphism homotopy on object S. Delete the empty §5.5 deferral stub. On the zero vertex the repaired comparison induces ℤ→ℤ, the identity, rather than the impossible ℤ→0 isomorphism.

## R02 (P1) — A shift is not the countable-envelope swindle

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:2676`, the API of §11.5. Claim: the envelope is flasque “with the shift functor as witness”.

Witness: for the constant admissible sequence k, its shifted sequence represents k again. Thus id⊕shift has dimension 2 on this object, while shift has dimension 1. They cannot be naturally isomorphic.

Schlichting explicitly distinguishes the shift t from T=⊕ᵢ≥₀tⁱ (`schlichting-2003-11` line 421, Lemma 4.2, p.9). Repair: name the countable-sum functor T as the witness and give its reindexing isomorphism id⊕T≅T. Keep a negative-control Check for the shift alone. On k, the repaired equality is 1+ℵ₀=ℵ₀; the original 1+1=1 fails.

## R03 (P1) — The plus/Q normalization has a dependency cycle

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:629`, §3.12, and lines 641 and 676. Claim: prove the ring plus/Q comparison using §3.14's normalization.

Witness: §3.12 consumes §3.14; §3.14 explicitly needs §§3.12–3.13; §3.13 consumes §3.12. The dependency walk 3.12→3.14→3.12 returns to its start. The prose edge is missing from §3.12's Needs line.

Repair: separate the split-exact group-completion/Q equivalence from the normalized ring comparison. Prove the former first, then projective cofinality, then the opposite-ring/inversion adapter and normalized ring theorem. Give each separate Needs lines. The order then has no return edge. Retain the F₅ unit 2 Check: inverse transpose gives 3, and subsequent inversion returns 2. Moving the adapter must not discard that normalization.

## R04 (P2) — Import the additive groups and boundary from their owner

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:939`, §4.15, and lines 964–997, §§4.16–4.17. These sections construct the relative-triple group, additive automorphism K₁, and their boundary again.

Witness: `TauCetiRoadmap/AlgebraicKTheory/README.md:291`, §2.2, owns additive automorphism K₁; lines 346 and 364, §§3.2–3.3, own these same triples and the summand-dense boundary. At T=id both presentations give K₀(T)=0 and the same zero boundary.

The supplier also proves exactness at K₀(T) and K₀(C) for summand-dense T, and at K₁(D) when T is full. These are current contracts of the earlier new roadmap, not hypothetical future interfaces.

Repair: cite those sections in Scope and Exact supplier contracts, removing the repeated constructions and supplied exactness claims as local targets. Retain the genuinely additional comparison with Q-theory and, separately, the proposed extension of exactness at K₁(D) to non-full T, with its own proof route. The supplied ℤ→F₅ instance still has K₀(T)=F₅ˣ/{±1}=C₂ and δ(2) its nonzero element; no new group or boundary is needed to obtain it.

## R05 (P2) — Quillen A is already a supplied theorem on the same carrier

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/Suggested.lean:48` and line 54; README §1.4 at line 140. The file admits Quillen A and its dual as this roadmap's headline theorems.

Witness: `TauCetiRoadmap/StableHomotopyKTheory/README.md:888`, §2.31, supplies Quillen A and its opposite-category dual on the realized nerve. The local abbreviations are precisely Mathlib's realized nerve and nerve map, not a different model requiring comparison.

Repair: import this theorem by supplier section in the README; delete these two admissions from `Suggested.lean` and delete the two now-unused classifying-space abbreviations. Explain their supplier ownership in the module docstring. The terminal-endpoint inclusion into [1] satisfies the under-comma criterion; the initial-endpoint inclusion satisfies its dual. Both give the same point-to-interval equivalence as the supplier. Removing the duplicate loses no mathematical coverage.

## R06 (P2) — Restore the refinement hypothesis in the resolution filtration

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:779`, §4.5, with its hypotheses at line 783. The section invokes Quillen's three resolution-dimension inequalities under extension and admissible-kernel closure alone.

Witness: Quillen's Corollary 1 additionally assumes that every deflation M↠P with P in the subcategory admits P′→M whose composite P′↠P is a deflation, with P′ in the subcategory (`quillen-2` line 1066, printed p.109; checked against the scan).

That hypothesis is neither among the stated closure conditions nor a named input to the filtration argument. The final conditional assumption that all H-objects have finite P-resolutions supplies covers, but appears only after the unconditional closure claims.

Repair: add the source's refinement hypothesis to the filtration theorem, or explicitly put existence of P-deflations onto every H-object before all those claims. Preserve the more general refinement version if using Quillen's general corollary. For finitely generated ℤ-modules a finite-free cover provides the required refinement; ℤ/2 still has dimension 1. For dual numbers finite-free covers still exist, while the simple module retains infinite resolution dimension. Thus the repair does not conflate enough covers with finite resolution length. This finding concerns an unsupported proof input, not a claimed counterexample to the final finite-resolution theorem.

## R07 (P3) — The scalar-extension locator points to different results

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:404`, §3.1. The cited II.2.2–2.4 and III.1.1.1 are offered for projective scalar extension.

Witness: in the cited combined K-book, II.2.2 is nilpotent/complete-ideal K₀ invariance (line 3953); II.2.3 concerns reduced K₀ (line 4016); III.1.1.1 concerns SK₁ (line 9972).

Repair: cite Weibel II Remark 2.8 and Example 2.8.1, printed p.76 (`weibel-1` line 4262), and the precise AlgebraicKTheory A0 tensor/coherence contract. These support associative scalar extension without flatness. The ℤ→F₂ Check remains valid: split sequences stay split, whereas multiplication by 2 on ℤ becomes the zero map after tensoring.

## R08 (P3) — README API names claim declarations that are absent

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:298`, §2.2, representative of the API lists throughout. It backticks local names such as `QCat.lift`, `QCat.lift_unique` and `QCat.map`.

Witness: none is declared in the 141-line `Suggested.lean`; that file correctly explains that the Q carrier is unavailable. They are proposed local declarations, not pinned or supplier declarations.

Repair: rewrite undeclared local API names as prose facts, keeping names only for actual acceptance-test declarations and precisely identified supplied APIs. Do not fill the Lean file with API padding or surrogate Q-data. After repair, the identity and zero-functor Checks still send the two Q-arrows 0→k respectively to two distinct arrows and to the single arrow in Q(0). The gate's passing name scanner does not establish compliance with this semantic rule.

## R09 (P3) — Add the required layer markers to the acceptance test

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/Suggested.lean:60`, line 99 and line 127. The remaining statements span Layers 11 and 12, without their required layer comments.

Witness: the file has `section DenseSubcategories` and `section FiniteDomination`, but no `/-! ## Layer ... -/` comments. Its module title also says “headline theorem signatures” rather than the required “target signatures”.

Repair: use the prescribed module title and Layer 11/12 comments in README order, after removing R05's duplicate Layer 1 theorems. Explicitly name triangulated idempotent completion among the unrepresented milestones and explain the missing shift/triangulation construction. These are documentation changes: the even-Euler membership test remains 1∉2ℤ and 2∈2ℤ.

## R10 (P3) — Correct the stable-automorphism comparison locator

Location: `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:968`, §4.16. The citation names “T 4.10.1” and “Example 4.11.1”, pp.IV.43–44.

Witness: the cited chapter has Example 4.10.1 about wreath products, at IV.44, and Corollary 4.11.1 about projective modules, at IV.45 (`weibel-1` (IV) lines 2074 and 2115).

Repair: cite Theorem 4.10, pp.IV.43–44, and Corollary 4.11.1, p.IV.45, for the stable automorphism/projective comparison, retaining Theorem 4.10's faithful translations and countable cofinal-sequence assumptions when using it. Import the arbitrary additive-category presentation from AlgebraicKTheory §2.2 as in R04. For finite-dimensional F₅-spaces the cofinal sequence F₅ⁿ meets these hypotheses and the comparison gives K₁=F₅ˣ=C₄, as intended.

## Verified sound

The review read all 174 numbered subsections, their API lists and Checks, and all of `Suggested.lean`. Findings above are distinct from the passing mechanical checks. Computed cases below are discriminating tests, not substitutes for the general proofs. The review found no route-specific restriction, copied source passage, computational algorithm, sorry-defined data, or `set_option` in the reviewed files. No edits outside the roadmap folder occur in the PR diff; the reviewed worktree remained unchanged. The folder contains its README, acceptance test and metadata only.

The worker gate at the specified head reports every check passing, including the targeted build. Independent `lake env lean` elaboration of the original acceptance test exited 0 with exactly seven `sorry` warnings. The dependency check returned:

```text
depcheck: 205 roadmaps, 1453 edges, 0 problem(s)
```

There is no reported UPWARD or CYCLE between roadmap folders. R03 is an internal target cycle that this folder-level check does not detect. All Needs lines were read; the changed supplier contracts are addressed in R01 and R04. No supplier gap was declared. Existing roadmap material is consumed in the correct direction except for the repeated ownership noted above.

**Sources: seeded sample.** All 15 sampled targets were opened at their locators. No README locator was marked unverified. Source identifiers below identify the fetched texts; chapter-specific Weibel texts retain the same work identifier, with the chapter explicitly specified. The source service was used for all fetches. No source text was placed in the repository or this report.

| Target | Text and locator inspected | Outcome |
|---|---|---|
| 1.4 | `quillen-2` line 343, Theorem A, p.93; line 516, Theorem B, p.97 | Both comma directions supported; ownership R05. |
| 3.1 | `weibel-1` lines 3953, 4016, 9972; replacement line 4262, II.2.8–2.8.1, p.76 | Mathematics supported by the replacement; locator R07. |
| 3.4 | `weibel-1` (III) line 160, commutators and Lemma 1.3.2; line 179, Whitehead 1.3.3, III.4 | Stable theorem, not E₂-perfectness; agrees with supplied ownership. |
| 3.7 | `weibel-1` line 19338, IV Lemma 7.5 and Remark 7.5.2, IV.62 | Fibre product over C, unit C→C, split-case condition all match. |
| 3.8 | `weibel-1` line 19389, IV Lemma 7.7, IV.63; scan also inspected | Cartesian lift direction matches the lemma; proof has the source misprint recorded below. |
| 4.5 | `quillen-2` line 1064, Corollary 1 and inequalities, pp.109–111; scan of p.109 | Missing refinement assumption: R06. |
| 4.11 | `weibel-1` line 24152, V Claim 5.1.4, V.36 (combined p.403) | Kernel functor on epimorphic models and the pushout adjunction match. |
| 4.16 | `weibel-1` line 4345, II.2.10–2.10.2; III.1.6–1.7 and IV.4.10–4.11 comparisons | Stable boundary construction is supplied (R04); the IV theorem/example numbers and pages need correction (R10). |
| 6.3 | `waldhausen-5` line 1384, Theorem 1.6.4, pp.349–350; `weibel-1` (V) line 467, Theorem 2.1, V.12 | Cylinder, saturation and extension hypotheses retained. |
| 6.6 | `waldhausen-5` line 1564, pp.357–358; p.358 read as an image because extraction is blank at line 1618 | Boundary inclusion is a cofibration in F↓B; the stronger wF↓B assertion is correctly avoided. |
| 6.17 | `thomason-trobaugh-8` line 840, Theorem 1.10.1 and proof, pp.275–277 | Surjective K₀→G and degree-zero kernel correction match; non-functorial extension uses the preceding local factorization/fibration targets. |
| 8.7 | `weibel-1` (IV) line 698, Exercises 1.15–1.16, IV.16 | Relative K₀ for a ring map and relative K₁ for an ideal are distinguished. |
| 11.5 | `schlichting-2003-11` line 398, §4.1–Theorem 4.8, pp.9–10 | Envelope and compactness statements supported; the shift is not the swindle: R02. |
| 11.7 | `schlichting-2003-11` line 190, §1.5–Remark 1.9, pp.4–6 | Completed diagram, cofinal comparison and the all-exact-sequences obstruction quantifier match. |
| 12.3 | `karoubi-1970-14` lines 338, 398, 1148, 1276, 1482 and 1525, PDF pp.11–13, 41–57 | The discrete finite-sum-of-permutants variant is expressly supported; no topological completion or unrestricted column-finite Hom is substituted. |

The other native headline sources were checked: `thomason-9` line 241 (Theorem 2.1), line 299 (membership criterion), and Corollary 2.3's proof at line 462; `ranicki-18` line 361 (Proposition 2.1) and line 607 (Proposition 3.2, including full additive subcategory generality). The README correctly uses the 2003 Schlichting preprint numbering and distinguishes the separately paginated Weibel chapters from the combined book.

**Pinned declarations and ownership.** The following are file/line witnesses from the pins, not newer online APIs. These 16 entries cover the carriers, hypothesis checks, and main duplication boundaries opened during review.

| Pinned file and line | Declaration / exact contribution |
|---|---|
| `Mathlib/Topology/Homotopy/Contractible.lean:49` | `ContractibleSpace` requires an actual homotopy equivalence to Unit; the empty space does not satisfy it. |
| `Mathlib/CategoryTheory/ObjectProperty/Retract.lean:86` | `retractClosure` uses an actual retract of an object satisfying the predicate. |
| `Mathlib/CategoryTheory/Triangulated/Subcategory.lean:177` | `ObjectProperty.IsTriangulated` supplies zero, shifts and triangle closure; repleteness and density are additional hypotheses in the Lean statements. |
| `Mathlib/CategoryTheory/Abelian/SerreClass/Localization.lean:132` | `isZero_obj_iff` detects the Serre class. |
| `Mathlib/CategoryTheory/Abelian/SerreClass/Localization.lean:415` | `abelian`; finite-limit/colimit preservation at 427/433, `isIso_map_iff` at 439, and `exactFunctor_comp_iff` at 494 provide the quoted quotient API. |
| `Mathlib/RingTheory/Finiteness/Projective.lean:28` | `Module.Finite.exists_comp_eq_id_of_projective` retains finite generation and projectivity. |
| `Mathlib/RingTheory/Morita/Matrix.lean:187` | `ModuleCat.matrixEquivalence` takes an index i, excluding the empty matrix index. |
| `Mathlib/LinearAlgebra/Dimension/Free.lean:68` | `Module.finrank_mul_finrank`, the supplied free scalar-tower dimension formula. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Triangulated.lean:139` | `TriangulatedK0`, with triangle relation at 154, rather than a surrogate group. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Triangulated.lean:327` | `TriangulatedK0.map` sends object classes along a triangulated functor. |
| `TauCeti/CategoryTheory/GrothendieckGroup/BoundedComplex.lean:202` | `SplitK0.eulerChar` sums over supplied finite support; it does not assert that an arbitrary finite set contains the support. |
| `TauCeti/CategoryTheory/GrothendieckGroup/BoundedComplex.lean:277` | `eulerChar_eq_of_homotopyEquiv_of_isZero` retains both support conditions. |
| `TauCeti/CategoryTheory/Exact/Conflation.lean:566` | The conflation category already exists; the componentwise exact structure is the new local target. |
| `TauCeti/CategoryTheory/Exact/HomologicalComplex/Frobenius.lean:200` | The ℤ-indexed split-complex Frobenius structure is supplied. |
| `TauCeti/RingTheory/Morita/Corner.lean:388` | `IsIdempotentElem.cornerEquivalence` requires the full-idempotent ideal condition. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Triangulated.lean:193` | The shift negates the object class; the dense-subcategory theorem is an additional conclusion, not this relation again. |

By-object searches covered the pinned libraries, main roadmaps, board packages and the available open roadmap heads, using the roadmap grep/show tools as well as local searches. In addition to the two suppliers in R01/R04/R05, these six main-branch contracts and one open consumer contract were resolved: AlgebraicTopology Stages 2/4/5/8 (local coefficients, CW methods, spectral sequences and homotopy); Completed/UniversalCovers Stages 0–3 (README lines 63, 98, 126); GeneralizedCohomology G2/G3/G5.4, particularly the actual path model at README line 556; DerivedModuleAlgebra §1.T.1 at line 1403; GrothendieckEulerForms Layers 2–3 at lines 238/283; DGAInfinity Layers 5–7 at lines 431/466/490; and the downstream GeneralAlgebraicKTheoryPartII scope/contract, which expressly imports this roadmap's ordinary K-theory. The latter is a consumer, not an upward input. The board's PeriodsAndSpecialValues contract also consumes the relative triples, reinforcing the need to preserve the interface while correcting its owner.

The local ownership that remains is exact-category Q-theory and its higher comparisons, relative homotopy-fibre comparisons, projective-line/Nil arguments, Bass/Frobenius/controlled-cone comparison, and the ordinary finite-field and enhancement counterexample results. The existing degree-zero, generic homotopy, stable-matrix and DG-model results do not themselves supply those higher conclusions. No fully qualified declaration-name collision was found in the acceptance test.

**Headline inventory and Lean audit.** The end/deep theorems in the README are Quillen A/B and plus/group-completion comparisons; plus=Q and K₀/K₁ normalization; exact additivity, resolution, dévissage and Serre localization; S=Q and delooping; fibration, approximation, cofinality and Gillet–Waldhausen; products, projection formula and transfers; relative comparison/excision and the valuation boundary; projective-line splitting, Nil comparison and the Fundamental Theorem; Bass negative theory, Morita invariance, Milnor excision and regular negative vanishing; dense triangulated classification, triangulated idempotent completion and Frobenius localization; finite domination, the Euler obstruction and the three nonconnective comparisons; continuity, enhanced derived invariance, the finite-field calculation and the Artin counterexample.

Seven theorems are stated in Lean: two Quillen A forms, three dense-class statements, rectification, and the Euler criterion. The five locally owned statements use native carriers and match their hypotheses. The module docstring explains the missing Q/S/spectral/derived-model carriers for the other families; the additional triangulated-completion omission is R09. The higher ring and category theorems cannot be obtained merely by replacing their missing K-groups by free types. No such substitute was introduced.

A scratch copy elaborated `#check @name` for all ten named declarations, including the two abbreviations and the finite-domination structure. Their elaborated signatures were compared with the README; there was no silently lost needed binder. The two anonymous local instances were inspected at their explicit signatures. In particular rectification retains full faithfulness, finite biproducts, bounded V and its actual domination; the Euler criterion retains finite support, and the dense-class statements retain repleteness and actual retract density. Nothing was changed in the PR.

A second scratch copy tried `rfl`, `simp`, `infer_instance` and direct assumption against each of the seven admissions. All seven left errors/goals. By-object library searches found no single native theorem proving the five local headlines outright. R05 is supplier duplication, not a claim that Quillen A is a one-tactic theorem in the pinned library. No boundary-case or computed-value admission was found.

**Adversarial table.** Each row identifies a numbered target (including its defining API), an instance and both compared values. Cₘ denotes the cyclic group of order m; k is a field; Dᵇ(k) uses cohomological grading; χ is the alternating sum. “Pass” means the displayed test agrees, not that a finite test proves the general theorem. R-numbers identify required changes. Where the target is a construction or existence theorem, the comparison is its specified invariant or structural equation. All 174 numbered targets are represented.

| Target | Instances and computed sides | Result / change |
|---|---|---|
| 1.1 Functor homotopy | Id on the terminal category: both nerve maps send its unique vertex to that vertex; π₀ maps 1→1. Zero vs identity on vector spaces later gives 0 vs 1 on K₀. | Pass; naturality/invertibility distinctions retained. |
| 1.2 Fibres | id_X has contractible fibre; *→S¹ has fibre ΩS¹ with components ℤ. Reversal sends winding 1 to −1, and twice to 1. | Pass incoming-path convention. |
| 1.3 Realization | Constant point bisimplicial set: diagonal and iterated realizations both *. Δ[1] subdivision has 3 vertices, 2 edges; χ=3−2=1 on both realizations. | Pass. |
| 1.4 Quillen criteria; both Lean forms | Terminal endpoint for under-comma, initial endpoint for over-comma: comma nerves are points, χ=1; BF is *≃[0,1]. *→two discrete points has an empty comma, π₀ counts 1 vs 2. | Mathematical test passes; R05 ownership. |
| 1.5 Plus | Perfect subgroup 1 of C₂: π₁ remains C₂. For A₅ as perfect subgroup of itself, π₁ after plus is 1, while H₀ remains ℤ. | Pass; not a universal contraction. |
| 1.6 Group completion | Finite vector-space ranks: ℕ→ℤ, formal (2,3) maps to −1; cancellative relation (2,3)=(3,4) gives −1=−1. | Pass. |
| 1.7 Stable adapter | Zero diagram: every colimit group 0. Constant stable Hℤ model: π₀=ℤ and π₋₁=0 on both sides. | Pass; integer grading retained. |
| 1.8 Sphere interchange | Degrees (1,1): (−1)¹=−1; (1,2): +1; (−1,1): −1. Product of rank-2 and rank-3 classes is 6. | Pass parity including negative degree. |
| 2.1 Q spans | Over k, the zero and whole subobjects give two distinct arrows 0→k; over the zero category there is one. | Pass; not the underlying additive category. |
| 2.2 Q universal property | Identity preserves both arrows; zero functor maps both to the one arrow. Non-bicartesian square would equate 0-subobject and k-subobject. | Pass math; R08 API names. |
| 2.3 Small models | Two skeletons of finite k-spaces give rank classes n↦n, hence 1↦1 in ℤ; zero object gives 0↦0. | Pass. |
| 2.4 π₁BQ | Split sequence k→k²→k gives [k²]=2=[k]+[k]; zero gives 0=0+0. | Pass positive loop convention. |
| 2.5 Exact groups | Zero exact category has all K_n=0; over k the n=0 formula gives ℤ, not the trivial π₀ of connected BQ. | Pass loop shift. |
| 2.6 Opposite/products/colimits | k×k gives K₀=ℤ²; opposite preserves rank (1,0); a constant directed system has colimit ℤ². | Pass. |
| 3.1 Scalar extension | ℤ→F₂: R⁰↦0, R²↦F₂²; 2⊗1=0. k→M₂(k) sends rank 1 to Morita rank 2. | Pass mathematics; R07 locator. |
| 3.2 Ring model | Identity sends [R] to [R]; zero ring has group 0. k→k×k sends 1↦(1,1). | Pass. |
| 3.3 Stable matrices | Stabilizing [a] gives diag(a,1), determinant a; elementary e₁₂(1) has determinant 1. | Pass. |
| 3.4 Whitehead | [e₁₂(1),e₂₃(1)]=e₁₃(1). E₂(F₂)=S₃ has order 6 but commutator A₃ has order 3. | Pass stable restriction; no rank-2 perfectness. |
| 3.5 Idempotent extension | h:k→k×k, a↦(a,0): h(1)=(1,0), extended rank class (1,0), not (1,1). Zero h gives 0. | Pass. |
| 3.6 Extension category | Split 0→kᵃ→kᵃ⁺ᶜ→kᶜ→0 has kernel rank a and quotient rank c; fibre over zero has middle=kernel. | Pass. |
| 3.7 Fibre monoidal product | Quotient rank c=1, kernel ranks 1 and 2: pullback middle rank 2+3−1=4, kernel rank 3; unit kernel 0 leaves 3. | Pass. |
| 3.8 Cartesian lifts | Pullback along zero inflation 0↪C returns kernel rank a; the zero-deflation Q-arrow returns middle rank a+c. With a=c=1: 1 vs 2. | Pass; source arrow misprint not inherited. |
| 3.9 Localized action | For split vector spaces the group-completed kernel ranks are ℤ; taking the action quotient kills this translation coordinate, leaving π₀=1. | Pass split-case use. |
| 3.10 Base change | Over zero fibre the group-completed rank is ℤ; translation by quotient rank 1 is n↦n+1 with inverse n↦n−1. | Pass equivalence, not equality of objects. |
| 3.11 Total extensions | Inflation category has initial 0; its nerve has reduced homology 0, matching a point. | Pass. |
| 3.12 Plus=Q | For k: π₀=ℤ on both K-models and π₁=kˣ at zero. For zero ring both groups 0. | Values agree; R03 proof-order cycle. |
| 3.13 Projective cofinality | k×k free classes form diagonal ℤ⊂ℤ²; (1,0) has complement (0,1), with sum (1,1). | Pass; positive equivalence is not K₀ surjectivity. |
| 3.14 Low-degree normalization | F₅ unit 2: inverse transpose gives 3; inversion gives 2 back. Over ℤ, −1 has order 2, elementary shear has class 0. | Pass signs; R03 reorder. |
| 3.15 Components | Over k virtual [k]−[k²]=−1 has no positive-rank representative. Translation between components adds −1 on ℤ. | Pass; no natural spectral splitting inferred. |
| 4.1 3×3 | Direct sum of two split rank sequences (1,2,1) gives (2,4,2); middle equality 4=2+2 in either direction. | Pass. |
| 4.2 Conflations | k↪k²↠k evaluates to ranks 1,2,1; componentwise zero sequence evaluates to 0,0,0. | Pass new exact structure, supplied underlying category. |
| 4.3 Additivity | Sub/quotient gives (1,1); total gives 2=1+1. For ℤ/2→ℤ/4→ℤ/2, lengths give 2=1+1 without splitting. | Pass. |
| 4.4 Length one | ℤ→ℤ by 2 resolves ℤ/2: Euler class 1−1=0, its image in G₀(ℤ) is 0. | Pass. |
| 4.5 Resolution dimensions | ℤ/2 has pd=1, zero has pd=0, k over dual numbers has pd=∞. Finite-free covers exist in both nonzero tests. | R06 refinement input. |
| 4.6 Resolution theorem | Regular PID: K₀→G₀ sends 1↦1. Dual numbers: Cartan sends 1↦2, so no isomorphism ℤ→ℤ without finite resolution. | Pass hypothesis discrimination. |
| 4.7 Intersection functors | Filtrations 0⊂pM⊂M of M=ℤ/p² have two simple factors; intersections with pM have lengths 0,1,1. | Pass actual intersection direction. |
| 4.8 Dévissage | ℤ/p² has class 2[F_p]; subcategory killed by p is not extension-closed since pM≠0. | Pass correct dévissage scope. |
| 4.9 Quotient comma models | Identity isomorphism gives unchanged object; replacing an isomorphism by multiplication by 2 over ℤ leaves cokernel ℤ/2 and is not allowed before quotient. | Pass. |
| 4.10 Kernel model | ℤ/4↠ℤ/2 has kernel ℤ/2 and cokernel 0; zero→ℤ/2 has kernel 0 and cokernel ℤ/2. | Pass; kernel and cokernel not interchanged. |
| 4.11 Epimorphic kernel equivalence | Split model K⊕M↠M, K=M=F₂, has kernel of order 2 and middle of order 4; applying section then kernel returns K of order 2. | Pass. |
| 4.12 Epimorphic replacement | For a split rank-(a+m)→m model with a=m=1, replacement preserves kernel rank 1 and quotient rank 1. Zero model gives 0. | Pass. |
| 4.13 Filtered models | In rationalized ℤ, lattices (1/2)ℤ and (1/3)ℤ embed in (1/6)ℤ by factors 3 and 2; both yield the same ℚ object. | Pass refinement, not equality of lattices. |
| 4.14 Serre localization | Finite torsion in fg abelian groups becomes 0; ℤ becomes ℚ with rank 1. Class [ℤ/2]=0 in G₀(ℤ), equal to 1−1. | Pass. |
| 4.15 Relative triples | id gives K₀(T)=0; T:C→0 gives K₀(C). ℤ→F₅ gives [(ℤ,2,ℤ)] of order 2, difference 1−1=0. | R04 duplicate ownership. |
| 4.16 Automorphism boundary | det diag(2,3)=1 in F₅; δ(2)+δ(3)=0 in C₂. For T=id every boundary is 0. | Pass signs; R04 ownership, R10 locator. |
| 4.17 Five-term sequence | ℤ→F₅: image {±1} has order 2, quotient F₅ˣ/{±1} order 2, last map ℤ→ℤ is identity. | Pass this full instance; R04 separate non-full extension. |
| 5.1 Waldhausen axioms | Vector spaces: 0↪k is cofibration; k→0 is not. Identity is weak; zero endomorphism of nonzero k is not an isomorphism. | Pass. |
| 5.2 S diagrams | S₀ has one zero object; S₂(k↪k²↠k) has face ranks 1,2,1. Map between 0↪k↠k and k↪k↠0 fails on quotient k→0. | Pass latching condition. |
| 5.3 Object-S comparison | Zero and identity act on π₁δC=ℤ by 0 and 1; a noninvertible natural transformation cannot identify them. | Pass test; update supplier contract in R01. |
| 5.4 Simplex fibre | Zero-vertex fibre δVect(k) has π₁=ℤ; a contractible space has π₁=0. Quotient projection instead gives ℤ→ℤ, identity. | Fail, R01. |
| 5.5 Pushout homotopy | Quotient Q=k keeps rank 1 before and after pushout; quotient 0 has rank 0. | R01: contraction to section, not to point; remove stub. |
| 5.6 Object additivity | Subquotient of k↪k²↠k is (1,1) in ℤ²; total rank is 2, not a coordinate replacement. | Pass corrected supplied theorem. |
| 5.7 K space | Vect(k): π₀ΩδC=ℤ; the raw object monoid has ranks ℕ. Zero category gives a point. | Pass group completion. |
| 5.8 Edgewise diagrams | Reindex [1] edgewise gives [3] with 4 ordered vertices; degree zero gives [1], not [0]. Zero exact category still realizes to *. | Pass indexing. |
| 5.9 S=Q | At k the looped models both have K₀=ℤ; at zero both have 0. Their unlooped spaces are connected, π₀=1. | Pass shifts. |
| 5.10 Waldhausen additivity | The split cofibration has total class 2 and outer sum 1+1=2; a nonsplit length-two module has the same equality. | Pass no split-only restriction. |
| 5.11 Relative delooping | F=id: relative path construction contractible. F:0→C produces the loop relation; F:C→0 retains C's K-data, not 0. | Pass fibre rotation. |
| 5.12 Factorizations | For isomorphism weak maps on vector spaces, k→0 cannot factor as injection followed by iso to 0 (would force k↪0). Mapping cylinders on complexes do factor it. | Pass existential factorization not automatic. |
| 5.13 Poset diagrams | Empty lower set has latching 0; two incomparable one-dimensional predecessors have latching k², rank 2, not k. | Pass. |
| 5.14 Swallowing | Zero category yields point in either nerve direction; identity-string insertion on k retains rank 1, deletion returns rank 1. | Pass. |
| 6.1 Trivial cofibrations | Identity complex map has zero cofiber, hence is trivial; 0→k[0] has cofiber k[0], H⁰=k≠0. | Pass. |
| 6.2 Relative localization | v=w: weak-acyclic subcategory consists of objects weakly equivalent to 0; its K-space is contractible, matching fibre of identity. | Pass. |
| 6.3 Fibration | v=w on bounded k-complexes gives fibre groups 0 and identity K_i→K_i; zero category gives 0→0→0. | Pass required axioms. |
| 6.4 Filtered lifts | n=0 is the zero diagram; n=1 is App2 itself. Identity F on rank-2 filtration lifts quotient ranks (1,1) unchanged. | Pass. |
| 6.5 Iterated cylinders | Cylinder of id:k[0]→k[0] has H⁰=k; direct sum endpoints alone has H⁰=k². At n=0 cylinder is k[0]. | Pass. |
| 6.6 Boundary extension | Cylinder of id has two endpoints: boundary degree-zero rank 2 injects into cylinder degree-zero rank 2, with cylinder H⁰ rank 1. Boundary H⁰ rank 2 is not weakly equal to k. | Pass F↓B, not wF↓B. |
| 6.7 Comma contraction | F=id: (B,id) is terminal among weak arrows to B; nerve reduced homology 0, as for a point. | Pass. |
| 6.8 Approximation | Identity F induces 1 on K₀(k)=ℤ. Zero functor sends 1↦0 and fails reflection: id and zero of k cannot both be detected correctly. | Pass. |
| 6.9 Gillet–Waldhausen | kⁿ[0] has χ=n; two-term id:k→k has χ=1−1=0 and is acyclic. | Pass. |
| 6.10 Poset factorization | Empty diagram needs no choices; a single arrow factors through its cylinder, with cofiber of projection acyclic (all Hᵢ=0). | Pass finite induction. |
| 6.11 Comma categories | Identity approximation gives terminal (B,id), hence π₀=1 and higher πᵢ=0, matching the asserted contractibility. | Pass. |
| 6.12 Approximation without chosen cylinder | Identity with existential factorizations has induced K₀ map n↦n; no globally chosen factorization enters that value. | Pass scope. |
| 6.13 Acyclic cofibrations | On k-complexes, 0→(k→ᵢd k) is a trivial cofibration: both H⁰ and H¹=0; 0→k[0] is not. | Pass. |
| 6.14 Fibration with factorizations | Equal weak classes give fibre 0 and map id on ℤ; unequal Euler-class weak maps include k[0]⊕k[1]→0, χ=0. | Pass no quasi-isomorphism conflation. |
| 6.15 Quotient weak classes | p:K₀=ℤ→ℤ/2: cone of 0→k² has pχ=0, whereas cone of 0→k has pχ=1. | Pass. |
| 6.16 Class nerve | Same p: degree n=0 gives G⁰={*}; n=1 gives two components; n=2 gives four, with face (1,1)↦0 mod 2. | Pass bar faces. |
| 6.17 Cofinality | p:ℤ→ℤ/2 gives kernel 2ℤ; p=id_ℤ gives kernel 0, not all ℤ. Positive groups are unchanged. | Pass degree-zero correction. |
| 6.18 Exact cofinality | Free k×k modules give diagonal ℤ↪ℤ², quotient ℤ; (1,0) is absent from image but has projective complement (0,1). | Pass not K₀ equivalence. |
| 6.19 General Gillet–Waldhausen | Noncomplete free k×k category has split K₀=ℤ; its completion has ℤ². Comparison with bounded complexes retains original ℤ, not ℤ². | Pass completion correction. |
| 7.1 Biexact grid | Rank-2 and rank-3 filtrations yield rank 6 total tensor; if either is zero, all entries have rank 0. | Pass. |
| 7.2 Pairing stabilization | Suspending one degree twice shifts output degree by 2; degrees 1+2 and 2+1 both 3, with sign +1. | Pass. |
| 7.3 Natural isomorphisms | Tensor unit isomorphism on k² sends [k²] to 2 on both K₀ maps; zero bifunctor gives 0. | Pass. |
| 7.4 External products | [k²]×[k³]=6=[k⁶]; over zero ring both sides 0. | Pass. |
| 7.5 Graded commutativity | Odd/odd interchange has coefficient −1; even/odd +1. Rank product 2·3=3·2=6. | Pass integral sign. |
| 7.6 Unit | [R]·[R²]=2=[R²]; zero ring has [R]=0=unit of its zero K₀ ring. | Pass zero-ring convention. |
| 7.7 Transfer | Finite field extension degree d=2: res(rank 3)=6; projection formula (2·3)·2=2·(3·2)=12. | Pass finite-projective hypothesis. |
| 7.8 Artin base change | Purely inseparable degree p extension: E⊗_F E has length p over E; filtration gives p·[E], matching degree p. | Pass no separability shortcut. |
| 8.1 Relative fibre | f=id has relative groups 0; f:R→0 has fibre K(R). k→k×k induces diagonal ℤ→ℤ² and cokernel ℤ. | Pass negative fibre degree retained. |
| 8.2 Support distinction | Regular A¹ at 0 has support K₀=ℤ; fibre of k[t]→k is contractible by homotopy invariance, hence relative K₀=0. | Pass unequal notions. |
| 8.3 Unitization | For unital k, (n,a)↦(n,n·1+a) identifies ℤ⋉k with ℤ×k; kernel of augmentation on K₀ is {0}×ℤ. | Pass. |
| 8.4 Patching convention | Shear g=[[1,1],[0,1]] sends (0,1) to (1,1); g⁻¹ sends it to (−1,1). Opposite clutching convention therefore reverses boundary. | Pass direction. |
| 8.5 K₁ exactness | Identity pullback k×_k k=k: diagonal u↦(u,u), difference (u,v)↦uv⁻¹; kernel consists exactly of (u,u). | Pass both directions. |
| 8.6 Milnor sequence | Same square on K₀: ℤ→ℤ²→ℤ is n↦(n,n), (a,b)↦a−b; image=kernel diagonal. | Pass. |
| 8.7 Triple/fibre comparison | ℤ→F₅: coker({±1}→C₄)=C₂; relative π₀=C₂ since ℤ→ℤ is identity. Identity ring map gives 0 on both presentations. | Pass comparison distinct from R04 supplied construction. |
| 8.8 Augmented patching | I=0 gives unitization ℤ and relative group 0; I=R unital gives reduced summand K₀(R), not K₀(ℤ)⊕K₀(R). | Pass. |
| 8.9 K₀ ideal excision | I=0 gives 0 in both ambient rings; unital I=k inside k×k gives the first ℤ summand on both sides. | Pass. |
| 8.10 Higher excision | Square-zero I=(ε) has I/I²=I≠0, obstructing Tor-unitality; a unital ideal in a product splits and higher Tor obstructions are 0. | Pass hypotheses distinguish examples. |
| 8.11 Index | Multiplication by ε on dual numbers has kernel k and cokernel k, index 1−1=0; unit has kernel=cokernel=0. | Pass sign control. |
| 8.12 DVR valuation | Uniformizer gives length(O/π)=1, hence boundary +1; π⁻¹ gives −1; unit gives 0. | Pass normalized valuation. |
| 8.13 Boundary action | Boundary of π times rank-2 class is 2; boundary(π) times 2 is also 2. Unit boundary 0 times 2 remains 0. | Pass right action. |
| 9.1 Two charts | O has (H⁰,H¹)=(R,0); O(−1) gives (0,0); O(−2) gives (0,R). Over k, Euler values 1,0,−1. | Pass chart convention. |
| 9.2 Koszul | Map pair (t,−1) followed by (1,t) gives t−t=0; at t=2 on 1 this is 2−2=0. Replacing −1 by +1 gives 4. | Pass sign. |
| 9.3 Eventual regularity | O(−2)(n): at n=0 H¹=k, at n=1 H¹=0; positivity of the bound matters. | Pass. |
| 9.4 Generation | O(−1) has H⁰=0 and is not generated; O has one generating section, giving evaluation k⊗O→O of rank 1. | Pass. |
| 9.5 Canonical resolution | O(1): H⁰ ranks 2 and H⁰(O)=1; sequence O(−1)→O²→O(1) has ranks 1→2→1 and Euler 0→2→2. | Pass. |
| 9.6 Regular filtration | Direct sum O⊕O(1) has global-section rank 3, equals 1+2; a zero bundle contributes 0. | Pass finite filtration. |
| 9.7 Projective line splitting | K₀(P¹_k) generated by O,O(−1); coordinates (1,0),(0,1), not one rank coordinate. χ values 1 and 0 distinguish them. | Pass. |
| 9.8 Nil category | ν=0 gives reduced Nil class 0; ε on R=k[ε]/ε² is nilpotent with ε²=0. Multiplication by 2 on ℤ has 2ⁿ≠0 for all n. | Pass. |
| 9.9 Chart resolution | Presentation t−ν at ν=0 is multiplication by t, injective with cokernel P; rank over R is rank P, although the polynomial modules are infinite over R. | Pass. |
| 9.10 Resolution fibres | Zero object has zero resolution; a split identity resolution P→P contributes [P]−[P]=0, agreeing with its contracted fibre. | Pass. |
| 9.11 Lattices | Laurent lattice t⁻²R[t] and t⁻³R[t] lie in t⁻³R[t]; inclusion scales the former generator by t, exponent difference 1. | Pass directedness. |
| 9.12 Projective localization | Regular k: chart complements have K₀=ℤ; localization removes torsion objects, e.g. k[t]/t becomes 0 after inverting t. | Pass. |
| 9.13 Laurent localization | Multiplication by t is injective on k[t], cokernel k; after inversion it is an isomorphism with cokernel 0. | Pass. |
| 9.14 Nil forgetful factor | (P,0) has underlying class [P]; subtracting its zero-endomorphism section gives reduced class 0, whose localization contribution is 0. | Pass reduced vs unreduced. |
| 9.15 Nil/NK | Over k both reduced Nil₀ and NK₁ are 0. Over dual numbers 1−εt has inverse 1+εt and value 1 at t=0, a nontrivial NK₁ determinant. | Pass shift and nonreduced test. |
| 9.16 Positive Fundamental Theorem | k regular: K₁(k[t,t⁻¹])=kˣ⊕ℤ; t gives (1,1), constants give (a,0), both NK₁ summands 0. | Pass. |
| 9.17 t section | Boundary [t]=1, boundary [t⁻¹]=−1; rank-2 t-automorphism gives 2. | Pass consistent with §8.12. |
| 10.1 Flasque rings | Countable free module: 1+ℵ₀=ℵ₀, hence swindle makes its finite-class contribution 0; finite rank would require 1+n=n, impossible. | Pass sum functor. |
| 10.2 Contracted functors | Constant functor ℤ: evaluation kernel NF=0 and Laurent cokernel LF=0; zero functor gives 0 for both. | Pass total-function endpoints. |
| 10.3 Bass negative groups | Regular k has K₋₁=LK₀=0; n=0 gives K₀=ℤ rather than 0. | Pass distinct index range. |
| 10.4 Negative contraction | For k, L(K₋₁)=L(0)=0=K₋₂; polynomial invariance gives 0→0. | Pass. |
| 10.5 All-degree Fundamental Theorem | k in degree 0: ℤ⊕K₋₁(k)⊕0⊕0=ℤ; in degree −1 all four summands 0. | Pass. |
| 10.6 Morita | M₂(k) projective column has Morita rank 1; the regular matrix module has rank 2. M₀(k)=0 has K₀=0, not ℤ. | Pass nonempty matrix index. |
| 10.7 Negative axioms | Identity ideal inclusion R→R has quotient 0; required exact segment is K₀(R)→ᵢd K₀(R)→0, kernel=whole image. | Pass. |
| 10.8 Cone uniqueness | Flasque cone has K₀=0; suspension boundary gives K₋₁(R) from suspension K₀. For regular k both are 0. | Pass. |
| 10.9 Negative Mayer–Vietoris | Identity Milnor square over k: degree-zero maps diagonal and difference on ℤ, then all negative groups 0. | Pass. |
| 10.10 Bass spectrum | At construction stage r=0, π₋₁ of connective spectrum is 0; at r=1 it can be LK₀(R). For k both 0, π₀ remains ℤ. | Pass not truncating the general construction. |
| 10.11 Bass homotopy groups | k: π₀=ℤ=K₀, π₋₁=0=K₋₁; t-splitting adds one ℤ in Laurent K₁. | Pass. |
| 10.12 Nonpositive excision | Product ideal I=k⊂k×k: relative K₀=ℤ=K₀(I), relative K₋₁=0=K₋₁(I). | Pass. |
| 10.12a Degree-zero invariance | Regular k: K₀(k), K₀(k[t]), K₀(k[t,t⁻¹]) all ℤ; all maps send 1 to 1. | Pass regular hypotheses. |
| 10.13 Negative vanishing | Field and DVR are regular noetherian: all negative groups 0; K₀(field)=ℤ remains nonzero. | Pass range n<0. |
| 11.1 Frobenius pairs | Pair (A,A) has derived quotient 0; degreewise split complexes modulo contractibles retain k[0] with H⁰=k but kill id:k→k. | Pass pair vs single category. |
| 11.2 Factorization | id:k[0]→k[0] factors with weak map id; k[0]→0 factors via contractible cylinder, whose homology is 0. | Pass. |
| 11.3 Stable dense classes | Even-Euler subcategory of Dᵇ(k): [k]=1 mod 2, [k²]=0 mod 2; k is a retract of k² despite not belonging to the subcategory. | Pass density≠membership. |
| 11.4 Membership/classification/injectivity | H=2ℤ: k[0] has 1∉H, k²[0] has 2∈H, k[0]⊕k[1] has 0∈H. Inclusion K₀ is n↦2n, kernel 0. | Pass all three Lean statements; zero subcategory is not dense. |
| 11.4a Triangulated completion | Projection diag(1,0) on k² has image k; even-Euler category contains k² but not k. Completion adds the missing rank-1 summand. | Pass; docstring omission R09. |
| 11.5 Envelope | Constant k shifted still has rank 1; id⊕shift gives rank 2. Countable sum gives ℵ₀ on both sides of id⊕T≅T. | Fail original witness, R02. |
| 11.6 Negative setup | Completed even-Euler category is Dᵇ(k); IK₀ becomes ℤ rather than the original subgroup 2ℤ. Zero model has every IK=0. | Pass completion convention. |
| 11.7 Negative localization | Identity exact sequence T→T→0: maps id,0, boundary 0, image=kernel. Even-Euler inclusion becomes equivalence after completion, IK₀ map ℤ→ℤ identity. | Pass cofinality and quantifiers. |
| 11.8 Additivity/colimits | Product of two k-models gives IK₀=ℤ², equal to direct sum of two ℤ groups; constant filtered system yields ℤ² again. | Pass finite products. |
| 11.9 Weak inflation replacement | Identity exact functor sends identity inflation to itself and its quotient to 0; replacement preserves derived class [k]=1. | Pass. |
| 11.10 Roof strictification | Identity roof k←ᵢd k→ᵢd k represents id; its strict replacement induces 1 on H⁰, not 0. | Pass homotopy retained. |
| 11.11 Derived invariance | Identity enhanced model gives isomorphism ℤ→ℤ on K₀; zero functor on nonzero model gives 0 and is not a derived equivalence. | Pass. |
| 11.12 Frobenius cofinality | Even-Euler image is 2ℤ before completion, ℤ after completion; positive groups are unaffected. | Pass degree-zero qualification. |
| 11.13 Nested weak classes | Equal classes: quotient map id, fibre 0. Zero model: every entry 0 and every boundary 0. | Pass. |
| 11.14 Completion and IK | For finite free k×k modules, original K₀=diagonal ℤ and completed IK₀=ℤ²; these must not be equated. | Pass. |
| 11.15 Spectral localization | Identity sequence gives fibre of id equal to zero spectrum; π₀ exact segment ℤ→ᵢdℤ→0 and all boundary maps 0. | Pass all-degree orientation. |
| 11.16 Exact-category spectra | On P(k), π₀=ℤ and negative groups 0; acyclic two-term identity complex represents 0. | Pass actual exact-model comparison. |
| 12.1 Direct filtration | U=A gives quotient 0; A=0 gives U unchanged. Finite-rank identity on k² factors through A=finite spaces and becomes 0 in cone quotient. | Pass. |
| 12.2 Finite-defect index | A=U=finite free k×k modules: completed relative group ℤ², whereas the uncompleted group is diagonal ℤ. For A=0 the relative identity functor has group 0. | Pass completion necessity; no shift-index sign certified by this test. |
| 12.3 Controlled cone | Repetition of k gives countable rank ℵ₀; adding k gives ℵ₀ again. An infinite first row has infinitely many nonzeros and is not a finite sum of permutants. | Pass discrete control condition. |
| 12.4 Bass comparison | k: Kar₀=ℤ=K₀ and Kar₋₁=0=K₋₁; matrix corner preserves rank-1 projective generator. | Pass. |
| 12.5 Finite domination | id complex k[0] is dominated by itself with composite id; contractible (k→ᵢd k) is dominated by 0 since id is nullhomotopic. | Pass genuine homotopy data. |
| 12.6 Rectification | Projector diag(1,0) on k² gives strict image k. A finite 2-term complex of ranks 2,3 has Euler 2−3=−1 before and after finite Karoubi replacement. | Pass native Lean statement. |
| 12.7 Euler obstruction | Free k×k category: image diagonal ℤ⊂ℤ²; P=(k,0)[0] has (1,0) outside image and cannot return. Contractible P→ᵢdP has Euler (0,0) and returns as 0. | Pass both directions/negative control. |
| 12.8 Quotient complexes | U=A: all quotient differentials become 0 on zero objects; U with A=0 retains the original d and d²=0. | Pass extremes. |
| 12.9 Complex approximation | Identity filtered pair induces identity K₀; zero quotient gives 0. Contractible lifted complex has χ=0 on both sides. | Pass. |
| 12.10 Three models | Regular k: all three π₀/K₀ groups ℤ, all degree−1 groups 0; generator is [k]=1 in every comparison. | Pass positive/negative indexing. |
| 12.10a Unbounded derived category | Free k×k alternating e,1−e complex has d²=e(1−e)=0 and is contractible, but cycle (k,0) is not free. Raw acyclicity and homotopy closure differ. | Pass distinction; bounded k[0] survives. |
| 12.11 Agreement/vanishing | Abelian finite-dimensional k-spaces give K₋₁=0; regular ring agrees with Bass negatives 0. No deduction K₋₂=0 for every small abelian category is made. | Pass scope. |
| 13.1 Nonunital Bass | Unital k viewed nonunitally: augmentation kernel in K₀(ℤ×k)=ℤ² is {0}×ℤ; zero nonunital ring gives 0. | Pass. |
| 13.2 Nonunital idempotents | h(1)=(1,0) in k×k: map on K₀ sends 1↦(1,0); zero map sends 1↦0. | Pass. |
| 13.3 Corners | k→e₁₁M₂(k)e₁₁→M₂(k): after Morita, 1↦1; unital scalar inclusion k→M₂(k) instead sends 1↦2. | Pass distinguishes maps. |
| 13.4 Continuity/products | k×k: K₀=ℤ²; constant filtered diagram colimit ℤ²; empty product is zero ring with K₀=0. | Pass finite products only. |
| 13.5 Nonunital continuity | Constant zero diagram has unitization ℤ with augmentation id, hence relative spectrum 0 before/after colimit. | Pass kernel/fibre split. |
| 13.6 Enhanced invariance | Identity DG enhancement induces id on ℤ; Artin examples have equivalent triangulated categories but differing order-25 vs exponent-5 K-data below. | Pass enhancement essential. |
| 13.7 Relative/transfer compatibility | Identity map has relative theory 0; finite field degree-2 transfer sends rank 1 to 2 on both compatible constructions. | Pass. |
| 13.8 Artin stable categories | R=F_p[ε]/ε² or ℤ/p²: simple module has stable suspension itself; free rank 1 has length 2 and becomes 0, giving stable K₀=C₂. | Pass. |
| 13.8a KU inputs | ψ^q acts on degree 2 by q and degree 4 by q²; for q=2, ψ^q−1 acts by 1 and 3. | Pass degree and normalization. |
| 13.8b Brauer lift | For q=2, the fibre calculation uses cokernels ℤ/(2−1)=0 and ℤ/(4−1)=C₃; q=1 would give ℤ/0, and is excluded. | Consistency test passes; primary text unread below. |
| 13.8c Finite fields | F₂: K₁=0, K₃=C₃, K₄=0; F₄: K₁=C₃; F₅: K₃=C₂₄. Formula n=0 is not used for K₀=ℤ. | Pass arithmetic and range; source limit below. |
| 13.9 Artin fibration | Cartan sends [R] to 2[k], so K₀ map ℤ→ℤ is ×2, not residue map ×1. With K₄(F₅)=0, K₄(stable) injects into K₃(R). | Pass. |
| 13.9a Finite-ring inputs | For p=5 the two stated primary parts are C₂₅ and C₅⊕C₅: same order 25 but exponents 25 and 5. For p=3 the cited shortcut is excluded. | Values distinguish claims; primary texts unread below. |
| 13.10 Counterexample | At p=5, C₂₄ has no 5-primary elements, so the primary kernels retain exponents 25 vs 5. Equivalent triangulated stable categories therefore do not force this K-equivalence. | Pass conditional on specified primary calculations. |

The native signatures also received separate tests, so the three statements in §11.4 are not counted as one logical assertion:

| Lean declaration | Computed test | Result |
|---|---|---|
| `classifyingSpace` | Terminal nerve realizes to a point; empty-category nerve realizes to ∅. | Definition uses the intended native carrier. |
| `classifyingSpaceMap` | Identity on terminal nerve is the one continuous point map; empty-to-point has empty domain. | Map source/target preserved. |
| `QuillenA` | Terminal endpoint in [1]: both under-comma categories have one object, and point-to-interval induces π₀ bijection 1→1. | Sound instance, duplicate R05. |
| `QuillenA_dual` | Initial endpoint in [1]: both over-comma categories have one object, and π₀ is again 1→1. | Sound instance, duplicate R05. |
| `DenseClasses.membership_iff` | Even-Euler subcategory: k has χ=1∉2ℤ, k² has χ=2∈2ℤ. | Both directions pass. |
| `DenseClasses.classification` | H=0 contains k[0]⊕k[1] with χ=0 but excludes k with χ=1; H=ℤ contains both. | Correct inverse construction; the zero subgroup does not mean the zero category. |
| `DenseClasses.map_injective` | Even-Euler inclusion sends abstract generator to 2; equation 2n=0 in ℤ forces n=0. | Injective, not surjective. |
| `FiniteChainDomination` | k[0] via itself has composite id; the contractible identity complex via zero has composite 0 homotopic to id. | Real homotopy distinguishes strict from homotopy retract. |
| `FiniteDomination.rectification` | Rank-1 image of diag(1,0) on k² yields a Karoubi complex with H⁰=k; zero domination of a contractible complex yields H⁰=0. | Matches bounded full-faithful signature. |
| `restrictedCompletion_eulerCriterion` | (k,0)[0] has Euler (1,0) outside diagonal ℤ; (k,0)→ᵢd(k,0) has Euler 0 and returns as the zero complex. | Obstruction and its vanishing discriminate. |
| Two local instances | Finite biproduct on an empty family is 0; extending F across Karoubi sends f+g to F(f)+F(g), e.g. id+id on k to 2·id. | No missing section hypothesis found. |

## Not verifiable

- `quillen-3`: the finite-field paper's Annals landing page supplies bibliographic data only. The linked page and DOI/JSTOR route did not provide readable legal full text. Thus the exact primary locators for §§13.8b–13.8c are not certified here. The arithmetic consistency checks above do not replace that verification.
- `evens-friedlander`: the DOI route led to the JSTOR landing page; a readable legal primary text was not obtained. The §13.9a K₃ input is independently reported by Schlichting and Dugger–Shipley, but that is not inspection of its primary proof/locator.
- `aisbett-lluis-puebla-snaith`: the DOI route led to the AMS Memoirs book landing page; a readable legal primary text was not obtained. The same limitation applies to the second §13.9a input. Dugger–Shipley's author PDF was obtained after following its author-host redirect and its Remark 4.9 was read, including its p=3 correction.

All 23 works listed in the references were attempted through the source service. Missing-text records are retained for the three items above. Other references were fetched legally; fetching a work is not a claim to have verified every locator outside the seeded sample. The verdict already requires changes for independently witnessed defects and does not depend on access to these three texts.

## Source issues

- **Misprint** in weibel-1 at IV Lemma 7.7 proof, p. IV.63 (combined p.330): the source says the final natural-map arrow goes from E to φ*E; it should be φ*E to E, as in the lemma statement; affects the proof.
- **Error** in schlichting-2002-12 at §1.6, printed p.114: the source says its displayed K₃ calculation applies to all odd primes; it should be restricted to p>3 for this argument; affects the proof; corrected in print at Dugger–Shipley, Remark 4.9, p.156.
