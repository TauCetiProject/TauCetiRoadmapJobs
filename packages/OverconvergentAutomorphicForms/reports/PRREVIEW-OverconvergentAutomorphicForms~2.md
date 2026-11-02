# Review of OverconvergentAutomorphicForms (pull request #1422 at beb4bd7)

**Verdict:** accepted

:robot: Independent AI incremental re-review of 41 changed lines since bc53e3c. No findings remain. This verdict makes the folder ready for a human's final approval; it is not an approval or merge.

Only `TauCetiRoadmap/OverconvergentAutomorphicForms/README.md` changed: 23 insertions and 18 deletions. The changes, their direct consumers and the three previous findings were reviewed; untouched mathematics is carried forward explicitly below. The exact requested head was confirmed. The PR has no changes outside this roadmap folder, and the worktree was left unchanged.

## Previous findings

- R01 — repaired: README lines 17, 66, 169, 359 and 396 now cite PhiGammaModulesAndIwasawaCohomology §2.7 and its representing space, without the nonexistent declaration name. Universal evaluation, uniformizer change and finite coefficient extension are retained.
- R02 — repaired: README lines 15, 58, 65, 75, 546, 563, 981, 1182, 1215 and 1321 identify the actual compactification and Atkin–Lehner sections, preserving base, level, stabilizer, formal-functions and derived-refinement hypotheses.
- R03 — repaired: README lines 1070–1090 construct expansions at ramified and unramified cusps with actual lattices, level phases, full stabilizers and coefficient lines. The all-cusp criterion now uses these maps; three new negative-control checks distinguish their scope.

## Verified sound

**Scope and validation.** Read the normative repository README and CONTRIBUTING, the complete 41-line diff and its surrounding targets, and the previous report. Main-branch `AlgebraicVectorBundles` and `PadicMeasuresIwasawaAlgebras` were reopened for shape. All affected targets keep their API and at least three discriminating checks. The repairs introduce no algorithm, copied source passage, new supplier direction, good-prime restriction, sorry'd data or option override.

The worker's gate and an independent gate rerun passed every text, scope, metadata and dependency check. The targeted command `lake build TauCetiRoadmap.OverconvergentAutomorphicForms.Suggested` returned `Build completed successfully (8976 jobs).` Direct `lake env lean` elaboration of `TauCetiRoadmap/OverconvergentAutomorphicForms/Suggested.lean` then exited 0 with no warnings. These Lean commands ran sequentially and finished.

The prescribed dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The changed Needs lines and their actual contracts were read individually. The resolver's sole unresolved citation, `AutomorphicBundles B3.Hilbert.1` at README line 1321, is a false positive: the supplier's explicit dictionary at `TauCetiRoadmap/AutomorphicBundles/README.md:217` identifies B3.Hilbert.n with §7.(n+2). Thus B3.Hilbert.1–3 means §§7.3–7.5. The resolver did not inspect library names at the pins; direct pinned-file reads below provide that evidence.

**Supplier contracts reopened.** The roadmap service supplied the current open-head texts, checked against its main/open index. The following five supplier roadmaps were read for the changed references and their immediate interfaces. Line numbers below refer to the repository files, excluding the service's added heading.

| Supplier location | Contract resolved and scope retained |
| --- | --- |
| `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:1256` | §2.7 represents compact continuous characters and Kˣ characters using the unit space times G_m; it supplies universal evaluation, finite field extension and a↦δ(u)a on changing ϖ to uϖ. The adapter is identified by the representing property. |
| `TauCetiRoadmap/LocallyAnalyticDistributions/README.md:2007` | §3.3 supplies the compact geometric/Mellin adapter and keeps finite components. Its own old §4.0 reference is still present, but the reviewed roadmap now directly resolves the underlying character object to its actual owner, PhiGamma §2.7. No missing target remains in this consumer. |
| `TauCetiRoadmap/HodgeTateAndCanonicalSubgroups/README.md:1265` | §4.3 supplies AL_n from radius p^nε to ε and identifies structural tower transitions with canonical quotient/Frobenius transitions. It retains n≥1 and the canonical-subgroup ranges at every quotient. §§4.6–4.8 remain the period-bound inputs. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:1474` | §§4.1–4.4 supply proper same-level refinements, compatible-fan level maps and ordered Hecke spans. Common refinements compare models; they do not identify the spaces. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:1605` | §4.7 is formal functions for proper morphisms of locally noetherian algebraic spaces, coherent source modules and coherent target ideals. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:1653` | §§4.9–4.11 supply derived boundary-ideal pushforward, finite locally free coefficient comparisons and completed comparisons on noetherian p-adic models. Derived inverse limits require degreewise Mittag-Leffler hypotheses. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:3343`, `:3451` | §§8.14 and 8.21 give the actual level-dependent lattice, cyclotomic covering chart and phase ζ_e^(e Tr(ξx)). Ramified cusps are included. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:3510`, `:3610` | §§8.23–8.25 and 8.28 give fine toroidal charts and semiabelian families; general levels keep quotient stacks and residual action. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:3685` | §§8.32–8.38 give proper contractions, normal total minimal models, cusp fibres and completions. They do not imply normal special fibres or a semiabelian family on a minimal cusp. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:3802`, `:3889` | §8.40 gives classical expansions with phase covariance; §§8.45–8.50 retain dyadic and field-ramified primes prime to tame level, normalized wild models and compatible-fan level maps. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:4103`, `:4158` | §8.56 keeps the full stabilizer, translation cocycle and cyclotomic action. §8.57 supplies gluing with schematic density, compactifiability, permitted-point and Artinian lifting assumptions over its stated base. |
| `TauCetiRoadmap/AutomorphicBundles/README.md:2496` | §7.5 gives completed coefficient-line-valued cusp series, full transported stabilizer descent and the zero-constant submodule. Its Diamond indexing has its own phase sign; the new numerical check explicitly uses ShimuraCompactifications §8.21's convention and does not identify the two coordinate markings. |

The added supplier paragraph at README line 75 preserves these hypotheses. In particular, it does not infer arbitrary Banach effectivity, normal special fibres, integral averaging or equality of boundary-ideal pullbacks. The analytic and torsion-limit comparisons remain targets of Layer 7.

**Ownership and pinned library checks.** Object searches through the roadmap service covered main and the indexed open heads; searches of board packages also covered the new cusp and character-space objects. The existing owners are PhiGamma §2.7 for character geometry, ShimuraCompactifications §§8.14, 8.21, 8.40, 8.56 for classical cusp geometry, and AutomorphicBundles §7.5 for classical coefficient descent. This roadmap owns their analytic-family application and comparison. Other search hits concerned classical Siegel families or unrelated Fourier operations; no competing owner for the changed analytic Hilbert target was found. The old copy of this package on the board is not a separate owner. Open-work ownership was checked against the available corpus, not inferred for unavailable work.

The pins are unchanged: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Six directly relevant declarations were reopened:

| Pinned file and line | Declaration and what it supplies |
| --- | --- |
| `Mathlib/RingTheory/Norm/Defs.lean:61` | `Algebra.norm` is the determinant of multiplication. The geometric degree interpretation retains finite freeness. |
| `TauCeti/RingTheory/Norm/Units.lean:40` | `TauCeti.Algebra.normUnits` is the unit homomorphism obtained by `Units.map`; it adds no geometric decomposition. |
| `TauCeti/Topology/Algebra/Algebra/Norm.lean:29` | `TauCeti.continuous_algebraNorm` includes finite freeness and the module topology. |
| `Mathlib/NumberTheory/ModularForms/QExpansion.lean:171` | `UpperHalfPlane.qExpansion` is a complex Taylor-coefficient construction on functions ℍ→ℂ. It is not a Hilbert analytic-family coefficient sheaf. |
| `Mathlib/NumberTheory/ModularForms/QExpansion.lean:670` | `ModularForm.qExpansion_injective` uses a positive strict period and complex modular forms of fixed integral weight. It does not already state the new family theorem. |
| `Mathlib/NumberTheory/ModularForms/CuspFormSubmodule.lean:141` | `ModularForm.isCuspForm_iff_coeffZero_eq_zero` is the full-level complex modular-form criterion, not the all-cusp Hilbert-family criterion. |

**Headline inventory and Lean form.** The unchanged headline groups are general Jacquet admissibility/coherent duality; definite unitary eigenvariety dimension, Cohen–Macaulayness and reducedness; Hilbert coefficient existence and algebraic specialization; geometric/arithmetic and AIP comparisons; family Koecher, torsion boundary vanishing, Fourier injectivity and Hecke compatibility; cuspidal Banach modules and complete continuity; ordinary Igusa and toroidal/minimal completion comparisons; and Siegel, general toroidal and all-degree Bruhat coefficient/distribution comparisons. Each group remains named in the module docstring with its missing geometric or analytic carriers. Extending §6.5 to ramified cusps does not make its headline statable on the pinned complex q-expansion carrier. The file still has one `import Mathlib`, one module docstring, the required namespace and zero declarations. Consequently there are zero signatures for `#check @name`, zero retained-section-binder changes, zero sorried theorems for a one-tactic padding probe and zero duplicate fully qualified names. The previous headline assessment is carried forward; no substitute elementary theorem was introduced.

**Sources and this round's seeded sample.** Three of the fifteen seeded targets intersect changed passages: §§0.2, 2.1 and 6.1. Those were reopened in full with their cited inputs. The changed §6.5 and affected ordinary-transition/boundary consumers §§7.1 and 7.5 were also checked. The other twelve sampled targets (§§4.2, 4.3, 5.1, 5.4, 5.5, 6.4, 7.3, 7.4, 8.1, 8.4, 8.5, 8.6) are unchanged and retain the previous computed rows below; their full source review was not repeated. No newly unverified locator was introduced.

| Target checked this round | Source locator opened | Outcome |
| --- | --- | --- |
| §0.2 character and inverse-norm convention | BHW Definition 6.1 and following paragraph, printed pp.1756–1757, `bhw line 1843`, `bhw line 1849`, `bhw line 1871`; PhiGamma §2.7 | The roadmap uses the displayed inverse-norm character, not the inconsistent direct-norm group-map wording. The repaired owner supplies the compact representing object. |
| §2.1 domains and scaled transport | BHW Definition 5.17 and Proposition 5.18, pp.1751–1753, `bhw line 1628`, `bhw line 1639`, `bhw line 1669`; Definition 6.4, p.1757, `bhw line 1887`; HodgeTate §4.3 | Canonical and coefficient ranges are intersected. The closed odd-prime endpoint remains an additional target, rather than silently enlarging the strict supplier bound. AL transport has the correct scaled source. |
| §6.1 family Koecher and boundary | AIP-adic Proposition 8.4 and proof, pp.36–37, `aip-adic line 1505`, `aip-adic line 1513`, `aip-adic line 1529` | Normal finite Igusa structural rings and codimension at least two are retained. Extension of full sections is distinct from cusp vanishing. |
| §6.5 ramified cusp lattice | AIP-cusp §3.6, manuscript p.19, `aip-cusp line 760`, `aip-cusp line 781`, `aip-cusp line 782` | The source explicitly replaces M by N₂⁻¹M. The repair uses the actual covering chart and does not assert that every monomial descends. |
| §6.5 expansions and comparison | AIP-adic §8.4, p.37, `aip-adic line 1533`; AutomorphicBundles §7.5; ShimuraCompactifications §§8.21, 8.40, 8.56 | The ordinary source supplies the expansion input. Analytic-family extension, component coverage, full stabilizer covariance and AIP compatibility remain explicit targets here. |
| §7.1 structural/AL transitions | BHW Theorem 5.11, Lemma 5.12 and proofs, pp.1746–1748, `bhw line 1465`, `bhw line 1494`, `bhw line 1530`; HodgeTate §4.3 | Canonical quotient is the Frobenius transition; it is not replaced with an identity transition after AL transport. |
| §7.5 boundary completion input | BHW Proposition 6.6 and Remark 6.9, pp.1758–1759, `bhw line 1913`, `bhw line 1933`; AIP-cusp §3.6, pp.19–20, `aip-cusp line 785`, `aip-cusp line 801`; AIP-adic p.37, `aip-adic line 1524` | The ordinary toroidal torsor, cusp-unit pushforward and formal-functions inputs match the repaired contracts. The double-index analytic completion is still a theorem to prove, not a consequence asserted by these citations alone. |

**Adversarial computations for the repairs.** The following 23 rows replace the five affected prior rows and add tests of the new supplier paragraph, new checks and repaired interfaces. Values refer to the stated local models; they do not assert that arbitrary covering-chart series are global automorphic forms.

