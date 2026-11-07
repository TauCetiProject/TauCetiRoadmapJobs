# DESIGN-StackPointsAndResidualGerbes: design report

Deliverables: `packages/StackPointsAndResidualGerbes/design/README.md` (8 layers, 38 subsections),
`packages/StackPointsAndResidualGerbes/design/plan.json` (38 targets, 9 gaps),
`packages/StackPointsAndResidualGerbes/sources.toml` (13 entries, 3 added by this job).

## What the design covers

Every final target of the brief is planned. The map from the brief's T1–T11 to the design:

| Brief | Design targets | Change against the brief |
|---|---|---|
| T1 finite type points | 1.1, 1.2, 4.1 | none; the "comparison with closed points" is 1.2 (closed ⇒ finite type; the converse fails on `[𝔸¹/𝔾_m]`), and the map `𝒳(k) → |𝒳|` is a definition in 1.2 |
| T2 stabilisers | 1.3, 1.4 | scheme-ness of `G_x` rests on gap:spaces-over-fields and gap:stack-separation-axioms |
| T3 one-point reduced stacks | 3.1, 3.2 | none |
| T4 characterisation, definition | 3.3 | none |
| T5 properties | 3.4, 3.5, 5.3 | (d) "gerbe over a one-point space" is kept; the space is the spectrum of a field only for decent stacks (5.3) |
| T6 existence | 4.1–4.4 | quasi-DM case factored through "flat locally quasi-finite presentation" (4.2), so DM stacks and algebraic spaces do not depend on gap:quasi-dm-flat-presentation |
| T7 closed points | 4.5, 5.2 | the factorisation hypothesis is "image the singleton `{x}`", not "image in the closure of `x`" (see the pass) |
| T8 gerbe morphisms | 2.1–2.5 | adds smoothness of gerbes (Lemmas 101.33.7–8), used by 3.4 and 7.3 |
| T9 rational point | 6.1–6.4, 5.3 | residue-field hypothesis corrected to decency; `𝒵_x ≃ BG_x` proved for every section `x ∈ 𝒳(k)` over any field, with no smoothness or affineness of `G_x` |
| T10 tangent/normal | 0.4, 7.1–7.4 | sharpened to the exact sequence `0 → T_{BG_x} → T_{𝒳,x} → N_x → 0`, so `θ_x` is an isomorphism iff `G_x` is smooth; the tangent space itself is imported from AlgebraicModuliForArithmeticGeometry §8.1 |
| T11 Laumon–Moret-Bailly | 5.4, 5.5 | Rydh's Theorem B.2 is proved through the dense open gerbe (2.6) instead of Rydh's B.1 (Raynaud–Gruson); the LMB footnote becomes the precise statement 5.5 (fppf image equals `𝒵_x` iff `k/κ(x)` is finite) |

The dense open gerbe (Prop. 101.29.1) is planned (2.6) because T6 and T11 use it; the transfinite
stratification (Lemma 101.29.3), sobriety of decent stacks (Lemma 101.49.x) and integral stacks
(§101.50) are not planned: no target needs them. Dimension theory is not used.

## Ownership and suppliers

- **Owned here** (no roadmap on main, in the open roadmap pull requests or on the board plans them;
  checked with `roadmaps grep` for "residual gerbe", "closed substack", "reduced induced",
  "finite type point", "monomorphism of algebraic stacks", "quasi-DM", "decent stack",
  "06ML/04XE/06QB/06RD", "normal space", and by reading SchemeAndStackFoundations §§1.7–1.23 and
  AlgebraicModuliForArithmeticGeometry §§4.1, 5.1–5.4, 7.1, 8.1–8.3): smooth-local reduced/regular
  stacks, monomorphisms, immersions and substacks, closed substacks ↔ quasi-coherent ideals,
  infinitesimal neighbourhoods, reduced induced structures, finite type points, `G_x`, gerbes of
  algebraic stacks, residual gerbes and their existence, decent stacks, residue fields, the fppf
  image, `R_x`, neutrality, the normal space and the tangent–normal comparison. The brief's
  instruction that this roadmap own the closed-substack statements is followed; monomorphisms,
  immersions and reductions are owned for the same reason (they are the vocabulary of one-point
  substacks and SchemeAndStackFoundations stops at §1.20).
