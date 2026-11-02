# Review of HeegnerPointEulerSystems (pull request #1423 at 0df33db)

**Verdict:** needs changes

## R01 (P1) — The Kato inputs have no resolvable supplying target

**Location:** `TauCetiRoadmap/HeegnerPointEulerSystems/README.md:225`, also lines 1060 and 1630: “§6.6 ‘Elliptic local lattice and Kato period’”.

**Claim:** KatoEulerSystems §§6.6, 7.4 and 7.7 supply the distinguished lattice, ordinary divisibility and trivial-character control used in §§6.9 and 8.16.

**Witness:** `roadmaps show KatoEulerSystems` reports no roadmap on main or in an open roadmap pull request. The main checkout and available package contain no supplying README. The citation resolver independently reports the missing roadmap.

**Repair:** Replace these ordinary supplier citations with precise, registered contracts naming their intended earlier owner, or cite actual existing sections that supply these three inputs. The existing `gap:gl2-integral-rank-zero` covers its specified rank-zero comparison, not the étale distinguished-lattice construction used in §8.16. A merge-order entry and package review reports do not supply a mathematical target. Recheck the same two consumers: the repaired contracts must cover both rank-zero control and integral lattice transport, not only a rational Kato divisibility.

## R02 (P1) — The automorphic comparison inputs are also unresolved

**Location:** `TauCetiRoadmap/HeegnerPointEulerSystems/README.md:247`, especially line 249: “L5a.1–L5a.3 ordinary two-variable equivalence, quartic-CM restriction and factorization”.

**Claim:** AutomorphicCongruences supplies those comparisons and L5w.1/L5w.10 for the reverse divisibility in §8b.5.

**Witness:** `roadmaps show AutomorphicCongruences` reports no roadmap on main or in an open roadmap pull request. No supplying README exists in the main checkout or available package. `gap:primitive-toric-mu` only specifies the primitive toric input.

**Repair:** Give the additional comparison and Hilbert-family inputs actual earlier suppliers or separately registered, precise contracts. Keep `gap:primitive-toric-mu`; its absence from a supplier is not this finding. Test coverage at §8b.5: supplying a primitive toric μ=0 theorem alone still supplies neither quartic-CM factorization nor the reverse divisibility.

## R03 (P2) — Register the two new gap contracts

**Location:** `TauCetiRoadmap/HeegnerPointEulerSystems/README.md:137` and line 187: `gap:zhang-integral-realization` and `gap:modified-heegner-descent`.

**Claim:** These are declared supplier obligations supporting the Zhang identifications and the modified-edge finite and Iwasawa descent theorems.

**Witness:** Neither slug occurs in the 12-entry `gaps` list in `packages/HeegnerPointEulerSystems/design/plan.json`. Both occur in the README. The old Zhang contract assigns the combined input to SerreWeightAndLevelOptimisation.

**Repair:** Add both exact slugs, suppliers, sections and precise needs to the plan's permitted top-level gap list. Make the division of Zhang ownership agree between the two records; retain the level-raising contract and identify the separate integral realization obligation. The modified-edge extension must retain each separately required conclusion and its prime range. The registration test is a slug join: these two unmatched README entries must both match named plan entries. The mathematical separation is necessary: an invertible local map such as diag(1,2) on 𝔽₅² need not commute with a global coordinate swap, so ordinary global-system descent cannot discharge this contract automatically.

## R04 (P2) — Restore a named owner for the elliptic-unit contract

**Location:** `TauCetiRoadmap/HeegnerPointEulerSystems/README.md:257`, with the scope statement at line 13: “Additional independent CM contract”.

**Claim:** The Eisenstein route has an earlier independent elliptic-unit/Katz input.

**Witness:** The plan assigns `eisenstein-elliptic-unit-inputs` to EulerSystemsCyclotomicMainConjecture. The README omits that owner and explicitly says that roadmap supplies no elliptic-unit/Katz target. Independence specifies direction, not ownership.

**Repair:** State this as `What EulerSystemsCyclotomicMainConjecture must provide (gap:eisenstein-elliptic-unit-inputs): …` under its supplier subsection, distinguishing an obligation from its existing cyclotomic theorem, or consistently assign the contract to another eligible earlier owner. Preserve the finite-character, μ, local and integral corrections. Retest the §8b.10 dependency: a theorem over ℚ about cyclotomic units still does not supply a Katz character component over K. This finding does not demand that the declared theorem already be proved.

## R05 (P2) — Import the generic common-multiple bound instead of planning it again

**Location:** `TauCetiRoadmap/HeegnerPointEulerSystems/README.md:1842`: “a collection κ̃_n … one fixed t≥0 … an ordinary Kolyvagin system”.

**Claim:** §8.33 first plans the uniform-error theorem for arbitrary collections whose fixed common multiple is an ordinary Kolyvagin system.

**Witness:** `TauCetiRoadmap/EulerSystemsAndKolyvaginSystems/README.md:3382`, §4.19(b), already states that theorem, including independence from t and zero error under surjectivity. The initial paragraph of §8.33 does not require a Heegner construction.

**Repair:** Delete the generic theorem from this target and cite §4.19(b) in Scope and ownership and the supplier contract. Keep a target applying the bound to the actual family of §§8.27–8.29 through the registered modified-edge extension, carrying the supplier's exact hypotheses. For a rank-one lattice with bottom 5³e, multiplying the collection by 5² changes its ordinary bottom index from 3 to 5; the imported theorem still bounds by 3+E. This same test remains covered without giving the generic theorem a second owner.

## R06 (P3) — Use realizable eigenvalues in the coefficient-ideal Checks

**Location:** `TauCetiRoadmap/HeegnerPointEulerSystems/README.md:727`, line 728 and the Layer 4 example at line 850: “a_19=10,a_149=25”.

**Claim:** These are Checks on the actual weight-two Hecke eigenvalues fixed by §4.1.

**Witness:** The Hasse inequalities fail: 10²=100>76=4·19 and 25²=625>596=4·149. The ideal arithmetic is correct, but these rational eigenvalues cannot occur in the stated arithmetic setting.

**Repair:** Use E:y²=x³−x, p=5 and K=ℚ(√−7), with primes 19 and 199. Direct point counts give #E(𝔽₁₉)=20 and #E(𝔽₁₉₉)=200, so both traces are zero; both primes are inert in K and 2 splits in K. The ideals are (20)=(5), (200)=(25), and their sum is (5), whereas their intersection is (25). Alternatively label the old numbers explicitly as coefficient-only data, as the following ramified-DVR Check already does.

## R07 (P3) — Remove stale declaration names from the statistics citations

**Location:** `TauCetiRoadmap/HeegnerPointEulerSystems/README.md:175` and line 177.

**Claim:** The cited supporting targets have declarations `heegner_logarithm_lowRank`, `anticyclotomic_character_selmer_multiplicity_one` and `anticyclotomic_character_nonvanishing`.

**Witness:** All three prose headings exist in `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:2411`, 2433 and 2449. None of the three declaration names occurs in that README or its Suggested.lean at the available open head.

**Repair:** Retain the exact prose-heading citations and remove the nonexistent code names. This preserves the supplied scopes: the character nonvanishing theorem includes odd bad and ramified p, while the preceding low-rank application has its separate ordinary and modular-comparison hypotheses. This is a locator repair, not a missing mathematical supplier.

## Verified sound

