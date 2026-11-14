# FIX-PKG-PerfectoidSpacesPartII~8

Review settled: `REV-PKG-PerfectoidSpacesPartII~7` (five findings, F01–F05). Every finding was checked
against the sources, the sibling roadmaps on main (content at 45f58db) and the pinned libraries before
any edit. Its "For the human reviewers" section lists nothing.

## F01 (P2) — applied

Verified: AdicEtaleGeometry A4.3 (*splitting-torsor-of-finite-etale-algebra*, `TauCetiRoadmap/AdicEtaleGeometry/README.md`
on main) constructs `P = ε·S^{⊗n}` with `S_n` permuting the factors, a finite étale `S_n`-torsor, and
the universal-frame isomorphism. It does not state that `S → P` is an `S_{n−1}`-torsor.

Old → new: Scope said "§4.2 adds the `S_r`-Galois closure"; §4.2(1) constructed it. Now the torsor is
imported (Scope, new supplier bullet "A4.3 …"). §4.2(1) keeps only the first frame coordinate
`ι : S → T` and the `S_{r−1}`-torsor property, proved by applying A4.3 over the base `S` to
`S″ = (1 − δ)(S ⊗_R S)`. Rigidity (2) is unchanged.

Same pattern elsewhere: the closure step of §4.3 and the general case of §4.4 now cite A4.3 with §4.2(1).
A4.3 has also been added to the Needs lines of §4.2, §4.3 and §4.4, to the Layer 4 introduction and to
Layer 4's Dependencies. New Checks in §4.2: the `r = 2` diagonal idempotent with the swap acting by
`x ↦ −x`; the transposition `(1 2)` moving `ι(2^{1/3})`; the cyclic cubic, with `T ≅ S × S` and not
the normal closure. A4.3 is on main, so this adds no upward edge.

## F02 (P2) — applied

Verified: André A Lemme 4.2.3 (ANDRE18A line 2619, p. 56) has no regularity hypothesis. Its proof uses
the limit formula. That formula's inputs (Prop 3.6.1 at line 2261, Prop 4.2.1 at line 2494,
Lemme 2.5.1(1) at line 935, Lemme 2.8.2 at line 1282) need no regular `g` either. Regularity is used
only to place `A° ⊆ A[1/g]` in (2.18)–(2.19).

Old → new: README said "(1), (3) and (4) need the Banach localisations". Now §3.6 says that (1) and (3)
need no hypothesis on `g`, (2) assumes regularity, and only (1) and (4) are unstatable at the pins.
New Lean theorem `rootSaturation_completelyIntegrallyClosed`, with no `hreg`, and a new `K × K`,
`g = (1, 0)` Check (`b = ϖ^{−1}` as a negative) plus `g = 0`.

Pattern: §3.7 relied on "the setting of §3.6", so it now states its nonzerodivisor hypothesis
explicitly. The module docstring names the new theorem and lists clause (4) as unstatable.

## F03 (P3) — applied

Old → new: §4.7 said "on the carriers of §3.6: `A = R°` for a perfectoid Tate ring `R` …". It now reads
"`A = R` …, `A° = powerBoundedSubring R`, … `A[1/g]` is
`Localization.Away ((g 0 : powerBoundedSubring R) : R)`; `rootSaturation p g hg` is the `R°`-subalgebra
`g^{-1/p^∞}A°`". The remaining `A = R°` occurrences are Bhatt's integral `A` in Layer 1 (README §1.1,
§1.2 and the Lean docstring of `bhatt_riemann_extension_ker_almostZero`), which is correct there.

## F04 (P3) — applied

Verified: `TauCeti/RingTheory/Huber/LocalizationTopology/Basic.lean` at the pin declares
`HasDenominatorPower` at line 311, inside `namespace PairOfDefinition` (opened at line 135, under
`TauCeti.Huber` at line 122). Old → new: `TauCeti.Huber.HasDenominatorPower` became
`TauCeti.Huber.PairOfDefinition.HasDenominatorPower`.

