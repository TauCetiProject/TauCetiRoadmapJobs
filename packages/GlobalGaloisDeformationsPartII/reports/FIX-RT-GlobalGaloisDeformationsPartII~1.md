# Repair report: GlobalGaloisDeformationsPartII, red-team round 1

Pass a (seven findings, F01–F07) and pass b (two findings, F01–F02) do not overlap. The first seven sections below are pass a's F01–F07; the last two are pass b's F01 and F02. Elsewhere in this report, pass a's findings are referred to as a-F01…a-F07 and pass b's as b-F01, b-F02.

## F01 (P1) — disputed

No edit. LocallyAnalyticDistributionsPartII is line 300 of the merge order, directly above this roadmap (line 301), and it exists as a board package (`packages/LocallyAnalyticDistributionsPartII/design/README.md`). Its Layer ND.0 states the targets the README consumes: `ND.0/ordered-basis-chart` (line 128: the ordered-basis chart ℤ_p^d→G is a homeomorphism) and `ND.0/p-valued-analytic-structure` (line 185: a unique analytic structure with analytic charts, and an open normal uniform or p-valued subgroup). The brief allows earlier merge-order roadmaps as suppliers. Pass b resolved the same citation (its "board packages … LocallyAnalyticDistributionsPartII ND.0 (65)"). The `roadmaps show` witness covers only main and open pull requests, not board packages. NoncommutativeAndEquivariantIwasawa §§0.2, 0.7 is already cited alongside ND.0.

## F02 (P1) — disputed

No edit. PotentialAutomorphyInfrastructurePartII is line 89 of the merge order and exists as a board package. Its design README has `## PL.6` (line 2215) and `### The ANT lifting theorem with source primitivity` (line 3744), with target `PL.7/source-primitive-ant-lifting`. That target states ANT20 Theorem 1.1 with all eight hypotheses:
- CM field F, l>3, l∤n;
- individually polarized distinct constituents;
- a Steinberg-shaped place w₀ and an ι-ordinary seed;
- both cyclotomic exclusions;
- weak primitivity of `ρ̄^{ss}` over F̄_l;
- no order-l quotient.

This is exactly what §10.2 cites. Pass b resolved PL.6 (2215), PL.7 (3132) and this heading (3744). The README cites only PL.7, never a separate PL.6 input, so no PL.6 citation needs deleting.

## F03 (P1) — applied

The claim holds. FKP22 lines 2268–2270 (Lemma A.14) and 2040–2044 (Lemma A.5) need H¹ of Gal(L′/F) with coefficients in the ambient (g^der)^{*,ss}. Gal(L′/F) embeds in M(k)×k× with M-irreducible projection. The existing gap:character-twisted-adjoint-h1 is for G-irreducible Γ with Lie(Gᵈᵉʳ) coefficients, so it does not cover this.

Change: added gap:levi-restricted-adjoint-h1 at ArithmeticGaloisRepresentations §7.7 (README contract, design/plan.json `gaps`), with a locator paragraph and a Check (torus; SL₃ (2,1): 8 versus 3; non-irreducible negative control). §1.10's proof route now cites it for C4, and its *Needs:* line names it.

The same pattern occurs in §1.5 (Lemma A.5), so §1.5 also moves from gap:character-twisted-adjoint-h1 to the new gap. The Layer 1 Dependencies were updated. §1.12, Borel case: the Levi is a torus, the group has order prime to p and the H¹ vanishes by averaging, so it is unchanged.

## F04 (P2) — not actionable in this package: the requested target is a theorem with no proof in any source

The witness holds: FKP22 Lemma 3.7 (line 666; proof lines 678–690, reused at 804–816) is refuted by the repeated-constituent computation of §2.9. The repair asks this roadmap to own, as a target to be proved, an unconditional auxiliary-prime selection theorem under C1, C3, C4, including repeated constituents.