The review read the whole 2,241-line README and the 49-line acceptance file, the repository's normative README and CONTRIBUTING, and main-branch ImaginaryQuadraticClassNumber and EllipticCurves as shape references. Only the requested folder differs from origin/main. No PR files were changed. The scope is an arithmetic Heegner construction, not a replacement plan for a whole existing roadmap. The duplication in R05 is repairable locally.

The worker's gate at the requested head passed every listed check, including the targeted build, source-material/stray-file checks, import rules, sorry-data and set_option checks. Independent elaboration with `lake env lean` on `TauCetiRoadmap/HeegnerPointEulerSystems/Suggested.lean` exited 0 without warnings. The independently run dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This tests order, not the existence or strength of a supplier. R01–R04 are therefore compatible with a passing gate. The declared open-image, scalar-image, uniform square-index and surjective-p=3 contracts are not re-raised merely because their suppliers have not implemented them. The README moves arithmetic JSW error evaluation into §8.36 and uses the earlier generic comparison cones; I have not treated that move as an undeclared use of the old JSW contract.

The headline inventory is: finite rank-one/Sha bounds and primitivity (§§6.1–6.6); Zhang congruence, rank lowering, rank-zero and period/Jochnowitz comparisons (§§6.7–6.11), triangular basis and indivisibility (§§6.18–6.19); all-prime classical/RM finiteness and the uniform square-index theorem (§§7.11–7.13); joint CM distribution, toric and Heegner nonvanishing (§§8.9–8.12, 8.21–8.24); anticyclotomic divisibility including augmentation (§§8.30–8.34); logarithm, control, index square and determinant comparisons (§§8.35–8.40); exact length and refined conditional implications (§§8.41–8.45); rational/integral split equalities and their applications (§§8b.6–8b.13). The module docstring names these groups and their missing arithmetic carriers. It has zero definitions and zero theorem declarations: there are no declaration signatures to #check, no dropped section hypotheses and zero one-tactic padding probes to run. I did not find a headline statable from just the native point/Tate/cohomology carriers and a few simple definitions. In particular an abstract Sha kernel does not identify the elliptic Kummer quotient, and an arbitrary nonzero vector is not the Heegner point.

The following table records explicit boundary and normalization tests for all 130 numbered targets. Finite modules, matrices, divisors and valuation ledgers are tests of the displayed identities and their hypotheses; they are not claimed as computed global elliptic realizations or proofs of the deep theorems. A numerical test passing does not discharge a declared supplier contract. “Retain” means the tested convention or exclusion survives; findings specify the needed changes.

