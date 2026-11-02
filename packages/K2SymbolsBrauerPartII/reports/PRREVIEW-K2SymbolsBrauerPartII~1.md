# Review of K2SymbolsBrauerPartII (pull request #1432 at a63a852)

**Verdict:** needs changes

## R01 (P1) — Replace the nonexistent classical-carrier supplier sections

**Location:** `TauCetiRoadmap/K2SymbolsBrauerPartII/README.md:62`, “using the classical field presentation constructed in K2SymbolsBrauer §0.4”; also line 7 and the K₁ supplier citation at line 858.

**Claim:** K2SymbolsBrauer §§0.4 and 0.2 provide the classical field presentation and the field K₁ identification used by the coefficient exact sequence. Neither section exists in the supplier inspected at its indexed head. This is a broken prerequisite contract, even though the mathematics has an earlier owner.

**Witness:** `TauCetiRoadmap/K2SymbolsBrauer/README.md:80` has only §0.1 in Layer 0. Its contract at line 52 assigns classical K₁ and Matsumoto to AlgebraicKTheory §§2.1–2.3 and 5.1–5.2.

**Repair:** Replace both §0.4 citations by AlgebraicKTheory §§5.1–5.2, retaining K2SymbolsBrauer §§5.1–5.2 and 7.1–7.3 for its presentation and symbol adapters. Replace §0.2 in §5.4 by AlgebraicKTheory §2.3 and the determinant/unit-class comparison supplied through KTheoryLowDegrees §8.1 and K2SymbolsBrauer's exact contracts. Do not recreate the missing sections here. The replacement contracts explicitly give K₁(F)=Fˣ and Matsumoto on the common carriers: for F=F₅ they give K₁=C₄, K₂=0, hence K₁[6]=C₂, exactly the boundary term in §5.4's example. For F=R they retain the nonzero symbol {-1,-1}; no finite-field-only replacement is being proposed.

## R02 (P2) — Reconcile the six gap contracts with local ownership

**Location:** `TauCetiRoadmap/K2SymbolsBrauerPartII/README.md:7`, “Part II owns the native field-cohomology bridge”; lines 64–80 and §§1.1, 1.6, 5.0a–5.0d; `packages/K2SymbolsBrauerPartII/design/plan.json`, top-level `gaps`.

**Claim:** The design still asks EtaleCohomologyFoundations and KTheoryFiniteLocalFields to supply six results that this README explicitly constructs. None of the six slugs occurs under Exact supplier contracts. These are redundant supplier requests and contradictory ownership, not findings about suppliers being unfinished.

**Witness:** The six plan slugs have named external suppliers; the README has zero `gap:` occurrences and assigns their constructions to §§1.1, 1.6 and 5.0a–5.0d.

| Gap slug | Supplier recorded in the plan | Construction now owned here |
|---|---|---|
| field-cup-coherence | EtaleCohomologyFoundations F.0.3, F.4.1–F.4.2 | §1.1 native coefficient, ordered cup, coefficient and transfer comparison |
| dvr-residue-coherence | EtaleCohomologyFoundations F.0.3 | §1.6 positive degree-one residue and negative left-cup formula |
| adic-tate-symbol | KTheoryFiniteLocalFields 3.0a | §5.0a adic symbol and the actual coefficient diagram |
| adic-tate-torsion | KTheoryFiniteLocalFields 3.0a | §5.0b conditional torsion/divisibility theorem |
| global-tate-torsion | KTheoryFiniteLocalFields 3.0a | §5.0c global torsion and adic identification |
| global-picard-sequence | KTheoryFiniteLocalFields 3.0a | §5.0d Picard injection and exact sequence |

**Repair:** Keep the local ownership and proof routes stated in this head, and remove these six obsolete requests from the plan's editable top-level `gaps` list. This records the movement of ownership into Part II and leaves no outstanding supplier-gap claim for these objects. Alternatively, retaining an external contract requires its exact `What <Supplier> must provide (gap:<slug>): ...` declaration and replacing the corresponding local construction by an import; do not retain both owners. The first repair preserves every mathematical target: the Q₇ cubic residue is still 2κ₃(3), real adic H² is still C₂, and the F₃(t), S={0,∞} Picard sequence still has middle and right groups C₂. No hypothesis or comparison is lost by deleting the redundant requests. All six supplier names are real and their mathematical requests are precise; their present nonminimality and inconsistent declaration are the defects.

## Verified sound

The review covered all 28 numbered target subsections with 115 adversarial-table rows, the conventions, API bullets, Checks, examples, dependencies, and all three Lean declarations. The seeded source sample has 15 targets; all four cited works were readable in the supplied legal cache. There were no README locators marked unverified. No copied source passage, computational-algorithm target, sorry-defined data, `set_option`, or change outside this roadmap folder was found. The findings above are repairable contract defects, not a reason to discard the extension.

### Gate, build and elaborated signatures

The reviewed head is `a63a852ad755137845b19fdd645a36b8ce7e342a`. The worker's recorded gate at that head passed every scanner and its targeted build:

```text
gate K2SymbolsBrauerPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

I independently ran the prescribed dependency check, with the supplied merge order and main content:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. The outside-folder diff was empty. Independent `lake env lean` elaboration of `TauCetiRoadmap/K2SymbolsBrauerPartII/Suggested.lean` exited successfully; its only warnings were the two intended `sorry` warnings. A scratch copy with `#check @` for all three declarations also elaborated. The signatures are:

| Declaration | Elaborated inputs and conclusion | Comparison with README |
|---|---|---|
| `conicSymbol` | Arbitrary-universe F, `[Field F]`, r,s:F → ℤˣ | Includes zero coefficients and characteristic two, as a definition only. |
| `conicSymbol_real_eq_neg_one_iff` | r,s:R; sign=-1 iff r≤0 and s≤0 | All real elements, not just units. |
| `conicSymbol_eq_hilbertSymbol` | Arbitrary-universe F, `[Field F]`, explicit 2≠0, r,s:Fˣ | Exactly the field-generic comparison in §3.4; no local-field premise. |

