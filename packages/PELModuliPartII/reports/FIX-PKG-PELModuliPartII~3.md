# Repair of PELModuliPartII (package, round 3)

Findings resolved: the six findings R01–R06 of `packages/PELModuliPartII/reports/REV-PKG-PELModuliPartII~2.md`. Files changed: `packages/PELModuliPartII/README.md` and `packages/PELModuliPartII/sources.toml`. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged: no Lean statement changes, and no new supplier gap is needed.

## R01 (P1) — applied

Evidence: forgetting the action keeps Lie X (Mih19 line 279; LZ22 line 394). §0.2 Check: "dimension [K:ℚ_p], [K:ℚ_p]² parameters" → "dimension 1, 2[K:ℚ_p]−1". Examples: "(12,6)" → "(12,3)"; "(4,2), four" → "(4,1), three". Conventions, §0.3 and §0.4 now say C changes the group. §0.2 audited: EL ambient, λ imposed through the relative dual (RZ96 Prop. 2.9). Same fix in the Scope clause on IgusaVarieties.

## R02 (P1) — applied differently

Evidence: Mih19 Def. 2.2 requires supersingular X (line 271, footnote at line 304); Thm 3.3 is stated on that stack (lines 527–536). Change: §0.4 "No supersingularity is assumed" → supersingular carrier; μ-ordinary Check → negative control. §7.2 and §7.9 now go through local models (§7.6, §0.6 at K₀=ℚ_p, RZ17 Lemma 8.6); their Needs change from §0.5 to §0.6, §7.6, §6.5. Why not extend C: the sources' global proofs never use it (RSZ21 lines 1421–1494). No statement gains a hypothesis, so a new theorem would only widen scope.

## R03 (P1) — applied

Evidence: LL22 Prop. 2.28(2) and Rem. 2.29 (lines 1121–1128). §3.7 "irreducible components are the V_Λ of type n" → define `V_Λ^ε=V_Λ∩N^ε_red`; the components are the V_Λ^ε with t(Λ)=n, and V_Λ=V_Λ^0⊔V_Λ^1. The full-stratum intersection formula is kept and restricted to each ε. Checks added: ℙ¹⊔ℙ¹ versus ℙ¹; at n=2 a unique vertex lattice. Rank-four example corrected.

## R04 (P2) — applied

Evidence: RSZ21 lines 653–661, 962–968 (nonzero integral a, ker λ₀=A₀[a]). §6.6 "a fractional ideal; polarization of type a" → "`a⊆O_{F⁺}` nonzero; ker λ₀=A₀[a]". ξ-classes made explicit, with an integrality argument; Hypotheses updated. Same convention in §6.7 and the Conventions paragraph (§7.3 already had it). Check added: a=(1/2)ℤ excluded; a=ℤ and a=2ℤ realized.

## R05 (P2) — applied

Evidence: HLSY23 lines 483–484 (generator of the τ-fixed points of the integral M(Y); norm a unit). §5.2 "generator of the fixed line" → "O_L-generator of `M(Y)^{τ=1}`", proved free of rank one since VM=i(u)M. §5.9: similarity for any e, isometry only for an integral generator. Checks added (u·e₀ has norm −u², valuation 1). Needs lines of §5.2 and §5.9 updated.

## R06 (P3) — applied

§6.6 had no API → four API bullets:
- objects, ker λ₀=A₀[a], exact arrows μ₀^∨λ₀′μ₀=λ₀;
- base change and the fppf stack property;
- finite étale with unique deformations;
- open-closed ξ-components.

Checks kept; added R04's control and an arrow test: ι₀(1+√2) pulls λ₀ back to λ₀∘ι₀(3+2√2)≠λ₀. Pattern scan: every other API-less section states a theorem.

## Checks run

- `lake env lean packages/PELModuliPartII/Suggested.lean` (from the content checkout): exit 0, no output. The file has no declarations, so the `#check @name` signature comparison has no inputs, and nothing changed.
- Dependency check: `depcheck: 236 roadmaps, 2145 edges, 0 problem(s)`, exit 0. There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Scratch package gate: every count is 0 except `git=1`, which is expected because the scratch copy is not a git repository. A first run flagged 15 `tex` hits from brace subscripts outside code spans in the new text; I wrapped them in backticks.
- `sources check` on `sources.toml`: 0 problems. Locators were added for RZ96 (Proposition 2.9, Definition 3.18) and RZ17 (Lemma 8.6). `cited_for` now includes §7.2 for RZ17 and RSZ21. No new source key was added, and no text was missing (no `needs-references.toml`).

## Adversarial pass (changed statements)

