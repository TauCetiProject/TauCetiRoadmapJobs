# Review of AffineLieAlgebras (pull request #1201 at 9dfb928)

**Verdict:** needs changes

## R01 (P1) — Positive-current annihilation does not give the vacuum identities

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:578`: “has no negative powers of `z`”; :579: “`z^0`-coefficient `x_(−1) y_(−1) v`”; :585: “The vacuum module `Q_1 = Uκ/I_1`”.

**Claim:** A vector killed by `a_1` has the stated regular current and normal-product formulas, and `Q_1` is the vacuum module.

**Witness:** In `Q_1` for `sl₂`, its cyclic vector has `h_0v ≠ 0` by PBW. The two coefficients are `h_0v` and `h_(−1)²v + 2h_(−2)h_0v`, not `0` and `h_(−1)²v`.

**Repair:** Retain `Q_1` as the congruence-induced module, and distinguish it from `Vκ = Uκ/(Uκ·g[[t]])`. For a vector killed by `a_1`, say the current has at most a simple pole and give the constant coefficient
`x_(−1)y_(−1)v + x_(−2)y_0v + y_(−2)x_0v`.
The two original formulas hold with the stronger assumption `a_0v = 0`. On the exhibited `Q_1` vector the extra terms remain; on the actual vacuum all zero modes kill the vector, and both extra terms vanish. Keep both as discriminating Checks. This is a contradiction between Checks and the roadmap's own definitions, not a failure of the general field construction.

## R02 (P1) — Split the circular layer dependencies

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:353`: “A4.1 for `Uκ`, `I_N` and `Ûκ`”; :449: “*Needs:* A2.1, A3.1”; :382: “`Q_M = Uκ ⊗_(U(a_M)) ℂ`”.

**Claim:** A1 → A2 → A3 → A4 is a construction order, as asserted at :155.

**Witness:** A2's completed lifts require A4; A4 requires A3; A3 requires A2 and already uses A4's level algebra. At the declared layer granularity this is A2 → A4 → A3 → A2, not an order.

**Repair:** Separate the algebraic level quotient from its completion and construct it before A3.1. Keep the current-level loop lift in A2; put its UEA/completed extension after the completion. Make A3.2 depend only on the current lift, not the entire completed-lift target. A valid order is currents/extensions → algebraic level quotient → smooth polynomial/formal modules → completion → completed lifts/module equivalence. Also put A7.2–A7.3 before the center theorem using them, and separate the noncritical statement in A8.1 from the A8.2 proof that currently lists A8.1 as an input. Retesting the `Q_M` construction in this order supplies its algebra before induction, and supplies `Ûκ` before extending an automorphism to it. The repository dependency checker checks roadmap edges, not this internal cycle.

## R03 (P2) — Move the new lattice extension to Part II

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:8`: “Layer C7 constructs the vertex algebra of a positive even lattice”; :921: “Layer C7: positive even-lattice vertex algebras and ADE degree one”.

**Claim:** The existing affine-current/center roadmap acquires a new lattice-VOA branch in the same folder.

**Witness:** Main's `TauCetiRoadmap/AffineLieAlgebras/README.md:1` and its A1–A8 sections already specify the base programme. They contain no lattice-VOA branch. The new C7 is explicitly independent of the base center endpoints.

**Repair:** Move C7's additional lattice construction and acceptance signatures to `AffineLieAlgebrasPartII`, introducing the extension by explaining where the base A1–A8 stop. Import the base's generic vertex and Heisenberg foundations by section. Keep corrections to the existing base here. The A₁ weight-one comparison must have one owner, and no base target may depend on Part II. This is previous R02, still unrepaired; no readable repair report marks it settled as not actionable. The mathematics can be retained by this split, so the verdict is repairable rather than rejected.

## R04 (P2) — State the right-multiplication hypothesis for smooth vectors

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:487`: “an associative algebra `A` with a decreasing family of left ideals”; :498: “The smooth-vector submodule functor is right adjoint to the inclusion”.

**Claim:** The vectors annihilated by one of these left ideals form an `A`-submodule. The subsequent appeal to continuity of right multiplication does not assume that continuity in the setup.

**Witness:** Take `A = M₂(ℂ)`, `J_N = A E₁₁` for all N, and `M = ℂ²`. Smooth vectors are `ℂe₂`; `E₁₂e₂ = e₁`, while `E₁₁e₁ = e₁ ≠ 0`.

**Repair:** For this API assume explicitly `∀ b ∈ A ∀ N ∃ M, J_M b ⊆ J_N`, in addition to the directed/decreasing condition. Alternatively assume a topological algebra and a left-ideal neighbourhood basis, and prove that estimate from continuous right multiplication. Carry it to the coreflection/products/coinduction prerequisites. The displayed control fails the estimate since `E₁₁E₁₂ = E₁₂ ∉ A E₁₁`; for `ℂ[[x]]` with `J_N=x^N A` it holds with M=N. The Lean equivalence `genericSmooth_iff_continuous` only needs its existing additive-topological hypotheses and need not acquire an unnecessary multiplicative hypothesis.

## R05 (P2) — Keep the promised characteristic-zero vertex generality

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:56`: “Basic current and vertex theory is over a characteristic-zero field”; `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean:103`: “`[Module ℂ V]`”.

**Claim:** The generic vertex theory and its headline Borcherds and weight-one theorems are supplied at the stated field generality.

**Witness:** Every generic vertex/graded/zero-product signature fixes `ℂ`. The rational Heisenberg algebra has `[h_(1),h_(−1)]1=1` and satisfies the same axioms. Kac's standing field is arbitrary characteristic zero (`kac-vertex` line 51).

**Repair:** Parameterize the generic vertex structures, modes, Borcherds and weight-one theorems by a characteristic-zero field, and specialize to ℂ for the lattice and center applications. A scratch rational version of this entire signature block elaborates at the pins; no missing carrier prevents the broader statement. Over ℚ the creation coefficient for `T²a` is `1/2`, and the rank-one commutator remains `1=1`. Keep the positive even-lattice Fock space over ℂ as separately specified. Restricting the generality sentence instead would discard part of the requested general library.

## R06 (P3) — Finish the claim-level source locators and source inventory

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:222`: “The Whitehead lemmas”; :173–183: the first API; :1089–1091: the direct-sum/isometry claims.

**Claim:** The citations identify the exact statements supporting the targets and all cited works are recorded.

**Witness:** Whitehead is cited only as Weibel §7.8; the exact results are Corollaries 7.8.10/7.8.12, pp.245–246. Bakalov–Kac Proposition 4.1 is an isometry-lifting result, not the orthogonal-sum theorem. The folder has no `sources.toml`.

