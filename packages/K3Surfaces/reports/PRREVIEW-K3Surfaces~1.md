# Review of K3Surfaces (pull request #1285 at 43784f8)
**Verdict:** needs changes

## R01 (P1) — Break the K3–Enriques supply cycle by moving K7.C

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:130`, also line 144: “K7.C alone consumes the earlier Enriques E1 Num comparison”.

**Claim:** A layer interleaving is offered as an acyclic dependency between roadmaps. The required unit of supply is the roadmap, however: K3Surfaces consumes EnriquesSurfaces, which consumes K3Surfaces. Neither whole roadmap can precede the other.

**Witness:** `TauCetiRoadmap/EnriquesSurfaces/README.md:42` consumes K3 K0.A; lines 68 and 86 consume K3 cohomology; line 96 produces the numerical isometry consumed here. The two roadmap vertices have arrows in both directions.

**Repair:** Move the canonical-cover adapter, primitive pullback identification and automorphism lift/descent of K7.C to EnriquesSurfaces after E1, consuming K3 K7.A–B there. Keep the independent lattice model and realization in K3Surfaces. Update the supplier table and phase order accordingly. On the witnessed graph this leaves only K3Surfaces → EnriquesSurfaces, so it admits a merge order. A detailed acyclic interleaving of layers does not repair the roadmap-level cycle. The dependency tool's clean output below misses this explicit prose edge; it is not evidence against the witness.

## R02 (P2) — Replace coordinate substitutes with headline acceptance statements

**Location:** `TauCetiRoadmap/K3Surfaces/Suggested.lean:5` and `TauCetiRoadmap/K3Surfaces/README.md:138`: “Suggested illustrates only a finite-coordinate period and cover-lattice prefix.”

**Claim:** The file contains none of the geometric headline results and does not identify which of them cannot yet be stated. Its ten conclusions are coordinate algebra or a rank-zero boundary case. In particular, an arbitrary matrix in the cover formulas is never required to be the E₈ form, and no theorem states the integral gluing extension criterion of K7.A.

**Witness:** With `B=0`, every cover theorem still holds although the purported rank-eight summand is totally degenerate. Native integral lattices and their isometries exist at `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63` and `Isometry/Basic.lean:74`; graph overlattices exist at `Overlattice/Isotropic.lean:379`.

**Repair:** Inventory the actual headlines listed below. State the statable integral extension/graph-preservation result on native lattice carriers, with the real graph and its discriminant compatibility, rather than the coordinate identities. Name each remaining unavailable geometric headline and its missing carrier in the module docstring. Keep only simple definitions required by retained headlines. The repaired acceptance condition must distinguish the real nondegenerate integral lattice from the zero-form witness; the current ten identities cannot do that. Do not add a free predicate asserting Torelli or a geometric comparison.

## R03 (P2) — State the free and nodal period loci as explicit sets

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:128`: “the exact excluded root arrangement and the marked quotient maps”.

**Claim:** This names a desired result without stating its set, quantifiers, marking group or equivalence. The following nodal-divisor sentence mentions square −4 and divisibility two, but the free-pair period locus has no defining equation. An implementer must supply the central statement.

**Witness:** In `T=U⊕U(2)⊕E₈(−2)`, `e−f` in U has square −2 and divisibility 1; `e′−f′` in U(2) has square −4 and divisibility 2. These yield different hyperplane arrangements and different geometric exclusions.

**Repair:** Define `H_δ={ [z]∈Ω_T : (z,δ)=0 }`, state the free locus using all integral square−2 vectors of T, and state the nodal locus inside that complement using primitive square−4/divisibility-two vectors. Specify the chosen component, the permitted marking changes and the quotient group, with the actual realization equivalence and curve-lifting hypotheses. Include the two vectors above as distinct negative controls: the first is excluded from free periods; the second is the nodal condition within the free locus. Supply a source locator for each assertion, including the converse geometric realization.

## R04 (P3) — Supply statement-level sources, especially for the seeded sample

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:118–134` and references at lines 146–150. K7.A, K7.B and K7.C have no theorem/page locator for their surface-specific statements.

**Claim:** The bibliography and a general instruction to use the correct edition do not provide the required checkable locators. Most K0–K6 claims likewise lack locators. No `sources.toml` is present.

**Witness:** `huybrechts-k3` line 10894 supports the deck lattice model; `artebani-sarti-taki` line 497 states the exceptional fixed-locus classification. Neither locator appears at the K7 claims; the downloaded book is explicitly a draft at line 11.

**Repair:** Add exact edition, section/theorem and printed-page locators at the claims, and record the works once each in the source manifest. For the text actually read, use Huybrechts draft §14.0.3(vii), p.284 for the deck model, and Artebani–Sarti–Taki v2, Theorem 3.1, p.10 for the fixed locus; identify Nikulin's primary theorem cited there. Supply separate sources for gluing, the free/nodal period arrangements and canonical-cover descent. The repaired K7.B locator must explicitly include `(10,10,0)`, rather than applying the ordinary genus formula to it. Do not label draft page numbers as verified final-book page numbers.

## R05 (P3) — Delete all ten padding theorems from Suggested.lean

**Location:** `TauCetiRoadmap/K3Surfaces/Suggested.lean:38–56,89–119`.

**Claim:** These are the basic API for coordinate definitions, including a rank-zero case, rather than headline acceptance theorems. Seven close with one `simp` invocation on a scratch copy. The other three remain API identities after the probe; failure of a particular tactic does not turn them into headlines.

**Witness:** `invariantEmbedding_fixed` closes with `simp [coverInvolution, invariantEmbedding]`; `periodDomain_zero_rank` closes with `simp [periodDomain, positiveIsotropic]`. The full probe results are recorded below.

**Repair:** Delete them from `Suggested.lean`; retain useful statements as README API or Checks. Delete definitions that then support no genuine headline. For any retained headline, use `Matrix.toBilin'` rather than rebuilding matrix bilinear evaluation (`Mathlib/LinearAlgebra/Matrix/BilinearForm.lean:100`). The explicit evaluations 6=6 and 50=50 below remain README checks, not replacement acceptance theorems.

