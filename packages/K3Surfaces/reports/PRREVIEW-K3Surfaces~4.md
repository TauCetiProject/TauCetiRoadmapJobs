# Review of K3Surfaces (pull request #1285 at 771182d)
**Verdict:** needs changes

## R01 (P2) — Resolve the duplicate owner of the holomorphic Picard comparison

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:191–211`, “Construct the frame-torsor comparison Pic_hol(M)≃H¹(M,O_Mˣ)”. Ownership is also asserted at lines 14–17.

**Claim:** Making this an actual target repairs the missing producer, but introduces two owners for exactly the same general construction. The supplied open revision of ComplexKahlerGeometry already plans it in K4.P. The new target has every complex manifold as its domain, the same frame torsor, inverse by gluing, and tensor/dual/pullback laws; it is not a distinct K3 specialization. The rule forbidding consumption of an existing-roadmap revision does not resolve this duplicate ownership.

**Witness:** `TauCetiRoadmap/ComplexKahlerGeometry/README.md:583–590` at the supplied open revision constructs Pic_hol, its frame torsor, gluing inverse and group isomorphism to H¹(Oˣ), including tensor, dual and pullback. Main's K4 does not yet contain that comparison.

**Exact repair:** Establish one producer. If §1.1 keeps this bridge, coordinate removal of the duplicate construction from the open K4.P revision and have that revision cite §1.1. Otherwise place the extension in a permitted ComplexKahlerGeometry Part II supplier, register its minimal gap in the package plan and README, and import it here. Do not restore a dependency on the unmerged revision. Keep C5.4 as the existing owner of the exponential/Chern comparison in either case.

**Repair test:** Search the two specifications for the frame-torsor isomorphism and its inverse: there must be one construction and one consumer. Preserve O(1)↦1 on ℙ¹ and the nonzero degree-zero class on an elliptic curve mapping to c₁=0. Both proposed producers currently give these same outputs. This is a new duplication caused by the repair, not a claim that the mathematics is false.

## R02 (P3) — Add the source manifest

**Location:** `TauCetiRoadmap/K3Surfaces/README.md:869–906`, the references, including the new Stacks Tag 09NU entry.

**Claim:** Previous R02 remains: `TauCetiRoadmap/K3Surfaces/sources.toml` is absent. The bibliography now has eleven works, without the required machine-readable source versions, locators and retrieval records.

**Witness:** The tracked folder contains README.md, Suggested.lean and metadata.toml only; it has zero manifest entries for eleven references. Stacks Tag 09NU and the cited Huybrechts draft were legally fetched in this review.

**Exact repair:** Add the `tauceti-roadmap-sources/v1` manifest with eleven distinct work entries, preserving previous keys and actual versions and recording the source-service metadata. Keep Nikulin and Rudakov–Shafarevich uncertified; do not request them again. Include `stacks-09nu` at Lemma 20.6.1 and retain the Huybrechts draft numbering.

**Repair test:** Reconcile eleven bibliography works with eleven manifest entries; ensure the Stacks record resolves to the checked lemma, and that preprint/published versions of a work do not get separate keys. This review edits no manifest.

## Previous findings

- R01 — repaired: README:191–248 now constructs the comparison locally, with its inverse, API, Checks and three named suppliers; README:254,367 consume it. The unregistered gap is gone. The repair introduces the duplicate-owner issue in this report's R01.
- R02 — not repaired: README:869–906 now lists eleven works; sources.toml is still absent. Repeated as R02.

## Verified sound

:robot: Independent AI review. This is an **incremental re-review of 120 changed lines since 3671d62**. I checked both previous findings, the changed passages and their consumers, the changed sampled sections, ownership, the gate and Lean. Unchanged mathematical rows are explicitly carried from [r3], rather than represented as a new full review.

The head is `771182da41ca6e86f0fbd83490e6b2198c4ebefc`; main is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. I read the normative repository README and CONTRIBUTING, and main's ComplexKahlerGeometry and SchemeAndStackFoundations for shape and supplier boundaries. The outside-folder diff is empty and the worktree remains clean. No supplied repair report settles either finding as “not actionable in this package”.

**Gate and elaboration.** The worker's gate passed. I independently reran the full gate with the supplied candidate merge order, content checkout and targeted build; it returned exit 0:

```text
gate K3Surfaces: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The separately run prescribed dependency check returned exit 0:

```text
depcheck: 204 roadmaps, 1478 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. An initial full-gate run using its default order returned only `depcheck: NOT IN ORDER: K3Surfaces (insert it after its last supplier)`. That is the placement-only case excluded by the brief, not a finding; the candidate-order full rerun above passes. No tooling or order file was edited. The dependency scanner does not detect the semantic duplicate in R01.

`lake build TauCetiRoadmap.K3Surfaces.Suggested` completed successfully (9021 jobs). Direct elaboration of Suggested.lean returned exit 0, with only its two `sorry` warnings. A scratch copy with `#check @...` for **all four declarations** also elaborated. The vanishing theorem retains Field, IsAlgClosed, CharP, 2<p, the structure morphism and IsAlgebraicK3. The gluing theorem retains both nondegeneracy instances, evenness, the anti-isometry condition, the exact form/carrier equations and the pair of isometries. No binder changed. Both definitions retain their needed parameters.

The one-tactic probe tried `simp`, `rfl` and `infer_instance` on each admitted theorem, with `sorry` only as fallback; both still needed the fallback, and no probe errors occurred. The unchanged exact-library-lemma audit is carried from [r3], with the actual lattice naturality statement reopened below. Neither theorem is a definition restatement or a small-value Check. The only Lean diff is two docstring lines naming the missing general holomorphic line-bundle and structure-sheaf carriers; no placeholder was added.

**Source sample.** The two affected seeded sections are §1.1 and §3.1. The other eleven sampled sections (§0.1, §0.2, §2.1, §4.1, §5.1, §5.2, §6.1, §6.2, §7.1, §7.2, §7.3) retain [r3]'s source checks and numerical rows. The changed consumers of integral (1,1) and local line extension are included below; the positive-current, Ricci-flat, Torelli and involution proof programmes are not re-reviewed from scratch.

