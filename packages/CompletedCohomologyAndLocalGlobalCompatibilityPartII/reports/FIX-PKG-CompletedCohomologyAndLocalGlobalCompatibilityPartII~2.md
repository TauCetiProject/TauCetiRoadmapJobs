# Package repair report, round 2

This round edits only `packages/CompletedCohomologyAndLocalGlobalCompatibilityPartII/README.md`. `Suggested.lean`, `metadata.toml`, `sources.toml` and the `gaps` list of `design/plan.json` are unchanged. The review had three findings, all P3; each was checked against the pinned checkout and the sources before any edit.

## F01 (P3) — applied differently

Old: "The pin is `6b7abb3c…`" (From Mathlib) and "The pin is `a91d3aaf…`" (From Tau Ceti), and `Mathlib/RingTheory/Ideal/Maps.lean` lines 868, 870, 894, 900. New: both sentences become "Every file and line below is taken at the pinned Mathlib (resp. Tau Ceti) of the content checkout", and the four `Module.annihilator*` lines become 869, 871, 895, 901.

Why not the reviewer's hashes: the content checkout's `lake-manifest.json` now pins Mathlib at `1b1ccf4b…` and Tau Ceti at `2fd255d9…`, newer than both the README's hashes and the reviewer's proposed `f6090c70…`/`358314d4…`. Any hash written into the README goes stale between rounds, so the README names the pins by role, as the roadmaps on main do. Every cited file:line was re-opened at the current pins: `Module.annihilator` 869, `Module.mem_annihilator` 871, `Module.comap_annihilator` 895, `Module.annihilator_eq_bot` 901 (one line lower than the reviewer saw at the previous pin); `LinearMap.ker` 59 and `LinearMap.mem_ker` 63 inside the cited 59–64; `FaithfulSMul` 47; `PrimeSpectrum.zeroLocus` 137, `vanishingIdeal` 157, `zeroLocus_eq_univ_iff` 302; `zeroLocus_vanishingIdeal_eq_closure` 159; `Submodule.mem_iInf` 238; `TauCeti.completedGroupAlgebra` 145; and line 344 of `CompletedGroupAlgebra/Module.lean` is the last line of `isScalarTower_completedGroupAlgebraModule`, the statement that the completed action is compatible with the `R`-action, which is what the README's "completed action" sentence cites. All other numbers stand.

## F02 (P3) — applied