## R06 (P3) — Remove the fifteen commit-pinned roadmap links

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:23,27,130`.

**Claim:** The worker's `blob` gate reports 15 forbidden links to roadmap files at individual commits. Such links also conceal whether a cited scope is present on main or only in a revision proposal.

**Witness:** The B1.5 link at line 23 and thirteen supplier links on line 27 are pinned to commit snapshots; the Enriques E1 link at line 130 is the fifteenth. Gate result: `blob=15`.

**Repair:** Replace these with repository paths on main, or roadmap names and exact sections for permitted new-roadmap suppliers. Resolve the cited scope afresh. After moving K7.C under R01, remove its reverse supplier link altogether. The repaired text must have zero commit-pinned roadmap links.

## R07 (P3) — Use the required import header

**Location:** `TauCetiRoadmap/K3Surfaces/Suggested.lean:1–3`.

**Claim:** All three imports are Mathlib submodule imports and there is no `import Mathlib`. This accounts for every import-related gate failure: `imports=1`, `mathlib-subimports=3`, `no-import-mathlib=1`.

**Witness:** The file begins with `import Mathlib.Basic.Complex.Basic`, followed by Matrix and Projectivization submodule imports. The original file elaborates, but fails the specified form rule.

**Repair:** Replace the three lines with `import Mathlib`; append only individual pinned Tau Ceti modules actually needed by the repaired headlines. Re-elaborate under default options. No `set_option` is needed or permitted.

## R08 (P3) — Give definitions discriminating Checks and explicit dependencies

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:136–144`; `Suggested.lean:15–119`.

**Claim:** One generic API paragraph and one list of suggested examples do not give each definition its API and three computed Checks. There are no per-target `*Needs:*` lines, no layer-ending Examples/Dependencies sections, no Scope and ownership section, and no required Summary/Layer structure. None of the 24 Lean declaration names is mapped by name in the README; none has a declaration docstring.

**Witness:** The surface, marked-family and period-domain definitions have no attached three-test lists. At `n=0`, the Lean domain is empty; at `B=I₂`, `[1:i]` is a period; at `B=−I₂`, it is not. The README computes none of these.

**Repair:** Reorganize the existing mathematics into the requested roadmap shape without dropping scope. Add local API lists, at least three discriminating computations per retained definition, explicit supplier sections and per-target dependencies, and declaration docstrings/name correspondence for the repaired Lean file. For geometric definitions prefer actual quartic, double-sextic and nonprojective examples; for the period predicate include the three calculations above and the nonzero rescaling calculation below. State conventions locally, including positive polarization and finite-dimensional Hausdorff analytic charts. A generic instruction to test these later is not a Check.

## Verified sound

This is an independent AI review. No pull-request file was changed. HEAD was verified as `43784f823cd55178e1a6ed56335f79d5d97cdb70`; the diff outside `TauCetiRoadmap/K3Surfaces` is empty. The folder contains README, Suggested.lean and metadata only. No sorry-defined data, `set_option`, admitted examples, copied source passage, executable computational programme or conflicting fully qualified declaration name was found in the reviewed files. This is a new K3 roadmap; the later K3SurfacesAndSymplecticBoundedness explicitly identifies itself as Part II, so this review does not reject the roadmap as a re-plan.

**Gate and elaboration.** The worker's gate is FAIL, solely on `blob=15`, `imports=1`, `mathlib-subimports=3`, `no-import-mathlib=1`; all other recorded counters, including build, are zero. R06–R07 cover all those failures. Independently ran `lake env lean` on the original Suggested.lean: exit 0, exactly ten `sorry` warnings. A second scratch elaboration containing `#check @name` for all 24 declarations also exited 0. All parameters in the supplied signatures were retained, including `c≠0` in scaling and `[CommRing R]` in the cover formulas. There is no dropped section hypothesis. The arbitrary matrix/ring signatures are broader than a geometric K3 lattice, but their algebraic identities are true on that broader domain; R02 concerns their use as the acceptance test, not a false ring identity.

**Dependency check.** The required command, with the supplied order, movable placement and main content, returned exit 0 and exactly:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

It emitted neither UPWARD nor CYCLE. The citation resolver also reported no unresolved roadmap citations. Manual reading nevertheless finds the cycle R01: no `*Needs:*` lines encode the Enriques reverse edge, and the prose phase interleaving is explicit. No absence from the merge-order list is treated as a finding. No supplier gaps are declared.

**Source sample (3 targets), plus the two numbered K0 references.** All four README works were fetched legally through the sources service; no source manifest was edited. One further legal primary-research text was read for the K7.B classification.

