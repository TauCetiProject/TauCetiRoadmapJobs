# FunctionFieldArithmeticPartII red-team repair report (round 1)

Both reviews number their findings F01, F02, …, so each finding id occurs once per review. Every finding has its own section: review r1a's F01–F09 come first, then review r1b's F01–F06, and the first line of each section names the review. Review r1a's F02 and review r1b's F03 overlap, and so do review r1a's F08 and review r1b's F05; each overlap is settled once, under the review r1b section, and the review r1a section points to it. Section numbers below are the **new** numbers unless marked "old".

## F01 (P2) — applied

Review r1a, finding F01.


I moved sections to remove every forward *Needs:* edge and renumbered.

- Old §§3.10, 3.30–3.33 and 3.49 became §§1.35–1.40. Their only prerequisite is Mathlib, and they now sit before their first consumer (old §1.35, now §1.41).
- Old §§1.240–1.242 became §§2.7–2.9, after §2.4 (fpqc descent).
- Old §§7.6 and 7.26–7.29 became §§7.3–7.7. They precede §7.8 and later sections, and §7.3 precedes the §§7.6–7.7 that use it.

The projective-space input stays in Layer 8. No Layer 7 proof route uses simple connectivity of ℙʳ, so I deleted it from the Layer 7 *Needs:* lines (old 7.3, 7.4, 7.7, 7.11, 7.16, 7.18 and 7.22). I also fixed two garbled "Layer 8/Layer 10" *Needs:* items (§§7.3 and 7.10). I added Layer 2 and Layer 7 dependencies and updated the build paragraph.

1 617 references were renumbered by script, and `sources.toml` `cited_for` was remapped. A title check confirms that all 1 830 "§x.y (title)" references still match their headings.

## F02 (P3) — applied

Review r1a, finding F02.


Settled once under review r1b's F03, with which it overlaps.

## F03 (P2) — applied

Review r1a, finding F03.


§3.52: "so an fppf stack would miss it" was replaced by the correct statement. The fppf classifying stack of fppf-locally trivial G-torsors misses x_P. The two-limit of the finite root stacks is an fppf stack and contains x_P, and the fpqc quotient identifies it with P. The no-trivialization claim now gives its reason: the residue field of a closed point is finite over ℚ, which contradicts §3.2.

## F04 (P1) — applied

Review r1a, finding F04.


The claim was right: SchemeAndStackFoundations §1.20 on main (lines 2843–2950) does not contain a residual-gerbe decomposition. I added `gap:zero-dimensional-dm-residual-gerbes` (SchemeAndStackFoundations §1.20) to `plan.json` and to the README supplier contract. §5.23 now cites the gap in its route and in *Needs:*. In the gap text, and in the same sentence of §5.23's route, "zero-dimensional … with finitely many points" became "underlying space finite and discrete", so the route and the gap state the same input.

## F05 (P2) — applied

Review r1a, finding F05.


§3.421 is now titled "The infinite DVR zero-section gerbe".

- It is defined as §3.403's zero-section gerbe, banded by G_k=lim μ_n, which contains the infinitesimal μ_(p^r) in characteristic p. It is the quotient of the reduced chart k and is ≃B_kG_k after a frame of N.
- I deleted the false "lim μ_n=Ẑ(1)" and added three Checks.
- I updated §3.422 and the `Suggested.lean` docstring.

## F06 (P3) — applied

Review r1a, finding F06.


§3.360's four Checks were replaced by four computed ones:

- 6 versus 35 versus 41 (ignoring the character index gives 41).
- e_(−1/3) versus e_(1/3).
- ℤ/4 coefficient 2.
- P_(1/2)(1⊗u_1)=0 while P_(1/2)(η_f(u_1))=u_1.

## F07 (P3) — applied

Review r1a, finding F07.


