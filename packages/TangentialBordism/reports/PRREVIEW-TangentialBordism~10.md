# Review of TangentialBordism (pull request #942 at f315ecb)

**Verdict:** needs changes

This is an incremental re-review of the 37 README lines that changed since 07ee23a, which PRREVIEW-TangentialBordism~9 read. `Suggested.lean` and `metadata.toml` are byte-identical to 07ee23a, and nothing outside the folder changed.

The repair of ~9 R03 is correct. It describes the pinned `TauCeti.Manifold.Orientation`, `TauCeti.Orientable` and `TauCeti.orientable_closedBall` exactly as they stand at the pin.

The two revision-naming findings (~9 R01, R02) are not repaired, because the pull request description is unchanged.

Reading 2.2 (B1.1) against the newly pinned carrier exposed one new P3 finding: the section plans to construct reversal, pullback, product and the outward-first boundary orientation on the carrier, and Tau Ceti already declares all four at the pin.

## R01 (P3) — 2.2 (B1.1) plans constructions on the pinned orientation carrier that the pin already declares

**Location.**
- `TauCetiRoadmap/TangentialBordism/README.md:481–483`: "Construct reversal by the negative ray, derivative pullback, the ordered product and outward-first boundary rule on this datum".
- `:501–502`: "∂[0,1]=[1]−[0]".
- `:506–508`: "no one-line native theorem is restated".
- `:189`: product orientations are consumed from DifferentialGeometry 2.2.
- `:165–180` (From Tau Ceti) and `:521` (*Needs:*) cite none of these declarations.

**Claim.** Reversal, derivative pullback, the ordered product and the outward-first boundary rule on `TauCeti.Manifold.Orientation` are constructions this roadmap owns. The text also says the roadmap restates no native theorem.

**Witness.** At the Tau Ceti pin (2fd255d9), all four exist on this exact carrier:

| Construction | Pinned declaration |
| --- | --- |
| Reversal | `Manifold.Orientation.neg` (`Orientation/Basic.lean:97`), with `orientationAt_neg` (`:157`) |
| Derivative pullback | `Manifold.Orientation.pullback` (`Orientation/Pullback.lean:173`), for C¹ maps with invertible `mfderiv` |
| Ordered product | `Manifold.Orientation.prod` and `orientationAt_prod` (`Orientation/Prod.lean:112`, `:131`) |
| Outward-first boundary rule | `TauCeti.boundaryOrientation` and `boundaryOrientation_spec` (`Boundary/InducedOrientation.lean:108`, `:145`), on 𝓡∂(n+1), including zero-dimensional boundaries |

The pin also has `TauCeti.orientationAt_boundaryOrientation_interval_left` and `_right` (`Orientation/Interval.lean:153`, `:163`), which give the endpoint signs −1 and +1 of [a,b].

**Repair.**
1. Under From Tau Ceti, cite these declarations with their files, together with `TauCeti.Manifold.Orientation.interval` (`Interval.lean:62`).
2. At `:481–483`, replace "Construct … on this datum" with "Use the pinned reversal, pullback, product and outward-first boundary orientation". Keep as targets only:
   - the outward-first rule on the free and end faces of the face-indexed corner witnesses of DifferentialGeometry 5.5b;
   - the frame, local-homology, determinant and atlas comparisons.
3. Add the declarations to the *Needs:* line at `:521`.
4. In the DifferentialGeometry row at `:189`, say that the product and pullback orientations are realised at the pin.

**Test on the instance.** Apply the cited declarations to [0,1] with `Orientation.interval 0 1`. They give σ(0) = −1 and σ(1) = +1. This agrees with `:501–502`, with the Check at `:518` and with Milnor–Stasheff `4f8edd74 lines 5433–5437`, so no Check changes.

## R02 (P3) — AlgebraicTopology 8.13 is defined only at open revision #1663, which the pull request still does not name

**Location.**
- `README.md:75`: "AlgebraicTopology 8.13's".
- `:188`: "Layers2–4,6,8 and 8.13".
- Also `:333`, `:357`, `:368`, `:390`, `:712`, `:2787–2789`.
- The pull request description: "Revisions of roadmaps on main whose numbering this roadmap cites, which merge first: #1652".

**Claim.** The layer numbering and 8.13 are defined by the named revision.

**Witness.**
- AlgebraicTopology on main (eaf17b1) has no "8.13" (0 hits) and uses "Stage" headings (`:326`, `:1602`).
- At the head of #1652, the "Layer" headings exist (`:552`, `:2528`) but 8.13 does not (0 hits).
- 8.13 exists only at the head of #1663 (`:68`, `:2704`).
- #1652 and #1663 conflict in the AlgebraicTopology `README.md` (overlap scan for AlgebraicTopology).

