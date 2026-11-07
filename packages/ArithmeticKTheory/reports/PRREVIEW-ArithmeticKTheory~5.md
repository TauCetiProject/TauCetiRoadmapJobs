# Review of ArithmeticKTheory (pull request #1418 at 3f68345)

**Verdict:** needs changes

Full re-review. The previous review (at 543ffc2) accepted with no finding, so there is nothing to re-check finding by finding; the 159 changed lines are the new target curveSteinbergHomology_fg in §3.2, five new supplier subsections under Exact supplier contracts, the matching scope, dependency and consumer sentences, and two new references. Every passage of the roadmap was reviewed, changed or not; the sampled targets were re-opened at their locators. One blocking finding (a supplier contract naming target ids that the supplier does not have at its head) and three P3 findings; the gate fails on the build advisory count. The mathematics of the new §3.2 target is sound (table below).

## R01 (P2) — AutomorphicLFunctionsAndLocalFactors ids that exist nowhere

Location: `TauCetiRoadmap/ArithmeticKTheory/README.md` line 529 “The targets *curve-bundle-slopes* and *hn-bounded-truncations* supply …”, repeated at lines 1259–1260 (the *Needs:* line of curveSteinbergHomology_fg) and 1608–1609 (Layer 3 Dependencies).

Claim: the supplier AutomorphicLFunctionsAndLocalFactors has targets with these ids.

Witness: at the head of its open pull request (merge order line 80, earlier than ArithmeticKTheory at line 127) the roadmap has no asterisked ids at all; a fixed-string search of every open roadmap and main for `curve-bundle-slopes` and for `hn-bounded-truncations` returns only the three lines of this README. The content exists under numbered headings: “AL.3.10.5 Curve bundle slopes and Harder–Narasimhan filtrations” (slopes, semistability, existence and uniqueness of the filtration, the polygon and the truncation polygon, for a smooth projective geometrically connected curve over 𝔽_q) and “AL.3.10.7 Bounded curve-bundle loci and shtuka truncations” (bundles of fixed rank and degree under a fixed upper polygon form a finite-type family). AL.3.10.6 supplies the semicontinuity this target does not use.

Repair: cite the targets as the supplier numbers them, in all three places: “AutomorphicLFunctionsAndLocalFactors AL.3.10.5 (slopes, Harder–Narasimhan filtrations and polygons) and AL.3.10.7 (boundedness of bundles of fixed rank and degree under a fixed upper polygon)”. Tested: both headings resolve at the #924 head (its README lines 2345 and 2371 as printed by the roadmap service); nothing else in the supplier contract changes.

## R02 (P3) — the gate fails on the build advisories; module header

Location: `TauCetiRoadmap/ArithmeticKTheory/Suggested.lean` line 1 `import Mathlib`.

Claim: the push gate passes.

Witness: the worker's gate at this head ends `build=2 FAIL`, the two entries being the advisory “imports `Mathlib` from package `mathlib`, which is designed for use with the module system; consider adding `module`”. `lake env lean` on the file itself succeeds with exactly the three `declaration uses 'sorry'` warnings (lines 50, 56, 69), so this is the header form, not an elaboration failure.

Repair: replace the first line by the module-system header

```lean
module

public import Mathlib

@[expose] public section
```

(the rest of the file unchanged). Tested on a copy in the scratch directory at the pinned Mathlib 1b1ccf4b and Tau Ceti 2fd255d9: it elaborates in 5 s with only the three `sorry` warnings and no advisory.

## R03 (P3) — Grayson cited by the whole paper; the two new references are not recorded

Location: `README.md` line 1232 “(Quillen, Oberwolfach report 26/1974, p. 7; Grayson, pp. 69–90; K-book, IV.6.9 …)” and the References entries at lines 5105–5113.

Claim: every claim has an exact locator and every cited work is recorded in the manifest.

