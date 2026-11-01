# Review of EisensteinIdealAndRationalTorsion (pull request #1264 at 5e63f27)

**Verdict:** needs changes

## R01 (P1) — Own the fixed facts needed to finish the level-thirteen descent

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:1036`, `:1081`, `:1162`, `:1208`, `:1232`. In particular: “These fixed data are not additional theorem or construction targets.”

**Claim:** The order-thirteen exclusion, all-prime classification and elliptic invariant-vector theorem depend on an assumed identification with the specified modular curve, cusp divisors, exact rational torsion and geometric intersection, and on `hClass13`. The document explicitly excludes proving these fixed facts. No supplier contract or declared gap supplies them. Thus the finished library still cannot prove these end theorems without its user furnishing the missing arithmetic. Giving worked computations does not make the underlying assertions proof targets.

**Witness:** §8.6 retains both assumptions; §8.1 explicitly disclaims their construction, and §8.5 calls class number one an input. MazurTate1973 line 218 states an unconditional rational-point theorem; lines 296–306 supply its class-number input.

**Repair:** Make the level-thirteen model/moduli identification and the geometric and arithmetic facts needed by the descent owned targets, with their actual source and target, hypotheses, dependencies and Checks. Prove the fixed cyclotomic class-number statement, or its sufficient 19-primary vanishing consequence, using the existing class-group and Minkowski API. Import the generic geometry and class-field theory already owned by the named suppliers. Then discharge these inputs in §§8.6, 8.8 and 8.9 and in the downstream contract. No executable enumeration or certificate is needed: the displayed finite identities can be witnesses in mathematical proofs.

**Repair test:** The existing examples support this change. The five cusp-divisor relations give residues `{0,1,3,12,14,15}` modulo 19; their unordered pair sums occupy all 19 classes, with only 15 occurring three times. The two Jacobian point-count expressions are both 19. The six multiplication determinants are exactly `13,27,53,79,131,157`, and the stated rational Minkowski upper bound is less than 307. These are consistent proof ingredients, not an obstacle requiring permanent hypotheses.

## R02 (P2) — State the native elliptic end theorems in Suggested.lean

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/Suggested.lean:20`. The docstring says: “These conditional results therefore have no signatures here either.” Relevant README conclusions are §§8.6, 8.8 and the elliptic half of §8.9.

**Claim:** Missing constructions used by a proof do not prevent stating its conclusion on existing carriers. Order-thirteen exclusion and the all-prime theorem use exactly the Weierstrass curves and point groups already used by `isogeny_iteration`. The fixed-vector consequence is also statable: the pin already has the geometric torsion group and its Galois action.

**Witness:** Three scratch signatures elaborated with only `sorry` warnings: exclusion of order 13, prime-order membership in `{2,3,5,7}`, and vanishing of fixed geometric prime-torsion points. `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/Galois.lean:64` defines `WeierstrassCurve.torsionGaloisAction`.

**Repair:** After assigning the proof obligations in R01, state the unconditional elliptic conclusions as headline theorems. The first two need only `import Mathlib`. For example, use `(W : WeierstrassCurve ℚ) [W.IsElliptic] (Q : W.toAffine.Point)` with conclusions `addOrderOf Q ≠ 13` and, under `P.Prime` and `addOrderOf Q = P`, `P = 2 ∨ P = 3 ∨ P = 5 ∨ P = 7`. For §8.9 use the actual `AddSubgroup.torsionBy` of points over `AlgebraicClosure ℚ` and `torsionGaloisAction`, importing its individual Tau Ceti module. Keep genuinely unavailable modular-Jacobian conclusions in the docstring, with their missing carriers. Name the residual-constituent criterion and positive-genus `X₀(P)(ℚ)` finiteness explicitly as well; the existing list does not identify these two headlines.

**Repair test:** The three proposed native signatures passed elaboration under default options. Their prime, ellipticity, size and fixedness hypotheses appeared in the elaborated theorem types. At the identity, `addOrderOf 0 = 1`, so the prime-order hypothesis is false; the displayed order-seven example satisfies the classification with value 7. At `P=13`, the existing theorem's `hLevel` is false, whereas the new exclusion would cover this missing case.

## R03 (P2) — Resolve cusp-torsion ownership at the general statement

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:984`: “For squarefree `N≥1` and any geometric cusps”.

**Claim:** This is a route-specific restriction of Manin–Drinfeld to levels where the displayed discriminant-unit matrix works. The cited theorem covers congruence subgroups generally. Moreover, the general geometric cuspidal-divisor theorem is already planned in the later `EllipticCurveModularityPartII` §6.0c. Keeping a separate squarefree theorem here leaves overlapping ownership instead of supplying the reusable result needed by both roadmaps.

**Witness:** Elkik1990 lines 23–30 impose a congruence-subgroup condition, not squarefree level. `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:649` explicitly includes nonsquarefree levels and Cartan quotients. At `N=4`, the genus is `1+6/12−3/2=0`, so every cusp-difference class is zero.

**Repair:** Move ownership of the general geometric cuspidal-divisor torsion theorem to this earlier roadmap, record the move in Scope and ownership, and make the later §6.0c consume it. Use the earlier `ModularSymbolsPadicLFunctions` §§0.6–0.8 for rational splitting, with the supplied period and Jacobian comparisons; do not rebuild that splitting. Retain the squarefree modular-unit calculation as a proof example. Do not add a dependency on the later roadmap. This does not remove the separate squarefree hypothesis needed for the Atkin–Lehner transitivity argument in the reduction corollary.

**Repair test:** The general statement includes `N=1` (zero class), `N=4` (zero class), and `N=11` (nonzero class of order 5). For `N=4`, the orders of `Δ(4z)/Δ(z)` at `0,1/2,∞` are `(-3,0,3)`; the prime-level example at 11 gives `(-10,10)` without incorrectly asserting exact order 10. The proposed supply direction is legal: ModularSymbolsPadicLFunctions is at position 103, this roadmap at 126, and EllipticCurveModularityPartII at 179 in the supplied order.

## R04 (P3) — Remove undeclared Lean names from API bullets and Checks

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:180`, `:189`, `:243`, and analogous blocks throughout. Examples are `eisensteinFull_mem`, `full_scalar_kernel`, and `cuspidalClass`.

