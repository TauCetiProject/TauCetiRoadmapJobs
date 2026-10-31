# Repair report

## F01 (P3) — applied

Abstract reconstruction and centre-map construction here → applications of LanglandsParameterStacks LP2e.15 and LP2c.8 to HeckeStacksAndLocalShtukas HS4.1/HS4.7. Updated Scope, both supplier contracts, §3.0 and Layer 3 dependencies. Retained the Bun_G application, its finite-wild-cutoff argument and Bernstein/local-cohomology comparison (fs line 12667, fs line 12683, fs line 12745); continuity cites LP2c.3–LP2c.4.

## F02 (P3) — applied

Implicit ownership → explicit boundaries in Scope: §3.0 owns the equal-characteristic Fargues–Scholze application; §4.0 owns the all-prime étale anchor needed by KloostermanSheavesAndBesselIsocrystals KB.1/KB.6/KB.7/KB.11. Section 3.1 imports HS2.9's analytic tower/period map and constructs its formal model and comparison. Updated its supplier contract and proof route (lh line 1316, lh line 1383).

## F03 (P3) — applied

Bare-array acceptance theorem → README-only auxiliary target. Deleted WeightArray, rowSum, colSum and propertyA from Suggested.lean and their declaration claims in §§8.3–8.4. The module explains why no headline is statable. Property A and all its hypotheses, proof route and discriminating Checks remain in §8.4 (ch26 line 1639).

## F04 (P3) — applied differently

Separate margin definitions → native Finsupp.mapDomain along coordinate projections, cited in the Mathlib contract, §§8.3–8.4 and Layer 8 dependencies. Both definitions disappear with F03 rather than retaining a rewritten array headline. The pinned definition is the sum of singletons over the original support (Mathlib/Data/Finsupp/Basic.lean:267).

## F05 (P3) — applied

Incomplete unavailable-headline list → explicit entries for Satake rationality, Beuzart-Plessis pseudo-globalization, the local spherical separator theorem and extraneous-point classification, each naming its missing carriers. The list also identifies the lisse category of Bun_G required by §3.0. No substitute theorem or data definition was added.

## F06 (P3) — applied

FunctionFieldArithmetic §5.10 → §5.8 in §4.0 and Layer 4 dependencies; the exact supplier contract now names §5.8 too. Its current head's “Quantitative Chebotarev in each degree” includes constant-field compatibility and the needed density consequence. No supplier gap was added.

## F07 (P3) — applied

Corrected §8.6→§8.4, §3.0→§3.3 for coefficient transport, its contract name, §§5.1–5.1→§§5.1 and 8.0, and Appendix A pp. 38–40→38–39 in README and manifest (ghs line 1789, ghs line 1834). Fresh citation resolution also required replacing every obsolete parent GS.n locator by its numeric heading throughout Scope, contracts, targets and dependencies.

## F08 (P3) — applied

Five purported owners → five topics expressly outside Scope. Deleted the nonexistent supercuspidal-parameters consumer. Main/open-head search found none of the six named roadmaps; board and merge-order searches likewise found no owners under those names. The real SmoothRepresentationsOfLocalGroupsPartII and LieHighestWeightPartII consumer references remain.

## F09 (P3) — applied differently

Extended §§4.2 and 4.4 to reductive groups with compatible fixed central character, retaining adjoint boundedness and semisimple arithmetic purity (ghs line 450, ghs line 495; glo line 19). Infinitude requires nontrivial derived group: a torus has only its prescribed character. Sections 8.2/8.6 require splitting at v; split-classification conclusions concern split w (ch26 line 234).

## F10 (P3) — applied

A purported unique global parameter of Π → every occurring excursion parameter to which Π belongs in §3.2 and §§4.2/4.4, including both proof routes. Local compatibility identifies every such restriction with the same local parameter. This follows at the excursion-algebra level (lh line 2126); multiplicity does not select a global block (ch26 line 1495).

## F11 (P3) — applied

Cyclic C₃ inertia with trivial Frobenius at implicit q=5 → explicit q=4 and a q=5 negative control. For q=4 the action on C₃ is trivial; for q=5 it is inversion, and trivial Frobenius forces σ=σ⁻¹, hence σ=1. The nonabelian S₃ example stays at q=5.

## F12 (P3) — applied

Unqualified Brauer obstruction → H² with constant coefficient group μ₂(ℚ̄_ℓ)={±1}. The Check distinguishes odd-p Kummer/Brauer identification from characteristic-2 vanishing, and the nonzero-obstruction Check now specifies odd p. Deleted the duplicate lift Check. Added one legal Stacks source: stacks-as line 1410, stacks-as line 4359 and stacks-as line 4444.

## F13 (P3) — applied

Deleted the twenty specified later duplicate bullets in §§0.1, 0.3, 1.1, 2.1, 2.3, 3.4, 6.1, 6.4, 7.1, 7.3, 8.1 and 8.3. Pattern search also removed the repeated PGL₂/PGL₃ test-family bullet in §5.1 and the repeated cuspidal-specialization bullet in §7.4. Distinct remaining Check counts are recorded below.

