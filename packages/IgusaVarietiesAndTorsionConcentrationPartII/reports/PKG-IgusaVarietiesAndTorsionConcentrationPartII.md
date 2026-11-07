# PKG-IgusaVarietiesAndTorsionConcentrationPartII

Deliverables: `packages/IgusaVarietiesAndTorsionConcentrationPartII/README.md` (rewritten from the accepted design into prose), `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml`, and the top-level `gaps` list of `design/plan.json`. Nothing else in `plan.json` changed: the diff has a single hunk, in `gaps`.

## Inputs

The accepted design is `design/README.md` with `design/plan.json`. The acceptance is recorded in `plan.json` under `review`: status accepted, with 28 node verdicts. No separate `review.json` and no earlier reports were present. I applied the review's notes, which are already folded into the accepted node texts: PEL component coefficients, the action away from `p`, rank-specific supplier mismatches, and the coefficient-level scope.

## Headline theorems

| Headline | Status |
| --- | --- |
| CS17 Theorem 6.3.1(1): Galois representations for torsion Hecke eigensystems (§11.5) | Not statable. Needs compact unitary PEL Shimura varieties `S_K`, their torsion étale cohomology and the `𝕋^S`-action. None exists at the pins. |
| CS17 Theorem 6.3.1(2): middle-degree concentration (§11.6) | Not statable, for the same reasons. |
| CS17 Theorem 1.1 (§11.7) | Not statable, for the same reasons, plus the cohomology of locally symmetric spaces with Hecke action. |
| CS17 Remarks 1.3 and 1.7.1: integral and twisted coefficients (§11.8) | Not statable, for the same reasons, plus local systems `L_V`, `L_ξ`. |
| CS17 Theorem 5.5.7 and Corollary 5.6.3: genericity forces `μ`-ordinarity (§§9.6, 10.6) | Not statable. Needs Mantovan Igusa varieties, `B(G, μ⁻¹)` over `ℚ_p`, Grothendieck groups of admissible representations of `J_b(ℚ_p)` and adelic groups, and base change. |
| CS17 Theorem 5.3.2, Lemma 5.5.1, Proposition 5.6.1, Corollary 5.6.2: trace identities and spectral expansions (§§9.1, 9.3, 10.1–10.3) | Not statable, for the same reasons. |
| Auxiliary-pair condition (§8.7, the CS-pair with the sets `S_i`) | Not statable without an ad hoc encoding of the signature of a PEL datum and of `ι_p`. The PEL datum is absent, so it is named in the docstring and not encoded. |
| CS17 Remark 6.3.2: infinitely many completely split strongly generic primes (§8.8(a)) | **Stated**: `infinite_setOf_isCompletelySplitStrongGenericPrime`. |
| CS17 Remark 6.3.3 and footnote 33: infinitely many degree-one strongly generic places from one generic place (§8.8(b)) | **Stated**: `infinite_setOf_isStrongGenericAt_degree_one`. |

Definitions kept only to state these two theorems:

- `IsStrongGenericAt`: [CS17] Definition 1.9 at a prime of `𝓞 F` for a finite Galois realization `r : Gal(L/F) →* GL_n(k)`.
- `IsCompletelySplitStrongGenericPrime`.

Both have real bodies, built on Mathlib carriers: `IsArithFrobAt`, `Ideal.inertia`, `Ideal.primesOver`, `Ideal.LiesOver`, `Matrix.charpoly`, `AlgebraicClosure`. The finite-realization form loses no generality, because a continuous representation to `GL_n(𝔽̄_ℓ)` has finite image.

## What the README could not support, and gaps

The README does not prove two supplier statements; it registers them as gaps (`plan.json` `gaps`, and the README under the named supplier):

- `gap:division-algebra-unitary-base-change` (AutomorphicGaloisRepresentationsPartII, AG2.2). This is base change and Galois representations of every rank for unitary similitude groups of central division algebras. AG2.2 «Galois assembly for discrete unitary transfer» is rank `2n`. [Shin-BCU] Theorem 1.1 assumes B = F: Shin-BCU lines 13–17 fix a hermitian form on an `n`-dimensional `F`-space. [CS17] cites it for Case 1 at CS17 line 4092. Case 1 of Layer 11 depends on this gap.
- `gap:auxiliary-character-finite-avoidance` (EndoscopicTransferAndUnitaryTraceComparison, §6.3). This is a choice of `ϖ` with `Ram_ℚ(ϖ) ⊂ Spl_{F/F⁺}` avoiding a given finite set. ET §6.3 is existence only, and the string "Spl" does not occur in that roadmap. [Shin11] Lemma 7.1 (Shin11 line 3470) gives the containment without avoidance. Removing `Ram(ϖ)` from the Case 2 bad set in §11.5 depends on this gap.

