# PKG-PotentialAutomorphyInfrastructurePartII

The accepted design was expanded into the roadmap folder `packages/PotentialAutomorphyInfrastructurePartII/`. It contains:

- `README.md`: 11 layers and 110 targets, with Summary, Scope and ownership, Conventions, Exact supplier contracts, How to read the build, Downstream consumers and References;
- `Suggested.lean`;
- `metadata.toml` (`topic = "math.NT"`);
- `sources.toml`: 21 certified sources, with `sources check` reporting 0 problems;
- `design/plan.json`: the `gaps` list is replaced by 17 supplier gaps, and every other key is unchanged.

The design was not re-planned. Its ten layers PL.0–PL.9 become Layers 0–10, with the Schur sub-layer PL.6:schur placed as Layer 2 before the automorphic layers, as the design's structure section proposed. Corrections are listed below.

## Headline theorems

At the pins (Mathlib `6b7abb3`, Tau Ceti `a91d3aa`), no headline theorem is statable. `Suggested.lean` therefore declares nothing: it holds the module docstring and the namespace `TauCetiRoadmap.PotentialAutomorphyInfrastructurePartII`. Mathlib has absolute Galois groups, `NumberField.IsCMField`, `cyclotomicCharacter`, `Representation.ind` and `ringKrullDim`. It has no automorphic representations, no Galois representations attached to them, no `𝒢_n`-valued polarized representations and no Galois deformation rings.

| Headline | README | Status | Lacks |
| --- | --- | --- | --- |
| Minimal automorphy lifting with adequate image (Tho12 Thm 7.1; BLGGT14 Thm 2.3.1) | §5.1 | not statable | RACSDC representations and their Galois representations (AG2.0–AG2.6); `𝒢_n` and adequacy (ArithmeticGaloisRepresentations §§7.4, 7.9); local lifting-ring components |
| 2-adic lifting with strong residual oddness (Tho17 Thm 5.1) | §5.3 | not statable | the same carriers, and polarized problems at `p = 2` |
| Ordinary automorphy lifting (BLGGT14 Thm 2.4.1; Ger19 Thm 5.3.2) | §5.5 | not statable | `ι`-ordinary automorphic representations; ordinary Galois representations of weight `λ` |
| Finiteness of polarized deformation rings | §§5.6–5.7 | not statable | polarized global deformation rings |
| Potential ordinary automorphy (BLGGT14 Thm 3.1.2) | §6.2 | not statable | automorphic Galois representations; lisse sheaves of the Dwork family |
| Potentially diagonalizable lifting (BLGGT14 Thm 4.2.1) | §6.5 | not statable | components of local lifting rings, hence potential diagonalizability |
| Residually reducible lifting and finiteness, strong and weak forms (ANT20 Thms 6.1–6.2; Tho15 Thm 7.1) | §§8.1–8.3, 8.17–8.19 | not statable | pseudodeformation rings of `𝒢_n`-valued Schur data; ordinary Hecke algebras of definite unitary groups |
| Adjoint Selmer vanishing (NT23 Thm A) | §9.7 | not statable | Bloch–Kato Selmer groups of automorphic Galois representations |
| Almost minimal integral `R = T` for rigid `r̄` (LTXZZ Thm 3.6.3) | §10.2 | not statable | integral étale cohomology of unitary Shimura varieties; universal polarized deformation rings |
| Lifting from generic local domains (LLHLM23 Thm 9.2.1) | §10.5 | not statable | tame types; potentially crystalline representations of fixed type; `K`-types of automorphic representations |

## What the README could not support

