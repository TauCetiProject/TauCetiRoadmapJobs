# Review of EisensteinIdealAndRationalTorsion (pull request #1264 at b417d0f)

**Verdict:** needs changes

## R01 (P2) — The later roadmap still independently owns Manin–Drinfeld

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:13`: “ownership of its proof lies here, with that section as a downstream application”; also :1308 and the target at :1002.

**Claim:** This head acknowledges that the statements coincide, but the single direction of supply is still not implemented in the available later roadmap. Its §6.0c remains a proof target with independent prerequisites, not an application importing this theorem. This is previous R01 carried forward.

**Witness:** `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:649` still requests a proof of cuspidal-divisor torsion at every congruence level. Line 651 imports splitting and period comparisons directly; line 135 also calls §6.0c its own target.

**Repair:** Keep the unrestricted geometric theorem in this earlier roadmap. In the later roadmap's own change, replace the independent §6.0c target and its contract at :135 with an import of EisensteinIdealAndRationalTorsion §7.9; redirect its uses at :840 and :870 accordingly. Do not add that later roadmap as a supplier here or edit its folder in this pull request. Until the coordinated change is present, the ownership claim here must not present the transfer as completed.

**Repair test:** The two current targets cover the same N=1 and N=4 zero classes (order 1), N=11 cusp difference (order 5), and general congruence Cartan quotients. After the repair these have one proof owner and one downstream import, retaining nonsquarefree levels. The separate squarefree transitivity corollary still excludes N=4, whose three cusps exceed its two exact-divisor involutions.

## Previous findings

- R01 — partly repaired: README:13 acknowledges the identical statement, but still calls §6.0c a downstream application; that section continues to prove the theorem independently. Carried forward as this report's R01.
- R02 — repaired: README:49,467,479,1033,1050 now cite §§16.1–16.7. All five ranges terminate at the supplier's existing final section.
- R03 — repaired: README:132,134 use the native eigenspace with r=1, prose decomposition/Herbrand/exceptional-component contracts, and `inverseCharacterClassGroup_all_levels` specialized to r=1.
- R04 — repaired: README:180 names H_P; :444,448–449 name B_a and A_a, including the kernel and descent property. Lines 195 and 460–461 add discriminating zero-ring and ideal-boundary Checks.

No supplied repair report marks these findings “not actionable in this package”; no declared supplier gap is being reopened.

## Verified sound

🤖 Independent AI review. This is an **incremental re-review of 53 changed lines since 1131560**, not a new full review. I read every diff hunk, its mathematical context, the affected supplier contracts, the downstream ownership witness, and all six unchanged Lean signatures. The numerical and algebraic rows below distinguish newly recomputed cases from evidence explicitly inherited from [R2].

### Gate, scope and elaboration

The requested head is b417d0fcfc6666f13a9fd22d6a38a006a9d6d265. Both the incremental diff and the PR diff against origin/main contain no changes outside this roadmap. The tracked worktree is unchanged.

The supplied worker gate passes all checks including the targeted build. The independently rerun scanner gate returns:

```text
gate EisensteinIdealAndRationalTorsion: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The separate requested dependency check returns exactly:

```text
depcheck: 205 roadmaps, 1487 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The independently executed `lake build TauCetiRoadmap.EisensteinIdealAndRationalTorsion.Suggested` and direct `lake env lean` elaboration both exit 0, with exactly six declaration-uses-sorry warnings. No source manifest or pull-request file was edited.

A scratch copy appended `#check @name` for **all six declarations**, then elaborated once. Each matches its README statement and the worker's expanded types: primality, all five excluded levels, ellipticity, exact order, 7<P, and fixedness for every rational Galois automorphism are retained where required. No signature changed or lost a binder. A second copy tested `simp`, `rfl` and `infer_instance` under `solve` for each theorem: **18 closure attempts, zero successes**. Trace-only linter messages belong to that diagnostic copy; the original file has only sorry warnings. No new padding or stand-in was introduced.

### Headline coverage

The six statable headlines remain `isogeny_iteration` (§7.8), `cyclotomic_thirteen_class_number` (§8.5), `order_thirteen_exclusion` (§8.6), `occurring_small_primes` (§8.7), `all_prime_torsion` (§8.8), and `elliptic_fixed_torsion_zero` (§8.9). None was changed.

The module docstring still names the other deep endpoints and their missing carriers: integral Hecke duality/index; exact cuspidal order and Shimura intersection; residual constituents and odd/dyadic multiplicity one; integral homology and winding principality; Ogg and quotient torsion; Eisenstein rank zero, rational points and odd Sha; positive-genus modular-curve finiteness; formal immersion and general geometric Manin–Drinfeld; and the level-thirteen model, norm-19 descent, Jacobian rank zero and cusp-only points. The edits add no statable headline that is absent from Lean. The unchanged coverage assessment and broader object searches are inherited from [R2].

### Sources and the seeded sample

The sample contains **15 targets**. Seven have directly edited passages: §§1.1, 2.2, 2.3, 3.3, 4.1, 4.3 and 7.9. I also checked the consequences of the changed cyclotomic contract in §7.7 and of the restored diamond-action sentence in §8.4. The other six sample targets (§§1.3, 1.6, 3.2, 7.1, 7.2 and 7.4) have unchanged mathematical statements; their numerical rows are carried forward from [R2]. The edits do not create an unverified locator.

