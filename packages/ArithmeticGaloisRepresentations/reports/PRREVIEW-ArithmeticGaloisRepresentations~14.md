# Review of ArithmeticGaloisRepresentations (pull request #856 at 691e613)

**Verdict:** needs changes

Full review of the head the previous review read (the folder has no diff since then). The gate, the dependency check, the elaboration, the `#check` pass and the one-tactic probe were rerun and pass. The fifteen seeded targets were checked against the cached sources. Six findings remain. Two are P2: a Lean headline that restates a supplier's theorem, and a conductor headline the module docstring wrongly calls not statable. Four are P3: a locator that does not contain its statement and preprint pagination presented as journal pagination; seven inline-cited works missing from References; a false step in the §1.12 proof route; and the pull-request description, which is only partly repaired.

## R01 (P2) — `GaloisRep.grothendieck_quasiUnipotent` restates the supplier's Grothendieck monodromy theorem

**Location:** `TauCetiRoadmap/ArithmeticGaloisRepresentations/Suggested.lean:108–126` (and docstring line 16, "Grothendieck monodromy (Layer 2)"); `README.md:1894–1905`, "specialize SmoothRepresentationsOfLocalGroups SR.5.2 `grothendieck-monodromy` … *Lean:* `GaloisRep.grothendieck_quasiUnipotent`".

**Claim:** the declaration is this roadmap's headline for Layer 2, a specialization of the supplier's theorem to `ContinuousRep`.