- **Weak primitivity over a finite field** (design gaps 5, 17, 18). ANT20 Theorem 6.2 and Tho15 Theorem 7.1, as printed, assume weak primitivity over an arbitrary finite residue field `k`. Their proofs apply the generic `R = T` theorem at primes whose normalizations have larger residue fields, and weak primitivity does not pass to them: the standard `S₃` representation is not induced over `𝔽₅` but is induced over `𝔽₂₅`. §§8.17–8.19 are therefore stated with the hypothesis over `k̄`, or over `k` when `k` splits every subgroup of the residual image. The literal finite-`k` forms are not claimed.
- **Change of weight** (design gap 2). The full relaxation of LLHLM23 Remark 9.2.2, which drops weight and `K`-type from residual automorphy, needs LLHLM23 Theorem 9.1.6, the generic Serre weight theorem. No roadmap on main, in open PRs or on the board plans it (AlgebraicModularFormsAndSerreWeights and its Part II treat `GL₂` and Siegel forms). §10.6 is therefore stated with the modularity of an obvious weight as an explicit hypothesis (vi′), and the README says the unconditional form is not stated here.
- **Nonzero ring in NT23 Proposition 2.14.** The constrained semistable quotient can be the zero ring, for instance when `a > b`, or when `ρ̄ = ω`, `[a, b] = [0, 0]` and `p > 2`. NT23 calls it an object of `C_O` without this proviso. §9.4 states it as a quotient that may be zero.
- **Even degree in NT23 Theorem 5.2.** The reduction needs `L/L⁺` unramified at all finite places, which forces `[L⁺ : ℚ]` even. NT23 does not say so; §9.7 says it.
- **Existence of the definite unitary group** (§3.1). Thorne's condition `4 | n[L⁺ : ℚ]` is sufficient, not necessary: for `n = 1` and `[L⁺ : ℚ] = 2`, `U_1` exists. The design's claim that the condition is automatic for odd `n` was false and is removed.
- **Nonsplit places.** The rigid problems of LTXZZ and the finiteness of §5.9 need polarized problems at places of `F⁺` not split in `F`. GlobalGaloisDeformations §8.1 fixes `S` split and `p` odd, so this is the supplier gap `nonsplit-polarized-problems`.
- **Rank-one finiteness.** NT21 Theorem 5.2 covers only rank `≥ 2`, while the reducible-locus bound (§8.7) needs the rank-one block. This is the supplier gap `rank-one-ordinary-finiteness`.
- **Uncited suppliers.** ClassicalAdicEtaleCohomology does not supply the Lefschetz trace formula for the Dwork family; it is a Huber adic-space roadmap. That input is EtaleCohomologyFoundations §§F.10.1–F.10.5. LefschetzPencilsAndVanishingCycles is cited at §§1.1–1.2.

## Notions moved down

- **The self-dual Dwork family** (BLGHT11 §§4–6) is §6.1, covering design gaps 1 and 20. The design assigned it to PotentialAutomorphyDworkMotivesPartII, but that design consumes Layer 0 (`ordinary of weight λ`, auxiliary characters). Supplying the family from there would create a cycle.
- **The Ihara-avoidance `R = T` theorem with a fixed potentially crystalline type at `l`** (design gap 3) is §4.8. It is the input of LLHLM23 Theorem 9.2.1 and of LLHLM20 Proposition 6.0.2.
- **Finiteness and characteristic-zero lifts at places not split in `F`** (design gap 4) is §5.9, used by §10.3.
- **Finiteness with an unobstructed auxiliary place** (design gaps 6, 21; Tho24 Theorem 7.5) is §8.20, with its own argument. The vanishing `H⁰(G_{F_w}, ad ρ̄(1)) = 0` makes every lift at `w` unramified (LocalGaloisDeformationRings §§2.2, 2.4). Here a correction was needed: the old clause also supplied the scalar Frobenius used by the Taylor–Wiles cotangent control. §8.20 therefore adds the hypothesis that `ρ̄(G_{F(ζ_l)})` has no nontrivial `l`-power quotient, and the variant without it is not claimed.
- **Allen's characteristic-zero generic Weil–Deligne representations** are §9.1. AutomorphicGaloisRepresentationsPartII AG2.7 owns only the residual, unramified notion.
- **The source/common weight conversion for LLHLM23** is §10.4, an elementary computation over AutomorphicFormsOnReductiveGroups §5.1. The design's requests to AG2.0 and AF.4 for it are therefore not supplier gaps.
- **The Schur condition** stays in this roadmap as §2.1. GlobalGaloisDeformations §§8.1–8.2 assumes the Clozel–Harris–Taylor Schur condition without stating it.

## Duplication removals

The duplication sweep covered:

