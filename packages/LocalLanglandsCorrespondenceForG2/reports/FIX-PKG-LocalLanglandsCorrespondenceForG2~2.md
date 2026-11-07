# FIX-PKG-LocalLanglandsCorrespondenceForG2~2

Repair of the findings of REV-PKG-LocalLanglandsCorrespondenceForG2 on `packages/LocalLanglandsCorrespondenceForG2` (README.md, Suggested.lean, sources.toml, design/plan.json `gaps`). Every finding was verified at the cited source lines and at the supplier heads before editing.

## F01 (P1) — applied differently

Verified: GS line 213–214 (Griess named as a group-theoretic input), GS line 432 (Lemma 2.4(ii),(iii) deferred to Gross–Savin), GS lines 589–590 (GL₇-conjugacy implies G₂-conjugacy "as exploited in the construction of L"), GS line 879 (HKT Lemma 4.6 "based on [Gr95]"), HKT lines 896–915 (complete reducibility hypothesis; "By [Gri95], ρ, ρ′ are themselves G₂-conjugate"), C lines 267–268 and 2239. `roadmaps grep -i griess` over the 460 open heads and main finds only the Monster/Griess algebra in CFSGBasicProperties: no owner.

Changed: new target §0.0 *Griess's conjugacy theorem for G₂* (Griess, Theorem 1, cited by its locator; the two derived forms, acceptability on completely reducible homomorphisms and the Γ = ℤ case; the application to WD_F) with five Checks (trivial homomorphism, principal SL₂, A₂ duality, an order-five torus element and its square as a negative control, the Spin₇ failure). Cited from the routes and Needs of §§0.3, 0.4, 0.5, 0.9, 0.10 and 3.13. References gains [Griess]; Suggested.lean's docstring names §0.0 among the unstatable headlines (G₂(ℂ) missing). `sources.toml`: key `Griess`, status `uncertified`, DOI 10.1007/BF01884298, locator Theorem 1 (the review's entry was not in the committed manifest; recorded again through the service, title and author corrected).

Differently in two respects. (1) Placement: the target is §0.0, before §0.1, instead of a renumbered §0.2: this avoids rewriting about sixty `§0.k` references and the manifest's `cited_for` fields, and the board already uses §x.0 for an inserted first target (AutomorphicLFunctionsAndLocalFactorsPartII §0.0, PrismaticCohomology §2.0). (2) §0.2 is not a consumer: the injectivity of j modulo duality is proved in GS (proof of Lemma 2.4(i), lines 422–428) by comparing irreducible summands of 1 ⊕ φ ⊕ φ∨, with no conjugacy theorem; the old sentence attributing it to "the conjugacy theorem cited in GS Lemma 2.4" was wrong and is replaced by the summand argument (the three-character case checked: (a, b, (ab)⁻¹) and (a, b⁻¹, a⁻¹b) have equal eigenvalue multisets only if a² = 1 or b² = 1, and then they are duality-conjugate). Griess enters at (ii) and (iii) of Lemma 2.4, which are §0.3 and §0.4.

## F02 (P2) — applied

Verified: GS lines 606–608 ("injection L⁻¹(φ) ↪ Irr(S_φ)" at p = 3), lines 664–667 (nonvanishing known only for η trivial or subregular; L⁻¹([φ]) = {π_η}). Also HD line 1019 (Theorem 8.5(i): Θ(τ^ε) = 0 only when φ_τ contains the trivial representation and ε = −, so both split lifts of a discrete τ are nonzero in every residue characteristic) and ExceptionalThetaCorrespondencesForG2 §5.7 (self-dual supercuspidals of PGL₃ exist only for p = 2).

Changed: §4.2 now states the labelling as an injection L⁻¹(φ) → Irr(μ₃), bijective for p ≠ 3 and, for p = 3, exactly when both division lifts are nonzero, with a route (dichotomy and Howe duality place every member as one of the three lifts; distinctness from τ ≇ τ∨); its p = 3 Check names the direction. §4.3: injection L⁻¹(φ) → Irr(S₃) with the same labels, bijective exactly when the division lift is nonzero; at p = 3 the only self-dual discrete φ_τ is Sym², so the case is the complete subregular fibre of §4.4 (new Check). §7.1 and its Check: "natural injection L⁻¹(φ) → Irr(S_φ) … bijection whenever the division lifts are nonzero and in particular for the subregular parameter".

## F03 (P2) — applied

Verified: ExceptionalThetaCorrespondencesForG2 at its head, README line 112 (gap:ramified-spin-factor on AutomorphicLFunctionsAndLocalFactorsPartII, "belongs to D.6") and its §8.9 consumer; AutomorphicLFunctionsAndLocalFactors AL.4 (lines 2649–2746: Satake factors and Weil–Deligne normalization, no Langlands–Shahidi theory; the only "Shahidi" hits are Gelbart–Shahidi strip bounds and Raghuram–Shahidi periods); AutomorphicLFunctionsAndLocalFactorsPartII at its head has Layer 6 "generalized local factors" and no spin factor; merge order lines 167 (Part II), 311, 312.

Changed: the gap moves to a new contract heading `### From TauCetiRoadmap.AutomorphicLFunctionsAndLocalFactorsPartII` (Layer 6), stated as extending the ramified-spin-factor contract of ExceptionalThetaCorrespondencesForG2 by the γ- and ε-factors, the quadratic-twist rule γ(s, σ ⊗ χ ∘ sim, spin, ψ) = γ(s, σ, spin ⊗ χ, ψ), holomorphy in Re s > 0 for tempered σ and the global functional equation; `plan.json` gap `pgsp6-shahidi-spin-factor` has supplier AutomorphicLFunctionsAndLocalFactorsPartII, section "Layer 6 (generalized local factors)"; Needs of §§2.4, 6.1, Dependencies of Layers 2 and 6, and the Scope bullet on L-factors updated.

## F04 (P2) — applied

Verified: SV lines 11075–11080 and 11239–11246 versus GS lines 1038–1040 (two unrelated statements); ExceptionalThetaCorrespondencesForG2 head README line 120, gap:regular-real-unitarity on AutomorphicFormsOnReductiveGroups §§2.4, 5.4; AutomorphicFormsOnReductiveGroups at its head has §2.4 *Temperedness, discrete series and Langlands quotients*.

Changed: gap:poincare-weak-containment restricted to the Sakellaridis–Venkatesh statement (README and `plan.json`); new gap:regular-real-unitarity on AutomorphicFormsOnReductiveGroups, Layer 2 §2.4, with the same statement as ExceptionalThetaCorrespondencesForG2's (split G₂(ℝ) and PGSp₆(ℝ), a constant C ≥ 0, real integral discrete-series infinitesimal character with ⟨Λ, α∨⟩ > C), `neededBy` 1.6 and 6.4; cited in the Needs of §1.6 and §6.4 and the Dependencies of Layers 1 and 6; §1.3's Needs names the poincare-weak-containment slug.

## F05 (P3) — applied

Verified at the pin: `TauCeti/NumberTheory/ClassFieldTheory/WeilGroup/Basic.lean` lines 91 (`localWeilGroup`), 181 (`WeilGroup`), 235 (`weilDegree`), for `K` with `[Field K] [ValuativeRel K] [TopologicalSpace K] [IsNonarchimedeanLocalField K]`.

Changed: the module docstring says Tau Ceti has `W_F` (`TauCeti.ClassFieldTheory.WeilGroup` with `weilDegree`) and that what is missing is G₂(ℂ) (no automorphism group of `TauCeti.Octonion` as a linear algebraic group, no comparison with `spinGroup`), parameters valued in it, smooth representations of G₂(F) and G₂(F) itself; the last bullet also names Griess's theorem (§0.0). No declaration changed.

## F06 (P3) — applied differently

Verified: ClassFieldTheory README line 1534 ("fixes the arithmetic normalization"); EndoscopicTransferAndUnitaryTraceComparison §10.1 (line 3600: `ω(w) = q^{deg(w)}`, arithmetic degree +1, geometric Φ of degree −1, `Art_geo` = arithmetic reciprocity composed with inversion); ExceptionalThetaCorrespondencesForG2 §0.7 (|w| = q^(−deg w), arithmetic Frobenius of degree 1); SmoothRepresentationsOfLocalGroups SR.5.2 *classical-llc-normalization* ("reciprocity sends a uniformizer to arithmetic Frobenius. Transport any geometric-Frobenius source convention by inversion"). Computed: |Frob_arith| = q⁻¹ and ω(Frob_arith) = q, so ω = |·|⁻¹, and |·| on W_F is the absolute value of F under the arithmetic map (|ϖ| = q⁻¹ = |Frob_arith|), so the README's formula is the arithmetic normalization.

Changed: "geometric reciprocity" → the arithmetic normalization, with the sentences: rec of §10.1 is stated with the geometric map and ω = |·|⁻¹; it is read here by the inversion transport of SR.5.2 (a character χ ∘ Art_geo⁻¹ becomes (χ ∘ Art_arith⁻¹)⁻¹, a parameter its contragredient); every composition with |·|^(±1/2) (§§3.2, 3.5, 3.6, 9.3) uses this |·|; every identity between factors of representations and of Weil–Deligne representations (§§2.4, 3.10, 3.12) is read in the §10.1 convention before transport. §3.2's Check names the character. Differently: the review proposed citing "the LP-normalized conversion of ExceptionalThetaCorrespondencesForG2 §0.7"; that conversion (r_LP(w) = φ(w, diag(|w|^(−1/2), |w|^(1/2))), N) is the Weil–Deligne dictionary for LanglandsParameterStacks, not a change of reciprocity normalization, and ExceptionalThetaCorrespondencesForG2 itself takes the GL_n correspondence from SR.5.2 with the arithmetic normalization; so SR.5.2's transport is cited instead.

## F07 (P3) — applied

Verified: `Completed/Chebotarev/README.md` on main, Layer 10 *Dirichlet-density Chebotarev* (value #C/#G over every number field), Layer 14 natural density. Changed: "Chebotarev, Layer 10" in the Needs of §§0.9, 5.2, 8.2, the Dependencies of Layers 0, 5, 8, a bullet under *From Tau Ceti roadmaps on main* (density theorem applied to finite quotients of the image, so semisimple ℓ-adic representations with conjugate Frobenius images at density one are isomorphic), and the Scope list; §0.9's route says where Chebotarev enters.

## F08 (P3) — applied

Verified: ExceptionalThetaCorrespondencesForG2 §9.1 *Quaternion pointwise stabilizers*, §§0.7–0.8; AutomorphicFormsOnReductiveGroups §§4.2–4.3 at its head; SmoothRepresentationsOfLocalGroups SR.2.3 *Pairings, canonical lifting, Iwahori invariants and Whittaker functionals*. Changed: Needs lines after the Checks of §0.6 (ExceptionalThetaCorrespondencesForG2 Layer 0; SpinRepresentations Layers 2 and 4), §1.1 (Layer 9 §9.1; AutomorphicFormsOnReductiveGroups Layers 0 and 4 §4.2; GlobalQuadraticForms) and §1.2 (AutomorphicFormsOnReductiveGroups Layers 0 and 4 §§4.2–4.3; SR.2.3).

## F09 (P3) — applied

Verified: GS lines 789–792 (Adams–Barbasch used for complex groups, PGSp₆(ℂ) = Sp₆(ℂ)/μ₂); MetaplecticAutomorphicForms §3.34 *Similitude theta correspondence* at its head. Changed: the Adams–Barbasch clause removed from gap:pgsp6-similitude-theta-tables (README and `plan.json`); new gap:pgsp6-pgso8-complex-theta on MetaplecticAutomorphicForms §3.34 (the complex-place correspondence on parameters, so that the spin lift at a complex place is the triality transform and the spin gamma identity holds there), `neededBy` 2.3 and 2.4; §2.3's bullet and Needs, §2.4's Needs and Layer 2's Dependencies cite it.

## Checks

- Elaboration (`lake env lean` on `packages/LocalLanglandsCorrespondenceForG2/Suggested.lean` from the content checkout, 15 s): exactly one message, `warning: declaration uses 'sorry'` at line 59 (`spin7_not_acceptable`). No `TauCeti.*` module is imported, so nothing was built.
- `#check @sumSquaresSeven`, `#check @spin7_not_acceptable` on a scratch copy: `sumSquaresSeven : QuadraticForm ℂ (Fin 7 → ℂ)`; `spin7_not_acceptable : ∃ Γ x, ∃ (_ : Finite Γ), ∃ r r', (∀ (γ : Γ), IsConj (r γ) (r' γ)) ∧ ¬∃ g, ∀ (γ : Γ), r' γ = g * r γ * g⁻¹`. Unchanged from `scratch/signatures.md` and equal to README §0.8; no section variables, so no binder can have been lost. Only the docstring changed.
- Dependency check, run as instructed after all edits: `depcheck: 242 roadmaps, 2488 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Gap slugs: the eleven slugs of `plan.json` `gaps` equal the eleven `gap:` slugs under *Exact supplier contracts*; the `plan.json` diff lies entirely inside the `gaps` list (lines 4582–4698).
- No absolute path, job id, LaTeX delimiter or process word in the edited files.
- Ownership: Griess's theorem searched by object (`griess`, "conjugacy theorem", "acceptable") with `roadmaps grep` over main and the 460 open heads (index of 2026-11-06); only CFSGBasicProperties' Griess algebra appears. Open pull requests the brief names without files were not opened individually.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §0.0 trivial ρ′ | v ∘ ρ ≅ 1^⊕7 | ker v = 1, so ρ(γ) = 1 for all γ | consistent | Check kept |
| §0.0 Γ = ℤ/5 negative control | t = (ζ, ζ, ζ³), t² = (ζ², ζ², ζ) | v-spectra {1, ζ, ζ, ζ⁴, ζ⁴, ζ², ζ³} versus {1, ζ², ζ², ζ³, ζ³, ζ⁴, ζ}; ζ twice versus once; products ζ⁵ = 1 both | same image, not conjugate | Check added |
| §0.0 Γ = ℤ semisimple form | torus (x, y, z), xyz = 1, W = S₃ × {±1} | multiset {x^±, y^±, z^±} fixes the W-orbit: after x′ = x, y′ = y gives z′ = z, y′ = y⁻¹ forces y² = 1 or x² = 1 and then −1 ∈ W | holds | none |
| §0.0 A₂ Check | φ_τ, φ_τ∨ | 1 ⊕ φ_τ ⊕ φ_τ∨ is symmetric under φ_τ ↔ φ_τ∨ | conjugate | none |
| §0.0 principal SL₂ | Sym⁶ | dimension 7, no invariant line | single class | none |
| §0.0 acceptability form | elementwise conjugate ρ, ρ′ | equal characters of v ∘ ρ, v ∘ ρ′; completely reducible, char 0 ⇒ isomorphic | follows | none |
| §0.0 coefficient field | ℂ versus Ē_λ | G₂ defined over ℚ; Ē_λ ≅ ℂ abstractly (both algebraically closed, char 0, transcendence degree continuum) | transports | stated |
| §0.2 injectivity mod duality | three characters (a, b, (ab)⁻¹) vs (a, b⁻¹, a⁻¹b) | equal multisets iff a² = 1 or b² = 1; then (a, b⁻¹, ab) = inverse of (a, b, (ab)⁻¹) | no Griess needed | route rewritten |
| §0.5 route | ρ′ with i ∘ ρ′ = g(χ · iρ)g⁻¹ | v ∘ ρ′ = q ∘ i ∘ ρ′ = q ∘ (χ · iρ) = v ∘ ρ since q(χ(γ)) = q(±1) = 1 | §0.0 applies | route rewritten |
| §4.2 at p = 3 | both division lifts zero; one zero; none zero | fibre sizes 1, 2, 3; images {1}, {1, χ^±}, Irr(μ₃); map L⁻¹(φ) → Irr(μ₃) injective in each | holds | statement reversed |
| §4.2 distinctness | τ ≇ τ∨ | lifts from D₁ of τ and of τ∨ are the two division members; theta injective | distinct | Check sharpened |
| §4.3 at p = 3 | discrete self-dual τ | St_PGL₃ (χ ⊗ St self-dual iff χ² = χ³ = 1 iff χ = 1) or self-dual supercuspidal (p = 2 only) | only Sym² | Check added |
| §4.3 split lifts | HD Theorem 8.5(i) | Θ(τ^ε) = 0 iff 1 ⊂ φ_τ and ε = −; discrete φ_τ has no trivial summand | both nonzero, every p | stated |
| §7.1 at p = 3 | subregular; division lifts nonzero; one lift zero | bijection; bijection; injection with image of size 2 | consistent with §§4.2–4.3 | restated |
| Conventions |·| versus ω | Frob_arith, Φ = Frob_arith⁻¹ | \|Frob_arith\| = q⁻¹, ω(Frob_arith) = q, ω(Φ) = q⁻¹ = \|ϖ\| under Art_geo(ϖ) = Φ; \|Frob_arith\| = \|ϖ\| under Art_arith(ϖ) = Frob_arith | ω = \|·\|⁻¹; label arithmetic | relabelled |
| Conventions transport | GL₁, χ; trivial χ | χ ∘ Art_geo⁻¹ = χ ∘ inv ∘ Art_arith⁻¹ = (χ ∘ Art_arith⁻¹)⁻¹; trivial character fixed; \|·\| ↦ ω | inversion, as SR.5.2 says | sentence added |
| §3.2 Check with the fixed |·| | L(1) at Frob_arith | diag(q^(−1/2), q^(1/2)) under Sym⁶ gives q^(−3), …, q^(3), symmetric | unchanged | character named |
| gap pgsp6-shahidi-spin-factor twist rule | unramified σ, χ(ϖ) = −1 | spin eigenvalues α_i ↦ −α_i on both sides | consistent with §2.5 | stated |
| gap regular-real-unitarity | C = 0 | would assert every unitary module with regular integral discrete-series character is discrete series; false in general, hence an unspecified C | statement needs ∃ C | as ExceptionalThetaCorrespondencesForG2 |
| gap pgsp6-pgso8-complex-theta | complex place | PGSp₆(ℂ) = Sp₆(ℂ)/μ₂ (GS line 790), so one correspondence | well posed | stated |
| Chebotarev contract | two semisimple reps, density-one agreement | finite quotient G, Frobenius classes of density #C/#G exhaust G, Brauer–Nesbitt | isomorphic | stated with "semisimple" |

## For the maintainer

- New section §0.0 in Layer 0; no existing section number changed, so citations of this package's §§0.1–0.10 elsewhere remain valid.
- New gap slugs `regular-real-unitarity` (AutomorphicFormsOnReductiveGroups, same statement and slug as ExceptionalThetaCorrespondencesForG2's) and `pgsp6-pgso8-complex-theta` (MetaplecticAutomorphicForms §3.34); gap `pgsp6-shahidi-spin-factor` now on AutomorphicLFunctionsAndLocalFactorsPartII, Layer 6, as an extension of that roadmap's ramified-spin-factor contract from ExceptionalThetaCorrespondencesForG2.
- `sources.toml` gains the uncertified key `Griess` (paywalled Inventiones article, cited by locator). No `needs-references.toml` request: the citation is settled as uncertified.
- The Suggested.lean declarations and their names are unchanged.
