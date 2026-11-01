# Review of EulerSystemsCyclotomicMainConjecture (pull request #1311 at 9fc63e3)

**Verdict:** accepted

No P1 or P2 finding remains. The two P3 notes below are nonblocking under the review contract. This verdict means ready for a human's final approval; it is not an approval or merge.

## R01 (P3) — Finish removing stale supplier declaration names

**Location:** `TauCetiRoadmap/EulerSystemsCyclotomicMainConjecture/README.md:220`, 747, 1407, 1733. Examples: “`characterEigenspace`”, “`smoothedStickelberger_cast`”, “`gaussSum_smoothed_descent`”. The analogous limit-comparison spelling occurs at line 322.

**Claim:** These names are presented as supplier declarations, but the suppliers state the corresponding mathematics in prose. The section contracts exist; these are stale names, not missing mathematical prerequisites.

**Witness:** `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:145`, 465–472, 488 state the kernel intersection, smoothing/cast and descent. The spellings occur in neither supplier file. SelmerIwasawaCohomology §3.1 likewise gives its limit comparison without the cited name.

**Repair:** Cite those sections and their prose statements, deleting the purported declaration spellings throughout the contracts and adapters. Do the same for the unnamed Selmer/Euler-system interfaces in lines 217–218. Preserve the equations. At conductor 5 and smoothing parameter 2, the cited floor formula still gives coefficients 0 at [3] and 1 at [2]; the corrected citation supplies exactly that identity.

## R02 (P3) — Give the rational character construction three discriminating Checks

**Location:** `TauCetiRoadmap/EulerSystemsCyclotomicMainConjecture/README.md:2629`, 2643–2646: “`V_χ(M) = ℚ_p ⊗ M ⊗_{ℤ_p[Δ]} ℤ_p[χ]`”.

**Claim:** Section 4.6 defines this construction and its proposed basis, but its Checks list has only two bullets. The sign-torsion observation and abstract product-ring warning do not test the character quotient on a nonzero module.

**Witness:** For Δ=C₂, p=3 and χ the sign character, Vχ(ℤ₃ with trivial action)=0, whereas Vχ(ℤ₃[C₂])=ℚ₃. Keeping the whole rationalized regular module instead would give dimension 2.

**Repair:** Add a Check with those two values, and promote the already-computed Amice test in step 3 to the Checks list: [1]−[2] maps to (1−X)−(1−X)²=X−X², with linear coefficient +1. This tests both the character quotient and the X=1−ζ convention; the wrong full module and the opposite coordinate fail. Keep these tests in the README, not Suggested.lean.

## Verified sound

### Previous findings, checked first

| Previous finding | Current passage/evidence | Disposition |
|---|---|---|
| R01, missing pure 2-power branch | `Suggested.lean:180` now states `iwasawaLeopoldt_two_power`; its conclusion includes `2 ^ e`. README:3495 names it. The docstring specifies `[E : ℚ₂] = 2^(n-1) * e`. | Repaired. For the quartic conductor-5 character the two sides are 1 and 2·(1/2)=1; after coefficient extension of degree 2 they are 1 and 4·(1/4)=1. |
| R02, 87 HTML anchors | README:1401 is the ordinary heading “0.18 `χ`-components”; no explicit anchor remains. The head-specific gate reports `residue=0`. | Repaired. All gate counters are zero. |
| R03, purported own API/Check names | README:1472 states the twisted-sum identities in prose; README:1455–1486 no longer labels the Checks with `chiSum_*` declaration names. | Repaired for this roadmap's own declarations. The acceptance test contains only nine definitions and five headline theorems. |
| R04, Coleman location and invented supplier spellings | README:225 now cites “the semilocal tower of §0.96, the componentwise norm of §0.100”; F.2 cites the Selmer kernel equation by §2.2, and F.5 the twist equation by §2.5. | The named Coleman, Selmer-kernel and twist-evaluation defects are repaired. The broader cleanup of invented supplier spellings is partial: current R01 records additional surviving examples. No settled non-actionable finding is re-raised. |

Both requested files and all 87 numbered target sections were read, including unchanged passages, hypotheses, API/Checks and proof inputs. The outside-folder diff is empty. No sorry'd data, set_option, computational algorithm, route-specific good-prime shortcut or duplicate fully qualified Lean declaration was found. The all-prime scope retains its separate dyadic arguments rather than assuming integral character projectors at 2. Main-roadmap shape was compared with NumberFieldArithmetic and PadicMeasuresIwasawaAlgebras, and the completed arithmetic suppliers were consulted.

### Gate, dependency direction and elaboration

The worker's gate at this exact head reports:

```text
gate EulerSystemsCyclotomicMainConjecture: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The prescribed dependency check was independently run:

```text
depcheck: 205 roadmaps, 1486 edges, 0 problem(s)
```

There is no UPWARD or CYCLE result. Every Needs line was read. No undeclared supplier gap or upward mathematical prerequisite was identified; the name drift in R01 leaves its mathematical section contracts intact.

The two imported Tau Ceti modules were built first. Direct `lake env lean` elaboration of Suggested.lean succeeded with exactly five sorry warnings. A scratch copy printed `#check @name` for all 14 declarations. The five theorem types retain their number-field, abelian Galois, cyclotomic-overfield, finite-dimensional coefficient, scalar-tower, parity, coprimality and character-compatibility hypotheses. The pure branch retains n≥1, e≥1, exact character order and the coefficient-degree equation, so natural subtraction n−1 has no unintended zero branch. `globalUnitImage` legitimately needs only its field and commutative coefficient ring; the actual arithmetic headlines impose the number-field hypotheses. No binder repair was needed.

In a separate scratch copy, all five admitted theorems failed the one-tactic alternatives simp_all, rfl, infer_instance and an exact available assumption. Reading the pinned arithmetic APIs found no single library theorem that closes these endpoints. The five goals are arithmetic statements about the actual class and unit tensors, not algebra on hypotheses containing their conclusions. No padding finding is made.

### Headline coverage

The headline inventory is: cyclotomic and Stickelberger Euler systems (§§0.17, 0.28, 0.30–0.31); finite Kolyvagin divisibility (§1.6); Iwasawa divisibility and unit/class equality (§§2.4, 3.4); the odd-prime cyclotomic main conjecture (§3.5); the all-prime Coleman sequence and circular image (§§4.4, 4.7–4.8); real and odd-character main conjectures (§§4.12–4.14); exceptional Gauss/logarithm comparison and relative class bounds (§§4.18–4.21); both finite Iwasawa–Leopoldt branches (§4.22); ray transfer, real ray formula and Gras (§§4.24–4.26); integral prime-to-p character Coleman comparison (§4.27); and finite unit-index, odd-character and Tate-twist consequences (§§5.1–5.3).

