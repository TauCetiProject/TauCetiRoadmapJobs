# Repair report: red-team round 1 of GeometricFreyMazur

Two reviews were merged: review a (`RT-GeometricFreyMazur_r1a`, findings F01–F04) and review b (`RT-GeometricFreyMazur_r1b`, findings F01–F02). They overlap at one locator, `BT16 line 537`, which F04 of review a and F02 of review b both raise. It is settled once, under F04 of review a, and F02 of review b refers to that section for it.

## F01 (P1) — applied

Review a (`RT-GeometricFreyMazur_r1a`), finding F01.

§1.5 proof route: "The incident p triangles give the full local disc" → "p fundamental domains Δ₂,₃,ₚ, that is 2p incident triangles of Σ, each of angle π/p, fill 2p·π/p=2π". The witness holds: T₂,₃,ₚ has angle π/p at iy_p, and Δ is T together with its reflection (BT16 lines 427–430). I also added a §1.5 Check for p=7: seven triangles fill π, fourteen fill 2π.

## F02 (P2) — applied

Review a (`RT-GeometricFreyMazur_r1a`), finding F02.

The `cyclic-surface-resolution-and-contraction` gap (README "Exact supplier contracts" and the `needs` field in `design/plan.json`, kept identical) is now split by hypothesis:
- Hirzebruch–Jung resolution for normal projective surfaces with isolated 1/n(1,a) points, n≥2, gcd(a,n)=1.
- An extension of SchemeAndStackFoundations §4.13 `bertini_smoothness` to smooth **connected** projective surfaces.
- Castelnuovo contraction on smooth projective surfaces.

Both witnesses were valid against the old wording: on a nonreduced plane every section is nonreduced, and on ℙ²⊔ℙ² every section is disconnected. The applications satisfy the new hypotheses: X×X in the worked example "The big-diagonal bound", and Z(p), whose CM and singular-bicusp points are finite (§0.5, §10.3).

## F03 (P3) — applied

Review a (`RT-GeometricFreyMazur_r1a`), finding F03.

- **§3.4:** I kept the tangent-plane Check and replaced the two restating Checks with computed ones on the H×H lift with R(z)=−z̄. The pair (1+i,−1+i) lies on T̄₁ and (1+i,1+i) does not. Applying c₂ twice returns the starting pair. Conjugating both factors preserves the diagonal, so it does not give T̄₁. I wrote these in the half-plane lift rather than in the reviewer's "conjugation-compatible chart", because for p≡3 mod 4 conjugation can swap the components and leave no fixed point on which to centre such a chart.
- **§6.3:** I replaced the third Check with B=ℙ¹, h=id, f = squaring followed by the normalization of the diagonal component of H₁. Then φ(1)=φ(−1) and φ has degree 2. The reviewer's "ℙ¹≅H₁" became "normalization", because H₁ need not be smooth.

## F04 (P3) — applied

Review a (`RT-GeometricFreyMazur_r1a`), finding F04.

§2.1: "BT16 line 537" → "BT16 lines 533–534". Line 537 is the page-14 marker, and the definition is at lines 533–534 on printed p. 721.

## F01 (P3) — applied

Review b (`RT-GeometricFreyMazur_r1b`), finding F01.

§2.1 now has three Checks:
- J has height 1, while its Frobenius norm and its ℓ² operator norm are both 2.
- For [[2,1],[1,1]], the inverse [[1,−1],[−1,2]] has the same height 2. The negative control diag(2,1) has an inverse of height 1, so the identity needs SL₂.
- J²=2J attains h(MN)≤2h(M)h(N), and for M=N=I the bound reads 1≤2.

## F02 (P3) — applied differently

Review b (`RT-GeometricFreyMazur_r1b`), finding F02.

- **Line 537:** settled under F04 of review a.
- **§3.5 (Remark 16):** line 746 → 747, as proposed.
- **§5.7:** line 1280 is the page-31 marker. I cite line 1283 instead of the proposed 1247, because the claim (Hecke correspondences preserve h_Y, and the compact and cusped metrics compare off the cusps) is at lines 1283–1292. Line 1247 is only the start of the proof.
- **Point-ball worked example:** line 1280 → 1330 instead of the proposed 1282. The shell bound E with Proposition 23 starts at line 1330 on p. 739.

## Checks

- **Elaboration** (`lake env lean packages/GeometricFreyMazur/Suggested.lean`, run from the content checkout): exit 0. The only output is two `declaration uses 'sorry'` warnings, at lines 54 and 75. `Suggested.lean` is unchanged by this round, so the three elaborated signatures in the worker's signatures file still apply and none has lost a binder. No `#check` rerun was needed.
- **Dependency check:** `depcheck: 56 roadmaps, 647 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- **`roadmaps resolve`:** no cross-roadmap citation and no Lean name found nowhere. The newly cited `bertini_smoothness` resolves on main, at SchemeAndStackFoundations §4.13.

## Adversarial pass on changed text

| Statement | Instances | Values | Result |
|---|---|---|---|
| §1.5 cusp star | p=7, 11 | 14·π/7=2π, 22·π/11=2π; p triangles give π | corrected |
| §2.1 Checks | J, [[2,1],[1,1]], diag(2,1), I | ‖J‖_F=√4=2, ‖J‖_op=2 (eigenvalues 2, 0); h(M⁻¹)=2; h(diag(1/2,1))=1≠2; h(J²)=2=2·1·1; 1≤2 | true |
| §3.4 Checks | (1+i,±1+i) | −conj(1+i)=−1+i; c₂∘c₂=id; (c₁×c₂)(1+i,1+i)=(−1+i,−1+i) is on the diagonal | true |
| §6.3 Check | B=ℙ¹, n=1 | gon(ℙ¹)=1, h=id is admissible; f has degree 2, f(1)=f(−1) | refutes the degree-one claim without birationality, as intended |
| Surface gap | ℙ² over ℂ[ε]; ℙ²⊔ℙ²; X×X; Z(p) | the first two are excluded by "smooth connected"; X×X is smooth and connected; Z(p) is normal with isolated points of type n∈{2,3,p} | scoped |

## Notes for the maintainer

- No Lean names changed, and no gap slug changed.
- The surface gap now explicitly asks SchemeAndStackFoundations to extend its own §4.13 `bertini_smoothness` (connectedness, transversality to given curves, avoidance of a finite set) rather than to restate it.
- Ownership: no new construction was introduced, so the ownership position of earlier rounds is unchanged.
- No suspicious instructions were found in the review texts.