- **Imported**: SchemeAndStackFoundations §§1.7–1.9, 1.12–1.23, 4.12–4.13 (on main);
  AlgebraicModuliForArithmeticGeometry §§4.1, 8.1, 8.3 (open new-roadmap pull request, merge-order
  position 32, earlier than this roadmap); ReductiveGroups Layers 1, 2, 3, 3A (on main).
- **Owner against the open pull requests**: AlgebraicModuliForArithmeticGeometry owns the site-level
  gerbe predicates and the framed deformation theory; this roadmap imports them by section and owns
  neither. Its §5.4 uses closed substacks of DM stacks; this roadmap is the owner of closed
  substacks, and AlgebraicModuliForArithmeticGeometry, being earlier in the merge order, cannot
  import them — its §5.4 should keep its local use or the closed-substack API should be cited from
  here once both are merged (a note for that roadmap, not a dependency of this one).
  FunctionFieldArithmeticPartII's gap:zero-dimensional-dm-residual-gerbes names
  SchemeAndStackFoundations as supplier; the statement is this roadmap's Worked example, with the
  hypothesis "quasi-compact diagonal" added (without it `Bℤ` is a counterexample). That roadmap
  should re-point the gap to StackPointsAndResidualGerbes 0.5, 1.4, 4.5, 6.4.
- **Notions moved down from later roadmaps**: none.
- **Ownership against open pull requests**: checked against the open roadmap pull requests through
  `roadmaps grep`/`roadmaps show` (all heads in the index of 2026-11-07), including the sibling
  checkouts named in the brief.

## Proposed continuations of suppliers

The gaps below are all in the direction of an existing supplier and are not planned here.

- **SchemeAndStackFoundations, Part III** (Part II on the board is flat cohomology): morphisms of
  algebraic stacks and decent algebraic spaces — the permanence calculus of §1.20's `SmoothLocal`
  and `QuasiCompactStack`, the separation axioms DM/quasi-DM/quasi-separated, Theorem 101.21.3,
  quotients of flat groupoids (Criteria §§97.17–97.18, Groupoids in Spaces §§78.25, 78.27,
  Algebraic Stacks §94.16), decent algebraic spaces (Decent Spaces §§68.6–68.12), group spaces over
  fields (Spaces over Fields §72.10, More on Groupoids in Spaces §§79.9–79.10), generic flatness for
  spaces over a reduced base (Morphisms of Spaces §67.32), and smooth-locality and descent of
  reducedness and regularity (Descent §§35.18–35.19, Descent on Spaces §74.9). Each could
  alternatively be a revision of the named section.
- **AlgebraicModuliForArithmeticGeometry §8.1**: a target "algebraic stacks satisfy (RS)" (Artin's
  Axioms, Lemma 98.5.2), which its deformation-category clause uses without a target.

## Gaps

| Slug | Supplier, section | Needed by |
|---|---|---|
| stack-morphism-calculus | SchemeAndStackFoundations §1.20 | 0.2, 0.3, 0.5, 1.1, 1.3, 2.1, 2.3–2.6, 3.1, 3.2, 3.4, 4.1–4.5, 5.1, 5.4, 5.5, 6.3, 6.4 |
| stack-separation-axioms | SchemeAndStackFoundations §1.20 | 0.2, 1.4, 3.4, 5.1 |
| quasi-dm-flat-presentation | SchemeAndStackFoundations §1.19 | 4.2 (quasi-DM case only) |
| flat-groupoid-quotients | SchemeAndStackFoundations §1.21 | 0.3, 1.3, 2.2–2.4, 2.6, 3.2, 3.5, 4.1, 4.2, 4.4, 6.1 |
| decent-algebraic-spaces | SchemeAndStackFoundations §1.7 | 5.1–5.4 |
| spaces-over-fields | SchemeAndStackFoundations §1.13 | 1.4, 4.2 |
| generic-flatness-spaces | SchemeAndStackFoundations §4.12 | 2.6 |
| reduced-regular-smooth-local | SchemeAndStackFoundations §4.13 | 0.1, 0.5, 3.1, 3.4 |
| algebraic-stacks-satisfy-rs | AlgebraicModuliForArithmeticGeometry §8.1 | 7.3 |

