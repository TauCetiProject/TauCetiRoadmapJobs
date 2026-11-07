# Design report: EllipticCurveModularityImaginaryQuadraticPartII

Deliverables: `packages/EllipticCurveModularityImaginaryQuadraticPartII/design/README.md`,
`packages/EllipticCurveModularityImaginaryQuadraticPartII/design/plan.json` (28 targets in 8 layers, one
gap), `packages/EllipticCurveModularityImaginaryQuadraticPartII/sources.toml` (8 sources, `sources check`:
0 problems). Parent: EllipticCurveModularityImaginaryQuadratic (ECMIQ below). Pins: Mathlib
`1b1ccf4b088b32fa3f23f2de1127433254a81e1e`, Tau Ceti `2fd255d997f47c0b5d834ee416c7015d55444ce5`
(from `lake-manifest.json` of the content checkout; ECMIQ itself quotes older pins).

## What the design covers

| Layer | Content | Final targets |
|---|---|---|
| 1 | CM-ness of intermediate fields of `K(μ_n)/K` (Mathlib lacks composita/subfields of CM fields); descent of decomposed genericity and cyclotomic irreducibility along `F/K`; the field `K₆₀ = ℚ(ζ₁₅+ζ₁₅⁻¹, i)` | 1.1 (in `Suggested.lean`), 1.2, 1.3 |
| 2 | Route 1: `A_t` modular over `K` before base change (`ζ₅ ∉ K`); three lifts, soluble descent and untwisting over any CM field; ECMIQ §§8.5–8.6 over a CM base | **2.5** (all CM `K` with `ζ₅ ∉ K`) |
| 3 | `sl2AdjointRep`; restriction `H¹(SL₂(𝔽₅), ad⁰) → H¹(⟨U⟩, ad⁰)` bijective; protected local data; unipotent-inertia ring smooth; tangent line = unramified line, self-annihilating | 3.2 (in `Suggested.lean`) |
| 4 | Exceptional classes ramify at protected places; Taylor–Wiles primes with a protected place; presentation with unframed protected places (`g = r − 3d − 1 + t`) | |
| 5 | Protected prepared datum and problems; Hecke-valued representations satisfy the protected condition; prepared lifting (CaptainSude26 Thm 4.2) | |
| 6 | Preparation keeping `P` split; general lifting theorem at five with protected places | **6.2** |
| 7 | Width-three (`I₃`) degeneration; auxiliary-prime opens; Tate places are protected; `switch_five` with retained places; `A_t` modular over `K ∋ ζ₅` | |
| 8 | Every elliptic curve over every CM field | **8.1** |

`Suggested.lean` (to be written at packaging) declares exactly `sl2AdjointRep`,
`sl2Five_adjoint_restriction_unipotent_bijective` and `isCMField_of_intermediate_cyclotomic`; these
are the only backticked names of this roadmap in the README. All other targets are named in prose and
carry proposed Lean names only in `plan.json`.

## Changes relative to the triaged target

1. **Protected place hypothesis simplified and corrected.** The triage asked for CaptainSude26
   Lemma 3.1's normal form (residual Frobenius trivial after a tame-lift change). The design needs only
   "`ρ̄(I_v)` nontrivial and unipotent": smoothness (§3.4) works for any `q_v`; `L_v = H¹_ur` follows from
   `H¹_ur ⊆ L_v` and `dim L_v = h⁰ = dim H¹_ur` (§3.5); `L_v^⊥ = H¹_ur(M(1))` follows from the counting
   argument of ArithmeticGaloisDuality R02.4.2, which does not use unramifiedness of `M`. The normal form
   is kept as an API fact of §3.3. Added the hypothesis "ρ and π unramified at `v^c`" to Theorem 6.2: the
   source's prepared setting requires `P^c ∩ S = ∅`, and since every CM extension has isomorphic
   completions above `v` and `v^c`, preparation cannot reach it otherwise (§6.1 Check).
2. **Layer 3 stated for odd `p`.** The local statements (3.3–3.5) hold for every odd `p` (computed:
   the cocycle description needs `p ≥ 5`, the rest does not); the global layers stay at `p = 5`, the only
   prime with `H¹(SL₂(𝔽_p), ad⁰) ≠ 0` (ArithmeticGaloisRepresentations §7.7).
