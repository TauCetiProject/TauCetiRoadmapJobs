# Review of SchurWeyl (pull request #1164 at a205d48)
Folder: `TauCetiRoadmap/RepresentationTheory/SchurWeyl/`

**Verdict:** needs changes

## R01 (P1) — Restore the finite Frobenius prerequisites that the pin does not supply

**Location:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:212–218`, and consumers at 699–705, 736–745 and 819–831. Quote: “`TauCeti.psumPart_eq_sum_spechtCharValue_smul_schurPoly` (Frobenius's formula …), `TauCeti.sum_spechtChar_smul_psumPart` and `TauCeti.frobeniusCharacteristic_eq_sum_psumPart`”.

**Claim:** these finite Frobenius formulas, and `Subgroup.indClassFunction`, are supplied by Tau Ceti. All four names are absent at the actual pins. The cycle-type expansion is an unowned prerequisite of the character Murnaghan–Nakayama, power-sum Hall and stable-character routes. This is the previous review's R01, still unrepaired; there is no declared supplier gap.

**Witness (pin):** `TauCeti/RepresentationTheory/Symmetric/FrobeniusCharacteristic.lean:18,45–88` supplies only Schur coordinates; `PermutationModule/PowerSum.lean:191,211` supplies monomial expansions. Actual induction is `TauCeti.ClassFunction.ind` at `Induction/ClassFunction.lean:446`. None supplies the advertised finite Frobenius identities.

**Repair:** own the finite character/power-sum formulas before their consumers, using the supplied monomial expansion, Young's rule, Kostka expansion and character orthogonality; include the statable finite Frobenius headline in `Suggested.lean`. Replace the induction name by `TauCeti.ClassFunction.ind` with its subgroup and finite-index hypotheses. This does not require a new library carrier: a scratch signature for `p_μ = ∑_λ χ^λ(μ) s_λ` over every commutative ring and every finite alphabet elaborates at the pins. In degree two the repaired contract gives `p₂=s₂−s₁₁` and `p₁²=s₂+s₁₁`; over ℂ its inverse gives `ch(f)=((f(1)+f(τ))/2)s₂+((f(1)−f(τ))/2)s₁₁`. Those are precisely the missing inputs, not consequences of defining the Schur-basis equivalence alone.

## R02 (P2) — State the balanced-tensor headline in the acceptance file

**Location:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:975–979`; `Suggested.lean:25–45`. Quote: “prove its universal property and its `GLₔ`-equivariant equivalence with `𝕊^μ(ℂᵈ)`”.

**Claim:** §8.2 promises the balanced-tensor presentation, but the acceptance file neither states it nor lists it among unavailable headlines. Its carriers already exist.

**Witness:** the reproducible signature below elaborates a surjection from native tensor power ⊗ Specht to native Schur functor, with exactly the balancing kernel and GL equivariance. Its only new definition is the relation span.

**Repair:** add that relation span and the full quotient comparison, either directly or as the equivalent surjection/exact-kernel/equivariance statement. Use `v·σ=permTensorAction(σ⁻¹)v`. A span of group-element relations equals the group-algebra relation span by linearity. Tests: for d=n=2, row and column relation spaces have dimensions 1 and 3, so quotient dimensions are 3 and 1, matching Sym² and Λ². For d=1,n=2 the column quotient is zero; for n=0 it is one-dimensional. The probe passes with default elaboration settings; this is not a request to introduce a heavy balanced-tensor carrier or a weakened surrogate.

## R03 (P3) — Delete the redundant auxiliary Newton file

