# Review of JacobianChallengePartII (pull request #1225 at 79cf245)

**Verdict:** needs changes

## R01 (P2) — State the two headlines that already have native carriers

**Location:** `TauCetiRoadmap/JacobianChallengePartII/Suggested.lean:18`; `TauCetiRoadmap/JacobianChallengePartII/README.md:9`, `:14`, `:117`, `:897`. The docstring says: “The other headline statements require geometric objects absent from the pinned libraries”.

**Claim:** This explanation does not cover finite-stage descent of invertible sheaves (§0.0) or the triangular isomorphism of actual group-scheme fibre powers (§5.5). Both are explicitly advertised headlines, and both can be stated on native carriers. Neither requires a relative Picard scheme, a canonical Abel morphism, or a multiplication isogeny.

**Witness:** Two scratch signatures elaborated with only `sorry` warnings: descent using `InvertibleSheaf`, scheme limits and affine transitions; triangular coordinates using `GrpObj (Over S)`, finite products and an actual scheme isomorphism.

For example, the following native statement elaborated at the pins, with `Mathlib` and `TauCeti.AlgebraicGeometry.LineBundle.Functoriality` imported and the usual category, scheme and Tau Ceti algebraic-geometry namespaces open:

```lean
universe u

theorem invertibleSheaf_descends {I : Type u} [SmallCategory I] [IsCofiltered I]
    (F : I ⥤ Scheme.{u}) (c : Cone F) (hc : IsLimit c)
    (hqc : ∀ i, CompactSpace (F.obj i))
    (hqs : ∀ i, QuasiSeparatedSpace (F.obj i))
    (haff : ∀ (i j : I) (f : i ⟶ j), IsAffineHom (F.map f))
    (L : InvertibleSheaf c.pt) :
    ∃ (i : I) (M : InvertibleSheaf (F.obj i)),
      Nonempty ((InvertibleSheaf.pullback (c.π.app i)).obj M ≅ L) := by
  sorry
```

This is the qcqs affine-transition limit theorem, whose curve instance is §0.0. The second probe quantified over `S : Scheme`, `A : Over S`, `[GrpObj A]`, and `n : ℕ`, and asserted an isomorphism of `∏ᶜ fun _ : Fin (n+1) => A`. Its forward projections were `p₀` and `pᵢ / p₀`; its inverse projections were `p₀` and `pᵢ * p₀`. Thus the probe concerned the actual scheme, not arbitrary free point variables.

**Exact repair:** Add headline signatures for §0.0, including its morphism/equality descent assertions, and the represented isomorphism of §5.5, with its stated compatibility. Use the native carriers and real product maps; update the docstring and README name correspondence. Continue to name §5.6's genuinely unavailable geometric factorization separately. The probes establish statability, not proofs. The repaired statements retain the degree-one bundle in the constant elliptic limit and eventual equality of `1+ε` and `1`; the triangular inverse sends `(a,b)` to `(a,ba)` for the noncommuting matrices in the table below.

## R02 (P2) — Import the cube specialization instead of planning it again

**Location:** `TauCetiRoadmap/JacobianChallengePartII/README.md:561`. Section 3.8 asks to “Prove `[2]^*O_J(θ_α)≅O_J(3θ_α+[-1]^*θ_α)`”.

**Claim:** This is exactly the already supplied multiplication formula with `n=2` and `L=O(θ_α)`. The paragraph itself identifies that specialization. There is no different hypothesis or additional construction that makes it a new owned target.

**Witness:** `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:886`, §A1.5, supplies the formula for every integer n and explicitly its nonsymmetric n=2 case, including the base-line correction.

**Exact repair:** Delete §3.8 as an owned target; cite §A1.5 directly in §3.9's route and dependency list, with the field base-line class trivial. Keep the nonsymmetric-theta Check beside the consuming identity. The same computation still gives `−(3L+[-1]^*L)+2L=−L−[-1]^*L`; on an elliptic curve its degree is `−4+2=−2`. For nonsymmetric genus-two theta, retaining `[-1]^*L` still distinguishes this from the false `−2L` class. No new cube theorem is needed.

## R03 (P3) — Resolve the fine-level moduli consumer to its actual owner

**Location:** `TauCetiRoadmap/JacobianChallengePartII/README.md:1058`, also `:45` and `:1108`: “StableReductionPartII constructs that scheme”.

**Claim:** This names a nonexistent downstream roadmap as owner of the motivating fine moduli construction. It also obscures the characteristic-zero scope of the available construction.

**Witness:** `roadmaps show StableReductionPartII` found no main or open roadmap; the board package search also found none. `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:1983`, §B4.1, constructs the fine curve scheme over ℚ(ζℓ).

**Exact repair:** Point the motivating characteristic-zero example and downstream entry to `AbelianSchemesAndArithmeticModuliPartII` §B4.1. Remove the unsupported promise of a separate `StableReductionPartII` construction. Keep Layer 7's theorem for an arbitrary given family over the stated base. This repairs the g=2, ℓ=3 characteristic-zero instance without narrowing that theorem or adding the later consumer as a supplier.

## R04 (P3) — Cite the supplied dual base-change property without an invented declaration name

**Location:** `TauCetiRoadmap/JacobianChallengePartII/README.md:268`, also `:278` and `:691`: `AbelianScheme.dual_baseChange`.

**Claim:** The named declaration is absent from the cited supplier. The mathematical property is present, so this is a locator defect rather than an unowned prerequisite.

**Witness:** `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1089` explicitly supplies base change of the dual with Poincaré data, but neither its README nor its Lean file declares `AbelianScheme.dual_baseChange`.

