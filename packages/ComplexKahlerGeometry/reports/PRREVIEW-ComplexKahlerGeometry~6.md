# Review of ComplexKahlerGeometry (pull request #1398 at 5f4f6e1)

**Verdict:** accepted

No new findings or remaining blocking findings. This folder is ready for human final approval; this review does not approve or merge the pull request.

:robot: Independent AI review. Incremental re-review of 124 changed lines since 7ddea98: the complete diff, every previous finding, changed supplier references and their dependent passages, the corrected source locator, and the unchanged acceptance signatures. The earlier mathematical checks below are explicitly attributed to the previous report rather than presented as fresh checks.

## Previous findings

- R01 — repaired: `PlanarHodgeTargets.lean` is deleted. README §5.5 retains the C¹/C² formulas; `Suggested.lean:35–37` explains the missing rough-form comparison. No coefficient substitute remains.
- R02 — repaired: deletion removes the companion's submodule imports, missing docstrings and undocumented names. The remaining Lean file has one `import Mathlib`, the required module docstring and five documented theorems.
- R03 — repaired: deletion removes the companion's four elementary identities and squared-distance target. Their mathematical examples remain in README §5.5; no replacement padding was introduced.
- R04 — repaired: `README.md:151–154, 892, 1399, 1406, 2338` now use the pinned Mathlib Levi-Civita connection, SBC B2.2's metric data, DG5.3's curve-integral agreement, explicit polar forms and IndexTheory I7, item 4.
- R05 — repaired: `README.md:32–40` records the four later roadmaps and the overlapping constructions, with ownership here and reconciliation there. The addition introduces no supplier edge; the dependency check still reports zero problems.
- R06 — repaired: `README.md:1842–1847` puts Demailly Example 4.6 on the submanifold claim and proves the curve claim by degree. `Suggested.lean:20–27` now distinguishes the missing constructions and the extensive relation-module encoding.
- R07 — not repaired: the item-disjoint mutual citations remain in `README.md:2552–2616`. The previous report required no repair here; its nonblocking disposition is carried forward. The changed connection citation adds no roadmap dependency.

## Verified sound

### Scope, gate and elaboration

The reviewed head is exactly `5f4f6e1fd2e6d6b4074f0032af3d2f11fd0f9065`. The complete outside-folder diff is empty, the worktree is clean, and the deleted companion is absent. No pull-request file was edited. The changes introduce no algorithm, copied source passage, route restriction, sorry'd data, empty predicate, or option override.

The worker's gate, including the targeted module build, passed at this head. I reran the gate: all reported counters were zero and its result was OK. I separately ran `lake env lean` on `TauCetiRoadmap/ComplexKahlerGeometry/Suggested.lean`: exit 0, exactly five warnings, all for `sorry`. The rerun gate did not print a build counter; the direct elaboration is independent confirmation of the worker's build result.

The required movable dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The earlier report's caveat about item-disjoint mutual citations between merged roadmaps remains; this output does not independently establish a global item-level acyclicity theorem. I reopened the relevant ordering explanations in `TauCetiRoadmap/RealAnalyticGeometry/README.md:1028`, `TauCetiRoadmap/AlgebraicTopology/README.md:1595`, and `TauCetiRoadmap/DGFloer/README.md:159`; the repairs do not alter that disposition.

### Changed suppliers and pinned APIs

Eight roadmap references in the changed passages were resolved against their permitted copies: DifferentialGeometry and SmoothBundlesConnections on main; the six named open heads below. A fresh citation-resolution run found no unresolved cross-roadmap reference. That run explicitly did not scan pinned Lean packages, so its result was not used as evidence about library declarations.

