# Repair of ComplexHessianEquations (design, round 5)

This round settles the four findings of the round-4 review (`reports/REV-DESIGN-ComplexHessianEquations~4.md`). All four are correct. Each is applied as asked; where the wording or the route differs from the suggested repair, the section says how and why.

Files edited:
- `packages/ComplexHessianEquations/design/README.md`
- `packages/ComplexHessianEquations/design/plan.json`

`packages/ComplexHessianEquations/sources.toml` needed no change. Every locator used is inside an existing entry: spruck2005 Corollary 2.4 is within its recorded range "Theorem 2.2–Theorem 2.16", and the cited lines of pss2012 are already covered. No new work is cited.

## F01 (P1) — applied

Old → new (README §2.2, plan 2.2.3):
- Old: "the cone contains `Γ_n` and lies in the half-space `σ_1 > 0`".
- New: the cone is permutation-invariant and lies in `σ_1 > 0`, with a proof. It contains `Γ_n` if and only if every `e_i` lies in its closure. Under that condition `∂_i p > 0` on the cone. Both routes are written out.
- Two new Checks and two plan tests.

**Evidence.** `p = 2xy − 0.9(x² + y²)` is symmetric:
- `p(e) = 0.2`;
- `p(x + te) = 0.2t² + 0.2(x_1 + x_2)t + p(x)`;
- the discriminant equals `0.76(x_1 − x_2)²`, checked numerically at random points with difference `0`.

So `p` is hyperbolic in `e`. At `(1, 0.1) ∈ Γ_2`, `p = −0.709` and the roots are `1.4115` and `−2.5115`, so the point is outside the cone. spruck2005 Corollary 2.4(i) (line 11225–11228) is false as stated. Part (ii) (line 11229) also fails: at `(1, 0.7)`, `p = 0.059`, the roots are `−0.196` and `−1.504` (so the point is in the cone), and `∂_x p = −0.4`.

**Repaired statement and route.**
- Half-space clause: the reviewer's argument, written out in the README. The permutation average of a cone point is `(σ_1(x)/n)e`, and `p(−se + te) = (t − s)^m p(e)` vanishes at `t = s ≥ 0`.
- Equivalence: if every `e_i ∈ Γ̄`, the closed orthant lies in `Γ̄`. The open set `Γ_n` then lies in `int Γ̄`, which is `Γ` because `Γ` is open and convex. The converse holds because `e_i ∈ Γ̄_n`.
- Derivative clause: my route differs from the reviewer's. The reviewer's limit-of-real-rooted-polynomials argument needs Hurwitz's theorem, which no target here supplies. Instead, `h(t) = p(x + te_i)^{1/m}` is concave on `t ≥ 0`, by Gårding's concavity and `Γ + Γ̄ ⊆ Γ`. If `∂_i p(x) ≤ 0`, then `0 < p(x + te_i) ≤ p(x)` for `t ≥ 0`. So the polynomial is constant, and the whole line `x + ℝe_i` lies in the cone, which contradicts the half-space clause. Every input is already a target of §2.2.

**Other places with the same pattern.**
- The `σ_k` sentence of §2.2 now notes that `∂_iσ_k > 0` is also the repaired derivative clause, since `e_i ∈ Γ̄_n ⊆ Γ̄_k`.
- §1.4 says "(true when `Γ` is a convex cone containing `Γ_n`)". This assumes the containment and is unaffected.
- §2.4 admissible cones assume `Γ_n ⊆ Γ` by definition. No other text infers the containment from symmetry.

## F02 (P2) — applied

Old → new:
- The "From TauCetiRoadmap.Yamabe" contract (Y1.1) → a Tau Ceti bullet for `TauCeti.Manifold.exists_eLpNorm_le_mul_eLpNorm_mgradient_two_add`.
- §5.3 states the inequality for `C¹` functions at real dimension `2n`.
- §§5.3 and 6.2 *Needs:* and the Layer 5–6 Dependencies name the declaration.
- Plan: 5.3 and 6.2 cite it, and the Yamabe supplier entry is deleted.

