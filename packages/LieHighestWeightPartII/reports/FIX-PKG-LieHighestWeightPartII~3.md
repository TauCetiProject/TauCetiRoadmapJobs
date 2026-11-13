# Repair of LieHighestWeightPartII (package, round 3)

Findings settled: the twelve findings R01–R12 of `reports/REV-PKG-LieHighestWeightPartII~2.md` (one review, so ids are unqualified). Each was checked against the pinned Mathlib and Tau Ceti (lake manifest: Tau Ceti `2fd255d9…`), the cached CH/DG/SOM/KIR texts and the cited roadmaps. All twelve are correct: eleven are applied as asked, and R02 is applied with the Tau Ceti instance convention instead of a `letI`, which the gate refuses. Files edited: `packages/LieHighestWeightPartII/README.md`, `Suggested.lean`, `sources.toml`. The plan's `gaps` list is unchanged (`[]`).

## R01 (P2) — applied

The two imports now carry `.Basic`: `…Representation.PointsAction.Basic` and `…Representation.SemisimplePoint.Basic`. The header is now plain `import Mathlib` plus the individual `import TauCeti.*` lines, with no `module`, `public import` or `@[expose] public section`. In the README the supplier paths now read `PointsAction/Basic.lean`, `SemisimplePoint/Basic.lean` and `Symplectic/Reductive/Basic.lean`. A script confirmed that every `TauCeti/…` and `Mathlib/…` path the README names exists at the pins.

## R02 (P2) — applied differently: native `TauCeti.intLieAlgebra`, with the `ℚ`-structure as an instance argument rather than a `letI`

`innerAutGroup` is deleted. The six conjugacy headlines now conclude `∃ φ ∈ TauCeti.intLieAlgebra K L, φ • h = h' ∧ …` and take `[LieAlgebra ℚ L]` as an instance argument. This is Tau Ceti's own convention (`CartanConjugacy.lean:50`), and `LieAlgebra ℚ L` is a subsingleton. Supplying `TauCeti.ratLieAlgebra` inside a signature would need `letI`, which the gate refuses. The README Scope, Conventions and supplier contracts now cite `TauCeti.intLieAlgebra` and `TauCeti.intLieAlgebraLieEquiv`.

## R03 (P2) — applied

These native results are now cited in Scope and in the Tau Ceti contract, and the duplicated proofs are removed:
- `IsSl2Triple.map_ad_e_eigenspace_zero`, `map_toEnd_e_eigenspace` and `disjoint_ker_toEnd_e_eigenspace`, used in §0.3 and §1.2;
- `IsSl2Triple.root_apply_eq_zero_or_eq_one_or_eq_two`, used in §3.1;
- `TauCeti.exists_isCartanSubalgebra_mem_of_isSemisimple_ad`, used in §3.1;
- `TauCeti.LieModule.exists_eq_smul_of_lieInvariant` together with `TauCeti.Sl2Std.isIrreducible`, used in §2.1.

Two things are kept: the zero-triple case is a direct case split, and the explicit form `β_n` with its parity stays as a target here. Pattern repair: §3.1's Cartan conjugacy now cites `LieSubalgebra.exists_map_intLieAlgebraLieEquiv_eq` instead of the plan in LieHighestWeight Layer 7.

## R04 (P1) — applied

§2.0 now gives separate rank ranges:
- `sl(r+1)`, `sp(2r)` and `so(2r+1)` for `r ≥ 1`;
- `so(2r)` is Killing for `r ≥ 2` and simple for `r ≥ 3`;
- `so(2)` is excluded as a nonzero abelian algebra.

KIR Theorem 6.33's condition `n > 2` is now quoted. A new negative-control Check: the Killing matrix of `so(2)` is `[0]`, of rank 0, and its only triple is the zero triple.

## R05 (P2) — applied

§2.2 now says a class splits exactly when `dim V > 0` and the partition is very even, and the index-two argument is stated only for positive dimension. New Check: for `V = 0` the empty partition is very even but forms one class, since `O(0) = SO(0) = 1`; `(2,2)` in dimension 4 gives two classes. Same pattern fixed in two more places: §2.4 ("very even with `dim V > 0`", and "`hker` fails for `n = 0`") and the docstring of `exists_innerAut_of_finrank_weightFiltration_so` ("fails for `n = 0`", "in positive dimension").

## R06 (P1) — applied

The §0.1 Check said "arbitrary `e, f`"; it now says the remaining relation requires `[e, f] = 0`. It uses `(0, E₁₂, 0)` in `sl(2, 𝔽₂)` as a solution and `(0, E₁₂, E₂₁)` as a negative control, since `[E₁₂, E₂₁] = diag(1,1) ≠ 0`.