Pattern: I ran `#check` on all 85 library names in the supplier contracts in one scratch file. 81
resolved. The other four (`TauCeti.Almost.BasicSetup.IsAlmostZero`, `…isAlmostZero_iff`,
`TauCeti.Almost.Module`, `…Module.toAlmost`) are unknown only because their modules are not imported.
At the pin they are at `TauCeti/RingTheory/Almost/BasicSetup.lean` lines 252 and 261 and
`TauCeti/RingTheory/Almost/Module.lean` lines 75 and 86, as the README cites them.

## F05 (P3) — applied

Verified: ANDRE18B line 314 is formula (7) (`A := W(k)[[T]]`), line 328 is formula (8) (`A_jk`), and
line 333 (§2.3, p. 78) defines `A°_jk`.

Old → new:
- `KummerAlgebra`: "§2.2, formula (7)" became "§2.2, formula (8), p. 78".
- `kummerIntegralStage`: "§2.3, formula (8)" became "§2.3, p. 78".
- §3.7: "§3.6's last Check" became "the characteristic-`p` algebra `B = K + (Σ_m T₁^{1/p^m}P)^−` in the
  Checks of §3.6". This pointer had to be fixed anyway, because F02 added a Check to §3.6.

The other Kummer locators in README §5.4 ("formulas (7)–(8)", "formula (8)") were already correct.

## Checks run

- **Elaboration**: `lake env lean` on `packages/PerfectoidSpacesPartII/Suggested.lean` from the content
  checkout exits 0. There are ten warnings, all `declaration uses 'sorry'`, at lines 113, 162, 225,
  302, 380, 406 (new), 435, 562, 614 and 673. There are no errors and no other warnings.
- **Binder check**: one scratch copy with `#check @name` for all 36 declarations (including the
  anonymous `instCommRingKummerBase`) plus the 85 supplier names, elaborated once.
  `rootSaturation_completelyIntegrallyClosed` keeps `[CompleteSpace K]`, `[CompleteSpace R]`,
  `[T2Space R]`, `[IsPerfectoidTateRing p R]` and `hKR`, and has no `hreg`, as in README §3.6(3). The
  other 35 types are unchanged and agree with their README statements. No declaration lost a section
  binder.
- **Dependency check** (`gate --depcheck … --movable`): output `depcheck: 223 roadmaps, 1976 edges,
  0 problem(s)`. There is no UPWARD and no CYCLE line.
- **Citations** (`roadmaps resolve`): no cross-roadmap citation and no Lean name was found missing.

## Adversarial pass

