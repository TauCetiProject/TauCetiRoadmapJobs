# Repair of ModularIwasawaMainConjecturesPartII (package, round 3)

Findings of `packages/ModularIwasawaMainConjecturesPartII/reports/REV-PKG-ModularIwasawaMainConjecturesPartII~2.md`. All nine were verified against the cited sources and the pins, and all nine are applied. Files changed: `packages/ModularIwasawaMainConjecturesPartII/README.md`, `packages/ModularIwasawaMainConjecturesPartII/Suggested.lean` (docstring only), `packages/ModularIwasawaMainConjecturesPartII/sources.toml` (Rubin91 locator). `design/plan.json` is unchanged: no new supplier gap was needed.

## R01 (P1) — applied

Verified: JLK line 148 defines `M(F) = h⁰(F)_E` with scalar coefficients `E`; Conjecture 2.5 (JLK lines 417–420) is an equality of `O_p`-modules; Corollary 2.11 (JLK lines 512–522) has `⊗_η Det_{O_p} RΓ(…)[1]`, with no inverse. §4.2 old → new: `ETNC(h⁰(F), ℤ[Gal(F/K)])` → `ETNC(h⁰(F)_E, O_E)` for the scalar order, stated as not the group-ring predicate; `⊗_η Det⁻¹(RΓ[1])` → `⊗_η Det(RΓ[1]) = ⊗_η Det⁻¹ RΓ`, stated as one tensor identity. New Checks: shift valuation −1 against +1; `ℤ_7[C₃]`, `(1,7,1/7)`. Pattern: Scope bullet (Layer 4) and the PS.5.2 supplier contract now say scalar order; §4.3 (`Det⁻¹` without shift, JLK Corollary 3.10, lines 785–798) was already right.

## R02 (P1) — applied

Verified: Coleman79 lines 61–89 fix a Lubin–Tate group over the base `O_K` before the unramified coefficient extension; Yager lines 466–479 use a group over `ℤ_p`. The reviewer's example is worse than stated: no series satisfies the coefficientwise interpolation at all (even `n` force `h(cT) = 1+T`, odd `n` force `h(c²T) = 1+T`). Old → new: coefficientwise `φ^{−n}` → `Φ(g) = ((g∘θ)^φ)∘θ⁻¹ = g^φ∘ε_F` (independent of `θ`); `N g = g^φ` → `N_F g = Φ(g)`; `D log` → `D_θ = Ω_p·D_F`, with the `ε_F′(0)` factor for `D_F`. The coordinate-change Check was added. Pattern: the Coleman map uses `φ_F = Φ(·)∘[p]_F` and `D_θ`; the Teichmüller Check was recomputed with `Φ`.

## R03 (P1) — applied

Verified: Rubin91 Theorem 5.1(ii) (lines 638–648) gives `U_∞`-torsion `lim μ_{p^∞}` exactly in one variable when the local `μ_{p^∞}` is infinite. Theorem 5.3(ii) (lines 674–675) gives the one-variable correction terms. Remark (1) (lines 556–562) covers only the ℤ_p²-extension and the 𝔭-ramified line. Old → new: §5.1 map is two-variable only (injective, image `J_{μ,𝔭}Λ_Ô`); the one-variable injectivity and push-forward bullet were replaced. §§5.2–5.3 are two-variable; a new one-variable control theorem in §5.3 keeps the `A_{F′}` and `ℤ_p(F′)` terms. §5.4 discards them only on the θ-component (θ ≠ 1, `θ|_{G_v̄} ≠ 1`). §4.8 classical form scoped to `K(p^∞f)`; the matching §4.7 bullet was scoped too.

## R04 (P1) — applied

Verified: NoncommutativeAndEquivariantIwasawa §4.3 states image `J_𝔣` and `Col_𝔣(β(𝔞)) = (σ_𝔞 − N𝔞)ν_𝔣`, so `Col(C̄) = J_𝔣ν_𝔣`, which is not principal. Old → new (§5.2): "`Col(𝒞̄_∞)^χ` generates the Katz ideal" → equal localizations at height one, equivalently divisorial hull `(L_𝔭^χ)` and `char(Λ/Col(𝒞̄)) = (L_𝔭^χ)`; the image itself is not principal. The Check "`N(a) − σ_a`, a unit at height one" → the generated ideal lies in no height-one prime, while a single factor can. Added the `J = (S−a, T−b)` hull Check. Pattern: the §2.6 Check on poles was reworded the same way.

