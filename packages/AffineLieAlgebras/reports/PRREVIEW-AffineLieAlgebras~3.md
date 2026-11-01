# Review of AffineLieAlgebras (pull request #1201 at ea2dc3a)

**Verdict:** needs changes

## R01 (P2) — Consume the existing vector-valued Laurent-current construction

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:159–168`: “bracket convolution of coefficients”; “the bracket extends continuously to the completion and makes it a Lie algebra”; “for finite-dimensional `L` the topology and the identification are independent of the basis”.

**Claim:** These are construction targets of A1.1, whose Needs line imports only FormalLaurentPuiseux L1's scalar topology.

**Witness:** Main's `TauCetiRoadmap/FormalLaurentPuiseux/README.md:167–192`, L3, already constructs the vector-valued Laurent carrier, finite-dimensional tensor/completeness comparison, arbitrary-L convolution Lie bracket and polynomial-loop comparison. For `sl₂`, both specifications send `[e t,f t⁻¹]` to `h`.

**Repair:** Name those exact L3 contracts under Scope and ownership and Exact supplier contracts. Consume the native `HahnModule ℤ 𝕜 L` bracket, finite-dimensional comparison and polynomial embedding; do not request their construction again. Retain A1.1's additional inverse-limit identification for arbitrary L, continuity/filtration comparisons not supplied there, and the converse completeness criterion. Specify the comparison as coefficient-preserving and bracket-preserving. Retest on `sl₂` (`[e t,f t⁻¹]=h` on both carriers) and on `L=⊕ₙ𝕜eₙ` (the compatible limit has coefficient `eₙ` in degree n and lies outside the algebraic tensor product). The repair preserves the full infinite-dimensional theorem and does not add an upward dependency.

## R02 (P2) — State the generic reconstruction headline in Suggested.lean

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:651–653`: “translation-covariant, mutually local fields generating `V` from the vacuum extend uniquely to a `FormalVertexAxioms` structure”. `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean:14–27` only explains why the affine vacuum reconstruction cannot yet be stated.

**Claim:** All statable headline theorems have acceptance signatures. The generic extension/reconstruction theorem is a deep A6.1 target, distinct from constructing the affine vacuum module in A6.2.

**Witness:** A scratch theorem using `F : ι → HVertexOperator ℤ 𝕜 V V`, a vacuum, translation, coefficient covariance/locality and generation by invariant submodules elaborates at the pins, concluding a unique `FormalVertexAxioms` extending F. No new carrier is needed.

**Repair:** Add this characteristic-zero reconstruction theorem with `sorry`, using the existing native field carrier and the existing vertex structure. The generation condition can be `∀ W : Submodule 𝕜 V, vac ∈ W → (∀ i n v, v ∈ W → (F i).coeff n v ∈ W) → W = ⊤`. Require `T vac=0`, coefficient translation covariance and pairwise locality. Conclude existence and uniqueness with vacuum `vac`, translation `T`, and `A.field ((F i).coeff 0 vac)=F i`. Keep A6.2's missing-carrier explanation. The scratch signature is 27 lines, with no stand-in predicates, admitted data or option overrides. It elaborated with only its new `sorry` warning in addition to the six existing ones.

**Retest:** On `ℚ[x]`, vacuum 1, `T=d/dx`, and the single generator `F(z)b=(x+z)b`, the constant and linear coefficient maps are multiplication by x and identity. Their commutators with T are respectively identity and zero; locality has N=0. Iterating the constant coefficient generates `1,x,x²,…`, and the reconstructed field of x is exactly F. The unshifted field `F(z)b=xb` fails covariance: its two sides are identity and zero. This distinguishes the theorem's hypotheses from the false reconstruction without covariance.

## R03 (P3) — Complete the source inventory and remaining claim-level locators

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:676–686`: “For noncritical `k` build the `κ0`-dual-basis Sugawara conformal vector”; `README.md:1108–1134`, References. The folder contains no `sources.toml`.

**Claim:** Every target is traceable at its claim, and every cited work has a source record.

**Witness:** A6.2's vacuum-center and Sugawara claims have no attached locator. The Whitehead locator is now exact, but none of the eleven cited works/design references has a manifest entry. The passing gate does not check this omission.

**Repair:** Add one provenance record per work, using the existing source-service IDs listed below and the versions actually read; keep inaccessible primary text explicitly uncertified rather than asserting verification. Add A6.2's exact vacuum/reconstruction, center and Sugawara locators (Frenkel Theorem 2.2.2/§2.2.5, §3.3 and §3.1, respectively), and attach the applicable locator or explicit derivation to the uncited A1.2/A2.1 API claims. On `sl₂`, keep `c=3k/(k+2)`, so k=1 gives 1 and k=−2 is excluded from the divided conformal vector. The critical undivided quadratic state is a different target. This is the remaining part of previous R06; its Whitehead correction and the removed lattice-specific citation are repaired.

## Verified sound

🤖 Independent AI review. Both complete files were read: 1,134 README lines and 222 Lean lines. This is a full review, not an incremental review of the repair diff. No pull-request file was edited. The calculations below are finite adversarial controls, not proofs of the admitted general theorems.

**Previous review, finding by finding.** These assessments were made before the new whole-folder audit. Quotations are from this head.

| Previous finding | Passage now present | Result |
| --- | --- | --- |
| R01: Q₁ versus vacuum | README:612 “has at most a simple pole”; :615 gives all three constant terms; :618 uses `Uκ/(Uκ·g[[t]])` | Repaired. The Q₁ vector has nonzero `h₀v`; the actual vacuum does not. |
| R02: circular layer order | README:349 “Form `Uκ`”; :447 “Use A2.4’s algebraic level quotient”; :474 “Extend the lift through the UEA” | Repaired. Algebraic quotient precedes induction, completion precedes completed lifts, free fields precede centers, and A8.2 no longer needs A8.1. |
| R03: lattice extension in base folder | README:23–28 ends with A6–A8; :1100 “Downstream consumers” follows A8 | Repaired within this folder: C7 and its acceptance declarations are absent. No claim is made here about a separate Part II deliverable. |
| R04: smooth-vector stability | README:514 “`∀ b ∈ A ∀ N ∃ M, J_M b ⊆ J_N`”; :538–540 retains the matrix counterexample | Repaired. A5.2 carries the estimate; the equivalence correctly keeps weaker additive-topological assumptions. |
| R05: characteristic-zero vertex generality | Lean:99 “`(𝕜 : Type v) [Field 𝕜] [CharZero 𝕜]`”; README:672 “Over `ℚ`” | Repaired throughout both vertex structures, modes, Borcherds and weight-one declarations. |
| R06: locators/inventory | README:217 “Corollaries 7.8.10 and 7.8.12, pp. 245–246”; :813 gives beta-gamma equations | Partly repaired. Whitehead and several construction locators are fixed; R03 records the remaining omissions. |
| R07: free-field APIs/checks and unavailable endpoints | README:808,837,863,889 give four distinct free-field blocks; Lean:17–24 names polynomial/formal, vacuum/Sugawara and deformation endpoints | Repaired for the cited defects. The new R02 concerns the separate, statable generic reconstruction theorem. |

No readable repair report marks any of these findings “not actionable in this package”. No settled finding is re-raised.

**Gate and elaboration.** HEAD is `ea2dc3a8f8311d0f6234a3d4a98dd67ac4dd8edf`. The outside-folder diff and worktree status are empty. The supplied gate passes all checks, including the targeted module build: all counters are zero, including `build`, `depcheck`, `stray-files`, `outside-folder`, `sorry-data` and `set_option`. Independently running `lake env lean` on the absolute path of Suggested.lean from the worktree returned exit 0, with six declaration-uses-sorry warnings and no other warnings. There is a single `import Mathlib`; no missing Tau Ceti object needed a build.

A scratch copy with `#check @name` for all **12 declarations** also elaborated. All binders agree with the README: both Whitehead finite dimensions and semisimplicity survive; the continuity theorem carries additive-topological continuity and the neighbourhood basis; all generic vertex signatures retain the characteristic-zero field. Zero dropped binders were found. All six sorried theorems were tried with closing alternatives `simp`, `rfl` and `infer_instance` on a scratch copy; none closed. Object searches at the pins found no single existing lemma proving them by `exact`. No padding finding is raised.

