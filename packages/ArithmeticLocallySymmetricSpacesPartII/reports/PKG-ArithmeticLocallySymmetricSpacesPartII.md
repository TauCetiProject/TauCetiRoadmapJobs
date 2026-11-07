# PKG-ArithmeticLocallySymmetricSpacesPartII

Deliverables: `packages/ArithmeticLocallySymmetricSpacesPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (one entry added, two `cited_for` lists extended). `design/plan.json` is unchanged: its six supplier gaps still cover everything the package needs from other roadmaps, and nothing new was needed.

## Headline theorems

| Headline | README | Status |
| --- | --- | --- |
| Fu's local homology theorem: one proper-face polynomial bounds `|dim H₀(G,M⊗W_k) − rank·D(k+1)|` and every `dim H_i`, i ≥ 1 | §2.6 | Not statable at the pins. It needs the classical Ore division ring and skew rank of `ℚ_p ⊗ ℤ_p[[G]]`, and rational completed Iwasawa homology with the diagonal action. Tau Ceti has `TauCeti.completedGroupAlgebra` and the module structure on a topological module, but neither of these. |
| Sharp cusp-form bound `dim S_κ(K_f) ≤ C Δ(κ)/min_v κ_v` at every compact open, and its corollaries §§4.3–4.4 | §4.2 | Not statable at the pins: there is no adelic space of cusp forms `S_κ(K_f)`. |
| The ordinary-cohomology form of §4.2: every number field that is not totally real, every subgroup Γ ≤ SL₂(O_F) containing a principal congruence kernel, every embedding tuple t, every degree | §4.2 | **Stated**: `finrank_groupCohomology_weightRep_le` |
| Two-sided linear growth of `dim H^i(Γ,E_n)`, i = 1, 2, for every Bianchi congruence subgroup | §5.8 | **Stated**: `bianchi_groupCohomology_linear_growth` |
| Cuspidal, interior and compact-support forms of the two-sided Bianchi bound | §5.8 | Not statable at the pins: the Borel–Serre quotient, H_c, H_! and the cuspidal subspace do not exist there. |

Simple definitions added only so the headlines can be stated, both with real bodies: `embeddingStdRep` (Γ → GL₂(ℂ), applying σ to the matrix entries) and `weightRep` (the `Rep ℂ Γ` on `⊗_σ Sym^{t_σ}(ℂ²)`, built from `TauCeti.symPowerRep`, `PiTensorProduct.mapMonoidHom` and `MonoidHom.pi`). For an imaginary quadratic F, `weightRep Γ (fun _ => n)` is E_n, because the two embeddings are complex conjugate. So no separate E_n definition and no choice of embedding are needed.

## Corrections and changes relative to the accepted design

1. **Headline generality widened to what the sources and routes support.** The design's acceptance test was the Bianchi statement at *neat* levels and needed a neatness predicate. Both statements now hold at every congruence subgroup:
   - Upper bounds: restrict to a neat auxiliary level from §3.2. Corestriction after restriction is multiplication by the index, which is invertible in ℂ (fgt10 §3.2). FGT's Theorem 4.17 is itself at the torsion group SL₂(O_F).
   - Degree-two lower bound at non-neat Γ: a new route in §5.7. Take invariants under Q = Γ/Γ′ for a neat normal Γ′. The interior pairing on the connected oriented 3-manifold Γ′\X is Q-equivariant because SL₂(ℂ) preserves orientation, and E_n is self-dual.

   This also removed the need to define neatness in Lean.
2. **§3.4 widened from admissible κ to every t ∈ ℕ^d.** The local theorem §2.6 holds for every k ∈ ℕ^m, and nothing in the descent uses admissibility. The Lean headline quantifies over all t, including tuples where conjugate embeddings carry different exponents.
3. **§4.2** gains the ordinary-cohomology statement in embedding coordinates, with its route: §3.2 auxiliary level, strong approximation, §3.4, §0.2 and restriction injectivity. It also gains a negative control showing r₂ > 0 is needed: for F = ℚ, `dim H¹(SL₂(ℤ),Sym^k) = 2dim S_{k+2}+1` grows like k/6.
4. **§3.1** gains the `embeddingStdRep`/`weightRep` definitions, four API bullets and three Checks. One Check separates the conjugate embedding from the same embedding on E₁.
5. **§5.8** is restated: ordinary H^i two-sided at every congruence level; cuspidal, interior and compact support at neat levels. It gains two Checks: the parity oscillation of the base-change slopes, and why n₀ is needed.
6. **Review note F01** applied. The review said `serre77` was already in `sources.toml`; it was not in the manifest at this head. It is now fetched through the sources service from the legal Numdam copy (id `AST_1983__46__1_0`; the `AST_1977` id returns 404) and recorded as certified. Its locators are checked at serre77 line 625 (I §1.5.3, p. 20), lines 1521–1530 (I §4.2 Example (c), p. 52) and lines 5193–5196 (II §2.8, p. 169). §5.3 now states the amalgam formula `dim H¹ = dim W − dim W^{ℤ/4} − dim W^{ℤ/6} + dim W^{SL₂(ℤ)}` (−I acting trivially) with those locators, and References lists serre77.
7. **Review note F02** applied: §5.6 now says B_F ≠ 0 forces 2 ∈ R, and drops the vacuous branch.
8. **House style.** 124 TeX-style sub- and superscripts (`_{…}`, `^{…}`) outside code spans, inherited from the design, are now inside code spans. One mathematical use of "removed" was reworded.
9. Mathlib supplier contract extended with the declarations the Lean file uses, each with file and line at the pin: `Matrix.SpecialLinearGroup.map`, `Matrix.SpecialLinearGroup.toGL`, `PiTensorProduct.mapMonoidHom`, `MonoidHom.pi`, `Rep.of`, `NumberField.IsTotallyReal`, `NumberField.IsTotallyComplex`.

What the README cannot support: nothing beyond the six declared supplier gaps (flat-microlocalisation, algebraic-quotient-comparison, integral-central-faithfulness, generic-cyclic-growth, skew-rank, canonical-dimension-zero), all on NoncommutativeAndEquivariantIwasawa.

Notions moved down from later roadmaps: none.

## Duplication sweep and ownership

Searched by object, with `roadmaps grep` over main (822b5aa) and the 354 open heads, plus the pinned libraries:

| Object | Finding | Action |
| --- | --- | --- |
| Tensor of symmetric powers over embeddings | GL2AutomorphicRepresentationsAndTransfer §R16.6.3: the Hilbert weight representation of Res GL₂, for totally real F, over real embeddings, with determinant twists | Different object. Kept, and the difference is stated in Scope: all complex embeddings of any number field, conjugate pairs, SL₂ subgroups, no twist. |
| Symmetric-power representation | Tau Ceti `TauCeti.symPowerRep` | Consumed, not redefined. |
| Group cohomology, principal congruence kernel | Mathlib `groupCohomology`; kernel of `Matrix.SpecialLinearGroup.map (Ideal.Quotient.mk 𝔞)` | Written inline; no new definition. |
| Fu / FGT bounds, Bianchi cohomology growth, proper-face polynomials, fixed-type multiplicities | Only bibliography mentions (CompletedCohomologyPartII, NoncommutativeAndEquivariantIwasawa). KleinianGroups covers Bianchi covolumes, a different object. | None to remove. |
| Completed group algebra | Tau Ceti `TauCeti.completedGroupAlgebra` | Cited in the Suggested.lean docstring as present but not enough for §2.6. |

**Duplication removals: none.** Supplier citations re-resolved against their current heads: `roadmaps resolve` finds no cross-roadmap citation and no Lean name missing. NoncommutativeAndEquivariantIwasawa §0.14 `twist_free` and §0.15 `IwasawaHomology.freeTwist` / `IwasawaHomology.vanish_above_dim` were read at the head (its README lines 555, 582). Ownership against the open pull requests was checked through `roadmaps grep` over their heads. Board packages: the scratch index lists 14 packages, none overlapping.

## Adversarial pass (statements written or changed in this package)

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| `finrank_groupCohomology_weightRep_le` | F = ℚ, Γ = SL₂(ℤ) (excluded by `¬IsTotallyReal`) | `dim H¹(SL₂(ℤ),Sym^k) = 2dim S_{k+2}+1`: 3 at k=10, 5 at k=22; right side with a=k+1 is constant C | Hypothesis needed; added as a negative-control Check |
| same | F = ℚ(i), t = (n,n), a = n+1; a = 1 | ≤ C(n+1); a = 1 gives only C(n+1)² | The saving comes from a; Check added |
| same | t = (n,0) | min(t+1) = 1, bound C(n+1) | No false saving claimed |
| same | t = 0 | dim H^i(Γ,ℂ) ≤ C | Fixed Betti numbers |
| same | 𝔞 = ⊥ | kernel trivial, so Γ could have infinite index | `h𝔞 : 𝔞 ≠ ⊥` kept |
| same | i > 3d | cd(Γ′) ≤ dim X = 2r₁+3r₂ < 3d, so vanishes | Holds for all i |
| same, finite-dimensionality | Γ with −I, Σt odd | −I acts by −1, so cohomology is 0 (finite) | Holds |
| `bianchi_groupCohomology_linear_growth` | Γ = SL₂(ℤ[i]), n = 0 | H¹ = 0 (finite abelianisation) | n₀ needed; Check added |
| same | ℚ(i): slopes A_F ± B_F | 5/24+1/8 = 1/3 at odd n; 5/24−1/8 = 1/12 at even n; n=99 gives ≈33.3, n=100 gives ≈8.4 | A first draft had the parities reversed; corrected in the Check |
| same | −I on E_n; on Sym^n⊗conj Sym^m with n+m odd | (−1)^{2n} = 1; −1 | No central vanishing for E_n; Check added |
| same, Lean context | `#check @` of all four declarations | Every binder present: `IsTotallyComplex`, `finrank ℚ F = 2`, `𝔞 ≠ ⊥`, kernel containment | No section variables; nothing dropped |
| §5.7 degree-two route at non-neat Γ | Q orientation-reversing (hypothetical) | Dual would be twisted by the orientation character | Excluded: SL₂(ℂ) is connected, so it acts trivially on H_c³(Γ′\X) = ℂ; Check added |
| same | E_n ≅ E_n* | symplectic form on ℂ² and its conjugate | Self-dual |
| `weightRep` | t = 0 | empty tensor product, dim 1, trivial | Not the zero representation; Check |
| same | F = ℚ(i), γ = (i 1; −1 0), det = 0·i − (1)(−1) = 1 | traces i and −i; on E₁: i·(−i) = 1, while the same-embedding model gives i² = −1 | Excludes the wrong model; Check |
| same | t = (1,0), −I | acts by −1, so all H^i(SL₂(ℤ[i]),·) = 0 | Check |
| same, dimension | signature (1,1), t = (2,2,2); (0,1), t = (2,2) | 27; 9 | Matches §3.1 Checks |
| §5.3 amalgam formula (F01) | N=1, σ=1, k=12, W=V₁₀ | `11 − (11−1)/2 − (11−2)/3 = 3`; `3 − 1 + 0 = 2 = 2·dim S₁₂` | Agrees |
| same | k = 2, W = ℂ | `1 − 1 − 1 + 1 = 0` | Agrees with S₂ = 0 |
| §5.6 positivity (F02) | ℚ(i), s=1; ℚ(√−5), s=2 | 5/3 = (5/3)·3⁰; 5 = (5/3)·3 | Bound tight and valid; 2∉R with B_F ≠ 0 impossible (−d ≡ 1 mod 4 forces d ≡ 3 mod 4) |
| §4.2 route, restriction | Γ = SL₂(O_F), index r | cor∘res = r·id, r ≠ 0 in ℂ | Injective without neatness |

The design's own rows, rederived by the accepting review with values (§§0–5, gaps), were not changed by this package.

## Elaboration

`lake env lean packages/ArithmeticLocallySymmetricSpacesPartII/Suggested.lean`, run from the content checkout after `lake build TauCeti.RepresentationTheory.ClassicalGroups.SymmetricPower`: **2 warnings, both `declaration uses 'sorry'`** (lines 66 and 85). No errors and no other messages.

The `#check @name` comparison was run in a scratch file for all four declarations; every elaborated type matches its README statement. Nothing changed, because no declaration relies on section `variable`s.

Gate on a scratch copy of the folder: every count is 0 except `git=1`, which comes from the scratch copy not being a git repository.

## Dependency check

```text
depcheck: 56 roadmaps, 647 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

## Sources

- Added `serre77`: certified, open repository (Numdam).
- `needs-references.toml`: two failed fetch attempts with the wrong Numdam id created it; it was deleted once the correct id resolved. No text is outstanding.

No untrusted text contained instructions.
