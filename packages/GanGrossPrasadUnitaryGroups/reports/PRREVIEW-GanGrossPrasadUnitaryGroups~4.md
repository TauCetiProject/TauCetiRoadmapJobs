# Review of GanGrossPrasadUnitaryGroups (pull request #1404 at 35729d4)

**Verdict:** needs changes

Incremental re-review of the 41 changed lines since 7df8ca8 (all in `TauCetiRoadmap/GanGrossPrasadUnitaryGroups/README.md`; nothing changed outside the folder). The change repairs four of the previous review's six findings in substance: §6.3a(i) is now exactly bplzz Lemma 4.9, §3.3a defines quasi-characters as bp-arch does and states the nonarchimedean local character expansion as its own theorem, and three page numbers are corrected. The manifest now records `kmsw` and `bpc-bessel`. What remains: the plan's gap list on the board is unchanged (the repair's reported retirement of three entries is not on the board), and the new §3.3a text has three small defects of its own (an unowned route input, a proof-sketch identity that fails for finite-length representations, an undefined object in theorem (d)) plus one page range that the fix moved to the wrong pair of pages. No finding is blocking. The gate passes with the build; the dependency check shows no UPWARD or CYCLE line.

## R01 (P3) — §3.3a(a): the route uses Howe's finiteness theorem, which nothing owns

Location: `TauCetiRoadmap/GanGrossPrasadUnitaryGroups/README.md` line 707, "Howe's finiteness theorem for the span of orbital integrals restricted to functions invariant under a lattice, with the Shalika germ expansion and its homogeneity, shows that the descended distribution agrees near 0 with a linear combination of the nilpotent orbital measures".

Claim: every input of the route for (a) is a target here, a named supplier section or a pinned declaration (the Needs line at line 717 names EndoscopicTransferAndUnitaryTraceComparison §§2.1, 2.3, 2.6, 2.16, AutomorphicFormsOnReductiveGroups §2.7, §3.2a and gap local-tempered-bounds).

Witness: at the head of pull request #999, `TauCetiRoadmap/EndoscopicTransferAndUnitaryTraceComparison/README.md` §2.1 (line 689) states centralizer normalization, Lie orbital integrals, descent and the Weyl integration formula; §2.6 (line 829) the Shalika germ expansion for orbital integrals of `C_c^∞(𝔤(F))` with homogeneity and semisimple descent; §2.16 (line 1060) finite rank, local integrability, the Weyl formula and elliptic determination. The word "Howe" occurs there only inside §2.16's proof route (line 1067, Howe's small-compact orbit parametrization), not as a stated result. A `roadmaps grep` over main and the 466 open heads for "Howe" (excluding Howe–Moore and Howe duality) and for "span of (the )?orbital integrals" finds no roadmap that states the finiteness theorem; the only hit is this README's line 707. The finiteness theorem is the step that turns the Shalika expansion (one neighbourhood per test function) into one expansion for the distribution Θ_π on a fixed neighbourhood, so (a) does not follow from §2.6 alone.

Repair: state the input in §3.3a as its own theorem before (a), in the author's words: for F nonarchimedean, a compact open subgroup (lattice) L of g(F) and a compact subset ω of g(F), the restrictions to the L-invariant functions in C_c^∞(g(F)) of the orbital integrals O_X, X ∈ ω ∩ g_rs(F), span a finite-dimensional space; give a locator (Clozel, Orbital integrals on p-adic groups: a proof of the Howe conjecture, Ann. of Math. 129 (1989), main theorem; or Barbasch–Moy, A new proof of the Howe conjecture, J. Amer. Math. Soc. 13 (2000), main theorem), record the work in `sources.toml`, and list the new theorem in the Needs line of (a). Then add EndoscopicTransferAndUnitaryTraceComparison §2.1 to Layer 3's Dependencies (line 934 lists "§§2.3, 2.6 and 2.16" only, although line 717 now needs §2.1). With the theorem stated here, the route of (a) has an owner for every named input.

## R02 (P3) — §3.3a(b): the eigen-identity in the sketch fails for finite-length representations

Location: `TauCetiRoadmap/GanGrossPrasadUnitaryGroups/README.md` line 703, "(b) For F archimedean, the character of a finite-length admissible representation of G(F) is a quasi-character: Harish-Chandra's regularity theorem gives … zθ_π=χ_π(z)θ_π for the infinitesimal character χ_π".

Claim: a finite-length admissible representation has an infinitesimal character χ_π with zθ_π = χ_π(z)θ_π.

Witness: G = GL₁(ℝ), Z(g) = ℂ[X] with X the Euler operator x d/dx, π = |·|^(s₁) ⊕ |·|^(s₂) with s₁ ≠ s₂ (length two). θ_π = |x|^(s₁) + |x|^(s₂) and Xθ_π = s₁|x|^(s₁) + s₂|x|^(s₂); since |x|^(s₁) and |x|^(s₂) are linearly independent on ℝ^×, no scalar c has Xθ_π = cθ_π. The conclusion of (b) still holds for this π: D_G = 1, every zθ_π is smooth and locally bounded, and zT_θ = T_(zθ) by integration by parts on ℝ^× = G_rs, so θ_π ∈ QC(G(ℝ)); bp-arch line 3814–3818 (p. 101) derives it from dim Z(g)T_θ < ∞, not from an eigenvalue.

Repair: write the eigen-identity for irreducible π ("zθ_π = χ_π(z)θ_π for irreducible π with infinitesimal character χ_π, so that zT_(θ_π) = χ_π(z)T_(θ_π) = T_(zθ_π)") and conclude for finite length by summing the characters of the Jordan–Hölder constituents, QC(G(ℝ)) being a vector space; or replace the clause by "dim Z(g)T_(θ_π) < ∞, so Harish-Chandra's representation theorem applies (bp-arch p. 101, line 3814–3818)". On the GL₁(ℝ) instance the summed form gives Xθ_π = s₁θ₁ + s₂θ₂ with both summands quasi-characters, as required.

## R03 (P3) — §3.3a(d) states a theorem about θ_f without defining θ_f or "strongly cuspidal"

Location: `TauCetiRoadmap/GanGrossPrasadUnitaryGroups/README.md` line 703, "(d) For a strongly cuspidal Harish-Chandra Schwartz function f on G(F), the function θ_f is a quasi-character, and it is the absolutely convergent integral in QC(G(F)) of the tempered characters θ_π against the Plancherel-weighted function D(π)θ̂_f(π)".

Claim: θ_f, strongly cuspidal and θ̂_f are defined where first used (the README's own rule for vocabulary and notation).

Witness: `grep -n 'θ_f'` on the README returns lines 703 and 764 only, both uses; "strongly cuspidal" and "weighted orbital" have no defining sentence anywhere in the file. The source defines strong cuspidality as f^P = 0 for every proper parabolic P, with f^P(m) = δ_P(m)^(1/2)∫_(U(F)) f(mu)du (bp-arch §5.1, p. 118, line 4396–4404), and θ_f(x) = (−1)^(a_G−a_(M(x)))ν(G_x)⁻¹D_G(x)^(−1/2)J^G_(M(x))(x,f) for x ∈ G_reg(F), with M(x) the centralizer of A_(G_x) and J^G_M Arthur's weighted orbital integral of §1.10 (bp-arch §5.2, p. 120, line 4466–4471; §1.10, pp. 43–45, line 1651). Theorem (d) is also consumed by §3.5 (line 764, "J(f) = m_geom(θ_f)"), so the undefined object reaches a headline target.

Repair: in (d), before the statement, define "strongly cuspidal" by the vanishing of every proper constant term f^P and θ_f by the displayed formula, naming Arthur's weighted orbital integral J^G_(M(x))(x,f) with the bp-arch locators above, and say that θ̂_f(π) is the weighted character (−1)^(a_G−a_M)J^G_M(σ,f) for π = i_M^G(σ) of bp-arch §5.4 (p. 127, line 4697). With these three definitions, (d) and §3.5 read as statements about named objects.

## R04 (P3) — gap:relative-geometric-comparison: the proof of bpcz Proposition 10.1.6.1 is on pp. 88–89, not pp. 88–90

Location: `TauCetiRoadmap/GanGrossPrasadUnitaryGroups/README.md` line 147, "(bpcz §10.1.6, proof pp. 88–90, bpcz line 4775–4831)".

Claim: the cited proof spans pages 88 to 90.

Witness: in the bpcz extraction the page-88 marker is at line 4740, the page-89 marker at line 4781 and the page-90 marker at line 4834; Proposition 10.1.6.1 is stated at line 4755–4767 (p. 88), its proof runs from line 4772 to the end-of-proof mark at line 4832 (p. 89), and line 4835 opens §10.2 on p. 90. The previous text "pp. 89–90" was wrong by one page at the start; the fix moved the error to the end.

Repair: write "proof pp. 88–89".

## R05 (P3) — `design/plan.json` on the board still disagrees with the README's gaps (three retired slugs kept, one slug missing, five relabelled)

Location: `packages/GanGrossPrasadUnitaryGroups/design/plan.json`, `gaps`; `TauCetiRoadmap/GanGrossPrasadUnitaryGroups/README.md` line 107 (gap:real-plancherel-decomposition) and lines 408, 647, 697 (§§2.1a, 3.2a, 3.3a own the former gaps).

Claim: every gap the README declares is declared where the intake reads it, with the same supplier and section, and nothing the README no longer requests is announced on a supplier's job.

Witness: the board repository's main today (commit 91d4835d, 2026-11-07) carries a `plan.json` with 36 `gaps` entries, including `distribution-gk`, `local-fourier-extension` and `local-schwartz-germs`, and without `real-plancherel-decomposition`; the README has 34 `gap:` slugs. The board's last change to the file is the package submission of 2026-10-22, and the board commit that recorded the repair of the previous review (3965bcdd) touched only `sources.toml` and the reports, so the repair's reported retirement of the three entries (36 → 33) is not on the board. The five supplier/section disagreements listed in the previous review's R04 (`enhanced-packets`, `global-parameters`, `ordinary-endoscopy`, `spectral-isolation`, `hermitian-unitary`) persist, the file being unchanged since then. The brief's own list of this roadmap's declared gaps, read from that plan, still announces the three retired requests on AutomorphicSpectralTheory's job.

Repair: in the plan's `gaps` list delete the three retired entries, add `real-plancherel-decomposition` (supplier AutomorphicFormsOnReductiveGroups, section "§§2.4, 2.7: real Plancherel supplement", `needs` the README's first sentence at line 107), and set the five entries' `supplier`, `section` and `needs` to the README's wording. Carried from the previous review's R04 (and the first review's R01); the relabelling is an author edit if the repair job may only retire entries.