| Target | Instances and computed values on both sides | Result / change |
| --- | --- | --- |
| §0.1 | In ℚ₅(√2) embedded by √2↦[[0,2],[1,0]], conjugating M₂(ℤ₅) by diag(5,1) gives b∈5ℤ₅ for a+b√2. Both descriptions give ℤ₅+5O; √2 fails and 5√2 passes. | Retain the actual transported preimage, not O_K intersected with an untransported order. |
| §0.2 | O=ℤ+3ℤi has index 3 in ℤ[i] and discriminant −36=3²(−4). Its element 3i belongs; i does not. At conductor 1 the index is 1. | Retain global recovery from all local orders. |
| §0.3 | For ℤ[i], Pic has size 1. In ℤ[√−5], the ideal (2,1+√−5) has norm 2 but a²+5b²=2 has zero integral solutions, so it is not principal. | Retain ideal classes, not all ideals identified by their norms. |
| §0.4 | K=ℚ(i), c=1, ℓ=3: residue-unit quotient has size (9−1)/(3−1)=4; the unit-index correction is 2, giving relative degree 2, not 4. | Retain exceptional CM units. |
| §0.5 | For K=ℚ(√−5), c=1, Pic(O_K) has order 2, hence [K[1]:K]=2; for ℚ(i) it is 1. Conductor one is not universally K. | Retain the ring-class quotient. |
| §0.6 | In S₃ take σ=(123), τ=(12). τστ=σ²=σ⁻¹, while σ≠σ². For the trivial class group both sides are 1. | Retain generalized-dihedral inversion, not commuting action. |
| §0.7 | For a local degree-two moving prime with residue size 9, the pro-3 unit quotient has ℤ₃-rank 2, not 1; in local degree one it has rank 1. | Retain the relative tower and its rank hypothesis. |
| §0.8 | In C₃, replacing arithmetic Artin s by geometric Artin gives s⁻¹=s²; twice applying inversion returns s. A norm/restriction square with s↦s² gives s² on both paths. | Retain inversion in points and component maps together. |
| §0.9 | For the split order {(a,b):a−b∈πR}, the generator (π,−π) has norm −π², so the discriminant ideal is (π²). For ℤ₂[i], the different generator 2i has norm 4. | Retain signs at generator level and units at ideal level. |
| §1.4 | If deg(D)=2, deg(2[x]−D)=0 while deg([x]−D)=−1. With d=1 and D a rational cusp the degree is 1−1=0. | Retain denominator clearing before the Jacobian map. |
| §1.5 | A two-element orbit with images P and −P has trace P+(−P)=0 although P≠0. The zero quotient sends both images and their trace to 0. | Retain the actual supplied family; nonzero raw point does not imply nonzero trace. |
| §1.6 | A rank-one point 5e has free index 5; replacing it by 5·5e gives 25. With torsion of order 2 the corresponding full indices are 10 and 50. | Retain quotient scalar and torsion factors. |
| §2.1 | At q=5 the maximal-level neighbor counts are split 2+4=6, ramified 1+5=6, inert 0+6=6; at positive conductor they are 1+5=6. | Retain the three splitting types and predecessor. |
| §2.2 | With unit index u=2 and relative orbit of two equal terms P, u·Tr(P)=2·(2P)=4P. Omitting u gives 2P, differing in a torsion-free group. | Retain the stabilizer correction. |
| §2.3 | At a=2 with both split Artin actions 1, the first-step operator is 2−1−1=0; with one ramified action 1 it is 2−1=1. | Retain the split/ramified distinction. |
| §2.4 | For conductor exponents 2→1→0, the predecessor of exponent 2 is 1, not 0. At q=5 the positive-level trace has five terms and the recurrence subtracts the single predecessor. | Retain repeated-prime indexing and conductor positivity. |
| §2.5 | At Eichler distance 2, R/(π²) is cyclic with π·1≠0, whereas (R/π)² is killed by π. For q=2 a harmonic new-vector relation e₀+e₁+e₂=0 gives e₁+e₂=−e₀, not 0. | Retain endpoint types, reversal and boundary terms. |
| §2.6 | In 𝔽₉=𝔽₃[i], i²=−1: i³=−i and i⁹=i. Thus ℓ-Frobenius and λ-Frobenius at an inert ℓ differ; their square relation holds. | Retain reduction over the actual residue field. |
| §2.7 | An indefinite level with two ramified factors becomes definite after adjoining q (three factors); removing q from that new level returns two. Over 𝔽₉, cubing sends i to −i while ninth power fixes i. | Retain the reduction/specialization domains and marked vertex copy. |
| §3.1 | On the Kummer source ℤ₅/5, 5e maps to 0 and e maps to 1. Over R with ϖ²=5, reduction modulo 5 has ϖ-length 2, not 1. | Retain the actual coefficient ideal and Kummer kernel. |
| §3.2 | For an unramified trivial rank-two 𝔽₅ representation, T/(Fr−1)T=𝔽₅² has dimension 2, not 0; its unramified local condition is therefore not forced to vanish. | Retain finite/unramified membership rather than vanishing. |
| §3.3 | A component group ℤ/25 has 5-length 2; the trivial component group has length 0. Inertia invariants and rational component points need separate maps. | Retain the actual component obstruction. |
| §3.4 | The lattices 5ℤ₅ and ℤ₅ both span ℚ₅ but their quotient has order 5 and length 1. Rational finite/crystalline equality alone cannot identify them integrally. | Retain ordinary-comparison defects and the supplied hypotheses. |
| §3.5 | The image 25ℤ₅⊂ℤ₅ has saturation ℤ₅ and quotient length 2; the identity image has length 0. | Retain saturation, not equality inferred after tensoring. |
| §3.6 | For τ swapping coordinates of ℤ₂², (1+τ)(1,0)=(1,1) and (1−τ)(1,0)=(1,−1); their sum is (2,0). Half of either vector is not integral. | Retain dyadic operators without division by 2. |
| §4.1 | Original proposed traces: 100>76 and 625>596 violate Hasse. Replacements give I₁₉=(20)=(5), I₁₉₉=(200)=(25), sum (5), intersection (25); empty sum 0 and depth ∞. With ϖ²=5, v(ϖ)=1 and v(20)=2. | R06; retain sum/minimum and the explicitly coefficient-only ramified example. |
| §4.2 | In ℤ[C₃], D=σ+2σ² gives (σ−1)D=2−σ−σ²=3−(1+σ+σ²). For C₁ both sides are 0. | Retain the derivative sign and norm term. |
| §4.3 | The scalar 2I on 𝔽₅² has fixed space ker(I)=0; the trivial representation has fixed dimension 2. Big-image invariant vanishing distinguishes them. | Retain the image hypotheses. |
| §4.4 | For the shear A=[[1,1],[0,1]], A⁻¹(0,1)=(−1,1) and A(0,1)=(1,1). Descending through the identified restriction image uses the inverse; restriction then returns (0,1). | Retain the marked restriction isomorphism, not arbitrary inverse data. |
| §4.5 | In ℤ/5, the class of 5 is 0 and the class of 1 is 1. The equations 5=5·1 and 1=5z have respectively a solution and no integral solution. | Retain the Kummer divisibility iff in both directions. |
| §4.6 | For orbit values P,−P the bottom trace is 0 and its Kummer class is 0; the individual class of P may be 1 in a residual line. | Retain trace before bottom-class identification. |
| §4.7 | Changing a cyclic generator by 2 mod 5 multiplies the inverse factor by 3; 2·3=1 mod 5. Changing only one factor gives 2, not 1. | Retain scalar class and cyclic tensor together. |
| §4.8 | 7 mod 25 reduces to 2 mod 5. For ϖ²=5, p^m requires ϖ-depth 2m; depth 1 permits mod ϖ but not mod 5. | Retain reduction direction and ramification index. |
| §4.9 | For bottom sign +1, ν=0,1,2 gives signs +1,−1,+1. Multiplying every sign by −1 changes the bottom sign already at ν=0. | Retain the fixed bottom/Fricke normalization. |
| §4.10 | Extending 𝔽₅ to 𝔽₂₅ preserves the dimension of a marked line at 1. Replacing its marking by multiplication by 2 sends the chosen vector 1 to 2, not to 1. | Retain common residual field and marked maps; R03. |
| §5.1 | For cyclic order 6, Σ(i=1..5)i=15 is 0 mod 3 but 1 mod 2. The odd-coefficient transverse argument cannot silently cover p=2. | Retain the odd-prime restriction here and separate dyadic descent. |
| §5.2 | Over 𝔽₅ the reduced polynomial with a≡ℓ+1≡0 is the zero map, while the divided comparison has rank 2. For χ=diag(1,2) and swap S, χS(e₁)=(0,2), Sχ(e₁)=(0,1). | Retain the local divided map; no automatic global cohomology action; R03. |
| §5.3 | An edge map −1 on 𝔽₅ sends 1 to 4 and preserves its order 5. The ordinary identity edge sends 1 to 1, so preserving orders does not make the two relations identical. | Retain modified edges and their registered descent obligation; R03. |
| §5.4 | The central scalar −I gives scalar difference −2: a unit at p=3 with valuation 0, and valuation 1 at p=2. | Retain the odd-prime Sah argument and the dyadic error. |
| §5.5 | With Weil matrix J=[[0,1],[−1,0]] and τ=diag(1,−1), Jτ=[[0,−1],[−1,0]] is symmetric. In the two-dimensional symplectic space a Lagrangian has dimension 1, not 2. | Retain conjugation-twisted pairing and self-dual local lines. |
| §5.7 | For S=𝔽₅ʳ and V=𝔽₅², Hom(S,V) has 1,25,625 elements at r=0,1,2. The upper and lower unipotents fix two different lines whose intersection is 0. | Retain the evaluation pairing and independent detection requirements. |
| §5.8 | A component defect ℤ/25 has length 2 and a separate local torsion defect ℤ/5 has length 1. Their direct sum has length 3; deleting either leaves 1 or 2. | Retain separate kernels/cokernels; the general source does not itself evaluate them for every curve. |
| §5.9 | For a split Tate curve, v(q)=5 gives component order 5, v(q)=1 gives order 1; if μ₅ is in the local field, the latter still has a subgroup of E[5] of order 5. | Retain both independent negative controls. |
| §6.1 | For initial lattice ℤ₅e and point 5³e, index length is 3; the bound length(M)≤3 gives paired finite length ≤6. A zero point instead has infinite index. | Retain nonzero bottom and paired length. |
| §6.2 | For a nonzero preferred residual line of dimension 1, the clean conclusion gives opposite dimension 0; total dimension is 1+0=1. | Retain the nonzero bottom hypothesis and Gross's residual assumptions. |
| §6.3 | The span of 1 in 𝔽₅ is all 𝔽₅ (dimension 1); the span of 0 has dimension 0. The latter cannot generate a nonzero same-sign Selmer line. | Retain nondivisibility in the generation assertion. |
| §6.4 | The clean exact sequence has dimensions Sel[p]=1, E(K)/p=1, Sha[p]=0, hence 1=1+0. The zero bottom would provide no such equality. | Retain the corrected Gross/Matar–Nekovář assumptions. |
| §6.5 | A free index 5³ has square 5⁶ and length 6; an index 1 has square 1 and forces Sha[p∞] order 1 in the clean bound. | Retain the square and torsion conventions. |
| §6.6 | M₀=3, d=1 gives paired length 2(3−1)=4; d=0 gives 6. Scaling by 5 changes (M₀,d) to (4,2), leaving length 4. | Retain the distinction between bound and primitive equality. |
| §6.7 | A marked congruence up to unit 2 sends residual value 1 to 2, both nonzero; it cannot send 1 to 0. The zero class stays 0. | Retain the common representation and unit normalization; R03. |
| §6.8 | A nonzero projection 𝔽₅³→𝔽₅ has kernel size 25 and dimension 2=3−1. The zero map has kernel size 125 and dimension 3. | Retain nonzero localization; do not use the ℓ≠p Euler characteristic at p. |
| §6.9 | A length ledger with Selmer length 2 and local sum 1 gives v(L/Ω)=3=2+1. If L=0 its valuation is ∞ and the finite-length assertion is inapplicable. | Retain K, coefficient DVR and both twist inputs; R01. |
| §6.10 | A period-normalized value 1 reduces to 1 mod 5 and is a unit; value 5 reduces to 0 and is not. A unit multiple 2 preserves the first test. | Retain the period ratio before the Jochnowitz unit test. |
| §6.11 | v(η)=3 and v(ξ)=1 give v(η/ξ)=2. Two geometric component contributions of length 1 give 1+1=2; using η alone would give 3. | Retain the ratio, geometric component convention and Hypothesis ♥. |
| §6.12 | Support ∅ gives ν=∞; support containing conductor 1 gives 0; support first at a product of two distinct permitted primes gives 2. It counts neither one nonzero class nor repeated factors. | Retain the extended minimum and squarefree support. |
| §6.13 | For a selected localization, values 0 and 1 respectively satisfy and fail the vanishing condition. A coefficient-prime place excluded from the admissible set is not included merely because a totalized localization was assigned 0. | Retain the domain of the base-locus definition. |
| §6.15 | In a pair of one-dimensional 𝔽₅ local lines with pairing xy, 1 pairs with 1 to give 1 and with 0 to give 0. Exact orthogonality excludes simultaneous nonzero values with product 1. | Retain local signs and global reciprocity inputs. |
| §6.18 | ν=0,1,2 gives the asserted preferred dimensions 1,2,3 and opposite bounds 0,1,2. A triangular 3×3 matrix with diagonal (1,1,1) has determinant 1; replacing its last diagonal entry by 0 gives determinant 0. | Retain the detection and triangular nonzero-diagonal hypotheses. |
| §6.19 | A normalized residual class 1 stays nonzero under unit 2; multiplication by 5 gives 0. Thus a p-divisible quotient cannot inherit indivisibility uncorrected. | Retain optimal quotient and unit denominator; R03. |
| §7.1 | In ℤ², y=(12,18) has depths v₂(gcd)=1 and v₃(gcd)=1, and 0 at all other primes. In ℚ a nonzero element has unbounded divisibility at every prime. | Retain finite generation and non-torsion. |
| §7.2 | SL₂ has determinant image {1}, of infinite index in ℤ₅×; GL₂ has the full determinant image. Residual irreducibility alone therefore does not prove adelic openness. | Retain the declared open-image contract, not an unproved inference. |
| §7.3 | For scalar u=−1, v₃(u−1)=0 and v₂(u−1)=1. Scalar matrices span dimension 1, while M₂ has dimension 4; scalar existence alone does not give the full matrix-algebra bound. | Retain separate scalar and commutant inputs. |
| §7.4 | With unit index 2 and uncorrected orbit count 8, the actual orbit degree is 4. With coefficient ramification index 2, a p-depth 1 requires uniformizer depth 2. | Retain unit and coefficient losses in prime detection. |
| §7.5 | Multiplication by 5 kills a component quotient ℤ/5, whereas multiplication by a unit 2 does not. Passing to rational coefficients kills that quotient but does not prove its integral vanishing. | Retain a denominator bound, not division inside the residual module. |
| §7.6 | With all other error constants 0, the dyadic extra term 21v₂(2) is 21, at odd p the same term is 0. | Retain the explicit dyadic loss. |
| §7.7 | A finite group (ℤ/25)² has exponent 25 but order 625. ℚ₅/ℤ₅ contains elements of orders 5ⁿ for all n and has no bounded exponent. | Retain exponent versus cardinality and the cofiniteness input. |
| §7.8 | For E:y²=x³−x, M=ℚ(i) and conductor N=32. The prime 2 ramifies in M, whereas a Heegner K for this N must split 2; K=M fails that condition. | Retain the distinction between CM and Heegner fields. |
| §7.9 | With vanishing odd-prime errors the bound is B=0, hence annihilator p⁰=1 and zero primary group; dyadically the retained 21 term gives a nonunit annihilator 2²¹. | Retain CM character descent and its dyadic errors. |
| §7.10 | If x has order p³, then p²x has order p, not 0. Thus absence of p-torsion forces the entire p-primary group to vanish. | Retain the almost-all-prime argument with finitely many exceptional groups. |
| §7.11 | A rank-r free group modulo one non-torsion line has free rank r−1: ranks 1 and 2 give quotient ranks 0 and 1. A bounded-exponent quotient forces the first case. | Retain non-torsion and finite generation in the rank-one conclusion. |
| §7.12 | An RM module of O_L-rank 1 with [L:ℚ]=2 has ℤ-rank 2; quotient by a nonzero O_L-line has rank 0. Calling it ℤ-rank 1 would be wrong. | Retain the RM coefficient field and integral context. |
| §7.13 | For index 5 and d_E=1 the bound is #Sha dividing 25. An exponent-5 group (ℤ/5)³ has order 125 and fails 125 dividing 25. | Retain the separate declared uniform square-index theorem. |
| §8.1 | For p=5,a_p=1 the split augmentation is (6−1)²=25 and the inert factor is 6²−1=35. In a nontrivial group ring the split expression 27−σ−σ⁻¹ has unit coefficients but augmentation 25. | Retain content versus augmentation and split versus inert factors. |
| §8.2 | For the stabilization algebra with α=2, predecessor 2 and current value 4, α⁻¹(4−α⁻¹·2)=3/2. Omitting the predecessor gives 2. | Retain the unit-root predecessor correction and class-number shift. |
| §8.3 | Using α=2, p=5 and a=α+p/α=9/2 in the recurrence, trace of α⁻ᵏ(x_k−α⁻¹x_(k−1)) reduces to α⁻(k−1)(x_(k−1)−α⁻¹x_(k−2)); the x_(k−1) coefficient is (a−p/α)/αᵏ=2/2ᵏ on both sides. | Retain the recurrence with actual unit root; this is a recurrence test, not a Frobenius trace example. |
| §8.4 | A zero transition map with required bottom value 1 has 0 preimages. Two constraints on a two-element set with solution sets {0} and {1} have intersection size 0 although each alone has size 1. | Retain simultaneous finite solvability before compactness. |
| §8.5 | With identity transitions on {0,1} and bottom unrestricted there are two compatible families, the constant 0 and 1 families. Fixing bottom 0 leaves one; a forbidden bottom leaves none. | Retain existence data; compactness alone supplies neither the chosen bottom nor uniqueness. |
| §8.6 | For a two-component semilocal value (1,0), the first projection is 1 and the second is 0. Hence arbitrary nonzero cohomology data do not identify the constructed bottom class. | Retain Kummer/Shapiro and the specified Heegner image. |
| §8.6a | Scaling a Heegner line by 5 adds 1 to its quotient length and 2 to the square. A Tate-lattice map diag(5,1) has cokernel order 5, while scalar [5] has cokernel order 25. | Retain scalar and isogeny corrections separately. |
| §8.7 | For C₂, its nontrivial character takes its generator to −1 and has exact conductor at that quotient; the identity character takes it to 1 and factors through the trivial quotient. | Retain primitive character strata, not all characters. |
| §8.8 | For F=ℚ one real-place sign contributes −1; including one additional inert sign gives (−1)²=+1. Omitting the real place reverses both values. | Retain the total sign parity. |
| §8.9 | For f=1 and probability measures both integrals are 1, difference 0. On a two-point permitted fibre an indicator has mean 1/2; a forbidden-component indicator has mean 0. Duplicated coordinates force the unequal-coordinate indicator to 0 versus product mean 1/2. | Retain component fibres, probability normalization and pairwise P-irrationality. |
| §8.10 | On a permitted two-point fibre each point has probability 1/2>0, while an omitted point would have orbit frequency 0. The limiting discrepancy is then 1/2, contradicting distribution. | Retain finite-level surjectivity only in the permitted fibre. |
| §8.11 | On C₂, toric values (1,−1) give Fourier coefficient 2 at the nontrivial character and 0 at the trivial one. Constant values (1,1) instead give 0 and 2. | Retain the nonexceptional toric input; nonzero function alone does not give every primitive coefficient. |
| §8.12 | A stratum with two character values (1,0) has one nonzero value and satisfies existence; it fails a claim that both are nonzero. | Retain existence in sufficiently deep strata, not universal character nonvanishing. |
| §8.13 | For p=5,a_p=3 the split scalar is (6−3)²=9 and the inert scalar 36−9=27, both units. In Λ, 1 and 1+T have augmentation 1 but are unequal; scalar augmentation does not identify families. | Retain family-level unit comparison. |
| §8.14 | At p=5 the positive infinity-type exponents 4 and 20 are divisible by p−1; 1 is not. Their conjugate types are (4,−4) and (20,−20), not (4,4). | Retain algebraic/crystalline domain and reciprocity convention. |
| §8.15 | Values with divisibilities 2 and 5 have minimum 2. A zero class has extended index ∞, but its zero image in R/(ϖ³) has truncated depth 3. An empty stratum has minimum ∞. | Retain extended versus truncated indices and uniformizer normalization. |
| §8.16 | For (I,C,s)=(5,5,5), IC/s=5. For two étale-transport ledgers (5,1,1) and (25,1,5), both ratios are 5 while raw products are 5 and 25. | Retain saturation factors; the actual lattice supplier is R01. |
| §8.17 | With p-parts 5 and 25 the product valuation is 3; congruence modulo 5⁴ preserves each valuation. Two K-primes over each rational split prime give product valuation 6, not 3. | Retain all K-places and sufficiently large m. |
| §8.18 | For G=0 and L=R in degree 0, Cone(G→L)[−1] has H¹=R; the unshifted cone has H⁰=R. If L=0 and G is degree 1, H¹ of the fibre is H¹(G). | Retain the outer shift, unshifted inner local cones and H⁰ error. |
| §8.19 | At p=5,a_p=1, split L_p=25 has valuation 2; inert L_p=35 has valuation 1. Both equal their respective Φ₀, not one shared value. | Retain quotient invariants, not full local torsion. |
| §8.20 | Injective reduction at primes of residue characteristics 3 and 5 with finite group orders 12 and 20 bounds the remaining torsion by gcd(12,20)=4; the 3-part is bounded by 20 and the 5-part by 12, so both are trivial. | Retain two distinct good residue characteristics and the relative tower argument. |
| §8.21 | For a C₂-orbit (P,−P) in a torsion-free group, the nontrivial character trace is P−(−P)=2P≠0. A torsion orbit becomes 0 after rationalization. | Retain the prescribed torsion character and nontorsion conclusion. |
| §8.22 | In the odd-sign branch the central value is forced to 0 while a first derivative can be 1; in the even-sign branch a central value 1 is allowed. These are different nonvanishing statements. | Retain root number and derivative-versus-value distinction. |
| §8.24 | In Λ=ℤ₅⟦T⟧ the element T is nonzero with annihilator 0, but its augmentation is 0. Thus a zero bottom specialization does not contradict Λ-nontorsion. | Retain geometric nonvanishing before the Λ-adic deduction. |
| §8.25 | For p=3 and α_r(γ)=4^(3ʳ), r=0,1,2 gives valuations v₃(3)=1, v₃(63)=2, v₃(262143)=3. The characters are nontrivial and approach 1. | Retain the increasing-depth, nonconstant family. |
| §8.26 | For f(T)=T(T−5), zeros are 0 and 5. If 0<v₅(T)>1 and T≠0 then T≠5 and f(T)≠0; approaching 0 does not require evaluating at the zero 0 itself. | Retain zero isolation and nontrivial near-one specializations. |
| §8.27 | For empty conductor the derivative product is 1 and the restriction comparison is the identity. In a rank-two local model χ=diag(1,2) still sends e₂ to 2e₂, so replacing it by a global identity gives different values. | Retain intrinsic tensors and local modified compatibility; R03. |
| §8.28 | For an ordinary positive line span(e₁) in 𝔽₅², e₁ has quotient image 0 while e₂ has quotient image 1. Both are nonzero global vectors, but only the first meets this local condition. | Retain the actual local filtration and error groups. |
| §8.29 | For twist α=6, its partner is 1/6 and αα⁻¹=1, whereas α²=36. With semilocal components 1,2, the signed sum is −3 rather than 3. | Retain inverse twists, conjugation and paired local maps. |
| §8.30 | For quotient length 3 and paired torsion length 4, 4≤2·3=6. Over a DVR, (T⁴) contains (T⁶); reversing ideal containment would fail. | Retain characteristic-ideal direction and rank-one hypotheses. |
| §8.31 | A module Λ/(T) is nonzero at augmentation but becomes 0 after inverting T. Λ/(5) becomes 0 after inverting 5 instead. The two localizations discard different factors. | Retain the weaker localized scope. |
| §8.32 | p=5,a_p=1 gives split C_p=25 with v=2 and inert C_p=35 with v=1. A conductor of depth 1 permits mod 5 but not mod 25. | Retain initial factor and coefficient-depth condition. |
| §8.33 | For bottom 5³e, multiplying by 5² changes its index from 3 to 5; the common-multiple bound is still 3+E, not 5+E. E=0 gives 3. | R05: import the generic theorem; retain the actual modified Heegner application after R03. |
| §8.34 | At augmentation, lengths M=2 and Q=3 give 2≤3 and paired 4≤6. M=4,Q=3 gives 4≤3 false; inverting T makes both modules 0 and hides the failure. | Retain augmentation control with error independent of closeness. |
| §8.35 | For E:y²=x³+8x+2 over ℚ₅, reduction has 5 points. A lift P=(1,6) mod 25 has 2P=(7,1), 3P=(17,24), 4P=(11,14)≠−P=(1,19); hence no 5-torsion lift. Thus b=5,h=1,s=5 and hs=b, not h=b. | Retain positive/saturated lattice distinction and quotient invariant b. |
| §8.36 | With #Sha=25, C=5, h=5 and two rational Tamagawa lengths 1,2, the control valuation is 2+2+6+2=12; counting rational bad primes once gives 9. With h=1, b=s=5, t=2, C=5 and trivial bad factors, control gives 5⁴=25·25 and I=5³. | Retain squared local cokernel and all K-primes; the arithmetic formula uses generic supplied error sequences. |
| §8.37 | Using h=1,b=5,s=5 gives (hbs)²=625=b⁴, whereas h⁴=1. The index-square cancellation therefore requires the saturation factor. | Retain the corrected local factors through the integral comparison. |
| §8.38 | For a line scaled by a=γ, involution gives aι(a)=γγ⁻¹=1, whereas a²=γ². For scalar a=5 the norm factor is 25. | Retain involution and dual determinant orientation. |
| §8.39 | A Heegner quotient of length 3 has square length 6. A paired torsion determinant of length 6 gives equality; length 4 gives only the bound, not equality. | Retain the determinant/characteristic equality criterion. |
| §8.40 | A specialized finite defect (ℤ/5)⁴ has length 4 and order 625; after tensoring with ℚ₅ it is 0 with trivial rational index. Integral determinant transport must retain 625. | Retain finite specialization cones. |
| §8.41 | M₀=3,M∞=1 gives 2(3−1)=4; scaling by 5 gives 2(4−2)=4. Over 𝔽₃ four lines cover all 9 vectors; over 𝔽₅ four lines cover 17<25. | Retain exact length and the declared p=3 rigidity extension. |
| §8.42 | A family can have bottom 0 and a higher class 1; its total support is nonempty. The identically zero family has all indices ∞. | Retain whole-system nonvanishing, not a nonzero-bottom conclusion. |
| §8.43 | Rational Tamagawa p-parts 5 and 25 contribute 1+2=3; the two K-primes above each contribute 6, whose half is 3. | Retain the factor of two and the source normalization. |
| §8.44 | With v(L_p)=2, v(X_BK)=2 and v(Tam_E)=3, the index-square ledger is 2·2+2+2·3=12, so the index has valuation 6. | Retain scalar local product, dual twist and determinant hypothesis. |
| §8.45 | A normalized refined profile M∞=3 agrees with rational Tamagawa length 3; M∞=4 does not. Rescaling the family changes M∞ by 1 and requires the separate scalar correction. | Retain the conditional equivalence on the fixed normalized family, not an unconditional inert equality. |
| §8b.1 | A BDP square root T has square T²: height-one valuations are 1 and 2. Using one power for both changes the target ideal. | Retain square-root versus squared-function conventions. |
| §8b.2 | The ideals (3) and (1) have height-one (3) lengths 1 and 0, but both become the unit ideal after inverting 3. Scaling a line by 3 adds 2 to its square length. | Retain integral p=3 comparison as a declared contract. |
| §8b.3 | At p=5, ℓ=19 has ℓ+1=20≡0 and is in the prescribed inert branch; ℓ=11 has ℓ+1=12≠0 and is in the other branch. Interchanging the splitting prescriptions changes the local Euler factors. | Retain simultaneous quadratic-field prescriptions and finite avoidance. |
| §8b.4 | A paired bound with length(M)=2 and quotient length 3 gives 4≤6 and (T⁴) containing (T⁶). It does not imply equality 4=6. | Retain the forward divisibility distinct from the reverse input. |
| §8b.5 | If a≥b, c≥d and a+c≤b+d, then nonnegative differences sum to 0. Taking b=2,d=3 forces a=2,c=3; taking a=3,c=3 gives 6≤5 false. | Retain both comparison factors and the independent reverse input; R02. |
| §8b.6 | The ideals (5T²) and (T²) become equal after inverting 5, although their (5)-valuations are 1 and 0. | Retain rational equality without an integral conclusion. |
| §8b.7 | A normalized square length 4 becomes 6 after scaling the Heegner line by 5. Ignoring the scalar gives the false equality 4=6. | Retain the distinguished family and integral correction. |
| §8b.8 | The (0,empty) Greenberg module is torsion (rank 0), while the all-p ordinary dual here has rank 1. Their ranks 0 and 1 preclude identifying the carriers. | Retain local-condition distinction before the rational BDP equality. |
| §8b.9 | At the vertical height-one prime, two lengths 3 and 3 give integral equality; lengths 3 and 4 do not, though both supports disappear after inverting p. | Retain every height-one prime and the stated prime range. |
| §8b.10 | At p=3 a nontrivial unramified quadratic character has Frobenius −1 and inertia 1: it differs from the trivial character on Frobenius and from ω on inertia. Thus the displayed local exclusion has a genuine small-prime instance. | Retain the Eisenstein branch and name its independent supplier; R04. |
| §8b.11 | For an irreducible residual representation at p=3, the p≥5 irreducible branch has false premise and the reducible Eisenstein branch also has false premise. At p=5 the prime-range condition is true. | Retain the two stated branches; do not claim they cover all ordinary p=3 curves. |
| §8b.12 | For normalized rational Tamagawa length 3, the refined conclusion is M∞=3. A family multiplied by 5 has M∞=4 and requires the §8.6a correction. | Retain normalized integral equality before refined divisibility. |
| §8b.13 | A determinant basis with quotient length 3 and paired torsion length 6 gives 6=2·3. Replacing the basis by 5 times itself changes the square index by 2 and cannot preserve the uncorrected equality. | Retain the marked determinant lattice and period data. |

