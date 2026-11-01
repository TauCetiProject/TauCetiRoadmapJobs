# Review of SchurWeyl (pull request #1164 at 0f5f27e)
Folder: `TauCetiRoadmap/RepresentationTheory/SchurWeyl/`
**Verdict:** needs changes

## Disposition of the previous review

This is a full review of all three files, not an incremental review. Locations below are at the reviewed head unless explicitly marked main or pin. In findings, `README.md` and the two Lean filenames mean files in the folder above.

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01, sorry'd data | `Suggested.lean:33`: “Not statable at the pins, and therefore not stated”; `harmonicTensors` now has an actual intersection-of-kernels body at line 241. | Repaired. No sorry'd data in either Lean file. |
| R02, heartbeat override | `Suggested.lean:183`: `theorem schurWeylDecomposition (d n : ℕ)` under default options. | Repaired; default elaboration succeeds. |
| R03, library duplication | `README.md:43`: “Layers 0–3 contain no target of their own”. | Partly repaired. Most completed targets are consumed. The table comparison and generic tensor/induction constructions remain duplicated (R07); the absent Frobenius formulas have incorrectly become suppliers (R01). |
| R04, missing sign/duality headlines | `Suggested.lean:58,65,72`: `spechtModule_tensor_sign_iso`, `spechtChar_conjugate`, `spechtModule_self_dual`. | Repaired for the three requested headlines. Other missing headlines are R08. |
| R05, syntax and process residue | `README.md:374`: the symmetrizer formula is in a code span; native names are qualified throughout the supplier contracts. | Repaired for the reported scanner failures; the gate passes. |
| R06, padding and Lean form | `Suggested.lean:20`: “It states the roadmap's headline theorems against the pinned Mathlib and Tau Ceti”. | Partly repaired. The old padding is gone; the second file still has the prohibited submodule import and old module-doc form (R10). |
| R07, README shape and locators | `README.md:24,111,272,1353`: Scope and ownership, Exact supplier contracts, How to read the build, Downstream consumers. | Partly repaired. All layers have Examples/Dependencies; there are 26 Needs lines and 26 Checks blocks. Remaining Check and locator defects are R11–R12. |

No repair report marking a finding “not actionable in this package” was available among the supplied previous-review artifacts. None of the findings below relies on treating such a disposition as unsettled.

## R01 (P1) — Frobenius formulas are attributed to declarations absent at the pins

**Location:** `README.md:202–205`, quoting “`TauCeti.psumPart_eq_sum_spechtCharValue_smul_schurPoly`”; also lines 208, 671–677, 714–717 and 791–802.

**Claim:** the power-sum/character expansions are native suppliers for Murnaghan–Nakayama, the Hall normalization and stable Frobenius. The class-function induction map is called `Subgroup.indClassFunction`.

**Witness:** neither pinned library contains any of the three claimed Frobenius names. `TauCeti/RepresentationTheory/Symmetric/FrobeniusCharacteristic.lean:45,53,66,88` supplies a Schur-basis equivalence, its Specht values and Schur-coordinate expansion; it contains no power-sum expansion.

The other absent names are `TauCeti.sum_spechtChar_smul_psumPart` and `TauCeti.frobeniusCharacteristic_eq_sum_psumPart`. Searches were against the actual checked-out pins, not against an unavailable build cache. `TauCeti/RepresentationTheory/Symmetric/PermutationModule/PowerSum.lean:191` expands power sums in **monomials** using permutation-module fixed points; it does not supply the asserted Specht/Schur formula. This was also explicitly distinguished in previous R03. `Subgroup.indClassFunction` is absent; the real packaged map is `TauCeti.ClassFunction.ind` at `TauCeti/RepresentationTheory/Induction/ClassFunction.lean:446`.

**Repair:** restore the finite Frobenius power-sum formulas as owned targets before their consumers, with a route through the native permutation-module expansion, Young's rule, Kostka change of basis and character orthogonality. State the statable headline on native carriers in `Suggested.lean`; change the induction citation to `TauCeti.ClassFunction.ind` with its finite-index hypotheses. Test the restored formulas at degree two: `p₂=s₂−s₁₁`, `p₁²=s₂+s₁₁`, and `ch(f)=((f(1)+f((12)))/2)s₂+((f(1)−f((12)))/2)s₁₁`. These give the claimed formulas, without inventing a supplier.

## R02 (P1) — Reversing a word does not have the asserted RSK effect

**Location:** `README.md:634–637`, quoting “reversing the word evacuates the insertion tableau and transposes the shape”.

**Claim:** this holds for the word version of ordinary row-insertion RSK.

**Witness:** the word `00` equals its reversal. Both insertions are the row `[0,0]`, shape `(2)`, not `(1,1)`. A column containing two zeroes is not semistandard.

Even for permutations, insertion and recording tableaux have been conflated: `P(102)=02/1`, `P(201)=01/2=P(102)ᵗ`; evacuation of `02/1` is `01/2`, whose transpose is `02/1`, not `P(201)`.

**Repair:** state the actual symmetries separately for permutations, words and matrices. For permutations use `P(w_rev)=P(w)ᵗ` and `Q(w_rev)=evac(Q(w))ᵗ`. For a finite ordered alphabet, formulate the appropriate reverse-complement/semistandard-evacuation identity separately, with the alphabet and tableau conventions specified. Keep the full word/matrix RSK target. Add `00` as a negative control against plain-reversal shape transposition. The permutation replacement was tested on every permutation through size five (154 permutations in total), as well as the displayed non-involution example.

## R03 (P1) — The Check incorrectly declares B₃(0) nonsemisimple

**Location:** `README.md:1307`, quoting “the nonsemisimple integer parameters are `{−2, 0, 1}`”.

**Claim:** zero is an exceptional parameter for degree three.

**Witness:** `rui2005 line 46`, Theorem 1.2(b), preprint p. 2, includes degree three among the semisimple zero-parameter cases. The same assertion is correctly stated at README line 1295.

**Repair:** replace the exceptional set by `{−2,1}` and explicitly test zero as a positive control. For the degree-three cell module, the matrix with diagonal `δ` and off-diagonal `1` has determinant `(δ+2)(δ−1)²`: it is `2` at zero and `0` at both exceptional parameters. The four simple dimensions at zero are `1,2,1,3`, whose squares sum to `15=dim B₃(0)`. The sufficient bound `|δ|≥4` remains valid.

## R04 (P1) — The proposed layer order contains an internal dependency cycle

**Location:** `README.md:1078–1080`, quoting “double-centralizer statement for the semisimple image algebras of §9.8”; `README.md:1300` lists §9.3 among §9.8's needs.

**Claim:** Layer 9 can be built in its displayed order.

**Witness:** §9.3 consumes §9.8; §9.8 consumes §9.3 and §9.7; §9.7 consumes §§9.4–9.6. Thus the displayed section-level graph contains both `9.3 → 9.8 → 9.3` and a forward jump past the filtration.

**Repair:** split the independent complete-reducibility/group-image semisimplicity input from the Brauer-image consequence. Place it before the reverse-centralizer argument, prove the FFT, derive the reverse commutant, and only then use those results for multiplicities and the filtration. Reserve the abstract-parameter criterion for a later section. This orders the `O₃`, degree-two instance as group decomposition `5+3+1`, group-image dimension `25+9+1=35`, commutant dimension `3`, and reverse commutant dimension `35`, without invoking a later conclusion.

Also move §4.4's Schur-functor and `ω` comparisons after §§8.1 and 7.5, or split them from the early representation-theoretic comparison. Lines 475–477 use those later sections, whereas the Needs line at 482–483 omits them. The mechanical roadmap-level dependency check passes; it does not certify these internal edges.

## R05 (P2) — The finite Hall forms do not form the claimed inverse system

**Location:** `README.md:755–756`, quoting “Define the degreewise Hall form as the inverse limit of §7.4's `hallForm`”; also lines 68–69.