| Statement | Instances | Computed values (left / right) | Result, change |
|---|---|---|---|
| Conventions, §0.3 API: underlying (height, dimension) | n=1, [K:ℚ_p]=2; n=3, [K:ℚ_p]=2; n=1, [K:ℚ_p]=3 | (4,1), (12,3), (6,1); old claim gave dimension 2, 6, 3 | Dimension n in every case; old values refuted. |
| §0.2 Check: unstructured deformation parameters d(h−d) | same three instances | 3, 27, 5; old claim [K:ℚ_p]²·… gave 4, 36, 9 | Corrected to 2[K:ℚ_p]−1 at n=1. |
| §0.2 new Check: Cartier versus relative dual | rank-one source, K/ℚ_p totally ramified of degree 2 | Cartier dual dimension 4−1=3; relative dual dimension 2−1=1 | A principal relative polarization is not a Cartier isomorphism, so the EL ambient is required. |
| §0.2 route: relative polarization closed | λ principal; exotic λ∘i(u)⁻¹; almost self-dual ϖλ⁻¹ | Each is an isogeny (closed, RZ96 Prop. 2.9) of degree 1, 1, and the q²-cokernel degree (open and closed) | Conditions reproduce ker λ = 0, X[i(u)], and order q² inside X[ϖ]. |
| §0.4: C changes the dimension | K₀=ℚ_p, [K:K₀]=2, n=1 | X: (4,2); C(X): relative (2,1), underlying (4,1) | Dimensions 2 versus 1: C is not forgetful. |
| §0.4: μ-ordinary negative control | K₀=K=ℚ_p, L=ℚ_{p²}, n=2, signature (1,1) | Slopes 0,0,1,1; étale height 2; formal = false | Outside the carrier, as now stated. |
| §0.4: K₀=K identity Check | supersingular, n=1 | Relative height 2 on both sides; C = id | Pass. |
| §0.4 Examples | n=2, f=2 | X (8,4) → C(X) relative (4,2), underlying (8,2) | Pass; supersingular hypothesis added. |
| §7.2/§7.9 local models | n=2, 3, 4 | §0.6 dimension rs=(n−1)·1 = 1, 2, 3; RZ17 Lemma 8.6 dimension n−1 = 1, 2, 3; banal factors 0 | Relative dimension n−1 at every point, ordinary or basic, without C. |
| §3.7 full versus fixed-ε stratum | n=4, t=4; t=2 | V_Λ: 2 components (ℙ¹⊔ℙ¹), V_Λ^ε: 1; V_Λ: 2 points, V_Λ^ε: 1 | Irreducible components are V_Λ^ε. |
| §3.7 n=2 Check | anisotropic V^exo | t(Λ+Λ′) = 2−2[Λ+Λ′:Λ] ≤ 0, so not a vertex lattice; unique Λ; V_Λ has 2 points | Pass; Check rewritten. |
| §3.7 dimension | n=2, 4 | n/2−1 = 0, 1 | Unchanged, pass. |
| §6.6 ideal type | F=ℚ(i): a=(1/2)ℤ, ℤ, 2ℤ | Required Λ^∨ = 2Λ (⊊Λ, impossible), Λ, ½Λ (kernel A₀[2] of order 4) | Integral only. |
| §6.6 arrows | F=ℚ(√2,i), c=1+√2 | N(c)=−1; c²=3+2√2 ≈ 5.83, conjugate ≈ 0.17 > 0; pullback λ₀∘ι₀(c²) ≠ λ₀ | Exact arrows exclude it; a similitude groupoid would not. |
| §6.6 Kottwitz Check over k[ε] | x+εc | char T+εc fixes c | Unchanged, pass. |
| §5.2 fixed lattice | rank one, ramified L/K | VM = uM (colength 1 is unique), τM = M, `M^τ` free of rank 1 | Pass. |
| §5.2/§5.9 norm | e₀; a·e₀ with a ∈ O_L^×; u·e₀ | 1; aā (unit); −u² (K-valuation 1) | Unit normalization only for an integral generator. |
| §5.9 similarity | arbitrary nonzero e | (b x, b y) = h(x,y)(e,e)_Y | Formula kept for every e. |

## Notes for the maintainer

- No section or target id changed, and no Lean name changed. No roadmap on main or in an open pull request cites PELModuliPartII (`roadmaps grep`).
- New ownership: §0.2 now also owns the representability of EL framed functors (RZ96 Def. 3.18/3.21, Thm. 3.25). I searched the open roadmaps and main for EL Rapoport–Zink representability. EndoscopicTransferAndUnitaryTraceComparison has only the specific LT/Dr EL towers, and IgusaVarietiesAndTorsionConcentration §0.27 has the unramified single-lattice PEL case, so this roadmap is the owner. The Scope section records the difference.
- R02 deliberately departs from the review's suggested repair; the reasons are in the R02 section above.
- No suspicious instructions were found in the review or the sources read.