## Previous findings

- R01 — repaired: line 1369 reads "matching relative orbital integrals, Ω_□(γ)O(γ,f′)=O(δ,f_h) at every matching regular semisimple pair, if and only if they have matching relative characters", which is bplzz Lemma 4.9 (line 1710–1715); the route (line 1373) recovers orbital integrals on the G_h-image only, and the former counterexample is the non-example Check at line 1388 (verified below).
- R02 — repaired: lines 699–701 define quasi-characters as bp-arch §4.1 (exact expansion over Nil(g_x) on a G_x-excellent neighbourhood, finest locally convex and projective-limit topologies, line 3067–3082) and §4.4 (Z(g)-conditions, seminorms q_(L,z), inductive limit, line 3791–3813); the O(|X|) expansion is theorem (c) with the uniqueness argument (line 3986–3993). The separating instance θ = |det g|^(1/2)|a−b| is now the first Check (line 721) and the definition rejects it.
- R03 — repaired: theorem (a) at line 703 states the nonarchimedean local character expansion with the G_x-excellent neighbourhood, coefficients over all of Nil(g_x) and the locator bp-arch Proposition 4.1.1, line 3083–3085; its route names its inputs, one of which has no owner (this report's R01).
- R04 — not repaired: the board's `plan.json` has the same 36 entries it had at 7df8ca8 (this report's R05).
- R05 — repaired: `sources.toml` has 19 records, `kmsw` at line 311 (arXiv 1409.3731v1) and `bpc-bessel` at line 329 (author page); the README's line locators into both are the ones verified in the previous review.
- R06 — repaired: line 1256 reads "bpcz §4.1.5, p. 50" (page-50 marker at line 2551, page-51 at 2602; the passage is line 2584–2593).

