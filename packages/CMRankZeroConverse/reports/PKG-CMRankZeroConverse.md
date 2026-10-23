# CMRankZeroConverse package report

The package is `packages/CMRankZeroConverse/README.md`, `Suggested.lean`, `metadata.toml` and `sources.toml`. The mathematical design was expanded into all seven layers. A skeleton was generated from every node's statement, hypotheses, route, API, tests, sources and prerequisites before the prose was written. Every one of the 30 design targets is represented, with the general realization comparison consumed in §0.3 rather than owned again. All 29 design API facts and 21 named design tests survive as prose; further discriminating Checks cover the new native descent predicate and the proof conventions.

The separate `design/review.json` and the input reports directory were absent. The accepted review embedded in `design/plan.json` was available and was read. Its duality and completed-coefficient corrections were applied. Only the top-level `gaps` array of that JSON was changed; equality of every other parsed field was asserted against the original copy. There are 13 exact supplier gaps, each reproduced under its supplier in the README. No content checkout, order file, tool configuration, library pin or other package was edited.

## Headline theorems, listed before the Lean file

| Headline | Acceptance-test status |
| --- | --- |
| Selmer-zero global H² vanishing and the one-dimensional global central cohomology (§§1.2–1.3) | Not statable at the pins: missing actual Kato rational j_* complex and Bloch–Kato finite Selmer carrier. |
| Central H_g=H_f, with injection of the finite quotient under dual exponential (§1.4) | Not statable: missing actual modular de Rham realizations and period functors. |
| Correctly signed central Kato specialization is a basis (§2.3) | Not statable: missing actual Kato zeta morphism, Iwasawa cohomology and j_* specialization. |
| Reciprocity detects a nonzero central L-value (§3.1) | Not statable: missing zeta/regulator carriers and the actual continued arithmetic newform L-function. |
| Rational Kato equality implies the rank-zero converse (§3.2) | Not statable: the same cohomological, zeta and analytic carriers. |
| All-prime CM newform converse (§3.3) | Not statable: the preceding carriers and the actual CM-newform predicate. |
| All-prime CM elliptic converse over K and over ℚ (§§4.2, 4.5) | Not statable: classical p∞ Kummer Selmer groups with corank, the CM-order action and the actual analytically continued elliptic L-function. |
| Rational CM Selmer-corank doubling (§4.3) | Not statable: classical p∞ Selmer carrier and CM-order/self-twist interface. |
| Rational CM analytic-order doubling (§4.4) | Not statable: actual full analytic continuation and CM self-twist interface. |
| Congruent-number density one and exact positive-squarefree half-density (§§5.2–5.3) | Not statable: arithmetic twist L-values/analytic rank. The squarefree subsets themselves are native, but an arbitrary scalar-valued function on them would be a stand-in. |
| Exact half-density in both-sign fundamental-discriminant ordering (§5.4) | Not statable: the same actual twist L-values and analytic order. |
| CM twist nonvanishing lower proportion at least one half (§6.1) | Not statable: actual L-values, CM-order interface and arithmetic support-height family. |
| Cube-sum full CM (§6.3) | **Stated:** `TauCetiRoadmap.CMRankZeroConverse.cubeSum_fullCM`, with the simple rational model `TauCetiRoadmap.CMRankZeroConverse.cubeSumModel`; it identifies the full native endomorphism ring over `CyclotomicField 3 ℚ` with its ring of integers. Its analytic twist-nonvanishing application is not statable, for lack of the L-value and support-height carriers. |
| Descending-twist two-coset theorem (§6.4) | **Stated:** `TauCetiRoadmap.CMRankZeroConverse.descendingTwist_twoCosets`, using the real-bodied native predicate `TauCetiRoadmap.CMRankZeroConverse.descendsToRat`. |
| Descending twists are O(√X) and have support-height density zero (§6.5) | Not statable: the arithmetic support-ideal height and finite-fibre family are supplier constructions; a long encoding was not introduced. |
| Non-descending nonvanishing twists retain lower proportion at least one half (§6.6) | Not statable: that height family and actual arithmetic L-values. |

The inventory was written before `Suggested.lean`. Its module docstring records each omitted headline and missing carrier. The Lean file contains one simple predicate, one five-coefficient curve definition, and two substantive headline theorems, two occurrences of `sorry`, no auxiliary admitted API, examples or data, and no options. It imports only Mathlib and the native quadratic-twist and endomorphism-ring modules it actually uses. The endomorphism-ring module was found in the final pin audit, so its geometric headline was added after refining the inventory and before rerunning elaboration.

## Corrections and support limits