**Location:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/MatrixTraceNewtonTargets.lean:1,17`; main `Suggested.lean:209`. Quote: “`import Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff`”.

**Claim:** the auxiliary Lean file still violates the required single `import Mathlib` form and carries a second acceptance signature for the same matrix Newton theorem. Its module documentation also lacks the required headline/unstated-headline account. Previous R10 is unrepaired even though the recurrence has now been added to the main acceptance file.

**Witness:** auxiliary `matrix_trace_newton` and main `matrixTraceNewton` have the same binders and equation. Both elaborate; the former uses the forbidden submodule import.

**Repair:** delete `MatrixTraceNewtonTargets.lean`. Keep the main headline and its README target. The main targeted build already succeeds without importing the auxiliary file. For the unipotent 2×2 matrix and r=1,2,3 both duplicate statements give left and right values −2,2,0; deleting the duplicate loses no mathematical coverage. The supplied gate did not detect this form violation.

## R04 (P3) — Point the signed symplectic action to its actual source section

**Location:** `TauCetiRoadmap/RepresentationTheory/SchurWeyl/README.md:1080,1418` and reference at 1502. Quote: “Dipper–Doty–Hu, §2 for the signed action”.

**Claim:** §2 of the specified arXiv v2 is the locator for the signed tensor action. It is not: §2 begins with coordinate algebras and bideterminants.

**Witness:** dipperDotyHu2008 lines 177–187, §1, preprint p. 4, define minus-flip and cup-cap as a right action; §2 begins at line 256.

**Repair:** change the signed-action locators to §1, p. 4, the display preceding Theorem 1.2, explicitly retaining arXiv v2 numbering. Keep the left/right conversion in the roadmap's conventions. On Sp₂, the translated formula gives cap(ef−fe)=−2 and minus-flip(ef−fe)=ef−fe, agreeing with the native action and all four §9.9 matrices. The mathematics here does not need changing.

## Previous findings, checked against this head

The following dispositions precede the full-review evidence. Quotes are from the revised README, not instructions adopted from the earlier review. No repair report declaring a finding “not actionable in this package” was supplied or found among this package's reports.

| Previous finding | Disposition and current passage |
|---|---|
| R01, nonexistent finite Frobenius suppliers | **Not repaired.** Lines 212–218 still claim the three power-sum formulas and `Subgroup.indClassFunction`; see R01 above and the actual pinned alternatives. |
| R02, RSK reversal | **Repaired.** Line 649 now says “`RSK(reverse σ) = (Pᵗ, evac(Q)ᵗ)`”; lines 651–654 distinguish semistandard reverse-complement. Repeated word 00 is now a negative control, not a transposition theorem. |
| R03, B₃(0) | **Repaired.** Lines 1395–1398 give “`B₃(δ)` is semisimple precisely for `δ ∉ {−2, 1}`”. At zero the cell Gram determinant is 2. |
| R04, internal supply cycle | **Repaired.** Lines 1107–1111 establish complete reducibility before FFT; reverse centralizer at 1147–1149 uses it. Schur/stable transpose comparison is now §8.3. |
| R05, incompatible Hall inverse limit | **Repaired.** Lines 783–785 use “stable Schur coordinates” and projections only for `d ≥ n`. The norm of s₁₁ is 1 in the stable tail although its one-variable projection has norm 0. |
| R06, necessary versus sufficient matching bound | **Repaired.** Line 1139 uses `n ≥ k` / `l ≥ k` for tensors of degree 2k; the stronger §9.6 bound is explicitly sufficient. O₂ in degree four is included. |
| R07, generic character-theory duplication | **Repaired.** Lines 52–56 defer generic tensor characters and table specifications; §6.1 compares the supplied table with the Specht labels. CharacterTheory §3.6 and InductionRestriction's projection formula resolve. |
| R08, missing acceptance headlines | **Partly repaired.** Main lines 89,96,102 now give induced/Kronecker comparisons; lines 209,217 give matrix Newton and finite power-sum independence. Finite Frobenius remains absent behind the nonexistent supplier claim (R01). The additional §8.2 omission is R02. |
| R09, coefficient generality | **Repaired.** Lines 1028 and 1063 construct the algebra and actions “over every commutative ring”; line 1113 states the infinite-field FFT, with the orthogonal characteristic-two exclusion. The symplectic odd-degree argument uses weights in characteristic two. |
| R10, auxiliary Lean form | **Not repaired.** The first line still imports a Mathlib submodule, and the file now duplicates the main headline. R03 above. |
| R11, nondiscriminating/incorrect Checks | **Repaired for each previously identified instance.** Lines 396–403 separate sign automorphism from inversion on a 3-cycle; line 730 gives wrong-sign value −2; lines 860–861 test coproduct/antipode; lines 985–988 give the S₃ right-action test; line 1255 includes ∅ for O₁; main line 284 handles the empty tensor. |
| R12, harmonic/supplement locators | **Locator repair made; main-book contents only verified.** Lines 1239–1241 now cite symplectic §10.2.3, odd orthogonal §10.2.4 and even orthogonal §10.2.5. Lines 1282 and 1327 add Appendix F. The available contents confirm the numbering, but the main text remains uncertified. |

## Verified sound

This is a full review of all three listed files at a205d48, not an incremental check. The root normative README and CONTRIBUTING, the RepresentationTheory family index, and main-branch CharacterTheory, ClassicalGroups and InductionRestriction were read. The target and PR worktree were not edited. Existing roadmap work and native library objects were treated as suppliers, not new construction targets. No route-specific prime restriction, copied source passage, computational-algorithm programme, sorry'd data, `set_option`, or edit outside the authorized folder/family index was found. The remaining unowned prerequisites are R01.

**Gate, dependency direction and elaboration.** The worker's gate recorded no failures. The independent targeted build completed successfully (9,108 jobs); direct `lake env lean` elaboration of `Suggested.lean` completed with the 22 expected `sorry` warnings only. The auxiliary file also elaborates. The separate dependency command returned exactly:

```text
depcheck: 204 roadmaps, 1490 edges, 0 problem(s)
```

All 27 `*Needs:*` lines were read alongside supplier contracts. No UPWARD or CYCLE line was produced. The repaired §9.3 proof order no longer derives complete reducibility from the centralizer theorem it is needed to prove. No unlisted supplier gap was treated as an accepted contract.

A scratch copy printed `#check @name` for all 36 declarations in the main file (22 theorems and 14 definitions/abbreviations/structures), and the auxiliary theorem was checked separately. Infinite-field and nonzero-2 assumptions remain in the orthogonal FFT, the matrix statement retains its commutative-ring and positive-r binders, and the Hall/power-sum bounds are present. No silently dropped standing hypothesis was found; no signature was changed. The 22 main theorems were each probed with `simp`, `rfl` and `infer_instance`; none closed. Reading the relevant library declarations did not identify a single exact library lemma closing these stronger headlines. The two action-stability results support the restricted representations used later. R03 is a redundant second signature, not a claim that the main Newton recurrence is elementary padding.

**Headline coverage.** Present: sign-transpose, character transpose, self-duality, induction and both Kronecker comparisons; tableau-count LR; character Murnaghan–Nakayama; finite Hall normalization and Frobenius isometry; integral matrix Newton; finite power-sum basis; simultaneous Sₙ/GL decomposition; infinite-field orthogonal FFT, complex reverse centralizer, harmonic stability, orthogonal shape nonvanishing/irreducibility and harmonic decomposition. The docstring explicitly identifies missing carriers for stable symmetric functions/Frobenius induction, RSK-tableau equivalences, the Brauer algebra/cell modules/filtration, and arbitrary-slot symplectic harmonic constructions. Those are not replaced with empty predicates. The finite Frobenius prerequisites and balanced quotient comparison are statable, as confirmed by separate scratch elaborations, and need the repairs in R01–R02.

**Reproducible signature witness for R01–R02.** The following was elaborated with the imports already present in `Suggested.lean`, in a scratch copy; both `sorry` warnings are expected. The quotient comparison is encoded by its full first-isomorphism statement, including equivariance, so no quotient API implementation is assumed.