**Witness:** the SmoothRepresentationsOfLocalGroups head (#1688) states the theorem under SR.5.2 *wd-complete-coefficients* as `grothendieck_quasiUnipotent_complete` (its `Suggested.lean:348`, README heading "Grothendieck monodromy"). Both statements use the same native `Representation`, the same joint-continuity hypothesis and the same `∃! N` conclusion. Only the coefficients differ: complete normed `E ⊇ ℚ_ℓ` there, finite `E/ℚ_ℓ` with the module topology here. `ContinuousRep` appears in neither, so the "specialization" adds nothing.

**Repair:** delete `GaloisRep.grothendieck_quasiUnipotent` from `Suggested.lean`, the *Lean:* line at `README.md:1905`, and "Grothendieck monodromy (Layer 2)" from the module docstring. In the docstring, name the §2.4 `ContinuousRep` specialization as not statable, since EtaleCohomologyFoundations §F.4.0's `ContinuousRep` has no carrier at the pins. Cite the supplier target by its id, *wd-complete-coefficients* (`grothendieck_quasiUnipotent_complete`), at `:637`, `:673`, `:1877`, `:1895`, `:1903` and `:2435`. Checked: the file then states 19 theorems, none of which uses the deleted one, and §2.4's *Needs:* line already names the supplier.

## R02 (P2) — Conductor integrality is statable at the pins at finite level but is declared not statable

**Location:** `Suggested.lean:26–34`, "The all-perfect-residue conductor, integrality, induction, reduction and wild-bound statements use the absolute upper filtration … has no Mathlib or Tau Ceti carrier"; `README.md:2837–2839`, "for finite Galois `L/K` and a representation `W` of `Gal(L/K)` in characteristic zero, `a(W), Sw(W) ∈ ℕ`".

**Claim:** conductor integrality needs the absolute upper filtration and so cannot be stated.

**Witness:** the first clause of §3.5's integrality concerns a representation of a finite Galois group. Its conductor is the lower sum `Σ_{i≥0} (|G_i|/|G_0|) codim W^{G_i}` (`README.md:2662`; Serre 1961 `52152ad2…` lines 1288–1291, (28)–(29), with Thm 2 on p. 138). That sum uses only lower groups. Tau Ceti pins them as `TauCeti.IsLocalRing.ramificationGroup` (`RingTheory/LocalRing/RamificationGroup.lean:114`, for any group acting on a local ring; it is the carrier RamificationOfCompleteDiscretelyValuedFields §3a.1 is stated on, `README.md:415`), and as `TauCeti.LocalFieldsRamification.lowerRamificationGroup` (`NumberTheory/LocalField/RamificationGroup.lean:97`). The same holds for §6.6's wild bound, which is stated for finite image `G = Gal(L/K)` (`:4147–4151`).

**Repair:**
- Add to `Suggested.lean` a real-bodied, `ℚ`-valued finite-level Artin (and Swan) conductor: the lower sum over `TauCeti.IsLocalRing.ramificationGroup (L ≃ₐ[K] L) 𝒪_L i`, as a finsum over `i : ℕ`.
- State Artin's theorem in the conductor setting: `∃ n : ℕ, a(W) = n` for `W` a finite-dimensional characteristic-zero representation of `Gal(L/K)`, and likewise for `Sw`.
- Restrict the docstring's "not statable" sentence to the `G_K`-level conductors.
- Recomputed on the README's own instance: `χ_8` on `Gal(ℚ_2(ζ_8)/ℚ_2)` has lower orders `4, 4, 2, 2, 1`, so the sum is `1 + 1 + 1/2 + 1/2 = 3 = a(χ_8)`, and `W = 0` gives `0`.

## R03 (P3) — A KW (I) and DDT locator does not contain its statement, and the KW pages are preprint pages

**Location:** `README.md:3060–3063`, "conjugate to `PSL₂(F_0)` or `PGL₂(F_0)` with `F_0 = F_p(tr(g)²/det g : g ∈ G)` (KW (I), §6, p. 10)"; `Suggested.lean:158–159`, "including the trace-ratio field … (DDT, Theorem 2.47; KW I, §6)"; `README.md:5411–5412`.

**Claim:** KW (I) §6 and DDT Thm 2.47 identify the field of the standard image as the trace-ratio field. The cited pages are pages of Invent. Math. 178.

**Witness:**
- KW (I) `3bf48fb9…` lines 349–353 (preprint p. 9) recalls Dickson with "`F'` a finite subfield", and no trace field. DDT `254f6e29…` lines 3024–3028 (p. 81) has none either.
- The cache is the HAL preprint (§1.5 on p. 4, Lemma 6.1 on pp. 9–10, line 368). References gives pp. 485–504, where pages 4 and 10 do not exist; KW (II) "p. 40" likewise lies outside 505–586.

**Repair:**
- At `:3062–3063` and in the Lean docstring, cite DDT Thm 2.47 and KW (I) §6, p. 9 for the list only.
- Add the one-line proof of the field: `tr²/det` is invariant under scaling and conjugation, so it lies in `F'`. The squares of the traces of `SL₂(F')` generate `F'`; for `SL₂(F_9)`, `F_3(tr²) = F_9`.
- Change "Lemma 6.1, p. 10" to "pp. 9–10".
- Append "(locators use the HAL preprint pagination)" to both KW entries in References. The manifest's `version_note` already says this.

## R04 (P3) — §1.12's reduction to a finite quotient is false for ℓ-adic coefficients

**Location:** `README.md:1452–1453`, "All five reduce to the finite quotient `Γ/N` because the representations are continuous with open kernels on finite-dimensional spaces".

**Claim:** continuous finite-dimensional representations over a field have open kernels.

**Witness:** `χ_ℓ : G_{ℚ_p} → GL₁(ℚ_ℓ)` (`ℓ ≠ p`) is continuous with infinite image, so its kernel is not open. §5.12 applies §1.12 with `E` algebraically closed of characteristic zero, `ℚ̄_ℓ` included (`:3574`, `:3581`). The five statements remain true: the Tau Ceti inputs `Representation.isSemisimpleRepresentation_comp_subtype` (`Induction/Clifford/Basic.lean:327`) and `Rep.mackeyDecomposition` (`Induction/Mackey/Decomposition.lean:392`) hold for any `Group G`.

**Repair:** replace the sentence by: "None needs a finite quotient: Clifford's theorem and the averaging over the finitely many cosets of `H` (or `N`) hold for any group and finite-index subgroups; continuity only makes the stabilisers open." Checked on `χ_ℓ ⊕ 1` of `G_{ℚ_p}` restricted to `G_{ℚ_p(√p)}`: the restriction is semisimple and no finite quotient is used.

## R05 (P3) — References omits seven works cited inline

**Location:** `README.md:3608` (SGA 1, Exposé XIII, §2), `:2085` (Fulton–Harris, §11.1), `:3455` (Dixon–du Sautoy–Mann–Segal), `:3456`, `:4133`, `:4778` (Schneider, *p-adic Lie Groups*), `:2230` (Kudla, *Tate's Thesis*), `:1322` (Larsen 1995, Lemma 2.4), `:1566` (Rosengarten).

**Claim:** References lists every cited work.

**Witness:** none of these seven appears in `README.md:5338–5482`.

**Repair:** add full entries (authors, title, venue, year; SGA 1 with its open edition arXiv:math/0206203). Check that SGA 1 Exposé XIII §2 is the passage identifying `G_{K_C,U}` with `π₁(U)`; otherwise cite Stacks tag 0BQM alone, which states it (its Prop. 58.11.3).

## R06 (P3) — The pull-request description still misnames the ramification supplier and the open pull requests

**Location:** the description, captured as data for this round: "The general perfect-residue ramification package (LocalFieldsRamification Layers 3a/4a) and unit-filtration reciprocity (ClassFieldTheory Layer 7) are supplied by the amendment pull requests #1410 and #1411 to those roadmaps on main"; and "In other authors' open roadmap pull requests: LFunctions (#248) … CFSGBasicProperties (#446)".

**Claim:** the description lists the suppliers and their pull requests.

**Witness:**
- The README consumes RamificationOfCompleteDiscretelyValuedFields §§3a.1–4a.3, a new folder that is not on main (`:411–443`).
- It declares the reciprocity as `gap:unit-filtration-reciprocity` (`:450–459`); no amendment supplies it.
- LFunctions and CFSGBasicProperties are folders on main (`TauCetiRoadmap/LFunctions`, `TauCetiRoadmap/CFSGBasicProperties`).

**Repair:** replace the "Supplier amendments" paragraph with one sentence: the ramification package is RamificationOfCompleteDiscretelyValuedFields (#1410, new folder), and the reciprocity is the declared gap on ClassFieldTheory Layer 7. Describe LFunctions and CFSGBasicProperties as on main. Re-raised: R01 of the previous review. The reason it was left (the folder's commits cannot change the description) does not hold: the merge-order block has since been regenerated.

## Previous findings

- R01 (description): partly repaired. The merge-order block now names "#1410 (RamificationOfCompleteDiscretelyValuedFields)" and no longer names #248. The "Supplier amendments" paragraph is unchanged; this is R06 above.

## Verified sound

**Gate, dependency check, build, signatures, probe.** The gate as prescribed returns every check `0` and `OK`; the worker's run also has `build=0`. `git diff --stat origin/main...HEAD` outside the folder is empty. The dependency check reports `depcheck: 240 roadmaps, 2383 edges, 0 problem(s)`, with no UPWARD, CYCLE or `moved:` line.

`lake env lean` on `Suggested.lean` exits 0 with exactly 20 `declaration uses sorry` warnings, at lines 56, 66, 77, 110, 145, 160, 191, 231, 248, 262, 276, 294, 322, 333, 396, 409, 420, 429, 446 and 467. Each import's object file is present.

A `#check @name` file for all 33 declarations elaborates (exit 0, 15 s). Each type was compared with its README statement; no binder is lost (for example `isAdequate_tensor` keeps `[Finite r₁.range] [Finite r₂.range]`, `hp`, `h₁`, `h₂`, `horder`, `htensor`). The probe replaced every `sorry` by `first | rfl | simp | infer_instance | decide | trivial`: 20 errors at the 20 theorem lines, so no padding.

**Supplier order.** Every cited roadmap is on main (`TauCetiRoadmap/` or `Completed/`) or earlier in the merge order: RamificationOfCompleteDiscretelyValuedFields (2), PadicPeriodRings (18), SmoothRepresentationsOfLocalGroups (22), IntegralHeckeAndGaloisDeterminants (23), PadicLocalLanglandsForGL2Qp (29), AdelicAlgebraicGroups (31) and AbelianSchemesAndArithmeticModuli (41). This roadmap is at 42. The roadmaps named as downstream owners are all later: ArithmeticGaloisDuality 43, InverseGalois… 44, FiniteFlat… 46, NeronModels… 47, DeligneWeights… 78, AutomorphicLFunctions… 80, AutomorphicSpectralTheory 82.

`gap:unit-filtration-reciprocity` is precise (every `n ≥ 0`, both characteristics, finite abelian `L/F`, with closure in `G_F^{ab}`) and minimal. ClassFieldTheory on main states only the attained minima (`README.md:1425–1428` there). The package has no `design/plan.json`, so the README is the only place the slug is declared.

**Library declarations opened at the pins.** Tau Ceti:
- `IsLocalRing.ramificationGroup` (`RingTheory/LocalRing/RamificationGroup.lean:114`: elements acting trivially on `S/𝔪^{i+1}`, `⊤` for `i ≤ −1`);
- `LocalFieldsRamification.lowerRamificationGroup` (`NumberTheory/LocalField/RamificationGroup.lean:97`);
- `upperRamificationGroup` (`Herbrand/Basic.lean:417`);
- the prime-degree conductor criterion (`Norm/Conductor.lean`; no general Artin integrality, so R02 is not a duplication);
- `isSemisimpleRepresentation_comp_subtype` (`Clifford/Basic.lean:327`) and `conjSubrep` (`:114`), both over `[Group G]`;
- `Rep.mackeyDecomposition` (`Mackey/Decomposition.lean:392`, arbitrary `Group G`).

**Cross-roadmap citations resolved.**
- SmoothRepresentationsOfLocalGroups at #1688 (`roadmaps show`): SR.5.2 ownership (README lines 92–101), headings "WD linear substrate" (4485), "Nilpotent exp-log" (4493), "Grothendieck monodromy" (4636), *full-wd-construction* (4687), *classical-llc-normalization* (4743). The cited anchors resolve.
- IntegralHeckeAndGaloisDeterminants at #1689: `exists_realization_of_henselian` (its `Suggested.lean:205`) uses determinants and `eq_of_charpoly_frobenius` (:354) equality of determinants. Neither is this roadmap's trace-form Carayol theorem or its representation-level recognition theorem.
- EtaleCohomologyFoundations on main, §F.4.0 (`README.md:850–890`): stable lattices over finite `E` only, so `exists_integral_conj_GL` over `ℚ̄_ℓ` is not a restatement.
- ArtinRepresentations at #1711 consumes this roadmap's §§1.4, 2.5a, 2.7, 3.1–3.6, 4.1, 4.4, 5.1, 5.3 and 5.7 by name (its `README.md:125–141`, `:201–205`), so it is not a second owner.
- ProfiniteProPGroups (`Completed/`, `proPFrattini` at its `Suggested.lean:1842`) concerns pro-`p` groups, not compact matrix groups.
- `roadmaps grep` over every open head found no other declaration of `IsAdequate`, `IsEnormous`, a Carayol, Brauer–Nesbitt or projective-lifting theorem, or `IsComplexConjugation`.
- `scratch/overlaps.md` lists no dropped id and no conflicting head; `scratch/citations.md` lists only this roadmap's own declarations and the two ReductiveGroupsPartII `Building.*` names.

**Seeded sample** (locators opened in the cached texts).

| Target | What the cited text says |
| --- | --- |
| 1.2 | DDT lines 1866–1885 (§2.1, p. 50: `ε_ℓ(Frob_p) = p`), 1960–1983 (pp. 52–53: representations, `∧^iρ`, invariants); KW (I) lines 143–154 (§1.5, preprint p. 4: `χ_p`, `ω_p`). |
| 1.12 | Statements hold for any group (Tau Ceti inputs above); proof route fails (R04); Jacobson §5.2 by locator. |
| 2.3 | Serre 1987 lines 195–212 (n° 2.1, Prop. 1, p. 183) and 215–218 (n° 2.2: level 2 ⇒ irreducible); Serre 1972 `93970ed9…` lines 247 (Prop. 2, p. 264), 301 (Prop. 4, p. 265), 364–374 (fundamental characters, p. 267), 420–421 (Prop. 8, p. 269); Deligne 1973 `b03f483c…` lines 570 (2.2.2, p. 521), 621–633 (2.3, p. 523). |
| 2.6 | FSY `835580aa…` lines 2585–2592 (§5.3.2, p. 57: monodromy filtration, purity), 2629–2653 (Lemma 5.40, p. 58, over `ℚ_p`; its proof uses only `Nϕ = pϕN`, uniqueness of monodromy and exact `I_p`-invariants, so it carries over to finite `K/ℚ_p` with `q`). |
| 3.2 | Serre 1987 lines 100–108 ((1.2.1)–(1.2.2), p. 181); Serre 1961 `52152ad2…` lines 1316–1327 (Prop. 10, (33), p. 138). |
| 3.5 | Brumer–Kramer `fb60a47d…` (now in the cache) lines 116–119 ((2.5), p. 230: the conductor of an induced character) and 603–605 (p. 245: `dim ind_H(1)^N = [G : NH]`); Serre 1961 lines 1302–1311 (Thm 2 and (31), p. 138); Serre 1961 lines 942–950 (Prop. 4 and Remarque, p. 128) for §3.1. |
| 4.1 | Serre 1987 lines 165–181 ((1.3.8), p. 182: `det ρ(c) = −1`, automatic for `p = 2`, conjugate to `diag(1,−1)` for `p ≠ 2`); n° 3.3, p. 198 as before. |
| 5.5 | BLGGT `c953df62…` lines 3963–3995 (Lemma A.1.5 and proof, p. 85: the trace-dual-basis argument); Chenevier `f3c0e0d8…` lines 1346–1356 (Def.-Prop. 2.18, p. 32, whose last sentence `CH(D) = ker D =` kernel of the trace form gives the equal-trace clause), 1404 (Thm 2.22, p. 34). |
| 5.12 | BCGP25 Lemma 10.2.3 by locator (the arXiv v1 text was not re-read); statements recomputed below. |
| 5.13 | Kisin–Zhou `62d26eb9…` lines 2392–2409 (Prop. 5.3.5 and proof, p. 54: local systems on `C` with Frobenius polynomials equal on `U` have isomorphic semisimplifications by Chebotarev); Stacks `387b3fcf…` lines 64–68 (Lemma 58.2.2, tag 03QR) and 1278–1282 (Prop. 58.11.3, tag 0BQM). SGA 1: R05. |
| 6.2 | DDT lines 2108–2115 (Prop. 2.8(a), p. 56: `det ρ_{E,ℓ} = ε_ℓ` via the Weil pairing); Serre 1972 lines 1790–1793 (§5.2(iv), p. 304: complex conjugation has eigenvalues `{1, −1}`). |
| 6.3 | DDT lines 2151–2170 (Prop. 2.12(a)–(c), pp. 57–58: `(ε_ℓ *; 0 1) ⊗ δ`, unramified iff `ℓ | v_p(Δ) = −v_p(j)`), stated over `ℚ_p`; the README's local-field generality rests also on Silverman, *Advanced Topics* V.5, by locator. |
| 6.4 | Milne 2008 Prop. 10.23 and Ribet 1992 §3 by locator (not re-read this round); statements recomputed below. |
| 6.6 | Serre 1987 lines 1564–1620 (§4.9, Prop. 9 and (4.9.4), p. 215: `K` of characteristic 0, perfect residue field, `b(ρ) ≤ N e_K(c + 1/(p−1))`); proof on p. 216. |
| 7.9 | Thorne 2012 `537af005…` lines 265–271 (Def. 2.3, p. 7: `H⁰(ad⁰) = H¹(k) = H¹(ad⁰) = 0` plus the trace condition), 282–289 (Lemma 2.4(ii), `l ≥ 2(n+1)`); GN `068818a4…` lines 674–714 (Def. 3.2.1, Lemmas 3.2.3–3.2.5, p. 15). |

**Computed adversarial pass.** Matrices act on columns; `Φ` is arithmetic Frobenius and `F = Φ⁻¹`.

| Statement | Instances and computed values | Result |
| --- | --- | --- |
| 1.2 frames and Tate twists | `diag(ℓ,1)(1 a; 0 1)diag(ℓ⁻¹,1) = (1 ℓa; 0 1)`; for a unit `a` the reductions `(1 ā; 0 1) ≠ 1` are not conjugate, so not `GL₂(ℤ_ℓ)`-conjugate. `ℤ_3[√2]`: `2` is a non-square mod 3, residue `F_9`; `(1 1; 0 1)` has trace 2, det 1 in either order. `det ℤ_ℓ(1)(1) = χ·χ = χ²`. Characteristic `ℓ`: `μ_{ℓ^n}(F̄) = 1`, so `PadicTateTwist = 0` | Holds |
| 1.12 restriction and induction | `C_p` regular representation over `F_p`: restriction to `1` semisimple, the representation is not, and `[C_p : 1] = p = 0`. `GL₂(F₂)` on `F₂²` is simple; `(1 1; 0 1)` gives a non-split extension on the order-2 subgroup, with `[H : N] = 2 = 0`. Statements true for ℓ-adic `χ_ℓ ⊕ 1`; the proof route fails (R04) | R04 |
| 2.3 Dirichlet characters and finite order | Conductor 4: `5 ↦ 1`, `3 ↦ −1`, `−1 ↦ −1`. `(1 + ηA)(1 + ηB) = 1 + η(A + B)` and `(1 + ηA)² = 1`, so `(a_j) ↦ 1 + ηΣ a_j t^j` is a continuous homomorphism with infinite image and non-open kernel | Holds |
| 2.3 tame character sign | `w⁻¹α = ζα` gives `w(ζ)w(α) = α`, so `wσw⁻¹α = w(ζ ζ_σ α) = ζ_σ^{χ(w)} α`. On `I_L`: `π_K = uπ_L^e` gives `t_{ℓ,K}|_{I_L} = e·t_{ℓ,L}` (`ℓ ∤ e` is not needed for this identity) | Holds |
| 2.3 fundamental characters | `ω_2^{p+1} = ω`; a character extending to `G_{ℚ_p}` has `θ^p = θ`, while `ω_2^{p−1} ≠ 1`, so `ω_2` does not extend. `(p+1) | j`: `Ind χ = χ̃ ⊗ Ind 1`, which is `χ̃ ⊕ χ̃η` for odd `p` and the regular `C_2`-module for `p = 2` | Holds |
| 2.4 monodromy (R01) | `w ∈ G_K`, `σ ∈ J`: `ρ(wσw⁻¹) = exp(χ(w)t(σ)N)` and `ρ(w)exp(t(σ)N)ρ(w)⁻¹ = exp(t(σ)χ(w)N)` agree. `V = 0`: `N = 0`. `ℓ = p`: `χ_p(I_p) = ℤ_p^×` is not unipotent. Same conclusion as the supplier's `grothendieck_quasiUnipotent_complete` | R01 |
| 2.6 Jordan strings | `[E,N]e_i = ((i+1)(d−i) − i(d−i+1))e_i = (d − 2i)e_i`; `[H,N]e_i = −2e_{i+1}`; `[H,E]e_i = 2i(d−i+1)e_{i−1}`; `d = d' = 1` gives lengths 3 and 1 and rank 2; in characteristic 2, `(n⊗1 + 1⊗n)² = 2 n⊗n = 0` | Holds |
| 2.6 filtration and weights | Sp(2), `Ne₀ = e₁`: `M_{−2} = 0`, `M_{−1} = M_0 = ⟨e₁⟩`, `M_1 = V`. Dual: `M_{−1}(V^∨) = M_0^⊥ = ⟨e₀*⟩ = ker N^∨`. Weights: `F` on `gr_{−1}` is `q⁻¹` (weight −2 = w − 1) and on `gr_1` is `1` (weight 0 = w + 1), so `w = −1`. `(1 ⊕ ω, 0)` has weights 0 and −2; `q = 1` makes `1` of every weight | Holds |
| 3.1 Herbrand and Swan Checks | `ℚ_2(ζ_8)`: `d = 8`, `ψ(u) = 4u − 8 + 3 = 4u − 5`, integral `8 − 4 + 1 = 5`. `ℚ_3(ζ_9)`: `d = 3^{3(6−2−1)}` exponent 9, `ψ = 6u − 4`. Artin–Schreier: `d = 2(p−1)`, `ψ = pu − p + 1`. `χ_8` with `G_1, G_2, G_3 = 4, 2, 2`: weighted `1 + 1/2 + 1/2 = 2`, unweighted 3 | Holds |
| 3.2 characters | `(5,2)_2 = (−1)^{(25−1)/8} = −1`, `5 ∈ U^2`, `U^3` maps to 1, so the conductor is `3 = 1 + 2`. `F_p((t))`, `y^p − y = t⁻¹`: `2 = 1 + 1`. Sp(2) lattice `⟨e₁, ℓe₂⟩`: `ρ(σ)(ℓe₂) ≡ ℓe₂` mod `λ`, so `a(ρ̄) = 0` against `a = 1` | Holds |
| 3.5 induction (and R02) | `dim(Ind_H^Γ U)^D = #(Γ/HD) · dim U^{H∩D}` by Mackey with normal `D`. (a) + (b) gives (c): `([L:K] − f)dim V + f codim + f Sw + (δ − [L:K] + f) dim V = δ dim V + f a_L(V)`. `Ind 1` from `ℚ_2(i)`: `δ = 2 = 0 + 2`. Tame: `d = e − 1` gives 0. Finite-level lower sum for `χ_8` on `ℚ_2(ζ_8)`: `3 ∈ ℕ`, computable with pinned `IsLocalRing.ramificationGroup` | Holds; R02 |
| 4.1 oddness (headline) | Characteristic 2: `M² = 1` and `M ≠ 1` give `(M − 1)² = 0` and the unique rational eigenline. The order-3 image in `GL₂(F₂)` (charpoly `X² + X + 1`, no root in `F₂`) has `ρ(c) = 1`, `det = 1 = −1`, and splits over `F₄`. `χ_{−3} ⊕ χ_{−4}` over `F_5`: `ρ(c) = −1`, `det = 1 ≠ −1` | Holds |
| 4.4 Dickson (headline, R03) | `SL₂(F_9)`: the traces are all of `F_9`, the squares generate `F_9`, so `F_0 = F_9` and the image is `PSL₂(F_9)`. `GL₂(F_3)`: `PGL₂(F_3) ≅ S_4`, both disjuncts. `Q₈ ⊂ GL₂(F_3)`: image `C_2²`, dihedral with `n = 2`, `3 ∤ 2`. Upper triangular: span `≠ ⊤`, excluded by `hG` | Holds; locator R03 |
| 5.3 recognition (headline) | `χ_ℓ` against `χ_ℓ⁻¹`: `X − p` against `X − p⁻¹`, not isomorphic. `1` against the quadratic character of `ℚ(√5)`: agreement only at split primes, density `1/2 < 1`, so `hPl` is needed | Holds |
| 5.5 image algebra (headlines) | `Q₈`, `k = ℝ`: traces `2, −2, 0`, `B = ℍ`, `finrank 4 = n²`. `L = ℝ`: `ℍ ≇ M₂(ℝ)` and no real form, both sides false. `L = ℂ`: both true. `ℤ/3` over `ℚ`: span of dimension 2, not central. `(1 1;0 1)E₀₀(1 −1;0 1) = (1 −1; 0 0)` | Holds |
| 5.7 realisation (headlines) | `C_3 → GL₁(F_4)` by `ω`: `X − ω ∉ F_2[X]`, hypothesis fails. `ω ⊕ ω²`: `X² + X + 1 ∈ F_2[X]`, realised by `(0 1; 1 1)`. Distinct eigenvalues: `S₃` standard over `ℚ`, transposition eigenvalues `±1`. `Q₈` over `ℚ`: no element with distinct rational eigenvalues (a quaternion with two rational eigenvalues would be scalar) | Holds |
| 5.10 Carayol (headline) | `d = 1`: equal residues and dense equal traces give equality with `g = 1`. Negative control `r = (1 ℓa; 0 1)` against `r' = 1` over `ℤ_ℓ`: equal reductions, traces `2 = 2`, not conjugate; `habs` fails (span `{1} ≠ ⊤`) | Holds |
| 5.12 potentially abelian | `Q₈` restricted to its centre `{±1}`: one character `−1` with multiplicity 2, so `a = 2`, `b = 1`, projective image `C_2²`. Induction from a quadratic extension of `χ ≠ χ^σ`: `a = 1`, `b = 2` | Holds |
| 5.13 function fields | `ℙ¹_{F_{Q²}}` over `F_Q`: `0` points over `F_Q`, `2(Q²+1)` over `F_{Q²}`. Chebotarev: `a·#B/#H = #B/#H_geom`, and summing over `n ≡ b mod a` gives density `#B/#H`; the constant cover gives `1/a`. Unipotent `(1 a; 0 1)` through `Ẑ → ℤ_ℓ`: `(X−1)²` on both sides. Taking `C := U` recovers lisse sheaves on `U` | Holds; locator R05 |
| 6.2 pairing and oddness | `e(x,y) = e(cx,cy) = −e(x,y)` on each eigenspace, so both are isotropic and each has dimension `g`: `tr = 0`, `det = (−1)^g`. Swap on `ℤ²`: `(x+y,x+y) + (x−y, y−x)` gives `{x ≡ y mod 2}` | Holds |
| 6.3 Tate curve (headline) | `q = uπ^{v(q)}` gives `κ = v(q)t_ℓ` on `I_K`; `E_q[ℓ^n]` unramified iff `ℓ^n | v(q)`; `q = p^ℓ` gives an unramified `E_q[ℓ]`. Euler factor: `V_I = ℚ_ℓ` trivial, so `det(1 − TΦ) = 1 − T`. Lean: `m = −v(j)`, `p | m ⇔ p | v(j)`. `ℚ_2`: `T² + T + 1` has discriminant `−3`, a unit | Holds |
| 6.4 coefficients | `y² = x³ − x` over `ℚ(i)`, `ℓ = 5` split: `d = 2`, `2g/d = 1`, two lines. `c∘[i] = [−i]∘c = −[i]∘c` | Holds |
| 6.4a Frattini (headline) | `P = (1+ℓ)^{ℤ_ℓ}`, `ℓ` odd: `Φ(P) = ℓℤ_ℓ`, open. `P = 1`: infimum over no coatoms is `⊤`, open. `∏_ℓ ℤ/ℓ` is not a compact subgroup of any `GL_n(E)` | Holds |
| 6.6 wild bound | `ℚ_2(√−1)`: `e = c = 1`, bound `1·(1 + 1) = 2 ≥ Sw = 1`. `ℚ_2(√2)`: `Sw = 2 ≤ 2`, `a = 3 ≤ 1 + 1 + 1 = 3`, equality allowed for cyclic `G_1` | Holds |
| 7.9 adequacy (headlines) | `A = (0 4; 1 4)` over `F_5`: `A² = (4 1; 4 0)`, `A³ = 1`, charpoly `X² + X + 1` irreducible (`3 ∤ 4`), `A + 3I = (3 4; 1 2)` with trace 0, so `H⁰(ad⁰) ≠ 0` and `h₂` fails. Rank one finite: `ad⁰ = 0`, `Hom(H, k) = 0` since `p ∤ #H`, adequate. `H = 1`, `n = 2`, `F_2`: `tr 1 = 0`, so `ad⁰` and `ad₀` both have dimension 3 and `1 ∈` the kernel. `⟨t⟩ ⊂ GL₁(F_p(t))`: `H¹ = Hom(ℤ, k) ≅ k` | Holds |
| 7.10 enormity (headlines) | `n = 2`, odd `p`: tr `e_{h,α}W ≠ 0` forces distinct eigenvalues (else `e = 1` and `W ⊂ ad⁰` has trace 0), and the `Ad(h)`-fixed projection lies in `W` over `k`, so adequate ⇒ enormous. `SL_n(k')`, `p > n`: companion of `X^n + (−1)^n` has `n` distinct roots. The CHT bound `2n − 1` fails at `n = 2`, `l = 5`: `SL₂(F_5)` is not adequate (DDT Lemma 2.48, `#F ≠ 5`) | Holds |
| 7.6 projective lifting (headline) | `n = 1`: `PGL₁` trivial, `r = 1`. `n = 0`: `GL₀` trivial, so `hn` is unused (a note, not a finding) | Holds |
| 1.5–1.6 descent (headlines) | `ℤ_ℓ → GL₁`, `a ↦ (1+ℓ)^a`: entries in `ℚ_ℓ`. Conjugating `(1 a/ℓ; 0 1)` by `diag(1, ℓ⁻¹)` gives `(1 a; 0 1)`, norm `≤ 1`. Non-compact `ℤ ∋ 1 ↦ ℓ` is excluded by `CompactSpace` | Holds |
| 1.8 Brauer–Nesbitt (headline) | `F_2`, `ℤ/2`: `1 ⊕ 1` against `(1 1; 0 1)`, both `(X−1)²`, the second not semisimple. Zero spaces: `1 = 1`, isomorphic. Unequal dimensions: `charpoly(ρ 1) = (X−1)^dim` differs | Holds |

**Ownership.** Searched by object over main, the board packages and the open heads given (`roadmaps grep`, `roadmaps show`). Second owners were sought for the monodromy theorem (found: R01), Artin and Swan conductors (ArtinRepresentations consumes them), Carayol, Brauer–Nesbitt, image algebra, Dickson, adequacy, enormity, complex conjugation, Frattini, and stable lattices. None was found besides R01.

## Not verifiable

- SGA 1, Exposé XIII, §2 (§5.13): not in the cache. It was not fetched, because the service records fetches in the manifest and this review edits none; the open edition is arXiv:math/0206203.
- KW (II), Lemma 4.3, p. 40 (§§4.7, 7.7): no legal copy in the cache; Inventiones is paywalled.
- Books, cited by locator: Jacobson BA II §5.2; Fulton–Harris §11.1; Tate 1979 (4.1.5); Hartshorne V Ex. 1.10; Serre 1965 Thm 7; Mumford §§20, 23; Silverman, *Advanced Topics* V.5; Schneider; Dixon–du Sautoy–Mann–Segal; Isaacs Cor. 11.22; Dickson 1901; Serre, *Local Fields* (manifest: uncertified).
- Not re-read this round: Clozel–Thorne 2017 Lemma 7.5 (still listed in the previous review's `needs-references.toml` request); Masser–Zannier; Milne 2008; Ribet 1992; Deligne 1980 §1.6; Deligne–Serre Lemme 6.13; BCGP25 Lemma 10.2.3.
- Ownership was checked against the open pull requests the brief gives as checkouts and through `roadmaps grep` at their heads; other open pull requests were not opened individually.

## Source issues

- **Error** in Clozel–Harris–Taylor 2008 at Cor. 2.5.4, p. 57: the source says bigness of the symmetric-power image needs `l > 2n − 1`; it should be `l > 2n + 1` (`n = 2`, `l = 5` fails since `SL₂(F_5)` is not adequate); affects a stated result; corrected in print at Gee–Newton 2022, proof of Lemma 3.2.5, p. 15.
