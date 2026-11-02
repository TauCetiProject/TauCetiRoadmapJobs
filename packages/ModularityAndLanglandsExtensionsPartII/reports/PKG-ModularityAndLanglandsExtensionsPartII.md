# PKG-ModularityAndLanglandsExtensionsPartII — package report

Deliverables: `packages/ModularityAndLanglandsExtensionsPartII/README.md` (109 numbered targets in
Layers 0–14), `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (18 entries),
and the top-level `gaps` list of `design/plan.json` (13 supplier gaps; nothing else in the file
changed).

The design folder contains no `review.json`; the accepted review is the `review` object of
`design/plan.json` (accepted, 105 nodes, 19 verified / 86 corrected). Its per-node corrections are all
already in the design text and are carried into the README; there were no further non-blocking notes
to apply.

## Headline theorems

| Headline | Status |
|---|---|
| Holomorphy of `L(s, Sym^n f)` for level-one eigenforms, `n ≥ 1` (README §14.4) | **Stated**: `TauCetiRoadmap.ModularityAndLanglandsExtensionsPartII.symPowerEulerProduct_levelOne_entire`, with the definition `symPowerEulerFactor` |
| Theorem 2.33 of Newton–Thorne I: automorphy of `Sym^{n−1}` is constant on eigencurve components (§2.4) | Not statable: no eigencurve, unitary eigenvariety or automorphy predicate for `Sym^{n−1} r_{π,ι}` |
| Theorem D (§3.8) | Not statable: automorphic representations of `GL_n(𝔸_ℚ)` and their Galois representations are missing |
| Level raising to types and to Steinberg (§§5.4, 5.10, 6.4, 6.7–6.9) | Not statable: automorphic representations of definite unitary groups, depth-zero types, Galois representations |
| Theorem 7.1 / Theorem E in every rank (§§7.5, 7.6, 14.1) | Not statable: automorphy predicate over `ℚ` and CM fields |
| `Sym^6`, `Sym^8` (Clozel–Thorne III Theorem 6.2, §7.7) | Not statable: as above, over totally real fields |
| Theorem A in level one and Theorem B (§14.2) | Not statable as automorphy statements; the visible consequence (§14.4) is stated |
| Automorphy lifting for symmetric powers (Newton–Thorne II Theorem 2.1, §9.8) | Not statable: deformation rings, patching, automorphy predicate |
| Untwisted tensor and tensor functoriality lifting (§§11.10, 12.7), residual twisted-tensor witnesses (§§13.5, 13.6) | Not statable: as above, and Hilbert modular forms |
| `SP_n` for all `n` over totally real fields (§13.10) | Not statable: Hilbert modular forms and automorphic representations of `GL_n` over totally real fields |
| Symmetric power functoriality for every non-CM newform (Newton–Thorne II Theorem A, §14.3) | Not statable: even the bad Euler factors of `L(s, Sym^n f)` need local Langlands at the ramified primes; Tau Ceti's Satake parameters at `p | N` (`{a_p, 0}`) do not determine them |

These reasons are recorded in the module docstring of `Suggested.lean`. The file contains one
noncomputable definition with a real body, one proved `example` (the Euler factor is symmetric in the
Satake parameters, which makes the theorem independent of their ordering) and one `sorry`'d theorem.

## Corrections to the design and what changed

1. **The odd-rank seed (design gap G2).** Newton–Thorne I Proposition 7.4 uses a rank-two block that is
   not conjugate self-dual. I recomputed the defect from nt21 pp. 86–88: for
   `r = r_τ ⊗ ω_1 ω_0^{n−1}`, `r^c ≅ r^∨ ⊗ ε^{−2k} δ_{K/ℚ}`, i.e. `ε^{−1}δ_{K/ℚ}` after the `|·|^{(n−2)/2}`
   twist against the required `ε^{−1}`. The README is timeless and must not leave a target unprovable,
   so: §7.4 states the odd step with the missing block as an explicit hypothesis (no conclusion in the
   hypothesis); §7.5 proves `TS_{2^r m}` from `TS_m` (hence `TS_{2^r}` unconditionally) by
   Anastassiades–Thorne; §7.3 and §7.6 are conditional on `TS_n`; Layer 14 (new) obtains Theorem 7.1,
   Theorem E and all endpoints over `ℚ` from the independent Newton–Thorne 2026 induction (§13.10),
   with a route for `TS_n` via level raising over a soluble totally real field (§14.1).
2. **Seed-relative statements.** §8.3 (Newton–Thorne I Proposition 8.2), §10.7 and §10.8
   (Newton–Thorne II Proposition 3.11, Theorem 3.1) carry the hypothesis "`Sym^{n−1}` is automorphic
   for one level-one form", which is their actual logical dependence; Layer 14 discharges it. The
   design stated them unconditionally while recording that they inherit G2.
3. **Source corrections** (design E1–E31) are folded into the targets as sentences at the claim (what
   the printed text does, what is used instead), not as a separate section, since "Corrections" is not
   part of the house shape.
4. **Supplier citations.** The design cited atlas node identifiers (`R04.1`, `R08.2`, `L7`, `G7`, `R22.3`,
   `R21.6`, `ML.5`, …) that are not section numbers of the supplier READMEs. Every one was mapped to the
   supplier's actual section at its PR head or design (e.g. `GlobalGaloisDeformations R04.1` →
   LocalGaloisDeformationRings §§F.1.5, F.1.9, F.2.11; `LocalGaloisDeformationRings L7` → its Layer 2 and
   §6.10; `OrdinaryAutomorphicForms R21.6` → PotentialModularityAndCompatibleSystems §9.2 and
   SerreWeightAndLevelOptimisation §6.11; `AdicSpacesPartII R2` (absent) → AdicSpacesPartIII §R2.9;
   `ML.5` → EndoscopicTransferAndUnitaryTraceComparison §6.24 and the parent's automorphic-induction
   convention). `roadmaps resolve` reports no unresolved citation.
5. **Merge order.** The design cited SmoothRepresentationsOfLocalGroupsPartII (Kazhdan–Lusztig
   classification) and ProetaleCohomologyOfPAdicCurvesAndTowers, both later than this roadmap
   (positions 310, 323 vs 272). Neither is cited.
6. **Arithmetic corrections found in the pass:** `μ_∞(z) = z/|z|` (not the principal branch of
   `(z/z̄)^{1/2}`, which contradicts `μ|_{𝔸_F^×} = ε_{E/F}` at real places, §5.5); Diamond's criterion at
   `q ≡ 3 mod 4` involves `δ_{K/ℚ}(q) = −1`, harmless because `a_q(σ_0) = 0` (§7.3); the Lust–Stevens
   reducibility computation is in ls20 §4, not §8; Kazhdan–Varshavsky's theorem is Theorem 2.2.5 of the
   arXiv version read (2.2.6 published); the Buzzard–Kilford text recorded in an earlier fetch was the
   wrong paper and was replaced by the authors' copy; the `Sym^6` criterion of §2.5 was checked against
   `S_4` (irreps ≤ 3) and `A_5` (irreps ≤ 5) and the remark that `Sym^2`, `Sym^4` do not suffice added.
7. **Removed from the design's statements:** the second sentence of the analytic-continuation lemma
   (Conrad's base change of components) is a supplier statement (gap on AdicSpacesPartIIPartII RZ.1);
   the "Hensel" argument of nt21 Prop 1.22(3) replaced as in the design.

8. House-style repairs in the README: TeX subscripts and superscripts in the headings of §§4.8,
   4.10, 7.7, 11.4, 11.6, 11.10 and 13.5 are now inside code spans, and the deformation-problem
   tuple of §11.4 is one code span on one line; the singular word "packet" (§4.10, §4.12 and the
   Checks and proof sketch of Layer 5) is rephrased as "the fibre of the local Langlands correspondence over
   `φ`", "the members of `Π_φ`" or "the members of the `L`-packets". No statement changed.

## Notions moved down

- **Kazhdan–Lusztig classification of Iwahori-spherical representations** (planned by
  SmoothRepresentationsOfLocalGroupsPartII SRU.7.4, later in the merge order) is stated here as §4.9 in
  the form the Clozel–Thorne modules need (kl87 Theorem 7.12, §8; uncertified, paywalled).

## Duplication sweep (removals)

| Object | Where it already is | Action |
|---|---|---|
| Reciprocity of the two auxiliary splitting conditions (nt26 Lemma 5.3; design SP.13.1) | ArithmeticGaloisDuality §R02.3.5 ("One new ramified prime and quadratic reciprocity", including the symmetric splitting criterion) | Target deleted; cited in Scope and supplier contracts; §13.2 uses it |
| Conrad's components under field extension (part of design SP.0.1) | not stated anywhere; natural owner AdicSpacesPartIIPartII RZ.1 | Moved to a supplier gap |
| Clozel–Thorne II Proposition 3.10 (design gap G5 item) | PotentialAutomorphyInfrastructurePartII PL.2 (Hida weight independence, Geraghty) — checked against ct15 p. 14: it is a Hida-theory weight change | Cited, no target |
| Edixhoven Theorem 2.6 (design G5) | SerreWeightAndLevelOptimisation §3.2 | Cited |
| Diamond's level raising | SerreWeightAndLevelOptimisation §2.4 | Cited |
| Godement–Jacquet entireness | AutomorphicLFunctionsAndLocalFactors AL.2 | Cited (§14.4) |
| Entire `L(s, f)` (case `n = 1` of §14.4) | Tau Ceti `CuspForm.hasEntireExtension_qExpansion_coeff` | Cited as supplier and as a Check |
| Lifting the exponent, discriminant, Bertrand, Hermite–Minkowski, Gaussian integers | Mathlib `padicValNat.pow_two_sub_one`, `Polynomial.discr`, `Nat.exists_prime_lt_and_le_two_mul`, `NumberField.abs_discr_gt_two`, `GaussianInt` | Cited |
| Enormous-image criterion (nt26 Lemma 4.7's general part) | ArithmeticGaloisRepresentations §7.10 | Kept §12.5 only as the application (Sen operator of the tensor) |

Kept variants differing from the parent: §14.4 (level-one eigenforms, vs the parent's §4.32 for
semistable elliptic curves). The parent's statements §§4.5–4.12, 4.20, 4.23, 4.29–4.31 are restated
only to fix hypotheses for their proofs; each target says which parent section it proves.

Ownership against open pull requests was checked with `roadmaps grep` / `roadmaps show` for: Thorne
2024's Drinfeld-space inputs (only the parent cites the paper; HilbertModularVarietiesAndShimuraCurves
has the rank-two Drinfeld half-plane only), Deligne–Lusztig theory for finite unitary groups (no owner;
LocalGaloisDeformationRings uses `GL_n` only), Mœglin's explicit packets (no owner), Godement–Jacquet
(AutomorphicLFunctionsAndLocalFactors). No declaration of `Suggested.lean` shares a fully qualified
name with another roadmap.

## Supplier gaps declared (plan.json `gaps`, README "What X must provide")

`components-under-field-extension` (AdicSpacesPartIIPartII RZ.1); `geometric-weak-primitive-auxiliary-finiteness`
and `dyadic-definite-unitary-forms` (PotentialAutomorphyInfrastructurePartII PL.7, PL.2);
`tensor-taylor-wiles-primes` (GlobalGaloisDeformations Layer G7); `formal-torus-patching`
(DeformationAndDerivedPatchingAlgebra Layer 6); `artinian-crystalline-quotients`
(FiniteFlatGroupsAndIntegralPadicHodgeTheory Layer R07.4); `unobstructed-auxiliary-prime-and-slope-count`
(GL2ModularityLifting Layer 3); `level-raising-prescribed-components` (SerreWeightAndLevelOptimisation
Layer 2); `explicit-tempered-unitary-packets`, `deligne-lusztig-transfer`
(EndoscopicTransferAndUnitaryTraceComparison §§11.2, 2.11); `iwahori-matsumoto-quasi-split`
(SmoothRepresentationsOfLocalGroups SR.1.5); `drinfeld-steinberg-detection`
(CompletedCohomologyAndLocalGlobalCompatibility §0.7); `deligne-lusztig-finite-unitary`
(RepresentationTheory/CharacterTheory, Layer 9, a roadmap on main). These cover the design's G1, G3,
G4, G5 (Diamond–Taylor) and G7, plus three found in the mapping (Conrad base change; `p = 2` for PL.2
and PL.1; Iwahori–Matsumoto for quasi-split groups, since SR.1.5 is stated for split groups).

## What the README could not support

Nothing is left as an unsupported claim; every input is a target, a supplier section or a supplier
gap. The odd-rank seed construction of Newton–Thorne I remains conditional on the hypothesised
rank-two block (§7.4), and no endpoint depends on it.

## Sources

All 18 cited works are in `sources.toml`: 15 certified (arXiv or authors' pages), 3 uncertified by
locator (kl87, bbm82, kw09; paywalled). `needs-references.toml` lists no missing text: the earlier
failed fetches (Geck 1990, Deligne–Lusztig 1976, Diamond–Taylor 1994, Kisin 2009) are not cited by
their own locators — the README refers to their content only through nt21 page locators and through
supplier gaps.

## Elaboration

`lake env lean packages/ModularityAndLanglandsExtensionsPartII/Suggested.lean` (from the content
repository, after `lake build TauCeti.NumberTheory.ModularForms.Newforms.Satake`): exactly **1**
warning, `declaration uses 'sorry'` at line 73 (`symPowerEulerProduct_levelOne_entire`); no other
messages. The proved `example` elaborates without warnings.

`#check` comparison: a scratch file with `#check @symPowerEulerFactor` and
`#check @symPowerEulerProduct_levelOne_entire` gives `ℕ → ℂ → ℂ → ℂ → ℂ` and
`∀ {k : ℤ} (f : HeckeRing.GL2.Newform 1 k) (n : ℕ), 1 ≤ n → ∀ (α β : ℕ → ℂ), (∀ p, Nat.Prime p →
f.satakeParameters p = {α p, β p}) → ∃ L, Differentiable ℂ L ∧ ∀ s, ↑n * (↑k − 1) / 2 + 1 < s.re →
HasProd (fun p => (symPowerEulerFactor n (α ↑p) (β ↑p) (↑↑p ^ (−s)))⁻¹) (L s)`, matching README §14.4;
no section variables are involved, nothing changed. Every Mathlib and Tau Ceti name the README cites
was `#check`ed at the pins without error.

