# FIX-PKG-MordellLawrenceVenkateshPartII~2

Repair round for the review `REV-PKG-MordellLawrenceVenkateshPartII` of the package
`packages/MordellLawrenceVenkateshPartII`. Seven findings; six applied, one applied in part with
one sub-item disputed. `Suggested.lean` did not change. Files edited: `packages/MordellLawrenceVenkateshPartII/README.md`
and the `needs` sentence of the gap `relative-crystalline-comparison` in
`packages/MordellLawrenceVenkateshPartII/design/plan.json`.

## F01 (P3) — applied differently

Six of the seven locator slips confirmed against the cached texts and repaired; the first is disputed.

- Disputed: "Definition 5.2, pp. 40–42" (§0.1). LS line 1832 lies between the page markers at LS
  line 1798 (`=== page 40 ===`, header "40 BRIAN LAWRENCE AND WILL SAWIN" at LS line 1799) and LS
  line 1848 (page 41), so the definition starts on preprint p. 40, not p. 41, and runs to just before
  Definition 5.3 at LS line 1903 on p. 42 (marker at LS line 1895). The README's "pp. 40–42" is
  right; the review misread the marker at line 1798 as page 41. Unchanged.
- §0.7: "Remark 5.7, p. 43" → "p. 42" (LS line 1926 lies between markers 1895 = p. 42 and 1940 = p. 43).
- §5.2: "Lemma 8.2 and Definition 8.3, pp. 73–74" → "p. 74" (LS lines 3366 and 3379 both after marker 3347 = p. 74).
- §7.1 and §7.2: "footnote 10" → "footnote 11" twice (the Wintenberger/Pink outline is at LV line 3196;
  footnote 10 at LV line 2936 is the degree convention of §10.2).
- §7.3: "Lemma 10.4 and proof, printed pp. 976–978" → "Lemma 10.4, statement printed p. 975, proof
  pp. 976–978" (statement at LV line 3113, marker 83 + 892 = 975).
- §7.5: "Lemma 10.5, printed pp. 979–981" → "Lemma 10.5, statement printed p. 975, proof pp. 979–981"
  (statement at LV line 3123, same page).

