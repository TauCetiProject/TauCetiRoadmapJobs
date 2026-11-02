# FIX-RT-ReductiveGroupsPartIII~1: repair report

Two red-team reviews were merged: pass a (findings F01 to F19, the first nineteen sections below) and
pass b (findings F01 to F05, the last five finding sections). In the text, `a-Fnn` and `b-Fnn` name a
finding together with its review.
b-F01 is the same defect as a-F02 and is settled once (both sections below say so).

## F01 (P1) — applied

§1.3: "`x` is the image of a `ℚ̄`-point under an embedding `ℚ̄→Ω`" → `x` factors through a closed point of
`X_y` with finite residue field `K` and a `ℚ`-embedding `K→Ω`; after passing to `Ω̄` it comes from a
`ℚ̄`-point; at most `dim_ℚ O(X_y)` such `x`. Added the Check `X=Y=Spec ℚ`, `Ω=ℚ` (no `ℚ̄→ℚ`). No other
"`ℚ̄→Ω`" occurrence in the roadmap.

## F02 (P3) — applied

Witness holds: in `ℚ₂`, `3≡3 mod 8` and `2`, `6` have odd valuation; in `ℚ₃`, `2` is a non-residue.
Applied in the form of b-F01's repair, which keeps "every `ℓ`": §1.2 Check now uses
`(x²−2)(x²−17)(x²−34)`, local points at `2` (`17≡1 mod 8`), at `17` (`6²≡2`), and at odd `ℓ∤34`
(Legendre symbols multiply to `1`). The old sextic is kept as the negative control at `2` and `3`.

## F03 (P1) — applied

§3.5: "`S` is diagonalizable" → "of multiplicative type over `F`, diagonalizable over `F̄`, not in
general over `F`"; connectedness is tested on the geometric character group `X^*(S_F̄)`. New Check:
`(3+4i)/5` in the norm-one torus of `ℚ(i)/ℚ` has closure the whole anisotropic torus.

## F04 (P3) — applied

§0.3 Check: `s↦s²−2` identifies `±s` only in characteristic `≠2`; in characteristic two it is
Frobenius, bijective on `Ω`-points, not an isomorphism. The Layer 1 occurrence (§1.6 Check) is in
characteristic zero and stays.

## F05 (P3) — applied

Layer 0 Examples: `Conj(GL_n)=𝔸^{n−1}×G_m` now for `n≥1`; `n=0` gives `Spec k`, characteristic
polynomial `1`. The other `GL_n` Checks (§0.3, §0.4) already give the right value at `n=0`.

## F06 (P2) — applied

§1.5: the fibre product is no longer called an instance outright; the statement applies to its
identity component (connected reductive, contains the diagonal), and to the whole fibre product
when `ker ν` is geometrically connected. Checks: `ν=id` gives the diagonal, an isomorphism; `ν=t²`
is disconnected; the failure of surjectivity is now `SL₂`, `ν=1`, traces `(0,1)`. §5.4 now proves `H`
is connected (`ker(ν|_MT)` is the Hodge group, which contains `−1`).

## F07 (P1) — applied

KZ25 lines 2570–2582 confirm that the product decomposition belongs to `H′=Res_{F/ℚ}G_F` and that the
parahoric of `H` has `ℤ_p`-points `H(ℚ_p)∩𝓗′(ℤ_p)`. §5.4 now constructs `H′`, `H`, `𝓗′` and `𝓗` in that
order. New Check: `GL₂`, quadratic `F`: dimensions 8 for `H′`, 7 for `H`, derived group 6.

## F08 (P3) — applied

§5.1 Check: `h(a+bi)=[[a,−b],[b,a]]` → `(a²+b²)⁻¹[[a,−b],[b,a]]` on `H¹`. Eigenvalues are `z⁻¹,z̄⁻¹`, so
at `z=2` it is `(1/2)·id` with multiplier `1/4`, as the Conventions require. The unscaled matrix is
named as the `H₁` action.

