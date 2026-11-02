# Repair report: red-team round 1 (passes a and b)

Two reviews were merged: pass a (F01–F10) and pass b (F01–F03). Where they overlap, the finding is settled once and the other entry points to it: a-F06 part 2 and b-F01 cover the same locator. Every finding is listed below.

## F01 (P2) — applied

§9.3 (formerly §9.4), proof route. Old: "Mathlib has IsReducedRowEchelon but not its uniqueness; the uniqueness … is part of this node." New: existence and uniqueness are imported from ClassicalArithmeticCompletion §3.19 (on main, README "3.19 Change of basis and uniqueness of the reduced row echelon form"). This section owns only the descent application. Changes: a new supplier contract "From TauCetiRoadmap.ClassicalArithmeticCompletion", a Scope sentence, the Needs line, the Layer 9 Dependencies, and a third Check (span(2,2a) ↦ (1,a); zero/full ↦ 0/I).

## F02 (P3) — applied differently

§9.6 Check. Old: "translating C₀ by a non-constant non-torsion point moves k_{A,X} up". New: translation by (η,0) lies in the stabilizer of E×{0} and keeps the field k. Translation by (0,η) gives E×{η}, whose field is K. The reviewer proposed "the algebraic closure of k(E) inside K̄", but `k_{A,X}` ranges over I(K/k), the subfields of K that are algebraically closed in K. E×{η} is special for k′ only if η ∈ E(k′) up to torsion. Since k(η)=K, that forces k′=K.

## F03 (P1) — applied

I verified the witness. Constant points have ĥ(x−α_N)=ĥ(Q_N)=2/N², h_Fal=0 and ĥ(2α_N−ω)=8/N². So with the constant 1, infinitely many points satisfy the bound once N² ≥ 2/c₁. The error is in the source's reduction: yuan-2026 lines 2716–2721 and 2734–2735 extend K "since a finite extension replaces the heights by multiplying with the same constant", but the additive constant 1 is not rescaled with them. The §11.7 statement now reads max{h_Fal(C), ε_α}, with ε_α=1 for number fields and ε_α=1/d_α=1/[K(α):K] for function fields, heights keeping K as the reference field.

The route converts reference field k(y) to K through F=K(J[N],α), with [F:K] ≤ M·d_α and M=max_{N∈{3,4}}|GL_{2g}(ℤ/N)|; c₁ becomes c₁/M. The counterexample is added as a Check: d_α ≥ N²/2 makes the corrected bound exclude the constant points for c₁<1/5. The same distinction between enlarging the coordinate field and changing the reference field is now made in §7.1 (Check), §11.5 (statement) and §11.6 (route).

## F04 (P2) — applied

§0.1. "For an irreducible Z" becomes "For an integral Z", and a new sentence says that the total degree of a closed subscheme is that of its reduced support. The same wording is repaired in the proof route and in two API bullets. Added Check: the doubled point Spec k[ε]/(ε²) has total degree 1 against fundamental-cycle degree 2.

## F05 (P2) — applied

§1.2. "ℚ̄-points are the pairs ((A,L),X)" becomes "isomorphism classes of triples ((A,λ,η),X)" with η a full symplectic level-4 structure, and forgetting η is finite-to-one. Added Check: a generic E with X=E has 48 symplectic bases giving 24 distinct points over one unmarked pair, because −1 acts as −I ≠ I on E[4]. No other occurrence of the unmarked description exists.

## F06 (P3) — applied

There are three locators:
1. yamaki-strict-support (3.0.13)–(3.0.14) are in §3.2: line 581, p. 14, with §3.1 starting at line 521, p. 12. The locator becomes "§§3.1–3.2, (3.0.13)–(3.0.14), pp. 12–15" in gap:abelian-valuation-map (see b-F03), in `sources.toml` and in References.
2. The projection inequality is settled under b-F01.
3. "ArakelovGeometryAndAbelianHeightsPartII §5.2, part (2)" in §3.2 becomes "§5.4, part (2)": the design README §5.4 (2) is equidistribution. The other §5.2 citations (invariant extensions, in §§3.1, 7.1 and 8) are correct and unchanged.

## F07 (P3) — applied