All five finite endpoints expressible on the retained simple definitions are stated. The module docstring names the other headlines and identifies their missing arithmetic norm-limit modules, Euler/Selmer comparisons, characteristic ideals, pseudomeasure, Coleman operators, circular lattices and ray limits. The existence of finite Kummer maps, power series or a completed group algebra alone does not provide those constructions. Nothing is substituted for an unstated infinite headline.

### Seeded source sample

All 15 requested locators were compared with legal texts and their standing hypotheses. No README locator is explicitly flagged unverified. Rubin is the linked 1999 draft, Greither the published Numdam text, and RJW the cited arXiv v2. The following are locators, not source excerpts.

| Target | Source locator and printed page | Result |
|---|---|---|
| 0.8 | RUBIN-ES line 1594 through line 1617; III §2.1, p.34 | The definition retains c̃₁=p, the divided/coprime cases and compatible roots. The README uses 1−ζ with the corrected sign, rather than copying the source’s ζ−1 norm slip. Its tame terms can be torsion. |
| 0.11 | RJW-PADIC-L line 3036 through line 3038; §10.5, p.52 | The torsion ratio is (ξ⁻¹−1)/(ξ−1)=−ξ⁻¹. The non-torsion conclusion uses §§0.3,0.7 and rational norm p; it does not assert every tame term is non-torsion. |
| 0.18 | RUBIN-ES line 834 through line 849; I Definition 6.2, pp.14–15; line 1563, III p.33 | Eigenvectors and inverse twist agree. The README distinguishes the source's double dual from inverse-limit completion and does not extend semisimplicity to p-divisible group order. |
| 0.23 | RUBIN-ES line 1659 through line 1672; III Definition 2.2 and following paragraph, p.35 | Nontrivial even character, character field, inverse-weighted sum and prime-to-p order are retained. At a prime-power conductor the nontrivial weighted valuation is zero. |
| 0.24 | RUBIN-ES line 1659 through line 1672; III Definition 2.2, p.35 | The O[Gal(L_n/L)]-span and finite/infinite generator conventions agree. |
| 0.30 | RUBIN-ES line 1867 through line 1920; III §4.1, pp.40–41; line 7095 through line 7167, Appendix D, pp.164–165 | The source constructs the idelic character, but its printed unscaled restriction calculation is inconsistent. The README's explicit N(m) normalization repairs it; see the computed traces below and Source issues. |
| 0.31 | RUBIN-ES line 6193 through line 6239 and line 6316; IX Lemma 6.1/Example 6.2, pp.141–143 | Replacement preserves the coefficient representation and agrees away from new bad support. The printed Tate-twist slip is not propagated. |
| 1.4 | RUBIN-ES line 2887, line 3112 and line 3155; IV Definitions 4.1/4.10, Lemma 4.13, pp.62,66–67 | Nonzero modulus, admissible primes, fixed generators, actual lifted descent and r=1 reduction agree. |
| 2.4 | RUBIN-ES line 1771 through line 1793; III Theorem 2.7, p.38 | Divisibility direction and removal of the augmentation factor agree. The roadmap separately supplies local torsion and class control rather than importing the source's false semilocal freeness sentence. |
| 3.4 | RUBIN-ES line 1794; III Corollary 2.8, p.38 | Equality follows from divisibility plus the finite-layer invariant comparison; equality of μ and λ alone is not used to identify ideals. |
| 4.4 | GREITHER-1992 line 374 through line 445; Theorem 2.4, Theorem 2.6/Corollary 2.7, pp.459–461 | Unramified coefficients, coefficient Frobenius, integral trace versus ψ, signed dyadic roots and the extra dyadic constant obstruction are retained. |
| 4.5 | GREITHER-1992 line 455, line 486 and line 491; Theorem 2.8, Lemma 2.9, Proposition 2.10, pp.461–462 | Source/target, Tate twists, semilocal root factors and the restriction to the trace-kernel series module agree. |
| 4.13 | GREITHER-1992 line 718 through line 732; Lemma 3.3/Proposition 3.4, p.469 | The non-inverted adjoint action is distinguished from the contragredient dual; the rational comparison has χ=ωρ⁻¹ and twist (1). |
| 4.25 | GREITHER-1992 line 1594 through line 1612 and Theorem C, p.454; Theorem 4.12, p.494 | The README restores nontrivial restriction to Δ₀, present in Theorem C but omitted in 4.12, and retains faithfulness on the cyclic p-Sylow subgroup. |
| 4.26 | GREITHER-1992 line 1638 through line 1705; Theorem 4.14/Corollary 4.15, pp.495–497 | The corrected middle factor is the character part of (ℤ_p/2)[Δ], hence order 1 at odd p. The generalized index, enlarged circular units and unramifiedness at p are retained. |

### Adversarial computations

Each of the 87 numbered targets has a row. The nine Lean definitions have a further table. These are explicit tests of the statements and conventions, not formal proofs of the universal theorems. Write Λ=O[[T]] and Nχ(a)=‖Norm(a)‖_p⁻¹. A zero finite module has order 1 and characteristic ideal (1). A displayed excluded example tests a hypothesis rather than narrowing the theorem.

