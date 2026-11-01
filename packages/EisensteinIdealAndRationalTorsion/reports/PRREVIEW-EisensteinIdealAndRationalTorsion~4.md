# Review of EisensteinIdealAndRationalTorsion (pull request #1264 at 27586f6)

**Verdict:** needs changes

## R01 (P2) — Manin–Drinfeld still has two proof owners

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:13`: “EllipticCurveModularityPartII §6.0c also states this theorem as a proof target”; also :1308 and the retained theorem at :1002.

**Claim:** The revised wording accurately describes the required transfer, but does not complete it. The supplied later roadmap still independently builds the same unrestricted geometric theorem. This leaves the single-ownership defect from [R3] unresolved.

**Witness:** `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:649` independently requires geometric cuspidal-divisor torsion, including nonsquarefree levels and Cartan quotients; :651 names its own proof inputs. Its contract at :135 still calls this a target.

**Exact repair:** Retain the general theorem in this earlier roadmap. Coordinate a change in EllipticCurveModularityPartII that replaces its independent §6.0c proof target and contract at :135 with an import of EisensteinIdealAndRationalTorsion §7.9. Its uses at :840 (§6.5) and :870 (§6.8) must consume that imported contract. Make that change in the later roadmap's own pull request, not by editing another folder here. Once it is present, state the resulting ownership directly in this roadmap's scope and consumer paragraphs.

**Repair test:** Both existing statements cover N=1 and N=4, where the cusp classes are zero of order 1, and N=11, where the distinguished cusp difference has order 5. The proposed import retains all three cases and Cartan quotients with one proof owner instead of two. It preserves §6.8's argument: m=5 and h=7 give annihilator hm=35, without asserting finiteness over the larger cusp field. No source theorem or mathematical range needs weakening.

## Previous findings

- R01 — partly repaired: README:13 and :1308 now explicitly acknowledge the duplicate target and required import. EllipticCurveModularityPartII:135,649,651 still independently own its proof; the coordinated change is absent. Carried forward as R01.

[R3] has one finding. Its older repaired findings are not reopened. No supplied repair report marks this finding “not actionable in this package”; this review has no new declared supplier gap to assess.

## Verified sound

🤖 Independent AI review. This is an **incremental re-review of 4 changed lines since b417d0f**. I checked both changed paragraphs, the previous finding, the retained §7.9 theorem and its affected supplier/consumer citations. Unchanged mathematics and its adversarial evidence are explicitly carried forward from [R3]; this is not a fresh review of the entire roadmap.

### Gate, scope and Lean

The reviewed head is `27586f62be3c4a42860c633f3ffb2329ceed9fcb`. The incremental diff contains two replaced README lines and no Lean change. The PR diff against origin/main has no changes outside this roadmap folder. The tracked worktree remains unchanged.

The worker's gate passes, including its targeted build. My rerun of the scanner gate returns:

```text
gate EisensteinIdealAndRationalTorsion: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The separate requested dependency check returns:

```text
depcheck: 205 roadmaps, 1489 edges, 0 problem(s)
```

No UPWARD or CYCLE line occurs. This check verifies direction, not unique proof ownership.

I separately ran `lake build TauCetiRoadmap.EisensteinIdealAndRationalTorsion.Suggested` and direct `lake env lean` on the original acceptance file. Both exit 0 with only the six expected declaration-uses-sorry warnings. A scratch copy appended `#check @name` for all six declarations and elaborated successfully. All six expanded signatures match the worker's signatures and README: primality, the five excluded levels, ellipticity, exact order, 7<P and fixedness for every rational Galois automorphism remain in scope. No binder or signature changed.

The unchanged padding assessment is inherited from [R3], which records 18 unsuccessful closure attempts using `simp`, `rfl` and `infer_instance`. No new declaration, definition, sorry'd data, stand-in, import or option was added.

### Headline coverage

The six statable headlines are `isogeny_iteration` (§7.8), `cyclotomic_thirteen_class_number` (§8.5), `order_thirteen_exclusion` (§8.6), `occurring_small_primes` (§8.7), `all_prime_torsion` (§8.8), and `elliptic_fixed_torsion_zero` (§8.9). All remain stated on native carriers.