**Repair:** Add the Whitehead theorem/page locators; give the orthogonal-sum comparison its own locator or explicitly derive it from §4.1's field construction and the symmetric/group-algebra tensor comparisons. Supply locators at the uncited A1.1/A2.2/A2.3/A5.2–A5.4 construction/API claims, rather than relying on the bibliography. Record each cited work once in `sources.toml`, with the versions actually read and the legal-service provenance. On `V_0⊗V_0`, the direct-sum comparison must map `1` to `1`; an automorphism-lifting statement alone does not specify that comparison. The eight sampled API blocks and their source status are individually recorded below. Previous R07 is only partly repaired: the diagonal cocycle adapter is now correct, but these locator/inventory issues remain.

## R07 (P3) — Complete the definition Checks/APIs and unavailable-headline list

**Location:** `TauCetiRoadmap/AffineLieAlgebras/README.md:731–747`: the free-field prerequisites; `TauCetiRoadmap/AffineLieAlgebras/Suggested.lean:17–31`: the not-statable list.

**Claim:** Every introduced object has its API and three discriminating Checks, and every unavailable headline is named in the acceptance file.

**Witness:** A7.2 introduces beta-gamma fields, Wakimoto homomorphisms and screening operators, but its three Checks test only Heisenberg objects. The module docstring omits the vacuum reconstruction, Sugawara and critical deformation/Poisson endpoints of A6.2–A6.3.

**Repair:** Give those distinct A7.2 definitions their own source-backed API and at least three discriminating Checks, including signs, levels and a failure control; retain the general theory. For the beta-gamma pair, explicitly fix and compute its two ordered singular contractions and a regular same-field pair. For screenings, include a rank-one nonzero value, an invariant killed, and the wrong-sign failure. The supplier's rank-one calculation gives `δu=−x`, `x′=2ux`, hence `δ(u²−u′)=−2ux+x′=0`, while `δu≠0`; reversing only the derivative sign gives `−4ux`. Name the omitted A6 endpoints and the polynomial/formal smooth-module equivalence in the docstring, with the missing carriers, without substitute theorems. Previous R08 is partly repaired: headings, per-layer endings and Needs lines now exist, but a subsection-wide set of three Heisenberg Checks does not test every newly introduced construction.

## Verified sound

This is an independent AI review of the full folder, including inherited A1–A8 and the new C7, not an approval. Every subsection and all 23 Lean declarations were read. Finite computations below are adversarial tests, not proofs of the general center or reconstruction theorems.

**Previous review, finding by finding.** Quotations below are from this head.

| Previous finding | Passage at this head | Assessment |
| --- | --- | --- |
| R01: incomplete algebraic currents | README:180–183: “the embedding is surjective exactly when `L` is finite-dimensional”; :187–191 gives the independent-coefficient Cauchy sequence | Repaired. The general completion is retained, with the original negative control. |
| R02: Part II boundary | README:8–10: “Layer C7 constructs …”; :160: “no A-layer consumes C7” | Not repaired. Independence is now explicit, but the extension is still in the existing folder; R03 above. |
| R03: duplicate supplier results | README:760–763: “Consume FormalConnectionsOpers F4.3's … group versus Lie-algebra invariants”; :1131–1132: “Consume ReductiveGroups §9A.1a's theorem” | Repaired. Both exact owner passages were reopened. The retained jet and VOA comparisons are additional work. |
| R04: missing Whitehead signatures | README:223–226: “prove `complexWhitehead_one` … and `complexWhitehead_two`”; Lean:48,60 | Repaired. Both elaborate with finite dimension, semisimplicity and the module action in scope. |
| R05: unmarked orthogonal-sum substitute | Lean:26–30 names “the graded vertex-algebra isomorphisms” and the missing field/tensor carriers | Repaired. The bare `Nonempty` linear-equivalence substitute is gone. README:1103–1104 rejects −id on rank zero. |
| R06: acceptance padding | Lean:9–15 lists its eight retained theorem signatures; none of the previously identified wrappers remain | Repaired for the identified declarations. Eight new one-tactic probes found no closure. Definitions are used by retained headline statements. |
| R07: locators/diagonal cocycle | README:956–960: “Diagonal convention adapter” with `c(a)` and `(4.1)` | Partly repaired. A₁ and A₂ computations verify the adapter. Unidentified note attributions are gone. Remaining locator/inventory issues are R06. |
| R08: roadmap shape | README:13,54,81,153 and nine layer headings; each layer now has Examples/Dependencies | Partly repaired. API/Checks/Needs structure is present, but distinct free-field objects still lack their own checks; R07. |

**Mechanical evidence.** Head independently confirmed as `9dfb9288681bcd97faacb3f573b43dec50e517f4`. The outside-folder diff and final worktree status are empty. No pull-request file was changed. The supplied gate passes every check, including the targeted module build; there is no failing gate check to turn into a finding. Independently running `lake env lean` on `Suggested.lean` returned exit 0, **eight declaration-uses-sorry warnings and no other warnings**. No imported object needed rebuilding. There is one `import Mathlib`, two used Tau Ceti imports, 299 lines, eight theorem admissions, no admitted data, no `set_option`, and no admitted examples.

A scratch copy with `#check @name` for **all 23 declarations** elaborated once. Comparison with the README found **zero dropped section binders**. In particular, Whitehead retains both finite dimensions and semisimplicity; smooth/continuous retains `IsTopologicalAddGroup` and `HasBasis`; the lattice's positivity/evenness are carried by `D`. The coefficient-field mismatch in R05 is explicit in the declarations, not binder loss. The eight admissions were each tried with `simp`, `rfl` and `infer_instance` as independent closing alternatives on a copy: all eight failed. Object searches at the pins found no one-library-lemma proof of these general endpoints. No new padding finding is raised.

Dependency command output:

