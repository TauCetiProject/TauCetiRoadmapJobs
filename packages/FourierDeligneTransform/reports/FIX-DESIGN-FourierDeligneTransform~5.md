# FIX-DESIGN-FourierDeligneTransform~5

One review was settled: REV-DESIGN-FourierDeligneTransform~4, findings F01, F02 and F03, all P3. Its adversarial table calls them "R01", "R02" and "R03"; these are the same three findings. Each was checked against:
- the line-numbered sources;
- the cited roadmaps on main (through `roadmaps show` and `roadmaps grep` for the open heads);
- the pinned Mathlib (`1b1ccf4b…`) and Tau Ceti (`2fd255d9…`).

Files changed:
- `packages/FourierDeligneTransform/design/README.md`
- `packages/FourierDeligneTransform/design/plan.json`
- `packages/FourierDeligneTransform/sources.toml` (BRY86 locator and `cited_for`; LAU87 `cited_for` gains `1.2.1`; no new work cited)

## F01 (P3) — applied

**Change (old → new).** README Tau Ceti contract: "`additiveHilbert90` … with the sequence … identifies `F/℘(F)`" → four named inputs: `additiveHilbert90`, `DiscreteShortExact.longExact_exact₁`/`₃` in degree 0, Mathlib `ContinuousCohomology.zeroIso`, and `H1EquivOfSmulEqSelf` with `explicitH1AddEquivContinuousCohomology`. Also changed: the §5.1 route, the §5.1 *Needs:* line, a new Mathlib bullet, and the plan 5.1.2 prerequisites.

**The finding is right.**
- What `additiveHilbert90` says: the pinned `TauCeti.additiveHilbert90` (`TauCeti/FieldTheory/GaloisCohomology/AdditiveHilbert90.lean` line 214) only states `IsZero (continuousCohomology 1 (ofDiscreteModule ℤ (AbsoluteGaloisGroup K) (ForcedDiscrete (SeparableClosure K))))`.
- What else the identification needs:
  - the long exact sequence: `TauCeti.ContCohomology.DiscreteShortExact.longExact_exact₁` (line 259) and `longExact_exact₃` (line 279) in `TauCeti/RepresentationTheory/Homological/ContCohomology/HomologySequence.lean`. They need `[CompactSpace G]`, and `A`, `B`, `C` discrete and in `Type u` with `G`.
  - `H⁰` as invariants: Mathlib's `ContinuousCohomology.zeroIso` (`Mathlib/RepresentationTheory/Homological/ContCohomology/LowDegree.lean` line 87).
  - `H¹` with trivial action as continuous homomorphisms: `TauCeti.ContCohomology.H1EquivOfSmulEqSelf` (Tau Ceti `LowDegree.lean` line 1057) on the explicit `H1`. `TauCeti.ContCohomology.explicitH1AddEquivContinuousCohomology` (`CohomologyComparison.lean` line 145) carries it to Mathlib's `continuousCohomology 1`.
- Mathlib has neither the long exact sequence nor the `H¹` statement: its `ContCohomology` folder has `Basic`, `LowDegree`, `Functoriality` and `Sha` only.

**Why this supplier and not SchemeAndStackFoundations §2.11.** §2.11 on main proves the étale Artin–Schreier sequence. `H¹(Spec k, ℤ/p) = k/(x^p − x)k` appears there only as the Check `artinSchreier_test_field`, not as a target. Using it would also need the étale-to-Galois comparison for `Spec` of a field. §5.1 works with characters of `G_{L_0}`, and the pinned Galois-cohomology route gives them directly. `roadmaps grep` finds no roadmap stating the Galois form as a target: ArithmeticGaloisDuality and HyperellipticCurves at their heads, and EllipticCurves on main, mention `K/℘(K)` only in Checks or prose. Pattern search: `additiveHilbert90` and the Artin–Schreier identification occur only in the README's Tau Ceti contract (line 55), §5.1 and plan 5.1.2. All are repaired.

## F02 (P3) — applied

**Change (old → new).**
- New Tau Ceti contract bullet: the three `CharacterSum.lean` statements, where they agree with §§0.1–0.2, and why neither contains the other.
- Scope bullet: one clause on the difference.
- §0.1 and §0.2 *Needs:* lines name the agreement case.
- New §0.2 Check: a line in `𝔽_3²`.
- Plan 0.1.1 and 0.2: new prerequisite; plan 0.2: new test.

**The finding is right, and the suggested wording needed one correction.** The three statements are at `TauCeti/InformationTheory/Coding/CharacterSum.lean` lines 56, 75 and 96. Their hypotheses are a finite commutative `R`, `[IsDomain S]` and `ψ.IsPrimitive`.

The review says §§0.1–0.2 "recover these on `R = k`, `W = k^ι`". That holds only where the character is nondegenerate. Over a domain that is not a field, primitive does not imply nondegenerate. Example: `ψ(1) = ζ_3` in `ℤ[ζ_3]` is primitive, but `(1 − ζ)(1 − ζ²) = 3`, so `ζ_3 − 1` is not a unit. The Tau Ceti orthogonality holds there (`1 + ζ + ζ² = 0`), and §0.1 does not apply.