**Exact repair:** Replace that backticked name by “AbelianSchemesAndArithmeticModuli §A2.2, base change of the dual with its Poincaré data” at all three occurrences. The dual-number test remains `(E_A)^∨ ≅ (E^∨)_A`, with rank-one Lie modules over `A=k[ε]/ε²`; this changes the locator, not the supplied mathematics.

## R05 (P3) — Give the Hodge-line definition its API and discriminating Checks

**Location:** `TauCetiRoadmap/JacobianChallengePartII/README.md:1036`, `:1044`. Section 6.3 defines `λ_H(X/S):=det(π_*ω_{X/S})`, but has no API list and only one Check bullet combining smooth and nodal cases.

**Claim:** This definition does not meet the required API-plus-three-Checks form. Its current qualitative examples do not test the determinant map or its scalar normalization.

**Witness:** The only Check says that the determinant has rank-g input. On a rank-two comparison, both a chosen map and twice that map have rank-two input, but their determinants differ by 4 in characteristic zero.

**Exact repair:** List the line's rank, the determinant of the specified comparison, and coherent pullback as its API. Add three separate computed Checks: a smooth genus-two fibre gives a rank-one determinant; an irreducible one-node genus-two fibre uses a rank-two semi-abelian differential module, not its rank-one abelian quotient; swapping two differential basis vectors acts by −1 on the determinant in characteristic other than two. These give ranks `1`, `2` versus `1`, and determinant `−1`, respectively. Keep them in the README, not in `Suggested.lean`.

## Verified sound

The review covered all **50 numbered targets**, their APIs, conventions, Checks and routes; all **15 seeded source targets**; the **two Lean declarations**, including the sole sorried theorem; all **51 `Needs` lines**; and the supplied gate. The table below records concrete tests, not a claim that finite examples prove the general theorems. No counterexample to the retained mathematical statements was found. R02 concerns ownership, and R01 concerns acceptance-test completeness.

The worktree was at the requested head and remained unchanged. The outside-folder diff was empty. The worker's gate reported:

```text
gate JacobianChallengePartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The requested dependency check was run; the final output was:

```text
depcheck: 205 roadmaps, 1459 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. All supplier edges point to allowed main/earlier owners. The interleaved construction order in “How to read the build” resolves the apparent Layer 1/Layer 2 dependency: §§1.1–1.3a precede §§2.1–2.3, which precede §1.4 and then §§2.4–2.7. The translated assertion in §3.4 precedes its c=0 specialization; its internal reference is not a circular proof. No declared supplier gaps were supplied for this package, and no mathematical prerequisite was found missing from the resolved supplier sections. R04 is an inaccurate name for a property those sections do supply.

**Source sample.** Source IDs below identify the legal source-service extractions: `yuan` = arXiv:2108.05625v4; `dgh` = arXiv:2001.10276v3; `kleiman` = arXiv:math/0504020v1; `egk` = arXiv:math/9911071v1; `milne` = the author's *Jacobian Varieties* notes; `km` = the Brown author-hosted Knudsen–Mumford scan. Stacks IDs identify the tagged source-service texts. The arXiv versions, rather than publication pagination, are the README's locators. There were no README locators marked unverified.

| Seeded target | Text and locator opened | Verification and limits |
| --- | --- | --- |
| 1.2 Relative Jacobian | `kleiman` line 2390, Exercise 5.23, p. 50; line 2435, Remark 5.26, p. 51; `milne` line 1283, Theorem 8.1, pp. 27–28 | Smooth projective geometrically connected curve families give the relative Jacobian; smoothness, properness and dimension g match the stated noetherian-family scope. A sectionless curve is not replaced by its Jacobian. |
| 1.3 Base change | `milne` line 1306, discussion following Theorem 8.1, p. 28; `kleiman` line 2435, Remark 5.26, p. 51 | The representing relative Picard object has the base-change comparison. Arbitrary, including nonnoetherian, test bases also use the explicitly supplied sheaf base-change contract and §0.0. |
| 2.2 Degree-d Abel morphism | `yuan` line 983, §2.2.1, p. 29 | Formula is d·x−α. Degree zero still defines a map; the source's unqualified finiteness sentence is false at d=0, while this roadmap correctly separates construction from §2.5's d≠0 theorem. |
| 2.3 Local pointed factorization | `yuan` line 1044, Proposition 2.6 proof, p. 31; line 983, p. 29 | The multiplication-plus-translation calculation supports the route. Explicitly, relative to b, the translation is d·b−α. Its extension to negative and zero d is integer line-bundle algebra, not a positive-degree finiteness claim. |
| 3.3 Canonical twice-theta | `yuan` line 1005, Definition 2.4, p. 30 | The dual before diagonal pullback is present. The roadmap's identification with the supplier graph bundle respects its opposite evaluation sign. |
| 3.9 Poincaré diagonal | `yuan` line 3708, Theorem A.3(4), p. 110; line 3724, proof, p. 110 | The answer is −θ−[−1]*θ for arbitrary degree-one divisor, with no symmetry assumption. The nonsymmetric cube term is retained. |
| 3.11 Symmetry | `yuan` line 1009, paragraph after Definition 2.4, p. 30 | Symmetry is asserted for the normalized bundle. The stronger explicit rigidified family comparison is supplied by §A2.6 and the specified construction, not inferred from geometric points alone. |
| 4.4 Actual classes/Brauer obstruction | `kleiman` line 983, Remark 2.11, pp. 20–21, especially lines 1019–1026, sequence (2.11.4) | Universal global functions and the section distinction are retained. The algebraically trivial restriction uses §4.1; it does not identify all actual classes with Picard-sheaf points. |
| 4.5 Actual Picard torsion cokernel | `yuan` line 1044, Proposition 2.6 and proof, pp. 31–32 | Arithmetic normal-base and d>0 hypotheses are retained. The actual-class correction gives exponent d; surjectivity of [d] on S-points is not assumed. |
| 4.9 Pointed square comparison | `yuan` line 3665, §A.3, p. 108 | Both axis kernels and their pullback isomorphism are present. Yuan's surrounding application is over a complete valued field. The roadmap's general-field algebraic extension is consistent with its Albanese/Picard route, but the cited Zhang details could not be certified: see Not verifiable. |
| 5.1 Canonical Abel map | `yuan` line 1231, Theorem 2.10(1), p. 37 | g>1 gives e=2g−2≠0, and the displayed canonical map agrees. No prime-to-characteristic restriction is introduced. |
| 5.3 Faltings–Zhang map | `yuan` line 3297, §4.6.2, pp. 96–97; `dgh` line 1205, §6.1, equation (6.3), p. 25; line 1231, (6.5) and following discussion | The common first point is subtracted from each later point. DGH's universal characteristic-zero instance is not mistaken for a restriction on the independently constructed family map. |
| 5.5 Triangular coordinates | `yuan` line 3340, proof of Theorem 4.17(5), p. 98 | The source performs this on a commutative Jacobian. The roadmap's extension to a noncommutative group object is justified by its written right-cancellation argument; the GL₂(𝔽₂) computation below tests the stronger assertion. |
| 5.6 Shifted factorization | `yuan` line 3299, shifted definition, p. 97; line 3340, proof of Theorem 4.17(5), p. 98 | The shift is only in the head; the tail in τ is unscaled. Scaling by 2g−2 appears in D, after the triangular change. |
| 6.2 Hodge bundles | `yuan` line 1426, hypotheses, p. 43; line 1435, Lemma 3.4; line 1457, proof, p. 44 | Integral noetherian base, stable genus>1 curve and semi-abelian Picard identity component match. The proof explicitly passes from Lie=R¹ to invariant differentials. The metric assertion is correctly excluded. |