```text
depcheck: 204 roadmaps, 1448 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line was printed. All Needs lines and supplier citations were also read manually. There are no declared supplier gaps. R02 concerns the internal target/layer graph, which this output does not certify. The automated unresolved-name lead `SignedADE.normalizationSign` resolves to main `TauCetiRoadmap/ReductiveGroups/SignedADETargets.lean:199`; it is a roadmap declaration, not an absent pinned-library declaration.

**Seeded source sample: all nine targets.** The eight indistinguishable “API” labels exhaust the eight actual `**API.**` headings, so all eight were checked. There are no locators marked unverified in this README. Sources were retrieved through the source service; no source passage was copied into the roadmap or this report.

| Sample and location | Source text actually read | Outcome |
| --- | --- | --- |
| API, A1.1, README:173 | Main FormalLaurentPuiseux L1; Mathlib loop tensor carrier and coefficients | Scalar topology is supplied. The arbitrary-L completion comparison is new affine work, with correct independent-coefficient control. Claim-level mathematical locator absent: R06. |
| API, A1.2, :204 | Mathlib `Cochain.lean:101,123,143,156`; `Loop.lean:127`; `frenkel-loop` lines 1386–1417, Lemma 1.3.2, pp.27–28 | CE signs and −Res match. Separate continuity plus a square neighbourhood killed gives joint continuity by bilinear expansion. |
| The Whitehead lemmas, :222 | `weibel` lines 985–1023, Corollaries 7.8.10/7.8.12, pp.245–246; pinned complete reducibility | Both vanishing statements have the stated hypotheses. The roadmap's projection proof is an additional derivation, not Weibel's literal proof; its cochain sign was recomputed. Exact theorem/page locators should be inserted. |
| API, A2.1, :302 | `frenkel-loop` lines 1412–1437, §§1.3.5–1.3.6, pp.28–29 | Scalar classification, positive splitting and nonzero universal extension supported. Arbitrary discrete kernels are separately requested with a continuous coboundary construction; scalar H² alone is not presented as that construction. |
| API, A4.1, :451 | `frenkel-loop` lines 1622–1640, §2.1.2, p.34 | Left-ideal/module quotient completion and discrete continuous action agree. The roadmap adds needed detailed multiplication estimates. |
| API, A5.1, :494 | Same Frenkel passage; native coextension/adjunction | Source concerns the actual topological completion. It does not justify a smooth-vector submodule for an arbitrary decreasing left-ideal family: R04. |
| API, A6.1, :617 | `kac-vertex` lines 155–191 (p.5), 904–939 (p.18), 1309–1321 (p.26), 1453–1483 (p.29) | Locality, translation, reconstruction, skew symmetry and commutator/iterate routes match, after mode reindexing. The roadmap's Borcherds sign is correct; the source's p.29 parity misprint is recorded below. |
| API, C7.1, :945 | `bakalov-kac` lines 380–401 (p.8), 448–463 (p.9), equations (4.1)–(4.7), (4.18)–(4.20), Proposition 4.1 | General sign-cocycle algebra and isometry lift supported. The roadmap explicitly supplies the nonidentical diagonal convention's correct cochain adapter. |
| API, C7.2, :991 | `bakalov-kac` lines 389–397, equations (4.4)–(4.6), p.8 | Heisenberg action, charge-zero embedding and charged zero mode agree. Spanning follows from the actual symmetric-algebra and finite-support carriers. |

Other source checks included Bakalov–Kac Theorem 4.1 and (4.12)–(4.16), p.9 (`bakalov-kac` lines 418–447); Frenkel Proposition 4.3.4, pp.121–123 (`frenkel-loop` lines 5355–5435), Proposition 4.3.9, p.125 (lines 5514–5534), and the character argument in §8.1.1, pp.222–225 (lines 9480–9608). The Bakalov–Kac version is arXiv:math/0402315v3; Kac's lectures are arXiv:1512.00821v2. The stated page numbers match those versions. The direct-sum claim needs a separate source/derivation, as R06 explains. Frenkel's Wakimoto paper and Les Houches notes were retrieved as additional references; they were not substituted for the sampled locators.

**Pinned library and ownership evidence.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths in this table are relative to their respective library repositories.

| Opened file/line | Object and precise contract |
| --- | --- |
| Mathlib `Mathlib/Algebra/Lie/Loop.lean:127,183` | `LoopAlgebra.residuePairing`, `twoCocycleOfBilinear`: second mode index, +Res; the affine convention must use −κ. |
| Mathlib `Mathlib/Algebra/Lie/Cochain.lean:101,118,123,143,156` | `d₁₂`, trivial-action evaluation, `d₂₃`, `d₂₃_comp_d₁₂`, `twoCocycle`: actual alternating cochains and kernel. |
| Mathlib `Mathlib/Algebra/Lie/Extension.lean:135,243,395,427,439` | Cocycle extension, section cocycle, and section-change cochain/coboundary; continuous extensions are additional structure. |
| Mathlib `Mathlib/Algebra/Lie/CartanCriterion.lean:256` | `HasTrivialRadical.instIsKilling`, under the characteristic-zero/free/Noetherian setup, applicable in finite dimension over ℂ. |
| Tau Ceti `TauCeti/Algebra/Lie/HighestWeight/CompleteReducibility.lean:259` | `exists_isCompl_of_isKilling`: finite-dimensional module and finite-dimensional Killing Lie algebra over a characteristic-zero field. Does not itself state Whitehead. |
| Mathlib `Mathlib/Algebra/Vertex/HVertexOperator.lean:47,65,73,90` | Linear map into a Hahn module, coefficients, PWO support and reconstruction from coefficients. Does not include vacuum, locality, covariance or a grading. |
| Mathlib `Mathlib/Algebra/Category/ModuleCat/ChangeOfRings.lean:519,530,658` | Algebraic coextension carrier and restriction/coextension adjunction; no automatic continuous-part coreflection. |
| Mathlib `Mathlib/CategoryTheory/Preadditive/Injective/Basic.lean:334`; `Mathlib/Algebra/Homology/DerivedCategory/Ext/EnoughInjectives.lean:125` | Enough injectives through an adjunction; `HasExt` in the selected locally-small Hom universe. |
| Mathlib `Mathlib/RingTheory/Flat/Basic.lean:258` | `Module.Flat.tensorProduct_mk_injective` requires `FaithfulSMul R S` and flatness of M, not faithful flatness of S. |
| Tau Ceti `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63,121` | Full finitely generated integral lattice with symmetric rational form; finite-dimensional ambient space follows. Positivity/evenness are not stored here. |
| Tau Ceti `TauCeti/LinearAlgebra/IntegralLattice/Signature.lean:120,175`; `PosDef/Finite.lean:85` | Positive-definite characterization, nondegeneracy, bounded-shell finiteness without unimodularity. |
| Tau Ceti `TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Injective.lean:222`; `PBW/Embedding.lean:53` | PBW associated-graded equivalence and UEA generator injectivity for free modules. |
| Tau Ceti `TauCeti/Algebra/AlgebraicGroup/SpecialLinear/Basic.lean:195,380,402,445` | Coordinate Hopf algebra, point/matrix equivalence, ambient GL inclusion and coefficient naturality. |
| Tau Ceti `TauCeti/Algebra/AlgebraicGroup/GeneralLinear/Coordinate/HopfAlgebra.lean:491` | `GeneralLinear.genericMatrix`; its defining file is this one, re-exported through the special-linear imports. |

The roadmap service was used for object searches and to open the new KacMoody roadmap; main, board package READMEs/plans and the supplied relevant open checkouts were also searched. No second owner of the lattice-VOA construction or identical fully qualified Lean declaration was found. Main FormalLaurentPuiseux and Completed/IntegralLattices were read as shape/context examples. Main's existing AffineLieAlgebras was compared with the extension. Revising open RootSystems/RepresentationTheory/ReductiveGroups heads were not substituted for their main contracts.

| Resolved cross-roadmap contract | Evidence and direction |
| --- | --- |
| FormalLaurentPuiseux L1–L3 | Main `TauCetiRoadmap/FormalLaurentPuiseux/README.md:14–48,48–114`: scalar Laurent topology, substitution and differentials/residues. The affine L-coefficient completion remains new work. |
| LieHighestWeight Layers 1,3,5,7 | Main `TauCetiRoadmap/RepresentationTheory/LieHighestWeight/README.md:351,405,567` and Layer 7: Cartan/root spaces, UEA/highest-weight, complete reducibility and finite HC/Chevalley theory. |
| RootSystems finite ADE and integral data | Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:321,356`: Layers 5–6 resolve the less precise supplier prose. |
| IntegralLattices | Main `Completed/IntegralLattices/README.md:30–42,162,327`: lattice carrier, form/positivity and ADE examples; pinned implementation handles the basic predicates and bounded shells. |
| ReductiveGroups §9A.1a | Main `TauCetiRoadmap/ReductiveGroups/README.md:1125–1228`; `SignedADETargets.lean:199,211`: norm-two shell, ordered cover, raw bracket, inverse-lift signs and integral basis. New VOA comparison differs from its elementary Jacobi proof. |
| FormalConnectionsOpers F1–F3 | Supplied new head `TauCetiRoadmap/FormalConnectionsOpers/README.md:875–904`: congruence groups, BCH exp/log and finite jets. All-R assertions include nonreduced coefficient algebras. |
| FormalConnectionsOpers F4.3 | Same file :1461–1475,1518–1538: connected rational invariants, Chevalley adapter, principal slice and codimension. These targets are consumed rather than reconstructed. |
| FormalConnectionsOpers F5–F8 | Same file :2126–2154,2210–2246,2379–2426, together with F5's oper coordinates: KdV bracket, inverse dual Cartan form, Miura sign, completed modes and coordinate action. The exports specify AffineLieAlgebras as the quantum-center owner; there is no reverse supply edge from the classical constructions. |
| GeometricRepresentationCategories | Main `TauCetiRoadmap/GeometricRepresentationCategories/README.md:38–45,112–121,285–342` and R5.3: downstream continuous categories, coherent actions and finite-Artinian/deformation adapters. Not a prerequisite of this roadmap's A5 foundations. |
| NoncompactQuantumSymmetry P.4 | Supplied new head `TauCetiRoadmap/NoncompactQuantumSymmetry/README.md:453–486`: explicitly extends this base's complex Whitehead endpoint to arbitrary characteristic-zero fields. Not imported back as a supplier. |
| KacMoody §1.5 | Supplied new head `TauCetiRoadmap/KacMoody/README.md:437–474`: consumes base A2's polynomial extension, agrees on −Res and `[d,x_n]=nx_n`. General presented Verma/root theory is its separate direction. No new KacMoody prerequisite is added to this existing base. |

