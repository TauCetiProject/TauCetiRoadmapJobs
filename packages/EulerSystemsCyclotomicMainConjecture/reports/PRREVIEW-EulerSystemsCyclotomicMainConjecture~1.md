# Review of EulerSystemsCyclotomicMainConjecture (pull request #1311 at 804fe8a)

**Verdict:** needs changes

## R01 (P2) — State the pure 2-power branch of the finite main theorem

**Location:** `TauCetiRoadmap/EulerSystemsCyclotomicMainConjecture/Suggested.lean:156`; `TauCetiRoadmap/EulerSystemsCyclotomicMainConjecture/README.md:3562`. The Lean theorem requires “`hnotpower : ¬ ∃ n : ℕ, χ ^ (2 ^ n) = 1`”.

**Claim:** The README's finite Iwasawa–Leopoldt endpoint includes the pure 2-power character, with the extra factor 2 and coefficient-degree exponent. The acceptance test excludes precisely that branch. Its module docstring neither states it nor identifies a missing carrier for it.

**Witness:** At `K=ℚ(ζ₅)`, `p=2`, the quartic character has `B₁,χ⁻¹=(−3+i)/5`, norm of `B/2` equal to `1/10`, and class order `1=2·(1/2)`. The present hypothesis excludes it.

**Repair:** Add the pure 2-power finite equality on the existing `classGroupChiQuotient` and `primitiveBernoulliOne` carriers. For the README's minimal coefficient field, retain the existing field, compatibility, oddness, cyclic Sylow and unramifiedness hypotheses, replace `hnotpower` by `n≥1`, `orderOf χ=2^n` and `[E:ℚ₂]=2^(n−1)`, and assert `card = 2 * ‖Norm(B/2)‖⁻¹`. A scratch copy with exactly these binders and conclusion elaborated at the pins with only `sorry` warnings. For enlarged coefficients the factor 2 must also acquire the extension-degree exponent. The quartic example gives 1 on both sides after this repair, whereas omitting 2 gives 1/2.

## R02 (P3) — Remove the 87 HTML anchors rejected by the gate

**Location:** `TauCetiRoadmap/EulerSystemsCyclotomicMainConjecture/README.md:299`, and the analogous target anchors throughout the file; for example “`<a id="chi-sum"></a>`” at line 1482.

**Claim:** The push gate fails its `residue` rule with 87 occurrences. A passing Lean build does not override this failure.

**Witness:** The supplied head-specific gate result is `residue=87`, all other counters zero, and `FAIL`.

**Repair:** Delete the explicit HTML anchors and retarget their internal links to the actual Markdown heading fragments. For example, the §0.19 link must resolve to the rendered “0.19 Twisted sums” heading after its custom anchor is removed. Rerun the gate; the required result is `residue=0` and `PASS`. No repository edit or repaired gate run was performed in this read-only review.

## R03 (P3) — Remove purported Lean API and Check names absent from the acceptance test

**Location:** `TauCetiRoadmap/EulerSystemsCyclotomicMainConjecture/README.md:1484`, 1500–1512, 2540–2552. Examples are “`chiSum_mem`”, “`chiSum_sign_regular`” and “`chiPart.test_not_exact`”.

**Claim:** These API and Check lists present undeclared names as Lean interfaces. The brief requires prose API bullets unless the declaration is actually in `Suggested.lean`, and prohibits named Lean counterparts for Checks. The same pattern occurs throughout the README; it is not a request to expand the Lean file into an API catalogue.

**Witness:** `Suggested.lean` contains nine definitions and four theorems; none of the three example names occurs there. The C₂ sign calculation itself correctly gives `[1]−[s]`.

**Repair:** Keep those mathematical statements and computations, but rewrite the API and Check bullets in prose. Retain code names only for actual pinned/supplier declarations and the thirteen declarations in this acceptance test (plus the missing headline from R01). The C₂ Check should still compute `[1]−[s]`, contrasting it with the ordinary trace `[1]+[s]`; its undeclared label contributes nothing.