The standing-context tests also exclude the zero ring, equal-characteristic coefficient DVRs, p=1, conductor 0 and inseparable number-field extensions: they are outside the explicitly stated domain. At n=1, the empty coefficient ideal is 0 and its depth is ∞, not the natural-number default 0. At rank 0 the nonzero-bottom hypothesis fails. An empty family of compact constraints still needs a nonempty compact carrier; the stated finite-intersection condition includes that test. A noncompact group does not meet the compact-open probability-Haar hypothesis of §8.9. None of these exclusions removes the explicitly planned dyadic or CM branches.

The 15 seeded source checks were read in the supplied legal extractions, at the locators below. No README locator was marked unverified. Page numbers are those of the versions listed in References; the Gross scan has two printed pages per extracted image and interleaves columns, so the independent Howard/Matar–Nekovář texts were also used.

| Sample | Locator actually read | Scope and comparison |
| --- | --- | --- |
| 1.5 | howard lines 833–855, §1.7, pp.19–20 | Actual cyclic N-isogeny, ring-class field, cusp and fixed quotient are present. This is the classical branch; all-discriminant and quaternionic CM objects are separately supplied by GrossZagierAndArithmeticHeights §§0a.2–0a.4, not inferred from Howard's excluded discriminants. |
| 2.6 | gross lines 174–190, Proposition 3.7, pp.240–241; howard lines 855–862, (13), pp.19–20 | Norm and reduction relations use the specified primes and Frobenius. The 𝔽₉ test distinguishes ℓ-power from λ-power Frobenius. |
| 2.7 | zhang lines 660–707, §§3.5–3.6, (3.18)–(3.19) and Theorem 3.1, pp.209–211 | Good-prime reduction and bad-prime specialization have different targets; the latter uses the designated vertex copy. The target retains both. |
| 3.4 | howard lines 800–829, §1.6, pp.18–19 | Rational Kummer local conditions are propagated to lattices and discrete quotients. This does not supply a universal integral equality with an ordinary lattice; §§3.4–3.5 retain the comparison hypotheses and defects. |
| 5.2 | howard lines 919–940, Proposition 1.7.4, p.21 | The divided operator is constructed on the finite local reduction groups, then identified with a coefficient automorphism. The README correctly does not infer the global lift claimed in the following proof; see Source issues. |
| 5.8 | howard lines 186–238, §1.1, pp.5–6, and gross lines 254–277, Proposition 6.2/proof, pp.244–245 | These give propagation, local duality and the unramified/component obstruction. They support retaining separate defects. They do not state a universal numerical identification of all three arithmetic error lengths; the README leaves their arithmetic evaluation to its comparison targets. |
| 6.8 | zhang lines 1064–1138 and 1161–1172, Lemma 5.1, Theorem 5.2, Proposition 5.4, pp.222–225 | Local agreement away from q, finite/singular lines at q, and nonzero localization give the kernel and a one-dimensional drop. The README excludes the erroneous ℓ=p use of Lemma 5.1. |
| 6.9 | zhang lines 1374–1413, Theorem 7.1/proof, pp.231–232; skinner lines 54–79, Theorem B, p.2 | The GL₂-type formula is over K with the stated period and local factors. Skinner's input uses residual hypotheses and a ramified exact-level prime; the roadmap does not manufacture full integral SL₂ image. The supplier issue is R01, not a contrary source formula. |
| 6.11 | zhang lines 1291–1320, Theorem 6.4/proof, pp.229–230; pollack-weston lines 1128–1156, Theorem 6.8, p.21 | Pollack–Weston has squarefree level and CR. Zhang supplies the stated extension under Hypothesis ♥. The ratio η/ξ and the nonsquarefree alternative are retained; two N⁺ primes in that alternative need not both be residually ramified. |
| 7.8 | nekovar lines 1646–1675, Proposition 6.2.1, pp.35–36 | Absolute irreducibility, scalar endomorphisms and absence of the relevant quadratic self-twist are compared in the source's RM context. The elementary split-conductor argument keeps the elliptic CM field distinct from K. |
| 8.9 | cv-dynamics lines 121–136, 350–416, §§2.1–2.2, Theorem 2.9, pp.4,10–11 | S1–S3, B split at P, distinctness modulo P-rational elements, component fibres and compact-open G are present. The source uses geometric Artin at lines 400–402; the README transports it by inversion. |
| 8.15 | bcgs lines 811–838, §2.2.1 and Proposition 2.2.1, pp.16–17 | R is the integer ring of a finite extension of ℚ_p, with uniformizer depth. Zero has index ∞. Deep-prime invariance is a theorem, not part of the definition; its p=3 proof obligation is declared separately. |
| 8.16 | bcgs lines 505–609, §1.2.2 and Lemma 1.2.5, pp.11–12; wuthrich lines 183–190, Theorem 4, p.384 | Distinguished lattices and odd-prime étale isogenies are present. The README's IC/s comparison follows by indexing the positive lattice inside the saturated one, and is more carefully separated than the raw source equality. The missing actual supplier remains R01. |
| 8.17 | bcgs lines 681–695, Lemma 1.2.8 and Remark 1.2.9, p.14 | Congruence of local p-parts gives product equality once m exceeds their total valuation. The product runs over K-primes, yielding the square of the rational split-prime product. |
| 8.19 | cs lines 835–854, Lemma 3.3.3, p.16 | The factor is H⁰ of the ordinary quotient and the local ordinary/positive comparison before removing full local torsion. Both inverse twists occur. Split and inert residue fields give the distinct computed factors. |

