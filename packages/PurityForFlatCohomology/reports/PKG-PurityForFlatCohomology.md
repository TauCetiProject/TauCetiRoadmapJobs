# PKG-PurityForFlatCohomology — package report

Deliverables: `packages/PurityForFlatCohomology/README.md` (2337 lines, Layers 0–8),
`packages/PurityForFlatCohomology/Suggested.lean` (155 lines), `packages/PurityForFlatCohomology/metadata.toml`
(`topic = "math.AG"`), `packages/PurityForFlatCohomology/sources.toml` (32 entries, 0 problems under
`sources check`), and the top-level `gaps` list of `packages/PurityForFlatCohomology/design/plan.json`
(nothing else in `plan.json` changed; verified by comparing every other top-level key with `HEAD`).

Inputs: the accepted design (`design/README.md`, `design/plan.json`). There is no `design/review.json` and
`reports/` was empty; the acceptance is recorded in `plan.json` (`review.status = "accepted"`) and in the
design README's closing section. Its corrections (support continuity, boundary-degree descent, torsion
reduction, counterexample degrees, coniveau supports, residue descent, existing tower ownership,
Auslander's criterion as an owned proof obligation) are kept.

## 1. Headline theorems

| Headline | Source | Status |
|---|---|---|
| Zariski–Nagata purity, virtual dimension ≥ 2 (full faithfulness, connectedness) | CS24 Thm 3.3.1(a) | **stated**: `zariskiNagata_full_faithful_connected`. The π₁-surjectivity clause is not stated: finite étale schemes over a connected scheme carry no Galois-category/fibre-functor structure at the pins. |
| Zariski–Nagata purity, virtual dimension ≥ 3 (equivalence) | CS24 Thm 3.3.1(b) | **stated**: `zariskiNagata_isEquivalence`; π₁-isomorphism clause not stated (same reason). |
| Gabber's local Picard conjecture (torsion) | CS24 Thm 7.2.1 | **stated**: `localPicard_torsion_eq_one` |
| Pic(U_R) = 0 for CI of dim ≥ 4 or regular | CS24 Thm 7.2.1 | **stated**: `localPicard_subsingleton` |
| Purity for flat cohomology of complete intersections; regular rings in degree dim R | CS24 Thms 6.2.3, 6.2.7 | not statable: no fppf cohomology with supports, no restriction maps on fppf cohomology along open immersions usable at the pins (Mathlib `Sheaf.cohomologyPresheaf` needs sheafification valued in the morphism universe; probed: `HasSheafify (Scheme.fppfTopology.over (Spec R)) AddCommGrpCat.{u}` fails to synthesize, only `.{u+1}` exists; `Sheaf.H` has no restriction maps), no functor from commutative group schemes to abelian fppf sheaves |
| Gabber's étale-depth bound; all finite étale coefficients below vdim | CS24 Thms 3.2.4, 6.2.4 | not statable: same (étale cohomology with supports on the large étale site) |
| Global purity for finite flat coefficients | CS24 Thm 7.1.2 | not statable: same |
| Key formula; purity for perfectoid rings; arc descent of flat cohomology | CS24 Thms 6.1.1, 6.1.2, 5.5.1 | not statable: in addition no prismatic Dieudonné modules and no p-complete arc site |
| Purity for torsors and gerbes (Moret-Bailly) | CS24 Thm 7.1.3 | not statable: no torsors/gerbes under finite locally free group schemes over a scheme |
| Gabber's local Brauer conjecture; Brauer purity; Auslander–Goldman; residue sequences | CS24 Thm 7.2.5; C19 Thms 1.1–1.3, 6.2, Rem 6.4 | not statable: no Brauer group of Azumaya algebras on a scheme, no étale cohomology of 𝔾_m with restriction maps |
| Purity for groups of multiplicative type and for tori | CS24 Thms 7.2.8–7.2.9; C19 Thms 1.4, 6.1 | not statable: no groups of multiplicative type over a base scheme |
| Picard groups of global complete intersections | CS24 Cor 7.2.3 | not statable: no grading on the quotient of a polynomial ring by a homogeneous ideal, so the global complete intersection as a `Proj` is unavailable |