| Statement | Instances tried | Computed values on both sides / negative control | Result and change |
| --- | --- | --- | --- |
| §0.2 supplied weight spaces and inverse-norm map | F=ℚ, p=5, w=t=id, x=2 | Group coordinates (4,1/2), character value 2; displayed κ=2²/2=2. Direct norm gives 8. Geometric/arithmetic disc dimensions 1 and 2. | Pass; §2.7 now resolves the owner. |
| §0.6 local multiplicative adapter | K=ℚ₅, unit restriction id, δ(5)=3 | New uniformizer 10 has δ(10)=2·3=6 on both spaces; inverse value 1/6. Choosing δ(5)=4 instead gives 8, so the unramified coordinate is retained. | Pass; prior R01 repaired. |
| §0.6 finite extension, products and evaluation uniqueness | Two factors with uniformizer values (3,4); empty product | Inversion gives (1/3,1/4); evaluation at (5,1) is 3, not 4. Scalar extension preserves 3 and 4; empty product evaluates 1. | Pass; universal evaluation rules out an unmarked swap or rescaling. |
| Contract paragraph: coarse versus stack coefficients | C₂ acting by sign on a line over ℚ₃ | Stack fibre dimension 1; coarse invariants satisfy a=−a, hence 2a=0 and a=0. | Pass; general-level stack and stabilizer hypotheses retained. |
| Contract paragraph: normality of total model | O=ℤ₅[π], π²=5 | O is a DVR; O/5 has π≠0 and π²=0. Reduced quotient sends π to 0. | Pass; no normal-special-fibre inference. |
| Contract paragraph: all allowed primes | F=ℚ(√5), tame N=4 or 11 | For N=4, p=5 is allowed and p=2 is excluded; for N=11, p=2 is allowed. gcd values 1,2,1 respectively. | Pass; excludes primes dividing tame level, not field-ramified or dyadic primes as classes. |
| Contract paragraph: level maps versus fan subdivision | Blowup of A² at origin | Exceptional fibre P¹ has dimension 1, versus dimension 0 for a finite fibre. Both maps are identity on the dense torus. | Pass; compatible refinement need not be finite or an isomorphism. |
| Contract paragraph: coherent formal functions | Identity over ℤ₅, module ℤ₅, I=(5), I=0, I=(1) | For (5), completion and lim ℤ₅/5^(n+1) are ℤ₅; for 0 both are ℤ₅; for (1) both are 0. | Pass; proper/coherent/noetherian contract retained. |
| Contract paragraph and §7.5: boundary refinement | x=u, y=uv | Pullback xy=u²v has exceptional order 2; reduced boundary uv has order 1; pullback (x,y)=(u). These are three different ideals. | Pass; derived pushforward comparison replaces no ideal by an incorrect pullback. Prior R02 repaired. |
| Contract paragraph: degreewise limit hypotheses | Tower concentrated in degree 1, groups ℤ and transitions ×2 | Every H⁰ is 0; images in H¹ are 2ⁿℤ, strictly decreasing, hence not Mittag-Leffler. | Pass; sections alone cannot justify derived-limit interchange. |
| Contract paragraph: schematic density and lifting | k[t] and R=k[t,η]/(tη,η²), localize at t | First localization has kernel 0; R→R[1/t] kills nonzero η. Maps t↦aη into dual numbers all reduce to t↦0; a=0 and 1 give different lifts. | Pass; schematic density and specified Artinian uniqueness are real assumptions, not consequences of pointwise agreement. |
| §2.1 scaled AL contract | p=5,n=1,ε=1/100; ε=0 | pⁿε=1/20 maps to 1/100; at zero both radii are 0. Unscaled source would be 1/100 instead of 1/20. | Pass; numerical map unchanged, citation now correct. |
| §6.1 cusp/Koecher distinction | Boundary t=0; curve punctured chart | Constants of t and 1+t are 0 and 1; t⁻¹ has order −1 and no regular extension. Constant 1 extends but is not cuspidal. | Pass; d>1, actual normality and codimension hypotheses retained. |
| §6.5 covering expansion and lattice | p=3,M=ℤ,N₂=1 or 5 | Unramified lattice ℤ; ramified lattice (1/5)ℤ. For t=q^(1/5), t⁵=q and 1/5∉ℤ. | Pass; prior R03 repaired. |
| §6.5 translation phase | e=5,ξ=1/5,x=1 | e Tr(ξx)=1, so phase ζ₅; at ξ=1 phase ζ₅⁵=1. Thus t↦ζ₅t and q↦q. | Pass; agrees with ShimuraCompactifications §8.21's convention. |
| §6.5 phase composition and inverse | Translations x=1 twice, then −1 | Two pullbacks give ζ₅²t, equal to translation 2; inverse gives ζ₅⁻¹t and composite t. | Pass; missing-phase model would incorrectly give t after translation 1. |
| §6.5 residual action on constants | Exponent 0; trivial coefficient and sign coefficient over ℚ₃ | Translation phase ζ₅⁰=1; trivial coefficient permits constant 1; sign coefficient forces a=−a, hence constant 0. | Pass; full stabilizer is required beyond exponent phases. |
| §6.5 reduced uniform base check | A=E[η]/η², η≠0 | Spectral seminorm of η is lim ‖ηⁿ‖^(1/n)=0; its defining norm can be 1. Reduction maps η to 0. | Pass; this thickening is outside the Hilbert standing hypotheses, not silently reduced to E. |
| §6.5 coefficient-line frame and AIP parameters | κ=id,p=5, frame e′=2e; w=t=id | New coordinate 1/2 reconstructs (1/2)e′=e. ν(2)=2 and w_AIP(2)=1/2 give κ(2)=2. | Pass; intrinsic comparison retains coefficient lines and inverse character. |
| §6.5 injectivity coverage | Two trivialized components with section (0,1) | Restriction to first component is 0; restriction to both is (0,1)≠0. | Pass; actual finite Igusa component coverage is retained. |
| §6.5 all-cusp constant criterion | Covering chart t=q^(1/5), series t and 1+t | Constant terms 0 and 1; boundary restriction at t=0 gives 0 and 1. Neither calculation alone asserts global descent. | Pass; construction now includes the cusps used by the criterion. |
| §6.5 radius/level/weight and fan compatibility | Local series 1+t, monomial map t↦s³, coefficient map E→E′ | Pullback 1+s³ has constant 1, equal to image of constant 1; t has constant 0 on both. Identity radius restriction and same-character specialization preserve these values. | Pass; actual chart maps and fan transport remain part of the target. |
| §§7.1,7.5 AL/Frobenius square | p=2, source coordinate r_(n+1) | Both composites pull r back to r_(n+1)²; identity-transition replacement gives r_(n+1). At r_(n+1)=2, values are 4 versus 2. | Pass; corrected §4.3 supplies the required transition. |

**Untouched adversarial rows carried forward.** The 129 rows below reproduce the previous report's values for untouched mathematical statements, each with its provenance. Citation-only edits may affect their supplier justification; those contracts were checked above. Together with the 23 fresh rows, the table has 152 rows and covers the seeded targets, headline groups and every previous finding. These are adversarial examples and scope tests, not proofs of the general roadmap theorems.

[previous]: packages/OverconvergentAutomorphicForms/reports/PRREVIEW-OverconvergentAutomorphicForms~1.md