1. Expanded the first Tate-dual calculation: Selmer zero for W kills global H² for W′, makes its quotient dimension one, and Euler characteristic then kills H_f¹(W′). Only then is the duality argument applied to W. This implements the embedded review; it is an expansion of a compressed source argument, not an asserted source error.
2. Reduced arbitrary completed-coefficient γ to an F-rational basis before applying a complex period map. No embedding F_λ→ℂ is assumed. The completed maps are E-linear and a nonzero output implies a nonzero output on some rational basis vector.
3. Restored the types in the BT p.6 display: completed coefficient extension over ℚ_p, Tate-module Kummer comparison, conjugate dual and central weight-two twist. The only confirmed textual source defect is this mis-typed Selmer display (BT line 256). The other five proposed source defects in the design were rejected by its accepted review; the README does not describe them as errata.
4. Corrected the incomplete cyclotomic CM-field list. Kato §15.14 covers every K contained in the p-power cyclotomic extension; for imaginary quadratic K this includes ℚ(√−p) for all p≡3 modulo four, besides ℚ(i) at two. The design singled out p=3 and could obscure p=7,11,… . The README explicitly includes the general family and tests p=7. Kato lines 5731–5753 were read.
5. Resolved old section labels: AutomorphicGaloisRepresentations uses §§1.5, 4.4–4.8, 6.4, 7.2, not the obsolete R19.1/R19.3/R19.5 locators; SelmerIwasawaCohomology has numbered sections as cited. ArithmeticStatisticsPartVII's matching sections are §§5.9–5.11, and its title-labelled targets distinguish the conditional Smith and three-isogeny inputs. ArithmeticStatisticsPartI's piecewise rescaling and density rules are in §0.1, rather than its §0.2 local-specification section.
6. Replaced the design's unregistered CMAllPrimeMainConjectures and ArithmeticStatisticsPartIISmithMethod references by exact gaps on existing earlier owners: KatoEulerSystems §7.2 and ArithmeticStatisticsPartVII §5.9. Their missing conclusions are not silently treated as available declarations. The CM equality remains all-prime and uses the actual zeta submodule; no one-divisibility replacement is made.
7. ArithmeticStatisticsPartVII's three-isogeny means retain a windowed cubic counting hypothesis. Added `cm-three-selmer-unconditional` to request the unconditional §5.11 corank endpoint demanded by BT Theorem 3.5. The analytic theorem in this package remains the accepted unconditional target, whose proof needs that supplier theorem. No conditional numerator was used as an unconditional input.
8. The positive linear squareclass denominator and general congruent-number ordering comparison are now explicit targets of ArithmeticStatisticsPartI §§0.15 and 0.1. The old denominator gap was closed by this exact ownership, rather than replanning the count here.
9. RankZeroOneBSD was not found on the content main or indexed roadmap heads, and is absent from this order. Its extension RankZeroOneBSDPartII is later. The README identifies the accepted base direction in its opening/ownership description but consumes none of its unresolved BSD.0/BSD.1 locators. The necessary analytic/factorization exports are gaps on the readable earlier EllipticCurveModularity §R29.6; the rational Selmer descent is a gap on the earlier SelmerIwasawaCohomology §2.4. No theorem or hypothesis is imported from the later extension. No generic construction was moved down from a later roadmap: earlier owners cover these directions, with explicit missing interfaces.
10. Kept the exact squarefree and discriminant orderings, both signs, trivial class convention, density-one-to-half upper bound from root numbers, ramified-three case, nonmaximal orders, and lower-bound-only CM applications. The explicit cubic scale is −27n², with inverse composite 18n. The full projective comparison remains a named supplier interface, not an affine-chart assertion.

The definitions and all theorem statements are supported as mathematical targets by the legal sources and the displayed algebraic deductions. The README cannot assert completion of a supplier gap or claim the missing analytic/cohomological carriers exist at the pins. The 13 gaps make those limitations explicit without weakening the accepted mathematics.

## Duplication and ownership sweep

Main was checked at `35c99162e8be040065af64b05336c29b27b40d1c`. The read-only content checkout and both package HEADs agree with its manifest pins: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. These supersede the design's older audit pins.

Used `roadmaps grep` by mathematical object across main and the indexed open heads: central converse; CM main equality; Kato zeta and specialization; rational Poitou–Tate and finite conditions; Selmer corank and isogeny; quadratic analytic factorization; squareclass height/counts; Smith distributions; fundamental-discriminant rescaling; exceptional-j descent and cube-sum models. Read the matching supplier sections with `roadmaps show`. Searched board packages as well, including NonordinaryCMSpecialValues and InertAnticyclotomicCMMainConjecture: they concern restricted anticyclotomic settings, not the full cyclotomic all-prime equality. The supplied open-roadmap index was used for the named open work, including HeegnerPointEulerSystems and SelmerIwasawaCohomologyPartII. No CM converse or two-coset descent theorem was found there; foundational overlap is assigned to the suppliers below. No roadmap outside the supplied index was sought.

KatoEulerSystems and PadicHodgeRegulators are board packages absent from the indexed content roadmap heads. Their README files were read at the supplied board index heads `725fd74` and `5eff35d`. ArithmeticStatistics was read at `28f9562`; it is an umbrella assigning the relevant material to Parts I and VII. These are earlier directions in the merge order. RankZeroOneBSD was additionally searched on main, in the indexed heads, the board index and the local packages before treating its old locators as unavailable.

Every deletion of duplicate ownership is listed here. The mathematical design content survives either as an exact import/application or as its discriminating Check.

| Object removed from local ownership | Exact owner and retained local use |
| --- | --- |
| Generic newform realization, oddness and conjugate-dual construction | AutomorphicGaloisRepresentations §§1.5, 4.8; §0.3 only specializes the dictionary and checks its twist. |
| General completed group algebra and coordinate construction | `TauCeti.completedGroupAlgebra`, `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145`; SelmerIwasawaCohomology §3.0; §0.4 only defines the central kernel. |
| Generic semilinear twist, derived control and Tor/Nakayama theorem | SelmerIwasawaCohomology §§3.7, 3.10, 3.13–3.16; KatoEulerSystems §4.6; §2.1 is its Kato-complex application with an explicit missing comparison contract. |
| Rational Iwasawa rank-one/torsion construction | KatoEulerSystems §4.4, before its canonical map; §2.3 takes that structure as input. |
| Generic zeta morphism, submodule and interpolation | KatoEulerSystems §§5.1, 5.3; §2.2 only composes with the central specialization. |
| Corank, Pontryagin dual and Kummer p∞ carriers | SelmerIwasawaCohomology §§2.10–2.12a, 4.26; §§0.1 and 4.1 use those carriers. |
| General finite/geometric local conditions and exponentials | SelmerIwasawaCohomology §4.9; PadicHodgeRegulators §§1.1, 1.4–1.8; §1.4 proves the central modular equality. |
| General Poitou–Tate, Euler characteristic and Shapiro | ArithmeticGaloisDuality R02.4.3–R02.4.4, D7.3–D7.7; §§1.2–1.3 apply them in the exact rational j_* convention requested. |
| General CM character, rational Tate components, self-twist and full Hecke factorization | ComplexMultiplicationAndExplicitReciprocity §§1.2, 4.1–4.2; §§4.1–4.4 consume them, with the arbitrary-K theta gap. |
| Generic curve, discriminant, ellipticity, j and base change | Mathlib `WeierstrassCurve` and invariants in `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:76`, `:131`, `:230`, `:366`, `:388`; §6.2 only gives the cube-sum specialization. |
| Generic twist formula, isomorphism and nonexceptional classification | Tau Ceti `WeierstrassCurve.quadraticTwistOf`, `isElliptic_quadraticTwistOf`, `exists_smul_eq_or_exists_smul_eq_quadraticTwist`, in `TauCeti/AlgebraicGeometry/EllipticCurve/QuadraticTwist/Basic.lean:169`, `:411`, `:739`; EllipticCurves Layer 5 supplies the exceptional cases. |
| General all-prime isogeny-corank comparison | EllipticCurves Layer 7, with `isogeny-corank-all-primes`; the local CM corank doubling is a new application, not a second general isogeny theorem. |
| General density carrier, finite-change and restriction lemmas | ArithmeticStatisticsPartI §0.1; §5.1 only defines the even Goldfeld proposition. |
| Positive-squarefree residues, half-density, support height and finite fibres | ArithmeticStatisticsPartI §§0.5–0.6; Layers 5–6 use those results, not fresh counts. |
| Generic height rescaling and congruent discriminant weight computation | ArithmeticStatisticsPartI §0.1, “Piecewise rescaling of a height”; §5.4 applies it to the new analytic subset and retains the weights as Checks. |
| Positive linear squareclass denominator | ArithmeticStatisticsPartI §0.15, “Positive squareclass denominator”, including Cl(K)²; no duplicate asymptotic target or obsolete gap remains here. |
| Smith family/distribution construction, three-isogeny means, parity and maximal-order reduction | ArithmeticStatisticsPartVII §§5.9–5.11; only analytic nonvanishing applications are owned here, with exact unconditional endpoint gaps. |
| Design's suggested API lemmas, sign/discriminant computations and seven admitted worked examples | All belong in this README's API and Checks under the acceptance-test rule; none was padded into Suggested.lean. The design contained no actual input Lean file to delete. |

