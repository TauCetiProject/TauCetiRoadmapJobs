# PKG-MotivicStructuresInModuliOfCurves — package report

Deliverables: `packages/MotivicStructuresInModuliOfCurves/README.md` (13 layers, 106 numbered subsections), `Suggested.lean`, `metadata.toml` (`topic = "math.AG"`), `sources.toml` (25 entries), and the `gaps` list of `design/plan.json`. Nothing else in `plan.json` changed. I checked this mechanically: comparing the parsed JSON with the original copy, only the key `gaps` differs, and the formatting is unchanged.

Inputs: the design README, `plan.json` and its embedded `review` block were read in full. The brief also names `design/review.json` and `reports/`. Neither existed when the job started, so the non-blocking notes applied are the ones recorded in `plan.json.review` (n ≥ 1 orthogonal hypothesis, zero-mark route, quotient-Grassmann convention, Lefschetz scope, direct prerequisites, locators).

## Headline theorems

None of them is statable at the pins. Neither Mathlib nor Tau Ceti has algebraic or Deligne–Mumford stacks, stable curves, or the moduli stacks `M̄_{g,n}`/`M_{g,n}`. A grep of both libraries for stable curves, moduli of curves and algebraic stacks finds only an unrelated elliptic-curve file. Also missing at the pins:
- rational Betti cohomology of these stacks, with its mixed Hodge structure;
- their ℓ-adic cohomology, with its Galois action;
- the groupoid of rational points of a stack;
- rational Chow groups of stacks and the tautological classes.

`Suggested.lean` therefore states nothing. Its docstring lists each headline and what it lacks.

| Headline | README | Status |
| --- | --- | --- |
| Odd cohomology of `M̄_{g,n}` vanishes in degrees ≤ 9 (BFP Thm 1.1) | §9.8 | not statable: needs `M̄_{g,n}` and its cohomology |
| `M̄_{4,n}`, `n ≤ 3`: explicit polynomial counts and pure Tate cohomology (BFP Thm 1.4) | §§9.5, 9.7 | not statable: needs the stack and its point groupoid |
| Finite generation of STEs in each degree; finitely many simple types (CLP Thm 1.3, Cor 1.4) | §§4.9, 4.11 | not statable: needs cohomology of the stacks and the tautological operations |
| `H⁴` tautological; `H⁶` for `g ≥ 10`; even `H_k`, `k ≤ 14` tautological (CLP Thm 1.5) | §§10.2–10.4 | not statable: needs `RH^*` |
| Degree-13 and degree-15 homology are cusp-generated (CLP Thms 1.6–1.7) | §§12.1–12.2 | not statable |
| `M_{7,n}`, `n ≤ 3`: CKgP and `A* = R*` (CLP Thm 1.10) | §7.7 | not statable: needs Chow groups of stacks |
| Classification of `H¹³`, `H¹⁴`, `H¹⁵` (CLP Thm 1.1) | §12.9 | not statable: needs Hodge and Galois realizations of the stacks |
| Cohomology of `M̄_{3,n}`, `n ≤ 11` (CLP Thm 1.9) | §12.10 | not statable |

No stand-in definitions were introduced. The design prototype held stable-pair numerics and the genus-four polynomial tables, with palindromicity and subtraction theorems. Under the acceptance-test rules these are Checks and worked examples, not headlines, so they stay in the README as prose. I verified them by computation (see the adversarial table).

## Elaboration

Command: `lake env lean <abs path>/Suggested.lean`, run from the content checkout. Exit code 0, no output: **0 `sorry` warnings and no other messages**. No `TauCeti.*` imports, so nothing needed building.

`#check @name` comparison: the file declares no theorem, definition or instance, so there was nothing to compare. No changes resulted.

## Dependency check output

```
depcheck: 56 roadmaps, 653 edges, 0 problem(s)
```

There are no UPWARD, CYCLE or `moved:` lines. Every supplier precedes this roadmap (line 327) in `ORDER.txt`:

| Supplier | ORDER.txt line |
| --- | --- |
| SchemeAndStackFoundations | 2 |
| AlgebraicModuliForArithmeticGeometry | 35 |
| SchemeKTheoryOperations | 37 |
| ArithmeticGaloisRepresentations | 47 |
| MotivesAndAlgebraicCycles | 82 |
| MappingClassGroupsAndCanonicalRepresentations | 87 |
| DeligneWeightsAndPurity | 90 |
| WeilConjectures | 141 |
| StableReductionPartII | 179 |
| MixedHodgeModulesAndIrregularHodgeTheory | 181 |
| AutomorphicGaloisRepresentations | 185 |
| HabiroNahmSeries | 233 |