The README therefore says:
- Where they agree: `R = k`, the dot product, `Λ` a domain and `ψ` nondegenerate. Then `ψ_k = ψ ∘ Tr` is primitive, because for `a ≠ 0` some `x` has `Tr(ax) = 1` and `ψ(1) ≠ 1` in a nonzero ring.
- Neither form contains the other: Tau Ceti allows finite rings `R` and primitive characters into domains that need not be nondegenerate, while §§0.1–0.2 allow any `Λ` and an abstract `W`.

Poisson summation is identified with §0.2's subspace identity summed against a `Λ`-valued `f`. The Tau Ceti form allows any `S`-module.

## F03 (P3) — applied

**Change (old → new).** §1.1: "LAU87 (1.1.1.3)–(1.1.1.4), LAU87 lines 257–262; BRY86 Ch. IX, BRY86 line 3358" → "LAU87 Proposition (1.2.2.9), lines 472–474, and BRY86 Proposition 9.4 1), lines 3449–3450 and 3460 (base change); BRY86 Définition 9.1, line 3394; Künneth citation kept". The same pattern is repaired in §1.2 and in plan targets 1.1, 1.1.1 and 1.2.1.

**The finding is right.**
- LAU87 lines 257–262 are the trace identities `t_{Rf_!K} = f_! t_K` and `t_{f^*L} = t_L ∘ f`, which §1.4 already cites.
- LAU87 lines 472–474: (1.2.2.9), base change, proved by "Théorème de changement de base propre".
- I also cite BRY86 Proposition 9.4 1) (lines 3449–3450): the Fourier–Deligne transform commutes with base change, proved by proper base change (line 3460). That is closer to the claim than Définition 9.1 alone, so both are cited.

**The same pattern elsewhere.**
- §1.2 cited "BRY86 Ch. IX" for composition coherence, and plan 1.2.1 had the locator "BRY86 Ch. IX, line 3358". Ch. IX (lines 3358–3663) numbers its statements 9.1–9.15. All of them are about the Fourier–Deligne transform itself: definition, inversion, base change, linear functoriality, convolution, `FT_! = FT_*`, duality, weights, perversity, direct images along a change of base, and the projective bundle. None concerns composition of general kernels. Both now cite LAU87 lines 413–417 and 440–444: the proofs of (1.2.2.1) and (1.2.2.4) by proper base change and the projection formula, at lines 414–415 and 442–443. Both also state that the coherence statements are this roadmap's own.
- Plan 1.1.1 (base change and Künneth) cited only Künneth. It now also cites (1.2.2.9) and BRY86 9.4 1).
- BRY86 `cited_for` changes from `["1.1", "1.2.1"]` to `["1.1", "1.1.1"]`.

## Checks run

- **Dependency direction**, exact output after the edits:

      candidate: FourierDeligneTransform is not in the merge order yet; checked as if placed after EtaleDualityAndPerverseSheaves (the intake inserts it when its design is accepted)
      depcheck: 240 roadmaps, 2358 edges, 0 problem(s)

  No UPWARD or CYCLE line. The review recorded 2357 edges. The original README of this head, run through the same command, also gives 2358, so the difference comes from the current merge order and not from these edits.
- **`roadmaps resolve` on the README**: cross-roadmap citations found nowhere: none. Lean names found nowhere: none. The tool says it did not check Lean names outside TauCetiRoadmap on this host. I opened every Mathlib and Tau Ceti name added this round at the pins (file and line above). I also checked:
  - `TauCeti.ForcedDiscrete` (`TauCeti/Topology/Algebra/GroupAction/ForcedDiscrete.lean` line 68);
  - `TauCeti.ContCohomology.DiscreteShortExact` (`ShortExact.lean` line 165, namespace `TauCeti.ContCohomology`);
  - root `continuousCohomology` (Mathlib `ContCohomology/Basic.lean` line 131);
  - compactness of `Gal(K/k)` for Galois `K/k` (Mathlib `FieldTheory/Galois/Profinite.lean` line 329), which applies to Tau Ceti's `AbsoluteGaloisGroup := Gal(SeparableClosure K/K)`.
- **Files parse**: `plan.json` parses (46 targets, 63 tests; the only new test is `ff_subspace_code_orthogonality`), and `sources.toml` parses.
- **Elaboration**: none was run, because there is no `Suggested.lean` at the design stage. No Lean name of this roadmap's own was added.
- **Style**: grep of the README finds no LaTeX delimiters and no process vocabulary. No local path was written.

