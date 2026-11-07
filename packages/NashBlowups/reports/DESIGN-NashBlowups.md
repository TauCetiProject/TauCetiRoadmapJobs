# Design report: NashBlowups

Deliverables: `packages/NashBlowups/design/README.md`, `packages/NashBlowups/design/plan.json` (8 layers, 38 targets,
no gaps), `packages/NashBlowups/sources.toml` (15 entries; 3 added: `hamann2003`, `stacksAlgebra`, `alperModuli`).

## What the design covers

All nine final targets of the triaged brief are planned, several in corrected or more general form:

| Brief target | Where | Change against the brief |
|---|---|---|
| 1 Setting lemma | §1.1, §0.3 | as filed; the rank-`d` statement is routed through the new open `X_sm^{(d)}` (§0.3), which also makes the construction total |
| 2 Existence and basic properties | §§1.2, 2.1–2.3, 2.6 | built once as the Nash modification `N(X, F, r, U)` of a sheaf (Oneto–Zatini), then specialised to `Ω_{X/k}` |
| 3 Universal property | §§1.3, 2.4 | **corrected**: the brief's "consequence" (any projective birational `π` with a rank-`d` quotient restricting to the identity is the Nash blowup) is false — `Bl_0 𝔸² → 𝔸²` is a counterexample. Replaced by the terminal-object statement and an exact criterion (lift is an isomorphism iff the classifying map is a closed immersion, for surjective `π`) |
| 4 Locality, Gauss map, local blowup | §§2.6, 3.1–3.3 | 4(c) planned as a theorem, in the global Oneto–Zatini form `X* ≅ Bl_I X` for any surjection `∧^dΩ → I` that is an isomorphism over `X_sm`, plus local existence and the hypersurface (Jacobian ideal) case; the Fitting-ideal comparison (not an isomorphism in general) is left to a Part II |
| 5 Nobile, characteristic zero | §§4.1–4.5 | over every field of characteristic zero; **new proof route** (below) |
| 6 Normal case, characteristic `p` | §§5.1–5.5 | **generalised** from algebraically closed to perfect fields, and shown false over imperfect fields (Stacks Example 10.140.8, tag 00TY) |
| 7 Normalised Nash blowup | §§6.1–6.3 | universal property stated with the normalisation's own hypothesis (generic points to generic points); the brief's "`h⁻¹(X_sm)` dense" does not suffice for the normalisation step. Field base change for finite separable extensions, with an inseparable counterexample |
| 8 Isomorphism criteria for `ν̄` | §6.4 | sharpened: `ν̄` iso ⟺ `X` normal and `ν` iso, with no normality hypothesis on `X` needed for "⇒" |
| 9 Iteration, never resolves | §§2.7, 7.1–7.3 | any `m ≥ 1`, both iterations; the cusp in characteristic `2` is a worked instance for the Nash iteration |

New intrinsic headline: §2.5, `ν` is an isomorphism iff `Ω_{X/k}` has a locally free quotient of rank `d`. Both
smoothness criteria are deduced from it.

**Characteristic-zero route.** The brief expected Teissier's proof through completions and Zariski's derivation lemma.
That route needs the reducedness of the completion of a reduced local ring essentially of finite type over `k`
(analytic unramifiedness), which neither pinned library nor any roadmap supplies. §4.4 uses instead: coordinates and
derivations from the free quotient (§4.1), the Lie derivative making the annihilator of the torsion part
derivation-stable (§4.2), Seidenberg's lemma on minimal primes of derivation-stable ideals (§4.3, `hamann2003`
Lemma 0.1), the vanishing of derivation-stable primes of a polynomial ring in characteristic zero, and dimension theory
(SchemeAndStackFoundations §0.7). This shows the torsion vanishes, so `Ω` is free of rank `d`, and the cotangent
comparison (§0.5) with §0.6 gives smoothness. No completion is used.

**Characteristic-`p` route.** Duarte–Núñez-Betancourt's proof is kept, with two simplifications: the coordinates and
derivations come directly from the free quotient (§4.1) instead of through differential powers and the
Brenner–Jeffries–Núñez-Betancourt pairing, and the generic rank `p^d` comes from `p`-bases (DerivedDeRhamCohomology
§0.23) instead of Kunz's rank formula. The codimension-two extension step is SchemeAndStackFoundations §0.17
`bijective_of_depth`; the converse of Kunz's theorem is EnhancedDerivedSheaves §E1.6.

## Ownership decisions