## R04 (P3) — Correct supplier locations and remove invented declaration spellings

**Location:** `TauCetiRoadmap/EulerSystemsCyclotomicMainConjecture/README.md:225`, 354–355, 524–525 and 2654. The semilocal contract cites “§§0.97 and 0.148–0.150”.

**Claim:** ColemanPowerSeries §0.97 is a minimal-polynomial theorem, not the semilocal tower. Also, `SelmerData.selmer_eq_ker` and `EulerSystem.twist_eval` are not declaration names in the cited suppliers. The required mathematical statements do exist nearby, so this is repairable locator/name drift, not an unowned mathematical prerequisite.

**Witness:** `TauCetiRoadmap/ColemanPowerSeries/README.md:2189` defines the finite semilocal tower (§0.96); line 2221 starts the minimal-polynomial theorem (§0.97). SelmerIwasawaCohomology §2.2 and EulerSystemsAndKolyvaginSystems §2.5 state the needed equations in prose.

**Repair:** Cite ColemanPowerSeries §§0.96 and 0.100 for the tower and norm, retaining §§0.148–0.149 for the scalar and composition laws; cite §0.150 only for evaluation. Cite the Selmer kernel equation by §2.2 and the twist evaluation equation by §2.5 without claiming nonexistent names. The two-factor test then uses `(a,b)↦(N(a),N(b))`, with the first component root embedded as `(1−X,1)`, not the unrelated polynomial `X^p−ρ_n`.

## Verified sound

The review covered both files at the requested head, the 15 seeded source targets, all 87 numbered target sections and their proof routes, the supplied gate, the elaborated signatures, and ownership searches by object. Computations below test normalizations and countermodels; they are not substitutes for proofs of the universal theorems. No file in the pull request was changed. The outside-folder diff is empty. No `set_option`, sorry'd data, additional algorithmic scope, or fully qualified Lean declaration collision was found.

The gate has one failing rule, recorded in R02. Its result is:

```text
set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0
residue=87 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0
lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0
round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0
stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL
```

The prescribed dependency check was run and returned:

```text
depcheck: 205 roadmaps, 1483 edges, 0 problem(s)
```

There is no UPWARD or CYCLE result. The two imported Tau Ceti modules were built first. Direct `lake env lean` elaboration of `Suggested.lean` then exited successfully, with exactly four `sorry` warnings. A separate copy printed all thirteen `#check @name` signatures. The finite-dimensional coefficient fields, scalar towers, cyclotomic overfield, faithful-character conditions and prime/coprimality hypotheses survive in the four theorem types. `globalUnitImage` legitimately needs only its field and coefficient-ring binders. No signature repair was needed for an existing declaration. In a scratch copy, each admitted theorem resisted `simp`, `rfl`, `infer_instance` and an exact available assumption; inspection of the pinned arithmetic APIs found no single library theorem closing these endpoints. No padding finding is made.

The headline inventory is: the cyclotomic and Stickelberger Euler systems (§§0.17, 0.28, 0.30–0.31); finite Kolyvagin divisibility (§1.6); Iwasawa divisibility and unit/class equality (§§2.4, 3.4); the cyclotomic main conjecture (§3.5); the all-prime Coleman sequence and circular image (§§4.4, 4.7–4.8); real and odd-character all-prime main conjectures (§§4.12–4.14); the exceptional Gauss/logarithm and relative class bounds (§§4.18–4.21); both finite Iwasawa–Leopoldt branches (§4.22); ray transfer, real ray formula and Gras (§§4.24–4.26); the prime-to-p character Coleman comparison (§4.27); finite unit-index equality, odd-character and Tate-twist consequences (§§5.1–5.3). Four finite endpoints are stated. The module docstring identifies missing arithmetic norm limits, Selmer/Euler-system comparisons, Coleman operators, ray limits, circular lattices and pseudomeasures for the other infinite or comparison endpoints. R01 identifies the finite omission that needs none of those missing carriers.

