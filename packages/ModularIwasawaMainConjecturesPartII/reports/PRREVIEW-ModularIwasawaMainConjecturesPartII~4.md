# Review of ModularIwasawaMainConjecturesPartII (pull request #2281 at 6fc6492)

**Verdict:** accepted

## Previous findings

- R01 — repaired: The description imports both Kronecker formulas from NonordinaryCMSpecialValues §§2.2–2.3 and identifies this roadmap’s §2.3 as the squared-norm dictionary and numerical Checks, without rescaling generators.

## Verified sound

| Statement | Instances tried | Computed left side | Computed right side / wrong model | Result; change |
|---|---|---|---|---|
| Scope, integral normalization (§0.2) | ℤ₂[C₂] → ℤ₂², a+bx ↦ (a+b,a−b) | Image pairs have equal parity; cokernel 𝔽₂ | After inverting 2, inverse is (r,s) ↦ (r+s)/2+(r−s)x/2 | Revised scope agrees with integral normalization |
| §5.5 dual-character displacement; seeded | K=ℚ(i), p=5, θ quadratic modulo 13; N(g)=6 | 5⁶≡−1 mod 13; θ(g)=ω(g)=η(g)=1; χ̌(g)=6 | Undisplaced dual gives 1; both reduce to 1 mod 5 | New Check detects the missing cyclotomic twist |
| §5.5 μ-zero equivalence and λ-equality | F(S,T)=S+T²; S=0,5 | T²: μ=0, λ=2, reduction T² | 5+T²: μ=0, λ=2, reduction T² | Congruence gives the asserted equality when μ=0 |
| §5.5 positive-μ negative control | F(S,T)=S+5T; S=0,5 | 5T: μ=1, λ=1, reduction 0 | 5(1+T): μ=1, λ=0, reduction 0 | Revised μ hypothesis excludes this counterexample |
| §5.5 involution | f=5ᵐTᵈ, (m,d)=(0,0),(0,1),(2,2) | (μ,λ)=(0,0),(0,1),(2,2) | ι(f)=5ᵐ(−T)ᵈ/(1+T)ᵈ gives the same pairs | Both invariants preserved |
| §7.5(1) descent rings | A=ℚ₅[[x,y]], a=x, B=A/(x) | dim A=2; kernel=(x) | B=ℚ₅[[y]], dim B=1 | Principal kernel and regular local rings |
| §7.5(2) degree-two quotient | Complex A →ˣ A in degrees 1,2; descend modulo y | H²/yH²=A/(x,y)=ℚ₅ | Reduced complex B →ˣ B has H²=ℚ₅ | Quotient formula agrees |
| §7.5(3) degree-one correction | Same complex; descend modulo x; B=A/(x) | H¹/x=0; H²[x]=B | Reduced differential=0; H¹=B; sequence 0→0→B→B→0 | Torsion contribution retained |
| §7.7 length identity | A=ℤ₅[[T]], M=A/(T²), a=5 | Quotient length 2; kernel length 0 | length M_(T)=2; length A/(T,5)=1; 2·1=2 | Rephrased hypotheses and identity agree |
| §7.7 boundary inputs | Same A; a=1, arbitrary eligible M; a=0, M=A/(5,T) | Respectively 0−0=0 and [𝔽₅]−[𝔽₅]=0 | Right-hand sums both 0 | No invertibility or nonzero-a assumption lost |
| §8.5 prime-element argument | A′=k[[x,y,z,w]]/(xy−z²), a=w | A′/(w) is a domain; sb=wc, s∉(w), forces b∈(w) | b/w∈A′; w⁻¹A′∩A′_(w)=A′ | Factoriality is unnecessary |
| §8.5 generator negative control | A=k[[x,y]], a=x, H=x⁻¹A | [1/x]≠0 in H/A, but x[1/x]=0 | H_(x)=x⁻¹A_(x)≠A_(x) | New Check isolates the necessary generator condition |
| §8.5 dependent length equality | M₁=M₂=A/(y), a=x | Quotient lengths 1,1; torsion lengths 0,0 | 1−0=1−0 | Revised argument preserves descent equality |

Rows for untouched statements stand as in the previous review of 55f8bdd.

- Sources: 8 affected/supporting locators in 5 cached texts checked: Kriz Theorem 27, p.22; CGLS Theorem 2.2.2 proof and (2.11), p.15; Kato Lemmas 15.13 and 14.15, §15.14 and Proposition 15.17 proof; JLK Lemma 7.2; BT footnote 4.
- Pins: 6 declarations opened: Mathlib/RingTheory/Length.lean:31; Mathlib/RingTheory/Ideal/Height.lean:36; TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean:104; TauCeti/NumberTheory/ClassFieldTheory/ClassFields/RayClassField.lean:123,209; TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145.
- Supplier citations: 6 affected/supporting sections resolved—NonordinaryCMSpecialValues §§2.2–2.3, AutomorphicPadicLFunctionsPartII §8.5, PadicMeasuresIwasawaAlgebras §§4.1,4.4, SelmerIwasawaCohomology §3.3; the new Layer 4 dependency uses the existing μ/λ owner.
- Dependency output: `depcheck: 243 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE.
- Gate: worker gate and independent rerun pass; targeted build succeeds; direct `lake env lean` exits 0 without warnings; 0 declarations require signature or one-tactic probes.
- Change scope: 26 README lines; 0 Lean changes; 0 removed or reordered layers; 0 changes outside the folder; previous R01 repaired; title, description and `roadmap-summary` checked against this head.

Overlap check: read KatoEulerSystems, NonordinaryCMSpecialValues, AutomorphicCongruences, ModularIwasawaMainConjectures and CMRankZeroConverse. Owners: modular zeta morphism—KatoEulerSystems; Kronecker formulas and CM constructions—NonordinaryCMSpecialValues; automorphic reverse bounds—AutomorphicCongruences; KMC formulation—ModularIwasawaMainConjectures; p-converse—CMRankZeroConverse; identified elliptic generator and CM equality descent—this roadmap. The changed Katz argument uses AutomorphicPadicLFunctionsPartII’s measure and PadicMeasuresIwasawaAlgebras’ invariants. No competing head or dropped cited id is reported.

Source independence: changed passages only; 7 passages compared with 4 sources (Kato, Kriz, CGLS, JLK), with no copied expression or reused source material identified. Largest share: Kato, 33 of 98 explicit source-led citation groups before References. No layer was added, removed or reordered; the previous contents comparison stands.

## Not verifiable

- Carried forward: the dyadic compact-support comparison in §4.2 uses Itakura §3.1 via JLK line 432; the previous sources-service search found no legal copy. The changed passages do not alter that input.

## Source issues

- **Misprint** in Kato at proof of Proposition 15.17, printed p.265, Kato line 5769: the source says to apply Lemma 14.12; it should be Lemma 14.15, the codimension-two length identity; affects the proof.

## For the human reviewers

- JLK line 394 chooses the ordinary Beilinson regulator; `TauCetiRoadmap/ModularIwasawaMainConjecturesPartII/README.md:393` replaces it by the Dirichlet regulator while retaining comparison (8). The previous scalar calculation stands; the dyadic integral comparison through the unavailable Itakura preprint remains unverified.
