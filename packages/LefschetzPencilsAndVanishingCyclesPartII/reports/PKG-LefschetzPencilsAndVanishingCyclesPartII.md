# PKG-LefschetzPencilsAndVanishingCyclesPartII: package report

Deliverables: `packages/LefschetzPencilsAndVanishingCyclesPartII/README.md`, `Suggested.lean`,
`metadata.toml` (`topic = "math.AG"`), `sources.toml`. `design/plan.json` is unchanged: its `gaps`
list stays empty, because the package needs nothing from another roadmap that the roadmap does not state
(see "Supplier contracts" below). There was no `design/review.json` and the `reports/` folder was empty;
the accepted review is the `review` block of `plan.json`, and its notes are applied below.

## Headline theorems

| Headline | Status | Lean name |
|---|---|---|
| Coefficients survive Kronecker substitution with a base exceeding every exponent (README §1.2) | stated | `polynomialGraph_coeff` |
| A Kronecker graph through the origin is a closed immersion avoiding a given hypersurface (§1.3) | stated | `exists_avoiding_graph` |
| The marked étale curve over a fixed étale chart (§2.3) | stated | `exists_marked_etale_curve` |
| The same-field curve through a smooth rational point meeting a dense open (§2.4) | stated | `exists_same_field_curve` |

The one definition the file needs is `polynomialGraph` (real body: `MvPolynomial.eval₂Hom Polynomial.C`
with the values `X^(B^i)`). Every headline can be stated at the pins. The marked component of the
graph pullback (§2.2) is heavy data, so it is a README target and is not defined in the file. The headlines
quantify over its existence using Mathlib carriers. Affine spaces are spectra of polynomial rings, and the
origins are spectra of `constantCoeff`.

## Corrections to the design (what was wrong and what changed)

1. **Pins.** The design quoted Mathlib `082e2d37…` and Tau Ceti `f7904748…`. The pins in
   `lake-manifest.json` are Mathlib `6b7abb3c…` and Tau Ceti `a91d3aaf…`. I checked every library
   declaration again at these pins (31 names; see "Elaboration"). The line numbers given in the design
   were dropped, and files are cited instead.
2. **Supplier citations repointed to main.** The design cited `SchemeAndStackFoundations:SF.0/etale-coordinates`
   parts (b),(c) and `SF.0/rational-point-component` parts (b),(c). These are atlas node ids, not
   sections of the roadmap on main. On main, SchemeAndStackFoundations §0.8 states `etale_coordinates`
   (Stacks 054L) and `rational_point_component` (04KV, 056T, 033N). It does **not** state the design's
   "part (c)": the image of a proper closed subset under an étale chart has closure of dimension `< m`.
   It also does not state the "integral affine chart translated to zero" form of part (b).
   - Part (c) is replaced by a new target owned here, README §2.1 (the boundary polynomial of an étale
     chart). Its route is algebraic: `π^*` is injective because étale maps are open, the target is
     algebraic over `k[X]` by `Algebra.FormallyEtale.iff_exists_algEquiv_prod`, and
     `Ideal.under_ne_bot_of_algebraic_mem` finishes. This needs no dimension theory, so no supplier gap
     is declared. Ownership: the lemma is specific to étale charts and no roadmap or pinned library
     states it.
   - The shrinking to an integral affine chart and the translation are written out as step 1 of §2.4,
     using Stacks 056T and 033N.
3. **`exists_marked_etale_curve` no longer assumes `m > 0`.** The construction never uses the closed
   immersion of §1.3. It uses only `φ(h) ≠ 0`, which comes from §1.2 and holds for `m = 0`. For `m = 0`
   the chart is `Spec k`, `W = C = 𝔸¹_k` and `g` is constant. So the theorem holds without `hm`, and
   §2.4 needs no separate dimension-zero construction. The zero-dimensional case is kept in §2.4 as an
   explanation of why the conclusion asks for a morphism rather than an immersion.
4. **`polynomialGraph_coeff` no longer assumes `B ≥ 2`.** For `B = 1` the bounds force `h` to be
   constant and `e = 0`. For `B = 0` and `m ≥ 1` the statement is vacuous. For `m = 0` it is the
   constant term. The statement is true for every `B`.
5. **Origin preservation needs `B ≥ 1`, not `B ≥ 2`.** For `B = 0` and `m ≥ 2` it fails (`X_1 ↦ 1`). I
   added this as a negative-control Check.
