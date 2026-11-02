# Repair record

## F01 (P1) — applied

Implicit Bessel match → explicit invariant quotient, normalized parameter equation, singular oper space, filtered quantization and specialized localization/eigenvalue theorem in README §4.0. Imported general opers and critical centers from their owners. Added half-canonical, vacuum-support and full-character flat specialization inputs, central descent, APIs and discriminating Checks. Updated Scope, supplier contracts, layer dependencies, sources and the acceptance-file missing-carrier explanation.

## F02 (P2) — applied

Unqualified Frobenius compatibility → the twisted deg(v)-fold global composition, with source bound s, target bound s+deg(v)κ(V), and level sufficiently large for the enlarged bound. Updated §3.1's statement, hypotheses, route and API together. Added the degree-two finite-field computation and explicit truncation bounds; the existing framing and infinitesimal Checks remain valid.

## F03 (P3) — applied

Theorem 2.1(iii), p. 7 → p. 6 in README §3.3 and the existing ghs manifest entry. The printed page begins at ghs line 249; clause (iii) occupies ghs line 266–269. Kept the distinct pp. 6–7 locators for Theorem 2.3 and Corollary 2.4. No duplicate source key was introduced.

## F04 (P3) — applied

Repeated dependency citations → one citation retaining all useful annotations in each list. Audited every Needs and layer-dependency list, including citations contained in a wider range. Repairs cover §§2.1–2.2, 3.6–3.7, 4.0, 4.3, 5.4, 8.2, 8.5–8.6 and layer summaries 0, 2–6 and 8. Separate targets retain their own input lists.

## Evidence and ownership

The missing identification is a separate theorem: xz line 2201–2205 states the de Rham comparison; xz line 2221–2234 constructs the invariant quotient and its degree-h equation. The oper singularities and quantization occur at xz line 2247–2276. Central descent is xz line 2283–2289. The choice λ=−π and subsequent Frobenius transport occur at xz line 2292–2304, after that comparison. The rigid-specialization contract cannot replace these steps.

The oper space uses the actual local oper subschemes: fixed nilpotent oper residue at zero and the DS pole bounds at infinity (zhu-fg line 950–991), preserving the Borel reduction rather than specifying only the underlying monodromy and slope. The specialized localization target now includes goodness, the half-canonical line, local vacuum supports, the global central action, flatness of the V-moment map and U(V)-flatness, the full-character specialization and untwist, nonzero clean extension and tensor-compatible Hecke eigenvalue. These are targets owned here, rather than assertions about what the oper or center suppliers already prove. The distinction between U(V) and U(V)^T matters: zhu-fg line 391–395 warns that specializing only over the oper algebra can leave the automorphic object too large; zhu-fg line 1008–1036 uses the full U(V)-character. Goodness, the half-canonical line and moment-map flatness are at zhu-fg line 888–921; the Hecke input and flatness condition are at zhu-fg line 377–443. The source is over ℂ; xz line 2243–2246 and line 2277–2289 supply the characteristic-zero coefficient descent and general semisimple extension used here. No restriction on the residue characteristic was added.

FormalConnectionsOpers is a new-roadmap open head; its F4–F5 and F8.4 supply intrinsic opers, DS coordinates, function algebras, evaluation and coordinate descent. AffineLieAlgebras exists on main: its A7–A8, rather than its progress revision, supply the critical vacuum and completed centers. Their mathematical text was opened and read. Neither supplies this specialized parahoric global comparison. Object searches through the roadmap service and the board design locate the corresponding later KloostermanSheavesAndBesselIsocrystals material in KB.2 and its G3 discussion. The specialized construction stays in this package before that design's later applications, consistently with the established ownership of §4.0. No supplier edge points back to that design, and no sibling file was changed.

The Frobenius correction follows lh line 1682–1688 and line 1870–1891, including the intermediate twisted discs, reindexing, bound growth and enlarged level. The parent GlobalShtukasAndFunctionFieldLanglands §2.9 explicitly permits truncation growth; §3.6 explicitly uses the residue-degree iterate. The compatibility, framing and coefficient-comparison routes were compared with these supplier statements.