**Claim:** API bullets and Checks advertise local Lean declarations which the acceptance file does not declare. In particular, Checks are repeatedly given code names. The required form is prose API facts and discriminating prose Checks; it does not require moving the whole catalogue into Suggested.lean.

**Witness:** `Suggested.lean` declares exactly two theorems, at lines 33 and 42. Searching it for `eisensteinFull_mem`, `full_scalar_kernel` and `cuspidalClass` gives no occurrences, although the README presents them as local API or Check names.

**Repair:** Express these API facts and Checks in prose, remove their invented declaration labels, and use numbered README sections for internal dependencies. Keep local backticked declaration names only for definitions and headline theorems actually retained in Suggested.lean. Also make each Check a separate bullet where the README currently combines several tests in one paragraph. Do not add padding declarations to satisfy the catalogue.

**Repair test:** The scalar-kernel Check still computes `I_full ∩ ℤ = 0`, while the level-11 cuspidal scalar kernel is `5ℤ`; the sign Check still gives `ε(w) = −1` versus degree `+1`. Removing the labels loses none of these distinctions. The supplied gate reports `readme-ids-missing=0`; this manual form defect was not detected by that scanner.

## Verified sound

The review covered all **56 numbered subsections**, their API claims, formulas, conventions and Checks, the **15 seeded source targets**, both Lean declarations, the cited supplier interfaces, and ownership searches by object. The report distinguishes source-supported assertions from finite calculations and model tests: an example does not constitute a proof of a general theorem. No false numerical Check was found in the displayed arithmetic. R01–R03 concern completion, acceptance coverage and ownership/generality; they do not assert that the conditional descent calculations are false.

### Gate, scope, dependencies and Lean

The supplied gate at this head passes every check, including the targeted module build. A separate `lake env lean` elaboration of the unmodified Suggested.lean succeeded with exactly its two `sorry` warnings. The worktree head matches the requested commit, and the diff outside this roadmap folder is empty. No worktree file was edited. No sorry-defined data, option override, disallowed import, admitted example, copied source passage or executable computational target was found.

The requested dependency command produced:

```text
depcheck: 205 roadmaps, 1471 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. I read the Needs lines and the supplier contracts. The level-specific completion, dyadic, quotient and descent dependencies have earlier owners. The fixed facts in R01 are not declared supplier gaps. R03 records an ownership move that is needed; it is not an existing upward citation detected by the gate.

Both actual declarations were copied into a scratch file and inspected with `#check @name`. `isogeny_iteration` retains `P.Prime`, all five excluded levels, `W.IsElliptic`, and the point `Q`; `occurring_small_primes` retains its disjunction and concludes an actual elliptic model and point. No section hypothesis disappeared. The worker's signature extraction counted a prose occurrence of “theorem,” as a third declaration; the source has only two declarations, and both were checked directly.

For each of these two admitted theorems, separate scratch copies tried `simp`, `rfl` and `infer_instance`: **all six one-tactic attempts failed**. Object searches at the pins found no single existing prime-torsion classification theorem that closes either declaration. The existence theorem is the occurrence half of the end classification, rather than an API lemma for a new definition. There is no padding finding for these two declarations. The three additional native headline probes described in R02 elaborate; they are statement tests, not claimed proofs.

### Headline coverage

| README headline family | Acceptance-file assessment |
| --- | --- |
| §0.4 integral Hecke duality and exact Eisenstein index | Named as unavailable; needs the integral modular Hecke/differential construction. |
| §§1.4–1.6 exact cuspidal order, Shimura subgroup and integral intersection | Named as unavailable; needs modular Jacobians and marked integral subgroups. |
| §§3.1, 3.4–3.5 residual constituents and odd multiplicity one | Needs the Hecke and torsion carriers. Multiplicity one is named as unavailable; the residual-constituent criterion should also be named explicitly, R02. |
| §§4.5–4.8 dyadic multiplicity, homology freeness and winding principality | Named as unavailable; needs the modular homology/Hecke objects and their comparisons. |
| §§5.1–5.4 quotient torsion, Ogg and Shimura maximality | Named as unavailable; needs the actual modular abelian varieties and maps. |
| §§6.2–6.6 localized finiteness, Eisenstein rank zero, rational points, odd Sha and curve-point finiteness | No native named Eisenstein quotient or modular curve at the pins. The docstring covers quotient points and Sha; explicitly name the positive-genus curve-point finiteness headline too, R02. |
| §7.8 exclusion outside the five genus-zero primes | Present as `isogeny_iteration`, with the correct prime and ellipticity binders. |
| §7.9 formal immersion and its cusp/reduction inputs | Named as unavailable; requires integral modular models, their smooth loci and quotient maps. General cusp-torsion ownership needs R03. |
| §§8.2–8.6 norm-19 descent and `J₁(13)` rank zero | The geometric statements need missing modular constructions. The elliptic order-13 conclusion itself is statable and missing: R01–R02. |
| §8.7 occurrence of 2, 3, 5, 7 | Present as `occurring_small_primes`; all four explicit equations checked below. |
| §8.8 all-prime classification | Statable on the already-used native carriers; missing, R02. |
| §8.9 fixed elliptic torsion vectors and modular Eisenstein constituents | The elliptic conclusion is statable using the pinned torsion Galois action; missing, R02. The modular half needs the modular Jacobian. |

### Seeded source checks

All 15 requested targets were checked against legal source text at the stated locator, including the relevant hypotheses and the distinction between statements and steps inside proofs. There are no additional README locators labelled unverified. Eight of the nine referenced works were readable through the sources service. The remaining work is recorded under Not verifiable.

