# Repair report

Paths are relative to the board or content repository. Source identifiers refer to `packages/ArakelovGeometryAndAbelianHeightsPartII/sources.toml`.

## F01 (P2) — applied

§7.6(1) “|·| ↦ |·|^a (a > 0)” → valid only when |·|^a is still an absolute value: every a > 0 nonarchimedean; ab ≤ 1 for archimedean |·| = |·|_∞^b, 0 < b ≤ 1. §7.6(2) is restricted to nonarchimedean K; §7.6(4) gives b-th powers of the Arakelov metrics. The same restriction was applied in §§2.4, 7.4, 10.3, 10.6, 10.14, 11.3 and 13.8, and positive and negative Checks were added.

## Verification of the finding

The finding is correct. On ℝ with the usual absolute value, a = 2 breaks the triangle inequality: |1 + 1|² = 4 > 2 = |1|² + |1|². So the old §7.6(1) put “canonical metrics” on a field that is not a normed field. The rescaling argument cited is for a nonarchimedean field with a uniformizer (yuan-2026 lines 3946–3950, §A.5). The archimedean case in §A.6 (yuan-2026 lines 4021–4026) takes the usual absolute value. The archimedean ray of M(ℤ) is exactly |·|_∞^t with 0 < t ≤ 1 (yuan-zhang-2025 line 2434). For a complete archimedean field, Ostrowski gives K = ℝ or ℂ with |·| = |·|_∞^b. The triangle inequality forces b ≤ 1 (|2| = 2^b ≤ 2), and b ≤ 1 is enough because (x + y)^b ≤ x^b + y^b. Hence (|·|_∞^b)^a is an absolute value exactly when ab ≤ 1. The second point is also correct: the closed unit ball of the usual absolute value on ℝ is not a ring, so §7.6(2) (valuation ring, smooth model) only makes sense for nonarchimedean K.

The suggested repair is sound and was applied as stated. It keeps every valid power, including a > 1 when b < 1, so the statement is not narrowed below what is true. To make the archimedean clause precise, the repair also:

- states the comparison along the homeomorphism C^an → C^an_(a), which raises each seminorm to the a-th power. Without it, “a-th power of a metric” has no meaning for a trivially valued K, where |·|^a = |·|;
- restates (4) for a general archimedean K. Over (K, |·|_∞^b) the canonical metrics are the b-th powers of the Arakelov metrics; for b = 1 they are the Arakelov metrics themselves. The archimedean case of (1) then follows from (4), and (4) for b < 1 reduces to the uniqueness in GrossZagierAndArithmeticHeights §§2.8 and 2.10 by taking 1/b-th powers. This is the norm-equivariance of §2.2 along the archimedean ray.

## The same pattern elsewhere (all repaired)

- §2.4 (density of divisorial points): “archimedean (with arbitrary positive rescaling)” → discrete points exp(−t·ord) for any t > 0. Archimedean points (only for k = ℤ) are |σ(·)|_∞^t with 0 < t ≤ 1, with the locator yuan-zhang-2025 line 2434. Added a Check: t = 1/2 is allowed, t = 2 is not a point, and the 2-adic exponent s = 2 is allowed.
- §7.4 Check: labelled as nonarchimedean (every a > 0 allowed), with a computed value.
- §10.3 (local φ): new clause (4) says φ is multiplied by a for exactly the valid exponents. Clause (2) now says “usual absolute value”, with the b-scaled form and positivity kept for |·|_∞^b. The route for (4) and a scaling Check were added, and §7.6 was added to *Needs*.
- §10.6 (Φ_S Green function): “its rescaling for other norms” → φ is computed for H_v's own absolute value: t times the e_v = e value at exp(−t·ord_v), and t times the §10.3(2) value at |σ(·)|_∞^t with 0 < t ≤ 1. The Check was extended and §2.4 added to *Needs*.
- §10.14 (hybrid obstruction): a_i = 1/log(1/|t_i|) is used only for |t_i| ≤ e⁻¹, so 0 < a_i ≤ 1. The Check records 1/n ≤ 1 and rejects the inadmissible exponent 2 at |t| = e^(−1/2).
- §11.3 route: effectivity of Φ_S − c₀ at |·|_∞^t holds because both Green functions scale by t; §2.3 added to *Needs*.
- §13.8 API: the archimedean Green value is at the normalized point and scales by t along the ray.

