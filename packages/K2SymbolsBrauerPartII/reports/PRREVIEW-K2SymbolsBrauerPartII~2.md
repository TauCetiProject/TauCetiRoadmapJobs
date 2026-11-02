# Review of K2SymbolsBrauerPartII (pull request #1432 at 474cce8)

**Verdict:** needs changes

## R01 (P2) — Remove the six obsolete supplier-gap requests

**Location:** `TauCetiRoadmap/K2SymbolsBrauerPartII/README.md:7`, “Part II owns the native field-cohomology bridge”; also lines 72, 652, 675, 687 and 701; `packages/K2SymbolsBrauerPartII/design/plan.json:2`.

**Claim:** Previous R02 remains unresolved. The plan requests six constructions from earlier suppliers while the README assigns those same constructions to this roadmap. No matching gap declaration appears under Exact supplier contracts. These requests are redundant ownership contracts, not legitimate requests for unfinished prerequisites.

**Witness:** The plan retains six slugs at lines 4, 10, 16, 22, 28 and 34; README §§1.1, 1.6 and 5.0a–5.0d construct all six locally. There are zero README `gap:` declarations.

| Plan slug | External owner in plan | Local owner in README |
|---|---|---|
| field-cup-coherence | EtaleCohomologyFoundations | §1.1 |
| dvr-residue-coherence | EtaleCohomologyFoundations | §1.6 |
| adic-tate-symbol | KTheoryFiniteLocalFields | §5.0a |
| adic-tate-torsion | KTheoryFiniteLocalFields | §5.0b |
| global-tate-torsion | KTheoryFiniteLocalFields | §5.0c |
| global-picard-sequence | KTheoryFiniteLocalFields | §5.0d |

**Exact repair:** Retain the six local constructions and their proof routes; remove these six obsolete entries from the editable top-level `gaps` list in `packages/K2SymbolsBrauerPartII/design/plan.json`. Do not delete their mathematical targets. This changes the inconsistent count from six external requests plus six local owners to zero external requests plus six local owners. It leaves the cubic residue −κ₃(3)=2κ₃(3), the real adic target C₂, and the two-place function-field Picard sequence 0→0→C₂→C₂→0 unchanged. The finite-field and real tests of the repaired carrier contract also remain intact.

The earlier repair report's reason that this package cannot implement an earlier supplier's extensions does not settle this finding: no earlier-supplier implementation is requested here. The defect is the surviving requests after ownership moved into Part II. The later available repair report does not mark this ownership reconciliation as not actionable.

## Previous findings

- R01 — repaired: README lines 3, 7, 62 and 66 now cite AlgebraicKTheory §§5.1–5.2; line 863 names AlgebraicKTheory §2.3, KTheoryLowDegrees §8.1 and GeneralAlgebraicKTheory §§3.12–3.14 for the normalized field K₁ comparison.
- R02 — not repaired: README lines 7 and 72 still assign all six constructions locally, while the plan retains all six external requests and the README contains no matching gap declarations. Repeated as this report's R01.

## Verified sound

:robot: Incremental AI review of 18 changed lines since a63a852. The actual diff is 11 insertions and 7 deletions, entirely in the README; Suggested.lean is unchanged. This review checks the changed supplier and source clauses, their normalization and coefficient-boundary consumers, and both previous findings. Unchanged mathematics is carried from [r1], not represented as a second full review.

### Gate, order and elaboration

HEAD is `474cce8367b3d6e8ab7481b068ed4340531ca2e7`. The worker's gate reports every check passing, including `build=0`. The independently rerun gate returned:

```text
gate K2SymbolsBrauerPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

That invocation did not print a build field, so I also independently ran the prescribed targeted build. `lake build TauCetiRoadmap.K2SymbolsBrauerPartII.Suggested` completed successfully (8983 jobs). Direct `lake env lean` elaboration of the original Suggested.lean also exited 0. Both reported only the intended `sorry` warnings at lines 39 and 46. The working tree remained clean; the diff outside the roadmap folder is empty.

The prescribed dependency check returned:

```text
depcheck: 204 roadmaps, 1496 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line occurred. The revised direct suppliers precede this roadmap: AlgebraicKTheory at order line 11, GeneralAlgebraicKTheory at 13, KTheoryLowDegrees at 35, and K2SymbolsBrauerPartII at 177. The citation resolver found no unresolved cross-roadmap citation or own Lean name against main `fa41b37` and the supplied open-head index. Its external-library scan was unavailable, so the pinned declarations below were inspected directly.

I elaborated a scratch copy with `#check @` for all three declarations. All signatures agree with README §§3.3–3.4, with no lost binder or change:

| Declaration | Elaborated scope |
|---|---|
| `conicSymbol` | Arbitrary-universe field F and all r,s:F; result ℤˣ. |
| `conicSymbol_real_eq_neg_one_iff` | All r,s:ℝ; sign −1 iff r≤0 and s≤0, including zero coefficients. |
| `conicSymbol_eq_hilbertSymbol` | Arbitrary-universe field F, explicit 2≠0, and r,s:Fˣ; conic sign equals the pinned Hilbert symbol. |

The unchanged one-tactic probes and absence of padding are carried from [r1]. No theorem or definition was added in this repair.

### Changed sources and resolved ownership