The explicit two-coset bound is this roadmap's ownership: the generic twist classification does not assert it, and the statistics supplier's CM three-isogeny comparisons do not give a descent-coset count. The cube-sum model's displayed projective substitutions and fixed-n CM nonvanishing application similarly refine BT Remark 3.6 rather than duplicate a generic curve or twist carrier. No declaration here has the fully qualified name of a readable supplier declaration.

## Native-carrier audit and binder inspection

Mathlib `WeierstrassCurve` has exactly five coefficients (`Weierstrass.lean:76–86`). Its native ellipticity class is `IsUnit Δ` (`:366–369`), with no claim of nonzero discriminant over arbitrary rings; over a field the unit criterion gives the required nonzero condition. The zero rational model has Δ=0 and fails ellipticity. `j` is defined using the discriminant unit (`:388–389`), so it is not evaluated on the singular cube-sum model at n=0.

Tau Ceti's `quadraticTwistOf` is an unconditional five-coefficient formula with parameter t²−4n (`QuadraticTwist/Basic.lean:169–174`). The separate ellipticity result requires that parameter be nonzero (`:411`). For (0,−a), a≠0 in a characteristic-zero field supplies 4a≠0; a short model acquires coefficients 16a²A,64a³B. The factor four is square, so this is the same twist class as a. Native nonexceptional twist classification explicitly excludes j=0,1728 (`:739`); the Lean headline does not invoke it outside its hypotheses.

The actual newform carrier exists (`TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean:104–108`). Searching realization, CM-order, Kato, Bloch–Kato, regulator and p∞ Selmer objects at these pins found no complete carrier for the omitted headlines. Native rational Tate modules, isogeny pullbacks and algebraic endomorphism rings do exist; their existence is not equated with classical p∞ Selmer groups or the generic CM-order action interface. The concrete full CM ring equivalence does not require defining that generic interface. Finite two-descent/S-unit Selmer modules are different objects. The native algebraic endomorphism ring `TauCeti.Isogeny.Hom` also exists, with its ring instance in `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Hom/Ring.lean:174`; that made the geometric cube-sum CM theorem statable. The elliptic coefficient series is native (`Mathlib/AlgebraicGeometry/EllipticCurve/LFunction.lean:79–85`), but no analytic-continuation data is a field or hypothesis of that definition.

Mechanically inspected `#check @name` for **all four** declarations in one scratch Lean file. The elaborated descent predicate retains `{K : Type u}`, `[Field K]` and `[Algebra ℚ K]`; the theorem retains the quadratic-extension instance, D<0, θ²=D, W's ellipticity instance, units t₀,t and both actual descent assumptions. Its conclusion has q∈ℚ× and u∈K× with the two branches and the j=1728 guard on the second. No needed hypothesis disappeared. Adding the cube-sum headline used an explicit existential ellipticity proof in its type, so the native endomorphism-ring instance receives that proof; the curve definition itself requires no ellipticity. Both curve and CM theorem bind n explicitly, and the theorem binds n≠0 explicitly. README §6.4 states the same generality, including negative rational D rather than only negative squarefree integers. `[Algebra ℚ K]` over a field enforces characteristic zero; no omitted finite-dimension or characteristic binder is being inferred from an unrelated section variable.

## Adversarial mathematics pass

Each row below is an explicit calculation on the statement, definition, API law, convention or supplier boundary indicated. Synthetic dimensions and local analytic germs test implications and conventions; they are not offered as modular realizations or as arithmetic evidence proving a headline. All actual theorem statements retain their construction hypotheses. Exact integer/rational arithmetic for signs, cubic substitutions, discriminants and rescaling constants was also recomputed in scratch.