- **Grassmannian**: imported only from AlgebraicModuliForArithmeticGeometry §1.3 (`coherentGrassmannian`, `plucker`),
  which itself builds on ModularCurves §0G; this roadmap does not cite ModularCurves directly. The one interface
  lemma (closed immersion along a surjection, §0.4) is planned here, as the brief allowed, with Alper's
  relation-vanishing argument as locator.
- **Sheaf of differentials**: Tau Ceti has `AlgebraicGeometry.Scheme.relativeDifferentials` over an affine base, with
  quasi-coherence, finite presentation, restriction to opens, local freeness and rank on smooth schemes. No roadmap on
  main or in an open pull request states the comparison map `f*Ω_{Y/R} → Ω_{X/R}`, its base-change isomorphism or its
  surjectivity for closed immersions (searched by object; StableReduction Layer 1 on main only says "develop Kähler
  differentials far enough to form `Sing(f)`" and states none of them). This roadmap owns these three statements for
  Tau Ceti's affine-base sheaf (§§0.1–0.2). StableReduction is therefore not a supplier.
- **Blowups**: Tau Ceti's `IdealSheafData.blowup` with its universal property is used; StableReduction Layer 4 is not
  needed.
- **Normalisation**: AlgebraicModuliForArithmeticGeometry §5.4 owns the normalisation of reduced schemes (as the scheme
  case of its Deligne–Mumford construction), its finiteness over Nagata bases, its universal property and its smooth
  base change. The brief's risk that finiteness of normalisation has no owner is resolved by §5.4
  (`DMNormalization.finite`, resting on SchemeAndStackFoundations §0.20).
- **Commutative algebra owned here** (no other owner found by object on main or at the open heads): the Lie
  derivative on Kähler differentials and stable annihilators, Seidenberg's lemma, coordinates from a free quotient, the
  `p`-monomial operators, Frobenius finiteness of algebras essentially of finite type over perfect fields, the generic
  Frobenius basis and the freeness of the Frobenius pushforward of a normal local ring with a free quotient of the
  differentials, the cotangent comparison at separable residue fields, smoothness tested at closed points.
- **No notion was moved down from a later roadmap.** Every supplier is on main or earlier in the merge order.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Grassmannian convention | line `y = 2x` | tangent `(1,2)` ↦ quotient `dx ↦ 1, dy ↦ 2`, point `[1:2]`; conormal convention gives `[2:−1]` | consistent with Mathlib's quotient convention | witness added to Conventions and §3.1 |
| §0.1 comparison map | `t ↦ (t²,t³)`; identity; `Spec k → 𝔸¹` | `dx ↦ 2t dt`, `dy ↦ 3t² dt`; char 2: `dx ↦ 0`; point: `k·dx → 0` | not an isomorphism in general | Checks |
| §0.2 base change, closed immersions | `ℚ → ℚ(i)` on `𝔸¹`; cusp in `𝔸²` | `Ω` free rank 1 both sides; `O² → Ω_X` surjective with kernel `(−3x², 2y)` | holds | none |
| §0.3 `X_sm^{(d)}` | `𝔸² ⊔ 𝔸¹`; cusp; `k[ε]/ε²` | `X_sm^{(2)}=𝔸²`, `X_sm^{(1)}=𝔸¹`, `X_sm^{(0)}=∅`; cusp minus origin; `Ω` rank 1 but smooth locus `∅` | rank alone does not define the locus | defined inside the smooth locus |
| §0.4 surjection ⇒ closed immersion | `O² → Ω_cusp` | fibre of `Gr_1(Ω)` over 0 is `ℙ¹`, elsewhere a point | holds | none |
| §0.5 `m/m² ≅ κ⊗Ω` | `k[x]_(x)`; `k`; `𝔽_p(t)[x]_(x^p−t)` | `x ↦ dx`; `0 = 0`; class of `x^p − t` ↦ `d(x^p−t) = 0` | fails for inseparable `κ` | separability hypothesis, negative Check |
| §0.6 closed points | cusp; `𝔸ⁿ`; `Spec 𝔽_p(t^{1/p})` over `𝔽_p(t)` | embdim 2 > 1; regular; regular field not smooth | needs perfect `k` | hypothesis, negative Check |
| §1.1 setting | `𝔽_p(t)[y]/(y^p−t)`; `k[ε]/ε²`; `𝔸² ⊔ 𝔸¹` | field, not geometrically reduced, `X_sm = ∅`; nonreduced; `X_sm ≠ X_sm^{(2)}` | (4) needs pure dimension | stated with pure dimension |
| §1.2 Nash modification | `F` locally free; `O ⊕ O/(x)`; ideal of `0 ∈ 𝔸²` | `N = X`; Grassmannian fibre `ℙ¹` but `N = 𝔸¹`, `L = O`; `N = Bl_0 𝔸²` | the whole Grassmannian is the wrong model | Checks |
| §1.3 universal property | identity; `Spec k →` origin with `(a,b) ↦ b`; `Bl_p X → X` smooth `X` | inverse of `π_N`; does not factor (`h⁻¹(U) = ∅`); lift is `Bl_p X → X`, not iso | density needed; terminal object only | density hypothesis; brief's consequence replaced |
| §1.4 Plücker form | `r = 1`; cusp `d = 1` | identity; `∧¹Ω = Ω` | holds | none |
| §1.5 locality, flat base change | `V ⊆ U`; `g = U ↪ X`; `{0} → 𝔸²` | `V`; `U`; fibre product `ℙ¹` vs `∅` | flatness and density needed | hypotheses, negative Check |
| §2.1 Nash blowup | smooth `X`; cusp char 0/≥5; node; `Spec k`, `d=0` | `ν` iso; `X* = 𝔸¹`, `ν*Ω ≅ k[t]dx ⊕ k[t]/(t³)` (basis change `f₂ = −3t e_x + 2e_y`, 2 invertible); `𝔸¹ ⊔ 𝔸¹` from quotients `[1:0]`, `[0:1]`; `X* = X` | holds | Checks |
| §2.2 modification | cusp char 0; `y² = x²z`; smooth | finite birational not iso; `ν⁻¹(0) ≅ ℙ¹`; identity | holds | none |
| §2.3 setting preserved | cusp char 0, char 2; `𝔸² ⊔ 𝔸¹`, `d = 2` | `𝔸¹`; `≅ X`; `X* = 𝔸²`, `ν` not surjective | pure dimension needed | hypothesis |
| §2.4 universal property, characterisation | `Bl_0 𝔸²`; cusp normalisation; point; `𝔸¹ ⊔ 𝔸¹` with one line | lift `= π`; classifying map `t ↦ (t², t³, [1:3t/2])` closed immersion; excluded; closed immersion but lift not iso | brief's consequence false; characterisation needs surjective `π` | corrected statement, surjectivity added |
| §2.5 triviality criterion | cusp char 2, 3, 0 | char 2: `Ω = (dx,dy)/(x²dx)`, quotient `dy ↦ 1`; char 3: relation `2y dy`, `dx ↦ 1`; char 0: `b = (3t/2)a` forces `t ∈ k[[t²,t³]]`, impossible | holds | Checks |
| §2.6 locality, field base change | cusp `ℚ → ℚ(i)`; `V = X_sm`; inseparable point | `𝔸¹_{ℚ(i)}` both sides; `V* = V`; base change nonreduced | Setting needed | density argued through flatness (generic points to generic points) |
| §2.7 Nash iteration | smooth; cusp char 0; cusp char 2 | resolved at `i = 0`; at `i = 1`; `X^{(i)} ≅ X` for all `i` | predicate depends on characteristic | Checks |
| §3.1 Gauss map | `y = 2x`; cusp; `𝔸ⁿ` | `[1:2]`; `Φ(t) = [1:3t/2]`, closure `≅ 𝔸¹`; constant | holds | none |
| §3.2 blowup description | `𝔸¹`, `dx ↦ x`; cusp; `I = 0` | `Bl_{(x)} = 𝔸¹`; `(y,x²)` gives `𝔸¹`, `(x²)` gives `X`; `Bl_0 X = ∅ ≠ X*` | iso-over-`X_sm` hypothesis needed | negative Check |
| §3.3 hypersurfaces | cusp in char 0, 2, 3; node; `x^p − y^q` char `p` | `J = (2y,3x²)` = `(y,x²)`, `(x²)`, `(y)`; `(x,y)`, `Bl = 𝔸¹ ⊔ 𝔸¹`; `(q y^{q−1}) = (y^{q−1})` principal | consistent with §2.5 and nobile1975 Examples 1–2 | none |
| §4.1 coordinates | `k[x,y]_(x,y)`; cusp char 3; `d = 0` | `∂_i = ∂/∂x_i`; `∂ = ∂/∂x` well defined (`∂(y²−x³) = −3x² = 0`), `ker q = R dy/(y dy)`; `ker q = Ω` | holds | none |
| §4.2 Lie derivative | `k[x]`, `d/dx`; `x d/dx`; `k[x]/(x²)`, `∂x = x` | `L(x dx) = dx`, `L(dx) = 0`; `L(dx) = dx ≠ 0`; `L(x dx) = 2x dx = 0` in `Ω` | coefficients-only model excluded | Checks |
| §4.3 Seidenberg | `ℚ[x]`; `ℚ[x,y]`, `∂/∂x`, `(y²)`; `𝔽_p[x]`, `(x^p)` | only `0`, `ℚ[x]` stable; minimal prime `(y)` stable; `(x^p)` stable, `(x)` not | needs `ℚ ⊆ R` | negative Check |
| §4.4 free quotient ⇒ smooth (char 0) | smooth; cusp over `ℚ`; cusp over `𝔽₂` | trivial; no free quotient; free quotient `dy ↦ 1`, singular, `(x²)`-type stable ideal with unstable minimal prime | characteristic needed | negative Check |
| §4.5 Nobile | cusp `ℚ`; node; cusp `𝔽₂` | not iso; `X* = 𝔸¹ ⊔ 𝔸¹`; iso but singular | holds over any char-0 field | algebraic closedness dropped |
| §5.1 Frobenius finite | `k[t]`; `k`; `𝔽_p(t)(s)` | basis `1..t^{p−1}`; iso; degree `p²` over `p`-th powers | needs perfect `k` for the count | negative Check |
| §5.2 operators | `d=1, p=2`; `d=0`; cusp char 3 | `A = [[1,x],[0,1]]`, `φ₀ = id − x∂`, `φ₁ = ∂`, `φ₀(x) = 0`; `id`; `t³` not in `R³`-span of `1, t², t⁴` (exponents `0,2,4,6,8,9,…`) | operators do not give freeness alone | Check |
| §5.3 generic basis | `k(t)`; finite `K`; `t^p` | basis `1..t^{p−1}`; `{1}`; `d(t^p) = 0` | holds | none |
| §5.4 freeness of `F_*R` | `k[x]_m`; cusp char 3; `d = 0` | standard basis; injective not surjective; identity | normality needed (step 3) | Checks; ρ_Q∘ψ_Q = id verified on `e_α` |
| §5.5 Duarte–Núñez-Betancourt | `x^p + y² + t` over `𝔽_p(t)`, `p>2`; cusp char 2, 3; cone `z² = xy` | `m = (y)` at `(y, x^p+t)` so regular, `Ω = (dx,dy)/(2y dy)` with quotient `dx ↦ 1`, `ν` iso, not smooth; iso, not normal; `J = (x,y,z)`, `ν` not iso | false over imperfect fields | statement over perfect fields, counterexample as Check |
| §6.1 normalised blowup | cusp char 0, 2; `y² = x²z` | `𝔸¹`; `X* ≅ X`, `X̄* = 𝔸¹`; normalisation of `X` finite, `X̄*` has `ℙ¹` over 0 | holds | Checks |
| §6.2 universal property | `Z = X̄*`; cusp char 2, `Z = 𝔸¹`; closed point of `X_sm` | identity; isomorphism; outside hypotheses | brief's density hypothesis insufficient for the normalisation step | hypothesis replaced by generic points ↦ generic points, `Z` locally Noetherian |
| §6.3 locality, base change | `V = X_sm`; cusp `ℚ(i)`; `x^p + y² + t`, `k' = k(t^{1/p})` | `V`; `𝔸¹`; `C̄* = C` but `(C_{k'})̄* = 𝔸¹ ≠ C_{k'}` (`y² = −u^p`) | fails for inseparable `k'` | finite separable only |
| §6.4 criteria | cusp char 2; smooth; `x^p + y² + t` | `ν` iso, `ν̄` not; both iso; `ν̄` iso, not smooth | "⇒" needs no normality | sharpened |
| §7.1 normalised iteration | cusp char 0, 2; `i = 0` | `Y₁ = 𝔸¹`; `Y₁ = 𝔸¹` while `X^{(i)} ≅ X`; `Y₀ = X` | holds | none |
| §7.2 propagation | `U = Y`; cusp char 2; `U = Y_sm` | identity; `X^{(j)} ⊇ X`; `U` | holds | none |
| §7.3 never resolves | `m = 0`; smooth `X`; cusp char 2 | hypothesis always true but cusp char 0 resolved at 1; excluded; Nash never, normalised resolved | `m ≥ 1` needed | hypothesis, negative Check |

Further checks: every theorem's hypotheses are in scope in its own statement (no `variable` blocks exist yet; the
Setting is restated in each target of `plan.json`). Unused hypotheses: none identified. No headline mentions only
library objects: every headline is about *nashBlowup*, *normalizedNashBlowup* or their iterates.

