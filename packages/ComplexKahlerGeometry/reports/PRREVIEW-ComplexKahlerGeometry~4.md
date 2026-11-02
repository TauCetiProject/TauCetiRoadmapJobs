# Review of ComplexKahlerGeometry (pull request #1398 at e2a3ee3)

**Verdict:** needs changes

## R01 (P1) — Break the remaining RealAnalyticGeometry cycle

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:650–657, 1891–1902, 1971`, “RealAnalyticGeometry R5 supplies the global compatible triangulation”.

Claim: the roadmap still supplies the local complex geometry, connections and estimates used by RealAnalyticGeometry, and consumes that roadmap's R1/R5. Ordering individual subtargets does not give the required single direction between whole roadmaps.

Witness: main `TauCetiRoadmap/RealAnalyticGeometry/README.md:22, 1019–1022, 1028–1030` explicitly has CKG K3/K4/K5a/K6.0 → R1/R3 → R5 → CKG K6.1. The mechanical checker misses this cycle.

Repair: retain the early local analytic supply here; move the R1-dependent finite regular-piece partition and R5-dependent integral-cycle extension to ComplexKahlerGeometry Part II after RealAnalyticGeometry. Record that boundary in scope and remove the returning supplier edges here. On the crossing curve, Part II still constructs two positive regular-component generators and zero singular 2-cells; none of those later constructions is needed for the earlier local identities.

## R02 (P1) — Remove the reverse supply to AlgebraicTopology

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:2038–2054, 2330–2333`, “The CW construction uses only K7.1 and AlgebraicTopology Stage 4.”

Claim: this roadmap consumes AlgebraicTopology Stages 4/6 and supplies the projective carrier/CW structure consumed by Stage 7 of that same existing roadmap. Separating the cellular and Hodge subtargets leaves this cycle.

Witness: main `TauCetiRoadmap/AlgebraicTopology/README.md:1591–1600, 2104` explicitly consumes CKG K7.1/K7.2 for χ(ℂPⁿ)=n+1, and explicitly records their dependence on AT Stage 4.

Repair: move the projective carrier, complex atlas and explicit finite CW construction to an earlier independent foundation (an extension of the appropriate existing geometric owner), and point AT's application to that owner. Keep the AT-dependent cellular/cup and Hodge consequences here. The moved core must use native topology/CW machinery without consuming the later AT theorem it enables. On ℂP⁰ and ℂP², the cells remain respectively {0} and {0,2,4}; AT's Euler computations remain 1 and 3. Resolve both edges, rather than merely deleting the mention of Stage 7 here.

## R03 (P1) — Separate the filtered-complex supplier from its geometric consumer

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:2143–2148, 2282`, “Consume DGFloer's generic filtered-complex spectral sequence”.

Claim: DGFloer supplies the filtered-complex comparisons to CKG K8, but its own Layer 1 consumes CKG K7's projective carrier and normalized form. Subtarget interleaving again violates the required roadmap-level supply direction.

Witness: main `TauCetiRoadmap/DGFloer/README.md:159` consumes CKG K7.1–K7.2; lines 612–650 own the generic filtered-complex/reindexing/convergence comparisons consumed here. Thus CKG → DGFloer → CKG.

Repair: put the generic filtered-complex comparisons in an independent earlier owner, retaining native spectral objects, and cite that owner here; DGFloer's geometric applications remain consumers. Reconcile the existing owner rather than copy the generic theory into K8. For the Iwasawa column filtration, d₁ still maps (1,0) to (2,0) and sends φ₃ to −φ₁∧φ₂. The separation must preserve that sign and convergence while removing both roadmap-level directions.

## R04 (P2) — Resolve the differential-operator ownership conflict

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:25–27, 945–1012`, “construct the space of scalar-linear differential operators”.

Claim: removing the PseudodifferentialOperators citation has replaced the previous cycle with a second owner for its finite-order operators, jets, symbols and density transposes. The named supplier has not relinquished these targets.

Witness: `TauCetiRoadmap/PseudodifferentialOperators/README.md:377–414` constructs the same bounded-order operators, higher jets, iterated-commutator characterization and density transpose, including the same second-derivative and variable-coefficient tests.

Repair: reconcile the ownership boundary with P1.0. Put the initial density-line prerequisite with an earlier common owner, keep the operator/jet/transpose core in P1.0, and consume that core here; any later PDO material consuming CKG must be separated to avoid restoring the cycle. Alternatively a coordinated move must remove the former owner's targets, rather than merely assert a new boundary here. Both interfaces must retain [[∂²,x],x]=2 and (x∂)ᵗ=−x∂−1. A point has JᵐE=E and positive-order symbol zero in either presentation.

## R05 (P2) — Import the existing Cauchy–Green and finite-rank Runge targets

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:20–24, 282–343`; `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean:58`, “Layer 2 owns the scalar compact-support Cauchy–Green transform, finite-rank Runge approximation”.

Claim: these are already planned by GlobalHolomorphicFunctions. The finite-rank theorem is not a new generalization: its weights can be absorbed in its holomorphic output functions. The mixed-parameter solver can remain. GH §7.2 also owns planar two-form exactness (README:1834–1855); CKG README:118–121 should import it, retaining only the complex de Rham comparison.

Witness: `TauCetiRoadmap/GlobalHolomorphicFunctions/README.md:381–409, 953–965` and `Suggested.lean:165` give the transform and uniform finite-rank operator, with the collar chosen before ε and evaluation points independent of f.

Repair: cite GlobalHolomorphicFunctions §0.3 and §2.5 by target, remove the repeated construction and `finite_rank_runge_approximation` acceptance declaration, and retain the parameter-solver proof using that supply. Reconcile the downstream wording and import GH §7.2 exactness. On K={0}, one evaluation gives error 0 in both versions; replacing wⱼgⱼ by g′ⱼ leaves every bound identical. For K=∅ choose N=0 and L=∅ in both.

## R06 (P2) — Use the owner of relative de Rham integration

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1784–1828`, “Construct the boundaryless open-pair comparison needed below”.

Claim: the nonexistent DifferentialGeometry contract has been replaced with a construction, but that construction duplicates DeRhamCohomologyAndDuality's relative cone comparison and compact-support evaluation theorem.

Witness: `TauCetiRoadmap/DeRhamCohomologyAndDuality/README.md:357–375, 404–435` states DR.3.8 and DR.4.4 with this same differential, open-pair generality, relative evaluation and chart-simplex/partition proof route.

Repair: import DR.3.8/DR.4.4 in the later cycle extension, placing that extension after its actual supplier; do not add an upward edge to this roadmap. Retain only an analytic-cycle-specific adapter. A compactly supported 2-form on ℝ² of integral 1 has relative evaluation 1 and absolute top class 0; the supplier theorem gives exactly the required distinction. On the oppositely oriented point, both evaluation and integration of 2 are −2.

## R07 (P2) — Do not rebuild the all-degree real Lie-algebra complex

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:27–28, 2164–2208`, “Layer 8 owns the all-degree finite-dimensional Lie-algebra cochain complex”.

Claim: LieGroupoidsPoisson owns a standalone real Lie-algebra complex with arbitrary module coefficients, not only the manifold Lie-algebroid extension described here. The real half of this target and its low-degree comparisons duplicate that owner.

Witness: `TauCetiRoadmap/LieGroupoidsPoisson/README.md:651–662` states all-degree alternating real cochains, both differential sums, d²=0 and the same native d₁₂/d₂₃ comparisons, explicitly supplying CKG K8.

Repair: cite that standalone section for real coefficients. Keep and distinguish the complex-scalar, conjugate-algebra and invariant-Dolbeault adapters needed here, reconciling their supplier direction. For [X,Y]=Z, both real complexes give dZ*(X,Y)=−1; for the one-dimensional action on ℝ, (d1)(1)=1. Scalar extension preserves both values, so it does not require reconstructing the real complex.

## R08 (P2) — Base the fiberwise star on the pinned exterior-power star

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:866–878`, “construct the pointwise Hodge star on all exterior degrees”.