| Changed claim | Text opened and result |
| --- | --- |
| Frame torsor and inverse, §1.1 | `stacks-09nu line 217` through 246, Lemma 20.6.1 (Tag 09NU), printed pp.5–6: ringed space with local stalks, Pic/H¹ group isomorphism, frame torsor and inverse. Holomorphic stalks are local, so the hypothesis holds. The source proof's presheaf-module mistake is recorded below; the roadmap instead uses the valid local gluing construction. |
| Exact segment and K3 integral (1,1) | `huybrechts-k3 line 449` through 474, draft §1.3.2, pp.15–16, equation (3.1): the exponential sequence, Pic≃H¹(Oˣ), and injective Chern map with kernel description when H¹(O)=0. C5.4 supplies the general exponential sequence and its positive normalization. |
| Line extension on the Hodge locus, §3.1 | `huybrechts-k3 line 3980` through 3999, draft §6.2.4, p.108: nonzero class, Hodge hypersurface, cohomology comparison over a small disk and extension using the total-space exponential sequence. The revised paragraph preserves shrinking and fibrewise type (1,1), and owns the obstruction/rigidification work. |

These were fetched through the sources service from the Stacks Project and Huybrechts's author page. No source text was copied into the repository, no manifest was edited, and neither changed locator was unavailable. The source numbering is that of the cited draft or stable Stacks tag, not a substituted edition.

**Adversarial table.** There are **136 rows: 22 fresh and 114 carried from [r3]**. Each records values; tests of analytic existence headlines are consistency/normalization tests, not proofs of those existence theorems. The fresh rows cover every changed mathematical assertion, the affected consumers and both ownership witnesses. R02's discrete witness is eleven bibliography works versus zero manifest entries.

