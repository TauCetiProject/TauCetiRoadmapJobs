# Repair report: AutomorphicBundlesPartII

## F01 (P1) — applied

Normalization depending on packet transport → elementary coefficient-character transport in §1.3. Removed §7.0 from §4.1 and the Layer 4 dependency summary; §7.0 still consumes Layers 4–6. Recomputed the scalar in Conventions, §§1.3, 4.1, 6.7 and 7.0: 128·(1/64)=2 at weight (5,2), while the balanced and dual central parameters remain 1 and −1.

## F02 (P1) — applied

Hyper-Tor at §7.7 → DeformationAndDerivedPatchingAlgebra §7.10, including §2.5 and its layer summary. Object completion at §7.8 → DerivedModuleAlgebra §§1.3–1.5; effectivity → §1.E.1; proper formal functions remain SchemeAndStackFoundations §4.9. Corrected Scope, supplier contracts, §3.11, §5.13’s prerequisite and Layers 3/5 summaries. Retained §7.8 only for finite derived Hom completion under its hypotheses.

## F03 (P1) — not actionable in this package: the missing supplier theorem belongs to AutomorphicSpectralTheory §5.2

The asserted supplied parabolic regularization → explicit gap:su-parabolic-regularization, identically recorded in the README and top-level plan gaps. Removed the false supplier route from §6.2; retained its geometric resolution here. Section 6.3 and its layer summary now use the gap and §5.8 acyclicity. Only the supplier can supply that theorem; this package cannot edit it.

## F04 (P2) — applied

An unquantified R inherited from local singular classification → an absolute R_gap chosen before fields, levels, weights, occurrences and degrees, at fixed |·|² normalization. Import the global §6.6 assertion directly, with R_gap≥R_sep+2. Distinguished R_sing in §7.3, propagated the quantifier through §8.9 and worked examples, and specified the central-reduction step in §8.8’s proof route.

## F05 (P3) — applied

The torsion nonuniqueness Check now requires k>0, retaining the k=0 identity. Layer 5 examples say vanishing strictly above degrees 2,1,0, first occurring at 3,2,1. Replaced instruction-only Checks throughout Layers 1–8 by evaluated instances. The ramified-chart Check distinguishes an invertible étale class from an existing finite-flat fundamental class; ramification does not disprove the latter’s existence.

## F06 (P3) — applied

Sch15 cited_for Layer 7 → §6.8; BR16 cited_for Layer 7 → §8.5. These are the only changed manifest values. Both source keys, all locators and every fetch/provenance field are unchanged.

## Verification and evidence

The six review claims were treated as mathematical claims. No instruction embedded in fetched text was followed. The shape references read on main were TauCetiRoadmap/ComplexTori/README.md and TauCetiRoadmap/LocalGaloisGroups/README.md. No new target family, layer or Lean declaration was introduced.

| Finding | Evidence actually read | Consequence |
|---|---|---|
| F01 | CG20 line 1097, Lemma 5.4, manuscript p. 27; P20 line 1084, §5.3, manuscript p. 25 | The W/V coefficient formula and multiplier twist require no archimedean packet theorem. Since ν(xI₄)=x², the −3 twist subtracts 6 from the scalar exponent. |
| F02 | TauCetiRoadmap/DeformationAndDerivedPatchingAlgebra/README.md §§7.7, 7.8, 7.10, anchors 1475, 1491, 1525; TauCetiRoadmap/DerivedModuleAlgebra/README.md §§1.3–1.5, 1.E.1, anchors 1733, 1788, 1808, 2200; TauCetiRoadmap/SchemeAndStackFoundations/README.md §4.9, anchor 5448 | The first supplies strict tower actions, Hom completion and the actual filtered coefficient spectral sequence, respectively. The latter two suppliers supply objects/effectivity and proper formal functions. |
| F03 | Su24 line 259 and Su24 line 267, group and level hypotheses; Su24 line 361, inverse coefficient action; Su24 line 1609, Proposition 4.1, p. 38; Su24 line 2396 and Su24 line 2422, finite-character acyclicity; Su24 line 2456, Theorem 5.7, p. 55 | The relative pair is (p_o,K_o), with arbitrary finite-dimensional holomorphic P_h-coefficient. Its inclusion and tower comparison are the new gap, not the existing full-pair theorem. |
| F03 | TauCetiRoadmap/AutomorphicSpectralTheory/README.md §5.2, anchor 2745; §5.7a, anchor 2844; §5.8, anchor 2859 | Fixed-weight de Rham regularization, logarithmic-core acyclicity and uniform-moderate-growth acyclicity are distinct assertions. The new gap asks only for the missing parabolic inclusion with its compatibilities. |
| F04 | BCGP21 line 3281, Theorem 3.10.1(2), printed p. 236; BCGP21 line 3302, Corollary 3.10.5, printed p. 237; BCGP21 line 3404, proof, printed p. 240 | The large-gap constant is absolute. Degree-zero equality needs no large-gap assumption; the equality in both degrees 0 and 1 uses that constant. |
| F04 | TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md §6.6, anchor 1033; TauCetiRoadmap/AutomorphicSpectralTheory/README.md §4.10, anchor 2439 | The first global separation theorem differs from the local negative-parameter bound. Wallach’s supplied theorem has a semisimple arithmetic hypothesis, so §8.8 explicitly carries the central reduction for its actual weighted occurrences. |
| F05 | CG20 line 931, Theorem 5.1, pp. 22–24; CG20 line 1231, Corollary 5.8, pp. 30–31; LanSuh line 2069, Corollary 7.24, p. 43; P20 line 829, coefficient/fundamental-class construction | Length shifts determine strict vanishing cutoffs. The additional mod-p Check uses ω(3,0) at p=5, a=3, keeping its canonical and subcanonical tags distinct. The ramified finite-flat example retains its fundamental class. |
| F06 | Sch15 line 3089 and Sch15 line 3099, Corollary V.1.7 and proof, manuscript p. 83; BR16 line 523 and BR16 line 579, Theorem 1.12 and Proposition 1.14 | The README uses these in §6.8 and §8.5 respectively; the corrections affect only use-site metadata. |

