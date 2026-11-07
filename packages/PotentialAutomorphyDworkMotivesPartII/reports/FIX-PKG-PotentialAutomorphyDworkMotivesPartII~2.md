# FIX-PKG-PotentialAutomorphyDworkMotivesPartII~2

Repair round for the review REV-PKG-PotentialAutomorphyDworkMotivesPartII (six findings). Files edited: `packages/PotentialAutomorphyDworkMotivesPartII/README.md`, `packages/PotentialAutomorphyDworkMotivesPartII/Suggested.lean`, `packages/PotentialAutomorphyDworkMotivesPartII/sources.toml`. `design/plan.json` and `metadata.toml` are unchanged (no new gap was needed).

## REV-PKG-PotentialAutomorphyDworkMotivesPartII/F01 (P2) — applied

Verified: the open new-roadmap pull request HypergeometricMotives (head f847e92) states Levelt's theorem over an arbitrary field in its README §3.4 (i)–(iv), with `levelt_rigidity_field` and `levelt_irreducible_field` in its `Suggested.lean` (lines 405–430), and its §3.4(iv) already covers the triple order `g_0 g_1 g_∞ = 1` and the first-column shape of `C(q)C(p)⁻¹`. A trial dependency check with HypergeometricMotives named as a supplier reported `0 problem(s)` (edges 2239 → 2240), so the roadmap is imported rather than carried.

