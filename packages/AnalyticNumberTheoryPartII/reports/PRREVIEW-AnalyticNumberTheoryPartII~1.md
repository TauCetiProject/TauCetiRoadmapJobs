# Review of AnalyticNumberTheoryPartII (pull request #1167 at ed5b737)

**Verdict:** needs changes

Scope: the roadmap folder `TauCetiRoadmap/AnalyticNumberTheoryPartII` (README.md 3976 lines, Suggested.lean 262 lines, metadata.toml) at head ed5b737. The pull request changes nothing outside this folder (`git diff --stat origin/main...HEAD` excluding the folder is empty). The worker's gate at this head fails on one check only, `residue=301` (every hit is an `<a id=…>` anchor); build, depcheck, set_option, sorry-data, prnum, latex, readme-ids-missing and stray-files are all 0. No gate acceptance is possible while residue fails (R05).

## R01 (P1) — Compact Selberg determinant constant is wrong by exp((g−1)/2)

Location: README.md line 2376 (§6.17): "det(Δ+s(s−1))=ZΓ(s)I_g(s) exp(2(g−1)[2ζ′(−1)−log√(2π)])" and "det′Δ=Z′Γ(1)(2π)^(g−1)exp(4(g−1)ζ′(−1))"; line 2502 (§6.19) "D_g(s)=I_g(s)exp(2(g−1)[2ζ′(−1)−log√(2π)])"; §6.17g "Recover the integration constant from the large-real-s asymptotics".

Claim: the identity holds with the constant exp(2(g−1)[2ζ′(−1)−log√(2π)]), taken from jss (8.8) and (1.3).

Witness (the large-s determination that §6.17g itself prescribes). Put C=g−1, u=s(s−1). The roadmap's own heat coefficients (§6.12d) are a₀=C, a₁=−C/3. The ζ-regularised determinant has the large-u expansion log det(Δ+u) = −a₀u log u + a₀u + a₁ log u + O(1/u) with no constant term (the k≥2 heat terms contribute O(u^{1−k}), the remainder O(e^{−u})). Expanding u log u = 2s² log s − 2s log s − s + 1/2 + O(log s/s):

    log det(Δ+s(s−1)) = C[s² − 2s² log s + (2s − 2/3) log s − 1/2] + o(1).

With Stirling and DLMF 5.17.5, log A = 1/12 − ζ′(−1): log G(s+1) = −(3/4)s² + (s²/2) log s + (s/2) log 2π − (1/12) log s + ζ′(−1) + O(1/s), log Γ(s) = (s−1/2) log s − s + (1/2) log 2π + O(1/s), hence for I_g of §6.17h

    log I_g(s) = C[s² − 2s² log s + (2s − 2/3) log s + log 2π − 4ζ′(−1)] + O(1/s).

All polynomial and logarithmic terms agree (this confirms I_g), and log Z_Γ(s) → 0, so the constant is forced: C̃ = C(4ζ′(−1) − log 2π − 1/2) = 2(g−1)[2ζ′(−1) − log√(2π) − 1/4]. Consequently det′Δ = Z′_Γ(1) I_g(1) e^{C̃} = Z′_Γ(1)(2π)^(g−1) exp(4(g−1)ζ′(−1) − (g−1)/2), which is Sarnak's classical formula det′Δ = Z′(1) exp((2g−2)(2ζ′(−1) − 1/4 + ½ log 2π)). The roadmap's constant omits the −1/4, i.e. its det(Δ+s(s−1)) and det′Δ are too large by exp((g−1)/2) (for genus 2, by e^{1/2}). The source jss carries the same omission (Source issues); jss (5.14) has C_ρ(X)=vol(X)/4π=g−1 and jss line 1599 Z_I(1)=exp(2 log(2π)C), so the comparison above is like for like.

Repair: in §6.17 replace the constant by exp(2(g−1)[2ζ′(−1) − log√(2π) − 1/4]) and det′Δ by Z′_Γ(1)(2π)^(g−1)exp(4(g−1)ζ′(−1) − (g−1)/2); the same constant in §6.19's D_g (the functional equation is unaffected because the constant cancels); add to §6.17g the Check "the s→+∞ expansion of log det(Δ+s(s−1)) has zero constant term, so matching C[… + log 2π − 4ζ′(−1)] against C[… − 1/2] forces the −1/4", and record the jss discrepancy in the normalization convention of the Conventions section. Tested on the instance that refuted the original: the Check above with the displayed expansions.

## R02 (P2) — Two owners: the Bost–Connes Hecke pair, regular representation, β=1 state and β=1 ergodicity are already built by VonNeumannAlgebras V10.AffineHecke and V10.AffineType

Location: README.md §§6.1, 6.7, 6.8, 6.14, 6.16, 6.16a, 6.18a, 6.18b, 6.24, 6.24a–6.24f, 6.25, 6.33 (the β=1 statements), 6.9 (the β=1 case) and 6.42g (lines 1864–1944, 2019–2062, 2308–2374, 2748–2831, 3026–3040, 2063–2114, 3539–3550). Only §6.41 and "Prerequisites and boundaries" mention V10.AffineHecke, and only as "the β=1 finite-adele Haar corner".

Claim: these subsections construct the ax+b pair, its coset degrees, the Hecke ring, the left regular representation on ℓ², the coefficient state and its KMS property at β=1, ergodicity and essential freeness as local targets.

