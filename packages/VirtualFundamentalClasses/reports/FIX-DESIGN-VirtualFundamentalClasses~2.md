# FIX-DESIGN-VirtualFundamentalClasses~2

Repair round on the review `REV-DESIGN-VirtualFundamentalClasses` of the design (six findings: one
P1, two P2, three P3). Files edited: `packages/VirtualFundamentalClasses/design/README.md`,
`packages/VirtualFundamentalClasses/design/plan.json`, `packages/VirtualFundamentalClasses/sources.toml`.
No `Suggested.lean` exists at the design stage, so there was nothing to elaborate.

## F01 (P1) — applied differently

Confirmed: for `Spec k → Spec k[ε]/(ε²)`, `I/I² ≅ k`, `Ω_{W/𝔐} = 0`, `τL = k[1]` perfect, `N = 𝔸¹`, but
`C = Spec k[t]/(t²)` and the map is not lci. Changes:

- 8.4: "vector bundle stack iff lci" → "vector bundle stack iff `τL` perfect [−1, 0]; hence when lci;
  not conversely". Negative-control Check added.
- 9.2: Check and plan `IsObstructionTheory.id`: "perfect iff lci" → "perfect iff `N` is a vector
  bundle stack, in particular if lci (BF line 1321)". Added the witness: `vd = −1 ≠ 0 = dim M`.

**Repairing the pattern.** 8.5 claimed "lci ⟺ `C` vector bundle stack ⟺ `C = N`". The last
equivalence is false even absolutely, and BF Prop 3.12 (line 1010) makes the same claim.
Counterexample: `M = Spec k[x,y]/(x², xy) ⊂ 𝔸²` with `I = x·(x,y)`. Multiplication by `x` gives
`I ≅ (x,y)` and `Iⁿ = xⁿ(x,y)ⁿ`. So `Sym(I) → ⊕Iⁿ` is `k[x,y,T₁,T₂]/(yT₁ − xT₂) → ⊕(x,y)ⁿ`, a
surjection of 3-dimensional domains, hence an isomorphism. Tensoring with `k[x,y]/I` gives
`Sym(I/I²) ≅ gr_I`, so `C = N`. But `M` is not Cohen–Macaulay: depth 0 and dimension 1 at the
origin, because `x` is killed by `(x, y)`. So it is not lci.

8.5 now reads "lci ⟺ `C` is a vector bundle stack, and then `C = N`", and states that `C = N` alone
does not imply lci. Its route goes through a new scheme-level bullet: a closed immersion of locally
Noetherian schemes is regular iff its normal cone is a vector bundle. The forward direction is
SchemeAndStackFoundations §5.5 (`conormal_regular`, `normalCone_eq_normalBundle`). The converse
uses quasi-regularity: stacks-divisors Lemma 21.4 (063H), line 2017, then Lemma 22.3 (063L),
line 2151. Two Checks were added (the embedded point; the scheme-level criterion on `k[ε]` and
`k[x]/(x²)`). The plan was updated to match: 8.4 statement, API and tests; 8.5 statement, API and
tests, including the new API entry `normalCone_vectorBundle_iff_regular`.

**Not done.** The review asked for the converse "`N` vector bundle stack ⇒ lci when 𝔐 is smooth"
(Vasconcelos). The only text is paywalled (DOI 10.1016/0021-8693(67)90086-5, recorded by the
service as uncertified), and I could not confirm the theorem number without reading it. Rather
than guess a locator, I left the converse out and removed the entry. Nothing in the roadmap
consumes it.

## F02 (P2) — applied differently

Confirmed. Vistoli's construction is stated for a reduced equidimensional scheme
(vistoli1989 lines 1451–1452) and normalises a blow-up (lines 1465–1470). BF's diagram (7)
assumes `Y` smooth (line 812), and §7 assumes smooth bases (line 1668).

- 4.4 (README and plan): added "`Y` reduced of pure dimension", with the reason. Added a Check:
  on `𝔸¹ × Spec k[ε]`, `[C_{X/Y}] = 2[𝔸¹]`, but `Y_red` sees multiplicity 1.
- 4.3: noted that Vistoli reduces to an integral `Y` before using β (lines 1218–1222, 1244–1246),
  so the new hypothesis holds there.
- 10.6 regular case, 10.7 (`Z`, `Z'` smooth case) and 10.8 now require "`𝔐` reduced" (README and
  plan). Added a Check on `𝔐 = Spec k[ε]`.

**Why reduced rather than the suggested "smooth".** In the relative proof (BF Lemma 5.9 pattern,
lines 1400–1427), β is built on `W`, or on `Z ×_𝔐 W` for 10.7. Both are smooth over `𝔐`, so they
are reduced and of pure dimension on each component whenever `𝔐` is reduced. Props 3.3–3.5 use only
smooth base change and the smooth projection `W ×_𝔐 W → W`. Requiring `𝔐` smooth would narrow the
statement further than the construction needs. BF's smooth hypothesis is cited at the claim. The
consumer case (prestable curves, smooth) is covered either way.