The general supplier citations were re-resolved against main or available new-roadmap heads. In particular the existing contracts resolve to FunctionFieldArithmetic §§5.8, 6.4–6.6; SmoothRepresentationsOfLocalGroups §§SR.0.2, SR.1.3, SR.2.2, SR.3.3, SR.4.2 and the raw-parameter part of SR.5.2; ArithmeticGaloisRepresentations §§2.6, 3.1–3.4; DeligneWeightsAndPurity §§0.19, 5.11, 8.5, 8.17–8.18; LanglandsParameterStacks §§LP2e.15, LP2c.8; ReductiveGroupsPartII §§RG2.3, RG2.5.1–RG2.5.2; MotivesAndAlgebraicCycles §6.3; HeckeStacksAndLocalShtukas §§HS2.9, HS4.1, HS4.7; DiamondEtaleCohomology C0; and DiamondSixOperations §§S1.5, S2.1. The three p-adic gaps remain extensions of the stated RD sections, not claims that those sections already supply them. The twelve gap slugs and their contracts are unchanged. F01's new specialized prerequisites are owned as targets here, so no additional supplier gap is needed.

Upstream shape was compared with main's NilpotentOrbits, RepresentationTheory/LieHighestWeight and EtaleCohomologyFoundations. The existing nine-layer structure and all untouched targets were retained.

## Computed adversarial pass

Values below use q=4 unless another field is specified. These are computations testing definitions, conventions, target hypotheses and their APIs, not finite-test proofs of the general theorems. Conditional targets retain their stated supplier contracts. The new §4.0 constructions have their own API and at least three prose Checks each. No Check became a Lean declaration.

