# Review of CompletedCohomologyAndLocalGlobalCompatibility (pull request #1270 at 3bb343b)

**Verdict:** accepted

Incremental re-review of the 29 lines changed since b6c9115 (the head the previous review read): the normalisation contract item 8, §2.8's dyadic preamble and the two typed deformation-ring quotients with their new Checks, §3.2(c) and its proof step 4, §6.6's CC1/CC2 exports, and the `Suggested.lean` docstring. Every untouched passage is covered by the previous report; its findings are accounted for below.

## R01 (P3) — Tung's typed ring and Hecke image carry two names in the same section

**Location:** `TauCetiRoadmap/CompletedCohomologyAndLocalGlobalCompatibility/README.md:931` (“finiteness of `R^S_ψ(σ)` and faithfulness of `M_α(σ°)[1/2]`”, and the image “`T^{Tung}_{ψ,σ,α}`”), line 944 (“`M_α(σ°)[1/2]` with its `R^S_ψ(σ)`-action”), line 2041 §5.6(1)(c) (“`R^S_ψ(σ)` is a finite O-algebra”); against line 948 (“`R^{Tung,S}_{ψ_T}(σ_T)`”, “`T^{Tung}_{ψ_T,σ_T,α}`”).

**Claim.** The dyadic preamble says ψ and σ are Tung's native data and writes the typed ring `R^S_ψ(σ)` and the image `T^{Tung}_{ψ,σ,α}`; the theorem paragraph immediately below renames the same objects `R^{Tung,S}_{ψ_T}(σ_T)` and `T^{Tung}_{ψ_T,σ_T,α}`, while the Pan paragraph writes `R^{Pan,S}_ψ(σ)` with ψ, σ now Pan's data. On one page `R^S_ψ(σ)` is therefore ambiguous between the two branches the repair deliberately separated; §5.6(1)(c) and the CC1 Check inherit the ambiguity.

**Witness.** Lines 931 and 948 quoted above; TUNG-2 writes the ring `R^ψ_S(σ)` once (cache `a601da37…` line 1336, p. 28), so the source gives no second name.

**Repair.** Use one name per branch: write `R^{Tung,S}_{ψ_T}(σ_T)` and `T^{Tung}_{ψ_T,σ_T,α}` at lines 931, 944 and 2041 (and `σ_T°` for the lattice), or state once at line 931 that in the dyadic paragraphs `R^S_ψ(σ)` abbreviates `R^{Tung,S}_{ψ_T}(σ_T)`. Nothing mathematical changes. Not blocking.

## Previous findings

- R01 — repaired: §2.8 now states a Pan typed quotient (geometric Frobenius, determinant `ψε⁻¹`, PAN §§3.3.2/3.3.5) and a Tung typed quotient (arithmetic Frobenius, determinant `ψ_T ε`, TUNG-2 Prop. 4.2.5/§5.1.1/Prop. 5.2.2) as separate theorems; every transport assertion is gone. The repair took the second route the previous report offered. It introduced only the naming drift of R01 above (P3).

The four findings of the review before that (ordinary Eisenstein seed, §6.3 exponent, Serre-weight locators, Lean API names) were verified repaired at b6c9115 and are untouched by this diff.

## Verified sound

### Gate, dependency check and elaboration

Run on this head from the worktree:

```text
gate CompletedCohomologyAndLocalGlobalCompatibility: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
depcheck: 205 roadmaps, 1504 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `lake env lean` on `TauCetiRoadmap/CompletedCohomologyAndLocalGlobalCompatibility/Suggested.lean` exited 0 with no diagnostics (the file still declares nothing, so there is no `sorry` warning, no signature to `#check` and no one-tactic probe to run; the padding audit is vacuous). HEAD is `3bb343b4a9571972f5cba8d9a71444df25b953c1`; the worktree is clean; `git diff --stat origin/main...HEAD` outside the roadmap folder is empty.

### Sources behind the changed passages

Both texts were fetched through the sources service from arXiv; line numbers refer to the cached extractions (TUNG-2 = arXiv:1908.06174v3, cache `a601da37…`; PAN = arXiv:1901.07166v2, cache `59017112…`). Pages are the preprints' printed pages, which the README cites.

