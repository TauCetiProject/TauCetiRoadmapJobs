# FIX-PKG-PerfectoidSpacesPartII~6: repair of the round-5 package review

The review `REV-PKG-PerfectoidSpacesPartII~5` raised two P2 findings, both of the same kind: a
headline that the module docstring of `packages/PerfectoidSpacesPartII/Suggested.lean` called not
statable is statable on native carriers. Both were checked against the pinned libraries and the
sources and both are right. Each headline is now stated, and every absence claim that repeated the
false reason was corrected.

Files changed: `packages/PerfectoidSpacesPartII/Suggested.lean` and
`packages/PerfectoidSpacesPartII/README.md`. `metadata.toml`, `sources.toml` and `design/plan.json`
did not change: no new source and no new supplier gap was needed.

## REV-PKG-PerfectoidSpacesPartII~5/F01 (P2) — applied

**Verification.** Pinned Tau Ceti defines the plus presheaf
`TauCeti.ValuationSpectrum.presentationLimitPlusPresheaf`. It is a functor on all opens of
`Spa(A, A⁺)` with real restriction maps (`TauCeti/AlgebraicGeometry/AdicSpace/Spa/StructurePresheaf/Plus/Basic.lean`,
line 116). Line 225 identifies its value on a rational open with `completedPlusSubring`, and
line 151 gives its inclusion into `𝒪_X`. Mathlib has `CommRingCat.hasLimits`
(`Mathlib/Algebra/Category/Ring/Limits.lean`, line 489). So the sentences "no functor on the
rational subsets and no limit over them" (old Suggested.lean module docstring; README supplier
contracts) and "the functor and the limit over `n` are this layer's" (README §1.1) were false at
the pins. Bhatt's Remark 1.7 is BHATT18 line 119.

**Change (old → new).** Old: §1.5 was listed as not statable for lack of a tower and a limit. New:
`bhatt_riemann_extension_limit` states the almost isomorphism `R° → lim_n 𝒪⁺(X⟨tⁿ/g⟩)` for
`(tg)^{1/p^∞}`, as an exact kernel clause and a cokernel clause. It is stated on `annularOpen`,
`annularTower` (the plus presheaf along the opens) and `coeffToSections` (`toPresentationLimit` read
in rings).

**Also repaired (the same pattern).**
- README "Exact supplier contracts", From Tau Ceti: the false sentence is replaced. A new bullet
  cites `spaBasicOpen`, `presentationLimitPresheafInCommRingCat`, `toPresentationLimit`,
  `isIso_toPresentationLimit_top`, `presentationLimitPlusPresheaf`,
  `presentationLimitPlusPresheafι` and `map_completedPlusSubring_eq_presentationLimitPlusSubring`,
  with their files and lines and the hypotheses they assume.
- README "From Mathlib": cites `CommRingCat.hasLimits`, `Monotone.functor` and `CategoryTheory.Tor`.
  It also records that the pinned library has no derived tensor product of complexes.
- README Scope and ownership: lists the native plus presheaf among the library inputs, and says
  that Layer 1's tower is that presheaf on the annuli.
- README §1.1: the tower is the plus presheaf along `n ↦ X⟨tⁿ/g⟩`. Each term is identified with
  `completedPlusSubring` of `({tⁿ, g}, g)`, because the numerator ideal contains the unit `tⁿ`.
- README §1.5: adds the Lean paragraph, the exactness argument for the kernel and two new Checks
  (`g = 0`; `g = (T, 0)` on a product). *Needs:* and Layer 1 *Dependencies* now list the presheaf,
  `toPresentationLimit`, `limit`, `CommRingCat.hasLimits` and `Monotone.functor`.
- §1.2(3), as the reviewer asked: on the native tower this is the conjunction of the cokernel
  clause `bhatt_quantitative_riemann_extension` with a kernel clause. The kernel clause is (1) for
  almost regular `g` and `bhatt_kernel_without_regularity` otherwise, with the offsets raised to
  their maximum. Restating it would only conjoin two stated theorems, so README §1.2 and the
  docstring say so and it is not restated.
- §1.3 is still not statable, and the docstring now gives the real reason. It quantifies over all
  complexes `K ∈ D(A/tᵐ)` and needs `K ⊗^L A⟨tⁿ/g⟩/tᵐ`. The pinned Mathlib has `DerivedCategory`
  and `CategoryTheory.Tor` (`Mathlib/CategoryTheory/Monoidal/Tor.lean`, line 44), but no monoidal
  or derived tensor structure on any derived category: a search of
  `Mathlib/Algebra/Homology/DerivedCategory/` for `Monoidal` returns nothing. Tau Ceti has
  only graded-module Koszul tensors. A module-only (`Tor`) version would be a narrower stand-in,
  so none is stated.