| Statement | Instances tried | Computed values on the two sides | Result; change |
| --- | --- | --- | --- |
| Pic_hol as bundle classes, §1.1:191–193 | O, O(1), O(−1) on ℙ¹ | Bundle degrees 0,1,−1; corresponding H¹(Oˣ) classes 0,1,−1 | Correct general object; ownership duplication is R01. |
| Frame torsor and scalar action, §1.1:194–196 | Local frame e, another frame 2e, zero section | Unique transition unit 2 sends e to 2e; 0 is not a unit or a frame | Free transitive action on frames; excludes all sections as the torsor. |
| Inverse construction, §1.1:197–199 | Trivial cocycle and degree-one cocycle on ℙ¹ | Gluing gives O and O(1); taking frames again recovers classes 0 and 1 | Both inverse equations have the right objects. |
| Independence of local frames, §1.1:209–211 | e′ᵢ=2eᵢ, e′ⱼ=3eⱼ | g′ᵢⱼ=(3/2)gᵢⱼ; reconstructed line degree remains 1=1 | Coboundary, not a change of bundle class. |
| Tensor and contracted product, §1.1:204–205 | O(1) and O(−1) | Product transition g·g⁻¹=1; degree 1+(−1)=0; torsor class 0 | Tensor law agrees with addition. |
| Dual and unit, §1.1:204–205 | O(2), its dual and double dual | Degrees 2,−2,2; trivial line degree 0 | Inverse torsor gives negation; double dual returns the input. |
| Holomorphic pullback, §1.1:206–208 | Degree-two map ℙ¹→ℙ¹; identity | f*O(1)=O(2); Chern evaluations 2=2·1 and 1=1·1 | Same source-to-target pullback on bundle and cohomology. |
| Composition and restriction, §1.1:206–210 | Degree-two followed by degree-three map; restriction to affine chart | Both composite routes give O(6), Chern number 6; on ℂ the restricted class is 0 | Composition 2·3=6; local restriction need not remain nontrivial. |
| Zero class iff global frame, §1.1:211 | O and O(1) on ℙ¹ | O has frame 1 and class 0; O(1) class 1, no global frame | Both directions discriminate; a nonzero section with a zero is not a frame. |
| Point and empty manifold, §1.1:236–238 | Point, empty open-set site | Pic_hol and H¹(Oˣ) each have cardinality 1; class 0 maps to 0 | Empty case is legitimate, not a nonempty-manifold assumption. |
| Disconnected base, §1.1:236–238 | ℙ¹⊔ℙ¹ | (1,−1)+(−1,1)=(0,0) in both bundle and torsor groups | Componentwise operations agree. |
| No compactness assumption, §1.1:200 | M=ℂ, trivial line | Pic(ℂ)=0 and H¹(ℂ,Oˣ)=0; frame 1 realizes the unique class | Noncompact input remains in the statement. |
| Exact Picard segment, §1.1:213–216 | ℙ¹ | H¹(O)=H²(O)=0; c₁:ℤ→ℤ is n↦n, kernel 0 and image ℤ | Exactness at Pic and H²; no extra K3 hypothesis. |
| Local exponential surjectivity | Coordinate z on a small disk in ℂˣ versus ℂˣ itself | Local log gives exp(2πiu)=z; global winding of z is 1, of an exponential 0 | Sheaf surjectivity is not surjectivity on all global sections; agrees with C5.4. |
| Integral Chern sign, §1.1:218–230 | O(1), O(−1), inverse transition | Evaluations +1,−1; g↦g⁻¹ changes +1 to −1 | Matches C5.4's β-coordinate to α-coordinate direction. |
| Čech normalization, §1.1:219,231–233 | u₀₁=u₁₂=1/4; u₀₂=1/2 then −1/2 | δu=1/4−1/2+1/4=0; then 1/4+1/2+1/4=1; exp values i,i,−1 in both | Difference is δ of the integer log-change, so the cohomology class is unchanged. |
| Elliptic negative control, §1.1:241–243 | E=ℂ/(ℤ+iℤ), class 1/2 | 1/2 mod ℤ+iℤ≠0; c₁=0; twice the class is 0 | Exact sequence allows nontrivial kernel; no unconditional injectivity. |
| K3 integral (1,1), §1.1:239–240,254 | Picard-rank-one complex K3 | H¹(O)=0, ker c₁=0, rank im c₁=1, rank H²(ℤ)=22, h²(O)=1 | New local producer supplies the same restricted comparison. |
| Family line extension, §3.1:367 | Constant family X×Δ and L₀ on X | pr_X*L₀ restricts to L₀; Hodge class is constant; obstruction 0 | Comparison applies on total space and fibres; shrinking retained. |
| Hodge-locus restriction, §3.1:367 | Nonzero polarization h versus h=0 | One nonzero equation gives 20−1=19; zero class gives 20−0=20 | No assertion of extending a polarization over the whole unpolarized base. |
| Ownership witness, §1.1 and CKG K4.P | M=ℙ¹, O(1); M=E, nonzero degree-zero L | Both specifications send O(1) to 1 and L to a nonzero H¹(Oˣ) class with c₁=0 | Same general comparison and inverse, not a K3-specific specialization; R01. |
| Source-associated presheaf negative control | Stacks proof with frame torsor of O(1) on ℙ¹ | F(ℙ¹)=∅, so (F(ℙ¹)×O(ℙ¹))/Oˣ(ℙ¹)=∅; a module must contain 0 | Source error only; local gluing/sheafification yields H⁰(O(1))≃ℂ² and repairs it. |
| Characteristic-two contraction | σ=dx∧dy over char 2; 2σ | Contraction matrix [[0,1],[1,0]] has determinant −1=1; 2σ has zero matrix and determinant 0 | Characteristic-two repair retained; all-characteristic K3 predicate retained. Carried from [r3]. |
| Inverse-rescaling Check | c=2 in characteristics 2 and 3 | Char 2: 2·(1/2)=0·0=0; char 3: 2·2=4=1 | New hypothesis selects invertible rescaling; negative control explicit. Carried from [r3]. |
| Noether Check and locator | K3 and torus | χ=1−0+1=2 and c₂=12·2=24; torus χ=1−2+1=0 and c₂=0 | Huybrechts p.13 now supports the computation. Carried from [r3]. |
| Finite-order fixed-submanifold theorem | id on S²; empty manifold; permutation of three points | Fixed components 1,0,0; L=2,0,0 equals χ(Fix)=2,0,0 | Includes n=1, empty and disconnected inputs. Carried from [r3]. |
| Finite-order hypothesis | Identity on circle versus irrational rotation | id has n=1, Fix=S¹, L=1−1=0; irrational rotation has no positive n with gⁿ=id | Boundary test; no false finite-order assertion about arbitrary diffeomorphisms. Carried from [r3]. |
| Equivariant tangent identification | Equatorial reflection of S² | Tangent action diag(1,−1), ker(1−dg) rank 1 equals tangent rank of fixed S¹; normal rank 1 | No normal eigenvalue 1. Carried from [r3]. |
| Normal determinant | −1 line and rotation by 2π/3 | det(1−(−1))=2; rotation determinant (1−cosθ)²+sin²θ=3 | Both signs +1; θ=0 would give 0 and is excluded on the normal. Carried from [r3]. |
| Rank-zero normal | Identity on S² | Full tangent determinant det(0)=0; normal determinant empty product 1 | Invertibility is on the quotient normal bundle, not the full tangent. Carried from [r3]. |
| Local index and negative-time flow | Tangential linear vector fields V(x)=x and V(x)=−x; normal action −1 | 1−exp(−t)>0 and 1−exp(t)<0 for t>0; multiplying normal determinant 2 gives signs +1,−1 | Equals sign dV in both cases; reversing flow would reverse the one-dimensional sign. Carried from [r3]. |
| Poincaré–Hopf component sum | Height gradient on S² and Morse gradient on S¹ | S² zero indices +1,+1 sum 2; S¹ +1,−1 sum 0 | Component contributions χ(S²)=2 and χ(S¹)=0. Carried from [r3]. |
| Compact complement argument | Antipodal S² in Euclidean norm; empty complement for id | Distance from x to −x is 2, so perturbation <1 stays fixed-point-free; identity's complement is empty | No assertion of a positive minimum on a noncompact complement. Carried from [r3]. |
| Orientation-free trace | Equatorial reflection and antipodal S² | On H⁰,H² eigenvalues 1,−1, so both L=0; fixed sets S¹ and ∅ both have χ=0 | Orientation-preserving hypothesis unnecessary; test agrees. Carried from [r3]. |
| Nonorientable manifold | id on ℝP²; reflection [x:y:z]↦[x:y:−z] | Rational Betti numbers (1,0,0), hence L=1; fixed loci ℝP² or ℝP¹ plus one point have χ=1 or 0+1=1 | Formula works without orientation. Carried from [r3]. |
| Scalar extension of trace | Double-sextic involution on H² over ℚ then ℝ | Matrix has one +1 and twenty-one −1 eigenvalues; trace −20 over either field; total L=2−20=−18 | Rational/real traces agree. Carried from [r3]. |
| Conjugacy and additivity | Reflect a different equator by conjugation; disjoint union of two identity spheres | Conjugate trace 0 and fixed-circle Euler 0; disjoint sum L=2+2=4=χ(S²⊔S²) | Preserves normal action and adds contributions. Carried from [r3]. |
| Double-sextic fixed curve | Smooth branch sextic | Genus (6−1)(6−2)/2=10; χ=2−20=−18; topological L=2+(1−21)=−18 | Clean fixed-locus formula passes this instance. Carried from [r3]. |
| Holomorphic versus real normal factor | Local complex tangent eigenvalues (1,−1) | Full complex det(1−dj)=0; real normal determinant 2²=4; holomorphic L(O)=1−1=0 | Distinguishes the three quantities; no zero-denominator use. Carried from [r3]. |
| Non-symplectic fixed-locus classification | (r,a,δ)=(1,1,1) and (20,2,1) | (g,k)=(10,0) and (0,9); Euler −18 and 2+18=20; cohomological 2r−20 equals −18 and 20 | General non-symplectic quantifier now explicit. Carried from [r3]. |
| Exceptional involutions | (10,10,0) and (10,8,0) | Actual loci ∅ and two elliptic curves have Euler 0 and 0; ordinary formula would give (g,k)=(1,0) and (2,1) | Exceptions correctly separated; Euler number alone cannot classify. Carried from [r3]. |
| Free/nodal locus and corrected locator | e−f in U; e′−f′ in U(2); e−2f in U | (square,divisibility)=(−2,1),(−4,2),(−4,1); only the second belongs to the even −4 arrangement | Equation (8) and its preceding paragraph now give the claimed arrangement. Carried from [r3]. |
| Consumer IndexTheory restriction | Free deck action versus double-sextic deck action | Free action has 0 fixed points and empty holomorphic sum 0; sextic tangent determinant 0 | I8 retained only for its valid isolated/empty domain. Carried from [r3]. |
| Algebraic K3 predicate | Smooth quartic over algebraically closed k; Fermat quartic in char 3 | ω=O(4−4)=O; h¹=0; partials xᵢ³ have no common projective zero | Retain; actual smooth surface passes. Carried from [r3]. |
| Canonical double-sextic model | Smooth sextic branch, char≠2 | π_*O=O⊕O(−3); h¹=0+0=0; K=π*O(−3+3)=O | Retain. Carried from [r3]. |
| Singular branch negative control | Six general lines | Number of crossing points C(6,2)=15; singular points 15 versus required 0 | Retain the resolution distinction. Carried from [r3]. |
| K3 predicate excludes wrong surfaces | Abelian surface, empty scheme, square-zero thickening | h¹=2≠0; nonempty integral carrier absent; nonzero nilradical with ε²=0 versus reduced smooth local rings | Retain all three exclusions. Carried from [r3]. |
| Surface category/isomorphism transport | Identity and composition | id*ω=ω; (g∘f)*ω=f*g*ω; identity base extension k⊗ₖk=k | Retain; forms must be transported with the isomorphism. Carried from [r3]. |
| Chosen form excludes zero | σ=dx∧dy; zero form | Matrix of contraction is [[0,−1],[1,0]], det=1; zero matrix has det=0 | Retain distinction. Carried from [r3]. |
| Contraction inverse | ∂x, ∂y | Images dy,−dx; inverse takes dy↦∂x, dx↦−∂y; both round trips id | Retain. Carried from [r3]. |
| Rescaling a unit | c=2 in char 3 | c=−1, c⁻¹=−1; c⁻¹c=1 | Retain unit API. Carried from [r3]. |
| Differential vanishing headline | Smooth Fermat quartic in char 3 | h⁰(Ω¹)=h⁰(T)=0; both subsingleton conclusions have one element | Retain; hp is true, 2<3. Carried from [r3]. |
| Characteristic binders | p=0,2,3 and a zero ring | 2<0 false; 2<2 false; 2<3 true; zero ring fails Field's 0≠1 | Retain Lean scope. Carried from [r3]. |
| Vector-field-to-pencil input | Arbitrary nonelliptic K3 with NS=ℤh, h²=4 | (nh)²=4n²; no nonzero isotropic divisor; h⁰(T)=0 | Its nonzero-vector-field hypothesis is essential to the route; no claim every K3 is elliptic. Carried from [r3]. |
| Elliptic alternatives | Rational and c₂=0 branches | 12≠24 and 0≠24 | Retain exclusion. Carried from [r3]. |
| Wild char-3 alternatives | k=1,2 in the two formulas | 3²+3=12; 3⁴+3=84; 3¹+9=12; 3³+9=36; none 24 | Retain; 21 and 15 are not powers of 3. Carried from [r3]. |
| One-singular-fibre branch | Martin D(v) | Number of singular fibres 1<2 | Correctly excluded by the separate pencil target. Carried from [r3]. |
| Serre-dual vanishing | K3 with σ; Enriques twisted form after étale pullback | dim H²(T)=dim H⁰(Ω¹⊗ω)=0; a section injecting into 0 is 0 | Retain; this is a consequence, not an input to K0.A. Carried from [r3]. |
| Algebraic/analytic comparison | Quartic versus nonprojective Kummer | Quartic integral h has h²=4>0; nonprojective example has 16 exceptional roots but no positive-square integral (1,1) class | Retain projective-image restriction. Carried from [r3]. |
| Hodge diamond | K3 versus abelian surface | K3: b₂=1+20+1=22, e=1+22+1=24; torus: h¹⁰=2,h¹¹=4 | Retain. Carried from [r3]. |
| Tensor/Chern normalization | h²=2d, L² | c₁(L²)=2h; (2h)²=8d, not 2d | Retain. Carried from [r3]. |
| Positive component | Form diag(1,−1), κ=(1,0),−κ,(1,1) | Squares 1,1,0; pairings with κ 1,−1,1 | Only κ passes both tests. Carried from [r3]. |
| Algebraization criterion versus ampleness | Positive h perpendicular to effective root δ | h²>0, (h,δ)=0; positive-square test passes, ample test fails | Retain distinct statements. Carried from [r3]. |
| Monge–Ampère volume constant | V=ω²; replace V by 2V | c=1, cV=ω²; c′=1/2, c′(2V)=V | Retain; denominator ∫V>0. Carried from [r3]. |
| Potential normalization | φ=0 versus φ+t, t≠0 | ∫φω²=0 versus t∫ω²≠0 | Retain uniqueness normalization. Carried from [r3]. |
| Smooth parameter/naturality test | Constant parameter family and transported identical inputs | φ_t=0, ∂tφ_t=0; identity pullback φ=φ | Consistent test only; detailed estimate not certified here. Carried from [r3]. |
| Quaternionic sign | I,J acting by left quaternion multiplication | IJ(1)=k; JI(1)=−k; IJ+JI=0 | Retain. Carried from [r3]. |
| Sphere of complex structures | (a,b,c)=(1/√2,1/√2,0), and zero | Square=−(1/2+1/2)=−1; zero triple has square 0 | Retain unit-sphere condition. Carried from [r3]. |
| Holomorphic two-form normalization | ωJ²=ωK²=2, orthogonal | σ²=2−2=0; (σ,σ̄)=2+2=4 | Retain. Carried from [r3]. |
| Phase and positive orientation | σ↦iσ | (ωJ,ωK)↦(−ωK,ωJ); real determinant +1 | Retain. Carried from [r3]. |
| Ricci-flat cover exclusion | Flat torus quotient; degree-d symplectic cover | Torus e=0 versus 24; 2=d·2 forces d=1 | Retain numerical exclusion; splitting is a substantive target. Carried from [r3]. |
| Cup lattice | U³⊕E₈(−1)² | Rank 3·2+2·8=22; determinant (−1)³=−1; signature (3,19) | Retain; signed determinant differs from discriminant order 1. Carried from [r3]. |
| Signature/index normalization | c₁²=0,c₂=24 | (c₁²−2c₂)/3=−16=3−19 | Retain. Carried from [r3]. |
| Integral marking/pullback | Identity and inverse | id preserves every pairing; φ⁻¹φ=id on rank-22 ℤ lattice | Retain integral, not just rational, marking. Carried from [r3]. |
| Pointed Kuranishi family | K3 tangent/obstruction groups | h⁰(T)=0, h¹(T)=20, h²(T)=0; expected base dimension 20 | Retain pointed universal claim. Carried from [r3]. |
| Family carrier versus periods alone | Constant X×Δ→Δ | Fibre X; local monodromy id; period derivative 0; base dimension 1≠20 | Retain negative control. Carried from [r3]. |
| Family pullback/cocycle | Two identity pullbacks | (id∘id)*X=X, marking id∘id=id | Retain. Carried from [r3]. |
| Infinitesimal test base | ℂ[ε]/ε² versus its reduction | ε²=0, tangent H¹(T)⊗(ε) has dimension 20; reduction has 0 directions | Retain nonreduced deformation inputs. Carried from [r3]. |
| Polarized slice | h²=2 and 4; h=0 | Nonzero class imposes 1 equation, 20−1=19; zero imposes 0 | Retain h≠0/ample assumptions. Carried from [r3]. |
| Primitivity | h primitive of square 2; 2h | Squares 2 and 8; divisibility changes 1→2 | Retain integral moduli distinction. Carried from [r3]. |
| Relative ampleness | Resolved double sextic exceptional curve | h²=2, (h,δ)=0 | Nef passes, ample fails. Carried from [r3]. |
| Period predicate, degenerate ranks | Rank 0; rank 1 with form 1 | No nonzero vector; z²=0 implies z=0 | Empty in both cases. Carried from [r3]. |
| Period positivity | ±I₂, z=(1,i) | B(z,z)=0 in both; B(z,z̄)=2 or −2 | Only +I₂ passes. Carried from [r3]. |
| Projective rescaling | c=3+4i and c=0 | abs(c)²=25, new positive value 50=25·2; zero scale gives 0 and no point | Retain c≠0. Carried from [r3]. |
| Bilinear versus Hermitian roles | z=(1,i) | Bilinear z·z=0; Hermitian z·z̄=2 | Retain separate pairings; no accidental Hermitian isotropy. Carried from [r3]. |
| Period plane and orientation | x=(1,0), y=(0,1); conjugation | x²=y²=1, (x,y)=0; conjugation determinant −1 | Retain oriented plane. Carried from [r3]. |
| Domain dimensions/components | Signatures (3,19) and (2,19) | Quadric dimensions 22−2=20 and 21−2=19; components 1 and 2 | Retain; marked-moduli components are separate. Carried from [r3]. |
| Local Torelli derivative | Generator σ fixed; constant family control | Contraction tangent map rank 20=20; constant family derivative rank 0 | Retain actual universal-family condition. Carried from [r3]. |
| Hodge loci | Rational δ with (δ,z)=0 or 1; fixed h on Ωh | Equation values 0,1,0 respectively | First/fixed h are Hodge; only the nonforced equation is proper. Carried from [r3]. |
| Baire avoidance | Countable nonforced hyperplanes in a period ball | Each has empty interior; complement dense; forced h removes the entire ball | Retain “very general”, not Zariski open. Carried from [r3]. |
| Pic=0 cone | κ²=2; 2κ;−κ;0 | Squares 2,8,2,0; pairings 2,4,−2,0 | First two lie in selected cone; last two do not. Carried from [r3]. |
| Absence of curves in Pic=0 | Effective curve class C | Positive area ∫Cκ>0 forces [C]≠0; Pic=0 permits only class 0 | Retain positivity contradiction. Carried from [r3]. |
| Cone selector/transport/scaling | κ′=2κ and λ=2 | (α,κ′)=2(α,κ); (2α)²=4α²; signs unchanged | Retain. Carried from [r3]. |
| Twistor conic | Positive orthonormal W of rank 3 | z=a+ib: z²=0, (z,z̄)=2; conic dimension 1 versus Ω dimension 20 | Retain geometric conic. Carried from [r3]. |
| Twistor restriction/marking | Fixed smooth X×S² and identity restriction | Fibre X; topological H² rank 22; restriction id | Retain; complex structures vary despite smooth product. Carried from [r3]. |
| Generic W condition | W⊥∩Λ=0 versus integral δ∈W⊥ | Nonzero equation intersects a conic in at most 2 points; forced equation vanishes at every point | Retain countable exceptional set. Carried from [r3]. |
| Local chain estimate | ε=1/2, δ=1/4, 0≤t≤1 | (1−t)ε+tδ=1/2−t/4≤1/2, with strict endpoint bounds | Matches source's connected-arc containment. Carried from [r3]. |
| Boundary entry | Tangent normal functional ℓ and chosen conic direction v | ℓ(v)≠0 permits an inward sign with ℓ(±v)<0; tangent choice has ℓ(v)=0 | Retain existence of a suitable conic, not a claim about every conic. Carried from [r3]. |
| Constant versus twistor family | Constant family and generic twistor sphere | Period image cardinality 1 versus whole ℙ¹ conic | Retain. Carried from [r3]. |
| Marked moduli and sign | φ and −φ | [z]=[−z]; positive-3-space determinant (−1)³=−1 | Same period, different orientation components. Carried from [r3]. |
| Inseparability/Hausdorff reduction | Doubled disk origin | Two distinct origins → one Hausdorff point; neighbourhood intersections nonempty | Retain; Hausdorffness is not imposed prematurely. Carried from [r3]. |
| Graph limits | Constant identity graphs; reflected-root degeneration | Identity projection degrees (1,1), residual cycle 0; reflection changes δ to −δ | Identity test agrees; graph compactness itself remains a deep construction. Carried from [r3]. |
| Period covering topology | Oriented positive 2-planes in ℝ³, deformation retract model | Compact model SO(3)/SO(2)=S²; π₁(S²)=0 | Retain simple-connectivity route and componentwise conclusion. Carried from [r3]. |
| Strong Torelli | id versus −id; κ²=2 | id(κ) pairs 2 with κ; −κ pairs −2 | id lifts uniquely; −id fails the cone hypothesis. Carried from [r3]. |
| Pullback direction | f:X→Y, g:Y→Z | (g∘f)*:H²(Z)→H²(X)=f*∘g* | Correct direction; source's contrary arrow is an erratum below. Carried from [r3]. |
| Monodromy orientation | Root reflection; −id | Root reflection fixes a positive three-plane, orientation +1; −id has orientation −1 | Retain O⁺ convention. Carried from [r3]. |
| Root reflection | δ²=−2, (x,δ)=1, x²=2 | sδ(δ)=−δ; sδ²δ=δ; (x+δ)²=2+2−2=2 | Retain plus sign; minus sign yields −2. Carried from [r3]. |
| Root effectivity | Integral (1,1) δ²=−2 | χ(O(δ))=2−1=1; ±δ pair oppositely with a Kähler class | Retain; use a Kähler class in the nonprojective case rather than presupposing an ample line. Carried from [r3]. |
| Nef/ample boundary | h²=2,(h,δ)=0 | Wall value 0 versus ample inequality >0 | Retain distinct outputs. Carried from [r3]. |
| Rootless cone | NS has no roots | Number of root inequalities 0; cone remains the chosen positive component in real dimension 20 | Retain; not just NSℝ. Carried from [r3]. |
| Polarized period image | Primitive h=e+df in U, d=1,2 | h²=2d=2,4; a perpendicular root forces pairing 0 and excludes ampleness | Retain all positive degrees. Carried from [r3]. |
| Local finiteness/chamber step | Compact positive-cone region versus approaching isotropic boundary | Positive lower norm bound >0 on compact region; boundary bound 0 | No claim of local finiteness across the isotropic boundary. Carried from [r3]. |
| Integral involution | (u₀,u₁,u₂,a,b) | Two applications give original vector; each swapped pair preserves B; negative block contributes (−u,−v)=(u,v) | Retain. Carried from [r3]. |
| Primitive eigensublattices | Diagonal and anti-diagonal swapped U blocks | Cross pairing 1−1=0; diagonal pairing 1+1=2 | Retain U(2) and orthogonality. Carried from [r3]. |
| Rational projections versus integral splitting | (e,0) in a swapped pair | (1+ι)/2 gives (e/2,e/2), nonintegral; sum of ± projections (e,0), product 0 | Retain finite-index rather than direct integral decomposition. Carried from [r3]. |
| E₈ normalization | Diagonal root versus zero matrix | Square −2−2=−4; zero matrix gives 0 and radical rank 8 | Correctly excludes old stand-in. Carried from [r3]. |
| Eigenspace ranks/discriminants | S=M(2), T=U⊕M(2) | Ranks 10,12; signatures (1,9),(2,10); orders 2¹⁰=1024 each; exponents 2 | Retain. Carried from [r3]. |
| Gluing index/unimodularity | S⊕T inside Λ | Index 1024; absolute discriminant 1024²/1024²=1 | Retain. Carried from [r3]. |
| Discriminant graph definition | γ=id on ℤ/4 | (1,1) belongs; (1,3) does not; both coordinate projections have four distinct images | Retain actual graph, not arbitrary subgroup. Carried from [r3]. |
| Anti-isometry half-norm | ⟨2⟩⊕⟨−2⟩ versus ⟨2⟩⊕⟨2⟩ | 1/4−1/4=0 versus 1/4+1/4=1/2 mod ℤ | Retain; latter cannot give even gluing. Carried from [r3]. |
| Overlattice carrier | (e+f)/2 in first pair | Square 0; index 2; determinant −4/2²=−1 | Retain; hcarrier fixes the integral object. Carried from [r3]. |
| Extension iff, incompatible | S=⟨4⟩,T=⟨−4⟩,γ=id,g=−id,h=id | γḡ(1)=3≠1=h̄γ(1); (1,1)/4→(−1,1)/4 outside graph | Both sides false; no extension. Carried from [r3]. |
| Extension iff, compatible | Same lattices, g=h=−id | Both sides send 1→3; extension −id on V×W | Both sides true; retained headline discriminates. Carried from [r3]. |
| Extension uniqueness/composition | id and −id | Ambient formula fixes every (v,w); (−id)²=id; inverse of −id is −id | Retain. Carried from [r3]. |
| Rank-zero/degenerate lattice cases | V=W=0; positive-rank zero form | Trivial graph, one extension; zero form has nonzero radical and fails IsNondegenerate | Retain empty/boundary behavior as README Checks only. Carried from [r3]. |
| Geometric involution realization | Hodge, chamber-preserving ι with ι²=id | Surface j² acts as id; cohomological faithfulness gives j²=id; σ eigenvalue −1 | Retain dependence on strong Torelli and actual cone. Carried from [r3]. |
| Holomorphic Lefschetz numbers | Non-symplectic versus symplectic involution | L(O)=1−1=0 versus 1+1=2 | Retain; not the topological Euler formula. Carried from [r3]. |
| Wrong application to empty case | (10,10,0) | Ordinary formula would give g=1,k=0, one elliptic curve, not empty | Correctly excluded from ordinary formula. Carried from [r3]. |
| Free quotient invariants | Complex free involution | Degree 2; χ(OX)=2=2χ(OY), so χ(OY)=1; canonical character −1 has order 2 | Retain; in char 2 the character becomes +1, outside this argument. Carried from [r3]. |
| Hyperplane invariance | δ↦−δ, z↦cz with c≠0 | Pairing a becomes −a or ca; zero set unchanged | Retain. Carried from [r3]. |
| Free-period exclusion | δ=e−f in U | δ²=−2, pairings −1,1, divisibility 1 | Hδ excluded from Ω_free. Carried from [r3]. |
| Wrong square-only model | δ=e−2f in U | δ²=−4, pairings −2,1, divisibility 1 | Not a nodal-arrangement vector. Carried from [r3]. |
| Curve lifting/eigenspaces | C,jC disjoint, each square −2 | (C−jC)²=−4, ι sends it to its negative; (C+jC)²=−4, eigenvalue +1 | Retain anti-invariant requirement. Carried from [r3]. |
| Marking group | Centralizer action versus fixing S pointwise | Discriminant condition γḡ=h̄γ; with g=id reduces h̄=id | Retain O⁺(T) versus stable subgroup distinction. Carried from [r3]. |
| Orbit classification/nodal converse | Isomorphic free pairs and their quotient | Two covers of one quotient agree up to cover isomorphism; marking changes give one orbit; nodal Euler values −4 upstairs versus −2 downstairs | Consistent with the source's isomorphism-class bijection, not a fine universal family. Carried from [r3]. |
| Source norm normalization | Degree-two canonical cover, L=O | det π_*O=K_Y≠O, whereas a norm must send O to O; tensoring det π_*O⁻¹ gives O | Source error only, recorded below; roadmap does not use the erroneous definition. Carried from [r3]. |