SchurWeyl is on main.

`roadmaps resolve` flags one citation: `MappingClassGroupsAndCanonicalRepresentations §C.0`, as "no roadmap on main or in an open pull request". This is a false lead. The roadmap is an accepted board package (ORDER.txt line 87) whose design README contains `C.0/teichmuller-uniformization`. StableReductionPartII and MixedHodgeModulesAndIrregularHodgeTheory are cited by their layer IDs (MC.0–MC.7; H.0, H.1) from their design READMEs, which are the only copies I can read; their package READMEs are on board heads that the brief does not give.

## Supplier gaps declared (`plan.json` `gaps`, and README "What … must provide")

| Slug | Supplier, section | Needed by |
| --- | --- | --- |
| stack-rational-chow | SchemeAndStackFoundations, Layer 5 | §§0.1, 0.2, 5.1–5.3, 6.5, 7.1, 7.2, 7.4, 7.6 |
| pointed-coarse-projectivity | StableReductionPartII, MC.4 | §§4.12, 12.1, 12.2, 12.10 |
| open-dm-stack-duality | WeilConjectures, WC.1 | §§0.4, 2.3, 5.4 |
| dm-stack-hard-lefschetz | DeligneWeightsAndPurity, §9.6 | §§4.12, 12.1, 12.2, 12.10 |
| dm-stack-mixed-hodge | MixedHodgeModulesAndIrregularHodgeTheory, H.1/H.0 | 12 sections |
| dm-stack-cycle-class | MotivesAndAlgebraicCycles, Layer 2 | §§0.1, 5.3, 10.5, 12.9 |
| completed-symmetric-functions | SchurWeyl, Layer 7 | §1.4 |
| complete-adams-series | HabiroNahmSeries, §5.1 | §1.4 |

The design's 15 internal "G-…" obligations do not survive as process lists. Each became one of the following:
- **A supplier gap above:** G-stack-cycle, G-projectivity-lefschetz, G-stack-duality, G-stack-comparisons and G-symmetric-functions.
- **A target of this roadmap:** G-mapping-class-inputs went to §§2.1, 2.2, 3.4. G-source-inputs went to §§2.6, 2.7, 1.6, 3.2, 3.3, 4.7, 10.1. G-genus-two-inputs went to §§4.3, 11.1. G-local-system-descent went to §§3.1, 4.2. G-known-chow went to §§5.4, 6.2–6.8. G-orthogonal went to §7.2. G-mukai went to §§7.3–7.4. G-finite-field-geometry went to §§8.1, 8.3, 8.4.
- **Dissolved:**
  - G-computations: the computational results are stated as theorems, such as rank 825 and the multiplicities 264, 836, 429, 6006 and 186263. The house rules forbid certificates and algorithms.
  - G-graph-presentations: it had no consumer. The README mentions it once, as an announcement.

The slug `complete-adams-series` coincides with a gap that CountingBundlesAndHallAlgebrasOfCurves (open PR) declares on the same supplier and section. The intake may merge the two.

## Ownership, duplication and corrections against the design

These were checked by object in roadmaps on main, at the open-PR heads through `roadmaps grep`, and in the board packages. The searches covered: tautological rings, kappa classes, Chow–Künneth, Casnati, modular operads, plethysm, orthogonal Grassmannians, quadric surfaces, Harer, Madsen–Weiss, Keel, Getzler, Bergström and Canning. Results:

1. **WeilConjectures (open PR) owns the general BFP machinery:**
   - WC.1: groupoid mass, stack compact supports, trace, twists, the character lattice, signed configurations, inverse zeta, termination and the Hasse–Weil sieve.
   - WC.5: the local cutoff, approximate counts, counts over all of Spec ℤ, and equivariant counts with palindromicity.
   - WC.6: DM purity.

   These are imported and not restated. The design cited them by atlas IDs; they are now cited by section title.
