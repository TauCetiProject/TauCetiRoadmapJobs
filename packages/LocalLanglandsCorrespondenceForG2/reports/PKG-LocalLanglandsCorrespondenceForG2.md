# PKG-LocalLanglandsCorrespondenceForG2: report

Deliverables: `packages/LocalLanglandsCorrespondenceForG2/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`, as on main), `sources.toml`, and the `gaps` list of `design/plan.json`. Nothing else in `plan.json` changed: the file is re-serialized in its original format (indent 2, non-ASCII kept), so the diff touches only `gaps`.

Inputs. `design/review.json` does not exist and `reports/` was empty at the start, so there were no non-blocking review notes to apply. I worked from `design/README.md` and `design/plan.json`. The design says it was accepted.

## Headline theorems

| Headline | Status |
|---|---|
| Spin₇(ℂ) is unacceptable (Chenevier–Gan, Corollary 4.8; README §0.8) | **Stated**: `TauCetiRoadmap.LocalLanglandsCorrespondenceForG2.spin7_not_acceptable`, on Mathlib `spinGroup` of `sumSquaresSeven` (the form x₁²+⋯+x₇² on ℂ⁷, via `QuadraticMap.weightedSumSquares`) |
| LLC for split G₂: GS Main Theorem (README §7.1) | Not statable. The pins have no W_F of a p-adic field, no WD/L-parameters, no smooth representations of G₂(F), and no G₂(F) as a topological group |
| Generic supercuspidal bijection (HKT; README §7.2) | Not statable: same carriers, plus Whittaker genericity for G₂(F) |
| Characterization by G₂ × GL_r gamma factors (README §§3.12–3.13) | Not statable: no local gamma factors of smooth or WD representations |
| Exceptional spin identity on generic discrete series (README §5.6) and the partial enhanced PGSp₆ correspondence (README §7.3) | Not statable: no smooth representations of PGSp₆/GL₈, no classical theta, no Xu packets |
| Weak LLC for PGSp₆ and its fibres as unions of Xu packets (README §§10.1, 10.9) | Not statable: same carriers, plus Spin₇-valued WD parameters |
| All-places global–local compatibility (README §3.15) | Not statable: no automorphic representations of G₂ or attached Galois representations |
| Standard injectivity and quadratic rigidity on G₂-valued parameters (README §§0.4–0.5) | Not statable: no parameters, and no comparison at the pins between Tau Ceti octonions/G₂ and Mathlib `spinGroup` (no G₂(ℂ) → Spin₇(ℂ)) |

Each unstatable headline is named in the module docstring, with what it lacks. I did not keep the design's light A₂ torus definitions and lemmas (determinant, `charpoly`, factorization, monicity). They are one-step consequences of `Matrix.charpoly_diagonal`, `Matrix.det_diagonal` and `Matrix.charpoly_monic`, so they would be padding; they are Checks of README §0.1.

## Elaboration

`lake env lean packages/LocalLanglandsCorrespondenceForG2/Suggested.lean`, run from the content checkout: **exactly 1 warning**, `declaration uses 'sorry'` (line 55, `spin7_not_acceptable`). There were no other messages and no `TauCeti.*` imports, so nothing had to be built.

Binder check: I elaborated `#check @…sumSquaresSeven`, `#check @…spin7_not_acceptable` and `#check spinGroup sumSquaresSeven` in a scratch file. The elaborated types are `QuadraticForm ℂ (Fin 7 → ℂ)` and `∃ Γ _ (_ : Finite Γ) r r', (∀ γ, IsConj (r γ) (r' γ)) ∧ ¬∃ g, ∀ γ, r' γ = g * r γ * g⁻¹`, which match README §0.8. There are no section variables, so nothing was dropped and nothing changed. A proved scratch `example` (not in the file) confirms the form: `sumSquaresSeven (Pi.single 0 2) = 4`.

## What the README could not support / changes to the design