The coefficient form of §11.8(2)–(3) assumes a normal trivializing level satisfying the hypotheses of §11.6; that assumption is part of its statement.

## Notions moved down

None. Every supplier is on main (SchemeAndStackFoundations) or earlier in the merge order. ComplexComparisonPartII, which is newly cited for Artin's comparison, is earlier in the order.

## Duplication sweep and citation changes

Checked by object against main, the open roadmap pull requests (`roadmaps grep`/`show`), and the pinned Mathlib and Tau Ceti.

- Not carried over from the design: the design's API and unit-test Lean names (about 40, e.g. `CompactUnitaryDatum.dim_torus`, `SplitPrimeDatum.kottwitzSet_prod`, `compactUnitaryHecke.heckePoly_n2`). They are now prose API bullets and Checks.
- Not carried over: the design's suggested light definitions (`SignatureData`, the Hecke polynomial over a commutative ring, reciprocal eigenvalues, the auxiliary-pair predicate). They are API padding, not needed for a headline.
- Not carried over: the design's process sections ("Requests and gaps", "Suggested Lean file", "Library baseline and ownership audit", "Restructuring and routing", "Source corrections", "Independent review", the Coverage/Remaining blocks and the errata-register ids). Their mathematical content is in the targets, as timeless notes on the printed text, and in the gap contracts.
- Residual-spectrum classification (design: ET.7a): ET §5.1 only labels it, and the owner is AutomorphicSpectralTheory. It is cited through ET §5.1 and attributed to AutomorphicSpectralTheory.
- Galois-type maximal ideals (design: AG2.7): owned by IntegralHeckeAndGaloisDeterminants §3b.1.
- Artin comparison (design: EDC.6): owned by ComplexComparisonPartII §§C6.3–C6.4. EtaleDualityAndPerverseSheaves §3.5 only strengthens it.
- Leray spectral sequence on étale sites (design: ArithmeticGaloisDuality D7): AGD has no such statement, since its D7.3 Grothendieck sequence is group cohomology. It is now SchemeAndStackFoundations §2.2 (main) on DiamondEtaleCohomology C0.1.
- "AG2.1a polarized construction inputs" (design slug) does not exist. The inputs are AG2.3 «Arbitrary regular conjugate-self-dual existence», which covers any rank.
- Kept variants, each with a one-clause difference in Scope and ownership. The parent's §§IG.0.4, IG.5.1, IG.5.2 and IG.5.4 are stated for its rank-`2n` trace-comparison datum. The parent's §IG.7.6 is non-compact, with a Borel–Serre boundary. AG2.7's strong local genericity is local, while `IsStrongGenericAt` is a global finite realization.
- All design slugs resolved to sections at the supplier heads. Layer labels were wrong in the design for BunGAndNewtonStrata (BG0 → §1.13), EtaleDualityAndPerverseSheaves (EDC.2 → §0.5), ClassicalAdicEtaleCohomology (H0/H5 → §§1.3, 1.4, 8.2), ArithmeticLocallySymmetricSpaces (ALS.5 → ALS.5a/5b), ArithmeticGaloisRepresentations (R01.1/R01.5 → §§1.8, 5.9) and IntegralHeckeAndGaloisDeterminants (IHG.1 → §1.2). `roadmaps resolve` on the final README reports no unresolved citation and no unresolved Lean name.
- Pins were updated to the content repository's manifest: Mathlib `6b7abb3`, Tau Ceti `a91d3aa`. The design listed older pins. Every Mathlib/Tau Ceti name in the README was `#check`ed at these pins: `NumberField.IsCMField`, `NumberField.maximalRealSubfield`, `HeckeRing`, `IsArithFrobAt`, `Ideal.inertia`, `Ideal.primesOver`, `Ideal.LiesOver`, `Localization.AtPrime`, `IsLocalization`, `Module.Free`, `HeckeCosetModule.instRingHeckeRing`, `HeckeAntiInvolution.ofAmbient`, `HeckeAntiInvolution.onHeckeCoset`. All exist.