## F14 (P3) — applied differently

Corrected the garbled central-reduction sentence and redundant quasi-split clause. Section 1.3 uses a maximal torus and distinguishes parabolic from proper parabolic. Additionally changed the root inequality to ω≤0: increasing filtrations require weight-lowering operators. The new SL₂ Check distinguishes both signs and the all-zero case; st line 4031–4035 contains the source's sign inconsistency.

## Verification outcomes

- Elaboration: `lake env lean` on packages/GlobalShtukasAndFunctionFieldLanglandsPartII/Suggested.lean, from the pinned content checkout, exited 0 with empty output: no errors or warnings. No Tau Ceti imports require an object build. No build remains running.
- Elaborated-signature audit: generated a scratch copy from the final acceptance file and elaborated it once, appending `#check @name` for its declarations. There are zero retained local declarations, so no binders can disappear. The same scratch file checked the five cited array primitives; it exited 0. Finsupp.mapDomain requires AddCommMonoid on the coefficient type, satisfied by ℕ. Finsupp.sum requires Zero on the source coefficients and AddCommMonoid on the sum target. The finite-sum lemmas retain their additive-commutative-monoid hypotheses. The four former local signatures were deleted, not weakened or proved in place.
- Dependency check, with the supplied order and `--movable`, exited 0. Exact output:

    depcheck: 48 roadmaps, 549 edges, 0 problem(s)

  There was no UPWARD, CYCLE or moved line.
- Citation resolver, rerun after updating the parent locators, exited 0. Its only remaining cross-roadmap lead was:

    13: KloostermanSheavesAndBesselIsocrystals §§KB.1: no roadmap KloostermanSheavesAndBesselIsocrystals on main or in an open pull request

  This is a board-design consumer, present in packages/KloostermanSheavesAndBesselIsocrystals/design/README.md at KB.1, KB.6, KB.7 and KB.11 and later in the supplied merge order. It is not a supplier. No Lean name was reported missing. The resolver's “no pinned Lake packages on this host” note is a tool-discovery limitation; the pins were inspected directly and the cited native array names elaborated successfully.
- All twenty original resolver leads for the parent were resolved against its readable current head, TauCetiRoadmap/GlobalShtukasAndFunctionFieldLanglands/README.md. The content exists with numeric section labels; no board README for that supplier is present in this workspace. Its §§1.4, 1.9–1.14, 2.1–2.5, 2.9–2.10, 3.6, 3.10, 3.12, 4.8, 4.12, 5.3–5.10, 6.1–6.2 and 7.6–7.9 were checked against their headings and relevant text.
- Cross-roadmap locators were checked against current main or the readable indexed heads: LanglandsParameterStacks, HeckeStacksAndLocalShtukas, FunctionFieldArithmetic, SmoothRepresentationsOfLocalGroups, ArithmeticGaloisRepresentations, DeligneWeightsAndPurity, ReductiveGroupsPartII, MotivesAndAlgebraicCycles, DiamondEtaleCohomology and DiamondSixOperations; main NilpotentOrbits, RepresentationTheory/LieHighestWeight, SchemeAndStackFoundations and EtaleCohomologyFoundations. N2.1/N2.2/N2.4 denote the numbered items under N2. The raw Weil–Deligne substrate is explicitly inside SR.5.2, despite that subsection's broader title.
- Ownership search used the roadmap index's main/open-head object search and the board designs. The generic abstract constructions remain with LP2e.15/LP2c.8; HS2.9 owns the analytic tower. No readable roadmap owns this equal-characteristic Bun_G instantiation. ExcursionOperatorsAndSpectralActionPartII concerns p-adic fields and stability of the resulting centre, so it does not supply this construction. HS4.7 exports the Hecke datum but expressly does not prove the uniform finite-wild-cutoff theorem; §3.0 therefore states the needed equal-characteristic application of fs Proposition IX.5.1. The source/target and continuity conditions remain explicit.
- Pinned-carrier audit used Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039, as recorded in lake-manifest.json. Object searches found no implemented Weil–Deligne, reductive L-parameter, shtuka, Kloosterman or unitary spherical-dual carrier supporting a headline. The Fargues–Fontaine v-sheaf and classical-newform Satake files do not provide them. The latter's satakeParameters definition is at TauCeti/NumberTheory/ModularForms/Newforms/Satake.lean:91. Smooth discrete representations alone do not supply the local arithmetic parameter interface.
- Native array audit: Mathlib/Data/Finsupp/Defs.lean:88 retains a finite support, a function and exact support membership. It does not impose row symmetry or attach the function to geometry. Mathlib/Data/Finsupp/Basic.lean:267 defines mapDomain by summing singletons. It gives the two margins directly. The additive declarations Finsupp.sum, Finset.sum_comm and Finset.sum_eq_single are present at the cited files and elaborate at the pins.
- All nine existing supplier gaps have identical slugs and needs sentences in README and design/plan.json; their suppliers and sections are unchanged. No plan, metadata or merge-order change was needed.
- Source audit: all thirteen existing manifest texts were readable. The added stacks-as entry was fetched through the legal sources service, certified, and completed with authors/title/year. Its Kummer and Brauer locators and characteristic-p vanishing were read in the same cached chapter. All fourteen keys are unique. No missing reference was requested.
- Structural checks: `git diff --check` exited 0; single Mathlib import; no local declarations, sorry'd data, set_option, replacement propositions, stale deleted names or machine paths. No new Lean declaration names were introduced. No separate gate failures were listed in the brief.