**Repair.**
- Name #1663 beside #1652 in the revision-dependencies paragraph, and say which of the two merges first.
- The other is rebased on it, so that one head carries both "Layer 8" and "8.13" before this pull request merges.
- No README change is needed.

## R03 (P3) — DifferentialGeometry 5.5b is defined only at open revision #886, which the pull request still does not name

**Location.**
- `README.md:189`: "5.5b's smooth face structure and face-indexed abstract boundary".
- Also `:283`, `:318`, `:398`, `:443`, `:521`, `:620`, `:712`.
- The same description paragraph, which names only #1652.

**Claim.** DifferentialGeometry 5.5b is a citable supplier section.

**Witness.**
- DifferentialGeometry on main (eaf17b1) has no "5.5b".
- At the head of #886 it is defined at `README.md:88`, `:98` and `:255`.
- The worker's overlap scan lists "DifferentialGeometry §5.5b … #886 … must merge first".

**Repair.** Name #886 in the revision-dependencies paragraph. No README change is needed.

## Previous findings

- R01 — not repaired (now R02): the description still reads "Revisions of roadmaps on main whose numbering this roadmap cites, which merge first: #1652". `README.md:188` still cites "Layers2–4,6,8 and 8.13", and 8.13 exists only at #1663.
- R02 — not repaired (now R03): the same paragraph names only #1652. `README.md:189` cites "5.5b's smooth face structure and face-indexed abstract boundary", which exists only at #886.
- R03 — repaired:
  - `README.md:473–478`: "`TauCeti.orientable_closedBall` orients the closed ball of every dimension n≥1 (`NeZero n`), dimension one included, in the sense of `TauCeti.Orientable` … the restriction to dimension at least2 belongs to this roadmap's oriented-atlas comparison".
  - The From Tau Ceti contract at `:165–180`, and `:189`, `:280`, `:452`.
  - The repair introduced no error. R01 above is a pre-existing duplication that came to light when 2.2 was read against the newly pinned carrier.

## Verified sound

### Gate, dependency direction, outside-folder diff, elaboration

- **Gate.** Rerun at f315ecb with `--base origin/main`:

  ```text
  gate TangentialBordism: set_option=0 … statement-hygiene=0 … depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
  ```

  Exit 0. The worker's record adds `build=0`.
- **Folder contents.** The folder holds `README.md`, `Suggested.lean` and `metadata.toml`. `git diff --stat origin/main...HEAD` outside the folder is empty.
- **Dependency check** with `--movable`:

  ```text
  depcheck: 239 roadmaps, 2368 edges, 0 problem(s)
  ```

  There is no UPWARD or CYCLE line. TangentialBordism is tenth in the merge order and StringOrientation seventh.
- **Elaboration.** I elaborated a scratch copy of `Suggested.lean` with `#check @…` appended for both declarations (`lake env lean`, exit 0). The only diagnostics were the two `sorry` warnings.
  - The elaborated types are identical to the worker's signature file and to ~9's record.
  - `exists_contMDiff_homotopicRel` matches `README.md:352–356` minus "arbitrarily small", so the Lean statement is weaker, not stronger.
  - `orientedThreeManifold_parallelization` matches 8.4.
  - No section binder was lost.
- **Padding probe.** I carried it forward from ~9 because the file is byte-identical: both theorems survive `first | simp | infer_instance | rfl | trivial | …`.

### Pinned declarations opened this round

Tau Ceti 2fd255d9. I elaborated these in a scratch file importing `Orientation.ClosedBall`, `Orientation.Prod`, `Orientation.Pullback` and `Boundary.InducedOrientation`:

