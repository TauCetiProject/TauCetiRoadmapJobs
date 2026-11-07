# FIX-PKG-VStackSheavesAndLisseCategoriesPartII~2

Repair round for the review `REV-PKG-VStackSheavesAndLisseCategoriesPartII` (four findings, all P3). All four were verified against the supplier head, the pinned libraries and the mathematics, and all four are applied. Files touched: `packages/VStackSheavesAndLisseCategoriesPartII/README.md` and `packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean`. `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged (no new source, no new gap).

## REV-PKG-VStackSheavesAndLisseCategoriesPartII/F01 (P3) — applied

Verified: the head of VStackSheavesAndLisseCategories (read with `roadmaps show`) has no slug `point-to-classifying-stack-not-smooth`, `ula-relative-adjoints-and-calculus` or `ula-equals-admissibility`; the content is a §VS0.2 Check (point of `[∗/ℤ_p]` not a smooth atlas), the §VS1.1 sub-target "Relative adjoints and ULA calculus", and the §VS5.2 sub-target "Torsion ULA and perfect invariants" (stated for `Bun_G`, Fargues–Scholze Theorem V.7.1).

Old → new: the three labels replaced by the Check description and the two sub-target names in the supplier contract (§VS0.2, §VS1.1, §VS5.2 bullets), in the `*Needs:*` lines of VS6.8, VS9.9 and VS11.1, and additionally in the VS9.9 proof sketch step 3 and the VS11.1 proof sketch step 3, which the review's line list did not include (pattern repair). The §VS0.2 contract now says the supplier gives the `ℤ_p` case, the model case of an infinite compact open K, matching the VS6.8 Check (G = ℤ_p). The §VS5.2 contract states the `Bun_G` criterion as the supplier states it and says VS11.1 adapts the argument to `[S/G_S]`. `grep -c` of the three old labels in the README: 0.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII/F02 (P3) — applied

Verified by my own computation (see the adversarial table): with `(g·μ)(E) = μ(Eg)`, one has `(g·μ)(E) = μ(g⁻¹Eg)` by left invariance, so `g·μ` is the push-forward of `μ` along `x ↦ gxg⁻¹`; substituting `x = gyg⁻¹` in `I_(g·h, g·μ)` with `(g·h)(x) = h(g⁻¹xg)` gives `I_(g·h, g·μ) = g ∘ I_(h,μ) ∘ g⁻¹` for every M, hence invariance of the trace; the other direction fails on the trivial representation of a non-unimodular group.

Old → new: Conventions gains a bullet fixing the action on `C(T, Λ)`, `C_c(T, Λ)` for a G-set T as `(g·h)(t) = h(g⁻¹·t)`, hence `(g·h)(x) = h(g⁻¹xg)` on `C_c(G, Λ)`, with the two-term witness. VS8.10's statement and its T = G Check, VS11.2's statement, VS11.3's statement, API bullet and proof sketch step 4 now state the direction and the identity `I_(g·h, g·μ) = g ∘ I_(h,μ) ∘ g⁻¹`; VS11.3 gains the Check with the values `2·2⁻¹·μ(K) = μ(K)` versus `4μ(K)`.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII/F03 (P3) — applied

Verified at the pins: `Mathlib/RingTheory/Perfectoid/` holds `Untilt.lean`, `FontaineTheta.lean`, `BDeRham.lean`; `PreTilt` is `Mathlib/RingTheory/Perfection.lean` line 623; a grep for `PerfectoidRing` and `IsPerfectoid` over the pinned Mathlib returns no file. Tau Ceti has `IsPerfectoidTateRing` (`TauCeti/RingTheory/Perfectoid/Basic.lean` line 86) and `IsPerfectoidField` (`TauCeti/RingTheory/Perfectoid/Field.lean` line 68).

Old → new: the docstring clause "Mathlib has perfectoid rings and their tilts … and Tau Ceti has pre-adic and adic spaces" became "Mathlib has pretilts, the untilt map and Fontaine's θ …, and Tau Ceti has perfectoid Tate rings and fields (`TauCeti/RingTheory/Perfectoid/`) and pre-adic and adic spaces …". The conclusion (nothing statable) is unchanged.

## REV-PKG-VStackSheavesAndLisseCategoriesPartII/F04 (P3) — applied

Verified: `class IsReflexive` is `Mathlib/LinearAlgebra/Dual/Defs.lean` line 203 (line 212 is `theorem erange_coe`); `instance rightRigidCategory` is `Mathlib/Algebra/Category/FGModuleCat/Basic.lean` line 265 (line 264 is blank).

Old → new: "line 212" → "line 203"; "line 264" → "line 265" in the From Mathlib contract. The other line locators in that contract were not changed (the review checked them exact).

## Checks

- `lake env lean packages/VStackSheavesAndLisseCategoriesPartII/Suggested.lean` from the content checkout: exit 0, no output (2.7 s). The file declares nothing, so the `#check @name` comparison of elaborated types against README statements has no declarations to run on; nothing changed in the Lean file besides the docstring clause.
- Dependency gate (`gate --depcheck … --movable`): `depcheck: 242 roadmaps, 2482 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere.
- Old labels: `grep -c` of the three absent slugs in the README is 0; every remaining VStackSheavesAndLisseCategories citation names a slug present at the supplier head (`artin-v-stack-definition`, `enhanced-smooth-descent`, `shriek-pullback-for-smooth-stacky-maps`, `ula-definition-with-constructibility`, `ula-descent-and-smooth-locality`, `ula-dualizability-criterion`, `smooth-ula-criterion`, `ula-for-artin-v-stacks`, `classifying-stack-equivalence`) or a sub-heading or Check present there.
- Style scan of the edited files: no LaTeX delimiters, no machine paths, no process words.
- No gate failures were listed in the brief.

## Adversarial pass on the added and changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conventions, action on `C_c(T, Λ)`: `(g·h)(t) = h(g⁻¹·t)` | T = G with conjugation, g = diag(2,1) in the affine group over ℚ_2, h = 1_K | `g·1_K = 1_(gKg⁻¹)`; μ(gKg⁻¹) = μ(Kg⁻¹) = χ_G(g)⁻¹μ(K) = 2⁻¹μ(K); with g·μ = 2μ: 2·2⁻¹μ(K) = μ(K). Other direction: μ(g⁻¹Kg) = μ(Kg) = 2μ(K), times 2 gives 4μ(K) ≠ μ(K) in F_5 | only the stated direction is invariant | bullet added |
| same, degenerate | G unimodular (compact G, abelian G, G = 1); T a point | χ_G = 1, both directions agree (the witness must be non-unimodular, and is); C(pt, Λ) = Λ with trivial action | consistent, witness discriminating only for non-unimodular G | none |
| VS11.3 invariance `I_(g·h, g·μ) = g ∘ I_(h,μ) ∘ g⁻¹` | general M, K pro-p open, h bi-K-invariant | (g·μ)(E) = μ(Eg) = μ(g·g⁻¹Eg) = μ(g⁻¹Eg), so ∫ f d(g·μ) = ∫ f(gyg⁻¹) dμ(y); I_(g·h,g·μ)(v) = ∫ h(g⁻¹xg) x v d(g·μ)(x) = ∫ h(y) gyg⁻¹ v dμ(y) = g I_(h,μ)(g⁻¹v); g·h is bi-(gKg⁻¹)-invariant, g maps M^K ≅ M^(gKg⁻¹), traces of conjugate endomorphisms agree | holds for every M, not only the trivial one | sketch step 4 made explicit |
| VS11.3 new Check versus the existing ℤ/2 Check | G = ℤ/2, Λ = F_3, sign representation, μ counting, g = σ | conjugation is trivial, χ_G = 1, g·1_{σ} = 1_{σ}, tr.dist(sign)(1_{σ} ⊗ μ) = −1 before and after | consistent with the existing Check | none |
| VS11.3 new Check versus VS11.4 | M = Λ trivial on [S/G_S] | tr.dist(Λ)(h ⊗ μ) = ∫ h dμ is the Haar distribution, invariant under the twisted conjugation action: it is the image of the canonical trivialisation of K_(In/S) (VS11.6) | consistent | none |
| VS8.10 statement with the action direction | T = G conjugation; T = point | Hom_G(C_c(G, Λ) ⊗ Haar, Λ) with the invariant direction (above); for a point, Haar(G, Λ)^∗ invariants, unchanged | consistent | direction added |
| §VS0.2 contract: "point of [∗/ℤ_p] not a smooth atlas, the model case of an infinite compact open K" | VS6.8 Check G = ℤ_p; G = GL_n(ℤ_p) | supplier gives the ℤ_p case (its §VS0.2 Check); [S/GL_n(ℤ_p)] → S is smooth while the point S → [S/GL_n(ℤ_p)] is not, the same mechanism (f^!Λ = Dist(K, Λ) not invertible) | the contract no longer claims more than the supplier states | reworded |
| §VS5.2 contract: ULA on Bun_G iff perfect derived pro-p invariants on every stratum | the stratum of b = 1 is [∗/G(E)]; M = C_c(G, Λ) | the b = 1 stratum gives the [S/G_S] case VS11.1 adapts; C_c(G, Λ)^K of infinite rank is not perfect, not ULA, agreeing with the VS11.1 Check | consistent | reworded |
| F04 locators | `sed -n 203p` and `sed -n 265p` at the pin | `class IsReflexive : Prop where`; `instance rightRigidCategory : RightRigidCategory (FGModuleCat K) where` | exact | numbers changed |

## For the maintainer

- No name that another roadmap cites changed; `Suggested.lean` still declares nothing.
- The three relabelled citations are descriptions of sub-headings and a Check at the supplier head of VStackSheavesAndLisseCategories, not slugs; if that supplier later gives those sub-targets slugs, the six citation sites (supplier contract §VS0.2, §VS1.1, §VS5.2; VS6.8, VS9.9 and VS11.1 `*Needs:*` lines and the VS9.9 and VS11.1 proof sketches) can be switched to them.
- Ownership against open pull requests was not re-checked this round: no object was added, and the review's own check over all open heads stands.
- No source was fetched or added; `needs-references.toml` was not created. No text read asked for an action.
