# FIX-PKG-LefschetzPencilsAndVanishingCyclesPartII~2

Repair round for the review REV-PKG-LefschetzPencilsAndVanishingCyclesPartII (four findings, all
P3). All four were verified at the pinned Mathlib and in the cached Stacks text and all four are
right; all four are applied in `packages/LefschetzPencilsAndVanishingCyclesPartII/README.md`.
`Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## REV-PKG-LefschetzPencilsAndVanishingCyclesPartII/F01 (P3) — applied

Verified: `Mathlib/AlgebraicGeometry/Properties.lean` line 239–243, `class IsIntegral` has the field
`nonempty : Nonempty X`; `Mathlib/AlgebraicGeometry/Geometrically/Integral.lean` line 40 defines
`GeometricallyIntegral f` as `geometrically IsIntegral f`, so every fibre product with a field point
is nonempty.

Old → new: the "From Mathlib" bullet on `GeometricallyIntegral` said it does not include finite type
or nonemptiness; it now says it does not include finite type, does include nonemptiness of every
fibre product via the `nonempty` field of `IsIntegral`, and that the nonemptiness the targets state
separately is that of the good open `g⁻¹(U)`, a different claim. `Mathlib/AlgebraicGeometry/Properties.lean`
added to the References list.

Pattern: grep over the README for "nonempt": every other occurrence is about `g⁻¹(U)`, `D(φ(h))`,
`q(C)` or the Stacks 0CDW smooth locus, none claims `GeometricallyIntegral` lacks nonemptiness.

## REV-PKG-LefschetzPencilsAndVanishingCyclesPartII/F02 (P3) — applied

Verified: `Stacks-Varieties` line 2147–2148 is Lemma 33.25.10 (0CDW), a variety with a rational point
at which it is smooth is geometrically integral; the README cited the tag only in References and the
manifest.

Old → new: the §2.2 API bullet "`s_C` is geometrically integral, by `rational_point_component` …"
now ends with "(Stacks, Lemma 33.25.10 (0CDW), for the variety `C` smooth at `c`)"; the Scope bullet
"Connected smooth schemes with a rational point are geometrically integral" lists 0CDW with 04KV and
056T. The manifest entry is unchanged and now cited in the body.

## REV-PKG-LefschetzPencilsAndVanishingCyclesPartII/F03 (P3) — applied

Verified: Convention 2 names the source variables `X_0, …, X_{m-1}` and the target variable `T`, so
`h` must be written in `X_0`. Recomputed: `φ = polynomialGraph k 1 B` sends `X_0 ↦ T^(B^0) = T`
for every `B`, so `φ(X_0^q − X_0) = T^q − T`; `D(T^q − T)(𝔽_q) = ∅` since `a^q = a` for all `a ∈ 𝔽_q`.

Old → new: the §1.3 Check "`h = T^q − T ∈ k[X_0]` (`m = 1`, so `φ` is the identity): `D(h) ⊆ 𝔸¹` …"
is now "`h = X_0^q − X_0 ∈ k[X_0]` (`m = 1`, so `φ(h) = T^q − T` for every `B`, as `X_0 ↦ T^(B^0) = T`):
`D(φ(h)) ⊆ 𝔸¹` is nonempty and dense, yet contains no `𝔽_q`-point, since `a^q = a` …".

Pattern: grep for `T^q` finds no other occurrence; the §2.4 Check and Worked example 2 on
`𝔸¹_{𝔽_q}` use `U = D(T^q − T)` on `𝔸¹_k = Spec k[T]`, where `T` is the right variable.

## REV-PKG-LefschetzPencilsAndVanishingCyclesPartII/F04 (P3) — applied

Verified at the pin: `Mathlib/AlgebraicGeometry/Morphisms/Etale.lean` line 52, instance
`HasRingHomProperty @Etale RingHom.Etale` (elaborated name
`AlgebraicGeometry.Etale.instHasRingHomPropertyEtale`, found by `#synth`);
`Mathlib/RingTheory/Etale/Basic.lean` line 241, `Algebra.Etale.baseChange : [Etale R A] → Etale B (B ⊗[R] A)`;
`Mathlib/RingTheory/EssentialFiniteness.lean` line 95, `Algebra.EssFiniteType.of_finiteType`, which
bridges the finite presentation inside `Etale` to the `[EssFiniteType K A]` hypothesis of
`Algebra.FormallyEtale.iff_exists_algEquiv_prod` (`Mathlib/RingTheory/Etale/Field.lean` line 194).
All three `#check` in the scratch probe.