| Statement | Instances tried | Computed sides / wrong model | Result, change and provenance |
| --- | --- | --- | --- |
| 0.1 integral algebra, rank/topology | F=ℚ; F=ℚ(√5), p=5 | Ranks 1 and 2. The quadratic integral algebra mod 5 has a repeated root, not two separated embedding factors. | Retain ramified finite-free form.  Carried from [R1][previous]. |
| 0.1 norm and tensor inclusion | Scalar a in degrees 1,2; a=0,−1,2 | Norms a and a²: (0,0), (−1,1), (2,4); base-change determinants give the same pairs. | Retain; no forced positive norm on all global units.  Carried from [R1][previous]. |
| 0.1 unit norm | F=ℚ(√5), ε=(1+√5)/2 | N(ε)=−1, N(ε⁻¹)=−1, product 1; both are units. | Retain both signs.  Carried from [R1][previous]. |
| 0.1 H_r | p=2, u=−1 | u−1=−2: membership in H₁ true, H₂ false; H₀ is all units. | Retain dyadic depth distinction.  Carried from [R1][previous]. |
| 0.2 geometric/arithmetic weight spaces | d=1,2; trivial character | Dimensions (1,2) and (2,3); trivial character evaluates 1 on every unit. | Retain finite components and extra arithmetic factor.  Carried from [R1][previous]. |
| 0.2 inverse norm map | F=ℚ, p=5, w=t=id, x=2 | (x²,N(x)⁻¹)=(4,1/2); evaluation 2, whereas direct norm gives 8. | Retain inverse; source slip listed below.  Carried from [R1][previous]. |
| 0.2 character pullback/composition | x=2,3 in ℤ₅ˣ | κ(6)=6=κ(2)κ(3); trivial pair gives 1, inversion gives 1/6. | Retain.  Carried from [R1][previous]. |
| 0.2 norm-one congruence subgroup | Integral unit norm ±1, congruent 1 modulo N≥4 | Norm ≡1 mod N; −1 differs from 1 by 2, hence excluded. | Retain hypotheses; N=2 would not exclude −1.  Carried from [R1][previous]. |
| 0.3 boundedness and finite characters | Teichmüller character at p=5 | At residue 2, norm of ω(2)−1 is 1; on 1+5ℤ₅ it is 0. The point is still bounded. | Retain principal-subgroup radius, not full-unit supremum.  Carried from [R1][previous]. |
| 0.3 trivial/algebraic radii | κ=1 and κ=x⁵ on H₁ at p=5 | Supremum 0 for trivial; v₅(6⁵−1)=2, so 1/25 for x⁵. Both extend analytically. | Retain positive-radius existence even when supremum is 0.  Carried from [R1][previous]. |
| 0.3 conductor and common stage | Sign character on ℤ₂ˣ | Value at −1 is −1, on 1+4ℤ₂ is 1; stages cannot discard the finite factor. | Retain bounded-family stage hypotheses.  Carried from [R1][previous]. |
| 0.4 finite analytic coefficient | Zero, trivial line, diag(2,3) at p=5 | Ranks 0,1,2; eigenvalues ∅,1,(2,3), not (6,6). | Retain actual representation.  Carried from [R1][previous]. |
| 0.4 tensor | Ranks 2 and 3; characters with values 2,3 | Rank 6; eigenvalue 6, whereas sum has rank 5 and eigenvalues 2,3. Zero tensor has rank 0. | Retain.  Carried from [R1][previous]. |
| 0.4 contragredient/evaluation | Character value 2 | Dual value 1/2; evaluation multiplier 2·1/2=1; double dual value 2. | Retain inverse action.  Carried from [R1][previous]. |
| 0.4 coefficient change | Idempotent diag(1,0), identity and residue coefficient maps | Idempotent remains diag(1,0); image rank 1 before/after; identity sends eigenvalue a to a. | Retain finite projective base change; no integral equalizer assertion follows.  Carried from [R1][previous]. |
| 0.4 stable lattice | V=ℚ₅, lattices ℤ₅ and 5ℤ₅ | Rationalizations both ℚ₅; 1 belongs only to the first lattice. | Retain lattice as additional data.  Carried from [R1][previous]. |
| 0.4 induction Borel condition and left action | Torus, κ(h)=2, f(1)=1 | f(h)=1/2, (h·f)(1)=f(h⁻¹)=2. Forward translation would give 1/2. | Retain distinct function/action conventions.  Carried from [R1][previous]. |
| 0.4 algebraic restriction | SL₂, dominant weight k=1 | Algebraic chart span has basis 1,z and dimension 2; z² is nonzero analytic but outside it. | Retain injection, not equality.  Carried from [R1][previous]. |
| 0.4 normalized positive torus | Torus, algebraic κ(t)=2 | Positive action on chart constants is 1; formula gives 2=2·1. | Retain Weyl-character prefactor.  Carried from [R1][previous]. |
| 0.4 field compact type versus affinoid limit | Torus, A=E⟨T⟩ | Stages/limit A; distance between T^i,T^j is 1 for i≠j. Fieldwise compactoid identity fails. | Retain family/field distinction.  Carried from [R1][previous]. |
| 0.4 radius restriction | One chart, z=ρu with norm ρ<1 | z^j maps to ρ^j u^j; tail norm after degree N is at most norm(ρ)^(N+1)→0. At ρ=1 it is 1. | Retain strictness for complete continuity.  Carried from [R1][previous]. |
| 0.4 distributions and moments | p=3, n=1, point evaluations at 0,9 | Moments on (1,z) are (1,0),(1,9); zeroth moments alone agree. | Retain compatible full moments.  Carried from [R1][previous]. |
| 0.4 distribution dual action | Torus, κ(h)=2 | Function action 2; dual action 1/2; pairing multiplier 1. | Retain opposite semigroup.  Carried from [R1][previous]. |
| 0.4 arbitrary affinoid extension | A=E[ε]/ε² | norm(ε)=1, spectral seminorm 0; both coefficient and A-dual have E-dimension 2, versus reduced dimension 1. | Retain defining Banach norm.  Carried from [R1][previous]. |
| 0.4 norm/presentation independence | Norms max(norm(a),norm(b)) and max(norm(a),5 norm(b)) | On ε values 1 and 5; identity is bounded both ways, not isometric. | Retain topological, not unit-ball, identification.  Carried from [R1][previous]. |
| 0.4 finite-character twist | χ(m)=ζ, ζ³=1≠ζ | Multiplication sends value 1 to ζ⁻¹=ζ²; positive-torus scalar on finite factor remains 1. | Retain extension/conductor premise.  Carried from [R1][previous]. |
| 0.4 induction multiplication | 1⊗z−z⊗1; evaluations at (0,a), a≠0 | Product is z−z=0; separate evaluation gives a≠0. z⊗z² maps to z³. | Retain multiplication, reject tensor isomorphism.  Carried from [R1][previous]. |
| 0.5 Siegel induction carrier | g=1 and g=2 | Opposite-unipotent dimensions 0 and 1; torus line versus power-series coordinate. | Retain genuine analytic thickening.  Carried from [R1][previous]. |
| 0.5 Gauss lattice | On an integer-depth chart with normalized coordinate T, (T^p−T)/p | Integral on T∈ℤₚ, but Gauss norm p>1; at residue in 𝔽_(p²) outside 𝔽_p the value has norm p. | Retain Gauss/all-valued-point lattice.  Carried from [R1][previous]. |
| 0.5 coefficient cocycle order | A=[[1,1],[0,1]], B=[[1,0],[1,1]] | AB=[[2,1],[1,1]], BA=[[1,1],[1,2]], unequal. | Retain prescribed transpose/inverse order.  Carried from [R1][previous]. |
| 0.5 inverse-Weyl dictionary | Torus, κ(h)=2 | BP inverse Borel value 1/2 corresponds to the direct-coordinate character after inversion; double inversion returns 2. | Retain explicit dictionary.  Carried from [R1][previous]. |
| 0.6 distribution multiplication | Additive ℤ₅, a=2,b=3; trivial group | δ₂δ₃ evaluated on x is 5, versus product of moments 6; point group algebra E has unit 1. | Retain convolution.  Carried from [R1][previous]. |
| 0.6 nonabelian convolution | Above A,B, function extracting entry (1,1) | Evaluation on AB is 2; on BA is 1. | Retain noncommutative carrier.  Carried from [R1][previous]. |
| 0.6 coadmissibility | Constant stage algebra E; E² and infinite direct sum | Stage dimensions 2 and ∞; finite-generation holds only for E²; zero stages give zero limit. | Retain finiteness and stage compatibility.  Carried from [R1][previous]. |
| 0.6 analytic vectors/duality | Trivial line and C(ℤₚ,E) | Trivial line remains dimension 1; regular dual has module rank 1, two copies rank 2. | Retain analytic orbit topology and bounded-measure distinction.  Carried from [R1][previous]. |
| 0.6 full character space | Z={1}, ℤ; split T(K)=(Kˣ)^n | Dimensions 0,1; locally ℚₚ-analytic dimension n([K:ℚₚ]+1), giving 4 for n=2,K=ℚₚ. Uniformizer 0 is excluded. | Retain noncompact G_m factors.  Carried from [R1][previous]. |
| 0.6 Mellin | Dirac at 1 and at g | Transforms 1 and δ↦δ(g); δ_gδ_h transforms to δ(g)δ(h)=δ(gh). | Retain compact-surjectivity/noncompact-dense-image distinction.  Carried from [R1][previous]. |
| 0.6 essential coherent duality | A=E[T,T⁻¹]/(T−a)² | Support one point; E-length 2, not length 1. Dual arrow of E²→E goes E→E². | Retain coherent multiplicity and contravariance.  Carried from [R1][previous]. |
| 0.6 finite-slope part | Generator diag(0,2) on E² | Surviving nonzero-eigenvalue subspace has dimension 1; zero summand contributes 0. | Retain finite-slope universal construction.  Carried from [R1][previous]. |
| 0.6 normalized positive Jacquet operator | Trivial line, index q=2,3 | Sums 2,3 divided by q give 1,1; unnormalized values 2,3. | Retain rational normalization, including p=2.  Carried from [R1][previous]. |
| 0.6 Jacquet smooth/algebraic comparison | P=G; GL₂ standard algebraic W and upper N | P=G returns V; W^N=Ee₁, W_N represented by e₂, both dimension 1 but different torus weights. | Retain W^N, not W_N, in algebraic factor.  Carried from [R1][previous]. |
| 0.7 completed unitary coefficients | One double coset, trivial rank-one other-place coefficient | Functions are O_E, completion O_E, rationalization E; zero coefficient gives 0. | Retain actual arithmetic function construction and s>0 premise.  Carried from [R1][previous]. |
| 0.7 Jacquet eigenvariety dimension | n=2, [K:ℚₚ]=1,2 | Predicted dimensions 2 and 4; full torus character dimensions 4 and 6. | Retain compact-weight dimension, not full-character dimension.  Carried from [R1][previous]. |
| 0.7 finite projective faithful chart | A regular, M=A², B=A acting by scalars | End_A(M)=M₂(A); B rank 1, annihilator 0; chart dimension dim A. | Retain arithmetic projectivity/regularity inputs.  Carried from [R1][previous]. |
| 0.7 reducedness route | B=E[ε]/ε² acting faithfully on itself | Faithful action, but ε≠0 and ε²=0. | Retain density plus classical semisimplicity; faithfulness alone insufficient.  Carried from [R1][previous]. |
| 0.7 algebraic accumulation | Weight coordinate residue α∈𝔽_(p²)∖𝔽_p | Every integer has residue in 𝔽_p, so disc over α contains zero integers. | Retain accumulation only near admitted algebraic points.  Carried from [R1][previous]. |
| 0.7 Hecke scaling | Normalizing scalar c_z=2 | Eigenvalue 1 becomes 2, not 1. | Retain explicit weight-dependent normalization.  Carried from [R1][previous]. |
| 1.1 right cocycle/inversion | Above A,B | (AB)⁻¹=[[1,−1],[−1,2]]=B⁻¹A⁻¹; A⁻¹B⁻¹=[[2,−1],[−1,1]]. | Retain reversed inverse order.  Carried from [R1][previous]. |
| 1.1 gauge change | Line frame multiplied by 2 | Section coordinate a becomes a/2; a=1 gives 1/2, and reconstructed section (1/2)(2e)=e. | Retain inverse-coordinate transformation.  Carried from [R1][previous]. |
| 1.1 cocycle identity | Identity element, trivial action | J(1)=1; J(1·1)=1·1=1. Zero matrix would give 0 and is not invertible. | Retain GL-valued factor.  Carried from [R1][previous]. |
| 1.2 coefficient equalizer | Split torsor, trivial coefficients of ranks 0,1,2 | Invariants are 0,A,A², matching descended ranks 0,1,2. | Retain actual two-pullback equalizer.  Carried from [R1][previous]. |
| 1.2 tensor/dual/pullback functoriality | Split torsor with character values 2,3 | Tensor value 6; dual 1/2; identity pullback leaves both. | Retain finite-rank hypotheses; no blanket Banach conclusion.  Carried from [R1][previous]. |
| 1.2 stack versus coarse effectivity | Stabilizer C₂ acting by sign over ℚ₂ | Invariant fibre on coarse point is 0; stack line rank 1. | Retain action-free coarse or stack formulation.  Carried from [R1][previous]. |
| 1.2 integral effectivity | Scalar coboundary 2 at p=5, and scalar 5 | 2 and 1/2 are integral units; 5 is integral but 1/5 is not. | Retain both integral matrix conditions.  Carried from [R1][previous]. |
| 1.3 dense-open/formal effectivity | Trivial line on a smooth disc; formal unit cocycle 1 | Analytic line rank 1 on both opens; formal descent invariants O, rationalization O[1/p]. | Retain smooth-rigid/formal-model hypotheses.  Carried from [R1][previous]. |
| 2.1 admitted Hilbert radii | p=3,m=1; p=2,m=1 | 1/12<1/9; odd endpoint 1/9 needs extra boundary theorem. Dyadic endpoint in the stated range is 1/8. | Retain separate endpoint target.  Carried from [R1][previous]. |
| 2.1 scaled AL and denominator | p=5, ε=1/100; Weyl map at z=0 | Scaled radius 1/20; Weyl denominator z=0 is zero, so affine formula is unavailable there. | Retain domain restriction and scaled map.  Carried from [R1][previous]. |
| 2.2 Hilbert factor | γ=diag(1,2), z arbitrary, κ=id at p=5 | j=2, inverse-character multiplier 1/2. | Retain.  Carried from [R1][previous]. |
| 2.2 fractional action cocycle | γ=[[1,0],[25,1]], z=5 | Denominator 126 and image 5/126; κ=1 gives multiplier 1, not an imposed nontrivial weight. | Retain actual period coordinate.  Carried from [R1][previous]. |
| 2.3 algebraic specialization | Frame change 2, k=1 and k=−1 | Coefficient/frame products (1/2)·2=1 and 2·(1/2)=1. | Retain duals for negative weights.  Carried from [R1][previous]. |
| 2.3 individual embedding weights | k=(1,2), frame scalars (2,3) | Frame multiplier 2·3²=18, not determinant 6. | Retain embeddingwise generic specialization.  Carried from [R1][previous]. |
| 3.1 geometric integral lattice | ℤ₅ and 5ℤ₅ inside ℚ₅ | Both invert to ℚ₅; their integral inclusions differ on 1. | Retain geometric O⁺ and specified frame.  Carried from [R1][previous]. |
| 3.1 rationalization/local denominators | Disjoint opens with values p^(−i) | On open i denominator p^i suffices; there is no finite common exponent over all i. | Retain local/quasi-compact denominator argument.  Carried from [R1][previous]. |
| 3.2 weight pullback | Identity map; trivial weight on a disc | Character values 1 pull back to 1; full sections are K⟨T⟩, containing T≠constant. | Retain coefficient sheaf, not constant sections.  Carried from [R1][previous]. |
| 3.2 integral base change obstruction | C₂ acts by −1 on ℤ₂ | Invariants 0; after mod 2 the action is 1 and invariants 𝔽₂. | Retain separate integral hypotheses.  Carried from [R1][previous]. |
| 3.3 positive-radius colimit | Constant module system A and zero system | Colimits A and 0; maps send 1 to 1. | Retain positive radii and actual transition maps.  Carried from [R1][previous]. |
| 3.3 ordinary versus overconvergent domain | Sequence of positive radii ε_j→0 | Each ε_j>0 while ordinary radius is exactly 0; no ε_j equals 0. | Retain separate ordinary completion theorem.  Carried from [R1][previous]. |
| 3.4 ramified differential lattice | O_p rank d=2 over ℤₚ; free line over O_p⊗O⁺ | O⁺-rank 2, O_p⊗O⁺-rank 1; ordinary Hodge ideal a unit gives quotient 0. | Retain unsplit module and ideal bound.  Carried from [R1][previous]. |
| 4.1 independent presentations | Trivial character; pure polarization w(u)=3 | Trivial multiplier 1; polarization multiplier 3; geometric j=2 multiplier 1/2 for κ=id. | Retain separate equalizers.  Carried from [R1][previous]. |
| 4.1 arithmetic character | F=ℚ, w=t=id, γ=diag(1,2) | w(det γ)/κ(j)=2/2=1. | Retain determinant twist in arithmetic presentation.  Carried from [R1][previous]. |
| 4.2 finite polarization descent | Two-component swap on A² | Invariants {(a,a)}; at p=2 averaging requires 1/2, but equalizer still exists. | Retain torsor descent, not integral averaging.  Carried from [R1][previous]. |
| 4.2 twisted pullback direction | Pullback acts by a=2, twist w=3 | Inverse pullback followed by twist gives 3/2; forward pullback gives 6. | Retain order.  Carried from [R1][previous]. |
| 4.3 pairing comparison | Weil pairing frame multiplied by 2 | Inverse frame changes by 1/2; coordinate and frame product stays 1. | Retain pairing and two-sided integral bounds.  Carried from [R1][previous]. |
| 4.4 polarization classes/transport | F=ℚ; two abstract class summands | One narrow class gives one summand; two give A⊕A with rank 2, not A. Identity transport multiplier 1. | Retain finite class index and actual transports.  Carried from [R1][previous]. |
| 5.1 AIP eigenfunctions | Torus frame t=2, character id | Eigenfunction coordinate 1/2; trivial character gives 1. | Retain inverse-character convention.  Carried from [R1][previous]. |
| 5.1 formal finite character | Primitive finite root ζ | norm(ζ)=norm(ζ⁻¹)=1; disc coordinate alone cannot distinguish ζ and 1. | Retain finite-character factor.  Carried from [R1][previous]. |
| 5.2 structural invariants | Split torsor, p⁻¹ as constant | Rational invariants contain p⁻¹; integral bound is norm(p⁻¹)=p>1, so integral invariants exclude it. | Retain all-valued-point bound.  Carried from [R1][previous]. |
| 5.3 finite-character generator | χ(m)=ζ of order 3 | Frame coordinate ζ⁻¹=ζ², not ζ; identity element value 1. | Retain chosen unit trivialization.  Carried from [R1][previous]. |
| 5.3 integral generator obstruction | Coboundary p versus a unit | p has valuation 1, inverse valuation −1; unit and inverse have valuation 0. | Retain conditional integral freeness.  Carried from [R1][previous]. |
| 5.3 formal/rational comparison | Trivial line over O_L, identity weight map | Formal generator 1 maps to analytic generator 1; lattice O_L, rational space L. | Retain completed specialization assumptions.  Carried from [R1][previous]. |
| 5.4 perfectoid–AIP comparison range | p=5,m=1, ε=1/20 | Comparison bound 1/25 is smaller than 1/20; the broader period range does not imply comparison. | Retain stronger hypothesis.  Carried from [R1][previous]. |
| 5.4 arithmetic AIP parameters | w=t=id on ℤ₅ˣ, x=2 | ν(2)=2, w_AIP(2)=1/2; resulting κ(2)=2. | Retain ν=w and w_AIP=t⁻¹.  Carried from [R1][previous]. |
| 5.5 Frobenius frame map | p=3, algebraic weight 2 | Quotient differential frame scalar 3; square scalar 9; inverse coefficient scalar 1/9. Product 1. | Retain nonidentity frame comparison.  Carried from [R1][previous]. |
| 5.5 restriction composition | Trivial weight and two identity restrictions | 1↦1↦1, equal to composite 1↦1; zero maps to 0. | Retain actual domains and commuting square.  Carried from [R1][previous]. |
| 6.1 cuspidal ideal | Formal disc boundary q=0 | q has constant 0; 1+q constant 1; ideal (q) contains q, (q²) does not. | Retain reduced boundary twist.  Carried from [R1][previous]. |
| 6.1 family Koecher | d=1 punctured disc; d>1 with codim≥2 | q⁻¹ has order −1 and does not extend at a curve cusp; constant 1 extends and is not cuspidal. | Retain degree/codimension/normality hypotheses.  Carried from [R1][previous]. |
| 6.2 boundary vanishing mechanism | Identity contraction; monomial power map in char 2 | Higher direct images of identity are 0; projection onto even monomials sends 1→1, whereas degree-2 trace of 1 is 0. | Retain monomial splitting rather than division by degree.  Carried from [R1][previous]. |
| 6.3 tame correspondence degree | F=ℚ, ideals (1),(2),(4), p=3 and tame prime to 2 | Degrees 1,3,6; normalized constants 1,3/2,6/4. Formula norm+1 would give 2,3,5. | Retain actual degree; source error below.  Carried from [R1][previous]. |
| 6.3 coefficient trace normalization | Degree D, constant 1 | Trace D, normalized value D/N(a); identity a=(1) gives 1. | Retain identity separately, not prime formula at norm 1.  Carried from [R1][previous]. |
| 6.4 wild conjugation | γ=[[1,0],[25,1]], z=5, ϖ=5 | Conjugate lower entry 5; new z=25; denominator 126 on both sides. Unconjugated lower entry gives 626. | Retain conjugation and scaled coordinate.  Carried from [R1][previous]. |
| 6.4 ramified level | e=2,n=1 | Required exponent ne+1=3, versus n+1=2. | Retain ramification factor.  Carried from [R1][previous]. |
| 6.4 normalized wild trace | Residue degree f=1, p=2,3 | Trace of 1 is 2,3; q⁻¹ trace is 1 in both cases. | Retain characteristic-zero division.  Carried from [R1][previous]. |
| 6.4 diamond character | χ(u)=ζ, ζ³=1≠ζ | Inverse-character factor ζ², not ζ. | Retain stated action direction.  Carried from [R1][previous]. |
| 6.6 projective Banach model | Orthonormalizable c₀(A); zero coefficient | Property-(Pr) summand is itself; infinite module is not finite-dimensional; zero yields 0. | Retain Banach projectivity, not finite rank.  Carried from [R1][previous]. |
| 6.6 compact restriction | z↦ρz, norm(ρ)<1 | Truncation-error bound norm(ρ)^(N+1)→0; at norm(ρ)=1 error 1 for all N. | Retain strict radius improvement.  Carried from [R1][previous]. |
| 6.6 field specialization | Free chart A^r, A→k | Tensor chart k^r; rank r, with r=0,1 giving 0,k. | Retain global base-change/cohomology premises.  Carried from [R1][previous]. |
| 6.7 controlling normalization | Split degree 2; totally ramified degree 2 | Split U₁U₂ and ramified U_𝔭² both carry p⁻²; one ramified copy would give p⁻¹. | Retain e_𝔭 exponents.  Carried from [R1][previous]. |
| 6.7 integrality/compactness | Trace q, normalizer q⁻¹; constant full form | qU integral; U(1)=1 rationally. Constant 1 has nonzero boundary and is not in cusp space. | Retain sufficient denominator and cusp compactness hypotheses.  Carried from [R1][previous]. |
| 7.1 torsion-first completion | Continuous function x on ℤₚ | Mod p^m it factors through ℤ/p^m; x itself has no finite discrete quotient. | Retain inverse limit after finite-level torsion colimit.  Carried from [R1][previous]. |
| 7.1 infinite wild level | q₁^p=q, q₂^p=q₁ | Pullback of q₁ equals q₂^p, not q₂. | Retain structural versus AL transitions.  Carried from [R1][previous]. |
| 7.1 nonuniform finite-stage representation | Series Σ_(j≥0)p^j q_j in compatible root charts | Mod p^m only j<m survive, hence some finite level; full series uses unbounded j. | Retain completion after both level colimits.  Carried from [R1][previous]. |
| 7.2 weighted ordinary equalizer | Split Igusa torsor, trivial weight and χ(g)=ζ | Trivial invariants base ring; weighted coordinate ζ⁻¹=ζ². | Retain finite character and base-change hypotheses.  Carried from [R1][previous]. |
| 7.3 analytic completion model | Discrete-base O_L and fraction p⁻¹ | Power-bounded model O_L; p⁻¹ norm p>1 lies only in rationalization. | Retain isometric integral comparison.  Carried from [R1][previous]. |
| 7.3 nondiscrete special fibre | x∈O_Cp with v_p(x)=1/2 | x mod p≠0, but x² mod p=0. | Retain separate nondiscrete model proof; no reduced-special-fibre shortcut.  Carried from [R1][previous]. |
| 7.4 ordinary restriction | Trivial coefficient, constant 1, each level n | Restriction 1 at each level; structural transition preserves 1. | Retain same-level map and independent limit comparison.  Carried from [R1][previous]. |
| 7.4 trace compatibility | Two-sheet split map over ℚ₂ | Trace(1,1)=2; normalized trace 1; integral trace before division still 2. | Retain integral/rational distinction.  Carried from [R1][previous]. |
| 7.5 completed cusp ideal | q₂^p=q₁ in ordinary boundary tower | q₂ has constant 0 but is not a multiple of q₁ in the integral series ring. | Retain completed union of level cusp ideals.  Carried from [R1][previous]. |
| 7.5 cusp-unit stabilizer | F=ℚ(√5), η=9+4√5 | N(η)=81−80=1; mod 3, η=s with s²=−1, s⁴=1. Invariants of a line with multiplier s satisfy (s−1)a=0, hence a=0 over 𝔽₉, versus trivial-line invariants 𝔽₉. | Retain cusp-unit action at minimal cusp.  Carried from [R1][previous]. |
| 7.5 boundary limits/completion | Same root series Σp^j q_j; empty boundary | Each torsion truncation has finite level; full series need not. Empty boundary ideal is O and cusp condition imposes no vanishing. | Retain proper formal-function and transition hypotheses.  Carried from [R1][previous]. |
| 8.1 row identity | After basis reversal: symmetric Z=[[0,1],[1,0]], C=diag(3,0), A=I | I+ZC=[[1,0],[3,1]], I+CZ=[[1,3],[0,1]], unequal. `[I,Z]γ` factors using I+ZC. | Retain row order; no commutation.  Carried from [R1][previous]. |
| 8.1 symplectic basis transport | Reversal W in rank 2; rank 0 | W²=I, so conjugating twice returns Z; empty determinant 1. Zero W in rank 2 has determinant 0. | Retain marked invertible basis change.  Carried from [R1][previous]. |
| 8.2 action-neighbourhood product | p=3, norm(E)=norm(C)=1/3 | norm(EC)≤1/9; p=2,z=1,c=2 gives J=3, a unit. | Retain two-sided norm margin and denominator units.  Carried from [R1][previous]. |
| 8.2 canonical range | g=1,p=3, c_g=3/4; n=1,2 | w=7/8 satisfies 3/4<w≤1; at n=2, w=15/8 satisfies 7/4<w≤2. w=7/8 fails n=2 lower bound. | Retain corrected n−1 and strictness.  Carried from [R1][previous]. |
| 8.2 small primes/full action | g=1,p=2; AL at Z=0 | p>2g is false; AL sends [1,0] to [0,1], outside first graph. | Retain numerical theorem's hypothesis and second chart.  Carried from [R1][previous]. |
| 8.3 scalar determinant coefficient | J=diag(2,3), weight m=1,−1 | det J=6; inverse coordinate 1/6 for m=1 and 6 for m=−1. | Retain dual powers.  Carried from [R1][previous]. |
| 8.3 quotient versus dual/similitude | γ=diag(I,uI) | Quotient J=I acts as 1; dual via pairing includes u⁻¹. For u=2 values 1 and 1/2. | Retain actual quotient frame and twist.  Carried from [R1][previous]. |
| 8.4 determinant eigenline | J=diag(2,3), f(I)=1 | Eigenvalue det J=6; evaluation at I is 1. Torus has dimension-one line; g=2 analytic chart has 1,z,z²,… . | Retain eigenline rather than whole induced space.  Carried from [R1][previous]. |
| 8.4 finite algebraic injection | Dominant weight k=1 in rank-one unipotent chart | Polynomial subspace dimension 2; z² adds a nonzero analytic vector outside it. | Retain injection, not surjectivity.  Carried from [R1][previous]. |
| 8.5 Atkin–Lehner block map | g=1,Z=3,q=2 | [1,3][[0,1],[−2,0]]=[−6,1]; second graph coordinate −6. At Z=0 gives [0,1]. | Retain second chart with no inverse of Z.  Carried from [R1][previous]. |
| 8.5 domain/degenerate signs | q=0; characteristic 2 | q=0 gives singular block matrix; in char 2, −q=q. | Retain invertibility hypothesis; block identity still has correct characteristic-2 sign.  Carried from [R1][previous]. |
| 8.6 finite coefficients/twists | Ranks 0,1,2; Tate twist j=1 | Descended ranks 0,1,2; cyclotomic multiplier ε instead of 1 when ε≠1. | Retain quotient torsor and μ-cyclotomic twist.  Carried from [R1][previous]. |
| 8.6 central quotient | Representation trivial on quotient kernel versus kernel character value 2 | Trivial kernel acts 1 and factors; value 2 cannot factor through kernel sent to identity. | Retain kernel-triviality condition and supplied rank quotient.  Carried from [R1][previous]. |
| 8.6 refinement functoriality | Identity and composite marked refinements | Identity pullback multiplier 1; successive character multipliers a,b give ab, equal to composite. | Retain common refinement and actual pullbacks.  Carried from [R1][previous]. |
| 8.7 arbitrary-affinoid family | M=T,A=F[ε]/ε² | Coefficient and distribution stages A, F-dimension 2; ε remains nonzero. Reduced model has dimension 1. | Retain nonreduced extension.  Carried from [R1][previous]. |
| 8.7 Weyl/root correction | GL₂,M=T,ν=0,w=1 and s | κ=−2ρ and 0 respectively; swapping w₀,M=1 for s reverses these values. | Retain Levi Weyl element.  Carried from [R1][previous]. |
| 8.7 distribution shift | Same GL₂ noncentral cocharacter | With ρ_nc=ρ, shifted weights are 0 and 2ρ; omitting shift gives −2ρ and 0. | Retain κ+2ρ_nc and dual twist.  Carried from [R1][previous]. |
| 8.7 level/radius condition | m′=1; (m,n)=(1,1),(0,1) | m−n=0 is allowed; −1 is not. Natural subtraction would incorrectly turn −1 into 0. | Retain ordered inequality, not truncated subtraction.  Carried from [R1][previous]. |
| 8.7 finite-character twist | b=3,m′=4,n=2 | min(m′,n)=2, so 3≤2 is false; after n=3 it is true. | Retain both conductor bounds.  Carried from [R1][previous]. |
| 8.7 projective Banach/derived comparison | Trivializing point over A; all cohomological degrees | H⁰=A on both sites, H^i=0 for i>0; zero coefficient gives 0 in every degree. | Retain finite-flat cover and finite quasi-Stein-union premises for general theorem.  Carried from [R1][previous]. |

