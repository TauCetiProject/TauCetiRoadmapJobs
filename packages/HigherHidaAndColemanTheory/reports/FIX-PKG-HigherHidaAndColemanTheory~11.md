# FIX-PKG-HigherHidaAndColemanTheory~11

Findings of `REV-PKG-HigherHidaAndColemanTheory~10` (three, all P3). All three verified against the source texts and the README, and applied. Only `packages/HigherHidaAndColemanTheory/README.md` changed (7 lines). `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## F01 (P3) — applied

§9.9 locator: "Theorems 5.7.3, 6.7.3 and 6.9.7, pp. 118–120, 166–167, 171–172" → "Theorem 5.6.1, p. 115; Theorems 5.7.2 and 5.7.3, pp. 118–119; Theorem 6.7.3, p. 167; Theorem 6.9.7, pp. 171–172". §5.5(b): "Theorems 5.7.1–5.7.3, pp. 117–120" → "pp. 117–119". §6.6: "Lemma 6.6.4 and its proof, p. 164" → "pp. 163–164".

Evidence (BP-Coleman page markers):
- Theorem 5.6.1 is at line 5377, on p. 115 (5346–5385).
- Theorem 5.7.1 is at line 5458, on p. 117.
- Theorem 5.7.2 is at line 5491, on p. 118, and its proof ends at line 5549, on p. 119.
- Theorem 5.7.3 and its one-line proof are at lines 5551–5552, on p. 119; p. 120 starts at line 5553.
- Theorem 6.7.3 and its proof are at lines 7660–7675, on p. 167 (7654–7698).
- Lemma 6.6.4 is at line 7510, on p. 163, and its proof continues past line 7537 onto p. 164.
- Theorem 6.9.7 is at line 7872, on p. 171, and its proof starts at line 7890, on p. 172.

Theorem 5.7.2 needs no manifest change: it lies in the recorded range "5.7.1–5.7.3" of the BP-Coleman `locator`.

Pattern sweep: a script matched every "kind number … p./pp." pair in the README against the statement line of that number in the cached text of each of the four sources. Its other hits were all parsing artefacts, each checked by hand:
- page lists such as "pp. 130, 134";
- a source switching inside one parenthetical (lines 1387, 1435, 1445);
- "Theorem 2.7.1(" with no period (line 1456 of BP-Coleman, p. 31).

The pages checked by hand were BP-Coleman 6.2.16/6.2.18/§6.2.20 (pp. 151–152), 5.12.3 (p. 135), 6.8.4/6.8.5 (p. 168); BP-Hida 5.6.3 (p. 58), 6.1.11 (p. 60), 6.2.10 (p. 62), 6.2.16 (p. 64); BP-GL2 Theorems 1.1–1.4 (pp. 2–3) and §2.1 (p. 4); and Pilloni-Singular §5.1.5 (p. 21) with Propositions 5.1.5.1–5.1.5.2 (p. 22). All were correct, so no other slip exists.

## F02 (P3) — applied

Layer 3 Examples: "[ℤ_p→pℤ_p]" → "[ℤ_p --p→ ℤ_p]". Layer 6 Examples: "the complex A→tA" → "the complex [A --t→ A]". The ideal-as-target reading gives a surjection and `H¹=0`. The stated values need the ring itself as the degree-one term.

Pattern sweep: every bracketed or arrowed two-term complex in the README was checked.
- Line 1081 (`[A --t→ A]`) was already correct.
- Line 1529 (`R/(y)→R/(y²)`, 1↦y) is correct as written. The map is injective because `y·R/(y²)≅R/(y)`, its cokernel is `R/(y)=L`, and its termwise fibre has zero differential.
- Line 42 has a zero differential and is correct.

## F03 (P3) — applied

Layer 4 Dependencies: added "§3.3" (needed by §4.8) and deleted "§2.1;". No §4.x Needs line names §2.1; the only "§2.1" in Layer 4 is IntegralHeckeAndGaloisDeterminants §2.1, which stays. Layer 3 Dependencies: deleted "AutomorphicBundlesPartII §2.2;", which no §3.x Needs line or prose names.

After the edit, a script compared each layer's Dependencies line with the union of its sections' out-of-layer Needs items. The differences are empty for all nine layers. AutomorphicBundlesPartII §2.2 is still in the Dependencies of Layers 2 and 4, so the roadmap-level edges are unchanged.

## Adversarial pass on the changed text

| Statement | Instances tried | Values computed | Result |
|---|---|---|---|
| Layer 3 Example `[ℤ_p --p→ ℤ_p]`, degrees 0,1 | p=2, p=3 | kernel 0; cokernel `ℤ_2/2=𝔽_2`, `ℤ_3/3=𝔽_3`; old reading `ℤ_p→pℤ_p` is onto, `H¹=0` | Holds as reworded |
| Layer 6 Example `[A --t→ A]`, A=F⟨t⟩ | fibre at t=0 | t is a nonzerodivisor in the domain A, so `H⁰=0`, `H¹=A/(t)≅F`; derived fibre `F --0→ F`: `H⁰=H¹=F`; `Tor₁^A(A/(t),F)=F` from the resolution `A --t→ A` | Holds; agrees with §6.4 and line 1081 |
| §9.9 statement (unchanged) against the new locator | n=2, w_r of length r | cuspidal `[0,ℓ(w_r)]=[0,r]` (Thms 5.6.1, 6.7.3); canonical `[ℓ(w_r),d]=[r,n]` (Thms 5.7.3, 6.7.3); duality Thm 5.7.2; deformation Thm 6.9.7(1) | Every clause now has a cited theorem |
| §5.5(b) locator | Thms 5.7.1–5.7.3 | statement pages 117, 118, 119; last proof line 5552 on p. 119 | pp. 117–119 |
| §6.6 locator | Lemma 6.6.4 | statement line 7510 p. 163; refinement-by-projection-formula remark line 7543–7544 p. 164 | pp. 163–164, as in §6.6's closing citation |
| Dependencies, Layers 3 and 4 | Needs union vs list | Layer 3: −{AutomorphicBundlesPartII §2.2}; Layer 4: +{§3.3}, −{§2.1}; afterwards both differences empty | Holds |

## Checks

- `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean`, run from the content checkout: exit 0, no output, no warning (18 s). The file is unchanged: `import Mathlib`, the module docstring and an empty namespace. With no declarations, the `#check @name` comparison has nothing to compare, and I did not run it.
- Dependency direction:

      depcheck: 242 roadmaps, 2212 edges, 0 problem(s)

  There is no UPWARD, CYCLE or moved line.
- Gate failures listed in the brief: none.

## Notes for the maintainer

- No Lean name, section number or target id changed, so no other roadmap's citation is affected. PadicFamiliesPartII cites §§1.1, 2.3, 9.1 and 9.4–9.8 here; all are unchanged.
- No source was fetched and no manifest entry was added: all cited theorems are already in the recorded BP-Coleman locator.
- Ownership against open pull requests was not re-examined. No finding moved or added an object, and no new citation of another roadmap was introduced.
- I found no suspicious instruction in the review text.
