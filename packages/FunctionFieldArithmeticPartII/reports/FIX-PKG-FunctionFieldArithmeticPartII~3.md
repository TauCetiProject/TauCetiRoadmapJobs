# FunctionFieldArithmeticPartII repair report

## F01 (P1) — applied

Unprovided stack operations → §7.29’s rational DM perverse descent, open operations and proper quasi-finite pushforward comparison. Sections 7.3, 7.7, 7.16, 7.22 and 7.24–7.25 use InverseGaloisAndArithmeticFundamentalGroups §IG.5.7 followed by §7.26. Section 7.19 uses the actual lisse comparison; §7.23 has no dense-restriction step. Added computed collision, shift and nonnormality Checks. The Lean docstring identifies the missing perverse carriers.

## F02 (P2) — applied

Reduction after isogenies → reduction on chosen integral lattices and lattice-preserving morphisms, followed separately by rational localization. Section 7.26 retains tensor, dual, pullback and Frobenius compatibility at the appropriate levels and includes multiplication by 3 and 2 on ℤ₃ as negative and positive controls.

## F03 (P1) — applied

Unowned hyperplane input → gap:normal-proper-hyperplane-covers, assigned to EtaleCohomologyFoundations §F.0.2 in both Exact supplier contracts and the plan’s top-level gaps. The general proper-normal hyperplane theorem is retained. Layer 8’s projective-space target names this conditional input; §8.10 cites that local target. No supplier file or merge order was edited.

## F04 (P3) — applied

Generic representative targets §§3.87 and 3.102 → the pinned DirectLimit.exists_eq_mk import. Removed duplicate API promises in §§3.64–3.65 and updated consumers §§3.224, 3.225, 3.295, 3.383 and 3.391. The level-six representative is a README Check; root-specific transition, coaction and cofinality targets remain.

## F05 (P3) — applied differently

Generic identity Checks → generator calculations in the six cited sections and §§1.153, 1.172, 1.181, 1.202 and 1.211. The proposed level 4 is absent from §3.126’s factorial diagram: its Check uses 2→6 and t₂↦t₆³ instead. Section 3.219’s positive-divisibility diagram retains 2→4. All tests stay in the README.

## F06 (P3) — applied

Explorer aliases and progress prose → numbered contracts and a single mathematical route in §3.383. Also repaired §§1.240, 1.242, 2.4, 3.282, 3.295–3.296, 4.6 and 8.11. The actual Weil-restriction owner is ModularCurves §0F. Replaced the additional UNIVERSE-GEOMETRY-RS0 alias, normalized prose notation and malformed punctuation throughout, and added computed descent/universe Checks.

## F07 (P3) — applied

“Corollaire 2.10” → Exposé X, Lemme 2.10, printed p.274, recomposed p.210; its connected-cover consequence is Corollaire 2.11. Corrected the existing SGA1 manifest key and README citations, retaining XI, Proposition 1.1, printed p.285, recomposed p.219. Evidence: SGA1 line 8303, line 8308 and line 8606.

## F08 (P2) — applied

Arbitrary residue field → residue at a closed point of a nonempty affine finite-type ℚ-chart. The example invokes the pinned Zariski lemma and retains the non-fppf conclusion. Added the degrees 1 and 2 at (T) and (T²−2), and the infinite-degree generic residue ℚ(T), as README Checks.

## Source and ownership verification

The review’s mathematical objections are valid. No finding was dismissed using the package’s own acceptance or the earlier repair report. Source references below are locators, not copied passages.

