# Repair of red-team round 1 (passes a and b)

Both reviews are merged here; they reuse finding identifiers, so the sections under "Review r1a" carry r1a's F01–F25 (cited elsewhere in this report as a-F01 … a-F25) and those under "Review r1b" carry r1b's F01–F04 (cited as b-F01 … b-F04). Overlaps were settled once: a-F17 and b-F01 (unowned GIT inputs), and a-F10 with the third part of b-F03 (OrthogonalSpinGroups 2F/2G). The cached nv21 extraction is empty, so every nv21 locator was checked against the published PDF re-extracted locally, by printed page and theorem number. No line numbers of the empty cache are cited.

# Review r1a

## F01 (P3) — applied

§0.6 Check: "identity not smoothing on an infinite-dimensional representation" → regular representation of ℝ (`Δ^N` = multiplier `(1+t²)^N`, unbounded) plus the trivial representation on an infinite-dimensional space, where Δ = 1 and the identity is smoothing. Same pattern in §3.9: the Check is now scoped to irreducible tempered π, where the statement is true.

## F02 (P1) — applied

§4.5: `H_σ(v₁⊗v̄₂) = tr σ(f)` → `tr σ̄(f) = tr σ(f∘inv)`, because `⟨u,σ(s)u⟩ = ⟨σ(s⁻¹)u,u⟩`. NV21 (18.6), p. 122, prints `tr σ(f)` against its own definition (18.2); this is recorded as a correction. Added the SO(3)⊃SO(2) witness as a Check (values 1 / 1 / 0). Pattern: the §4.6 route now applies Plancherel to `f∘inv`, and the §7.3 route composes with inversion. The existential statements of §7.3 and §7.6 are unaffected.

## F03 (P1) — applied

§4.5: "H_σ is H×H-invariant" → invariant under conjugation by H, factoring through an H×H-equivariant map `Ψ^{−∞}(π) → Ψ^{−∞}(σ)` followed by the trace. The witness is a Check: left translation gives −1 at θ = π, conjugation gives 1. §2.7's hypothesis, an H×H-equivariant factorization, was already correct. The gap orthogonal-local-period-form was checked too: it is invariant in the correct variable pairing.

## F04 (P1) — applied

§1.4: normalized pieces now have `(a_ω)_h^∨ = e^{−ωx/h}A^nφ_ω^∨(Ax)` and moments `≪ A^{−r}`; the weighted summand `⟨ω⟩^m a_ω` carries `⟨ω⟩^m`. This matches NV21 (7.9) for an S^m-localized symbol; the printed (7.10), p. 51, omits the weight. The m = −2 witness is added as a Check.

## F05 (P2) — applied

§4.2 route: "positive operator `Op_h(⟨ξ⟩^{−N})`" → `T_π = Op_h(b)*Op_h(b) = Op_h(b)²`, compared with `Δ_h^{−N}`. Plancherel is applied to `f*∗f`, giving `‖f‖²₂`. This matches the proof of NV21 Lemma A.3(ii), p. 139, which squares. Added a Check that a positive symbol can quantize to a negative scalar.

## F06 (P2) — applied

§4.1 now opens by choosing an Ad(K)-invariant inner product on 𝔨 with B(𝔨) orthonormal; the Nelson basis stays arbitrary. Check added: the rescaled SO(3) basis gives `diag(3,6,6)`; the rotation basis gives `3·1`.

## F07 (P1) — applied

§3.9 route: "approximate inverse of `Δ_h^{N}`" → `Δ_h^{N/2}`, matching NV21 Lemma 12.1, p. 87, which uses `Δ_h^{N/2}Op_h(b)`. Check added: at t = 1/h with N = 2, `2·½ = 1`, whereas `Δ_h^N` would give 2.

## F08 (P2) — applied

Added `jointFibre_nonempty_orthogonal` and `jointFibre_nonempty_unitary` to Suggested.lean. They state NV21 Lemma 14.6, pp. 99–100 (surjectivity of `x ↦ ([x],[x_H])`): nonemptiness of exactly the fibre of the torsor theorems, with no coprimality hypothesis. They are named in README §5.3 and the module docstring. The torsor theorems are kept unchanged. Checks for unstable fibres were added (GL₂ at y = z = 0; SO(3) at s = 0 is two lines).

## F09 (P2) — applied

