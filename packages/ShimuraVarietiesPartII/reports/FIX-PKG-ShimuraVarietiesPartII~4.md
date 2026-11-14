# FIX-PKG-ShimuraVarietiesPartII~4: repair of the package review, round 3

Review settled: `REV-PKG-ShimuraVarietiesPartII~3` (two findings, both P2). Both were verified against the cached sources and the supplier roadmap, and both are applied. Files changed: `packages/ShimuraVarietiesPartII/README.md` and `packages/ShimuraVarietiesPartII/design/plan.json` (top-level `gaps` list only). `Suggested.lean`, `metadata.toml` and `sources.toml` are unchanged.

## F01 (P2) — applied

Contract `gap:rg3-cyclic-torus-and-neatness`, in the README contract and in its `gaps` entry: "for every n divisible by e" → "for every positive integer n divisible by e … (n=0 is excluded: γ^0=1 has closure 1 and centralizer G)". In §4.9, "a sufficiently divisible extension F_(q^m)" now reads "m positive and sufficiently divisible". Two new §4.9 Checks: an exponent-zero negative control and an e=2 control. Pattern: `gap:noot-coarse-comparison` now says "sufficiently divisible positive exponent" (README and `gaps`).

Evidence: HT line 1013 takes m∈Z≥1. With exponent zero the claim is false: γ=diag(2,4) has S=S°={diag(t,t²)}, e=1. At n=0 the closure is {1} (dimension 0, not 1) and the centralizer is GL₂ (dimension 4, not 2). For n≥1 the argument goes through. ⟨γⁿ⟩ has finite index in ⟨γ⟩, so its closure has finite index in S and identity component S°. When e∣n, γⁿ∈S°, so the closure is exactly S°.

## F02 (P2) — applied

§4.5 proof sketch: "replaces T by a rational conjugate T′" → "replaces T by the Q-defined torus T′=gTg⁻¹ for some g∈G_sc(Q̄), a geometric conjugate that need not be G(Q)-conjugate to T". The local step now reads "μ_(h_x)⁻¹=Int(g_p)(μ_T) for g_p∈G_sc(Q_p) carrying T_Qp onto T′_Qp". The ReductiveGroupsPartIII §2.5 contract (README) is restated the same way. A §4.5 remark adds the SL₂ boundary example.

Evidence: HT lines 675–683 take g∈G_sc(Q̄) and replace T by int(g⁻¹)(T_Q̄), "defined over Q". ReductiveGroupsPartIII §2.5 (i)–(iii), at the head this brief supplies, likewise gives g∈G_sc(Q̄), T′ defined over Q, and g_p=gt_p⁻¹∈G_sc(Q_p). Nothing gives a G(Q)-conjugator. Counterexample to rational conjugacy, recomputed below. The conclusion of §4.5 is unchanged, because the class in B(T′) still maps to [b]: Int(g_p) with g_p∈G(Q_p) acts trivially on B(G_Qp).

## Checks run