The pattern repair for instruction-only Checks affects §§1.1, 1.5, 2.2, 2.4–2.5, 3.3–3.7, 3.9–3.13, 4.2, 4.4, 5.1, 5.8–5.9, 5.10–5.13, 6.1–6.4, 6.7, 7.1, 7.3, 8.1–8.3 and 8.7. The coefficient-character calculation is witnessed again in §6.7; its packet interpretation remains in §7.0. No boundary-case declaration or scalar stand-in was added to Suggested.lean.

### Mechanical outcomes

- Required elaboration: `lake env lean` on packages/AutomorphicBundlesPartII/Suggested.lean, from the pinned content checkout, exited **0**. Its only diagnostic was `Suggested.lean:67:8: warning: declaration uses 'sorry'`. The four imported Tau Ceti modules resolved; no prerequisite module build was needed. No Lean process remains running.
- One scratch file containing the unchanged acceptance file followed by `#check @name` for all three declarations elaborated with exit **0**, with the same expected warning. The quotient abbreviation retains its ring/universe binders. Integer cohomology retains the base ring, scheme and structural-map instance. The duality theorem retains the domain, DVR, maximal-ideal completeness, irreducible uniformizer, positive n, structural map, smooth relative dimension, properness, local freeness and finite-presentation binders. All three signatures agree with §§1.4–1.6; no binder repair was necessary.
- Suggested.lean is unchanged: the only admitted headline is relative finite-coefficient Serre duality; the other headline carriers remain individually identified as missing in its module docstring. No finding changes that theorem or makes another headline statable at the pins.
- Internal prerequisite graph: **69 sections, 158 local prerequisite edges, 0 cycles**. This expands whole-layer prerequisites and local section ranges, and reads target Needs lines separately from aggregate summaries. In particular §4.1→{§1.3,§3.13}; §7.0→Layers 4–6; no return edge to §7.0 remains in Layer 4. Its dependency summary was inspected separately.
- The required dependency gate exited **0**, with this exact output:

```text
depcheck: 51 roadmaps, 601 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Neither the merge order nor tooling was edited.

- Citation resolver: no cross-roadmap citation or Lean name was found nowhere. Its library-search limitation was addressed by inspecting the actual pinned files, rather than treating resolver success as verification of the mathematical contracts.
- `git diff --check`: exit **0**. JSON comparison against the starting plan confirms that every top-level value except gaps is unchanged. The original eight gaps are unchanged; the ninth gap has the same supplier, section and needs sentence as the README contract. TOML comparison confirms precisely the two F06 cited_for changes and no provenance change. Metadata is unchanged.
- Supplied gate failure `residue=1`: rephrased the flagged §8.7 Check using §7.0’s classification and multiplicity-one hypotheses. The endpoint equality is retained for the contribution of a fixed finite representation, without identifying that contribution with total cohomology. At d=1 the two contributions are 1,1; omitting the generic archimedean partner gives 1,0 (CG20 line 2176 and CG20 line 2184). No other gate failure was supplied.
- The worker’s README and Lean residue scanners exited **0**, with exact output `residue: README=0, Suggested.lean=0`. The follow-up changes only the flagged README Check and this report; every earlier deliverable is retained.
- No new source key was needed. All sixteen manifest entries were accounted for; GK19 remains the settled uncertified reference and was not requested again. No unresolved reference request was created.

### Pins and ownership

The manifest pins used for elaboration were Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

The native definitions were inspected at those pins: sheaf exterior power at TauCeti/Algebra/Category/ModuleCat/Sheaf/ExteriorPower.lean:49, relative differentials at TauCeti/AlgebraicGeometry/Modules/Differentials/Basic.lean:85, closed module-sheaf structure at TauCeti/AlgebraicGeometry/Modules/TensorProduct.lean:63, and base-linear cohomology/maps/H⁰ at TauCeti/AlgebraicGeometry/Cohomology/Module/Base.lean:45, :57, :110 and :127. These definitions sheafify sectionwise constructions or restrict scalars along the actual base map; they impose no properness, geometric finiteness or coherent-duality theorem. Mathlib’s bounded-projective K-projective result and homotopy/derived morphism bijection were inspected at Mathlib/Algebra/Homology/HomotopyCategory/KProjective.lean:113 and Mathlib/Algebra/Homology/DerivedCategory/KProjective.lean:43. Their hypotheses do not supply a strict chain algebra action.

Object searches used `roadmaps grep` across indexed open heads and main, `roadmaps show` for every named supplier, and `rg` across board packages, for parabolic regularization, uniform moderate growth, hyper-Tor, derived completion and root separation. Existing main copies were selected for AlgebraicVectorBundles, SchemeAndStackFoundations, DerivedModuleAlgebra and EnhancedDerivedSheaves; a revision of one of these was not made a supplier. The other named suppliers were read at their indexed new-roadmap heads. The separately named sibling pull requests were not supplied as filesystem checkouts: ownership against those separate checkouts was not checked, and no additional checkout was sought. The indexed searches cover the available README/Lean heads.

| Supplier | Sections resolved and object boundary retained |
|---|---|
| AlgebraicVectorBundles | L0A–L0C: module-sheaf tensor/Hom, finite locally free operations and polynomial operations. |
| SchemeAndStackFoundations | §§1.1, 2.6–2.8, 2.18–2.21, 2.23, 4.8–4.10: descent, scalar-derived cohomology/duality, supports and formal functions. Its coefficient-linear comparison remains an explicit gap. |
| DerivedModuleAlgebra | §§0.2–0.3, 1.1.1, 1.3–1.5, 1.E.0–1.E.1, 1.M.1–1.M.2, S.1: completion/effectivity and general derived algebra are imported. |
| DeformationAndDerivedPatchingAlgebra | §§7.1–7.10: lifting, duality, tower actions, morphism completion, blocks and filtered hyper-Tor, with their distinct hypotheses. |
| AutomorphicBundles | B0–B5, B3.10, B3.BGG.1–3 and B5.10: parent coefficients, integral good-prime models, BGG and section operators. The early character calculation specializes these coefficient conventions. |
| ShimuraCompactifications | C1, C3.3–C3.10, C4.1–C4.11, C4.16–17, C5.3–C5.31: models, refinements, formal coefficients, canonical bundle and normalized p-level spans; smoothness is not inferred from normalization. |
| LanglandsParameterStacks | LP3.0: field-valued highest-weight theory; the integral lattice extension remains its existing gap. |
| ComplexComparisonPartII | C1.9, C2, C3.3: proper coherent and derived GAGA; chosen trace compatibility remains its existing gap. |
| SmoothRepresentationsOfLocalGroups | SR.0–SR.4, especially SR.4.5: towers, convolution, induction and normalized spin polynomial. The local boundary factorization remains its existing gap. |
| IntegralHeckeAndGaloisDeterminants | §§2.2–2.3, 3a.1–3a.2, 3b.1–3b.2: finite Hecke factors, normalized polynomials and residual/dual transport. |
| AutomorphicFormsOnReductiveGroups | §§1.1–1.3, 4.1–4.2, 6.1–6.7: relative cochains, occurrences, chambers and the three separate classifications. |
| AutomorphicSpectralTheory | §§4.1–4.5, 4.10, 5.1–5.8: multiplicities, semisimple Wallach criterion, full-pair regularization and distinct acyclicity results. Su’s parabolic theorem is explicitly a gap. |
| EndoscopicTransferAndUnitaryTraceComparison | §11.1 under GSp4ClassificationInputs: conditional general-type packet comparison, cuspidality and multiplicity one. |
| ArithmeticGaloisRepresentations | §§1.1–1.12, 2.2, 5.1–5.3: stable lattices, semisimplification, multiplier and dense full-polynomial recognition. |
| WeightsInEtaleCohomology; ModularCurvesPartII | R34.5–R34.6 and §§14.1–14.4a: classical higher-weight realizations; the weight-one extension remains a gap. |
| HilbertModularVarietiesAndShimuraCurves | R18.3.29(a): parallel-weight realization and its dual/Frobenius convention; the nonparallel extension remains a gap. |
| CrystallineCohomology | CR.5.1–CR.5.4, CR.DDR.6.11–14: logarithmic structures/comparisons; the coefficient vanishing remains its existing gap. |
| EnhancedDerivedSheaves | §§0.1–0.3, E1.3, E2:towers, E3.2–3, E5:abstract: enhancements, diagrams and coherent limits. |
| SolidAnalyticRings; VStackSheavesAndLisseCategories | §§1.5, 2.2, 6.4, 7.1–2 and VS2.2: coefficient categories, completion, analytic measures and scalar operations; no second generic construction is introduced. |
| AlgebraicModuliForArithmeticGeometry | §7.5: degree-zero and boundary fundamental classes, with the finite-flat and determinant alternatives distinguished. |

The generic analytic regularization belongs to AutomorphicSpectralTheory, not this package or its later analytic consumers. The geometric Dolbeault resolution and application to these automorphic coefficients remain here. No ownership moved upward. No Lean name changed, so consumers need no name migration; consumers of §§8.8–8.9 must retain the quantified R_gap and the packet hypotheses. The maintainer must arrange the new Su supplier contract; this report does not count its declaration as a proof or a supplier edit.

## Adversarial mathematics pass

These are direct small computations on the stated objects and boundary models. They test the defining laws and wrong conventions, not the proofs of the headline theorems. Conditional geometric and supplier hypotheses remain in place. Unless specified otherwise, degrees are cohomological, k is a field, and O is a DVR with uniformizer ϖ. “Retain” records the result of the displayed computation; changed rows identify the repair.

| Statement | Instances tried | Computed values on the two sides / wrong model | Result | Change |
|---|---|---|---|---|
| DVR quotient definition | O=ℤ₃, n=0,1,2 | O/(1)=0; A₁=𝔽₃; A₂=ℤ/9 with 3≠0 and 3²=0 | hn excludes n=0 | Retain |
| Uniformizer hypothesis | ϖ=0 or 1 | 0 is reducible; 1 is a unit, so neither is irreducible | Junk uniformizers excluded | Retain |
| Coefficient convention beyond mixed characteristic | O=k[[t]], k=𝔽₂ or ℂ, n=2 | A₂=k[t]/t²; t²=0 and t≠0 in both characteristics | No restriction to ℤ_p needed | Retain |
| Integer cohomology definition | Spec A₂, F=O, i=−1,0,1 | 0,A₂,0; replacing −1 by its natural part gives A₂ instead of 0 | Negative extension correct | Retain |
| Integer coefficient maps | F=0; multiplication by 3 on A₂ | All degrees zero for F=0; degree-zero map 1↦3, negative-degree map 0↦0 | Base-linear and zero extensions agree | Retain |
| §1.1 frame relation | g=1, ψ₁=2, c=3 | ψ₂=3/2 and product 3; independent ψ₂=2 gives product 4 | Wrong frame excluded | Evaluated Check |
| §1.1 rank-zero torsor | g=0 | GL₀=1, remaining multiplier group G_m | Multiplier not lost | Retain |
| §1.2 associated coefficients | κ=0; empty D | Coefficient O; subcanonical I_D; empty D gives O | Boundary twist retained | Retain |
| §1.2 translation orientation | GL₃, m=(123), f=m₂₁, m′=1 | f(m)=1; f(m⁻¹)=0 | Wrong left-action order fails identity | Retain |
| Integral dual-Weyl lattice | Rank two, characteristic 2, symmetric versus divided square | (e₁+e₂)² has mixed coefficient 0; divided square addition has mixed coefficient 1 | Integral distinction necessary | Retain gap |
| §1.3 weight dictionary | (1,0),(1,1),(2,2); Ω^(0,2) | Ranks 2,1,1; Ω^(0,2)=det², not rank-three Sym² | Weight coordinates distinguished | Retain |
| §1.3 Hodge/Lie dual | Hodge ((1,0);−1) | Dual ((0,−1);1), versus unchanged multiplier −1 | Dual sign correct | Retain |
| §1.3 scalar character | (a,b)=(5,2), x=2 | Natural 128; ν=4; ν⁻³=1/64; product 2; inverse convention gives 8192 | Normalization elementary | Added early dictionary |
| §1.3 successive twists | t=−1 then −2, ν=4 | 4⁻¹·4⁻²=1/64=4⁻³; c changes by 1+2=3 | Composition law correct | Explicit character API |
| §1.4 coefficient reduction | [O →ϖ O] in 0,1 | Original H=(0,k); reduced H=(k,k) | Derived reduction necessary | Retain; reuse §2.5 |
| §1.4 perfectness over group rings | k=𝔽₂, Δ=C₂, trivial module k | Tor_j^(k[Δ])(k,k)=k for every j≥0; over k higher Tor vanishes | Base perfectness is insufficient | Retain |
| §1.5 Matlis dual | Spec O, A₂; zero coefficient | Hom_O(A₂,E/O)≃A₂ by 1↦1/ϖ²; dual of 0 is 0 | Chosen self-duality works | Retain |
| §1.5 inverse deck action | k=𝔽₅, δ=2, λ(1)=1 | δλ=3λ; 3·2=1; wrong same-direction action gives 2·2=4 | Inverse action forced | Evaluated Check |
| §1.5 ramified trace normalization | O=ℤ_p[ϖ], ϖ²=p, p odd | Different generator 2ϖ, dual lattice (2ϖ)⁻¹O rather than O | Pontryagin/Matlis distinction survives | Retain |
| §1.6 finite coefficient duality | Spec A₂, d=0, i=−1,0,1 | Dual pairs (0,0),(A₂,A₂),(0,0) | Degree subtraction correct | Retain |
| §1.6 rank-zero and empty scheme | F=0; X=∅ | Both duality modules 0 in every degree | Degenerate inputs admitted correctly | Retain |
| §1.6 trace versus isomorphism | Genus-one curve, F=O over k | RΓ(ω)[1] has H⁻¹=k,H⁰=k; k[0] has H⁻¹=0 | Trace is not an object isomorphism | Retain |
| §1.6 non-Gorenstein/nonfree control | B=k[ε,δ]/(ε,δ)², F=k | dim Hom_B(k,B)=2; dimension of its B-dual 4, versus dim k=1 | O-quotient and local-freeness hypotheses matter | Retain |
| §2.1 Čech torsor object | Trivial C₂-torsor, affine base, A₂ | Degree-zero A₂[C₂], rank 2 over A₂; invariant module rank 1 | Upstairs object not replaced by invariants | Retain |
| §2.1 refinement and coefficient map | Single affine cover, identity refinement, ×3 mod 9 | Restriction 1↦1; coefficient map 1↦3 before/after refinement | Actual equivariance retained | Retain |
| §2.2 projectivity without averaging | Trivial C₂-torsor over 𝔽₂ | Algebra k² free rank 1 over k[C₂]; trace(1,0)=1, trace(1,1)=0 | Group order need not be invertible | Evaluated Check |
| §2.2 nonabelian group control | Split S₃-torsor over 𝔽₃ | Algebra k⁶ is the regular module, free rank 1 over k[S₃]; invariants have dimension 1 and trace of a point-idempotent is 1 despite 6=0 | General finite-group claim includes this case | Retain |
| §2.3 finite/infinite free coefficients | N=O and ⊕_(j≥0)O | Quotients A₂[Δ] and ⊕_(j≥0)A₂[Δ] | No finite-rank assumption inserted | Retain |
| §2.3 flatness control | Δ=1, N=O/ϖ, n=2 | Quotient k has length 1; free rank-one A₂ has length 2 | Nonflat N excluded | Retain |
| §2.4 dual coefficient | ℙ¹_k, F=O | H*(O)=(k,0); H*(ω)=(0,k) | Unshifted coefficient dual is different | Evaluated Check |
| §2.4 finite perfect model | Δ=1, Spec A₂ | Representative A₂[0]; zero coefficient gives zero complex | Perfect model has correct carrier | Retain |
| §2.5 coefficient hyper-Tor | [O →ϖ O] in 0,1, B=k | Extra H⁰=k is Tor₁^O(k,k); H⁰(C)⊗k=0 | §7.10 supplies correct filtration | Added Check and locator |
| §2.5 five-term Tor₂ edge | R=𝔽₂[t]/t², C₁→C₀ multiplication by t | H₀=H₁=k; Tor₂(k,k)→H₁⊗k is id; next map k→H₁(C⊗k)=k is 0 | Removing Tor₂ falsely asserts injection | Evaluated Check |
| §2.5 ordinary free descent | C=A₂[Δ] in degree zero | Derived coinvariants A₂[0]; higher Tor=0 | Free case agrees with geometric model | Retain |
| §3.0a discrete analytic convention | Spec k[x], f=x | Scheme localization is Spec k[x,x⁻¹] open; its complement V(x) nonempty | Integer-solid closed-localization convention is different | Retain |
| §3.0a identity operations | Spec O, O=W(𝔽̄_p) or ℂ[[t]] discrete | Identity adjunction composite sends 1↦1; zero counit sends 1↦0 | Comparison cannot be zero | Retain |
| §3.0a completion extrema | I=0 and I=1 | Completion F and 0; complements ∅ and X | Correct localization triangle orientation | Retain |
| §3.0b p-level chart | q=tᵖ, p≥2, t=0 | dq=p t^(p−1)dt evaluates to 0; identity chart derivative 1 | Generic étaleness does not certify boundary étaleness | Retain; reused §3.4 |
| §3.0b isogeny transport | Hodge line O, ×p | Integral 1↦p; inverse 1↦1/p only over E | Rational domain necessary | Retain |
| §3.1 coefficient correspondence | Identity legs, F=G=O, scalar 2 or 0 | Adjoints send 1↦2 or 1↦0 respectively | Coefficient arrow determines the object | Retain |
| §3.2 pull–trace | Split degree-two étale cover | Pullback 1↦(1,1); trace(a,b)=a+b; composite 1↦2 | Trace normalization correct | Retain |
| §3.2 coefficient exactness | 0→O →ϖ O→k→0, Spec O | H⁰ maps 1↦ϖ, then 1↦1 mod ϖ; next H¹=0 | Exact coefficient diagram is preserved | Retain |
| §3.3 composition order | Spec ℚ[x], pullbacks f:x↦x+1, g:x↦2x | g* f*(x)=2x+1; f* g*(x)=2x+2 | Composite order distinguished | Evaluated Check |
| §3.4 fundamental class | Identity chart; q=tᵖ | Identity class 1↦1; ramified determinant p t^(p−1) is 0 at 0 | Invertibility is not implied by equal dimensions | Evaluated Check |
| §3.4 inseparable finite-flat control | q=t² over 𝔽₂, compared with ℚ | Characteristic-2 differential and algebra trace are both 0; over ℚ, differential 2t and trace(1)=2, trace(t)=0 | Class exists but is not an étale isomorphism | Retain |
| §3.4 boundary hypotheses | q=t², reduced boundary t=0 | Pullback ideal (t²) differs from reduced ideal (t); t∉(t²) | Boundary equality requires its actual hypothesis | Retain |
| §3.5 derived coinvariants | k=𝔽₂, Δ=C₂, coefficients k[Δ] and k | Free coefficient gives k[0]; trivial coefficient gives H_j=k for all j≥0 | Flatness removes higher Tor only in first case | Evaluated Check |
| §3.5 scalar extension | M=A; zero M | T⊗1=T; T⊗0=0 | Identity/zero coefficient laws correct | Retain |
| §3.6 base change | O=ℤ₃, k=𝔽₃ | k⊗^L_O k has H⁻¹=H⁰=k; ordinary tensor has H⁻¹=0 | Finite reduction need not be Tor-independent | Evaluated Check |
| §3.7 twisting | Identity line transport, scalar 3, zero | Operators 1,3,0; two scalar twists 2 and 3 compose to 6 | Tensor transport fixes map | Evaluated domain Check |
| §3.7 integral/rational direction | O-line ×p | Source 1↦p is integral; reverse 1↦1/p∉O | Invertibility not automatic | Evaluated Check |
| §3.8 quasi-isogeny composition | Hodge line over E, ×p then ×p | Composite ×p²; inverses ×p⁻¹ and ×p⁻² | Rational transport composes | Retain |
| §3.9 transpose | Three-cycle P on ℚ³ with sum pairing | Pᵗe₁=e₃≠Pe₁=e₂; pairing values 1 and 0 distinguish P⁻¹/P | Non-involutive example fixes direction | Evaluated Check |
| §3.10 contraction orientation | {0,1}, p₁=id, p₂=0, Z={1} | p₁⁻¹Z={1}; p₂⁻¹Z=∅ | Required inclusion fails | Retain |
| §3.10 scheme structures | Spec k[t], p₂:t↦t², Z=V(t) | Supports both {0}; ideals (t),(t²) with t∉(t²) | Set condition weaker than ideal containment | Evaluated Check |
| §3.10 empty/total/Frobenius | Z=∅ or X; absolute Frobenius over 𝔽₂ | Inverse images ∅/X; Frobenius fixes every support | Boundary cases satisfy contraction | Retain |
| §3.11 object completion | A=k[x], I=(x) | Λ_I A has H⁰=k[[x]], higher groups 0; unit x↦x | Object comparison is not a Hom-set statement | Added completion Check |
| §3.11 torsion coefficient | O=ℤ₃, F=𝔽₃ | Completion F; derived reduction has k in −1,0 versus underived k only in 0 | Completion and reduction distinct | Evaluated Check |
| §3.11 perfect-system effectivity | A_n=k[x]/xⁿ, degree-zero A_n | Limit k[[x]], derived reduction modulo xⁿ gives A_n | Correct effectivity contract | Corrected supplier |
| §3.11 morphism completion | Complete O, P=Q=O[0] | Hom=O; limit Hom=lim O/ϖⁿ=O | §7.8 reserved for morphisms | Corrected supplier |
| §3.12 completed/support objects | A=k[x], Z=V(x) | Completion H⁰=k[[x]]; local cohomology H¹=k[x,x⁻¹]/k[x], x⁻¹≠0 | Triangles cannot be substituted | Evaluated Check |
| §3.12 filtered action | Identity and ×2 on the same filtration | 1↦1 or 2 on abutment; each differential satisfies d(2x)=2d(x) | One map controls all pages | Evaluated Check |
| §3.13 identity operator | Unit double coset | Coefficient 1↦1; global action id in every degree | Unit convention retained | Retain |
| §3.13 degree-zero detection control | C=O[0]⊕O[−1], projector to second summand | H⁰=0 for projector and zero; H¹=id versus 0 | H⁰ agreement does not prove derived equality | Evaluated Check |
| §4.1 scalar normalization | (4,2),(5,2), x=2 | 64/64=1; 128/64=2 | Matches early dictionary | Expanded Check |
| §4.1 Hecke label dictionary | ℓ=2, similitudes 2 and 4 | Twists 2⁻³=1/8 and 4⁻³=1/64 | Generator labels not interchangeable | Retain |
| §4.2 divided correspondence | O-line, T=ϖ^k id, k=0,1 | Divided map id for both; ×ϖ injective on O | Torsion-free uniqueness correct | Retain |
| §4.2 torsion nonuniqueness | 𝔽₃, k=0,1,2 | Multiplication arrays (0,1,2), (0,0,0), (0,0,0) | Kernel 0 only at k=0 | Restrict Check to k>0 |
| §4.2 rational inverse | O=ℤ₃, ×3 | 1↦1/3 lies in E and not O | No integral operator inferred | Retain |
| §4.3 matrix similitudes | β_(x,0),β_(x,1),β_(x,2), x=2 | Symplectic pair-products 4,2,4 | Powers match normalization | Retain |
| §4.3 spin polynomial | q=2, BCGP generators (1,3,2) | Coefficients 1,−3,14,−24,64; fixed reciprocal 1,−3,14,−24,64 in ascending order | q³+q retained | Retain |
| §4.3 repeated-root formal check | q=1, generators (1,4,4) | P=(X−1)⁴ with coefficients 1,−4,6,−4,1 | No division by distinct roots | Retain |
| §4.4 finite invariants | Trivial C₂ action on 𝔽₂ and ℚ | H¹(C₂,𝔽₂)=𝔽₂; H¹(C₂,ℚ)=0; invariant augmentation of k[C₂] is zero | Characteristic-zero descent cannot be reused integrally | Evaluated Check |
| §5.0 PEL dimension | [F:ℚ]=1 | Open dimension 3; toroidal divisor dimension 2; minimal boundary dimension ≤1 | Genus-two geometry retained | Retain |
| §5.0 compactified quotient | t↦−t over ℚ; C₂, p=3 or 2 | No fixed point on G_m; 0 fixed on A¹; (1+σ)²/4=(1+σ)/2, while 1/2 absent mod 2 | Boundary and denominator hypotheses needed | Retain |
| §5.0 regular thickening | k[x,y]/xⁿ, boundary y=0 | Multiplication by y injective; dimension 1, Cohen–Macaulay | Restriction preserves nonzero class | Retain |
| §5.0 associated-prime control | k[x,y]/(xy,x²) | x≠0 and yx=0; localization at y kills x | Reduced noncontainment insufficient | Retain |
| §5.1 formal coefficients | Identity chart; q=t² | Boundary ideal (t) versus ramified pullback (t²); t belongs only to first | Ramified application not automatic | Evaluated Check |
| §5.2 relative vanishing range | Canonical n=0,1; subcanonical n=0 | Hypothesis false,true,true respectively | Distinct positivity endpoints retained | Retain |
| §5.3 general PEL length shifts | d=3, first i=4, lengths 0,1,2,3 | i−length=4,3,2,1 | Subcanonical strict cutoffs 3,2,1,0 | Retain |
| §5.3 coefficient substitutions | p=7, α=β=0, t=0,1,2 | Weights at t=1: (3,1),(4,2),(4,4); at t=2: (4,2),(5,3),(5,5); at t=0 positivity false | Smallness 0<4; positivity needed | Retain |
| §5.4 above-degree-two range | p=7, (a,b)=(3,1),(6,1),(7,1) | a−b=2,5,6; α+β=0,3,4; last fails 4<4 | Included/excluded endpoints correct | Retain |
| §5.5 above-degree-one range | p=7, (4,2) and (3,1) | Sums 6 and 4; first admits length-two (0,0,1), second fails sum≥6 | First allowed cohomology vanishing degree 2 | Retain |
| §5.6 positive-degree range | p=7, (4,4),(7,4),(8,4) | b=4; differences 0,3,4; last fails a−b≤3 | First vanishing degree 1 | Retain |
| §5.7 dual coefficient | (a,b)=(4,2) | Dual weight (3−b,3−a)=(1,−1); applying twice returns (4,2) | Involution and boundary twist retained | Retain |
| §5.8 singular mod-p ranges | p=5, a=4,3,6 | First: H²_sub=H³_sub=0 at (4,2); second: H⁰_can=H³_sub=0 at (3,0); a=6 outside both | Coefficients and tags agree with theorem | Evaluated Check |
| §5.9 reduction of sections | ϖ-disk and O[0] | Disk gives 0→k on H⁰ reduction, nonsurjective; O[0] gives O→k surjective | H¹ obstruction explicit | Evaluated Check |
| §5.10 regular Cousin input | k[x,y], (x,y); k[x,y]/xy, (x) | First Koszul H⁰=k, negative H=0; second H⁻¹=(y)≠0 | Regularity cannot be dropped | Evaluated Check |
| §5.11 termwise restriction | k[x,y]/x² versus k[x,y]/(xy,x²) at y | First kernel 0; second kernel contains nonzero x | Termwise injection tested | Evaluated Check |
| §5.12 chain-level Hecke map | k →id k; term maps (id,id) or (id,0) | First dT=Td=id; second dT=id≠0=Td | Term maps alone insufficient | Evaluated Check |
| §5.13 integral relation detection | T=id or 0 on k[0] | Generic maps both zero; integral H⁰ sends 1↦1 or 0 | Rational agreement insufficient | Evaluated Check |
| §5.14 idempotent localization | T=A₂×A₂ on C⊕D | e₁²=e₁; e₁e₂=0; e₁+e₂=1; first factor selects C | Actual perfect summand specified | Retain |
| §5.14 nonisolated-prime control | ℤ localized at (3) | Idempotents only 0,1; neither image is ℤ_(3) | Arbitrary localization not a summand | Retain |
| §5.15 symplectic witness | Diagonal matrix diag(1,1,1,2) over ℚ | Pair-products in a symplectic eigenbasis would require 1·2=1·1, i.e. 2=1 | GL₄ alone supplies no multiplier form | Retain |
| §5.16 residual congruence | O[t]/t(t−ϖ), characters 0 and ϖ | Both reduce to (ϖ,t); residual generic summand ℂ² versus either single ℂ | Congruence differs from complex maximal ideal | Retain |
| §5.16 distinct residual blocks | T=O×O on O² | First residual ideal gives ℂ×0, second 0×ℂ | Block selection distinguished | Retain |
| Layer 5 endpoint example | p=7, (4,2), lengths 1 and 2; (4,4), length 3 | First i=4 gives degrees 3,2,1; strict bounds are >2,>1,>0 | Endpoint itself not claimed to vanish | Corrected wording |
| §6.1 interior image | (t)→k[t]; empty boundary | Image (t) excludes 1; empty boundary image k[t] contains 1 | Actual boundary map determines image | Evaluated Check |
| §6.2 relative-pair distinction | Trivial sl₂ coefficient | dim(g/k)=2, relative H²=ℂ; dim(p_o/k_o)=1, C²=H²=0 | Full and parabolic complexes differ | Added computed Check |
| §6.2 growth resolution coefficient | Complete modular curve, nonempty D | Constant section restriction 1; subcanonical O(−D) has no such section | Canonical resolution distinguished | Added Check |
| §6.3 regularization zero coefficient | V=0 | Both complexes and every H^i equal 0 | Inclusion comparison has correct zero case | Added Check |
| §6.3 automorphic versus cuspidal | Constant modular function 1 | Constant term 1; cusp condition demands 0 | Automorphic source cannot be replaced by cuspidal source | Evaluated Check |
| §6.3 tower coefficient | Central coefficient value 2 | Inverse correction 1/2, product 1; wrong same action product 4 | V_o inverse action essential | Added Check |
| §6.3 core versus uniform growth | Cusp f(y)=y, measure dy/y² | (y∂_y)^r f=y; weighted core norm tail ∫(log y)^(−2n)dy=∞ for every n | Core and uniform-growth vectors differ | Added Check; cite §5.8 |
| §6.3 finite-character comparison | Central operator N on k², N²=0, N≠0 | Fin_(X) retains dim 2; ker N has dim 1 | Finite-character means power torsion | Proof-route pair/ideal made explicit |
| §6.4 cusp/interior boundary | Constant coefficient, connected complete modular curve | Canonical H⁰ contains 1 with boundary value 1; subcanonical/interior excludes it | No equality with whole canonical H⁰ | Evaluated Check |
| §6.5 image spaces | ℂ²→ℂ, (x,y)↦x | Source dim 2, image dim 1, (0,1) maps to 0 | Spectral occurrence need not inject | Retain |
| §6.6 multiplicity contribution | Relative dim 1, finite-level dim 2, multiplicity 3 | Source contribution dimension 1·2·3=6; zero invariant space gives 0 | Multiplicity not silently one | Retain |
| §6.7 coefficient transport | (a,b)=(5,2), c=−7 then −4 | V central parameter 7+2c is −7 then −1; finite scalar 128 then 2 | Underlying sheaf does not fix Hecke action | Evaluated Check |
| §6.8 holomorphic limit | Ω^(0,2), P20 parameter | (−1,0;4); second semisimple coordinate 0, a limit not regular discrete series | r=2 retained | Retain |
| §6.8 Petersson Hecke image | Diagonal operator diag(1,2) on ℂ² | Positive norm abs(z₁)²+abs(z₂)²; generated image ℂ×ℂ | Adjoint-stable commuting image semisimple | Retain |
| §6.9 product degrees | Two allowed places, local choices 0 or 1 | Degree counts 1,2,1 in degrees 0,1,2; degree-one dimension 2d for fixed finite dim d | Künneth count with permitted members | Retain |
| §7.0 balanced central sign | (a,b)=(5,2), c=−4 | w=1; coefficient −1 plus representation 1=0; wrong sign sum −2 | Central balancing correct | Retain |
| §7.0 transfer orbit | (4,2) and (5,2) | Dual-orbit sums 0 and −2; balanced-orbit sums 0 and 2 | Contragredient retained | Retain |
| §7.0 nonzero central example | (a,b;c)=(3,2;0) | Coefficient central 5; balanced central −5; dual orbit {7/2,7/2,3/2,3/2} sum 10 | Parameter label alone insufficient | Retain |
| §7.0 nongeneral residual exclusion | ρ₂⊕ρ₂′ | Nonzero invariant summand dimension 2 of 4 in every characteristic | Absolutely irreducible residual witness excludes direct sum | Retain |
| §7.1 chambers | (x,y)=(2,1),(2,−1),(1,−2),(−1,−2) | Memberships C₀,C₁,C₂,C₃ respectively | Degree orientation correct | Retain |
| §7.1 singular chamber walls | (2,0),(1,−1),(0,0) | Memberships {0,1},{1,2},{0,1,2,3}; origin compact-singular | Closed membership alone not existence of a limit | Retain |
| §7.1 full/parabolic control | Trivial SL₂ coefficient | Full H²=ℂ; parabolic H²=0 | Wrong relative-pair substitution detected | Evaluated Check |
| §7.2 singular weight ranges | (a,b)=(2,1) | Shift (1,−1) belongs to C₁,C₂ and not C₀,C₃ | Endpoint agrees with full family | Retain |
| §7.3 singular bound | Test R_sing=5, k=4 and 3 | λ₁=−5,−4; −λ₁=5,4; threshold true,false | Negative-parameter direction fixed | Evaluated Check; separate constant |
| §8.1 nerve differential | Two-set overlap, pairs (1,1),(1,0) | Alternating restriction 1−1=0 and 0−1=−1 | Sign convention distinguished | Evaluated Check |
| §8.2 all-degree boundary input | Exact segment 0→0→ℂ →id ℂ | H⁰ boundary 0 but degree-one cokernel dim 1; vanishing H¹ boundary forces cokernel 0 | Degree-zero vanishing alone insufficient | Evaluated Check |
| §8.3 boundary coefficient | k=0 and 1 on cusp chart q | ω² versus ω³(−cusps); 1∉(q), q∈(q) | Endpoint cusp twist distinguished | Evaluated Check |
| §8.3 factor 2 | T_ℓ eigenvalue 1 over ℂ and mod 2 | Displayed T_(ℓ,2) values 2 and 0 | No integral division by 2 | Evaluated Check |
| §8.4 boundary spin factorization | q=2, α=1,β=2,u=4,D=2 | Roots 1,2,4,8; polynomial coefficients 1,−15,70,−120,64; uD=q³T₀=8 | Local/geometric normalizations match | Retain |
| §8.4 repeated roots and small characteristic | α=β=u=1 | (X−1)⁴; reduction mod 2 is X⁴+1 | Formula uses no root differences or halves | Retain |
| §8.5 weight restriction | Two real places, scalar weights (4,4),(6,6) | Nonparallel scalar weights do not give the parallel point term; parallel (4,4),(4,4) does | Parallel branch retained | Retain |
| §8.5 residual boundary control | Boundary witness ρ₂⊕ρ₂⊗χ | Proper invariant rank 2 remains; required residual witness rank 4 absolutely irreducible | Localized H⁰ boundary vanishes only with witness | Retain |
| §8.6 boundary long exact sequence | H⁰(D)=0, H¹(D)=ℂ | H⁰_sub→H⁰_can iso; H¹_sub→H¹_can injective; possible cokernel dim 1 | No totally real H¹ surjectivity inferred | Retain |
| §8.7 rational low-weight endpoint | a=2, shifted pair (1,0); a finite representation in the cuspidal sum, d=0,1 | Chamber memberships {0,1}; contributions 0,0 at d=0 and 1,1 at d=1; omitting the generic partner gives 1,0 | Conditional endpoint equality retained for this contribution | Rephrased flagged Check with explicit hypotheses and values |
| §8.8 rejected old large gaps | Test R_sep=3, R_gap=5, (8,4) | Gaps 4,4; pairings 5,7,9,2; separation and revised gap test both false | Old R=3 criterion insufficient | Added Check |
| §8.8 admitted large gaps | Test thresholds 3,5, weight (12,6) | Gaps 6,6; pairings 7,11,15,4 all >3 | Elementary conversion works | Added Check |
| §8.8 permitted singular wall | Test thresholds 3,5, weight (8,2) | Gap 6; pairings 7,7,7,0; nonzero entries >3 | Zero coroot pairing allowed | Added Check |
| §8.8 sufficient not necessary gaps | Test thresholds 3,5, weight (10,6) | Pairings 5,9,13,4 separated; gap 4≤5 rejects weight | No false converse asserted | Added Check |
| §8.8 central reduction | Real scalar 2, identity, unipotent radical | 4·(1/4)=1; wrong twist 4·4=16; ν(unipotent)=1 | Twisting preserves zero constant terms | Added proof step and Check |
| §8.9 packet count | l₀=0,1,2; finite dim d=3 | H⁰=3, H¹=0,3,6 respectively; l₀H⁰=0,3,6 | Dimension formula with fixed R_gap and packet assumptions | Quantifier propagated |
| Worked weight substitutions | p=7, (4,2) | Length one (α,β,t)=(0,0,2); length two (0,0,1); both α+β=0<4 | Strict degree bounds >2 and >1 | Recomputed |
| Worked duality/chamber/normalization | (a,b)=(4,2) | Dual (1,−1), shifted pair (3,0), memberships C₀,C₁; scalar exponent 0; spin entries ±3/2 twice | All uses agree | Recomputed |
| Worked packet example | Two l_v=2 places, dim d=3; then one such place | H⁰=3,H¹=6; then H⁰=3,H¹=3, with same global gap hypotheses | Counts remain conditional | R_gap made explicit |

No row replaces a missing supplier proof by an asserted formal theorem. In particular the SL₂ computation verifies the distinction underlying the Su gap; it does not supply that gap. No source passage was copied into the package or report.
