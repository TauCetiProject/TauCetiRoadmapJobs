# FIX-PKG-HigherHidaAndColemanTheory~8

Review settled: `REV-PKG-HigherHidaAndColemanTheory~7` (two findings). I checked both against the cached BP-Coleman author edition, and both are applied.

## F01 (P1) — applied

Verified against BP-Coleman. Definition 5.4.10 (line 5216–5218, p. 111) asks for B(m,cl(n+s))⊂Z∩U and U⊂B(Cm,−1). Example 5.4.11 (line 5230, p. 112) says the standard pairs satisfy this for every s≥0. Take GL₂, w=id (one negative-root coordinate z, by Lemma 3.1.3/Corollary 3.3.7, lines 1543–1563 and 1852), p=3, C=2, m′≥3 and the depth-one pair U=B(1,−1), Z=B(cl 0,cl 1). Then Z∩U=U={v₃(z)>1}. At m=0 the lower bound fails at z=3. For every m≥1, U⊂B(2m,−1)⊂B(2,−1)={v₃(z)>2} fails at z=9. So the reviewer's witness holds.

The relative bound is the correct repair. Corollary 5.3.4 (line 4963–4964, p. 106) only needs U_(m+s)∩Z_n⊂U⊂U_m and U∩Z_(n+s)⊂Z∩U⊂Z_n. The estimates in the proof of Theorem 5.4.12 (lines 5260–5264) give B(Cm,−1)⊂U_m, so U⊂U_m. Then U∩Z_(n+s)⊂U∩B(m,cl(n+s)) follows. The relative bound is implied by the printed one, so no pair the source allowed is lost.

Old → new:
- §5.2: "B(m,cl(n+s))⊂Z∩U" → "U∩B(m,cl(n+s))⊂Z∩U", and the same in the − case. Adds the derivation through Corollary 5.3.4.
- The standard-pair bullets now give m=n=0 and the same s, with the reason (Lemma 3.3.24, line 2102).
- The action bullet: "T^± action on every allowed pair" → "the s-th power acts; T^± is transported via §5.3".
- Finite-slope extraction now uses the s-th power. One GL₂ negative-control Check is added.

Pattern sweep:
- §6.2 had the same lower bound in both signs (Definition 6.4.7, line 7308/7317). Both are now relative, and a GL₂ analytic Check is added (n=1, m=l=0, s=1).
- In §5.3, "normalized t action is potent compact" → "s-th power … on an allowed pair (m,n,s)". Its proof route now cites Corollary 5.3.4.
- The E5 wording was updated, and E13 was added under Source issues.
- §§6.10 (the Z′=Z∪{x} Check) and 8.1–8.2 use only U and Z∩U, or the separate BP-Hida support pairs. They are unaffected.
- Layer 3 support pairs are a different construction.

I did not adopt one claim of my own. While checking, I found that the printed analytic definition is *not* vacuous: for m≥m′ the K_p-saturation of the depth-m disc is {v≥m′}, so the depth-m′ pair survives. The README states only the verified depth-one failure.

## F02 (P3) — applied

Verified: BP-Coleman line 2177 (§3.4, p. 45) defines min(t) and max(t) over Φ⁺, with no convention for Φ⁺=∅. The torus datum is used in the §7.6 Check ("For a torus datum, d=0 …").

Old → new:
- §5.2: "Fix t∈T++ with min(t)≥1, C=max(t)" → defines min and max over Φ⁺, cites the locator, and sets min(t)=max(t)=C=1 when Φ⁺=∅. In that case the flag variety is a point, every tube and every B is X, and the only allowed pair is U=Z=X.
- §6.2 now inherits C "including its rootless convention" and states B(n,n)=X there.
- Adds a rootless Check (N points: F^N in degree 0; for N=1 and t=1 the operator is the identity of F and its finite-slope part is F).
- Adds E14.

## Checks run

- `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean`, run from the content checkout: exit 0, no output, no warnings. No Tau Ceti module build was needed. `Suggested.lean` was not changed.
- Mechanical `#check @name` comparison: the file declares nothing, so the set is empty and there are no binders to compare.
- `roadmaps resolve` on the README: no cross-roadmap citations and no Lean names found nowhere.
- Dependency check output (the HEAD README gives the same count, so the edits added or removed no edge):

