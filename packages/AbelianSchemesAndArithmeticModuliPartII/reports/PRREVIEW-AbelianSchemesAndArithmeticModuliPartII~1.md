# Review of AbelianSchemesAndArithmeticModuliPartII (pull request #1405 at f4eb016)

**Verdict:** needs changes

Gate at f4eb016: every check passed (`depcheck=0 build=0 readme-ids-missing=0 stray-files=0`). My own run of the dependency check: `depcheck: 204 roadmaps, 1486 edges, 0 problem(s)`, no UPWARD, CYCLE or `moved:` line. `lake env lean` on `Suggested.lean`: four `declaration uses 'sorry'` warnings and nothing else. The outside-folder diff is empty.

## R01 (P2) — The eight plan gaps ask suppliers for what the README now builds

Location: `design/plan.json` `gaps` (eight slugs) against `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md` lines 101–104 ("B2 owns uniform torsion closures, Lang–Néron, polarized fixed parts and the abelian Ax theorem; B3 owns the mixed Kuga inputs; B4 owns fine curve moduli; F4 owns semisimple lattice bounds; F5 owns CM unitary masses") and line 167 onward (no `What <Supplier> must provide (gap:…)` line anywhere; `grep -c 'gap:' README.md` is 0).

Claim: the package declares `gap:fixed-part-theorem` (ShimuraVarieties 3.5b.1), `gap:kuga-definable-inputs` and `gap:algebraic-betti-ax-type` (ShimuraVarieties P.1, 3.5a–3.5d), `gap:fine-curve-level-moduli` (PELModuli M6), `gap:local-semisimple-lattice-bounds` and `gap:cm-hermitian-mass-asymptotic` (GeometryOfNumbersAndQuadraticArithmetic 2.5, 3.3), `gap:uniform-manin-mumford` and `gap:lang-neron-modulo-trace` (AbelianSchemesAndArithmeticModuli A6).

