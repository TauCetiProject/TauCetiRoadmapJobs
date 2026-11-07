# FIX-PKG-PadicDifferentialEquationsAndRigidCohomologyPartII~2

Repair round for the findings of `REV-PKG-PadicDifferentialEquationsAndRigidCohomologyPartII`
(six findings, F01–F06). Files edited: `packages/PadicDifferentialEquationsAndRigidCohomologyPartII/README.md`,
`packages/PadicDifferentialEquationsAndRigidCohomologyPartII/Suggested.lean` (module docstring only),
`packages/PadicDifferentialEquationsAndRigidCohomologyPartII/design/plan.json` (the `needs` string of
the gap `legendre-kummer-extension` only; the rest of the file is byte-identical, checked by parsing
both versions and comparing everything outside `gaps`). `metadata.toml` and `sources.toml` are
unchanged.

## F01 (P2) — applied

Verified: the parent README at its open head has `### RD.3.48` followed by `### RD.3.51`; no
`RD.3.50`. Étale descent for overconvergent F-isocrystals is `### RD.5.8c` (smooth separated `X` of
finite type, Frobenius structures present; (1) descent along étale surjective maps, (2) the
2-fibre-product description along étale dominant separated maps). Old → new: all eight `RD.3.50`
citations replaced by `RD.5.8c` (Scope paragraph, supplier contracts, MS.2.3, MS.5.3, MS.6.5, MS.6.7
*Needs* lines, and the MS.2, MS.5, MS.6 Dependencies); `RD.5.8c` has its own supplier bullet stating
both parts and that every use here is on a smooth `X`; `RD.3.41` keeps its bullet (pushforward,
exactness, adjunction, rank). `roadmaps resolve` now reports no citation found nowhere.

## F02 (P2) — applied

Verified by recomputing the five Checks the review names under Convention 4 (`O(1)` has Frobenius
`q⁻¹`, slope `−1`): with `E†(1)` of slope `−1`, `Top(E(1) ⊕ E(0)) = E(0)` and the kernel of
`M† → Top` is `E†(1)`, not the slope-zero line; MS.0.6 gives `b − a = 1`, the third case. Old → new:
in the seventeen Check and Example passages (MS.0.4, MS.0.6, MS.0.10, MS.0.11, MS.1.4, MS.3.1, MS.3.3,
MS.3.4, MS.3.5, MS.3.6, MS.3.9, MS.3 Examples, MS.4.2, MS.4.3, MS.4.4, MS.4.7) `E(1)`, `E†(1)`,
`O(1)` → `E(−1)`, `E†(−1)`, `O(−1)` (slopes 1 and 0). Convention 4 now defines `O(n)`, `E(n)`,
`E†(n)` as the constant line with Frobenius multiplied by `q^(−n)`, slope `−n`, and identifies the
split sums with the `L_1 ⊕ L_0` of the Examples. The three passages that already used the convention
correctly (Convention 4, the MS.4.8 Check, the worked logarithmic module) are unchanged. The MS.0.6
Check now states `a = 1`, `b = 0` explicitly.

## F03 (P2) — applied

Verified at DAD lines 648–655: the proof of Proposition 4.2.12 takes `inf{‖f_n(m)‖ : m ∈ Q_{W,n} ∖
pQ_{W,n}} = p^{−s_n}` from compactness and deduces `p^{s_n+i}P_W ∩ f(Q) ⊆ p^i f(Q)`. For
`Q_{W,1} = A_1 ⊂ W⟨u⟩`: `ū_1^j = p^j u^j ∉ pA_1` with `‖ū_1^j‖ = p^{−j} → 0`, so the infimum is `0`;
and `p^{s+i}u^{s+i} ∈ p^{s+i}W⟨u⟩ ∩ A_1` but `∉ p^iA_1` for `i ≥ 1`, for every `s`. No section of this
roadmap, of the parent, or pinned declaration supplies a replacement bound. Old → new: MS.5.6
(integral models), MS.5.7 (Tor bound) and MS.5.8 (affine–generic hull comparison) deleted; the
second-proof sentence in the curve theorem, the MS.5 Examples sentence on `A_1` and the worked example
*Integral models* deleted; "Not in this roadmap" lists D'Addezio's integral models and
Proposition 4.2.12 with the reason; the Corrections entry stays, now stating both failing steps and
that the proposition is unused. Layer table, Scope, Conventions 1, "How to read the build" and the
MS.5 intro no longer mention integral models or a generic route. MS.5.9–MS.5.11 renumbered to
MS.5.6–MS.5.8 after the consumer grep: `roadmaps grep 'PadicDifferentialEquationsAndRigidCohomologyPartII'`
and `roadmaps grep 'MS\.5\.(6|7|8|9|10|11)'` match nothing on main or in any open pull request, no
board package cites this roadmap, and `design/plan.json` contains no `MS.5.n` reference at all (the
review's remark that the gap `docile-curve-restriction` cites MS.5.11 there is not borne out: its
`section` is `RD.5.103`). Every internal citation (Downstream consumers, supplier bullet for
RD.6.42, MS.5 Dependencies, the Lean docstring) follows the new numbers. MS.5 Dependencies drops
RD.0.1 and RD.0.38 (only MS.5.6 used them) and lists RD.6.42 (the MS.5.8 Checks). MS.5.4 and MS.5.5
are kept: MS.5.5 is D'Addezio's Proposition 4.2.2, a theorem with a complete route through MS.0.4
and MS.5.4, and MS.5.4 is its input.

