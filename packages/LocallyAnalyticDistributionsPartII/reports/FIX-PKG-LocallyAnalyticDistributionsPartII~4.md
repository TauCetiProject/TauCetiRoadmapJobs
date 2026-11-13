# Repair of LocallyAnalyticDistributionsPartII (package, round 4)

This round resolves the three findings of REV-PKG-LocallyAnalyticDistributionsPartII~3 (F01–F03). I checked each one against the cached sources (AW13, AW14), the supplier NoncommutativeAndEquivariantIwasawa at its open head, and explicit instances. All three are correct, and all three are applied.

Files changed:
- `packages/LocallyAnalyticDistributionsPartII/README.md`
- `packages/LocallyAnalyticDistributionsPartII/Suggested.lean` (module docstring only)
- `packages/LocallyAnalyticDistributionsPartII/sources.toml` (AW14 `cited_for` gains §3.6)

`design/plan.json` is unchanged: no new supplier gap is needed.

## F01 (P1) — applied

The §3.1 bullet "A → Q_T(A) is a strictly filtered ring map" now reads:
- the map is filtered;
- gr Q_T(A) ≅ (gr A)_T, and gr of the map is the localisation map;
- if T consists of elements regular in gr A, the map preserves degrees, hence is injective and strict.

"Strict" and "degree-preserving" are now defined. The universal property is restated for filtered maps. Two negative Checks are added: the Laurent example and ℚ_p[[x, y]]/(xy).

Verified:
- AW13 line 415 (§2.4 Lemma (b)) gives only gr A_S ≅ (gr A)_T.
- In the Laurent example, A = ℚ₃[x, x⁻¹] with the |i| ≤ n filtration is Zariskian: its Rees ring is ℚ₃[t, u, v]/(uv − t²) and F₋₁A = 0.
- Q_T(A) = ℚ₃((x⁻¹)). The two filtrations on A_S agree: rewrite s⁻¹a as (x^N s)⁻¹(x^N a).
- deg_A x⁻¹ = 1, but deg_Q x⁻¹ = −1.

Pattern:
- §3.4 used "strictly filtered" in AW13's sense of degree-preserving (AW13 lines 3264–3275). It now says "degree-preserving".
- §3.4's injectivity argument changes from "injective because strictly filtered" to "degree-preserving, hence injective; bijective graded map between complete rings".
- §3.4 keeps its own strictness, which comes from gr_m R[[G]] being a domain.
- The domain control (ℤ_p[[X]]: p and X keep degree −1) is added to the existing §3.1 Check.
- No other target uses strictness of the general map. The other uses of "strict" (in §4.3 and gap:frechet-stein-general) concern locally convex or coadmissible maps.

## F02 (P1) — applied

In §4.13, V̂^λ = `Û(𝔤)_{n,K}` ⊗ `Û(b⁺)_{n,K}` K_λ is replaced by Û(p^n𝔤)_K ⊗_{Û(p^n b⁺)_K} K_λ. Here Û(p^n𝔤)_K = `Û(𝔤)_{en,K}` with e = v_π(p), so the deformation index is en. Statement (i) and the injectivity consequence are restated the same way. The witness π² = 3, λ(3h) = 1 is added, and so is Source corrections item 12.

Verified:
- AW14 line 363 defines A_n = Σ π^{in} F_iA.
- AW14 line 453 takes λ : π^n t → R, but lines 731, 741 and 742 use p^n g, characters of p^n t, and Û(p^n n)_K.
- In the witness, 3h = π·(πh) has norm |π| < 1 in Û(πb⁺)_K, so 1 − 3h is a unit there. A character with λ(3h) = 1 would send that unit to 0.
- In Û(3b⁺)_K, the image of 1 − 3h vanishes at 3h = 1 in K⟨3h⟩, so 1 − 3h is not a unit and K_λ exists.

Pattern:
- The opposite nilradical n⁻ is now defined, and the proof sketch is written over Û(p^n n⁻)_K.
- §§3.4 and 3.8 use π = p (unramified R), so their indices are already right.
- §2.1 already multiplies the index by e.
- §§4.12 and 4.14 have n = 0, so en = 0: unchanged.
- In the `Suggested.lean` docstring, `Û(𝔤)_{n,K}` becomes `Û(p^n 𝔤)_K`.

## F03 (P2) — applied