```text
depcheck: 240 roadmaps, 2187 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Adversarial pass on changed statements

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| §5.2 relative + bound, depth-one standard pair | GL₂, w=id, p=3, C=2, m′=4 | Z∩U={v>1}. Printed bound: m=0 needs {v>0}⊂{v>1}, false at v(3)=1. m≥1 needs {v>1}⊂{v>2m} (or ⊂B(2,−1)), false at v(9)=2. Relative bound with (0,0,1): U∩{v>0}={v>1}⊂Z∩U; {v>1}⊂{v>0}; B(1,cl 0)={v>1}⊂U | Printed bound false, relative bound true |
| Same, C=1 | t with v(α(t))=1 | Printed bound with m=s=1: {v>1}⊂{v>1}⊂{v>1} | Printed bound holds; the relative bound is weaker, so it holds too |
| Same, s=0 | U=B(0,−1), Z=B(cl 0,cl 0) | Z∩U=B(0,cl 0); m=n=s=0: every inclusion is an equality or ⊂B(0,−1) | Holds |
| §5.2 − bound, depth one | GL₂, w=long, positive coordinate u, C=2 | U(ℤ₃)⊂K translates u by ℤ₃, so for s≥0, B(·,s) is the set N_s of points at distance ≤3^(−s) from ℤ₃. U=B(−1,1)=N_1=Z∩U. Printed bound: n=0 needs N_0⊂N_1, false at a unit u∈ℤ₉ whose residue is not in 𝔽₃. n≥1 needs N_1⊂N_(2n), false at u=3η with η such a unit (distance exactly 1/3). Both are supersingular periods. Relative bound with (0,0,1): U∩N_0=U⊂Z∩U⊂B(cl 0,0); B(cl 0,1)=N_1=U⊂B(−1,0)=N_0 | Mirror failure and repair confirmed |
| Saturation used in the GL₂ Check | K=K_(p,m′,b) generators on z | Unit factor a/d: v kept. z/(1+cz) with v(z)>0: v(1+cz)=0. z+3^(m′)b: v kept if v(z)<m′. For r=−1, z=−1+3⁵ (v=0>−1) and c=1: v(z/(1+z))=−5 | So "0≤r<m′" is needed; the README states that range |
| Comparison via Corollary 5.3.4 | Abstract (U_m,Z_n,T^s) | U⊂B(Cm,−1)⊂U_m, so U∩Z_(n+s)=U∩U_m∩Z_(n+s)⊂U∩B(m,cl(n+s))⊂Z∩U. Also Z∩U⊂B(0,cl(Cn))⊂Z_n and U_(m+s)∩Z_n⊂B(m+s,cl n)⊂U | All four hypotheses hold |
| Standard + pair m=n=0 | Lemma 3.3.24(2),(4) | ]C[_(s,−1)⊂]C[_(0,−∞)⊂]X_w[ (Iwahori-stable); ]C[_(cl 0,cl s)⊂cl]Y_w[; intersection ]C[_(0,cl 0) | Holds for every s≥0 |
| Standard − pair m=n=0 | Lemma 3.3.24(3),(5) | ]C[_(−1,s)⊂]Y_w[; ]C[_(cl s,cl 0)⊂cl]X_w[; intersection ]C[_(cl 0,0); B(cl 0,s)⊂B(−1,s) (the inward point at radius 1 lies in the radius-p disc) | Holds |
| §6.2 analytic pair | GL₂, w=id, p=3, C=2, n=1, m′≥3 | U=B(1,−1), Z=B(cl 0,cl 1): Z∩U={v>1}=B(1,1); (m,l,s)=(0,0,1) as in §5.2 | Allowed; printed bound fails at z=3 and z=9 |
| C≥2 genericity | GSp₄ | v((2α₁+α₂)(t))=2·v(α₁(t))+v(α₂(t))≥3 | C≥3, so the failure is not confined to GL₂ |
| Rootless convention | Torus, N points, rank one | All tubes are the point, so B=X. The relative bound gives U⊂Z and X⊂U, so U=Z=X. RΓ=F^N[0]. N=1, t=1: operator 1, compact, finite-slope part F | Unique pair; matches the §7.6 Check |
| Rootless §6.2 | Same | B(n,n)=X, so the extra condition is vacuous | U=Z=X |

## Ownership and overlaps

`roadmaps grep` found no other roadmap, on main or at the open heads, that states the BP-Coleman allowed-support inclusions. PadicFamiliesPartII (open) cites this package's §§5.1–5.8 for "independence of the allowed support pair". That conclusion is unchanged; the definition now admits more pairs. No section id was added, removed or renumbered. E13 and E14 are new entries in the Source issues list. `plan.json` gaps and `metadata.toml`/`sources.toml` are unchanged: all locators are in the already recorded BP-Coleman edition.

## For the maintainer

- The source errors are recorded as E13 (BP-Coleman Definition 5.4.10/Example 5.4.11 and Definition 6.4.7, absolute lower bound) and E14 (§3.4, rootless extrema). Any roadmap that later restates BP-Coleman's allowed supports should use the relative bound.
- No name cited by other roadmaps changed.