Additional opened source checks included `egk` lines 171–277 and 660–692 (locally noetherian family, negative Abel convention, autoduality, determinant right inverse and translation independence); `kleiman` lines 1977–2004 and 2089–2094 (intrinsic algebraic equivalence and relative tangent comparison); `km` lines 163–228 (Chapter I, Definition 1, printed pp. 23–24, Theorem 1, p. 25); `stacks-01zr` lines 1179–1216 (32.10.2 and adjacent invertible-sheaf descent); `stacks-02l6` lines 2704–2715 and 2755–2758 (02L6 and 02LA, fpqc-local closed immersion and finiteness); `stacks-0b91` lines 3421–3429 (perfect pushforward and arbitrary base change); and `stacks-04xv` lines 346–362 (proper, unramified, universally injective criterion). Connected-base independence in EGK is applied componentwise; no reduced-base replacement is made. The determinant source was OCR-extracted; Kleiman's two normalization misprints were also checked visually in the scan.

**Computed adversarial pass.** In the table, E is an elliptic curve with origin 0, P is nontorsion when required, A=k[ε]/ε², and additive line classes are used. A genus-two example with κ=K_C−2α≠0 distinguishes a theta line from its inverse pullback. For §5.4/§5.6 choose actual genus-two points x₁,x₂, put P=j(x₁,x₂), and choose y=3P−iω(x₁); then iω(x₂)−iω(x₁)=2P. This makes the listed coordinates actual Jacobian points. “No mathematical change” means the tested identity survived, not that its general proof has been formalized.