§7.4 Check (constant special curves). Old: "a curve C₀ ⊆ A₀ … is not a torsion subvariety". New: "a smooth curve C₀ ⊆ A₀ of genus at least two … since a one-dimensional torsion coset is an elliptic curve", plus the control C₀=E×{0}, which satisfies both predicates. The AbelianSchemesAndArithmeticModuliPartII contract Check already says "genus two", so no change was needed there.

## F08 (P2) — applied

The sections are swapped: §9.3 is now "Fields of definition of subvarieties (XY Lemma 3.4)" and §9.4 is "Isogeny classes defined over two subfields (XY Proposition 3.2)". The Needs line of the new §9.4 now lists §9.3 first. §9.5's Needs ("§9.3; §9.4") stays valid. No other README, Lean or `sources.toml` reference uses these numbers: the "§9.3"/"§9.4" strings in `plan.json` are DKY locators.

## F09 (P3) — applied

Added Checks:
- §1.3: E×S over a curve, fibred square of dimension 3 against absolute square of dimension 4; the multisection 2x=s with a four-component square; two-point fibres. The last two are negative controls for the geometric-integrality clause.
- §5.2: scaling the coefficients of P_ij by 7 leaves h₁ unchanged; moving the origin to [1:T:0:…] forces c_NT ≥ log T.
- §9.14: for X=t+B, X_m=mt+B, and X₂=X₁ iff t∈B.

## F10 (P1) — applied

§8.1. The source-only input "finitely many up to isomorphism after fixing ramification (GH Lemma B.2)" is replaced by InverseGaloisAndArithmeticFundamentalGroups §IG.3.1, "Finitely many covers of bounded degree". That roadmap is earlier in the merge order (line 53) and states the theorem for a connected smooth quasi-projective variety over an algebraically closed field of characteristic 0, with GH Lemma B.2 as its source. Added the 𝔾_m example (K_D=k(z^{1/lcm(1..D)})). Updated: the supplier contract, the §8.1 Needs line and the Layer 8 Dependencies.

The findings of pass b follow; their ids F01–F03 are pass b's own and are written b-F01–b-F03 in cross-references throughout this report.

## F01 (P3) — applied

§0.1 API bullet. "(GGK Lemma 2.4 via DGH Lemma 2.4)" is wrong: dgh-2021 line 450 is the Betti-form identity, and ggk-2026 line 337 is the sum bound. The bullet is now stated for ample L and a coordinate projection, with its own proof. Expand c₁(q*L⊗N)^d∩[Z]; every term is nonnegative by nefness; the (q*L)^e N^{d−e} term counts deg q(Z) fibres, each of N-degree ≥1. Then sum over components. It cites ggk-2026 lines 377–380, p. 197, for GGK's use of the step. Dill's paper is not cited, so no new manifest key.

## F02 (P3) — applied differently

Four citations of "yuan-2026 line 99, §1.1, p. 4" now point at the lines each target uses, all on p. 4:
- §3.6: lines 110–118.
- §4.9: lines 110–116.
- §5.8: lines 121–135.
- §6.8: lines 129–135 (old "pp. 4–5" corrected, since line 135 precedes the p. 5 marker at line 140).

§11.6 now reads "lines 2740–2830, §4.4.3, pp. 81–84" rather than the reviewer's 2816–2830. The §11.6 statement relies on the whole subsection, including Theorem 4.10 at line 2745, p. 81.

## F03 (P2) — applied