| Statement | Instances tried | Computed values on the relevant sides | Result | Change |
| --- | --- | --- | --- | --- |
| Prime and characteristic conventions | p=0,1,2,3; field versus zero ring | 0,1 are not prime; 2,3 are prime; 2≠0 and 3≠0 in every ℚ-algebra field; zero ring has 0=1 | Central projectors are rational even at two; zero coefficient ring excluded | Explicit prime/characteristic-zero standing hypotheses |
| Even critical range | k=0,1,2,3,4,6 | h=0,0,1,1,2,3; 1≤h≤k−1 at k=2,4,6; evenness fails at 1,3 | No weight-zero/odd headline | Kept even k≥2 |
| Real dyadic convention | ℤ/2 real correction; rationalization at two | Integral cardinal 2; tensor ℚ₂ is 0 | Rational amplitude does not assert integral amplitude | Retained real terms before rationalization |
| Tate/Frobenius normalization | Rank-two weight-two roots αβ=ℓ | M geometric determinant ℓ; after twist one, ℓ·ℓ⁻²=ℓ⁻¹; arithmetic determinant ℓ | Dual and twist directions agree | §0.3 explicit witness |
| Coefficient embeddings | Basis γ₁,γ₂, linear regulator R; γ=aγ₁+bγ₂ | R(γ)=aR(γ₁)+bR(γ₂); if both basis outputs 0, output 0 | Nonzero completed output detected on a rational basis | No F_λ→ℂ embedding |
| Height and count convention | Trivial class; X≤1; X→∞ | H(1)=1; H<X has count 0 at X≤1; total asymptotic cX, c>0 | No eventual division by zero | Ratios only eventually and unweighted |
| Quadratic field convention | D=−2, θ²=−2; D=0; characteristic two | −2<0, θ nonzero; θ²=0 impossible for a unit; 2≠0 from ℚ embedding | Native quadratic field lies in intended universe | Explicit D<0 and unit θ in Lean |
| §0.1 definition / implication API | (corank,rank)=(0,0),(0,1),(1,0), r=0 | Implication truth values true,false,true | Direction fixed; neither converse nor equivalence inferred | Definition only |
| §0.1 rank-zero API | Finite analytic orders r=0,1 with unit germ | Germ 1 has value 1, order 0; germ z has value 0, order 1 | Nonzero value iff finite order zero | Actual arithmetic continuation required |
| §0.1 transport API | Equal pairs (0,0) and unequal ranks (0,1) | Equal truth values true,true; changed rank gives true,false | Needs both rank and corank equality | Both assumptions retained |
| §0.1 failure API | (0,1), r=0; (1,0), r=0 | Negated implication true,false; conjunction corank=r and rank≠r true,false | Both directions agree | No change |
| §0.1 Check: dyadic true case | Corank=0, nonzero value | Antecedent true; conclusion order=0; implication true | p=2 allowed | No narrowing |
| §0.1 Check: wrong rank | Corank=0, analytic rank=1 | Rank-zero proposition false; rank-one proposition true by false antecedent | Vacuity understood, not used to prove converse | Hypothetical data labelled |
| §0.1 Check: finite torsion | Rational two-torsion dimension 2, p∞ corank 0 | Kummer dim Sel₂≥2 versus corank 0 | Finite Sel₂ cannot be substituted | Retained negative control |
| §0.2 sign-square API | k=0,2,4,6,8 | Signs 1,1,−1,1,−1; all squares 1 | Total sign convention consistent | No admitted Lean computation |
| §0.2 central parity API | k=2,4,6 | ε(−1)ʰ=1·(−1), (−1)·1, 1·(−1), all −1 | Correct central sign | Explicit witnesses |
| §0.2 period-four API | k=2,3,4,5 and k+4 | Sign pairs (1,1),(1,1),(−1,−1),(−1,−1) | k≥2 periodicity holds, also for odd total inputs | Arithmetic domain remains even |
| §0.2 projection API | c=diag(1,−1), v=(2,4), ε=±1 | P₊v=(2,0), cP₊v=P₊v; P₋v=(0,4), cP₋v=−P₋v | Eigenspaces determined | Linear involution required |
| §0.2 complementary projection | Same v | P₊v+P₋v=(2,4)=v; P₊P₋v=0 | Opposite projection excluded | Added explicit complementary API |
| §0.2 Check: weights two/four/six | v=(1,−1) | P at k=2,4,6 is (1,0),(0,−1),(1,0); wrong (−1)^(k−1) is −1,−1,−1 | Wrong sign fails weight two and six | Tests retained |
| §0.2 Check: total-function junk | k=0,3, truncated exponent | ε(0)=1; ε(0)(−1)⁰=1≠−1; ε(3)=1 | No parity extension to weight zero | Domain explicit |
| §0.2 dyadic integral non-example | Swap involution on ℤ₂² and (1,0) | P₊=(1/2,1/2)∉ℤ₂²; rational coordinates exist | Integral splitting false | Added negative control |
| §0.3 dual central twist | k=2,4; h=1,2 | 1−k+h=0,−1 equals 1−h; wrong h−1 gives −1,−2 | W′=M_f*(h) | Generic comparison imported |
| §0.4 evaluation API | h=1,2, c=−1; h=1,c=4 | Values −1,+1,1/4; wrong positive exponent at c=4 gives 4 | Negative exponent fixed | No character inversion ambiguity |
| §0.4 kernel API | a=σ₋₁+1 and σ₋₁−1, h=1 | Evaluations 0 and −2; membership true and false | Kernel iff tested both ways | No weakening to p-divisibility |
| §0.4 residue API | Constant 0,1,p in A→E | Values 0,1,p; kernel intersects E in 0; image contains all E constants | Quotient E; p unit outside kernel | Rational A, not integral Λ quotient |
| §0.4 twist/augmentation API | σ_c, c=4, h=1 | Aug(Tw σ₄)=1/4=ev σ₄; augmentation without twist is 1 | Semilinear map determined | Twisting convention explicit |
| §0.4 component API / Checks | p=2; h=1 versus h=2 | ev σ₋₁=−1 versus +1; killed idempotent switches | Δ cannot be deleted | Rational idempotents only |
| §1.1 global invariants | S₃ standard rank-two representation; C₃ matrix [[0,−1],[1,−1]]; trivial rank two | S₃ invariants 0; C₃: det(g−1)=3≠0 so invariants 0; trivial invariants dimension 2 | Nonabelian/cyclic controls distinguish irreducibility from dimension alone | Actual irreducible modular carrier required |
| §1.2 first duality application | h⁰(W′)=0, local h¹=2, finite local dimension 1, dual Selmer=0 | h²(W′)=0; quotient dimension 2−1=1; Euler gives h¹=1 | First finite kernel dimension 1−1=0 | Expanded dual calculation |
| §1.2 second application | H_f¹(W′)=0 from preceding row; local h²(W)=0 | Exact-sequence obstruction dimensions 0 and 0; h²(W)=0 | Both Tate-dual uses justified | No direct substitution of W for W′ |
| §1.2 negative quotient control | Global h¹=1, hypothetical local quotient=0 | Finite kernel dimension 1−0=1≠0 | Local quotient dimension is essential | Added explanatory check |
| §1.3 global line/Euler sign | Odd rank two; zero representation | 0−h¹+0=−1 gives h¹=1; zero case gives h¹=0 | Rank-two oddness matters | Zero representation excluded |
| §1.4 central crystalline exclusion | p=2,3; good and monodromic | Moduli 1/√2,1/2,1/√3,1/3, all <1; fixed-φ dimension 0 | Works at two and bad p | Used monodromy-kernel weight |
| §1.4 quotient/injection | Central dimensions; Tate ℚ_p(1) control | Central quotient dimension 2−1=1 and kernel 0; Tate H_g−H_f=2−1=1 | Not true for arbitrary de Rham V | Retained central hypotheses |
| §2.1 derived control | DVR complex R --π→ R in degrees one/two | H¹=0,H²=R/π; after residue specialization H¹=E; Tor₁(R/π,E)=E of length 1 | Underived specialization would give wrong zero | Both Tor degrees retained |
| §2.1 Nakayama boundary | Finite R-module M with M/πM=0; contrast M=R/π | First case M=0; second quotient=E≠0 | Finite generation and degree-two vanishing used in order | Amplitude kills H³ first |
| §2.2 linearity API | γ=γ₁+γ₂, scalar 2, zero vector | z(γ)=zγ₁+zγ₂; z(2γ₁)=2zγ₁; z0=0 | Zero/constant fake map excluded by later basis theorem | Actual morphism composed |
| §2.2 lattice independence API | T and pT inside same V | Rationalized lattices T[1/p]=(pT)[1/p]=V; finite quotient killed by p becomes 0 | Same rational class under supplied comparison | Integral equality not claimed |
| §2.2 specialization API | h=1, σ₄ action | Specialized scalar 1/4, not 4 or 1 | Map is the §2.1 control map | No free cohomology symbol |
| §2.2 conjugation API | h=1,2 | Coefficient −(−1)ʰ is +1,−1 | Correct surviving sign | Uses actual Kato relation |
| §2.2 projection API | Opposite eigenspace; characteristic zero | z=−z implies 2z=0, hence z=0, also over ℚ₂ | Opposite vector cannot generate | Nonzero correct projection retained |
| §2.2 four design Checks | γ=0; weight-two negative; weight-four positive; 2γ | Outputs 0,0,0,2z(γ) | All four discriminating tests survive | No admitted examples in Lean |
| §2.3 equality-to-basis | DVR quotient R/π versus 0; H²=0 | Characteristic ideals (π) versus (1); lengths 1 versus 0 | Equality, not a bare divisibility, kills quotient | Full equality assumption retained |
| §2.3 sign requirement | γ nonzero only in wrong line | Projection 0 and class 0 despite γ≠0 | Arbitrary nonzero γ insufficient | Correct-sign hypothesis explicit |
| §2.4 nonfinite localization | Nonzero basis vector e∈E; global finite space 0 | e≠0 and e∉{0}; zero vector belongs to {0} | Contradiction applies to basis class | No arbitrary localization injection |
| §2.4 bad-place control | Class ramified at one ℓ≠p, finite at p | One local finite test false, p-test true; conjunction false | Cannot ignore conductor primes | Exact bad-prime supplier gap |
| §3.1 period powers and signs | k=2,4,6 | h−1=0,1,2; factors 1,2πi,(2πi)² all nonzero; signs +,−,+ | Period route matches central sign | No completed complex period applied |
| §3.1 Euler-factor product | P=0,L=1; P=2,L=3; product nonzero | Products 0 and 6; nonzero product forces L≠0 | Division by P unnecessary | Preserved omitted-factor identity |
| §3.2 conditional converse | Quotient length 0 versus 1; Selmer dimension 0 | Length 0 gives generator; length 1 does not; nonzero finite-global contradiction uses 0 | No main equality inferred from conclusion | Conditional hypothesis kept |
| §3.3 all-prime CM input | (K,p)=(ℚ(i),2),(ℚ(ζ₃),3),(ℚ(√−7),7) | Quadratic discriminants −4,−3,−7; last two have p≡3 mod4, all cyclotomic exceptional cases | No good-prime exclusion | Corrected exceptional-field list |
| §4.1 rational CM decomposition | Split coefficient extension; order index divisible by p | Rational component dimensions 1+1=2; order-index p becomes a unit in ℚ_p | Rational decomposition survives bad order index | No integral rank-one claim |
| §4.1 Shapiro and dual twist | Two η lines at weight two | (η^∨)(1)=η̄; two modular finite dimensions sum to K finite dimension | Zero direct sum forces both zero | Restored completed scalar and twist types |
| §4.2 elliptic central product | Two nonzero factors a,b; one zero factor | ab≠0 in ℂ; 0·b=0 | Both theta forms must be treated | Arbitrary CM order and p retained |
| §4.3 corank doubling | Rational corank r=0,1,2 | r+r=2r=0,2,4 | Both directions of zero equivalence hold | Rationalized isogeny maps used |
| §4.3 dyadic non-splitting | Swap lattice ℤ₂² | Determinant of columns (1,1),(1,−1) is −2; lattice index 2; after ℚ₂ extension determinant a unit | Rational direct sum, integral finite error | Retained error at two |
| §4.4 analytic order doubling | Germ z^r u(z), u(0)≠0, r=0,1,2 | Squared order 0,2,4=2r; constant unit remains nonzero | No rank≤1 restriction | Full L-factor equality requested |
| §4.5 rational rank-zero consequence | Natural r=0,1; equation 2r=0 | 2·0=0; 2·1=2≠0 | Characteristic-zero/natural equality, not mod-two arithmetic | Every p allowed |
| §5.1 counting API | Ratio exactly 1/2 versus 3/4 | Limits 1/2 and 3/4; both have liminf≥1/2, only first satisfies proposition | Exact proposition determined | Lower-bound stand-in excluded |
| §5.1 analytic-rank API | Unit germ and simple zero | Orders 0,1; values nonzero,0 | Membership equality both ways | Actual finite analytic order |
| §5.1 finite-change API | Counts N_A, N with finite change ≤m, N→∞ | Ratio difference ≤2m/(N−m)→0 eventually | Trivial class convention harmless | Positive divergent denominator explicit |
| §5.1 identical-L API | Same twist values | Indicator values 1=1 or 0=0; numerator counts equal | Both directions immediate | Equality of actual functions required |
| §5.1 four design Checks | All zero-rank, no zero-rank, n=1,2,3 heights, ratio 3/4 | Limits 1,0; magnitudes (1,4),(8,8),(12,3); 3/4≠1/2 | Wrong models distinguished | All retained |
| §5.2 Smith family witness | Roots 0,1,−1 | Products −1,2,2; none rational square; rational torsion dimension 2 | Corank input not dim Sel₂=0 | Unconditional Smith gap explicit |
| §5.2 density-one squeeze | c₀(X)≤nonzero count≤S(X), c₀/S→1 | Lower and upper limits both 1 | Result is exact relative density one | Counts in positive S only |
| §5.3 residue denominator | Six squarefree classes, each X/π² | S leading constant 3/π²; P constant 6/π²; ratio 1/2 | Upper and lower bounds match | Root-number obstruction retained |
| §5.3 root-number upper bound | w=−1 at central argument | Λ(1)=−Λ(1), hence 2Λ(1)=0 and Λ(1)=0 | No assertion order exactly one | Odd positive order only |
| §5.4 discriminant rescaling | n=1,2,3; six residue classes | Discriminants 1,−4;8,−8;12,−3; allowed weight 5/4+1/2+5/4=3; total 6 | Limit 3/6=1/2 | General count imported, application retained |
| §5.4 error transfer | o(X) exceptional set restricted to one class; height cX, c=1,4 | Subset count ≤o(X); rescaled error o(X/c)=o(X) | Density one survives finitely many pieces | Positive density of each class explicit |
| §6.1 CM splitting boundary | K=ℚ(ζ₃), ℚ(i); prime three | Discriminants −3 and −4; three ramified in first, X²+1 mod3 irreducible in second | First admitted, second outside twist theorem | All-prime converse remains separate |
| §6.1 Selmer-strength statistic | Average reduced even rank≤1 | If a fraction a has rank≥2, mean≥2a, so a≤1/2 | Zero reduced rank lower proportion≥1/2 | Supplied corank theorem, not mere MW rank |
| §6.1 ratio-one convention | One complex place over K and local three product | Infinite ratio 1/3; product above three 3; total 1 | Norm-three maximal-order route consistent | Nonmaximal order uses isogeny corank |
| §6.1 height-one check | K=ℚ(i), classes [1],[i] | All finite valuations even; H=1 for both; i not a square in ℚ(i) | Height-one fibre not singleton | Unit/Selmer fibres retained |
| §6.2 coefficient API | n=0,1,−1,3 | a₆=0,−27,−27,−243; other four coefficients 0 | n² dependence fixed | Simple model remains README definition |
| §6.2 discriminant API | Same n | Δ=0,−314928,−314928,−25509168; equals −16·3⁹n⁴ | Scale and exponent verified | No new generic discriminant API |
| §6.2 ellipticity iff API | ℚ, n=0 versus n=±1 | Δ=0 is nonunit; Δ=−314928 nonzero is unit | Both directions verified | Elliptic uses exclude zero |
| §6.2 negation API | n=±1 and ±3 | a₆ pairs −27=−27,−243=−243; full coefficients equal | Same model | No sign-sensitive coefficient error |
| §6.2 j API | n=1,3 versus n=0 | c₄=0; 0³/Δ=0 at nonzero n; Δ-unit unavailable at 0 | j=0 only elliptic inputs | No division by zero |
| §6.2 projective forward identity | n=3,(x,y,z)=(2,−1,1) | F=1; G(forward)=972=108·9·1 | Nonzero polynomial value verifies scalar/sign | Both directions stated |
| §6.2 projective inverse identity | n=3,(X,Y,Z)=(2,1,1) | G=236; F(inverse)=38232=54·3·236 | Inverse equation factor correct | Full projective comparison gap |
| §6.2 composites/origin | n=3,(2,−1,1); source origin | Composite (108,−54,54)=54(2,−1,1); origin image [0:54:0]=[0:1:0] | Scalar 18n nonzero | Denominator avoided projectively |
| §6.2 base-change API | ℚ→ℚ(ζ₃), n=1 | Coefficients map to 0,0,0,0,−27; integer-polynomial substitution values unchanged | Maps commute | Native coefficient map reused |
| §6.2 four design Checks | n=1,0,−1,3 | Points (1,1),(−1,−1) give (3,0), with 0=27−27; zero discriminant at 0; Δ(3)=−314928·81 | All four retained | −27 model values verified |
| §6.2 conventional scaling | (X,Y)→(4X,8Y) | (8Y)²=64(X³−27n²)=(4X)³−1728n²; coefficient becomes −1728n², not −432n² | Design's stated scaling is false | See correction immediately below |
| §6.3 order-three automorphism | ζ₃³=1 versus identity | (ζ₃X)³=X³; 1+ζ₃+ζ₃²=0; identity gives 3≠0 | Nontrivial CM action required | Full order-action supplier explicit |
| §6.3 ramification and fixed parameter | Polynomial T²+T+1, fixed n=1 | Discriminant 1−4=−3; norm of (1−ζ₃) is 3 and norm of its square is 9 | Three ramified; twist theorem applies | No density in integer n |
| §6.4 descent definition / base-change API | E/ℚ base change, C=1 | 1•E_K=E_K | Actual pointed descent predicate | Real body on native carrier |
| §6.4 isomorphism API | C and C⁻¹ | C⁻¹•(C•E_K)=E_K | Descent preserved both directions | Pointed changes, not abstract group isomorphism |
| §6.4 j-necessity API | Y²=X³+X+(1+i) over ℚ(i) | Δ=−16(4+54i)≠0; j=6912/(4+54i) has nonzero imaginary part | Does not descend | Nonrational-j negative control |
| §6.4 squareclass API | a versus 4a; a=0 | Short coefficients scale by 16,64 under variable scaling 2; zero parameter gives zero discriminant | Same class for nonzero a; zero excluded | Units in headline |
| §6.4 generic descent-coset theorem | Nonexceptional j; t=t₀ | Ratio class 1, first branch q=u=1 | Base descending twist need not be 1 | Correct quantifier order |
| §6.4 j=0 coset argument | Quotient group exponent two, element u | [u]²=1 and [u]³=[u]; [u]³=1 gives [u]=1 | One coset suffices | Exceptional cubic twist treated |
| §6.4 j=1728 second coset | K=ℚ(√−2), t=√−2, A:y²=x³−x | Short twist coefficient −t²=2∈ℚ; t∉ℚ×K×² since a²=2b² has no nonzero rational solution | Second coset necessary | Use this witness, not Gaussian i (which is a rational squareclass) |
| §6.4 independence of θ sign | θ and −θ | Additional coset ratio −1∈ℚ× | Same two-coset statement | No hidden generator normalization |
| §6.5 split/inert height | K=ℚ(i), rational ℓ=5,3 | H([5])=5·5=25; H([3])=9 | Contribution ℓ² in both cases | No rational-height substitution |
| §6.5 ramified support | ℓ=2 in ℚ(i) | (2) has valuation 2, so H([2])=1 | Fixed ramified primes must be separated | Finite exceptional support only |
| §6.5 fixed coset height bound | Support a finite, outside part n_out | H(a[n])≥c n_out²; n_out≤√(X/c), at most 2⌊√(X/c)⌋ signed integers | O(√X) upper bound | No principal-ideal assumption |
| §6.5 density-zero consequence | Total cX+o(X), descending≤C√X | Ratio≤(C/c)X⁻¹ᐟ²+o(1)→0 | Northcott alone insufficient | Positive linear supplier used |
| §6.6 non-descending numerator | Original lower ratio≥1/2; lost≤C√X | New lower ratio≥1/2−O(X⁻¹ᐟ²) | liminf bound retained | No exact density inferred |
| §6.6 restricted denominator | N_nd=N−O(√X), N∼cX | N_nd/N→1; multiplying ratio by N/N_nd→1 | Same lower bound; eventual positivity | Both denominator versions stated |
| §6.6 empty descent and stronger proportion | D empty; original ratio→3/4 | Lost=0; limiting ratio remains 3/4 | Theorem is consistent with >1/2 | Lower bound only |