| Input | Evidence read and conclusion |
| --- | --- |
| Hyperplane theorem | SGA1 line 8303 states the proper, normal, irreducible, image-dimension-at-least-two theorem; line 8308 states connectedness after a connected finite étale cover. Line 8615 explicitly uses this input in the projective-space induction. The gap preserves all these hypotheses, including arbitrary characteristic. |
| Perverse atlas descent | LO-P line 169 and line 179, Lemma 4.1 and Theorem 4.2, p.6; line 287 and line 307, §6 and Lemma 6.2, pp.9–10; line 327, Proposition 7.1, pp.10–11; line 354, rational coefficients in §8, pp.11–12. The atlas shift is zero for étale atlases. The source was fetched legally through the sources service as arXiv:math/0606175v1, whose title is *Perverse sheaves on Artin stacks*. The manifest and README cite that version. |
| Proper/coarse input | ACV01 line 1594, Proposition A.0.7, and line 1615, Theorem A.0.8, pp.34–35. These provide the coarse stabilizer calculation and torsion proper base change; §7.29 states the additional rational perverse comparison and its atlas/finite-quotient deduction explicitly. It does not ascribe that comparison to §§7.27–7.28 alone. |
| Symmetric-power application | YZ19 line 7340, §A.2.1, p.519, and line 7410, Lemma A.7, pp.519–520. The roadmap writes the shift explicitly and handles the nonrepresentable collision map, rather than relying on a representable finite-map theorem. |
| Dense-open restriction | TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md, §IG.5.7, *Finite-cover criteria for full monodromy image*: connected normal locally noetherian DM stacks and nonempty dense open substacks are explicit. Its finite-cover criterion gives π₁-surjectivity; the §7.26 character dictionary gives full faithfulness on the lattice and rational categories. NOOHI line 288 and line 304 fix representable finite étale covers. |
| Supplied coefficient category | TauCetiRoadmap/DeligneWeightsAndPurity/README.md §8.24 supplies rational constructible coefficients and atlas, refinement, pullback and Frobenius comparisons. TauCetiRoadmap/EtaleCohomologyFoundations/README.md §F.8 supplies scheme perverse structures and intermediate extension, not stack ones. Its §F.0.2 is a scheme finite-cover dictionary, not the hyperplane theorem. |
| Pasting and root coordinates | NormalizationThree-codex-rtOQ9t line 1387 and line 1410 identify the fibre product and its affine tensor-product realization. TV17 line 668 and line 738 provide the parent tower/quotient construction. All displayed root, coefficient and nilpotent computations are deductions in those coordinate rings. |
| Descent and frames | STACKIFICATION line 825 retains arrows and descent data. SchemeAndStackFoundations §§1.1, 1.15 and 1.18 supply module descent, line-frame torsors and stackification; ModularCurves §0F supplies affine finite-presentation Weil restriction along a finite locally free map, with arbitrary base change. StacksRes line 729 gives the corresponding functor and line 751 its sheaf property. Section 4.6 applies these constructions to Isom(O,K). |
| Pinned direct-limit theorem | Mathlib/Order/DirectedInverseSystem.lean:130, DirectLimit.exists_eq_mk, has the directed-system and directed-order hypotheses and gives a component representative without a parameter hypothesis. The signature was also elaborated. |
| Pinned Zariski lemma | Mathlib/RingTheory/Jacobson/Ring.lean:676, finite_of_finite_type_of_isJacobsonRing, gives Module.Finite R S when R is Jacobson, S is a field and S is a finite-type R-algebra. It applies to the closed residue quotient, not the generic residue ℚ(T). The signature was also elaborated. |

Ownership searches used roadmaps grep and roadmaps show on indexed main and open heads, plus an object search in the board packages and the specified library pins. The main examples read for shape were AlgebraicVectorBundles, JacobianChallenge and EtaleCohomologyFoundations. Existing named contracts in SchemeAndStackFoundations, AlgebraicVectorBundles, AlgebraicCurves, JacobianChallenge, AlgebraicModuliForArithmeticGeometry, FunctionFieldArithmetic, ProfiniteCohomology and RepresentationTheory/SchurWeyl were resolved against their specified main copies or permitted heads. Generic roots, gerbes, modules, scheme perversity and Weil restriction remain with those owners. No supplier API was renamed or redeclared in Suggested.lean.

GlobalShtukasAndFunctionFieldLanglands §1.4 contains the later general Artin-stack perverse extension. The rational finite-type DM subcase needed earlier is stated locally as §7.29, on DeligneWeightsAndPurity’s coefficient category. The maintainer should align that consumer’s ownership wording and import §7.29; its general Artin, integral and torsion extension remains there. This package cannot edit that roadmap. It adds no dependency on that later consumer. The new hyperplane supplier gap remains conditional supply until its named owner provides it.

B24 remains settled uncertified and was not requested again. The only newly cited work is LO-P, recorded once; the manifest has 38 distinct source keys. No missing legal text prevents these repairs.

The fetched LO-P v1 has a source issue at line 292, Lemma 6.1: its printed uniqueness condition lists the i* boundary condition without the corresponding i! condition. For j:𝔾_m→𝔸¹, both j_!E[1] and E_𝔸¹[1] restrict to E[1] and have ᵖH⁰i*=0, but their boundary stalks differ (0 versus E in degree −1). Indeed j_!E[1] has a nonzero boundary skyscraper subobject. Section 7.29 uses the correct two-sided boundary characterization from scheme §F.8, together with atlas descent; it does not import that one-sided uniqueness assertion.

