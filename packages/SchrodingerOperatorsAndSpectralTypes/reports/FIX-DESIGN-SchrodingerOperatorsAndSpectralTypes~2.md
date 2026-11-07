# FIX-DESIGN-SchrodingerOperatorsAndSpectralTypes~2

Repair of the findings of `REV-DESIGN-SchrodingerOperatorsAndSpectralTypes` on the design of
`SchrodingerOperatorsAndSpectralTypes` (round 2). Files edited:
`packages/SchrodingerOperatorsAndSpectralTypes/design/README.md`,
`packages/SchrodingerOperatorsAndSpectralTypes/design/plan.json`,
`packages/SchrodingerOperatorsAndSpectralTypes/sources.toml`. The design has no `Suggested.lean`,
so no Lean statement changed and no elaboration was run. Supplier heads consulted: UnboundedOperators
at its open head (`a075503`), VariationalMethods at its open head (`7ea28a3`),
OperatorTheory/SelfAdjointSpectralTheory and PDE on main (`ffac513`).

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F01 (P2) — applied

Verified: kato57 line 25–35 states the theorem for `s-lim e^{itH₁}e^{−itH₀}P₀`, and on the
witness `H₁ = H₂ = diag(1,2)` the 1.7 object is `1`, not a partial isometry with initial space
`ℋ_ac(H₁) = 0`. Old: 1.9 asserted partial isometry, adjoint and intertwining for `Ω_±`. New: 1.9
names the compressed wave operator `W_±(H₂,H₁) := Ω_±(H₂,H₁) P_ac(H₁)` (defined on `ℋ` once
existence on `ℋ_ac(H₁)` holds, zero off `ℋ_ac(H₁)`, Kato's (1.1)) and states the three clauses for
`W_±`, keeping `Ω_±` of 1.7 as the unrestricted limit; the `V = 0` Check now records
`W_± = P_ac(H₁)` while `Ω_± = 1`, with the `ℂ²` witness and the `M_x` instance. Pattern: the pure
point Check now gives `W_± = 0` and `D_± = 0` (no coordinate `e^{−it/n²}c_n` converges); the rank-one
Check says "existence on `ℋ_ac(H₁)`". Plan target 1.9 statement and its `zero_perturbation` and
`pure_point` tests changed accordingly. No other section states a property of `Ω_±` off `ℋ_ac(H₁)`
(1.7's clauses are about `D_±` itself and remain true).

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F02 (P2) — applied

Verified: VariationalMethods 4.4 at its head says "for `dim L ≤ n` it is the junk value `0`", so
`rayleighMinMax ⊤ k = 0` for `k ≥ N` on `N` points, while 1.6 gives `λ_k = +∞`; and `X = ∅` is
compact with `σ(Δ_∅) = ∅`. Old: 3.8 asserted `0 = λ₀` for every compact `X` and identified all
`λ_k` with Courant–Fischer values. New: the eigenvalue list `0 = λ₀ ≤ λ₁ ≤ ⋯` is stated for
`X ≠ ∅`, with `λ_k = λ_k(X)` of 3.7; the Courant–Fischer identification `λ_k = rayleighMinMax ⊤ k`
is stated for `k < dim L²(X)` (every `k` when `dim X ≥ 1`), for the compact form pair
`(H¹(X) ↪ L²(X), 𝔞)` of 3.4, whose embedding is compact as it factors through `(Δ_X + 1)^{−1/2}`;
the `N`-point Check records the junk value as the negative control and a new `X = ∅` Check records
`σ = ∅`, `λ₀(X) = +∞`. Plan target 3.8 statement and tests updated (new test `empty`).

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F03 (P3) — applied

Verified: `1 = ∫_{1/4}^{3/4} φ' ≤ sup|φ'|/2` forces `φ' ≡ 2` on `(1/4, 3/4)`, impossible with
`φ'(1/4) = 0`. Old: step `0` on `(−∞, 1/4]`, `1` on `[3/4, ∞)`, `|φ'| ≤ 2`. New: step `0` on
`(−∞, 1/8]`, `1` on `[7/8, ∞)`, `|φ'| ≤ 2` (average slope `4/3 < 2`); the route now says
`χ_k = φ ∘ g` with `g` the `1/8`-approximation, `χ_k = 1` where `g ≥ 7/8`, `0` where `g ≤ 1/8`,
`|grad χ_k| ≤ 2·(2/k) = 4/k`. A Check records the impossible thresholds. Plan 3.5 gains the test
`step_thresholds`. The flat-`ℝ^d` Check (`≤ 2/k`) is unchanged and still correct.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F04 (P3) — applied

Verified: with the Conventions' extended values `λ_k = +∞` for `k ≥ N`, so "`λ_k → ∞` fails" was
the wrong diagnosis. Old: "`λ₀ = ⋯ = λ_{N−1} = 0`, so `λ_k → ∞` fails". New: the clause asserts
that every `λ_k` is finite and `λ_k → ∞` (infinitely many finite eigenvalues), and the Check says
`L² = ℂ^N` has only `N` eigenvalues, all `0`, `λ_k = +∞` for `k ≥ N`, so the clause needs
`dim X ≥ 1`. Done in the same 3.8 rewrite as F02; plan test `zero_dim` of 3.8 reworded.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F05 (P3) — applied

Verified: teschl line 5056–5057 (Corollary 4.11) writes `A − B ≥ 0` on a common domain; the
README defined no order. Old: "`A ≤ B` in form sense gives `μ_n(A) ≤ μ_n(B)`". New: the form order
is defined (`Q(B) ⊆ Q(A)` and `q_A ≤ q_B` on `Q(B)`, form domains of UO-D06) with the one-line
proof, and two Checks: `diag(1,3) ≤ diag(2,4)` (`1 ≤ 2`, `3 ≤ 4`) and the Neumann/Dirichlet pair on
`(0,1)` (`N ≤ D`, `(n−1)²π² ≤ n²π²`; a common-domain comparison would also give `D ≤ N`, refuted by
`μ₁(D) = π² > 0 = μ₁(N)`). Plan 1.6a API `minMaxValue_le_of_le` restated; test `form_order` added.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F06 (P3) — applied

Verified: bms02 line 152–153 defines the minimal operator as the closure from `C_c^∞`. Old: 3.2
called `Δ₀` on `C_c^∞` "the minimal operator". New: `Δ₀` is the **initial operator** (the
Laplacian on `C_c^∞(X; ℂ)`), its closure is bms02's minimal operator, and `Δ₀† = (closure Δ₀)†`
(HilbertModules H6), so 3.3's `Δ₀† = Δ_max` stands. Pattern: the Summary, the 3.2 heading, the
extension-by-zero bullet and the `ℝ⁴ ∖ {0}` Check of 3.6 reworded; plan names `minimalLaplacian`,
`minimalLaplacian_*`, `adjoint_minimalLaplacian`, `energyForm_minimal`,
`minimal_le_friedrichs_le_maximal`, `essentiallySelfAdjoint_minimalLaplacian` renamed to the
`initial…` forms; 3.2's locator note and the bms02 manifest locator say "closure from `C_c^∞`".

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F07 (P3) — disputed

UnboundedOperators §3.3 (UO-C03) at the head of its open pull request (`a075503`, index of
2026-11-06) states the example: the paragraph beginning "As a required distinction, on
`ℓ²(ℝ) ⊕ L²(ℝ,dx)` take the direct sum of the diagonal coordinate operator and multiplication by
the real coordinate … Prove its pure-point subspace is `ℓ²(ℝ)⊕0` and that its projection cannot
equal `P_A(B)` for any Borel B: including every coordinate eigenvector forces B=ℝ, which also
retains the continuous summand." The README's attribution "UO-C03's example on `ℓ²(ℝ) ⊕ L²(ℝ)`"
is therefore correct, and the example stays the supplier's (restating it here would plan it
again). No edit.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F08 (P3) — applied

Verified: lp80 line 251–256 ((2.8)–(2.10)) is the `x`-independent reduction `s = log y`,
`v = u/√y`, `v_tt = v_ss`; line 279–290 defines the zero Fourier coefficient. I recomputed
`∂ᵧ²(y^{1/2} f(log y)) = y^{−3/2}(f'' − f/4)`, hence `Δ(y^{1/2}f(log y)) = y^{1/2}(1/4 − ∂_r²)f`.
Old: 3.10 cited line 279–290 alone. New: line 251–256 ((2.8)–(2.10)) for the identity and
279–290 for the zero-mode vocabulary; plan 3.10b locator and the lp80 manifest locator carry both.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F09 (P3) — disputed

SA-B85 is not limited to compact `K`: the SA-B85 bullet of
`TauCetiRoadmap/OperatorTheory/SelfAdjointSpectralTheory/README.md` on main runs from line 676 to
line 752 and its last part (lines 727–752) treats nondegenerate `π : C₀(X) → B(H)` for
second-countable locally compact `X`, constructs the compact metrizable `X⁺`, proves `P({∞}) = 0`,
restricts the cyclic decomposition along `X ↪ X⁺` and "owns the contractive approximate-identity
argument showing that `C₀(X)`-cyclic and `C(X⁺)`-cyclic subspaces coincide"; the Scope line 132 of
that README lists "nondegenerate C₀(X) representations (`SA-B85`)". SA-B86 (line 753 on) is about
essentially bounded PVM symbols and contains no compactification step, and UnboundedOperators (its
head, the paragraph on pp. 148–150) cites SA-B85 alone for the cyclic decomposition. The citation
"SA-B85" is therefore the right one and "SA-B85–SA-B86" would be wrong. I added one clarifying
clause in 1.4's route, "(its nondegenerate `C₀(ℝ)` case, applied to the bounded calculus
`f ↦ ∫ f dP_A` of SA-B44)", so the use is explicit; the supplier contract and plan 1.4d are unchanged.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F10 (P3) — disputed