## R07 (P1) — applied

The §5.5 Check now takes `s = s' = u = [[1,1],[0,1]]`, `r = u`, `r' = 1`. It records why the old pair fails: `weightPattern q u 0 = dim ker(u − 1) = 1`, but `weightPattern q 1 0 = 2`. The eigenspace definition and the semisimplicity hypotheses are unchanged.

## R08 (P2) — applied

In §3.2 the bound is now `B_T(a) = Σ|a_i|θ_i` for integer labels, with the reason (all coefficients of a root have one sign); the formula without absolute values is kept for nonnegative labels. "`H` is the zero-weight space" now reads "`H` lies in the zero-weight space and contributes `r` to it". New Checks: `G₂`, `a = (−1,0)` has profile `4,2,1,2` with radius 3 (the old bound was −3); at `a = 0` the zero-weight space has dimension 14, of which `H` contributes 2.

## R09 (P2) — applied

The positive-part headline now assumes `TauCeti.reductiveCommHopfAlgProperty ℂ H` and imports `…AlgebraicGroup.Reductive.Basic`. "Semisimple group" becomes "connected reductive group" in the Summary, Scope, Conventions, How to read the build, §§5.3–5.5 and the contracts. New `G_m` Check: `q = 4`, `s = 2i`, `s' = 2`.

Pattern repair:
- §5.2's group clause is widened to connected reductive groups, with a direct proof from ReductiveGroups Layer 10B and a `G_m` Check.
- §5.3's faithful-representation argument now holds for any affine group.

## R10 (P1) — applied

§0.3 now builds the split adjoint group of `L` in these steps:
1. A Cartan subalgebra from `LieAlgebra.exists_isCartanSubalgebra_engel`, and the root system from `LieAlgebra.IsKilling.rootSystem`.
2. The split group from ReductiveGroups §9B (construction and base change) and §9D (existence).
3. The Lie-algebra comparison from ReductiveGroups §9A.1.
4. The identification with `L` from the Serre presentation of LieHighestWeight Layer 7, assembled componentwise.

These inputs are added to the ReductiveGroups contract, to §0.3's Needs and to the Layer 0 Dependencies.

## R11 (P3) — applied

§2.1 now defines `β_n` explicitly: `β_n(w_j, w_(n−j)) = (−1)^j` with `w_j = f^j w_0`, which is `j!·v_j` in KIR's basis. It cites KIR Theorem 5.6, equation (5.4), p.61, KIR line 2369, and states the invariance and parity computations.

New Checks:
- `β_1 = [[0,1],[−1,0]]`;
- `β_2` has anti-diagonal `(1,−1,1)`, and the trace form equals `−2β_2`;
- the δ-form is not invariant.

The existing KIR entry in `sources.toml` now carries the locator "Theorem 5.6, equation (5.4), p.61" and `cited_for` 2.1; the References line is updated to match. No new key was added.

## R12 (P3) — applied

In the §1.3 Check, "the identity map intertwines" now reads "every linear isomorphism `M ≅ K^(dim M)` (e.g. a basis coordinate map) intertwines, all actions being zero". The witness is degree-≤1 polynomials with `a+bX ↦ (a,b)`; both filtrations jump by 2 at 0.

## Checks run

- **Elaboration**, `lake env lean` on `packages/LieHighestWeightPartII/Suggested.lean` from the content checkout: exit 0. There are exactly eight warnings, each `declaration uses sorry`, at lines 75, 92, 106, 123, 146, 173, 193 and 240; nothing else. The imported object files were already built, so no `lake build` was needed.
- **Signatures**: a scratch file with `#check @…` for all 13 declarations elaborated with exit 0, and each type was compared with its README statement. Every theorem carries its binders in its own signature, and no standing hypothesis was lost. The changes compared with the previous file are all intended:
  - the conjugacy group is now `TauCeti.intLieAlgebra K L`, with an added `[LieAlgebra ℚ _]` argument;
  - `exists_innerAut_of_finrank_weightFiltration_typeD` gained `[Invertible 2]`, and its `hspin` hypothesis is now `finrank (⨆ j ≤ i, (P.typeDSpinPlusLieRep b hline h).eigenspace j)`, equal on both sides;
  - `exists_conj_positiveRealPart_of_weightPattern_eq` now takes `TauCeti.reductiveCommHopfAlgProperty ℂ H`.