Two changes, one for each half of the finding:
- §3.2 now covers unramified R with any residue field, which is AW13 §10.1's setting (line 3104: no assumption on k). It proves the ordered series and gr_m R[[G]] ≅ k[P] ⊗_{𝔽_p[P]} gr_m ℤ_p[[G]] from the case R = ℤ_p, with three Checks.
- §3.6 is generalised to every complete discretely valued K, through an unramified K′ ⊆ K with K/K′ finite (the Cohen structure theorem), with three Checks.

Verified:
- At the head of its open pull request, NoncommutativeAndEquivariantIwasawa §0.8 assumes "O a complete finite-free ℤ_p coefficient DVR". Its Conventions take O to be the integers of a finite extension, and its §0.3 and §F.1 are stated for those O.
- R = W(𝔽̄₃) is outside that domain.

Proof route added in §3.2:
- R[G/N] = R ⊗ ℤ_p[G/N], and R is p-adically complete, so R[[G]] = lim (R ⊗ ℤ_p[[G]]/m^n) = ∏_α R b^α.
- The ℤ_p structure constants make the degree formula a ring filtration.
- Its pieces are m^n, by grouping monomials by their last factors.
- The graded comparison holds because both sides are k-free on the symbols P^a b̄^α.

Proof route in §3.6: R is finite free over R′, so K[[G]] = K ⊗_{K′} K′[[G]]. The map is unique among those continuous for the m-adic topology, so it does not depend on K′.

Pattern:
- §4.13 now names the §3.6 map K[[G]] → Û(p^n𝔤)_K. Its *Needs:* line states the domains of §§2.1, 3.4 and 3.6.
- The NoncommutativeAndEquivariantIwasawa contract states the coefficient domains of §0.8 and §F.1.
- Scope: the owned list gains the coefficient-general graded ring, and the NoncommutativeAndEquivariantIwasawa paragraph is qualified.
- Conventions item 8 is updated.
- §3.4 states its residue-field generality. The §3.5 sketch notes that K′ may have an infinite residue field.
- §3.8 *Needs:* now says that the crossed-product decomposition over an infinite residue field is the levelwise argument of NoncommutativeAndEquivariantIwasawa §0.3, step 1.
- §§3.7, 3.9, 3.10 and 4.14 take K finite with K′ = ℚ_p and are unchanged.