| Statement | Instances tried | Computed values on the two sides / wrong model | Result and change |
| --- | --- | --- | --- |
| Standing curve scope | Smooth E; one-node arithmetic-genus-two curve; genus zero | E: dim J=1=g. Nodal curve: torus rank 1 plus abelian dimension 1=2, but nonproper. Genus zero: dim J=0. | Smooth scope excludes nodal input; positive-genus scope excludes zero. No change. |
| Sign conventions | E, positive Abel and Mumford map | i₀(P)=P; φ_O(0)(P) corresponds to −P; uφ(P)=−P, not P when 2P≠0. | Positive polarization and negative addition conventions agree. |
| 0.0 Descent | Constant E system; A→k; polynomial union | O_E(0) has degree 1 at stage and limit, versus degree 0 for O. Automorphisms 1+ε≠1 at A become 1=1 over k. A finite presentation uses variables through a finite N. | Eventual equality is necessary; R01 adds the statable headline. |
| 0.1 Relative degree | E, O and O(0); residue extension; disconnected test | χ(O)−χ(O)=0; χ(O(0))−χ(O)=1−0=1; extension keeps 0 and 1. Two components give the function (0,1), not a constant integer. | No change. |
| 0.2 Degree pieces | O(0), O(−0); disconnected and empty tests | Degrees 1+(−1)=0, inverse of degree 1 has degree −1. Pair (0,1) lies in the coproduct sheaf but in neither fixed-degree piece. Empty test has one section of each sheaf. | Sheaf coproduct, not pointwise disjoint union; no change. |
| 0.3 Picard scheme | E and its square-zero base change | Each Picᵈ has dimension 1; tangent dimension h¹(O_E)=1; H²(O_E)=0. Over A the tangent module is A, not just k. | Smoothness route detects nilpotents; no change. |
| 0.4 Degree torsors and difference | E degrees 1 and 2; genus-one torsor of period 2 | After a degree-one origin choice, translation is E→Picᵈ with inverse subtracting d·0. Difference of classes 5P and 2P is 3P. Period-two Pic¹ has no k-point while Pic⁰ has 0. | Torsor is not silently trivialized; no change. |
| 1.1 Properness | E and a nodal curve as negative control | Smooth Pic⁰=E is proper, dimension 1. Nodal generalized Pic⁰ contains G_m and is not proper. | Smooth-fibre hypothesis matters; no change. |
| 1.2 Jacobian | E; sectionless genus-one torsor | Both have dim J=1 and identity 0; sectionless curve may have zero rational points while J has its identity. | Correct object, not Pic¹; no change. |
| 1.3 Base change | E over k, A and an inseparable extension | J(E_A)=E_A=(J(E))_A, relative dimension 1; Lie=A. Purely inseparable extension keeps dimension 1. A nonzero ε-tangent point is distinct from 0. | Comparison includes scheme structure; no change. |
| 1.3a Determinant of curve cohomology | g=1,2; L=O; base twist N | χ(O)=0 for E and −1 for g=2. det RΓ(O_C)=det H¹(O_C)⁻¹; twisting contributes N⁰ or N⁻¹. Normalized elliptic Poincaré determinant has degree −1. | Detects wrong determinant parity and fibrewise-H⁰ construction; no change. |
| 1.4 Principal polarization | E; infinitesimal change β→β′; sectionless curve | Under divisor coordinates u=id and λ=−id, so uλ=−id. β′/β an ε-class translates the Abel map but leaves its Pic⁰ pullback u unchanged. | Full family independence, not fibre equality; R04 fixes its citation. |
| 2.1 Section-free Abel | E; period-two genus-one torsor | On E, x maps to a degree-one class and subtracting O(0) gives x. On the torsor, a morphism C→Pic¹ exists although both can have no k-point. | No chosen origin hidden in construction. |
| 2.2 Degree-d Abel | E, α=O(d·0), d=−1,0,1,2 | Outputs −x,0,x,2x; bundle degree d−d=0 in all four cases. | Integer, including zero, construction survives. |
| 2.3 Local factorization | E, d=2, x=5P, b=3P, α=O(2·0) twisted by 7P | Direct output 10P−7P=3P; pointed formula 2(5P−3P)+(6P−7P)=4P−P=3P. | Translation sign and degree agree. |
| 2.4 Degree-one immersion | E; smooth genus-two curve | E map is a translation, hence an isomorphism; genus-two Abel map has one-point geometric fibres and tangent rank 1. d=0 has a whole curve fibre instead. | Degree-one condition retained; no change. |
| 2.5 Nonzero-degree finiteness | E, d=−1,0,p; characteristic p | d=−1 has degree 1; d=p has finite rank p² and tangent map 0 in characteristic p; d=0 has dimension-one fibre and is nonfinite. | Corrects Yuan's zero-degree overclaim; no good-prime restriction. |
| 2.6 Difference | E, x=2P,y=5P,z=9P; change of Abel origin | j(x,y)=3P, j(y,z)=4P; sum 7P=j(x,z). Reversal gives −3P, diagonal 0. Subtracting a common origin cancels exactly. | Positive diagonal convention detected; no change. |
| 2.7 Difference as Abel over X | E over its first factor | Universal section x=2P and y=5P give [y−x]=3P both ways. On the section y=x, both maps give 0. | Source/base projections agree. |
| 3.1 Normalized Poincaré | E²; base twist N | Restriction at second point P is O(P−0), agreeing with −λ(P); both zero axes have class 0. Twisting by N makes both restrictions N instead of O. | Sign and rigidification distinguish wrong models. |
| 3.2 Theta divisor | g=1,2; α′=α+c | g=1: Sym⁰=Spec k and theta={0}. g=2: support is C−α; replacing α by α+c shifts support by −c. κ≠0 gives θ≠[−1]*θ. | Multiplicity/effective divisor retained; no forced symmetry. |
| 3.4 Translated inverse-theta pullback | E, α=0, c=P, 2P≠0 | t_P*O(0)=O(−P); right side O(0)⊗O(P−0)⁻¹=O(−P), not O(P). | Inverse on c is necessary. |
| 3.4 c=0 specialization | g=1,2 | Pullback classes α and 2α, degrees 1 and 2; at g=2, 2α≠K_C when κ≠0. | Distinct from ordinary theta pullback. |
| 3.3 Canonical twice-theta | E; no degree-one global class | Diagonal P has degree −2; its dual gives Θ=2[0], degree +2. Graph λ bundle also has degree +2 and zero restriction class 0. | Dual and positive graph sign agree; no theta choice needed. |
| 3.5 Ordinary theta pullback | g=1,2,3 | Degrees of K_C+(2−g)α are 0+1=1, 2+0=2, 4−1=3. For g=2 actual class is K_C, not 2α. | Degree is g; no change. |
| 3.6 Addition identity | E diagonal and zero axes | Diagonal degree −deg[2]*O(0)+2=−4+2=−2; zero-axis class −L+L=0. | Opposite Poincaré convention gives +2 and fails. |
| 3.7 Curve-square identity | E; genus two, arbitrary α | Δ_C restriction has degree 2−2g. Subtracting two α gives −2g: −2 for E, −4 for g=2. Both sides give these values; no K_C=(2g−2)α assumption. | Correct sign; no change. |
| 3.8 Doubling | Symmetric E theta; nonsymmetric genus-two theta L | E degrees: 4=3+1. General class: 3L+[−1]*L; replacing it by 4L loses the nonzero class [−1]*L−L. | Mathematics sound; R02 imports existing supplier result. |
| 3.9 Diagonal | E and nonsymmetric L | E: −4+2=−2=−1−1. General class: −(3L+[−1]*L)+2L=−L−[−1]*L. | Matches source and §3.7 after curve pullback. |
| 3.10 Geometric twice-theta | E; genus-two NS class | E degree 2=1+1; in NS, [L]+[[−1]*L]=2[L]. The actual sum need not equal 2L in Pic. | Algebraic versus linear equivalence kept distinct. |
| 3.11 Symmetry | E, inversion; general L+[−1]*L | Inversion interchanges the two summands, yielding [−1]*L+L=L+[−1]*L; E degree remains 2. Unit rigidification remains 1. | Uses rigidified graph comparison on families. |
| 3.12 Zero rigidification | Θ graph bundle; twist by N | e*Θ=O_S with unit 1; e*(Θ⊗p*N)=N. A nontrivial N cannot carry the specified unit trivialization. | Excludes invisible base twist. |
| 3.13 Relative ampleness | E; characteristic 2 fibre | deg Θ=2>0 in both characteristics; deg Δ*P=−2<0. Genus-g fibre NS class is twice the ample theta class. | No invertibility of 2 needed. |
| 4.1 Actual fibrewise Pic⁰ | Y=S; E⊔E | Every base line N restricts to a one-dimensional vector space, class 0 on each geometric point. On E⊔E, degree pair (0,0) belongs; (0,1) fails. | Universal functions not assumed for definition. |
| 4.2 Two-projection Pic⁰⁰ | E², p₁*L of degree 1 or nontrivial degree 0 | Degree-one case has projection-fibre degrees (0,1), so fails. Degree-zero case has (0,0), so belongs. Poincaré restrictions all have degree 0. | Both conditions are necessary. |
| 4.3 Autoduality pullback | E, d=−1,0,1,2 | On Pic⁰, pullbacks are −id,0,id,[2], exactly d·u with u=id. Translation contributes 0 to the group endomorphism. | No missing relation tying u to Abel pullback. |
| 4.4 Actual/relative comparison | Pointed E; pointless real conic for the imported general sequence | Pointed E has obstruction 0. On a real conic actual Pic degrees are 2ℤ, relative degrees ℤ, and degree 1 has nonzero boundary in Br(ℝ)=ℤ/2. | The general sequence cannot silently be made surjective. Conic is a control for Y, not the positive-genus specialization. |
| 4.5 Torsion cokernel | E/ℝ with two components, d=2; d=1; base correction | [2] has component-group cokernel ℤ/2, killed by 2; d=1 gives cokernel 0. If i*M=dL+π*N, then i*(M−p*N)=dL. | Actual exponent d verified, including base term. |
| 4.6 First and second lifts | E/ℂ without CM; mixed Poincaré class coefficient 1 | id×[2] multiplies mixed coefficient by 2: image coefficient 2 equals L². Applying [2]×id multiplies by another 2. Other-fibre degrees stay 0. | Lift retains both conditions. |
| 4.7 Bi-Picard cokernel | Same E and d=2 | Square pullback on the mixed ℤ summand is ×4; cokernel ℤ/4 is killed by d²=4, not generally d=2. | d² bound and two-stage route agree. |
| 4.8 Axis-normalized subgroup | E²: O, p₁*L with L≠O degree 0, normalized P | Axis classes respectively (0,0), (L,0), (0,0). P is nonzero: diagonal degree −2. | Distinguishes Pic⁻ from Pic⁰⁰; matches Lean's two kernel equalities. |
| 4.9 Pointed square comparison | E,i=id; proposed i=0 on E | Identity pullback sends M to M and gives unique lift M=L. Zero map sends every normalized M to O, but fails IsAlbanese because id_E cannot factor through it. | No arbitrary-map vacuity; general source limit recorded below. |
| 5.1 Canonical Abel | g=2 in characteristic 2; g=1 boundary | e=2≠0 as an integer; [2] on dimension-two J has rank 16 though differential 0. At g=1, e=0 and canonical Abel is constant. | g>1 excludes false finiteness; characteristic 2 remains allowed. |
| 5.2 Shift | Native group construction c(x)=4P,y=3P; c=0 | τ=(3P,7P); first projection is 3P. With c=0, τ=(3P,3P). | First coordinate and shift order correct. |
| 5.3 Faltings–Zhang | E, (2P,5P,9P); small diagonal; m=1 | FZ₂=(3P,7P); diagonal=(0,0); FZ₁=3P. Changing Abel normalization subtracts the same constant twice. | Indices 0 and i.succ are correct; no out-of-range head. |
| 5.4 Shifted FZ | Actual genus-two configuration specified above | τ₂=(3P,P), whereas the full shifted canonical tuple is (3P,5P). For m=1 the output is just 3P. | Unscaled tail essential; no change. |
| 5.5 Triangular inverse | GL₂(𝔽₂), a=((1,1),(0,1)), b=((1,0),(1,1)) | a²=b²=I; ab=((0,1),(1,1)), ba=((1,1),(1,0)). R(a,ba)=(a,b), inverse=(a,ba), not (a,ab). | Noncommutative extension survives; R01 adds signature. |
| 5.5 Naturality and n=0 | Precomposition; singleton; diagonal | R(a)=(a); R(a,a)=(a,I). Pullback sends (g/f) to pulled-back g divided by pulled-back f, with the same order. | Actual Hom-group laws supply scheme naturality. |
| 5.6 Factorization | Actual genus-two configuration, m=2 | B₂=(3P,5P), R B₂=(3P,2P); τ₂=(3P,P), Dτ₂=(3P,2P). | Equal coordinates; wrong unscaled D would give (3P,P). |
| 5.6 Shifted power definition | One factor; identity shift; constant tuple | One coordinate is c(x)y. y=1 gives c(x); repeated x gives (c(x)y,c(x)y), whose R-tail is 1. | Cancels common right shift even in noncommutative point groups. |
| 5.6 Tail map and finite transfer | e=0,1,−1,2; empty tail; g=2,char 2 | On a pair: (a,1),(a,b),(a,b⁻¹),(a,b²). Empty tail always id, rank 1. Jacobian e=2, one tail has rank 16, differential 0 in char 2; e=0 has positive-dimensional kernel. | Nonzero integer and commutativity retained where needed. |
| 5.6 Homomorphism qualification | S₃, power e=2 | For a=(12), b=(23), a²b²=1 while (ab)² is a nonidentity 3-cycle. | D exists as a coordinate map, but is not a group homomorphism without commutativity. |
| 5.6 Product decomposition H | Singleton; pair | H(a)=(a,()); H(a,b)=(a,(b)); inverse returns (a,b). D then H and H then id×[e] both give (a,(bᵉ)). | Order and empty tail agree. |
| 6.1 Lie/cohomology | One-node genus-two curve; compact type; square-zero units | Normalization genus 1 plus one loop gives dim Lie=1+1=2=h¹. Two elliptic components joined in a tree give torus 0 and dim 2. (1+εa)(1+εb)=1+ε(a+b). | Full semi-abelian Lie module, including linear scalar action. |
| 6.2 Hodge comparison | Same nodal fibre and A-base change | dim H⁰(ω)=2=dim e*Ω¹_G; using only the abelian quotient gives 1 and fails. Pullback of k² is A² on both sides. | Torus contribution and base-change ranks agree. |
| 6.3 Hodge determinant | Rank-two comparison; basis swap; scalar 2 | wedge²(k²) has rank 1 on both sides. Swapping basis gives det=−1; twice a map changes determinant by 2²=4. In char 2, −1=1. | R05 adds these discriminating Checks. |
| Level convention / 7.1 | ℓ=3,g=1 supplier check; g=2; characteristic 3 | card GL₂(𝔽₃)=48, card Sp₂(𝔽₃)=24; paired basis gives ζ₃, reversed basis ζ₃⁻¹. g=2 torsion rank=3⁴=81. In char 3 torsion is not étale, unlike constant level. | g=1 is only a supplier-level control; Layer 7 retains g≥2 and invertible ℓ. |
| 7.2 Level-family FZ | Given genus-two family; first point fixed; nonreduced pullback | With x₀ fixed and differences P,Q, FZ₂=(P,Q), the product of pointed Abel maps. Pullback keeps those same coordinate morphisms; small diagonal gives (0,0). | No level-moduli construction needed here; R03 repairs downstream attribution. |
| Citation control for R03 | g=2,ℓ=3 over ℚ(ζ₃) | Available owner B4.1 supplies one fine scheme and universal family; named StableReductionPartII supplies no target. | Repoint consumer only. |