No required section binder disappeared. One-tactic probes with simplification after unfolding the two signs, reflexivity and instance search did not prove either headline. Reading the pinned Hilbert API found norm/quaternion criteria but no exact conic bridge that makes either theorem a one-lemma restatement. There is no padding finding. The conic definition is the one small real-bodied definition needed for these headlines.

The README's headline families are: the all-weight coefficient and ordered-cup dictionaries; arbitrary-DVR residue/localization comparison; symbol-algebra central simplicity; proper-degree matrix corners; algebra/cup equality; full-root norm-residue and Hilbert comparisons; the total real conic criterion; the arithmetic local invariant formula; finite support and reciprocity on all K₂; the adic Tate symbol and coefficient diagram; conditional/global torsion; the global Picard sequence; number-field coefficient reduction; local/global/S-integer Tate dictionaries; and integral reduction with the finite étale Chern comparison. The two conic headlines are stated. The module docstring names the unavailable classical/Milnor K₂, K-spectrum/finite-K, symbol-algebra, coherent twist and étale/support cohomology carriers for the others. The primitive-root and tensor-lift API is routine and appropriately remains prose. Existing weight-one Tate modules do not supply that entire missing coefficient system.

### Seeded source checks

The following locators refer to the line-numbered cached text, with printed pages distinguished from PDF page indices. Each row records what the source actually supplies and where the roadmap makes a further construction.

| Sampled target | Source text opened | Result of checking hypotheses, numbering and support |
|---|---|---|
| 1.2 Primitive-root bases | weibel line 13935, line 13950, line 14004; III.6.10 and Remark 6.10.4, pp.242–243 | The primitive root must lie in F for the equivariant scalar identification. All integer weights are obtained from the explicitly cited supplier's tensor/dual coherence, not attributed as a new theorem to Weibel. |
| 1.6 Uniformizer-last residues | tate line 575 and line 596, Thm 6.2 proof, p.270; weibel line 13461, III.6.3, p.234 | Tate's root-symbol tame calculation is uniformizer-last; Weibel's convention is inverse. The actual support/purity comparison is explicitly a construction using the named suppliers. Residue-field invertibility is retained. |
| 2.2 Splitting and central simplicity | weibel line 13858 and line 13884, III.6.9 and Lemma 6.9.1, pp.240–241 | The source's general splitting lemma is false without the missing full-degree condition. This roadmap supplies its own m distinct eigenvalues and m² matrix units, so it avoids the error. See Source issues. |
| 3.1 Arithmetic norm-residue map | weibel line 13406, III.Example 6.2.3, p.233; milne line 5140, III.4 Remark 4.5, p.114 | Nonarchimedean local fields, finite full root group and invertible coefficient. The Artin-first convention here is the transpose of Milne's Kummer order. Projection by the exponent w/m is correctly distinguished from a primary projection. |
| 3.4 Quadratic Hilbert maps | weibel line 13376 and line 13394, III.Examples 6.2.1–6.2.2, pp.232–233; pinned Hilbert definition below | The conic comparison is field-generic with 2≠0 and unit inputs; homomorphism claims are restricted to the local/real cases with suppliers. The source expressly warns against generic bilinearity. |
| 3.5 Invariant sign | milne line 4957, III.3 Prop 3.6, p.109; line 5051, III.4 Step 3, p.112; line 5093, Step 4, p.113; line 5140, Remark 4.5, p.114 | Arithmetic Frobenius and the two argument orders give the negative sign stated here. The cubic test distinguishes it from the inverse convention. |
| 4.2 Finite support | milne line 8075, V.5 Prop 5.2, p.178; line 8123, Thm 5.3, p.179; line 10042, VII.8.1, p.221 | Finite support and the invariant sum apply to the actual Brauer class. The roadmap separately extends symbol support to arbitrary finite sums, rather than assuming every class is a single symbol. |
| 5.0a Adic symbol/diagram | tate line 168, Prop 2.1, pp.259–260; line 235, Thm 3.1, p.262; line 272, proof; line 287, Lemma 3.2, p.263; line 294, Diagram 3.3, pp.263–264 | The adic class, Steinberg transfer argument and left coefficient square are present. The source's separable transfer argument is supplemented here by topological invariance and the inseparable degree; it is not misquoted as proving degree-free transfer. Higher exponents are obtained from actual coefficient triangles. |
| 5.0c Global torsion | tate line 542, (5.3), p.269; line 561 and line 564, Thm 5.4, p.270; weibel line 30619 and line 30646, VI.6.1–6.2, pp.502–503 | The finite tame kernel plus direct sum of finite residue groups supplies torsion and excludes divisible subgroups. Function-field input is provided separately. Torsion is not confused with finite generation or finiteness of global mod-ℓ K₂. |
| 5.0d Picard injection | tate line 570, Thm 6.1, p.270; line 575 through line 607, Thm 6.2/proof, pp.270–271 | Global field, μℓ⊂F, finite nonempty S with required places; root-symbol surjectivity and divisor cokernel construct the actual injection. The roadmap retains both the Picard term and the Quillen/tame sign. |
| 5.1 Local Tate dictionary | tate line 463 and line 485, Prop 4.5/corollary, pp.267–268; line 294 and line 354, Diagram 3.3/Thm 3.5, pp.263–265 | The local source has the nondiscrete locally compact scope. The all-exponent isomorphism also consumes the earlier all-field norm-residue theorem; no unsupported injection of successive K₂ quotients is assumed. |
| 5.2 Global Tate dictionary | tate line 493, Thm 5.1, pp.268–269; line 354, Thm 3.5/corollary, p.265; line 564, Thm 5.4, p.270 | Injectivity is a premise of the conditional torsion statement and is supplied in the global case. Function fields exclude ℓ=char F; real places remain at ℓ=2. |
| 5.3 S-integers | soule line 1693, §2.2.4.4, pp.53–55; tate line 575, Thm 6.2, pp.270–271; weibel line 31296 and line 31348, VI.8.2–8.3, pp.513–514; line 31623, VI.9.1.3, p.518 | Soulé's root-containment and the older odd/totally-imaginary scope are not silently promoted to unrestricted ring theorems. The broader number-field/real-dyadic comparisons are explicit ArithmeticKTheory contracts; the Picard sequence has its own global-field scope. |
| 5.4 Reduction/Bockstein | soule line 1399 through line 1460, §§2.2.3.1–2.2.3.2, pp.45–48 | The cofiber exact sequence distinguishes K₂/m from finite-coefficient K₂ and retains K₁[m]. This exactness does not require m invertible in the field; that assumption belongs to the later étale comparison. The stale field-K₁ supplier is R01. |
| 5.5 Finite Chern comparison | soule line 1276, Prop 2.2.2.3, pp.42–44; line 1444 and line 1460, §2.2.3.2/Lemma 2.2.3.2.1, pp.47–48; line 1529 and line 1551, Prop 2.2.3.3 and warning, p.49; line 1693, §2.2.4.4, p.53 | The product coefficient is −1 at i=j=1. The statement is on integral reduction, whose Bocksteins vanish, and does not extend a finite-by-finite product beyond its allowed coefficient range. The raw comparison gives −ε=+1; the product-normalized comparison gives −1. |