Witness: the step the route takes from Grayson is a specific theorem (for c large, the subcomplex of c-unstable vertices is Γ-equivariantly homotopy equivalent to the Tits building of V, so H̃_(n−2)(U_c) ≅ St(V) and the other reduced homology vanishes); “pp. 69–90” is the page range of the whole paper. The two new works, Quillen's Oberwolfach report and Grayson's LNM 966 paper, have no entry in the package manifest (`packages/ArithmeticKTheory/sources.toml` has the key `quillen` for the Seattle text only). The Oberwolfach report is a legal institutional copy (its p. 7 states exactly the theorem the README attributes to it: for the coordinate ring of a complete nonsingular curve over 𝔽_q minus one point, H_i(Aut(P); St(F⊗P)) is finite for i > 0 and finitely generated for i = 0; quillen-oberwolfach lines 230–233 in the review's scratch fetch); Grayson's paper resolves only to a paywalled publisher page.

Repair: give Grayson's theorem or section number for the homotopy equivalence of the unstable subcomplex with the Tits building (and, separately, the page where the finiteness of orbits of semistable-type vertices is drawn), citing the published version; record `quillen-oberwolfach` (institutional, certified; locator p. 7) and `grayson-curve` (uncertified, with its locator) in the manifest. The README's statement of Quillen's result is otherwise verified at the source.

## R04 (P3) — AlgebraicCurves layer for the constant field

Location: `README.md` line 537 “Layers 8 and 12 supply the constant field of a function field and its regular projective model”, and line 1262.

Claim: AlgebraicCurves Layer 8 supplies the constant field.

Witness: on main, AlgebraicCurves “Layer 0: function fields, constant fields, and places” defines the constant field (its README line 418, `k̃ := algebraicClosure k F`); “Layer 8: constant-field extensions, Galois ramification, and inseparability” (line 870) is about extensions of the constant field and the perfectness traps, and Layer 12 (line 1468) is the regular projective model. The target uses the constant field 𝔽 = H⁰(X, O_X) and the model only.

Repair: cite “AlgebraicCurves Layer 0 for the constant field and Layer 12 for the regular projective model” in both places (Layer 8 may stay if the exact-constants comparison is wanted, with that said).

## Verified sound

### The new target curveSteinbergHomology_fg (§3.2, README lines 1193–1265)

The route is Quillen's reduction with Grayson's semistable-bundle proof, and each step was checked:

- Vertices of the reduced building of GL(V ⊗ F_∞) are homothety classes of O_∞-lattices (ReductiveGroupsPartII RG2.2.4 *gl-building-lattice-chains*, main README line 3410: “In B_red the vertices are the homothety classes [Λ]”); contractibility is RG2.2.1 *building-metric* (line 2901); RG2.2.2 gives facets and fixers. Dimension n−1 and local finiteness (finite residue field) are properties of that building.
- Gluing a lattice with P (Beauville–Laszlo at ∞) gives E_L with E_L|_(X∖∞) = P, and ϖ^k L gives E_L(−k∞). Stabilizer: g L = ϖ^k L gives E_L ≅ E_L(−k∞), degrees deg E_L − k·n·deg ∞ = deg E_L force k = 0 (SchemeAndStackFoundations §3.3 `_twist`, main line 4721), so Γ_[L] = Aut(E_L), finite since End(E_L) = H⁰(X, End E_L) is finite-dimensional over the finite field 𝔽 (JacobianChallenge Layer B, main line 137: finite-dimensionality for proper X/k).
- Orbits outside U_c: the gap is twist-invariant and isomorphism-invariant, degree moves by n·deg ∞, so a representative has degree in [0, n·deg ∞) and polygon ≤ segment + c; AL.3.10.7 bounds such bundles (finite-type family over a finite field, hence finitely many isomorphism classes), local finiteness bounds the cells. (The ids are the subject of R01; the content is at the supplier.)
- Spectral sequence: E¹_(p,q) = H_q(Γ; C_p(Y, U_c)) = ⊕_σ H_q(Γ_σ; ℤ_σ) by Shapiro, converging to the hyperhomology of the complex, which is quasi-isomorphic to St(V)[n−1] because H_p(Y, U_c) = H̃_(p−1)(U_c) (Y contractible) is St(V) at p = n−1 only. Degree bookkeeping: i = p+q−n+1 > 0 with p ≤ n−1 forces q ≥ 1, so every contributing term is a homology group of a finite group in positive degree, hence finite; i = 0 admits the q = 0 terms ⊕ H₀(Γ_σ; ℤ_σ), finitely generated.
- Non-circularity: the argument uses no finiteness of K-groups and no S-arithmetic cohomological finiteness; the K-book paragraph before IV.6.9 (kbook lines 19053–19066, printed p. 325) records exactly this reduction with Quillen (number fields) and Grayson–Quillen (curves).

### Computed adversarial pass

Notation: C_m is the cyclic group of order m.

| Statement | Instances tried | Values computed on each side | Result |
| --- | --- | --- | --- |
| curveSteinbergHomology_fg, n = 1 | R = 𝔽_q[t], P = R | Units: div(f) supported at ∞ of degree 0 ⇒ f ∈ 𝔽_q^×; Y is a point, U_c = ∅, St₁ = ℤ in degree −1, C_•(Y,∅) = ℤ in degree 0 = n−1; H_i(C_(q−1); ℤ) = ℤ, C_(q−1), 0, C_(q−1), … (finite for i > 0) | Pass |
| same, negative control on the one-point hypothesis | 𝔽₂[t, t⁻¹] (two points at infinity) | R^× = {t^k} ≅ ℤ, H₁(ℤ; ℤ) = ℤ infinite; the one-point hypothesis is retained | Pass |
| same, n = 2 | R = 𝔽_q[t], Γ = GL₂(𝔽_q[t]) on the (q+1)-regular tree | Quotient a ray with vertices O(k) ⊕ O (Nagao); gap of O(k)⊕O: polygon (0,0),(1,k),(2,k) versus segment through (1,k/2): k/2; Aut(O(k)⊕O) = upper triangular with b ∈ H⁰(O(k)) of dimension k+1: order (q−1)²q^(k+1) for k ≥ 1; k = 0 gives GL₂(𝔽_q) of order q(q−1)²(q+1), unbounded orders, finitely many orbits per c | Pass |
| same, U_c for n = 2 | c ≥ 1 | Each unstable O(k)⊕O (k > 2c) has a unique destabilizing line ℓ ∈ ℙ¹(F); vertices with the same ℓ form a subtree; adjacent unstable vertices share ℓ; H̃₀(U_c) = ker(ℤ[ℙ¹(F)] → ℤ) = St₂ in degree n−2 = 0 | Pass |
| same, stabilizer argument | g L = ϖ^k L with k ≠ 0 | deg E_L(−k∞) = deg E_L − k n deg ∞ ≠ deg E_L: no such g; k = 0 gives Aut(E_L) | Pass |
| same, degree bookkeeping of the spectral sequence | n = 3, i = 1 and i = 0 | i = 1: p+q = 3 with p ≤ 2 gives q ≥ 1 only (finite terms); i = 0: p+q = 2 includes (2,0) = ⊕ H₀(Γ_σ; ℤ_σ) finitely generated | Pass |
| §3.2 unipotent obstruction to the duality route | finite-index Γ ⊂ SL₂(𝔽_q[t]) | the unipotent group {(1 b; 0 1)} is infinite of exponent p, so Γ meets it nontrivially: no torsion-free finite-index subgroup | Pass |
| §2.1 localization indexing | R a field; a DVR; ℤ → ℤ[1/p] | Spec¹ = ∅ and identity; one residue term; relative sequence indexed by {p} only | Pass |
| §2.1 signed Bockstein identity B∘δ = −δ∘B | ℤ_(5), modulus 16: x = [5]·[2] | β([5]·[2]) = [2 mod 5]; swapping degree-one factors negates; the m = 2 control cannot detect the sign since a class of order 2 equals its negative | Pass |
| §4.1 w_i | 𝔽₃, i = 1, 2; ℚ, ℚ(i), i odd; i = 2 | 3−1 = 2, 9−1 = 8; 2 and 4; w₂(ℚ) = 24 (kbook VI.2.1.1–2.1.2, lines 28412–28420) | Pass |
| §4.1 W_(−i) versus W_i | i = 2 over ℚ | ζ fixed by g^(−i) iff fixed by g^i: same fixed subgroup, order 24 | Pass |
| §5.3 odd table | totally imaginary F, n = 2i−1 ≥ 3 | kbook Thm 8.2 (line 31296) and 8.4 (line 31382): ℤ^(r₂) ⊕ ℤ/w_i(F), exceptional ℚ(√−7) included (line 31381) | Pass |
| §6.3 real dyadic table | all eight rows | each row equals kbook Theorem 9.11 (lines 32038–32045); ρ with j ≤ ρ ≤ r₁−1 is Cor 9.10 (line 31958); ℚ(√7): K₄(ℤ[√7]){2} = ℤ/2 (Ex 9.10.1) so H²(ℤ[√7,1/2]; ℤ₂(3)) = 0 from the 8k+4 row with ρ = 1 | Pass |
| §6.4 mod-two orders | the eight residues | from Thm 9.7 (lines 31806–31813) with dim H¹ = r₁+r₂+s+t, dim H² = r₁+s+t−1, dim H̃¹ = r₂+s+u, dim H̃² = s+t−1 (lines 31790–31794): d+1, a, b+1, r₁−1+a, j+b, r₁−1+c, j+d, c | Pass |
| §6.4 two-rank function | (1,1,0,0); (2,1,0,1); ℚ(√7) with the prime above 7 added | 1,0,0,0; 2,1,1,0; (s,j): (1,1) → (2,0) with t = 0 keeps j+s+t−1 = 1 (kbook Ex 9.10.1, lines 32003–32007) | Pass |
| §6.7 raw kernel | ℚ, {−1,−1}; ℚ(i); ℚ(√−14) | real and dyadic symbols −1 exclude it; K₂(ℤ[i]) = 0; {−1,−1} nonzero wild class (Weibel Ex 5.6, line 453–455) | Pass |
| §6.8 order identity | exact 0 → A → B → C → D → 0 of finite groups | |A|·|C| = |B|·|D|: |WK{ℓ}|·∏|D_i(F_v){ℓ}| = |K⁺{ℓ}|·|D_i(F){ℓ}| | Pass |
| §6.8 extra residue control | v ∤ ℓ with ℓ | q_v^i − 1 | Soulé's sequence 0 → K_(2i)(O_F) → K_(2i)(O_S) → ⊕ K_(2i−1)(k_v) → 0 with K_(2i−1)(𝔽_q) = C_(q^i−1): the ℓ-part can grow | Pass |
| §6.10 finite-field norm test | m = 4, q^i = 3; m = 8, q^i = 3 | 1+3 ≡ 0 mod 4, invariants {0,2}; action of order 2, norm 4, coinvariants ℤ/8 / 2ℤ/8 of order 2, invariants {0,4}, 1 ↦ 4: isomorphism (3 ≢ −1 mod 8) | Pass |
| §6.10 quadratic specials | d = −17, −14, 2 | −17 ≡ 7 mod 8 special and very special (F_v = ℚ₂(i), 17 ≡ 1 mod 8 a 2-adic square); −14 ≡ 2 mod 16 special, not −2 mod 16 so not very special, F_v = ℚ₂(√2); d = 2: Γ_∞(ℚ₂(√2)) = Γ_∞(ℚ(√2)) = {a ≡ ±1 mod 8} so not special, the README's exclusion d ≠ ±2 is right (Weibel p. 14, lines 436–437) | Pass |
| §6.12 obstruction | ℚ at i = 1; ℚ(√−14), i odd | ℚ nonspecial: quotient 0; special imaginary: quotient ℤ/2 (Weibel Thm 5.5(2), line 451; Hutchinson Cor 5.7, line 858–862) | Pass |
| §7.4 generator count and degrees | ℓ = 3; ℓ = 5 | (ℓ+3)/2 = 3: degrees 0,3,1; 4: degrees 0,7,1,5; residues mod 4: 1,1,0,1; mod 8: 1,1,0,0,0,1,0,1 (kbook Ex 10.6.1, lines 32483–32494) | Pass |
| §7.4 unit module | ℓ odd regular | μ_ℓ ⊕ ℤ/ℓ ⊕ μ^(⊗2) ⊕ … ⊕ μ^(⊗(ℓ−3)) = 𝔽_ℓ(1) ⊕ ⊕_(j=0)^((ℓ−3)/2) 𝔽_ℓ(−2j) since −2j runs over the even residues mod ℓ−1 (kbook 10.4.1, lines 32396–32403) | Pass |
| §7.4 ℓ-torsion of K₃(ℤ), K₅(ℤ) | ℓ = 3 | w₂^(3)(ℚ) = 3 and 48 = 16·3; i = 3 with 2 ∤ 3: none | Pass |
| §7.5 odd rank-filtration table | columns s = 0,1,2 after inverting 2 | Rognes (8.4) (published lines 331–337): (0,0) ℤ, (1,2) ℤ/3, (2,2) ℤ/3, (2,3) ℤ; H₃(K(ℤ)) = ℤ/2 forces d¹ bijective (line 339–341) | Pass |
| §7.5 K₄(ℤ) dyadic | ℤ[1/2]: s = 1, u = 0 | RW Thm 7.11 (line 2295): log₂ #K₄(R; ℤ/2) = r₁+s+u−1 = 1 = rank of K₅/2, so ₂K₄ = 0; §6.4: j+s+t−1 = 0 | Pass |
| §7.5 even orders | a = 0; a = 2 | c₁ = num(B₂/4) = 1, c₂ = num(B₄/8) = 1: orders 2, 1; c₆ = num(B₁₂/24) = 691 = |K₂₂(ℤ)| (kbook Table 10.1.1, line 32240) | Pass |
| §7.5 special-value check | ℚ, k = 1 | 2·2/48 = 1/12 = |ζ(−1)|; without 2^(r₁) one gets 1/24 | Pass |
| §7.5 Vandiver deduction | i = 2a and i = 2a−1 | (P ⊗ 𝔽_p(i))^Δ = P^(χ^(−i)) (kbook 10.9 proof, line 32592–32594): even components 0 under Vandiver gives K_(4a){p} = 0; odd component bounded by reflection to dimension ≤ 1 gives cyclicity (10.10) | Pass |
| §8.4 small-norm congruence | a = b; |N(a−b)| = q² | no division used; equality permits two v-factors and is excluded | Pass |
| §8.5 Gaussian kernel | g = {i,i} | {−i,1+i} = {−i,i} + {−i,1−i} = 2{i,i} + {i,i} + 2{i,1−i} = 3g = 0; {i⁴, i} = 4g = 0 ⇒ g = 0; {−1,−1} = 4g = 0 | Pass |
| §8.5 Euclidean bounds | q = 5 | 1 + 1/√2 = 1.707 < 2.236 = √5; √2 < √5; C = {±1, ±i, ±1±i} (N ≤ 2.5) covers the four nonzero residues | Pass |
| §8.10 | ℤ[i]; ℤ | r₂ = 1, w₂ = 24: ℤ ⊕ ℤ/24 (kbook Ex VI.8.5, line 31530); ℤ/48 | Pass |
| `sUnitSubmonoid` | ℤ with S = ∅, {(2)}; R a field | units of `Set.integer`: {±1}; {±2^a}; R∖{0} | Pass (carried, file unchanged) |
| `integer_isLocalization_iff` | non-torsion [v]; 0 ∈ M; R a field | both sides false; LHS false (zero ring); both true | Pass (carried) |
| `integer_isLocalization_of_torsion_classGroup` | ℤ[√−5], S = {(2,1+√−5)} | [p]² = 1, p² = (2), 2 ∈ p is an S-unit | Pass (carried) |
| `regularPrime_dividedBernoulli_num` | (5,5), (5,7), (3,1), (5,2); k = 0; (37,16) | numerators prime to 5; v₃, v₅ = −1 with numerators ±1; k = 0 excluded by 1 ≤ k; num(B₃₂) = −37·208360028141 | Pass (carried) |

### Sources opened (seeded sample and the changed passages)

| Target | Source, locator, cache line | Result |
| --- | --- | --- |
| 2.1 | kbook V.4.3 (line 24007, p. 401), V.6.1 (24317, p. 406), (6.6) (24544, p. 409), IV.2.4–2.5 (16293–16321, pp. 280–281), V.6.8 (24726, pp. 412–413), V.6.9.2 (24897, p. 414), VI.1 (28044 ff., p. 464) | all at the cited pages |
| 3.2 (new) | quillen-oberwolfach p. 7 (lines 219–233); kbook IV.6.9 and preceding paragraph (19053–19066, p. 325) | statements as cited; Grayson not readable (R03) |
| 4.1 | kbook Def VI.1.7 (28316, p. 468), Def VI.2.1 (28399, p. 469), Ex 2.1.1–2.1.2 (28412–28420, p. 470), Prop 2.2–2.3 (28465, 28494, pp. 470–471) | at the cited pages |
| 5.3 | kbook Thm VI.8.2 (31296, p. 513), Thm 8.4 (31382, p. 514), Thm 9.5(a) (31706–31708, p. 519) | hypotheses as stated |
| 6.3 | kbook Cor VI.9.10 (31958, p. 523), Ex 9.10.1 (31986, p. 524), Thm 9.11 (32029–32045, pp. 524–525) | table row by row |
| 6.4 | kbook VI.9.6, Lemma 9.6.3 (31761–31794, pp. 520–521), Thm 9.7 (31799, p. 521), Cor 9.8 (31869, p. 522), Cor 9.9 (31898, pp. 522–523) | formulas as stated |
| 6.7 | kbook V.6.8.2 (24796, p. 413); wildkernel Def 0.2 (line 51, p. 2), §8 (597–618, pp. 20–21) | as cited |
| 6.8 | wildkernel Lemma 0.3, Cor 0.4 (58–72, pp. 2–3); kbook VI.7 (31033–31161, pp. 509–510) | D_i(F) = H⁰(F, ℚ/ℤ(−i))^∨ is the Poitou–Tate end term |
| 6.10 | hutchinson Def 2.3, Rem 2.4 (139–150, p. 4), Lemmas 2.6–2.7 (172, 201, pp. 4–5 ff.); wildkernel Cor 3.7 (317, p. 10), Lemmas 3.2, 3.4, Rem 3.4.1 (264–294, p. 9), Lemma 5.4, Rem 5.2.1 (433–446, p. 14) | as cited |
| 6.12 | wildkernel Thm 5.5 (449, p. 14), Lemmas 7.2, 7.4 (556–566, p. 18), Props 7.6, 7.8 (584–593, p. 19), Prop 8.4, Lemmas 8.5–8.6, Thm 8.7 (624–657, pp. 20–21); hutchinson Lemma 5.2, Cor 5.3 (800–806, p. 18), Cor 5.7 (858–862, p. 19) | as cited |
| 7.4 | kbook Ex VI.8.3.2 (31359, p. 514), 10.4–10.4.2 (32384–32410, p. 530), Prop 10.5 (32420, pp. 530–531), Thm 10.6, Ex 10.6.1 (32459–32494, pp. 531–532), IV.2.8–2.8.2 (16409–16422, pp. 281–282) | as cited |
| 7.5 | Rognes published (author copy k4odd.pdf, PDF page = printed − 266): (1.2) line 50 p. 268, Prop 2.2 line 85 p. 270, Notation 5.4 line 200 p. 274, Prop 7.7, Thms 7.8–7.9 lines 290–303 pp. 278–279, Lemma 8.1, Cor 8.2, (8.3)–(8.4) lines 317–338 pp. 279–280, Thms 8.5–8.6 lines 342–347 p. 280; Rognes–Weibel Thm 7.11 (2283, pp. 43–44); Sharifi Thm 4.4.2 (3500, p. 111), Cor 4.4.4–4.4.5 (3545–3547, p. 113); kbook VI.2.4.2 (28584, p. 472), VI.8.7–8.8 (31456–31473, pp. 515–516), VI.9.12 (32095, p. 525), VI.10.1 and Table 10.1.1 (32187–32242, pp. 527–528), 10.1.3 (32284, p. 528), 10.8–10.10 (32527, 32579, 32600, pp. 532–533) | every item at its page; the published Rognes numbering (which the README's References entry says it uses) was confirmed on the author's copy, so the manuscript in the manifest is not the version cited |
| 8.1 | no source locator (a definitional target with its Needs line) | consistent with §6.14 and §8.5 |
| 8.4 | Groenewegen Thm 15 (line 519, PDF p. 12 = printed p. 1454); Bass–Tate waived | the PDF page is cited; printed would be 1454–1455 |
| 8.5 | kbook III.5.2.2 (12497, p. 218); Bass–Tate waived | as cited |
| 8.10 | kbook VI.2.4 (28557, p. 472), VI.8.1–8.3 (31271–31348, pp. 513–514), VI.9.5 (31706, p. 519), Ex VI.8.5 (31530, p. 516) | as cited |

### Suppliers, order and ownership

- Dependency check at this head: `depcheck: 239 roadmaps, 2366 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.
- `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/ArithmeticKTheory'` is empty (the long list under “Files changed outside the folder” in the change set is the merge of main, not the pull request's own change).
- New suppliers: ReductiveGroupsPartII (main; RG2.2.1 line 2846, RG2.2.2 line 2973, RG2.2.4 line 3408 with the asterisked id at 3410), AlgebraicCurves (main; R04), JacobianChallenge (main; Layer B line 135), SchemeAndStackFoundations (main; §3.3 line 4713: `vectorBundleDegree`, `_add_of_shortExact`, `_twist`), AutomorphicLFunctionsAndLocalFactors (open, merge order line 80 < 127; R01). IntegralIwasawaTheory (#1306 head) declares `totallyRealHeckeValue_rational` (§6.0), `VandiverCondition` (§7.4), `oddPrime_specialValueEuler` and `dyadic_specialValueEuler` (§12.3) as the README cites them.
- Ownership of the curve Steinberg finiteness: EllipticKTheory (#1489, merge order line 368, a consumer) cites ArithmeticKTheory §3.2 curveSteinbergHomology_fg as its supplier (its README lines 137–142, 163–164, 420–424); no roadmap on main, in the board packages or at the supplied open heads states Quillen's curve theorem or the unstable-subcomplex comparison. Bounded families of bundles under a polygon are consumed from AL.3.10.7, not restated. `scratch/overlaps.md`: no pull request changes this roadmap, no cited id is dropped, no id of this pull request is cited elsewhere.
- Declared gaps: both slugs (`connective-c2-homotopy-orbit-spectral-sequence`, `number-ring-witt-signature`) occur in the README (lines 260, 398) and in `design/plan.json`; unchanged and precise.
- The resolver's one lead, `VanishingCycles.etaleTateTwists` (README 291), is declared by EtaleCohomologyFoundations on main (§F.0.3), as in the previous reviews.

### Lean

- `lake env lean` on `Suggested.lean`: 3.7 s, exactly the three `sorry` warnings. The elaborated types of the four declarations (worker's `signatures.md`, 0 dropped binders) match the README: §1.1's localization criterion on `Set.integer` with the real-bodied `sUnitSubmonoid`, the torsion-class-group sufficient condition, and §7.2's divided-Bernoulli consequence on `bernoulli` and `NumberField.classNumber (CyclotomicField p ℚ)`.
- One-tactic probes on a scratch copy at this pin: `simp` (no progress), `rfl`, `decide`, `exact?`, `aesop` close none of the three theorems. Nothing in the file is padding; the headline theorems not statable at the pins (Quillen finiteness and ranks, the integral tables, wild kernels, Bott descent, K₄(ℤ) = 0, the hermitian finiteness, the Gaussian and golden tame kernels, Borel's comparison, and now also curveSteinbergHomology_fg, which needs the Steinberg module and group homology carriers the docstring already names as missing under “Quillen finite generation”) are named in the module docstring with the missing carriers.

## Not verifiable

- Grayson, LNM 966, pp. 69–90: the citation resolves only to a paywalled publisher page (DOI prefix 10.1007), and the author's page timed out; cited by locator, see R03.
- `harris-segal`, `mitchell`, `quillen` (Seattle), `bass-tate`, `serre`, `groenewegen-preprint`: settled waived sources; their locators (Bass–Tate II.3.1, II.3.4, Appendix Props 1–2 and Lemmas 1–2 in §§8.4–8.5; Quillen Seattle Theorem 1, 3 and pp. 181–185 in §3.2) were retained, not read.
- Rognes–Weibel is read from the author's archive copy and Rognes from the author's copy of the published version; neither was compared with the journal typesetting.

## Source issues

- **Misprint** in hutchinson at Example 2.5, printed page 4: the source says ℚ(√d) is special iff d ≡ −1 mod 8 or d ≡ ±2 mod 16, excluding only d = −1, −2; it should also exclude d = 2 (Γ_∞(ℚ₂(√2)) = Γ_∞(ℚ(√2)), so ℚ(√2) is not special; Weibel's preprint p. 14 excludes d = ±2); affects nothing.
- **Misprint** in kbook at Theorem VI.10.1(6), printed page 527: the source says |K_(8k+6)(ℤ)| = c_(2k+1); it should be c_(2k+2), as in Table 10.1.1 on the next page and as 8k+6 = 4(2k+2)−2 requires; affects nothing (the README uses the table's index).
