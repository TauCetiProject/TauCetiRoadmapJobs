# FIX-PKG-LieHighestWeightPartII~8

Repair of the findings of REV-PKG-LieHighestWeightPartII~7: three findings, all P3. All three are the same defect: a fact the pinned Tau Ceti proves was derived again in the README or credited to a roadmap layer. Only `packages/LieHighestWeightPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are untouched, and no gap is declared or needed.

## F01 (P3) — applied

Old: §3.1 credited the dominant-chamber move to "RootSystems Layer 4", the realisation of the Weyl group in `Int(L)` and the `Int(L)`-invariance of invariant polynomials to LieHighestWeight Layer 7, and uniqueness inside the chamber to RootSystems Layer 4. §3.4 said only "the simple roots form a basis of `H*`". New: these steps cite the pinned declarations below. LieHighestWeight Layer 7 is kept only for Chevalley surjectivity.

Changes made:
- The Scope bullet on library facts names `TauCeti.exists_mem_intLieAlgebra_forall_smul_eq_coweightEquiv`, `IsSl2Triple.exists_mem_intLieAlgebra_smul_mem_dominantNeutralElements`, `RootPairing.Base.dominantNeutralElements`, `RootPairing.Base.weightedDynkinDiagram`, `RootPairing.Base.weightedDynkinDiagram_injective` and `TauCeti.SymmetricAlgebra.lift_eval_smul_of_mem_intLieAlgebra`, each with its file.
- The `Int(L)` Scope bullet credits the Weyl automorphisms (`TauCeti.weylAut`), their realisation of `W` and the invariance under `Int(L)` to Tau Ceti. LieHighestWeight Layer 7 keeps Chevalley restriction (§3.1 uses its surjectivity) and the Serre presentation.
- `### From Tau Ceti` states each declaration with its hypotheses.
- The LieHighestWeight Layer 7 contract no longer lists the Weyl automorphisms or the invariance as Layer 7 supplies. It lists them among what Layer 7 plans and this roadmap takes from Tau Ceti.
- The §3.1 statement adds that, for a nonzero triple, the dominant representative lies in `RootPairing.Base.dominantNeutralElements` and the characteristic is its `RootPairing.Base.weightedDynkinDiagram`. That set excludes `0` (`RootPairing.Base.zero_notMem_dominantNeutralElements`), and the zero triple has characteristic `0`.
- The §3.1 proof uses `IsSl2Triple.exists_mem_intLieAlgebra_smul_mem_dominantNeutralElements` for the move into the chamber and `TauCeti.SymmetricAlgebra.lift_eval_smul_of_mem_intLieAlgebra` for invariance.
- In §3.4, the step from equal characteristics to equal dominant elements cites `RootPairing.Base.weightedDynkinDiagram_injective`. It also says that equal characteristics are both zero or both nonzero.
- The *Needs* lines of §3.1 and §3.4 and the Dependencies of Layer 3 list these declarations.

Evidence: each declaration was read at the pin, with its file, line and namespace:
- `TauCeti/Algebra/Lie/Sl2/WeightedDiagram/Dominant.lean:61`, namespace `IsSl2Triple`. Hypotheses: a field of characteristic zero, `[LieAlgebra ℚ L]`, finite-dimensional, Killing, Cartan, triangularizable.
- `TauCeti/Algebra/Lie/Sl2/Weyl/Cartan.lean:78`, namespace `TauCeti`.
- `TauCeti/Algebra/Lie/Sl2/WeightedDiagram/Finite.lean:47`, `:61`, `:66`, `:93`, namespace `RootPairing.Base`.
- `TauCeti/Algebra/Lie/AdjointAction/SymmetricInvariants.lean:153`, namespace `TauCeti.SymmetricAlgebra`. Hypotheses: `CommRing K`, `[Algebra ℚ K]`, `[LieAlgebra ℚ L]`. This one was also elaborated with `#check` (below).

Surjectivity of Chevalley restriction onto the `W`-invariants is not at the pin, so LieHighestWeight Layer 7 stays for it. `TauCeti/Algebra/Lie/Killing/ChevalleyRestriction.lean` proves injectivity on the invariants and coreflection invariance only. `lieCartanRestriction_surjective` in `CartanRestriction.lean` is onto `S(H)`, not onto the invariants.

