# PKG-QuadraticFormInvariantsPartII — package report

Deliverables: `packages/QuadraticFormInvariantsPartII/README.md`, `Suggested.lean`, `metadata.toml`,
`sources.toml`, and the `gaps` list of `design/plan.json` (nothing else in it changed).

## 1. Headline theorems

Listed before the Lean file was written; each is marked stated (with its Lean name) or not statable
at the pins (with what is missing). Pins: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf` (from
`lake-manifest.json`).

| # | Headline theorem | Status | Lean name / what is missing |
|---|---|---|---|
| H1 | Quadratic Pfister forms are round, every fold, every characteristic (EKM Cor. 9.9) | stated | `quadraticPfister_smul_equivalent_of_represents` |
| H2 | A nonsingular quadratic Pfister form is isotropic iff hyperbolic (EKM Cor. 9.10) | stated | `not_anisotropic_quadraticPfister_iff_equivalent_dualProd` |
| H3 | Cassels–Pfister theorem, every characteristic, arbitrary form (EKM Thm 17.3) | stated | `exists_extendScalars_polynomial_eq` |
| H4 | Springer's odd-degree theorem, every characteristic (EKM Cor. 18.5) | stated | `anisotropic_extendScalars_of_odd_finrank` |
| H5 | Arason–Pfister Hauptsatz, `2` invertible (EKM Thm 23.7(1)) | stated | `two_pow_le_finrank_of_wittClass_mem_fundamentalIdeal_pow` |
| H6 | Milnor conjecture for the Witt ring, cohomological form `Iⁿ/Iⁿ⁺¹ ≅ Hⁿ(G_K, 𝔽₂)`, `2` invertible (EKM Fact 16.2; Morel Thm 1.1 + norm residue) | stated | `exists_addEquiv_quotient_fundamentalIdeal_pow` |
| H7 | Invariant-zero criterion, `2` invertible (EKM Fact 16.2 + Thm 23.7; DP Fact 3.1) | stated | `not_anisotropic_pfisterForm_iff_kummerSymbol_eq_zero` |
| H8 | Dittmann–Pop independent-value criterion (Prop. 3.2(2)), including unit reduction | stated | `quadraticPfister_isotropic_tfae_of_independent_values` |
| H9 | Tsen–Lang theorem (EKM Thm 97.7) | stated | `IsCi.of_trdeg` |
| H10 | Dittmann–Pop dimension theorem for unit Pfister forms (Prop. 3.2(3)) | stated | `not_anisotropic_quadraticPfister_of_kroneckerDimension` |
| N1 | Arason–Pfister Hauptsatz in characteristic two | not statable | no Witt group of nonsingular quadratic forms in characteristic two, no `W_b`-module filtration (`TauCeti.WittRing` assumes `Invertible 2`) |
| N2 | Invariant-zero criterion in characteristic two | not statable | no Kato group (needs the inverse Cartier operator on Kähler forms of an imperfect field) |
| N3 | Kato's theorem `I_qⁿ/I_qⁿ⁺¹ ≅ H₂ⁿ(F)` | not statable | same as N2 |
| N4 | Milnor conjecture in Milnor's form `Kₙᴹ(F)/2 ≅ Iⁿ/Iⁿ⁺¹` | not statable | no Milnor K-theory at the pins (H6 states the composite with norm residue) |
| N5 | Subform theorem | not statable | no function field of a projective quadric (its field structure needs the irreducibility theorem; a `sorry`'d field instance is forbidden) |
| N6 | Jannsen's Hasse principle in degree `d + 2` | not statable | no composita of a function field with completions of its global constant field, no restriction maps to them |
| N7 | Patch openness of henselian loci (DP Lemma 3.9) | not statable | no henselization of a valued field at the pins (confirmed: no `henselization` in pinned Mathlib or Tau Ceti) |

Definitions added only to make H1–H10 statable, all with real bodies on native carriers:
`quadraticPfister` (sum over Tau Ceti's `TauCeti.pfisterForm` weights of `[1, a₀]` built from
`QuadraticMap.proj`), `extendScalars` (coordinate polynomial; Mathlib's `QuadraticForm.baseChange`
needs `Invertible 2`), `kummerSymbol` (iterated `TauCeti.TopPairing.cup` of `TauCeti.kummerClass`),
`IsCi`, `kroneckerDimension`, `constantField`. Dittmann–Pop Prop. 3.2(1) (principal unit) is statable
but a two-line corollary of H8, so it is a README target (4.2), not a headline. The representation,
similarity and transfer theorems are stepping stones and stay in the README.

## 2. What the README could not support

- The design's real-function-field split ("QuadraticFormsRealFunctionFields", RF.0–RF.4, 15 routed
  items) is not carried: `RealSurfacePeriodIndex` (earlier in the merge order) states in its design
  that its Layer PI.0 is exactly that tranche. The README names it as owner in Scope.
- The design's open proof-input audits G1 (Kato's primary proof) and G2 (external leaves of Morel's
  argument) are not README items any more (the README is timeless): Kato 1982 is paywalled and is
  cited by its statement through EKM Facts 5.15 and 16.2 (`kato82`, uncertified); Morel's leaves are
  now targets here (Witt purity, read in Ojanguren–Panin Theorem A, p. 72; Arason's Satz 3.3, cited
  through Morel; the prime-field case, cited through Morel p. 66) except Rost's general cycle-module
  theory, declared as a supplier gap (below).
- Design API names (`binary`, `extend`, `BilinearWitt.classOf`, `QuadraticWitt.action`, …) are not
  declarations of `Suggested.lean`; their facts are stated in prose.

## 3. Notions moved down, supplier corrections and the supplier gap

The design's supplier labels were partly stale; each was re-resolved against the cited roadmap.

| Design contract | Finding | Now |
|---|---|---|
| `HigherLocalFieldsAndHigherClassFieldTheory` HL.2 (log-de Rham–Witt `H¹(F, Ω_log)`) | not on main, not in the merge order, no open PR: not consumable | **moved down**: Kato's group `H₂ⁿ(F)` and `H₂ⁿ ≅ H¹(G_F, ν(n−1))` are 3.1 targets here, on `KTheoryFiniteLocalFields` §3.0 (inverse Cartier operator, `ν_F(n)`, `blochGabberKato`) |
| HL.6 (Jannsen local–global injectivity) | same | **moved down**: 6.3 here (Jannsen Cor. 0.8 / Thm 0.4), route inputs `AdicCoefficientsAndComparisonsPartII` §PA.6.9, `DeligneWeightsAndPurity` §§7.12, 7.15, `MotivesAndAlgebraicCycles` §0.5b, `ClassFieldTheory` Layer 10, `KTheoryFiniteLocalFields` §3.0a |
| `MotivicEtaleKTheory` M.5a / M.5d (motivic complexes, norm residue) | its README (board package and PR head) is about cycle models and Beilinson regulators and says it adds no norm-residue theorem | `KTheoryFiniteLocalFields` §3.0a (norm residue, `ℤ/m(i) ≃ τ≤i Rε_*μ_m^⊗i`) and `MotivesAndAlgebraicCycles` §§0.5b, 4.1–4.6, 4.14 |
| `LogicAndDefinabilityInNumberTheory` LD.1 (henselization, Hensel lifting) | its Layer 1 is the Denef–Pas language and valued-field transfer; it states no henselization | Mathlib `HenselianLocalRing.TFAE`, `SchemeAndStackFoundations` §§0.12–0.14, `LocalFieldsRamificationPartII` §§GF.1, GF.4, GF.5 |
| `SchemeAndStackFoundations` SF.0 (projective dimension theorem) | not stated there | 5.2 target here from Mathlib `Ideal.height_le_spanRank_toENat` and the Nullstellensatz |
| SF.2 geometric `cd₂(L) ≤ trdeg` | stated as `field_cohomological_dimension_transcendence` in `ClassicalAdicEtaleCohomology` §11.2 | imported from there |
| `K2SymbolsBrauer` T.2 | section labels differ at the PR head | §§5.4–5.8, Layers 9–10, §10.32 |
| bilinear Witt group (design: built here) | `GeometryOfNumbersAndQuadraticArithmetic` §6.4 `ExactW0` gives the additive Witt group of symmetric spaces | imported; Layer 0 adds only the product and `I_b` |
| henselization vs completion for 2-primary cohomology (design S7) | not needed for DP Fact 2.1 (restriction to the completion factors through the algebraic compositum) | only the Galois-group comparison is used, in 6.2, from `LocalFieldsRamificationPartII` §GF.4 |

Supplier gap declared in `design/plan.json` and in the README (MotivesAndAlgebraicCycles contract,
and 3.3's *Needs:*):

- `rost-cycle-modules` — supplier `MotivesAndAlgebraicCycles`, section `0.5b`: Rost's cycle modules over
  a perfect field (cycle complexes with coefficients, their Zariski sheaves, Gersten resolution,
  homotopy invariance, contraction, and `K_*ᴹ/2` as a cycle module). A search of main, the open
  heads and the board packages found no owner (MotivesAndAlgebraicCycles §0.5b treats Bloch–Ogus
  theories with supports, K3BlochGroups only mentions maps of cycle modules).

The two former `gaps` entries (G1, G2, proof audits without a supplier) were replaced by this entry,
for the reasons in §2.

Incoming: `RealSurfacePeriodIndex` declares `gap:q2-tsen-lang` on this roadmap; 5.6 (`IsCi.of_trdeg`)
provides it. Consumers cite design labels `Q2.k`; Layer `k` here keeps the same index.

## 4. Duplication sweep (removals and kept variants)

Checked by object against main, the open roadmap PR heads (via `roadmaps grep`/`show`), the board
packages and the pinned libraries.

- Removed (owned elsewhere, now cited): the real-function-field tranche (RealSurfacePeriodIndex
  PI.0); the additive bilinear Witt group (GeometryOfNumbersAndQuadraticArithmetic §6.4 `ExactW0`);
  real-closure existence (RealAlgebraicGeometry Layer 1 `exists_realClosure`); the valuation spectrum
  and patch topology (Tau Ceti `TauCeti.ValuationSpectrum`, `patchTopology`; AdicSpaces Layer 1);
  `cd_ℓ G_K = 2` (ClassFieldTheory Layer 6); `cd_ℓ(L) ≤ cd_ℓ(K) + trdeg` (ClassicalAdicEtaleCohomology
  §11.2); norm residue and Beilinson–Lichtenbaum (KTheoryFiniteLocalFields §3.0a); inverse Cartier,
  `ν_F(n)` and Bloch–Gabber–Kato (KTheoryFiniteLocalFields §3.0); Milnor K-theory, residues, Bass–Tate
  and norms (K2SymbolsBrauer); henselization of pairs and Elkik lifting (SchemeAndStackFoundations
  §§0.12–0.14); valued henselization and Krasner decompletion (LocalFieldsRamificationPartII GF.1,
  GF.4); Abhyankar inequality (LocalFieldsRamificationPartII GF.5); Gabber prime-to-ℓ alterations
  (AdicCoefficientsAndComparisonsPartII §PA.6.9); Weil II weight bounds (DeligneWeightsAndPurity
  §§7.12, 7.15); Chevalley–Warning, Krull's height theorem, Hensel lifting (Mathlib); Scharlau transfer
  `QuadraticMap.scharlauTransfer` and the odd-characteristic Witt transfer (Tau Ceti); odd-characteristic
  Witt ring, fundamental ideal, Pfister classes, `Iⁿ` generation, low-fold roundness and two-fold
  isotropy criterion, Witt decomposition/cancellation/extension (Tau Ceti, parent Layers 1 and 4).
- Kept variants, each differing in one clause: `quadraticPfister` (all characteristics, terminal block
  `[1, a₀]`; isometric to the parent's `TauCeti.pfisterForm` family when `2` is invertible); Tsen–Lang
  (general `C_i ⇒ C_{i+t}`; SchemeAndStackFoundations §2.16 states `t = 1` over an algebraically closed
  field with `Br = 0`); Witt theorems in characteristic two (Tau Ceti's need `Invertible 2`);
  `extendScalars` (Mathlib's `baseChange` needs `Invertible 2`).
- Ownership against open PRs: checked for every sibling checkout listed in the brief through the
  roadmaps tool; no open PR owns all-characteristic Pfister theory, the Hauptsatz, the Witt-ring
  Milnor conjecture, Kato's comparison, `C_i`/Tsen–Lang, Kronecker dimension, the Dittmann–Pop
  criteria or Jannsen's theorem. No declaration of `Suggested.lean` reuses a fully qualified name of a
  readable roadmap.

## 5. Corrections to the design

1. Unit reduction, the principal-unit and independent-value criteria, positive-residue isotropy and the
   dimension theorem are stated for **every** henselian valuation for unit forms presented with
   terminal block `[1, a₀]`, `1 − 4a₀ ∈ Oˣ` (the integral form then has nonsingular reduction, which is
   all DP's (∗) uses). DP's non-dyadic hypothesis is exactly what puts their `⟨1, −ε₀⟩` forms in this
   shape (`a₀ = (1 − ε₀)/4`); the README explains this and gives `⟨1, 1⟩` over `ℚ₂` as the negative
   control. Layer 4 is titled "henselian unit and value criteria".
2. The function field `F(ψ)` and the subform theorem are restored to EKM's generality (irreducible `ψ`,
   e.g. anisotropic of dimension ≥ 2, not only nonsingular), with `trdeg F(ψ)/F = dim − 2` for every
   such `ψ` (design: `m ≥ 3`).
3. Witt cancellation in characteristic two is stated for a nonsingular cancelled summand (EKM 8.4),
   with EKM (8.7) as the negative control.
4. Dittmann–Pop Fact 2.1 is deduced from Jannsen without the henselization/completion cohomology
   comparison the design requested; the Galois-group comparison is used only for `cd₂` in 6.2.
5. Jannsen's statement used is Corollary 0.8 (p. 4), the `ℤ/2` instance of Theorem 0.4 (p. 2); Theorem 2.10
   is on p. 24.
6. The DP source slips (outer factors bilinear p. 6; signs `(−1)^{|S|}` p. 7; neighbourhood of `w`
   p. 11; the `cd₂(E′)` step p. 7) are corrected in place, with locators, without process language.
7. EKM printed-page locators were re-verified against the fetched text (PDF page − 8); Morel's against
   the OCR text (PDF page + 62).

## 6. Adversarial pass

Every statement written or changed. "OK" means both sides were computed and agree.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `quadraticPfister` (def) | `m = 0`; `K = 𝔽₂, a₀ = 1`; `char ≠ 2, a₀ = 1/4`; two-fold with `a₀ = (1−b)/4` | sanity `example`: value `x₀₀² + x₀₀x₀₁ + a₀x₀₁²` (elaborated); `[1,1]` over `𝔽₂` values 1,1,1 at the 3 nonzero vectors; `[1,1/4] = (x + y/2)²`; expansion `⟨1,−a,−b,ab⟩` | OK | — |
| H1 roundness | `m = 0` degenerate `a₀ = 1/4`; `⟨1,2⟩` vs `⟨1,1,1⟩` over `ℚ` | degenerate: `⟨1,−a⟩ ⊥ ⟨0,0⟩`, `G = G(⟨1,−a⟩)`; `3x²+6y² = 1` at `x=y=1/3` (so `⟨1,2⟩` round); `⟨3,3,3⟩` disc `27 ≡ 3` ≠ disc `1` | OK; non-example corrected in README (`⟨1,2⟩` is Pfister) | Check rewritten |
| H2 iso ⇔ hyp | `a₀ = 1/4` (`2 ≠ 0`); `ℍ ⊥ [1,1]` over `𝔽₂`; `[1,0]` char 2 | `(x+y/2)²` at `(1,−2)`: `1 − 2 + 1 = 0`, singular so not hyperbolic → hypothesis `1−4a₀ ≠ 0` needed; `ℍ⊥[1,1]` isotropic, anisotropic part `[1,1] ≠ 0`; `[1,0](0,1)=0` | OK | — |
| `extendScalars` (def) | `x₀x₁` over `L`; `[1,1]` to `𝔽₄`; `L = K` | sanity `example` gives `x₀ x₁` (elaborated); `ω²+ω+1 = 0`; identity | OK | — |
| H3 Cassels–Pfister | `h = 0`; `⟨1,1⟩`, `h = t²+1`, `h = 3`; Motzkin in 2 variables | `w = 0`; `(t,1) ↦ t²+1`; `x²+y² = 3z²` impossible mod 3; Motzkin is 4 squares in `ℝ(x,y)`, none in `ℝ[x,y]` | OK (no anisotropy hypothesis, as EKM 17.3) | — |
| H4 Springer | `[1,1]`: `𝔽₈` vs `𝔽₄`; `⟨1,1⟩` over `ℚ(∛2)`; char 3 inseparable cubic; char 2 odd degree | `x²+x+1` irreducible over `𝔽₈`; `−t = s²(−s)` not a square in `𝔽₃(s)`; inseparable degree in char 2 is a power of 2 | OK; README Check wrongly used a char-2 inseparable cubic | Check rewritten |
| H5 Hauptsatz | `n = 0`; `n = 1`, `[1,1]`; `⟨1,1,1,1⟩` over `ℚ`; `⟨1,1⟩` over `ℝ`; `3ℍ` | `1 ≤ dim`; `2 ≥ 2`; dim `4 = 2²`; signature `2` not divisible by 4 so not in `I²`; `3ℍ` class 0, hyperbolic | OK | muddled Check rewritten |
| `kummerSymbol` (def) | `n = 0`; degree bookkeeping | `kummerSymbol 0 a = kummerClass (a 0)`; `cup (n+1) 1` lands in degree `n+2` (elaborated) | OK | — |
| H6 Milnor (cohom.) | `n = 0` (degree 1); degree 2 over `ℝ`; degree 0 | `d±(⟨1,−a⟩) = (−1)·(−a) = a` = Kummer class; `⟨⟨−1,−1⟩⟩ ↦` Hamilton class ≠ 0; degree 0 excluded: `⟨2⟩ ∉ ℤ⟨1⟩` in `W(ℚ)` | OK | Check rewritten |
| H7 invariant zero | `n = 1`; `8⟨1⟩` over `ℚ`, `ℚ(i)`, `ℚ₂` | `⟨1,−a⟩` iso ⇔ `a` square ⇔ `(a) = 0`; `(−1)³ ≠ 0` and `8⟨1⟩` aniso over `ℚ`; over `ℚ₂` dim 8 isotropic and `H³ = 0` | OK | — |
| H8 TFAE | `𝔽₂((t))`, `π = t`; `π = t²`; trivial valuation; `ℚ₂`, `[1,1]`; `ℤ_(7)` non-henselian | block orders even/odd; `t²` value in `Γ²`, form `[1,1]⊥[1,1]` isotropic; only `s = 0`; `[1,1]` aniso over `𝔽₂` and `ℚ₂`; `⟨1,1⟩ = [1,1/2]`, `1/2 ∉ ℤ₂`, fails reduction; `⟨1,−2⟩` residually isotropic (`2 = 3²` mod 7) but aniso over `ℚ` | OK; generalization to dyadic henselian valuations verified on `ℚ₂` | stated generally |
| `IsCi` (def) | zero polynomial; `X^d`, `N = 1`; `ℝ`; `𝔽₂` and `C₀` | zero poly vanishes at `e₀` (needs `N > dⁱ ≥ 1`); `X^d` no nonzero zero, excluded by strict bound; `Σxᵢ²` anisotropic; `x²+xy+y²` no zero | OK | — |
| H9 Tsen–Lang | `t = 0`; `𝔽_p(t)`; `ℝ(t)` | reduces to algebraic extensions (5.5); `C₂`; `ℝ` not `C_i` so no conclusion | OK | — |
| `kroneckerDimension`, `constantField` (defs) | `𝔽_p`, `ℚ`, `𝔽_p(t)`, `ℚ(t)`, `ℚ̄` | `0, 1, 1, 2, 1`; constant fields `𝔽_p`, `ℚ`; `ringChar = 0` branch adds 1 | OK | — |
| H10 DP dimension | char `κ = p`; henselization of `ℚ` at 2; henselization of `ℚ(x)` at `x`, `ε = (−1,−1)`, `a₀ = 1/2`; `r = 0` | 5.8 applies; constant field contains `√−7` (`−7 ≡ 1 mod 8`), no ordering, hypothesis vacuous; `8⟨1⟩` aniso over `K ⊆ ℚ((x))` and over compositum with real algebraic numbers (hypothesis false, conclusion false); `r = 0` forces trivial valuation | OK | — |
| Convention `[1,(1−b)/4] ≅ ⟨1,−b⟩` | `b = −1` | `[1,1/2] = (x+y/2)² + y²/4 ≅ ⟨1,1⟩ = ⟨1,−(−1)⟩` | OK | — |
| Convention: nonsingular vs `Nondegenerate` | `⟨1⟩` on `𝔽₂` | polar kernel rank 1, quadratic radical 0: Nondegenerate but singular; even dim forces agreement (alternating rank even) | OK | — |
| 0.1 binary blocks | `[a,b]` at `(1,0),(0,1)`; char 3 `[1,1]` | `a, b`; `1 − 4 = 0` in `𝔽₃`, singular | OK | — |
| 0.3 char-2 Witt | `[1,1]⊥⟨1⟩ ≅ ℍ⊥⟨1⟩` over `𝔽₂`; `⟨1⟩` regular anisotropic | cancellation fails with degenerate summand; `φ_an` may have polar kernel (EKM 8.9(3)) | OK; a Check claiming the reflection argument fails for `(1,0),(0,1)` was wrong (`q(1,1) = 1`, reflection works) | Check replaced |
| 0.4 `W_b` char 2 | `⟨1,1⟩_b` over `𝔽₂`; `⟨1,t⟩_b` over `𝔽₂(t)` | isotropic at `(1,1)`, metabolic, `W_b(𝔽₂) = ℤ/2`; `x² + ty² = 0` forces `t` square | OK | — |
| 0.5 `I_q` | `⟨c⟩_b ⊗ [1,a]` | `c[1,a] ≅ [c, a/c]` via `y ↦ y/c` | design-derived Check said `[c, ac]` | Check corrected |
| 1.1 generation | unscaled one-folds, char 2 vs `2` invertible | `[1,d]⊥[1,e] ≅ [1,d+e]⊥ℍ`; `t[1,1]` over `𝔽₂(t)` does not represent 1 (odd degree); `⟨a,b⟩ = ⟨⟨−b⟩⟩ − ⟨⟨a⟩⟩` in `W` | design said "not for `n = 1`"; true only in char 2 | stated precisely |
| 2.4 transfer | `E = F(x)`, degree 2; inseparable `F(√c)`, trace 0 | `s_*⟨1⟩_b = ⟨1,−a⟩_b`, `s_*⟨x⟩_b = 0` (EKM 20.9, 20.12) | OK | — |
| 2.6 norm principle | `⟨1,−a⟩`, `E = F(√a)`; `[1,1]` over `𝔽₂(t)`, `E = 𝔽₂(√t)` | norms = values of `x²−ay²`; `c = [1,1](x,y) ⇒ c² = [1,1](x²,y²)`, `x², y² ∈ F` | a draft Check (`⟨1⟩`, `t^{1/2}`) was false | Check replaced |
| 2.7 odd divisor | `[1,1]`, `f = t²+t+1` | `f = [1,1](t,1)`; hyperbolic over `𝔽₄` | OK | — |
| 2.9 function field | `[1,1]` over `𝔽₂`; `⟨1,1,1⟩` over `ℚ`; `ℍ` | chart `t²+t+1 = 0`, `𝔽₄`; trdeg `1 = 3 − 2`; `ℍ` reducible | OK | generalized to irreducible `ψ` |
| 2.10 subform | `[1,1] ⊥ t[1,1] ⊇ [1,1]`; `ℍ` | hyperbolic over `𝔽₄(t)`; anisotropy needed | OK | — |
| 3.1 coefficients | `𝔽₂`; perfect char 2; `[dt/t]` over `𝔽₂(t)` | `𝔽₂/℘𝔽₂ = 𝔽₂`; `Ω¹ = 0` so `H₂ⁿ = 0` (`n ≥ 2`), matches `I_q²(𝔽_q) = 0`; `1/t` not a derivative in char 2 | OK | — |
| 3.2 Milnor map | `{u,1−u}` | `⟨1,−u,−(1−u),u(1−u)⟩` at `(1,1,1,0)`: `0` | OK | — |
| 3.3 Witt sheaves | `𝔸¹_k`; intersection vs ideal power | `W(k[t]) = W(k)` | vague draft Check | Check rewritten |
| 3.6 Kato | `n = 1`: Arf; square slot | `ē₁([1,1]) = 1`, `ē₁([1,0]) = 0`; `d(c²) = 0` | OK | — |
| 3.8 naturality | `𝔽₂ → 𝔽₄`; `𝔽₂(t) → 𝔽₂(t^{1/2})` | `1 = ω²+ω ∈ ℘𝔽₄`; `dt = 2s ds = 0` | OK | — |
| 4.2 principal unit | `[1, 1+t]` over `𝔽₂((t))` | residue `[1,1]` anisotropic, so no claim for a terminal principal unit | OK | — |
| 5.2 proj. dimension | `x, y` with `N = r = 2`; `x²+y²` over `ℝ` | only `0`; no nonzero real zero | OK | — |
| 5.3 finite fields | `x²+xy+y²+z²` over `𝔽₂` | zeros `(0,0,0),(1,0,1),(0,1,1),(1,1,1)`: 4, divisible by 2 | OK | — |
| 5.7 dimension drop | trivial valuation; `p`-adic on `ℚ` | no drop; `0 < 1` | OK | — |
| 6.1 coefficient fields | `ℚ((t))`; `ℚ₂`; `ℚ(s)((t))` | `E = ℚ`; char mismatch; `ℚ(s)` and `ℚ(s+t)` both map onto `ℚ(s)` | OK | — |
| 6.2 local cd | `t = 0`, `v = 2`; `ℝ`; `ℚ(x)` | `cd₂ = 2`; `Hᵐ(G_ℝ,𝔽₂) = 𝔽₂` all `m`; `cd₂(ℚ(x)ℚ₃^h) ≤ 3` | OK (DP E2 fixed) | — |
| 6.3 Jannsen | `d = 0`; `d = 1` Brauer; `ℚ(x)`, `(−1)³` | ABHN; Sha kernel in degree 2; detected at the real place | OK | — |
| 7.1/7.2 loci | `ℚ`, 7-adic, `T²−2`, `x = 3`; trivial valuation; `⟨1,1⟩` over `ℚ` | `p(3) = 7`, `p′(3) = 6`; `ℚ(√2) ⊄ ℚ`; locus = `p ≡ 1 mod 4` | OK | additive notation fixed |

Binder check: every declaration was `#check`ed in one scratch file (all ten theorems and six
definitions). Each elaborated type carries exactly the binders of its README statement; there are no
section `variable`s, so no hypothesis was dropped, and nothing changed. Three proved sanity examples
(the one-fold form is `[1, a₀]`; `TauCeti.pfisterForm` of one slot is `![1, −a]`; the coordinate
extension of `x₀x₁` is `x₀x₁`) elaborated; they stay in scratch only.