## Adversarial mathematics pass

The table records the statements added or mathematically repaired, their construction maps, the changed Check families and all five acceptance declarations. Notation and punctuation replacements preserve the underlying assertions; the integer/rational field symbols were distinguished from the scheme variable Z and the quotient/functor Q. Values were recomputed rather than inherited from the earlier review.

| Statement | Instances and values computed on both sides | Result and change |
| --- | --- | --- |
| rootChart | For A=𝔽₂,f=0,n=2, t²=0 and t≠0. For A=ℤ,f=2,n=0, 1−f=−1 and the quotient is zero. | Native quotient retains nilpotents and the total exponent-zero value. No change. |
| rootChartCoaction | At n=2, δ(t)²=(h⊗t)²=1⊗f=δ(f). For A=𝔽₂,f=0, δ(t)=h⊗t is nonzero although its square is zero. At n=0, both quotient relations are 1=f. | Root image and coefficient equation agree. No change. |
| rootChartComparison | For n=2,A=ℤ/4,f=2, Θ(t⊗t)=2h⊗1 and Θ(2t⊗t)=0, although 2t⊗t≠0. For n=1 both source and target identify with A and Θ=id. | Uses the actual coaction and retains the kernel. No change. |
| rootChartComparison_injective_iff | At n=1,f=0, both sides are true. At n=2,A=ℤ,f=2, multiplication by f and Θ are injective. At A=ℤ/4,f=2, their kernels have sizes 2 and 2, so both sides are false. Over the zero ring both are true. | Both directions agree, including regular nonunit and zero ring. Positivity retained. |
| rootChartComparison_surjective_iff | At n=1,f=0, both sides are true. At n=2,A=ℤ,f=2, h⊗1 is missing and 2 is not a unit: false/false. For A=𝔽₅,f=3, 3⁻¹=2 supplies an inverse: true/true. | Unit and regularity criteria remain distinct. No change. |
| Positive-exponent boundary | At n=0,A=ℤ,f=2, Θ is the unique bijection between zero algebras, while n=1∨IsUnit(f) is false. | The hypothesis 0<n cannot be omitted. |
| §7.29 perverse atlas structure | On Bμ₂ an étale point atlas has relative dimension 0, so constant and sign lines are both perverse in degree 0. On a curve L[1] has H⁻¹=L and H⁰=0. | Correct dimensions and shifts. New explicit target. |
| §7.29 open operations and intermediate extension | For j:𝔾_m→𝔸¹, j_!*E[1]=E[1], with boundary H⁻¹=E and no boundary perverse subobject or quotient. For j=id and P=0, j_!*P=0; for j=id, j_!*P=P. | The functor is constructed on the supplied coefficient realization; no empty predicate is used. |
| §7.29 proper quasi-finite pushforward | For Bμ₂→Spec k, rational projectors on constant/sign lines are (1+1)/2=1 and (1−1)/2=0; positive stabilizer cohomology is 0 in both cases, including E=ℚ₂. | Nonrepresentable maps and the nonzero stack sign object are retained. |
| §7.29 pushforward/intermediate-extension comparison | For t↦t² on 𝔸¹ in odd characteristic, both sides have unshifted rank 2 on 𝔾_m and rank 1 at 0. Constant/sign summand boundary ranks are 1/0. For f=id,j=id both sides equal P. | Finite-map comparison and rational summands have the required values. |
| §7.29 refinement and coefficient compatibility | Bμ₂ constant/sign projectors are 1/0 over E and remain 1/0 after E→E′. Refining the identity atlas keeps the degree −1 curve stalk equal to E→E′. | No integral reduction is asserted here. |
| §7.17 shifted symmetric object | For d=0 the object is E in degree 0. For d=1 it is L[1], with nonzero stalk degree −1. At a double collision the kernel element (−1,−1) acts by +1 on equal signs and by −1 on mixed signs, giving invariant dimensions 1/0. | Uses §7.29 for perversity and §§7.27–7.28 for the separate stalk calculation. |
| §7.19 lissity route | At d=1 the comparison is L→L. At d=2 with equal branch signs the invariant line dimension is 1, and target branch inertia is sign, not sign squared. | Lissity comes from §§7.7 and 7.16, not an unnamed rank-of-stalk criterion. |
| Dense restriction in §§7.3, 7.7 and 7.16 | A dense normal-open π₁-surjection leaves the intertwiner scalar a unchanged; on a line the condition aχ(g)=χ(g)a agrees before and after restriction. At a double equal-sign collision the scalar 1 identifies the same invariant line. | Correct supplier criterion plus §7.26, rather than scheme monodromy alone. |
| §7.22 multiplication extension | For constant L and vectors 2v,3w, the specified open tensor map gives 6(v⊗w); its extension retains 6. At degree zero, 1⊗v maps to v, scalar 1. | Unique extension of the specified isomorphism; no arbitrary normalization. |
| Nonnormal dense-open control | A cycle double cover of a nodal cubic has 1 connected component; on the smooth locus it has 2. Its rank-two permutation system has endomorphism dimensions 2 before restriction and 4 afterwards. | Normality retained; full faithfulness fails in the excluded case. |
| §§7.24–7.25 coherence | For three constant input scalars 2,3,5 both associations give 30. Swapping 2,3 gives 6 in either order; the empty factor contributes 1. | Dense restriction now has the named normal-DM input. |
| §7.26 integral reduction | ×3:ℤ₃→ℤ₃ is not an isomorphism, and modulo 3 gives 0. ×2 is an isomorphism; its reduction is 2 with inverse 2 in 𝔽₃. | Reduction is functorial on lattice-preserving maps. |
| §7.26 rational localization | On ℚ₃, ×3 has inverse ×(1/3). A proposed reduction would make an isomorphism into the zero map of the nonzero line 𝔽₃. | Finite reduction on this localization is excluded. |
| §7.26 other compatibilities | A Frobenius eigenvalue 4 gives 1 mod 3 and 4 mod 9; the latter has powers 4,7,1 and order 3. Tensoring two such lines gives eigenvalue 16, dualizing gives 1/4 rationally and 7 mod 9 integrally; 4·7=1 mod 9. | Pullback/tensor/dual and Frobenius remain at their specified levels. |
| General hyperplane gap | X=ℙ² over algebraically closed fields of characteristics 2,3 or 0, H=ℙ¹: a degree-m cover stays connected on H and has genus 1−m. For m=1,2,3 the genera are 0,−1,−2. | General supplier contract closes induction; no characteristic restriction added. |
| Hyperplane dimension control | For ℙ¹_ℂ→ℙ¹_ℂ,t↦t², the pullback of 1 is {1,−1}, component count 2. Here dim image=1<2. | Missing dimension hypothesis cannot be dropped. |
| Scheme projective-space target | For r=0 a connected finite étale algebra has degree 1; K×K has degree 2 and 2 components. For r=1, m=2 would give genus −1. For r=2 the hyperplane calculation has the same degree m. | Local target retained and supplied conditionally by the general gap. |
| §8.10 projective-space consumer | Empty branch, g=1,d=1: n=1 and Q_b=ℙ⁰, inertia 1 and connected-cover degree 1. Nonempty-branch W(2,1) has projective cover degree 2 with local map x↦x² and ramification index 2. | Repoints simple connectivity to the local scheme theorem; does not confuse the branched cover with an étale one. |
| §§3.64–3.65 imported representatives | In C_div, 1+v₂+v₃=κ₆(1+t₆³+t₆²); 6/2=3 and 6/3=2. In C_f, 1+u₁+u₂=ι₂(1+t₆³+t₆). Over the zero ring each expression is 0=1. | Uses the pinned generic theorem; no duplicate target survives. |
| Representative consumers §§3.224–3.225 | v₂→t₆³→v₂ and u₁→v₂→u₁. For 1+v₂+v₃ both roundtrips give 1+v₂+v₃. | Cofinality remains root-specific; representative existence is imported. |
| §3.295 representative proof | At level 2 over 𝔽₂, t₂−1 is nonzero and maps to e_[1/2]−e_0≠0 in the free character basis, although its square is 0. | Injectivity does not replace μ₂ by field-valued points. |
| §3.296 finite-support proof | The character expression 2e_[1/2]+3e_[1/3] is the image of 2t₆³+3t₆²; 0 maps to 0. | Finite-support induction keeps the actual root preimages. |
| §3.391 representative proof | Over 𝔽₂,f=0, η(v₂)=e_[1/2]⊗v₂≠e_0⊗v₂, while η(1)=e_0⊗1. | Nonconstant nilpotents remain noncoinvariant. |
| §1.5 pasting | ℤ→ℤ/4→𝔽₂ with u=−1,n=2 gives (3,T)→(1,T) along both paths; T and −T have coordinates (0,1) and (0,3) before reduction. Adding 𝔽₄ still gives (1,T). At n=0,u=1 both rings are polynomial algebras with T unchanged. | Three computed instances replace identity restatements. |
| §1.45 triple collapse | Both collapse orders over ℤ→ℤ/4→𝔽₂→𝔽₄ send (3,T,a) to (1,T,a). At n=0 the target is 𝔽₄[T]. Under nonflat reduction, (T−1)≠0 in 𝔽₂[T]/((T−1)²) and its square is 0. | Normalization, base projections and nilpotents are distinguished. |
| §1.153 single comparison | For ℤ/4→𝔽₂,u=3,n=2, both rings are 𝔽₂[T]/(T²−1), with 3→1,T→T. At n=1 the root 3 becomes 1. At n=0,u=1 the target is 𝔽₂[T]. | Same failure pattern repaired beyond the listed locations. |
| §1.172 pullback transport | Two coefficient changes give 3→1,T→T. At n=0 the generator remains free. With final zero ring all coefficients and T become 0=1, and both spectra are empty. | Three concrete transport instances. |
| §1.181 two-step comparison | The two-step/direct routes give 3→1,T→T. Over 𝔽₅ the arrow −1 gives T→−T on both routes and fixes 3. At n=0 T is free; under ℤ/4→𝔽₂ the nonzero section 2T becomes 0; over 𝔽₃,n=3, (T−1)³=0 with T−1≠0. | Generator, arrow, nonflat and wild tests retained. |
| §1.202 third-change transport | ℤ→ℤ/4→𝔽₂→𝔽₄ gives (3,T,a)→(1,T,a); forward/inverse composites fix (a,T). At n=0 the target is 𝔽₄[T]; over the zero ring all values are 0. | Three computed instances. |
| §1.211 three-step comparison | Both routes give (3,T,a)→(1,T,a). The n=0 variable is free. The nonzero section 2T reduces to 0; in characteristic 3, (T−1)³=0 with T−1≠0. Final zero-ring spectra are empty. | Repeated generic Checks replaced without losing the boundary cases. |
| §3.24 coherent scalar change | Write ζ₆=(1+√3i)/2. Conjugation gives (1−√3i)/2=ζ₆⁻¹, whose cube is −1. Conjugating twice gives ζ₆; the all-one family stays (1,1,1) at levels 1,2,6. | Ring transport is tested on a nonreal coherent family. |
| §3.126 cocone | At f=1 the all-one family gives t_(d_i)→1 and 3→3. Over 𝔽₂,f=0, t₂→t₆³ has coefficient vector (0,0,0,1,0,0)≠0, and its square is 0. Over the zero ring every leg is 0. | Uses actual factorial stages 2 and 6. |
| §3.151 coherent scaling | ζ₂=−1, ζ₆=(1+√3i)/2, ζ₆²=(−1+√3i)/2 and ζ₆³=−1. Thus t₂→−t₂, t₆→ζ₆t₆, and two scalings give ζ₆²t₆; all fix coefficient 3. | Excludes trivial scaling and incorrect powers. |
| §3.219 universal scheme lift | At f=1 the unit cone gives v_n→1. Over 𝔽₂,f=0, v₂=v₄² has vector (0,0,1,0)≠0 and square 0. From the empty scheme the unique ring map sends 1→0. | Scheme projections include the nilpotent and empty-source instances. |
| §§1.240 and 2.4 descent | On ℙ¹, e₁=z e₀ for O(1) and the reverse factor is z⁻¹; product 1. For the root of (O(2),0), square transition z² agrees with O(2) and both sections are 0. Degree 1≠0 excludes a global frame of O(1). | Effective module/root descent uses the actual supplier. |
| §1.242 universe transport | For ℤ/4,n=2,f=3,(u,y)=(3,1), both section equations give 3·1²=3, before and after lifting; lowering gives (3,1). At y=0 the lifted labels 1 and 3 remain unequal. | Essential-image contracts named; no claim about arbitrary larger test schemes. |
| §3.282 factorial character leg | For n=2 and factorial multiple 6, t₂→t₆³→e_[3/6]=e_[1/2]. Using factorial multiple 24 gives e_[12/24]=e_[1/2]. | Section 3.149 is the actual independence-of-multiple input. |
| §3.383 quotient route | At degree 6, Δ(h₆)=h₆⊗h₆, ε(h₆)=1 and S(h₆)=h₆⁵, with h₆⁵h₆=1. At f=0, the full band fixes the zero-root point, so a point action alone has stabilizer G rather than 1. Over ℝ compatible finite Kummer classes number 2, while compatible band points number 1. | The route uses coherent frame torsors and morphism groupoids, not point freeness or orbit sets. |
| §4.6 Weil restriction and square action | For R=Spec 𝔽₂₅ over 𝔽₅, T(𝔽₅) has 24 elements, whereas two split factors would give 16. At u=2, γ=1, γ′=4 and γ′⁻¹u²=4·4=1. Empty R gives group order 1. | Actual finite-étale Weil restriction and square orientation retained. |
| §4.6 nontrivial root-line control | For the nontrivial order-two M on the elliptic base of §4.4, M²≅O and deg M=0, but global frames number 0. Local frames exist; a global frame would give M≅O. | Uses the actual example, not a dangling declaration label. |
| Layer 3 non-fppf example | κ((T))=ℚ, degree 1; κ((T²−2))=ℚ(√2), degree 2; κ((0))=ℚ(T), with infinitely many independent powers. X²−2 and X³−2 have degrees 2 and 3, excluding roots in degrees 1 and 2 respectively. | Closed points repair the finiteness argument; generic points are excluded. |