### Adversarial calculations

In this table a root of unity is written multiplicatively, while a cohomology coordinate is additive. A value such as 2κ means the class in an order-three group, not an integer multiple in Q/Z after forgetting its coordinate. Rows with a wrong-model value explicitly identify the rejected model; they are not counterexamples to the retained statement. Finite arithmetic probes exhaustively tested 20,514 monomial triples in degrees 2–5 and 56 unit-input conic/norm pairs. Other rows are direct symbolic computations on the indicated instances. These checks test the statements and their defining laws; they do not claim to prove the future library theorems.

| Statement | Instances tried | Values on the two sides / wrong-model value | Result and change |
|---|---|---|---|
| Conventions: positive Kummer cocycle | gα=ζα; identity g | gα/α=ζ and κ(g)=ζ; identity gives 1=additive 0 | Consistent; inverse cocycle would give ζ⁻¹. |
| Conventions: allowable coefficients | F₂, m=1,2,3 | 1 and 3 map to 1; 2 maps to 0, a nonunit | m=2 excluded; m=1 zero coefficient module retained. |
| Conventions: invariant coordinate | m=3, x=[1/3] | e₃(x)=1; 3x=0 in Q/Z | Coordinate, not multiplication; no change. |
| 1.1 native coefficient/action | μ₃ over Q; complex conjugation | Weight-one action −1, weight-two action (−1)²=1 | No unchosen equivariant weight-one trivialization. |
| 1.1 nonabelian action control | S₃ splitting field of T³−2 | Transposition acts −1 on μ₃, a 3-cycle acts +1; both act +1 on μ₃⊗² | No abelian-Galois-group assumption needed. |
| 1.1 ordered cup equality | Q₇, m=3, {3,7} | Dictionary cup and h have contracted invariant 1/3; reversed order 2/3 | Fixes actual order. |
| 1.1 Steinberg and zero slot | {2,−1}; {1,b} | κ(2)∪κ(−1)=0=h{2,1−2}; κ(1)∪κ(b)=0=h{1,b} | Zero map alone is excluded by preceding cubic row. |
| 1.1 transfer/projection | F₂(t)⊂F₂(s), t=s², m=3 | res κ(t)=2κ(s); cor κ(s)=κ(t); cor res=2 | Inseparable degree retained. |
| 1.2 basis in weight 0 | m=5, j=0; m=1 | τ₀(1)=1=id(1); at m=1 both sides 0 | Root-independent scalar unit. |
| 1.2 weight-one basis | m=5, ζ; exponent 2 | τ₁(2)=ζ²=primitive-root equivalence(2) | Native map preserved. |
| 1.2 tensor coherence | m=5, weights 1,1, basis changed by 2 | Tensor basis changes by 2·2=4; τ₂ changes by 4 | Wrong common factor 2 excluded. |
| 1.2 negative weights/evaluation | m=5, u=2, weights 1,−1 | Dual changes by 3; evaluation 2·3=1 mod 5 | Dual cannot change by 2 (which gives 4). |
| 1.2 mixed-weight coherence | m=5, weights 2,−1 | Factors 4·3=2; weight-one factor 2 | Includes negative weights. |
| 1.3 contraction value | m=5, ζ²⊗ζ³ | c=ζ⁶=ζ; supplied bilinear pairing=ζ | Root multiplication gives 1 and fails. |
| 1.3 zero tensor and m=1 | 1⊗ζ; zero coefficient module | c(1⊗ζ)=1=additive 0; m=1 map 0→0 | Multiplication would give ζ. |
| 1.3 uniqueness/native specialization | m=2, (−1)⊗(−1) | Tensor lift=−1=native pairing | Pure tensors generate, so these prescribed values exclude rescaling. |
| 1.4 Brauer symbol and factoring | R, m=2, {-1,-1}; m=1 | β has invariant 1/2, 2β=0; at m=1 β=0 | Correct torsion subgroup and quotient. |
| 1.4 symbol generation/uniqueness | Q₇ cubic x; x+x | β(x)=1/3; β(2x)=2/3=β(x)+β(x) | Zero or negative map fails prescribed generator value. |
| 1.4 scalar extension | Hamilton class R→C | Restricted invariant class 0; split complex algebra class 0 | Brauer restriction agrees. |
| 1.5 root change in twists | m=5, ζ→ζ² | Weight-one, weight-two, inverse-weight-two factors 2,4,4 | Distinguishes basis from contraction. |
| 1.5 root change in contraction/Brauer | Fixed ζ²⊗ζ³, m=5 | Old value ζ; new value ζ³; factor u⁻¹=3 | Factor 4 would be wrong. |
| 1.5 field extension and identity | Q₇ unramified degree 2, β(x)=1/3; identity | Restriction invariant 2/3=2·1/3; identity 1/3 | Degree and root normalization compatible. |
| 1.6 positive degree-one residue | C((t)), m=3 | ∂κ(t)=Pδκ(t)=1; negation gives 2 | Purity map's sign fixed independently. |
| 1.6 uniformizer independence | t→ut, u a valuation unit | ∂κ(ut)=0+1=1=∂κ(t) | Does not choose the sign by the K₂ square. |
| 1.6 ordered unit/uniformizer | Q₇, m=3, {3,7} | Tame=3; ∂h=−κ(3)=2κ(3)=Pδ cup | Sign distinguished from κ(3). |
| 1.6 reversed cup | Q₇, m=3, {7,3} | Tame=3⁻¹=5; −κ(5)=κ(3)=∂ reversed cup | Consistent with negative flip. |
| 1.6 two units | {u,w}, both valuation units | Tame=1; −κ(1)=0=cohomological residue | Does not assert the full cup vanishes. |
| 1.6 ramified pair | F₃(t), m=2, {t,t} | Tame=−1=2; residue κ₂(2)=−κ₂(2)≠0 | Dropping (−1) in tame formula gives 0 and fails. |
| 1.6 ramification multiplier | t=s², m=3, κ(ū) order 3 | res residue=−2κ(ū)=κ(ū); e times original gives same | Omitting e gives 2κ(ū), unequal. |
| 1.6 transfer residue | Unramified quadratic over Q₇, constant unit 3 | Norm 3²=2 mod 7; transferred residue −κ(2)=−2κ(3) | A second degree factor would give −4κ(3), unequal. |
| 1.6 wild exclusion | Q₂, m=2, {-1,-1} | Tame=1; Hilbert=−1 | No residue-field-invertible assertion applied here. |
| 2.1 multiplication and unit | m=3; YX and XY; e₀₀ | YX=ζe₁₁, XY=e₁₁; e₀₀eᵢⱼ=eᵢⱼ=eᵢⱼe₀₀ | Correct positive commutation exponent. |
| 2.1 carry coefficients | m=3, e₂₂e₂₂ | Both presentation and formula give ζ⁴ab e₁₁=ζab e₁₁ | Carries in both slots retained. |
| 2.1 associativity | Every triple of basis indices, m=2,3,4,5 | 64,729,4096,15625 triples: equal reduced indices and a,b exponents; ζ-exponent difference 0 mod m | All 20,514 pass. |
| 2.1 basis dimension/reducibility | m=4, a=c², c nonsquare | Basis size 4²=16; replacing it by the degree-two field crossed product gives 4 | Full degree-m algebra retained. |
| 2.1 universal property | a=1, specified diagonal X and shift Y | eᵢⱼ maps to XⁱYʲ; Xᵐ=1, Yᵐ=b, YX=ζXY | Generators determine one map; arbitrary matrices do not qualify. |
| 2.2 explicit splitting, degree 2 | F₅, ζ=4, α=2, b=2 | X diagonal (2,3); X²=4I, Y²=2I; YX=ζXY=[[0,1],[2,0]] | Includes wraparound relation. |
| 2.2 explicit splitting, degree 3 | F₇, ζ=2, α=2, b=3 | X diagonal (2,1,4); X³=I, Y³=3I; YX=ζXY with nonzero entries (0,2)=5,(1,0)=2,(2,1)=1 | Three distinct eigenvalues. |
| 2.2 explicit splitting, degree 4 | F₅, ζ=2, α=2, b=3 | X diagonal (2,1,3,4); X⁴=I, Y⁴=3I; 16 monomials versus dim Mat₄=16 | Correct full-degree splitting. |
| 2.2 descent/central simplicity | Hamilton algebra over R, extension C | dim_R=4, center=R; over C gives Mat₂(C), dimension 4 | Splitting extension does not assert split over R. |
| 2.2 bad source lemma control | A=Mat₂(D), D=(x,y) over C(x,y), division since its x-residue y is nonsquare; n=4, u=diag(1,−1) | u⁴=1 and u noncentral, but minimal degree 2≠4; [A]=[D]≠0 | Roadmap's distinct-eigenvalue proof avoids false source lemma. |
| 2.3 proper-degree corner | m=4, α²=c, d=2,s=2 | c²=a; inner dimension 4; outer 2²·4=16 | Correct matrix factor. |
| 2.3 factorization and conjugation | T⁴−c² | (T²−c)(T²+c); two idempotents, Y interchanges them, Y² fixes each | No irreducibility shortcut. |
| 2.3 corner unit/inclusion | Same two-corner case | Corner unit maps to diag(1,0); ambient unit diag(1,1) | Inclusion deliberately nonunital. |
| 2.3 boundary degrees | d=1; d=m | Mat_m(F) has dimension m²; Mat₁(A)=A | Positive d divides m; no division by zero. |
| 2.4 cochain sign | m=3, i(g)=2,i(h)=2,j(g)=1 | δf=bζ²; carry d=b and flipped cup ζ² | [d]=−[flip cup]=[ordered cup]. |
| 2.4 reduced-degree carry | m=4,d=2,s=2, i_d(g)=i_d(h)=1 | floor((2+2)/4)=1=floor((1+1)/2) | Corner cocycle and ambient inflation agree. |
| 2.4 cubic algebra class | Q₇, ζ mod7=2, Aζ(3,7) | Algebra invariant=1/3=β{3,7}; opposite=2/3 | Detects commutation/cup direction. |
| 2.4 equal-characteristic class | F₇((t)), ζ=2, Aζ(2,t) | Frobenius ratio α⁶=4=ζ²; invariant 2/3; N(2,t)=2, N(t,2)=4 | Agrees with base function-field supplier. |
| 3.1 exponent projection | Full roots C₆, m=3, value ζ | N₃=ζ²; primary projection=ζ⁴ | Exponent map, not primary projection. |
| 3.1 unit coefficient and wild symbol | m=1; Q₂, m=2, {-1,-1} | N₁=1; N₂=−1 while tame=1 | All allowed local coefficients retained. |
| 3.1 local quadratic orientation | Q₃, {3,−1} | Arithmetic norm residue=−1=quadratic Hilbert sign | Consistent local specialization. |
| 3.2 full-root section | N{ζ,a}=ζ, ζ order w | N(i{ζ,a})=ζⁱ; w{ζ,a}=0 and image has order w | Section and exact order follow. |
| 3.2 nonprimitive-value control | C₆, value ζ² | (ζ²)³=1, order 3≠6; proposed section composite sends ζ to ζ²≠ζ | Excludes source's insufficient nonidentity choice. |
| 3.2 quadratic section | Q₂, ζ=a=−1 | N{-1,-1}=−1; twice the symbol=0 | Nonzero order-two section. |
| 3.3 total conic definition | R, (r,s)=(0,0),(0,1),(0,−1) | Solubility false,true,false; signs −1,+1,−1 | Zero coefficients included correctly. |
| 3.3 real headline, both directions | (−1,−1),(−1,1),(1,0) | sign=-1 is true,false,false; both≤0 is true,false,false | Positive coefficient gives a reciprocal-square-root solution. |
| 3.3 finite-field positive cases | All unit pairs over F₃,F₅,F₇ | Conic and norm predicates both true on 4,16,36 pairs | Exhaustive 56 pairs; no discrepancy. |
| 3.3 generic nonmultiplicativity control | Q, fixed s=−1, r=3,7,21 | All three conic signs −1; product of first two signs +1≠−1 | No generic bilinearity claim. |
| 3.3 split-square norm case | a=c², b arbitrary nonzero, char≠2 | Norm of ((b+1)/2,(1−b)/(2c)) equals b | Split case does not require a quadratic field. |
| 3.4 generic Hilbert headline | R, a=b=−1; a=1,b=−1 | Conic/norm signs (−1,−1) and (+1,+1) respectively | Both signs and split case tested. |
| 3.4 characteristic-two negative control | F₂(t), a=1,b=t | Conic has (1,0), sign +1; x²−y²=t impossible, norm sign −1 | Explicit 2≠0 binder is necessary. |
| 3.4 K₂ homomorphisms | R, Hamilton symbol x; C | Real x↦−1 and 2x↦+1; complex all symbols↦+1 | Matches supplied real and complex maps. |
| 3.5 arithmetic Frobenius | Q₇, α³=3, ζ mod7=2 | Frob(α)/α=α⁶=9=2 mod7=ζ | Selects arithmetic rather than geometric Frobenius. |
| 3.5 invariant formula | Same x={3,7} | inv β(x)=1/3; H(7,3)=ζ; H(3,7)=ζ⁻¹=ζ² | Both ordered formulas agree. |
| 3.5 m=2 boundary | R or Q₂, {-1,-1} | inv=1/2; ζ¹=ζ⁻¹=−1 | Explains why a quadratic test alone cannot choose the sign. |
| 4.1 common-target factors | Q, m=2, Hamilton symbol | At 2 and ∞ values −1; other finite places +1 | Correct common μ₂ target. |
| 4.1 archimedean conditions | Real m=1,2; complex any m | Real factors 1 or sign; complex factor 1 | No nonexistent real primitive cubic root assumed. |
| 4.2 support on sums | x Hamilton, x+(−x) | Support x={2,∞}; support 0=∅, contained in {2,∞} | Inclusion, not equality of supports. |
| 4.2 finite word | Σ over n symbols | Outside the union, each factor=1 and product=1; for n=0 support=∅ | Extends finite support to every class. |
| 4.3 product and invariant sum | Q, Hamilton symbol | (−1)(−1)=1; 1/2+1/2=0 in Q/Z | Real term cannot be dropped. |
| 4.3 zero and a single cubic factor | x=0; Q(μ₃), place over7, {3,7} | Empty product=1, sum=0; selected local factor ζ⁻¹≠ζ | Product law alone would not detect globally inverted factors. |
| 5.0a actual adic symbol | R, ℓ=2, {-1,-1}; C | H² lattice C₂, symbol=1; each real finite reduction=1; complex 0=0 | Retains real torsion and zero complex target. |
| 5.0a finite reduction and residue | Q₇,ℓ=3,x={3,7} | Adic reduction has invariant 1/3 and residue 2κ₃(3); finite h has same values | Fixes both maps. |
| 5.0a left coefficient square | R,ℓ=2, γ((-1)⊗(-1)) | γ gives nonzero order-two symbol; hγ=1=coefficient connecting class in C₂ | Left square has content beyond right reduction square. |
| 5.0a extension/zero laws | F₂(t)⊂F₂(s),t=s²; symbol with slot 1 | cor res=2 on both sides; slot 1 maps to 0 in both finite/adic cups | Degree-free transfer and nonzero unit-slot map excluded. |
| 5.0b torsion quotient | C_(ℓ∞)⊕Cℓ→Cℓ | Kernel C_(ℓ∞); quotient Cℓ→Cℓ identity; cokernel 0 | Quotient by divisible subgroup necessary. |
| 5.0b actual field controls | R,ℓ=2; separably closed field | Real primary torsion/D=C₂ and H² torsion=C₂; closed-field quotient=0=H² | Does not conclude integral K₂=0. |
| 5.0c function-field torsion | F₃(t), polynomial place of degree d | Residue summand has order 3ᵈ−1; d=1 gives C₂; tame kernel=0 | Every finite-support element torsion; divisible subgroup 0. |
| 5.0c number-field size | Q, mod2 | Each odd-prime residue quotient=C₂; direct sum has infinitely many nonzero coordinates available | Global quotient is infinite, not finite. |
| 5.0c divisible wrong model | Prüfer C_(ℓ∞) | Every element torsion and ℓC_(ℓ∞)=C_(ℓ∞); finite-coordinate maps all 0 | Finite-kernel argument is essential. |
| 5.0d root-symbol map | F₃(t),ℓ=2,(-1)⊗t | Tame at0=−1=2; symbol order exactly2 | Zero γ excluded. |
| 5.0d cubic sign | Q(μ₃),ζ mod7=2,γ(ζ⊗7) | Tame=2 of order3; purity residue −κ₃(2); triple symbol=0 | Root symbol and residue agree with fixed conventions. |
| 5.0d exact sequence, real/dyadic | Q,S={2,∞},ℓ=2 | Pic=0; middle C₂; target {(0,0),(1,1)}=C₂ | Hamilton generator maps to (1,1). |
| 5.0d exact sequence, one place | F₃(t),S={∞},ℓ=2 | Pic=0, K₂(F₃[t])=0, single-coordinate sum-zero group=0 | Sequence 0→0→0→0. |
| 5.0d exact sequence, two places | F₃(t),S={0,∞},ℓ=2 | Pic=0; K₂/2=C₂; coordinates of {-1,t}=(1,1) | Two-place result differs from one-place result. |
| 5.0d Picard tensor/injection | Pic=C_(ℓ²), generator g | ζ⊗ℓg=0; ζ⊗g generates Cℓ; its generic restriction=0 | Order-ℓ subgroup is not the tensor quotient. |
| 5.0d enlargement and sign | Add one allowed place to S | Old local tuple v becomes (v,0); tame boundary u versus Quillen u⁻¹ | Same Picard map after fixed negative boundary transport. |
| 5.0e H³ vanishing | C₂ on Z₂(2), trivial action | H³=ker(2)=0; H²=Z₂/2=C₂ | Weight-two parity matters. |
| 5.0e finite tower | Z/2^(r+1)(2)→Z/2^r(2) | Finite H³ generator 2ʳ maps to0; inverse limit=0 | Nonzero finite H³ does not contradict continuous vanishing. |
| 5.0e odd-twist control | C₂ on Z₂(1), sign action | H³=Z₂/2=C₂, not0 | Cannot reuse vanishing in odd twist. |
| 5.0e all-exponent reduction | Z[1/2],ℓ=2; Z[1/3],ℓ=3 | First pair of H² groups C₂/C₂ for every r; second pair 0/0 | Neither real row nor higher exponent lost. |
| 5.1 local all-exponent comparison | R at ℓ=2 and ℓ odd; C | K₂/2ʳ=C₂=H²; odd real quotient 0=H²; complex 0=H² | Archimedean scope retained. |
| 5.1 equal characteristic | F₂((t)),ℓ=3 | Roots μ₃(F)=1; local K₂/3=0=H² | Characteristic2 coefficient ℓ=2 explicitly excluded. |
| 5.1 wild local scope | Q₂,ℓ=2 | {-1,-1} nonzero in quotient and H² | Field invertibility holds, residue invertibility does not. |
| 5.2 completion square | Q,{-1,-1},ℓ=2, completions2,∞ | Both K₂ restrictions and cup restrictions give (1,1) in C₂² | Ordinary real completion is present. |
| 5.2 global adic identification | F₃(t),ℓ=2,{-1,t} | Tame order2; h nonzero order2; divisible kernel0 | Primary torsion itself, not an arbitrary completion. |
| 5.2 finite coefficient cardinality | Q,m=2 | K₂/2 surjects onto ⊕_(p odd)C₂; h isomorphism gives infinite target too | No finiteness inference. |
| 5.3 actual localization sign | Q₇, product [3]·[7],m=3 | θ♮ inverse gives {3,7}; tame3; Quillen boundary5; κ(5)=−κ(3) | Both cohomological/localization paths give −κ(3). |
| 5.3 raw versus normalized comparison | Same product | Raw inverse gives −{3,7}, invariant −1/3; normalized inverse gives +1/3 | Cannot choose a new sign of θ. |
| 5.3 ring comparisons | Z[1/2],ℓ=2,r≥1 | K₂⊗Z₂=C₂ and K₂/2ʳ=C₂; both cohomology targets C₂ | Generator preserved at every r. |
| 5.3 Picard/generic restriction | μℓ⊂F, Pic/ℓ=Cℓ | Generic kernel Cℓ, whereas field Pic=0 | Integral injection does not give quotient injection. |
| 5.3 weight-one Kummer | Pic/ℓ=Cℓ | H²(O,μℓ) has injected Cℓ; its image in Br(O)[ℓ] is0 | Weight-one sequence is not replaced by a field H². |
| 5.3 two-step S enlargement | Q,{-1,-1}, add3 then5 | Tame values (1,1), residues (0,0), same as one combined enlargement | Composed squares agree. |
| 5.4 finite-coefficient exactness | F₅,m=6 | K₂/6=0; finite K₂=C₂; boundary to μ₆(F₅)=C₂ is isomorphism | Cannot replace finite K₂ by quotient. |
| 5.4 CRT boundary | Same nonzero finite class | Boundary −1; mod2 component nonzero, mod3 component0 | μ₂=C₂, μ₃=1; correct actual boundary. |
| 5.4 cofiber boundary case | m=1 | Cofiber of identity=0; quotient0, torsion kernel0 | No extra degenerate theorem needed in Lean. |
| 5.5 Chern product coefficient | i=j=1 | −(1)!/(0!0!)=−1; ordered cup coefficient −1 | No factorial inverted modulo m. |
| 5.5 cubic Chern headline | Q₇,m=3,{3,7} | Normalized Chern invariant −1/3=2/3; −h invariant2/3 | Independent of Artin-order minus sign. |
| 5.5 raw-map formula | ε=−1 | −εh=+h; normalized θ♮=θ∘(−1) gives −h | Changing θ and ε together leaves θ♮ fixed. |
| 5.5 composite coefficient | Cup coordinate1 mod6 | Chern=5; reductions1 mod2 and2 mod3 | CRT returns5, not1. |
| 5.5 Bockstein correction/scope | Two integral reductions; F₅,m=6 extra class | Integral Bocksteins0, correction0; extra class has boundary−1≠1 | Formula asserted only on integral-reduction image. |
| 5.5 m=1 | Zero finite coefficient | Chern0=−h0 | Correct zero case remains a README Check. |
| R01 carrier ownership control | F₅ and R | F₅: K₁=C₄,K₂=0,K₁[6]=C₂; R: {-1,-1}≠0 | Replacement supplier statements preserve required values. |
| R02 gap ownership control | Six plan slugs versus six local constructions | External requests6, matching local constructions6, README gap declarations0 | Remove redundant requests; mathematical values above unchanged. |

