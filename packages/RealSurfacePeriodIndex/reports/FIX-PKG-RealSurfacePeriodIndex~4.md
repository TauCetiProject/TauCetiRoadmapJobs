# FIX-PKG-RealSurfacePeriodIndex~4

Repair round for the five findings of REV-PKG-RealSurfacePeriodIndex~3. Files edited:
`packages/RealSurfacePeriodIndex/README.md` and `packages/RealSurfacePeriodIndex/sources.toml`.
`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged. No new supplier gap was needed;
the three declared gaps stand. Section numbers below are the new ones, unless marked "old".

## F01 (P2) — applied differently

Old §4.5/§4.8 (now §5.5/§5.8), which added a Picard-realization hypothesis → exact criteria under the source's own hypotheses. §5.5: τ = 0 iff c_Ψ = ([α̃]₀ ∪ cl_R(L(R)))|_Ψ lies in J|_Ψ, J the image of H²_G(S(ℂ), ℤ(1)) under ξ ↦ [ξ]₁. §5.8: the adjustment exists iff c_Ψ ∈ cl_R(Pic(S))|_Ψ. Real Enriques counterexample added. Scope, E3, Layer 5 intro/Examples and §6.13 updated.

Why this differs from the requested repair. The requested repair was a general target supplying the missing realization. That realization is false in general, so no such target can be planned. The iff statements are the general fixed-cover theorems.

- Proof of the iff. τ = N(γ). τ = 0 iff γ comes from H³_G(T, ℤ). Because p_* is an isomorphism on H³ of the complex loci (§3.5), this holds iff δ ∈ p_*H³_G(T, ℤ) + H²_G(S, ℤ(1)) ∪ ω. By §3.6 (i = 3) and [ξ ∪ ω]₁ = [ξ]₁, that holds iff [δ]₁ ∈ I + J. The source's own chase (B19 lines 813–861) gives [δ − η ∪ ω]₁|_Ψ = [ζ]₁|_Ψ = c_Ψ. I restricts to 0 on Ψ, by Assumption 4.1 (i) and B19 lines 898–900. Assumption 4.1 (ii) gives the converse.
- The counterexample. Take S = X/ι with X: x_j² = Σ B_jl y_l², B = ((1,1,1),(1,2,4),(1,3,9)). All 19 minors of B are nonzero (computed), so X is a smooth K3 and ι(x,y) = (x,−y) is free. Then S(ℝ) is four copies of ℝℙ² and one half is empty. J = w₁^⊥ = {Σ c_i h_i : Σ c_i = 0} (MVH98 line 500, Proposition 4.2).
  - B19 Proposition 8.1 (line 1703) gives α̃ = (1 on N₁ ⊔ N₂, 0 elsewhere; [α̃]₁ = 0), because deg(w₁ ∪ (h₁ + h₂)) = 0. The unique δ has [δ]₁ = w₁ (B19 lines 1783–1784).
  - Take cl_R(L) = h₁ + h₃, L ample, and s < 0 on S(ℝ). Then T(ℝ) = ∅ and all of B19's hypotheses hold with Ψ = S(ℝ), but c_Ψ = h₁ ∉ J, so τ ≠ 0.
- The reviewer's two-component test now reads c_Ψ = (0, e₁): τ = 0 iff (0, e₁) ∈ J|_Ψ.
- Proposition 6.6 (§6.13) is unaffected: there cl_R(L(R)) = 0, so c_Ψ = 0.
- Other places with the same pattern: the Scope paragraph and the Ownership sentence (they no longer claim Propositions 4.4/4.5 in stated generality), E3 (reclassified "error"), the Layer 5 intro and Examples, §5.6 (it now needs only Assumptions 3.1 and 4.1 and a lift β), and the preamble and step 4 of §6.13.

## F02 (P1) — applied

§5.2 "`α_{ℝ(T)}` ∈ Br(T)[2] ⊂ Br(ℝ(T))[2]" → p*α on T_U extends uniquely to α_T ∈ Br(T)[2]; on each integral component T_i its generic restriction lies in Br(ℝ(T_i))[2]. A split-cover Check was added ((1,0)(0,1) = 0). §5.3 now proves T integral under Assumption 3.1. The Layer 5 Example keeps ampleness and adds the complex-Enriques split cover, where τ = (τ_E, τ_E) ≠ 0.

The witness was verified. E viewed over ℝ has E(ℝ) = ∅, and G permutes E(ℂ) and Ē(ℂ) freely, so H³_G = H³(E(ℂ), ℤ). H³(E(ℂ), ℤ)[2] = ℤ/2 (EnriquesSurfaces §1.4), and Pic = H² (§1.3) makes Br(E)[2] → H³[2] injective. Later uses of `α_{ℝ(T)}` (§§5.3–5.8, 6.13, 7.2) are all under Assumption 3.1 or for connected covers. §8.1 assumes T connected. The general finite-cover construction (§3.1) was not made integral.

## F03 (P3) — applied

§6.10 Check: "the integral classes of the vanishing part need not form a direct summand" → those classes are saturated and do split off, but p*H²(S, ℤ) need not be their complement. Example: ℙ¹ × ℙ¹ → ℙ², with p*h = (1,1), p_*(a,b) = a + b and vanishing lattice ℤ(1,−1). The complement ℤ(0,1) has determinant 1; ℤ(1,1) gives determinant −2, index 2. No other "direct summand" claim about integral lattices appears.

## F04 (P2) — not actionable in this package: the duplicate C_i/Tsen–Lang targets and the reverse supply claim are in QuadraticFormInvariantsPartII's README at its open head, which only that roadmap's revision can change

The package side is already correct. §0.7 owns the C_i/Tsen–Lang interface. ORDER.txt places this roadmap at line 229 and QuadraticFormInvariantsPartII at line 391. "Downstream consumers" records the single edge RealSurfacePeriodIndex → QuadraticFormInvariantsPartII, and the README names no upward supplier.

`roadmaps grep` at that head still shows its README :116 ("takes the Tsen–Lang theorem of 5.6 from this roadmap", citing a nonexistent "Layer PI.0") and :2026. To finish the transfer, that roadmap must:
- replace its §§5.1, 5.4–5.6 (including `IsCi.of_trdeg`) by citations of RealSurfacePeriodIndex §0.7;
- delete the reverse claim;
- keep its §§5.3 and 5.7.

Last round marked this finding "applied". That label was wrong for the cross-roadmap part, which is outside this package.

## F05 (P2) — applied

The two independent branches were reordered. The Noether–Lefschetz branch (old Layer 5) is now Layer 4, right after the covers. The single-cover obstruction branch (old Layer 4) is now Layer 5, and Layer 6 joins them. All 101 internal references and the 17 headings were renumbered by rule, and every heading title was checked to match. "How to read the build" now gives the reason for the order. Old→new: §4.k→§5.k (k = 1–8), §5.k→§4.k (k = 1–9).

There is a mathematical reason as well as the rule. Old Layer 4's Checks used old §§5.1 and 5.9 (the square auxiliary bundle), so they were forward references. They are now backward.

- No old→new table was put in the README. `roadmaps grep RealSurfacePeriodIndex` (main and all 439 open heads) finds no roadmap citing this roadmap's Layers 4/5 or §§4.x/5.x. The only citations are QuadraticFormInvariantsPartII's "Layer PI.0" and its own "5.6". The house rule keeps former numbering out of a new roadmap unless a citer needs it.
- The design node ids in `design/plan.json` (PI.4/…, PI.5/…) are identifiers, not README numbers. The gap entries' `neededBy` were left as they are.
- The `sources.toml` `cited_for` lists follow the swap: BEN18, SER06 and BRE97 point to Layer 4; BW20 and MVH98 now include Layer 5.

## Checks

- `lake env lean packages/RealSurfacePeriodIndex/Suggested.lean`, run from the content checkout: exit 0. The only output is eight "declaration uses `sorry`" warnings, at lines 80, 89, 101, 111, 122, 132, 140 and 152. The file is unchanged this round.
- `#check @name` for all nine declarations in one scratch copy: exit 0. Every elaborated type keeps its binders: `HasZeroTotalSignature` keeps `[Invertible 2]` and `[FiniteDimensional K V]`; the theorems keep `EssFiniteType`, `trdeg`, `¬IsSemireal`, the real-closure hypothesis and the finite-dimension and rank bounds. Each matches its README statement (§§0.6, 2.9, 2.10, 7.4, 7.6, 7.8, 7.10, 7.11, 7.13). No change.
- Dependency gate (`gate --depcheck … --movable`), complete output:

      depcheck: 236 roadmaps, 2145 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Mechanical scans:
  - No TeX braces, LaTeX delimiters or `$` outside code spans. `A^{2k}` was written as `A²ᵏ`.
  - No machine path or process words.
  - `sources.toml` parses.
  - The forward-reference scan of Layers 4–5 finds no Needs edge 4→5. Two prose mentions of later sections remain: a Check pointing to §6.13, and "verification in §6.8".

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §5.5 iff, constant t = 1 (Ψ = Θ) | c_Ψ = cl_R(M)\|_Ψ | = [cl(M)]₁\|_Ψ ∈ J | τ = 0, agrees with B19 |
| §5.5 iff, t = 0 (4 \| n) | c_Ψ = 0 | 0 ∈ J | τ = 0 |
| §5.5 iff, S(ℝ) = ∅ | Ψ = ∅ | H¹(∅) = 0 | τ = 0 under 3.1 |
| §5.5 converse, I\|_Ψ | T(ℝ) = ∅ | I = p_*H¹(∅) = 0 | restriction 0 |
| Enriques X: smoothness | 19 minors of B (1×1, 2×2, det) | 2×2: 1,3,2,2,8,6,1,5,6; det 2; no zero 3×3 minor of [I \| −B] | X smooth K3 |
| ι free | y = 0 ⇒ x = 0; x = 0 ⇒ By² = 0 ⇒ y = 0 (det B = 2) | no fixed point | Enriques |
| S(ℝ) | 2³ sign vectors / ±1; second structure x² = −By′² | 4 spheres, each ι-antipodal → 4 ℝℙ²; other half ∅ | h_i² = 1, w₁ = Σ h_i, deg w₁² = 4 = 0 |
| existence of α̃ | (a₀, a₁) = (1_{N₁⊔N₂}, 0); δ with [δ]₁ = w₁ | deg(w₁·(h₁+h₂)) = 1+1 = 0 | in image (B19 Prop. 8.1) |
| failure of criterion | cl_R(L) = h₁ + h₃ (Σc = 2 = 0 ∈ J) | c_Ψ = 1_{N₁⊔N₂}(h₁+h₃) = h₁, Σc = 1 | ∉ J ⇒ τ ≠ 0 |
| control | cl_R(L) = h₁ + h₂ | c_Ψ = h₁ + h₂, Σc = 0 | ∈ J = cl_R Pic ⇒ τ = 0 and §5.8 (c) |
| Assumption 4.1 there | Ψ = S(ℝ), s < 0, T(ℝ) = ∅ | ker(H¹ → H¹(Ψ)) = 0; H²(T(ℝ)) = 0 | (i)–(iii) hold; L ample ⇒ 3.1 |
| §5.8 (b) ⇒ (c) | 2(δ − p_*γ) = cl(θ − θ₁) | torsion-free coker ⇒ δ − p_*γ = cl θ₂; c_Ψ = cl_R(θ₂ − μ)\|_Ψ | uses existing gap only |
| §5.8 vs §5.5 when h²(O) = 0 | Enriques: J = cl_R Pic | (c) ⇔ τ = 0 | consistent |
| §5.2 split cover | R = D = ∅, L = O, s = 1 | T = S ⊔ S; α_T = (α, α); (1,0)(0,1) = 0 in ℝ(S)² | componentwise statement |
| §5.3 integrality | S(ℂ) connected; S(ℂ) = E ⊔ Ē | b₀(T(ℂ)) = b₀(S(ℂ)) = 1, resp. 2 exchanged by σ | T connected, smooth ⇒ integral |
| Layer 5 Example | E/ℝ, L = O split | H³_G = H³(E(ℂ)) ⊃ ℤ/2; τ = (1, 1) ≠ (0, 0) | ampleness needed |
| §6.10 lattice | ℙ¹ × ℙ¹ → ℙ² | p*h = (1,1), p_*(a,b) = a+b, p_*p*h = 2h; ker = ℤ(1,−1); det((1,−1),(0,1)) = 1; det((1,1),(1,−1)) = −2 | Check replaced |
| §4.9 Check (reworded) | A₀ = O(2) vs O(1) on ℙ², l = 2 | cl_R(A^l ⊗ N) = 2h + 0 = 0 vs 2h + h = h | square needed |
| Layer order | Needs of Layer 4 (old 5) vs Layer 5 | edges: L4 ← L2, L3; L5 ← L0, L1, L3; L6 ← L4, L5 | no 4↔5 edge; topological order kept |
| heading map | 106 headings | title(old 4.k) = title(new 5.k), title(old 5.k) = title(new 4.k) | 0 mismatches |