### Source sample

All 15 seeded targets were compared with legal text, including standing hypotheses and the surrounding proof where the README derives a variant. No README locator is explicitly labelled unverified. Rubin is the linked author draft; RJW is arXiv v2, with its own pagination; Greither is the published Numdam text. The following are source-line locators, not excerpts.

| Target | Text and printed locator | Comparison |
|---|---|---|
| 0.19 | RUBIN-ES lines 1644–1651, 1659–1672; III (4), Definition 2.2, p.35 | The inverse-character, unnormalised sum is correct. General finite-group linearity and the square relation follow by reindexing; they do not require a projector denominator. |
| 0.25 | RUBIN-ES lines 1563–1570, 1640–1651; III (3)–(4), pp.33,35 | Prime-to-p character order and a chosen twist generator are retained. The README distinguishes compact completion from the discrete divisible module. |
| 0.27 | RUBIN-ES lines 1678–1696; III Theorem 2.3, equation (6), p.36 | Odd p, even nontrivial character and χ(p)≠1 are retained; the factor is a unit because character order is prime to p. |
| 0.31 | RUBIN-ES lines 6193–6239, 6316–6319; IX Lemma 6.1 and Example 6.2, pp.141–143 | Replacement keeps the same coefficient representation and agrees on fields unramified outside the bad support. The README corrects the printed coefficient twist. |
| 3.2 | RJW-PADIC-L lines 2347–2381; Theorem 7.1(ii), Lemma 7.2(ii), p.40 | Residue and derivative multiply to −(1−p⁻¹)log(a); oddness is essential for the generator/log valuation argument. The vanishing argument additionally uses the named class-field and Nakayama suppliers. |
| 4.4 | GREITHER-1992 lines 374–445 and the following Theorem 2.6/Corollary 2.7; pp.459–461 | Dyadic sign terms, coefficient Frobenius and the integral/normalized trace distinction are retained. Product-factor units are embedded with 1 in other factors. |
| 4.6 | GREITHER-1992 lines 518–568; Lemma 2.11 and Corollary 2.12, pp.463–464 | Nontrivial χ and rationalization are retained. The README supplies the needed faithfulness argument over the product ring instead of deducing freeness merely from nonzero. |
| 4.9 | GREITHER-1992 lines 810–902; Theorem 3.7/Corollary 3.8, pp.472–474 | The bounded power of 2, special factor 4 and odd-prime factor are retained. The elementary H¹ correction avoids the source's erroneous order-four assertion. |
| 4.11 | GREITHER-1992 lines 1000–1067; Lemmas 3.12–3.13, pp.477–479 | The annihilator/exponent assumptions and the factor #Δ in the lift are present; integral exactness is not assumed when p divides #Δ. |
| 4.12 | GREITHER-1992 lines 684–706; Theorem 3.1, p.468 | The integral CM-unit equality is distinguished from the real norm-generated lattice's divisibility and equality after inverting p. |
| 4.18 | GREITHER-1992 lines 1450–1508; definitions, (G1), (G2), Lemma 4.8, pp.490–491 | The README explicitly repairs Gauss-sum descent and the valuation normalization. It names the norm to F and supplies an independent Baker–Brumer nonvanishing route. The derivative identity is conditional on the stated primitive odd character with χ(2)=1. |
| 4.22 | GREITHER-1992 lines 169–215; Theorem A, Remarks (a),(b), pp.453–454 | The non-2-power restriction is correct; the pure branch needs the coefficient-degree exponent and extra 2. Its finite Lean omission is R01. |
| 4.24 | GREITHER-1992 lines 1615–1636; Lemma 4.13, p.495 | The text states cyclic fields. The README's abelian/cyclic-p-Sylow extension is justified by the supplied relative inertia argument, and its deep principal-unit subgroup removes dyadic torsion. |
| 4.26 | GREITHER-1992 lines 1638–1684; Theorem 4.14/Corollary 4.15, pp.495–497 | The corrected middle factor is the order of `(ℤ_p/2)[Δ]` in the character component, hence 1 at odd p. The generalized lattice index and enlarged circular units are retained. |
| 5.3 | RJW-PADIC-L lines 3942–4042; §13.5, pp.70–72 | The local inequality, contragredient twist and critical n-ranges are correct after the stated corrections. The integral characteristic identity includes the twisted augmentation ideal omitted by a literal reading of Example 13.22. |

