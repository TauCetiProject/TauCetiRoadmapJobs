# PKG-MetaplecticAutomorphicFormsPartII — package report

Deliverables: `packages/MetaplecticAutomorphicFormsPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.RT"`, as `TauCetiRoadmap/RepresentationTheory` on main), `sources.toml`, `design/plan.json` (top-level `gaps` only).

## Headline theorems

| # | Headline | Status | Lean name |
|---|---|---|---|
| 1 | Finite Stone–von Neumann: existence of an irreducible representation of `H(V)` with central character `ψ` | stated | `finite_stoneVonNeumann_exists` |
| 2 | Finite Stone–von Neumann: `dim² = |V|`, character vanishes off the centre, uniqueness | stated | `finite_stoneVonNeumann` |
| 3 | Fully ramified theorem (cyclic centre of any order), existence | stated | `fullyRamified_exists` |
| 4 | Fully ramified theorem: `d² = [J : H]`, character, uniqueness | stated | `fullyRamified_unique` |
| 5 | Existence and uniqueness of the normalized finite Weil representation (parity-determinant normalization, Egorov covariance), including `Sp₂(𝔽₃)` | stated | `existsUnique_isNormalizedWeil` (with the predicate `IsNormalizedWeil`) |
| 6 | Isotropic invariants of a fully ramified representation (Stevens Cor. 5.7 / Lemma 5.12 form): `E^U` is `Q`-stable, `Q`-irreducible, `(dim E^U)²·|HU| = |Q|` | stated | `fullyRamified_isotropicInvariants` |
| 7 | Lagrangian fixed line carries `χ(det(g|_L))` (Fintzen Lemma 7.10 input, corrected Gérardin twist) | stated | `isNormalizedWeil_lagrangian_fixed` |
| 8 | Corrected Gérardin parabolic induction formula | not statable at the pins | needs the normalized Weil–Heisenberg representation as a constructed object, the quotient space `I^⊥/I` with its Heisenberg group, and induction from `P ⋉ H(I^⊥)` |
| 9 | Tensor compatibility along orthogonal sums | not statable at the pins | needs the constructed Weil–Heisenberg representation and the Heisenberg sum map `∏H(Vᵢ) → H(⊕Vᵢ)` |

For 6, the induction isomorphism `Ind_Q^J η_U ≅ η` is in the README (§3.4) and is a consequence of the stated irreducibility and dimension via Frobenius reciprocity; stating it in Lean would require building the `Q`-subrepresentation as data, so the Lean statement carries the invariants part. Definitions added only for statability: `heisenbergFactorSet`, `Heisenberg` (the half-form specialization of MetaplecticAutomorphicForms §0.1, which is a roadmap still in a pull request and cannot be imported), `polarizationForm`, `schrodingerOp`, `evenPart`, `IsNormalizedWeil`; all have real bodies on native carriers, no sorry'd data.

## Corrections to the design (what I changed and why)