The module docstring still identifies the other deep endpoints and their missing carriers: integral Hecke duality/index; exact cuspidal order, Shimura subgroup and intersection; residual constituents and odd/dyadic multiplicity one; homology freeness and winding principality; Ogg and quotient torsion; Eisenstein quotient rank zero, rational points and odd Sha; positive-genus modular-curve finiteness; formal immersion and general geometric Manin–Drinfeld; and the level-thirteen model, norm-19 descent, rank zero and cusp-only points. In particular, the ownership edit does not introduce a new statable headline or weaken the retained general geometric theorem.

### Sources and seeded sample

None of the 15 seeded targets has a changed mathematical statement or locator: §§0.4, 1.1, 1.2, 1.5, 1.6, 2.2, 2.4, 3.3, 4.5, 6.3, 6.5, 7.4, 7.5, 7.7 and 8.1. Their numerical rows below are inherited from [R3], including that report's inherited evidence. They are not represented as new source readings.

For the affected ownership claim I fetched Elkik1990 through the sources service from the legal Numdam archive and read the general theorem and its period explanation: unnumbered theorem, printed p.59, **Elkik1990 line 23 through line 30**; §I, pp.60–62, **Elkik1990 line 46 through line 71** and **line 119 through line 132**. The theorem concerns every congruence subgroup, with no squarefree condition. Its complex formulation yields the geometric characteristic-zero statement after embedding the algebraic closure of the number field in ℂ and using injectivity on geometric points. Homomorphisms preserve torsion. The pullback/norm step preserves the generality: if m annihilates the pulled-back class under a map of degree d>0, then md annihilates the original class.

The same source explains that the Hecke correspondence respects the mixed Hodge structure (**Elkik1990 line 49 through line 55**, and §II, p.63, **line 142 through line 158**). This agrees with §7.9's rational period route and does not assert an integral splitting. No new mathematical restriction or source error was found in the changed claim.

### Supplier resolution and duplication

I used `roadmaps show` and `roadmaps grep`, read the supplied sibling checkout, and searched the board packages and pinned libraries by the objects “Manin–Drinfeld”, “Drinfeld–Manin” and cuspidal divisors. The supplied EllipticCurveModularityPartII head is `0e44114c32fab173823864596976e9d318f25eb7`; the main index is `fa41b37`. Three affected roadmap families were resolved afresh:

| Family | File and line, with contract |
| --- | --- |
| EllipticCurveModularityPartII | `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:135`, :647–651, :840 and :870–872: identical geometric proof target, independent inputs, and both named consumers. R01 records the remaining duplication. |
| ModularSymbolsPadicLFunctions | `TauCetiRoadmap/ModularSymbolsPadicLFunctions/README.md:980`, :1085 and :1231–1287: §§0.6–0.8 give symbol duality, periods, and the rational splitting at full level N≥3. Its polynomial projector is rational; the integral splitting is expressly excluded. |
| ModularCurvesPartII | `TauCetiRoadmap/ModularCurvesPartII/README.md:3238`, :3286, :3329, :3754 and :3782: §§13.1–13.3 and 14.11–14.12 supply actual Jacobians, pullback/norm, Hecke and period comparisons. In particular norm after pullback is multiplication by the map degree. |

These names resolve to the statements used in §7.9. The two changed paragraphs identify EllipticCurveModularityPartII as a consumer, not a new supplier. The later roadmap's aggregate dependency list already mentions §7.9; that does not replace its independent §6.0c target or contract.

Board-package text includes older allocations of this theorem; it does not override the supplied later PR head. The general rational splitting remains owned by ModularSymbolsPadicLFunctions; the geometric consequence is retained here as the earlier proof owner because it is also required by the formal-immersion reduction argument. No new generic construction or fully qualified Lean name was introduced. The wider unchanged ownership audit is inherited from [R3].

The fresh citation resolver found no unresolved cross-roadmap citation, but reported that it did not check pinned Lean names. I therefore do not treat that result as a library audit. The worker's two unchanged Lean-name leads remain the planned supplier references discussed in [R3], outside this diff.

### Pinned declarations opened

The actual pins were confirmed as Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following eight entries were opened; library paths are relative to their respective repositories.

