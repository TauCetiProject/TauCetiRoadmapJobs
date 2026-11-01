# Review of K3Surfaces (pull request #1285 at 3671d62)
**Verdict:** needs changes

## R01 (P1) — Register the Picard supplier gap

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:94–118`, “Holomorphic Picard classes (gap:integral-topology)”; consumed at lines 229, 263, 341 and 380.

**Claim:** The mathematical replacement for K4.P is precise, but it is still not a supplied prerequisite under the declared-gap rules. This package has no readable `packages/K3Surfaces/design/plan.json`, hence no matching gap entry naming its supplier and section. A README-only slug does not register the contract. The base ComplexKahlerGeometry K4 still stops before the Picard/H¹ identification, and C5.4 supplies the exponential/Chern comparison rather than that group isomorphism. Thus the integral (1,1) and family-extension arguments still depend on an unregistered producer.

**Witness:** The package has no design plan; main's `TauCetiRoadmap/ComplexKahlerGeometry/README.md:444` gives bundles and gluing, then K5 at line 568. `TauCetiRoadmap/ComplexComparisonPartII/README.md:3304` gives the exponential connecting map, not a Picard-class equivalence.

**Exact repair:** Register `integral-topology` in the package plan's gaps, with supplier `ComplexKahlerGeometry`, its Part II section, and one minimal needs sentence: on every complex manifold, holomorphic line-bundle classes are group-isomorphic to H¹(Oˣ), naturally for holomorphic pullback, tensor and dual. Use the matching intake form “What ComplexKahlerGeometry must provide (gap:integral-topology): …” in this supplier subsection. Keep C5.4 as the existing producer of the exponential and Chern comparison. If no package plan can be registered, provide an actual permitted supplier target instead; merely renaming K4.P again does not repair supply.

**Repair test:** The proposed mathematics already passes: O(1) on ℙ¹ maps to +1; for a rank-one K3 the Chern image has rank 1 inside rank 22, with zero kernel; on an elliptic curve a nontrivial degree-zero line maps to 0. The remaining test is that the plan and README contain the same slug, supplier and section. This is a continuation of previous R01, not an objection to a properly declared future supplier.

## R02 (P3) — Add the source manifest

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:844–878`, the reference list.

**Claim:** Previous R05 remains unresolved: `TauCetiRoadmap/K3Surfaces/sources.toml` is absent. The added Shen citation brings the bibliography to ten works, without machine-readable version, locator or retrieval records.

**Witness:** The tracked folder contains only README.md, Suggested.lean and metadata.toml. Eight works are legally readable (the prior seven plus Shen); Nikulin and Rudakov–Shafarevich remain settled uncertified primary locators.

**Exact repair:** Add the required `tauceti-roadmap-sources/v1` manifest, retaining the existing source keys, actual versions and locators, and source-service metadata. Record Nikulin and Rudakov–Shafarevich as uncertified; do not request them anew. Reconcile ten bibliography works to ten entries, with no duplicated preprint/published key. This review changes no manifest.

## Previous findings

- R01 — partly repaired: README:94–118 replaces K4.P with the correct minimal Picard contract and imports C5.4, but no matching plan gap registers that supplier; repeated as R01.
- R02 — repaired: README:684–738 owns the clean finite-order formula, its positive normal factor and perturbation proof, with MorseNovikov N5–N7 and geometric suppliers; README:740 uses it for fixed curves.
- R03 — repaired: README:171–175 restricts the inverse factor to characteristic different from two and computes the characteristic-two zero-map control.
- R04 — repaired: README:178 cites Huybrechts p.13; README:795 cites Gritsenko–Hulek equation (8), p.8, with the paragraph invoking Namikawa Proposition 6.2.
- R05 — not repaired: README:844–878 now lists ten works, but the folder still contains no sources.toml; repeated as R02.

## Verified sound

:robot: Independent AI review. This is an **incremental re-review of 145 changed lines since 893e500**, not a second full review. The previous report is [PRREVIEW-K3Surfaces~2](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). I checked all five repairs, the changed passages and their affected consumers, the new source, and the changed sample sections. Unchanged mathematical tests below explicitly cite that previous report.

Read the repository README's normative writing rules and CONTRIBUTING, and main's ComplexKahlerGeometry and MorseNovikov roadmaps for shape. Main is fa41b3747f56d4e77bd69e7099c1be4f2e4959ba. The review head is 3671d62da9e6f293062e4f81b5ddfbb8dac41986. The outside-folder diff is empty; no PR file was edited. No repair report marking a prior finding “not actionable in this package” was supplied or found.

**Gate, dependency and elaboration evidence.** The worker's recorded gate at this exact head passed:

```text
gate K3Surfaces: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The independently run dependency check using the supplied candidate order and movable placement returned exit 0:

```text
depcheck: 204 roadmaps, 1477 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurred. The independent full-gate rerun used its default order and stopped before building with:

```text
depcheck: NOT IN ORDER: K3Surfaces (insert it after its last supplier)
```

That is a placement-only false positive for this job: the brief explicitly excludes “not in the merge order” as a finding, and the prescribed candidate-order check passes. All other scanner counters in that rerun were zero. I did not alter the order or tooling. The worker's full passing gate and the independently passing candidate-order check are recorded separately rather than claiming that this default-order rerun passed.