**Evidence.** I checked the declaration at the pin `2fd255d9…` (the Tau Ceti rev of `lake-manifest.json`), at `TauCeti/Geometry/Manifold/Riemannian/Sobolev.lean` line 185. It needs:
- `[CompactSpace M]` and `I.Boundaryless`;
- `IsManifold I 1 M`;
- a continuous Riemannian bundle;
- `2 < finrank ℝ E`.

It concludes, for every `ContMDiff I 𝓘(ℝ) 1` function `u`, that `‖u‖_{L^{2m/(m−2)}} ≤ C(‖∇u‖_{L²} + ‖u‖_{L²})` for `riemannianVolume`.

The only consumer is §6.2's Moser iteration. pss2012 line 284–287 applies (3.5) to `u = ψ^{p/2}`, a power of a smooth positive function, which is `C¹`. The README now says this in §6.2.

Instances:
- `n = 2`: `2 < 4` holds, and the exponent is `8/2 = 4`, which matches the §5.3 Check (extended to say this).
- `n = 1`: `2 < 2` fails, consistent with §6.2 excluding `n = 1`.

**Other places with the same pattern.** README lines 15, 21, 84–86, 459, 465, 488, the §6.2 *Needs:* line and the Layer 6 Dependencies. Plan 5.3 (statement, hypotheses, prerequisites), 6.2 (prerequisites) and `suppliers`. A search for "Yamabe" in both files now finds nothing.

## F03 (P2) — applied

Old → new:
- A new Scope paragraph says that NumberFieldEnumeration §1.1 proves the nonnegative case `S_k ≤ S_1^k` by a smoothing argument. It also says how §2.1 differs and that this roadmap does not import NumberFieldEnumeration.
- §2.1 and plan 2.1 state that Maclaurin holds on the closure `Γ̄_l`, and in particular on the closed orthant.
- A new Check and plan test `maclaurin_closed_orthant`.

**Evidence.** `roadmaps show NumberFieldEnumeration` at its open head has, in §1.1 (README line 194), "Maclaurin's bound for a multiset of `n > 0` nonnegative reals and `0 ≤ k ≤ n`: `e_k/C(n,k) ≤ (e_1/n)^k`", proved by averaging pairs on a simplex. That is `S_k ≤ S_1^k`, the case `(1, k)` of §2.1 raised to the `k`-th power, on the closed orthant. The orthant lies outside `Γ_l` at its boundary, so §2.1 did not literally contain it.

I applied the repair in a more general form than asked: the closure `Γ̄_l` rather than only the closed orthant. On `Γ̄_l` every `S_j` with `j ≤ l` is `≥ 0` and the nonnegative roots are continuous. The closed orthant is `Γ̄_n ⊆ Γ̄_l`, so the closure form contains the orthant form and also covers boundary points with negative entries. No source supports anything narrower.

Values:

| `λ` | `S_1` | `S_2^{1/2}` | `S_3^{1/3}` |
| --- | --- | --- | --- |
| `(1, 0, 0)` | `0.3333` | `0` | `0` |
| `(1, 1, 0)` | `0.6667` | `0.5774` | `0` |
| `(2, 2, −1)`, on `∂Γ_2` | `1` | `0` | not claimed (outside `Γ̄_3`) |

**Placement of the Scope text.** It is a separate paragraph. With the sentence placed on the Scope line that mentions "the Tau Ceti supplier contract", the dependency check printed `note: supplier NumberFieldEnumeration of ComplexHessianEquations is not in the merge order; it must be inserted before ComplexHessianEquations`. NumberFieldEnumeration is not a supplier. Neither roadmap is in the merge order and neither imports the other, so no supplier citation is added.

## F04 (P3) — applied