Old: "Mathlib `Module.annihilator_eq_bot.`" in the §4.2 `*Needs:*` line and "Mathlib `Module.annihilator_eq_bot.`." in the Layer 4 Dependencies. New: "Mathlib `Module.annihilator_eq_bot`." in both. The declaration is `lemma Module.annihilator_eq_bot` at `Mathlib/RingTheory/Ideal/Maps.lean` line 901 at the pin. The §3.1 and Layer 3 citations were already correct; the README now has no backticked name with a trailing period (grepped for `` .` ``).

## F03 (P3) — applied

Old: §2.1 statement "Hence R∞ is reduced, O-flat and flat over R□_ρ̄", route "for flatness, dimension and component pairs", Scope "The flatness, dimension and component-pair theorems … are stated by LocalGaloisDeformationRings §F.0.1 and DeformationAndDerivedPatchingAlgebra §4.6". New: "Hence R∞ is reduced and O-flat"; "for O-flatness, dimension and component pairs"; "The O-flatness, dimension and component-pair theorems …".

Evidence. LocalGaloisDeformationRings §F.0.1 at its open head states, for a finite family of 𝒪-flat coefficient rings, that `T = ⊗̂_𝒪 B_i` is flat (over 𝒪), the dimension formulas, and flatness of the finite coefficient extension `B ⊗̂_𝒪 𝒪′` over `B`; nothing about flatness of a completed product over one of its factors. DeformationAndDerivedPatchingAlgebra §4.6 at its head states the dimension and component pairs only. BIP line 2353 asserts the clause in one sentence ("Since A is O-torsion free, R∞ is a flat R□-algebra") with no argument. The clause is true, but no supplier states it and no target of this roadmap uses it: §4.1 uses the component description and the contraction `𝔮 ∩ R = 𝔭_χ`, §4.2 uses reducedness of `R` from gap:framed-ring-components and descent along the coefficient extension `O → O′`, §5.1 uses only the reduced O-flat test quotients. I kept "O-flatness" in the route sentence rather than deleting "flatness" outright, because §F.0.1 does state O-flatness of the completed product and the statement still claims it. Giving the clause its own route (fibrewise flatness criterion for the non-finite local map `R□ → R□ ⊗̂ A`, through `R□/ϖ ⊗̂_k A/ϖ`) would add a target with no consumer, so deletion is the repair.

Pattern search: "flat over R□" and "R□-algebra" occur nowhere else in the README; every other "flat" is O-flatness of a test quotient (§§5.1, 6.2, 6.3), of `R□` (gap:framed-ring-components) or of a coefficient extension, each with its owner. The same sentence is the `statement` of the §2.1 entry in `design/plan.json`; the brief allows edits to that file's `gaps` list only, so the plan's §2.1 statement still carries the clause. The maintainer should know that README §2.1 and the plan's §2.1 statement now differ by that clause.

## Checks

- Elaboration: `lake env lean packages/CompletedCohomologyAndLocalGlobalCompatibilityPartII/Suggested.lean` from the content checkout exited 0 in 6 s with no output. The file declares nothing (its docstring records that none of the seven headline theorems is statable at the pins), so there is no `sorry` warning and the `#check @name` comparison of elaborated types against README statements is empty; no finding touched the file and it is unchanged.
- Dependency gate (`gate --depcheck … --movable`): `depcheck: 242 roadmaps, 2486 edges, 0 problem(s)`. No UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README found no cross-roadmap citation or Lean name nowhere before this round; this round added no citation and changed no name.
- Gate failures listed in the brief: none.
- `needs-references.toml`: not created; every cited text is in the cache and no new source was needed.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §2.1 "R∞ is reduced and O-flat" | A = O (no auxiliary factor); A = O[[x]]; A = O[[x]]/(x²−ϖ) | R∞ = R□, reduced O-flat by gap:framed-ring-components; R∞ = R□[[x]], O-flat as a power series ring over an O-flat ring, reduced since R□ is; A is a DVR with ϖ = x², O-flat, R∞ = R□[[x]]/(x²−ϖ) is free of rank 2 over R□ hence O-flat, and reduced after the splitting extension by gap:completed-tensor-reduced-equidimensional | Both kept clauses have owners (§F.0.1 for O-flatness, the gap for reducedness) | clause "flat over R□_ρ̄" deleted |
| deleted clause "R∞ flat over R□_ρ̄" | A = O[[x]]; A = O[[x]]/(x²−ϖ) | R□[[x]] is flat over Noetherian R□; the rank-2 free module is flat | True on the instances but owned by no supplier and used by no target | deleted, not disproved |
| §2.1 route "§F.0.1 for O-flatness, dimension and component pairs" | two factors B₁ = R□ of relative dimension d₁, B₂ = A of relative dimension d₂ | §F.0.1: dim T = 1 + d₁ + d₂, T flat over 𝒪; §4.6: dim A + dim B − 1 = (1+d₁)+(1+d₂)−1, the same value; component pairs (χ, 𝔭) from geometric integrality | Supplier statements match the route's three items | wording only |
| §4.2 `*Needs:*` `Module.annihilator_eq_bot` | M = 0 over R = ℤ; M = ℤ/2 over ℤ | Ann = ⊤ ≠ ⊥ and the action is not faithful; Ann = 2ℤ ≠ ⊥, 2 acts as 0 | The pinned equivalence `annihilator = ⊥ ↔ FaithfulSMul` is what §4.2 uses | name repaired |
| Supplier-contract line numbers | each of the fourteen cited file:line pairs at the current pins | listed under F01 | four numbers shifted by one, ten unchanged | four numbers updated |

## For the maintainer

- No name another roadmap cites changed; this roadmap declares no Lean name.
- `design/plan.json` keeps "and flat over R□_ρ̄" in its §2.1 `statement` because only its `gaps` list may be edited at this stage; the README is the authority and no longer claims it.
- Ownership against open pull requests: the previous review checked it through the roadmap index for every roadmap the brief names; this round added no construction, so nothing new was checked.