3. **T5c routed through the general theorem.** The triage (following CaptainSude26 Prop. 5.2) re-prepared
   the field inside the auxiliary-curve construction. The design instead proves the general Theorem 6.2
   once (with its own preparation §6.1) and reduces the auxiliary-curve step to `switch_five` with
   retained auxiliary places (§7.4), then descends by PotentialAutomorphyInfrastructure §2.3.
4. **T6 split by `ζ₅ ∈ K`.** For non-CM `E`: `ζ₅ ∉ K` uses Theorem 2.5; `ζ₅ ∈ K` uses Layer 7 directly over
   `K`. No descent along `K(μ₅)/K` is needed; that alternative is a consistency Check of 8.1.
5. **Descent along `F/K`** uses PotentialAutomorphyInfrastructure §2.3(2) (soluble CM extensions,
   character correction included) rather than iterating ECMIQ §8.4; both are valid; Theorem 1.1 supplies
   CM-ness of the intermediate fields.
6. **Suppliers adjusted after reading them at their heads.** ArithmeticGaloisRepresentations §7.7 (not
   §7.9) states the injectivity of restriction to a Sylow subgroup and `dim H¹(SL₂(𝔽₅), ad⁰) = 1`.
   LocalGaloisDeformationRings §§2.3, 2.8, 2.21 (not only §2.3) give the smooth minimally ramified ring
   and its identification with unipotent inertia. Local duality and the Euler characteristic are the
   pinned Tau Ceti declarations `TauCeti.ClassFieldTheory.tateDualityPairing_perfect_mixed` and
   `TauCeti.ClassFieldTheory.eulerCharacteristic_mixed`. GlobalGaloisDeformations §3.6 states the
   relative dual Selmer group with no condition at the framing set, which is exactly the shape the
   protected Taylor–Wiles argument needs.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Convention: arithmetic Frobenius, `φτφ⁻¹ = τ^q` | `U` over `𝔽₅`, `q = 11, 7` | `U¹¹ = U`; `U⁷ = [[1,2],[0,1]]`; geometric direction gives `U³` (`7⁻¹ ≡ 3`) | pinned | witness added to Conventions |
