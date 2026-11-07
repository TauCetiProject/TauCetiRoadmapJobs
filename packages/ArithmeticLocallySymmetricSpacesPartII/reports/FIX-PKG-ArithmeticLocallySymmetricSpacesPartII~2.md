# FIX-PKG-ArithmeticLocallySymmetricSpacesPartII~2

Repair round for the findings of `REV-PKG-ArithmeticLocallySymmetricSpacesPartII` (review of 144a88d) on `packages/ArithmeticLocallySymmetricSpacesPartII`. All five findings are P3 locator, pin and residue repairs; each was verified at the pinned libraries, at the cited supplier head or in the cached source texts before being applied. `packages/ArithmeticLocallySymmetricSpacesPartII/README.md` carries the five repairs; `packages/ArithmeticLocallySymmetricSpacesPartII/Suggested.lean` changes only in its header (module-system form, see Checks), with every declaration unchanged. `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## REV-PKG-ArithmeticLocallySymmetricSpacesPartII/F01 (P3) — applied

Verified: `content/lake-manifest.json` pins Mathlib 1b1ccf4b… and Tau Ceti 2fd255d9…, and each of the twelve relisted declarations sits at the reviewer's right-column line (`Fintype.prod_equiv` 735, `Fintype.prod_empty` 747, `Finset.prod_pos` 160, `MvPolynomial` 80, `finrank_tensorProduct`/`finrank_baseChange` 372/375, `groupCohomology` 183, `toGL` 369, `mapMonoidHom` 530, `MonoidHom.pi` 156, `IsTotallyReal`/`IsTotallyComplex` 48/210, `symPowerRep` 57, `SymmetricPower.finrank_eq` 192); the six unchanged ones were also confirmed.

Change (README "From Mathlib", "From Tau Ceti"): "The manifest pin is 6b7abb3c…" → "Declarations are consumed at the Mathlib pinned by the content repository's manifest"; likewise for Tau Ceti. Every "(line N)" / "(lines …)" after a file path was dropped and the file paths kept, the alternative the finding offered: a hash or line number goes stale between rounds while the file path and name do not.

## REV-PKG-ArithmeticLocallySymmetricSpacesPartII/F02 (P3) — applied differently

Verified at the NoncommutativeAndEquivariantIwasawa head (e311e48, README 4554 lines): `twist_free`, `IwasawaHomology.freeTwist` and `IwasawaHomology.vanish_above_dim` occur nowhere in its README or `Suggested.lean`. §0.14 (its line 627) states that the diagonal twist of a free module is free; §0.15 (line 655) states the rational-homology-as-Tor comparison, the free-twist homology and vanishing above `dim G`; §F.1 (line 436) states noetherianity, the canonical finite-module topology and the Auslander `Ext` condition, not the domain property; the domain property is §0.5's lemma (line 274, "If `gr R` is a domain, `R` is a domain") applied in §0.8 step 6 (line 394, the weighted graded ring is a polynomial ring).

Change (README "From NoncommutativeAndEquivariantIwasawa"): the three names removed; "§F.1 for integral noetherianity, domains in the uniform case and canonical finite-module topology" → "§F.1 for integral noetherianity and the canonical finite-module topology, §§0.5 and 0.8 for the domain property in the uniform case (…)"; §0.14 and §0.15 cited by content. Differently: the name `rationalHomology_eq_Tor` the finding proposes is prose-only at the head (its README line 665, never backticked, absent from its `Suggested.lean`), so it is not cited as a declaration; the sections are cited by content instead.

Pattern: the `*Needs:*` lines of §1.3 and §2.1 and the Layer 2 Dependencies cite the "supplied two-sided noetherian Ore domain" through §F.1 only; each now also lists NoncommutativeAndEquivariantIwasawa §0.5 and §0.8. No other README line cites §F.1 for the domain property.

## REV-PKG-ArithmeticLocallySymmetricSpacesPartII/F03 (P3) — applied

Verified in fu24: the last numbered display is (38) at fu24 line 1168 (page 23 runs from line 1126); the bound `dim H^q(Y(K_f),V_k) ≤ Σ dim H_i(G,H̃_j⊗W_k) ≤ p_{K_f}(k)` is unnumbered at fu24 lines 1172–1179 on page 24 (page marker line 1170); no "(39)" occurs in the text. Equation (33) is at fu24 line 1122 on page 22 and the inequality following it at fu24 lines 1135–1138 on page 23.

Change: §3.4 and §4.2, "§7, pp. 23–24, equations (38)–(39)" → "§7, pp. 23–24, equation (38) and the unnumbered bound following it" (both occurrences); §2.2, "§6, p. 22, equation (33) and its following inequality" → "§6, pp. 22–23, equation (33) and its following inequality". No other locator in the README cites an equation number above (38).

## REV-PKG-ArithmeticLocallySymmetricSpacesPartII/F04 (P3) — applied

Verified: "(fu24 line 1214)" is a locator into the cached extraction (the bibliography entry [Mar12] does sit at fu24 lines 1214–1215, on page 24).

Change (References, marshall12): "1629–1651 (fu24 line 1214); these locators use v1" → "1629–1651, as in fu24's bibliography entry [Mar12], p. 24; these locators use v1". A grep for "line [0-9]" over the README finds no other machine locator.

## REV-PKG-ArithmeticLocallySymmetricSpacesPartII/F05 (P3) — applied

Verified in aw14 §5.4 (lines 730–737, page 16): the standing hypothesis is `p^n 𝔤 = (1/p) R ⊗ L_G` for an integer `n > 0`, with the examples `G = ker(G(O_L) → G(O_L/p^{n+1}O_L))`, `n > 0`. For the first congruence kernel `L_G = p·sl₂(ℤ_p)`, so `(1/p)L_G = 𝔤` and `n = 0`, outside the hypothesis; the second congruence kernel gives `n = 1`. Theorem 5.4 is at line 742, Theorem 4.6 at line 491. fu24 lines 168–171 (page 4) say Theorem 1.5 "can be deduced from" aw14 Theorems 4.6 and 5.4 without giving the reduction.

Change (References, aw14): "with deformation index n≥0" → "with deformation index n≥1: §5.4 assumes … n>0, which covers the congruence kernels … for n≥1 and excludes the first congruence kernel, whose index is zero. The index-zero case is the content of gap:integral-central-faithfulness, whose supplier either reduces it to n≥1 or follows fu24 §5 with the repairs recorded in E3 and E5." Gap paragraph: locator extended with "aw14 covers deformation index n≥1 directly, and the first congruence kernel has index zero". The gap's `needs` sentence, slug, supplier and section are unchanged, so `design/plan.json` is unchanged.

## Checks

- **Header of `Suggested.lean` (earlier attempt).** The worker's check of the earlier attempt logged, twice, the warning that the file imports `Mathlib` from a package designed for the module system. The file now begins `module`, then `public import Mathlib` and `public import TauCeti.RepresentationTheory.ClassicalGroups.SymmetricPower`, with `@[expose] public section` before the namespace, the form of `TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main. Imports are still the single Mathlib line and the one Tau Ceti module that exists at the pin; no declaration, docstring or binder changed.
- **Elaboration.** `lake env lean packages/ArithmeticLocallySymmetricSpacesPartII/Suggested.lean` from the content checkout (the olean of `TauCeti.RepresentationTheory.ClassicalGroups.SymmetricPower` was present; no build needed): exit 0, exactly two warnings, `declaration uses 'sorry'` at lines 70 and 89 (the two headline theorems; the line numbers moved by the header).
- **`#check @` comparison.** A scratch copy of `Suggested.lean` with `#check @embeddingStdRep`, `#check @weightRep`, `#check @finrank_groupCohomology_weightRep_le`, `#check @bianchi_groupCohomology_linear_growth` appended was elaborated in the same module form: the four types are identical to the elaborated signatures recorded before the round and match the README statements of §3.1, §4.2 and §5.8 (hypotheses `¬IsTotallyReal F`, `𝔞 ≠ ⊥`, kernel containment, `IsTotallyComplex F`, `finrank ℚ F = 2` all in the declarations' own signatures; there are no section variables). Nothing changed.
- **Dependency gate.** `tauceti-roadmap gate --depcheck … --movable`:

  ```text
  depcheck: 242 roadmaps, 2481 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- **Citation resolution.** `roadmaps resolve` on the README after the edits: cross-roadmap citations found nowhere: none; Lean names found nowhere: none (the two leads `IwasawaHomology.freeTwist`, `IwasawaHomology.vanish_above_dim` are gone with F02).
- **Residue grep.** No occurrence of the old hashes, of "(line", "(lines", of the three NoncommutativeAndEquivariantIwasawa names, of "(39)" or of "fu24 line" remains in the README.
- **Gate failures listed in the brief:** none.
- **Worker repair check (tex=1 on the aw14 reference).** The aw14 entry of the References wrote `p^n𝔤=(1/p)R⊗L_G` and `ker(G(O_L)→G(O_L/p^{n+1}))` as bare prose with TeX-style braces. Both formulas now sit in code spans, the exponent written `p^(n+1)`, as every other formula of the README does. No other line of the README, the Lean file or the manifest changed; the entry's locators and its gap reference are as before.

## Adversarial pass on the touched statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| Pins (F01) | each cited declaration at Mathlib 1b1ccf4b, Tau Ceti 2fd255d9 | twelve lines as in the finding's right column, six unchanged; all names present | hashes and lines dropped, paths kept |
| Ore domain of `A` (§1.3, §2.1, Layer 2) | `G` = product of first-congruence `SL₂(ℤ_p)`, `p` odd; `p = 2` | `gr ℤ_p[[G]]` polynomial over `𝔽_p[P]` (NEI §0.8 step 6), domain lifts by §0.5, `A = ℤ_p[[G]][1/p]` a localisation of a domain; at `p = 2`, `g = −I ∈ G₁` gives `(1−g)(1+g) = 0` | §0.5, §0.8 added to the citations; `p` odd already required (README §2.6 Check) |
| §2.2 upper estimate | `M = A^a` (`T = 0`); `M = W_k` (`a = 0`) | `dim H₀(A^a ⊗ W_k) = a·D(k+1)`, `U = 0`, equality; `dim H₀(W_k ⊗ W_k) ≤ D(k+1)² = U_{W_k}` | locator only: (33) at fu24 line 1122 p. 22, inequality lines 1135–1138 p. 23 |
| §3.4 descent | `F` imaginary quadratic | `d = 2`, `dim G = 6`, `E²_{i,j}` with `i ≤ 6`, `j ≤ 3`: at most 28 terms, `Q = Σ_{i+j=n}` of finitely many proper-face polynomials | locator only: (38) line 1168 p. 23, unnumbered bound lines 1172–1179 p. 24 |
| §4.2 headline `finrank_groupCohomology_weightRep_le` | `ℚ(i)`, `t = (n,n)`, `a = n+1` | `(n+1)·dim ≤ C(n+1)²` gives `dim ≤ C(n+1)` | locator only; elaborated type unchanged |
| gap:integral-central-faithfulness (F05) | `G₁ = ker(mod p)`, `G₂ = ker(mod p²)` | `L_{G₁} = p·sl₂`, `(1/p)L_{G₁} = 𝔤 = p⁰𝔤`, index 0; `L_{G₂} = p²·sl₂`, index 1 | aw14 §5.4 (`n > 0`) covers `G₂` and deeper, not `G₁`; citation corrected, `needs` unchanged |
| marshall12 reference (F04) | fu24 bibliography | [Mar12] at fu24 lines 1214–1215, page 24 | cache locator replaced by the bibliography locator |

## For the maintainer

- No Lean name of this roadmap changed; no other roadmap cites a name that changed. The only change to `Suggested.lean` is the module-system header.
- The README no longer carries pin hashes or line numbers for library declarations, only file paths and names, so later rounds need not re-verify lines.
- The six supplier gaps on NoncommutativeAndEquivariantIwasawa are unchanged; acceptance remains conditional on them as the review states.
- Ownership against open pull requests was not re-checked this round: the findings touch citations only, and the review's grep found no competing owner.