No ownership claim is made against open work for which the brief did not supply a checkout. Board package searches found no additional lattice-VOA owner; the generic Whitehead request in GlobalGaloisDeformationsPartII's design is a supplier request, not evidence that this base's complex theorem is already implemented elsewhere.

**Headline inventory and acceptance coverage.**

| README headline | Acceptance status |
| --- | --- |
| A1 finite-dimensional Whitehead H¹/H² | Both explicitly stated on native cochains. |
| A1 continuous H² classification; A2 universal residue extension | Named unavailable: missing topological currents/continuous cochains. Arbitrary discrete kernels remain a genuine target, not a finite-dimensional substitute. |
| A3 polynomial/formal smooth equivalence; rational congruence integration | Integration named unavailable. Polynomial/formal equivalence needs its own docstring entry (R07). |
| A4 complete level algebra; A5 smooth/completed module equivalence | Completion named as missing construction; module equivalence named unavailable. The generic native-ring adapter is stated in addition. |
| A6 Borcherds/reconstruction; vacuum VOA/Sugawara; critical deformation/Poisson | Borcherds stated. The actual vacuum, conformal and deformation endpoints need explicit unavailable entries (R07); generic field generality is R05. |
| A7 vacuum scalar/critical centers and screening/jet proof | Centers named unavailable. Sources and source-specific proof steps were read; no arbitrary-function substitute appears. |
| A8 noncritical/critical completed centers, exact Feigin–Frenkel and loop action | Named unavailable through the missing completed algebra. These remain headline targets with exact generator/Poisson conventions in the README. |
| C7 lattice VOA/conformal structure, tensor/isometry transport, ADE comparison | Named unavailable with field/tensor/signed carriers. Bare unmarked-equivalence substitute removed. |
| C7 finite-dimensional/internal Fock grading and generic weight-one Lie structure | Four explicit headline theorems; the bilinear zero product has a real body using the actual field coefficient. |

**Adversarial computations: 151 rows.** Here `v` is the indicated cyclic vector, `x_j=h(−j)`, and brackets on `sl₂` satisfy `[h,e]=2e`, `[h,f]=−2f`, `[e,f]=h`. Each row records computed values, including rejection controls; “pass” means that computation found no defect. Multiple independent laws are separated where their values differ. Field/zero-ring, bad-characteristic, inseparable and analytic-compactness tests are applied only where admitted by the statement: field hypotheses exclude the zero ring, characteristic zero excludes F₂/F₃ factorial division, and the affine coefficients are discrete, not analytically topologized.