**Headline coverage.** The README endpoints remain: algebraic differential/vector-field vanishing; Kählerness, the Hodge diamond, integral (1,1) and projectivity; Ricci-flat existence/uniqueness, simple connectivity and the geometric cup lattice; 20-dimensional and polarized 19-dimensional deformations; local Torelli, the Pic=0 cone and twistor continuation; global periods, strong Torelli, monodromy, cones and polarized period image; integral gluing extension; geometric involutions, fixed-locus classification and free/nodal period loci. The finite-order clean trace formula remains a proof milestone. The general frame-torsor comparison is now an explicit additional construction. The two statable algebraic/lattice headlines are present; the geometric ones and the new comparison are named in the module docstring with their missing carriers. The change adds no Lean name, sorry'd data, stand-in or padding.

**Pinned library audit: 17 reopened sites.** Mathlib is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, matching lake-manifest.json. Object searches covered holomorphic bundles/sheaves, Picard/cohomology and torsors at these pins. The following are actual definition inspections, not assumptions based on declaration names.

| Declaration/object | Pin-relative file and line | Boundary checked |
| --- | --- | --- |
| Scheme.Over | Mathlib/AlgebraicGeometry/Over.lean:36 | Carries the structure morphism. |
| SmoothOfRelativeDimension | Mathlib/AlgebraicGeometry/Morphisms/Smooth.lean:127 | Local standard-smooth relative dimension; does not itself assert nonemptiness. |
| IsProper | Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41 | Separated, universally closed, locally finite type. |
| GeometricallyIntegral | Mathlib/AlgebraicGeometry/Geometrically/Integral.lean:40 | Geometric integrality under field base change. |
| Scheme.relativeDifferentials | TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85 | Actual sheafified relative differentials. |
| SheafOfModules.exteriorPower | TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49 | Exterior-power functor with sheafification. |
| Scheme.Modules.Cohomology | TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61 | Sheaf.H of the underlying additive sheaf on the Zariski site. |
| IntegralLattice | TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63 | Full finitely generated integral carrier and symmetric rational form; nondegeneracy separate. |
| IntegralLattice.Isometry | TauCeti/LinearAlgebra/IntegralLattice/Isometry/Basic.lean:74 | Ambient form equivalence with equality of mapped carriers. |
| Isometry.discriminantGroupEquiv | TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Group.lean:165 | Induced action on the actual quotient. |
| discriminantGroupOrthogonalSumEquiv | TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Operations.lean:139 | Sum-to-product direction agrees with the graph comap. |
| discriminantQuadraticMap | TauCeti/LinearAlgebra/IntegralLattice/Discriminant/Quadratic.lean:122 | Half-norm mod ℤ, evenness explicit; nondegeneracy not built into this definition. |
| intermediateCarrierOfDiscriminantSubgroup | TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Basic.lean:127 | Inverse subgroup/intermediate-carrier correspondence. |
| ofIsotropicSubgroup | TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Isotropic.lean:379 | Existing even-overlattice construction, not rebuilt here. |
| Isometry.discriminantSubgroup_intermediateCarrierEquiv | TauCeti/LinearAlgebra/IntegralLattice/Overlattice/Naturality.lean:190 | Naturality of the correspondence; not literally the unique pair-extension iff. |
| Complex manifolds | Mathlib/Geometry/Manifold/Complex.lean:13–37 | Holomorphic-function theorems; no general holomorphic line-bundle/sheaf-Picard comparison here. |
| IsHolomorphicSection and holomorphicSheaf | TauCeti/Analysis/Complex/HolomorphicSheaf.lean:138,180 | Type-valued sheaf on ℂ, with normed complex coefficient E; not the ringed manifold and line-bundle carriers needed for all M. |

