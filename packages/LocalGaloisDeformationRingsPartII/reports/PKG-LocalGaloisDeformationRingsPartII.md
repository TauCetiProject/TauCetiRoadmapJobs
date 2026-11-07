# PKG-LocalGaloisDeformationRingsPartII

Deliverables: `packages/LocalGaloisDeformationRingsPartII/README.md`, `Suggested.lean`, `metadata.toml`, `sources.toml`, and the top-level `gaps` of `design/plan.json`. The design (README and plan.json, 40 targets in layers T.0–T.7) was expanded into layers 0–7, sections k.n, with no target dropped. No `review.json` file and no files under `reports/` existed, so there were no review notes to apply; the plan's own review record was read as data.

## Headline theorems

| Headline | Section | Status |
| --- | --- | --- |
| Irreducible crossing: `x₀x₁ + ϖ^d u` is prime in `𝒪⟦x₀,…,x_{n+1}⟧` (`𝒪` complete DVR, `d > 0`, `u` a unit) | 5.3 | **stated**: `TauCetiRoadmap.LocalGaloisDeformationRingsPartII.crossing_prime` |
| Single-type presentation with Hodge-labelled prime kernels | 6.1 | not statable: no framed Galois deformation ring of `G_K` and no fixed-type potentially crystalline quotient at the pins; `I_j`, `P_{j,λ}` depend on `ψ` built from them |
| `2^f` components of relative dimension `f+4`, regular generic fibres | 6.2 | not statable: same carriers missing |
| Reduced special fibres `𝔽⟦U₁..U_{f+4+m}⟧/(U₁U₂,…)` | 6.3 | not statable: same carriers missing |
| Multiple-type presentation for a Serre weight, `4^f` components | 7.3 | not statable: deformation rings, `W(ρ̄)`, `σ(τ)` missing |
| Integral component intersection `p ∈ (Q₁∩Q₂) + P_{w̃,j,(3,0)}` | 7.5 | not statable: transported prime `P_{w̃,j,(3,0)}` needs the deformation ring and `ψ` |
| Weight–shape bijection `θ` | 4.3 | not statable: Serre weights of `GL₂(𝔽_q)` and `σ̄(τ)` missing |
| Tame classification by monomial étale `φ`-modules; Kummer descent of isomorphisms | 3.6, 3.9 | not statable: étale `φ`-modules over `k((v))` with coefficients and their Galois realization missing |

The module docstring of `Suggested.lean` lists each unstatable headline with what it lacks. The design's compact Lean file (chart identities, the admissible-set count, rational matrix examples) consisted of padding and free-variable algebra and was not reproduced: those items are README Checks (1.1, 5.2, 5.4, 4.1).

## Elaboration

`lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean` from the content checkout: **1 warning, `declaration uses 'sorry'` (line 47)**, no other message. No `TauCeti.*` import is used.

Binder check: a scratch file with the Suggested contents and `#check @TauCetiRoadmap.LocalGaloisDeformationRingsPartII.crossing_prime` elaborated to
`∀ {O} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [IsAdicComplete (IsLocalRing.maximalIdeal O) O] {ϖ : O}, Irreducible ϖ → ∀ (n : ℕ) {d : ℕ}, 0 < d → ∀ (u : (MvPowerSeries (Fin (n + 2)) O)ˣ), Prime (X 0 * X 1 + C (ϖ ^ d) * ↑u)`.
All binders are in the signature (there are no section variables); this matches README 5.3 (`n + 2 ≥ 2` variables, complete DVR, `d > 0`, unit `u`). Nothing changed.

## Corrections to the design

