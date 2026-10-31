# Repair report: HeightsRationalPointsAndObstructionsPartII

## F01 (P2) — applied

Intersection-field descent as an acceptance headline → a supporting README §9.3 target. Deleted its Lean declaration, Layer 9 comment, unused isogeny import and both README acceptance-name references. The geometric Bogomolov headline remains identified as unstatable. Evidence: xy-2022 line 459 identifies Proposition 3.1 as the section's objective; lines 478, 611 and 622 locate the intermediate descent statements and their uses.

## F02 (P2) — applied

B(g,d) with a field-degree hypothesis → B(g) for every number field, with the same curve, Albanese and rank hypotheses. Updated the Lean docstrings, README §6.8 API and §6.12 cross-reference. The independent DGH proof and its polynomial dependence on d remain prose targets. Evidence: kuhne-2021 line 322, Theorem 4, and lines 330–336 explicitly give the degree-free rational-point consequence.

## F03 (P2) — applied

The purported non-power O_E(4·0) example → the distinction between O_E(2·0), with two sections and a degree-two map to ℙ¹, and the projectively normal plane-cubic bundle O_E(3·0). Riemann–Roch gives h⁰=n for positive degree n on E; O_E(4·0)=O_E(0)⁴ directly refutes the old Check. The replacement stays in README §5.2 and cites AbelianSchemesAndArithmeticModuli A2.8.

## F04 (P3) — applied differently

The generic nef-cycle gap → the supplied ample positivity in §9.8 and normalized nef-difference argument in §9.17. Updated supplier contracts, routes, Needs, Dependencies and both gap lists; added intersection witnesses. A2.9 concerns curve bases, so §9.8 uses only A2.7. Evidence: xy-2022 lines 682–705 and 1014–1020; AbelianSchemesAndArithmeticModuli A2.7–A2.9.

## F05 (P3) — applied

Corrected §2.6's lower-bound citation to parent §0.17, §5.1's pairing citation to §0.21, and §§6.3/6.6's direction citations to §§5.4a–5.4b. The parent pairing is explicitly halved to match our norm. Corrected §4.4's route from §2.7 to §2.8, agreeing with its Needs and allowing a singular reduced base. Each replacement was read at the cited roadmap's indexed head.

## F06 (P3) — applied

DKY Theorem 1.1 p. 949 → p. 950; DGH degree-convention line 1137 → line 1241. Added the missing dky-2020 §3.6 and kuhne-2021 §12.4 manifest coverage and precise remark locators. Evidence: dky-2020 lines 40–55, dgh-2021 lines 1237–1246 and kuhne-2021 lines 250–253. Both existing source keys and access records are retained.

## F07 (P3) — applied

Repaired the duplicated Stoll sentence; replaced the ambiguous §5.3 reference by §9.18. Deleted the source-commentary Check in §8.5 and the commentary clause in §8.6. Repaired all eight period-semicolon occurrences (§§0.3, 5.4–5.5, 5.7–5.8, 6.1, 10.4–10.5) and all four split lists (§§3.6, 6.8, 10.1, References). Stoll's 34-point example is supported by dky-2020 line 53.

## Verification outcomes

- Acceptance elaboration: `lake env lean` on `packages/HeightsRationalPointsAndObstructionsPartII/Suggested.lean`, launched from the content checkout, exited **0**. Exactly three warnings, each “declaration uses `sorry`”, at lines 57, 75 and 96; no errors. The remaining Tau Ceti import had its object file, so no targeted module build was needed.
- Binder audit: elaborated a scratch copy containing `#check @name` for **every remaining declaration**, once; exit **0**, the same three warnings. Compared all three printed types with README §§3.6 and 6.8. All Field, characteristic/algebraic-closure or NumberField instances, smoothness, properness, geometric integrality, dimension-one, pointed Albanese, J.dim=g, translating-point and positive-power rank hypotheses survive. The rational-point signature now quantifies B before F and has neither d nor a field-degree premise. There are no definitions or instances requiring a separate binder repair.
- Lean form: one `import Mathlib`, one used `TauCeti.AlgebraicGeometry.AbelianVariety.Albanese` import, three headline theorems, three honest `sorry`s, no definitions, examples, overrides or API padding. No new Lean names. The deleted name has no remaining README occurrence.
- Dependency check, using the requested `--depcheck`, `--name`, `--order` and `--movable` arguments, exited **0** with exactly:

    depcheck: 51 roadmaps, 595 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line appeared.