Mazur1977 and MazurTate1973 were fetched through the sources service from Numdam and GDZ. I read the service's existing legal GDZ extraction of MazurWiles1984Errata for the dyadic correction. The following are the source passages reopened for the changed claims and their immediate mathematical dependencies; the unaffected bibliographic verification is inherited, not claimed as newly repeated.

| Changed claim or dependent target | Exact source locator and text witness | Assessment |
| --- | --- | --- |
| Index, ideals and maximal ideals, §§0.1–0.2,2.2 | Mazur1977 II Proposition 9.7 and following definition, pp.95–96; Mazur1977 line 2656, line 2673, line 2687 | Eisenstein generators, quotient ℤ/n and residual primes dividing n agree. H_P's genus-zero construction is verified directly below. |
| Cuspidal generator, §1.1 | Mazur1977 II Proposition 11.1, pp.98–99; Mazur1977 line 2786 through line 2809 | Class is [0]−[∞], annihilated by I and of exact order n. Small genus-zero cases remain explicit. |
| Retraction and Shimura use, §§1.5,1.7 | Mazur1977 II (11.3)–(11.4), p.99, and III Theorem 1.3, pp.142–143; Mazur1977 line 2813 through line 2823, line 4402 through line 4428 | Retraction is projection to the cusp factor; maximality is μ-type, not arbitrary multiplicative type. |
| Integral closures, §2.1 | Mazur1977 I §1(c), p.45; Mazur1977 line 710 through line 724 | Closure is finite flat on S′ and quasi-finite on S, retaining the special-fibre information. |
| Actual quotient, §§2.3–2.4 | Mazur1977 II (10.3)–(10.5), pp.97–98; Mazur1977 line 2742 through line 2768 | Completion kernel generates an abelian subvariety; quotient and maps between global/local Eisenstein quotients match. |
| Goodness and local generation, §3.3 | Mazur1977 II §16 definition and Proposition 16.1, pp.124–125; II Theorem 18.10, p.139; Mazur1977 line 3741 through line 3767, line 4287 through line 4302 | Both ordinary and exceptional quartic branches retained; ideal generation by η_l is justified by II18.10. |
| Winding element and normalization, §4.1 | Mazur1977 II Lemma 18.6 and (18.8)–(18.10), pp.136–139; Mazur1977 line 4181 through line 4217, line 4287 through line 4302 | Orientation ∞→0, integral I-action and factor2 agree. |
| Dyadic subgroup use, §4.3 | Mazur1977 II Corollary 16.3, Lemma 17.7 and Proposition 18.3, pp.125,133,135–136; Mazur1977 line 3764, line 4070, line 4175; MazurWiles1984Errata §8.I.1–2, pp.187–188, line 398 through line 430 | D is the nontrivial dyadic representation, supplies saturation, and forces nonscalar conjugation. The repaired square argument remains in the README. |
| Cyclotomic inverse character and §7.7 | Mazur1977 I Proposition 2.8 and Corollaries 2.9–2.10, pp.53–54; Mazur1977 line 1010 through line 1056 | Covariant ideal action corresponds to conjugation, projector character has inverse exponent, and p=3 needs the separate exponent-one clause. |
| §7.9 | Unchanged Elkik1990 theorem p.59 and §I pp.60–62; Mazur1978 §3 Proposition 3.1, pp.142–143, and §4 Corollaries 4.3–4.4, pp.144–146, as verified in [R2] | This round rechecks ownership and the five supplier-range replacements; no alteration of these source statements or their hypotheses. |
| Diamond action and local surjectivity, §§8.2,8.4 | MazurTate1973 §§3–4, pp.44–47; MazurTate1973 line 153 through line 214, line 245 through line 276 | Quadratic order, conjugate norm19 factors, dimensions2+2, local character kernel, pro13 argument and finite quotient step agree. |

### Supplier resolution and duplication

The current main snapshot is fa41b3747f56d4e77bd69e7099c1be4f2e4959ba. New-roadmap suppliers were read through `roadmaps show`; ownership was searched with `roadmaps grep` and checked against the supplied sibling checkout. The index returned older text for this roadmap itself, so the reviewed worktree at b417d0f, not that index entry, is authoritative here. The later EllipticCurveModularityPartII witness is the supplied checkout at 0e44114c32fab173823864596976e9d318f25eb7.

These **six affected supplier/consumer families** were opened and resolved afresh. Line references below are to the actual roadmap files, excluding the service's one-line output header.