| Target | Locator actually read and source-text witness | Assessment |
| --- | --- | --- |
| 1.2 Hecke action | Mazur1977 II Proposition 11.1, pp. 98–99; lines 2788–2801 | Good-prime eigenvalue, Fricke sign and upper bound agree. The bad operator is separately normalized. |
| 1.3 component group | Mazur1977 Appendix Theorem A.1, p. 173, lines 5553–5581; ModularCurvesPartII §17.5 | Source appendix treats primes at least 5; the README separately handles 2 and 3 by the zero Jacobian. The weighted graph, rational generator and Hecke action are the named supplier's result. |
| 1.5 Shimura subgroup | Mazur1977 II Proposition 11.6 and proof, pp. 99–101; lines 2824–2850 | Cartier dual of the étale deck quotient, not an unmarked constant group. Integral extension is included in the source argument. |
| 2.3 Eisenstein quotient | Mazur1977 II definitions 10.3–10.5, pp. 97–98; lines 2742–2768 | Uses the kernel of completion and connected endomorphism images, with the correct quotient direction. |
| 4.7 normalized winding | Mazur1977 II §18, pp. 137–139; lines 4210–4217, 4224 onward, 4263–4302 | Factor two belongs to the invariant-to-coinvariant map. Square-root interpretation at the dyadic auxiliary prime is retained. |
| 5.1 quotient torsion | Mazur1977 III Lemma 1.1, pp. 141–142; lines 4366–4398 | Applies to quotient abelian varieties; the stronger Hecke and simple-factor conclusions retain their extra conditions. No rational lifting of arbitrary quotient torsion is assumed. |
| 6.2 Eisenstein-support finiteness | Mazur1977 III Lemma 3.3, p. 149; lines 4657–4681 | Finite localized Mordell–Weil and primary Sha assertions match; the preceding global cohomology bound is used. |
| 6.3 rank zero | Mazur1977 III Lemma 3.4, Corollary 3.5 and proof of 3.1, pp. 149–150; lines 4683–4709 | Support condition concerns the free rational module. Exactness is after tensoring with ℚ, not pointwise surjectivity. |
| 6.5 odd Sha | Mazur1977 III Proposition 3.6, pp. 150–151; lines 4710–4739 | Odd-primary vanishing, with finite dyadic remainder; the proof uses injectivity plus primary nilpotence. |
| 6.6 finite curve points | Mazur1977 III Theorem 4.1, pp. 151–152; lines 4754–4764 | Positive genus is essential. Nonconstant map to the finite rational Eisenstein quotient is the stated route. |
| 7.1 cusp moduli | DeligneRapoport1973 VI §§5.1–5.3, pp. 282–283, lines 4396–4414; VII §§1.16, 2.1–2.7, pp. 298–302, lines 4932–5045 | The polygon/contraction and Tate-parameter descriptions support the two subgroup directions and widths. The comparison is for the specified forgetful map; it corrects the label reversal in Mazur's later proof. |
| 8.1 model and cusps | MazurTate1973 §3, pp. 43–44, lines 128–159; SutherlandModels lines 5–10; BruinDerickxStoll2021 §3 p. 3, lines 98–111 | These support the stated modular curve, cusp facts and explicit equation/map. The additional displayed divisors and counts were independently computed; R01 concerns their status as assumptions. |
| 8.2 diamond endomorphisms | MazurTate1973 §§2–3, pp. 41–45, especially lines 171–214 | Order-six action, the two norm-19 factors, twisted interchange and the two-dimensional factors agree. The factor labels must be fixed by the rational cusp subgroup, as the README requires. |
| 8.4 local surjectivity | MazurTate1973 §4, pp. 46–47, lines 245–276 | Uses a pro-13 open subgroup, invertibility of 19 and the finite quotient. It does not infer surjectivity merely from injectivity on an infinite group. |
| 8.7 four occurring orders | Mazur1977 III §5, remark after Theorem 5.1, p. 156, lines 4927–4949 | The source supports occurrence. The four particular equations are the README's direct computations; all their discriminants and multiples agree. |

Additional readings include MazurWiles1984Errata §8.I, pp. 187–188, lines 394–434; Elkik1990 p. 59, lines 23–30; Mazur1978 Proposition 3.1 and Corollary 4.3, pp. 142–145, lines 522–582 and 627–650; and MazurTate1973 §4, pp. 47–48, lines 277–306. The first provides precisely the three repairs cited in §§1.6, 3.4–3.5 and 4.2–4.3. The modern level-thirteen model source was read in its dated 2021 version, not used as an independent proof of Mazur–Tate rank zero. Deligne–Rapoport was read in the accessible 1973 volume; no separate claim is made about text changes in the 1986 corrected printing.

### Adversarial table

The **68 computed rows** below cover all 56 numbered subsections, with extra rows for separate statements in §7.9, the fixed arithmetic inputs and the native signatures. “Pass” means the displayed instance or necessary algebraic calculation agrees; it does not mean a proof was implemented. For deep geometric theorems, cyclic/module tests exercise the claimed conclusion and the excluded wrong construction, while the source table supplies the theorem evidence. A model test is explicitly labelled when it is not a computation of an actual modular Jacobian.

