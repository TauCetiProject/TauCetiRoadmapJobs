# PKG-MappingClassGroupsAndCanonicalRepresentations — package report

Deliverables: `packages/MappingClassGroupsAndCanonicalRepresentations/README.md` (13 layers, about
167 KB), `Suggested.lean`, `metadata.toml` (`topic = "math.GT"`), `sources.toml` (33 entries),
`design/plan.json` (top-level `gaps` only), and this report.

Inputs. The design `design/README.md` and `design/plan.json` were read in full. There is no
`design/review.json` and `reports/` was empty; the accepted review is the `review` object of
`plan.json` (accepted, 62 nodes checked). Its corrections are already in the design, and all of them
are kept here.

Pins. Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti
`a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039` (from `lake-manifest.json`). These differ from the pins
recorded in the design (`082e2d3…`, `f790474…`). Every library declaration the README cites was
re-checked at the current pins (file and declaration listed under *Exact supplier contracts*).

## 1. Headline theorems

| Headline | Source | Status |
|---|---|---|
| MCG-finite of rank `r`, `r² < g + 1` ⇒ finite image | LL24 Thm 1.2.1 | **stated**: `mcgFinite_finite_image` (algebraic form on `surfaceGroup g n` with `pureMappingClassAut g n`, implied by the topological form, README §§0.2, 9.3) |
| Free-group form, `N = 2g` or `2g + 1` | LL24 Cor 1.6.1 | **stated**: `freeGroup_finite_image` (with `Aut(F_N)`, equivalent to `Out(F_N)`) |
| Putman–Wieland for `#H < g²` | LL24 Cor 7.2.4 / Thm 1.4.1 | **stated**: `putmanWieland_of_card_lt` (no nonzero class of the compactified cover fixed by a finite-index subgroup of the algebraic stabilizer; implied by the topological form, README §6.7) |
| Higher Prym rank bound; isotypic infinite orbits | LL24 Thm 7.2.1, Thm 1.4.2 | not stated: needs the deck-group isotypic decomposition of the cover's cohomology with the commuting stabilizer action; at the pins only an ad hoc type-synonym encoding over the group algebra exists (named in the module docstring) |
| Rank bound for sub-local systems of `R¹π°_*V` | LL24 Thm 1.7.1 | not statable: no moduli stack of pointed curves, no families of curves over complex varieties, no higher direct images of local systems along them |
| Artinian vanishing | LL24 Thm 6.2.1 | not statable: same carriers missing |
| Finite fibral monodromy on versal families | LL24 Cor 1.3.1 | not statable: same carriers missing |
| Algebraic isomonodromy criterion | LL24 Cor 1.2.3 | not statable: no isomonodromic deformations or logarithmic connections on families |
| Arithmetic finite monodromy on the generic curve | LL24 Thm 9.1.2 | not statable: no étale fundamental groups of varieties over finitely generated fields, no moduli stack over `ℚ` |
| Geometric / Hodge characterisation | LL24 Cor 9.1.4 | not statable: additionally no polarizable variations of Hodge structure |
| Residual non-liftability | LL24 Cor 9.2.2 | not statable: étale fundamental groups missing |

The Lean file contains only the definitions these three statements need (`surfaceRelator`,
`surfaceGroup` with its group instance, `peripheralLoop`, `pureMappingClassAut`,
`HasFiniteConjugacyOrbitUnder`, `prymStabilizer`, `compactPrymCohomology`), all with real bodies and
complete closure proofs; no `sorry` in any definition.

## 2. What the README cannot support at the strength of the design, and how it is handled