| Target | Text actually read and locator | What it establishes; limits |
| --- | --- | --- |
| K7.A integral involution | `huybrechts-k3` lines 10894–10904; author-hosted K3Global draft, §14.0.3(vii), printed p.284 | Deck action is swap on two E₈ blocks and two U blocks, negative on the remaining U; invariant lattice is E₈(−2)⊕U(2). The anti-invariant and discriminant numbers below follow directly. The paragraph is not a theorem stating every extension/composition equation. |
| K7.B free involution | `huybrechts-k3` lines 12702–12706, §15.4.3(ii), p.330; `artebani-sarti-taki` lines 497–508, arXiv:0903.3481v2, Theorem 3.1, printed p.10 | A free involution gives an Enriques quotient; the non-symplectic fixed-locus classification explicitly has the empty `(10,10,0)` case and the distinct two-elliptic-curves `(10,8,0)` case. This verifies the exceptional case, not the unstated full arrangement/marked-quotient theorem. |
| K7.C cover and descent | `huybrechts-k3` lines 10894–10904 and 12702–12706; EnriquesSurfaces E1c/E1e at lines 64–96 | The numerical lattice and cover model are supported. The displayed centralizer quotient also passes the two-lift calculation below. No exact literature locator for its full functorial descent statement is supplied by this README. |
| K0.A | `martin` lines 126–144, arXiv:2004.07227v3, Theorem D pp.3–4 and Corollary 1.1 p.4 | The theorem assumes an elliptic surface without multiple fibres and a nonzero vector field; it lists precisely the small-characteristic exceptional alternatives. The corollary is the K3 vanishing. Its proof-route inputs are not consequences of the elliptic theorem alone. |
| K0.A boundary reference | `gounelas-liedtke` lines 253–268, arXiv:2608.17953v1, Proposition 2.2(2), p.6 | One-form vanishing holds in every positive characteristic. This is stronger than the base roadmap's p>2 lane; the all-characteristic extension is expressly owned by the later Part II, rather than inferred from the analytic argument. |
| K5–K6 route | `huybrechts-torelli` lines 12–18, 32–46, 64–75; arXiv:1106.5573v1, pp.1–2 | The text distinguishes K3 Torelli from higher-dimensional counterexamples. Its printed pullback-direction slip is recorded under Source issues; the README uses the correct direction. The README correctly retains the Kähler-cone condition for lifting a specified Hodge isometry. This survey does not itself certify each new analytic estimate in the roadmap. |

The book download labels itself a prepublication draft at `huybrechts-k3` lines 11–18. Its contents at lines 45–59 put periods in Chapter 6 and surjectivity/global Torelli in Chapter 7; this is consistent with the README's Chapter-7 description but does not certify final-edition pagination.

**Headlines identified.** K0/K0.A: contraction, coherent invariants and characteristic-p>2 differential/vector-field vanishing; K1: Kählerness, Hodge numbers, integral (1,1) and projectivity/algebraization; K2: Ricci-flat existence/uniqueness, simple connectivity and the integral K3 lattice; K3: actual locally universal 20-dimensional and polarized 19-dimensional deformations; K4: local Torelli; K5: Pic=0 cone and twistor realization/continuation; K6: global period surjectivity, strong Torelli, monodromy, full cone and polarized period image; K7: invariant/anti-invariant integral gluing, free-involution realization/period locus, canonical-cover pullback and automorphism descent. None is stated as such in Suggested.lean. Analytic families, their period maps and geometric cone comparisons need unavailable constructions; they must be named as unavailable, not represented by arbitrary matrices. Native lattice/gluing carriers already exist, as documented below.

**Pinned objects opened (10 principal declaration sites).** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| Declaration/site | File and line at the pin | Consequence |
| --- | --- | --- |
| `Projectivization`, `Projectivization.mk`, `mk_eq_mk_iff'` | `Mathlib/LinearAlgebra/Projectivization/Basic.lean:48,60,116` | Quotient of nonzero vectors by scaling; supplies neither a K3 nor a period map. Rank zero has no projective points. |
| `Matrix.toBilin'`, `Matrix.toBilin'_apply` | `Mathlib/LinearAlgebra/Matrix/BilinearForm.lean:93,100` | Native bilinear matrix evaluation is exactly the double sum, up to commuting factors; symmetry/nondegeneracy are not automatic. |
| `TauCeti.IntegralLattice` | `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63` | Full finite ℤ-lattice, symmetric rational form and integral values. Nondegeneracy is separately required by `IsNondegenerate` at line 143. |
| `IntegralLattice.Isometry` | `TauCeti/LinearAlgebra/IntegralLattice/Isometry/Basic.lean:74` | Ambient rational form isometry with equality of the mapped integral carriers; a rational isometry alone is insufficient. |
| `IntegralLattice.ofIsotropicSubgroup` | `TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Isotropic.lean:379` | Actual even graph-overlattice carrier via an isotropic discriminant subgroup, with carrier equation at line 386. |
| `IntegralLattice.hyperbolicPlane` | `TauCeti/LinearAlgebra/IntegralLattice/Examples.lean:83` | The U matrix is `(0,1;1,0)`, consistent with the coordinate pairing here. |
| `Scheme.relativeDifferentials` | `TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85` | Actual sheafification of relative differentials on a scheme over a specified base, not a scalar substitute. |
| `SheafOfModules.exteriorPower` | `TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49` | Native exterior-power functor for the canonical sheaf construction. |
| `Scheme.Modules.cohomologyBaseModule` | `TauCeti/AlgebraicGeometry/Cohomology/Module/Base.lean:45` | Cohomology retains the chosen base-ring action; not a K3 vanishing theorem. |
| `SmoothOfRelativeDimension` | `Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:127` | Relative dimension is a genuine morphism condition; merely choosing a surface name supplies none of it. |