| Statement | Instances tried | Values computed | Result and change |
| --- | --- | --- | --- |
| Frobenius, Tate and residue-degree conventions | Tate line and dual; degree two | Eigenvalues 1/4 and 4 have weights −2 and 2; eigenvalue 2 becomes 4 while q becomes 16, with weight 1 on each side. | Conventions preserved. |
| WD conjugation convention | F=diag(1,4), Ne₁=e₀ | FNF⁻¹=N/4; inverse Frobenius conjugates N to 4N. | Downward geometric weight shift preserved. |
| Rank and cardinality conventions | Zero space; formal q=1 | Empty weight multiset; at q=1, 1=1^(w/2) for every w. | Positive rank and q≥2 qualifications retained. |
| §0.1 geometricity | G_m values 2, 3 and (3+4i)/5 | Weights 1, log₂3 and 0; conjugate squared modulus of the last value is 1. | Integer/all-conjugates tests distinguish the definitions. |
| §0.2 realization independence and inertia | Faithful adjoint versus trivial representation; S₃ with C₃ inertia | Adjoint weights (2,0,−2) versus one zero weight; transpositions before and after multiplication by a 3-cycle both have eigenvalues (1,−1). | Faithfulness and finite inertia retained; cyclic C₃ permits trivial Frobenius at q=4, whereas q=5 inverts C₃. |
| §0.3 purity | Same diagonal F, nonzero versus zero N | N:gr₂→gr₀ has rank 1 versus rank 0; the nonzero string is centered at weight 1. | Common weight is not imposed on every reductive faithful realization. |
| §0.4 uniqueness | Diagonal eigenvalue ratios 4 and 16 | Ratio 4 permits one length-two string up to conjugacy; ratio 16 permits none with weight gap 2. | At most one completion, not existence. |
| §1.1 twist decomposition | Constant values 3 and 1+i over 𝔽₂ | Trivial-class ranks 0 and 1; squared moduli 9 and 2. | Arithmetic twist classes differ from fixed-embedding modulus classes. |
| §1.2 boundary propagation | Constant eigenvalue 2; negative control 3 | Boundary/interior weights are 1 and 1 for value 2, including degree-two value 4; value 3 has noninteger weight log₂3. | An actual geometric anchor remains required. |
| §1.3 irreducible purity | SL₂ diagonal (2,1/2), then identity | Weight −1 line is e₂; E₂₁ preserves it and E₁₂ does not. Weights become (0,0) at the identity. | Lower parabolic sign agrees with increasing filtration. |
| §1.4 local purity | Normalized special rank two | Weights (−1,1), N rank 1; adjoint weights (−2,0,2). | Full monodromy retained. |
| §2.1 occurrence | Two one-dimensional excursion blocks with the same Hecke constituent | Total multiplicity dimension 2; each chosen block dimension 1. | Occurrence is a relation, not uniqueness of a parameter. |
| §2.2 rationality | Rational matrix with rows (0,2),(1,0) | Characteristic polynomial T²−2; eigenvalues ±√2. | Algebraic eigenvalues need not be rational. |
| §2.3 real part | Pairs (2,1/2) and (√2,1/√2) | Real exponents ±1/2 and ±1/4; weights ±1 and ±1/2. | Factor 2 in the weight pairing preserved. |
| §3.0 local excursion application | Trivial group and unramified G_m values 2,1/2 | Unit scalar 1; geometric reciprocity gives the specified values 2,1/2 and weights 1,−1. | Scalar excursion data do not reconstruct N. |
| §3.1 framing and gluing | GL₁ lattice z⁻¹O_v at degrees 1,2; square-zero base | Glued line degrees 1,2; ε survives in k[ε]/(ε²) and becomes 0 under reduction. | Framed direction and nonreduced deformation data preserved. |
| §3.1 Frobenius iterate | α∈𝔽₁₆ with α⁴+α+1=0 | α⁴=α+1≠α; α¹⁶=α. Local q_v-power and two global q₁-powers agree; one global power fails. | Added explicit degree-two Check and identity. |
| §3.1 bound and level | s=3, κ(V)=2, r=2; r=1 | Intermediate bounds 3,5,7; r=1 gives 3,5. | Target is s+rκ(V), with N chosen there. |
| §3.2 comparison | Trivial and Steinberg GL₂ at the same semisimple class | Pair (2,1/2) on both sides; N ranks 0 and 1 differ. | Equality remains semisimple. |
| §3.3 parameter operations | Product of two unit parameters; same rank-two support | Product unit 1·1=1; both rank-two classes have trace 5/2. | Parameter operations unchanged; only ghs page corrected. |
| §3.4 geometric representations | Trivial and Steinberg PGL₂; unramified value 3 | Both pairs (2,1/2) have weights ±1; value 3 gives log₂3∉ℤ. | Number-field model and parameter conditions retained. |
| §3.5 transport | √5 mapped to −√5 | Pairs (√5,1/√5) and (−√5,−1/√5) have equal absolute values, hence weights ±1. At q=4, √q=2 is fixed. | Normalization-cocycle contract retained. |
| §3.6 torus criterion | Unramified quadratic extension of residue cardinality 16 | Uniformizer value 2 gives induced eigenvalues ±√2 and weights 1/2,1/2; value 4 gives eigenvalues ±2 and weight 1 each. | q_E-normalized criterion retained; duplicate input removed. |
| §3.7 stability | Reducible rank-two principal series with support pair (2,1/2) | Trivial and Steinberg constituents share that pair; weights remain ±1. | Induction/Jacquet and model-descent inputs unchanged after deduplication. |
| §3.8 central character | Normalized GL₂ Steinberg; SL_p centre in characteristic p | Central character value 1 has weight 0; μ_p(F)={1}. | Smooth central-torus condition retained. |
| §4.0 invariant quotient | A₁ root coordinates (1,1),(1,0) | Products 1,0; scaling gives λ²,0. | New quotient includes zero; generic orbit comparison excludes it. |
| §4.0 parameter normalization | A₁, p=5, P(φ̃)=1 | Matched c=π²; wrong c=2π² differs by nonzero π² while both residues are N and slopes 1/2. | New parameter equation excludes residue/slope stand-in. |
| §4.0 sign | A₂, P(φ̃)=1; residue characteristic 2 or 3 | (−π)³=−π³, rather than +π³; difference 2π³≠0 in characteristic zero. | New odd-degree sign witness fixes λ=−π. |
| §4.0 oper singularity space | A₁ coefficients c=0,c≠0 and x² term | Infinity slopes 0,1/2,1 respectively; all have residue N at zero. | New oper space includes tame base point and rejects excessive slope. |
| §4.0 local oper bounds | A₁ invariant degree d₁=h=2; zero residue slice | Infinity DS coefficient pole bound is h+1=3; regular-singular zero slice has fixed N/t and regular remaining coefficients. A coefficient with pole order 4 at infinity lies outside the prescribed oper subscheme. | Local oper conditions are explicit, not a predicate solely on the forgotten connection. |
| §4.0 filtered quantization | A₁ commuting generators a,b | Invariant ab has PBW degree 2 and symbol value 1 at (1,1); twice the symbol gives 2. | New associated graded normalization excludes unit rescaling; algebra-map direction corrected contravariantly. |
| §4.0 localization action sign | E_η=d−λdt, λ=−π | Ordinary ∂ eigenvalue −λ=π; infinitesimal translation action −∂ eigenvalue λ=−π. | New sign Check relates exponential datum to the same invariant parameter. |
| §4.0 moment map and flat specialization | Open A₁ chart V≃A² | Dimensions V=2, T*V=4, fibre over a V-character=2. Fixing only the product of the two cotangent coordinates leaves one cotangent parameter. | New target includes moment-map and U(V)-flatness, half-canonical line and untwist. |
| §4.0 full versus invariant character | c=1, pairs (1,1),(2,1/2) | Both products are 1; their two character values differ. | New Check requires specialization over U(V), not only U(V)^T. |
| §4.0 Hecke eigenvalue | Unit representation and its tensor square | Eigenconnection d; tensor scalar 1·1=1. | New normalized eigenvalue target is tensor compatible. |
| §4.0 semisimple descent | SL₂→PGL₂ and μ₂ twists | Nontrivial Kummer monodromy −1 fails unipotence at zero; the extending trivial twist has +1. | New descent target keeps zero-boundary condition and uniqueness only up to isomorphism. |
| §4.0 Bessel tensor functor | Tensor unit, zero adjoint space, product A₁×G₂ | Unit rank 1/Frobenius 1; trivial-group adjoint rank 0; product conductors 1+2=3. | Revised route constructs de Rham identification before transporting Frobenius. |
| §4.0 adjoint rigidity | A₁; G₂ at p=2,3 | Bounds 3/2 and 14/6=7/3 give integer bounds 1 and 2; zero-boundary dimensions 1 and 2 force those conductor values and infinity invariant dimension 0. | Existing Checks recomputed with unchanged matched coefficients. |
| §4.0 local invariant transfer | A₄ adjoint image in characteristic 2 | Average character (3+3(−1)+8·0)/12=0. | Full inertia invariants, not adjoint irreducibility. |
| §4.0 trace comparison | q=4, pure adjoint A₁ | H¹_c root modulus ≤2 versus H²_c modulus 4; actual H²_c rank 0, H¹_c root 1/4, so L(T)=1−T/4. | Disjoint weights prevent cancellation; same local conductor transfer. |
| §4.1 embedding predicates | Salem unit-circle conjugate versus real conjugate | Absolute values 1 and approximately 1.72208. | Empty proper-parabolic list on a torus does not remove central unitarity. |
| §4.2 globalization | G_m with central character 1; nontrivial semisimple anchor | Torus gives exactly Π=1 and adjoint dimension 0; A₁ anchor has Swan 1 and infinity invariant dimension 0. | Infinitude stays restricted to nontrivial derived group. |
| §4.3 pseudo-globalization | PGL₂ Euler–Poincaré function | Traces on Steinberg and trivial constituent are 1 and −1; sum on the principal series is 0. | Nonzero trace does not isolate the discrete-series constituent. |
| §4.4 irreducible globalization | PGL₂ support of Steinberg | Local semisimple pair remains (2,1/2) with trace 5/2. | Common support conclusion retained. |
| §4.5 pure completion | Normalized rank-two special parameter | Weights −1,1 sum to 0 and are joined by rank-one N. | Arithmetic/adjoint distinction unchanged. |
| §4.6 geometricity of discrete series | Same parameter and a number-field model | Eigenvalues 1/2,2 are algebraic with weights −1,1. | Model hypothesis retained. |
| §4.7 discrete conjugates | Same rational Steinberg pair | Every embedding fixes 1/2 and 2; strict exponent inequality is unchanged. | Uses actual Jacquet exponents, not support alone. |
| §4.8 tempered conjugates | Geometric unit-circle value (3+4i)/5 | Both conjugates have squared modulus 1. | Geometricity hypothesis excludes Salem negative control. |
| §5.1 test family | Dual SL₂ exponent (1/4,−1/4) | Adjoint pairings 1/2,0,−1/2; standard pairings ±1/4. | Standard separator is necessary. |
| §5.1 local spherical theorem | q=16 at that exponent; zero A₂ exponent | Standard eigenvalues 2,1/2 give weights ±1/2; A₂ adjoint at zero has eight zero weights. | Half-integrality/zero conclusion retains sector and odd-unitary exception. |
| §5.2 lifts | Two SL₂ lifts differing by −I; characteristic 2 obstruction | Eigenvalue absolute values agree; constant-coefficient H² in characteristic 2 is 0, whereas μ₂ as a group scheme is nonreduced. | Finite central coefficient group and group scheme remain distinct. |
| §5.3 anchor integrality | Compact pair at a hyperspecial anchor | Eigenvalue moduli 1,1 give weights 0,0 before/after restoring that point. | Separate fixed-ι and arithmetic conclusions retained. |
| §5.4 generic Ramanujan | Noncentral G₂ control at q=4 | Positive-coroot values −1,2,−2,2,−2,−4 contain neither 4 nor 1/4; deleting the compact factor produces +4. | Central compactness is still essential; only dependency repetition changed. |
| §5.5 genericity | Tempered spherical PGL₂ versus trivial representation | Compact pair has moduli 1,1 and real part 0; trivial pair (2,1/2) has nonzero real part. | Genericity input and transfer contract retained. |
| §6.1 ellipticity | Split torus; split reducible GL₂; irreducible SL₂ | Quotient centralizer dimensions 0,1,0; irreducible SL₂ centralizer {±1}. | Elliptic does not mean trivial full centralizer. |
| §6.2 elliptic temperedness | Pure rank-two realization | All Frobenius moduli 1, so real exponents and weights both 0. | Semisimple/global central hypothesis retained. |
| §6.3 Lafforgue–Zhu | GL₂ moving standard; frozen dual factor | Central scalar acts with exponent 1 on standard, giving invariant rank 0; standard⊗dual has a scalar invariant of rank 1. | Full S_σ invariants and frozen factor retained. |
| §6.4 stack realization | Identity map; empty stack; constant eigenvalue 3 | R⁰id_! has rank 1; empty-stack images have rank 0; value 3 has noninteger log₂3. | Literal constant coefficients and conditional negative control retained. |
| §6.5 conditional integrality | Constant sheaf with identity witness | Eigenvalue 1 has integer weight 0; zero sheaf has no constituent weights. | Stack integrality remains an explicit additional contract. |
| §7.1 weak Arthur data | Trivial SL₂ and Frobenius diag(4,1/4) | N_ψ=0 but weights ±2 and an unbounded Weil factor. | Weak data do not include boundedness automatically. |
| §7.2 Arthur interface | Principal SL₂ with trivial Weil factor; complementary-series class | Weights ±1 for principal SL₂; q^(±1/4) gives noninteger weights ±1/2. | Prediction remains conditional/conjectural, not a constructed global ψ. |
| §7.3 compatibility | Residual trivial PGL₂ parameter; trivial realization | At degree one pair (2,1/2), polynomial 1−(5/2)T+T²; trivial realization has 1−T. | Good-place matching does not imply missing ramified compatibility. |
| §7.4 discrete hypotheses | Residual trivial representation | Same algebraic pair (2,1/2); a one-dimensional generalized block has dimension 1 even without reduced algebra. | Generalized eigenspaces remain allowed. |
| §7.5 rational descent | Full rational Hecke image with a quadratic simple module | T²−2 gives degree-two field of definition and eigenvalues ±√2. | Finiteness at fixed level concerns π with nonzero level invariants. |
| §7.6 Xue quotient | Ideal (T−a) in a polynomial Hecke algebra | Quotient dimension 1 and T-eigenvalue a, including transcendental a. | Finite codimension alone supplies no number-field model. |
| §8.0 strata and recognition | Trivial/Steinberg at q=4; degree-two comparison | Same semisimple pair (2,1/2); nilpotent ranks 0,1 differ. A root of exponent 1 has values 4,16 but q-place eigenspace dimension 1 each. | Full compact factor and normalized exponent comparisons retained. |
| §8.1 weight pattern | Residual rank-two standard realization | n(−1)=n(1)=1, total rank 2; dual reflects those entries. | Integer weights and local comparison hypotheses retained. |
| §8.2 complementary propagation | Sp₆ central and extraneous classes | Central weights ±1 each three times; extraneous weights −2,−1,0,0,1,2. | Recognition/classification inputs are unchanged after deduplication. |
| §8.3 weight array | Entries a(0,±1)=1; a(−2,−2)=3 | Margins 2δ₀ versus δ₋₁+δ₁; negative diagonal singleton gives 3δ₋₂ on both sides. | Row/column direction and negative indices retained. |
| §8.4 Property A | Empty, diagonal, symmetric and nonsymmetric arrays | Empty margins 0; a(2,1)=a(2,3)=1 gives greatest discrepancy 3 with column 1>row 0; a(1,0)=1 reverses this at 1 with column 0<row 1. | Natural coefficients, symmetry and finite support remain essential. |
| §8.5 multiplicity comparison | Sp₆; F₄ B₃ root profile | At weight 2, Sp₆ extraneous 1>central 0. F₄ adjoint dimension 52 has multiplicities (1,0,2) at weights (10,9,8), versus the contracted neutral profile (1,0,1). | Discrepancy direction preserved; named-orbit identification remains a supplier contract. |
| §8.6 elimination | Sp₆ profiles used as row/column margins; degree-two restriction | At 2, extraneous row 1>neutral column 0 contradicts Property A. Frobenius 2→4 with q 4→16 leaves weight 1; N→2N preserves rank in characteristic zero. | No automorphic base change or numerical-Frobenius equality is inferred. |

