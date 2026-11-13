# FIX-PKG-ModularIwasawaMainConjecturesPartII~8

Findings of `REV-PKG-ModularIwasawaMainConjecturesPartII~7` (four: two P1, two P2). Every finding was verified against the cached legal texts (JLK, HuberKings), the head of AutomorphicGaloisRepresentations read through the roadmap service, and PeriodsAndSpecialValues at its head. Only `packages/ModularIwasawaMainConjecturesPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## REV-PKG-ModularIwasawaMainConjecturesPartII~7/F01 (P1) — applied

The finding is right. The Conventions give `φ(g·x) = χ(g)⁻¹·g·φ(x)` for `x ↦ x ⊗ t_χ`, and corestriction is Galois-equivariant. So `x ↦ cor(x ⊗ t_p(χ))` sends the ray-tower relation `(N(b) − σ_b)·(a z) = (N(a) − σ_a)·(b z)` (§2.6) to `s_b(χ)·aζ(χ) = s_a(χ)·bζ(χ)`, with `s_a(χ) = N(a) − χ(σ_a)⁻¹·σ_a|_{K_∞}`. JLK (17) (JLK lines 960–961, 999–1002) divides by the untwisted `N(a) − σ_a`.

I recomputed the witness: `K = ℚ(i)`, `p = 3`, `χ` quadratic of conductor `(3)`. In `𝔽_9` the squares are `μ_4`, and `2 + i` is not a square, so `χ(σ_{(2+i)}) = −1`; `χ(σ_{(7)}) = 1`. The twisted augmentations are 6 and 48, against untwisted 4 and 48. The regulators are `2R` and `16R`, with `R = log(2 + √3)`. Dividing by the twisted factors gives `R/3` both times; dividing by the untwisted ones gives `R/2` and `R/3`.

Changes:
- **§4.5.** `ζ(χ) = (N(a) − σ_a)⁻¹·aζ(χ)`, with `J_Λ` the "kernel of the cyclotomic character", is replaced by:
  - `tw_χ : g ↦ χ(g)⁻¹·g|_{K_∞}`;
  - `s_a(χ) = tw_χ(N(a) − σ_a)` and `ζ(χ) = s_a(χ)⁻¹·aζ(χ)`;
  - `J_χ = tw_χ(J)`, with `Λ_O/J_χ ≅ O_p/(χ_cyc(h) − χ(h)⁻¹ : h ∈ Gal(K(p^∞f_χ)/K_∞))`, which is pseudo-null.
  
  The route's determinant step now reads `s_a(η)⁻¹Det(Λ_O·aζ(η)) = Det(J_ηζ(η))`. The twisting step now says that twisting sends `s_a(χ)` to `s_a(χρ)`. Two Checks were added: the `6u/6 = 48u/48 = u` computation, and `J_χ ≠ J_1` in that example (`Λ_O/J_χ ≅ ℤ_3`, while `J_1 = Λ_O`).
- **Pattern, other occurrences.**
  - §4.6: `J_Λ(ζ(χ, f))` → `J_χ(ζ(χ, f))`.
  - §4.8 classical form: `I_Λ J_Λ(ζ(χ))` → `I_χ J_χ(ζ(χ))`, with `I_χ = tw_χ(I)`, which is `Λ_O` for `χ ≠ 1` because `p ∤ #Δ_f`.
  - §6.1: added that the factor projection is `tw_χ`, so `z_{p∞f}` ↦ `ζ(χ, f)`.
  - §2.6 (untwisted, ray level) and §5.2 (group-ring projections) are already correct and were not changed.

## REV-PKG-ModularIwasawaMainConjecturesPartII~7/F02 (P1) — applied

The finding is right. JLK define `z(η)` through the regulator with the usual absolute value (JLK lines 386–398, 480–483). With the squared norm of §2.5, Kronecker's formula gives `ζ_K(η⁻¹) = (N(a) − η(a))·z_D = ½(N(a) − η(a))·z_B`. Witness recomputed: `r_B(ζ_K) = 4R`, `r_D(ζ_K) = 8R = 24·R/3`.