| README claim (changed text) | Source passage | Outcome |
|---|---|---|
| Tung works with arithmetic Frobenius (§2.8 Tung quotient, §3.2(c)) | TUNG-2 line 178, Notations p. 4: `Frob_v` is an arithmetic Frobenius; line 186: Artin map sends uniformizers to geometric Frobenius | Agrees. |
| Tung's global deformation problem of §4.2 with determinant `ψ_T ε`, local conditions away from p, `D^{□,ψ}` at v∣p and at v₁ | TUNG-2 lines 953–954, p. 20: the tuple with `D^{□,ψ}_v` (v∣p), odd conditions at ∞, Steinberg at Σ, `D^{□,ψ}_{v₁}`; §3.1 lines 563–569, 598, p. 12: liftings of type S with determinant ψε | Agrees. The README's “§3.1, pp. 11–12” overshoots by one page: §3.1 starts on p. 12 (p. 11 is §2). Not raised. |
| Prop. 4.2.5: lifting of `ρ̄_m` to `GL₂(T^S_ψ(U^p)_m)` for non-Eisenstein m, characteristic polynomial `X²−T_vX+q_vS_v` at `Frob_v`, type S, determinant ψε (cited pp. 19–20) | TUNG-2 lines 949–959, p. 20 (Lemma 4.2.4 on p. 19) | Agrees, including that m is a maximal ideal of the algebra containing `U_{ϖ_w}` for w∈W (line 887), so Tung's m is the README's `m_α`. |
| §5.1.1, p. 26: native locally algebraic type `σ(λ,τ)`/`σ^{cr}(λ,τ)`, Hodge type λ with `HT = {λ₂, λ₁+1}` and HT(ε) = −1, determinant ζε | TUNG-2 lines 1253–1264, p. 26; lines 194–200, p. 4 | Agrees; this is the independent labelling the Tung paragraph now uses. |
| Prop. 5.2.2(1)–(2), pp. 27–28: R∞-action factors through R∞(σ); H(σ) acts through the interpolation maps | TUNG-2 lines 1316–1325 | Agrees; the proof (line 1329) names finite-level local–global compatibility at v∣p, the input the README's factorisation paragraph uses. |
| Lemma 5.3.2(3), p. 28: `R^ψ_S(σ)` finite over O and `M(σ)[1/p]` faithful | TUNG-2 lines 1356–1360 | Agrees. |
| Pan: pseudo-representation with determinant `ψε⁻¹` at finite typed level (§3.3.2, p. 23) and over the big Hecke algebra (§3.3.5, p. 24), geometric Frobenius ↦ `T_v` | PAN lines 1005–1012 (p. 23), 1045–1048 (p. 24); line 258: `Frob_v` geometric | Agrees. Pan's finite-level algebra is generated by the `T_v` alone (line 996), so “determinant ↦ `q_v S_v`” reads `S_v` as the central scalar `ψ(ϖ_v)`, consistent with `ψε⁻¹(Frob_v) = ψ(ϖ_v) q_v`. |
| “Colmez twist of Pan Remark 3.5.3” (§3.2, unchanged sentence adjacent to the diff) | PAN lines 1235–1243, p. 29 | Agrees. |

### Supplier citations the changed passage adds or re-states

All resolved at the open heads the tools serve (none of these roadmaps is on main yet; all are earlier in the merge order):

