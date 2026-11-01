# Repair report: red-team round 1 of ArakelovGeometryAndAbelianHeightsPartII

There were two reviews: pass a (findings a-F01 to a-F11) and pass b (findings b-F01 to b-F05). Only a-F04 and b-F02 overlap. That claim is settled once, under a-F04, and b-F02 refers back to it.

# Review pass a (prose below calls its findings a-F01 to a-F11)

## F01 (P2) — applied

§2.4: "the discrete or archimedean points are dense" became a case split. The claim now holds when k = ℤ, or when k is a field and dim U > 0. When k is a field and dim U = 0, U = Spec F with F/k finite, and the single trivial point is the test set. Added a Check: for Spec 𝔽₂ over 𝔽₂ both the test set and Uᵃⁿ have one point, while the discrete set is empty. The same split is applied to the last sentence of §2.5.

## F02 (P1) — applied

The witness holds: §7.3's route cited "Calabi uniqueness, §7.4 step", and §7.4's *Needs* contains §7.3. New target §7.2a, local Calabi uniqueness on curves:
- statement: for M̄ with underlying bundle O, M̄² = ∫ f c₁(M̄) ≤ 0, with equality iff f is constant;
- locator: yuan-zhang-2025 Theorem A.6.1, line 9945, dimension-one case;
- route: the energy identity on skeleta (TropicalAndBerkovichArithmetic §3.3);
- three Checks; the ℙ¹/ℚ_p example gives M̄² = −log p.

§§7.3 and 7.4 now cite §7.2a. §7.3's route proves the flat-curvature claim first and only then the independence of α.

## F03 (P1) — applied

Verified the witness. On ℙ¹_ℚ, take max-metrized O(1) ⊗ O(−1) twisted by cN̄. For 0 < c < 1 the volume is 0, since every nonzero integral section has sup norm ≥ e^{m(1−c)}; for c > 1 the top self-intersection is 2(c−1) > 0.
- §4.3 gains (3), continuity of the volume (yuan-zhang-2025 Theorem 5.2.9, line 5747), and (4), bigness from the geometric part after a large twist (Lemma 5.2.10, line 5821).
- §4.7's route now uses continuity for (1), Hilbert–Samuel with a small twist for (2) (nef case), and the large twist for (3).
- Added the counterexample as Checks in §4.3 and §4.7.

## F04 (P3) — applied

§4.4 Check: "⟨L,L⟩=2M since relative O(1)²=0" → ⟨L,L⟩ = ⟨O(1),O(1)⟩ + 2M. Over a field the first term is pulled back from Spec k, hence trivial, so the pairing degree is 2. Over Spec ℤ with M = O(1) the degree is 2 for the max metric and 5/2 for the Fubini–Study metric. This repair also settles b-F02.

## F05 (P3) — applied

§8.7 Checks and the Layer 8 Examples now read: deĝ(π_*⟨M̄,M̄⟩)/[K:ℚ] = −2ĥ_θ(M), with ĥ_θ the absolute height. GrossZagierAndArithmeticHeights §2.12 uses the height relative to K, so it gives −2[K:ℚ]ĥ_θ. Over a quadratic field the raw degree is −4a, as the witness says. The function-field case uses heights over k.

## F06 (P3) — applied

Deleted the sentence "Those Checks also retain the design's projective and dynamical equidistribution examples." from the ArithmeticDynamics supplier contract.

## F07 (P1) — applied

I recomputed the formula. zhang-2010 Proposition 2.5.3 (lines 1231–1290) uses i∫β∧β̄ = 1. Its curvature cross term squares to −2Σ(1/λ)|∫φβ_iβ̄_j|², giving coefficient 2/λ for β. With ω = √2β, each squared integral is multiplied by 4, so the coefficient for ω is 1/(2λ).
- §10.3(2) now gives the coefficient 1/(2λ) for (i/2)-orthonormal ω, and the equivalent 2/λ form for β.
- The Laplacian and eigenbasis are stated explicitly, and the route gives the computation.
- Added a normalization Check: 2S in both bases, against 8S for the old formula.

## F08 (P1) — applied

Verified: looper-silverman-wilms-2021 lines 695–734 and wilms-2022 line 1247 apply an arithmetic Hodge index inequality on C². No supplier owns it: I searched for "Hodge index", "pseudo-effective" and the Yuan–Zhang theorem numbers across main and the open heads, and found only geometric surface Hodge index in SchemeAndStackFoundations §5.10. This roadmap is therefore the owner.

New target §8.8 (placed after §8.7 so that it can use §§7.2a and 8.7):
- statement: the arithmetic Hodge index inequality, with the hypotheses of yuan-zhang-2025 Theorem 6.5.8 (line 8381);
- route: case n = 1 from §§8.2, 8.6, 8.7 and 7.2a; for n ≥ 2, a Bertini induction (SchemeAndStackFoundations §4.13);
- four Checks.

