# Review of PCurvature (pull request #1747 at 7ff8fa7)

**Verdict:** needs changes

Scope: an incremental re-review of the 8 lines (7 insertions, 1 deletion) of `TauCetiRoadmap/PCurvature/README.md` and `TauCetiRoadmap/PCurvature/Suggested.lean` changed since 9cddff5, the head the previous review read: the `pPow` proof body now uses `pow_apply_eq_iterate` (the previous R01), and a "Not a target" paragraph after 4.3 records the effective form of Honda's theorem over `ℚ` (Fürnsinn–Pannier, Theorems 1.2–1.3; Katz 1982, §9). The pull request changes nothing outside the folder (`git diff --stat origin/main...HEAD` excluding the folder is empty) and the folder holds `README.md`, `Suggested.lean`, `metadata.toml` only. The pins are unchanged since the previous review (Mathlib 1b1ccf4b, Tau Ceti 2fd255d9).

## R01 (P2) — the effective Honda statement after 4.3 is false without `deg A < deg B` and `B` squarefree

Location: `TauCetiRoadmap/PCurvature/README.md` lines 631–635: "For `u = c·A/B`, `A, B ∈ ℤ[x]` primitive, `c ∈ ℚ`, the equation `y′ = u y` has a nonzero algebraic solution iff its `p`-curvature vanishes at every prime `p ∤ res(B, B′)` below a bound `σ` …".

Claim: as stated, with only "primitive" on `A, B`, the equivalence fails; the source (furnsinn-pannier, Theorem 1.3, printed p. 3, rendered from the PDF because the OCR at lines 113–119 drops the first line of the statement) states it with exactly these hypotheses, and it is false there too: its proof (lines 259–273) reduces to Proposition 2.2 (3) (`deg a < deg b`, simple poles, the Rothstein–Trager resultant splits over `ℚ`, lines 193–202) and disposes of the first two conditions by "if one is not met, it is not met modulo almost all primes, so almost all `p`-curvatures do not vanish" (lines 263–266), which produces no prime below `σ`.

Witness, for the README's statement: `A = 1`, `B = (x + 1)^2`, `c = 1` (both primitive). `res(B, B′) = res((x+1)^2, 2(x+1)) = 0`, so no prime satisfies `p ∤ res(B, B′)` and the right side holds vacuously; but `y′ = y/(x+1)^2` has no nonzero algebraic solution (`c_{α,2} = 1 ≠ 0`, so by 4.3 `ψ_p = (x+1)^{−2p} ≠ 0` at every `p`; the solutions are the multiples of `exp(−1/(x+1))`).

Witness, for the source's statement with every hypothesis of its Theorem 1.2 met: `A = N x^2 + N x + 1`, `B = −x − 1`, `c = 1`, `N` the product of the primes `≤ 137`. Then `R(w) = res_x(B, A − w B′) = A(−1) + w = w + 1` (`r_1 = 1 > 0`, `Δ_b = |res(B, B′)| = 1`), `R_0 = w + 1`, `Δ_R = 1`, `δ(Δ_R) = 1`, root bound `B = 1`, `M = ⌈2.826⌉ = 3`, `N_{1.2} = ⌈6.076·3⌉ = 19`, `σ = 7·19 + 6 = 139`; modulo every prime `p < 139`, `ū = −1/(x+1) = y′/y` with `y = 1/(x+1)`, so `ψ_p = 0` at every prime the theorem tests; yet `u = −N x − 1/(x+1)` has the polynomial part `−N x ≠ 0`, so no nonzero algebraic solution exists (Proposition 2.2, or 2.4 + 4.3 here). The bound `σ` of Theorem 1.2 depends on `R(w)` only, not on the height `H`, so no choice of `N` escapes.