The empty base has empty total curve/Jacobian schemes and unique maps, so the relative statements restrict to tautological empty-base identities. It does not produce a positive-genus field counterexample. Finite powers in the file use `Fin (n+1)` or the explicit m≥1 hypothesis: no natural-subtraction head or undefined division is introduced. No formula divides by 2, d, or 2g−2; multiplication maps remain meaningful in bad characteristic. Nonnoetherian pullbacks are handled after constructing over a noetherian base, not by silently applying noetherian cohomology there.

**Pinned definitions and elaboration.** Mathlib was at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following are repository-relative paths in those pinned repositories, not claims about a newer library.

| Opened file/declaration | What it provides, and relevant limit |
| --- | --- |
| `TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:112`, `InvertibleSheaf`; `TensorProduct.lean:63`; `Dual.lean:44`; `Pullback.lean:72` in that directory | Actual invertible sheaves, tensor, dual and functorial pullback. Invertibility is built into the full subcategory; these are not sorry-valued carriers. |
| `TauCeti/AlgebraicGeometry/LineBundle/Class.lean:50`, `LineBundleClass`; `:58`, `mk`; `:76`, `mk_eq_mk_iff`; `:119`, `mk_tensorProduct` | Quotient by isomorphism and its tensor group. Equality carries no choice of scalar isomorphism or rigidification. |
| `TauCeti/AlgebraicGeometry/LineBundle/Functoriality.lean:45`, `pullbackId`; `:65`, `pullbackComp`; `:96`, class `pullback`; `:110`, `pullback_id`; `:118`, `pullback_comp` | Contravariance and actual class equalities used in both axes and the square theorem. |
| `TauCeti/AlgebraicGeometry/LineBundle/Degree.lean:70`, `InvertibleSheaf.eulerDegree`; `:126`, class degree; `:132`, `eulerDegree_mk`; `:138`, `eulerDegree_one` | Euler difference truncated below degree two. It does not itself supply all relative cohomology/base-change or degree-constancy theorems. |
| `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/Degree.lean:40`, `relativeDegree` | Residue-degree-weighted divisor degree; not the relative Picard scheme. |
| `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61`, `Scheme.Modules.Cohomology` | Native module-sheaf cohomology; no relative derived pushforward or relative duality is encoded by this carrier alone. |
| `TauCeti/AlgebraicGeometry/PicardFunctor/Rigidified.lean:66`, `rigidifiedPicardFunctor` | Section-rigidified test-scheme functor. It does not identify the sectionless relative Picard sheaf with global actual bundles. |
| `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95`, `AbelianVariety`; `:118`, `dim` | Proper geometrically integral group scheme over a field; smoothness and commutativity are derived. Dimension is topological Krull dimension in `WithBot ℕ∞`, not an arbitrary supplied natural number. |
| `TauCeti/AlgebraicGeometry/AbelianVariety/Albanese.lean:84`, `IsAlbanese`; `:136`, `fac`; `:142`, `hom_ext`; `:227`, `isAlbanese_id` | The zero-preserving map and universal unique factorization through homomorphisms are genuinely required. They rule out the zero-map countermodel for positive-genus curves. |
| `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/PicZero.lean:75`, `eulerDegreeHom`; `:88`, `picZero`; `:98`, `mem_picZero_iff` | Existing field degree-zero subgroup. §4.1's intrinsic arbitrary-family condition is broader and does not redefine it. |
| `Mathlib/CategoryTheory/Monoidal/Cartesian/Grp.lean:58`, `Hom.group`; `:178`, `GrpObj.comp_div`; `:182`, `GrpObj.comp_zpow`; `Mon.lean:442`, `MonObj.comp_mul` in that directory | Actual morphisms into a group object form a group; precomposition respects operations. No commutativity is needed for triangular cancellation. |
| `Mathlib/RingTheory/PicardGroup.lean:429`, `CommRing.Pic` | Invertible modules modulo isomorphism over a commutative semiring; this is not a represented relative Picard sheaf of schemes. |
| `Mathlib/AlgebraicGeometry/Sites/Fpqc.lean:53`, `Scheme.fppfTopology`; `:97`, subcanonical instance | The represented-object descent argument can use the actual topology. |
| `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:123`, `IsProper.of_comp`; `Morphisms/FlatDescent.lean` | Properness route is available. The latter file's instances do not supply the finite/closed-immersion fpqc descent claimed from Stacks instead. |

