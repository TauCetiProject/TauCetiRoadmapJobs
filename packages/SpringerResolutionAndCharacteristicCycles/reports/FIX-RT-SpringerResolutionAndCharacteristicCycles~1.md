# FIX-RT-SpringerResolutionAndCharacteristicCycles~1

Two red-team reviews were merged: pass a (F01–F08) and pass b (F01–F03). Pass a's F01 and pass b's F01 make the same claim and are settled together under pass a F01, with a cross-reference under pass b F01.

## F01 (P1) — applied

Confirmed. BHS19 Lemma 2.4.8 (BHS19 lines 1017–1057) is false as stated. For SL₂ with w=e we have P_e=B and ℒ_e=[Z_e]; the point (ke₂,ke₂,0) lies in Z_e, but u=((1,1),(0,1)) sends it to (k(e₁+e₂),ke₂,0), which is not in Z_e. The proof breaks at BHS19 lines 1033–1038: the identification G×ᴮF≅F×F conjugates P_w by the first coordinate.

§12.2: old → new. "ℒ_w is invariant under first-flag left translation by P_w" → Ind(Loc L_w)≅f_w*E_w on G/P_w×F; a smooth-pullback CC formula; ℒ_w=φ_*pr*CC(E_w); each Z_v with a_(w,v)>0 is saturated along G/P_w ((g₁B,g₂B,ψ)∈Z_v ⇒ (g₁pB,g₂B,ψ)∈Z_v), with the slice-action equivalent.

Also changed in the same pass:
- The proof route of §12.2.
- New Checks: the SL₂ negative control, a computed SL₃ w=s₁ example, and the torus.
- The layer's Examples and the Layer 12 title.
- The Summary and "How to read the build".
- The BHS19 reference note.
- The §12.2 bullet of the `Suggested.lean` docstring.

## F02 (P1) — applied

Confirmed. AlgebraicVectorBundles L1A–L2B supplies relative Spec and the algebra anti-equivalence, but not the module equivalence. SchemeAndStackFoundations §0.2 states `relativeSpec_modulesEquiv` (TauCetiRoadmap/SchemeAndStackFoundations/README.md:539).

§8.2: old → new. "Relative Spec and the graded coherent-sheaf comparison are AlgebraicVectorBundles L1A–L2B inputs" → L1A–L2B for relative Spec and T*Y; §0.2's module equivalence applied to gr M with the grading kept as the scaling structure; finite presentation checked on charts. Also added the A¹ zero-section Check, §0.2 in the §8.2 *Needs:* line, the SchemeAndStackFoundations supplier contract and the Scope bullet.

## F03 (P1) — applied

Confirmed. The §11.1 route uses Borel–Moore homology, but no supplier for it was named. The repair consumes:
- AffineMorseLefschetz A4.0 (Borel–Moore homology, compact-pair comparison, fundamental cycles) and A4.1 (compatible semialgebraic triangulation). Both are on main.
- ComplexComparisonPartII §C−1.1 (scheme analytification). It is earlier in the merge order.

§11.1 now constructs the component fundamental classes and the basis H^BM_(4N)(Z(C),Q)=⊕_w Q[Z_w] as targets of its own. New supplier contracts, a Scope bullet, the *Needs:* entries and an SL₂ Check were added (H^BM_4=Q², while H₄(T*P¹)=0).

## F04 (P3) — not actionable in this package: the independent proof route needs owners later in the merge order

The finding is correct that §11.3 owns the principal-block KL multiplicity theorem without a primary proof route. The known route (Beilinson–Bernstein, Brylinski–Kashiwara) needs two things:
- the regular Riemann–Hilbert correspondence and the middle-perverse heart, owned by MixedHodgeModulesAndIrregularHodgeTheory B/regular-riemann-hilbert and B/middle-perverse (position 178 in the merge order);
- purity or the decomposition theorem, owned by EtaleDualityAndPerverseSheaves §5.6 (position 117).

This roadmap is at position 70. Two repairs are possible, and both are decisions outside this package:
- move those ownerships down below this roadmap, which rewrites other packages' scopes; or
- place this roadmap after them in the merge order.

The cycle identity [X̄_w]=Σ m_(w,v)ℒ_v itself follows from §11.1 and additivity alone. Only the evaluation m_(w,v)=P_(w₀w,w₀v)(1) depends on this decision.