Old → new: each label becomes the name of its theorem.
- (T1) → "the pointwise theory: Lewis's theorem …, Gårding's theorem and the structural constants".
- (T2) → "the uniqueness theorem".
- (T3) → "Yau's theorem".
- (T4) in "How to read the build" → deleted; at §§8.3 and 8.6 → "the Guo–Phong–Tong estimate on degenerating backgrounds / on a fixed background".

**Evidence.** The labels come from `packages/ComplexHessianEquations/target.md` lines 27–36, which the README does not include. After the edit, a search of the README and the plan for a parenthesised `T` followed by a digit, or a bare `T1`–`T4`, finds nothing.

## Checks run

**Dependency check** (exit 0), run on the final README:

```text
candidate: ComplexHessianEquations is not in the merge order yet; checked as if placed after ComplexComparisonPartII (the intake inserts it when its design is accepted)
depcheck: 206 roadmaps, 1898 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. I computed the supplier edges of this README with the tool's own parser on the old and new text:
- old: ComplexComparisonPartII, ComplexKahlerGeometry, ComplexManifolds, DifferentialGeometry, OperatorTheory, OptimalTransport, PDE, PseudodifferentialOperators and Yamabe;
- new: the same without Yamabe, and NumberFieldEnumeration is not an edge.

**Citations.** `roadmaps resolve packages/ComplexHessianEquations/design/README.md` reports no cross-roadmap citation and no Lean name found nowhere. Its library check was unavailable on this host. I checked the one new Tau Ceti name at the pin myself (F02 above).

**plan.json** parses. Its formatting (one-space indentation, key order, trailing newline) is unchanged, which I confirmed by round-tripping the original file.

**Suggested.lean and Lean.** This design package has no `Suggested.lean`, and this job may not create one. No Lean declaration of this roadmap was added, renamed or deleted, and the README advertises no new backticked name of its own (the only new backticked name is the pinned Tau Ceti declaration). No `#check` file was elaborated and no Lean command was run.

**Gate failures.** None were listed for this round.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed (two sides) | Result; change |
| --- | --- | --- | --- |
| §2.2 symmetric cone `⊆ {σ_1 > 0}` | `p = 2xy − 0.9(x² + y²)`; `p = σ_1`; `−s·e` | sector `0.6268 < x_2/x_1 < 1.5954` with `x_1 > 0`, so `x_1 + x_2 > 0`; `σ_1`: cone = half-plane; `p(−se + te) = (t − s)^m p(e) = 0` at `t = s` | Holds; proof added |
| Old clause "cone `⊇ Γ_n`" | same `p`, `x = (1, 0.1)` | `p = −0.709`, roots `1.4115`, `−2.5115` | False; replaced |
| Equivalence `Γ_n ⊆ Γ ⇔ e_i ∈ Γ̄` | `p_c = (x_1+x_2)² − c(x_1−x_2)²` at `c = 1/4, 1, 4, 19` | `e_1 ∈ Γ̄ ⇔ 1 ≥ √c`; `Γ_2 ⊆` cone `⇔ c ≤ 1` (at `c = 1.01`, `(1, 0.001)` has `1.001 < 1.005·0.999`); `p = p_19/20` (max deviation `3.6·10⁻¹⁵`) | Both directions hold; Check added |
| Derivative clause under the condition | `p_{1/4}`; `σ_k` (`e_i ∈ Γ̄_k`); `p = xy`, `x + te_1` | `∂_1 p_{1/4} − (x_1 + x_2) ≥ 0.001 > 0` on 10⁵ sampled cone points; `∂_iσ_k = σ_{k−1;i} > 0` on `Γ_k`; `(x_1 + t)x_2` has root `−x_1 < 0`, `∂_1 = x_2 > 0` | Holds |
| Derivative clause without the condition | `p_19/20` at `(1, 0.7)` | `p = 0.059`, roots `−0.196`, `−1.504`; `∂_x p = −0.4` | Fails, as the Check says |
| Route step "bounded on a half-line ⇒ constant" | `m = 1`, `p = σ_1` | `h(t) = σ_1(x) + t`, `h' = 1 > 0`: the case `h'(0) ≤ 0` never arises | Consistent |
| Maclaurin on `Γ̄_l` | `(1,0,0)`, `(1,1,0)`, `(2,2,−1)`; `−e` | `1/3 ≥ 0 ≥ 0`; `0.667 ≥ 0.577 ≥ 0`; `1 ≥ 0` (l = 2); `−e`: `σ_1 = −3 < 0`, outside `Γ̄_2`, and `S_1 = −1 < 1` | Holds on the closure; off-cone control unchanged |
| NumberFieldEnumeration's case contained | `S_k ≤ S_1^k` on the orthant, `k = 0, 1, 2` | `k = 0`: `1 ≤ 1`; `k = 1`: equality; `k = 2` at `(1,1,0)`: `1/3 ≤ 4/9` | Special case of §2.1 at `(1, k)` |
| §5.3 Sobolev from the pin | `n = 1, 2, 3` | `2 < 2m`? false, true, true; exponents `—`, `4 = 4`, `3 = 3` (`2m/(m−2)` vs `2n/(n−1)`) | Holds for `n ≥ 2` |
| §6.2 use of Sobolev | `u = ψ^{p/2}`, `ψ = sup φ − φ + 1 ≥ 1` smooth | `ψ^{p/2}` is `C^∞`, hence `C¹` | Pinned `C¹` form suffices |
| Renamed headline sentences (F04) | §§4.2, 6.6, 8.3, 8.6 | hypotheses, conclusions and locators are character-for-character unchanged after the label | No mathematical change |