Ownership against the open pull requests was checked through the tool for "compact unitary Shimura", "Kottwitz's simple Shimura", "Theorem 6.3.1", "Remark 6.3.2/3", "Corollary 5.6.2/3" and "Theorem 5.5.7". No other roadmap states the compact theorem. The matches are bibliography entries or other papers' theorem numbers. This roadmap is the owner, as the parent's continuation for compact data.

## Corrections made relative to the design

1. §9.5. The design inferred "maximum = `μ`-ordinary" without a reason. BunGAndNewtonStrata §1.26 gives existence of the ordinary class only for quasi-split `G`, and the maximum need not be ordinary in general. The README now uses that each `G_i = Res GL_n` is quasi-split.
2. §8.3(5). The direction of the central translation is pinned (`b ↦ p^{c_i}b`) with a `κ` witness: `−3` against `−1`, and translation by `p` (determinant valuation `2`).
3. `IsStrongGenericAt` makes `v ∤ ℓ` explicit, since [CS17] Definition 1.9 assumes `ℓ ≠ p`.
4. A new worked example: `F⁺` real quadratic, `n = 3`, `p` split or inert in `F⁺`. It shows the auxiliary condition at a non-totally-split prime, including the residue-degree-2 case with `q = p²`.
5. A Frobenius-convention witness in the 8 Examples. Under geometric Frobenius `ε̄^{−1}` takes the value `7`, giving dual roots `{7, 9}`. The arithmetic normalization would give `{8, 4}`.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §8.1 dimension `d = Σ_{τ∈Φ} p_τq_τ` | `n=1`; `[F⁺:ℚ]=2, n=3`, `(1,2),(0,3)`; Harris–Taylor | `0`; `2` (all embeddings: `4`); `n−1` | holds | Check states the all-embeddings wrong model |
| §8.1 compactness in Case 2 | `n=3`, `(1,2)` at every `τ∈Φ` | Hasse principle: isotropic at all finite places, and indefinite everywhere ⇒ isotropic | non-example | negative Check kept |
| §8.3 central correction | `S_i={τ,τ′}`, `(1,1),(2,0)`, `n=2` | bound `diag(t²,t)`, `κ = −3` against `−1`; translation by `p` adds `2` | holds with `b↦p^{c_i}b` | direction pinned |
| §8.3 `S_i` disjointness | `p` split in `F⁺` (real quadratic) / inert | `|S_i|=1, m=2` / `|S_1|=2, m=1` | holds | worked example |
| §8.4 `P_v` | `n=1`; `n=2` | `X−T_1`; `X²−T_1X+q_vT_2`, constant term `(−1)^n q^{n(n−1)/2}T_n` | holds | — |
| §8.4 Satake | `n=2` | `e_1=q^{1/2}(x_1+x_2)=S(T_1)`, `e_2=qx_1x_2=qS(T_2)`; general `q^{i(i−1)/2}q^{i(n−i)/2}=q^{i(n−1)/2}` | holds | — |
| §8.5(2) dual roots | exponent check; `n=2,q=7,ℓ=11`, roots `{1,2}` | `i(i−1)/2+n(n−1)/2−(n−i)(n−i−1)/2=i(n−1)`; `{7, 7·6=42≡9}` | holds | — |
| §8.5(3) twist `ε̄^{1−n}` | geometric against arithmetic Frobenius, `n=2,q=7` | geometric: `7·λ⁻¹={7,9}`; arithmetic: `7⁻¹λ⁻¹={8,4}` | geometric is correct | witness added |
| §8.5(4) genericity invariance | roots `{1,2}` and `{7,9}`, `q=7` | ratios `{2,6}` and `{7·9⁻¹=2, 9·7⁻¹=6}` | holds | — |
| §8.6(1) duality | `d=0` | pairing on functions on a finite set, `T` against `ι(T)` | holds | — |
| `IsStrongGenericAt` | `n=0`; `n=1`; `{3,3}`, `q=7,ℓ=11`; `{1,2}`; `{1,7}`; `v∣ℓ` | `∏=1`, vacuous; no pairs; ratio `1` fails, weak `3≠21≡10` holds; ratios `2,6` pass; ratio `7` fails; excluded by `ℓ∉v` | holds | `ℓ∉v` made explicit |
| `IsStrongGenericAt`, Frobenius choice | arithmetic against geometric (inverse); two Frobenius at `Q` | ratios `λ_a/λ_b ↦ λ_b/λ_a`, same set; differ by inertia, which `r` kills | well defined | — |
| `IsCompletelySplitStrongGenericPrime` | `p=ℓ`; `p ∣ disc F`; `F=ℚ` | fails (`ℓ∈v`); `ncard < [F:ℚ]`; `ncard=1=[ℚ:ℚ]` | holds | — |
| §8.8(a) | `L` larger than the field cut out by `r` | `p₀` may ramify in `L` with `r` unramified; Chebotarev run in the Galois closure of `L_r(ζ_ℓ)`, where `p₀` is unramified | true | proof sketch uses `L_r` |
| §8.8(b) | `v₀` of residue degree 2; `ℓ=2` | `q_{v₀}=p₀²`; degree-one `v` with `p≡p₀²` mod `ℓ`; `ℚ(ζ_2)=ℚ`, so `q≡1` mod `2` always | true | — |
| §8.8(b) embedding count | indefinite non-definite place | `τ₀`, `τ₀c` both nontrivial (`(1,n−1)`, `(n−1,1)`), exactly one in `⋃S_i` | [CS17] "just one τ" refers to `⋃S_i` | note in README |
| §9.1 weights | `n=2`, `n⃗=(1,1)` | `|Out|=2 ⇒ ε=1/2` | holds | — |
| §9.2 / §9.6 local test | `GL_2`, `(1,1)`: ordinary against basic `D^×` | generic principal series ↦ 0; trivial ↦ `−1_{D^×}` (since `1 = Ind − St`) | holds | — |
| §9.3(2) total coefficient | two terms `+1`, `−1` on one eigensystem | sum `0`, so no conclusion | as stated | — |
| §9.4 `r`-index | `n=1`, change `ψ` only | same `r` | index ignores similitude | Check kept |
| §10.1 local index | `B` division of degree `n`, datum `(n₁,n₂)` | `lcm d_v = n ⇒ ∃v, d_v∤n₁` | proper terms vanish | — |
| §10.3 `ker¹` coefficient | `|ker¹|=2`, multiplicities `m₁,m₂` | coefficient `m₁+m₂`; equals `2m` only if `m₁=m₂=m` | holds | Example kept |
| Conventions `d_b ≤ d` | `μ`-ordinary; basic | `⟨2ρ,−w₀μ⟩=⟨2ρ,μ⟩=d`; `⟨2ρ, central⟩ = 0` | holds | — |
| §11.1 contraction | `S′=S`; finite ring | trivial; Artinian splitting | holds | — |
| §11.2(a) | hyperspecial against pro-`p` `K_p` | pro-`p`: `H^{a>0}_cts=0` (`ℓ≠p`), edge iso; hyperspecial: no | only "some `j ≤ i`" | [CS17]'s stronger claim not used |
| §11.6 without localization | `H^0`, `H^{2i}` | nonzero ([CS17] Remark 1.7) | concentration needs `𝔪` | Example |
| §11.8(1) | universal coefficients | `H^i(ℤ_ℓ)/ℓ ⊂ H^i(𝔽_ℓ)=0` for `i≠d`; `H^{d+1}(ℤ_ℓ)[ℓ]=0` | free in degree `d` | — |
| §11.8(2) | `V=𝔽_ℓ`, `K′=K` | reduces to §11.6 | holds | — |
| §11.5 bad set | `q ∈ Ram(ϖ) ∖ (S∪{p,ℓ})` | one construction leaves `q` bad; needs `ϖ` avoiding `q` | gap registered | — |

Context check for Lean: every declaration carries all binders in its own signature, and the file has no section `variable`s. `#check @name` for all four declarations, in one scratch file, gave types identical to the README statements (number field `F`, finite Galois `L/F`, finite `k`, `r : Gal(L/F) →* GL (Fin n) k`). Nothing changed.

## Elaboration

`lake env lean <Suggested.lean>`, run from the content checkout: exactly **2** `declaration uses 'sorry'` warnings, on lines 79 and 91, the two theorems. There were no other messages. The file has a single `import Mathlib`, no `set_option`, and no sorry'd data.

## Dependency check

```
depcheck: 56 roadmaps, 661 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

## Sources

`sources.toml` records three works, each fetched through the sources service: CS17 (Annals publisher-open copy; the arXiv id is on the same key, so there is no second key for the preprint), Shin-BCU (author page) and Shin11 (Annals publisher-open). All three are certified. No text was missing, so no `needs-references.toml` was written. Locators are journal pages and theorem numbers, with `CS17 line N`, `Shin-BCU line N` and `Shin11 line N` from the cached extractions.

No fetched or read text contained instructions. Nothing suspicious to report.