## F05 (P2) — applied

Confirmed. TypeAHeckeAlgebras H1 (on main) owns the type-A algebra with (T_i−q)(T_i+q⁻¹)=0. §11.3 now builds the Weyl Hecke algebra over Z[v,v⁻¹] with (T_s−v)(T_s+v⁻¹)=0, and proves that the generator-preserving map from H1 (R=Z[v,v⁻¹], q=v) is an isomorphism on type-A factors. Also added: a supplier contract, a Scope bullet, H1 in the *Needs:* line, and an S₃ Check (rank 6, Z[S₃] at v=1; the map T_s↦−T_s fails the quadratic relation). No other owner of the general Coxeter Hecke algebra or the KL basis exists (`roadmaps grep`: no match).

## F06 (P2) — applied

Confirmed. BR12 takes its positive roots in g/b (BR12 lines 163–164), so for the same B, BR's simple roots and ρ are the negatives of ours. BR's line bundle of a character λ is G×ᴮk_λ, which the SL₂ canonical-bundle computation confirms.

§4.2: old → new. "O(−ρ,ρ−αᵢ)" → "O(ρ,αᵢ−ρ)", in BR's reversed order, with the transport stated. The fix repeats wherever line-bundle weights appear:
- The Conventions now fix L_B(λ)=G×ᴮk_λ and its ampleness, with an SL₂ Check that L_B(ρ)=O(−1).
- §1.2's projective embedding now reads L_B(−λ).
- A new §4.2 Check: X_s=Tot O(−1,−1), ω=O(−1,−1), the corrected twist gives O(−1,−1), and the old twist would give O(1,1).

## F07 (P3) — applied

§11.2: old → new. "identified as in L" → "those of §10.4, transported to F×F by the induction equivalence of §10.3". §10.3 was added to the *Needs:* line.

## F08 (P3) — applied

§8.4: old → new. The undefined "induced ε extension" Check → 0→D/Dx→D/Dx²→D/Dx→0, with first map [P]↦[Px]. The graded factors are k[x,ξ]/(x), k[x,ξ]/(x²) and k[x,ξ]/(x), with generic lengths 1, 2, 1. A trace argument shows that no nonzero Weyl module is finite-dimensional. The shift Check is kept as its own bullet.

## F01 (P1) — applied

Same claim as pass a F01; see that section. Pass b's slice form and pass a's saturation form are equivalent, and both are stated in §12.2.

## F02 (P3) — applied

Confirmed. At G98 line 191 the multiplicity is the rank over the reduced component, not the generic length. §8.6 locator: old → new. "G98, Definition 1.1.12, p. 5, using generic length (G98 line 151)" → "…for the reduced characteristic variety only, its rank-over-the-component multiplicity not being used (G98 line 191)". The References entry already said this.

## F03 (P3) — applied

All five sentences were replaced as suggested, with small wording changes:
- §6.5: reducedness of Q is stated as a hypothesis of the comparison.
- §9.1: the operations are built here on gap:derived-bimodule-sheaves.
- §9.2: the proof uses §9.1 and that gap.
- §9.7 API: descent is proved in §9.7 and consumed by §9.9.
- §9.9: general-field comparisons use §9.7's descent.

The same residue in the §6.5 torus Check ("bounded by the conditional comparison in §6.5") was also fixed. The citations "§§9.7 and 9.9" in §§10.3 and 10.4 are grammatical, correctly directed, and were left alone.

## Checks

- **Elaboration.** `lake env lean packages/SpringerResolutionAndCharacteristicCycles/Suggested.lean`, run from the content checkout, exits 0 with no output. The file declares nothing (module docstring and namespace only), so the `#check @name` signature comparison has nothing to cover; no scratch file was needed. Only the docstring changed.
- **Dependency check.** Output: `depcheck: 56 roadmaps, 644 edges, 0 problem(s)`. There are no UPWARD, CYCLE or moved lines.
- **Citation resolver.** `roadmaps resolve` reports no cross-roadmap citation and no Lean name found nowhere.
- **Gate failures.** None were listed for this job.

## Adversarial pass on changed statements

