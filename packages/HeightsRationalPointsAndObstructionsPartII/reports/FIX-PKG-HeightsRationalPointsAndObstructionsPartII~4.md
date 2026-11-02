# Repair report: HeightsRationalPointsAndObstructionsPartII

## F01 (P1) — applied

False projective singleton-height equality → singleton intersection count at most one, with the coefficient/Fubini–Study comparison and cubic negative control. Only §5.7 changes: the conventions and supplier Checks already distinguish these projective heights, and §7.1's canonical point identity is valid. The positive-dimensional interpolation statement and Lean headlines are unchanged.

## F02 (P2) — applied

Parent §5.9c with an ample subtrahend → ArakelovGeometryAndAbelianHeightsPartII §0.5's geometric two-nef inequality. Updated the exact supplier contract, §2.6 route and Needs, and Layer 2 Dependencies. Added the fixed elliptic graph Check: deg F=16, deg M=0 and volume=16. This consumes an existing earlier supplier; no new Siu target or gap.

## F03 (P1) — applied

False finite-translate identity and degree-D^r estimate → a containment proof owned in §5.6. Enclose each E_j in a proper two-translate intersection of degree ≤D²; bound the union, separating r=1. Handle small Ξ and early isolation explicitly. Added both curve controls; updated §5.6 Needs and Layer 5 Dependencies. The endpoint and downstream consumers are unchanged.

## F04 (P3) — applied

Replaced the three erroneous extraction line numbers: §0.2 uses dmy-2026 line 879; §2.8 uses ggk-2026 line 783; §6.11 uses dgh-2021 line 1618. Read each passage and retained the printed page/theorem locators. Other occurrences of lines 69 and 38 correctly cite the opening theorems and remain unchanged. No manifest locator repeated these errors.

## Evidence and scope of the repairs

| Finding/input | Evidence read | Mathematical consequence |
|---|---|---|
| F01 cycle metric | TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md §5.9b; dgh-2021 line 1241, §6.1; package Conventions and Exact supplier contracts | Projective intersection metric is Fubini–Study; the coefficient maximum is a comparison height. Locally max ≤ Euclidean norm ≤ √(n+1)max; normalized archimedean weights sum to one. |
| F02 old hypothesis | TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md §5.9c, nefDifference_sections | The subtracted bundle N is explicitly ample. Degree-zero M on an elliptic graph does not satisfy that hypothesis. |
| F02 replacement | packages/ArakelovGeometryAndAbelianHeightsPartII/design/README.md §0.5 | Supplies the volume inequality for two nef bundles, including its geometric form. Multiplying by q scales the positive volume by q^d. |
| F03 source endpoint and bad step | ggk-2026 line 1790, Proposition A.3; lines 1798–1821 | The endpoint is supported, but lines 1817–1820 do contain the invalid intermediate argument. The replacement is proved in the package and does not adopt that step. |
| F03 original locator | remond-2000-decompte, Proposition 3.3 | Settled uncertified source retained by locator only. No claim to have read its proof; no additional retrieval requested. |
| F03 degree inputs | TauCetiRoadmap/SchemeAndStackFoundations/README.md §§0.3,5.12; TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md §§A2.3,A2.10 | Projective hyperplanes and refined Bézout, and translation invariance in the Néron–Severi group, are earlier inputs. Summing over reduced components gives the total-degree form used here. |
| F04 product observation | dmy-2026 line 879, §5, printed p. 26 | Page marker at line 783 does not locate the observation; printed pages 26–27 retained. |
| F04 equation | ggk-2026 line 783, equation (4.6), p. 206 | This is the family height inequality, not Theorem 1.1 on line 69. |
| F04 small-height argument | dgh-2021 line 1618; Northcott at lines 1637–1645, pp. 34–35 | Correct proof and finite-fibre Torelli inputs. |

The pattern search covered singleton/point heights, Siu and §5.9c references, translate intersections and degree exponents, and all occurrences of the three wrong locators. The canonical normalization in §7.1 is distinct and agrees with its existing Checks. The broader parent contract retains §5.9c for the qualitative Vojta construction; Layer 2 no longer relies on it. Section 5.8 consumes only §5.6's unchanged endpoint D^(2 dim X), so its block size and counting route require no numerical change. The new proof does not infer a degree bound for an arbitrary closed subset from its containment in a positive-dimensional set.

The source audit found that the primary Yuan–Zhang work already cited in §7.2 was absent from the starting manifest. Fetched it through the sources service under yuan-zhang-adelic, read Theorem 5.3.3 at yuan-zhang-adelic line 6219 and Lemma 5.3.4 at line 6229, and added its bibliographic entry. The 16 existing source entries are preserved byte for byte; the new entry records arXiv v9 and its theorem/page numbering. There are 17 distinct keys, 15 certified and two settled uncertified. No missing text remains for these repairs; neither settled uncertified work was requested again. No mathematical target was added by this bibliographic completion.