### Adversarial computations

Here `O` is the actual coefficient ring, `Λ=O[[T]]`, and `Nχ(a)=‖Norm(a)‖_p⁻¹`. Zero finite modules have order 1 and unit characteristic ideal. “Retain” means that the stated hypotheses or correction reject the displayed wrong model. Each numbered target has a row; multiple expressions in a row test its coupled API/conventions.

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
| 0.19 twisted sums | C₂ sign; trivial group; S₃ sign regular module | S=[1]−[s], S²=2S; trivial-group sum=id; sign sum in ℤ[S₃] squares to6S, whereas ordinary norm has all + coefficients | Correct without commutativity or division; R03 labels only. |
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
| 0.30 local functional/family | p=3, f=1−T, g=2; tame radicalℓ=2 | Finite reciprocity trace1 mod3 (inverse convention gives2); unscaled levels2/3,−1/3 become normalized2/3,−2/3 | Arithmetic reciprocity and tame scaling retained. |
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
| 4.1 integral χ-quotient | C₂ sign overℤ₂ | Minus ℤ₂ has quotientℤ₂. The inclusion1↦1+s becomes ℤ/2→ℤ₂, zero, so exactness fails on the left | Correct; R03 labels only. |
| 4.2 norm descent | Identity extension; full local units at oddp | Identity norm kernel/cokernel0; −1 has order2 and is absent from the pro-p component | Full/pro-p distinction retained. |
| 4.3 circular tower | p=2,m=3; conductor15,a=3 | Absolute norm toℚ of1−ζ₃i is1; nonprimitive conductor15 input has rational norm25 rather than primitive norm5 | Roots and conductors not interchangeable. |
| 4.4 Coleman sequence | Unramified quadratic at3, Frob(i)=−i; p=2 boundary | β(exp9)=6; β(exp(9i))=12i, versus iβ(exp9)=6i. Dyadic f=a+bX maps to(b,a mod2); f=1 maps to(0,1) | β is not O-linear; sign term necessary. Product root is(1−X,1). R04 citation only. |
| 4.5 semilocal interpolation | Dyadic roots ζ₈→ζ₄ | Nζ₈=−i and N(−ζ₈)=−i; chosen signed roots follow this transition | Retain signed norm sequence. |
| 4.6 character generator | Product ring; Amice δ₁−δ_a | (1,0)≠0 but annihilator0×A₂≠0; transform `(1−X)−(1−X)^a` has linear coefficienta−1 | README supplies faithfulness beyond nonzero. |
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
| 4.22 both finite branches | Sextic χ₇,p=2; quarticχ₅,p=2 | Forχ₇(3)=ζ₆, B=(−6+4ζ₆)/7, Norm(B/2)=1/7, Nχ=1=class order. Quarticχ₅ gives1=2·1/2 | Mathematics passes; add missing pure branch (R01). |
| 4.23 finite-ray/log comparison | ℚ(√5),p=3; real cubic at2 | Regulator valuation1 and Euler factor4/3 valuation−1 cancel. Nontrivial sign part of real cubic has order4 | Ordinary/real ray correction cannot be discarded. |
| 4.24 ray transfer | C₂×C₂×C₃,p=3; identity | For C₆=Gal(ℚ(√5)ℚ(ζ₇)⁺/ℚ), inertia orders are2 and3, neither6. In C₂×C₂×C₃ inertia at7 containsC₃; relative degree3 gives αβ=3 and βα=1+σ+σ². Identity gives1 | Cyclic p-Sylow suffices; total ramification overℚ unnecessary. |
| 4.25 real formula | Trivialχ versus faithful C₃-character | Trivial ray quotient rank1 and L-value pole; onℤ/9 withσ=4, norm quotient order3 | Non-p-power and faithfulness conditions retained. |
| 4.26 Gras | ℚ(√5),p=3; real conductor7 cubic,p=2 | At3 E/C completion0, class0, both orders1; middle factor1, not2. At2 nontrivial residue degree2 contributes2²=4, cancelled by enlarged circular lattice | Correct middle factor and enlarged units. |
| 4.27 integral Coleman character | p=5,χ=ω² | θ=ωχ⁻¹=ω³ is odd; inverse twist restores evenχ. Atk=1 the shifted inputu^(k−1)−1=0, notu−1 | Correct character/coordinate normalization. |
| 5.1 finite equality | ℚ(√5),χ₅,p=3 and5 | Class order1 and unit quotient order1 at both primes; χ₅(5)=0 gives factor1 | Conductor divisible byp remains covered. |
| 5.2 odd-character formulation | p=3 | Only odd tame characterω; corresponding unramified module0 and characteristic ideal(1) | Exceptional component handled. |
| 5.3 Tate/Greenberg | n=−1,0,1,2; p=3,n=2 | `(r_n,r_(1−n))=(0,0),(0,1),(1,0),(0,0)`; atn2 Selmer0 has char(1), while the bare twisted zeta has a pole | Correct critical ranges and twisted augmentation factor. |