| Declaration | File and line | Content and limit |
| --- | --- | --- |
| `WeierstrassCurve.IsElliptic` | `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:366` | Requires `IsUnit W.Δ`; over ℚ excludes singular models. |
| `WeierstrassCurve.Affine.Point` | `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477` | Infinity or coordinates with a nonsingularity proof. |
| `AddSubgroup.torsionBy` | `Mathlib/Algebra/Module/Torsion/Basic.lean:972` | Subgroup killed by the integer, not an exact-order predicate. |
| `NumberField.classNumber`, `classNumber_eq_one_iff` | `Mathlib/NumberTheory/NumberField/ClassNumber.lean:64`, :74 | Ideal-class cardinality and PID equivalence; no automatic conductor-13 computation. |
| `WeierstrassCurve.pointGaloisAction` | `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/Galois.lean:47` | Actual action of field automorphisms on coordinates. |
| `WeierstrassCurve.torsionGaloisAction` | Same file, :64 and :85 | Restriction to killed-by-N torsion and its coercion compatibility. |
| `ModularForm.discriminant_ne_zero` | `Mathlib/NumberTheory/ModularForms/Discriminant.lean:122` | Nonvanishing on the upper half-plane, used by §7.9's modular-unit example. |
| `CuspForm.discriminant` | Same file, :236 | The weight-12 level-one cusp form. |

Object searches at these pins returned no Manin–Drinfeld or cuspidal-divisor theorem. This limited search is consistent with the unchanged missing-carrier assessment; it is not a claim that the pins lack all modular-symbol infrastructure.

### Adversarial table

The two rows first below are fresh evaluations for the two changed passages. The remaining **86 rows** retain the previous report's computed values and explicitly cite [R3]. There are **88 rows in total**, covering the seeded targets, all six Lean headlines, the finding, and the dependent calculations. Finite examples do not prove the general theorems.