## F09 (P3) — applied

At the ReductiveGroupsPartII head, *compact-elements-in-hyperspecial-subgroups* is under §RG2.3.3
(RG2.3.3 starts at its line 4152, the target is at line 4478, and RG2.3.4 starts at line 4531). This
is fixed in the supplier contract, the §5.4 route and *Needs*, and the Layer 5 Dependencies.

## F10 (P1) — applied differently

The witness holds: §RG2.3.4 *associated-parahorics* covers only central surjections. The suggested
gap was narrowed to what is actually missing, a new
`gap:parahoric-intersection-same-derived` (ReductiveGroupsPartII §RG2.3.4). For a closed immersion
identifying derived groups, the fixer of `x` equals `H(K)∩` the fixer of `x′`, and very-specialness
agrees. Connectedness comes from the existing §RG2.3.3 *fixer-versus-parahoric* (5) for `H` and `H′`.
§5.4 checks that rule's hypotheses: the derived groups are products of Weil restrictions of split
groups, and `X_*(H_ab)_I` is torsion free because it splits as the `ν_*`-kernel plus an `I`-fixed
diagonal line. The gap is added to the plan's `gaps` and to the README supplier contracts.

## F11 (P2) — applied

Conventions and the Layer 5 introduction: abelian varieties have `g≥1`. The `g=0` case (trivial
realizations, `MT=1`, every class the identity, `1≠z²`) is a Conventions sentence and a §5.1 negative
Check. No final theorem loses content: for `g=0` all of them hold trivially.

## F12 (P3) — applied

§0.2 now gives the build order: (i)–(iii) from §0.1, then §0.3, then (iv)–(v). Its *Needs* says §0.3
is needed for (iv)–(v) only, and §0.3's *Needs* names §0.2(i)–(iii) only. The mathematics is
unchanged.

## F13 (P2) — applied

Added `finite_classFunctions_map` (§0.6) and `finrank_eq_one_of_embeddings_padic` (§1.2(a)) to
`Suggested.lean`, the module docstring and the README. Both are nontrivial (Steinberg restriction plus
integrality; Chebotarev plus Jordan) and are named results of the Summary. Unlike the reviewer's
form, §0.6 lets `H` be any affine group of finite type, since only `G` needs to be reductive. §0.6 is
restated with that proof. Pass b's view that these are not headlines was weighed: §1.2 is the
"rationality at almost every prime" headline of the Summary.

## F14 (P2) — applied

AbelianSchemesAndArithmeticModuli §A5.7 assumes `ℓ` prime to the polarization degree (its README,
§A5.7, first sentence). The supplier contract now cites §A5.7 only under that restriction. At every
`ℓ`, the multiplier `χ_ℓ⁻¹` comes from the polarized Weil pairing §A3.7, the rational inverse §A3.9 and
the dual pairing §A4.1 tensored with `ℚ_ℓ`. Updated: the Scope list, §5.1 route and *Needs*, §5.3,
§5.5 and §5.7 *Needs*, and the Layer 5 Dependencies. ShimuraVarieties §7.0i was not needed.

## F15 (P3) — applied

PELModuli §M3.2: the centre-to-group bijection is `hasseCases` (A); `unitaryCentre_sha_vanishing`
concerns the finite `Z₀` and is only an input of that proof. Fixed in the supplier contract, in the
§4.6 route and in the §4.6 *Needs*.

## F16 (P3) — applied

§4.5: "(b)–(d) are … Proposition 2.2.2" → (b) is KMPS22 Corollary 2.1.9 (lines 1095–1105), (c) is
Proposition 2.2.2 (lines 1122–1123), and (d) is the compactness modulo scalars of §2.1.3 (lines
974–981) through the real realization used in Corollary 2.2.14. The manifest locator now includes §2.1.3
and Corollary 2.1.9.

## F17 (P3) — applied