Pattern search: the only other citation of Lemma 10.4 is in Source corrections ("proof of Lemma 10.4,
printed p. 978"), which is a proof-page citation and correct; no other citation of Definition 5.2,
Remark 5.7, Lemma 8.2 or a footnote exists.

## F02 (P3) — applied

Confirmed at the supplier's open head: §4.7 is "Minuscule representation alternatives", §4.8 is
"Inversion symmetry and the classical form". Replaced §4.7 by §4.8 in the four places (Scope and
ownership bullet, supplier-contract bullet, §1.8 *Needs:*, Layer 1 Dependencies). No other
SheafConvolutionOnAbelianVarieties §4.7 citation exists in the README.

## F03 (P3) — applied

Confirmed: LS Lemma 5.37 (LS lines 2578–2579) and LV §2.3 (LV lines 499–505) give uniqueness up to
`G`-conjugacy only; neither names finite extensions. Old: "unique up to `G(k̄)`-conjugacy, and, for
the coefficient normalizers of §2.1 …, unique up to rational conjugacy after the finite extensions
stated in the source, depending continuously on a continuous representation." New: unique up to
`G(k̄)`-conjugacy; over a characteristic-zero `k` the construction with `k`-parabolics and `k`-Levis
on a `k`-rational `Γ` gives a `k`-rational subgroup, and for `k` a finite extension of ℚ_p the `G(k)`-classes
inside one geometric class are finitely many by §2.11. Applied with one narrowing of the suggested
text: the finiteness clause is scoped to p-adic `k`, since §2.11 is stated for finite extensions of
ℚ_p and `H¹(ℚ, μ₂)` is infinite, so no such finiteness holds over ℚ. Added the API bullet that the
semisimplification of a continuous representation into `G(k)`, `k` p-adic, is continuous because
`P → L` is a morphism of algebraic groups.

## F04 (P3) — applied

Confirmed: LS Definition 5.38 (LS line 2584) requires an `E`-linear rigid abelian tensor category,
and LS line 2596 says the definition does not apply to filtered vector spaces because that category is
not abelian. §2.4 now reads "a `k`-linear rigid abelian tensor category `C` with fibre functor `ω`
(the category of §0.3 or a tensor subcategory of it)". §0.3 ("The tensor category of systems") is
where the rigid abelian structure is built, so nothing downstream changes.

## F05 (P2) — applied

Confirmed: DeligneWeightsAndPurity §2.2 at its head states Zariski density only for open subgroups of
`Sp(V)(ℚ_ℓ)` and says explicitly that connectedness is essential; the orthogonal step of §9.2 had no
owner. ReductiveGroupsPartII §RG2.0.2 (*smooth-group-analytic-charts*, on main) gives `G(K)` an
analytic manifold structure of dimension `dim G` for a smooth affine finite-type group over a
characteristic-zero local field, which is the input the argument needs. Changes:

- §9.2 route: "so the monodromy is open and its Zariski closure contains `SO(E)`" → the monodromy is
  open in `O(E)(ℚ_ℓ)`; an open subgroup of `SO(E)(ℚ_ℓ)` has Lie algebra `𝔰𝔬(E)` (ReductiveGroupsPartII
  §RG2.0.2), so its Zariski closure is a closed subgroup of dimension `dim SO(E)` of the connected group
  `SO(E)`, hence `SO(E)`; the monodromy meets `SO(E)(ℚ_ℓ)` in such a subgroup.
- §9.2 Check added: `dim E = 2` split, `SO(E) = 𝔾_m`, open subgroup of `ℚ_ℓ^×` dense; open subgroup of
  `O(E)(ℚ_ℓ)` inside `SO(E)(ℚ_ℓ)` not dense in `O(E)`.
- ReductiveGroupsPartII §RG2.0.2 added to the §9.2 *Needs:* line, Layer 9 Dependencies, a new
  "From TauCetiRoadmap.ReductiveGroupsPartII" supplier contract, and the Scope and ownership list.

ReductiveGroupsPartII is on main and earlier in the merge order (line 23 against line 314), so the
direction of supply is unchanged.

## F06 (P3) — applied

Confirmed by computation: for `H = 1`, `G = GL₂`, the pairs `(P, M)` with `P` a Richardson parabolic
and `M` a Levi of `P` are, up to `GL₂`-conjugacy, `(B, T)` and `(G, G)` (the latter from the trivial
cocharacter, LS Definition 5.34, LS line 2537): two classes, not one. Check rewritten accordingly. The
neighbouring Check (diagonal torus of `GL₃`, 13 ordered set partitions) already counts the one-block
partition `(G, G)`, so the two Checks now agree.

## F07 (P3) — applied

Confirmed: PadicHodgeTheory §7.3 at its head (paragraph beginning "When the relevant `Rⁱf_*L` are
lisse") states that for proper smooth `f` the higher direct image of a de Rham local system is de Rham
with associated `Rⁱf_dR,*E`, locally free Hodge graded pieces and Gauss–Manin connection (Scholze,
Theorem 8.8). On a residue disk this is the horizontality of the fibrewise de Rham comparisons. The gap
sentence (README "Exact supplier contracts" and `design/plan.json`, same slug, same wording in both)
now cites §7.3 for the horizontality and asks only for compatibility with the Frobenius of the
convergent F-isocrystal of CrystallineCohomology §CR.7.3 and the resulting Faltings association. Added
a §7.3 bullet to the PadicHodgeTheory contract, §7.3 to the *Needs:* lines of §§0.1, 0.5, 0.7, to the
Layer 0 Dependencies and to the PadicHodgeTheory bullet of Scope and ownership. The gap's `supplier`
and `section` fields are unchanged.

## Checks

- **Elaboration.** `lake env lean` on `packages/MordellLawrenceVenkateshPartII/Suggested.lean` from
  the content checkout: two warnings `declaration uses 'sorry'` (lines 61 and 98), no error. The file
  is unchanged this round.
- **Signatures.** A scratch copy with `#check @name` inside the namespace for all six declarations
  (`eulerian`, `eulerian_central_mass_le_half`, `HypersurfaceMonomial`, `IsSmoothHypersurface`,
  `HasGoodReductionOutside`, `integralHypersurfaces_not_zariskiDense`) elaborated; each printed type
  equals the worker's `signatures.md` and the README statements of §§8.4, 9.1 and 9.3 (`2 ≤ n`
  hypothesis present; the non-density statement quantified `∃ n₀ ∀ n ≥ n₀ ∃ D₀ ∀ d ≥ D₀ ∀ S ∃ G ≠ 0`
  homogeneous vanishing on every good-reduction form). The file has no `variable` block, so no
  binder can be lost. Nothing changed.
- **Dependency check.** Output:

  ```
  depcheck: 230 roadmaps, 2287 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- **Citation resolve.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name
  found nowhere.
- **Gate failures listed in the brief:** none.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.3 rational semisimplification | upper-unipotent `Γ ⊂ GL₂(ℚ_p)`; split torus image; `k = ℚ` | minimal `k`-parabolic `B`, `k`-Levi `T`, image trivial, one `G(k)`-class; torus `k`-rational, geometric class of split tori is one `G(k)`-class; over ℚ, `H¹(ℚ, μ₂) = ℚ^×/ℚ^{×2}` infinite | finiteness holds for p-adic `k`, fails over ℚ | scoped the finiteness clause to finite extensions of ℚ_p |
| §2.3 continuity bullet | upper Borel of `GL₂(ℚ_p)` → diagonal | `(a, b; 0, d) ↦ (a, d)` is a polynomial map, continuous for the ℓ-adic topology | true | none |
| §2.4 rigid abelian | category of §0.3; filtered vector spaces (LS line 2596) | §0.3 is abelian and rigid; filtered spaces not abelian, "exact" undefined | hypothesis necessary and satisfied by the consumer | none |
| §2.10 Check | `H = 1`, `G = GL₂`; diagonal torus of `GL₂` | pairs up to `G`: `(G, G)`, `(B, T)`: 2; pairs for the torus: ordered set partitions of `{1, 2}`: 3 (`{12}`, `1|2`, `2|1`), the last two `G`-conjugate but not `T`-conjugate | both Checks consistent | Check rewritten |
| §9.2 orthogonal density | `dim E = 2` split; `dim E = 3`; monodromy finite | `SO₂ = 𝔾_m`, `1 + ℓℤ_ℓ` infinite so closure dimension 1 = `dim 𝔾_m`; `SO₃` connected of dimension 3, closure of an open subgroup has dimension 3; finite monodromy is not open, excluded earlier in the route by the indefinite form | argument sound; `O(E)` must be intersected with `SO(E)(ℚ_ℓ)` first | new sentence and Check |
| gap `relative-crystalline-comparison` | constant family `Y₀ × 𝒳` | Gauss–Manin connection trivial, de Rham half of §7.3 is the identity transport, the requested Frobenius compatibility is the single comparison at the point | the narrowed gap asks exactly for what §7.3 lacks | gap narrowed |
| locators | page markers | LS 1798 = p. 40, 1848 = p. 41, 1895 = p. 42, 1940 = p. 43, 3347 = p. 74; LV 3095 = marker 83 (printed 975), 3171 = marker 85 (printed 977) | six slips confirmed, one disputed | six repaired |

## Ownership

The orthogonal Zariski-density step is stated in the route of §9.2 with its analytic input cited from
ReductiveGroupsPartII §RG2.0.2; DeligneWeightsAndPurity §2.2 owns the symplectic case and states no
orthogonal case. No new target was added. Ownership against open pull requests whose files the brief
does not give was not checked.

## For the maintainer

- No Lean name changed; no name that other roadmaps cite changed.
- The supplier set grew by ReductiveGroupsPartII §RG2.0.2 (on main, earlier in the merge order) and
  by PadicHodgeTheory §7.3 (same supplier as before, one more section). The gap
  `relative-crystalline-comparison` is narrower: PadicHodgeTheory now owes only the Frobenius
  compatibility and the Faltings association, not the Gauss–Manin horizontality.
- The review's first sub-item of F01 (Definition 5.2 on p. 41) is answered with the page markers above.