**Ownership and supplier resolution.** Used `roadmaps grep`, `roadmaps show` and `roadmaps resolve`, plus object searches in both pinned libraries, main, the board packages and the supplied sibling checkouts. Read the main IntegralLattices, ComplexKahlerGeometry and DifferentialGeometry roadmaps for shape and relevant contracts. Existing-roadmap revision heads were not substituted for main as suppliers.

| Citation/object | Resolved ownership and scope |
| --- | --- |
| SchemeAndStackFoundations | Main §§0.3,1.17,1.23,2.6,2.20,4.9,4.11,5.9–5.10 exist. Surface intersection/Num remains there (lines 7129 and 7175). Main §4.10, lines 5487–5526, only algebraizes coherent modules and compatible morphisms on given proper schemes; it explicitly excludes algebraization of a polarized adic system. No blanket polarized-effectivity conclusion should be inferred from the Layer-4 citation. |
| AlgebraicModuliForArithmeticGeometry | Resolved new-roadmap head §§1.1–1.3,7.3,7.8,8.1–8.3 (lines 306,505,602,9312,9783,9883,9912,9959). Formal effectivity/Artin charts require the stated algebraicity or effectivity axioms; they do not construct an analytic Kuranishi family. |
| AlgebraicCurves / JacobianChallenge / StableReduction | Main AlgebraicCurves Layers 9/12 provide differential/model dictionary; JacobianChallenge A–C the line-bundle/coherent comparisons. StableReduction Layer 4, lines 529–550, resolves normal proper DVR models with smooth generic curve by normalized blowups. The target's extra global-pencil/gluing adapter is new work, not already that theorem. The README should replace the unspecific whole-roadmap row with these exact cuts. |
| ComplexComparisonPartII | Resolved new-roadmap head C0.1–C0.7, C1.9, C2.1–C2.2, C4.1–C4.4, C5.4; GAGA at line 1673, cycles at 3015. Generic analytification, coherent comparison and proper-image work belongs there; the K3 applications may remain here. |
| ComplexKahlerGeometry | Main K1–K4, K4.P, K5a/K5b, K6.0–K6.1 and K7 are the cited analytic owners. Conventions at lines 60–99 fix `ddᶜ=2i∂∂̄`, positive fundamental form and normalized Chern curvature. K3 nonlinear Monge–Ampère and K3 Kählerness are not supplied by its linear Hodge package. |
| IndexTheory / CharacteristicClasses | Supplied IndexTheory head I7/I8, especially line 888 onward, supplies holomorphic fixed-map traces; main CharacteristicClasses C6/C7, lines 1447 and 1532, supplies characteristic-number normalization. These do not supply a fixed-locus classification merely from a zero Lefschetz number. |
| SmoothBundlesConnections / DifferentialGeometry / AlgebraicTopology | Main B1.5, lines 498–536, proves proper-submersion triviality componentwise. K3's Hausdorff local-chart usage matches this. DifferentialGeometry owns forms/de Rham and AlgebraicTopology Stage 6 owns singular cups, coefficient comparisons and duality; the supplier row should name those sections. |
| IntegralLattices | Main 0G,1B–1F,5E–5J,6A resolve, especially lines 626–644 (overlattices), 1568–1595 (gluing/embedding compatibility), 1597–1627 (2-elementary), 1643 onward (indefinite classification). The K3-specific eigenspace adapter is distinct; generic matrix pairing and lattice foundations are not new here. |
| FourManifolds | Supplied head F7 owns the quartic/topological example; §7.3 at line 2976 owns an explicit Enriques-cover example. These examples are not the general K3 period/Torelli theorem, so consuming them does not re-plan that owner. |
| EnriquesSurfaces | Supplied E1a–E1e exists and supplies Num; its explicit reverse K3 citations establish R01. E6.U0–U4 is the appropriate later consumer of the moved K7.C. |
| K3SurfacesAndSymplecticBoundedness | Supplied head introduction and Scope, lines 1–11, expressly consumes this base and owns arbitrary-field/all-characteristic extensions. Its native sheaf and cohomology signatures are corroborating evidence of available algebraic carriers, not an import allowed into this file. No shared fully qualified name was found. |

No competing owner for the K3-specific global period/Torelli construction was found by these searches. Search hits for Kuranishi charts in Floer theory and for Monge–Ampère measures in arithmetic dynamics concern different objects. The board's PeriodsAndSpecialValues package consumes the K3 Betti lattice through the later Part II; it does not become a new owner of that lattice.

**Adversarial computations (66 prose rows and 24 Lean rows).** The tables give actual values, not a claim to have proved the analytic construction by examples. “Pass” means the stated instance and control agree; it does not replace a source or proof. Where the README names a construction without a precise assertion, the row identifies the remaining obligation. ℤ is used for integral lattices, ℂ for periods; characteristic 2 is used only to test the coordinate formulas' explicitly wider ring signatures.