- **Dependency check** (verbatim): `depcheck: 236 roadmaps, 2139 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- **Citations**: `roadmaps resolve` reports no cross-roadmap citation and no Lean name found nowhere. A separate script confirmed that every backticked library name in the README is declared at the pins, and that all 13 Lean names of `Suggested.lean` occur in the README; `innerAutGroup` no longer occurs anywhere.
- **Gate preview**: I ran the package gate on a scratch copy laid out as `TauCetiRoadmap/LieHighestWeightPartII/`. It reported `imports=0`, `statement-hygiene=0`, `set_option=0`, `sorry-data=0`, `readme-ids-missing=0` and `depcheck=0`. The only failures were artifacts of that layout: no git repository, and `sources.toml` present in the folder.

## Gate failures

- **imports=2**: fixed as in R01. The two imports now name `…PointsAction.Basic` and `…SemisimplePoint.Basic`, both existing modules at the pin. The `…Semisimple.Basic` import is replaced by `…Reductive.Basic` (R09), and `…InnerAutomorphism` by `…AdjointAction.InnerAutomorphismGroup` (R02), which re-exports it.
- **statement-hygiene=4** (the `letI` lines 165–169 of the typeD theorem): all four `letI` are removed.
  - `2` invertible is now the instance argument `[Invertible (2 : K)]`, which is a subsingleton and carried by every field of characteristic zero.
  - The Lie-module structure on `S⁺` is no longer needed. The hypothesis is stated as the sum of the integer eigenspaces of the endomorphism `ρ(h)`, which is `weightFiltration` for that action; README §2.4 says so.
  - `Module.End` has no global `LieRing` instance at this Mathlib pin, so `weightFiltration` cannot be applied to `End K S⁺` without a local instance. That is why the hypothesis is written as an eigenspace sum.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| `TauCeti.intLieAlgebra` replaces `innerAutGroup` | `sl₂`; abelian `L`; `L = 0` | `exp(ad E)H = H − 2E` (`(ad E)H = −2E`, `(ad E)²H = 0`); abelian: `ad x = 0`, group `{1}`; `L = 0`: trivial | Same generators, so the same subgroup up to `GL ≅ Aut_K`; `LieAlgebra ℚ L` is a subsingleton, so the instance argument is harmless |
| typeD headline without `letI` | `ι = ∅`; `Fin 1`; `Fin 2`; `Fin 4` with `(4,4)` | `ι = ∅`: `S⁺ = K`, both sides 0 for `i < 0` and 1 for `i ≥ 0`, `φ = 1`. `Fin 1`: `so(2)`, only triple 0. `Fin 2`: standard `2V(1)` for both `(t,0)` and `(0,t)`; `S⁺` gives `1@±1` vs `2@0`, so the hypothesis separates them. `(4,4)`: `S⁺` top indices 4 vs 3 | Holds; the eigenspace sum equals `weightFiltration` (`toEnd` of `End` is the identity) |
| `so` docstring proviso | `n = 0, 3, 4` | `n = 0`: `K⁰ = 0`, kernel `⊥`, `hker` false; `n = 3`: odd part forces kernel ≥ 1; `n = 4`, `(2,2)`: kernel 0 | "fails for `n = 0`" added |
| §0.1 char-2 Check | `sl₂(𝔽₂)` | `(0,E,0)`: `[0,E] = 0 = 2E`, `[E,0] = 0 = h`; `(0,E,F)`: `[E,F] = diag(1,1)`, trace 0 (in `sl₂(𝔽₂)`) but `≠ 0` | R06 |
| §0.3 surjectivity/injectivity | zero triple; standard `sl₂` | zero: `L_0 = L`, `L_2 = 0`, image 0; `M_(j+2) = 0` for `j ≥ −1`. Standard: `ad E(H) = −2E`, image dimension 1 = `dim L_2` | Natives cover `h ≠ 0`; zero case direct |
| §0.3 adjoint group | `sl₂` | adjoint datum `X = ℤα` gives `PGL₂`; Lie algebra 3-dimensional with `[H,E] = 2E`, `[H,F] = −2F`, `[E,F] = H`; `Ad(PGL₂(K)) = Int(sl₂)` as in the §0.2 Check | R10 |
| §1.3 basis-isomorphism Check | degree-≤1 polynomials | both filtrations `0` for `i<0`, `2` for `i≥0`; coefficient map sends `0 ↦ 0` | R12 |
| §2.0 ranges | `so(2)`, `so(3)`, `so(4)`, `so(8)` | dimensions 1, 3, 6, 28; Killing ranks 0, 3, 6, 28; `so(4) = A₁×A₁` | R04 |
| §2.1 `β_n` | `n = 0, 1, 2, 3`; δ-form | `β_0 = (1)`; `β_1 = [[0,1],[−1,0]]`; `β_2` anti-diagonal `(1,−1,1)`, trace form `(−2,2,−2) = −2β_2`; `β_3` anti-diagonal `(1,−1,1,−1)`, transpose `−β_3`; `e`-check `j(n−j+1)((−1)^(j−1)+(−1)^j) = 0`; δ-form fails `h` at `(w_0,w_0)`: `1+1 ≠ 0` | R11 |
| §2.2 splitting | `V = 0`; `so(4)` `(2,2)`, `(3,1)` | 1 class; 2 classes; 1 class | R05 |
| §3.1 natives | zero; standard `sl₂`; `G₂ (2,0)` | labels 0; `α(H) = 2`; `(2,0)` fails `d₄ = 1 < d₆ = 2` | Unchanged values |
| §3.2 bound and zero space | `G₂` `(−1,0)`, `(1,0)`, `0`; `F₄` `(1,0,0,0)` | `D(−1,0) = D(1,0) = 4,2,1,2`, radius `3 = |−1|·3`; `D₀(0) = 14` vs `dim H = 2`; `F₄`: `θ₁ = 2`, top degree 2, row `22,14,1` | R08 |
| §5.2 widened | `G_m`; `PGL₂`; `sl₂`, `3ω` | `G_m`: weight `k`, both sides `ν(k) ∈ ½ℤ`; `PGL₂`: `ν(kα) = k/2`; `ν(3ω) = ¾` | Pattern of R09 |
| §5.3 faithful-rep API | `G_m`, `t ↦ t²` | eigenvalues of `s` on `V^⊗a ⊗ V^∨⊗b` are products of `s^(±2)`, abs in `q^(ℤ/2)` | Holds for any affine group |
| §5.5 reductive headline | `G_m` (`2i`/`2`; `2`/`½`); trivial group; unipotent | patterns `1@k` both, `r = 2 = r'`; `2` vs `½`: `1@k` vs `1@−k`, unequal; trivial: `g = 1`; `u`: `weightPattern q u 0 = 1` vs `weightPattern q 1 0 = 2`, so `s = s' = u` with `r = u`, `r' = 1` is the counterexample | R07, R09 |
| ReductiveGroupsPartIII citation | head of its open pull request | No "RG3.0" id at that head; character separation is §0.5 (connected reductive, algebraically closed field), Chevalley restriction §0.3 | Citation changed to §0.3/§0.5 |

