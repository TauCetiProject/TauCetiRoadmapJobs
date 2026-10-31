# FIX-PKG-EtaleHomotopyTypes~6

Findings of `REV-PKG-EtaleHomotopyTypes~5` (head 04e3c3c): five findings, all verified against the cached sources and the sibling roadmaps; four applied as asked, one applied in a mathematically corrected form. Files changed: `packages/EtaleHomotopyTypes/README.md`, `Suggested.lean` (module docstring only), `sources.toml` (locators of SGA1, SGA4, StacksVarieties), `design/plan.json` (the `needs` of two existing gaps; nothing else).

## F01 (P2) — applied

Verified: SGA1 line 10386–10389 (1.6(1)) needs `(i_*Φ, p)` cohomologically proper; SGA1 gets it from Corollary 1.8 (line 10456–10461) and Example 1.4 (line 10326–10331), as the proof of 2.7 says (line 11316). `i_*Φ` is not a torsor stack.

Change: gap `nonabelian-proper-base-change` (plan.json, README): "torsor stack of a finite constant group" → "R¹ with ind-finite group coefficients, and every ind-finite stack, including direct images of torsor stacks along coherent morphisms (SGA1 XIII 1.4, 1.8)". The §3.8a route now cites SGA 4 IX 1.6(ii) and Corollary 1.8. New Check: `i_*Φ` for `Gₘ ⊂ ℙ¹`, `C₂`.

Other places using this gap: the finite-type target (descent, `(p^*Φ,p)`) and universal local 1-asphericity (proper descent) only need torsor stacks, so the wider gap covers them.

## F02 (P2) — applied

Verified: for `ℙ¹` over an algebraically closed field of characteristic zero, `H³_et(ℙ¹,ℤ) ≅ H²_et(ℙ¹,ℚ/ℤ) = ℚ/ℤ(−1)`, and pullback to every finite étale cover is injective.

Change (§3.5): "every positive-degree integral class is killed on a finite cover" → a homomorphism `H_n → A` is a class in `colimᵢ Hⁿ_et(X_i,A)`. It vanishes rationally, so it lands in `A_tors`, then in a finite subgroup (cohomology commutes with filtered colimits). The induction carries both properties. New `ℙ¹` Check.

Pattern search: "kill"/"die on" occurs elsewhere only in §3.9b's effacement criterion, which is stated for finite coefficients and is an iff. It is correct, and its `ℙ¹` Check agrees.

## F03 (P3) — applied differently

Why differently: the suggested repair uses "§3.8a's normal-crossings target relative to Y", but that target was stated only over `K`, so the input did not exist.

Change: the normal-crossings target now holds over any base `S` over ℚ (SGA1 XIII 2.4, 2.7, 2.9), with the relative definition in the header. The homotopy exact sequence (4.1/4.2) is now stated explicitly. §3.8 gains a degree-one-input bullet, and its fibre bullet separates cohomology from `π₁`. "Injectivity requires `π₂(Y)=0`" → sufficient conditions plus the `𝔸²∖{0} → ℙ¹` Example.

Reason for the last change: `Gₘ × ℙ¹ → ℙ¹` is injective although `π₂ ≠ 0`. The degree-one input gives only surjectivity onto the kernel. The match with the `π₂ Et(Y)` boundary term is the degree-one part of Fr 11.5 (uncertified), and the new Example shows that term can be nonzero.

## F04 (P3) — applied

Verified: CrystallineCohomology (head 013a921 of its open roadmap pull request, merge order 22, before this roadmap) states *The classical Abhyankar lemma* in CR.5:log-algebra.4 for regular local `X` with strict normal-crossings `D` (SGA1 XIII 5.1–5.3).

Change: the §3.8a route cites it for regular strict localizations and keeps as its own step only the relative form on `P ×_S S′` (SGA1 line 12577–12600). Added a `### From TauCetiRoadmap.CrystallineCohomology` contract, a Scope sentence, and entries in §3.8a *Needs:* and Layer 3 Dependencies. "Abhyankar" occurs nowhere else in the README.

## F05 (P3) — applied