Independently ran `lake build TauCetiRoadmap.K3Surfaces.Suggested`: exit 0, 9021 jobs, exactly the two admitted-theorem warnings. Direct `lake env lean` on Suggested.lean also exited 0 with only those warnings. Appended `#check @...` for all **four declarations** on a scratch copy and elaborated it successfully. The vanishing signature retains Field, IsAlgClosed, CharP, 2<p, the actual structure morphism and IsAlgebraicK3. The extension signature retains nondegeneracy of both lattices, evenness, the anti-isometry equation, exact form and carrier equations, and both isometries. No binder or statement changed.

A scratch one-tactic probe tried `simp`, `rfl`, and `infer_instance` on each theorem, with `sorry` only as fallback. Both still required `sorry`; no probe error occurred. The previous exact-lemma/object audit of these unchanged theorem bodies is carried forward, with the pinned definitions reopened below. Neither theorem is padding.

**Changed seeded sample and sources.** Four readable works were fetched through the source service, not copied into the repository. The locators below were opened at their cited versions. The remaining eight sampled sections are unchanged: §0.2, §2.1, §4.1, §5.1, §5.2, §6.1, §6.2 and §7.1 retain the previous report's source checks and adversarial rows. This accounts for all thirteen seeded targets without repeating the full source review.

| Changed sampled target | Source text and verification |
| --- | --- |
| §0.1, contraction and Chern number | Characteristic-two and characteristic-three scalar products computed below; Huybrechts draft §1.2.4, printed p.13, `huybrechts-k3 line 365` through 375 explicitly gives Noether's formula and c₂=24. Previous contraction definition/API is unchanged. |
| §1.1 and new Picard contract | Huybrechts draft §1.3.2, pp.15–16, equation (3.1), `huybrechts-k3 line 452` through 474: exponential exact sequence, Pic≃H¹(Oˣ), and the K3 kernel identification. R01 is registration/ownership, not a false exact sequence. C5.4's transition convention was also compared directly. |
| §3.1, local extension | Huybrechts draft §6.2.4, p.108, `huybrechts-k3 line 3980` through 3999: nonzero class, Hodge hypersurface, total-space cohomology comparison on a small disk, and extension by the exponential sequence. The revised prose retains shrinking, flat class and fibrewise (1,1), and explicitly owns the obstruction and rigidification steps. |
| §7.2, new clean formula | Shen §2.1, pp.256–257: `shen-fried line 415` defines the closed-manifold setting; lines 442–452 require clean fixed submanifolds and nondegenerate normal action; lines 455–468 give sign(det(1−dg on N))·χ(F) and the sum. Finite order supplies these hypotheses by an averaged metric and makes every normal sign positive. No orientation assumption is added. |
| §7.2, classification quantifier | Artebani–Sarti–Taki v2, Theorem 3.1, p.10, `artebani-sarti-taki line 497` through 508: precisely the two exceptional triples and the ordinary genus/component formulas for non-symplectic involutions. The new sentence defines r,a,δ and correctly states that domain. |
| §7.3, nodal locator | Gritsenko–Hulek v2 §3, p.8, `gritsenko-hulek line 270` through 287: divisibility 1 versus 2, even −4 arrangement, Namikawa Proposition 6.2 and equation (8). The replacement locator is correct. |

The normal-index proof was checked beyond its source label: for a negative-time flow at a nondegenerate zero, 1−exp(−t dV) has the sign of dV for small t>0; the finite-order normal blocks contribute positive determinants. Compactness and disjoint tubular neighbourhoods justify keeping new fixed points out of the complement. Nonorientability does not spoil the local index because source and target orientation changes cancel. The disconnected case is additive; permuted components have trace zero and no fixed points.

**Adversarial table.** Computed tests distinguish conventions and boundary cases; they do not constitute proofs of analytic existence results. 31 fresh rows replace seven affected old rows and add tests for the new contracts. 93 rows are carried verbatim in substance from the previous report, each with its own citation. 124 rows cover the sampled sections, headlines and finding targets.