gap:harish-chandra-characters is deleted from the README and plan.json. §3.3 now consumes EndoscopicTransferAndUnitaryTraceComparison §2.3(a)–(b), which is earlier in the merge order. Its statement covers finite-length admissible representations of real reductive groups: trace class, and a locally integrable character analytic on the strongly regular set. A supplier subsection was added, and the scope, §3.3 *Needs* and Layer 3 Dependencies were updated.

## F10 (P2) — applied

gap:local-spinor-images is restricted, identically in README and plan.json, to anisotropic spaces over finite extensions of ℚ_p (dimension 2: norm-group image, index 2; dimensions 3–4: all classes). The following pinned declarations are now cited under From Tau Ceti and in §8.7 and the Layer 8 dependencies:
- `CliffordAlgebra.spinorNorm_surjective_of_not_anisotropic` (Spin/SpinorNorm/Isotropic.lean);
- `CliffordAlgebra.spinorNorm_eq_one_of_posDef`, `spinorNorm_eq_one_of_negDef` and `spinorNorm_surjective_of_indefinite` (Spin/Real/SpinorNorm.lean).

## F11 (P1) — applied differently

The reviewer proposed summing over isomorphism classes with isotypic projections. I followed NV21 §25.3, p. 168, instead: sums run over the summands of a fixed orthogonal decomposition of `L²([H])`, with multiplicity. So `P_Σ` (§9.1) is now the projection onto the summand Σ, not onto the isotypic part, and §§9.2, 9.3 and 9.5 say so. The witness now gives 1 + 1 = 2, and the Check records that isotypic projections counted with multiplicity would give 4.

## F12 (P2) — applied

§9.1 now defines `P_Σ(T,S′)` with S′ variable. L(Π,Σ) is the unique scalar with `P_Σ = L·H_σ⊗H_{σ′}`, and L = 0 when that product vanishes (then `P_Σ = 0` by the local period-form inputs), as in NV21 §25.4. `P_Σ(T) = P_Σ(T,T′)`. The SO(2) weight-0/weight-1 witness is a Check, and the old Check "factorization does not determine L" is replaced.

## F13 (P3) — applied

All five Checks replaced:
1. Conventions: shifted Gaussian, `−i e^{−π/16}` versus `+i e^{−π/16}` at x = 1/4.
2. §1.1: C₁ is antisymmetric; Heisenberg value `½ξ(Z)∂_Xa∂_Yb`.
3. §1.6: the pull-back `e^{−ξ₁²}` has `∂₁b(1,R) = −2e^{−1}`, so it is not S⁰.
4. §3.6: shell mass is `O(A^d)` and shells may be empty.
5. Worked example: the empty limit holds only for d > 0; for a torus the limit is the point {0}, of mass 1.

## F14 (P3) — applied

sources.toml `version_note` now says that all locators refer to the published Acta version and that the arXiv numbering differs and is not used. Theorem 26.4 was confirmed in the published text.

## F15 (P2) — applied

§2.7 and §4.6: "distance h^δ from the joint locus" → for each ξ ∈ supp a, `dist([ξ],hλ_π) ≥ h^δ` or `dist([ξ|_𝔥],hλ_σ) ≥ h^δ` in the generator coordinates of §2.1. This is the hypothesis of NV21 Lemma 10.4, (10.8), p. 81. The `q = x²` witness is a §2.7 Check.

## F16 (P1) — applied differently

Rather than a new slug, the existing gap:tempered-xi-bounds (same supplier) is widened to reductive groups over ℝ, ℂ or a nonarchimedean local field of characteristic zero, with a special maximal compact in the nonarchimedean case. The §4.3 bullet now derives p-adic convergence from it, with the constant bounded at a fixed level. plan.json `neededBy` includes 4.3.

## F17 (P1) — applied

Merged with b-F01. Declared gap:hilbert-mumford-linear and gap:free-stable-quotient-bundle on AlgebraicModuliForArithmeticGeometry, which is earlier in the merge order. They appear under the README contracts and in plan.json. A search found no roadmap stating affine GIT for reductive groups; CountingBundlesAndHallAlgebrasOfCurves already asks the same supplier for a GIT extension. Both gaps are cited in the §5.2 and §5.3 routes and *Needs*.

## F18 (P2) — applied

The §5.3 route now uses NV21 Lemma 13.3 (open orbit with trivial stabilizer on the flag variety of G×H, so a Borel acts simply transitively) and the Lemma 14.6 argument: annihilator ≅ 𝔟*, then Chevalley restriction. A search found no owner of Lemma 13.3, so it is stated as part of §5.3 here. The ℙ¹ counterexample is a Check. LieHighestWeight Layer 7 was added to *Needs*.