## Proposed Part IIs

- **NashBlowups, Part II**: higher-order Nash blowups (Grassmannian of quotients of the sheaves of principal parts, with
  Yasuda's Hilbert-scheme description), normalised Nash transformations of surfaces (Hironaka, Spivakovsky), and the
  comparison with the blowup of the Fitting ideal `Fitt_d(Ω)`. It starts where §§1.2–1.5 and Layers 2 and 6 stop.
- A toric roadmap (not a Part II of this one) owns the logarithmic Jacobian description and the existence of the
  dimension-four examples; it consumes §§2.1–2.6, §3.2, Layer 6 and §7.3.

## Gaps

None. Every prerequisite is a pinned declaration, a section of a roadmap on main or earlier in the merge order
(AlgebraicModuliForArithmeticGeometry §§1.3, 5.4; SchemeAndStackFoundations §§0.7, 0.11, 0.17, 0.23, 0.30, 4.11,
4.13; EnhancedDerivedSheaves §E1.6; DerivedDeRhamCohomology §0.23), or an earlier target here.

## Sources

Read: all seven certified texts of the manifest, and three new ones fetched through the sources service — `hamann2003`
(arXiv, Lemma 0.1), `stacksAlgebra` (Stacks, Commutative Algebra: tags 00TT, 00TU, 00TV, 00RW, 00TY), `alperModuli`
(author page, proof of Theorem 1.4.5). Uncertified, cited by locator only and carrying no target: `hironaka1983`,
`spivakovsky1990`, `semple1954`, `teissier1982`, `ega1`. No text is listed in `needs-references.toml` (the file was not
created). Locator note: nashModificationNotes2024 Theorem 5.1 (line 362) reads "isomorphism if and only if X is
singular", a typo for "nonsingular"; the README says so at §5.5. The arXiv numbering of the Annals paper and of the
Duarte–Núñez-Betancourt paper is the numbering cited, as the manifest records.

## Citations, overlaps and open pull requests

- `roadmaps resolve` on the README: no cross-roadmap citation and no roadmap Lean name found nowhere. The tool did not
  check Mathlib and Tau Ceti names (no pinned Lake packages on that host); each was checked by hand at the pins
  (Mathlib `1b1ccf4`, Tau Ceti `2fd255d`), with file paths given in the supplier contracts.
- `roadmaps overlaps NashBlowups` cannot run before the roadmap exists in a pull request. Checked by hand: the open
  revisions of SchemeAndStackFoundations (#1276, #1656, #1807, #1808, #1854 at their heads) keep §§0.7, 0.11, 0.17, 0.23,
  0.30, 4.11, 4.13 with the same numbers; the open revisions of EnhancedDerivedSheaves keep §E1.6 and
  `isRegular_of_frobenius_flat`; AlgebraicModuliForArithmeticGeometry and DerivedDeRhamCohomology are new roadmaps read at
  their heads, with no other open pull request changing them. No cited id is dropped, and no id cited only by an open
  revision is used.
- Ownership by object was checked with `roadmaps grep` on main and at all open heads for: Nash blowup/modification,
  Nobile, Gauss map, the Grassmannian along a surjection, the comparison/base change of `relativeDifferentials`, the
  smooth locus of a given dimension, the Lie derivative on Kähler differentials, Seidenberg's lemma and
  derivation-stable ideals, freeness of `F_*R`, Kunz's theorem, normalisation of reduced schemes, `056V` and the
  Jacobian criterion. Hits are owners cited above or unrelated objects (smooth-manifold Lie derivatives; the Gauss map
  of abelian varieties in SheafConvolutionOnAbelianVarieties; a completed Grassmannian ring in
  FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII). The closest neighbour in vocabulary,
  ResolutionOfSingularitiesCharacteristicZero, plans Hironaka-style marked ideals and polynomial derivative ideals, no
  Nash modification and no Seidenberg lemma.

## Dependency check

    candidate: NashBlowups is not in the merge order yet; checked as if placed after AlgebraicModuliForArithmeticGeometry (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2354 edges, 0 problem(s)

No UPWARD or CYCLE line.

## For packaging

`Suggested.lean` is not part of this design. Its headline statements should be: the definitions *nashBlowup* (with
*smoothLocusOfDim*), *normalizedNashBlowup* and the two iterates; *nashBlowup.lift*; *nashBlowupHom_isIso_iff*;
*nashBlowupHom_isIso_iff_smooth_charZero*; *nashBlowupHom_isIso_iff_smooth_of_normal*; *normalizedNashBlowupHom_isIso_iff*;
*nashBlowup_iso_blowup*; *not_normalizedNashIterationResolves_of_openSubscheme*. The README writes its own names in
italics; the packager backticks those that `Suggested.lean` declares.

## Suspicious text

None. No fetched text contained instructions.