Repair of the pattern beyond the finding: the review said to keep RootSystems Layer 4 for uniqueness inside the chamber and for `−w₀`. Both facts are pinned too, so both now cite Tau Ceti:
- `TauCeti.eq_of_mem_orbit_of_mem_dominantChamber` and `TauCeti.existsUnique_mem_orbit_inter_dominantChamber` (`TauCeti/LinearAlgebra/RootSystem/FundamentalDomain.lean:221`, `:247`) hold over a linearly ordered commutative ring.
- `TauCeti.opposition_mem_support` (`TauCeti/LinearAlgebra/RootSystem/Opposition.lean:149`) holds over a characteristic-zero domain.
- RootSystems' own table "Old label / Present location", on main, maps its former "Layer 4: chambers and the longest element" to `TauCeti.existsUnique_mem_orbit_inter_dominantChamber` and `TauCeti.longestElement`.

`K` carries no order, so the uniqueness step goes through Mathlib's `RootPairing.restrictScalarsRat` (`Mathlib/LinearAlgebra/RootSystem/BaseChange.lean`), with roots and coroots exchanged. Elements of `H` with integer root values lie in the `ℚ`-span of the coroots, because the Cartan matrix is invertible over `ℚ`. That declaration is now recorded under `### From Mathlib`.

The RootSystems Layer 4 contract now says that these two facts are consumed from Tau Ceti. RootSystems Layer 4 has left the §3.1 *Needs* line and the Layer 3 Dependencies (now "RootSystems Layers 5, 6"). The Scope bullet on RootSystems says that the facts used are in Tau Ceti.

Repair test, recomputed:
- `sl₂`, `H = K·H`, base `{α}`, triple `(−H, F, E)`: `α(−H) = −2`. The pinned theorem returns the Weyl automorphism `g`, with `g(−H) = H`, `α(H) = 2` and label `2`, which is the characteristic of the principal triple (§3.1 Check).
- Zero triple: `0 ∉ dominantNeutralElements`, so it is the separate case of the statement.

## F02 (P3) — applied

Changes made:
- Scope, NilpotentOrbits bullet. Old: "Its N2.1 owns the Jacobson–Morozov theorem …, Kostant's conjugacy … and the algebraic `SL₂`-homomorphism". New: Jacobson–Morozov and Kostant are in Tau Ceti over every field of characteristic zero (`TauCeti.exists_isSl2Triple_of_isNilpotent_ad`, `IsSl2Triple.exists_lieEquiv_apply_eq`). N2.1 owns the algebraic `SL₂`-homomorphism and the group-level conjugacy with fixed `e`.
- The NilpotentOrbits contract and the former-label row "N0 jacobson-morozov, N0 kostant-conjugacy" are changed to match.
- `### From Tau Ceti` states both theorems. Jacobson–Morozov needs finite dimension, the Killing condition and characteristic zero. Kostant's theorem needs no Killing hypothesis, and its conjugating group lies in `Int(L)` (`TauCeti.map_expAdSubgroup_le_intLieAlgebra`).

Evidence: `TauCeti/Algebra/Lie/Sl2/JacobsonMorozov.lean:87`, namespace `TauCeti`, with section variables `[Field K] [CharZero K] … [FiniteDimensional K L] [IsKilling K L]`. Kostant's theorem is at `:228`, namespace `IsSl2Triple`, with `[FiniteDimensional K L]` and `[LieAlgebra ℚ L]` and no Killing hypothesis. `TauCeti/Algebra/Lie/AdjointAction/ExpAdSubgroup.lean:101`, namespace `TauCeti`. NilpotentOrbits N2 item 1 on main plans Jacobson–Morozov, the `SL₂`-homomorphism into `G`, and conjugacy with fixed `e` "by the appropriate identity-component/unipotent centralizer maps". The README keeps the group-level parts with N2.1.

Repair test, recomputed in `sl(2, ℚ)` with `e = E`:
- `[E, F − H − E] = H + 2E`, `[H + 2E, E] = 2E` and `[H + 2E, F − H − E] = −2F + 2H + 2E = −2(F − H − E)`.
- `exp(ad(−E))` sends `H ↦ H + 2E` and `F ↦ F − H − E`, since `ad(−E)F = −H` and `ad(−E)²F = −2E`, halved.
- `−E = [E, H/2]` lies in `ker(ad E) ∩ [E, L]`.
- No algebraic closure is used.

