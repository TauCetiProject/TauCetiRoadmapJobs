# FIX-PKG-QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups~3

Findings of `REV-PKG-QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups~2` (two findings).

## F01 (P2) — applied

Verified: the only consumer of the gap is §5.8, and its statement and proof route use only polynomial volume growth of an algebraic norm (nv21 Lemma 17.3, pp. 118–119, and (19.31), p. 135). No *Needs* line, route or Check uses the KAK integration formula. The KAK formula is the supplier's proof input, not part of the contract.

Changed: the gap `kak-integration-volume-growth` ("KAK integration formula with its Haar Jacobian, and polynomial volume growth …") → `algebraic-norm-volume-growth`. Its new statement: for the real points G of a reductive ℝ-group with a fixed Haar measure and a faithful algebraic representation ρ, `vol{‖g‖ ≤ T} ≤ C T^A` for T ≥ 1, with A and C depending only on G, ρ and the measure. The radius was renamed from R to T so that R no longer names both the representation and the radius.

Same pattern repaired in: `packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/README.md` line 11 ("the Cartan integration formula" → "polynomial volume growth of an algebraic norm"), line 61 (last sentence → "the polynomial volume growth of an algebraic norm is requested below from AutomorphicSpectralTheory"), line 133 (contract), line 1029 (§5.8 *Needs*), line 1068 (Layer 5 Dependencies). In `design/plan.json`, the top-level `gaps` entry got the new slug and `needs`, and the KAK wording in its `section` string was replaced by "volume growth". The supplier and `neededBy` (`5.8`) are unchanged.

## F02 (P3) — applied

Verified against the README's own definition of `Ψ^m_δ` (§0.3: `h^{δ r}‖θ_{x₁⋯x_r}(T)‖` is bounded uniformly in h) and nv21 Definition 5.2 and Lemma 5.3(i), pp. 37–38. A seminorm on unscaled `Ψ^m` is a maximum of finitely many `‖θ_u(T)‖`. Each of these is `≪ h^{−δ r}` on a bounded family, so the loss is `h^{−δ r}`, not `h^{−r}`. At δ = 0 the bound is uniform in h.

Changed: README line 234, "by a fixed negative power of h, the power given by the length of the longest commutator word it uses" → "by `h^{−δ r}`, r the length of the longest commutator word it uses (so uniformly in h when δ = 0)". No other passage states this loss (I grepped for "negative power", "commutator word" and `h^{−r}`).

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `algebraic-norm-volume-growth` | G = ℝ^×, ρ = id, Haar `dx/|x|` | `‖g‖ = max(|g|, |g|^{−1})`; `vol{‖g‖ ≤ T} = 2·∫_{1/T}^{T} dx/x = 4 log T ≤ 4T` | holds with A = 1 | — |
| same | G = SO(n), ρ the standard representation | `‖g‖ = 1` for every g; the volume is the total mass, a constant | holds with A = 0 | — |
| same | G = SL₂(ℝ), standard ρ | KAK: `vol ≍ ∫_0^{log T} sinh(2t) dt ≍ T²` | holds with A = 2 | — |
| same, range of T | any G | `1 = ‖ρ(g)ρ(g^{−1})‖ ≤ ‖ρ(g)‖‖ρ(g^{−1})‖`, so `‖g‖ ≥ 1`; for T < 1 the set is empty | restricting to T ≥ 1 loses nothing | — |
| §5.8 with the new contract | GL₂ ⊃ GL₁ Check, H = GL₁(ℝ) | `|h·(b,c)| ≍ max(|h|, |h|^{−1})`; volume growth of H is `4 log T` | the route reads unchanged | — |
| §0.3 seminorm bullet | δ = 0; δ = 1/4 with a word of length r = 2 | loss `h^0 = 1`; loss `h^{−1/2}`, not `h^{−2}` | corrected | F02 |
| §0.3 Checks (lines 242–245) | identity, `dπ(∂_x)`, `h^{−1}·1`, Heisenberg | these Checks do not use the bullet; recomputed values as in the review table | hold | — |

## Checks run

- Elaboration: `lake env lean packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/Suggested.lean`, run from the content checkout. Exit 0, five warnings, all `declaration uses 'sorry'` (lines 103, 159, 172, 188, 209). `Suggested.lean` was not changed, so its declarations and their elaborated signatures in `signatures.md` are unchanged. No `#check` re-audit was needed.
- Dependency check (gate `--depcheck --movable`): `depcheck: 56 roadmaps, 645 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `design/plan.json` parses as JSON. The old slug occurs in no file except the earlier report, which is historical and was not edited.

## Notes for the maintainer

- `design/plan.json` has a supplier entry outside the top-level `gaps` list (supplier `RepresentationTheory/LieGroups#layer-9-…`). Its `need` still reads "KAK decomposition, root-exponential Haar estimates and polynomial volume growth for an algebraic group norm". This clashes with the README, which says LieGroups Layer 9 is structure only and requests volume growth from AutomorphicSpectralTheory. This brief allows edits to the `gaps` list only, so I left that entry as it is.
- AutomorphicSpectralTheory: the gap it is asked to fill is renamed `algebraic-norm-volume-growth` and narrowed to the volume bound. No other roadmap cites the old slug.
- No sources were fetched and `needs-references.toml` was not touched. Ownership against open pull requests is unchanged by this round: no new object was introduced.
- I found no suspicious instructions in the review text.