| Reference | Text opened and conclusion |
|---|---|
| Mathlib Levi-Civita | `Mathlib/Geometry/Manifold/VectorBundle/CovariantDerivative/LeviCivita.lean:152, 172, 205, 359, 364, 408`: the actual connection, Koszul formula, metric compatibility and torsion-freeness. Inputs include a finite-dimensional real model, a C² manifold and C¹ Riemannian metric. The roadmap's smooth positive-definite setting supplies these; the native construction does not itself assert all higher smoothness needed by the operator development. |
| SBC B2.2 | `TauCetiRoadmap/SmoothBundlesConnections/README.md:607–619`: explicit continuous positive-definite fibre products on fixed fibres, conjugate-linear first slot. No nonexistent bundled `ContinuousFiberMetric` is claimed. |
| DG5.3 | `TauCetiRoadmap/DifferentialGeometry/README.md:518–523`: interval Stokes and agreement with `curveIntegral`. The planar derivative convention is also present at lines 572–574. This is the agreement now used in the four-arc computation. |
| GlobalHolomorphicFunctions §§0.3, 2.5, 7.2 | `TauCetiRoadmap/GlobalHolomorphicFunctions/README.md:382, 953, 1808`: Cauchy–Green, finite-rank Runge and planar forms/exactness are indeed stated there. Their attribution as overlapping later work is accurate; they are not imported here. |
| PseudodifferentialOperators P1.0 | `TauCetiRoadmap/PseudodifferentialOperators/README.md:152, 374–413`: bounded-order differential operators, finite Taylor jets, bilinear density transpose and metric adjoint. |
| LieGroupoidsPoisson G1.3 | `TauCetiRoadmap/LieGroupoidsPoisson/README.md:637–687`: both the manifold algebroid complex and a separate all-degree finite-dimensional real Lie-algebra complex are specified. The new ownership paragraph identifies the latter. |
| DeRhamCohomologyAndDuality DR.3.8/DR.4.4 | `TauCetiRoadmap/DeRhamCohomologyAndDuality/README.md:358–375, 405–429`: relative cone differential, relative integration and compact-support evaluation. The boundaryless contract here is the overlap named in the repair. |
| VariationalMethods §§5.1–5.2 | `TauCetiRoadmap/VariationalMethods/README.md:846–863, 885–897`; `Suggested.lean:185, 206, 219`: all three `CompactFormPair` names exist in that supplier. These are planned supplier declarations, not declarations asserted to exist in the libraries. The worker's three resolver leads are therefore not defects. |
| IndexTheory I7, item 4 | `TauCetiRoadmap/IndexTheory/README.md:758–776`: consumes the genus/Betti/Dolbeault and integral-intersection dictionary, exactly as the corrected consumer reference says. |

For the docstring repair I opened `Mathlib/Geometry/Manifold/Sheaf/Smooth.lean:287, 297` (`smoothPresheafCommRing`, `smoothSheafCommRing`) and `Mathlib/Topology/Sheaves/Stalks.lean:92` (`TopCat.Presheaf.germ`). They provide native sheaves and germ maps, not the roadmap's neighbourhood-wise analytic relation-sheaf comparison. The revised text acknowledges those native objects and explains the encoding limitation rather than claiming that holomorphic stalks are absent. Coherence remains an explicit README target at lines 651–672.

These checks used Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, as pinned in `lake-manifest.json`. The earlier, unchanged API audit is carried from [r5]; no claim is made that all its declarations were reopened this round.

Object searches with `roadmaps grep` covered finite-rank Runge, density transposes, Chevalley–Eilenberg complexes and relative de Rham cones across main and indexed open work. I read the matching sections of the four overlapping heads and inspected the board package index; it contains no additional relevant package for these repairs. The roadmap is the existing owner under the previous report's settled ordering disposition, now recorded explicitly in Scope. The opposite ownership claims still present in the later roadmaps require reconciliation on their side, as that paragraph says. No new Lean declaration or fully qualified name was introduced. Other open work beyond the supplied checkouts was not independently reviewed.

### Sources and seeded sample

The changed part of the seeded sample is principally §5.1's supplier correction and §6.0's corrected Kähler locator. The deleted companion also affects acceptance coverage of §5.5, whose README formulas are unchanged. I fetched Demailly through the sources service from the author's legal copy and read:

- `demailly line 14652`, VI Definition 4.1, printed p. 296: a positive smooth Hermitian fundamental form is Kähler when closed.
- `demailly line 14700`, VI Example 4.6, printed p. 297: induced Kähler structure on complex submanifolds. The roadmap's holomorphic-immersion version follows locally from the submanifold assertion and injectivity of the tangent map.
- `demailly line 14736`, VI Theorem 4.8, printed pp. 298–299: the Kähler normal-coordinate characterization used by the adjacent unchanged target.
- `demailly line 15390` and line 15397, VI Theorem 7.3 and proof, printed p. 310: rechecked the previously reported dual-bundle misprint.