2. **DeligneWeightsAndPurity §8.24** already states the weight spectral sequence with orientation characters, including its specialization to the boundary of `M̄_{g,n}`, together with DM-stack purity and duality. The weight-fifteen complex (§12.6) is therefore the weight-fifteen row of that sequence, not a new construction. The design's E12 correction is already carried by the supplier.
3. **FiniteFieldsAndCharacterSums does not exist** anywhere: not on main, not in the open PRs, not in the merge order. The design's FF.1/FF.3 citations are replaced by targets owned here: §8.2, the moments via Mathlib `quadraticChar` and `quadraticChar_sum_zero`; §8.1; and §8.4.
4. **No owner exists for three groups of inputs**, so this roadmap owns them. The reasons are given in the README, Scope:
   - Harer's virtual cohomological dimension, its top-degree vanishing, homological stability and the stable cohomology. MappingClassGroupsAndCanonicalRepresentations owns only uniformization and canonical representations.
   - The classification of quadric surfaces over finite fields with stabilizer orders. GeometryOfNumbersAndQuadraticArithmetic and LefschetzPencilsAndVanishingCycles §3.5 do not contain it.
   - The hyperelliptic character sums.

   No notion moved down from a later roadmap.
5. **New imports not in the design:**
   - SchemeKTheoryOperations §§6.2.1–6.2.2 (λ-rings and Adams operations).
   - HabiroNahmSeries §5.1 (exp/log).
   - ArithmeticGaloisRepresentations §§5.1, 5.3 (Frobenius recognition).
   - Mathlib `CuspForm.rank_eq_one_of_weight_eq_twelve`, `ModularForm.dimension_level_one`.
   - Tau Ceti `TauCeti.finrank_periodPolynomials_eq_finrank_modularForm_add_finrank_cuspForm` and `TauCeti.Hodge`.

   The module path for `TauCeti.spinPlus` is `HalfSpin/Basic.lean`, not the design's `HalfSpin.lean`.
6. **Layer restructuring:** the general equivariant machinery moved from TC.8 to Layer 1 (marking twists, weight Euler characteristic, graph transform, Getzler–Kapranov, polynomial induction, low-genus counts). In the design, TC.1/lower-polynomial-counts, and through it TC.1 and TC.3, depended on that machinery but came before it. Old TC.k became Layer k+1 for k ≤ 7. TC.9 now opens with the genus-four Euler characteristic and the equivariant hyperelliptic counts.
7. **Corrections to the design's mathematics:**
   - **Old TC.7/sieve-tail** asserted tail bounds for the marking twists defined only later; these now sit in §8.14.
   - **Order of the degree-15 genus-two argument (old TC.12):** the genus-two degree-15 result now uses the genus-one splitting (§12.4 comes before §12.5). Without the splitting `V ⊕ W`, the maps from `H¹⁵(M̄_{1,15})` do not factor through the STE generated by `H¹¹(M̄_{1,11})`.
   - **Old TC.1 Check:** it claimed the marked top-vcd vanishing removes "the genus-four one-mark degree-9 base case". Per BFP Remark 2.4 it removes `(5,0)` and `(5,1)` from degree nine, and `(4,0)` and `(4,1)` from degree seven; `(4,1)` is still a degree-nine base case. Corrected in §§2.2 and 2.8.
   - **Arbarello–Cornalba divisor theorem:** it is Theorem (2.2), not (2.1).
   - **Arsie–Vistoli:** the locator is Corollary 4.7, verified in the arXiv text.
   - **Bergström, characteristic two:** the locator is Theorem 10.3.
   - **Mukai model, stabilizers:** the comparison is with `[I_n/Spin₁₀]` rigidified by `μ₄`, that is, an effective `PSO₁₀` quotient. Over `SO₁₀`, every point would carry an extra generic `μ₂` from the centre of `SO₁₀`.
   - **CLP Theorem 1.3 under the corrected filling criterion (§4.5):** the theorem survives, since its seed region contains the same-degree triples. I checked this against the proof at CLP lines 441–445.
   - **Split-quadric sieve table:** BFP Proposition 8.7 states every marked entry only up to `o(q⁶)`. The design called some marked `S₁` entries exact; the README calls only `S₀` and the unmarked row exact.
8. **The design's 16 source corrections** are kept in a timeless "Corrections to the sources" section. I re-checked these at their printed locators: E3 (Lemma 7.3 induced subgroup), E4 (Lemma 2.1 hypothesis, with the counterexample), E7 (BFP Corollary 3.2), E9 (§10.1 `q⁴` versus `q³`), E10, E11 (BFP p. 1351 printing "Th. 8.3"), E12 (equation (3)), and E15–E16 (Kannan Remark 3.8 present).

## Sources

