# Repair of BallQuotientsAndComplexHyperbolicLattices (design, round 4)

This round settles the four findings R01–R04 of `packages/BallQuotientsAndComplexHyperbolicLattices/reports/REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices~3.md`. I checked each one against the sources, the supplier heads and the pins, and all four are correct.

Files edited:
- `packages/BallQuotientsAndComplexHyperbolicLattices/design/README.md`
- `packages/BallQuotientsAndComplexHyperbolicLattices/design/plan.json`
- `packages/BallQuotientsAndComplexHyperbolicLattices/sources.toml`

No other file was touched. No layer, section number or target id changed. Nothing in the review, the supplier READMEs or the sources read as an instruction to me.

## R01 (P1) — applied

Verified: H with rows (0,0,−i), (0,−2,0), (i,0,0) gives zᴴHz = 2(Im v − |u|²) on (1,u,v). R̃ = diag(−1,1,−1) and T̃ = 1 + E₂₀ preserve H, have determinant 1 and entries in ℤ[i]. R fixes (0,iy), and d(x,Tx) = √2·asinh(1/(2y)) = 0.000707106752 at y = 1000.

Old §6.1 (1): "this case contains every point fixed by an elliptic element". New: the finite case is the set of points whose whole Γ_ε(x) is finite; an elliptic fixed point can also be of parabolic or loxodromic type. The R, T example is added as a §6.1 Check.

Pattern:
- The Layer 4 Examples now state the condition "Γ_{ε_n}(x) finite" explicitly and cite the thin elliptic point.
- In the plan, the 6.1 proof sketch is changed and a test `elliptic_parabolic_type` is added.

## R02 (P2) — applied

Verified at the head of the RealSemisimpleLieGroups pull request. Its §5.7 owns:
- U(1,n), SU(1,n) and PU(1,n), with trivial centre, the kernel μ_{n+1} and Ad ≅ Int(𝔰𝔲(1,n));
- K ≅ U(n) and the ball in `Projectivization` with its chart;
- the faithful transitive action and G/K ≅ 𝔹ⁿ;
- the metric g_𝔹 of −i∂∂̄log(1−|w|²), with Killing = 2(n+1)g_𝔹 and uniqueness of invariant metrics;
- the complex sub-balls with their stabilisers, and the local classification.

Old: §§1.1–1.4, 2.2–2.3 and 3.1–3.3 built these objects. New: they consume §5.7 and prove only the comparison (conjugate form, reindexing) and what is added here: the M_{n+1}(ℂ) representation, Siegel/Cayley, action formulas, Cartan parameter, unimodularity, explicit Kähler formulas, Ricci form, rescaled curvature, m = 0, W_{p,T}, and the analytic classification.

Repairing the pattern beyond the listed sections:
- §2.4 takes completeness and geodesics from RealSemisimpleLieGroups §5.3. The Tau Ceti homogeneous-completeness line is dropped from the contract.
- §5.2 takes properness from §5.2 and proves only the converse.
- §5.3 takes the volume/Haar comparison from §5.6. The Mathlib Haar-uniqueness line is dropped from the contract.
- §6.1 takes Cartan's fixed-point theorem from §5.4, which the review asked for.
- The scope, the summary, the "How to read" paragraph, the Layer 1/2/3/5/6 dependencies and the "not in scope" bullet are updated.
- The plan's supplier list now includes RealSemisimpleLieGroups §§5.2, 5.3, 5.4, 5.6, 5.7.

The BaldiUllmo2023 locator in §1.2 is now cited for the matrix quotient only. The representation, its spectrum and the closed-image argument are marked as deductions made here, as the review asked.

Adapter checks added:
- the form here is the complex conjugate of the supplier's: 1+i/4 against 1−i/4, with ⟨z,z⟩ = 3/4 in both;
- g_𝔹(e₁,e₁) = 32/9 at w = (1/2,0);
- the modular area: π/6 here against 2π/3 for the Killing metric, which is the supplier's own value;
- the n = 2 curvatures −1/3 and −1/12, times 6, give −2 and −1/2;
- the distance ratio is √(2(n+1));
- the K-action formula v ↦ āAv.

Extra defect found while writing the adapter:
- `Matrix.indefiniteDiagonal` does not exist at the Mathlib pin. The declaration is `LieAlgebra.Orthogonal.indefiniteDiagonal` (Mathlib/Algebra/Lie/Classical.lean:175, inside `namespace LieAlgebra`, line 70, and `namespace Orthogonal`, line 162). It is corrected in the Conventions, the Mathlib contract, §1.1 and plan 1.1.
- `finSumFinEquiv` is at line 223 of Mathlib/Logic/Equiv/Fin/Basic.lean, not 224.