Claim: the pinned library already constructs the algebraic star. Own its metric/orientation specialization, additional identities and smooth bundle transport.

Witness: `Mathlib/LinearAlgebra/ExteriorPower/HodgeStar.lean:48, 53` defines `exteriorPower.hodgeStar` and its wedge-pairing characterization for finite free modules with nondegenerate bilinear form and volume equivalence.

Repair: cite those declarations in the supplier contract and identify the real cotangent exterior powers with their native inputs. Keep square, isometry, orientation and bundle-smoothness results: they are not supplied by that file. With oriented orthonormal dx,dy, the native characterization gives *dx=dy and *dy=−dx; reversal of the volume reverses both signs. Thus it supplies the required object without losing the convention test.

## R09 (P2) — Remove the remaining planar coefficient substitutes

Location: `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:19–62`, “hu : ContDiff ℝ ∞ u”.

Claim: these signatures still replace the README's rough-form star/codifferential comparisons on arbitrary open sets with bespoke coefficient operations on global C∞ functions. Suggested's docstring now correctly calls the geometric comparisons unstatable, but the companion still asserts their substitutes.

Witness: u(x+iy)=|x|³ is C², not C³; its negative coordinate Laplacian is −6|x|. README §5.5 applies, whereas the companion's C∞ hypotheses exclude it and mention no generic form comparison.

Repair: delete the stand-in declarations and supporting coefficient definitions from the acceptance files; keep the formulas and finite-regularity statements in README §5.5 and the missing-carrier explanation in Suggested's docstring. Any later genuine geometric signature must admit |x|³ on an open plane domain and give −6|x|, with the empty-domain assertion vacuous. Merely weakening C∞ on this coefficient surrogate does not supply the missing comparison.

## R10 (P3) — Apply the Lean form rules to the companion too

Location: `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:1–20, 25–49`, “import Mathlib.Analysis.InnerProductSpace.Laplacian”.

Claim: all three imports are forbidden submodule imports. The module lacks the required target-signatures docstring/layer organization, and several declarations have no docstring or README declaration-name counterpart. The worker's passing gate did not catch this companion.

Witness: lines 1–3 contain three Mathlib subimports and no `import Mathlib`; `partialX`, `partialY`, `deltaOne` and `curlOne` have no declaration documentation and no named README acceptance contract.

Repair: after R09/R11, remove the obsolete companion, or bring every genuinely retained declaration under the same import, docstring and README-name rules as Suggested. A literal import/name scan must then show one root Mathlib import and no unmatched retained declaration; the present scan gives three subimports and these four concrete unmatched definitions.

## R11 (P3) — Delete planar calibration and API padding

Location: `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:25–35, 49–51, 65–67`, “Sign calibration on the squared Euclidean distance from the origin.”

Claim: the square/sign and constant tests are API or example padding; the admitted norm-square calculation is explicitly a README Check, not a headline theorem. Being mathematically correct does not make these acceptance targets.

Witness: `starOneCoefficients_sq`, `star_dz`, `star_dbarz` and `deltaOne_const` already close by elementary simplification. `hodgeZero_normSq` computes only −4 on x²+y², the calibration in README §5.5.

Repair: delete these declarations from Suggested.lean's acceptance material, including this companion; keep the statements as README Checks. The retained README computations are *²(P,Q)=(−P,−Q), *dz=−i dz, *dbarz=i dbarz, δ(a dx+b dy)=0, and Δ_H(x²+y²)=−4. Do not replace the sorry by a proof in place.

## R12 (P3) — Finish per-definition Checks and local dependency lists

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1753–1780, 1985–2021`, “Define Nakano positivity by its Hermitian form”.

Claim: the new section-level API/Check blocks do not yet give each definition three discriminating Checks. K6.0 introduces Kähler metrics, L/Λ, primitive forms and Nakano positivity with no Check block or itemized Needs line; K7.1 likewise has no local Needs line. Broad layer dependency lists do not distinguish the statements and proof routes.

Witness: K6.0 runs directly from definitions/identities to the K6.1 heading at line 1782. Its primitive-form and Nakano predicates have no three-case tests; the later compact examples do not test these definitions.

Repair: add definition-specific API/Checks and statement-specific Needs, and finish this across the layer. For primitive forms in complex dimension 2, Λ(ω₁−ω₂)=0 but Λ(ω₁+ω₂)=2; in dimension 1, Λ(dz)=0. For Nakano curvature aω⊗Id, a=0,1,−1 distinguish semipositive, positive and negative; the (n,k) curvature term is ka. List K1/K2, K4 and local K5 adjoints at the individual identities, without compact Hodge theory. Move prerequisite fragments into actual build order where needed.

## R13 (P3) — Complete claim-level source locators and the source record

Location: `TauCetiRoadmap/ComplexKahlerGeometry/README.md:1097–1111, 1753–1780, 1985–2021, 2356–2380`, “Wells, Differential Analysis on Complex Manifolds, for Dolbeault, elliptic Hodge theory and duality.”

Claim: several sampled targets still have no exact supporting locator: the smooth-section Montel construction, the K6.0 identity package and projective-chart/orientation construction are examples. A work named at the end does not locate these claims. The folder also has no sources.toml recording its cited works.

Witness: §5.3 cites a native Montel predicate and generic dual comparison, which do not prove the geometric smooth-section instance. K6.0 has no theorem/page citation; the Wells reference supplies neither edition nor locator.

Repair: attach exact theorem/section/page locators to the respective assertions and distinguish additional constructions from cited results; record each work once in sources.toml, with the fetched version or settled uncertified status. Demailly VI §7, pp.309–310 supports compact fixed-rank Hermitian Dolbeault Hodge/Serre, not smooth-section Montel. For the latter, document the derivative-wise Arzelà–Ascoli/diagonal route: sin(jx) is excluded by its first-derivative bound j, while the closed unit disk of sections on a point is compact. Those tests distinguish the missing geometric theorem from the generic class definition.

## Verified sound

Full review: 13 findings (three P1, six P2, four P3). No PR files changed; outside-folder diff empty. Worker gate: all-zero/OK, including build. Independent Suggested elaboration: five sorry warnings only. No sorry data, set_option, copied source passage, executable algorithm or route restriction found.

### Previous findings, checked individually

Of 15 previous findings, six are repaired and nine partial/unrepaired.

| Previous | Present passage or exact change | Status |
|---|---|---|
| R01 PDO cycle | README:25 “Layer 5 owns finite-order bundle differential operators” | Partly: the returning citation is removed, but P1.0 still owns these objects; R04. |
| R02 RAG cycle | README:653 “RealAnalyticGeometry R5 supplies the global compatible triangulation” | Not repaired; R01. |
| R03 relative integration | README:1786 “Construct the boundaryless open-pair comparison” | Partly: no longer falsely attributed to DG, but duplicates DR.3.8/4.4; R06. |
| R04 variational drift | README:1440–1442 “CompactFormPair.operatorDomainV” and the shifted-inverse/domain theorems | Repaired: all three exist at the supplied VariationalMethods head. Resolver warnings are false leads. |
| R05 sorry'd data | Suggested:14 “not available at the pins with the geometric comparisons” | Repaired: all five declarations are theorems; zero data definitions/instances. Companion definitions have real bodies. |
| R06 arbitrary Sobolev tuple | Suggested:29–31 “actual atlas localization/reconstruction maps” | Repaired: the tuple surrogate is gone and the missing geometric construction is named. README requires actual reconstruction. |
| R07 finite regularity | Suggested:33–35 “coefficient formulas alone do not state those comparisons” | Partly: README/docstring repaired, companion unchanged; R09. |
| R08 full solver | Suggested:78 “theorem mixed_parameter_solver” | Repaired: the full arbitrary-open-domain mixed-parameter theorem is stated. |
| R09 imports | Suggested:1 “import Mathlib” | Partly: Suggested repaired, companion still has three subimports; R10. |
| R10 padding | Companion:65 “theorem hodgeZero_normSq” | Partly: old Suggested API removed, companion padding remains; R11. |
| R11 shape | README:1757 “Define Kähler metrics” | Partly: main headings/API lists present, but definition-specific Checks/dependencies remain incomplete; R12. |
| R12 locators | README:2360 “21 June 2012 version” | Partly: Demailly, Rainer, KMS and several other locators added, sampled omissions remain; R13. |
| R13 historical links | README:96–106 cites ComplexManifolds by milestone | Repaired: no PR-number/historical-commit dependency citation found in these files. |
| R14 HTML residue | README:473 uses the ordinary Layer 3 heading | Repaired: the old HTML anchor is gone. |
| R15 names/docs | Companion:19 “def partialX” | Partly: Suggested matches README, companion documentation/names still do not; R10. |

### Headline coverage and Lean checks

The README's deep outputs are: Newlander–Nirenberg; finite-rank Runge and the mixed-parameter solver; Dolbeault–Grothendieck and sheaf comparison; analytic realification; Weierstrass preparation/division, Noetherianity/factoriality, Nullstellensatz/coherence and Hartogs; Chern uniqueness, Koszul–Malgrange and flat/local-system equivalences; geometric Sobolev/elliptic realization and de Rham/Dolbeault Hodge/Serre duality; Kähler identities, the ∂∂̄ lemma, Hodge decomposition, Hard Lefschetz, Hodge–Riemann and analytic-cycle integration; projective/torus/Hopf cohomology; and Frölicher, Nomizu/Sakane and the Iwasawa comparison.

Suggested states the five native-carrier targets listed at README:32–35. Its docstring names the remaining headline families and their missing carriers. Runge has duplicate ownership. No further absent native-carrier headline was established. Native algebraic exterior-power star does not by itself supply the missing manifold type forms, geometric adjoints or Hodge cohomology.

I elaborated an unchanged Suggested copy with `#check @name` for every declaration, and an unchanged companion copy with all 15 declarations checked. All five Suggested signatures and all 15 companion signatures retained their intended binders; no signatures were changed. In particular L precedes ε, the evaluation data precedes f/B, and the mixed solver retains all smoothness, Hausdorff, countability and open-set hypotheses. The three local analytic/stalk statements deliberately require no global separation/countability and the README says so. The native sheaf statement uses a small manifold type.