| Statement | Instances | Values computed on the two sides / competing model | Result; change |
|---|---|---|---|
| F.1 compact Kummer | 𝔽₇, p=3; separably closed field | 𝔽₇× has 3-completion C₃, as does H¹(μ₃); separably closed gives 0 on both sides | Retain compact/discrete distinction. |
| F.2 local/Selmer kernels | Unramified ℤ/3 with Fr=−1; ℚ, μ₃, support {3,19} | Fr−1=−2 is invertible, so H¹ur=0. Relaxed Kummer space has two generators; strict at 3 leaves 19 since 19≡1 mod9; strict also at19 gives 0 | Retain propagated conditions. |
| F.3 Euler polynomials | T=ℤ_p(1), T=ℤ_p, rank0 | Respectively 1−X, 1−q⁻¹X, 1; replacing both rank-one polynomials by 1−X changes the trivial representation | Correct dual convention. |
| F.4 finite–singular | p=2,M=2,q=3/5; unipotent 2×2 Frobenius | Ray degrees 1/2, so only q=5 meets divisibility. For Fr=[[1,1],[0,1]], Q(Fr⁻¹)[e₂]=−e₁, not +e₁ | Retain admissible primes and polynomial sign. |
| F.5 twist/replacement | Trivial/zero twists; p=3,q=7 | Trivial twist c, zero twist0; `(1−X/7)−(1−X)=6X/7`, divisible by6 | Correct; ramified inverse twist retains Euler factors. |
| F.6 derivative | C₃ with generator σ; trivial T,q=2 | `(σ−1)(σ+2σ²)=2−σ−σ²=3−N`; trivial T gives factor 1−1/2, not 1−1/4 | Correct. |
| F.7 finite bound/index | H=O⊕O/π², c=(π³,1) or (0,1) | Free projection index3 or ∞; error module `(O/π)²` has length2 but exponent1 | Retain actual length and nonzero free projection. |
| F.8 Λ-index | H=Λ,c=p; zero dual | Index ideal(p), not unit; char(0)=(1) | Correct distinction. |
| F.9 Stickelberger | m=2,3,5 | m2 denominator ideal2ℤ clears toℤ; m3 `(2[2]−1)θ=1`; m5 smoothing a2 produces integral floor coefficients0,1 | Correct inverse-index and denominator conventions. |
| F.10 logarithmic values | Odd quadratic mod3; p=2 | τ=i√3 and complex log formula gives π/(3√3); replacing logs by log absolute values gives0. log₂(−1)=log₂2=0 | Retain parity and Iwasawa branch. |
| F.11 Gamma/Gauss | p=2, n=0,1,2,3; trivial finite-field character | Γ₂ values1,−1,1,−1; negative Gauss-sum convention gives1 for trivial character | Correct signs, including n0. |
| 0.1 minimal polynomial, divided case | m=2,ℓ=2 | minpoly(i/ℚ)=X²+1=X²−ζ₂ | Correct small dyadic case. |
| 0.2 minimal polynomial, coprime case | m=3,ℓ=2 | `(X−ζ₆)(X−ζ₃²)=X²−ζ₃`; degrees1+1=2 | Correct removed root. |
| 0.3 norm, divided case | m=2,ℓ=2 | N(1−i)=2=1−ζ₂ | Correct. |
| 0.4 coprime norm | m=3,ℓ=2 | `(1−ζ₃)/(1−ζ₃²)=−ζ₃=1−ζ₆` | Correct. |
| 0.5 Frobenius | m=7,ℓ=2 | Inverse Frobenius exponent4: ζ₇^(2·4)=ζ₇; forward exponent2 gives ζ₇⁴≠ζ₇ | Retain inverse. |
| 0.6 sign | m=2,ℓ=2 | N(i−1)=2 while ζ₂−1=−2 | README's correction passes; source formula needs sign. |
| 0.7 conductor1 | p=2,3 | N(1−ζ_p)=2,3, respectively; not the real-norm square p² | Correct. |
| 0.8 p-stabilized numbers | p=5,m=3,1,5 | c₃=−ζ₃ has order6; c₁=5; c₅=1−ζ₅ | Torsion possible away from p, explicitly allowed. |
| 0.9 p-tower norms | p=5, first two levels | N(1−ζ₂₅)=1−ζ₅, then norm toℚ=5 | Correct direction. |
| 0.10 auxiliary norm | p=5,m=1,ℓ=2 | c₂=1; norm1 equals `(1−Fr₂⁻¹)c₁=0` additively | Correct zero Euler factor. |
| 0.11 nontorsion | p-power conductor | Rational norm p, versus root-of-unity norm±1 | Nonzero Kummer source certified by valuation. |
| 0.12 real norm | p=5 | `(1−ζ₅)(1−ζ₅⁻¹)=(5−√5)/2` for the chosen real embedding; conductor1 gives5, not25 | Correct real-degree convention. |
| 0.13 real distribution | p=3, p-tower | Norm of real generator at conductor9 to conductor3 is3; the conductor3 generator is3 | Correct transported norm. |
| 0.14 smoothing | m=5,a=2,4,6 | Quotients are1+ζ₅, −ζ₅⁻¹,1, each norm1 | Unit property and torsion boundary distinguished. |
| 0.15 admissible extension | p=3, q=2 | Principal cyclotomic Frobenius is−2; `(−2)²=4≠1` and it has infinite 3-adic order | Infinite admissible direction retained. |
| 0.16 Kummer class | ℚ, element p versus p^p | Valuation classes1 versus0 modulo p | Nonzero class is tied to actual unit/number. |
| 0.17 cyclotomic ES | Base fieldℚ | Initial class has valuation1; the zero family has valuation0 | Construction is not an arbitrary family. |
| 0.18 eigensubmodule | ℤ/2 with trivial C₂-action and sign; 𝔽_p[C_p] | Sign eigenspace is all ℤ/2 despite −2 regular onℤ. Norm vector spans invariants, augmentation sends it to p=0 | Module regularity and invertibility conditions correct. |
| 0.19 twisted sums | C₂ sign; trivial group; S₃ sign regular module | S=[1]−[s], S²=2S; trivial sum=id; sign sum in ℤ[S₃] squares to 6S, while ordinary norm has all positive coefficients | Correct without commutativity or division. |
| 0.20 Frobenius on sum | C₄,χ(g)=i | Inverse-character factor1−i⁻¹=1+i; wrong forward factor1−i | Correct. |
| 0.21 root-of-unity unit | ℤ₂,ζ=−1; ℤ₃,ζ=−1 | 1−ζ=2 is nonunit at2, unit at3 | Prime-to-p order hypothesis essential. |
| 0.22 ξ generator | ℚ(√5), χ quadratic | For ε=(1+√5)/2, character sum corresponds to ε⁻², not ε or1 | Correct unnormalised generator. |
| 0.23 ξ is unit | Nontrivial χ versus trivial prime-power conductor | Weighted prime valuation sums to0; trivial character retains valuation1 | Correct nontrivial-character hypothesis. |
| 0.24 circular line | ℚ(√5),p=3,5 | Exponent−2 is a unit in both coefficient rings; Eχ/Oξ has order1 | Correct. |
| 0.25 restriction–Kummer | ℚ₇,p=3; ℚ→ℚ(i),p=2 | Compact completion is ℤ₃⊕C₃, whereas discrete tensor has ℚ₃/ℤ₃ and its completion0. κ(−1) restricts from nonzero to0 in the degree2 extension | Correct completion; prime-to-p restriction cannot be dropped. |
| 0.26 Euler factor | Quadratic conductor5,p=3,5,11 | Factors1−χ⁻¹(p) are2,1,0 | Correct convention for p dividing conductor. |
| 0.27 span of cℚ | Same three primes | Factors2 and1 are units at3 and5; factor0 at11 generates0 instead of Oξ | χ(p)≠1 is necessary. |
| 0.28 unsmoothed system | χ₅,p=11; rational base | Initial unsmoothed class is nonzero (real convention gives2ξ); p-stabilized class0. Raw auxiliary norm atℓ isℓ, not base unit1 | Extra conductor bookkeeping retained. |
| 0.29 half-norm shift | m=3,b=5 versus b=2 | θ′=−(1−j)/6; `(5−j)θ′=−(1−j)` integral, `(2−j)θ′=−(1−j)/2` not integral | Required denominator/annihilator retained. |
| 0.30 local functional/family | p=3, tame conductors 1,2,5; first p-step; two local factors at conductor8 | x₁=2/3, x₂=−1/3; N(2)x₂=−2/3=−x₁. Tr(x₅)=−2/15, multiplied by5 gives−2/3. Tr(x₃)=2=3x₁ cancels the 1/3 normalization. At m8 factor traces s,−s with s²=−2 sum to0 | Normalized restrictions pass; unscaled factor−1/2 fails. Semilocal trace required. |
| 0.31 replacement | q=2,p=3 | New polynomial1−X/2, old1−X, difference X/2 divisible byq−1=1; unchanged bad-support field classes | Same coefficientℤ_p; no Tate twist created. |
| 1.1 Rubin hypotheses | p=5,χ=ω² | Residual dual characterω⁻¹ remains nontrivial on C₄; quotientC₂ would lose this information | Correct enlarged tame group. |
| 1.2 unit rank | ℚ(√5),p=3 | Eχ rank1, ξ exponent−2 gives index0 in valuation units; c=0 would give∞ | Nonzero generator matters. |
| 1.3 Selmer/class dictionary | ℚ(√−5),p=2; prime above2 | Class groupC₂ becomes0 after killing the class of the prime above2 | Ordinary and p-split groups are distinguished. |
| 1.4 derivative descent | C₃ | Derivative identity gives3−(1+σ+σ²)=2−σ−σ² | Correct coefficient and norm direction. |
| 1.5 finite–singular relation | Frobenius unipotent 2×2 | Image of coinvariant[e₂] is−e₁, not e₁; identity Frobenius on rank2 has Q(1)=0 | Rank-one quotient hypothesis retained. |
| 1.6 finite Kolyvagin bound | ℚ(√5),χ₅,p=3 | Class component order1 divides unit quotient order1; scalar extension preserves1 | Headline agrees with Lean. |
| 2.1 Iwasawa hypotheses | Rank1 trivial action of τ versus rank2 | coker(τ−1) has O-rank1 versus2 | Hypothesis discriminates. |
| 2.2 norm-limit modules | L=ℚ(√6),p=3; L=ℚ(√5),p=3/11 | Local Tate roots contribute ℤ₃(1), killed byT−3; split-prime correction has rank0 at3 and1 at11 | No false torsion-freeness claim. |
| 2.3 Λ-index | H=Λ,c=T | Index(T), while empty/zero class gives0; augmentation factor isT | Correct. |
| 2.4 divisibility | char(A)=T−p, denominator errorT² | T andT−p have no common height-one factor, so T-errors cannot supply a missing factorT−p | Correct use of torsion and error support. |
| 3.1 four-term sequence | C=0,E=pℤ,U=ℤ | U/E=ℤ/p; E/C=pℤ embeds into U/C=ℤ | Correct quotient direction; E/U is not defined. |
| 3.2 trivial component | p=3,a=2 | v₃log₃2=1 and v₃(1−1/3)=−1, so product valuation0; char(X)=char(Y)=(1) | Pole cancels, not ζ alone. |
| 3.3 finite-layer comparison | Split χ₅,p=11; n=0 | Universal-norm projection of circular line0 but finite circular lineOξ≠0; ν₀=1 so Λ/(ν₀)=0 | Control error retained. |
| 3.4 characteristic equality | T andT−p | Both have μ0,λ1 but unequal ideals; after known divisibility the quotient has μ0,λ0 and is a unit | Correct use of divisibility, not totals alone. |
| 3.5 main conjecture | p=3 | X∞⁺=0 and smoothed zeta ideal(1); both characteristic sides(1) | No Vandiver module-isomorphism overclaim. |
| 4.1 integral χ-quotient | C₂ sign overℤ₂ | Minus ℤ₂ has quotientℤ₂. The inclusion1↦1+s becomes ℤ/2→ℤ₂, zero, so exactness fails on the left | Correct integral quotient. |
| 4.2 norm descent | Identity extension; full local units at oddp | Identity norm kernel/cokernel0; −1 has order2 and is absent from the pro-p component | Full/pro-p distinction retained. |
| 4.3 circular tower | p=2,m=3; conductor15,a=3 | Absolute norm toℚ of1−ζ₃i is1; nonprimitive conductor15 input has rational norm25 rather than primitive norm5 | Roots and conductors not interchangeable. |
| 4.4 Coleman sequence | Unramified quadratic at3, Frob(i)=−i; p=2 boundary | β(exp9)=6; β(exp(9i))=12i, versus iβ(exp9)=6i. Dyadic f=a+bX maps to(b,a mod2); f=1 maps to(0,1) | β is not O-linear; sign term necessary. Product root is(1−X,1). |
| 4.5 semilocal interpolation | Dyadic roots ζ₈→ζ₄ | Nζ₈=−i and N(−ζ₈)=−i; chosen signed roots follow this transition | Retain signed norm sequence. |
| 4.6 rational character and basis | Δ=C₂, p=3, sign χ; product ring; Amice [1]−[2] | Vχ(trivial ℤ₃)=0; Vχ(ℤ₃[C₂])=ℚ₃ of dimension1, not2. (1,0) is nonzero but not a product-ring basis. Amice image X−X² has coefficient+1 | Mathematics consistent; add concrete Checks (R02). |
| 4.7 Coleman circular image | p=5,h=2−X; p=3,conductor5 | Dlog(h) has linear coefficient1/4; boundary `(1−5)/4=−1`. InvolutionT′=−T+T²+…; upstairs residue norm exponent80 versus downstairs8 | Sign, full inversion and coefficient descent retained. |
| 4.8 semilocal quotient | Λ=ℤ_p[[T]], quotient byT−p | `(Λ[1/p])/(T−p)=ℚ_p≠0`; `ℚ_p[[T]]/(T−p)=0` | Correct bounded-denominator rationalization. |
| 4.9 Kolyvagin primes | K=ℚ,M=8 | Cocycle equations yield8 cocycles and4 coboundaries, H¹ order2; cannot containV₄ | Source proof repaired; bounded factor retained. |
| 4.10 bounded control | Ideal(p,T)⊂Λ; local roots at3 | Double dualΛ, defect𝔽_p of orderp; ℤ₃(1) survives rationally with annihilatorT−3 | Finite defects and Tate-root kernel retained. |
| 4.11 Kolyvagin/Maschke | Δ=C₂, sign moduleℤ₂ | Lift1↦1−s projects to2, not1; Δ trivial gives factor1 | Integral multiplier #Δ necessary. |
| 4.12 real all-prime theorem | First real dyadic layer | Norm-generated circular lattice2E gives quotient order2; CM-plus intersectionE gives order1; tower factors(2) versus(1) | Correct two lattices; rationalization removes(2). |
| 4.13 adjoint/twist | One-dimensional actiona, cyclotomic valueu | Dual Tate actionu/a; witha=1,u=4 it is4, not1 | Contragredient then twist retained. |
| 4.14 odd all-prime main | p=3,exceptionalω; dyadic numerator2 | Exceptional class module0 has char(1); half times numerator2 is1. Λ/(p) would be infinite despite rational vanishing | μ-vanishing input necessary. |
| 4.15 split divisors | ℚ(√−7),p=2 | Two prime classes modulo plus relation giveℤ₂; Γ acts trivially, annihilatorT | Correct exceptional factor. |
| 4.16 trivial-zero removal | Λ/(T(T−a)),a≠0 | RemoveT to obtainT−a with value−a at0; original value0 cannot be cancelled numerically | Correct order of operations. |
| 4.17 split extension | ℤ_p⋊ℤ_p with action1+p | Coinvariant kernelℤ_p/p, abelianization𝔽_p⊕ℤ_p | Exact sequence and commutator relation agree. |
| 4.18 Gauss vectors | m=7 and217 | m7 valuations(1,2) give1−2=−1=B₁,χ; norm g·ḡ=8. m217 binary sums5 and6 differ. For α unit≡3 mod8, v₂logα=2 and v₂(2logα)=3 | Correct norm toF, G1 scaling and nonzero log; source assertions differ. |
| 4.19 exceptional derivative | Rank-one lattice, μ=b,λ=4g | IndicesNχ(b) andNχ(g) againstO and4O; quotientNχ(b)/Nχ(g) | Target lattice factor4 cancels correctly. |
| 4.20 class lower bound | Quartic conductor5,p=2 | Norm(B/2)=1/10, Nχ(B/2)=1/2≤class order1 | Fractional lower bound is meaningful. |
| 4.21 odd-prime comparison | C₃ acting onℤ/9 by4 | Norm1+4+7=3 mod9; kernel/cokernel each order3, image{0,3,6} | Integral error terms retained; not a projector. |
| 4.22 both finite branches, including the new Lean theorem | Sextic χ₇; quartic χ₅; quadratic χ₃; enlarged coefficients | Sextic Norm(B/2)=1/7 gives Nχ=1=class order. Quartic B=(−3+i)/5, Norm(B/2)=1/10 gives 1=2·(1/2). Degree-two coefficient extension gives 1=4·(1/4). Quadratic B=−1/3 gives 1=2·(1/2) | Both branches and the exponent e pass; no missing headline. |
| 4.23 finite-ray/log comparison | ℚ(√5),p=3; real cubic at2 | Regulator valuation1 and Euler factor4/3 valuation−1 cancel. Nontrivial sign part of real cubic has order4 | Ordinary/real ray correction cannot be discarded. |
| 4.24 ray transfer | C₂×C₂×C₃,p=3; identity | For C₆=Gal(ℚ(√5)ℚ(ζ₇)⁺/ℚ), inertia orders are2 and3, neither6. In C₂×C₂×C₃ inertia at7 containsC₃; relative degree3 gives αβ=3 and βα=1+σ+σ². Identity gives1 | Cyclic p-Sylow suffices; total ramification overℚ unnecessary. |
| 4.25 real formula | Trivialχ versus faithful C₃-character | Trivial ray quotient rank1 and L-value pole; onℤ/9 withσ=4, norm quotient order3 | Non-p-power and faithfulness conditions retained. |
| 4.26 Gras | ℚ(√5),p=3; real conductor7 cubic,p=2 | At3 E/C completion0, class0, both orders1; middle factor1, not2. At2 nontrivial residue degree2 contributes2²=4, cancelled by enlarged circular lattice | Correct middle factor and enlarged units. |
| 4.27 integral Coleman character | p=5, ρ=ω²; k=1; χ₅ at p=11 | Untwisted basis has θ=ρω⁻¹=ω; Tate twist gives ω². Lχ(u−1)=G_p(0,χ), whereas unshifted G_p(u−1,χ)=L_p(1,χ). At11 the even ρ kills the odd local-root terms, giving zero outer terms | Finite-character twist and Mellin inversion both necessary. |
| 5.1 finite equality | ℚ(√5),χ₅,p=3 and5 | Class order1 and unit quotient order1 at both primes; χ₅(5)=0 gives factor1 | Conductor divisible byp remains covered. |
| 5.2 odd-character formulation | p=3 | Only odd tame characterω; corresponding unramified module0 and characteristic ideal(1) | Exceptional component handled. |
| 5.3 Tate/Greenberg | n=−1,0,1,2; p=3,n=2 | `(r_n,r_(1−n))=(0,0),(0,1),(1,0),(0,0)`; atn2 Selmer0 has char(1), while the bare twisted zeta has a pole | Correct critical ranges and twisted augmentation factor. |