Negative control: in the abelian `L = K`, `e = 1` is ad-nilpotent and nonzero but lies in no triple. This is why the Killing hypothesis is kept for Jacobson–Morozov.

## F03 (P3) — applied

Changes made:
- §1.2, third API bullet. Old: "since `ρ(e)ρ(h) = ρ(h)ρ(e) − 2ρ(e)` makes `ker ρ(e)` stable under `ρ(h)`, which … is diagonalizable … the whole kernel is the direct sum of its intersections with the `M_j`". New: "the whole kernel is the sum of its intersections with the `M_n`, `n ∈ ℕ` (`IsSl2Triple.ker_toEnd_e_eq_iSup_inf_eigenspace` for a nonzero triple; for the zero triple `ker ρ(e) = M = M_0`)".
- The declaration is added to the Scope bullet, to `### From Tau Ceti` (the `EigenspaceMap.lean` paragraph), to the §1.2 *Needs* and to the Layer 1 Dependencies.
- The same pattern turned up in the same lists: the §1.2 bullet already cited `IsSl2Triple.map_toEnd_e_eigenspace` and `IsSl2Triple.disjoint_ker_toEnd_e_eigenspace`, which were missing from the §1.2 *Needs* and the Layer 1 Dependencies. Both are added.

Evidence: `TauCeti/Algebra/Lie/Sl2/EigenspaceMap.lean:258`, namespace `IsSl2Triple`. Section `Weights` (`:225`) assumes a field of characteristic zero and `[FiniteDimensional K M]`. The conclusion is `ker ρ(e) = ⨆ (n : ℕ), ker ρ(e) ⊓ eigenspace (n : K)`.

Repair test, recomputed:
- `V(0) ⊕ V(1)` with the standard triple: `ker ρ(e) = span(u, v₊) = (ker ∩ M_0) ⊕ (ker ∩ M_1)`, of dimension `1 + 1`. `x = u + v₊` lies in it without being an eigenvector, as the §1.2 Check says.
- Zero triple: `ker = M = M_0`.
- `M = 0`: both sides are `0`.

## Checks