UnboundedOperators §5.6 (UO-E05) at the head of its open pull request (`a075503`) states the fact:
"In the interval model prove `C_c∞(0,1)` is a form core in `H₀¹` but its graph closure has domain
`H₀²`, which also imposes zero first-derivative traces; it is not an operator core for the Dirichlet
realization." That is the closure of `−d²/dx²` on `C_c^∞(0,1)` having domain `H²₀(0,1)`, which is
what the 3.2 Check cites UO-E05 for. No edit.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F11 (P3) — applied

Old: `g = 3·1_{\{2\}}`. New: `g = 3·1_{{2}}`. No other `\{` in the README (grep); the plan's test
already wrote `1_{2}`.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes/F12 (P3) — applied

Verified: bms02 line 128–129 assumes `M` connected; hm23 line 39–43 is about finite-area
hyperbolic surfaces. Old: 3.6 cited Corollary 2.10 for every complete `X`; 3.7 cited hm23 for the
kernel on every complete `X`. New: 3.6 says bms02 assumes `M` connected and the disconnected case
is componentwise (`L²(X) = ⊕_j L²(X_j)`, `Δ₀`, `Δ₀† = Δ_max`, `Δ_F` preserve the summands); 3.7
cites hm23 line 41–43 for the finite-area surface case with the general case by the kernel route,
and marks the `λ₁⁺` citation as that case's vocabulary. Plan locators of 3.6, 3.7a, 3.7b updated;
the bms02 manifest locator names the standing connectedness assumption. I did not add the
suggested grigoryan09 Ch. 4 locator for the general kernel statement: that text is uncertified and
I could not confirm where in it the statement sits, and the route is self-contained (3.6 gives
`‖du‖² = ⟪u, Δ_X u⟫ = 0`, K5a gives smoothness, and `du = 0` makes `u` locally constant).