## F03 (P2) — applied differently

Confirmed: `E^{−1}`, `E^0` were undefined, and on a stack the isomorphism in `D(O_M)` need not be a
morphism of complexes. Witness (now a Check): on `ℙ¹`, `E = [O(−4) →0 Ω]` has
`End_D(E) = k² ⊕ Ext¹(Ω, O(−4))` with `Ext¹ = H¹(O(−2)) = k`. Morphisms of complexes give only
`k²`, since homotopies lie in `H⁰(O(−2)) = 0`.

Instead of a roof, 10.1 now builds the global, canonical object `K_1 := F_1 ×_{h¹/h⁰(E^∨)} H_1`.
It proves that `K_1` is a vector bundle and that its projections are surjective with kernels `H_0`,
`F_0`. BF's chain-level construction is used only étale-locally on an affine `U`. There
`Hom_D = Hom_K`, because `Hom•` is quasi-coherent and acyclic on `U` (SchemeAndStackFoundations
§2.10 with §2.6). `K^{−1} ≅ F^{−1} ⊕ H^0`, and the inclusion of `H^{−1}` splits because the mapping
cone is exact.

10.3 now compares both resolutions through the common inverse image in `K_1`. 10.1's Checks were
recomputed (`E = 0`; ranks `n + g` for `Ω_M`), and the plan's 10.1 and 10.3 entries were updated.

## F04 (P3) — applied

"`β = 0`" is now computed from the construction. The ideal of `X = Y` is zero, so the blow-up is
empty and `β = h_*α = 0` (vistoli1989 lines 1466–1470, 1482–1488). The same holds for `v = id`.
Plan tests `beta_trivial` and `beta_identity` were updated to match.

## F05 (P3) — applied

Added supplier-contract bullets for SchemeAndStackFoundations:

- §0.7: `topologicalKrullDimAt`, `dimension_theory_finiteType`.
- §1.1: `qcoh_fpqc_descent`.
- §2.9: `bigSheaf`, `bigStructureSheaf`.

The plan's `sections` now include §0.7. Following the same pattern, the new routes' inputs were
also added:

- §§2.6 and 2.10 (`serre_affineness_criterion`, `quasiCoherent_topology_comparison`) for 10.1.
- §5.5 (`conormal_regular`, `normalCone_eq_normalBundle`) for 8.5.

I checked every name in the SchemeAndStackFoundations README on main (lines 757, 763, 2074,
3584, 3460, 3638, 6775–6777).

## F06 (P3) — applied

"…that roadmap consumes them once it is ordered after this one" became "…it consumes Layers 2–6
here (2.3, 4.5, 5.3, 6.3)". In the plan's consumer entry, "; requires ordering after this roadmap"
was dropped.

## Checks run

- **Dependency gate** (final run):
  ```
  candidate: VirtualFundamentalClasses is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
  depcheck: 240 roadmaps, 2370 edges, 0 problem(s)
  ```
  There are no UPWARD or CYCLE lines.
- **`roadmaps resolve`** on the README: no cross-roadmap citations and no Lean names found nowhere.
- **Plan integrity:** `plan.json` parses, every `target:` prerequisite resolves, and there are 61
  targets and 126 tests.
- **Style grep** for `$`, `\(`, `\[`, pull-request numbers, paths and process words: no hits.
- **Lean `#check` scratch elaboration:** not applicable. The package has no `Suggested.lean` at
  the design stage.

