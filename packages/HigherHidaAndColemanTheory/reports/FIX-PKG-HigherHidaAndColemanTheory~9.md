# FIX-PKG-HigherHidaAndColemanTheory~9

Review settled: REV-PKG-HigherHidaAndColemanTheory~8 (six findings: one P1, one P2, four P3). Every finding was verified against the sources and the sibling roadmaps before it was applied. Files edited: `packages/HigherHidaAndColemanTheory/README.md` and `packages/HigherHidaAndColemanTheory/sources.toml`. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged (no new supplier gap was needed).

## F01 (P1) — applied

Verified: BP-Hida line 1581 (Proposition 2.10.4) has hypothesis p1*D+ ⊇ p2*D′+; line 1651 (§2.11) prints p1*D′+ ⊆ p2*D″+; line 1652 the symmetric one; line 1716 uses maps from support D′+ to support D″+; line 3152–3153 (Proposition 6.2.3(2)–(3), p. 61) gives p2*D+,ε′ ⊆ p1*D+,ε. The reviewer's three-point instance recomputes exactly (table below).

Changed: §2.8(c) "p1*D′+⊆p2*D″+, p2*D′−⊆p1*D″−" → "p2*D′+⊆p1*D″+, p1*D′−⊆p2*D″−" (noted as (b)'s containments, misprint E15). Third Check rewritten: the containment is (b)'s, plus the degeneracy argument and the three-point control. §8.2 cites Proposition 6.2.3, p. 61. E15 added. `sources.toml`: Proposition 6.2.3, Remarks 2.11.1–2.11.2, cited_for E15.

Pattern sweep: every cross-containment in the README was checked. §2.8(b) already has the source direction (Proposition 2.10.4); §2.8(c), its third Check and §8.2 were the only places using the exchanged form. §3.8 and §8.1 use §2.8 only through the support-change maps.

## F02 (P2) — applied differently

Verified: Pilloni-Singular line 4663–4667 (proof of Lemma 14.8.3) uses Corollary 14.9.1 (line 4684, p. 102), Proposition 5.1.5.2 (line 955, p. 22) and Lemma 5.1.5.2. §9.5 assumed genericity and did not prove it. SmoothRepresentationsOfLocalGroups (main) leaves "the Iwahori and Klingen computations for GSp_4" to other roadmaps (its README line 121 and line 5312). No roadmap on main or at an open head states Proposition 5.1.5.2: `roadmaps grep` on Klingen with principal series, spherical or generic. The closest is GSp4NonregularModularityLifting, which asks SmoothRepresentationsOfLocalGroups for a different Klingen level-comparison contract.

Changed: §9.5 now defines "generic" and adds the Klingen-invariants criterion (Prop. 5.1.5.2 with the line 937–940 criterion), its route, one API bullet and one Check ((1,1,p,p) versus (1,1,9,9)). The §9.8 route sentence becomes the dévissage through the tower representation, finite length, Cor. 14.9.1 and both §9.5 statements. Locators: Prop./Cor. 14.9.1, Thm 11.3.1(4), §7.1.

Where this differs from the suggested repair: the tower representation is owned by **AutomorphicBundlesPartII §4.4** ("GAGA and the coherent tower": the direct limit is smooth, its K-invariants recover finite level, admissible, invariants exact in characteristic zero), which the review did not name. So §9.8 *Needs* adds AutomorphicBundlesPartII §4.4 and §3.13, ShimuraCompactifications §4.10, and SmoothRepresentationsOfLocalGroups §SR.0.2 and §SR.3.1 (finite-length). §9.5 *Needs* adds §SR.2.2, §SR.3.1 and §SR.3.4 (Borel–Casselman block). The supplier contracts list AutomorphicBundlesPartII §4.4 and SmoothRepresentationsOfLocalGroups §§SR.2.2, SR.3.1, SR.3.4, and the Layer 9 Dependencies were extended to match. The Scope paragraph and the SmoothRepresentationsOfLocalGroups contract sentence now say that §9.5 also owns the criterion. The new Check uses the k=0 Klingen valuations (0,0,1,1), at which a ratio p can occur, to explain why §9.8 applies the criterion only for k≥1.

Ownership: this roadmap owns the criterion. SmoothRepresentationsOfLocalGroups assigns Klingen computations to other roadmaps, and nobody else states it.

## F03 (P3) — applied

Verified: §9.4 defines M_Kli with U only; §3.8 acts on Borel-type supported complexes; PadicFamiliesPartII §3.4 (open, later in the merge order) constructs the away-p action on M_Kli from §9.4. Deleted "The same away-p spherical Hecke actions are retained." from §9.8. Sweep: no other sentence promises a Hecke action on M_Kli (Layer 9 and Downstream consumers checked). PadicFamiliesPartII is not cited (it is later).

## F04 (P3) — applied

Verified: ResolutionOfSingularitiesCharacteristicZero §6.3 (main) defines "Cartier separation" as a README target with no Lean name; `cartierSeparation` occurs nowhere but here. "§6.3: cartierSeparation for two effective Cartier divisors…" → "§6.3: Cartier separation of two effective Cartier divisors…". Sweep of the other names this README attributes to suppliers: `HeckeImage.derived_hom_finite` (IntegralHeckeAndGaloisDeterminants head, line 2901), `coherentChambers` (AutomorphicFormsOnReductiveGroups head, §6.7), `upperShriek_structureSheaf_iso_shift`, `relativeDualizingModule_smooth` (SchemeAndStackFoundations, main) and klingen-positive-hecke (SmoothRepresentationsOfLocalGroups, main) all exist. `roadmaps resolve` lists none missing.

## F05 (P3) — applied

Verified: BP-GL2 line 111 (p. 4 begins), line 114 (§2.1), line 158–160 (p. 5 begins with §2.2). "§2.1, pp. 4–5" → "§2.1, p. 4" in §9.2 and in the BP-GL2 locator of `sources.toml`.

## F06 (P3) — applied

Verified: PadicFamiliesPartII's README is titled "p-adic families, part II — higher coherent cohomology in PEL, singular and Hilbert weights". Changed the title to "# Roadmap: higher Hida and Coleman theory", "This Part II owns" to "This roadmap owns", and "This design needs" to "This roadmap needs". A sweep for process words (design, current, removed, so far, optional, deferred) found no other occurrence.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.8(c) corrected containment | Three points {a,b,c}, p1=id, p2=σ (σa=a, σb=a, σc=b), D+={b,c}, D′+={c}, D″+=∅, D−=∅ | §2.2: σ⁻¹{b,c}={c}⊆{b,c}, σ⁻¹{c}=∅⊆{c}; strict on C″=Cbar: I_{bc}^a=I_{bc}⊆I_c^b=I_c. Corrected: σ⁻¹{c}=∅⊆∅ true; printed: {c}⊆∅ false | Corrected form admits the instance | Applied |
| §2.8(c), ordinary values on that instance | T(f)=f∘σ on 𝔽₂³ | T(f)=(f(a),f(a),f(b)), T²(f)=(f(a),f(a),f(a)); Fitting: image of T² is the constants, T nilpotent on {f(a)=0}; K(∅,∅)^ord=𝔽₂[0]; outer K+−({b,c},∅)=O(X={a}), T=id, ordinary 𝔽₂[0] | Both 𝔽₂[0] | Check states the values without asserting that the factorization hypothesis holds (it fails at c, where p2*(F(D+))=0 while T(f)(c)=f(b)) |
| Printed (exchanged) containment | Same σ-instance, and any pair with surjective p1 | p1*D′+⊆p2*D″+⊆p1*D″+⊆p1*D′+ ⇒ p1⁻¹(D′+∖D″+)=∅; with p1 surjective D′+=D″+, and D″+⊆int D′+ makes it clopen | No instance in §8.1, whose pairs are strictly nested | Negative control in Check |
| §2.8(c) on the Siegel pairs | D″=D_ε, D′=D_ε′, D=D_0 (Prop. 6.2.3(1): D+≥D+,ε′≥D+,ε) | Prop. 6.2.3(2): p1*D+,ε ≥ p2*D+,ε′, i.e. supp p2*D′+ ⊆ supp p1*D″+; (3) p1*D′− ⊆ p2*D″− | Matches the corrected form | Locator added |
| §2.8(b) (same object) | Two points a,b, pairs (∅,∅), ({a},∅) | {a}⊆∅ fails, excluded; equal pairs ∅⊆∅, {a}⊆{a} | Unchanged, consistent with the corrected (c) | None |
| §2.8(c), D″±=∅ reduction | C″=Cbar | Cross-containments become p2*D′+⊆∅, p1*D′−⊆∅; strictness of (D+,D−) on Cbar | Reduces to §2.4, as the Check says | None |
| §9.5 criterion | (1,1,p,p); p=3 (1,1,9,9); (1,1,1,1); a ratio p⁻¹ | (1,1,p,p): αδ=βγ=p, γ/α=p, so excluded. (1,1,9,9): ratios 1, 9, 1/9, never 3, so it applies, α=β allowed. (1,1,1,1): ratios 1, so it applies; i_B of a χ with all coroot values 1 is irreducible (stabilizer W generated by reflections). The ratio set is closed under inversion, so "no ratio p" = "no coroot value p^±1" | Consistent with the irreducibility criterion | Statement, API bullet, Check |
| §9.5 criterion, parameters versus coroots | Spin parameters (σ, σχ2, σχ1, σχ1χ2) | Ratios {χ1^±1, χ2^±1, (χ1χ2)^±1, (χ1/χ2)^±1} at p: the C₂ dual roots; the common twist cancels | Matches | Route |
| §9.5, "generic" definition | Spherical constituent of a reducible series | If some ratio is p, every principal series with the same cuspidal support (Weyl conjugate) has that ratio and is reducible | Converse holds | Route |
| §9.8 route, valuations (Cor. 14.9.1) | k=0 (Klingen), k=1, k=3 | k=0: (0,0,1,1), ratio valuation 1 possible. k=1: (0,0,2,2), ratios 0, ±2; products 0,2,2,4. k=3: ratios 0, ±4; products 0,4,4,8 | αβ isolated for every k≥0; criterion applies for k≥1 | Route uses k≥1 within "k large" |
| §9.8 route, dévissage | V=0; W=G·V^Kli | V=0 gives 0→0. W^Kli=V^Kli and W^{GSp₄(ℤ_p)}=V^{GSp₄(ℤ_p)}⊆V^Kli⊆W; W is finitely generated and admissible, so of finite length; invariants exact (char 0), generalized-eigenspace projectors exact on finite-dimensional modules; five lemma over a composition series | Holds | Route |
| §9.8 route, large-k equalities | d0, d1 | d0: eH⁰≅fH⁰(X^≥1) (Thm 11.3.1(4)) and eH⁰≅fH⁰(X_Kli(p))≅fH⁰(X_ε) (Cor. 14.7.1 at slope 0<k+1), so d0=d†0. d1: eH¹↪fH¹(X^≥1) gives d1≥d†1, and Lemma 14.8.2 gives d†1≥d1 | Equalities follow | Route |
| E15 | Remark 2.11.2 via Prop. 2.10.4 with (D,D′):=(D″,D′) | Hypothesis p1*D″+⊇p2*D′+; the four mixed pairs are compact | Supports the corrected direction | Added |
| F05 locator | BP-GL2 page markers | p. 4 at line 111, §2.1 at line 114, p. 5 at line 158, §2.2 at line 160 | §2.1 on p. 4 only | Fixed |
| Pilloni §7.1 locator (new) | Page markers | p. 38 at line 1682, §7.1 at line 1698, T=T1∘T2 at line 1838 (p. 40) | pp. 38–40 | Added |
| Theorem 11.3.1(4) locator (new) | Page markers | p. 71 at line 3270, theorem at line 3293, p. 72 at line 3308 | p. 71 | Added |

## Checks

- `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean`, run from the content checkout: exit 0, no output, no warning (about 22 s). The file is unchanged: one `import Mathlib`, one module docstring, an empty namespace. It declares nothing, so the `#check @name` comparison has nothing to compare: I ran no scratch file, and no signature changed.
- Dependency check:

      depcheck: 240 roadmaps, 2187 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line. AutomorphicBundlesPartII (line 254), ShimuraCompactifications (163) and SmoothRepresentationsOfLocalGroups (main and line 26) are all earlier than this roadmap (255).
- `roadmaps resolve packages/HigherHidaAndColemanTheory/README.md`: no cross-roadmap citation or Lean name found nowhere.
- `sources.toml` parses (four sources, keys unchanged); no new source key, and nothing added to `needs-references.toml`.
- Manifest passage check, run again after the repair below: no problem. The longest string field per source has BP-Hida 744, BP-Coleman 867, Pilloni-Singular 900 and BP-GL2 76 characters, all under the 1000-character limit.

## Gate failures

- `packages/HigherHidaAndColemanTheory/sources.toml`: source 3 (Pilloni-Singular): `locator` was 1029 characters. Repaired in place by regrouping the same locators in section order and merging the entries that repeated each other: §5.1.5 was listed three times, Theorem 11.3.1 twice, and §14.9 twice. Every result, section and proof the old string cited is still cited. The new string has 900 characters. Two page ranges were corrected against the page markers of the cached text: §14.9 starts on p. 102 (Pilloni-Singular line 4677, p. 102; §15 starts at line 4836, p. 106), so "§14.9, pp. 103–106" became "§14.9, pp. 102–106". Propositions 13.3.2.1 and 13.3.3.1 and Corollaries 13.3.2.1 and 13.3.3.1 are all on p. 90 (lines 4119–4142), so "pp. 89–90" became "p. 90". Lemma 13.3.2.1 stays on p. 89 (line 4105). Nothing else changed in the manifest. The README, `Suggested.lean`, `metadata.toml` and `design/plan.json` were not touched. The README cites §14.9 only by its result numbers and §14.9.2, p. 104, so no README locator needed the page correction.

## For the maintainer

- The README title changed from "p-adic families, part II — higher Hida and Coleman theory" to "higher Hida and Coleman theory". No section, layer or target id changed or was dropped. PadicFamiliesPartII cites §§9.1, 9.4, 9.5, 9.7 and 9.8 by number, and those citations stay valid.
- §9.8 no longer mentions the away-p Hecke action on M_Kli. PadicFamiliesPartII §3.4 constructs it from §9.4, as before.
- §9.5 now also owns the Klingen-invariants criterion (Pilloni-Singular Proposition 5.1.5.2). A roadmap that needs that criterion (for example GSp4NonregularModularityLifting's Klingen work) can cite HigherHidaAndColemanTheory §9.5.
- Ownership against open work was checked with `roadmaps grep` over main and the open heads, and against the sibling packages on the board.
- No suspicious instruction was found in the review or in any fetched text.
