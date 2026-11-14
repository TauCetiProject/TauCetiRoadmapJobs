# Repair of DynamicalDegreesOfRationalMaps (design, round 4)

The review has one finding, R01 (P2), which is verified and applied. The pattern search found the same defect in the plan at nine more places, all repaired: an index range is dropped, so natural-number subtraction or an out-of-range index produces a junk instance. It also found one place in the README (§6.2), repaired. No source was fetched and `sources.toml` is unchanged. No new target, layer or supplier was added.

## R01 (P2) — applied

**Verification.** At the pinned Mathlib, `Nat.fib` (Mathlib/Data/Nat/Fib/Basic.lean:56) has `fib 0 = 0`, `fib 1 = fib 2 = 1`. Substituting `n = 0` into the plan's tuple gives `fib(0 − 1) = fib 0 = 0` and the tuple `(1, y, z)`. Its coordinate degrees are `0, 1, 1`, while `f^0 = [x : y : z]`. silverman2014 line 365 writes the formula with no range on `n`. It is correct at `n = 0` only with the signed Fibonacci number `F_{−1} = 1`, which `Nat.fib` does not provide. The README (§6.3) already said `n ≥ 1`. The finding is right.

**Change.** In plan 6.3, "f^n = […], deg_{1,H}(f^n) = fib(n+2)" becomes "f^0 = id; for n ≥ 1, f^n = […] (reduced forms of degree fib(n+2)); deg_{1,H}(f^n) = fib(n+2) for every n ≥ 0". Added an `n ≥ 1` hypothesis and the degenerate test `fibonacci_n0`. README §6.3 now states `f^0 = id` and degree for `n ≥ 0`, with a matching `n = 0` Check.

**Pattern repaired at other places.** Each of these drops an index range that the README states, or should state:
- plan 3.5: `s_k² ≥ s_{k−1}s_{k+1}` now has `1 ≤ k ≤ d−1`, as README §3.5 does.
- plan 3.6: "all (A^k B^{r−k}) > 0" becomes "for every 0 ≤ k ≤ r", as README §3.6 has it.
- plan 4.2 and 4.4: `0 ≤ k ≤ d` added to the statement and the hypotheses.
- plan 4.3, 4.5 and 5.3: hypothesis `0 ≤ k ≤ d` added.
- plan 5.2: `0 ≤ k ≤ d` added, log-concavity limited to `1 ≤ k ≤ d−1`, and `m ≥ 1` on `λ_k(f^m) = λ_k(f)^m`, as in README §5.2.
- plan 5.4: `max_k` becomes `max_{0 ≤ k ≤ d}`, as in README §5.4.
- README §6.2 and plan 6.2: the recursion `deg_{k+1,H} ≤ a·deg_{k,H}` is limited to `0 ≤ k ≤ d−1`. The bound `deg_{k,H} ≤ a^k` and the morphism equality are limited to `0 ≤ k ≤ d`. The route compares `(A^{d−k−1}B^k·(aA − B))`, which needs `k ≤ d − 1`.