| Statement / convention | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| Algebraic K3 predicate, line 7 | Smooth quartic in ℙ³; ℙ²; abelian surface | Quartic ω=O(4−4)=O, h¹=0; ℙ² ω=O(−3)≠O; abelian surface h¹=2≠0 | Positive and two negative models; give local Checks (R08). |
| Analytic K3 predicate, line 9 | Quartic; complex 2-torus | h¹(O)=0 versus 2, although both have ω=O | The torus is excluded; no projectivity inferred for all analytic K3s. |
| Contraction, K0 | σ=dx∧dy, v=a∂x+b∂y | ι_vσ=a dy−b dx; matrix determinant 1; σ↦2σ multiplies the map by 2 | Correct sign and invertibility; zero σ gives zero map and is excluded. |
| h⁰(ω)=1, K0 | Connected proper K3; two disjoint K3s | h⁰(O)=1 versus 2 | Connected/geometrically integral hypothesis matters. |
| χ(O)=2, K0 | K3 H⁰,H¹,H² dimensions 1,0,1 | 1−0+1=2 | Pass. |
| c₂=24, K0 | c₁=0, χ=2 | 12χ−c₁²=24=deg c₂ | Pass; algebraic degree not an assumed lattice invariant. |
| Vector-field/one-form vanishing, K0.A | Smooth K3 in p=3, p=5; abelian surface | Claimed dimensions 0=0; abelian surface has 2 and fails h¹=0 | Supported by Martin Cor.1.1; field/characteristic conditions retained. |
| Quotient/resolution adapter, K0.A.1 | Zero derivation; local nonzero ∂x on k[x,y], char p | Zero has invariant ring k[x,y]; ∂x has k[xᵖ,y], extension degree p | Nonzero and height-one hypotheses distinguish the intended quotient. Global pencil construction still needs its locator. |
| Smooth generic fibre, K0.A.1 | Char 3 cusp y²=x³ | Arithmetic genus 1, geometric genus 0; smoothness fails at the cusp | A genus-one curve alone does not supply an elliptic generic fibre; README explicitly demands the additional theorem. |
| Restricted derivation cases, K0.A.1–2 | D=∂x and D=x∂x in char p | Dᵖ=0 and Dᵖ=D respectively | α_p and μ_p cases are distinct; correct scope of required analysis. |
| Elliptic alternatives, K0.A.3 | Martin cases (i),(ii); K3 | c₂=0 and 12, versus 24 | These two alternatives cannot be K3; wild cases require the stated conductor calculation, not this numerical check. |
| Serre-dual obstruction, K0.A.4 | K3 with H⁰(Ω¹)=0 | dim H²(T)=dim H⁰(Ω¹)=0 | Pass with actual canonical trivialization and duality. |
| Enriques differential pullback, line 44 | Étale degree-2 cover in char≠2 | Pullback K=O; faithful flatness gives kernel 0 on sections | The numerical lattice is not needed for this vanishing. |
| Analytification, K1 | Quartic with hyperplane bundle | H²=4, algebraic and analytic canonical bundle both O | No arbitrary Kähler class is identified with H. |
| b₁ and Kählerness, K1 | K3; Hopf-surface control | K3 b₁=0; Hopf b₁=1 and h¹(O)=1 | Control fails K3 hypotheses; the positive-current theorem remains a genuine construction. |
| Hodge numbers, K1 | Complex K3 | b₂=1+20+1=22; Euler=1+22+1=24 | Pass. |
| Picard/Chern comparison, K1 | K3; complex torus control | K3 H¹(O)=0, so kernel 0; torus Pic⁰ dimension 2 | Hypothesis prevents a false injection for all complex surfaces. |
| Projectivity criterion, K1 | Quartic H; Pic=0 K3 | H²=4>0; no nonzero integral (1,1) class for Pic=0 | Algebraizes first, not second. |
| Integral Kähler/ample comparison, K1 | Polarization h and −h | h·ω>0, (−h)·ω<0 | Positive square alone does not choose the ample sign. |
| Monge–Ampère normalization, K2 | Reference solution, V=ω²; σ↦2σ | c=1, φ=0; V′=4V and c′=1/4, so c′V′=V | Volume denominator is positive; normalization removes additive constants. |
| Ricci-flat uniqueness, K2 | φ and φ+C | Same i∂∂̄; integrals differ by C∫ω², hence normalized C=0 | Pass; existence/estimates not numerically certified. |
| Quaternionic structures, K2 | I,J,K; aI+bJ+cK | IJ=K, JI=−K; square=−(a²+b²+c²)id | On sphere square=−id; (0,0,0) gives 0 and is excluded. |
| Splitting/simple connectivity, K2 | Torus quotient; degree-d free symplectic cover | Torus Euler=0≠24; 2=d·2 forces d=1 | Numerical exclusions support the route; the splitting theorem still needs a precise source. |
| Integral H² lattice, K2 | U³⊕E₈(−1)² | rank=6+16=22; signature=(3,19); det=(−1)³=−1 | Correct normalization; no rational-only marking. |
| Signature formula, K2 | c₁²=0,c₂=24 | (c₁²−2c₂)/3=−16=3−19 | Pass. |
| Unpolarized deformations, K3 | K3 tangent/obstruction dimensions | h⁰(T)=0, h¹(T)=20, h²(T)=0 | Base dimension 20; generic unframed automorphisms are not thereby erased. |
| Polarized slice, K3 | h²=2 and h²=4 | One independent linear period equation: 20−1=19 in each degree | Degree 2 is not dropped. |
| Integral local system, K3 | Product X×D→D; nonproper punctured-plane projection | Product transition on H² is id; bad projection fibres have 2 versus 1 connected components | Properness and local Hausdorff chart hypotheses are necessary. |
| Relative line bundle, K3 | Trivial bundle; tensor by a base line bundle | Fibre Chern classes both 0; total bundles can differ by f*L | The stated local Picard obstruction/rigidification must be retained. |
| Ω positivity/isotropy, K4 | z=e₁+i e₂ in positive orthonormal plane | B(z,z)=1−1=0; B(z,z̄)=2>0 | Pass. |
| Rescaling periods, K4 | c=2i; c=0 control | B(cz,cz)=−4·0=0; B(cz,overline(cz))=8; c=0 gives 0 | Nonzero rescaling required; positivity is not just isotropy. |
| Ω dimension/orientation, K4 | Signature (3,19), positive h | Projective quadric dimension 22−2=20; h⊥ gives 21−2=19 | Unpolarized connected domain; polarized domain has two components. State positive h explicitly. |
| Ω simple connectivity, K6 | Positive-plane compact retract | SO(3)/SO(2)=S²; π₀=1, π₁=0 | Consistent with connected Ω, not two components. |
| Local Torelli derivative, K4 | Chosen σ; rescale by 2 | Domain/codomain dimensions 20=1·20; contraction map becomes 2 times the original | Equal dimensions alone are not proof; actual contraction supplies the claimed map. |
| Rational Hodge loci, K4 | v=0 control; v=e₁; forced polarization h | Pairings 0, 1, 0 on z and Ω_h respectively | Nonzero/unforced condition is essential to properness. |
| Countable avoidance, K4 | Countably many proper hyperplanes in a period ball | Each has empty interior; countable union meagre; complement dense | Does not give a Zariski-open set. |
| Pic=0 cone, K5.A | Class x in selected positive component; −x | x²=(−x)²>0, but pairings with chosen κ have opposite signs | No curve walls when Pic=0; selected component still matters. |
| Twistor family, K5.B | Positive 3-plane with orthonormal basis | Quadric z₁²+z₂²+z₃²=0 in ℙ² has complex dimension 1 | Correct conic/ℙ¹; not the entire 20-dimensional domain. |
| Local twistor chains, K5.B | Extra direction w; integral δ with δ⊥W | If δ⊥W, every point of the conic is in H_δ; otherwise a nonzero linear equation cuts a conic in ≤2 points | Genericity is substantive. No quantitative local-chain assertion is stated to test (see limitations). |
| Marked-moduli components, K6.A | Marking α and −α | Period line [z]=[−z]; positive 3-space orientation changes by (−1)³=−1 | Two marked components are compatible with one Ω. |
| Graph-cycle correction, K6.A | Identity graph; rational-root reflection | Identity projection degrees (1,1); reflected root maps δ to −δ | Equal periods do not identify a prescribed marking without cone/graph correction. |
| Strong Torelli, K6.A | id; −id on H² | id preserves κ; −id sends κ to −κ with pairing −κ²<0 | The Kähler-class hypothesis excludes the false −id lifting. |
| Automorphism faithfulness, K6.A | Identity cohomology action; deck involution | Identity action corresponds to unique id; deck has trace −2, not 22 | Nontrivial deck does not contradict K3 faithfulness. |
| Root reflection, K6.B | δ²=−2, x=δ | r_δ(δ)=δ−2δ=−δ; r_δ²(δ)=δ | Correct plus sign in reflection formula; effectivity is reversed. |
| Effective root via RR, K6.B | δ²=−2; class of square −4 | χ(O(δ))=2−1=1; at −4 it is 2−2=0 | ±effectivity follows for roots, not for every negative class. |
| Nef versus ample, K6.B | Effective root δ and h·δ=0 | h has intersection 0, while ampleness requires >0 | Wall is a boundary, not an ample period. |
| Rootless NS cone, K6.B | NS=M(2) | Every square=2·even integer lies in 4ℤ; −2 is impossible | Rootless comparison passes; do not infer generic Hodge stabilizer from this. |
| K7.A involution | (u₀,u₁,u₂,a,b) | First iteration (−u₀,u₂,u₁,b,a); second (u₀,u₁,u₂,a,b) | Integral, order 2; not division by 2. |
| K7.A invariant/anti-invariant lattices | Solve ιv=v and ιv=−v over ℤ | Invariants: u₀=0,u₁=u₂,a=b; anti: u₁=−u₂,a=−b, u₀ free | ranks 10 and 12; both primitive as kernels in torsion-free Λ. |
| K7.A scaling/signatures | Diagonal hyperbolic basis and E₈ roots | Diagonal e,f pairing 2; root square −4; signatures (1,9),(2,10) | Pass. |
| K7.A discriminants | Scale unimodular rank-10 M by 2 | |det|=2¹⁰=1024 each; groups M/2M, exponent 2 | U in T contributes discriminant 1. |
| K7.A saturation/gluing | One swapped coordinate pair (1,0) | S+T gives (a+b,a−b), index 2; ten pairs give 2¹⁰ | Rational splitting uses halves; not an integral direct sum. |
| K7.A anti-isometry convention | Half-norm on (e+f)/2 in U(2) | q=1/2 mod ℤ; q+(−q)=0; here −1/2=1/2 mod ℤ | Exponent two makes the sign subtle; half-norm convention agrees with IntegralLattices 1D. |
| K7.A extension iff | γ=id, g=h=id; mismatched induced maps | Graph pair (a,a) maps to (a,a); if ḡa≠h̄a, image is outside graph | Both directions of the criterion; preserves actual integral graph, not rank alone. |
| K7.B Hodge action | Period z∈T⊗ℂ; invariant S in NS | ιz=−z, so period line fixed; scalar on H²,⁰ is −1 | Anti-symplectic, not symplectic. |
| K7.B fixed locus | (r,a,δ)=(10,10,0); (10,8,0) control | Lefschetz 2+10−12=0 in both rank-10 cases; fixed loci ∅ versus two elliptic curves | Zero Euler alone cannot classify; source theorem supplies distinction. |
| K7.B exceptional genus formula | Insert r=a=10 into ordinary formula | (22−10−10)/2=1, (10−10)/2=0; actual fixed locus empty | README correctly excludes mechanical use of that formula. |
| K7.B quotient invariants | Free degree-2 K3 quotient | e=24/2=12; χ(O)=2/2=1; pg=q=0; canonical character −1 | K has order 2 and is nontrivial; no free quotient inferred in char 2. |
| K7.B free/nodal roots | U root e−f; U(2) vector e′−f′ | (square,divisibility)=(−2,1) and (−4,2) | Distinct arrangements; spell out R03. |
| K7.C pullback scale | x,y with numerical pairing 1 | (π*x,π*y)=2; unscaled isometry would give 1 | Correct scaled Num(S)(2) embedding. |
| K7.C lift/descent quotient | Identity on S | Two lifts {id,ι}; quotient has 2/2=1 identity class | Correct kernel; uniqueness of a lift itself would be false. |
| K7.C scalar trivialization | Scalar λ≠0 over ℂ; λ=0 control | Equation t²=λ has two roots ±t; at 0 only t=0, not an invertible lift | Nonzero trivialization and complex field support the two-choice argument. |
| K7.C marking changes | Conjugating by marking a | Group changes G↦aGa⁻¹; identity and group law unchanged | Appropriate isomorphism, not literal equality of subgroups. |
| Quartic Check | Degree 4 smooth hypersurface | c(TX)=(1+H)⁴/(1+4H); c₂=6H², integral 6·4=24 | Pass. |
| Double-sextic Check | Smooth branch sextic | g=(5·4)/2=10; e(Y)=2·3−(2−20)=24 | Correct smooth example; singular branch needs specified resolution hypotheses. |
| Nonprojective/rootless Checks | Pic=0; NS=M(2) | Pic=0 has no positive integral class; M(2) has positive classes but no square−2 roots | Different examples, not interchangeable “generic” conditions. |