The degenerate cases not applicable to the signatures were also checked as exclusions: the zero ring is not a field; a finite field is discrete and is not in the nondiscrete local-field theorem; m=0 is never admitted; a field is not being substituted for a DVR with a uniformizer; all root-dependent constructions assume an actual primitive root in F; the radical degree d is positive and divides m before m/d is used. Only the field-generic conic definition admits characteristic two, and its comparison theorem explicitly excludes it. No theorem quantifies over an arbitrary unmarked comparison map whose hypotheses already contain the desired conclusion.

### Pinned declarations and duplication audit

The pins checked were Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 21 declaration sites were opened or inspected with their surrounding binders. Paths are library-repository relative.

| Pinned declaration/site | File and line | What it supplies, and the boundary checked |
|---|---|---|
| `IsPrimitiveRoot.zmodEquivZPowers` | `Mathlib/RingTheory/RootsOfUnity/PrimitiveRoots.lean:461` | Additive equivalence with the root's powers; no all-weight twist system. |
| `IsPrimitiveRoot.zpowers_eq` | `Mathlib/RingTheory/RootsOfUnity/PrimitiveRoots.lean:516` | Equality with roots of unity under domain and nonzero-order hypotheses. |
| `TauCeti.KummerCoeff` | `TauCeti/FieldTheory/GaloisCohomology/Coefficients.lean:125` | Additive roots in the separable closure; discrete topology and continuous Galois action nearby, not a trivial action assumption. |
| `TauCeti.kummerMap` | `TauCeti/FieldTheory/GaloisCohomology/Kummer.lean:249` | Requires coefficient invertibility and uses the multiplicative H¹ tag. |
| `TauCeti.kummerMap_eq_kummerCocycleClass` | Same file, line 277 | Positive gα/α cocycle. |
| `TauCeti.ker_kummerMap` | Same file, line 322 | Kernel is powers. |
| `TauCeti.kummerMap_eq_one_iff` | Same file, line 330 | Actual nth-power solvability criterion. |
| `TauCeti.ContCohomology.explicitCup11` | `TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Product.lean:595` | Jointly continuous equivariant biadditive pairing is required. |
| `TauCeti.ContCohomology.explicitCup11_eq_neg_flip` | Same file, line 790 | Negative flip includes the flipped coefficient pairing. |
| `TauCeti.ClassFieldTheory.cup_muNRepH1Equiv` | `TauCeti/NumberTheory/ClassFieldTheory/Local/Symbol.lean:130` | Existing native cup transport; it is not reconstructed here. |
| `TauCeti.ClassFieldTheory.kummerCupPairing` | Same file, line 165 | Native root-dependent bilinear pairing; the new target is its tensor factorization. |
| `TauCeti.ClassFieldTheory.h2MuEquivZMod` | `TauCeti/NumberTheory/ClassFieldTheory/Brauer/RootsOfUnity.lean:89` | Local field and field-invertible coefficient, including wild mixed characteristic. |
| `TauCeti.ClassFieldTheory.toRatAddCircle_h2MuEquivZMod` | Same file, line 103 | Coordinate k corresponds to [k/m], not multiplication by m in Q/Z. |
| `TauCeti.ClassFieldTheory.h2MuToBr` and its injectivity/image | `TauCeti/NumberTheory/ClassFieldTheory/Brauer/Torsion.lean:58`, lines 96,110 | Existing Kummer inclusion with m-torsion image. |
| `TauCeti.brauerCohomologyEquiv` | `TauCeti/Algebra/CrossedProduct/Comparison.lean:267` | Existing Brauer-to-H² direction, at its stated universe. |
| `TauCeti.brauerCohomologyEquiv_crossedProductClass` | Same file, line 295 | Actual finite-Galois crossed-product cocycle; finite dimension and Galois hypotheses retained. |
| `TauCeti.brauerCohomologyEquiv_quaternionClass` | `TauCeti/Algebra/CrossedProduct/CupProduct.lean:318` | Existing ordered quadratic cup comparison. |
| `TauCeti.hilbertSymbol` | `TauCeti/NumberTheory/HilbertSymbol/Basic.lean:46` | Unit-input norm-equation sign; definition alone does not assume char≠2 or locality. |
| Hilbert norm/solubility criteria | Same file, lines 56,62,69 | Solubility of b=x²−ay²; not the total conic predicate on arbitrary coefficients. |
| Hilbert quaternion criterion | Same file, lines 198,201 | Invertibility of 2 is introduced for this comparison. |
| `PadicTateTwist`, projection and Galois action | `TauCeti/RingTheory/RootsOfUnity/PadicTateTwist.lean:69`, lines 103,195 | A native weight-one Tate module exists; it does not provide the coherent all-integer finite/adic étale comparison promised here. |