## Verified sound

**Gate, build and elaboration.** My run of the gate on this head with `--build` and `--order`: every counter 0 and `build=0 OK`, exit 0. The dependency check: `depcheck: 239 roadmaps, 2368 edges, 0 problem(s)`, no UPWARD, CYCLE or `moved:` line. `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/GanGrossPrasadUnitaryGroups'` is empty. `lake env lean` on `Suggested.lean` exits 0 with no output in 10 s; the file is unchanged by this head (59 lines, a module docstring naming the headline theorems that are not statable at the pins, an empty namespace, no declaration), so there is no `#check` probe, no padding probe, no sorry'd data and no `set_option`, as the previous review recorded.

**Changed passages, read against the sources** (every locator opened in the cached extraction; page markers checked):
- Line 699: ĵ(O,·) smooth on g_reg, locally integrable, D^(1/2)ĵ(O,·) locally bounded, homogeneity ĵ(O,λX) = |λ|^(−dim O/2)ĵ(λO,X), λO = O for squares — bp-arch (1.8.5), pp. 40–41, line 1557–1568, as cited. G-excellent open sets — bp-arch §3.3, p. 74, line 2811–2817, as cited.
- Line 701: p-adic quasi-characters and the two topologies — bp-arch §4.1, pp. 80–81, line 3067–3082; real quasi-characters, q_(L,z), inductive limit — §4.4, pp. 100–101, line 3791–3813, as cited. The source's "smooth" on Ω_reg is "locally constant" for p-adic F, as the README writes.
- Line 703 (a): bp-arch Proposition 4.1.1, p. 81, line 3083–3085 (θ_π a quasi-character for irreducible admissible π; the definition at line 3067–3074 supplies the neighbourhood and coefficients the README writes out). (c): §4.5, p. 106, line 3984–4011 (expansion over Nil_reg(g_x) with O(|X|), uniqueness from homogeneity and linear independence, c_θ as the average, Proposition 4.5.1(i)–(iii)); Whittaker interpretation, p. 115, line 4293–4300. (d): Proposition 5.6.1(ii), p. 130, line 4806–4812 (θ_f a quasi-character, θ_f = ∫_(X(G)) D(π)θ̂_f(π)θ_π dπ absolutely convergent in QC(G(F)); X(G) is the space of virtual tempered representations, line 4296, and D(π) is the elliptic weight of §2.7, line 2380 and 2423).
- Line 712: Proposition 4.4.1(ii) and (iv), p. 101, line 3819–3833, as cited.
- Line 147: bpcz Proposition 10.1.6.1 and its proof, line 4755–4832 (R04 for the pages).
- Line 613: ggp §6 begins at line 720 on p. 19 (marker at 687) and Theorem 6.1 is at line 729 on p. 20 (marker at 724): "pp. 19–20" is right.
- Line 833: xue-real Lemma 3.9 set-up at line 1017–1021 on printed p. 1023 (header at line 989) and the lemma at line 1024–1025 on printed p. 1024 (header at line 1023): "pp. 1023–1024" is right.
- Line 1018: bpc-bessel Theorem 1.3.3.1 at line 268–284 across the page-7 marker at 271 (pp. 6–7) and §1.3.6 with Theorem 1.3.6.1 and Remark 1.3.6.2(3) at line 352–379 across the page-9 marker at 362 (pp. 8–9): "pp. 6–7 and 8–9" is right.
- Line 1256: bpcz §4.1.5, line 2584–2593, p. 50 (R06 repaired).
- Line 1369: bplzz Lemma 4.9, line 1710–1715, both directions, matching in the sense of Definition 4.4(1) (matching pairs only, line 1613–1621 as read in the previous review).

