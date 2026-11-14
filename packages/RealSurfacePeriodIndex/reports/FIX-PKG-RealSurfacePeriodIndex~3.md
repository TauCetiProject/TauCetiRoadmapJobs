# FIX-PKG-RealSurfacePeriodIndex~3

Repair round for the sixteen findings of REV-PKG-RealSurfacePeriodIndex~2. Files edited:
`packages/RealSurfacePeriodIndex/README.md`, `packages/RealSurfacePeriodIndex/Suggested.lean`,
`packages/RealSurfacePeriodIndex/sources.toml`. `metadata.toml` and `design/plan.json` are unchanged
(no new supplier gap; the three declared gaps stand).

## R01 (P2) — applied

§0.4 rebuilt Sylvester, additivity and isometry invariance → it imports Mathlib `sigPos`/`sigNeg`, `QuadraticMap.Equivalent.sigPos_eq` and Tau Ceti `TauCeti.RegularFormClass.signature`/`signatureHom`, and proves only real-closure independence, restriction and local constancy. Contracts name them; the absence claim names the missing Harrison interface. Same pattern: real closures and orderings now cite Tau Ceti and the non-deprecated `Subsemiring.IsOrdering`.

## R02 (P2) — applied

`HasZeroTotalSignature` gains `[FiniteDimensional K V]`; its docstring and the README Conventions say finite-dimensional. Its two Lean consumers already carry finite dimension (`not_anisotropic_of_hasZeroTotalSignature` by binder, `exists_anisotropic_hasZeroTotalSignature` through `Fin 4 → K`), and both elaborate.

## R03 (P1) — applied

§0.5 step 5 "a real closure of L is one of F" → restriction through the new §0.4 formula sign_Q(`T_{A_L}`) = `sign_{ι⁻¹Q}(T_A)`; the relative algebraic closure of F in R_L is named as F's real closure, with an inline proof. Added the ℝ(t)/ℝ negative control. §0.3 (restricted to algebraic L/F) and the new §7.5 were already correct.

## R04 (P1) — applied

§0.10 step 2 "cannot cancel unless both reductions vanish" → a valuation case split: a unit coordinate in x′ gives a zero of q̄₁; otherwise x′ = πy′, divide by π, and x″ gives a zero of q̄₂. Hence at least one residue form is isotropic; the iff stands. Added the Check ⟨1,−1⟩ ⊥ t⟨1⟩: isotropy (true, false).

## R05 (P1) — applied

§1.2 step 3 "Kummer class has Bockstein its cycle class" → κ(M) = cl(M) mod n, so βκ(M) = 0 and Pic/n lands in H²(ℤ(1))/n; dividing the coefficient sequence by that image gives the topological Brauer sequence. The degree-one statement stays in §1.3. Added the ℙ¹_ℂ, O(1), n = 2 Check: κ = 1, β = 0, c₁ = 1.

## R06 (P2) — applied

§3.2: X̄, T̄, T are projective over S; X and 𝒯 → B are projective "if S is projective", which also makes H⁰(S, L²(R)) finite-dimensional (B19 §3.1, p. 76). Consumers §3.5 and §3.6 now assume S projective. Check added: 𝔸², L = O, R = D = ∅, s = 1 gives T = 𝔸² ⊔ 𝔸², against ℙ².

## R07 (P2) — applied

§6.10 now defines λ_van = λ − ½p*p_*λ, with p_*λ_van = 0, λ_van a real G-invariant (1,1) class, and ∇λ_van = ∇λ (p*p_*λ is flat). §6.13 step 5 applies §6.9 to λ_van; the §6.9 Check names it. Conic Checks in §§6.10 and 6.13: p_*λ = 2h, p_*λ_van = 2h − 2h = 0.

## R08 (P3) — applied

§6.12 "R = ∅: normalisation automatic" → ordinary transport, but the normalisation is kept; ℙ¹×ℙ¹ Check: β = cl O(1,0) reduces to (1,0) ≠ 0. §8.3 "α = 0 ⇒ η = ζ = 0" → this needs α̃ = 0, and α̃ = κ(M′) takes η = cl M′; negative control added. Same fix in the §4.6 Check.

## R09 (P2) — applied

This roadmap precedes QuadraticFormInvariantsPartII in the merge order (lines 229 and 391), so it owns §0.7. Scope records the single owner. "Downstream consumers" now names that roadmap's §§5.1, 5.4–5.6 as imports of §0.7, keeps its §§5.3 and 5.7 there, and records no reverse edge. Its own text is outside this package (see notes).

## R10 (P2) — applied