Object searches covered primitive-root coordinates, Kummer coefficients and cups, Hilbert/norm predicates, crossed products, symbol algebras, classical/Milnor K₂, finite Chern operations and adic/Picard comparisons. Searches used the roadmap service over main and its open-head index, the board packages, and the supplied relevant sibling checkouts. The three fully qualified names in this Lean file have no conflicting declaration found outside this roadmap.

The ownership distinctions checked were substantive: K2SymbolsBrauer owns classical adapters and its prime-degree local function-field construction; this roadmap extends that algebra to all fields and invertible degrees and includes reducible radicals. KTheoryFiniteLocalFields §6.10 owns an integral motivic diagonal Chern map in every degree; §5.5 here concerns the finite étale operation on the specified integral-reduction image, with its Bockstein correction and θ₂ sign, so it is not a second construction of that integral map. K3BlochGroups consumes the degree-three diagonal map, rather than owning this degree-two finite comparison. MotivicEtaleKTheory and SchemeKTheoryOperationsPartII supply broader motivic/operation frameworks, not this root/cup/Artin dictionary. The package hits concerning cyclic Azumaya examples or quaternion examples do not own this all-field symbol-algebra construction. Generic Brauer equivalence, quadratic normalization, finite K-coefficients and arithmetic-site comparison remain with their named owners. The six gap requests are the exception recorded in R02.