Repair: state it with the hypotheses the proof uses, e.g. "For `u = c·A/B` with `A, B ∈ ℤ[x]` coprime and primitive, `deg A < deg B`, `B` squarefree (so `res(B, B′) ≠ 0`) and `c ∈ ℚ`, the equation `y′ = u y` has a nonzero algebraic solution iff its `p`-curvature vanishes at every prime `p ∤ res(B, B′)` below a bound `σ` explicit in the coefficients of the Rothstein–Trager resultant `res_x(B, A − w B′)` (Fürnsinn–Pannier, Theorem 1.3 with the hypotheses of their Proposition 2.2 (3), from their effective Kronecker theorem, Theorem 1.2); …". On the two witnesses: `B = (x+1)^2` is excluded by squarefreeness, `A = N x^2 + N x + 1` by `deg A < deg B`; `A = 1`, `B = 2x` (the Check `1/(2x)`) satisfies the hypotheses and the corrected statement holds (`R(w) = 2w − 1`, root `1/2`, `ψ_p = 0` at every odd `p`, `y = x^{1/2}`). Whether to keep "degrees and heights" is the author's choice: `σ` is explicit in `R(w)`, which is explicit in `A, B`, and the paper's complexity bound is in `n` and `H`.

## R02 (P3) — the References entry for Fürnsinn–Pannier omits the theorems 4.3 now cites

Location: `TauCetiRoadmap/PCurvature/README.md` lines 748–749: "arXiv:2510.00892, Theorem 1.1, Propositions 2.2–2.4."

Claim: the new paragraph cites Theorems 1.2 and 1.3 (line 634–635), and the README's entries enumerate the items cited (the Katz 1970 and Bostan–Caruso–Roques entries, lines 706–710, 744–747, list every cited theorem).

Witness: `grep -n "Fürnsinn" README.md` gives lines 573 (Theorem 1.1), 634 (Theorems 1.2, 1.3), 701, 748; the entry names 1.1 only.

Repair: "Theorems 1.1–1.3, Propositions 2.2–2.4."

## Previous findings

- R01 — repaired: `Suggested.lean` line 104 reads `simp only [pow_apply_eq_iterate, Derivation.coeFn_coe, smul_eq_mul]`; `lake env lean` on the head file exits 0 with the eleven `sorry` warnings (lines 71, 97, 109, 114, 119, 138, 160, 167, 174, 200, 224) and nothing else; the worker's gate has `build=0`.

## Verified sound

**Gate, build, elaboration.** The text gate run from the worktree with `--base origin/main --order` on the job's merge-order candidate: every check 0, `OK`; the worker's gate at this head, build included, every check 0. `lake env lean TauCetiRoadmap/PCurvature/Suggested.lean`: exit 0, 11 `sorry` warnings, no deprecation warning (the previous R01). On a scratch copy with `#check @` of all 19 declarations: every elaborated type identical to the worker's `signatures.md` (19 of 19, compared mechanically after whitespace normalisation), so no section binder is lost (`[Fact p.Prime]`, `[CharP A p]`, `[CharP R p] [Algebra.Smooth R A]` on `kaehlerD_eq_zero_iff`, `[IsLocalRing A]` on `exists_unit_horizontal_iff`, `[NumberField K]`, `hQ` on `honda`). One-tactic probe on the same copy (`first | rfl | (simp; done) | infer_instance | (ext; simp; done) | (ext; simp [pPow]; done) | (ext; simp [frobeniusImage]; done) | (intro; simp; done) | sorry`): all 11 sorried theorems fall through to `sorry`; no padding. No `set_option`, no `lemma`, no sorried data; imports `module` / `public import Mathlib` and the two Tau Ceti modules, present at Tau Ceti 2fd255d9.

**Dependency check** (output): `depcheck: 240 roadmaps, 2371 edges, 0 problem(s)` with `--order` the candidate and `--movable`; the candidate lists PCurvature after CrystallineCohomology and FormalConnectionsOpers; no UPWARD or CYCLE line. The diff adds no `*Needs:*` line, no supplier citation and no Lean statement.

**Cross-roadmap citations:** the diff touches none; the K3Surfaces §0.2 sentence checked in the previous review is unchanged. Overlaps: `scratch/overlaps.md` lists no other pull request changing this roadmap, no dropped id, no closest roadmap.

