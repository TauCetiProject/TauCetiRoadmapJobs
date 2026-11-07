# Design report: CompressibleEulerEquations

Deliverables: `packages/CompressibleEulerEquations/design/README.md` (8 layers, ≈1290 lines),
`packages/CompressibleEulerEquations/design/plan.json` (53 targets: 13 definitions or
constructions, 39 theorems, 1 example; no gaps), `packages/CompressibleEulerEquations/sources.toml`
(21 entries, `sources check`: 0 problems).

## What the design covers

1. **Euler systems** (§§1.1–1.3): barotropic and full equations of state, both systems in
   material and conservative form, Galilean invariance, constant-entropy reduction and entropy
   propagation. The non-isentropic system is a full target (Abbrescia–Speck and
   Christodoulou–Miao use it).
2. **Symmetric hyperbolic carrier** (§§2.1–2.2): quasilinear symmetric hyperbolic systems, symbol,
   dominating round cones, a continuous dominating cone map for every system, and explicit
   symmetrisers for both Euler systems (barotropic weight `c²/ρ²`; full symmetriser
   `S` with the corrected entropy entry `1 + (∂_sP)²/(ρ∂_ρP)`), with the exact characteristic
   speeds and the characterisation "`(c′, w)` dominates iff `c′ ≥ c + |v − w|`".
3. **Acoustical causal geometry on the Galilean carrier** (§§3.1–3.3): the acoustical form and its
   inverse, determinant, signature, causal character of vectors and covectors, identification of
   its null covectors with the sound sheet of the Euler symbol; locally Lipschitz causal curves of
   a continuous sound-cone field (integral characterisation, local existence, limit curves,
   comparison with piecewise `C¹` curves); past-inextendibility, causal pasts and `D⁺`, with
   compact pasts, openness, idempotence and the slab description.
4. **`Hᵏ_Λ` calculus** (§§4.1–4.4) on partially periodic carriers, built on Tau Ceti's whole-space
   `Wkp`, Calderón comparison and `C₀` embedding.
5. **Friedrichs energy method** (§§5.1–5.4), including weighted energies with
   characteristic-monotone Lipschitz weights (the engine of finite propagation).
6. **Local uniqueness on lenses and uniqueness on domains of dependence** (§§6.1–6.2).
7. **Local well-posedness** (§§7.1–7.3): general systems in `Hᵏ_Λ`, `2k > n + 2`, with continuous
   dependence, continuation criterion and persistence; Euler instances; uniformly local data.
8. **Developments** (§§8.1–8.4): data sets with open data domains, developments, maximal common
   development, compatibility and unions, existence of maximal developments, a uniqueness
   criterion, existence of developments from `Hᵏ` data, slab containment for full Cauchy data, and
   the nullity of the regular boundary of every maximal development.

Headline statements for the acceptance test: §7.2 (Euler local well-posedness), §6.1 (local
uniqueness on lenses), §8.2 (maximal common development, existence of maximal developments,
uniqueness criterion), §8.3, §8.4 (b) (nullity of the regular boundary).

## Deviations from the triaged target, with reasons