§4.2 Check "need not be `x` itself" replaced: the quantified hypothesis forces the orbit to be `{x}`.
At one place another point can be the fixed one: `X³−2≡(X−3)(X²+3X+4) mod 5`, whose quadratic factor
has discriminant `3`, a non-square. At `7`, `2` is not a cube, so the Frobenius is a 3-cycle with no
fixed point.

## F18 (P3) — applied

§4.6: "there written Lemma 3.1.1" → "author-version numbering, published as Lemma 3.1.1". The cited
text is Lemma 3.1 (Shin11 line 696), and the References entry already said so.

## F19 (P3) — applied

§3.1: dropped "not equality of ranks" and added that the condition is equivalent to
`rank_ℚ(T)=rank_ℝ(T_ℝ)`, because the `Γ_ℚ`-fixed subspace lies in the `c`-fixed one. The Check on the
norm-one torus of `ℚ(√3)` now says that the ranks (1 and 0) detect the failure.

## F01 (P3) — applied

The same defect as a-F02, settled there with this reviewer's `(2,17,34)` repair.

## F02 (P3) — applied

Kottwitz86 line 706 states Theorem 6.6 for `G_sc` without `E₈` factors. §5.8 now says that the
hypothesis enters only through the Hasse principle for `G_sc`, which holds in general
(EndoscopicTransferAndUnitaryTraceComparison §1.9(c), §1.15(b); the latter itself records this). The
`relative-global-obstruction` gap sentence is amended in the README and in `plan.json`.

## F03 (P3) — applied

The Scope bullet now also names LanglandsParameterStacks §LP3.25 (integral restriction for split
standard dual Levi groups over `ℤ`). Ownership of §0.3 stays here: neither LP3.25 nor GroupSchemesOverABase
§GS8.2 covers a non-split torus or an arbitrary field.

## F04 (P3) — applied

At the pin, `exists_isMaximalTorus` is in `Torus/Existence.lean:99` and `IsMaximalTorus.conjugate` is in
`Torus/Conjugation.lean:49`. The Tau Ceti contract now gives the three files separately. No imports
change.

## F05 (P3) — applied

Steinberg65 Theorem 6.11 is about a fibre (lines 663–675); (d) is the uniqueness of the semisimple
class in it. The docstring of `exists_isSemisimplePoint_classFunctions` and README §0.4 now cite
Corollary 6.4 (line 623) with lifting from `T/W` for surjectivity, and Theorem 6.11(d) for uniqueness.

## Checks run

- `lake env lean packages/ReductiveGroupsPartIII/Suggested.lean` (from the content checkout): exit 0.
  Output is six `declaration uses 'sorry'` warnings, at lines 82, 97, 110, 127, 144 and 157. No
  errors and no other warnings.
- `#check @name` on all seven declarations in one scratch file. The five existing types are
  unchanged (only one docstring was edited), and the two new types match the README:
  - `finite_classFunctions_map : ∀ {k} [Field k] (H G : FiniteTypeCommHopfAlgCat k),
    reductiveCommHopfAlgProperty k G → ∀ (f : H →ₐc[k] G), Surjective f → ∀ q,
    (classFunctions k G).val.comp q = (↑f).comp (classFunctions k H).val → q.Finite`
  - `finrank_eq_one_of_embeddings_padic : ∀ {K} [Field K] [NumberField K] (S : Finset ℕ),
    (∀ ℓ [Fact ℓ.Prime], ℓ ∉ S → Nonempty (K →+* ℚ_[ℓ])) → finrank ℚ K = 1`

  There is no `variable` block, so no binder can drop.
- Dependency check (`gate --depcheck … --movable`): `depcheck: 56 roadmaps, 652 edges, 0 problem(s)`.
  No UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: no cross-roadmap citations and no Lean names found nowhere.