## R03 (P2) — applied

Verified at the head of the AdelicAlgebraicGroups pull request. Its §3.4, *Arithmetic lattices in a real Lie group*, defines the compact-kernel predicate and proves the following:
- the predicate does not depend on the choice of Γ_𝐇 within its commensurability class;
- it depends only on the commensurability class of Γ, and is invariant under the automorphisms of G;
- p(Γ_𝐇 ∩ 𝐇(ℝ)⁰) is a lattice.

Its §1.1 builds the closure model, whose integral points are 𝐇(ℚ) ∩ GL_N(ℤ).

Old: §11.1 defined the predicate; §11.2 reproved the image-lattice theorem through Weil's formula. New: §11.1 reads the supplier's predicate on G and proves (a) the witness form, equivalent without assuming a lattice, and (b) the ℚ-simple reduction (a lattice inside a lattice has finite index); §11.2 proves only the cocompactness transfer (finite index, proper p, commensurability).

WitteMorris2015 locators:
- Old: "line 1896 to line 1898" (Remark 4.1.10).
- New: Theorem 5.1.11 (line 3676) and Proposition 5.3.1 (lines 3909–3911). Both were checked in the cached text and added to the `sources.toml` locator.

Pattern: AdelicAlgebraicGroups §1.1 is added to the contract and the plan. VonNeumannAlgebras Layer 9 is dropped from Layer 11's dependencies. The plan name of target 11.2 is renamed from `BallQuotient.arithmetic_isLattice` to `BallQuotient.arithmetic_cocompact_iff`, because its statement is now the cocompactness criterion. Nothing cites the old name.

## R04 (P3) — applied

- Plan 1.3 `borel_chart`. Old: "ι is the restriction of the affine chart". New: "the restriction to B of the inverse of the affine chart z₀ ≠ 0". The README bullet in §1.3 is reworded the same way.
- Plan 5.1. The hypothesis now reads "(1.2) and unimodular (1.4)", and `target:1.4` is added to its prerequisites.
- Plan 9.2 `gamma2_dims`. Old: "ℓ−2". New: "ℓ−2 for ℓ ≥ 2 and 0 for ℓ = 1 (0, 0, 1 at ℓ = 1, 2, 3)". The README §9.2 Check also gains "(and 0 for ℓ = 1)" and the identification H⁰(O(ℓ−3)).

## Checks run

**Dependency gate** (exact output, after all edits):

```text
candidate: BallQuotientsAndComplexHyperbolicLattices is not in the merge order yet; checked as if placed after ShimuraData (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2123 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. An earlier run in this round, against an older index, reported 233 roadmaps and 2089 edges, also with 0 problems.

The gate does not count the new edge to RealSemisimpleLieGroups. RealSemisimpleLieGroups is not in `merge-order/ORDER.txt`; it is another author's open pull request that adds a new roadmap folder, which the brief allows as a supplier. A scratch test before the edits gave the same edge count with and without that supplier.

**Citation resolution** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name found nowhere. I checked the two new Mathlib names, `LieAlgebra.Orthogonal.indefiniteDiagonal` and `finSumFinEquiv`, by hand at the pin.

**Internal order:** every `target:` prerequisite in the plan is earlier than its target. Every target has at least three tests, and every definition has an API. Every README subsection keeps a *Needs* line and at least three Checks.

**Lean:** this is a design, with no `Suggested.lean`. No Lean command was run, and there is no `#check` comparison to report.

**Sources:** nothing fetched, and no `needs-references.toml` written. The settled uncertified and waived keys are cited as before.

## Adversarial pass (changed or added statements)