**Claim:** the forms are compatible with all finite-alphabet specialization maps used to define the stable ring.

**Witness:** in degree two, `s₁₁=xy` has Hall norm `1` in two variables. Specializing the second variable to zero gives `0`, with norm `0` in one variable.

**Repair:** define the stable form through Schur coordinates, or through the **stable tail** `d≥n` in degree `n`, and prove independence of that choice. State explicitly that projection below degree need not be an isometry. This gives norm `1` on stable `s₁₁`, norm `1` at every `d≥2`, and norm `0` after the one-variable specialization, consistent with §7.4's own negative control.

## R06 (P1) — The stated necessary orthogonal independence bound is false

**Location:** `README.md:1070–1071`, quoting “independence holds only for `n ≥ 2k`”.

**Claim:** matching tensors in degree `2k` cannot be independent below that dimension.

**Witness:** `n=k=1` gives one nonzero matching tensor, hence an independent family, although `1<2`. For `n=k=2`, their Gram matrix has diagonal `4`, off-diagonal `2`, and determinant `32`.

**Repair:** use the orthogonal bound `n≥k` for matching-tensor independence. This follows from the faithful Brauer action and the endomorphism–tensor equivalence: `dotyHu2009 line 161`, Lemma 1.1(2), preprint p. 3, and Theorem 1.2(b) at line 192 use dimension at least tensor degree. Keep the separate sufficient cup-expansion bound of §9.6 explicitly sufficient. The corrected bound includes both witnesses; `O₁` in degree four still gives three equal tensors and remains a negative control.

## R07 (P2) — Two generic constructions and the table comparison have existing owners

**Location:** `README.md:470–474`, quoting “Construct the external tensor product”; and line 541, “Prove that the integer table … cast to `ℂ`”.

**Claim:** generic external tensor products, the induction projection comparison and integer/complex character-table comparison are new work here.

**Witness:** CharacterTheory §3.6 on main (`TauCetiRoadmap/RepresentationTheory/CharacterTheory/README.md:521`) owns external products; `TauCeti.indProjection` is at `TauCeti/RepresentationTheory/Induction/Projection.lean:196`; `TauCeti.symmetricCharacterTableℂ_apply` and `_eq_characterTable` are at `TauCeti/RepresentationTheory/Symmetric/Specht/Orthogonality.lean:173,182`.

**Repair:** consume those exact constructions, together with native `Representation.ind`, and retain only the Specht-specific transpose comparisons and table sign identity. For external products the native construction is `Representation.tprod` of pullbacks along the two projections; a scratch definition with that body elaborates. For the projection formula the native isomorphism has the opposite displayed orientation, so use its inverse. Degree `1+1` still gives the regular `S₂` module of dimension `2`; the `S₃` table remains `[(1,1,1),(1,−1,1),(2,0,−1)]`. Delete the duplicated targets, not these explanatory Checks.

## R08 (P2) — Statable headline results are missing from Suggested.lean

**Location:** `Suggested.lean:44–45`, quoting “the induction and Kronecker transpose comparisons … (no external tensor product of representations of a product group)”; `README.md:855–856,877–885`.

**Claim:** the docstring accurately separates statable headlines from genuinely missing carriers, and the main acceptance module contains the statable headlines.

**Witness:** internal Kronecker products already use the `FDRep` monoidal structure in line 58. The finite power-sum basis uses native `MvPolynomial.psumPart` and `TauCeti.symmetricHomogeneousSubmodule`. The matrix recurrence already elaborates in the auxiliary file.

**Repair:** add the Kronecker transpose comparisons, finite power-sum basis theorem, and matrix Newton headline to `Suggested.lean`; remove the false external-product explanation. The induced comparison also cannot be excluded merely for want of an external-product carrier: the one-line pullback/tensor construction in R07 elaborates. Restore the Frobenius headlines as in R01. Keep genuinely heavy stable-ring, Brauer-algebra and RSK carriers out of the Lean file.

Scratch elaboration succeeds for the double-transpose `Nonempty (S^(λᵗ) ⊗ S^(μᵗ) ≅ S^λ ⊗ S^μ)` signature, a finite power-sum statement giving linear independence and span equality for `r≤d`, and the moved integral matrix statement. The degree-two basis has change-of-basis determinant `−2` over `ℚ`; its one-variable specialization is dependent. The Newton witness at a non-diagonalizable unipotent `2×2` matrix gives `−2=−2` for `r=1` and `2=2` for `r=2`. A separate native-carrier Frobenius power-sum signature also elaborates with one sorry warning, for every finite alphabet size d. No ad hoc carrier is needed.

## R09 (P2) — The foundational Brauer targets unnecessarily stop at complex coefficients

**Location:** `README.md:978`, quoting “Define `B_k(δ)` over `ℂ`”; lines 1007–1023 and 1074–1076.

**Claim:** the general diagram algebra and its tensor actions are developed only over `ℂ`, although the cited FFT results explicitly have greater generality.

**Witness:** `dipperDotyHu2008 line 236`, Theorem 1.4, is over every infinite field; `dotyHu2009 line 177`, Theorem 1.2, is over every infinite field of odd characteristic. The diagram multiplication itself uses only addition and powers of `δ`.

**Repair:** own the diagram algebra over a commutative coefficient ring, with its free diagram basis and coefficient-change maps; formulate the standard tensor actions over the corresponding general coefficients. Give the symplectic FFT over infinite fields and the orthogonal FFT with the cited odd-characteristic hypothesis. Keep rational complete reducibility, harmonic classification and the stated complex semisimplicity criterion under their necessary hypotheses. Do not infer semisimplicity in positive characteristic from the complex argument. For `B₂(0)` over `ℤ` or `𝔽₂`, the basis `1,s,e` and relations `s²=1`, `se=e`, `e²=0` still define the algebra; over the zero ring use a basis statement, not an unconditional natural-number finrank claim. This meets the general-library contract without weakening the complex end theorems.

## R10 (P3) — The auxiliary Lean file still violates the import and docstring rules

**Location:** `MatrixTraceNewtonTargets.lean:1,4`, quoting `import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` and “suggested signature”.

**Claim:** both listed Lean files meet the required target-signature form.

**Witness:** the first line is a Mathlib submodule import; the module docstring does not list the headline/nonstatable split required of an acceptance file. This is the unrepaired auxiliary-file part of previous R06.

**Repair:** fold the theorem into `Suggested.lean`, as required by R08, and delete the redundant auxiliary file; alternatively make the auxiliary file conform too, without treating it as a substitute for the main acceptance test. The folded statement already elaborated with `import Mathlib`. The passing gate did not detect this file-level violation.

## R11 (P3) — Several Checks do not discriminate, and two definitions lack three Checks

**Location:** `README.md:385–388`, quoting “excluded only by the integer-coefficient comparison”; also lines 698–702, 827–830, 951–954 and 1164–1166.

**Claim:** the sign Check distinguishes inverse sign; the alternate rim-hook sign yields zero; every newly defined construction has at least three discriminating Checks.

**Witness:** `(+1)⁻¹=+1` and `(−1)⁻¹=−1`, so inverse sign is identical everywhere. The wrong column-height convention in the displayed Murnaghan–Nakayama sum gives `−1−1=−2`, not zero. The Hopf and balanced-tensor blocks each list two Checks.

**Repair:** replace the inverse-sign non-example by the inversion anti-automorphism: a three-cycle is fixed by the sign automorphism but exchanged with its inverse by inversion. Correct the Murnaghan–Nakayama alternative to `−2`. Add a mixed coproduct Check, for example the `e₁⊗e₁` coefficient `1` in `Δ(e₂)`, and a non-abelian right-action/balancing Check using two noncommuting permutations in `S₃`. Include the empty partition among the `O₁` admissible shapes: its column sum is `0≤1`, whereas the one-cell shape has sum `1`. Also qualify “for `n = 0` every space is zero” in `Suggested.lean:238` by positive tensor degree: the empty tensor power is ℂ. These repairs agree with the zero-degree Check in §9.4.