§13.4's route now carries out the whole argument:
- f^*Θ̄ = a(g+1)W − 2a²D − π^*P, from §9.1(1) over the base C, with a = g − 1;
- N² = 8g(g−1)³ and M·N = 0;
- expanding with the degrees from §10.7 gives 2a³φ − 2a²(2g+1)ω_a² ≤ 0, which is (1).

## F09 (P3) — applied

New target §3.5, total mass over a global field (yuan-zhang-2025 Lemma 5.4.4, line 6767). It depends on §§2.6 and 3.1 and has three Checks, including 𝔾_m ⊂ ℙ¹ with mass 1 against an algebraically trivial bundle. §2.6's statement and API now point to §3.5 instead of §5.2. The argument that no mass is lost at the boundary moved from §2.6 to §3.5. §5.2 and §4.9 now cite and need §3.5.

## F10 (P3) — applied

New Checks:
- §2.7: the canonical O(1) frame X₀ has norm 1/2 where |t| = 2 and norm 1 where |t| = 1/2. X₀² has norm 1/4, and pullback by t ↦ t² gives the same 1/4, including in characteristic 2.
- §8.1, archimedean: over Spec ℤ[1/2] take y² = x³ − x (complex fibre ℂ/(ℤ+iℤ) up to homothety). The metric exp(−cos 2πx) on O_X is not admissible (Laplacian −4π²cos 2πx), while Haar curvature on O(e) is.
- §8.1, trivially valued points: no constant rescaling is allowed there.

## F11 (P1) — applied differently

The witness holds: on the blow-up of a Jacobian, the pullback of Θ has degree 0 on the exceptional curve. §12.5(4)'s route now:
- passes to the closure Z of the image;
- moves nef bigness along generically finite dominant maps using §3.1's projection formula, instead of a new §4.5-style target;
- uses ampleness of Θ on the generic fibre of Z → T only;
- expands the top power with §3.3.

The statement now asserts potential bigness over Y only when Y is normal, and over the normalization in general, because §12.3 needs a normal base. Added the blow-up as a Check.

# Review pass b (prose below calls its findings b-F01 to b-F05)

## F01 (P2) — applied

§7.6(3) and (4) are now definitions. (3): at a trivially valued K the admissible metric is the canonical metric of §2.7, which is unique outright (yuan-2026 lines 4027–4033). (4): at an archimedean K the admissible metrics are b-th powers of the metrics of GrossZagierAndArithmeticHeights §2.4, and the canonical pair consists of b-th powers of the Arakelov metrics. §7.6(2) is restricted to nontrivially valued K, and the circular "apply (2) with O_K = K" route is gone.

The same split by type of point is applied in §8.1, §8.3(a)–(b), §10.3 and §10.6. Added a norm-equivariance Check (§7.6) and a check that φ = 0 over a trivially valued field (§10.3).

## F02 (P3) — applied

The same defect as a-F04, settled there with one repair. The review's text ("2M̄ + O(1/2)") and pass a's text agree after the computation.

## F03 (P3) — applied differently

§10.14 now fixes the base: g > 1, N ≥ 3, S = M₍g,N₎ over ℤ[1/N] with its universal curve. It states (1): there is no E ∈ D̂iv(S/ℤ) with zero underlying divisor whose Green function is ε(Γ_v) log e_v at discrete v and 0 at archimedean v.

The review's "consequently" clause is false. A divisor with Green function δ_v + ε_v at discrete v and δ(X_v) at archimedean v does exist: Ξ_S plus the pullback of O(4g log 2π) from Spec ℤ. The true consequence (2) is about δ alone: there is no E′ with Green function δ(Γ_v) log e_v at discrete v and t·δ(X_v) at archimedean v. The proof: Ξ_S − E′ plus that base divisor would be an E as in (1).

## F04 (P3) — applied

§12.4: "of finite codimension d > 0" → "d := m − dim Z > 0, where dim Z is the largest dimension of an irreducible component of Z". Added the mixed-dimension Check: 2 ≤ 3 holds, whereas reading d = 2 would give the false 2 ≤ √3.

## F05 (P3) — applied differently

- §§9.2 and 9.3: yuan-2026 line 379 → line 1239.
- §13.4: line 2921 → line 2972.
- §1.9: line 2255 → line 2262.
- gross-schoen-1995 in §10.10 and sources.toml: pp. 664–679 → **pp. 660–679**, not the review's 661. §6 begins on journal p. 660: the page header "660" is at gross-schoen-1995 line 364, and the §6 heading is at line 367.

# Checks and notes

## Checks run