The four Lean headline computations are the rows for §§1.6, 4.20, 4.22 and 5.1 above. The nine real-body definitions have these additional tests:

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


### Pinned objects and ownership

The pins inspected are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Text searches located 61 supplier names; declaration bodies/signatures and relevant assumptions were opened. Representative witnesses that determine the arithmetic objects are:

| Declaration | Pinned file and line | What the definition/theorem actually supplies |
|---|---|---|
| `NumberField.RingOfIntegers` | `Mathlib/NumberTheory/NumberField/Basic.lean:101` | Integral closure ofℤ, not an arbitrary order. |
| `ClassGroup.mulEquiv`, `ClassGroup.mulEquivHom` | `Mathlib/RingTheory/ClassGroup/Basic.lean:489`; `TauCeti/NumberTheory/ClassGroup/Equiv.lean:165` | Covariant transport of native ideal classes and its automorphism action. |
| `Representation.invariants`, `mem_invariants`, `averageMap` | `Mathlib/RepresentationTheory/Invariants.lean:73`, 80, 126 | Fixed-vector carrier; averaging needs the finite-group/invertible-order context. |
| `IsPrimitiveRoot.geom_sum_isUnit` | `Mathlib/RingTheory/RootsOfUnity/CyclotomicUnits.lean:100` | n≥2 and coprime exponent; cannot silently include the n=1 junk case. |
| `sub_one_dvd_natCast_of_pow_eq_one` | same file, line44 | Nontrivial root and power relation suffice; primitive-root data is stronger. |
| `IsPrimitiveRoot.sub_one_norm_eq_eval_cyclotomic` | `Mathlib/NumberTheory/Cyclotomic/PrimitiveRoots.lean:330` | Requires n>2 and irreducible cyclotomic polynomial; does not settle the dyadic sign boundary. |
| `Algebra.norm_norm`, `norm_eq_prod_automorphisms` | `Mathlib/RingTheory/Norm/Transitivity.lean:200`, 270 | Finite-free scalar-tower context; Galois product in the latter. |
| `IsGalois.normalBasis` | `Mathlib/FieldTheory/Galois/NormalBasis.lean:120` | Field normal basis. The integral lift used in §4.4 still needs its stated residue/Nakayama argument. |
| `DirichletCharacter.generalizedBernoulli` | `TauCeti/NumberTheory/DirichletCharacter/GeneralizedBernoulli.lean:79` | A finite Bernoulli-polynomial sum with rational scaling. Lines99,110,159 supply coefficient change, modulus-one and B₁ formulas. |
| `TauCeti.KummerCoeff`, `kummerMap`, `kummerIso` | `TauCeti/FieldTheory/GaloisCohomology/Coefficients.lean:125`; `TauCeti/FieldTheory/GaloisCohomology/Kummer.lean:249`, 384 | Finite roots of unity in the separable closure and finite-level Kummer comparison, requiring invertibility of n. They are not the compact inverse-limit comparison. |
| Kummer restriction/corestriction | same Kummer file, lines667,890 | Restriction maps elements upward; corestriction maps their norms downward. |
| `TauCeti.log_unitFiltration_injective` | `TauCeti/NumberTheory/LocalField/Logarithm.lean:285` | Requires `(p−1)i>e`; neither all units nor the Iwasawa extension to all nonzero elements. |
| `NormedSpace.log` | `Mathlib/Analysis/Normed/Algebra/Logarithm.lean:89` | Series-based total definition, with junk value outside suitable algebraic structure; not a license to assign log₂2=1. |
| `TauCeti.completedGroupAlgebra` | `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145` | Compatible finite quotient algebra; projections161, ext179, mk186, group elements252. Does not itself define arithmetic class limits or characteristic ideals. |
| `NumberField.IsCMField.indexRealUnits_eq_one_or_two` | `Mathlib/NumberTheory/NumberField/CMField.lean:372` | Index1 or2, sufficient for the odd-prime rank argument. |
| `Finset.sum_range_succ` | `Mathlib/Algebra/BigOperators/Group/Finset/Basic.lean:535` | Generated by `to_additive` from `prod_range_succ`; absence of a literal declaration line is not a missing lemma. |

