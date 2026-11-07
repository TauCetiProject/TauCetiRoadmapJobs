# Review of HabiroCohomologyFoundationsPartII (pull request #1466 at 5732822)

**Verdict:** accepted

Incremental re-review of the 34 lines changed since 61e97fe (17 insertions, 17 deletions, all in `TauCetiRoadmap/HabiroCohomologyFoundationsPartII/README.md`; `Suggested.lean` and `metadata.toml` unchanged; nothing changed outside the folder). The change set stops constructing the spherical lifts of perfect p-complete δ-rings in §0.1 and imports them, with their mapping-space universal property and the map over x ↦ p, from RefinedTraceMethods §6.1, "Spherical lifts of perfect δ-rings". It rewrites the sphericalPerfection route and two §0.1 Checks around the import, and re-points §2.1 (quotientLift_perfected, two Checks, *Needs:*), §2.3 clause 1, the Layer 2 Dependencies, the supplier table and contract, the scope bullet and the Downstream consumers paragraph. No finding.

## Previous findings

The previous report (at 61e97fe) accepted with no finding (R-numbered findings: none), so there is nothing to account for.

## Verified sound

**Gate, dependency check, build.** The worker's gate at 5732822 passed every check, including `build=0`. My own gate run at this head (`gate HabiroCohomologyFoundationsPartII … --base origin/main`) printed every counter at 0 and `OK`, exit 0. `git diff --stat origin/main...HEAD` outside the folder is empty. `lake env lean` on `TauCetiRoadmap/HabiroCohomologyFoundationsPartII/Suggested.lean` exited 0 in 5 s with no diagnostics. The file is unchanged (36 lines: `import Mathlib`, the module docstring naming the nine headlines and their missing carriers, an empty namespace). It has no declaration, so there was nothing to `#check`, no section variable to lose, no one-tactic probe to run and no `sorry`. The dependency check:

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

It printed no UPWARD, CYCLE or `moved:` line. In the merge order, HabiroRings (line 315) and RefinedTraceMethods (316) come before this roadmap (320), and StableHomotopyKTheoryPartII (319) also comes before it. GeneralAlgebraicKTheoryPartII (321) and HabiroNahmSeries (323) come after it.

**The new supplier citation, resolved at RefinedTraceMethods' open head (b0ad346, the head the roadmaps index lists).** Its §6.1 heading is at README line 2539. The paragraph "Spherical lifts of perfect δ-rings" (lines 2553–2576) states every component this README now imports:

| Imported here (README line) | RefinedTraceMethods §6.1 at its head (line) | Agreement |
| --- | --- | --- |
| Contract bullet, line 90: for every prime p and perfect p-complete δ-ring B, S_B flat over S_p with marked `S_B⊗_{S_p}ℤ_p` ≃ B | 2553, 2555, 2563 | Same object, same marking. The hypotheses "p any prime, p = 2 included; B perfect and p-complete" are the same. |
| `Map(S_B,R)` ≃ `Hom(B/p,π₀R/p)` for p-complete connective R; fully faithful functor | 2553, 2564–2565 | Same quantifier on R (connective, p-complete); discreteness and full faithfulness are stated there. |
| The E∞-map S_C → S_p over x ↦ p, C = ℤ_p{x}_∞ (lines 90, 146, 336–337, 343) | 2553 ("used in §7.6"), 3605 | Stated as a lift of the δ-map x ↦ p; RefinedTraceMethods' Check at line 2573 separates x ↦ 0 from x ↦ p. |
| Supplier table line 21, scope line 9, Layer 0 and Layer 2 Dependencies (lines 178, 404) | §6.1 as above | The table row cites §§6.1–6.14 and 7.6, so it already covers §6.1. |
| No cycle | RefinedTraceMethods §6.1 *Needs:* (line 2576): PrismaticCohomology §0.65, its own étale statement, DerivedDeRhamCohomology Layer 0, GeneralizedCohomology, StableHomotopyKTheory | It does not use this roadmap. Its Downstream consumers paragraph (line 4143) lists this roadmap as a consumer of the perfect lifts, which matches the direction here. |

**Source locators in the changed lines (seeded sample §§0.1, 2.1, 2.3).**