1. **GS20 Theorem 1.1 is stated over ℚ only.** I checked it in GS20 arXiv v1 at lines 44–48 and line 970, and lines 62–64 attribute the restriction to Pollack's integral. GS Lemma 8.3 (GS p. 25) applies it over a totally real k with k_{w₁} ≅ k_{w₂} ≅ F, which for a general F requires k ≠ ℚ.
   - Recorded as supplier gap `spin-pole-global-converse` on ExceptionalThetaCorrespondencesForG2 (Layer 10).
   - Recorded in README "Notes on the sources". §6.5 (one-in-all-in), and through it §§6.6–6.7, 7.1 and 10.9, depend on it.
   - This is new: the design cited GS20 without its field restriction.
2. **Steinberg spin parameter corrected.** I computed that the principal SL₂ of Spin₇ lies in G₂: 2ρ∨ = (6,4,2) acting on the spin weights gives 6, 4, 2, 0, 0, −2, −4, −6. So SpinLift(St_{PGSp₆}) has parameter 1 ⊕ Sym⁶, not Sym⁷ and not St_{GL₈}. I fixed my own first draft of §2.4 and the Layer 2 Examples, and the README uses the corrected value throughout (§§2.2, 5.1, 5.4, 10.1).
3. **Build order.** The design's `pgsp-globalization` (LG.8) is used by `ks-existence` (LG.5). I moved it within this roadmap to §1.7, so Layer 5 does not reference Layer 8.
4. **Kret–Shin and Shin density.** Both are external theorems with no owner, and the design itself said it had no proof owner for them. I did not keep them as targets here; they are supplier contracts and gaps:
   - Kret–Shin (`kret-shin-gspin-galois`) on AutomorphicGaloisRepresentationsPartII AG2.2;
   - Shin's density theorem (`automorphic-plancherel-density`) on AutomorphicSpectralTheory Layer 6.
   
   The explicit spin-regular weight sequence λ_t = t(8,4,2) stays a target here (§1.7).
5. **Chenevier's descent theorems (§§0.9–0.10)** and the G₂ × GL_r gamma theory (§3.11) are G₂-specific, so this roadmap owns them.
6. **Griess's conjugacy theorem** (Invent. Math. 1995) is paywalled, and my guessed DOI resolved to a different paper. I removed that manifest entry and do not cite Griess directly. §§0.2 and 0.4 cite the conjugacy input "as cited in GS Lemma 2.4"; no locator inside Griess is relied on.
7. **§2.4 extra place.** The design's "proof gap" at the extra place is now stated as part of the route (the one uncontrolled finite place from GS Prop. 10.7).
8. **Removed from the gaps list.** The design-era proof-obligation entries in `gaps` (title/detail/neededBy) are not supplier gaps; their content is now targets in the README. `gaps` holds only the nine supplier gaps listed below.

## Notions moved down from later roadmaps

None. MetaplecticAutomorphicFormsPartII is later in the order (line 321), so it is not cited. The Rallis and similitude-theta inputs it would have supplied are requested from MetaplecticAutomorphicForms itself, which plans §§3.41–3.42 and 6.13–6.14.

## Duplication removals (by object)

| Design target | Owner now cited |
|---|---|
| LG.0/dual-diagram (SL₃ → G₂ → Spin₇, centralizers, induced maps on parameter classes) | ExceptionalThetaCorrespondencesForG2, Layer 0: *Exceptional inclusions of complex dual groups*; *Complex local parameters* (transport along dual maps); *Raw and fixed-split component groups* |
| Complex parameters / component-group bookkeeping (conventions of the design) | ExceptionalThetaCorrespondencesForG2, Layer 0 |
| LG.1/cuspidal-exceptional-theta (GS Cor. 10.6: period ⇒ nonzero global lift; Steinberg or regular weight ⇒ cuspidal; local components) | ExceptionalThetaCorrespondencesForG2, Layer 10: *A quaternion period forces global nonvanishing*; *Cuspidality from Steinberg or regular compact weight*; global lift local-occurrence API |
| LG.0/a2-weight-model definitions and lemmas | Mathlib `Matrix.diagonal`, `Matrix.charpoly_diagonal`, `Matrix.det_diagonal`, `Matrix.charpoly_monic`, `Matrix.charpoly_natDegree_eq_dim`; the computations are Checks of §0.1 |
| Design's restatement of triality | Tau Ceti `TauCeti.D4Tripled.trialityAutomorphism` (`TauCeti/Algebra/Lie/D4/Tripled/Triality.lean`) and SpinRepresentations Layer 8; §2.1 keeps only the descent over F to f₁, f₂, f₃ |
| LG.5/kret-shin-input, LG.5/ks-spin-irreducibility | supplier contract on AutomorphicGaloisRepresentationsPartII (gap) |
| LG.8/shin-input | supplier contract on AutomorphicSpectralTheory (gap) |