## 7. Elaboration outcome

`lake env lean packages/QuadraticFormInvariantsPartII/Suggested.lean` (run from the content checkout,
after `lake build` of the four imported Tau Ceti modules, which completed: "Build completed
successfully (3419 jobs)"): exit 0, exactly **10** warnings `declaration uses 'sorry'` (lines 69, 78,
100, 110, 120, 145, 160, 176, 197, 220), no other message. The file has one `import Mathlib` plus four
`TauCeti.*` modules, no `set_option`, no `lemma`, no `sorry`'d data; 231 lines.

## 8. Dependency check

```
tauceti-roadmap … gate --depcheck packages/QuadraticFormInvariantsPartII/README.md --name QuadraticFormInvariantsPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 646 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. `roadmaps resolve` on the README: no cross-roadmap citation and no
Lean name found nowhere.

## 9. Sources

`sources.toml` (`sources check`: 0 problems). Certified: `ekm` (author copy), `dp` (arXiv v2;
published version not collated), `morel` (Numdam, OCR), `ovv` and `jannsen16` (Annals free copies,
`publisher-open`), `ojanguren-panin` (Numdam). Uncertified, cited by locator only (paywalled DOI):
`kato82`, `arason75`, `milnor70`. No text is missing, so no `needs-references.toml` was left. The design's
`benoist`, `bw`, `benoist17` and `upstream-qfi` entries are not cited by this README (the real tranche
belongs to RealSurfacePeriodIndex) and are not in the manifest.

No suspicious instructions were found in any fetched page, supplier README or the design files.