Scratch probes tried simp, rfl and infer_instance separately at all eight admitted declarations; none closed. No matching single pinned lemma was found for the five Suggested assertions. The companion numerical Check/proved elementary API remains padding regardless (R11). Ordinary Suggested and companion elaborations passed with only sorry warnings. No Lean process remains.

### Computed adversarial pass

Rows give computed tests, not general proofs. They cover the sampled topics, headline theorems and findings. Zero/empty, disconnected, noncompact, regularity and convention controls appear where relevant; positive characteristic is outside the stated real/complex setting.

| Statement / convention | Instances tried | Computed sides / distinguishing values | Result; change |
|---|---|---|---|
| Conventions: fundamental form | ℂ, u=∂x, J∂x=∂y | ω(u,Ju)=1=g(u,u); −J gives −1 | Pass |
| Conventions: dᶜ and ddᶜ | f=x²+y² | dᶜf=2xdy−2ydx; ddᶜf=4dxdy=2i∂∂̄f | Pass |
| Conventions: Hermitian slots | u=1,v=i | hT=i; source tensor=−2i; swapped source=2i; fundamental form=2dxdy | Pass |
| K1 complex orientation | multiplication by 1+i; conjugation | real determinants 2 and −1; complex determinant norm-square=2 | Pass |
| K1 type projections | J eigenvalues i and −i | (1−iJ)/2 gives 1,0; (1+iJ)/2 gives 0,1 | Pass |
| K1 Nijenhuis convention | X,Y of type (0,1), B=[X,Y]^(1,0) | N(X,Y)=−4B; ∂̄²f(X,Y)=df(B)=−∂f(N)/4 | Pass |
| K1 integrability boundary | standard ℂⁿ; dimension zero | N=0, ∂̄²=0; zero tangent has J²=−Id=0 | Pass |
| K1 joint implicit function | G(v,z)=v²+z near (1,0) | inverse v=√(w−z); derivatives ∂wv=1/2, ∂zv=−1/2 | Pass; retain joint dependence |
| K1 holomorphic derivative | z and bar z | real derivative of z commutes with J; conjugation sends i to −i | Pass |
| K2 fundamental solution sign | radial cutoff equal to 1 near 0 | radial derivative integral=−1; integration-by-parts sign gives ∂̄(1/(πz))=δ0 | Pass; R05 ownership |
| K2 compact-support parameter integration | f(p,q,z)=pqρ(z) | ∂pT(f)=qTρ=T(∂pf); ∂̄qT(f)=0 | Pass; R05 ownership |
| K2 finite-rank Runge | K={0}; constant/evaluation | N=1, ζ=0, g=1 gives error at K=0≤εB | Pass; R05 |
| K2 Runge empty case | K=∅, L=∅ | N=0, sum=0; both pointwise requirements have empty domain | Pass; R05 |
| K2 Runge negative control | unit circle, Ω disk radius 2, f=1/z | enclosed component has compact closure inside Ω; period 2πi versus 0 for disk-holomorphic approximants | Correctly excluded; none |
| K2 full mixed solver | f(p,q,z)=pq; Q=ℂ or ℂ∖{0} | u=pq bar z; (ux+iuy)/2=pq; ∂̄qu=0 | Pass; keep Suggested:78 |
| K2 local exactness degree | constant 1 in degree 0; positive-degree closed form on disk | kernel in degree 0 contains 1; degree 1 cohomology=0 | Pass; degree-zero holomorphic sheaf retained |
| K2 sheaf/gluing comparison | two disjoint points | sections and H⁰ both ℂ²; higher groups=0 | Pass; no connectedness silently used |
| K3.0 realification | z↦z² at 1; conjugation | real derivative matrix diag(2,2); analytic transition agrees; conjugation is real analytic but not holomorphic | Pass; implication not biconditional for arbitrary real maps |
| K3.0 chart locality | zero-dimensional point; non-Hausdorff atlas locally | point transition is identity on 0; local transition test is unchanged by global separation | Pass; explicit local binders agree |
| K3.1 stalk and units | point; z and 1+z at 0 | stalk at point=ℂ; evaluations 0 and 1 give nonunit/unit | Pass |
| K3.1 Noetherian headline | ideals (z²,z³) and point ideal | (z²,z³)=(z²); point ideals are 0 or ℂ | Pass; keep Suggested:114 |
| K3.1 factorial headline | zw; dimension zero | two irreducible factors z,w; in ℂ every nonzero element is a unit | Pass; keep Suggested:123 |
| K3.1 wrong smooth-germ model | opposite one-sided flat functions | both germs nonzero; product germ=0 | Native complex sheaf excludes this wrong real-smooth model |
| K3 preparation and division | 1+w³ divided by w; zero function | quotient w², remainder 1; zero has no finite distinguished order | Pass; finite-order hypothesis needed and present |
| K3.2 fraction field | f=z⁻²+3+z | pole order −2; regular part 3+z; residue 0 | Pass |
| K3.2 finite pole versus essential | 1/z; exp(1/z) | first has one negative Laurent term; second infinitely many, so not fraction of holomorphic germs | Pass; essential case excluded |
| K3.2 contour coefficient | z⁻² and coefficient of z⁻² | (1/(2πi))∮z·z⁻² dz=1 | Pass; 2πi normalization |
| K3 local Nullstellensatz | ideal (z²) | zero germ {0}; vanishing ideal (z)=√(z²) | Pass; not equality with (z²) |
| K3 finite partition | compact crossing-type curve | two 1-dimensional regular branches and isolated 0-dimensional stratum locally | Mathematical example sound; R01 supplier cycle |
| K3 extension hypotheses | 1/z on punctured line; puncture in ℂ² | first unbounded with codimension 1; second codimension 2 admits Hartogs extension | Pass; excluded/allowed cases distinguished |
| K4 section-sheaf equivalence | trivial rank r at a point | sheaf module ℂʳ and fiber ℂʳ; ranks 0,1,2 agree | Pass; fixed-rank source and component assembly distinguished |
| K4 Chern matrix convention | line metric exp(z bar z) | A=bar z dz; Θ=dbar z∧dz | Pass |
| K4 gauge change | unit metric, g=exp z | transformed A=dz=g⁻¹dg; original A=0 | Pass; missing gauge term would fail |
| K4 Koszul–Malgrange | ∂̄+a dbar z on a line | frame exp(−a bar z) has covariant ∂̄=0; zero frame fails invertibility | Pass |
| K4 holomorphic curvature | complex curve, holomorphic connection | type (2,0) forms=0, hence holomorphic curvature=0 | Pass; not a higher-dimensional flatness claim |
| K4 monodromy sign | d+(1/4)dz/z | horizontal continuation exp(−2πi/4)=−i; inverse convention gives i | Pass |
| K4 dual/tensor connection | scalar connection coefficients a,b | dual coefficient −a; tensor coefficient a+b | Pass |
| K4 variable rank | three points with ranks 0,1,2 | total section dimension 3; a rank≤2 model would not identify the fibers | Pass; component family necessary |
| K4 unbounded rank | discrete ℕ with rank n | each fiber finite; ranks unbounded; no single finite model | Pass; local finite rank retained |
| K4 morphism generality | zero map of trivial lines | valid bundle map of rank 0, not an isomorphism | Pass; categories do not exclude it |
| K5.1 Gram normalization | orthonormal dx,dy | norm²(dx∧dy)=det Id=1; ordered-tuple sum would give 2 | Pass |
| K5.1 native real star | oriented plane | *dx=dy, *dy=−dx; square on degrees 0,1,2 has signs +,−,+ | Pass; R08 use native object |
| K5.1 zero dimension/orientation | oriented point | vol=±1 and *1=±1; square=1 in both orientations | Pass; orientation sign retained |
| K5.1 density transformation | frame scaling −2 in dimension 1 | density factor 2; orientation factor −1 | Pass; no sign in positive density |
| K5.1 complex star | dz=dx+i dy | *dz=−i dz; *dbar z=i dbar z; barStar dz=i dbar z | Pass; R11 keep as Checks |
| K5.1 bilinear/anti-linear pairing | α=i dz, β=dz | α∧barStar β=2i vol=⟨β,α⟩vol | Pass; reversed Hermitian slots essential |
| K5.1 LF tests at a point | scalar line; empty manifold | tests ℂ and dual ℂ; empty tests/dual zero | Pass; indiscrete topology excluded |
| K5.1 distribution cutoff | δ0, χ=1 near 0 | (χδ0)(φ)=φ(0)=δ0(φ) | Pass |
| K5.1 native dual topologies | point scalar space | pointwise, compact and bounded convergence coincide in finite dimension | Pass; general Schwartz/strong identity not inferred |
| K5.1 jets m=0 | multiplication by 3 | J⁰E=E; symbol 3, commutator 0 | Pass; R04 |
| K5.1 commutator symbol | ∂², f=x, ξ=2 | second commutator 2Id; /2!=Id; geometric/Fourier symbols 4/−4 | Pass; R04 |
| K5.1 jet coordinates | x², x=2y | j² coefficients (0,0,1) become (0,0,4); (dx)² becomes 4(dy)² | Pass; R04 |
| K5.1 zero/point jet | point with fiber E; zero fiber | JᵐE=E, symbol of positive order=0; zero fiber jets=0 | Pass; R04 |
| K5.1 noncommuting symbols | e₁₂,e₂₁ | commutator diag(1,−1), still order 0 | Pass; no false universal order drop |
| K5.1 transpose versus adjoint | x∂x; multiplication by i | transpose −x∂x−1; iᵗ=i and i†=−i | Pass; R04 |
| K5.1 connection Laplacian | circle exp(ikx), k=0,1,2 | ∇†∇ eigenvalues 0,1,4; energy k² times norm² | Pass |
| K5.2 continuous primitives | δ0 in ℝ | D²(x₊)=δ0; x₊ continuous | Pass; unavailable source qualification below |
| K5.2 finite distribution order | δ′0 | pairing −φ′(0), bounded by C¹ seminorm; C⁰ alone cannot bound it | Pass |
| K5.2 normal support coefficients | aδ+bδ′ | on φ(0),φ′(0) coefficients a,−b | Pass; normal order and sign distinguished |
| K5.2 coordinate transport | δ′(2x) | scaling gives δ′/4 | Pass; density factor cannot be omitted |
| K5.2 extension obstruction | exp(1/x²) near 0, positive test near ε | pairing grows at least cε exp(c′/ε²), exceeding every ε⁻ᴺ | Pass; no universal distribution extension |
| K5.2 literal series control | terms with pairings 1,2,4 | partial sums 1,3,7, not convergent | Pass; convergence hypotheses matter |
| K5.3 smooth-section Montel | sin(jx) on compact interval | sup function≤1 but sup first derivative=j | Pass; not bounded in smooth topology |
| K5.3 Montel on discrete base | scalar sections on ℕ | smooth topology product; product of closed unit disks compact, coordinate bounds 1 | Pass; no compact-base assumption needed |
| K5.3 point case | scalar sections on one point | closed unit disk compact in ℂ; two real dimensions | Pass; R13 geometric theorem still needs locator |
| K5.4 atlas reconstruction | point, cutoffs 3/5 and 4/5 | sum squares=1; localized norm²=9/25+16/25=1 | Pass; actual atlas data distinguishes carrier |
| K5.4 empty atlas control | nonempty point, section 1 | empty tuple norm 0 versus geometric norm 1 | Correctly excluded in revised README |
| K5.4 complexified real distribution | u=2, φ=3+4i | bilinear evaluation=6+8i; conjugation-fixed real u; κ(iu)=−iu | Pass |
| K5.4 Hermitian convention | u=1+2i,v=3+4i | conj(u)v=11−2i; reversed slots=11+2i | Pass |
| K5.4 Fourier conjugation | mode exp(ix) | κ changes frequency +1 to −1 | Pass; reflection in Fourier adapter |
| K5.4 Fourier bilinear control | f=g=exp(−(x−1)²), angular unitary convention | ∫fg=√(π/2); ∫Ff·Fg=e⁻²√(π/2); reflected pairing restores √(π/2) | Pass; no unreflected bilinear Plancherel |
| K5.4 Fourier transpose | multiplication by frequency x | bilinear distribution transpose after Fourier reflection uses −x | Pass; not Hermitian adjoint |
| K5.4 Bessel complex powers | ζ=1, exponent 2+2i | (1+ζ²)^((2+2i)/2)=2 exp(i log 2), modulus 2 | Pass; positive base excludes branch ambiguity |
| K5.4 coordinate pullback | dilation x↦2x in ℝ | L² norm factor 1/√2; translation by 3 has derivative 1 | Pass; zeroth-order boundedness of chart map not required |
| K5.4 boundary zero extension | constant 1 on (0,1) | zero extension derivative δ0−δ1, not L² | Pass; zero extension needs support control |
| K5.4 frequency normalization | native frequency 1; angular frequency 2π | native weight √2 versus angular √(1+4π²) | Pass; explicit equivalence, not equality |
| K5.4 dyadic weight comparison | radius doubling | order-s homogeneous ratio 2ˢ | Pass; all-real-order scaling |
| K5.4 Sobolev threshold | frequency integral at equality s=k+n/2 | radial tail ∫dr/r diverges; strict s>k+n/2 converges | Pass; strict embedding bound |
| K5.4 Rellich loss | r=s−1, high modes ≥R | squared weaker/stronger weight ratio≤(1+R²)⁻¹→0 | Pass; positive loss necessary |
| K5.4 delta membership | δ0 in ℝⁿ | weighted tail exponent 2s+n−1; integrable iff s<−n/2 | Pass; not at equality |
| K5.4 complex integration | constant top coefficient 2+i on unit box | complex integral=2+i=real part 2 plus i times 1 | Pass; native real-linear integration adapter |
| K5.4 complex de Rham point | singleton | H⁰(ℝ)⊗ℂ=ℂ=H⁰(ℂ); positive degrees=0 | Pass |
| K5.4 planar top exactness | β=dx∧dy | u=bar z/(2i); ∂̄u=1/(2i); d(u dz)=β | Pass; denominator nonzero |
| K5.4 planar periods | dz/z on punctured plane | period 2πi; normalized class 1; exact dz has period 0 | Pass |
| K5.4 slit cocycle sign | two logarithm branches | branch difference −2πi with the specified lower/upper convention | Pass; keep convention explicit |
| K5.4 contractible planar domain | disk | H⁰=ℂ, H¹=H²=0 | Pass; not asserted for punctured plane |
| K5.4 elliptic scale c | ξ=2; c=1 or 1/2 | symbol values 4 or 2 | Pass; positive c retained |
| K5.4 Peetre weight | ζ=η=1; s=1,−1 | √5≤2√2; 1/√5≤√2 | Pass; negative orders included |
| K5.4 commutator estimate | angular Λ²=1−∂², multiplier f | [Λ²,f]w=−f″w−2f′w′; constant mode shows lower-order term | Pass; lower norm cannot be dropped |
| K5.4 regularity gain | circle mode exp(ikx) | Laplace multiplier k²; inverse gains k⁻² for k≠0 | Pass; lower norm handles k=0 |
| K5.4 variational graph | q(v,w)=2conj(v)w | operator 2; shift-1 inverse 1/3; D=2 has energy 4 | Pass; former supplier drift repaired |
| K5.4 Green normalization | circle modes k=0,1,2 | Green multipliers 0,1,1/4; for 2Δ they halve | Pass; zero mode projected away |
| K5.5 codifferential and curl | P=x²y,Q=xy² | δ=−4xy; curl=y²−x² | Pass; keep README formulas |
| K5.5 top codifferential | h=xy | δ(h dxdy) coefficients (x,−y) | Pass |
| K5.5 one-form Laplacian | P=x²y,Q=xy² | dδ+δd coefficients (−2y,−2x), equal componentwise negative Laplacian | Sound mathematics; R09 surrogate |
| K5.5 finite regularity | u=\|x\|³ | −(uxx+uyy)=−6\|x\|; C² holds and C³ fails at 0 | R09 excluded by companion |
| K5.5 squared norm | u=x²+y² | native Laplacian=4; Hodge coefficient=−4 | R11 padding; retain Check |
| K5.5 constant form | a dx+b dy | derivatives 0; δ=0 | R11 padding; retain Check |
| K5.5 energy identity | u=ρ(x)ρ(y), real compact bump; A=∫ρ², B=∫(ρ′)² | ∫uΔHu=2AB=∫\|du\|²≥0 | Pass; no pointwise positivity assertion |
| K5.6 component norm | ranks 0,1,2; section (0,1,(1,i)) | component norm² sum 0+1+2=3 | Pass; no padding fibers |
| K5.6 evaluation duality | two components u=(2,3), φ=(5,7) | pairing 10+21=31; off-diagonal exchange changes local pairing | Pass; locality matters |
| K5.6 spectra | three scalar components, operator 2 | eigenvalue 2 multiplicity 3; zero bundle contributes 0 | Pass; multiplicities add |
| K5.6 empty compact base | no components | Hilbert space 0, spectrum empty, all pairings 0 | Pass |
| K5b.1 Riesz dual | point, β=2+i | Riesz functional v↦(2−i)v; value on β=5 | Pass; antilinearity distinguished |
| K5b.1 Hodge and Serre | point, rank r; ℂP¹,O(−1) | point H⁰=ℂʳ paired with dual; O(−1) has h⁰=h¹=0 | Pass; compact Hermitian sufficient |
| K5b.1 nontrivial Serre pair | ℂP¹,O | h⁰(O)=1=h¹(K); K=O(−2) | Pass; dual bundle/degree required |
| K6.0 curve Kähler condition | complex dimension 1 | dω has real degree 3 on dimension 2, hence 0 | Pass; no compactness needed |
| K6.0 Lefschetz commutator | n=1; 1,dz,ω | [Λ,L] values 1,0,−ω=(n−k) times input | Pass; R12 add local Checks |
| K6.0 primitive definition | n=2, ω₁−ω₂ versus ω | Λ values 0 and 2; n=1 Λdz=0 | Pass; R12 |
| K6.0 real commutators | α=f dx on ℂ | [Λ,d]α=−fy=−(dᶜ)*α; [L,d*]α=−fx vol=dᶜα | Pass; signs agree |
| K6.0 scaled d_c | d_c=dᶜ/(4π) | −(dᶜ)*=−4πd_c*; second commutator=4πd_c | Pass; no hidden 2π factor |
| K6.0 Laplacian equality | f=z bar z | Δd f=−4; Δ∂ f=Δ∂̄ f=−2 | Pass; convention consistent |
| K6.0 Nakano bound | scalar iΘ=aω on (n,k) | [aL,Λ]=ka; a=0,1,−1 gives 0,k,−k | Pass; R12 positivity controls |
| K6.1 ∂∂̄ test | cos x on flat complex torus | ∂∂̄cos x=−cos x dz∧dbar z/4, exact with zero mean | Pass; global periodic potential |
| K6.1 Hodge parity | elliptic torus; Hopf surface | torus b₁=1+1=2; Hopf b₁=1 | Pass; Hopf excludes Kähler |
| K6.1 Hard Lefschetz | ℂP²; k=0 and k=2 | L²1=ω²≠0; L⁰ on H² is identity | Pass; exponent domain not truncated |
| K6.1 Hodge–Riemann | elliptic α=dz, unit area | i∫dz∧dbar z=2>0 | Pass; positivity sign |
| K6.1 Kähler powers/nonemptiness | point; empty manifold | point integral ω⁰=1; empty integral 0 | Passmpty hypothesis necessary where nonvanishing claimed |
| K6.1 relative cone | W=X or W=∅ | cone cohomology 0 or absolute H* respectively; differential squared (0,0) | Pass; R06 duplicated owner |
| K6.1 relative integration | bump top form on ℝ², integral 1 | relative evaluation 1; absolute H² class 0 | Pass; R06 |
| K6.1 zero-dimensional orientation | η=2 on signed point | positive integral/evaluation 2; negative both −2 | Pass; R06 |
| K6.1 transverse analytic cycles | two lines | positive local intersection 1; union degree 2=1+1 | Pass; R01 move later |
| K6.1 singular-stratum dimension | curve node | regular cells real dimension 2; singular point dimension 0, hence no singular 2-cell | Pass; R01 |
| K7.1 projective chart | [2:4] in U₀ | chart ratio 2; inverse [1:2]=[2:4] | Pass; nonzero denominator |
| K7.1 dimension zero | ℂP⁰ | one point; chart ℂ⁰; complex orientation +1 | Pass; no empty-projective model |
| K7.1 OnePoint comparison | 2 and ∞ | points [2:1] and [1:0]; inverse charts return 2 and ∞ | Pass; atlas adapter remains needed |
| K7.1 quotient exclusion | zero vector | no projective point; [0:0] not admitted | Pass; native nonzero-line carrier |
| K7.2 Fubini–Study | ℂP¹ affine chart | 2∫₀∞r/(1+r²)²dr=1; O(1) curvature −2πiω | Pass |
| K7.2 projective cohomology | ℂP² | H degrees 0,2,4 each ℤ; u³=0; ∫u²=1 | Pass; cellular and product inputs distinct |
| K7.2 torus Hodge numbers | n=1,2 | n=1 h10=h01=1; n=2 h11=2·2=4 | Pass; full real lattice required |
| K7.2 Hopf topology | dilation factor 2 | radial log quotient S¹; sphere S³; Betti sequence (1,1,0,1,1) | Pass; not Kähler since H²=0 |
| K7.2 Hopf diamond | four nonzero entries (00),(01),(21),(22) | diagonal sums (1,1,0,1,1); h10=0≠h01=1 | Pass; Betti sum does not imply symmetry |
| K8.1 Frölicher first differential | Iwasawa φ₃ | d₁[φ₃]=−[φ₁∧φ₂]≠0, bidegree (1,0)→(2,0) | Pass; no E₁ degeneration |
| K8.1 Iwasawa discrepancy | invariant/global comparison | h10+h01=3+2=5, b₁=4 | Pass; must use comparison before calculating globally |
| K8.1 CE zero algebra | L=0, arbitrary V | C⁰=V, Cᵏ=0 for k>0; d=0 | Pass; R07 |
| K8.1 CE nonabelian sign | [X,Y]=Z, trivial coefficients | dZ*(X,Y)=−1; dX*=dY*=0; d²Z*=0 | Pass; R07 |
| K8.1 CE coefficient action | ℝ acting on ℝ by multiplication | (dv)(1)=v, hence (d1)(1)=1 | Pass; cannot discard action terms |
| K8.1 CE source normalization | source degree-one δ | δZ*(X,Y)=−1/2 after bracket convention; 2δ=−1=dZ* | Pass; source factor documented |
| K8.1 scalar extension | real Heisenberg complex | complexifying −X*∧Y* gives −φ₁∧φ₂; mixed bracket in g⊕bar g is 0 | Pass; distinct complex adapter can remain |
| K8.2 rational central reduction | real Heisenberg with integer lattice | center ℝ/ℤ=S¹; quotient ℝ²/ℤ²=T² | Pass; rational central choice necessary |
| K8.2 complex central reduction | complex Heisenberg, Gaussian lattice | center complex dimension 1, real lattice rank 2; base complex dimension 2 | Pass; dimensions decrease |
| K8.2 abelian termination | trivial group or complex torus | trivial H⁰=ℂ only; torus central quotient is a point | Pass; termination boundary |
| K8.2 spectral-sequence transgression | Heisenberg S¹ bundle over T² | E₂ total dimensions (1,3,3,1); one nonzero d₂ leaves Betti (1,2,2,1) | Pass; not automatic E₂ degeneration |