The five Lean headline computations are covered by §§1.6, 4.20–4.22 and 5.1. The nine real-body definitions also discriminate these models:

| Lean definition | Instances | Values / wrong model | Result; change |
|---|---|---|---|
| `classGroupTensorAction` | Identity automorphism; conjugation on ℚ(√−23), p=3 | Identity sends x to x; the three reduced forms of discriminant−23 give class group C₃, conjugation sends its generator1 to2, whereas identity would give1 | Covariant native action retained. |
| `classGroupChiComponent` | Same C₃ class module, quadratic Galois sign/trivial characters | Sign eigenspace C₃ has order3; trivial eigenspace is kernel of−2, hence0 of order1 | Carrier discriminates the character. |
| `classGroupChiQuotient` | Same module and characters | Sign relation is0, quotientC₃; trivial relation is−2, quotient0 | Agrees with components when2 is invertible. |
| `unitTensorAction` | ℚ(√5), ε=(1+√5)/2,p=3 | Conjugation sends ε to−ε⁻¹, hence exponent1 to−1 after 3-adic tensor; identity sends1 to1 | Correct action, not inverse by definition. |
| `globalUnitImage` | Global ε; rational prime3 | ε has all finite valuations0 and lies in image; 3 has a nonzero prime valuation and is excluded | Actual global units, not all nonzero field elements. |
| `unitChiComponent` | Quadratic sign on ε; trivial character | Sign line Oε; trivial line0 after odd-primary tensor | Correct global/eigen intersection. |
| `xiChi` | Quadratic conductor5; trivial group | Cyclotomic norm gives exponent−2 on ε; trivial-group sum returns the norm class unchanged | Unnormalised sum, not zero or normalized projector. |
| `chiUnitQuotient` | Quadratic conductor5,p=3/5; zero global-unit tensor | Quotient by−2 gives order1 at either prime; zero submodule modulo zero also has order1 | Headline uses the actual nonzero circular line; boundary order convention consistent. |
| `primitiveBernoulliOne` | Odd quartic conductor5, inflated to55; trivial character presented modulo3 | Inflated B₁=0 because χ(11)=1, but primitive B₁=(−3+i)/5 up to conjugation; trivial primitive conductor1 gives+1/2 rather than the modulus3 sum0 | Primitive-character operation is essential. |