## F04 (P2) — applied

Verified at TSU lines 1126–1146: for `p ≡ 1 mod 4` the eigenvalues of Frobenius on
`H¹_rig(C, L†(χ))` are `π_p²` and `π̄_p² = p²/π_p²` (`ρ = 1`), both of complex absolute value `p`,
so the Frobenius-fixed part of this `H¹` is zero; `Ext¹(O(π_p²), L†(χ))` in F-`Isoc†(C)` is
`H¹_rig(C, L†(χ) ⊗ O(π_p²)^∨)^{F=1}` (the `H⁰` term of the extension sequence vanishes because `L†(χ)`
is irreducible of rank two), the `π_p²`-eigenspace, which is one-dimensional since `π_p² ≠ π̄_p²`
(`π_p = a + b√−1` with `ab ≠ 0`). Old → new: the gap sentence under "Exact supplier contracts", the
MS.2.8 proof route and the `needs` string in `design/plan.json` now say "classified by the
`π_p²`-eigenspace of Frobenius on `H¹_rig(C, L†(χ))`, equivalently by
`H¹_rig(C, L†(χ) ⊗ O(π_p²)^∨)^(F=1)` …, which is one-dimensional"; a negative-control Check in
MS.2.8 records that the fixed part of the untwisted `H¹` is zero.

## F05 (P3) — applied

Verified in `lake-manifest.json` of the content checkout: Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2`,
Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`. Old → new: the two hashes in the supplier
contract headings replaced.

## F06 (P3) — applied

Verified at OHK lines 1938–1941: Theorem 7.6(ii) reads `Sol_λ(M) = S_{λ−λmax}(Sol(M))` with `S_•`
indexed by slope, while Convention 4's `S_i` is indexed by step (`S_min = S_1`). Old → new: MS.1.8
(statement, proof route, Check), MS.1.9, the MS.1 Examples and the worked logarithmic module write the
slope-indexed filtration as `S_(≤μ)(Sol)`; Convention 4 says that `S_i` is step-indexed and
`S_(≤μ)(V)` slope-indexed. On the logarithmic module the Check now reads `Sol_0 = S_(≤0)(Sol) = K·f_1`,
`Sol_1 = S_(≤1)(Sol) = Sol`.

## Checks

- Elaboration: `lake env lean <Suggested.lean>` from the content checkout, after the docstring
  edit: exit 0, no output. The file declares nothing (no headline is statable at the pins, as the
  docstring says), so there is no `#check @name` to run and no binder to compare; nothing changed
  in that respect.
- Depcheck:

      depcheck: 236 roadmaps, 2272 edges, 0 problem(s)

  No UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Gate failures listed in the brief: none.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Convention 4 twist `O(n)` | `n = 1`, `n = −1`, `n = 0` | Frobenius `q⁻¹`, `q`, `1`; slopes `−1`, `1`, `0`; dual of `O(1)` is `O(−1)` (MS.4.8 Check unchanged) | consistent | new sentence |
