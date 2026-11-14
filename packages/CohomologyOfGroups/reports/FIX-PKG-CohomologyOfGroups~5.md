# FIX-PKG-CohomologyOfGroups~5

Repair of the three findings of `REV-PKG-CohomologyOfGroups~4`. The review's "For the human
reviewers" section lists no finding and changed nothing.

## F01 (P2) — applied differently

`Suggested.lean` Layer 8 gains `tate_duality_of_free` (pairing `Ĥ^{−i}(G, M) × Ĥⁱ(G, Hom(M, ℤ)) → Ĥ⁰(G, ℤ)`, `[Module.Free ℤ M]`) and `tfae_primary_periodic_cohomology` (a_p–d_p, every prime, no `p ∣ |G|`). The module docstring now lists both. README §§8.1 and 8.5 name them, give the exact forms and the p-primary route, and add five Checks. (b_p) uses `AddCommGroup.primaryComponent`, not the suggested `Ideal.primaryComponent`.

Why the carrier differs: Mathlib's `AddCommGroup.primaryComponent` (`GroupTheory/Torsion.lean`, membership `AddCommGroup.mem_primaryComponent`) is by definition the set `{x | ∃ k, p ^ k • x = 0}` that (a_p) and the stable-element theorems already use. It needs no `ℤ`-module structure, and Tau Ceti's `TauCeti.TateCohomology.primaryComponent_tateCohomology_eq_bot` uses it on Tate cohomology. The reviewer's `Ideal.primaryComponent` for `(p)` has the same elements, so the statement is unchanged.

The mathematics was checked before adding:
- **Integral duality.** For free `M`, `0 → M^* → Hom(M, ℚ) → M^∨ → 0` stays exact after `M ⊗ −`, and `Ĥ(Hom(M, ℚ)) = 0`. With cup/connecting-map compatibility, evaluation carries the integral pairing to `±δ` of the `ℚ/ℤ` pairing (`δ : Ĥ⁻¹(G, ℚ/ℤ) ≅ Ĥ⁰(G, ℤ)`). So `tate_duality` gives `tate_duality_of_free`.
- **The `p`-primary theorem.** Each implication was checked with the idempotent `e_p`; see the table.

## F02 (P2) — applied

README §1.1: "in general it is `c_g` followed by restriction from `gAg⁻¹` to the image of `β`" → "`c_g` from `A` to `gAg⁻¹`, then restriction to `β(B) ≤ gAg⁻¹`, then the map along the surjection `B → β(B)`; for injective `β` the last map is the identification `B ≃ β(B)`". Same pattern for `conjCores`: its general case is now preceded by `Hₙ(B, Res_β M) → Hₙ(β(B), M)`. A new negative-control Check covers `ℤ/4 → ℤ/2`, `𝔽₂`, in degrees 2 and 1, cohomological and homological. The Lean definitions are unchanged.

Other occurrences searched: §7.1 (`doubleCosetTerm`) and §7.2 (`IsStableClass`, `IsHomologyStableClass`) describe `conjRes`/`conjCores` as "`c_g` followed by restriction" only for subgroup inclusions, where `β` is injective; those are correct and unchanged.

## F03 (P3) — applied

Mathlib contract: the single `RepresentationTheory/Rep/Basic.lean` line → `Rep.ihom`, `Rep.ofMulAction`, `Rep.ofHom` in `Rep/Basic.lean` (:774, :333, :92); `Rep.res` in `Rep/Res.lean` (:43); `Rep.quotientToInvariantsFunctor` in `RepresentationTheory/Invariants.lean` (:263); `Rep.quotientToCoinvariantsFunctor` in `RepresentationTheory/Coinvariants.lean` (:442), with "degree `0` only" added.

Pattern search: every backticked declaration in "From Mathlib" and "From Tau Ceti" was checked mechanically against the files its bullet names, at the pins. The only mismatches were names cited in prose as contrast or as context: `TateCohomology.isoGroupCohomology` inside the `TauCeti.TateCohomology.map` bullet, `CochainComplex.filtrationSpectralSequencePageXIsoGradedOfFinite` ("unlike"), `SSet.chainComplex`, and `TauCeti.indResProjection`, whose own file is given in the preceding bullet. `Group{Co}homology` is shorthand for the two files. No other locator is wrong.

## Checks run

- `lake env lean packages/CohomologyOfGroups/Suggested.lean` (from the content checkout): **exit 0**, 14 `declaration uses sorry` warnings (the 12 earlier theorems plus `tate_duality_of_free` and `tfae_primary_periodic_cohomology`), no other output. No `TauCeti.*` object file needed building, and no import changed.
- Mechanical binder check: a scratch copy with `#check @name` for all 21 declarations elaborated with exit 0. `tate_duality_of_free` keeps `{G : Type} [Group G] [Fintype G] (M : Rep ℤ G) [Module.Free ℤ ↑M] (i : ℤ)`. `tfae_primary_periodic_cohomology` keeps `(G : Type) [Group G] [Fintype G] (p : ℕ) [Fact (Nat.Prime p)]`. Both match their README statements. The 19 earlier declarations are textually unchanged and their elaborated types match the earlier signature listing.
- README ↔ Lean names: all 21 Lean names occur in the README. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Dependency check (`gate --depcheck … --movable`):