### Pinned definitions and ownership audit

The inspected pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 18 groups of pinned declarations were opened, including their relevant assumptions. The search was by the objects—norms, eigenvectors, class-group actions, Bernoulli sums, Kummer transitions, logarithms and arithmetic limits—not just the proposed theorem names.

| Pinned declaration(s) | File and line | Scope actually supplied |
|---|---|---|
| `NumberField.RingOfIntegers` | `Mathlib/NumberTheory/NumberField/Basic.lean:101` | Integral closure of ℤ; an actual body, not an arbitrary order. |
| `ClassGroup.mulEquivHom` | `TauCeti/NumberTheory/ClassGroup/Equiv.lean:165` | Covariant automorphism action on native ideal classes; line 172 identifies its action. |
| `Representation.invariants`, `mem_invariants`, `averageMap` | `Mathlib/RepresentationTheory/Invariants.lean:73`, 80, 126 | The fixed-vector carrier and, with finite group and invertible order, averaging. No automatic semisimplicity at p-divisible order. |
| `Algebra.norm_algebraMap`, `norm_norm`, `norm_eq_prod_automorphisms` | `Mathlib/RingTheory/Norm/Defs.lean:100`; `Mathlib/RingTheory/Norm/Transitivity.lean:200`, 270 | Scalar norm, tower law and Galois product, with the finite-free/scalar-tower contexts used here. |
| `IntermediateField.adjoin.finrank`, `Module.finrank_mul_finrank` | `Mathlib/FieldTheory/IntermediateField/Adjoin/Basic.lean:490`; `Mathlib/LinearAlgebra/Dimension/Free.lean:68` | Minimal-polynomial degree and tower dimension; integrality is required in the first. |
| `IsCyclotomicExtension.autEquivPow`, `finrank` | `Mathlib/NumberTheory/Cyclotomic/Gal.lean:77`; `Mathlib/NumberTheory/Cyclotomic/PrimitiveRoots.lean:177` | The exponent convention and totient degree, under irreducibility. |
| `IsPrimitiveRoot.geom_sum_isUnit`, `associated_sub_one_pow_sub_one_of_coprime`, `sub_one_dvd_natCast_of_pow_eq_one` | `Mathlib/RingTheory/RootsOfUnity/CyclotomicUnits.lean:100`, 61, 44 | Coprime smoothing and root divisibility; the unit theorem needs n≥2, and the last theorem needs a nontrivial root in a domain. |
| `IsPrimitiveRoot.sub_one_norm_eq_eval_cyclotomic` | `Mathlib/NumberTheory/Cyclotomic/PrimitiveRoots.lean:330` | Requires n>2; the roadmap treats the sign boundary separately. |
| `Polynomial.cyclotomic.irreducible_rat`, the two evaluation-at-one formulas | `Mathlib/RingTheory/Polynomial/Cyclotomic/Roots.lean:190`; `Mathlib/RingTheory/Polynomial/Cyclotomic/Eval.lean:32`, 136 | Positive conductor irreducibility; value p at prime conductor, value 1 outside all prime powers, with the stated exceptional-conductor conditions. |
| `NumberField.isUnit_iff_norm`, `NumberField.Units.finrank_eq` | `Mathlib/NumberTheory/NumberField/Units/Basic.lean:58`; `Mathlib/NumberTheory/NumberField/Units/DirichletTheorem.lean:461` | Unit criterion and total unit rank. Character multiplicities still come from IntegralIwasawaTheory §4.3. |
| `DirichletCharacter.LFunction_apply_one_ne_zero` | `Mathlib/NumberTheory/LSeries/Nonvanishing.lean:405` | Nontrivial complex Dirichlet character at 1; the logarithmic/Bernoulli comparison remains an additional input. |
| `DirichletCharacter.generalizedBernoulli`, coefficient change, modulus-one and degree-one formulas | `TauCeti/NumberTheory/DirichletCharacter/GeneralizedBernoulli.lean:79`, 99, 110, 159 | The native finite sum, including +1/2 at primitive conductor 1. Passing to the primitive character is substantive. |
| `TauCeti.KummerCoeff`, `kummerMap`, `kummerMap_eq_one_iff`, `kummerIso` | `TauCeti/FieldTheory/GaloisCohomology/Coefficients.lean:125`; `TauCeti/FieldTheory/GaloisCohomology/Kummer.lean:249`, 330, 384 | Finite roots of unity in a separable closure, with discrete topology, and the finite-level Kummer quotient for invertible n. Not the compact inverse-limit comparison. |
| Kummer coefficient power, restriction and corestriction | `TauCeti/FieldTheory/GaloisCohomology/Kummer.lean:463`, 667, 890 | Coefficient transition preserves the element; restriction sends it upward, corestriction takes its norm downward. |
| Principal-unit logarithm convergence, continuity and injectivity | `TauCeti/NumberTheory/LocalField/Logarithm.lean:97`, 165, 285 | Finite p-adic extension; injectivity only when e<(p−1)i. This is not the all-elements Iwasawa logarithm. |
| `TauCeti.completedGroupAlgebra`, projections, extensionality, constructor, group map | `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145`, 161, 179, 186, 252 | Compatible finite quotient algebras. The carrier does not itself construct class-group norm limits, characteristic ideals or a pseudomeasure. |
| Normal basis, CM unit index and total ramification | `Mathlib/FieldTheory/Galois/NormalBasis.lean:120`; `Mathlib/NumberTheory/NumberField/CMField.lean:372`; `Mathlib/NumberTheory/NumberField/Cyclotomic/Ideal.lean:163` | Field normal basis, real-unit index 1 or 2, and p^k(p−1) ramification. Integral normal bases and local unit-limit claims require the roadmap's extra arguments. |
| Dedekind-zeta residue, Hilbert 90, finite-product recurrence | `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:77`; `Mathlib/RepresentationTheory/Homological/GroupCohomology/Hilbert90.lean:134`; `Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean:536` | Native residue theorem; cyclic norm-one y/g(y); product recurrence with generated additive version. |

