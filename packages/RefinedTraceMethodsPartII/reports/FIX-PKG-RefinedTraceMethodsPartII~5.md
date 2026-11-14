# FIX-PKG-RefinedTraceMethodsPartII~5

This round repairs the one finding of the package review, round 4 (F01, P1). It was verified and applied differently from the suggested repair. Only `packages/RefinedTraceMethodsPartII/README.md` and `packages/RefinedTraceMethodsPartII/sources.toml` changed. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged, and no gap was added.

## F01 (P1) — applied differently

**Verified.** I read RefinedTraceMethods at the head of its open pull request (`roadmaps show RefinedTraceMethods`):
- Its Scope (README line 8) says that StableHomotopyKTheoryPartII §2.7 owns the sphere Segal equivalence and that it is not an input there.
- Its §2.3 (lines 558–586) has (i) Postnikov convergence, (ii) Tate vanishing when p acts invertibly, (iii) p-completeness of `X^{tC_p}` for bounded-below X, and the Tate fixpoint lemma. It has no Segal statement.
- StableHomotopyKTheoryPartII §2.7 (its README line 376, at its open head) states `S → S^{tC_p}` as the Segal conjecture for C_p.

p-completeness alone does not give the Segal step. For trivial-action Hℤ, `π₀((Hℤ)^{tC_p}) = ℤ/p`, while `π₀(Hℤ_p) = ℤ_p`. So our contract line and the §3.1 Needs line cited a supplier for something it does not supply.

**Why the suggested repair was changed.** No edit of this package can move the lax comparison into StableHomotopyKTheoryPartII, and that roadmap does not state it. Writing it there would invent a supplier target. No layer here needs it, so it is deleted and recorded as an exclusion in Scope. That exclusion names StableHomotopyKTheoryPartII §2.7 only as owner of the Segal equivalence, not as a supplier.

**Changes (old → new):**
- Contract, RefinedTraceMethods §2.3: "…p-completeness…, and the Segal statement `𝕊^{tC_p} ≃ 𝕊^∧_p`" → items (i)–(iii) exactly as §2.3 states them, without Segal.
- Contract, BordismFormalGroups §F6.5: now also lists the projection formula, Tate vanishing on the induced-object ideal, lax monoidal `can` and the universal property of `(−)^{tG}`. These are main README lines 2263–2273 and 2320–2333.
- §3.1:
  - The p-completed lax-comparison paragraph and its `ℤ_p ⊗ ℤ_p` Check are deleted.
  - A compatibility statement is added: the fixed-point map is homotopic to the composite `(lax) ∘ (id ⊗ can) ∘ (id ⊗ (Σ^∞Z^{C_p} → (Σ^∞Z)^{hC_p}))` (speirs-trunc Lemma 7, line 304; proof of Lemma 8, lines 350–376). Its route is the universal property of Tate plus lax monoidal `can`.
  - Needs is now BordismFormalGroups §F6.5 only.
  - The Checks are now: `C_{p+}` (0 = 0), S⁰ (both maps are the identity of ℤ/p, with no Segal input), and a new negative control `S⁰ ∨ EC_{p+}` (ℤ/p → (ℤ/p)², not an isomorphism).
- §3.6: "the composite of `φ_p ⊗ ψ` with the lax structure map" is replaced by an explicit factorization through fixed cells: `φ_p ⊗ id`, then `id ⊗ Σ^∞ψ`, then the fixed-point map of §3.1 (speirs-trunc lines 341–376). §3.6 now also notes that speirs-axes Proposition 16 (line 532) needs the Segal step, and gives the fibre bound (degrees ≤ N − 3).
- §2.3 (pattern): the Frobenius composite now includes `id ⊗ can`, with `(Σ^∞B^cy(Π))^{hC_p}` bracketed.
- Layer 3 Dependencies: BordismFormalGroups §F6.5 added.
- Scope, "What is left out": a new bullet for the p-completed lax comparison (speirs-axes Lemma 15, line 506) and the Segal equivalence (StableHomotopyKTheoryPartII §2.7).
- `sources.toml`, speirs-axes `cited_for`: "3.1" → "Scope and ownership". Lemma 15 is now cited only there, and Proposition 16 at §3.6, which is already in the locator.