Matar–Nekovář was additionally obtained through the sources service from the README's arXiv:1808.09544v2 link. Propositions 6.4–6.5 on p.30, matar-nekovar lines 1514–1537, give the corrected residual assumptions used in §§5.7 and 6.2–6.4. This text explains why simply copying the disjointness step in Gross would be insufficient. No source file was copied into the worktree or report.

The pin audit opened the following 26 named Mathlib declarations and six Tau Ceti declarations/carriers. Paths in this table are relative to the corresponding pinned library repository. Mathlib is at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

| Declaration(s) | File and line at the pin | Relevant restriction |
| --- | --- | --- |
| Subring.comap | `Mathlib/Algebra/Ring/Subring/Basic.lean:173` | Preimage only; no full-order theorem. |
| ClassGroup.equivPic; CommRing.Pic.mapRingHom | `Mathlib/RingTheory/PicardGroup.lean:876`, 579 | Domain for the first; semiring base change for the second. |
| PadicInt | `Mathlib/NumberTheory/Padics/PadicIntegers.lean:71` | Norm-bounded subtype, with prime fact. |
| WeierstrassCurve.Affine.Point | `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477` | Infinity or nonsingular affine point. |
| Module.length | `Mathlib/RingTheory/Length.lean:30` | Extended natural length, not automatically finite. |
| Nat.primeFactorsList | `Mathlib/Data/Nat/Factors.lean:38` | 0 and 1 both give []; positivity/squarefreeness come from the arithmetic context. |
| IsDiscreteValuationRing.ideal_eq_span_pow_irreducible | `Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:362` | Nonzero ideal and chosen irreducible. |
| PadicInt.ideal_eq_span_pow_p; mem_span_pow_iff_le_valuation | `Mathlib/NumberTheory/Padics/PadicIntegers.lean:545`, 472 | Nonzero ideal; nonzero element, respectively. |
| DihedralGroup.sr_mul_r, sr_mul_sr, inv_r, inv_sr | `Mathlib/GroupTheory/SpecificGroups/Dihedral.lean:97`, 101, 105, 109 | The abstract cyclic-dihedral model does not construct class-field conjugation. |
| hensels_lemma | `Mathlib/NumberTheory/Padics/Hensel.lean:459` | The strict norm inequality is bound at line 449; ordinary a_p mod p is simple. |
| PadicInt.isUnit_iff | `Mathlib/NumberTheory/Padics/PadicIntegers.lean:385` | Unit iff norm 1. |
| MonoidAlgebra.single | `Mathlib/Algebra/MonoidAlgebra/Defs.lean:222` | Finite-support basis, no completion. |
| Submodule.span | `Mathlib/LinearAlgebra/Span/Defs.lean:46` | Infimum of containing submodules; no saturation. |
| LinearMap; MonoidHom | `Mathlib/Algebra/Module/LinearMap/Defs.lean:84`; `Mathlib/Algebra/Group/Hom/Defs.lean:366` | No topology/continuity fields. |
| TensorProduct.tmul | `Mathlib/LinearAlgebra/TensorProduct/Defs.lean:97` | Actual algebraic bilinear tensor. |
| Module.finrank | `Mathlib/LinearAlgebra/Dimension/Finrank.lean:61` | Cardinal-to-natural conversion is not a finite-generation hypothesis. |
| ENat | `Mathlib/Data/ENat/Defs.lean:17` | WithTop ℕ, including ∞. |
| Pi.compactSpace; IsCompact.inter_iInter_nonempty | `Mathlib/Topology/Compactness/Compact.lean:1177`, 293 | Compact factors; closed sets and every finite intersection nonempty. |
| ContinuousCohomology.tateShafarevich | `Mathlib/RepresentationTheory/Homological/ContCohomology/Sha.lean:71` | Intersection of localization kernels for supplied fields and coefficients; no elliptic comparison. |
| TauCeti.TateModule | `TauCeti/Algebra/Module/Torsion/TateModule.lean:115` | Compatible p-power torsion sequences, as defined at lines 73–95. |
| WeierstrassCurve.nonempty_linearEquiv_tateModule, free_tateModule, finrank_tateModule | `TauCeti/AlgebraicGeometry/EllipticCurve/TateModule/Basic.lean:73`, 80, 94 | Elliptic curve, separably closed field, prime ℓ nonzero in that field. |
| WeierstrassCurve.Affine.fg_point_of_numberField | `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/FinitelyGenerated.lean:121` | Number field and ellipticity. |
| TauCeti.ContinuousCohomology.map_eq_id_of_inner | `TauCeti/RepresentationTheory/Homological/ContCohomology/InnerConjugation.lean:297` | Locally compact group, smooth discrete coefficients and the specified inner compatible pair. |