| Statement | Instances tried | Computed sides/values | Result; change |
| --- | --- | --- | --- |
| A1.1 algebraic current coefficients | L=0; L=ℂe | zero carrier has all coefficients 0; `(1−t)⁻¹⊗e` has coefficient e at every n≥0 | Pass |
| A1.1 completion, finite/infinite dimension | sl₂; ⊕ℂe_n | sl₂ series use 3 coefficient directions; Σtⁿe_n uses infinitely many, absent from algebraic tensor but present in limit | Pass; old R01 repaired |
| A1.1 inverse-limit comparison | compatible truncations of Σtⁿe_n | component modulo a_N is Σ_(n<N)tⁿe_n; adjacent projection gives exactly preceding component | Pass |
| A1.1 order bracket | e_t,f_t⁻¹ | bracket h₀ has order 0=1+(−1), not ≥1 | Pass |
| A1.1 dense polynomial image | Σ_(n≥0)tⁿe | truncation error starts at N; infinite support excludes polynomial image | Pass |
| A1.2 cochain differential | trivial sl₂ coefficient, f(h)=−1 | d₁₂f(e,f)=1; d₁₂f(h,e)=0; d₂₃d₁₂f(h,e,f)=−2+2=0 | Pass |
| A1.2 continuity criterion | coefficient c(f,g)=f₀g₁−f₁g₀ | c(1,t)=1; c(a₂,a₂)=0; both fixed-variable maps kill a₂ | Pass |
| A1.2 residue sign | h₁,h₋₁; e₁,f₋₁ | −Res(t d(t⁻¹))κ gives 2 and 1; reversed h pair −2 | Pass |
| A1.2 alternation control | wrong Res(fg dt), h₀,h₋₁ | ordered and reversed values both 2, sum 4≠0 | Rejects wrong model |
| A1.2 positive splitting | m,n≥0, including (0,0) | delta can contribute only m=n=0; coefficient m=0 | Pass |
| A1.2 coordinate invariance | t↦at, pair t,t⁻¹ | Res(at·d(a⁻¹t⁻¹))=−1=original residue | Pass |
| Whitehead H¹ | adjoint sl₂, ad h; L=0 | f(e)=2e=[e,−h]; f(f)=−2f=[f,−h]; zero L has f=0, v=0 works | Pass |
| Whitehead H² | sl₂ scalar cocycle | c(e,f)=1 equals −f(h) with f(h)=−1; other basis pairs 0 | Pass |
| Whitehead negative control | abelian ℂ², trivial module | c(e₁,e₂)=1; all d₁₂f(e₁,e₂)=0 | Semisimplicity necessary |
| Whitehead projection proof sign | adjoint sl₂; c=d₁₂id=bracket | φ_c(x)=ad x; ι(v)=−ad v; dφ_c(x,y)=ad[x,y]=−ι(c(x,y)) | Pass |
| A1.3 scalar class detection | h₁,h₋₁ | residue class value 2; every coboundary value 0 | Pass |
| A1.3 finite semisimple product | sl₂⊕sl₂ | independent factor cocycles values (2,0) and (0,2); dimension 2 | Pass |
| A1.3 non-simple control | abelian one-dimensional currents | coefficient cocycle on (1,t)=1; residue on (1,t)=0; both coboundary spaces 0 | Rejects simple-classification extension |
| A1.3 arbitrary discrete coefficient kernel | Z=⊕ℂz_j, class c·z₀ | value on h₁,h₋₁ is 2z₀; zero class gives 0; each pair has a genuine vector in Z | Pass test; not a proof of all-Z surjectivity |
| A2.1 extension bracket/perfectness | sl₂, κ₀ and 0 | [e₁,f₋₁]−[e₀,f₀]=K at κ₀; equals 0 at κ=0 | Pass |
| A2.1 section change | f(h₀)=1 | d₁₂f(e₀,f₀)=−1; c changes by −1 | Pass |
| A2.1 universal-kernel pushout | scalar kernel map K↦2z | c(h₁,h₋₁) maps to 4z; pushout cocycle also 4z | Pass |
| A2.2 h∨ and Killing | sl₂; sl₃ | 8=2·2·2 on h; Killing=6tr for sl₃ and h∨=3 | Pass |
| A2.2 level rescaling | κ′=2κ₀, K↦2K′ | image of h+K is h+2K′, equal to target bracket; pullback central character is 2 | Pass; source reciprocal error avoided |
| A2.2 zero central character | K acts 0 | central term mκK acts 0; ordinary current bracket remains | Pass; no Lie isomorphism killing K |
| A2.3 loop lift sign | diag(t,t⁻¹), e_n,f_−n | image bracket h+(n+2)kK; shifted-mode bracket same; wrong sign gives h+(n−2)kK | Pass |
| A2.3 constant loop | g constant | g⁻¹dg=0; central adjustment 0 | Pass |
| A2.3 substitution order | φσ=2t, φτ=t+t² | φστ=2t+4t²; opposite order 2t+2t² | Pass |
| A2.3 completed extension order | Uκ,Ûκ use | prerequisite declared in A4 after A2; 3-layer cycle A2→A4→A3→A2 | Fail R02 |
| A3.1 smoothness | Q_M cyclic vector; Uκ regular 1 | a_Mv=0; e_N·1=e_N≠0 for every N in Uκ | Pass |
| A3.1 polynomial/formal action | Σ_(n≥1)e_n, Q₃ generator | action=e₁v+e₂v; on a₁-killed vector 0 | Pass |
| A3.1 cutoff independence/Lie law | enlarge cutoff 3 to 4 on generator | new term e₃v=0; finite commutator on e₁,f₋₁ is h₀+k | Pass test; common cutoff estimates remain targets |
| A3.1 products | ∏_N ℂ[[x]]/(x^N), vector (1)_N | x^M component at N=M+1 is x^M≠0 | Ordinary product fails smoothness |
| A3.2 rational integration/exponential | e₁ on f₋₂v in Q₁ | exp(se₁)f₋₂v=f₋₂v+s h₋₁v−s²e₀v; composition at s,t gives coefficient −(s+t)² on e₀v | Pass polynomial orbit and additive action |
| A3.2 finite-jet orbit | e₁ on f₋₂v in Q₁ | successive values h₋₁v, −2e₀v, 0 | Pass, nilpotence exponent 3 |
| A3.2 no common integration | Q_(N+1), e_N | e_N^r v≠0 for all r by PBW | Pass; direct sum has no uniform N |
| A3.2 N=0 control | [[−1,1],[0,−1]] | eigenvalue −1 with nontrivial Jordan block; exp of traceless 2×2 matrix is either diagonalizable here or has eigenvalue +1 | Excludes K₀ exponential claim |
| A4.1 level quotient | k=0,1 | K_standard becomes 0 or 1; current brackets become [x,y] or [x,y]+mκ₀ | Pass |
| A4.1 ideals/transitions | I₂⊆I₁, e₁v | e₁∈I₁ but not I₂; Q₂→Q₁ sends its class to 0 | Pass |
| A4.1 non-two-sidedness | e_N f_−N | class h₀+Nk≠0, although e_N∈I_N | Pass |
| A4.1 right-shift estimate | b=f₋r, target N | choose M>N+r; [e_M,f₋r]=h_(M−r), central delta 0; both terms lie in I_N | Pass |
| A4.1 complete multiplication | fixed quotient Q_N, Σ_(r≥1)f₋r e_r | all tail terms r≥N vanish; π_N is finite initial sum | Pass |
| A4.1 arbitrary left coefficients | Σ P_r(A_r)_r | r≥N term in I_r⊆I_N regardless of P_r | Pass |
| A5.1 smooth property | A/(x²); Laurent module | x² kills every quotient vector; no x^N kills x⁻¹ | Pass |
| A5.1 continuous property/iff | same, x-adic topology | annihilator contains (x²), open; annihilator of x⁻¹ is 0, not open | Pass, both directions |
| A5.1 basis negative control | J_N=A, module A/x | smooth false since 1·1=1; continuous true, orbit kernel (x) | Pass |
| A5.1 smooth-vector submodule | M₂(ℂ), J=A E₁₁ | J e₂=0, E₁₂e₂=e₁, E₁₁e₁=e₁≠0 | Fail R04 |
| A5.1 zero ring/module boundary | zero module; zero ring's unital module | every orbit is 0, every annihilator condition true | Pass; actual general-ring signature allows it |
| A5.2 coinduction action | coefficient functional f_j on ℂ[[x]] | (x·f_j)(x^k)=δ_(j,k+1); x^(j+1)f_j=0 | Pass |
| A5.2 adjunction unit/counit | A/x, vector 1 | unit(1)(a)=a₀; evaluation at 1 gives 1 | Pass, injective unit |
| A5.2 continuous vs algebraic dual | f(x^k)=1 for all k | f(x^N)=1 for every N, so no open ideal in kernel | Pass control |
| A5.3 closed central quotient | A=ℂ[[x]], L=(x) | quotient ℂ; x acts 0 on both descriptions | Pass |
| A5.3 pullback direction | ℂ[y], a(y)=y+1, χ(y)=1 | χ(a⁻¹(y))=0; wrong forward pullback gives 2 | Pass |
| A5.3 closed annihilator | x-adic ℂ[[x]], v=1 in A/(x²) | annihilator=(x²), its closure=(x²); x²v=0 while xv≠0 | Pass |
| A5.4 smooth/completed equivalence | Q₁, cyclic v, h₀ and h₁ | recovered h₀-action is h₀v≠0; recovered h₁-action is 0, equal to original actions | Pass test |
| A5.4 current regularity Check | Q₁ cyclic v, h | coefficient z⁻¹=h₀v≠0, claimed 0 | Fail R01 |
| A5.4 normal-product Check | same, x=y=h | coefficient z⁰=h₋₁²v+2h₋₂h₀v; claimed h₋₁²v | Fail R01 |
| A5.4 vacuum identification | Q₁ versus induced vacuum | Q₁ has nonzero h₀v; Vκ has h₀vac=0 | Fail R01 |
| A5.4 repaired formulas | a₀-killed vacuum | z⁻¹ coefficient 0; normal constant x₋₁y₋₁vac+0+0 | Repair tested |
| A6.1 formal vertex axioms | ℂ[x], T=∂x | Y(x,z)1=x+z; T1=0; [T,multiplication x]=id=∂zY(x,z) | Pass |
| A6.1 wrong unshifted field | Y(x,z)1=x, T=∂x | creation z¹ coefficient 0 versus Tx=1 | Excluded |
| A6.1 normalized modes | commutative algebra, a=x | x_−1=multiplication x, x_−2=id, x_0=0 | Pass |
| A6.1 Borcherds | trivial commutative VOA, m=0,n=r=−1 | both sides act by abc; all i≥1 terms 0 | Pass |
| A6.1 Borcherds/commutator noncommutative | rank-one Heisenberg, m=1,n=−1 | [h₁,h₋₁]1=1; (h₀h)₀+(h₁h)₋₁=0+id | Pass |
| A6.1 derivative/operator covariance | a=x, n=−1 | (Tx)_−1=id; −n x_(n−1)=x_−2=id; [∂x,x]=id | Pass |
| A6.1 skew symmetry | a=x,b=1 in differential algebra | Y(x,z)1=x+z=e^(z∂)Y(1,−z)x | Pass |
| A6.1 general-field scope | rational differential algebra | Y(x,z)1=x+z, coefficient T²(x²)/2=1; ℂ-only signature cannot take this ℚ-module directly | R05 |
| A6.1 bad-characteristic control | formal creation at n=2 over F₂ | 2!=0, no inverse giving the required division; excluded by CharZero | Pass exclusion |
| A6.2 vacuum PBW grading | sl₂ weights 0,1,2 | dimensions 1,3,3+6=9 | Pass |
| A6.2 center criterion | k=0, e₋₁vac | h₀e₋₁vac=2e₋₁vac≠0 | Not central |
| A6.2 Sugawara charge | sl₂ k=1; E₈ k=1 | 3/(1+2)=1; 248/(1+30)=8 | Pass |
| A6.2 critical denominator | sl₂ k=−2 | k+h∨=0; divided conformal vector undefined, undivided S retained | Pass exclusion |
| A6.3 deformation specialization | sl₂, h₁,h₋₁ | bracket scalar 2(−2+ℏ)=−4+2ℏ; mod ℏ is −4, mod ℏ² retains 2ℏ | Pass |
| A6.3 full vs graded completion | Σ_(r≥1)ℏ^r x₋r vac | modulo ℏ³ only ℏx₋₁+ℏ²x₋₂; infinite PBW support forbids graded-free membership | Pass |
| A6.3 bracket sign/central charge | S₂,S₋₂ | 4S₀−(8−2)/2=4S₀−3 | Pass |
| A6.3 lift independence | z̃→z̃+ℏb, central w | change mod ℏ=[b,w]=0 | Pass |
| A6.3 divided derivation change | lift change by ℏb | new δ(a)−old δ(a)=[b,a], an inner derivation; for sl₂ b=h,a=e gives 2e | Pass |
| A7.1 noncritical vacuum center | sl₂ k=1, quadratic S | x₁S=3x₋₁vac≠0; at k=−2 coefficient 0 | Pass |
| A7.1 critical center character | sl₂ weights 0–4 | coefficients 1,0,1,1,2; weight4 basis T²S and S² | Pass |
| A7.2 Heisenberg cocycle | B(h,h)=1, modes ±1,0 | c(h₁,h₋₁)=1, reverse −1, c(h₀,h₀)=0 | Pass |
| A7.2 symmetry negative control | B(h,k)=1,B(k,h)=0 | skew-sum on h₁,k₋₁ equals 1≠0 | Excluded by symmetry |
| A7.2 Fock representation | h₁ on x₁² and x₂ | 2x₁ and 0; [h₁,h₋₁]x₁=x₁ | Pass |
| A7.2 degenerate B and H=0 | B=0; zero H | all contractions 0, commutative VOA; Sym(0)=ℂ | Pass, no hidden nondegeneracy |
| A7.2 Fock character | rank one weights 0–4 | partition counts 1,1,2,3,5 | Pass |
| A7.2 screening sign | u=1,x=e^(2t) formally | x′=2x; δ(u²−u′)=−2x+2x=0; δu=−x≠0 | Pass supplier convention; add Checks R07 |
| A7.3 finite/jet invariant distinction | sl₂ A(t)=h+th | P(A)=1+2t+t²; P₁=2 is not a function determined by P(A₀) alone across arbitrary A₁ | Pass |
| A7.3 scaling | P=tr(A²)/2, N=2 | P(t²A)=t⁴P(A); wN=4 | Pass |
| A7.3 invariant characters | sl₃ weight4 | generators of weights2,3 give P_(1,2),P_(1,0)²,P_(2,1): dimension3 | Pass |
| A7.3 opposite-Verma invariant character | sl₂ | π₀ character at weights0,1,2 is 1,1,2; vacuum-center quotient 1,0,1 | Pass numerical lower-bound control |
| A8.1 central stage cutoff | quadratic, N=1 | maximal state index from two current indices≤0 is 1; S[2]=0 in Q₁ | Pass |
| A8.1 cutoff with cubic | w=3,N=2 | maximal index 1+1+1+2=5; strict bound r<6 | Pass |
| A8.1 adjoint versus left invariants | class 1 in Q₁ | ad(h₀)1=0; left h₀·1=h₀≠0 | Correct distinction retained |
| A8.1 central quotient algebra | central z with π_N(z)=0 | π_N(zw)=w·π_N(z)=0 for central w | Pass, ideal inside center |
| A8.2 degree sign | x_n=e₁ | [−L₀,e₁]=e₁=[d,e₁]; [d+L₀,e₁]=0 | Pass |
| A8.2 HC quadratic | sl₂ k=1, λ=α/2, δ=0 | Q=2−1/2=3/2; Q/(2(1+2))=1/4 | Pass |
| A8.2 vacuum/critical controls | λ=δ=0; k=−2 | Q=0 gives HC=0 when noncritical; denominator0 at critical, excluded | Pass |
| A8.3 selected rank-one generator | q=t⁻⁴, n=2 | q_−4=1=Res(t³q dt) | Pass |
| A8.3 KdV/Poisson sign | ε=t³, η=t⁻¹, q=0 | Res(η·(−ε‴/2))=−3, matching central bracket of S₂,S₋₂ | Pass |
| A8.3 coordinate Schwarzian | φ=2t; φ=t+t² | Schwarzian0 in first case; at t=0 second has {φ,t}=−6, so q=0 transforms to q^φ(0)=3 | Pass |
| A8.3 scaling of points/functions | φ=2t,n=1 | point coefficient L₁ scales 1/2; function/mode S₁ scales 2, inverse pullbacks agree | Pass |
| A8.3 original critical loop lift | diag(t,t⁻¹), h₀,k=−2 | h₀→h₀−4; formula −2Res tr(h·h/t)=−4 | Pass |
| A8.3 Miura/cubic sign | diagonal u=(1,1,−2) | tr(u³)=−6; tr((−u)³)=6=−tr(u³) | Pass |
| A8.3 nonsimply-laced dual form | B₂/C₂ vectors e₁±e₂,2e_i | Euclidean lengths2,4; rescale invariant form by r∨=2 to normalize long dual roots | Pass stated inverse-form convention |
| C7.1 PositiveEvenLattice | Gram[2],[4],[1],[0],[−2],rank0 | first two positive even; [1] odd; [0] degenerate; [−2] negative; empty form vacuously positive even | Pass |
| C7.1 q and total Int.toNat | A₁ charge nb, n=0,±1,2 | norm/2=0,1,1,4; toNat preserves them; hypothetical negative norm would truncate, excluded | Pass |
| C7.1 ordered cocycle | rank0,A₁,A₂ | ε=1 in first two; ε(b₁,b₂)=1, reverse=−1 in A₂ | Pass |
| C7.1 cocycle associativity | A₂ a=b₁,b=b₂,c=−a−b | ε(a,b)ε(a+b,c)=−1; ε(b,c)ε(a,b+c)=−1 | Pass |
| C7.1 cover inverse/centrality | α=b₁+b₂, ε(α,−α)=−1 | (α,1)⁻¹=(−α,−1); product=(0,1); central τ squares to (0,1) | Pass |
| C7.1 twisted product | A₂, a,b | eᵃeᵇ=e^(a+b); reversed=−e^(a+b); triple both parenthesizations −e⁰ | Pass |
| C7.1 cochain transport | A₁ c(n)=(-1)^binom(n,2) | c(1)=1,c(−1)=−1,c(2)=−1; source product e¹e¹=e² maps to −e²=target product | Pass |
| C7.1 diagonal adapter | A₂ α=b₁+b₂ | ordered ε(α,α)=−1; q(α)=1; diagonal cochain multiplier+1 yields −1 | Pass |
| C7.1 isometry lift | A₁ b↦−b, ε=1,η=1 | both sides of cochain law1; twice applying lift sends eᵇ back to eᵇ | Pass |
| C7.2 ComplexAmbient | A₁, vector ib | complex-bilinear B(ib,ib)=−2; Hermitian alternative +2 | Pass, excludes wrong extension |
| C7.2 OscillatorGenerators | rank1, modes1,2 | x₁+x₂ has support{1,2}; zero generator has empty support | Pass |
| C7.2 oscillatorGenerator | n=2,h=b | coefficient at2=b, at1=0 | Pass |
| C7.2 oscillatorWordMonomial | empty; modes1,2 | 1; x₁x₂=x₂x₁, weight3 | Pass |
| C7.2 latticeFockMonomial | empty/b; mode2/0 | eᵇ; x₂e⁰; distinct charge supports b and0 | Pass |
| C7.2 FockSpace/spanning | rank0; A₁ | ℂ; e⁰+x₁eᵇ is sum of two actual monomials | Pass |
| C7.2 charged modes | A₁ h=b, charge b | h₀eᵇ=2eᵇ; h₁h₋₁e⁰=2e⁰ | Pass |
| C7.2 charge action | A₂ b₁,b₂ | e^b₂ e^b₁=−e^(b₁+b₂); reverse+e^(b₁+b₂) | Pass |
| C7.3 oscillator derivation | x₁² | δ(x₁²)=2x₁x₂; δ(x₂)=2x₃ | Pass |
| C7.3 charged translation | charge b and vacuum | Teᵇ=x₁eᵇ; T1=0 | Pass |
| C7.3 operator covariance | h=b,n=1 on eᵇ | [T,h₁]eᵇ=−2eᵇ=−h₀eᵇ; omitting charge term gives0 | Pass, wrong T excluded |
| C7.4 exponential coefficients | q=0,1,2 | E⁻ coefficients1,x₁,(x₁²+x₂)/2 | Pass |
| C7.4 negative-degree cutoff | q_J=−1 | coefficient0, not degree-zero coefficient1 | Pass explicit guard |
| C7.4 root sum fields | B(α,β)=−1 | zero mode εe^(α+β) from z⁻¹·1 | Pass |
| C7.4 opposite fields | A₁ α=b,β=−b | modes1 and0 are1 and x₁; higher n≥2 vanish | Pass |
| C7.4 nonnegative pairing | α=β=b | leading power z²; all n≥0 coefficients0 | Pass |
| C7.4 one-oscillator contraction | Y(eᵇ,z)x₁e⁰ | z⁻¹ coefficient−2eᵇ; z⁰ coefficient−x₁eᵇ | Pass |
| C7.4 two-oscillator contraction | Y(eᵇ,z)x₁²e⁰ | z⁰ coefficient `(1−4+2)x₁²+2x₂ = −x₁²+2x₂` times eᵇ | Pass, independently expanded |
| C7.4 binary normal product | two identity fields, mode−1 | only i=−1 contributes id; both tails0 | Pass |
| C7.5 locality | A₂ charges with pairing−1 | ε ordered signs+1,−1 cancel reversed expansion after one factor z−w | Pass |
| C7.5 Virasoro indexing | rank1, state indices3,−1 | [ω₃,ω₋₁]=4ω₁+1/2 id; conformal [L₂,L₋₂]=4L₀+1/2 id | Pass |
| C7.5 weight function | word modes1,2, charge b in A₁ | weight1+2+1=4; empty/zero weight0 | Pass |
| C7.5 finite weight spaces | A₁ weights0,1,2; rank0 | dimensions1,3,4; rank0 dimensions1,0,0 | Pass |
| C7.5 internal direct sum | e⁰+x₁e⁰+eᵇ | degree0=e⁰, degree1=x₁e⁰+eᵇ, others0; unique sum recovers vector | Pass |
| C7.5 dimension at one | rank0,A₁,A₂,E₈ | 0,1+2=3,2+6=8,8+240=248 | Pass |
| C7.5 central charge | A₁,E₈ | ranks1,8 equal affine level-one charges1,8 | Pass |
| C7.5 odd-lattice control | norm1 vector | q=1/2; ε(α,α)/ε(α,α)=1 but (-1)^B=−1 | Excluded by evenness |
| C7.5 orthogonal tensor comparison | rank0; A₁⊕A₁ | vacuum1→1, −id gives−1 and fails; central charge2=1+1 | Pass repaired marked target |
| C7.5 tensor-mode convolution | vacuum modes i=j=−1 | i+j=−2=n−1 gives n=−1, correct identity mode | Pass |
| C7.6 graded degree rule | p=q=1,n=0,1,2 | target degrees1,0,−1; final case vanishes, not truncated into V₀ | Pass |
| C7.6 weightOneZeroProduct | A₁ e,f,h | [e,f]=h, [h,e]=2e, [h,f]=−2f | Pass |
| C7.6 alternating headline | x=e+f | [x,x]=h−h=0 | Pass |
| C7.6 Leibniz headline | x=h,y=e,z=f | [h,[e,f]]=0; [[h,e],f]+[e,[h,f]]=2h−2h=0 | Pass |
| C7.6 wrong product control | rank1 Heisenberg h | h₀h=0 in V₁; h₁h=1 in V₀, so first product is wrong | Pass |
| C7.7 raw ADE comparison | A₂ a=b₁,b=b₂,α=a+b | root-sum coefficient+1, reverse−1; opposite α coefficient−1 on both carriers | Pass |
| C7.7 non-root bracket | A₂ a and a+b | B=1; 2a+b norm6, so both bracket prescriptions0 | Pass |
| C7.7 Jacobi/integral descent | A₁ h,e,f; integral basis vector | 0+2h−2h=0; 1⊗basis≠0 by flatness/faithful scalar action | Pass |
| C7.8 diagonal transport | s(a)=−1,s(b)=s(a+b)=1 | factor−1; identity signs give+1; opposite factor s(a)s(−a) | Pass |
| C7.8 no character assumption | s(a)=s(b)=1,s(a+b)=−1 | s(a+b)≠s(a)s(b), yet diagonal linear map invertible; bracket transported by factor−1 | Pass |