## Ownership against open work

- I checked by object with `roadmaps grep` on main and at the 354 open heads, plus the board packages:
  - Kret, Chenevier, Plancherel density, Sakellaridis/Poincaré, weak containment, triality, Griess, acceptability, Langlands–Shahidi;
  - the PGSp₆/GSpin/Rallis objects in MetaplecticAutomorphicForms, ModularityAndLanglandsExtensions, AutomorphicLFunctionsAndLocalFactors(PartII) and AutomorphicSpectralTheory(PartII).
- No other roadmap states:
  - G₂ LLC, the spin lift, KS parameters, the weak PGSp₆ correspondence, or Chenevier's theorems;
  - Gan–Savin's G₂ × GL_r gamma factors;
  - CG's unacceptability.
- This roadmap is therefore their owner. The Suggested.lean declarations use our own namespace and do not reuse a qualified name from any readable roadmap.
- AutomorphicLFunctionsAndLocalFactorsPartII (doubling for GSpin) does not cover the Langlands–Shahidi spin factor, so that factor is a gap on AutomorphicLFunctionsAndLocalFactors.

## Supplier gaps declared (plan.json `gaps` and README contracts)

`spin-pole-global-converse` (ExceptionalThetaCorrespondencesForG2, Layer 10); `gln-generic-local-converse` (EndoscopicTransferAndUnitaryTraceComparison, Layer 10); `pgsp6-similitude-theta-tables` (MetaplecticAutomorphicForms, §§3.41–3.42); `pgsp6-similitude-rallis` (MetaplecticAutomorphicForms, §§6.13–6.14); `pgsp6-shahidi-spin-factor` (AutomorphicLFunctionsAndLocalFactors, AL.4); `relative-generic-isolation` (SmoothRepresentationsOfLocalGroupsPartII, SRU.3); `poincare-weak-containment` (AutomorphicFormsOnReductiveGroups, Layer 4); `automorphic-plancherel-density` (AutomorphicSpectralTheory, Layer 6); `kret-shin-gspin-galois` (AutomorphicGaloisRepresentationsPartII, AG2.2).

## Citations

- **Supplier sections.** I checked each cited section against the copy printed by `roadmaps show`:
  - ModularityAndLanglandsExtensions §§3.5, 3.8, 3.15, 3.17, 3.19, 3.27;
  - EndoscopicTransferAndUnitaryTraceComparison §§1.13, 4.7a, 10.1, 10.26, 10.30, 10.31;
  - MetaplecticAutomorphicForms §§3.10, 3.34, 3.41, 3.42, 6.13, 6.14;
  - AutomorphicLFunctionsAndLocalFactors AL.3/AL.4;
  - SmoothRepresentationsOfLocalGroups SR.2–SR.3;
  - AutomorphicFormsOnReductiveGroups Layers 0, 2, 4;
  - AutomorphicSpectralTheory §§6.16, 6.18, 6.19;
  - AutomorphicGaloisRepresentationsPartII AG2.2, AG2.5, AG2.6;
  - on main: SpinRepresentations Layers 2, 4, 5, 6, 8; ReductiveGroups Layer 9; ClassFieldTheory Layers 5, 9; OrthogonalSpinGroups Layers 1–2.