| Statement | Instances | Values | Result |
| --- | --- | --- | --- |
| §12.2 saturation | SL₂ w=e; SL₂ w=s; SL₃ w=s₁; torus | P_e=B: g₁pB=g₁B, so the statement is the identity, while first-flag u moves (ke₂,ke₂,0) off Z_e. P_s=G: Z_s=F²×{0} is saturated. SL₃: λ=−2ρ+α₁ has pairings (0,−3), P=stab⟨e₁,e₂⟩; Z_(s₁)={P₁=P₂=P, ψ(P)=0, imψ⊂P}, of dimension 4+2=6, does not depend on L₁; p=1+E₁₃ moves the plane ⟨e₂,e₃⟩ to ⟨e₂,e₁+e₃⟩. Torus: point. | holds; the old form fails for SL₂ w=e and SL₃ w=s₁ |
| §12.2 smooth CC pullback | pr flat with smooth generic fibres | generic length multiplies by length of a field = 1 | holds |
| §12.2 covector transport | ψ∈Ad(g₁)u_P | Ad(g₁p)b⊂Ad(g₁)p for p∈P | ψ is unchanged |
| L_B(λ) convention | SL₂, upper triangular B | [gb,ρ(b)⁻¹x]↦x·ge₁ is well defined, so L_B(ρ)=O(−1); L_B(−ρ)=O(1) is ample | agrees with the AlgebraicVectorBundles Checks |
| §4.2 dual twist | SL₂ X_s | ℓ₁⊗ℓ₂ embeds in sl₂ (nonzero on the diagonal), so X_s=Tot O(−1,−1); ω=O(−2,−2)⊗O(1,1)=O(−1,−1); new twist (ρ,ρ)→O(−1,−1); old twist→O(1,1) | corrected |
| §8.4 exact sequence | D/Dx→D/Dx²→D/Dx | Px=Qx² ⇒ P=Qx (injective); gr factors k[x,ξ]/(x), k[x,ξ]/(x²), k[x,ξ]/(x); lengths 1, 2, 1 | 2=1+1 |
| §11.1 Borel–Moore basis | SL₂; T*P¹ | two components of complex dimension 2 meeting in a P¹ of real dimension 2, so H^BM_4=Q²; H₄(T*P¹)=0, H^BM_4(T*P¹)=Q | holds |
| §11.3 H1 comparison | S₃; T↦−T | rank 6 both; v=1 gives T²=1 and Z[S₃]; (−T−v)(−T+v⁻¹)=T²+(v−v⁻¹)T−1, which differs from T²−(v−v⁻¹)T−1 unless v=v⁻¹ | the generator-preserving map is required |
| §8.2 module equivalence | gr O on A¹ | k[x,ξ]/(ξ) maps to the structure sheaf of the zero section | holds |

## Ownership and citations

- **Citations resolved.** SchemeAndStackFoundations §0.2, AffineMorseLefschetz A4.0–A4.1 and TypeAHeckeAlgebras H1 were checked on main (737e482). ComplexComparisonPartII §C−1.1 was checked at its open head with `roadmaps show`; it is at position 42 in the merge order, before this roadmap.
- **Hecke and KL ownership.** No roadmap on main, open head or board package owns the general Coxeter Hecke algebra or the KL basis.
- **KL-theorem ownership.** No owner of the KL multiplicity theorem exists either (see pass a F04).

## For the maintainer

- **Consumer citation affected.** TriangulineVarietyAndItsLocalModel (`design/README.md` line 1223) cites `SpringerResolutionAndCharacteristicCycles:P/parabolic-cycle-invariance` for "parabolic invariance of simple cycles". Only the saturation (slice) form is true. That package's use in Y/constituent-invariance must be checked against §12.2 as restated.
- **Pass a F04 needs a human decision.** It is an ownership or merge-order question: move the regular Riemann–Hilbert and decomposition-theorem ownership down, or place this roadmap after MixedHodgeModulesAndIrregularHodgeTheory and EtaleDualityAndPerverseSheaves.
- **Source errors.** BHS19 Lemma 2.4.8 and Remark 2.4.9 are wrong as stated (first-flag left translation); the README now uses the saturation form. The untransported BR12 dual-kernel twist is now corrected by explicit transport.
- **No new sources.** No `sources.toml` change was needed: M23 Example 6.11 is in an existing source. No text was requested.