- `lake env lean packages/LieHighestWeightPartII/Suggested.lean`, run from the content checkout: exit 0. Output: exactly nine `declaration uses sorry` warnings, at lines 78, 95, 109, 126, 149, 176, 196, 215 and 264, and nothing else. All six `TauCeti.*` imports had object files, so nothing was built.
- One scratch file: `Suggested.lean` plus the imports `TauCeti.Algebra.Lie.AdjointAction.SymmetricInvariants` and `TauCeti.LinearAlgebra.RootSystem.FundamentalDomain`, with `#check @name` for all 14 declarations. It was elaborated once (exit 0). Each elaborated type equals its entry in `scratch/signatures.md`, and no binder was lost; the file is unchanged, so its generality still equals the README's.
- The same scratch file elaborated `TauCeti.SymmetricAlgebra.lift_eval_smul_of_mem_intLieAlgebra`, `TauCeti.eq_of_mem_orbit_of_mem_dominantChamber`, `TauCeti.existsUnique_mem_orbit_inter_dominantChamber`, `RootPairing.restrictScalarsRat` and `RootPairing.flip`, with the hypotheses stated in the README.
- The other newly cited names live in pinned modules with no object file on this worker: `JacobsonMorozov`, `ExpAdSubgroup`, `EigenspaceMap`, `WeightedDiagram/Finite`, `WeightedDiagram/Dominant`, `Weyl/Cartan` and `Opposition`. They were read in the pinned source (file, line, namespace and section variables above), not elaborated. They are not imports of `Suggested.lean`, so they were not built.
- Dependency check, run as prescribed: `depcheck: 223 roadmaps, 1975 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. The tool notes that Lean names outside TauCetiRoadmap were not checked on this host; that is why they were checked by hand as above.
- A scan of the diff for LaTeX delimiters, process words and machine paths found nothing.

## Adversarial pass (changed statements)

| Statement | Instances tried | Values on each side | Result | Change |
|---|---|---|---|---|
| §3.1: for a nonzero triple, the characteristic is the `weightedDynkinDiagram` of a `dominantNeutralElements` member | `sl₂`, `(−H, F, E)`; `sl₃` minimal and regular; zero triple | `α(−H) = −2` → `α(H) = 2`, label `2`; `diag(1,0,−1)`: `(α₁, α₂) = (1, 1)`; `diag(2,0,−2)`: `(2, 2)`; `0 ∉` the set | holds; agrees with the §3.1 Check "principal is `(2, …, 2)`" and §1.4 Examples | statement extended, zero case kept separate |
| §3.1: move into the chamber by `Int(L)` preserving `H` | `sl₃`, `h = diag(0, 1, −1)` | `α₁ = −1`, `α₂ = 2`; `s₁` gives `diag(1, 0, −1)`, `(1, 1)` | holds | citation |
| §3.1: uniqueness through the `ℚ`-form | `sl₃`: W-orbit of `diag(1,0,−1)`; `G₂`, label `(1, 0)` | the six permutations of the diagonal have one dominant member; `diag(1,0,−1) = α₁∨ + α₂∨` lies in the `ℤ`-span; `ω₁∨ = 2α₁∨ + 3α₂∨` from the inverse of `[[2,−1],[−3,2]]` (`⟨α₁, ω₁∨⟩ = 4 − 3 = 1`, `⟨α₂, ω₁∨⟩ = −6 + 6 = 0`), integral | holds; an order on `K` is not needed | citation, Mathlib `RootPairing.restrictScalarsRat` added |
| §3.1: `a = −w₀ a` via `TauCeti.opposition_mem_support` | `E₆`; `A₂` | `σ = (1 6)(3 5)`, `3⁴ = 81` of `729` fixed (§3.1 Check); `A₂`: `σ = (1 2)`, minimal `(1, 1)` is fixed | holds | citation |
| §3.4: equal characteristics give equal dominant elements | `G₂`: `(0, 1)` vs `(1, 0)`; zero vs nonzero | different labels, different profiles `4,4,1` / `4,2,1,2`; a nonzero triple has a nonzero representative, and all labels `0` force `h = 0` (basis of `H*`) | holds | citation and the zero/nonzero sentence |
| §1.2 kernel bullet | `V(0) ⊕ V(1)`; adjoint `sl₂`; zero triple; `M = 0` | `span(u, v₊)` = `1 + 1`; `ker ad E = K·E ⊆ L_2`; `ker = M = M_0`; `0 = 0` | holds | derivation replaced by citation |
| Jacobson–Morozov (contract) | `sl(2, ℚ)`, `e = E`; abelian `L = K`, `e = 1` | triple `(H, E, F)` exists without closure; no triple since `[h, 1] = 0 ≠ 2` | Killing hypothesis needed, kept | supplier moved to Tau Ceti |
| Kostant (contract) | `sl(2, ℚ)`, `(H,E,F)` vs `(H+2E, E, F−H−E)` | brackets above; `exp(ad(−E))` maps one to the other and fixes `E` | holds; no Killing hypothesis | supplier moved to Tau Ceti |
| `RootPairing.restrictScalarsRat` contract | the root system of `sl₂` over `K` | roots `±α`, pairing `2`, valued in `ℤ ⊆ ℚ`; balanced as a root system | applies | added to From Mathlib |
| Fundamental domain contract | `A₁` over `ℚ`, `x = −1` | orbit `{−1, 1}` meets the chamber `{x ≥ 0}` only at `1` | holds | hypotheses stated |

## Ownership and overlap

- `scratch/overlaps.md`: no other pull request changes this roadmap, no cited id is dropped, and no id is defined only by an open revision.
- Every declaration added is a pinned Tau Ceti or Mathlib declaration, so this roadmap took ownership of nothing.
- The former-label row "N0 jacobson-morozov, N0 kostant-conjugacy" now points to the Tau Ceti declarations and, for the group-level statements, to NilpotentOrbits N2.1. Roadmaps that cite this former label still resolve through the table.

## Notes for the maintainer

- No Lean name of this roadmap changed, and no id was dropped or renumbered.
- This roadmap no longer depends on RootSystems Layer 4; it still cites RootSystems Layers 5 and 6. Both facts it took from Layer 4 come from the Tau Ceti declarations that RootSystems itself names as Layer 4's present location.
- NilpotentOrbits N2 item 1 on main still plans the Lie-algebra Jacobson–Morozov theorem, although Tau Ceti now has it. That is for that roadmap to settle, not this package.
- Nothing suspicious was found in the review text, which was treated as data.