Object searches included invertible sheaves and actual Picard groups, degree-zero subgroups, rigidified and relative Picard functors, Albanese/dual abelian objects, Poincaré and graph bundles, theta/cube formulas, stable Picard Lie/cohomology, determinant/Hodge lines, level structures and the fibre-power maps. Searches used the roadmap tools as well as pinned-file and package searches. No duplicate fully qualified name for either declaration in this `Suggested.lean` was found. The general relative represented objects, polarization and semi-abelian Hodge comparison used by the omitted geometric headlines are not supplied as usable native pinned APIs by these definitions. In contrast, §0.0 and §5.5 need none of those missing objects, as the elaborated probes demonstrate.

The two directly imported Tau Ceti modules were built first with the targeted `lake build` command. `lake env lean` then elaborated `Suggested.lean`, with only its one `sorry` warning. A scratch copy containing `#check @...` for both declarations elaborated: the generic pointed-square set retained its S,Y,y₀ parameters; the theorem retained the field, properness, relative smooth dimension one, geometric connectedness, x₀, native abelian variety, map, `IsAlbanese`, positive dimension, L and axis-membership hypotheses. No hypothesis silently disappeared, and no signature change was needed.

A one-tactic probe for the single sorried theorem tried `simp [AxisNormalizedPicard]`, `rfl`, and `infer_instance`, requiring each branch to close. None closed: simplification leaves the unique extension problem, reflexivity cannot supply it, and the existential is not a typeclass. Reading the opened Albanese and line-bundle APIs found no single pinned theorem giving this two-variable Picard extension. The retained theorem is not padding; its one definition is needed to state it. No sorry-valued data, `set_option`, theorem-free stand-in for this comparison, or route-specific good-prime shortcut was found.