**Pattern search.** I grepped the README for every use of `Segal`, `𝕊^∧_p`, `lax`, `Lemma 15`, `p-adic equivalence`, the §3.1 citations and the RefinedTraceMethods §2.3 citations:
- Layer 6's route (cusp cofibre, "§3.1, using the free-cell cofibre of §2.6") uses only the fixed-point comparison. It is correct and unchanged.
- Layer 5 cites §§3.1–3.6 through §3.6. Its route is now Segal-free.
- §3.4 and the Layer 3 Dependencies keep RefinedTraceMethods §2.3 for convergence and p-completeness, which that section does supply.
- RefinedTraceMethods §2.8 (contract line 87) is about the lax structure on cyclotomic spectra, not the Segal step. It is unchanged.

No other passage used the Segal equivalence.

## Checks run

- **Elaboration.** `lake env lean packages/RefinedTraceMethodsPartII/Suggested.lean`, run from the content checkout, exited 0. The only warnings are the three expected `declaration uses 'sorry'` warnings, at lines 61, 69 and 77. The file is unchanged this round and needs no Tau Ceti object build.
- **`#check` scratch.** A scratch copy with `#check @name` for all six declarations elaborates to:
  - `cuspCount`, `cuspTruncationSet` and `cuspCoprimeSet : ℕ → ℕ → ℕ → …`;
  - `ncard_cuspTruncationSet` and `ncard_cuspCoprimeSet`, each with `{a b} (2 ≤ a) (2 ≤ b) (a.Coprime b) (r)`;
  - `card_noCyclicRepetition (d) {m} (1 ≤ m)`.

  These agree with the README §§1.1 and 1.4 statements. Nothing changed. The `and` entry in the signatures lead file is an artifact of the docstring phrase "theorem and"; it is not a declaration.
- **Dependency direction**, the brief's command with `--movable --content`:

      depcheck: 236 roadmaps, 2145 edges, 0 problem(s)

  There is no UPWARD, CYCLE or moved line. The new Scope mention of StableHomotopyKTheoryPartII (merge order 333, after this roadmap at 331) is an exclusion, not a supplier edge. The existing GeneralAlgebraicKTheoryPartII exclusion (335) is treated the same way.
- **Scratch gate** on a copy of README, Suggested.lean and metadata.toml: every count is 0 except `git=1`, which only means the scratch copy is not a git repository. The tex regex over the README with code spans stripped finds 0 hits.
- **`sources check`** on `sources.toml`: 0 problems.

## Adversarial pass on the changed statements