| Statement | Instances tried | Computed values on the two sides | Result; change |
| --- | --- | --- | --- |
| Picard-class identification, README:96 | Trivial line and O(1) on ℙ¹ | Trivial frame torsor has class 0; O(1) has class 1 in H¹(Oˣ)≃ℤ, and no global frame | Correct object and non-example; producer still requires R01. |
| Picard tensor and dual, README:101 | O(1), O(−1), their tensor product | Chern numbers +1, −1, and 1+(−1)=0; dualizing twice returns +1 | Signs and tensor law agree with C5.4. |
| Exponential normalization, README:108 | u=1/2, u=1 and meridian around a simple zero | exp(2πi/2)=−1, exp(2πi)=1; positive logarithmic increment 1 gives c₁=+1, inverse transition gives −1 | Retain positive exponential and frame direction. |
| Čech connecting cocycle, README:109 | u₀₁=1/4,u₁₂=1/4,u₀₂=1/2; then u₀₂=−1/2 | δu=0 first, 1 second; both exponential cocycles satisfy i·i=−1 | Integral change is δ of the integer log-change; cohomology class unaffected. |
| Refinement/pullback, README:101 | Identity refinement; degree-2 map ℙ¹→ℙ¹ | Restriction of integer cocycle 1 remains 1; f*O(1)=O(2), so c₁ evaluates to 2=2·1 | Compatible with cocycle restriction and naturality. |
| General exact Picard segment, README:106 | ℙ¹; elliptic curve E | ℙ¹ has H¹(O)=H²(O)=0 and c₁:ℤ→ℤ identity; E has ker c₁=ℂ/Λ_E≠0 | Correct exact segment; no general injectivity. |
| K3 integral (1,1), README:124,229 | Picard-rank-one K3 | H¹(O)=0; kernel of c₁ is 0, image rank 1, H² integral rank 22, h²(O)=1 | Mathematical repair passes; R01 concerns supply registration. |
| Degree-zero negative control, README:126 | E=ℂ/(ℤ+iℤ), class 1/2 modulo its lattice | 1/2 is not in ℤ+iℤ, so line class ≠0; c₁=0 | Excludes false Pic≃H² or unconditional injectivity. |
| Characteristic-two contraction, README:171 | σ=dx∧dy over char 2; 2σ | Contraction matrix [[0,1],[1,0]] has determinant −1=1; 2σ has zero matrix and determinant 0 | Previous R03 repaired; all-characteristic K3 predicate retained. |
| Inverse-rescaling Check, README:172 | c=2 in characteristics 2 and 3 | Char 2: 2·(1/2)=0·0=0; char 3: 2·2=4=1 | New hypothesis selects invertible rescaling; negative control explicit. |
| Noether Check and locator, README:176 | K3 and torus | χ=1−0+1=2 and c₂=12·2=24; torus χ=1−2+1=0 and c₂=0 | Huybrechts p.13 now supports the computation. |
| Relative line-bundle extension, README:341 | Constant K3 family X×Δ, L₀ on X | Class h remains (1,1); pullback of L₀ restricts to L₀, obstruction 0 | Correct local existence test; local obstruction and rigidification are targets. |
| Hodge-locus restriction, README:341 | Universal deformation, nonzero h; h=0 control | Nonzero Hodge equation cuts 20 to 19 dimensions; zero imposes 0 equations, dimension stays 20 | No unconditional extension over all 20 parameters; ample h excludes zero. |
| Finite-order fixed-submanifold theorem, README:684 | id on S²; empty manifold; permutation of three points | Fixed components 1,0,0; L=2,0,0 equals χ(Fix)=2,0,0 | Includes n=1, empty and disconnected inputs. |
| Finite-order hypothesis, README:686 | Identity on circle versus irrational rotation | id has n=1, Fix=S¹, L=1−1=0; irrational rotation has no positive n with gⁿ=id | Boundary test; no false finite-order assertion about arbitrary diffeomorphisms. |
| Equivariant tangent identification, README:694 | Equatorial reflection of S² | Tangent action diag(1,−1), ker(1−dg) rank 1 equals tangent rank of fixed S¹; normal rank 1 | No normal eigenvalue 1. |
| Normal determinant, README:696 | −1 line and rotation by 2π/3 | det(1−(−1))=2; rotation determinant (1−cosθ)²+sin²θ=3 | Both signs +1; θ=0 would give 0 and is excluded on the normal. |
| Rank-zero normal, README:709,718 | Identity on S² | Full tangent determinant det(0)=0; normal determinant empty product 1 | Invertibility is on the quotient normal bundle, not the full tangent. |
| Local index and negative-time flow, README:699 | Tangential linear vector fields V(x)=x and V(x)=−x; normal action −1 | 1−exp(−t)>0 and 1−exp(t)<0 for t>0; multiplying normal determinant 2 gives signs +1,−1 | Equals sign dV in both cases; reversing flow would reverse the one-dimensional sign. |
| Poincaré–Hopf component sum, README:701 | Height gradient on S² and Morse gradient on S¹ | S² zero indices +1,+1 sum 2; S¹ +1,−1 sum 0 | Component contributions χ(S²)=2 and χ(S¹)=0. |
| Compact complement argument, README:704 | Antipodal S² in Euclidean norm; empty complement for id | Distance from x to −x is 2, so perturbation <1 stays fixed-point-free; identity's complement is empty | No assertion of a positive minimum on a noncompact complement. |
| Orientation-free trace, README:711,720 | Equatorial reflection and antipodal S² | On H⁰,H² eigenvalues 1,−1, so both L=0; fixed sets S¹ and ∅ both have χ=0 | Orientation-preserving hypothesis unnecessary; test agrees. |
| Nonorientable manifold, README:712 | id on ℝP²; reflection [x:y:z]↦[x:y:−z] | Rational Betti numbers (1,0,0), hence L=1; fixed loci ℝP² or ℝP¹ plus one point have χ=1 or 0+1=1 | Formula works without orientation. |
| Scalar extension of trace, README:691 | Double-sextic involution on H² over ℚ then ℝ | Matrix has one +1 and twenty-one −1 eigenvalues; trace −20 over either field; total L=2−20=−18 | Rational/real traces agree. |
| Conjugacy and additivity, README:713 | Reflect a different equator by conjugation; disjoint union of two identity spheres | Conjugate trace 0 and fixed-circle Euler 0; disjoint sum L=2+2=4=χ(S²⊔S²) | Preserves normal action and adds contributions. |
| Double-sextic fixed curve, README:723 | Smooth branch sextic | Genus (6−1)(6−2)/2=10; χ=2−20=−18; topological L=2+(1−21)=−18 | Previous R02 repaired on its refuting instance. |
| Holomorphic versus real normal factor, README:725 | Local complex tangent eigenvalues (1,−1) | Full complex det(1−dj)=0; real normal determinant 2²=4; holomorphic L(O)=1−1=0 | Distinguishes the three quantities; no zero-denominator use. |
| Non-symplectic fixed-locus classification, README:740 | (r,a,δ)=(1,1,1) and (20,2,1) | (g,k)=(10,0) and (0,9); Euler −18 and 2+18=20; cohomological 2r−20 equals −18 and 20 | General non-symplectic quantifier now explicit. |
| Exceptional involutions, README:740 | (10,10,0) and (10,8,0) | Actual loci ∅ and two elliptic curves have Euler 0 and 0; ordinary formula would give (g,k)=(1,0) and (2,1) | Exceptions correctly separated; Euler number alone cannot classify. |
| Free/nodal locus and corrected locator, README:795 | e−f in U; e′−f′ in U(2); e−2f in U | (square,divisibility)=(−2,1),(−4,2),(−4,1); only the second belongs to the even −4 arrangement | Equation (8) and its preceding paragraph now give the claimed arrangement. |
| Consumer IndexTheory restriction, README:833 | Free deck action versus double-sextic deck action | Free action has 0 fixed points and empty holomorphic sum 0; sextic tangent determinant 0 | I8 retained only for its valid isolated/empty domain. |
| Algebraic K3 predicate | Smooth quartic over algebraically closed k; Fermat quartic in char 3 | ω=O(4−4)=O; h¹=0; partials xᵢ³ have no common projective zero | Retain; actual smooth surface passes.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Canonical double-sextic model | Smooth sextic branch, char≠2 | π_*O=O⊕O(−3); h¹=0+0=0; K=π*O(−3+3)=O | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Singular branch negative control | Six general lines | Number of crossing points C(6,2)=15; singular points 15 versus required 0 | Retain the resolution distinction.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| K3 predicate excludes wrong surfaces | Abelian surface, empty scheme, square-zero thickening | h¹=2≠0; nonempty integral carrier absent; nonzero nilradical with ε²=0 versus reduced smooth local rings | Retain all three exclusions.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Surface category/isomorphism transport | Identity and composition | id*ω=ω; (g∘f)*ω=f*g*ω; identity base extension k⊗ₖk=k | Retain; forms must be transported with the isomorphism.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Chosen form excludes zero | σ=dx∧dy; zero form | Matrix of contraction is [[0,−1],[1,0]], det=1; zero matrix has det=0 | Retain distinction.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Contraction inverse | ∂x, ∂y | Images dy,−dx; inverse takes dy↦∂x, dx↦−∂y; both round trips id | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Rescaling a unit | c=2 in char 3 | c=−1, c⁻¹=−1; c⁻¹c=1 | Retain unit API.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Differential vanishing headline | Smooth Fermat quartic in char 3 | h⁰(Ω¹)=h⁰(T)=0; both subsingleton conclusions have one element | Retain; hp is true, 2<3.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Characteristic binders | p=0,2,3 and a zero ring | 2<0 false; 2<2 false; 2<3 true; zero ring fails Field's 0≠1 | Retain Lean scope.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Vector-field-to-pencil input | Arbitrary nonelliptic K3 with NS=ℤh, h²=4 | (nh)²=4n²; no nonzero isotropic divisor; h⁰(T)=0 | Its nonzero-vector-field hypothesis is essential to the route; no claim every K3 is elliptic.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Elliptic alternatives | Rational and c₂=0 branches | 12≠24 and 0≠24 | Retain exclusion.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Wild char-3 alternatives | k=1,2 in the two formulas | 3²+3=12; 3⁴+3=84; 3¹+9=12; 3³+9=36; none 24 | Retain; 21 and 15 are not powers of 3.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| One-singular-fibre branch | Martin D(v) | Number of singular fibres 1<2 | Correctly excluded by the separate pencil target.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Serre-dual vanishing | K3 with σ; Enriques twisted form after étale pullback | dim H²(T)=dim H⁰(Ω¹⊗ω)=0; a section injecting into 0 is 0 | Retain; this is a consequence, not an input to K0.A.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Algebraic/analytic comparison | Quartic versus nonprojective Kummer | Quartic integral h has h²=4>0; nonprojective example has 16 exceptional roots but no positive-square integral (1,1) class | Retain projective-image restriction.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Hodge diamond | K3 versus abelian surface | K3: b₂=1+20+1=22, e=1+22+1=24; torus: h¹⁰=2,h¹¹=4 | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Tensor/Chern normalization | h²=2d, L² | c₁(L²)=2h; (2h)²=8d, not 2d | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Positive component | Form diag(1,−1), κ=(1,0),−κ,(1,1) | Squares 1,1,0; pairings with κ 1,−1,1 | Only κ passes both tests.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Algebraization criterion versus ampleness | Positive h perpendicular to effective root δ | h²>0, (h,δ)=0; positive-square test passes, ample test fails | Retain distinct statements.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Monge–Ampère volume constant | V=ω²; replace V by 2V | c=1, cV=ω²; c′=1/2, c′(2V)=V | Retain; denominator ∫V>0.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Potential normalization | φ=0 versus φ+t, t≠0 | ∫φω²=0 versus t∫ω²≠0 | Retain uniqueness normalization.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Smooth parameter/naturality test | Constant parameter family and transported identical inputs | φ_t=0, ∂tφ_t=0; identity pullback φ=φ | Consistent test only; detailed estimate not certified here.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Quaternionic sign | I,J acting by left quaternion multiplication | IJ(1)=k; JI(1)=−k; IJ+JI=0 | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Sphere of complex structures | (a,b,c)=(1/√2,1/√2,0), and zero | Square=−(1/2+1/2)=−1; zero triple has square 0 | Retain unit-sphere condition.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Holomorphic two-form normalization | ωJ²=ωK²=2, orthogonal | σ²=2−2=0; (σ,σ̄)=2+2=4 | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Phase and positive orientation | σ↦iσ | (ωJ,ωK)↦(−ωK,ωJ); real determinant +1 | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Ricci-flat cover exclusion | Flat torus quotient; degree-d symplectic cover | Torus e=0 versus 24; 2=d·2 forces d=1 | Retain numerical exclusion; splitting is a substantive target.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Cup lattice | U³⊕E₈(−1)² | Rank 3·2+2·8=22; determinant (−1)³=−1; signature (3,19) | Retain; signed determinant differs from discriminant order 1.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Signature/index normalization | c₁²=0,c₂=24 | (c₁²−2c₂)/3=−16=3−19 | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Integral marking/pullback | Identity and inverse | id preserves every pairing; φ⁻¹φ=id on rank-22 ℤ lattice | Retain integral, not just rational, marking.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Pointed Kuranishi family | K3 tangent/obstruction groups | h⁰(T)=0, h¹(T)=20, h²(T)=0; expected base dimension 20 | Retain pointed universal claim.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Family carrier versus periods alone | Constant X×Δ→Δ | Fibre X; local monodromy id; period derivative 0; base dimension 1≠20 | Retain negative control.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Family pullback/cocycle | Two identity pullbacks | (id∘id)*X=X, marking id∘id=id | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Infinitesimal test base | ℂ[ε]/ε² versus its reduction | ε²=0, tangent H¹(T)⊗(ε) has dimension 20; reduction has 0 directions | Retain nonreduced deformation inputs.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Polarized slice | h²=2 and 4; h=0 | Nonzero class imposes 1 equation, 20−1=19; zero imposes 0 | Retain h≠0/ample assumptions.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Primitivity | h primitive of square 2; 2h | Squares 2 and 8; divisibility changes 1→2 | Retain integral moduli distinction.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Relative ampleness | Resolved double sextic exceptional curve | h²=2, (h,δ)=0 | Nef passes, ample fails.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Period predicate, degenerate ranks | Rank 0; rank 1 with form 1 | No nonzero vector; z²=0 implies z=0 | Empty in both cases.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Period positivity | ±I₂, z=(1,i) | B(z,z)=0 in both; B(z,z̄)=2 or −2 | Only +I₂ passes.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Projective rescaling | c=3+4i and c=0 | abs(c)²=25, new positive value 50=25·2; zero scale gives 0 and no point | Retain c≠0.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Bilinear versus Hermitian roles | z=(1,i) | Bilinear z·z=0; Hermitian z·z̄=2 | Retain separate pairings; no accidental Hermitian isotropy.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Period plane and orientation | x=(1,0), y=(0,1); conjugation | x²=y²=1, (x,y)=0; conjugation determinant −1 | Retain oriented plane.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Domain dimensions/components | Signatures (3,19) and (2,19) | Quadric dimensions 22−2=20 and 21−2=19; components 1 and 2 | Retain; marked-moduli components are separate.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Local Torelli derivative | Generator σ fixed; constant family control | Contraction tangent map rank 20=20; constant family derivative rank 0 | Retain actual universal-family condition.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Hodge loci | Rational δ with (δ,z)=0 or 1; fixed h on Ωh | Equation values 0,1,0 respectively | First/fixed h are Hodge; only the nonforced equation is proper.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Baire avoidance | Countable nonforced hyperplanes in a period ball | Each has empty interior; complement dense; forced h removes the entire ball | Retain “very general”, not Zariski open.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Pic=0 cone | κ²=2; 2κ;−κ;0 | Squares 2,8,2,0; pairings 2,4,−2,0 | First two lie in selected cone; last two do not.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Absence of curves in Pic=0 | Effective curve class C | Positive area ∫Cκ>0 forces [C]≠0; Pic=0 permits only class 0 | Retain positivity contradiction.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Cone selector/transport/scaling | κ′=2κ and λ=2 | (α,κ′)=2(α,κ); (2α)²=4α²; signs unchanged | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Twistor conic | Positive orthonormal W of rank 3 | z=a+ib: z²=0, (z,z̄)=2; conic dimension 1 versus Ω dimension 20 | Retain geometric conic.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Twistor restriction/marking | Fixed smooth X×S² and identity restriction | Fibre X; topological H² rank 22; restriction id | Retain; complex structures vary despite smooth product.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Generic W condition | W⊥∩Λ=0 versus integral δ∈W⊥ | Nonzero equation intersects a conic in at most 2 points; forced equation vanishes at every point | Retain countable exceptional set.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Local chain estimate | ε=1/2, δ=1/4, 0≤t≤1 | (1−t)ε+tδ=1/2−t/4≤1/2, with strict endpoint bounds | Matches source's connected-arc containment.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Boundary entry | Tangent normal functional ℓ and chosen conic direction v | ℓ(v)≠0 permits an inward sign with ℓ(±v)<0; tangent choice has ℓ(v)=0 | Retain existence of a suitable conic, not a claim about every conic.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Constant versus twistor family | Constant family and generic twistor sphere | Period image cardinality 1 versus whole ℙ¹ conic | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Marked moduli and sign | φ and −φ | [z]=[−z]; positive-3-space determinant (−1)³=−1 | Same period, different orientation components.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Inseparability/Hausdorff reduction | Doubled disk origin | Two distinct origins → one Hausdorff point; neighbourhood intersections nonempty | Retain; Hausdorffness is not imposed prematurely.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Graph limits | Constant identity graphs; reflected-root degeneration | Identity projection degrees (1,1), residual cycle 0; reflection changes δ to −δ | Identity test agrees; graph compactness itself remains a deep construction.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Period covering topology | Oriented positive 2-planes in ℝ³, deformation retract model | Compact model SO(3)/SO(2)=S²; π₁(S²)=0 | Retain simple-connectivity route and componentwise conclusion.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Strong Torelli | id versus −id; κ²=2 | id(κ) pairs 2 with κ; −κ pairs −2 | id lifts uniquely; −id fails the cone hypothesis.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Pullback direction | f:X→Y, g:Y→Z | (g∘f)*:H²(Z)→H²(X)=f*∘g* | Correct direction; source's contrary arrow is an erratum below.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Monodromy orientation | Root reflection; −id | Root reflection fixes a positive three-plane, orientation +1; −id has orientation −1 | Retain O⁺ convention.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Root reflection | δ²=−2, (x,δ)=1, x²=2 | sδ(δ)=−δ; sδ²δ=δ; (x+δ)²=2+2−2=2 | Retain plus sign; minus sign yields −2.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Root effectivity | Integral (1,1) δ²=−2 | χ(O(δ))=2−1=1; ±δ pair oppositely with a Kähler class | Retain; use a Kähler class in the nonprojective case rather than presupposing an ample line.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Nef/ample boundary | h²=2,(h,δ)=0 | Wall value 0 versus ample inequality >0 | Retain distinct outputs.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Rootless cone | NS has no roots | Number of root inequalities 0; cone remains the chosen positive component in real dimension 20 | Retain; not just NSℝ.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Polarized period image | Primitive h=e+df in U, d=1,2 | h²=2d=2,4; a perpendicular root forces pairing 0 and excludes ampleness | Retain all positive degrees.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Local finiteness/chamber step | Compact positive-cone region versus approaching isotropic boundary | Positive lower norm bound >0 on compact region; boundary bound 0 | No claim of local finiteness across the isotropic boundary.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Integral involution | (u₀,u₁,u₂,a,b) | Two applications give original vector; each swapped pair preserves B; negative block contributes (−u,−v)=(u,v) | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Primitive eigensublattices | Diagonal and anti-diagonal swapped U blocks | Cross pairing 1−1=0; diagonal pairing 1+1=2 | Retain U(2) and orthogonality.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Rational projections versus integral splitting | (e,0) in a swapped pair | (1+ι)/2 gives (e/2,e/2), nonintegral; sum of ± projections (e,0), product 0 | Retain finite-index rather than direct integral decomposition.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| E₈ normalization | Diagonal root versus zero matrix | Square −2−2=−4; zero matrix gives 0 and radical rank 8 | Correctly excludes old stand-in.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Eigenspace ranks/discriminants | S=M(2), T=U⊕M(2) | Ranks 10,12; signatures (1,9),(2,10); orders 2¹⁰=1024 each; exponents 2 | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Gluing index/unimodularity | S⊕T inside Λ | Index 1024; absolute discriminant 1024²/1024²=1 | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Discriminant graph definition | γ=id on ℤ/4 | (1,1) belongs; (1,3) does not; both coordinate projections have four distinct images | Retain actual graph, not arbitrary subgroup.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Anti-isometry half-norm | ⟨2⟩⊕⟨−2⟩ versus ⟨2⟩⊕⟨2⟩ | 1/4−1/4=0 versus 1/4+1/4=1/2 mod ℤ | Retain; latter cannot give even gluing.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Overlattice carrier | (e+f)/2 in first pair | Square 0; index 2; determinant −4/2²=−1 | Retain; hcarrier fixes the integral object.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Extension iff, incompatible | S=⟨4⟩,T=⟨−4⟩,γ=id,g=−id,h=id | γḡ(1)=3≠1=h̄γ(1); (1,1)/4→(−1,1)/4 outside graph | Both sides false; no extension.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Extension iff, compatible | Same lattices, g=h=−id | Both sides send 1→3; extension −id on V×W | Both sides true; retained headline discriminates.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Extension uniqueness/composition | id and −id | Ambient formula fixes every (v,w); (−id)²=id; inverse of −id is −id | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Rank-zero/degenerate lattice cases | V=W=0; positive-rank zero form | Trivial graph, one extension; zero form has nonzero radical and fails IsNondegenerate | Retain empty/boundary behavior as README Checks only.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Geometric involution realization | Hodge, chamber-preserving ι with ι²=id | Surface j² acts as id; cohomological faithfulness gives j²=id; σ eigenvalue −1 | Retain dependence on strong Torelli and actual cone.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Holomorphic Lefschetz numbers | Non-symplectic versus symplectic involution | L(O)=1−1=0 versus 1+1=2 | Retain; not the topological Euler formula.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Wrong application to empty case | (10,10,0) | Ordinary formula would give g=1,k=0, one elliptic curve, not empty | Correctly excluded from ordinary formula.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Free quotient invariants | Complex free involution | Degree 2; χ(OX)=2=2χ(OY), so χ(OY)=1; canonical character −1 has order 2 | Retain; in char 2 the character becomes +1, outside this argument.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Hyperplane invariance | δ↦−δ, z↦cz with c≠0 | Pairing a becomes −a or ca; zero set unchanged | Retain.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Free-period exclusion | δ=e−f in U | δ²=−2, pairings −1,1, divisibility 1 | Hδ excluded from Ω_free.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Wrong square-only model | δ=e−2f in U | δ²=−4, pairings −2,1, divisibility 1 | Not a nodal-arrangement vector.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Curve lifting/eigenspaces | C,jC disjoint, each square −2 | (C−jC)²=−4, ι sends it to its negative; (C+jC)²=−4, eigenvalue +1 | Retain anti-invariant requirement.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Marking group | Centralizer action versus fixing S pointwise | Discriminant condition γḡ=h̄γ; with g=id reduces h̄=id | Retain O⁺(T) versus stable subgroup distinction.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Orbit classification/nodal converse | Isomorphic free pairs and their quotient | Two covers of one quotient agree up to cover isomorphism; marking changes give one orbit; nodal Euler values −4 upstairs versus −2 downstairs | Consistent with the source's isomorphism-class bijection, not a fine universal family.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |
| Source norm normalization | Degree-two canonical cover, L=O | det π_*O=K_Y≠O, whereas a norm must send O to O; tensoring det π_*O⁻¹ gives O | Source error only, recorded below; roadmap does not use the erroneous definition.  Carried from [previous review](packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~2.md). |