**Headline inventory.** These are the README's advertised headlines, grouped by layer, and their acceptance-test disposition:

| Layer | Headline theorems/constructions | Lean disposition |
| --- | --- | --- |
| 0 | Finite-stage line-bundle descent; local degree constancy; degree components; relative Picard representability; degree torsors | Descent is statable and missing (R01). The represented relative sheaf/components needed for the other headlines are named as absent in the docstring. |
| 1 | Proper relative Jacobian; base change; curve determinant; canonical principal polarization | Docstring identifies relative Picard/abelian-scheme/dual/polarization and relative cohomology-complex inputs. |
| 2 | Section-free and degree-d Abel maps; degree-one immersion; nonzero-degree finiteness; difference and its Abel-over-X interpretation | Docstring identifies the relative torsors and geometric Abel constructions. |
| 3 | Normalized Poincaré; arbitrary-degree-one-divisor theta; canonical twice-theta; theta pullbacks; curve-square and diagonal identities; relative ampleness | Docstring identifies theta, dual and universal Poincaré inputs. R02 removes the already supplied cube subtarget, not these identities. |
| 4 | Actual Pic⁰ and Pic⁰⁰; autoduality; torsion cokernels; axis-normalized subgroup and square comparison | Square comparison is stated on actual native carriers; its axis condition has a real body. Intrinsic algebraic equivalence and relative identity-component objects needed by the other family headlines are named in the docstring. |
| 5 | Canonical Abel; universal shift; FZ and shifted FZ; triangular coordinates; shifted-power/isogeny factorization | Triangular scheme isomorphism is statable and missing (R01). The geometric canonical Abel/difference and isogeny factorization remain separately unavailable as described. |
| 6 | Stable Picard Lie/cohomology; Hodge bundles; determinant-line comparison | Missing relative dualizing/pushforward and semi-abelian Picard carriers are named. No free-vector-space substitute was inserted. |
| 7 | Jacobian and FZ for a full symplectic level family | Missing full symplectic-level family objects are named; no moduli construction is smuggled into the Lean file. |

**Ownership and resolved supplier citations.** The main-branch parent and the main StableReduction and AlgebraicVectorBundles roadmaps were read for both content and shape. Main's parent builds the field/pointed Jacobian, while the retained Part II constructions add families without sections; this is a genuine extension rather than a reason to reject the whole roadmap. The isolated duplicate in R02 is repairable. Searches also covered board packages and available open roadmap heads by object; the search output was followed to the substantive owners below, rather than treating matches as ownership evidence by themselves.