| Roadmap | File and line; resolved contract |
| --- | --- |
| CyclotomicClassGroupsAndStickelberger | `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:145`, :557, :1230, :1255; §§0.2–0.3,3.2,8.1–8.2 give eigenspaces, decomposition, annihilation, exceptional exponent and the unramified quotient. `Suggested.lean:62`, :137, :333 confirm the three names actually cited. Specialization r=1 has conductor p¹=p. |
| ModularCurvesPartII | `TauCetiRoadmap/ModularCurvesPartII/README.md:4098`, :4119, :4138, :4157, :4174, :4200, :4219: §§16.1–16.7 provide the newform field, quotient, Tate/differential comparisons, trivial character, oldforms and nonconstant composite. No §16.8 exists. |
| HeightsRationalPointsAndObstructions | `TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md:522`, §1.0: genuine abelian-subvariety quotient, kernel and descent, including B=0 and B=A. |
| AbelianSchemesAndArithmeticModuli | `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:2851`, :2871, :2904, §§A6.3–A6.5: abelian images, simplicity and complements over the original field. These supply generic constructions; §2.3 here specializes them to the completion kernel. |
| ModularSymbolsPadicLFunctions | `TauCetiRoadmap/ModularSymbolsPadicLFunctions/README.md:980`, :1085, :1231, §§0.6–0.8: geometric duality, periods and rational splitting. The polynomial projector is rational; no integral splitting is imported. |
| EllipticCurveModularityPartII | `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:135`, :649, :651, :840, :870: duplicate theorem and direct proof inputs remain. This is R01, not an upward supplier edge. |

The corrected dependency lines preserve the earlier generic owners; no generic quotient, projector, class-field construction or finite-flat extension is newly re-planned. The exact H_P and completion-supported quotient specializations remain this roadmap's prime-level constructions. Object searches of the pins did not find an existing Manin–Drinfeld theorem or Eisenstein arithmetic statement that makes the changed targets redundant; polynomial Eisenstein criteria are different objects.

The previous report's wider ownership audit is carried forward for untouched material. No new acceptance declaration or fully qualified name was added. The two unchanged resolver leads, `ContinuousRep.iso_of_charpoly_eq` and `NonabelianH1.equivSheafH`, were already resolved by [R2] as planned supplier declarations; they are not introduced by these edits.

### Pinned declarations reopened

Mathlib is pinned at 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti at a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. These **eight entries** were reopened in addition to the expanded acceptance signatures; paths are relative to their respective library repositories.

| Declaration | File and line | Meaning and limit |
| --- | --- | --- |
| `AlgebraicGeometry.AbelianVariety` | `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95` | Fields include `grpObj`, `isProper`, `geometricallyIntegral`; no marked modular Jacobian or quotient map. |
| `LeftCosetModule.deg` | `TauCeti/NumberTheory/HeckeRing/Degree.lean:106` | Coefficient sum of the identity-coset action; a single invertible coset has degree1, not the Fricke character −1. |
| `WeierstrassCurve.IsElliptic` | `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:366` | Field `isUnit : IsUnit W.Δ`; over ℚ this excludes singular models. |
| `WeierstrassCurve.Affine.Point` | `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477` | Infinity or coordinates with a nonsingularity proof; it is not the set of all solutions on a singular cubic. |
| `AddSubgroup.torsionBy` | `Mathlib/Algebra/Module/Torsion/Basic.lean:972` | Subgroup of points killed by n, including zero; not an exact-order predicate. |
| `WeierstrassCurve.pointGaloisAction` | `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/Galois.lean:47` | Coordinate action of actual field automorphisms. |
| `WeierstrassCurve.torsionGaloisAction` | Same repository-relative file, :64 and :85 | Restricts that action to killed-by-N torsion, with the coercion compatibility theorem. |
| `NumberField.classNumber`, `classNumber_eq_one_iff` | `Mathlib/NumberTheory/NumberField/ClassNumber.lean:64`, :74 | Native ideal-class cardinality and PID equivalence; neither computes conductor13 automatically. |

### Adversarial calculations for changed passages

Finite values below were recomputed with exact integer/rational arithmetic. Structural examples compute kernels, images and quotient maps directly. A successful instance tests a necessary property; it does not prove the general geometric theorem.