```lean
open scoped TensorProduct
namespace ReviewProbe
noncomputable def relations (d n : ℕ) (mu : n.Partition) :
    Submodule ℂ ((⨂[ℂ] (_ : Fin n), (Fin d → ℂ)) ⊗[ℂ] (TauCeti.spechtModuleℂ mu)) :=
  Submodule.span ℂ {x | ∃ (v : ⨂[ℂ] (_ : Fin n), (Fin d → ℂ))
    (s : TauCeti.spechtModuleℂ mu) (g : Equiv.Perm (Fin n)),
    x = (TauCeti.permTensorAction ℂ d n g⁻¹ v) ⊗ₜ[ℂ] s -
      v ⊗ₜ[ℂ] ((TauCeti.spechtModuleℂ mu).ρ g s)}
theorem balancedSchur (d n : ℕ) (mu : n.Partition) :
    ∃ f : ((⨂[ℂ] (_ : Fin n), (Fin d → ℂ)) ⊗[ℂ] (TauCeti.spechtModuleℂ mu)) →ₗ[ℂ]
        TauCeti.schurFunctor d (TauCeti.diagramOf mu),
      Function.Surjective f ∧ LinearMap.ker f = relations d n mu ∧
      ∀ (g : GL (Fin d) ℂ) (v : ⨂[ℂ] (_ : Fin n), (Fin d → ℂ))
        (s : TauCeti.spechtModuleℂ mu),
      f ((TauCeti.tensorPowerRep ℂ d n g v) ⊗ₜ[ℂ] s) =
        (TauCeti.schurFunctor d (TauCeti.diagramOf mu)).ρ g (f (v ⊗ₜ[ℂ] s)) := sorry
open scoped Classical in
theorem finiteFrobenius (d : ℕ) (R : Type*) [CommRing R] {n : ℕ} (mu : n.Partition) :
  MvPolynomial.psumPart (Fin d) R mu =
    ∑ lam : n.Partition, (TauCeti.spechtCharValue lam mu : R) •
      TauCeti.schurPoly (Fin d) R lam := sorry
end ReviewProbe
```

**Seeded source verification (15 requested targets).** Sources were fetched through the sources service, using legal author/institutional copies or open arXiv versions. No manifest was edited. Preprint and published page numbering are distinguished below. An unavailable text is recorded as unavailable, not silently certified by a numerical test.

| Seeded target | Text, locator, hypotheses and verification result |
|---|---|
| 4.1 tableau transpose/sign automorphism | Fulton–Harris Lecture 4/Exercise 4.4 and James Chapter 4/8.15: full text unavailable. Direct group-ring computation verifies the stated factor-order/sign convention; exact printed locator not certified. |
| 4.3 character identity/self-duality | James 8.15 and Fulton–Harris Lecture 4: unavailable. Native invariant form and characteristic-zero Specht irreducibility support the proposed route; the characteristic-three degeneration of the shape21 Gram form was tested. |
| 4.4 induction/Kronecker transpose | James 16.4 and Macdonald I.7 Example 5: unavailable. The native subgroup projection formula supplies induction, and sign²=1 supplies the two Kronecker equalities. This does not certify those book locators as sources for explicit intertwiners. |
| 6.1 character table/specification | James/Fulton–Harris book text unavailable. Pinned Specht orthogonality and class-size identities and main CharacterTheory's table specification were opened; S₃ row and column normalizations agree. |
| 7.1 skew tableaux/jdt/Knuth | Fulton §§1–3 and Stanley Appendix A1 unavailable. Haiman's author course outline, haiman2015 lines 221–235, lists lectures 33–36 but contains no proofs. The insertion/reading tests below distinguish LR words from insertion words. |
| 7.3 Murnaghan–Nakayama | James 21.1, Sagan 4.10.2, Macdonald I.7: unavailable. Native polynomial MN is present; the proposed character deduction still needs R01. All character values through size five were recomputed recursively. |
| 7.6 stable Frobenius/induction | Macdonald I.7, including its normalization, unavailable. The existing finite characteristic is a Schur-basis equivalence, not the cited power-sum formula. Degree-two normalization and induction were tested; R01 applies. |
| 7.8 matrix trace Newton | Macdonald I.2 (2.11′),(2.14′) unavailable. Native integral Newton and native charpolyRev signs were opened. Universal-polynomial specialization does not require diagonalizability; unipotent and characteristic-2/3 controls below agree. |
| 7.9 finite power-sum bases | Macdonald I.2 (2.12) unavailable. Native homogeneous Schur basis gives the carrier; degree-two determinant −2 and d<n failure verify the stated rationality/stable-range hypotheses. |
| 8.2 balanced tensor | Fulton–Harris §6.1 unavailable. Native carriers make the full statement possible; quotient dimensions and S₃ multiplication direction checked. Missing acceptance signature is R02. |
| 8.3 functor/stable transpose | Fulton–Harris/Macdonald main text unavailable. Finite-dimensional zero cases and stable ω at degree two agree, and the paragraph no longer creates the former layer cycle. |
| 9.2 orthogonal/symplectic actions | dotyHu2009 lines 97–114, §1 pp.2–3, gives the free integral diagram algebra and arbitrary commutative-ring base change; lines 131–144 give the orthogonal action. dipperDotyHu2008 lines 177–187, §1 p.4, gives the signed right symplectic action. Conversion to the roadmap's left action and J convention gives the same generators. R04 corrects its section number. |
| 9.6 cup expansions/signs/graded action | goodmanWallach2009 Appendix F, F.1.1 line 56, F.1.2 line 115 (printed pp.2–4), and F.2.3 lines 363–386 (p.10), support harmonic splitting and cup images over ℂ. The full signed raw-to-standard cell action is not explicitly verified from that supplement. The roadmap's four Sp₂ matrices and matching signs were independently multiplied. Its stronger sufficient bound avoids the erroneous F.1.3 bound. |
| 9.8 semisimplicity distinctions | rui2005 Theorem 1.2, lines 44–51, preprint p.2, treats abstract Brauer semisimplicity over ℂ and includes zero-parameter exceptions n=1,3,5. Thus B₃(0) is semisimple. dipperDotyHu2008 Theorem 1.2, lines 189–221, pp.4–5, gives the complex mutual-centralizer/decomposition statement; Theorem 1.4 lines 236–249 gives infinite-field duality. The geometric image and abstract algebra are correctly distinguished. |
| 9.9 Sp₂ rank-one examples | Signed generators are in dipperDotyHu2008 §1 p.4, not §2 (R04). The specific three-placement relation and all four raw matrices were verified directly. C has rank4 and kernel2; harmonic dimension4; total tensor dimension8. |