## F19 (P1) — applied differently

No new supplier gap is needed. The cotangent sequence is pinned in Mathlib:
- `KaehlerDifferential.exact_mapBaseChange_map`;
- `Algebra.H1Cotangent.exact_δ_mapBaseChange`;
- `Algebra.IsStandardSmooth.subsingleton_h1Cotangent`;
- `exteriorPower`.

The determinant identification is the §5.4 target itself. DifferentialGeometry Layer 5 now appears only at §5.7. A ℚ̄ Check gives `(dx∧dy)/dy = dx`.

## F20 (P2) — applied

Global setting: X = [G]/K is now the finite disjoint union of `Γ_j∖(G×G′)` over `G(F)\G(𝔸^R)/K` (AdelicAlgebraicGroups §3.4), with total mass τ(G); likewise for H. The README notes that the source assumes `G(F)G_R K = G(𝔸)` (NV21 §25.1, p. 167). A multi-component Check was added to §8.1.

## F21 (P1) — applied

§3.5 now cites FormalConnectionsOpers F4.3 (principal slice ≅ quotient, meeting every regular orbit once), transported by equivariance to all regular elements, plus a complexification adapter. A supplier subsection was added. FormalConnectionsOpers is another author's open pull request adding a new roadmap folder, which the brief allows. The 𝔰𝔩₂ Check is at diag(1,−1).

## F22 (P2) — applied

§1.3(ii) is now stated for `Ω = e^{{x,y}ζ}` minus its graded parts `Ω_j`, not for the phase. Heisenberg Check: `e^z − 1 − z = −ε²/2 + O(ε³)`.

## F23 (P3) — applied

- §1.9: the dyadic Check is replaced by the truncated Hilbert-transform symbols, whose `‖a_K^∨‖_{L¹} ≍ K`. The telescoping all-plus counterexample is recorded, so growth is not claimed for every choice of signs.
- §5.2 ggpBlock: requires c ∈ k^×.
- §8.5: p + q ≥ 3, with Spin(1,1) a torus.
- §8.6: "identity component of the centralizer"; the full centralizer has a ≠ 0.

## F24 (P3) — applied

Third §1.6 Check added: two coordinate axes of ℝ², with the product `e^{−ξ₁²−ξ₂²}` Schwartz; replacing b by 1 gives value 1 at (0,R).

## F25 (P3) — applied

Added a module-docstring bullet naming §§4.2, 4.4 and 4.6 (Lemmas A.3, A.4 and 18.1) as not statable, with the missing carriers. No substitute theorem.

# Review r1b

## F01 (P1) — applied

Settled with a-F17. I used the reviewer's alternative (supplier gaps on AlgebraicModuliForArithmeticGeometry) instead of new §5.1a/§5.1b targets: affine GIT is general library and belongs with the moduli supplier. Zariski's main theorem is cited at the pin instead (`AlgebraicGeometry.Scheme.Hom.exists_isIso_morphismRestrict_toNormalization`), and "a dimension count" is replaced in the §5.3 route.

## F02 (P3) — applied

The gap:relative-character-positivity `needs` now spells out `H_σ` by its formula, identically in README and plan.json.

## F03 (P3) — applied

- §9.1: §§28.1–28.3 → §§28.1–28.2.
- §9.3: §§29.2–29.4 → §§29.2–29.3.
- The OrthogonalSpinGroups contract now cites 2F's real rows, and 2G only for compactness.

All were confirmed against the published table of contents and the OrthogonalSpinGroups README on main.

## F04 (P3) — applied

The §7.7 Check now states the actual defects of the printed `f_n` (NV21 p. 166): `f_n(1) = n+1 > 2` on the unit circle, and `f_n ≤ −1` on the negative interval for odd n. Stone–Weierstrass is what is used.

## Checks run

