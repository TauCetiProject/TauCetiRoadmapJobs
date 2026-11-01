# Review of TeichmullerGeometry (pull request #1169 at 927e679)

**Verdict:** accepted

Incremental re-review of the 79 lines changed since 981f892 (the head the previous review read): the previous findings, the changed passages and everything that cites them, the gate, the elaboration and the adversarial rows for the changed statements. Three P3 notes remain, none blocking.

Gate at this head (worker's run, data): every check passed, `depcheck=0`, `build=0`. My own runs from the pull-request worktree: `lake env lean TauCetiRoadmap/TeichmullerGeometry/Suggested.lean` elaborates with exactly five `declaration uses sorry` warnings (lines 67, 81, 96, 105, 118) and nothing else, in 5 s with no package checkout; the dependency check with `--movable` prints `depcheck: 204 roadmaps, 1437 edges, 0 problem(s)`, no UPWARD, CYCLE or `moved:` line (TeichmullerGeometry is line 263 of the merge order). `git diff --stat origin/main...HEAD` outside the folder: nothing. The folder holds `README.md`, `Suggested.lean`, `metadata.toml` only.

## R01 (P3) — the PlanarTopology contract omits Layer 4, which §5.5 now consumes

Location: `TauCetiRoadmap/TeichmullerGeometry/README.md` line 69 (the `From TauCetiRoadmap.PlanarTopology` contract lists "Layers 5 and 6: … Layer 8: …" and no Layer 4); line 485 ("pass from the piecewise-linear to the given smooth curves by PlanarTopology Layer 4's relative approximation theorem") and the `*Needs:*` line 494 ("PlanarTopology Layer 4").

Witness: at #271 the relative PL approximation theorem is `exists_pl_approximation_rel` of `PlanarTopology/README.md` Layer 4 (its lines 573–600); the contract section of this README, which is where every consumed supplier statement is named, does not list it.

Repair: add to line 69 the clause "Layer 4: the relative piecewise-linear approximation theorem `exists_pl_approximation_rel` (a homeomorphism between triangulated surfaces that is PL on a subcomplex is approximated by a PL homeomorphism agreeing with it there)".

## R02 (P3) — the Layer section comments of `Suggested.lean` are not in README order

Location: `TauCetiRoadmap/TeichmullerGeometry/Suggested.lean` lines 58 (`/-! ## Layer 5: … -/`) and 111 (`/-! ## Layer 4: … -/`).

Witness: the README's Layer 4 (line 346) precedes its Layer 5 (line 430); the house rule asks for the section comments in README order.

Repair: move the Layer 4 block (lines 111–121, the docstring and `exists_mulEquiv_isometryEquiv_glAction`) above the Layer 5 comment at line 58. No statement changes.

## R03 (P3) — no `sources.toml`

Location: the folder has `README.md`, `Suggested.lean`, `metadata.toml` only; eleven works are cited at README lines 831–842. Carried from the previous review's R08 (and r1's R09); the head changes nothing here.

Repair: record each cited work with its DOI and locators, the paywalled ones as `uncertified` (Ahlfors–Bers, Douady–Earle, Farb–Margalit, Hubbard, Imayoshi–Taniguchi, Kerckhoff, Wolpert) and the open ones with the URLs the service fetched (Smale and Greenberg at `ams.org`, Takeuchi at J-STAGE, Borel at Numdam, Epstein at the Acta Mathematica archive).

## Previous findings

