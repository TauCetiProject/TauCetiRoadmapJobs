# FIX-PKG-HodgeClassesForJacquetLanglands~3

Repair round for the review `REV-PKG-HodgeClassesForJacquetLanglands~2` (one P1, eight P2). I
checked every finding against the cached IP23 text (`IP23 line N` below), the supplier roadmaps at
their open heads (`roadmaps show`: MetaplecticAutomorphicForms at #1063, ShimuraData at #1038,
AdelicAlgebraicGroups at #792) and the pins. All nine findings are right about the defect they
name. Seven were applied as asked. R05 was applied in a slightly different form. R09 was applied
differently, because its suggested repair does not cover what the proof needs (evidence below).
Only `packages/HodgeClassesForJacquetLanglands/README.md` and the `gaps` list of `design/plan.json`
changed. `Suggested.lean`, `metadata.toml` and `sources.toml` are byte-identical.

## REV-PKG-HodgeClassesForJacquetLanglands~2/R01 (P2) — applied

Summary: "attached to one cuspidal representation of `GL₂(𝔸_F)`, following Ichino and Prasanna
(IP23). From a …" → "… of `GL₂(𝔸_F)`. From a …". The end theorems in the same paragraph already
cite IP23 Theorems 3.2, 12.4 and 1. No layer was reordered. A search for "follow" found only "Notes
on the source" (readings of the source, not a claim that the roadmap follows it) and ordinary prose.

## REV-PKG-HodgeClassesForJacquetLanglands~2/R02 (P2) — applied

**Verified.** IP23 line 681–686 states an `L`-Hodge structure for every `ρ` trivial on `Z_s`. For
`T = Res_{ℚ(i)/ℚ}𝔾_m`, `ρ = 1 ⊕ N`, `H⁰` has types `(0,0)` and `(−1,−1)`: two weights.

**Changed (§0.2).** "the pure `L`-Hodge structure on `H^i`" → `V = ⊕_w V_w` (weight cocharacter is
central), with each `𝕍_w` a variation of weight `w`, `H^i = ⊕_w H^i(𝕍_w)` and each summand pure of
weight `i + w`. The whole is pure exactly when the summands share one weight. I added the hypothesis
that the weight becomes rational on `G/Z_s` (SV4 of ShimuraData §4.3 for the quotient datum). Without
it `V_w` is not defined over `L`. For `Res_{F/ℚ}B^×` this holds: `Z_s = ker N_{F/ℚ}`. Definite-group
Check: now restricted to trivial coefficients and the trivial cocharacter. New Check: the CM-torus
witness. Pattern: §0.5 now notes that `τ_k^∨` has the single weight `0`. §8.8's coefficient
(`ν^{−ℓ/2}`-twisted, trivial centre) also has one weight, so it needs no change.

## REV-PKG-HodgeClassesForJacquetLanglands~2/R03 (P2) — applied

**Verified.** IP23 line 719 requires condition (i), "surjective with central kernel". Line 726 drops
only condition (ii).

**Changed (§0.3).** "If `G → H` has central kernel but is not surjective on adelic points" → "If
`G → H` is surjective as a morphism of algebraic groups with central kernel, whether or not
`G(𝔸) → H(𝔸)` is surjective". Added: for other morphisms only the pullback is constructed. New
Check: the diagonal of a compact Shimura curve into its square maps dimension 1 to dimension 2 and is
not étale onto components. Pattern: the traces used in §7.3 (`H̃_B → G`, kernel `E¹`) and §10.3 are
central quotients and satisfy (i).

## REV-PKG-HodgeClassesForJacquetLanglands~2/R04 (P2) — applied

**Verified.** Over `ℚ(i)` with `H = diag(i,1,1,1)` and `c = −1`, the volume is `i`, which is not
fixed by `σ`.

**Changed (§1.1).** "induces the Hermitian form" → "induces the sesquilinear form …, Hermitian when
`H` is". Diagonal and rescaling formulas: `N(·)` → `σ(·)·(·)`, valid for every sesquilinear `H`.
"Lies in `F`" and the discriminant class now hold only when `H` is Hermitian, with the reason. New
negative Check: `diag(i,1,1,1)`. §§1.3, 1.7 and their Lean signatures are unchanged.

**Pattern (§1.5).** Its identities use `L∘L = J` (needs Hermitian) and a trace-zero unit (needs `σ`
of order two). I added both hypotheses and a computed negative Check: for `diag(i,1,1,1)`,
`b(Le₁₂, e₃₄) = −1` but `b(Le₃₄, e₁₂) = 1`.

## REV-PKG-HodgeClassesForJacquetLanglands~2/R05 (P2) — applied differently

**Verified.** For `H = 0`: `J = 0`, `L = 0`, and right multiplication by `j` has rank `0`, against
`3` on `(E⊕Ej)³`.

**Changed (§1.6).** Now assumes `σ` of order two, fixed field `F` of characteristic zero, and `H`
nondegenerate Hermitian, and establishes `J ∈ F^×` (§1.1) before defining `B`. "Rank three" → "free
of rank three", via §1.4. New Checks: the zero form (negative); unit diagonal form (`J = 1`,
`B ≃ M₂(F)`). §1.6 *Needs* gains §1.1.