- KU Lemma A.1 is at KU line 3902. Printed page 86 ends at line 3891, so the lemma is on printed p.87 as cited. Lines 3902–3921 state: unique p-complete connective lift of A∞; the canonical map to the Tate construction is an equivalence (Segal conjecture); the p-completed colimit along the Tate-valued Frobenius is a connective lift of A∞; the map then follows by uniqueness. The README's route (line 146) follows these steps in order. It makes the uniqueness step explicit: the universal-property map reduces to an endomorphism of A∞ that is the identity modulo p, which is checked in the adversarial table.
- TC 3.4 is at TC lines 1304–1312, with the page-31 marker at line 1302 and paragraph 3.4 beginning on p.30 at line 1290. Those lines give the unique lift of ℤ_p{x}_∞ (its p-completed cotangent complex vanishes), the E∞-map over x ↦ p, and base change of the x-tower to the S/p^α tower by Burklund's uniqueness. This matches the Moore-tower Check (line 336) and the relativeFormalEtaleLift addendum (line 148).
- QH Remark 4.23 is at QH lines 2876–2886. Printed page 62 ends at line 2863, so the remark is on p.63. The source says B∞ is a perfect δ-ring with a unique connective lift, then takes Burklund quotients: odd p, and at p = 2 even exponents ≥ 4. This matches quotientLift_perfected (line 325) with the RefinedTraceMethods lift in place of "unique lift". By HabiroCohomologyFoundations §5.15 at its head 4aebbac (line 2010 of that README), B is relatively perfect over A, so B∞ is a perfect p-complete δ-ring, which is the supplier's hypothesis.
- Seeded targets §§1.1, 1.2, 1.3, 2.2, 3.1, 4.1 and 4.2 are untouched by the diff and are carried from the previous reports.

**Adversarial pass: rows for the changed statements, with computed values.**

| Statement (changed) | Instances | Values computed | Result |
| --- | --- | --- | --- |
| Import of S_B (lines 9, 21, 90) | p = 2, 3; B = ℤ_p, 0, W(𝔽₄), ℤ_p{x}_∞ | π₁S_{ℤ₂} = ℤ/2, π₃S_{ℤ₃} = ℤ/3 (π₃S = ℤ/24); S_0 = 0; W(𝔽₄) = ℤ₂[ζ₃] gives 2 = \|Gal(𝔽₄/𝔽₂)\| self-maps; π₀Map(S_C,S_p) = ℤ_p via the image of x | Contract equals the supplier statement clause by clause. |
| sphericalPerfection, universal-property step (line 146) | A = ℤ_p⟨x⟩, A∞ = ℤ_p⟨x^{1/p^∞}⟩ | Colimit reduction mod p is 𝔽_p[x^{1/p^∞}]. f : A∞ → A∞ with f ≡ id mod p: for a = lim ã_n^{p^n}, f(ã_n) ≡ ã_n mod p gives f(a) ≡ a mod p^{n+1} for all n, so f = id. A connective p-complete cofibre C with C⊗_{S_p}Hℤ_p = 0 has C/p⊗Hℤ = 0, so C/p = 0 and C = 0 | Equivalence; the route agrees with KU lines 3905–3921. |
| Wrong models for sphericalPerfection (line 161) | identity of S_A; a map to Hℤ_p | The identity's target has reduction ℤ_p⟨x⟩, in which x has no p-th root mod p, so it is not the perfection. Hℤ₂ has π₁ = 0 ≠ ℤ/2 | Both excluded, as the Check says. |
| sphericalPerfection Check (line 161) | A = ℤ₂, ℤ₃, 0, ℤ_p⟨x⟩ | For A = ℤ_p the target S_p and the map is the identity (S_p is initial among p-complete E∞-rings); A = 0 gives 0; x^{1/p^{N+1}} has exponent outside (1/p^N)ℤ, so it is not in 𝔽_p[x^{1/p^N}] | True. |
| relativeFormalEtaleLift addendum and "Perfect inputs over the sphere" (lines 148, 163) | T = S₂, C = ℤ₂⟨x^{1/2^∞}⟩ | L_{C/ℤ₂}⊗ᴸ𝔽₂ = L_{(C/2)/𝔽₂} = 0 (Frobenius is an isomorphism); π₁U_C = ℤ/2⊗C = C/2 = 𝔽₂[x^{1/2^∞}] ≠ 0; for HC, π₂(HC⊗_SHℤ) = C⊗H₂(Hℤ;ℤ) = C/2 ≠ 0, since C is torsion free and H₁(Hℤ;ℤ) = 0, whereas the marking needs a discrete reduction | True; HC is excluded by the marking. |
| quotientLift_perfected (line 325) | A = B = ℤ₃{x}^∧, α = 2; A = B = ℤ₃, x = 3, α = 2 | B∞ = ℤ₃{x}_∞ is perfect; E1QuotientExponent 3 2 holds; S_{B∞}/x² is E₁; S₃/9 is E₁ | The supplier's hypothesis holds; the statement agrees with QH line 2877. |
| Moore-tower compatibility and Specialization map (lines 336–337) | p = 2, 3; α = 2, 4, 6 | x ↦ p gives cofib(p^α) = S_p/p^α with π₀ = ℤ/p^α; x ↦ 0 gives S_p ⊕ ΣS_p with π₀ = ℤ_p. The marked ℤ_p-reductions differ at x by p. Their mod-p reductions agree on x and differ on δ(x), since δ(p) = 1 − p^{p−1} = −1 at 2 and −8 at 3, ≡ 1 mod p | Two distinct maps; only x ↦ p gives S/9, S/16 and S/64. |
| §2.3 clause 1 (line 382) | A = ℤ; A = ℤ[x] toric | Â_p = ℤ_p = (Â_p)∞, so the map is the identity of S_p and base change is trivial; for ℤ_p⟨x⟩ → ℤ_p⟨x^{1/p^∞}⟩ the target is the perfect lift | Consistent with §2.2 and with *Needs:* line 396 ("§0.1 (spherical perfection)"). |
| *Needs:* and Dependencies (lines 170, 178, 343, 404) | union of the lines | §2.1 *Needs:* {RefinedTraceMethods 6.1, 7.6} ⊂ Layer 2 Dependencies {6.1, 6.9–6.10, 7.6}; Layer 0 *Needs:* and Dependencies both include §6.1; §2.1 no longer lists §0.1 for perfect lifts, and §0.1 no longer supplies them | Consistent. |
| Downstream consumers forward pointer (line 537) | GeneralAlgebraicKTheoryPartII | Merge positions: RefinedTraceMethods 316 < this roadmap 320 < GeneralAlgebraicKTheoryPartII 321 | A consumer can re-point downward to the owner. |