Ownership: I searched the open heads and main (`roadmaps grep` on W(𝔽̄, arbitrary residue field, gr_m R[[G]], U(gr G ⊗)) and found no second owner of Iwasawa algebras with infinite residue field. NoncommutativeAndEquivariantIwasawa limits its coefficients to finite free rings by convention, because it uses compact topologies. This roadmap needs the general case for §3.5 and §4.13, so it owns the extension.

## Checks run

**Elaboration.** `lake env lean packages/LocallyAnalyticDistributionsPartII/Suggested.lean`, run from the content checkout, exits 0. The only diagnostics are the two expected warnings:
```text
Suggested.lean:78:8: warning: declaration uses `sorry`
Suggested.lean:98:8: warning: declaration uses `sorry`
```

**Binder check.** I put `#check @name` for all four declarations into one scratch copy and elaborated it once.
- `firstCongruenceSL2` and `firstCongruenceProduct` keep `[Fact p.Prime]`.
- `isSemisimpleModule_of_finiteDimensional` keeps `p ≠ 2`, both `Module` instances, `IsScalarTower` and `FiniteDimensional ℚ_[p] M`.
- `exists_surjective_algHom_end_symPower` keeps `p ≠ 2`, `Field K`, both `Algebra` instances, `FiniteDimensional ℚ_[p] K` and `IsScalarTower ℤ_[p] ℚ_[p] K`.

These agree with README §§0.2, 3.8 and 5.2. No signature changed; this round changed only the docstring.

**Dependency direction:**
```text
depcheck: 237 roadmaps, 2143 edges, 0 problem(s)
```
There is no UPWARD, CYCLE or moved line.

**Citations.** `roadmaps resolve` on the README finds no cross-roadmap citation or Lean name that resolves nowhere. Every new section citation was read at the head of NoncommutativeAndEquivariantIwasawa's open pull request: §0.3 (proof step 1), §0.8 (coefficient hypothesis) and §F.1 (coefficient rings of its Conventions).

**Gate failures.** None were listed.

## Adversarial pass (new and changed statements)

| Statement | Instances | Computed values | Result / change |
|---|---|---|---|
| §3.1 degree-preserving ⇒ injective, strict (separated) | identity; ℤ_(3) → ℤ₃; A with F_n = A ∀n mapped to 0 | identity and ℤ_(3) → ℤ₃: gr iso, injective; non-separated A: gr A = 0, so gr φ injective, but φ ≠ injective | "separated" is needed and is stated |
| §3.1 gr of A → Q is the localisation map | Laurent, T = ⟨X⟩; T = {1} | Y ↦ 0, X ↦ X in ℚ₃[X^{±1}]; T = {1}: identity of gr A | consistent |
| §3.1 strictness fails | Laurent | deg_A x⁻¹ = 1, deg_Q x⁻¹ = −1; F₋₁A = 0 ∌ x⁻¹ ∈ F₋₁Q | negative Check added |
| §3.1 injectivity fails | ℚ_p[[x,y]]/(xy), T = ⟨X⟩ | xy = 0, x ∈ S ⇒ y ↦ 0 | negative Check added |
| §3.1 regular T ⇒ degree-preserving | ℤ_p[[X]], T = ⟨P⟩ | gr = 𝔽_p[P,X], domain; p, X ∈ F₋₁∖F₋₂ in A and in ℚ_p⟨X/p⟩ | control added |
| §3.1 universal property | ψ of §3.4; ℤ_p[[X]] → ℚ_p, X ↦ 0; identity of ℤ_p[[X]] | ψ: degree-preserving extension; X ↦ 0: gr φ(P) = P a unit, filtered extension X/p ↦ 0, not degree-preserving; identity: P not a unit, no extension (1/p ∉ ℤ_p[[X]]) | hypothesis discriminates |
| §3.2 ordered series and degree, any k | R = ℤ₃, W(𝔽̄₃); G = ℤ₃, {1} | gr = 𝔽₃[P,X] and 𝔽̄₃[P,X], degree-n dimension n+1 in each; G = {1}: gr R = k[P], deg λ = v(λ); 3+b² and b+9 both have degree 1, with symbols P and X | Checks added |
| §3.2 R ⊗ ℤ_p[[G]] ≠ R[[G]] | W(𝔽̄_p), Σ[x_n]b^n | coefficients of an element of the algebraic tensor product span ≤ m dimensions over 𝔽_p in k; the x_n span infinitely many | Check added |
| §3.2 m^n = {deg ≥ n} | general R | m = R[[G]]p + ΣR[[G]]b_i (left ideal); tail Σ_{\|α\|≥n} = Σ_{\|β\|=n} y_β b^β | proof in sketch |
| §3.6 K[[G]] = K ⊗_{K′} K′[[G]] | K = ℚ₃(√3), K′ = ℚ₃; K = completed ℚ₃^nr(√3), K′ = completed ℚ₃^nr | R free of rank 2 over R′ in both; finite limits commute | holds |
| §3.6 deformation index | level-nine kernel, π² = 3 | g_R = 3sl₂(R) = π²sl₂(R): index 2; Σ(3h)^j has coefficients 1 there, π^j at index 1 | Check added |
| §3.6 vs a π-adic microlocalisation | G = ℤ₃, K = ℚ₃(√3) | correct: disc \|b\| ≤ 1/3, ‖b/3‖ = 1; π-adic: disc \|b\| ≤ 3^{−1/2}, ‖b/3‖ = 3^{1/2}; Σ c_n(b/3)^n with \|c_n\| = 3^{−⌈n/4⌉}: terms → 0 in the first, norms 3^{n/2−⌈n/4⌉} → ∞ in the second | Check added |
| §3.6 G = {1} | K = ℚ₃ and completed ℚ₃^nr | K → K in both cases | Check added |
| §4.13 index en | e = 2, n = 1, λ(3h) = 1 | λ(πh) = π⁻¹ ∉ R; in Û(πb⁺)_K, ‖3h‖ = 3^{−1/2} and (1−3h)⁻¹ = Σ(3h)^j; in Û(3b⁺)_K, ‖3h‖ = 1 and 1−3h vanishes at 3h = 1 | corrected |
| §4.13 n = 0 or e = 1 | SL₂^m, G₁^m; K unramified | en = 0 and en = n | §§4.12, 4.14 unchanged |
| Source correction 12 | as in §4.13 | as in §4.13 | added |

## For the maintainer

- No Lean name changed. Only the "not statable" docstring entry for §4.13 changed (`Û(p^n 𝔤)_K`).
- No section or target id changed, so other roadmaps' citations of this one are unaffected.
- The new §3.2 Checks and §3.6 Checks are local to this roadmap. NoncommutativeAndEquivariantIwasawa is cited only within its stated coefficient domain; nothing is asked of it.
- Ownership against open pull requests was checked with the roadmap tools at their heads (vocabulary-near heads and `roadmaps grep`).