I took the review's second option: the squared norm throughout.
- **§4.2** now fixes `r_∞` with `|x|_ℂ = x·x̄`, defines `z(η)` by `r_∞(z(η)) = L*(η, 0)·t_B(η)`, and records `z_B = 2z`.
- **Why that normalization at `p = 2`.** The covolume of `r_∞` on the units of `F` is the regulator `R_F` of the class number formula. The covolume of `r_B` is `2^{1−[F:K]}R_F`. The p-adic side of Huber–Kings' computation (proof of Proposition 2.3.1, lines 722–741) involves no powers of 2 when there are no real places.
- **New §4.2 Check.** For `F = ℚ(ζ_12)`: `u = (1 + √3)/(1 + i)`, `R_F = log(2 + √3)`, and `ζ_F*(0) = −R/12 = −h_F R_F/w_F`.
- **§4.3** now states the identity for this `z`. It gives JLK's version `ζ_K = ½(N(a) − η(a))z_B` and the `2^{−m}` factor, and adds Checks (`4R` against `8R`; 2-adic valuation shift).
- **§4.5's augmentation step** now names the normalization.
- **PeriodsAndSpecialValues supplier contract:** the PS.3.2 regulator datum is this `r_∞`.

The lattice conclusion of §4.3 (JLK Corollary 3.10) is unchanged, so the dyadic step in §4.5 is consistent with §4.4's integral bound.

## REV-PKG-ModularIwasawaMainConjecturesPartII~7/F03 (P2) — applied

The finding is right. In the witness, `13 = (3 + 2i)(3 − 2i)`, with `3 + 2i ≡ −i` and `3 − 2i ≡ i` mod 3, both in `μ_4`. So `η(𝔭) = 1` at both primes and `z_13(η) = 0`, while the determinant is invertible. JLK Corollary 2.11 (lines 512–522) omits the restriction.

Changes in §4.2:
- The `z_p` reformulation is restricted to pairs `L ⊃ F` in which every `η ∈ Ĝ_L ∖ Ĝ_F` has `1 − η(𝔭) ≠ 0`. Ramification at every prime above `p`, as in §4.3, is sufficient.
- When an Euler factor vanishes, the statement stays the `RΓ_c`-lattice form, with no Euler factor divided out (JLK lines 409–420).
- The Euler-factor removal step now names its acyclicity requirement.
- The old Check ("uses `z_p(η)`, not `z(η)`") is replaced by the `p = 13` negative control, together with the `p = 3` positive case.

§4.3 uses the reformulation only for characters of large level, which satisfy the condition.

## REV-PKG-ModularIwasawaMainConjecturesPartII~7/F04 (P2) — applied

The finding is right. AutomorphicGaloisRepresentations, at its head, has these conventions:
- `π` of type `(k, w)`, with `k ≡ w` mod 2 and central character `|t|^{−w}`;
- §3.15 prescribes the component `z^{(k−1−w)/2}z̄^{(−k+1−w)/2}` and `α′ = α|·|_L^{−1/2}`.

The unitary `π_f` has `w = 0`, which §3.15 excludes for odd `k`.

Changes:
- **§7.1.** Introduces `π_f^{(k−2)} = π_f ⊗ |det|^{−(k−2)/2}`, of type `(k, k − 2)`, with `T_ℓ`-eigenvalue `a_ℓ`, and `α_{(k−2)} = ψ|·|_K^{1/2}`.
  - Its component is `z^{3/2−k}z̄^{1/2}`, the conjugate of the one §3.15 prescribes.
  - `α′ = ψ`.
  - (b′) is restated for this twist, and the twist compatibility is cited.
  - Added a weight-three Check: `ψ((2+i)) = −3 − 4i`; `α_{(1)}` has absolute value `√5`, and `α′` has absolute value 5, against `√5` if the unitary `α` were used.
- **§7.2.** The supplier now induces from `α′_{(k−2)} = ψ`.
- **Scope and supplier contract:** updated to match.

## Checks