Places checked and left unchanged: §2.1 (its Check already has 0 < t ≤ 1); §2.2 (it compares existing analytic points only); §§2.3 and 2.5 (only points of M(ℤ) appear); §1.7 and §11.1 (the usual absolute value on ℂ only); §10.13 (it already says “normalized archimedean v”); §§2.7, 10.11 and 13.x (here “rescaling” means multiplying a metric by a constant, not raising an absolute value to a power).

## Computed adversarial pass on the changed statements

| Statement | Instances tried | Values computed on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| §7.6(1), nonarchimedean | K = ℚ₂, a = 2 | |2|: 1/2 → 1/4; ultrametric max(|x|,|y|)² is preserved; Green value 1 → 2; norm e⁻¹ → e⁻² | Holds | Check now labelled nonarchimedean |
| §7.6(1), archimedean, negative | ℝ usual (b = 1), a = 2 | |1+1|² = 4 vs |1|²+|1|² = 2; 4 > 2 | Old statement admitted it: defect | Excluded by ab ≤ 1; negative Check |
| §7.6(1), sharpness | b = 1, a = 1.01 | 2^1.01 ≈ 2.014 > 2 | Excluded, so ab ≤ 1 is sharp | none |
| §7.6(1), archimedean, positive | b = 1, a = 1/2 | √2 ≤ 2; Green 1 → 1/2; norm e⁻¹ → e^(−1/2) | Holds | Positive Check |
| §7.6(1), a > 1 allowed | b = 1/2, a = 2 | ab = 1; |2| = √2 → 2; metrics Arakelov^(1/2) → Arakelov | Holds; not narrowed | Positive Check |
| §7.6(1), trivial valuation | ℙ¹ over trivially valued k, O(1), point |t| = e (ord_∞), a = 2 | ‖x₀‖ = 1/max(1,e) = e⁻¹ before; at |t| = e² it is e⁻² = (e⁻¹)²; a generator of norm 1 stays 1 | Holds along the homeomorphism | Homeomorphism made explicit; Check |
| §7.6(2) | ℝ usual | 1, 1 lie in the unit ball, 1 + 1 = 2 does not | No valuation ring | Restricted to nonarchimedean K; Check |
| §7.6(4) | b = 1/2, scalar λ = 2 | b-th power of Arakelov norm scales by 2^(1/2) = |2|_∞^(1/2) | Is a metric over (K, |·|_∞^b) | b-th powers stated |
| §2.4 | Spec ℤ arch. t = 1/2, t = 2; 2-adic s = 2; trivially valued k | √2 ≤ 2; 4 > 2 (not a point); |2| = 1/4; |n| ≤ 1 for all n forces nonarchimedean, so there are no archimedean points | Range (0,1] is exact | Statement and Check |
| §7.4 Check | |ϖ| = e⁻¹, a = 2 | Green value 1 → 2 | Holds (K nonarchimedean) | Labelled |
| §10.3(4) | g = 2 unit loop, a = 2; real place, a = 1/2 and a = 2 | φ: 1/12 → 1/6 (agrees with the ramified renormalization value 1/6); φ → φ/2 > 0; a = 2 excluded (4 > 2); the mass of c₁(O(Δ))² is Δ² = 2 − 2g = −2 at g = 2 before and after | Holds | Clause (4), route, Check |
| §10.3(2), b-scaled | b = 1/2, spectral sum Σ > 0 | φ = Σ/2 > 0 | Positivity kept | Stated |
| §10.6 | unit loop, discrete t = 1, 2; archimedean t = 1/2 | g_Φ = 1/12, 1/6; φ_usual/2 | Consistent with §10.3(4) | Statement and Check |
| §10.14 | |t_i| = e⁻ⁿ, n = 1, 2, 10; |t_i| = e^(−1/2) | a_i = 1, 1/2, 1/10, each ≤ 1, with |t_i|^(a_i) = e⁻¹; a = 2 > 1 excluded | Hybrid sequence valid for |t_i| ≤ e⁻¹ | Route and Check |
| §11.3 route | φ = c₀ + 1 at t = 1/2; nonarchimedean point | t(φ − c₀) = 1/2 ≥ 0; O(c₀) has Green value 0 at nonarchimedean points, φ ≥ 0 | Effective along the whole ray | Clause added |
| §13.8 API | normalized value V = c₅′ + 1, t = 1/2 | Green value of D_S − c₅′ = t(V − c₅′) = 1/2 ≥ 0 | Consistent | Normalization stated |