```text
depcheck: 244 roadmaps, 2206 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or moved line, and no supplier, `*Needs:*` line or gap was added.
- Ownership: `roadmaps grep` was run for Tate duality, periodic cohomology and `p`-primary periodicity over main and the open heads. K3BlochGroups §5.2 owns only the integral instance `H^{d+1}(G, ℤ) ≅ Hom(H_d(G, ℤ), ℚ/ℤ)`, which §8.1 already compares. No roadmap states free-coefficient Tate duality or the `p`-primary periodicity equivalence. Both were README targets of this roadmap before this round; only their Lean statements are new.

## Adversarial pass

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §1.1 `conjRes` general factorization | `ℤ/4 → ℤ/2`, `g = 1`, `𝔽₂`, degree 2; subgroup inclusion | Pullback of the carry cocycle is `1` exactly on odd pairs = `d⌊a/2⌋` (`df(1,1)=1`, `df(1,2)=0`, `df(2,2)=0`, `df(3,3)=1`), so the map is 0. The old description gives id on `𝔽₂`. For an inclusion the surjection step is the identity, giving restriction. | Old clause false; replaced, Check added |
| §1.1 `conjCores` general factorization | Same data, degrees 1, 2 | Periodic-resolution comparison: `f₁ = 1`, `f₂ = 2` (`N₄ ↦ 2N₂`). `H₂`: `𝔽₂ → 𝔽₂` is 0; `H₁`: `ℤ/4 ⊗ 𝔽₂ → ℤ/2 ⊗ 𝔽₂` is an isomorphism. Equivariance of `m ↦ g⁻¹m`: `g⁻¹β(b)m = f(b)g⁻¹m`. | Clause added, Check extended |
| F03 locators | All Mathlib/Tau Ceti contract bullets | Each name grepped at the pins; 6 named declarations were checked by line | Only the reported three wrong; fixed |
| `tate_duality_of_free` | `G = ℤ/3, M = ℤ, i = 0, 1, 2`; `G = ℤ/2, M = ℤ/2` (not free); trivial `G`; `M = 0` | `i=0`: `ℤ/3 × ℤ/3 → ℤ/3` multiplication, `(1,1) ↦ 1 ↔ 1/3`, three homs = pairing with 0, 1, 2. `i=1`: `Ĥ¹ = 0 = Ĥ⁻¹`. `i=2`: `ℤ/3` both. Non-free: `Ĥ⁰(Hom(ℤ/2, ℤ)) = 0`, but nonzero `φ : ℤ/2 → ℤ/2` exists, so surjectivity fails. Trivial `G`, `M = 0`: all groups 0, holds. | Holds; freeness necessary; Checks added |
| Integral ↔ `ℚ/ℤ` compatibility | Morphism of SESs `M ⊗ (M^* → Hom(M,ℚ) → M^∨)` → `(ℤ → ℚ → ℚ/ℤ)` | `x ∪ δ₁y′ = (−1)^{−i} δ(x ∪ y′)` and `ev_* ∘ δ = δ₂ ∘ ev_*`; `δ₁`, `δ₂` are isomorphisms (`Ĥ(Hom(M,ℚ)) = Ĥ(ℚ) = 0`) | Route sound; stated in §8.1 |
| `tfae_primary_periodic_cohomology` | `A₄, p = 3`; `A₄, p = 2`; `ℤ/2, p = 3`; trivial `G`; `S₃, p = 3`; `Q₈, p = 2` | `A₄`/3: Sylow `C₃`; `Ĥ²(A₄,ℤ) = Hom(A₄/V₄, ℚ/ℤ) = ℤ/3` of order `|A₄|₃ = 3`; all four hold. `A₄`/2: `V₄` fails (c_2), (d_2). `ℤ/2`/3: all primary parts 0, card `1 = 3⁰`, all four hold. `S₃`/3: `Ĥ¹ = Ĥ³ = 0`, `Ĥ² = ℤ/2` (3-part 0), `Ĥ⁴ = ℤ/6` (3-part `ℤ/3`), least `d = 4`. `Q₈`/2: `Q₈ ≅ QuaternionGroup 2` (`m = 1`), `Ĥ⁴ = ℤ/8`. | Holds; three Checks added |
| (b_p)⇒(a_p) via `e_p` | `|G| = 6, p = 3`: `e₃ = 4 ∈ ℤ/6` | `4 ≡ 1 mod 3`, `4 ≡ 0 mod 2`, `4² = 16 ≡ 4`. `(x∪u)∪v = e_p x = x` on 3-primary `x`; `v∪u = (−1)^d u∪v`, so the inverse holds up to sign | Sound |
| (a_p)⇒(c_p) | `A ≤ G` abelian `p`-subgroup, `|G| = 12, p = 3, A = C₃`, `e₃ = 4` | `res: ℤ/12 → ℤ/3` sends `e₃ = 4 ↦ 1`; so `res u ∪ res v = 1`, `res u` invertible | Sound |
| Wrong models of (b_p) | Order `p` instead of `|G|_p`; whole `Ĥ^d` instead of its `p`-part; `d = 0` allowed | `ℤ/2, p = 3`: order-`p` model fails while (d_3) holds. `S₃, p = 3`: no `Ĥ^d(S₃,ℤ)` has order 3. `C₂², p = 2`: `Ĥ⁰ = ℤ/4` is cyclic of order `|G|₂` although (c_2) fails, so `d ≠ 0` is needed | Excluded by the statement; Checks record the first two |
| (d_p) form | `p` odd; `m = 0` | `QuaternionGroup 1` has order 4 and is cyclic, so `m ≥ 1` excludes nothing needed; for odd `p` the quaternion branch is impossible except for trivial `P`, which is cyclic | Sound |

## Notes for the maintainer

- New names other roadmaps may cite: `TauCetiRoadmap.CohomologyOfGroups.tate_duality_of_free` and `TauCetiRoadmap.CohomologyOfGroups.tfae_primary_periodic_cohomology`. No existing name changed or was removed.
- No source was fetched. `sources.toml`, `metadata.toml` and `design/plan.json` are unchanged.
- Ownership was checked against main and the open pull requests through `roadmaps grep`.