| Convention: trace form on `ad⁰` | basis `(e,h,f)`, chars 2, odd | Gram `[[0,0,1],[0,2,0],[1,0,0]]`, det `−2`; zero in char 2 | holds for odd `p` only | char-2 non-example in §3.1 |
| Convention: `Ad(U)` | direct product | `De = e`, `Dh = h − 2e`, `Df = f + h − e` | correct | — |
| 1.1 CM intermediate fields | `ℚ(i) ⊂ ℚ(ζ₂₀)`; `S={1,2}`; `ℚ(√5)`; `ℚ(√−3) ⊂ ℚ(ζ₁₂)` | middle field `ℚ(i,√5)` CM over `ℚ(√5)`; `L = K`; `ℚ(√5)` totally real | true for fields containing `K`, false for arbitrary subfields | hypothesis `K ⊆ E` kept, non-example added |
| 1.2 genericity descent | `K=F=ℚ`; `1⊕1` mod 3 over `ℚ` vs `ℚ(ζ₃)` | witness 2 over `ℚ` (ratio `1 ≠ 2`); over `ℚ(ζ₃)` every split prime is `1 mod 3`, ratio `1 = q` | descent true, ascent false | non-example added |
| 1.3 `K₆₀` | `(ℤ/60)ˣ` | fixer `{1,29}`; `29 ≡ 4 mod 5`, `29 ≡ 2 mod 3`; `[K₆₀:ℚ] = 8`; `K₆₀(ζ₃) = K₆₀(ζ₅) = ℚ(ζ₆₀)` | correct | — |
| 2.1 seed before base change | `K₆₀`; imaginary quadratic `K` | `ζ₅ ∉ K₆₀`, `ζ₅ ∈ F`; for imaginary quadratic both orders agree | holds; `ζ₅ ∉ F` never used | — |
| 2.2 assembly | lifting primes; `h(t)` square | primes `p, 3, p`, `p > 100`, never 5; trivial twist gives `π_E = π_B` | holds over any CM field (intermediate fields CM by 1.1) | — |
| 2.3 local comparison | split mult / pot. good / good; `z = i`; `q = 4, a = 4` | factor degrees 1 / 0 / 2; `diag(i,−i)` trace 0 det 1; roots `2,2` → unitary `1,1` | correct | — |
| 2.4 CM branch | `ℚ(ζ₈)` with `y²=x³−x`, `y²=x³+1`; `y²=x³−x` over `ℚ(√−3)` | `ℚ(i) ⊆ ℚ(ζ₈)` sum; `ℚ(√−3)·ℚ(ζ₈) = ℚ(ζ₂₄)` induction; `ℚ(i) ⊄ ℚ(√−3)` induction | correct | — |
| 2.5 / 8.1 example fields | `ℚ(√−1, √5)` in my draft's list of fields containing `ζ₅` | `Gal(ℚ(i,√5)/ℚ) ≅ (ℤ/2)²`, `Gal(ℚ(ζ₅)/ℚ)` cyclic of order 4 | **draft wrong**: `ζ₅ ∉ ℚ(√−1,√5)` | replaced by `ℚ(ζ₂₀)`; added as a non-example Check of 8.1 |
| 3.1 `sl2AdjointRep` | `U`, `−1`, `diag(2,3)` over `𝔽₅`; left multiplication | `diag(2,3)` scales `e,f` by `4`, fixes `h`; `Uf = f + E₁₁` has trace 1 | conjugation preserves trace zero; left multiplication does not | non-example Check |
| 3.1 invariants | odd `p`, including `p = 3` | `ker(Ad U − 1) = k e`, `ker(Ad Uᵀ − 1) = k f`, intersection 0 | holds in every odd char | "`#k ≥ 4`" dropped |
| 3.2 restriction bijective | brute-force cocycles for `SL₂(𝔽_p)`, `p = 3,5,7` (Cayley-graph linear algebra over the generators `U, Uᵀ`) | `p=5`: `dim Z¹ = 4`, `dim B¹ = 3`, `dim H¹ = 1`; `H¹(⟨U⟩) = 1`; norm of `Ad U` is `0`; the `f`-coordinate of `c(U)` takes all 5 values on `Z¹` (rank 1, kernel = `B¹`) | bijective at 5 | — |
| 3.2 at other primes | `p = 7`, `p = 3` | `p=7`: `H¹(SL₂)=0`, `H¹(⟨U⟩)=1` (not surjective); `p=3`: norm `(D−1)²`, `N(f) = e`, `H¹(⟨U⟩)=0` | special to 5 | non-example Checks |
| 3.2 order-3 subgroup | `[[0,−1],[1,−1]]` | char poly `X²+X+1`, order 3, det 1 | restriction zero | Check |
| 3.3 protected | Tate `v(q)=1,3,15`; semisimple order-3 inertia; index-5 base change | inertia `[[1,v(q)],[0,1]]`; `v(q)=15` trivial; `U⁵ = 1` | definition discriminates | Checks |
| 3.3 Frobenius form | `q_v = 11` vs `7` | centralizer `a(1+bE₁₂)` needs `q ≡ 1`; `q=7`: conjugate `U⁷ = U²` | normal form only for `q ≡ 1`; not needed elsewhere | stated as API, removed from hypotheses |
| 3.4 smooth ring | generic `A`; `[[ζ₅,1],[0,ζ₅⁻¹]]`; first-order `(1+εf)U`, `(1+εh)U` | `N² = tr(N)N − det N`; `ρ(φ) = [[qδ,z],[0,δ]]`, `δ² = ψ(φ)/q`; char poly `(X−ζ)(X−ζ⁻¹)`; traces `2+ε` and `2` | equivalence holds for all `q_v`; residual protection does not give the condition | Checks |
| 3.4 Steinberg relation | `q = 11`, `δ = 1`, `z = 0` | `11·12² = 1584 = 12²·11` | holds on every lift | Check |
| 3.5 tangent and dual | `μ₅ ⊂ F_v` (`q ≡ 1`), `q ≡ 2 mod 5` | `Σ_{i<11} Dⁱ = Σ_{i<31} Dⁱ = I` (computed), `Σ_{i<7} Dⁱ ≠ I`; `dim Z¹ = 4`, `dim B¹ = 2`, `h¹ = 2`; `q ≡ 2`: `h⁰ = 0`, `L_v = 0` | `L_v = H¹_ur`; dual is `H¹_ur(M(1))` by counting `#H¹ = #H⁰·#H⁰(M(1))` | (b) proved without `μ₅`; (c) needs `μ₅` |
| 4.1 exceptional classes | no protected place; order-2 inertia; `SL₂(𝔽₇)` | inflated class unramified where `ρ̄` is; `H¹` of order-2 group with `𝔽₅` coefficients 0; `H¹(SL₂(𝔽₇), ad⁰)=0` | hypothesis "protected" necessary | Checks |
| 4.2 TW primes | `diag(2,3)`; framing `P`; `H_∅ = 0` | `6 ≡ 1`; eigenvalues of `Ad` `4,4,1`; framing `P` lets the exceptional class survive (its values at prime-to-5 Frobenius are coboundaries) | detection works only with `P` unframed | Checks |
| 4.3 presentation | `d=1,t=1,r=3`; `d=2,t=3,r=10` | `g=0`; `dim R^loc = 14`, `g = 6`, `dim R_∞ = 20`, `dim S_∞ = 22`, deficit `2 = d` | consistent with CLGC §9.3 count | Checks |
| 5.1 prepared datum | `P = ∅`; `v^c ∈ R`; degrees `(1,1,6)` and `(1,…,1)` with `[F⁺:ℚ]=8`; residue `𝔽₅` | complementary sums `6 > 4` / `1 < 4` / `6 > 4` | definition discriminates | Checks |
| 5.2 problems | `Q = ∅`; LGDR §2.5 Steinberg; `d=1` local dim | `dim R^loc = 1+3+2 = 6` | LGDR §2.5 inapplicable (trivial residual only) | Check |
| 5.3 Hecke condition | Iwahori with trivial vs `χ_v` character; pro-`v` Iwahori | torus polynomial `(X−1)²` vs `(X−χ_v(u))(X−χ_v(u)⁻¹)` | full Iwahori level with trivial character needed | Checks; gap recorded (below) |
| 5.4 prepared lifting | `ζ₅^{±1}` inertia target; ordinary vs supersingular; `d=1` | not a point of the problem; component mismatch; deficit 1 | consistent | — |
| 6.1 preparation | ramification index 5 at `P`; `v, v^c` both ramified; `F = ℚ(ζ₅)` | `U⁵=1`; conjugate completions isomorphic; no imaginary quadratic subfield | hypothesis at `v^c` necessary for this route | hypothesis added |
| 6.2 lifting | `ζ₅ ∉ F`, det order 2 or 4; `ζ₅ ∈ F`; imaginary quadratic `F` | `2² = −1` in `𝔽₅`, `det(2g) = (−1)·4 = 1`; `[G:H] = [F(ζ₅):F] > 1`; subgroups of `SL₂(𝔽₅)` onto `PSL₂(𝔽₅)` are everything | (4) fails iff `ζ₅ ∈ F` and image `SL₂(𝔽₅)` | proof wording tightened |
| 7.1 width three | involution on a 3-point fiber; thickness count; `p = 101` | `2(P₀+jT') = c₀` has one solution `j ∈ ℤ/3`; three fixed nodes → arithmetic genus `3−2+1 = 2`; thickness `2+1 = 1+1+1 = 3`; `R_*` of order 606, `x` étale | `I₃` confirmed | Checks |
| 7.2 auxiliary opens | `v(s) = 1, 5, 7`; `v^c`; `q = 5` | `v(Δ) = 3, 15, 21` | `5 ∤ k_v` necessary; all places above `q` constrained | Checks |
| 7.3 Tate places | `v(q) = 3, 15`; non-split; good | `[[1,3],[0,1]]`; trivial; twist by unramified quadratic | correct | non-split case clarified |
| 7.4 retained switch | `Σ = ∅`; `Σ` above 2; quadratic completion at `Σ` | — | `Σ` must avoid 2,3,5 and split | Checks |
| 7.5 protected seed | transvections mod 5; `det` over `ℚ(ζ₅)`; CM | `⟨[[1,3],[0,1]],[[1,0],[3,1]]⟩` has order 120 (computed), one transvection order 5; perfect of order 120 | image `SL₂(𝔽₅)`, non-CM | Checks |
| 8.1 headline | `ℚ(ζ₅)`, `K₆₀`, imaginary quadratic, `ℚ(√−1,√5)` | see rows above | consistent with ECMIQ and Theorem 2.5 | — |