## Dependency check

Command: the gate on `packages/SchrodingerOperatorsAndSpectralTypes/design/README.md` with
`--only SchrodingerOperatorsAndSpectralTypes` against the board merge order and the content
checkout. Output:

```
candidate: SchrodingerOperatorsAndSpectralTypes is not in the merge order yet; checked as if placed after HilbertModules (the intake inserts it when its design is accepted)
note: supplier VariationalMethods of SchrodingerOperatorsAndSpectralTypes is not in the merge order; it must be inserted before SchrodingerOperatorsAndSpectralTypes
depcheck: 242 roadmaps, 2371 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the edited README: no cross-roadmap citation and no
Lean name found nowhere (index of 2026-11-06T03:50:59Z, 460 open pull requests).

## Gate failures

None were listed for this round.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.9 `W_± = Ω_± P_ac(H₁)` partial isometry | `V = 0`, `H₁ = diag(1,2)`; `V = 0`, `H₁ = M_x` on `L²(ℝ)`; `H₁ = diag(1/n²)`, `V = −diag(1/n²)` | `D_± = ℂ²`, `Ω_± = 1`, `P_ac = 0`, `W_± = 0` (initial = final = `0`); `D_± = ℋ`, `W_± = Ω_± = 1 = P_ac`; `H₂ = 0`, coordinate `e^{−it/n²}c_n` diverges for `c_n ≠ 0`, `D_± = 0`, `W_± = 0` | holds for `W_±`; false for `Ω_±` on the first instance | F01 |
| 1.9 `W_±(H₂,H₁)* = W_±(H₁,H₂)` | the three instances above | `0* = 0`; `1* = 1`; `0* = 0`; in general `W_±(H₁,H₂)` restricted to `ℋ_ac(H₂)` is `Ω_±(H₂,H₁)⁻¹` on the range (teschl line 10597–10598) | holds | F01 |
| 1.9 `H₂ P_ac(H₂) = W_± H₁ P_ac(H₁) W_±*` | `V = 0` on `ℂ²`; `V = 0` on `M_x` | `0 = 0`; `M_x = 1·M_x·1` | holds | F01 |
| 1.6 form order ⇒ `μ_n(A) ≤ μ_n(B)` | `diag(1,3) ≤ diag(2,4)`; Neumann `N` vs Dirichlet `D` on `(0,1)`; reversed inclusion | `μ₁: 1 ≤ 2`, `μ₂: 3 ≤ 4`; `Q(D) = H¹₀ ⊆ H¹ = Q(N)`, forms equal, `N ≤ D`, `μ_n(N) = (n−1)²π² ≤ n²π² = μ_n(D)`; `D ≤ N` would need `Q(N) ⊆ Q(D)`, false, and `μ₁(D) = π² > 0 = μ₁(N)` | holds; the domain inclusion is necessary | F05 |
| 3.2 `Δ₀† = (closure Δ₀)†` | `X = (0,1)` | `ker(Δ₀† + 1) ∋ e^{±x}` unchanged by closure; `Δ_max` unchanged | holds | F06 |
| 3.5 step with thresholds `1/8`, `7/8` | `φ` linear of slope `4/3` on `[1/8, 7/8]` smoothed; `g` with `|g − f| ≤ 1/8` | `4/3 < 2` leaves room; `f = 1 ⇒ g ≥ 7/8 ⇒ χ_k = 1`; `f = 0 ⇒ g ≤ 1/8 ⇒ χ_k = 0`; `|grad χ_k| ≤ 2·(1/k + 1/k) = 4/k`; thresholds `1/4`, `3/4`: `1 ≤ sup|φ'|/2` forces `φ' ≡ 2`, contradicting `φ'(1/4) = 0` | holds | F03 |
| 3.5 flat `ℝ^d` Check | `χ_k = φ(2 − |x|/k)` | `|φ'|·(1/k) ≤ 2/k` | holds | none |
| 3.6 componentwise reduction | `X = ⊔ S¹_j`; `X = (0,1) ⊔ ℝ` | `L²(X) = ⊕ L²(X_j)`, `Δ₀` maps `C_c^∞(X_j)` into itself, so `Δ₀†` and the form split; `(0,1) ⊔ ℝ` incomplete, not essentially self-adjoint on the first summand | holds | F12 |
| 3.7 kernel, general `X` | `ℝ`; circle; `S¹ ⊔ ℝ` | `ker = 0`; `ker = ℂ·1`; `ker = ℂ·(1,0)`, dimension `1` = number of finite-volume components | holds by the route; hm23 only for finite-area surfaces | F12 |
| 3.8 eigenvalue clause with `X ≠ ∅` | `X = ∅`; `N` points; `S²`; two circles | `σ = ∅`, `λ₀ = μ₁ = +∞`, clause not asserted; `λ_k = 0` for `k < N`, `+∞` for `k ≥ N`, `rayleighMinMax ⊤ k = 0` for `k ≥ N` (junk), identification asserted for `k < N` only; `l(l+1)` with `λ₁ = λ₂ = λ₃ = 2 = rayleighMinMax ⊤ 1,2,3`; `0` of multiplicity `2` | holds | F02, F04 |
| 3.8 compact form pair `(H¹(X) ↪ L²(X), 𝔞)` | compact `X` with `dim X ≥ 1`; `N` points | embedding `= (Δ_X+1)^{−1/2} ∘ (unitary)` with `(Δ_X+1)^{−1/2}` compact (compact resolvent); on `N` points `H¹ = L² = ℂ^N`, trivially compact | holds | F02 |
| 3.8 `λ_k → ∞` for `dim X ≥ 1` | circle; `N` points | `n²` with multiplicity `2`, unbounded; all finite eigenvalues `0`, clause needs `dim X ≥ 1` | holds | F04 |
| 3.10 cusp identity | `u = y^{1/2} f(log y)` | `∂ᵧ u = y^{−1/2}(f/2 + f')`, `∂ᵧ² u = y^{−3/2}(f'' − f/4)`, `Δu = −y²∂ᵧ²u = y^{1/2}(f/4 − f'')` | holds; matches lp80 (2.8)–(2.10) | F08 (locator) |
| 1.4 (4) via SA-B85's `C₀(ℝ)` case | `A = diag(1,2)`; `A = M_x` on `L²[0,1]` | bounded calculus `f ↦ ∫ f dP_A` nondegenerate (`P_A(ℝ) = 1`); cyclic sum `ℂe₁ ⊕ ℂe₂`, `ψ = (ε₁, ε₂)` maximal iff `ε₁ε₂ ≠ 0`; `1` cyclic, `μ_1 = Leb` | holds | F09 (clause only) |

## For the maintainer

- Plan names changed: `minimalLaplacian` → `initialLaplacian` (and `initialLaplacian_dense`,
  `initialLaplacian_symm`, `inner_initialLaplacian_self`, `initialLaplacian_isClosable`,
  `adjoint_initialLaplacian`, `energyForm_initial`, `initial_le_friedrichs_le_maximal`,
  `essentiallySelfAdjoint_initialLaplacian`). Section 3.2 is now titled "The initial operator on
  test functions"; consumers cite Layer 3 by section number (3.6, 3.7, 3.10), which did not change.
- The compressed wave operator `W_±` is notation inside 1.9, not a new plan target; the design
  gains no target.
- F07, F09 and F10 are disputed against the supplier texts as they are now (UnboundedOperators head
  `a075503`, SelfAdjointSpectralTheory on main). If the reviewer read an earlier UnboundedOperators
  head, the two UO findings may have been true then; the citations are correct at the current head.
- Ownership against open pull requests was not re-checked beyond the suppliers named here; nothing
  in this round adds a construction.
- No source was requested; `needs-references.toml` was not created.