The finite-ring comparison checks were also recomputed by enumerating the coordinate map after its bijective coordinate permutation. For each pair (i,j), the coefficient is f^floor((i+j)/n), with target coordinate (i,(i+j) mod n). The resulting sizes agree with gcd(m,f)^(n(n−1)/2) over ℤ/m; the zero ring is included.

| n | m | f | Computed kernel size | Computed cokernel size |
| --- | --- | --- | --- | --- |
| 2 | 4 | 2 | 2 | 2 |
| 2 | 8 | 4 | 4 | 4 |
| 3 | 4 | 2 | 8 | 8 |
| 2 | 4 | 0 | 4 | 4 |
| 3 | 2 | 0 | 8 | 8 |
| 2 | 5 | 3 | 1 | 1 |
| 2 | 9 | 3 | 3 | 3 |
| 1 | 4 | 0 | 1 | 1 |
| 2 | 1 | 0 | 1 | 1 |

## Required checks and maintainer consequences

- Acceptance elaboration: from the content checkout, `lake env lean` on packages/FunctionFieldArithmeticPartII/Suggested.lean exited 0. Exactly two warnings remain: the expected admitted theorem declarations at lines 79 and 86. There are no errors or other warnings. No TauCeti import or targeted module build was needed.
- Elaborated-signature check: a scratch module containing the acceptance file and `#check @name` for all five declarations exited 0. Compared every type with README §§1.7, 1.26 and 1.184–1.185: A, CommRing, f and n remain in all relevant types, and each sharp criterion retains 0<n. No binder changed. The two additionally checked pinned imports also elaborate.
- Suggested.lean changed only its module docstring to name the missing DM perverse carriers. Its three real definitions and two headline theorems are unchanged. No definition, API lemma, boundary theorem or admitted example was added.
- Dependency check: the required `tauceti-roadmap gate --depcheck` command with the specified name, order and `--movable` exited 0. Exact final output:

```text
depcheck: 52 roadmaps, 588 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line, and no final moved line. The merge-order file was not edited.

- Citation resolver: exited 0; no unresolved cross-roadmap citations or Lean names. Its remote resolver does not inspect the local Lake pins; the two imported declarations and acceptance APIs were checked directly at those pins instead. Mathlib is 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti is a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, as recorded by the content manifest.
- Structural checks: JSON and TOML parse; all 38 source IDs are unique. Comparing the plan to its original JSON proves that only its top-level gaps changed, by appending the single hyperplane contract; all earlier gap entries and all other plan values are unchanged. The stale representative-section citations and explorer aliases are absent. `git diff --check` passes.
- No gate failures were supplied in the brief. No commit, merge-order edit, tooling edit or external write was made. The report and permitted package files are the only deliverables.

The deleted local sections are §§3.87 and 3.102; consumers should cite DirectLimit.exists_eq_mk instead. No Lean declaration was deleted or renamed. Section 7.29 is the new prose contract available to later consumers. The general hyperplane contract is an explicit supplier gap, not a claim that its supplier already states it. Independent review remains the acceptance step.