**Context and generality.** Every theorem names its field hypotheses (CM, `μ₅ ⊂ F` where used) in its
statement; the README's generality matches `plan.json`. The Lean declarations planned for
`Suggested.lean` are at their natural generality: `sl2AdjointRep` for any field; the restriction theorem
over `𝔽₅` with the extension to `k ⊇ 𝔽₅` in prose; the CM theorem for any `IsCyclotomicExtension S K L`
with `L/K` finite. **Vacuity.** Every global statement ties its data to the construction (switch
parameters from ECMIQ §7.4, protected places tied to `ρ̄`, Taylor–Wiles data from §4.2). **Duplication
by object.** Mathlib was searched for composita/subfields of CM fields (absent; `CMField.lean` has
`ofCMExtension`, `of_forall_isConj` for Galois `K/ℚ`, `of_isAbelianGalois` only), conjugation
representations on `sl` (absent; built with `Rep.ofDistribMulAction`), cyclic group cohomology
(present, used); Tau Ceti for local duality and Euler characteristic (present, used).

**Risk items of the triage, as checked.** (i) The augmented relative dual Selmer group has no condition
at the framing set (GlobalGaloisDeformations §3.6 formula; CaptainSude26 lines 420–425) and vanishes
by §4.1's detection — checked. (ii) The inertial identity at `P` is obtained exactly as CN obtain the
`R`-place identities (CN23 lines 4347–4352 and 4388: ACC Theorem 3.1.1 at Iwahori level); the design
treats `P` as further Iwahori places in CLGC §§9.7, 9.9 — checked, modulo the supplier gap below.
(iii) Clause (15) enters CN's prepared proof only at the Taylor–Wiles step (CN23 line 4404) — checked.
(iv) The `I₃` type and cubic Tate parameter — checked by the fixed-point count above. (v) Keeping the
protected place, splitting and CN's field conditions together — handled by the general preparation
§6.1 (trivial completions at places of `F⁺` below `P`) and the retained-place switch §7.4; the global
steps of CaptainSude26 remain unrefereed and are stated as targets, not as established results.

