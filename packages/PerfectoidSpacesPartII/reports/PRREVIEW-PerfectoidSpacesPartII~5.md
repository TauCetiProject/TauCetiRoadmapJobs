# Review of PerfectoidSpacesPartII (pull request #2286 at df3fb44)

**Verdict:** needs changes

## R01 (P3) — Regularity-free §3.6(2) is attributed to a theorem that assumes regularity

**Location:** `TauCetiRoadmap/PerfectoidSpacesPartII/README.md:1726`: "Clauses (1)–(3) need no further hypothesis on `g`; … Prove (André A, Théorème 4.2.2 with proof, pp. 55–56; …)"; `TauCetiRoadmap/PerfectoidSpacesPartII/Suggested.lean:371,376` cites Théorème 4.2.2 and then says "No regularity of `g` is assumed".

**Claim:** The cited source does not support (2) or `riemann_extension_completeIntegralClosure` as they are now written. André proves (1)–(2) only for a nonzerodivisor `g`. The zero-divisor case is this roadmap's own derivation from (3), and neither file says so.

**Witness:** ANDRE18A lines 2580–2581: Théorème 4.2.2 assumes that `g ∈ A°` is not a zero divisor. The README's own Check (§3.6, `A = K × K`, `g = (1, 0)`) falls outside that theorem.

**Repair:** In `README.md:1726`, replace "Clauses (1)–(3) need no further hypothesis on `g`;" with "Clauses (1)–(3) need no further hypothesis on `g`: André proves (1)–(2) for a nonzerodivisor `g` (André A, Théorème 4.2.2, p. 55), and the general case is derived here, (1) by the same proof and (2) from (3), whose source (Lemme 4.2.3) assumes nothing on `g`;". In `Suggested.lean:376`, replace "No regularity of `g` is assumed;" with "No regularity of `g` is assumed (André's Théorème 4.2.2 assumes `g` a nonzerodivisor; the general case follows from Lemme 4.2.3, README §3.6);". At `Suggested.lean:44`, append the same parenthesis after "with no regularity of `g`".

## R02 (P3) — §4.1 cites the trace epimorphism to a proposition that does not state it

**Location:** `TauCetiRoadmap/PerfectoidSpacesPartII/README.md:2006`: "Prove (André A, Proposition 1.9.1 with proof, pp. 9–10): a `G`-Galois extension is faithfully flat, the sum of conjugates `t = Σ_{γ∈G} γ : B → A` is an epimorphism, …"

**Claim:** Neither Proposition 1.9.1 nor its proof says that `t` is an epimorphism. André states faithful flatness and the trace epimorphism for finite étale extensions in Remarques 1.8.1, and the cited proof relies on those remarks.

**Witness:** ANDRE18A lines 279–285 (Remarques 1.8.1(1)–(2), p. 8) state that finite étale extensions are faithfully flat and that their trace is an epimorphism. Lines 326–365 (Proposition 1.9.1 with proof) never state that `t` is surjective.

**Repair:** In `README.md:2006`, replace "(André A, Proposition 1.9.1 with proof, pp. 9–10)" with "(André A, Proposition 1.9.1 with proof, pp. 9–10, and Remarques 1.8.1(1)–(2), p. 8, for faithful flatness and the trace epimorphism)".

## Previous findings

- none: the review of `671703e` raised no finding.