The supplier inventory located 136 cited section/layer headings. Main was used for existing roadmaps; the available new-roadmap heads were used for the new suppliers. Every citation's section location was resolved, and the mathematical contracts were compared at the points where this roadmap uses them. R01 records the surviving name-level discrepancy. In particular:

- **SelmerIwasawaCohomology:** §§0.6–0.8 (`README.md:179`, 208, 222) supply the actual finite-to-compact Kummer comparison; §§2.1–2.2 (343, 372) supply the localization diagram and product kernel; §3.1 (1373) retains condition (F); §3.5 (1454) excludes p and finite decomposition; §4.20 (2197) supplies the Greenberg/Tate dual dictionary. Its twist notation is translated by the explicit action on γ, not identified by name alone.
- **EulerSystemsAndKolyvaginSystems:** §§1.7–1.8 (`README.md:928`, 981) retain Rubin admissibility, Q(Fr⁻¹) and the tame tensor factor; §§2.4–2.6 (1665, 1683, 1723) supply conductor presentation, twisting and replacement; §3.9 (2283) supplies actual descent; §4.17 (3316) retains both error terms; §§8.37–8.39 (5869, 5887, 5905) supply integral and rational bounds. This roadmap owns the cyclotomic input, nonvanishing and arithmetic identifications, not a second generic descent theory.
- **CyclotomicClassGroupsAndStickelberger:** §0.2 (`README.md:141`) supplies the kernel-intersection carrier; §§2.3–2.5 (461, 480, 497) supply smoothing, Gauss descent and full annihilation; §3.4 (609) supplies the relative class-number product. Section 0.29 here adds the half-norm shift. The native finite tensors are specializations of the shared objects.
- **IntegralIwasawaTheory:** §§1.7–1.8 (`README.md:210`, 223) own circular numbers and the Sinnott lattice; §§2.4,2.6–2.8 (341,381,389,410) own finiteness, weak Leopoldt and global-local/capitulation inputs; §3.5 (511) retains real inertia in the ray dictionary; §§4.1–4.4 (542–572) own logarithmic independence and Leopoldt; §6.3 (760) fixes arithmetic Mellin inversion; §§7.1–7.3 (829,855,875) own unramified interpolation and the odd-prime principal Coleman sequence; §10.4 (1368) owns the Euler quotient. Its §11.7 endpoint is explicitly shared, with the Eisenstein route owned there and the Euler-system/Greither proof interfaces here; these are not competing generic carriers or duplicate Lean declarations.
- **ColemanPowerSeries:** §§0.96,0.100,0.148–0.150 (`README.md:1841`,1929,2657,2671,2685) supply the repaired semilocal citations. §§1.82–1.85,1.93,1.117–1.120 (5648–6284) supply norm, trace, Frobenius and interpolation. §§2.39,3.46,4.24,4.27,4.30 (7124,8076,8610,8655,8711) fix the arithmetic sign and principal image. At p=5 the raw h₂ boundary coefficient is −1 and the normalized moment is +1, matching the stated sign adapter.
- **DirichletPadicLFunctions:** §§0.6,3.4,3.6–3.7,4.1–4.5,4.14 (`README.md:253`,734,827,850,899–1061,1403) own logarithms, analytic values and the Ferrero–Greenberg identity. The Gauss valuation vector and nonvanishing application belong here.
- **PadicMeasuresIwasawaAlgebras:** §§1.7,2.6,2.11,4.2,4.6,5.2 (`README.md:909`,1597,1865,2409,2710,3367) supply the completed-algebra/measure comparison, unit support, dilation, module structure, characteristic ideals and compact limits. The projectors and `isotypicComponent_spec` really are in §4.6 (2747–2760,2841–2849), with invertible group order and the stated coefficient assumptions.
- **ClassicalArithmeticCompletion:** §§1.14,1.47,1.55 (`README.md:713`,1657,1917) supply the norm-residue symbol, Gauss power and ideal factorization. **ClassFieldTheory** Layers 0,4,6–7,11–13 and **ProfiniteCohomology** Layers 5–6,9 supply their listed Herbrand, reciprocity, transfer, Kummer and inflation–restriction inputs. **Chebotarev** Layer 10 supplies prescribed Frobenius classes; **LocalGaloisGroups** Layer 7 supplies the completed multiplicative module; LinearFormsInLogarithms §8.10 is a numbered item at `README.md:894`, not a missing heading.