## Ownership and citation checks

Read TauCetiRoadmap/ComplexTori/README.md and TauCetiRoadmap/AdicSpacesPartIII/README.md on main for shape. Searched by object using roadmaps grep across main and the indexed open roadmap heads, and searched the board packages for isolated difference-map fibres, intersections of translates, containment-degree bounds and two-nef Siu. The parent owns qualitative Vojta geometry; this package already owns its quantitative isolated-fibre alternative. The repaired containment argument belongs to that target. General volume/Siu remains with ArakelovGeometryAndAbelianHeightsPartII §0.5; no generic carrier or foundational target is duplicated.

Re-resolved cross-roadmap citations against main and available open heads, checking the supplier section ranges and their stated interfaces. The board design copies supply StableReductionPartII and ArakelovGeometryAndAbelianHeightsPartII. Relevant contracts checked include SchemeAndStackFoundations §§0.3,0.8,4.11,4.13,5.1–5.6,5.12; the parent's §§0.16–0.35,1.7–1.11,5.1–5.19; AlgebraicModuliForArithmeticGeometry §§1.5–1.6,2.1; PELModuli M5–M6; AbelianSchemesAndArithmeticModuli A1–A3,A6; its Part II B0–B4; ComplexComparisonPartII C5; ArakelovGeometryAndAbelianHeights §§2.7,3.4,4.2–4.4,5.5–5.8,6.3; the Part II ranges listed in Exact supplier contracts; StableReductionPartII MC.4,MC.6–MC.7; JacobianChallengePartII Layers 0–3,5,7; the Néron-model sections; TropicalAndBerkovichArithmetic §§6.2–6.4,7.0 with its existing gap; InverseGaloisAndArithmeticFundamentalGroups IG.2; AlgebraicCurves Layers 10–11; JacobianChallenge Layer F; and ArithmeticDynamics §§6.57–6.64,6.93,6.110–6.112. The open-head object search includes the named sibling roadmaps; no new owner of the quantitative alternative was found.

The resolver reports `ArakelovGeometryAndAbelianHeightsPartII §§3.1: no roadmap ArakelovGeometryAndAbelianHeightsPartII on main or in an open pull request`. This is an index limitation: packages/ArakelovGeometryAndAbelianHeightsPartII/design/README.md contains those sections and the new §0.5 dependency, and merge-order/ORDER.txt places that supplier at 269, before this package at 291. The resolver found no missing Lean name. Its host-level warning that pinned Lake packages were not checked was addressed by inspecting the actual content pins.

Pinned Mathlib revision 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti revision a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039 were read from the content manifest. Checked native objects rather than package spellings: Mathlib/Topology/MetricSpace/CoveringNumbers.lean:74,288,351; MetricSeparated.lean:43; Mathlib/MeasureTheory/Measure/Lebesgue/EqHaar.lean:500; Mathlib/NumberTheory/Height/Projectivization.lean:51; TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95,281; Isogeny.lean:61; Albanese.lean:84; Mathlib/CategoryTheory/Monoidal/Cartesian/Grp.lean:58. In particular, native IsAlbanese supplies pointed universal factorization, not curve smoothness, dimension or an embedding; these are imposed by the acceptance signatures and their mathematical interpretation. The point-group and isogeny conventions remain unchanged. The pinned geometry/height searches found no existing quantitative containment alternative or general two-nef volume theorem to replace these roadmap targets.

## Validation outcomes

- Ran the prescribed `lake env lean` command on packages/HeightsRationalPointsAndObstructionsPartII/Suggested.lean from the pinned content checkout. Exit 0, no errors, exactly three expected `declaration uses sorry` warnings, at lines 57,75,96. The imported Albanese object file already existed; no module build was needed.
- Elaborated a scratch copy containing `#check @` for all three declarations. Exit 0, the same three expected warnings. Compared each full elaborated type with README §§3.6,6.8,6.12: smoothness, properness, geometric integrality, curve dimension, Albanese property, genus, field assumptions, translations, cardinal bounds and positive-power division-hull conditions are present. B precedes every field quantifier. No binder was lost and no signature change was needed.
- Suggested.lean retains exactly the three headline theorems, each with sorry, the single Mathlib import and used Tau Ceti Albanese import. No added definition, example, API padding, set_option or sorry'd data. No own Lean name was added, removed or renamed.
- Ran the prescribed dependency command with `--movable`. Exit 0; exact output:

```text
depcheck: 52 roadmaps, 597 edges, 0 problem(s)
```

No UPWARD or CYCLE line. No merge-order modification.