The supplier search resolved the named mathematical contracts in IntegralIwasawaTheory, ColemanPowerSeries, SelmerIwasawaCohomology, EulerSystemsAndKolyvaginSystems, CyclotomicClassGroupsAndStickelberger, DirichletPadicLFunctions, PadicMeasuresIwasawaAlgebras, ClassicalArithmeticCompletion, ClassFieldTheory, ProfiniteCohomology and Chebotarev, using main for existing roadmaps and the available new-roadmap heads. Every `Needs` line was read; the concrete locator corrections are R04. Main-roadmap shape was compared with Chebotarev, ProfiniteCohomology and PadicMeasuresIwasawaAlgebras.

Specific ownership boundaries checked against their text include:

- CyclotomicClassGroupsAndStickelberger §0.2, `README.md:141`, owns the generic eigensubmodule; §2.4, line480, owns Gauss-sum descent; §3.4, line609, supplies the relative class-number product. The current finite class/unit tensors are arithmetic specializations, not replacement generic carriers.
- EulerSystemsAndKolyvaginSystems §§2.5–2.6, lines1681,1721, supply twists/replacement; §§8.37–8.39, lines5862–5898, supply general divisibility. The current roadmap owns the explicit cyclotomic input and its nonvanishing.
- SelmerIwasawaCohomology §4.20, line2197, supplies Tate-twist identifications. The rank distribution and characteristic-ideal consequences here are additional arithmetic assertions.
- IntegralIwasawaTheory §§1.7–1.8 supplies circular units and the Sinnott lattice/index; §§2.7,3.2–3.5 supplies global-local sequences and class control; §§4.1–4.4 supplies Baker–Brumer and abelian Leopoldt; §§7.1–7.3 supplies unramified interpolation and the odd-prime principal Coleman sequence. Its §12.1, line1587, already states the Wiles character-quotient endpoint. Both introductions explicitly keep the endpoint shared and distinguish the Eisenstein and Euler-system proof interfaces; no duplicate fully qualified theorem is introduced here.
- DirichletPadicLFunctions §§0.6,4.14, lines253,1403, supplies the normalized logarithm and Ferrero–Greenberg identity. The arithmetic Gauss norm, valuation/logarithm lattice and nonvanishing are owned here.
- ClassicalArithmeticCompletion §§1.47,1.55, lines1657,1917, supplies Gauss powers and ideal factorization. Taking the norm from the decomposition field to the character field is an additional construction here.
- Object searches also covered the board packages and provided open-roadmap heads for twisted averages, integral character quotients, Coleman reciprocity, stable Sinnott indices and Gauss/logarithm lattices. AnticyclotomicLocalUnits `README.md:320` has a normalized tame averaging calculation, not this cyclotomic arithmetic construction. No new conflicting owner or duplicate Lean fully qualified name was identified in that search.