Object searches used `roadmaps grep`/`roadmaps show`, the main repository, board packages and the supplied open-head material. The searches covered character components, Coleman and circular-unit images, Kolyvagin descent, stable Sinnott indices and Gauss/logarithm lattices. The neighboring AnticyclotomicLocalUnits tame averaging calculation concerns its anticyclotomic local units, not this cyclotomic application. No additional conflicting owner was identified. Searches of the pins found finite ray-class and finite Kummer infrastructure, but not the arithmetic infinite objects that the module docstring lists as unavailable. No ownership claim is based solely on the absence of a proposed declaration name.

## Not verifiable

- **MORITA-1975**, Theorem 1 and §§3–4, printed pp.255–266, used in F.11: uncertified. The sources service tried the official University of Tokyo repository PDF twice; both requests returned HTTP 503. The missing-reference record preserves this request. No claim about that unread text's wording or proof is made. The roadmap's Gamma-function and Gross–Koblitz conventions were nevertheless tested on the displayed small cases and compared with the other legally available sources.
- All 16 referenced works were submitted to the sources service; 15 were readable. Acquisition is not full proof certification. The seeded sample above was checked at its locators, with additional passages opened for the mathematical tests and source issues below. This review does not certify every proof in every referenced work. In particular, an attribution to another work inside a source was not treated as an independently checked primary theorem.
- The five Lean proofs are admitted by design. Successful elaboration and the computed tests certify their types and the tested cases, not completed formal proofs of the endpoints. Ownership searches cover the accessible main, board and supplied open-head material, not inaccessible or unlisted work.

## Source issues

These are issues observed while checking the sources, including ones that the README already repairs. The scan of Greither p.467 was also inspected visually to confirm the exponent misprint in Lemma 2.15(b). They are not additional findings against the roadmap.