- Citation resolver exited **0**. Its only roadmap lead is ArakelovGeometryAndAbelianHeightsPartII, absent from its main/open-head index. This is a false positive: `packages/ArakelovGeometryAndAbelianHeightsPartII/design/README.md` contains the cited §§3.1–3.3, 4.7–4.9, 5.1–5.5, 6.1–6.4, 8.4, 9.1–9.2, 12.1–12.6, 13.1 and 13.7; `merge-order/ORDER.txt` places it at 269, before this roadmap at 291. There are no unresolved Lean-name leads. The resolver's note that it did not inspect pinned libraries was addressed by direct pin inspection and Lean elaboration.
- Parsed the source manifest: **16 distinct source keys**, 14 certified and two settled uncertified entries. No missing-reference request is outstanding or needed. Neither settled inaccessible text was requested again.
- Parsed and compared `design/plan.json` against its original: **only the obsolete entry in the top-level gaps list changed**. The other four entries are unchanged and match their README Exact supplier contracts word for word.
- `git diff --check` exited **0**. Pattern searches found no remaining false bundle example, removed Lean name, deleted gap slug, obsolete line/page locators, period-semicolon sequences or split adjacent bullet lists.
- Notation gate (`tex=5`): enclosed the two tensor-power expressions in README §5.2 and all three exposed pullback expressions with braced subscripts in §9.17 in inline code. A full README scan now finds **0 exposed TeX expressions**. Exactly ten backticks were inserted; every other README character is unchanged. Acceptance elaboration, the three-signature binder audit and dependency check were rerun with the outcomes above.
- No commits, remote writes or edits to tooling, merge order, metadata or other packages were made. Both Lean processes finished.

## Source, ownership and citation audit