- main at `6fd1c2e`: none of its roadmaps overlaps;
- the 366 open roadmap PRs at their heads, through supplier README dumps and `roadmaps resolve`;
- the pinned libraries: Mathlib has no carriers, and Tau Ceti supplies only Chebotarev and the splitting criterion.

| Design target | Now owned by | Action |
| --- | --- | --- |
| PL.1/connects-relation | LocalGaloisDeformationRings §6.8 | removed; Layer 1 uses §6.8 |
| local "ordinary of weight λ" | LocalGaloisDeformationRings §1.7 | removed; §0.1 keeps only the global notion |
| PL.0/auxiliary-cm-extensions | PotentialAutomorphyInfrastructure §2.5 | removed |
| PL.6/connectedness-dimension | DeformationAndDerivedPatchingAlgebra §6.6 | removed |
| PL.9/rigid-residual-representation | LocalGaloisDeformationRings §2.20 (`IsRigidFor`), with both parities of `𝒟^ram` in §2.12 | removed; design gap 13 (odd multiplier) is already supplied by §2.12 |
| PL.1/generic-smooth-points | LocalGaloisDeformationRings §1.22 is only the generic-fibre smoothness criterion | kept as §1.3: the `rec_K`-genericity criterion and the density of robustly smooth points (BLGGT14 Lemmas 1.3.2–1.3.3) are not there |