Object searches at these pins found no Heegner/Kolyvagin or anticyclotomic construction that would replace the missing arithmetic carriers. The sole Heegner text hit in Mathlib was a comment about Heegner numbers in `Mathlib/Analysis/Real/Pi/Chudnovsky.lean:29`. The audit also searched orders/Picard groups, Tate modules, Sha kernels, local conditions, group-ring basis operations, valuation ideals and compactness, rather than relying on prospective declaration names alone. None of these existing elementary objects is redeclared in this empty acceptance file.

The ownership search used `roadmaps grep` across main and the indexed open heads, and opened 32 named supplier READMEs: 30 resolved and the two failures are R01–R02. Existing roadmaps with revisions were checked on main; for the fetched main copies (including the completed GlobalNumberFields, LocalFieldsRamification and Chebotarev) their content agreed. Open-head ownership was checked, including the supplied GrossZagierAndArithmeticHeights, PadicHodgeRegulators, ModularIwasawaMainConjectures and RankZeroOneBSDPartII context. The latter consumes this roadmap rather than supplying it. The target Suggested.lean declares no fully qualified name, so there is no cross-roadmap Lean-name collision.

Resolved supplier locators (README line numbers, grouped by object):

- Orders and towers: GlobalNumberFields Layer 11 (`Completed/GlobalNumberFields/README.md:571`); ImaginaryQuadraticClassNumber H1.4 (`TauCetiRoadmap/ImaginaryQuadraticClassNumber/README.md:43`); ClassFieldTheory Layers 12–13; LocalFieldsRamification Layer 0; Chebotarev Layer 10. Units, arithmetic/geometric reciprocity and normalized valuations remain explicit.
- CM geometry: EffectiveClassNumbers §2.8, Classical Heegner construction (line 643), supplies the conductor-one trace; ComplexMultiplicationAndExplicitReciprocity's ideal-lattice/reciprocity layers; ShimuraVarieties §§4.4,7.14; GrossZagierAndArithmeticHeights §§0a.2–0a.4 (lines 176–230), §3.2 (1125), §§9.10,9.14,9.20,9.22. The last supply rational/finite-point comparisons, with the integral family extension declared separately.
- Curves and integral models: ModularCurvesPartII §§17.1–17.3 (lines 4245,4269,4291); HilbertModularVarietiesAndShimuraCurves §R18.2.6 and §§R18.5.15–R18.5.18, including the class-set graph at §R18.5.17a (2372); EllipticCurveModularity R29.5 (1471); EllipticCurves Layers 2,4,6,7; HeightsRationalPointsAndObstructions §1.7 (614); NeronModelsAndSemistableAbelianVarieties §§1.2,1.10,2.1–2.2,2.6,4.3–4.6,5.0a–5.0c. Marked quotient maps, component points, both vertex copies and dart reversal are retained.
- Cohomology and descent: SelmerIwasawaCohomology §2.12a (675), §2.19 (821), §§3.9–3.10 (1537/1562), §4.12 (1994), §4.28 (2373); ArithmeticGaloisDuality R02.2.2–R02.2.3 (1303/1401), R02.4 and D7; EulerSystemsAndKolyvaginSystems §§1.6,1.16,3.1–3.8,4.13,4.18–4.19,5.2,5.10–5.13,8.28,8.31,8.36. Specialization keeps correction cones. Ordinary systems do not automatically meet the modified-edge contract. R05 identifies the generic duplicate.
- Statistics scope: ArithmeticStatisticsPartVI headings at lines 2411,2433,2449 supply the low-rank and classical trivial-tame-character branches. R07 repairs their declaration-name locators. General totally-real F and prescribed torsion characters distinguish this roadmap's §8.21.
- Integral representations: FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.4.21–R07.4.25 (6407–6564), R07.5.6a (7776); FaltingsFinitenessAndIsogenyTheorems R28.4.5–R28.4.6/R28.6.7; ArithmeticGaloisRepresentations §§3.5,6.1–6.4a. Odd-prime finite-coefficient comparison does not replace the dyadic classification or the declared image bounds.
- Level raising: SerreWeightAndLevelOptimisation §§1.1–1.3 (167,185,213), §2.4 (388); GL2AutomorphicRepresentationsAndTransfer R17.3 (1576). A q-new form or rational transfer alone does not give integral quaternionic multiplicity one; R03 separates that obligation.
- Iwasawa and regulators: ModularIwasawaMainConjectures §§0.5–0.10,1.3 (850),1.7 (982); PadicMeasuresIwasawaAlgebras §§1.6–1.7,3.1,3a.1 and Layers 4–5; PadicHodgeTheory §3.5 (732); PadicHodgeRegulators §§1.3,1.9–1.10,8.17–8.22. Character evaluation, zero isolation and rational regulators do not remove the declared integral lattice obligations.
- Additional obligations: GeometryOfNumbersAndQuadraticArithmetic §4.2 is real dynamics; the nonarchimedean extension is a declared gap. EulerSystemsCyclotomicMainConjecture has cyclotomic/circular-unit scope; the independent elliptic-unit/Katz obligation needs the owner repair in R04.