| Statement | Instances tried | Computed values on both sides / competing model | Result and change |
| --- | --- | --- | --- |
| Scope: Manin–Drinfeld ownership, README:13,1308 | N=1,4,11; the two proof-owning sections | Cusp class orders 1,1,5; both §7.9 and the later §6.0c assert the same general theorem, so proof owners=2; intended supply has owners=1 | Mathematics unchanged; ownership still fails, R01. |
| Supplier ranges, README:49,467,479,1033,1050 | Weight-two trivial-character newforms at levels 11 and 13 | At 11, dim A_f=1 and cotangent rank=1; at 13, dim J₀=0 and no nonzero such quotient. Existing sections numbered 16.1 through 16.7: 7; section 16.8: absent | All five ranges repaired; retain nonzero-quotient hypothesis. |
| Cyclotomic eigenspaces, README:132 | p=5,r=1; inverse-character abstract module ℤ/25, Teichmüller lift 7 | 7⁴=1, 7³=18, 7⁻¹=18 mod25; projector e₃ acts by 1 and e₁ by 0. Index −1=3 mod4, not 1 | Native supplier definition and covariant convention agree. |
| Herbrand and exceptional exponent, README:132 | p=5, j=3; p=3, j=1 | B₂=1/6 reduces to 1 in F₅, so unit annihilation gives Y³=0; at 3, 6=0 and that unit argument is unavailable, but the separate Y¹=0 theorem applies | Correct r=1 specialization; no lost small prime. |
| Inverse-character quotient, README:134; dependent §7.7 | ω and ω⁻¹ on ℤ/25; zero arithmetic inverse component; two lifts differing in an abelian kernel | 7−18=14 is a unit mod25: ω-quotient has order1, ω⁻¹-quotient order25. Actual inverse component=0 gives quotient order1 and extension degree1. Inner conjugation by the abelian kernel is identity | Supplier §§8.1–8.2 provide both quotient and vanishing. |
| §0.1 index and its use, README:166 | P=2,3,5,7,11,13,17,19,41; junk P=1 | n=1,1,1,1,5,1,4,3,10; n>1 precisely for the tested positive-genus levels. At P=1 the expression is 0 and primality fails | Restored subject is n; denominator gcd is nonzero at primes. |
| §0.2 full order and new zero-ring Check, README:180,191,195 | T=0; T=ℤ at level11; ε(w)=−1 | T×ℤ≅ℤ when T=0; H_P=ℤ, ε=id, ker ε=0, H_P/ker ε=ℤ. At11, I∩ℤ=5ℤ while full scalar kernel=0; ε(1+w)=0 versus degree value2 | Names restored; zero cuspidal ring cannot replace H_P. |
| §1.1 cuspidal generator, README:255 | P=11 and13; cusp sign reversed | At11 c=1 in ℤ/5 has order5 and −c=4≠1; at13 c=0 has order1. Positive-genus cusp-image contradiction compares 1 with 0 mod5 | The subject c and downstream use agree with source. |
| §1.5 Shimura subgroup, README:322 | μ₅ over ℚ and F₅; zero Jacobian | μ₅ has rank5 but only1 rational point over ℚ; in F₅ it has1 geometric point despite rank5. Its Cartier dual is constant ℤ/5; the zero Jacobian has only rank1 subgroup | μ-type maximality retains constant-dual meaning. |
| §1.7 retraction, README:360 | M=ℤ⊕ℤ/5, C second summand; M=0 | r_C(2,3)=3, (2,3)−r_C(2,3)=(2,0); split inverse returns (2,3). At M=0 both summands=0 | Restored subject identifies the actual projection. |
| §2.1 integral closures, README:399 | Genus-one J[5]; a=T; Tate curve with component order5 and 2-torsion | J[5] generic rank25 versus cuspidal rank5; J[T] rank1. Tate 2-torsion has generic rank4 but special torus kernel rank2 | New wording correctly restricts finite flatness to ℤ[1/P]. |
| §2.2 maximal ideals, README:426 | P=11,41,13 | n=5,10,1 gives residual prime sets {5},{2,5},∅ and residue cardinalities5, (2,5), none. In every case P∤n | Restored ideals m_ℓ index the existing completed factors. |
| §2.3 named connected kernel, README:444,448–449 | T=ℤ, a=(5); map id:J→J on a nonzero J | γ_a=⋂5ʳℤ=0, B_a=0, A_a=J; id kills B_a and descends uniquely. The wrong J/5J=0 would require id=0 | B_a is the kernel; the equivalence has source J and abelian target B/ℚ. |
| §2.3 new zero-ideal Check, README:460 | a=0; arbitrary homomorphism f:J→B | lim T/0ʳ=T, γ=0, B_a=0, q_a=id and A_a=J; f=f∘id, every f kills0 | Both sides of descent equivalence true; includes J=0. |
| §2.3 new unit-ideal Check, README:461 | a=T; zero map and identity on nonzero J | lim T/Tʳ=0, γ=T, B_a=J, A_a=0; zero map killsJ and descends, id does neither | Both directions discriminate the retained support. |
| §2.4 support with corrected supplier range, README:479 | T=ℤ×ℤ, a=5ℤ×ℤ; J=A₁×A₂ | Completion ℤ₅×0, kernel 0×ℤ, B_a=A₂ and A_a=A₁. Opposite-factor choice retains A₂ instead | Corrected range supplies actual quotient factors. |
| §3.3 good auxiliary primes, README:536 | (P,ℓ,l)=(11,5,2),(11,5,31),(17,2,2) | Fifth powers mod11={1,10}; half-differences mod5 are3 and0. Fourth powers mod17={1,4,13,16}; 2 is absent although 6²=2 | Good/bad/good; source II18.10 gives the asserted generator criterion. |
| §4.1 winding normalization, README:599 | e=1/5 in a rank-one period model; H=ℤ₂[σ] | 5e=1, e∉ℤ, reversed path gives −1/5. Invariants generator1+σ maps to2 in coinvariants, and to0 after reduction mod2 | Integral normalized winding map preserved; no inversion of2. |
| §4.3 dyadic action, README:651 | P=17,41; σ=[[1,1],[0,1]] over F₂ | n=4,10; 2-primary C+Σ ranks8,2 respectively. D has rank4 and2 special geometric points; σ−1 has rank1 versus0 for the scalar identity | Restored D subject and nonscalar action agree; both congruence branches retained. |
| §7.9 geometric theorem and quotient transport, README:13,1002,1033,1050,1308 | N=1,4,11,15; degree2 modular pullback/norm | Cusp counts1,3,2,4 give degree-zero dimensions0,2,1,3; exact-divisor counts1,2,2,4 show N=4 is not transitive. If 5f*D=0 then 10D=0 by norm | General torsion survives; squarefree reduction scope unchanged. R01 is ownership only. |
| §8.2 diamond action, README:1143 | γ²=γ−1; γ=8,12 mod19; π=3+2γ, πbar=5−2γ | γ³=−1 and γ⁶=1; ππbar=19. At8 π=0; at12 πbar=0 and π=8≠0. The two residual factors have dimensions2+2=4 | Cusp annihilation fixes factor labels; rank-one free O has quotient of order19, so cannot be π-surjective. |
| §8.4 local isogeny, dependent on §8.2 | ℚ₁₃ formal subgroup and local kernel characters | 19≡6 mod13 is a unit; π inverse is πbar/19 on the pro13 subgroup. gcd(19,12)=1 gives μ₁₉(ℚ₁₃)={1}; nontrivial order6 character fixes0; finite quotient kernel order1 implies full image | Local surjectivity route agrees with source pp.46–47. |