## R05 (P1) — applied

Verified by computation: `Δ` for `ℚ(i)`, `p = 5`, `f = (3)` has order 32 and `Δ/I_{(3)} ≅ μ_4`, with `δ_{(3)} ↦ ω(2)² = −1`. The trivial and quadratic characters give a nonunit factor; the two quartic ones (among them `ω∘χ_cyc`) give `1 + γ⁻¹`, a unit. Old → new: §1.5 "inertia-trivial ⇒ `1 − Frob⁻¹` nonunit" → component factor `1 − χ(δ_𝔩)⁻¹γ_𝔩⁻¹`, a nonunit iff `χ(δ_𝔩) ≡ 1 mod 𝔪_O`. Also repaired: the §1.5 Check, §6.1 "In particular", §6.3(b), (c) and its route, the §6.3 Check and Examples, and the "tame Euler factor" worked example.

## R06 (P2) — applied

Verified: BT line 224 assumes even weight in Theorem 3.1; line 240 defines the character `σ_c ↦ c^{−k/2}`. Old → new (§8.7): "the central specialization at the kernel of `σ_c ↦ c^{−k/2}`" → "for even `k`, …; for odd `k` no such character exists; §8.6 holds for every `k ≥ 2`". Added the `k = 3` negative-control Check (`h(−1)² = −1` against `h(−1)² = 1`); the `k = 2` Check is unchanged.

## R07 (P3) — applied

- §1.1 Check: "invariants are `μ_{p^∞}(K′)`" → `H⁰(K′, ℤ_p(1)) = T_pμ(K′) = 0` (`T_2μ_4 = 0`). The transition-map test now uses `T = ℤ_p`.
- §1.2 Check: now has its own argument, using a direction transverse to the cyclotomic one and `N(ζ) = ζ^{[K″:K′]}`.
- §2.5 Check: the claim is now restricted to nontrivial `χ`. The trivial `χ` is kept as a negative control (order 1, derivative `−log 9/4`).
- §4.8 Check: four → sixteen components (`#(O_K/5)^× = 16`), contrasted with `16/4 = 4` for `K(5^∞)`.
- §5.2 Check: type `(1,0)` → ideal type `(1,0)`, idelic `(−1,0)`, with the conversion to each supplier's convention at `ψ⁻¹`. The values 8, −2 and `(32 − 24i)/25` were recomputed and are unchanged.

## R08 (P3) — applied

Verified at the pin: `TauCeti.ClassFieldTheory.rayClassField` (an `IntermediateField K (SeparableClosure K)` with `NumberField` and `IsAbelianGalois` instances) and `rayClassArtinEquiv : RayClassGroup 𝔪 ≃* Gal(rayClassField 𝔪/K)`, both in `TauCeti/NumberTheory/ClassFieldTheory/ClassFields/RayClassField.lean`. Old → new: the docstring's "no ray class field" is replaced by these names, and the missing carriers are restated (norm-limit modules, elliptic units, theta functions). The §5.5 functional equation and λ-identity were added as not statable (Katz measure absent). In the README, the From Tau Ceti contract and §0.1 cite both names. Pattern: the Rubin bullet's "need the ray class fields" was replaced as well.

## R09 (P3) — applied

Old → new: the reference list had eight entries and now has ten, matching the ten manifest keys. Added **Coleman79** (Inventiones 53 (1979), 91–116; Theorem A p. 92, Theorem 11 and Corollary 12 p. 102) and **BKO21** (Annals 194 (2021), 943–966; §6, Theorems 6.1–6.2; the NSF copy carries the journal pagination, and Theorems 6.1–6.2 are at BKO21 lines 799 and 806). The existing keys were reused. The Rubin91 reference and manifest locator now add §5, Theorems 5.1 and 5.3.

## Checks run

