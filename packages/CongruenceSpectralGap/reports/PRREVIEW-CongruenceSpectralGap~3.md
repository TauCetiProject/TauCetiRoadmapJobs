# Review of CongruenceSpectralGap (pull request #1504 at 03c49e7)

**Verdict:** needs changes

## R01 (P3) — Register the positivity source

**Location:** `TauCetiRoadmap/CongruenceSpectralGap/README.md:932` (“**rs96.** Zeev Rudnick and Peter Sarnak, *Zeros of principal L-functions and random matrix theory* (1996)”), with uses at lines 110, 437 and 439; `packages/CongruenceSpectralGap/sources.toml`.

**Claim:** The work `rs96` is still cited by the README and still has no entry in the source manifest. This is the previous report's R01 (and the first report's R03), unchanged by the two repair commits since.

**Witness:** The README's reference list names seven works; `packages/CongruenceSpectralGap/sources.toml` has exactly six keys (`gj78`, `teschl`, `lrs95`, `katz-gkm`, `bms02`, `laumon-swan`). The previous review fetched the institutional manuscript through the sources service and located the cited argument at `rs96 line 3181`, 3254, 3302 and 3339.

**Exact repair:** Add the single key `rs96` to the manifest for Rudnick–Sarnak (1996), with the README's institutional URL, locator scheme `section`, locator “Appendix §5.2, (5.4)–(5.14), Lemma 5.1, manuscript pp.52–55”, `cited_for` the §2.0 positivity input, and the service's provenance fields. Seven works, seven keys. No source text enters the repository; `lrs95` is settled and is not requested again.

## R02 (P3) — GlobalNumberFields Layer 6 is cited for a ray-class statement it does not make

**Location:** `TauCetiRoadmap/CongruenceSpectralGap/README.md:98` (“Layer 6 … also gives ℚ^×ℝ_(>0)\𝔸^×/(1+Nℤ̂)≅(ℤ/N)ˣ”), repeated at line 306 (“GlobalNumberFields Layer 6 identifies these τ with the characters of (ℤ/N)ˣ”), line 321 (“GlobalNumberFields Layers 6 and 9”) and line 363.

**Claim:** GlobalNumberFields Layer 6 supplies the density of ℚ in the finite adeles, the idele group, the idele class group and its norm-one subgroup; it does not state the quotient by the level-N congruence subgroup or its identification with (ℤ/N)ˣ. That identification is stated in two other layers of the same supplier.

**Witness:** `TauCetiRoadmap/GlobalNumberFields/README.md` at the head of its pull request: Layer 6 at lines 673–692 (density, ideles, norm-one compactness only); Layer 7 at lines 694–710 defines `ideleCongruenceSubgroup 𝔪` (principal units at the finite divisors of 𝔪, local units elsewhere, positive elements at the selected real place) and `rayClassQuotient : IdeleClassGroup K →* RayClassGroup 𝔪`, onto with kernel `raySubgroup 𝔪`; Layer 10 at line 804 proves `RayClassGroup (ratModulus n h) ≃* (ZMod n)ˣ` for the modulus (n)·∞. At 𝔪 = N·∞ and K = ℚ these two give exactly ℚ^×ℝ_(>0)\𝔸^×/(1+Nℤ̂) ≅ (ℤ/N)ˣ; at N = 1 the ray class group is trivial and the single character is the constant, as §0.5c's N = 1 Check needs.

**Exact repair:** In the GlobalNumberFields contract (line 98) keep Layer 6 for the density statement and attribute the identification to “Layer 7, the ray-class quotient `rayClassQuotient` with kernel `raySubgroup` at the modulus N·∞, and Layer 10, `RayClassGroup (ratModulus n h) ≃* (ZMod n)ˣ`”. Change the §0.5c route (line 306) to “GlobalNumberFields Layers 7 and 10 identify these τ …”, its *Needs* line (321) to “GlobalNumberFields Layers 6, 7, 9 and 10”, and the Layer 0 Dependencies (line 363) to the same list. Nothing mathematical changes: the φ(N) characters at N = 2, 3, 5 are 1, 2, 4 under either locator.

## R03 (P3) — The N = 3 Check names a quotient of Γ(3) by an element it does not contain

**Location:** `TauCetiRoadmap/CongruenceSpectralGap/README.md:318`: “c(3)=4, since [PSL₂(ℤ):Γ(3)/{±I}]=12 and every cusp of Γ(3) has width 3”.

**Claim:** −I ≢ I mod 3, so −I ∉ Γ(3) and “Γ(3)/{±I}” is not a quotient of Γ(3). The intended group is the image of Γ(3) in PSL₂(ℤ), which is isomorphic to Γ(3) itself; the index 12 and the cusp count 4 are correct for that image.

**Witness:** |SL₂(𝔽₃)| = 24, so [SL₂(ℤ):Γ(3)] = 24 and the image of Γ(3) in PSL₂(ℤ) has index 24/2 = 12; with every cusp of width 3 this gives 12/3 = 4 cusps. At N = 2, where −I ∈ Γ(2), the analogous quotient is legitimate: index 6 and width 2 give 3 cusps, as the Check at line 317 states.

**Exact repair:** Replace “[PSL₂(ℤ):Γ(3)/{±I}]=12” by “the image of Γ(3) in PSL₂(ℤ), isomorphic to Γ(3) because −I∉Γ(3), has index 12”. The values 12, 3, 4 and h₃ = 8 stay.

## Previous findings