| Statement | Instances tried | Computed values on the two sides / wrong model | Result and change |
| --- | --- | --- | --- |
| Conventions: index, cusp sign, weights | P=2,3,11,13,17; c=1 in ℤ/5; coefficients a₁=1,a₂=3,a₄=7 | n=1,1,5,1,4; w(c)=4=−1 mod 5; a₁(T₂f)=3, a₂(T₂f)=7+2=9, versus 7 if the weight-two term is dropped | Pass. |
| Integral supplier conventions | A node, characteristic 2; t↦t² on G_m; genus zero | Residues a+(−a)=0, also 1+1=0 in F₂; inseparable degree 2 versus one geometric kernel point; H⁰(ω)=H¹(O)=0 | Pass; degree is not geometric point count. |
| 0.1 cuspidal index | P=2,3,5,7,11,13,17,19,37,41,73; junk P=1 | n=1,1,1,1,5,1,4,3,3,10,6; at nonprime 1 the arithmetic expression is 0, so positivity uses primality | Pass. |
| 0.2 two Eisenstein ideals | T=0; level-11 quotient; invertible Fricke coset | H=ℤ, ker ε=0 when T=0; full scalar kernel 0 versus cuspidal kernel 5ℤ; ε(1+w)=0 versus degree(1+w)=2 | Pass; no character T→ℤ is forced. R04 labels. |
| 0.3 integral congruence | (P,m)=(11,5),(11,25),(11,11),(17,4),(13,1) | m divides n gives true,false,false,true,true; a₁(δ)=1,a₂=3,a₄=7 for these levels; modulus 0 is excluded | Pass; mod 4 is retained. |
| 0.4 duality/index | Genus-zero T; P=11 and17 | ℤ/1 has one element and zero module rank; quotient orders 5 and4; 10 and16 are not the claimed indices | Pass. |
| 1.1 cuspidal class | P=13; cyclic model for P=11 | Zero Jacobian gives c=0 despite two cusps; in ℤ/5, c=1 and −c=4 are distinct | Pass; distinguishes points from divisor classes. |
| 1.2 Hecke action | P=11,l=2 and3; P=13 | (1+2)c=3c and (1+3)c=4c; U_P c=c and wc=4c; 5c=0; zero-Jacobian values all0 | Pass. |
| 1.3 component group | P=11 weights2,3; P=17 weights1,3; genus zero | Weighted determinant 2·3(1/2+1/3)=5, versus unweighted2; 1·3(1+1/3)=4; n=1 gives trivial group | Pass; imported owner resolved. |
| 1.4 order/integral model | P=11,17,13; char2 model at17 | Exact cusp orders 5,4,1; rank-four cyclic model with μ₂ subgroup has geometric special order2, versus4 for constant ℤ/4 | Pass; generic constancy alone is insufficient. |
| 1.5 Shimura subgroup | P=11,13; μ₅ over ℚ and F₅ | Geometric rank/order5 versus rational μ₅(ℚ) order1; special rank5 versus one geometric point; degree-one cover gives trivial dual | Pass; excludes constant ℤ/5. |
| 1.6 intersection | Odd n=5; even n=4 | Common constant/cyclotomic subgroup has rank1 at11; μ₂ intersection has rank2 at17; sum at17 has rank4·4/2=8, not16 | Pass; scheme intersection matters. |
| 1.7 retraction | M=ℤ⊕ℤ/5, C second factor; zero M | r(2,3)=3; inverse split map gives ((2,0),3) and returns (2,3); r(0)=0; zero model gives 0⊕0 | Pass model test. |
| 2.1 ideal kernel | Unit ideal; scalar5 on genus1; inclusion (10)⊂(5) | Unit kernel rank1; J[5] generic rank25 versus cusp rank5; J[5]⊂J[10], ranks25≤100 | Pass; antitone direction and finite-rank distinction. |
| 2.2 maximal ideals/completion | P=11,41,13 | Residual prime sets {5},{2,5},empty; residue field cardinalities5 and2; 13 never divides n=1 | Pass; no fabricated level-prime factor. |
| 2.3 connected quotient | a=0,a=T,a=(5) in T=ℤ; P=13 | γ=0,T,0 respectively, so A=J,0,J; but [5]J=J and J/5J=0; at13 J=A=0 | Pass; distinguishes quotient from finite kernel. |
| 2.4 support | Model T=ℤ×ℤ, a=5ℤ×ℤ | Completion ℤ₅×0, γ=0×ℤ; for J=A₁×A₂ the retained quotient is A₁, not A₂; unit ideal retains0 | Pass model test. |
| 3.1 residual constituents | P=11,ℓ=5, Frobenius2; ℓ=11; P=17,ℓ=2 | Expected polynomial (X−1)(X−2)=X²−3X+2; 11∤5 excludes level-prime Eisenstein support; mod2 both characters1, but constant/μ₂ special point counts2/1 | Pass; level-prime source step has the limitation below. |
| 3.2 étale multiplicity | Ordinary genus-one model atℓ=5; zero factor | Tate rank2, étale rank1; J[5] generic rank25 and ordinary étale rank5, not25; zero factor rank0 | Pass model test. |
| 3.3 good primes | (P,ℓ,l)=(11,5,2),(11,5,31),(17,2,2) | Fifth powers mod11={1,10}; half-difference3 versus0 mod5; fourth powers mod17={1,4,13,16}, while 6²=2 mod17 | Pass; exceptional test is quartic. |
| 3.4 good-prime existence and freeness | Residue class2 mod55; odd-dyadic class3 mod68 | gcd(2,55)=1; l=2 is good for(11,5); gcd(3,68)=1, 3 is nonsquare mod17 and3 mod4; CRT classes are nonempty | Pass arithmetic prerequisite; no odd-purity use at2. |
| 3.5 odd kernel | P=11,ℓ=5; P=19,ℓ=3; dyadic control | Constant⊕cyclotomic ranks25 and9, dimensions2; at17 direct sum would rank4 but loses the nonidentity conjugation matrix on D | Pass; odd hypothesis necessary. |
| 4.1 winding | Rank-one period model c=1/5 modℤ; reversed path; group ring | 5e=1 integral, e=1/5 nonintegral; reversal −1/5; invariant 1+σ maps to2 in coinvariants | Pass normalization tests. |
| 4.2 quadratic modular unit | P=17,41,73; involution applied twice | Exact Bernoulli sums8,32,88 give r=2,8,22; at41 4 mod8 has order2; f↦−1/f twice returns f and product is−1 | Pass; corrected square identity retained. |
| 4.3 dyadic embedding | P=17,41; D over F₂ | n=4,10; at17 sum of 2-primary C,Σ has rank8; at41 it has rank2, too small for rank4 D; D has2 geometric special points versus4 for split constant | Pass. |
| 4.4 plus separation | D residual matrix σ=[[1,1],[0,1]] in F₂; w=−1 | σ−1 has rank1; −1=+1 mod2, so a +1 eigenspace test alone has dimension2 and cannot establish geometric separation | Pass negative control; no division by2 allowed. |
| 4.5 saturation/local ring | M=μ₂; wrong overgroup D×ℤ/2 | Amalgam rank2·2=4, étale order2; wrong overgroup rank8, étale order4 despite quotient order2 and exponent2 | Pass; ambient multiplicity condition is essential. |
| 4.6 homology group ring | Basis e₁,e₂ with σ swapping them, over ℤ₂ and F₂ | Invariants rank1 generated (1,1); coinvariants rank1; canonical map sends1→2, reduced mod2 it is0; σ−1 mod2 rank1 | Pass after Eisenstein completion. |
| 4.7 normalized congruence | P=11, generator2 of F₁₁×; P=17, generator3 | φ(2)=1 mod5 gives (1/2)φ(2)=3; at17 log₃2=14, square root3⁷=11 gives φ(11)=3 mod4, whereas unhalved log gives2 mod4 | Pass; mod2 normalized value1 versus canonical0. |
| 4.8 principality | Local arithmetic model T=ℤ₅, I=5ℤ₅, e=1/5; genus zero | 5a↦a is rank-one isomorphism and T/I=ℤ/5; unnormalized invariant quotient adds factor2; n=1 has no Eisenstein completion | Pass model test, consistent with source theorem. |
| 5.1 quotient torsion support | Zero quotient; level11; multiplication-by5 on cyclic rational torsion | Zero quotient order1 has no prime divisors; order5 gives support{5}; [5] on ℤ/5 has image0, so rational lifting of all quotient torsion fails | Pass; geometric lifting route avoids this error. |
| 5.2 Ogg torsion | P=13,11,17 | Cyclic conclusion has orders1,5,4; connected-component torsion is0; discarding the 2-primary part would give1 instead of4 at17 | Pass source specialization. |
| 5.3 Shimura maximality | μ₅ versus constant ℤ/5 over ℚ; zero J | μ₅ dual is constant ℤ/5; constant ℤ/5 dual is nonconstant μ₅; zero J admits only rank1 subgroup | Pass class-of-objects test; arbitrary multiplicative type is not substituted. |
| 5.4 cusp image in quotient | P=11,17,13 | Image of specified generator retains orders5,4,1; in a fake quotient J/IJ the level11 image would have order1 | Pass; actual quotient essential. |
| 6.1 cohomology bound | Rank-zero kernel; model d=1 with δ=m,α=m | Zero case h¹−h⁰=0 and δ−α=0; model m=1,2 gives differences0,0 rather than linear growth; for constant ℤ/ℓ, h¹−h⁰=−1=δ−α | Pass numerical cancellation test. |
| 6.2 localized finiteness | Directed systems all ℤ/5 with identity or zero transition; module ℤ⊕ℤ/5 | Limits have orders5 or1, both ≤5; free summand completion has infinite ℤ₅, whereas torsion summand completes to order5 | Pass model test of bounded-limit and rank argument. |
| 6.3 quotient rank | Model T=ℤ×ℤ, M_free=0⊕ℚ, retained first factor | Retained rational rank0; opposite projection has rank1 and fails the support hypothesis; P=13 gives rank0 and group order1 | Pass; support hypothesis carries the conclusion's arithmetic content. |
| 6.4 rational points | P=11,17,37,13 | Source's cyclic orders are5,4,3,1 respectively, agreeing with n; the genus-zero quotient has one point, not an empty point set | Pass specialization and boundary check. |
| 6.5 odd Sha | ℤ/9 with multiplication2 and3; zero module | ×2: kernel order1 but (×2)²=×4≠0; ×3: kernel order3 and square0; only the zero group permits both injectivity and nilpotence | Pass; excludes the false injectivity-only argument. |
| 6.6 finite modular points | X₀(11) genus1; X₀(13) genus0 | Cusp-based genus-one identification gives5 rational points at11; at13 target quotient has1 point but source ℙ¹(ℚ) is infinite | Pass; positive genus prevents constant-map misuse. |
| 7.1 cusp moduli | Over ℚ₃, Tate parameter with v(q)=11, subgroup μ₁₁ or component subgroup | Identity subgroup contracts to1-gon, width1, cusp∞; component subgroup to11-gon, width11, cusp0; both have v(j)=−11 | Pass; j negativity alone gives same value in both cases. |
| 7.2 j valuation | Same Tate curve and two subgroups | Identity quotient q→q¹¹ gives −121=11·(−11); component quotient q→q^(1/11) gives −1=(−11)/11 | Pass signs and direction. |
| 7.3 tame extension bound | Discriminant valuations0,2,3,4,6,8,9,10 | 12/gcd(δ,12)=1,6,4,3,2,3,4,6; over ℚ₁₁ maximum6<10; base e_K=2 permits absolute12, not≤6 | Pass; relative/absolute distinction retained. |
| 7.3 torsion semistability | Hypothetical P=11; additive component bounds | P=11 exceeds all prime divisors2,3 of the additive component group; residue-P extension gives6<11−1=10 | Pass necessary contradictions, no fabricated elliptic example with order11. |
| 7.4 small reduction | q=2,3; P=11 | Hasse integer bounds5,7 are both<11; split/nonsplit torus orders1/3 and2/4; after quadratic splitting q²−1=3,8 | Pass; prime-to-residue torsion suffices. |
| 7.5 component escape | Hypothetical P=11, source cusps0 at3 and∞ atq | q_Eis([0]−[∞])=1 in ℤ/5; torsion specialization would force it to0, giving1=0 in ℤ/5 | Pass contradiction; global step is necessary. |
| 7.6 division field | Upper triangular diag(1,2) over F₅ acting on translation1 | Conjugation sends1→2⁻¹=3, not2; possible extension degrees1 or5; split diagonal model has degree1 over cyclotomic field | Pass inverse-character test. |
| 7.7 class-group obstruction | p=5 and Teichmüller lifts modulo25; p=3 boundary | 7⁴=1 mod25, 7⁻¹=18; 7−18=14 is a unit, giving zero wrong-character quotient; inverse-action ℤ/25 quotient has25 elements; p=3 exponent−1 equals1 | Pass; imported arithmetic vanishing is not a claim about every abstract module. |
| 7.8 isogeny iteration | P=11, Tate pole order11; native identity and P=13 | Pole orders11,121,1331 are distinct; identity additive order1≠11; P=13 violates existing hLevel | Pass; R02 covers the missing excluded level. |
| 7.9 formal immersion | N=11 at11; formal local parameter t; zero quotient | Smooth-locus cusp map has a nonzero first coefficient; identity power-series map sends t→t and cotangent1→1, zero map sends1→0; dimension-zero quotient has no nonzero cotangent | Pass domain/nonzero-quotient controls. |
| 7.9 cuspidal-divisor torsion | N=1,4,11,15 | Degree-zero space dimensions0,2,1,3; at4 Δ₄/Δ vector(−3,0,3); at11(−10,10); at15 vectors(−10,10,−2,2),(−12,−4,12,4),(−14,−2,2,14), rank3 | Values pass; generality and ownership need R03. |
| 7.9 Atkin–Lehner transport | N=1,11,15; N=4 negative control | Exact-divisor actions count1,2,4 and squarefree cusp counts1,2,4; for N=4 only two exact divisors but three cusps, so transitivity fails | Pass; do not generalize this corollary along with cusp torsion. |
| 7.9 potential good reduction | e=1,q=3; e=1,q=2; e=q−1 | 1<2 true; 1<1 false; cyclotomic formal point ζ_q−1 has normalized valuation1 and nonzero orderq at equality | Pass strict ramification bound. |
| 8.1 model and divisor identities | y=−1,y=x; five divisors; two infinity branches | Substitution gives −x(x+1)² and x³(x+1); divisor degrees2−2,2−2,3−3,3−3,4−4 all0; relations give19t=0 and residues0,1,3,12,14,15 | Values pass; make assertions targets, R01. |
| 8.1 reduction and intersection | F₂,F₄,F₃,F₉; all unordered cusp pairs | Curve counts6,6,6,8; Jacobian counts(36+6)/2−2=19 and(36+8)/2−3=19; 21 pairs give19 classes, with only class15 repeated three times | Values pass; R01. |
| 8.1 smoothness and moduli coordinates | Sextic discriminant; dense-open inverse formulas | Disc=−692224=−2¹²·13²≠0 mod3; x′=(xy)(−xy/(y+1))/(−xy²/(y+1))=x and y′=y when the named denominators are nonzero | Pass; dense-open restriction is material. |
| 8.2 diamond order/norm | γ²=γ−1; roots8,12 modulo19 | γ³=−1, γ⁶=1; (3+2γ)(5−2γ)=19; 8²−8+1=57,12²−12+1=133, both0 mod19; dimensions2+2=4 | Pass; roots of x²+x+1 are different. |
| 8.3 finite-flat kernel | Rank19 extension; inertia generator with eigenvalue8 | Rank19·19=361, generic dimension2; 8 has order6 mod19, so fixed line dimension0; μ₁₉(ℚ₁₃) has order gcd(19,12)=1 | Pass; rank361 does not mean361 local points. |
| 8.4 local surjectivity | Formal pro13 group; finite quotient | 19 is a 13-adic unit and π⁻¹=πbar/19; kernel on local points has order1; finite quotient kernel1 gives image size equal to its whole cardinality | Pass finite-index argument; arbitrary ×2:ℤ→ℤ would instead have cokernel order2. |
| 8.5 cohomology | Units ±13^ℤ; degree12 cover; exponent19 | −1=(−1)¹⁹; unit quotient ℤ/19; valuation sends13→1 mod19, kernel0; 12·8=96=1 mod19 | Pass; no admissible-character shortcut. |
| 8.5 class-number datum | Degree12 cyclotomic field and six named elements | Signed disc13¹¹; bound≈306.4158, stated rational upper≈306.8010<307; small prime-ideal norms exactly13,27,53,79,131,157; all six norms match | Values pass; proof ownership missing, R01. |
| 8.6 rank-zero descent | Free O-rank1 and0; T₁₉ | O/πO has19 elements, so rank1 cannot have π-surjective multiplication; rank0 finite T₁₉ has π acting invertibly, since its annihilator is πbar | Pass; R01–R02 remove permanent inputs and state endpoint. |
| 8.7 occurring prime2 | W=(0,0,0,−1,0), Q=(0,0) | Δ=64; Q≠∞, 2Q=∞; additive order2 | Pass actual rational addition. |
| 8.7 occurring prime3 | W=(0,0,1,0,0), Q=(0,0) | Δ=−27; Q,2Q=(0,−1),3Q=∞; additive order3 | Pass actual rational addition. |
| 8.7 occurring prime5 | W=(0,−1,−1,0,0), Q=(0,0) | Δ=−11; 2Q=(1,1),3Q=(1,0),4Q=(0,1),5Q=∞; additive order5 | Pass actual rational addition. |
| 8.7 occurring prime7 | W=(−1,−4,−4,0,0), Q=(0,0) | Δ=−1664; multiples(4,8),(2,2),(2,4),(4,0),(0,4),∞; additive order7 | Pass actual rational addition. |
| 8.8 all-prime classification | Four actual points above; identity; alleged order13 | Output values2,3,5,7 each satisfy the disjunction; identity has order1 and fails prime hypothesis; 13 satisfies none of the four equalities | Missing native endpoint, R01–R02. |
| 8.9 invariant vectors | Galois character line with scalar2 in F₁₁; trivial line; geometric zero vector | Fixed equation2x=x gives x=0; invariant dimension0 although a stable line exists; trivial line has dimension1; zero vector fixed and equals0 | Pass distinction from irreducibility; missing native endpoint, R02. |