ModularityAndLanglandsExtensions (merge order #269) restates several theorems owned here:

- BLGGT14 Theorems 2.3.1/2.4.1 (its §2.2);
- potential diagonalizability (§2.1);
- Theorem 3.1.2 with the Dwork family (§§2.9–2.14);
- Proposition 3.2.1 (§2.15) and Theorem 4.2.1 (§2.16);
- NT23 Theorem A (§4.1) and ANT20 Theorem 1.1 (§4.2).

It is later in the order, and its routes have no definite-unitary `R = T` machinery. So this roadmap keeps ownership, and ML is listed under Downstream consumers. Where ML proves these statements independently, that is ML's duplication to resolve against this roadmap.

## Corrections to the design

Corrections to statements:

- **§3.1.** `4 | n[L⁺ : ℚ]` is not automatic for odd `n`.
- **§§8.17–8.19.** The finite-`k` primitivity forms are not claimed.
- **§8.15.** The connectedness bounds are `|R|n(n + 1) + 3`, one more than ANT20 Theorem 5.1 prints. The final estimate is `n[L⁺ : ℚ] − |R|n(n + 1) − 5`, without the factor `1/2` of Tho15 p. 69.
- **§8.20.** The cyclotomic hypothesis is added.
- **§9.4.** The zero-ring proviso is added.
- **§9.7.** `[L⁺ : ℚ]` even is made explicit.
- **§10.6.** The statement takes the obvious-weight hypothesis.

Corrections to Checks, whose computed values are in the table below:

- **Layer 0:** the auxiliary-character constancy, the level notion and the archimedean half-integrality.
- **Layer 1:** the Steinberg-component point and the non-generic trivial `GL₂` parameter.
- **Layer 4:** the `l | n` adequacy witness and the Barsotti–Tate components example.
- **Layer 5:** the generic seed, ordinarity, `κ = 1` and the inert rank-one dimension.
- **Layer 6:** the quintic, the full isomorphism cover and `n = 1`.
- **Layer 7:** `S₃` image invariance and countability.
- **Layer 8:** the Schur configuration and `p > max(n, 3)`.
- **Layer 9:** `n = 1` `f = g`, the `R^{[a,a]}` points, the `n = 1` involution, `a + b = w`, the CM-induced claim and `log ∘ ε`.
- **Layer 10:** the `µ`-parity witness.

Other corrections:

- **Locators.** ANT20 Theorem 4.1 is cited by its arXiv page (p. 15), not by an unregistered version of record. Thorne 2024 is cited by its registered id Tho24.
- **Deprecated name.** Mathlib `IsSolvable` is replaced by `Group.IsSolvable` (the scratch `#check` showed the deprecation).

## Adversarial pass

| Target | Probe | Computed value | Outcome |
| --- | --- | --- | --- |
| §0.1 ordinary of weight `λ` | convention witness: `V_l E`, `E/ℚ_l` split multiplicative | weight `(−1, −1)`, Hodge–Tate `{0, −1}` with `HT(ε) = −1` | kept |
| §0.11 auxiliary characters | necessity of constant `χ(c_v)` | `(θ ∘ V)(c_v) = θ(c_v²) = 1`, so `χ(c_v)` is `1` for all `v` or `−1` for all `v` | Check rewritten (design argument wrong) |
| §0.10 induction descent | degenerate `GL_1(ℂ)`: `π(z) = (z/|z|)^k|z|^{it}` | parameter `((k+it)/2, (−k+it)/2)`, half-integral iff `t = 0`; then `π^c = π^∨` | Check rewritten |
| §0.3 level | context: split multiplicative `E/ℚ` | automorphic, `π_l` unramified twist of Steinberg, not of level potentially prime to `l` | Check corrected |
| §1.2 strong connection | `n = 2`, `ρ̄` trivial, `q ≡ 1 mod l` | the unramified point on the Steinberg component needs `Frob ↦ diag(1, q)`; `1 ⊕ 1` is not on it | Check corrected |
| §1.3 generic points | trivial rep of `GL_2(K)` | `ρ = ψ ⊕ ψε_l`, `Hom(ψε_l, ψ ⊗ ε_l) ≠ 0` in `H⁰((ad ρ)(1))` | Check corrected |
| §1.3 | `n = 1` | `H⁰(G_{K′}, Q̄_l(1)) = 0` for all `K′` | kept |
| §3.1 unitary group | `n = 1`, `[L⁺ : ℚ] = 2` | `n[L⁺ : ℚ] = 2`, not divisible by 4, but `U_1` is compact at infinity and quasi-split | design claim removed |
| §3.9 big Hecke algebra | dimension | Krull dimension of `Λ_{b₀}` is `1 + n[L⁺ : ℚ]` | kept |
| §4.3 adequacy | `l | n` | Tho12 Def. 2.3 never holds (scalars in `ad⁰`); Tho17 Def. 2.20 can | Check corrected |
| §4.3 | `F = F⁺(ζ_l)`, `n = 2` | `H⁰(r̄(G_{F⁺(ζ_l)}), ad r̄) ≠ 0` | kept |
| §5.2 strong oddness | `k = 𝔽₂`, `σ(c_v) = (1 1; 0 1)` | `A = (1 1; 1 0)` symmetric, not alternating: strongly odd; `σ(c_v) = 1` gives `A = Ψ₂`, alternating: not | kept |
| §5.6 `κ` | `n = 1`, `κ = 1` | `ν(c_v) = 1`, so `⟨x, y⟩ = −⟨y, x⟩` on a line: the pairing is zero in characteristic `≠ 2` | Check corrected |
| §6.1 Dwork family | `n = 2`, `N = 5` | quintic threefolds; after the twist Hodge–Tate `{0, 1}`; Steinberg at `v(t) < 0` | Check corrected |
| §6.5 | `n = 1`, `d = 1` | `l ≥ 2(d + 1) = 4`, i.e. `l ≥ 5` for odd `l`; the statement is class field theory | Check corrected |
| §7.16 primitivity | `S₃` standard over `𝔽₅` / `𝔽₂₅` | `𝔽₅^×` has order 4, so there is no order-3 character and it is not induced; `24` is divisible by 3, so over `𝔽₂₅` it is `Ind_{C₃}^{S₃}χ` | kept, drives the §8.17–8.19 restriction |
| §7.15 image invariance | restriction of `S₃` to `C₃` over `ℂ` | `χ ⊕ χ^{−1}` weakly primitive (`C₃` has no index-2 subgroup) though `Ind` on `S₃` | Check corrected |
| §7.9 countability | `R = k⟦x, y⟧` | `(x − f(y))`, `f ∈ yk⟦y⟧`, is an uncountable family of dimension-one primes | Check corrected |
| §7.6 reducibility ideal | `n = 2`, two characters | `I^red = A₁₂A₂₁`; an upper triangular lift has `c = 0`, `b ≠ 0` | kept |
| §8.10 | `p > max(n, 3)` at `n = 3` | excludes `p = 3`, where also `p | n` | Check corrected |
| §8.20 auxiliary place | `n = 2`, `Φ = diag(1, a)`, `a ∉ {1, q_w^{±1}}`, `q_w ≢ 1` | eigenvalues of `X ↦ q_wΦXΦ^{−1}`: `q_w, q_wa, q_wa^{−1}, q_w`, none `1` | kept |
| §9.1 generic WD | `(1 ⊕ |·|, 0)` vs. Steinberg `N ≠ 0` | the first has the `|·|`-summand map to `1(1)`: not generic; with `N` the map fails to commute: generic | kept |
| §9.2 `f = g` | `n = 1`, `ℚ_p`, trivial `ρ` | `dim H¹ = 2`; `D_cris(E(1))^{φ=1} = 0`, so `H¹_f = H¹_g` = unramified line; `log ∘ ε` not Hodge–Tate | Check corrected (draft had `H¹_g = H¹`) |
| §9.3 Selmer group | `n = 1`, Euler characteristic | `h¹(G_{F⁺,S}, E(δ)) ≥ [F⁺ : ℚ]` while `H¹_f = 0` | kept |
| §9.3 | odd `r`, general `n` | `c_v`-fixed part of `ad` has dimension `n(n − 1)/2`, so `h¹ ≥ [F⁺ : ℚ]n(n + 1)/2` | kept |
| §9.4 | `p > 2`, `F = ℚ`, `ρ̄ = ω`, `[0, 0]` | weight-zero semistable is unramified (`N` lowers slope), `ω|I ≠ 1`, so the ring is `0` | added |
| §9.5 involution | `n = 1` | both sides act by `φ ↦ −φ(c · c⁻¹)`, not by `−1` | Check corrected |
| §9.5 `a + b = w` | `n = 1`, `[a, a]` | weight `a` goes to `w − a`; preserved iff `w = 2a` | Check corrected |
| §9.8 | CM-induced `Π′` | `H¹_f(F⁺, E(η)) = 0` for every finite-order `η` (class groups are finite), so the draft's "can be nonzero" was false | Check replaced by the minimal-prime consequence |
| §9.9 | `n = 1`, `ℚ_p`, `ψ = log ∘ ε` | not Hodge–Tate, so not in `H¹_g = H¹_ur` | Check corrected |
| §10.1 parity | `N = 2`, `d = 1`, `µ` odd | `χ(c_v) = (−1)^{µ+N+1} = +1`, archimedean term `3` vs `1`, deficit `Nd = 2` | Check corrected (draft had `µ` even) |
| §10.1 | odd-`µ` level raising | local loss `−1` per place cancelled by `+1` generator; LTXZZ count `g = b − f − Ndδ` with `δ = (1 + (−1)^{µ+1−N})/2` | verified against LTXZZ p. 32–35 |
| §10.4 conversion | `n = 3`, `λ^s = (2, 1, 0)` | `λ^c = (−2, −3, −4)`; `λ^s + η = (4, 2, 0)`, `λ^c + η = (0, −2, −4)` | kept |
| §10.4 | `n = 2`, `λ^s = (0, 0)` | `λ^c = (−1, −1)`, common Hodge–Tate `{0, −1}` | kept |

## Elaboration outcome

`lake env lean` on `packages/PotentialAutomorphyInfrastructurePartII/Suggested.lean`, run from the content directory, exited with status 0. It produced 0 `sorry` warnings and no other messages.

A scratch `#check @name` file confirmed the binders of every Mathlib name in the contracts. The two Tau Ceti theorems were confirmed by source location instead, because their object files are not built on this host.

## Depcheck output

```
moved: PotentialAutomorphyInfrastructurePartII moved in the merge order from #85 to #258, right after its last supplier PotentialAutomorphyInfrastructure (GlobalGaloisDeformations, PadicHodgeTheory, EndoscopicTransferAndUnitaryTraceComparison, AutomorphicGaloisRepresentationsPartII, PadicFamilies, PotentialModularityAndCompatibleSystems also came after it); checked as moved (the worker moves it there when it submits)
depcheck: 56 roadmaps, 661 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. `roadmaps resolve` on the README reported no cross-roadmap citations and no Lean names found nowhere.

## Suspicious text

None was found. No fetched source, supplier README or PR text contained instructions.