1. **Pins.** The design's baseline (Mathlib `082e2d3`, Tau Ceti `f790474`) is not the pin; the pins are Mathlib `6b7abb3`, Tau Ceti `a91d3aa`. Every cited declaration was re-checked at these pins (`MvPowerSeries.C/X`, both Weierstrass declarations, `IsRegularLocalRing`, `Ideal.minimalPrimes`, `Matrix.det_fin_two`, `Matrix.adjugate`, `Polynomial.derivative`, `IsLocalRing.notMem_maximalIdeal`, `Ideal.span_le`, `Field.absoluteGaloisGroup`, `modularCyclotomicCharacter`, `LaurentSeries`, `TauCeti.inertiaTameCharacter`, `TauCeti.quotientWildInertiaSubgroupEquiv`).
2. **Supplier section labels.** The design's labels (`R08.1`, `R08.3`, `L7`, `R07.4`, `R03.1/3/4/6`) are not the sections of the suppliers as they stand. Mapped to: LocalGaloisDeformationRings §§1.1, 1.2, 1.8, 3.1, 3.4, 3.5, 3.9, 3.10, 6.9, 8.10; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.4.1, R07.4.2, R07.4.6, R07.4.24, R07.4.36, R07.4.39; DeformationAndDerivedPatchingAlgebra §§1.8, 1.9, 1.11, 1.12, 1.13, 1.14, 3.2, 4.6, 4.7, 6.8.
3. **Owners re-assigned (citation of the actual owner).** Fundamental characters and Teichmüller lifts are constructed in PadicLocalLanglandsForGL2Qp §0.3 (the design asked ClassFieldTheory Layer 7); the residual comparison with the Artin map is gap:fundamental-character-artin there. Henniart's `σ(τ)` is PadicLocalLanglandsForGL2Qp §4.4 (the design asked LocalGaloisDeformationRings); the unramified-degree-`f` tame case is gap:tame-types-unramified there. Kisin modules with tame descent, `T*_dd` and the eigenbasis law are LocalGaloisDeformationRings §6.9 (the design asked FiniteFlatGroups R07.4); the rank-two case is gap:rank-two-descent-kisin-modules there. Framed rings and potentially crystalline quotients are PadicLocalLanglandsForGL2Qp §0.4 with LocalGaloisDeformationRings §3.4.
4. **Missing input found.** 5.3 needs primality, not just irreducibility; the design attributed "regular local UFD" to the deformation-algebra supplier, which does not state it (searched all roadmaps; only dimension two appears, PadicMeasuresIwasawaAlgebras Layer 4). Recorded as gap:regular-local-factorial.
5. **Source statement narrowed.** BHHMS23 Lemma 3.3.1 states that the ideals `(x₁x₂+ϖ^d f₁)` and `(x₁x₂+ϖ^d f₂)` are distinct *iff* `f₁ ≢ f₂ mod 𝔪_A`; the proof gives only one direction, and the converse is false: `n=2, d=1, f₁=1, f₂=1+x₁x₂` have equal residues but distinct ideals (equality would force `x₁x₂+ϖ` to divide `ϖx₁x₂`, impossible since it is a prime dividing none of `ϖ, x₁, x₂`). The design already stated only the sufficient direction; the README now carries the counterexample as a Check. This is a candidate source issue (E3) for the errata register; it is not added to plan.json, whose only editable field is `gaps`.
6. **Notation clash removed.** The chart-2 hypersurface constant (`b` in the design) collided with the common-chart variable `b` of Layer 7; it is `κ` in the README.
7. **Gap format.** The design's six free-text "requests" are now ten slugged gaps in `plan.json` and in the supplier contracts (below).

## Supplier gaps declared (plan.json `gaps`, README "Exact supplier contracts")

| slug | supplier | section |
| --- | --- | --- |
| kummer-tower-tame-quotient | LocalFieldsRamification | Layer 4 |
| fundamental-character-artin | PadicLocalLanglandsForGL2Qp | §0.3 |
| tame-types-unramified | PadicLocalLanglandsForGL2Qp | §4.4 |
| relative-monodromy-criterion | FiniteFlatGroupsAndIntegralPadicHodgeTheory | §R07.4.6 |
| kummer-restriction-invariants | FiniteFlatGroupsAndIntegralPadicHodgeTheory | §R07.4.24 |
| rank-two-descent-kisin-modules | LocalGaloisDeformationRings | §6.9 |
| ghls-existence | LocalGaloisDeformationRings | §8.10 |
| deligne-lusztig-reduction | ModpRepresentationsOfGL2OverLocalFields | MP.3, translation-map |
| regular-local-factorial | DeformationAndDerivedPatchingAlgebra | §3.2 |
| power-invariance | DeformationAndDerivedPatchingAlgebra | §1.11 |