Every declaration of Suggested.lean is covered separately below. For cover-coordinate examples take R=ℤ and B=−I₈; this deliberately tests the algebraic signature rather than pretending that −I₈ is E₈(−1). Write E for the first standard vector of ℤ⁸ and H(a,b)=a₀b₁+a₁b₀.

| Lean declaration (line) | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| `complexPair` (15) | n=0; B=I₂, v=(1,i); nonsymmetric B=(1,1;0,1) | Empty sum 0; B(v,v)=0, B(v,v̄)=2; nonsymmetric B(v,v̄)=2−i | Realness needs symmetric B; no false realness theorem is asserted here. Native `toBilin'` duplicates evaluation. |
| `conjugateCoords` (19) | v=(1,i); v=0 | v̄=(1,−i), double conjugate=v; 0↦0 | Pass; definition only serves scaling API. |
| `positiveIsotropic` (22) | B=I₂, v=(1,i); B=−I₂; v=0 | Conditions (nonzero,0,2>0) true; (nonzero,0,−2>0) false; zero fails nonzero and positivity | Distinguishes positive from negative isotropic plane. |
| `periodDomain` (27) | B=I₂ versus zero B | [1:i] included; for zero B every positivity test is 0>0, so domain empty | No K3 period realization is tested by the definition. |
| `integralHyperplane` (32) | a=0; B=I₂, a=e₁, p=[1:i] | Zero a gives all projective space; nonzero a gives pairing 1≠0, excluding p | README properness correctly excludes a=0. |
| `complexPair_smul_left` (38) | n=1,B=[1],c=2,v=3,w=4; c=0 | 6·4=24=2·12; 0=0 | One-simp success; delete (R05). |
| `complexPair_conjugate_scale` (43) | B=I₂,c=2i,v=(1,i); c=0 | 8=(2i)(−2i)·2; 0=0 | One-simp success; delete (R05). |
| `positiveIsotropic_scale` (49) | Same v,c; c=0 negative control | True↔True for 2i; False↔True for 0 | `hc` retained and necessary; one-simp attempt incomplete, still API padding. |
| `periodDomain_zero_rank` (54) | n=0 | Only vector=0; nonzero-vector subtype empty; domain=∅ | One-simp success; explicit boundary padding. |
| `CoverCoords` (58) | R=ℚ; zero ring | Dimension 2+2+2+8+8=22; zero-ring carrier singleton | Actual coordinate product, no hidden lattice hypothesis. |
| `NumericalCoords` (61) | R=ℚ; zero ring | Dimension 2+8=10; zero-ring carrier singleton | Not Num of a surface without the geometric comparison. |
| `AntiCoords` (63) | R=ℚ; zero ring | Dimension 2+2+8=12; zero-ring carrier singleton | Same limitation. |
| `coverInvolution` (65) | v=((1,2),(3,4),(5,6),E,2E) | ιv=((−1,−2),(5,6),(3,4),2E,E) | First block negative, not identity over ℤ. |
| `invariantEmbedding` (68) | ((1,2),E); R=𝔽₂ | Image (0,(1,2),(1,2),E,E); in char 2 all of U₀ is also fixed | Embedding law holds in char 2 but its image is not the full fixed space there; no such theorem is stated. |
| `antiEmbedding` (72) | ((1,2),(3,4),E); R=𝔽₂ | Image ((1,2),(3,4),(−3,−4),E,−E); in char 2 signs coincide | Correct broader-ring formula, not a characteristic-free eigenspace decomposition. |
| `hyperbolicPair` (76) | e,f; e,e; e+f | H(e,f)=1, H(e,e)=0, H(e+f,e+f)=2 | Distinguishes hyperbolic from diagonal Euclidean form. |
| `eightPair` (79) | B=−I₈, E,E; B=0 | −1 and 0 | Native matrix bilinear evaluation; no E₈ condition. |
| `coverPair` (83) | Above v; all-zero v | 4+24+60−1−4=83; 0 | Direct-sum formula passes. |
| `coverInvolution_involutive` (89) | Above v; R=𝔽₂ | ι²v=v; in char 2 double swap and double negation still id | One-simp success; delete. |
| `invariantEmbedding_fixed` (93) | ((1,2),E) | ι(0,u,u,E,E)=(0,u,u,E,E) | One-simp success; delete. |
| `antiEmbedding_negated` (98) | ((1,2),(3,4),E) | Both sides ((−1,−2),(−3,−4),(3,4),−E,E) | One-simp success; delete. |
| `coverPair_involution` (103) | Above v=w; R=𝔽₂ reduction | 83=83; modulo 2 both 1 | The one-simp attempt timed out at default heartbeats, not a false identity; delete as API. |
| `invariant_pair_twice` (108) | u=(1,2), e=E; mod 2 | 6=2(4−1)=6; mod 2 both 0 | One-simp success; delete. |
| `anti_pair` (114) | u₀=(1,2),u₁=(3,4),e=E; mod 2 | 50=4+2(24−1)=50; mod 2 both 0 | One-simp attempt timed out; still a basic direct-sum identity, delete. |