The curve claim no longer attributes the degree argument to Example 4.6: on real dimension two every three-form is zero. The examples below test that argument and its failure in complex dimension two.

For unchanged sampled material, source evidence and computations are carried from [r5]: §1.1 (orientation/Nijenhuis), §2.1 (Cauchy–Green and Runge), §§3.0–3.1 (realification and stalks), §§5.2, 5.5–5.8 (distributions, planar star, components, Hermitian and Dolbeault theory), §6.1 (cycles/relative integration), §§7.1–7.2 (projective charts and bundles), and §8.1 (CE/Iwasawa comparison). This is an incremental verification, not a claim to have fetched all their sources again. The unchanged §5.2 source remains uncertified as recorded below.

### Headlines, signatures and padding

The headline list is unchanged: Newlander–Nirenberg; finite-rank Runge and the mixed-parameter solver; Dolbeault–Grothendieck and sheaf comparison; realification; Weierstrass preparation/division, Noetherian and factorial stalks, analytic Nullstellensatz, Oka/Cartan coherence and Hartogs; Chern uniqueness, Koszul–Malgrange and flat correspondences; Sobolev/elliptic realization, de Rham/Dolbeault Hodge and Serre duality; Kähler identities, the ∂∂̄ theorem, Hodge decomposition, Hard Lefschetz, Hodge–Riemann and analytic cycles; projective/torus/Hopf cohomology; Frölicher, Nomizu/Sakane and Iwasawa.

All five retained Lean theorem bodies and signatures are unchanged. I elaborated a scratch copy containing `#check @name` for each and compared the output with the README:

| Declaration | Binder/coverage result |
|---|---|
| `finite_rank_runge_approximation` | Compact collar L precedes ε; finite samples and outputs precede f and B. Open sets, compactness and the component condition survive. |
| `mixed_parameter_solver` | Finite dimensions, boundaryless model, Hausdorffness, second countability, open Q/Ω, joint smoothness and holomorphy in Q all survive. |
| `realified_isManifold_analytic` | Complex smooth manifold and finite complex dimension imply real analyticity; no unintended global separation hypothesis is asserted. |
| `holomorphicStalk_noetherian` | Native complex smooth sheaf stalk at x; finite-dimensional complex model and small `M : Type` survive. |
| `holomorphicStalk_factorial` | The same stalk and hypotheses; both integral-domain and unique-factorization conclusions survive. |

No binder or statement changed. On another scratch copy I tried `simp`, `rfl` and `infer_instance` separately as closing alternatives at all five admissions: zero of five closed. The previous exact-library/definition padding audit is carried from [r5]. The deleted elementary companion statements are not replaced. The module docstring now records the permitted reason for not encoding coherence, while the README retains the full theorem; other missing-carrier explanations remain unchanged.

### Fresh adversarial checks of the changed passages and their interfaces

Each row records actual values or maps; a corrected citation alone is not treated as a mathematical proof.

