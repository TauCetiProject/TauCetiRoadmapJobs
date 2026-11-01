# Review of EndoscopicTransferAndUnitaryTraceComparison (pull request #999 at 7205732)

**Verdict:** accepted

🤖 AI-assisted incremental re-review of 20 changed lines since 8842d06. No findings. The previous report had none to carry forward. The one substantive change, importing the local Jacquet–Langlands correspondence into §4.7a from PadicLocalLanglandsForGL2Qp §6.9 instead of reproving it, resolves against the supplier at its open head with the same statement, sign convention and direction, and introduces no upward edge or cycle. This verdict means ready for a human's final approval.

## Previous findings

- The previous report (at 8842d06) recorded no findings; nothing to account for.

## Verified sound

**Scope and mechanical evidence.** `git diff --stat 8842d06 HEAD` shows one file, `TauCetiRoadmap/EndoscopicTransferAndUnitaryTraceComparison/README.md`, with 12 insertions and 8 deletions: the new supplier bullet at line 103 and the rewritten §4.7a at lines 1872–1891. `Suggested.lean` (44 lines, `import Mathlib` only, no declarations) and `metadata.toml` are unchanged. The diff against `origin/main` outside the folder is empty; the worktree is clean at `720573204ce7b104f040fd84c1cb6465a505981d`. Nothing in the pull request was edited.

The gate rerun on this head:

```text
gate EndoscopicTransferAndUnitaryTraceComparison: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

`lake env lean` on `TauCetiRoadmap/EndoscopicTransferAndUnitaryTraceComparison/Suggested.lean` exited 0 with no output; `lake build TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparison.Suggested` reported `Build completed successfully (8976 jobs).` With no declaration there are no signatures to compare, no lost-binder probes and no padding probes; the module docstring's list of non-statable headlines is unchanged from the previous round.

The dependency check with `--movable` against the supplied order and main content:

```text
depcheck: 205 roadmaps, 1511 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The new edge to PadicLocalLanglandsForGL2Qp points at merge-order line 28, well before this roadmap at line 132.

**The changed passage, resolved against the supplier.** PadicLocalLanglandsForGL2Qp is not on main; it was read at its open head through the roadmaps index (2591 lines). Its §6.9, "Breuil–Strauch through the Drinfeld tower (Dospinescu–Le Bras)", opens with the construction of the local Jacquet–Langlands correspondence for every nonarchimedean local field, central division algebra of degree `d` and `n=md`: a bijection between essentially square-integrable representations of `GLₙ(F)` and `GL_m(D)` characterized by `Θ_π(g)=(−1)^{n−m}Θ_{JL(π)}(g′)` on matching regular semisimple elements (equal reduced characteristic polynomials), with central characters, twists, contragredients, the inverse and characteristic-zero coefficient descent, the `m=1` restriction being the `D×`-to-`GL_d(F)` transfer as the inverse of the displayed map (its README line 2289). This is exactly the statement §4.7a and the contract bullet at line 103 import, at `m=r`. The supplier's direction is `GL_n(F)→GL_m(D)`; §4.7a says it writes `JL` for the supplier's inverse, and the displayed identity `Θ_{JL(π′)}(g)=(−1)^{n−r}Θ_{π′}(g′)` is the supplier's identity read backwards, which is legitimate because the sign squares to one.

The supplier's downstream reuse contracts (its README lines 2412 and 2433) name EndoscopicTransferAndUnitaryTraceComparison §4.7a as a consumer of §6.9 "at m=r, on its finite-extension-of-ℚ_p domain", and state that no result from this consumer is a prerequisite there. Its `*Needs:*` line for §6.9 cites only its own §§3.8, 3.11, 4.2, 4.6 and 4.11 and the global comparison data; the Jacquet–Langlands construction is sourced to Badulescu's Theorem 1.1 (its BAD02). So §4.7a's claim that the supplier's construction does not use this roadmap's Layer 10 parameter or Layer 12 tower comparison holds, and there is no cycle. A `roadmaps grep` for a second construction of the local correspondence over the 437 open heads and main returned only PadicLocalLanglandsForGL2Qp §6.9; the duplicate owner the previous §4.7a constituted is gone.