Each non-statable headline is named in the module docstring of `Suggested.lean` with the missing carrier.
Definitions added only to state the headlines (real bodies on native carriers): `puncturedSpectrum`
(complement of `V(Ring.jacobson R)`), `CohenPresentation` (bundles a regular local ring and a surjection to
`AdicCompletion`), `IsCompleteIntersection` (weakly regular generating list of the kernel), `virtualDimension`
(`sInf` over presentations of `μ(𝔪_B) − μ(ker)`; all presentations give the same value by SGA 2 XIV 5.2),
`finiteEtalePullback` (`MorphismProperty.Over.pullback` for finite étale).

## 2. Elaboration

`lake env lean <abs path>/Suggested.lean`, run from the content checkout, after
`lake build TauCeti.AlgebraicGeometry.LineBundle.Class` (the only Tau Ceti import; its olean was built):
exactly **4** warnings, all `declaration uses 'sorry'` (lines 114, 125, 135, 147); no other message.
A scratch file with the whole module followed by `#check @name` for all ten declarations (including
`CohenPresentation.mk`) was elaborated once; every elaborated type was compared with its README statement
(§§0.1, 1.1, 1.8, 7.7): all binders are explicit in the signatures (no section variables), the hypotheses
`[IsLocalRing R] [IsNoetherianRing R]` are present on all four theorems, and nothing changed.
No `set_option`, no sorry'd data, no `example`, single `import Mathlib` plus one existing `TauCeti.*` module.
The scratch content gate (`tauceti-roadmap gate` on a copy of the three files) reports
`readme-ids-missing=0 … OK`.

## 3. Moves down (notions owned by roadmaps later in the merge order, now targets here)

Merge-order position of this roadmap: 66. The design relied on several later roadmaps; their content is
stated here and the later roadmaps should import it.

| Notion | Later roadmap that plans it | Now |
|---|---|---|
| fppf limits of finitely presented group schemes (absolute and with fixed support) | SchemeAndStackFoundationsPartII (198) | §0.3 |
| Crystalline key formula over perfect schemes, pro-fppf site (CS24 §4.1) | SchemeAndStackFoundationsPartII (198); PrismaticCohomologyPartIII §6.0 `Prismatic.FlatCohomology.perfectDieudonneComparison` (67) | Layer 2 |
| Animated flat cohomology, Bégueri, deformation triangle, p-continuity, excision, fpqc/mod-p descent (CS24 §§5.1–5.5) | SchemeAndStackFoundationsPartII Layers 2–9; PrismaticCohomologyPartIII §6.0 (`pContinuity`, `excision`) | Layer 3 |
| Gabber's affine Lefschetz, dualizing complex on excellent regular local rings, local duality, local Lefschetz (CS24 Lemma 3.2.3) | EtaleDualityAndPerverseSheavesPartII EQ.7 (119) | §§1.4–1.5 |
| Algebraization over punctured spectra (Stacks 0DXR, 0DX9, 0EJP) | SchemeAndStackFoundationsPartII (198) | §1.7 (Ferrand–Raynaud replaced by LocalPurity §1.3 `extends_iff_completion_extends`) |
| Gabber–de Jong Br = Br′ with an ample bundle | SchemeAndStackFoundationsPartII Layer 1 | §7.11 |
| Groups of multiplicative type and tori over a scheme | SchemeAndStackFoundationsPartII (design gap SF-PII-tori) | §7.15 |
| C19 Lemma 2.1, Props 2.2–2.3, Cor 2.4, Appendix A | SchemeAndStackFoundationsPartII | §8.2 |
| Br(K^unr) = 0 (Lang) and unramified descent of Brauer classes | SchemeAndStackFoundationsPartII (design gaps BR-RESIDUE-*) | §8.13 (descent now proved from §3.5 excision) |
| SGA 2 XI 3.13(ii) (local Grothendieck–Lefschetz for Pic); factoriality of regular local rings; Burch–Kohn | DeformationAndDerivedPatchingAlgebra §6.9, R03.3 (69) | §§7.6, 7.4, 1.3 |

ArcTopologyAndDescent (118) inputs were not moved: PrismaticCohomology §2.0 (63, earlier) already states
the arc/arc_p/formal arc sites, covers by products of valuation rings, arc descent of torsion étale
cohomology, the henselian completion comparison and acyclicity of 𝒪 on perfectoids; A_inf-hyperdescent
is derived in §5.3 from the latter through the ξ-adic filtration. DeformationAndDerivedPatchingAlgebra's
Cohen structure and complete-intersection notions are replaced by DerivedDeRhamCohomology §§0.19, 0.21
(Cohen factorizations, c.i. homomorphisms) plus three supplier gaps.