| MS.0.4 Check | `E†(−1) ⊕ E†(0)`, `P = E(0)` | `λmax(M) = 1 ≠ 0 = slope(P)`; projection kills `E†(−1)` | no injective map, as stated | sign |
| MS.0.6 Check | sub `E(−1)`, quotient `E(0)` | `a = 1`, `b = 0`, `b − a = −1 < 0`; logarithmic module `a = −1`, `b = 0`, `b − a = 1` | first case / third case | sign, values added |
| MS.0.10 Check | `E(−1) ⊕ E(0)` | `λmax = 1`; quotient `E(0)` has `0 < 1` | detects non-PBQ | sign |
| MS.0.11 Check | `(E(−1) ⊕ E(0)) ⊗ U`, `U` unit-root | `B = M ⊗ U`, slopes `1, 0` | not PBQ | sign |
| MS.1.4 Check | `E†(−1) ⊕ E†(0)` | `P_1` = largest PBQ sub of slope `1` = `E†(−1)` | filtration `E†(−1) ⊂ M†` | sign |
| MS.3.1 Check | `E†(−1) ⊕ E†(0)` | `Top = E(−1)`; kernel of `M† → Top` = `E†(0)`, slope `0` | slope-zero line in kernel, as stated | sign |
| MS.3.3, MS.3.4, MS.3.5 Checks | `N† = E†(−1) ⊕ E†(0)`, `P = E(0)`; `Sat` | `λmax(N) = 1 ≠ 0`; `Sat = E†(−1)` (image in `Top = E(−1)`) | as stated | sign |
| MS.3.6 Check | `M† = N† = E†(−1) ⊕ E†(0)`, `h = id` | grades `E†(−1)`, `E†(0)`, both saturated; recovered map `id` | as stated | sign |
| MS.3.9 Check | `O(−1) ⊕ O(0)` | bounded, two slopes: not PBQ; kernel `O(0)` of the top map: not saturated | neither | sign |
| MS.4.2 Check | `N† = O(−1) ⊕ O(0)`, `P = O(0)` | kernel `O(−1)`; `λmax(N) = 1 ≠ 0` | separates the hypotheses | sign |
| MS.4.3, MS.4.4 Checks | `O(−1) ⊕ O(0)` | fails PBQ and saturation; `h = id` recovered as `id` | as stated | sign |
| MS.4.7 Check | `O(−1) ⊕ O(0)`, quotient `O(0)` | kernel slope `1 > 0` | strict inequality fails, as stated | sign |
| MS.1.8 with `S_(≤μ)` | logarithmic module, `λmax = 0`; `λ = 0, 1, −1` | `S_(≤0)(Sol) = K f_1`, `S_(≤1)(Sol) = Sol`, `S_(≤−1)(Sol) = 0 = Sol_{−1}` | equality at each `λ` | notation |
| MS.1.9 with `S_(≤−λmax)` | rank-one constant with Frobenius `a`, slope `s` | `Sol` has slope `−s = −λmax`; `S_(≤−s)(Sol) = Sol = Sol_0` | isoclinic of slope `−λmax` | notation |
| Gap `legendre-kummer-extension` | `p ≡ 1 mod 4`, `p = 5`: `π_5 = 1 + 2√−1` | eigenvalues `π_5² = −3 + 4√−1`, `π̄_5² = −3 − 4√−1`, `|·| = 5`; fixed part of `H¹` = 0; `π_5²`-eigenspace dim 1 | nonsplit extension exists | gap text |
| MS.2.8 new Check | `p ≡ 3 mod 4` (control) | slopes `1, 1`, eigenvalues `√−1·π_p²`, no unit root | no extension of a unit-root line, as the existing Check says | — |
| Corrections entry (DAD 4.2.12) | `A_1 ⊂ W⟨u⟩`, `n = 1`; `A_n`, general `n` | `ū_1^j = p^j u^j ∉ pA_1`, norm `p^{−j}`; `ū_n^j = p^j u^{nj} ∉ pA_n` (`pA_n` needs `p^{j+1}` on `u^{nj}`); `p^{s+i}u^{s+i} ∉ p^iA_1` for `i ≥ 1` | both steps fail | entry reworded |
| MS.5.7 (curve theorem) after deletion | route inputs MS.4.2, MS.5.3, MS.5.4; proper `C`; ordinary rank-two | hull `= N` on proper `C`; `S_min` of the rank-two hull `= N` | route unchanged, no input from MS.5.6–MS.5.8 | sentence deleted |
| MS.5.6 (étale reduction) after renumbering | `C = A¹`; Artin–Schreier cover | identity reduction; wild at `∞` allowed | unchanged | number |
| Supplier bullet RD.5.8c | MS.2.3 (smooth curve), MS.5.3 (smooth `X`), MS.6.5/MS.6.7 (smooth connected `X` over `𝔽_q`) | each base is smooth separated of finite type with Frobenius structures | hypotheses of RD.5.8c met | citation |

## For the maintainer

- Section numbers changed: MS.5.9 → MS.5.6, MS.5.10 → MS.5.7, MS.5.11 → MS.5.8; MS.5.6–MS.5.8 of the
  previous head no longer exist. No roadmap on main, no open pull request and no board package cites
  any `MS.5.n` of this roadmap (grepped at the index of 2026-11-05); the Downstream consumers
  paragraph and the Lean docstring use the new numbers. `design/plan.json` outside `gaps` was not
  editable this round and never mentioned these numbers.
- The parent's étale descent is cited as `RD.5.8c` at its open head; if the parent renumbers before
  merge, the nine citations here follow it.
- The gap `legendre-kummer-extension` now asks the parent for the `π_p²`-eigenspace statement; the
  other seven gaps are unchanged.
- Ownership against open pull requests was checked through `roadmaps grep` at the index of
  2026-11-05 for the renumbered sections only; the review's ownership sweep for the objects stands.
- No source needed fetching; `needs-references.toml` was not created.
