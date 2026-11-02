# Repair report: red-team round 1 of GSp4NonregularModularityLifting

Two reviews were merged: pass a (findings F01–F11 of review a, listed first below) and pass b (findings F01–F03 of review b, listed after them). They do not overlap. All fourteen hold on the mathematics, and all are applied. Edited files: `packages/GSp4NonregularModularityLifting/README.md`, `design/plan.json` (top-level `gaps` only: the `needs` sentence of `gsp4-paramodular-newvector`) and `sources.toml` (new entry `Yam14`). `Suggested.lean` is unchanged. It declares nothing, and no finding concerns it.

## F01 (P2) — applied

Verified: AbelianSchemesAndArithmeticModuli A3.12, at the head of its open pull request and at ORDER.txt line 48 (this roadmap is at line 260), states the even-subset symplectic model of the six Weierstrass points and its equivariance for S₆≅Sp₄(𝔽₂). Old → new: §8.4 "Construct the exceptional S₆≅Sp₄(𝔽₂) identification" with its local construction and API → "Import … from AbelianSchemesAndArithmeticModuli A3.12". The numerical controls stay as "Checks for the six-point illustration". A3.12 was added to the Scope paragraph, to a new "From TauCetiRoadmap.AbelianSchemesAndArithmeticModuli" contract, to the §8.4 *Needs* line and to the Layer 8 Dependencies.

## F02 (P2) — applied

Verified: ModularityAndLanglandsExtensions §3.30 (ORDER line 255) constructs CG Lemma 6.9's residual representation and, when it is absolutely irreducible, its alternating pairing, for a≥b≥2. Old → new: §3.3 reconstructed the representation and its pairing locally → §3.3 imports both from §3.30 with all of its hypotheses. The local target keeps the full central-character comparison and the transport to the selected and enlarged images. §3.30 was added to the contract, to the §3.3 *Needs* line and to the Layer 3 Dependencies. New Check: multiplier change ε̄^(−2t) at p=7, with t=6 versus t=2.

## F03 (P2) — applied

Verified: K(ℓⁿ) contains zI₄ for every z∈ℤ_ℓ^×, so a ramified central character kills every paramodular fixed vector. In the reviewer's witness, χ(9)=ζ₃²≠1. Old → new: "a generic GSp₄ representation has a unique paramodular newvector line" → the irreducible admissible generic statement over an algebraically closed characteristic-zero field with unramified central character, at the Artin conductor, vanishing below it. The same sentence was put in `plan.json`, and three contract Checks were added: the ramified negative control, |·|² satisfying the hypothesis, and reduction by an unramified twist.

## F04 (P1) — applied

Verified: for O=ℤ₁₁, M=O, T=16 and Q=6, e(T,5)=e(Q,6)=1, while ker(11ⁿ)=0. This matches the native construction `Module.End.genEigenspace` (kernels of powers). Old → new in §1.2: "selected module is the intersection of the two generalized root submodules" → the topologically nilpotent residual-root factor over O, the algebraic intersection modulo each ϖᵐ, Mathlib's generalized eigenspaces over k, and no characteristic-zero identification. The first API bullet is restricted to match, and the counterexample is added as a Check. The same pattern was repaired in the Conventions definition of "selected" and in two "generalized-root selector" phrases (Layer 1 intro and §1.2).

## F05 (P1) — applied

Verified: the §4.2 route and *Needs* line cited "§3.1–§4.2" and "the theta geometry of §4.2", which is a self-edge. Yam14 was fetched (arXiv v8) and checked. The scalar Θ is Proposition 3.10 (Yam14 line 1246), the vector θ is Proposition 3.13 (line 1327) and superspecial restriction is Theorem 4.7 (line 2205). At line 1235, ∂/∂t_ij is declared a derivation of R=k[[t]]/𝔪², but D(t₁₁²)=2t₁₁≠0 there. Old → new: the self-citation is replaced by three ordered local targets (ordinary-locus operators; pole cancellation and boundary extension on a smooth formal base; injectivity via §3.1a). Gauss–Manin is imported from A4.3 and logarithmic Kodaira–Spencer from ShimuraCompactifications C5.12. Both were checked at their heads.

## F06 (P1) — applied

Verified: AutomorphicGaloisRepresentationsPartII AG2.6 ("GSp₄ crystalline Hodge comparison") requires good p-level and a≥b≥3. AutomorphicGaloisRepresentations §0.4 (ORDER line 184) states Kisin continuation together with the G_{F_v}/φ^{f_v} version. Old → new: the AG2 contract no longer claims family continuation, a new "From TauCetiRoadmap.AutomorphicGaloisRepresentations" §0.4 contract was added, and the §2.4 route now builds the family and verifies the hypotheses of §0.4 for the four refinements. *Needs* and the Layer 2 Dependencies were updated. Two Checks were added or refined: (1,0,0) is outside AG2.6, and the independence of the four eigenperiods.

## F07 (P3) — applied