**Headlines and Lean coverage.** The endpoints remain differential/vector-field vanishing; Kählerness, Hodge diamond and integral (1,1)/algebraization; Ricci-flat existence/uniqueness, simple connectivity and the cup lattice; 20-dimensional and polarized 19-dimensional families; local Torelli, Pic=0 cone and twistor continuation; global period surjectivity, strong Torelli, monodromy, full cones and polarized period image; integral gluing extension; geometric involutions, their fixed-locus classification and free/nodal period classification. The revised §7.2 additionally supplies the finite-order clean Lefschetz specialization as a proof milestone. The two previously statable algebraic/lattice headlines and their real-body definitions are unchanged. Suggested.lean:25 now explicitly includes fixed-locus classification among the geometric headlines missing their analytic involution/quotient carriers. No new stand-in or admitted data was introduced. The new clean geometric construction remains in the README, alongside its normal-bundle and fixed-submanifold targets.

**Pinned declarations reopened: 17 sites.** Mathlib is 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti is a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, matching lake-manifest.json. These are definition/equation inspections, not checks against a newer library.

| Declaration or object | Pin-relative location | Verified boundary |
| --- | --- | --- |
| Scheme.Over | Mathlib/AlgebraicGeometry/Over.lean:36 | Structure morphism, not a K3 property. |
| SmoothOfRelativeDimension | Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:127 | Local standard-smooth dimension; not nonemptiness. |
| IsProper | Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41 | Separated, universally closed and locally finite type. |
| GeometricallyIntegral | Mathlib/AlgebraicGeometry/Geometrically/Integral.lean:40 | Geometric integrality, not merely reducedness. |
| Projectivization | Mathlib/LinearAlgebra/Projectivization/Basic.lean:48 | Projective quotient; no geometric period map. |
| Matrix.toBilin' | Mathlib/LinearAlgebra/Matrix/BilinearForm.lean:93 | Matrix/bilinear-form equivalence; no automatic nondegeneracy. |
| Scheme.relativeDifferentials | TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85 | Actual sheafified relative differentials. |
| SheafOfModules.exteriorPower | TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49 | Sheafified exterior-power functor. |
| Scheme.Modules.Cohomology | TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:62 | Sheaf.H on the underlying additive sheaf. |
| IntegralLattice | TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63 | Full finite integral carrier with rational form; nondegeneracy separate. |
| IntegralLattice.Isometry | TauCeti/LinearAlgebra/IntegralLattice/Isometry/Basic.lean:74 | Ambient form equivalence plus mapped-carrier equality. |
| Isometry.discriminantGroupEquiv | TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Group.lean:165 | Actual induced quotient action. |
| discriminantGroupOrthogonalSumEquiv | TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Operations.lean:139 | Sum discriminant to product, matching graph comap. |
| discriminantQuadraticMap | TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Quadratic.lean:122 | Half-norm mod ℤ, with evenness explicit. |
| intermediateCarrierOfDiscriminantSubgroup | TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Basic.lean:127 | Inverse of the subgroup/intermediate-carrier correspondence. |
| ofIsotropicSubgroup | TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Isotropic.lean:379 | Existing even overlattice construction. |
| Isometry.discriminantSubgroup_intermediateCarrierEquiv | TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Naturality.lean:190 | Correspondence naturality, not literally the complete pair-extension iff. |