There are no computational-algorithm targets, sorry-valued data or route-specific prime exclusions in the reviewed folder. The displayed fields/partition formulas are mathematical coefficient identities, not executable procedures. The source and pinned declarations do not establish the unimplemented deep targets merely because these finite controls pass.

## Not verifiable

- **`kac-laplace`, Corollary 1, pp.645–647.** The source service and browser were tried at the cited PMC page and its PDF route, then the DOI `10.1073/pnas.81.2.645`. PMC supplied a browser-check page instead of the paper. Frenkel's use at `frenkel-loop` lines 5526–5534 was read, but the original completion, function class and hypotheses could not be certified from the primary text. The completed-center target is not rejected merely because this text is unavailable.
- **`virasoro-zulip`, message 491524778.** The service obtained the public-view application shell (`virasoro-zulip` lines 5–19), not the message. The independently readable VirasoroProject page describes Witt/Virasoro, central extensions and charged Fock representations; it does not verify the missing discussion or establish the affine endpoints at the pinned libraries.
- Weibel was initially unavailable from the publisher locator, then obtained legally from the MIT institutional chapter copy. It is **not** an outstanding source request. The unidentified “Construction11” and “semester-two” citations from the previous head no longer occur and are **not** requested again.
- The unavailable texts are listed once in `needs-references.toml`. No source manifest or pull-request file was edited, no publication action was taken, and the review was completed on the available evidence.