- **Error** in RUBIN-ES at III (2), printed p.34 (RUBIN-ES line 1597): the source says the ζ−1 norm formula has no dyadic sign; it should be corrected by the degree sign, or written for 1−ζ, since N(i−1)=2 but ζ₂−1=−2; affects a stated result.
- **Gap** in RUBIN-ES at III Lemma 1.1 proof, printed p.33 (RUBIN-ES line 1574): the source says the residual character can be treated as a character of Δ; it should be killed over its own finite splitting field before using the Δ argument; affects the proof.
- **Error** in RUBIN-ES at III Theorem 2.7 proof, printed p.38 (RUBIN-ES line 1775): the source says the semilocal unit character module is torsion-free; it should be allowed to contain local Tate-root torsion, with global freeness established separately; affects the proof.
- **Misprint** in RUBIN-ES at IX Example 6.2, printed p.143 (RUBIN-ES line 6319): the source says Euler-factor replacement changes the coefficients to ℤ_p(1); it should be ℤ_p, retaining the original coefficient representation; affects a stated result.
- **Error** in RUBIN-ES at Appendix D Lemma 1.1(iii), printed p.164 (RUBIN-ES line 7075): the source says the new tame-prime trace of the logarithmic derivative includes an extra factor ℓ; it should be the inverse-Frobenius term without that factor, as evaluation at X=0 shows; affects a stated result.
- **Error** in RUBIN-ES at Appendix D Lemma 1.4, printed p.165 (RUBIN-ES line 7163): the source says the normalized x-family has tame trace factor −Fr⁻¹ and p-step factor 1; it should be −ℓ⁻¹Fr⁻¹ and p respectively; multiplying by N(m) gives the intended compatibility; affects a stated result.
- **Error** in RUBIN-ES at III Proposition 4.3, printed p.41 (RUBIN-ES line 1915): the source says the raw family satisfies the unscaled tame Euler relation; it should be rescaled by N(m), or retain the extra q⁻¹ in the raw relation; affects a stated result.
- **Error** in RUBIN-ES at Appendix D Lemma 1.1(v) proof, printed p.164 (RUBIN-ES line 7093): the source says logarithm injectivity on 1+(p,X) applies at every prime; it should be restricted to odd p or supplemented by dyadic sign data, since log(−1)=0; affects the proof.
- **Misprint** in GREITHER-1992 at Theorem 2.4 proof, printed p.459 (GREITHER-1992 line 385): the source says the cited Coleman result is Theorem 2.2; it should be Theorem 22 of COLEMAN-1979, printed p.109; affects nothing.
- **Gap** in GREITHER-1992 at Corollary 2.12 proof, printed p.464 (GREITHER-1992 line 564): the source says a nonzero element supplies the required basis over the product coefficient ring; it should be shown nonzero in every character factor, equivalently faithful in this setting; affects the proof.
- **Misprint** in GREITHER-1992 at Lemma 2.15(b), printed p.467 (GREITHER-1992 line 650): the source says the p-divisible-index subtraction uses the ζ_m term; it should be the ζ_m^p term resulting from the substitution i=pj; affects a stated result.
- **Error** in GREITHER-1992 at Theorem 3.7 proof, claim (c), printed p.473 (GREITHER-1992 line 859): the source says the relevant kernel must contain a Klein four group; it should be used only through its exponent-two property: for K=ℚ and M=8, H¹ has order 2; affects the proof.
- **Error** in GREITHER-1992 at the Gauss-sum construction, printed p.490 (GREITHER-1992 line 1469): the source says the initial Gauss element lies in F; it should be placed in the decomposition field and then normed to F; affects the proof.
- **Error** in GREITHER-1992 at (G1), printed pp.490–491 (GREITHER-1992 line 1473): the source says the valuation of the unpowered Gauss element includes a factor m multiplying B₁; it should be B₁ without that factor; mB₁ describes the m-th power; affects a stated result.
- **Misprint** in GREITHER-1992 at Theorem A, Remark (b), printed p.453 (GREITHER-1992 line 188): the source says the dyadic pure-power normalization omits the coefficient-degree contribution; it should be expressed using the coefficient-field norm and its degree-dependent power of 2, retaining the capitulation factor where present; affects a stated result.
- **Error** in GREITHER-1992 at Theorem 4.12, printed p.494 (GREITHER-1992 line 1594): the source says the formula applies without requiring nontrivial restriction to Δ₀; it should be restricted by that hypothesis, as already stated in Theorem C; affects a stated result.
- **Error** in GREITHER-1992 at Lemma 4.13 proof, printed p.495 (GREITHER-1992 line 1620): the source says a cyclic abelian field has a totally ramified rational prime; it should be replaced by total ramification in the relevant relative p-extension; inertia orders 2 and 3 need not equal 6; affects the proof.
- **Error** in GREITHER-1992 at Lemma 4.13 proof, printed p.495 (GREITHER-1992 line 1633): the source says an extension unramified at p has no p-power roots of unity; it should be applied to sufficiently deep principal units; −1 is a counterexample at p=2; affects the proof.
- **Error** in GREITHER-1992 at Theorem 4.14, printed p.495 (GREITHER-1992 line 1638): the source says the middle factor contributes the displayed power of 2 at every prime; it should be the order of the character part of (ℤ_p/2)[Δ], equal to 1 at odd p; affects a stated result.
- **Error** in RJW-PADIC-L at (10.7), printed p.52 (RJW-PADIC-L line 3028): the source says the multiplicative p-completion of a number field is its tensor product with ℤ_p; it should be the inverse limit of the p-power quotients; the multiplicative group is not finitely generated; affects a stated result.
- **Error** in RJW-PADIC-L at §10.5, printed p.52 (RJW-PADIC-L line 3041): the source says the multiplicative norm relation is scalar multiplication by 1−ℓ⁻¹; it should be the Galois group-ring exponent 1−Fr⁻¹; for m=3, ℓ=2 the norm is ζ₃, not c₃/2; affects a stated result.
- **Misprint** in RJW-PADIC-L immediately before Proposition 13.13, printed p.67 (RJW-PADIC-L line 3834): the source says the real unit rank is p^(n−1)(p−1)/2; it should be p^(n−1)(p−1)/2−1, giving rank 0 for p=3,n=1; affects a stated result.
- **Gap** in RJW-PADIC-L at Proposition 13.13 proof, printed p.68 (RJW-PADIC-L line 3844): the source says finite generation over ℤ_p gives the required Mittag–Leffler condition; it should be justified by compact inverse-limit exactness; images under successive multiplication by p do not stabilize; affects the proof.
- **Misprint** in RJW-PADIC-L at Corollary 13.14 proof, printed p.68 (RJW-PADIC-L line 3853): the source says the unit quotient is formed in the reverse order; it should be U/E=(U/C)/(E/C), with the corresponding characteristic-ideal quotient; affects the proof.
- **Misprint** in RJW-PADIC-L at §13.5.2(3), printed p.71 (RJW-PADIC-L line 3995): the source says the indicated unramified range is n≥0; it should be n≤0 in the displayed convention; affects the proof.
- **Error** in RJW-PADIC-L at Example 13.22, printed p.71 (RJW-PADIC-L line 4030): the source says the bare twisted zeta element generates the characteristic ideal; it should be multiplied by the twisted augmentation factor canceling the pole; affects a stated result.
- **Misprint** in RJW-PADIC-L at Remark 13.23, printed p.72 (RJW-PADIC-L line 4040): the source says the untwisted archimedean factor gives the dual argument; it should be the factor for ℚ_p(1), namely π^−((s−1)/2)Γ((s−1)/2); the stated rank remains 1; affects nothing.
