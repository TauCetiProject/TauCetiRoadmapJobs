# FIX-PKG-HigherHidaAndColemanTheory~7

Review settled: `REV-PKG-HigherHidaAndColemanTheory~6` (three findings). All three were verified against the cached author editions and applied.

## F01 (P2) — applied

Verified: BP-Hida line 1202–1203 (Theorem 2.7.4, p. 24) assumes a strict dynamical compactification; §2.7 did not.

Old → new (§2.7): "Suppose C and X are smooth over S=Spec A with A Artinian, X is pure…" → adds "the correspondence admits a strict dynamical compactification over S (§2.2)". It also proves that transposition preserves strictness, gets perfectness from §2.4/§2.6, adds a proof-route step and *Needs* §2.2, §2.4, and adds three Checks: the affine-line negative control, the proper point and a ℙ¹ degree witness.

Pattern sweep: §§2.4, 2.5 and 2.6 already state strict dynamics. §4.8 is the only consumer of §2.7. Its route now says the strict-dynamics hypothesis comes from §3.3, and §3.3 was added to its *Needs*.

## F02 (P3) — applied

Verified: Pilloni-Singular line 4118 (before Proposition 13.3.2.1, p. 90) defines the colimit over w′<w. Lines 4122–4125 say the fixed-w version is wrong. Lines 4017–4032 (Corollary 13.2.4.2 and Remark 13.2.4.1, pp. 87–88) give radius-independence on finite slopes.

Old → new (§9.6): adds the order of the flag neighbourhoods (§12.3, Lemma 13.2.2.1) and defines F^(η,w−)=colim_(0<v<w)F^(η,v) and C(n,ε,w−,η,r), cuspidal version included. (4) now gives exactness for the colimits, the exact triangle (Corollary 13.3.2.1) and the finite-slope identification C(w−)→C(w), and uses these in the deduction. Also adds the ℚ₂ radius-loss Check.

Pattern sweep: §6.5 already uses germs on neighbourhoods, which is a colimit, and §§9.7–9.8 use only the fixed-w comparison stated in §9.6. No other fixed-radius exactness claim was found.

## F03 (P2) — applied

Verified: BP-Coleman lines 54–58 (contents) list §§5.5–5.9 with the same subjects in the same order as the package's §§5.5–5.9. The internal edges (5.6→5.7, 5.5→5.8, 5.7→5.8) do not force that order.

Old → new (Layer 5): §5.9 → §5.5 "Proved local slope bounds". §§5.6+5.7 → §5.6 "Complementary degree ranges", parts (a) and (b). §§5.5+5.8 → §5.7 "Bruhat-filtered Cousin complex and interior cohomology", parts (a) and (b). §5.10 → §5.8. Every statement, API bullet and Check is kept. An opening paragraph and a former-numbering table were added.

Internal references updated: How-to-read, §6.8, §6.9, Layer 6 dependencies, §7.2, §7.5, the §7.6 text and *Needs*, Layer 7 dependencies, §8.5, Layer 8 dependencies, §9.2, §9.9, Layer 9 dependencies, and the Suggested.lean docstring (§5.10 → §5.8). In §1.2 the ambiguous "root-cone comparison of §5.11" now reads "BP-Coleman §5.11".

Pattern sweep: the Layer 2 run §§2.3–2.7 follows BP-Hida §§2.4–2.7, but each section's *Needs* names the one before (2.4←2.3, 2.5←2.4, 2.6←2.5, 2.7←2.6). That order is forced by the dependencies, so it is kept. No other run of consecutive source sections was found.

## Checks run

- `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean` (from the content checkout): exit 0, no output, no warnings. No Tau Ceti object build was needed.
- Mechanical `#check @name` comparison: the file declares nothing, so the set is empty and there are no binders to compare. The only Lean change is the docstring locator §5.10 → §5.8.
- Dependency check output:

```text
depcheck: 240 roadmaps, 2194 edges, 0 problem(s)
```

  There are no UPWARD, CYCLE or moved lines.
- `roadmaps resolve` on the README: no cross-roadmap citations and no Lean names found nowhere.
- Hygiene: no LaTeX delimiters and no machine paths in README, Suggested.lean or sources.toml.
- sources.toml:
  - Pilloni-Singular locator gains §12.3, Lemma 13.2.2.1, Corollary 13.2.4.2, Remark 13.2.4.1 and Lemma 13.3.2.1.
  - BP-Coleman `cited_for` drops the section ids 5.9 and 5.10, which no longer exist.
  - No new key and no missing-reference request.
- Gate failures listed in the brief: none.