| Statement / convention | Instances tried | Values computed on each side | Result; change |
|---|---|---|---|
| Levi-Civita reference, §§5.1/6.0 | Euclidean plane, constant coordinate fields | Koszul numerator 0, hence ∇∂ₓ∂ᵧ=0; torsion 0−0−0=0 and ∇J=0 | Pass; use the native Mathlib connection |
| Levi-Civita with nonconstant curve metric | g=exp(x)(dx²+dy²) | Γˣₓₓ=1/2, Γʸₓʸ=1/2; ∇ₓ(J∂ₓ)=∂ᵧ/2=J∇ₓ∂ₓ | Pass; no flat-metric restriction introduced |
| SBC B2.2 fibre metric data | trivial complex line; rank zero | h(i,1)=−i, h(1,i)=i, h(i,i)=1; rank-zero norm²=0 | Pass; first slot and zero rank agree |
| Explicit β and α on punctured plane | z=1 and z=i; tangent v=1,i | At 1: (β+iα)(1)=1, (β+iα)(i)=i, equal v/z. At i: values −i,1, also v/z | Pass; inverse/conjugate sign distinguished |
| β+iα polar normalization | z=2i, radial v=2i, angular v=−2 | Values 1 and i, equal v/z. Denominator x²+y²=4>0; zero is excluded | Pass; well-defined on the stated domain |
| DG5.3 four-arc period comparison | dz/z on the unit circle | Each arc integral iπ/2; sum 2πi. c_U=0, c_L=−2πi, so c_U−c_L=2πi and P([dz/z])=1 | Pass; citation resolves and sign retained |
| VariationalMethods graph/domain reference | j=id on ℂ, a(u,v)=2ūv | Representing f=2u; domain ℂ; A=2 and (A+1)⁻¹=1/3, both inverse compositions 1 | Pass; supplier is explicitly qualified |
| VariationalMethods summability reference | one eigenvector, λ=2, u=3i | λ² times coefficient norm² =4·9=36; norm² of Au=norm²(6i)=36 | Pass; domain expansion uses the same operator |
| Kähler pullback/restriction | F(z)=(z,2z) into standard ℂ²; constant map | F*ω=5 dx∧dy, metric on ∂ₓ has value 5 and derivative 0; constant map gives 0, not positive on a nonzero source tangent | Pass; immersion assumption excludes the wrong model |
| Every Hermitian curve metric is Kähler | ω=exp(x)dx∧dy; complex dimension zero; complex dimension two | dω=exp(x)dx∧dx∧dy=0; zero-dimensional form 0; d(exp(x₁)(ω₁+ω₂))=exp(x₁)dx₁∧dx₂∧dy₂≠0 | Pass; degree proof is exactly dimension-sensitive |
| Standard metric and local unitary frame | g=exp(x)(dx²+dy²), e₁=exp(−x/2)∂ₓ, e₂=Je₁ | g(e₁,e₁)=g(e₂,e₂)=1, g(e₁,e₂)=0; g(∂ₓ,∂ₓ)=exp(x) | Pass; adapted frame requires normalization |
| Coherence docstring's relation object | holomorphic one-element tuples (1), (0); empty tuple | Stalk relation modules respectively 0, O_x, 0; thus a generic empty relation predicate would lose the distinction | Pass; full neighbourhood statement stays in README |
| Named GH overlap: Cauchy–Green, Runge, planar exactness | compactly supported φ with φ(0)=1; K=∅; b=1 | T(∂̄φ)(0)=1; N=0 gives empty sum 0; u=bar(z)/(2i) gives d(u dz)=dx∧dy | Pass; formulas agree with the later head |
| Named PDO overlap: operator/jet/transpose | D=∂²; x=2y; P=x∂ₓ | [[D,x],x]=2Id; quadratic Taylor coefficient 1 becomes 4; Pᵗ=−x∂ₓ−1 | Pass; same core, ownership recorded |
| Named LGP overlap: all-degree complex | Heisenberg [X,Y]=Z; abelian ℝ³ | dZ*(X,Y)=−1; abelian differential 0, so H¹=ℝ³ | Pass; same bracket sign as K8 |
| Named DR overlap: relative complex/evaluation | (α,β); W=X; unit-integral bump on ℝ² | d²=(0,dα restricted−dα restricted)=0; identity cone cohomology 0; bump absolute class 0 but relative evaluation 1 | Pass; relative and absolute classes distinguished |
| IndexTheory consumer's integral pairing | oriented torus; sphere | Torus matrix ((0,1),(−1,0)), determinant 1 and b₁=2=2g; sphere H¹=0 and g=0 | Pass; corrected item consumes this dictionary |
| Companion deletion versus §5.5 regularity | u=abs(x)³ | C², second x derivative 6abs(x); Δ_Hu=−6abs(x), including value 0 at x=0 | Pass; no C∞ substitute remains |

### Carried adversarial table

The following 72 rows retain the previous report's computations for untouched statements, including all five Lean headlines and the sampled targets. “Carried from [r5]” means those values were recorded there; it does not claim a new computation this round. The fresh table above supplements them where a supplier or explanation changed.