**Consumers of §4.7a.** Read every section whose `*Needs:*` line cites §4.7a (§§4.8, 10.3, 10.6, 10.12, 10.30, 10.31, 12.21, 12.23, 15.5 and the Layer 15 dependency list). Each uses the correspondence, its sign, its twists or its `r=1` restriction, never its proof; none asserts that §4.7a proves anything. §4.8's phrase "split tempered representations outside the image have trace zero on `f*`" supports the new fourth Check of §4.7a. §10.3's "independent of the trace-defined GL parameter" and §15.5's "independent local Jacquet–Langlands character theorem" now mean the supplier's independence from Layer 10, which §4.7a states explicitly. §2.16(b) defines the locally integrable Harish-Chandra function `θ_π` representing the distribution character, which is what the hypotheses paragraph of §4.7a identifies with the supplier's characters.

**Source verification (the changed locators).** Both texts were already in the sources cache; cache ids are the content hashes.

| Passage | Source and locator | Result |
|---|---|---|
| §4.7a, line 1880: Badulescu, §3.1 p. 13, "recalling the Deligne–Kazhdan–Vignéras and Badulescu correspondence" | badulescu-jl-extended (arXiv math/0201142v2) lines 536–557: `F` any nonarchimedean local field, `D` of dimension `d²`, `n=rd`, `G=GL_n(F)`, `G′=GL_r(D)`; the statement recalled is the unique bijection `C` from essentially square-integrable irreducibles of `G` to those of `G′` with `χ_π(g)=(−1)^{n−r}χ_{C(π)}(g′)` on corresponding regular semisimple elements with equal characteristic polynomials. Attribution: lines 149 and 173 credit the characteristic-zero case to [DKV] (Théorème B.2.d) and the positive-characteristic case to the author's method of close fields. | Agrees. The supplier's direction `GL_n(F)→GL_r(D)` and sign are Badulescu's `C`; the README's `JL` is `C⁻¹`. |
| §4.7a, line 1880: Scholze, definition before Corollary 11.3, p. 29, for `r=1` | scholze-llc-gln (arXiv 1010.1540v1) lines 1404–1408: `π=JL(ρ)` for `ρ` of `D×`, characterized by `tr(g\|π)=(−1)^{n−1}tr(d\|ρ)` on regular elliptic `g`, `d` with equal characteristic polynomial; Corollary 11.3 at line 1414. | Agrees with the README's `r=1` direction `D×→GL_n(F)` and sign `(−1)^{n−1}`. |

The fifteen sampled targets (§§1.1, 2.1, 2.7, 3.10, 4.4, 4.5, 6.15, 9.1, 10.2, 10.4, 10.11, 10.18, 10.25, 10.32, 13.2) are untouched by the diff and cite nothing the diff changed; §§10.2, 10.4, 10.11, 10.18, 10.25 and 10.32 sit in Layer 10, whose only link to the change is through §10.3's citation of §4.7a, which was reread above. Their previous evidence is carried forward under the incremental scope.

**Adversarial calculations.** [r5] denotes `packages/EndoscopicTransferAndUnitaryTraceComparison/reports/PRREVIEW-EndoscopicTransferAndUnitaryTraceComparison~5.md`, which itself carried the values of the report at 3533dfa. Rows for untouched statements carry those values; the four fresh rows are for the changed statement and the Checks the diff added or rewrote. 61 rows: 57 carried, 4 fresh.

