# FIX-PKG-RealSurfacePeriodIndex~5

Repair round for the three findings of REV-PKG-RealSurfacePeriodIndex~4. Files edited:
`packages/RealSurfacePeriodIndex/README.md` and `packages/RealSurfacePeriodIndex/sources.toml`.
`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged. No supplier gap was added; the
three declared gaps stand. Layer 1 now has two new subsections, so old §1.6 (de Jong's reduction) is
§1.8 and old §1.7 (removing points, extending line bundles) is §1.9. Section numbers below are the new ones.

## F01 (P1) — applied

§1.8 step 3 "fibre over 0 containing a component birational to X" → fibre over 1, where z^l = s₁^l splits into l multiplicity-one copies of X; the fibre over 0 (z^l = s₀) is irreducible of degree l. Step 5 now specialises at a k-point M of C above 1. A negative-control Check was added (l = 2, s₀ = s₁ = x). Source correction E26 records the CT05 misprint.

Verification. CT05 line 884 (property (iii)) and lines 916–918 put the split fibre over 0. The family at line 935 is s_t = t^l s₁^l + (1 − t)^l s₀, and property (c) at lines 953–955 puts the l components over t = 1. At t = 0, s₀ has simple zeros along D + E, so z^l − s₀ is Eisenstein at the generic point of D. The witness checks out: z² − x is irreducible over k(x, y), and z² − x² = (z − x)(z + x).

Specialising above 0 would give a residue algebra over `k(X)(s₀^{1/l})`. §0.12 then gives only ind(α) | l·d.

I kept the formula and moved the point, as the review proposed. The step-5 argument was rewritten to show what it needs:

- `Z = W ×_{𝔸¹} C` is smooth over C, so the local ring at the generic point of a fibre component is a DVR.
- Its residue field is k(X), and Spec O → X factors through the generic point of X.
- So the pullback of α is a class β ∈ Br(O) that specialises to α. §1.6 then gives a degree-d model of class β.

I checked the same construction elsewhere in the roadmap: §2.9 (the only consumer) and the Layer 2 Examples cite CT05 §3 but make no claim about which fibre is used, so they needed no change. The E-list header now says entries are B19 entries unless another source is named.

## F02 (P1) — applied

Two new Layer 1 targets, each with its hypotheses, locator, proof route and Checks. §1.8's *Needs:* line cites them individually (§1.6 in step 5, §1.7 in step 4).

**§1.6, Azumaya models of prescribed degree.** This is CT05 Theorem 2.5, first assertion, in its own generality.
- Setting: X regular, integral, Noetherian, of dimension ≤ 2; β ∈ Br(X); A a central simple K-algebra of degree d with [A] = β_K.
- Conclusion: there is an Azumaya 𝒜 of degree d and class β with 𝒜_K ≅ A. Each fibre is central simple of degree d with class β(x), so ind(β(x)) | d.
- Route:
  - Take a 𝒞-stable lattice in a 𝒞_K-module V with `End_{𝒞_K}(V) ≅ A`, where 𝒞 is Azumaya of class −β.
  - Take its reflexive hull (SchemeAndStackFoundations §0.6). This is locally free by Tau Ceti `TauCeti.IsRegularLocalRing.free_of_isReflexive` (RingTheory/RegularLocalRing/DimensionTwo.lean:202).
  - Set 𝒜 = End_𝒞(N). It is étale-locally End(P) by Mathlib `ModuleCat.matrixEquivalence` (RingTheory/Morita/Matrix.lean:187), with SchemeAndStackFoundations §2.22 `mk_opposite`, `mk_tensor`, `mk_eq_zero_iff`.
- Checks:
  - Hamilton over ℝ[t]_(t): degree 2, fibre index 2.
  - M_2 of it: degree 4 is kept.
  - (−1, t): its residue −1 is nonzero, so it has no model of any degree.
  - The order with lower-left entry in tR is not Azumaya: its fibre at t = 0 is upper triangular.

**§1.7, Saltman's local form.** This is CT05 Proposition 2.6, all three cases, for an excellent regular local ring R of dimension 2 and a prime l invertible in R.
- Route:
  - The coniveau spectral sequence (PurityForFlatCohomology §8.4) with Gabber's absolute purity (LefschetzPencilsAndVanishingCycles §0.10) gives the residue complex H²(K) → ⊕H¹(κ(𝔭)) → H⁰(κ). That it is a complex is d₁² = 0.
  - Exactness at H²(K): `E₁^{2,1} = H³_𝔪 = 0` by purity.
  - The tame residue of symbols comes from §0.10's fundamental class and HeightsRationalPointsAndObstructions §2.16b `brauerResidue_henselianFormula`.
- Checks:
  - (s, t) on ℂ[s,t]_(s,t): r = 1 is forced, and the crossing term dies after adjoining √(st). These are the review's tests.
  - (1 + t, s): the one-branch case, plus the complex-property negative control.
  - (−1, 1 + s² + t²) on ℝ[s,t]_(s,t): unramified and nonzero (EKM Corollary 17.6).

Not stated: the residue-vanishing corollary of CT05 Theorem 2.5. No route here uses it. §1.7 gets purity from the spectral sequence, and §1.8 uses only the first assertion, in dimension 1. Stating it would widen the scope.

Ownership. I searched by object: `Saltman`, `Kato … complex`, `Auslander–Goldman`, `maximal order`, `Az_n`, reflexive-free statements, on main and at the open heads.
- No roadmap states either result.
- SchemeAndStackFoundations §2.22 has Br = Br′ and injectivity, but no model of a prescribed degree.
- PurityForFlatCohomology §7.11 extends Azumaya algebras from a punctured regular surface to the whole local spectrum. That is a different statement, and no route here uses it.

This roadmap owns de Jong's reduction (Scope), so it owns these two local inputs; the Scope bullet now says so.

The two new suppliers, PurityForFlatCohomology (#1840) and LefschetzPencilsAndVanishingCycles (#873), are new-roadmap pull requests that come earlier in the merge order (lines 221 and 69; this roadmap is at 229). Each has a contract under "Exact supplier contracts".

## F03 (P3) — applied

"FormalLaurentPuiseux L4 (… `puiseuxField_isAlgClosed`)" now reads: L4 for `puiseuxField`, `ramifiedEmbedding`, common levels and algebraicity of the levels; L5 for the root theorem and `puiseuxField_isAlgClosed`. All five places were changed: Scope, the supplier contract, §9.11 step 3, the §9.11 *Needs:* line, and Layer 9 Dependencies. The characteristic-zero and algebraically-closed hypotheses are kept.

Verification. On main, `TauCetiRoadmap/FormalLaurentPuiseux/README.md` has L4 at line 195 and L5 at line 233; algebraic closedness is deduced at lines 271–273. The declaration is at `Suggested.lean:250`. §9.11 step 2 (all at one level) correctly stays L4. `design/plan.json` nodes still say L4. This job may edit only the plan's `gaps`, so I left them.

## Checks

- **Lean elaboration.** `lake env lean packages/RealSurfacePeriodIndex/Suggested.lean`, run from the content checkout, exited 0. The only output was 8 `declaration uses sorry` warnings, at lines 80, 89, 101, 111, 122, 132, 140 and 152. All three imported `TauCeti.*` object files were present, so no module build was needed.
- **Signature check.** I put `#check @name` for all 9 declarations in one scratch file and elaborated it once (exit 0). Every binder survives: `[Invertible 2]` and `[FiniteDimensional K V]` on `HasZeroTotalSignature`; `Algebra.EssFiniteType` wherever the README says finitely generated; the trdeg hypotheses; `¬IsSemireal`; the real-closure vanishing hypothesis; the dimension thresholds 4 < finrank and 5 ≤ finrank. No signature changed, and none needed to: no target with a Lean statement was touched.
- **Dependency check.** The `gate --depcheck` command from the brief printed:

      depcheck: 236 roadmaps, 2147 edges, 0 problem(s)

  There is no UPWARD, CYCLE or moved line. The two new edges are the two new suppliers.
