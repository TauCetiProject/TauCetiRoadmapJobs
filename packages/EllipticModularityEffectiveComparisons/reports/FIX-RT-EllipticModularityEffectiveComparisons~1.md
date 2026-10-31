# Repair of red-team round 1 (passes a and b)

Twelve findings, headed by the ids each review gives them: the first seven sections (F01 to F07) are pass a (`RT-EllipticModularityEffectiveComparisons_r1a`), the last five (F01 to F05) are pass b (`RT-EllipticModularityEffectiveComparisons_r1b`). Pass-a F04 and pass-b F01 cover the same six identifiers. They are settled once, under pass-a F04, and pass-b F01 points to it.

## F01 (P1) — applied

New §5.4a "The generalized Jacobian of X₀(p) and Heegner–Gross vectors", placed before §5.5. It defines J₀(p)♯ (modulus (0)+(∞), an extension of J₀(p) by 𝔾_m), the winding ideal I♯_e and the quotient J♯_e. It states as targets: x₁=x₂ forces CM; Proposition 5.1; the integral extension of φ_P with a torsion section and the s₁=s₂ conclusion; the cotangent identification and the criterion (Proposition 5.2); I♯_e e_D=0 with the H′/H dj differential (Proposition 5.5, (5.2)). Each has a locator in bilu-parent-rebolledo lines 731–833. The section has four Checks. §5.5's proof route now runs through §5.4a and Proposition 5.6 (lines 839–859), and its *Needs:* cites §5.4a. Ownership: no earlier roadmap owns the generalized Jacobian of a smooth curve with a reduced modulus. AnabelianGeometryAndNonabelianChabauty, which is later in the order, constructs it in characteristic zero, so the notion moves down and is stated here for X₀(p). The text records the source's error at line 812 (curve classes are not maximal-order types). I state "φ_P(s₂) is torsion" instead of the source's broader "every section of the identity component is torsion", which I cannot check, since the toric part over a real quadratic K has infinitely many units.

## F02 (P2) — applied

README §5.0: "this is the split Cartan normalizer condition" → "For odd primes p this is containment in the normalizer of the split Cartan subgroup fixing the two lines; at p=2 the split Cartan subgroup is trivial, its normalizer is all of GL₂(𝔽₂), and the line-pair condition is strictly stronger." Lean docstring of `SplitNormalizerImage`: "Used only at prime p." → "Its split-Cartan-normalizer interpretation is used only at odd primes; at `p = 2` it is strictly stronger." Witness recomputed: |GL₂(𝔽₂)|=6 and the line-pair stabilizer has order 2. At p=3 the pair stabilizer and the split normalizer both have order 8=2·(3−1)². No other occurrence asserts the identification at p=2.

## F03 (P1) — applied

Verified: ImaginaryQuadraticClassNumber H3.2 on main (README lines 91–101) constructs general Siegel functions g_r with r∈ℚ²∖ℤ², their transformations, the modular-product criterion and integrality over ℤ[j]. ModularForms has no Siegel-function or modular-unit target. Changes: §5.3c's route now imports H3.2 and owns only the split-Cartan orbit products, their cusp divisors and the estimates. §5.3c *Needs:* "ModularForms Layers 1 and 10 for modular units, …" → "ImaginaryQuadraticClassNumber H3.2 for Siegel functions …; ModularForms Layers 1 and 10 for q-expansions and divisors". H3.2 is added to the Scope paragraph, to the IQCN supplier contract and to the Layer 5 Dependencies.

## F04 (P2) — applied

Pass a is right that these are statable on native carriers, and I verified each statement. Added to `Suggested.lean`, with backticked names at the same README sentences:

- `newform_integral_of_small_primes` (§3.1, Kraus Lemme 1), on `HeckeRing.GL2.Newform N 2` with `f.χ = 1`;
- `integral_ideal_sturm` (§3.7a, Kraus Appendix II Proposition 1, checked at kraus-1997 lines 1060–1063), on `modFormCharSpace`;
- `kraus_prime_power_congruence` (§3.10, Proposition 2, checked at lines 1082–1093). Its hypotheses match the source exactly, with the coefficient realization bound explicitly (K, σ, a, prime ideal P, m≥1, cutoff 6q≤I(lcm(N,4))). The README sentence now states the same generality;
- `four_divisible_isogeny_realization` (§3.16);
- `proper_image_nonsplit` (§5.8, lemos-2017 line 223);
- `cyclic_isogeny_integral_j` (§5.18, lemos-2017 Proposition 2.1, lines 136–139), with no non-CM hypothesis.

The only new definition is `NonsplitNormalizerImage`, the §5.0 predicate already in the README, which now has a real body. The module docstring's headline list is updated. A new `Layer 3` section comment keeps README order.

## F05 (P2) — applied

