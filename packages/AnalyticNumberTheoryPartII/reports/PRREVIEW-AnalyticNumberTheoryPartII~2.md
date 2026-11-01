# Review of AnalyticNumberTheoryPartII (pull request #1167 at 985afa1)

**Verdict:** needs changes

Scope: the roadmap folder `TauCetiRoadmap/AnalyticNumberTheoryPartII` (README.md 3027 lines, Suggested.lean 262 lines, metadata.toml) at head 985afa1. The pull request changes nothing outside this folder (`git diff --stat origin/main...HEAD` excluding the folder is empty). The worker's gate at this head passes every check (residue, build, depcheck, readme-ids, stray-files all 0). This is a full re-review: the folder changed by 1833 lines since ed5b737.

## Status of the previous review's findings (ed5b737 → 985afa1)

- R01 (P1, Selberg constant): repaired. §6.17 now reads `det(Δ+s(s−1))=ZΓ(s)I_g(s)exp(2(g−1)[2ζ′(−1)−log√(2π)−1/4])` and `det′Δ=Z′Γ(1)(2π)^(g−1)exp(4(g−1)ζ′(−1)−(g−1)/2)`; §6.19's `D_g` carries the same constant; §6.17g's Checks contain the large-`s` determination; Conventions records the discrepancy with jss (1.3)/(8.8). Recomputed this round (table): the constant is forced to `C(4ζ′(−1)−log 2π−1/2)`.
- R02 (P2, VonNeumannAlgebras V10 ownership): repaired. Scope and ownership and "From VonNeumannAlgebras" now consume V10.Hecke, V10.AffineHecke, V10.AffineAP and V10.AffineType by name for the pair, degrees, complex Hecke algebra, both regular representations, the finite-adele Haar corner state, ergodicity, essential freeness and type III; §§6.1, 6.7, 6.8, 6.14, 6.16, 6.25 are gone; §§6.9, 6.33, 6.41, 6.42 say which instance is the supplier's (`β=1`) and keep only the `0<β≤1` family, the `K`-coefficient algebra, the universal completion and the `III₁` refinement. Every one of these labels resolves at VonNeumannAlgebras #889 head dee8088 (README lines 2494, 2577, 2652, 2698), and the objects listed are there (see Verified sound).
- R03 (P2, amenability): repaired. The "Local amenability input" subsection and `bcPositiveRationals_amenable` are gone; §6.33f, §6.33g, §6.23 and the Layer 6 Dependencies cite AmenableGroups Layer 6 (on main, README line 391–410: amenability of every abelian discrete group) and OperatorAlgebraDynamics D2.
- R04 (P2, ArithmeticGaloisRepresentations §2.7): repaired. Line 45 now cites LFunctions Layers 5–6 (on main, lines 929, 1100) and Canonical rank-one comparison (AL.1.5.3), which AutomorphicLFunctionsAndLocalFactors #924 names in its own text (lines 4, 12, 14).
- R05 (P3, anchors): repaired; `residue=0`.
- R06 (P3, backticked names): largely repaired; the resolver reports no unresolved Lean name. Three residues remain (R03 below).
- R07 (P3, citation labels): repaired. UniversalCovers is cited by Stage; AutomorphicSpectralTheory by §§1.2–1.5, §4.7 and §6.17 (all exist at #925: lines 914–969, 2392, 3217); AnalyticNumberTheoryPartI by section number (§0.23a line 504, §2.5 line 994, §2.15 line 1183, §2.31e line 1449, §3.1 line 1787, §3.23 line 2187, §3.24 line 2563 at #1126); the bold titles "Inversion between left and right quotient conventions" and "Siegel sets cover `G(F)\G(𝔸)`" are the actual bullet titles of AdelicAlgebraicGroups §2.2 (line 1811) and §3.4 (line 3174) at #792, so they are no longer invented.
- R08 (P3, §4.3b): repaired; the two-sided Gamma bound is now consumed from ZerosOfLFunctions Layer 1 (#253, lines 105–106, 484) and AnalyticNumberTheoryPartI §0.23a, and only the balanced quotient is local.
- R09 (P3, locators): repaired. §5.8 cites dw86 Proposition 3.1, p.39 only; §6.38 cites bc95 Theorems 5 (p.415) and 25 (p.442) and cm Theorem 3.32; §5.21 cites loww Proposition 3.7(2) for residues and 3.7(5) for order one.

## R01 (P1) — §5.13f's local orbital Euler factor is wrong by `(1+u)`

Location: README.md line 881 (§5.13f): "`Zα(ω,Φ0)=ηα(u)/[(1−qu³)(1−u²)]`" and line 883: "`Z(Φ0)=(1−u)/[(1−qu³)(1−u²)] I(Φ1)` … from Propositions 3.1–3.2, pp.39–41".

Claim: with `u=ω(π)`, the unramified orbital zeta function of the integral lattice is `η_α(u)` divided by `(1−qu³)(1−u²)`.

Witness (three independent computations, all on the split type with `η=(1+u)²`):
1. Datskovsky–Wright Theorem 3.1 (dw86, cache 2d6aa0bb, OCR line 643, printed p.42) prints the denominator as `(1−ω₀⁻¹ω³(π))(1−ω(π))`, i.e. `(1−qu³)(1−u)`, and its proof (lines 662–668, 713–716) gives `I(ω,DΦ₀)=(1−qu³)I(ω,Φ₀)` with `DΦ₀=Φ₁`, hence `Z(Φ₀)=I(Φ₁)/(1−qu³)` with no `(1−u)/(1−u²)` prefactor; with the roadmap's own §5.13a value `I(Φ₁)=(1+u)²/(1−u)` this is `(1+u)²/((1−u)(1−qu³))`, whereas line 883's relation gives `(1+u)/((1−u)(1−qu³))`.
2. The roadmap's own §5.13 identity `Σ aₙ(A)n^(−2s)=ζ_F(4s)ζ_F(6s−1)ζ_A(2s)/ζ_A(4s)` (LOWW Lemma 3.9, loww line 653–658; DW Theorem 6.1) has split local factor `(1−u²)⁻¹(1−qu³)⁻¹(1−u)⁻³(1−u²)³=(1+u)²/((1−u)(1−qu³))` at `u=q^(−2s)`; the same computation gives `(1+u²)/((1−u)(1−qu³))`, `(1+u)/((1−u)(1−qu³))`, `(1−u+u²)/((1−u)(1−qu³))`, `1/((1−u)(1−qu³))` for the other four types, i.e. exactly `η_α/[(1−qu³)(1−u)]` in every case.
3. Multiplying line 881's factors over the primes for `F=ℚ`, `A=ℚ³` gives `ζ(2s)²ζ(6s−1)/ζ(4s)`, while §5.13 gives `ζ(2s)³ζ(6s−1)/ζ(4s)²`; the ratio `ζ(2s)/ζ(4s)=∏(1+p^(−2s))` is not 1. So §5.13f contradicts §5.13.

Repair: in §5.13f replace the two displays by `Zα(ω,Φ0)=ηα(u)/[(1−qu³)(1−u)]` and `Z(Φ0)=I(Φ1)/(1−qu³)`, with the shell-removal identity `I(ω,DΦ)=(1−qu³)I(ω,Φ)` cited to the proof of Theorem 3.1, p.42 (Proposition 3.1, p.39, is convergence and Proposition 3.2, pp.40–41, is the archimedean continuation; neither contains the identity); add the Check "the five factors multiply to the §5.13 Euler factors `ζ_F(4s)ζ_F(6s−1)ζ_A(2s)/ζ_A(4s)`; at a split prime both sides are `(1+u)²/((1−u)(1−qu³))`". Tested on the instance that refuted the original: with the corrected denominator the split, unramified-quadratic, ramified-quadratic, unramified-cubic and ramified-cubic factors agree with the §5.13 identity type by type (computation 2).

## R02 (P3) — `VonNeumannAlgebra.CrossedProduct` is not a supplied declaration

Location: README.md line 85: "the supplied `VonNeumannAlgebra.CrossedProduct` for analytic crossed products".

Witness: VonNeumannAlgebras at #889 head dee8088 contains no string `CrossedProduct` (its V8 regular crossed product is described in prose at line 2060, `(π(x)f)(g)=α_(g⁻¹)(x)f(g)`, `(u_h f)(g)=f(h⁻¹g)`); the only `CrossedProduct` at the Tau Ceti pin is the algebraic Brauer-class crossed product in `TauCeti/Algebra/CrossedProduct/Basic.lean`, unrelated to measured actions.

Repair: cite "V8's regular crossed product of a countable nonsingular action" by section, without a Lean name (as the same paragraph already does for its convention).

## R03 (P3) — Residual Lean-like names that `Suggested.lean` does not declare

Location: README.md line 640 ("API targets are `.meromorphic_distribution`, `.fourier_equation`, `.rational_in_q_pow`, `.involutive_matrix`"), line 2281 ("this is `kms_finite_spectral_core_iff` for the BC core"; the name exists in no roadmap, `roadmaps grep --fixed` finds only this README, and OperatorAlgebraDynamics D7 has no such declaration), line 2433 ("satisfies IsKMS `β`"), line 2608 ("Its `epsilon_1` vector functional"), line 1632 ("the fields of SpectralContinuation").

Repair: write each in prose (the four nonarchimedean properties as a sentence; "the finite-spectral-core criterion"; "the core KMS condition of §6.29"; "`ε₁`"; "the continuation data of §6.4a").

## R04 (P3) — References list is incomplete and has duplicate labels

Location: README.md lines 2969–3027.

Witness: the link labels R104 (Shintani 1972), R106 (Wood 2011), R108 (Heath-Brown, Acta Arith. copy), R110 (Hounie), R123, R124, R126 (Helffer), R127 (Hiai) are used in the text (lines 636, 671, 1362, 1509, 2694, 61, 93) but have no numbered entry; R114 and R123 are both arXiv math/0002141 (Neshveyev 2000), R117 and R124 both arXiv 0907.1456 (Neshveyev 2009), R108 and R109 are both Heath-Brown 1995, so three works carry two labels each.

Repair: add numbered entries for the missing eight (or point the text at existing ones) and merge the three duplicate pairs into one label each.

## R05 (P3) — §6.42 cites a supplier section it does not use

Location: README.md line 2708 (*Needs:* of §6.42): "AnalyticNumberTheoryPartI, Prerequisites and boundaries".

Witness: that section of AnalyticNumberTheoryPartI (#1126, lines 16–48) lists prime-ideal theorems, Chebotarev, Artin and contour suppliers; nothing in §§6.42a–6.42i uses them, and the progression prime input is already V10.AffineAP through §6.9c.

Repair: delete the item.

## R06 (P3) — The `β>1` half of the scaling-measure dichotomy is statable and absent

Location: Suggested.lean docstring (lines 27–30) and README §6.48b (line 2903).

Claim: the phase transition has "no signatures here" because the completed algebra is absent at the pins.

Witness: §6.48b is a statement about Radon measures on `IsDedekindDomain.FiniteAdeleRing ℤ ℚ` only: for `β>1` every normalized `β`-scaling measure is carried by the disjoint sets `qẐ^×`, has `μ(Ẑ^×)=1/ζ(β)`, and is `ζ(β)⁻¹Σ_q q^(−β)(q_*ν)` for a unique probability `ν` on `Ẑ^×`. Every carrier is the one `critical_scaling_measure_unique` already uses (the unit set is `{a | ∀ v, a v ∈ v.adicCompletionIntegers ℚ ∧ IsUnit (a v)}`), so the `β>1` half of §6.50 in measure form is statable at the pins exactly as the `β≤1` half is.

Repair: state it beside `critical_scaling_measure_unique` (an `∃!`-free bijection statement: for `β>1` and every Borel probability `ν` on the unit set, the displayed measure is a normalized scaling measure, and every normalized scaling measure arises from exactly one `ν`), or say in the docstring why the measure form is the acceptance test for `β≤1` but not for `β>1`.

## Verified sound

Gate, build and order. The worker's gate at 985afa1 passes every check. `lake env lean TauCetiRoadmap/AnalyticNumberTheoryPartII/Suggested.lean` at the pins (mathlib 6b7abb3c, TauCeti a91d3aaf): 9 `declaration uses sorry` warnings and nothing else (3.2 s). A scratch copy with one `#check @name` per declaration (21 declarations) elaborates with no error; every elaborated type was compared with its README statement and none lost a section binder (the file has no section variables). The dependency check `gate --depcheck … --movable` prints `depcheck: 205 roadmaps, 1449 edges, 0 problem(s)`: no UPWARD or CYCLE line for this roadmap at merge-order position 82. Every supplier is on main (AmenableGroups, LFunctions, ClassFieldTheory, OperatorAlgebraDynamics, ComplexKahlerGeometry, DifferentialGeometry, FuchsianOrbifolds), Completed (UniversalCovers, GlobalNumberFields, ProfiniteArithmetic, RestrictedProducts) or earlier in the order (VonNeumannAlgebras 4, LFunctions 23, AdelicAlgebraicGroups 30, ZerosOfLFunctions 76, AutomorphicLFunctionsAndLocalFactors 77, AutomorphicSpectralTheory 79, AnalyticNumberTheoryPartI 81).

Padding probe. Replacing every `sorry` by `simp`, and separately by `norm_num`, in a scratch copy leaves all 9 theorems with "unsolved goals"; no declaration restates a definition, mirrors a Check or computes a value. The definitions (`lerchSeries`, `complexHurwitzSeries`, `lerchDomain`, `lerchBasepoint`, `lerchIntegral`, `barnesG`, `barnesRemainder`, `quadraticDoubleSeries`, `quadraticReciprocity`, `quadraticReflectionFactors`, `quadraticReflection`, `firstEisenstein`) have real bodies on native carriers; no `set_option`, `lemma`, `#eval`, sorried data or `True` placeholder; imports are `Mathlib` plus `TauCeti.AlgebraicTopology.UniversalCover.Action` (present at the pin).

Headline theorems (README) and their Lean status: Lerch continuation on the universal cover with `π₁″`-invariance (§§4.5, 4.17) stated; both completed Lerch functional equations on `ℂ×{0<Re a<1}×{0<Re c<1}` (§§4.9–4.10) stated; complex Hurwitz continuation with residue and Bernoulli values (§§4.12, 4.16) stated; Barnes expansion with sharp remainder and sector derivative bound (§§4.3, 4.3a) stated; quadratic large sieve and fourth moment (§5.29) stated; pole-cleared double series with both matrix equations and polynomial growth (§5.30) stated; cubic Shintani continuation/residues/matrix equation/convexity (§§5.21, 5.24, 5.28) not statable (no cubic-order carrier at the pins), named in the docstring; generation by first Eisenstein functions (§6.37) stated; critical scaling-measure uniqueness (§6.40) stated; phase transition and type `III₁` (§§6.42, 6.50) named as not statable (R06 asks for the `β>1` measure half); compact Selberg determinant comparison and spectral zeros (§§6.17, 6.20) named as not statable. No stand-ins.

Adversarial table (values computed by hand this round; "ok" means the statement survived):

| statement | instances | values each side | result |
|---|---|---|---|
| §5.13f local factor | split type, `u=q^(−2s)` | README `(1+u)/((1−u)(1−qu³))`; DW proof and §5.13 Euler factor `(1+u)²/((1−u)(1−qu³))`; over ℚ, `A=ℚ³`: `ζ(2s)²ζ(6s−1)/ζ(4s)` vs `ζ(2s)³ζ(6s−1)/ζ(4s)²` | **false** (R01) |
| §5.13a–e auxiliary integrals | regions (a)–(d) of dw86 p.43 | `1/(1−u)+u²/(1−u)+2u/(1−u)=(1+u)²/(1−u)`; `(1+u²+u⁴)/(1−u³)=(1−u+u²)/(1−u)`; `(1+u+u²)/(1−u³)=1/(1−u)` | ok |
| §6.17 constant (R01 of r1) | `u=s(s−1)`, `C=g−1` | `log det=C[s²−2s²log s+(2s−2/3)log s−1/2]+o(1)`; `log I_g=C[…+log 2π−4ζ′(−1)]`; forced constant `2C[2ζ′(−1)−log√(2π)−1/4]`; `det′Δ=Z′(1)(2π)^(g−1)e^(4(g−1)ζ′(−1)−(g−1)/2)` = Sarnak | ok |
| §6.17g test spectrum | `λ_j=j≥0`, `H=1/(1−e^(−t))` | `a₀=1,a₁=1/2`; `√(2π)/Γ(u)` expands to `−u log u+u+½log u+O(1/u)`, zero constant | ok |
| §6.12d heat coefficients | `M₀=1/48`, `M₁=7/1920` | `(1−t/4+t²/32)(1/t−1/12+7t/480)=1/t−1/3+t/15`: `a₁=−C/3`, `a₂=C/15`; `ζ(0)=−(g+2)/3`, genus 2: `−4/3` | ok |
| §6.12c Gaussian | `h_t=e^(−t(r²+1/4))` | `g_t(v)=e^(−t/4)e^(−v²/(4t))/√(4πt)`; `g_t(0)=e^(−t/4)/√(4πt)` | ok |
| §6.13b product constant | spectrum `{n≥1}` | `F′(1)=γ`; `u√(2π)e^(γu)∏(1+u/n)e^(−u/n)=√(2π)/Γ(u)` | ok |
| §6.20c orders | `s=0`, `s=1` | `Γ^(2g−2)` pole `2g−2`, `G(1)=1`, `D∘q` simple ⇒ `Z` order `2g−1` at 0, 1 at 1 | ok |
| `barnesG` values | `G(1),G(2),G(4),G(5),G(7)` | `1,1,2,12,34560`; zero at `−n` of order `n+1` | ok |
| §4.3 log-derivative | differentiate the product | `½log2π−z−½+zψ(z+1)=½log2π+½−z+zψ(z)`; at 0: `½log2π−½` | ok |
| §4.3 Checks | `N=1,t=1/2` | `B₄(1/2)=7/240`, `B₄−B₄(1/2)=−1/16` | ok |
| `barnesG_asymptotic` remainder | `N=1`, real `r>0` | `B₄−B₄({t})=−{t}²({t}−1)²≤0` ⇒ `R₁(r)<0`; `−(1/12)·(3/π⁴)ζ(4)/(2r²)=−1/(720r²)` = first omitted term, strict bound by decreasing weight | ok |
| nemes (1.8) sign | same | printed `−(B+B({t}))` would give `+1/(360r²)` | source misprint confirmed |
| §4.12a coefficients | `k=0,1,2`; `m=1,c=1` | `b₀=1,b₁=½−c,b₂=(c²−c+1/6)/2`; `(−1)^m m! b_(m+1)=−B_(m+1)(c)/(m+1)`; `−1/12`; residue at 1 is `b₀/Γ(1)=1` | ok |
| `complexHurwitzContinuation_exists` Bernoulli sign | `m=0`, Mathlib `bernoulli 1 = X−½` | `H(0,c)=½−c`: `−½, 0, −½−i` at `c=1,½,1+i` | ok |
| §4.9a eigenvalues and Mellin factors | `f₀=e^(−πx²)`, `f₁=xe^(−πx²)` | `f̂₁=−i f₁`; `M₀=π^(−s/2)Γ(s/2)`, `M₁=π^(−(s+1)/2)Γ((s+1)/2)`; `a=c=½`: even multiplier `−i`, odd `1`; `L₊=0`, `L₋=2Σ(−1)^n(n+½)^(−s)` | ok |
| `lerch_completed_functional_equations` vs ll2 Thm 2.1 | `k=0,1` | `(2.7)–(2.10)`: `Λ₊=π^(−s/2)Γ(s/2)(ζ+e^(−2πia)ζ(s,1−a,1−c))=e^(−2πiac)Λ₊(1−s,1−c,a)`, `Λ₋=i e^(−2πiac)Λ₋(…)`, holomorphic on `ℂ×(0<Re a<1)×(0<Re c<1)` | ok |
| completed value at a Gamma pole | `s=0`, `Im a>0` | `ζ(0,a,c)=1/(1−z)`, `e^(−2πia)ζ(0,1−a,1−c)=1/(z−1)` ⇒ `L₊(0)=0`, product finite | ok |
| §4.5d/§4.5f residue sign | `s=c=1`, loop about `z=1` | `Φ=−Log(1−z)/z` changes by `−2πi/z`; formula `−(2πi)^s(a−n)^(s−1)e^(−2πic(a−n))/Γ(s)` gives `−2πi/z` | ok |
| §4.17 descent | monodromy space `V=⟨Φ,f_p,g_n⟩` | `Z₀: f_p↦f_(p−1)`; `Z₁: Φ↦Φ+κf₀, f₀↦e^(2πis)f₀`; `Y_n: Φ↦Φ+g_n, g_n↦e^(−2πis)g_n`; the `Z₀`-conjugates of `Z₁`,`Y_n` pairwise commute on `V` ⇒ `[H₀,H₀]⊇G″` acts trivially | ok |
| `lerchContinuation_solvable` index | `derivedSeries G 2` | `=⁅⁅G,G⁆,⁅G,G⁆⁆=G″` | ok |
| §4.1/§4.6 Checks | `Φ(0,2,1)`, `Φ(z,0,c)`, `Φ(z,−1,c)` | `1`; `1/(1−z)`; `c/(1−z)+z/(1−z)²` | ok |
| §4.8 sign | `a=½`, `s=2` | `expZeta=zΦ(−1,2,1)=−π²/12`, `Φ(−1,2,1)=+π²/12` | ok |
| §4.13 constants | `k=2,3` | `Σ(j+1)²x^j=(1+x)/(1−x)³`; `a(2)=1/ζ(2)`; `g(2)=1/12`; `g(3)=2/(6·24·120)=1/8640=42/9!`; `p=2,k=2`: `3/4` | ok |
| §5.1 table | `ψ₁,ψ₋₁,ψ₂,ψ₋₂` at `1,3,5,7` | `(1,1,1,1),(1,−1,1,−1),(1,−1,−1,1),(1,1,−1,−1)`; `Σ_η ψ_iψ_j=4δ_ij` | ok (blomer prints the wrong sign rule) |
| `quadraticReciprocity` | `(ψ₁,ψ₁;ψ₁,ψ₁)`, `(ψ₁,ψ₁;ψ₋₁,ψ₋₁)`, `(ψ₁,ψ₁;ψ₁,ψ₋₁)` | `8/16=½`, `−8/16=−½`, `½` = blomer (32) row 1 cols 1,6,2; orthogonality gives `Σ_(ρ,ρ′)Aρ(d)ρ′(n)=ψ(n)ψ′(d)(−1)^((d−1)(n−1)/4)` | ok |
| swap equation direction | `Z(w,s;ρ,ρ′)` | `=ζ₂Σ(n/d)ρ(d)ρ′(n)n^(−s)d^(−w)` matches Lean `ρ(2η+1)ρ′(2ν+1)` placement | ok |
| `quadraticReflectionFactors` | `ψ(5)`, `ψ(−1)`, `η=0..3` | `q=8` iff `ψ∈{ψ₂,ψ₋₂}`; `q=1` iff `(ψ₁,η≡1(4))` or `(ψ₋₁,η≡3(4))`; `κ=0,1,0,1`; `e=+1,−1,−1,+1` = Kronecker `(D/2)` for `D=d₀,−d₀` at `d₀≡1,3,5,7` | ok |
| reflection ratio `r` | primitive FE `Λ(s)=Λ(1−s)` | `L(s)=(q/π)^(½−s)Γ((1−s+κ)/2)/Γ((s+κ)/2)L(1−s)`; deleted factor `(1−e2^(−s))/(1−e2^(s−1))` | ok |
| reflection block | `(29)` expansion | `Z(s,w)` and `Z(1−s,s+w−½)` have the same `d₀`-summand up to `r_(ψ,η(d₀))(s)`; `Σ_ρ′(¼Σ_ηψ′(η)r_ηρ′(η))ρ′(d₀)=ψ′(d₀)r_(η(d₀))` | ok |
| §5.23/§5.26 Checks | `r_(ψ₂,η)(½)`, `r_(ψ₋₂,η)(0)`, `B(0)[(1,0),(1,0)]` | `1`; `√8/π`; `¼(2/π+4/(3π)+2/π+0)=4/(3π)` | ok |
| §5.30x twelve-gon | explicit tube inequalities | `R₆` complement = closed 12-gon with the listed vertices; max `x²+y²=9/4≤3`; `(2,2)∈B₀`, `(−2,−2)∈B₄∖B₃`, `(0,0)∉B₅` | ok (= blomer line 547–548) |
| `quadratic_large_sieve` Checks | `a₁=1`; `M=1,N=3` | count of odd squarefree `m≤M`; `|1−1|²=0`, `|1+1|²=4` | ok (= hb95 Thm 1 line 189–201) |
| `quadratic_fourth_moment` | `σ=½`, `σ=1` | `Q(1+|t|)`, `Q+1`; `χ=1` excluded (pole at `t=0,σ=1`) | ok (= hb95 Thm 2 line 257–261) |
| §5.4 Checks | `u³−v³`, `diag(2,1)`, unipotent, `uv(u−v)`, `λI` | `P=−27`; `4u³−v³/2`, `P=−108=2²(−27)`; `−3u²v−3uv²−v³`, `P=−27`; `P=1`; `λf`, `λ⁴P` | ok |
| §5.5/§5.6 traces | Wood table (1) | `Tr(ω)=b`, `Tr(θ)=−c` ⇒ trace-divisible iff `b,c∈3O`; `uv(u−v)`: `b=1,c=−1` fails; `u³−v³` holds | ok (wood11msp line 216–218) |
| §5.8 density | prime `p` | `(p−1)[C(p+1,3)+(p+1)(p²−p)/2+(p³−p)/3]/p⁴=(1−p⁻¹)(1−p⁻²)` | ok |
| §5.10a Pfaffian | pairing matrix | `Pf=a₁₂a₃₄−a₁₃a₂₄+a₁₄a₂₃=−1/3` ⇒ self-dual `dx=|3|⁻¹∏dx_j`; `b_F` with `dx(O⁴)=1` is `(1−q⁻¹)(1−q⁻²)` | ok (dw86 lines 483, 512–514) |
| §5.19 sine matrix | `s=½`, `s=¼`, `r₁=r₂=1` | off-diagonal `3/2`, `1/2`; complex `3/4`; diagonal at `¼` is `½`; product `9/8` | ok (loww (3.1) line 599–602) |
| §5.21q residues | `u=2`, `u=5/3` from §5.21p | `[Φ̂(0)/ρ₀+Σ₂(Φ̂)]/2`; `Σ₁(Φ̂)/6` | ok |
| §5.21/§5.24 vs loww Prop 3.7 | residues, FE, `A_F`, `B_F` | `A_F(1+3^(−r_α−r₂))`, `B_F3^(−r_α/2)`; prefactor `(3^(6s−2)π^(−4s)Γ(s)²Γ(s−⅙)Γ(s+⅙))^n D^(4s−2)` | ok (loww lines 597–631) |
| §5.28/§5.28b exponents | `σ=3/2`, `σ=−½` | `D^(½+ε)`; `D^(9/2+ε)(1+|t|)^(4n+ε)`; per real place `Γ`-decay `e^(−2π|t|)` vs `sin(2πs)` growth, `|t|^(n(2−4σ))`, `D^(5/2−4σ+ε)` | ok (loww Lemma 3.11 line 697–716) |
| §5.27 | `n≥2` | order of `c_(αβ)` at 1 is `n`, dual pole ≤1 ⇒ `ξ(0)` order ≥`n−1` | ok |
| §6.2/§6.10/`critical_scaling_measure_unique` law | `q=2`, `E={ord_p=k}` | `μ(pE)=p^(−β)μ(E)` ⇒ `μ(qE)=q^(−β)μ(E)` ⇔ `map(q•)μ=q^βμ` = nesh00 (1β) | ok |
| §6.3 polynomials | `k=1,2,3` | `P₂=X²−¼`, `P₃=X³−X/4`, `P₄=X⁴−X²/3+1/48` | ok (cm (3.92)) |
| `firstEisenstein` and §6.26a | `a=0,½,⅓`; `N=2,3` | `0`; `0`; `−e(⅓)/6+e(⅔)/6`; `Σ(j/N−½)ζ^j=(ζ+1)/(2(ζ−1))` checked at `ζ=−1,ω` | ok (cm (3.100)–(3.101)) |
| §6.31/§6.37c | `e_(2,⅓)`, `π₂` | `(e(⅓)+e(⅔)−11)/36`; `3+2Σ_(4a=0)e_(2,a)=(1+e(½))/2=π₂` | ok |
| §6.37c/§6.37d | leading coefficient, `Σ_jP_k(z_j)` | `2p^(b−1)(p−1)+p^b(1−p)=−p^(b−1)(p²−3p+2)`, zero at `p=2`; `γ_k(2^k−2+N^k−2^k+1)=(N^k−1)γ_k` | ok |
| §6.18/§6.21a relations in `π_u` | `x′₂x₂`, `x₂x′₂`, `(f′)`, `(g′)`, `(h′)` at `m=4,n=2` | `2ε_k`; `2[2|k]ε_k=π(1+e(½))ε_k`; `n[n|k]e^(2πi(k/n)uγ)ε_k` both sides; `e(γ)μ_n=μ_ne(nγ)`; `x′₄x₂=2x′₂` | ok (bc95 Prop 18 lines 730–739) |
| §6.22 dynamics and KMS orientation | `σ_z(x_n)=n^(iz)x_n`; `f=x′₂,g=x₂` | `L/R=a⁻¹`; `φ(x′₂σ_(iβ)x₂)=2^(1−β)=φ(x₂x′₂)`; `σ_(−iβ)` gives `2^(1+β)` | ok (cm (3.60),(3.71)) |
| §6.29/§6.33 base state | `β` | `2^(1−β)=1` iff `β=1`; `φ_base(x₂x′₂)=1`, `φ_base(μ₂μ₂*)=½` | ok |
| §6.40/§6.50 boundary value | `e(½)`, `β≤1` vs Gibbs | `2^(−β)(1−2^(β−1))/(½)=2^(1−β)−1=ζ(β)⁻¹Σ(−1)^k k^(−β)` | ok (cm (3.138),(3.139)) |
| §6.5/§6.42b derivatives | `q=2,β=1`; swap `(0,1)→(1,0)` | `μ(2Ẑ)=½`, density of `2•` is `2`; target/source `(q/p)^β`, inverse `(p/q)^β` | ok |
| §6.48a/§6.48b | `β>1` | `μ(Ẑ^×)=∏(1−p^(−β))=1/ζ(β)`; `μ_ν(Ẑ)=ζ(β)⁻¹Σ_n n^(−β)=1` (non-integral `q` contribute 0); `p_*μ_ν=p^βμ_ν` | ok |
| §6.49a tail | `a` with `‖a‖≤1` | `|φ_β(a)−φ_∞(a)|≤(1−ζ⁻¹)+ζ⁻¹(ζ−1)=2(ζ−1)/ζ` | ok |
| §6.47 intertwining | `τ`, `v=χ(τ)` | `φ_(∞,u)∘θ_v=φ_(∞,uv)`; `τ(e^(2πiuγ))=e^(2πiχ(τ)uγ)` | ok |
| §6.36b | `M₂(ℂ)`, trivial dynamics | `φ(E₀₁E₁₀)=1≠0=φ(E₁₀E₀₁)` | ok |

Sources checked at their locators this round (cache ids in parentheses; `cm` printed = PDF−22, `bc95` printed = PDF+410 (OCR), `dw86` printed = PDF+25 (OCR), `wood11msp` printed = PDF+1068): ll1 (c89fc796) §1 (1.1)–(1.4) lines 36–67, Theorem 2.3 p.8 lines 331–341, Lemma 3.3 (3.16)–(3.20) lines 486–504, Lemma 3.4 (3.28) line 602–606, proof of Theorem 2.1 (3.36)–(3.37) lines 692–715; ll2 (f249ec6b) Theorem 2.1 (2.7)–(2.10) lines 213–225, Lemma 3.1 (3.4)–(3.5) lines 352–357, proof pp.8–10 lines 377–395; blomer (3f361646, arXiv v1) (1) line 50, (7)–(14) lines 175–235, Lemma 2 and (27)–(36) lines 388–555, twelve-gon line 547–548; nesh00 (0bb0f823) read in full: (1β) line 36, density line 49–52, Proposition and proof lines 55–116, Corollary line 117–127; nesh09 (6ca9d4a4) header; cm (4154ad00) (3.61)–(3.70) lines 20959–20996, Definitions 3.4–3.7 lines 20389–20454, Proposition 3.8 lines 20466–20495, (3.19) line 20569, Lemma 3.24 (3.60) line 20928, (3.71)–(3.75) lines 21002–21037, Lemmas 3.27–3.28 lines 21129–21211, Theorem 3.30 lines 21290–21296, Theorem 3.32 and (3.133)–(3.142) lines 21629–21684; bc95 (376e00d0) Proposition 3 and 4 p.414 lines 118–146, Theorem 5 p.415 lines 172–179, Proposition 18 and proof pp.431–433 lines 730–836, Proposition 19 and (8)–(10) p.434 lines 839–872, Theorem 25 p.442 lines 1127–1150; laca (b53d1cd8) Theorem 2.1.1 lines 221–250, Lemma 2.1.3 line 256, Theorem 2.2.1 lines 310–322, Proposition 3.2.1 lines 407–413, Corollary 3.2.2 line 420; loww (fad65511) Lemma 2.5 line 393–399, Proposition 3.4 and Lemma 3.5 lines 535–564, (3.1) line 599–602, Proposition 3.7 lines 606–636, Lemmas 3.8–3.11 lines 643–718; dw86 (2d6aa0bb) §1 pp.29–31 lines 116–232, (2.1)–(2.4) and `b_K` lines 450–517, Proposition 3.1 line 529, Proposition 3.2 line 604, Theorem 3.1 and proof lines 641–716, Theorem 6.1 line 1662–1682, Theorem 6.2 lines 1774–1802; wood11msp (a8dd1475) Theorem 2.1 lines 187–195, table (1) lines 216–218; hb95 (50e42d8e) Theorem 1 and Corollaries 1–4 lines 189–254, Theorem 2 lines 257–266; jss (1f0f399f) (1.3) line 107, (8.4)–(8.8) lines 1545–1586, `Z_I(1)` line 1599; nemes (2477b121) (1.8) line 102, (1.10) line 126–131.

Cross-roadmap citations resolved: VonNeumannAlgebras #889 head dee8088: V10.Hecke (line 2494: `(a⋆b)(g)=Σ_(Hk)a(gk⁻¹)b(k)`, `λ`, Schur bound, `f*(g)=conj f(g⁻¹)`, `T_f`, `I T_f I⁻¹=λ(f∨)`, `δ_H`, `Δ`, `J`), V10.AffineHecke (2577: slope coordinates, `M(α,b)`, `L=m,R=n`, `λ_BC`/`ρ_BC` and both `s_n` transports, `N=L∞(A_f,m)⋊Q`, `p=1_Ẑ`, `ψ`, moments `δ_(m,n)δ_(r,0)/n`, normal form `√(mn)s_m e(nb)s_n*`, relations, central support 1), V10.AffineAP (2652), V10.AffineType (2698: return lemma, essential freeness, ergodicity, no invariant measure, type III for `pNp` via V6.FullCornerType, `β=1` state identification, `σ_t^ψ=σ_(−t)^BC`), V10.ModularTheory (2364), V10.KMS (2459), V8 crossed-product convention (2060) and measure-to-type criterion (2126–2127), V11 CentralizerCornerRestriction (2814) and the `III₁`/`[0,∞)` alternatives (3076), V0 `PositiveLinearMap.GNS`/`gnsStarAlgHom` (155, 294; Mathlib `Analysis/CStarAlgebra/GelfandNaimarkSegal.lean`); the other open VonNeumannAlgebras pull request (#1041, head d9e53b3e) carries none of the V10.* labels, so the citations resolve only at #889. OperatorAlgebraDynamics D1/D2/D7 on main (lines 75, 143, 168 expectation, 178 amenable full=reduced, 470–537 entire elements, strip, `β→∞` ground states). AmenableGroups Layer 6 (391–410). LFunctions Layers 5–6 (929, 1100). ClassFieldTheory on main (Layers 6–12). ComplexKahlerGeometry K5a (570 ff.; H² domain and compact resolvent 1077, smooth eigenbasis 1159). DifferentialGeometry Layer 12 (910–933; `laplaceBeltrami := divergence ∘ mgradient`, `Δ‖x‖²=2n`, so the roadmap's `A=−div grad` is its negative, as stated). FuchsianOrbifolds Layers 0–2, 4 (193–310; Gauss–Bonnet area 239, 304). UniversalCovers Stages 0, 2 (Completed, 63, 98). GlobalNumberFields Layers 4, 10 (418, 531). ProfiniteArithmetic Layer 0 (223). AdelicAlgebraicGroups #792: Layer 0 (561, `vol(𝒪_v)=1` at 209), §2.2 (1658; inversion bullet 1811), §3.4 (3141; Siegel cover bullet 3174). AutomorphicLFunctionsAndLocalFactors #924: AL.0 (294), AL.1 (879), AL.1.5.3/AL.1.6.2/AL.2.4.1 named at 4, 12, 882–883. AutomorphicSpectralTheory #925: §§1.2–1.5 (914–969), Layer 2 (1528), §4.7 (2392), §6.17 (3217). AnalyticNumberTheoryPartI #1126: Prerequisites and boundaries (16), Exact supplier contracts (50), §0.23a (504), §2.5 (994), §2.15 (1183), §2.31e (1449), §3.1 (1787), §3.23 with `BBRFiniteInput` (2187–2191), §3.24 (2563). ZerosOfLFunctions #253 Layer 1 (484; interface 105–106).

Pinned declarations opened: Mathlib `Cubic.discr` (`Algebra/CubicDiscriminant.lean:461`), `HeckeCoset`/`HeckeCosetModule`/`IsHeckeTriple.of_diagonal` (`NumberTheory/HeckeRing/Defs.lean`), `hasSum_hurwitzZeta_of_one_lt_re` (`LSeries/HurwitzZeta.lean:73`, `a ∈ Icc 0 1`), `hasSum_expZeta_of_one_lt_re`, `differentiableAt_hurwitzZeta_sub_one_div`, `hurwitzZeta_residue_one`, `LFunction_eq_LSeries`, `LFunction_changeLevel`, `completedLFunction_one_sub` (`DirichletContinuation.lean:283`), `integral_cpow_mul_exp_neg_mul_Ioi`, `PhragmenLindelof.vertical_strip` (`Analysis/Complex/PhragmenLindelof.lean:275`), `Measure.infinitePi` (`Probability/ProductMeasure.lean`), `jacobiSym.quadratic_reciprocity` (`JacobiSymbol.lean:423`), `Polynomial.bernoulli_generating_function`, `bernoulli_one`, `bernoulli_eval_one`, `mul_esymm_eq_sum`, `sum_eq_iff_sum_mul_moebius_eq`, `zeta_eq_tsum_one_div_nat_cpow`, `NumberField.finite_of_discr_bdd`, `differentiable_one_div_Gamma`, `one_div_Gamma_eq_self_mul_one_div_Gamma_add_one`, `hasFDerivAt_integral_of_dominated_loc_of_lip`, `hasDerivAt_integral_of_dominated_loc_of_deriv_le`, `cpow_def_of_ne_zero`, and `FiniteAdeleRing`'s topology instance (`DedekindDomain/FiniteAdeleRing.lean:100`, the restricted-product topology, so `borel` in `critical_scaling_measure_unique` is the Radon-measure Borel structure); Tau Ceti `HeckeCoset.degree_eq_relIndex` (`HeckeRing/Basic.lean:907`), `HeckeCosetModule.single` (968), `single_mul_single`/`mul_single_single` (`Multiplication.lean:115,124`), `instRingHeckeRing` (`Associativity.lean:484`), `mul_comm_of_antiInvolution` (`Commutativity.lean:459`), `MvPolynomial.linearSubst`/`linearSubstRep` (`LinearSubst.lean:67,231`), `Cubic.toPoly_discr`, `zHat.toZMod`/`unitsLift`/`continuous_unitsLift`/`isUnit_iff_component`/`ringEquivPiPadicInt`/`unitsEquivPiPadicInt`, `IsPositiveDefiniteSub.gnsSpace`/`gnsRepresentation`, `LinearMap.exists_isFiniteMeasure_integral_characterSpace_eq`, and the seven `TauCeti.UniversalCover.*` names.

Ownership: `roadmaps grep` on the 437 open heads and main finds the Bost–Connes system only here and in VonNeumannAlgebras #889 (deferred to), the Barnes G-function, the double Dirichlet series and the Selberg zeta determinant only here, the quadratic large sieve consumed by SieveMethodsAndPrimePatterns #1495 (order 251) and ArithmeticStatistics parts, binary-cubic forms also in ArithmeticStatisticsPartI–VI (#1171–#1176, orders ≥130), which are consumers of §§5.4–5.6 in the merge order. Ownership against open pull requests whose files the brief does not give was checked through `roadmaps grep` only.

## Not verifiable

- blomer: the cache is arXiv 0907.4867v1; the README cites printed Compositio pages 356–364. Equation numbers and the twelve-gon were verified; the printed page numbers were not.
- dw86 and bc95 are OCR of image-only scans: the display of DW Theorem 6.1 (line 1664–1670) and BC's (7) (line 826–827, the upper-right entry) are too degraded to read sign by sign; R01 rests on Theorem 3.1's printed statement (line 643), its proof (lines 662–668, 713–716) and LOWW's clean Lemma 3.9.
- Not re-read this round (outside the sample): Shintani [104], Igusa 1984, Keating–Snaith [100], Hounie [110], Diaconu–Goldfeld–Hoffstein [111], Helffer [126], Hiai [127], Le Masson [119], Marklof [121], Zagier [118], Sarnak [115], Adamchik [97], Lerch III [94]/[101], Wright 1985 [103]; the §§4.13–4.14, 5.3a–5.3e, 5.21a–5.21r, 6.12a–6.12e locators were not reopened (the previous review read Marklof, Zagier, Wright, Adamchik and Lerch III).
- jss's torsion-free constant (R01 of the previous round) was re-derived, not read in Sarnak.

## Source issues

- **Error** in jss at (1.3), (8.6) and (8.8), printed pp.3 and 28: the source says the torsion-free constant is `2C_ρ(X)(2ζ′(−1)−log√2π)`; it should be `2C_ρ(X)(2ζ′(−1)−log√2π−1/4)`, as the large-`s` expansion of `log det(Δ+s(s−1))` against (8.4) forces; affects a stated result.
- **Misprint** in nemes at Theorem 1.1 (1.8), p.2: the source says `R_N(z)=−[(2N+1)(2N+2)]⁻¹∫(B_(2N+2)+B_(2N+2)({t}))(t+z)^(−2N−1)dt`; it should be `+[(2N+1)(2N+2)]⁻¹∫(B_(2N+2)−B_(2N+2)({t}))(t+z)^(−2N−1)dt`, since for `N=1`, `z>0` the printed form has the wrong sign and magnitude (`+1/(360z²)` versus the first omitted term `−1/(720z²)`); affects a stated result.
- **Misprint** in ll2 at (2.6), p.5: the source says `L±(s,a,c)=ζ(s,a,c)±e^(2πia)ζ(s,1−a,1−c)`; it should be `e^(−2πia)`, as in (2.7), (2.9) and Part I (3.17); affects nothing.
- **Misprint** in blomer at §2.1, printed p.358 (arXiv lines 196–198): the source says `ψ₂(n)=1` iff `n≡3,5 (mod 8)` and `ψ₋₂(n)=1` iff `n≡5,7`; it should be `=−1` in both (the printed rule is not a character); affects nothing.
- **Misprint** in blomer at (11), p.358 (arXiv lines 215–216): the second line of `δ₀` repeats the first line's conditions; it should read `4d₀` for `ψ=ψ₁, d≡3 (4)` or `ψ=ψ₋₁, d≡1 (4)`; affects nothing.
- **Error** in loww at Lemma 3.11, p.14: the source states the bound for every `t∈ℝ` and `−1/2≤σ≤3/2`; it fails at `s=1` and `s=5/6` where `ξ_(k,α)` has poles (the proof applies Phragmén–Lindelöf to `(s−1)(s−5/6)(s+1)²ξ`); it should exclude neighbourhoods of the two poles; affects a stated result.