### Resolved supplier contracts and order

The citation resolver's missing-section lead was checked against the actual supplier text, rather than accepted as a verdict. Its §0.2 lead is real; direct reading also found the §0.4 drift. All remaining named supplier sections were located, including their normalization and scope. This table groups citations by supplier; repeated Needs lines were checked against the same contracts. Line numbers for service-displayed roadmaps below omit the service's one-line header.

| Supplier and resolved sections | Verifiable repository locator | Scope and direction checked |
|---|---|---|
| AlgebraicKTheory A1–A3/A5 | `TauCetiRoadmap/AlgebraicKTheory/README.md:305`, §§2.3,5.1–5.2 | Field K₁ and classical K₂/Matsumoto owner; repairs R01. |
| K2SymbolsBrauer §§5.1–5.2,5.13–5.15,7.1–7.3,8.1–8.3 | `TauCetiRoadmap/K2SymbolsBrauer/README.md:411`, lines 712,1202,1276 | Symbol universal property, archimedean groups, Milnor/classical adapters and ε=−1. |
| K2SymbolsBrauer §§9.7,9.11–9.18,10.7–10.9 | Same file, lines 1529,1602,1871 | Uniformizer-last residues, transfer/projection and finite-extension degree, including inseparability. |
| K2SymbolsBrauer §§10.32a–10.32c,11.1–11.3,11.7–11.8,12.2–12.3,12.5 | Same file, lines 2408,2425,2456,2500,2606,2622,2678,2720 | Earlier prime-degree function-field theory, finite tame kernel, localization, det B_Q θ♮=inverse tame, real sign. |
| KTheoryFiniteLocalFields §§1.1,1.8,3.0a,3.1–3.3,7.3 | `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:211`, lines 316,512,548,1639 | Finite coefficients/CRT; early Chern including even-degree correction; all-field norm residue; local full-root map/section and completions. |
| EtaleCohomologyFoundations §§F.0.3,0.7,F.3a,F.4.1–F.4.2 | `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:231`, lines 439,776,959,979 | Twists, support triangle, positive tame character and derived adic realization. |
| SchemeAndStackFoundations §§0.12–0.14,2.11,2.15,3.4 | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:969`, lines 1032,1068,3656,3867,4789 | Valuation/henselian geometry, Kummer, field comparison and Picard/divisors. |
| LefschetzPencilsAndVanishingCycles §0.10 | `TauCetiRoadmap/LefschetzPencilsAndVanishingCycles/README.md:853`, line 894 | Final absolute-purity statement covers regular noetherian immersions; DVR specialization and +1 uniformizer value do not require smoothness. |
| ArithmeticKTheory §§5.2,6.1,6.3 | `TauCetiRoadmap/ArithmeticKTheory/README.md:1611`, lines 2065,2158 | Actual descent maps and positive-even K finiteness; odd/totally-imaginary row plus ordinary dyadic degree-two row. |
| ArithmeticGaloisDuality §§R02.1.2–R02.1.3,R02.3.2,R02.4.4 | `TauCetiRoadmap/ArithmeticGaloisDuality/README.md:599`, lines 700,2074,3505 | Continuous triangles/no-divisibility, function-field Brauer sequence, finite arithmetic cohomology and real high-degree restriction. |
| SelmerIwasawaCohomology §3.15 | `TauCetiRoadmap/SelmerIwasawaCohomology/README.md:1656` | Actual arithmetic-site finite/lattice comparisons, real places and coefficient triangles retained. |
| GeneralAlgebraicKTheory §§1.7–1.8, Layer 5, §§7.4–7.5 | `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:204`, lines 226,1478,1506 | Stable cofiber adapter, connective K-spectrum, external/internal products and sign. |
| ClassFieldTheory Layers5,6,10,14 | `TauCetiRoadmap/ClassFieldTheory/README.md:920`, lines 1220,1552,1872 | Cup/invariant coordinate, arithmetic reciprocity, all-place invariant sum and quadratic product law. |
| QuadraticFormInvariants §§6C,6E,7B | `TauCetiRoadmap/QuadraticFormInvariants/README.md:1984`, lines 2235,2413 | Unit-input Hilbert map, local cohomological normalization, crossed-product/Brauer comparison and universe transport. |
| ClassicalArithmeticCompletion §§1.14,1.24–1.25,1.44,1.52 | `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:713`, lines 1086,1125,1576,1840 | Artin-first scalar, exponent/place factors, cubic sign determination, number-field product law. |

The adic symbol is built before its torsion theorem, global torsion before root-symbol surjectivity and the Picard injection, and coefficient reduction before the ring dictionary. Layer 4 is used as a compatibility check, not as an input to the global torsion proof. Downstream RefinedTraceMethods and EllipticKTheory are consumers only. No upward supplier or cycle was found. Existing roadmap work is imported; the Part II introduction identifies its base and extension. There are at least three discriminating Checks for each new definition/map family, API lists for the constructed objects, and examples/dependencies for every layer.

## Not verifiable

- None of the 15 sampled source targets was blocked by unavailable text. All four sources were read from the supplied cache; no paywall bypass, new source key or missing-reference request was needed.
- The future K₂, étale-twist and symbol-algebra declarations cannot be elaborated at these pins because the carriers named in the module docstring are absent. Their README statements were checked mathematically and against the suppliers; successful elaboration of the two available headlines is not evidence of formal proofs for those future targets.
- Ownership against open roadmaps was checked through the supplied service index and the available relevant sibling files. This does not certify work outside that supplied index/context.

## Source issues

- **Error** in weibel at III.Lemma 6.9.1, printed p.241, weibel line 13884: the source says a noncentral n-th root of unity in a degree-n central simple algebra forces splitting; it should require the element's minimal polynomial to have degree n, as in the distinct-eigenvalue argument; affects a stated result.
- **Gap** in weibel at III.Example 6.2.3, printed p.233, weibel line 13428: the source says a nonidentity pairing value yields the displayed full-root section; it should choose a value equal to the specified primitive generator, using its full order and perfectness; affects the proof.
- **Misprint** in weibel at VI.Corollary 6.2(a), printed p.503, weibel line 30647: the source says the unit rank s satisfies the number of omitted places equals s−1; it should say s equals the number of omitted places minus one; affects a stated result.
- **Misprint** in soule at Proposition 2.2.3.3, printed p.49, soule line 1530: the source says the general product coefficient contains the factorial (1−i)!; it should contain (i−1)!, consistently with Proposition 2.2.2.3; affects nothing.