6. **Wrong §2.1-type control replaced.** The new negative control is the projection `𝔸² → 𝔸¹`. It is
   smooth but not étale, and the image of `V(x_1)` is all of `𝔸¹`.
7. **New negative control for smoothness at `y`.** Take the cone `x² = a w²` over `𝔽_q` with `a` a
   non-square; Worked example 3 uses `𝔽_3`. Here `U = Y ∖ {0}` is dense, but every `𝔽_q`-morphism from a
   geometrically integral curve through the origin is constant. A second new control: a degree-two
   closed point is not a section.
8. **Locators.** Kisin–Zhou Remark 5.2.4 and Proposition 5.2.3 are on p. 49 (arXiv v2, KisinZhou2024
   line 2146 page marker; statements at lines 2169 and 2174). Corollary 5.2.7 is at lines 2322–2351
   (pp. 52–53). The proof of Proposition 5.3.5 is at lines 2392–2425 (p. 54). Poonen's Theorem 3.3 is
   at Poonen2004 lines 514–517 and Corollary 3.4 at lines 536–539, both on p. 10.
   - The README now records that Poonen's Theorem 3.3 already allows a quasi-projective ambient
     variety. What neither Poonen statement gives is a curve meeting a prescribed dense open, and
     Corollary 3.4 needs a projective ambient variety.
   - Stacks: 054L is at Stacks-Morphisms line 3743, 04KV at Stacks-Varieties line 528, 056T at
     Stacks-Varieties line 2084, 0CDW at Stacks-Varieties line 2147, and 033N at Stacks-Properties
     line 433.
9. **Process material dropped from the README:** the split proposal (UniversalHypersurfaceMonodromy,
   SemistablePotentialMaps), the review narrative, the errata ids, and "packet". The README just says
   that monodromy of universal hypersurface families and semistable potential maps are not in this
   roadmap.
10. **API and test names turned into prose.** The design gave Lean names to API items and tests:
    `polynomialGraph_C`, `_X`, `_monomial`, `_eval_zero`, `_one_variable`, `_map`, the four
    `polynomialGraph_*` tests, `polynomialGraph_surjective`, the nine `markedPullback.*` items, and the
    four `markedPullback_*` tests. These are now prose API bullets and Checks with no Lean names, as the
    identifier rule requires.
11. **Base roadmap.** LefschetzPencilsAndVanishingCycles comes after this roadmap in the merge order
    (line 60, against line 3), so it is named only as the base roadmap whose Part II this is. The
    README says where it stops: its finite-field descent of pencils gives a finite extension
    `𝔽_{q^r}`. It is not a supplier.

## What the README could not support

Nothing is left unsupported. The heavy construction (the marked component, §2.2) is a README target
with its intended form and a full API, as the house rules require.

## Notions moved down from later roadmaps

None.

## Duplication sweep (by object)