Witness: each `needs` sentence is exactly a target of this README: B2.4 (fixed part, Deligne 4.1.2/4.2.9), B3.1 (Kuga data, definable uniformization, semirational block counting), B2.15 (abelian Ax input), B4.1 (fine `M_g[ℓ]`), F4.4 (local semisimple lattice bounds), F5.7 (CM Hermitian mass `log H_K(g)=½g²log g+O_K(g²)`), B2.3 (uniform Manin–Mumford and Lang–Néron). None of the named suppliers states them at its head: ShimuraVarieties (#933 e7d7bdc) has no fixed-part theorem (its 3.5b.1 is the nilpotent-orbit factorization), AbelianSchemesAndArithmeticModuli (#849 e77dd51) contains neither "Lang–Néron" nor "Manin", GeometryOfNumbersAndQuadraticArithmetic §3.3 is the orthogonal mass only.

Repair (one of two, both must leave README and plan saying the same thing): (a) keep ownership here and have the eight gap entries withdrawn from the plan by a maintainer; the README then needs no change beyond the Scope sentence it already has. (b) Keep the gaps as the contracts: add, in the ShimuraVarieties, PELModuli, GeometryOfNumbersAndQuadraticArithmetic and AbelianSchemesAndArithmeticModuli subsections of `## Exact supplier contracts`, the eight lines `What <Supplier> must provide (gap:<slug>): <needs>`, and turn B2.3, B2.4, B2.15, B3.1, B4.1, F4.4 and F5.7 into consumers (adapters) of those contracts. As it stands the intake announces eight contracts on supplier jobs for objects this roadmap builds, which is two owners for each of them once a supplier acts on the announcement. The plan file is outside this pull request's edit set; if (a) is chosen, say so in the repair report and leave the README as is.

## R02 (P2) — Tate's theorem at every prime, Weil-polynomial finiteness and isogeny-class finiteness are also targets of ArithmeticStatisticsPartI, earlier in the merge order

Location: README line 110 ("F0–F1 own the finite-field Tate comparison, including the characteristic prime"), F0.7 (line 2242), F1.9 (line 2479), F3.3 (line 2708), F6.2 (line 3318) and the first conjunct of `isomorphismClassCount` (`Suggested.lean` line 112).

Claim: these four statements are owned here.

Witness: ArithmeticStatisticsPartI (#1171 at 4ced5ee; ORDER line 93, this roadmap is line 137) states in its "Supporting constructions" (its README lines 2540–2550) the targets "Finiteness of Weil polynomials" (with the same bound `(4g+1)^g q^(g(g+1)/4)`), "Tate's theorem over a finite field" (both `ℓ≠p` on `T_ℓ` and `ℓ=p` on contravariant Dieudonné modules), "The characteristic-prime order" and "Finiteness of an isogeny class and of unpolarized classes" (its `unpolarizedClasses_finite`), and its line 17 names this roadmap as a later owner of "the general theory around them". Two open pull requests build the same four objects; this README never mentions ArithmeticStatisticsPartI.

Repair: cite the earlier owner for the four statements (`ArithmeticStatisticsPartI`, Supporting constructions: finiteness of Weil polynomials; Tate's theorem over a finite field; finiteness of an isogeny class) in the Scope paragraph, in F0.7, F1.9, F3.3 and F6.2, and keep here what it does not state: the split-prime commutant dimension (F0.6), saturation (F1.2), the cyclic-algebra invariant (F1.4–F1.7, F1.11), Honda–Tate, the lattice classification and all counting asymptotics. If the project prefers this roadmap as the owner, that is a merge-order decision for the intake (ArithmeticStatisticsPartI moved after this roadmap and its stub deleted); say which in the repair report.

## R03 (P2) — F4.4, F4.5, F4.7 and F4.8 state constants sharper than the source proves, with no proof of the sharpening

Location: README lines 2946–2948 ("at most `ℓ^{2Δ_ℓ}` orbits … index `≤ℓ^{Δ_ℓ}` … LT §§3.1–3.2.1 … as a strengthened local adaptation"), line 2974 (`#G(A_f)\X≤D_*²`), line 2972 ("`[K_M:Stab(M)]≤D_*`"), line 3009 (`#Γ\X≤D_*³h`), line 3028 (`D_*³h≤(2√p)^{3m(m−1)}h`).

Claim: the centralizer has at most `ℓ^{2Δ_ℓ}` orbits of stable lattices and every stabilizer has index at most `ℓ^{Δ_ℓ}` in a conjugate of the fixed maximal compact, where `Δ_ℓ = v_ℓ(D_*)` (the sum over ordered pairs of unequal root occurrences of `v_ℓ(λ−μ)`; I checked that `Σn_i²v(disc f_i)+2Σ_{i<j}n_in_jv(Res(f_i,f_j))` equals this sum).

Witness: LT line 384–397 (equation (14)) bounds the orbit count by `ℓ^{4Σ_{λ≠μ}val(λ−μ)}`, that is `ℓ^{4Δ_ℓ}`, after a per-block bound `ℓ^{4n_iδ_i}` (line 379, (13)); LT lines 469 and 491 ((17), (19)) bound the stabilizer orbit, hence the index, by `ℓ^{3δn²}` and `ℓ^{4δn²}`; LT (15), line 415–420, gives classes `≤ D_*^4·max #(G(ℚ)\G(A_f)/Stab)`. The README's exponents are the source's divided by two (orbits) and four (index) and nothing in F4.4 or F4.9 says where the factor is gained; "successive projected lattices" is LT's own method (lines 329–333, 432–438), which yields the exponents above. The headline `isomorphismClassCount` needs only `exp(O_p(g²))` and is unaffected.

Repair: state LT's bounds (orbits `≤ℓ^{4Δ_ℓ}`, index `≤ℓ^{4Δ_ℓ}` per LT (19), globally `≤D_*^4` orbits and index, hence `#Γ\X≤D_*^8h` and `(2√p)^{8m(m−1)}h` in F4.7–F4.8), or keep the sharper constants as a new theorem with the estimate that improves (13) and (17)–(19) written out as its own target with a locator or a proof sketch. Adjust F4.9 and F6.7 ("the abstract `D_*³h` estimate") to whichever is chosen.

## R04 (P3) — F3.1c's first Check miscomputes ζ

Location: README line 2647 ("With q=q₀=4, π=2 and π₀=−2, the slopes agree but ζ=−1. The choice t=2 …").

Claim: ζ has order 2 and t=2 is needed.

Witness: with `q=4=2²` and `q₀=4` one has `a=b=2`, so `ζ=π₀^a/π^b=(−2)²/2²=1`; t=1 and `N=bt=2` already give `π^2=4=π₀^2` over `𝔽₁₆`; the sign is squared away. An instance that does need t=2: `q=4`, `q₀=8`, `π=2`, `π₀=2√−2` in `L=ℚ(√−2)` (slopes `1/2` on both sides at the prime over 2), `ζ=(2√−2)²/2³=−1`, so `t=2`, `N=6`, `π^6=64=π₀^4`.

Repair: replace the Check by that instance (or any with `a` odd), keeping "t=1 would retain the wrong sign" only where it is true.

## R05 (P3) — JacobianChallengePartII declaration names that do not exist at its head

Location: README lines 66–67, 329–330, 2073, 2099 (`RelativeJacobian.CurveDifference`, `RelativeJacobian.levelFaltingsZhang`).

Witness: JacobianChallengePartII (#1225 at 02f420e) has §2.6 "Curve difference morphism" and §7.2 "Faltings–Zhang for a curve family with full level" with the stated content, but neither name occurs in its README or `Suggested.lean` (its Lean names are listed at its line 60: `invertibleSheafDescends`, `AxisNormalizedPicard`, `pointedSquarePicardIsomorphism`, `triangularForward`, `triangularInverse`, `triangularIsomorphism`, `triangularBaseChange`).

Repair: cite "JacobianChallengePartII §2.6" and "§7.2" without a backticked name.

## R06 (P3) — "SchemeAndStackFoundations SF.2 and SF.4" are not that roadmap's labels

Location: README lines 46, 340, 358, 694, 730, 771.

Witness: SchemeAndStackFoundations on main (fa41b37) contains no string `SF.`; its layers are "Layer 2: sites and scheme cohomology" and "Layer 4: deformations, formal schemes, models and alterations", and the theorem on formal functions is §4.9 (its line 5448).

Repair: cite "Layer 2" / "§4.9" (formal functions) / "Layer 4" by the labels the supplier uses.

## R07 (P3) — F5.1 re-proves Lang's theorem, which ReductiveGroupsPartII RG2.3.7 owns

Location: README lines 3070–3078 (*Needs:* only AbelianSchemesAndArithmeticModuli A3).

Witness: ReductiveGroupsPartII on main, line 5201, "RG2.3.7 Lang's theorem and lifting": for a smooth connected group `H` over `𝔽_q` the Lang map is onto and `H¹(𝔽_q,H)=1`, and its Scope (line 61–62) names RG2.3 "the single owner in Tau Ceti of Lang's theorem for connected smooth groups over finite fields". An abelian variety is such a group; ArithmeticStatisticsPartI already imports it from there.

Repair: cite RG2.3.7 in F5.1's *Needs:* and keep F5.1 only as the abelian-variety adapter (étale surjective isogeny `Frob_q−1`, torsor vanishing), or delete it and cite RG2.3.7 from F5.6.

## R08 (P3) — Invariance of domain is also claimed by MorseTheory #1094 (coordination)

Location: README B2.9 (line 1376 onward) and Scope line 42.

Witness: MorseTheory at #1094 (a revision of the on-main roadmap, hence not citable here) says at its line 82 "This roadmap owns Brouwer's invariance of domain in M4.1, in its equal-dimension form" from the same two pinned Tau Ceti theorems; ImplicitAtlases #974 (its line 23) cites this roadmap's B2.9 for the same statement. B2.9 is correctly the owner for now (main has no owner; a revision pull request is not a dependency), but once #1094 merges B2.9 should cite MorseTheory M4.1 and keep only the chartwise manifold consequence and the Betti application. No edit needed now; recorded so that the next round does not count it as a new duplication.

## Verified sound

**Headline theorems and `Suggested.lean`.** The README's headlines (How to read the build, lines 384–395) are P0.5, P2.8, P3.3–P3.4, P4.2–P4.3, B1.4, B2.3–B2.4, B2.21–B2.23, B3–B4, F0.7, F1.8–F1.10, F3.2–F3.10, F4.8, F5.7–F5.9, F6.2, F6.4–F6.6 and F2.2. Statable at the pins: F2.2 (`resultantRecognition`), F6.2 (`weilPolynomialCount`), F6.5 (`isogenyClassAsymptotic`), F6.4 (`isomorphismClassCount`), all four stated. The pinned Tau Ceti `AbelianVariety` (Basic.lean line 95: proper geometrically integral group scheme over `Spec K`; `dim` line 118 = topological Krull dimension; `IsIsogeny` Isogeny.lean line 61 = finite and surjective; category instance Hom/Basic.lean line 48) has no Frobenius endomorphism, Tate module, polarization, relative abelian scheme or Dieudonné carrier (grep of `TauCeti/AlgebraicGeometry/AbelianVariety/`), so the docstring's not-statable list (P0.5, P2.8, P3.3–3.4, P4.2–4.3, B1.4, B2.3–2.4, B2.21–2.23, B3, B4, F0.7, F1.8–1.10, F3.2–3.3, F3.6–3.10, F4.8, F5.7–5.9, F6.6) is right. `#check @name` on a scratch copy of all seven declarations reproduces `scratch/signatures.md`; no section binder is lost (`[Finite k]`, `[Fact p.Prime]`, `[IsDiscreteValuationRing O]` all present). One-tactic probe (`first | simp_all | rfl | infer_instance | aesop | omega | decide`) closes none of the four theorems: no padding. The two `def`s and the `abbrev` have real bodies on the pinned carrier; no `set_option`, no `lemma`, imports are `Mathlib` plus one existing `TauCeti.*` module.

**Adversarial table** (values computed on each side).

| Statement | Instances | Values | Result |
|---|---|---|---|
| `resultantRecognition` (F2.2) truth | `P=X`, `Q=X²`, tests `ψ=X+π^n` | `v Res=n` vs `2n`; equal only if both zero | distinguishes; general proof: for `P=R^eS`, `ψ_n≡R+π^n mod π^{2n}` gives `v Res(P,ψ_n)=nde+v Res(S,R)` (mult. by `ψ_n` on `O[X]/(R)` is `π^n(I+π^nH)`, `det(I+π^nH)≡1`), slope `de` recovers `e`; monic factors of monic `P` lie in `O[X]` (DVR integrally closed); `D=0` makes `hφ` false (O≠0) | sound, no change |
| F2.2 Checks | `P=X,Q=X+π,ψ=X+π²`; `𝔽₂[[t]]` with `D=𝔽₂` | vals `2` vs `1`; `v ψ(t)=v ψ(t+t²)=`mult. of `X` in ψ | all four Checks hold | no change |
| `weilPolynomialCount` convention | ascending `coeff i = q^{g−i} coeff(2g−i)` vs README descending `a_{2g−i}=q^{g−i}a_i` | `i=0`: `coeff 0 = q^g·1`; `i=g` tautology | same relation; `X²−q` excluded by constant term | no change |
| `weilPolynomialCount` bound | `g=1`: `q=2,3,4` | counts `5,7,9` vs bounds `5√2=7.07`, `5√3=8.66`, `5·2=10` | holds; LT's printed `(2g)^g q^{…}` gives `4<9` at `q=4` (source error, see below) | no change |
| F6.1 | `q=0`, `g=0`; `q=1` | `P=X^{2g}+…+a_gX^g`; `P=1` | determined by `s_1..s_g` over ℚ | no change |
| `isogenyClassAsymptotic` limit | DPH lower bound, LT upper | `log` lower `= (n²/4)log q + (n/4)log q − n log n + O(n)`; upper `= (g²/4)log q + g log(4g+1) + (g/4)log q` | both `/g² → (log q)/4`; `g=0`: `log 1/0=0` in Lean, irrelevant to `atTop` | no change |
| `isogenyClassAsymptotic` finiteness | `Quot` of `∃ isogeny` | isogeny is an equivalence (dual isogeny, composition `IsIsogeny.comp` at the pin); classes ↔ Weil polynomials (F3.3) | finite | no change |
| `isomorphismClassCount` | Lee Thm 1.1 (line 44–46) | `B(p,g)≤2^{34g²}p^{(69/4)g²(1+o(1))}` ⇒ `log B=O_p(g²)`; via README route: `#isog·D_*^c·h` with `log h≤Σ_i(½d_i(d_i−1)log(2√p)+(d_i−1)log(…))=O_p(g²)` | true with LT's exponents too | no change |
| F6.4 conditional assembly | `17+1/4` | `69/4=17.25` | arithmetic right | no change |
| F0.2 reciprocity and product Check | `(X²−aX+q)(X²−bX+q)` | `X⁴−(a+b)X³+(ab+2q)X²−q(a+b)X+q²` | matches | no change |
| F0.1 limit theorem | `u_n=ℓ^n`; `u_n=1+ℓ^n` | `⋂ℓ^nL=0=u(L)`; `L=u(L)` | `⊆` by closedness, `⊇` by compactness of `L` and `‖u_j−u‖→0` | no change |
| F1.4/F1.7/F1.11 | `a=1`; invariant formula | `dim_K B=a·a=a²`; `inv_v=f_v ord_v(π)/a=[K_v:ℚ_p]ord_v(π)/ord_v(p^a)` since `ord_v(p^a)=ae_v` | consistent with Tate's formula | no change |
| F3.1a Checks | `π=2+i,q=5`; `π=√2,q=2`; `π=±2,q=4` | slopes `1,0`; `ℚ(ζ₈)` local degree 4, `λ=1/2`, `n_w=2`; `ℚ(√−2)` degree 2, `n_w=1` | all three hold | no change |
| F3.1b Checks | `L=ℚ(i),ξ=i` | `E(i,1)=Tr(i·(−i)·1)=2`, `E(1,i)=Tr(i·i)=−2`, Gram `[[0,−2],[2,0]]`, det 4, Pfaffian 2 | not principal; sign flips with `−i` | no change |
| F3.1c Check 1 | `q=q₀=4`, `a=b=2` | `ζ=(−2)²/2²=1`, not `−1` | **false Check** | R04 |
| F3.1c Checks 2–3 | `π=√2,q=2,π₀=2,q₀=4` | `ζ=2/(√2)²=1`, `N=2` | hold | no change |
| F3.1d Checks | elliptic over `𝔽_{q²}`; `(T−2)²` over `𝔽₄` | `T⁴−tT²+q²`; `(T²−2)²`, constant 4 | hold | no change |
| F3.4 | `a=1`, `v∣p` | `inv_v=f_v·ord_v(π)∈ℤ` ⇒ `0`; no real place ⇒ `End⁰=ℚ(π)` | Waterhouse 6.1(1), line 1196 | no change |
| F3.8 Check 2 | `p=5`, `π=√5ζ₅` | `v_𝔭(π)=v(5/π)=2` with `v(5)=4`; `R⊗ℤ₅⊂ℤ₅+𝔭²O` so no element of valuation 1 | `R` nonmaximal at 5; Waterhouse 6.1(2) line 1198 allows it | no change |
| F4.3 | `P=(X²+p)²` | ordered unequal pairs `2·4`, `D_*=(2√p)^8=(4p)^4`; general `D_*≤(2√q)^{m(m−1)}` | holds | no change |
| F4.4 Check 3 | `γ=diag(0,ℓ)` | `Δ_ℓ=2`; `M=⟨(1,ℓ⁻¹),(0,1)⟩` stable, `M∩V_1⊕M∩V_2` has index ℓ | holds; all stable lattices in 2 torus orbits `≤ℓ⁴` | no change |
| F4.4 constants vs LT | `n_i=1`, any ℓ; index per block | README `ℓ^{2δ}`, `ℓ^{n²δ}`; LT (13),(14),(17),(19): `ℓ^{4nδ}`, `ℓ^{4Δ}`, `ℓ^{3δn²}`, `ℓ^{4δn²}` | sharper than the source by factors 2 and 4 in the exponent, unproved | R03 |
| F4.7 counting lemma | abstract | `#Γ\X ≤ (#orbits)·max[K_M:Stab]·h` | right given its hypotheses | no change |
| F5.5 | `p=2`, `y²+xy=x³+x²+1`; odd `p` | points `(0,1),∞`: `#E(𝔽₂)=2`, `a=1`, `#E(𝔽₄)=9−a²=8`; odd `p`: `p+1±a≡0 (p)` forces `p∣2` | odd-`p` claim true, `p=2` exception exactly `a=±1` | no change |
| F5.7/F5.8 coefficient | `Σ_{j=1}^g log((j−1)!)` | `=Σ_{k=1}^{g−1}(g−k)log k = ½g²log g+O(g²)`; `g=2`: `0!1!=1` | README's `½` right; LT (51),(56) print `[K:ℚ]` and `1` | no change (source error below) |
| F6.2 Check 3 | `(X²+2)²` | `coeff 1=0=2·coeff 3`, `coeff 0=4=2²` | included | no change |
| F6.5 constants | DPH Thm 1.3 line 79–83, `r` line 40 | `c₄=e^{−3/2}`, `c₅=2+√2`, `r(q)=φ(q)/q` | match | no change |
| B1.1 normalization | `g=1`, `w=a+τb`, `y=Im τ` | `i∂∂̄(2(Im w)²/y) = (i/y)dw∧dw̄ = 2da∧db` | matches `2Σd_j da_j∧db_j`; `[N]^*ω=N²ω`; type `diag(1,2)` periods `2,4` | no change |
| B2.4 Checks | `[[2,1],[1,1]]` | eigenvalues `(3±√5)/2`, closure a 1-dim torus | semisimple rep, non-semisimple `G⁰` | no change |
| B2.5 Check | `⟨1/2⟩⊂ℝ/ℤ` | annihilator `2ℤ`, nonsaturated | holds | no change |
| B2.9 Checks | `x³` on `(−1,1)`; `x²`; `[0,1)→ℝ`; `m=0` | homeomorphism; image `[0,1)` not open; boundary excluded; `∅`, point | all hold; Hatcher 2B.3 line 3337 | no change |
| B2.14 Check | `t↦(t,t²)` | second derivative `2≠0` on any line | not Ax-type | no change |
| B3.2 Checks | upper half-plane | area `2π(cosh log T−1)=π(T+T⁻¹−2)`; `d(i,i+N)<log T ⟺ N²<T+T⁻¹−2`; fundamental domain `π/3` | hold; Gao–Ax Lemmas 4.3–4.5 lines 667–677 | no change |
| B4.3 hypotheses | Gao–Betti Thm 10.1 line 1276–1282 | (a)(b)(c), `m≥dim S−t`, `m≥dim X−t` | identical | no change |
| B4.4 | DGH Thm 6.2 line 1285–1288 | `g≥2`, `M≥3g−2`, quasi-finite `S→M_g` | identical | no change |
| B4.5 | Gao–Survey Thm 6.5 line 776–786 | (a)(b)(c), `M≥dim S`, generically finite | identical | no change |
| P0.3/P0.5 Checks | `𝔽₂·v`; rank two | `v·v=2v^{[2]}=0`, `v^{[2]}≠0`; `(x+y)^{[2]}=x^{[2]}+x⊗y+y⊗x+y^{[2]}` | hold; Roby Prop III.1 line 1526 | no change |
| P2.2 Check | elliptic | ranks `1+1+1=3`, `1+2+3=6`; kernels `1`, `3` | hold | no change |
| F1 example | `[p]` | `C([p])=p`, cokernel length `2g=v_p(p^{2g})` | holds | no change |
| ζ in F3.1c vs `pow_eq_one_of_norm_eq_one` | | integral unit with all archimedean absolute values 1 ⇒ root of unity (Mathlib, Embeddings.lean) | right input | no change |

**Cross-roadmap citations resolved** (seeded sample and every supplier line). AbelianSchemesAndArithmeticModuli (#849 e77dd51): A3.9 `Polarization.rosati` line 1686; A4.2 `AbelianVectorExtension` 1854; A4.3 `AbelianH1dR.hodgeSequence`, `baseChange`, `dualPairing` 1920–1922; A6.2 `homTateInjective` 2843; A6.5 `poincareReducibility` 2907; A6.7 `homFreeFinite` 2939; A6.8 `endQ_isSemisimple` 2959; A6.10 `End.charpoly` 3013; A6.11 `charpolyTate` 3028; A6.14 `rosatiPositivity` 3066; A6.18 `polarizedAutomorphisms` 3256; A6.21 `frobeniusSemisimple` 3346; A6.32 `weilRestrictionAbelian` and A6.33 `weilRestrictionTate` 3730–3756 (finite separable, dimension `[L:K]dim A`, `T_ℓ` induced); A1, A2.2, A4.1, A5.1–A5.3, A5.5–A5.6, A6.25 exist. FiniteFlatGroupsAndIntegralPadicHodgeTheory (#879 b4c015e): R07.1.2 `etaleGroupEquivContAction` 670; R07.2.10 `dieudonnePDivisible` 3390 (contravariant anti-equivalence, exact, perfect base change, `F,V`); R07.2.19 `exists_padic_charpoly` 3665 (statement as cited). ComplexComparisonPartII (#848): C0 line 915, C1.1 `localDolbeault` 1260–1267, C5 2326. ShimuraVarieties (#933): P.1 148, 3.5a–3.5d 801–855, 3.5b.1 821, §5.2 `TauCeti.Shimura.weight_one_algebraization` 1365 (statement matches), §§5.5–5.8 names 1433–1490. PELModuli (#966): M3.5 2966, M3.6 3056, M5 3494, M6 3758, M6.7 3931, M6.11 `finiteFieldFiniteness` 4066 (fixed polarization degree, as used in F0.1). JacobianChallengePartII (#1225): §2.6 371, §§5.3–5.4 831–861, §7.2 1085 (names: R05). GeometryOfNumbersAndQuadraticArithmetic (#851): §2.5 632, §2.7 `IntegralHermitianLattice.ofCarrier`/`.dual` 709–720, §3.3 1041. AlgebraicModuliForArithmeticGeometry (#853): Layer 2 1071, §5.2 `rigidLevelStructure` 8817, `ArithmeticModuli.auxiliary_level_comparison` 8809. LieGroupoidsPoisson (#1050): G0.1 line 300, no Hausdorff hypothesis. AdelicAlgebraicGroups (#792): Layers 1, 3, 4 at 1004, 2435, 3986 with the linked anchors. DeligneWeightsAndPurity (#929): DWP.0 0.1–0.3 at 561–611, DWP.1 1.4–1.5 at 960–970. On main (fa41b37): SchemeAndStackFoundations §1.18 `Stack.stackification` 2758, §1.21 `Stack.quotient`/`actionQuotient`/`quotientStack_algebraic` 2954–2967, §4.15 `StableCurves.Mbar`/`Mbar.smooth`/`Mbar.algebraicFiniteTypeDM`/`isom_stable_curves` 5727–5744, §§2.11, 2.16 (labels: R06); DerivedModuleAlgebra §0.DP.2 (line 105; "Free divided powers and symmetric tensors" line 227 inside it); AlgebraicVectorBundles L0B 228, L2B 340; DifferentialGeometry Layers 0–1 at 268–311, 12.1 at 915; SmoothBundlesConnections B6.0 1306; ComplexManifolds Milestone 1 172; ImaginaryQuadraticClassNumber H3.6 142; Completed/GlobalNumberFields `weakApproximation_denseRange` 262 (mixed finite/real places); Completed/HodgeStructures L0–L3 labels; Completed/ConformalMapping L3; ClassFieldTheory Layers 5/10/13 (920, 1552, 1799), RepresentationTheory/SemisimpleAlgebras Layers 4/5 (249, 274), Completed/Chebotarev Layer 14 (612), Completed/EffectiveBounds Layer 1 (103): all eight link fragments match their headings. PlanarTopology (#271) Layer 2 owns `invarianceOfDomain₂` as the README says. AbelianVarietiesOverFiniteFields (#1720) is a consumer ("Tate's theorem and Honda–Tate are Part II's"), not a second owner.

**Library declarations at the pins** (Mathlib 6b7abb3c, Tau Ceti a91d3aaf): `Polynomial.resultant` with default Sylvester sizes (Resultant/Basic.lean 131), `resultant_map_map` (137), `Polynomial.lifts_and_natDegree_eq_and_monic` and `lifts_iff_coeff_lifts` (Lifts.lean), `IsDiscreteValuationRing.addVal` (DiscreteValuationRing/Basic.lean 402), `PadicInt.appr_spec` (RingHoms.lean 405), `NumberField.Embeddings.pow_eq_one_of_norm_eq_one`, `MvPolynomial.mul_esymm_eq_sum`, `PiTensorProduct.reindex`/`reindex_tprod`/`map_reindex` (PiTensorProduct/Basic.lean 679–757), `DividedPowerAlgebra` (DividedPowerAlgebra/Init.lean), `stereographic'` and its source/target, `Continuous.isClosedEmbedding`, `IsOpen.pathComponentIn`, `Topology.IsOpenEmbedding.of_continuous_injective_isOpenMap`, `ContDiffAt.toOpenPartialHomeomorph` and `ContDiffAt.to_localInverse` (InverseFunctionTheorem/ContDiff.lean 31, 66), `NumberField.IsCMField`, `PadicInt.compactSpace`; Tau Ceti `symmetricTensors`, `TensorPower.oneEquiv`, `TensorPower.splitAt`, `Polynomial.Monic.resultant_deriv` (Resultant/Discriminant.lean 123), `Monic.discr_eq_prod_roots_sub_sq`, `Monic.discr_mul`, `Algebra.discr_powerBasis_eq_minpoly_discr`, the four JordanBrouwer/CubeComplement/Reduced homology theorems. Mathlib has no constant-rank theorem and Tau Ceti no invariance of domain, so B2.9 and B2.10 add new content.

**Source locators checked** (cache line numbers): LT Lemma 2.1 and Cor 2.2 (165–186), (39) 1067–1082, (51) 1237–1243, Lemma 5.8 1245, (52) 1314, Lemma 5.11 and (56) 1405–1418, Prop 4.11 768, Prop 4.16 842, Prop 4.17 907, Lemma 5.19 1554, §3 (9),(14),(15),(17),(19) 237–491, Remark 3.2 399; DPH Thm 1.3 79–83; Lee Thm 1.1 44–46, (5) 223, (10) 269, (11) 285; GH Prop 1.3 120, Prop 3.1 512, Thm 3.2 546, bounded-order claim 610, Lemma 5.2 proof 931–960, Prop 5.3 proof 1003; Deligne 4.1.2 1377, 4.2.6 1498, 4.2.9(a) 1610–1613, 4.4.3 1698; ConradTrace Def 6.1 966, Thm 6.2 971, Thm 6.4 1007, Thm 7.1 1079; TateHonda §3 Lemma 1 152 (PDF p.7 = printed 100, the numdam cover is page 1), Lemma 2 172, Lemma 3 194, Lemma 4 221, Lemma 5 241, proof of Lemma 3 253, Lemma 6 291; Roby §5 1416, shuffle 1476, Prop III.1 1526 (printed = PDF page + 211: pp.251–254); KS (2.1.3) 624, Thm 2.15 795, Thm 2.36 1203, Thm 3.5 1360, Cor 3.6 1417, Prop 5.9 2766 and its limit step 2783, Lemma 5.11 2805, Lemma 5.12 2855; Gao–Ax Def 2.1 359, Lemmas 4.3–4.5 667–677; Gao–Betti Thm 1.1 85, Thm 7.1 759, Thm 10.1 1276–1282; Gao–Survey Lemma 6.2 735, Thm 6.5 776–786; DGH Prop 2.2 341, Prop 2.7 532, Thm 6.2 1285; Tate Hyp 124, Prop 1 147, Prop 2 182, Thm 1 242 (GDZ scan with cover page; printed pages as cited); Waterhouse Thm 6.1 1196–1215 (printed 550–551); WM OCR (printed = PDF + 52); Milne §1 characteristic-polynomial criterion 85–120 (printed p.65); Hatcher Thm 2B.3 3337; MilneJV §12 Torelli 1707 (printed p.38); Conrad, Lemmermeyer, Kings, GGK, Tits (uncertified, cited by locator only) not re-read beyond existence.

**Shape.** House shape present (Summary, Scope and ownership, Conventions, Exact supplier contracts, How to read the build, layers with `### Examples`/`### Dependencies`, Downstream consumers, References). No process words, no pull-request numbers, no LaTeX, no `<a id=` anchors. Every definition I read has at least three discriminating Checks; every theorem a locator.

## Not verifiable

- Tits, *Free subgroups in linear groups* (B2.8): manifest `uncertified`; cited by locator only, as the brief settles it.
- F4.4's sharpened constants (R03): neither proved nor refuted here; I could not build a counterexample (the lattice counts I tried, including `γ=1+ℓ^cα` with `α` generating an unramified extension of degree 14 and `γ=diag(a_i)` with `a_i≡a_j mod ℓ^c`, stay below `ℓ^{2Δ_ℓ}`), and the source proves only the weaker exponents.
- Whether the plan's eight gaps have already been announced on the supplier jobs (R01): the board's job pages were not consulted.

## Source issues

- **Error** in LT at Lemma 2.1, printed p.5 (v1): the power sums `s_k` are placed in `[−g q^{k/2}, g q^{k/2}]` and counted as `2g q^{k/2}` values; a degree-`2g` polynomial with roots of modulus `√q` has `|s_k| ≤ 2g q^{k/2}` with `4g q^{k/2}+1` integer values (`g=1,q=4` gives 9 polynomials, the printed bound is 4); affects a stated result (the constants of Lemma 2.1 and Corollary 2.2, not their asymptotics).
- **Error** in LT at (51), printed p.30 (v1), and (56)/Lemma 5.11, p.33: the mass of unimodular hermitian lattices is given the leading term `[K:ℚ] n² log n` and the count of principal polarizations on `E^g` the leading term `g² log g`; the factorial product `(∏_{d=1}^n (d−1)!)^{[K:ℚ]}` of (39) gives `½[K:ℚ] n² log n`, respectively `½ g² log g`; affects a stated result (Lemma 5.11 and the numerical thresholds of Proposition 5.10, Theorems 0.2–0.3).