Verified: the three Checks restated the definition, and a model sending every nonempty-prime projector to zero passed all three. Old → new: the three Checks were replaced by:
- the 𝔽₁₁ roots (2,3,4,6): block eigenvalues 6, 8, 7, 2; R(6)=8, R(8)=R(7)=R(2)=0;
- the 𝔽₁₃ roots (2,4,11,9): αβ=γδ=8, so the refinement is excluded;
- the two-prime product diag(1,0,0,0).

The empty-product identity stays as an API bullet.

## F08 (P3) — applied

Verified: for T=k×k, Tsel=k acts faithfully on ke₁, so Ann_Tsel(ke₁)=0; the ideal 0×k is Ann_T(ke₁), an ideal of the wrong ring. Old → new: the §3.2 Check "Jsel=0×k" → the corrected computation, plus a nonzero instance: Tsel=O acting on O/ϖᵐ gives Jsel=ϖᵐO. The same confusion in the Layer 3 example was reworded: Tsel=(k×k)/(0×k) and its annihilator is 0.

## F09 (P3) — applied

Verified: at p=7 and a=4, ν∘r̄=ε̄⁻³ has image {±1} (cubes in 𝔽₇^×), so no surjective r̄ exists and 3I₄ has multiplier 2. Old → new: the p=7 positive Check → the p=11, a=4, λ=2 instance with q≡5 (5³=125≡4) and ε̄(Frob₅)=9 (9⁻³=4), plus an explicit p=7 rejection. The general consequence gcd(a−1,p−1)=1 is now stated in §8.3.

## F10 (P2) — applied

Verified: the Conventions fix ε(Frob_ℓ)=ℓ⁻¹ for geometric Frobenius, so q=ε̄(σ) contradicts them. At p=11, q=5 but ε̄=9. Old → new: "forces q=ε̄(σ)≢1" → "choose q with geometric Frobenius conjugate to σ; ε̄(σ)^(1−a)=λ²≠1 gives ε̄(σ)≠1, hence q=ε̄(σ)⁻¹≢1 modulo p". No other occurrence of q=ε̄(…) is in the README (checked by grep).

## F11 (P1) — applied

Verified independently. M=[[2,5],[35,91]] has det 7 and lies in Γ(5)DΓ(5): both outer factors have det 1 and are ≡I mod 5. M⁻¹·P=1208x²−930xy+179y², of discriminant −28. Every M in the double coset is ≡diag(2,1) mod 5, so every forward neighbour of P reduces to 3x²+4y²≠2x²+y²≡Q. The SL₂(ℤ/5) element diag(3,2)≡diag(7⁻¹,7) carries it back. Old → new: §4.7 now proves neighbour reciprocity with the reverse coset Δ∨ and the tame-level transport before the scalar recurrence (CG20 Definition 8.19, Lemma 8.20, line 2773/2793). The Γ(5) control was added as a Check. No supplier edge was added.

## F01 (P3) — applied

Verified: P20 line 1652 (Remark 6.4.1) says the form has order 2 along the rank-0 locus, with a square root of weight (p²−1)/2. CG20 line 2438 describes the supersingular locus as a Cartier divisor inside the p-rank-1 stratum. Old → new: "on the rank-one open of the supersingular curve … order two" → "on the compactified nonordinary divisor … a unit on the rank-one open and vanishes along the reduced supersingular curve to order two (square root of weight (p²−1)/2 vanishing to order one)".

## F02 (P3) — applied

Verified: OrdinaryAutomorphicFormsAndModularityLiftingPartII §1.2 item 1 (board main design) gives µ_v=0 for the (Ψ_n,1)j class with n even, and the strong-oddness definition in the PL.4 contract excludes that class. Old → new: the definition-restating §11.2 Check → the n=4 control. If every real place is in the (Ψ₄,1)j class, A4 fails; one real place in the (1₄,1)j class restores it.

## F03 (P3) — applied

Verified: the ShimuraData §5.18 heading at its pull-request head is "Pilloni genus-two convention comparison". Old → new: “GSp₄ Pilloni convention” → “Pilloni genus-two convention comparison”.

## Checks run

- `lake env lean packages/GSp4NonregularModularityLifting/Suggested.lean`, run from the content checkout: exit 0, no output. `Suggested.lean` declares nothing, so the `#check @name` signature comparison had no input; no `TauCeti.*` import was needed.
- Dependency check, complete output (exit 0):

```text
depcheck: 56 roadmaps, 664 edges, 0 problem(s)
```

  It printed no UPWARD, CYCLE or moved line. The new supplier edges are AbelianSchemesAndArithmeticModuli (ORDER 48), AutomorphicGaloisRepresentations (184) and ModularityAndLanglandsExtensions §3.30 (255). All are earlier than this roadmap (260).
- `roadmaps resolve`: one lead, the pre-existing "OrdinaryAutomorphicFormsAndModularityLiftingPartII §§2.1". It is a design-stage board package, not yet a pull request, and was accepted in earlier rounds. All new citations resolve.