The changed clauses cite two Weibel locations, and the only seeded target with a changed Needs line is §5.4. All were opened in the supplied legal extractions:

| Claim | Source locator checked | Support and hypotheses |
|---|---|---|
| Determinant and field K₁ | weibel line 9972 and line 9980; III.1.1.1–1.1.2, printed p.180 | The stable determinant splits for commutative rings; it identifies K₁ with units for fields. No restriction to finite fields or characteristic zero. |
| Matsumoto and finite-field vanishing | weibel line 13284 and line 13295; III.6.1–6.1.1, printed p.231 | Field units generate with bilinearity and Steinberg relations; K₂ of every finite field is trivial. |
| §5.4 reduction and Bockstein | soule line 1401 and line 1423; §2.2.3.1, printed pp.45–46 | Positive coefficient integer; the exact sequence has multiplication by that integer on K₁. No field-characteristic invertibility is required for this sequence. |
| §5.5 consumer of integral reduction | soule line 1444 and line 1450; §§2.2.3.1–2.2.3.2, printed pp.46–47 | Finite multiplication has extra restrictions; factorization of the integral Chern operation does not identify finite K₂ with integral K₂/m. The repair does not remove this distinction. |

The other seeded targets have no changed mathematical statement or locator. Their calculations and source assessment are carried from [r1]; the new report does not claim to have refetched their sources. There are no newly introduced unverified locators or missing texts.

Seven affected supplier chains were resolved by reading the service-displayed roadmap text at the indexed heads. Repository line numbers below exclude the service's header:

| Supplier | Repository locator | Contract actually found |
|---|---|---|
| AlgebraicKTheory §§1.1–1.4, 2.1–2.3, 3.1, 5.1–5.2 | `TauCetiRoadmap/AlgebraicKTheory/README.md:305`, :493, :508; its scope at :13 | Stable classical carriers; determinant K₁(F)≃Fˣ; stable Steinberg kernel, Matsumoto and finite-field vanishing. The repaired numeric section references match A1–A3/A5. |
| K2SymbolsBrauer exact contracts and §§5.1–5.2, 7.1–7.3 | `TauCetiRoadmap/K2SymbolsBrauer/README.md:52`; adapters at :411 and :1202 | Its contracts explicitly consume AlgebraicKTheory's carriers; it owns the symbol adapters, not a new classical carrier. |
| KTheoryLowDegrees §§8.1, 13.1 | `TauCetiRoadmap/KTheoryLowDegrees/README.md:836`, :1558 | Determinant and size-one unit normalization, with the absolute comparison imported from GeneralAlgebraicKTheory. |
| GeneralAlgebraicKTheory §§3.12–3.14 | `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:615`, :629, :645 | Split-exact and projective comparisons; the absolute K₁ map preserves unit classes. Transpose/inverse-transpose conventions are explicitly corrected by grouplike inversion. |
| SchemeKTheoryOperations §3.6, through KTheoryLowDegrees §8.1 | `TauCetiRoadmap/SchemeKTheoryOperations/README.md:1017`, :1040 | Unit loops and the transported determinant splitting on the same classical/Quillen comparison. |
| KTheoryFiniteLocalFields §1.1 | `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md:211` | Actual coefficient cofiber, reduction, Bockstein and exact sequence; inclusion and reduction have different boundary multipliers. |
| EtaleCohomologyFoundations and KTheoryFiniteLocalFields gap assignments | `TauCetiRoadmap/K2SymbolsBrauerPartII/README.md:70`, :72, :80; plan lines 4–37 | The ordinary coefficient and finite-symbol inputs remain imports. The six additional constructions are explicitly local targets, explaining why the surviving external requests are redundant. |

Object searches used `roadmaps grep` across main and the supplied open-head index, plus the board packages, for Matsumoto presentations, classical K₁ comparisons and stable unit normalization. The changed text imports the established owners and adds no competing construction. The complete unchanged ownership audit, including the relevant supplied sibling checkouts, remains the audit in [r1]. No ownership claim is made about work outside that supplied context.

The library pins remain Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Four declaration sites were reopened directly:

| Pinned declaration | File and line | Boundary checked |
|---|---|---|
| `Abelianization` and its projection `Abelianization.of` | `Mathlib/GroupTheory/Abelianization/Defs.lean:39`, :51 | Quotient by the commutator subgroup for any group; it does not itself build the stable matrix group or classical K₁. |
| `Matrix.GeneralLinearGroup` | `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Defs.lean:42` | Units of a finite square-matrix ring, with finite index type; no stabilization is part of this carrier. |
| `TauCeti.hilbertSymbol` | `TauCeti/NumberTheory/HilbertSymbol/Basic.lean:46` | Unit-input norm equation; the definition has no characteristic restriction, while the roadmap comparison explicitly requires 2≠0. |
| `TauCeti.hilbertSymbol_eq_one_iff` | `TauCeti/NumberTheory/HilbertSymbol/Basic.lean:56` | Solvability of the norm equation; it does not restate the total conic headline. |

Searches for the classical K₁/K₂ objects and Steinberg kernels did not identify a replacement native carrier. The pinned Matsumoto-name hits concern Coxeter braid equivalence, not K₂ of fields. The remaining pinned-library audit is unchanged and carried from [r1].