- Elaboration: `lake env lean` on `packages/ModularIwasawaMainConjecturesPartII/Suggested.lean`, run from the content checkout, gave exit 0 with no output, both after the first docstring edit and again after the last. No `TauCeti.*` import is used, so nothing had to be built.
- Signature audit: `Suggested.lean` declares nothing (one module docstring and the namespace), so a `#check @name` scratch file would have no entries. Nothing changed in any binder.
- Dependency check (run after the last README edit):

```text
depcheck: 236 roadmaps, 2151 edges, 0 problem(s)
```

  It printed no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README found no cross-roadmap citation and no own Lean name missing. The two new Tau Ceti names were checked by hand at the pin, as above.
- No gate failures were listed for this job.

## Adversarial mathematics pass (changed statements)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §4.2 scalar ETNC | `F = K = ℚ(i)` | `ζ_K(0) = −1/4`; `v_2 = −2`, `v_p = 0` (odd p) | holds; scalar order `O_E` |
| §4.2 shift | `C = [ℤ_p →p ℤ_p]` | `Det C`: +1; `Det(C[1])`: −1; `Det⁻¹(C[1])`: +1 | single inversion kept |
| §4.2 scalar vs equivariant | `ℤ_7[C₃]`, `(1,7,1/7)` | product valuation 0; components `(0,1,−1)` | only tensor identity claimed |
| §4.3 consistency | JLK Cor. 3.10 | `Det⁻¹ RΓ = Det(RΓ[1])` | agrees with §4.2 |
| §5.1 `Φ` independence | `θ ↦ θ∘[a]` | `[a]^φ = [a]`, so `Φ` is unchanged; `D_θ ↦ a·D_θ` | as stated |
| §5.1 interpolation | `p=5`, `c³=1≠c`, `θ = cT` | `ε_F = cX`; `g = 1+X/c`; `Φg = g`; `g(ξ_n) = ζ_{5^{n+1}}` | holds; coefficientwise: no solution (even/odd n give `1+T` vs `1+cT`) |
| §5.1 norm law | same | `N_F g = g = Φ g`; coefficientwise `g^φ = 1+cX ≠ g` | `N_F g = Φ g` |
| §5.1 `D` law | same | `D_θ log g = c·c² = 1`: 5 = 5; `D_F`: `5c` vs `5c²`; with `ε′(0) = c`: `5c² = 5c²` | `D_θ` law, `ε_F′(0)` factor for `D_F` |
| §5.1 Teichmüller Check | `u_n = φ^{−n}c` | `N(φ^{−n−1}c) = φ^{−n−1}(c)^p = φ^{−n}(c)`; `Φ^{−n}(c) = φ^{−n}(c)` | constant `c` |
| §5.1 two-variable `Col` | Rubin 5.1(ii), `Γ ≅ ℤ_p²`, split | torsion 0; coker `Λ/J_{μ,𝔭}`, f.g. over ℤ_p, codim ≥ 2 in dim 3 | injective, image `J_{μ,𝔭}Λ_Ô` |
| §5.1 one-variable control | `K₀ = ℚ(i)(μ_5)`, `F′ = K(μ_{5^∞})` | `N(ζ_25) = ζ_25^{55} = ζ_5`; `(σ−κσ)ζ = 0`; `[K₀:K] = 4`, `5 ∤ 4` | kernel `ℤ_5(1)`, so no injectivity claim |
| §5.2 hull | `A = Ô[[S,T]]`, `J = (S−a,T−b)` | `A/J ≅ Ô` (codim 2); `Jν ≠ Aν`; `(Jν)_q = (Aν)_q` | divisorial hull / char form |
| §5.2 single factor | component with `J^χ` proper vs `χ(σ_𝔤) ≢ N𝔤` | factor ∈ J ⊂ 𝔪: nonunit; otherwise unit mod 𝔪 | ideal, not factor |
| §5.2 auxiliary ideal | Chebotarev density of `σ_𝔤` | `Λ/J_aux` quotient of ℤ_p, dim ≤ 1 < 2 | in no height-one prime |
| §5.3 specialization | `Z = A₂/(S−s₀,T)` | `Z/TZ = Z[T] = Ô[[S]]/(S−s₀)`, length 1 each | cancel; both kept |
| §5.3 specialization | `Z = A₂/(S−s₀,T−t₀)`, `t₀≠0` | `Z[T] = 0`, `Z/TZ = Ô/t₀` finite length | case 2 of step 2 |
| §5.3 rank | split p | `[K_𝔭:ℚ_p] − 1 = 0`; `γ−1 ∣ f_i` would give rank ≥ 1 | `γ−1 ∤ char` |
| §5.3 corrections | χ = 1; χ trivial on image of `D_𝔭̄` | `char ℤ_p(F′)^1 = (γ−1)` ≠ unit; `A^χ ≠ 0` | kept, clean form only off them |
| §5.4 θ-component | `θ ≠ 1`, `θ|_{G_v̄} ≠ 1` | `ℤ_p(F′)^θ = 0`; prime-to-p order of θ forces `A^θ = 0` | corrections vanish |
| §1.5 / §6.3 Euler factor | `ℚ(i)`, p=5, f=(3) | `#Δ = 32`; `Δ/I ≅ μ_4`; `δ ↦ −1`; χ₀, χ₂: factor `1−γ⁻¹` (aug 0); χ₁, χ₃: `1+γ⁻¹` (aug 2) | criterion `χ(δ_𝔩) ≡ 1 mod 𝔪` |
| §1.5 splitting independence | change of complement Γ | `δ` changes by p-power-order element | criterion independent |
| §1.1 H⁰ Check | `ℚ(i)`, p=2 | `#μ_4 = 4`, `T_2μ_4 = 0`; `T=ℤ_p`: cores = degree, limit 0, direct limit ℤ_p | as stated |
| §1.2 Check | transverse layer `K″/K′` | `μ(K″) = μ(K′)`, norm = `[K″:K′]`-th power ⇒ 0 | as stated |
| §2.5 Check | trivial χ, f=(3) | `ζ_K(0)(1−9^{−s})`: order 1, derivative `−log 9/4`; nontrivial χ: 1 + 1 = 2 | restricted to χ ≠ 1 |
| §4.8 Check | `K(E[5])` | `#(O_K/5)^× = 16`; `K(5^∞)`: `16/4 = 4` | sixteen |
| §5.2 type Check | `ψ((π)) = π` | idelic `ψ_∞(z) = z⁻¹`: `(−1,0)`; `#E(𝔽_5) = 8`, `a_5 = −2`, `(32−24i)/25` | label fixed, values unchanged |
| §8.7 central character | k=2, k=3 | k=2: `c⁻¹`, quotient `O_λ`; k=3: `h(−1)² = −1` vs `1` | even k required |