- Kronecker substitution `X_i ↦ T^(B^i)`, with injectivity of bounded weights:
  - Pinned Mathlib: `Mathlib/RingTheory/NoetherNormalization.lean` uses base-`B` separation only in
    private lemmas (`sum_r_mul_ne`, `degreeOf_t_ne_of_ne`) about the different substitution
    `X_i ↦ X_i + X_0^(r_i)`.
  - Mathlib has `Nat.injOn_ofDigits` and `Finsupp.weight` (cited, not restated).
  - Tau Ceti `RingTheory/MvPolynomial/*` has `linearSubst` and `expand`, but no Kronecker map.
  - SubspaceTheorem (main) cites a `MvPolynomial.exists_injOn_weight`. It is absent at the pinned
    Tau Ceti.
  - No roadmap on main or at the open heads states the map (`roadmaps grep` for "Kronecker
    substitution", `polynomialGraph`).
  - Kept, owned here.
- Same-field curve through a rational point:
  - No match on main or at the open pull-request heads (`roadmaps grep` for same-field curve /
    marked curve / curve through a rational point / Poonen).
  - In the board packages, ShimuraVarietiesPartII (SV2.6) and GeometricSatakeAndFusionPartII
    (LM.5/same-field-curve) need same-field curves on Shimura stacks and singular local models. Both
    are consumers later in the merge order. They are not owners of the smooth-chart statement.
  - Kept, owned here.
- Étale coordinates and the rational-point component criterion: owned by SchemeAndStackFoundations
  §0.8. Consumed and not restated.
- "Smooth and geometrically connected implies geometrically integral": Tau Ceti
  `TauCeti.AlgebraicGeometry.Smooth.geometricallyIntegral`. Cited.
- Residue degree one at sections: Tau Ceti `residueDegree_eq_one_of_section`,
  `residueFieldMap_bijective_of_section`. Cited; the design's residue-field remark now rests on them.
- Smoothness of `𝔸¹` of relative dimension one: Mathlib `AffineSpace.smoothOfRelativeDimension`.
  Cited in place of the design's hand-made submersive-presentation argument
  (`Algebra.SubmersivePresentation.isStandardSmoothOfRelativeDimension`, which the instance already
  packages).
- **Removals:** no design target exists elsewhere. Removed only as separate items: the hand-made
  relative-dimension argument (replaced by the Mathlib instance) and the design's `SF.0` part (c)
  contract (not on main; replaced by the owned §2.1).

Ownership against open pull requests: checked with `roadmaps grep` over all 354 open heads and main.
The roadmaps listed in the brief are covered by that index.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `polynomialGraph` | m=1, B=0 | X₀ ↦ T^(0⁰)=T | ok | Check added |
|  | m=2, B=0 | X₀ ↦ T, X₁ ↦ T⁰ = 1 | origin not preserved | origin API needs B ≥ 1; negative Check |
|  | m=0 over a field | map = `Polynomial.C`; T not in image | not surjective | Check |
|  | m=0 over the zero ring | both rings 0 | surjective | stated "over a field" |
| `polynomialGraph_coeff` | 𝔽₂, X₁−X₀², B=2 | image T²−T² = 0; coeff of T² (e=(0,1), w=2) is 0 vs h-coeff 1 | hypothesis fails, and so does the conclusion | negative Check |
|  | ℤ, X₀²X₁−X₀X₁², B=3 | w(2,1)=5 gives 1; w(1,2)=7 gives −1; w(0,2)=6 gives 0 = coeff of X₁² | ok | Check |
|  | B=1, m=2 | only d=e=0; w=0; constant term = h₀ | true | dropped B ≥ 2 |
|  | B=0, m=1 | no admissible e | vacuous | — |
|  | m=0 | empty e, w=0, coeff C a at 0 = a | true | Check |
|  | e ∉ supp | both sides 0 (injectivity on bounded vectors) | true | prose |
| `exists_avoiding_graph` | 𝔽_q, h = T^q − T, m=1 | D(h) ≠ ∅, D(h)(𝔽_q) = ∅ | ok; no rational point claimed | Check |
|  | 𝔽₂, X₁−X₀² | B=2 excluded (φ=0); B=3 gives T³−T², D = 𝔸¹∖{0,1} | ok | Check |
|  | m=0 | Spec k[T] → Spec k not injective | not a closed immersion | m>0 kept |
|  | zero ring | h ≠ 0 impossible | vacuous | — |
| §2.1 boundary polynomial | identity chart of 𝔸², Z=V(X₀X₁) | h = X₀X₁ | ok | Check |
|  | m=0 | V = Spec L, Z = ∅, h = 1 | ok | Check |
|  | projection 𝔸²→𝔸¹ (not étale), Z = V(x₁) | π(Z) = 𝔸¹ | no h exists | negative Check for étale |
| §2.2 marked component | 𝔽₃, π(x,z) = (x, z²−1−2x) | Jacobian det 2z, a unit; π(0,1) = (0,0); pullback z² = (T+1)²; factors differ by 2(T+1), a unit; at T=0, z=1 is on z=T+1, and −(T+1) = −1 ≠ 1 | two components, mark selects one | Check kept and verified |
|  | identity chart, B=2 | g(T) = (T,T²), q = id | ok | wrong-order model (T²,T) excluded |
|  | m=0 | W = 𝔸¹_k, g constant | ok | uniform construction |
|  | base change to 𝔽₉ | branch stays connected; W_K has 2 components | ok | Check |
| `exists_marked_etale_curve` | U = D(X₀), h = X₀, B=2 | c = 0 ∉ D(T) = g⁻¹(U) | ok | Check |
|  | 𝔽₂, h = X₀²X₁−X₀X₁², B=3 | g = (T,T³), good open D(T⁵+T⁷) = 𝔸¹∖{0,1} | ok | Check |
|  | m=0, V = Spec k | C = 𝔸¹, q = id, πg = a_B q (both the structure map) | true without hm | hm dropped |
|  | context | k-structure of V comes only through π; y≫π = origin implies y is a section (Spec.map(algebraMap ≫ constantCoeff) = 𝟙) | ok | — |
| `exists_same_field_curve` | Y = Spec k | m=0, C = 𝔸¹, constant g | ok | Check |
|  | Y = 𝔸¹_{𝔽_q}, U = D(T^q−T) | g = id, g⁻¹(U)(𝔽_q) = ∅ | ok | Check |
|  | Y = 𝔸¹ ⊔ 𝔸¹, U = first copy | U not dense in Y, dense in V | ok | Check |
|  | Y = Spec 𝔽_{q²} over 𝔽_q | Y(𝔽_q) = ∅ | hypothesis needs a section | negative Check |
|  | cone x²+w²=0 over 𝔽₃ | Y(𝔽₃) = {0}; lines x = ±iw swapped by Frobenius; any g is constant, so g⁻¹(U) = ∅ | conclusion false without smoothness at y | negative Check, Worked example 3 |
|  | Y = Spec k[x,w]/(xw), y=(1,0), V=D(x) | V ≅ Spec k[x,x⁻¹] smooth | ok | Check |
| Residue-field remark | sections c, y | residue degree 1 at both (Tau Ceti `residueDegree_eq_one_of_section`) | ok | supplier cited |
| Worked example 1 | D(T⁵+T⁷) over 𝔽₂ | T⁵(1+T)²; 𝔽₂-points none, 𝔽₄-points = 𝔽₄∖𝔽₂ | ok | — |

Generality: the README and the Lean signatures agree.
- §1.2 and §1.3 hold over a commutative ring.
- Layer 2 holds over a field.
- `exists_marked_etale_curve` holds for any `m ≥ 0`.
- `exists_avoiding_graph` keeps `m > 0`, which the closed immersion needs.

Unused hypotheses (P3): none remain. `B ≥ 2` in the conclusion of `exists_avoiding_graph` and
`exists_marked_etale_curve` is a property of the chosen base, not a hypothesis.

## Elaboration

- `lake env lean packages/LefschetzPencilsAndVanishingCyclesPartII/Suggested.lean`, run from the
  content checkout: exactly **4** warnings, all `declaration uses 'sorry'`, at lines 48, 59, 74 and 98.
  No other messages.
- Signature check: I put `#check @name` for all five declarations in one scratch file, elaborated it
  once, and compared the types with the README statements. They agree, and every binder is explicit
  in its own signature; there are no section `variable`s.
  - Changes after the check: `hm` was removed from `exists_marked_etale_curve`.
  - In the same scratch file I proved `polynomialGraph (ZMod 2) 2 2 (X 1 − X 0²) = 0` by `simp`. That
    is Check 2, and it is not in the file.
- Library names: one scratch file `#check`s all 31 Mathlib and Tau Ceti names the README cites, at the
  pins, with no errors. It needed `lake build` of `TauCeti.AlgebraicGeometry.Morphisms.Smooth.GeometricallyIntegral`
  and `TauCeti.AlgebraicGeometry.RationalPoint.Basic`.
- `Suggested.lean` imports only `Mathlib`.

## Dependency check

```
$ tauceti-roadmap … gate --depcheck packages/LefschetzPencilsAndVanishingCyclesPartII/README.md --name LefschetzPencilsAndVanishingCyclesPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 642 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. The only roadmap supplier is SchemeAndStackFoundations (main, and
line 2 of the merge order).

`roadmaps resolve` on the README found no cross-roadmap citations and no Lean names that resolve
nowhere. The four leads in the worker's citations list (`polynomialGraph` under `TauCeti.SameFieldCurves`,
and `markedPullback.changeField`, `.chartCompatibility`, `.goodOpen`) came from design names. They are
gone: `polynomialGraph` is now declared in `Suggested.lean`, and the `markedPullback` items are prose.

## Sources

- `sources.toml` records five works, fetched through the sources service, all certified:
  - KisinZhou2024: arXiv v2, with the DOI of the published version and a version note.
  - Poonen2004: author page.
  - Stacks-Morphisms, Stacks-Varieties, Stacks-Properties.
- The service first created one key per Stacks tag, which gave three keys for the one Varieties
  chapter file. I merged them into one key per chapter, so each work has one key.
- No text is missing, and no `needs-references.toml` was written.
- No suspicious instructions were found in any fetched text or roadmap.