### Headline coverage

The unchanged headline families are the all-weight coefficient/ordered-cup dictionaries; arbitrary-DVR residue comparison; symbol-algebra central simplicity, proper-degree matrix corners and algebra/cup equality; norm-residue/Hilbert comparisons and the total real conic criterion; local invariant formula and all-class reciprocity; the adic symbol/coefficient diagram and conditional/global torsion; the global Picard sequence; local/global/S-integer Tate dictionaries and ring coefficient reduction; integral reduction and the finite Chern comparison.

The two statable conic headlines remain in Suggested.lean. Its module docstring still names the missing classical/Milnor K₂, finite-K/K-spectrum, symbol-algebra and coherent twist/cohomology carriers for the other headlines. The repair does not introduce a stand-in, sorry-defined data, algorithm, narrowed prime range or new Lean API catalogue.

### Recomputed adversarial rows for changed contracts and affected consumers

The following computations are fresh checks of the repair. Group zero and multiplicative identity are distinguished explicitly.

| Statement | Instances tried | Values on both sides / wrong-model value | Result and change |
|---|---|---|---|
| Summary and scope: classical Matsumoto owner | F=𝔽₅, generator 3 | Let t={3,3}; since 1−3=3, Steinberg gives t=0; all symbols are multiples of t, so classical and presented K₂ are both 0 | Correct owner substitution; no finite-field restriction introduced. |
| Field presentation retains nonzero real symbols | F=ℝ, {−1,−1} | Real sign of classical symbol=−1; ordered presentation symbol also has sign −1, whereas zero has sign +1 | Replacement does not collapse general K₂. |
| Shared stable K₁ carriers | F=𝔽₂ | Stable K₁=𝔽₂ˣ=1; finite GL₂(𝔽₂)=S₃ has abelianization C₂ | Supplier is stable K₁, not a fixed-rank substitute. |
| Determinant/size-one section | F=𝔽₅, a=2 | det([2])=2; det(diag(2,1))=2; inverse convention gives 3≠2 | New contract fixes the actual unit class. |
| Absolute plus/Q comparison | F=𝔽₅, a=2 | Inverse transpose gives 3; subsequent group inversion gives 3⁻¹=2; determinant of original unit is 2 | GeneralAlgebraicKTheory §3.14 supplies the stated normalization. |
| Determinant multiplicativity and identity | F=𝔽₅, units 2,3 | det(diag(2,3))=6=1; [2]+[3]=[1]=0 in additive K₁ | The same carrier conventions survive the transport. |
| §5.4 K₁(F)[m]=μ_m(F) | F=𝔽₅,m=6 | Unit sixth powers for 1,2,3,4 are 1,4,4,1; both kernels are {1,4}≃C₂ | Repaired supplier preserves the original counterexample. |
| §5.4 actual coefficient sequence | F=𝔽₅,m=6 | K₂/6=0; finite K₂=C₂; Bockstein isomorphism to {1,−1}; reduction image=0=boundary kernel | Finite K₂ is still not confused with the quotient. |
| §5.4 CRT boundary | Nonzero preceding class | Root boundary −1; mod-two boundary (−1)³=−1; mod-three boundary (−1)²=1 | Components are nonzero C₂ and zero; no sign reversal introduced. |
| §5.4 characteristic and identity coefficients | F=𝔽₅,m=5; any field,m=1 | For m=5, K₂/5=0 and μ₅(𝔽₅)={1}, so finite K₂=0; for m=1, quotient, cofiber and torsion kernel are all 0 | Exactness needs no coefficient invertibility; m≥1 is retained. |
| Prior R02 ownership count | Six plan entries and six local targets | External requests=6, local owners=6, README gap declarations=0; intended repair gives 0,6,0 | Conflict remains; this report R01. |
| Preservation under removing obsolete requests | ℚ₇ cubic residue; ℝ at ℓ=2; 𝔽₃(t),S={0,∞},ℓ=2 | Residue −κ₃(3)=2κ₃(3); H²(C₂,ℤ₂(2))=ℤ₂/2=C₂; Pic=0 and K₂/2=C₂ maps isomorphically to {(0,0),(1,1)} | These values depend on retained local targets, not the six plan requests. |

### Carried adversarial table

113 unchanged mathematical rows follow, each attributed to [r1]. These preserve the previous report's computed values for the seeded targets and headlines, including sign, inseparable, real/dyadic and degenerate controls. They are inherited evidence; no repeated execution of the former 20,514 monomial or 56 conic/norm probes is claimed.

