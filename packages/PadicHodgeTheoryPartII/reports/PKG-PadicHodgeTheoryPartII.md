# PKG-PadicHodgeTheoryPartII

Package of `PadicHodgeTheoryPartII` from the accepted design (`packages/PadicHodgeTheoryPartII/design/README.md`, `design/plan.json`) and its accepting review (five P3 notes, conditional on the gaps `quasisplit-highest-weights` and `serre-sen-openness`). Files written: `packages/PadicHodgeTheoryPartII/README.md`, `Suggested.lean`, `metadata.toml`. `sources.toml` and the `gaps` list of `design/plan.json` are unchanged: no new work is cited, and both gaps still describe exactly what the README consumes.

## Headline theorems

| Headline | README | Status | What it lacks at the pins |
|---|---|---|---|
| Generic admissibility (GLX26 Thm 5.8(1)) | §2.3 | not statable | reductive groups over Q_p with Rep(G) and B(G,μ); the flag variety Fl_μ as a scheme with its generic point; filtered isocrystals over finite K/Q̆_p with Hodge/Newton numbers (Mathlib `WittVector.Isocrystal` has no filtration and no Newton degree of a semilinear map) |
| Generic derived monodromy (GLX26 Thm 5.8(2)) | §2.4 | not statable | as above, plus crystalline representations with G-structure, Colmez–Fontaine, the B_cris comparison |
| Open-derived-image period point (GLX26 Prop 5.9) | §3.2 | not statable | the B_dR-affine Grassmannian and its admissible locus and classical points (Mathlib has only the ring `BDeRhamPlus`); the p-adic topology on G(Q_p) |
| z-extension comparison | §3.5 | not statable | the carriers of §3.2 for G and G̃; z-extensions; lifting of B(G,μ) |
| Compact-torsor component stabilizers (GLX26 Lemma 6.12) | §§4.1–4.2 | not statable | diamonds, Spd K, locally profinite torsors |

`Suggested.lean` therefore consists of its module docstring (naming each headline and its missing carriers) and an empty namespace. I considered stating the auxiliary results that *are* expressible with Tau Ceti's Hopf-algebra groups (§3.4 central lifting, via `TauCeti.CommHopfAlgCat.derivedDefiningIdeal` and `IsCentralIsogeny`) and the root-datum lemma §1.7 (Mathlib `RootPairing`); neither is a headline theorem, so by the acceptance-test rule they stay README targets.

`#check @name` comparison: the file declares nothing, so there was nothing to compare; no binder can have been dropped.

## Elaboration

`lake env lean packages/PadicHodgeTheoryPartII/Suggested.lean` run from the content checkout: exit 0, **0 `sorry` warnings, no other message**. No `TauCeti.*` import is used.

## Review notes applied (accepting review, all P3)

- **F01** (§0.3/§0.5 cycle): the morphism bullet and its two Checks (the 𝔾_m² negative control and the split-torus positive control) moved from §0.3 to the last API item of §0.5; §0.3's *Needs:* is "§0.2; BunGAndNewtonStrata §1.9"; §0.5's *Needs:* adds PadicHodgeTheory §3.6 and PadicLocalLanglandsForGL2Qp §0.2. §0.3 then had two Checks, so a third (and fourth) was added (GL_2, b = diag(p,1): e_1 ∈ V^{1,1}, e_2 ∈ V^{1,0}, e_1+e_2 in no V^{1,k}; the zero vector). The review's companion change to `plan.json` node prerequisites was **not** made: this job may edit only the top-level `gaps` list of `plan.json`.
- **F02** (Fl_μ base field): ShimuraData contract now defines Fl_μ over the reflex field of {μ}, equal to G_E/P_μ over any E containing the reflex field over which a representative is defined; D^× witness added (conic over Q_p, ℙ¹ over a quadratic splitting field).
- **F03** (§0.5 API): API list added — classification, invariants t_H = t_N = Σd_i, scalar-extension decomposition Z = ⊕Z_i with φ: Z_i → Z_{i+1}, Hom description, morphisms of tested vectors.
- **F04** (gap applied to G-valued ξ): §§3.2 and 3.5 now pass through a faithful ρ, crystalline ⇒ Hodge–Tate (PadicHodgeTheory §3.3), closure of ρ(Σ) = ρ(closure) (ArithmeticGaloisRepresentations §7.6) and the closed immersion; both *Needs:* lines and the Layer 3 Dependencies list these.
- **F05** (ReductiveGroups 10B overclaim): the ReductiveGroups contract now cites only what 10B states (classification, one-dimensional highest line, root-subgroup generation, convex-hull weight bounds); §1.7 derives one-dimensionality (s_αλ = λ ⇒ Wλ = {λ} ⇒ single weight ⇒ dim 1; root subgroups act trivially on a line in characteristic 0); SL_2 Check added.