### Carried-forward adversarial calculations

Each row below explicitly cites [R2] and retains its computed values for an unchanged mathematical statement. Rows concerning the changed passages were replaced above rather than presented as fresh calculations. The combined tables cover all 15 seeded targets, all six Lean headlines, and the ownership finding.

| Statement | Instances tried | Computed values on both sides / competing model | Evidence and change |
| --- | --- | --- | --- |
| Conventions: index, cusp sign, weights | P=2,3,11,13,17; c=1 in ℤ/5; coefficients a₁=1,a₂=3,a₄=7 | n=1,1,5,1,4; w(c)=4=−1 mod 5; a₁(T₂f)=3, a₂(T₂f)=7+2=9, versus 7 if the weight-two term is dropped | Carried forward from [R2]; mathematical statement unchanged. |
| Integral supplier conventions | A node, characteristic 2; t↦t² on G_m; genus zero | Residues a+(−a)=0, also 1+1=0 in F₂; inseparable degree 2 versus one geometric kernel point; H⁰(ω)=H¹(O)=0 | Carried forward from [R2]; mathematical statement unchanged. |
| 0.3 integral congruence | (P,m)=(11,5),(11,25),(11,11),(17,4),(13,1) | m divides n gives true,false,false,true,true; a₁(δ)=1,a₂=3,a₄=7 for these levels; modulus 0 is excluded | Carried forward from [R2]; mathematical statement unchanged. |
| 0.4 duality/index | Genus-zero T; P=11 and17 | ℤ/1 has one element and zero module rank; quotient orders 5 and4; 10 and16 are not the claimed indices | Carried forward from [R2]; mathematical statement unchanged. |
| 1.2 Hecke action | P=11,l=2 and3; P=13 | (1+2)c=3c and (1+3)c=4c; U_P c=c and wc=4c; 5c=0; zero-Jacobian values all0 | Carried forward from [R2]; mathematical statement unchanged. |
| 1.3 component group | P=11 weights2,3; P=17 weights1,3; genus zero | Weighted determinant 2·3(1/2+1/3)=5, versus unweighted2; 1·3(1+1/3)=4; n=1 gives trivial group | Carried forward from [R2]; mathematical statement unchanged. |
| 1.4 order/integral model | P=11,17,13; char2 model at17 | Exact cusp orders 5,4,1; rank-four cyclic model with μ₂ subgroup has geometric special order2, versus4 for constant ℤ/4 | Carried forward from [R2]; mathematical statement unchanged. |
| 1.6 intersection | Odd n=5; even n=4 | Common constant/cyclotomic subgroup has rank1 at11; μ₂ intersection has rank2 at17; sum at17 has rank4·4/2=8, not16 | Carried forward from [R2]; mathematical statement unchanged. |
| 3.1 residual constituents | P=11,ℓ=5, Frobenius2; ℓ=11; P=17,ℓ=2 | Expected polynomial (X−1)(X−2)=X²−3X+2; 11∤5 excludes level-prime Eisenstein support; mod2 both characters1, but constant/μ₂ special point counts2/1 | Carried forward from [R2]; mathematical statement unchanged. |
| 3.2 étale multiplicity | Ordinary genus-one model atℓ=5; zero factor | Tate rank2, étale rank1; J[5] generic rank25 and ordinary étale rank5, not25; zero factor rank0 | Carried forward from [R2]; mathematical statement unchanged. |
| 3.4 good-prime existence and freeness | Residue class2 mod55; odd-dyadic class3 mod68 | gcd(2,55)=1; l=2 is good for(11,5); gcd(3,68)=1, 3 is nonsquare mod17 and3 mod4; CRT classes are nonempty | Carried forward from [R2]; mathematical statement unchanged. |
| 3.5 odd kernel | P=11,ℓ=5; P=19,ℓ=3; dyadic control | Constant⊕cyclotomic ranks25 and9, dimensions2; at17 direct sum would rank4 but loses the nonidentity conjugation matrix on D | Carried forward from [R2]; mathematical statement unchanged. |
| 4.2 quadratic modular unit | P=17,41,73; involution applied twice | Exact Bernoulli sums8,32,88 give r=2,8,22; at41 4 mod8 has order2; f↦−1/f twice returns f and product is−1 | Carried forward from [R2]; mathematical statement unchanged. |
| 4.4 plus separation | D residual matrix σ=[[1,1],[0,1]] in F₂; w=−1 | σ−1 has rank1; −1=+1 mod2, so a +1 eigenspace test alone has dimension2 and cannot establish geometric separation | Carried forward from [R2]; mathematical statement unchanged. |
| 4.5 saturation/local ring | M=μ₂; wrong overgroup D×ℤ/2 | Amalgam rank2·2=4, étale order2; wrong overgroup rank8, étale order4 despite quotient order2 and exponent2 | Carried forward from [R2]; mathematical statement unchanged. |
| 4.6 homology group ring | Basis e₁,e₂ with σ swapping them, over ℤ₂ and F₂ | Invariants rank1 generated (1,1); coinvariants rank1; canonical map sends1→2, reduced mod2 it is0; σ−1 mod2 rank1 | Carried forward from [R2]; mathematical statement unchanged. |
| 4.7 normalized congruence | P=11, generator2 of F₁₁×; P=17, generator3 | φ(2)=1 mod5 gives (1/2)φ(2)=3; at17 log₃2=14, square root3⁷=11 gives φ(11)=3 mod4, whereas unhalved log gives2 mod4 | Carried forward from [R2]; mathematical statement unchanged. |
| 4.8 principality | Local arithmetic model T=ℤ₅, I=5ℤ₅, e=1/5; genus zero | 5a↦a is rank-one isomorphism and T/I=ℤ/5; unnormalized invariant quotient adds factor2; n=1 has no Eisenstein completion | Carried forward from [R2]; mathematical statement unchanged. |
| 5.1 quotient torsion support | Zero quotient; level11; multiplication-by5 on cyclic rational torsion | Zero quotient order1 has no prime divisors; order5 gives support{5}; [5] on ℤ/5 has image0, so rational lifting of all quotient torsion fails | Carried forward from [R2]; mathematical statement unchanged. |
| 5.2 Ogg torsion | P=13,11,17 | Cyclic conclusion has orders1,5,4; connected-component torsion is0; discarding the 2-primary part would give1 instead of4 at17 | Carried forward from [R2]; mathematical statement unchanged. |
| 5.3 Shimura maximality | μ₅ versus constant ℤ/5 over ℚ; zero J | μ₅ dual is constant ℤ/5; constant ℤ/5 dual is nonconstant μ₅; zero J admits only rank1 subgroup | Carried forward from [R2]; mathematical statement unchanged. |
| 5.4 cusp image in quotient | P=11,17,13 | Image of specified generator retains orders5,4,1; in a fake quotient J/IJ the level11 image would have order1 | Carried forward from [R2]; mathematical statement unchanged. |
| 6.1 cohomology bound | Rank-zero kernel; model d=1 with δ=m,α=m | Zero case h¹−h⁰=0 and δ−α=0; model m=1,2 gives differences0,0 rather than linear growth; for constant ℤ/ℓ, h¹−h⁰=−1=δ−α | Carried forward from [R2]; mathematical statement unchanged. |
| 6.2 localized finiteness | Directed systems all ℤ/5 with identity or zero transition; module ℤ⊕ℤ/5 | Limits have orders5 or1, both ≤5; free summand completion has infinite ℤ₅, whereas torsion summand completes to order5 | Carried forward from [R2]; mathematical statement unchanged. |
| 6.3 quotient rank | Model T=ℤ×ℤ, M_free=0⊕ℚ, retained first factor | Retained rational rank0; opposite projection has rank1 and fails the support hypothesis; P=13 gives rank0 and group order1 | Carried forward from [R2]; mathematical statement unchanged. |
| 6.4 rational points | P=11,17,37,13 | Source's cyclic orders are5,4,3,1 respectively, agreeing with n; the genus-zero quotient has one point, not an empty point set | Carried forward from [R2]; mathematical statement unchanged. |
| 6.5 odd Sha | ℤ/9 with multiplication2 and3; zero module | ×2: kernel order1 but (×2)²=×4≠0; ×3: kernel order3 and square0; only the zero group permits both injectivity and nilpotence | Carried forward from [R2]; mathematical statement unchanged. |
| 6.6 finite modular points | X₀(11) genus1; X₀(13) genus0 | Cusp-based genus-one identification gives5 rational points at11; at13 target quotient has1 point but source ℙ¹(ℚ) is infinite | Carried forward from [R2]; mathematical statement unchanged. |
| 7.1 cusp moduli | Over ℚ₃, Tate parameter with v(q)=11, subgroup μ₁₁ or component subgroup | Identity subgroup contracts to1-gon, width1, cusp∞; component subgroup to11-gon, width11, cusp0; both have v(j)=−11 | Carried forward from [R2]; mathematical statement unchanged. |
| 7.2 j valuation | Same Tate curve and two subgroups | Identity quotient q→q¹¹ gives −121=11·(−11); component quotient q→q^(1/11) gives −1=(−11)/11 | Carried forward from [R2]; mathematical statement unchanged. |
| 7.3 tame extension bound | Discriminant valuations0,2,3,4,6,8,9,10 | 12/gcd(δ,12)=1,6,4,3,2,3,4,6; over ℚ₁₁ maximum6<10; base e_K=2 permits absolute12, not≤6 | Carried forward from [R2]; mathematical statement unchanged. |
| 7.3 torsion semistability | Hypothetical P=11; additive component bounds | P=11 exceeds all prime divisors2,3 of the additive component group; residue-P extension gives6<11−1=10 | Carried forward from [R2]; mathematical statement unchanged. |
| 7.4 small reduction | q=2,3; P=11 | Hasse integer bounds5,7 are both<11; split/nonsplit torus orders1/3 and2/4; after quadratic splitting q²−1=3,8 | Carried forward from [R2]; mathematical statement unchanged. |
| 7.5 component escape | Hypothetical P=11, source cusps0 at3 and∞ atq | q_Eis([0]−[∞])=1 in ℤ/5; torsion specialization would force it to0, giving1=0 in ℤ/5 | Carried forward from [R2]; mathematical statement unchanged. |
| 7.6 division field | Upper triangular diag(1,2) over F₅ acting on translation1 | Conjugation sends1→2⁻¹=3, not2; possible extension degrees1 or5; split diagonal model has degree1 over cyclotomic field | Carried forward from [R2]; mathematical statement unchanged. |
| 7.8 isogeny iteration | P=11, Tate pole order11; native identity and P=13 | Pole orders11,121,1331 are distinct; identity additive order1≠11; P=13 violates existing hLevel | Carried forward from [R2]; mathematical statement unchanged. |
| 7.9 formal immersion | N=11 at11; formal local parameter t; zero quotient | Smooth-locus cusp map has a nonzero first coefficient; identity power-series map sends t→t and cotangent1→1, zero map sends1→0; dimension-zero quotient has no nonzero cotangent | Carried forward from [R2]; mathematical statement unchanged. |
| 7.9 Atkin–Lehner transport | N=1,11,15; N=4 negative control | Exact-divisor actions count1,2,4 and squarefree cusp counts1,2,4; for N=4 only two exact divisors but three cusps, so transitivity fails | Carried forward from [R2]; mathematical statement unchanged. |
| 7.9 potential good reduction | e=1,q=3; e=1,q=2; e=q−1 | 1<2 true; 1<1 false; cyclotomic formal point ζ_q−1 has normalized valuation1 and nonzero orderq at equality | Carried forward from [R2]; mathematical statement unchanged. |
| 8.1 model and divisor identities | y=−1,y=x; five divisors; two infinity branches | Substitution gives −x(x+1)² and x³(x+1); divisor degrees2−2,2−2,3−3,3−3,4−4 all0; relations give19t=0 and residues0,1,3,12,14,15 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.1 reduction and intersection | F₂,F₄,F₃,F₉; all unordered cusp pairs | Curve counts6,6,6,8; Jacobian counts(36+6)/2−2=19 and(36+8)/2−3=19; 21 pairs give19 classes, with only class15 repeated three times | Carried forward from [R2]; mathematical statement unchanged. |
| 8.1 smoothness and moduli coordinates | Sextic discriminant; dense-open inverse formulas | Disc=−692224=−2¹²·13²≠0 mod3; x′=(xy)(−xy/(y+1))/(−xy²/(y+1))=x and y′=y when the named denominators are nonzero | Carried forward from [R2]; mathematical statement unchanged. |
| 8.3 finite-flat kernel | Rank19 extension; inertia generator with eigenvalue8 | Rank19·19=361, generic dimension2; 8 has order6 mod19, so fixed line dimension0; μ₁₉(ℚ₁₃) has order gcd(19,12)=1 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.5 cohomology | Units ±13^ℤ; degree12 cover; exponent19 | −1=(−1)¹⁹; unit quotient ℤ/19; valuation sends13→1 mod19, kernel0; 12·8=96=1 mod19 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.5 class-number datum | Degree12 cyclotomic field and six named elements | Signed disc13¹¹; bound≈306.4158, stated rational upper≈306.8010<307; small prime-ideal norms exactly13,27,53,79,131,157; all six norms match | Carried forward from [R2]; mathematical statement unchanged. |
| 8.6 rank-zero descent | Free O-rank1 and0; T₁₉ | O/πO has19 elements, so rank1 cannot have π-surjective multiplication; rank0 finite T₁₉ has π acting invertibly, since its annihilator is πbar | Carried forward from [R2]; mathematical statement unchanged. |
| 8.7 occurring prime2 | W=(0,0,0,−1,0), Q=(0,0) | Δ=64; Q≠∞, 2Q=∞; additive order2 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.7 occurring prime3 | W=(0,0,1,0,0), Q=(0,0) | Δ=−27; Q,2Q=(0,−1),3Q=∞; additive order3 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.7 occurring prime5 | W=(0,−1,−1,0,0), Q=(0,0) | Δ=−11; 2Q=(1,1),3Q=(1,0),4Q=(0,1),5Q=∞; additive order5 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.7 occurring prime7 | W=(−1,−4,−4,0,0), Q=(0,0) | Δ=−1664; multiples(4,8),(2,2),(2,4),(4,0),(0,4),∞; additive order7 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.8 all-prime classification | Four actual points above; identity; alleged order13 | Output values2,3,5,7 each satisfy the disjunction; identity has order1 and fails prime hypothesis; 13 satisfies none of the four equalities | Carried forward from [R2]; mathematical statement unchanged. |
| 8.9 invariant vectors | Galois character line with scalar2 in F₁₁; trivial line; geometric zero vector | Fixed equation2x=x gives x=0; invariant dimension0 although a stable line exists; trivial line has dimension1; zero vector fixed and equals0 | Carried forward from [R2]; mathematical statement unchanged. |
| Integral coefficient formula | a₁=1,a₂=3,a₄=7; characteristic 2 | a₂(T₂f)=7+2=9, reducing to 1; omitted term gives 7 over ℤ; nodal residues 1+1=0 in F₂ | Carried forward from [R2]; mathematical statement unchanged. |
| Connected Néron kernel | Tate q with v(q)=5, multiplication by 2 | Generic kernel rank 4; special torus kernel rank 2; defect length 1 | Carried forward from [R2]; mathematical statement unchanged. |
| Component map for Tate isogeny | q→q², v(q)=5 | ℤ/5→ℤ/10 sends r→2r; image cardinality 5, cokernel cardinality 2 | Carried forward from [R2]; mathematical statement unchanged. |
| Raw versus normalized Hecke | weight 2, l=2, a₂=3 | Raw factor 2^(1−2/2)=1; eigenvalue 3 versus normalized 3/√2 | Carried forward from [R2]; mathematical statement unchanged. |
| Rational splitting versus integral splitting | T=[[2,1],[0,0]], e=1−T/2 on ℚ² | e(0,1)=(−1/2,1), so e is rational but does not preserve ℤ²; e²=e | Carried forward from [R2]; mathematical statement unchanged. |
| 7.9 modular-unit spanning | N=15; first three coordinates of three divisor vectors | Determinant −1536≠0; column sums 0 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.1 universal elliptic model | x=1, y²+3y−2=0 on the dense open | a₁=3/2−y/4, a₂=a₃=1−3y/2; Δ=(−41129070+73241675y)/2048≠0; inverse map gives (1,y) | Carried forward from [R2]; mathematical statement unchanged. |
| 8.1 exact order of model point | Same quadratic-field model, Q=(0,0) | Multiples 1 through 12 are affine; 12Q=(0,−1+3y/2)=−Q; 13Q=∞ | Carried forward from [R2]; mathematical statement unchanged. |
| 8.5 prime-degree enumeration | p=2,3,5,7,11,17 modulo 13 | Orders 12,3,4,12,12,6; below norm 307 only p=3 contributes nonsplit norm 27; 19²=361>306 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.5 norm determinants | Six elements in the stated integral basis | Determinants 13,27,53,79,131,157 exactly equal claimed absolute norms | Carried forward from [R2]; mathematical statement unchanged. |
| 8.5 class number and native statement | Degree 12, six complex places | Signed discriminant (+1)13¹¹; every small prime ideal principal, hence class group cardinality 1=1 | Carried forward from [R2]; mathematical statement unchanged. |
| 8.6 rational order-13 exclusion | All 21 unordered pairs of six rational cusps | Pair classes cover all 19 residues; class 15 occurs three times, all others once; six degree-one rational points remain the six cusps | Carried forward from [R2]; mathematical statement unchanged. |
| 8.9 native fixedness boundary | Geometric zero; rational order-7 example; stable nontrivial line over F₁₁ | Zero fixed and equal to 0; order-7 point fixed but fails 7<P; scalar 2 fixes only x=0 although the line is stable | Carried forward from [R2]; mathematical statement unchanged. |