§0.9 evaluation via §1.1 → via Br(`O_{C,x}`) ⊂ Br(F) (SchemeAndStackFoundations §2.22, `brauer_regular_injectivity`). Layer 7 renumbered: old §7.7 → §7.5, §7.5 → §7.6, §7.6 → §7.7, all references updated (Suggested.lean too). "Θ₀ ⊂ V" moved from §8.1 into §8.2, which removes the 8.1↔8.2 cycle.

## R11 (P2) — applied differently

The mixed case is proved, not kept as an open target. §4.4: [ζ]₁|_Ψ = a₁ + a₀∪[e]₁ with [e]₁ = cl_R(L(R)). §§4.5 and 4.8 hold given φ_Ψ ∈ Pic(S) with cl_R(φ_Ψ)|_Ψ = a₀∪cl_R(L(R)). §6.13 is general Proposition 6.6: A₀ a square (§5.9) gives cl_R(L(R)) = 0, so φ_Ψ = O_S. Two-component test: (0, e₁). E3 updated.

## R12 (P2) — disputed

The Layer 4 Dependencies (Layers 0, 1, 3) and Layer 5 Dependencies (Layers 2, 3) make the pair independent, so no order is forced. The README does not say it follows B19, and both layers are named by their mathematics. The reviewer's own test ("both receive from earlier layers and both supply the synthesis") holds equally in the current order, so it does not discriminate. The current order also keeps suppliers next to consumers: §§3.5–3.6 feed §§4.3, 4.5, 4.7, and §5.8 feeds §6.10. No edit.

## R13 (P3) — applied

Confirmed at EKM lines 8820–8833 (§36, printed p. 161) and BEC05 lines 75–76 (§2, printed p. 3). §0.6: "EKM §37, p. 165; BEC05 §2, p. 2" → "EKM §36, p. 161; BEC05 §2, p. 3". Lean docstring: "EKM §37" → "EKM §36, p. 161". Manifest locators: EKM adds §36 (p. 161); BEC05 becomes "§2 (p. 3); §3; Theorem 3.1".

## R14 (P3) — applied

Nine repeated Checks deleted: §1.1 axes, §1.4 Hamilton, §2.4 zero lift and class shift, §5.2 graph meeting, §6.1 trivial line, §6.7 sign condition, §7.9 point (i, 0), §9.13 components. §0.5 gains an API list and Checks Z(0) = ∅ and ℝ(t)/ℝ; §0.7 an API list and the ℂ Check. A recount gives at least three Checks per definition.

## R15 (P3) — applied

§9.12 "not from an unaccepted K3 roadmap" → "The K3 property is proved from the equation: a double plane branched along a sextic with only ADE singularities has rational double points, and its minimal resolution has trivial canonical bundle and H¹(O) = 0." No other approval-status wording remains.

## R16 (P2) — applied

§0.7 step 1 now has three branches: F algebraically closed, any i (N > r·d^i ≥ r, height bound); d = 1, linear algebra; normic forms only for F not algebraically closed and d ≥ 2. The EKM Theorem 97.2 proof gap is noted. Check added: ℂ as C₁, r = d = 2, N = 5.

## Checks