- `lake env lean packages/ModularIwasawaMainConjecturesPartII/Suggested.lean`, run from the content checkout: exit 0, no output, run before and after the final edits. No `TauCeti.*` import, so no module build was needed.
- `#check @name` binder audit: `Suggested.lean` declares nothing, so there are zero candidates and no binder changed. The file is unchanged this round; its docstring's headline list still matches the README.
- Dependency check: `depcheck: 223 roadmaps, 1992 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README:
  - one lead, "NonordinaryCMSpecialValues §2.1", which predates this round; it is an earlier board package, as the review also confirmed;
  - "Lean names found nowhere: None". The new backticked symbols (`tw_χ`, `s_a(χ)`, `J_χ`, `r_∞`, `r_B`, `z_B`, `π_f^{(k−2)}`, `α_{(k−2)}`) are notation, not Lean declarations.
- No LaTeX delimiters and no process wording were added.
- No sources were fetched. `sources.toml` already records JLK and HuberKings, and nothing was added to `needs-references.toml`.
- No gate failures were listed for this round.

## Adversarial pass on changed statements

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| §4.5 `s_a(χ)` independence | ℚ(i), p=3, χ quad cond (3), a=(2+i), b=(7) | χ(σ_a)=−1 (2+i ∉ {±1,±i}); augmentations 6, 48 (twisted) and 4, 48 (untwisted); regulators 2R, 16R; quotients R/3, R/3 (twisted) and R/2, R/3 (untwisted) | twisted factor needed; Check added |
| §4.5 `s_a(χ)` non-zero-divisor | a=O_K; χ=1, a=(5) | a=O_K gives 1−1=0, so a≠O_K is required; N(a)−χ(σ_a)⁻¹ has absolute value ≥ N(a)−1 > 0 | hypothesis `a ≠ O_K` added |
| §4.5 `Λ_O/J_χ` | same example; χ=1 | χ_cyc(h)=−1=χ(h)⁻¹ gives quotient ℤ_3 (height 2); for χ=1, 4 ∈ ℤ_3^× gives J_1=Λ_O | J_χ ≠ J_1; Check added |
| §4.5 twisting | ρ nontrivial, automorphism γ ↦ ρ(γ)^{+1}γ | the γ_a-coefficients force ρ(γ_a)²=1 for all a, impossible for nontrivial ρ | only `s_a(χ) ↦ s_a(χρ)` is consistent |
| §4.8 `I_χ` | χ≠1 with p∤#Δ; χ=1 | 1−ζ with ζ of order m>1 prime to p is a unit; I_1 = augmentation ideal | stated |
| §4.2 normalization | F=ℚ(ζ_12) over ℚ(i) | u²=−i(2+√3); squared norms 2±√3; covolume R (squared) vs R/2 (usual); ζ_F*(0)=(−1/4)(R/3)=−0.10975=−R/12 with h=1, w=12 | squared norm matches the class number formula; Check added |
| §4.2 restriction | p=13 and p=3 for η of K(3)/K | 3+2i≡(0,2), 3−2i≡(0,1), both in μ_4, so η(𝔭)=1 and z_13=0; at p=3, η ramified, factor 1 | negative and positive controls |
| §4.3 relation | a=(5), η quadratic, p=3 | 5.9297−0.6619=5.2678=4R; 24·R/3=8R; ζ_K = 24z = 12z_B | consistent with §2.5 |
| §7.1 dictionary | k=2, k=3 | k=2: α_{(0)}=α, α′(𝔮)=−1+2i; k=3: ψ(𝔮)=−3−4i (abs 5), α_{(1)} abs √5, α′ abs 5; unitary α gives α′ abs √5 | Check added |
| §7.1 infinity type | (k,w)=(k,k−2) | ψ|·|^{1/2}: z^{1−k}(zz̄)^{1/2} = z^{3/2−k}z̄^{1/2}; AGR's prescribed component z^{1/2}z̄^{3/2−k} is its conjugate | matches |
| §7.2 Frobenius polynomial | type (k,k−2) | t_ℓ=a_ℓ, s_ℓ=ε(ℓ)ℓ^{k−2}, so X²−a_ℓX+ε(ℓ)ℓ^{k−1} = Kato's V(f) | consistent with the Conventions |

## Ownership and notes for the maintainer

- **No new owned objects, no new supplier gap, no `plan.json` change.** The twisted factor, the regulator normalization and the type-`(k, k−2)` dictionary are statements inside §§4.2–4.8 and 7.1–7.2, which this roadmap already owns. AutomorphicGaloisRepresentations §3.15 (an open roadmap, earlier in the merge order) is cited by name and section and was read at its head. Ownership against the other open pull requests was not rechecked beyond those two roadmaps, because no new object was introduced.
- **Source problems the new text records (JLK).**
  - (17), Corollary 5.3 and §5.4 divide by untwisted factors.
  - Theorem 3.9(a) and Corollary 2.11 use the usual-absolute-value normalization.
  - Corollary 2.11 omits the nonvanishing condition on the Euler factors.
  
  Their Corollary 3.10 still holds, because the two factors of 2 cancel.
- **The 2-adic choice.** The integral TNC at `p = 2` is stated for the squared-norm zeta element. This rests on the class-number-formula covolume and Huber–Kings' p-adic computation. JLK cite Itô for `p = 2` in their own normalization; that text is not in the manifest and was not read.
- **No renamed or dropped ids.** No section numbers or Lean names changed, so no other roadmap's citation is affected.
- **No suspicious instructions** were found in the review text.