There are **22 newly evaluated rows and 65 carried-forward rows**, 87 in total. No changed Check contradicts its section's theorem. The zero and unit ideals select opposite quotient boundaries as intended; the dyadic and p=3 exceptions remain explicit.

## Not verifiable

- **FaltingsChai1990**, III §§7–8, pp.76–78, remains the unchanged uncertified, paywalled locator described in [R2]. Its text was not reopened or newly certified; the affected edits do not change that contract. No new reference request is made.
- The separate 1986 corrected printing of DeligneRapoport1973 was not collated in [R2] and is not collated here. The unchanged verification there concerns the legal 1973 text.
- This incremental review carries forward, rather than repeats, source readings and ownership searches for untouched passages. The expanded dependency check is fresh; it does not itself prove mathematical supply.
- The six Lean theorems remain admitted. Elaboration and finite examples do not establish their proofs.

No newly changed source claim was left unread for lack of a legal text. No manifest was edited.

## Source issues

These are the source issues recorded in [R2], retained with their original locators; the dyadic published corrections were reopened here. No additional source error was established in the changed passages.

- **Gap** in Mazur1977 at II Corollary 16.3, printed p.125: the source says the multiplicity-one conclusion without giving its proof; it should supply ordinarity and Weil duality between multiplicative and étale parts; affects the proof; corrected in print at MazurWiles1984Errata §8.I.1, p.187.
- **Gap** in Mazur1977 at II §12, printed p.105, line 18: the source says the displayed divisor-class manipulation proves A+B=0; it should prove that the modular-unit product with its Fricke transform is a square; affects the proof; corrected in print at MazurWiles1984Errata §8.I.2, pp.187–188.
- **Error** in Mazur1977 at II §11, printed p.100, seventh line from bottom: the source says a naive analytic formula gives the Hecke action on X₁(N); it should use the level-point correspondence with its diamond action; affects the proof; corrected in print at MazurWiles1984Errata §8.I.3, p.188.
- **Misprint** in Mazur1977 at III §5, Step 3, printed p.159: the source says the identity-direction level subgroup gives cusp 0 and the component direction gives infinity; it should exchange those labels for the forgetful map (E,H)↦E; affects the proof.

[R2]: packages/EisensteinIdealAndRationalTorsion/reports/PRREVIEW-EisensteinIdealAndRationalTorsion~2.md