| Statement | Instances tried | Values on the two sides / wrong-model value | Result, change and provenance |
|---|---|---|---|
| Conventions: positive Kummer cocycle | gα=ζα; identity g | gα/α=ζ and κ(g)=ζ; identity gives 1=additive 0 | Consistent; inverse cocycle would give ζ⁻¹.  Carried from [r1]. |
| Conventions: allowable coefficients | F₂, m=1,2,3 | 1 and 3 map to 1; 2 maps to 0, a nonunit | m=2 excluded; m=1 zero coefficient module retained.  Carried from [r1]. |
| Conventions: invariant coordinate | m=3, x=[1/3] | e₃(x)=1; 3x=0 in Q/Z | Coordinate, not multiplication; no change.  Carried from [r1]. |
| 1.1 native coefficient/action | μ₃ over Q; complex conjugation | Weight-one action −1, weight-two action (−1)²=1 | No unchosen equivariant weight-one trivialization.  Carried from [r1]. |
| 1.1 nonabelian action control | S₃ splitting field of T³−2 | Transposition acts −1 on μ₃, a 3-cycle acts +1; both act +1 on μ₃⊗² | No abelian-Galois-group assumption needed.  Carried from [r1]. |
| 1.1 ordered cup equality | Q₇, m=3, {3,7} | Dictionary cup and h have contracted invariant 1/3; reversed order 2/3 | Fixes actual order.  Carried from [r1]. |
| 1.1 Steinberg and zero slot | {2,−1}; {1,b} | κ(2)∪κ(−1)=0=h{2,1−2}; κ(1)∪κ(b)=0=h{1,b} | Zero map alone is excluded by preceding cubic row.  Carried from [r1]. |
| 1.1 transfer/projection | F₂(t)⊂F₂(s), t=s², m=3 | res κ(t)=2κ(s); cor κ(s)=κ(t); cor res=2 | Inseparable degree retained.  Carried from [r1]. |
| 1.2 basis in weight 0 | m=5, j=0; m=1 | τ₀(1)=1=id(1); at m=1 both sides 0 | Root-independent scalar unit.  Carried from [r1]. |
| 1.2 weight-one basis | m=5, ζ; exponent 2 | τ₁(2)=ζ²=primitive-root equivalence(2) | Native map preserved.  Carried from [r1]. |
| 1.2 tensor coherence | m=5, weights 1,1, basis changed by 2 | Tensor basis changes by 2·2=4; τ₂ changes by 4 | Wrong common factor 2 excluded.  Carried from [r1]. |
| 1.2 negative weights/evaluation | m=5, u=2, weights 1,−1 | Dual changes by 3; evaluation 2·3=1 mod 5 | Dual cannot change by 2 (which gives 4).  Carried from [r1]. |
| 1.2 mixed-weight coherence | m=5, weights 2,−1 | Factors 4·3=2; weight-one factor 2 | Includes negative weights.  Carried from [r1]. |
| 1.3 contraction value | m=5, ζ²⊗ζ³ | c=ζ⁶=ζ; supplied bilinear pairing=ζ | Root multiplication gives 1 and fails.  Carried from [r1]. |
| 1.3 zero tensor and m=1 | 1⊗ζ; zero coefficient module | c(1⊗ζ)=1=additive 0; m=1 map 0→0 | Multiplication would give ζ.  Carried from [r1]. |
| 1.3 uniqueness/native specialization | m=2, (−1)⊗(−1) | Tensor lift=−1=native pairing | Pure tensors generate, so these prescribed values exclude rescaling.  Carried from [r1]. |
| 1.4 Brauer symbol and factoring | R, m=2, {-1,-1}; m=1 | β has invariant 1/2, 2β=0; at m=1 β=0 | Correct torsion subgroup and quotient.  Carried from [r1]. |
| 1.4 symbol generation/uniqueness | Q₇ cubic x; x+x | β(x)=1/3; β(2x)=2/3=β(x)+β(x) | Zero or negative map fails prescribed generator value.  Carried from [r1]. |
| 1.4 scalar extension | Hamilton class R→C | Restricted invariant class 0; split complex algebra class 0 | Brauer restriction agrees.  Carried from [r1]. |
| 1.5 root change in twists | m=5, ζ→ζ² | Weight-one, weight-two, inverse-weight-two factors 2,4,4 | Distinguishes basis from contraction.  Carried from [r1]. |
| 1.5 root change in contraction/Brauer | Fixed ζ²⊗ζ³, m=5 | Old value ζ; new value ζ³; factor u⁻¹=3 | Factor 4 would be wrong.  Carried from [r1]. |
| 1.5 field extension and identity | Q₇ unramified degree 2, β(x)=1/3; identity | Restriction invariant 2/3=2·1/3; identity 1/3 | Degree and root normalization compatible.  Carried from [r1]. |
| 1.6 positive degree-one residue | C((t)), m=3 | ∂κ(t)=Pδκ(t)=1; negation gives 2 | Purity map's sign fixed independently.  Carried from [r1]. |
| 1.6 uniformizer independence | t→ut, u a valuation unit | ∂κ(ut)=0+1=1=∂κ(t) | Does not choose the sign by the K₂ square.  Carried from [r1]. |
| 1.6 ordered unit/uniformizer | Q₇, m=3, {3,7} | Tame=3; ∂h=−κ(3)=2κ(3)=Pδ cup | Sign distinguished from κ(3).  Carried from [r1]. |
| 1.6 reversed cup | Q₇, m=3, {7,3} | Tame=3⁻¹=5; −κ(5)=κ(3)=∂ reversed cup | Consistent with negative flip.  Carried from [r1]. |
| 1.6 two units | {u,w}, both valuation units | Tame=1; −κ(1)=0=cohomological residue | Does not assert the full cup vanishes.  Carried from [r1]. |
| 1.6 ramified pair | F₃(t), m=2, {t,t} | Tame=−1=2; residue κ₂(2)=−κ₂(2)≠0 | Dropping (−1) in tame formula gives 0 and fails.  Carried from [r1]. |
| 1.6 ramification multiplier | t=s², m=3, κ(ū) order 3 | res residue=−2κ(ū)=κ(ū); e times original gives same | Omitting e gives 2κ(ū), unequal.  Carried from [r1]. |
| 1.6 transfer residue | Unramified quadratic over Q₇, constant unit 3 | Norm 3²=2 mod 7; transferred residue −κ(2)=−2κ(3) | A second degree factor would give −4κ(3), unequal.  Carried from [r1]. |
| 1.6 wild exclusion | Q₂, m=2, {-1,-1} | Tame=1; Hilbert=−1 | No residue-field-invertible assertion applied here.  Carried from [r1]. |
| 2.1 multiplication and unit | m=3; YX and XY; e₀₀ | YX=ζe₁₁, XY=e₁₁; e₀₀eᵢⱼ=eᵢⱼ=eᵢⱼe₀₀ | Correct positive commutation exponent.  Carried from [r1]. |
| 2.1 carry coefficients | m=3, e₂₂e₂₂ | Both presentation and formula give ζ⁴ab e₁₁=ζab e₁₁ | Carries in both slots retained.  Carried from [r1]. |
| 2.1 associativity | Every triple of basis indices, m=2,3,4,5 | 64,729,4096,15625 triples: equal reduced indices and a,b exponents; ζ-exponent difference 0 mod m | All 20,514 pass.  Carried from [r1]. |
| 2.1 basis dimension/reducibility | m=4, a=c², c nonsquare | Basis size 4²=16; replacing it by the degree-two field crossed product gives 4 | Full degree-m algebra retained.  Carried from [r1]. |
| 2.1 universal property | a=1, specified diagonal X and shift Y | eᵢⱼ maps to XⁱYʲ; Xᵐ=1, Yᵐ=b, YX=ζXY | Generators determine one map; arbitrary matrices do not qualify.  Carried from [r1]. |
| 2.2 explicit splitting, degree 2 | F₅, ζ=4, α=2, b=2 | X diagonal (2,3); X²=4I, Y²=2I; YX=ζXY=[[0,1],[2,0]] | Includes wraparound relation.  Carried from [r1]. |
| 2.2 explicit splitting, degree 3 | F₇, ζ=2, α=2, b=3 | X diagonal (2,1,4); X³=I, Y³=3I; YX=ζXY with nonzero entries (0,2)=5,(1,0)=2,(2,1)=1 | Three distinct eigenvalues.  Carried from [r1]. |
| 2.2 explicit splitting, degree 4 | F₅, ζ=2, α=2, b=3 | X diagonal (2,1,3,4); X⁴=I, Y⁴=3I; 16 monomials versus dim Mat₄=16 | Correct full-degree splitting.  Carried from [r1]. |
| 2.2 descent/central simplicity | Hamilton algebra over R, extension C | dim_R=4, center=R; over C gives Mat₂(C), dimension 4 | Splitting extension does not assert split over R.  Carried from [r1]. |
| 2.2 bad source lemma control | A=Mat₂(D), D=(x,y) over C(x,y), division since its x-residue y is nonsquare; n=4, u=diag(1,−1) | u⁴=1 and u noncentral, but minimal degree 2≠4; [A]=[D]≠0 | Roadmap's distinct-eigenvalue proof avoids false source lemma.  Carried from [r1]. |
| 2.3 proper-degree corner | m=4, α²=c, d=2,s=2 | c²=a; inner dimension 4; outer 2²·4=16 | Correct matrix factor.  Carried from [r1]. |
| 2.3 factorization and conjugation | T⁴−c² | (T²−c)(T²+c); two idempotents, Y interchanges them, Y² fixes each | No irreducibility shortcut.  Carried from [r1]. |
| 2.3 corner unit/inclusion | Same two-corner case | Corner unit maps to diag(1,0); ambient unit diag(1,1) | Inclusion deliberately nonunital.  Carried from [r1]. |
| 2.3 boundary degrees | d=1; d=m | Mat_m(F) has dimension m²; Mat₁(A)=A | Positive d divides m; no division by zero.  Carried from [r1]. |
| 2.4 cochain sign | m=3, i(g)=2,i(h)=2,j(g)=1 | δf=bζ²; carry d=b and flipped cup ζ² | [d]=−[flip cup]=[ordered cup].  Carried from [r1]. |
| 2.4 reduced-degree carry | m=4,d=2,s=2, i_d(g)=i_d(h)=1 | floor((2+2)/4)=1=floor((1+1)/2) | Corner cocycle and ambient inflation agree.  Carried from [r1]. |
| 2.4 cubic algebra class | Q₇, ζ mod7=2, Aζ(3,7) | Algebra invariant=1/3=β{3,7}; opposite=2/3 | Detects commutation/cup direction.  Carried from [r1]. |
| 2.4 equal-characteristic class | F₇((t)), ζ=2, Aζ(2,t) | Frobenius ratio α⁶=4=ζ²; invariant 2/3; N(2,t)=2, N(t,2)=4 | Agrees with base function-field supplier.  Carried from [r1]. |
| 3.1 exponent projection | Full roots C₆, m=3, value ζ | N₃=ζ²; primary projection=ζ⁴ | Exponent map, not primary projection.  Carried from [r1]. |
| 3.1 unit coefficient and wild symbol | m=1; Q₂, m=2, {-1,-1} | N₁=1; N₂=−1 while tame=1 | All allowed local coefficients retained.  Carried from [r1]. |
| 3.1 local quadratic orientation | Q₃, {3,−1} | Arithmetic norm residue=−1=quadratic Hilbert sign | Consistent local specialization.  Carried from [r1]. |
| 3.2 full-root section | N{ζ,a}=ζ, ζ order w | N(i{ζ,a})=ζⁱ; w{ζ,a}=0 and image has order w | Section and exact order follow.  Carried from [r1]. |
| 3.2 nonprimitive-value control | C₆, value ζ² | (ζ²)³=1, order 3≠6; proposed section composite sends ζ to ζ²≠ζ | Excludes source's insufficient nonidentity choice.  Carried from [r1]. |
| 3.2 quadratic section | Q₂, ζ=a=−1 | N{-1,-1}=−1; twice the symbol=0 | Nonzero order-two section.  Carried from [r1]. |
| 3.3 total conic definition | R, (r,s)=(0,0),(0,1),(0,−1) | Solubility false,true,false; signs −1,+1,−1 | Zero coefficients included correctly.  Carried from [r1]. |
| 3.3 real headline, both directions | (−1,−1),(−1,1),(1,0) | sign=-1 is true,false,false; both≤0 is true,false,false | Positive coefficient gives a reciprocal-square-root solution.  Carried from [r1]. |
| 3.3 finite-field positive cases | All unit pairs over F₃,F₅,F₇ | Conic and norm predicates both true on 4,16,36 pairs | Exhaustive 56 pairs; no discrepancy.  Carried from [r1]. |
| 3.3 generic nonmultiplicativity control | Q, fixed s=−1, r=3,7,21 | All three conic signs −1; product of first two signs +1≠−1 | No generic bilinearity claim.  Carried from [r1]. |
| 3.3 split-square norm case | a=c², b arbitrary nonzero, char≠2 | Norm of ((b+1)/2,(1−b)/(2c)) equals b | Split case does not require a quadratic field.  Carried from [r1]. |
| 3.4 generic Hilbert headline | R, a=b=−1; a=1,b=−1 | Conic/norm signs (−1,−1) and (+1,+1) respectively | Both signs and split case tested.  Carried from [r1]. |
| 3.4 characteristic-two negative control | F₂(t), a=1,b=t | Conic has (1,0), sign +1; x²−y²=t impossible, norm sign −1 | Explicit 2≠0 binder is necessary.  Carried from [r1]. |
| 3.4 K₂ homomorphisms | R, Hamilton symbol x; C | Real x↦−1 and 2x↦+1; complex all symbols↦+1 | Matches supplied real and complex maps.  Carried from [r1]. |
| 3.5 arithmetic Frobenius | Q₇, α³=3, ζ mod7=2 | Frob(α)/α=α⁶=9=2 mod7=ζ | Selects arithmetic rather than geometric Frobenius.  Carried from [r1]. |
| 3.5 invariant formula | Same x={3,7} | inv β(x)=1/3; H(7,3)=ζ; H(3,7)=ζ⁻¹=ζ² | Both ordered formulas agree.  Carried from [r1]. |
| 3.5 m=2 boundary | R or Q₂, {-1,-1} | inv=1/2; ζ¹=ζ⁻¹=−1 | Explains why a quadratic test alone cannot choose the sign.  Carried from [r1]. |
| 4.1 common-target factors | Q, m=2, Hamilton symbol | At 2 and ∞ values −1; other finite places +1 | Correct common μ₂ target.  Carried from [r1]. |
| 4.1 archimedean conditions | Real m=1,2; complex any m | Real factors 1 or sign; complex factor 1 | No nonexistent real primitive cubic root assumed.  Carried from [r1]. |
| 4.2 support on sums | x Hamilton, x+(−x) | Support x={2,∞}; support 0=∅, contained in {2,∞} | Inclusion, not equality of supports.  Carried from [r1]. |
| 4.2 finite word | Σ over n symbols | Outside the union, each factor=1 and product=1; for n=0 support=∅ | Extends finite support to every class.  Carried from [r1]. |
| 4.3 product and invariant sum | Q, Hamilton symbol | (−1)(−1)=1; 1/2+1/2=0 in Q/Z | Real term cannot be dropped.  Carried from [r1]. |
| 4.3 zero and a single cubic factor | x=0; Q(μ₃), place over7, {3,7} | Empty product=1, sum=0; selected local factor ζ⁻¹≠ζ | Product law alone would not detect globally inverted factors.  Carried from [r1]. |
| 5.0a actual adic symbol | R, ℓ=2, {-1,-1}; C | H² lattice C₂, symbol=1; each real finite reduction=1; complex 0=0 | Retains real torsion and zero complex target.  Carried from [r1]. |
| 5.0a finite reduction and residue | Q₇,ℓ=3,x={3,7} | Adic reduction has invariant 1/3 and residue 2κ₃(3); finite h has same values | Fixes both maps.  Carried from [r1]. |
| 5.0a left coefficient square | R,ℓ=2, γ((-1)⊗(-1)) | γ gives nonzero order-two symbol; hγ=1=coefficient connecting class in C₂ | Left square has content beyond right reduction square.  Carried from [r1]. |
| 5.0a extension/zero laws | F₂(t)⊂F₂(s),t=s²; symbol with slot 1 | cor res=2 on both sides; slot 1 maps to 0 in both finite/adic cups | Degree-free transfer and nonzero unit-slot map excluded.  Carried from [r1]. |
| 5.0b torsion quotient | C_(ℓ∞)⊕Cℓ→Cℓ | Kernel C_(ℓ∞); quotient Cℓ→Cℓ identity; cokernel 0 | Quotient by divisible subgroup necessary.  Carried from [r1]. |
| 5.0b actual field controls | R,ℓ=2; separably closed field | Real primary torsion/D=C₂ and H² torsion=C₂; closed-field quotient=0=H² | Does not conclude integral K₂=0.  Carried from [r1]. |
| 5.0c function-field torsion | F₃(t), polynomial place of degree d | Residue summand has order 3ᵈ−1; d=1 gives C₂; tame kernel=0 | Every finite-support element torsion; divisible subgroup 0.  Carried from [r1]. |
| 5.0c number-field size | Q, mod2 | Each odd-prime residue quotient=C₂; direct sum has infinitely many nonzero coordinates available | Global quotient is infinite, not finite.  Carried from [r1]. |
| 5.0c divisible wrong model | Prüfer C_(ℓ∞) | Every element torsion and ℓC_(ℓ∞)=C_(ℓ∞); finite-coordinate maps all 0 | Finite-kernel argument is essential.  Carried from [r1]. |
| 5.0d root-symbol map | F₃(t),ℓ=2,(-1)⊗t | Tame at0=−1=2; symbol order exactly2 | Zero γ excluded.  Carried from [r1]. |
| 5.0d cubic sign | Q(μ₃),ζ mod7=2,γ(ζ⊗7) | Tame=2 of order3; purity residue −κ₃(2); triple symbol=0 | Root symbol and residue agree with fixed conventions.  Carried from [r1]. |
| 5.0d exact sequence, real/dyadic | Q,S={2,∞},ℓ=2 | Pic=0; middle C₂; target {(0,0),(1,1)}=C₂ | Hamilton generator maps to (1,1).  Carried from [r1]. |
| 5.0d exact sequence, one place | F₃(t),S={∞},ℓ=2 | Pic=0, K₂(F₃[t])=0, single-coordinate sum-zero group=0 | Sequence 0→0→0→0.  Carried from [r1]. |
| 5.0d exact sequence, two places | F₃(t),S={0,∞},ℓ=2 | Pic=0; K₂/2=C₂; coordinates of {-1,t}=(1,1) | Two-place result differs from one-place result.  Carried from [r1]. |
| 5.0d Picard tensor/injection | Pic=C_(ℓ²), generator g | ζ⊗ℓg=0; ζ⊗g generates Cℓ; its generic restriction=0 | Order-ℓ subgroup is not the tensor quotient.  Carried from [r1]. |
| 5.0d enlargement and sign | Add one allowed place to S | Old local tuple v becomes (v,0); tame boundary u versus Quillen u⁻¹ | Same Picard map after fixed negative boundary transport.  Carried from [r1]. |
| 5.0e H³ vanishing | C₂ on Z₂(2), trivial action | H³=ker(2)=0; H²=Z₂/2=C₂ | Weight-two parity matters.  Carried from [r1]. |
| 5.0e finite tower | Z/2^(r+1)(2)→Z/2^r(2) | Finite H³ generator 2ʳ maps to0; inverse limit=0 | Nonzero finite H³ does not contradict continuous vanishing.  Carried from [r1]. |
| 5.0e odd-twist control | C₂ on Z₂(1), sign action | H³=Z₂/2=C₂, not0 | Cannot reuse vanishing in odd twist.  Carried from [r1]. |
| 5.0e all-exponent reduction | Z[1/2],ℓ=2; Z[1/3],ℓ=3 | First pair of H² groups C₂/C₂ for every r; second pair 0/0 | Neither real row nor higher exponent lost.  Carried from [r1]. |
| 5.1 local all-exponent comparison | R at ℓ=2 and ℓ odd; C | K₂/2ʳ=C₂=H²; odd real quotient 0=H²; complex 0=H² | Archimedean scope retained.  Carried from [r1]. |
| 5.1 equal characteristic | F₂((t)),ℓ=3 | Roots μ₃(F)=1; local K₂/3=0=H² | Characteristic2 coefficient ℓ=2 explicitly excluded.  Carried from [r1]. |
| 5.1 wild local scope | Q₂,ℓ=2 | {-1,-1} nonzero in quotient and H² | Field invertibility holds, residue invertibility does not.  Carried from [r1]. |
| 5.2 completion square | Q,{-1,-1},ℓ=2, completions2,∞ | Both K₂ restrictions and cup restrictions give (1,1) in C₂² | Ordinary real completion is present.  Carried from [r1]. |
| 5.2 global adic identification | F₃(t),ℓ=2,{-1,t} | Tame order2; h nonzero order2; divisible kernel0 | Primary torsion itself, not an arbitrary completion.  Carried from [r1]. |
| 5.2 finite coefficient cardinality | Q,m=2 | K₂/2 surjects onto ⊕_(p odd)C₂; h isomorphism gives infinite target too | No finiteness inference.  Carried from [r1]. |
| 5.3 actual localization sign | Q₇, product [3]·[7],m=3 | θ♮ inverse gives {3,7}; tame3; Quillen boundary5; κ(5)=−κ(3) | Both cohomological/localization paths give −κ(3).  Carried from [r1]. |
| 5.3 raw versus normalized comparison | Same product | Raw inverse gives −{3,7}, invariant −1/3; normalized inverse gives +1/3 | Cannot choose a new sign of θ.  Carried from [r1]. |
| 5.3 ring comparisons | Z[1/2],ℓ=2,r≥1 | K₂⊗Z₂=C₂ and K₂/2ʳ=C₂; both cohomology targets C₂ | Generator preserved at every r.  Carried from [r1]. |
| 5.3 Picard/generic restriction | μℓ⊂F, Pic/ℓ=Cℓ | Generic kernel Cℓ, whereas field Pic=0 | Integral injection does not give quotient injection.  Carried from [r1]. |
| 5.3 weight-one Kummer | Pic/ℓ=Cℓ | H²(O,μℓ) has injected Cℓ; its image in Br(O)[ℓ] is0 | Weight-one sequence is not replaced by a field H².  Carried from [r1]. |
| 5.3 two-step S enlargement | Q,{-1,-1}, add3 then5 | Tame values (1,1), residues (0,0), same as one combined enlargement | Composed squares agree.  Carried from [r1]. |
| 5.4 finite-coefficient exactness | F₅,m=6 | K₂/6=0; finite K₂=C₂; boundary to μ₆(F₅)=C₂ is isomorphism | Cannot replace finite K₂ by quotient.  Carried from [r1]. |
| 5.4 CRT boundary | Same nonzero finite class | Boundary −1; mod2 component nonzero, mod3 component0 | μ₂=C₂, μ₃=1; correct actual boundary.  Carried from [r1]. |
| 5.4 cofiber boundary case | m=1 | Cofiber of identity=0; quotient0, torsion kernel0 | No extra degenerate theorem needed in Lean.  Carried from [r1]. |
| 5.5 Chern product coefficient | i=j=1 | −(1)!/(0!0!)=−1; ordered cup coefficient −1 | No factorial inverted modulo m.  Carried from [r1]. |
| 5.5 cubic Chern headline | Q₇,m=3,{3,7} | Normalized Chern invariant −1/3=2/3; −h invariant2/3 | Independent of Artin-order minus sign.  Carried from [r1]. |
| 5.5 raw-map formula | ε=−1 | −εh=+h; normalized θ♮=θ∘(−1) gives −h | Changing θ and ε together leaves θ♮ fixed.  Carried from [r1]. |
| 5.5 composite coefficient | Cup coordinate1 mod6 | Chern=5; reductions1 mod2 and2 mod3 | CRT returns5, not1.  Carried from [r1]. |
| 5.5 Bockstein correction/scope | Two integral reductions; F₅,m=6 extra class | Integral Bocksteins0, correction0; extra class has boundary−1≠1 | Formula asserted only on integral-reduction image.  Carried from [r1]. |
| 5.5 m=1 | Zero finite coefficient | Chern0=−h0 | Correct zero case remains a README Check.  Carried from [r1]. |