**Carried forward from the previous report (at 61e97fe) for the statements this diff leaves untouched.** Each row's values are as computed there or in the report it carried (at 729dbcb).

| Statement (untouched) | Values computed there | Result there |
| --- | --- | --- |
| HabiroRings citations: §5.1 for traceHabiro_etale; §§5.1–5.7 for Layer 1; §5.9 identification; §7.3 for cubic and nonabelian Checks; §§5.2 and 5.4 for the twisted equalizer; §5.5 for _rational; §5.7 for _inversion | H/Φ₄ ≅ R×R for R = ℤ[i][1/2] since −2i is a unit; 108 = 4·27, 6 ∣ 108; i⁷ = −i; x³−5x−12 ≡ x³−2 mod 5 with discriminant −7 ≡ 3 a non-square; classes by (v₂, v₃) for orders 1, 2, 3, 5, 6, 10 | Each cited section states what it is cited for. |
| Rees sign and grading; filtered quotient convention; q-integers | βt = h; cofib(h) = ℤ, 0, 0 against degreewise ℤ, ℤ, ℤ; [2]_q ↦ 2 | Consistent with QH 3.1 and 3.9. |
| Ordinary étale lift of ℤ[1/6]; lift of ℤ₂ over S₂; completed localisation f = Σp^{n²}x^{−n}; relative root tower; markings and base change; nonflat scalar extension | π₁ = (ℤ/2)[1/6] = 0; π₁(S₂) = ℤ/2; exponents −1, −4, −9; t^{1/(N+1)!} ∉ 𝔽_p[x, t^{1/N!}]; two automorphism components unmarked against one marked; π₀ = π₁ = ℤ_p | §0.1 laws and the remaining Checks are correct. |
| TraceInput: rationalAmplitude, the condition at 2, invertTwo, ofEtale semiperfectness | ℚ[u,v]/(u,v)² is not lci; 4.8 is proved only for p > 2; R̂₂ = 0 at ℤ[1/2]; relative Frobenius is an isomorphism for étale R | §1.1 as cited. |
| tracePair_unit, _zero, _etaleUncompleted, _polynomial, _multiplicative | F/β = ℤ in degrees ≤ 0; dR_{0/ℤ} = ℚ, qdR = ℚ[[h]], completion 0; H¹(F^k) = (R/ℚ)[[h]]/h^k; dx coefficient (q−1)^{i−1}; E₁ from E₂ | §1.2 clauses (a) and (b) hold. |
| traceHabiro_hCompletion, _qWittGraded/mOne, _zero, h-completion of étale R, _cyclonic hypotheses | Differentials 0, h, q²−1 against 0, 1, 1+q; H¹ = ℤ[x]dx against ⊕(ℤ/r)x^{r−1}dx; (q^m−1)-completion of ℚ((h)) is 0 | §1.3 as stated. |
| E1/E2QuotientExponent tables; E₂ ⇒ E₁; quotientLift at odd p and at 2; S/8; high-powered integers; ℤ/9 torsion; identityCover example | Rows 0,0,0,0,1,0,1,0 and 0,0,0,0,0,0,1,0 at p = 2; 6 ≥ 4 and 3 ≥ 2; 1, 9, 16, 64 true and 8, 32, 12 false; 3·3 = 0 in ℤ/9; x^a t^r basis | §2.1 as cited (Bu, KU 6.8–6.9, TC 3.3–3.4). |
| perfectedLiftNaive hypotheses; toric divided powers; exponent one; p = 2, α = 2; tracePair_quasiRegular clauses 2–3; branch dependence | (x−1)(x−q)/(1+q) ↦ (x−1)²/2; a ku-lift exists while a spherical lift is excluded; QH 4.22(a) applies; Ω¹/p ≠ 0 for ℤ[x] | §§2.2–2.3 as cited. |
| Canonical domain d = 0, 1, 2; counit; Jackson operator; derived reduction; Laurent framed; tensor domain | Primes inverted ∅, ∅, {2}; zero map excluded; (q²−1)x(x−y); x^r ↦ [r]_q x^{r−1}dx; dR_{ℚ[x^±]/ℚ} = ℚ | §3.1 as cited. |
| TraceInversion (ℚ: 6, 1, 0, −6); Gaussian Δ; finite étale rank; twisted family at 7; Frobenius direction at 11; equalizer strictness; τ₁ non-injectivity | true, false, false, false; 4 ∤ 6 and 4 ∣ 12; ranks 1, 2; i⁷ = −i; 4³ ≡ 1 mod 7; (1, 0, 0, …) fails at (5, 1) | §§4.1–4.2 as cited. |
| TC finite-coefficient corner; KU Lemma 6.11 sign | dR_{0/ℚ} = ℚ ≠ 0; (q−1)^d γ̃^d = (−1)^d δ^{(d)} | Recorded as source issues in earlier reports. |