- Checked and left unchanged: the §3.6(1) and §3.11 absence claims. They concern the uniform
  Banach localisations `A{λ/g}` of §2.4 (quotient norms on an arbitrary uniform Banach algebra)
  and uniform limits, which the pins still lack. The ring-valued plus presheaf supplies neither the
  unit balls `A{ϖʲ/g}°` as a tower nor the uniform limit.

## REV-PKG-PerfectoidSpacesPartII~5/F02 (P2) — applied

**Verification.** André B §3.2 and Théorème 3.2.1 (ANDRE18B lines 600–607) say: `B°` is the
integral closure of `Â°_∞∞` in `B ⊗_A Â_∞∞[1/g]`, and `Â°_∞∞/pᵐ → B°/pᵐ` is almost faithfully flat
in `(K°_∞[T^{1/p^∞}], T^{1/p^∞}K°°_∞[T^{1/p^∞}])`. The hypotheses are in ANDRE18B lines 589–593.
Each carrier is native: `AdicCompletion I R` is a commutative ring and an `S`-algebra
(`Mathlib/RingTheory/AdicCompletion/Algebra.lean`, lines 97 and 103). `Localization.Away`,
`integralClosure` and `Algebra.TensorProduct.leftAlgebra`
(`Mathlib/RingTheory/TensorProduct/Basic.lean`, line 231) supply the rest. The docstring's
statement that "the pins lack" the needed algebra was false.

**Change (old → new).** Old: §5.12 was listed as not statable. New:
`kummer_ramified_almost_faithfullyFlat` states the theorem. Its hypotheses are perfect `k`; `A → B`
finite and injective; `B` reduced (`IsReduced`) and `p`-torsion-free (`IsSMulRegular B p`);
`g ∉ (p)`; and `A[1/(pg)] ⊗_A B` étale. The conclusion is `IsAlmostFaithfullyFlat` for the image of
`kummerRamifiedIdeal` on `(Â°_∞∞/pᵐ) ⊗ B°`. The new carriers are `kummerRoot`, `KummerCompletion`
and `KummerCompletionAway`.

**Details.** The reviewer's carrier `C = AdicCompletion (p) D` with `D = kummerIntegralStage ⊤ ⊤`
is kept. It is a different completion from the module completion over `A°_∞0` used by
`kummer_almost_faithfullyFlat`, which is unchanged. Three choices differ from the reviewer's
wording, and each gives the same mathematics:
- The tensor product is written `Â_∞∞[1/g] ⊗_A B`, so that `Â°_∞∞` acts through the native left
  factor. The reviewer's version needed a hand-built `RingHom.toAlgebra` instance.
- `B°/pᵐ` is written as the base change `(Â°_∞∞/pᵐ) ⊗_{Â°_∞∞} B°`, which is canonically `B°/pᵐB°`.
  This avoids a hand-built quotient algebra structure.
- The integrality of `g^{1/p^l}` is proved inside the definition `kummerRoot` from the monic
  `X^{p^l} − g`, so no API lemma is added.

The README also changes:
- §5.4 gains a `kummerRoot` bullet.
- §5.12 gains a Lean paragraph that explains each carrier and the idempotence of the ramified
  ideal. *Needs:* and Layer 5 *Dependencies* gain the Mathlib names used.
- §5.12 gains two Checks: `m = 0, 1`, and `B = 0` excluded by injectivity, with a computed witness.
- The corollary for the model `S` (Corollaire 3.2.2) follows through §5.2 and §5.11. The README and
  the docstring say so, and it is not restated.

## Checks run

- **Elaboration.** From the content checkout, `lake env lean` on
  `packages/PerfectoidSpacesPartII/Suggested.lean`: exit 0. There are eight warnings, all
  `declaration uses 'sorry'`, at lines 104, 152, 215, 291, 329, 447, 499 and 558: the six earlier
  admissions plus `bhatt_riemann_extension_limit` (291) and `kummer_ramified_almost_faithfullyFlat`
  (558). No module needed building: the `.olean` files of the three newly imported Tau Ceti modules
  (`…StructurePresheaf.GlobalSections`, `…StructurePresheaf.Stalk.Basic`, `…StructurePresheaf.Plus.Basic`)
  were already present.
- **Elaborated signatures.** A scratch copy of the file with `#check @name` appended for all 19
  definitions and theorems that are new or tied to these findings, elaborated once:
  - `bhatt_riemann_extension_limit` keeps the perfectoid-field criterion, every binder on `R`
    (complete, T2, Tate, perfectoid), the continuous `K`-algebra structure, both root systems with
    `0 < ‖t 0‖ < 1` and `g k ∈ R°`, the pair of definition and `hmono`.
  - `kummer_ramified_almost_faithfullyFlat` keeps `CharP k p`, `PerfectRing k p`, `g ∉ (p)`,
    `Module.Finite`, injectivity, `IsReduced`, `IsSMulRegular` and `Algebra.Etale`.
  - `coeffToSections` keeps completeness, `T0Space` and a general `Rplus`.
  - `annularOpen` and `annularTower` keep `NonarchimedeanRing`, which is the instance
    `powerBoundedSubring` needs.

  No binder was lost, and the old declarations' types are unchanged.