- **Citation check.** `roadmaps resolve` on the README found no cross-roadmap citation or Lean name that resolves nowhere. Its native-name check was unavailable, so I opened the two new pinned names by hand at the lines given above.
- **Manifest.** `sources.toml` still parses. The CT05 locator gains Proposition 2.3. EKM gains Corollary 17.6 and `cited_for` "Layer 1". No source was fetched, and no `needs-references.toml` was written.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §1.6 model of degree d | dim 0: X = Spec K; DVR ℝ[t]_(t), A = ℍ_K; A = M_2(ℍ_K) | 𝒜 = A; fibre ℍ, ind 2 \| d = 2; fibre M_2(ℍ), ind 2 \| d = 4 | Holds; degree kept, not replaced by index |
| §1.6 rank bookkeeping | D = ℍ (e = 2), 𝒞_K = M_3(ℍ^op) (r = 3, c = 6), A = M_2(ℍ) (m = 2) | rank N = mre² = 24; rank P = 24/6 = 4 = me = d; 𝒞⊗𝒜 rank 36·16 = 576 = 24² | Consistent |
| §1.6 hypothesis on class | (−1, t) over ℝ(t), DVR ℝ[t]_(t) | residue −1 ∈ ℝˣ/ℝˣ² ≠ 1 | No model of any degree: negative-control Check |
| §1.6 "any order works" (wrong model) | order with lower-left entry in tR in M_2(ℂ(t)) | fibre = upper triangular, radical of dimension 1 ≠ 0 | Not Azumaya: Check added; the route builds End_𝒞(N), here M_2(R) |
| §1.6 dimension hypothesis | Syzygy module of (x, y, z) over k[x,y,z]_(x,y,z) | reflexive of rank 2, not free | Step 2 fails in dimension 3; dim ≤ 2 is kept |
| §1.7 spectral-sequence degrees | z of codimension a = 0, 1, 2 with total degree 2 or 3 | `E₁^{0,2} = H²(K, μ^⊗2)`; `E₁^{1,2} = H¹(κ(𝔭), μ)`; `E₁^{2,2} = H⁰(κ, ℤ/l)`; `E₁^{2,1} = H^{−1} = 0` | Image of H²(R) = ker ∂ |
| §1.7 (iii) crossing | (s, t), l = 2, ℂ[s,t]_(s,t) | ∂_s = class of t̄, valuation 1; ∂_t = class of s̄, valuation 1; 1 + 1 = 0 mod 2; r = 0 leaves t̄ū⁻¹ of valuation 1 | r = 1 forced; (s, t) = (s, st) + (s, −1) = 0 over K(√st) |
| §1.7 (ii) and the complex property | (1 + t, s); a class ramified along s alone with residue t̄ | valuations 0; and 1 ≠ 0 with no other branch | (ii) holds with u = 1 + t; the second class cannot exist |
| §1.7 (i) | (−1, 1 + s² + t²) over ℝ[s,t]_(s,t) | residues 0 everywhere; value at the closed point (−1, 1) = 0; b² + d² = 1, ab + cd = 0 force a² + c² = 1 + s², not a square | Nonzero unramified class: (i) is not vanishing |
| §1.7 hypothesis l invertible | l = char κ(𝔭) | κ(𝔭)ˣ/l is no longer H¹(κ(𝔭), μ_l) (μ_l not étale) | Hypothesis kept |
| §1.8 fibre choice (F01) | l = 2, s₀ = s₁ = x | t = 0: z² − x irreducible, degree 2; t = 1: (z − x)(z + x), two degree-1 components | Fibre 1 used; specialising at 0 gives only ind(α) \| 2d |
| §1.8 step-4 identity | f = s_t/s₁^l = c s s′ h^l, h = (ss′)⁻¹ | (s, f) + (s, −c⁻¹) = (s,c) + (s,s) + (s,s′) + (s,−1) − (s,c) = (s, s′), using (s,s) = −(s,−1) | Identity verified (CT05's formula) |
| §1.8 step 4, crossing off E′ and E_t | normal crossings on a surface | at most 2 branches through a point | N ∉ E′ ∪ E_t, as the factorisation needs |
| §1.8 step 5 | k-point M over 1, Z smooth over C | O is a DVR; κ(ξ) = k(X); closed point ↦ generic point of X | β ∈ Br(O) specialises to α; §1.6 with dim 1 |
| §1.8 consumer §2.9 | prime-period step | unchanged: ind(α) \| ind(β) \| l | Statement unchanged; only the citation was renumbered |
| §9.11 (F03) | X² − t; R = ℝ | L4: `t^{1/2}` at level 2; L5 needs R(√−1) = ℂ, algebraically closed of characteristic 0 | Locators split L4/L5 |
| E26 | CT05 lines 884, 916–918, 935, 953–955 | split fibre at t = 1, irreducible fibre at t = 0 | Misprint recorded, affects the proof |

## Gate failures

- **tex=9.** Nine braced subscripts (`_{…}`) in README prose, outside code spans, read as TeX. They were in §1.6 (statement and steps 1 and 3), §1.7 step 1 and §1.8 step 5. Each is now inside a code span, as the README already writes `X_{F_i}` and `O_{C,x}`:
  - §1.6 statement: `𝒜 ⊗_{O_X} K ≅ A`.
  - Step 1: `End_{𝒞_K}(V)`.
  - Step 3: three times `End_{O_X}(N)` and once `End_{𝒞_K}(V)`.
  - §1.7 step 1: twice `O_{R,z}`.
  - §1.8 step 5: `Z = W ×_{𝔸¹} C`.

  The wording and mathematics did not change. A scan that strips code spans now finds no `_{`, `^{`, backslash command or `$` in README prose. The same fix was applied to six lines of this report. `Suggested.lean` was not touched, so it was not elaborated again; the result above still holds. After the fix, the dependency check printed `depcheck: 236 roadmaps, 2147 edges, 0 problem(s)` again.

## Notes for the maintainer

- **Renumbering.** Old §1.6 → §1.8 and old §1.7 → §1.9. Internal citations were updated: §2.9 (two places), §5.8, §7.2, §§8.1, 8.7, 8.9 (nine §1.7 citations, two §1.6 citations). No other roadmap cites these numbers. On main and at the open heads, `roadmaps grep RealSurfacePeriodIndex` finds only QuadraticFormInvariantsPartII, and it cites Layer 0 / §0.7. The board package `packages/QuadraticFormInvariantsPartII` likewise cites only Layer PI.0. So no old → new table is needed.
- **New supplier edges.** PurityForFlatCohomology §8.4 and LefschetzPencilsAndVanishingCycles §0.10. Both are open new-roadmap pull requests, earlier in the merge order. If either renumbers §8.4 or §0.10, §1.7 must follow.
- **Overlap and ownership.** No open pull request changes this roadmap (`scratch/overlaps.md`). The closest roadmaps (QuadraticFormInvariantsPartII, AlgebraicTopologyPartII, MotivesAndAlgebraicCycles, QuadraticFormInvariants) were not affected by these edits. The F04 Tsen–Lang question from the earlier round still stands as settled there.
- **Untrusted text.** The review contained no instruction outside its findings.