| Statement | Instances tried | Computed values on both sides / competing model | Result | Change |
| --- | --- | --- | --- | --- |
| README:13, geometric ownership | N=1,4,11,15; both proof-owning sections | Cusp counts 1,3,2,4; degree-zero divisor ranks 0,2,1,3; genus at 4 is 1+6/12−3/2=0. Cusp-class orders at 1,4,11 are 1,1,5, with 10 mod5=0. Independent proof targets: 2; required owners: 1. | Same unrestricted statement is duplicated, R01. | Wording accurately acknowledges duplication; ownership remains unresolved. |
| README:1308, downstream supply through §6.0c | §6.5 cuspidal class and §6.8 torsion image; degree-2 pullback/norm; m=5,h=7 | From 5f*D=0, norm gives 5·2D=10D=0. From 5u(P) rational and rational group order 7, obtain 35u(P)=0. Current §6.0c imports of this theorem: 0; intended: 1; proof owners fall 2→1 only after replacement. | The requested direction preserves the arithmetic; the downstream import is still absent. | Coordinated consumer change required; no hypothesis is dropped. |
| Supplier ranges, README:49,467,479,1033,1050 | Weight-two trivial-character newforms at levels 11 and 13 | At 11, dim A_f=1 and cotangent rank=1; at 13, dim J₀=0 and no nonzero such quotient. Existing sections numbered 16.1 through 16.7: 7; section 16.8: absent | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Cyclotomic eigenspaces, README:132 | p=5,r=1; inverse-character abstract module ℤ/25, Teichmüller lift 7 | 7⁴=1, 7³=18, 7⁻¹=18 mod25; projector e₃ acts by 1 and e₁ by 0. Index −1=3 mod4, not 1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Herbrand and exceptional exponent, README:132 | p=5, j=3; p=3, j=1 | B₂=1/6 reduces to 1 in F₅, so unit annihilation gives Y³=0; at 3, 6=0 and that unit argument is unavailable, but the separate Y¹=0 theorem applies | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Inverse-character quotient, README:134; dependent §7.7 | ω and ω⁻¹ on ℤ/25; zero arithmetic inverse component; two lifts differing in an abelian kernel | 7−18=14 is a unit mod25: ω-quotient has order1, ω⁻¹-quotient order25. Actual inverse component=0 gives quotient order1 and extension degree1. Inner conjugation by the abelian kernel is identity | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §0.1 index and its use, README:166 | P=2,3,5,7,11,13,17,19,41; junk P=1 | n=1,1,1,1,5,1,4,3,10; n>1 precisely for the tested positive-genus levels. At P=1 the expression is 0 and primality fails | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §0.2 full order and new zero-ring Check, README:180,191,195 | T=0; T=ℤ at level11; ε(w)=−1 | T×ℤ≅ℤ when T=0; H_P=ℤ, ε=id, ker ε=0, H_P/ker ε=ℤ. At11, I∩ℤ=5ℤ while full scalar kernel=0; ε(1+w)=0 versus degree value2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §1.1 cuspidal generator, README:255 | P=11 and13; cusp sign reversed | At11 c=1 in ℤ/5 has order5 and −c=4≠1; at13 c=0 has order1. Positive-genus cusp-image contradiction compares 1 with 0 mod5 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §1.5 Shimura subgroup, README:322 | μ₅ over ℚ and F₅; zero Jacobian | μ₅ has rank5 but only1 rational point over ℚ; in F₅ it has1 geometric point despite rank5. Its Cartier dual is constant ℤ/5; the zero Jacobian has only rank1 subgroup | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §1.7 retraction, README:360 | M=ℤ⊕ℤ/5, C second summand; M=0 | r_C(2,3)=3, (2,3)−r_C(2,3)=(2,0); split inverse returns (2,3). At M=0 both summands=0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §2.1 integral closures, README:399 | Genus-one J[5]; a=T; Tate curve with component order5 and 2-torsion | J[5] generic rank25 versus cuspidal rank5; J[T] rank1. Tate 2-torsion has generic rank4 but special torus kernel rank2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §2.2 maximal ideals, README:426 | P=11,41,13 | n=5,10,1 gives residual prime sets {5},{2,5},∅ and residue cardinalities5, (2,5), none. In every case P∤n | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §2.3 named connected kernel, README:444,448–449 | T=ℤ, a=(5); map id:J→J on a nonzero J | γ_a=⋂5ʳℤ=0, B_a=0, A_a=J; id kills B_a and descends uniquely. The wrong J/5J=0 would require id=0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §2.3 new zero-ideal Check, README:460 | a=0; arbitrary homomorphism f:J→B | lim T/0ʳ=T, γ=0, B_a=0, q_a=id and A_a=J; f=f∘id, every f kills0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §2.3 new unit-ideal Check, README:461 | a=T; zero map and identity on nonzero J | lim T/Tʳ=0, γ=T, B_a=J, A_a=0; zero map killsJ and descends, id does neither | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §2.4 support with corrected supplier range, README:479 | T=ℤ×ℤ, a=5ℤ×ℤ; J=A₁×A₂ | Completion ℤ₅×0, kernel 0×ℤ, B_a=A₂ and A_a=A₁. Opposite-factor choice retains A₂ instead | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §3.3 good auxiliary primes, README:536 | (P,ℓ,l)=(11,5,2),(11,5,31),(17,2,2) | Fifth powers mod11={1,10}; half-differences mod5 are3 and0. Fourth powers mod17={1,4,13,16}; 2 is absent although 6²=2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §4.1 winding normalization, README:599 | e=1/5 in a rank-one period model; H=ℤ₂[σ] | 5e=1, e∉ℤ, reversed path gives −1/5. Invariants generator1+σ maps to2 in coinvariants, and to0 after reduction mod2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §4.3 dyadic action, README:651 | P=17,41; σ=[[1,1],[0,1]] over F₂ | n=4,10; 2-primary C+Σ ranks8,2 respectively. D has rank4 and2 special geometric points; σ−1 has rank1 versus0 for the scalar identity | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §7.9 geometric theorem and quotient transport, README:13,1002,1033,1050,1308 | N=1,4,11,15; degree2 modular pullback/norm | Cusp counts1,3,2,4 give degree-zero dimensions0,2,1,3; exact-divisor counts1,2,2,4 show N=4 is not transitive. If 5f*D=0 then 10D=0 by norm | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §8.2 diamond action, README:1143 | γ²=γ−1; γ=8,12 mod19; π=3+2γ, πbar=5−2γ | γ³=−1 and γ⁶=1; ππbar=19. At8 π=0; at12 πbar=0 and π=8≠0. The two residual factors have dimensions2+2=4 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| §8.4 local isogeny, dependent on §8.2 | ℚ₁₃ formal subgroup and local kernel characters | 19≡6 mod13 is a unit; π inverse is πbar/19 on the pro13 subgroup. gcd(19,12)=1 gives μ₁₉(ℚ₁₃)={1}; nontrivial order6 character fixes0; finite quotient kernel order1 implies full image | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Conventions: index, cusp sign, weights | P=2,3,11,13,17; c=1 in ℤ/5; coefficients a₁=1,a₂=3,a₄=7 | n=1,1,5,1,4; w(c)=4=−1 mod 5; a₁(T₂f)=3, a₂(T₂f)=7+2=9, versus 7 if the weight-two term is dropped | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Integral supplier conventions | A node, characteristic 2; t↦t² on G_m; genus zero | Residues a+(−a)=0, also 1+1=0 in F₂; inseparable degree 2 versus one geometric kernel point; H⁰(ω)=H¹(O)=0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 0.3 integral congruence | (P,m)=(11,5),(11,25),(11,11),(17,4),(13,1) | m divides n gives true,false,false,true,true; a₁(δ)=1,a₂=3,a₄=7 for these levels; modulus 0 is excluded | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 0.4 duality/index | Genus-zero T; P=11 and17 | ℤ/1 has one element and zero module rank; quotient orders 5 and4; 10 and16 are not the claimed indices | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 1.2 Hecke action | P=11,l=2 and3; P=13 | (1+2)c=3c and (1+3)c=4c; U_P c=c and wc=4c; 5c=0; zero-Jacobian values all0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 1.3 component group | P=11 weights2,3; P=17 weights1,3; genus zero | Weighted determinant 2·3(1/2+1/3)=5, versus unweighted2; 1·3(1+1/3)=4; n=1 gives trivial group | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 1.4 order/integral model | P=11,17,13; char2 model at17 | Exact cusp orders 5,4,1; rank-four cyclic model with μ₂ subgroup has geometric special order2, versus4 for constant ℤ/4 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 1.6 intersection | Odd n=5; even n=4 | Common constant/cyclotomic subgroup has rank1 at11; μ₂ intersection has rank2 at17; sum at17 has rank4·4/2=8, not16 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 3.1 residual constituents | P=11,ℓ=5, Frobenius2; ℓ=11; P=17,ℓ=2 | Expected polynomial (X−1)(X−2)=X²−3X+2; 11∤5 excludes level-prime Eisenstein support; mod2 both characters1, but constant/μ₂ special point counts2/1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 3.2 étale multiplicity | Ordinary genus-one model atℓ=5; zero factor | Tate rank2, étale rank1; J[5] generic rank25 and ordinary étale rank5, not25; zero factor rank0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 3.4 good-prime existence and freeness | Residue class2 mod55; odd-dyadic class3 mod68 | gcd(2,55)=1; l=2 is good for(11,5); gcd(3,68)=1, 3 is nonsquare mod17 and3 mod4; CRT classes are nonempty | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 3.5 odd kernel | P=11,ℓ=5; P=19,ℓ=3; dyadic control | Constant⊕cyclotomic ranks25 and9, dimensions2; at17 direct sum would rank4 but loses the nonidentity conjugation matrix on D | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 4.2 quadratic modular unit | P=17,41,73; involution applied twice | Exact Bernoulli sums8,32,88 give r=2,8,22; at41 4 mod8 has order2; f↦−1/f twice returns f and product is−1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 4.4 plus separation | D residual matrix σ=[[1,1],[0,1]] in F₂; w=−1 | σ−1 has rank1; −1=+1 mod2, so a +1 eigenspace test alone has dimension2 and cannot establish geometric separation | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 4.5 saturation/local ring | M=μ₂; wrong overgroup D×ℤ/2 | Amalgam rank2·2=4, étale order2; wrong overgroup rank8, étale order4 despite quotient order2 and exponent2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 4.6 homology group ring | Basis e₁,e₂ with σ swapping them, over ℤ₂ and F₂ | Invariants rank1 generated (1,1); coinvariants rank1; canonical map sends1→2, reduced mod2 it is0; σ−1 mod2 rank1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 4.7 normalized congruence | P=11, generator2 of F₁₁×; P=17, generator3 | φ(2)=1 mod5 gives (1/2)φ(2)=3; at17 log₃2=14, square root3⁷=11 gives φ(11)=3 mod4, whereas unhalved log gives2 mod4 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 4.8 principality | Local arithmetic model T=ℤ₅, I=5ℤ₅, e=1/5; genus zero | 5a↦a is rank-one isomorphism and T/I=ℤ/5; unnormalized invariant quotient adds factor2; n=1 has no Eisenstein completion | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 5.1 quotient torsion support | Zero quotient; level11; multiplication-by5 on cyclic rational torsion | Zero quotient order1 has no prime divisors; order5 gives support{5}; [5] on ℤ/5 has image0, so rational lifting of all quotient torsion fails | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 5.2 Ogg torsion | P=13,11,17 | Cyclic conclusion has orders1,5,4; connected-component torsion is0; discarding the 2-primary part would give1 instead of4 at17 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 5.3 Shimura maximality | μ₅ versus constant ℤ/5 over ℚ; zero J | μ₅ dual is constant ℤ/5; constant ℤ/5 dual is nonconstant μ₅; zero J admits only rank1 subgroup | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 5.4 cusp image in quotient | P=11,17,13 | Image of specified generator retains orders5,4,1; in a fake quotient J/IJ the level11 image would have order1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 6.1 cohomology bound | Rank-zero kernel; model d=1 with δ=m,α=m | Zero case h¹−h⁰=0 and δ−α=0; model m=1,2 gives differences0,0 rather than linear growth; for constant ℤ/ℓ, h¹−h⁰=−1=δ−α | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 6.2 localized finiteness | Directed systems all ℤ/5 with identity or zero transition; module ℤ⊕ℤ/5 | Limits have orders5 or1, both ≤5; free summand completion has infinite ℤ₅, whereas torsion summand completes to order5 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 6.3 quotient rank | Model T=ℤ×ℤ, M_free=0⊕ℚ, retained first factor | Retained rational rank0; opposite projection has rank1 and fails the support hypothesis; P=13 gives rank0 and group order1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 6.4 rational points | P=11,17,37,13 | Source's cyclic orders are5,4,3,1 respectively, agreeing with n; the genus-zero quotient has one point, not an empty point set | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 6.5 odd Sha | ℤ/9 with multiplication2 and3; zero module | ×2: kernel order1 but (×2)²=×4≠0; ×3: kernel order3 and square0; only the zero group permits both injectivity and nilpotence | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 6.6 finite modular points | X₀(11) genus1; X₀(13) genus0 | Cusp-based genus-one identification gives5 rational points at11; at13 target quotient has1 point but source ℙ¹(ℚ) is infinite | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.1 cusp moduli | Over ℚ₃, Tate parameter with v(q)=11, subgroup μ₁₁ or component subgroup | Identity subgroup contracts to1-gon, width1, cusp∞; component subgroup to11-gon, width11, cusp0; both have v(j)=−11 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.2 j valuation | Same Tate curve and two subgroups | Identity quotient q→q¹¹ gives −121=11·(−11); component quotient q→q^(1/11) gives −1=(−11)/11 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.3 tame extension bound | Discriminant valuations0,2,3,4,6,8,9,10 | 12/gcd(δ,12)=1,6,4,3,2,3,4,6; over ℚ₁₁ maximum6<10; base e_K=2 permits absolute12, not≤6 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.3 torsion semistability | Hypothetical P=11; additive component bounds | P=11 exceeds all prime divisors2,3 of the additive component group; residue-P extension gives6<11−1=10 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.4 small reduction | q=2,3; P=11 | Hasse integer bounds5,7 are both<11; split/nonsplit torus orders1/3 and2/4; after quadratic splitting q²−1=3,8 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.5 component escape | Hypothetical P=11, source cusps0 at3 and∞ atq | q_Eis([0]−[∞])=1 in ℤ/5; torsion specialization would force it to0, giving1=0 in ℤ/5 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.6 division field | Upper triangular diag(1,2) over F₅ acting on translation1 | Conjugation sends1→2⁻¹=3, not2; possible extension degrees1 or5; split diagonal model has degree1 over cyclotomic field | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.8 isogeny iteration | P=11, Tate pole order11; native identity and P=13 | Pole orders11,121,1331 are distinct; identity additive order1≠11; P=13 violates existing hLevel | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.9 formal immersion | N=11 at11; formal local parameter t; zero quotient | Smooth-locus cusp map has a nonzero first coefficient; identity power-series map sends t→t and cotangent1→1, zero map sends1→0; dimension-zero quotient has no nonzero cotangent | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.9 Atkin–Lehner transport | N=1,11,15; N=4 negative control | Exact-divisor actions count1,2,4 and squarefree cusp counts1,2,4; for N=4 only two exact divisors but three cusps, so transitivity fails | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.9 potential good reduction | e=1,q=3; e=1,q=2; e=q−1 | 1<2 true; 1<1 false; cyclotomic formal point ζ_q−1 has normalized valuation1 and nonzero orderq at equality | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.1 model and divisor identities | y=−1,y=x; five divisors; two infinity branches | Substitution gives −x(x+1)² and x³(x+1); divisor degrees2−2,2−2,3−3,3−3,4−4 all0; relations give19t=0 and residues0,1,3,12,14,15 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.1 reduction and intersection | F₂,F₄,F₃,F₉; all unordered cusp pairs | Curve counts6,6,6,8; Jacobian counts(36+6)/2−2=19 and(36+8)/2−3=19; 21 pairs give19 classes, with only class15 repeated three times | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.1 smoothness and moduli coordinates | Sextic discriminant; dense-open inverse formulas | Disc=−692224=−2¹²·13²≠0 mod3; x′=(xy)(−xy/(y+1))/(−xy²/(y+1))=x and y′=y when the named denominators are nonzero | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.3 finite-flat kernel | Rank19 extension; inertia generator with eigenvalue8 | Rank19·19=361, generic dimension2; 8 has order6 mod19, so fixed line dimension0; μ₁₉(ℚ₁₃) has order gcd(19,12)=1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.5 cohomology | Units ±13^ℤ; degree12 cover; exponent19 | −1=(−1)¹⁹; unit quotient ℤ/19; valuation sends13→1 mod19, kernel0; 12·8=96=1 mod19 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.5 class-number datum | Degree12 cyclotomic field and six named elements | Signed disc13¹¹; bound≈306.4158, stated rational upper≈306.8010<307; small prime-ideal norms exactly13,27,53,79,131,157; all six norms match | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.6 rank-zero descent | Free O-rank1 and0; T₁₉ | O/πO has19 elements, so rank1 cannot have π-surjective multiplication; rank0 finite T₁₉ has π acting invertibly, since its annihilator is πbar | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.7 occurring prime2 | W=(0,0,0,−1,0), Q=(0,0) | Δ=64; Q≠∞, 2Q=∞; additive order2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.7 occurring prime3 | W=(0,0,1,0,0), Q=(0,0) | Δ=−27; Q,2Q=(0,−1),3Q=∞; additive order3 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.7 occurring prime5 | W=(0,−1,−1,0,0), Q=(0,0) | Δ=−11; 2Q=(1,1),3Q=(1,0),4Q=(0,1),5Q=∞; additive order5 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.7 occurring prime7 | W=(−1,−4,−4,0,0), Q=(0,0) | Δ=−1664; multiples(4,8),(2,2),(2,4),(4,0),(0,4),∞; additive order7 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.8 all-prime classification | Four actual points above; identity; alleged order13 | Output values2,3,5,7 each satisfy the disjunction; identity has order1 and fails prime hypothesis; 13 satisfies none of the four equalities | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.9 invariant vectors | Galois character line with scalar2 in F₁₁; trivial line; geometric zero vector | Fixed equation2x=x gives x=0; invariant dimension0 although a stable line exists; trivial line has dimension1; zero vector fixed and equals0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Integral coefficient formula | a₁=1,a₂=3,a₄=7; characteristic 2 | a₂(T₂f)=7+2=9, reducing to 1; omitted term gives 7 over ℤ; nodal residues 1+1=0 in F₂ | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Connected Néron kernel | Tate q with v(q)=5, multiplication by 2 | Generic kernel rank 4; special torus kernel rank 2; defect length 1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Component map for Tate isogeny | q→q², v(q)=5 | ℤ/5→ℤ/10 sends r→2r; image cardinality 5, cokernel cardinality 2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Raw versus normalized Hecke | weight 2, l=2, a₂=3 | Raw factor 2^(1−2/2)=1; eigenvalue 3 versus normalized 3/√2 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| Rational splitting versus integral splitting | T=[[2,1],[0,0]], e=1−T/2 on ℚ² | e(0,1)=(−1/2,1), so e is rational but does not preserve ℤ²; e²=e | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 7.9 modular-unit spanning | N=15; first three coordinates of three divisor vectors | Determinant −1536≠0; column sums 0 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.1 universal elliptic model | x=1, y²+3y−2=0 on the dense open | a₁=3/2−y/4, a₂=a₃=1−3y/2; Δ=(−41129070+73241675y)/2048≠0; inverse map gives (1,y) | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.1 exact order of model point | Same quadratic-field model, Q=(0,0) | Multiples 1 through 12 are affine; 12Q=(0,−1+3y/2)=−Q; 13Q=∞ | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.5 prime-degree enumeration | p=2,3,5,7,11,17 modulo 13 | Orders 12,3,4,12,12,6; below norm 307 only p=3 contributes nonsplit norm 27; 19²=361>306 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.5 norm determinants | Six elements in the stated integral basis | Determinants 13,27,53,79,131,157 exactly equal claimed absolute norms | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.5 class number and native statement | Degree 12, six complex places | Signed discriminant (+1)13¹¹; every small prime ideal principal, hence class group cardinality 1=1 | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.6 rational order-13 exclusion | All 21 unordered pairs of six rational cusps | Pair classes cover all 19 residues; class 15 occurs three times, all others once; six degree-one rational points remain the six cusps | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |
| 8.9 native fixedness boundary | Geometric zero; rational order-7 example; stable nontrivial line over F₁₁ | Zero fixed and equal to 0; order-7 point fixed but fails 7<P; scalar 2 fixes only x=0 although the line is stable | Retained from [R3] | Unchanged statement; calculation carried forward from [R3]. |