**Seeded sample.** Of the fifteen seeded targets, the diff touches only 4.4 (the bpc-bessel page fix, verified above) and the section containing the ggp page fix (3.1, cited by 3.2 for normalisation transport); the other sampled locators are unchanged since the previous review, which verified them (its list is carried: 1.3, 2.3, 2.5, 2.6, 2.7, 3.2, 3.7, 4.2, 4.4, 5.2, 5.4, 6.3, 7.1, 7.2, 7.3).

**Supplier citations resolved this round** (at the head of pull request #999 via `roadmaps show`): EndoscopicTransferAndUnitaryTraceComparison §2.1 "Centralizer normalization, Lie orbital integrals and descent" (its (iii)–(iv) carry the Weyl integration formula and the Lie-algebra version the README names), §2.3, §2.6, §2.16 as in the previous review; §2.13 states Harish-Chandra's local integrability for Ô_X, X regular semisimple, p-adic with p large, so the README's all-places statement for nilpotent O at line 699 is not a duplicate. Ownership of the nonarchimedean local character expansion: no roadmap on main or at the 466 open heads states it (`roadmaps grep` for "character expansion", "Harish-Chandra–Howe"); SmoothRepresentationsOfLocalGroupsPartII at #1815 (merge order 280, after this roadmap at 232) does not state it, and ExceptionalThetaCorrespondencesForG2 at #1736 requests from it only the wavefront dimension formula that presupposes the expansion. Scope line 17 now names the expansion as owned here, consistently with §3.3a(a). Ownership against the open pull requests without files in this brief was not checked beyond those greps.

**Gap audit of the changed contract text.** The only changed gap sentence is the page range in relative-geometric-comparison (R04); its `needs` is unchanged, precise and minimal. The README's 34 slugs all name suppliers earlier in the merge order; the plan mismatch is R05.

**Adversarial table** (values computed this round for every changed statement; rows marked "r3" carry the previous report's rows for statements the diff leaves untouched, and rows marked "r1" its carried rows).

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 3.3a p-adic definition rejects the former instance (Check 1) | GL₂(F), θ = \|det g\|^(1/2)\|a−b\|, x = 1, Y = diag(y₁,y₂) | D_G(g) = \|a−b\|²/\|ab\|, so D^(1/2)θ = \|a−b\|² = \|y₁−y₂\|² = O(\|Y\|²); θ(e^(λY)) = \|λ\|θ(e^Y) for \|λ\| ≤ 1; Nil(gl₂) = {0, O_reg}; ĵ(0,·) = 1 (degree 0), ĵ(O_reg,λY) = \|λ\|⁻¹ĵ(O_reg,Y) for λ a square; equality \|λ\|θ = c₀ + c₁\|λ\|⁻¹ĵ(O_reg,Y) for all small square λ forces c₁ = 0 then c₀ = 0, but θ(e^Y) = \|y₁−y₂\| ≠ 0 | Check correct; R02 repaired | none |
| 3.3a real definition rejects sin(1/D_G) (Check 2) | SL₂(ℝ), t_s = diag(e^s, e^(−s)) | D_G(t_s) = (e^s−e^(−s))² ≈ 4s²; (D^(1/2)θ)(t_s) ≈ 2\|s\|sin(1/(4s²)); second s-derivative = s⁻³cos(1/(4s²)) − ½s⁻⁵sin(1/(4s²)), of size \|s\|⁻⁵; D^(1/2)θ itself bounded by 2\|s\| | Check correct | none |
| 3.3a(a) coefficients | GL₂(F) trivial representation at 1; Steinberg | θ = 1 = ĵ(0,Y) on all of g, c_(π,0) = 1, c_(π,O_reg) = 0; St tempered, Whittaker model of type O_reg, c_(St,O_reg)(1) = 1 (Prop 4.8.1(i)) | Check 6 correct | none |
| 3.3a(b) eigen-identity for finite length | GL₁(ℝ), π = \|·\|^(s₁) ⊕ \|·\|^(s₂), s₁ ≠ s₂, X = x d/dx | Xθ_π = s₁\|x\|^(s₁) + s₂\|x\|^(s₂) ≠ cθ_π for every c; θ_π still in QC (D_G = 1, zθ bounded, zT = T_(zθ)) | conclusion true, sketch identity false | R02 |
| 3.3a(c) uniqueness of regular coefficients | gl₂, D^(1/2)ĵ(O_reg,·) | dim O_reg = 2, D(e^Y)^(1/2) ≈ \|y₁−y₂\| of degree 1, ĵ(O_reg) of degree −1, product degree 0; D^(1/2)·ĵ(0) = \|y₁−y₂\| = O(\|Y\|) so c₀ is not seen by (c), c_reg is | consistent with "for regular O are unique" | none |
| 3.3a(d) integral | bp-arch line 4806–4812 | integral over X(G) (virtual tempered), weight D(π) = \|det(1−w)_(A_G^M)\|⁻¹\|W(σ)_w\|⁻¹ (line 2380) | statement matches the source; objects θ_f, θ̂_f undefined in the README | R03 |
| 3.3a route (a) inputs | ETUTC §§2.1, 2.6, 2.16 at #999 | §2.6(b) gives O_X(f) = Σ Γ_O(X)μ_O(f) on a neighbourhood U_f depending on f; the uniform neighbourhood for Θ_π needs Howe's finiteness; no owner found | unowned route input | R01 |
| 3.4 c_θ reference to 3.3a | U(2)×U(1) at 1; W = ℂ, x = −1 | c_θ(1) = 0 (Nil_reg(u(2)) = ∅, as 3.3a Check 4); \|N_(ℂ/ℝ)(2)\| = 4 | unchanged values, now defined by §3.3a | none |
| 6.3a(i) without the vanishing clause | f′ = f′₁ + f′₂ with (f′₂, 0) matching on G_h at a real place, (f′₁, f_h) matching | orbital side: O(γ,f′) = O(γ,f′₁) + 0 = O(δ,f_h) on matching pairs; character side: I_(BC(σ))(f′) = I(f′₁) + κJ_σ(0) = κJ_σ(f_h); both hold; O(γ,f′₂) ≠ 0 on a G_(h′)-orbit untouched by either side | "iff" now true in both directions; Check 4 correct | none (R01 repaired) |
| 6.3a(ii), (iii) | μ by 3 and 3, then 2; (2,3) at ψ, (1,1) at χ | 3κJ = 3I; 2κJ = 3I fails when I ≠ 0; μ̃′(ψ′) = 4·9 = 36 = μ̃_h(ψ_h); 1 at χ | r3 | none |
| gap relative-geometric-comparison pages | bpcz markers 4740/4781/4834 | statement line 4755–4767 (p. 88), proof 4772–4832 (pp. 88–89), §10.2 at 4835 (p. 90) | "pp. 88–90" off by one page at the end | R04 |
| 3.1 page of ggp §6 | markers 687 (p. 19), 724 (p. 20) | §6 heading line 720 on p. 19, Theorem 6.1 line 729 on p. 20 | "pp. 19–20" correct | none |
| 3.8 page of xue-real Lemma 3.9 | headers line 989 (1023), 1023 (1024) | set-up 1017–1021 on 1023, lemma 1024–1025 on 1024 | "pp. 1023–1024" correct | none |
| 4.4 pages of bpc-bessel | markers 223/271/309/362 | Thm 1.3.3.1 line 268–284 on pp. 6–7; §1.3.6 line 352–379 on pp. 8–9 | correct | none |
| 6.1a page of bpcz §4.1.5 | markers 2551 (p. 50), 2602 (p. 51) | line 2584–2593 on p. 50 | correct | none (R06 repaired) |
| 2.1a, 2.7, 3.2, 3.2a, 3.5, 3.9, 4.4 character, 5.1, 5.1a, 5.2, 5.3, 5.4, 6.1a, 6.2, 6.2a, 7.3, Conventions, 3.1 epsilon | as in the previous review | as computed there | hold | r3, none |
| 1.1, 1.2, 2.1–2.6, 3.6–3.8, 3.10–3.11, 4.1–4.3, 5.5, 6.4–6.5, 7.1–7.2, 7.4 | as in the first review | as computed there | hold | r1, none |
| Headline statability | each group of README line 201 | no carrier at the pins; docstring names each; file unchanged | docstring correct | none |

**Supplier-order audit.** The new Needs item (EndoscopicTransferAndUnitaryTraceComparison §2.1) is to a roadmap at merge-order line 139, before this roadmap at 232; the dependency check reports 0 problems; no supplier cites this roadmap back.

**Settled findings.** The board's repair reports mark one finding `not actionable in this package` (F04: successor scope and ownership of Part II); I do not re-raise it. The previous repair marked two parts of R04 as outside the repair job's remit; R05 restates the whole mismatch because the part the repair reported as done is not on the board.

## Not verifiable

- xue-real (3.12) and (3.14), p. 1010: the epsilon-factor conjugation convention cannot be read from the cached extraction (symbol font lost); unchanged from the previous reviews.
- xue-bessel: waived in the manifest; cited by locator only.
- bpcz line 155, the definition of L(s,σ): the extraction drops the fraction bar; as in the previous review, the position of L(s+1/2,σ,Ad) was checked by the consistency of the two §5.3 numerical Checks, not by rendering the page.

## Source issues

- **Misprint** in bpcz at (7.1.2.1), p. 71 (line 3792–3793): the source says the datum is H-generic when π_(n,i) ≠ π_(n+1,j), "or equivalently" when L(s,π_(n,i)×π_(n+1,j)) is entire; it should compare π_(n+1,j) with the contragredient of π_(n,i); affects nothing (recorded in the previous review; the README states the contragredient form).