## What the README could not support / notions moved down

- No notion was moved down from a later roadmap. The only later roadmap touching this material, HilbertModularVarietiesAndShimuraCurvesPartII (merge order directly after this roadmap), is a consumer and is listed under Downstream consumers.
- The README cannot itself make 0.5, 4.3, 5.6, 5.7, 6.3 or the potentially crystalline identification of 2.2 unconditional: they rest on the gaps above.

## Duplication sweep (by object)

- Framed lifting ring, fixed-type potentially crystalline quotients, Hodge/Galois types, generic dimension and regularity: imported (PadicLocalLanglandsForGL2Qp §0.4; LocalGaloisDeformationRings §§1.1, 3.1, 3.4, 3.9, 3.10). Not restated as targets.
- Fundamental characters, Teichmüller lifts: PadicLocalLanglandsForGL2Qp §0.3 — the design's request to ClassFieldTheory to *supply* them is withdrawn; only the Artin comparison is a gap.
- `σ(τ)`: PadicLocalLanglandsForGL2Qp §4.4 — cited, gap for unramified `K`.
- Kisin modules with descent, `T*_dd`, eigenbasis law: LocalGaloisDeformationRings §6.9 (rank three there) — cited, gap for rank two; the rank-three charts §§6.20–6.33 are different objects (shapes of length ≤ 4, η = (2,1,0)) and are not duplicated.
- `λ`, `N_∇`, open-disc ring, `(φ,N_∇)`-modules: FiniteFlatGroups §§R07.4.1, R07.4.6 — cited; 2.1 is kept as the relative-coefficient, tame-descent version (differs: coefficients `R` and descent).
- Completed tensor products, cotangent presentations, valued-point detection, monomial components: DeformationAndDerivedPatchingAlgebra §§1.9, 1.12, 4.6, 4.7, 6.8 — cited.
- Serre weights, translation map, `W(ρ̄)`, mod-`p` tame parameter, projective adjoint: ModpRepresentationsOfGL2OverLocalFields MP.3, MP.5 — cited; 0.1 is the characteristic-zero refinement only.
- Weierstrass preparation/division: Mathlib — cited.
- No target of the design was found duplicated elsewhere, so no target was deleted. Searched: `roadmaps grep` for gauge basis, BHHMS, power-invariance/Hamann, irreducible crossing, GHLS, Deligne–Lusztig, Henniart, regular-local factoriality; board packages for BHHMS (found only ModpRepresentations…, HilbertModular…PartII and this package). `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Ownership against open pull requests was checked with the tool's index (354 open roadmap pull requests at their heads) and the board packages.

## Sources

All four sources fetched through the service and recorded in `sources.toml` as `certified`: BHHMS23 (arXiv v7), GHLS17 (arXiv v3), Elkik73 (Numdam), Hamann75 (MSP, `--licence-class publisher-open`: Pacific J. Math. back volumes are free on the publisher's site). The first Hamann75 attempt wrote a `[[missing]]` entry to the scratch `needs-references.toml`; after the successful fetch that file was removed. Nothing is missing. Locators checked in the texts: BHHMS23 line 1118 (Lemma 3.3.1), lines 1201–1284 (Lemmas 4.1.1–4.1.2), 1319–1333 (Proposition 4.2.1), 1478–1495 (Lemma 4.2.3), 1496–1558 (Elkik step, Lemma 4.2.4), 1579–1616 (Remark 4.2.5, Corollary 4.2.6), 1644–1664 (Proposition 4.3.1), 1880–1897 (Claim 3), 1900–1954 (Lemma 4.3.2, Proposition 4.3.3), 863–872 (Proposition 3.1.5), 905–971 (Propositions 3.1.7, 3.1.9, Definition 3.1.8), 653–671 (Definitions 2.3.3–2.3.4, Remark 2.3.5), 2012/2098/2170 (`a₁, a₂, a₃` mod `p`); GHLS17 line 174 (Theorem D); Elkik73 lines 90, 118 (§0.2, Lemme 1, pp. 555–556); Hamann75 line 101 (Theorem 4).

Untrusted text: nothing in the inputs instructed a change of procedure.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 0.1 tame type | f=1,s=1; f=1,s=w; f=1,p=7,μ=(0,0) | exponents (μ₁+1, μ₂); (μ₁+1+pμ₂, μ₂+p(μ₁+1)); reduction ω₁⊕1 vs ω₁⁻¹⊕1 (ω₁ order 6) | holds | none |
| 0.2 genericity | N=12, p=23, 29 | need 13 ≤ d ≤ p−13 ⇒ p ≥ 26 ⇒ 29; p=23: empty | holds | none |
| 0.3 orientation | f=1,p=5,s=w,μ=(1,0) | α′=(2,0),(0,2); a′^(0)=(2,10), a′^(1)=(10,2); orientations w,1; w(2,10)=(10,2) dominant | holds | none |
| 0.4 depth loss | N=1, 13 | N=1 → 0-deep (definition); 13 → 12 | holds | Checks added |
| 0.5 JH of type | f=1 | 2 = 2^f constituents; scalar type excluded (1-deep fails) | holds conditionally on gaps | none |
| 1.1 matrices | P,D,C over ℚ | Ad(P⁻¹D)C=[[0,0],[1/2,0]], Ad(DP⁻¹)C=[[0,0],[2,0]]; f=3: σ₋₁=σ₂ | holds | none |
| 1.2 shape | diag(v²,v); [[0,v],[v²,0]]; diag(v,v²) | = t^(2,1); = w·diag(v²,v); = t^(1,2) | holds | none |
| 1.3 gauge | U₁,U₂,U₃ bounds deg ≤ ν_k−[i<w(k)] | U₁: (2,0;v·1,1); U₂ pivots A₁₂ deg 1, A₂₁ deg 2; U₃: (1,1;v·0,2); 8 parameters each | matches Tables 1–3 | none |
| 1.4 gauge existence | h=3; R=𝔽; R=𝔽[ε]/ε² | needs 4-generic; ambiguity trivial / (1+ε𝔽)² per embedding, dim 2f | holds | Check added |
| 2.1 monodromy | trivial rank one, u′e | −p(u′)^pλ = −E(u′)^pφ(λ) ⟺ λ=(E/p)φ(λ) ✓; B=1+u′: −u′λ/(1+u′) | holds | wording fixed |
| 2.2 condition | h=1, h=3 | 0 jets; 2 jets (value + derivative) | holds | none |
| 2.3 jets | h=3, N=12, L=11 | remainders p⁹, p⁸; L ≥ 3, 10(p−1) ≥ 3 | holds | none |
| 3.1 good pair | f=1 s=w μ=(a,a); μ=(1,0) | (p+1)a divisible; 1, p not divisible by p+1 | holds | none |
| 3.2 deep ⇒ good | f=1,p=5,μ=(3,1); wall; f=2,p=3,δ=(2,−1) | 8 mod 6 = 2, 16 mod 6 = 4; (q+1)c₀; |2−3|=1<9 | holds | Checks made concrete |
| 3.3 étale module | w̃=1; diag(v⁻¹,1); f=2 star | trivial sum; Laurent entry allowed; index 0 ↔ 1 | holds | none |
| 3.4 tame rep | trivial; two-cycle; rank-one cycle | trivial; irreducible niveau 2f; Frobenius α | holds | none |
| 3.5 unramified twist | constant c; λ=(c,c⁻¹), f=2 | nr(c^f); trivial | holds | Check added |
| 3.6 classification | f=1 s′=1, s′=w | split family; irreducible induced; non-injective in D | holds | Checks added |
| 3.7 cyclotomic free | 1, ω, 1∨⊗ω | 1 free (p>2); ω not; tensor ω not | holds | none |
| 3.8 Hom descent | (1,1), (1,ω) | both sides 𝔽; hypothesis fails for (1,ω) | holds | Checks added |
| 3.9 Isom descent | different ss; ρ₁=ρ₂ | both empty; Aut bijection | holds | Checks added |
| 4.1 admissible types | f=1; N=12 | 3 shapes; U₂*=t^(2,1)w vs U₁*=t^(2,1); 11-deep ≥ 4 | holds | none |
| 4.2 residual module | N=12 | 3 < 11 ≤ coordinate < p−4 | holds | Checks added |
| 4.3 θ | f=1; f=2 | θ(0)=U₃, θ(η)=U₁ (source lines 1251–1254); θ(σ)₀ from ω₁ | holds | none |
| 5.1 small-Hodge | f=1 profiles; I∩J vs I+J | {(3,0),(2,1)} only | holds | none |
| 5.2 charts | a₂ ∈ {5,7,−3,11/3}; x=y=0; (p,κ,x,y)=(3,−1,2,3); κ=1 | κ−1 = −1/10, −1/21, −1/6, −9/44 = −2/(a(a−1)); G₅ = κ⁻¹(t+p)(t+κp) exactly; p²; −27; (xy+p)² | holds | constant renamed κ |
| 5.3 crossing | x₁x₂+ϖx₁; d=0; f₁=1,f₂=1+x₁x₂ | reducible; unit; equal residues, distinct ideals | source "iff" false; README keeps "if" | Check added |
| 5.4 Jacobian | 2000 random rational points; x=y=0 at p=3,κ=−1 | identity exact (0 failures); 108 = 27·4 | holds | none |
| 5.5 approximation | N=12 (n=7), n=6 | correction p⁴; 2(6−3)=6 no gain | holds | none |
| 5.6 nonempty profiles | f=1 | 2 profiles ↔ 2 components; L(a,b)⊗L(2,0) needs 2 ≤ a−b ≤ p−3 | holds conditionally on gap | none |
| 5.7 gauge/Galois | f=1 | 3 + 4 = dim + 2 ⇒ relative dim 5 = 4+f | holds | none |
| 5.8 ambient ψ | N=12 | p^{N−8}=p⁴; ψ automorphism for N ≥ 9 | holds | none |
| 6.1 single presentation | f=2, λ=((3,0),(2,1)) | kernel P_{0,(2,1)} + P_{1,(3,0)} (index f−1−j) | holds | Check made concrete |
| 6.2 components | f=1, 3 | 2 comps rel dim 5; 8 comps rel dim 7; fixed det gives f+3 | holds | none |
| 6.3 special fibres | m=0,1; 𝔽⟦U₁,U₂⟧/(U₁²) | dim f+4; non-reduced excluded | holds | none |
| 7.1 common charts | counts | 9 variables; relations c₁₁=−pd₁₁, c₂₂=−pd₂₂ | holds | Table 5 note (E1) stated in prose |
| 7.2 weight union | f=1 θ=U₃; f=2 | uses U₁,U₂; 4 maps, 16 pairs | holds | none |
| 7.3 multiple presentation | f=1; tangent bound | 4 comps rel dim 5; r_j+3 < p−1 since r_j+1 < p−12 | holds | none |
| 7.4 Q ideals | p=5, units 1 | Q₁ zero at (0,0,5,0,0,0,25): 5−5=0, 25−25=0; Q₂ at (0,1,0,0,0,−5,0): 1·(−5)+5=0; Q₃ at (0,0,0,5,0,0,25) | holds | none |
| 7.5 p-membership | N=12; ϖ instead of p, e ≥ 2 | c₂₁+(a₂−1)d·2p/(a₂(a₂−1)) = c₂₁+(2p/a₂)d; tail p³; ϖ ∉ Q₂+P since quotient is a nonzero (𝒪/p)-algebra | holds; ϖ-version false | Check rewritten with computation |
| Lean `crossing_prime` | n=0 (two variables); d=0 excluded; ϖ irreducible in a DVR | Fin 2 has 0 ≠ 1; constant term ϖ^d·u(0) ∈ 𝔪, so not a unit | statement matches 5.3 | none |

Context check: `crossing_prime` has no section variables; all hypotheses are explicit binders (see binder check above).

## Dependency check

```text
depcheck: 56 roadmaps, 646 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.