§7.20's Check now reads: the map of reduced residual gerbes is Bμ₂×Bμ₂→Bμ₂, with relative reduced fibre B(diagonal μ₂)=Bμ₂. The full fibre [Spec K[s,t]/(s²+t²,st)/μ₂] keeps its nilpotents, and the map is not representable there. The same "reduced residual gerbes" qualifier was added to §7.15's YZ19 annotation.

## F08 (P3) — applied

Review r1a, finding F08.


Settled once under review r1b's F05, with which it overlaps.

## F09 (P1) — applied differently

Review r1a, finding F09.


The claim is right: DeligneWeightsAndPurity §8.24 (its line 3274 at its head) constructs the category over 𝔽_q only. Instead of asking that supplier for a k̄ category, §7.7 is restricted to finite k:

- Its only consumer, §7.21, works over finite k.
- Geometric stalks come from pullback to geometric points.

The Bμ₂ Check is now over 𝔽_q, where both lines are still perverse and the invariant dimensions are 1 and 0. No consumer uses the k̄ clause, so no supplier gap is needed.

## F01 (P2) — applied

Review r1b, finding F01.


I added `rootChartCoaction_eq_includeRight_iff` (README §2.3) under `/-! ## Layer 2 … -/`. The statement holds as typed: B has basis t^i (i<n) and δ(t^i)=h^i⊗t^i, so δ(b)=1⊗b forces a_i=0 for 0<i<n. It elaborates. §2.3 names the theorem.

## F02 (P3) — applied

Review r1b, finding F02.


All 39 slugs listed were replaced by section citations:

- §§1.12, 1.28, 1.36, 1.41, 1.55, 1.56, 1.59, 1.87, 1.107, 1.160.
- §§2.4, 3.10, 3.13, 3.52, 3.74, 3.75, 3.407.
- §§4.6, 5.10–5.13, 5.16, 5.18, 5.19, 5.21, 5.22.
- §§7.13, 7.19, 8.1, 8.5–8.11, 9.2.

The phrase "underlying high-degree-descent" pointed forward to §8.13 and was reworded. "AffineRing(f,n)" became A[t]/(tⁿ−f). Following the same pattern, fourteen headings that were Lean-style slugs became prose (§§1.49–1.50, 1.78–1.79, 1.99–1.100, 1.215–1.216, 1.225–1.228 and 1.235–1.236), and "(tmul)" became "(coefficient change on a pure tensor)".

## F03 (P3) — applied

Review r1b, finding F03.


Also settles review r1a's F02.

- Deleted the four "This promotes a consumed API…" sentences.
- Changed "merged SchemeAndStackFoundations" to "SchemeAndStackFoundations" at 11 sites.
- Replaced the four "stated coordinate construction" phrases with §§1.55–1.56 and 1.82–1.83, §1.36, §§4.1 and 4.3, and §§9.1, 9.6, 9.8 and 9.9.
- §7.12 now names the DWP §8.24 proper pushforward together with §7.5.
- In §8.2 I did not apply the suggested "§8.12 with R=∅", because that is a forward edge. I stated the descent with its inputs instead.
- Deleted the "coalesces … planned" sentence.

## F04 (P3) — applied

Review r1b, finding F04.


- §§1.63 and 1.88: added the 𝔽₃ label-2 arrow Check and the ℤ/4 no-arrow Check.
- §1.77: added the identity map on (ℤ/4)[T]/(T²−3) and 𝔽₂[T]/((T−1)²).
- Deleted the eight "For arbitrary positive exponent" bullets, two "projection-recovery" bullets and two "check naturality" bullets. I added computed Checks to §1.44 (T⁻¹=3T) and §1.135 (ℤ/7, (2T)²=1) to keep three.
- §3.147: added Checks for id_ℤ and ℤ→ℤ/4→𝔽₂.
- §3.230: added the h_1+3 Check.
- §3.269: added the h_2↦h_2⁵ Check.
- §3.284: added the ℤ→ℤ/4 Check.
- §3.363: added the u_1²=2, 2u_1²=0 Check and the 𝔽₂ nilpotent Check.

