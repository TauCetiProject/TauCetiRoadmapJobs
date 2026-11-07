# Design report: DESIGN-FourierDeligneTransform

**Deliverables.** `packages/FourierDeligneTransform/design/README.md` (six layers, 45 planned targets), `packages/FourierDeligneTransform/design/plan.json` (the same plan as data, validated: unique ids, every definition with at least three tests, every prerequisite of an allowed kind, every `target:` and `gap:` reference resolving), and `packages/FourierDeligneTransform/sources.toml` (updated `cited_for` and locators; `sources check`: 0 problems). No `Suggested.lean` is written at the design stage, so the README backticks no Lean name of this roadmap's own; proposed names are in `plan.json`.

## What the design covers

- **Layer 0.** Nondegenerate additive characters `ψ : 𝔽_p → Λ^×` (`ψ(1) − 1` a unit) into arbitrary commutative rings, and the finite Fourier transform of `Λ`-valued functions with inversion, Plancherel, convolution, linear-map, translation and inverse-character identities.
- **Layer 1.** Kernel transforms `Φ_𝒦` on `D⁺` over a qcqs base with kernels of finite Tor amplitude, base change, relative Künneth, the composition isomorphism with naturality, associativity, unit and base-change coherence (which meets SheafConvolutionOnAbelianVarieties' `gap:kernel-composition-coherence`), constructibility, trace functions and the function–sheaf dictionary.
- **Layer 2.** Lang torsors of smooth connected commutative group schemes over `𝔽_q` (not necessarily affine), character sheaves with all laws, the trace theorem, vanishing of cohomology under a unit-ideal hypothesis, Artin–Schreier and Kummer sheaves, and `ℒ_ψ(f)` on the line.
- **Layer 3.** The transform on a vector bundle over any qcqs `𝔽_p`-scheme: `FT_! = FT_*` through universal local acyclicity at infinity, inversion as a named isomorphism, duality, base change and linear functoriality, external products, convolution, Plancherel, sub-bundles, translation, quadratic forms, group actions, coefficients and realization, the trace identity and the Frobenius exchange.
- **Layer 4.** Perverse `t`-exactness over a field (finite, `O_E` with both perversities `p` and `p⁺`, `E`, `ℚ̄_ℓ`) and the equivalence of hearts.
- **Layer 5.** On the line over a perfect field: local invariants with nonnegative signs, the Euler–Poincaré formula, the slope-one twisting formula and lemma, types of simple perverse sheaves and their exchange, Fourier sheaves (ESDE 7.3.8) and the Class (1) autoequivalence, the Kummer transform and Gauss-sum lines, Laumon's local-monodromy theorem (rank formulas, lisse locus, vanishing cycles at finite points and at `∞'`, the sequence at `0'`), and the three local Fourier transforms with comparison, concentration on globalizable modules and tame values.

Every final target T1–T5 of `target.md` is planned, with the exceptions recorded below.

## Placement and the main judgement

`target.md` recommended placing this roadmap before DeligneWeightsAndPurity (merge order line 78) so that DeligneWeightsAndPurity could run Laumon's proof of the curve estimate, and asked for perverse Artin vanishing and smooth-pullback exactness (BBD 4.1.1–4.1.2, 4.2.5) to be moved into EtaleCohomologyFoundations §F.8. I did not adopt that placement:

- T4 and the perverse parts of T5 need relative perverse Artin vanishing, smooth-pullback exactness and the classification of simple perverse sheaves. These are planned, at full generality, by EtaleDualityAndPerverseSheaves §§2.7 and 2.10 (line 96); EtaleCohomologyFoundations §F.8 on main has only absolute affine vanishing, and its open revision (#1891) does not add them either.
- Planning them here (moving them down) would duplicate EtaleDualityAndPerverseSheaves §2.7 in a roadmap that is not their natural owner; gapping them to EtaleCohomologyFoundations would make Layers 4–5 depend on an ownership move no roadmap plans.
- DeligneWeightsAndPurity at its head (#929, read through `roadmaps show`) plans the curve estimate by square improvement (its Layer 6) and consumes no Fourier input, so no planned consumer is cut off.

The design therefore cites EtaleDualityAndPerverseSheaves §§2.7, 2.10 and 5.2, and the gate places it right after EtaleDualityAndPerverseSheaves. Consequence: DeligneWeightsAndPurity and HypergeometricMotives (line 91) cannot consume this roadmap. If maintainers want Laumon's route for DeligneWeightsAndPurity, the perverse statements must first move to an owner before line 78; that is a decision for those roadmaps' owners and is not made here.

## Corrections to `target.md` found by the pass

1. **Lang convention.** `target.md` combines the Lang map `x − F(x)` with the push-out along `χ^{−1}`. On the fibre over `x ∈ G(𝔽_q)` of `id − F`, arithmetic Frobenius is translation by `−x`, so that combination has trace `χ(N x)^{−1}`. Laumon pushes out along `χ^{−1}` with `F − id` (multiplicatively `x^{−1}F(x)`, LAU87 lines 306–312); Katz uses `id − F` with `χ` (KATZ01 lines 418–432). The design fixes `L = F − id` and the `χ`-isotypic part, with the witness `𝔾_a/𝔽_3`, `x = 1`: trace `ψ(1)`, not `ψ(−1) = ψ(1)²`.
2. **Linear-map shift.** `target.md` writes `FT(Rf_!K) ≅ f^{∨*}FT(K)[r₁ − r₂]`. The correct shift is `[r₂ − r₁]`. Witness: `E_1 = O_S`, `E_2 = 0`, `K = i_{0*}Λ` gives `Λ_S = σ'^*(Λ[1])[s]`, so `s = −1 = r₂ − r₁`.
3. **Duality character.** The right side is `FT_{ψ^{−1}}`, since `ℒ_ψ^∨ = ℒ_{ψ^{−1}}` (KL85 lines 390–391). Witness: `K = i_{a*}Λ`, `a ∈ 𝔽_3^×`: the dual of `ℒ_ψ(a x')[1]` has trace `ψ(−a x')`.
4. **Local Fourier transforms.** Exactness and concentration in one degree for every module (LAU87 (2.4.2.2)) are proved through the Gabber–Katz canonical extension (LAU87 (2.2.2.2)), which no roadmap owns. The design proves concentration for modules that are local monodromies of perverse sheaves on the line, hence for all tame modules over finite `k`, together with the tame values (LAU87 (2.5.3.1)). The general statement goes with stationary phase into the proposed continuation.
5. **Sign of local invariants.** LAU87 defines `r(K)`, `a_x(K)` by additivity from sheaves, so they are nonpositive on perverse sheaves, and its inequalities are stated for those signs. The design uses the nonnegative negatives and restates every formula of LAU87 (2.2.1.1), (2.2.1.2) and (2.3.1.1)–(2.3.1.3) accordingly (computed rows below).
6. **Kernel Tor amplitude.** Kernel transforms on `D⁺` need a kernel of finite Tor amplitude; without it `Φ` leaves `D⁺` (row K2).
7. **Euler–Poincaré source.** `target.md` routed T5(d) through InverseGaloisAndArithmeticFundamentalGroups at finite level. With the placement above the design uses EtaleDualityAndPerverseSheaves §5.2 (`curveEulerPoincareSwan`, finite coefficient fields and `ℚ̄_ℓ`). InverseGaloisAndArithmeticFundamentalGroups' `𝔽_ℓ` formula, in its §IG.5.8, is not needed.

## Adversarial-pass table

| # | Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|---|
| C1 | Nondegeneracy `ψ(1)−1 ∈ Λ^×` (0.1) | `ℤ/7`, `ψ(1)=2`; `ℤ/7×ℤ/7`, `(2,1)`; `ℤ/5`, `p=3`; `ℤ/49`, `18` | `2³=8≡1`, `Σψ=7≡0`; `Σψ=(0,3)`; no order-3 unit; `18³=5832=119·49+1`, `17` unit | nontrivial ≠ nondegenerate for non-local `Λ` | condition stated as a unit condition; product ring as non-example |
| C2 | Orthogonality over `k` (0.1.1) | `k=𝔽_3`, `y=1`, `Λ=ℤ/7` | `1+2+4=7≡0` | holds | none |
| C3 | Characters of `k` are `ψ(Tr(cx))` | `Λ=Λ_1×Λ_2` | pair `(ψ_1(c_1x), ψ_2(c_2x))`, `c_1≠c_2`, not of that form | false for disconnected `Λ` | restricted to connected `Spec Λ` |
| F1 | Finite inversion `𝔉𝔉t=|W|t(−·)` (0.2.1) | `W=𝔽_3`, `t=1_{1}`, `Λ=ℤ/7` | `𝔉t=(1,2,4)`; `𝔉𝔉t(2)=17≡3`, `𝔉𝔉t(1)=21≡0` | sign `t(−w)` confirmed | none |
| F2 | Comparison with `ZMod.dft` | `N=p=3`, `Φ=1_{1}` | `dft Φ k = stdAddChar(−k)`, `𝔉Φ(k)=stdAddChar(k)` | differ by `k↦−k` | stated as `𝔉Φ(k)=dft Φ(−k)` |
| F3 | Quadratic Gauss sum (Layer 0 example) | `k=𝔽_5`, `Λ=ℤ/11`, `ψ(1)=3` | `Σψ(w²)=1+6+162=169≡4`; `4²=16≡5` | consistent with `g²=(−1/5)·5` | none |
| K1 | `Φ_𝒦`, identity kernel | `X=Y=S`, `𝒦=Λ` | `Φ=id`; for `X=𝔸¹`, `Y=pt`: `Φ(Λ)=Λ(−1)[−2]` vs `Rp_*`: `Λ` | compact support is the right functor | none |
| K2 | `Φ_𝒦` preserves `D⁺` | `Λ=ℤ/4`, `𝒦=ℤ/2` on a point | `ℤ/2⊗^Lℤ/2` has `ℤ/2` in all degrees `≤0` | fails without Tor bound | finite Tor amplitude hypothesis |
| K3 | Graph kernels | `i:{0}→𝔸¹` | `Φ_{Γ_i}(Λ)=i_*Λ`, `Φ_{(i,id)}(Λ_{𝔸¹})=Λ` | holds | none |
| K4 | Composition coherence (1.2.1) | `f=g=id` graph kernels; `Δ_!Λ`; `Λ[1]∘Λ[1]` | composite is `Rg_!Rf_!≅R(gf)_!`; unitor identity; `[2]` with Koszul sign | holds | none |
| T1 | Trace function normalization (1.4) | `Λ(−1)[−2]`, `Λ[1]` on `Spec 𝔽_q` | `t=q`, `t=−1`; arithmetic Frobenius would give `q^{−1}` | geometric Frobenius confirmed | none |
| T2 | Lefschetz number vs trace on cohomology | `[ℤ/4 —2→ ℤ/4]` | `t=0`, `H⁰=H¹=ℤ/2` | perfect-complex trace is the right notion | none |
| T3 | Fubini (1.4.1) | `Λ_{𝔸¹}→pt` | `Σ_{x∈𝔽_q}1=q=t_{Λ(−1)[−2]}` | holds | none |
| L1 | Lang torsor (2.1.1) | `𝔾_a`, `𝔾_m`, constant `ℤ/2`, `G=0` | `t^q−t`, kernel `𝔽_q`; `t^{q−1}`, `μ_{q−1}`; `L=0` not onto; identity | connectedness needed; smoothness kept | none |
| L2 | Frobenius on fibre | `𝔾_a/𝔽_3`, `x=1`, `n=1`; general `n` | arithmetic `t↦t+1`; `Fⁿt=t+N(x)` | geometric Frobenius is translation by `−N(x)` | convention fixed (correction 1) |
| L3 | Trace of `ℒ_χ` (2.3) | `𝔾_a/𝔽_3`, `ℤ/7`, `ψ(1)=2`; `𝔽_9`, `x=i`; `𝔾_m/𝔽_5`, `n=2` | `2` vs `ψ(−1)=4`; `Tr(i)=i+i³=0`; norm `x^6` onto | `χ∘N` confirmed | none |
| L4 | Quadratic Kummer sheaf | `𝔾_m/𝔽_5`, `Λ=ℤ/3` | traces `+1` at `1,4`, `−1` at `2,3` | matches `t²=x` | none |
| L5 | Vanishing (2.4) | `ℒ_ψ` on `𝔸¹`; trivial `χ`; `(2,1)` into `ℤ/7×ℤ/7`; quadratic `χ` on `𝔾_m/𝔽_5` | `0`; `H²_c=Λ(−1)`; `(0,(ℤ/7)(−1)[−2])`; `Σχ=1−1−1+1=0` | unit-ideal hypothesis necessary | stated as unit-ideal hypothesis |
| L6 | `ℒ_ψ(f^p)≅ℒ_ψ(f)`, coboundary | `x²−x` vs `x²−x³` on `𝔸¹_{𝔽_3}` | differ by `x³−x`, trivial; `Tr(x³)=Tr(x)` | holds | none |
| L7 | `j_!ℒ_χ=Rj_*ℒ_χ` (2.6) | trivial `χ`; sign `χ` over `ℂ` into `ℤ/3` | `(Rj_*Λ)_0=Λ⊕Λ(−1)[−1]`; `χ(−1)−1=1` unit | hypothesis `χ(ζ)−1` unit needed | none |
| L8 | `ℒ_ψ(f)` on the line (2.7) | `d=1`; `d=2`, `p=3`; `f=x^p` | rank `0`; rank `1`, trace `−(1+2ψ(1))`; break `1`, not `p` | `p∤d` needed | none |
| L9 | Layer 2 example | `𝔽_5`, `ℤ/11`, `ψ(1)=3`, `x²` | `H¹_c` trace `−169≡−4≡7` | consistent with F3 | none |
| P1 | Pairing (3.1) | `r=0`, `r=1` | kernel `Λ_S`; `x x'` | holds | none |
| D1 | Definition of `FT` (3.2) | `r=0`; `i_{0*}Λ` on `𝔸¹_{𝔽_q}`; trivial `ψ` | identity; `Λ[1]`, trace `−1`; `π'^*Rπ_!K[r]` | normalization `[r]` confirmed | none |
| D2 | Conventions witness | `Λ_{𝔸¹}` | `FT=σ'_*Λ(−1)[−1]`; trace `−q` at `0'`, `0` elsewhere; `−Σ_xψ(xx')` gives `−q`, `0` | sign `(−1)^r` confirmed | none |
| A1 | `FT_!=FT_*` (3.3.1) | `Λ_V` on `𝔸¹_{k̄}`; trivial `ψ` | both `σ'_*Λ(−1)[−1]`, though the ordinary cohomology of the fibre at `0'` is `Λ[1]`; trivial `ψ`: `Λ(−1)[−1]` vs `Λ[1]` | nondegeneracy used; `Rpr'_*` is not fibrewise | Check reworded |
| A2 | AS decomposition in KL85 Lemme (2.4.2) | `p=2` | `f_*Λ=Λ⊕(j×1)_!ℒ_ψ(xy)`, `2` a unit | holds | none |
| I1 | `Rpr_!ℒ_ψ⟨,⟩=σ_*Λ(−r)[−2r]` (3.4) | fibre at `e≠0` via Künneth; zero fibre | `RΓ_c(𝔸¹,ℒ_ψ)⊗RΓ_c(𝔸^{r−1})=0`; `Λ(−r)[−2r]` | holds | input changed to the projective-bundle formula (§0.9), not smooth trace |
| I2 | Inversion (3.4.1) | `i_{0*}Λ`; `i_{a*}Λ`; trivial `ψ` | `i_{0*}Λ(−1)`, trace `q`; support `−a`; `Λ_{𝔸¹}(−1)` | `[−1]^*` and `(−r)` confirmed; no `[−2r]` | none |
| I3 | `Rπ'_!FT(K)≅σ^*K(−r)[−r]` | direct computation and via (1.2.2.4) | both give `σ^*K(−r)[−r]` | consistent | none |
| U1 | Duality (3.5) | `i_{a*}Λ`; `Λ_{𝔸¹}[1]`; `r=0` | `ℒ_{ψ^{−1}}(ax')(1)[1]`; `σ'_*Λ(1)` both sides; `D_S` | `ψ^{−1}` on the right | correction 3 |
| U2 | Linear maps (3.6) | `E_1=O`, `E_2=0`, `K=i_{0*}Λ` | `s=−1=r_2−r_1`; `r_1−r_2` gives `Λ_S[2]` | target sign wrong | correction 2 |
| U3 | Convolution, Plancherel (3.6) | `i_{a*}*i_{b*}`; `K_1=K_2=i_{0*}Λ` | `ℒ⟨a+b,·⟩[r]`; both sides of Plancherel `Λ(−1)`, trace `q` | holds | none |
| U4 | Sub-bundles (3.6) | `F=0`; `F=E` | `Λ_{E'}[r]`; `σ'_*Λ(−r)` | holds | none |
| U5 | Translation (3.6) | function check `Σ_xt(x−e)ψ⟨x,x'⟩` | `ψ⟨e,x'⟩𝔉t(x')` | holds for `τ_{e*}` | none |
| U6 | Quadratic forms (3.6) | `r=1`, `q=cx²`; `p=2` | `ψ(−x'²/c)Σψ(cy²)`; `[2]=0` | `p` odd needed | hypothesis added |
| R1 | Coefficient change (3.7) | `ℤ/49→ℤ/7`, `18↦4` | `4³=64≡1` | nondegenerate reduction | none |
| W1 | Trace identity, Frobenius exchange (3.8) | `Λ_{𝔸¹}`; `S_0=Spec 𝔽_q`, `r=0` | `−q`; identity | holds | exchange built from base change along `id×Spec(σ^{−1})` |
| X1 | `t`-exactness (4.1) | `i_{0*}Λ`, `Λ_{𝔸¹}`; `(ℤ/ℓ)_0[−1]` over `ℤ_ℓ`; trivial `ψ` | `Λ[1]`, `σ'_*Λ(−1)[−1]∈ᵖD^{≥1}`; `(ℤ/ℓ)_{𝔸¹}` in the `p⁺` heart only; `Λ(−1)` not perverse | both perversities for `O_E` | `p⁺` statement added |
| X2 | Hearts (4.2) | `0→i_{0*}Λ→j_!Λ[1]→Λ[1]→0`; `ℤ/49` | `0→Λ[1]→FT(j_!Λ[1])→i_{0'*}Λ(−1)→0`; `(ℤ/7)[1]⊂(ℤ/49)[1]` | holds | an earlier draft Check used `ℤ/4`, which has no nondegenerate `ψ`; replaced |
| V1 | Local invariants and Euler–Poincaré (5.1) | `i_{x*}Λ` on `ℙ¹`; `j_!ℒ_ψ(x)[1]`; Kummer | `a=1`, `χ=1=1−0`, unsigned `χ(X)rk−Σa` gives `−1`; `a_∞=2`, `χ=0`; `a_0=1` | the formula holds as `Σa−χ(X)rk` | correction 5 |
| V2 | Rank formulas (5.5) | `Λ[1]`, `i_{0*}Λ`, `ℒ_ψ(x²)[1]`, `j_!ℒ_χ[1]`, `ℒ_ψ(bx)[1]` | `rk(K')=0,1,1,1,0`; `rk_{0'}(K')=−1` for `Λ[1]` and `0` for Kummer; `rk_{−b}(K')=−1` for `ℒ_ψ(bx)[1]` | all match the known transforms | positive-sign restatement |
| V3 | Sequence at `0'` (5.5) | `Λ[1]`; `j_!ℒ_χ[1]` | `0→0→0→Λ(−1)→Λ(−1)→0`; `F'_{0'}≅V'_{χ^{−1}}⊗G(χ,ψ)` | consistent with 5.4 and 5.6 | none |
| S1 | Types (5.2) | `i_{0*}Λ`; constant `π^*F'[1]`; `ℒ_ψ(x)[1]` | `Λ[1]`; `i'_{0'*}F'(−1)`; skyscraper at `−1`, twist `(−1)` | type (T3) excludes `a'=0` as well | none |
| S2 | Fourier sheaves (5.3) | `Λ_{𝔸¹}`, `ℒ_ψ(x)`, `ℒ_ψ(x²)`, `j_!ℒ_χ` | not elementary; elementary but not Fourier; NFT `ℒ_ψ(−x'²/4)⊗H¹_c`; NFT rank `1` | holds | "irreducible Fourier ⇔ (T3)" restricted to `k̄` |
| G1 | Kummer transform (5.4) | trace over `𝔽_q`; `𝔽_5`, `𝔽_11`, `ψ(1)=3`, quadratic `χ` | `Σχ(x)ψ(xx')=χ^{−1}(x')g`; `g=3−9−27+81≡4`, `g²≡5=χ(−1)·5`; Mathlib `gaussSum` identities give `g(χ)g(χ^{−1})=χ(−1)q` | holds | none |
| G2 | `G(χ,ψ)^∨≅G(χ^{−1},ψ^{−1})(1)` | traces | `(−g)^{−1}` vs `−g(χ̄,ψ̄)q^{−1}`, equal because `g(χ,ψ)g(χ̄,ψ̄)=q` | holds | none |
| Q1 | Local Fourier transforms, tame values (5.6) | `Λ` at `(∞,0')` from `Λ[1]`; `Λ` at `(0,∞')` from `j_!Λ[1]`; Kummer at `(0,∞')` and `(∞,0')` from `j_!ℒ_χ[1]`, `j_!ℒ_{χ^{−1}}[1]` | `Λ(−1)`; `Λ`; `V'_χ⊗G(χ,ψ)`; `V'_χ⊗G(χ^{−1},ψ)` | consistent with 5.4 | none |
| Q2 | Sheaf domains in the definition | `ℒ(π/π')` | lives on `T×η'`, not on `η×T'` | the draft had the first two swapped | fixed |
| Q3 | Concentration for all tame `V` | `k` algebraically closed, `ℚ̄_ℓ`, infinite-order tame character | not a Kummer module of finite order | claim needs quasi-unipotence | restricted to finite `k` (LefschetzPencilsAndVanishingCycles §1.1) |
| Z1 | Class (1) autoequivalence (5.3.2) | `ℒ_ψ(x²)` | lisse with break `2`, transform lisse with break `2` | the non-stationary-phase route needs the slope-one twisting lemma | lemma added to 5.1 with a route through the upper ramification subquotient and Artin–Schreier theory; see the note below |

Note on Z1: ESDE §7.8 derives Class (1) from Laumon's stationary phase (ESDE lines 7345–7393). Without stationary phase the route needs the lemma that a nonzero slope-one module acquires a part of slope `< 1` after some twist `ℒ_ψ(a/π)`. This is the standard break-one decomposition. Its proof sketch in §5.1 uses the abelian exponent-`p` slope-one subquotient of inertia and the Artin–Schreier classification of ArithmeticGaloisRepresentations §3.7. None of the sources read states it as a numbered lemma, so a reviewer should check this step first.

## Context checks (standing hypotheses)

- Layer 3 uses `S` qcqs for `Rf_!`. Noetherian `S` is assumed exactly where `Dᵇ_ctf`, constructibility or duality is asserted (§§1.3, 3.5, 3.7).
- `ψ` nondegenerate is a standing hypothesis of Layer 3. It is used in §3.3 (the decomposition of the Artin–Schreier cover needs `p` invertible and all `ψ'` nondegenerate) and in §3.4.
- Perfectness of `k` is assumed in §2.7 and Layer 5, where Swan conductors need perfect residue fields (ArithmeticGaloisRepresentations' conductor setting); Layer 4 allows any field.
- Coefficients in Layer 5 are fields, as EtaleDualityAndPerverseSheaves §2.10 requires for the classification of simple objects.

## Duplication by object (pins and roadmaps)

- Mathlib at the pin has `AddChar`, `AddChar.IsPrimitive`, finite-field trace and norm, `ZMod.dft` (complex-valued only) and `gaussSum`. It has no `Λ`-valued finite Fourier transform for finite rings and no étale sheaf transform; the domain-only orthogonality `AddChar.sum_eq_zero_of_ne_one` is why §0.1 proves orthogonality itself.
- Tau Ceti at the pin has finite locally free sheaves with duals and Frobenius, and no character sheaves.
- On main and at the 459 open roadmap heads (`roadmaps grep` for Artin–Schreier sheaf, Kummer sheaf, Fourier–Deligne, local Fourier transform, Gabber–Katz, trace function), and in the board packages, no roadmap owns kernel transforms, character sheaves, the transform, trace functions as a carrier or local Fourier transforms. CharacterSumsOverFiniteFields, CongruenceSpectralGap, SheafConvolutionOnAbelianVarieties and KloostermanMomentsAndPotentialAutomorphy each say they import these objects from this roadmap or request them.
- The rank-one sheaf from a torsor and a character is planned in EtaleCohomologyFoundations' open revision (#1891). A revision is not a dependency, so the design states it as `gap:torsor-character-sheaf` with supplier EtaleCohomologyFoundations rather than planning it again. Lang's theorem is ReductiveGroupsPartII §RG2.3.7; the commutative torsor statement is kept as a variant at non-affine generality.

## Notions moved down from later roadmaps

None. Every supplier precedes this roadmap's position after EtaleDualityAndPerverseSheaves.

## Proposed Part II and requests to other roadmaps

- **FourierDeligneTransformPartII** (ordered after this roadmap and DeligneWeightsAndPurity):
  - the Gabber–Katz canonical extension;
  - stationary phase (LAU87 (2.4.3)), with general exactness and concentration of the local transforms;
  - the product formula for local constants (LAU87 §3);
  - relative perversity (KL85 §1.2);
  - preservation of purity by the transform (KL85 (2.2.1), Scholie (2.3.1));
  - ι-purity of the transform on the line.

  Its introduction should say that the base roadmap stops at tame local values and weight-free statements.
- **EtaleCohomologyFoundations** must provide the three gaps below. Its open revision covers the first, and largely the second through its six-operation structure; nothing planned covers the third over general Noetherian bases.
- **CongruenceSpectralGap** §4.2b attributes its additive-character-sheaf contract (`gap:additive-character-sheaf-weight`) to DeligneWeightsAndPurity, which has none. Its weight-free part is §§2.2–2.5 here; weight zero follows in DeligneWeightsAndPurity from the root-of-unity traces.
- **SheafConvolutionOnAbelianVarieties**' `gap:kernel-composition-coherence` is §1.2 here.

## Gaps

| Slug | What is missing | Supplier, section | Needed by |
|---|---|---|---|
| `torsor-character-sheaf` | Contracted product `P ×^A Λ(χ)` for a finite étale torsor and a character, with monodromy, tensor, functoriality, pullback and coefficient change | EtaleCohomologyFoundations §F.0.3 | 2.2, 2.6 and everything downstream |
| `projection-formula-qcqs` | `Rf_!(B ⊗ f^*A) ≅ Rf_!B ⊗ A` on `D⁺` over qcqs bases with one factor of finite Tor amplitude (main has it on Noetherian bases for `Dᵇ_ctf`, §F.2.7) | EtaleCohomologyFoundations §0.8 / §F.5 | 1.1, 1.1.1, 1.2, 1.2.1, 3.4, 3.4.1, 3.6, at non-Noetherian generality only |
| `smooth-exceptional-pullback` | `f^!M ≅ f^*M(d)[2d]` for all `M ∈ D⁺` and smooth base change of `RHom`, over Noetherian bases (over a field: EtaleDualityAndPerverseSheaves §2.7) | EtaleCohomologyFoundations §F.6 | 3.5, for non-field bases only |

## Sources

All sources in the manifest are certified or settled. I read LAU87 §§0–2 and §4.4, KL85 §2 with Appendix 2.4, ESDE §§7.3–7.4 and 7.8, and KATZ01 Lectures II and IV. BRY86 (Ch. IX, line 3358), WII ((3.2.3), line 2438) and LAU96 are read only at the locators cited. SGA45-ST and KW01 are uncertified and cited by locator only; SGA45-ST is cited only at locators that LAU87 itself quotes ((4.3), (4.20) and the Lang-torsor construction). No new source was needed, no `needs-references.toml` was written, and `sources check` reports 0 problems.

The LAU87 extraction is a poor OCR of the Numdam scan. Formulas were reconstructed and then confirmed by independent computation, recorded in the table above; correction 5 comes from this.

## Ownership against open pull requests

I checked ownership through `roadmaps grep` and `roadmaps show` across all 459 open roadmap heads and main, and through the board package folders. #1891 (a revision of EtaleCohomologyFoundations) was read only to word the gaps and is not cited.

## Untrusted text

Nothing read asked for an action outside this job. Statements in other roadmaps assigning objects to "FourierDeligneTransform" (EtaleCohomologyFoundations #1891, CharacterSumsOverFiniteFields, SheafConvolutionOnAbelianVarieties) were treated as data and checked against the design.

## Dependency-check output

```
candidate: FourierDeligneTransform is not in the merge order yet; checked as if placed after EtaleDualityAndPerverseSheaves (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2351 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere. It did not check Mathlib and Tau Ceti names because the host has no pinned Lake packages; I checked each of those by hand at the pins, giving file and namespace.

## Not done

- No `Suggested.lean`; it is not a deliverable of this job.
- No Lean was elaborated.
- No edits outside the package.