## Adversarial pass on every changed statement

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §6.3 Fibonacci coordinate formula, `n ≥ 1` | n = 1, 2, 3; inductive step | n=1: `[yz : xy : z²]`, deg 2 = fib 3. n=2: f applied to `[yz : xy : z²]` gives `[xy·z² : yz·xy : z⁴]`, divided by z this is `[xyz : xy² : z³]`, deg 3 = fib 4. n=3: `[xy²z³ : x²y³z : z⁶]/z = [xy²z² : x²y³ : z⁵]`, deg 5 = fib 5. Step: applying f to the n-tuple and dividing by `z^{fib n}` gives exponents `fib(n+2) − fib n = fib(n+1)` and `2fib(n+2) − fib n = fib(n+3)`. First-coordinate degree `fib(n−1) + 2fib n = fib(n+2)`. | Holds for n ≥ 1 | Range now in plan |
| same formula at n = 0 (junk) | Nat subtraction | Gives `(1, y, z)`, degrees (0, 1, 1), versus `f^0 = [x : y : z]`. Representatives (2,3,1) and (4,6,2) of one point go to (1,3,1) and (1,6,2). Equal first coordinates force the scalar 1, and then 6 ≠ 3, so the tuple does not define a map. | False, so excluded | Test `fibonacci_n0` and README Check |
| no common factor of the n-tuple | n ≥ 1 | The third coordinate is `z^{fib(n+2)}` and the second, `x^{fib n} y^{fib(n+1)}`, has no `z`. So the gcd is 1 and the degree is `fib(n+2) ≥ 2`, which satisfies §6.2's `a ≥ 1`. | Holds | none |
| `deg_{1,H}(f^n) = fib(n+2)` for all n ≥ 0 | n = 0, 1 | n=0: `deg_{1,H}(id) = (H·H) = 1 = fib 2`. n=1: `2 = fib 3`. Agrees with the Conventions witness and the Worked examples row. | Holds | Stated for n ≥ 0 |
| plan 3.5 `s_k² ≥ s_{k−1}s_{k+1}`, `1 ≤ k ≤ d−1` | ℙ², A = 2H, B = H; ℙ¹×ℙ¹, A = O(2,1), B = O(1,1); k = 0 junk | ℙ²: s = (1, 2, 4), k=1: 4 ≥ 1·4. Quadric: s = (2, 3, 4), k=1: 9 ≥ 8. k=0 with Nat subtraction: `s_0² = 1 ≥ s_0 s_1 = 2` is false. | Holds in range, false outside | Range added |
| plan 5.2 `λ_k² ≥ λ_{k−1}λ_{k+1}`, `1 ≤ k ≤ d−1` | Fibonacci; Frobenius d = 2; k = 0 junk | Fibonacci k=1: φ² ≈ 2.618 ≥ 1·1. Frobenius k=1: p² = p·p, equality. k=0: `λ_0² = 1 ≥ λ_0λ_1 = φ ≈ 1.618` is false. | Holds in range, false outside | Range added |
| plan 5.2 `λ_k(f^m) = λ_k(f)^m`, `m ≥ 1` | z² on ℙ¹, m = 2; m = 0 | m=2: λ_1(z⁴) = 4 = 2². m=0: λ_1(id) = 1 = 2⁰, so it also holds there. | Holds; aligned with README generality | m ≥ 1 added |
| plan 3.6 consequence, `0 ≤ k ≤ r` | ℙ¹×ℙ¹, A = O(1,1), B = O(2,1); k = 3 > r | k = 0, 1, 2 give (B²) = 4, (A·B) = 3, (A²) = 2, all > 0. At k = 3, `r − k = 0` and `(A³)` is three classes on a surface: junk. | Holds in range | Range added |
| plan 4.2 positivity, `0 ≤ k ≤ d` | Cremona ℙ²; ruling class | (1, 2, 1) are all > 0. Non-big O(1,0) gives 0, which is the README's non-example. k = 3 > d is junk. | Holds in range | Range added |
| plan 4.4 sub-multiplicativity, `0 ≤ k ≤ d` | Cremona k = 1; two squarings k = d = 1; k = 0 | 1 ≤ (2/1)·2·2 = 8. 4 ≤ 1·2·2 = 4. At k=0 the constant `(d+1)^0 = 1` gives `(L_1^d) = (L_1^d)(L_2^d)/(L_2^d)`. | Holds | Range added |
| plan 4.3, 4.5, 5.3 with `0 ≤ k ≤ d` | ℙ¹_ℂ/ℝ id; swap on ℙ¹×ℙ¹; conjugated Cremona | deg_1 is 2 over ℝ and 1+1 over ℂ. The ratio 5/2 lies in [1/9, 9] with C = 9. λ_1 is 1 before and after conjugation. | Holds | Range added |
| plan 5.4 `h_alg = log max_{0≤k≤d} λ_k` | Fibonacci; morphism of degree a | max(1, φ, 1) = φ, so h = log φ ≈ 0.4812. Morphism: max_k a^k = a^d, so h = d log a. Over all k ∈ ℕ the index set would be infinite, with junk values. | Holds | Range added |
| §6.2 recursion, `0 ≤ k ≤ d−1` | Cremona ℙ², a = 2; Fibonacci a = 2; k = d junk | Cremona k=0: 2 ≤ 2·1, equality, which agrees with `deg_{1,H} = a`. Cremona k=1: 1 ≤ 4. Fibonacci gives the same (1, 2, 1). At k = d the left side is `deg_{d+1}` and the route's `A^{d−k−1}` has exponent −1. | Holds in range | Range added (README and plan) |
| §6.2 bound and morphism equality, `0 ≤ k ≤ d` | Cremona; squaring morphism on ℙ²; Frobenius | (1, 2, 1) ≤ (1, 2, 4). Squaring gives (1, 2, 4) = (1, 2, 4). Frobenius gives (p^k), equal to a^k with a = p. | Holds | Range added |

Recomputed the Checks and worked examples that use the changed objects. They are Conventions line 44, §5.1 Check `fib(n+2)^{1/n} → φ`, §5.2 Checks, §5.4 Checks, §6.2 Checks, the §6.3 Checks for n = 2, 3, and the Worked-examples Fibonacci row. All agree with the repaired statements. The Worked-examples entry `deg_{1,H}(f^n) = fib(n+2)` is now explicitly valid at n = 0.

## Checks run

Dependency check (`tauceti-roadmap … gate --candidate packages/DynamicalDegreesOfRationalMaps/design/README.md --only DynamicalDegreesOfRationalMaps …`):

```text
candidate: DynamicalDegreesOfRationalMaps is not in the merge order yet; checked as if placed after ArakelovGeometryAndAbelianHeightsPartII (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
```

The check prints no UPWARD and no CYCLE line. The edge count was 2139 in the review and is 2140 now. This round added no citation, so the extra edge comes from the board or content state, not from this package.

Citation resolver (`roadmaps resolve` on the README): it reports "Lean names found nowhere: None". It did not check Lean names outside TauCetiRoadmap on this host.

`plan.json` parses as JSON. It was re-serialised in its original format (one-space indent, no trailing newline), so the diff shows only the edited entries.

## Gate failures

None were listed in the brief.

## Notes for the maintainer

- This design package has no `Suggested.lean`. So there was no elaboration and no `#check @name` binder audit: there is nothing to elaborate. No Lean command was run.
- No construction, carrier or supplier was added. Ownership is therefore unchanged. Ownership against open pull requests was not re-checked from their files: the brief names those pull requests without file paths. The overlap report lists no shared head, no dropped id and no revision-only id.
- No Lean name, section number or target id changed, so other roadmaps citing this one are unaffected.
- Source issue noted, already recorded by the review: guedj2010 Théorème 2.4 (a) (line 1180) states the adjacent-index inequality for `1 ≤ l ≤ k`. It should stop at `k − 1`. The plan now follows cutkosky2015 Corollary 6.3 (line 1027), whose range `1 ≤ i ≤ d − 1` is correct.
- No suspicious instructions were found in the review text.