The newly introduced signs, map directions and specializations were also tested against the most plausible wrong constructions: λ=+π in odd Coxeter degree; rescaling the invariant by 2; forgetting the oper Borel; using only residue and slope; specializing over invariants rather than the full character; allowing a nontrivial central Kummer twist at zero; and replacing the residue-degree iterate by a single global operation. Each is excluded by a stated equation or Check. The trivial semisimple group has no Coxeter-factor division: its quotient and oper spaces are points, function algebra is the coefficient field, and adjoint space is zero. All slope divisions are on almost-simple factors with h≥2; π is nonzero and coefficients have characteristic zero.

## Checks and outcomes

- `lake env lean` on `packages/GlobalShtukasAndFunctionFieldLanglandsPartII/Suggested.lean`, run from the pinned content checkout: **exit 0, no output or warnings**. No Tau Ceti module is imported, so no module build was needed. No Lean process started for this task remains running.
- Mechanical local-signature inventory: **zero declarations** (definitions, instances, abbreviations, opaque declarations and theorems). Thus the requested scratch `#check @name` list has zero entries; there are no disappearing binders to compare and no changed Lean theorem signatures. Only the module docstring was extended to name the new missing-carrier headlines. The file retains one `import Mathlib`, one module docstring and the prescribed namespace, with no substitute theorems or padding.
- Pins were checked in the content manifest: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Object searches for opers, critical centers, Hitchin localization and Bessel/Kloosterman tensor coefficients found no native carriers making these headlines statable. The analytic Bessel function in Mathlib/Analysis/SpecialFunctions/Bessel.lean is a scalar special function. Mathlib/RingTheory/WittVector/Isocrystal.lean:113 supplies a module with a semilinear Frobenius equivalence, without a curve, connection or overconvergence. Neither replaces the missing objects.
- Dependency check: **exit 0**, complete output below. No UPWARD or CYCLE line, and no moved line.

