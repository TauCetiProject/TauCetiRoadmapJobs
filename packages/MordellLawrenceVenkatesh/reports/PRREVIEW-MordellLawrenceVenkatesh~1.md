# Review of MordellLawrenceVenkatesh (pull request #1231 at 513c822)

**Verdict:** needs changes

## R01 (P1) — The Jacobian Riemann form has the opposite sign

Location: `TauCetiRoadmap/MordellLawrenceVenkatesh/README.md:2492`, also 2494 and 2500: “the Riemann form … is the intersection form”.

Claim: the positive Riemann form of the principal polarization equals the oriented intersection pairing used in Layer 5. This disagrees with the consumed abelian-scheme convention and the pinned predicate.

Witness: on `C = ℂ/(ℤ+iℤ)`, take `a=1`, `b=i`. Intersection gives `î(a,b)=1`, hence `î(Ja,a)=−1`; the supplier requires `E(Ja,a)>0` and gives `E(a,b)=−1`.

The witness is explicitly the first Check of `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md` §A5.2 (lines 2559–2598). At the pin, `TauCeti/Geometry/Hodge/WeightOne/RiemannForm.lean:80` defines positivity as `0 < E.baseChange ℝ (J x) x`; `TauCeti/Geometry/Hodge/WeightOne/Standard.lean:204` computes the form with that sign.

Repair: state `E = −î` for the supplier's Riemann form, distinguishing it from its homological polarization `Q=−E=î`. Carry that dictionary into §§8.11–8.12 and replace “up to sign” by the actual sign. Keep the intersection-form transfer multiplier `q−1`: under `p_*`, the Prym Riemann form is `−î_(C′)/(q−1)`. For q=3, a pair with quotient intersection 2 therefore has Riemann pairing −1. Add the elliptic example: `E(a,b)=−1`, `E(Ja,a)=1`; after this repair it satisfies positivity. Scaling both forms by −1 preserves the symplectic groups used later.

## R02 (P1) — Restricting a product polarization does not square its degree

Location: `TauCetiRoadmap/MordellLawrenceVenkatesh/README.md:2463`: “degrees 1 and `m` … degree `m²`”.

Claim: restriction to the second factor changes the degree of that factor's polarization from `m` to `m²`.

Witness: on an elliptic curve use `L=O_E(2[0])`. Its supplier polarization degree is 2 and its isogeny kernel has rank 4. Restricting `O_E([0]) ⊠ L` to the second factor gives `L` again: degree 2, not 4.

`TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1199`–1205 explicitly distinguishes polarization degree `d=h⁰(L)` from isogeny degree `d²`. Even if “degree” meant isogeny degree throughout, restriction to this factor would retain its original degree.

Repair: say that the restriction has polarization degree `m`, with isogeny degree/kernel rank `m²`, and take `m>1` for the nonprincipal example. The repaired `m=2` Check gives 2 and 4 for the two distinct quantities.

## R03 (P2) — Import the existing fibration exact sequence

Location: `TauCetiRoadmap/MordellLawrenceVenkatesh/README.md:1856`–1858, §5.14, and the ownership assertion at 301–303.

Claim: this roadmap owns the Serre-fibration homotopy exact sequence, including components and the bundle-to-CW lifting argument.

Witness: main's `TauCetiRoadmap/DGFloer/README.md:481`–521, Layer 1 item 2, already owns precisely that sequence, its pointed-set end, naturality, and disk-to-relative-CW lifting. Its scope assigns ownership at 131–133.

Repair: import `DGFloer`, Layer 1 item 2, in the supplier contracts and in §§5.20 and 5.23. Remove the duplicate sequence and CW-lifting construction. If the relative-pair identification `π_n(E,F) ≅ π_n(B)` remains needed, retain only that comparison with the supplied sequence and say how it differs. This introduces no upward dependency: `DGFloer` is on main. The Hopf bundle test still gives `π₂(S²)=ℤ → π₁(S¹)=ℤ`, boundary ±identity and cokernel 0, from the existing owner.

## R04 (P2) — Retain the source's arbitrary connected generating set

Location: `TauCetiRoadmap/MordellLawrenceVenkatesh/README.md:704`, §0.21: “`S ⊆ V` a finite set of vectors”.

Claim: connected-graph transvection generation is only planned for finite sets, although the cited theorem allows an arbitrary set.

Witness: `LV20 line 690`–694, Lemma 2.14, p.15, states an arbitrary set and reduces to finite sets in its proof. In `ℚ²`, `S={e}∪{f+ne : n∈ℤ}` is infinite, connected, and spans; `ω(e,f+ne)=1`.

Repair: remove finiteness from the statement. For each vector in the span, take its finite support and finitely many connecting paths; apply the finite induction to their union. In the displayed infinite example, `{e,f}` already gives `Sp₂`; the repaired theorem covers it. Keep finite connected spanning systems as Checks and as the application in §10.5.

## R05 (P2) — Trivial monodromy also needs a trivial finite cover

Location: `TauCetiRoadmap/MordellLawrenceVenkatesh/README.md:1450`, the constant-family Check of §3.11.

Claim: a constant polarized abelian family over a nonempty finite étale cover has algebraic monodromy 1. Constancy of the abelian scheme over `Y′` does not remove the permutation monodromy of `Y′→Y`.

Witness: take `Y=ℂ×`, `Y′=ℂ×`, `t=u²`, and a fixed polarized elliptic curve `A`, with `X=A×Y′`. A generator of `π₁(Y)` swaps the two `H¹(A)` summands: image `C₂`, not 1.

Repair: for arbitrary finite étale `Y′→Y`, say the constant abelian family has finite permutation monodromy, hence fails full monodromy when `d≥1` and the degree is positive. Reserve `Γ=1` for a trivial cover and trivial abelian local system. The example then has image order 2 and dimension 0, whereas the required `Sp₂×Sp₂` has dimension 6; the intended failure of full monodromy remains valid.

## R06 (P3) — Replace stale supplier declaration names by the actual contracts

Location: `TauCetiRoadmap/MordellLawrenceVenkatesh/README.md:322`, 353, 390 and 2479.

Claim: the suppliers expose `finite_weilPolynomials`, `frobeniusTestSet`, `hodgeWeight`, `AlgebraicGroup.zariskiClosure`, `RelativeJacobian.RelativeJacobian` and `RelativeJacobian.PrincipalPolarization` under those names.

Witness: the named declarations are absent from those suppliers' README and Lean files. The mathematics is present: Faltings §§R28.5.1–R28.5.2, PadicHodgeTheory §3.2, ArithmeticGaloisRepresentations §7.6, and JacobianChallengePartII §§1.2–1.4.

Repair: cite those precise mathematical sections without the nonexistent names. For subgroup closure, cite the actual `HopfIdeal.vanishingIdeal` interface identified by ArithmeticGaloisRepresentations §7.6, README 4509–4528. For the relative Jacobian and polarization, §§1.2–1.4 supply exactly the construction and arbitrary-base-change comparison required by §8.10. No new supplier gap is needed. At 341, qualify “§3.2” as this roadmap's §3.2: the supplier's §3.2 is instead an orthogonal–symplectic cover theorem. The repaired citations still deliver the same objects on the elliptic and trivial-character instances in the table below.