## Adversarial pass on changed or added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| `F/℘(F) ≅ H¹(G_F, 𝔽_p)` (F01 route) | `F = 𝔽_p`; `F = 𝔽_4`, `p = 2`; `F = 𝔽̄_p` | `℘ = 0` on `𝔽_p`, quotient `𝔽_p = Hom(Ẑ, 𝔽_p)`; `℘(𝔽_4) = {0, ω² + ω} = 𝔽_2`, quotient `𝔽_2 = Hom(Ẑ, 𝔽_2)`; `℘` onto, `G` trivial, both `0` | holds | none |
| Sequence `0 → 𝔽_p → Fˢ → Fˢ → 0` | `a = 0`; general `a` | kernel of `℘` is the `p` roots `𝔽_p`; `d/dx(x^p − x − a) = −1`, so separable, roots in `Fˢ`, `℘` onto; equivariant | exact | none |
| Degree-zero exactness | `longExact_exact₁` and `₃` at `n = 0` | `im δ⁰ = ker(H¹(𝔽_p) → H¹(Fˢ)) = H¹(𝔽_p)` since `H¹(Fˢ) = 0`; `ker δ⁰ = im(℘ : F → F) = ℘(F)` using `(Fˢ)^{G_F} = F` | iso `F/℘(F) → H¹` | none |
| LES hypotheses | `G = G_F` | compact (Galois group of `Fˢ/F`); `Fˢ` discrete via `ForcedDiscrete`; `𝔽_p` must be lifted to the universe of `G` (the variable block puts `A, B, C : Type u`) | met, the lift is stated | README states the lift |
| `ψ_k` primitive for nondegenerate `ψ` | `k = 𝔽_4`, `p = 2`, `Λ = ℤ/3`, `ψ(1) = 2`; `Λ = 0` | `a = ω`, `x = 1`: `Tr(ω) = ω + ω² = 1`, `ψ(1) = 2 ≠ 1`; in the zero ring every character is trivial | holds for `Λ ≠ 0`; a domain is nonzero | none |
| Primitive but not nondegenerate | `ℤ[ζ_3]`, `ψ(1) = ζ_3` | `(1 − ζ)(1 − ζ²) = 3`, not a unit; `1 + ζ + ζ² = 0` | Tau Ceti applies, §0.1 does not; "neither contains the other" | stated in the contract |
| §0.2 subspace identity against the code sum (new Check) | `W = 𝔽_3²`, `ℤ/7`, `ψ(1) = 2`, `U = ⟨(1, 1)⟩` | `(0,0), (1,2), (2,1)`: `3`; `(1,1)`: `1 + 4 + 2 = 7 ≡ 0`; `(1,0)`: `1 + 2 + 4 ≡ 0`; `U^⊥ = {w'_1 + w'_2 = 0}`; `(1,1)·(1,1) = 2 ≠ 0` | matches `|C| 1_{C^⊥}`; the wrong model `|U| 1_U` gives `3` at `(1,1)` | Check added |
| Full space against §0.2's constant function | `W = 𝔽_3`, `ℤ/7`, `ψ(1) = 2` | `𝔉(1)(0) = 3`; `𝔉(1)(1) = 1 + 2 + 4 ≡ 0` | `|W| 1_0`, as `AddChar.sum_apply_dotProduct` | none |
| Poisson summation as the subspace identity summed against `f` | `C = 0`; `C = W` | `Σ_{c ∈ 0} 𝔉f(c) = Σ_y f(y) = |C| Σ_{C^⊥ = W} f`; `Σ_c 𝔉f(c) = Σ_y f(y) Σ_c ψ(c·y) = |W| f(0)` | holds at both ends | none |
| §1.1 base-change locator | LAU87 lines 472–474; BRY86 lines 3449–3450, 3460 | (1.2.2.9): formation of FT commutes with base change, proof "changement de base propre"; Prop. 9.4 1): same, proof proper base change | supports the base-change claim | locator replaced |
| §1.1 Künneth locator | LAU87 lines 459–461 | Künneth `[SGA4] XVII (5.4.3)` used in the proof of (1.2.2.7) | supports Künneth | kept |
| §1.2 and plan 1.2.1 locator | LAU87 lines 413–417, 440–444; BRY86 Ch. IX statements | 414–415 and 442–443: proper base change and the projection formula; Ch. IX has no composition or coherence of kernels | old BRY86 citation unsupported; LAU87 supports the route only | BRY86 dropped, coherence marked as this roadmap's own |

The edits change no object, so no Check or worked example has to be recomputed. The §5.1 statement, its Checks and plan 5.1.2's tests are untouched, and only the named inputs of the route grew.

## For the maintainer

- No name that other roadmaps cite changed. No section, layer or target id moved.
- **Overlaps.** No open pull request changes this roadmap. The AlgebraicVectorBundles §L1A and §L2B citations (dropped at the head of that roadmap's open revision) are unchanged from the previous round. They cite main's labels with the head's layer numbers in parentheses. Under "only an open revision defines", the worker still names AlgebraicVectorBundles Layers 4 and 7 in the merge-order paragraph.
- **Ownership against open pull requests.** This round adds no owned object, only citations of pinned declarations. `roadmaps grep` over main and the open heads finds no target-level owner of the Galois-cohomology Artin–Schreier identification. The manifest gained no key and `needs-references.toml` was not written: every text used is in the sources cache.
- No suspicious instructions were found in the review text.