- 23 sources are certified: author pages, arXiv, the AMS open archive, Numdam/arXiv. Two are uncertified (paywalled): `harer-vcd` and `mukai`.
- `needs-references.toml` is not produced. Every text needed was read, or is settled as uncertified.
- `harer-stability` and `casnati-ekedahl` were dropped as citations. Stability is cited through Wahl's survey (Theorem 1.1, the range used by CLP), and the Casnati–Ekedahl theorem through CLP §5.2 and Canning–Larson.
- Two sources the design relied on implicitly were added: Canning–Larson, genus 7–9 (CLP's [6]), and Petersen–Tavakol–Yin (CLP's [29]).
- Locators were checked against the cached texts: CLP lines 38–90, 175–205, 220–224, 283–305, 309–356, 360–445, 458–560, 593–952, 956–1239; BFP lines 210–275, 297–340, 355–575, 713–1030, 1395–1470, 1618–1637; Gorsky lines 203–332; Kannan line 572; GK line 2140; AC lines 474–566; Keel line 476; Petersen genus one lines 170–216; Petersen genus two lines 171, 407; CFP lines 24–27; MSS lines 121–124; Wahl lines 44–48; Looijenga lines 182–190; Arsie–Vistoli line 503; Bergström line 1631.
- The GK arXiv v2 numbering (Theorem 8.13) agrees with the published citation. Gorsky is cited at v3, as read.

**Lead, not used:** a web search for the eleventh-cohomology paper also listed arXiv:2610.14377, "The fifteenth cohomology group of moduli spaces of stable curves", which may bear on CLP Conjecture 7.12. I did not read or rely on it, and the README states 7.12 as a conjecture. No fetched text contained instructions.