- R01 — repaired: §0.1 line 119 obtains `S_g ≃ Σ` as the composite of ComplexCurveModuli D0 item 1's normal-form diffeomorphisms of `S_g` and of `Σ`, transports `s_g` along it, and derives `IsCompatible` from invariance under diffeomorphism; no triangulation of `Σ`'s own structure is asked of PlanarTopology (lines 69, 132). D0 item 1 on main (`ComplexCurveModuli/README.md` line 27) constructs "the actual orientation-preserving diffeomorphisms of the resulting models" with the count `χ = 2 − 2g − b`, and `PLStructure.smoothing_isCompatible` is PlanarTopology line 942 at #271. The transport argument is correct: `IsCompatible` (its line 936) asks that each closed simplex of some subdivision embed smoothly with injective differential, and composing with a diffeomorphism preserves both.
- R02 — repaired: §5.5 line 485 owns the bigon criterion (Farb–Margalit Proposition 1.7, uncertified), homotopy implies isotopy for curves and arcs (Epstein 1966, Theorems 2.1 and 3.1, with Epstein's two-sided/no-disc hypothesis stated) and the alignment of admissible systems (Proposition 2.8), each with a route; PlanarTopology Layer 8 is cited only for `isotopic_of_homotopic` and the PL-to-smooth comparison, and the new Check at line 492 records Epstein's hypothesis. The `*Needs:*` line now lists Layers 4 and 8 and §§0.2, 0.3, 4.3, 4.5, 5.3 (one residue: R01 above).
- R03 — repaired: `exists_homotopyEquiv_orthogonalToDiffSphere_two` (`Suggested.lean` lines 105–109) with the import `TauCeti.Geometry.Diffeomorphism.Sphere`, listed in the docstring's "Stated here" (lines 26–28), and the full-group corollary stated in §5.3 (line 460) with the Lean name.
- R04 — repaired: line 399 reads `g' = 1 + k`.
- R05 — repaired: line 842 reads DOI 10.2307/1971114.
- R06 — repaired: line 164 ("the point-pushing diffeomorphism along the arc", no supplier); line 467 ("whose statement the pin records as the proposition `TauCeti.WatanabeTheorem` and from which it derives the non-contractibility"); `UpperHalfSpace ℝ` at lines 20, 61, 350, 406 and `UpperHalfSpace E` in the Tau Ceti and RiemannianGeometry contracts; line 692 states (I) and (II₁) as Takeuchi does.
- R07 — repaired: line 350 cites `IsIsometricSMul SL(2, ℝ) ℍ` for the positive-determinant half (in the Mathlib contract at line 57 and the `*Needs:*` line 359); §3.1 line 304 proves `Mod±(Σ) ≃ MappingClassGroupSmooth σ` as its own target and composes with Layer 9's `toTop_bijective`, proving neither half of the forgetful bijection again.
- R08 — not repaired: no `sources.toml` in the folder (R03 above, P3).

## Verified sound

Cross-roadmap citations the diff touches, resolved at the heads the brief gives:

- SurfaceTopology at #271: `MappingClassGroupSmooth σ`, `MappingClassGroupSmooth.toTop (σ) (hσ : σ is smooth) : MappingClassGroupSmooth σ →* MappingClassGroupFull M` and `MappingClassGroupSmooth.toTop_bijective (s : PLStructure M) (σ) (hσ : σ is smooth and s.IsCompatible σ)` (its lines 997–1000, with the docstring at 989–995 saying the smooth group is stated for a smooth structure compatible with a PL structure, which is the pair §0.1 supplies); `mcg_sphere_full/plus`, `mcg_torus_plus/full` unchanged from the previous review. SurfaceTopology defines no `MappingClassGroupSmooth` by a `def` line of its own; this README's contract (line 65) states the assumption that it is the diffeomorphisms modulo smooth isotopy, which is what §3.1's comparison needs.
- PlanarTopology at #271: `PLStructure.IsCompatible` (line 936, existence of a subdivision all of whose closed simplices embed smoothly with injective differential), `smoothing` (939), `smoothing_isManifold` (940), `smoothing_isCompatible` (942), `smoothing_unique` (943–946), `exists_isotopic_diffeomorph` (952–954, for a self-homeomorphism and a compatible pair), `exists_isotopicRel_diffeomorph` (955–958), `smoothIsotopic_of_isotopic` (961–962); Layer 4 `exists_pl_approximation_open/_rel` (573–600); Whitehead's theorem under Out of scope (1041) is no longer consumed anywhere in this README.
- ComplexCurveModuli on main (`fa41b37`): D0 item 1 (line 27: oriented disc/band/cap reduction, orientation-preserving diffeomorphisms of the models, `χ = 2 − 2g − b`, invariance of `(g, b)`).
- The four `roadmaps resolve` leads (`toTop_bijective`, `smoothing_isCompatible`, `smoothing_isManifold`, `smoothing_unique`) are roadmap names of #271, resolved above, not library names.

Library declarations opened at the pins (Mathlib `6b7abb3c`, Tau Ceti `a91d3aa`, the manifest of the worktree): `instance : IsIsometricSMul SL(2, ℝ) ℍ` (`Mathlib/Analysis/Complex/UpperHalfPlane/Metric.lean` line 328); `TauCeti.UpperHalfSpace` as `def UpperHalfSpace : Type _ := upperHalfSpaceOpens E` and `instance isPretransitive_isom` (`TauCeti/Geometry/Manifold/Riemannian/Hyperbolic/UpperHalfSpace.lean` lines 91, 483), so `UpperHalfSpace ℝ` is the plane as the README now says; `TauCeti.continuousOrthogonalToDiffSphere (n) (m) : C(O(n+1), Diff (𝓡 n) Sⁿ m)` (`TauCeti/Geometry/Diffeomorphism/Sphere.lean` line 314), elaborated by `#check` with exactly that type. The imports of `Suggested.lean` are `import Mathlib` and seven `TauCeti.*` modules, all present at the pin.

Signature check: I appended `#check @` of the five declarations to a scratch copy of `Suggested.lean` and elaborated it; the file has no `variable` block, every binder is in each declaration's own signature, and the elaborated types agree with the README statements (§5.2 line 448, §5.4 line 473, §5.3 line 460 twice, §4.1 line 350); the two surface theorems carry `IsManifold (𝓡 2) ∞`, `TauCeti.Orientable (𝓡 2) ∞` and `TauCeti.IsClosedConnectedSurface`. Nothing changed. One-tactic probe on the new theorem (`first | simp | rfl | infer_instance | exact?` in a scratch copy): `exact?` cannot close it, so it is not padding; the other four were probed in the previous review and are unchanged.

Headline theorems (README): Dehn–Nielsen–Baer realization and kernel (Layer 5), Smale's disc and sphere theorems (Layer 5), `Isom(ℍ) = PGL₂(ℝ)` (Layer 4), the marked quotient and its dimension (Layers 1–2), uniformizing holonomy and its converse (Layers 4, 6), Fenchel–Nielsen and Teichmüller's theorem (Layer 7), Nielsen realization and fixed-locus dimension (Layer 8), finiteness of arithmetic lattices (Layer 9), the open dense loci (Layers 8–11). The five statable at the pins are stated; each of the others is named in the docstring with its missing carrier (lines 33–51). No stand-in, no sorry'd data, no `set_option`, no `lemma`.

Sources read at their locators (cache texts, cited by line):
- `epstein1966` (Acta Mathematica archive copy): Theorem 2.1 lines 109–111 (homotopic PL embeddings of `S¹` in `int M` with two-sided image not bounding a disc are PL ambient isotopic by an isotopy fixed outside a compact set); Remark 1 lines 112–115 (orientable `M`, a curve bounding a disc and the reversed embedding: homotopic, not ambient isotopic, since an ambient isotopy preserves orientation), which is the new Check at line 492; Theorem 3.1 lines 214–217 (arcs meeting `∂M` exactly in their endpoints, homotopic rel endpoints, are PL ambient isotopic by an isotopy fixed on `∂M` and outside a compact set). §5.5 states both with these hypotheses.
- `takeuchi1975` (J-STAGE): Definition lines 42–46; Theorem 1 lines 50–58, condition (I) at 53–55 and (II₁) at 56–58 (an isomorphism of `k₁ = ℚ(tr Γ)` into `ℂ` not the identity on `k₂ = ℚ((tr γ)²)` has bounded image of `tr Γ`). Line 692 now states exactly this.
- `smale1959` (AMS open PDF): Theorem A lines 8–10, Theorem B 15–17, Theorem 6 lines 188–194 (the deformation retraction `H_v`, `C^∞` in `(v, x)`, fixing `SO(3)`). §5.3 and the docstring of `exists_homotopyEquiv_orthogonalToDiffSphere_two` match.

Seeded sample: §0.1, §0.3 and §3.1 fall in the changed passages and are checked above and in the table; §5.2, §7.1, §8.3 and the rest are untouched by the diff; their rows are carried from the previous review (cited "r2") or added with values below.

Adversarial table (statement, instances, values on each side, result, change). Rows marked r2 are carried from the previous review for statements the diff leaves untouched.

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| §0.1 `S_g ≃ Σ` through D0 item 1 (changed) | `g = 2`; `Σ'` of genus 3; `φ⁻¹ ∘ ψ` | `χ(S_2) = χ(Σ) = −2`, `b = 0`, both reduce to `N_2` with two genus bands; `χ(Σ') = −4`, three bands, no diffeomorphism; o.p. ∘ (o.p.)⁻¹ is o.p. | composite well defined, orientation preserved, genus separated | none |
| §0.1 transport of `IsCompatible` (changed) | `s_g` with subdivision `K'`, diffeomorphism `φ` | each closed simplex `e∘h` smooth embedding with injective differential; `φ ∘ e ∘ h` is one too (`dφ` invertible) | compatibility transports; no Whitehead input | none |
| §3.1 `Mod±(Σ) ≃ MappingClassGroupSmooth σ` then `toTop` (changed) | `S²`, `T²` | `π₀ Diff(S²) = ℤ/2 = mcg_sphere_full`; `π₀ Diff(T²) = GL₂(ℤ) = mcg_torus_full`; both quotients by smooth isotopy (contract line 65), composition law on each side | isomorphism, no half of `toTop_bijective` re-proved | none |
| §4.1 positive-determinant isometries via `IsIsometricSMul SL(2,ℝ) ℍ` (changed) | `diag(2,1)`, det 2 | scaled `diag(√2, 1/√2) ∈ SL₂`; Möbius `z ↦ (√2 z)/(1/√2) = 2z` equals `glAction` of `diag(2,1)`; `dist(i, 2i) = log 2 = dist(2i, 4i)` | scaling leaves the map unchanged | none |
| §4.1 conjugation isometry (changed) | `z ↦ −z̄`, i.e. `(x, y) ↦ (−x, y)`; `diag(−2, 1) = diag(2,1)·diag(−1,1)` | `dx² + dy²` and `y` invariant; `diag(−1,1) • z = −z̄`; composite `−2z̄` sends `i, 2i` to `2i, 4i` | matches Checks at lines 354, 356 | none |
| §4.4 Check 3 cover genus (changed) | `k = 2, 3` of genus 2 | `χ' = −2k = −4, −6`; `g' = 1 + k = 3, 4`; `e = k·(−2) = 2 − 2g'` | correct now | none |
| §5.3 full-group form `O(3) → Diff(S²)` homotopy equivalence (changed) | `r = diag(−1,1,1)`; `π₀`, `π₁` | left translation by `ι(r)` swaps the two components of `Diff(S²)` and of `ι(O(3))`; `π₀ O(3) = ℤ/2 = π₀ Diff(S²)`; `π₁ SO(3) = ℤ/2 = π₁ Diff⁺(S²)`; `ι` injective since an orthogonal matrix fixing every unit vector is `I`; image closed (compact in Hausdorff) | inclusion is a homotopy equivalence onto a deformation retract | none |
| §5.5 bigon criterion (changed) | torus `(1,0)` vs `(0,1)`; `(1,0)` vs `(1,0)` pushed to meet twice; a disc-bounding curve crossing `β` | `i = |det| = 1 = #(α∩β)`, no bigon; `i = 0`, two points, one bigon; an outermost arc of `β` in the disc cuts off a bigon | criterion holds on inessential curves too, so no essential hypothesis needed | none |
| §5.5 homotopy implies isotopy (changed) | Epstein 2.1, 3.1 hypotheses on genus `g ≥ 2` | essential simple closed curve: two-sided (orientable) and bounds no disc; proper arc: meets `∂` exactly in endpoints | hypotheses as the source states | none |
| §5.5 Check, Epstein's hypothesis (changed) | curve `c` bounding `D ⊂ Σ`, `g ≥ 2`, and its reversal | an ambient isotopy's final map `h₁` is o.p. with `h₁(D)` a disc bounded by `c`, so `h₁(D) = D` (the complement is not a disc); `h₁|D` preserves `∂D`'s induced orientation | `c` and `c̄` not ambient isotopic; on `S²` they are (rotation by `π`), which is why the Check is restricted to `Σ` | none (source issue below) |
| §5.5 alignment (changed) | two systems, equal counts, different cyclic order at a vertex | cyclic order is an isotopy invariant of the crossing neighbourhood | counts alone insufficient, as Check 3 says | none |
| §9.1 Takeuchi (I)+(II₁) (changed) | `PSL₂(ℤ)`; `(2,3,7)` | traces in `ℤ`, `k₂ = ℚ`, no non-identity embedding; `k₁ = ℚ(cos(π/7)) = ℚ(cos(2π/7))`, degree 3, two non-identity embeddings with bounded trace image | matches lines 53–58 of the source | none |
| §0.2 Check 4 (sample) | `f_t = flow at time |t − 1/2|` | `τ(t) = 2(t − 1/2)²` is smooth with `τ(0) = τ(1) = 1/2`, `τ(1/2) = 0`; `f_{τ(t)}` runs through the same diffeomorphisms | smooth reparametrization exists | none |
| §1.1 Nijenhuis vanishing in dimension 2 (sample) | basis `v, Jv` | `N(v, Jv) = −J N(v, v) = 0` by antilinearity and skew-symmetry; `ℝ⁴` perturbation nonzero | dimension used, as Check 2 says | none |
| §1.1 Check 1 (sample) | `J = [[0,−1],[1,0]]` | `Je₁ = e₂`, `(e₁, e₂)` positive; `−J` gives `(e₁, −e₂)` negative | orientation compatibility detected | none |
| §1.2 Check 2 (sample) | torus shear | acts on `H₁` by `[[1,1],[0,1]]` of infinite order; automorphisms of a generic torus act with finite order | shear not isotopic to an automorphism | none |
| §5.2 torus Check (sample) | shear `(x,y) ↦ (x, x+y)` | `e₁ ↦ (1,1)`, `e₂ ↦ (0,1)`, fixes `0` | realizes the stated automorphism | none |
| §8.3 Checks (sample) | hyperelliptic genus 2; three-oval reflection; free o.r. involution | `−2 = 2·(2 − 6/2)`; sphere with 3 mirrors, `χ = −1 = 2 − 3`; nonorientable quotient `χ = −1` | all three consistent with Riemann–Hurwitz | none |
| §10.1 minimum area via `2h − 2 + Σ(1 − 1/mᵢ)` | r2 | `1/42` at `(0;2,3,7)`; Euclidean signatures give `0` | min `π/21` | none (r2) |
| §10.1 index bounds; Bolza Check; §10.4 Klein quartic | r2 | `84(g−1)`, `168(g−1)`; area `π/12`, `48`; `168 = 84·2`, `336` | consistent | none (r2) |
| §10.2 `[Π : N_X] ≤ D!` | r2 | `d ≤ D` gives index `≤ d! ≤ D!` | consistent | none (r2) |
| §8.4 fixed-locus dimensions; `ℤ/3` genus 3; pole Check | r2 | `(3,0),(3,1),(2,0)`: codim `1, 2, 0`; `dim 2`; `dz² = dw²/(4w)` | consistent | none (r2) |
| §8.5 genus-two kernel; `g = 3` hyperelliptic | r2 | `|K| = 2`, all `mᵢ = 2`; codim `1` | complete | none (r2) |
| §7.1 collar inequality; §7.5 `d_T`; §7.4 Beltrami | r2 | `2 arsinh(1/sinh 1) = 1.544`; `½ log 3 = artanh(1/2)`; `K = (1+|a|)/(1−|a|)` | consistent | none (r2) |
| §4.1 kernel of `glAction` and distance Check | r2 | `λI` trivial; `diag(1,−1)` reflection; `log 2` | kernel = centre | none (r2) |
| §4.3 attaching word; §4.2 `η(op p) = loopDeck(p⁻¹)`; §5.5 Alexander chain `χ = −2g` | r2 | `[a₁,b₁]⁻²` nontrivial; pin body `loopDeck x₀ g⁻¹`; `V = 4, E = 8` | consistent | none (r2) |
| §3.2 action law; §7.2/§8.1 twist sign; §2.4 dimension; §0.5 centralizer; §6.1 degree; §9.2 generator bound | r2 | left action; `τ: −ℓ`; `3g − 3` with `A_C = 0` for `g ≥ 2`; two hyperbolics with distinct axes; `deg f = −1` excluded; `2g + m + r − 1 ≤ 2μ + 2` | consistent | none (r2) |
| `baer_epstein_smooth`, `exists_diffeomorph_mapOfEq_eq`, `contractibleSpace_discDiff_two` | r2 | sphere and torus instances; boundary-vs-collar straightening owned in §5.3 | true at all genera | none (r2) |

Ownership: the new sphere theorem is owned here; at the pin `TauCeti/Geometry/Diffeomorphism/Smale.lean` states only the three-sphere conjecture, and the previous review's `roadmaps grep` over main and the open heads found Smale's sphere theorem only as a reference in GeometricTopology (its line 1341). The three curve statements of §5.5 are not stated by PlanarTopology or SurfaceTopology at #271 (`bigon` has no hit in either README; "homotopic simple closed curves are isotopic" occurs only inside PlanarTopology's route paragraph for Epstein's theorem, line 969). Ownership against `MappingClassGroupsAndCanonicalRepresentations` (merge-order position 266) was not checked: it has no readable folder on main and is not in the open-pull-request index.

## Not verifiable

- Farb–Margalit, Propositions 1.7 and 2.8 (§5.5): paywalled, cited by locator (`uncertified` in the README). The cache copy `46c4cc84` is from a third party's course page, not a publisher or author copy, so I did not read it.
- Douady–Earle 1986 Theorem 1 (§5.2), Kerckhoff 1983, Wolpert 1979, Ahlfors–Bers 1960, Imayoshi–Taniguchi 1992, Hubbard 2006: paywalled, unchanged since the previous review, cited by locator.

## Source issues

- **Error** in epstein1966 at Remark 1 after Theorem 2.1, printed page 86: the source says that for orientable `M` and a curve bounding a disc, the embedding and its reversal are never ambient isotopic; it should exclude `M = S²`, where the rotation by `π` about an equatorial axis is an ambient isotopy reversing the equator (the two complementary discs are swapped); affects nothing (Theorem 2.1 carries the no-disc hypothesis, and the remark is correct whenever the complement of the disc is not a disc).