## Corrections beyond the review (citations re-resolved at the current heads)

- FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.3.2 no longer has `IsWeaklyAdmissible.abelian`; it states t_H, t_N and `FilteredPhiNModule.IsWeaklyAdmissible` as notation for PadicLocalLanglandsForGL2Qp §0.2, whose exact-category API carries the abelian subcategory with strict morphisms. The name was dropped; a new contract `From TauCetiRoadmap.PadicLocalLanglandsForGL2Qp` (§0.2, earlier in the merge order) supplies strictness; §0.5 and Layer 0/2 Dependencies cite it.
- §R07.4.13 is now "Semistable representations have finite E-height" (Kisin's lattice realization), not the weakly admissible ⇒ admissible theorem the design cited it for. §2.3 now takes Colmez–Fontaine over arbitrary perfect residue fields from PadicHodgeTheory §5.5 (which imports it from PadicLocalLanglandsForGL2Qp §0.2); the §R07.4.13 citation was removed from §2.3 and the Layer 2 Dependencies.
- PadicHodgeTheory §3.3 added to the contract (crystalline ⇒ de Rham ⇒ Hodge–Tate), for F04.
- Tau Ceti contract extended: `TauCeti.CommHopfAlgCat.derivedDefiningIdeal` (Derived/Basic.lean:72), `derivedDefiningIdeal_map_le` (Derived/Functoriality.lean:66), `connectedSpace_derived` (Derived/Connected.lean:151, over an algebraically closed field), `IsCentralIsogeny` (Isogeny/Basic.lean:77); §3.4 uses them for connectedness of D(J°) and D(J°) ⊆ G̃_der. Tau Ceti lacks f(D(J)) = D(f(J)); that stays with Milne iAG 8.20/8.21.
- Opening paragraph rewritten to name the headline theorems; Scope now says DeligneWeightsAndPurity §2.2 is the Sp(V)/Q_ℓ case of §3.3 (kept variant: general smooth connected affine group over a p-adic field); the GLX26 Theorem 6.1 / Proposition 5.11 paragraph is phrased as downstream consumers.

All other citations (68 in the review) re-checked at the current heads by heading and declaration: PadicHodgeTheory §§3.3, 3.4 (`filteredHN`), 3.6 (`filteredGFunctor`, `admissiblePair`), 4.4, 5.5 (`periodTorsor_neutral`); BunGAndNewtonStrata §§1.7 (`HodgeInvariants`), 1.8 (`Invariants.newton`, `Invariants.kottwitz`), 1.9 (`DecentRepresentative`), 1.12, 1.23 (`Acceptable`), 1.43 (`ComponentCoset.liftZExtension`); HeckeStacksAndLocalShtukas §§HS2.11 (`admissiblePeriodTorsor.classical_point`), HS2.12, HS2.13, HS2.15, HS2.16; ReductiveGroupsPartII §§RG2.0.2 (the three named items), RG2.0.4 (`transcendenceDegree_infinite`), RG2.1.5; VectorBundlesAndIsocrystals VB0 and its four named subsections; MotivesAndAlgebraicCycles §§6.1–6.3, 6.8; ArithmeticGaloisRepresentations §§1.1, 7.6; ShimuraData §3.8 (`parabolicTypeVariety`); AutomorphicBundles §B0.4 (`associatedCoefficient`); AlgebraicModuliForArithmeticGeometry §1.7 (`rankLocus`); DiamondsAndVStacks §§D0.6, D3.10, D5.3, D5.16, D6.5; DeligneWeightsAndPurity §2.2; SchemeAndStackFoundations §0.8 (`etale_coordinates`, main); ReductiveGroups Layers 1, 2, 3, 6, 7, 10/10B (main). Mathlib at the pin: `WittVector.isocrystal_classification` (Isocrystal.lean:180), `AlgebraicIndependent` (AlgebraicIndependent/Defs.lean), `AlgebraicGeometry.UniversallyOpen.of_flat` (UniversallyOpen.lean:142, an instance), `AlgebraicGeometry.Scheme.Hom.isOpenMap` (line 43), `Algebra.FormallyEtale.iff_exists_algEquiv_prod` (Etale/Field.lean:194). Tau Ceti at the pin: `TauCeti.HopfIdeal.exists_finite_subcomodule_exteriorPower_line_stabilizer` (ExteriorStabilizer/Character.lean:101), `TauCeti.Tannaka.fgPointTensorIsoEquiv` (Tannaka/Equivalence.lean:188), `TauCeti.Tannaka.pointsFunctorIsoTensorAutFunctor` (Tannaka/GroupFunctor.lean:138). `roadmaps resolve` on the new README: no cross-roadmap citation and no Lean name found nowhere.

## What the README could not support

Nothing beyond the two declared supplier gaps (unchanged): `quasisplit-highest-weights` (ReductiveGroups Layer 10; ReductiveGroupsPartIII, now in the merge order, was checked and treats Frobenius conjugacy classes and torus embeddings, not quasisplit highest weights) and `serre-sen-openness` (PadicHodgeTheory §4.4). Note for the intake: AdmissiblePairsAndPadicHodgeStructures (later in the order) requests a related gap `strict-field-serre-openness` of PadicHodgeTheory §5.5 (openness in the connected algebraic envelope, HKI Cor. 5.5.3 hypotheses); the two requests to the same supplier could be served by one theorem.

## Notions moved down

None. Every supplier is on main or earlier in the merge order (the depcheck below).

## Duplication sweep and ownership

No target was deleted: no object of Layers 0–4 exists at the pins or in another roadmap. Searched (main, the open heads via `roadmaps grep`, the board packages): generic filtrations/flags (only unrelated Frobenius-generic hits in PadicDifferentialEquationsAndRigidCohomology and AutomorphicBundles); Hodge–Newton irreducibility (none); decent fibre functors (none); open subgroups Zariski dense (DeligneWeightsAndPurity §2.2, Sp(V) case, cited as such); central lifting of derived containment (ShimuraVarieties/ShimuraData use central isogenies of derived groups for other purposes; none states this lemma); Sen openness (AdmissiblePairsAndPadicHodgeStructures §3.3, a consumer of its own gap); invariant-line criterion (none); generic points via transcendence (none). GLX26 Theorem 6.1 has no owner on main, at the heads or among board packages (HeckeStacksAndLocalShtukasPartII proposes a separate components continuation). Pinned libraries: Tau Ceti's derived subgroup/isogeny API is consumed, not restated. Removed citations (not targets): `IsWeaklyAdmissible.abelian`, FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.4.13 (see above). Ownership against open pull requests was checked for the sibling heads the brief lists, through `roadmaps grep`/`show`.

## Adversarial pass (statements written or changed in this package; the review's table covers the unchanged ones, re-spot-checked)

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| §0.3 new Check (GL_2 ordinary, rational flag) | b = diag(p,1), s = 1, Fil¹ = Ke_1 | Newton op diag(p,1): e_1 ↦ p e_1 (k = 1), jump(e_1) = 1; e_2 ↦ e_2 (k = 0), jump(e_2) = 0; e_1+e_2 ↦ pe_1+e_2, not an eigenvector | e_1 ∈ V^{1,1}, e_2 ∈ V^{1,0}, sum in none ✓; pair weakly admissible (Fe_1: t_H 1 ≤ t_N 1; Fe_2: 0 ≤ 0) |
| §0.3 zero vector | v = 0 | ρ(ν(p))0 = p^k·0 for all k; 0 ∈ every Fil^d, no jump | excluded by v ≠ 0 ✓ |
| §0.5 X(d) laws | s = 2, d = (1,−1) | φ(a·e_0) = σ(a)e_1 = a·φ(e_0); φ(a·e_1) = σ²(a)p^k e_0 = a p^k e_0 for a ∈ Q_{p²}; lines F(e_0+ce_1) φ-stable iff cσ(c) = 1 ⇒ v_p(c) = 0, t_N = 0, t_H = −1 | commuting coefficient action ✓; weakly admissible ✓ |
| §0.5 decomposition bullet | s = 2 | a acts on Fe_0 by a, on Fe_1 by σ(a): Z_0 = Fe_0, Z_1 = Fe_1, φ: Z_0 → Z_1 → Z_0 (wrap p^k) | ✓ |
| §0.5 morphism bullet, without admissibility | T = 𝔾_m², μ = (0,1), v = e_1+e_2 → e_2 | jump(v) = 0, jump(e_2) = 1; F(χ_2): t_H = 1 > t_N = 0 | false without admissibility; hypothesis kept, Check kept ✓ |
| §0.5 morphism bullet, split torus admissible | ν_b = μ | components with Newton exponent k all have μ-weight k/s, so projection keeps d_s = k | ✓ |
| §1.7 derivation (F05) | SL_2, λ = 0; λ = 1; GL_2, λ = det = (1,1) | λ = 0: W-fixed, dim 1; λ = 1: s_αλ = −1 ≠ λ, weights {1,−1}, dim 2; det: ⟨(1,1), α^∨⟩ = 0, w_0λ = λ, dim 1, trivial on SL_2 | ✓ |
| §1.7 root-subgroup step | U_α ≅ 𝔾_a on a line, char 0 | Hom(𝔾_a, 𝔾_m) = 1 | trivial action ✓ |
| §3.2 faithful-ρ step (F04) | G = 𝔾_m, ξ = χ^{−m}, ρ = id | image open in ℤ_p^× ⊂ Q_p^× = 𝔾_m(Q_p), closure 𝔾_m | open ✓ |
| §3.2 closed immersion | G = PGL_2, ρ = Ad into GL_3 | ρ(PGL_2) closed in GL_3; subspace topology on PGL_2(Q_p) | openness transfers ✓ |
| §3.4 Tau Ceti inputs | det: GL_2 → 𝔾_m, J = T | D(T) = 1 ⊆ SL_2 (map_le ✓); f(T) = 𝔾_m ⊇ 1 = (𝔾_m)_der but T ⊉ SL_2 | central-kernel hypothesis needed ✓ (Check kept) |
| §3.4 | GL_2 → PGL_2, J = SL_2 | D(J) = SL_2, f(D(J)) = PGL_2 = D(PGL_2); kernel ∩ SL_2 = μ_2 finite | ✓ |
| ShimuraData Fl_μ (F02) | D^×, {μ} = (1,0); GL_2, μ = (1,0) | reflex Q_p, Severi–Brauer conic, no Q_p-point; representative over E iff E splits D (degree ≥ 2); GL_2: ℙ¹ over Q_p | ✓ |
| §2.3 citation change | rank one, φ = p^mσ, jump m | t_H = t_N = m, admissible via §5.5; jump 0, φ = pσ: t_H 0 < t_N 1, not admissible | consistent with PadicHodgeTheory §5.5's own Checks ✓ |
| Conventions Q_p(1) | covariant realization | φ = p^{-1}σ, jump −1, HT weight +1 | agrees with PadicLocalLanglandsForGL2Qp §0.2 Check ("period basis t⁻¹e_χ, φ = p⁻¹, jump −1, HT weight +1") ✓ |
| §1.3 identity (re-spot-check) | Res_{Q_5(5^{1/3})/Q_5}𝔾_m | (1+0+0)/3 = 1/3 = ⟨e_1, (1/3,1/3,1/3)⟩ | ✓ |
| §1.5 (re-spot-check) | GL_2 basic slope 1/2, s = 2 | k = 1 forced by (2ν)(p) = p; d_2 ≤ 2⟨(0,1),(1,0)⟩ = 0 < 1 | V^{2,1} = ∅ ✓ |
| §3.5 Check | PGL_2(Q_p)/im SL_2(Q_p) ≅ Q_p^×/Q_p^{×2} | 4 (p odd), 8 (p = 2) | ✓ |
| §4.1 Check | g = [[1,1],[0,1]], c = diag(1,−1) | g c g⁻¹ = [[1,−1],[0,−1]]·[[1,−1],[0,1]] = [[1,−2],[0,−1]] ∉ C | ✓ |

Context and generality: `Suggested.lean` declares nothing, so no `variable`/`include` issue arises; README generality is unchanged from the accepted design except §3.3's scope sentence (stated for every smooth connected affine group over a characteristic-zero nonarchimedean local field, as the design's statement already was).

## Dependency check

    depcheck: 56 roadmaps, 655 edges, 0 problem(s)

No UPWARD, CYCLE or moved line. PadicHodgeTheoryPartII sits at position 254 of the merge order, after its last supplier HeckeStacksAndLocalShtukas (252); PadicLocalLanglandsForGL2Qp, newly cited, is earlier.

## Suspicious text

None found in the inputs read.