**Suppliers and ownership.** I ran `roadmaps grep`, `roadmaps show` and `roadmaps resolve`, read all 15 Needs paragraphs, and resolved the cross-roadmap citations again at main or the permitted new-roadmap heads. The resolver found no unresolved roadmap/local name; its library phase has no pinned packages, so the local inspections above supply that separate evidence. I also searched board package READMEs and the supplied open work by object. No new Lean declaration can collide because none was added. The changed construction does collide at the mathematical level, as R01 records.

| Contract/consumer | Resolution and inspected boundary |
| --- | --- |
| ComplexKahlerGeometry K4 | Main README:444–567 supplies holomorphic structure sheaf, sections, bundle/sheaf reconstruction and cocycle gluing. It stops before Pic/H¹. K1–K7 resolve at 96,193,296,444,568,1243,1405. These existing inputs are consumed. |
| ComplexKahlerGeometry K4.P | Supplied open revision README:574–609 supplies exactly the general frame-torsor comparison now added here. It is an existing-roadmap revision, so it cannot replace main as a supplier. Nonetheless it is a competing construction: R01. The other supplied CKG revision is not used to override main either. |
| SchemeAndStackFoundations §§2.2–2.3 | Main README:3309–3355 supplies Čech-to-derived comparison and torsors on arbitrary sites, with abelian H¹, pullback and connecting maps. Oˣ is an abelian sheaf. It does not itself construct the holomorphic bundle comparison. |
| SchemeAndStackFoundations §2.11 | Main README:3656–3670 proves the scheme Hilbert-90/Picard comparison; its domain is schemes, not arbitrary complex manifolds. Thus it does not remove the missing holomorphic adapter. |
| ComplexComparisonPartII C5.4 | Supplied new-roadmap head README:3291–3334 gives integral Chern classes, exp(2πiu), the integer Čech cocycle and class comparison. The frame equation e_j=e_i g_ij agrees with its β-to-α coordinate convention. No second Chern construction is requested. C−1/C0, C1.9, C2 and C4 remain the analytification/GAGA inputs. |
| §1.1→§3.1 | The old gap references at the analytic integral (1,1) and local family-extension consumers are replaced with the actual earlier comparison. No remaining gap:integral-topology reference is present here. The local analytic obstruction calculation remains §3.1's own work. |
| SmoothBundlesConnections B1.5 | Main README:498–554 supplies Ehresmann for the proper surjective submersion on Hausdorff local charts; no global Hausdorffness of marked moduli is inferred. |
| AlgebraicModuliForArithmeticGeometry | New-roadmap head §§1.1–1.3 at README:305,504,601; §7.3:9311; §7.8:9782; §§8.1–8.3:9882,9911,9958 resolve. Its algebraic Picard and effectivity contracts do not assert the new analytic bundle extension. |
| Other scheme/surface inputs | Main SASF §§0.3,1.17,1.23,2.6,2.20,3.4,4.9,4.11,5.9,5.10 resolve at README:551,2624,3021,3437,4275,4789,5448,5528,7129,7175. AlgebraicCurves Layers 9/10/12 resolve at README:1099,1193,1468; JacobianChallenge A–D at 111,135,143,218; StableReduction 4–6 at 529,552,576. Detailed unchanged audits are carried from [r3]. |
| Topological/index inputs | Main CharacteristicClasses C1–C7, DG Layers 0–3,5,8–9 and §12.1, AlgebraicTopology Stages 1,5–7, MorseNovikov N5–N7, GeometricTopology Layer 1, and Completed/HopfRinow Layer 1 resolve. Representative locations: DG README:268,371,816,915; AT:946,1573; MN:292,377,564; GT:177; HopfRinow:264. IndexTheory's supplied new head I6/I7/I8 resolves at README:669,723,888. Unchanged clean versus isolated-fixed-point distinction is carried from [r3]. |
| Lattice and example inputs | Main IntegralLattices 0G,1B–1F,5E–5J,6A resolves, including README:568,626,633,1597,1643. FourManifolds F7 is Layer 7 at its supplied head README:2868 onward, with the quartic/elliptic comparison and its explicit earlier concrete-example inputs. These provide examples, not Torelli for every K3. |
| Downstream consumers | EnriquesSurfaces E1 and E6.U0–U4 resolve, with E6.U0 at its supplied head README:652. K3SurfacesAndSymplecticBoundedness README:202–210 still addresses an integral-topology contract to CKG while reaching the K3 application through K3 K1. Neither is consumed by K3. Resolving R01 should leave these consumers pointing to one comparison producer. |