- LocalGaloisDeformationRings §3.1 “p-adic Hodge types and Galois types” (head #923, line 2241): Hodge types, Galois types, coefficient transport. Correct for “hodge and galois types”.
- GlobalGaloisDeformations Layer R04.3 “Local conditions and global presentations” (head #920, line 399), with the fixed-determinant functors of its Layer 1. Correct for “global deformation problem and fixed determinant”.
- AutomorphicGaloisRepresentations §§4.4–4.7 (head #1007, lines 1948–1972): away-from-λ compatibility and the Kisin/Skinner coefficient-prime theorems at v∣p for Hilbert eigenpackets. Correct for “finite-level local–global compatibility”.
- CompletedCohomologyPartII §3.14 “Coefficient-module duality” (head #1035, line 1041); HilbertModularVarietiesAndShimuraCurves R18.3 definite algebras (head #1005, line 75).
- Consumer: GL2ModularityLifting (head #1071) CC1, line 197, is already two separate items (Tung Lemma 5.3.2's typed comparison; Pan's classicality comparison) and CC2, line 198, cites Tung §4.2's representation with determinant ψε; the split exports of §6.6 match the consumer verbatim in substance. Its §§9.1–9.3 exist (lines 2393–2428).

No citation of a roadmap later in the merge order was added; the citation resolver's two Lean-name leads are the planned supplier-contract names verified in the previous report.

### Consistency of the split across the README

Every passage that names §2.8 was re-read (lines 170, 209, 1743, 1852, 1864, 1964, 2003, 2015, 2036, 2062, 2271, 2273, 2285, 2316). None asserts a Pan↔Tung transport any more; the only remaining “bridge” wording (line 2312, “normalisation bridge of §6.3”) is the `det^b`/`det^{b+1}` comparison repaired earlier. §5.6(1)(c) and the CC1 Check consume the Tung quotient under the older name (R01). §3.7's auxiliary paragraph (lines 1256–1258) fixes the uniformizer `ϖ_{v₁}`, so the “arithmetic Frobenius polynomial at v₁” of the new augmented-factor paragraph is the characteristic polynomial at the Frobenius lift attached to that uniformizer; this matters because `q_{v₁}` is odd, hence `≡ 1 mod 2`, so lifts may be tamely ramified at v₁ under `D^{□,ψ}_{v₁}`.

### Adversarial values

New rows carry the values computed for every changed statement; the rows for untouched statements are carried from the previous report, each marked so. “Retain” means the stated hypotheses reject the negative control.

| Statement | Instances | Computed values on the two sides / wrong model | Result; change |
|---|---|---|---|
| Contract item 8: branches use their own residual representation, character, type, Hecke factor; no change of presentation | geometric `diag(2,3)` at q=7 over ℚ₅ | Pan side: trace 5, det 6, det label `ψε⁻¹`; Tung side on its own data: polynomial `X²−T X+qS` at arithmetic Frobenius with its own T, S; no equation between the two T's is asserted | Consistent: the three candidate identifications of the previous R01 (1/2, 2, 7/2 for the root) are no longer selected or needed; no change. |
| §2.8 Pan typed quotient: `R^{Pan,S}_ψ(σ) → T^{Pan,S}_{ψ,σ}(U^pK_p)_m`, geometric trace ↦ `T_v`, det ↦ `q_vS_v` | v∉S with `ψ(ϖ_v)=s`, `ε(Frob_v^{geom}) = 1/q_v` | `det ρ(Frob_v) = ψε⁻¹(Frob_v) = s·q_v`; `S_v` acts on `S_ψ` by `ψ(ϖ_v)=s`; product `q_vS_v = q_v s` | Equal; matches PAN line 1008; no change. |
| §2.8 Pan typed quotient: Eisenstein control | m with residual trace `1+ε̄` | absolutely irreducible hypothesis false; theorem gives no surjection; type module may still be nonzero (constants) | Retain; the Check at line 957 states exactly this. |
| §2.8 Pan typed quotient: incompatible type | σ with wrong central character | typed space 0, faithful image the zero ring, surjection onto 0 | Retain; no faithfulness inferred; Check at line 958. |
| §2.8 Tung typed quotient: `R^{Tung,S}_{ψ_T}(σ_T) → T^{Tung}_{ψ_T,σ_T,α}`, arithmetic trace ↦ `T_v`, det ↦ `q_vS_v` | arithmetic `Frob_v` with `ε(Frob_v^{arith}) = q_v`, `ψ_T(Frob_v)=s` | `det = ψ_Tε(Frob_v) = s q_v`; TUNG-2 polynomial `X²−T_vX+q_vS_v` (line 958) gives constant term `q_vS_v = q_v s` | Equal; no change. |
| §2.8 Tung typed quotient: Hodge labelling independent of the Pan branch | Tung weight λ=(0,0); README cohomological λ_alg=(0,0) | Tung: HT = {0, 1}; cohomological dual convention: h=(1,0): same set {0,1} by two different rules; with λ=(1,0): Tung HT={0,2}, cohomological h=(1,−1) | Different labelling rules give different sets in general; the text no longer identifies them; no change. |
| §2.8 augmented factor: `U_{ϖ_{v₁}}` ↦ Hensel root lifting α | `(X−2)(X−3)` over ℤ₅ | f′(2)=2·2−5=−1, unit; f′(3)=1; roots lift uniquely to 2 and 3 | Check at line 960 correct. |
| §2.8 augmented factor: repeated residual root | `(X−2)²` and `(X−2)²−5` over ℤ₅ | f′(2)=0; `(X−2)²=5` needs √5∈ℚ₅, impossible (odd valuation) | Hypothesis of distinct roots is necessary; Check at line 960 correct. |
| §2.8 augmented factor at p=2 | `X²+X+1` over ℤ₂[ζ₃] (unramified quadratic, −3≡5 mod 8) | reduction has roots ω≠ω² in 𝔽₄; f′ ≡ 1; lifts ζ₃, ζ₃²; control `X²−1` over ℤ₂: 1≡−1 mod 2 | Check at line 961 correct; the construction is not blocked at p=2. |
| §2.8 augmented factor: tame ramification at v₁ | p=2, any v₁∤2: `q_{v₁}` odd | `q_{v₁} ≡ 1 mod 2`, so the 2-part of `k(v₁)^×` is nontrivial and `D^{□,ψ}_{v₁}` admits tamely ramified lifts | The Frobenius polynomial must be taken at the lift attached to the fixed `ϖ_{v₁}` of §3.7; so read, the claim holds; no change. |
| §2.8 augmented factor: Hensel over the coefficient ring | `T_{m_α}` profinite local (TUNG-2 Lemma 4.2.4) | complete local ring; monic quadratic with residual roots α≠β has exactly one root ≡ α | Uniqueness justified; no change. |
| §2.8 Check: Frobenius change, dual, twist | geometric `diag(2,3)`, q=7, p=5 | arithmetic: (5/6, 1/6), root 1/2; dual at arithmetic: (5, 6), root 2; ε-twist at arithmetic: `ε=7`, (35/6, 49/6), root 7/2 | All three values as printed at line 959; distinct, so the Check discriminates; no change. |
| §3.2(c): two native existence theorems, separate use | Pan pseudo-representation; Tung representation | Pan: `T_ψ: G_{F,S} → T_ψ(U^p)`, det `ψε⁻¹`, Frobenius geometric; Tung: `ρ_{m_α}` over `T^{Tung}_{ψ_T}(U^p)_{m_α}`, det `ψ_Tε`, Frobenius arithmetic | Both supported (PAN line 1047; TUNG-2 line 955); no identification asserted; no change. |
| §3.2 proof step 4: each construction applied to its own residual factor and typed quotient | residually reducible m in Pan's branch | only the determinant exists over `T_m`; the typed-quotient theorem of §2.8 does not apply (non-Eisenstein hypothesis) | Consistent with §3.8 handling that case; no change. |
| §6.6 CC1/CC2 exports | consumer text GL2ModularityLifting lines 197–198 | CC1: Tung Lemma 5.3.2 typed comparison + Pan classicality (two items); CC2: Tung §4.2 representation with det ψε | Export and consumer agree item by item; no change. |
| Lean docstring sentence (lines 47–50) | — | zero declarations; sentence asserts non-statability of both typed quotients | Consistent with the file; no padding possible; no change. |
| Conventions: centre | scalar uI, det representation | det(uI)=u², not u | Carried from the review at b6c9115: Retain. |
| §0.1 Integral criterion | id:O→O | residual map id, kernel=0; integral cokernel=0 | Carried from the review at b6c9115: Retain. |
| §0.1 Rational-isomorphism hypothesis | O→O², x↦(x,0) | residual kernel=0 but cokernel=O; rational dimensions 1≠2 | Carried from the review at b6c9115: Correctly excluded. |
| §0.1 Residual-socle hypothesis | multiplication by ϖ | rational kernel/cokernel=0; residual map=0; integral cokernel=k | Carried from the review at b6c9115: Correctly excluded. |
| §0.1 Admissibility | infinite sum of trivial k | invariants dimension=∞ versus required finite dimension | Carried from the review at b6c9115: Correctly excluded. |
| §0.1 Ordinary parts | generic χ≠χ^w | Hom_T(χ,χ^w)=0; identity of Ind from opposite Borel≠0 | Carried from the review at b6c9115: Opposite Borel is essential; retain. |
| §0.1 Zero functors | zero representation | ordinary parts=0, Jacquet=0 | Carried from the review at b6c9115: Retain. |
| §0.2 Correspondence/endomorphisms | split distinct characters; nonsplit extension with distinct characters | End dimensions 2 and 1 | Carried from the review at b6c9115: Separate residual branches retained. |
| §0.2 Compact dual character | ψ(g)=2 | dual scalar=1/2; product=1 | Carried from the review at b6c9115: Inverse central character retained. |
| §0.3 Algebraic factor | (a,b)=(0,−1),(0,−2),(0,−3) | dimensions 1,2,3; scalar actions 1,u⁻¹,u⁻² | Carried from the review at b6c9115: Agrees with dual Sym powers. |
| §0.3 Unitary hypothesis | diag(5,1/5) on Sym² | eigenvalues 25,1,1/25; largest 5-adic norm=25 | Carried from the review at b6c9115: Algebraic carrier alone is not a unitary Banach representation. |
| §0.3 Type multiplicity | supercuspidal π and unramified twist | K-type Hom dimension 1 at both; wrong inertial class dimension 0 | Carried from the review at b6c9115: Retain type rather than full π. |
| §0.4 Schur and small primes | p=3; p=2 | at p=3, ω⁻¹=ω; at p=2, ω=1 | Carried from the review at b6c9115: Exceptional branches cannot be inferred from p≥5. |
| §0.4 Ring identification | k→k[η]/η² | ranks 1 and 2; residual points both one | Carried from the review at b6c9115: Finite map/residual agreement is not isomorphism. |
| §0.5 Irreducible Serre weights | p=5,a=3,b=1 | (r,s)=(1,3),(3,2); dimensions 2,4; Hecke T=0 on both | Carried from the review at b6c9115: Matches dual-weight recipe. |
| §0.5 Reducible Hecke module | unramified characters with geometric eigenvalues 2,3 | inertia-Hom dimension 2; T eigenvalues 2,3 rather than 0 | Carried from the review at b6c9115: Distinguishes reducible from irreducible recipe. |
| §0.6 Cohomological bound | heights n=1,2 | bound 2(n−1)=0,2; zero coefficient gives every Sⁱ=0 | Carried from the review at b6c9115: No unjustified degree-two vanishing at n=2. |
| §0.6 Height components | rank 2, scalar ϖI | determinant valuation=2; quotient height classes=ℤ/2 | Carried from the review at b6c9115: Do not collapse all heights to one. |
| §0.6 Torsion coefficients | (E/O)[ϖ^j] | O-length=j, not a free O-module | Carried from the review at b6c9115: Torsion and integral coefficient limits distinguished. |
| §0.7 Definite group | norm-one rank-one torus at a real place | real points S¹ compact; GL₁(ℝ)=ℝ× noncompact | Carried from the review at b6c9115: Correct definite form retained. |
| §0.7 Stabilizer/trace | C₂ on ℤ/4 by sign; index 2 over 𝔽₂ | invariants={0,2}; trace on constants=2=0 | Carried from the review at b6c9115: No division by the index integrally. |
| §1.1 Coefficient tower | one point, O/ϖ^n | inverse limit O; quotient modulo ϖ=k | Carried from the review at b6c9115: Correct order of the two limits. |
| §1.2 Regular module | C(K,k)^r and open U | dim invariants=r[K:U]; r=0 gives 0 | Carried from the review at b6c9115: Finite generation/admissibility has concrete content. |
| §1.2 Rational averaging | finite index d | normalized trace on invariant vector=d/d=1 | Carried from the review at b6c9115: Denominator allowed after inverting p, not in k. |
| §1.3 Degree two | pullbacks ×p on O | finite H²_c=O; colimit O[1/p]; completion=0 | Carried from the review at b6c9115: Completed vanishing does not say finite H²_c=0. |
| §1.3 Hecke twist | ℓ=2, (a,s)=(−2,1), ψ=ε | (a′,s′)=(−1,1/4); determinant 2s′=1/2 | Carried from the review at b6c9115: Correct inverse powers. |
| §1.4 Non-Eisenstein boundary | residual χ₁⊕χ₂ versus irreducible ρ̄ | boundary eigen-trace χ₁+χ₂; irreducible localization=0 | Carried from the review at b6c9115: Irreducibility cannot be dropped. |
| §1.4 Pro-p invariants | free dual of rank r, index d | regular invariants dimension rd | Carried from the review at b6c9115: Correct regular-representation conclusion. |
| §1.5 Duality | H=E/O, A_n=O/ϖ^n | Tate module=O; continuous O-dual of O=O | Carried from the review at b6c9115: Divisibility gives the advertised integral lattice. |
| §1.5 Nondivisible control | H=(E/O)[2] at p=2 | H≠0, transition inverse Tate limit=0 | Carried from the review at b6c9115: Divisibility is essential. |
| §1.6 Rational centre | odd mod-4 ψ on ℚ, O=ℤ₂ | −1 forces 2f=0; O-valued space=0, E/O-valued values include k | Carried from the review at b6c9115: Rank formula retains compatibility. |
| §1.6 Closedness | nonzero indiscrete 𝔽₃ space | {0}≠whole space and is not closed | Carried from the review at b6c9115: Hausdorff assumption necessary. |
| §1.6 Character twist | ψ=1, norm character θ | new central value θ(u²)=θ(u)² | Carried from the review at b6c9115: ψθ² rather than ψθ. |
| §1.6 Translation direction | S₃, g=(12),h=(23) | gh=(123), hg=(132) under usual right-to-left composition | Carried from the review at b6c9115: Inverse pullback preserves multiplication; forward pullback reverses it. |
| §1.7 Freeness/projectivity | two free class orbits | functions=C(K)^2, dual=O[[K]]² | Carried from the review at b6c9115: Rank two; stabilizers cannot be discarded at coarse level. |
| §1.7 Fixed character | −I at p=2, nonzero finite reduction | prescribed sign becomes 1 modulo 2; k[C₂]=k[t]/t², trivial k not free | Carried from the review at b6c9115: Projectivity is in the specified central-character category. |
| §2.1 Classical algebraic weights | k=2,3 | dim Sym^(k−2)=1,2; central dual weights 0,−1 | Carried from the review at b6c9115: Correct dual in evaluation. |
| §2.1 Lie-algebra correction | trivial sl₂ coefficient | H⁰ dimension 1, H³ dimension 1 | Carried from the review at b6c9115: H⁰ correction is not erased by a blanket higher-degree assertion. |
| §2.2 Mahler density | f=1 and f(x)=x | coefficients (1,0,…) and (0,1,0,…); partial sums already exact | Carried from the review at b6c9115: Polynomial span, not just constants. |
| §2.3 Good weights | p=5, r=3 and r=4 | r=3 is below boundary; r=4 with overlapping determinant weight is excluded | Carried from the review at b6c9115: Good is a real extra condition. |
| §2.4 Upper bound | weight absent globally but locally predicted | occurrence multiplicity=0; local allowed-set indicator=1 | Carried from the review at b6c9115: Upper inclusion permits this; no converse asserted. |
| §2.4 Good-weight multiplicity | rank-two ρ̄, one-dimensional multiplicity | tensor dimension 2·1=2 | Carried from the review at b6c9115: Does not force every weight to have multiplicity one without goodness. |
| §2.5 Classical eigenvalues | level-11 form, ℓ=2, p=3 | polynomial X²+2X+2 mod3 has values 2,2,1 at 0,1,2 | Carried from the review at b6c9115: Correct irreducibility test and trace/determinant signs. |
| §2.5 Level-11 ordinary test | p=5, #E(𝔽₅)=5 | a₅=5+1−5=1 | Carried from the review at b6c9115: Ordinary, unlike a_p=0 branch. |
| §2.6 Duality twist | geometric Frobenius at 2 | ε=1/2, tensoring twice gives 1/4 | Carried from the review at b6c9115: Tate twist remains visible in the homological comparison. |
| §2.7 Weighted forms | transitive two-point K-set, trivial W | invariants dimension 1, all functions dimension 2 | Carried from the review at b6c9115: Weighted forms are not all functions. |
| §2.7 Evaluation/dual | X=K, scalar t=2 | f(k)=ρ(k)w; dual scalar 1/2; pairing product 1 | Carried from the review at b6c9115: Replacing the dual by W gives factor 4. |
| §2.7 Fixed-point control | k fixes x, scalar 2 on W | f(x)=2f(x) implies f(x)=0 | Carried from the review at b6c9115: Constant nonzero wrong model excluded. |
| §2.8 Tensor side | t=2 on σ, u=1/2 or 2 on M | balancing t⁻¹−u=0 or −3/2 | Carried from the review at b6c9115: Right inverse action selects precisely the dual summand. |
| §2.8 Type/weight dual | W=det, scalar u=2 | W scalar=4; W* scalar=1/4 | Carried from the review at b6c9115: Central-character labels must change with the dual. |
| §2.8 Rank and auxiliary factor | c classes, type dimension d; oldform pair | rank=cd before localization; two U-lines become one after e_α | Carried from the review at b6c9115: Selected and spherical factors distinguished. |
| §3.1 Derived/cohomological images | k[η]/η²→k | nilpotent kernel (η), dimension 1 over k; residual labels identical | Carried from the review at b6c9115: No ring isomorphism inferred from labels. |
| §3.2 PAN-I normalisation | ℓ=2,T=−2,S=1 | PAN-I trace/det=(−1,1/2); ε⁻¹ twist gives (−2,2) | Carried from the review at b6c9115: Source supports the cohomological formula after that twist. |
| §3.2 Inflation | element in kernel of ramification quotient | image=1; rank-two determinant polynomial=(X−1)² | Carried from the review at b6c9115: Correct direction of quotient. |
| §3.3 Noetherian input | square-zero ring with infinitely many ε_i | cotangent dimension=∞, versus finite for complete noetherian local ring | Carried from the review at b6c9115: Profinite alone is insufficient. |
| §3.4 Residual projector | T=T₁×T₂ | e=(1,0), e²=e, other factor maps to 0 | Carried from the review at b6c9115: Inherited topology, not an arbitrary module completion. |
| §3.4 Completion negative control | Mahler shift Δ | Δ binom(x,n+1)=binom(x,n); Δ is onto, so Δ-adic quotients=0 | Carried from the review at b6c9115: Ordinary ideal completion can erase a nonzero module. |
| §3.5 Cayley–Hamilton action | diag(1,2), trace 3+x, determinant 2+y | CH defect diag(y−x,y−2x); zero forces x=y=0 | Carried from the review at b6c9115: Two coefficients really determined. |
| §3.5a Allowable point | roots (1,2) versus (1,1) | discriminants 1 and 0 | Carried from the review at b6c9115: Repeated-root exclusion is not just non-diagonalizability. |
| §3.5a Eigenvariety dimensions | one weight parameter plus central parameter | dimensions 1 and 1+1=2 | Carried from the review at b6c9115: Fixed-centre and full character spaces differ. |
| §3.6 Crystalline locus | good reduction versus Steinberg | monodromy ranks 0 and 1 | Carried from the review at b6c9115: Classical alone does not mean crystalline. |
| §3.6 Density use | k[x]→k, x↦0 | dense target point, kernel (x)≠0 | Carried from the review at b6c9115: Source-side density needed for R=T. |
| §3.7 Eisenstein summand | discriminant-2 class-number-one tower, minimal level | constants rank 1; T_ℓ=1+ℓ; weight-two cusp space at level 2 has dimension 0 | Carried from the review at b6c9115: Constants cannot be declared cuspidal. |
| §3.7 Selected factor | residual roots α≠β | spherical oldform dimension 2; e_α rank 1; e_α²=e_α | Carried from the review at b6c9115: Retain auxiliary U and root. |
| §3.7a Character generators | p=5, two p-places, χ̄ values (2,2) | choices (1,2) and (2,1) both have trace 3 | Carried from the review at b6c9115: Trace alone does not prescribe ordinary characters. |
| §3.7a Mixed cusp argument | same example | θ̄=(1,3), θ̄χ̄=(2,1); each nontrivial somewhere | Carried from the review at b6c9115: Endpoint argument is genuinely separate. |
| §3.7a Ideal properness | ring k; all discrepancies 0 or one discrepancy 1 | quotient k or 0 | Carried from the review at b6c9115: Existence theorem excludes the latter. |
| §3.7a Lift independence/L-value | c replaced by c+ϖd; unit versus ϖ | discrepancy difference −ϖd; valuations 0 versus 1 | Carried from the review at b6c9115: Ideal unchanged; endpoint hypothesis not automatic. |
| §3.8 Promodular image | surjection R→R/I | image V(I); I=0 gives all, I=(1) gives empty | Carried from the review at b6c9115: Both directions of kernel containment hold. |
| §3.8 Surjectivity control | ℤ→ℚ | kernel=0 but (2) has no inverse image point | Carried from the review at b6c9115: Image=V(kernel) requires surjectivity. |
| §4.1 Empty product/family | Σ₀ empty; M=T/I | W=T; derivative rank 1; End_T(M)=T/I | Carried from the review at b6c9115: Empty product is the unit, not zero. |
| §4.2 Toric Frobenius | split multiplicative J₀(11) | X*(T): scalar 1; T_p(T): geometric scalar 1/11 | Carried from the review at b6c9115: Dual and Tate twist both retained. |
| §4.3 Evaluation | V=E² trivial, H=E | Hom(V,H)⊗V has dimension 4, target dimension 1 | Carried from the review at b6c9115: Arbitrary evaluation is not injective. |
| §4.3 Cancellation | V=0; f:O→0 | tensor map 0→0 is iso, f is not | Carried from the review at b6c9115: Nonzero tensor factor is essential. |
| §4.4 Integral comparison | ×ϖ:O→O | rational iso; residual map 0; integral cokernel k | Carried from the review at b6c9115: Saturation/residual hypotheses retained. |
| §4.4 Semisimplification | 2×2 unipotent Jordan block versus identity | both eigenvalues (1,1); ranks of g−1 are 1 and 0 | Carried from the review at b6c9115: Equal semisimplifications do not identify integral modules. |
| §4.5 Nonzero versus embedding | projection B₁⊕B₂→B₁ | map≠0, kernel=B₂ | Carried from the review at b6c9115: Nonzero-map clause alone cannot give an embedding. |
| §4.5 Irreducible source | nonzero map from simple B | kernel is a proper subobject, hence 0 | Carried from the review at b6c9115: Correct additional embedding route. |
| §4.6 Mod-p restrictions | p=2,3 | condition p>2 evaluates false,true | Carried from the review at b6c9115: p=2 is a separate weaker theorem. |
| §4.7 Scalar endomorphisms | rank-one scalar module vs split two-character module | End dimensions 1 versus 2 | Carried from the review at b6c9115: Scalar residual endomorphisms retained. |
| §4.8 Support | M=0; M=k[x]/(x) | supports ∅ and {(x)}; fibre dimensions 0, and 1 at x=0/0 away | Carried from the review at b6c9115: Nonzero/full-support assertions are separate. |
| §4.9 Multiplicity | π repeated r times, End π=E | Hom dimension r; oldform pair r=2 | Carried from the review at b6c9115: Does not confuse multiplicity with dim π. |
| §4.10 Block evaluation | P=E, M=E^r | Hom(P,M)⊗P=E^r; off-block Hom=0 | Carried from the review at b6c9115: Correct right endomorphism action and block separation. |
| §4.11 Dimension | d=[F:ℚ]=1,2 | lower bounds 3,5; uniform central quotient dimensions 3,6 | Carried from the review at b6c9115: Constants in the dimension comparison agree. |
| §4.11 Classicality restriction | local split sum versus absolutely irreducible local representation | invariant line dimensions ≥1 versus 0 | Carried from the review at b6c9115: Irreducibility is not dispensable. |
| §4.12 Quaternion exchange | invariants at p and ∞ | (0,1/2) becomes (1/2,0); geometric dimensions 0 and 1 exchange | Carried from the review at b6c9115: Same quaternion algebra is not used on both sides. |
| §5.1 Patched projectivity | central ring O[[s,t,u]], imposed t=u | t−u annihilates module; nonzero projective over domain has no such torsion | Carried from the review at b6c9115: Fixed-character category is essential. |
| §5.1 Zero/augmentation | zero coefficient; no Taylor–Wiles variables | patched module=0; augmentation ideal=(0) | Carried from the review at b6c9115: No positivity or loss of framing variables inferred. |
| §5.2 Hodge convention | λ=(0,0),(1,1),(1,0) | h=(1,0),(0,−1),(1,−1) | Carried from the review at b6c9115: Dual convention applied in stated order. |
| §5.2 Lattice and root | σ° and ϖσ°; selected oldform pair | rational types identical; selected multiplicity 1 versus spherical 2 | Carried from the review at b6c9115: Integral lattice and auxiliary factor retained. |
| §5.2a Triangulations | ranks 1,2 with distinct eigenvalues | numbers of ordered refinements 1,2; repeated-root ratio=1 | Carried from the review at b6c9115: Regularity exclusions are meaningful. |
| §5.2a Nonreduced coefficients | A=E[η]/η² | multiplication by η≠0 over A, equals 0 on residue fibre | Carried from the review at b6c9115: Field points alone do not define the deformation functor. |
| §5.2a Saturation | tR⊂R | quotient R/tR is torsion and not projective | Carried from the review at b6c9115: Injection alone is not a triangulation. |
| §5.3 Components versus full support | R=k[x,y]/xy, M=R/(x) | support=V(x), misses generic point of V(y); Ann=(x) | Carried from the review at b6c9115: Union of components is weaker than full support. |
| §5.3 Reducedness | R=k[η]/η², M=k | full support; Ann=(η)≠0, Ann²=0 | Carried from the review at b6c9115: Near faithful does not imply faithful here. |
| §5.3 Scalar annihilator test | M=R/I, generator 1; empty generators | Ann(1)=I; Ann(0 module)=R | Carried from the review at b6c9115: Finite-module hypotheses not silently imported for Iwasawa-finite objects. |
| §5.4 Montréal multiplicity | n_y=1,2 | dimensions 2n_y=2,4 | Carried from the review at b6c9115: Nonzero fibres and multiplicities are not rank-one assertions. |
| §5.5 Dyadic normalization | A=ℤ₂[z]/z(z+2) | rank over ℤ₂=2; special length 2; divide by 2 gives 1 | Carried from the review at b6c9115: Full determinant fibre versus invariant ring distinguished. |
| §5.5 Multiplicity additivity | two copies of previous module | special length 4; normalized multiplicity 2 | Carried from the review at b6c9115: Normalization does not erase module multiplicity. |
| §5.5 Torsor rank | t=0,1,2 | 2^t=1,2,4 | Carried from the review at b6c9115: Rank and coefficient base change agree. |
| §5.5a Partial type | only one dyadic place | empty tensor=O; partial operation leaves M unchanged | Carried from the review at b6c9115: One-place action survives. |
| §5.5a Zero components | selected component module zero | rational fibre=0, Montréal fibre=0 | Carried from the review at b6c9115: Explicit nonzero hypothesis blocks a false full-support conclusion. |
| §5.5a Invariant base | z(z+2)=0, choose z=0 | component quotient rank 1; full fibre rank 2 | Carried from the review at b6c9115: Must base change the invariant data consistently, not reuse the unquotiented base. |
| §5.5a Semilinear support | involution z↦−2−z | branches z=0 and z=−2 exchanged | Carried from the review at b6c9115: Transitivity needs the compatible module action, not just ring automorphisms. |
| §5.6 Full support | R reduced, Ann(M) nilpotent | Ann(M)⊂nilradical=0 | Carried from the review at b6c9115: The reducedness step is indispensable. |
| §5.7 Nice-prime kernel | k[[t]][η]/η²→k[[t]] in char p | source quotient dimension 1; kernel=(η)≠0 but square=0 | Carried from the review at b6c9115: Nilpotent kernel, not integral R=T. |
| §5.7 Oddness/dihedral condition | complex conjugation diag(1,−1) | determinant −1, trace 0; scalar identity determinant 1 | Carried from the review at b6c9115: Odd reconstruction and the extra dihedral hypothesis remain distinct. |
| §5.8 Residual seed | modular seed present/absent | assumption (5) true/false; theorem applies only to first | Carried from the review at b6c9115: No replacement by the full Serre theorem in the independent route. |
| §5.8 p=3 local exclusions | ω of order 2 | ratios ω and ω⁻¹ coincide | Carried from the review at b6c9115: Both extension orientations still matter. |
| §6.1 Classicality cases | self-extension of χ; split distinct weights | weights (h,h) versus (h₁,h₂), h₁≠h₂ | Carried from the review at b6c9115: Self-extension cannot enter distinct-weight branch. |
| §6.1 Prime range | p=2,3 | p>2 false,true | Carried from the review at b6c9115: Promodularity theorem does not cover p=2. |
| §6.2 Density/reducedness | k[x]→k; k[η]/η²→k | kernels (x) and (η), respectively nonnilpotent and nilpotent | Carried from the review at b6c9115: Both source density and reducedness required. |
| §6.2 Unobstructed dimension | O[[x₁,x₂,x₃]] | relative dimension 3, total dimension 4 | Carried from the review at b6c9115: Remark correctly conditional on H²=0. |
| §6.3 Corrected lattice | k=4,u=6 | A_(0,−3) scalar=6²·6⁻⁴=1/36; dual Sym²=1/36 | Carried from the review at b6c9115: Previous R02 repaired. |
| §6.3 Printed exponent control | same weights with detᵇ | 6²·6⁻⁶=1/1296≠1/36 | Carried from the review at b6c9115: Source slip not propagated. |
| §6.3 Pairing range | degree n=2, coefficient characteristic 2 | symmetrization factor 2=0; over E it is invertible | Carried from the review at b6c9115: No integral perfectness claim. |
| §6.4 Niveau-two CM seed | p=5,r=0 | exponents 1 and 5 modulo 24 differ | Carried from the review at b6c9115: Induction is irreducible; scalar inertia model fails. |
| §6.4 Unramified twist | Satake pair (α,β) multiplied by u | ratio uα/uβ=α/β | Carried from the review at b6c9115: Globalization up to twist does not prescribe all eigenvalues. |
| §6.5 Independence | seed via hypothesis versus seed via Serre | dependency uses 0 versus 1 invocation of full Serre | Carried from the review at b6c9115: Branches are correctly labelled. |

The carried block has 119 rows; the previous rows “Conventions: Frobenius and dual”, “Conventions: twist”, “§2.8 Change of Galois presentation”, “§3.2 Modular determinant” and “§6.6 Exports” are superseded by the new rows above.

### Seeded sample

The fifteen seeded targets (§§0.7, 1.5, 2.1, 2.7, 3.4, 3.8, 4.1, 4.3, 4.6, 4.9, 4.10, 4.11, 5.2, 5.6, 5.8) lie outside the 29 changed lines; the previous report's source checks of them stand. The four that consume §2.8 (§2.7 as its input; §§5.2, 5.6 and 4.11(5) as its consumers) were re-read at this head for agreement with the split: §5.2 uses §2.8's finite-level type compatibility and side convention only; §5.6(1)(c) is Tung's Lemma 5.3.2(3) on `M_α(σ°)` (naming drift R01); §4.11(5) is exported under CC1 as Pan's own classicality.

### Principles, duplication, ownership

The diff adds no route-specific restriction, re-plans no roadmap, copies no passage, introduces no algorithm, `set_option` or sorry'd data, and no file outside the folder. The two typed quotients are instances of the generic deformation-to-Hecke surjection on this roadmap's own arithmetic Hecke images; the generic deformation rings are cited from LocalGaloisDeformationRings and GlobalGaloisDeformations and the finite-level compatibility from AutomorphicGaloisRepresentations, none restated. Ownership against open pull requests was checked through the roadmap tools for these three suppliers and the consumer; the broader object-level ownership table of the previous report is unchanged by this diff.

## Not verifiable

- RIBET-90, Proposition 3.8, remains at its settled uncertified status; it is not touched by this diff.
- The empty Lean file verifies no theorem; the report certifies source agreement of the changed passages and the computed checks above.

## Source issues

- none