| Statement | Instances tried | Values computed | Result; change |
| --- | --- | --- | --- |
| §4.2(1) stabiliser torsor | `r = 1` | `ε = 1`, `T = S = R`, `ι = id`, `S_0` trivial | holds; Check |
| §4.2(1) | `r = 2`, `S = R[x]/(x²−a)`, `2a` unit | `δ = (1 + x⊗x/a)/2`, `δ² = δ`; `(x⊗1 + 1⊗x)(1−δ) = 0`; `T ≅ S` via `ι`; swap acts by `x ↦ −x` | holds; Check |
| §4.2(1) | `ℚ(2^{1/3})`, `r = 3` | 6 frames, Galois image `S_3` simply transitive, so `T` is a field of degree 6 over ℚ and 2 over `S`; `(1 2)` sends `ε(2^{1/3}⊗1⊗1)` to `ε(1⊗2^{1/3}⊗1)` | only `S_2` acts over `S`; Check |
| §4.2(1) | cyclic cubic `S` | `ℤ/3` acts freely on 6 frames, 2 orbits, so `T ≅ S×S`; `(2 3)` swaps them | normal-closure model has rank 3, not an `S_3`-torsor; Check |
| §4.2(1) | rank 0; `R = 0` | `R ≠ 0`: `R → 0` is not faithfully flat; `R = 0`: everything is 0 | excluded / trivial; Check kept |
| §4.2(2) rigidity | `S = ∏_G R`, `S′ = S` | invariants are the diagonal `R`; `S′ ⊗ S′ = S ⊗ S′` | holds; unchanged |
| A4.3 contract | constant rank `r`, `S′ = S` | `e_k = 0` for `k < r`, so padding factors `A/(1) = 0` | padding not needed; stated |
| §4.3/§4.4 closure step | `B′ = A[1/g]^n`; `B′ = 0` | torsor `A[1/g]^{n!}`, `S_{n−1}`-invariants give `A[1/g]^n`; zero stays zero | citation only |
| §3.6(1),(3) without regularity | `A = K×K`, `g = (1,0)` | `A[1/g] = K`; image of `A°` is `K°` and so is the saturation; f.g. `K°`-module gives `|b|ⁿ ≤ max|cᵢ|`, so `|b| ≤ 1`; `b = ϖ⁻¹` has unbounded `|ϖ|^{−n}` | holds; new Check |
| §3.6(3) | `g = 0`; `g = 1` | localisation and saturation both 0; saturation is `A°`, CIC because `A` is uniform | holds |
| §3.6(3) | cross `{(f,h): f(0)=h(0)}`, char `p`, `g = X` | `Ann(g) = {(0,h): h(0)=0}`; saturation is `K°⟨X^{1/p^∞}⟩`, as for the disc | holds; no change |
| §3.6(2) vs (3), same `(A,g)` | sandwich | `b ∈ S ⇒ gb ∈ im A°`, so `im A° ⊆ S ⊆ g⁻¹·im A°`; f.g. modules over the two rings are interchangeable | (3) ⇒ (2), also for zero divisors; note below |
| `rootSaturation_completelyIntegrallyClosed` (Lean) | `n = 0` term; `R = 0` | `b⁰ = 1 ∈ M` is harmless; zero ring trivial | elaborates; no extra binder |
| §3.7 | disc, `g = T` | `g` is regular; largest algebra is `A` | hypothesis stated; unchanged |
| §4.7 carriers (F03) | `R = K`, `g = 1`, `B′ = K×K` | `A = K`, `A° = K°`, `A[1/g] = K`, trace `(x,y) ↦ x+y` onto `K°` | prose matches Lean |
| F04 name | `#check` at the pin | resolves to the predicate on `(P, T, s, Localization)` | fixed |
| F05 locators | ANDRE18B lines 314, 328, 333 | (7) is `A`, (8) is `A_jk`, §2.3 is `A°_jk` | fixed |

## Ownership

- The `S_r` frame torsor belongs to AdicEtaleGeometry A4.3 (on main) and is now imported. The
  `S_{r−1}` stabiliser torsor and Galois rigidity are not stated in A4.2–A4.3, in any other roadmap on
  main, or at any open head that `roadmaps grep` searched (for "frame torsor" and `S_{r−1}`).
- For `rootSaturation_completelyIntegrallyClosed`, `roadmaps grep -i 'completely integrally closed'`
  matches nothing on main or at any open head. The root-saturation hits are ComplexComparisonPartII
  (an unrelated additive monoid) and DirectSummandsAndBigCohenMacaulay (a consumer). This roadmap owns
  André's ramified Riemann extension theorem (Scope, Layer 3).
- No declaration of `Suggested.lean` has the fully qualified name of a declaration in a readable roadmap.

## For the maintainer

- No id that other roadmaps cite changed. The §4.2 heading and numbering are kept, and no roadmap on
  main cites PerfectoidSpacesPartII §4.x. The only new Lean name is
  `rootSaturation_completelyIntegrallyClosed`; no name was deleted or renamed.
- `riemann_extension_completeIntegralClosure` keeps the source's `hreg` (Théorème 4.2.2 assumes a
  nonzerodivisor). Its Lean conclusion, which uses the image of `R°`, also follows from the new
  theorem for zero divisors, by the sandwich `im R° ⊆ S ⊆ g⁻¹·im R°`. So `hreg` is not needed for the
  statement's truth. This is a P3 observation; I did not widen the statement.
- The tool lead `Algebra.galoisTensorMap` (README line 116) is a planned alias of AdicEtaleGeometry
  A4.2, not a pinned declaration. The README cites it as that supplier's name.
- No source text was missing, and `needs-references.toml` was not written. `sources.toml`,
  `metadata.toml` and `design/plan.json` are unchanged: no new work is cited and no new supplier gap
  is needed, because A4.3 is a section on main.
- Ownership against open pull requests was checked with `roadmaps grep` / `roadmaps show` against the
  indexed heads.