## Adversarial pass (new or changed statements)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §2.7 strict-dynamics hypothesis | Identity on 𝔸¹_(𝔽₂), Xbar=ℙ¹, D+={∞}, D−=∅ | At ∞: (u^(ka))⊆(u^(kb)) fails for a<b, so not strict. K+−=𝔽₂[t], T=id invertible, ordinary part 𝔽₂[t], dimension ∞ | Hypothesis needed; added as a negative-control Check |
| §2.7 transposition | Swap p1↔p2 and D+↔D− | Transposed conditions are p1*D−≤s p2*D− and p2*D+≤s p1*D+, the original two | Strictness preserved; stated |
| §2.7 degenerate cases | Point over 𝔽₂, T=1 and T=0; point over ℤ/4, T=1 and T=2 | 𝔽₂×𝔽₂→𝔽₂ perfect; 0; ℤ/4 self-dual; 2²=0 so both sides 0 | Consistent |
| §2.7 shift | ℙ¹_(𝔽₂), d=1, F=O | RΓ(O)=𝔽₂[0]; RΓ(Ω¹[1]) has H^(−1)=0, H^0=𝔽₂; without [1] the dual sits in degree −1 | Shift Ω^d[d] confirmed; Check added |
| §2.7, non-local A | A=𝔽₂×𝔽₂ | Decomposes into two local factors | Perfectness via §2.6 factorwise; stated |
| §9.6 colimit direction | Flag condition modulo p^w (source line 3455) | Larger w gives a smaller disc, so restriction runs F^(v)→F^(v′) for v<v′ | Direction stated |
| §9.6 radius loss | f=Σ2^m z^(2^m−1) over ℚ₂ | Coefficients of f: 2^(−m)→0. Antiderivative coefficients 1 do not →0. On radius ρ<1: ρ^(2^m)→0 | Fixed-w sequence not right exact; colimit needed; Check added |
| §9.6 kernel at k=0 | d/dz on 1, z | Gives 0 and 1; z has antiderivative z²/2 at p=2 | Kernel = constants = image of Ω(0,r) |
| §9.6 colimit→w on finite slope | Corollary 13.2.4.2 with n′=n, ε′=ε, v≤w | Restriction maps commute with U; slope-<h parts constant; slope factor invertible on the complements | Isomorphism on slope-<h parts for every h |
| §9.6 thresholds unchanged | k=0 and k=3 | (−2,1) and (1,4) | Existing Checks still hold |
| §5.6 ranges | GL₂, d=1, w=id | Cuspidal [0,0]; dual degrees d−i give canonical [ℓ∓,d]=[0,1] | Consistent with the §5.7 Check H_id,!^1=0 |
| Layer 5 order | New dependency edges | 5.5←{5.3, 1.2}; 5.6←{5.3, 1.1}; 5.7←{5.3, 5.4, 5.6}; 5.8←{5.5, 5.6, 5.7, 1.2} | No edge points to a later section |
| Downstream references | §§6.8, 6.9, 7.2, 7.5, 7.6, 8.5, 9.2, 9.9 | Old 5.5/5.8→5.7, 5.7→5.6, 5.9→5.5, 5.10→5.8 | All updated; no stale own §5.9 or §5.10 remains |

## Ownership and overlaps

No new construction was introduced. The radius colimit is a local definition inside §9.6's Klingen family, which this roadmap owns. Strict dynamics is §2.2's existing notion. The Layer 5 change moves no ownership.

Ownership against the open pull requests was checked with `roadmaps grep`. No other roadmap states the Klingen radius colimit. PadicFamiliesPartII relies on germs of radii through this roadmap's §6.6 (unchanged).

## Notes for the maintainer

- **Renumbered ids that other roadmaps cite.** PadicFamiliesPartII cites this roadmap's former §5.5, §5.6 and §5.8, at the head of its open pull request and in `packages/PadicFamiliesPartII/README.md`:
  - its §7.5 cites §5.5;
  - its §7.6 cites §5.6 and §8.5;
  - its §8.1 cites §5.5 and §5.8;
  - its §9.4 cites §8.3 and §5.5;
  - its Layer 7, 8 and 9 dependency lists also cite these ids;
  - at the open head, its Scope and its Layer 7 standing hypotheses also cite the ranges §§5.2–5.5 and §§5.1–5.5.

  This README's former-numbering table maps old §5.5 → §5.7(a) and old §5.8 → §5.7(b). §5.6 keeps its number and its content, with the duality theorem added as part (b). Those citations should be updated when that roadmap is next revised; the table keeps them resolvable until then. No roadmap on main cites these ids.
- **Lean names.** No Lean name changed. Suggested.lean has no declarations; only its docstring locator changed.
- **design/plan.json.** Only its `gaps` list may be edited here, and no gap changed. Its node records still carry the former Layer 5 section labels.
- Nothing in the review text was suspicious.