The table retains 143 computed rows covering the seeded topics, headlines and findings; supplementary per-target rows are omitted. 

### Seeded source sample and legal texts

All 15 seeded topics were read. No locator was explicitly flagged unverified. Texts were fetched through the sources service; none was copied into the repository. Source support and its limits follow.

| Seeded target | Text and locator opened | Support and limits |
|---|---|---|
| 1.1 atlas/orientation/type calculus | demailly line 875, I §3 (3.1), p.20; pinned complex analytic/implicit-function declarations below | Wirtinger/complex-linearity convention supported. The Webster iteration route remains uncertified; a whole chapter reference does not certify every Nijenhuis/local-homotopy assertion. |
| 3.0 realification | TauCeti CauchyIntegralPolydisc:254–348 and analytic inverse:129; demailly line 875 | Finite-dimensional holomorphic functions have the stated analytic comparison. The chart transition and scalar-restriction adapter is a target, not an already present arbitrary-manifold theorem. |
| 3.1 holomorphic stalks | demailly lines 3830–3894, II §2, division and Theorem 2.7, pp.80–81; lines 3931–3950, Theorem 2.10, pp.82–83 | Noetherianity and factoriality are genuinely local analytic-ring statements; finite distinguished order belongs to preparation/division. The point ring ℂ is included. |
| 3.2 meromorphic germ fields | native MeromorphicAt/order factorization:97; demailly II §2 local analytic domain above | Fraction field construction and finite-pole comparison in dimension one are consistent. The README's Taylor/Cauchy inputs support the route, but no single precise source locator was supplied for the entire stalk-field/parameter adapter. |
| 4.1 section sheaves/connections | demailly lines 3970–4054, II §3.1–3.3, pp.83–85; native complex bundle contract | Fixed finite-rank holomorphic bundle/locally free sheaf correspondence is supported. Componentwise varying rank is explicitly additional work; the entire Chern/Koszul–Malgrange/flat package is not certified by these pages alone. |
| 5.1 real/complex analysis | demailly lines 14386–14509, VI §3.9 and Example 3.12, pp.292–293; pinned distributions/exterior powers | Formal-adjoint and negative-coordinate-Laplacian signs supported. Native LF-test, compact-dual and pointwise-Schwartz topologies differ. Bundle/density construction is additional work; see R08 for native star reuse. |
| 5.2 distribution local structure | Hörmander I, Thm 2.3.5, 2003 edition: service uncertified | No claim of text verification. Supported-submanifold locator is specific; continuous-primitive and extension-obstruction results need their own precise locators. Their examples were computed, not inferred from an unread theorem. |
| 5.3 smooth-section Montel | Mathlib Montel:45, 103, 123, 127 | Native class and generic comparison verified. They do not supply the smooth-section instance; its derivative/exhaustion proof has no exact source locator here (R13). |
| 5.4 Sobolev/elliptic realization | KMS lines 5318–5357, §§12.2–12.5, pp.117–119; lines 5638–5687, §§12.16–12.17, pp.124–125; native Bessel and VM | Jet/truncation source supports that subconstruction, not the entire all-real-order geometric elliptic theory. The scalar PDE and abstract variational inputs were separated from manifold/system targets. Wells is uncertified. |
| 5.5 planar Hodge | demailly lines 14418–14509, VI Example 3.12, p.293 | Negative sum of second derivatives agrees. C¹/C²-on-open-set adapters are stronger explicit regularity formulations, not the companion's global C∞ substitutes (R09). |
| 5.6 compact components | finite-component construction in README; demailly lines 15369–15410 for its analytic inputs | Compact locally connected manifold has finitely many components; pointwise finite ranks need no global model. Source Hodge theorems use fixed rank; finite products yield the announced extension. |
| 5.8 compact Dolbeault Hodge | demailly lines 15369–15410, VI §7, Thms 7.1–7.3, pp.309–310 | Compact Hermitian, not Kähler; fixed-rank holomorphic Hermitian E. The dual is E*, bidegrees complementary; two proof misprints are recorded below. |
| 6.0 Kähler/curvature identities | Demailly VI chapter context and the explicit local computations above | The target supplies no exact locator for its full list; it cannot be marked locator-certified. The computations confirm its signs and the scalar ka bound, not the complete vector-valued proof. |
| 7.1 projective charts/orientation | ComplexManifolds M3 and AT §4.6; demailly lines 14688–14696, VI (4.4), p.297; lines 13780–13845, V (15.8), (15.10), (15.12), pp.279–281 | Source supports projective normalization/cohomology used by K7.2. It is not an exact source for every K7.1 chart/orientation adapter, still requiring claim-level locators. |
| 8.1 filtered/invariant comparison | chevalley-eilenberg lines 1167–1183, §23 (23.1)–(23.2), p.115, proof lines 1227–1232, p.116; sakane lines 102–115 and 252–305, §2 Thm 1, p.189 and proof pp.194–195; angella lines 480–535, §3.1 pp.9–10, lines 693–724, §§4.1–4.2 p.13 | CE uses the recorded opposite-bracket/degree-factor convention; the finite-sum proof needs no dimension bound on coefficient V. Sakane's nilpotent, simply connected group with lattice hypotheses are retained. Angella gives the chosen forms and h10=3,h01=2. General Frölicher convergence is supplied separately, with the R03 ordering defect. |