## R12 (P3) — Harmonic-classification locators omit one group and conflate orthogonal parities

**Location:** `README.md:1151`, quoting “Goodman–Wallach, §§10.2.1, 10.2.4, 10.2.5”; `Suggested.lean:277,283,292`.

**Claim:** the cited sections locate the symplectic classification and the orthogonal assertions for every dimension.

**Witness:** the author's table of contents lists symplectic harmonics in §10.2.3, p. 440; odd orthogonal in §10.2.4, p. 442; even orthogonal in §10.2.5, p. 446 (`goodmanWallach2009`, contents lines 269–273).

**Repair:** give §10.2.3 for the symplectic result, both orthogonal parity sections for all-dimensional orthogonal statements, and identify the separately checked zero-dimensional boundary. For the filtration and cup-spanning statements, add the author-hosted Appendix F, Theorems F.1.1–F.1.2, printed pp. 2–4, rather than only the broad main-book §10.2.1 pointer. Do not use Appendix F.1.3's bound uncritically: the symplectic counterexample in Source issues refutes it as printed. The corrected parity locators cover the `O₂` and `O₃` tests in the table below; the main-book theorem text remains uncertified.

## Verified sound

“Pass” below means the stated finite-instance computation agrees, not that an admitted theorem has been proved. Failing rows remain in this section to make the adversarial record complete. I read the whole README and both Lean files, including unchanged passages. I checked the scope against the main SchurWeyl roadmap: the basic symmetric-group and GL/Brauer programme already belongs to this folder; it is not a second competing owner. Main Layer 7 explicitly reserves a separately stated stable-ring/Hall step. The new stable targets must build on that programme and the native completed work; they cannot treat fabricated native formulas as completed work (R01).

**Gate, scope and elaboration.** The head is `0f5f27e76f5f4bb1d23ffd903040b79e6dfb2194`. The supplied targeted-build gate reports every counter zero and `OK`, including build, depcheck, dirty, stray-files and outside-folder. Independently, the prescribed outside-folder diff is empty and the worktree is clean. I made no PR-file changes. The mechanical dependency command returned exactly:

```text
depcheck: 204 roadmaps, 1490 edges, 0 problem(s)
```

All 26 Needs lines and the supplier contracts were read manually; the unresolved native suppliers and internal order problems are R01 and R04. There is no declared supplier gap and no UPWARD or CYCLE line from the roadmap-level checker. No tool or merge-order file was edited.

`lake env lean` on `Suggested.lean` succeeds with 17 sorry warnings and no other diagnostics. The same command on `MatrixTraceNewtonTargets.lean` succeeds with one sorry warning. A scratch copy with `#check @name` for all 30 declarations in the main file elaborates: the 17 theorem signatures and 13 definitions/structure/abbreviations retain their needed binders. The matrix signature was checked separately, including arbitrary `CommRing R`, dimension, positive `r`, and its finite sum. No dropped section hypothesis was found. The negative natural-subtraction indices in the Newton sum are avoided by `j<r`; the orthogonal cup-cap definition explicitly excludes equal slots. The harmonic and Schur–Weyl signatures really include the two equivariance requirements.

For padding, every one of the 18 admissions across both files was tried with `simp`, `rfl` and `infer_instance` on a scratch copy; none closed. The relevant native exact-lemma candidates were also read (see inventory below). No additional one-tactic padding finding is raised. This does not excuse the duplicated prose targets in R07.

**Headline coverage.** The README's six named end theorems are all present: Littlewood–Richardson, character Murnaghan–Nakayama, finite Frobenius isometry, simultaneous GL/Sₙ decomposition, orthogonal FFT and harmonic decomposition. The file also states sign transpose, its character identity, self-duality, Hall power-sum normalization, reverse orthogonal commutant, shape nonvanishing and irreducibility. The broader headline programme includes full RSK/evacuation, stable symmetric functions with free generators/Hall/ω/Hopf/Frobenius/induction, matrix Newton, finite power-sum bases, induction/Kronecker transpose comparisons, the balanced presentation, symplectic FFT/harmonics, and Brauer multiplication/filtration/cell comparisons/semisimplicity. The genuinely missing stable, RSK and Brauer carriers are named in the module docstring; R08 identifies exclusions or omissions that native carriers do not justify. The Hopf and balanced-presentation targets should also be named explicitly in the coverage discussion when deciding their acceptance signatures.