The content checkout is main `8888d45eea61a0573e32d9b39a00c833f844fc44`. Its manifest pins Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`; both dependency checkouts have those revisions. Read main's ComplexTori and AdicSpacesPartIII roadmaps for shape before editing.

Cross-roadmap locators were re-resolved against main or the indexed heads, with the changed contracts read directly. The parent §§0.17, 0.21, 5.4a–5.4b state respectively the base-locus lower bound, the unhalved bilinear form, bounded maximal directions and their finiteness. Its §§5.8 and 5.18 instead concern torsion closures and number-field Bogomolov. Our §2.7 assumes a regular base; §2.8 does not.

The unchanged contract locators were also compared with the supplier headings: SchemeAndStackFoundations §§0.3, 0.8, 4.11, 4.13–4.14, 5.1–5.6, 5.12; ArakelovGeometryAndAbelianHeights §§1.14, 2.7, 3.4, 4.2–4.4, 5.5–5.8, 6.3; AbelianSchemesAndArithmeticModuli A1–A3 and A6; its Part II B0.1–B0.2, B1.1–B1.5, B2.3, B2.13, B2.21–B2.23, B3.7–B3.9 and B4.2–B4.6; AlgebraicModuliForArithmeticGeometry §§1.5–1.6, 2.1; PELModuli M5.1–M5.3, M6.9–M6.10; JacobianChallengePartII §§0.2–0.4, 1.1–1.4, 2.1–2.7, 3.2–3.13, 5.1–5.6, 7.1–7.2; NeronModelsAndSemistableAbelianVarieties §§1.1–1.10, 3.10, 3.13–3.14, 5.1–5.2; ComplexComparisonPartII C5.4; InverseGaloisAndArithmeticFundamentalGroups IG.2; ArithmeticDynamics §§6.57–6.64, 6.93, 6.110–6.112; TropicalAndBerkovichArithmetic §§6.2–6.4, 7.0; AlgebraicCurves Layers 10–11; JacobianChallenge Layer F. StableReductionPartII's seven named MC.4/MC.6/MC.7 exports were located in `packages/StableReductionPartII/design/README.md`. These two board designs have no indexed open head to compare.

Object searches used `roadmaps grep` across main and the indexed open heads, plus the board packages and pinned libraries. AbelianSchemesAndArithmeticModuli A2.7/A2.9 already own the imported positivity, while its Part II B2.3 concerns families in one fixed ambient abelian variety. It does not supply genus-only constants uniform in the Jacobian. The three retained curve headlines remain this Part II's extensions of the parent; no generic construction or duplicate supplier theorem was added here. The isogeny-descent result remains this roadmap's README §9.3 supporting target, rather than a second library carrier. Open-work ownership was checked through the supplied index; no external pull-request text was treated as instructions.

Direct pin reads included TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95,118,144,281; Albanese.lean:84; Isogeny.lean:61; Mathlib/CategoryTheory/Monoidal/Cartesian/Grp.lean:58,310; Topology/MetricSpace/CoveringNumbers.lean:74,288,351; MeasureTheory/Measure/Lebesgue/EqHaar.lean:500; NumberTheory/Height/Projectivization.lean:51; LinearAlgebra/Matrix/Echelon/Basic.lean:87; LinearAlgebra/Dimension/Finrank.lean:61; FieldTheory/IntermediateField/Basic.lean:52. In particular, the native Albanese condition supplies a pointed universal property, not a curve hypothesis; all curve hypotheses remain explicit. The abelian-variety carrier has properness and geometric integrality but no height or polarization. The covering-number definition requires centres in the set, with no compactness axiom.

## Adversarial mathematics record

The entries record actual substitutions and their computed values; passing these tests is not a proof of the general targets. Each subsection's target is included, with additional rows for the repaired identities, conventions and headline signatures. Punctuation-only edits preserve their mathematical hypotheses. “Unchanged” refers to the statement, not to an assertion that a `sorry` proves it.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Integral and geometric-integral conventions | Spec k; Spec k[ε]/ε²; empty scheme | reduced/nonempty: yes; nilpotent ε≠0: no; empty: no | Exclusions discriminate | Unchanged |
| Geometric generic fibre in product arguments | Multisection [2]x=s on E×E, characteristic zero | degree 4; self product has 4 components indexed by E[2] | Irreducible multisection is insufficient | Unchanged |
| Pairing normalization, Conventions and §5.1 | ĥ(P)=1, Q=P or 0 | unhalved b(P,P)=4−1−1=2; half=1; b(P,0)=0 | Matches squared norm | Explicit half in §5.1 |
| Absolute number-field height | [2:1] over ℚ and ℚ(i) | log 2; (2log 2)/2=log 2 | Extension invariant | Unchanged |
| Coefficient versus cycle height | [2:1]; [1:0]; coordinate scaling by 7 | log 2 versus ½log 5; 0 versus 0; scaled cycle remains 0 | Distinct normalizations | Unchanged |
| Fixed-constant function-field height | [1:t]; [1:1/(t²+1)] over ℝ(t), then ℂ(t) | 1; 2; (2+2)/2=2; omitting residue degree gives 1 | Correct weights and denominator | Unchanged |
| Twice-theta and level-four normalizations | g=2 Abel curve; principal height a=1 | degrees 2 and 8·2=16; Θ₂-height 2, doubled-point principal height 4; 𝔏⁴-height 8 | All rescalings consistent | Unchanged |
| Isogeny convention | identity; [p] in characteristic p | degree 1; degree p^(2g), finite surjective even when inseparable | No separability shortcut | Unchanged |
| Cycle multiplicity convention | Twice a point cycle of height a | unnormalized height 2a; normalized quotient 2a/2=a | Multiplicity retained where required | Unchanged |
| §0.1 total degree | Line plus exterior/interior point; empty set | 2=1+1; 1<1+1; 0 | All dimensions counted | Locator repaired |
| §0.1 powers, products, projection and Bézout | Conic with O(2); product of two conics; line in ℙ² | 2·2=4; binom(2,1)·2·2=8; projected degree 2≤8; self intersection component degree 1≤1 | Signs and exponents pass | Unchanged |
| §0.2 product-set lemma | ℙ¹, M=2, diagonal, Σ with one/two points | 1²=1 allowed; two distinct points give 4 pairs, two outside Δ | Proper exceptional subset required | Unchanged |
| §0.3 escape lemma | A line and a conic meeting properly, M=1 | at most 1·2=2 points; 3 distinct points cannot all lie in intersection | Positive exponent retained | Punctuation |
| §0.4 packing | ρ=0; S=∅; interval [−r,r], R=r>0 | 1≤1; 0≤1; covering number 1≤3 | Division needs r>0; r=0 gives infinite interval cover | Unchanged |
| §1.1 restricted Hilbert family | E with O(3·0); point; diagonal in E² with product O(3·0) | Hilbert polynomials 3n and 1; diagonal degree 3+3=6 | Dimension and reduced-integral conditions discriminate | Unchanged |
| §1.2 universal degree convention | E; genus-two Abel curve | 8·1=8; 8·2=16; heights multiply by 4 relative to L⁺ | Matches Conventions | Unchanged |
| §1.3 fibre powers | Curve fibres over a curve; m=1,2 | dimensions 2 and 3; absolute square dimension 4 | Fibre product distinguished | Unchanged |
| §1.4 finite incidence fibre | Translates E×{b} in E² and P=(0,b₀) | exactly one translate contains P, namely b=b₀ | Nonempty finite fibre | Unchanged |
| §1.5 generic finiteness | S a point; m=1 | X→X has fibre cardinality 1 and relative dimension 0 | Base case | Unchanged |
| §1.6 non-degeneracy | X_s=A_s, dim S=1 | real source dimension 2mg+2 versus Betti target 2mg | Finite stabilizer cannot be omitted | Unchanged |
| §1.7 generation locus | E×{0}⊂E²; X=A; genus-two Abel curve | generated dimensions 1<2, 2=2, 2=2; stabilizer dimensions 1,2,0 | Both tests needed | Unchanged |
| §1.8 closure components | S_gen=∅ | closure ∅ has 0 components | Vacuous base case | Unchanged |
| §2.1 level hypothesis | ℓ=2 and 3, char 0 | −1 acts identically modulo 2; −1≠1 modulo 3 | Level two does not rigidify | Unchanged |
| §2.2 cutoff form | [2]; d=2; nonconstant cutoff | pullback 4θω; wedge 16(θω)²; derivative dθ∧ω | Scaling and nonclosedness compatible | Unchanged |
| §2.3 graph | N=1; constant torsion P₀ killed by N | diagonal graph, dim X; second coordinate [N]P₀=0 | Graph maps agree | Unchanged |
| §2.4 top intersection | d=1, N=2; constant torsion section | required growth factor 2²=4; Betti integral on section 0 | Degenerate section excluded | Unchanged |
| §2.5 mixed intersection | d=1,2; N=2 | factors N⁰=1 and N²=4 versus top factors 4 and 16 | Exponent difference 2 | Unchanged |
| §2.6 height route | d=1, κ=c=1, c₁=½; O(1) on ℙ¹; no-section bundle | ½<1; height lower bound 0; no-section complement ∅ | Nonzero section and correct lower-bound input | Citation repaired |
| §2.7 canonical inequality | c₁=c₀=1, N=2; base point case | coefficient 1−¼=¾≥½; constant base height absorbed in c₂ | No division by point height | Unchanged |
| §2.8 general base | Nodal curve base; regular locus; constant torsion section | singular point has two branches; smooth open dimension 1; torsion height 0 | §2.7 alone cannot cover stated base | Correct input for §4.4 |
| §3.1 canonical measure | Fixed elliptic curve; torsion section over curve | normalized Haar mass 1; restricted Betti form 0 on section | Nonzero measure requires non-degeneracy | Unchanged |
| §3.2 equidistribution | Fixed abelian variety, test f=0; degree-two pullback | integrals/orbit averages 0=0; raw mass 2, normalized mass 2/2=1 | Normalization and tests compatible | Unchanged |
| §3.3 Hilbert uniform Bogomolov | Positive-dimensional subgroup X | X°=∅, small-point set cardinality 0 | No forbidden small points | Unchanged |
| §3.4 exceptional Bogomolov | X=E⊂E | generating but stabilizer dimension 1; X°=∅, degree of empty exceptional set 0 | Stabilizer-zero not silently assumed | Unchanged |
| §3.5 arbitrary X | Small P,P₀ with heights ≤ε; torsion coset | ĥ(P−P₀)≤2ε+2ε=4ε; coset has infinitely many height-zero points but X°=∅ | Quarter threshold and Ueno removal needed | Unchanged |
| §3.6 / `uniform_maninMumford_curves` | D=[Q]; g=1; Stoll curve | a(Q)·a(Q)⁻¹=1, order 1; wrong sign gives a(Q)²; g=1 has infinite torsion; c(2)≥34 | Correct translation; genus bound essential | List formatting |
| §4.1 curve degree | Translate of genus-two Abel curve | theta degree always 2; arbitrary translation may increase height | Degree and height quantifiers differ | Unchanged |
| §4.2 base points | C=E+P₀, M=1, proper Z in difference image | D₁(C²)=E=C−P; count 0≤84(1−1)=0 | Elliptic boundary agrees | Unchanged |
| §4.3 distance | Modular height H=100, c₃=10; H below c₁ | threshold H/c₃=10; below c₁ no conclusion asserted | Height threshold remains explicit | Unchanged |
| §4.4 Hilbert gap | dim S=0, c′₁=1, H=1, c′₃=2 | height cutoff −1; nonnegative heights give empty set, degree 0 | Base case and general-base route compatible | §2.8 citation |
| §4.5 principal gap | Genus-two Abel curve | r=1,d=2; proper exceptional subset dimension 0 | Bounded degree is bounded cardinality | Unchanged |
| §4.6 all polarizations | l=g!; n=2, exceptional curve | principal case n=1; quasi-inverse degree factor n²=4 | Degree factor not n | Unchanged |
| §4.7 combined gap | c′₁=c′₃=c″₃=1, H=2 | c₁=½ gives cutoff 1; both ranges give 1; choose maximum of degree bounds | Ranges meet without losing boundary | Unchanged |
| §4.8 degree-only gap | X=A, g≥1 | X°=∅; count 0 and empty exceptional subset degree 0 | Degenerate ambient case consistent | Unchanged |
| §4.9 curve gap | Genus 2, y=x; height threshold 0 | ĥ(x−y)=ĥ(0)=0 | Torsion consequence includes base point | Unchanged |
| §5.1 Euclidean subgroup | Γ torsion; Γ=division hull of ℤP with ĥ(P)=1 | real dimensions 0,1; norm(P)²=1 and half-pairing diagonal 1 | Finite rank does not imply finite generation | Pairing citation/half |
| §5.2 embedding constants | O_E(2·0), O_E(3·0), old O_E(4·0) | h⁰=2,3,4; first map degree 2; cubic degree 3; O_E(4·0)=O_E(0)⁴ | Old non-power assertion false | Replacement Check |
| §5.2 cubic normality | Smooth cubic E⊂ℙ², powers n=1,2 | section dimensions 3 and 6 equal dimensions of linear/quadratic forms; generally H¹(ℙ²,O(n−3))=0 | Restriction surjects in every degree; smooth E is normal | Supports replacement |
| §5.3 controlled coordinates | Coefficient vector [1:1] versus [1:2^m] | heights 0 and m log 2 | Arbitrary coordinate changes cannot preserve a fixed bound | Unchanged |
| §5.4 Vojta cone conditions | Vectors (1,0),(0,1); c₄=2 | inner product 0<½·1·1 | Orthogonal example excluded | Punctuation |
| §5.5 Mumford conditions | P_i=P₀ of norm 1, c₄=2; subgroup fibre | 1≥½; norm difference 0≤½; subgroup difference fibre has positive dimension | Isolation remains separate from angle test | Punctuation |
| §5.6 exceptional degree | dim X=1, deg X=3, Ξ=∅ | empty degree 0≤3²=9 | Nonstrict upper bound and empty case | Punctuation |
| §5.7 interpolation hypotheses | dim X=1, S=∅; deg A=6,g=2,deg X=3 | empty S excluded; degree cutoff 6·9/2=27; prefactor (3+1)²·3=48 | Positive dimension, nonempty S and factorial matter | Punctuation |
| §5.8 large points | Γ torsion; contradiction threshold 10, chosen cutoff 20 | positive-height torsion count 0; cutoff gives 20>10 | No equality loophole | Punctuation |
| §5.9 packing predicate | X°=∅; genus-two base point and Γ={0}, then order-two enlargement | counts 0; 1≤1; enlarged count 2>1 | Enlargement is not invariant with same constant | Unchanged |
| §5.10 counting | Rank 0; X°=∅ | upper bound c¹=c; empty count 0 | Small points require packing input | Unchanged |
| §5.11 threshold choice | c₁=¼,c₃=2 | c₀=max(4,2)=4, 1/c₀=¼; max(c₁,c₃)=2 would give ½>¼ | Existing reciprocal retained | Unchanged |
| §5.12 principal theta form | g=1, dim X=0, r=0 | exponent (0+1)·1^(5·1²)=1; base 2³⁴h₀deg X | Zero-dimensional case still bounded | Unchanged |
| §6.1 count over ℚ̄ | X=A, g>0; Γ={0} | empty count 0; general Γ={0} count 0 or 1 | Ueno complement is essential | Punctuation |
| §6.2 specialization | Legendre λ=2, μ=0, P=(2,μ) | μ²=2(2−λ)=0; P exact order 2; 2P specializes to 0 | Generic non-torsion subgroup can lose injectivity | Unchanged |
| §6.3 directions | A=E², direction E×{0} | direction degree 1 for product principal class; cosets vary in a one-dimensional family | Finite directions do not mean finite translates | Citation repaired |
| §6.4 specialization count | rk Γ_v=0≤ρ=1, c≥1 | c^(1+0)=c≤c² | Rank loss weakens bound correctly | Unchanged |
| §6.5 division hull | Γ₀=ℤP; n=1,2; swap on E² | ranks 1,1; End(E²)·ℤ(P,0) contains (P,0),(0,P), rank 2 | Division preserves rank, End-closure need not | Unchanged |
| §6.6 Ueno cosets | X=B+a, dim B>0 | X°=∅; one coset suffices; zero-dimensional coset contribution 0 | Uses directions and quotient projection | Citation repaired |
| §6.7 general Mordell–Lang | X a point; Γ={0} | intersection count 0 or 1; one point-coset suffices | Rank-zero and dimension-zero cases | Unchanged |
| §6.8 / `uniform_mordellLang_curves` | ρ=0,s=∅; n=0 negative control | generated subgroup {1}; positive-power condition p^n=1; p⁰=1 for every p would erase rank bound | Arbitrary torsion admitted correctly | List formatting |
| §6.8 / `uniform_rationalPoints_curves` | F=ℚ,ℚ(i); ρ=0,1; empty rational locus | same B(g) for degrees 1,2; bounds B,B²; empty count 0≤B | No field-degree dependence or division by rank | Strengthened headline |
| §6.9 large-height packing | R/r=2, ρ=1 | (1+2R/r)^(ρ+1)=5²=25 after one rank enlargement | Centres and rank increment retained | Unchanged |
| §6.10 large-height curve count | Γ torsion, ρ=0 | c₂^(1+0)=c₂ | Torsion specialization | Unchanged |
| §6.11 small-height finiteness | Roots of unity of unbounded degree | heights all 0, infinitely many points | Degree hypothesis needed for Northcott route | Unchanged |
| §6.12 DGH bound | g=2,d=1,ρ=0; empty rational locus | original bound c(2,1); stronger headline B(2); empty count 0 | DGH remains a separate prose target | Acceptance pointer repaired |
| §7.1 canonical height | Point P with ĥ(P)=a; torsion coset | ĥ([2]P)/4=4a/4=a; coset height 0 | Positive scaling denominator | Unchanged |
| §7.2 minima | Point height a≥0; special curve | a≥a≥a; 0≥0≥0 | Both implications at height zero | Unchanged |
| §7.3 dense small points | Constant nontorsion point; trace-free nontorsion height a>0 | 0<ε for all ε>0; at ε=a/2 set ∅ | Geometric trace distinction required | Unchanged |
| §7.4 special locus | Constant genus-two curve; trace-free point | constant trace image has height 0; trace-free point special iff torsion | Constant subvarieties need not be cosets | Unchanged |
| §7.5 special ⇒ small | Torsion point; abelian torsion coset | height 0; torsion translates give dense height-zero points | Positive ε essential | Unchanged |
| §8.1 bounded-degree torsion | Constant elliptic curve over k(S), D=1 | every E[n](k) has degree 1; orders n are unbounded | Geometric trace-zero exclusion works | Unchanged |
| §8.2 product structure | Diagonal in constant E×E | dimension 1, both projections dimension 1; product would have dimension 2 | Nonzero trace gives counterexample | Unchanged |
| §8.3 curve height inequality | Torsion section; X=𝒜 | height 0 with unbounded base height; X*=∅ for full 𝒜 | Open complement cannot be dropped | Unchanged |
| §8.4 curve-field Bogomolov | Constant genus-two curve | trace-defined, canonical height 0, essential minimum 0 | Nonspecial hypothesis excludes it | Unchanged |
| §8.5 Moriwaki version | k₀=ℚ, section-free non-special X*; height-zero point | Moriwaki height specializes to Weil height; RHS at height 0 equals c | Genuine number-field specialization retained | Non-test commentary deleted |
| §8.6 constant extension | Special point; nonspecial X with e₁=a>0, dim 1 | point heights 0→0; a≥ĥ(X)≥a/2>0, extension preserves ĥ(X) | Positive essential minimum persists | Commentary clause deleted |
| §9.1 constant up to isogeny | Constant E; Legendre curve near t=0 | identity isogeny degree 1; j=256(t²−t+1)³/(t²(t−1)²) has a pole in char≠2 | Constant and nonconstant models separated | Unchanged |
| §9.2 base descent | A₁=A₂ over algebraically closed k | identity has kernel of cardinality 1, degree 1 | Uniqueness input consistent | Unchanged |
| §9.3 intersecting fields | k₁=k₂=k; k₁=k₂=K⊋k | first gives A=A₁; second has intersection K≠k and violates premise | True supporting target retained | Lean padding deleted |
| §9.4 subvariety descent | Line y=ax | coefficient a∈k₁∩k₂=k descends; a∉k fails intersection condition | Wrong field excluded | Unchanged |
| §9.5 minimal constant field | Constant E; Legendre over acl(k(t)) | k_A=k; nonconstant j has transcendence degree 1 | Parameter must be determined | Unchanged |
| §9.6 special field | Torsion subvariety; constant C₀ in constant A | k_(A,X)=k in each case | No unnecessary transcendence | Unchanged |
| §9.7 pencil | S=ℙ², u=y/x,v=z/x | trdeg k(u,v)=2; k(u)∩k(v)=k; generic member dimension 1 | Two different pencils meet in constants | Unchanged |
| §9.8 residual positivity | ℙ¹×ℙ¹, F a pr₁-fibre, H=O(1,1) | pr₁*O(1)·F=0; H·F=1; empty residual term 0 | Pullback not falsely treated as ample | Route and Check repaired |
| §9.8 dimension and limit | dim S=2; [n], n=1,2 | remaining base exponent 0; point height scalings 1,4, both positive | No negative exponent or zero denominator | Explicit n≥1 |
| §9.9 transcendence reduction | trdeg K/k=2 | two one-variable constant fields leave relative transcendence degree 1 | Reduction terminates at one | Unchanged |
| §9.10 torsion multisection | Zero section; Legendre point (0,0) in char≠2; nontorsion section | (order,degree)=(1,1),(2,1); nontorsion has no finite order | Predicate discriminates | Unchanged |
| §9.11 numerical class | Constant E×S, normalized degree-two line; degree-one zero section | line class 2[0]; intersection with a base degree-one line gives 2=2·1 | Coefficient and direction correct | Unchanged |
| §9.12 nowhere-degenerate quotient | Everywhere good, trace-free A; constant A | 𝔪=A,t=0; 𝔪=A,t=A, quotient dimension 0 | Both quotient boundaries | Unchanged |
| §9.13 reduction hypotheses | Good trace-free abelian scheme over curve | trdeg=1; torus rank 0; trace dimension 0 | Target special class reduces to torsion | Unchanged |
| §9.14 sums | X={P}; X={0}; genus-two Abel curve | X_m={mP}, dim 0; X_m={0}; dim C₁=1, dim C₂=2 | Zero and positive-dimensional cases distinguished | Unchanged |
| §9.15 first torsion sum | X=B subgroup; genus-two Abel curve; point | r=1; r=2; point dimensions 0,0 never jump | Positive dimension essential | Unchanged |
| §9.16 summation | X=B, r=1 | e=0+dim B−dim B=0; fibre dimension 0; jump locus ∅ | e<dim X | Unchanged |
| §9.17 nef difference | E², H_i=pr_i*O(0), L=H₁+H₂, M=H₂ | H_i²=0,H₁H₂=1; M·L=1≤L²=2; L−M=H₁ nef; (M+½L)²=2·½·3/2=3/2>0 whereas M²=0 | Correct direction; no strict-positivity claim | New Check |
| §9.17 component heights | X=B through 0; t=0 | f⁻¹(0)={(0,0)}, height 0; nonnegative sum ≤0 forces every positive-multiplicity term 0 | Missing inequality now explicit | A2.7/A2.9 route |
| §9.17 characteristic boundary | p=2, prime-to-p order 3; p=3, order 2 | [3] kernel size 3^(2g), étale in char 2; [2] size 2^(2g), étale in char 3 | Both small characteristics retained | Consumer pointer §9.18 |
| §9.18 dimension induction | X=B subgroup, r=1; zero-dimensional trace-free point | e=0<dim B; height-zero point is torsion | No induction at unchanged dimension | Unchanged |
| §9.19 geometric theorem | Constant curve in constant A; torsion coset | trace image gives special X, height 0; torsion coset height 0 | Trace term indispensable | Unchanged |
| §10.1 grid exponent | Three fibres in C²; 3×3 grid | codim 1,deg 3 gives 3≤3; codim 2,deg 9 gives 3≤√9=3 | Codimension exponent consistent | List formatting |
| §10.2 isotrivial points | t∈k(t); i∈ℂ(t) over ℝ; U=Spec k | image dimensions 1,0,0 | Must use relative algebraic constants | Unchanged |
| §10.3 cross-characteristic bound | Constant point and constant curve | base degree 0; infinitely many constant points of height 0 | Non-isotrivial condition necessary | Unchanged |
| §10.4 powers | S=Spec k, Y=E, deg L=1; m=1 versus 0 | fibre degree 1 at m=1; m=0 has 0 factors and is excluded | m≥1 retained even for zero-dimensional S | Punctuation |
| §10.5 five thresholds | dim S=0,g=2 | minimal positive m values 1,1,2,1,2; τ₁=(2x₁−ω+y), no difference coordinates | Positive exponent and shift order consistent | Punctuation |
| §10.6 small-points predicate | Zero section; genus-two Abel curve | zero-section height identically 0 for every ε>0; curve has positive essential minimum | Predicate distinguishes torsion family | Unchanged |
| §10.7 product small points | m=2; m=0 | ε/4+ε/4=ε/2<ε; empty sum 0 | Strict containment and positive exponent | Unchanged |
| §10.8 curve-family property | S point,g=2; difference image at m=1 | C−C=J, contains dense torsion height 0; theorem starts at m=2 | No false m=1 small-point claim | Unchanged |
| §11.1 pair isotriviality | Constant C, constant α; α=O(generic point) | first moduli image dimension 0; second image dimension 1 | Pair condition stronger than curve condition | Unchanged |
| §11.2 canonical shift | g=2,deg α=1, char 0 or 2 | shift 2α−ω; [2] on J has degree 2^(2g)=16 even in char 2 | Inseparability does not make map constant | Unchanged |
| §11.3 universal shift | y=0, x Weierstrass, g=2 with ω=2x | τ(0,x)=0; height 0 | Shift formula agrees with zero origin | Unchanged |
| §11.4 height conversion | y=ω−2α, g=2; ĥ(x−α)=a | (2x−ω+y)=2(x−α); twice-theta height 2·4a=8a | Factor (2g−2)² retained | Unchanged |
| §11.5 function-field domination | Point with degree-one closure, ĥ(y)=0,h_Fal=0 | added ample degree ≥1; RHS at least 1 | Positive constant supplied geometrically | Unchanged |
| §11.6 all characteristics | Levels 3 and 4 | char 2 uses 3; char 3 uses 4; only finitely many primes divide a fixed level | No characteristic discarded | Unchanged |
| §11.7 Yuan bound | x−α torsion; constant pair | height 0≤positive threshold; constant pair has infinitely many height-zero points | Pair non-isotriviality necessary in function fields | Unchanged |
| §12.1 bielliptic model | Genus 2, separable even sextic; quotient involutions | six distinct roots in three ±pairs; quotient-isogeny kernel size 4 | Degree and kernel agree | Unchanged |
| §12.2 DKY count | Four elliptic lifts and four isogeny preimages; Stoll example | 4·4=16; B≥34; 16B₀≥34 implies integer B₀≥3 | Page and 34-point Check agree with §3.6 | Locator and prose |
| §12.3 bielliptic height | Projected heights 2a,2b; torsion base-point difference | (2a+2b)/2=a+b; torsion translation changes height by 0 | Same symmetric polarization retained | Unchanged |
| §12.4 unbounded orders | Φ(w) has order N, finite-kernel Φ | N divides ord(w), hence ord(w)≥N; cardinal bound can still be fixed | Number and order not conflated | Manifest coverage |

For the §5.2 replacement, projective normality also follows directly from the smooth plane cubic's homogeneous coordinate ring: restriction of degree-n forms is surjective by the cubic exact sequence and H¹(ℙ²,O(n−3))=0. Thus the replacement does not require the false “not a power” condition. For §9.17, with M=h*ℒ_𝒜′ and C=bℒ_ℬ−M, expand (M+C)^q−M^q; every mixed term is nonnegative by the supplied ample approximations and A2.7. To approximate M itself, M+εℒ_ℬ is relatively ample for ε>0: it is the restriction of a relatively ample external product along the graph of h. It is symmetric and rigidified, so A2.9 supplies ample approximations; pass first through those approximations and then ε→0. Here q=dim A′ and dim 𝒴=q+e+1, giving exactly the displayed exponent and direction. The coefficient a from the multisection class is positive and distinct from b.

## Maintainer consequences

The only removed acceptance name is `isogenyClass_descends_intersection`; consumers should cite README §9.3 for that supporting target. `uniform_rationalPoints_curves` keeps its name but no longer takes d, hd or a degree-bound premise. No other retained Lean signature changes.

The obsolete nef gap is removed from this package alone. The four remaining supplier gaps—flat-nonproper-intersection, arithmetic-interpolation, controlled-polarization-embeddings and abelian-tropical-measures—remain explicit requests to their existing owners, with no claim that this repair supplies them. No prerequisite moved to a later roadmap and no external roadmap was edited. The two settled uncertified sources retain that status; no stronger source-access claim is made.