Additional checks: lojasiewicz lines 491–515, Theorems 1–2, printed pp.463–464, supports locally finite compatible triangulation; compactness gives the later finite consequence. Its prior access limitation is resolved. Rainer lines 1338–1344 and 1550–1554, Theorems 11.1/11.7, pp.25/29, supplies scalar/rational Runge, not literally the finite-rank operator theorem; that is the stated cutoff/quadrature consequence.

### Pinned object audit

Mathlib pin 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti pin a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The 24 entries below record declarations opened at these pins or the explicitly identified supplier head.

| File:line | Declaration/object and what it supplies |
|---|---|
| `Mathlib/Geometry/Manifold/ChartedSpace.lean:141` | ChartedSpace supplies charts/atlas, not T2 or second countability. |
| `Mathlib/Geometry/Manifold/Sheaf/Smooth.lean:287,297` | smoothPresheafCommRing and smoothSheafCommRing, over the specified scalar/model fields. |
| `Mathlib/Geometry/Manifold/Sheaf/LocallyRingedSpace.lean:59` | smoothSheafCommRing.isUnit_stalk_iff: unit iff point evaluation nonzero. |
| `TauCeti/Analysis/Complex/CauchyIntegralPolydisc.lean:254,275,282,331,348` | Finite-dimensional complex analytic comparisons and joint parameter contour analyticity. |
| `Mathlib/Analysis/Calculus/ImplicitContDiff.lean:41` | ImplicitFunctionData.contDiffAt_implicitFunction: joint uncurry conclusion, complete spaces and nonzero differentiability order. |
| `TauCeti/Analysis/Analytic/Inverse.lean:129` | ImplicitFunctionData.analyticAt_implicitFunction, joint analytic local inverse. |
| `TauCeti/Geometry/Manifold/Complex/Chart.lean:77` | analyticAt_symm_trans for complex curves. |
| `Mathlib/Analysis/Meromorphic/Order.lean:97` | meromorphicOrderAt_eq_int_iff: punctured factorization with analytic nonzero factor, under MeromorphicAt. |
| `Mathlib/Analysis/Distribution/Distribution.lean:165` | Distribution uses native real tests and compact-convergence continuous maps. |
| `Mathlib/Analysis/Distribution/TemperedDistribution.lean:53` | Tempered distributions use Schwartz tests and the pointwise dual topology. |
| `Mathlib/Analysis/Distribution/TestFunction.lean:333` | LF continuity tested on each fixed compact. |
| `Mathlib/Analysis/LocallyConvex/Montel.lean:45` | MontelSpace gives compactness of closed von Neumann bounded sets. |
| `Mathlib/Analysis/LocallyConvex/Montel.lean:103,123,127` | ContinuousLinearEquiv.toCompactConvergenceCLM and application laws, with Hausdorff/module hypotheses. |
| `Mathlib/Analysis/FunctionalSpaces/BesselPotentialSpace.lean:77,250,299,305` | memSobolev_toDistr, toLpₗᵢ, toBesselPotentialSpace and inverse: Euclidean all-real-order Bessel spaces, not geometric bundle Sobolev spaces. |
| `Mathlib/Analysis/InnerProductSpace/Laplacian.lean:138` | Laplacian instance is the trace of the second derivative, hence +4 on x²+y². |
| `Mathlib/LinearAlgebra/ExteriorPower/HodgeStar.lean:48,53` | exteriorPower.hodgeStar and exteriorPower_hodgeStar_eq_wedgePairing: native algebraic object, R08. |
| `Mathlib/LinearAlgebra/ExteriorPower/WedgePairing.lean:34,41` | wedge and wedgePairing evaluate vol(x∧y); fixes the native star convention. |
| `Mathlib/Algebra/Lie/Cochain.lean:101,123` | d₁₂ and d₂₃: low-degree cochains only; d₂₃ lands in all trilinear maps. The real all-degree owner is LGP. |
| `Mathlib/Geometry/Manifold/Complex.lean:154,169` | MDifferentiable.isLocallyConstant; exists_eq_const_of_compactSpace additionally requires PreconnectedSpace. |
| `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean:101` | isLocallyFiniteMeasure_riemannianVolume, with the surrounding finite-dimensional/metric/Borel/Lindelöf setup. |
| `TauCeti/Geometry/Hodge/Structure.lean:62` | HodgeStructureOn: existing linear carrier, not analytic Hodge decomposition. |
| `TauCetiRoadmap/VariationalMethods/Suggested.lean:185` | CompactFormPair.operatorDomainV at the permitted open head. |
| `TauCetiRoadmap/VariationalMethods/Suggested.lean:206` | exists_compact_selfAdjoint_shifted_inverse at that same head. |
| `TauCetiRoadmap/VariationalMethods/Suggested.lean:219` | mem_operatorDomainV_iff_summable at that same head. |