## Source issues

- **Error** in frenkel-loop at §1.3.6, printed p.29: the source says for κ=λκ′ the identity-on-currents map from ĝκ to ĝκ′ sends the central generator to λ times the target generator; it should be λ⁻¹ times the target generator; affects a stated result.
- **Misprint** in frenkel-loop at §8.1.1 after Corollary 8.1.2, printed p.225: the source says the degree of Pᵢ,ₘ is m−dᵢ; it should be dᵢ−m, consistent with its p.222 grading; affects nothing.
- **Misprint** in kac-vertex at equations (4.33) and (4.35), printed p.29: the source says the reversed-product sign is (−1)ⁿ; it should be (−1)ᵏ, with k the exponent indexing that product identity; affects a stated result.

These were checked in the fetched versions: `frenkel-loop` lines 1429–1431 and 9488/9597; `kac-vertex` lines 1459/1478. For the first, κ=2κ₀ and κ′=κ₀ would give central bracket images 4K′ versus K′ under the printed map, whereas K↦K′/2 gives K′ on both sides. For the degree typo, d=1,m=−1 gives printed −2 versus actual 2. For Kac's p.29 formula, take the vacuum fields (weight zero), m=n=−1,k=2: the printed sign gives −4id on the left and 0 on the right; (−1)ᵏ makes both zero. The roadmap's normalized Borcherds formula uses the correct sign. No published correction was located.