No legal source proves that statement:
- The only proof is the refuted one.
- A search found no erratum or later version of FKP22 (arXiv v5 is the version used; Invent. Math. 228, 2022).
- Its truth is therefore not established.

Writing it as a target would assert an unproven claim as roadmap content. The roadmap instead states the hypothesis explicitly and keeps the endpoints in full generality otherwise. Removing the hypothesis is a scope decision for a maintainer, or needs new mathematics: either a corrected selection argument or a published fix. No edit.

This round removes the hypothesis where it was not needed (b-F01).

## F05 (P2) — disputed

No edit. §4.4 is FKP19 Lemma B.1, an appendix input lemma consumed by §4.5 and the relative Selmer layer. It is not one of the roadmap's end theorems (Summary; Suggested.lean docstring list). The acceptance-test rules exclude intermediate statable lemmas, and pass b applied that rule to §§8.8–8.9.

Stating §4.4 in Lean would also need an ad hoc encoding: a ℚ_p-analytic `LieGroup` model, an O-lattice quotient `V/ϖʳV` with its discrete topology and a continuous action, fed into `TauCeti.ContCohomology.H1`. The rules call that padding. The docstring's claim concerns headline theorems only and stays accurate.

## F06 (P3) — applied

Old: the two-factor Check took a fibre product of two "component extensions" that are not quotients. New: a four-factor Check. C₂ swaps two pairs, giving two orbits, and each orbit quotient (by the normal product of the other pair) has component group C₂. The fibre product has component order 2 and the unrestricted product has order 4, with mismatched (0,1),(1,0). Two exchanged factors form one orbit.

## F07 (P2) — applied

§1.9: "embeddings of F′ into a separable closure" is replaced. F′ now embeds in an algebraic closure containing the fixed separable closure, and Γ_{F′} has image Γ_{F′_s}. The test is independent of the embedding, and D(s,t,N) is equivalent to the test over separable extensions of degree ≤N. Added a Check over 𝔽₂(t), p=5:
- κ̄ has order 4 and keeps it after `𝔽₂(t^{1/2})`;
- the constant quadratic extension leaves order 2;
- D(1,1,2) holds and D(1,1,4) fails.

No other README statement quantifies over finite extensions of bounded degree; the only other degree bound, line 1171, concerns K′/K.

## F01 (P3) — applied

Pass b, finding F01.


Deleted "Assume the arithmetic selection hypothesis of §3.2…" from §§10.1, 10.2 and 10.3. §10.1 now applies §6.6, both for the auxiliary-place prescription and for the final step, with the oddness argument: multiplier −1, Lagrangian eigenspaces, fixed gl_n of dimension n²=dim Flag(Sp_{2n}). Its *Needs:* line drops §6.3. Added a Check (n=1: 1; n=2: 4; identity: 10).

FKP22 line 1826 confirms that the FKP19 main theorem suffices for Proposition 9.1. The same sentence pattern was repaired in the Summary, Downstream consumers and the Suggested.lean docstring. §10.4 (which uses §6.3) and the Layer 10 Dependencies (§6.3 is still used by §10.4) are unchanged.

## F02 (P3) — applied differently

Pass b, finding F02.


The witness holds: the "three per newform" count ignores the primes above p and the residual embeddings. The reviewer's bound 3[K_f:ℚ][k_f:𝔽_p] is valid but crude and leaves k_f ambiguous.

New text: per newform, prime 𝔭|p and residual embedding of k_𝔭, at most 2 endpoint classes plus the single split class 1⊕χ̄. So f contributes at most 1+2Σ_𝔭 f_𝔭 ≤ 2[K_f:ℚ]+1 classes. The reasons:
- ρ_{f,ι} is realized over K_{f,𝔭} (p odd, complex conjugation with eigenvalues ±1).
- Embeddings ι over the same 𝔭 act through the residual embedding.