Witness: VonNeumannAlgebras (#889, head dee8088, merge-order line 4; this roadmap is line 82) README lines 2578–2600: "Identify the Bost–Connes matrix pair by the group isomorphism M(α,b)=[[1,b/α],[0,1/α]] … For α=m/n in lowest terms prove L=m, R=n … Define λ_BC on ℓ²(Γ₀\Γ) … s_n ↦ n^(−1/2)λ_BC(1_(Γ₀diag(1,n)Γ₀))"; lines 2700–2768 (V10.AffineType): the finite-prime projections P_F with multiplier ∏(1−1/p)/(1−χ(p)/p), Dirichlet-character annihilation, ergodicity on (A_f, Haar), essential freeness off 0, the return lemma, "Identify the canonical β=1 state with φ … prove σ_t^φ=σ_(−t)^BC", type III of pNp, with sources Laca–Raeburn, Neshveyev and Bost–Connes Theorem 5(a). This is the same construction as §§6.1–6.25 and the same proof as §6.9 at β=1.

Repair: in Exact supplier contracts cite VonNeumannAlgebras V10.AffineHecke by name for the pair, the degrees, the Hecke ring over ℂ, both regular representations and the β=1 state with its modular flow, and V10.AffineType for β=1 ergodicity, essential freeness and type III. Delete §§6.1, 6.7, 6.8, 6.14, 6.16, 6.16a, 6.18a, 6.18b, 6.24a–6.24f and 6.25, or keep each only with the one clause by which it differs (the rational coefficient field K of §6.18, the general β of §6.9 and §6.42g, saying that the β=1 instance is V10.AffineType's); rewrite the B1, B3 and B8 prerequisite lists accordingly. The gap is then purely the 0<β<1 family, the completed KMS_β theory for all β and the phase transition, which this roadmap owns.

## R03 (P2) — The local amenability target restates AmenableGroups Layer 6

Location: README.md lines 86–96 ("Local amenability input", `bcPositiveRationals_amenable`), line 2744 (*Needs:*), §6.33f line 3088.

Claim: this roadmap constructs Følner sets, Reiter densities and an invariant mean for ℚ₊^× as a local target.

Witness: AmenableGroups (on main) README lines 391–410, Layer 6: amenability of ℤ by explicit Følner sets, of finitely generated abelian groups by quotients of ℤ^k, and "amenability of every abelian discrete group, with no rank or torsion restriction", on Mathlib's `IsFoelner`/`maxFoelner` (Layer 5); OperatorAlgebraDynamics D2 (on main, lines 38–39, 178–187) already takes its amenability input from AmenableGroups and owns the Reiter P₁ argument.

Repair: delete the "Local amenability input" subsection and every mention of `bcPositiveRationals_amenable`; in §6.33f and the Layer 6 Dependencies write "ℚ₊^× is a discrete abelian group, hence amenable by AmenableGroups Layer 6; OperatorAlgebraDynamics D2 gives A⋊G ≅ A⋊_rG".

## R04 (P2) — Supplier drift: ArithmeticGaloisRepresentations §2.7 is cited for a comparison it does not contain

Location: README.md line 45: "Finite-order and algebraic normalizations use ArithmeticGaloisRepresentations §2.7’s Hecke zeta-integral comparison, supplied there from LFunctions."

Witness: ArithmeticGaloisRepresentations (#856, head 2194655) README lines 146–149: "the comparison of the standard zeta integral with the completed Hecke function … are ArithmeticGaloisRepresentations Part II's, built on §2.7 and on LFunctions"; its §2.7 (line 2086) is "Local constants"; the anchor `hecke-zeta-integral-comparison` exists nowhere in that README. ArithmeticGaloisRepresentationsPartII is not among this roadmap's permitted suppliers.

Repair: cite LFunctions (on main) for the Hecke zeta-integral comparison, or AutomorphicLFunctionsAndLocalFactors AL.1.6.2 ("Hecke continuation and functional equation", which AGR itself names as the owner of the unitary statement), and remove the AGR §2.7 sentence.

## R05 (P3) — Gate residue: 301 anchor tags

Location: README.md lines 55, 88, 100, 104, 108, 112, 144, 152, … (every `<a id="…"></a>`; 301 in total, listed in the worker's gate output).

Repair: delete every `<a id=…></a>` line and flatten each `[§x.y](#s…)` and `[name][R…]` link into the plain text "§x.y" or the supplier's section name; the `[R316]…[R575]: #s…` definitions at the end then go too. The plain gate fails until this is done.

## R06 (P3) — Backticked Lean names that Suggested.lean does not declare

Location: throughout the README; the resolver lists 95 (e.g. line 166 `lerch_transcendent.deriv_s`, 1433 `FunctionalSystem.localRatio`, 2462 `BCHecke.e_zero`, 3616 `CompletedKMS.gibbs_isKMS`, 2280 `TauCeti.SpectralZeta.ShiftedDet.zero_mode`), and several hundred more of the same kind (`axbRat`, `gibbsState`, `timeEvolution_x`, `regularRep`, `symmetry_e`, `IsKMS`, `scalarHeatKernel`, `cubicCoeff.finite_fibre`, `wrightE.constant_term`, …); the invented module names `TauCeti.SeveralVariableZeta` (line 650), `TauCeti.BostConnes` and `TauCeti.SpectralZeta` (line 1860) exist nowhere in Tau Ceti at pin a91d3aaf.

Claim (by the house rule): a backticked name of this roadmap's own asserts that Suggested.lean declares it; the file declares 21 names.

Repair: rewrite every API bullet as prose ("the shift identity Φ(z,s,c)=c^−s+zΦ(z,s,c+1)"), keeping backticks only for the 21 declared names and for pinned Mathlib/Tau Ceti declarations; replace "Target API names below are relative to `TauCeti.X`" by a sentence without a module name.

## R07 (P3) — Citation labels and anchors that do not resolve

Location and repair, one line each:
- line 312 "LerchII §§3–4/§8", 433 "LerchIII §6 Theorem 6.1 pp.41–42", 543 "Lerch III": these are ll2/ll3 ([95]/[94]); cite them as such (the resolver reads "LerchIII" as a roadmap).
- line 644 "UniversalCovers Layers 0 and 2": UniversalCovers (Completed) has stages 0–4, not layers.
- line 1854 "AutomorphicLFunctionsAndLocalFactors Layer 0": its layer is "AL.0".
- lines 51, 126, 3802 "AS.2", "AS.4", "AS.6": AutomorphicSpectralTheory (#925) has no AS.k labels; its layers are "Layer 4: Automorphic spectral completeness" (§4.7 compact quotient discrete spectrum) and "Layer 6: Paley–Wiener theory and trace distributions" (§6.17 trace formula for compact quotients). Cite those.
- lines 264, 3883–3885 and the Prerequisites links `#s0-23a`, `#s2-5`, `#s3-23`, `#s3-24`, `#prerequisites-and-boundaries`: AnalyticNumberTheoryPartI (#1126 head 89a4c37) contains no `<a id>` anchors, so these are dead; the sections themselves exist (§0.23a line 504, §2.5 line 994, §2.15 line 1183, §2.31e line 1449, §3.1 line 1787, §3.23 line 2187 with `BBRFiniteInput`, §3.24 line 2563, `dedekind_residue_subpower_lower` line 1457). Cite by number.
- line 3875 `#v11-weights-connes-invariants-and-continuous-cores`: VonNeumannAlgebras' heading is "Layer 11: Weights, Connes invariants, and continuous cores" (auto-anchor `layer-11-…`).
- lines 45–47 `#hecke-l-functional-equation`, `#global-godement-jacquet`: AutomorphicLFunctionsAndLocalFactors (#924 head 5131017) has no such anchors; the targets are AL.1.6.2 and AL.2.4.
- §5.3b "Inversion between left and right quotient conventions" and "Siegel sets cover G(F)\G(A)" as bold AdelicAlgebraicGroups target names: AA §2.2 (line 1658) speaks of "mutually inversion-normalized left and right Haar measures" and §3.4 (line 3141) of adelic Siegel sets; cite the section numbers, not invented titles.

## R08 (P3) — §4.3b restates a supplier's vertical-strip Gamma growth

Location: README.md lines 253–264 (§4.3b).

Witness: ZerosOfLFunctions (#253 head 6328e1c) README lines 106–110 lists as a supplied interface "Growth of Gammaℝ and Gammaℂ on vertical strips, and a holomorphic branch of log Γ on the sector S_δ"; AnalyticNumberTheoryPartI §0.23a (line 504) supplies the slit-plane log Γ with the Stieltjes remainder and sector bound and itself cites ZerosOfLFunctions 1.2–1.4.

Repair: keep only the balanced-quotient estimate as the local statement and cite ZerosOfLFunctions Layer 1 and AnalyticNumberTheoryPartI §0.23a for the two-sided |Γ(σ+it)| ≍ |t|^(σ−1/2)e^(−π|t|/2) bound.

## R09 (P3) — Locators that point to the wrong place

- §5.8 (line 870) cites loww §3.2 Proposition 3.7 and Lemmas 3.8–3.11 for local zeta integrals and shell densities; loww pp.11–14 (lines 534–720) contain the Shintani series, its residues, Lemma 3.9's order count and the convexity bound, no local integrals. Keep only the dw86 citation, which is on printed p.39 (dw86 lines 520–529: the definition Z_α(ω,Φ)=∫ω(det g)Φ(g·x_α)dg and Proposition 3.1), not "pp.37–38".
- §6.38 (line 3394) cites bc95 "§4, extremal states and zero-temperature limit, pp.434–436"; those pages (bc95 lines 838–900, PDF 24–26) hold Proposition 19, the C*-norm comparison and the groupoid presentation. The zero-temperature statements are cm Theorem 3.32 (verified) and bc95 Theorems 5 and 25; cite those.
- §5.21 (line 1203) cites "LOWW Proposition 3.7(5), p.13" for the residues; the residues are Proposition 3.7(2), p.12 (loww lines 610–613); (5) is the order-one statement (line 636). §§5.21u–v already cite (2).

## Verified sound

Gate and build. `lake env lean Suggested.lean` at pins mathlib 6b7abb3c / TauCeti a91d3aaf: 9 `declaration uses sorry` warnings, nothing else (3.4 s, cached). `#check @` of all 21 declarations elaborates to the types in the worker's signatures file; no section binder is lost (none of the theorems has section variables). The dependency check `gate --depcheck … --movable` prints `depcheck: 205 roadmaps, 1447 edges, 0 problem(s)`: no UPWARD or CYCLE line. Every supplier named is on main (OperatorAlgebraDynamics, ComplexKahlerGeometry, DifferentialGeometry, FuchsianOrbifolds, ClassFieldTheory, AmenableGroups), Completed (UniversalCovers, GlobalNumberFields, ProfiniteArithmetic, RestrictedProducts) or earlier in the merge order (VonNeumannAlgebras line 4, AutomorphicSpectralTheory 79, AnalyticNumberTheoryPartI 81; AdelicAlgebraicGroups, AutomorphicLFunctionsAndLocalFactors, ArithmeticGaloisRepresentations, ZerosOfLFunctions in the permitted list). The 59 pinned declarations cited in the supplier contracts all exist at the pins (checked by grep; e.g. `Cubic.discr` Mathlib/Algebra/CubicDiscriminant.lean:461, `NumberField.finite_of_discr_bdd` NumberField/Discriminant/Basic.lean:494, `IsCoveringMap.isRegular_iff_normal_range` TauCeti/AlgebraicTopology/UniversalCover/Classification/Regular.lean:49, `LinearMap.exists_isFiniteMeasure_integral_characterSpace_eq` TauCeti/Analysis/CStarAlgebra/CharacterSpaceMeasure.lean:133, `Polynomial.bernoulli_one : bernoulli 1 = X − C 2⁻¹` BernoulliPolynomials.lean:75, `IsHeckeTriple`/`of_diagonal` Mathlib/NumberTheory/HeckeRing/Defs.lean:75/91, `MeasureTheory.Measure.InnerRegular` Measure/Regular.lean:329).

Padding probe. Replacing every `sorry` by `simp`, and separately by `norm_num`, in a scratch copy leaves all 9 theorems open ("unsolved goals" or "simp made no progress"); no declaration is a definition restatement, Check or small value. The two definitions with proofs (`lerchBasepoint`) and the local instances have real bodies.

Headline theorems (README): Lerch continuation on the universal cover with second-derived-subgroup invariance (§§4.5, 4.17) — stated; both completed Lerch functional equations (§§4.9–4.10) — stated; complex Hurwitz continuation with Bernoulli values (§§4.12, 4.16) — stated; Barnes expansion with sharp remainder (§4.3) — stated; Heath-Brown quadratic large sieve and fourth moment (§5.29) — stated; entire pole-cleared double Dirichlet series with both matrix equations and polynomial growth (§5.30) — stated; cubic Shintani continuation, residues, matrix equation, convexity (§§5.21, 5.24, 5.28) — not statable (locally free cubic orders, discriminant ideals and signature-weighted coefficients absent at the pins), named in the docstring; generation of ℚ[ℚ/ℤ] by first Eisenstein functions (§6.37) — stated; critical-regime uniqueness of the scaling measure (§6.40) — stated; the Bost–Connes phase transition, cyclotomic values and type III₁ (§§6.42, 6.47–6.50) — not statable without the C*-completion and (after R02) without the supplier's Hecke pair, named in the docstring; the compact Selberg determinant comparison and spectral zeros (§§6.17, 6.20) — not statable (hyperbolic scalar Laplacian spectrum), named. No stand-ins.

Adversarial table (values computed by hand; "ok" means the statement survived):

| statement | instances | values each side | result |
|---|---|---|---|
| Lean `quadraticReciprocity` vs blomer (32) | ψ=ψ′=ρ=ρ′=ψ₁; ψ=ψ′=ψ₁, ρ=ρ′=ψ₋₁ | 1/16·Σ(−1)^{ab} = 8/16 = 1/2; 1/16·(−8) = −1/2 | blomer (32) row 1 entries ½·1, ½·(−1): ok |
| swap equation direction | η=d-residue, ν=n-residue | Σ_{ρ,ρ′}A(ψ,ψ′;ρ,ρ′)ρ(d)ρ′(n) = ψ(n)ψ′(d)(−1)^{(d−1)(n−1)/4} by orthogonality; Z(w,s;ρ,ρ′) has ρ at d, ρ′ at n | matches Lean `ρ (2η+1) * ρ' (2ν+1)`: ok |
| `quadraticReflectionFactors` table | ψ(5): 1,1,−1,−1; ψ(−1): 1,−1,1,−1 | q=8 iff ψ∈{ψ₂,ψ₋₂}; q=1 iff (ψ₁,η≡1 mod 4) or (ψ₋₁,η≡3); κ=0,1,0,1; e(η)=+1,−1,−1,+1 for residues 1,3,5,7 when q=1 | blomer (8),(11) and the Kronecker symbol of −d₀, 4d₀, 8d₀: ok |
| reflection ratio r_{i,η} Checks | (ψ₂,½); (ψ₋₂,0); B(0)[(ψ₋₁,ψ₁),(ψ₋₁,ψ₁)] | (8/π)^0Γ(¼)/Γ(¼)=1; (8/π)^{½}Γ(1)/Γ(½)=√8/π; ¼(2/π+4/(3π)+2/π+0)=4/(3π) | README values: ok |
| reflection identity multiplied by ∏den | s=1+κ+2m (Γ⁻¹ zeros), s=1+2πik/log2 with e=1 | both sides vanish (order 4 vs 3+1) | identity trivially true there, nontrivial elsewhere: ok |
| `P` symmetric under swap | P(w,s) | (w−1)(s−1)(w+s−3/2)=P(s,w) | ok |
| Blomer tubes B₀…B₅ | regions R_a…R_f computed | βR_a=R_a, βR_f=R_f, B₆=B₅; complement = closed 12-gon with vertices as §5.30x, max x²+y² = 9/4 | §5.18 checks (2,2)∈B₀, (−2,−2)∈B₄∖B₃, (0,0)∉B₅: ok |
| (αβ)^6=id | linear part [[1,1],[−1,0]] | trace 1, det 1, order 6; fixed point (½,½) | ok |
| `quadratic_large_sieve` | M=N=1, a₁=1; M=1,N=3,a=(1,0,−1) | LHS 1 ≤ C·2; LHS |1−(3/1)|²=0 | hb95 Theorem 1 literal: ok |
| `quadratic_fourth_moment` | σ=½: Q(1+|t|); σ=1: Q+1; q=1 excluded by χ≠1 | hb95 Theorem 2 {Q+(Q(|t|+1))^{2−2σ}}{Q(|t|+1)}^ε | ok |
| `lerchSeries` Checks | Φ(0,2,1); Φ(z,0,c); Φ(z,−1,c) | 1; 1/(1−z); c/(1−z)+z/(1−z)² | ok |
| §4.4 sign | (z∂_z+c)∂_cΦ | ∂_cΦ=−sΦ(s+1); (z∂_z+c)Φ(s+1)=Φ(s) ⇒ −sΦ | README −s correct; ll3 (2.5) prints +s (Source issues) |
| §4.5d/4.5f residue sign | s=1,c=1 loop about z=1 | Φ=−Log(1−z)/z changes by −2πi/z; formula −(2πi)^s(a−n)^{s−1}e^{−2πic(a−n)}/Γ(s) at s=c=1,n=0 gives −2πi/z | ll2 (4.11): ok |
| §4.17a vs ll3 (3.28) | f₀=z^{−c}a^{s−1}, loop around a=0 | a^{s−1} ↦ e^{2πi s}a^{s−1}, monodromy (e^{2πis}−1)f₀ ≠ 0 for s∉ℤ | ll3 (3.28) false at p=0 as the roadmap says (Source issues) |
| `lerch_completed_functional_equations` | k=0,1; (s,a,c)↦(1−s,1−c,a) stays in D | Λ₀=π^{−s/2}Γ(s/2)L₊, e^{−2πiac}; Λ₁=π^{−(s+1)/2}Γ((s+1)/2)L₋, i·e^{−2πiac} | ll2 Theorem 2.1 (2.7)–(2.10) on {s∈ℂ,0<Re a,Re c<1}: ok |
| `complexHurwitzContinuation_exists` | m=0: c=1,½,1+i; m=1,c=1 | −B₁(c)=½−c: −½, 0, −½−i; −B₂(1)/2=−1/12 | Mathlib bernoulli 1 = X−½: ok |
| §4.12a b_k | k=0,1,2 | 1, ½−c, (c²−c+1/6)/2; (−1)^m m! b_{m+1} = −B_{m+1}/(m+1) | ok |
| `barnesG` | z=1; G(n)=∏_{k≤n−2}k! | w=0 ⇒ 1; G(4)=2, G(5)=12, G(7)=34560 | ok |
| §4.3 log-derivative | derivative of the product | ½log2π − z − ½ + zψ(z+1) = ½log2π + ½ − z + zψ(z); at 0: ½log2π − ½ | jss (2.8): ok |
| `barnesG_asymptotic` constant and remainder | log A = 1/12 − ζ′(−1); N=1 real r | −ln A term; R₁(r)=(1/12)∫(B₄−B₄({t}))/(t+r)³ ≤ 0, first omitted term −1/(720r²) | nemes (1.3),(1.10); (1.8) sign misprint confirmed from nemes (2.4): ok |
| §4.13 constants | k=2: Σ(j+1)²p^{−j}; g(2), g(3); a(2)g(2) | (1+p⁻¹)/(1−p⁻¹)³ ⇒ a(2)=1/ζ(2); 1/12; 1/8640=42/9!; 1/(2π²) | ok |
| §5.8 density | p any | (p−1)·[C(p+1,3)+(p+1)(p²−p)/2+(p³−p)/3]/p⁴ = (1−p⁻¹)(1−p⁻²) | ok |
| §5.10a self-dual measure | pairing matrix Pfaffian | Pf=−1/3 ⇒ |det|^{1/2}=|3|^{−1} | dw86 line 483, 513: ok |
| §5.21q residues from §5.21p | u=2, u=5/3 | ½[Φ̂(0)/ρ₀+Σ₂(Φ̂)]; Σ₁(Φ̂)/6 | ok |
| §5.21 residues and FE | loww Proposition 3.7(2),(3) | A_F(1+3^{−r_α−r₂}), B_F3^{−r_α/2}; prefactor (3^{6s−2}π^{−4s}Γ(s)²Γ(s−1/6)Γ(s+1/6))^n D^{4s−2} | loww lines 597, 612, 615–621: ok |
| §5.28 exponents | σ=3/2; σ=−½ | D^{1/2+ε}(1+|t|)^ε; D^{9/2+ε}(1+|t|)^{4n+ε}, agreeing with §5.28b at σ=−½ | loww Lemma 3.11: ok (poles excluded, see Source issues) |
| §6.2 local scaling measure | shell k | (1−p⁻¹)p^{−k}·(1−p^{−β})/(1−p⁻¹)·p^{−k(β−1)} = (1−p^{−β})p^{−kβ}; Σ_{k≥0}=1 | neshveyev00 lines 49–52: ok |
| `critical_scaling_measure_unique` law | q=2, E=2Ẑ | (map(2•)μ)(2Ẑ)=μ(Ẑ)=1=2^β·2^{−β} | neshveyev00 (1β) q_*μ=q^βμ: ok |
| §6.3 recurrence from the cotangent | k=1,2,3 | e₂=e₁²−¼ from e₁′=−(π/2i)(1−4e₁²); P₃=X³−X/4; P₄=X⁴−X²/3+1/48 | cm (3.92): ok |
| `firstEisenstein` | a=0, ½, ⅓, ¼ | 0; 0; −e(⅓)/6+e(⅔)/6; (−e(¼)+e(¾))/4 with square (e(½)−1)/8 | cm (3.100); `simp` closes a=0: ok |
| §6.37c π₂ | 3+2Σ_{4a=0}e_{2,a} | e_{2,0}=e_{2,½}=−¼, e_{2,¼}=e_{2,¾}=(e(½)−3)/8 ⇒ (1+e(½))/2 = π₂ | ok |
| §6.31 Checks | higher 2 (⅓) | (e(⅓)+e(⅔)−11)/36 | ok |
| §6.18/6.21/6.28 relations in π_u | x′₂x₂, x₂x′₂, e(½)x₂ vs x₂e(½) on ε_k | 2ε_k; 2[2|k]ε_k=π(1+e(½))ε_k; equal vs (−1)^k√2ε_{2k} | bc95 Proposition 18 (a)–(f): ok |
| §6.22 dynamics | e^{itH}x_ne^{−itH}ε_k | k^{−it}√n(nk)^{it}ε_{nk}=n^{it}x_nε_k | cm (3.60): ok |
| KMS orientation | f=x′₂, g=x₂, Gibbs state | φ(x′₂σ_{iβ}x₂)=2^{−β}·2; φ(x₂x′₂)=1+(2^{1−β}−1) | equal; σ_{−iβ} gives 2^{1+β}: ok |
| §6.40/6.50 boundary value | e(½), β≤1 formula vs Gibbs | 2^{−β}(1−2^{β−1})/(½)=2^{1−β}−1 | cm (3.138),(3.135): ok |
| §6.5 ratio set | identity action on a point; q=2,β=1 | r={1}: 1∈,0,2∉; μ(2Ẑ)=½, density of 2 is 2 | neshveyev09 lines 59–69: ok |
| §6.12d heat coefficients | identity term expansion, M₀=1/48, M₁=7/1920 | (1/t−1/12+7t/480)(1−t/4+t²/32)=1/t−1/3+t/15 ⇒ a₁=−(g−1)/3, a₂=(g−1)/15; ζ₊(0)=−(g+2)/3, genus 2: −4/3 | ok |
| §6.12c Gaussian | g_t(0) | e^{−t/4}/√(4πt) | marklof (192) prints 2β (Source issues): ok |
| §6.17h I_g functional equation | I_g(s)/I_g(1−s) | (2 sin πs)^{−2(g−1)}e^{4π(g−1)∫₀^s x cot πx dx}; ∫₀^{½}πx cot πx = ½log 2 | equals Z(1−s)/Z(s): ok |
| §6.17 constant | s→+∞ | see R01 | **false** |
| §6.20c orders | s=0, s=1 | Γ^{2g−2} pole 2g−2, G(1)=1, D simple zero ⇒ Z order 2g−1; at 1 order 1 | ok |

Sources checked at their locators (source ids are the cache keys): nemes Theorem 1.1 (1.8), Theorem 1.2 (1.9)–(1.10), (2.4) lines 97–130, 280–304; adamchik (20) line 329, Proposition 3.1 line 346, Lemma 5.1 line 525; ll3 Theorems 2.1–2.3 lines 517–559, Theorem 3.4 (3.25)–(3.29) lines 1129–1147, Theorem 3.5 line 1205, Theorem 3.6 lines 1329–1338, Theorem 4.1 line 1382 (p.33), Theorem 5.1 (5.2)–(5.5) lines 1510–1546 (p.36), D and f_n definitions lines 1082–1127; ll2 Theorem 2.1 (2.7)–(2.10) lines 213–225, Theorem 2.3 lines 284–290, Theorem 4.5 (4.11) line 551; ll1 Theorem 2.1 lines 237–246, Lemma 3.3 (3.20) line 504; loww Lemma 2.5 line 393, Proposition 3.4/Lemma 3.5 lines 535–564, (3.1) line 601, Proposition 3.7 lines 606–636, Lemmas 3.8–3.11 lines 643–718; dw86 (OCR, printed = PDF+25) Proposition 2.2 line 417, (2.1) line 452, dx=|3|⁻¹∏dx_j line 483, (2.4) and b_K lines 495–514, Proposition 3.1 line 529, Theorem 3.1 lines 641–649, Theorem 4.2 and "det C_R = −C_C" lines 990–995, Theorem 6.1 line 1662, Theorem 6.2 line 1870; blomer (1) line 50, (7)–(16) lines 175–274, Lemma 2 lines 388–395, (29)–(35) lines 420–529, R₁ line 425, R* ⊆ {x²+y²≤3} line 544; neshveyev09 ratio set lines 59–69, Theorem 2.1 line 123, Lemma 2.3 line 151; neshveyev00 (1β) line 36, density line 49, Proposition lines 55–116, Corollary line 117; jss (1.3) line 107, (2.8) line 455, (4.2)–(4.6) lines 653–726, (5.14) line 895, Theorem 6.1 (6.1)–(6.3) lines 987–1023, (8.4) line 1545, (8.7)–(8.8) lines 1584–1586, Z_I(1) line 1599; jssv1 (1.3) line 107 (sign +dim(V)χ(X), as the roadmap says); laca Theorem 2.1.1 line 221, Lemma 2.1.3 line 256, Proposition 3.2.1 lines 407–413; cm (printed = PDF−22) Definitions 3.4–3.7 lines 20389–20454, (3.19) line 20569, Proposition 3.23 line 20839, Lemma 3.24 (3.60) line 20928, (3.61)–(3.72) lines 20949–21009, Proposition 3.25 line 21013, (3.75) line 21037, Lemmas 3.27–3.28 (3.91)–(3.101) lines 21129–21190, Theorem 3.30 lines 21290–21299, Theorem 3.32 (3.133)–(3.142) lines 21629–21684; bc95 (OCR, printed = PDF+410, with page 433 read from the rendered image) Proposition 18 lines 730–807 and (7) with upper-right entry γ; zagier §1 (1)–(2) lines 33–66; hb95 Theorem 1, Corollaries 1–2, Theorem 2 lines 189–266; wright85 (printed = PDF+501) Lemmas 1.1–1.2, 3.1–3.2, Theorem 4.1, Propositions 4.1–4.2, 5.1–5.3, 6.1–6.2 at the pages the roadmap gives; wood11msp Theorem 2.1 line 187 and table (1) lines 216–218 (ωθ=−ad, ω²=−ac+bω−aθ, θ²=−bd+dω−cθ, as §5.5); marklof (69), (189)–(194) lines 575, 1256–1275. Note: the cache key `wood11` was created by a mistaken arXiv id and holds an unrelated physics paper; Wood's paper is `wood11msp` (MSP open archive).

Cross-roadmap citations resolved: OperatorAlgebraDynamics D1/D2/D7 (main, lines 75, 143, 470; D2 owns the amenable full=reduced theorem and the Reiter argument, D7 the entire-element dense-core KMS criterion, the strip bound and "weak-* limits of β-KMS states as β→+∞ are ground states", lines 178–187, 479–488, 534–537); ComplexKahlerGeometry K5a (main, line 570); DifferentialGeometry Layer 12 `laplaceBeltrami := divergence ∘ mgradient` (main, lines 910–933, sign opposite to the roadmap's A=−div grad as stated); FuchsianOrbifolds Layers 0–2, 4 (main, lines 193–310); UniversalCovers stages 0 and 2 (Completed, lines 63, 98) with `TauCeti.UniversalCover`, `basepointLift`, `deckFundamentalGroupEquiv`, `isCoveringMap_subgroupQuotientProj`, `deckSubgroupQuotientProjEquivOfNormal`, `SubgroupQuotient`, `subgroupQuotientMap`, `inv_smul_mk` at the pin; GlobalNumberFields Layers 4 and 10 (Completed, lines 418, 531); ProfiniteArithmetic Layer 0 and the `TauCeti.zHat` declarations; VonNeumannAlgebras V0 `PositiveLinearMap.GNS`/`gnsStarAlgHom` (lines 156, 295), V8 discrete crossed product with (π(x)f)(g)=α_{g⁻¹}(x)f(g), (u_hf)(g)=f(h⁻¹g) (line 2056, matching the roadmap's convention), V8 measure-to-type criterion (line 2128), V10.AffineHecke/AffineType (lines 2578–2768), V11 S(M) alternatives and III₁=[0,∞) (line 3077), Maharam extensions, associated flows, `CentralizerCornerRestriction` (lines 2815–3045, 3295–3318); AdelicAlgebraicGroups Layer 0, §2.2, §3.4 (#792, lines 561, 1658, 3141); AutomorphicLFunctionsAndLocalFactors AL.0, AL.1, AL.2 (#924, lines 294, 879, 1509); AutomorphicSpectralTheory §§1.2–1.5 (#925, lines 914–969; the anchor `15-finite-weyl-constant-term-formula` is the auto-anchor of §1.5); ZerosOfLFunctions Layer 1 Gamma interface (#253, line 106); AnalyticNumberTheoryPartI §§0.23a, 2.5, 2.15, 2.31e, 3.1, 3.23 (`BBRFiniteInput`), 3.24 (#1126, lines listed in R07). SieveMethodsAndPrimePatterns (#1495) cites this roadmap's §5.29 as the owner of the quadratic large sieve; ArithmeticStatisticsPartI–V (#1171–#1175) cite §§5.4–5.6 as the owner of the cubic parametrization; ArithmeticStatisticsPartI and PartII also define "binary cubic forms and the twisted action" and the Delone–Faddeev parametrization themselves (their lines 71–163 and heading `delone-faddeev-parametrization-of-cubic-rings`), which is their defect, not this roadmap's: this roadmap precedes them in the merge order (82 versus 93–99). No roadmap on main or in an open pull request other than this one states the Lerch transcendent, the Barnes G-function, the quadratic double Dirichlet series, the Keating–Snaith constants, the cubic Shintani zeta function, the Selberg zeta function or a spectral determinant (`roadmaps grep`). Ownership against open pull requests whose files the brief does not give (the 437 open roadmap pull requests) was checked only through `roadmaps grep` on their heads.

Lean form: single `import Mathlib` plus `TauCeti.AlgebraicTopology.UniversalCover.Action` (exists at the pin, object file present); no `set_option`, `lemma`, `#eval`, `#print axioms`, `True` or sorried data; module docstring names the non-statable headlines; namespace `TauCetiRoadmap.AnalyticNumberTheoryPartII`; every Lean name appears in the README (gate readme-ids-missing=0). Generality agrees with the README for all 21 declarations: the Lerch domain is N#=ℂ×(ℂ∖{0,1})×(ℂ∖ℤ≤0) with basepoint (½,−1,½) on the principal sheet; the functional-equation polycylinder is {s∈ℂ,0<Re a<1,0<Re c<1}; the Hurwitz continuation is for Re c>0; the double series use Mathlib's `DirichletCharacter ℂ 8` and `jacobiSym (d:ℤ) n` with d on top; the fourth moment ranges over every finite set of nonprincipal primitive real characters of conductor ≤Q; the scaling measure is Radon (`InnerRegular` plus locally finite) on `FiniteAdeleRing ℤ ℚ` with the pushforward law and no unit invariance.

## Not verifiable

- sarnak (institutional scan): the OCR of pp.603–620 is too degraded to read Theorem 1's constant; R01 rests on the computation displayed there and on jss's explicit (8.4), (8.8), (5.14) and Z_I(1).
- Keating–Snaith [100] (Comm. Math. Phys. 214, paywalled; the cited copy is a third-party course page): §§4.13–4.14 equations (4)–(6), (15)–(19), (80)–(87) not read; the constants were recomputed instead (table).
- Helffer [126], Hiai [127], Juschenko [128], Le Masson [119], Hounie [110], Diaconu–Goldfeld–Hoffstein [111], Shintani [104], Igusa 1984, Wright's 1982 thesis, DLMF 5.17/10.32/25.11: not fetched in this round (outside the seeded sample; DLMF 5.17.5 is quoted verbatim by nemes (1.3), which was read).
- dw86 Theorem 4.2's fraction r(s+|m|)/r(2−s+|m|) and Theorem 3.2's statement on p.47: the OCR loses the numerator/denominator order; §5.3e's convention could not be confirmed.
- wright85 Theorem 6.1 (pp.532–533) and Propositions 6.3–6.8: OCR too broken at those pages to compare residues sign by sign; headers and page offsets confirmed only.

## Source issues

- **Error** in jss at (1.3), (8.6) and (8.8) (Corollary 8.3.1), printed pp.3 and 28: the source says the torsion-free constant is C̃ = 2C_ρ(X)(2ζ′(−1) − log√2π); it should be 2C_ρ(X)(2ζ′(−1) − log√2π − 1/4), as the large-s expansion of log det(Δ+s(s−1)) against (8.4) and Stirling–Barnes asymptotics forces (and as Sarnak's det′Δ formula shows); affects a stated result.
- **Misprint** in jssv1 at (1.3), p.3: the source says +dim(V_ρ)χ(X)(…); it should be −dim(V_ρ)χ(X)(…) (as in v2); affects a stated result; corrected in print at jss v2 (1.3).
- **Misprint** in nemes at Theorem 1.1 (1.8), p.2, and the display after (2.4), p.6: the source says R_N(z) = −[(2N+1)(2N+2)]⁻¹∫(B_{2N+2}+B_{2N+2}({t}))(t+z)^{−2N−1}dt; it should be +[(2N+1)(2N+2)]⁻¹∫(B_{2N+2}−B_{2N+2}({t}))(t+z)^{−2N−1}dt, since the constant term equals B_{2N+2}/(2N(2N+1)(2N+2)z^{2N}) and R_N(x)<0 for N=1, x>0; affects a stated result.
- **Misprint** in ll3 at Theorem 2.3 (2.5), p.13 (and Theorem 4.1): the source says (z∂_z+c)∂_cΦ = sΦ; it should be −sΦ, by composing (2.3) and (2.4); affects a stated result.
- **Error** in ll3 at Theorem 3.4 (3.28), p.27: the source says M_{[Z₁]^k}(f_p) ≡ 0 for every p; for p=0 the factor a^{s−1} in f₀ gains e^{2πiks} around a=0, so the monodromy is (e^{2πiks}−1)f₀; affects the proof of Theorem 3.5 (the descent still holds with the corrected action, as the roadmap's §4.17a shows).
- **Misprint** in blomer at §2.1, printed p.358 (arXiv p.4, lines 196–198): the source says ψ₂(n)=1 iff n≡3,5 (mod 8) and ψ₋₂(n)=1 iff n≡5,7; it should be ψ₂(n)=−1 iff n≡3,5 and ψ₋₂(n)=−1 iff n≡5,7 (the printed rule is not a character); affects nothing.
- **Misprint** in blomer at (11), p.358: the second line of δ₀ repeats the first line's conditions; it should read 4d₀ for (ψ=ψ₁, d≡3 (4)) or (ψ=ψ₋₁, d≡1 (4)); affects nothing.
- **Error** in loww at Lemma 3.11, p.14: the source states the bound for every t∈ℝ with −1/2≤σ≤3/2; it fails at s=1 and s=5/6 where ξ has poles; it should exclude neighbourhoods of the two poles (the proof applies Phragmén–Lindelöf to (s−1)(s−5/6)(s+1)²ξ); affects a stated result.
- **Misprint** in bc95 at (7), p.433: the source says the double class of [1 γ; 0 n/m]; it should be [1 γ/m; 0 n/m] (product of the representatives of μ_n, e(γ), μ_m*); affects nothing.
- **Misprint** in marklof at (192)–(193), pp.26–27: the source says g(t)=e^{−t²/(2β)}/√(4πβ); with (69) and h(ρ)=e^{−βρ²} it should be e^{−t²/(4β)}/√(4πβ); affects a stated result (the proof of Proposition 10 uses only the limit β→0).