- **Padding probe.** A scratch copy replaced the two new `sorry` bodies by
  `first | simp | rfl | infer_instance | trivial | aesop`. Both fail: unsolved goals at the limit
  theorem, and "aesop made no progress" at the Kummer theorem.
- **Library names.** I ran `#check` on every newly cited pinned declaration
  (`TauCeti.ValuationSpectrum.{spaBasicOpen, presentationLimitPresheafInCommRingCat,
  toPresentationLimit, isIso_toPresentationLimit_top, presentationLimitPlusPresheaf,
  presentationLimitPlusPresheafι, map_completedPlusSubring_eq_presentationLimitPlusSubring}`,
  `TauCeti.Huber.PairOfDefinition.le_powerBoundedSubring`, `CommRingCat.hasLimits`,
  `Monotone.functor`, `Algebra.TensorProduct.leftAlgebra`, `CategoryTheory.Tor`, `IsReduced`,
  `IsSMulRegular`, `CategoryTheory.Limits.limit`). All resolve.
- **Citations.** `roadmaps resolve` on the README reports "Cross-roadmap citations found nowhere:
  None" and "Lean names found nowhere: None". Its earlier lead `Algebra.galoisTensorMap` is
  AdicEtaleGeometry A4.2's planned alias, as before. On this host the tool did not check names
  outside TauCetiRoadmap, which is why I ran the `#check` above.