- **`TauCeti.Manifold.Orientation`** (`Orientation/Basic.lean:32`): the quotient of `OrientationLift.setoid`. `mk_eq_mk_iff` (`:45`) gives `mk a = mk b ↔ a = b ∨ a = b.flip`. Its variables admit any `I : ModelWithCorners ℝ E H` with `[FiniteDimensional ℝ E]`, and the module docstring says it includes boundary and corner points. This is as the README says at `:165–170`.
- **`TauCeti.Manifold.OrientationLift`** (`Orientation/Lift.lean:52`). Its fields are a model orientation, `card_eq`, signs `sign α : (chartAt H α).source → ℤˣ`, local constancy, and `compatible`. That field requires `0 < sign α · sign β · det(fderivWithin (range I) transition)`, so it is the "chart signs absorb the transition Jacobians" of `:173–174`.
- **`TauCeti.Orientable`** (`Orientation/Basic.lean:263`): the class `Nonempty (Manifold.Orientation I M (Fin (finrank ℝ E)))`, as at `:170–172`. Every model is orientable by the instance at `:270`.
- **`TauCeti.orientable_closedBall`** (`Orientation/ClosedBall.lean:68`). It elaborates to `∀ {n} [NeZero n] {V} [NormedAddCommGroup V] [InnerProductSpace ℝ V] [Fact (finrank ℝ V = n)], Orientable (𝓡∂ n) (closedBall 0 1)`. `Manifold.Orientation.closedBall` (`:39`) is the pullback of the ambient model orientation along the inclusion. This is as at `:175–180`.
- **The R01 declarations:**
  - `Manifold.Orientation.neg` and `orientationAt_neg` (`Basic.lean:97`, `:157`).
  - `pullback` (`Pullback.lean:173`), with hypotheses `ContMDiff I I' 1 f`, `∀ x, (mfderiv f x).IsInvertible` and `Fintype.card ι = finrank ℝ E`.
  - `prod` and `orientationAt_prod` (`Prod.lean:112`, `:131`).
  - `TauCeti.boundaryOrientation` (`Boundary/InducedOrientation.lean:108`), with `boundaryOrientation_spec` (`:145`) and `boundaryOrientation_neg` (`:177`).
  - `TauCeti.Manifold.Orientation.interval` and the endpoint lemmas (`Orientation/Interval.lean:62`, `:153`, `:163`). I read these from source because the `Interval` object file is not built in the shared cache, and I did not build it.
- **`TauCeti.orientationPreservingGroupoid`** (`Orientation/OrientedAtlas.lean:129`) and **`TauCeti.IsOrientedAtlas`**: unchanged since ~9.

### Cross-roadmap citations resolved