The scaling row exposed a genuine design error during this pass. For the conventional model of x³+y³=2n, the usual coefficient is −432·(2n)²=−1728n², obtained from this model by X↦4X,Y↦8Y. The coefficient −432n² instead belongs to x³+y³=n; it is not that scaling for the same n. The final README uses −1728n² and distinguishes the two source equations. This correction changes no design JSON field outside its permitted gaps array.

The supplier contracts were also tested at their boundary values. These rows test the requested mathematics and whether the readable supplier actually states it; a gap remains an unfulfilled interface, not a proved theorem in this package.

| Statement | Instances tried | Computed values | Result | Change |
| --- | --- | --- | --- | --- |
| newform-central-analytic-interface | h=1, coefficient conjugation, zero Euler factor | conjugate(0)=0; conjugate(1+i)=1−i; 0·L=0 | Exact local factor and coefficient embedding needed | Explicit gap on ModularForms Layer 7 |
| elliptic-quadratic-analytic-identities | Two local factors, central order 2 | Product order 2+2=4; sign −1 gives central value zero | Neither a coprime-only factor nor rank≤1 theorem suffices | Earlier analytic owner requested |
| isogeny-corank-all-primes | deg φ=p; rational scalar p on ℚ_p^r | p is invertible; inverse p⁻¹; corank r unchanged for r=0,1 | Includes isogeny degree divisible by p | Generic theorem stays in EllipticCurves |
| pointed-cubic-model-comparison | Source origin, n=0 and n=1 | [1:−1:0]→[0:18n:0]; at 0 all coordinates zero, at 1 valid infinity | n≠0 essential; affine points insufficient | Explicit pointed interface |
| kato-rational-duality | W and W′, real ℤ/2 term | Euler −1 for each odd rank-two realization; real rational term 0 | Both dual applications needed | Exact rational j_* contract |
| central-jstar-control | DVR R/π and degree-two residue | Tor₁ length 1 before H² killed, 0 afterwards | Generic degree-one identification alone insufficient | Kato-complex comparison gap |
| central-finite-conditions-and-descent | Bad prime singular class; dyadic restriction/corestriction | Singular local indicator false; composites 2 become invertible over ℚ₂ | Bad primes and dyadic errors cannot be omitted | Explicit all-place contract |
| central-modular-local-dimensions | k=2, r=1 and exceptional κ⁻²χ | Equality κ⁻¹=κ⁻²χ would force κ=χ; κ(1+p) has infinite order, χ finite order | Central character is not exceptional | All-prime local result requested |
| cm-rational-kato-equality | H²=0, quotient R/π | Characteristic ideals (1) and (π) differ | A single bound cannot give the needed equality | Gap on existing cohomological owner |
| theta-induction-arbitrary-cm-curve | A/K without rational descent; two Tate lines | 1+1=2 over split coefficients; each induction has dimension 2 over G_ℚ; Selmer Shapiro does not double K-cohomology | Induction theorem for A/ℚ alone insufficient | Arbitrary-K extension requested |
| cube-sum-full-cm | ζ₃ action and proper conductor-two suborder | ζ₃²+ζ₃+1=0; maximal discriminant −3 versus suborder discriminant −12 | Zero action and proper suborder are excluded by full ring equivalence | Native full-CM headline added; normalized-action supplier contract retained |
| smith-unconditional-positive-corank | S density 1/2; even corank≥2 on nonzero part | Bad fraction ≤o(X)/(3X/π²)→0 only once the unconditional Smith law is supplied | Readable supplier retains that law as hypothesis | Explicit unconditional gap |
| cm-three-selmer-unconditional | Ratio-one stratum, mean even reduced rank≤1 | Rank≥2 fraction≤1/2; denominator positive linear | Readable numerator still assumes its cubic counting contract | Explicit unconditional gap |

