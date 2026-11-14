# FIX-PKG-RefinedTraceMethodsPartII~4

Repair of the three findings of the package review, round 3 (two P1, one P3). All three were verified and applied. Only `packages/RefinedTraceMethodsPartII/README.md` and `packages/RefinedTraceMethodsPartII/sources.toml` changed. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged.

## F01 (P1) — applied

Verified. PrismaticCohomologyPartII §4.31 (Checks) says that φ on `Δ_{Z_p}` is not an isomorphism and has cofibre `Z_p[−1]`. Its statement also gives the fibre sequence `Δ → Δ → W(k)[−1]` for W(k). §4.29 makes `Δ_{ℤ_p}` Nygaard-complete, because ℤ_p is p-torsion free and ℤ_p/p is regular. So the model "`Δ̂_{ℤ_p} = ℤ_p` with φ = id" is false: its cofibre would be 0.

§8.2 first Check, old → new: "A = R = ℤ_p, `Δ̂_{ℤ_p} = ℤ_p`, φ = id" → "A = ℤ_p, R = 𝔽_p, `Δ̂_{𝔽_p} = ℤ_p`, φ = id, `ℤ_p(0)(𝔽_p) = ℤ_p ⊕ ℤ_p[−1]`, citing PrismaticCohomologyPartII §§4.18, 4.31". Added a negative control: the actual φ on `Δ_{ℤ_p}` has cofibre `ℤ_p[−1]` (§§4.29, 4.31). The unit-package Check is kept as it was.

Pattern search: no other passage gives `Δ_{ℤ_p}` a value or φ = id on ℤ_p.
- §8.3's Check `gr_0 = ℤ_p ⊕ ℤ_p[−1]` is about absolute Hodge–Tate cohomology. There the Sen operator Θ acts by 0 in weight 0, so the Check is correct and unchanged.
- §8.3's third Check (Δ_{𝔽_p/ℤ_p} = ℤ_p) agrees with the new Check.
- §9.6's `𝔽_p(0)(𝔽_q) = 𝔽_p ⊕ 𝔽_p[−1]` uses the Frobenius of 𝔽_q, not the identity, and still holds by Artin–Schreier.

## F02 (P1) — applied

Verified. For `R = O_K/ϖ^n` we have `p = uϖ^e`, so `p^jR = 0` if and only if ej ≥ n. The least such j is ⌈n/e⌉, and the additive exponent is `p^⌈n/e⌉`, not ⌈n/e⌉. Example: ℤ/4 has exponent 4, while j = 2.

Old → new:
- Conventions: "`j = ⌈n/e⌉` (the exponent of the additive group of R)" → "`j = ⌈n/e⌉`, the least integer with `p^jR = 0`, so that the additive group of R has exponent `p^j`".
- Layer 1 Examples, the same pattern: "For ℤ/p^n the exponent is j = n" → "j = n, the additive group has exponent p^n".
- New §1.5 Check with three cases: ℤ/4 (exponent 4 = 2^j), 𝔽_2 (2 = 2^1), and the ramified case `ℤ_2[√2]/(√2)³` (j = 2, exponent 4, where j = n would give 8).

Nothing else uses j as an additive exponent. In particular [j]_p, B(p,e,n) and every bound of §§1.5, 9.5 and 9.6 are unchanged.

## F03 (P3) — applied

Verified. The bases are in §9.4 (ordinary basis and Nygaard basis), and §9.5 is even vanishing. Layer 4 ends at §4.3.

Old → new: in the Layer 8 Examples, "(Layer 9, §9.5)" → "(§9.4)". `cited_for` arrays: the stale 4.4 → 4.3 (hesselholt-axes, amm-perfectoid, riggenbach-cusp); speirs-axes → 4.1–4.3; stale entries dropped (hn-cusp 4.4, hesselholt-cusp-polytopes 4.3, riggenbach-cusp 6.2); applications that were missing added. §4.3 now cites riggenbach-cusp line 152.

The riggenbach-cusp locator was added because no layer cited that source. Line 152 makes the same homotopy-invariance step as hn-cusp line 101.

A script check confirms that every numeric cited_for id is now a heading, and that every `§n.m` without a roadmap name in the README resolves to the heading that holds the content.

## Adversarial pass on changed statements