The finite computations used exact rational arithmetic for Weierstrass addition, Bernoulli sums, determinants and divisor-order vectors. In the finite fields the defining polynomials were retained: F₄ uses `t²+t+1`, F₉ uses `t²+1`. The resulting per-x solution lists are `(2,0,2,0)` and `(2,0,0,2,0,0,2,0,0)`. The cyclotomic norms were determinants in the 12-dimensional integral power basis, not floating-point approximations. Floating point above only displays the Minkowski size; the reported upper-bound comparison was also checked as an exact rational inequality.

### Pinned-library and duplication audit

The checked pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following **16 declaration/carrier entries** were opened at those pins; file names below are relative to the respective library repository.

| Pinned declaration/carrier | File and line | What it supplies, and what it does not |
| --- | --- | --- |
| `WeierstrassCurve.IsElliptic` | `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:366` | Discriminant is a unit; over ℚ this is nonzero discriminant. It is not implicit merely from writing a Weierstrass equation. |
| `WeierstrassCurve.Affine.Point` | `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477` | Infinity and nonsingular affine points. This carrier already states the prime-torsion conclusions. |
| `orderOf_ofAdd_eq_addOrderOf` | `Mathlib/GroupTheory/OrderOfElement.lean:193` | Native additive/multiplicative order comparison. Identity order1, infinite order0. |
| `WeierstrassCurve.pointGaloisAction` | `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/Galois.lean:47` | Action of extension-field automorphisms on actual point coordinates. |
| `WeierstrassCurve.torsionGaloisAction` | Same file, line64 | Action on `AddSubgroup.torsionBy`; gives the missing §8.9 signature without a free predicate. |
| `NumberField.classNumber` | `Mathlib/NumberTheory/NumberField/ClassNumber.lean:64` | Cardinality of the actual class group. |
| `NumberField.classNumber_eq_one_iff` | Same file, line74 | Class number one equivalent to the integer ring being a principal ideal ring. It does not prove the value at conductor13. |
| `NumberField.exists_ideal_in_class_of_norm_le` | Same file, line77 | Minkowski representative bound under number-field hypotheses; usable in R01. |
| `IsCyclotomicExtension.Rat.discr_prime` | `Mathlib/NumberTheory/NumberField/Cyclotomic/Basic.lean:651` | Prime-conductor discriminant including sign; at13 exponent6 gives positive sign. |
| `IsCyclotomicExtension.Rat.isIntegralClosure_adjoin_singleton` | Same file, line801 | Integral closure generated by the specified primitive root, with nonzero conductor. |
| `IsPrimitiveRoot.integralPowerBasis` | Same file, line850 | Actual ring-of-integers power basis, not an arbitrary rank12 lattice. |
| `Nat.forall_exists_prime_gt_and_modEq` | `Mathlib/NumberTheory/LSeries/PrimesInAP.lean:462` | Requires nonzero modulus and coprime residue; the auxiliary-prime CRT classes meet them. |
| `CuspForm.discriminant` and `ModularForm.discriminant_ne_zero` | `Mathlib/NumberTheory/ModularForms/Discriminant.lean:236`, `:122` | Weight12 level-one cusp form and nonvanishing on the upper half-plane. Algebraic cusp divisors still need the supplier comparison. |
| `LeftCosetModule.deg` | `TauCeti/NumberTheory/HeckeRing/Degree.lean:106` | Coefficient-sum degree; invertible single coset has value+1. It cannot give the Fricke character−1. |
| `AlgebraicGeometry.AbelianVariety` | `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95` | Bundles a group object over the field with properness and geometric integrality. It does not select a modular Jacobian or an Eisenstein quotient. |
| `NumberField.Chebotarev.infinite_frobeniusPrimeSet` | `TauCeti/NumberTheory/Chebotarev/Density/Chebotarev.lean:74` | Infinitely many primes in each conjugacy class of a Galois extension of number fields; permits removing the finite bad set. |