- `lake env lean packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/Suggested.lean`: success. The only output is 7 `declaration uses sorry` warnings, one per theorem; there are no errors.
- `#check @name` audit: all 13 declarations were checked in one scratch copy, with no errors. The 11 existing signatures are unchanged. The two new theorems carry every binder explicitly (the file has no section `variable`s) and match README §5.3: `IsAlgClosed`, `CharZero`, finite decidable ι, `hy`, `hz` (orthogonal), and no coprimality.
- Dependency check: `depcheck: 149 roadmaps, 1026 edges, 0 problem(s)` (exit 0); no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation or Lean name found nowhere.
- Ownership: checked against main, the board packages and the open heads through `roadmaps grep`. No owner exists for affine GIT, Hilbert–Mumford, or the GGP open-orbit lemma. Owners were found and cited for Harish-Chandra characters (EndoscopicTransferAndUnitaryTraceComparison §2.3) and the regular differential (FormalConnectionsOpers F4.3).

## Gate failures repaired

- Report headings: finding sections now use the reviews' own identifiers (`## F01 (P3) — applied`), grouped under "Review r1a" and "Review r1b".
- Formula outside a code span: in the §4.5 SO(3) ⊃ SO(2) Check, `σ(θ) = e^{iθ}` is now inside a code span; no other README line has a braced exponent outside code.

## Adversarial pass on new and changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| §4.5 rank-one trace | SO(3)⊃SO(2), weight-1 vector, σ = e^{iθ}; compact H | defining integral 1, `tr σ̄(f)` = 1, `tr σ(f)` = 0; compact case `⟨P_σv,v⟩/dim σ` | corrected identity holds |
| §4.5 invariance | same, T = v⊗v̄ | left translation e^{iθ} (−1 at π); conjugation 1 | conjugation only |
| §1.4 normalized pieces | m = −2, h = 1, ω = R | `‖φ^∨‖₁`, constant in R | consistent |
| §3.9 inverse exponent | G = ℝ, N = 2, t = 1/h | `Δ_h^{N/2}` = 2, `⟨ht⟩^{−2}` = ½, product 1 | N/2 forced |
| §4.1 invariant basis | SO(3) standard rep | rotation basis 3·1; rescaled basis diag(3,6,6) | invariance needed |
| §2.7 separation | q = x², point x = h^δ | ambient distance h^δ; invariant difference h^{2δ} | invariant coordinates needed |
| jointFibre_nonempty_unitary | ι = ∅; GL₂⊃GL₁, y = z = 0 | x = y; x = 0 | true |
| jointFibre_nonempty_orthogonal | ι = ∅; SO₃⊃SO₂; SO₄⊃SO₃ | x = 0; b²+c² = s − a′² solvable; ⟨w,v⟩ = Pf, ⟨v,v⟩ = Q solvable (w isotropic or not) | true |
| §5.3 surjectivity route | SL₂ on ℙ¹; GGP dimension count | Borel stabilizer is a torus, image is the nilcone; `dim B_G + dim B_H = dim G` for GL and for SO in both parities | trivial stabilizer needed |
| §9.1 multiplicity | two copies, mass 1 each | summand projections 1 + 1 = 2; isotypic projections counted twice give 4 | consistent with Parseval |
| §9.1 L with S′ variable | SO(2) auxiliary factor, T′ on weight 0 | `H_{σ′}(T′)` = 0; weight-1 S′ gives 1 | L determined |
| global setting | single versus several components | total mass τ(G) over the union | consistent with §8.1 |
| §5.4 sign | A² → A¹ over ℚ̄ | dx, or −dx under the reversed order | convention pinned |
| tempered-xi-bounds (p-adic) | fixed level U | dim K·u ≤ [K:U], so ∫ ≤ C∫\|f\|Ξ | finite |
| §1.9 Check | θ·ψ(2^{−K}ξ); all-plus telescoping | L¹ norm ≍ K; ≤ 2‖ψ^∨‖₁ | discriminates |

## For the maintainer

- The gap slug `harish-chandra-characters` is deleted; AutomorphicSpectralTheory no longer receives that request.
- New gaps are requested of AlgebraicModuliForArithmeticGeometry: `hilbert-mumford-linear` and `free-stable-quotient-bundle`.
- `tempered-xi-bounds` now also asks AutomorphicSpectralTheory for the nonarchimedean case.
- `local-spinor-images` asks OrthogonalSpinGroups for less than before.
- New Lean names: `jointFibre_nonempty_orthogonal` and `jointFibre_nonempty_unitary`. No existing name changed.
- FormalConnectionsOpers (another author's open pull request) is now a cited supplier.
- A gap needs-text mismatch I did not introduce remains: `unitary-xi-polynomial-tail` has a shorter `needs` in plan.json than in the README. I left it unchanged as out of scope.
- No untrusted text contained instructions.