gap:abelian-tropical-measures is split into gap:abelian-valuation-map, gap:abelian-canonical-measure, gap:strict-support-dimension and gap:nonarchimedean-small-point-equidistribution. Each has one claim, the same supplier and the same section (TropicalAndBerkovichArithmetic §§6.2–6.4, 7.0). They appear in the `plan.json` `gaps` list and under the README contract, which now opens with what §§6.2–6.4 and 7.0 supply (checked at that roadmap's head: model measures, metrics, local heights, Raynaud uniformization). §9.12 cites the first two in its route and all four in its Needs line; the Layer 9 Dependencies cite all four.

## Checks run

- `lake env lean packages/HeightsRationalPointsAndObstructionsPartII/Suggested.lean` exits 0 with three `declaration uses 'sorry'` warnings, at lines 57, 75 and 96.
- `Suggested.lean` is unchanged this round: no finding concerned it. The elaborated signatures in the worker's signatures file were compared with §§3.6, 6.8 and 6.12; no binder is lost and nothing changed.
- Dependency check: `depcheck: 56 roadmaps, 656 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved: line.
- Citation resolver: the one lead, "ArakelovGeometryAndAbelianHeightsPartII §§3.1 not found", is a false positive. That roadmap is a board design package whose §3.1 exists.

## Adversarial pass on changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| §11.7 corrected bound | constant genus 2, α_N=w+Q_N | LHS 2/N²; old RHS c₁(1+8/N²) ≥ 2/N² for N² ≥ 2/c₁ (fails); new RHS ≤ c₁(2/N²+8/N²)=10c₁/N² <2/N² for c₁<1/5 | corrected |
| §11.7, α over K | d_α=1 | ε_α=1, Yuan's statement; conversion factor [K(J[N]):k(y)]/[K(J[N]):K] ≥ 1/M | holds with c₁/M |
| §11.7 number fields | absolute heights | ε_α=1, no reference-field change | unchanged |
| §11.7 torsion specialization | x−α torsion | ĥ=0 ≤ RHS>0 | uniform MM survives |
| §7.1 reference field | [1:1/(t²+1)] | ℝ(t): 2; ℂ(t): 4 = 2·[ℂ(t):ℝ(t)] | consistent with Conventions |
| §0.1 projection | Z={P}×X, q=p₁ / p₂ | 1 ≤ deg X; deg X ≤ deg X | true; very-ample rescaling n^d = n^e·n^{d−e} |
| §0.1 total degree | doubled point in ℙ¹ | reduced 1, cycle 2 | definition now single-valued |
| §1.2 marked points | generic E, X=E | 48 bases / {±1} = 24 points | Check added |
| §1.3 Checks | E×S; 2x=s; two-point fibres | dims 3/4; 4 components; 4 points | true |
| §5.2 Checks | coefficient scaling by 7; origin ↦ [1:T:0] | h₁ unchanged; c_NT ≥ log T | true |
| §8.1 via IG.3.1 | S°=𝔾_m, D | D classes zⁿ, K_D degree lcm(1..D) | true |
| §9.3 linear core | span(2,2a) over ℚ(a) | reduced row (1,a); zero/full give 0/I | true |
| §9.6 translations | E², (η,0), (0,η) | k; K | true |
| §9.14 Check | t+B | X_m=mt+B; X₂=X₁ iff t∈B | true |
| Constant-special Check | genus-2 C₀; E×{0} | special, not torsion; both | true |

## Notes for the maintainer

- Source issue (error) in yuan-2026, Theorem 1.1 / Theorem 4.7 (line 141, p. 5; proof lines 2716–2735, pp. 80–81). In the function-field case, for α defined only over a finite extension E of K, the constant 1 must be 1/[K(α):K] when heights keep K as reference field. The constant genus-two counterexample above refutes the printed form. Whether the published Annals version corrects it was not checked (the manuscript of 21 August 2024 was read).
- The `plan.json` node texts for §§9.3–9.4 (order) and §11.7 (statement) still carry the old versions, because this job may edit only the `gaps` list.
- New supplier edges: ClassicalArithmeticCompletion §3.19 (on main) and InverseGaloisAndArithmeticFundamentalGroups §IG.3.1 (earlier in the merge order). Neither creates an upward edge.
- The four new gap slugs replace gap:abelian-tropical-measures. If the intake has already announced the old slug to TropicalAndBerkovichArithmetic, the content asked of that roadmap is the same, split four ways.
- Ownership against open pull requests was checked with `roadmaps grep` for reduced row echelon uniqueness and for bounded-degree covers. Each object has exactly the owner cited (ClassicalArithmeticCompletion §3.19 on main; InverseGaloisAndArithmeticFundamentalGroups §IG.3.1 at its open head, under the heading of IG.3.1).
- No suspicious instructions were found in the reviews.

## Gate repairs

- Report headings: the finding sections now use the reviews' own ids (`## F01 (P2) — applied`, …); pass b's F01–F03 follow a separating sentence.
- LaTeX-style braces outside code spans in the README: in the §0.1 image-degree bullet, `n^{d−e}` is now the code span `n^(d−e)`; in §11.7, `|GL_{2g}(ℤ/N)|` is now the code span `|GL_2g(ℤ/N)|`. No mathematical content changed.