- **Suppliers that do not exist or come later.** The design imported its Hodge machinery from
  `HodgeStructuresPartII` (H.1–H.5), its surface topology from `MordellLawrenceVenkatesh:LV.5`, its
  moduli inputs from `StableReductionPartII` (MC.0–MC.4), a boundary interface
  `AlgebraicModuliForArithmeticGeometry:R09.7a`, deformation layers `DeformationAndDerivedPatchingAlgebra:R03.2/R03.4`,
  and requested "Part II" roadmaps of ProfiniteCohomology, InductionRestriction and CharacterTheory.
  `HodgeStructuresPartII` exists nowhere (not on main, not in the merge order, not in an open pull
  request, not on the board); MordellLawrenceVenkatesh (order 176) and StableReductionPartII (179)
  are later than this roadmap (87); `R09.7a`, `R03.2`, `R03.4` and `GlobalGaloisDeformations R04.1`
  are not sections of those roadmaps (the citation tool's two leads, confirmed). Section 3 lists
  where each notion went.
- **Deep literature theorems owned as targets.** Moving the Hodge inputs down makes this roadmap
  own several major theorems whose proofs are long: Mochizuki's deformation to variations (§5.8),
  Landesman–Litt 2022's isomonodromy semistability (§5.3) and unitarity theorem (§5.11),
  Timmerscheidt/Saito admissibility with the theorem of the fixed part (§5.4), Mehta–Seshadri and
  Simpson (§5.2), Esnault–Groechenig–Klevdal–Patrikis integrality (§5.10, whose route needs
  Drinfeld–Lafforgue companions, owned in principle by GlobalShtukasAndFunctionFieldLanglands,
  order 172, so not citable), Cousin–Heu's algebraization theorem (§9.5), Teichmüller theory of
  punctured surfaces (§2.3), and the quantum `SO(3)` representations used in §12.7. Each is a
  target with exact statement, locator and route; the README says where a route's inputs are part
  of the target. This is the main reason the roadmap is large; Layer 5 is the natural candidate for
  a separate Part if the board prefers.
- **Paywalled sources** (recorded `uncertified`, cited by locator only): FM12, Tim87, Wat89, Kat96,
  CR62, MKS04, MS80, SZ85, Mor93, Nie24, Deb01, PS08, Del70. All other 20 sources were read from
  legal copies (arXiv, Numdam, AMS open archive, author pages). No `needs-references.toml` was
  written: no needed text is missing.
- **Scope clarifications.** Layer 10 is stated in the hyperbolic range `2g − 2 + n > 0` (the
  source's Notation 1.10.1; its proof uses the Birman sequence and `M_{g,n}` as a DM stack); §9.5 is
  stated in the hyperbolic range Cousin–Heu's Theorem A requires; §11.5 needs a nonabelian surface
  group (hyperbolic range), since for the torus torsion characters are dense.

## 3. Notions moved down, and re-sourced citations

| Design citation | Disposition here |
|---|---|
| MordellLawrenceVenkatesh LV.5 (surfaces with punctures, Mod/PMod, Dehn twists on homology, primitive classes, asphericity, centres, evaluation fibration, point-pushing, Birman, capping, free bases) — later in the order | moved down: Layer 0 §§0.1–0.6, built on SurfaceTopology Layers 8–9 (other author's new-folder PR, allowed) and TeichmullerGeometry T6 |
| (none; design gap G9) finite abelianization of mapping class groups | owned: §0.7 (Korkmaz Thm 5.1) |
| StableReductionPartII MC.2/MC.4 (pointed moduli, forgetful map, fine level charts) — later | re-sourced: SchemeAndStackFoundations §4.15 on main (`Mbar.smooth`, `Mbar.forget`, `level_structure_cover`, `level_structure_cover_representable`) and ComplexCurveModuli D0.4–D8 |
| HodgeStructuresPartII H.1 (Betti representation scheme, GIT quotient, component lifting) — nonexistent | moved down: §1.4, on ArithmeticGaloisRepresentations §1.11 |
| HodgeStructuresPartII H.2 (canonical extension, residues) | re-sourced: ComplexComparisonPartII §C5.6 (`CanonicalLogExtension`) |
| HodgeStructuresPartII H.4 (sub-local-system rank, Artinian vanishing) | moved down: §§5.4–5.7 |
| HodgeStructuresPartII H.5 (PVHS, geometric origin, integral PVHS, rigidity, integrality, nonabelian Hodge, low-rank unitarity, unitary-embeddings finiteness, very general rank bound) | moved down: §§5.1–5.3, 5.8–5.11 |
| AlgebraicModuliForArithmeticGeometry R09.7a — nonexistent section | moved down: §7.2 (boundary multitwists; LLSS20 Lemma 2.1.1; log resolution per the authors' erratum), using AlgebraicModuli §9.5 and ResolutionOfSingularities §6.2 |
| DeformationAndDerivedPatchingAlgebra R03.2; GlobalGaloisDeformations R04.1 — nonexistent sections | moved down: §1.3 (LL24 Lemmas 3.1.1–3.1.2, Prop 3.2.1) |
| DeformationAndDerivedPatchingAlgebra R03.4 | re-sourced: LocalGaloisDeformationRings §§F.1–F.2 and DeformationAndDerivedPatchingAlgebra §§4.2, 4.4 (§11.6) |
| ProfiniteCohomology Part II (discrete LHS, transgression) — nonexistent | moved down: §1.1 (Hochschild–Serre 1953); the profinite analogue is ProfiniteCohomology Layer 5 and NoncommutativeAndEquivariantIwasawa §F.3, cited as such |
| InductionRestriction Part II (arbitrary-group projective reps, isogeny obstruction) | §1.2, on the pinned `TauCeti.IsProjectiveRep` API (projective reps of arbitrary monoids, `cohomologyClass_eq_zero_iff`) |
| CharacterTheory Part II (Jordan, two-generation) — nonexistent | moved down: §1.5 |
| DiamondsAndVStacks D0 (Leray; local systems as sheaves; `R¹π_*` of `K(π,1)` bundles; projection formula) | Leray re-sourced to SchemeAndStackFoundations §2.2; the rest declared as **gap:local-system-direct-images** against ComplexComparisonPartII §C6.1 (which treats finite coefficients only) |
| Relative Ehresmann with sections (design gap G2a) | re-sourced: ComplexComparisonPartII §C5.2 `ehresmannFibration`, with the section-preserving horizontal lifts as in IG.5.4 |
| Finite-index image of dominant maps (design gap G2b) | owned: §2.5 with a self-contained route |
| InverseGalois IG.1/IG.3/IG.5 node ids | re-cited by section: §§IG.1.4, IG.3.1, IG.5.4 |

## 4. Duplication sweep (by object)

Searched main, the open roadmap pull requests (via `roadmaps grep`/`show`), the board packages and
the pinned libraries for: mapping class groups, Dehn twists, Birman/point-pushing, Teichmüller
space, character/representation varieties, GIT closed orbits, variations of Hodge structure,
nonabelian Hodge, isomonodromy, Mehta–Seshadri, theorem of the fixed part, Putman–Wieland,
MCG-finite, Prym representations, Hochschild–Serre/transgression, projective representations,
Jordan's theorem, Nielsen generation, de Franchis, quantum representations.

Removals and re-citations (no design target was deleted outright; the design's objects that exist
elsewhere are cited, not re-planned):

- arithmetic representations, the moduli outer action, Artin neighbourhoods, density, versal
  `φ`-cover families: InverseGalois §§IG.1.4, IG.3.1, IG.5.4 (as in the design);
- the design's request for inflation–restriction in all degrees: already pinned
  (`TauCeti.groupCohomology.infRes_exact`); §1.1 keeps only transgression and the degree-two
  filtration for discrete groups;
- projective representations of arbitrary groups: pinned (`TauCeti.IsProjectiveRep` and its
  cohomology class); §1.2 keeps only the finite-isogeny and prescribed-restriction refinement;
- compact surfaces, `MappingClassGroupPlus`, `dehnTwist`, change of coordinates, Lickorish
  generation: SurfaceTopology Layer 9; closed-surface Teichmüller space and Dehn–Nielsen–Baer:
  TeichmullerGeometry T2, T3, T6 (§2.3 is the kept variant for punctured surfaces and the stack);
- canonical logarithmic extension and Riemann–Hilbert: ComplexComparisonPartII §C5.6;
- reductive quotients and closed tuples: ArithmeticGaloisRepresentations §1.11;
- finite-image ⇒ arithmetic: IG.1.4 records it only as a Check, so §10.3 keeps it as a theorem and
  says so in *Scope and ownership*.

Ownership against open pull requests: checked with the tool for every object above. Other authors'
new-folder pull requests used as suppliers: SurfaceTopology (#271 head) and TeichmullerGeometry
(#1169 head); both are not in the merge order, and the dependency check accepts them. No Lean
declaration of `Suggested.lean` shares a fully qualified name with a readable roadmap.

## 5. Corrections relative to the design

- **§12.3 (augmentation extension):** the design left the non-splitting as an unproved "source
  gate" for `g ≥ 2`. The README proves it for all `(g, n)` with `2g − 3 + n > 0` by the
  point-pushing computation `α · x = x + [α − 1, x]` mod `I³`; the `(1, 1)` splitting is the excluded
  case.
- **§12.6 (rank two):** the source's argument (BGMW17 Thm A for `g ≥ 2`, CH19 Thm B) gives finiteness
  for every `g ≥ 2`, not only `g = 2, 3`; the design had narrowed it.
- **§12.4 (Morita pointed extension):** Morita 1989 Prop. 6.4 was read: `H¹(Mod_{g,*}; H₁) ≅ ℤ`, and
  the restriction to the point-pushing subgroup is `2 − 2g` times the intersection generator; the
  design's "unspecified normalization" is now explicit.
- **§12.5 / §12.8:** an explicit special dihedral representation of `F₂ = π₁(Σ_{1,1})`
  (`a ↦ diag(λ, λ⁻¹)`, `b ↦ [[0,1],[−1,0]]`) replaces the unverified Aut(F₂)-linearity route; the
  finite `Out(F₂)`-orbit follows from BGMW17 Thm B.
- **§12.7:** semisimplicity of the large-rank examples is obtained from KS16 Cor 4.4 (a free
  subgroup in the image survives semisimplification) instead of being left uncertified.
- **§12.9:** a rank-one physically rigid infinite-image example replaces the deferred certificate.
- **§11.6:** reformulated non-vacuously: for every `Φ_p` quotient through which an arithmetic
  extension `ρ̄_Π` factors, the universal deformation ring has `R[1/p] = 0` (arithmetic fundamental
  groups over finitely generated fields fail `Φ_p` themselves).
- **§11.5:** stated for all hyperbolic `(g, n)` and `r ≥ 2` (the design's `g ≥ 1` excluded
  `Σ_{0,n}`, `n ≥ 3`, where the argument works).
- **§8.3:** the source gap E6 is closed by the component bijection of §1.4: Mochizuki's deformation
  stays in one connected component of the fixed-determinant representation scheme, which is the
  connected finite-type family Lemma 8.5.2 needs.
- **§1.2 checks:** the Klein-four subgroup of `PGL₂` lifts for no finite `D` (lifts anticommute);
  its pullback to `Q₈` lifts.
- Design citation leads `AlgebraicModuliForArithmeticGeometry R09.7a` and `GlobalGaloisDeformations
  R04.1` confirmed absent and replaced (section 3).

## 6. Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §0.1 presentation | (0,0),(0,1),(0,2),(1,0),(1,1),(0,3); `n ≥ 1` freeness | trivial; trivial; ℤ; ℤ²; F₂ with `c₁=[a,b]⁻¹`; F₂, abelianization rank `2 = 2g+n−1` | holds | none |
| §0.2 `pureMappingClassAut` ⊇ image of PMod | (0,3): image = Inn(F₂); swap `c₁↔c₂` ∉; (1,0): GL₂(ℤ) incl. det −1; (0,2): `c₁↦c₁⁻¹` ∉ | swap = `c_{c₁⁻¹}∘σ` (half-twist) | holds; containment direction makes Lean statements weaker than LL24 | none |
| §0.3 twist on homology | torus `(a,b)`, `î(a,b)=1` | `T_b=[[1,0],[1,1]]`, `T_a=[[1,−1],[0,1]]`; `(2,0)` not primitive, `(2,3)` primitive | holds | sign convention fixed by check |
| §0.4 asphericity/centre | disc, `S²`, torus, `Σ_{1,1}` | `π₂(S²)=ℤ`; centre(`ℤ²`)=ℤ²; centralizer of `a` in F₂ = ⟨a⟩ | holds with `χ<0` for centre | none |
| §0.5 Birman | (0,3); torus; genus 2 | PMod(0,4)≅F₂; Push trivial on torus | needs `χ<0` | none |
| §0.6 capping | `b=0`; `Σ_{1,1,0}` | kernel ⟨T_∂⟩, quotient SL₂(ℤ); boundary twist trivial on π₁ | holds | none |
| §0.7 abelianization | g=1,r=1; g=1,r=0; g=2; g≥3 | ℤ; ℤ/12; ℤ/10; 0 (Kor02 l.357) | finite iff g≥2 | — |
| §1.1 five-term | N=G; N=1; ℤ/4 ⊃ 2ℤ/4; Klein | nonextendable character, tg ≠ 0 in H²(ℤ/2,ℤ/2)=ℤ/2; split case tg=0 | holds | none |
| §1.2 isogeny lifting | r=1; Klein four in PGL₂; ℤ ⊃ 2ℤ with D=μ₂, μ₄ | Klein: lifts anticommute ⇒ o_D≠0 ∀D; ρ̃(1)²=−1 solvable in μ₄ not μ₂; tg = class of −1 in D/D² | holds | first check corrected (O₂ lift was wrong) |
| §1.3 constancy criterion | `d_n` injectivity; r=1; ρ_∞(1)=[[1,t],[0,1]] on ℤ | ad=0 for r=1; H¹(ℤ,sl₂)=sl₂≠0 and ρ_∞ not conjugate to constant | hypothesis necessary | none |
| §1.4 rep schemes | Γ=ℤ,r=2; Γ trivial; Γ=ℤ/2, r=2 and r=1 | unipotent and I same image; R={±I}; r=1: single point | holds | r=1 check corrected (fixed det fixes rank one) |
| §1.5 Jordan identity | u,l in GL₂(𝔽_p); r=1 | `u^m l^m=[[1+m²,m],[m,1]]`, `l^m u^m=[[1,m],[m,1+m²]]`, equal iff p∣m | holds | none |
| §2.1 MCG-finite | trivial (r=0); finite image; genus-2 unipotent with f(a₁)=1 | orbit of line of f under Sp₄(ℤ) infinite; semisimplification trivial | holds | none |
| §2.2 versal | (0,3); constant family; ramified cover | M_{0,3}=pt; not dominant; not étale | holds | none |
| §2.3 Teichmüller | (0,4); (1,1) | π₁=F₂; orbifold group SL₂(ℤ) ≠ PSL₂(ℤ) | holds for stack | none |
| §2.4 moduli comparison | (0,3); kernel check | PMod(0,4)≅F₂; second group must be PMod(g,n+1) | E1 corrected | none |
| §2.5 finite index | open immersion; z↦z² on ℂ^×; point → ℂ^× | surjective; index 2; infinite index | needs dominance | new target |
| §2.6 family exactness | constant family (0,3); point | 1→F₂→F₂→1; trivial image infinite index | holds | none |
| §2.7 fibral finite orbit | pulled-back system | trivial fibre | holds | none |
| §3.1 closure | sums, tensors; quotient by a line in U | infinitely many lines under Sp_{2g}(ℤ) | non-characteristic quotients excluded | none |
| §3.2 point-push restriction | n=0 symplectic rep | trivial restriction | holds | none |
| §3.3 rank one | (1,0) transvections; (0,3) `c₁↦2,c₂↦1/2` | torsion forced; genus-0 counterexample MCG-finite infinite | needs g≥1 | none |
| §3.4 projective extension | r=1; Q₈×C₂; trivial centralizer | Klein four self-centralizing ⇒ non-unique PGL extensions | uniqueness only among intertwiner classes (E2) | none |
| §4.1 pointed killing | 𝔾_m, z↦z² | kills nontrivial class in H¹(ℤ,ℤ/2) | holds | none |
| §4.2 prescribed lift | r=1 | finite character extended after killing transgression | holds | none |
| §4.3 realization | finite-image ρ | kernel cover of level chart | holds | none |
| §4.4 normal restriction | G=N×ℤ, ρ=2^kσ | finite/unitary on N, infinite non-unitary on G; det infinite | finite det necessary | none |
| §4.5 relative decomposition | A=ℂ irreducible; V=0; V=π°*W; A=ℂ[ε]/ε² nonconstant deformation | single summand; empty sum; W₁=W; no decomposition | fibre hypothesis necessary | none |
| §5.1 PVHS, integrality | rank one; uniformizing rank 2; ℤ/3 character | rank one unitary; non-integral infinite PVHS; O_K-integral without ℤ-lattice | O_K reading required (E8) | none |
| §5.2 parabolic semistability | trivial; character on ℙ¹∖{0,∞} with residue a; uniformizing VHS | deg −1, weights a and 1−a, par-deg 0; Hodge line deg g−1>0 destabilizes | holds | weight convention check added |
| §5.3 isomonodromy semistability | unitary; LL22 Thm 1.3.2; g=0 | always semistable; never-semistable examples above bound; rank 1 only | bound necessary | none |
| §5.4 VMHS on H¹ | V trivial n=0; n≥2; nontrivial local monodromy everywhere | H^{1,1}=0; W₂/W₁ rank n−1 type (1,1); W₁=W₂ | holds | none |
| §5.5 period derivative | trivial V; g=0; E=O_C | classical multiplication; empty bound; 1 ≥ g−g | holds | none |
| §5.6 rank bound | g≤rk V; g=3 trivial V; subquotients | empty; ≥4 vs rank 6 irreducible; W₂/W₁ rank n−1 may be < 2g−2 | sub-local systems only | none |
| §5.7 Artinian vanishing | A=ℂ unitary; V=0; V=π°*W | case of §5.6; needs g>rk W | holds | none |
| §5.8 nonabelian Hodge | unitary; uniformizing SL₂ (dim H¹(ad)=6g−6); rank one | second statement inapplicable; deformation constant in rank one | holds | component formulation (E6) |
| §5.9 rigidity | r=1; reducible fibre | ad=0; π°_* ad ≠ 0 | order: strong ⇒ rigid only after quasi-unipotence (E13) | none |
| §5.10 integrality | GL₁ finite; PGL_r abelianization; 𝔾_m character 2 | integral; vacuous; 1/2 not integral (fails two hypotheses) | holds | check corrected |
| §5.11 unitarity/finiteness | unitary; Salem x⁴−x³−x²−x+1 (y²−y−3=0, y≈2.30, −1.30); g=0 | integral, unitary at complex embeddings, infinite image | all embeddings needed | check replaced |
| §6.1 Prym actions | H=1; identity cover of Σ_{0,3}; σ⊕σ | dim 2g; open H¹ dim 2 vs compact H₁ 0; isotypic 2 dim σ vs Hom dim 2 | holds | Lean carriers added |
| §6.2 PW property | genus-0 covers; fixed vector; Marković | V_K=0; refutation; counterexample g=2 | holds | none |
| §6.3 boundary reduction | b=0 | identity; genus g′ (E5) | holds | none |
| §6.4 cover cohomology | H=1 | R¹π°_*ℂ | holds | none |
| §6.5 Prym rank bound | g=3 dim σ=1; H=1 Sp irreducible; p≥2 subquotient | ≥4; ≥2g−2 vs 2g; p−1 trivial quotient | subrepresentations only | none |
| §6.6 small degree | abelian H; S₃ | g≥2; g≥3 | holds | none |
| §6.7 small order (Lean) | cyclic H; H=1,g=2; g≤1 | #H=1<4 Sp-type statement; vacuous | Lean form implied by LL24 (bigger stabilizer, Poincaré duality, relative index) | none |
| §6.8 isotypic orbits | cyclic H; dim σ=g | bound 0 | strict needed | none |
| §7.1 multitwists | symplectic rep; PMod(0,4) character 2; A₃⊂S₃ induction | transvection unipotent (k=1); not quasi-unipotent; ω⊕ω² | genus ≥3 needed; AS16 slip E14 | none |
| §7.2 boundary multitwists | xy=t | single twist, unipotent on H₁ | log resolution needed (erratum) | moved down from R09.7a |
| §7.3 quasi-unipotence | finite image; PGL via Ad | finite order; Ad faithful | holds | none |
| §7.4 projective integrality | r=1 | empty | order of steps per erratum | none |
| §7.5 linear integrality | r=1 | cyclotomic | GL_r(O_L) not M_r(O_L) | none |
| §7.6 conjugate unitarity | identity embedding | hypothesis | needs total-space PVHS | wording fixed |
| §7.7 unitary finiteness | Σ_{0,3} character e^{2πiθ}, θ irrational | MCG-finite, unitary, infinite | g=0 forces r=0 | check made explicit |
| §8.1 formal constancy | constant ρ_∞; r²−1 ≥ g | trivial; no conclusion | holds | none |
| §8.2 algebraic constancy | point; t↦[[1,t],[0,1]] | conjugate for t≠0, I at 0 (non-closed orbit); H¹(ℤ,sl₂)≠0 | closedness and formal constancy both needed | checks corrected |
| §8.3 semisimple finiteness | unitary; genus-1 special dihedral | r²=4 ≥ g+1=2 | holds in range | gap E6 closed via §1.4 |
| §9.1 socle | semisimple; U | length one; socle H | holds | none |
| §9.2 splitting | unipotent with constituent stabilizer only; a=b=1 | printed step refuted by §2.1 example; r=2 needs g≥4 | stabilizer of class of ρ required (E7) | none |
| §9.3 main theorem (Lean) | g=0; g=1,r=2; U of rank 2g+1 | r=0; counterexamples outside range; (2g+1)² ≥ g+1 | holds | none |
| §9.4 fibral | pulled back; g=3 r=1 | trivial; torsion | holds | none |
| §9.5 isomonodromy | finite monodromy; torus | easy direction; excluded (2g−2+n=0) | hyperbolic range | scope stated |
| §9.6 Nielsen | N=1; N=2 abelianized; GL₃ pair | {±1}; generate GL₂(ℤ); explicit conjugator | holds | check simplified |
| §9.7 free groups (Lean) | N=0,1; N=2g+1; rank N+1 | g=0, r=0; Σ_{g,2} rank 2g+1; Out-fixed infinite | holds | none |
| §9.8 Nielsen tuples | N=2, r=1 | GL₂(ℤ) on exponents; finite iff torsion | holds | none |
| §9.9 characteristic quotients | ℤ^N | GL_N(ℤ)-finite characters torsion | holds | none |
| §9.10 total image | trivial rep | finite | holds | none |
| §10.1–10.2 arithmetic finiteness | r=1; modular-curve covers g≥4 | finite order; Tate module infinite ⇒ not generic | genericity needed | hyperbolic range stated |
| §10.3 finite ⇒ arithmetic | trivial; abelian schemes | arithmetic; infinite arithmetic | sufficient not necessary | none |
| §10.4 characterisation | ℤ/3 character | O_K-integral PVHS, no ℤ-lattice | O_K reading | attribution to LL22 Thm 1.2.5 |
| §10.5 wider range | g=3 | r≤3 vs r=1 | arithmeticity excluded | none |
| §11.1 lifts | trivial; ramified E | ℤ_p lattice; admitted | holds | geometric ⇒ arithmetic proved via §5.1 semisimplicity |
| §11.2–11.3 Jordan obstruction, non-lifting | r=1; p∣m(r) | cyclic; no claim | holds | none |
| §11.4 surjections | n≥1; n=0 | free profinite rank 2g+n−1; b_i↦1 respects relation | holds | none |
| §11.5 non-density | r=1; torus | torsion dense | r≥2 and nonabelian needed | range corrected |
| §11.6 non-flatness | ℤ_p[[x]]/(p) | non-flat complete intersection | conditional statement non-vacuous | reformulated |
| §12.1 unipotent | F₂; F₀; F₁ | I₃+E₁₃, I₃+E₂₃; trivial; [[1,1],[0,1]] | holds | none |
| §12.2 Morita primitive | g=2 | dim ∧³H = 4 = dim H, quotient 0 | g≥3 needed | none |
| §12.3 augmentation | (1,1); n−1≥1 | truncated log splitting; a⊗b−b⊗a≠0 | non-split iff 2g−3+n>0 | proved, range extended |
| §12.4 Morita pointed | factor 2−2g | nonzero for g≥2 | holds | normalization made explicit |
| §12.5 genus one | ρ_{μ,c}; explicit dihedral | some c_i≠0 unipotent; `a,bab⁻¹ ↦ diag(λ^{±1})` | holds | explicit example (corrected generator assignment) |
| §12.6 rank two g≥2 | g=2,3; g=1 | beyond §9.3; false at g=1 | holds | widened to all g≥2 |
| §12.7 large rank | semisimplification of U | trivial; free subgroup survives | holds | semisimplicity route via KS16 Cor 4.4 |
| §12.8 small free groups | Out(ℤ); F₁ range | λ ↦ λ⁻¹; r=1 outside | holds | F₂ example explicit |
| §12.9 rigid sphere | n=3; Σ_{0,4} character 2,1/2,1,1 | product 1; MCG-finite infinite | holds | rank-one rigid example |

## 7. Lean elaboration

Command: `lake env lean <absolute path>/Suggested.lean` from the content checkout. Outcome: no
errors; exactly **3** warnings, all `declaration uses 'sorry'` (lines 157, 172, 181:
`putmanWieland_of_card_lt`, `mcgFinite_finite_image`, `freeGroup_finite_image`). No `TauCeti.*`
import is used.

`#check` comparison: a scratch copy with `#check @name` for all ten declarations was elaborated once.
The elaborated types match the README statements; no declaration has section variables (there are
none in the file), so no binder was lost. Example:
`mcgFinite_finite_image : ∀ (g n r : ℕ) (ρ : surfaceGroup g n →* GL (Fin r) ℂ), HasFiniteConjugacyOrbitUnder (pureMappingClassAut g n) ρ → r ^ 2 < g + 1 → (Set.range ⇑ρ).Finite`.
No change was needed after the comparison.

The full gate run on a scratch copy of the folder reported every content check at 0 (`readme-ids-missing=0`,
`latex=0`, `sorry-data=0`, `depcheck=0`, `metadata=0`, …); its only failure was `git=1` because the
scratch copy is not a git repository.

## 8. Dependency check

```
$ tauceti-roadmap … gate --depcheck packages/MappingClassGroupsAndCanonicalRepresentations/README.md --name MappingClassGroupsAndCanonicalRepresentations --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 649 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README: no cross-roadmap citation and no
Lean name found nowhere.

## 9. Supplier gap declared

`plan.json` `gaps` now holds one entry, stated in the README under *From
TauCetiRoadmap.ComplexComparisonPartII*: `local-system-direct-images` (supplier
ComplexComparisonPartII, §C6.1): local systems with `ℂ` and finite-dimensional `ℂ`-algebra
coefficients as locally constant sheaves, `R^q f_*` of such systems along fibre bundles with the
`K(π, 1)` group-cohomology identification, and the projection formula. The design's nineteen
internal closure gaps are resolved as targets or supplier citations (section 3) and are no longer
listed.

## 10. Untrusted text

The author page carrying the P04 erratum also reproduces AI-generated reviews; only the erratum
entries are used, and the page is treated as data. No fetched or supplier text contained
instructions.
