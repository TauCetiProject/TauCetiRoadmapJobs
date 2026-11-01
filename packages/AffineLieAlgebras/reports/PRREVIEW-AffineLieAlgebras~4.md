# Review of AffineLieAlgebras (pull request #1201 at 6bd3f7b)

**Verdict:** needs changes

## R01 (P1) — Fixed PBW length does not give a nilpotent action

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:468`: “with `a_M` acting nilpotently on each finite PBW-length piece.”

**Claim:** The bounded-length pieces of the congruence-induced module are nilpotent representations. Even length one has no uniform nilpotence bound. The local, vector-dependent statement used in A3.2 is different.

**Witness:** In `Q₁(sl₂)`, let `v` be cyclic. For every `r≥1`, `h₁ʳe₋ᵣv=2ʳe₀v≠0` by `[h₁,eₙ]=2eₙ₊₁` and PBW. All `e₋ᵣv` have length one; no power of `h₁` kills that piece.

**Exact repair:** Replace the example by local nilpotence with finite-dimensional nilpotent orbits: every vector of `Q_M` lies in an `a_M`-stable finite-dimensional subspace factoring through a finite jet, and sufficiently long products of `a_M` kill that subspace. Do not claim a nilpotence bound depending only on PBW length. Add the displayed family as a negative-control Check. This retains A3.2's rational integration theorem and its vector-dependent proof route.

**Retest:** For `M=1`, take `W_r=span(v,x_nv : x∈sl₂, −r≤n≤0)`. It has dimension `1+3(r+1)`, is `a₁`-stable, and every product of `r+1` positive currents kills it: brackets raise the mode index, and any central term is a scalar multiple of `v`. In particular `h₁ʳe₋ᵣv=2ʳe₀v` but `h₁ʳ⁺¹e₋ᵣv=0`. This verifies the repaired statement on the refuting family.

## R02 (P3) — Record the cited sources

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:1156`, References; `TauCetiRoadmap/AffineLieAlgebras/sources.toml` is absent.

**Claim:** The source inventory should record the provenance and verification status of each cited work.

**Witness:** References contains eleven works/design references; the folder has only `README.md`, `Suggested.lean`, and `metadata.toml`. Thus there are zero source records, including for the readable Whitehead and reconstruction sources.

**Exact repair:** Add one `tauceti-roadmap-sources/v1` record per work, reusing the IDs in the source audit below, with the service's provenance and the cited version/locators. Record the Kac original as uncertified, and do not label the Zulip application shell as the message. The mathematical locator repairs from previous R03 are present; this is its remaining inventory issue. No mathematical restriction is needed: the reconstruction test still gives coefficients `mul x, id, 0,…`, and the Sugawara tests remain `c(sl₂,1)=1` and `c(E₈,1)=8`.

## R03 (P3) — Correct the residue-cocycle declaration locator

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:81`: “`loopAlgebra.twoCocycleOfBilinear`”.

**Claim:** This is the name of the pinned polynomial-loop cocycle declaration.

**Witness:** `Mathlib/Algebra/Lie/Loop.lean:183` declares `LieAlgebra.LoopAlgebra.twoCocycleOfBilinear`. A scratch `#check` succeeds for that spelling and fails with “Unknown constant” for `LieAlgebra.loopAlgebra.twoCocycleOfBilinear`.

**Exact repair:** Use `LieAlgebra.LoopAlgebra.twoCocycleOfBilinear` (capital `L` in the namespace). This is a locator typo, not an absent mathematical supplier. Retesting the correct declaration with `Φ=−κ₀` retains `c(e₁,f₋₁)=1` and `c(h₁,h₋₁)=2`; neither the carrier nor its sign convention changes.

## Verified sound

🤖 Independent AI review. I read both complete target files: **1,185 README lines and 248 Lean lines**. This was a full review of the folder, including unchanged passages. Finite calculations below are adversarial controls, not proofs of the general targets. No pull-request file was changed.

**Previous findings, checked before the full pass.**

| Previous finding | Passage at this head | Assessment |
| --- | --- | --- |
| R01, duplicate Laurent-current construction | README:32 “vector-valued Laurent currents, their convolution Lie bracket, polynomial-loop embedding”; :155 “with the L3 carrier … by a coefficient-preserving, bracket-preserving linear homeomorphism” | Repaired. FormalLaurentPuiseux L3 is consumed explicitly; the new arbitrary-dimensional completion/converse remains here. Both brackets give `[e t,f t⁻¹]=h`. |
| R02, missing generic reconstruction signature | Lean:137 `theorem formalVertex_reconstruction`; README:682 “Require every submodule containing `vac` and stable under every coefficient … to be all of `V`” | Repaired. The native field carrier, covariance, locality, generation, vacuum and translation all occur in the elaborated signature. The `ℚ[x]` test and zero-vacuum case pass. |
| R03, locators and source inventory | README:726 “Theorem 2.2.2, pp. 44–50”; :730 “equation (3.3-1) and Lemma 3.3.2, pp. 76–77”; :734 “Corollary 3.2.2, p. 74” | Partly repaired. These locators and the A1.2/A2.1 derivations are now present and supported. The inventory remains absent: new R02. |

No readable repair report marked a previous finding “not actionable in this package”; no settled finding is re-raised.

**Gate, build, signatures and padding.** The checked head is `6bd3f7b96b9765ef8719a9721c2beb006e11c1a7`. The supplied push gate reports every counter zero and `OK`, including build, dependency, outside-folder, stray-file, import, sorry-data and option checks. The outside-folder diff is empty and the worktree is clean. An independent direct `lake env lean` run succeeded with exactly **seven declaration-uses-sorry warnings**, no errors and no other warnings. The single import is `Mathlib`; no Tau Ceti object-file build was needed.

I also elaborated a scratch copy with **`#check @name` for all 13 declarations** and compared every type to its README statement. The two Whitehead results retain both finite-dimensional hypotheses and semisimplicity; smooth/continuous retains the additive topological-group and neighbourhood-basis assumptions; all vertex declarations retain the characteristic-zero field. Reconstruction's locality bound depends on the pair of fields, not on the vector; generation is over all invariant submodules. **Zero dropped binders or generality discrepancies were found; nothing was changed.**

Each of the **seven sorried theorems** was tried with closing alternatives `simp`, `rfl`, and `infer_instance` on a scratch copy. None closed. Object searches found no pinned single lemma giving any of these seven results by `exact`; the native cochain square-zero and field coefficient lemmas do not prove Whitehead or vertex reconstruction. No padding finding is raised.

The required independent dependency command returned:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Every Needs line and supplier paragraph was read. The internal construction order is currents/cohomology → algebraic extension/quotient → smooth modules/integration → completion → module/field calculus → vertex/deformation → free fields/jets → centers. A8.2 has independent prerequisites from A8.1. There are no declared supplier gaps. References to GeometricRepresentationCategories and NoncompactQuantumSymmetry are downstream contracts, not consumed prerequisites.