| Statement / convention | Instances tried | Values computed on each side | Result; change |
|---|---|---|---|
| Conventions `g(u,v)=ω(u,Jv)` | ℂ, u=∂ₓ, J∂ₓ=∂ᵧ | ω(∂ₓ,∂ᵧ)=1=g(∂ₓ,∂ₓ); −J gives −1 | Pass; carried from [r5] |
| `d^c=i(∂̄−∂)`, `dd^c=2i∂∂̄` | f=x²+y² | d^c f=2x dy−2y dx; dd^c f=4dx∧dy; 2i∂∂̄f=2i·dz∧dz̄=4dx∧dy | Pass; carried from [r5] |
| h_T slots | u=∂ₓ,v=∂ₓ | h_T(J∂ₓ,∂ₓ)=−i=−i·h_T(∂ₓ,∂ₓ); h_T(∂ₓ,J∂ₓ)=i | Conjugate-linear first slot; pass; carried from [r5] |
| `h_T(u^(1,0),v^(1,0))=2g_ℂ(bar u^(1,0),v^(1,0))` | u=v=∂ₓ | right side 2·(1/4)(1+1)=1=h_T(∂ₓ,∂ₓ) | Pass; carried from [r5] |
| `ω=(i/2)Σh_T dz∧dz̄` standard | n=1 | (i/2)dz∧dz̄=(i/2)(−2i)dx∧dy=dx∧dy | Pass; carried from [r5] |
| K1 Nijenhuis on (0,1) fields | X,Y type (0,1), [X,Y]=B+C | N=−2[X,Y]+2iJ[X,Y]=−4B; ∂̄²f(X,Y)=∂f(B)=−(1/4)∂f(N) | Pass; carried from [r5] |
| K1 orientation | multiplication by i; conjugation | real det 1 / −1 | Pass; carried from [r5] |
| K2 Cauchy–Green sign | Demailly (3.2) with w=0, compact support | f(0)=−∫(1/(πz))∂̄f dλ, hence T(∂̄f)=f with `Tφ(z)=(1/π)∫φ(ζ)/(z−ζ)` | Pass (demailly line 885); carried from [r5] |
| K2 Runge hypothesis (Lean) | K=∅ | every component of Ω is open; compact closure ⊆Ω forces it empty; hypothesis holds; L=∅, N=0, `K ⊆ interior ∅` vacuous | Pass; carried from [r5] |
| K2 Runge hypothesis (Lean) | K={2≤\|z\|≤3}, Ω={\|z\|<4} / Ω={1<\|z\|<4} | inner component closure {\|z\|≤2} compact and ⊆Ω: excluded / closure {1≤\|z\|≤2} not ⊆Ω: admitted, 1/z approximates itself | Pass; matches Checks; carried from [r5] |
| K2 Runge Check two disks | unit disks at 0 and 3, K={0,3} | indicator outputs g₁,g₂ holomorphic on Ω; A f=(f(0),f(3)) on K, error 0 for values ±1 | Pass; carried from [r5] |
| K2 exhaustion filling | {1≤\|z\|≤2}⊂ℂ | filled hull {\|z\|≤2} adds 0 (Rainer 11.3(3)) | Pass; carried from [r5] |
| K2 weights absorbed | w_j g_j ↦ g_j′ | same operator, same bound | Pass; carried from [r5] |
| K2 mixed solver (Lean) | f=pq, Q=ℂ∖{0} | u=pq z̄: (uₓ+iuᵧ)/2=pq; ∂̄_q u=0 | Pass; carried from [r5] |
| K2 solver degenerate | Ω=∅ or Q=∅ | all three conjuncts vacuous; u=0 | Pass; carried from [r5] |
| K3.0 realification | z↦iz; z↦z̄ | real matrix ((0,−1),(1,0)), analytic; conjugation D(i)=−i≠iD(1) | Pass; implication only; carried from [r5] |
| K3.1 stalk | ℂ⁰; z, 1+z at 0 | stalk ℂ; z nonunit (value 0), 1+z unit; (z²,z³)=(z²) | Pass; carried from [r5] |
| K3.1 Noetherian/factorial locators | Demailly (2.7), (2.10) | lines 3872, 3931: O_n Noetherian; O_n entire and factorial | Pass; carried from [r5] |
| K3.1 wrong model | real smooth germs e^(−1/x) one-sided | product 0 of nonzero germs | Complex sheaf essential; pass; carried from [r5] |
| K3.2 Laurent coefficient | k≥1 | c₋ₖ=(2πi)⁻¹∮f(z−a)^(k−1)dz; exp(1/z) has infinitely many negative terms | Pass; carried from [r5] |
| K3 preparation/division | 1+w³ by w; zero germ | quotient w², remainder 1; zero has no finite order | Pass; carried from [r5] |
| K4 Chern matrix | h=exp(\|z\|²) | A=∂(zz̄)=z̄dz; Θ=dz̄∧dz, type (1,1) | Pass; carried from [r5] |
| K4 monodromy | d+(1/4)dz/z | M(γ)=e⁻¹T_γe=exp(−2πi/4)=−i | Pass; carried from [r5] |
| K4 ranks | three points (0,1,2); ℕ with rank n | sections 0×ℂ×ℂ², dim 3; unbounded ranks | Pass; carried from [r5] |
| §5.1 native star vs README identity | plane, orthonormal dx,dy, vol(dx∧dy)=1 | native ⟨*dx,γ⟩=vol(dx∧γ): *dx=dy, *dy=−dx; README α∧*β=⟨α,β⟩vol: dx∧dy=vol ✓, dy∧(−dx)=vol ✓ | Equivalent on an orthonormal basis (both give *e_I=ε(I,J)e_J); pass; carried from [r5] |
| §5.1 *² | plane degrees 0,1,2; point | signs +,−,+; *1=±1 with the signed volume equivalence | Pass; carried from [r5] |
| §5.1 density vs orientation | derivative −2 | density ×2, orientation ×(−1) | Pass; carried from [r5] |
| §5.1 transpose | x∂ₓ, dx | (x∂ₓ)ᵗ=−x∂ₓ−1; iᵗ=i, i†=−i | Pass; carried from [r5] |
| §5.1 commutator symbol | ∂², f=x | [[∂²,x],x]=2; /2!=1; ξ=2 gives 4 (geometric) and −4 (Fourier) | Pass; carried from [r5] |
| §5.1 jets | j²₀(x²), x=2y | coefficients (0,0,1)→(0,0,4); (dx)²=4(dy)² | Pass; carried from [r5] |
| §5.2 primitives | w=δ₀, m=2 | H₂=x₊ continuous, D²H₂=δ₀ | Pass; carried from [r5] |
| §5.2 normal coefficients | u=δ′₀ | ⟨xδ′,φ⟩=−φ(0)=−1=(−1)¹1!·1 | Pass; carried from [r5] |
| §5.2 nonextension | φ_ε=φ((x−εe₁)/(cε)) | integral ≥C′εⁿexp((1+c)⁻²ε⁻²) vs Cε⁻ᴺ | Pass; carried from [r5] |
| §5.2 delta series | φ=1/(1+2x) near 0 | ⟨δ⁽ⁿ⁾/n!,φ⟩=2ⁿ; sums 1,3,7 | Pass; carried from [r5] |
| §5.3 Montel | sin(jx); point; ℕ | derivative j unbounded; closed disk compact; product of disks compact | Pass; `arzela_ascoli` at `ArzelaAscoli.lean:109` needs `T2Space β`, compact range `s`; carried from [r5] |
| §5.4 Peetre | s<0 | 〈ζ+η〉^s≤2^(\|s\|/2)〈ζ〉^s〈η〉^\|s\| from 〈ζ〉≤√2〈ζ+η〉〈η〉 | Pass; carried from [r5] |
| §5.4 weights | (1+\|ξ\|)^(2s) vs (1+\|ξ\|²)^s | ratio within 2^(±\|s\|) | Pass; carried from [r5] |
| §5.4 Fourier reflection | f̂ĝ pairing | ∫f̂ĝ=∫f(x)g(−x)dx | Pass; carried from [r5] |
| §5.4 Λ^z symbol | z imaginary | \|(1+\|ζ\|²)^(z/2)\|=1 | Pass; carried from [r5] |
| §5.4 δ membership | ℝⁿ | δ₀∈H^s iff s<−n/2 | Pass; carried from [r5] |
| §5.4 planar exactness | β=dx∧dy | u=z̄/(2i): ∂̄u=1/(2i); d(u dz)=2i∂̄u dx∧dy=dx∧dy | Pass; carried from [r5] |
| §5.4 variational graph | a(u,v)=2ūv, j=id | A=2, (A+1)⁻¹=1/3; D=2: D₀†D₀=4 | Pass; VM names exist at #1028 (`Suggested.lean:186, 207, 220`); carried from [r5] |
| §5.5 star on dz | dz=dx+i dy | *dz=dy−i dx=−i dz; *dz̄=i dz̄ | Pass; carried from [r5] |
| §5.5 δ formulas | α=P dx+Q dy; h dx∧dy | δα=−(Pₓ+Qᵧ); δ(h dx∧dy)=hᵧdx−hₓdy | Pass; carried from [r5] |
| §5.5 sign of d* | Demailly (3.9), m=2 | d*=(−1)^(mp+1)*d*=−*d*; README exponent m(k+1)+1≡mp+1 with p=k−1 | Pass; carried from [r5] |
| §5.5 Checks | x dx+y dy; x dy; h=x²+y²; \|x\|³ | δ=−2, dα=0; dα=dx∧dy, δ=0; δ(h dx∧dy)=2y dx−2x dy, Δ_H h=−4, laplacian +4; Δ_H\|x\|³=−6\|x\|, C² not C³ | Pass; companion deleted at this head; carried from [r5] |
| §5.5 energy identity | compact support | ∫ūΔ_Hu=∫\|∇u\|²≥0 | Pass; carried from [r5] |
| §5.6 components | ranks (0,1,2), section (0,1,(1,i)) | norm² 0+1+2=3; eigenvalue 2 multiplicity 1+2 | Pass; carried from [r5] |
| §5.7 Gram norms | standard metric | \|dz\|²_Gram=2, dz♯=2∂_z | Pass; carried from [r5] |
| §5.8 Hodge/Serre | ℂP¹, O(−1), O | h⁰=h¹=0; h⁰(O)=1=h¹(K), K=O(−2) | Pass; Demailly (7.1)–(7.3) compact Hermitian, E*; carried from [r5] |
| K6.0 Kähler Checks | ℂ⁰; ω=f dx∧dy; exp(x₁)(ω₁+ω₂) on ℂ² | dω=0 by degree; d=exp(x₁)dx₁∧dx₂∧dy₂≠0 | Pass; carried from [r5] |
| K6.0 `[Λ,L]=(n−k)` | ℂ: 1, ω; ℂ²: 1 | 1; −ω=(1−2)ω; ΛL1=2 | Pass; Demailly (5.9) [L,Λ]=(p+q−n); carried from [r5] |
| K6.0 primitive | ω₁−ω₂, ω₁+ω₂ (n=2); dz (n=1); 1 | Λ=0, 2; 0; 0 | Pass; carried from [r5] |
| K6.0 `[Λ,∂]=i∂̄*` etc. | α=x dy on ℂ | ∂α=(1/2)dx∧dy, [Λ,∂]α=1/2 so ∂̄*α=−i/2; [Λ,∂̄]α=1/2 so ∂*α=i/2; [Λ,d]α=1; (d^c)*α=−1 | Pass; Demailly (6.4) line 15157; carried from [r5] |
| K6.0 `[L,d*]=d^c` | f=x | −δ(x dx∧dy)=dy; d^c x=i(dz̄−dz)/2=dy | Pass; carried from [r5] |
| K6.0 Laplacians | f=x²+y²; f=1 | Δ_d=−4, Δ_∂=Δ_∂̄=−2; 0 | Pass; (6.5) Δ′=Δ″=Δ/2; carried from [r5] |
| K6.0 Nakano bound | iΘ=aω⊗Id on (n,k) | Demailly (7.1): Σ_S Σ_j c_{jj}\|u_{jS}\|²=a·k·\|u\|²; a=0,1,−1 give 0,k,−k; k=0 gives 0 | Pass; carried from [r5] |
| K6.0 BKN | τ=0 (Kähler) | (1.1c): [Λ,D″]=−iδ′; (1.3): Δ″=Δ′+[iΘ,Λ] | Pass; carried from [r5] |
| K6.1 relative cone | (α,β)↦(dα,α\|_W−dβ) | d²=(0,dα\|_W−dα\|_W+0)=0; W=X cohomology 0; W=∅ absolute | Pass; same differential as DR.3.8; carried from [r5] |
| K6.1 compact-support evaluation | bump of integral 1 on ℝ² | absolute class 0; relative evaluation 1 | Pass; carried from [r5] |
| K6.1 Hodge–Riemann | elliptic curve, α=dz | i·∫dz∧dz̄=2·Area>0 | Pass; carried from [r5] |
| K6.1 cycles | two transverse lines; point ×2 | generators +1,+1, no 2-cell at the node; 2 | Pass; carried from [r5] |
| K7.1 charts | [1:2:3]; [2:4:6]; w=1/z | (2,3),(1/2,3/2) both; \|dw/dz\|²=\|z\|⁻⁴>0 | Pass; carried from [r5] |
| K7.2 Fubini–Study | ℂP¹ chart | ω_FS=dx∧dy/(π(1+\|z\|²)²); 2∫₀^∞r/(1+r²)²dr=1 | Pass; (4.4) line 14690; carried from [r5] |
| K7.2 curvature | O(1), O(2) | Θ=∂∂̄log(1+\|z\|²)=−2πiω_FS; −4πiω_FS | Pass; (15.8) line 13780; carried from [r5] |
| K7.2 hyperplane identity n=1 | β constant c | ∫ω_FS∧c=c=∫_H c | Pass; n≥1 stated; carried from [r5] |
| K7.2 genus | point; ℂP¹; elliptic; two elliptic curves | h^(0,0)=1; (0,0); (1,2); h^(1,0)=2, h^(0,0)=2 | Pass; carried from [r5] |
| K7.2 Hopf weights | z₁ᵃz₂ᵇdz_j; z₁⁻ᵐz₂⁻ⁿdz_j | 2^(a+b+1); 2^(1−m−n)≤1/2; none equal 1 | Pass; h^(1,1)=0, diamond (00),(01),(21),(22); carried from [r5] |
| K8.1 CE differential | [X,Y]=Z | dZ*(X,Y)=−1; (23.1) carries 1/(q+1) so δZ*=−1/2 | Pass; CE line 1177, p. 115; carried from [r5] |
| K8.1 Iwasawa | Angella (3.1) | dφ₃=−φ₁∧φ₂ (line 510), h^(1,0)=3, h^(0,1)=2, b₁=4 | Pass; carried from [r5] |
| K8.2 central ideal | nilpotent 𝔤, last nonzero 𝔤^(c) | [𝔤,𝔤^(c)]=𝔤^(c+1)=0: central; proper when nonabelian | Pass; carried from [r5] |
| K8.2 Heisenberg | ℝZ, lattice | quotient ℝ², fibre ℝ/ℤ | Pass; carried from [r5] |

[r5]: PRREVIEW-ComplexKahlerGeometry~5.md

## Not verifiable

- No newly changed source claim remains unread: Demailly's corrected locator was legally fetched and verified.
- The earlier report's source limitations remain for unchanged material: `gh` (Griffiths–Harris, chapter 0; no legal text found through the sources service, with Demailly used for the overlapping assertions); `hormander` (Theorem 2.3.5), `webster` (Math. Z. 201, pp. 303–316), `wells` (third edition, Chapters IV–V) and `raghunathan` (Theorem 1.13 and p. 31 Corollary 1), recorded there as paywalled/uncertified. No new request is made for these unchanged locators.
- The prior report's HamiltonianReduction consumer limitation remains outside this incremental scope. The IndexTheory reference, previously imprecise, is resolved above.
- The original folder has no `sources.toml`; no source manifest or pull-request file was created or changed. Unchanged source and ownership conclusions not specifically reopened above rely on [r5].

## Source issues

- **Misprint** in demailly at VI §7, proof of Theorem 7.3, printed p. 310 (line 15397): the source says the second form has coefficients in E; it should be E* for the evaluation-wedge pairing; affects the proof.
