# FIX-PKG-AdicCoefficientsAndComparisonsPartII~5

Findings of REV-PKG-AdicCoefficientsAndComparisonsPartII~4, settled one by one. Four applied (one with corrected mappings), one disputed.

## F01 (P2) — applied

§PA.0.11 retitled "quasi-excellent surfaces". Statement and hypotheses are now quasi-excellent. Route: componentwise Lipman (stacks 0BGP), then CJS Corollary 0.4 on the regular, hence excellent, Y₁. Four Checks. Line 3, §PA.6.4(i), §PA.6.5(i): "dim ≤ 1 or excellent dim ≤ 2" → "dim ≤ 2". Also updated: Scope, SchemeAndStackFoundations contract, Suggested.lean docstring, stacks locator, ilo14 line 7310 → 7318.

## F02 (P3) — applied

Line 99: "The quotient log sheaf is the invariant direct image" → "Its log structure is the subject of the gap below". Line 107 now consumes openness and abelian inertia "through gap:very-tame-local-quotient". Same pattern fixed at §PA.4.4 (localization compatibility is gap (d)) and §PA.4.1 (closed-subset log structure "supplied" → requested as gap).

## F03 (P3) — applied differently

Twelve slugs (49 citations) → CrystallineCohomology target names with exact subsections, e.g. (log-smooth-chart-criterion) → CR.5:log-algebra.3 (Kato chart criterion). Two mappings differ from the review: (log-structure) → Étale log structures, the defining target (Associated is logification); (kummer-morphism) → Kummer étale morphisms (§PA.4.6 descends along a Kummer étale quotient). "trivial-log comparison" → `LogCrystalline.IsLogRegular.trivial_iff`.

## F04 (P3) — disputed

The Conventions (line 32) and gap:closed-subset-log-structure put log structures on the étale site. ilo14 line 3050 (VI 1.2) takes stalks at geometric points, so the residue field is the separable closure k^s, and that field is always infinite (F_q ⊊ F_{q²}).

The étale characteristic monoid is {0} ∪ {(n, a) : n ≥ 2, a ∈ k^s}, where (n, a) is the class of xⁿ(1 + a x):
- (2, a) is indecomposable, because n + m = 2 forces one summand to be 0;
- so there are infinitely many indecomposables, the monoid is not finitely generated and the structure is never fine.

The reviewer computed the Zariski stalk, with residue field k. The Check's claim was kept. Its reason is now stated, and the F₂ Zariski contrast was added as a convention witness: generators (2,0), (2,1), (3,0), (3,1), not saturated.

## F05 (P3) — applied

Added at the end of the first Scope paragraph: "LocalFieldsRamificationPartII and LogicAndDefinabilityInNumberTheoryPartII refer to this roadmap as PrimeToDegreeAlterations; that alias resolves here."

## Verification notes

**F01.**
- Lipman's theorem. stacks Resolution of Surfaces line 1880 (Tag 0BGP) needs only finite normalization, finitely many singular points and normal completions. Line 488 (Tag 0BBS) defines a normalized blow-up as blow-up at a closed point followed by normalization.
- The three conditions on a two-dimensional quasi-excellent integral Y_i. Each comes from SchemeAndStackFoundations on main:
  - §0.20 `Excellence.IsQuasiExcellentRing.isNagata` gives finite normalization.
  - §0.21 J-2 gives a closed singular locus. §4.13 Serre's criterion gives (R_1), so the singular locus is a finite set of closed points.
  - §0.21 `regular_map_completion` gives normality of the completion of a normal local G-ring.
- CJS Corollary 0.4 (cjs line 131) needs a regular excellent ambient. Y₁ is regular and quasi-excellent, hence excellent.
- ilo14 line 7318 and temkin17 line 94 state the quasi-excellent case.
- Other "excellent" hypotheses in the README are on regular one-dimensional bases (§§PA.6.8, 6.10, 6.11a–b), where quasi-excellent and excellent coincide, so nothing else was narrowed.

**F01 ownership.** StableReduction Layer 4 has Lipman only for normal proper models of smooth curves over a DVR. RelativeJacobiansAndIntegralCurveModels §5.1 uses 0BGP without stating it generally. EllipticKTheory's `excellentSurfaceResolution` is excellent-only and later in the order. The general theorem therefore stays in §PA.0.11, and Scope and ownership says how it differs.

**F02.** LefschetzPencilsAndVanishingCycles §0.10 at its open head gives only an fs log-regular quotient with a Kummer étale projection. The invariant direct image, openness and abelian inertia are absent there; gap:very-tame-local-quotient (a)–(d) already asks for them.

**F03.** Every name was checked at CrystallineCohomology's open head: lines 7555, 7677, 7700, 7724, 7848, 7881, 7907, 7929, 7977, 8011, 8037, 8162. Each sits in the subsection cited.

**F05.** The alias does mean this roadmap:
- `packages/LocalFieldsRamificationPartII/design/README.md` lines 140, 218, 1045 ask it to import GF.2/GF.6 and to own separable geometric distillation, which are §§PA.2.6, PA.3.7 here;
- `packages/LogicAndDefinabilityInNumberTheoryPartII/design/README.md` line 503 asks it for the odd-degree alteration, which is §PA.6.10.

## Checks run

- `lake env lean packages/AdicCoefficientsAndComparisonsPartII/Suggested.lean` from the content checkout: exit 0, no output, about 3 s. There are no `TauCeti.*` imports.
- Signature audit: `Suggested.lean` declares nothing (namespace only), so a `#check @name` file has an empty domain. The only Lean change is two docstring entries: PA.0.10–0.12 and PA.6.4 no longer list excellence.
- Pins: Mathlib `6b7abb3c…`, Tau Ceti `a91d3aaf…`. A recursive grep for `QuasiExcellent|IsExcellent|quasiExcellent` finds nothing in either library, so PA.0.11 stays not statable.
- Depcheck (`--movable`):