| Statement | Instances | Values computed | Result / change |
| --- | --- | --- | --- |
| §8.2 Check, package of 𝔽_p in weight 0 | A = ℤ_p, R = 𝔽_p | Δ̂ = ℤ_p, N^{≥n} = p^nℤ_p (complete), φ = Frobenius of W(𝔽_p) = id, can = id on N^{≥0}. fib(id − id) = fib(0) = ℤ_p ⊕ ℤ_p[−1]. Étale: H⁰(Ẑ;ℤ_p) = ℤ_p, H¹ = Hom(Ẑ,ℤ_p) = ℤ_p. TC: ℤ_p(i)(𝔽_p) = 0 for i ≥ 1 (can − φ_i: p^ia ↦ (p^i − 1)a is a bijection), so TC_{−1}(𝔽_p) = H¹(ℤ_p(0)) = ℤ_p | Pass |
| Same Check, can-only variant | R = 𝔽_p | fib(id) = 0 ≠ ℤ_p ⊕ ℤ_p[−1] | Discriminates |
| Negative control, ℤ_p | A = R = ℤ_p | Actual cofib(φ) = ℤ_p[−1] (supplier §4.31). Model with φ = id: cofib(id) = 0 | Excludes the false model |
| Unit package (unchanged) | C_{ℤ_p} | ℤ_p(0) = fib(0) = ℤ_p ⊕ ℤ_p[−1]. Nygaard filtration is the step filtration, not p^nℤ_p, so this is neither the 𝔽_p package nor the ℤ_p package | Consistent with the new control |
| Additive exponent p^j | ℤ/4 (e=1, n=2); 𝔽_2 (n=1); ℤ_2[√2]/(√2)³ (e=2, n=3); ℤ/9 (p=3, n=2) | j = 2, 1, 2, 2. Exponents 4, 2, 4, 9 equal p^j. Minimality: 2·1 ≠ 0 in ℤ/4; (√2)² ≠ 0 mod (√2)³; 3 ≠ 0 in ℤ/9 | Pass. j itself would give 2, 1, 2, 2; j = n would give 8 in the ramified case |
| Layer 1 Examples, ℤ/p^n | e = 1 | j = n, exponent p^n, B = p²[n]_p/(p−1) = p²(p^n − 1)/(p−1)² | Pass |
| §4.3 locator riggenbach-cusp line 152 | text at line 152 | Cites p-adic homotopy invariance (AMM22 Theorem 1.5) to identify relative with birelative fibre, the same step as hn-cusp line 101 | Locator supports the claim |
| §9.4 reference from Layer 8 Examples | ℤ/p^n over (ℤ_p⟦z⟧, z ↦ p) | Δ_{R/A} = A{z^n/E}^∧ (§8.3 (2), PrismaticCohomology §2.13). §9.4 gives the basis with d·a = z_0^n. §9.5 has no basis | Reference corrected |

## Checks run

- **Elaboration.** `lake env lean packages/RefinedTraceMethodsPartII/Suggested.lean` was run from the content checkout. Exit 0. The only warnings are `declaration uses sorry` at lines 61, 69 and 77, the three headline theorems. The file imports only `import Mathlib`, so no Tau Ceti build was needed.
- **Signature probe.** I put `#check @name` for all six declarations in one scratch file (`cuspCount`, `cuspTruncationSet`, `cuspCoprimeSet`, `ncard_cuspTruncationSet`, `ncard_cuspCoprimeSet`, `card_noCyclicRepetition`) and elaborated it once. Exit 0. All binders are as in the README:
  - both cusp theorems keep `2 ≤ a`, `2 ≤ b` and `a.Coprime b`;
  - the word theorem keeps `1 ≤ m` and allows d = 0.

  Nothing changed: `Suggested.lean` was not edited in this round.
- **Dependency check.** Output, verbatim:

```text
depcheck: 236 roadmaps, 2145 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve` on the edited README reports no cross-roadmap citation and no Lean name found nowhere. The earlier `BigWitt.TruncationSet` lead no longer appears.
- **House style.** The edited text contains no LaTeX delimiters and no machine paths.

## Notes for the maintainer

- **Suppliers.** The new citations are PrismaticCohomologyPartII §§4.18, 4.29 and 4.31 (their Checks). They were read at the head of that roadmap's open pull request. Layer 8 already depended on all three sections (§8.3 *Needs:* and Layer 8 Dependencies), so this round adds no new supplier edge.
- **Ownership and renaming.** No ownership changed and no Lean name changed. No other roadmap cites a changed id, because only Checks, a convention clause and an internal reference changed.
- **Gaps.** The `gaps` list of `design/plan.json` is unchanged. Both gaps are still declared, and both still appear under "Exact supplier contracts".
- **Ownership against open pull requests.** I checked only through the brief's tools (`roadmaps show` for PrismaticCohomologyPartII and PrismaticCohomologyPartIII at their heads). The repairs introduce no new object that another roadmap could own.
- **Untrusted text.** The review contained no instruction-like or suspicious text.