## Adversarial pass on changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| `finite_classFunctions_map` | `G=H`, `f=id`; `G=1`; `G_m→GL₂`; `T⊂B` (Borel, `H` not reductive) | `q=id`; `C(G)=k`; `t` is a root of `X²−sX+1`; `C(B)=O(T)`, so `q` is an isomorphism | finite in every case; `hq` determines `q` because `val` is injective |
| `finrank_eq_one_of_embeddings_padic` | `K=ℚ`, `S=∅`; `ℚ(i)`; `ℚ(∛2)`; non-prime `ℓ` | `1=1`; no embedding at `ℓ≡3 mod 4`; none at `ℓ=7`; no `Fact` instance, so the clause is vacuous | hypothesis fails exactly for `K≠ℚ` |
| §1.3 repaired | `Ω=ℚ`, `f=id`; `G_m→GL₂`, `s=5/2` | 1 point with residue field `ℚ`; fibre `{2,1/2}`, `≤2=dim` | holds |
| §1.2 Check | `ℓ=2,3,5,7,17` | `2`:17 square; `3`:2 a non-residue, 17≡2, 34≡1 (square); `5`: 34≡4; `7`: 2≡9; `17`: 6²≡2 | a root at every `ℓ` |
| §3.5 repaired | `γ=(3+4i)/5`; `γ=−1`; `diag(2,4)` | `X^*(S_F̄)=ℤ` with `c=−1`; `ℤ/2`; `ℤ` | connected, but not split, in case 1 |
| §3.1 rank form | split rank `r`; norm-one `ℚ(i)`; norm-one `ℚ(√3)`; CM of degree `2d` | `r=r`; `0=0`; `1≠0`; `d≠1` for `d>1` | equivalence holds |
| §1.5 repaired | `ν=id`; `ν=t²`; `SL₂`, `ν=1` | diagonal `G_m`; `G_m×μ₂`; `(0,1)` not of the form `(s,s)` | holds |
| §5.4 `H` connected | MT of a non-CM elliptic curve | `ker ν=SL₂=Hdg`, `−1∈SL₂` | connected |
| §5.4 `X_*(H_ab)_I` | `G=GL₂`, `F_w/ℚ_p` ramified quadratic | `X_*(H_ab)={(a,b):a=b}≅ℤ` (`G_ab=G_m`, `ν=id`); coinvariants `ℤ` | torsion free |
| §5.1 Check | `z=2`, `z=i` | `(1/2)id`, multiplier `1/4`; `h(i)` has eigenvalues `−i,i` | matches `z^{-p}z̄^{-q}` |
| gap parahoric-intersection | `H=H′` | fixer equals fixer | trivially true |

## Ownership and sources

- The new gap is minimal. ReductiveGroupsPartII (RG2.2–RG2.3) has building functoriality only for
  central extensions and association only for central surjections. Its own scope note excludes
  arbitrary-adjoint association. ReductiveGroupsPartII is earlier in the merge order.
- I searched the open heads and main for the §1.2(a) number-field descent statement and found no
  other owner. The open pull requests named in the brief were checked through the index tool.
  Ownership against open pull requests not carried by the index was not checked.
- No new source was needed. Every locator added is in the cached KMPS22, KZ25, Steinberg65,
  Kottwitz86 and Shin11 texts. `needs-references.toml` was not written.

## For the maintainer

- There is a new supplier gap for **ReductiveGroupsPartII** §RG2.3.4:
  `gap:parahoric-intersection-same-derived`.
- The `relative-global-obstruction` gap sentence for EndoscopicTransferAndUnitaryTraceComparison §1.15
  now says that Kottwitz's no-`E₈` hypothesis is replaced by the full Hasse principle.
- There are two new Lean names, `finite_classFunctions_map` and `finrank_eq_one_of_embeddings_padic`.
  No existing name changed.
- Pass b explicitly judged §0.6 and §1.2(a) not to be headlines. They are added here because pass a
  asked for them and §1.2 is named in the Summary. If a later review disputes this, a human should
  decide.