Old → new: the §2.1 proof sketch now names the two steps (étale morphism gives étale ring map;
base change `k(X) ⊗_{k[X]} A` is étale, hence of finite presentation, hence essentially of finite
type); its `*Needs:*` line, the "From Mathlib" contract, the Layer 2 Dependencies line and the
References list name the `HasRingHomProperty` instance, `Algebra.Etale.baseChange` and
`Algebra.EssFiniteType.of_finiteType` with their files. The third name is added beyond the
finding because the route needs it to apply `iff_exists_algEquiv_prod`.

## Adversarial pass on the changed text

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `GeometricallyIntegral sC` implies `C` nonempty (F01 wording) | `K = k`, `Spec k → Spec k` the identity | `C ×_{Spec k} Spec k ≅ C`, `IsIntegral` gives `Nonempty C` | holds; the separate clause `(g⁻¹ᵁ U).Nonempty` is about the open, not `C` | wording as applied |
| same, `GeometricallyIntegral` does not include finite type | `Spec k(x) → Spec k` | every base change `Spec (k(x) ⊗_k K)` is integral (`k(x)` is regular over `k`), `k(x)` not of finite type over `k` | finite type is indeed separate | none |
| 0CDW applied to `C` at `c` (F02) | `C` from the `𝔽_3` example of §2.2, `c = (0, 1)` on the branch `z = T + 1` | `C ≅ D(T + 1) ⊆ 𝔸¹`, smooth at `c`, rational point, so geometrically integral; the other branch `z = −(T + 1)` is excluded by the mark | holds | none |
| | `W` itself (both branches) | `W` is a variety with a rational point at which it is smooth, so 0CDW would make `W` geometrically integral, but `W` is disconnected | `W` is not a variety (not integral), hypothesis of 0CDW fails | none |
| §1.3 Check (F03) | `q = 2`, `B = 2`, `h = X_0² − X_0` | `φ(h) = T² − T = T(T − 1)`; `𝔽_2`-points `0, 1` both roots; `D(φ(h))(𝔽_2) = ∅`, `D(φ(h))(𝔽_4) = 𝔽_4 ∖ 𝔽_2` nonempty | holds | none |
| | `q = 3`, `B = 5`, `h = X_0³ − X_0` | `X_0 ↦ T^(5^0) = T`, `φ(h) = T³ − T`; roots `0, 1, 2 = 𝔽_3` | holds for `B ≠ 2` too, as the Check now says | none |
| §2.1 base-change step (F04) | identity chart `A = k[X]` | `k(X) ⊗_{k[X]} k[X] = k(X)`, étale over `k(X)`, one factor, every element algebraic (trivially) | holds | none |
| | `V = Spec k[x, z, z⁻¹]`, `π = (x, z² − 1 − 2x)` over `𝔽_3` | `k(X) ⊗ A = k(X_0, X_1)[z, z⁻¹]/(z² − (X_1 + 1 + 2X_0))`, a degree-2 separable extension of `k(X)` (discriminant `4(X_1 + 1 + 2X_0) ≠ 0`); `z` algebraic over `k[X]` | holds | none |
| | projection `𝔸² → 𝔸¹` (smooth, not étale) | `k(X_0) ⊗ k[x_0, x_1] = k(X_0)[x_1]`, not a product of fields; `baseChange` not applicable since `Etale` fails | negative control holds | none |

## Checks

- `lake env lean` on `packages/LefschetzPencilsAndVanishingCyclesPartII/Suggested.lean` from the
  content checkout: four warnings `declaration uses 'sorry'` (lines 48, 59, 74, 98), no errors. The
  file is unchanged this round.
- `#check @name` for all five declarations in a scratch copy of the file (inside the namespace):
  the elaborated types are identical, token for token, to the worker's signature file; no section
  binder is lost (the file has no section `variable`s). The scratch probe also `#check`ed
  `Algebra.Etale.baseChange`, `Algebra.EssFiniteType.of_finiteType`,
  `Algebra.FormallyEtale.iff_exists_algEquiv_prod` and `#synth`ed the `HasRingHomProperty` instance.
- Dependency check:

  ```
  depcheck: 242 roadmaps, 2474 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: "Lean names found nowhere: None."
- Gate failures listed in the brief: none.
- `design/plan.json` `gaps`: still empty; no supplier gap was needed.

## For the maintainer

- No Lean name changed; no name other roadmaps cite changed.
- The reviewer's "Source issues" note (Kisin–Zhou's citation of Poonen Cor. 3.4 at Cor. 5.2.7 and
  Prop. 5.3.5 is for projective `Y`) was already the README's Scope statement and Downstream
  consumers paragraph; no edit was needed for it.
- Ownership against open pull requests was not re-checked this round: no new object was introduced.