## 4. Supplier gaps (plan.json `gaps`, README "What … must provide")

- `prismatic-dieudonne-perfectoid` — PrismaticCohomologyPartII, Layer 4: prismatic Dieudonné classification
  of finite locally free p-groups over perfectoid rings incl. the perfect case (the design's "PD.6" anchors
  do not exist at the head 2a6d228 of that pull request; no open pull request or main roadmap states it).
- `complete-intersection-presentations` — DerivedDeRhamCohomology §0.21: Stacks 09Q1 and CI ⇒ CM.
- `flat-local-complete-intersection` — DerivedDeRhamCohomology §0.19: Stacks 09Q7.
- `ci-defect-additivity` — DerivedDeRhamCohomology §0.21: Avramov 1977 Prop 3.6.
- `regular-tower-tilt` — PerfectoidQuotientsPartII §Q10.1: explicit tilt of the perfectoid regular tower.

The design's 14 gaps are all resolved otherwise: SF-PII-* and EDP-PII and BR-RESIDUE-* moved down (§3),
PQ-PII-towers narrowed to `regular-tower-tilt` (the rest is PQPII §§Q5.4, Q6.3–Q6.7, Q10.1 and
PerfectoidSpaces §P3.7), AVRAMOV became `ci-defect-additivity`, BURCH-KOHN is owned (§1.3, via Kohn's
Theorem A, read), AUSLANDER-FREENESS is an owned target (§7.2).

## 5. Duplication sweep (removals and re-citations)

Checked by object against main (084e191), the open pull requests at their heads (index 2026-10-26),
board packages, and the pins (Mathlib 6b7abb3c, Tau Ceti a91d3aaf — the design used older pins
082e2d37/f7904748; every library name in the README was re-checked at the new pins by grep or `#check`).

- Mayer–Vietoris (design API) → Mathlib `Sheaf` cohomology Mayer–Vietoris (`SheafCohomology/MayerVietoris.lean`).
- A_inf prism, perfectoid rings, θ: cited to their owner PerfectoidSpaces §§P1.16–P1.18, P1.24, P4.15.2
  (not PrismaticCohomology "PR.0", which itself imports them).
- André's lemma → PerfectoidSpaces §P4.15.4 (design: PerfectoidQuotients Q3, which does not exist at the head).
- PerfectoidQuotients "Q0:integral-algebra/…" anchors (absent at head 502f1d5) → §0.6
  `integralPerfectoid_pi_iff`, `perfectoid_completed_tensor`, `perfectoid_completed_root_quotient`,
  `perfectoid_completely_etale_henselization`; §0.2; §0.1.
- Complete flatness (design "DD.1") → DerivedDeRhamCohomology §1.10 `DerivedDeRham.ordinaryFlatnessFromCompleteFlatness`
  and DerivedModuleAlgebra §§1.5, 1.7.
- Étale fundamental group (design IG.0, absent at head 740b9cc) → EtaleCohomologyFoundations §F.0.2 and
  Mathlib Galois categories; SGA 1 V 6.9/6.10 (read) for the comparison.
- Gabber–Fujiwara henselian comparison (design AT.8) → PrismaticCohomology §2.0.
- Auslander–Buchsbaum, MCM ⇒ free, localization: PurityOfBranchLocus §0.3 (other author's new-folder PR).
- Strict henselization → ModularCurves Layer 4D (main).
- Raynaud embedding → FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.1.40.
- Br = Br′ for regular dim ≤ 2 (design SF-PII-brauer second half) dropped: only quasi-affine U_R is used,
  covered by Gabber–de Jong (§7.11).
- §7.10 kept as a variant of SchemeAndStackFoundations §2.22 `brauer_regular_injectivity` (affine, Azumaya)
  with the difference stated in Scope.
- Ownership against open pull requests: checked by `roadmaps grep` for each object (complete
  intersections, Cohen structure, arc descent, Dieudonné theory, Brauer purity, residues, flasque tori,
  coniveau, Gabber–de Jong, factoriality, parafactorial, local Lefschetz). No `Suggested.lean`
  declaration shares a fully qualified name with another roadmap's.

## 6. Corrections to the design (beyond the moves)

- Lemma 4.1.12 restated for every integer n (design and source impose n < dim R, which the proof does not
  use and which the proof of Theorem 6.2.7 violates); recorded under Source corrections.
- §1.3(b) cites Kohn's Theorem A (read); the design's Burch citation is attributed through it.
- MB85 bibliographic data corrected (C. R. Acad. Sci. 300 (1985), "Un théorème de pureté…", Lemme 2; the
  design gave Astérisque 129).
- ALB23 and ILO14 locators given in both published and arXiv numbering (Thm 5.4 = arXiv 5.1.4;
  XVII Thm 0.2 = arXiv 0.9).
- de Jong's theorem needs an ample invertible sheaf in EGA II 4.5.3's sense (quasi-compact, separated);
  §7.11 says so.
- C19 Prop 2.2 stated for commutative G (design E6 kept).
- The design's DVR example "H¹_𝔪(R, μ_p) ≅ ℤ/p" was wrong: it is H²_𝔪 (H⁰_𝔪 = H¹_𝔪 = 0 for a DVR,
  consistent with Thm 6.2.7); fixed in Layer 0 Examples.