The proposed move is from an unregistered future CKG contract to K3 §1.1. Its mathematics and dependency direction are workable, but it is not a completed ownership move while the supplied K4.P revision still constructs the same result. Other hits concern scheme Picard groups, arithmetic frame torsors or specialized flag-variety Picard computations; they do not provide this all-complex-manifold adapter. The new API has three substantive bullets and six discriminating Checks, with no invented carrier, computational programme or copied source passage.

## Not verifiable

- Nikulin Theorem 4.2.2 and Rudakov–Shafarevich p.1502 retain [r3]'s settled uncertified status. Their unchanged primary texts were not requested again. The earlier alternative checks through Artebani–Sarti–Taki and Martin remain the recorded evidence.
- The unchanged nonlinear estimates, positive-current regularization, graph compactness and wild quotient-to-pencil reconstruction retain [r3]'s review limits. This incremental review does not claim to certify those complete proofs from numerical examples.
- No changed source locator was unavailable, and no missing text postpones this verdict. The remaining obstruction is duplicate ownership, not source access or elaboration.

## Source issues

The first item is new. The remaining six are carried from [r3], whose affected source conventions and roadmap passages are unchanged.

- **Error** in stacks-09nu at Lemma 20.6.1 (Tag 09NU), proof, printed p.6, lines 240–246: the source says the pointwise contracted-product presheaf is already a presheaf of modules; it should be sheafified first or constructed by locally gluing modules, since a nontrivial torsor can have no global sections; affects the proof.
- **Misprint** in huybrechts-torelli at §1, printed p.1040–02, lines 43–46: the source says a Hodge map H²(S)→H²(S′) is a signed pullback for an isomorphism S→S′; it should be an isomorphism S′→S or the inverse pullback; affects a stated result.
- **Misprint** in gritsenko-hulek at §2, printed p.4, lines 127–129: the source says the marking sends all H²(X,ℤ) onto the invariant lattice M and the involution acts trivially there; it should be the pullback of the quotient's torsion-free H²; affects a stated result.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 638–639: the source says the canonical-cover involution has fixed points; it should be fixed-point-free; affects nothing.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 640–642: the source says the eigensublattice orthogonal complement lies in Pic(S); it should be in Pic(X); affects nothing.
- **Misprint** in dolgachev-enriques at §5, printed p.16, lines 649–654: the source says Br(X) has order two when the quotient's canonical class is nonzero; it should be Br(S); affects the proof.
- **Error** in dolgachev-enriques at §5, footnote 3, printed p.16, lines 658–659: the source says the norm of L is det(π_*L); it should be det(π_*L) tensor det(π_*O_X) inverse, so the unit has norm the unit; affects the proof.

[r3]: packages/K3Surfaces/reports/PRREVIEW-K3Surfaces~3.md