1. **The target's central proposition is false.** Target 6 asserts that two developments of the
   same data agree on the intersection of their domains and that the union of all developments
   is the unique maximal development (as ChristodoulouMiao2014 lines 872–880 state in passing).
   Counterexample (now Check 8.2.4 and the first worked example): `n = 1`, `p = ρ²` so `c = 1` at
   `ρ = 1/2`; data `(1/2, 2)` on `(−∞, −1)` and `(1/2, −2)` on `(1, ∞)`. The domains of dependence
   of the half-lines are `T_L = {x < −1 + t}` (speed `v − c = 1`) and `T_R = {x > 1 − t}` (speed
   `v + c = −1`), overlapping for `t > 1`. `D₁ = T_L ∪ (T_R ∩ {t < 1})` and
   `D₂ = (T_L ∩ {t < 1}) ∪ T_R` with the constant states are developments (each tower is past-closed
   for its constant field), `(2, 0) ∈ D₁ ∩ D₂`, and the velocities there are `2` and `−2`. With a
   smooth transition on `[−1, 1]` and full Cauchy data, the same towers plus a development near
   `Σ₀` (§7.3) give two incompatible developments of data on all of `ℝ`. This is the
   non-uniqueness phenomenon of EperonReallSbierski2019 (Theorem 3.45 at line 767; Corollary 4.68
   at line 1338: disagreement forces a disconnected intersection — here the slice `t = 1` of
   `D₁ ∩ D₂` is empty), which AbbresciaSpeck2022 lines 408–414 cite for exactly this reason. The
   design replaces the proposition by: the maximal common development
   `W₁₂ = {p ∈ D₁ : J⁻_{D₁}(p) ⊆ D₂}` (§8.2), compatibility criteria and compatible unions,
   existence of maximal developments (Zorn), the uniqueness criterion for data extending to a
   global solution (EperonReallSbierski2019 Corollary 4.69, line 1342), and slab containment for
   full Cauchy data (§8.3). The nullity theorem (§8.4) is stated for every maximal development.