- §8.18 no longer asserts Br(𝔸²_ℂ) = 0 (no supplier/target for it); it proves non-surjectivity of
  restriction via the residue, which suffices for the sharpness claim.
- Unsupported "Br(𝔸²_ℂ) = 0" removed from Checks of §§7.10, 8.6, 8.7, 8.10.

## 7. What the README could not support

- The local étale duality statements of §1.4 and algebraization of §1.7 are stated with routes cited to
  ILO14/Stacks; their full proofs are large. They are owned here only because their natural owners
  (EtaleDualityAndPerverseSheavesPartII, SchemeAndStackFoundationsPartII) are later in the merge order.
- §7.2 (Auslander's criterion): the original homological proof (Aus62, paywalled) is not read; the
  statement is checked through CS24 p. 88. §7.6 (SGA 2 XI 3.13(ii)) route follows SGA 2 (read).
- PerfectoidQuotientsPartII is a board package (design), earlier in the merge order; `roadmaps resolve`
  reports it as "found nowhere" because it is neither on main nor an open pull request. Its sections
  §§Q5.2, Q5.4, Q6.3–Q6.7, Q7.1, Q10.1 were read in `packages/PerfectoidQuotientsPartII/design/README.md`.

## 8. Dependency check

```
$ tauceti-roadmap … gate --depcheck packages/PurityForFlatCohomology/README.md --name PurityForFlatCohomology --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 649 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. `roadmaps resolve` on the README: one lead, line 96
"PerfectoidQuotientsPartII §§Q5.2: no roadmap … on main or in an open pull request" — a board package
earlier in the merge order (see §7); Lean names found nowhere: none.

## 9. Sources

Fetched through the service and certified: CS24 (arXiv v3), C19 (arXiv v4), SGA2, SGA1, BC22, ILO14, ALB23,
BS22, Ces15, Lau13 (arXiv), EGA44, EGA2, EGA42, Gro66, Beg80 (Numdam), Poo17, Kat73, CTS87, dJ02
(author pages), Koh72 (AMS open archive), STACKS (tags 07DV, 09Q1, 09Q7, 0DX9, 0DXR, 0EJP read).
Uncertified (paywalled or not freely available; cited by locator, statements checked through CS24/C19):
Avr77, DF84, Aus62, Gro68, MB85, Bou78, Gab04b, BH, SGA3, SGA4, SGA5. No `needs-references.toml` was left:
Kohn was found in the AMS open archive; Burch is attributed through Kohn; Auslander is recorded uncertified.
Locator checks against the extractions: CS24 Lemma 3.2.3 (line 1356), Thm 3.2.4 (1381), Thm 3.3.1 (1418),
Prop 4.1.4 (1519), Thm 4.1.8 (1567), Lemma 4.1.11 (1605), Lemma 4.1.12 (1636), Prop 4.1.13 (1651),
Prop 4.2.4 (1701), Lemma 4.2.6 (1717), Prop 4.2.10 (1778), Thm 5.1.13 (2171), Thm 5.2.6 (2318),
Thm 5.2.8 (2356), Thm 5.3.5 (2444), Cor 5.3.7 (2537), Cor 5.3.8 (2560), Thm 5.4.4 (2816), Cor 5.4.5 (2832),
Thm 5.5.1 (2849), Thm 5.5.2 (2893), Cor 5.5.3 (2939), Thm 6.1.1 (3430), Thm 6.1.2 (3459), Thm 6.2.3 (3491),
Thm 6.2.4 (3540), Thm 6.2.7 (3566), Thm 7.1.2 (3630), Thm 7.1.3 (3664), Thm 7.2.1 (3707), Thm 7.2.5 (3765),
Thm 7.2.8 (3828), Thm 7.2.9 (3871); C19 Thms 1.1–1.4 (lines 30–87), Prop 2.2 (130), Cor 2.4 (172),
Thm 6.1 (493), Thm 6.2 (520), Rem 6.3–6.4; ILO14 XV Cor 1.2.4 (line 10362); SGA1 V 6.9–6.10 (4650);
dJ02 1.1 (line 10); Kohn Thm A (line 28); Stacks 0DXR, 0EJP, 09Q1, 09Q7 read.

## 10. Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `puncturedSpectrum` (0.1) | field K; DVR; k⟦x,y⟧; k×k; zero ring; local R | ∅; Spec K with Γ = R[1/π]; D(x)∪D(y), Γ = R; ∅ (2 closed pts); ∅ with dim ⊥; complement of closedPoint | ok; dim-0 iff stated for nonzero R | zero-ring check kept |
| fppf supports (0.2) | Z = ∅, X; DVR 𝔾_m; k[t], (t); 𝔸¹, Z = 0 | 0, H^i; H¹_𝔪 = ℤ; k[t^±]/k[t]; H⁰_Z = 0 ≠ k | ok | — |
| continuity (0.3) | k^s as limit, μ_n; Z_0 = X_0, ∅ | H¹ = 0 = colim k′^×/n; absolute; 0 | ok | Stacks tags removed (unverified), CS24 limit formalism cited |
| regular-sequence vanishing (0.4) | k[x_1..x_d] origin; Z = Spec A | H^{<d} = 0, H^d ≠ 0; H⁰ = A ≠ 0 | ok, vanishing hypothesis needed | — |
| Hartogs (0.5) | 𝔸² origin; V(x) ⊂ 𝔸²; doubled origin | Γ = k[x,y]; k[x^±,y] ≠; two sections differ | ok | — |
| Layer 0 example | k⟦x,y⟧, μ_p; DVR, μ_p | H⁰_𝔪 = H¹_𝔪 = 0; DVR: H¹_𝔪 = 0, H²_𝔪 ⊇ ℤ/p | design's DVR value wrong | fixed |
| `CohenPresentation`, `IsCompleteIntersection`, `virtualDimension` (1.1) | k⟦x_1..x_n⟧; k⟦x,y⟧/(y); k⟦x,y⟧/(xy); k⟦x,y⟧/(x,y)²; 𝔽_p⟦x,y,z,t⟧/(x²,y²,xz−yt); non-regular B | n; 2−1 = 1; 1 = dim; 3 gens → −1, dim 0; 4−3 = 1 < 2; 2−0 = 2 ≠ 1 | ok; regularity of B needed | Check added |
| additivity (1.2) | R → R^sh; k⟦x⟧ → k⟦x,y⟧/(y²); fibre k⟦y,z⟧/(y,z)² | 0+v; 1 = 1+0; drop by 1 | ok | — |
| depth vs vdim (1.3) | twisted cubic cone; CI; k⟦x,y,z⟧/(x²,xy,xz) | depth 2 > vdim 1; equal; depth 0 = vdim 0 | ok, bound strict only for dim ≥ 4 | Check rewritten |
| local duality (1.4) | d = 1; d = 0; strictly henselian d | cd(K) = 1; ℤ/ℓ linear duality; H^{2d}_𝔪(μ^{⊗d}) = ℤ/ℓ | ok (strict henselian needed for third) | added "strictly henselian" |
| local Lefschetz (1.5) | DVR, f = π; f unit; k⟦x,y⟧, f = x, deg 2 | 0 → ℤ/ℓ injective not onto; vanishing below dim; 0 → ℤ/ℓ(−1) not onto | ok | wrong "regularity" check replaced |
| étale depth (1.6) | regular; k⟦x,y⟧/(xy); depth-0 rings | i < dim; H⁰_𝔪 = 0, H¹_𝔪 ≠ 0; 𝔾_a vs ℤ/ℓ | ok, sharp | "≅" weakened to "≠ 0" |
| algebraization (1.7) | I = 𝔪; dim 4 vs 3 with d = 1; k⟦x,y⟧, I = (x) | 0 = 0; 4 > 3 holds, 3 > 3 fails; Σ y^{−n²}xⁿ not algebraic | ok | wrong check replaced |
| `finiteEtalePullback`, `zariskiNagata_*` (1.8) | regular dim 2; xy; A_1; xy−zw; Remark 6.2.6 ring; f iso, empty open | ff; disconnected (vdim 1); π₁ = ℤ/2 (vdim 2); extends (vdim 3); vdim 1 no claim; equivalence / not faithful | ok | API + Check added |
| crystalline 𝕄 (2.1) | ℤ/pⁿ, μ_{pⁿ}, α_p; perfect field | (pφ, φ⁻¹), (φ, pφ⁻¹), (0,0); 𝕄_cov(G) = 𝕄_contra(G^D) | conventions pinned | — |
| low degree (2.2) | ℤ/p, μ_p, 𝔽̄_p | Artin–Schreier; V−1 = −1; 𝔽̄_p ≠ ℤ/p | ok | — |
| pro-fppf (2.3) | 𝔽̄_p/𝔽_p; α_p-torsor over perfect A | surjective only after cover; A[s]/(s^p) perfection A | ok | garbled check rewritten |
| key formula, perfect (2.4) | ℤ/p; μ_{pⁿ}; α_p | AS cohomology; 0; 0 | ok | — |
| deformation sequence (3.1) | 𝔾_m; 𝔾_a; μ_p over 𝔽_p | fibre M; A′→A→M[1]; L in degrees −1, 0 | ok | — |
| animated cohomology (3.2) | discrete A; μ_n Bégueri; 𝔽_p⊕𝔽_p[1] | agrees; ζ ↦ (ζ^i); μ_p(A) = 𝔽_p ≠ 0 | diagonal embedding was wrong | fixed |
| nilpotent invariance (3.3) | 𝔾_m, k[ε]; α_p, 𝔽_p[ε] | onto, kernel 1+kε; H⁰ = H¹ = 𝔽_pε → 0 | ok | check rewritten |
| p-continuity (3.4) | ℤ_p μ_{pⁿ}; 𝔽_p(s); ℤ (odd p) | lim of finite groups incl. −1 at p = 2; Br[p] ≠ 0; 0 vs ℤ/p | ok, hypotheses needed | wrong 𝔽_p[t] check replaced |
| excision (3.5) | identity, I unit; ℤ_(p) vs ℤ_p; ℤ_(p) → ℚ | trivial, 0; ℤ/p both; ≠ 0 vs 0 | ok | — |
| descent mod p (3.6) | fppf cover; ℤ_(p) → ℤ_p; perfectoid Čech nerve | fppf descent; recovers 3.5; perfectoid terms | ok | garbled check rewritten |
| 𝔾_a/α_p/ℤ/p (4.1) | 𝔽_p⟦x,y⟧; 𝔽_p⟦x⟧/(x²); Remark 6.2.6 ring | 0; x ∈ H⁰_𝔪; xy ∈ H⁰_𝔪 | ok | — |
| root extraction (4.2) | m = 0; non-regular (x², xy) | identity; xA/(x²,xy) ≅ k not free | ok | — |
| finite flat cover (4.3) | R′ = R; k⟦t⟧ → k⟦t^{1/p}⟧ | tautology; CI dim 1 | ok | hypothesis n < dim R dropped (source correction) |
| char p purity (4.4) | 𝔽_p⟦x,y⟧ μ_p; α_p; A_1 in char p, μ_2 | H⁰ = H¹ = 0; = 4.1; H²_𝔪(μ_2) ⊇ ℤ/2 | ok | example rewritten (μ_2 is prime to p) |
| Dieudonné side (5.1) | G = 0; perfect ℤ/p, μ_p; 𝔽̄_p | 0; AS, 0; 𝔽̄_p ≠ ℤ/p | ok | — |
| low degree perfectoid (5.2) | perfect ℤ/p; μ_p; 𝒪_C | AS; Kummer; H¹ = 0 | ok | — |
| arc descent of D (5.3) | ℤ/p perfect; product cover; p-torsion | O-acyclicity; equaliser; resolution exactness | ok | route via PrismaticCohomology §2.0 + ξ-filtration |
| products (5.4–5.5) | M = R; ⊕R_i; R/J; I = ∅; μ_{pⁿ} | iso; not surjective; ∏R_i/J_i; 0 = 0; ∏A_inf/pⁿ | ok | I = ∅ check added |
| Katz (5.6) | F = φ; F = cφ; 𝔽_3(t)^perf, F = tφ | 𝔽_p; root of x^{p−1} = c⁻¹; −1/2 ∉ ℤ[1/3] | ok | — |
| valuation products (5.7) | 𝒪_C; μ_p; non-alg-closed C; infinite I | H^{≥1}(C) = 0; ∏μ_p(K_i); H¹(C,ℤ/p) ≠ 0; βI components | ok | perfectoidness of A_i via PerfectoidSpaces §P3.7 |
| flat arc descent (5.8) | prime-to-p étale; 𝒪_C; ℤ_p⟨t⟩ | étale arc descent; degree 0; (A/p)_red = 𝔽_p[t] not perfect | ok | — |
| key formula (5.9) | perfect; ℤ/p; mixed char Z = Spec(A/p) | = 2.4; AS; support ≠ absolute | ok | — |
| perfectoid purity (5.10) | perfect; tower; d = 0, 𝔽_p | = 4.4; i < d; ℤ/p ≠ 0 | ok | 𝒪_C example: RΓ_𝔪 = 0 |
| completion lemma (6.1) | Noetherian; ℤ_p[x], x; ℚ_p/ℤ_p | applies; ℤ_p⟨x⟩/(x) = ℤ_p; classical completion not exact | ok | garbled check replaced |
| CI purity (6.2) | regular dim 2 μ_p; W(k)⟦x,y⟧/(p−xy); α_p | i < 2 | ok | route: footnote-25 André route, DDR §1.10 |
| étale vdim purity (6.3) | Remark 6.2.6 ring; CI; k⟦x,y⟧/(x,y)² | H⁰(ℤ/p) = 0; = 6.2; H⁰ = ℤ/p (vdim −1) | ok | check added |
| counterexample (6.4) | monomials | xy not divisible by x², y², xz, yt; 𝔪·xy = 0 | ok | — |
| regular degree d (6.5) | DVR μ_p; field ℤ/n, μ_p; 𝔽_p⟦x,y⟧ α_p; A_1 | H^{≤1} = 0, H² ⊇ ℤ/p; fails; Kunz; H²_𝔪 ≠ 0 | ok | — |
| global purity (7.1) | dim 2, d = 3; Spec k ⊔ Spec k, d = 1; smooth variety | inj < 3, bij < 2; (ℤ/2)² → ℤ/2 not inj; i < c−1 | source error E1 confirmed | max(d−1,1) kept |
| Auslander (7.2) | Rⁿ; A_1 ideal; DVR; M = 0 | free; reflexive not free (End ≠ ⊕M); free; free | ok | — |
| torsors/gerbes (7.3) | ℤ/n regular dim 2; α_p; μ_2 quotient | ZN purity; extends; does not extend | ok | — |
| factoriality (7.4) | DVR; k⟦x,y⟧; A_1; ℤ_p⟦x⟧ | UFD; UFD; xz = y² not UFD; UFD | ok | route corrected (stably free ⇒ free, Nagata) |
| parafactorial (7.5) | k⟦x,y⟧; DVR; A_1; node 3 | yes; Γ(U) = K; Cl = ℤ/2; Pic(U) ≠ 0 | ok | — |
| local G–L (7.6) | regular dim 4; node 3; x₁x₂−x₃x₄ in 5 vars | parafactorial; not; parafactorial | ok | — |
| `localPicard_*` (7.7) | node 3; regular dim 0, 1, 2; elliptic cone | Pic ≅ ℤ torsion free; trivial; infinite torsion (dim 2) | ok, regular clause holds for fields and DVRs | — |
| CM counterexample (7.8) | n = 3 Veronese; H¹_𝔪; n = 2 | Pic ⊇ ℤ/2, H²_𝔪(μ_2) ≠ 0; 0; allowed (dim 2) | ok | — |
| global CI Pic (7.9) | cubic threefold; quadric; plane cubic | ℤ; ℤ² (quotient ℤ); infinite torsion | ok | — |
| 𝔾_m torsion (7.10) | DVR; 𝔸²_ℂ; field | Br(R) ↪ Br(K); torsion via Br(ℂ(x,y)); Galois torsion | unsupported "= 0" | check rewritten |
| Gabber–de Jong (7.11) | field; affine; punctured k⟦x,y,z⟧; nontorsion classes | classical; Gabber; applies; excluded | needed EGA ample (separated) | hypothesis corrected |
| dim 2 extension (7.12) | k⟦x,y⟧; k⟦x,y,z⟧ syzygy; A_1 | trivial; non-free; nontrivial line bundle | ok | — |
| Brauer CI (7.13) | W(k)⟦x,y,z⟧; dim-4 hypersurface; dim-3 example | Br(k); iso; Br(U) infinite | ok | n ≥ 1 (E5) |
| sharpness (7.14) | elliptic dim 3; Segre dim 4 | Br(U) infinite; nontorsion only | ok | — |
| multiplicative type (7.15) | μ_n, 𝔾_m, 𝔾_a; norm torus; α_p | D(ℤ/n), D(ℤ); no characters ⇒ not; ℤ_sign; dual α_p not étale | ok | 𝔾_a check rewritten |
| low degree mult. type (7.16) | regular dim 2 𝔾_m; μ_n; A_1 | Br iso; torsor purity; Pic(U) ≠ 0 | ok | — |
| higher mult. type (7.17) | d = 3 regular; μ_n; node 3 | bij ≤ 1; = 7.1; Pic(U) ≅ ℤ breaks bij in degree 1 | ok | check rewritten |
| strict-local Brauer (8.1) | k⟦x,y⟧; W(k̄)⟦x,y,z⟧; dim-3 CI | 0; p-part 0; infinite | ok | — |
| torus descent (8.2) | R′ = R; dim ≤ 1 fields; R′⊗R′ | identities; 𝔽_q, ℂ((t)), ℚ_p^unr yes, ℝ no; Pic = 0 by 7.7 | ok | commutative G (E6) |
| henselian tori (8.3) | strictly henselian 𝔾_m; ℤ_p⟦x⟧; ℝ⟦x,y⟧ norm torus | 0; 0; H¹ = ℤ/2 | ok | — |
| coniveau (8.4) | closed point; Dedekind; 𝔸¹ codim-1 set | excision; localization; not closed | ok | — |
| torus supports (8.5) | dim 2 strictly henselian; V(x) ⊂ 𝔸²; degree 4 | ⇔ Pic, Br vanish; H¹_Z = ℤ; not covered | ok | — |
| torus purity (8.6), Brauer purity (8.7) | 𝔾_m q = 1; 𝔸² ∖ 0; axes; dim-3 CI | Pic iso; Br′ iso; restriction not onto; infinite | ok | Br(𝔸²) = 0 claims removed |
| generic injectivity (8.8) | 𝔾_m^r; field; ℙ¹_ℝ norm torus; Weil restriction | holds; trivial; fails; holds | ok | — |
| intersection (8.9), AG (8.10) | Dedekind; ℙ¹_ℝ; field; Spec ℤ; 𝔸² class | unramified classes; fails; all; 0; ramified | ok | check rewritten |
| flasque (8.11) | 𝔾_m; ℤ_sign; regular permutation test | flasque; Ext¹ = ℤ/2; wrong test gives 0 | ok | — |
| norm torus (8.12) | generic point; H¹(ℝ,T); over ℂ | 0; ℤ/2; class vanishes | ok | — |
| Lang/descent (8.13) | ℚ_p; k((t)) imperfect sep. closed; Br(ℚ) → Br(ℚ_p) | 0; Br[p] ≠ 0; not injective | ok | descent route via §3.5 |
| residue (8.14) | ℤ_p; ℂ⟦t⟧; imperfect k⟦t⟧; image of Br(𝒪) | inv; 0; no sequence; 0 | sign pinned by crossed product | — |
| DVR sequence (8.15), global (8.16) | ℤ_p; ℝ⟦t⟧; ℤ_(p); Spec ℤ; 𝔸²_{𝔽_p} | 0→0→ℚ/ℤ→ℚ/ℤ; ℤ/2→(ℤ/2)²→ℤ/2; via 8.13(b); exact; p-parts excluded | ok | — |
| imperfect exclusion (8.17) | ℤ_p⟦x⟧, (p); dim 1; (x) | 𝔽_p((x)) imperfect; vacuous; ℚ_p char 0 | ok | — |
| deletion (8.18) | cyclic algebra; origin only; n = 1 | residue Kummer(y) ≠ 0; Br unchanged; trivial | Br(𝔸²_ℂ) = 0 unsupported | restated as non-surjectivity |

## 11. Suspicious text

None found in the inputs read (design, roadmap READMEs, sources); no instruction-like passages.