- **Board-stage suppliers.** ExceptionalThetaCorrespondencesForG2 and SmoothRepresentationsOfLocalGroupsPartII exist only as board packages (design stage); they are lines 311 and 310 of ORDER.txt, before this roadmap at 312. I cite them by their design layers (EX.k as "Layer k"; SRU ids). `roadmaps resolve` flags "ExceptionalThetaCorrespondencesForG2, Layer 0: no roadmap … on main or in an open pull request". That is expected for a design-stage supplier earlier in the merge order, not a missing citation. The resolver reports no Lean names found nowhere.
- **Pinned names.** I checked Lean names at the pins: `spinGroup`, `lipschitzGroup` (Mathlib `LinearAlgebra/CliffordAlgebra/SpinGroup.lean:61,292`), the `Matrix.*` lemmas, `TauCeti.Octonion` (namespace `TauCeti.Octonion`, `Basic.lean`), and `TauCeti.D4Tripled.trialityAutomorphism` with its `_pow_three` lemma (`Triality.lean:142,183`).

## Sources

- **Fetched and certified.** All through the service; none were left missing:
  - GS: Forum Math. Pi, CC BY, Cambridge PDF with `--licence-class publisher-open`;
  - HD, GF, CG, HKT, GS20, SV, ILM: arXiv;
  - C: Doc. Math., EMS open;
  - KS: JEMS, EMS open;
  - Shin: author page.
- **Locators spot-checked.**
  - GS Main Theorem: GS lines 102–176.
  - GS Lemma 8.3's use of GS20: GS lines 1056–1061.
  - CG Proposition 1.1 / Corollary 4.8 and Example 1: CG lines 51, 489, 505.
  - GS20 Theorem 1.1 restricted to F = ℚ: GS20 lines 44, 63, 970.
  - SV Theorem 16.3.2: SV line 11075.
  - ILM Lemma A.2 and Proposition A.5: ILM lines 1231, 1262.
