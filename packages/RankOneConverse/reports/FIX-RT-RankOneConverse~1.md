# FIX-RT-RankOneConverse~1

Two red-team passes, six findings each. Pass a's findings are labelled `a-F0n` and pass b's `b-F0n`. Where the two overlap (a-F01 and b-F02 both cover the module docstring's account of what can be stated), each is settled once and cross-referenced.

## F01 (P2) — applied

Review a (red-team pass r1a), finding F01.

Old: `Suggested.lean` declared nothing and said §4.1 lacked a twist interface. New: the predicate `IsPrimitiveQuadraticTwist` (prime coefficients a_q(g)=χ_D(q)a_q(f) for q∤NMD) and the two headlines `infinite_twist_analyticRank_eq_zero` / `infinite_twist_analyticRank_eq_one`. They are stated on `Newform`, `frickeSign`, `analyticRank`, `IsFundamentalDiscriminant` and `fundamentalDiscriminantChar`. README §4.1 is restated with these names and gains two Checks.

Evidence: bfh-1990 lines 69–75 give the twisted sign ε·χ_D(−M), which equals ε·sgn(D) when every prime of M splits. Tau Ceti's `frickeCompletedL_sub_eq` (Sign.lean line 148) gives sign i^k·ε_N, so ε = i^k·frickeSign. b's "no twist carrier" objection does not hold: strong multiplicity one makes the predicate pin down the twist. I dropped the reviewer's `g.χ = 1` clause because the coefficients already force it, so the predicate is right for every nebentypus.

## F02 (P3) — applied

Review a (red-team pass r1a), finding F02.

Conventions locators: "§§2.1.1–2.1.2" → "§2.1"; "§§2.1.3–2.3" → "§§2.2–2.3"; "§2.1.2 and §2.4" → "§2.1 and §2.4". Verified: §2.1 starts at skinner-2020 line 237 (p.334), §2.2 at line 316 (p.336) and §2.3 at line 393 (p.338). No other subsection-style §2.1.x locator remains in the README.

## F03 (P1) — applied

Review a (red-team pass r1a), finding F03.

Conventions: "Let S contain infinity and every place over pND" → S is a finite set of places of ℚ containing ∞ and every prime dividing pND. Its places over K are stable under conjugation. All cohomology and control statements and the removed Euler factors use this S (skinner-2020 line 393, p.338; line 632, p.344). A Conventions Check now records the reviewer's witness (y²+y=x³−x, p=5, D=−111) for why S must be finite. The `gap:strict-anticyclotomic-control` needs sentence carries the finite S in both the README and `plan.json`. §2.1 "place of S" → "place over S".

## F04 (P3) — applied

Review a (red-team pass r1a), finding F04.

§5.1 Check: "E(ℚ_p)⊗ℤ_p≅ℤ_p⊕ℤ/p" → "lim_n E(ℚ_p)/p^nE(ℚ_p)≅ℤ_p⊕ℤ/p of the p-adically completed point group". The witness holds: ℚ_p⊗_ℚℚ_p has infinite ℚ_p-dimension. The other two "local model ℤ_p⊕ℤ/p" passages (Layer 5 Examples, worked example 5) never mention a tensor product and need no change.

## F05 (P2) — applied

Review a (red-team pass r1a), finding F05.

PadicMeasuresIwasawaAlgebras §4.6 (main README lines 2710–2733) defines charDivisor and charIdeal over every noetherian normal UFD and states the pseudo-null criterion. Its base-change target needs finite free extensions with finite residue fields, so the extension to Ô^ur is still missing. The gap is narrowed (README and `plan.json`) to two things: characteristic ideals are preserved under the faithfully flat O[[T]]→Ô^ur[[T]], and the augmentation criterion. The PadicMeasures contract now cites §4.6 for UFDs including Ô^ur[[T]] and for the pseudo-null criterion.

Flatness check: by the local flatness criterion, k̄[[T]] is flat over k[[T]] and ϖ is regular.

## F06 (P3) — applied

Review a (red-team pass r1a), finding F06.

"Theorem 5/Corollaries 6–9" → "Theorems 5 and 8, Corollaries 6–7 and 9" in README §5.1 and References, and in the `poonen-stoll` version_note in `sources.toml`. Verified: Theorem 8 is at poonen-stoll line 474 and Corollary 9 at line 510. The manifest `locator` field already said "Theorem 8 and Corollary 9".

## F01 (P2) — applied

Review b (red-team pass r1b), finding F01.

MetaplecticAutomorphicForms §8.85 and its Downstream consumers (lines 3421 and 3465 at its indexed head) assign the final twist argument to a "RankZeroOneBSD". No roadmap of that name exists: it is not on main, not in the merge order (only RankZeroOneBSDPartII at 283), and not among the board packages. Changes:
- Scope and the Metaplectic contract now say §4.1 is the single owner of that argument.
- Downstream consumers says the weight-two, degree-one complementary-twist branches are a special case of §4.1 and are imported from it.

## F02 (P3) — applied

Review b (red-team pass r1b), finding F02.

The docstring now gives the right missing carriers for A, A′, C and E: the continuation of the pinned `WeierstrassCurve.LSeries`, Sha of E/ℚ as a Galois module, and an odd-p Selmer group. It also says the Weierstrass L-series and reduction predicates exist. The README Mathlib contract names `WeierstrassCurve.LFunction` and `WeierstrassCurve.LSeries` (LFunction.lean lines 79–85) and the four reduction classes (Reduction.lean lines 323–364), and says what they do not supply. The Scope sentence about what the library has is extended to match.

## F03 (P3) — applied

Review b (red-team pass r1b), finding F03.

The `gap:quadratic-abelian-sha` needs sentence (README and `plan.json`) now also asks for the identification of (Res_(K/F)A)(F), its Selmer groups and its Sha with those of A over K. Verified that SelmerIwasawaCohomology (indexed head) has no Weil-restriction target: a grep for "Weil restriction", "Res_(K" and "restriction of scalars" finds nothing.

## F04 (P3) — disputed

Review b (red-team pass r1b), finding F04.

The README's citable units are its "Layer k" headings and §k.n subsections, in the house heading form `## Layer k: <title>`. The `PC.k` scope labels are internal to `plan.json`, and this job may not edit `plan.json`'s scope. The dangling citation "RankOneConverse §§PC.0–PC.6" belongs to RankZeroOneBSDPartII and should be corrected there to "RankOneConverse Layers 0–6". No heading here was changed.

## F05 (P3) — applied

Review b (red-team pass r1b), finding F05.

The `gap:gl2-analytic-products` section in `plan.json`: "AL.3: global L-functions and Rankin–Selberg products" → "AL.3 'Poles, functional equations and the closed boundary' and 'Strong multiplicity one'; AL.5 'Imprimitive functions and leading terms' and 'Refined GL₂ Euler factors and conductor tests'". Every named heading exists in AutomorphicLFunctionsAndLocalFactors at its indexed head (lines 2237, 2275, 2871, 2954). The needs sentence is unchanged.

## F06 (P3) — applied

Review b (red-team pass r1b), finding F06.

The Tau Ceti contract names `WeierstrassCurve.quadraticTwistOf` and its lemmas `isElliptic_quadraticTwistOf_iff`, `j_quadraticTwistOf` and `quadraticTwistOf_quadraticTwistOf` (QuadraticTwist/Basic.lean lines 169–318). The EllipticCurves Layer 5 clause now says that layer supplies the twist classification and the Galois twist on the pinned model.

## Checks run

- `lake env lean packages/RankOneConverse/Suggested.lean`: two `declaration uses 'sorry'` warnings (the two headlines), no errors. `TauCeti.NumberTheory.ModularForms.LFunction.Sign` had no object file, so I built it first with `lake build` (success).
- Binder audit: I put `#check @` for the three declarations in one scratch file and elaborated it. `IsPrimitiveQuadraticTwist` takes `{N M} [NeZero N] [NeZero M] {k} f g D hD`. Each headline takes `{N} [NeZero N] {k} f hχ hk ε hε S₀ hS₀ hN`, and the existential binds `NeZero M`. Nothing was dropped and the types match the README. One change came out of the audit: the redundant `g.χ = 1` clause was removed.
- Depcheck (`gate --depcheck … --movable`): `depcheck: 56 roadmaps, 655 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- Gap consistency: all 10 `plan.json` gap needs sentences appear verbatim in their README lines. In `plan.json` only the `gaps` hunk changed (its indentation was re-serialised).
- `roadmaps resolve`: one lead, AutomorphicCongruences §2.22. It is a false positive: the roadmap is an earlier board package, not yet on main or in a pull request.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values | Result | Change |
|---|---|---|---|---|
| root number ε=i^k·ε_N | Δ, level 1, k=12 | i^12=1, Δ\|S=Δ so ε_1=1, ε=+1=(−1)^(k/2) | agrees with BFH Λ(s)=εΛ(k−s) | none |
| twisted sign under splitting | (D,M)=1, all q\|M split | ε·χ_D(−M)=ε·χ_D(−1)=ε·sgn D | value branch εD>0 ↔ twist sign +1; derivative branch ↔ −1 | none |
| split condition χ_D(q)=1 | level 11, δ=−4 and δ=5 | χ_(−4)(11)=−1 (rejected); χ_5(11)=+1 (accepted) | correct; χ≠−1 would admit ramified q (χ=0) | added as Check |
| S₀ contains 2 | δ odd | χ_δ(2)=1 iff δ≡1 mod 8 | consistent with the 2-split convention | none |
| D=1 | trivial character, level 1 | twist = f; one element of an infinite set | harmless | Check |
| predicate rejects f itself | a_q(f)=−2, χ_δ(q)=−1 | requires a_q(g)=2≠−2 | rejects | Check |
| nontrivial nebentypus f | χ_f≠1 | the old `g.χ=1` clause made the predicate unsatisfiable | defect | clause dropped |
| N=1, S₀=∅ | Γ₀(1) | BFH allows any S ⊇ ∅ | holds | none |
| finite S (conventions) | S = all places, y²+y=x³−x, p=5, D=−111 | each new prime split in K(E[5]) adds 2 dimensions, so the dimension is unbounded | contradicts finite generation, so finiteness is needed | added |
| unramified-augmentation gap | Ô^ur[[T]], X=Λ/(T), Λ/(ϖ,T) | char (T) and (1) by §4.6; base change preserves both | only the comparison and the criterion remain | narrowed |
| completed local model | ℤ_p⊕ℤ/p | (1,0) has rational coordinate 1, (0,1) has 0 | ℤ_p⊗_ℤℤ_p has infinite rank, which was wrong | fixed |
| Weil-restriction Sha | Res_(K/F)A | (Res A)(F_v)=∏_(w\|v)A(K_w), so Sha agrees by Shapiro | now requested in the gap | gap extended |

## Ownership and maintainer notes

- §4.1 (the final Bump–Friedberg–Hoffstein deduction) belongs here. The other roadmap the kernel supplier names (RankZeroOneBSD) exists nowhere. MetaplecticAutomorphicForms §8.85 should name RankOneConverse §4.1 as its consumer.
- I could not read RankZeroOneBSDPartII's README in this checkout; the reviewer's quote is the only source. If its `gap:complementary-heegner-twists` asks ArithmeticStatisticsPartVI for the weight-two case of §4.1, that sibling should import RankOneConverse §4.1 instead. It should also fix its "RankOneConverse §§PC.0–PC.6" citation (b-F04).
- Ownership against open pull requests was checked through the `roadmaps grep` index and the sibling checkouts this brief lists. Pull requests whose files the brief did not give were not checked beyond that index.
- New Lean names other roadmaps may cite: `TauCetiRoadmap.RankOneConverse.IsPrimitiveQuadraticTwist`, `.infinite_twist_analyticRank_eq_zero`, `.infinite_twist_analyticRank_eq_one`. No name was renamed or deleted.
- Supplier gap texts changed: `strict-anticyclotomic-control`, `quadratic-abelian-sha`, `unramified-augmentation-divisor` (needs), and `gl2-analytic-products` (section).