The last three entries are open-head supplier declarations, not pinned-library declarations. No identical fully qualified name for the five Suggested declarations was found in permitted sibling files. R05/R07 concern duplication by object.

### Resolved roadmap ownership and order

Ownership search used the roadmap service, main, the supplied sibling heads and board package index, by mathematical object. Shape examples read: ComplexTori and Completed/OrthogonalL2Bases.

| Owner and exact place resolved | Consumed object / finding |
|---|---|
| `TauCetiRoadmap/ComplexManifolds/README.md:172–211, 221–249, 267–307, 319–334` (main) | M1–2 real restriction/orientation, M3 OnePoint, M4 quotient, M5–6 gluing/topology, M7 native complex ContMDiffVectorBundle. Its “mixin” is native structure, not a new carrier. |
| `TauCetiRoadmap/ComplexTori/README.md:130–147` (main) | M1 full real lattice and holomorphic torus quotient; CKG owns its geometric Hodge calculation. |
| `TauCetiRoadmap/DifferentialGeometry/README.md:836–860, 872–875, 915–917` (main) | §8.3 smooth chains, §8.4 integration/Stokes, §8.5 absolute multiplicative de Rham, §9.3 duality, §12.1 metrics. These are not the relative contract in R06. Generic form/rough-form ownership is retained. |
| `TauCetiRoadmap/SmoothBundlesConnections/README.md:563–625, 776–799` (main) | B2 complexification, metrics and geometric RCLike L² with explicit measure; B2.4 density and Lp comparisons. The reference at 576 says CKG applies its dual-complexification theorem; it is a consumer mention, not reverse supply. |
| `TauCetiRoadmap/SmoothBundlesConnections/README.md:871,936,979,1209,1375,1668,1716` (main) | B3/B4 connections, B5 transport, B6 projective circle-bundle and Chern–Weil interfaces; the CKG curvature normalization agrees on O(1). |
| `TauCetiRoadmap/PDE/README.md:227–240` (main) | Lane A weak derivatives/integer Sobolev/scalar estimates; not bundle systems or the full all-real-order geometric realization. |
| `TauCetiRoadmap/VariationalMethods/README.md:839–865, 884–892, 1054–1067` (supplied open head) | Compact-form represented-operator graph, shifted inverse and eigenbasis domain. The repaired operatorDomainV contract exists; there is no second generic “operator” to invent. |
| `TauCetiRoadmap/AlgebraicTopology/README.md:789–834, 1180 onward, 1591–1600` (main) | §4.6 generic projective topology/real atlas, §4.7 simplicial realization/CW, §6.3 orientation classes; Stage 7's returning projective dependency gives R02. |
| `TauCetiRoadmap/GeometricTopology/README.md:831–863` (main) | Layer 11 realization, stars/links and finite-complex topology consumed by the cycle construction. |
| `TauCetiRoadmap/DGFloer/README.md:612–650,159` (main) | Generic filtered-complex/reindexing/convergence construction exists, but its geometric reverse dependency gives R03. |
| `Completed/RealAlgebraicGeometry/README.md:479,497–505,519–542` | L7 analytic carrier/inversion/local complexification; does not replace the complex-manifold chart adapter. |
| `Completed/HodgeStructures/README.md:21–33` | Linear Hodge objects only; geometric decomposition belongs here and needs no new HodgeStructure carrier. |
| `Completed/HopfRinow/README.md:23–43` | Layer 1 Levi–Civita and smooth regularity; not a demand that CKG reconstruct metric connections. |
| `Completed/ContourIntegration/README.md:5–8,24–35` | L2 residue and argument principle, used for preparation; the contour convention is 2πi-normalized. |
| `TauCetiRoadmap/RealAnalyticGeometry/README.md:22,1007–1030` (main) | R1/R5 local finiteness/triangulation and the returning CKG inputs: R01. Its coherent-module predicate remains owned by R3.2 item0; CKG's primitive local algebra differs from it. |
| `TauCetiRoadmap/GlobalHolomorphicFunctions/README.md:381–409,953–965` (supplied head) | Existing compact-support transform and uniform finite-rank Runge operator: R05. |
| `TauCetiRoadmap/PseudodifferentialOperators/README.md:377–414` (supplied head) | Existing bounded-order differential/jet/transpose core and its density prerequisite: R04. |
| `TauCetiRoadmap/DeRhamCohomologyAndDuality/README.md:357–375,404–435` (supplied head) | DR.3.8 and DR.4.4 exactly match the relative construction: R06. Place its CKG consumer later, not an upward supplier edge here. |
| `TauCetiRoadmap/LieGroupoidsPoisson/README.md:651–662` (supplied head) | Standalone real all-degree coefficient complex, not just Lie algebroids: R07. |