| Citation family resolved | Read location and scope reconciliation |
| --- | --- |
| JacobianChallenge Layers A–F | `TauCetiRoadmap/JacobianChallenge/README.md:111`, `:135`, `:143`, `:218`, `:332`, `:448` on main. Relative coherent cohomology and symmetric powers are Layer C; Picard/Jacobian representation in D and Abel universality in F are over a field. Family inputs here are not falsely imported from that field theorem. |
| StableReduction Layers 2–3 | `TauCetiRoadmap/StableReduction/README.md:405` and `:467` on main. Nodal genus/cohomology, dualizing line, fibrewise ampleness and stable families match the stated uses. The nonexistent “PartII” consumer is separately R03. |
| AlgebraicVectorBundles L0B–L0C | `TauCetiRoadmap/AlgebraicVectorBundles/README.md:228` and `:254` on main. Finite locally free duals and fixed-rank determinant with pullback are supplied. |
| SchemeAndStackFoundations | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:848` (§0.9), `:938` (§0.11), `:2071` (§1.1), `:4275` (§2.20), `:4905`, `:4937`, `:5000` (§§3.6–3.8), `:5706` (§4.14), on main. Limit/descent, curve duality, field Picard/Abel, group invariant forms and Hilbert scheme contracts were opened. |
| PadicMeasuresIwasawaAlgebras §5.1 | `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:3176` on main. Ring-level coherent determinant and base change supply §1.3a's gluing input; relative curve pushforward is an additional target here. |
| AlgebraicModuliForArithmeticGeometry | `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:1240` (finite locally free descent), `:9413` (§7.3 infinitesimal Picard lifting), `:9662`, `:9727` (§§7.6.1–7.6.1a), `:9806` (§7.9), resolved supplier head. Sheafification, base-change, base-class kernel, section splitting and component construction have the claimed roles. |
| ComplexComparisonPartII | `TauCetiRoadmap/ComplexComparisonPartII/README.md:1975`, `:1993`, `:2011` (§§C3.2d.2–C3.2d.4), `:2059` onward (§§C3.2f.1–C3.2f.2), resolved supplier head. Universal global functions, integral fibres for separatedness and the nonreduced formal-smoothness proviso are carried into this roadmap. |
| AbelianSchemesAndArithmeticModuli | `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:588` (A0.1), `:741` (A1.1), `:757` (A1.2), `:870` (A1.4), `:886` (A1.5), `:1050` onward (A2), `:1441` (A3.2), `:1628`, `:1658` (A3.7–A3.8), `:3850` (A6.38), resolved supplier head. Native carrier adapters, nonreduced rigidity, qualified seesaw, cube, dual/evaluation, graph bundle, multiplication and pairing/level data match; R02 and R04 record the two citation/ownership defects. |
| NeronModelsAndSemistableAbelianVarieties §4.13 | `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:2667`, resolved supplier head. StableFamilyPicard is smooth separated semi-abelian over integral noetherian S; toric rank need not be constant. It is not a proper abelian scheme in nodal fibres. |
| Elliptic convention comparison | `TauCetiRoadmap/ModularCurves/README.md:751`, §2D on main, and the abelian supplier's A2.2. Divisor self-duality and the positive Mumford polarization differ by inversion; §3.1's −λ compensates correctly. |
| Explicit downstream exports | `ModularCurvesPartII` §13.1 and `ArithmeticStatisticsPartVIII`'s hyperelliptic Jacobian entries import the generic construction. `AbelianSchemesAndArithmeticModuliPartII` §B4.1 owns the characteristic-zero fine curve-level family. These are consumers, not supplier edges. |

The seven automated unresolved-name leads were checked. The two `RelativeJacobian` names are in the present Lean file. `AbelianScheme.poincare`, `AbelianScheme.toAbelianVariety`, `Polarization.graphBundle` and `Polarization.principal_iff` belong to the abelian supplier's stated APIs, rather than to the pinned libraries. The remaining spelling is R04. Other object searches found relative/integral curve, modular, hyperelliptic, arithmetic-statistics and Arakelov consumers importing this construction; they did not establish a second owner of its generic sectionless family Jacobian. Available `HyperellipticCurves` and `CurvesOverFiniteFields` heads were also inspected for their ownership boundaries. The retained stable Lie/Hodge work extends the supplied stable Picard carrier; it does not reconstruct that carrier or the generic determinant functor.

## Not verifiable

- **Zhang, *Gross–Schoen cycles and dualising sheaves*, Lemmas 2.2.1–2.2.3**, cited through Yuan for §4.9. The source service returned `uncertified` (paywalled result). Yuan's §A.3 was read, including its valued-field setting, but Zhang's underlying proof and precise hypotheses could not be inspected. This limits source certification of the general-field comparison; it is not evidence that the algebraic assertion is false.
- **Serre, *Lectures on the Mordell–Weil Theorem*, §5.6, pp. 74–76**, used inside Yuan's theta proof. The source service returned `uncertified`. The translated pullback displayed by Yuan on p. 110 was read and tested, but the referenced Serre page itself was unavailable.
- **Mumford–Fogarty–Kirwan, *Geometric Invariant Theory*, §6.2, Proposition 6.10**, cited through the twice-theta discussion. The source service returned `uncertified`. Yuan's definition and the supplied graph-bundle contract were read; the book's underlying passage was not.

All directly listed reference works were obtainable through legal source-service locations, including the author-hosted determinant scan and Milne notes. The three secondary-source attempts above are recorded as uncertified, not guessed or used to park this review. No source manifest or PR file was edited. The computed examples and `sorry` elaboration do not certify all general proofs.

## Source issues

- **Error** in yuan at §2.2.1, printed p. 29 (`yuan` lines 983–987): the source says the degree-d Abel morphism is finite without excluding zero; it should be finite for d≠0, with degree-zero Abel morphisms constant; affects a stated result.
- **Misprint** in kleiman at Remark 5.24, printed p. 51 (`kleiman` line 2411): the source says normalize the universal bundle by tensoring with its pulled-back restriction; it should be tensor with the inverse of that pulled-back restriction; affects the proof.
- **Misprint** in kleiman at Remark 5.25, printed p. 51 (`kleiman` line 2427): the source says normalize L by tensoring with the pullback of β*L; it should be tensor with the dual of that pullback; affects the proof.