## Ownership and duplication checks

Searched with `roadmaps grep` over main and all open heads: `μ₅ ⊂`, `ζ₅ ∈ F/K`, "protected place",
"Steinberg … protect", "every/all CM field(s)", `SL₂(𝔽₅)` with Taylor–Wiles/Selmer; and the
`decomposed generic` descent lemma. Only ECMIQ and CLGC mention `ζ₅ ∈ F` (as an exclusion). Read at
their heads: ECMIQ (#1048 head, all layers), CrystallineLocalGlobalCompatibilityCM (Layers 8–9 and
scope), PotentialAutomorphyInfrastructure Layer 2, AutomorphicGaloisRepresentationsPartII AG2.5 and
AG2.7, GlobalGaloisDeformations §§3.4–3.7, 5.1–5.7, LocalGaloisDeformationRings Layer 2,
ArithmeticGaloisRepresentations §§4.3, 6.3, 7.7–7.9, ArithmeticGaloisDuality R02.4.2,
NeronModelsAndSemistableAbelianVarieties §§3.12, 5.1, FaltingsFinitenessAndIsogenyTheorems R28.6,
GL2ModularityLifting §1.7, PotentialModularityAndCompatibleSystems §§2.12–2.16,
GL2AutomorphicRepresentationsAndTransfer R16.3.2, R17.4.16, ModularityAndLanglandsExtensions §2.29,
AutomorphyLiftingBeyondTaylorWiles scope; on main EllipticCurves Layer 4 and ClassFieldTheory.
`roadmaps overlaps` for ECMIQ and CLGC: no open pull request changes them, and no id they cite is
dropped. Nothing owns the protected lifting theorem, the width-three degeneration, the descent of
decomposed genericity or CM composita.