For the added native CM signature, n=0 gives Δ=0 and no ellipticity witness; n=1,−1,3 give the nonzero discriminants above. A ring equivalence sends one to one, so the zero map cannot satisfy it; the conductor-two suborder has discriminant −12 and cannot replace the maximal ring of discriminant −3. The statement intentionally asserts existence of a full-ring isomorphism, leaving the two conjugate choices of ζ₃ generator unmarked. The explicit geometric automorphism in README §6.3 provides the associated normalized action, which is a supplier-interface target, rather than an arbitrary endomorphism of the point group.

Finite extensions of ℚ are separable, so inseparable and equal-characteristic coefficient cases are outside the stated carriers. A square-zero coefficient ring ℚ_p[ε]/(ε²) is not a field and is excluded from the representation and descent headlines; the native Weierstrass coefficient definition itself remains meaningful under base change. There is no free indexing family or out-of-range index in either Lean theorem. Natural subtraction's only total-function issue is the sign at k=0, covered above. The real count ratios at empty cutoffs are never used to claim a limit. Each constructed map's source and target, and each denominator's nonvanishing reason, are stated in the corresponding README section.

## Sources and citation resolution

The sources service fetched all three cited works legally and recorded them once each in `sources.toml`: BT (open arXiv v2), Kato (Numdam open archive), BKLOS (author page). All three entries are certified, with hashes and fetch metadata. Kato and BKLOS bibliographic fields were filled from the actual cited works because the PDF URLs did not populate them automatically. Every source in the README is in the manifest, and no source needs a missing-reference request. No source file or extraction was copied into the package or report. BT locators refer to the seven-page v2; the thirteen-page version of record's numbering is not presumed interchangeable. Kato's critical theorem is on printed pp.221–222, local dimensions on pp.241–242, and CM descent on pp.264–265; the cache page markers were translated to those printed pages.