## Verified sound

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §2.4(5) general Gabber invariance | `ι = id_K`, `ψ = u·`; `g = 0`, `N ≥ 1`; `N = 0`; non-injective projection `K² → K` with `ψ(x) = (x,0)`, `g = 1`, `λ = 1` | `ψ(x)ψ(y) = u²xy = u·ψ(xy)`. For `g = 0` both localisations are `0`. For `N = 0`, `ι` is onto. For the projection, `A{1/1} = K²` against `A′{1/1} = K`. | Holds; the injectivity hypothesis is needed | none |
| §3.3 counit invariance bullet | `C = B × K` of the new Check, `u = ϖ`, `g = (T₁, 0)` | `ug = (ϖT₁, 0) = ϖ·T ∈ m`; `ψ(b, c) = (ϖT₁b, 0)`; `ι∘ψ = ug·`, `N = 1`; `(ug)⁻¹ψ∘ι = id` | Hypotheses of §2.4(5) met for a zero divisor | none |
| §3.3 Check `C = B × K` | `j = 0, 1`; `x ∈ P` | `K` factor: `g = 0`, so `0`. Also `T₁x ∈ B` and `ϖT₁²x ∈ B^♮`, so `P ⊆ B^♮[1/T₁]`. Both sides are `P{ϖʲ/T₁} × 0`. | Check correct | none |
| §3.6(2) and `riemann_extension_completeIntegralClosure` | `R = K²`, `g = (1,0)`; `g = 0`; `R = K⟨T^{1/p^∞}⟩ × K`, `g = (T,0)`; `b = ϖ⁻¹` | `(1,0)`: both sides `K°`, with `ϖ⁻¹` in neither. `g = 0`: both sides the zero ring. `(T,0)`: both `K°⟨T^{1/p^∞}⟩`. | True without `hreg`; source assumes regularity | R01 |
| §3.6 sketch: (2) from (3) | `b` in the root saturation; module `Σ A°cᵢ` | `bⁿ = (g·bⁿ)·(1/g) ∈ A°·(1/g)`; `Σ A°cᵢ ⊆ Σ g^{-1/p^∞}A°·cᵢ` | Both inclusions hold | none |
| §3.10 construction (seeded) and §3.6(5) | almost perfectoid `C = B × K`, `g = (T₁, 0)` | `C[j] ≅ C^♮[j] = P{ϖʲ/T₁}`, which is perfectoid by §3.4 | Holds for a zero divisor | none |
| §4.1 faithful flatness and trace epimorphism | `ℤ[1/2] → ℤ[1/2][i]`, `η = 1`; `ℤ → ℤ[i]`; trivial torsor `A → A²` in characteristic `2` | With `b = (1/2, −i/2)`, `b′ = (1, i)`: `Σbb′ = 1`, `Σγ(b)b′ = 0`, `Σt(b)b′ = 1`. Over `ℤ`, `t(ℤ[i]) = 2ℤ`. In characteristic `2`, `t(1,0) = 1`. | Correct; over `ℤ` both Galois and onto fail | R02 |
| §4.1 faithfulness step | `N` with `N ⊗_A B ≅ 0`; `c = 1/2` | `N → N ⊗ B → N` is `n ↦ t(c)n = n` | `N = 0` | none |
| §5.12 descent through the frame torsor | `B = A × A` (rank `2`, torsor `A²`); control `ℤ → ℤ × 𝔽_p → ℤ` | Torsor case: `Â°/pᵐ → (Â°/pᵐ)²` faithfully flat. Control: `ℤ → ℤ` is faithfully flat but `ℤ × 𝔽_p` is not flat over `ℤ`. | The step needs `C₂ → C₃` faithfully flat, which §4.1 supplies | none |
| Huber supplier sentence and dropped import | identifiers in `Suggested.lean` | Used: `IsTateRing`, `PairOfDefinition`, `powerBoundedSubring`, `mem_powerBoundedSubring`. Unused: `IsBounded`, `IsPowerBounded`. Build passes without `Huber.Bounded`. | Sentence matches the file | none |

The adversarial rows for untouched statements stand as in the previous review, of `671703e`.

- Source locators checked against the text: 12. In ANDRE18A: Lemmes 2.6.1–2.6.3, Exemples 2.6.3, Remarques 2.6.4 (lines 1130–1195, pp. 28–30); Lemme 3.5.3 (line 2003, p. 46); Théorème 4.2.2, Lemme 4.2.3, Remarque 4.2.4 (lines 2580–2632, pp. 55–56); §4.4.2, (4.16) (lines 2906–2918, p. 61); Remarques 1.8.1, §§1.9.1–1.9.2, Proposition 1.9.1 (lines 279–365, pp. 8–10). In ANDRE18B: Théorème 3.2.1, Corollaire 3.2.2 (lines 606–614, p. 83). In GR03: Proposition 2.1.7(ii) (lines 321–328, p. 8). The seeded targets that fall in the change are §§2.4, 3.3 and 3.10.
- Pinned declarations opened: 8. These are `TauCeti.Almost.BasicSetup` (`BasicSetup.lean:111`, which carries `flat_tilde`), `PowersGenerate` (`:567`), `IsFilteredPrincipal.powersGenerate` (`:600`), `TauCeti.Huber.PairOfDefinition` (`Huber/Basic.lean:163`), `IsTateRing` (`:213`), `PairOfDefinition.le_powerBoundedSubring` (`:474`), `powerBoundedSubring` (`PowerBounded.lean:456`) and `mem_powerBoundedSubring` (`:466`).
- Supplier sections resolved on main: 3. These are PerfectoidSpaces P0.1 (`BasicSetup.powersGenerate`, flat `m̃` implies condition (B)), P0.11 (faithfully flat means flat with `M ⊗ N ≅ 0 → N ≅ 0`, and almost finite projective implies flat) and AdicEtaleGeometry A4.3. The resolver's one Lean-name lead, `DerivedDeRham.ordinaryFaithfulFlatnessFromCompleteFaithfulFlatness` (README:453), is declared in DerivedDeRhamCohomology's `Suggested.lean:96` at its open head.
- Gate: every scanner passed, and `depcheck: 243 roadmaps, 2197 edges, 0 problem(s)`. There are 0 changes outside the folder.
- Elaboration: `lake env lean` on a scratch copy with 35 `#check @name` gave 10 `sorry` warnings and 0 errors. `riemann_extension_completeIntegralClosure` elaborates with no regularity binder, as in §3.6(2). `abhyankar_trace_almost_surjective` keeps `hreg`, as in §4.7. One-tactic probe, decided by reading: the `⊇` half of the changed theorem is §3.6(3), so it is not padding.
- Pull-request title and description checked against the head: 0 contradictions. The change adds or drops no supplier, section, headline or declaration (PerfectoidSpaces and AdicEtaleGeometry were already suppliers).
- Remark on untouched text: the corrections section (README:3084) does not list André A §4.4.2's use of Lemme 2.6.2 outside its hypotheses, which §§3.3 and 3.10 now repair.

