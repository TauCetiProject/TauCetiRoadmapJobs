# FIX-PKG-PurityForFlatCohomology~2

## F01 (P2) — applied differently

I verified the duplication. PrismaticCohomologyPartIII §6.0 states `perfectDieudonneComparison`, `pContinuity` and `excision`. DeformationAndDerivedPatchingAlgebra states `localCI_parafactorial`. EtaleDualityAndPerverseSheavesPartII EQ.7 states the local Lefschetz theorem. SchemeAndStackFoundationsPartII Layer 1 states the ample-bundle Brauer comparison. All four come later in the merge order (lines 67, 69, 119, 198; this roadmap is at line 66).

Change: the "Downstream boundary" paragraph, which read "consume … from here" as a present fact, is now **Owned here and imported by later roadmaps**. It lists the objects one section at a time (Layer 2; Layer 3; §§1.4–1.5; §§1.1, 1.3, 7.4–7.6; §7.11), each with the matching statement of the later roadmap. `## Downstream consumers` now says "import".

Not applied: the reviewer's §§7.15, 8.2 and 8.13 entries for SchemeAndStackFoundationsPartII. Its design states only the Brauer comparison (its §1.2), not tori or residues, so I claim §7.11 only. Removing the duplicates from those four roadmaps is up to them and cannot be done in this package.

## F02 (P3) — applied

Verified. PerfectoidQuotientsPartII §Q7.1 defines only ind-*f*ppf maps. Their stability is §Q7.3. CS24 line 1544 attributes pro-ppf stability to §2.3.3, which proves it only in the faithfully flat case (CS24 lines 986–988).

Change in §2.3: stability of pro-ppf maps under base change and composition is now a target here, with its own proof (base change is formal; for composition, the Stacks 07C3 factorization plus limit descent of flatness, as in CS24 footnote 13). §Q7.1/§Q7.3 are cited for the ind-fppf case only.

Same pattern repaired in: the §2.3 *Needs*, §3.4 *Needs*, the Layer 2 and Layer 3 Dependencies, and the PerfectoidQuotientsPartII supplier contract (which now lists §§Q7.1 and Q7.3).

## F03 (P3) — applied

Verified with the reviewer's witness: a rank-one valuation ring with `𝔪 = 𝔪²` has `R̂ = R/𝔪`, a field, so `IsCompleteIntersection R` holds with `virtualDimension R = 0`.

Changes:
- Scope: "predicate on Noetherian local rings" → "on local rings (used only for Noetherian ones)".
- Convention 2: Cohen's existence theorem is now stated only for Noetherian `R`; new sentence "every statement about them is made for Noetherian `R`".
- §1.1: a note on `sInf ∅ = 0`; "in the API below `R` is Noetherian".
- §1.1: a new negative-control Check (the valuation ring above).
- The docstrings of `IsCompleteIntersection` and `virtualDimension` gain one sentence each.

No Lean type changes.

## F04 (P3) — applied

Verified: with `d = c + 1` (`c ≥ 1`), `max(d − 1, 1) = c`, so §7.1 gives bijectivity for `i < c` and injectivity at `i = c`.

Check: "for `i < c − 1`" → "for `i < c`, and `H^c ↪`", with the case `c = 2` spelled out. It also gains a sharpness witness at `c = 1`: `X = 𝔾_m`, `Z = {1}`, `H^1 = ℤ/p ↪ (ℤ/p)² = ⟨[t], [t−1]⟩`, injective but not onto.

No other occurrence of the bound (grep for `c − 1`).

## F05 (P3) — not actionable in this package: whether the intake accepts the five-entry `gaps` list is the intake's decision

The current `gaps` list holds five entries in the intake schema. All are reproduced verbatim under "Exact supplier contracts", and all name earlier suppliers. Re-adding the design's entries (`SF-PII-*`, `EDP-PII-local-lefschetz`, `BR-RESIDUE-*`) would name later roadmaps as suppliers, which is an upward dependency. This brief only allows edits to the `gaps` list for a needed supplier gap. Unchanged.

## F06 (P3) — applied differently

Verified: ArithmeticGaloisDuality §R02.2.4 exists (open head) and is earlier in the merge order (line 48). It is stronger than the review says: its Witt sequence covers every complete discretely valued `K` with perfect residue field, in every characteristic.

Changes:
- §8.15 route now cites it for exactness in the complete, perfect-residue case. The finite-coefficient form with `q = 2`, `r = 1` covers `k⟦t⟧` with `ℓ ≠ char k`. Both residues are the valuation map up to the sign of `H²(G_k, ℤ) ≅ H¹(k, ℚ/ℤ)`, so they have the same kernel.
- Added to the §8.15 *Needs*, the Layer 8 Dependencies, the scope list, the build diagram, and a new "From TauCetiRoadmap.ArithmeticGaloisDuality" contract.

Not applied: the claim that `χ ∪ [t]` and `(L/K, Frob_q, t)` have the same residue in the supplier's normalisation. That rests on the sign of the comparison from cup products to cyclic algebras, which neither roadmap states, so I did not write it as a fact. Instead the new `𝔽_q⟦t⟧` Check pins Convention 8: `(L/K, Frob_q^{±1}, t)` have residues `±χ` and are inverse classes. A geometric normalisation has the same kernel and fails only that Check.