| Statement | Instances | Values computed | Result |
| --- | --- | --- | --- |
| §1.1 form comparison | n=1, z=(1,i/2), w=(1,1/2) | here 1+i/4; supplier 1−i/4; ⟨z,z⟩=3/4 both; −J gives −3/4 | conjugate, same lines |
| §1.1 reindexing | J on Fin 1 ⊕ Fin n | inl 0 ↦ 0 (castAdd), inr i ↦ 1+i; J ↦ diag(1,−1,…,−1) | matches supplier |
| §1.2 spectrum | diag(1,e^{iθ},1); h_t | 1×5, e^{±iθ}×2; e^{2t},1,1,e^{−2t} vs supplier's e^{2t},1,e^{−2t} | differ by scalar line only |
| §1.2 injective | Ad([g])=id | g central in M_{n+1}, so scalar; unit scalar ↦ 1 in G; i·1 ↦ 1 | pass |
| §1.2 closed image | limit of λ_k g_k | hᴴJh = cJ, c = lim\|λ_k\|²; c=0 contradicts det h ≠ 0 | U(1,n)·ℂ^× closed, saturated |
| §1.4 K-action | (a,A)=(e^{iθ},1) | here e^{−iθ}w; supplier āAv = e^{−iθ}v; aAv = e^{iθ}v | agree; wrong convention excluded |
| §2.2 metric | w=(1/2,0), u=e₁ | h=4/3+4/9=16/9; 2h=32/9; supplier 2(4/3+(1/4)/(9/16))=32/9 | equal |
| §2.2 n=1 area | modular surface | ω: π/6; hyperbolic π/3; Killing 4g_𝔹: 2π/3 (supplier §5.6 value) | consistent |
| §2.3 curvature | n=2 | Killing −1/3, −1/12; ×2(n+1)=6 gives −2, −1/2 | pass |
| §2.3 Ricci | Ric(cg)=Ric(g) | −½·2(n+1)g_𝔹 = −(n+1)g_𝔹; −i∂∂̄log(1−\|w\|²)^{−(n+1)} = −(n+1)ω | agree |
| §2.4 geodesic | Y_v, \|v\|=1 | exp(tY_v)·0=tanh t·v; speed √2; s=√2t; d=√2\|t\| | pass |
| §2.4 Killing distance | B=2(n+1)tr | tr(Y_v²)=2; B^{1/2}=2√(n+1)\|t\|; ratio √(2(n+1)) | pass |
| §3.1 affine ⇒ sub-ball | A∩B≠∅ | p=(1,a), ⟨p,p⟩=1−\|a\|²>0; W=ℂp⊕(p^⊥∩W), signature (1,m); degenerate span(e₀+e₁) has no positive vector | pass |
| §3.1 kernel of r_W | m=0, n=1 | kernel = image of U(1)·1_W × U(W^⊥); m=0 gives K | compact |
| §3.2 W_{p,T} | p=(1/2,0), T=ℂe₂ | W={z₁=z₀/2}, sub-ball {w₁=1/2}; T alone gives {w₁=0} | pass |
| §3.3 complete case | M ⊂ 𝔹(W) open | exp_y onto in Hadamard 𝔹(W); geodesics of M reach every point | M = 𝔹(W) |
| §5.2 converse | irrational rotation | Γ∩U ⊂ {γ: γ(U·0)∩U·0 ≠ ∅}; non-discrete Γ has infinite such set | pass |
| §5.3 scaling | real dim 2n | vol_{g_𝔹} = (2(n+1))^{−n} vol_Killing; n=1: 1/4 (π/6 vs 2π/3) | pass |
| §6.1 R01 control | y=1000; threshold | 0.000707106752; y > 1/(2 sinh(ε/√2)) = 7.065 at ε=0.1; ⟨R,T⟩ ≅ C₂×ℤ | finite case excludes it |
| §6.1 modular controls | i, e^{2πi/3} | Γ_ε = C₂, C₃ for small ε | still finite case |
| §11.1 (a) | {1}; SL₂ | {1} not commensurable with an infinite lattice; ker p={±1}, p(SL₂(ℤ))=PSL₂(ℤ) | lattice is a conclusion |
| §11.1 (b) | 𝐆 = SL₂ × SU(3) (definite) | SU(3) factor has compact ℝ-points, finite arithmetic group; SL₂ factor maps onto PU(1,1) | one factor survives |
| §11.2 transfer | PGL₂ with Γ₀=PSL₂(ℤ); SL₂ | index 2 components; unipotent [[1,1],[0,1]] ∈ SL₂(ℤ), noncompact both sides | pass |
| §9.2 Check | Γ(2)/±1, ℓ=1,2,3 | h⁰(O(ℓ−3)) = 0,0,1 | README and plan agree |

## Ownership and maintainer notes

**Merge order.** The new supplier RealSemisimpleLieGroups is an open pull request, not in `merge-order/ORDER.txt`. It must merge before this roadmap. When the intake places this design, the placement has to be after RealSemisimpleLieGroups as well as after ShimuraData. The gate cannot see this edge, and the worker should name it in the merge-order paragraph.

**No cycle.** `roadmaps grep BallQuotients` finds no citation of this roadmap anywhere. RealSemisimpleLieGroups explicitly leaves non-arithmetic ball quotients, the Siu–Yau–Mok compactification and H. Cartan's uniqueness theorem outside its scope, and lists roadmaps on complex hyperbolic geometry as consumers.

**Ownership checks against open work** were done with `roadmaps show` on RealSemisimpleLieGroups and AdelicAlgebraicGroups at their heads. RealSemisimpleLieGroups is not among the 218 names in the job's `open-pull-requests.md`, so I read it through the tool.

**Renamed plan name:** `BallQuotient.arithmetic_isLattice` → `BallQuotient.arithmetic_cocompact_iff`. No other roadmap cites either.