§8.10's paragraph, proof route and Check (ℚ(√5), p=11 → 5; 𝔽₉ twist → 5) and §8.11's Check (Σ_i(2[K_{f_i}:ℚ]+1)) were updated. Finiteness is unchanged.

## Checks run

- `lake env lean packages/GlobalGaloisDeformationsPartII/Suggested.lean`, run from the content checkout: exit 0, no messages. The file declares nothing, so there was no `#check @name` comparison to make and no binder changed; only the docstring changed.
- Dependency check, complete output:

```text
depcheck: 56 roadmaps, 661 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.
- Gap slugs: the README "must provide (gap:…)" set equals the `design/plan.json` `gaps` set (29 each). Only the new entry was added to the plan.

## Adversarial pass on new or changed text

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| gap:levi-restricted-adjoint-h1 | L=T torus; SL₃, (2,1) Levi; Γ with an order-p unipotent element of L(k) | prime-to-p order, H¹=0 by averaging; coefficient dimension 2+4+2=8 versus 3; projection not L-irreducible, so excluded | consistent with FKP22 lines 2040, 2268 |
| §1.5 route with ρ̄_M | trivial adjoint, κ̄ of order 2 (existing Check) | constituents 1 versus κ̄, values 1,−1 | unchanged |
| §1.9 convention | 𝔽₂(t), p=5, χ=1, s=t=1 | ord κ̄=4; purely inseparable degree 2: 4; constant quadratic: 2; degree 4: 1 | D(1,1,2) true, D(1,1,4) false |
| §1.9 equivalence | F′ purely inseparable; F′ separable | F′_s=F, [F′_s:F]=1≤2; F′_s=F′ | separable reformulation equivalent |
| §5.5 Check | four factors, C₂ swaps (12)(34) | orbits 2; matching pairs 2 of 4 | valid quotients |
| §10.1 oddness | n=1, n=2, identity | fixed dimensions 1, 4, 10; dim Flag 1, 4, 4 | odd exactly for multiplier −1 |
| §10.1 via §6.6 hypotheses | GSp_{2n} connected, F̃=F | totally real, [F(ζ_p):F]>a_GSp, absolute irreducibility on Γ_{F(ζ_p)}, regular ordinary lifts | all §6.6 hypotheses present |
| §8.10 count | ℚ(√5), p=11; inert 𝔽₉; K_f=ℚ | 2 primes f=1: 1+4=5; f=2: 1+4=5; ℚ: 1+2=3 | bound ≥ original 3 in each case, finite |
| §8.11 Check | m=1, K_f=ℚ | Σ=3, matching the old 3m when all K_f=ℚ | consistent |

## Notes for the maintainer

- The new supplier request gap:levi-restricted-adjoint-h1 is addressed to ArithmeticGaloisRepresentations §7.7.
- No Lean name changed; no name cited by other roadmaps changed.
- a-F04 asks for a theorem whose only published proof uses the refuted FKP22 Lemma 3.7. Whether the general reducible endpoints may stay conditional is a scope decision for a human.
- Ownership against open pull requests was checked only through the sibling checkouts and roadmap tool used in earlier rounds. This round added no new owned construction, so no new ownership search was needed. The new item is a supplier gap, not a target.
- Nothing suspicious was found in the reviews.

## Gate repairs

- Report headings: every finding section is headed with the review's own id `Fnn`, so each of F01–F07 has a section; pass b's F01 and F02 follow pass a's sections and are marked as pass b's in their first line.
- TeX-like notation outside code spans (12 occurrences): the gap:levi-restricted-adjoint-h1 contract (README and the identical `needs` in `design/plan.json`) now says "W∨" and states the consequence in words instead of `((Lie Gᵈᵉʳ)|_Γ)^{ss,∨}`. In §1.9 (D(s,t,N)) and its Check, the §1.10 proof route, the §8.10 count, the §8.11 Check and the §10.1 proof route, the subscript and superscript formulas are now in code spans. No mathematical content changed.