## Ownership and overlaps

No new construction is introduced; the repairs consume native Tau Ceti declarations instead of owning them. ReductiveGroups §§9A.1, 9B and 9D and LieHighestWeight Layer 7 are on main.

The overlap report for this job lists no open pull request that changes this roadmap and no dropped id. It lists five closest roadmaps (#1797, #1207, #1220, #1332, #1192). Of these, the round-2 review read #1797 and #1220 (LieHighestWeight), #1207 (SpinRepresentations), #1332 (ReductiveGroups) and #1192 (ClassicalGroups). The only overlap is the general invariant-form sign theorem in the LieHighestWeight revision #1220; §2.1 here keeps only the explicit form `β_n` on `V(n)` and its parity, which the partition theory uses. That pull request is a revision, so it is never a dependency.

I did not re-read the remaining open pull requests object by object this round. The searches I ran this round (`roadmaps grep` for `innerAutGroup|LieHighestWeightPartII`) found no other owner of these objects.

## Notes for the maintainer

- **Removed Lean name**: `TauCetiRoadmap.LieHighestWeightPartII.innerAutGroup`. No roadmap on main, no open head and no board package cites it.
- **Changed signatures**: all six conjugacy headlines, `…_typeD`, and `exists_conj_positiveRealPart_of_weightPattern_eq` (now more general). Consumers cite this package only by its design labels (N0–N5) and gap slugs (TwistedAutomorphicDescents, SheafConvolutionOnAbelianVarieties, SmoothRepresentationsOfLocalGroupsPartII, GlobalShtukasAndFunctionFieldLanglandsPartII). The widening to reductive groups only enlarges what they get.
- **Citation now resolved at the head**: "ReductiveGroupsPartIII Layer RG3.0" is now "ReductiveGroupsPartIII §0.3/§0.5", the numbering at that open new-roadmap pull request's head. It was already a supplier earlier in the merge order, so the dependency itself is unchanged.
- **Sources**: no new source was needed and none was fetched; `needs-references.toml` was not written. No suspicious instructions were found in any text read.