There are 19 resolved owner entries in this table. No new supplier gap is declared by the package. Duplicate ownership must not be repaired by an upward edge.

Every Needs line was read along with the prose supplier citations. The required mechanical command, with this README/name, the supplied merge order, movable placement and main content, returned:

```text
depcheck: 204 roadmaps, 1492 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This is a false negative for the three concrete reverse edges documented in R01–R03; it is not evidence that an interleaving of subtargets satisfies the whole-roadmap contract. The worker's gate was also all-zero/OK, including source-material, outside-folder and build. The companion import/doc/padding defects were found by reading both Lean files as the brief requires, beyond what that gate checked.

## Not verifiable

- `gh`: Griffiths–Harris, Principles of Algebraic Geometry (1978), chapter 0. The sources service reached the Wiley DOI landing page (HTTP 403); the IAS author publication record supplies bibliography, not readable book text. Exact passage verification is unavailable. The outstanding reference record uses the existing key gh. No content was guessed.
- `webster`: the 1989 Newlander–Nirenberg paper, pp.303–316. The service classified it uncertified/paywalled. The named convex-domain homotopy/iteration route was not text-certified; it is not a new request for a settled paywalled text.
- `hormander`: Analysis of Linear Partial Differential Operators I, 2003 reprint, Theorem 2.3.5. The service classified it uncertified. The supported-submanifold theorem's printed text was not available; the separate continuous-primitive and nonextension examples were independently computed.
- `raghunathan`: Discrete Subgroups of Lie Groups, p.23 Theorem 1.13 and p.31 Corollary 1, uncertified. Sakane's open proof and its explicit use of those lattice inputs were read, but that does not certify Raghunathan's original wording or hypotheses.
- `wells`: Differential Analysis on Complex Manifolds, publisher DOI 10.1007/978-0-387-73892-5, uncertified. The README's edition-free general reference cannot certify a specific theorem/page. Demailly supplies the separately verified compact Hermitian results above.
- PlanarTopology, SurfaceTopology and UnboundedOperators are not present at the cited locations in the supplied main tree, and no permitted sibling checkout for them is supplied in this brief. Their promised surface/orientation and UO-D06 contracts are therefore not certified here. This is not a finding that they do not exist in open work. The search service can locate additional open work, but unprovided open heads were not used as ownership evidence in this review.
- Legal text access does not fill the missing item-level locators for §5.3, the full §5.4 estimates, §6.0 and §7.1. The precise limits of the seeded certification are in the source table. No mathematical assertion has been declared sound solely because an unavailable source was named.

Only unresolved gh remains in the missing-reference record; resolved and settled uncertified texts are not requested again. No manifest was edited.

## Source issues

- **Misprint** in demailly at VI §7, proof of Theorem 7.3, printed p.310 (demailly line 15397): the source says the second form has coefficients in E; it should be E* for the evaluation-wedge pairing; affects the proof.
- **Misprint** in demailly at VI §7, proof of Theorem 7.3, printed p.310 (demailly line 15405): the source says the second dual-star identity ends with the dual-star of D''*s; it should be the dual-star of D''s, as the bidegrees require; affects the proof.

Demailly p.310 was checked visually; Angella p.13's apparent star issue was not an error (the intervening group is ∂ cohomology).