## F05 (P3) — applied

Review r1b, finding F05.


Also settles review r1a's F08.

All lines were read in the cached texts.

- YZ19: 7333 was replaced by the line of the item each site cites: 6918 for Definition A.1, 6995 for Definition A.2, 6968 for A.1.2, 7015 for A.1.3, 7142 for A.1.4, 7320 for §A.2 and 7570 for A.2.2.
- AV99: 189 for Lemma 2.2.3 and 213 for Lemma 2.3.3.
- MILNE-LEC: 2602, 2631, 2682, 3058 and 3104.
- STACKS-NORMS: 1513, 1536, 1553 and 1591.
- STACKS-AFFINE-DESCENT: 807 and 1011.
- STACKS-KUMMER: 1505.
- Stacks-finite-root-projections: 46 and 51.
- ETINGOF 1493, CONRAD-EXT 497 and 548, NOOHI 288 and 700, MILNE-CFT 3357 and 3368, ACV01 1594 and 1615.
- TV17: §3.10 now cites line 605 (Proposition 3.2).
- 04UJ is not in STACKS-TORSORS (zero hits), so the citation is replaced by SchemeAndStackFoundations §§1.15 and 2.3.
- The ETINGOF reference entry and its manifest locator now include Theorem 3.8. `cited_for` was updated in `sources.toml`.

## F06 (P3) — applied

Review r1b, finding F06.


The bare `TauCeti.RootsOfUnityGroup` became `TauCeti.RootsOfUnityGroup.groupScheme` (Scheme.lean:82), `.pointsMulEquiv` (Basic.lean:124) and `.schemePointsMulEquiv` (Scheme.lean:101). All three were checked at the pin.

## Checks run

- **Elaboration.** `lake env lean` on `packages/FunctionFieldArithmeticPartII/Suggested.lean`, run from the content checkout, succeeded with exactly three `declaration uses 'sorry'` warnings (lines 79, 86, 96) and no errors.
- **`#check @`.** I put `#check @` for all six declarations in a scratch file and elaborated it once. The types match the README:
  - `rootChart` and `rootChartCoaction` have `(A) [CommRing A] (f) (n)`.
  - The three theorems carry `0 < n` explicitly.
  - `rootChartCoaction_eq_includeRight_iff : ∀ A [CommRing A] f n, 0 < n → ∀ b, rootChartCoaction A f n b = includeRight b ↔ b ∈ (algebraMap A _).range`.
  - No binder was lost and nothing changed.
- **Dependency check output:** `depcheck: 56 roadmaps, 646 edges, 0 problem(s)`. There is no UPWARD or CYCLE line.
- **`roadmaps resolve`:** no cross-roadmap citations or Lean names were found missing.
- **Local edges.** A scan of every *Needs:* line finds no forward edge. The only remaining hits are AlgebraicModuliForArithmeticGeometry §§4.3–4.4 and SchemeAndStackFoundations §§3.3–3.7, which are external citations with the same numbers.

## Adversarial pass (new or changed statements)