Additional source checks: stanley2006 equation (7), printed p.5, lines 182–189, confirms the repaired permutation reversal (including evacuation of Q). lenart2007 §2.4, pp.6–7, lines 273–294, describes involution and rotate/complement plus rectification for semistandard evacuation; this is not an assertion of simple transpose for repeated words. dotyHu2009 Theorem 1.2, lines 177–195, preprint p.3, states infinite-field odd-characteristic duality, with faithfulness when dimension ≥ tensor degree; the complex statement is Lemma 1.1 on the same page; its displayed form is split. The roadmap separately owns change-of-form/density/descent at lines 1171–1175 rather than attributing arbitrary-form descent directly to that theorem. The main Goodman–Wallach contents locate §§10.2.3/4/5 at pp.440/442/446 (contents lines 269/272/273); this checks numbering only.

**Pinned-library audit.** Pins checked: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. A scan of 204 qualified supplier references was followed by opening the relevant declaration bodies and signatures. The four absent names are reported in R01. Key object-level witnesses, including the distinction between supplied objects and retained stronger targets, are:

| Library file and line at pin | Object and result inspected |
|---|---|
| `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290,292,334` | `charpolyRev` is det(1−XA), its relation to reverse and its −trace first coefficient. |
| `Mathlib/LinearAlgebra/Matrix/Charpoly/Eigs.lean:96,108`; `Mathlib/LinearAlgebra/Trace.lean:352` | Trace/root identities require splitting/algebraic closure; trace of a nilpotent is nilpotent. These do not by themselves prove integral Newton over every ring. |
| `Mathlib/RingTheory/MvPolynomial/Symmetric/NewtonIdentities.lean:221` | Integral Newton in a commutative ring, suitable for universal specialization. |
| `Mathlib/LinearAlgebra/UnitaryGroup.lean:293`; `TauCeti/RepresentationTheory/ClassicalGroups/Orthogonal.lean:44,80` | Orthogonal means trivial-star bilinear group, not complex Hermitian unitary group. |
| `TauCeti/RepresentationTheory/Symmetric/FrobeniusCharacteristic.lean:45,53,66,88` | Schur-coordinate equivalence and Specht images, not the missing power-sum expansion. |
| `TauCeti/RepresentationTheory/Symmetric/PermutationModule/PowerSum.lean:191,211`; `PermutationModule/YoungRule.lean:192` | Power-sum expansion in monomials and Young multiplicities: inputs for the repair, not already the repaired statement. |
| `TauCeti/RepresentationTheory/Induction/ClassFunction.lean:446`; `Induction/Projection.lean:196`; `TauCeti/GroupTheory/Perm/SumCongr.lean:226` | Actual class-function induction, representation projection formula and block embedding; comparison uses inverse of the appropriate projection isomorphism. |
| `TauCeti/RepresentationTheory/Symmetric/Specht/Orthogonality.lean:173,182,218,239`; `ClassSize.lean:77,192` | Character row/column orthogonality and class-size factors z_μ. |
| `TauCeti/RepresentationTheory/Symmetric/Specht/Ideal/Idempotent.lean:127,153`; `Specht/HookLength.lean:59,67,74` | Quasi-idempotent scalar and hook dimension; §5's scalar/hook bridge is compatible. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/Basis.lean:301,312`; `Symmetric/Homogeneous.lean:45` | Native symmetric homogeneous submodule and bounded-length Schur basis over a commutative ring. These are not a stable inverse-limit ring. |
| `TauCeti/RingTheory/MvPolynomial/Symmetric/Schur/MurnaghanNakayama.lean:182`; `Schur/Pieri.lean:282`; `Schur/JacobiTrudi.lean:283` | Existing polynomial rules imported; full tableau-count LR and character MN remain distinct targets. |
| `TauCeti/RepresentationTheory/ClassicalGroups/WeylModule/Multiplicity.lean:105,136`; `WeylModule/SchurWeyl.lean:208` | Ideal-Hom/Weyl comparison and dimension formulas; these are not already the balanced quotient or simultaneous equivariant decomposition. |
| `TauCeti/RepresentationTheory/Symmetric/TensorAction/SchurWeyl.lean:134`; `TensorAction/Basic.lean:48,107,126` | Existing permutation centralizer and native tensor actions, with inversion needed for a right action. |
| `TauCeti/RepresentationTheory/ClassicalGroups/BrauerGenerators/Symplectic.lean:210,273,305`; `BrauerGenerators/Orthogonal/TensorPower.lean:619` | Inverse-form cup, loop −2l, signed crossing and orthogonal commutation. Equal-slot junk values are excluded by distinct-slot hypotheses. |
| `TauCeti/Combinatorics/Brauer/Diagram.lean:60,64`; `Compose.lean:294,691`; `LoopCount.lean:139` | Native diagrams, composition and loops; no abstract loop-weighted Brauer-algebra carrier is thereby supplied. |
| `Mathlib/LinearAlgebra/Quotient/Defs.lean:56` | Native submodule quotient is available for balancing; a new heavy quotient carrier is unnecessary. |

**Ownership and cross-roadmap resolution.** Object searches used the roadmap tools on main/open heads and the board packages, as well as direct pinned-source searches. Copies of the same SchurWeyl folder inherited into sibling worktrees were not counted as independent owners. No retained declaration was found to collide with a different roadmap's fully qualified declaration. Concrete resolved contracts and consumers include:

| Roadmap and location | Resolved ownership/direction |
|---|---|
| main `RepresentationTheory/CharacterTheory/README.md:521–548`, §3.6; Layer 5 table specification | Generic external tensor characters and character-table axioms belong there; this roadmap supplies Specht identification and comparisons. |
| main `RepresentationTheory/InductionRestriction/README.md:213–240,268–307` | Projection formula and induced-character infrastructure; used as suppliers. |
| main `RepresentationTheory/ClassicalGroups/README.md:216–235,274–286` | Schur functor image and torus characters supplied; tensor/Specht decomposition consumed from SchurWeyl. No reverse supplier of the same theorem is used. |
| main `ReductiveGroups/README.md:234–246,466–477` | Components and characteristic-zero linear reductivity; disconnected O requires the roadmap's component averaging, not only connected-group reductivity. |
| main `TemperleyLieb/README.md:208–216`, Layer 5 | Generic cellular/planar theory stays there; full Brauer representation-theoretic reconstruction is assigned here. |
| main `RepresentationTheory/LieHighestWeight/README.md:867,1516,1530` | Schur/LR/interlacing consumption; no new supplier edge upward. |
| open `TensorProductCombinatorics/README.md:280–328` | Declared skew-LR, evacuation and stable-ring interfaces are supplied by SchurWeyl; hives/crystals remain with that roadmap. The zero-based tableau conventions agree. |
| open `CountingBundlesAndHallAlgebrasOfCurves/README.md:135–143` | Ordinary stable symmetric-function Hall pairing consumed; curve Hall algebras are different objects. Both conventions give ⟨p₂,p₂⟩=⟨p₁²,p₁²⟩=2 and cross pairing0. |
| main `TypeAHeckeAlgebras/README.md:128,494` | Symmetric-function input consumed; generic Hecke extensions remain there. |
| main `FreeProbability/README.md:85,728`; `BordismFormalGroups/README.md:908,2784` | Permutation-centralizer and Young-idempotent consumers. |
| open `NoncompactQuantumSymmetry/README.md:99,885` | Specht input consumed, not independently reconstructed. |