## Not verifiable

- No changed source claim was blocked by unavailable legal text. No source fetch, manifest edit or missing-reference request was necessary.
- The six plan entries can be read, but no evidence was supplied that they were removed or reconciled elsewhere. This is the concrete ownership conflict in R01, not an assumption that their suppliers must already be implemented.
- The future K₂, finite-K, twist-cohomology and symbol-algebra statements cannot be elaborated on missing carriers. The successful build only elaborates the two available headlines; it does not prove the README mathematics.
- Unchanged source, ownership and one-tactic checks are explicitly inherited from [r1]. This incremental review does not certify unrelated changes in other roadmaps or work outside the supplied open-head context.

## Source issues

The four previously recorded issues below are carried from [r1]; none was newly introduced by the repair or by its added locators.

- **Error** in weibel at III.Lemma 6.9.1, printed p.241, weibel line 13884: the source says a noncentral n-th root of unity in a degree-n central simple algebra forces splitting; it should require the element's minimal polynomial to have degree n, as in the distinct-eigenvalue argument; affects a stated result.
- **Gap** in weibel at III.Example 6.2.3, printed p.233, weibel line 13428: the source says a nonidentity pairing value yields the displayed full-root section; it should choose a value equal to the specified primitive generator, using its full order and perfectness; affects the proof.
- **Misprint** in weibel at VI.Corollary 6.2(a), printed p.503, weibel line 30647: the source says the unit rank s satisfies the number of omitted places equals s−1; it should say s equals the number of omitted places minus one; affects a stated result.
- **Misprint** in soule at Proposition 2.2.3.3, printed p.49, soule line 1530: the source says the general product coefficient contains the factorial (1−i)!; it should contain (i−1)!, consistently with Proposition 2.2.2.3; affects nothing.

[r1]: PRREVIEW-K2SymbolsBrauerPartII~1.md