**Why this roadmap owns its general lemmas.** Theorem 1.2 (descent of decomposed genericity) belongs
naturally beside AutomorphicGaloisRepresentationsPartII AG2.7, and Layers 3–6 (lifting at five with a
protected place) beside CrystallineLocalGlobalCompatibilityCM §9.12; neither states them. Both owners
are earlier in the merge order, so nothing moves down; the statements are planned here at their
natural generality (rank `n`, any finite extension; any representation over any CM field), and a
continuation of either supplier could take them over by moving the layer.

## Notions moved down from later roadmaps

None. Every supplier is on main or earlier in the merge order; the design consumes nothing from
ModularityAndLanglandsExtensions or any later roadmap.

## Proposed Part IIs and supplier requests

- **AutomorphicGaloisRepresentationsPartII, AG2.5 (supplier obligation, recorded as gap
  `acc-torsion-inertial-comparison`).** The torsion inertial comparison at Iwahori places (ACC Theorem
  3.1.1) is consumed as "AG2.5" by PotentialAutomorphyInfrastructure (supplier table) and by
  CrystallineLocalGlobalCompatibilityCM §§9.7, 9.9, but AG2.5's text states only characteristic-zero
  comparisons (Varma, Caraiani, purity). Theorem 5.3 needs the torsion form.
- A later revision of AutomorphicGaloisRepresentationsPartII AG2.7 could absorb Theorem 1.2, and a
  CrystallineLocalGlobalCompatibilityCM Part II could absorb Layers 3–6; no such roadmap exists.

## Gaps

| slug | needed by | supplier, section | what is missing |
|---|---|---|---|
| `acc-torsion-inertial-comparison` | 5.3 | AutomorphicGaloisRepresentationsPartII, AG2.5 | ACC Theorem 3.1.1: Hecke-algebra-valued representation modulo a nilpotent ideal of bounded exponent with inertial characteristic polynomials equal to the torus polynomials at Iwahori places away from `p` |

## Sources

All eight sources in `sources.toml` were read in the worker's cache: LeHung26 (§§1–5), CaptainSude26
(entire), CN23 (Theorem 5.2, §5.6, Theorem 6.1, Lemmas 6.1.3–6.1.4, Proposition 6.1.5), ACC23 (§3.1,
Theorem 3.1.1), and MilneCM (Chapter I §1), newly fetched from the author's page through the sources
service (Proposition 1.4, Corollary 1.5, Remark 1.6, p. 10) for Theorem 1.1. AKT23, OpenAI26 and CHT08
are cited at locators the triage and the parent recorded; their passages used here (AKT Lemma A.5 as the
replaced step; OpenAI §9.4 through the parent; CHT Lemma 4.1.2 through GL2ModularityLifting §1.7) were
not re-derived. No text is missing; no `needs-references.toml` was written. CaptainSude26 has no
licence: cited by locator only. No passage of any source is copied.

## Dependency check output

```
candidate: EllipticCurveModularityImaginaryQuadraticPartII is not in the merge order yet; checked as if placed after EllipticCurveModularityImaginaryQuadratic (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2370 edges, 0 problem(s)
```

No UPWARD or CYCLE line. Placement: right after EllipticCurveModularityImaginaryQuadratic (183), before
ModularityAndLanglandsExtensions.

## Citation resolution

`roadmaps resolve` on the README reports no Lean name found nowhere, and three "cross-roadmap
citations found nowhere": `LeHung26, §4.4`, `OpenAI26, §9.4`, `CaptainSude26, §4`. These are source
locators (sources.toml ids followed by a section sign), not roadmap citations: false positives.

## Untrusted text

LeHung26 and CaptainSude26 contain AI-assistance disclosures and descriptions of their review status;
none of the fetched texts, roadmaps or the triage asked for any action outside this job.