## Not verifiable

Of the 16 directly listed references, 15 legal texts were obtained or located in the sources-service cache. **MORITA-1975**, Theorem 1 and §§3–4, pp.255–266 (used in §F.11), could not be read: the University of Tokyo institutional PDF returned HTTP 503 on two service attempts, and no readable cached copy was located. The attempted location was the README's [institutional repository PDF](https://repository.dl.itc.u-tokyo.ac.jp/record/39763/files/jfs220209.pdf). Its detailed locator is not certified. This is recorded in the missing-reference list; the review is not parked.

Zhao and Gross–Dasgupta became readable after the initial URL/classification failures, so they are not outstanding requests. Coleman 1979 became readable on retry: Theorem 22 and its proof are at COLEMAN-1979 lines776–826, printed pp.109–110, and agree with the specialized kernel/image argument in §4.4. The directly sampled Rubin, Greither and RJW texts are all readable. References to books and Coleman 1983 made only through these sources were checked as secondary citations, not independently certified primary editions.

The four Lean proofs remain admitted by design. The computed instances and source comparisons establish the review evidence above, not a formal proof of those headlines or a certification of every auxiliary proof in the cited literature. No unavailable source is treated as verified.

## Source issues

- **Error** in RUBIN-ES at III (2), printed p.34 (line1597): the source says the ζ−1 norm formula has no extra dyadic sign in the divided case; it should be adjusted at ℓ=2, as N(i−1)=2 but ζ₂−1=−2; affects a stated result.
- **Misprint** in RUBIN-ES at IX Example 6.2, printed p.143 (line6319): the source says Euler-factor replacement produces coefficients ℤ_p(1); it should be ℤ_p, since replacement preserves the cohomology coefficient representation; affects a stated result.
- **Gap** in GREITHER-1992 at Corollary 2.12 proof, printed p.464 (lines564–568): the source says nonzero plus a PID assertion proves the displayed element is a free generator; it should establish nonvanishing on every finite character factor of the product ring; affects the proof.
- **Error** in GREITHER-1992 at Theorem 3.7 proof, claim (c), printed p.473 (lines859–865): the source says the nontrivial real intermediate field forces a Klein-four subgroup of the Kummer kernel; it should only prove exponent two; K=ℚ,M=8 has ambient H¹ of order two; affects the proof.
- **Error** in GREITHER-1992 at the Gauss-sum construction, printed p.490 (line1469): the source says the Gauss sum lies in F; it should lie in the decomposition field D, followed by norm to F; affects the proof.
- **Error** in GREITHER-1992 at (G1) and its projected formula, printed pp.490–491 (lines1473–1481): the source says the valuation projection has an extra conductor factor m; it should be B₁,χ⁻¹ for g itself, with m only for g^m; affects a stated result.
- **Misprint** in GREITHER-1992 at Remark (b) after Theorem A, printed p.453 (lines188–192): the source says the pure 2-power contribution uses the reciprocal absolute value without the coefficient-degree exponent; it should raise it to d(χ₂), equivalently use the field norm; affects a stated result.
- **Error** in GREITHER-1992 at Theorem 4.12, printed p.494 (lines1594–1598): the source says faithfulness on the p-Sylow subgroup suffices for the finite ray formula; it should also require nontrivial prime-to-p character, as Theorem C does; affects a stated result.
- **Error** in GREITHER-1992 at Lemma 4.13 proof, printed p.495 (lines1620–1623): the source says a cyclic abelian field has a rational prime totally ramified in the full extension; it should use total ramification in the relative p-extension; affects the proof.
- **Error** in GREITHER-1992 at Lemma 4.13 proof, printed p.495 (lines1633–1634): the source says an extension unramified at p contains no p-power roots of unity; it should exclude them in the deep principal-unit group, since −1 exists at p=2; affects the proof.
- **Error** in GREITHER-1992 at Theorem 4.14, printed p.495 (lines1638–1643): the source says the factor 2^(d(χ′)#Δ_p) occurs at every prime; it should be the order of the character part of (ℤ_p/2)[Δ], hence one at odd p; affects a stated result.
- **Misprint** in RJW-PADIC-L at §13.5.2(3), arXiv v2 p.71 (line3995): the source says the unramified local condition applies for n≥0; it should say n≤0, agreeing with the adjacent displayed formula; affects the proof.
- **Error** in RJW-PADIC-L at Example 13.22, arXiv v2 p.71 (lines4030–4034): the source says the Tate-twisted characteristic ideal is generated by the bare twisted zeta pseudomeasure; it should include the twisted augmentation ideal to remove its pole; affects a stated result.
- **Misprint** in RJW-PADIC-L at Remark 13.23, arXiv v2 p.72 (line4040): the source says the dual gamma factor equals the original evaluated at 1−s; it should be π^−((s−1)/2)Γ((s−1)/2) for ℚ_p(1); affects nothing.

- **Gap** in RUBIN-ES at III Lemma 1.1 proof, printed p.33 (lines1574–1584): the source says an arbitrary residual character is a representation of Δ=Gal(L/K); it should first pass to a field killing that character, including the residual cyclotomic action; affects the proof.
- **Error** in RUBIN-ES at III Theorem 2.7 proof, printed p.38 (lines1775–1777): the source says the semilocal multiplicative limit's χ-part is torsion-free over Λ; it should retain the possible local Tate-root submodule; ℚ(√6) at3 supplies ℤ₃(1); affects the proof.
- **Misprint** in GREITHER-1992 at Theorem 2.4 proof, printed p.459 (line385): the source says the supporting Coleman result is Theorem 2.2; it should be Theorem 22 of Division values in local fields, printed p.109; affects nothing.
- **Misprint** in GREITHER-1992 at Lemma 2.15(b), printed p.467 (lines650–655): the source says the subtracted term retains ζ_m unchanged; it should use ζ_m^p when removing the indices divisible by p; affects a stated result.
- **Error** in RJW-PADIC-L at equation (10.7), arXiv v2 p.52 (lines3028–3030): the source says the Kummer inverse limit is the algebraic tensor F×⊗ℤ_p; it should be the inverse-limit p-adic completion, which differs for non-finitely-generated F×; affects a stated result.
- **Misprint** in RJW-PADIC-L at the discussion before Proposition 13.13, arXiv v2 p.67 (line3834): the source says the real cyclotomic unit rank is p^(n−1)(p−1)/2; it should subtract one; p=3,n=1 has rank zero; affects a stated result.
- **Gap** in RJW-PADIC-L at Proposition 13.13 proof, arXiv v2 p.68 (lines3844–3845): the source says finite generation over ℤ_p implies the Mittag–Leffler condition; it should use compactness for inverse-limit exactness; successive multiplication by p has nonstabilizing images; affects the proof.
- **Misprint** in RJW-PADIC-L at Corollary 13.14 proof, arXiv v2 p.68 (line3853): the source says the local/global quotient is E/U and then (E/C)/(U/C); it should reverse both quotients to U/E and (U/C)/(E/C); affects the proof.