- `lake env lean packages/RealSurfacePeriodIndex/Suggested.lean`, run from the content checkout after all edits: exit 0. The only output is eight "declaration uses `sorry`" warnings, at lines 80, 89, 101, 111, 122, 132, 140 and 152. The three imported Tau Ceti object files were present.
- `#check @name` for all nine declarations, in one scratch copy: elaborated with exit 0. The only changed type is `HasZeroTotalSignature`, which now carries `[FiniteDimensional K V]`. The other eight are unchanged, and each matches its README statement (§§2.9, 2.10, 7.4, 7.6, 7.8, 7.10, 7.11, 7.13).
- A scratch `#check` of the newly cited pinned names (`sigPos`, `sigNeg`, `QuadraticMap.Equivalent.sigPos_eq`/`sigNeg_eq`, `QuadraticForm.sigPos_of_equiv_weightedSumSquares`, `Subsemiring.IsOrdering`, the four `TauCeti.RegularFormClass`/`TauCeti.signature_formClass` names, `eq_iff_rank_eq_and_signature_eq`, `Subsemiring.IsPreordering.exists_le_isOrdering`) elaborated with exit 0. It also showed the deprecation of `RingPreordering.IsOrdering`. `Subsemiring.IsOrdering.comap` and `TauCeti.RealClosure.exists_realClosure` were read in the pinned source (namespaces `Subsemiring` and `TauCeti.RealClosure`); their object files are not built, so they were not elaborated.
- Dependency gate output: `depcheck: 236 roadmaps, 2145 edges, 0 problem(s)`. There are no UPWARD, CYCLE or moved lines.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. Names outside TauCetiRoadmap were checked by hand as above.
- Mechanical scans: no LaTeX delimiters and no TeX subscript or superscript braces (`_{…}`, `^{…}`) outside code spans, no machine path, no empty Needs, no "unaccepted". The word "removed" was reworded in §6.13.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §0.4 native signature at P | ℝ: ⟨1,1⟩, ⟨1,−1⟩, ⟨−1,−1⟩; ℝ(t): ⟨1,−t⟩; ℚ(√2), √2<0: ⟨√2⟩ | 2, 0, −2; 0 at t>0, 2 at t<0; −1 in F_P and in its real closure | agrees with `sigPos − sigNeg` |
| §0.4 restriction formula | ℝ ⊂ ℝ(t), ⟨1,1⟩ | 2 at pt; 2 at every Q ∈ `X_{ℝ(t)}` | holds for transcendental L; no real closure of L used |
| §0.5 restriction | ℍ over ℝ, L = ℝ(t) | sign of T_ℍ = 2⟨1,−1,−1,−1⟩: −2 at pt and at every Q; Z(ℍ_L) = X_L = res⁻¹(pt) | consistent; trdeg_ℝ R_L = 1 ≠ 0 shows old claim false |
| §0.5 API | β = 0, A = M_d | sign T = d everywhere, Z = ∅; Z(β+β′) = Z(β) Δ Z(β′) via Br(R) ≅ ℤ/2 | added |
| §0.5 relative closure | ℝ ⊂ R_L, L = ℝ(t) | R_F = real algebraic closure of ℝ in R_L = ℝ; odd-degree roots and √ of positives stay | real closed, algebraic |
| §0.7 branch 1 | ℂ as C₁, r=2, d=2, N=5 | 5 > 4 ≥ 2; height ≤ 2 < 5 → zero; no normic form | first branch applies |
| §0.7 API C₀ ⇔ alg. closed | f = X² + 1 over ℝ | Y²·f(X/Y) = X² + Y², 2 > 1 vars, no real zero → ℝ not C₀ | correct |
| §0.7 API monotone | d = 2, i = 1, j = 2 | 2¹ = 2 ≤ 4 = 2² | correct |
| §0.9 local evaluation | (−1, t) on 𝔸¹_ℝ at x = −1 | unramified at x, image (−1,−1) ≠ 0 | no Layer 1 input |
| §0.10 step 2 | ⟨1,−1⟩ ⊥ t⟨1⟩ over ℝ((t)), x = (1,1,0) | x′ = (1,1) unit → q̄₁(1,1) = 0; q̄₂ = ⟨1⟩ anisotropic | one residue isotropic, not both |
| §0.10 step 2, second case | ⟨1⟩ ⊥ t⟨−1⟩ over ℝ((t)) | x′ unit forces x′² = t x″², val parity contradiction; residues ⟨1⟩, ⟨−1⟩ anisotropic; q anisotropic | consistent |
| §1.2 step 3 | ℙ¹_ℂ, O(1), n = 2 | κ = 1 ∈ H²(ℤ/2), β(κ) = 0 ∈ H³ = 0, c₁ = 1 ↦ 1 mod 2 | degree corrected |
| §1.2 sequence | Spec ℝ, n = 2 | H²_G(ℤ(1))/⟨2,cl Pic⟩ = 0, H³_G(ℤ(1))[2] = ℤ/2 = Br(ℝ)[2] | unchanged |
| §3.2 projectivity | S = 𝔸², L = O, R = D = ∅, s = 1; S = ℙ² | T = 𝔸² ⊔ 𝔸² projective over S, not proper; dim H⁰(𝔸², O) = ∞; ℙ²: X projective | hypothesis added |
| §3.5 for non-proper S | S = 𝔸², i = 4 | H⁴(S(ℂ)) = 0 ≠ `ℤ^{components}` | S projective added |
| §4.4 general formula | Ψ = Ψ₀ ⊔ Ψ₁, a₀ = (0,1), a₁ = 0, [e]₁ = (e₀,e₁) | [ζ]₁ = (0, e₁); printed (e₀,e₁); t=0: 0; t=1: (e₀,e₁) | general formula |
| §4.4 [e]₁ = cl_R(M) | circle γ ⊂ Ψ, M Möbius, b < 0 | roots ±i·m swap once round γ; [e]₁(γ) = 1 = w₁(M\|_γ) | consistent |
| §4.5 hypothesis | constant t = 0, 1; mixed (0,1) with φ_Ψ = M | φ_Ψ = O, M; residue [δ]₁ = `(cl_R(M)\|_{Ψ₀}, 0)` | hypothesis is exactly what step 3 needs |
| §4.5 step 3 sign | relation g(δ′) + ζ∪ω + g(cl(φ_Ψ)∪ω) = 0 mod 2 | [δ′]₁ = a₀∪cl_R(M) + cl_R(φ_Ψ) = 0 | checked |
| §4.8 step 4 | θ = θ₁ + 2μ + 2φ_Ψ + 2ν | p_*(β−2γ) = 2δ + cl θ₁ − 2(δ − cl μ − cl φ_Ψ − cl ν) = cl θ | checked |
| §4.8 [η]₁ | constant local model on a circle in Ψ: H²_G(γ,ℤ(1)) = H¹(γ), H²_G(γ,Z̃(1)) = H⁰(γ,𝔽₂) | α̃ = (0,[η]₁) − (z, z[e]₁) ⇒ a₀ = z, [η]₁ = a₁ + a₀[e]₁ | matches §4.4 |
| §5.9 square A₀ | ℙ²_ℝ, R a line, A₀ = O(2) vs O(1) | H¹(ℙ¹,O(2)) = 0; cl_R(N) = 2h = 0 vs h ≠ 0 | allowed, Check added |
| §6.13 cl_R(M) | M = L(R) = A^l ⊗ N, l even, cl_R(N) = 0 | cl_R(M) = l·cl_R(A) + 0 = 0 | φ_Ψ = O_S |
| §6.10/6.13 λ_van | S = ℙ², A = O(1), l = 2 (conic) | p_*λ = 2h; p_*p*h = 2h; p_*λ_van = 0; ∇(p*h) = 0 | λ_van in H_van |
| §6.12 normalisation | ℙ¹×ℙ¹ → ℙ², α = α̃ = 0, β = cl O(1,0) | β mod 2 = (1,0) ≠ 0 | normalisation needed |
| §8.3 zero lift | ℙ¹×ℙ¹, α = 0, n = 2, α̃ = κ O(1,0) | η=ζ=0 ⇒ 0 ≠ (1,0); η = cl O(1,0) ⇒ (1,0) | Check corrected |
| §8.2 Θ₀ ⊂ V | n = 2, simple branch: m = 1 odd | fibre size n − m = 1, odd ⇒ real point ⇒ excluded from Θ | moved, no cycle |
| §7.5→7.6 order | edges 7.6 → 7.5, 7.8 → 7.5, 7.6 | all point backwards | no forward edge |
| HasZeroTotalSignature | V = ℕ →₀ ℝ (now excluded by binder); H, ⟨1,1⟩ over ℝ | H: 2·1 = 2 ✓; ⟨1,1⟩: max isotropic 0, 2·0 ≠ 2 ✗ | binder added |