Object searches included Hecke degree and eigenvalues, modular Jacobians, cuspidal divisors, ideal-supported abelian quotients, finite-flat dyadic models, winding homology, torsion Galois actions and cyclotomic class numbers. They were run against the pinned libraries, main roadmaps, board packages and the open-roadmap index, with candidate matches opened. Neither local Lean theorem's fully qualified name was found in another roadmap. The elementary native APIs above remain suppliers. The new arithmetic of the prime-level Eisenstein ideal is not already a target of main ModularCurves: its Layer10 boundary explicitly excludes Mazur's torsion arithmetic. The ownership collision found by object is R03, not a reason to reject this entire roadmap as a re-plan.

### Resolved roadmap contracts

Main versions were used for already-existing roadmaps, even where an open revision was present. New suppliers were read using the roadmap tool's indexed open heads. The entries below give the controlling loci; section ranges in the target's contracts and their Needs lines were checked against those interfaces. These are **15 supplier families**, plus the later overlapping consumer in R03.

| Supplier | Resolved loci and content checked |
| --- | --- |
| ModularCurves | `TauCetiRoadmap/ModularCurves/README.md:2103`, Layer10: prime-level compactified coarse curves away from the level, cusps and Shimura covering. Generalized boundary objects and the level fibre are obtained from PartII, not from this coarse statement. |
| ModularForms | `TauCetiRoadmap/ModularForms/README.md:259`, `:764`, `:1024`: character/weight-two forms, integral Hecke and modular-symbol inputs, analytic/algebraic curve comparison. |
| ModularCurvesPartII | §§2–6, 7.1/7.5–7.6, 9.1–9.4/9.8, 11–14, 16 and17 resolve the curves, charts, correspondences, realizations, quotients and boundary comparisons. `TauCetiRoadmap/ModularCurvesPartII/README.md:3427`, `:3448`, `:3467` supply integral dualizing forms, Serre duality and Hecke adjoints with base-change conditions. At `:4354`, §17.5 states the weighted prime component calculation, marked cusp generator and Hecke action. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:2731` onward, R07.G1–G8: marked global admissible models, defect bound, rank-one models, Ext, odd purity, D and amalgams. The referenced R07.1 targets supply closures, finite-flat uniqueness, finite étale descent and gluing. R07.G8 constructs the amalgam but does not supply this roadmap's Hecke saturation; §4.5 owns that extra assertion. |
| NeronModelsAndSemistableAbelianVarieties | §§1.2–1.3,1.9,1.11,2.2,2.6,2.8,3.5,4.7,5.1–5.2 resolve extension, local groups, components and monodromy. `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:1842`, `:1909` give Raynaud extension and generic torsion uniformization; `:3806`, `:3845`, `:3901`, `:3943` give connected Kummer theory, localization, component defects and cotangent injection. §§6.5–6.6 preserve equation/scheme reduction comparisons. |
| HeightsRationalPointsAndObstructions | `TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md:522`, §1.0: connected quotients; §§1.1–1.4/1.7: isogeny descent and finite generation; `:793`, `:804`, `:816`, `:841`: formal groups, identity charts, logarithm radius and torsion specialization. The strict ramification inequality is retained here. |
| AbelianSchemesAndArithmeticModuli | `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1469`, `:2851`, `:2871`, `:2904`: A3.3 finite subgroup quotients, A6.3 images, A6.4 simplicity, A6.5 complete reducibility. The connected quotient itself is explicitly contracted from Heights §1.0. |
| ArithmeticGaloisRepresentations | `TauCetiRoadmap/ArithmeticGaloisRepresentations/README.md:1127`, §1.8: `ContinuousRep.iso_of_charpoly_eq`, characteristic-polynomial Brauer–Nesbitt, including residual characteristic. Equal traces without the appropriate characteristic hypotheses are not substituted. |
| AutomorphicFormsOnReductiveGroups | `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:1172`, §7.3: raw factor `p^(1−k/2)`, hence1 at weight2, versus the unitary `p^(−1/2)` normalization. |
| CyclotomicClassGroupsAndStickelberger | §§0.2–0.3 and3.2 supply the covariant ideal action and annihilator; `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:1003`, `:1029`, §§8.1–8.2, supply inverse-character vanishing and the actual unramified class-field quotient. This is not full class-number one for ℚ(ζ₁₃). |
| ClassFieldTheory | `TauCetiRoadmap/ClassFieldTheory/README.md:1799`, Layer13: Hilbert/ray class fields as applications of reciprocity, their maximal unramified property and Galois/class-group comparison. |
| SchemeAndStackFoundations | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:3330`, `:3631`, `:3656`: §§2.3,2.10,2.11 provide `NonabelianH1.equivSheafH`, étale/fppf comparisons and the fppf Kummer sequence. The resolver's apparent missing-name lead is resolved as a roadmap contract, not a pinned library declaration. |
| JacobianChallenge | `TauCetiRoadmap/JacobianChallenge/README.md:111`, `:135`, `:448`: Layers A,B,F provide divisor classes, Riemann–Roch and Abel–Jacobi; the genus-two divisor comparison uses these inputs. |
| EllipticCurves | `TauCetiRoadmap/EllipticCurves/README.md:423`, `:647`, `:683`, `:793`: isogenies/formal groups, torsion/Weil pairing, Hasse and local reduction/Tate uniformization. The present roadmap owns the prime-torsion classification, not these generic APIs. |
| ModularSymbolsPadicLFunctions | `TauCetiRoadmap/ModularSymbolsPadicLFunctions/README.md:1231`, §0.8: rational Drinfeld–Manin splitting, with full-level and coefficient hypotheses. It is an earlier input for the ownership repair in R03, not a new construction to duplicate here. |