```text
depcheck: 56 roadmaps, 643 edges, 0 problem(s)
```

  No UPWARD, CYCLE or moved line.
- `roadmaps resolve`: no Lean name is unresolved. The one lead is LogicAndDefinabilityInNumberTheoryPartII §2.1, a board design (`packages/LogicAndDefinabilityInNumberTheoryPartII/design/README.md` line 491), not a roadmap.
- No LaTeX delimiters in the README. `sources.toml` parses. `design/plan.json` is unchanged: no new gap, and the five gap slugs still match the five README contracts.
- Ownership against open work was checked through the roadmap service's grep of main and the indexed open heads, plus the board packages. The sibling checkouts were not read separately.
- Sources: no fetch was needed. stacks Resolution of Surfaces is already cached under the manifest's `stacks` key, and its locator now adds 0BGP, 0BBS, 0BGL. There is no `needs-references.toml`.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §PA.0.11 (qe, dim ≤ 2) | S = Spec k[[x,y]], Z = closed point | Lipman sequence empty; D = point of codim 2; CJS blow-up gives E ≅ P¹ (1 component); identity fails (codim 2) | Pass | Check |
| §PA.0.11 | A₁ cone uw = v², Z = ∅, any char | singular locus = {vertex}; blow-up charts k[u,v₁] (w = uv₁²), k[w,v₂], k[v,s,s⁻¹] (st = 1) all regular; length 1; degree 1 | Pass | Check |
| §PA.0.11 | Y = V(xz, yz), Z = origin | Y₁ = A² ⊔ A¹, degree 1 at both maximal points; D = {0} ⊔ {0}; only the plane point (codim 2) is blown up; preimage E ⊔ pt, both codim 1 | Pass | Check |
| §PA.0.11, hypothesis needed | S = Spec A[z], A the non-qe DVR of §PA.0.9 | normalization of A[y,z] is A′[z] ⊆ Γ(Y′₀,O), finite over A[z]; mod z gives A′ finite over A, contradiction | Negative control | Check |
| §PA.0.11, new range | Nagata's pinched local domain A = preimage of k in B, B = semilocalization of k[x]_(x)[y] at (x,y) (height 2) and (xy−1) (height 1), k ≅ k(x) | B = A + Ae is finite, so A is noetherian (Eakin–Nagata); conductor = m_A, so A_q = B_q off m and the formal fibres of A are those of excellent B, with fibre k at m: a G-ring, hence qe (semilocal G-ring ⇒ J-2, EGA IV 7.8.3); Â has components of dim 2 and 1, so A is not universally catenary (Ratliff) and not excellent. Route: Y^ν = Spec B regular, D = {M₁, M₂}, blow up M₁ only; preimage E ⊔ {M₂} | Pass; the old CJS route does not apply | none (report only) |
| §PA.0.11, degenerate | S = ∅; S = Spec k; Y = Spec k[x,y,ε]/(ε²) | no alteration but ∅; finite Y with Y_red a product of fields, Z = ∅; Y₁ = A² → Y a closed immersion of degree 1, a modification of the reduced component only | Pass | none |
| §PA.0.11, D nowhere dense | general | maximal points of Y₁ map to maximal points of Y, which Z avoids; a proper closed subset of an irreducible component of dim ≤ 2 has dim ≤ 1 | Pass | wording |
| §PA.6.4(i) / §PA.6.5(i) | S = Spec Z (dim 1); Spec Z_p[[u]] (dim 2, excellent); pinched A (dim 2, qe); Spec Z_p[[u,v]] (dim 3) | (i), (i), (i) (new), only (ii) | Pass | hypothesis widened |
| Line 3 summary | same instances | projective for qe dim ≤ 2, proper for separated qe dim 3 | Pass | — |
| F02 contract vs supplier | LPVC §0.10 text; sign action on (A², ∅) and on (A², V(xy)) | supplier gives quotient existence + Kummer étale only; inertia order 2 is not very tame on ∅ and very tame with axes; quotient (uw = v², V(v)) | Consistent after edit | lines 99, 107, 1040, 948 |
| F03 names | 12 CR target names | each found once in the stated subsection (.1: 7555–7724; .2: 7848; .3: 7881–7929; .4: 7977–8162) | Pass | 49 citations |
| F04 cusp | étale stalk over any k; Zariski over F₂ and over infinite k | étale: (2,a), a ∈ k^s infinite, indecomposable, not f.g.; F₂ Zariski: generated by (2,0),(2,1),(3,0),(3,1) since (n,a) = (2,a) + (n−2,0) and {2,3} generate ℕ≥2; (1,0) ∉ M̄ while 2(1,0) ∈ M̄: not saturated | Claim true; review wrong | wording + witness Check |

## For the maintainer

- §PA.0.11 is retitled "Universal resolvability of quasi-excellent surfaces". No Lean names changed and no other roadmap cites the section by title.
- The README now names `regular_map_completion` and Serre's criterion in SchemeAndStackFoundations §§0.21 and 4.13 as consumed. Both are on main.
- Source issue: ilo14 X Remark 3.3.4(ii) cites CJS for quasi-excellent schemes, but CJS assumes excellence. The roadmap now routes through Lipman (stacks 0BGP).
- The review text contained no instructions; nothing suspicious to quote.
