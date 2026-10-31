# PKG-ReductiveGroupsPartIII — package report

Deliverables: `packages/ReductiveGroupsPartIII/README.md`, `Suggested.lean`, `metadata.toml`
(`topic = "math.NT"`), `sources.toml`, and the `gaps` list of `design/plan.json` (nothing else in
`plan.json` changed; checked by loading the old and new files and comparing every top-level key).

Pins used throughout: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti
`a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, read from `lake-manifest.json`. The design's baseline
(Mathlib `082e2d3…`, Tau Ceti `f790474…`) is older. Every library citation was re-checked at the new pins,
and the post-pin Tau Ceti import the design recorded (the Chevalley line stabilizer) is now at the pin.

## Headline theorems

| Headline theorem | README | Status |
|---|---|---|
| Steinberg classification of geometric semisimple classes by class functions, injectivity | §0.4 | stated: `isConj_iff_classFunctions` |
| Same, surjectivity onto the `Ω`-points of `Conj(G)` | §0.4 | stated: `exists_isSemisimplePoint_classFunctions` |
| Characters separate semisimple classes | §0.5 | stated: `isConj_iff_trace_eq` |
| Harder's approximation of local maximal tori by a global one (KMPS22 Lemma 1.2.2) | §2.2 | stated: `exists_isMaximalTorus_conjugate` |
| Group Chevalley restriction `C(G)≅O(T)^W` | §0.3 | not statable: Tau Ceti has the normalizer's finite action on the character group of a diagonalizable subgroup, but no Weyl-group action on the coordinate ring of a maximal torus of a reductive group |
| Global torus class with prescribed real component; global cocharacter twist (KMPS22 Lemma 1.2.1, Prop. 1.2.5) | §§2.1, 2.5 | not statable: the discrete Galois modules of points of tori/reductive groups over `ℚ̄` and local closures, with local/global Galois cohomology and localization maps (Mathlib has continuous cohomology of topological representations, not these modules); the Hodge cocharacter of a Deligne-torus map |
| Serre-unit criterion; density of neat Weil points (KMPS22 Lemmas 2.2.4, 2.2.10) | §§3.6–3.7 | not statable: the topology on points of an affine group over a local field (prime-units are relative compactness of a cyclic subgroup); Tau Ceti has only the toric chart topology |
| Conjugacy of common-source realizations (KMPS22 Prop. 2.2.13) | §4.1 | not statable: `Conj′`, `Aut′` |
| Rational torus embeddings, local-to-global transfer, rational tori for common realizations (Kottwitz82 Cor. 2.2, LR87 Lemma 5.6, KMPS22 Cor. 2.2.14) | §§4.3–4.5 | not statable: inner twists, quasi-split inner forms, Galois cohomology of reductive groups |
| Odd unitary similitude Hasse principle (KMPS22 Remark 2.3.16(1)) | §4.6 | not statable: nonabelian Galois cohomology `ker¹(ℚ,G)` |
| Common rational Frobenius class, real elliptic and rational representatives (KZ25 Thm 6.2.7, Lemma 6.3.3, Cor. 6.3.4) | §§5.5, 5.7, 5.9 | not statable: `ℓ`-adic Galois representations on `H¹` of an abelian variety over a number field, Betti `H¹` with Hodge structure and Mumford–Tate group, good reduction and geometric Frobenius (Tau Ceti has `AbelianVariety K` but none of these) |

Not counted as headlines (README targets only): Jordan's lemma and the number-field descent (§§1.1–1.2,
statements about arbitrary finite groups and number fields), rigidity under finite automorphism groups
(§3.8, about arbitrary schemes), finiteness of the faithful-representation quotient map (§0.6, an
auxiliary finiteness lemma). The only definition in `Suggested.lean` is `classFunctions`, needed to state
§0.4. It has a real body: `AlgHom.equalizer` of `TauCeti.HopfAlgebra.conjugationAlgHom` and
`Algebra.TensorProduct.includeRight`.

## Corrections to the design

1. **Supply-direction cycle broken (RG3.5).** The design made the final abelian-variety theorems consume
   a geometric continuation (Kisin–Zhou Theorem 5.1.4; KMPS realization theorem) that does not exist and
   that would itself consume Layers 0–1. Such a roadmap would have to be later in the order, so the
   dependency would be upward, and both directions together form a cycle. Now §5.5 states the
   reductive-group reduction with the geometric input as an explicit group-theoretic hypothesis: a closed
   embedding `j:G→H₁`, injective on `Conj(ℚ̄)`, and a rational `δ∈Conj(H₁)(ℚ)` realizing the `ℓ`-adic
   Frobenius classes. §§5.7 and 5.9 take the resulting `γ_v` as given. §4.5 was already conditional on
   realization hypotheses; it is stated with hypotheses (a)–(d). The unconditional KZ Thm 6.2.7 and KMPS
   Cor. 2.2.14 are assigned to a Shimura-variety consumer (Scope; Downstream consumers).
2. **Generality of Layer 0.** Steinberg §6 has no characteristic assumption (Steinberg65 lines 585–642),
   and the representation-ring input (SchemeKTheoryOperations §6.3.1) holds over any field. So restriction
   (§0.3), classification (§0.4), character separation (§0.5) and finiteness (§0.6) are stated over
   arbitrary fields, algebraically closed for §§0.4–0.5. The design had characteristic zero. `Conj′` and
   Layers 1–5 stay in characteristic zero; §3.8 holds over any field.
3. **§0.2(iv) restricted to reductive groups.** "`χ_G(x)=χ_G(x_s)`" is false for `G_a` (the coordinate
   separates a unipotent point from `0`). It is now stated for connected reductive `G`, with that Check
   added.
4. **§2.5.** "Transports `μ` to `μ_{h′}` up to `T`-conjugacy" was replaced by exact transport
   `Int(g_p)μ=μ_{h′}` (with `g_p=gt_p⁻¹` and `t_p` centralizing `T`), checked by recomputing
   `c(u)=u` for `u=gt⁻¹n⁻¹`.
5. **§2.4 Check.** The design's "split torus" Check did not show that the hypothesis is needed (on a
   split real torus `c` also commutes with `W`). It was replaced by the maximal torus of `GL₃(ℝ)` of type
   `ℂ^×·ℝ^×`, where `w=(1 3)` gives `c(n)` with Weyl image `(2 3)`.
6. **§3.2.** KMPS22 §2.2.3 (lines 1126–1128) says "every place `v∤l`". With archimedean places `l` would
   not be an `l`-unit of `G_m`, contradicting Lemma 2.2.4. The definition is stated with finite places,
   and the README says so.
7. **§3.8** is stated without "finite type" (unused); reduced and separated are kept (KMPS Lemma 2.2.11
   repair, E4 of the design).
8. **§4.6 route.** PELModuli §M3.2 (earlier in the order) already gives `ker¹(ℚ,Z)≅ker¹(ℚ,G)` for odd
   hermitian dimension. It is now the supplier, and the target is the vanishing of `ker¹(ℚ,Z)` with
   `Z≅T₁` for odd `[F⁺:ℚ]`.
9. **Checks of §§5.7, 5.9 and Examples.** "`a²<4q`" and "the companion matrix" fail for supersingular
   reduction with `Fr_v=±√q` (`a²=4q`). There Frobenius is central, and the companion matrix of `(X∓√q)²`
   is not semisimple. Both cases are now stated.
10. **§0.7 Check.** `diag(a,a⁻¹,1,…,1)` in `SO(8)` has the same `Conj` image as its improper conjugate,
    because its `O(8)`-centralizer contains improper elements. It was replaced by an element with eight
    distinct eigenvalues.
11. **Upward dependency removed.** The design cited BunGAndNewtonStrata §BG1 (line 241 of the order; this
    roadmap's last supplier is earlier) for a "basic Newton application" in RG3.2/elliptic-maximal-torus.
    That application belongs to BunGAndNewtonStrata as a consumer. The target §2.3 keeps the statement
    without it, and the ET.0 "Steinberg `H¹(ℚ̆_p,H)=1`" request, which served only that application, is
    dropped.
12. **ET labels.** The design's `ET.0/*` labels no longer exist. They map to
    EndoscopicTransferAndUnitaryTraceComparison §§1.1 (H¹), 1.2 (Tate–Nakayama), 1.3 (centralizers), 1.5
    (abelianization), 1.6 (inner twists), 1.9 (Kneser/Hasse), 1.11 (Kottwitz duality), 1.14–1.15
    (rational classes, global obstruction). ShimuraData `D1/*` maps to ShimuraData §§1.2–1.4, 4.2–4.3.
    MotivesAndAlgebraicCycles `MC.6` maps to §6.8. AdelicAlgebraicGroups `AA.3/AA.4` maps to §§3.4, 4.1,
    4.3.
13. **Source verification.** The design's six source issues E1–E6 were re-checked in the fetched texts:
    E1 (KZ25 lines 2447–2448), E2/E3 (KZ25 lines 2683–2693), E4 (KMPS22 lines 1323–1331), E5 (KMPS22
    lines 1345–1347), E6 (KZ25 lines 2603–2609). They are corrected in §§5.1, 5.6, 3.8, 4.1 and 1.5.

## Duplication removals (by object)

| Design object | Now cited as | Why |
|---|---|---|
| RG3.0/class-functions (the definition) | IntegralHeckeAndGaloisDeterminants §0.7 (invariant coordinate algebras `O[Hⁿ]^H`, arity one) | same scheme-invariant algebra. §0.1 keeps only the equalizer presentation, which `Suggested.lean` needs to state §0.4 |
| RG3.0/highest-weight-character-basis | ReductiveGroups Layer 10B (classification of rational simples by `X⁺`, any field) and SchemeKTheoryOperations §6.3.1 (`R(G)≅ℤ[X]^W` with highest-weight triangularity) | the whole target is in those two; deleted |
| RG3.3/weil-number weight theory | DeligneWeightsAndPurity §§0.1–0.2 (Weil `q`-numbers, unique weight, products, inverses) | §3.3 keeps only the `l`-unit refinement |
| AutomorphicBundles `B1/absolute-hodge-propagation` | ShimuraVarieties §7.0i (`TauCeti.Shimura.abelian_absolute_hodge`) | AutomorphicBundles §B1.2 itself consumes §7.0i; cited at the owner |
| AbelianSchemesAndArithmeticModuliPartII `F0/frobenius-polynomial` | AbelianSchemesAndArithmeticModuli §§A6.11, A6.21 | `ℓ`-independent integral characteristic polynomial and `π^†π=q` are in the parent |
| ClassicalGroups Layer 3 | — | its only consumer (the highest-weight target) is deleted |
| Chebotarev line stabilizer (design: post-pin import) | `TauCeti.HopfIdeal.exists_finite_subcomodule_exteriorPower_line_stabilizer` at the pin | used only by ReductiveGroups 10B; not restated |
| Chebotarev Layer 10 and GlobalNumberFields Layer 1 | implemented at the Tau Ceti pin: `NumberField.Chebotarev.hasDirichletDensity_frobeniusPrimeSet`, `…infinite_frobeniusPrimeSet`; `TauCeti.GlobalNumberFields.weakApproximation_denseRange` | cited by declaration |
| Lie-algebra Chevalley quotient | ReductiveGroups Layer 11C; EndoscopicTransferAndUnitaryTraceComparison §3.3 | different object; scope note only |
| Steinberg map `G→T/W` | GroupSchemesOverABase §GS8.2 (split, `G_der` simply connected, over `ℤ`) | kept variant: §0.3 covers every connected reductive group over a field with a possibly non-split torus; one clause in Scope |
| `ker¹(ℚ,Z)≅ker¹(ℚ,G)` for odd unitary groups | PELModuli §M3.2 | supplier of the reduction step of §4.6 |

Ownership kept here, after searching main, the board packages and all open roadmap PRs (via
`roadmaps grep` on the objects): the conjugacy quotient as an arithmetic object, group Chevalley
restriction for arbitrary connected reductive groups, `Out′/Conj′/Aut′`, Jordan's lemma (used inline in
InverseGaloisAndArithmeticFundamentalGroups's proof sketch, not a target there), rational descent,
inner-form identification of `Conj`, the quotient injections, Harder's approximation (AdelicAlgebraicGroups
§4.1 uses it inline in a proof route; ShimuraVarieties §P.5 has the real local part only), the Serre
condition, prime-units, Weil points, finite-orbit rigidity, common-source conjugacy, local-to-global
transfer from quasi-split to inner forms (EndoscopicTransferAndUnitaryTraceComparison §1.6 owns the
opposite direction), the odd-degree vanishing of `ker¹`, and Layer 5. No open PR or board package states
any of them. Ownership against open PRs was checked through the `roadmaps` index of 367 PRs and the
sibling checkouts listed in the brief.

## Supplier gaps (`design/plan.json` `gaps`)

The design's seven old-format gaps are resolved and replaced by four supplier gaps:

- `quasi-split-torus-embedding-class` — EndoscopicTransferAndUnitaryTraceComparison §1.6: Kottwitz82
  Cor. 2.2 (a Galois-stable class of maximal-torus embeddings into a quasi-split group contains a rational
  one). Used by §4.3.
- `relative-global-obstruction` — EndoscopicTransferAndUnitaryTraceComparison §1.15: Kottwitz86 Thm 6.6
  for an adelic tuple in an inner form with base point in `G*`, and the change of the obstruction at one
  place. Used by §5.8. (§1.15 states only `G₀=G`.)
- `torus-localization-sequence` — EndoscopicTransferAndUnitaryTraceComparison §1.2: middle exactness of
  `H¹(F,T)→⊕_v H¹(F_v,T)→(X_*(T)_Γ)_tors` with the sum of local Tate–Nakayama maps (Kottwitz86 Prop.
  2.6). Used by §2.1. (§1.2(b) identifies the global-mod-local group but not its compatibility with the
  sum of local maps.)
- `regular-centralizer-openness` — ReductiveGroupsPartII §RG2.0.2: openness of the regular semisimple
  elements of `Lie(G)(F)` with centralizer of a given `G(F)`-conjugacy type. Used by §2.2.

Old design gaps and their resolution: the geometric Frobenius and auxiliary integral-model supplier, and
the isogeny-group realization / Noot input, became explicit hypotheses of §§5.5 and 4.5 (correction 1).
The original torus-embedding obstruction (Langlands Lemma 7.15) is cited through LR87 Lemma 5.6 (read,
LR87 lines 2907–2923); the description of the obstruction is part of target §4.4's route. The original
quasi-split embedding theorem (Kottwitz82) and the orthogonal outer action (Noot09 §1.5) are waived in
the manifest and cited by locator. The maximal-torus approximation (Harder) is cited through KMPS22
Lemma 1.2.2 and Borovoi98 Lemma 5.6.3 (both read), with the openness input as gap
`regular-centralizer-openness`. The general-CM odd unitary Hasse case is target §4.6, with PELModuli
§M3.2 as supplier.

## What the README could not support

- KZ25 Theorem 5.1.4 and KMPS22 Proposition 2.2.2 (geometric theorems about integral models of Shimura
  varieties) are hypotheses, not targets. No roadmap on main, on the board or in an open PR states them
  (searched for Kisin–Zhou, strongly acceptable data, Hodge-type integral models).
- Kottwitz82 and Noot09 are waived and cited by locator only. Langlands' Lemma 7.15 (Débuts) was not read;
  the obstruction description in §4.4 rests on LR87 Lemma 5.6, which cites it.
- §4.6 for CM fields without an imaginary quadratic subfield is asserted by KMPS22 Remark 2.3.16(1)
  (lines 1647–1651) "by the proof of" Shin's Lemma 3.1.1, whose setting is `F=F⁺E`. The README states the
  general case as a target with the duality route. I verified the degenerate case `F⁺=ℚ` and the `F=F⁺E`
  case (Shin11 lines 696–727). I did not complete the general calculation; in the case `F=F⁺E` the
  product formula shows where odd `[F⁺:ℚ]` enters.

## Notions moved down from later roadmaps

None. One upward citation was removed instead (correction 11).

## Elaboration

Command: `lake env lean <abs path>/packages/ReductiveGroupsPartIII/Suggested.lean`, run from the content
checkout. The Tau Ceti object files missing at first were built with targeted
`lake build TauCeti.Algebra.AlgebraicGroup.Torus.Conjugation TauCeti.Algebra.AlgebraicGroup.HopfIdeal.BaseChange`
(and, for the scratch name check, `…Torus.Existence`,
`…Representation.ExteriorStabilizer.Character`, `TauCeti.NumberTheory.NumberField.Global.Approximation.Weak`).

Outcome: no errors, exactly **4** warnings, all `declaration uses 'sorry'`, at lines 79, 93, 106 and 125 (the four theorems). No other messages.

`#check` comparison: a scratch file with `#check @classFunctions` and `#check @…` for all four theorems,
plus `#print classFunctions`, was elaborated once. Each elaborated type matches its README statement. All
binders are in the declarations' own signatures (the file has no `variable` block), so nothing was
dropped and nothing needed changing. A second scratch file `#check`ed every Mathlib and Tau Ceti
declaration the README cites: all exist at the pins.

## Gate and dependency check

Dependency check (`gate --depcheck … --name ReductiveGroupsPartIII --order merge-order/ORDER.txt --movable`):

```
depcheck: 56 roadmaps, 649 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The full package gate, run on a scratch copy laid out as
`TauCetiRoadmap/ReductiveGroupsPartIII/`, reports 0 for every check (set_option, latex, sorry-data,
imports, readme-ids-missing, target-ids, layer-ids, depcheck, metadata, …) except `git=1`, which only
says the scratch copy is not a git repository.

`roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.

## Sources

Fetched through the sources service and recorded in `sources.toml`: KZ25 (arXiv v2), KMPS22 (author
PDF), Steinberg65 (Numdam), Kottwitz86 (GDZ scan, OCR), LR87 (IAS author-hosted), Borovoi98 (author
page), Shin11 (author page), Deligne82 (jmilne.org retypeset), Kottwitz90 (jmilne.org volume, see below).
Noot09 and Kottwitz82 are waived and cited by locator. MilneAG, cited by the design only for the deleted
highest-weight target, is no longer cited. No `needs-references.toml` was needed.

Kottwitz90 is an image-only scan of the 448-page volume. The first fetch was stopped at its 10-minute
limit during OCR; the second, with a longer limit, completed and recorded the entry. Its text confirms the
auxiliary-prime argument cited in §5.8 (Kottwitz90 lines 6779–6803, printed p.188): ellipticity at `∞`,
Chebotarev for a finite place with the same invariants, injectivity of the obstruction group into the
local one, and Kottwitz86 Theorem 6.6. Kottwitz86 is also an OCR'd scan (36 of 37 pages); its
Proposition 2.6 (line 491) and Theorem 6.6 (line 706) were checked there. `sources check` on the final
manifest reports 0 problems.

Locators were checked against the cached texts and are cited as `<key> line N` in the README.

No text read during the job contained instructions addressed to the worker; nothing suspicious to
report.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conv: conjugation orientation (first factor conjugates) | `GL₂`, `g`=swap, `x=diag(2,3)` | `gxg⁻¹=diag(3,2)`; `(gxg⁻¹)₁₁=3≠x₁₁=2` | consistent with `productMap_comp_conjugationAlgHom` (`g*x*g⁻¹`) | none |
| Conv: Hodge weight on `H¹`, `w_s`, `ν∘w_s` | elliptic curve, `g=1` | `h(z)` on `V^{1,0}`: `z⁻¹`, on `V^{0,1}`: `z̄⁻¹`; real `r`: `r⁻¹`; `w_s(r)=r`; `ψ(zx,zy)=z²ψ` so `ν(w_s(z))=z²` | holds | none |
| Conv: geometric Frobenius on `H¹` | elliptic curve over `𝔽_q` | char. poly `X²−aX+q`, roots `|·|=√q`; multiplier `χ_ℓ(Fr)⁻¹=q` | holds; arithmetic Frobenius would give `q⁻¹` | none |
| Conv: real cocycle `n⁻¹c(n)` | `SO(2)⊂SL₂(ℝ)`, `n=diag(i,−i)` | `c(n)=diag(−i,i)`, `n⁻¹c(n)=−1`; `ac(a)=1` | nontrivial class of `H¹(ℝ,U(1))=ℝ^×/ℝ_{>0}` | none |
| Conv: Tate–Nakayama `H¹(F,T)≅(X_*)_{Γ,tors}` | norm-one torus, `F=ℚ_p`, `E/F` quadratic | `X_*=ℤ`, `σ=−1`: coinvariants `ℤ/2`; `F^×/NE^×=ℤ/2` | agree | none |
| §0.1 `classFunctions` = equalizer = IHG §0.7 arity one | `G_m`; trivial `H=k`; `GL₂` entry; trace/det | `G_m`: cocommutative so `⊤=k[t,t⁻¹]`; `H=k`: both maps are `id`, equalizer `k`; entry: 3 vs 2; `tr` invariant | holds | none |
| §0.1 flat base change of `C(H)` | `k=ℚ→ℚ(i)`, `GL₂` | equalizer of `ℚ`-linear maps tensored with flat `ℚ(i)` | exact; ok | none |
| §0.2 universal property, base change | `G_m`, `GL₂`, `SL₂` | `Conj(GL₂)=Spec k[s,d,d⁻¹]`; `d=0` absent; `SL₂`: fibre `d=1` | holds | none |
| §0.2(iv) `χ(x)=χ(x_s)` | `G_a`, `x=1` (unipotent), `x_s=0` | class function `t`: `t(x)=1≠t(0)=0` | **false for non-reductive `G`** | restricted to connected reductive; Check added |
| §0.2 rational point ≠ rational class | `SL₂(ℚ)`, trace 0: `[[0,1],[−1,0]]`, `[[0,3],[−1/3,0]]` | `det=1` both; relating `GL₂(ℚ)` element `diag(3,1)` has det 3; `3∉N(ℚ(i)^×)` (3≡3 mod 4) | distinct `SL₂(ℚ)`-classes, same quotient point | Check |
| §0.2 rational point need not lift | `SL₁(D)`, `D` division quaternion | point `5/2`: reduced char. poly `(x−2)(x−1/2)` split; would give `ℚ×ℚ⊂D` | no lift | Check |
| §0.3 restriction `C(G)≅O(T)^W` | `G_m`; `GL_n`; `SL₂→PGL₂`; anisotropic `T` | `GL_n`: `k[e₁..e_n,e_n⁻¹]`; `SL₂`: `k[a+a⁻¹]`, `PGL₂`: `k[α+α⁻¹]`, `α+α⁻¹=s²−2`; `T` aniso: `W=1` | holds | none |
| §0.3 characteristic | `char p`: `k[X]^W` vs `k⊗ℤ[X]^W` | `W` permutes monomials, invariants = span of orbit sums over any ring | equal; characters (ℤ-basis, SKTO §6.3.1) span | generalized to all characteristics |
| §0.4 `isConj_iff_classFunctions` | `GL₂` `diag(1,2)`/`diag(2,1)`/`diag(1,3)`; `𝔽̄₂` `SL₂`; unipotent; trivial group | traces 3,3,4; `diag(a,a⁻¹)~diag(a⁻¹,a)` via Weyl; unipotent vs `1` agree on `C` (excluded by `hx`) | holds; semisimplicity hypotheses present in Lean | none |
| §0.4 `exists_isSemisimplePoint_classFunctions` | `G_m`, `φ(t)=a`; `GL₂`, `φ=(s,d)`; trivial group | `x:t↦a`; `x=diag(roots of X²−sX+d)` semisimple; trivial: `C=Ω`, one point | holds | none |
| §0.5 `isConj_iff_trace_eq` | `G_m` via `diag(t,t⁻¹)`; `M=0`; trivial comodule; unipotent | `2`, `1/2`: both char. poly `X²−(5/2)X+1`; character `t`: `2≠1/2`; `tr` on `0`: `0=0`; on trivial: `1=1` | all comodules needed; holds | none |
| §0.6 finiteness | `G_m→GL₂`; `SL₂⊂GL₂`; `V=0` | fibre over `(5/2,1)`: `{2,1/2}`, degree 2; `s↦(s,1)`; `GL₀=1` | finite, not injective | none |
| §0.6 corollary `G→H` finite | `G=G_m`, `H=GL₂` | `Conj(G)→Conj(GL₂)` finite and `Conj(GL₂)` affine/separated | `X→Y→Z`, `X→Z` finite, `Y→Z` separated ⇒ `X→Y` finite | statement added (used by §5.5) |
| §0.7 `Out′` | `GL_n`; `SO(8)`; `Spin(8)`; `SO(6)` | `I_D=∅`; `|Out′|=2` vs triality 6; `I_D=∅`; `n=3<4` | definition discriminates | none |
| §0.7 Check: improper conjugate differs in `Conj` | `SO(8)`, `t=diag(a,a⁻¹,1,…,1)` vs 8 distinct eigenvalues | first: `O(8)`-centralizer ⊇ `O(6)` has improper elements ⇒ same `SO(8)`-class; second: centralizer = torus ⊂ `SO(8)` ⇒ different | old example wrong | example replaced |
| §1.1 Jordan | `S₃`, `Δ=⟨(12)⟩`; `Q₈`, `⟨i⟩`; cyclic; `GL₂(ℂ)⊃B` | `|∪conj|≤3·1+1=4<6`, misses 3-cycles; `⟨i⟩` normal misses `±j`; infinite case fails | holds for finite groups only | Check (finiteness) |
| §1.2 descent | `ℚ(∛2)` at `ℓ=5,7`; `ℚ(i)`; `(x²−2)(x²−3)(x²−6)` at `ℓ=5` | cubes mod 7 `={1,6}`, 2 not cube ⇒ no embedding at 7; `ℓ=5`: cube map bijective ⇒ embedding; `ℚ(i)` only `ℓ≡1(4)`; mod 5 squares `{1,4}`: `6≡1` square, `X(ℚ₅)≠∅`; point `√2` only for `ℓ≡±1(8)` | hypotheses discriminate | none |
| §1.3 algebraicity | `𝔸¹→Spec ℚ`; fibre `(3,1)` | transcendental `ℚ_ℓ` point; `s²−4=5`, points `(3±√5)/2` | finiteness needed; algebraic | none |
| §1.4 inner forms | `ψ=Int(g)`; `D^×` vs `GL₂`; `U(1)` vs `G_m` | identity; reduced trace/norm; `O(U(1))^×=ℚ^×` (no rational characters of aniso torus) vs `ℚ^×t^ℤ` | outer twist changes `Conj` | none |
| §1.5 diagonal injection | `F=ℚ`; `G_m`, `[F:ℚ]=2` | `(1,−1)∈G_m²(ℚ̄)` not conjugate to any `(a,a)` | injectivity only on diagonal classes | Check |
| §1.6 central product | `SL₂×G_m/μ₂≅GL₂`; `SL₂→PGL₂` | `(−I,−1)↦(−1)(−I)=I` (antidiagonal = kernel); `s↦(s,1)`; `±5/2↦17/4` | torus coordinate needed | none |
| §2.1 auxiliary class | `G_m`; imag. norm-one `T` | `H¹=0`; `H¹(ℝ,T)=ℤ/2`, `(X_*)_Γ=ℤ/2`; local invariants sum to 0 ⇒ needs `ℓ` inert | holds | none |
| §2.2 Harder (`exists_isMaximalTorus_conjugate`) | `S=S′=∅`; `GL₂`, `S={∞,p}`; `G=T`; complex places | existence of a maximal torus; `Res_{E/ℚ}G_m`, `p` split in `E`; unique torus; over `ℂ` all maximal tori conjugate | holds; data for `v∉S` unused | none |
| §2.3 elliptic torus | `G_m`; `Res_{ℚ(i)/ℚ}SL₂` | `T/Z_G=1` aniso ⇒ elliptic; `SL₂(ℂ)` as real group: no compact Cartan | hypothesis needed | Check |
| §2.4 real Weyl cocycle | `SO(2)`; split real torus; `GL₃(ℝ)` torus `ℂ^×·ℝ^×` | `−1`; split: `c` trivial on `X_*`, commutes with `W` (no discrimination); `GL₃`: `ι=(12)`, `w=(13)`, `ιwι=(23)≠w` | anisotropy needed (shown by `GL₃`) | Check replaced |
| §2.5 cocharacter twist | `w=1`; `GL₂`, `Res_{E/ℚ}G_m` | `g=1`; `c(u)=c(g)c(t)⁻¹c(n)⁻¹`, with `c(g)=gt⁻¹n⁻¹c(n)c(t)` ⇒ `c(u)=gt⁻¹n⁻¹=u`; `uTu⁻¹=gTg⁻¹` | exact transport, not "up to `T`" | statement sharpened |
| §3.1 Serre condition | split; imag. norm-one; `ℚ(√3)` norm-one; `Res_{F/ℚ}G_m` CM `d=3` | `c=−1`, fixed `0`; `c=+1`, fixed `0` ⇒ fails; dims `3` vs `1` ⇒ fails | definition discriminates | none |
| §3.2 prime-units | `G_m`; `qⁿ∈ℚ_q^×`; `a`; `ab` | `±lⁿ`; `q⁻ⁿ` unbounded; `|n/q|_q≤q`; `tr(ab)=2+1/q²`, `v_q=−2` | holds; archimedean places excluded | source wording clarified |
| §3.3 `l`-Weil numbers | `l`, `l⁻¹`; `(2+i)/(2−i)`; `q`; `2+√3` | weights `2,−2`; `|·|=1`, valuations `±1` at primes over 5 ⇒ 5-Weil weight 0, not integral; `q` not unit at `q`; `2±√3≈3.73,0.27` | definition discriminates (integrality not required) | Check added |
| §3.4 Weil points | `diag(l,1)`; unipotent; `1`; `q` | weights 2,0; weight 0 not semisimple; all `l`; not `l`-Weil | holds | none |
| §3.5 neat ↔ connected closure | `1`, `−1`; `diag(2,4)`; unipotent; `√2∈G_m(ℚ(√2))` | `μ₂`; characters trivial at `γ`: `2^i4^j=1⇔i+2j=0`, `X^*(S)≅ℤ` free ⇒ connected; `G_a`; `±√2` gives `−1` after restriction | semisimplicity needed | none |
| §3.6 Serre-unit criterion | `ℚ(√3)`: `2+√3`; `G_m`; `ℚ(i)`: `(3+4i)/5` | unequal real abs. values; `±lⁿ` weight `2n`; `N((3+4i)/5)=25/25=1`, 5-unit, `|·|=1` | Serre hypothesis needed; positivity `χχ̄(γ)=|χ(γ)|²>0` gives `+l^w` | none |
| §3.7 density | imag. norm-one, `l` inert; `ℚ(i)`, `l=5` | `v_𝔩(x)=v_𝔩(x̄)`, sum `0` ⇒ units ⇒ roots of unity: finite; `(3+4i)/5` not a root of unity ⇒ powers dense in 1-dim torus | splitting at `l` needed | Check added |
| §3.8 rigidity | `k[ε]/ε²`, `ε↦2ε`; doubled origin; `G_m^r`, `W={±1}` | inverse `ε↦ε/2` (char ≠ 2); swap fixes punctured line; | reduced & separated needed; finite type unused | finite type dropped |
| §4.1 common-source conjugacy | `GL_n`; `SO(8)` improper reflection; `Sp₄`, `diag(−1,1,−1,1)` | `Out′=1`; one sign change `∉W(D₄)` (even sign changes) ⇒ not inner; centralizer `SL₂×SL₂` semisimple rank 2 ≠ Levi derived group | `Aut′` sharp; Levi claim false, not used | none |
| §4.2 Galois descent | `Hom(ℚ(√2),ℚ̄)` | decomposition group at `ℓ` fixes a point iff `ℓ≡±1 mod 8`; density 1/2 | hypothesis fails as it should | none |
| §4.3 quasi-split embeddings | `GL₂⊃Res_{E/ℚ}G_m`; `D^×⊃G_m²`; `X²+1` point | regular representation; `ℚ×ℚ⊄D`; centralizer `Res_{ℚ(i)/ℚ}G_m` | quasi-split needed; point ≠ embedding | Check rewritten |
| §4.4 transfer | `D` ram. `{p,∞}`, `G_m²`; `Res_{E/ℚ}G_m`, `E` inert at `p` | split torus fails at `p,∞`; `E_p` field, `E_∞=ℂ` ⇒ local transfer, `T*_ad` aniso at `∞` ⇒ `E↪D` (Hasse) | holds | none |
| §4.5 common realization torus | `I=T`; `I_ℝ=SL₂(ℝ)` | (b) = inclusion of `Z_G(δ)°`; compact Cartan `SO(2)` but `SL₂(ℝ)` noncompact | compactness mod centre needed | none |
| §4.6 odd unitary Hasse | `F⁺=ℚ`; `F=F⁺E`, `d` even/odd; `H¹(ℚ,T₁)` exponent | `T₁=Res_{E/ℚ}G_m` (norm automatically rational), `ker¹=0`; Shin: `|H¹(E/ℚ,Z(Ĝ)^{Γ_E})|=2` if `d` even, 1 if `d,n` odd; `a²=N(a)` | holds where verified; general CM calculation not completed (source: KMPS Rem. 2.3.16(1)) | PELModuli §M3.2 supplier |
| §4.6 `G/G_der≅T₁` for odd `n` | `e=det(g)λ^{−(n−1)/2}` | `N(e)=λⁿλ^{−(n−1)}=λ`; `e=1⇒λ=1⇒det g=1` | kernel `=SU` | none |
| §5.1 conventions | CM / non-CM elliptic curve; `GL₂` tori | `Res_{K/ℚ}G_m`, `GL₂`; `ν(w_s(z))=z²`; `ℂ^×∋h(S)` elliptic, diagonal split mod `w_s` | holds; KZ homological types corrected | none |
| §5.2 torsor | `τ=τ′`; `p↦pg`; three embeddings | identity rational point; `Int(g)`, `Conj` unchanged; composite = direct | holds | none |
| §5.3 factorization | CM curve over `ℚ`; non-CM | complex conjugation normalizes, does not centralize `K` ⇒ needs `E′=K`; `E′=E` | holds | none |
| §5.4 auxiliary groups | residue field `𝔽_q` vs `𝔽_{q^m}`; `F=ℚ` | `Fr` vs `Fr^m`; `H=G`, `H₁=(G×T)/Z_G` | residue field must be kept | none |
| §5.5 common class (conditional) | `G` torus, `j=id`; `G_m→GL₂` (non-injective) | hypothesis = conclusion; `2`,`1/2` over one `δ` | injectivity needed; fibre over `δ` is finite with one geometric point ⇒ `Spec ℚ` | reformulated (correction 1) |
| §5.6 real representative | `G_m`, `ν=t²`; `GL₂`, `diag(e^{iθ},e^{−iθ})`; unipotent | `x²=r²`, `|x|=r` ⇒ `±r`; aniso torus `ℂ^×`: `χ=z`, `m=1`, `χ+cχ=zz̄=det=ν` ✓; split torus has no rep for `θ∉πℤ` | holds with semisimple rep and exact `w_s(r)` | none |
| §5.7 real elliptic rep | non-CM, `a²<4q` and `a²=4q`; CM | complex eigenvalues; `Fr_v=±√q` central (in every torus); `π∈K^×⊂ℂ^×` | **Check wrong at `a²=4q`** | Check fixed |
| §5.8 one-prime patching | `GL_n`; `SL₂` elliptic | `𝔎=1`; invariants in `ℤ/2`, sum must vanish | exceptional prime needed only when obstruction ≠ 0 | none |
| §5.9 rational representative | non-CM curve `a²≠4q`, `a²=4q` | companion matrix; `(X∓√q)²`: companion matrix not semisimple, scalar `±√q` is | **Check wrong at `a²=4q`** | Check fixed |