## Gate failures repaired

- Report heading style: finding headings now use the reviews' own ids (`## F01 (P2) — applied`, …), review a's F01–F11 first, then review b's F01–F03, instead of prefixed `a.F01`/`b.F01` ids.
- LaTeX-style notation (4 hits): in the README supplier contract "From TauCetiRoadmap.AutomorphicGaloisRepresentations" (its §0.4 line) and in §2.4 "Qualified crystalline specialization", bare `G_{F_v}` and `φ^{f_v}` are now ASCII code spans. Nothing else changed; the dependency check was rerun afterwards with the same output (0 problems).

## Adversarial pass on new or changed statements

| Statement | Instances | Computed values | Result |
| --- | --- | --- | --- |
| §1.2 adic selector | ℤ₁₁, T=16, Q=6, c=5, d=6 | 11^(n!)→0, e=1; ker 11ⁿ=0; mod 11ᵐ: (T−5)ᵐ=0 | Algebraic identification only at finite level and over k |
| Paramodular contract | ℓ=7, χ(3)=ζ₃; central character |·|²; unramified ω | 3I₄ acts by ζ₃²≠1 ⇒ fixed space 0; |·|² trivial on ℤ_ℓ^×; χ²=ω, χ∘ν trivial on K(ℓⁿ) | Hypothesis needed and sufficient for the application |
| §2.4 route | (1,0,0); roots (1,2,3,4) vs (1,1,2,3) | b=0<3, outside AG2.6; 6 vs 5 nonzero differences | Continuation needed; distinct-root condition retained |
| §3.1a order of vanishing | p=5 | section in (det ω)^24, square root in (det ω)^12 | Agrees with P20 Remark 6.4.1 |
| §3.2 annihilator | T=k×k on ke₁; Tsel=O on O/ϖᵐ | Ann_Tsel=0 vs Ann_T=0×k; Jsel=ϖᵐO | Ideal of Tsel, not T |
| §3.3 weight shift | p=7, t=6, 2 | ε̄^(−12)=1; ε̄^(−4)≠1 (order 6) | Shift must be compatible |
| §4.2 extension | p=7, rank-one index | contraction 5, det 0; Hasse det 0 at a superspecial point | Extension is geometric, not Fourier |
| §4.2 square-zero step | R=𝔽ₚ[[t]]/𝔪² | D(t₁₁²)=2t₁₁≠0, t₁₁²=0 | Not a derivation; replaced by smooth-base calculation |
| §4.7 reciprocity | Γ(5), p=7, Q=7x²+y², P=x²+7y² | det M=7; neighbour 1208x²−930xy+179y² (disc −28); mod 5: (3,0,4) vs (2,0,1); diag(3,2) gives (27,0,16)≡(2,0,1) | Transport needed; Check added |
| §6.1 projector | 𝔽₁₁ (2,3,4,6); 𝔽₁₃ (2,4,11,9); two primes | 6,8,7,2; R(6)=8; αβ=γδ=8; diag(1,0,0,0) | Zero model rejected |
| §8.3 neatness | p=11, a=4, λ=2; p=7, a=4; p=3 | 5³=125≡4, 5⁻¹=9, 9³≡3, 3⁻¹=4; cubes in 𝔽₇^× are ±1; 𝔽₃^×={±1} | Convention-consistent witness; p=7 rejected |
| §8.4 illustration | q=2; (12); (123) | 15·8·3·2=720; fixed 8 of 16, dim 3; fixed 4, dim 2 | Imported model agrees |
| §11.2 A4 control | n=4, Ψ₄ at all real places; one (1₄,1)j place | µ_v=0 everywhere vs dim µ_v=1 | Discriminates A4 |

## For the maintainer

- **New sources.** `Yam14` was added to `sources.toml` as arXiv:1410.7894v8 (certified, open repository). CG20 cites an earlier version, so its Propositions 3.9 and 3.12 are numbered 3.10 and 3.13 in v8; the version note and the References entry say this. No text is missing, and no `needs-references.toml` was written.
- **Later overlap.** The board design of AlgebraicModularFormsAndSerreWeightsPartII, which comes later in the merge order, overlaps §4.2 (theta construction and injectivity) and the §4.7 neighbour reciprocity. Ownership stays here, as the Scope section already states for §4.2. That later roadmap should import these targets rather than plan them again. Pass a also notes that its degree-two normalised contraction differs from the elementary contraction here by the unit −6, an adapter it will need when it imports §4.2.
- **Names.** No Lean names changed: `Suggested.lean` declares nothing. The gap slug `gsp4-paramodular-newvector` is unchanged; only its `needs` sentence is narrowed.
- **Ownership against open pull requests.** It was checked through `roadmaps grep`/`show` at the index of 2026-10-27 for the six-point model, residual pairing reconstruction, crystalline continuation, Gauss–Manin and Kodaira–Spencer. Owners were found and imported for all of them.
- **Suspicious text.** None in the reviews.