## R07 (P3) — Add the required Lean layer headings

Location: `TauCetiRoadmap/MordellLawrenceVenkatesh/Suggested.lean:5`, 35, 72, 84 and 95.

Claim: the file states targets of Layers 0, 5, 6 and 11 without the required layer section comments; its module title also differs from the prescribed “target signatures” form.

Witness: four headline theorems occur, but there are zero `/-! ## Layer … -/` comments. Elaboration succeeds, so this is a form defect, not a build failure.

Repair: use the prescribed module-title form and add the four layer comments in README order, with the centralizer definition in Layer 0. Re-elaboration should retain the same five declaration signatures and four `sorry` warnings. No theorem should be proved in place or padded with examples.

## Verified sound

The review covered the 167 numbered targets, their API paragraphs and Checks, the 15 seeded locators, the headline inventory, all `Needs` lines, the worker's gate, and the pinned Lean signatures. The mathematical tests below are instance checks and boundary tests, not substitutes for proofs of the general statements. A row marked “pass” reports only the stated computation. The failures have repairs above; the worktree was not edited.

The worker's gate at this exact head passes every reported check, including the targeted build, imports, sorry-data, outside-folder changes and stray files. The independent outside-folder diff is empty. The dependency command returned:

```text
depcheck: 205 roadmaps, 1484 edges, 0 problem(s)
```

There is no `UPWARD`, `CYCLE` or `moved:` line. The additional supplier proposed in R03 is already on main. No supplier gaps are declared. Existing end-statement ownership is acknowledged: the Lawrence–Venkatesh proof route adds substantive mathematics rather than replanning the heights or subspace-theorem routes. The two local Lean statements have this roadmap's namespace and do not collide with the other owners' fully qualified names.

The imported genus module was built with its targeted `lake build`; it succeeded. Direct `lake env lean` elaboration of `Suggested.lean` succeeded with exactly four `sorry` warnings. A scratch copy with `#check @name` for all five declarations also succeeded. In particular, the scalar tower and fixed-field hypotheses survive on the centralizer theorem; finite dimensionality of `H¹(O_C)`, smoothness, properness, geometric connectedness, dimension one and genus at least two all survive on Mordell. No signature repair was needed. Each of the four headlines was probed with the single tactics `rfl`, `infer_instance` and `simp`, using tactic alternatives in a scratch copy. None closed. Object searches found no pinned one-lemma proof of those headlines; no padding finding is made.

The README's six end theorems are §§4.5, 6.10, 7.9, 10.9, 10.10 and 11.6. S-unit and Mordell finiteness are stated on native carriers. The other four are named in the module docstring with the missing period, family, surface or lifted-action interfaces. The additional deep centralizer and Schönflies signatures are substantive. The docstring also accounts for §§1.2, 1.11, 1.13, 1.15, 2.11, 3.18–3.19, 4.4, 8.7, 8.13, 9.11, 0.21 and 0.26. No sorry'd data, free predicate substitute, set-option override or computational algorithm was found. All 35 explicitly labelled definition/construction sections have at least three Checks and accompanying API statements; R02 and R05 show why counting Checks alone is insufficient.

Pinned declarations opened include the following 12 interfaces (pins agree with `lake-manifest.json`):

| Pin and file | Declaration or native content checked | Boundary retained |
|---|---|---|
| Mathlib `6b7abb3`, `Mathlib/RingTheory/DedekindDomain/SInteger.lean:65` | `Set.integer` | Valuations ≤1 outside the actual set |
| Same file:108 | `Set.unit` | Units of the field with valuation exactly 1 outside the set; no built-in finiteness of the set |
| Mathlib, `Mathlib/AlgebraicTopology/FundamentalGroupoid/FundamentalGroup.lean:41` | `FundamentalGroup.mul_def` | `p*q=q.trans p` |
| Mathlib, `Mathlib/RingTheory/Grassmannian.lean:66` | `Module.Grassmannian` | Finite projective quotient of fixed rank at every prime, not merely total dimension |
| Tau Ceti `a91d3aa`, `TauCeti/AlgebraicGeometry/Cohomology/Genus.lean:64` | `AlgebraicGeometry.Scheme.genus` | Explicit finite-dimensional `H¹(O)` guard; smoothness/properness are not in this definition |
| Tau Ceti, `TauCeti/RingTheory/DedekindDomain/SInteger/Unit.lean:207` | `Set.unit_fg_of_units` | Finite set and finitely generated base-ring units |
| Tau Ceti, `TauCeti/LinearAlgebra/Matrix/GeneralLinearGroup/Symplectic/TorusGeneration.lean:145` | `GLSymplecticFin.eq_top_of_root_subgroups` | Every field, all root groups |
| Tau Ceti, `TauCeti/Algebra/AlgebraicGroup/Symplectic/Connected.lean:124` | `geometricallyConnectedCommHopfAlgProperty_coordinateHopfAlgebra` | Geometric connectedness of the coordinate group |
| Tau Ceti, `TauCeti/Geometry/Hodge/WeightOne/RiemannForm.lean:80` | `AlmostComplexStructure.IsRiemannForm` | Positivity is `E(Jx,x)>0`; R01 |
| Tau Ceti, `TauCeti/Geometry/Hodge/WeightOne/Standard.lean:174` | `almostComplexStructure` | `(x,y)↦(−y,x)` |
| Same file:195 | `riemannForm` and `riemannForm_apply` at 204 | `(x,y),(x′,y′)↦yx′−xy′` in rank two |
| Same file:225 | `isRiemannForm_riemannForm` | Positive standard example, excluding the opposite form |

Cross-roadmap resolution used `roadmaps resolve`, `roadmaps show` and object searches with `roadmaps grep`, together with the specified main and open-head copies. The nine worker citation leads are not nine missing prerequisites: most are planned supplier interfaces rather than pinned declarations. `Sheaf.derivedPushforward` is present in SchemeAndStackFoundations §2.1, README 3286, on bounded-below abelian sheaves; the integral Gauss–Manin construction additionally names DerivedDeRhamCohomology's base-linear filtered realization, avoiding an `O_X`-linear de Rham differential. The actual stale names are R06.

Concrete supplier comparisons read and resolved include:

| Supplier, file `TauCetiRoadmap/<name>/README.md` unless noted | Locator read | Contract/convention verified |
|---|---|---|
| DGFloer, main | 131–133, 481–521 | Existing fibration LES owner; R03 |
| MetaplecticAutomorphicForms | §0.9a, 180–192; §3.2, 598–604 | Adapted basis versus prescribed basis; transitivity supplied; local inverse-transpose extension is distinct |
| FaltingsFinitenessAndIsogenyTheorems | §§R28.5.1–R28.5.2, 2018–2078 | Weil-polynomial finiteness and uniform Frobenius test set; conjugates needed to span image algebra |
| ArithmeticGaloisRepresentations | §§1.3, 1.6–1.8, 1.12; §7.6, 4507–4541 | Continuous induction, lattices, semisimplification/trace comparison, subgroup closure |
| PadicHodgeTheory | §§3.2–3.3, 665–703; §§8.1–8.3, 1378–1443 | Filtration jump −1 on `ℚ_p(1)`; inverse-dual Tate-module Frobenius; rational comparison |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | §§R07.3.1–R07.3.2, 4582–4671 | `t_H`, negative jumps, `N=0` subcategory; no extra filtration–Frobenius compatibility |
| AbelianSchemesAndArithmeticModuli | §§A0.1–A0.2, A1.1, A1.6; A2.5, 1197–1215; A3.7, 1628–1645; A4.3–A4.4, 1899–1961; A5.1–A5.7 | Actual abelian-scheme carrier, base change, polarization degree and sign, H¹ dual to Tate module; R01–R02 |
| AlgebraicModuliForArithmeticGeometry | §§1.3, 601–619; 1.7, 968–988; 7.9, 9806–9824; 9.1, 10274–10295 | Quotient Grassmannian; minors on nilpotents; identity component over reduced base; coordinate supplier |
| JacobianChallengePartII | §§1.2–1.4, 211–278 | Unpointed relative Jacobian, arbitrary base change, canonical principal polarization |
| HeightsRationalPointsAndObstructions | §§5.12, 2586–2594; 6.4, 2928–2936 | Native Mordell statement, independent proof route |
| DiophantineApproximationAndTranscendence, main | §2.4 | Existing general unit-equation owner |
| RestrictedPowerSeries, main | §2.4, 364–384 | Strassmann on a closed ball, including complete isometric extensions |
| FuchsianOrbifolds, main | Layer 2, 235–259 | Polygon side identifications, angle cycles, local finiteness |
| NeronModelsAndSemistableAbelianVarieties | §5.1, 2933–2953 | Prime-to-residue-characteristic Tate module; not unramified p-adic cohomology at p |
| DeligneWeightsAndPurity | §§0.1–0.2, 560–608; §1.4, 959–967 | Integral purity separate from Weil modulus; geometric H¹ versus arithmetic Tate Frobenius |
| DerivedDeRhamCohomology | §§2.12–2.13, 3250–3302; §5.8, 4509–4614 | Ordinary base-linear complex and strict filtered sheaf realization |
| ComplexComparisonPartII | §§C0.4, C4.5, C5.1–C5.2; §C6.2, 4126–4147 | Analytic/de Rham comparison; Riemann existence beyond smooth curves |
| InverseGaloisAndArithmeticFundamentalGroups | §§IG.1.2–IG.1.3; IG.3.1, 2554–2574 | Peripheral inertia, base extension, normalization of punctured covers |
| EtaleDualityAndPerverseSheaves | §§0.5–0.7, 668–918 | Curve trace, Tate line and coefficient conditions |
| EllipticLegendreCharacterInterfaces | §§0.1, 65–86; 0.4, 145–159 | Native equation, Δ, c₄, singular parameters and ellipticity |

Object searches also distinguished the relative reduced `Aff(q)` Prym from spectral double-cover Pryms, and this roadmap's connected-graph density from the already supplied generation of Sp by *all* transvections. Main-roadmap shape was compared with AlgebraicTopology, Completed/ConformalMapping and RestrictedPowerSeries. Ownership searches included the supplied sibling checkouts and board package material. Open folders not supplied in the brief were not used as authoritative ownership witnesses.

The seeded source check read all 15 targets against the actual text. No target was explicitly marked unverified in the README. All LV locators below use the cited arXiv v3, not the journal's different pagination.

| Target | Text read | Comparison |
|---|---|---|
| 0.2 | LV20 line 398–406, proof of Lemma 2.1, p.9 | Orthogonal idempotents and split summands; general split-module statement follows directly |
| 0.3 | LV20 line 390–397, Lemma 2.1, p.9 | Linear maps commuting with the semilinear bijection; local definition permits a general map, with bijectivity restored for the bound |
| 0.16 | Mil-LAG line 3894–3943, pp.94–95; 4154–4163, p.100; Mil-iAG line 17492–17494, p.418; 20019–20036, p.482 | Characteristic zero and positive even dimension retained; innerness on algebraically closed points distinguished from the group-scheme quotient; source basis misprints recorded below |
| 0.21 | LV20 line 690–701, Lemma 2.14, p.15 | Correct generation argument; unnecessary finite-set restriction is R04 |
| 1.10 | LV20 line 549–603, proof of Lemma 2.8, pp.12–13 | Purity/Artin–Weil relation; roadmap correctly limits the resulting local equality in §1.11 to units |
| 5.14 | Hat02 line 16327–16346 and 16461–16475, Theorem 4.41 p.376, Proposition 4.48 p.379 | Relative homotopy and CW lifting support the statement; duplicate ownership is R03 |
| 5.15 | Hat02 line 3810–3815, Example 1B.2 p.88; 4042–4058, Example 1B.14 pp.93–94 | Sphere excluded; closed positive-genus universal covers and nonclosed graph models |
| 5.16 | FM12 line 848–852, Theorem 1.2 pp.21–22; 889–900, p.23 | Negative Euler characteristic and cyclic centralizers; torus excluded |
| 5.20 | FM12 line 3580–3635, Theorem 4.6 p.102, Fact 4.7 pp.103–104 | χ<0, marked point and boundary hypotheses; left/right twist difference |
| 7.9 | LV20 line 1178–1187, Proposition 5.3 p.26 | Full monodromy, friendly place, good model and strict size inequality. Source g≥2 was confirmed on the PDF; low-genus proper bases cannot have the stipulated nontrivial full Sp monodromy |
| 8.2 | LV20 line 1749–1765, Lemma 7.4 proof p.38 | Commuting actions and inverse stabilizer; centre-free condition supplies freeness |
| 8.13 | LV20 line 1629–1679, Definitions 7.2–7.3 pp.35–36 | Galois cover versus degree-q quotient, projector and connected Prym kernel |
| 10.5 | LV20 line 2178–2186, Lemma 8.10 p.48; 2247–2288, pp.50–51 | Primitive classes span; intersection graph connected; finite extraction from the infinite construction |
| 10.7 | LV20 line 2103–2118, Lemma 8.7 p.46 | Product density, distinguished factors and preceding monodromy hypotheses |
| 11.1 | LV20 line 1211–1219, Theorem 5.4 proof p.26 | Three conditions on q and the strict inequality; q=107 computation below |

Additional text checks included GX13 Theorem E.1 at line 6049 (Schönflies) and E.3 at 6115 (triangulation) in the available author revision; Stacks tags 0FMM/0FMN at lines 814–837 and 054L/0ECG at lines 3743–3755 and 4920–4925. The latter verifies dimension under finite surjective maps, including closed subsets and nilpotents. Readability limits are listed separately below.

The following table has one row for each of the 167 numbered targets, followed by explicit convention and finding witnesses. `0` for a group denotes the trivial group. Matrix computations use column vectors. For geometric finiteness results, the rows state exactly which hypotheses or reductions were numerically tested; they do not claim to enumerate an arbitrary curve's rational points.