## Dependency check

```
depcheck: 56 roadmaps, 669 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Adversarial pass

One row per target (and per convention or definition used by the Lean file). "V" lists values computed.

| Statement | Instances tried | Values | Result | Change |
|---|---|---|---|---|
| Conv: `rec^T`, `ε` HT `−1`, geometric Frobenius | `n = 1`, `π_v = χ` | `rec^T(χ) = rec(χ)`; HT(ε) = −1 | ok | — |
| Conv: Bertrand `n/2 < p < n` | `n = 6, 7, 8, 12` | `⌊n/2⌋ = 3,3,4,6` → `p = 5, 5, 5/7, 7/11`; even `n` not prime | ok | stated `⌊n/2⌋` (was `⌈n/2⌉`) |
| Lean: `symPowerEulerFactor` | `n = 0`, `n = 2` (Δ, p = 2) | `n = 0`: `1 − x`; `n = 2`: `e₁ = −1472`, `e₂ = 2¹¹·(−1472)`, `e₃ = 2³³` | ok; symmetric (proved) | — |
| Lean/§14.4 holomorphy | `n = 0`; `n = 1`; region | `n=0`: ζ(s), pole → `hn` needed; `n=1`: `(k+1)/2 < k/2+1` region contains TauCeti's; `|α^jβ^{n−j}p^{−s}| < p^{−1}` iff `Re s > n(k−1)/2+1` | ok | `1 ≤ n` added |
| 0.1 continuation lemma | disc/`{0}`; two axes at `0` and off `0`; irreducible `𝒴` | hypothesis fails at `0`; holds off `0` | ok | Conrad part moved to gap |
| 0.2 pseudocharacter spaces | `n = 1`, `ℚ_p`, `p` odd; quaternion fibre | dim `= [F_ṽ:ℚ_p] + 1 = 2` | ok | — |
| 0.3 polarized lifts | `n = 1`; `A = E`; `A = E[ε]` | `λ ∈ 1+𝔪` has square root since `2 ∈ A^×` | ok | replaced a wrong Check (multiplier twist) by the sign-determination Check |
| 0.4 tangent spaces | `n = 1`, `n = 2` | `h¹ = 2`; `h¹ = 1 + 0 + 4 = 5` | ok | — |
| 1.1 non-critical continuation | `n = 3`, ratio `±1` | 3-regular iff `α ≠ ±β` | ok | — |
| 1.2 ordinary continuation | CM form; `n = 2` | closure = torus normaliser; σ₂ = id | ok | shrinking of `U` stated |
| 1.3 non-criticality of Sym | `n = 2`; ratio order 2, `n = 3`; `a_τ = 0` | `χ₁² = χ₂²` collision; critical flag through `e₁^{n−1}` | ok | Check added |
| 1.4 automorphy along components | `z′ = z`; ratio `−1`, `n = 3` | excluded | ok | — |
| 2.1 twin | Δ, `p = 2` | slopes 3, 8, sum 11; `k = 2` sum 1 | ok | `ψ_p` local component |
| 2.2 trivialising families | `W` point; `χ = 1`; inert `p` | `ψ = 1` | ok | — |
| 2.3 base-change morphism | weight `k`; `K ⊂ F` | HT `{0,k−1}`; non-cuspidal | ok | — |
| 2.4 Theorem 2.33 | `n = 2`; Hida family; CM family | trivial / ok / excluded | ok | rewrote CM Check |
| 2.5 bad locus closed | `S_4`, `A_4`, `A_5`, torus normaliser | max irrep dims 3, 3, 5, 2 < 7 = dim Sym⁶ | ok | Check on `Sym²`,`Sym⁴` insufficiency added |
| 3.1 Buzzard–Kilford | `v₂(w) = 1/2`; `w = 4`; `w = 0` | slopes `1/2,1,…`; `2,4,…`; outside | ok | source re-fetched (correct paper) |
| 3.2 boundary weights | `k=3,m=0`; `k=4,m=0`; `k=2,m=1`; `k=6,m=0` | `w = 4, 24, −2, 624`; `v₂ = 2, 3, 1, 4` | ok | Check `k = 6` added |
| 3.3 twin on annulus | `k = 3,2,5` | `i+i′ = 1, 1, 2` | ok | index `i′` |
| 3.4 level-one refinements | Δ mod 5; orders | `τ(n) ≡ nσ₁(n)`; ratio `2^{±1} ≡ 2⁵, 2³`; ord₅(2)=4, ord₇(2)=3 | ok | — |
| 3.5 local image criteria | CM inert; supersingular wt 2; ordinary | ratio −1 not 3-regular; Borel closure | ok | — |
| 3.6 annulus propagation | `n = 2, 3` | — | ok | — |
| 3.7 ping-pong | `i = 1` | `m_π = 2`, `k′ = 9`, twin on `X_3`, slope 6 | ok | — |
| 3.8 Theorem D | `n = 2..5`; CM | consistent with §1.15; no level-one CM | ok | — |
| 4.1 unitary groups | `n = 1, 2, 3` | `Φ₂ᵗ = −Φ₂ = Φ₂^{−1}`, `θ₂² = 1` | ok | — |
| 4.2 character identities | `H = G` | sign `+1` | ok | — |
| 4.3 stable base change | `n = 1`; `n = 2` wrong-sign pair | `z ↦ χ(z/c(z))`; multiplicity 1 odd | ok | inputs as ET gap |
| 4.4 depth-zero cuspidals | `q = 3`; `θ = 1`; `q ≡ 1 mod p` | `6`; `32 = 4·8`; `−1+6+27 = 32`; `q³+1 ≡ 2` | ok | — |
| 4.5 types | `n = 3`; `q=3,p=7` | ord₇(3) = 6; `|C| = 28` | ok | lattices via Brauer–Nesbitt |
| 4.6 type transfer | `n = 3, q = 3` | `char = 3 ≯ 3` excluded | ok | — |
| 4.7 fixed-type rings | `n₁ = n`; `n₁ = 1`; `p = 2` | — | ok | integral independence only mod ϖ for `n₁ = 1` |
| 4.8 Iwahori–Hecke `U_{2k+1}` ≅ `Sp_{2k}` | `k = 1`; nonunit `q` | `T_s² = (q−1)T_s + q` | ok | quadratic relation and monoid form; IM for quasi-split as gap |
| 4.9 KL classification (moved down) | `PGL₂`; `s=1,u≠1` | `dim St^B = 1`; `u ≠ u^q` | ok | new target |
| 4.10 KL modules | `n = 7, 9, 11`; recursion `k = 4` | `1+7 = 8`; `1+11+2 = 14`; `16`, `5`; `L₄` matches | ok | recursion valid from `k = 4` |
| 4.11 integral structures | corrected `T_{s₂}` block | trace `q−1`, det `−q` | ok | — |
| 4.12 signs | `m = 5`; `m = 3` | `jY−jX+jZ` = 2·(6 shuffles) term by term; `m=3`: `2[1,0,1]+4[1,1,0]` = 2·(3 shuffles) | ok; printed `[1,0,1]` refuted | Checks computed |
| 5.1 NT data | `n = 3, 5`; `q ≡ 1` at `T₂` | `Θ^q = Θ^{−1} ≠ Θ` | ok | — |
| 5.2 box sums | `St₂ ⊞ 1` sign | `sp(2)` sign −1 odd mult.; `χ ⊗ sp(2)` sign +1 | ok | Check added |
| 5.3 trace formula | signs equal / opposite | half-sum; square over `L⁺` | ok | — |
| 5.4 NT Theorem 4.1 | `n = 3`; `T₁ = ∅` | — | ok | `n₁` per set; weight recorded |
| 5.5 conjugate-symplectic `μ` | real place `x = −1` | `x/|x| = −1 = ε_∞(−1)`; principal branch gives `1` | **fixed** | `μ_∞(z) = z/|z|` |
| 5.6 counts | `s = 0`, `l > 5`, `l = 5` | `2, 4`; `1, 2` | ok | — |
| 5.7 CT set-up | `l = 5` | `q_{v₀} ∈ {9,19,29}`; `[U₀:U₁] = q+1 ≡ 0` | ok | — |
| 5.8 contributing types | `n = 7` orthogonal partitions ≥ (3,3,1) | `(3,3,1),(5,1,1),(7)` | ok | Check added |
| 5.9 pairing | contributors `c, d` | `a = c+d`, `b = d` | ok | `N` with contragredient types |
| 5.10 CT Theorem 4.2 | `a = 2, b = 1`; `a ≤ b` | `6 > 5`; no contradiction if `a ≤ b` | ok | — |
| 6.1 Schur/primitive | non-disjoint `L`; `n = 1` | collisions | ok | — |
| 6.2 deformation data | `n = 3`, `[L⁺:ℚ] = 2`; `X = ∅` | `7 = dim Λ_L` | ok | — |
| 6.3 generic prime | `d` odd; `d ≤ n+n²` | — | ok | single-place multiplicity one |
| 6.4 NT Theorem 6.1 | `n = 3` | `p ≥ 7`, `[F_ṽ:ℚ_p] > 4` | ok | replaced a dubious Check |
| 6.5 reducible locus | `m = (1,…,1)`; `(2,1)`, `m=(3)`; `d = 0` | — | ok | unipotent conditions at `R₀` |
| 6.6 Steinberg prime | equal eigenvalues; `n₁ = n₂` | relation `(1,−1,0,…)` | ok | — |
| 6.7 CT Theorem 5.1 | `(4,3)`, `l = 5` | `n₁n₂ = 12`, `l ∤ 84` | ok | Clifford argument |
| 6.8 CT Theorem 5.7 | `N = 0` sum; `n₁ = n₂` | — | ok | — |
| 6.9 Thorne 6.11 | `n₁ = n₂ = 1` | classical congruence | ok | inputs as gap |
| 7.1 σ₀ | `a₂, a₃, a₄, a₅` | `−4, 0, 16, −14` | ok | — |
| 7.2 residual Sym of σ₀ | `n = 3`, `n = 1` | `577 = 2·288+1`, `289 = 17²`; `χχ^c = ε^{3(n−1)−4(n−1)}` | ok | — |
| 7.3 weight-5 form | Diamond at `q ≡ 3 mod 4` | `a_q = 0` ⇒ need `q ≡ −1 mod p`; `δ(q) = −1` | **fixed** Check | conditional on `TS_n` |
| 7.4 odd step | defect computation; `n = 3` | `ε^{−1}δ` vs `ε^{−1}` | refuted as printed | block as hypothesis |
| 7.5 Theorem 7.1 | `n = 4, 6, 2` | `1→2→4`; 6 needs `TS₃` | ok | `TS_{2^r m}` from `TS_m` |
| 7.6 Theorem E | `n = 3..5, 8`; `k ≡ 3 mod 4` | `(k−1)/2` odd | ok | conditional |
| 7.7 `Sym^{l+1}` | `l = 5, 7`; `a = 1` | `7 = 4+3`, `9 = 4+5`; `Sym²⊕det` reducible | ok | CT II 3.10 via PL.2 |
| 8.1 non-regular divisor | `n = 2, 3`; Steinberg | `(α−β)²`; `α = ±β`; ratio `l^{±1}` | ok | — |
| 8.2 n-regular congruence | FL bound; `n=3,k=2` | `(n−1)(k−1) ≤ p−2`; `p ≥ 11` | ok | `q_a` separate |
| 8.3 Theorem B rel. seed | semistable curve; CM; `n = 2` | ratio `l^{±1}` | ok | seed hypothesis |
| 9.1 NT II setting | `n = 2, 10` | `𝔽₇` ok `𝔽₅` not; `23, 25` ok, `19` not | ok | — |
| 9.2 `P → R` | `n = 1, 2, 3` | weights `[0, n−1]` | ok | BBM as gap |
| 9.3 TW data | `n = 3, 2, 4` (cube root ratio) | `α ≠ ±β`; `α³ = β³` | ok | — |
| 9.4 unitary modules | `n = 2, 3` exponents | `(1,−1)`, `(1,0,−1)` | ok | dyadic PL.2 gap |
| 9.5 patching `p > 2` | dims; `p = 3` | `dim W_∞ = q + 4|S∪S_∞|`; `A₄` excluded | ok | replaced unverified CPS claim |
| 9.6 patching `p = 2` | `γ = 0`; fibre dimension | `dim R_∞ = dim R′_∞ − γ` | ok | Check rewritten |
| 9.7 regularity | non-regular `P`; `n = 2` | — | ok | — |
| 9.8 NT II Theorem 2.1 | `n = 1, 2`; `p = 2, n = 3` | `2^a > 5` ⇒ `a ≥ 3` | ok | descent via soluble descent |
| 10.1 semisimple conductor | St; depth-zero sc | `1`; `l²` | ok | — |
| 10.2 weight-2 congruences | `p^a = 5` | excluded | ok | — |
| 10.3 seasoned | `n = 3` | `t ≥ 53`; `q = 211` least (158 composite) | ok | — |
| 10.4 seasoned large image | order `t > 5` | excludes `A₄,S₄,A₅` | ok | — |
| 10.5 making seasoned | `t > N(π)` | — | ok | — |
| 10.6 removing a prime | `p = q`; `p = 3` | — | ok | — |
| 10.7 weight-two case | `k = 0` | `H₀` via §§8.2, 8.3 + PL.5 | ok | seed hypothesis; PL.1/PL.5 added |
| 10.8 NT II Theorem 3.1 | `n = 1, 2`; 3-adic step | — | ok | seed hypothesis |
| 11.1 §3 data | `r = 1`; `p = 5` | `q_{v₀} = 19`; `a ≥ 4` | ok | — |
| 11.2 companion | `r = 2`; `σ = π` | HT `{0,1,2,3}`; `{0,1}+{0,1}` repeats; `ε̄^{−2}ε̄ = ε̄^{−1}` | ok | `χ_v` twist |
| 11.3 `s` | `r = 2` | `3 + 1` | ok | — |
| 11.4 problems | `n = 4, [F′:ℚ] = 2`; `r = 3` | `dim Λ = 9`; `4 + 2` | ok | — |
| 11.5 special fibres | `r = 2` | dim `1 + 16` | ok | Check replaced |
| 11.6 Steinberg lift | `r = 2` | `SP₁, SP₃` known | ok | two finiteness calls |
| 11.7–11.9 generic primes, R = T, propagation | one component; disconnected graph | — | ok | — |
| 11.10 NT26 Theorem 3.2 | `r = 1, 2` | Ramakrishnan; HT `{0,…,2r−1}` | ok | — |
| 12.1 reductions | `r = 1`; σ-only place | — | ok | `Σ = Σ_π ∪ Σ_σ` |
| 12.2 `P → R` tensor | `r = 1` | — | ok | — |
| 12.3 TW data tensor | `r = 1`; repeated eigenvalue | — | ok | prime selection gap |
| 12.4 unitary modules | `r = 1, i = 2` | `η₁η₂ = αβγ₁²` vs printed `αβγ₁` | ok | corrected generator |
| 12.5 enormous | `r = 2` irregular | `{0,1}+{0,1}` | ok | split-polynomial hypothesis |
| 12.6 patching | dims | `dim W′ − dim W = (n−1)q` | ok | — |
| 12.7 NT26 Theorem 4.1 | `r = 1`; (7) vs `{0,…,r−1}` | weight 1 repeats | ok | — |
| 13.1 dihedral large image | char 2, `M = 6` | `q ∈ {2,4}`, `q±1 ∈ {1,3,5}` | ok | Check rewritten |
| 13.2 S5 hypotheses | `r = 3`; `p = 5` | `12`; `11,16,31,41` | ok | reciprocity from AGD §R02.3.5 |
| 13.3 companions | `K_π = ℚ`; FL weights; `r = 2` diagonal | `{−1,0,1}` vs `{−2,0,2}`; `Std⊗Std = Sym² ⊕ 1` on diagonal | ok | Check replaced |
| 13.4 propagation | `K_π = ℚ`; eigenvalue count | `x^{±1}y^{r−1−2j}` distinct | ok | — |
| 13.5 Theorem 5.5 | `r = 1` | — | ok | — |
| 13.6 Theorem 5.9 | `q_{v₁} ≡ 1` | — | ok | — |
| 13.7 Corollary 6.2 | `r = 1` | — | ok | places of `E` |
| 13.8 Proposition 6.3 | `p = 5, r = 1` | `4 + 2 = 6` | ok | — |
| 13.9 Thorne induction | `p = 7, r = 1, 3`; `n = 11` | `SP₈`, `SP₁₀`; `11 = 7 + 4` needs `TP₄` | ok | — |
| 13.10 SP_n | `n = 6, 7, 11, 12` | indices `{1,2,4}`, `{1,2,3,3}`, `{3,4,5,3}`, `{4,5,6,2}` | ok | no `SP₀` |
| 14.1 TS_n, Theorem E | `Sym^{n−1}(St⊗χ)` | `sp(n) ⊗ χ^{n−1}` | ok | new target |
| 14.2 Theorems A, B | level one ⊂ (2) | — | ok | new target |
| 14.3 NT II Theorem A | `n = 1, 2` | — | ok | new target |
| 14.4 holomorphy | Δ, `n = 2`, `p = 2` | `e₁ = −1472` | ok | new target (Lean headline) |