**Supplier and ownership audit.** Ran `roadmaps grep`, `roadmaps show` and `roadmaps resolve`; read the changed contracts, all Needs lines and the corresponding main/new-roadmap passages. The resolver returned no unresolved roadmap citation or local Lean name; its library phase explicitly lacked pinned packages, so the local inspections above provide that evidence. Existing-roadmap revision heads were not substituted for main. Board package texts and the supplied open-work heads were searched by Picard/torsor, finite-order fixed-locus and Lefschetz objects, not only by proposed declaration names.

| Contract or affected consumer | Resolution at this round |
| --- | --- |
| ComplexKahlerGeometry K1–K7 | Main K1:96, K2:193, K3:296, K4:444, K5:568, K6.0:1245, K6.1:1274, K7:1405 resolve. K4's bundle/sheaf reconstruction and cocycle gluing are real inputs, but not a supplied Picard/H¹ equivalence. No use of unmerged K4.P remains. |
| ComplexComparisonPartII C5.4 | The new-roadmap text gives the underlying integral line class and exp(2πiu) comparison at README:3291–3334. Its β-to-α coefficient transition equals the new frame equation e_j=e_i g_ij. No second Chern-class construction is requested. Its earlier C−1/C0,C1.9,C2,C4 contracts remain unchanged. |
| SchemeAndStackFoundations §2.3 | Main README:3330–3355 gives torsors on an arbitrary site and the abelian H¹ comparison, with pullback and connecting maps. It is applicable to Oˣ; it does not itself reconstruct holomorphic bundles. Added scope citation §3.4 resolves at line 4789. |
| MorseNovikov N5–N7 | Main README:292 onward supplies the local index; N6:494–550 gives trace/local-index and homotopy invariance; N7:564–580 gives the vector-field index sum, including nonorientable manifolds. These are consumed once; finite-order linearization and normal-index reduction are owned here. |
| GeometricTopology Layer 1 | Main README:218–222 explicitly gives tubular neighbourhoods of closed submanifolds. This is sufficient for the stated localized perturbation route. |
| DifferentialGeometry / HopfRinow | Main DG Layer 3:371 supplies flows, Layer 8:816 the real de Rham comparison, §12.1:915 metrics. Completed/HopfRinow/README.md:264 and 398–418 give exponential domains, derivative at zero and local diffeomorphism; equivariance under the averaged finite group remains work here. |
| AlgebraicTopology Stages 6–7 | Main README:946 and 1573 resolve for rational cohomology and Euler characteristic. No new clean fixed-locus theorem is claimed to be already there. |
| IndexTheory I8 | Supplied new head README:888–898 requires isolated nondegenerate fixed points. The new restriction is accurate. Its empty-fixed-set use in §2.1 remains valid; §7.2 now uses the separately owned clean formula. |
| Remaining main suppliers | SchemeAndStackFoundations §§0.3,1.17,1.23,2.6,2.20,4.9,4.11,5.9–5.10; AlgebraicCurves Layers 9/10/12; JacobianChallenge A–D; StableReduction 4–6; CharacteristicClasses C1–C7; SmoothBundlesConnections B1.5 resolve on main. Their unchanged detailed mathematical audit is carried from the previous review. |
| AlgebraicModuliForArithmeticGeometry | Its new-roadmap head §§1.1–1.3,7.3,7.8,8.1–8.3 resolve. The revised local analytic line extension is explicitly a K3 target; it does not treat algebraic Picard lifting as an unconditional analytic universal-family theorem. |
| IntegralLattices and FourManifolds | Main IntegralLattices §§1E–1F and 5J supply the same gluing/classification boundaries; FourManifolds F7 remains the independent quartic-example supplier. No fixed-curve formula has been transferred to lattice classification. |
| EnriquesSurfaces | The supplied head now locates its cover adapter at §6.2, README:648 onward, U0 at 652. It consumes K3. The line numbering in the previous report is not reused as a current locator. No reverse dependency was introduced. |
| K3SurfacesAndSymplecticBoundedness | Supplied head README:202–210 identifies the shared integral-topology request and its sign conventions. It is a later consumer, not a supplier. A request there does not register this package's gap. |
| Competing open and board work | Object searches found no competing smooth finite-order clean Euler/trace specialization that this patch should import. Scheme fixed loci and tame étale trace contracts concern different carriers. No new Lean declaration name was added. The general trace theorem stays with MorseNovikov; K3 owns only the explicitly added specialization and its normal-action proof. |