| Target | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| 0.1 | E=ℚ(i), splitting field ℂ; inseparable negative control | E⊗ℂ≅ℂ², dimensions 2=1+1; inseparable degree-p tensor has nilpotents, not p distinct factors | Pass; separability matters |
| 0.2 | E=k², M=k²⊕k; empty index | e₁M=k², e₂M=k, dimensions 3=2+1; empty sum=zero module | Pass |
| 0.3 | E=ℂ/F=ℝ, σ=conjugation, φ=σ on one coordinate; φ=0 | Multiplication by a commutes iff a=ā; centralizer ℝ has dimension 1. For φ=0 all ℂ-linear endomorphisms commute | Pass; bijectivity belongs to the dimension theorem |
| 0.4 | Same example; σ=id on k² with φ=id; V=0 | dim centralizer 1≤1²; 4=2²; 0=0² | Pass; Lean headline |
| 0.5 | A=k, k×k, k[ε]/ε² | Unit conditions a≠0; ab≠0; a≠0 for a+bε, respectively; dimensions 1,2,2 | Pass; nilpotents retained |
| 0.6 | Unramified coefficient extension of degree 8, rank 2; rank 0 | Centralizer bound ≤4 independent of 8; rank-zero bound 0 | Pass; ramified extension is outside hypotheses |
| 0.7 | Aff(5), (2,1),(3,4); Aff(2) | Composition (1,4); order 5·4=20, order Aff(2)=2 | Pass; permutation convention fixed |
| 0.8 | Aff(5): identity, translation, multiplier −1, multiplier 2 | Cycle lengths (1,1,1,1,1), (5), (1,2,2), (1,4) | Pass |
| 0.9 | Aff(3)=S₃; q=2 negative control | Centre and permutation centralizer have order 1; normalizer order 6. At q=2 the centre has order 2 | Pass; q≥3 essential |
| 0.10 | q=3, two commutators | Fibres at translations 0,1,2 have sizes 486,405,405; nonzero total 810, quotient by 6 gives 135 | Pass; direct finite computation |
| 0.11 | k=2,N=6; k=4,N=2; N=1 | Counts 24=36(1−1/4)(1−1/9), 15=16(1−1/16), 1=1 | Pass |
| 0.12 | M=(ℤ/5)², standard pairing; B a line or whole M | Line size 5, square 25=#M, pairing zero; whole M size 25, square 625>25, pairing(e,f)=1/5 | Pass; isotropy separates models |
| 0.13 | Reducible symplectic plane; irreducible plane excluded | Minimal invariant line has dimension 1=2/2; an irreducible plane has no proper nonzero invariant line | Pass |
| 0.14 | ω(e,f)=1; v=e, r=2; v=0 | T_e²(f)=f+2e; N²=0; inverse parameter −2; T₀=id | Pass |
| 0.15 | ℤ and 2ℤ in G_a; disconnected finite subgroup | Both closures G_a, dimension 1; finite image has identity component of dimension 0 | Pass; finite index compares components |
| 0.16 | n=1,2,3; n=0 excluded; opposite characteristic | Dimensions 3,10,21 equal n(2n+1); n=0 gives zero algebra, not simple | Pass at stated char 0; source basis typo below |
| 0.17 | Sp₂; zero space excluded | Centre {I,−I}, order 2; Lie centre 0. Sp(0) has order 1 | Pass |
| 0.18 | GL₂ acting on a nonzero vector; zero vector | Orbit dimensions 2=4−2 and 0=4−4 | Pass |
| 0.19 | Powers of T_e over ℚ; characteristic-p negative control | T_e^n=I+nN, infinite parameters; in char p, T_e^p=I and at most p parameters | Pass; char 0 essential |
| 0.20 | e,f in a symplectic plane; parallel vectors | Pairing 1 gives upper/lower root groups and dim SL₂=3; pairing 0 gives only one root group, dim 1 | Pass |
| 0.21 | Two orthogonal symplectic planes; add e₁+e₂; infinite S of R04 | Graph components 2→1; generated closures dimensions 6→10; infinite star has every edge value 1 and spans ℚ² | R04: restore arbitrary S |
| 0.22 | sl₂ diagonal versus full product | Surjective projections in both cases; dimensions 3 versus 6; kernels 0 versus sl₂ | Pass; both alternatives realized |
| 0.23 | sl₂×sl₂ | Four factor ideals have dimensions 0,3,3,6; diagonal dimension 3 is not an ideal: bracket with (e,0) leaves diagonal | Pass |
| 0.24 | Three sl₂ factors; pairwise diagonal identification | Full product dim 9, total diagonal dim 3; pairwise onto fails on each diagonal pair | Pass |
| 0.25 | Sp₄×Sp₄ with (transvection,I) | Fixed-space dimensions 3 and 4; product dimension 20, graph dimension 10 | Pass; unbalanced pair excludes graph |
| 0.26 | One factor and two factors; diagonal negative control | One factor conclusion dim 3; two independent Sp₂ factors dim 6; diagonal dim 3 fails pairwise test | Pass |
| 1.1 | Trivial rank-two rep versus nontrivial unipotent extension | Both traces 2 on every element; image-algebra rank bound 2d²=8; representations need not be isomorphic | Pass; target compares traces without assuming semisimplicity |
| 1.2 | Rank 0; rank-one weight-zero integral pure characters; nonsemisimple extension | Rank-zero class count 1; rational weight-zero eigenvalues ±1; trivial/unipotent rank-two traces both 2 | Pass; semisimplicity retained |
| 1.3 | ℚ, ℚ(i) | Conjugation identity on ℚ; i↦−i has order 2 on ℚ(i), fixed subfield degree 1 | Pass |
| 1.4 | ℚ(i); ℚ(∛2); ℚ | Maximal CM-or-real fields ℚ(i), ℚ, ℚ; degrees 2,1,1 | Pass |
| 1.5 | K=ℚ(i), primes 2,3,5 | 2 ramified; 3 inert with residue degree 2 and friendly; 5 split with degree 1 and not friendly | Pass |
| 1.6 | Embeddings of ℚ(i), exponents (0,1); totally real ℚ | Conjugate sums 1=1; over ℚ the relation is 2m=w, so w=1 has no integral solution | Pass |
| 1.7 | F=ℚ_p, u=1+p; uniformizer p | χ(Art(u))=(1+p)⁻¹; χ(Art(p))=1, not p⁻¹ | Pass; units/inertia distinction |
| 1.8 | Trivial global character and a principal idele | Every local factor 1, product 1; principal idele's global Artin value 1 | Pass |
| 1.9 | K=ℚ(i), inert place over 3, place-constant exponents | Both exponents m, conjugate sum 2m=w; w=2 gives m=1; w=1 impossible | Pass |
| 1.10 | χ_cyc⁻¹ and its dual | Exponents 1,1 sum 2=weight; dual exponents −1,−1 sum −2 | Pass; seeded target |
| 1.11 | χ_cyc⁻¹, unit u and uniformizer p | On units η²Art(u)=u²=Norm(u)²; on p left 1, proposed unrestricted right has valuation 2 | Pass as written on units; source error below |
| 1.12 | Jumps −1,+1; zero space; nonstrict bijection | t_H=−1+1=0, mean 0/2=0; rank 0 has no mean; identity from jump 0 to jump 1 has 0<1 | Pass |
| 1.13 | H¹ of a good elliptic curve; ℚ_p(1) | H¹ jumps 0,1: t_H/rank=1/2=w/2; twist gives −1=−2/2 | Pass |
| 1.14 | Induction of the unit from degree-r extension | Rank r, de Rham dimension r; filtration concentrated at 0, t_H=0 | Pass; crystalline variant needs unramified extension |
| 1.15 | Degree-two extension, unit representation; induced twist | Weighted sums 0=2·0; for twist, −2=2·(−1) | Pass; local degrees supply multiplicities |
| 1.16 | Elliptic H¹; dimension-zero abelian variety | Ranks 2 and 0; elliptic Hodge jumps 0,1; determinant has weight 2 and pairing target ℚ_p(−1) | Pass |
| 2.1 | Fixed elliptic A over split degree-two cover; empty cover | Geometric fibre A⊔A, H¹ rank 4=2·1·2; empty fibre rank 0, not A×A as a fibre | Pass |
| 2.1a | Constant line, coordinate t; square-zero base | ∇(t·1)=dt while t∇1=0; curvature d²=0; dε need not vanish though ε²=0 | Pass; base-linearity retained |
| 2.2 | Legendre λ=0,2 over ℤ[1/2]; doubled-origin control | Δ(0)=0, Δ(2)=64 a unit after inverting 2; two extensions at the doubled special point violate separatedness | Pass |
| 2.3 | Constant elliptic family with discriminant −64 | Inverting 2 makes Δ a unit; enlarging S again retains the identical generic family | Pass |
| 2.4 | Degree-two split cover, elliptic fibres | E=k², E-rank H¹=2, k-rank=4; F¹ ranks (1,1), total 2 | Pass |
| 2.5 | A¹ over ℤ_p at reduction 0; two coordinates | Residue fibre pℤ_p, not all ℤ_p; m=2 gives (pℤ_p)², reduction identically (0,0) | Pass |
| 2.6 | y′=y, y(0)=1; zero initial value | Coefficients 1/n! and 0; recurrence (n+1)a_(n+1)=a_n | Pass; characteristic-zero denominators |
| 2.7 | exp(z), p=3; p=2, n=2^k | v₃(3^n/n!)≥n/2→∞; v₂(2^(2^k)/(2^k)!)=1, so terms do not tend to zero | Pass; p>2 is used |
| 2.8 | y′=y over ℂ | Ratio of successive absolute terms at z is abs(z)/(n+1)→0; unique normalized solution exp(z) | Pass |
| 2.9 | Constant connection; scalar equation y′=y | T(a,b)=1 or exp(b−a); T(b,c)T(a,b)=exp(c−a), T(a,a)=1 | Pass |
| 2.10 | Noncommuting A=[[1,1],[0,1]], B=[[1,0],[1,1]] | AB=[[2,1],[1,1]]; (AB)⁻¹=[[1,−1],[−1,2]]=B⁻¹A⁻¹ | Pass; opposite-group convention |
| 2.11 | Constant crystalline family; unit Tate line | Transport 1 gives φ_yT=Tφ_0=φ_0; ℚ_p(1) has φ=p⁻¹σ | Instance passes; BO78 locator unread |
| 3.1 | Symplectic plane, a line and the whole plane | Line dimension 1 and orthogonal dimension 1; whole plane dimension 2, pairing(e,f)=1 so not isotropic | Pass |
| 3.2 | Prescribed vector 2e; characteristic two | ω(2e,f/2)=1; inverse-transpose formula PᵀP⁻ᵀ=I also in char 2 | Pass; differs from unprescribed adapted basis |
| 3.3 | Lines ke,kf in k² | Matrix [[0,−1],[1,0]] has determinant 1 and sends ke to kf | Supplied result, not a new proof |
| 3.4 | Graphs in k² and k⁴ | In rank one every 1×1 matrix symmetric; [[0,1],[0,0]] has antisymmetric defect [[0,1],[−1,0]]≠0 | Pass |
| 3.5 | d=1, axes and diagonal | Charts transverse to ke and kf cover ℙ¹; diagonal intersects each axis in dimension 0 | Pass |
| 3.6 | d=0,1; dual-number graph | LGr=Spec k or ℙ¹; graph slope ε over k[ε]/ε² differs from slope 0 despite equal geometric points | Pass; actual functor retained |
| 3.7 | d=0,1,2,3 | Dimensions 0,1,3,6 equal d(d+1)/2; standard charts have those parameter counts | Pass |
| 3.8 | E=k², V=E²; W=k²×0 | Correct component ranks (1,1), total 2; W has ranks (2,0), same total 2 but is rejected | Pass |
| 3.9 | E=k²,d=1; degree-3 field factor | Period dimensions 2=2·1 and 3=3·1; split varieties (ℙ¹)² and (ℙ¹)³ | Pass |
| 3.10 | A¹_ℂ and two disjoint copies | Algebraic and analytic component counts 1 and 2 respectively | Pass |
| 3.11 | Constant A over t=u²; zero family; Legendre | Permutation image order 2 rather than 1; zero family has Γ=Sp(0)=1; Legendre closure dimension 3 | R05: qualify trivial-cover claim |
| 3.12 | Constant transported filtration; changing frame | T=1 gives Φ(y)=F¹, Φ(y₀)=h₀; T sends T⁻¹F¹ back to F¹ exactly | Pass |
| 3.13 | Same constant family; backward deck transport | Period constant h₀; equivariance uses B⁻¹A⁻¹, not A⁻¹B⁻¹, for the two matrices above | Pass |
| 3.14 | Constant frame; scalar horizontal exp series | Coefficients (1,1,1/2,1/6,…) are the same over ℂ and K_v; different evaluations use the same coefficients | Pass |
| 3.15 | Constant family | Orbit of h₀={h₀}; period-image closure={h₀}, both dimension 0 | Pass; no unconditional density |
| 3.16 | f=z₁; zero series | Nonzero f at (a,0,…)=a≠0 for nonzero small a; zero series evaluates to 0 everywhere | Pass; an open polydisk is essential |
| 3.17 | Formal map z↦(z,z²) | Relation Y−X² evaluates to 0 over both fields; image closure is the same parabola of dimension 1 | Pass |
| 3.18 | Full Sp₂ action; constant-family negative control | Orbit ℙ¹ dimension 1 versus constant orbit dimension 0; full-monodromy hypothesis distinguishes them | Pass |
| 3.19 | f=z(z−p) on pℤ_p; m=2 control f=z₁ | Zero set {0,p}, size 2; two-variable zero set {0}×pℤ_p infinite | Pass; curve hypothesis matters |
| 4.1 | Elliptic good reduction; ℚ_p(−1) trace line | H¹ dimensions 2=2, filtration dimensions 2,1,0; trace line has jump 1 and φ=pσ | Pass |
| 4.2 | Constant filtration, φ diagonal | T=id gives identical φ and filtration on both sides; changing filtration alone changes the filtered object | Pass |
| 4.3 | Rank-two φ with distinct eigenvalues | Centralizer dimension 2; scalar φ gives dimension 4; both ≤2² | Pass |
| 4.4 | Local degree 8,d=1; constant family control | c≤4<8=period dimension; constant period closure dimension 0 cannot satisfy c<dim Z | Pass; headline criterion |
| 4.5 | d=4 with simple Frobenius spectrum; scalar control | Centralizer dim 8<10=dim LGr₄; scalar centralizer dim 64 fails inequality | Pass; headline hypotheses discriminate |
| 5.1 | Disk, annulus, punctured torus | Types (0,1,0),(0,2,0),(1,0,1); χ=1,0,−1 | Pass; puncture differs from boundary chart |
| 5.2 | Unit circle, identity and reflection | Plane extensions z↦z and z↦z̄ restrict exactly; reflections reverse orientation but remain allowed homeomorphisms | Pass; Lean headline |
| 5.3 | Tetrahedral sphere; triangulated disk | Sphere V−E+F=4−6+4=2, every edge has two faces; disk has boundary edges in one face | Pass |
| 5.4 | Sphere, torus, pair of pants | χ=2,0,−1; formula 2−2g−b gives 2,0,−1; boundary counts 0,0,3 distinguish types | Pass |
| 5.5 | Torus and annulus | Torus matrix [[0,1],[−1,0]], determinant 1; annulus rank-one H₁ has zero form and radical rank 1 | Pass; comparison sign handled in R01 |
| 5.6 | g=2 closed; g=1,b=1; g=0,b=3 | H₁ ranks 4,2,2; radical ranks 0,0,2 | Pass |
| 5.7 | Torus cut along a nonseparating curve; separating sphere equator | Torus becomes annulus, χ stays 0; sphere becomes two disks, total χ=2 | Pass |
| 5.8 | Torus slopes (2,3) and (2,0) | gcds 1 and 2: first primitive embedded loop, second cannot represent nonzero embedded class | Pass |
| 5.9 | Disk, annulus, three-punctured sphere | Mapping class groups 1, ℤ, S₃; pure three-punctured group 1 versus full group order 6 | Pass |
| 5.10 | Two primitive torus classes e and 2e+3f | gcds 1,1; matrix [[2,1],[3,2]] determinant 1 sends e to 2e+3f | Pass |
| 5.11 | One annular twist; inverse orientation | Lifted angle displacement across annulus 1; inverse twist displacement −1; boundary points fixed modulo ℤ | Pass |
| 5.12 | Torus a,b, î(a,b)=1; separating curve | T_b(a)=a+b; T_a(b)=b−a; matrices as README; separating class gives zero intersection contribution | Pass |
| 5.13 | (2,3),(2,0),(0,0) in torus H₁ | gcd 1,2,0; first represented, second not; zero excluded from the iff | Pass |
| 5.14 | Hopf bundle S³→S²; identity fibration | Boundary ℤ→ℤ is ±1, kernel/cokernel 0; point fibre gives π_n(E)≅π_n(B) | Mathematical test passes; R03 ownership |
| 5.14a | g=1 square; g=2 regular octagon | Vertex angle sums 4·π/2=2π and 8·π/4=2π; χ=0 and −2 | Pass |
| 5.15 | Torus, annulus, disk; sphere negative control | Universal covers ℝ², strip, disk have π₂=0; sphere has π₂=ℤ | Pass; seeded target |
| 5.16 | Once-punctured torus and closed genus two; torus control | Centres of F₂ and genus-two group are 1; torus centre ℤ², χ=0 excluded | Pass |
| 5.17 | Evaluation at a marked point; local translation supported in a disk | Identity evaluates to that point; supported translation moves it by vector v and is identity outside the disk | Pass; local sections discriminate evaluation from constant map |
| 5.18 | Closed genus two; torus control | χ=−2 gives contractible identity component, π₁=0; torus identity component has π₁=ℤ² | Pass; χ<0 needed |
| 5.19 | Trivial loop and nontrivial push | Trivial loop gives identity mapping class; conjugation by a noncentral loop differs from identity on a crossing generator | Pass; basepoint/loop direction retained |
| 5.20 | Genus-two simple push; noncommuting loop pair | Push is T_left T_right⁻¹; on closed H₁ homologous curves give equal and opposite contributions, net 0 | Pass; kernel of forgetful map, not trivial marked mapping class |
| 5.21 | Annulus cap; three-punctured sphere | Boundary twist integer 1 maps to disk class 0; full puncture permutations give S₃→1 after forgetting all | Pass; kernel not asserted trivial |
| 5.21a | Rank-two symplectic lattice | Elementary shears [[1,1],[0,1]], [[1,0],[1,1]] have determinant 1; field-only generation does not supply integral Euclidean reduction | Pass |
| 5.22 | Genus one; genus zero | Image SL₂(ℤ)=Sp₂(ℤ); rank-zero target Sp₀=1 | Pass |
| 5.23 | Configuration of two points on genus-two surface | Base π₂=0, punctured fibre π₁=F₄; kernel injection follows from 0→F₄ term | Pass; use base π₂, not fibre π₂ |
| 5.24 | Degree-n circle cover; degree-one cover | Lift exists iff subgroup nℤ is preserved; deck ambiguity ℤ/n, trivial when n=1 | Pass; general lifting mechanism tested |
| 5.25 | Degree-r lift of annulus twist, r=3 | T_base³ lifts to T_lift¹; exponent 1/r is avoided by divisibility | Pass |
| 5.26 | Constant family of labelled covers over a disk | Base π₁=0, monodromy image 1; continuation around a nontrivial base loop permutes labels by its covering action | Pass |
| 6.1 | ℚ, S={2}; adjoin μ₈ | Solutions t=−1,2,1/2 remain solutions after extension; m≥8 in the enlarged field | Pass; finite generation is supplied |
| 6.2 | K=ℚ(ζ₈), adjoining an eighth root of ζ₈ | Extension ℚ(ζ₆₄), degree φ(64)/φ(8)=32/4=8; only prime 2 ramifies | Pass |
| 6.3 | Cyclic degree-8 extension, generator Frobenius | Order 8 gives one local factor of degree 8; identity Frobenius instead gives eight factors of degree 1 | Pass; inertness condition discriminates |
| 6.4 | λ=−1,1/2,0; char 2 | (Δ,c₄,j)=(64,48,1728),(1,12,1728); Δ(0)=0; char 2 gives Δ=0 | Pass; supplied coefficient model |
| 6.5 | Legendre generators U=[[1,2],[0,1]], L=[[1,0],[−2,1]] | Both unipotent, fixed dimensions 1; independent upper/lower root directions give closure dim 3; integral group excludes −I | Pass |
| 6.6 | Two SL₂ factors, (U,I) | Fixed dimensions 1 and 2 exclude graph; product dimension 6 versus graph 3 | Pass |
| 6.7 | Cyclic Legendre variant m=8 | Eight Sp₂ factors, total dimension 24; each individual factor dim 3 | Pass |
| 6.8 | λ=−2 and 4 | j-values 21952/9 and 35152/9, distinct; numerator/denominator computation retains bad parameters separately | Pass; nonconstant j supports finite exceptional fibres |
| 6.9 | Local degree m=8,d=1 | Centralizer bound 4<8=period dimension; m=1 would give 4<1 false | Pass |
| 6.10 | ℚ, S=∅ and S={2} | Solution counts 0 and 3; latter pairs (−1,2),(2,−1),(1/2,1/2) | Pass; native Lean S-unit headline |
| 7.1 | Empty set; 7-cycle; 8-cycle; fixed point plus 8-cycle | size=0,1,0,1/9 respectively | Pass; threshold is strictly less than 8 |
| 7.2 | Split quadratic and unramified quadratic local algebra | Orbit lengths (1,1) versus (2), equal to local degrees | Pass |
| 7.3 | k[ε]/ε²→k on spectra; degree-two A¹ map | Dimensions 0=0 and 1=1; nilpotents do not change Krull dimension | Pass |
| 7.4 | d=1,r=5, all lines equal versus distinct e,f | Bad locus small diagonal dim 1<5; no line W equals both ke and kf | Pass |
| 7.5 | d=1,r=5, φ^r with distinct eigenvalues | At most two invariant lines; descended ambient bad locus may have dimension 1<5 rather than dimension 0 | Pass; no false claim that bad locus itself is finite |
| 7.6 | d=1, one fixed point plus one 8-cycle; empty control | size=1/9<1/2; contradiction inequality would require 1≥8; empty has size 0 but n=0 excluded | Pass |
| 7.7 | Identity cover and empty cover | Identity size=1, fails <1/(d+1); empty degree=0 fails n≥1 | Pass; prevents vacuous generic simplicity |
| 7.8 | d=1, local degree 8; d=2, degree 8 | Dimension comparisons 4<8 and 16<24 | Pass |
| 7.9 | Identity cover; empty cover on ℙ¹; q=107 KP dimensions | Identity subset empty since 1≥1/(d+1); empty cover n=0 excluded; KP cutoff 1/160 | Pass on boundary hypotheses; seeded headline |
| 8.1 | ℙ¹, elliptic curve, genus-two curve | H₁ ranks 0,2,4 equal 2g; Euler characteristics 2,0,−2 | Pass |
| 8.2 | Γ=G=S₃, φ=id, a a 3-cycle | Stabilizer pair (a,a⁻¹) acts trivially; (a,a) induces nontrivial conjugation by a, since a²≠1 | Pass; inverses and opposite group necessary |
| 8.3 | Overgroup equal to Γ; centre-free S₃ | Extension restricts to original action; stabilizer inverse h=φ(γ)⁻¹ is unique; centralizer size 1 | Pass |
| 8.4 | Punctured-disk cover z↦z³ | Normalized extension has one point over 0 of ramification index 3; unramified off 0 | Pass |
| 8.5 | q=3,g=2 | 810 surjections, free conjugation orbits of size 6, hence 135 geometric Hurwitz points | Pass |
| 8.6 | Peripheral 3-cycle, cyclotomic exponent 2 | c↦c² stays nontrivial of order 3; exponent divisible by 3 would send c to 1 and is not a unit | Pass |
| 8.7 | Aff(3), g=2, inertia 3 | Degree-6 Galois fibre: 2g_Z−2=6·2+2·2=16, so g_Z=9 | Pass |
| 8.8 | q=3 permutation and regular representations | e-image dimensions 1 and 2=q−1; e acts as 1 on (2,−1,−1) for its point stabilizer and kills constants | Pass |
| 8.9 | ε=0, [n], and product projection; m=2 polarization | Connected kernels A,0,and E×0; restricted polarization degree 2, kernel rank 4, not degree 4 | R02 |
| 8.10 | Trivial G-action; q=3,g=2; genus-zero curve | e=0 gives connected kernel 0; KP Prym dimension 3; genus 0 fails stated supplier range | Pass; R06 citation repair |
| 8.11 | C=ℂ/(ℤ+iℤ), a=1,b=i | H₁ rank 2=2; î(a,b)=1 but positive Riemann E(a,b)=−1, E(Ja,a)=1 | R01 |
| 8.12 | q=3,g=2 | Quotient genus 5; primitive dimension 10−4=6=2·3; intermediate pushforward multiplier q−1=2 | Dimension/transfer pass; R01 fixes polarization sign |
| 8.13 | q=3,g=2 and q=107,g=2 | Relative Prym dimensions (3·2)/2=3 and (3·106)/2=159; finite-cover fibre count 135 for q=3 | Pass; seeded construction |
| 8.14 | q=3,g=2, linear-part quotient | Nonzero classes in H¹(Y,ℤ/2): 2⁴−1=15; 135 Hurwitz points give constant fibre size 9 | Pass |
| 9.1 | q=3,g=2; connected cyclic triple cover control | Degree-3 quotient genus 5; cyclic monodromy order 3≠6=Aff(3), hence excluded | Pass |
| 9.2 | Identity cover; disconnected double cover | Primitive kernel 0; double-cover kernel {(x,−x)}, dimension equals base H₁ rank | Pass |
| 9.3 | Trivial double cover | tr(x)=(x,x), push(a,b)=a+b; push·tr=2id; kernel pairing on (x,−x),(y,−y) is 2î(x,y) | Pass |
| 9.4 | Identity mapping class; finite common stabilizer | Identity acts I on every primitive factor; passing to index k subgroup leaves connected Zariski closure unchanged | Pass; image not arbitrary data |
| 9.5 | q=3, identity permutation versus 3-cycle | Numbers of lifted components 3 and 1; independent component classes have those ranks in the stated nonseparating case | Pass |
| 9.6 | q=5 cycle types identity, translation, order 2, order 4 | Component counts 5,1,3,2; primitive ranks k−1=4,0,2,1 | Pass |
| 9.7 | q=3, fixed sheet plus one 2-cycle | Primitive v=e⁺−(1/3)tr(e), push(v)=e−e=0; unique fixed sheet specifies e⁺ | Pass |
| 9.8 | q=3 and ω(v,x)=1; two distinct sheets | Lift action x+3î(x,v)v=x−3v=T_v^(−3)x; projected intersection 0−1/3=−1/3 | Pass; sign recomputed |
| 9.9 | Genus-one surface with two boundaries | H₁ rank 3, radical rank 1; quotient Sp₂=SL₂, radical shears have two integer parameters | Pass |
| 9.10 | Covector (2,2) modulo 3; rank-one control modulo 5 | Lift (5,2), gcd=1 and reduction (2,2); 2 mod5 has no rank-one primitive lift ±1 | Pass; rank≥2 needed |
| 9.11 | q=3,g=2 | Trivial-cover genus-one part has three sheets; total H₁ rank 10, base rank 4, primitive rank 6 | Pass |
| 9.12 | q=3 affine normal form, multiplier 2 and translation 1 | Multiplication has one fixed sheet and a 2-cycle; translation has one 3-cycle; q labelled fixed-sheet curves supply 3 choices | Pass |
| 10.1 | q=3,g=2 | 3I−J on three sheet classes has eigenvalues 0,3,3 and rank 2; full unipotent has N²=0 and fixed dimension 6−2=4 | Pass |
| 10.2 | q=5, c₁=2,c₂=3, cancel first with m=3 | Translation parameters 2+3=0 and 3+3=1 mod5; cycle types (1⁵) and (5) | Pass; factor distinction |
| 10.3 | Rank-two representatives e₁,e₂,e₁+e₂; rank-one control | Difference matrix columns (−1,1),(0,1) has determinant −1; one representative in rank 1 yields span dimension 0 | Pass; general arbitrary-sign route uses annihilators |
| 10.4 | ℓ₁(x,y)=x, ℓ₂(x,y)=y, B=10; zero-form control | w=(11,12), gcd=1, values 11,12>10; zero form value 0 cannot exceed 10 | Pass |
| 10.5 | q=3,g=2; same/different sheet coefficients | Primitive dimension 6; intersection coefficients 1−1/3=2/3 and −1/3 are both nonzero; finite connecting paths keep spanning rank 6 | Pass; seeded construction |
| 10.6 | q=3,g=2; any finite-index subgroup | Closure Sp₆ dimension 3·7=21; nonzero parameter −3 has infinite integer multiples in characteristic zero | Pass |
| 10.7 | q=3,g=2, 135 factors | Product dimension 135·21=2835; diagonal two-factor dimension 21 versus product 42 is excluded by unequal fixed dimensions | Pass; seeded headline ingredient |
| 10.8 | Normal subgroup product of selected factors; finite centre | Connected factors have dimensions 21 each; finite centre has dimension 0, with at most 2^N geometric points | Pass |
| 10.9 | q=3,g=2 | Each factor contains noncentral unipotent of rank(N)=2; connected normal projection therefore dimension 21, total 2835 | Pass; headline reduction |
| 10.10 | Same KP family | 135 Prym factors of H¹ rank 6; required full-monodromy product has dimension 2835, matching §10.9 | Pass; headline comparison |
| 11.1 | K=ℚ,g=2,q=107 | q−1=106=2·53, d=159; 64/106²=16/2809<1/160 since 2560<2809 | Pass; seeded target |
| 11.2 | K=ℚ,p=373, modulo 53 | 373≡2; ord₅₃(2)=52≥8; p odd and unramified in ℚ; avoidance of S remains an explicit condition | Pass |
| 11.3 | Rank-two piece modulo 5, multiplier q_v⁻¹ for q_v=2 | Pairing(e,f)=1, arithmetic multiplier=3 rather than 2; diag(1,3) gives pairing 3 | Pass; inverse Tate twist |
| 11.4 | N=106,g=2; exact 8-cycle boundary | Fixed-kernel bound 2²·106²=44944, total 106⁴=126247696; an 8-cycle contributes 0 to size | Pass; source endpoint corrected |
| 11.5 | q=107,g=2 | Stated size upper bound 64/106²=16/2809<1/(159+1); denominator positive 160 | Pass |
| 11.6 | Smooth genus-two curve; elliptic and nonreduced controls | dim H¹(O)=2 gives 2≤2; elliptic genus 1 fails; square-zero thickening fails smoothness over the field | Headline hypotheses pass; no claimed enumeration of points |
| Conventions: paths | Noncommuting transports A,B from §2.10 | B⁻¹A⁻¹=[[1,−1],[−1,2]], A⁻¹B⁻¹=[[2,−1],[−1,1]], unequal | Pass; same order used in suppliers and lifted actions |
| Conventions: duality and Tate twist | H¹ elliptic, its Tate module, ℚ_p(1) | Hodge jumps (0,1), (−1,0), (−1); weights 1,−1,−2 for geometric purity | Pass |
| R01 repair | Square elliptic lattice with E=−î | E(Ja,a)=−î(b,a)=1>0; E(a,b)=−1; Q(a,b)=1 | Repairs the refuting instance |
| R02 repair | Product with second factor O(2[0]) | h⁰=2, restricted h⁰=2; rank ker λ=4 before and after restriction | Repairs the refuting instance |
| R03 repair | Hopf fibration | Existing supplier boundary has abs(degree)=1; kernel/cokernel both 0 | Same mathematics, one owner |
| R04 repair | Infinite star S={e}∪{f+ne} | ω(e,f+ne)=1; support {e,f} spans dimension 2 and generates closure dimension 3 | Arbitrary-set version covers it |
| R05 repair | Constant elliptic factor over t=u² | Swap matrix [[0,I₂],[I₂,0]] has order 2, trace 0, determinant 1; finite image dimension 0<6 | Finite monodromy, trivial only with trivial permutation action |
| R06 repair | Elliptic Jacobian; trivial filtered line; closure of ⟨2⟩⊂G_m | Pic⁰(E)=E, principal degree 1; mean 0/1=0; vanishing ideal of ⟨2⟩ is 0 | Existing supplier sections deliver the intended data |
| R07 repair | Four headline sections, five signatures | Missing layer-heading count 4→0; declaration count 5→5, admitted theorem count 4→4 | Form-only repair |