- `lake env lean packages/ShimuraVarietiesPartII/Suggested.lean` (run from the content checkout): **exit 0, no output**. No `TauCeti.*` import, so nothing needed building. The file is unchanged and declares nothing (0 `theorem`/`def`/`structure`/`instance`/`example`).
- Mechanical `#check @name` comparison: there are no declared names, so there is nothing to compare and nothing changed. No README target that maps to a Lean statement was changed.
- Dependency gate (`gate --depcheck … --movable`), output exactly:

  ```text
  depcheck: 236 roadmaps, 2156 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: "Lean names found nowhere: None."
- `design/plan.json`: valid JSON after the edit. A comparison with HEAD shows that only the top-level key `gaps` differs, in the `needs` strings of `rg3-cyclic-torus-and-neatness` and `noot-coarse-comparison`. The README still names the same slugs under "Exact supplier contracts" (20 slugs, unchanged).

## Adversarial pass on the changed text

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| gap:rg3-cyclic-torus-and-neatness (repaired) | γ=diag(2,4)∈GL₂(Q), n=0,1,2 | 2 is not torsion, so closure of ⟨2ⁿ⟩ is G_m for n≥1. S={diag(t,t²)}, dim 1, e=1. n=0: closure {1}, dim 0, Z=GL₂ (dim 4). n≥1: closure S°, Z=diagonal torus (dim 2). | Positivity is required; added. |
| same | γ=diag(1,−1) | S={1,γ}, e=2, S°=1. n=1: Z=diagonal torus (dim 2), and 1 is not divisible by 2. n=2: γ²=1, Z=GL₂=Z(S°) (dim 4). | Divisibility by e is kept. |
| same | γ=1 | S=1, e=1. Every n≥1: closure 1=S°, Z=G. | Holds. |
| same, non-split F | γ=(3+4i)/5 in the norm-one torus of Q(i) | Infinite order, so S=T, which is connected (e=1) and anisotropic. Every n≥1 gives closure T. | Holds over a non-split F; the statement needs no splitting. |
| §4.9 new Check 1 | E: y²=x³+x/F₅, ℓ≠5 | Counts 1,0,1,1,0 plus ∞ give 4, trace 2. γ_ℓ eigenvalues (1∓2i)/5. 1+2i and 1−2i are non-associate primes of Z[i] (unit multiples of 1+2i are 1+2i, −2+i, −1−2i, 2−i), so X*(S)=Z² and e=1. m≥1: Z(γ_ℓ^m)=Q(i)^×-torus, dim 2. m=0: GL₂, dim 4. | Check added. |
| §4.9 new Check 2 | E: y²=x³−x/F₃ | Points at x=0,1,2 are 1 each, plus ∞, so 4 and trace 0. Char. poly T²+3, π²=−3. Eigenvalues of γ_ℓ are ±1/√−3. The relation lattice is Z(2,−2), so X*(S)=Z⊕Z/2 and e=2. S°=scalars. Z(γ_ℓ)=Q(√−3)^×-torus (dim 2); Z(γ_ℓ²)=GL₂ (dim 4). | Check added. It agrees with the existing §4.9 Check that the finite-period group enlarges over F₂₅. |
| §4.9 construction ("m positive and sufficiently divisible") | m=1 versus m=0 | F_(q^m) is a field extension only for m≥1. HT line 1013 has m∈Z≥1. | Consistent with the HT locator. |
| gap:noot-coarse-comparison (pattern) | exponent 0 | γ^0=1: every Conj′ class is trivial and all centralizers equal G. The statement is vacuously true but gives no dimension information for §4.13. | Positive exponent made explicit. The truth of the contract is unchanged. |
| §4.5 sketch (repaired) | SL₂/Q, T=SO(x²+y²), d=diag(3,1), T′=dTd⁻¹ | g=d/√3∈SL₂(Q̄) with det 1, and int(g)=int(d), so T′ is a Q-torus. A conjugator h∈SL₂(Q) would put d⁻¹h in N_GL₂(T)(Q)=Q(i)^×⋊⟨diag(1,−1)⟩, with det 1/3. Those determinants are ±(a²+b²). v₃(a²+b²) is even because 3 is inert in Z[i], while v₃(1/3)=−1. | Not G(Q)-conjugate. The wording is fixed and the example added as a remark. |
| same, local at p | p=5 for the example | 5 splits in Q(i), so N(T)(Q₅) contains a split torus with determinant onto Q₅^×. An element of determinant 1/3 exists, which gives an SL₂(Q₅)-conjugator. | Local G_sc(Q_p)-conjugacy (RG3 §2.5(iii)) holds, as stated. |
| §4.5 cocharacter direction | RG3 §2.5 applied to μ=μ_T⁻¹ with wμ_T⁻¹=μ_(h_y) | §2.5(ii) gives μ_(h′)=Int(g)μ_T⁻¹, so μ_(h_x)⁻¹=Int(g)μ_T. §2.5(iii) gives Int(g_p)μ_T⁻¹=μ_(h′), so μ_(h_x)⁻¹=Int(g_p)μ_T. | The new formula μ_(h_x)⁻¹=Int(g_p)(μ_T) matches the supplier exactly. |
| RG3 §2.5 contract (README line 98) | w=1 | g=1, T′=T (RG3 Check). | The restated contract specializes correctly. |

## Ownership, citations and overlaps

No new target, gap or supplier was introduced. ReductiveGroupsPartIII §§2.5 and 3.5 were re-read at the head the brief supplies (`roadmaps show ReductiveGroupsPartIII`). §2.5 states g∈G_sc(Q̄), T′ defined over Q and g_p∈G_sc(Q_p), which matches the repaired wording. §3.5 still lacks the stable-centralizer statement, so the gap remains needed. The overlap file lists no dropped ids. No citation changed its target.

## Notes for the maintainer

- `packages/ShimuraVarietiesPartII/design/README.md` line 106 still has the old wording "a sufficiently divisible neat Frobenius power" for `gap:noot-coarse-comparison`. That file is outside this job's editable set. The README and the plan's `gaps` entry now say "positive exponent".
- When ReductiveGroupsPartIII adds the stable-centralizer target that `gap:rg3-cyclic-torus-and-neatness` requests, it should quantify over positive multiples of e.
- No Lean names changed, and no name cited by another roadmap changed.
- No text in the review asked for anything outside this job; nothing suspicious to quote.