## Not verifiable

- No sampled source was inaccessible: the supplied legal cache and the additional Matar–Nekovář fetch sufficed. No missing-text request is needed. The assertions checked concern the listed preprint/published versions; later journal renumbering was not substituted.
- KatoEulerSystems §§6.6/7.4/7.7 and AutomorphicCongruences L5a/L5w cannot be checked as ordinary supplier targets in the available main/open-head material; R01–R02 specify the repair. Their names in the merge order do not certify their contents.
- Declared supplier extensions remain obligations, not established mathematics in this review. In particular the p=3 rigidity and integral comparison, adelic/scalar-image bounds, integral family logarithm, primitive toric input and uniform square-index extension were assessed as contracts, not proved from weaker sources. R03–R04 concern their declaration/ownership consistency.
- §5.8's references give the local-error framework and component obstruction, not an explicit universal formula for every error constant. The ledger checks that these quantities must stay separate; it does not certify an unstated numerical equality. Likewise the finite-module rows do not claim to realize arbitrary ledgers by global elliptic curves.

## Source issues

- **Gap** in howard at Theorem 1.7.5, printed p.21 (howard lines 943–950): the source says local coefficient automorphisms induce commuting global cohomology automorphisms; it should establish global Galois equivariance or use a separately justified modified-edge descent; affects the proof.
- **Error** in zhang at Lemma 5.1(1), printed p.222 (zhang lines 1066–1082): the source says local H¹ vanishes exactly when invariants vanish at every prime; it should exclude ℓ=p, where the local Euler characteristic contributes the representation dimension; affects a stated result.
- **Error** in bcgs at Remark 1.2.4, printed p.12, and Corollary 1.2.12 proof, printed p.14 (bcgs lines 574–575,711): the source says full local p-primary torsion has the same order as the unit-root quotient; it should distinguish h from quotient invariants b and retain the saturation index s with hs=b; affects a stated result.
- **Gap** in bcgs at Lemma 1.2.5, printed p.12 (bcgs lines 583–608): the source says the saturated ordinary local lattices identify with the positive cohomology lattices; it should retain their finite saturation indices when transporting localization cokernels; affects the proof.
- **Gap** in bcgs at Theorem 2.2.2, printed p.17, and Lemma 2.2.4, printed p.18 (bcgs lines 832–838,905–923): the source says the exact-length theorem includes p=3, but its rigidity input assumes p>3; it should supply the characteristic-three rigidity argument or restrict that proof's range; affects the proof.
- **Gap** in gross at §9 preceding Proposition 9.1, printed pp.249–250 (gross lines 415–426): the source says K and ℚ(E[p]) are disjoint using p prime to the discriminant; it should justify the residual cohomology vanishings without that unstated restriction, as in matar-nekovar Propositions 6.4–6.5; affects the proof.