The affected Check counts after deletion are:

| Definition | Distinct Checks |
| --- | ---: |
| 0.1 | 6 |
| 0.3 | 8 |
| 1.1 | 4 |
| 2.1 | 5 |
| 2.3 | 4 |
| 3.4 | 6 |
| 6.1 | 5 |
| 6.4 | 5 |
| 7.1 | 5 |
| 7.3 | 5 |
| 8.1 | 3 |
| 8.3 | 4 |

## Adversarial mathematics pass

The table separates assertions sharing a subsection when their hypotheses or signs differ. Values are computed instances, not proofs of the general theorems. The general Property A proof was also read as downward induction with the column-excess direction. The exact arithmetic probe on 64 binary symmetric arrays returned 8 diagonal arrays and 56 arrays with strict column excess at the greatest discrepancy. Conditional stack/orbit claims below retain their named supplier hypotheses.

| Statement | Instances tried | Values computed on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: q and positive weights | q=4, scalar 2; formal q=1 | 4^(1/2)=2; 1^(w/2)=1 for every w | q≥2 gives uniqueness; q=1 excluded | none |
| Conventions: étale coefficient condition | scalar 3 with ℓ=5 and ℓ=3 | v₅(3)=0; v₃(3)=1 | unit condition distinguishes the two | none |
| Conventions: reciprocity and Tate twist | q=4, Tate line/inverse | eigenvalues 1/4 and 4; weights −2 and 2 | directions agree | none |
| Conventions: WD sign | r=diag(1,4), Ne₁=e₀ | rNr⁻¹e₁=e₀/4=(N/4)e₁; reversed sign gives 4e₀ | downward shift 2→0 | none |
| Conventions: Satake factor two | q=4, diag(2,1/2) | exponents ±1/2; Deligne weights ±1 | factor two required | none |
| Conventions: Arthur versus WD diagonal | q=4, std SL₂ | upper diagonal (2,1/2); lower (1/2,2); same multiset | Weyl-conjugate | none |
| Conventions: residue degree | q=4→16, eigenvalue 2→4 | 2log₄2=1=2log₁₆4 | normalized weight unchanged | used in §8.2 route |
| Conventions: rank zero | zero realization | dimension 0; empty multiset; every graded rank 0 | no unique common weight claimed | none |
| Conventions: occurrence multiplicity | multiplicity 2, invariant dimension 3 | m_U=2, isotypic dimension 2·3=6 | multiplicity differs from invariant dimension | none |
| 0.1 geometricity | G_m/F₄, Frobenius 2 or 3 | weights 1 and log₂3=1.5849625007… | 2 geometric, 3 fails integral weight | duplicate deleted |
| 0.1 algebraicity and weight zero | (3+4i)/5; transcendental unit-circle value | both conjugate moduli of first are 1; algebraic degree 2 versus no algebraic degree for second | modulus alone insufficient | duplicate deleted |
| 0.2(a) faithful realization | dual PGL₂ adjoint of diag(q^1/2,q^−1/2) | eigenvalues q,1,q⁻¹; weights 2,0,−2; trivial realization sees only 1 | nonfaithful converse fails | none |
| 0.2(b) nonabelian finite inertia | S₃, inertia C₃, q=5 | transposition eigenvalues 1,−1; transposition times 3-cycle again has 1,−1 | both weights 0 | retained |
| 0.2(b) cyclic finite inertia | C₃, Frobenius 1, q=4 versus q=5 | action exponents 4≡1 and 5≡−1 mod 3; q=5 forces σ²=σ, hence σ=1 | old q=5 input impossible | F11 |
| 0.2(c) closed embedding | G_m→GL₂, a↦diag(a,1), q=4 | a=2 gives weights 1,0; a=3 gives log₂3,0 | equivalence on faithful embedding; trivial map loses bad weight | none |
| 0.3 arithmetic purity | Sp(2), q=4, N≠0 | graded weights 0,2, N isomorphism between one-dimensional pieces; common weight 1 | pure | duplicate deleted |
| 0.3 monodromy necessity | same Frobenius, N=0 | ranks gr₀=gr₂=1; N has rank 0 instead of 1 | not pure of a common weight | duplicate deleted |
| 0.3 reductive common weight | G_m, Frobenius 4, id versus id⊕1 | weights {2} versus {2,0} | faithful mixed realization need not have one weight | none |
| 0.3 tensor, dual and subquotient | Sp(2), its kernel and quotient | common weight 1; dual common weight −1; kernel weight 0 and quotient weight 2 | WD summands differ from arbitrary subquotients | none |
| 0.3 fixed embedding versus arithmetic | Salem unit-circle conjugate | modulus 1 versus real conjugate modulus 1.7220838… | bounded at one embedding is insufficient | none |
| 0.4 completion equivalence/uniqueness | normalized Sp(2), q=4 | Frobenius pair 2,1/2; nonzero N joins weights 1 and −1; associated Weil scalar 1 | pure completion and bounded Weil part agree | none |
| 0.4 existence negative control | diag(1,16), q=4 | eigenvalue ratio 16, required WD ratio 4; N must be 0 | no essentially tempered completion | none |
| 1.1 twist classes and trivial summand | scalar 3/F₄ versus Tate scalar 4 | nontrivial-class rank 1 and trivial-class rank 0; scalar 4 has weight 2 and trivial-class rank 1 | distinguishes the components | duplicates deleted |
| 1.1 absolute versus fixed-embedding classes | 1+i and 1+2i over F₂, ℓ=7 | squared moduli 2 and 5; first weight 1; second log₂5 not integral | only first in trivial class | none |
| 1.1 tensor class law | scalar 3 tensored with scalar 1/3 | product 1; weights log₂3 and −log₂3 cancel to 0 | product lies in trivial class | none |
| 1.2(a) propagation | Kl₂ at 0 versus constant 3/F₄ | local semisimple weights 0,2 give global common weight 1; scalar 3 has weight log₂3 at degree 1 | anchor hypothesis discriminates | none |
| 1.2(b) global ranks | Kl₂ | rank gr₁=2; ranks at other indices 0, at every good place | constant pattern | none |
| 1.2(c) ramified graded purity | normalized Sp(2) fibre of weight-0 piece | local weights −1,1 with N rank 1 | WD common weight 0, not punctual weight-0 Frobenius | none |
| 1.3 irreducibility hypothesis | χ⊕χ⁻¹ in SL₂ | weights 1 and −1, sum 0 but not pure; Borel contains image | reducible example excluded | none |
| 1.3 filtration stabilizer sign | diag(2,1/2), increasing filtration | W_−1=⟨e₂⟩; E₂₁e₁=e₂, E₁₂e₂=e₁ outside W_−1 | lower Borel, nonpositive root sign | F14 |
| 1.3 properness and zero weight | Frobenius diag(1,1) | both weights 0; both root signs 0; stabilizer dimension 3 rather than Borel dimension 2 | full group is an improper parabolic | F14 |
| 1.3 semisimple determinant | normalized Legendre rank 2 | determinant q·q⁻¹=1; common weight w obeys 2w=0, so w=0 | consistent with weight-0 conclusion | none |
| 1.4 local pure completion | PGL₂ Steinberg, q=4 | weights −1,1, N rank 1; monodromy centre 0 | arithmetic weight-0 WD | none |
| 2.1 occurrence relation | multiplicity space with two excursion lines | total multiplicity 2; each block has multiplicity 1 for same π^U | cannot choose a unique σ | retained by F10 |
| 2.1 unit/tensor/dual functor | dual-standard rank 2, weights −1,1 | unit rank 1; tensor ranks 1,2,1 at −2,0,2; dual weights 1,−1 | ranks 1,4,2 as expected | duplicate deleted |
| 2.1 irreducible algebraic realization need not stay irreducible | determinant-one quadratic induction ρ | ρ⊗ρ=Ind χ²⊕μ⊕με, Λ²ρ=με=1, so Sym²ρ contains ε | reducible rank-three realization | none |
| 2.1 characteristic-polynomial compatibility | eigenvalues 2,1/2 | (1−2T)(1−T/2)=1−(5/2)T+T² on both sides | full polynomial agrees | none |
| 2.2 rational Satake class | PGL₂, q=4, a_w=5 | q^−1/2 a_w=5/2=2+1/2 | algebraic trace | none |
| 2.3 real-part normalization | trivial PGL₂ versus complementary pair | ν-pairings ±1/2 versus ±1/4; weights ±1 versus ±1/2 | only first has integer weights | duplicates deleted |
| 2.3 compactness and finite central twists | (2,1/2) versus (−2,−1/2) | moduli 2,1/2 in both; identical ν | finite central twist preserves real part | none |
| 2.3 all-embedding condition | Salem eigenvalue ζ | log_q|ζ|=0; log_q(1.7220838…)≠0 | real part depends on embedding without Weil condition | none |
| 3.0 categorical unit application | G=1 | unit excursion scalar 1; zero object's endomorphism ring 0 is not L | Schur/unit conditions retained | F01 |
| 3.0 torus scalar application | G_m, uniformizer values 2 and 1/2, q=4 | φ(Frob)=2 versus 1/2 | inverse convention separated | F01 |
| 3.0 wild cutoff | unramified G_m character | inertia image {1}, every Hecke tensor power has wild image {1}; one P works for all powers | uniform cutoff holds on this datum | F01 |
| 3.0 scalar action versus monodromy | GL₂ St and 1 | both Frobenius traces 5/2; possible N ranks 1 and 0 | centre action determines semisimple parameter only | F01 |
| 3.0 local-shtuka cohomology compatibility | trivial group, unit Satake coefficient | unit Hecke functor and cohomology action both identity, scalar 1 | unit normalization agrees | F01 |
| 3.1 formal model, framing and generic fibre | GL₁, lattice z⁻¹O_v | glued O_X(v) has degree 1 for deg v=1, degree 2 for deg v=2 | framing fixes the two degrees | F02 |
| 3.1 nilpotent deformation test | k[ε]/ε²→k | ε≠0 upstairs, ε=0 downstairs, ε²=0 on both | reduced points lose deformation data | F02 |
| 3.1 no legs and unit group | G=1 | one object, map degree 1, relative tangent dimension 0 | identity base case | F02 |
| 3.1 supplied level comparison | G_m over residue F₄, level 1→0 | kernel quotient (O/z)^× has 3 elements; transition degree 3 versus identity degree 1 | generic-fibre identification keeps level | F02 |
| 3.2 local compatibility for every occurring block | two possible global blocks, same unramified local π_v | each local pair (2,1/2), each trace 5/2 | no global uniqueness used | F10 |
| 3.3 normalized induction | GL₂ and PGL₂, St and 1 | both semisimple pairs (q^1/2,q^−1/2); q=4 gives 2,1/2 | common cuspidal support determines local semisimple parameter | none |
| 3.3 normal-image direction | G_m→GL₂ central inclusion | dual determinant sends diag(2,1/2) to 1 | agrees with trivial central character of normalized St | none |
| 3.3 coefficient normalization | q=5, √5→−√5 | transported pair (−√5,−1/√5); central factor −I has square I | finite normalization cocycle, weight unchanged | F07 |
| 3.4 geometric local representation | trivial PGL₂, scalar-3 G_m character | weights ±1 versus log₂3 | parameter condition distinguishes geometricity | duplicate deleted |
| 3.4 coefficient-model condition | transcendental unramified unitary scalar a | modulus 1; no number-field model for scalar a | unitary alone insufficient | none |
| 3.5 coefficient conjugation | 1+2i→1−2i, q=5 | both squared moduli 5, weight 1 | arithmetic weight preserved | contract pointer fixed |
| 3.6 split torus criterion | q_F=4, χ(ϖ)=2 | split weight 1; compact-unit finite values have weight 0 | all values have integer weights | none |
| 3.6 induced torus criterion | unramified quadratic E/F | χ(ϖ_E)=2 gives induced ±√2, weight 1/2; value 4 gives induced ±2, weight 1 relative to q_F | q_E=16 essential | none |
| 3.6 separability | E=F(t^1/p) | scalar restriction has unipotent dimension p−1: 1 at p=2 and 2 at p=3 | not a torus | none |
| 3.7 induction/Jacquet stability | reducible PGL₂ principal series | two constituents St and 1; each semisimple pair 2,1/2 | both remain geometric | none |
| 3.8 smooth central torus | GL_n normalized Steinberg | central character 1, central weight 0; μ_p(F)={1} even though length μ_p=p | smooth torus restriction avoids nonsmooth-centre misuse | none |
| 4.0 anchor versus constant system | Kl₂ and constant rank 2 | Swan 1 versus 0; invariant dimensions 0 versus 2 at infinity | distinguishes anchor | ownership explicit |
| 4.0 zero/infinity distinction | Kl₂ unipotent zero monodromy | kernel of 2×2 regular N has dimension 1; infinity invariant dimension 0 | places not interchangeable | none |
| 4.0 all-prime invariant comparison | p=2, SO₃ inertia image A₄ | adjoint invariant rank (3+3·(−1)+8·0)/12=0; total dimension 3 | compatible with xz line 2513 | none |
| 4.0 invariant vanishing versus irreducibility | odd p, adjoint rank-three model | stable toral line dimension 1 with sign −1; its fixed dimension 0 | reducible adjoint can have zero invariants | none |
| 4.0 trivial group | semisimple rank 0 | adjoint rank 0, invariants 0, Swan 0 | vacuous base case valid | none |
| 4.1 fixed-embedding temperedness | Salem conjugates and torus | central moduli 1 versus 1.7220838…; no proper Jacquet exponents for torus | central-unitarity clause necessary | none |
| 4.2 reductive existence and infinitude | G_m with ξ=1; nontrivial derived anchor | prescribed-character count 1 for torus; derived anchor Swan>0 versus unramified Swan 0 | infinitude not universal | F09 |
| 4.2 irreducible global parameters | PGL₂ auxiliary Kl₂ | adjoint inertia-invariant rank 0; proper split Levi centre has dimension 1 | every occurring block excludes that Levi | F09/F10 |
| 4.2 central boundedness limitation | central character with scalar 3/F₄ | adjoint exponent 0; central weight log₂3 | adjoint boundedness does not give central arithmetic purity | F09 |
| 4.3 pseudo-coefficients | PGL₂ St pseudo-coefficient | traces St=1, trivial=−1, reducible induced=0=1−1 | nonzero trace does not isolate St | locator fixed |
| 4.4 common support and all blocks | St support on PGL₂ | same pair 2,1/2; St has N rank 1, trivial has N rank 0 | only semisimple equality used | F09/F10 |
| 4.5 WD completion | normalized Sp(2), q=4 | weights −1,1 with N rank 1; associated Weil scalar 1 | pure weight 0 | none |
| 4.6 geometricity with model | normalized PGL₂ St | Q(√q)-model; q=4 gives rational eigenvalues 2,1/2 | number-field plus integer-weight requirements both met | none |
| 4.7 conjugates of discrete series | St at q=5, √5→−√5 | absolute values √5 and 1/√5 unchanged | strict exponent inequalities unchanged | none |
| 4.8 embedding-independent temperedness | geometric compact pair | all conjugate moduli 1; normalized exponents have weight 0 | weak inequalities unchanged | none |
| 5.1 separator family, rank one | ν=(1/4,−1/4) | adjoint pairings −1/2,0,1/2; standard pairings −1/4,1/4 | extra standard separator necessary | duplicate deleted |
| 5.1 B₂ spin separator | ν=(1/2,0) | vector pairings 1/2,−1/2,0,0,0; spin ±1/4 each twice | vector alone insufficient | none |
| 5.1 even/odd D residual list | PSO(2n), n even versus odd | source list has 4 points versus 2, including 0; extra points ½ω₁ and ½ω₂ only in even case | qualifier verified at ch26 line 939 | none |
| 5.1 finite induction | order-two outer action | dim Ind V=2·dim V; both half-spin translates present once | one noninvariant summand insufficient | none |
| 5.1 local separator theorem boundary | A₂ origin and trivial PGL₂ | A₂ adjoint has 8 weight-zero entries; trivial PGL₂ has weights ±1 and is nongeneric | genericity condition matters | none |
| 5.2 identity lift | G already adjoint | kernel order 1; extension degree 1; composite lift equals σ | K′=K | none |
| 5.2 coefficient obstruction, odd p | class β of order 2 | 2β=0; lift exists exactly at restricted class 0, not at β≠0 | Kummer/Brauer identification applicable | F12 |
| 5.2 coefficient obstruction, p=2 | μ₂(ℚ̄_ℓ)=C₂ | H²(K,C₂)=0 by Artin–Schreier; kernel still has 2 elements in characteristic-zero coefficients | lift over K; distinct from μ₂,K | F12 |
| 5.2 lifting ambiguity | sign character in central kernel C₂ | two lift ratios multiply as (−1)²=1; both lift Frobenius values have same modulus | central finite twist preserves real part | none |
| 5.2 nontrivial kernel action | C₃ with inversion action, c(γ)=ζ | cocycle gives c(γ²)=ζζ⁻¹=1; untwisted square is ζ²≠1 | cocycle law essential | none |
| 5.3 anchor integrality | St anchor; compact hyperspecial anchor | local weights −1,1 versus 0,0; constant 3 has log₂3 nonintegral | tempered route retains fixed-embedding distinction | prose fixed |
| 5.4 generic Ramanujan separator | q=4 complementary pair √2,1/√2 | Deligne weights ±1/2 | fails integral test family | none |
| 5.4 central-compact restriction | G₂ involution, ν=½ω₂, q=4 | positive-coroot values −1,2,−2,2,−2,−4 avoid 4 and 1/4; deleting compact factor gives 4 | noncentral compact factor defeats zero conclusion | none |
| 5.5 genericity propagation | tempered PGL₂ spherical pair | unit-modulus ratio differs from q=4 and 1/q=1/4 | irreducible unitary principal series, hence generic | redundant place qualification deleted |
| 6.1 ellipticity | GL₂ χ₁⊕χ₂ | centralizer dimension 2 minus centre dimension 1 gives quotient dimension 1 | not elliptic | none |
| 6.1 nonsplit torus | inversion action on G_m | fixed subgroup {±1}; centralizer/fixed-centre quotient has order 1 | elliptic, not full dual torus centralizer | duplicate deleted |
| 6.1 finite nontrivial component group | V₄ in PGL₂ | centralizer order 4, centre order 1, quotient order 4 | elliptic need not be stable | none |
| 6.2 elliptic temperedness | irreducible PGL₂ parameter | standard rank 2 all in weight 0; real part 0 | every good spherical component tempered | none |
| 6.3 full centralizer invariants | GL_r, one moving standard factor | central G_m weight 1 gives invariant dimension 0; adding a dual frozen factor gives scalar invariant dimension 1 | frozen factor indispensable | none |
| 6.4 realization definition | identity map and zero sheaf | R⁰id_! has rank 1; empty-stack direct images all rank 0 | positive and degenerate witnesses | duplicates deleted |
| 6.4 negative realization control | scalar 3/F₄, ℓ=5 versus ℓ=3 | noninteger weight log₂3; valuations 0 versus 1 | conditional failure under stack-integrality contract; second is not étale input | duplicate deleted |
| 6.5 conditional integrality | identity scheme morphism | sole constant direct image weight 0 and rank 1 | compatible with scheme input; stack generality stays conditional | none |
| 7.1 weak Arthur datum and evaluation | ψ=1⊠std, q=4 | N rank 1; evaluated pair 2,1/2; restricted Weil pair 1,1 | Weil restriction loses Arthur N | duplicates deleted |
| 7.1 weak datum without boundedness | trivial SL₂, Frobenius diag(4,1/4) | N=0; moduli 4 and 1/4; weights 2 and −2 | trivial SL₂ does not imply tempered | duplicate deleted |
| 7.2 Arthur weight prediction | trivial PGL₂ representation | h eigenvalues 1,−1 equal Satake weights 1,−1 | hypotheses give stated pattern | none |
| 7.2 algebraicity/integrality boundary | complementary diag(q^1/4,q^−1/4) | weights ±1/2 rather than integers | condition (a) fails | none |
| 7.3 compatible parameter | trivial PGL₂, degree 1 and 2 over F₄ | eigenvalues 2,1/2 then 4,1/4; both normalized weights ±1 | Weil parameter satisfies good-place matching | duplicate deleted |
| 7.4 finiteness hypothesis base case | trivial group | discrete module rank 1; base change rank 1; Hecke eigenvalue 1 | finite-module condition consistent | duplicate deleted |
| 7.4 generalized blocks | Q[ε]/ε² with scalar excursion character | total rank 2, generalized-eigenspace rank 2, eigenspace rank 1 | no reducedness or diagonalizability inferred | none |
| 7.4 residual-character descent | χ of order 2 versus order 3 | χ(a²)=1 for quadratic χ; ζ₃²≠1 for cubic χ | χ²=1 essential | none |
| 7.5 rationality under finiteness | rational operator with polynomial T²−2 | eigenvalues ±√2 algebraic of degree 2; finite coefficient extension Q(√2) | model may require finite extension | none |
| 7.6 finite-codimension quotient | Q̄_ℓ[T]/(T−a) | quotient dimension 1, eigenvalue a, including transcendental a | finite codimension does not force algebraicity | none |
| 8.0 affine-Hecke direction | ν=(1/2,−1/2), q=4 then 16 | positive-root eigenvalues 4 then 16; q-eigenspace dimensions 1 in both | normalized exponents agree, operators differ | none |
| 8.0 Aubert involution | PGL₂ trivial and St | two applications return original irreducible; both semisimple traces 5/2 at q=4 | semisimple parameter preserved | none |
| 8.0 classical partition data | Sp₆ partition (2,2,2) | 2·3=6; central point (1/2,1/2,1/2), residual point (0,1/2,1) | allowed multiplicity factor used | none |
| 8.0 orthogonal parity | partition (3³,1³) of 12 | total 3·3+1·3=12; two nonzero ε choices sum 2, one sums 1 | positive even parity distinguishes choices | none |
| 8.0 recognition quantifier | zero class versus nonzero PGL₂ real class | trivial character 1 at both; standard characters 2 versus 5/2 at q=4 | all representations, not unit alone, needed | none |
| 8.1 weight pattern | trivial PGL₂ standard | n(1)=n(−1)=1, total rank 2; dual reverses the same pair | definition and symmetry agree | duplicates deleted |
| 8.1 convolution | standard tensor square | weights −2,0,2 of multiplicities 1,2,1; total 4 | convolution matches tensor rank | none |
| 8.2 split-at-v generality | finite splitting cover with residue degree 2 | scalar 2 becomes 4; q=4 becomes 16; weights 1=1 | real-part comparison need not assume global splitting | F09 |
| 8.2 zero-orbit sector | central-compact O∨=0 | neutral h=0, real part 0 at split good places | restricted generic case recovered | F09 |
| 8.3 margins and ramified symmetry | a(0,−1)=a(0,1)=1 | r(0)=2; c(−1)=c(1)=1; both total ranks 2 | margins differ; row symmetry holds | native margins |
| 8.3 diagonal negative index | a(−2,−2)=3 | r(−2)=c(−2)=3, all other entries 0 | index set is ℤ, not ℕ | duplicate deleted |
| 8.3 zero monodromy | diagonal singleton with multiplicity 1 | row=column=δ₀; monodromy rank 0 | diagonal case agrees | duplicate deleted |
| 8.4 Property A inequality | a(0,±1)=1 | largest discrepancy 1; c(1)=1>r(1)=0 | column-excess direction | README-only target |
| 8.4 shifted row | a(2,1)=a(2,3)=1 | r(2)=2; c(1)=c(3)=1; largest discrepancy 3 gives 1>0 | same direction after shift | unchanged |
| 8.4 zero array | empty support | r=c=0 at all indices; no greatest support element | diagonal alternative applies | unchanged |
| 8.4 symmetry hypothesis | a(1,0)=1 alone | largest discrepancy 1 has c(1)=0<r(1)=1 | fails without symmetry | unchanged |
| 8.4 nonnegative coefficients | a(0,±1)=−1 | greatest discrepancy 1 has c(1)=−1<r(1)=0 | fails for signed coefficients | unchanged |
| 8.5 classical comparison | Sp₆ standard | central 3δ₁+3δ₋₁; extraneous δ₂+δ₁+2δ₀+δ₋₁+δ₋₂ | largest discrepancy 2 gives 1>0 | recomputed |
| 8.5 F₄ B₃ coordinates | corrected x versus neutral diagram 2200 | weights 10,9,8 give (1,0,2) versus (1,0,1); dimensions both 52; extra printed ω₂ gives top 16 | discrepancy at 8, correction discriminated | recomputed |
| 8.5 F₄ A₁ plus short A₁ | x versus neutral diagram 0100 | extraneous top 4 with multiplicity 1; neutral top 3 and n(4)=0 | discrepancy 1>0 | recomputed |
| 8.5 E₇ exceptional profile | stated x, E₈ roots orthogonal to e₇+e₈ | dimension 133; n_x(10)=n_x(9)=1; source neutral values 1,0 | extraneous side recomputed; named neutral side conditional on existing gap | none |
| 8.5 E₈ D₆ | stated x | dimension 248; n_x(18,17,16)=(1,0,2); source neutral (1,0,1) | extraneous side recomputed; named neutral side conditional on existing gap | none |
| 8.5 E₈ A₆, A₄+A₂, A₂+2A₁ | stated x values | dimensions 248 each; top weights 13,9,5, multiplicity 1 each; source neutral maxima 12,8,4 | extraneous sides recomputed; named neutral sides conditional on existing gap | none |
| 8.6 elimination direction | Sp₆ extraneous row/central column | at index 2, r=1,c=0, so r>c; Property A would require c>r | contradiction excludes extraneous point | split-at-v scope |
| 8.6 detecting representations on a splitting cover | residue degree 2; coefficient characteristic 0 | q=4→16, eigenvalue 2→4, normalized weight 1→1; N→2N has the same rank 1 | restriction preserves profiles and nilpotent orbit without automorphic base change | proof route made explicit |
| 8.6 diagonal consequence | matching neutral/global patterns | r=c; all off-diagonal entries 0; each graded N rank 0 | first Property A alternative forces vanishing | unchanged |
| Worked examples and layer examples | q=4 standard pair, symmetric rank-two array | characteristic polynomial 1−(5/2)T+T²; margins total 2=2 and greatest-discrepancy values 1>0 | consistent with §§2.1, 8.3–8.6 | recomputed |