Verified at darmon-merel lines 716–725: the specialization cusp is moved to ∞ by changing the nonsplit Cartan and possibly applying w_r. New §5.16a "Moving the specialization cusp to infinity" states the transport isomorphism over ℚ, its compatibility with Hecke operators, the winding quotient and A, its integral cusp charts, and preservation of the q-denominator of j (isogeny invariance). It has three Checks. §5.17's route now applies §5.14, then §5.16a, then §§5.15–5.16; its *Needs:* lists §5.16a. §5.15 and §5.16 are unchanged: after transport they are used at ∞.

## F06 (P3) — applied

Verified: bennett-siksek-2020 line 193 is Lemma 2.1(ii), and lines 198–203 are the proof of Lemma 2.2. §1.2: "proof of Lemma 2.1, p.359, line 199" → "proof of Lemma 2.2, p.359, lines 198–201". §1.4: "Lemma 2.1, pp.358–359, line 191" → "Lemma 2.1(ii), p.359, line 193, for the congruence; proof of Lemma 2.2, p.359, lines 198–203, for the norm bound". The other Bennett–Siksek locators (§§1.1, 1.3, 1.5, 1.6, 4.18, 4.21) were checked and are correct.

## F07 (P2) — applied differently

New §5.25a "A witness bound for nonsurjective primes", sourced from serre-1981 §8.4, proof of Lemme 19, lines 2569–2594. It keeps the unconditional character-and-trace part and drops the GRH bound. Statement: for geometrically non-CM E with bad set S and a prime p≥17 with `NonsplitNormalizerImage E p`:

- ε_p is nontrivial and odd, and unramified outside S, including at p;
- ε_p(Frob_q)=−1 implies p | a_q;
- witnesses q_ε exist, with ε(Frob_q)=−1 and a_q≠0 (by Faltings isogeny recognition, since E is non-CM);
- p≤B(E)=max_ε max(q_ε,|a_(q_ε)|).

With §5.8, this covers every nonsurjective p>37. §§5.26–5.27 now apply §5.25a and exclude each remaining 37<p≤B(E) by witness primes. Two ways this differs from the suggested repair:

- ε ranges over odd characters only, because complex conjugation lies outside C.
- The bound is p≥17, not every p. My own inertia computation shows the ramification argument at p fails at p=7: e=3 gives eigenvalue ratio χ₇³, of order 2. The proof needs p>11. The constant 163 is not needed.

Pass a's own repair test (ℚ(√−3) for E₁₁) uses a character ramified at 3, which is outside S={11}; the Check uses ℚ(√−11) instead.

## F01 (P3) — applied differently

Settled under pass-a F04. The six identifiers became Lean declarations, backticked in the README, instead of prose. Pass b's repair allows this ("If any is meant as a Lean target, declare it … and backtick it").

## F02 (P3) — applied

§3.17: "(kraus-1997, Théorème 4 and proof, pp.1145–1146, line 284.)" → "(kraus-1997, Théorème 4, p.1144, line 284; its proof §3.3, pp.1145–1146, lines 374–441.)" The page markers are at lines 247 (p.1144), 301 (p.1145) and 384 (p.1146). §3.3 starts at line 374, not 386 as the reviewer had it.

## F03 (P3) — applied

Verified that EisensteinIdealAndRationalTorsion §7.9 (open head) states `squarefree_cusp_difference_torsion`. §5.10a now says the squarefree Γ₀(N) case is consumed from it and the general congruence-curve statement is the target here. It is added to §5.10a's *Needs:* and to the EisensteinIdealAndRationalTorsion supplier contract.

## F04 (P3) — applied

§0.16 *Needs:*: "Layer 0.10 Finite low-level composite check" → "Layer 0.10 Small composite levels".

## F05 (P3) — applied

Verified on main: ClassFieldTheory Layer 13 defines `narrowHilbertClassField` and proves `gal_rayClassField_equiv_rayClassGroup`, but does not state the ℚ specialization. Supplier contract: it now cites these two together with the trivial narrow class group of ℚ. §4.1 route: "the rational class field has no nontrivial everywhere-unramified finite extension" → "the narrow Hilbert class field of ℚ is ℚ itself, because the narrow class group of ℚ is trivial, so this character is trivial."

## Checks run

- Elaboration: `lake env lean packages/EllipticModularityEffectiveComparisons/Suggested.lean` exits 0 with exactly 14 `declaration uses sorry` warnings, at lines 76, 81, 90, 101, 115, 132, 179, 185, 191, 198, 235, 243, 253, 262: the 14 theorems. There are no errors. The added import `TauCeti.NumberTheory.ModularForms.Newforms.Newform` exists at the pin and its object file was already built.
- Signatures: I put `#check @name` for all 23 declarations in one scratch file and elaborated it once. Every type matches its README statement. The new theorems keep `[NeZero N]`, `[NumberField K]`, `[P.IsPrime]`, `[(W⁄ℚ).IsElliptic]` and `[E.IsElliptic]`. No binder was lost and no existing declaration changed type.
- Dependency check output:

```text
depcheck: 56 roadmaps, 657 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or moved line. `roadmaps resolve` reports no cross-roadmap citation and no Lean name found nowhere.

## Adversarial pass on new and changed statements

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| `newform_integral_of_small_primes` | N=1; N=11 | I(1)=1, so no prime satisfies 6q≤1 and S₂(Γ₀(1))=0: vacuous. I(11)=12, so the only prime is q=2, with a₂=−2∈ℤ; the conclusion holds for 11a | true |
| `integral_ideal_sturm` | k=0, constant 1, J=0; J=λ^m | Cutoff 0 tests n=0, and 1∉0 fails the premise. The prime-power case follows from the prime case through c/π with c∈πλ⁻¹∖λ (induction on m) | true; the general J case follows by CRT |
| `kraus_prime_power_congruence` | y²=x³−x, N=32, P=(2), m=2 | M=32, I(32)=48, cutoff 8; a₃,a₅,a₇=0,−2,0, and the differences from q+1 are −4,−8,−8, all in 4ℤ. q=2 never meets q²∤4N | hypotheses match lines 1086–1093 |
| `four_divisible_isogeny_realization` | y²=x(x²+3x+1); y²=x³+1 | First: b=1 is a square, and the quotient y²=x(x−1)(x−5) has four 2-torsion points. Second: #E(𝔽₅)=6, so 4∤6 and the premise fails | true; degree 2 is required |
| `NonsplitNormalizerImage` | p=11, CM y²=x³−x; p=2 | The 𝔽₁₂₁^× Cartan has order 120=11²−1 and normalizer 240. At p=2, C₃ is normalized by all of S₃ | as in §5.0 Checks |
| `proper_image_nonsplit` | p=41, non-CM | Borel is excluded by Mazur (41 is not in the list); exceptional by Serre ((41−1)/4=10>5); split by `split_normalizer_exclusion` | true |
| `cyclic_isogeny_integral_j` | y²=x³−x, r=2, p=11; E₁₁, r=5 | j=1728∈ℤ with nonsplit image at 11 (11 inert in ℤ[i]). For E₁₁, j is nonintegral, so no p∉Σ is nonsplit, which agrees with B(E₁₁)=2 | consistent |
| §5.4a | p=17, D=3, 4 | g(17)=1 and dim J♯=2. 17≡2 mod 3 gives e_3 supported at j=0, H′/H=1/j≠0 at ordinary j₀. 17≡1 mod 4 gives h_s(−4)=0 and e_4=0 | Checks consistent with §5.6 Check |
| §5.16a | r=5, p=11, q=23 | 2·5=10 cusps in two fibres of 5. 23≡1 mod 11, so all cusps are 𝔽₂₃-rational; w₅ swaps the fibres. §5.12 gives [D] exact order 11, so cusp differences need not vanish | transport necessary |
| §5.25a | E₁₁; y²=x³−x; p=7 | S={11}; only ℚ(√−11) qualifies; −11≡5 mod 8 so ε(2)=−1; #E₁₁(𝔽₂)=5, a₂=−2, B=2. The CM control has a_q=0 for every q≡3 mod 4. At p=7, ratio χ₇³ has order 2 | p≥17 needed; non-CM essential |
| pass-a F02 wording | p=2, 3 | 6 against 2 at p=2; 8=8 at p=3 | corrected |
| pass-b F05 | conductor-1 characters of G_ℚ | The narrow ray class group of ℚ at modulus ∞ is trivial | true |

## Sources and ownership

- `sources.toml`: the serre-1981 locator now includes the proof of Lemme 19 (pp.397–399), cited for §5.25a. The bilu-parent-rebolledo locator adds §§5.1.1–5.1.2 with Propositions 5.1, 5.2, 5.5 and Corollary 5.3. The darmon-merel locator adds §8, proof of Theorem 8.1. No new source was needed; nothing is in `needs-references.toml`.
- Ownership was checked against main, the board packages and the open roadmap pull requests through `roadmaps grep`, for the generalized Jacobian, the Heegner–Gross vectors, the winding quotient and the Siegel functions. The Siegel functions are owned by ImaginaryQuadraticClassNumber H3.2 and are now imported. The generalized Jacobian moves down from the later AnabelianGeometryAndNonabelianChabauty and is stated here for X₀(p).
- `design/plan.json` is unchanged: there are no new supplier gaps.

## For the maintainer

- New names other roadmaps may cite: `NonsplitNormalizerImage`, `newform_integral_of_small_primes`, `integral_ideal_sturm`, `kraus_prime_power_congruence`, `four_divisible_isogeny_realization`, `proper_image_nonsplit` and `cyclic_isogeny_integral_j`, plus the new sections §5.4a, §5.16a and §5.25a. No existing name changed.
- The sibling EllipticCurveModularityPartII still states several of the same objects. That duplication was marked not actionable in an earlier round and is not reopened here.
- Gate repairs: the finding headings now carry the reviews' own ids (F01–F07, F01–F05) instead of prefixed ids. In §5.16a (proof route and its two Checks, README lines 1496–1502) the cusps lying over one cusp of X₀(r) are called a "fibre" instead of a "packet"; the mathematics is unchanged. Suggested.lean was not touched, so its earlier elaboration result stands.