## Ownership and overlaps

- **Sobolev inequality on a closed manifold.** Owned by the pinned Tau Ceti and now consumed from it. The `H¹` extension in Yamabe's open revision is not used.
- **Maclaurin's inequality.** Shared with NumberFieldEnumeration §1.1, which is open and not in the merge order. §2.1 is the general statement here, and the Scope paragraph records how they differ. The single owner can only be settled by the maintainer (below).
- **Hyperbolic polynomials and Gårding cones.** `roadmaps grep -i 'hyperbolic polynomial|Gårding cone|Garding cone'` finds no other owner on main or at any open head.
- **`scratch/overlaps.md`.** Its one lead (Yamabe §Y1.1, dropped by the open revision of Yamabe) no longer applies: this README no longer cites Yamabe. No open pull request changes this roadmap, and this package drops no id.

## Sources

- Nothing was fetched and nothing was added to `needs-references.toml`, which does not exist for this job.
- Locators read in the cache: spruck2005 line 11182–11240 (Definition 2.1 to Corollary 2.4) and pss2012 line 255–305 (Moser iteration, (3.4)–(3.8)).
- **Source issue, for the review record.** spruck2005 Corollary 2.4 (printed p. 289, line 11225–11229) states that the cone of every symmetric polynomial hyperbolic in `(1, …, 1)` contains the positive cone, and that the partial derivatives of `p^{1/m}` are positive on it. Both need every coordinate vector in the closed cone, as `2xy − 0.9(x² + y²)` shows. The error affects a stated result.

## For the maintainer

- No section number, target id or Lean name of this roadmap changed. Nothing other roadmaps cite has moved.
- Yamabe is no longer a supplier. The roadmap's suppliers are now ComplexKahlerGeometry, PseudodifferentialOperators, PDE, DifferentialGeometry, ComplexManifolds and the pins.
- Once NumberFieldEnumeration and this roadmap are both accepted, NumberFieldEnumeration §1.1 should cite ComplexHessianEquations §2.1 (Maclaurin on `Γ̄_l`, which contains the closed orthant) rather than prove its case again. Alternatively, the merge order can make one of them the owner. Both are outside this package.
- The dependency check's parser treats every roadmap named on a Scope line that also contains the word "supplier" as a supplier edge. The NumberFieldEnumeration comparison is therefore its own paragraph. On the existing line, OperatorTheory, ComplexComparisonPartII and OptimalTransport were already read as edges before this round; all three are allowed (on main or earlier in the order).