Verified: SGA1 line 11089–11107 (labels a), b) are hypotheses and 1), 2) are assertions); StacksVarieties line 387 (tag 0363) and line 395 (tag 0387).

Change: "Theorem 2.4(b)" (twice) → "Theorem 2.4, assertion 1) under hypothesis b)". "Lemma 33.7.7, tag 0387; line 395" → "Lemma 33.7.6, tag 0363; line 387", in §3.8a, References and `sources.toml`. Inserted the missing full stop ("has one. This").

## Checks

- `lake env lean packages/EtaleHomotopyTypes/Suggested.lean` (run from the content checkout): exit 0, no output. No `TauCeti.*` import, so nothing had to be built.
- `#check @name` comparison: `Suggested.lean` declares nothing (no `def`, `theorem`, `structure`, `instance`, `example`), so the scratch file is empty and there are no binders to compare. The only change is the Layer 3 docstring bullet, which now also names the homotopy exact sequence as not statable. Mathlib at the pin has `FiniteEtale R` for rings (`Mathlib/RingTheory/Etale/Finite.lean` line 58) but no scheme fundamental group.
- Depcheck, exact command of the brief, exit 0, complete output:

      depcheck: 56 roadmaps, 643 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line. The new supplier CrystallineCohomology is order 22, before this roadmap at 44.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. The worker's six leads all resolve: `IsGeometricallyUnibranch.of_etale` (SchemeAndStackFoundations main line 887); `VanishingCycles.lisseDirectImageTransport` (EtaleCohomologyFoundations, also cited in ComplexComparisonPartII); the three `complexSchemeAnalytification.*` names (ComplexComparisonPartII lines 753, 755, 2231); and `sources.toml`, which is a file name.