## Ownership and overlaps

- The Coleman series of a height-one CM formal group over `Ô` stays owned here, unchanged. ColemanPowerSeries excludes general Lubin–Tate interpolation, AnticyclotomicLocalUnits §1.1 is the height-two case, and NoncommutativeAndEquivariantIwasawa §4.3 is the rational `p ≥ 5` case, which is cited and not reproved.
- The new one-variable control statement in §5.3 is Rubin91 Theorem 5.3 applied to Rubin's modules. Roadmap searches on main and the open heads found no other owner; the hits were Mazur–Rubin Theorem 5.3.x, a different object.
- `scratch/overlaps.md` lists no open pull request that changes this roadmap and no dropped id. No supplier moved and no id was renumbered: §§ numbering is unchanged.
- Ownership against open pull requests whose files the brief does not give (InertAnticyclotomicCMMainConjecture has no readable file) was not checked.

## For the maintainer

- CMRankZeroConverse consumes §8.7. Its central specialization is now stated for even weight only, matching BT Theorem 3.1; §8.6 is unchanged for all `k ≥ 2`.
- CGLS-type consumers of §5.4 are unaffected: the θ-component statement is unchanged, and its route now names the correction terms that vanish under the existing hypothesis `θ|_{G_v̄} ≠ 1`.
- §§5.2–5.3 are now stated for the two-variable tower, with the one-variable form carrying explicit correction terms. Any external citation of "§5.3 for a ℤ_p-extension" should read the one-variable display there.
- No Lean names changed (the file declares none). No suspicious instructions were found in the review or the fetched texts.