The base roadmap already places the stable-ring continuation and the symmetric/GL/Brauer interfaces here; this is an extension of that work, not a rival replanning. Downstream mentions in §Downstream consumers are not suppliers. The asserted consumption by KacMoody was not established in its supplied open head; nor is this report a certification that every listed arithmetic consumer has already written the proposed application. This limitation introduces no dependency edge or acceptance assumption.

**Computed adversarial pass.** 166 rows follow. The table covers the 15 seeded targets, the headline programme, definitions/conventions and each finding's witness. Independent exact computations included all 154 permutations of sizes 0–5 for RSK reversal/evacuation, all character-table entries through size five by rim-hook recursion, explicit LR fillings, rational contraction-rank calculations, and all four raw Sp₂ generator matrices. These are truth checks, distinct from `sorry` elaboration. Shape notation omits parentheses when unambiguous; `02/1` means tableau rows. No finite enumeration is claimed as a proof of a general target.

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
| §4.1 wrong-model Check | c=(012) | `ε(c)=c`; inversion gives `c⁻¹=(021)≠c` | Pass; repaired |
| §4.2 sign-transpose isomorphism | λ=(2),(21),∅ | characters `(1,1)·(1,−1)=(1,−1)`; `(2,0,−1)·(1,−1,1)=(2,0,−1)`; `1·1=1` | Pass |
| §4.2 composite scalar | n=2 row; n=3 shape21; n=0 | `κ=n!/f=2,3,1`; composites multiply by `2,3,1`, not always 1 | Pass |
| §4.2 inverse denominator | same shapes | nonzero rational scalars `2,3,1`; inverses `1/2,1/3,1` | Pass |
| §4.3 character transpose | S₄ shape31 | `(3,1,−1,0,−1)·(1,−1,1,1,−1)=(3,−1,−1,0,1)` | Pass |
| §4.3 self-dual form | S₃ shape21 | Gram `[[2,1],[1,2]]`, determinant `3`; determinant modulo3 `0` | Pass over ℚ; characteristic hypothesis matters |
| §4.3 contragredient direction | 3-cycle on basis e₀−e₂,e₁−e₂ | action `[[−1,−1],[1,0]]`; `gᵀBg=B`; `gᵀ≠(g⁻¹)ᵀ` | Pass; forward dual action excluded |
| §4.4 induction/sign projection | S₁×S₁→S₂ | regular character `(2,0)`; sign product `(2,0)`; both multiplicities1 | Pass; generic comparison now imported |
| §4.4 Kronecker double transpose | standard S₃ square | `(2,0,−1)²=(4,0,1)=(1,1,1)+(2,0,−1)+(1,−1,1)` | Pass; now stated in Suggested.lean |
| §4.4 simultaneous three-index transpose not asserted | all three S₃ shapes (3) | `g((3),(3),(3))=1`; `g((111),(111),(111))=0` | Correct exclusion |
| §5.1 symmetrizer scalar/hook product | (21) | hooks `3,1,1`, product3; `3!/2=3` | Pass |
| §6.1 table comparison/specification | S₃ | standard row weighted square `1·4+3·0+2·1=6`; normalized norm1 | Pass; comparison with supplied specification |
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
| §7.2 word RSK reversal exclusion | 00 | reversed word still inserts as row00, shape2; transpose would have shape11 | Pass; no longer asserted for repeated letters |
| §7.2 corrected permutation reversal | 102→201 | `P:02/1→01/2`; `Q:02/1→02/1`; `evac(Q)ᵗ=02/1` | Pass for corrected identities |
| §7.2 nonnegative-matrix RSK weights | 1×1 matrix [2] | insertion row00 and recording row00, total size2; zero matrix gives two empty tableaux | Pass |
| §7.3 character M–N | κ=21,ρ=3 | one rim hook, height1: `χ=−1=(−1)·1` | Pass |
| §7.3 disconnected rim-hook rejection | κ=21,ρ=21,r=2 | no connected eligible skew shape; `χ=0=empty sum`; admitting it would give−1 | Pass |
| §7.3 column sign | κ=111,ρ=3 | height2; `χ=1=(−1)²` | Pass |
| §7.3 S₄ non-hook case | κ=211,ρ=31 | no eligible size3 hook; `χ=0=0` | Pass |
| §7.3 height vs width Check | κ=22,ρ=22 | correct height sum `1−(−1)=2`; wrong column sign gives `−1+(−1)=−2` | Pass; repaired |
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
| §7.5 stable-tail Hall construction | s₁₁, d=1,2,3 | projected norms `0,1,1`; stable Schur-coordinate norm1; only d≥degree participates | Pass; repaired |
| §7.5 rational Newton presentation | p₁,p₂,p₃ at eigenvalues1,2,3 | `(6²−14)/2=11=e₂`; `(216−252+72)/6=6=e₃` | Pass |
| §7.5 denominator control | r=2 over ℚ vs𝔽₂ | 2 inverse1/2 overℚ; 2=0 in𝔽₂ and no inverse | Pass; ℚ-algebra hypothesis essential |
| §7.5 index shift/no P₀ | d=0,1,2 | finite p₀=`0,1,2`; p₁ specializes compatibly, p₀ does not overℤ | Pass |
| §7.5 weighted grading/base change | X₁↦p₂; ℤ→𝔽₂ | degree2 on both sides; coefficient2 becomes0 on both sides | Pass |
| §7.6 stable ch | trivial/sign S₂ | `(p₁²+p₂)/2=s₂=h₂`; `(p₁²−p₂)/2=s₁₁=e₂` | Pass |
| §7.6 integral virtual lattice | class values(1,0) onS₂ | irreducible coefficients(1/2,1/2), not integers; values(2,0) give(1,1) | Pass; integer-valued≠virtual |
| §7.6 block induction product | S₁×S₁ | induced values(2,0); `ch=p₁²=s₁s₁` | Pass; use real induction API R01 |
| §7.6 Young's rule | μ=11 | `h₁²=s₂+s₁₁`; two Specht multiplicities1 | Pass |
| §7.7 coproduct/alphabets | e₂ in x,y | split-alphabet coefficient of x⊗y is1; `e₂⊗1+e₁⊗e₁+1⊗e₂` gives1 | Pass; discriminating Check now present |
| §7.7 coassociativity | e₂ split into x,y,z | both iterated coproducts give `xy+xz+yz` | Pass |
| §7.7 counit | e₁ and1 | counit values0,1; applying counit to one coproduct factor recovers e₁,1 | Pass |
| §7.7 antipode | e₁,e₂ | `S(e₁)=−e₁`; `e₂−e₁²+h₂=0`; `S(e₂)=h₂` | Pass |
| §7.7 primitive power sums | P₂ | `P₂(x,y)=x²+y²`; split expression same; antipode `−P₂` | Pass |
| §7.8 reversed coefficients | A=diag(1,2) | det(1−tA)=`1−3t+2t²`; c=(1,−3,2), E=(1,3,2) | Pass |
| §7.8 integral Newton, matrix headline | A=[[1,1],[0,1]], r=1,2,3 | `(r c_r)=−2,2,0`; recurrence RHS=`−2,2,0` despite non-diagonalizability | Pass; now in Suggested.lean |
| §7.8 high-index total-function behavior | same A, r=4,5 | c₄=c₅=0; recurrence RHS0,0; no coeff at truncated d−r used | Pass |
| §7.8 rank0 and nilpotent | d=0; A=[[0,1],[0,0]] | charpolyRev=1 in both; all positive traces0; recurrence0=0 | Pass |
| §7.8 characteristic2 | A=I₂ over𝔽₂ | p_j=0 for every j>0; c₂=1; r2 equation `0·1=0` | Pass; recurrence does not determine coefficients here |
| §7.8 characteristic3 | A=I₃ over𝔽₃ | p_j=0; c₃=−1=2; r3 equation0=0 | Pass; rational solution requires ℚ |
| §7.8 rational partition solution | A=diag(1,2,3), r=3 | `E₃=6`, `c₃=−6`; partition numerator `216−252+72=36` | Pass; odd-degree sign distinct |
| §7.8 ring naturality/reindexing/similarity | unipotent A, reduce mod2; swap basis | coefficients(1,−2,1)→(1,0,1); swapped matrix has same coefficients/traces | Pass |
| §7.8 representation trace of powers | C₂ acting diag(1,1,1,−1) | χ(g)=2; p=(2,4,2,4); polynomial `(X−1)³(X+1)` | Pass in characteristic0 |
| §7.8 direct sums | diag(1,−1) plus one trivial | p₁0→1; p₂2→3; polynomial `(X²−1)(X−1)` | Pass |
| §7.9 power-sum basis | degree2,d=2,ℚ | p₁₁=s₂+s₁₁, p₂=s₂−s₁₁; determinant−2≠0 | Pass; now stated in Suggested.lean |
| §7.9 small-alphabet quotient | degree2,d=1 | relation p₁₁−p₂=0; dimension1 vs two proposed vectors | Pass |
| §8.1 Schur–Weyl equivalence | d=2,n=2 | dimension `4=1·3+1·1`; transposition eigenvalues +1 onSym²,−1 onΛ² | Pass |
| §8.1 simultaneous GL equivariance | g=diag(2,3),d=n=2 | eigenvalues onSym² `4,6,9`, onΛ² `6`; tensor action gives `4,6,6,9` | Pass; arbitraryS₂-map not enough |
| §8.1 all-dimensional boundary | d=0,n=0 and n=1; d=1,n=2 | dimensions `1=1`, `0=0`, `1=1+0` | Pass |
| §8.1 permutation action faithfulness | d=1,n=2 | transposition acts1; `1−τ` acts0; sign shape killed | Pass; native supplied fact |
| §8.2 balanced tensor symmetric/exterior | d=n=2 | dimensions3 and1; at d1,n2 exterior quotient0 | Pass |
| §8.2 right-action direction | σ=(01),τ=(12), tensor indices(0,1,2) | `(v·σ)·τ=v·(στ)` gives(1,2,0); the wrong composite right action gives(2,0,1) | Pass; nonabelian Check now present |
| §9.1 diagram basis/algebra | k=0,1,2,3 | diagram counts `1,1,3,15`; k3=`6+9` | Pass |
| §9.1 loop product | e inB₂; disjoint e₁e₃ inB₄ | `e²=δe`; `(e₁e₃)²=δ²e₁e₃`; atδ2 coefficients2,4 | Pass |
| §9.1 associativity loop cocycle | e,e,e inB₂ | left loop sum `1+1=2`; right `1+1=2`; productδ²e | Pass |
| §9.1 permutation inclusion/unit | k=2 | `s²=1`, `se=es=e`; distinct basis vectors1,s stay independent evenδ0 | Pass |
| §9.1 coefficient generality | B₂(0) overℤ,𝔽₂ | free rank3 in both cases; e²=0 in both; base change reduces coefficients mod2 | Pass; commutative-ring construction now stated |
| §9.2 orthogonal action | n=2,k=2,e₀⊗e₀ | cup-cap sends to`e₀e₀+e₁e₁`; twice gives2times that cup | Pass |
| §9.2 symplectic loop and crossing | l=1,θ=ef−fe | capθ=`−1−1=−2`; e²=−2e; (−flip)θ=θ, flipθ=−θ | Pass |
| §9.2 no equal-slot generators | n=2,k=1; reflection diag(−1,1) | same-slot map sends e₀→e₀+e₁; compositions on e₀ give`−e₀+e₁` vs`−e₀−e₁` | Pass; a≠b necessary |
| §9.2 orthAction and zero dimension | n=0,k=0/1 | action scalar identity onℂ / unique map on0 | Pass |
| §9.3 Ξ₁ and self-duality direction | O₂;Sp₂ | orthogonal id→e₀e₀+e₁e₁; symplectic id→fe−ef=−θ | Pass |
| §9.3 Ξ₂ signs | Sp₂ id,cup-cap,crossing | ε=`+1,−1,−1`; cup-cap tensor`−θ_in⊗θ_out` | Pass |
| §9.3 matching relabeling | Sp₂ exchange endpoints of one arc | θ→−θ; orthogonal cup→same cup | Pass |
| §9.3 invariant spanning/odd tensors | O₁, degree2/3 | invariant dimensions1/0; matching span dim1 at degree2; −1 acts−1 at degree3 | Pass overℂ |
| §9.3 matching independence | O₂,degree4 | Gram diag4/off-diagonal2 has determinant32; n=2≥k=2 | Pass; corrected threshold |
| §9.3 symplectic dependence | Sp₂,degree4 | 3 tensors with relation `θ₁₂θ₃₄−θ₁₃θ₂₄+θ₁₄θ₂₃=0`; rank2 | Pass |
| §9.3 full orthogonal group hypothesis | O₂ vsSO₂,degree2 | invariant dimensions1 vs2; reflection negates alternating tensor | Pass; connected replacement false |
| §9.3 orthogonal FFT | O₃,k=2 | image span{1,s,e} dimension3; decomposition5+3+1 has commutant dimension3 | Pass |
| §9.3 reverse commutant | O₃,k=2 | group image and reverse commutant dimensions `5²+3²+1²=35` | Pass; complete reducibility now precedes FFT |
| §9.4 harmonicTensors definition | O₁,q=0,1,2 | dimensions1,1,0; positive-degree cap atq2 is1 on basis tensor | Pass; doc's n0 caveat read with q0 boundary |
| §9.4 orthogonal harmonic dimension | O₂,q=2,4; O₃,q=2,3 | tensor dimensions4,16,9,27 minus stacked-cap ranks1,14,1,9 give3,2,8,18 | Pass |
| §9.4 symplectic harmonic dimension | Sp₂,q=2,3,4 | dimensions4,8,16 minus cap ranks1,4,11 give3,4,5 | Pass |
| §9.4 harmonic action stability | O₂ reflection and slot flip on e₀e₁−e₁e₀ | images are negatives; contraction remains0 | Pass for both Lean stability theorems |
| §9.4 orthShapeSpace | O₂,q=2, shapes2,11 | symmetric traceless dimension2; alternating dimension1; ranges intersectH as claimed | Pass |
| §9.4 OrthAdmissible | n2, λ=2,11,22,111 | first-two-column sums2,2,4,3; booleans true,true,false,false | Pass; GL row bound cannot substitute |
| §9.4 nonvanishing iff | same four shapes | E dimensions2,1,0,0; nonzero flags true,true,false,false | Pass both directions |
| §9.4 empty shape/O₁ Check | q=0,n=0 or1 | column sum0; E∅ dimension1; admissible true | Pass; empty shape now included in Check |
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
| §9.6 sufficient stability bound | O₁,k2,j1 | domain/image dim1 although1<4 | Pass; explicitly sufficient, not necessary |
| §9.6 stable dimension | O₆,k3,j1 | Gram eigenvalues8,5,5≠0; placement factor3, dimH¹6; gr₁dim18 | Pass |
| §9.7 Hom multiplicity and labels | O₃,k2 | group pieces5,3,1; Hom multiplicities1,1,1; total9 | Pass |
| §9.7 symplectic transpose label | Sp₂,k2 | H²dim3, crossing−1, cup-cap0; Brauer label11, group shape2 | Pass |
| §9.7 nonzero multiplicity boundary | O₁,k2,λ=∅; n0,k2 | positive-dimensional cup gives Homdim1; zero-dimensional tensor Homdim0 | Pass; zero case separated |
| §9.8 image vs abstract semisimplicity | Sp₂,k3,δ−2 | geometric tensor `V₃⊕2V₁`; commutant `ℂ⊕Mat₂`, dim5; abstractB₃ dim15 with singular cell Gram | Pass distinction |
| §9.8 B₂ exceptional parameter | δ0,±2 | e²0 atδ0; at nonzeroδ idempotent e/δ; semisimple at±2 | Pass |
| §9.8 B₃ zero parameter | δ0 | Gram determinant2, rank3; simple-square sum `1+1+4+9=15` | Pass; semisimple Check repaired |
| §9.8 nonsemisimple B₃ parameters | δ−2,1 | Gram ranks2,1 and determinants0,0 | Pass; exceptional set now {−2,1} |
| §9.8 sufficient bound/generic case | k3,δ4 | determinant54, rank3; δ4 outside{−2,1} | Pass |
| §9.9 cup relation | apply to e andf inSp₂ | D₁₂e=efe−fee, D₁₃e=eef−fee, D₂₃e=eef−efe; alternating sum0; f gives same cancellation | Pass |
| §9.9 raw crossing action | relation vector(v,−v,v) | s₁,s₂ both return(v,−v,v); raw formula agrees with−flip | Pass |
| §9.9 raw contraction action | relation vector(v,−v,v) | e₁ gives(−2v+v+v,0,0)=0; e₂ gives(0,0,v+v−2v)=0 | Pass |
| §9.9 normalization/Gram transport | D=diag(1,−1,1),δ−2 | standard Gram off-diagonal+1; DGD off-diagonals(−1,+1,−1); radicals(1,1,1) and(1,−1,1) | Pass |
| §9.9 quotient and multiplicity | Sp₂,k3 | cup quotient dim`6−2=4`; two copies of dim2 standard; harmonicdim4; total8 | Pass |
| Worked hook/square-sum examples | n=4,5 | `1+9+4+9+1=24`; `1+16+25+36+25+16+1=120` | Pass |
| §4.4 one-sided Kronecker transpose | S₃ trivial⊗trivial, then twist one factor | `(1,1,1)·(1,−1,1)=(1,−1,1)`; multiplicity of sign becomes1 | Pass; one-sided theorem included |
| §7.2 semistandard reverse-complement | alphabet {0,1}, word001 | P=001; reverse-complement011 has P=011; semistandard evacuation changes content(2,1)→(1,2) | Pass; shape stays3 |
| §7.6 finite Frobenius supplier contract | S₂ class values(a,b) | Schur coefficients `((a+b)/2,(a−b)/2)`; three advertised power-sum declarations found0 times at pin | R01; restore owned finite formula |
| §7.8 padding probe | A=diag(1,2),r=2 | `2c₂=4`; `−(c₁p₁+c₀p₂)=−(−9+5)=4`; same signature appears twice | R03; delete auxiliary duplicate |
| §8.2 balancing kernel headline | d=n=2, row/column | ambient dim4; relation-span dims1/3; quotient dims3/1=Schur dims3/1 | R02; state full comparison |
| §8.2 empty balancing | d=0,n=0; d=1,n=2,column | ambient/quotient/target dims `1/1/1`; `1/0/0` | Pass; include all d,n in new headline |
| §8.3 Schur/stable transpose | n=2,d=1 | row functor dim1, column dim0; stable ω(h₂)=e₂ then specialization0 | Pass; not a GL-isomorphism between those functors |
| §9.2 source action convention | Sp₂ θ=ef−fe | native capθ=−2; minus flipθ=θ; DDH right action has the same two values after form convention change | R04 is locator-only |
| §9.3 odd symplectic tensors in characteristic2 | rank1,degree3 | torus weights `3,1,−1,−3`, none0; scalar −1 acts+1, so that scalar argument alone fails | Pass; weight argument supplies vanishing |
| §9.1 zero coefficient ring | B₂ over zero ring | all vectors coincide0; free module indexed by3 diagrams is zero; rank/cardinality distinguished | Pass; no nontriviality falsely inferred |
| §9.6 four raw Sp₂ actions | k=3,C:ℚ⁶→ℚ⁸ | ranks C=4,kerC=2; each of Cs₁−ρ(s₁)C, Cs₂−ρ(s₂)C, Ce₁−ρ(e₁)C, Ce₂−ρ(e₂)C has all48 entries0 | Pass |
| Appendix F stabilizer | k=4,r=1, matching12 | actual stabilizer `{1,(12),(34),(12)(34)}` order4; pair wreath group order2 | Source error, not copied into roadmap |
| Appendix F stable bound | Sp₂,k=4,r=2 | `2k=8=dimV+3r`; three cup tensors have rank2, not3 | Source error; roadmap uses stronger sufficient bound |
| Appendix F full matching count | k=4,r=2 | count3; printed factorial expression `24/(4·4)=3/2`; corrected `24/(4·2)=3` | Source misprint |
| Appendix F SL₂ tensor fourth power | dimV=2 | tensor dimension16; printed summands `5+3·3+1=15`; corrected `5+9+2=16` | Source misprint |