**Differently:** the review asked for a quadratic étale `E/F`. Layer 1's standing hypothesis (and
the Lean carriers) take `E` to be a field, so §1.6 states the field case. The split étale algebra
enters through the localizations of §3.1, which the text now says.

**Pattern:** the group statements of §§1.7–1.8 now say "under the hypotheses of §1.6". The
point-level identity `IsExteriorStar.map_similitude` remains stated for every sesquilinear `H`.

## REV-PKG-HodgeClassesForJacquetLanglands~2/R06 (P1) — applied

**Verified (computed).** IP23 lines 2164–2168 give `ι⁻¹(z_μ) = −4πi x_μ φ₀` for negative
coordinates. Lines 2203–2210 define `φ_ℓ = (4πi)^{−ℓ}Σ z_β⊗e_β`. Lines 2103–2108 define the pairing
from the original, negative-definite form. So `Σ_β z_β⟨e_β, v^ε⟩ = (−z₁ − εiz₂)^ℓ`, and §4.2 turns
`(4πi)^{−ℓ}(z₁+εiz₂)^ℓ` into `(−1)^ℓ(x₁+εix₂)^ℓφ₀`. The product is `+(x₁+εix₂)^ℓφ₀`, against the
printed `(−1)^ℓ` (IP23 line 2345).

**Changed (§4.6).** The formula is now `(x₁ + εix₂)^ℓ φ₀`, with a proof route showing the
cancellation. The sign Checks were replaced by: the value at `x = e₁` is `e^{−π}` for `ℓ = 0,1,2`;
and the explicit `ℓ = 1` cancellation. A "Notes on the source" entry records the misprint. §§7.5,
Layer 4 Examples and 10.9 use even `ℓ` and were already consistent. No restriction to even `ℓ` was
added.

## REV-PKG-HodgeClassesForJacquetLanglands~2/R07 (P2) — applied

**Verified.** IP23 line 3092 requires "nonzero vectors", with pure-tensor factors (lines 3072–3099).

**Changed.** §7.10 now requires, for each `ε`, nonzero pure tensors with nonzero local factors. It
fixes their weights `±ε_v k_v` / `±ε_v(k_v−2)` for the circle `E_v¹ ⊂ B_{i,v}^×`, finite factors
independent of `ε`, and `K_v`-fixedness, citing (10.2)–(10.3). New Check: one zero factor gives the
pairing `0`. §7.4 now refers to "the nonzero vectors `f^ε` of §7.10". §7.5 does the same and gains
the Check "`f^ε = 0` ⇒ lift `0`". §10.3 now says "chosen nonzero `L`-rational finite vectors" (IP23
line 4505).

## REV-PKG-HodgeClassesForJacquetLanglands~2/R08 (P2) — applied

**Verified.** IP23 lines 695–696 and 827 define the subscript as a multiplicity space. Lines
4494–4507 keep the finite factors separate. An Iwahori-fixed space has dimension 2 and a
maximal-compact-fixed space dimension 1.

**Changed (§10.9).** The class is now `ξ ∈ H^{2d}(X₁×X₂,ℚ)_{π₁⊠π₂} = H^d(X₁)_{π₁} ⊗ H^d(X₂)_{π₂}`;
every subscript is §0.2's multiplicity space, so the map is §0.7's operator on `V₁, V₂`. Finite-level
classes are obtained by evaluating at chosen nonzero rational vectors (§10.3), and no identification
of the two finite factors is asserted. "Suitable levels" and the "kept finite factors" sentence were
removed. The identity-tensor Check was replaced by the witness: full summands `4` and `2` against
multiplicity spaces `2` and `2`.

## REV-PKG-HodgeClassesForJacquetLanglands~2/R09 (P2) — applied differently