- `git diff --check`: exit 0, no output. Source TOML parses with unique keys and the existing settled statuses intact. The additional `tex=1` gate failure identified the Siu formula in Exact supplier contracts. Replaced its unquoted braced exponents by Unicode superscripts: vol(F−tM)≥Fᵈ−dt(Fᵈ⁻¹·M). The statement, hypotheses and numerical Checks are unchanged; the existing §2.6 row computes 16=16−t·0 for t=0,1/2,2. Searched the whole README for the same notation pattern; other braced expressions are inside code spans.

The formatting repair was followed by another Lean elaboration and all three `#check @` signature checks: both exited 0 with the same three expected sorry warnings and no binder changes. The dependency rerun exited 0 with exactly `depcheck: 52 roadmaps, 597 edges, 0 problem(s)`. Whitespace validation exited 0. A full content scan through a scratch staging layout reports `tex=0`, `latex=0` and zero for every other content counter; its overall exit is 1 solely for `dirty=1` (`?? TauCetiRoadmap/`), the untracked scratch staging directory. No commit was made.

## Computed adversarial mathematics pass

These substitutions were recomputed against the README targets, including unchanged consumers of the changed objects. The table records one row for every numbered target, with additional rows for conventions, APIs and the new proof steps. Numerical tests exclude specific wrong formulations; the containment proof above supplies the general argument for F03. None of these tests treats elaboration with sorry as a proof.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Integral and geometric-integral conventions | Spec k; Spec k[ε]/ε²; empty scheme | reduced/nonempty: yes; nilpotent ε≠0: no; empty: no | Exclusions discriminate | None |
| Geometric generic fibre in product arguments | Multisection [2]x=s on E×E, characteristic zero | degree 4; self product has 4 components indexed by E[2] | Irreducible multisection is insufficient | None |
| Pairing normalization, Conventions and §5.1 | ĥ(P)=1, Q=P or 0 | unhalved b(P,P)=4−1−1=2; half=1; b(P,0)=0 | Matches squared norm | None |
| Absolute number-field height | [2:1] over ℚ and ℚ(i) | log 2; (2log 2)/2=log 2 | Extension invariant | None |
| Coefficient versus cycle height | [2:1]; [3:5:1] on y²z=x³−2z³; [1:0] | 0.693147 versus 0.804719; 1.609438 versus 1.777674; 0=0. Cubic difference 0.168236<½log3=0.549306 | Projective singleton identity is false; canonical point identity remains valid | F01, §5.7 Check |
| Fixed-constant function-field height | [1:t]; [1:1/(t²+1)] over ℝ(t), then ℂ(t) | 1; 2; (2+2)/2=2; omitting residue degree gives 1 | Correct weights and denominator | None |
| Twice-theta and level-four normalizations | g=2 Abel curve; principal height a=1 | degrees 2 and 8·2=16; Θ₂-height 2, doubled-point principal height 4; 𝔏⁴-height 8 | All rescalings consistent | None |
| Isogeny convention | Identity; [2] in characteristic 2 and [3] in characteristic 3 on an elliptic curve | Degrees 1, 2²=4, 3²=9; inseparability does not change finite surjectivity | No separability shortcut | None |
| Cycle multiplicity convention | Twice a point cycle of height a | unnormalized height 2a; normalized quotient 2a/2=a | Multiplicity retained where required | None |
| §0.1 total degree | Line plus exterior/interior point; empty set | 2=1+1; 1<1+1; 0 | All dimensions counted | None |
| §0.1 powers, products, projection and Bézout | Conic with O(2); product of two conics; line in ℙ² | 2·2=4; binom(2,1)·2·2=8; projected degree 2≤8; self intersection component degree 1≤1 | Signs and exponents pass | None |
| §0.2 product-set lemma | ℙ¹, M=2, diagonal, Σ with one/two points | 1²=1 allowed; two distinct points give 4 pairs, two outside Δ | Proper exceptional subset required | None |
| §0.3 escape lemma | A line and a conic meeting properly, M=1 | at most 1·2=2 points; 3 distinct points cannot all lie in intersection | Positive exponent retained | None |
| §0.4 packing | ρ=0; S=∅; interval [−r,r], R=r>0 | 1≤1; 0≤1; covering number 1≤3 | Division needs r>0; r=0 gives infinite interval cover | None |
| §1.1 restricted Hilbert family | E with O(3·0); point; diagonal in E² with product O(3·0) | Hilbert polynomials 3n and 1; diagonal degree 3+3=6 | Dimension and reduced-integral conditions discriminate | None |
| §1.2 universal degree convention | E; genus-two Abel curve | 8·1=8; 8·2=16; heights multiply by 4 relative to L⁺ | Matches Conventions | None |
| §1.3 fibre powers | Curve fibres over a curve; m=1,2 | dimensions 2 and 3; absolute square dimension 4 | Fibre product distinguished | None |
| §1.4 finite incidence fibre | Translates E×{b} in E² and P=(0,b₀) | exactly one translate contains P, namely b=b₀ | Nonempty finite fibre | None |
| §1.5 generic finiteness | S a point; m=1 | X→X has fibre cardinality 1 and relative dimension 0 | Base case | None |
| §1.6 non-degeneracy | X_s=A_s, dim S=1 | real source dimension 2mg+2 versus Betti target 2mg | Finite stabilizer cannot be omitted | None |
| §1.7 generation locus | E×{0}⊂E²; X=A; genus-two Abel curve | generated dimensions 1<2, 2=2, 2=2; stabilizer dimensions 1,2,0 | Both tests needed | None |
| §1.8 closure components | S_gen=∅ | closure ∅ has 0 components | Vacuous base case | None |
| §2.1 level hypothesis | ℓ=2 and 3, char 0 | −1 acts identically modulo 2; −1≠1 modulo 3 | Level two does not rigidify | None |
| §2.2 cutoff form | [2]; d=2; nonconstant cutoff | pullback 4θω; wedge 16(θω)²; derivative dθ∧ω | Scaling and nonclosedness compatible | None |
| §2.3 graph | N=1; constant torsion P₀ killed by N | diagonal graph, dim X; second coordinate [N]P₀=0 | Graph maps agree | None |
| §2.4 top intersection | d=1, N=2; constant torsion section | required growth factor 2²=4; Betti integral on section 0 | Degenerate section excluded | None |
| §2.5 mixed intersection | d=1,2; N=2 | factors N⁰=1 and N²=4 versus top factors 4 and 16 | Exponent difference 2 | None |
| §2.6 height route | Fixed E, deg L=4, N=2, point base; rational t=0,1/2,2 | deg F=16, deg M=0; volume 16=16−t·0 in all three cases; M has degree 0 | Two-nef input applies; ample-subtrahend input does not | F02, supplier contract, §2.6 and Layer 2 dependencies |
| §2.7 canonical inequality | c₁=c₀=1, N=2; base point case | coefficient 1−¼=¾≥½; constant base height absorbed in c₂ | No division by point height | None |
| §2.8 general base | Nodal curve base; regular locus; constant torsion section | singular point has two branches; smooth open dimension 1; torsion height 0 | §2.7 alone cannot cover stated base | None |
| §3.1 canonical measure | Fixed elliptic curve; torsion section over curve | normalized Haar mass 1; restricted Betti form 0 on section | Nonzero measure requires non-degeneracy | None |
| §3.2 equidistribution | Fixed abelian variety, test f=0; degree-two pullback | integrals/orbit averages 0=0; raw mass 2, normalized mass 2/2=1 | Normalization and tests compatible | None |
| §3.3 Hilbert uniform Bogomolov | Positive-dimensional subgroup X | X°=∅, small-point set cardinality 0 | No forbidden small points | None |
| §3.4 exceptional Bogomolov | X=E⊂E | generating but stabilizer dimension 1; X°=∅, degree of empty exceptional set 0 | Stabilizer-zero not silently assumed | None |
| §3.5 arbitrary X | Small P,P₀ with heights ≤ε; torsion coset | ĥ(P−P₀)≤2ε+2ε=4ε; coset has infinitely many height-zero points but X°=∅ | Quarter threshold and Ueno removal needed | None |
| §3.6 / `uniform_maninMumford_curves` | D=[Q]; g=1; Stoll curve | a(Q)·a(Q)⁻¹=1, order 1; wrong sign gives a(Q)²; g=1 has infinite torsion; c(2)≥34 | Correct translation; genus bound essential | None |
| §4.1 curve degree | Translate of genus-two Abel curve | theta degree always 2; arbitrary translation may increase height | Degree and height quantifiers differ | None |
| §4.2 base points | Genus-two theta curve, M=1, proper irreducible Z in J | If Z=Θ−P₀, only P=P₀ gives C−P=Z since Stab Θ={0}; count 1≤84 | Properness and finite stabilizer discriminate | None |
| §4.3 distance | Modular height H=100, c₃=10; H below c₁ | threshold H/c₃=10; below c₁ no conclusion asserted | Height threshold remains explicit | None |
| §4.4 Hilbert gap | dim S=0, c′₁=1, H=1, c′₃=2 | height cutoff −1; nonnegative heights give empty set, degree 0 | Base case and general-base route compatible | None |
| §4.5 principal gap | Genus-two Abel curve | r=1,d=2; proper exceptional subset dimension 0 | Bounded degree is bounded cardinality | None |
| §4.6 all polarizations | l=g!; n=2, exceptional curve | principal case n=1; quasi-inverse degree factor n²=4 | Degree factor not n | None |
| §4.7 combined gap | c′₁=c′₃=c″₃=1, H=2 | c₁=½ gives cutoff 1; both ranges give 1; choose maximum of degree bounds | Ranges meet without losing boundary | None |
| §4.8 degree-only gap | X=A, g≥1 | X°=∅; count 0 and empty exceptional subset degree 0 | Degenerate ambient case consistent | None |
| §4.9 curve gap | Genus 2, y=x; height threshold 0 | ĥ(x−y)=ĥ(0)=0 | Torsion consequence includes base point | None |
| §5.1 Euclidean subgroup | Γ torsion; Γ=division hull of ℤP with ĥ(P)=1 | real dimensions 0,1; norm(P)²=1 and half-pairing diagonal 1 | Finite rank does not imply finite generation | None |
| §5.2 embedding constants | O_E(2·0), O_E(3·0), O_E(4·0) | h⁰=2,3,4; first map degree 2; cubic degree 3; O_E(4·0)=O_E(0)⁴ | Degree two fails embedding; cubic embeds; fourth power is a fourth power | None |
| §5.2 cubic normality | Smooth cubic E⊂ℙ², powers n=1,2 | section dimensions 3 and 6 equal dimensions of linear/quadratic forms; generally H¹(ℙ²,O(n−3))=0 | Restriction surjects in every degree; smooth E is normal | None |
| §5.3 controlled coordinates | Coefficient vector [1:1] versus [1:2^m] | heights 0 and m log 2 | Arbitrary coordinate changes cannot preserve a fixed bound | None |
| §5.4 Vojta cone conditions | Vectors (1,0),(0,1); c₄=2 | inner product 0<½·1·1 | Orthogonal example excluded | None |
| §5.5 Mumford conditions | P_i=P₀ of norm 1, c₄=2; subgroup fibre | 1≥½; norm difference 0≤½; subgroup difference fibre has positive dimension | Isolation remains separate from angle test | None |
| §5.6 exceptional degree | Theta curve, L=3Θ; X=[3]⁻¹Θ, L=3Θ | D=6, deg E=1, dim E=0 versus translate dimension 1; D=54, deg E=81>54, while 81≤54²=2916 | False intermediate estimate rejected; final containment bound survives | F03, proof route and Checks |
| §5.7 interpolation hypotheses | r=0 singleton; r=1, S empty; deg A=6,g=2,D=3 | Singleton count ≤1; empty S excluded; cutoff 6·9/2=27; prefactor (3+1)²·3=48 | Positive-dimensional theorem unchanged; no coefficient/FS equality | F01, singleton Check only |
| §5.8 large points | Γ torsion; contradiction threshold 10, chosen cutoff 20 | positive-height torsion count 0; cutoff gives 20>10 | No equality loophole | None |
| §5.9 packing predicate | X°=∅; genus-two base point and Γ={0}, then order-two enlargement | counts 0; 1≤1; enlarged count 2>1 | Enlargement is not invariant with same constant | None |
| §5.10 counting | Rank 0; X°=∅ | upper bound c¹=c; empty count 0 | Small points require packing input | None |
| §5.11 threshold choice | c₁=¼,c₃=2 | c₀=max(4,2)=4, 1/c₀=¼; max(c₁,c₃)=2 would give ½>¼ | Existing reciprocal retained | None |
| §5.12 principal theta form | g=1, dim X=0, r=0 | exponent (0+1)·1^(5·1²)=1; base 2³⁴h₀deg X | Zero-dimensional case still bounded | None |
| §6.1 count over ℚ̄ | X=A, g>0; Γ={0} | empty count 0; general Γ={0} count 0 or 1 | Ueno complement is essential | None |
| §6.2 specialization | Legendre λ=2, μ=0, P=(2,μ) | μ²=2(2−λ)=0; P exact order 2; 2P specializes to 0 | Generic non-torsion subgroup can lose injectivity | None |
| §6.3 directions | A=E², direction E×{0} | direction degree 1 for product principal class; cosets vary in a one-dimensional family | Finite directions do not mean finite translates | None |
| §6.4 specialization count | rk Γ_v=0≤ρ=1, c≥1 | c^(1+0)=c≤c² | Rank loss weakens bound correctly | None |
| §6.5 division hull | Γ₀=ℤP; n=1,2; swap on E² | ranks 1,1; End(E²)·ℤ(P,0) contains (P,0),(0,P), rank 2 | Division preserves rank, End-closure need not | None |
| §6.6 Ueno cosets | X=B+a, dim B>0 | X°=∅; one coset suffices; zero-dimensional coset contribution 0 | Uses directions and quotient projection | None |
| §6.7 general Mordell–Lang | X a point; Γ={0} | intersection count 0 or 1; one point-coset suffices | Rank-zero and dimension-zero cases | None |
| §6.8 / `uniform_mordellLang_curves` | ρ=0,s=∅; n=0 negative control | generated subgroup {1}; positive-power condition p^n=1; p⁰=1 for every p would erase rank bound | Arbitrary torsion admitted correctly | None |
| §6.8 / `uniform_rationalPoints_curves` | F=ℚ,ℚ(i); ρ=0,1; empty rational locus | same B(g) for degrees 1,2; bounds B,B²; empty count 0≤B | No field-degree dependence or division by rank | None |
| §6.9 large-height packing | R/r=2, ρ=1 | (1+2R/r)^(ρ+1)=5²=25 after one rank enlargement | Centres and rank increment retained | None |
| §6.10 large-height curve count | Γ torsion, ρ=0 | c₂^(1+0)=c₂ | Torsion specialization | None |
| §6.11 small-height finiteness | Roots of unity of unbounded degree | heights all 0, infinitely many points | Degree hypothesis needed for Northcott route | None |
| §6.12 DGH bound | g=2,d=1,ρ=0; empty rational locus | original bound c(2,1); stronger headline B(2); empty count 0 | DGH remains a separate prose target | None |
| §7.1 canonical height | Point P with ĥ(P)=a; torsion coset | ĥ([2]P)/4=4a/4=a; coset height 0 | Positive scaling denominator | None |
| §7.2 minima | Point height a≥0; special curve | a≥a≥a; 0≥0≥0 | Both implications at height zero | None |
| §7.3 dense small points | Constant nontorsion point; trace-free nontorsion height a>0 | 0<ε for all ε>0; at ε=a/2 set ∅ | Geometric trace distinction required | None |
| §7.4 special locus | Constant genus-two curve; trace-free point | constant trace image has height 0; trace-free point special iff torsion | Constant subvarieties need not be cosets | None |
| §7.5 special ⇒ small | Torsion point; abelian torsion coset | height 0; torsion translates give dense height-zero points | Positive ε essential | None |
| §8.1 bounded-degree torsion | Constant elliptic curve over k(S), D=1 | every E[n](k) has degree 1; orders n are unbounded | Geometric trace-zero exclusion works | None |
| §8.2 product structure | Diagonal in constant E×E | dimension 1, both projections dimension 1; product would have dimension 2 | Nonzero trace gives counterexample | None |
| §8.3 curve height inequality | Torsion section; X=𝒜 | height 0 with unbounded base height; X*=∅ for full 𝒜 | Open complement cannot be dropped | None |
| §8.4 curve-field Bogomolov | Constant genus-two curve | trace-defined, canonical height 0, essential minimum 0 | Nonspecial hypothesis excludes it | None |
| §8.5 Moriwaki version | k₀=ℚ, base point with height 0 and fibre point of height 0 | Weil specialization gives 0≤c(1+0)=c for c>0 | Number-field and height-zero boundaries agree | None |
| §8.6 constant extension | Special point; nonspecial X with e₁=a>0, dim 1 | point heights 0→0; a≥ĥ(X)≥a/2>0, extension preserves ĥ(X) | Positive essential minimum persists | None |
| §9.1 constant up to isogeny | Constant E; Legendre curve near t=0 | identity isogeny degree 1; j=256(t²−t+1)³/(t²(t−1)²) has a pole in char≠2 | Constant and nonconstant models separated | None |
| §9.2 base descent | A₁=A₂ over algebraically closed k | identity has kernel of cardinality 1, degree 1 | Uniqueness input consistent | None |
| §9.3 intersecting fields | k₁=k₂=k; k₁=k₂=K⊋k | first gives A=A₁; second has intersection K≠k and violates premise | True supporting target retained | None |
| §9.4 subvariety descent | Line y=ax | coefficient a∈k₁∩k₂=k descends; a∉k fails intersection condition | Wrong field excluded | None |
| §9.5 minimal constant field | Constant E; Legendre over acl(k(t)) | k_A=k; nonconstant j has transcendence degree 1 | Parameter must be determined | None |
| §9.6 special field | Torsion subvariety; constant C₀ in constant A | k_(A,X)=k in each case | No unnecessary transcendence | None |
| §9.7 pencil | S=ℙ², u=y/x,v=z/x | trdeg k(u,v)=2; k(u)∩k(v)=k; generic member dimension 1 | Two different pencils meet in constants | None |
| §9.8 residual positivity | ℙ¹×ℙ¹, F a pr₁-fibre, H=O(1,1) | pr₁*O(1)·F=0; H·F=1; empty residual term 0 | Pullback not falsely treated as ample | None |
| §9.8 dimension and limit | dim S=2; [n], n=1,2 | remaining base exponent 0; point height scalings 1,4, both positive | No negative exponent or zero denominator | None |
| §9.9 transcendence reduction | trdeg K/k=2 | two one-variable constant fields leave relative transcendence degree 1 | Reduction terminates at one | None |
| §9.10 torsion multisection | Zero section; Legendre point (0,0) in char≠2; nontorsion section | (order,degree)=(1,1),(2,1); nontorsion has no finite order | Predicate discriminates | None |
| §9.11 numerical class | Constant E×S, normalized degree-two line; degree-one zero section | line class 2[0]; intersection with a base degree-one line gives 2=2·1 | Coefficient and direction correct | None |
| §9.12 nowhere-degenerate quotient | Everywhere good, trace-free A; constant A | 𝔪=A,t=0; 𝔪=A,t=A, quotient dimension 0 | Both quotient boundaries | None |
| §9.13 reduction hypotheses | Good trace-free abelian scheme over curve | trdeg=1; torus rank 0; trace dimension 0 | Target special class reduces to torsion | None |
| §9.14 sums | X={P}; X={0}; genus-two Abel curve | X_m={mP}, dim 0; X_m={0}; dim C₁=1, dim C₂=2 | Zero and positive-dimensional cases distinguished | None |
| §9.15 first torsion sum | X=B subgroup; genus-two Abel curve; point | r=1; r=2; point dimensions 0,0 never jump | Positive dimension essential | None |
| §9.16 summation | X=B, r=1 | e=0+dim B−dim B=0; fibre dimension 0; jump locus ∅ | e<dim X | None |
| §9.17 nef difference | E², H_i=pr_i*O(0), L=H₁+H₂, M=H₂ | H_i²=0,H₁H₂=1; M·L=1≤L²=2; L−M=H₁ nef; (M+½L)²=2·½·3/2=3/2>0 whereas M²=0 | Correct direction; no strict-positivity claim | None |
| §9.17 component heights | X=B through 0; t=0 | f⁻¹(0)={(0,0)}, height 0; nonnegative sum ≤0 forces every positive-multiplicity term 0 | Missing inequality now explicit | None |
| §9.17 characteristic boundary | p=2, prime-to-p order 3; p=3, order 2 | [3] kernel size 3^(2g), étale in char 2; [2] size 2^(2g), étale in char 3 | Both small characteristics retained | None |
| §9.18 dimension induction | X=B subgroup, r=1; zero-dimensional trace-free point | e=0<dim B; height-zero point is torsion | No induction at unchanged dimension | None |
| §9.19 geometric theorem | Constant curve in constant A; torsion coset | trace image gives special X, height 0; torsion coset height 0 | Trace term indispensable | None |
| §10.1 grid exponent | Three fibres in (ℙ¹)²; 3×3 grid | codim 1,deg 3 gives 3≤3; codim 2,deg 9 gives 3≤√9=3 | Codimension exponent consistent | None |
| §10.2 isotrivial points | t∈k(t); i∈ℂ(t) over ℝ; U=Spec k | image dimensions 1,0,0 | Must use relative algebraic constants | None |
| §10.3 cross-characteristic bound | Constant point and constant curve | base degree 0; infinitely many constant points of height 0 | Non-isotrivial condition necessary | None |
| §10.4 powers | S=Spec k, Y=E, deg L=1; m=1 versus 0 | fibre degree 1 at m=1; m=0 has 0 factors and is excluded | m≥1 retained even for zero-dimensional S | None |
| §10.5 five thresholds | dim S=0,g=2 | minimal positive m values 1,1,2,1,2; τ₁=(2x₁−ω+y), no difference coordinates | Positive exponent and shift order consistent | None |
| §10.6 small-points predicate | Zero section; genus-two Abel curve | zero-section height identically 0 for every ε>0; curve has positive essential minimum | Predicate distinguishes torsion family | None |
| §10.7 product small points | m=2; m=0 | ε/4+ε/4=ε/2<ε; empty sum 0 | Strict containment and positive exponent | None |
| §10.8 curve-family property | S point,g=2; difference image at m=1 | C−C=J, contains dense torsion height 0; theorem starts at m=2 | No false m=1 small-point claim | None |
| §11.1 pair isotriviality | Constant C, constant α; α=O(generic point) | first moduli image dimension 0; second image dimension 1 | Pair condition stronger than curve condition | None |
| §11.2 canonical shift | g=2,deg α=1, char 0 or 2 | shift 2α−ω; [2] on J has degree 2^(2g)=16 even in char 2 | Inseparability does not make map constant | None |
| §11.3 universal shift | y=0, x Weierstrass, g=2 with ω=2x | τ(0,x)=0; height 0 | Shift formula agrees with zero origin | None |
| §11.4 height conversion | y=ω−2α, g=2; ĥ(x−α)=a | (2x−ω+y)=2(x−α); twice-theta height 2·4a=8a | Factor (2g−2)² retained | None |
| §11.5 function-field domination | Point with degree-one closure, ĥ(y)=0,h_Fal=0 | added ample degree ≥1; RHS at least 1 | Positive constant supplied geometrically | None |
| §11.6 all characteristics | Levels 3 and 4 | char 2 uses 3; char 3 uses 4; only finitely many primes divide a fixed level | No characteristic discarded | None |
| §11.7 Yuan bound | x−α torsion; constant pair | height 0≤positive threshold; constant pair has infinitely many height-zero points | Pair non-isotriviality necessary in function fields | None |
| §12.1 bielliptic model | Genus 2, separable even sextic; quotient involutions | six distinct roots in three ±pairs; quotient-isogeny kernel size 4 | Degree and kernel agree | None |
| §12.2 DKY count | Four elliptic lifts and four isogeny preimages; Stoll example | 4·4=16; B≥34; 16B₀≥34 implies integer B₀≥3 | Page and 34-point Check agree with §3.6 | None |
| §12.3 bielliptic height | Projected heights 2a,2b; torsion base-point difference | (2a+2b)/2=a+b; torsion translation changes height by 0 | Same symmetric polarization retained | None |
| §12.4 unbounded orders | Φ(w) has order N, finite-kernel Φ | N divides ord(w), hence ord(w)≥N; cardinal bound can still be fixed | Number and order not conflated | None |
| F01 norm comparison underlying the Check | Primitive coordinates (3,5,1) | max=5, Euclidean norm=√35; 5≤√35≤5√3; after logs 0≤½log(7/5)≤½log3 | Local norm inequalities and the product formula give the absolute comparison | README §5.7 |
| F02 nefness and rational denominators | F,M on the fixed elliptic graph; t=1/2,q=2 | q(F−tM)=2F−M has degree 32; vol=2·16=32>0; q·t=1 | Both graph bundles are nef and rational tensor powers become integral | README §2.6 |
| F03 small Ξ | r=2,D=6,Ξ one point; Ξ empty | A hyperplane section has degree 6≤6⁴=1296; empty degree 0≤1296 | Fewer than r points cause no padding problem | README §5.6 |
| F03 fibre/translation sign | (x,x₁)=(0,P), displacement a | Difference (P+a)−a=P; a lies in (X−0)∩(X−P). For C⊆X−y, y+c∈X and y∈X−c | Same displacement and subtraction sign in both descriptions | README §5.6 |
| F03 stopping and distinct padding | r=3; local dimensions 3→1→0; or 3→2 then no drop | Two choices reach 0 and a third distinct choice keeps 0; stopping at i=1 gives k=2>0 | Early jumps and early isolation are handled | README §5.6 |
| F03 maximal-component containment | Local W has two curve branches C₁,C₂; cut contains only C₂ | Local dimensions before/after 1=1; C₁ need not persist, C₂ does; each y lies in at least one E_j | Union over j, rather than persistence of every component | README §5.6 |
| F03 proper containing intersections | Theta and its triple pullback on J | General Θ∩(Θ−c) has 2 points; general X∩(X−c) has (9Θ)²=162 points, including 81 stabilizer points; 162≤2916 | Each containing intersection is proper; no equality with E is asserted | README §5.6 |
| F03 component and exponent estimates | r=1,D=54; r=2,i=1,D=2; r=3,i=2,D=2 | s=1 gives D²=2916; s≤4 gives sD²≤16=2⁴; s≤8 gives sD²≤32≤2⁶=64 | Curve case uses irreducibility; higher-dimensional exponent bound passes | README §5.6 |
| F03 finite union and non-strict endpoint | Two proper divisors in an integral surface; D=2,r=2,s=4 | Union dimension 1<2; degree sum ≤4·4=16=2⁴ | Properness uses irreducibility; equality in the numerical upper bound is allowed | README §5.6 |
| Native carrier exclusions | S₃, Q₈; zero ring; square-zero thickening | (12)(23)≠(23)(12); ij=k but ji=−k; Spec zero ring has 0 points; ε²=0 with ε≠0 | Noncommutative point groups, non-fields and nonreduced curves do not instantiate the signatures | None |

## Maintainer consequences

Edits are confined to packages/HeightsRationalPointsAndObstructionsPartII/README.md, its sources.toml and this report. Suggested.lean, metadata.toml and design/plan.json remain unchanged. No headline, supplier gap or dependency direction changes. All four existing supplier gaps remain with their named owners. No declaration cited by another roadmap changes its name or type, and no downstream bound changes. No other roadmap, tooling, merge-order file or pull-request text was edited; no commit or external write was made.