## Not verifiable

- FaltingsChai1990, III §§7–8, pp.76–78 remains the unchanged uncertified paywalled locator recorded in [R3]. No new claim here depends on reopening it, and no duplicate reference request was made.
- The separate 1986 corrected printing of DeligneRapoport1973 remains uncollated as in [R3].
- Source readings, exhaustive ownership checks and padding probes for unchanged passages are carried forward from [R3], rather than repeated. All six signatures, the gate and elaboration were checked afresh.
- The six Lean headlines remain admitted. Successful elaboration and numerical examples do not certify their proofs.

The legal text needed for the changed ownership comparison was readable. No source manifest or pull-request file was edited.

## Source issues

No additional issue was found in the reopened Elkik text. The following four issues are carried forward from [R3], not claimed as newly discovered or independently reverified this round.

- **Gap** in Mazur1977 at II Corollary 16.3, printed p.125: the source says the multiplicity-one conclusion without giving its proof; it should supply ordinarity and Weil duality between multiplicative and étale parts; affects the proof; corrected in print at MazurWiles1984Errata §8.I.1, p.187.
- **Gap** in Mazur1977 at II §12, printed p.105, line 18: the source says the displayed divisor-class manipulation proves A+B=0; it should prove that the modular-unit product with its Fricke transform is a square; affects the proof; corrected in print at MazurWiles1984Errata §8.I.2, pp.187–188.
- **Error** in Mazur1977 at II §11, printed p.100, seventh line from bottom: the source says a naive analytic formula gives the Hecke action on X₁(N); it should use the level-point correspondence with its diamond action; affects the proof; corrected in print at MazurWiles1984Errata §8.I.3, p.188.
- **Misprint** in Mazur1977 at III §5, Step 3, printed p.159: the source says the identity-direction level subgroup gives cusp 0 and the component direction gives infinity; it should exchange those labels for the forgetful map (E,H)↦E; affects the proof.

[R3]: packages/EisensteinIdealAndRationalTorsion/reports/PRREVIEW-EisensteinIdealAndRationalTorsion~3.md