## Not verifiable

- No source needed for the changed passages was inaccessible. The legal cached texts sufficed; no missing-reference request was created and no manifest was edited.
- Untouched source and mathematical checks are inherited from [R1][previous], as required for this incremental review, rather than represented as fresh verification. General analytic-family descent and completion results remain roadmap proof obligations; the declaration-free Lean file establishes only that its acceptance-test form elaborates at the pins.

## Source issues

The BHW issues below were reconfirmed when reading the affected weight input. The five AIP-cusp/DRW entries are carried from [R1][previous]; their passages and the roadmap's treatment are unchanged. They are source errata, not unresolved findings against this repair.

- **Misprint** in bhw at Definition 6.1, printed p.1756 (`bhw line 1849`): the source says the weight map is induced by squaring and the direct norm; it should be squaring and inverse norm to obtain the displayed character; affects a stated result.
- **Error** in bhw at §6.1 following Definition 6.2, printed p.1757 (`bhw line 1865`): the source says bounded weights have full-unit supremum of κ−1 strictly below one; it should be measured on an appropriate principal subgroup, retaining finite-character components; affects a stated result.
- **Gap** in bhw at Proposition 6.3, printed p.1757 (`bhw line 1878`): the source says the specified radius is proportional to the character-deviation supremum; it should be supplemented by positive-radius existence when that supremum is zero, including the trivial character; affects the proof.
- **Error** in aip-cusp at Lemma 3.25(2), manuscript p.22 (`aip-cusp line 905`): the source says the prime-to-p cyclic ideal correspondence always has degree norm plus one; it should be the projective-line cardinality over the ideal quotient, specializing to norm plus one for prime ideals; affects a stated result.
- **Error** in drw at Remark 3.1.7, p.22 (`drw line 1048`): the source says integral values at rational chart points equal the Gauss unit ball; it should be a Gauss bound, equivalently a bound on all valued points of the analytic chart; affects a stated result.
- **Misprint** in drw at Remark 3.1.12, p.23 (`drw line 1100`): the source says the multiplicative character takes value zero on the unipotent factor; it should be value one; affects a stated result.
- **Misprint** in drw at Corollary 3.6.13, p.47 (`drw line 2112`): the source says the lower bound on w omits the level contribution; it should be c_g+n−1<w, as required by Proposition 3.6.12; affects a stated result.
- **Gap** in drw at the proof of Corollary 3.6.13, p.47 (`drw line 2121`): the source says a pointwise strict Hodge bound supplies one rational bound for the entire domain; it should be supplemented by a uniform margin or a compactness argument giving that single bound; affects the proof.