## Gate failures

- tex=4: four TeX-style subscripts stood outside code spans in README.md, three in the mixed-evaluation Check of §4.5 and one in the Ψ = Θ ⊔ Ψ′ example. Each is now a code span, matching the neighbouring `cl_R(M)|_{S*(ℝ)}`: `(cl_R(M)|_{Ψ₀}, 0)`, `cl_R(M)|_{Ψ₀}`, `(0, cl_R(M)|_{Ψ₁})` and `cl_R(N)|_{Ψ′}`. The mathematics is unchanged. A scan of README.md and Suggested.lean for `_{`, `^{`, a backslash command and `$` outside code spans now finds nothing.

## Notes for the maintainer

- QuadraticFormInvariantsPartII (an open roadmap, later in the merge order) still says, at its head (README :116 and :2026), that it owns Tsen–Lang (its §5.6) and that this roadmap consumes it. This package now records the single owner (§0.7) and that roadmap as consumer. Its §§5.1, 5.4–5.6 should import §0.7 instead of stating them; its §§5.3 and 5.7 stay. That edit belongs to that roadmap.
- Section numbers changed inside Layer 7: the former §7.5 is §7.6, the former §7.6 is §7.7, and the former §7.7 is §7.5. No roadmap on main or at an open head cites RealSurfacePeriodIndex by section (`roadmaps grep` finds only "Layer PI.0" and "5.6" in QuadraticFormInvariantsPartII), so no old→new table was added. The Suggested.lean docstrings were updated.
- No Lean name of `Suggested.lean` changed; only the binder of `HasZeroTotalSignature` did.
- Ownership against open pull requests was checked for the objects touched this round (signatures, orderings, real closures, Tsen–Lang/C_i) with `roadmaps grep`; the only second owner found is the QuadraticFormInvariantsPartII case above.
- No text was missing: no `needs-references.toml` was written, and no settled `uncertified` source was requested.
- Source issue for the record (EKM, not B19, so not entered in the README's B19 corrections list): the proof of EKM Theorem 97.2 (lines 20229–20233) passes to normic forms after excluding i = 0 and d = 1, which leaves out algebraically closed F with i > 0. §0.7 adds that branch.