The new definition-like contracts each include an API and at least three discriminating Checks. The new clean theorem retains compactness, finite dimension, smoothness, boundarylessness, Hausdorffness and second countability; it does not require orientation or connectedness. The finite-order restriction is the mathematical hypothesis making normal contributions positive, not a good-prime shortcut. No new computational programme, copied source passage, re-plan or supply cycle was found.

## Not verifiable

- **Picard supplier registration:** no readable package plan or registered supplier-gap entry is available; this is R01, not an inference that the proposed group isomorphism is false.
- **Nikulin primary Theorem 4.2.2 and Rudakov–Shafarevich p.1502:** carry forward the previous report's settled uncertified status. The former classification was checked again in Artebani–Sarti–Taki v2; the latter passage is unchanged. No new source request is made.
- **Unchanged analytic proof details:** the previous report's limits on nonlinear estimates, current regularization, graph compactness and the complete wild quotient-to-pencil reconstruction remain. They were not reopened by this incremental review; finite normalization tests do not verify full existence proofs.
- No new source-fetch failure occurred. Shen's cited author-hosted text and all changed open locators were readable. No unresolved text is being used to postpone the verdict.

## Source issues

No new source error was found in the changed passages. The following previously recorded issues are carried forward from PRREVIEW-K3Surfaces~2; the patch does not change the affected source conventions.

- **Misprint** in huybrechts-torelli at §1, printed p.1040–02, lines 43–46: the source says a Hodge map H²(S)→H²(S′) is a signed pullback for an isomorphism S→S′; it should be an isomorphism S′→S or the inverse pullback; affects a stated result.
- **Misprint** in gritsenko-hulek at §2, printed p.4, lines 127–129: the source says the marking sends all H²(X,ℤ) onto the invariant lattice M and the involution acts trivially there; it should be the pullback of the quotient's torsion-free H²; affects a stated result.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 638–639: the source says the canonical-cover involution has fixed points; it should be fixed-point-free; affects nothing.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 640–642: the source says the eigensublattice orthogonal complement lies in Pic(S); it should be in Pic(X); affects nothing.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 649–654: the source says Br(X) has order two when the quotient's canonical class is nonzero; it should be Br(S); affects the proof.
- **Error** in dolgachev-enriques at §5, footnote 3, printed p.16, lines 658–659: the source says the norm of L is det(π_*L); it should be det(π_*L) tensor det(π_*O_X) inverse, so the unit has norm the unit; affects the proof.