## Checks run

- **Elaboration:** `lake env lean packages/PurityForFlatCohomology/Suggested.lean` from the content checkout exits with exactly four `declaration uses 'sorry'` warnings (lines 116, 127, 137, 149) and nothing else.
- **`#check` audit:** I put `#check @name` for all nine declarations in one scratch file and elaborated it once. The elaborated types are unchanged from `signatures.md` (only docstrings changed) and agree with README §§0.1, 1.1, 1.8, 7.7. No section binder lost (there is no `variable` block).
- **Dependency check** (`gate --depcheck … --movable`):

      depcheck: 56 roadmaps, 650 edges, 0 problem(s)

  No UPWARD, CYCLE or `moved:` line. The extra edge is ArithmeticGaloisDuality, which is earlier in the merge order.
- **`roadmaps resolve`:** one lead, "PerfectoidQuotientsPartII §§Q5.2". That roadmap is an accepted board design (`packages/PerfectoidQuotientsPartII/design/README.md`, merge order line 64) and its §Q5.2 exists there, so this is a false positive of the index. No Lean name leads.
- **Ownership against open pull requests:** checked with `roadmaps grep` (index of 2026-10-26) for the objects F01 and F06 touch.

## Adversarial pass (new or changed statements)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.3 pro-ppf stability, base change | `A → A′ = colim A′_i` flat fp; `A → C` | `C ⊗ A′ = colim C ⊗ A′_i`, each flat fp over `C` | holds | target added |
| §2.3 pro-ppf composition | `A → A′ → A″`, `B` fp over `A` | `A′⊗B → S → A″` descends to `A′_j⊗B → S_j`, `S_j` flat fp over `A′_j`, hence over `A`; `B → S_j → A″` | holds without faithful flatness | target added |
| §2.3 pro-ppf degenerate | `A′ = 0` (empty colimit of the zero algebra) | `0` is flat fp; pro-ppf yes, pro-fppf no (not faithfully flat) | consistent with Q7 E5 (nonempty products for ind-fppf) | none |
| §1.1 non-Noetherian | rank-one valuation ring, `𝔪 = 𝔪²` | `R̂ = R/𝔪`, presentation `k → k`, ker `0 = ofList []`, `vdim = 0 − 0 = 0` | predicate holds, value 0, no headline applies (all need `IsNoetherianRing`) | Check added |
| §1.1 no presentation | non-Noetherian `R` without any regular `B ↠ R̂` | set empty, `sInf ∅ = 0` (ℤ) | junk, unused | prose note |
| §7.1 Check, `c = 2` | smooth surface, `Z` a point, `d = 3` | regular dim 2 ≥ max(2,1); vanishing of `H^i_Z` for `i < 3`: bijective `i ≤ 1`, injective `i = 2` | matches §6.5 (`i ≤ dim R`) | Check corrected |
| §7.1 Check, `c = 1` | `𝔾_m` over `k = k̄`, `p ≠ char k`, `Z = {1}` | `H^0`: `ℤ/p = ℤ/p`; `H^1(X) = ℤ/p⟨t⟩`, `H^1(X∖Z) = (ℤ/p)²⟨t, t−1⟩`, Pic both 0 | injective, not onto: bound sharp | witness added |
| §7.1 Check, `c = 0` | `Z` a component | `max(d−1,1)` with `d = 1` needs regular dim ≥ 1, fails at the generic point of a component | excluded by `c ≥ 1` | hypothesis `c ≥ 1` added |
| §8.15 via Witt sequence | `ℤ_p`; `𝔽_q⟦t⟧`; `ℂ⟦t⟧`; imperfect separably closed `k⟦t⟧`, `ℓ = p` | `0 → 0 → ℚ/ℤ ≅ ℚ/ℤ`; `Br(𝔽_q)=0`, residue injective; `Br = 0` both sides; not covered (k imperfect), own route kept with the §8.14 exclusion | exactness transfers (same kernel) | route + Needs |
| §8.15 sign witness | `(L/K, Frob_q, t)` vs `(L/K, Frob_q^{-1}, t)`, `[L:K] = n` | residues `χ`, `−χ` with `χ(Frob_q) = 1/n`; classes inverse, order `n` | geometric normalisation detected only here | Check added |
| F01 ownership prose | depcheck after edit | 0 problems; no `*Needs:*` names a later roadmap | direction unchanged | prose only |

## For the maintainer

- No Lean name changed. ArithmeticGaloisDuality §R02.2.4 is a new supplier citation, and PerfectoidQuotientsPartII §Q7.3 is newly cited.
- The four later roadmaps of F01 (PrismaticCohomologyPartIII §6.0, SchemeAndStackFoundationsPartII Layers 0–3 and 1.2, EtaleDualityAndPerverseSheavesPartII EQ.7, DeformationAndDerivedPatchingAlgebra §6.9 `localCI_parafactorial`) still plan the objects themselves. They need to be repointed to this roadmap's sections when their jobs next run.
- No source was fetched or added; `needs-references.toml` was not written.
