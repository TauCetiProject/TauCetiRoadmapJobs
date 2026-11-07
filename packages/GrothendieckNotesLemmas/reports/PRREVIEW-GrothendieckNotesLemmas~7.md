# Review of GrothendieckNotesLemmas (pull request #1431 at 3373787)

**Verdict:** needs changes

This is a full review of the repaired head: 660 lines changed since `1fe3ecc`. Targets 1.9 and
old 5.2 and 5.4 were deleted, everything after them in Layer 5 was renumbered, and two non-target
remarks were added. The pins are the same as last round: Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`.
The gate passes every check. The dependency check reports no problem. `Suggested.lean` elaborates
with `sorry` as its only warning, and no declaration closes under the one-tactic battery.

Two findings are blocking. Target 1.7 is a pinned Tau Ceti theorem, and target 2.5 is a pinned
Tau Ceti instance. Both are closed in a scratch probe by `exact` and by `infer_instance`. The
previous review missed them although they are at the same Tau Ceti pin; its statement that "no
Tau Ceti file mentions `injective_primaryComponent`, a nilpotent-ideal adic completeness" was
wrong. Three more statements follow in two lines from pinned declarations (R03).

## Status of the previous review's findings (r6 at 1fe3ecc)

- **R01 (2.9 Baer is Tau Ceti's): repaired.** README 499–500: "divisibility gives Baer's
  criterion by Tau Ceti's `Module.Baer.of_surjective_smul`". Scope 88–90 lists it, and
  `Module.Baer.of_isPrincipalIdealRing` is gone from `Suggested.lean`.
- **R02 (injectivity of `K ⁄ A`): repaired.** README 543–544: "`K ⁄ A` is moreover injective by
  Tau Ceti's instance `Submodule.injective_quotient_of_divisionRing` (see Scope)".
  `IsFractionRing.baer_quotient_range` is gone.
- **R03 (`Derivation.leibniz_prod`): repaired.** Scope 94–96 cites it, and 3.1 keeps only
  `leibniz_zpow_units`.
- **R04 (Cauchy–Binet re-planned): repaired.** Scope 62–65 defers it to
  PadicMeasuresIwasawaAlgebras §6.4 and also cites DiophantineApproximationAndTranscendence §2.5
  and Tau Ceti `Matrix.pairMinor_mul`.
- **R05 (1.9 resultants padding): repaired.** Scope 84–87 records it as "Supplied at the pins".
  The three declarations are deleted, and so is the stale sentence about Mathlib's file.
- **R06 (`Module.Flat.prod`): repaired.** README 360–363 now reads "Tau Ceti's instance
  `Module.Flat.prod` for `M × N` when `R` is a commutative ring … over a commutative semiring
  that direction for `M × N` is part of this target". The Tau Ceti contract (170–171) lists it.
- **R07 (`Int(D)` carrier): repaired.** The local definition is gone. Scope 66–69 defers to
  ClassicalArithmeticCompletion §§3.6, 3.43, 3.57, which resolve on main at README lines 5447,
  6596 and 7008.
- **R08 (Tau Ceti trace theorem): repaired.** Scope 99–102 and 5.5 (788–792) say how the target
  differs: simple modules, `k` algebraically closed, any characteristic.
- **R09 (locators): partly repaired.** Every target now carries "own statement" or a source,
  except 1.2 and 5.3; see R05 below.
- **R10 (process narrative): repaired.** README 826–827 keeps only the PCurvature sentence.
- **R11 (1.1 route): repaired.** README 204–208 uses Lucas's theorem in both directions. The
  Mathlib contract (129–130) no longer names `Nat.Prime.dvd_choose_pow`.
- **R12 (namespace, import): repaired.** README 145 and 523 write
  `TensorProduct.quotTensorEquivQuotSMul`, and `Suggested.lean` imports only `Mathlib`.

## R01 (P2) — 1.7's power formula is a pinned Tau Ceti theorem

**Location.** `TauCetiRoadmap/GrothendieckNotesLemmas/README.md` 302–306: "Prove
`mul_pow_of_commute_commutatorElement`: … `(u v) ^ n = u ^ n v ^ n d ^ (n.choose 2)` … (own
statement, the class-two case of the Hall–Petrescu formula)". `Suggested.lean` 99–113.

**Claim.** A statement that exists at the pins is cited, not restated. Scope 36–37 says such
statements "are listed below under 'Supplied at the pins' and are not targets". That is false
here. In a scratch probe importing `TauCeti.GroupTheory.Commutator`:

- the first statement closes by `exact hu.mul_pow_eq_pow_mul_pow_mul_commutatorElement_pow_choose_two hv n`;
- the prime form closes in three lines: the formula, then `p ∣ p.choose 2` for odd `p`, then
  `pow_mul` and `hd`.

**Witness.** Tau Ceti `Commute.mul_pow_eq_pow_mul_pow_mul_commutatorElement_pow_choose_two`
(`TauCeti/GroupTheory/Commutator.lean` line 96) states exactly this: from `Commute a ⁅b, a⁆` and
`Commute b ⁅b, a⁆`, `(a * b) ^ n = a ^ n * b ^ n * ⁅b, a⁆ ^ n.choose 2`. The hypotheses, the
commutator order and the generality are the roadmap's.

**Repair.**

- Delete `mul_pow_of_commute_commutatorElement` and `mul_pow_prime_of_commute_commutatorElement`
  from `Suggested.lean` and from its module docstring.
- In Scope, under "Supplied at the pins", add: "the class-two binomial formula
  `(u v) ^ n = u ^ n v ^ n ⁅v, u⁆ ^ (n.choose 2)`: Tau Ceti
  `Commute.mul_pow_eq_pow_mul_pow_mul_commutatorElement_pow_choose_two`". Add it to the Tau Ceti
  supplier contract too.
- Either delete 1.7, or keep only the odd-prime corollary as a README target whose *Needs:* line
  names the Tau Ceti theorem.
- The Heisenberg, `𝔖₃` and `Q₈` Checks stay as Checks of the cited formula. The commutator
  witness in Conventions (README 111–112) keeps pointing at them.

## R02 (P2) — 2.5 is Tau Ceti's instance `Ideal.injective_primaryComponent`

**Location.** README 429–431: "Prove `Ideal.injective_primaryComponent`: over a Noetherian ring
`A`, for an ideal `I` and an injective module `Q`, the `I`-primary component … is injective
(Stacks, Tag 08XW, (2))". `Suggested.lean` 164–171.

**Claim.** Same name, same hypotheses (including `[Small.{v} A]` with `Q : Type v`) and same
conclusion as a pinned instance. In a scratch probe importing
`TauCeti.Algebra.Module.Injective.Noetherian`, the roadmap's statement closes by `infer_instance`.
The open head of DeformationAndDerivedPatchingAlgebraPartII already cites the instance (README
line 337).

**Witness.** `TauCeti/Algebra/Module/Injective/Noetherian.lean` line 61 has
`instance injective_primaryComponent (𝔞 : Ideal R) : Module.Injective R (𝔞.primaryComponent M)`
in namespace `Ideal`. Its variables (lines 56–57) are `[IsNoetherianRing R]`, `M : Type v`,
`[Small.{v} R]` and `[Module.Injective R M]`.

**Repair.**

- Delete 2.5 and its declaration.
- Add to Scope, under "Supplied at the pins": "the `I`-primary component of an injective module
  over a Noetherian ring is injective: Tau Ceti's instance `Ideal.injective_primaryComponent`
  (Stacks, Tag 08XW, (2))". List it in the Tau Ceti contract.
- Renumber 2.6–2.12, or keep the numbers with a one-line note. No roadmap cites a Layer 2 id:
  PCurvature cites only §3.2, and HomotopyTheoryOfCategories none.

## R03 (P3) — 2.1 `pi_iff`, 2.6 and 2.12 follow in two lines from pinned declarations

**Location.** README 358–360 (2.1, `Module.Flat.pi_iff`), 446–447 (2.6,
`IsAdicComplete.of_isNilpotent`) and 562–569 (2.12, `Module.IsTorsion.isFiniteLength`).
`Suggested.lean` 126–129, 173–176 and 238–241.

**Claim.** These are padding in the acceptance test: each closes in two lines from pinned
declarations (scratch probes, no error, no `sorryAx`). 2.6 is the special case `I ^ k = ⊥` of
Tau Ceti's theorem for modules killed by `I ^ k`. 2.12 is Tau Ceti's finite-length theorem, with
the nonzerodivisor supplied by Mathlib. 2.1's `pi_iff` is Mathlib's `directSum_iff`, moved along
the finite direct-sum equivalence (this is how Tau Ceti proves `Module.Flat.pi`). The README's
*Needs:* lines for 2.6 and 2.12 name none of these.

**Witness.**

- 2.1: `Module.Flat.equiv_iff (DirectSum.linearEquivFunOnFintype R ι M)` with
  `Module.Flat.directSum_iff` (Mathlib `RingTheory/Flat/Basic.lean`, lines 187 and 208).
- 2.6: `TauCeti.isAdicComplete_of_pow_smul_eq_bot` (Tau Ceti `RingTheory/AdicCompletion/Nilpotent.lean`,
  line 26).
- 2.12: `Submodule.annihilator_top_inter_nonZeroDivisors` (Mathlib
  `Algebra/Module/Torsion/Basic.lean`, line 803) with
  `TauCeti.isFiniteLength_of_nonZeroDivisor_mem_annihilator` (Tau Ceti `RingTheory/Length.lean`,
  line 274).

**Repair.**

- Delete the three declarations from `Suggested.lean`. The README keeps the statements.
- In 2.6's *Needs:* line, name `TauCeti.isAdicComplete_of_pow_smul_eq_bot`. In 2.12's, name
  `TauCeti.isFiniteLength_of_nonZeroDivisor_mem_annihilator` and
  `Submodule.annihilator_top_inter_nonZeroDivisors`. Add both Tau Ceti declarations to the Tau Ceti
  contract.
- In 2.1, say that `pi_iff` is `Module.Flat.directSum_iff` along
  `DirectSum.linearEquivFunOnFintype`. `prod_iff` stays the stated target.

## R04 (P3) — 2.7's two hypotheses are Mathlib's definition of formal smoothness

**Location.** README 459–463: "for `R → S → T` with `Algebra.H1Cotangent S T` trivial and
`Ω[T⁄S]` projective over `T` … When `T` is formally smooth over `S` both hypotheses hold, and
this is Stacks, Tag 031K". The docstring at `Suggested.lean` 178–181 says "for instance if `T`
is formally smooth over `S`".

**Claim.** The prose presents 2.7 as more general than formal smoothness. At the pin the two
hypotheses are equivalent to `Algebra.FormallySmooth S T`, so 2.7 is Stacks Tag 031K itself.
The text is Lemma 138.9, `stacks-algebra` line 17350, printed p. 370 (the Stacks algebra chapter
the README cites, read from the sources cache; it has no key in the roadmap's `sources.toml` yet).
Its locator is not "own statement".

**Witness.** Mathlib `Algebra.FormallySmooth` (`RingTheory/Smooth/Basic.lean` line 70) is the
class whose only fields are `Module.Projective A Ω[A⁄R]` and `Subsingleton (H1Cotangent R A)`.
Its `mk_iff` lemma `Algebra.formallySmooth_iff` states the equivalence.

**Repair.** Do one of the following:

- state 2.7 with `[Algebra.FormallySmooth S T]` and give Stacks Tag 031K as the statement's
  locator;
- or keep the two instance hypotheses and replace the sentence with: "These two hypotheses are
  Mathlib's definition of `Algebra.FormallySmooth S T`, so this is Stacks, Tag 031K."

Update the docstring to match. The third Check (`T = k[t] ⁄ (t ²)`) still separates.

## R05 (P3) — 1.2 and 5.3 carry no locator (previous R09, partly repaired)

**Location.** README 222–225 (1.2, `Nat.choose_pow_sub_one_modEq_neg_one_pow`) and README
749–751 (5.3): "the common value is the index of the pair (Avron–Seiler–Simon 1994)".

**Claim.** Every claim needs a locator. 1.2 is the only target with neither a source nor "own
statement". 5.3 cites a paper without a theorem number for the Hilbert-space statement, and
does not mark the matrix identity as its own.

**Witness.** Every other target carries one of the two (README 203–788). The manifest key
`ass1994` (uncertified, cited by locator) records "Theorem 4.1".

**Repair.**

- 1.2: add "(own statement, from Lucas's theorem)" or a textbook locator.
- 5.3: write "(Avron–Seiler–Simon 1994, Theorem 4.1)" if that is the theorem meant, and add
  "(own statement)" after the matrix identity.

## R06 (P3) — The four-cubes remark cites a reference second-hand

**Location.** README 70–74, "the literature on sums of four cubes of polynomials concerns `ℤ[x]`
and the constant term (Mordell 1970, after Schinzel 1968)", and References 849.

**Claim.** A reference is cited from the text itself, with a locator. The Schinzel entry has no
title and is marked as copied from Mordell's bibliography. Mordell 1970 is cited for a claim
about the literature without a page.

**Witness.** README 849 reads "A. Schinzel, *J. London Math. Soc.* 43 (1968), 143–145 (as cited
by Mordell 1970)". The publisher's landing page confirms Mordell's title, "On sums of four cubes
of polynomials" (Acta Arith. 16, no. 4).

**Repair.** Do one of the following:

- give Schinzel's title, and a page or theorem of Mordell 1970 for the claim;
- or drop "after Schinzel 1968" and the Schinzel entry;
- or drop the paragraph, which bears on no target and sits in ClassicalArithmeticCompletion's
  territory.

The mathematics of the remark checks out: degree `≤ 2` integer-valued polynomials have
coefficients in `ℤ[1⁄2]`, so `P ⁄ 3 = Σ αᵢ² αᵢ′ ∈ ℤ[1⁄2]` forces `3 ∣ P`.

## Verified sound

**Gate and build.** The worker's gate at 3373787 reports `OK` on every check (`build=0`,
`depcheck=0`, `sorry-data=0`, `set_option=0`, `stray-files=0`, `outside-folder=0`).
`git diff --stat origin/main...HEAD` outside the folder is empty. The folder holds only
`README.md`, `Suggested.lean` and `metadata.toml`. `lake env lean` on `Suggested.lean` gives 37
`declaration uses sorry` warnings and nothing else.

**Dependency check** (`--movable`, candidate merge order):
`depcheck: 240 roadmaps, 2366 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line,
and no supplier roadmap is consumed.