- No gate failures were listed in the brief.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed on each side | Result / change |
| --- | --- | --- | --- |
| Relative cohomological properness (header) | `Z = ∅`; `f = id_S`; `S = Spec K` | terminal stack, base change is the identity; `g^*Tors_S → Tors_{S′}` is an equivalence (torsors pull back); reduces to the over-`K` notion and the strictly henselian test | Consistent with SGA1 1.1/1.3 and with the existing uses relative to `Y` (Remarks 1.5(c)) |
| Normal-crossings, relative | `S = Spec K`, `ℙ¹ ⊃ {0,∞}`, `C₂`; `D = ∅`; `S = 𝔸¹`, `D: z² = s`; `S = 𝔾ₘ`, same `D` | 2 classes on both sides; `ℙ¹_A` simply connected; at `s = 0` the fibre is `𝔸¹` (1 class), at `s ≠ 0` it is `ℙ¹∖{±√s}` (2 classes), so specialization (1.14) is not bijective and properness fails; over `𝔾ₘ`, `D` is étale and monodromy swapping `±√s` fixes the unique nonzero class | Relative-NC hypothesis needed (new Check). Over ℚ every group is tame (2.3(b)) |
| Abhyankar input | `K[[x,y]]`, `D = V(xy)`; strictly henselian DVR, `r = 1` | `ẑ(1)²`; `ẑ(1)` = Galois group of the fraction field (used in the `i_*Φ` Check) | Agrees with the CrystallineCohomology statement at `p = 0` |
| Gap: ind-finite stacks | `i_*Φ` for `Gₘ ⊂ ℙ¹`, `C₂` | stalk classes 2 at `0` and `∞` (`1`, `√t`), 1 elsewhere; automorphisms `C₂` | Not a torsor stack, so the old gap did not cover it; the widened gap does |
| Gap: IX 2.11 | `j_!{pt}` on `𝔸¹`; constant 2-point sheaf | specialization at `0`: `∅ → pt` not bijective, not locally constant; bijective, and locally constant | The criterion separates the two |
| Homotopy exact sequence | `f = id`; `Gₘ×Gₘ → Gₘ`; `𝔸²∖0 → ℙ¹`; `Spec ℂ → Spec ℝ`; `Spec K ⊔ Spec K → Spec K` | `1 → π₁S → π₁S → 1`; `ẑ(1) → ẑ(1)² → ẑ(1) → 1`; `ẑ(1) → 1 → 1 → 1` (right-exact only); the 2-point fibre is not 0-acyclic, and the conclusion `1 → 1 → C₂ → 1` would be false; disconnected fibre excluded | 0-acyclicity is necessary; no left exactness is claimed |
| Constructibility remark | `E` = connected Kummer double cover of `Gₘ` over `Spec K` | `f_*E = ∅ ⊂ f_*𝔽₂[E] = 𝔽₂` | Subsheaf of a constructible sheaf, as the route says; finite type (not locally) is needed for quasi-compact `f` |
| §3.5 finite image | `ℙ¹`; nodal cubic; abelian variety | `Hom(ẑ(1), ℚ/ℤ) = colim ℤ/n`, each finite; `Hom(ẑ(1), ℤ) = 0 = H²_et(ℙ¹,ℤ)`; nodal: `H¹_et(N,ℤ) = ℤ`, rational vanishing fails (unibranch needed); `[n]^*` is `n²` on `H²`, so the pro-cover has `H₂` pro-zero | Argument correct; the old sentence was false from degree 3 |
| §3.8 degree-one input | `Gₘ × Y → Y`; `𝔸²∖0 → ℙ¹`; Legendre family over `ℙ¹∖{0,1,∞}` | split, kernel `ẑ(1)`; `ẑ(1) → 1`, onto the trivial kernel; free profinite fibre group, right-exact, and injective since the base is a curve (`K(π,1)`) | `D` étale over `Y` is relative NC; smooth gives local 0-acyclicity |
| §3.8 fibre `π₁` | product; `𝔸²∖0 → ℙ¹` | `π₁F = ker = ẑ(1)`; `π₂(𝔸²∖0) = 0`, so `π₁F = im ∂ = ẑ(1) = π₁(Gₘ)` | Extension description correct |
| Low-degree injectivity | `Gₘ×ℙ¹ → ℙ¹` (section, `π₂ ≠ 0`); `𝔸²∖0 → ℙ¹` (no section, since `O(−1)` has no nonvanishing section) | injective; not injective | "requires `π₂(Y)=0`" was false; now stated as sufficient conditions plus a counterexample |
| Layer 3 Example | `F₁ = ℙ(O⊕O(−1)) → ℙ¹` minus two sections | complement is `Bl₀𝔸² ∖ E = 𝔸²∖0`, fibres `Gₘ`, `D → ℙ¹` étale of degree 2 | An elementary fibration in the carrier's sense |
| Stacks 0363 | `𝔾ₘ/K`; `Spec K ⊔ Spec K`; `Spec ℂ/ℝ` | connected and geometrically connected; disconnected on both sides; base not separably closed, excluded | Tag matches the claim |

## Ownership, sources, maintainer notes

- Ownership by object, through the roadmap service (main plus 367 open roadmap pull requests) and the board packages folder: "cohomologically proper", "ind-finite stack", "relative Abhyankar" and SGA1 XIII 4.1/4.2 occur in no other roadmap. AnabelianGeometryAndNonabelianChabauty cites SGA1 XIII 4.6 as a later consumer. This roadmap owns these statements; CrystallineCohomology owns the absolute Abhyankar lemma, which is now cited.
- Consequences for EtaleCohomologyFoundations: two requests grew. `nonabelian-proper-base-change` now asks for ind-finite stacks, and `constructible-set-subsheaves` now also asks for SGA 4 IX 2.11. Slugs, suppliers and sections are unchanged.
- §3.8a's normal-crossings target now holds over any base over ℚ. The over-`K` statement is its case `S = Spec K`. No Lean name changed, and no name that other roadmaps cite changed.
- Sources: no new key and no fetch. SGA 4 IX 1.6(ii) and IX 2.11 were added to the existing uncertified `SGA4` locator. `needs-references.toml` was not created.
- The owned relative Abhyankar step follows SGA1's argument (line 12577–12600). That argument uses SGA1's own purity citations, which are not decomposed further here, as the review suggested.
- No suspicious instructions were found in the review text.