## Adversarial pass

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| §0.2 `κ₀ = 2g−2+n` | `M̄_{0,3}`, `M̄_{1,1}`, `M̄_7` | 1, 1, 12 | holds; the §7.7 division by 12 is legitimate |
| §0.3 stable-pair order | (0,4) vs (1,2); (1,1); BFP Notation 4.1 | (0,4)≺(1,2); (1,2)⊀(0,4); irreflexive; lex form equals CLP form | holds |
| §0.5 cusp ranks | weights 12, 14, 16, 24 | `dim S_k = 1, 0, 1, 2`; ranks 2, 0, 2, 4 | added the weight-24 Check (rank 4, not 2) |
| §1.1 twists | type (2) vs (1,1) on ℙ¹ | `q²−q` vs `(q+1)q`; a first draft Check compared (2,1) with rational triples, both `(q+1)(q²−q)` | replaced the non-discriminating Check |
| §1.4 Δ normalization | `Δ(p₁²)`, `Δ(p₂)`; `MV(0,4)` | `h`, `h`; 3-dimensional, `s₄ + s₂₂` | holds |
| §1.5 orientation | the two-edge stratum of `M̄_{1,2}` | edge swap gives −1 on det; twisted H⁰ invariants are 0 | holds; BFP Def 9.1 counterexample `(0,0,3)` noted |
| §1.6 counts | `M̄_{0,4}`, `M̄_{0,5}`, `M_{1,1}`, `M̄_{1,1}` | `q+1`, `q²+5q+1`, `q`, `q+1` | holds |
| §2.2/§2.5 base regions | k = 7, 9; with and without top vanishing | without: (5,0),(5,1) at k=9 (2g−1=9) | design Check corrected |
| §2.3 thresholds | (4,1), (2,12), (0,4) | k<8; 14; `H_c¹(M_{0,4}) = ℚ²` | holds; genus 0 excluded |
| §3.2 genus-one pure | n=k=11; n=12, k=11; even k | dim 2; 22; 0 | holds |
| §3.4 stability range | k=2, 6 | g ≥ 4; g ≥ 10 | holds |
| §4.5 filling criterion | RH, (1,12,11) | quotient 0; all k′ ≤ 9 quotients 0; RH¹¹ = 0 ≠ H¹¹ (dim 22) | printed lemma false; corrected form excludes it via (1,11,11) |
| §4.7 H¹¹ | (1,10), (1,12), (1,13) | 0, 22, 132 | holds |
| §4.9 seed region | k′ = 4; k = 11; k′ = 13 | g′ ≤ 6; (1,11) in the region; g′ ≤ 20, genus-two n′ ≥ 9 | fixed a wrong Example (genus ≤ 9; genus two n′ ≥ 5) |
| §4.10 region | k = 13 | genus 1: n ≤ 13; genus 2: n ≤ 11 | holds |
| §5.2 permanence | `BC₂` | rationally `A^*(BC₂ × Y) = A^*(Y)`; integrally `ℤ/2` | replaced an incorrect Check (a surjection that was not a counterexample) |
| §5.4 table | c(g) | CLP Table 1: ∞, 10, 10, 11, 11, 7, 5, 3 | matches |
| §6.4 splittings | degree sums | 3+3+4 = 5+5 = 4+6 = 2+4+4 = 2+3+5 = 10 | holds; Σ₃ ⊂ closure of Σ₂ |
| §7.1 dimensions | `OG⁺(5,10)` | 45 − (25+10) = 10 | fixed an arithmetic slip in the first draft |
| §7.3 centre | −1 in Spin₁₀ on S⁺ | acts by −1; the lifts of −1 ∈ SO₁₀ act by ±i | kept the `Spin₁₀`/`μ₄` route |
| §7.5 ranks | n = 0, 4 | Gr dim 63; ranks 12, 3, 9 | holds; Gr₃ convention excluded |
| §8.1 hyperelliptic mass | `#P_g/#G` | `(q−1)q^{2g}(q²−1)/((q²−1)q(q−1)) = q^{2g−1}` | holds |
| §8.3 marked counts | n = 2, 3 from moments | `(q+2)q^{2g}−1`; `(q²+3q−1)q^{2g}−3q` | holds |
| §8.4 stabilizers | factorization; q = 2 | `q⁷−q⁶−q⁵+q⁴ = q³·q(q²−1)·(q−1)`; split order 72 | holds; the rank-2 conjugate-planes quadric is excluded |
| §8.8 inverse zeta | s₂, s₃ | s₂(nsp) = 0, s₃(nsp) = q⁴+q², s₃(spl) = −q⁴−2q³−q² | matches BFP lines 870, 929 |
| §8.9–8.11 sieve tables | against BFP Props 8.1–8.7; the n = 0 assembly | cone unmarked/Aut = q⁸; cone + nsp + spl (unmarked) at q = 10³, 10⁴ minus (q⁹+q⁸−q⁶) gives −0.001, −0.0001, i.e. ratio to q^4.5 ≈ 10⁻¹⁷ | consistent; tables copied by script, not retyped |
| §8.12 four points | q = 2 | 36 | holds |
| §8.14 twisted | cone (2) S₀ | `(q⁴−q)q¹³ = q¹⁷−q¹⁴` | holds |
| §9.1 Gorsky | power sums to Schur | (2, −6, 0); identity value −10; corrected h = 4 vs misprint 7/2 | holds |
| §9.2 equivariant hyperelliptic | identity character | recovers the §8.3 n = 2, 3 polynomials | holds |
| §9.3 cutoff | 2d − s | 9 for all n | holds |
| §9.4–9.6 tables | closed − boundary = open; palindromicity; q = 1 | all rows match; χ = 2, 2, −2, −10 | holds; E9 placed at q³ |
| §9.9 equivariant | dimension specialization; q = 1 | n2 and n3 sums equal the closed rows; open at q = 1: (2, −6, 0) | holds |
| §9.10 local systems | n = 1 reconstruction | `(q⁹+q⁸+q⁷−q⁶)(q+1) − (q⁷+q²)` = open n = 1 row | holds |
| §9 Example | `#M̄₄(𝔽₂)` | 7965 | computed |
| §10.4 genus-seven bases | k = 14 | (7,0), (7,1), (7,2) needed; genus 8 excluded | Check corrected (the draft omitted (7,2)) |
| §10.5 | `M̄_{0,10}` | d = 7, degree 0 | holds |
| §11.3–11.9 counts | sums | 429; 6006; 264; 891; 825 + 11 = 836; 891 − 836 = 55 | hold |
| §11.8 induced module | dimensions, Pieri | 66 = 11 + 55; Ind from S₁₀ alone is 132 | corrected subgroup |
| §12.7 injectivity | (8,0), (8,1) | 2g = 16 > 15 | piecewise bound kept |
| §12.8 loop insertion | g − 2 = 1 | the vertex has 3 special flags, so it is stable | holds |
| §12.10 boundary factors | n = 11 | genus-one divisor factors have ≤ 12 flags | replaced an incorrect draft Check that claimed S₁₆ ⊂ H¹⁵(M̄_{1,14}) |

Context and vacuity: `Suggested.lean` has no `variable` block and no statements, so neither applies there. Every README statement names its stable-pair, genus or marking hypotheses explicitly.