## Not verifiable

- **BO78, Corollary 7.4, p.7.4**, used in §2.11: the sources service could not retrieve a readable legal copy. Title lookup found none; the Boston University institutional link failed certificate validation; the Hawaii institutional link returned 404. No certificate bypass was attempted. The crystalline/connection supplier contracts were inspected, but this source locator remains uncertified. The missing-reference record is retained; this review is finished, not parked.
- **Fal83, §6, proof of Satz 5, pp.362–363**: the DOI resolved as paywalled/uncertified; the Digizeitschriften PDF returned 404. No claim is made to have read those pages. LV20 Lemma 2.3 and the actual Frobenius-test/Weil-polynomial supplier statements were available. No renewed request is made for this uncertified text.
- **GX13 edition identity**: the legal author PDF available is dated January 2025, rather than the cited 2013 edition. The read revision has Theorem E.1 on printed p.160 and E.3 on pp.161–163, matching the roadmap's locators; complete identity of the two editions was not certified.
- Ownership against additional open roadmap folders for which the brief supplies no checkout was not checked. Search-index hits alone were not treated as evidence of a competing owner.

## Source issues

- **Misprint** in Mil-LAG at Example C_n, printed p.94: the source says the displayed M/P/Q list is a basis, omitting M_ii and making P antisymmetric; it should be the list including M_ii and symmetric upper-right entries; affects the proof.
- **Error** in LV20 at Lemma 2.8, printed p.12: the source says the finite-order-times-norm identity holds on the whole local multiplicative group; it should be an identity on units, leaving an unramified factor unrestricted; affects a stated result.
- **Misprint** in LV20 at proof of Theorem 5.4, printed pp.27–28: the source says the fixed-space estimate applies through i=8 although the multiplier may have order eight; it should be applied for 1≤i≤7, covering orbits of size less than eight; affects the proof.
- **Misprint** in LV20 at proof of Lemma 7.4, printed p.38: the source says vanishing π₂ of the punctured fibre gives injectivity of its fundamental group; it should be vanishing π₂ of the closed base Y; affects the proof.
- **Gap** in LV20 at Lemma 2.3 and proof of Proposition 3.4, printed pp.9,20: the source says the cohomological representations satisfy finiteness requiring unramifiedness outside S, while the chosen p lies outside S; it should be applied with S enlarged by the places above p; affects the proof.

These are source issues, not additional roadmap findings: §1.2 already enlarges the ramification set, §1.11 uses units, and §11.4 uses the strict short-orbit range. For the Milne basis slip, n=1 gives only one nonzero displayed vector instead of dimension 3; correcting the diagonal range and upper-right sign gives the usual three-dimensional sl₂ basis. For the LV endpoint slip, on (ℤ/17)² the similitude diag(1,2) has multiplier of order 8 and T⁸=I, so ker(T⁸−I) is the whole nonisotropic plane. Source locations are Mil-LAG line 3914–3923 (also inspected on the PDF page); LV20 line 549–554, 1270–1288, 1776–1779 and 425–437 respectively.