The one-tactic probe used only a scratch copy, default options and one `simp` per admitted theorem. Successful invocations:

- `complexPair_smul_left`: `simp [complexPair, Finset.mul_sum, mul_assoc, mul_left_comm, mul_comm]`.
- `complexPair_conjugate_scale`: the same with `conjugateCoords` added.
- `periodDomain_zero_rank`: `simp [periodDomain, positiveIsotropic]`.
- `coverInvolution_involutive`: `simp [Function.Involutive, coverInvolution]`.
- `invariantEmbedding_fixed`: `simp [coverInvolution, invariantEmbedding]`.
- `antiEmbedding_negated`: `simp [coverInvolution, antiEmbedding]`.
- `invariant_pair_twice`: `simp [coverPair, invariantEmbedding, hyperbolicPair, eightPair, two_mul, add_assoc, add_left_comm, add_comm]`.

For `positiveIsotropic_scale`, `simp [positiveIsotropic, hc]` leaves the scalar positivity equivalence. The analogous unfolded sum normalizations for the other two meet the default heartbeat limit. These scratch failures are not attributed to the original file, which passed. An earlier exploratory probe included definitions before their declaration; it was discarded and is not counted as evidence. All Lean processes have finished.

## Not verifiable

- **Exact source verification of the entire K7 sample is incomplete because locators/statements are absent.** The lattice model and exceptional fixed-locus case have the supporting texts identified above. The full free/nodal arrangement, marked quotient and functorial canonical-cover descent assertions have no theorem/page locator in this README. I checked the author-hosted Huybrechts draft's lattice and automorphism sections, the linked Torelli text, and the cited Enriques E1. This is R03/R04, not an inaccessible-text request and not a reason to park the review.
- **Final-book pagination:** the legal Huybrechts download is the draft identified by the source itself. No final-edition page numbers are certified here. The author can cite the inspected draft consistently or supply final-edition locators.
- **Analytic construction detail:** local-chain boundary-entry estimates, bounded graph-cycle extension, splitting, current regularization and the nonlinear Monge–Ampère estimates are named as work, but their exact quantified estimates and statement-level sources are not given. The table checks their elementary normalization and negative controls; it does not certify those constructions. The repair should turn them into precise targets with inputs, locators and Checks, rather than treating this table as a proof.
- **Wild elliptic cases:** Martin Theorem D and Corollary 1.1 were read. The README's intermediate quotient-to-pencil and wild conductor computations were not all independently reconstructed. The supplied source explicitly uses additional supersingular elliptic-fibration results in small characteristic. The roadmap owns those missing steps as targets, so they have not been silently imported as library facts.
- **Broad supplier rows:** the whole-roadmap references to AlgebraicCurves, JacobianChallenge, DifferentialGeometry and AlgebraicTopology resolve to owners, but contain no exact target identifier for every promised operation. The table records the sections actually resolved; the missing per-target contracts are part of R08. No claim is made that every generic API in those large suppliers was proved or inspected.

All four works actually cited by the README were legally readable through the sources service. No source-download failure remains and no inaccessible text was used to justify a finding. No claim of source certification is made merely from a successful fetch.

## Source issues

- **Misprint** in huybrechts-torelli at §1, printed p.1040–02 (lines 43–46): the source says a Hodge map H²(S)→H²(S′) equals ±g* for g:S→S′; it should be g:S′→S, or use the inverse pullback; affects a stated result.