The exceptional root computations used the explicitly printed weight coordinates of ch26 (6.21), (6.24), (6.26), read at ch26 line 1073, ch26 line 1086 and ch26 line 1113. The F₄ root lists have 48 roots plus 4 Cartan zeros; E₈ has 240 plus 8; E₇ has 126 plus 7. No independent claim is made here to have constructed the missing E₇/E₈ named-orbit identifications: these remain exactly gap:exceptional-named-orbit-profiles. None of the findings requires deleting or concealing that gap.

## Maintainer consequences

- No commit, push, issue or pull-request edit was made.
- The étale Kloosterman anchor is owned in §4.0, earlier than KloostermanSheavesAndBesselIsocrystals. Its KB.1/KB.6/KB.7/KB.11 design should import that étale input when its ownership boundary is implemented; its rigid-isocrystal refinements remain its own work. This package does not edit that later design.
- SmoothRepresentationsOfLocalGroupsPartII consumes §§5.1 and 8.0; LieHighestWeightPartII consumes §8.5. No input is taken from either later roadmap. Generic excursions/Schur reconstruction and analytic towers are imported from the earlier named suppliers.
- The acceptance names WeightArray, rowSum, colSum and propertyA have been deleted. No readable external Suggested.lean found in the object/name search cites their fully qualified names. Property A remains a mathematical README target; consumers need its theorem, not an array surrogate for a global headline.
- The new SL₂ witness detects an additional sign inconsistency in the source's increasing-filtration argument. The correct stabilizer uses ω≤0 in this roadmap's convention; the conclusion that it is parabolic, proper unless all root weights vanish, is unchanged.
- A fixed central character prevents the torus case of ghs Proposition 3.9 from supplying infinitely many distinct globalizations. The repaired theorem gives existence for every connected reductive G and infinitude when its derived group is nontrivial. It does not infer arithmetic central weights from adjoint boundedness.
- The nine previously recorded supplier gaps remain prerequisites of their respective conditional targets. These repairs and elaboration are not an independent acceptance review.