## Gate failures

None were listed for this round.

## Notes for the maintainer

- **Consequence for QuadraticFormInvariantsPartII (open roadmap).** Its README (:116, :2026, §§5.1, 5.4–5.6, `IsCi.of_trdeg` at :1621) still claims Tsen–Lang and says this roadmap consumes it. That roadmap must import §0.7 instead (F04). It also cites "RealSurfacePeriodIndex Layer PI.0"; the section is Layer 0.
- **Renumbering.** Layers 4 and 5 swapped places. No Lean name changed; `Suggested.lean` cites only Layers 0, 2 and 7. No roadmap on main or at an open head cites the moved ids.
- **Source issue for the record.** B19 Proposition 4.4 is false as printed for a given cover with mixed evaluation (E3, now "error"). The main theorems are unaffected.
- **Ownership against open pull requests.** I checked this for the objects touched this round with `roadmaps grep`: the Tsen–Lang/C_i interface, and the fixed-cover obstruction criterion, which is specific to B19's covers. The only second owner is the QuadraticFormInvariantsPartII case above.
- **Sources.** No source text was missing. No `needs-references.toml` was written, and no settled `uncertified` source was requested. Every new locator is in certified cached texts: B19 lines 748–903, 1703–1742 and 1782–1790; MVH98 lines 500–540.
- **Untrusted text.** No instruction-like or suspicious text was found in the review or in the fetched files.