Each gap's exact statement is in the README under "Exact supplier contracts" and in `plan.json`.

## Sources

All sources were read legally: the four Stacks Project tags of the manifest (Properties and
Morphisms of Algebraic Stacks), `ahr2020`, `alper-moduli`, `rydh2011` from the cache; and three
chapters fetched by this job through the sources service (all certified, open repository):
`stacks-decent-spaces` (Decent Algebraic Spaces), `stacks-criteria` (Criteria for
Representability), `stacks-sheaves-on-stacks` (Sheaves on Algebraic Stacks). `lmb2000` and
`olsson2016` are settled as uncertified and are cited by locator only (LMB Chapter 11 for 5.5;
Olsson as background). `rydh2015` is not cited by the design; its entry is kept to record that the
residual-gerbe appendix is in `rydh2011`. No text is missing; no `needs-references.toml` was written.

Stacks Project results cited inside the gap details (Spaces over Fields, More on Groupoids in Spaces,
Groupoids in Spaces, Algebraic Stacks, Descent, Artin's Axioms, Properties of Spaces, Morphisms of
Spaces) are cited by number as the fetched chapters cite them (line numbers given in `plan.json`);
they are statements the named supplier must provide, not inputs read here.

## Adversarial pass

Every row records the instances computed and the values on each side.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conv. 4 substacks are strictly full, equality = same objects | `Spec k ⊔ Spec k` | two open substacks, equivalent as stacks, different object sets | equivalence ≠ equality | witness added |
| Conv. 5 left action `(τ, α∘g⁻¹)` | `[𝔸¹/𝔾_m]`, `x = 0`, `λ ∈ 𝔾_m` | `λ·[(τ_v, id)] = [(τ_{λv}, id)]`: weight 1; conormal `k·t` weight −1, `N_0` weight 1; right action gives weight −1 | conventions consistent | witness in Conv. 5 and 7.3 Check |
| Conv. 6 indexing `ℐ^{n+1}` | `𝔸¹`, origin | `𝒳^{[1]} = Spec k[t]/(t²)`, length 2; `ℐ^n` indexing gives `𝒳^{[0]} = 𝒳` | AHR §1.5 convention | witness |
| Conv. 7 residue field | `𝔸¹_ℚ`, `t²+1` | `κ = ℚ(i) ⊂ ℂ` | ok | witness |
| 0.1 smooth-local properties | `B(ℤ/2)_k`; `[Spec k[t]/t²/𝔾_m]`; `Bμ_p`; `Spec k[x,y]/(xy)` | atlas `Spec k` regular; atlas nonreduced; flat test `μ_p → Bμ_p` nonreduced vs smooth atlas `𝔾_m` regular; reduced, not regular | flat-test definition refuted | Check added |
| 0.2 mono ⇔ fully faithful ⇔ Δ equivalence | `Spec k → BG`; `Spec ℂ → Spec ℝ`; `𝔾_m → 𝔸¹` | `Spec k ×_{BG} Spec k = G ≠ Spec k`; `Spec ℂ ×_ℝ Spec ℂ` = 2 points; open immersion mono | ok; injective on points ⇏ mono | Checks |
| 0.2 rigidity `T → Spec k` mono ⇒ iso | `Spec k → Spec k[ε]`; `Spec ℚ → U/G` | mono non-iso when target is not a field; one-point mono non-iso | field target essential | Checks |
| 0.3 immersions | `B𝔾_m → [𝔸¹/𝔾_m]`; `Spec k(t) → 𝔸¹` | closed immersion with open complement `Spec k`; mono with `{η}` not locally closed (complement = closed points, not closed) | mono ⇏ immersion | Check |
| 0.4 closed substacks ↔ ideals; `V(ℐ) ×_𝒳 𝒴 = V(ℐ𝒪_𝒴)` | `(t²) ⊆ k[t]`; `Spec k[ε]`; base change `𝔸² → 𝔸¹` | ideal of `V(t²)` is `(t²)` not `(t)`; `ℐ² = 0` so `𝒳^{[n]} = 𝒳` for `n ≥ 1`; `V(t)×_{𝔸¹}𝔸² = V(t·k[t,s])` | base change holds for every `𝒴`, not only flat | flatness not assumed |
| 0.5 reduced induced | `Spec k`, `Spec k[t]/t²` in `𝔸¹`; `Spec k[ε] → 𝔸¹` | same support, one reduced; image origin but no factorisation through `Spec k` | reducedness essential twice | Checks |
| 1.1 finite type points | `Spec ℤ_(p)` generic; `[𝔸¹/𝔾_m]` at 1; `𝔸¹_k` generic | `ℚ = ℤ_(p)[1/p]` finite type, not closed; open finite type point; `k(t)` not f.g. over `k[t]` but flat | flat ≠ lft | Check |
| 1.2 closed ⇒ finite type; `π₀𝒳(k) → |𝒳|` | `B(ℤ/2)_ℝ`; `𝔸¹_ℝ`; `Spec ℂ → 𝔸¹_ℂ` via `ℂ(t) ↪ ℂ` | 2 classes → 1 point; `t²+1` not hit; absolute morphism onto generic point | absolute vs relative points differ | relative statement made explicit |
| 1.3 `G_x` and point-invariance | `BG`; `[𝔸¹/𝔾_m]`; `Bμ_p`; `B(μ_3)_ℚ` | `G = G`; `𝔾_m`, `1`; `μ_p` with `μ_p(𝔽̄_p) = 1`; `μ_3(ℚ) = 1`, `μ_3(ℚ(ζ_3)) = ℤ/3` | "`G_x(k)` trivial" is not a point property | Check |
| 1.4 `G_x` scheme | `B(𝔸¹_k/ℤ)`; DM; `B𝔾_m` | `G_x = 𝔸¹/ℤ` not a scheme, inertia not qs; finite étale; `𝔾_m` with affine diagonal, not quasi-DM | hypothesis needed; quasi-DM not necessary | Checks |
| 2.1 gerbe over `𝒴`, base | `BG → Spec k`; `[𝔸¹/𝔾_m] → Spec k`; `Spec k → BG` | gerbe with base `Spec k`; `0`, `1` not locally isomorphic; automorphisms don't lift | ok | Checks |
| 2.2 section ⇒ `[U/G] ≃ 𝒳` | `BG`; `[𝔸¹/𝔾_m]` with section 1; `BS_3` over `ℝ` at a nontrivial torsor | identity; `Isom(1,1) = 1`, `Spec k ≄ [𝔸¹/𝔾_m]`; `Isom(P,P)` the inner form with 2 real points, `B(Isom(P,P)) ≃ BS_3` | group is that of the section | Check |
| 2.3 gerbes flat, lfp, smooth | `Bμ_p → Spec 𝔽_p`; `Spec 𝔽_p → Bμ_p`; `Spec k → B𝔾_m` | smooth although `μ_p` not; flat lfp not smooth; flat lfp surjective not gerbe | converse of flatness false | Check |
| 2.4 gerbe ⇔ inertia flat lfp | `[𝔸¹/𝔾_m]`; `Bμ_p`; free `[X/G]` | fibres `𝔾_m`/`1`, not flat; flat; inertia trivial ⇒ space | ok | Checks |
| 2.5 diagonal criterion; universal homeomorphism; qc diagonal | `Spec k → B𝔾_m`; `Spec k → Spec k[ε]`; `Bℤ → Spec k` | Δ = unit section, not flat; universal homeomorphism not flat; `Δ_{Bℤ}` pulls back to `⊔_ℤ Spec k` | qc diagonal goes down only | Checks |
| 2.6 dense open gerbe | `[𝔸¹/𝔾_m]`; weights `pⁱ`; `[Spec k[ε]/𝔾_m]` | `Spec k`; stratum `x₀ ≠ 0`; stabilizer `k[ε][λ^{±1}]/((λ−1)ε)`: `λ−1 ∈ ann(ε)`, `λ−1 ∉ εB` ⇒ not flat | reducedness essential | Check |
| 3.1 one-point criteria | `Bμ_p`, `B𝔾_m`; `Spec k[ε]`; `U/G` | flat lfp point; not flat; lft not lfp | the two lemmas differ | Checks |
| 3.2 rigidity | `Spec ℚ → U/G`; `Spec k → BG` | mono non-equivalence (target not loc. Noetherian); non-mono non-equivalence | both hypotheses essential | Checks |
| 3.3 residual gerbe | scheme; `[𝔸¹/𝔾_m]`; `Spec k → BG`; `Spec k[ε]` | `Spec κ(x)`; `B𝔾_m`, `Spec k`; not mono; `Spec k` (reduced) | ok | Checks |
| 3.4 (d) base of residual gerbe | `Spec ℚ(t)/ℤ` (`ℤ` by `t ↦ t+1`, free) | residual gerbe = itself; if `≅ Spec F`, then `ℤ × Spec ℚ(t) = Spec(ℚ(t)⊗_F ℚ(t))` finite — contradiction | base not a field without decency | Check; drives 5.3 |
| 3.4 pullback along gerbes | `[𝔸¹/𝔾_m] → Spec k` | pullback of `Spec k` is the whole stack | gerbe hypothesis needed | Check |
| 3.5 functoriality and iso criterion | `Spec k → BG`; open immersion; `BG → Spec k` | `R = Spec k` vs `G`; iso; `G` vs `Spec k` | ok | Checks |
| 4.1 finite type ⇔ `𝒵_x → 𝒳` lft | `[𝔸¹/𝔾_m]` at 1; generic point of `𝔸¹`; `Spec ℤ_(p)` | open immersion; `Spec k(t)` exists but not lft; `Spec ℚ` finite type | existence ⇏ finite type | Check |
| 4.2 flat qf presentations | `B(ℤ/2)`; `Bμ_p`; `𝔸¹_ℚ/ℤ`; `B𝔾_m` | `B(ℤ/2)`; `Bμ_p`; residual spaces, generic one not a field; not quasi-DM yet exists | sufficient not necessary | Check |
| 4.3 gerbes, qc inertia | `[𝔸¹/𝔾_m]`; `Bℤ`; `B(𝔸¹/ℤ)` | `B𝔾_m`, `Spec k`; non-qc inertia, still a gerbe; qc non-qs inertia | ok | Checks |
| 4.4 locally Noetherian | `Spec ℚ(t)/ℤ`; weights `pⁱ`; `U/G` | itself; not loc. Noetherian (4.3 applies); exists via 4.1 | ok | Checks |
| 4.5 closed ⇔ closed immersion | `[𝔸¹/𝔾_m]`; DVR; `U/G` | closed/open; closed/open; closed point with `Spec ℚ → U/G` not closed immersion (else equal to the reduced `U/G`) | loc. Noetherian essential | Check |
| 5.1 decent | `𝔸¹_ℚ/ℤ`; `B𝔾_m`; `Spec ℚ(t)/ℤ`; `U/G` | not decent; decent; `⊔_ℤ Spec ℚ(t)` not qc; `G` infinite ⇒ not decent | ok | Checks |
| 5.2 factorisation (brief T7: "image in the closure") | `id_{𝔸¹}` at the generic point; `Spec k[ε] → 𝔸¹`; Decent Spaces Ex. 68.13.11 | image = closure of `η`, no factorisation through `Spec k(t)`; nonreduced; no field factorisation | brief's "closure" false | hypothesis corrected to `|f|(|𝒴|) ⊆ {x}` (stacks-06RD line 4846; Decent Spaces 13.9 proof) |
| 5.3 residue field (brief T9: "locally Noetherian or qc diagonal") | `Spec ℚ(t)/ℤ`; `𝔸¹_ℚ`; `[Spec ℂ/(ℤ/4)]_ℝ` | loc. Noetherian, base not a field; `ℚ(i)`; base `Spec ℝ`, `H¹(ℝ,ℤ/4) = Hom(ℤ/2,ℤ/4) = {0,2}` both ↦ 0, no real object | "locally Noetherian" branch false | hypothesis corrected to decency |
| 5.4 algebraicity (qc diagonal) | `[𝔸¹/𝔾_m]`; generic point of `𝔸¹`; `𝔸¹_ℚ/ℤ` | `B𝔾_m`/`Spec k`; `Spec k(t) → 𝔸¹` affine not immersion; generic residual space not a field | qc diagonal essential | route via 2.6 |
| 5.5 fppf image | `Spec κ(t) → Spec κ`; finite `k/κ`; `BG` over `k̄` | not lfp; closed points of an lfp cover have finite residue fields, so no covering through `Spec κ(t)`; image `Spec κ`; infinite `k̄/k` not lfp | lfp ⇔ finite | statement made precise |
| 6.1 `R_x` | `BG`; Galois `k/κ`; `[𝔸¹/𝔾_m]` at 0 | `G` with `s = t`; `Γ × Spec k`, `G_x = 1`; `𝔾_m` | ok | Checks |
| 6.2 `𝒵_x ×_{base} Spec k ≃ BG_x` | `[Spec ℂ/(ℤ/4)]`; `BG_k`; finite `k/κ` | `B(ℤ/2)_ℂ`; `BG` vs fibre `G`; `Spec k = B1` | base change ≠ fibre | Check |
| 6.3 neutrality | `[Spec ℂ/(ℤ/4)]`; `B(ℤ/2)_ℝ`; `𝔸¹_ℚ` at `t²+1` | non-neutral; neutral; `ℚ(i)` gives equivalence, `ℂ` does not | ok | Checks |
| 6.4 rational points | alg. closed `k`; `Bμ_p/𝔽_p(t)`; `Spec k → Spec κ` | `𝒵 ≃ BG_x`; holds with non-smooth `μ_p` (source assumed smooth affine); no section: `Spec κ ≠ Spec k` | generalised; section essential | brief's "algebraically closed" kept as a Check |
| 7.1 neighbourhoods | `[𝔸¹/𝔾_m]`; `𝔸²`; `BG` | `[Spec k[t]/t^{n+1}/𝔾_m]`; length 3; `BG` | ok | Checks |
| 7.2 normal space | `[𝔸¹/𝔾_m]`; `BG`; `[𝔸ⁿ/GLₙ]`; `𝔸²` | weight 1; 0; standard; `k²` trivial | ok | Checks |
| 7.3 `θ_x` iso iff `G_x` smooth (brief: "iso when `G_x` smooth") | `[𝔸¹/𝔾_m]`; `Bμ_p`; cusp | iso; `N = 0`, `T = {1+aε} ≅ k` (`(a+bε)^p = a^p`), so `dim T = 1 = dim Lie μ_p − dim μ_p`; `T = N` 2-dim | sharpened to "iff"; kernel `T_{BG_x}` | exact sequence target |
| 7.3 proof inputs | `W` smooth over `k` since `BG_x → Spec k` smooth for every flat `G_x` (Lemma 101.33.7); chart `U` not smooth over `k` | Mathlib's `Algebra.FormallySmooth.iff_split_injection` assumes `P` formally smooth (read at `RingTheory/Smooth/Basic.lean:273`), so it does not apply; `retractionKerCotangentToTensorEquivSection` (`Smooth/Kaehler.lean:324`, `P` arbitrary) with `Algebra.FormallySmooth.exists_lift` splits `J/J² → (P/J) ⊗ Ω[P/k]` | wrong library input caught | contract and route changed |
| 7.4 quotient stacks | `GLₙ` on `𝔸ⁿ`; `𝔾_m` at 1; `SL₂` on quadratic forms at `uv` (char ≠ 2) | `kⁿ`; orbit not closed; stabiliser = diagonal torus (swaps send `uv ↦ −uv`), orbit dim 2, `N` 1-dim trivial via `d(disc) = (0,2,0) ≠ 0` | normaliser claim refuted, corrected | Check |
| Worked example (FunctionFieldArithmeticPartII gap) | `Bℤ` over `K` | DM, finite type, one point, `G_x = ℤ` infinite | needs quasi-compact diagonal | hypothesis added |