- **DifferentialGeometry 2.1 on main** (`DifferentialGeometry/README.md:345–350`) specifies the same carrier: an `OrientationLift` with source-indexed signs compatible within `range I`, quotient `Manifold.Orientation` by the diagonal flip. This supports `:189` and `:452` ("the carrier DifferentialGeometry 2.1 specifies and the pin declares").
- **DifferentialGeometry 2.2 on main** (`:351–355`) plans product and pullback orientations and the oriented-atlas criterion for boundaryless `M`. This is consistent with `:189` and `:463–465`.
- **AlgebraicTopology 8.13** (#1663) and **DifferentialGeometry 5.5b** (#886): R02 and R03.
- **AlgebraicTopology Layers 2–8** (#1652): named in the description.
- The worker's citation resolver found no unresolved citation or Lean name.

### Seeded sample, where it meets the change

Only 2.4 and 2.5 among the seeded targets depend on the rewritten B1.1 passage. 8.4 depends on its atlas-comparison claim in dimension at least 2. The other seeded targets (3.1, 5.3, 5.4, 5.6, 5.7, 6.1, 6.5, 6.6, 8.1, 9.2, 9.4, 10.3) are untouched by the diff and carried from ~9.

- **2.4 (B1.2).** Milnor–Stasheff Theorem 17.1 (collar neighbourhood theorem) is at `4f8edd74 line 5439`, printed p. 206. Lemma 17.2 (oriented cobordism is an equivalence relation, by cylinder, reversal and gluing along the common boundary using 17.1) is at `lines 5457–5465`, p. 207. Miller's Chapter 1 §1 Definitions 1.1–1.2 are at `c70bf1f2 lines 95–109`, printed p. 2. His Chapter 2 §1 Definitions 1.1 and 1.3 are at `lines 1453`, p. 39, and `1538`, p. 41. The locator "pp.39–41" is exact. The interval-gluing Check is recomputed below.
- **2.5 (B1.3).** This is the roadmap's own construction with no external source, as ~6 recorded. Its Check "∂ = [1]−[0] ≠ 0 in H₀({0,1})" agrees with the pinned endpoint lemmas.
- **8.4 (B3.1).** The headline's `IsOrientedAtlas` on the half-space model of dimension 3 lies in the range where B1.1 proves the atlas comparison (dimension at least 2), so the repaired dimension-one exception does not touch it.

### Ownership and overlaps

- **Overlap scan.** `overlaps.md` lists five items:
  - DifferentialGeometry 5.5b at #886: R03.
  - AlgebraicTopology Layers 2, 4, 6 and 8 at #1652: named in the description.
- **AlgebraicTopology 8.13.** The scan does not list it. I found it at #1663 (R02).
- **Other changes to this roadmap.** No other open pull request changes TangentialBordism, and no open pull request drops an id this README cites.
- **Ownership.** The diff adds no owned object. It only re-attributes the orientation carrier to the pin, and the pin and DifferentialGeometry 2.1 agree on it. The closest roadmaps in vocabulary (HomotopySpheres, StringOrientation, FourManifolds, GeneralizedCohomology) were audited for ownership in ~9, and nothing here changes that audit.
- **Unchecked pull requests.** Ownership against open pull requests whose files the brief does not supply was not checked.

### Adversarial mathematics table

Rows marked "new" were computed this round. Rows marked "~9" carry the values PRREVIEW-TangentialBordism~9 computed for passages this diff leaves untouched.

| Statement / target | Instances tried | Values computed on both sides | Result / change |
| --- | --- | --- | --- |
| From Tau Ceti: `Manifold.Orientation` as the flip quotient | lift l vs l.flip; M = ∅; M = [0,1] | `mk_eq_mk_iff`: mk l = mk l.flip; ∅: 2 lifts (model orientations), 1 class, and `neg_ne_self` needs `Nonempty M`; [0,1]: 2 classes, `interval` and its negation | Pass, new |
| From Tau Ceti: `Orientable` vs the wrong model "oriented atlas" | [0,1] on 𝓡∂1; the model H | interval lift signs +1 (left chart), −1 (right chart), transition derivative −1: products (+1)(−1)(−1)=+1, (+1)(+1)(+1), (−1)(−1)(+1), all >0, so Orientable holds; `IsOrientedAtlas` fails (below); H orientable by the instance at `Basic.lean:270` | Pass, new: [0,1] separates the two notions as `:173–174` says |
| From Tau Ceti: `orientable_closedBall` hypotheses | n = 1, V = ℝ¹; n = 2; n = 0 | ball [−1,1], `NeZero 1`, finrank 1: orientable; disc: orientable; n = 0: `NeZero 0` fails and there is no 𝓡∂0, as `:445` says | Pass, new (was ~9 R03) |
| 2.2 atlas comparison, dimension one with boundary | [0,1], charts t near 0, 1−t near 1 | transition derivative −1 < 0; sign of chart derivative locally constant on connected [0,1], +1 at 0 and −1 at 1: no positive-transition atlas | Pass, new |
| 2.2 atlas comparison, dimension ≥ 2 | half-space {x₀ ≥ 0} in ℝ²; quadrant | reflection (x₀,x₁) ↦ (x₀,−x₁) keeps x₀ ≥ 0, det −1; swap of coordinates keeps the quadrant, det −1: every negative boundary or corner chart becomes positive | Pass, new |
| 2.2 outward-first rule and point signs vs pin | [0,1] with `Orientation.interval 0 1`; Milnor–Stasheff convention | pin: −basisFun at ⊥ (σ = −1), +basisFun at ⊤ (σ = +1); README ∂[0,1] = [1]−[0], Check (−1,+1); `4f8edd74 lines 5433–5437`: +1 where the positive direction points out | Values agree; duplication is R01 |
| 2.4 Check: gluing two positive intervals | [0,1] ∪ [1,2] at 1 | signs at 1: +1 (end of [0,1]) and −1 (start of [1,2]) cancel; glued [0,2] has −1 at 0 and +1 at 2, total 0 | Pass, new |
| 2.5 Check: relative interval | ([0,1],{0,1}) | ∂ = (−1,+1) ∈ H₀({0,1}) = ℤ², nonzero | Pass, new |
| 2.1 Sard target: degenerate sources and targets | M = ∅; M = pt, N = ℝ²; dim N = 0; dim M < dim N | image ∅; one point, null; no critical point; image null by the flat theorem with `(dim M)²+1 ≤ ∞` | Pass, ~9 |
| 2.1 Sard target: stratum reduction | M = [0,∞), f(t) = t², t | t²: critical at 0 for f and restriction; t: regular for f, critical for the 0-dim restriction | Pass, ~9 |
| 2.1 Sard target: flat input hypotheses | chart image of a stratum; Lindelöf M | `ContDiffAt` on U, `hk` for n = ∞, countably many charts, `IsNullSet.biUnion` | Pass, ~9 |
| 2.1 parametric theorem: projection dimension | M = pt, S = N = ℝ², Z = {0} | F⁻¹(Z) dim 0 vs dim S = 2; bad parameters {0}; flat theorem applies | Pass, ~9 |
| 2.1 exhaustion sublevel | f = \|x\|² on ℝⁿ, K unit ball | critical value 0, c = 2 regular, sublevel ball of radius √2 | Pass, ~9 |
| 2.1 `exists_contMDiff_homotopicRel`: degenerate data | M = ∅; C = U = ∅; C = M; P = pt; P = ∅ | empty g; Whitney approximation; g = f; g = f; vacuous | Pass, ~9 |
| 2.1 relative transversality: β = 0, β > 0 | β = ψ² | dβ = 0 on ψ = 0; affine diffeomorphism onto a ball for β > 0 | Pass, ~9 |
| 2.2 dimension-zero signs | two point rays; product swap | ±1 on the same empty basis; det −1 for two 1-dim factors, +1 with a 0-dim factor | Pass, ~9 |
| 2.3 relative triangulation | N = [0,1], D², ∅ | two vertices + edge; cone on triangle; empty | Pass, ~9 |
| Gap: Arf laws | V = 0, H, A, H⊕H, H⊕A, A⊕A | Gauss sums 1, 2, −2, 4, −4, 4; Arf(A⊕A) = 0 | Pass, ~9 |
| 3.1 inverses / 3.2 interchange sign | O points; SO points; two 1-dim factors | 1+1 = 0; +1−1 = 0; (−1)^(1·1) = −1 at `4f8edd74 line 5480` | Pass, ~9 |
| 3.2 connected sum over X | X = {x,y} | no path, no trace across components | Pass, ~9 |
| 4.1–4.4 operations | a ∈ H¹(RP∞); RP²; p = 3 | Sq¹a = a², Sq²a² = a⁴; w(RP²) = 1+a+a²; P¹y = y³, z² = 0 | Pass, ~9 |
| 5.1–5.2 collapse / labelled points | framed point; aba⁻¹b⁻¹ | degrees ±1; abelianised (0,0) | Pass, ~9 |
| 5.5 framed degrees | +pt; reversed; ∅; interval | +1; −1; 0; 0 | Pass, ~9 |
| 5.6 graph-embedding ranks | (0,1,1), (2,2,5), (1,3,3) | normal ranks 2, 5, 5; shifts −1, 0, −2 | Pass, ~9 |
| 5.7 AHSS Checks | X = pt; two components | E² = Ω_q at p = 0; Ω₀⊕Ω₀; `hatcherSS line 1010` | Pass, ~9 |
| 6.2–6.3 numbers | id S¹; RP²; H_ℝ(2,4) | 0 vs 1; w₁² = w₂ = 1; binom(6,2) = 15 ≡ 1 | Pass, ~9 |
| 6.6 Wall derivations | σ₄; Y₆Y₅ | ∂₂σ₄ = σ₂ (`bcb3caf2 line 467`); Y₅² ≠ 0 | Pass, ~9 |
| 7.1–7.2 ABS, K3 | +pt; K3 | 1; Â = 2, σ/16 = −1 | Pass, ~9 |
| 8.1 quadratic refinement | Lie torus; S² | Arf 1; Arf 0 | Pass, ~9 |
| 8.4 parallelization headline | ∅; ℝ³; half-space; negated e₁; countable union | vacuous; det 1; det 1; det −1 excluded; det 1 componentwise; dimension 3 ≥ 2, so the atlas comparison of 2.2 applies | Pass, ~9 + new remark |
| 8.5 projective fillings | n = 1, 2; Hopf chart | S¹ = ∂D²; fibre degree −1; (−1)(−1) = +1 | Pass, ~9 |
| 9.1 idempotent charts | (1,0,0), (1,1,0); zero matrix | trace 1; trace 0 excluded | Pass, ~9 |
| 9.4 Pontryagin classes of HP^k | k = 1, 2 | ≡ 1 mod u²; 1+2u+7u², (49−4)/45 = 1; `84114d0a line 2417` | Pass, ~9 |
| 10.1–10.4 realization, transfers, kernels | C₃; HP² Gysin; KS numbers | ker(3) = 0; π!u₄² = 1; gcd 28 | Pass, ~9 |

Every row passes on the instances tried. R01 is a duplication of pinned declarations, not a value disagreement: the pin's endpoint signs equal the README's.

## Not verifiable

- **Lee, *Introduction to Smooth Manifolds*** (Springer, paywalled), Chapter 15: Propositions 15.5, 15.6 and 15.15, cited through DifferentialGeometry 2.2 and the pinned files. I relied on the pinned declarations, not the text. The other Lee locators of 2.1 are unchanged since ~9.
- **Munkres, Atiyah–Bott–Shapiro, Anderson–Brown–Peterson, Milnor 1960, McCleary, Stong, Gompf–Stipsicz, Stolz 1992:** cited by locator alone. These are untouched by the diff and unchanged since ~9.
- **AlgebraicTopology 8.13 and DifferentialGeometry 5.5b** exist only at open heads (#1663, #886): R02 and R03.

## Source issues

- none