Overlap check: searched the README of every open and main roadmap, including DirectSummandsAndBigCohenMacaulay, PerfectoidQuotientsPartII, PerfectoidTowers, PerfectoidQuotients, RelativeFarguesFontaine, PerfectoidSpaces, AdicEtaleGeometry and AdicSpacesPartII, for the changed objects. PerfectoidSpaces owns almost flatness and condition (B), and AdicEtaleGeometry owns frame torsors. This roadmap alone owns almost Galois extensions, annular Gabber invariance and André's Riemann extension. AdicSpacesPartV §1.7 owns the distinct rigid normal-space Riemann extension. DirectSummandsAndBigCohenMacaulay's citations are unaffected.

Source independence: changed passages only. 8 passages were compared with 3 sources (§2.4(5), §3.3 bullet and Check, §3.6 header and sketch, §3.10, §4.1 statement and construction, §5.12 sketch, and the Lean docstrings of §3.6), and no copied passage was found. The Baire/open-mapping clause of §2.4(5) shares only the forced two-step route with ANDRE18A lines 1182–1184. The largest share is ANDRE18A, 90 of 163 locators (the previous tally plus one GR03 locator). No layer was added, removed or reordered, so the previous contents comparison stands.

## Not verifiable

- none

## Source issues

- **Gap** in ANDRE18A at §4.4.2, p. 61 (lines 2906–2910): the source says `B[j] ≅ B^♮[j]` follows from Lemme 2.6.2, whose hypotheses (`g` a nonzerodivisor, `B` inside `B^♮[1/g]`) fail when `g` is a zero divisor of `B^♮`; it should be derived from the invariance for an injective `ι` with `ι∘ψ = ug`, here `ψ` being multiplication by `ug`; affects the proof.

## For the human reviewers

- **Licence.** The clause order in `TauCetiRoadmap/PerfectoidSpacesPartII/README.md:2338,2619,2738` follows ANDRE18A lines 56–68 and ANDRE18B lines 333–366. The earlier reviews treated the correspondence as mathematically forced.
- **Licence.** The sketches at `TauCetiRoadmap/PerfectoidSpacesPartII/README.md:1473,1818,2603,2843` keep the routes of ANDRE18A lines 1720–1723 and 2637–2643 and of ANDRE18B lines 232–234 and 386–545. The earlier reviews treated these as mathematical routes.
- **Scope.** In `TauCetiRoadmap/PerfectoidSpacesPartII/README.md`, §§2.2–2.4 and 2.6–2.9 follow ANDRE18A §§2.3, 2.5, 2.6, 2.8 and 2.9, and §§3.3–3.11 and 4.3–4.8 follow its §§3.5–5.4. The earlier reviews found most of this ordering forced by dependencies.
- **Scope.** `TauCetiRoadmap/DirectSummandsAndBigCohenMacaulay/README.md:94` declares `gap:ramified-multielement-kummer` with this roadmap as supplier. `TauCetiRoadmap/PerfectoidSpacesPartII/README.md:2831` states no multi-element or ramified-base Kummer target.
- **Scope.** `TauCetiRoadmap/PerfectoidSpacesPartII/README.md:3084` lists fifteen claimed source corrections. The earlier reviews recomputed five; this review checked the changed proofs and added one source gap (above).