The other resolver lead, `ContinuousRep.iso_of_charpoly_eq`, likewise exists in its named supplier §1.8. Neither lead warrants a missing-supplier finding. Open-work ownership was checked through the available indexed files and the supplied sibling checkouts, in particular the actual `EllipticCurveModularityPartII` §6.0c cited in R03; no unavailable open-head text was presumed to supply a theorem.

## Not verifiable

- **FaltingsChai1990**, *Degeneration of Abelian Varieties*, III §§7–8, pp. 76–78, used in §3.1's coefficient-equals-level argument. The sources service located the publisher's paywalled record and classified the citation as uncertified; no accessible operator-held text was supplied. I therefore did not certify the exact printed Corollary7.3 or its surrounding proof. I did read the independent named supplier contract, NeronModelsAndSemistableAbelianVarieties §§3.13–3.14: it explicitly supplies generic-fibre torsion uniformization for every positive integer, with unramified character/period lattices and all residue characteristics. That is a real contract, not an assertion that the paywalled source was verified.
- The accessible Deligne–Rapoport volume is the 1973 printing. The cited numbered passages were read there; the separate 1986 corrections were not independently collated.
- No Lean proofs of the deep results are supplied or claimed by this review. The completed source checks and the finite/model computations above do not turn the two existing `sorry` statements, or the three signature probes, into proved theorems.