The jeu-de-taquin row distinguishes LR reading order (top to bottom, right to left) from the insertion-compatible tableau word (bottom to top, left to right). The latter word in that example is 10, inserting to column 01, as does rectification. The roadmap does not identify those two reading orders.

## Not verifiable

- **james1978:** Chapter 4 and Theorems 8.15, 16.4, 21.1. The sources service resolved a paywalled Springer record as uncertified. The exact theorem text, hypotheses and printed pages were not read.
- **fultonHarris1991:** Lecture 4 §4.1/Exercise 4.4/Lemma 4.26, §6.1/Theorem 6.3. Title/author/publisher resolution did not obtain legal full text. In particular the balanced-presentation locator is not certified by the scratch Lean probe.
- **fulton1997**, **stanley1999:** the cited tableau, Knuth, jdt, RSK and LR sections/theorems. Cambridge landing pages were found, but no readable open full text was returned.
- **sagan2001:** §4.9 and Theorem 4.10.2. Legal resolution reached a Springer paywall and an arXiv timeout; no full text was read.
- **macdonald1995:** all cited I.2–I.9 equation/example locators. The OUP record returned HTTP 403 and arXiv resolution HTTP 429. Neither equation numbering nor printed pages is certified.
- **haiman2015:** the legal Berkeley page is a lecture-topic outline. Its listing of lectures 33–36 is not the notes/proofs, and cannot certify the stated mathematical claims.
- **goodmanWallach2009:** main-book §§5.3.2,9.1.1,10.1.1–10.1.2,10.2.1/3/4/5 are paywalled/uncertified. The author contents and Appendix F were read. They do not certify the full main-book harmonic statements or the complete signed cell-action comparison. The source issues below concern the accessible supplement only.
- **weyl1939:** V.7; no legal full text returned by the sources service. **brauer1937:** §§3–5, pp.857–872; JSTOR landing record found but no open article text; arXiv lookup returned HTTP 429.

These limitations were recorded together after attempting every cited work; this review is finished, not parked awaiting sources. Source keys were reused, no roadmap manifest was changed, and the settled paywalled James/Goodman records were not reopened as missing-text requests. No mathematical finding is inferred merely from inability to read a source.

## Source issues

- **Error** in goodmanWallach2009 at Appendix F §F.1, printed p.2, lines 72–73: the source says the partial-matching stabilizer is the pair wreath product; it should be that product times the symmetric group on unmatched slots; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F §F.1, printed p.2, line 74: the source says the zero-pair matching set is empty; it should be a singleton containing the empty matching; affects a stated result.
- **Error** in goodmanWallach2009 at Appendix F Theorem F.1.3, printed p.4, line 134: the source says the displayed dimension bound ensures independence for both classical groups; it should be restricted or strengthened, since Sp₂ with k=4,r=2 satisfies it but has dependent cups; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F Example 1, printed p.4, line 148: the source says the full-matching denominator contains the square of m factorial; it should be 2 to the m times m factorial; affects a stated result.
- **Misprint** in goodmanWallach2009 at Appendix F equation (F.5), printed p.5, line 158: the source says the fourth SL₂ tensor power contains one trivial summand; it should be two trivial summands; affects a stated result.