The resolver found no missing names belonging to this roadmap. Its two unresolved cross-roadmap names were KatoEulerSystems and PadicHodgeRegulators, which are board packages absent from the indexed content roadmap heads; the supplied board heads and exact sections were read as described above. It reported that external Lean names were not checked because it found no pinned Lake packages from the board cwd. That is a tool coverage limitation: the worker's content checkout does have the two pinned packages, and the direct source/declaration audit above used those packages. No missing-library verdict was taken from that resolver message.

No suspicious instruction embedded in a fetched source was used. All source/review/roadmap text was treated as data; mathematical verdicts and edits were made directly, without helper agents, external messages or GitHub writes.

## Elaboration and dependency outcome

Ran the required `lake env lean` invocation on the absolute target path corresponding to `packages/CMRankZeroConverse/Suggested.lean`, from the read-only content project root. Exit code: **0**. Final count: **2 `sorry` warnings, 0 errors, 0 other warnings or messages**. The diagnostic file prefix is rendered repository-relative here as required:

```text
packages/CMRankZeroConverse/Suggested.lean:53:8: warning: declaration uses `sorry`
packages/CMRankZeroConverse/Suggested.lean:76:8: warning: declaration uses `sorry`
```

The quadratic-twist object was present. The endomorphism-ring object was absent, so first ran the permitted targeted build `lake build TauCeti.AlgebraicGeometry.EllipticCurve.Isogeny.Hom.Ring` from the same project root. It completed successfully; final output was `Build completed successfully (3951 jobs).` No bare build, dependency update or cache command was run.