- R01 — not repaired: `README.md:932` still lists “**rs96.** Zeev Rudnick and Peter Sarnak, *Zeros of principal L-functions and random matrix theory* (1996)”, and the manifest still has six keys without it. Written again as R01 above.
- R02 — repaired: `README.md:743` now reads “DeligneWeightsAndPurity §7.12 and its additive-character-sheaf-weight contract, consumed above”; the stale “constructed in this subsection” wording is gone and the dependency points at the declared provider.

## Verified sound

:robot: Independent AI incremental re-review of **94 changed lines since fd43f15** (60 insertions, 34 deletions, README and `Suggested.lean`; nothing outside the folder). I checked the two previous findings, every changed passage and what cites it (the title and scope, the AutomorphicSpectralTheory, AdelicAlgebraicGroups, GlobalNumberFields and ArithmeticGaloisRepresentations/EtaleDualityAndPerverseSheaves/SchemeAndStackFoundations contracts, §0.5b, the new §0.5c, §0.6, the Layer 0 and Layer 4 Dependencies, the §4.2b Euler–Poincaré target and its Checks, the §4.2b Kloosterman *Needs* line, Downstream consumers, and the two Lean declarations touched), the seeded sample where it falls in those passages (§0.5b and §4.2a's Lean carrier), the seven declared gaps, supplier direction and ownership, the gate and the elaboration. The adversarial tables below carry **79 rows** from the previous report for untouched statements and add **24 fresh rows** with computed values for the changed ones. The three findings are P3; there is no P1 or P2 finding.

**Gate and dependency direction.** The worker's gate at this head passes with `build=0`. I reran the gate (text, dependency and file checks) with the merge order supplied:

```text
gate CongruenceSpectralGap: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The prescribed dependency command returned:

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The merge order lists every supplier the diff introduces before this roadmap (line 147): AdelicAlgebraicGroups 31, ArithmeticGaloisRepresentations 42, ArithmeticLocallySymmetricSpaces 62, AutomorphicFormsOnReductiveGroups 63, DeligneWeightsAndPurity 78, AutomorphicSpectralTheory 82, EtaleDualityAndPerverseSheaves 96; GlobalNumberFields, SchemeAndStackFoundations and FuchsianOrbifolds are on main or earlier. The dropped supplier InverseGaloisAndArithmeticFundamentalGroups (line 44) no longer appears anywhere in the README. `git diff --stat origin/main...HEAD` outside the folder is empty and the worktree is clean.

**Elaboration, signatures and padding.** `lake env lean` on `TauCetiRoadmap/CongruenceSpectralGap/Suggested.lean` succeeded in 39 s with the three expected `sorry` warnings (lines 52, 63, 79) and nothing else. A scratch copy with `#check @name` for all four declarations elaborated; the types agree with the README: `hyperKloosterman` is `(F : Type u_1) → [Field F] → [Finite F] → {K : Type u_2} → [CommRing K] → ℕ → AddChar F K → Fˣ → K`, and the bound quantifies over every finite field, `1 ≤ k`, `ψ ≠ 1` and a unit `r`, with right side `↑k * ↑(Nat.card F) ^ ((↑k - 1) / 2)`. The change `[Fintype F]` → `[Finite F]` with `letI := Fintype.ofFinite F` inside the definition body and `Nat.card F` in the bound loses no hypothesis: `Fintype.ofFinite : (α : Type u_1) → [Finite α] → Fintype α` and `Nat.card : Type u_1 → ℕ` were checked at the pin, and the definition's body is a finite sum over `Fin k → Fˣ` under the local instance, so the value does not depend on the chosen `Fintype` structure (sums over a `Fintype` are instance-independent by `Finset.univ` uniqueness). The Gauss and eigenvalue theorems are unchanged. Replacing each of the three `sorry`s by `simp` in a scratch copy left all three goals open (“simp made no progress” at lines 56 and 87, unsolved goal at line 68), so no declaration is padding; the file has one `import Mathlib`, one real-bodied definition that a headline needs, and three headline theorems, no sorry'd data and no option overrides. The module docstring now names the principal-level adelic spectral decomposition (§0.5c) and the perfect-base descent of the Euler–Poincaré formula among the headlines not statable at the pins, which matches the README's new ownership.

**Seeded sample in the changed passages.** Unchanged sampled targets keep the previous report's treatment; the table marks which rows are fresh.

| Seeded target | Treatment at this head |
| --- | --- |
| 0.1 Hyperbolic quotient measure | Unchanged; carried (area π/3 at level one, 2π at Γ(2)). |
| 0.2 Positive orbifold Laplacian | Unchanged; carried (Δ1 = 0, Δy² = −2y², s(1−s) = 1/4+t²). |
| 0.3 Mean-zero Hilbert subspace | Unchanged; carried (complex mean zero, integrals V and iV). |
| 0.4 Positive spectral bottom | Unchanged; carried (diag(0, 21/100, 1/4) model, infimum 21/100 on the constant complement). |
| 0.5 Clipped eigenvalue convention | Unchanged; carried (∅, {21/100}, {1/3} give 1/4, 21/100, 1/4). |
| 0.5a Principal-level measure, completion and Casimir comparison | Unchanged text; fresh row below on its use by §0.5c (right-action convention, closure identification). |
| 0.5b Principal-level cusp compactness | **Changed route** (the adelic multiplicity input is dropped; compactness is proved geometrically and transported). Fresh rows below; `AutomorphicSpectralTheory §1.16a` resolved at its head line 1309; `lrs95` §1 pp.389–390 uncertified by policy. |
| 3.3 Mellin cutoff estimates | Unchanged; carried (pole order 5 → log⁴ absorbed by x^ε; σ = .5, β₀ = .4 integrability). |
| 4.1 Even prime-twist average | Unchanged; carried (Q = 3 gives q = 5 and one even nonprincipal character). |
| 4.2a Raw hyper-Kloosterman sums over every finite field | **Lean carrier changed** (`Finite F`, `Nat.card`). Fresh rows below; values at 𝔽₂, 𝔽₃, 𝔽₄ recomputed. |
| 4.3 Gauss-power average | Unchanged; carried (q = 3: 0 = −1−(−1); q = 5, k = 2: 5 = 5 and −5 = −5). |
| 4.4 Prime-twist average asymptotic | Unchanged; carried (balanced exponents at Y = Q^(5/2); main term 3/4). |
| 4.5 Twisted Rankin–Selberg nonvanishing | Unchanged; carried (d = 9: σ = .8 fails, σ = .9 wins). |
| 5.1 Luo–Rudnick–Sarnak parameter bound | Unchanged; carried (m = 2: .3; m = 3: .4; β₀ = .8 is the boundary). |
| 5.4 Congruence Rayleigh inequality | Unchanged; carried (u = 0, e₂, 2ie₂ and the constant 1). |

The rewritten §4.2b descent cites `katz-gkm` §2.0 and §2.3.1: `katz-gkm line 1117` opens Chapter 2 with a perfect field k and a proper smooth geometrically connected curve, and `katz-gkm line 1352`–1359 states the Euler–Poincaré formula with each boundary point weighted by its residue degree over k and χ_c = 2−2g−Σ deg_k(x). The README's statement matches: same weights, same χ_c, geometric connectedness kept. Katz's hypotheses on k (perfect) are the ones §4.2b keeps and the new imperfect-field Check tests.

**Fresh adversarial computations.** Finite-dimensional or classical models test the domains, counts and normalizations; they are not asserted to be the actual automorphic spectra.

| Changed statement or interface | Instances tried and values on both sides | Result / change |
| --- | --- | --- |
| Title and scope, lines 1 and 7 | AutomorphicSpectralTheory's own Part II is AutomorphicSpectralTheoryPartII (merge order line 290), which cites this roadmap at `TauCetiRoadmap/AutomorphicSpectralTheoryPartII/README.md:103` and 387 (quotient Laplacian from §§0.1–0.2, compact cuspidal resolvent from §0.5b). A second “Part II” of the same base would have two Part-II owners. | Standalone title is consistent with the existing consumer; no change. |
| AST contract, line 80: level-one expansion only | AST §4.8 at its head (line 2403) displays the one-cusp formula on PSL₂(ℤ)\ℍ and says a level subgroup has one family per cusp, without stating it; grep of the AST head for `K(N)` and “principal level” returns nothing. | §0.5c's specialization is new work, owned here; no re-plan. |
| §0.5c residual dimension φ(N) | Characters of ℚ^×ℝ_(>0)\𝔸^×/(1+Nℤ̂) ≅ (ℤ/N)ˣ: N = 1, 2, 3, 5 give 1, 1, 2, 4. Restricting to primitive characters of conductor N would give 0, 0, 1, 3 and lose the constants at N = 2. | Count and the “primitive or not” clause correct; the locator is R02. |
| §0.5c residual Casimir | τ∘det is right-SL₂(ℝ)-invariant; the 𝔰𝔩₂ Casimir differentiates along SL₂(ℝ), so Ω_N(τ∘det) = 0 on all φ(N) functions. A hypothetical value 1/5 would contradict this, as §0.6's third Check says. | Correct. |
| §0.5c continuous multiplicity, real factor | B(ℝ)∩SO(2) = {±I}; T(ℝ)/T(ℝ)⁰ = {±1}², modulo ±I two classes. diag(−1,1) (det −1) swaps them; diag(a,b) with ab > 0 has signs (+,+) or (−,−) = −I·(+,+) and fixes them. | The reduction to B(ℚ)⁺ is right. |
| §0.5c strong approximation step | For g ∈ GL₂(𝔸_f), gK(N)g⁻¹∩N_B(𝔸_f) is an open subgroup V of 𝔸_f and ℚ+V = 𝔸_f, so N_B(𝔸_f)gK(N) = N_B(ℚ)gK(N). At N = 1, g = 1: V = ℤ̂ and ℚ+ℤ̂ = 𝔸_f. | Density input used correctly (GlobalNumberFields Layer 6, line 679 at its head). |
| §0.5c cusp count h_N | GL₂(𝔸_f)/K(N) = ⊔_(ℤ/N)ˣ GL₂(ℚ)⁺/Γ(N) (K(N) normal in GL₂(ℤ̂), representatives there); B(ℚ)⁺\GL₂(ℚ)⁺ = ℙ¹(ℚ) with stabilizer of ∞ equal to B(ℚ)⁺ (SL₂(ℚ) is already transitive). So #X = φ(N)·#(Γ(N)\ℙ¹(ℚ)): N = 1, 2, 3 give 1, 3, 8. | Formula h_N = φ(N)c(N) verified; equals the cusp count of ⊕_(ℤ/N)ˣ L²(Γ(N)\ℍ). |
| §0.5c N = 3 Check | [SL₂(ℤ):Γ(3)] = |SL₂(𝔽₃)| = 24; image in PSL₂(ℤ) has index 12; widths 3; c(3) = 12/3 = 4; h₃ = 2·4 = 8. Full B(ℚ) instead of B(ℚ)⁺: GL₂(𝔸_f) = GL₂(ℚ)·K(3)-orbit with GL₂(ℚ)∩K(3) = Γ(3) (det ≡ 1 mod 3 forces det = 1), so B(ℚ)\GL₂(ℚ)/Γ(3) has 4 points. The O(2) quotient has (ℤ/3)ˣ/{±1} = one component. | Values correct; the quotient notation is R03. |
| §0.5c N = 2 Check | φ(2) = 1, c(2) = 3 (index 6 in PSL₂(ℤ), widths 2); the only character mod 2 is the trivial one, conductor 1, imprimitive. | Correct. |
| §0.5c N = 1 Check versus AST §4.8 | AST line 2403 displays (4π)⁻¹∫_ℝ⟪E(·,1/2+it),f⟫E(z,1/2+it)dt. The integrand is even in t (E(z,1/2−it) = φ(1/2−it)E(z,1/2+it) with |φ| = 1 on the line), so (4π)⁻¹∫_ℝ = (2π)⁻¹∫_(t>0); treating ±t separately would double the multiplicity. | Matches AST's displayed normalization. |
| §0.5c symmetric-family norm | AST §4.1 (line 2298) defines the norm Σ_P n_P⁻¹∫‖F_P‖² with n_P = Σ_Q |W(𝔞_P,𝔞_Q)|; for the Borel of GL₂, n_B = 2 and the Check at line 2309 says a reflected section has half the full integrated norm. With F(−λ) = M(w,λ)F(λ) and M unitary, (1/2)∫_ℝ‖F‖² = ∫_(t>0)‖F(it)‖². | The unitary equivalence with L²((0,∞),V) is normalization-consistent. |
| §0.5c spherical vector | −y²(∂ₓ²+∂ᵧ²)y^s = −y²·s(s−1)y^(s−2) = s(1−s)y^s; at s = 1/2+it this is 1/4+t², at t = 0 it is 1/4; s(s−1) would give −1/4−t² ≤ −1/4. 1/4 is in the spectrum but not an eigenvalue: the level set {t : 1/4+t² = 1/4} = {0} has measure zero. | Correct. |
| §0.5c sum over χ equals #X | ⊕_χ I_B(χ)^(K(N)SO(2)) is the Peter–Weyl decomposition under the compact group T(ℚ)T(ℝ)⁰\T(𝔸) ≅ (ℤ̂^×)² of the functions on the finite set X; dimension #X. At N = 1 only χ = 1 contributes, dimension 1. | The “dim V is the number of points of …” step is justified. |
| §0.5c adelic Iwasawa input | AdelicAlgebraicGroups §3.1 at its head, line 2730: `G(𝔸_F) = P(𝔸_F)K = N_P(𝔸) M_P(𝔸)^1 A_P(ℝ)^0 K`, surjective and open (line 2693). For B ⊂ GL₂ this is the displayed factorization. | Citation resolves. |
| §0.5c residual blocks input | AST §4.14a (line 2508) works at a fixed unitary central character; §4.6 (line 2381) restricts the decomposition to a fixed central character and twists by unitary characters. L²([GL₂]¹) is the Hilbert sum over the characters of the compact ℚ^×\𝔸^(×,1), so the blocks with d = 1, ν = 2 of all ω give exactly the τ∘det with τ² = ω. | Route inputs exist; the all-central-character passage is covered by §4.6. |
| §0.5c projections and reduction | AST §4.4 `projection_equivariant` (line 2358): projections commute with the right action and integrated Hecke actions; the averaging idempotent of K(N)·SO(2) is such an operator, so H_N = ⊕ of the three parts. Reducing Ω_N: the cuspidal part by §0.5a, the residual part (finite-dimensional, in the domain, Ω_N = 0), the continuous part as the complement of two reducing subspaces. | Consistent. |
| §0.5b route without the adelic input | Model λ_n = n on the cuspidal space: (A+1)⁻¹ has eigenvalues 1/(n+1) → 0, compact. Tail bound: frequency 2πn/w, n ≠ 0, gives ∫|u|²y⁻² ≤ R⁻²∫|u|² ≤ (w/(2πR))²∫|∂ₓu|² on y ≥ R; widths 1 and 3 give constants 1/(4π²R²) and 9/(4π²R²). The zero mode has ∂ₓu = 0 and positive mass. | Geometric compactness no longer presupposes the finite-multiplicity contract; the transport to the adelic cusp space goes through §0.5a. |
| §0.5b *Needs* versus §0.5c *Needs* | §0.5b needs §§0.1–0.2, 0.5a; §0.5c needs §§0.5a–0.5b; §0.6 needs §§0.2, 0.5a–0.5c. The build order 0.5a < 0.5b < 0.5c < 0.6 has no cycle. | No cycle. |
| §0.6 after the change | At level N the restriction to the identity component is the average of multiplications by τ∘det over (ℤ/N)ˣ, which preserve the three parts (AST §4.6 twisting). Residual: φ(N) componentwise constants restrict to one constant line; continuous: c(N) channels per component; Γ/Γ(N)-invariant channels ↔ Γ-orbits of cusps of Γ(N) = cusps of Γ (Γ(2): 3 → 3 at Γ = Γ(2); 3 → 1 at Γ = SL₂(ℤ)). | Correct. |
| §4.2b Euler–Poincaré descent | Over 𝔽₃ remove the degree-two point x²+1 = 0: one closed point of degree 2, two geometric points over 𝔽₉, each with Swan 1 for Lψ(1/(x²+1)); grouped sum 2·1 = 2 = 1+1; χ_c = (2−2)−2 = −2. Over 𝔽₂ with k = 𝔽₂: x²+x+1 is irreducible, degree 2, same count. | Residue-degree grouping by Galois orbits is correct for perfect k. |
| §4.2b imperfect-field Check | k = 𝔽_p(s): x^p−s = (x−s^(1/p))^p over k̄, one geometric point of residue degree p; U⊗k̄ = 𝔸¹, χ_c = 1 for the constant rank-one sheaf; the weighted formula would give 2−p (−1 at p = 3). | Negative control is correct and discriminates perfectness. |
| §4.2b coefficient extension step | For a lisse E_λ-sheaf, L⊗ℚ̄_ℓ has the same rank, the same dimensions of H^i_c (flat base change of coefficients) and the same Swan conductors (AGR §3.1 at its head, line 2635: invariance under extension of coefficients). Tame rank-one Kummer sheaf on 𝔾_m: 0 = 0 both before and after. | Inputs named and exist. |
| §4.2b owner EtaleDualityAndPerverseSheaves §5.2 | At its head, `TauCetiRoadmap/EtaleDualityAndPerverseSheaves/README.md:4922`–4941: `curveEulerPoincareSwan` for a smooth connected curve U with smooth proper completion C over algebraically closed k, ℓ invertible in k, lisse ℚ̄_ℓ-sheaf L; includes the finite coefficient-field form and compatibility with coefficient extension; no characteristic restriction; U = C allowed (C∖U empty gives χ_c = r(2−2g)). EDPS does not cite CongruenceSpectralGap. | Single owner earlier in the order (line 96 < 147); the former two-owner situation is gone. |
| `hyperKloosterman` with `Finite F` | 𝔽₂, k = 2, r = 1: tuples (1,1) only, ψ(0) = 1, value 1 ≤ 2·2^(1/2). 𝔽₃, k = 2, r = 1: (1,1),(2,2) give ζ²+ζ = −1, norm 1 ≤ 2√3. 𝔽₄, k = 1: ψ(r) of norm 1 ≤ 1. `Nat.card 𝔽₄ = 4` so the bound at k = 2 is 2·2 = 4 ≥ 3. | Instance change preserves values and bound. |
| `hyperKloosterman_bound` nontriviality guard | Trivial ψ on 𝔽₅, k = 3: value (5−1)² = 16 > 3·5 = 15. | `hψ` remains essential; carried value re-checked. |

**Carried adversarial rows.** These are the previous report's rows for statements the diff leaves untouched, each attributed to that report ([previous]); they are not re-derived here.

[previous]: packages/CongruenceSpectralGap/reports/PRREVIEW-CongruenceSpectralGap~2.md

| Statement | Instances and computed sides | Result / change |
| --- | --- | --- |
| Conventions; 0.1 effective area | Signature (0;2,3;1 cusp) gives 2π(−2+1+1/2+2/3) = π/3; projective index 6 at Γ(2) gives 2π. | Counts ±I once; keep. [previous] |
| 0.1 finite measure/nonzero level | Γ(1) mass π/3 > 0; Γ(2) mass 2π > 0; Γ(0) is the identity subgroup, infinite area. | N ≠ 0 necessary. [previous] |
| 0.2 positive expression | Δ1 = 0; Δy² = −2y²; s(1−s) = 1/4+t². Opposite sign gives +2y². | Sign fixed. [previous] |
| 0.2 closed realization/cover | Torsion-free cover levels 3, 6 at N = 1, 2; cutoff beyond R loses mass ∝ w/R and energy ∝ w/R. | Constants survive the closure. [previous] |
| 0.2 nonzero operator | A nonconstant bump in a free chart has ∫|∇u|² > 0. | Excludes the zero realization. [previous] |
| 0.3 complex mean zero | Integrals of 1 and i are V and iV; v−(∫v)/V integrates to 0. | Real-part kernel would keep i. [previous] |
| 0.3 integral bound | |∫c| = |c|V = √V·(|c|√V); zero-integral bump gives 0 with positive norm. | Keep. [previous] |
| 0.4 Rayleigh definition | diag(0,.21,.25): e₂ gives .21/1; 2ie₂ gives .84/4 = .21; norm-only denominator .42. | Correct scaling. [previous] |
| 0.4 infima/core | Full infimum 0; constant-complement infimum .21; truncation of e₂ is 0 for R < .21. | Keep. [previous] |
| 0.5 clipped infimum | ∅, {.21}, {1/3} give .25, .21, .25. | Keep. [previous] |
| 0.5 lower-bound guard | S = {−n} has no real lower bound. | Bounded-below premise kept. [previous] |
| 0.5a measure isometry | Constant 1 on a component with c_N dA has norm² c_N V; image √c_N has c_N V; unscaled gives V. | Factor necessary. [previous] |
| 0.5a components/right action | N = 3: SO(2) gives 2 components, O(2) gives 1. N = 5, det 2 moves support 1 → 2⁻¹ = 3. | Convention matches supplier. [previous] |
| 0.5a level-changing maps | Conjugating [[1,1],[0,1]] by diag(p,1)^∓ gives entry 1/p. | Only GL₂(ℤ̂) acts at fixed level. [previous] |
| 0.5b cusp tail | Widths 1, 3 give 1/(4π²R²), 9/(4π²R²). | Width cannot be suppressed. [previous] |
| 0.5b zero-mode exclusion | x-constant tail has positive mass, zero x-energy. | Cuspidality essential. [previous] |
| 0.6 spectral channels | Γ(1) one channel, Γ(2) three; t = 0, 1 give .25, 1.25. | Not a universal one-channel expansion. [previous] |
| 0.6 residual removal | Componentwise constants have dimension φ(N) = 4 at N = 5; classical constant line is one. | Component restriction present. [previous] |
| 0.7 spectral/clipped equality | No exceptional eigenvalue: both .25; with .21: both .21; keeping the constant would give 0. | Right complement. [previous] |
| 1.1 exceptional parameter | r = 0, .2, .5 give λ = .25, .21, 0. | Open range; parity irrelevant. [previous] |
| 1.2 unitary monomial branch | Norm shift σ gives central modulus exponent 2σ; σ = 1 at norm 2 gives 4. | Real shift must vanish. [previous] |
| 1.2 archimedean temperance | Unitary induction bounded; diag(2,1/2) unbounded. | Excludes complementary model. [previous] |
| 1.3 adjoint normalization | a = 2, b = 3: adjoint weights 2/3, 1, 3/2 (product 1); raw Sym² gives 4, 6, 9. | Central inverse needed. [previous] |
| 1.3 exceptional lift | r = .2 gives {.4, 0, −.4}. | Spherical GL₃ specialization agrees. [previous] |
| 2.0 ramified positivity | (1−T)⁻¹ coefficients 1,1,1; deleting the factor gives 1,0,0. | All-prime target necessary. [previous] |
| 2.0 supercuspidal/logarithm | e = 2: coefficients 1,0,1; log 0,1. e = 1: log 1, 1/2. | Nonnegative. [previous] |
| 2.0 Steinberg blocks | (1−T)⁻¹(1−T/2)⁻¹: linear 3/2, quadratic 7/4; 5/8+(3/2)²/2 = 7/4. | Agrees. [previous] |
| 2.0 character transport | η(p) = −1 sends 1 → −1; conductor exponent 2 gives multiplier 1. | Includes ramified pairs. [previous] |
| 2.0 primitive-twist epsilon | m = 2 ratios 1, a/b, b/a, 1; |τ|⁴q⁻² = 1. | Degree m². [previous] |
| 2.1 functional equation normalization | f = 4, q = 5, m = 2: conductor 2500, numerator norm 50, 50/√2500 = 1. | Unit root number. [previous] |
| 2.1 gamma/analytic adapter | μ = ±.2: shifts .4, 0, 0, −.4; at Re s = 1 smallest real part .6. | No boundary pole. [previous] |
| 2.1 excluded twist cases | Primitive twist changes inertia; odd χ has sign −1. | Real hypotheses. [previous] |
| 2.2 forced zero | β₀ = .4: maximal gamma argument 0; sΓ_ℝ(s) → 2. | No division by a pole value. [previous] |
| 3.1 cutoff tail | Bump in [1,2]: F₁(.5) = 1, F₁(3) = 0; doubling gives Mellin mass 2. | Normalization fixes the kernel. [previous] |
| 3.1 Mellin normalization | Indicator of [1,2]: log 2 versus 1; contour factor (2π)⁻¹. | Correct measure. [previous] |
| 3.2 dual kernel | G = 1, bump in [3,4]: x = .2 gives 1, x = 2 gives 0. | Inversion at 1/x. [previous] |
| 3.2 differential sign | G(w) = w: βT−a versus βT+a, difference 2a. | Minus sign kept. [previous] |
| 3.3 pole collision | d = 4: pole order 5, log⁴, absorbed by x^ε. | ε-loss. [previous] |
| 3.3 small-x integrability | σ = .5, β₀ = .4, ε′ = .1: exponent −.5, integral 2; at ε′ = .6 diverges. | ε′ < 1−β₀. [previous] |
| 3.4 two-kernel equation | β = .5: both n^(−.5); Y → 2Y doubles nY/(fq^d). | Reciprocal scale. [previous] |
| 4.1 finite average | Q = 3 gives q = 5, total 1; fπ = 5 removes it. | Indexing verified. [previous] |
| 4.2 even orthogonality | q = 5: residues give 0,1,−1,−1,1; q = 3 gives 0. | Principal subtraction required. [previous] |
| 4.2 main n = 1 coefficient | q = 5: (q−1)/2−1 = 1. | Passes. [previous] |
| 4.2a rank zero/one | 𝔽₃, k = 0: r = 1 gives 1, r = 2 gives 0; k = 1 gives ψ(r). | Empty product handled. [previous] |
| 4.2a coefficient ring | 𝔽₃, k = 2, r = 2 raw sum 2; mod 2 gives 0; zero ring 0 = 1. | General coefficients allowed. [previous] |
| 4.2a additive scaling | a = −1, k = 2: same values; k = 1 sends ψ(r) to ψ(−r). | Direction correct. [previous] |
| 4.2a eliminated-variable comparison | 𝔽₃, k = 2, r = 1: ζ²+ζ = −1 both ways; r = 2: 2. | Agrees. [previous] |
| 4.2b additive sheaf | 𝔽₃: trace ζ at 1; over 𝔽₉ trace ζ². | Geometric Frobenius fixed. [previous] |
| 4.2b tensor phases | Characteristic 2: phase 2x = 0, trace 1, Swan 0. | Phase addition. [previous] |
| 4.2b Euler–Poincaré, tame/proper | Constant rank r on 𝔾_m: 0; on ℙ¹: 2r; Kummer sheaf H_c = 0,0,0. | Empty boundary and characteristic zero covered. [previous] |
| 4.2b Euler–Poincaré, wild | Phase x: χ_c = 0; phase x² (odd p): −1. | Rank alone insufficient. [previous] |
| 4.2b perfect-base degrees | 𝔽₃, degree-two point: 2·1 = 2, χ_c = −2. | Residue degrees necessary. [previous] |
| 4.2b geometric components | ℙ¹ over 𝔽_(q²) viewed over 𝔽_q: χ_c = 4. | Geometric connectedness kept. [previous] |
| 4.2b Swan-constancy criterion | Lψ(tx): conductor 2 → 1, H_c² rank 0 → 1; constant ℙ¹ family ranks 1,0,1. | Jumping and empty-boundary cases. [previous] |
| 4.2b boundary rank term | x² = t: 2 → 1 geometric points; χ_c 0 → 1 with Swan 0. | Boundary rank term kept. [previous] |
| 4.2b properness | Missing special fibre: top rank 1 → 0; proper constant family rank 1. | ULA and proper conclusion distinct. [previous] |
| 4.2b rational coefficients | p invertible in ℓ-adic coefficients; nodal loop ℓ^a → ℓ^(a+1). | No global lattice assumed. [previous] |
| 4.2b convolution rank/Swan | (2,1)*(3,1): rank 5, Swan 1, χ_c = −5; product guess 6. | Formula discriminated. [previous] |
| 4.2b convolution iteration/purity | Kl₁*Kl₁: rank 2, Swan 1, weight 1; Kl₂*Kl₁: rank 3, weight 2. | Rank k, weight k−1. [previous] |
| 4.2b Kummer descent | p = 2, N = 3, coefficients 𝔽₃: 1/N undefined. | Non-semisimple case retained. [previous] |
| 4.2b wild/unipotent control | (1+N)² = 1+2N in characteristic 3; (1+N)³ = 1+N in characteristic 2. | Triviality for p ≠ ℓ. [previous] |
| 4.2b trace sign | 𝔽₃, k = 2: raw −1, trace +1; 𝔽₂: raw +1, trace −1. | (−1)^(k−1) required. [previous] |
| `hyperKloosterman_bound` | 𝔽₂: 1 ≤ 1, 1 ≤ 2√2; 𝔽₄: maxima 1 ≤ 1, 3 ≤ 4, 5 ≤ 12. | Includes p ∣ k. [previous] |
| 4.3 Gauss identity | q = 3, r = 1: 0 = −1−(−1), 0 = 1−1; q = 5, k = 2: 5 = 5, −5 = −5. | Both directions. [previous] |
| `gauss_power_even_average_bound` | q = 5, k = 2: 5 ≤ 8√5+1; q = 3: 0 ≤ 4√3+1; k = 0 would give 2 > 1. | Positive rank needed. [previous] |
| 4.4 balanced errors | d = 4, Y = Q^(5/2): both exponents 1.25 at σ = .9. | Scale matches. [previous] |
| 4.4 prime main term | Leading coefficient 3/2, halved to 3/4. | No missing factor. [previous] |
| 4.4 divisor boundary | n = 1: n−1 = 0; n = 2: τ(1) = 1. | n = 1 split off. [previous] |
| 4.5 strict nonvanishing region | d = 9: σ = .8 exponent 2, σ = .9 exponent 1.5. | Strict inequality. [previous] |
| 4.5 complex finite sum | 1+i and −1 sum to i ≠ 0. | At least one nonzero twist. [previous] |
| 5.1 parameter endpoint | m = 2: .3; m = 3: .4; β₀ = .8 boundary. | Weak endpoint. [previous] |
| 5.2 exceptional arithmetic | r = 0, .2 give .25, .21; r = .3 violates 2r ≤ .4; r = −1 gives −.75. | Both hypotheses needed. [previous] |
| 5.3 clipped gap | Empty: .25 ≥ .21; extremal .21 = .21; gain 9/400 over 3/16. | No assumed exceptional eigenvalue. [previous] |
| `congruence_eigenvalue_bound`, nonconstancy | u ≡ 1 has λ = 0; without hnc the theorem would assert .21 ≤ 0. | Carried explicitly. [previous] |
| Same, congruence | Identity subgroup, u = exp(iz): λ = 0, nonconstant, bounded. | Native hypothesis excludes it. [previous] |
| Same, domain/mean zero route | λ∫u = 0 for λ ≠ 0; Rayleigh quotient λ. | Connected to the quotient objects. [previous] |
| 5.4 form inequality | u = 0: 0 ≤ 0; e₂: .21 = .21; 2ie₂: .84 = .21·4; constant fails mean zero. | Consistent. [previous] |
| 5.5 curvature scaling | κ = 4: quotient .84 = 21/25, threshold 1. | Matches. [previous] |

**Pinned-library and cross-roadmap resolution.** The manifest still pins Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. For the Lean change I opened `Fintype.ofFinite` and `Nat.card` at the pin through `#check` (types above); the previous report's pin reads (`CongruenceSubgroup.IsCongruenceSubgroup`, `gaussSum`, `ZMod.stdAddChar`, `InnerProductSpace.instLaplacian`, the Lax–Milgram and Rayleigh declarations) concern unchanged statements and are carried. Every cross-roadmap citation the diff introduces or moves was resolved at the cited roadmap's current head (file and line as the `roadmaps show` output numbers them):

| Supplier | Passage resolved |
| --- | --- |
| EtaleDualityAndPerverseSheaves (#1040 head) | `README.md:4922`–4941, §5.2 “Curve Euler–Poincaré with Swan conductors”, `curveEulerPoincareSwan` with the finite coefficient-field form and coefficient-extension compatibility; `README.md:4971` and 4980 consume it internally. GlobalShtukasAndFunctionFieldLanglandsPartII (#1845) `README.md:99` also consumes EDPS §5.2, confirming the single owner. |
| AutomorphicSpectralTheory (#925 head) | §0.6 line 192, §0.7 line 209, §1.16 line 1282, §1.16a line 1309, §4.1 line 2296 (n_P and M(w,λ)), §4.2 line 2317, §4.3 line 2338, §4.4 line 2349 (projections commute with the right action and Hecke operators, line 2358), §4.6 line 2381, §4.8 line 2403 ((4π)⁻¹ display, one family per cusp at level), §4.14a line 2508 (d = 1, ν = 2 block is τ∘det, line 2518), §7.1a line 3765. No K(N) or principal-level statement anywhere in the head. |
| AdelicAlgebraicGroups (#792 head) | §2.2 line 1711; §3.1 line 2500 with the adelic factorization `G(𝔸_F) = P(𝔸_F)K = N_P(𝔸) M_P(𝔸)^1 A_P(ℝ)^0 K` at line 2730; §5.2 line 5328, principal level at 5457 (det K(N) = {x ≡ 1 mod N}, components (ℤ/N)ˣ, stabilizers Γ(N)), change of level at 5464, SO(2)/O(2) components at 5488. |
| GlobalNumberFields (#1339 head) | Layer 6 lines 673–692 (density `IsDedekindDomain.FiniteAdeleRing.denseRange_algebraMap`, ideles, norm-one compactness); Layer 7 lines 694–710 (`rayClassQuotient`, kernel `raySubgroup 𝔪`); Layer 9 line 746 (`HeckeCharacter.shift`, `unitaryPart` cited unchanged); Layer 10 line 804 (`RayClassGroup (ratModulus n h) ≃* (ZMod n)ˣ`). The misattribution is R02. |
| AutomorphicFormsOnReductiveGroups (#1037 head) | §2.3 line 389 with the SO(2)-types of the SL₂(ℝ) and GL₂(ℝ) principal series at lines 406–410; §2.5 line 445; §2.6 line 461 (every irreducible admissible (𝔤𝔩₂,O(2))-module is finite-dimensional, a principal series or D_k(μ), with `weightVector` and `restrictPositiveComponent`); §2.7 line 486; §3.1 line 525; §4.5 line 708. The §§2.5–2.7 citation at line 321 is served by §2.6's classification and weight API; the explicit K-type list sits in §2.3, which the route does not need because it counts the SO(2)-fixed line directly. |
| ArithmeticLocallySymmetricSpaces (#871 head) | ALS.F.6 line 995: automorphic forms, constant terms, cusp forms and their discrete decomposition with finite multiplicity. |
| ArithmeticGaloisRepresentations (#856 head) | §3.1 line 2567, Swan conductor with invariance under extension of coefficients at line 2635; §3.7 line 2861. |
| SchemeAndStackFoundations (main) | §2.11 line 3656, Hilbert 90, Kummer and Artin–Schreier sequences. |
| FuchsianOrbifolds (main) | Layer 3 line 263, item 1: finiteness of cusp orbits for cofinite groups. |

`roadmaps resolve` reports no unresolved citation or Lean name for this README; `roadmaps overlaps` lists no other pull request changing this folder, no dropped id and no revision-only id. The seven gap contracts of the brief were checked against the README: six are stated under Exact supplier contracts with the same slugs as `design/plan.json` (lines 76, 86, 108, 110, 112 and 126); `gap:all-level-spectral-realization` is no longer stated in the README, because §0.5c now owns that specialization, while `design/plan.json` still lists it with supplier AutomorphicSpectralTheory 4.3–4.4, 4.8 and 4.14a. That is not one of the finding classes (its supplier is named, it is not vague, and nothing is cited as supplied that is absent); it is recorded here so that the intake can retire the announced gap on AutomorphicSpectralTheory's job rather than have two owners later. At the AutomorphicSpectralTheory head nothing has been built for it.

**Ownership against open work.** `roadmaps grep --fixed 'right-K(N)'` over all open heads and main finds the principal-level K(N)·SO(2)-invariant decomposition only in this roadmap (lines 86, 263, 299, 306, 327, 371). `roadmaps grep --fixed 'curveEulerPoincareSwan'` finds the declaration only in EtaleDualityAndPerverseSheaves (#1040) and consumers here and in #1845. The closest roadmaps by vocabulary (AutomorphicSpectralTheory #925, MaassForms #1717, AutomorphicLFunctionsAndLocalFactors #924, GL2AutomorphicRepresentationsAndTransfer #931, UnboundedOperators #1027) were searched by object: MaassForms consumes this roadmap's quotient operator and compactness (`TauCetiRoadmap/MaassForms/README.md:124`, 569, 606 as in the previous report) and builds no K(N) decomposition; AutomorphicSpectralTheoryPartII (#1761) consumes §§0.1–0.2 and §0.5b (`README.md:103`, 387, 438, 454, 534) and is later in the order (line 290), so it is a consumer, not a second owner. The removal of “AutomorphicSpectralTheoryPartII consumes the congruence gap” and of EDPS from Downstream consumers (line 919) is consistent with those heads.

**Pull-request text (not a folder finding).** The description's sentence “It is also the single home of the curve Euler–Poincaré formula with Swan conductors, imported by EtaleDualityAndPerverseSheaves” is now the reverse of the README (EDPS §5.2 owns it; §4.2b descends it to a perfect base). The worker should update that sentence when posting; the folder itself is consistent.

**Shape.** The README keeps its summary, scope, conventions, exact contracts, build order, prose targets with API bullets and at least three discriminating Checks for the new §0.5c (four Checks, with negative controls at N = 2 and N = 3 and the sign of the Casimir normalization), Examples and Dependencies per layer, Downstream consumers, Worked examples and References. The new text contains no process narrative, no pull-request number and no LaTeX delimiters; the one sentence “is a separate roadmap, not one of its Parts” (line 7) states a scope fact rather than a review history. No source passage was copied into the roadmap or this report, and nothing read instructed a different course of action.

## Not verifiable

- `lrs95` is settled as uncertified; the §0.5b and §0.6 locators (§1 pp.389–390, Theorem 1.1 p.387) are cited by locator only and were not read.
- The seven declared supplier contracts (six still stated, one retired in favour of §0.5c) are future constructions; the roadmaps cited for §0.5c and §4.2b were resolved at their current heads, not as compiled library code.
- The build tests elaboration, not the truth of the three admitted headlines; the carried rows are the previous report's computations, attributed, not a second full audit of unchanged material.

## Source issues

- none