**Sources, where the sample falls in the changed passage** (4.3 Honda's theorem; furnsinn-pannier = cache cac8df9f, arXiv:2510.00892v2, OCR; Katz 1982 = cache e00900b1, Numdam BSMF_1982__110__203_0):
- Fürnsinn–Pannier, Theorem 1.2 (lines 98–104, and printed p. 3 rendered): `R(w) ∈ ℤ[w]` with `r_n > 0`, `Δ_R = res_w(R_0, R_0′)` for `R_0` the square-free part, `B` a bound on the moduli of the roots, `δ(Δ_R) = ∏_{p | Δ_R} p^{1/(p−1)}`, `M = ⌈2.826 r_n^3 δ(Δ_R)^3⌉`, `N = ⌈6.076 B M⌉`, `σ = (2M+1)N + 2M`: `R` splits over `ℚ` iff it splits modulo every prime `p ∤ r_n`, `p < σ`. The README's "effective Kronecker theorem, Theorem 1.2" is this.
- Fürnsinn–Pannier, Theorem 1.3 (printed p. 3; OCR lines 113–119): statement as quoted in R01; the proof, lines 259–273. Lines 84–92: "From his work presented in [Kat82, §9] it follows by a noetherianity argument that … there exists a finite set of prime numbers … However, his argument is non-constructive": the README's "Katz 1982, §9, as they recall, gives a finite set non-constructively" is this sentence, correctly attributed.
- Katz 1982, §IX "A conjectural description of Lie(G_gal)", printed pp. 224–226 (lines 751–757, 762–778): the descending-chain argument for the smallest algebraic Lie subalgebra containing the `ψ_p` for almost all `p`, and Proposition 9.3 by Noetherianity of `GL`; the finite-set-of-primes consequence is Fürnsinn–Pannier's inference, not a statement of Katz, which is what "as they recall" says.
- Propositions 2.2 (lines 193–202) and 2.3 (lines 214–226) give the hypotheses used in R01's repair; Proposition 2.4 (lines 246–247): an algebraic solution gives `ψ_p = 0` for `p ∤ Δ`.
- The other seeded targets (0.1–0.2, 1.1–1.4, 2.1–2.4, 3.1–3.2, 4.1–4.2) are untouched by the diff; their locators were verified in the reviews of 43fe6b5 and 9cddff5 and are not re-read.

**Adversarial table.** Rows for the changed passages carry computed values; rows for untouched statements are carried from the previous reports (column "Source").

| Statement | Instances | Values each side | Result | Source |
| --- | --- | --- | --- | --- |
| Effective Honda (README 631–635), `B` not squarefree | `A = 1`, `B = (x+1)^2`, `c = 1` | `res(B, B′) = 0`; prime set empty, right side vacuous; `a = (x+1)^{−2}`, `D^{p−1}a = (−1)^{p−1} p!·(x+1)^{−p−1} ≡ 0`, so `ψ_p = a^p = (x+1)^{−2p} ≠ 0` at every `p` (`c_{α,2} = 1`); solutions `exp(−1/(x+1))` | refuted → R01 | this review |
| Fürnsinn–Pannier Theorem 1.3 as printed, polynomial part | `A = N x^2 + N x + 1`, `B = −x − 1`, `N = ∏_{p ≤ 137} p` | `R(w) = w + 1`, `r_1 = 1`, `Δ_b = 1`, `Δ_R = 1`, `B = 1`, `M = 3`, `N_{1.2} = 19`, `σ = 139`; `ū = −1/(x+1) = y′/y`, `y = 1/(x+1)`, `ψ_p = 0` for all `p < 139`; polynomial part `−N x ≠ 0` ⇒ no algebraic solution | source statement refuted → Source issues | this review |
| Corrected statement on a Check instance | `A = 1`, `B = 2x` | `deg 0 < 1`, `B` squarefree, coprime; `res(B, B′) = 2`; `R(w) = 2w − 1`, root `1/2 ∈ ℚ`; `ψ_p = 0` for odd `p` (Check of 2.4), `y = x^{1/2}` | holds | this review |
| Corrected statement, `A = 0` | `u = 0` | `R(w) = res_x(B, −w B′)`: no residues to test; `y = 1` algebraic; `ψ_p = 0` everywhere | holds | this review |
| "Katz 1982, §9, as they recall" | FP lines 84–92; Katz lines 751–757 | Katz: chain of algebraic Lie subalgebras stabilises, `GL` Noetherian (Prop. 9.3); FP: hence a finite set of primes, non-constructively | attribution accurate | this review |
| `pPow` body after the edit | `((D : Module.End R A) ^ p) a` | `pow_apply_eq_iterate` rewrites to `(⇑D)^[p] a`; `Derivation.coeFn_coe`, `smul_eq_mul` normalise; `iterate_leibniz p D a b` closes | elaborates (exit 0) | this review |
| 3.2 proof: `Spec B → Spec A_f` surjective | `B` finite étale over `A_f`; `A` smooth over the domain `S` | finite ⇒ image closed; image ⊇ `Spec A_F`; minimal primes lie in the generic fibre by going-down; closed ⊇ dense ⇒ everything | holds | review of 9cddff5 |
| 3.2 Check 3, hypotheses | `S = ℤ`, `A = ℤ[x, 1/(x²+1)]`, `B_F = A_F[t]/(t² − x² − 1)` | `B_F` étale, free of rank `2`; `(t⁻¹)′ = −a t⁻¹`, `a = x/(x²+1)` | an instance of 3.2 | review of 9cddff5 |
| 3.2 Check 3, `p = 2` | `a = x/(x+1)²` in `𝔽_2(x)` | `a′ = 1/(x+1)²`; `a² = x²/(x+1)⁴`; `ψ = 1/(x+1)⁴ ≠ 0` | `ψ ≠ 0` at `(2)` | review of 9cddff5 |
| 3.2 Check 3, `p` odd | `a = ½/(x − i) + ½/(x + i)` | residues `½ ∈ 𝔽_p`, `a → 0` at `∞` ⇒ `ψ = 0`; the open `D(2)` | holds | review of 9cddff5 |
| 1.2 Check 2 | `𝔽_2[x, y]`, `∇ = d + x dy`, `a = y` | `(y∂_y + xy)² − ∇_{y∂_y} = x²y² = a² ψ(∂_y)`, `ψ(∂_y) = x²` | holds | review of 9cddff5 |
| 1.2 Check 2, general `a` | same `∇`, any `a` | difference `a²x²`; `a ψ(∂_y) = a x²` differs for `a = x` | linearity refuted | review of 9cddff5 |
| docstring: 2.4 is the instance of `exists_unit_horizontal_iff` | `A = κ(x)`, `D = d/dx` | field ⇒ local; `D^p = 0` on `κ(x)` ⇒ `hD`; `D x = 1` ⇒ `hx`; units = nonzero `y` | the first equivalence of 2.4 | review of 9cddff5 |
| docstring: 4.2 is a proof step of 4.3 | 4.2's statement | partial-fraction data `P`-integral for almost all `P`, reduce termwise; 4.3's `*Needs:*` lists 4.2 | consistent | review of 9cddff5 |
| Downstream consumers: K3Surfaces §0.2 | K3Surfaces README line 200 at its head | restricted `p`-power of global derivations, computed on affine opens as `pPow p D` | accurate | review of 9cddff5 |
| 0.1 `jacobsonLie`, `p = 2` | words `x`, `y` | `Λ_2 = [y, x]`; `(a+b)² − a² − b² = ab + ba = ba − ab` in char `2` | holds | review of 43fe6b5 |
| 0.1 `p = 3` | words `xx, xy, yx, yy` | `[y,[y,x]] + 2[x,[y,x]]` equals the six mixed words mod `3` | holds | review of 43fe6b5 |
| 0.1 `E₁₂, E₂₁`, `p` odd | `(a+b)² = I` | `(a+b)^p = a + b`; `a^p = b^p = 0`; `Λ_p(a,b) = a + b ≠ 0` | Check holds | review of 43fe6b5 |
| 0.1 `i = p` coefficient | word `x…x` | `ad(x)^{p−1}(x) = 0`; `(p : ZMod p)⁻¹.val = 0` | consistent | review of 43fe6b5 |
| 0.2 two structures on abelian `R` | `pMap = 0`; `pMap c = c^p` | both satisfy the axioms, differ at `1` | none | review of 43fe6b5 |
| 0.3 `iterate_leibniz`, char `0` control | `ℚ[x]`, `D²(x·x)` | `2 ≠ 0` | hypothesis needed | review of 43fe6b5 |
| 0.3 `pPow` on `𝔽_p[x]` | `D`, `xD` | `D^p(x^n) = 0`; `(xD)^p x^n = n x^n` | `pPow D = 0`, `pPow (xD) = xD` | review of 43fe6b5 |
| 0.3 `pPow_smul`, `p = 2` and odd | `a = x`, `a = x²`, `D` | `(xD)² = x²D² + xD`, `(x²D)² = x⁴D²`; odd `p`: LHS `xD`, RHS `xD`; Katz's print `−xD` | holds; print wrong | review of 43fe6b5 |
| 0.3 `ad_pPow`, `pPow_add`, instance `pMap_smul` | `Der ⊂ End`; `c ∈ R` | `ad(D^p) = (ad D)^p`; `Λ_p` compatible; `(c•D)^p = c^p D^p` | holds | review of 43fe6b5 |
| 1.1 `A`-linearity; Check 2 | any `∇`, `a`, `m`; `d`, `D = xD` | `A`-linear by Leibniz; `(xD)^p − pPow(xD) = 0`, `(∇_D)^p = xD ≠ 0` | no flatness needed; Check holds | review of 43fe6b5 |
| 1.2 additivity needs flatness; infinite coordinates | `𝔽_2[x,y]`; `κ = 𝔽_p(x_0, x_1, …)` | `ψ(∂_x+∂_y) = 1 + x² ≠ x²`; `Der ≅ κ^ℕ` | Checks hold | review of 43fe6b5 |
| 1.3 étale pull-back; "iff" needs étale; tensor, dual | `B ⊗ M`; `𝔽_p[x] ⊂ 𝔽_p[s]`, `s^p = x`; `d ± dx` | `1 ⊗ ψ_M(D)`; `ψ_M = 1` but `dx = 0`; `1 + (−1) = 0`, dual `−1` | hold | review of 43fe6b5 |
| 1.4 `rankOne_pCurvature_eq`, `p = 2, 3`; recursion; unipotent; Airy | `a = ω D`; `Γ = [[0,x^{p−1}],[0,0]]`; `Γ = [[0,1],[x,0]]` | `a² + D(a) − ω(D²)`; `Γ_p = [[0,−1],[0,0]]`, `ψ² = 0`; `Γ_3 = [[−1,x],[x²,1]]`, `Γ_5 = [[x,x²],[x³−1,−x]]` | hold | review of 43fe6b5 |
| 1.4 Check `c/x` | `𝔽̄_p[x, x⁻¹]` | `ψ = (c^p − c)/x^p` | zero iff `c ∈ 𝔽_p` | review of 43fe6b5 |
| 1.5 tensor exponent; comparison with CR.1.3 | `N ⊗ 1 + 1 ⊗ N`, `p` odd; `P = R[x_1..x_r]` | `ψ² = 2N⊗N ≠ 0`, `ψ³ = 0`; `ψ(∂_i) = θ_i^p` | equivalent | review of 43fe6b5 |
| 2.0 `frobeniusImage`; `ker d`; injectivity | `𝔽_p[x]`; `R[ε]/ε²[t]`; perfect `κ` | `𝔽_p[x^p]`; `R[t^p] = ker d`; `κ` | hold | review of 43fe6b5 |
| 2.1 `A = R`; `M = 0`; Check 3; Zariski locality | `Der = 0`; `d + dx`; invert `f` | `M^∇ = M`; `0`; `y = 0`; `(M_f)^∇ = (M^∇)_{f^p}` | hold | review of 43fe6b5 |
| 2.3 `⇒`, `⇐`, Checks | unit `y`; `P = Σ_{k<p} (−x)^k/k! (D+a)^k`; `a = 0, 1, −1/(1+x)` | `(a^p + D^{p−1}a) y = 0`; one summand a unit; `1`; `1 ≠ 0`; `0`, `y = 1+x` | hold | review of 43fe6b5 |
| 2.4 Checks | `1/x + 1/(x−1)`; `1/(2x)`; `1/x²` | `ψ = 0`, `y = 1/(x(x−1))`; `0`, `y = x^{(p−1)/2}`; `x^{−2p} ≠ 0` | hold | review of 43fe6b5 |
| 3.1 Check 2 | `B = A[t]/(t² − x)`, `d + ½ dx/x` | `(t⁻¹)′ + (1/(2x)) t⁻¹ = 0` | horizontal unit | review of 43fe6b5 |
| 4.1 Checks; `L = ℚ` | `c = i`, `p ≡ 3 (4)`; `c = 3`; `c = ½`; `c ∈ ℤ` | `i^p = −i`; `3^p ≡ 3`; `(½)^p − ½ ≡ 0`; trivial | hold | review of 43fe6b5 |
| 4.2 Checks | `1/(x²−1)`; `1/(x²+1)`; `x + 1/x` | poles merge mod `2`; residues `∓i/2`; `R = x` | hold | review of 43fe6b5 |
| 4.3 `honda` `⇐`, `⇒`, junk reduction, Checks | `n a = f′/f`; residues; `Q̄ = 0`; `a = 0`, `1/(2x)`, `1/(x²+1)` | `ā = (f̄^m)′/f̄^m`; `mc ∈ ℤ` by 4.1; `ratFuncMod = 0` at finitely many `v`; `n = 1, f = 1`; `n = 2, f = x`; `ψ ≠ 0` iff `p ≡ 3 (4)` | hold | review of 43fe6b5 |
| 4.4 Kummer cover; Checks | `B = O(U)[t]/(t^n − f)`; `i/(x²+1)`; `1/(2x)`; `a = 1` | étale, free of rank `n`, `(t⁻¹)′ + a t⁻¹ = 0`; `f′/f = 2a`; `t² = x`; `ψ = 1` | hold | review of 43fe6b5 |
| Conventions 1, 5, 6 | `d(x^p)/dx`; `a = 1/x`; `1/(2x)` at `2` | `0`; `x^{−p} + (p−1)! x^{−p} = 0`; `Q̄ = 0` | witnesses hold | review of 43fe6b5 |

**Headline theorems** (unchanged by the diff): Jacobson's formula (0.1, stated), the restricted structure on `Der_R(A)` with Hochschild's formula (0.3, stated), Katz's structure theorem (1.2, named as not statable), the rank-one formula (1.4, stated), nilpotence (1.5, named), Cartier descent (2.1, named), rank one in one variable (2.3, stated; 2.4 its instance), the easy direction (3.2, named), Kronecker (4.1, stated), Honda (4.3, stated), the Kummer trivialisation (4.4, named); 4.2 named as a proof step; the effective form after 4.3 is declared not a target and needs no Lean statement. No statable headline is absent, none is forced through a stand-in.

**Declared gaps:** none declared; none needed.

**Checked and not raised:** the katz1970 sign error at (5.3.0) and (5.4.0), printed pp. 192–193, is already recorded by the review of 43fe6b5 and is unchanged; the placement of a "Not a target" paragraph inside §4.3 rather than under *Research context* (the README's existing home for non-targets, "Not targets. …") is a matter of arrangement, not of content; the phrase `res(B, B′)` is the standard resultant notation.

## Not verifiable

- Honda 1981 (Symposia Mathematica XXIV), Kronecker 1880, Katz 1972, Chudnovsky–Chudnovsky 1985, André 1989 and 2004, Beukers–Peters 1984: no legal copies, as in the previous reviews; none is cited by a passage the diff changes.
- The Montpellier Grothendieck archive, folder 93 (research context): not opened.

## Source issues

- **Error** in furnsinn-pannier at Theorem 1.3, printed p. 3: the source says that for any primitive `a, b ∈ ℤ[x]` the equation has an algebraic solution iff the `p`-curvatures vanish for `p ∤ Δ_b`, `p < σ`; it should assume `deg a < deg b` and `b` squarefree (its Proposition 2.2 (3)): `a = N x² + N x + 1`, `b = −x − 1`, `N = ∏_{p ≤ 137} p` gives `σ = 139` and every tested `p`-curvature zero with no algebraic solution, and `b = (x+1)²` gives `Δ_b = 0`, an empty set of primes; affects a stated result (the proof, p. 6, handles these cases with "almost all primes").