| Statement | Instances tried | Values computed on the two sides / competing models | Result; change |
|---|---|---|---|
| 1.1 crossed-module cohomology [r5] | Identity module; `[μ₂→1]` over ℝ; inversion of C₂ on C₃ | Identity: singletons. `[μ₂→1]`: H⁰ has 2 elements, cokernel's H⁰ has 1. Semidirect H⁰ has 6 elements, nonabelian. | Pass. |
| 1.2 torus duality [r5] | Split G_m; norm-one torus | H¹=0 and torsion coinvariants 0; norm-one: both C₂, invariant lattice 0. | Pass. |
| 1.3 stable classes [r5] | Regular GL₂, quadratic algebra | H¹ of centralizer torus 0; one rational class. | Pass. |
| 1.11 Kottwitz map [r5] | Norm-one torus; PGL₂; compact SU₂/ℝ | Orders 2 and 2; 2 and 2; two H¹ classes to a trivial target. | Pass. |
| 2.4 orbital normalization [r5] | Central γ | Oγ(f)=f(γ), Dγ=1; doubled centralizer measure gives f(γ)/2. | Pass. |
| 2.7 product normalization [r5] | Scalars c, c⁻¹ | Product 1; one factor alone gives c. | Pass. |
| 3.4 companion section [r5] | X²−3X+2 | Trace 3, determinant 2. | Pass. |
| 3.11 Picard dimension [r5] | Pic(ℙ¹); nodal curve; two components | `−1=0+0−1`, `0=1+0−1`, `0=2+0−2`. | Pass. |
| 3.13 δ and codimension [r5] | t²−ε, t²−ε² | δ=0 and δ=1; moving-node codimension 1. | Pass. |
| 3.14 support inequality [r5] | Abelian fibre dim 1; point | 2 and 2; 0 and 0. | Pass. |
| 3.15 purity [r5] | Point; BC₂; BG_m | 1; no positive cohomology; nonzero H². | Pass on DM scope. |
| 3.18 shift and twist [r5] | r=2, q=3 | Shift 4; Frobenius on (2) is 1/9. | Pass. |
| 3.18a cover degree [r5] | `Sp₄`, char 7, eigenvalues `1,2,−1,−2` | Differences `−1,2,3,3,4,1` all nonzero mod 7; `\|W(C₂)\|=2²·2!=8`; orderings `4!=24`. | Pass. |
| 3.18a general position [r5] | `Sp₄`, `ξ=(√2,√3)`; `SL₂`, `ξ=0` | Borels: `ξ∉ℤ²`. Klingen Levis: values `±√2,±√3`. Siegel Levis: values `±√2±√3`. None integral. `ξ=0` projects to `0∈X_*(B)`. | Pass. |
| 3.18a `SL₂` stability interval [r5] | Saturated eigenlines of degrees `d₁,d₂`; split `(d,−d)` with `ξ₁=1/2` | Conditions `ξ₁<−d₁` and `ξ₁>d₂`; length `−d₁−d₂`; for `d₁=d₂=−1` the interval `(−1,1)∋1/2`. Split: `d+1/2<0` and `−d−1/2<0` sum to `0<0`. | Pass. |
| 3.18a elliptic stratum [r5] | `M=G` | `F(G)={G}`, `a_G=0`, `vol(a_G/X_*(G))=1`; `v_G≡1`. | Pass. |
| 3.18a count formula [r5] | Theorem 11.1 term by term; one object with 2 automorphisms; measure rescaling | Cardinality `1/2`; `a_M` measure ×2 gives `2/2=1`; torus measure ×3 gives `3·(1/3)=1`. | Pass. |
| 3.18a corrected locator and Cartan cover [r5] | Split Sp₄ in characteristic 7 | Weyl-cover fibre 8 versus 24 orderings; §§3.2–3.4 pp. 7–8; §4.1 p. 14. | Pass. |
| 4.3b coset index [r5] | `G=M=Sp₄`, `s=diag(−1,−1,−1,−1,1)` | `Z_{M̂}=Z_{Ĝ}=1`, coset quotient `{s}`; `Ĝ_s=SO₄∈E(s)`; `{1}` would give `Ĝ_1=Ĝ∉E(s)`. | Pass. |
| 4.3b torus Levi and recursion [r5] | `M=T`; `H=M′` | `M̂′=T̂=M̂`, theorem void; `S^{M′}_{M′}=J^{M′}_{M′,M′}`. | Pass. |
| 4.3b finite prefactor and infinite-index convention [r5] | M̂=GL₁×SO₅, M̂′=GL₁×SO₄; generic t=2 in Sp₆ | Centre quotient of order 2; generic centralizer centre dimension 1 versus 0; coefficient 0. | Pass. |
| 4.3b stabilizing assignment [r5] | Sp₄ full Levi; Sp₆ proper Levi | Jᴱ=2·(S/2)=S and Jᴱ=2·(S₊/2+S₋/2)=S₊+S₋. | Pass. |
| 4.3b repaired Sp₄ Check [r5] | G=M=Sp₄ | Z(SO₅)=1, Z(SO₄)=μ₂; coefficient 2·(1/2)=1. | Pass. |
| 4.3b full-Levi Check; sampled §4.3 [r5] | M=G, index d; d=2 | Coefficient d·d⁻¹=1; 2/2=1; ordinary normalized sides 1=1. | Pass. |
| 4.3b Sp₆ Check [r5] | M=GL₁×Sp₄; (t,−1,−1), t=1,−1,2 | B₃ centralizer root counts 6,12,4; centre orders 2, 2, dimension 1; coefficients 1,1,0. | Pass. |
| 4.3b ↔ 4.5a and 11.0a [r5] | Split Sp₄ and Sp₆ | Waldspurger §8.4 centre-index product 2·2⁻¹=1 for all three elliptic terms. | Pass. |
| 4.6 spherical transfer [r5] | Unit; off-support | 1 and 1; 0 and 0. | Pass. |
| 4.7a JL sign and direction (fresh) | `n=2, r=1`, trivial `D×` representation, regular elliptic `g` matched with `g′`; `d=1, n=r` | Supplier direction: `Θ_{St₂}(g)=(−1)^{2−1}Θ_{1}(g′)` gives `−1=(−1)·1`. README direction (`JL` = supplier's inverse): `Θ_{JL(1)}(g)=(−1)^{1}·1=−1=Θ_{St₂}(g)`, using `Θ_{St₂}=Θ_{Ind(1)}−1=0−1` on elliptic regular elements. Inverse reading: `Θ_1(g′)=(−1)^{1}Θ_{St₂}(g)=(−1)(−1)=1`. Competing model with sign `(−1)^{n}=+1`: would give `Θ_{St₂}(g)=+1`, false. `d=1`: sign `(−1)^0=1`, identity bijection. | Pass; both Checks agree with the supplier's identical Checks (its README lines 2293–2296). |
| 4.7a twist compatibility (fresh) | Quaternion `D`, `χ` a character of `F×`, central scalar `a` | `Nrd(a)=a²=det(aI₂)`; twisting `π′` by `χ∘Nrd` multiplies `Θ_{π′}(g′)` by `χ(Nrd g′)=χ(det g)` on matched elements, so the identity `Θ_{JL(π′)⊗χ∘det}(g)=(−1)^{n−r}Θ_{π′⊗χ∘Nrd}(g′)` holds with the same sign. Wrong model twisting by `χ∘det` on `GL_r(D)` is undefined for `r=1,d=2`. | Pass. |
| 4.7a principal-series Check versus §4.8 (fresh) | Unitary principal series `Ind(χ₁,χ₂)` of `GL₂(F)`, quaternion `D` | Not essentially square-integrable, so outside the supplier's domain; §4.8 gives `tr Ind(χ₁,χ₂)(f*)=0` since `f*` has orbital integrals supported on elliptic matched classes where induced characters vanish, consistent with "split tempered representations outside the image have trace zero". The §4.8 Check `tr St₂(f*)=−1=e(G)·tr 1_{D×}(f)` with `e(G)=−1` matches the §4.7a sign. | Pass. |
| 4.7a hypotheses versus supplier (fresh) | `F=𝔽_q((t))`; `F/ℚ_p` finite | Supplier: all nonarchimedean `F`, any `d,m≥1`. README: imports for all `F`, consumers restricted to characteristic 0 (§2.16's character theorem is stated in characteristic 0). Positive-characteristic `F` is within the supplier's statement, so the import is not narrower than the supplier; the supplier's reuse contract (its line 2412) records the consumer's domain as finite extensions of `ℚ_p`. | Pass; no generality mismatch. |
| 5.2 normalized induction [r5] | GL₂, q=4 | δ_B=1/4, δ_B^{1/2}=1/2, inverse 2. | Pass. |
| 6.8 unramified BC [r5] | Root 2, degree 2; blocks 2+1 | 4 and 4; parities 1, 0. | Pass. |
| 6.16 central complement [r5] | Torus; zero test | 0 noncentral, 1 and 1; 0 and 0. | Pass. |
| 6.17 twisted distribution [r5] | Full Levi; G_m with inversion | I=J; `1−θ=2`, factor √2 vs 1. | Pass. |
| 6.28 coefficients and character [r5] | G₄, G₂,₂; Steinberg | `ι=1/4`, `τ(H)ι=1`, `τ(G)ε=1`; −1 and −1. | Pass. |
| 7.3 alternating trace and frame [r5] | H⁰,H¹ one-dimensional; scalar 2 | 1−1=0 vs (1,1); 1/2 vs 2. | Pass. |
| 7.10a correspondence [r5] | E³, scalar 2 | 3 and 3; 6 and 6. | Pass. |
| 8.2/7.10a Haar idempotent [r5] | vol 1/4, dim 3 | 3/4 vs 3. | Pass. |
| 8.9 constant term [r5] | Modulus 4, value 1/2, Weyl 4 | 2 vs 1. | Pass. |
| 8 Fourier coefficient [r5] | C₂ | `(1+1)/2=1`, `(1−1)/2=0`. | Pass. |
| 9 raw cohomology [r5] | Zero vs identity differential | Euler 0 with H⁰=H¹=E vs both 0. | Pass. |
| 10 trace recognition [r5] | Bases 1/2, 1/3 | `−1/6`; shifted `−2^{−N−1}3^{−N−1}`. | Pass. |
| 10.3 division-algebra input [r5, reread] | Trivial quaternionic representation; `d=1` | Transfer `St₂`, sign `−1`; identity correspondence at `d=1`; agrees with the fresh 4.7a row. | Pass. |
| 10.23 monodromy [r5] | q=3, F=diag(1,1/3) | `FNF⁻¹=N/3`; dim ker N 1 vs 2. | Pass. |
| 10.28 pair factors [r5] | Roots 2, 3 | Root 6, factor `(1−6q^{−s})⁻¹`, ε=1. | Pass. |
| 10 inner-form comparison [r5] | Trivial, Steinberg | −1, +1, sum 0. | Pass. |
| 11.0a threshold and weight [r5] | GL₄, e_F=1; rank-one hull | `p>17`; weights 1, 0, 1. | Pass. |
| 11.0f exterior-square hypotheses [r5] | `σ=χ⁻¹`, symplectic `π`; `σ∈T^S(m)` | `∧²Sym³V=Sym⁴V⊕1`, `6=5+1`; exponents `χ⁴,χ⁴,χ¹²,χ⁸` all divide 24; `w₀ω=ω⁻¹≠ω`. | Pass. |
| 11.0f `D₄` Levi [r5] | `Spin₈`, central node | Type `A₁³`; `λ(−1)=(−I,−I,−I)`; image dim `12−2=10`, rank 4; coefficient-1 roots 8, coefficient-2 root 1. | Pass. |
| 11.0f triple-product twist [r5] | Twist `σ` by `χ` with `χ_v^4\|_U≠1` | `ω₀²χ⁴\|_U≠1`; `m=1` roots 4 vs 8. | Pass. |
| 11.0h converse theorem range [r5] | `n=6` | Kim Theorem 2.1 needs `m≤4`. | Pass. |
| 11.0h exterior-square and tensor parameter checks [r5] | Roots 1,2,3,4; (1,2),(3,5) | Product `13824=24³`; roots 3,5,6,10, determinant 900. | Pass. |
| 11.0h `SO₄` multiplicity [r5] | Dihedral order 10; `3+1`; `Sp₄` | `m_ψ=2`; symplectic pair 0; `3+1` gives 1; type C gives 1. | Pass. |
| 11 packet multiplicity [r5] | C₂ | 0 and 1. | Pass. |
| 12 tower degree [r5] | n=1 | 0, sign 1, twist 0. | Pass. |
| 12.5 period equivariance [r5] | `[[1,1],[0,1]]` | Inverse transpose `[[1,0],[−1,1]]`. | Pass. |
| 12.14 sectors and heights [r5] | C₃; rank two | Dimension 1 vs 0; shifts 2 and 1. | Pass. |
| 13 oldforms [r5] | q=3, index 48, dim 4 | 1/12 raw vs 4 normalized. | Pass. |
| 14 signed comparison [r5] | Two equal terms | 0 vs (1,1). | Pass. |
| 15 ledger and Satake export [r5] | 2,−1,3,5,7; roots 2,3 degree 2 | −210 vs 210; `X²−13X+36`. | Pass. |
| 15.5 division-algebra sign [r5, reread] | Rank two; rank one | Elliptic sign `−1`, trivial ↦ Steinberg; `D=E` gives `+1`. Agrees with the fresh 4.7a row. | Pass. |

**Ownership and citations.** The citation resolver's four unchanged name leads are the previous round's: `TauCeti.EtaleDuality.CohCorr` and `.rgammac` are EtaleDualityAndPerverseSheaves' planned API at its indexed head (its README §§5.6 and 5.8), and `TauCetiRoadmap.RepresentationTheory.InductionRestriction`/`.SemisimpleAlgebras` are module names of that roadmap's layers cited as supplier sections, as recorded at the previous round; none is a claimed pinned declaration and none is touched by the diff. Library heads match `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`; no pinned object enters the changed passage (the correspondence is a smooth-representation statement with no carrier at the pins, as the unchanged docstring already records). Ownership against the open pull requests whose checkouts the brief lists was checked through the roadmaps index grep above; no other open pull request constructs the local correspondence.

## Not verifiable

- The previous rounds' uncertified locator-only texts are unchanged and untouched by this diff: `wald-weighted-twisted` Theorem 3.8; `arthur-classification` Theorems 1.5.1, 1.5.2, 2.2.1 and Chapters 6–8; `henniart09`; `jacquet-shalika90` §8 Theorem 1; `hiraga-saito12` Theorem 4.14. No new request is made.
- PadicLocalLanglandsForGL2Qp's own source for §6.9 (Badulescu, Ann. Sci. ÉNS 2002, Theorem 1.1) was not reopened here: the supplier's locators are the supplier's review's responsibility; this round checked that the supplier states what §4.7a imports.

## Source issues

- none