- **Griess.** Not cited, as explained above. `needs-references.toml` was removed after the Griess citation was dropped; no text is requested.
- **No suspicious instructions** were found in the fetched texts or the designs.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §0.1 v∘j ≅ 1⊕3⊕3∨ | (a,b)=(1,1), (−1,1), (2,3) | eigenvalues (1,a,b,(ab)⁻¹,a⁻¹,b⁻¹,ab); product 1; (X−1)⁷; (X−1)³(X+1)⁴; {1,2,3,1/6,1/2,1/3,6} vs wrong 3⊕3: {1,2,3,1/6,2,3,1/6} | holds | Checks added |
| §0.1 s∘i ≅ 1⊕v; s∘h ≅ 4⊕4∨; q∘h ≅ 1⊕Λ²4 | dims | 8=1+7, 8=4+4, 7=1+6; wrong 4+1+4=9 | holds | Check |
| §0.1 central sign | −1 ∈ Spin₇ | s(−1)=−1·Id₈, q(−1)=Id₇ | holds | Check witness for §0.6 |
| §0.2 A₂ detection, S_φ | principal SL₂ of SL₃; χ⊗Sym² (χ cubic); principal G₂; 1⊕1⊕1 | S₃; μ₃ (χ≠χ⁻¹); Sym⁶ no pole; pole order 7 but non-discrete | holds; the pole criterion holds only for discrete φ | scope stated |
| §0.3 spin detection | principal G₂; subregular | s∘i∘φ = 1⊕Sym⁶ (one invariant line); 1⊕1⊕Sym²⊕Sym² (pole order 2, i∘φ not discrete) | holds; converse only for discrete | Checks |
| Principal SL₂ of Spin₇ in spin rep | 2ρ∨=(6,4,2) on (±½)³ | eigenvalues 6,4,2,0,0,−2,−4,−6 ⇒ Sym⁶⊕1 | first draft (Sym⁷) **false** | fixed in §2.4, Examples |
| §0.5 quadratic rigidity | ρ trivial, χ≠1 | χ·iρ = central χ ≠ 1, not conjugate; (vρ)⊗χ = χ^⊕7 has no invariants | consistent | Check |
| §0.6 weak equivalence | trivial vs unramified central sign | q-images equal; spin Frobenius eigenvalues 1^8 vs (−1)^8 | distinct weak classes | Check |
| §0.8 / Lean unacceptability | Γ=(ℤ/4)², V weights (1,0),(1,2),(0,1),(2,1), η=(0,2) | det: sum (4,4)≡0; η⊗V = (1,2),(1,0),(0,3),(2,3) ≠ V, ≠ V∨=(3,0),(3,2),(0,3),(2,3); every (x,y) has x, y or x+y even | consistent with CG Ex. 1 | Checks; complex vs compact form justified in docstring |
| Lean `sumSquaresSeven` | e₀ scaled by 2 | value 4 (proved example) | form is Σxᵢ² | none |
| §0.9 Chenevier | Sym⁶ f, f non-CM trivial character | Satake classes Sym⁶(SL₂) ⊂ v(G₂) | consistent | Check replaced a vacuous one |
| §1.1 period spectrum | V⊕V, P=P₀+P₀; constant; measure scaling | selected = diagonal; first copy has P≠0 yet not contained; constant has period = volume ≠ 0 | "nonzero period" ⇏ containment | Checks |
| §1.4 | S=∅ | trivial rep satisfies conclusion | S nonempty is needed | Check |
| §1.7 spin regularity | t=1; t=0 | h=(11,6,3): spin weights ±10,±7,±4,±1 distinct; h=ρ=(3,2,1): (3−2−1)/2=(−3+2+1)/2=0 coincide; coordinate sum 14t even | t≥1 needed | Checks |
| §2.4 ψ-change | ψ_a | both sides × det(s∘φ)(a)|a|^{8(s−½)} = |a|^{8(s−½)} | consistent | Check |
| §3.2 trivial rep parameter | trivial rep vs St | v-eigenvalues q⁻³…q³ for both; N=0 vs N≠0 | distinguished only by N | Check |
| §3.10 change of ψ | GL₁ twist μ | multiplier μ(a)⁷|a|^{7(s−½)}; exponent 7r not 8r | holds since det v∘L=1 | Checks |
| §3.11 Levi rules | P, Q, torus | dims 2+2+1+1+1=7, 2+2+3=7, 1+6=7 | holds | Check |
| §4.3 S₃ packet | Irr(S₃) | 3 irreps vs |S₃|=6; std₂|μ₃=χ⊕χ⁻¹ (trace −1 at generator) | holds | Checks |
| §4.5 | trace of std₂ at ζ₃ | ζ+ζ⁻¹=−1 | evaluation ≠ restriction | Check |
| §5.5 club bridge | τ=St_PGL₃ | Sym²⊕Sym²⊕1⊕1, dims 3+3+1+1 | holds | Check |
| §6.5 one-in-all-in | GS20 field | Thm 1.1 over ℚ only | needs totally real k | gap `spin-pole-global-converse`, Notes |
| §9.2 lower tower | φ_τ=Sym³ | Λ²Sym³ = Sym⁴⊕Sym⁰ ⇒ q-image 1⊕1⊕Sym⁴ (not discrete); spin Sym³⊕Sym³ | holds | Checks, Examples |
| §10.4 twist | χ quadratic vs μ with μ²≠1 | Λ²(φ⊗χ)=Λ²φ; Λ²(φ⊗μ)=μ²Λ²φ | quadratic only | Check |
| §10.7 Λ² insufficiency | unramified φ_τ (a,b,c,(abc)⁻¹), χ unramified quadratic | Λ² equal; φ⊕φ∨ eigenvalues negate | Λ² does not determine spin | Check (first draft wrong, fixed) |
| §9.3 Levis | C₃ | 2³−1 = 7 proper standard Levis | holds | Check |

Context, generality and vacuity:
- **Lean statement.** It has no standing hypotheses. Its generality, finite groups into Spin₇(ℂ), equals README §0.8.
- **README generality.** Every theorem keeps the characteristic-zero nonarchimedean F of the sources. Statements special to p ≠ 3 or to the diamond locus say so.
- **Vacuity.** The Lean headline is not vacuous, since spinGroup is a nontrivial group. It mentions the roadmap's object, the dual group Spin₇(ℂ) of PGSp₆.

## Dependency check

```
$ tauceti-roadmap … gate --depcheck packages/LocalLanglandsCorrespondenceForG2/README.md --name LocalLanglandsCorrespondenceForG2 --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 651 edges, 0 problem(s)
```

There are no UPWARD, CYCLE or `moved:` lines.