An intermediate elaboration of the added CM statement used unopened scoped notation for the ring of integers. It was corrected to the explicit native name `NumberField.RingOfIntegers`, without changing the mathematics or adding an option. That intermediate diagnostic, with its file prefix rendered relative, was:

```text
packages/CMRankZeroConverse/Suggested.lean:56:17: error: Function expected at
  𝓞
but this term has type
  ?m.1

Note: Expected a function because this term is being applied to the argument
  (CyclotomicField 3 ℚ)

Hint: The identifier `𝓞` is unknown, and Lean's `autoImplicit` option causes an unknown identifier to be treated as an implicitly bound variable with an unknown type. However, the unknown type cannot be a function, and a function is what Lean expects here. This is often the result of a typo or a missing `import` or `open` statement.
```

The four-declaration binder inspection also exited **0**, with exactly the same two proof-placeholder warnings and the four requested types. Its type output confirms both n≠0 and the existential ellipticity proof in the full-CM signature, as well as every descent-theorem hypothesis described above. The geometric CM theorem is on the actual algebraic morphism ring, so it is neither a free scalar identity nor a fake action on an arbitrary group.

Ran the exact requested movable dependency check with `--name CMRankZeroConverse` and the supplied order. Its final output is:

```text
depcheck: 27 roadmaps, 241 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line and no moved line. Local proof dependencies run 0→1→2→3→4 and then to 5 and 6; the descent estimate uses the geometric and height suppliers and does not feed any of them. Source citations are not counted as proof suppliers. The missing general interfaces are the 13 registered gaps, not unstated local assumptions.

Final file audit: both TOML files parse; all three source IDs have status certified; every gap sentence agrees exactly with the matching README supplier subsection; every non-gap design field equals its input value; the four owned Lean identifiers have README counterparts and no backticked undeclared local API name remains. No machine path, copied source passage or forbidden Lean command appears in the deliverables. Only the authorized deliverable paths were edited, with the plan change confined to its top-level gaps array. All Lean processes have terminated.