**Seeded source audit.** The seed repeats “API” without identifying occurrences. I therefore inspected **all 13 API blocks and all five named paragraphs**, an 18-target superset of the 15 seed entries. No locator is flagged unverified in the README. These are source-service extractions, with printed pages checked against the cited numbering; they are not source files added to the repository.

| Target and README line | Text inspected at its locator | Result |
| --- | --- | --- |
| API A1.1, :165 | FormalLaurentPuiseux L3, README:167–192; Frenkel §1.3.1 | The vector-valued bracket and finite-dimensional comparison are supplied; the arbitrary-dimensional inverse-limit argument is explicit local work. |
| API A1.2, :204 | `frenkel-loop` line 1412, Lemma 1.3.2/(1.3-3), p.28; pinned cochains | Residue cocycle supported. Joint-continuity and restricted differential claims now give their direct derivations. |
| Whitehead, :232 | `weibel` lines 985–1023, Corollaries 7.8.10/7.8.12, pp.245–246 | Both finite-dimensional characteristic-zero vanishings supported; complex specialization agrees. |
| API A2.1, :313 | `frenkel-loop` lines 1418–1437, §1.3.6/(1.3-4), p.29 | Perfectness/splitting follow from the displayed bracket; arbitrary discrete kernels remain an explicitly owned A1.3 extension. |
| API A2.4, :389 | `frenkel-loop` lines 1622–1640, §2.1.2, p.34; pinned PBW | Central quotient and left-ideal completion supported; module quotients are not falsely treated as algebras. |
| API A4.1, :482 | Same §2.1.2, p.34 | Completion and smooth-module comparison supported; the README spells out multiplication and right-shift estimates. |
| API A5.1, :549 | Same §2.1.2; pinned ModuleCat change of rings | Affine case supported; generic extension has the necessary right-multiplication hypothesis for stability/coreflection. |
| API A6.1, :695 | `kac-vertex` lines 155–191, 920–939, 1453–1483; `bakalov-kac` lines 118–165 | Covariance, reconstruction, Borcherds, skew symmetry and derivative consequences supported. README uses the correct product-exponent parity, not the misprint in (4.33). |
| API A6.4, :802 | `kac-vertex` lines 938–939, 1309–1325, (3.24), Proposition 4.5/Theorem 4.1(a), pp.18,26 | Scalar weight zero and the negative-degree guard give alternation; the zero-mode commutator gives Leibniz. |
| Heisenberg paragraph, :831 | `frenkel-loop` lines 7432–7457, §6.2.1/(6.2-1), p.172; Kac Example 1.3 | Oscillator/Fock construction agrees. Arbitrary symmetric B, including zero, uses the same explicit contraction construction. |
| Heisenberg API, :840 | Same source passage | Central factor, mode factor and translation signs agree. |
| Beta-gamma paragraph, :859 | `frenkel-loop` lines 6096–6110, 6217–6247, §§5.3.3/5.4.1, pp.139,142–143 | Gamma's mode shift and the two vacuum annihilation thresholds match. |
| Beta-gamma API, :867 | Same passages and §5.5.1's ordered contractions | Opposite ordered poles have coefficients +1 and −1; gamma zero modes are creators. |
| Big-cell/anomaly paragraph, :888 | `frenkel-loop` lines 5929–5964, 6501–6558, 7030–7080, §5.2, Lemma 5.5.2, Theorem 5.6.8 | Polynomial vector fields, correction and local anomaly supported; the source sign error is not reproduced. |
| Big-cell/anomaly API, :896 | Same theorem/proof, pp.136,150,160–161 | Double contractions give the obstruction; resolution and convergence work is explicitly owned here. |
| Wakimoto API, :920 | `frenkel-loop` lines 7400–7518, 8543–8611, Theorems 6.1.6/6.2.1, Proposition 7.1.1, Lemma 7.1.2 | All-level homomorphism, filtered injectivity and critical Cartan-factor inclusion supported. Dominance suffices despite the source's erroneous generic point-injectivity assertion. |
| Critical screenings paragraph, :940 | `frenkel-loop` lines 9304–9350, (7.3-11)–(7.3-14), pp.216–217; FormalConnectionsOpers F7.5 | Localized targets, transposed Cartan factors and comparison with independently constructed classical screenings match. |
| Screenings API, :948 | Same passages, Propositions 7.3.5/7.3.6, p.217 | Intertwining and kernel containment supported; no unwarranted equality with the entire Wakimoto image. |

I additionally verified A6.2's repaired locators: `frenkel-loop` lines 2367–2382 (Theorem 2.2.2), 2915–2942 and 3095–3100 (Sugawara), 3433–3438 (central critical modes), and 3507–3536 (vacuum center). Reconstruction's nonzero-vacuum source hypothesis causes no overclaim: for zero vacuum, the zero submodule is invariant and generation forces V=0. The negative-exponent recurrence then handles creation over characteristic zero.

All **eleven cited works/design references** were fetched or attempted through the source service, retaining previous IDs: `weibel`, `frenkel-loop`, `frenkel-wakimoto` (math/0210029v2), `frenkel-houches`, `kac-vertex` (1512.00821v2), `bakalov-kac` (math/0402315v3), `kac-laplace`, `mathlib-25822`, `mathlib-29764`, `virasoro-project`, `virasoro-zulip`. The two inaccessible texts are recorded below. The public design pages were read as design evidence only: `mathlib-25822` line 268, `mathlib-29764` line 215, `virasoro-project` lines 294–320. No claims of implementation were inferred from those pages.

**Pinned-library audit.** Mathlib is pinned at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Object searches and opened declarations included these 13 file groups:

| Pinned file and line | Contract actually read |
| --- | --- |
| `Mathlib/Algebra/Lie/Loop.lean:110,127,183` | `toFinsupp`, `residuePairing`, `twoCocycleOfBilinear`: second-mode coefficient n, hence Φ=−κ. Correct namespace in R03. |
| `Mathlib/Algebra/Lie/Cochain.lean:101,118,123,143,156` | `d₁₂`, its trivial-action value, `d₂₃`, square-zero, and `twoCocycle`; no Whitehead theorem. |
| `Mathlib/Algebra/Lie/Extension.lean:135,243,395,427,439` | Cocycle carrier/extensions, section cocycle, section-difference cochain and its coboundary; these contain no topology. |
| `Mathlib/Algebra/Lie/CartanCriterion.lean:256` | `HasTrivialRadical.instIsKilling`, with finite-dimensional Cartan-criterion hypotheses. |
| `TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:110,259` | `TauCeti.exists_isCompl_of_isKilling`, characteristic zero, finite-dimensional Killing Lie algebra and finite-dimensional module. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Injective.lean:201,222`; `PBW/Embedding.lean:53` | `pbwAssociatedGradedEquiv` and `ι_injective`, requiring a free underlying module. |
| `Mathlib/Algebra/Vertex/HVertexOperator.lean:47,65,73,89` | Native carrier `V →ₗ[R] HahnModule Γ R W`, coefficient map, PWO support, `of_coeff`. It supplies lower truncation for Γ=ℤ; it supplies no vacuum, covariance, locality or grading. |
| `Mathlib/Algebra/Category/ModuleCat/ChangeOfRings.lean:519,530,658` | `coextendScalars`, linear-map carrier, `restrictCoextendScalarsAdj`; the continuous submodule remains additional work. |
| `Mathlib/CategoryTheory/Preadditive/Injective/Basic.lean:334` | `EnoughInjectives.of_adjunction` requires preservation and reflection of monomorphisms; A5.2 supplies both. |
| `Mathlib/Algebra/Homology/DerivedCategory/Ext/EnoughInjectives.lean:125` | `hasExt_of_enoughInjectives` with `LocallySmall` and the chosen Hom universe. |
| `TauCeti/Algebra/AlgebraicGroup/SpecialLinear/Basic.lean:380,445` | `pointsMulEquiv`, `pointsMulEquiv_mapValue`: actual determinant-one matrices and coefficient-map naturality. |
| `TauCeti/Algebra/AlgebraicGroup/GeneralLinear/Coordinate/HopfAlgebra.lean:491` | `genericMatrix` is defined here and imported into the cited SpecialLinear module. |
| `TauCeti/Algebra/Lie/Heisenberg.lean:112`; `GeneralLinear/Fock.lean:23` | The existing Heisenberg algebra is three-dimensional; existing Clifford Fock space is fermionic. Neither duplicates the all-mode bosonic Fock construction. |

The smooth-module definitions use actual module actions and open annihilators. The vertex structures bundle native data with explicit equations; they contain no empty Prop-valued proxy for an unavailable condition. The redundant truncation axiom does not introduce a surrogate carrier or make the headlines tautological.

**Ownership and supplier resolution.** I used the roadmap `grep`, `show` and `resolve` services, the supplied open-head checkouts, main and board packages, then checked relevant hits directly. The resolver reported no missing roadmap references; its inability to check pinned libraries was covered by the local audit above. Ownership against the supplied open work was checked. No retained declaration was found with the same fully qualified name in a different roadmap. Generic tropical vertex Lie algebras, geometric Wakimoto sheaves and continuous group coinduction are different objects from the constructions here.

| Owner and location read | Resolution |
| --- | --- |
| Main `TauCetiRoadmap/AffineLieAlgebras/README.md:81,491` and its A1–A8 sections | This is the established affine programme. It is retained, not replaced by a route-specific plan; the former lattice extension is absent. |
| Main `TauCetiRoadmap/FormalLaurentPuiseux/README.md:70–193`, L1–L3 | Scalar topology/calculus, anti-composition, arbitrary-L coefficient bracket and finite-dimensional tensor comparison. A1.1 now imports these and owns its arbitrary-dimensional completion/converse. |
| Open-head `TauCetiRoadmap/FormalConnectionsOpers/README.md:875–938`, F3.1–F3.2 | Native Hopf loop/congruence groups, exp/log, BCH/finite jets, current Lie comparison. Rational module integration remains A3's theorem. |
| Same README:1383–1538, F4.3 | Finite rational connected-group versus Lie invariants, Chevalley adapter and principal/Kostant data. Application to symmetric powers is degreewise; no arbitrary discontinuous representation is substituted. |
| Same README:1634–1800, F5; :2181–2255, F7.5 | Oper functions, coordinate action, Miura signs, charge modules, screenings and classical mode completion. A8 owns comparison with its general vertex-mode construction. |
| Same README:425–438 and :2085–2135 | FCO uses the composition group of parameters and right pullback. ALA uses the opposite parameter multiplication through coefficient-algebra automorphisms. Its `φ_(στ)=φ_τ∘φ_σ` converts the actions correctly. The Hamiltonian/gauge signs also agree. |
| Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,405,567,931` | Layers 1,3,5,7 provide finite roots/Cartan, PBW/induction, complete reducibility and Harish–Chandra/Chevalley theory. |
| Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:320–409` | Finite classification and numbered integral data; B/C are transposes/duals, not an unmarked equality. |
| Main `TauCetiRoadmap/ReductiveGroups/README.md:627–689`, 7C | Actual opposite Borels, root groups and ordered big-cell coordinates. Its open revision is not treated as a substitute for main. |
| Main `TauCetiRoadmap/GeometricRepresentationCategories/README.md:18–145` | Consumes affine smooth categories, central quotients and deformation; owns coherent actions and categorical transport. No reverse input. |
| Open-head `TauCetiRoadmap/NoncompactQuantumSymmetry/README.md:453–469`, P.4 | Explicitly extends the complex Whitehead results to characteristic-zero fields. |
| Open-head `TauCetiRoadmap/KacMoody/README.md:436–469,673–695` | Loop realization consumes ALA's polynomial central extension. Its general contravariant theory is distinct from the established affine completed HC/determinant application. Adding a reverse dependency would create a cycle. |

FormalLaurentPuiseux and GeometricRepresentationCategories on main were also read as shape examples. The target has the requested summary, ownership, conventions, supplier contracts, build order, eight layers, examples/dependencies, downstream consumers and references. APIs and Checks were read together with their definitions. R01 is a false example, not a missing theorem signature. No copied source passage, computational algorithm, sorry'd data, option override, good-prime restriction or outside-folder edit was found. Mathematical construction routes remain owned locally or attached to named suppliers; missing carriers are not pushed to Mathlib.

**Headline inventory.** The seven stated theorems are the two Whitehead lemmas, smooth iff continuous, generic reconstruction, Borcherds, and the alternating/Leibniz laws for the weight-one Lie algebra. The deep unstated programme comprises continuous H²/universality; polynomial/formal and smooth/completed module equivalences; rational integration; affine vacuum reconstruction/Sugawara; critical deformation; free-field injectivity, screening comparison and invariant-jet strictness; vacuum and completed center theorems; and Feigin–Frenkel coordinate, Poisson and loop compatibility. The docstring names the unavailable A1–A8 endpoint families and their missing topological-current, completed-level, vacuum/free-field and oper carriers. The A7 prerequisites are developed as constructions toward the stated center endpoints. I found no additional statable headline missing at the pins, and no weakened substitute for an unavailable affine theorem.

**Adversarial values.** The following **166 rows** cover the sampled targets, headline theorems, definitions and conventions, and every finding. The earlier review's test instances were re-evaluated against this head, with reconstruction and the new nilpotence counterexample added. “Pass” means the computed test does not refute the target, not that a finite test proves it. Characteristic-p and zero-ring inputs are excluded by the standing characteristic-zero field where relevant; the generic ring adapter separately admits them. For general constructions, the row tests the displayed law on an explicit instance while the source/supplier audit checks the stated proof inputs.

| Statement/definition/convention | Instances tried | Computed values on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| A1.1 algebraic tensor versus series | L=0; L=𝕜e | 0↔0; t⁻¹e has coefficient e at −1 and 0 elsewhere in both models | Pass; L3 is now explicitly consumed | None |
| A1.1 coefficient extensionality | e t+f t² versus e t+2f t² | coeff₂=f versus 2f; difference coefficient=f≠0 | Pass | None |
| A1.1 convolution and Lie laws | sl₂, e t,f t⁻¹,h | [e t,f t⁻¹]=h; Jacobi triple gives 0+2h−2h=0 | Pass; comparison uses the supplied L3 bracket | None |
| A1.1 filtration | M=1,N=−1 | order([e t,f t⁻¹])=0=M+N; not ≥1 | Pass | None |
| A1.1 density | Σₙ≥₀e tⁿ, truncation at r | first r coefficients agree; error order r; polynomial tail is nonzero | Pass | None |
| A1.1 completeness iff finite dimension | L=⊕ₙ𝕜eₙ, sᵣ=Σₙ<ᵣeₙtⁿ | error order r; limit has coefficient span of infinite dimension, tensor coefficient span finite | Pass; converse remains owned here | None |
| A1.1 basis independence | basis e versus 2e | t e=(t/2)(2e); coefficients and order 1 agree | Pass; supplied L3 finite-dimensional comparison | None |
| A1.2 continuous cochain d² | sl₂ trivial coefficients, f(h)=−1,f(e)=f(f′)=0 | d f(e,f′)=1; d² f(h,e,f′)=−2+2=0 | Pass | None |
| A1.2 cohomology functoriality | identity and zero coefficient maps on c | id(c)(e,f′)=1; zero(c)(e,f′)=0; compositions have same values | Pass | None |
| A1.2 joint continuity | cκ; neighbourhood a₀; fixed f t⁻¹ | cκ(a₀,a₀)=0; cκ(e t,f t⁻¹)=1, cκ(e t²,f t⁻¹)=0 | Pass; separate continuity is also necessary | None |
| A1.2 residue sign | sl₂ h₁,h₋₁ and e₁,f₋₁ | −Res(t d(t⁻¹))·2=2; reversed −2; e/f value 1 | Pass; native Φ=−κ | None |
| A1.2 wrong residue model | h₀,h₋₁ | Res(1·t⁻¹dt)·2=2 in both orders, rather than negatives | Excluded | None |
| A1.2 coordinate invariance | φ=2t, e t,f t⁻¹ | −Res(2t d((2t)⁻¹))=1=original cocycle | Pass | None |
| A1.2 Whitehead one | sl₂ adjoint, ad h | f(e)=2e=[e,−h], f(f′)=−2f′=[f′,−h] | Pass | None |
| A1.2 Whitehead two | sl₂ trivial coefficients c(e,f′)=1 | f(h)=−1 gives −f(h)=1; other independent pairs 0=0 | Pass | None |
| A1.2 Whitehead hypothesis controls | abelian ℂ²; L=0 or M=0 | abelian c(e₁,e₂)=1 but every d f=0; zero cases H¹=H²=0 | Pass, abelian control excluded | None |
| A1.3 class detection | sl₂ h₁,h₋₁ | residue cocycle=2, every coboundary=−f([h,h])=0 | Pass | None |
| A1.3 semisimple product version | sl₂×sl₂ | independent values (2,0),(0,2); class-space dimension 2 | Pass | None |
| A1.3 simplicity control | abelian one-dimensional currents, 1,t | coefficient cocycle=1; residue cocycle=0; coboundaries=0 | Pass | None |
| A1.3 arbitrary discrete kernel | Z=0 and Z=⊕ⱼℂzⱼ | class of cκ⊗zⱼ takes 2zⱼ on h₁,h₋₁; Z=0 gives 0 | Pass; continuous normalizing coboundary remains owned target | None |
| A1 example formal residue | Σₙ≥₀e tⁿ against f t⁻¹ | only degree 1 contributes: 1=1 | Pass | None |
| A2.1 cocycle extension exactness | sl₂; κ=0 and κ₀ | projection([e₁,f₋₁])=h₀ in both; kernel is ℂK; central terms 0 and K | Pass | None |
| A2.1 perfectness | κ₀ versus 0 | [e₁,f₋₁]−[e₀,f₀]=K versus 0 | Pass | None |
| A2.1 section change | section cochain f(h₀)=1 | d f(e₀,f₀)=−1; old central coefficient 0 becomes −1 | Pass | None |
| A2.1 positive split | m,n≥0, m+n=0 | m=n=0, so mκ=0 | Pass | None |
| A2.1 universal extension | nonzero κ and Z=0; central rescaling by 2 | unique map to current quotient kills K; scale-2 cocycle sends K to 2K′ | Pass; κ=0 excluded from universality | None |
| A2.2 Killing normalization | sl₂ and sl₃ | 8=2·2·2 on h,h; Killing=6tr for sl₃, h∨=3 | Pass | None |
| A2.2 level rescaling | κ′=2κ, κ(e,f)=1 | image([e₁,f₋₁])=h₀+2K′=[image e₁,image f₋₁] | Pass; inverse convention would give 1/2 versus 2 | None |
| A2.2 central-character transport | K′=1, λ=2; a=0 | pulled-back K=2; zero scalar kills central cocycle but retains currents | Pass | None |
| A2.3 loop lift sign | diag(t,t⁻¹), eₙ,f₋ₙ | h₀+(n+2)kK on both sides; wrong sign gives h₀+(n−2)kK | Pass | None |
| A2.3 constant loop | constant g | g⁻¹dg=0, central correction 0; lift=Ad_g | Pass | None |
| A2.3 composition/Maurer–Cartan | diag(t,t⁻¹) squared | h₀ shift 2k+2k=4k; g⁻¹dg for square=2h dt/t gives 4k | Pass | None |
| A2.3 coordinate group convention | φσ=2t, φτ=t+t² | φστ=2t+4t²; wrong order gives 2t+2t² | Pass | None |
| A2.4 level quotient | k=0 and k=1 | K_standard=0 and 1; both retain e₀≠0, [e₁,f₋₁]=h₀+k | Pass | None |
| A2.4 Q₁ and transitions | sl₂ cyclic v; Q₂→Q₁ | h₀v≠0, h₁v=0 in Q₁; e₁v in Q₂ maps to 0; v maps to v | Pass | None |
| A2.4 left ideal not two-sided | e_N f₋N v in Q_N | equals (h₀+Nk)v≠0, although e_N v=0 | Pass | None |
| A2.4 right-shift estimate | b=f₋₁,N=1 | M=2 gives [e₂,f₋₁]=h₁∈a₁; M=1 gives h₀+k∉I₁ | Pass | None |
| A3.1 smooth property | Q_M cyclic v; regular Uκ vector 1 | a_M v=0; x_N·1=x_N≠0 for every N | Pass | None |
| A3.1 polynomial/formal equivalence | Σₙ≥₁eₙ on Q₃ cyclic v | formal action=e₁v+e₂v; every cutoff ≥3 gives same sum | Pass | None |
| A3.1 category closure | two vectors killed at N=2,3 | sum killed at 3; image in any quotient still killed at 3 | Pass | None |
| A3.1 infinite products | ∏Q_M, cyclic tuple | for each N, e_N acts nontrivially in Q_(N+1); no uniform bound | Pass; product uses smooth vectors | None |
| A3.2 rational integration | Q₁, f₋₁v; x=e₁ | x f₋₁v=(h₀+k)v, x² f₋₁v=−2e₁v=0 | Pass, finite orbit gives polynomial exponential | None |
| A3.2 finite generation uniform order | finite cyclic generators killed at M_j | N=max M_j kills all; infinite ⊕Q_M has M>N and e_N^r v≠0 in Q_M | Pass | None |
| A3.2 N=0 control | SL₂ matrix with eigenvalue −1 and nontrivial Jordan block | trace-zero logarithm would have eigenvalues ±(2r+1)πi, hence diagonalizable; its exponential cannot be the Jordan block | Excluded as claimed | None |
| A3.2 trivial group/finite jet | G=1; exp(tE₁₂) modulo t² | 1↔0; exp=1+tE₁₂, log=tE₁₂ | Pass; denominator theory is characteristic zero | None |
| A4.1 completion topology | Σ_N≥1 f₋N e_N modulo I₃ | tail N≥3=0; stage has f₋₁e₁+f₋₂e₂ | Pass | None |
| A4.1 arbitrary left coefficients | P_N=N! f₋N^N, vector killed by a₃ | all N≥3 terms act by 0 regardless of N! | Pass | None |
| A4.1 product defined on module quotients | 1·b,b·1 and h₀ acting on Q₁ | both unit products=b; h₀·v remains nonzero, so no ring-quotient fiction | Pass | None |
| A4.1 Hausdorff/PBW separation | e₀ and scalar 1 | both survive Q₁; neither belongs to all I_N | Pass | None |
| A4.1 polynomial/formal completed comparison | Σₙ≥₀eₙ modulo I₂ | both descriptions give e₀+e₁ | Pass | None |
| A4.2 completed loop lift | diag(t,t⁻¹), k=−2 | h₀→h₀−4; inverse shift +4 recovers h₀ | Pass | None |
| A4.2 coordinate/completed compatibility | same φσ,φτ | dense and completed currents both use 2t+4t²; identity coefficient action=identity | Pass | None |
| A4.2 continuity bound | diag(t,t⁻¹), input f_m | output f_(m−2); M=N+2 suffices, central correction on sufficiently high modes=0 | Pass | None |
| A5.1 smooth iff continuous | ℂ[[x]], J_N=x^N, M=A/x² | J₂m=0; orbit kernel contains x²A and is open | Pass, both directions | None |
| A5.1 HasBasis control | same topology, J_N=A, M=A/x | continuity=true; smoothness=false because 1·1=1 | Excluded by basis assumption | None |
| A5.1 Laurent module | M=ℂ((x)), vector x⁻¹ | x^N x⁻¹=x^(N−1)≠0; orbit kernel 0 is not open | Pass, both false | None |
| A5.1 zero ring/module | A=0; M=0 | orbit map constant 0; J_Nm=0; both properties true | Pass | None |
| A5.1 coreflection stability control | M₂(ℂ), J_N=AE₁₁ | annihilator=ℂe₂; E₁₂e₂=e₁ not annihilated; E₁₁E₁₂=E₁₂∉J | Pass; extra hypothesis excludes it | None |
| A5.1 products | ∏_N ℂ[[x]]/x^N, tuple 1 | x^M component at N=M+1 is x^M≠0 | Pass | None |
| A5.1 restriction | A=ℂ[[x]], continuous scalar inclusion ℂ→A | pullback of x^NA is 0; restricted vector killed by 0; orbit is discrete-continuous | Pass | None |
| A5.2 coinduction action | coefficient functionals ε_j on ℂ[[x]] | x·ε₂=ε₁; x³·ε₂=0; formula f(ax) gives same values | Pass | None |
| A5.2 unit/counit | A/x, vector 1 | unit sends 1 to ε₀; evaluation at 1 gives 1, not 0 | Pass | None |
| A5.2 ordinary versus continuous coextension | f(x^j)=1 for all j | f(x^N)=1≠0 for every N; no open ideal killed | Pass, excluded from continuous part | None |
| A5.2 injective embedding | nonzero m in any smooth module | unit(m)(1)=m≠0; zero module maps to zero | Pass | None |
| A5.3 closed central quotient | A=ℂ[[x]], L=xA | A/L=ℂ; x acts as 0=χ(x) on both descriptions | Pass | None |
| A5.3 character transport | ℂ[y], a(y)=y+1, χ(y)=1 | χ(a⁻¹y)=χ(y−1)=0; inverse pullback sends old fibre 1 to 0 | Pass | None |
| A5.3 invariant character | ℂ[[x]], a(x)=2x, χ(x)=0 | χ(a⁻¹x)=χ(x/2)=0 | Pass | None |
| A5.3 closure condition | continuous discrete module annihilator | open additive kernel is union of open cosets' complement, hence closed; closure adds zero action, still 0 | Pass | None |
| A5.4 module equivalence | Q₁ versus Uκ | Q₁ cyclic vector has I₁v=0; Uκ has x_N1=x_N≠0 for all N | Pass; only Q₁ extends continuously | None |
| A5.4 current pole | h-current on cyclic Q₁ vector v | z⁻¹ coefficient=h₀v≠0; on actual vacuum it is 0 | Pass | None |
| A5.4 binary normal product | h,h on that v | constant term=h₋₁²v+2h₋₂h₀v; on vacuum=h₋₁²v | Pass | None |
| A5.4 field derivative/residue | z^s; s=−1,0,2 | derivatives −z⁻²,0,2z; residues of derivatives all 0 | Pass | None |
| A5.4 density-detected center | scalar 2 versus e₀ | [2,x_n]=0; [e₀,f₀]=h₀≠0 | Pass | None |
| A6.1 FormalVertexAxioms positive model | ℚ[x], Y(a,z)b=a(x+z)b,T=d/dx | Y(1)=id; Y(x,z)1=x+z; T1=0 | Pass | None |
| A6.1 creation higher coefficients | a=x² over ℚ | coefficient z²=1=(1/2)T²x² | Pass; factorial nonzero | None |
| A6.1 covariance versus unshifted fields | F(z)=multiplication by x+z; wrong F=x | [T,F₀]=id=F₁; wrong F has F₁=0, so id≠0 | Pass; wrong model excluded | None |
| A6.1 formalMode indexing | vacuum and x in commutative model | 1_(−1)=id; x_(−1)=mul x, x_(−2)=id; x_(0)=0 | Pass | None |
| A6.1 locality | commutative ℚ[x]; Heisenberg h | N=0 gives zero commutator in first; second needs N=2 for central double pole | Pass | None |
| A6.1 Borcherds general formula | vacuum a=b=c=1, m=0,n=−1,r=−1 | LHS=1; RHS first i=0 term=1, all other terms=0 | Pass | None |
| A6.1 commutator specialization | Heisenberg h, m=1,n=−1 on vacuum | LHS=1; RHS=0+1=1 | Pass | None |
| A6.1 iterate/skew/translation | ℚ[x], a=x,b=x | Y(x,z)x=x²+zx; e^(zT)Y(x,−z)x=x²+zx; T(x²)=2x | Pass | None |
| A6.1 generic reconstruction | single field x+z on ℚ[x] | stable submodule containing 1 contains x^r for every r; reconstructed x-field has coefficients x,1,0,… | Pass; signature is present at Lean:137 | None |
| A6.1 zero-space boundary | V=0, vac=0,T=0 | all coefficients 0; both Borcherds sums 0; unique zero structure | Pass; zero object allowed by these axioms | None |
| A6.2 affine vacuum PBW | sl₂ weights 0,1,2 | dimensions 1,3,3+6=9 | Pass | None |
| A6.2 center definition | vacuum versus e₋₁vac at k=0 | all positive products on vacuum=0; f₀e₋₁vac=−h₋₁vac≠0 | Pass | None |
| A6.2 Sugawara noncritical | sl₂ k=1; E₈ k=1 | 3/(1+2)=1; 248/(1+30)=8 | Pass; claim-level locators now present | None |
| A6.2 critical undivided S | sl₂ k=−2, x≠0 | x₁S=(k+2)x₋₁vac=0; quadratic PBW symbol nonconstant | Pass; divided conformal vector excluded | None |
| A6.2 coordinate action | φ=2t, x₋₁vac | x₋₁vac→(1/2)x₋₁vac; vacuum→vacuum | Pass | None |
| A6.3 deformation and flatness control | ℂ[[ℏ]] PBW vector v; truncation r=2 | ℏv≠0 before reduction; ℏ²v=0 modulo ℏ² | Pass; no false domain claim after reduction | None |
| A6.3 two completions | Σ_r≥1 ℏ^r x₋r vac | mod ℏ³ gives ℏx₋₁vac+ℏ²x₋₂vac; infinite PBW support prevents membership in graded free module | Pass | None |
| A6.3 compatible stage reduction | Σ_j≥1 ℏ^j e_j mod (I₃,ℏ³) | ℏe₁+ℏ²e₂ in either order of the two projections | Pass | None |
| A6.3 PBW section/product defect | central scalars z=2,w=3 | s(1)=1; s(6)−s(2)s(3)=0, hence defect 0 | Pass boundary; general section is construction target | None |
| A6.3 lift independence | z̃→z̃+ℏb, w central mod ℏ | bracket changes by [b,w] mod ℏ=0 | Pass | None |
| A6.3 divided commutator change | sl₂ b=e₀, test f₀ | difference of derivations=ad e₀(f₀)=h₀ | Pass, inner change retained | None |
| A6.3 central Poisson bracket | sl₂ m=2,n=−2 | 4S₀−(8−2)/2=4S₀−3; reverse=−4S₀+3 | Pass | None |
| A6.3 Jacobi/Leibniz controls | constants; central Poisson generator S₀,S₁ | {1,z}=0; {S₀,S₁²}=−2S₁²=2S₁{S₀,S₁} | Pass | None |
| A6.4 grading guard | p=q=1,n=0,1,2 | weights 1,0,−1; last value forced 0, not assigned to weight zero by toNat | Pass | None |
| A6.4 zero product positive/negative model | Heisenberg h | h_(0)h=0 in V₁; h_(1)h=1 in V₀ | Pass; wrong product excluded | None |
| A6.4 alternating headline | sl₂ x=e+f | [x,x]=h−h=0 | Pass | None |
| A6.4 Leibniz headline | sl₂ x=h,y=e,z=f | [h,[e,f]]=0; [[h,e],f]+[e,[h,f]]=2h−2h=0 | Pass | None |
| A6.4 morphism compatibility | identity; zero-space target | identity preserves h=[e,f]; zero map gives 0=[0,0] | Pass | None |
| A7.1 Heisenberg cocycle | B(h,h)=1, m=1,−1 | c(h₁,h₋₁)=1; reversal −1; zero-mode value 0 | Pass | None |
| A7.1 oscillator/Fock action | h₁h₋₁vac,h₂h₋₂vac,h₁h₋₂vac | 1,2,0 respectively | Pass | None |
| A7.1 Fock character | rank 1, weights 0…4 | partition counts 1,1,2,3,5 | Pass | None |
| A7.1 degenerate B and H | B=0 with h≠0; H=0 | contractions=0 but h₋₁vac≠0; H=0 gives Fock=𝕜,T=0 | Pass | None |
| A7.1 Heisenberg covariance/isometries | mode −2; h↦−h | [T,h₋₂]=2h₋₃; B(−h,−h)=B(h,h)=1 | Pass | None |
| A7.1 beta-gamma definitions | one pair and distinct roots | β₀γ₀vac=1; γ₁β₋₁vac=−1; cross-root contraction 0 | Pass | None |
| A7.1 beta-gamma regular pairs | β₀β₋₁vac,γ₁γ₀vac | both 0; γ₀²vac≠0 | Pass | None |
| A7.1 beta-gamma translation/index | γ₀,γ₁ | [T,γ₀]=γ₋₁; [T,γ₁]=0; γ₀ is state mode −1 | Pass | None |
| A7.1 beta-gamma refined grading | γ₀^jvac, j≥0 | degree always 0, root weight varies with j; degree-zero dimension infinite | Pass | None |
| A7.1 big-cell polynomial action | e=∂,h=−2y∂,f=−y²∂ on y | [h,e]y=2=2ey; [e,f]y=−2y=hy | Pass | None |
| A7.1 Cartan correction | parameter λ=1, test constant 1 | h1=1,f1=y,[e,f]1=1; missing λy term gives 0 | Pass | None |
| A7.1 anomaly | −2:γβ: self-OPE | two contractions give 4·(−1)=−4; critical κc(h,h)=−4 | Pass; source sign misprint separate | None |
| A7.1 Wakimoto all levels | sl₂ k=1 and −2 | Cartan poles −4+2(k+2)=2 and −4; e/f double poles 1 and −2 | Pass | None |
| A7.1 wrong derivative correction | k=1, replace k∂γ by −k∂γ | e/f double pole −1 instead of 1 | Excluded | None |
| A7.1 Wakimoto PBW injectivity control | symbols e=β,h=b−2βγ,f=bγ−βγ² | β=1,γ=±1,b=±2 both give (e,h,f)=(1,0,1); coordinate pullback still dominant, not injective on points | Pass for theorem; source proof error recorded | None |
| A7.1 critical center image | critical sl₂ quadratic symbol | image in Cartan factor is b²/4 at PBW level; beta-gamma terms cancel | Pass | None |
| A7.1 screening nonzero | u=1,x=exp(2t) | δu constant=−1; x′ constant=2 | Pass | None |
| A7.1 screening kernel | q=u²−u′ in same example | δq constant=−2+2=0; δq′=0 | Pass | None |
| A7.1 wrong screening sign/zero operator | u²+u′; operator 0 | δ wrong q constant=−4; zero operator gives δu=0 instead of −1 | Excluded | None |
| A7.1 screening on vacuum/current image | vacuum and e-current descendant | S(vac)=0; intertwining gives S(e₋₁vac)=e₋₁S(vac)=0 | Pass; not equality with whole image | None |
| A7.2 invariant forms/Cartan dual | sl₂ h,h under trace pairing | κ₀(h,h)=2; inverse dual coefficient=1/2 | Pass | None |
| A7.2 jet homogeneous scaling | sl₂ P=tr(A²)/2,N=2 | P(t²A)=t⁴P(A); wN=4 | Pass | None |
| A7.2 jet rather than finite invariant | A(t)=h+t h, P=tr(A²)/2 | P₀=1,P₁=2; for h+2t h, same P₀=1 but P₁=4 | Pass, new jet information | None |
| A7.2 jet characters | sl₂ weights0…4; sl₃ weight4 | 1,0,1,1,2; sl₃ has P_(1,2),P_(1,0)²,P_(2,1), count3 | Pass | None |
| A7.2 Verma invariant strictness | sl₂, b̃₊ invariants | π₀ character weights0…2:1,1,2; (gr M₀)^b̃₊ has same 1,1,2; quotient kills degree-one generator | Pass, invariant character on both sides | None |
| A7.2 constant-g invariant comparison | finite sl₂ irreducible highest weight r | b₊-invariant highest vector has h-weight r; killed by h only when r=0 | Pass; local finite-dimensionality used | None |
| A7.3 critical vacuum center | sl₂ weights0…4 | 1,0,1,1,2; weight4 has T²S and S² | Pass | None |
| A7.3 noncritical and zero-level center | sl₂ k=1, x≠0; k=0,e-state | x₁S=3x₋₁vac≠0; f₀e₋₁vac=−h₋₁vac≠0 | Pass | None |
| A7.3 all-type normalization | B₂ dual root lengths | original coroot lengths 2,4; scaling dual form by r∨=2 gives normalized dual long length 2 | Pass | None |
| A8.1 generic mode relation | state a,t^r | Res(Y(Ta)t^r)=−r Res(Y(a)t^(r−1)); r=2 gives −2a[1] on both sides | Pass | None |
| A8.1 center stage/symbol cutoff | sl₂ w=2,N=1 | max surviving state index=2·1−1=1; S[2] acts by0; S[1] has nonzero quadratic zero-mode symbol | Pass | None |
| A8.1 higher-degree cutoff | sl₃ cubic w=3,N=2 | max index=5; coefficient at r=6 vanishes | Pass | None |
| A8.1 topology/cofinality | weights 2,3 and N=2 | cutoffs4,6 bounded by common6; common4 contained in both stage allowances | Pass | None |
| A8.1 adjoint versus left action | Q₁ cyclic v, h₀ | ad(h₀)v=0; left h₀v≠0 | Pass | None |
| A8.1 center quotient ideal | central z,w with z·v_N=0 | zw·v_N=wz·v_N=0; arbitrary noncentral analogue e_N f₋N v_N≠0 | Pass | None |
| A8.2 degree derivation | x_n,n=1,−1 | [−L₀,x₁]=x₁; [−L₀,x₋₁]=−x₋₁ | Pass | None |
| A8.2 HC quadratic | sl₂,k=1,λ=α/2,δ=0 | Q=2−1/2=3/2; Q/6=1/4 | Pass | None |
| A8.2 vacuum and critical controls | λ=δ=0; k=−2 | Q=0; critical denominator2(k+2)=0, division excluded | Pass | None |
| A8.2 restricted-series center | constant scalar coefficients z_j | z_j→0 in discrete scalars iff eventually0; series becomes a polynomial | Pass conditional on owned HC theorem | None |
| A8.2 separating original algebra | D′=d−Dκ, polynomial degree1 | d coefficient of D′=1; an element of original completion has d coefficient0 | Pass; intersection leaves constants | None |
| A8.3 selected FF generator | q=t⁻⁴,n=2 | q₋₄=1=Res(t³q dt) | Pass | None |
| A8.3 Poisson normalization | q=0,ε=t³,η=t⁻¹ | Res(η·(−ε‴/2))=−3; affine central bracket at (2,−2)=−3 | Pass | None |
| A8.3 nonlinear coordinate change | φ=t+t²,q=0, at t=0 | Schwarzian=−6; q^φ=−(−6)/2=3 | Pass | None |
| A8.3 scale point/function directions | φ=2t,n=1 | point coefficient L₁ scales 1/2; function S₁ scales2; inverse pullback matches | Pass | None |
| A8.3 cubic Miura sign | diag(1,1,−2) | tr(u³)=−6; tr((−u)³)=6=−tr(u³) | Pass | None |
| A8.3 loop fixation control | critical diag(t,t⁻¹), h₀ | h₀→h₀−4, matching −2Res tr(h²/t)=−4; h₀ itself is not central | Pass; no false fixation of all currents | None |
| A8.3 Hopf/matrix dictionary | diag(t,t⁻¹); identity | entry evaluations t,0,0,t⁻¹ and determinant1; identity entries δᵢⱼ | Pass | None |
| A8.3 moment/gauge direction | constant A=h,x=e | anchor [h,e]=2e; gauge tangent [e,h]=−2e; dH_e corresponds to −e | Pass | None |
| Source rescaling control | κ=2κ′, e₁,f₋₁ | printed K↦2K′ sends central bracket to4K′ versus K′; K↦K′/2 gives K′=K′ | Source error, roadmap uses correct reversed relation | None |
| Source anomaly sign control | sl₂ h=diag(1,−1) | Σ_α>0 α(h)²=4; κc(h,h)=−4; corrected equality is sum=−κc | Source misprint | None |
| Source PBW degree control | d=1,m=−1 | printed m−d=−2; actual weight d−m=2 | Source misprint | None |
| Source big-cell map control | u(y)=[[1,y],[0,1]], b=[[-y,0],[1,y]], y=±1 | Ad_u b=[[0,1],[1,0]] for both y; two preimages over a regular semisimple point | Source generic-injectivity error; dominance suffices | None |
| Source Borcherds parity control | vacuum fields, conformal m=n=−1,k=2 | printed reversal sign yields −4id versus0; corrected (−1)^k gives0=0 | Source misprint; roadmap sign correct | None |
| A3 Examples, fixed PBW-length nilpotence | Q₁(sl₂), h₁ and e₋ᵣv, r=1,2 and arbitrary r | h₁e₋₁v=2e₀v; h₁²e₋₂v=4e₀v; h₁ʳe₋ᵣv=2ʳe₀v≠0, versus a claimed uniform zero power | Fail | R01: local nilpotence |
| R01 repaired orbit statement | Wᵣ=span(v,xₙv: x∈sl₂, −r≤n≤0) | dim Wᵣ=1+3(r+1); a₁Wᵣ⊆Wᵣ and every (r+1)-fold product from a₁ kills Wᵣ; h₁ʳe₋ᵣv still nonzero | Pass | Use finite-dimensional orbits, not length alone |
| Reconstruction, empty generator set | V=ℚ·vac, T=0; V=ℚ² with vac=e₁ | First: span(vac)=V and Y(c vac)=c id uniquely; second: stable span(e₁) has dimension 1≠2 and generation fails | Pass | None |
| Reconstruction, zero vacuum | W=0, any generator family | hgen gives 0=V; on V=0 every coefficient and T equals 0 and there is one structure | Pass | None |
| Reconstruction, possible negative creation term | lowest exponent r=−2, coefficient v≠0 | covariance at r−1 gives 0=−2v, impossible in characteristic zero | Pass | None |
| Reconstruction covariance outside characteristic zero | characteristic 2, scalar field F(z)=z⁻² id and T=0 | derivative −2z⁻³=0 although there is a pole; CharZero excludes this input | Pass | None |
| Generic adapter, positive characteristic | A=𝔽₂[[x]], M=A/x², J_N=x^N A | J₂·1=0 and orbit kernel x²A open; both properties true | Pass | None |
| Source inventory | 11 reference/design works; tracked sources.toml | 11 cited works versus 0 manifest records | Fail policy | R02 |
| Supplier declaration spelling | two #check probes at the pin | LieAlgebra.LoopAlgebra.twoCocycleOfBilinear resolves; LieAlgebra.loopAlgebra.twoCocycleOfBilinear gives unknown constant | Fail locator | R03 |
| Source loop lift, central input | g=identity, A=0,c=1 | printed image 0; required image K | Source error | Keep README's c term |
| Source loop lift, Maurer–Cartan side | g=[[t,1],[0,t⁻¹]], A=t f, κ=tr | g⁻¹g′=[[t⁻¹,t⁻²],[0,−t⁻¹]], g′g⁻¹=[[t⁻¹,−1],[0,−t⁻¹]]; residues against A are 1 versus 0 | Source error | Keep README's g⁻¹dg |
| Source invariant-form vector space | sl₂, trace form κ₀ | κ₀ and −κ₀ nondegenerate; sum 0 is degenerate | Source misprint | All invariant forms form the vector space |


## Not verifiable

- **`kac-laplace`, Corollary 1, printed pp.645–647.** The sources service tried the cited PMC landing page and linked PDF. The PDF route returned HTML rather than the paper, and the service classified it as **uncertified**. A separate browser lookup also met PMC's browser-check page. I did not bypass it. Frenkel Proposition 4.3.9, `frenkel-loop` lines 5514–5534, was read, but the original Kac completion and invariant-function hypotheses cannot be certified from that secondary use alone. This is not presented as a new defect in the roadmap.
- **`virasoro-zulip`, message 491524778.** The service fetched only the public application shell: `virasoro-zulip` lines 5–19 contain no discussion message. It is listed once in `needs-references.toml`. The two Mathlib design pages and the separate VirasoroProject README were readable. No other failed initial lookup remains listed after successful retrieval.
- No review work was parked for these texts. No sources manifest was edited. The report distinguishes checked source passages, owned mathematical extensions, and uncertified primary material.

## Source issues

- **Error** in frenkel-loop at §1.3.6, printed p.29: the source says for κ=λκ′, the identity-on-currents map sends K to λK′; it should be K↦λ⁻¹K′; affects a stated result.
- **Misprint** in frenkel-loop at §1.3.6, displayed loop action, printed p.29: the source says the image's central coordinate is only the residue correction; it should be the input central coordinate plus that correction; affects a stated result.
- **Error** in frenkel-loop at §1.3.6, displayed loop action, printed p.29: the source says the correction pairs (dg)g⁻¹ with the original current A; it should be κ(g⁻¹dg,A), equivalently κ((dg)g⁻¹,Ad_g A); affects a stated result.
- **Misprint** in frenkel-loop at equation (5.6-11), printed p.161: the source says the positive-root quadratic sum equals κc; it should be the negative of κc; affects the proof.
- **Error** in frenkel-loop at Proposition 7.1.1 proof, printed p.201: the source says the big-cell Grothendieck map and its jet map are generically one-to-one; it should be generically finite, with dominance and generic étaleness supplying the required injective pullback; affects the proof.
- **Misprint** in frenkel-loop at §8.1.1 after Corollary 8.1.2, printed p.225: the source says the degree of Pᵢ,ₘ is m−dᵢ; it should be dᵢ−m; affects nothing.
- **Misprint** in kac-vertex at equations (4.33) and (4.35), printed p.29: the source says the reversed-product sign is (−1)ⁿ; it should be (−1)ᵏ, where k is the product exponent; affects a stated result.
- **Misprint** in frenkel-loop at §1.3.5, printed p.28: the source says nondegenerate invariant forms constitute a one-dimensional vector space; it should be all invariant forms, with nondegenerate forms its nonzero elements; affects nothing.

Witness passages: `frenkel-loop` lines 1405–1407, 1429–1431, 1447–1449, 7053–7062, 8571–8575, 9597–9606, and `kac-vertex` lines 1453–1483. The loop-action passage was also read on the rendered printed page. The apparent strict-inequality errors in extracted Frenkel pp.55 and 76 were checked on the rendered pages: those are extraction errors, not source errors, and are not listed above. The table gives explicit numerical/matrix witnesses for the reported errors. No published correction was verified. These source issues are separate from the three numbered roadmap findings.