Context checks: every Layer 7 statement is under the standing hypotheses stated at the head of the
layer (`𝒳` locally of finite type over `k`, `x ∈ 𝒳(k)` closed with `p∘x = id`, `G_x` affine); 7.1
is stated under its own weaker hypotheses (locally Noetherian, `x` closed). Generality: every
statement is at the Stacks Project generality (absolute, any base); the rational-point statement 6.4
is wider than its sources (Alper assumes finite type and smooth affine stabilisers), with the
proof route given. Duplication by object: the Mathlib and Tau Ceti pins have no algebraic stacks
beyond Tau Ceti's carrier `SchPseudofunctor` and algebraic-space predicates
(`TauCeti/AlgebraicGeometry/Stack/Basic.lean`, `AlgebraicSpace/Basic.lean`, read at the pin); the
scheme cases are cited as Mathlib declarations.

## Lean carrier

`Suggested.lean` is not part of this design. The carrier it must use is Tau Ceti's
`TauCeti.AlgebraicGeometry.SchPseudofunctor` with groupoid fibres and Mathlib's
`CategoryTheory.Pseudofunctor.IsStack` for `AlgebraicGeometry.Scheme.fppfTopology`, matching
SchemeAndStackFoundations §1.18's `Stacks.StackInGroupoids`; under a single `import Mathlib` it has to
restate that `abbrev` locally. Proposed names are set in italics in the README and are not claimed as
declarations.

## Overlaps with open pull requests

- `roadmaps overlaps StackPointsAndResidualGerbes`: no roadmap of this name on main or in an open
  pull request.
- `roadmaps overlaps SchemeAndStackFoundations`: five open revisions (#1276, #1656, #1807, #1808,
  #1854). At each head the cited section numbers §§1.7–1.25 and §4.1 are unchanged (headings read at
  every head); "Ids this README cites that an open pull request drops: None".
- No id cited here is defined only by an open revision. AlgebraicModuliForArithmeticGeometry is a
  new roadmap in an open pull request earlier in the merge order; its §§4.1, 8.1, 8.3 are cited at
  its head.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.

## Dependency check

```
candidate: StackPointsAndResidualGerbes is not in the merge order yet; checked as if placed after AlgebraicModuliForArithmeticGeometry (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2353 edges, 0 problem(s)
```

No UPWARD or CYCLE line. All consumers named in the README (LanglandsParameterStacks at 61,
MotivicStructuresInModuliOfCurves at 328, FunctionFieldArithmeticPartII at 367, and the roadmaps not
yet in the order) come after position 32.

## Untrusted text

No fetched page, roadmap or source contained instructions; nothing suspicious to report.