No seeded target was left unread because of a missing text. The initial failed alternative URL for Mazur–Tate was superseded by the successful legal GDZ fetch; it is not an outstanding reference request. The uncertified Faltings–Chai item is not reopened as a request.

## Source issues

- **Gap** in Mazur1977 at II Corollary 16.3, printed p. 125: the source says the multiplicity-one consequence follows without providing its proof; it should supply ordinarity and Weil duality between the multiplicative and étale parts; affects the proof; corrected in print at MazurWiles1984Errata §8.I.1, p. 187. Witness: MazurWiles1984Errata lines 398–402.
- **Gap** in Mazur1977 at II §12, printed p. 105, line 18: the source says the displayed divisor-class manipulation proves A+B=0; it should prove that the modular-unit product with its Fricke transform is a square; affects the proof; corrected in print at MazurWiles1984Errata §8.I.2, pp. 187–188. Witness: MazurWiles1984Errata lines 403–430.
- **Error** in Mazur1977 at II §11, printed p. 100, seventh line from bottom: the source says a naive analytic formula gives the Hecke action on X₁(N); it should use the level-point correspondence with the required diamond action; affects the proof; corrected in print at MazurWiles1984Errata §8.I.3, p. 188. Witness: MazurWiles1984Errata lines 431–434; the corrected correspondence is used in README §1.6.
- **Misprint** in Mazur1977 at III §5, Step 3, printed p. 159: the source says infinity is the component-direction cusp and zero the identity-direction cusp; it should exchange those labels for the fixed forgetful map, whose widths are respectively one and N; affects the proof. Witness: Mazur1977 lines 1422–1428 and 5048–5057, and DeligneRapoport1973 lines 4932–5045; README §§7.1–7.5 use the corrected labels, so the contradiction survives.