1. **Pins.** The design's baseline (Mathlib 082e2d3, Tau Ceti f790474) is not the pin. The pins are Mathlib `6b7abb3` and Tau Ceti `a91d3aa`. At these pins `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J` and `LinearMap.BilinForm.IsAlt.even_finrank` (`TauCeti/LinearAlgebra/BilinearForm/SymplecticBasis.lean` lines 301, 309) and `TauCeti.HeisenbergGroup` are present; the design's statements that they are "absent at the pinned commit" were dropped and they are cited as pinned suppliers.
2. **Supplier node names.** The design's `MetaplecticAutomorphicForms:MP.0/...` identifiers were resolved to the parent's actual sections at its head: §0.1 `bilinearFactorSet`, §§0.3/0.5 `halfForm_commutator`, §0.6 `halfForm_center`, §§0.7–0.8 `extensionIsometry`/`extensionIsometryAction`, §§0.9–0.10 `polarization_cocycle`/`polarizationEquiv`, §0.9a `exists_lagrangianComplement`. `MordellLawrenceVenkatesh:LV.3/lagrangian-symplectic-basis` was resolved to MordellLawrenceVenkatesh Layer LV.3 §§3.1–3.2.
3. **F₃ commutator check (sign).** The design's Check `schrodinger_F3_commutator` said "translation by 1 followed by modulation by 1 equals ζ times their reverse product". Computed: `(TMf)(z) = ζ^{z+1}f(z+1)`, `(MTf)(z) = ζ^z f(z+1)`, so `T∘M = ζ·M∘T` (modulation applied first); "translation followed by modulation" is `M∘T = ζ⁻¹·T∘M`. The README Check states `T ∘ M = ζ · M ∘ T` and flags the other order as false; it agrees with the Heisenberg commutator `(ω(e₁, e₂), 0) = (1, 0)`.
4. **Parity subspace in the Lean predicate.** For `q = 3`, `W(−1) = −R`, so the `+1`-eigenspace of `W(−1)` is `S⁻`; the even subspace must be defined from parity `R`, not from `W(−1)`. `IsNormalizedWeil` uses the explicit projector `evenPart X`; this is a README Check in §2.2.
5. **Layer 2 generality.** The Weil targets are stated for the polarized model `X × X*` (Lean and README agree), with transport to arbitrary `(V, ω)` by §0.2/§1.2; the design mixed the abstract and polarized settings.
6. **Isotropic induction (Stevens) generality.** The design asked for `J/H` an `𝔽_p`-space. The statement holds for any finite `J` with abelian `J/H` and nondegenerate `θ`-commutator pairing (the pairing is then perfect, `Ū^{⊥⊥} = Ū`); isotropy of `Ū` follows from `θ(U ∩ H) = 1`, so it is not an extra hypothesis. Stated at that generality.
7. **Removed non-roadmap material.** The design's "Companion-roadmap proposal" (SW.0–SW.8, 78 routed theta items), the "Finite paper coverage" routing table, the suggested-file boundary table, routed item identifiers, "Planet" labels and the "Source corrections" process section were not carried into the README (process narrative; the characteristic-zero theta material is owned by MetaplecticAutomorphicForms Layers 3–6). Source misprints are kept as timeless "Notes on the sources". The name `SmoothRepresentationsPartII` as the p-adic consumer does not exist as a roadmap; the consumers are described by construction (Fintzen, Fintzen–Schwein, Stevens).
8. **`plan.json` gaps.** The only entry was a source-comparison note (Gérardin's `Sp₂(𝔽₃)` normalization), not a supplier gap in the required `slug/needs/supplier/section` form; the list is now `[]`. The package needs nothing from another roadmap that the roadmap does not state.

## What the README could not support

- Gérardin 1977 (Gerardin77) is paywalled (recorded `uncertified`). The README does not claim that the parity-determinant normalization (N02 Theorem 4.3) equals Gérardin's choice among the three linearizations for `Sp₂(𝔽₃)` (FS25 line 630); it defines the normalization by the determinant identity. For `Sp(V) ≠ Sp₂(𝔽₃)` the linearization is unique (N02 Lemma 7.1, `Sp` perfect), so the two agree. The corrected formula of §3.2–3.3 rests on F21 footnote 3 (line 1346) and on the independent proof route given there, not on Gérardin's text.

## Notions moved down from later roadmaps

None. Suppliers: MetaplecticAutomorphicForms (merge order line 165) and MordellLawrenceVenkatesh (line 176), both earlier than this roadmap (line 321), both new-roadmap pull requests; RepresentationTheory/InductionRestriction and RepresentationTheory/CharacterTheory on main.

## Duplication sweep and removals

Searched by object (Heisenberg/extraspecial groups, Stone–von Neumann, Schrödinger, finite Weil representation, Gérardin, Fintzen, fully ramified, special isomorphism, `Sp₂(𝔽₃)`) with `roadmaps grep` over main and the 354 open heads, the board packages, Mathlib and Tau Ceti at the pins.

- Removed as targets / cited instead: general symplectic bases and even dimension (Tau Ceti `exists_basis_toMatrix_eq_J`, `even_finrank`); prescribed-basis Lagrangian extension and the Lagrangian dimension criterion (MordellLawrenceVenkatesh §§3.1–3.2); the bilinear Heisenberg extension, commutator, centre, isometry action, polarization change and Lagrangian complements (MetaplecticAutomorphicForms §§0.1–0.10, 0.9a); rank-one Heisenberg group, cardinality, commutator (`TauCeti.HeisenbergGroup`, `card_eq`, `commutatorElement_eq`); induction, Frobenius reciprocity, Clifford theory, projective representations (InductionRestriction Layers 0–7 via `TauCeti.indFDRep`, `Rep.indResHomEquiv`, `TauCeti.IsProjectiveRep`, `TauCeti.IsProjectiveRep.rescale`); character orthogonality, Maschke, Schur (CharacterTheory via Mathlib).
- Kept with a stated difference: MetaplecticAutomorphicForms §4.7 `finiteWeil` is the `Mp₂(ℤ)` representation on a discriminant module, not the `Sp(V)` representation over a finite field; its §§0.15–0.16, 1.1–1.4 are over local fields. Tau Ceti's Clifford files (`FullInertia`, `Obstruction`, `Dimension`) do not contain the fully ramified theorem. SmoothRepresentationsOfLocalGroups (open head) uses Heisenberg representations of `J¹` for `GL_n` types but states no finite uniqueness theorem. IntegralHeckeAndGaloisDeterminants' "finite Weil action" is a Weil-group action, unrelated. HeisenbergImprimitivity concerns locally compact abelian phase spaces and C*-Morita equivalence, unrelated.
- Ownership: this roadmap owns the finite odd-characteristic Weil–Heisenberg theory; no roadmap on main, open head or board package plans it. No declaration of `Suggested.lean` has the fully qualified name of a declaration of another roadmap (the parent's `TauCetiRoadmap.MetaplecticAutomorphicForms.Heisenberg.bilinearFactorSet` differs from `TauCetiRoadmap.MetaplecticAutomorphicFormsPartII.heisenbergFactorSet`).

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §0.1 adapted coordinates | `I = 0`; plane `I = k(1,0)`; two planes, `I` = first x-axis; `I` = plane | `V₀ = V`; `V₀ = 0`, `2 = 2·1+0`; `dim V₀ = 2`, `4 = 2·1+2` (vs wrong `3`); `ω((1,0),(0,1)) = 1 ≠ 0` | holds; plane not isotropic | Checks added |
| §0.2 `polarizationForm` | `X = k` at `((1,0),(0,1))`, reversed; `J(1,0)`; `X = 0` | `1`, `−1`; `J(1,0) = (0,−1)`, value preserved `1`; zero form nondegenerate on `0` | holds; `Matrix.J` is the negative | Checks |
| §1.1 Heisenberg law | `𝔽₃²`: `(0,e₁)(0,e₂)`, reverse; `V = 0`; char 2 junk `1/2 = 0`; map to `TauCeti.HeisenbergGroup` | `(2,(1,1))`, `(1,(1,1))`, quotient `(1,0)`; group `k`; abelian `k × V`; `(1/2,1,1) ↦ (1,1,1) = (1,0,0)(0,1,0)` | holds; odd char needed | Checks |
| §1.2 `schrodingerOp` homomorphism | general expansion | exponent of product `t+s+y(z)+y'(z)+y'(x)+y(x)/2+y'(x')/2` both sides | holds | — |
| §1.2 F₃ commutator | `T = π(0,1,0)`, `M = π(0,0,1)` | `TM = ζ MT`; `Mδ₁ = ζδ₁`, `Tδ₁ = δ₀` | design wording wrong | corrected (item 3) |
| §1.3 character / SvN | `𝔽₉`, `ψ = ψ₃∘Tr`, `y(z) = z`; `n = 0`; `ψ = 1`; `q = 3, n = 1` class count | `Σψ(z) = 0` though `ψ(z₀)=1`; `d² = 1`; 9 inequivalent 1-dim reps with trivial centre; `9·1 + 2·9 = 27` | holds; `ψ ≠ 1`, odd char needed | Checks |
| §1.3 Lean `finite_stoneVonNeumann` | `V = 0` | `finrank² = 1 = Nat.card V`; off-centre clause vacuous | holds | — |
| §1.4 fully ramified | central product `p³ ∘ ℤ/p²`; order `p³` exponent `p²`; abelian `J`, `H ≠ J`; `H = J`; `J = H(V)` | `d = p`; `d = p`; `[J:H]` extensions, hypothesis fails; `d² = 1`; `d² = q^{2n}` | holds; nondegeneracy needed | Checks |
| §1.4 trace vanishing | `g ∉ H`, `x` with `θ([g,x]) ≠ 1` | `tr η(g) = θ([x,g]) tr η(g)`, `θ([x,g]) = θ([g,x])⁻¹ ≠ 1` | holds | — |
| §1.5 intertwiners | `A = B` line in `𝔽₃²`; transverse lines; `V = 0` | `T_AA = 3`, double `9`; `T_AB T_BA = 3` (vs `9` for `|A|²`); `1` | holds; composite derived `Σ_a ψ(ω(b,a)) = |A|·[b ∈ A]` | — |
| §2.1 projective action | `u(1)` in `𝔽₃²` rescaled by `ζ` | `c(g,g)` times `ζ² ≠ 1` | factor set not fixed by covariance | Check |
| §2.2 normalization / uniqueness | `n = 0`; `𝔽₃` twist by order-3 `λ`; `𝔽₅` dims; inverted ratio; general scalar `a` | `κ = a⁻¹`, `W = id`; `det` unchanged, `(det|S⁺)²` times `λ`; `3, 2`, `5 − 6 = −1`; rescale gives `a²`; `a^{qⁿ} = a^{qⁿ+1} ⇒ a = 1` | holds incl. `Sp₂(𝔽₃)` | Checks |
| §2.2 parity vs `W(−1)` | `q = 3, n = 1` | `W(−1) = χ₃(−1)R = −R`; `+1`-eigenspace `S⁻` | design-level trap | predicate uses `evenPart`; Check |
| §2.2 Lean `existsUnique_isNormalizedWeil` | `X = 0` | `Sp` trivial, `W = id`, `det id = 1 = (det id)²` | holds | — |
| §2.3 generators | `q = 3`: `u(1)`, `m(−1)`, `J`; `q = 5`: `J`, `m(2)` | `diag(1,ζ,ζ)` (`−z²/2 = z²`); `−R`; Vandermonde `−3√3i/(√3)³ = −i`; `κ_J = −1` (N02 line 372); `χ₅(2) = −1` | match N02 | Checks |
| §2.3 sign of `m(A)` | generator of `kˣ` as permutation of `k` | one cycle of length `q−1` (even) ⇒ odd ⇒ `−1 = χ(gen)` | N02 prose says "even" (misprint, sign right) | source note |
| §2.4 Weil–Heisenberg | `W(J)TW(J)⁻¹`; `V = 0`; reversed formula with `g = J`, `h = (0,(1,0))` | `π(0,0,−1)`; `ψ`; `π(h)W(J) = W(J)π((0,(0,1)))`, `(0,(0,1)) ≠ h` | holds; reverse fails | Checks |
| §2.5 special transport | `P = H(V)`, `j = id`; inner automorphism by `(0,w)`; exponent-`p²` group | `Ω`; `(t,v) ↦ (t+ω(w,v), v)`, equivariance fails for `s = 1`; no special iso | holds | Checks |
| §3.1 mixed model | `I = 0`; `I` Lagrangian; line in `𝔽₃⁴`; multiplier derivation | whole space; `ℂδ₀`; `3` of `9`; `(0,j)(0,i) = (ω(j,i),0)(0,i)(0,j)` ⇒ `ψ(ω(j,i))` | holds | Checks |
| §3.2 parabolic fixed space | `𝔽₅`, `I` = y-axis, `m(2)`; `I` = x-axis; `I = 0`; Lagrangian `I` | `χ₅(3) = −1` on `δ₀`; `χ₅(2) = −1` on constants; trivial twist; line | holds; untwisted predicts `+1` | Checks |
| §3.3 corrected formula | `n = 2`, `dim I = 1`, `𝔽₃`; untwisted; `I = 0` | `3·3 = 9`; fails `𝔽₅` test; identity | holds | Checks |
| §3.4 Lean `fullyRamified_isotropicInvariants` | `U = 1`; `U ≤ H`, `θ(U)=1`; `H(𝔽_p²)`, `U` lifting x-axis; `U = H`, `θ ≠ 1` (hypothesis dropped) | `d²|H| = |J|`; same; `1·p² = p²`; `0·|H| ≠ |J|` | holds; hypothesis `θ(U∩H)=1` needed | Checks |
| §3.4 `Q`-stability | `q ∈ Q`, `u ∈ U` | `ρ(u)ρ(q) = ρ(q)ρ(u)θ([u⁻¹,q⁻¹])`, `θ([u⁻¹,q⁻¹]) = e(u,q) = e(q,u)⁻¹ = 1` | holds | — |
| §4.1 Lean `isNormalizedWeil_lagrangian_fixed` | `L = {0}×X*`, `m(A)`, `u(C)`; `L = X×{0}`, `m(2)` over `𝔽₅`; `q = 3`, `g = −1`; `X = 0`; upper shear on constants | `χ(det A) = χ(det A^{−T})`, `1`; `−1 = χ₅(2)`; `−1 = χ₃(−1)`; `det = 1`, `W = id`; `1` | holds | Checks |
| §4.2 tensor compatibility | determinant identity for `W₁⊗W₂`; two `𝔽₃` planes; different `ψᵢ`; empty family | `det = α₁^{2n₂}α₂^{2n₁} = (α₁^{n₂}α₂^{n₁})²`; dim 9, fixed `δ₀⊗δ₀`; `(t,−t)` acts by `ψ₁(t)ψ₂(−t) ≠ 1`; `q⁰ = 1` | holds; common `ψ` needed | Checks |

Context check: every `sorry`'d theorem carries its hypotheses (`[Fintype k]`, `[FiniteDimensional …]`, `ringChar k ≠ 2`, `IsAlt`, `Nondegenerate`, `ψ ≠ 1`, `[Finite J]`, normality, invariance, nondegeneracy) in its own signature. I put `#check @name` for all 13 declarations in one scratch file and elaborated it once; every elaborated type matches the README statement and no binder was dropped; nothing changed as a result. The `variable (k X)` / `variable {k X}` switch in the Weil section was checked to give `polarizationForm k X` explicit arguments and `schrodingerOp` implicit ones, as the README writes them.

## Elaboration

`lake env lean packages/MetaplecticAutomorphicFormsPartII/Suggested.lean` from the content checkout: exit 0, **7** warnings, all `declaration uses 'sorry'` (lines 75, 87, 112, 126, 197, 219, 252), no other messages. Imports: `import Mathlib`, `TauCeti.Algebra.GroupAction.Trivial`, `TauCeti.GroupTheory.GroupExtension.Of.FactorSet`, `TauCeti.LinearAlgebra.BilinearForm.Isometry` (object files present; nothing built). No `set_option`.

Library citations: the 36 Mathlib and built-Tau-Ceti names of the README were `#check`ed at the pins in a scratch file (all resolve). The Tau Ceti names in unbuilt modules (`exists_basis_toMatrix_eq_J`, `even_finrank`, `TauCeti.HeisenbergGroup` with `card_eq`, `commutatorElement_eq`, `TauCeti.IsProjectiveRep`, `.rescale`, `TauCeti.indFDRep`, `TauCeti.finrank_indFDRep`, `TauCeti.indFDRepForgetEquiv`, `TauCeti.Rep.indSubtypeEquivPi_ρ_apply`, `FDRep.ofLinearCharacter`) were confirmed by reading the pinned sources (files and lines above); I did not build those modules since `Suggested.lean` does not import them.

## Dependency check

```
depcheck: 56 roadmaps, 643 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.

## Sources

All cited works fetched through the sources service and recorded in `sources.toml`: F21 (arXiv v2, certified), S08 (arXiv v2, certified), FS25 (author page, certified), N02 (publisher open archive of the Journal of Lie Theory, `--licence-class publisher-open`, text by OCR, certified), Gerardin77 (paywalled, `uncertified`, cited by locator only). The first N02 attempt recorded a `[[missing]]` entry because the host had no licence class; after the successful fetch I deleted that scratch `needs-references.toml`, so no text is requested. Locators were checked against the cached texts (line numbers in the README References). Ownership against open pull requests was checked with the roadmap index of 2026-10-26.

No suspicious instructions were found in fetched or read material.