Changes: Scope "owns" bullet → the two-pair and absolute-irreducibility corollaries in the order `h₀h₁h∞ = 1` and the Dwork specialisation; Scope "leaves to" → HypergeometricMotives §§3.1, 3.2, 3.4 named as owner; Summary and "How to read the build" name the import; new `### From TauCetiRoadmap.HypergeometricMotives` contract with the order translation `g_∞ = h∞`, `g_0 = h₀`, `g_1 = h₀h₁h₀⁻¹` (the review's `g_1 = h₁` holds only up to conjugation; the contract states the exact identity); §0.2 keeps only the first-column reading of HypergeometricMotives §3.4(iv); §0.3 states the two-pair form as HypergeometricMotives §3.4(i),(iv) read in this roadmap's order, with the translation as proof sketch and "Prove it as `levelt_rigidity`" dropped; §0.4 is derived from §3.4(ii) through §0.3. All Checks of §§0.2–0.4 stay. Consumers updated: §4.5, §4.7, §5.2, §5.3 proof sketches cite "Levelt's theorem (§0.3)" instead of the Lean name; Layer 0 Dependencies list HypergeometricMotives. `levelt_rigidity` and the Layer 0 section comment are deleted from `Suggested.lean`; its docstring bullet is replaced by a line saying the theorem is HypergeometricMotives' `levelt_rigidity_field`. No roadmap on main or in an open pull request cites `levelt_rigidity` or a §0.x of this roadmap (`roadmaps grep`), so no section was renumbered.

## REV-PKG-PotentialAutomorphyDworkMotivesPartII/F02 (P2) — applied

Verified at the pin: `TauCeti/AlgebraicGeometry` has no `FiniteEtale` directory and `FiniteEtaleScheme` occurs nowhere in the pinned Tau Ceti or Mathlib. The bullet is deleted; `### From Tau Ceti` keeps only `TauCeti.companionFinTwo` (`TauCeti/LinearAlgebra/Matrix/RationalCanonicalFormFinTwo.lean` line 69, `!![0, -d; 1, t]`). The EtaleCohomologyFoundations contract now says the finite étale carrier of §F.0.2 is that roadmap's own, consumed only through `VanishingCycles.finiteEtaleGaloisCategory` and `VanishingCycles.lisseMonodromyEquiv`. Nothing in `Suggested.lean` used it.

## REV-PKG-PotentialAutomorphyDworkMotivesPartII/F03 (P3) — applied

Verified: `roadmaps grep --fixed` returns no match for any of the seven names; the sections exist at the head of PotentialModularityAndCompatibleSystems with the titles the review gives (§1.11, §1.21, §2.17, §2.18, §2.20, §3.1). The supplier paragraph now cites the sections by number and title (for instance "§2.17 (three kinds of local conditions in Moret-Bailly's theorem)"). The names occurred only in that paragraph; §9 does not repeat them.

## REV-PKG-PotentialAutomorphyDworkMotivesPartII/F04 (P3) — applied

Verified: `Mathlib/LinearAlgebra/Transvection/Generation.lean` has the name `mem_dilatransvections_pow_of_not_isExceptional` only in its module docstring (line 36); the theorem is `LinearEquiv.mem_transvections_pow_mul_dilatransvections_of_not_isExceptional` (line 487). The Mathlib contract now uses that name and states its conclusion (a product of `finrank(V ⧸ e.fixedSubmodule) − 1` transvections times one dilatransvection). The old name occurred nowhere else.

## REV-PKG-PotentialAutomorphyDworkMotivesPartII/F05 (P3) — applied

Verified: BLGHT11 lines 1139–1140 cite "theorem 5.3 of [Ka2]" (Katz, Another look at the Dwork family) and "theorem 8.4.11 of [Ka1]"; BCGNT25 lines 2050–2051 cite only [Kat90, Theorem 8.12.2(1a)] for the determinant. Katz's book is uncertified, so the roadmap cites the theorem numbers its sources give rather than a number of its own: §3.3 now reads "citing Katz, Another look at the Dwork family, Theorem 5.3, together with Katz, ESDE, Theorem 8.4.11"; the References entry and the `KATZ90` manifest locator read "Chapter 8, Theorem 8.4.11 and Theorem 8.12.2(1a)", with the `version_note` saying which paper cites which. §3.2's citation of Theorem 8.12.2(1a) was already consistent with BCGNT25 and is unchanged. The text of `design/plan.json` outside `gaps` still mentions "ESDE Theorem 8.4.2" and `Matrix.levelt_rigidity`; this round may not edit it, and the README and manifest are the authority.

## REV-PKG-PotentialAutomorphyDworkMotivesPartII/F06 (P3) — applied

Verified by computation in `SL₂(𝔽₅)` (120 elements, 20 of order three): the orders of products of two elements of order exactly three are `{1, 3, 4, 6, 10}`. The companion pair over `𝔽₉` for `N = 5`, `l = 3` (`A = C((X − 1)²)`, `B = C(X² − tX + 1)`, `t` a root of `X² + X + 2`) has `ord A = 3`, `ord B⁻¹ = 5`, `ord BA⁻¹ = 3` and generates a group of order `720 = #SL₂(𝔽₉)`. The §5.6 proof sketch now says which product is meant (`ρ̄(γ₀)⁻¹ = ρ̄(γ₁)ρ̄(γ∞)`, a transvection times a unipotent element, both of order three in characteristic three) and lists the orders `1, 3, 4, 6, 10`; the Check lists the same orders, and a new Check records the orders and the group order `720` of the companion pair.

## Checks

- **Elaboration.** `lake env lean` on `packages/PotentialAutomorphyDworkMotivesPartII/Suggested.lean` from the content checkout: exit 0; the only output is five "declaration uses `sorry`" warnings (lines 92, 111, 131, 150, 184). Single `import Mathlib`, no `TauCeti.*` import needed, no `set_option`, no `lemma`.
- **Signatures.** A scratch copy with `#check @<name>` for all ten remaining declarations elaborated with exit 0; every elaborated type is identical to the one in the worker's signatures file (nothing but `levelt_rigidity` changed), and each agrees with its README statement: §5.1 (`l ≠ 2`, `N` odd, `n > 2`, `N > 100n + 100`, `k` generated by `ζ`, `−1` not a power of `l`), §5.2 (`m > 1`, `N > 2m + 1`, `k` the field of `ζ + ζ⁻¹`), §5.3 (`σ ζ = ζ⁻¹`), §5.4 (`max(l₁, l₂) > 10`, `l₁ ≠ l₂`), §6.2 (`N` odd, `orderOf χ = N`, `ψ` primitive). No section binder is lost (none is used).
- **Dependency check.** Output: `depcheck: 233 roadmaps, 2240 edges, 0 problem(s)`. No UPWARD, no CYCLE, no `moved:` line. HypergeometricMotives (an open new-roadmap pull request by another author, not in the merge order) is accepted as a supplier.
- **Citations.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- **Leftovers.** `levelt_rigidity`, `FiniteEtaleScheme`, `8.4.2`, the seven supplier names, the docstring-only Mathlib name and the narrow order list occur nowhere in the README, the Lean file or the manifest.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §0.2 first-column reading | `p = (X − 1)²`, `q = (X − 2)(X − 4)` over `ℚ`; `p = q` | `C(p)⁻¹ = [[2, 1], [−1, 0]]`, `C(q)C(p)⁻¹ = [[8, 0], [−4, 1]]`, minus `1` is `[[7, 0], [−4, 0]]`: first column only, rank `1`; `p = q` gives `0` | holds | citation to HypergeometricMotives §3.4(iv) |
| §0.3 order translation | `n = 1`, `A∞ = α`, `A₀ = β⁻¹`; general | `g_1 = A∞⁻¹A₀⁻¹`, `g_∞g_1g_0 = A∞A∞⁻¹A₀⁻¹A₀ = 1`; `q = charpoly(A₀⁻¹) = X − β`, so `g_0 = C(q)⁻¹ = β⁻¹ = A₀`, `g_∞ = C(X − α) = α` | translation exact; the review's `g_1 = h₁` is true only up to conjugation by `h₀` | contract states `g_1 = h₀h₁h₀⁻¹` |
| §0.3 without coprimality | `(1, 1)` vs `(1, J)` | all charpolys `(X − 1)²`; HypergeometricMotives §3.4(i) needs `IsCoprime p q`, absent | Check still a non-example | none |
| §0.4 via §3.4(ii) | `n = 1`; `h∞ = 1`, `h₀ = diag(2, 1)` | `n = 1`: no proper nonzero subspace; `p = (X − 1)²`, `q = (X − 1/2)(X − 1)` share the root `1`, hypothesis fails, invariant line exists | stable under `C(q)⁻¹` iff under `C(q)` (finite dimension) | derivation replaces the direct proof |
| §5.6 order argument | `N = 5`, `l = 3`, `B = {2, 3}` | `ρ̄(γ₀)` has eigenvalues `ζ₅², ζ₅³`, order `5` (`gcd((N − 1)/2, N) = 1` in general); transvection and unipotent block have order `3` in characteristic `3`; products of two order-`3` elements of `SL₂(𝔽₅)` have orders `{1, 3, 4, 6, 10}` | `5` excluded | orders corrected, product named |
| §5.6 new Check | companion pair over `𝔽₉` | `det A = det B = 1`, `ord A = 3`, `ord B⁻¹ = 5`, `ord BA⁻¹ = 3`, `#⟨B⁻¹, A⟩ = 720 = 9·80` | matches `SL₂(𝔽₉)`, not `SL₂(𝔽₅)` of order `120` | Check added |
| §3.3 citation | BLGHT11 lines 1139–1140; BCGNT25 lines 2050–2051 | "theorem 5.3 of [Ka2] and theorem 8.4.11 of [Ka1]"; "[Kat90, Theorem 8.12.2(1a)]" for the determinant | statement unchanged, attribution corrected | locator |

## For the maintainer

- This roadmap now consumes HypergeometricMotives (open pull request, draft, another author) at §§3.1, 3.2, 3.4 for Levelt's theorem. The intake should place HypergeometricMotives before PotentialAutomorphyDworkMotivesPartII in the merge order when it is accepted; the dependency check already accepts the edge.
- The Lean name `levelt_rigidity` no longer exists in this package; no other roadmap cited it.
- `design/plan.json` (outside `gaps`, not editable in this round) still carries the node `DM.0/levelt-rigidity` with `suggestedDeclaration` `Matrix.levelt_rigidity` and the phrase "ESDE Theorem 8.4.2"; the README and manifest supersede it.
- Ownership against open pull requests was checked with `roadmaps grep` by object (Dwork pencil, eigensheaves, hypergeometric sheaves, Levelt); the only overlap was Levelt's theorem, now imported.
- No source was fetched; no `needs-references.toml` entry was added.