```text
depcheck: 54 roadmaps, 608 edges, 0 problem(s)
```

- Resolver: **exit 0**. Its sole roadmap lead remains KloostermanSheavesAndBesselIsocrystals in Scope. The read-only board design exists and is named as a later consumer, not a supplier. No own Lean names are unresolved. The resolver reports it cannot inspect pinned Lake packages on its host; the pin checks above were performed directly in the provided checkout.
- Dependency-list audit, expanding the repeated section ranges within each individual list: **no remaining duplicate section citations**. Before/after inputs in §3.6 are {§3.3, §3.4}, with the §3.3 annotation retained. This cleanup changes no mathematical input; the two new supplier families belong only to F01's route.
- `git diff --check`: **exit 0**. Sources manifest parses, all sixteen entries have the required descriptive fields and unique keys, and all twelve existing gap slugs remain present in Exact supplier contracts. No new gap or design edit was necessary.
- The added Zhu source was fetched legally through the sources service as arXiv v2 and is **certified**, with the existing cached extraction read directly. The title-only lookup encountered network trouble; the explicit arXiv citation succeeded. No missing reference remains and no uncertified locator is used for the new argument.
- No gate failures were separately listed in the brief. F01–F04 are all resolved by the changes above. Only README.md, Suggested.lean, sources.toml and this report were changed; metadata.toml and design/plan.json were left unchanged. No commits, pushes, pull-request edits or tooling changes were made.

## Maintainer consequences

No Lean declaration was added, removed or renamed. The existing semisimple Bessel/anchor ownership now includes its parameter identification and specialized localization proof. The later KloostermanSheavesAndBesselIsocrystals design should consume these constructions from §4.0 for its later applications. General oper and critical-center ownership stays with FormalConnectionsOpers and AffineLieAlgebras. The existing twelve supplier gaps remain conditions on their respective routes; this repair does not assert they are already implemented. A fresh independent review remains necessary.