| Statement | Instances | Computed values (both sides) | Result / change |
| --- | --- | --- | --- |
| §3.1 fixed-point map | T = Hℤ trivial, Z = S⁰, p = 2, 3 | π₀: ℤ/2 → ℤ/2 and ℤ/3 → ℤ/3 identity; π_{−1}: 0 → 0 | Pass |
| §3.1 fixed-point map | Z = C_{p+} | source 0 (`Z^{C_p}` = base point); target `(T ⊗ Σ^∞_+C_p)^{tC_p}` = 0 (induced) | Pass |
| §3.1 fixed-point map | p = 2, Z = S^σ (sign sphere; fixed points S⁰, one free 1-cell), T = Hℤ | source π_k = Ĥ^{−k}(C₂;ℤ): ℤ/2 for k even, 0 for k odd. Target `(ΣHℤ_−)^{tC₂}`: π_k = Ĥ^{1−k}(C₂;ℤ_−), ℤ/2 for k even, 0 for k odd | Values agree |
| §3.1 fixed-point map | p = 3, Z = S^{C(1)} restricted to C₃ (fixed S⁰, free cells in dimensions 1 and 2), T = Hℤ | source ℤ/3 in even degrees; target `(Σ²Hℤ)^{tC₃}` (rotation preserves orientation): ℤ/3 in even degrees, 0 in odd | Values agree |
| §3.1 degenerate T | T = 0; T = Hℚ | 0 = 0; `(Hℚ)^{tC_p}` = 0 on both sides | Pass |
| §3.1 finiteness | Z = S⁰ ∨ EC_{p+}, T = Hℤ, p = 2 | `Σ^∞_+EC₂ ≃ 𝕊` with trivial action; π₀: ℤ/2 → (ℤ/2)² inclusion | Fails without finiteness; added as a negative-control Check |
| §3.1 compatibility | Z = S⁰, T = Hℤ, p = 2, 3 | lax composite = T^{tC_p} ⊗ the unit `𝕊 → 𝕊^{tC_p}`, then the product: identity by unitality. π₀ is the identity on ℤ/2 and ℤ/3, equal to the fixed-point map | Pass, with no Segal input |
| §3.1 compatibility | Z = C_{p+} | source `T^{tC_p} ⊗ Σ^∞(pt)` = 0, so both maps are 0 | Pass |
| §3.1 compatibility, route | universal property | source T ↦ `T^{tC_p} ⊗ K` (K finite, dualizable) and target T ↦ `(T ⊗ Σ^∞Z)^{tC_p}` are both exact and vanish on induced T (projection formula). Restricted along `can ⊗ id`, both equal `T^{hC_p} ⊗ K → (T ⊗ Σ^∞Z)^{hC_p} → (T ⊗ Σ^∞Z)^{tC_p}` | Route valid, using the inputs of BordismFormalGroups §F6.5 |
| §3.6 factorization and bound | R = 𝔽_p, B = S^{λ₁} ∧ T_+ (≃ S² ∨ S³ underlying), N = 3 | π₁: 0 vs π_{−2}THH^{tC_p} = 𝔽_p (not an isomorphism); π₂: 𝔽_p → 𝔽_p; π₃: 𝔽_p → 𝔽_p | Isomorphism for j ≥ N − 1 = 2, consistent with the stated j ≥ N and with the existing Check |
| §3.6 bound | B = B′ = S⁰, ψ = id, N = 0 | restricted Frobenius = φ_p. π_{−1}: 0 → 0 isomorphism; π_{−2}: 0 → 𝔽_p not an isomorphism | Consistent with the bound N − 1 |
| §3.6 fibre degrees | R = 𝔽_p | `THH(𝔽_p)^{tC_p}` has 𝔽_p in every even degree; fibre of the connective cover = `Σ^{−1}τ_{≤−1}`, with homotopy in degrees −3, −5, … | Matches "≤ −3" |
| §3.6 finiteness | B = S⁰, B′ = S⁰ ∨ ET_+ versus S⁰ ∨ T_+ | 𝔽_p → 𝔽_p² versus the identity of 𝔽_p | The existing Check still holds |
| Contract, RefinedTraceMethods §2.3 | its own Hℤ Check | `π₀((Hℤ)^{tC_p}) = ℤ/p`, not ℤ_p; no sphere statement | Contract now matches the supplier's (i)–(iii) |
| Contract, BordismFormalGroups §F6.5 | main lines 2263–2273, 2320–2333 | universal exact lax approximation killing the induced ideal D; projection formula; Tate kills D; lax symmetric monoidal Tate with compatible `can` | Contract now matches the supplier |

## Ownership, citations and overlaps

- **Ownership by object.** `roadmaps grep` on main and the open heads found no other owner of the Borel comparison `T^{tC_p} ⊗ Σ^∞Z^{C_p} ≃ (T ⊗ Σ^∞Z)^{tC_p}` for finite C_p-complexes, or of its compatibility with the lax structure. The searches covered finite C_p-CW, `Z^{C_p}`, C_p-singular set, fixed-point inclusion and speirs-trunc. RefinedTraceMethods §2.12 (isotropy separation) concerns genuine spectra, a different object. This roadmap stays the owner of §3.1.
- **Resolved citations, each rechecked this round:**
  - RefinedTraceMethods §2.3 and its Scope: open head, lines 8 and 558–586.
  - StableHomotopyKTheoryPartII §2.7: open head, lines 374–376.
  - BordismFormalGroups §F6.5: main, lines 1526 and 2263–2333.
- **Overlaps.** No downstream roadmap cites RefinedTraceMethodsPartII (`roadmaps grep`), so the deleted §3.1 statement breaks no citation. No section, layer or target id changed. The citation-lead `BigWitt.TruncationSet` is the QWittVectors supplier name, unchanged from earlier rounds.

## Notes for the maintainer

- This roadmap no longer states the p-completed lax comparison `T^{tC_p} ⊗ (Σ^∞Z)^{tC_p} → (T ⊗ Σ^∞Z)^{tC_p}`. If a later roadmap needs it, its natural home is after StableHomotopyKTheoryPartII §2.7. That roadmap does not state it now.
- No Lean name changed. No supplier gap was added or removed: `bigwitt-ptypical-decomposition` and `perfect-homotopy-invariance` are unchanged.
- No source was fetched. No suspicious instructions were found in the review text.