**Verified.** MetaplecticAutomorphicForms §3.32a at #1063 assumes a common split real place, as
IP23 Proposition A.14 does (IP23 lines 5081–5084). The conventions allow `Σ = ∅`.

**Why the suggested adapter fails.** IP23 lines 5093–5105 show the ratio `ζ` is trivial on
`ν̃⁻¹(N(𝔸_E^×))`, the elements with `Nrd(g₁)` a norm. With automorphy and Eichler's theorem this
gives triviality on `ν̃⁻¹(F^×N(𝔸_E^×))`, a subgroup of index two. So `ζ` is either `1` or
`ξ_E∘Nrd(g₁)`, and only (A.11), at a common split real place, decides which. The theta integral runs
over `U(V)°(𝔸)`, which contains elements on both sides. Example: at `3` with `F = ℚ`, `E = ℚ(i)`,
take `[x₁, x₂]` with `Nrd(x₁) = 3` and `Nrd(x₂) = 1/3`; then `ξ_{E,3}(3) = −1`. If `ζ = ξ_E∘Nrd(g₁)`,
the lift would be the Periods-I lift of `(σ₁⊗ξ_E)⊠σ₂`. By Lemma 9.2 that is zero unless
`π⊗ξ_E ≃ π`. A comparison on the norm subgroup therefore does not identify the two lifts. I also
tried a local-dichotomy plus weak-approximation argument; it fails because nothing forces `ζ_v = 1`
at almost all `v`. I declared no gap, because the statement for `Σ = ∅` is not established anywhere.

**Changed.**
- §6.2 is now stated for the Periods-I splitting of §3.32a, as IP23 Lemma 9.2 is (IP23 lines
  2446–2482). That lemma holds for every `Σ` with no comparison, and the restatement includes the
  positivity domain and its extension. New Check: the review's `Σ = ∅` witness.
- gap:quaternionic-shimizu-lift is refined to that splitting, in the README and in `plan.json`
  (section §§3.32a, 5.6, 6.15).
- The comparison is used only in §7.4, now restricted to `d ≥ 1`, where §3.32a applies. §7.4 has a
  new Check: the `x₁, x₂` witness.
- §§7.10, 10.4 and 10.6 assume `d ≥ 1`. §§10.7–10.8 prove `d = 0` directly: rank one, type `(0,0)`,
  trivial Galois action on the constant models of §0.1.
- Also updated: the supplier contract, the Layer 6 standing paragraph, "How to read the build" and
  "Notes on the source".

**Disputed part.** The review said "do not impose `d > 0`". The restriction applies only to the
theta route, which the source supports only for `d ≥ 1`. The end theorems keep `d = 0`.

## Checks run

- `lake env lean packages/HodgeClassesForJacquetLanglands/Suggested.lean` (from the content
  checkout): exit 0, exactly three `declaration uses 'sorry'` warnings, at lines 70, 81 and 95. The
  file is unchanged and imports nothing from Tau Ceti.
- Scratch file with `#check @IsExteriorStar`, `@existsUnique_isExteriorStar`,
  `@IsExteriorStar.comp_self` and `@IsExteriorStar.map_similitude`: elaborates (exit 0). Every binder
  is present: `Field E`, `FiniteDimensional E U` on the theorems, `σ`, `H`, `vol`, `hkl`, the
  Hermitian `hH` in `comp_self`, and the similitude `hg` in `map_similitude`. The types match README
  §§1.3, 1.4 and 1.7, whose generality did not change. No change was needed.
- Depcheck (`gate --depcheck … --movable`):

      depcheck: 236 roadmaps, 2155 edges, 0 problem(s)

  There is no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: cross-roadmap citations found nowhere: none; Lean names found
  nowhere: none. MetaplecticAutomorphicForms §§3.24, 3.28, 3.30–3.32a and 6.15, and ShimuraData §4.3
  (SV4, `sv4_rationalHodge`), were read at their heads.
- `design/plan.json` parses as JSON. Only the `gaps` entry `quaternionic-shimizu-lift` changed, and
  its slug still matches the README.
- No gate failures were listed in the brief. No new source is cited, and `needs-references.toml` was
  not written.

## Adversarial pass on changed statements