**One-tactic probe.** A scratch copy replaced every `sorry` with
`first | rfl | simp | infer_instance | decide | (nontriviality; simp) | simp [*] | omega | aesop`.
All 37 declarations fail it: 37 errors, one per declaration. The closures in R01–R03 need a Tau
Ceti import or two lines.

**Signatures.** A scratch file with `#check @name` for all 37 declarations (importing the built
module) elaborates with no error. Each elaborated type was compared with its README statement,
and the generality matches in every case:

- 1.3 and 1.4 carry `[Fact p.Prime] [CharP R p]`.
- 2.3 is over `[Ring R] [Small.{v} R]` (left Noetherian, as the README's "a ring" allows).
- 2.4 carries `[DecidableEq κ]`, which `equivFinsuppOfBasisRight` needs (Mathlib
  `LinearAlgebra/TensorProduct/Basis.lean` line 83).
- 2.9 carries `[IsDomain R] [IsPrincipalIdealRing R] [Small.{v} R]`.
- 2.10 uses `Submodule.IsAssociatedPrime`, the radical-of-colon definition (Mathlib
  `RingTheory/Ideal/AssociatedPrime/Basic.lean` line 62), as Conventions say.
- 3.1 has no `IsScalarTower`, and needs none: `D 1 = 0` follows from `D (1 · 1) = 2 D 1`.
- 4.1 carries exactly `[LocallyCompactSpace X]`, `[R1Space X]`, and `[R1Space X]` with
  `[LocallyCompactSpace Y]`.
- 5.5 carries `[IsAlgClosed k]`, two `IsScalarTower`s and `FiniteDimensional`.

Nothing changed relative to the worker's listing. No declaration lost a binder: every binder is
in the declaration's own signature.

**Duplication probes** (scratch files `Dup.lean`, `Comm.lean`, `Flat.lean`; each elaborates with
no error, and `#print axioms` shows no `sorryAx`). They give the closures cited in R01–R03.

**Library declarations opened at the pins.** Mathlib:

- Lucas's theorem: `Choose.choose_modEq_prod_range_choose` and
  `choose_modEq_choose_mod_mul_choose_div`.
- Polynomials: `Polynomial.isCoprime_X_sub_C_of_isUnit_sub` (`Algebra/Polynomial/RingDivision.lean`
  294); `Polynomial.expand_contract` (`Algebra/Polynomial/Expand.lean` 239, the domain, `e = 1`,
  `k = 1` case of 1.3, so 1.3 is more general); the Vandermonde-type
  `det (Nat.choose (v i) j)` (`LinearAlgebra/Vandermonde.lean` 305, not the Pascal matrix).
- Groups: `Commute.commutatorElement_pow_left` (`GroupTheory/Commutator/Basic.lean` 87); no
  `choose 2` power formula anywhere in `GroupTheory`.
- Flatness: `Module.Flat.of_retract`, `equiv_iff`, `directSum_iff`, `dfinsupp_iff`
  (`RingTheory/Flat/Basic.lean` 173, 187, 208, 215); no `prod` instance over semirings;
  `Module.Flat.isSMulRegular_of_nonZeroDivisors` (`RingTheory/Flat/TorsionFree.lean` 79, the
  input of 2.10).
- Finite presentation: `Module.finitePresentation_of_finite` (`Algebra/Module/FinitePresentation.lean`
  119).
- Kähler differentials: `KaehlerDifferential.mapBaseChange` and `exact_mapBaseChange_map`
  (`RingTheory/Kaehler/Basic.lean` 745, 781); `Algebra.H1Cotangent.exact_δ_mapBaseChange`
  (`RingTheory/Kaehler/JacobiZariski.lean` 552); `Algebra.FormallySmooth`
  (`RingTheory/Smooth/Basic.lean` 70).
- Torsion and associated primes: `Submodule.annihilator_top_inter_nonZeroDivisors`
  (`Algebra/Module/Torsion/Basic.lean` 803); `Submodule.IsAssociatedPrime` (62);
  `isAssociatedPrime_iff` (75, Noetherian).
- Derivations: `Derivation.leibniz_of_mul_eq_one` and `leibniz_invOf`
  (`RingTheory/Derivation/Basic.lean` 480, 488, commutative rings); `leibniz_zpow` (511, in the
  `Field` section).
- Compact-open topology: `ContinuousMap.continuous_curry`, `continuous_uncurry` and
  `Homeomorph.curry` (`Topology/CompactOpen.lean` 450, 471, 556).
- Spectral spaces: `PrimeSpectrum.isOpen_of_stableUnderGeneralization_of_isConstructible`
  (`RingTheory/Spectrum/Prime/ConstructibleSet.lean` 167).
- Injective modules: `Module.Baer.of_divisible` (`Algebra/Category/Grp/Injective.lean` 35, over
  `ℤ`).
- Grothendieck group: `Algebra.GrothendieckGroup` (`GroupTheory/MonoidLocalization/GrothendieckGroup.lean`
  36, no surjectivity statement).
- Traces: `IsIdempotentElem.trace_eq_zero_iff` (`LinearAlgebra/Trace.lean` 341, characteristic
  zero, not 5.3).

A scratch file with `#check @` of all 94 Mathlib names in the Mathlib supplier contract
elaborates with no error.

Tau Ceti declarations:

- The findings' witnesses: `TauCeti/GroupTheory/Commutator.lean` 96;
  `Algebra/Module/Injective/Noetherian.lean` 61; `RingTheory/AdicCompletion/Nilpotent.lean` 26;
  `RingTheory/Length.lean` 265, 274; `RingTheory/Support.lean` 96 (the localised form).
- The supplier contract: `Module.Flat.pi` (`RingTheory/Flat/Pi.lean` 62, `CommSemiring`);
  `Module.Flat.prod` (`RingTheory/Flat/Extensions.lean` 101, `CommRing`);
  `Module.Baer.of_surjective_smul` and `Submodule.injective_quotient_of_divisionRing`
  (`Algebra/Module/Injective/PrincipalIdealRing.lean` 38, 58); `Derivation.leibniz_prod`
  (`RingTheory/Derivation/Basic.lean` 57);
  `IsSemisimpleModule.nonempty_linearEquiv_of_trace_eq` (`RingTheory/Semisimple/Trace/Basic.lean`
  109, `[CharZero k]`, semisimple); `TauCeti.Units.coe_inv_mem_adjoin`
  (`RingTheory/Adjoin/Unit.lean` 38, Artinian base); `Matrix.pairMinor_mul`
  (`LinearAlgebra/Matrix/Minor.lean` 127).
- Checked and different from the targets: `Nat.forall_not_dvd_choose_iff` (`Data/Nat/Choose/Digits.lean`
  146); `IsAssociatedPrime.comap` (`RingTheory/Ideal/AssociatedPrime/Basic.lean` 141);
  `formallyEtale_iff_bijective_mapBaseChange` (`RingTheory/Kaehler/FormallyEtale.lean` 135); the
  idempotent-trace lemmas of `LinearAlgebra/Trace/Idempotent.lean`.

No pinned statement was found for 1.1–1.6, 1.8, 2.2–2.4, 2.7–2.11, 3.1, 3.2, 4.1, 4.2 or
5.1–5.5. The searches went by object: Hasse derivatives with `expand`, `IsCoprime (X - C a)`,
Pascal or `choose` determinants, `IsPerfect` with `normalClosure`, `piRightHom`, `FinitePresentation`
with Noetherian, `rTensor` ranges, `mapBaseChange` retractions, `torsionBy` of `K ⧸ A`,
`zpow` derivations, `mulLeft` commutators, curry continuity, `StableUnderGeneralization`
openness, right zeros, Lagrange and Binet–Cauchy, `(P - Q) ^`, and `GrothendieckGroup`
surjectivity.

**Cross-roadmap citations resolved.**

On main (`eaf17b1`):

- ClassicalArithmeticCompletion §3.6 (README 5447, with `IntValuedPolynomials.ringChoose_X_mem`
  at 5460), §3.43 (6596) and §3.57 (7008).
- PadicMeasuresIwasawaAlgebras §6.4 (3845; `Matrix.compound_mul` at `Suggested.lean` 1036).
- DiophantineApproximationAndTranscendence §2.5 (1217; `plucker_cauchyBinet` at 1390).
- OperatorTheory/Majorization MAJ-A26 to MAJ-A31 (173–185).
- DerivedModuleAlgebra §§0.4, 0.7, 0.8 (815, 949, 1018).
- QuantumEnvelopingAlgebras §0.3 (267).
- GrothendieckEulerForms Layer 0 (178; "bicartesian characterization" at 194).

At the open heads of new roadmaps:

- AlgebraicKTheory §1.3 (244) and §4.2 (432, `hasStableRangeLE_one_of_finite_maximalSpectrum`).
- StableHomotopyKTheory §3.8 (1069: the perfect radical, perfect and normal).
- ArithmeticStatisticsPartIV §3.2 (129).
- HomotopyTheoryOfCategories 0.1–0.3 (220, 255, 281) and 8.4 (1036); its line 1552 records the
  deferral.
- PCurvature (lines 126, 255, 340 cite §3.2 with `Derivation.lie_mulLeft` and
  `Derivation.mulLeft_mul_mul_mulLeft_inv`; the README's "Layers 1.1 and 1.4" matches its "(1.1,
  1.4)").

`scratch/overlaps.md` reports that no open pull request changes this roadmap, no cited id is
dropped and no id of this roadmap is cited elsewhere. The renumbering of Layer 5 breaks no
citation. Ownership against the open pull requests was checked with `roadmaps grep` for 26
object patterns, one per target or pair. The only other owners found are Tau Ceti's (R01–R03).
SemisimpleAlgebras, the closest roadmap in vocabulary, owns Wedderburn theory, not 5.5.

**Sources** (seeded sample and every locator in the README):

- Stacks algebra chapter (`stacks-algebra`, read from the sources cache; no key in `sources.toml`):
  - Lemma 51.1, Tag 00IK, line 5659, printed p. 120: a finite module over a Noetherian ring is
    finitely presented, as 2.3 says for the forward direction.
  - Proposition 89.3, Tag 059K, line 9878, p. 210: (1) ⇒ (2) by a presentation, as 2.2 says.
  - Lemma 119.11, Tag 00PF, line 13488, p. 287: finite length of `M ⁄ xM` for `M ⊆ K ^ r`, as
    2.12's "closest source" and References describe it.
  - Lemma 138.9, Tag 031K, line 17350, p. 370: the split sequence for `B → C` formally smooth;
    see R04.
- `stacks-dualizing` line 177, Lemma 3.9, Tag 08XW, part (2): the `J`-power torsion of an
  injective module over a Noetherian ring is injective (2.5).
- EGA III₁ (Numdam, fetched as `ega3-1`), line 462, Chapter 0, Corollaire (9.2.6), printed p. 16:
  in a Noetherian space, `E` is open iff `E ∩ Y` contains a nonempty open subset of `Y` for every
  irreducible closed `Y` meeting `E`. This is exactly 4.2's route and locator. With the generic
  point of `Y` and stability under generalisation, 4.2 follows.
- `chase1960` line 139, Theorem 2.1 (PDF page 4, printed p. 460): products of flat right modules
  are flat iff finitely generated left ideals are finitely related (2.1's third Check).
- May, *A Concise Course* (author's page, fetched as `may-concise`), Ch. 8 §1, line 2410, and §2,
  line 2435, printed pp. 57–58: `F(X ∧ Y, Z) ≅ F(X, F(Y, Z))` and `F(ΣX, Y) ≅ F(X, ΩY)`, as the
  4.1 non-target paragraph says.

The sampled targets with "own statement" (1.4, 1.5, 1.6, 1.8, 2.4, 2.6, 2.9, 2.10, 2.11, 3.2)
and 5.3 were recomputed in the table below.

**Adversarial table.** One row per target, with values computed on each side.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 `p ^ e ∣ n ↔ ∀ 0<k<p^e, p ∣ n.choose k` | n=0; e=0; (p,e,n)=(2,1,6),(2,2,6),(3,2,3),(2,2,2); p=4 | n=0: `0.choose k = 0`, both sides true. e=0: `1 ∣ n` and no `k`. (2,1,6): `C(6,1)=6`. (2,2,6): `4∤6`, `C(6,2)=15` odd. (3,2,3): `9∤3`, `C(3,3)=1`. (2,2,2): `C(2,2)=1`. p=4, n=4: `4∤C(4,2)=6`. Converse via Lucas: `C(n,p^j) ≡ n_j ≢ 0` | true | none |
| 1.2 `(p^a−1).choose k ≡ (−1)^k`, `k ≤ p^a−1` | a=0; (3,1); (3,2); (2,2); k=p^a | a=0: `C(0,0)=1`. (3,2): `C(8,k)=1,8,28,56,70` ≡ `1,2,1,2,1`. (2,2): `1,3,3,1` all odd. (3,1), k=3: `C(2,3)=0 ≢ ±1`; `C(4,1)=4 ≡ 1 ≠ −1` | true | locator: R05 |
| 1.3 kernel of `hasseDeriv k`, `0<k<p^e` | ZMod 3, X³, X⁴; e=0; ℚ; zero ring | coefficient of `X^(n−k)` is `C(n,k) f_n`, a unit multiple when `p∤C(n,k)`. X³: `3X² = 3X = 0`, `X³ = expand 3 X`. X⁴: `4X³ = X³ ≠ 0`. e=0: `expand R 1 = id`. ℚ: `3X² ≠ 0`. Zero ring excluded: `CharP` at a prime forces `p = 1` there | true | none |
| 1.4 `hasseDeriv k (expand f * g) = expand f * hasseDeriv k g`, `k<p^e` | ZMod 2, f=g=X, k=1; k=2; ℚ with p=2; k=0 | Leibniz, with `hasseDeriv i (expand f) = 0` for `0<i≤k`: `hasseDeriv 1 X³ = X² = X²·1`. k=2: `1` vs `X²·0`. ℚ: `2X` vs `0`. k=0: identity | true | none |
| 1.5 `IsCoprime (X − C a) q ↔ IsUnit (q.eval a)` | ℤ, a=1, q=X+1; a=0; q=X−C b; zero ring | ⇒ evaluate Bézout at `a`; ⇐ `q = q(a) + (X − C a) h`. `q(1)=2`, `ℤ[X]⁄(X−1,X+1) ≅ ℤ⁄2`; `q(0)=1`, `(X+1)−X=1`; `eval a (X − C b) = a − b`; zero ring: both true | true | none |
| 1.6 `det ((i+j).choose i) = 1` | n=0,2,3; indices from 1 | 1; `2−1=1`; `1·3−1·3+1·1 = 1`; `[[2,3],[3,6]]` has det `3` | true | none |
| 1.7 class-two formula; odd-prime form | n=0..3; Heisenberg; 𝔖₃; Q₈; p=3 | Corners: `(uv)²` 3 = 4 − 1 and `(uv)³` 6 = 9 − 3, with `⁅v,u⁆` corner `−1`. 𝔖₃: `d` a 3-cycle, `(uv)² = d⁻¹ ≠ d`. Q₈: `d=−1`, `(ij)² = −1 ≠ 1 = i²j²`. `p ∣ p(p−1)/2` for odd `p` | true | at the pins: R01 |
| 1.8 normal closure of a perfect subgroup | ⊥; 𝔄₅×1 in (𝔄₅×𝔄₅)⋊C₂; ⟨(12)⟩ ≤ 𝔖₃; 𝔄₄ ≤ 𝔄₅ | `⁅N,N⁆` is normal and contains `⁅H,H⁆ = H`, so `N ≤ ⁅N,N⁆`. Closure 𝔄₅×𝔄₅, order 3600, perfect. `⁅𝔖₃,𝔖₃⁆ = 𝔄₃`. `⁅𝔄₄,𝔄₄⁆ = V₄` | true | none |
| 2.1 `pi_iff` (ι finite), `prod_iff` | ι=∅; ℤ×ℤ⁄2; Chase | ∅: zero module, flat. `ℤ⁄2 ⊗ (2·) = 0` is not injective; a retract of a flat module is flat (`of_retract`). Chase Thm 2.1 (b)⇔(d): `R^ℕ` not flat over a non-coherent `R` | true | `pi_iff` padding: R03 |
| 2.2 `piRightHom` bijective, `M` f.p. | M=R; ι finite; M=ℚ, `P n = ℤ⁄2ⁿ` | identity on `Π P i`; `piRight`; `Π (ℚ ⊗ ℤ⁄2ⁿ) = 0` but `(1,1,…)` has infinite order, so `ℚ ⊗ Π ≠ 0` | true (059K) | none |
| 2.3 Noetherian ↔ f.g. ⇒ f.p. in `Type v` | ℤ; `k[x₁,x₂,…]`; noncommutative `Ring` | ℤ: diagonal presentations. `R⁄(xᵢ) ≅ k` is f.g. with kernel `(xᵢ)` not f.g. `IsNoetherianRing` means left Noetherian, matching left kernels in `Module.FinitePresentation`. `Shrink (R ⧸ I)` exists by `Small.{v}` | true | none |
| 2.4 range of `f.rTensor N` in coordinates | ℤ, f=2·, N=ℤ²; f surjective; f=0; semiring | the coordinates of `f.rTensor N` are `mapRange f`. (2,4) is in, (2,3) is out. ⇐: `Σ mᵢ ⊗ 𝒞 i` from finitely many preimages; coordinates outside the support are `0 ∈ range f` | true | none |
| 2.5 `I.primaryComponent Q` injective | ℤ, ℚ⁄ℤ, (p); ℚ; I=0; ℤ⁄4 | Prüfer group, divisible; `0`; all of `Q` since `I¹ = 0`; ℤ⁄4 is its own (2)-component and `2·` is not onto | true (08XW) | at the pins: R02 |
| 2.6 `IsAdicComplete I M`, `I` nilpotent | ℤ⁄4, (2); I=0; ℤ, (p) | `I² = 0`; Hausdorff, and Cauchy sequences are eventually constant; ℤ_p is uncountable, so ℤ is not complete | true | padding: R03 |
| 2.7 retraction of `mapBaseChange` | k→k[t]→k; T=S; k[t]⁄(t²), char ≠ 2 | `k dt → 0` not injective, `H¹ = (t)⁄(t²)`; isomorphism; `t dt ↦ 0` in `T dt ⁄ (2t dt)`, `H¹ = (t²)⁄(t⁴)`. Hypotheses ⇔ `Algebra.FormallySmooth S T` | true (031K) | R04 |
| 2.8 `q • x ∈ P ↔ q ∈ ℤ` | ℤ⊆ℚ, x=1; x=2; ℤ², (1,2); x=0 | `s a + t b = 1` puts `(1⁄b) x` in `P`, so `b` is a unit. `1⁄2 ∉ ℤ`; `x = 2·1` is excluded; `(3⁄2,3) ∉ ℤ²`; x=0: `m=0` gives `IsUnit 0`, false, so the hypothesis fails | true | none |
| 2.9 injective ↔ divisible (PID); quotients | ℚ⁄ℤ; ℤ; ℚ→ℚ⁄ℤ; ℤ⁄4 over ℤ⁄4 | divisible ⇒ Baer (Tau Ceti) ⇒ injective; `2·` misses `1` in ℤ; ℤ⁄4 is self-injective but `2·` is not onto; `(2) → ℤ⁄2`, `2 ↦ 1` has no extension (`2y = 0 ≠ 1`) | true | none |
| 2.10 regularity; `P ∩ A = p` | ℤ, (2), a=3; p=(4); F=ℤ⁄2; ℤ→ℤ⁄4; ℤ→ℤ[i], (5) | `F⁄pF ≅ A⁄p ⊗ F`, regular by `isSMulRegular_of_nonZeroDivisors` over `A⁄p`. 3 acts as 1. `2·2 = 0` in ℤ⁄4. `2` kills ℤ⁄2. `√ann(1) = (2)` lies over `(2) ≠ (0)`. `(2±i)` lie over (5). With the radical definition: `a ∈ P∩A∖p` gives `aⁿ x̄ = 0`, so `x̄ = 0` and the colon is `⊤`, not prime | true | none |
| 2.11 `(K⁄A)[t] ≅ A⁄(t)`, `t ≠ 0` | ℤ⊆ℚ, t=6; t=0; t a unit; k[x,y], t=x | `a ↦ a⁄t mod A` has kernel `tA` and image `(K⁄A)[t]`: `(1⁄6)ℤ⁄ℤ ≅ ℤ⁄6`. `(K⁄A)[0] = ℚ⁄ℤ ≇ ℤ`. `0 ≅ A⁄A`. `x⁻¹A⁄A ≅ k[y]`; `Ext²(k,A) = k ≠ 0`, so `K⁄A` is not injective | true | none |
| 2.12 f.g. torsion ⇒ finite length (Noetherian, dim ≤ 1) | ℤ⁄12; ℤ; ℚ⁄ℤ; k[x,y]⁄(x); a field; zero ring | length 3 (`ℤ⁄2, ℤ⁄2, ℤ⁄3`); `ℤ` and `ℚ⁄ℤ` have infinite chains; `(yⁿ)` is an infinite chain over dimension 2; field: `M = 0`; zero ring: `M = 0` | true | padding: R03 |
| 3.1 `D (u ^ n) = n • u ^ (n−1) • D u` | n=0,−1,−2; u=x and u=2 in ℚ[x,x⁻¹]; no `IsScalarTower` | `D 1 = 0` from `D(1·1) = 2 D 1`; `D(x⁻¹) = −x⁻²`; `D(x⁻²) = −2x⁻³`; `D 2 = 0`. Mathlib `leibniz_of_mul_eq_one` holds in the same context | true | none |
| 3.2 `⁅D, mulLeft a⁆ = mulLeft (D a)`; conjugation by `u` | k[x], a=x; a ∈ k; k[x,x⁻¹], u=x | `D(a y) − a D y = y D a`: identity for `a = x`, `0` for `a ∈ k`; `x · D(x⁻¹) = −x⁻¹ = (D − x⁻¹ D x) 1` | true | none |
| 4.1 curry (X locally compact; X R1); uncurry (X R1, Y locally compact) | X=pt; ℚ×[0,1]; f(x,y)=x−y | Curry: tube lemma with compact neighbourhoods in `X`, or in `K` (a compact R1 space is regular), then a finite subcover. Uncurry: Mathlib's route with `closure {x}` in place of `{x}` (inseparable points have inseparable images). `curry f 1 0 = 1` | true | none |
| 4.2 openness criterion | Spec ℤ, {(0)}; Spec ℤ∖{(2)}; Sierpiński | EGA 0 (9.2.6) plus a generic point. {(0)}: no `W` with `W ∩ closure {x} ⊆ E`. Complement: `W = E`. {1} is open and stable; {0} is not stable | true | none |
| 5.1 right zero ↔ meeting ∧ no group quotient | trivial; a finite group; {1,a,b}; (ℤ⁄n,·) | minimal principal right ideal `K`; `uK = K` by counting; `M → Perm K` is trivial. Group: the identity map is nontrivial. `aM = {a}` and `bM = {b}` are disjoint; `f a = f a ²`. `0` is a right zero | true | none |
| 5.2 Binet–Cauchy; Lagrange over `RCLike` | a=(1,0), b=(0,1); a=b; a=(1,i), b=ia | expansion `2[(Σac)(Σbd) − (Σad)(Σbc)]` gives `2 = 2`; `0`; `0 = 2(4 − 4)`, and without `conj` the right side would be `8` | true | none |
| 5.3 `tr (P−Q)^(2k+1) = tr P − tr Q` | k=1 in general; P=[[1,0],[0,0]], Q=[[0,0],[1,1]]; (2),(0); 𝔽₂ | `(P−Q)³ = P − Q − PQP + QPQ` and `tr PQP = tr QPQ = tr PQ`, with induction through `C = (P−Q)²`. Example: trace `0 = 1 − 1`, `(P−Q)² = 1`. `8 ≠ 2`. Over 𝔽₂: `1 = 1 − 0` | true | locator: R05 |
| 5.4 common denominators in `GrothendieckGroup M` | (ℕ,·); Multiplicative ℕ; {1,e} | trivial group, `of 2 = of 3`; `1 = 3 − 2` and `−2 = 0 − 2`; `e·e = e·1` | true | none |
| 5.5 simple modules determined by traces | k[X]; A=k, `kᵖ` vs `0` in char p; `L×L` over 𝔽_p(t) | density gives `a` with traces `1` and `0`; `tr X = λ`; `p·a = 0`; `Tr_{L⁄k} = 0` | true | none |
| Conventions | rows 1.3, 1.4, 1.7, 1.6, 5.2, 2.10, 4.1 | `hasseDeriv 1 X³ = 0` over ZMod 3; `hasseDeriv 2 X² = 1`; Heisenberg corner `−1`; `[[1,1],[1,2]]`; `2 = 2`; `√(4) = (2)` in ℤ; `curry f 1 0 = 1` | consistent with the pins | none |

**Checks.** All 87 Check bullets (three for each of the 29 targets) were recomputed in the rows
above. None is false, vacuous, or a restatement of its definition.

**Examples and remarks.** The three Examples sections were recomputed:

- `X⁴ + X⁸ = expand 4 (X + X²)` over ZMod 2.
- `GL₃(𝔽₂)` has no proper nontrivial perfect subgroup, so its Example holds.
- `ℤ[√−5] ⁄ (2, 1 + √−5) ≅ 𝔽₂`.
- `k(t) ⁄ k[t]` has `t`-torsion `≅ k`.
- The cross product collects the pairs `i < j`, each counted twice.

The 4.1 non-target remark is correct: for `X` compact Hausdorff, `X × S¹ → ΣX` is proper, so
precomposition is an embedding.

**Declared gaps.** None declared and none needed: the roadmap consumes no roadmap.

**Pull request description (not a finding on the folder).** The description still describes the
previous head: "Thirty-two general targets", `intValued`, Cauchy–Binet, Pólya's basis, and
Pólya and Cahen–Chabert among the sources.

## Not verifiable

- Lucas 1878: the cached `lucas1878` is a JSTOR "Client Challenge" page (`lucas1878` line 5), not
  the paper, although the manifest records it as `certified`. Lucas's theorem was checked against
  Mathlib's `Choose.choose_modEq_prod_range_choose` instead. The entry should be set to
  `uncertified`.
- Avron–Seiler–Simon 1994 (`ass1994`): settled as `uncertified`. Its manifest `cited_for` still
  says "5.5", which is now 5.3. Pólya 1915 (`polya1915`) is no longer in the README's References.
- Lang, *Algebra*, XVII Corollary 3.8 (5.5's "closest source"): Springer, no legal open copy. It
  is the same locator that Tau Ceti's `IsSemisimpleModule.nonempty_linearEquiv_of_trace_eq` cites.
  5.5 was recomputed in its table row.
- Mordell 1970 (Acta Arith. 16): the sources service found no host in a licence class; only the
  publisher's landing page (title) was seen. Schinzel 1968: no title given, not looked up.
- The Stacks algebra chapter, EGA III₁ and May's *Concise Course* were read (see Verified sound)
  but have no key in the roadmap's `sources.toml`. This review edits no manifest, so the worker
  may add them.

## Source issues

- none