**Headline audit.** The README (line 53) and the `Suggested.lean` docstring list the same nine headlines. Each still lacks a carrier at the pins (connective E∞-ring spectra, enhanced pairs, relative THH over ku, cyclonic spectra, genuine fixed points), so stating nothing is still correct. sphericalPerfection keeps its docstring entry ("connective E∞ ring spectra, spherical Witt vectors and cyclotomic base data"), which remains accurate because its target S_{A∞} is a spherical Witt-vector lift. The diff touches no headline statement and no Lean.

**Duplication and ownership by object.** The object that changed owner is the spherical lift of a perfect p-complete δ-ring, together with its universal property. I searched the open heads and main (`roadmaps grep` for "spherical Witt", spherical/E∞ lifts of perfect δ-rings, and the EC2 thickening theorem). RefinedTraceMethods §6.1 is the only general owner, and its §7.6 uses the lift, so this is the owner that avoids a back-edge. StableHomotopyKTheoryPartII §4.8 (its README line 627) treats only finite fields k and takes SW(k) from RefinedTraceMethods' étale lifting. GeneralAlgebraicKTheoryPartII (merge position 321) at its head 7f6a44d still says, at its README lines 15, 228, 1677 and 1692, that this roadmap's §0.1 owns and constructs these lifts. That roadmap now has to re-point to RefinedTraceMethods §6.1, which is earlier than both. Line 537 here forwards consumers to exactly that section and §0.1 keeps its id, so this README needs no change and the re-pointing belongs to that roadmap's own review. relativeFormalEtaleLift over T = S_p reproduces the imported lift for perfect C. Line 148 says so in one clause and states how the theorem here differs (a marked base T, inputs neither perfect nor finitely presented), so it is a kept generalisation, not a second owner. The sibling checkouts named in the brief were available, so ownership against open pull requests was checked.

**Overlaps and citation leads.** The overlap listing for this roadmap shows no open pull request changing this roadmap, no dropped id cited here and no id cited only by an open revision. The citation resolver found no unresolved cross-roadmap citation. Its three Lean-name leads (`Prismatic.Trace.gradedTCMinus`, `gradedTP`, `gradedTC`, README line 131) are README API names of PrismaticCohomologyPartIII §7.0 at its head 057c513 (its README line 767, written under the `Prismatic.Trace.` prefix). They are names of that roadmap, not declarations claimed here.

**Policy on the changed lines.** I found no process word, pull-request number, round label, LaTeX delimiter, local path or `lemma`. Every cross-roadmap citation names the roadmap and its section, and the RefinedTraceMethods one also names the statement title.

## Not verifiable

- None. KU, TC and QH were read at the cited lines from the cache. RefinedTraceMethods (b0ad346), HabiroCohomologyFoundations (4aebbac), GeneralAlgebraicKTheoryPartII (7f6a44d), StableHomotopyKTheoryPartII and PrismaticCohomologyPartIII (057c513) were read at their open heads. No manifest change and no missing-text request.

## Source issues

- none new in this round. The six issues recorded by earlier reports stand as recorded there: the GSWZ footnote 1 Frobenius direction, KU's proof of Corollary 6.15 citing QH 3.12 for 3.13, the rational corner of TC 3.5 and Lemma 3.7, the KU Lemma 6.11 sign, the normalisation in KU's proof of Theorem 6.10, and the gap in KU Remark 3.10.