2. **Closed data sets and domains are replaced by open data sets and relatively open domains.**
   With closed sets the domain-of-dependence condition is blind to incoming data: for `n = 1`,
   field `(1, 0)`, `D = {|x| ≤ 1 + t}` closed and `S = [−1, 1]`, `D⁺_D(S) = D` although the data do
   not determine a solution at `(1, 1.9)`; with relatively open `D = {|x| < 1 + t}` and
   `S = (−1, 1)` one gets the correct `{|x| < 1 − t}`. This is the reading of
   ChristodoulouMiao2014 line 868 ("a domain … whose past boundary is the domain of the initial
   data").
3. **Target 5's restriction rule and closedness claim are corrected.** "`D⁺_{D′}(S ∩ D′) ⊇
   D⁺_D(S) ∩ D′` when `D′` is causally convex" fails: for the static field `(1, 0)`, `S = (−1, 1)`,
   `D′` the causal diamond between `(0.5, 0)` and `(1.5, 0)` (causally convex), `S ∩ D′ = ∅`, so
   the right side is `∅`, while `(0.75, 0)` lies in `D⁺_D(S) ∩ D′`. The correct hypothesis is
   past-closedness `J⁻_D(q) ⊆ D′` (§3.3). "`D⁺(S)` is closed when `S` is" is replaced by
   "`D⁺_D(S)` is relatively open when `S` is open" (§3.3), the statement that matters for
   relatively open domains; with closed `S = [−1, 1]` the set `{|x| ≤ 1 − t}` is not relatively open.
4. **LorentzianGeometry is not a supplier.** It exists only as a board target
   (`packages/LorentzianGeometry/target.md`), with no design, no roadmap on main, no open roadmap
   pull request and no place in the merge order, so the brief does not allow consuming it. The
   design states the one quadratic form it needs, concretely on `ℝ × E`, and owns its causal theory
   on the Galilean carrier (§§3.1–3.3), including the comparison of piecewise `C¹` causal curves
   with time-parametrised Lipschitz ones (§3.2). Nothing general (Lorentzian scalar products on
   abstract spaces, metrics on manifolds, time orientations, null generators) is planned here.
5. **Null-geodesic ruling of the characteristic boundary and characteristic data are a Part II.**
   Both need `C^{1,1}` geodesic theory (LorentzianGeometry's targets 5 and 9), and no open legal
   source states the general characteristic existence theorem (the target's Risks say the same).
   They are proposed below as "Compressible Euler equations, Part II". The Luo–Yu half-space
   configuration appears as Checks of §3.3 and §8.3.
6. **Integer Sobolev orders.** The cited well-posedness theorems (Kato, Majda) are for integer
   orders; real orders need Kato–Ponce estimates in Besov form (PDE roadmap Layer 7 paraproducts),
   proposed as a Part II.
7. **Hypothesis `F(Ū) = 0` added to general well-posedness.** Without it the target's statement
   "`U − Ū ∈ C([0, T]; H^s)`" is false on non-compact carriers: `∂_tu = 1`, `Ū = 0` gives
   `u = u₀ + t ∉ L²(ℝⁿ)` for `t > 0` (Check of §7.1). Euler has `F = 0`.
8. **Lens condition.** The target's conormal condition `τ > |v·ξ| + c|ξ|` (static lenses only) is
   replaced by Lipschitz lens functions spacelike for `U₁` (§6.1), which include moving cones and
   are sharp: at `v₀ = 3`, `c₀ = 1` a static cone needs slope `M ≥ 4`, the moving one `M ≥ 1`.
9. **Cylinder carrier.** `ℝ × (ℝ/2πℤ)^{n−1}` is treated as Λ_cyl-periodic lifts on `ℝ × ℝⁿ`, with
   the Sobolev spaces `Hᵏ_Λ` for any discrete period group (§4.1) and periodicity of solutions
   from uniqueness.
10. **Nullity theorem hypotheses.** Nullity holds at points where the solution extends as a
    classical solution and the boundary is `C¹` with `D` on one side. The singular boundary of
    shock formation, along which the solution does not extend classically, is null only in an
    intrinsic sense and has the extrinsic geometry of a spacelike hypersurface (Christodoulou2019
    lines 138–142), so the extension hypothesis is necessary. Part (a) (spacelike-or-null with `D` to the past) holds for every development under
    a continuous extension of the cone field; part (b) needs maximality (truncations have
    spacelike boundaries).
11. **No roadmap supplier.** The PDE roadmap's relevant items (Calderón `Hᵏ = Wᵏ'²`, `Hᵏ ⊆ C₀`) are
    already pinned Tau Ceti declarations and are cited from Tau Ceti; IncompressibleFlows (open
    pull request) is not consumed.

## Adversarial pass

| # | Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|---|
| 1 | Convention: signature, future = increasing `t`, `g(B, X) < 0` | `n = 1`, `c = 1`, `v = 0`; vectors `(1, 1/2)`, `(1, 1)`, `(1, 2)` | `g = −3/4, 0, 3`; `g(B, (1, 1/2)) = −1` | consistent | witness in Conventions |
| 2 | Convention: Luk–Speck normalisation `c⁻²g` | `c = 2`, `v = 0`, `X = (1, 0)` | ours `−4`, theirs `−1` | conformal, cones equal | recorded |
| 3 | Convention: dominance sign | transport `a = 3`, cone `(1, 0)`, `ζ = (1, −1)` | cone test `1 ≥ 1`, symbol `−2` | not dominating, as intended | witness in Conventions |
| 4 | 1.1 equations of state | `p = ρ²/2` at `ρ = 4`; `p = ρ²` at `1/2`; Chaplygin; `p = −ρ²`; isothermal | `c = 2` (wrong `p′`: 4); `c = 1`; `c = √A/ρ`; `p′ = −2ρ < 0`; `c ≡ a` | definition admits negative pressure, rejects `p′ < 0` | Checks added |
| 5 | 1.2 barotropic system; expanding flow | `n = 1`, `t = 1` | `∂_tρ = −ρ₀/4 = −∂_x(ρv)`; `∂_tv + v∂_xv = 0` | solution | Check |
| 6 | 1.2.1 conservative ⇔ material | vacuum `ρ ≡ 0`, `v = x` | conservative equations hold (`0 = 0`), material momentum residual `x`, `ρ⁻¹` undefined | equivalence needs `ρ > 0` | hypothesis kept (`I ⊆ (0, ∞)`) |
| 7 | 1.2.2 Galilean invariance | expanding flow boosted by `w = 1` | correct rule residual `0`; rule without `+w` residual `−1/2` at `t = 1` | `+w` necessary | Check |
| 8 | 1.3 full system | static entropy wave `P = e^sρ²`, `ρ = e^{−x/2}`, `s = x` | `P(ρ, s) = 1`; dropping `∂_sP∇s` leaves `−e^{x/2}` | non-barotropic stationary solution | Check |
| 9 | 1.3.1 entropy propagation | field `v = x²` (`n = 1`) | material curve through `(1/2, −4)` is `1/(1/4 − s)`, escapes at `s = 1/4` | boundedness of `v` used to reach `t₀` | hypothesis kept (P3: may be weakened to linear growth) |
| 10 | 2.1 carrier | Cauchy–Riemann; wave system at `ζ = (1/2, e₁)`; `A⁰ = diag(1, −1)` | `A¹` antisymmetric; eigenvalue `−1/2`; indefinite | non-instances rejected | Checks |
| 11 | 2.1 monotonicity of dominance | transport `a = 3`: `(1, 3)` ⇒ `(2, 2)` | `ζ₀ + 2ζ₁ ≥ 2|ζ₁|` ⇒ `ζ₀ + 3ζ₁ ≥ |ζ₁| ≥ 0` | holds with `c′ = c + |w′ − w| = 2` | API |
| 12 | 2.1.1 difference bound | Burgers `u₁ = 0`, `u₂ = x/(1 + t)` | `∂_tW = −W/(1 + t)`, `L = 1/(1 + t)` | bound with `C = L` | — |
| 13 | 2.2 barotropic symmetriser | `n = 1`, `ρ = 1`, `c = 2`, `v = 3` | `det(A¹ − λA⁰) = 4(λ − 1)(λ − 5)`; weight `I` gives `[[3,1],[4,3]]` | speeds `v ∓ c`; wrong weight asymmetric | Checks |
| 14 | 2.2.1 full symmetriser | `P = e^sρ²` at `(1, 0)`, `n = 1` | minors `2, 2, 2`; with `d = 1/2`, `det = 0` | positive definite only with the correction term | Check |
| 15 | 2.2.3 spectrum | barotropic `n = 2`, `ζ = (0, 1, 0)`, `c = 1`, `v = 0`; full `n = 1` | roots `0` (mult. 1) and `±1`; full: `v` (mult. 1) and `v ± c` | multiplicities `n − 1` and `n` | — |
| 16 | 2.2.3 dominance iff `c′ ≥ c + |v − w|` | `(ρ, v) = (1, 3)`, `c = 2` | `(2, 3)` yes; `(2, 0)` no (`2 − 3 − 2 = −3`); `(5, 0)` yes | sharp | Check |
| 17 | 3.1 acoustical form | `n = 2`, `c = 2`, `v = (1, 0)` | Gram `[[−3,−1,0],[−1,1,0],[0,0,1]]`, `det = −4`, `g(B,B) = −4`, `(1,3,0)` null, `(1,4,0)` gives `5`, `g⁻¹(dt,dt) = −1/4`; unshifted form gives `−3` | matches `√(−det g) = c` | Checks |
| 18 | 3.1 signature map | `(1, 3, 0)` under `(τ, ξ) ↦ (cτ, ξ − τv)` | `(2, 2, 0)`, `−4 + 4 = 0` | null preserved | — |
| 19 | 3.1.1 symbol vs null covectors | `ζ = (−3, 1, 0)` at the same state; `ζ = dt` | `ζ₀ + v·ζ′ = −2 = −c|ζ′|`: singular and null; `σ(dt) = A⁰ > 0`, `dt` future timelike | consistent | Check |
| 20 | 3.2 causal curves | Cantor `10f`; `|t|`; `eᵗ`, `e^{3t}` for field `(1, x)` | `x(1) − x(0) = 10 > 1`; derivative `±1`; `|ẋ − v| = 0` and `2e^{3t}` | Lipschitz condition necessary | Checks |
| 21 | 3.2.1 integral characterisation | `|t|` on `[0, 1]`, field `(1, 0)` | `1 ≤ 1` (equality: null) | holds | — |
| 22 | 3.2.2 local segments | field `(1, x)`, `p = (1, 0)`, `u = 1/2` | `|ẋ − v| = |1/2 − (t − 1)/2| ≤ 1` on `[−1, 1]` | `δ = 2` | — |
| 23 | 3.2.3 limit curves | curves ending near `(1/2, −4)` for field `(1, x²)` | limit is `1/(1/4 − s)` on `(1/4, 1/2]` | past-inextendible case `a′ > a` occurs | — |
| 24 | 3.2.4 piecewise `C¹` comparison | `γ(σ) = (σ², 0)` on `[−1, 1]` | tangent `(−2, 0)` at `σ = −1` is past-directed; `γ⁰` not monotone | future-directedness hypothesis needed | kept |
| 25 | 3.3 `D⁺` | static ball `R = 2`, `c₀ = 1`, `t = 1`; half-space with `v₀¹ = 1`, `c₀ = 1` | `|x| < 1`; `x¹ > 2t` | formulas | Checks |
| 26 | 3.3 closed domains | `D = {|x| ≤ 1 + t}`, `S = [−1, 1]` | `D⁺_D(S) = D`; open version gives `{|x| < 1 − t}` | closed formulation false | Conventions, Check, deviation 2 |
| 27 | 3.3 restriction rule (target 5) | diamond between `(0.5, 0)` and `(1.5, 0)` | `(0.75, 0) ∈ D⁺_D(S) ∩ D′`, `D⁺_{D′}(∅) = ∅` | "causally convex" version false | past-closed hypothesis (deviation 3) |
| 28 | 3.3.1 compact pasts | `p = (1, 0)`, static field, `S = (−2, 2)` | `J⁻(p) = {(t, x) : 0 ≤ t ≤ 1, |x| ≤ 1 − t}`, base `[−1, 1] ⊆ S` | compact | — |
| 29 | 3.3.2 openness | `S = (−1, 1)` versus `[−1, 1]` | `{|x| < 1 − t}` open; `{|x| ≤ 1 − t}` not relatively open | openness of `S` needed | hypothesis |
| 30 | 3.3.3 slabs | field `(1, x²)` on `[0, 1) × ℝ` | `(1/2, −4) ∉ D⁺(Σ₀)` | boundedness needed | Check |
| 31 | 3.3 expanding flow | `p = ρ²/2`, `ρ₀ = 1`, `S = (−1, 1)` | `y = x/(1+t)`, `ẏ = −(1+t)^{−3/2}`, boundary `2√(1+t) − (1+t)`; closes at `t = 3`; `0.828` at `t = 1` | exact | Checks in 3.3, 8.1, 8.4 |
| 32 | 4.1 `Hᵏ_Λ` | constant `1`; cylinder Gaussian; `cos x` on `2πℤ` | `(2π)^n` for full rank, `∞` for `Λ_cyl`; `√(π/2)·π`; `2π` | rank matters | Checks |
| 33 | 4.1 torus comparison | `cos x`, full rank | ours `2π`, unit-period torus norm `(1 + 4π²)/2` | equivalent, not equal | Check; Scope statement |
| 34 | 4.2 embedding | `e^{−x²}`; `log log` at `2k = n = 2` | `1 ≤ √(π/2)`; unbounded `H¹` | `2k > n` needed | Checks |
| 35 | 4.2 interpolation | `e^{−x²}`, `j = 1`, `k = 2`; exponents `(2/3, 1/3)` | `2√(π/2) ≤ √5·√(π/2)`; dilation `λ^{1/2}` vs `λ^{1/6}` | wrong exponents refuted | Check corrected during the pass (first draft used a pair that is true) |
| 36 | 4.3 Gagliardo–Nirenberg | `e^{−x²}`, `n = 1`, `k = 2`, `i = 1`; scaling | `‖u′‖₄ ≈ 0.903 ≤ (5√(π/2))^{1/4} ≈ 1.582`; both sides `λ^{i − ni/(2k)}` | holds with `C = 1` here | Check |
| 37 | 4.3.1 products | `f = g = e^{−x²}`, `k = 1`; `|x|^{−n/3}` | `‖(fg)′‖₂ ≈ 1.331 ≤ 2‖f‖_∞‖g‖_{H¹} ≈ 3.17`; `u² ∉ L²` | `L^∞` factors necessary | Check |
| 38 | 4.3.2 composition | `Φ(u) = u²`, `k = 1` | `‖2uu′‖ ≤ 2‖u‖_∞‖u′‖` | constant `2 sup_K|u|` | Check |
| 39 | 4.4 mollifiers | constants; `cos(mx)`; `a = x` | scaling `φ(·/ε)` gives `εⁿ`; factor `φ̂(εm)`; commutator `ψ′ ⋆ u`, `‖ψ′‖₁ = ∫|φ + wφ′|` | `ε`-independent Friedrichs bound | Check corrected during the pass |
| 40 | 5.1 energy identity | `B = bI`; Jordan block | `E = e^{−2bt}E(0)`; growth `t‖f′‖` | sign of `−(B + Bᵀ)` pinned; symmetry needed | Checks |
| 41 | 5.2 weighted energy | transport, `χ = (1 − |x| − t/2)₊`, `f` on `(−2, −1)` | monotonicity defect `1/2`; support `(−1.1, −0.1)` meets `{|x| < 0.55}` at `t = 0.9` | hypothesis necessary | Check |
| 42 | 5.2 sound cone admissible | constant Euler state | `(e·v₀ − c₀) − v₀·e + c₀ = 0` | equality allowed | Check |
| 43 | 5.3 `Hᵏ` estimate | Burgers, `W = u` | `d/dt‖u_x‖² = −∫u_x³ ≤ ‖u_x‖_∞‖u_x‖²` | tame form, `C = 1` | Check; statement rewritten cleanly during the pass |
| 44 | 5.4 linear existence | constant-coefficient transport | `W = W₀(x − at)`, regularised `e^{−iatmφ̂(εm)²}` | — | Check |
| 45 | 6.1 lenses | static vs moving, `v₀ = 3`, `c₀ = 1` | `M ≥ 4` vs `M ≥ 1` | moving lenses sharper than target's condition | deviation 8 |
| 46 | 6.1.1 only `U₁`'s cones | Burgers `u₁ ≡ 0` (lens slope `ε`), compressive `u₂` with value `−η` entering from the right | entering requires characteristics of `u₂` to cross the stationary ones, which breaks `C¹` before the lens is reached; energy argument gives `W = 0` | theorem stands; `C¹` of `U₂` is essential | — |
| 47 | 6.2 domain-of-dependence uniqueness | constant `(1, 0)`, data agree on `(−2, 2)`; counter-flow | agreement at `(1/2, 1.4)`; at `(2, 0)` velocities `±2` and `J⁻` leaves the other domain | hypothesis `J⁻_D(p) ⊆ O` necessary | Checks |
| 48 | 6.2.1 slab uniqueness | unbounded field `x²` | `D⁺ ≠` slab | bounded cone fields needed | hypothesis |
| 49 | 7.1 well-posedness | `F ≡ 1`, `Ū = 0`; constant data | `u₀ + t ∉ L²`; `T* = ∞` | `F(Ū) = 0` needed | deviation 7 |
| 50 | 7.1.1 continuation | Burgers `u₀ = −e^{−x²}` | `min u₀′ = −√2e^{−1/2}`, `T* = e^{1/2}/√2 ≈ 1.1658`, values in `[−1, 0]`, `‖u_x‖_∞ ∼ (T* − t)^{−1}` | first alternative realised | Check |
| 51 | 7.2 Euler | `p = ρ³/3`, `ρ̄ = 1 + e^{−x²}/2`, `v̄ = ρ̄ − 1`; `n = 3`, `k = 2, 3` | `v − ρ ≡ −1`, `T* = e^{1/2}/√2`, `ρ ∈ [1, 3/2]`; `6 > 5`, `4 < 5` | gradient blow-up without vacuum; threshold | Checks |
| 52 | 7.3 uniformly local | counter-flow data; `G` an annulus with `Ū = (1, 0)`, `U₀ = (−1, 0)` | not in `Ū + H¹`; segment through `0 ∉ G` | segment hypothesis needed | hypothesis |
| 53 | 8.1 developments | ball; `{|x| < 1 + t}`; `{|x| < 1 − t/2}`; expanding flow | development; `D⁺ ≠ D`; timelike boundary; development | — | Checks |
| 54 | 8.1 past-closed below | `D ∩ {t < T} ≤ D` | curves of `D` from points with `t < T` stay below `T` | — | API |
| 55 | 8.2 maximal common development | counter-flow | `W₁₂ = D₁ ∩ D₂ ∩ {t < 1}`; slice `t = 1` of `D₁ ∩ D₂` empty | matches ERS Corollary 4.68 | Check |
| 56 | 8.2.1 compatibility iff `W₁₂ = D₁ ∩ D₂` | counter-flow; truncations | `W₁₂ ≠ D₁ ∩ D₂` and no common upper bound; truncations nested | both directions consistent | — |
| 57 | 8.2.2 existence of maximal developments | chain `D ∩ {t < T_m}`, `T_m ↑` | union `D` is an upper bound | Zorn applies | — |
| 58 | 8.2.3 uniqueness criterion | constant data on a ball; counter-flow | unique maximal development is the cone; counter-flow has no global extension (two values at `(2, 0)`) | consistent | — |
| 59 | target 6 (union of all developments) | counter-flow | two maximal developments | false | deviation 1 |
| 60 | 8.3 existence | constant data on `{x¹ > 0}` | `{x¹ > (v₀¹ + c₀)(t − t₀)}`, independent of the `Hᵏ` extension below the common time | — | Check |
| 61 | 8.3.1 slab containment | simple-wave data | every maximal development contains `[0, T) × ℝ`, `T < e^{1/2}/√2` | — | Check |
| 62 | 8.4 (a) causal boundary | truncation `φ = t − T`; `{|x| < 1 − t/2}`; `{x > t}` and `{x > −t}` for data on `{x > 0}` | `1 > 0` (spacelike); `1/2 < 1` (excluded); `1 = 1` (null, past side); `−1 < 1` (excluded) | holds; future-side null boundary excluded | Checks |
| 63 | 8.4 (b) nullity | ball; expanding flow at `(1, 2√2 − 2)`; truncation; shock singular boundary | `c₀ = c₀`; `1 − 1/√2 + √2 − 1 = 1/√2 = c`; spacelike truncation not maximal; the singular boundary is extrinsically spacelike (Christodoulou2019 lines 138–142) | maximality and classical extension both needed | hypotheses kept (deviation 10) |

Context (variable scope): every statement that needs `ρ > 0`, `A⁰ > 0`, `2k > n + 2`, `F(Ū) = 0`,
compactness of values, relative openness of `D` or openness of `S` carries it in its own
hypotheses; none is a standing assumption hidden in a section header.

Duplication by object: grepped the pins for symmetric hyperbolic systems, Friedrichs energy,
Moser and Gagliardo–Nirenberg interpolation, periodic Sobolev spaces, Lorentzian forms with time
orientation and causal curves; none exists (Tau Ceti's `Wkp/Interpolation.lean` is the different
inequality `‖∇u‖ ≤ ε‖D²u‖ + (n²/ε)‖u‖`). The whole-space `Hᵏ = Wᵏ'²` comparison and the `C₀`
embedding exist at the Tau Ceti pin and are cited, not restated.

## Notions moved down and ownership

- No notion is moved down from a roadmap in the merge order. The concrete acoustical causal
  geometry (§§3.1–3.3) is owned here because its only planner, LorentzianGeometry, is a board
  target with no design and no place in the merge order; this roadmap states only the explicit
  form on `ℝ × E`, so a later LorentzianGeometry keeps the general theory and identifies it with
  this one in its own direction.
- `Hᵏ_Λ`, Gagliardo–Nirenberg, Moser estimates and Friedrichs mollifiers are owned here: the PDE
  roadmap on main excludes systems and plans none of them; IncompressibleFlows (open pull
  request, other author) plans torus spaces of full rank only, recorded in Scope with a Check.
- Ownership against open pull requests was checked with `roadmaps grep` over the 459 open
  roadmap pull requests at their heads and main (patterns: symmetric hyperbolic, Friedrichs,
  finite speed of propagation, domain of dependence, acoustical, compressible, Moser, Kato–Ponce,
  commutator estimate, Gagliardo–Nirenberg interpolation; Lorentzian, causal curve, time
  orientation). Matches: IncompressibleFlows (torus Sobolev spaces, incompressible Euler),
  RelativisticQuantumFieldTheory RQFT1 (flat Klein–Gordon finite propagation), unrelated hits
  elsewhere. No proposed Lean name of this design occurs in any roadmap's Lean file.

## Proposed Part IIs

- **Compressible Euler equations, Part II (characteristic data and acoustical geometry):**
  characteristic initial data on `S₀ ∪ C`, constraint and compatibility conditions, acoustical
  eikonal functions and null foliations, and the ruling of the regular boundary of §8.4 by null
  geodesics from the edge of the data (boundary `C²`, metric `C^{1,1}`). Consumes this roadmap
  and a Lorentzian roadmap for `C^{1,1}` geodesics and null generators.
- **Fractional-order well-posedness** (`s > n/2 + 1` real): Kato–Ponce commutator estimates via
  the PDE roadmap's Layer 7 paraproducts.
- **Uniqueness criteria for maximal developments** beyond §8.2.3 (EperonReallSbierski2019
  Theorem 4.64, connected intersections, and Theorem 4.82, maximal developments lying on one side
  of their boundary) need the smooth causality theory of a Lorentzian causality roadmap.

## Gaps

None: every prerequisite is a pinned Mathlib or Tau Ceti declaration (each read at the pin, file
and line in the README's supplier contracts) or a target of this roadmap.

## Sources

- Added and read: `EperonReallSbierski2019` (arXiv:1802.03020v2; Theorem 3.45, Remark 3.56,
  Proposition 4.63, Theorem 4.64, Corollaries 4.68–4.69, Theorem 4.82), `LukNotes` (author page;
  Propositions 4.1, 4.4, Theorems 5.3, 5.5, 6.1, Lemmas 6.8–6.9, Theorem 6.10; year from the PDF's
  creation date, since the text is undated), `Nirenberg1959` (Numdam; Lecture II, Theorem,
  inequality (2.2)).
- Re-read for every locator used: ChristodoulouMiao2014 (lines 481–544, 606, 672–700, 818–910),
  Christodoulou2019 (lines 121–215), LuoYu2023a (lines 78–99), LuoYu2023b (lines 405–425,
  805–818, 900–918), LukSpeck2018 (lines 1996–2008, 2075–2080), AbbresciaSpeck2022 (lines 70–100,
  147–180, 395–425), Minguzzi2019 (lines 1356–1376, 1917, 3572–3584), MinguzziCone2019
  (lines 1735–1740), Chrusciel2011 (lines 534, 1169–1180, 1352, 1840–1848), BarGinouxPfaffle2007
  (lines 1004–1010, 3662–3668, 3719–3726).
- Not read (settled, cited by locator only): Kato1975, Majda1984, Dafermos2016 (paywalled,
  uncertified); Friedrichs1954, HawkingEllis1973, ONeill1983, Christodoulou2007 (waived). The
  theorem numbers cited from Majda1984 ("Theorem 2.1", §§2.1–2.3) and Kato1975 ("Theorem I") are
  the manifest's recorded locators and are not verified against the text; every statement that
  cites them also cites an open source for its structure (LukNotes, Nirenberg1959,
  EperonReallSbierski2019) or is proved along a route given in the README.
- No text is missing; no `needs-references.toml` was written.
- Suspicious instructions in fetched or read text: none found.

## Dependency check

`gate --candidate packages/CompressibleEulerEquations/design --only CompressibleEulerEquations`:

    candidate: CompressibleEulerEquations is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
    depcheck: 242 roadmaps, 2362 edges, 0 problem(s)

No UPWARD or CYCLE line. `roadmaps resolve` on the README: one lead, the source key
`HawkingEllis1973` followed by a section sign read as a roadmap citation; reworded, no other
unresolved citation or Lean name.

`sources check packages/CompressibleEulerEquations/sources.toml`: 0 problems.