- **Elaboration.** `lake env lean packages/ArakelovGeometryAndAbelianHeightsPartII/Suggested.lean` from the content checkout: exit 0, no output. No TauCeti module is imported, so nothing was built.
- **`#check` comparison.** Suggested.lean has zero declarations, so there was nothing to compare. Only the module docstring changed: Layers 7–8 now also list local Calabi uniqueness and the arithmetic Hodge index inequality as not statable. The missing carriers are local intersection on Berkovich curves and adelic pseudo-effectivity.
- **Dependency check** (output, verbatim):

  ```
  depcheck: 56 roadmaps, 651 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line. The new suppliers are SchemeAndStackFoundations §§4.13 and 5.10 (on main) and TropicalAndBerkovichArithmetic §3.3 (present at its open head).
- **`roadmaps resolve`.** Its only lead is StableReductionPartII §MC.4. That is the declared gap `curve-moduli-noether-positivity`, and §MC.4/fine-level-scheme is one of its listed interfaces.
- **Ownership.**
  - Local Calabi uniqueness, the arithmetic Hodge index inequality and the quasi-projective total-mass identity have no owner on main or at the open heads. I searched by object ("Calabi", "Hodge index", "pseudo-effective" and the Yuan–Zhang theorem numbers), so this roadmap owns them.
  - No new supplier gap was needed; `design/plan.json` is unchanged.

## Adversarial pass on new and changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| §2.4 dimension-zero split | Spec 𝔽₂/𝔽₂; Spec ℤ | discrete set ∅, Uᵃⁿ one point; ℤ has p-adic and archimedean points | split needed and correct |
| §7.2a | O with norms 1 and e⁻¹; ℙ¹/ℚ_p clamp | f ≡ 1, M̄² = 0; M̄² = 0 − log p = −log p, energy log p | sign and equality case consistent with TropicalAndBerkovichArithmetic §3.3 (∫fΔf = ∫f′²) |
| §4.3(3)–(4), §4.7 | ℙ¹_ℚ, O(1)_max ⊗ O(c−1) | vol 0 for c < 1; 2(c−1) > 0 for c > 1; h_L̄([1:ζ]) = −1 forces c ≥ 1 | large twist needed only without nefness |
| §4.4 Check | ℙ¹_ℤ, M = O(1) | max metric 0 + 2 = 2; Fubini–Study 1/2 + 2 = 5/2; over a field 2 | corrected |
| §8.7 Checks | quadratic K, absolute height a | deĝ ι^*Θ̄ = 4a, pairing −4a, normalized −2a; torsion 0 | corrected |
| §10.3(2) | β = ω/√2 | (1/(2λ))·4S = 2S = (2/λ)·S; old formula 8S | corrected |
| §8.8 | n = 1, M̄ = π^*N̄; Fubini–Study O(1); vertical clamp; genus-3 C² | 0 (sharp); +1/2 (deg M = 1, hypothesis needed); −log p; N² = 192, M·N = 0 | consistent |
| §13.4 route | general g, a = g − 1 | M·N = 4a²(a+1−g) = 0; N² = 8ga³; M² = −2a³; total 2a³φ − 2a²(2g+1)ω_a² | gives (g−1)/(2g+1) |
| §3.5 | ℙ¹ O(2); ℙ¹×ℙ¹; 𝔾_m with O(1)_max | 2; 1; 1 against 0 for the trivial metric | consistent with §2.6 Checks |
| §7.6(3)–(4), §8.1 | k(S) with trivial valuation; ℂ with \|·\|^{1/2}; Spec ℤ trivial point | norm scales by \|λ\| = 1; by \|λ\|^{1/2}; Green value t·g = g forces 0 | definitions norm-equivariant |
| §10.3 trivial K | C² over trivially valued K | c₁² = (2−2g)δ_ζ, g_Δ(ζ) = 0, φ = 0 | consistent with §10.6 continuity |
| §12.5(4) | blow-up of a genus-2 Jacobian | exceptional degree 0, Θ² = 8 > 0 | ampleness false, bigness true |
| §12.4 | mixed-dimension Z, Σ = {p, q} | degree 3, d = 1: 2 ≤ 3; d = 2 would give 2 ≤ √3 (false) | d := m − dim Z |
| §10.14(2) | Ξ_S − E′ + O(4g log 2π) | discrete: ε log e_v; archimedean: −4g log 2π + 4g log 2π = 0 | reduces to (1); review's version refuted |

## Notes for the maintainer

- **New targets:** §2.4's case split, §3.5, §7.2a and §8.8. No Lean names changed.
- **Changes downstream roadmaps may notice:** §7.6(3)–(4) are now definitions rather than theorems, and §12.5(4) asserts potential bigness only over a normal Y, or over the normalization in general.
- **Source issues recorded in this report only.** The design file was not edited, because this job may change only `design/plan.json`'s `gaps` list.
  - zhang-2010 Theorem 1.3.1 (line 215) and yuan-2026 §3.3.1 (line 1671) print 2/λ with an (i/2)-normalized basis; the coefficient should be 1/(2λ).
  - zhang-2010 Proposition 2.5.3 (line 1238) prints ω_i(y)ω̄_i(y) in the curvature term where ω_i(y)ω̄_i(x) is meant.

## Gate repairs

- Finding headings now use the reviews' own ids (`## F01 (P2) — applied`). They are grouped under one level-1 heading per review pass because both passes number from F01.
- README §12.5 route: the brace subscript `deg(Θ|_{Z_η}^r)` was rewritten as the code span `deg(Θ^r on Z_η)·(P|_T)^t > 0`, with Z_η defined as the generic fibre of Z → T. The mathematics is unchanged.