| Statement | Instances | Computed values | Result / change |
| --- | --- | --- | --- |
| §0.2 weight decomposition | CM torus `1⊕N`; `Res_{F/ℚ}B^×`, `F` real quadratic, `d=1`; zero representation | types `(0,0)`,`(−1,−1)`; weight `(r⁻¹,1)` not rational on `G`, `N∘w = r⁻¹` rational on `G/Z_s`; `H^i=0` | per-weight purity holds; SV4-on-quotient hypothesis added |
| §0.2 definite Check | `B` definite, trivial `h`, `ρ = Nrd^a` | `ρ∘h = 1`: type `(0,0)` for every `ρ`; trivial coefficients give functions | Check scoped to trivial coefficients |
| §0.3 trace | level change index `m=3`; identity map; diagonal curve | `3·(1/3)=1`; `f_*f^*=1`; dims `1→2` | branch needs condition (i); Check added |
| §1.1 volume | `diag(i,1,1,1)`, `c=−1`; `diag(1,2,1,−5)`; scale `α=2` | `i` (σ-image `−i`); `−10∈ℚ`; `−10/4=−5/2`, and `i/4` for the non-Hermitian form | fixed-field claim needs Hermitian |
| §1.5 skew identity | `diag(i,1,1,1)`; Hermitian `diag(a)`; `σ=id` | `−1` vs `1`; both `−τa₁a₂a₃a₄`; no trace-zero unit (`2i=0`) | Hermitian, `σ` of order two added |
| §1.6 module | `H=0`; unit form; `J₁=−2,J₂=5` | `j`-rank `0` vs `3`; `J=1`, `B≃M₂(ℚ)`; `J=−10`, `dim_ℚ 12 = 3·4` | hypotheses added; free of rank 3 |
| §§1.7–1.8 | scalar `t`; `H=0` | `ν=t²`, `det=t⁴=ν²`; point identity `0=0`, group undefined | group statements under §1.6 |
| §4.6 contraction | `ℓ=0,1,2` at `x=e₁`; `ℓ=2` at `e₁+e₂` | `e^{−π}` ×3 (printed `−e^{−π}` at `ℓ=1`); `(1+i)²e^{−2π}=2ie^{−2π}` | sign removed |
| §7.10 nonvanishing | zero factor; `n=2,d=1`; `d=0` | pairing `0`; `2^n=4` signs; §3.32a inapplicable | nonzero pure tensors; `d≥1` |
| §6.2 lift domain | `ℚ`, `Ram={∞,2},{∞,3}` | `Ram(B)={2,3}`; `Nrd(B^×(ℚ))=ℚ^×∋−1` | extension reaches `B^×(𝔸)`; any `Σ` |
| §7.4 splittings | `[x₁,x₂]` at `3`; `F` real quadratic, `d=1` | `Nrd(x₁)Nrd(x₂)=1`, `ξ_{E,3}(3)=−1`; common split place `∞₁` | §3.32a applies only for `d≥1` |
| §10.6 descent | `d=1`, `diag(x₁c₁,x₂c₂)` | `det=x₁x₂c₁c₂`: `1` at `(1,1),(1,1)`; `0` for `x=(1,0)` | Check replaces the `d=0` one |
| §§10.7–10.8, `d=0` | rank-one `V_i`, constant model | any nonzero `ξ₀` is an iso of type `(0,0)`; Galois action trivial, so `HT=V₁⊗V₂` | direct proof |
| §10.9 finite factors | Iwahori vs maximal, `d=1` | `2·2=4` vs `1·2=2`; multiplicity `2=2` | multiplicity statement only |
| §10.3 vectors | `v₁=0` | `Res_c=0`, `det=0` | "nonzero" added |

## Ownership, overlaps, sources

- No new construction or target was added. The splitting comparison is owned by
  MetaplecticAutomorphicForms §3.32a, which this roadmap cites.
- The overlap report lists no conflicting pull request and no dropped id. Ownership of the objects
  touched was checked against the open heads the tools index.
- No passage in any fetched text asked for an action.

**Source issues:**
- IP23 Proposition 8.2, p. 55: extra `(−1)^ℓ`.
- IP23 §10.2, p. 66, uses the compatibility of Proposition A.14 for every `Σ`, but A.14 needs `Σ ≠ ∅`.
  This is a gap in the source's `d = 0` case.

## For the maintainer

- MetaplecticAutomorphicForms: gap:quaternionic-shimizu-lift is now explicitly for the Periods-I
  splitting (section §§3.32a, 5.6, 6.15). §6.2 no longer cites §§3.24 or 3.28.
- §§7.4, 7.10, 10.4 and 10.6 now assume `d ≥ 1`. No Lean name changed.
- `design/plan.json` outside `gaps` still carries stale `ref` fields, as noted in the previous round.