Generality: the README now matches what is true in both directions. Nonarchimedean fields allow every a > 0 (as yuan-2026 lines 3946–3950 state). Archimedean fields allow exactly ab ≤ 1, including a > 1 when b < 1. No statement is narrowed to b = 1. Context: no Lean statement changed.

## Checks run

- `lake env lean packages/ArakelovGeometryAndAbelianHeightsPartII/Suggested.lean`, run from the content checkout: exit 0, no output, no warnings. No `TauCeti.*` import, so no module build was needed.
- `#check @name` audit: `Suggested.lean` declares no names (its docstring explains why each headline cannot be stated at the pins), so there are no elaborated signatures to compare and none changed. `Suggested.lean` is unchanged this round: the finding concerns README targets with no Lean counterpart.
- Dependency check (`gate --depcheck … --movable`): exit 0, exactly

```text
depcheck: 56 roadmaps, 642 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Citations, sources and ownership

- Cross-roadmap citations used by the repair were re-resolved at the head given by the roadmap service: GrossZagierAndArithmeticHeights §2.4 (archimedean admissible metric), §2.8 (normalized Arakelov Green function), §2.10 (Arakelov dualizing metric, residue isometry for the ordinary absolute value of ℂ) and §2.13 (real-place descent). They state the usual-absolute-value case on which §7.6(4) builds. No new supplier and no new cross-roadmap citation was added.
- Sources: only cached texts already in the manifest were used (yuan-2026 lines 3946–3950 and 4011–4033; yuan-zhang-2025 lines 2417–2434). Both entries' manifest locators already cover §A and Lemma 3.1.1, so `sources.toml` is unchanged. No `needs-references.toml` was written.
- Ownership: the repair adds no new construction or carrier. The rescaling behaviour is a property of this roadmap's own §7.6 metrics, so no ownership search against other roadmaps was needed. The resolver's one lead (StableReductionPartII §MC.4) is the existing declared supplier gap `curve-moduli-noether-positivity` and is unchanged. `design/plan.json` and `metadata.toml` are unchanged.

## For the maintainer

- No Lean names changed, and no target was added, removed or renumbered. The only *Needs* lines changed are §§7.6, 10.3, 10.6 and 11.3, which gain internal section references only. No consumer relies on the old scaling wording. The roadmap service finds no citation of this package on main or in any open roadmap pull request. The two board packages that cite it (the HeightsRationalPointsAndObstructionsPartII design and ArithmeticDynamics) cite its Layers 1–6, 8–9, 12 and 13, and neither cites §7.6, the scaling clause §10.3(4) or §2.4.
- Source issue (for the record): the rescaling sentence at yuan-2026 lines 3946–3950 is correct as printed, because §A.5 assumes a nonarchimedean field. The README states the archimedean extension separately, with its own route.