| Statement | Instances | Values | Result |
|---|---|---|---|
| `rootChartCoaction_eq_includeRight_iff` | n=1; 𝔽₂,f=0,n=2,b=t; ℤ/4,f=0,b=2; zero ring; ℤ/4,b=2t | B=A, both sides true; h⊗t≠1⊗t and t∉A, both false; 1⊗2=1⊗2, both true; both true; 2(h−1)⊗t≠0 and 2t∉A, both false | true. Also true at n=0: there B=(A/(1−f))[t] and δ(Σc_k t^k)=Σc_k h^k t^k, so δ(b)=1⊗b forces c_k=0 for k≥1. hn is kept to match README §2.3 and Conventions (n≥1), because at n=0 the map is not a μ_n coaction (h is a free variable); this is a P3 note |
| gap residual gerbes | full fibre K[s,t]/(s²+t²,st) mod μ₂ | basis 1,s,t,s²; s³=0; reduction K; reduction mod μ₂ is Bμ₂ | consistent with §5.23 |
| §3.52 non-trivialization | x^n−2 over ℚ | irreducible (Eisenstein), so degree n is unbounded and no finite residue field contains all roots | true |
| §3.421 band | char 0; char p | G(k̄)=Ẑ(1); μ_p(k̄)=1 but μ_p≠1 | "=Ẑ(1)" false in char p; fixed |
| §3.360 Checks | as listed | 6 and 35; 0 and 1; 2 with 2²=0; 0 versus u_1 | distinguish each wrong model |
| §7.20 collision | ker(μ₂²→μ₂) | diagonal ≅ μ₂, giving Bμ₂ | consistent with §5.23's K_q |
| §7.7 over 𝔽_q | Bμ₂ | sign/constant invariant dimensions 0 and 1; μ₂ constant for odd q | holds over finite k |
| §1.63 Check | 𝔽₃,f=1,n=2 | 2·1=2, 2²=1 | unique arrow, label 2 |
| §1.77 Check | ℤ/4→𝔽₂, u=3 | T²−1=(T−1)² | (T−1)≠0, square 0 |
| §1.44 Check | ℤ/4,u=3 | 3T·T=9=1 | T⁻¹=3T |
| §1.135 Check | ℤ/7,(2,2) | 2·4=8=1; (2T)²=8=1 | f=1 consistent |
| §3.230 Check | ℤ→ℤ/4, h_1+3 | 1+3=4≡0; wrong counit −1+3=2 | discriminates |
| §3.269 Check | i=2, d=6 | S(h_2)=h_2⁵≠h_2 | discriminates |
| §3.363 Check | ℤ→ℤ/4,f=2 | u_1²=2≠0, 2u_1²=4=0 | true |

## Ownership, moves and maintainer notes

- **Ownership.** Ownership against the open roadmap pull requests was checked with `roadmaps grep` (which covers their heads) and against the sibling checkouts named in the brief. I searched for the residual-gerbe decomposition by object in main and in the open heads (`roadmaps grep 'residual gerbe'`). It appears only in passing in LanglandsParameterStacks, so SchemeAndStackFoundations §1.20 is the natural owner. No other construction was added, and no notion moved down from a later roadmap.
- **Renumbering.** Every section of this roadmap after §1.34 in Layer 1, after §3.9 in Layer 3, and after §7.2 in Layer 7 has a new number, as do old §§1.240–1.242. No roadmap on main or on the board cites these numbers (checked by grep). The `plan.json` nodes use ids, not section numbers, so they are unaffected.
- **Not edited (no permission).** The renumbering mapping is recorded only implicitly in this report and the README, because the previous reports in `reports/` keep the old numbers and I may not edit them.
- **Remaining pass-b observations.** Pass b re-verified the round-4 review's camel-case splits and truncated sentences. These are not numbered findings of this round. I fixed only those on lines I touched (the §§7.10 and 7.13 *Needs:*). Pseudo-Lean names such as `normalizationTriplePastingIso` remain inside Layer 1 statements as notation.
- **Gap for SchemeAndStackFoundations.** The new gap `zero-dimensional-dm-residual-gerbes` asks SchemeAndStackFoundations §1.20 for an extension.
- **Earlier check failure.** An earlier run of this round headed its report sections A01–A09 and B01–B06 instead of the reviews' own ids. The sections are now headed by the reviews' ids F01–F09 (review r1a) and F01–F06 (review r1b). The edits themselves are unchanged, apart from the §5.23 wording noted under review r1a's F04. Elaboration, the `#check @` comparison, the dependency check (`depcheck: 56 roadmaps, 646 edges, 0 problem(s)`) and `roadmaps resolve` (no Lean names found nowhere) were all re-run on the final files, with the results given above.