**Seeded source sample (15 sections).** Every section requested by the seed was inspected. There are no README locators explicitly marked unverified. Thirteen referenced works were attempted through the sources service; no source or manifest was added to the PR. Four mathematical texts were readable (the three open papers and Goodman–Wallach's author-hosted supplement), together with the author's contents and Haiman's course outline. Exact inaccessible book locators are not certified by their apparent plausibility.

| Seeded section | Locator/text examined and result |
|---|---|
| 4.1 transpose/sign | Fulton–Harris Lecture 4 §4.1: full text unavailable; sign/product-order computations below independently test the claim. R11 corrects a Check. |
| 4.3 character/self-duality | James Ch. 4 and Th. 8.15: paywalled; the rational Gram determinant and integer character identity were tested. |
| 4.4 induction/Kronecker | James Th. 16.4: paywalled; no certification that this locator supports all three comparison constructions. Native ownership and finite characters checked. |
| 6.1 character-table specification | Resolved native Orthogonality file at the pin, lines 164–195, and CharacterTheory Layer 5. Already supplied (R07). |
| 7.1 skew/jdt/Knuth | Fulton §§1–3 and Appendix A.1 unavailable. Haiman course outline, `haiman2015 line 221`, names the relevant lectures but does not contain their theorems. |
| 7.3 Murnaghan–Nakayama | Macdonald I.7 Example 5, James Th. 21.1, Sagan Th. 4.10.2 unavailable. Native polynomial rule and explicit character sums checked; the advertised Frobenius input is absent. |
| 7.5 stable ring/Hall/ω | Macdonald I.2–I.5 equation locators unavailable. Finite projection, degree two/three Newton and dual Jacobi–Trudi computations expose R05. |
| 7.8 matrix Newton | Macdonald I.2 (2.11′), (2.14′) unavailable. Native reversed characteristic polynomial and universal-matrix transport read; integral/non-diagonalizable/characteristic-two tests below. |
| 7.9 finite power-sum basis | Macdonald I.2 (2.12) unavailable. Native homogeneous and Schur bases read; degree-two change-of-basis and small-alphabet kernel computed. |
| 8.2 balanced tensor | Fulton–Harris §6.1 unavailable. Right-action order checked on S₃; symmetric/exterior quotient dimensions checked. |
| 9.1 Brauer algebra | Brauer §§3–5 and main GW §10.1.1 unavailable. `rui2005 line 91`, Definition 2.1, preprint p. 4, supplies diagram multiplication over a field; native diagrams and the k=2 relations checked. |
| 9.2 orthogonal/symplectic actions | `dipperDotyHu2008 line 177`, arXiv v2 p. 4, has signed permutations and the symplectic contraction action; `dotyHu2009 line 145`, arXiv v3 p. 3, gives the orthogonal action/duality setting. Native J/cup coordinates were checked, not equated by notation alone. |
| 9.4 harmonic shape spaces | `goodmanWallach2009` Appendix F lines 108–114, printed p. 3, points to the three group-specific harmonic sections and the Young-symmetrizer construction. Main-book theorem text unavailable; R12 repairs the locator coverage. |
| 9.5 ideals/filtration | `goodmanWallach2009` Appendix F lines 36–60, printed pp. 1–2, defines the contraction ideals, induced filtration and partial-harmonic splitting. The positive-dimensional complex setting is explicit at lines 30–31 and in the inverse-dimension constructions; zero dimension is handled directly here. |
| 9.6 cups/graded action | `goodmanWallach2009` Appendix F lines 63–141, printed pp. 2–4, and F.2.3, lines 363–386, pp. 10, supply matchings, cup images and spanning. The supplement does not certify this roadmap's complete signed raw/standard action formula; that formula was tested at Sp₂, k=3. Its advertised stable bound has a source error, recorded below. |

For the two open duality papers, the README explicitly cites arXiv v2/v3 numbering; those are the versions read. Dipper–Doty–Hu Th. 1.2(1), lines 189–224, gives the complex duality and transpose label convention; Th. 1.4, lines 236–244, gives all infinite fields, including characteristic two. Doty–Hu Th. 1.2, lines 177–195, requires an infinite field of odd characteristic. Rui's preprint Th. 1.2, lines 44–51, p. 2, gives the complex criterion and exceptional-zero clause; Th. 1.3, lines 60–62, adds the positive-characteristic factorial condition. I do not silently assign the preprint's printed page numbers to the published versions.

**Pinned-library and ownership audit.** Manifest and checkout agree: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searches used objects as well as target names. The following is a compact inventory of declarations opened, with paths relative to the respective library repository:

| Pin | Files and declarations inspected |
|---|---|
| Mathlib | `Mathlib/RepresentationTheory/Basic.lean:618,626`, `Representation.tprod` and its action; `Mathlib/RepresentationTheory/Intertwining.lean:36`, intertwining maps; native `FDRep` tensor/dual and induced representations. |
| Mathlib | `Mathlib/LinearAlgebra/Dual/Basis.lean:53,56`, `Module.Basis.toDual` and its basis values; this fixes a bilinear form, not a Hermitian form. |
| Mathlib | `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290,292,334`, `charpolyRev`, reverse and trace coefficients; `Mathlib/LinearAlgebra/Matrix/Charpoly/Univ.lean:56`, universal evaluation; `Mathlib/RingTheory/MvPolynomial/Symmetric/NewtonIdentities.lean:221`, integral Newton. |
| Mathlib | `Mathlib/LinearAlgebra/UnitaryGroup.lean:289,293`, the trivial-star orthogonal-group specialization; the native symplectic J is the block matrix with upper-right `−1` and lower-left `1`. These are bilinear classical groups, not the Hermitian unitary group. |
| Tau Ceti | `TauCeti/Combinatorics/Young/Tableau.lean:60,407`, tableau carrier/relabeling; `TauCeti/Combinatorics/Young/StandardTableau/Basic.lean:37,213`, standard tableau/count; partition-diagram and conjugate/dominance carriers. No missing dummy tableau type was assumed. |
| Tau Ceti | `TauCeti/RepresentationTheory/Symmetric/YoungSubgroup.lean:159,243,264`; `TauCeti/RepresentationTheory/Symmetric/RowColumnSubgroup.lean:46,51,91,104`; `TauCeti/RepresentationTheory/Symmetric/Symmetrizer.lean:101,210,217,333`, row/column sums, `c=a*b`, absorption and coefficient change. |
| Tau Ceti | `TauCeti/RepresentationTheory/Symmetric/Specht/Ideal/Idempotent.lean:127,153`; `TauCeti/RepresentationTheory/Symmetric/Specht/Comparison.lean:177`; `TauCeti/RepresentationTheory/Symmetric/Specht/SubmoduleTheorem.lean:202,268`; `TauCeti/RepresentationTheory/Symmetric/Specht/AbsoluteIrreducibility.lean:214`; `TauCeti/RepresentationTheory/Symmetric/Specht/Distinctness.lean:263`; `TauCeti/RepresentationTheory/Symmetric/Specht/Completeness.lean:212`. These support consuming completed classification rather than re-planning it. |
| Tau Ceti | `TauCeti/RepresentationTheory/Symmetric/Specht/Complex.lean:92,173,184,231`; `TauCeti/RepresentationTheory/Symmetric/Specht/StandardBasis.lean:358,390`; `TauCeti/RepresentationTheory/Symmetric/Specht/HookLength.lean:59`; `TauCeti/RepresentationTheory/Symmetric/Specht/SumOfSquares.lean:59`; `TauCeti/RepresentationTheory/Symmetric/Specht/Character.lean:94,103,172,207`; `TauCeti/RepresentationTheory/Symmetric/Specht/Orthogonality.lean:164,173,182,193,218,239`; `TauCeti/RepresentationTheory/Symmetric/ClassSize.lean:77,192`. |
| Tau Ceti | `TauCeti/RepresentationTheory/Symmetric/SignCharacter.lean:43`; `TauCeti/RepresentationTheory/LinearCharacter/Basic.lean:164`; `TauCeti/RepresentationTheory/Symmetric/PermutationModule/Form.lean:60,65,90`, the invariant tabloid form; `TauCeti/RepresentationTheory/Symmetric/PermutationModule/YoungRule.lean:192`; `TauCeti/RepresentationTheory/Symmetric/PermutationModule/PowerSum.lean:191`. |
| Tau Ceti | `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Basic.lean:174,367,375`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Basis.lean:96,211,301,312`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/MurnaghanNakayama.lean:182`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Pieri.lean:282`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Branching.lean:180,245`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/JacobiTrudi.lean:283`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Monomial.lean:353`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Complete.lean:350,376`; `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Elementary.lean:272`. |
| Tau Ceti | `TauCeti/RepresentationTheory/Symmetric/FrobeniusCharacteristic.lean:45,53,66,88`; `TauCeti/RepresentationTheory/CharacterTable/ClassFunction.lean:53,80,299`; `TauCeti/RepresentationTheory/CharacterTable/Pairing.lean:58`; `TauCeti/RepresentationTheory/CharacterTable/VirtualCharacter.lean:132`; `TauCeti/RepresentationTheory/Induction/ClassFunction.lean:446`; `TauCeti/RepresentationTheory/Induction/Projection.lean:175,196`; `TauCeti/GroupTheory/Perm/SumCongr.lean:226`. The four absent supplier names are R01. |
| Tau Ceti | `TauCeti/RepresentationTheory/Symmetric/TensorAction/Basic.lean:48,107,126`; `TauCeti/RepresentationTheory/Symmetric/TensorAction/GeneralLinear.lean:113,126`; `TauCeti/RepresentationTheory/Symmetric/TensorAction/Faithful.lean:167`; `TauCeti/RepresentationTheory/Symmetric/TensorAction/SchurWeyl.lean:134`; `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Basic.lean:504`, `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Multiplicity.lean:105`, `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/SchurWeyl.lean:208`. The dimension identity is supplied; the simultaneous equivariant equivalence is a stronger kept target. |
| Tau Ceti | `TauCeti/RepresentationTheory/ClassicalGroups/Orthogonal.lean:80,115,150`; `TauCeti/RepresentationTheory/ClassicalGroups/Symplectic.lean:75,113,157,196`; `TauCeti/RepresentationTheory/ClassicalGroups/BrauerGenerators/Orthogonal/Basic.lean:111,127,172,256`; `TauCeti/RepresentationTheory/ClassicalGroups/BrauerGenerators/Orthogonal/TensorPower.lean:153,220,282,374,619`; `TauCeti/RepresentationTheory/ClassicalGroups/BrauerGenerators/Symplectic.lean:181,210,273,286,305,415,445`. Same-slot cup-cap is a total-function junk value, not a contraction arc. |
| Tau Ceti | `TauCeti/Combinatorics/Brauer/Diagram.lean:60,64,149,242`; `TauCeti/Combinatorics/Brauer/Generator.lean:120,396,459`; `TauCeti/Combinatorics/Brauer/Compose.lean:294,691`; `TauCeti/Combinatorics/Brauer/Associativity.lean:361`; `TauCeti/Combinatorics/Brauer/LoopCount.lean:139`; `TauCeti/Combinatorics/Brauer/PropagatingNumber.lean:84,168`; `TauCeti/Combinatorics/Brauer/Relabel.lean:66`. Diagram combinatorics is present; an abstract Brauer algebra with the loop scalar is not supplied by these carriers. |

Cross-roadmap citations were resolved against main for existing roadmaps, with open heads used for the new-roadmap contracts supplied in the brief. Concrete ownership witnesses include CharacterTheory §3.6 (main lines 521–605), InductionRestriction Layer 0 projection formula (main lines 213–240) and Layer 2 induced characters, ClassicalGroups Layer 2 Schur functors (main line 216) and Layer 4 characters (272), ReductiveGroups Layers 3/6 (main lines 242/471), TemperleyLieb's Brauer deferral (main line 208), LieHighestWeight's Schur/interlacing interface (main lines 867/1516), and TypeAHeckeAlgebras' symmetric-function dependence (main lines 128/494).

The open TensorProductCombinatorics README explicitly requests SchurWeyl's skew, evacuation and stable-ring interfaces (lines 280–320); CountingBundlesAndHallAlgebrasOfCurves distinguishes its curve Hall algebra from this symmetric-function supplier (lines 17/135); NoncompactQuantumSymmetry consumes Specht theory (lines 99/885). Searches of main, board packages and the provided open-roadmap index found no second owner for the retained stable symmetric-function carrier or this specific harmonic Brauer reconstruction. The `roadmaps grep` namespace search returned this PR and the same folder on main, not another roadmap. This is not a fully qualified name collision with a different owner. The resolver's “none missing” output was treated only as a lead: it explicitly did not check external Lean names against installed packages, which is why the manual pin audit was necessary.

The README's consumer-list assertions for KacMoody and several arithmetic consumers are not supplier edges. A matching promised consumption was not established in every listed consumer; I do not certify that entire list as a set of implemented contracts. No upward supplier was inferred from a downstream mention.

**Adversarial computations (151 rows).** The 151-row table covers the seeded sections, all Lean declarations, the headline programme and the failure witnesses. Products of symmetric functions below are formal, not evaluations at one matrix. Shape notation omits parentheses when unambiguous; `02/1` denotes tableau rows. Computations were by direct finite algebra, with exact rational row reduction for contraction ranks and insertion enumeration through size five. `Δ` in Hopf rows is the coproduct; elsewhere cell modules are written explicitly.

| Statement | Instances tried | Computed left side / right side | Result; change |
|---|---|---|---|
| Partitions/diagrams/classes, consumed Layers 0–1 | n=0,2,3 | partition/class counts `1/1`, `2/2`, `3/3`; S₃ class sizes `1+3+2=6` | Pass |
| Dominance and conjugation | (3) dominates (21) | prefix sums `(3,3)/(2,3)`; transposes `(111),(21)` reverse the inequalities `(2,3,3)≥(1,2,3)` | Pass |
| Standard tableaux/count | ∅,(2),(11),(21) | counts `1,1,1,2`; hook dimensions `1,1,1,2` | Pass |
| Young subgroup/index | λ=(21), n=3 | order `2!1!=2`; index `3`; `3·2=6` | Pass |
| Row/column symmetrizer order | tableau 01/2 | `a=1+(01)`, `b=1−(02)`; `ab−ba=(02)(01)−(01)(02)≠0` | Pass; order matters |
| Specht realization/classification, consumed | S₂,S₃ | dimensions `(1,1)` and `(1,2,1)`; square sums `2,6` | Pass |
| §4.1 tableau transpose | 01/2, ∅ | transpose `02/1`; row group `{1,(02)}` equals original column group; empty maps to empty | Pass |
| §4.1 sign algebra automorphism | τ=(01), c=(012) | `ε(τ)=−τ`, `ε(c)=c`; `ε(τ)²=1=ε(τ²)` | Pass |
| §4.1 sign involution | τ=(01) | `ε²(τ)=−(−τ)=τ` | Pass |
| §4.1 symmetrizer transformation | row (2) | `ε(1+τ)=1−τ=b_column`; transformed `c` has reversed factor order in shape21 | Pass |
| §4.1 wrong-model Check | signs ±1 | inverse signs `(1,−1)` equal original `(1,−1)` | Fails discrimination; R11 |
| §4.2 sign-transpose isomorphism | λ=(2),(21),∅ | characters `(1,1)·(1,−1)=(1,−1)`; `(2,0,−1)·(1,−1,1)=(2,0,−1)`; `1·1=1` | Pass |
| §4.2 composite scalar | n=2 row; n=3 shape21; n=0 | `κ=n!/f=2,3,1`; composites multiply by `2,3,1`, not always 1 | Pass |
| §4.2 inverse denominator | same shapes | nonzero rational scalars `2,3,1`; inverses `1/2,1/3,1` | Pass |
| §4.3 character transpose | S₄ shape31 | `(3,1,−1,0,−1)·(1,−1,1,1,−1)=(3,−1,−1,0,1)` | Pass |
| §4.3 self-dual form | S₃ shape21 | Gram `[[2,1],[1,2]]`, determinant `3`; determinant modulo3 `0` | Pass over ℚ; characteristic hypothesis matters |
| §4.3 contragredient direction | 3-cycle on basis e₀−e₂,e₁−e₂ | action `[[−1,−1],[1,0]]`; `gᵀBg=B`; `gᵀ≠(g⁻¹)ᵀ` | Pass; forward dual action excluded |
| §4.4 induction/sign projection | S₁×S₁→S₂ | regular character `(2,0)`; sign product `(2,0)`; both multiplicities1 | Pass; supplied generic comparison R07 |
| §4.4 Kronecker double transpose | standard S₃ square | `(2,0,−1)²=(4,0,1)=(1,1,1)+(2,0,−1)+(1,−1,1)` | Pass; missing headline R08 |
| §4.4 simultaneous three-index transpose not asserted | all three S₃ shapes (3) | `g((3),(3),(3))=1`; `g((111),(111),(111))=0` | Correct exclusion |
| §5.1 symmetrizer scalar/hook product | (21) | hooks `3,1,1`, product3; `3!/2=3` | Pass |
| §6.1 table comparison/specification | S₃ | standard row weighted square `1·4+3·0+2·1=6`; normalized norm1 | Pass; duplicated target R07 |
| §6.1 column normalization/class signs | S₃ transposition,3-cycle | column square sums `1+1+0=2=z₂₁`; `1+1+1=3=z₃`; signs `−1,+1` | Pass |
| §7.1 skewCells | inner=(1), outer=(21); invalid inner=(2),outer=(1) | skew cells `{(0,1),(1,0)}`; invalid difference empty but `inner≤outer` false | Pass; carrier excludes invalid shape |
| §7.1 skew semistandard tableau | straight column11 | entries `0,1` satisfy `0<1`; `0,0` fail `0<0`; outside entries forced0 | Pass |
| §7.1 skewContent | two isolated cells with 0,1 | counts `(1,1,0,…)`, total2; outside zeroes do not add to content | Pass |
| §7.1 finite bounded fillings/conversion | shape(2), alphabet {0,1} | weak rows `00,01,11`: count3; `10` excluded; bound0 gives none for a nonempty shape | Pass |
| §7.1 straight standard conversion | shape21 | `01/2`, `02/1`: count2 on both carriers; empty shape count1 | Pass |
| §7.1 reading order | cells (0,2),(0,1),(1,0) | order `(0,2),(0,1),(1,0)`; entries `1,0,0` read100, not001 | Pass |
| §7.1 ballot predicate | 001,010,100 | prefix differences #0−#1: `(1,2,1)`, `(1,0,1)`, `(−1,0,1)` | First two true, third false |
| §7.1 row insertion/bumping | insert1 into row02 | bumps2; result01/2; insert0 into00 yields000 | Pass; weak-row convention |
| §7.1 reverse insertion | 01/2, remove lower corner | reverse bump returns entry1 and row02 | Pass; inverse test |
| §7.1 Knuth relations | 021↔201 and 102↔120 | insertion tableaux respectively `01/2` on both sides and `02/1` on both sides | Pass |
| §7.1 repeated-letter Knuth boundaries | 010↔100 | both insert as00/1; 001 inserts as001, so arbitrary adjacent swapping fails | Pass |
| §7.1 Greene row sums | word102 | maximum weak increasing subsequence length2; two disjoint subsequences cover3; row sums `2,3` | Pass |
| §7.1 jeu de taquin/rectification | skew21/1 with (0,1)=0,(1,0)=1 | slide0 left then exit: straight column01; reading word01 inserts row01, so use the appropriate reverse/row-reading convention in the conversion | Convention-sensitive; see note below |
| §7.2 LRTableau cardinality | μ=ν=(1), κ=(2),(11) | one ballot filling for each; coefficients `1,1` | Pass |
| §7.2 LR coefficient with empty/invalid shapes | μ=ν=κ=∅; μ not≤κ | empty filling count1; invalid shape count0 | Pass |
| §7.2 LR coefficient2 | μ=ν=(21),κ=(321) | eligible ballot fillings001,010; 100 fails; count2 | Pass |
| §7.2 reading direction negative control | (32)/(1), content22 | rows·01/01 read1010: false; rows·00/11 read0011: true; total1 | Pass |
| §7.2 littlewoodRichardson | s₁², d=2 | `(x+y)²=(x²+xy+y²)+xy` | Pass |
| §7.2 diagramLittlewoodRichardson | d=1; zero ring | `x²=x²+0`; over zero ring all terms0 | Pass; semiring generality retained |
| §7.2 LR symmetry and shape support | c^(21)_((2),(1)) and reverse | both1; c^(1)_((2),∅)=0 by shape/size | Pass |
| §7.2 vertical Pieri | s₁e₁; s₂e₁ | `s₂+s₁₁`; `s₃+s₂₁`; adding both new boxes to one row excluded when strip size2 | Pass |
| §7.2 evacuation | tableau02/1 | evacuation01/2, then02/1; shape21 both times | Pass |
| §7.2 permutation RSK/inverse symmetry | 102 and inverse102 | `P=Q=02/1`; pair swap leaves pair unchanged; empty maps to empty pair | Pass |
| §7.2 word RSK reversal | 00 | reversal insertion row00, shape2; claimed transposed shape11 | False; R02 |
| §7.2 corrected permutation reversal | 102→201 | `P:02/1→01/2`; `Q:02/1→02/1`; `evac(Q)ᵗ=02/1` | Pass for corrected identities |
| §7.2 nonnegative-matrix RSK weights | 1×1 matrix [2] | insertion row00 and recording row00, total size2; zero matrix gives two empty tableaux | Pass |
| §7.3 character M–N | κ=21,ρ=3 | one rim hook, height1: `χ=−1=(−1)·1` | Pass |
| §7.3 disconnected rim-hook rejection | κ=21,ρ=21,r=2 | no connected eligible skew shape; `χ=0=empty sum`; admitting it would give−1 | Pass |
| §7.3 column sign | κ=111,ρ=3 | height2; `χ=1=(−1)²` | Pass |
| §7.3 S₄ non-hook case | κ=211,ρ=31 | no eligible size3 hook; `χ=0=0` | Pass |
| §7.3 height vs width Check | κ=22,ρ=22 | correct `1−(−1)=2`; wrong column sign `−1+(−1)=−2`, not0 | Check false; R11 |
| §7.3 empty recursion base | n=0,r=1,κ=1 | `χ¹(1)=1`; height0 times χ∅=1 | Pass |
| Finite Frobenius power-sum formula | degree2 | `p₂=s₂−s₁₁`; `p₁²=s₂+s₁₁` | Mathematics passes; supplier absent R01 |
| §7.4 hallForm definition | d=2,n=2 | Schur Gram identity2; monomial-coordinate norm(s₂)=2 rather than1 | Pass; wrong form excluded |
| §7.4 hallForm_psumPart | d=2,n=2 | norms `2,2`; cross pairing `1−1=0`; z values2,2 | Pass |
| §7.4 small-alphabet exclusion | d=1,n=2 | p₂=p₁₁=x²; norm and cross pairing1 rather than2,0 | Pass; bound needed |
| §7.4 arbitrary commutative ring Hall identity | R=𝔽₂,d=n=2 | p₂=p₁₁, their Schur coordinates(1,1); self-pairing `1+1=0=z mod2` | Pass; no basis over 𝔽₂ claimed |
| §7.4 finite Frobenius isometry | S₂ irreducibles | character pairings matrixI₂; Schur pairings matrixI₂ | Pass |
| §7.5 compatible families | stable e₂ at d=0,1,2,3 | components `0,0,xy,xy+xz+yz`; last-variable-zero gives predecessor | Pass |
| §7.5 degreewise stable projection | n=2,d=1,2 | dimensions `1,2`; stable dimension2; kernel at d1 spans s₁₁, kernel at d2 zero | Pass |
| §7.5 stable degree zero/unit | all d, n=0 | constant family1; projection1; product1·1=1, including empty alphabet | Pass |
| §7.5 free elementary/complete generators | degree2 | `h₂=e₁²−e₂`, `e₂=h₁²−h₂`; composing returns e₂,h₂ | Pass |
| §7.5 ω involution | e₂,h₂,p₂ | `ω(e₂)=h₂`, `ω(h₂)=e₂`, `ω(p₂)=−p₂`, second application p₂ | Pass |
| §7.5 dual Jacobi–Trudi | λ=21 in x,y | `h₂h₁−h₃=x²y+xy²=e₂e₁−e₃`; e₃=0 | Pass |
| §7.5 all-alphabet Hall inverse limit | s₁₁, d2→d1 | before norm1; after norm0 | Incompatible; R05 |
| §7.5 rational Newton presentation | p₁,p₂,p₃ at eigenvalues1,2,3 | `(6²−14)/2=11=e₂`; `(216−252+72)/6=6=e₃` | Pass |
| §7.5 denominator control | r=2 over ℚ vs𝔽₂ | 2 inverse1/2 overℚ; 2=0 in𝔽₂ and no inverse | Pass; ℚ-algebra hypothesis essential |
| §7.5 index shift/no P₀ | d=0,1,2 | finite p₀=`0,1,2`; p₁ specializes compatibly, p₀ does not overℤ | Pass |
| §7.5 weighted grading/base change | X₁↦p₂; ℤ→𝔽₂ | degree2 on both sides; coefficient2 becomes0 on both sides | Pass |
| §7.6 stable ch | trivial/sign S₂ | `(p₁²+p₂)/2=s₂=h₂`; `(p₁²−p₂)/2=s₁₁=e₂` | Pass |
| §7.6 integral virtual lattice | class values(1,0) onS₂ | irreducible coefficients(1/2,1/2), not integers; values(2,0) give(1,1) | Pass; integer-valued≠virtual |
| §7.6 block induction product | S₁×S₁ | induced values(2,0); `ch=p₁²=s₁s₁` | Pass; use real induction API R01 |
| §7.6 Young's rule | μ=11 | `h₁²=s₂+s₁₁`; two Specht multiplicities1 | Pass |
| §7.7 coproduct/alphabets | e₂ in x,y | split-alphabet coefficient of x⊗y is1; `e₂⊗1+e₁⊗e₁+1⊗e₂` gives1 | Pass; add Check R11 |
| §7.7 coassociativity | e₂ split into x,y,z | both iterated coproducts give `xy+xz+yz` | Pass |
| §7.7 counit | e₁ and1 | counit values0,1; applying counit to one coproduct factor recovers e₁,1 | Pass |
| §7.7 antipode | e₁,e₂ | `S(e₁)=−e₁`; `e₂−e₁²+h₂=0`; `S(e₂)=h₂` | Pass |
| §7.7 primitive power sums | P₂ | `P₂(x,y)=x²+y²`; split expression same; antipode `−P₂` | Pass |
| §7.8 reversed coefficients | A=diag(1,2) | det(1−tA)=`1−3t+2t²`; c=(1,−3,2), E=(1,3,2) | Pass |
| §7.8 integral Newton, matrix headline | A=[[1,1],[0,1]], r=1,2,3 | `(r c_r)=−2,2,0`; recurrence RHS=`−2,2,0` despite non-diagonalizability | Pass; move headline R08 |
| §7.8 high-index total-function behavior | same A, r=4,5 | c₄=c₅=0; recurrence RHS0,0; no coeff at truncated d−r used | Pass |
| §7.8 rank0 and nilpotent | d=0; A=[[0,1],[0,0]] | charpolyRev=1 in both; all positive traces0; recurrence0=0 | Pass |
| §7.8 characteristic2 | A=I₂ over𝔽₂ | p_j=0 for every j>0; c₂=1; r2 equation `0·1=0` | Pass; recurrence does not determine coefficients here |
| §7.8 characteristic3 | A=I₃ over𝔽₃ | p_j=0; c₃=−1=2; r3 equation0=0 | Pass; rational solution requires ℚ |
| §7.8 rational partition solution | A=diag(1,2,3), r=3 | `E₃=6`, `c₃=−6`; partition numerator `216−252+72=36` | Pass; odd-degree sign distinct |
| §7.8 ring naturality/reindexing/similarity | unipotent A, reduce mod2; swap basis | coefficients(1,−2,1)→(1,0,1); swapped matrix has same coefficients/traces | Pass |
| §7.8 representation trace of powers | C₂ acting diag(1,1,1,−1) | χ(g)=2; p=(2,4,2,4); polynomial `(X−1)³(X+1)` | Pass in characteristic0 |
| §7.8 direct sums | diag(1,−1) plus one trivial | p₁0→1; p₂2→3; polynomial `(X²−1)(X−1)` | Pass |
| §7.9 power-sum basis | degree2,d=2,ℚ | p₁₁=s₂+s₁₁, p₂=s₂−s₁₁; determinant−2≠0 | Pass; missing headline R08 |
| §7.9 small-alphabet quotient | degree2,d=1 | relation p₁₁−p₂=0; dimension1 vs two proposed vectors | Pass |
| §8.1 Schur–Weyl equivalence | d=2,n=2 | dimension `4=1·3+1·1`; transposition eigenvalues +1 onSym²,−1 onΛ² | Pass |
| §8.1 simultaneous GL equivariance | g=diag(2,3),d=n=2 | eigenvalues onSym² `4,6,9`, onΛ² `6`; tensor action gives `4,6,6,9` | Pass; arbitraryS₂-map not enough |
| §8.1 all-dimensional boundary | d=0,n=0 and n=1; d=1,n=2 | dimensions `1=1`, `0=0`, `1=1+0` | Pass |
| §8.1 permutation action faithfulness | d=1,n=2 | transposition acts1; `1−τ` acts0; sign shape killed | Pass; native supplied fact |
| §8.2 balanced tensor symmetric/exterior | d=n=2 | dimensions3 and1; at d1,n2 exterior quotient0 | Pass |
| §8.2 right-action direction | σ=(01),τ=(12), tensor indices(0,1,2) | `(v·σ)·τ=v·(στ)` gives(1,2,0); the wrong composite right action gives(2,0,1) | Pass; nonabelian control R11 |
| §9.1 diagram basis/algebra | k=0,1,2,3 | diagram counts `1,1,3,15`; k3=`6+9` | Pass |
| §9.1 loop product | e inB₂; disjoint e₁e₃ inB₄ | `e²=δe`; `(e₁e₃)²=δ²e₁e₃`; atδ2 coefficients2,4 | Pass |
| §9.1 associativity loop cocycle | e,e,e inB₂ | left loop sum `1+1=2`; right `1+1=2`; productδ²e | Pass |
| §9.1 permutation inclusion/unit | k=2 | `s²=1`, `se=es=e`; distinct basis vectors1,s stay independent evenδ0 | Pass |
| §9.1 coefficient generality | B₂(0) overℤ,𝔽₂ | same free three-element basis and e²0; ℂ-only plan omits both | Missing general target; R09 |
| §9.2 orthogonal action | n=2,k=2,e₀⊗e₀ | cup-cap sends to`e₀e₀+e₁e₁`; twice gives2times that cup | Pass |
| §9.2 symplectic loop and crossing | l=1,θ=ef−fe | capθ=`−1−1=−2`; e²=−2e; (−flip)θ=θ, flipθ=−θ | Pass |
| §9.2 no equal-slot generators | n=2,k=1; reflection diag(−1,1) | same-slot map sends e₀→e₀+e₁; compositions on e₀ give`−e₀+e₁` vs`−e₀−e₁` | Pass; a≠b necessary |
| §9.2 orthAction and zero dimension | n=0,k=0/1 | action scalar identity onℂ / unique map on0 | Pass |
| §9.3 Ξ₁ and self-duality direction | O₂;Sp₂ | orthogonal id→e₀e₀+e₁e₁; symplectic id→fe−ef=−θ | Pass |
| §9.3 Ξ₂ signs | Sp₂ id,cup-cap,crossing | ε=`+1,−1,−1`; cup-cap tensor`−θ_in⊗θ_out` | Pass |
| §9.3 matching relabeling | Sp₂ exchange endpoints of one arc | θ→−θ; orthogonal cup→same cup | Pass |
| §9.3 invariant spanning/odd tensors | O₁, degree2/3 | invariant dimensions1/0; matching span dim1 at degree2; −1 acts−1 at degree3 | Pass overℂ |
| §9.3 matching independence | O₂,degree4 | 3 tensors, Gram det32≠0 though n2<2k4 | Claimed necessity false; R06 |
| §9.3 symplectic dependence | Sp₂,degree4 | 3 tensors with relation `θ₁₂θ₃₄−θ₁₃θ₂₄+θ₁₄θ₂₃=0`; rank2 | Pass |
| §9.3 full orthogonal group hypothesis | O₂ vsSO₂,degree2 | invariant dimensions1 vs2; reflection negates alternating tensor | Pass; connected replacement false |
| §9.3 orthogonal FFT | O₃,k=2 | image span{1,s,e} dimension3; decomposition5+3+1 has commutant dimension3 | Pass |
| §9.3 reverse commutant | O₃,k=2 | group image and reverse commutant dimensions `5²+3²+1²=35` | Pass mathematics; reorder proof R04 |
| §9.4 harmonicTensors definition | O₁,q=0,1,2 | dimensions1,1,0; positive-degree cap atq2 is1 on basis tensor | Pass; doc's n0 caveat read with q0 boundary |
| §9.4 orthogonal harmonic dimension | O₂,q=2,4; O₃,q=2,3 | tensor dimensions4,16,9,27 minus stacked-cap ranks1,14,1,9 give3,2,8,18 | Pass |
| §9.4 symplectic harmonic dimension | Sp₂,q=2,3,4 | dimensions4,8,16 minus cap ranks1,4,11 give3,4,5 | Pass |
| §9.4 harmonic action stability | O₂ reflection and slot flip on e₀e₁−e₁e₀ | images are negatives; contraction remains0 | Pass for both Lean stability theorems |
| §9.4 orthShapeSpace | O₂,q=2, shapes2,11 | symmetric traceless dimension2; alternating dimension1; ranges intersectH as claimed | Pass |
| §9.4 OrthAdmissible | n2, λ=2,11,22,111 | first-two-column sums2,2,4,3; booleans true,true,false,false | Pass; GL row bound cannot substitute |
| §9.4 nonvanishing iff | same four shapes | E dimensions2,1,0,0; nonzero flags true,true,false,false | Pass both directions |
| §9.4 empty shape/O₁ Check | q=0,n=0 or1 | column sum0; E∅ dimension1; admissible true | Pass theorem; Check's “(1) only” needs R11 |
| §9.4 shape stability/irreducibility | O₂,shape2 | isotropic weight lines have weights±2; reflection swaps them; no one-line subspace stable under fullO₂ | Pass; SO₂ alone would split |
| §9.4 harmonic decomposition | O₂,q2;O₃,q2;Sp₂,q3 | `3=2·1+1·1`; `8=5·1+3·1`; `4=dim Sym³` | Pass |
| §9.5 diagram ideals | k2,j0,1,2 | dimensions3,1,0; e²=δe remainsinI₁; tailI₂=0 | Pass |
| §9.5 trace filtration/splitting | O₂,k2;Sp₂,k3 | `4=3+1`; `8=4+4`; dimensions H andF₁ respectively3,1 and4,4 | Pass |
| §9.5 coordinate Hermitian argument | O₂ cup;Sp₂ θ | Hermitian norms2,2; cap-cup scalars2,−2; neither cup lies in its cap kernel | Pass; bilinear positivity not assumed |
| §9.5 quotient annihilator | k2,j0 | cup-cap image isF₁; induced map onT²/F₁ is0 | Pass |
| §9.6 partial matching count | (k,j)=(3,1),(4,2),(k,0) | counts3,3,1; factorial formula gives3,3,1 | Pass; empty matching is one element |
| §9.6 cup map and pair-order invariance | k4,j2, matching12|34 | swapping two length2 blocks is even; coefficient product unchanged | Pass |
| §9.6 Ψ spanning and kernel | Sp₂,k3,j1 | domain dim6, image/gr₁ dim4, kernel dim2 | Pass |
| §9.6 matching signs D_j | placements12,13,23 | shuffle signs(+1,−1,+1); D² diagonal(1,1,1) | Pass |
| §9.6 sufficient stability bound | O₁,k2,j1 | domain/image dim1 although1<4 | Pass: explicitly sufficient, unlike R06 wording |
| §9.6 stable dimension | O₆,k3,j1 | Gram eigenvalues8,5,5≠0; placement factor3, dimH¹6; gr₁dim18 | Pass |
| §9.7 Hom multiplicity and labels | O₃,k2 | group pieces5,3,1; Hom multiplicities1,1,1; total9 | Pass |
| §9.7 symplectic transpose label | Sp₂,k2 | H²dim3, crossing−1, cup-cap0; Brauer label11, group shape2 | Pass |
| §9.7 nonzero multiplicity boundary | O₁,k2,λ=∅; n0,k2 | positive-dimensional cup gives Homdim1; zero-dimensional tensor Homdim0 | Pass; zero case separated |
| §9.8 image vs abstract semisimplicity | Sp₂,k3,δ−2 | geometric tensor `V₃⊕2V₁`; commutant `ℂ⊕Mat₂`, dim5; abstractB₃ dim15 with singular cell Gram | Pass distinction |
| §9.8 B₂ exceptional parameter | δ0,±2 | e²0 atδ0; at nonzeroδ idempotent e/δ; semisimple at±2 | Pass |
| §9.8 B₃ zero parameter | δ0 | Gram determinant2, rank3; simple-square sum15 | Check false; R03 |
| §9.8 nonsemisimple B₃ parameters | δ−2,1 | Gram ranks2,1 and determinants0,0 | Pass after removing0 |
| §9.8 sufficient bound/generic case | k3,δ4 | determinant54, rank3; δ4 outside{−2,1} | Pass |
| §9.9 cup relation | apply to e andf inSp₂ | D₁₂e=efe−fee, D₁₃e=eef−fee, D₂₃e=eef−efe; alternating sum0; f gives same cancellation | Pass |
| §9.9 raw crossing action | relation vector(v,−v,v) | s₁,s₂ both return(v,−v,v); raw formula agrees with−flip | Pass |
| §9.9 raw contraction action | relation vector(v,−v,v) | e₁ gives(−2v+v+v,0,0)=0; e₂ gives(0,0,v+v−2v)=0 | Pass |
| §9.9 normalization/Gram transport | D=diag(1,−1,1),δ−2 | standard Gram off-diagonal+1; DGD off-diagonals(−1,+1,−1); radicals(1,1,1) and(1,−1,1) | Pass |
| §9.9 quotient and multiplicity | Sp₂,k3 | cup quotient dim`6−2=4`; two copies of dim2 standard; harmonicdim4; total8 | Pass |
| Worked hook/square-sum examples | n=4,5 | `1+9+4+9+1=24`; `1+16+25+36+25+16+1=120` | Pass |

The jeu-de-taquin row in this table deliberately distinguishes **LR reading order** (top to bottom, right to left) from the usual insertion-compatible tableau word (bottom to top, left to right). Section 7.1 does not assert they are the same. A conversion must retain that distinction: the latter word of the displayed skew tableau is `10`, whose insertion is the column `01`, agreeing with rectification. This is a convention test, not an additional false-theorem finding.

## Not verifiable

- **fultonHarris1991:** Lecture 4 §4.1, Exercise 4.4, Lemma 4.26, §6.1 and Theorem 6.3. The sources-service title/author/publisher search did not obtain a legal full text. Therefore the exact page, exercise wording, balanced presentation and intertwiner locator are uncertified.
- **james1978:** Chapter 4 and Theorems 8.15, 16.4, 21.1. The service resolved the Springer record as paywalled/uncertified. No claim is made that Theorem 16.4 alone supplies the stated Kronecker intertwiners.
- **macdonald1995:** the I.2–I.9 equation/example locators listed in the README. The OUP record was located, but the text was inaccessible (HTTP 403); none of its equation numbering or printed pages is certified here.
- **fulton1997**, **sagan2001**, **stanley1999:** the cited tableau, Knuth, RSK, LR and Murnaghan–Nakayama locators. Cambridge/Springer records and legal-resolution attempts did not yield the full texts. No pirate mirror was used.
- **haiman2015:** the Berkeley course page was readable, but it is a lecture outline, not the mathematical text of lectures 33–36. The claims about jeu de taquin and dual equivalence are not verified from that outline.
- **goodmanWallach2009:** the main Springer book is paywalled. The author's contents and Appendix F are readable and were checked, but cannot certify the complete statements/proofs at §§5.3.2, 9.1.1, 10.1.1–10.1.2 or 10.2.1/3/4/5. In particular the full signed raw/standard cell-action formula is not stated in the supplement passages read.
- **weyl1939**, **brauer1937:** Weyl V.7 and Brauer §§3–5. The service found no legal full text for the former; the latter's DOI resolved to a JSTOR landing page without readable article content.

The existing missing-source file was preserved and the service recorded the additional failed fetches there. No manifest was edited. These unavailable texts have not been treated as evidence of a false claim, and this review is completed rather than parked. Finite checks and successful elaboration do not certify the unaccessed source proofs or arbitrary-rank identities.

## Source issues

- **Error** in goodmanWallach2009 at Appendix F, §F.1, printed p. 2 (line 72): the source says the partial-matching stabilizer is the pair-permutation group alone; it should be that group times S_(k−2r), including permutations of unmatched positions; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F, §F.1, printed p. 2 (line 74): the source says M(k,0) is empty; it should be the singleton containing the empty matching; affects a stated result.
- **Error** in goodmanWallach2009 at Appendix F, Theorem F.1.3, printed p. 4 (line 134): the source says 2k≤dim(V)+3r guarantees independent harmonic cup placements for both form types; it should be restricted or strengthened symplectically: Sp₂, k=4, r=2 satisfies that inequality but has rank two, not three; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F, Example 1, printed p. 4 (line 148): the source says the perfect-matching count is (2m)! divided by 2^m(m!)²; it should be (2m)! divided by 2^m m!, giving three rather than 3/2 at m=2; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F, equation (F.5), printed p. 5 (line 158): the source says the fourth tensor power of ℂ² contains one V₀; it should be two V₀ summands, giving dimension sixteen rather than fifteen, as the following paragraph's multiplicities confirm; affects a stated result.