The required independent dependency command returned:

```text
depcheck: 204 roadmaps, 1452 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Every Needs line was also read. The internal order is now A1 → algebraic A2 → A3 → A4 → A5 → A6 → free-field/jet A7 → center endpoints. A8.1 and A8.2 have separate prerequisites. There are no declared supplier gaps. The downstream mentions of GeometricRepresentationCategories and NoncompactQuantumSymmetry are not consumed inputs.

**Seeded source sample.** The repeated “API” labels do not distinguish occurrences. To cover all of them, all **13 API blocks** were checked, plus the four named targets, a 17-entry superset of the 15-entry seed. No README locator is labelled unverified. Source locators below refer to line-numbered source-service extractions, not to repository copies of sources.

| Target, README location | Exact source/supplier inspected | Result |
| --- | --- | --- |
| API A1.1, :157 | FormalLaurentPuiseux L3, README:167–192; Frenkel §1.3.1 | R01: import the vector-valued construction; the additional infinite-dimensional completeness converse is valid. |
| API A1.2, :190 | Mathlib Cochain:101–156, Loop:127–183; `frenkel-loop` lines 1412–1417 | Cocycle sign agrees. Joint-continuity criterion follows by bilinear expansion and open kernels. |
| Whitehead, :207 | `weibel` lines 985–1023, Corollaries 7.8.10/7.8.12, printed pp.245–246 | Exact hypotheses and both vanishings supported; the README's complete-reducibility route is an additional proof route. |
| API A2.1, :288 | `frenkel-loop` lines 1412–1437, Lemma 1.3.2/§1.3.6, pp.28–29 | Scalar classification/splitting supported. Arbitrary discrete kernels are an explicitly owned extension, not inferred by density alone. |
| API A2.4, :358 | `frenkel-loop` lines 1622–1640, §2.1.2, p.34; pinned PBW | Algebraic level quotient and left-ideal completion match; right-shift estimate is explicitly requested. |
| API A4.1, :451 | Same §2.1.2, p.34 | Compatible module quotients, rather than quotient algebras; multiplication estimate agrees. |
| API A5.1, :518 | Same §2.1.2; ModuleCat change of rings | Generic generalization now states the multiplicative estimate it uses. |
| API A6.1, :656 | `kac-vertex` lines 155–191, 920–939, 1309–1325, 1453–1483; `bakalov-kac` lines 118–165 | Axioms, coefficient identities and weight-one route match; Kac's parity slip is not copied. Generic reconstruction signature missing: R02. |
| API A6.4, :751 | `kac-vertex` lines 938–939, 1309–1325, (3.24), Proposition 4.5/Theorem 4.1(a), pp.18,26 | Scalar weight zero and the negative-degree guard supply alternation. |
| API Heisenberg, :789 | `frenkel-loop` lines 7432–7457, (6.2-1), p.172; Kac Example 1.3 | General symmetric B, including zero, has the stated oscillator formula. |
| Beta-gamma, :808 | `frenkel-loop` lines 6096–6110, 6217–6247, §§5.3.3/5.4.1, pp.139,142–143 | Weyl indices, vacuum annihilators and translation shifts agree. |
| API beta-gamma, :816 | Same passages and `frenkel-loop` lines 6457–6465, §5.5.1, p.148 | Ordered contractions are +1 and −1; gamma zero modes are creators. |
| Big-cell action/anomaly, :837 | `frenkel-loop` lines 5929–5964, 6501–6558, 7030–7080; (5.2-12)–(5.2-14), Lemma 5.5.2, Theorem 5.6.8 | Rank-one vector-field and critical-level anomaly signs agree; source's (5.6-11) has a sign misprint. |
| API anomaly, :845 | Same theorem/proof, printed pp.136,150,160–161 | Local cocycle and correction are owned construction targets; no conclusion is assumed as a hypothesis. |
| API Wakimoto, :869 | `frenkel-loop` lines 7400–7417, 7461–7510, 8543–8610; Theorems 6.1.6/6.2.1, Proposition 7.1.1, Lemma 7.1.2 | Stated injectivity and center inclusion supported. The source's unnecessary generic one-to-one claim is false; dominance/étale lifting is the usable route. |
| Critical screenings, :889 | `frenkel-loop` lines 9304–9350, (7.3-11)–(7.3-14), Propositions 7.3.5–7.3.6, pp.216–217; FormalConnectionsOpers F7.5 | Localized targets and dual-Cartan factors are present; comparison is with an independently owned classical screening. |
| API screenings, :897 | Same passages; supplier README:2181–2255 | Only kernel containment is asserted here; rank-one tests exclude the zero screening and wrong derivative sign. |

All eleven references/design references were attempted through the source service. Readable IDs: `weibel`, `frenkel-loop`, `frenkel-wakimoto` (math/0210029v2), `frenkel-houches`, `kac-vertex` (1512.00821v2), `bakalov-kac` (math/0402315v3), `mathlib-25822`, `mathlib-29764`, `virasoro-project`. The remaining two are listed under Not verifiable. No source manifest was edited. The primary mathematical checks use the versions named above, with printed page numbers rather than PDF offsets.

**Pinned libraries.** Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following declarations were opened, not inferred from a newer library:

| File at its library pin | Declaration/contract checked |
| --- | --- |
| `Mathlib/Algebra/Lie/Loop.lean:110,127,183` | `LoopAlgebra.toFinsupp`, `residuePairing`, `twoCocycleOfBilinear`; second exponent n multiplies Φ, so use Φ=−κ. |
| `Mathlib/Algebra/Lie/Cochain.lean:101,118,123,143,156` | `d₁₂`, trivial-action formula, `d₂₃`, square-zero composition and `twoCocycle`; no Whitehead vanishing theorem. |
| `Mathlib/Algebra/Lie/Extension.lean:135,243,395,427,439` | `ofTwoCocycle`, extension/section cocycles and change-of-section coboundary. These are algebraic, not continuous-extension classification. |
| `Mathlib/Algebra/Lie/CartanCriterion.lean:256` | `LieAlgebra.HasTrivialRadical.instIsKilling`, applicable to the finite-dimensional complex setting. |
| `TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:110,259` | `TauCeti.exists_isCompl_of_isKilling`; characteristic zero, finite-dimensional Killing Lie algebra and finite-dimensional module. |
| `TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Injective.lean:201,222` and `PBW/Embedding.lean:53` | `pbwAssociatedGradedEquiv`, `UniversalEnvelopingAlgebra.ι_injective`, with `Module.Free`. |
| `Mathlib/Algebra/Vertex/HVertexOperator.lean:47,65,73,89` | The native carrier is `V →ₗ[R] HahnModule Γ R W`; coeff, PWO support and `of_coeff`. It supplies neither vacuum nor locality nor covariance nor grading. |
| `Mathlib/Algebra/Category/ModuleCat/ChangeOfRings.lean:519,530,658` | `coextendScalars`, its linear-map carrier and `restrictCoextendScalarsAdj`; the continuous part is additional work. |
| `Mathlib/CategoryTheory/Preadditive/Injective/Basic.lean:334` | `EnoughInjectives.of_adjunction` requires preservation and reflection of monomorphisms, both supplied in A5.2. |
| `Mathlib/Algebra/Homology/DerivedCategory/Ext/EnoughInjectives.lean:125` | `hasExt_of_enoughInjectives` keeps the chosen locally-small Hom universe. |
| `TauCeti/Algebra/AlgebraicGroup/SpecialLinear/Basic.lean:195,380,445` | `coordinateHopfAlgebra`, `pointsMulEquiv`, `pointsMulEquiv_mapValue`: actual determinant-one matrices and naturality. |
| `TauCeti/Algebra/AlgebraicGroup/GeneralLinear/Coordinate/HopfAlgebra.lean:491` | `GeneralLinear.genericMatrix`, the bundled coordinate matrix; SpecialLinear imports it rather than defining it. |
| `TauCeti/Algebra/Lie/Heisenberg.lean:112,184` | Three-dimensional strictly upper triangular matrices; not A7's all-mode Heisenberg/Fock construction. |

**Ownership and resolved roadmap contracts.** Object searches used the roadmap service, the supplied open-head checkouts, main, the board packages and both pinned libraries. No retained declaration shares its fully qualified name with a readable sibling roadmap declaration. AffineLieAlgebras on main already owns A1–A8; its current, smooth-module, critical-center and free-field programme is preserved. The earlier lattice extension is absent. R01 isolates a genuine foundational overlap rather than relocating this established programme.

| Owner and exact location read | Resolution |
| --- | --- |
| Main `TauCetiRoadmap/FormalLaurentPuiseux/README.md:70–193`, L1–L3 | Coordinate anti-composition, continuous derivative/residue and vector-valued currents exist as specifications. L3 is under-consumed in A1.1: R01. |
| Open-head `TauCetiRoadmap/FormalConnectionsOpers/README.md:875–938`, F3.1–F3.2 | Congruence Hopf groups, BCH exp/log, jet maps and current-Lie comparison; rational module integration remains A3's additional theorem. |
| Same README:1383–1538, F4.3 | Connected-group/rational Lie invariants, finite Chevalley adapter, principal slice, degrees and codimension. Infinite-dimensional invariant use is degreewise/rational. |
| Same README:1634–1800 and :2181–2255, F5/F7.5 | Oper functions/coordinate action, Miura sign, charge modules, screening kernels and classical completed modes. A8 owns the comparison with its generic mode completion. |
| Same README:2379–2443, F8.4 | AffineLieAlgebras is a consumer; F1–F8 do not use Feigin–Frenkel to construct their classical inputs. |
| Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,405,567,931` | Layers 1,3,5,7 supply finite Cartan/root/highest-weight, PBW/induction, complete reducibility and Harish–Chandra/Chevalley theory. |
| Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:313–409` | Finite classification and Layer 6 numbered integral data; B/C duality is transpose/flip, not equality. |
| Main `TauCetiRoadmap/ReductiveGroups/README.md:627–689` | Layers 6–7/7C supply the actual opposite Borels and ordered big-cell coordinates. Its open revision is not used as a replacement supplier. |
| Main `TauCetiRoadmap/GeometricRepresentationCategories/README.md:18–145,283–478` | A5/A6/A8 are suppliers to its coherent transport, Ext and deformation interfaces; no reverse dependency was added. |
| Open-head `TauCetiRoadmap/NoncompactQuantumSymmetry/README.md:13–18,453–467` | P.4 explicitly consumes the complex Whitehead result and owns extension to characteristic-zero fields. |
| Open-head `TauCetiRoadmap/KacMoody/README.md:436–469,673–695` | Its loop realization explicitly consumes the established AffineLieAlgebras polynomial extension. Generic contravariant theory overlaps the affine application; no reverse KacMoody dependency is imposed here, which would create a cycle. The existing affine completion/determinant target remains here. |

The two merged roadmaps used for shape comparison were FormalLaurentPuiseux and GeometricRepresentationCategories; their full supplier sections were read. Ownership against the supplied open work was checked. Search hits from unrelated open work were not treated as instructions or as permission to change scope.

**Headline inventory.** The six stated acceptance theorems are the two Whitehead lemmas, smooth iff continuous, Borcherds, and the two laws constructing the weight-one Lie algebra. The generic extension theorem is additionally statable (R02). Continuous H²/universality, polynomial/formal and completed-module equivalences, rational integration, vacuum reconstruction/Sugawara, critical deformation, vacuum and completed center theorems and Feigin–Frenkel coordinate/Poisson/loop compatibility are named in the docstring with missing carriers. Free-field injectivity, quantum/classical screening comparison and jet-invariant strictness are the deep intermediate A7 results supporting the named center endpoints; their geometric/Fock maps are README constructions, not replaced by arbitrary functions in Lean. No affine center theorem is claimed to be proved by a scalar identity.

**Adversarial values.** Each row gives an actual instance and values, including negative controls. “Pass” means that test does not refute the statement, not that finite examples prove the theorem. General proofs were checked against the indicated routes and hypotheses. Characteristic p/zero-ring cases are excluded from the field-theoretic layers by characteristic zero; the generic ring adapter additionally admits the zero ring. Disconnected groups, nonsimple Lie algebras and N=0 integration are not silently admitted where the corresponding hypotheses exclude them.

| Statement/definition/convention | Instances tried | Computed values on the two sides | Result / change |
| --- | --- | --- | --- |
| A1.1 algebraic tensor versus series | L=0; L=𝕜e | 0↔0; t⁻¹e has coefficient e at −1 and 0 elsewhere in both models | Pass; consume L3 as R01 |
| A1.1 coefficient extensionality | e t+f t² versus e t+2f t² | coeff₂=f versus 2f; difference coefficient=f≠0 | Pass |
| A1.1 convolution and Lie laws | sl₂, e t,f t⁻¹,h | [e t,f t⁻¹]=h; Jacobi triple gives 0+2h−2h=0 | Pass; existing L3 bracket |
| A1.1 filtration | M=1,N=−1 | order([e t,f t⁻¹])=0=M+N; not ≥1 | Pass |
| A1.1 density | Σₙ≥₀e tⁿ, truncation at r | first r coefficients agree; error order r; polynomial tail is nonzero | Pass |
| A1.1 completeness iff finite dimension | L=⊕ₙ𝕜eₙ, sᵣ=Σₙ<ᵣeₙtⁿ | error order r; limit has coefficient span of infinite dimension, tensor coefficient span finite | Pass; retain new converse |
| A1.1 basis independence | basis e versus 2e | t e=(t/2)(2e); coefficients and order 1 agree | Pass; supplied finite-dimensional comparison |
| A1.2 continuous cochain d² | sl₂ trivial coefficients, f(h)=−1,f(e)=f(f′)=0 | d f(e,f′)=1; d² f(h,e,f′)=−2+2=0 | Pass |
| A1.2 cohomology functoriality | identity and zero coefficient maps on c | id(c)(e,f′)=1; zero(c)(e,f′)=0; compositions have same values | Pass |
| A1.2 joint continuity | cκ; neighbourhood a₀; fixed f t⁻¹ | cκ(a₀,a₀)=0; cκ(e t,f t⁻¹)=1, cκ(e t²,f t⁻¹)=0 | Pass; separate continuity is also necessary |
| A1.2 residue sign | sl₂ h₁,h₋₁ and e₁,f₋₁ | −Res(t d(t⁻¹))·2=2; reversed −2; e/f value 1 | Pass; native Φ=−κ |
| A1.2 wrong residue model | h₀,h₋₁ | Res(1·t⁻¹dt)·2=2 in both orders, rather than negatives | Excluded |
| A1.2 coordinate invariance | φ=2t, e t,f t⁻¹ | −Res(2t d((2t)⁻¹))=1=original cocycle | Pass |
| A1.2 Whitehead one | sl₂ adjoint, ad h | f(e)=2e=[e,−h], f(f′)=−2f′=[f′,−h] | Pass |
| A1.2 Whitehead two | sl₂ trivial coefficients c(e,f′)=1 | f(h)=−1 gives −f(h)=1; other independent pairs 0=0 | Pass |
| A1.2 Whitehead hypothesis controls | abelian ℂ²; L=0 or M=0 | abelian c(e₁,e₂)=1 but every d f=0; zero cases H¹=H²=0 | Pass, abelian control excluded |
| A1.3 class detection | sl₂ h₁,h₋₁ | residue cocycle=2, every coboundary=−f([h,h])=0 | Pass |
| A1.3 semisimple product version | sl₂×sl₂ | independent values (2,0),(0,2); class-space dimension 2 | Pass |
| A1.3 simplicity control | abelian one-dimensional currents, 1,t | coefficient cocycle=1; residue cocycle=0; coboundaries=0 | Pass |
| A1.3 arbitrary discrete kernel | Z=0 and Z=⊕ⱼℂzⱼ | class of cκ⊗zⱼ takes 2zⱼ on h₁,h₋₁; Z=0 gives 0 | Pass; continuous normalizing coboundary remains owned target |
| A1 example formal residue | Σₙ≥₀e tⁿ against f t⁻¹ | only degree 1 contributes: 1=1 | Pass |
| A2.1 cocycle extension exactness | sl₂; κ=0 and κ₀ | projection([e₁,f₋₁])=h₀ in both; kernel is ℂK; central terms 0 and K | Pass |
| A2.1 perfectness | κ₀ versus 0 | [e₁,f₋₁]−[e₀,f₀]=K versus 0 | Pass |
| A2.1 section change | section cochain f(h₀)=1 | d f(e₀,f₀)=−1; old central coefficient 0 becomes −1 | Pass |
| A2.1 positive split | m,n≥0, m+n=0 | m=n=0, so mκ=0 | Pass |
| A2.1 universal extension | nonzero κ and Z=0; central rescaling by 2 | unique map to current quotient kills K; scale-2 cocycle sends K to 2K′ | Pass; κ=0 excluded from universality |
| A2.2 Killing normalization | sl₂ and sl₃ | 8=2·2·2 on h,h; Killing=6tr for sl₃, h∨=3 | Pass |
| A2.2 level rescaling | κ′=2κ, κ(e,f)=1 | image([e₁,f₋₁])=h₀+2K′=[image e₁,image f₋₁] | Pass; inverse convention would give 1/2 versus 2 |
| A2.2 central-character transport | K′=1, λ=2; a=0 | pulled-back K=2; zero scalar kills central cocycle but retains currents | Pass |
| A2.3 loop lift sign | diag(t,t⁻¹), eₙ,f₋ₙ | h₀+(n+2)kK on both sides; wrong sign gives h₀+(n−2)kK | Pass |
| A2.3 constant loop | constant g | g⁻¹dg=0, central correction 0; lift=Ad_g | Pass |
| A2.3 composition/Maurer–Cartan | diag(t,t⁻¹) squared | h₀ shift 2k+2k=4k; g⁻¹dg for square=2h dt/t gives 4k | Pass |
| A2.3 coordinate group convention | φσ=2t, φτ=t+t² | φστ=2t+4t²; wrong order gives 2t+2t² | Pass |
| A2.4 level quotient | k=0 and k=1 | K_standard=0 and 1; both retain e₀≠0, [e₁,f₋₁]=h₀+k | Pass |
| A2.4 Q₁ and transitions | sl₂ cyclic v; Q₂→Q₁ | h₀v≠0, h₁v=0 in Q₁; e₁v in Q₂ maps to 0; v maps to v | Pass |
| A2.4 left ideal not two-sided | e_N f₋N v in Q_N | equals (h₀+Nk)v≠0, although e_N v=0 | Pass |
| A2.4 right-shift estimate | b=f₋₁,N=1 | M=2 gives [e₂,f₋₁]=h₁∈a₁; M=1 gives h₀+k∉I₁ | Pass |
| A3.1 smooth property | Q_M cyclic v; regular Uκ vector 1 | a_M v=0; x_N·1=x_N≠0 for every N | Pass |
| A3.1 polynomial/formal equivalence | Σₙ≥₁eₙ on Q₃ cyclic v | formal action=e₁v+e₂v; every cutoff ≥3 gives same sum | Pass |
| A3.1 category closure | two vectors killed at N=2,3 | sum killed at 3; image in any quotient still killed at 3 | Pass |
| A3.1 infinite products | ∏Q_M, cyclic tuple | for each N, e_N acts nontrivially in Q_(N+1); no uniform bound | Pass; product uses smooth vectors |
| A3.2 rational integration | Q₁, f₋₁v; x=e₁ | x f₋₁v=(h₀+k)v, x² f₋₁v=−2e₁v=0 | Pass, finite orbit gives polynomial exponential |
| A3.2 finite generation uniform order | finite cyclic generators killed at M_j | N=max M_j kills all; infinite ⊕Q_M has M>N and e_N^r v≠0 in Q_M | Pass |
| A3.2 N=0 control | SL₂ matrix with eigenvalue −1 and nontrivial Jordan block | trace-zero logarithm would have eigenvalues ±(2r+1)πi, hence diagonalizable; its exponential cannot be the Jordan block | Excluded as claimed |
| A3.2 trivial group/finite jet | G=1; exp(tE₁₂) modulo t² | 1↔0; exp=1+tE₁₂, log=tE₁₂ | Pass; denominator theory is characteristic zero |
| A4.1 completion topology | Σ_N≥1 f₋N e_N modulo I₃ | tail N≥3=0; stage has f₋₁e₁+f₋₂e₂ | Pass |
| A4.1 arbitrary left coefficients | P_N=N! f₋N^N, vector killed by a₃ | all N≥3 terms act by 0 regardless of N! | Pass |
| A4.1 product defined on module quotients | 1·b,b·1 and h₀ acting on Q₁ | both unit products=b; h₀·v remains nonzero, so no ring-quotient fiction | Pass |
| A4.1 Hausdorff/PBW separation | e₀ and scalar 1 | both survive Q₁; neither belongs to all I_N | Pass |
| A4.1 polynomial/formal completed comparison | Σₙ≥₀eₙ modulo I₂ | both descriptions give e₀+e₁ | Pass |
| A4.2 completed loop lift | diag(t,t⁻¹), k=−2 | h₀→h₀−4; inverse shift +4 recovers h₀ | Pass |
| A4.2 coordinate/completed compatibility | same φσ,φτ | dense and completed currents both use 2t+4t²; identity coefficient action=identity | Pass |
| A4.2 continuity bound | diag(t,t⁻¹), input f_m | output f_(m−2); M=N+2 suffices, central correction on sufficiently high modes=0 | Pass |
| A5.1 smooth iff continuous | ℂ[[x]], J_N=x^N, M=A/x² | J₂m=0; orbit kernel contains x²A and is open | Pass, both directions |
| A5.1 HasBasis control | same topology, J_N=A, M=A/x | continuity=true; smoothness=false because 1·1=1 | Excluded by basis assumption |
| A5.1 Laurent module | M=ℂ((x)), vector x⁻¹ | x^N x⁻¹=x^(N−1)≠0; orbit kernel 0 is not open | Pass, both false |
| A5.1 zero ring/module | A=0; M=0 | orbit map constant 0; J_Nm=0; both properties true | Pass |
| A5.1 coreflection stability control | M₂(ℂ), J_N=AE₁₁ | annihilator=ℂe₂; E₁₂e₂=e₁ not annihilated; E₁₁E₁₂=E₁₂∉J | Pass; extra hypothesis excludes it |
| A5.1 products | ∏_N ℂ[[x]]/x^N, tuple 1 | x^M component at N=M+1 is x^M≠0 | Pass |
| A5.1 restriction | A=ℂ[[x]], continuous scalar inclusion ℂ→A | pullback of x^NA is 0; restricted vector killed by 0; orbit is discrete-continuous | Pass |
| A5.2 coinduction action | coefficient functionals ε_j on ℂ[[x]] | x·ε₂=ε₁; x³·ε₂=0; formula f(ax) gives same values | Pass |
| A5.2 unit/counit | A/x, vector 1 | unit sends 1 to ε₀; evaluation at 1 gives 1, not 0 | Pass |
| A5.2 ordinary versus continuous coextension | f(x^j)=1 for all j | f(x^N)=1≠0 for every N; no open ideal killed | Pass, excluded from continuous part |
| A5.2 injective embedding | nonzero m in any smooth module | unit(m)(1)=m≠0; zero module maps to zero | Pass |
| A5.3 closed central quotient | A=ℂ[[x]], L=xA | A/L=ℂ; x acts as 0=χ(x) on both descriptions | Pass |
| A5.3 character transport | ℂ[y], a(y)=y+1, χ(y)=1 | χ(a⁻¹y)=χ(y−1)=0; inverse pullback sends old fibre 1 to 0 | Pass |
| A5.3 invariant character | ℂ[[x]], a(x)=2x, χ(x)=0 | χ(a⁻¹x)=χ(x/2)=0 | Pass |
| A5.3 closure condition | continuous discrete module annihilator | open additive kernel is union of open cosets' complement, hence closed; closure adds zero action, still 0 | Pass |
| A5.4 module equivalence | Q₁ versus Uκ | Q₁ cyclic vector has I₁v=0; Uκ has x_N1=x_N≠0 for all N | Pass; only Q₁ extends continuously |
| A5.4 current pole | h-current on cyclic Q₁ vector v | z⁻¹ coefficient=h₀v≠0; on actual vacuum it is 0 | Pass repaired R01 |
| A5.4 binary normal product | h,h on that v | constant term=h₋₁²v+2h₋₂h₀v; on vacuum=h₋₁²v | Pass repaired R01 |
| A5.4 field derivative/residue | z^s; s=−1,0,2 | derivatives −z⁻²,0,2z; residues of derivatives all 0 | Pass |
| A5.4 density-detected center | scalar 2 versus e₀ | [2,x_n]=0; [e₀,f₀]=h₀≠0 | Pass |
| A6.1 FormalVertexAxioms positive model | ℚ[x], Y(a,z)b=a(x+z)b,T=d/dx | Y(1)=id; Y(x,z)1=x+z; T1=0 | Pass |
| A6.1 creation higher coefficients | a=x² over ℚ | coefficient z²=1=(1/2)T²x² | Pass; factorial nonzero |
| A6.1 covariance versus unshifted fields | F(z)=multiplication by x+z; wrong F=x | [T,F₀]=id=F₁; wrong F has F₁=0, so id≠0 | Pass; wrong model excluded |
| A6.1 formalMode indexing | vacuum and x in commutative model | 1_(−1)=id; x_(−1)=mul x, x_(−2)=id; x_(0)=0 | Pass |
| A6.1 locality | commutative ℚ[x]; Heisenberg h | N=0 gives zero commutator in first; second needs N=2 for central double pole | Pass |
| A6.1 Borcherds general formula | vacuum a=b=c=1, m=0,n=−1,r=−1 | LHS=1; RHS first i=0 term=1, all other terms=0 | Pass |
| A6.1 commutator specialization | Heisenberg h, m=1,n=−1 on vacuum | LHS=1; RHS=0+1=1 | Pass |
| A6.1 iterate/skew/translation | ℚ[x], a=x,b=x | Y(x,z)x=x²+zx; e^(zT)Y(x,−z)x=x²+zx; T(x²)=2x | Pass |
| A6.1 generic reconstruction | single field x+z on ℚ[x] | stable submodule containing 1 contains x^r for every r; reconstructed x-field has coefficients x,1,0,… | Pass mathematics; missing signature R02 |
| A6.1 zero-space boundary | V=0, vac=0,T=0 | all coefficients 0; both Borcherds sums 0; unique zero structure | Pass; zero object allowed by these axioms |
| A6.2 affine vacuum PBW | sl₂ weights 0,1,2 | dimensions 1,3,3+6=9 | Pass |
| A6.2 center definition | vacuum versus e₋₁vac at k=0 | all positive products on vacuum=0; f₀e₋₁vac=−h₋₁vac≠0 | Pass |
| A6.2 Sugawara noncritical | sl₂ k=1; E₈ k=1 | 3/(1+2)=1; 248/(1+30)=8 | Pass; locators R03 |
| A6.2 critical undivided S | sl₂ k=−2, x≠0 | x₁S=(k+2)x₋₁vac=0; quadratic PBW symbol nonconstant | Pass; divided conformal vector excluded |
| A6.2 coordinate action | φ=2t, x₋₁vac | x₋₁vac→(1/2)x₋₁vac; vacuum→vacuum | Pass |
| A6.3 deformation and flatness control | ℂ[[ℏ]] PBW vector v; truncation r=2 | ℏv≠0 before reduction; ℏ²v=0 modulo ℏ² | Pass; no false domain claim after reduction |
| A6.3 two completions | Σ_r≥1 ℏ^r x₋r vac | mod ℏ³ gives ℏx₋₁vac+ℏ²x₋₂vac; infinite PBW support prevents membership in graded free module | Pass |
| A6.3 compatible stage reduction | Σ_j≥1 ℏ^j e_j mod (I₃,ℏ³) | ℏe₁+ℏ²e₂ in either order of the two projections | Pass |
| A6.3 PBW section/product defect | central scalars z=2,w=3 | s(1)=1; s(6)−s(2)s(3)=0, hence defect 0 | Pass boundary; general section is construction target |
| A6.3 lift independence | z̃→z̃+ℏb, w central mod ℏ | bracket changes by [b,w] mod ℏ=0 | Pass |
| A6.3 divided commutator change | sl₂ b=e₀, test f₀ | difference of derivations=ad e₀(f₀)=h₀ | Pass, inner change retained |
| A6.3 central Poisson bracket | sl₂ m=2,n=−2 | 4S₀−(8−2)/2=4S₀−3; reverse=−4S₀+3 | Pass |
| A6.3 Jacobi/Leibniz controls | constants; central Poisson generator S₀,S₁ | {1,z}=0; {S₀,S₁²}=−2S₁²=2S₁{S₀,S₁} | Pass |
| A6.4 grading guard | p=q=1,n=0,1,2 | weights 1,0,−1; last value forced 0, not assigned to weight zero by toNat | Pass |
| A6.4 zero product positive/negative model | Heisenberg h | h_(0)h=0 in V₁; h_(1)h=1 in V₀ | Pass; wrong product excluded |
| A6.4 alternating headline | sl₂ x=e+f | [x,x]=h−h=0 | Pass |
| A6.4 Leibniz headline | sl₂ x=h,y=e,z=f | [h,[e,f]]=0; [[h,e],f]+[e,[h,f]]=2h−2h=0 | Pass |
| A6.4 morphism compatibility | identity; zero-space target | identity preserves h=[e,f]; zero map gives 0=[0,0] | Pass |
| A7.1 Heisenberg cocycle | B(h,h)=1, m=1,−1 | c(h₁,h₋₁)=1; reversal −1; zero-mode value 0 | Pass |
| A7.1 oscillator/Fock action | h₁h₋₁vac,h₂h₋₂vac,h₁h₋₂vac | 1,2,0 respectively | Pass |
| A7.1 Fock character | rank 1, weights 0…4 | partition counts 1,1,2,3,5 | Pass |
| A7.1 degenerate B and H | B=0 with h≠0; H=0 | contractions=0 but h₋₁vac≠0; H=0 gives Fock=𝕜,T=0 | Pass |
| A7.1 Heisenberg covariance/isometries | mode −2; h↦−h | [T,h₋₂]=2h₋₃; B(−h,−h)=B(h,h)=1 | Pass |
| A7.1 beta-gamma definitions | one pair and distinct roots | β₀γ₀vac=1; γ₁β₋₁vac=−1; cross-root contraction 0 | Pass |
| A7.1 beta-gamma regular pairs | β₀β₋₁vac,γ₁γ₀vac | both 0; γ₀²vac≠0 | Pass |
| A7.1 beta-gamma translation/index | γ₀,γ₁ | [T,γ₀]=γ₋₁; [T,γ₁]=0; γ₀ is state mode −1 | Pass |
| A7.1 beta-gamma refined grading | γ₀^jvac, j≥0 | degree always 0, root weight varies with j; degree-zero dimension infinite | Pass |
| A7.1 big-cell polynomial action | e=∂,h=−2y∂,f=−y²∂ on y | [h,e]y=2=2ey; [e,f]y=−2y=hy | Pass |
| A7.1 Cartan correction | parameter λ=1, test constant 1 | h1=1,f1=y,[e,f]1=1; missing λy term gives 0 | Pass |
| A7.1 anomaly | −2:γβ: self-OPE | two contractions give 4·(−1)=−4; critical κc(h,h)=−4 | Pass; source sign misprint separate |
| A7.1 Wakimoto all levels | sl₂ k=1 and −2 | Cartan poles −4+2(k+2)=2 and −4; e/f double poles 1 and −2 | Pass |
| A7.1 wrong derivative correction | k=1, replace k∂γ by −k∂γ | e/f double pole −1 instead of 1 | Excluded |
| A7.1 Wakimoto PBW injectivity control | symbols e=β,h=b−2βγ,f=bγ−βγ² | β=1,γ=±1,b=±2 both give (e,h,f)=(1,0,1); coordinate pullback still dominant, not injective on points | Pass for theorem; source proof error recorded |
| A7.1 critical center image | critical sl₂ quadratic symbol | image in Cartan factor is b²/4 at PBW level; beta-gamma terms cancel | Pass |
| A7.1 screening nonzero | u=1,x=exp(2t) | δu constant=−1; x′ constant=2 | Pass |
| A7.1 screening kernel | q=u²−u′ in same example | δq constant=−2+2=0; δq′=0 | Pass |
| A7.1 wrong screening sign/zero operator | u²+u′; operator 0 | δ wrong q constant=−4; zero operator gives δu=0 instead of −1 | Excluded |
| A7.1 screening on vacuum/current image | vacuum and e-current descendant | S(vac)=0; intertwining gives S(e₋₁vac)=e₋₁S(vac)=0 | Pass; not equality with whole image |
| A7.2 invariant forms/Cartan dual | sl₂ h,h under trace pairing | κ₀(h,h)=2; inverse dual coefficient=1/2 | Pass |
| A7.2 jet homogeneous scaling | sl₂ P=tr(A²)/2,N=2 | P(t²A)=t⁴P(A); wN=4 | Pass |
| A7.2 jet rather than finite invariant | A(t)=h+t h, P=tr(A²)/2 | P₀=1,P₁=2; for h+2t h, same P₀=1 but P₁=4 | Pass, new jet information |
| A7.2 jet characters | sl₂ weights0…4; sl₃ weight4 | 1,0,1,1,2; sl₃ has P_(1,2),P_(1,0)²,P_(2,1), count3 | Pass |
| A7.2 Verma invariant strictness | sl₂, b̃₊ invariants | π₀ character weights0…2:1,1,2; (gr M₀)^b̃₊ has same 1,1,2; quotient kills degree-one generator | Pass, invariant character on both sides |
| A7.2 constant-g invariant comparison | finite sl₂ irreducible highest weight r | b₊-invariant highest vector has h-weight r; killed by h only when r=0 | Pass; local finite-dimensionality used |
| A7.3 critical vacuum center | sl₂ weights0…4 | 1,0,1,1,2; weight4 has T²S and S² | Pass |
| A7.3 noncritical and zero-level center | sl₂ k=1, x≠0; k=0,e-state | x₁S=3x₋₁vac≠0; f₀e₋₁vac=−h₋₁vac≠0 | Pass |
| A7.3 all-type normalization | B₂ dual root lengths | original coroot lengths 2,4; scaling dual form by r∨=2 gives normalized dual long length 2 | Pass |
| A8.1 generic mode relation | state a,t^r | Res(Y(Ta)t^r)=−r Res(Y(a)t^(r−1)); r=2 gives −2a[1] on both sides | Pass |
| A8.1 center stage/symbol cutoff | sl₂ w=2,N=1 | max surviving state index=2·1−1=1; S[2] acts by0; S[1] has nonzero quadratic zero-mode symbol | Pass |
| A8.1 higher-degree cutoff | sl₃ cubic w=3,N=2 | max index=5; coefficient at r=6 vanishes | Pass |
| A8.1 topology/cofinality | weights 2,3 and N=2 | cutoffs4,6 bounded by common6; common4 contained in both stage allowances | Pass |
| A8.1 adjoint versus left action | Q₁ cyclic v, h₀ | ad(h₀)v=0; left h₀v≠0 | Pass |
| A8.1 center quotient ideal | central z,w with z·v_N=0 | zw·v_N=wz·v_N=0; arbitrary noncentral analogue e_N f₋N v_N≠0 | Pass |
| A8.2 degree derivation | x_n,n=1,−1 | [−L₀,x₁]=x₁; [−L₀,x₋₁]=−x₋₁ | Pass |
| A8.2 HC quadratic | sl₂,k=1,λ=α/2,δ=0 | Q=2−1/2=3/2; Q/6=1/4 | Pass |
| A8.2 vacuum and critical controls | λ=δ=0; k=−2 | Q=0; critical denominator2(k+2)=0, division excluded | Pass |
| A8.2 restricted-series center | constant scalar coefficients z_j | z_j→0 in discrete scalars iff eventually0; series becomes a polynomial | Pass conditional on owned HC theorem |
| A8.2 separating original algebra | D′=d−Dκ, polynomial degree1 | d coefficient of D′=1; an element of original completion has d coefficient0 | Pass; intersection leaves constants |
| A8.3 selected FF generator | q=t⁻⁴,n=2 | q₋₄=1=Res(t³q dt) | Pass |
| A8.3 Poisson normalization | q=0,ε=t³,η=t⁻¹ | Res(η·(−ε‴/2))=−3; affine central bracket at (2,−2)=−3 | Pass |
| A8.3 nonlinear coordinate change | φ=t+t²,q=0, at t=0 | Schwarzian=−6; q^φ=−(−6)/2=3 | Pass |
| A8.3 scale point/function directions | φ=2t,n=1 | point coefficient L₁ scales 1/2; function S₁ scales2; inverse pullback matches | Pass |
| A8.3 cubic Miura sign | diag(1,1,−2) | tr(u³)=−6; tr((−u)³)=6=−tr(u³) | Pass |
| A8.3 loop fixation control | critical diag(t,t⁻¹), h₀ | h₀→h₀−4, matching −2Res tr(h²/t)=−4; h₀ itself is not central | Pass; no false fixation of all currents |
| A8.3 Hopf/matrix dictionary | diag(t,t⁻¹); identity | entry evaluations t,0,0,t⁻¹ and determinant1; identity entries δᵢⱼ | Pass |
| A8.3 moment/gauge direction | constant A=h,x=e | anchor [h,e]=2e; gauge tangent [e,h]=−2e; dH_e corresponds to −e | Pass |
| Source rescaling control | κ=2κ′, e₁,f₋₁ | printed K↦2K′ sends central bracket to4K′ versus K′; K↦K′/2 gives K′=K′ | Source error, roadmap uses correct reversed relation |
| Source anomaly sign control | sl₂ h=diag(1,−1) | Σ_α>0 α(h)²=4; κc(h,h)=−4; corrected equality is sum=−κc | Source misprint |
| Source PBW degree control | d=1,m=−1 | printed m−d=−2; actual weight d−m=2 | Source misprint |
| Source big-cell map control | u(y)=[[1,y],[0,1]], b=[[-y,0],[1,y]], y=±1 | Ad_u b=[[0,1],[1,0]] for both y; two preimages over a regular semisimple point | Source generic-injectivity error; dominance suffices |
| Source Borcherds parity control | vacuum fields, conformal m=n=−1,k=2 | printed reversal sign yields −4id versus0; corrected (−1)^k gives0=0 | Source misprint; roadmap sign correct |

The table contains 154 rows. It covers the sampled API blocks, every headline, all introduced object families and the source/finding witnesses. No false identity was found in the retained six Lean theorems. The generic field reconstruction prototype establishes statability, not a proof.

No computational algorithm, sorry-valued data, `set_option`, route-specific prime restriction, fabricated condition field or outside-folder edit was found. The current scope builds the existing affine programme rather than the removed lattice branch. The remaining ownership and acceptance-test defects are R01 and R02.

## Not verifiable

- **`kac-laplace`, Corollary 1, pp.645–647.** The service tried the PMC article, its PDF route and DOI `10.1073/pnas.81.2.645`. PMC returned browser-check HTML (`kac-laplace` lines 5–9); the publisher returned HTTP 403. Frenkel Proposition 4.3.9 (`frenkel-loop` lines 5514–5534) was read, but the original completion and invariant-function hypotheses cannot be certified from the primary source. This limitation is separate from the findings.
- **`virasoro-zulip`, message 491524778.** The cited URL returned the public-view application shell, without the message (`virasoro-zulip` lines 5–19). The separate VirasoroProject README (`virasoro-project` lines 294–320) and the two Mathlib design references were readable. They are design evidence, not a pinned implementation of the affine center theorem.
- Both unavailable texts are recorded once, under their existing IDs, in `needs-references.toml`. No review work was parked pending them. The source inventory remains the author's edit (R03).

## Source issues

- **Error** in frenkel-loop at §1.3.6, printed p.29: the source says for κ=λκ′, the identity-on-currents map sends K to λK′; it should be K↦λ⁻¹K′; affects a stated result.
- **Misprint** in frenkel-loop at equation (5.6-11), printed p.161: the source says the positive-root quadratic sum equals κc; it should be the negative of κc; affects the proof.
- **Error** in frenkel-loop at Proposition 7.1.1 proof, printed p.201: the source says the big-cell Grothendieck map and its jet map are generically one-to-one; it should be generically finite, with dominance and generic étaleness supplying the required injective pullback; affects the proof.
- **Misprint** in frenkel-loop at §8.1.1 after Corollary 8.1.2, printed p.225: the source says the degree of Pᵢ,ₘ is m−dᵢ; it should be dᵢ−m; affects nothing.
- **Misprint** in kac-vertex at equations (4.33) and (4.35), printed p.29: the source says the reversed-product sign is (−1)ⁿ; it should be (−1)ᵏ, where k is the product exponent; affects a stated result.
- **Misprint** in frenkel-loop at §1.3.5, printed p.28: the source says nondegenerate invariant forms constitute a one-dimensional vector space; it should be all invariant forms, with nondegenerate forms its nonzero elements; affects nothing.

The source witnesses are `frenkel-loop` lines 1405–1407, 1429–1431, 7053–7062, 8571–8575, 9597–9606 and `kac-vertex` lines 1453–1483. The two newly identified Frenkel proof passages were also inspected as rendered PDF pages. Numerical/matrix witnesses appear in the table; no published correction was located. These are source issues, not additional numbered findings against the roadmap.