## Adversarial pass (statements added or changed)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 8.4 `N` vb stack ⟺ `τL` perfect | étale; smooth dim n; `k[x]/(x²)⊂𝔸¹`; `k[x,y]/(x,y)²`; `Spec k→Spec k[ε]`; `k[x,y]/(x²,xy)` | `τL=0`, `N=M`; `Ω[0]`, `BT`; `I/I²` free rank 1 (length 2 = 1·2); length 7 ≠ 9, not free; `k[1]` perfect, `N=𝔸¹`; rank 1 on line, 2 generators at 0 | both directions hold on all six | iff replaced |
| 8.4 lci ⇒ `N` vb, not ⇐ | `Spec k→Spec k[ε]` | `C=Spec k[t]/(t²)` not vb ⇒ not lci; `N=𝔸¹` vb | converse false | Check added |
| 8.5 lci ⟺ `C` vb stack; ⇒ `C=N` | `k[x]/(x²)`; fat point; embedded point; `Spec k→Spec k[ε]`; `Spec k→B𝔾_m` | `C=N` line bundle stack; dim C 0 vs N 1; `C=N` but not vb, depth 0 < dim 1; `k[t]/(t²)`; `C=B𝔾_a`, dim −1 = m | consistent | "C=N ⇒ lci" removed |
| 8.5 scheme criterion | `(ε)⊂k[ε]`; `(x²)⊂k[x]`; `x(x,y)⊂k[x,y]` | gr `k[t]/(t²)` not vb, ε zero-divisor; line bundle, x² nonzerodivisor; gr = Sym but `I/I²` not locally free | iff holds | added |
| 9.2 `id` perfect iff N vb | hypersurface in 𝔸ⁿ; `Spec k→Spec k[ε]` | vd = n−1 = dim; vd = 0+(0−1) = −1 ≠ 0 | lci ⇒ vd = dim, not conversely | Check fixed |
| 4.4 β with Y reduced pure-dim | X = Y; v = id; v = i codim d; 𝔸², {xy=0}, {x=0}; `𝔸¹×Spec k[ε]` | ideal product 0, blow-up ∅, β = 0, ∂β = [N]−[N] = 0; β = 0; `s^!`-images `c_d(N)∩[X]`; both 0 in `A_1(𝔸²)`; `gr=k[T,E]/(E²)`, `[C]=2[𝔸¹]` vs 1 on `Y_red` | hypothesis needed | hypothesis + Checks |
| 4.3 uses of 4.4 | Vistoli proofs of 3.11, 3.13 | reduce to integral Y (lines 1218–1222, 1244–1246) | hypothesis met | note added |
| 10.1 fibre product `K_1` | E=0 with [0→0],[O→O]; `Ω_M[0]` with G of rank g; F=H with id and 1+ξ on ℙ¹ | `K_1=𝔸¹×M`, kernels 𝔸¹, 0; rank n+g = 0+(n+g) = g+n; `End_D` dim 3, `End_K` dim 2, ξ² = 0, φ∘ξ = 0 | holds; chain map not available globally | rewritten |
| 10.1 local model | affine U, chain map ψ | `K^{−1}≅F^{−1}⊕H^0`; `h^0(K)=h^0(F)`, `h^{−1}(K)=h^{−1}(F)`; rk `K_1` = rk F^{−1}+rk H^0 = rk H^{−1}+rk F^0 (both differ by r) | consistent | — |
| 10.3 independence | E = 0 | `0^![M]=[M]=0^!_{𝔸¹×M}[𝔸¹×M]` | holds | wording |
| 10.6 regular case, 𝔐 reduced | `Spec k→𝔸¹`, `M=𝔸¹×Y`; 𝔐 = Spec k[ε] | `v^![𝔸¹×Y]=[Y]`; flat case holds (8.5 base change), W non-reduced | hypothesis is where the proof needs it | hypothesis + Check |
| 10.7 | v = id; `Z×𝔸¹→Z` smooth | trivial; `[X]^vir×[𝔸¹]` (smooth case: no hypothesis) | holds | hypothesis on second case |
| 10.8 | `Z(x²+y²)⊂ℙ¹`, O(2); BG, E = 0 | count 2; 1/\|G\| (𝔐 = Spec k reduced) | holds | hypothesis |

## Sources

- **Added:** `stacks-divisors` (Stacks, Divisors, tag 01WO; certified, open repository), cited
  for 8.5 at lines 2017 and 2151.
- **Fetched and dropped:** `stacks-dpa` (no usable statement) and `vasconcelos1967` (paywalled;
  converse not added). Neither is cited, so both entries were removed from `sources.toml`.
- No `needs-references.toml` was written.

## For the maintainer

- **Source issue, BF Proposition 3.12.** At printed page 30, lines 1010–1023, the source claims
  that `C_X = N_X` implies `X` is lci. The line with an embedded point refutes this, and the
  source's proof of (2) ⇒ (1) goes through that step. The roadmap now states and proves
  (1) ⟺ (2) by another route.
- **Source gap, BF Proposition 5.3.** Lines 1303–1305 assume a global morphism of complexes.
  The roadmap avoids the assumption with the fibre product.
- **Plan IDs.** No section number or heading changed, so citing roadmaps are unaffected. The
  plan's target ids are unchanged, and one API entry (`normalCone_vectorBundle_iff_regular`) and
  five tests were added.
- **MotivicStructuresInModuliOfCurves** is at merge-order line 328, above where this roadmap will
  be inserted, and its design does not cite this roadmap. Making it an actual consumer is a
  merge-order decision outside this package.
- **EquivariantIntersectionTheory** (supplier, a new-roadmap open pull request) is unchanged from
  the reviewed state.
- **Ownership** of the touched objects was checked by `roadmaps grep` (intrinsic normal cone,
  virtual class, Vistoli's rational equivalence). The only hit is ImplicitAtlases, already named
  as a different object. Ownership against open pull requests whose files this job did not have
  was checked only through that grep.