- **Dependency direction.** Output:

  ```text
  depcheck: 206 roadmaps, 1899 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line. No new roadmap supplier was added.

## Adversarial pass on the statements added or changed

`q = |t|`, `k_K` the residue field.

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| `bhatt_riemann_extension_limit`, kernel | `g = 1`; `g = 0`; `R = K⟨T^{1/p^∞}⟩ × K`, `g = (T, 0)` | `g = 1`: every annulus is `X`, the map `R → 𝒪(X)` is an isomorphism (`isIso_toPresentationLimit_top`), kernel `0`. `g = 0`: annuli empty, `𝒪(∅)` subsingleton (Tau Ceti `subsingleton_presentationLimit_bot`), kernel `R°`, killed by `(t·0)^{1/p^k} = 0`. Product: kernel `(0) × K°`; `(t_kT_k, 0)(0, 1) = 0` but `t_k(0, 1) = (0, t_k) ≠ 0`. | Setup `(tg)^{1/p^∞}` is necessary and stated. Exactness: `⋂_m tᵐR° = 0` (R° bounded, R Hausdorff, `tᵐ → 0`); argument added to §1.5. |
| same, cokernel | `g = 1`; disc `g = T`; `g = 0` | `g = 1`: limit `R°`, `a = t_k·x`. Disc: limit is `R°` (root saturation of `K°⟨T^{1/p^∞}⟩` is itself), `a = t_kT_k·x`; `1/T` has norm `q^{-n}` on the `n`-th annulus (`2, 4` at `q = 1/2`), unbounded, so it is not in the limit. `g = 0`: limit zero, `a = 0`. | Same `a` for all `n`; holds in all three. |
| `hmono` | `q = 1/2`, `n = 1, 2` | `|t| ≤ 1` on `Spa(R, R°)` since `t ∈ R°`; `{|g| ≥ 1/2} ⊆ {|g| ≥ 1/4}`. | Always true; weakens nothing; stated as such. |
| `annularTower` direction | `n ≤ n + 1` | `op(n ⟶ n+1)` maps to restriction `𝒪⁺(U_{n+1}) → 𝒪⁺(U_n)`, larger annulus (inner radius `q^{n+1}`) to smaller (`qⁿ`). | Matches §1.1's `ρ_{n′,n}`. |
| `coeffToSections` | `V = ⊤`, `V = ⊥`; zero-map model | `V = ⊤`: isomorphism `R ≅ 𝒪(X)`. `V = ⊥`: target zero ring. The zero map would make the kernel clause assert `(tg)^{1/p^k}a = 0` for all `a`, false at `g = 1`, `a = 1`. | Native body excludes the zero model. |
| §1.2(3) disposition | `p = 2, m = 1, k = 1` | Cokernel offset `pᵏm = 2`; kernel offset `c` from §1.4; combined offset `max(c, 2)`; regular case kernel offset `0`. | Conjunction of stated clauses; not restated. |
| §1.3 disposition | complex `K` vs module | `K = A/tᵐ[0]` gives `Tor`; `K` the Koszul complex on a length-2 sequence has `H^{-2}, H^{-1}, H^0` and needs `⊗^L` of a complex. | Not statable at the pin; docstring corrected. |
| `kummerRoot` | `l = 0, 1` | `l = 0`: relation `X^{p^0} − g`, so `g^{1/p^0} = g`; `l = 1`: `(g^{1/p})^p = g`. Monic degree `p^l ≥ 1`. | Integral, in `A°_∞∞`. |
| `KummerCompletionAway` | inverting `pg` vs `g` alone | Inverting `g` alone keeps `p` a nonunit: for `B = A[x]/(x² − p)` (`p` odd, `g = 1`) the discriminant `4p` is not a unit, so `L ⊗ B` would not be étale over `L`. Inverting `pg` gives `Â_∞∞[1/g]` with `p` a unit. | Correct localisation. |
| `kummerRamifiedIdeal` | `g = 1`; idempotence; `n = 0` | `g = 1`: generators `ζ_j − 1`, the valuation ideal. `v(ζ_{p^{j+1}} − 1)·p = v(ζ_{p^j} − 1)` (`1/(p^j(p−1))·p`), and `g^{1/p^l} = (g^{1/p^{l+1}})^p`, so the ideal equals its square. `ζ_{p²} − 1` has valuation `1/2` (`p = 2`), `1/6` (`p = 3`), not in `pÂ°_∞∞`. | Real body; agrees with the setup's ideal. |
| `kummer_ramified_almost_faithfullyFlat` | `m = 0`; `m = 1`; `B = A`; `B = A × A`; `B = 0`; `g = 0`; `n = 0` | `m = 0`: `(p⁰) = (1)`, both rings zero, holds. `m = 1`: `W(k)/p = k`, 2 or 3 elements for `𝔽₂, 𝔽₃`. `B = A`: `B°` is the integral closure of `Â°_∞∞` in `Â°_∞∞[1/(pg)]`, almost `Â°_∞∞` (§3.6). `B = A × A`: diagonal into a square, tensor kernels `0`. `B = 0`: excluded by injectivity; faithfulness would force `ζ_{p²} − 1 ∈ pÂ°_∞∞`, refuted by evaluation `g^{1/p^l} ↦ 1` at `g = 1`. `g = 0`: excluded by `g ∉ (p)`; there `L = Â°_∞∞[1/0] = 0` and `B° = 0`. `n = 0`: `g ∉ pW(k)` is a unit and the setup is the valuation setup (ordinary almost purity). | All hypotheses are used; two new README Checks. |

## Ownership, overlaps and other notes for the maintainer

- **Ownership.** I searched the open roadmap pull requests and main with `roadmaps grep` for
  Bhatt's Remark 1.7, the Hebbarkeitssatz and André B Théorème 3.2.1.
  - DirectSummandsAndBigCohenMacaulay (open) consumes §5.12 (its §2.2 cites this roadmap's
    ramified Kummer almost flatness by design-stage labels) and does not state it.
  - PerfectoidShimuraVarieties (open) owns the characteristic-`p` Hebbarkeitssatz for arbitrary
    ideals, already recorded in Scope as a different object.
  - No other roadmap states the limit form or Théorème 3.2.1, so this roadmap remains their single
    owner. The annular tower is a specialisation of a native Tau Ceti presheaf, not a new carrier.
    No new declaration shares a fully qualified name with a readable roadmap.
- **New names in Suggested.lean**, all in `TauCetiRoadmap.PerfectoidSpacesPartII`, all named in
  the README: `coeffToSections`, `annularOpen`, `annularTower`, `bhatt_riemann_extension_limit`,
  `kummerRoot`, `KummerCompletion`, `KummerCompletionAway`, `kummerRamifiedIdeal`,
  `kummer_ramified_almost_faithfullyFlat`. No existing name changed or was deleted, and no README
  section id changed, so other roadmaps' citations are unaffected.
- **Imports.** Three individual Tau Ceti modules were added after `public import Mathlib`:
  `TauCeti.AlgebraicGeometry.AdicSpace.Spa.StructurePresheaf.{GlobalSections, Stalk.Basic, Plus.Basic}`.
- **Sealed presheaf body.** `presentationLimitPlusPresheaf` is not exposed to other modules, so a
  component of the limit is read through the native inclusion `presentationLimitPlusPresheafι`
  rather than by projecting to the subring. This is why the statement composes `limit.π` with
  `(presentationLimitPlusPresheafι …).app`.
- **Sources.** No new source was cited and `needs-references.toml` was not written.
- **Suspicious text.** None was found in the review.
