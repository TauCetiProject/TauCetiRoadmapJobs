# FIX-PKG-LocalFieldsRamificationPartII~2

Repair round for the package `packages/LocalFieldsRamificationPartII`, resolving the two findings
of `REV-PKG-LocalFieldsRamificationPartII`. Files changed: `packages/LocalFieldsRamificationPartII/README.md`
and `packages/LocalFieldsRamificationPartII/sources.toml`. `Suggested.lean`, `metadata.toml` and
`design/plan.json` are unchanged.

## REV-PKG-LocalFieldsRamificationPartII/F01 (P2) — applied

Verified. The witness is correct: `A = ∏_ℕ 𝔽₂` is absolutely flat, so `B = A/⊕_ℕ 𝔽₂` is flat and
of finite type; every `A_𝔪` is `A/𝔪 = 𝔽₂`, so `B_𝔪 ∈ {0, 𝔽₂}` is finitely presented over `A_𝔪`;
`A → A/I` is of finite presentation only when `I` is finitely generated, and `⊕_ℕ 𝔽₂` is not. So
"finite presentation is local on the base" in the sense of localizations at maximal ideals is false,
and the Prüfer case does not follow from the valuation-ring case that way. Temkin invokes
Raynaud–Gruson, Cor. 3.4.7, at exactly this step (temkin17 line 379–380, printed p. 106: the page
marker at temkin17 line 362–363 is "106", not 105 as the finding says; §2.1 already cites Lemma
2.3.8 as pp. 105–106).

Changed, §1.5: "by finite presentation being local on the base" → "as the case of a domain of the
theorem that a flat finite-type algebra over a domain is finitely presented (Raynaud and Gruson
1971, Corollaire 3.4.7; invoked at this step in Temkin 2017, proof of Lemma 2.3.8, p. 106)", plus
one sentence saying the valuation-ring case does not localize, and the Boolean-ring instance as a
fourth Check (negative control). Added `rg71` to `## References`.

Manifest: the finding says the service added `rg71` "during this review", but the pull request's
`sources.toml` did not carry it (the addition was on the reviewer's side). Fetched here through the
sources service with the DOI `10.1007/BF01390094`: recorded as `uncertified` (paywalled publisher),
locator "Corollaire 3.4.7", cited for 1.5. The service wrote the title with broken accents; corrected
by hand to the published title and venue (Inventiones Mathematicae 13 (1971), 1–89). No other
manifest key names this work (checked by DOI, title and first author).

Pattern: the only other consumer of the Prüfer case is §2.1 ("hence finitely presented by §1.5"),
whose text is unchanged and now has an owner for the step. No other place in the README argues by
locality of finite presentation.

## REV-PKG-LocalFieldsRamificationPartII/F02 (P3) — applied

Verified at the pinned Tau Ceti, and the pin provides more than the finding says:

- `TauCeti.exists_continuous_lift_of_compatible_levelSolutions`
  (`TauCeti/Topology/Algebra/Group/Profinite/EmbeddingProblem/Lift.lean` line 35): assembles a
  compatible family of `LevelSolution`s over the open normal subgroups of a profinite `A` into a
  continuous `G →ₜ* A` over `B`; `A` only compact and totally disconnected, no pro-`p` hypothesis.
- `TauCeti.HasPGroupSolutions` (`.../EmbeddingProblem/PGroupKernel.lean` line 85) and
  `TauCeti.HasElementaryAbelianSolutions.hasPGroupSolutions` (same file, line 172, needs
  `[Fact p.Prime]`); `TauCeti.CohomologicalDimensionLE.hasElementaryAbelianSolutions`
  (`.../EmbeddingProblem/CohomologicalDimension.lean` line 64, for profinite `G`), and
  `TauCeti.cohomologicalDimensionAt_le_iff`
  (`TauCeti/RepresentationTheory/Homological/ContCohomology/CohomologicalDimension/Basic.lean`
  line 194). So step (a) of the finding's route, `cd_p G ≤ 1 ⇒ HasPGroupSolutions p G`, is itself at
  the pin and is now cited, not stated as owned.
- `TauCeti.HasPGroupSolutions.exists_compatible_levelSolutions` (`.../Projective.lean` line 150)
  needs `IsProP p A` for the source; it is used once, in its private stage 4, to see that the image
  `K` of `ker s` in `A/U` is a `p`-group (as a subgroup of the `p`-group `A/U`). With a pro-`p`
  kernel instead, `ker s = H ∩ N`, and `K` is a finite continuous quotient of a closed subgroup of
  the pro-`p` kernel `N`, hence a `p`-group; everything else in that proof goes through unchanged.
  This is the one step §3.2 now states as its own. `Subgroup.exists_minimal_isClosed_le`
  (`TauCeti/Topology/Algebra/Group/ClosedSubgroup.lean` line 208) is the Zorn step.
- `TauCeti.isProjective_of_hasPGroupSolutions` (line 204) and `IsProjective.exists_continuous_lift`
  (line 197) cover the case of a pro-`p` source `E`, as the finding says.

Changed, §3.2: the route "Zorn's lemma on pairs … and an inverse-limit argument" → three steps:
(a) `cd_p G ≤ 1 ⇒ HasPGroupSolutions p G` by the four pinned declarations above; (b) owned: a minimal
closed `H ⊆ E` over `G`, the level kernels `K_U` are `p`-groups as quotients of closed subgroups of
`N`, the lift through `K_U` is a level solution and the family is compatible by minimality (the
argument of `exists_compatible_levelSolutions` with the kernel in place of the source); (c)
`exists_continuous_lift_of_compatible_levelSolutions`. The `*Needs:*` line lists the ten pinned
names and "Profinite and pro-`p` groups, Layer 5 (§§5.1–5.6) and Layer 6 (Serre's theorem,
step 1)"; the Layer 6 citation is for `CohomologicalDimensionLE.isProjective`, which that README
lists at its Serre's-theorem item, step 1 (`Completed/ProfiniteProPGroups/README.md` line 1078).
Added a fourth Check: `Ẑ → ∏_{ℓ≠p} ℤ_ℓ` with kernel `ℤ_p` and `cd_p = 0` has a section while `E` is
not pro-`p`, so the pinned projectivity lifting does not cover the statement and step (b) is
needed. `### From Tau Ceti`: new bullets for the embedding-problem modules (with files) and for
`Subgroup.exists_minimal_isClosed_le`, and `cohomologicalDimensionAt_le_iff` on the `cd_p` bullet.
`## Scope and ownership`: one sentence that these are at the pin and §3.2 owns only the compatibility
for a pro-`p` kernel. Layer 3 `### Dependencies`: the embedding-problem modules and Profinite and
pro-`p` groups, Layers 5 and 6. `exists_continuous_section_of_isProP_ker` in `Suggested.lean` is
unchanged, as the finding says.

Section labels: that README's Layer 5 numbers its items 5.1–5.7 (`Completed/ProfiniteProPGroups/README.md`
lines 874–947); `HasPGroupSolutions` is its 5.4, the level solutions 5.5, the lifting 5.6, so the
citation is §§5.1–5.6 rather than the finding's §§5.6–5.7 (5.7 is the converse for pro-`p` `G`,
which §3.2 does not use).

## Checks

**Elaboration.** From the content checkout, `lake env lean` on
`packages/LocalFieldsRamificationPartII/Suggested.lean`: exit 0; seven warnings "declaration uses
`sorry`" at lines 108, 116, 131, 148, 163, 174, 184; nothing else. The two `TauCeti.*` imports had
no object files at the content checkout and were built first with the targeted `lake build` of the
two modules (exit 0).

**Module header (worker repair).** The worker's `lake build` logged "imports `Mathlib` from package
`mathlib`, which is designed for use with the module system; consider adding `module`" for the
plain `import Mathlib` header. The file now begins with `module`, imports Mathlib and the two
Tau Ceti modules as `public import`, and opens `@[expose] public section` before the namespace,
the form of the roadmaps on main. No declaration changed; `lake env lean` after the change: exit 0,
the same seven `sorry` warnings, four lines lower.

**Signatures.** A scratch copy of `Suggested.lean` with `#check @name` for all 14 declarations
(seven definitions, seven theorems) under `pp.universes` elaborated with exit 0. Each elaborated
type was compared with its README statement: `[HenselianLocalRing ↥V]` is in
`sup_galoisTamePart_eq_top_of_henselian`; the compact and totally disconnected instances are on
both `E` and `G` in `exists_continuous_section_of_isProP_ker`, with `TauCeti.IsProP p ↥f.ker` and
`TauCeti.cohomologicalDimensionAt p G ≤ 1` as hypotheses; `[vK.HasExtension vL]` is in the Abhyankar
statement; `Algebra.trdeg K L = ↑n` is in the height bound; `[CharP F p]` and `[Fact p.Prime]` in the
`cd_p` bound. No binder is lost. Nothing changed in the Lean file this round.

**Supplier declarations.** A scratch file with `#check @name` for the eleven Tau Ceti names newly
cited (`cohomologicalDimensionAt_le_iff`, `HasPGroupSolutions`,
`CohomologicalDimensionLE.hasElementaryAbelianSolutions`,
`HasElementaryAbelianSolutions.hasPGroupSolutions`, `LevelSolution`, `levelSolutionMap`,
`exists_continuous_lift_of_compatible_levelSolutions`,
`HasPGroupSolutions.exists_compatible_levelSolutions`, `isProjective_of_hasPGroupSolutions`,
`IsProjective.exists_continuous_lift`, `Subgroup.exists_minimal_isClosed_le`) elaborated with
exit 0 after the targeted build of their three modules; the hypotheses printed match the README's
descriptions (`exists_continuous_lift_of_compatible_levelSolutions`: `[CompactSpace A]
[TotallyDisconnectedSpace A]`, `[T2Space B]`, no `IsProP`; `exists_compatible_levelSolutions` and
`IsProjective.exists_continuous_lift`: `TauCeti.IsProP p A`;
`HasElementaryAbelianSolutions.hasPGroupSolutions`: `[Fact (Nat.Prime p)]`;
`CohomologicalDimensionLE.hasElementaryAbelianSolutions`: `[CompactSpace G]
[TotallyDisconnectedSpace G]`; `Subgroup.exists_minimal_isClosed_le`: `[CompactSpace A]`).

**Dependency check.** Output of the gate after the edits:

```
depcheck: 242 roadmaps, 2476 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

**Citations.** `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name
found nowhere. The worker's lead `Henselization.fixed_of_henselian` (`citations.md`) resolves to
`TauCetiRoadmap/SchemeAndStackFoundations/README.md` §0.12, as the review also found; the resolver
no longer lists it.

**Manifest.** `sources.toml` parses (ten entries, one key per work); `rg71` added as `uncertified`.
No `needs-references.toml` was created: the only new citation is a paywalled published theorem,
cited by its locator.

**Gate failures listed in the brief.** None.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values | Result, change |
|---|---|---|---|
| §1.5 Prüfer case via Raynaud–Gruson | `A` a field; `A` a valuation ring; `A = ℤ` with `B = ℤ[1/2]`, `B = ℤ[x]/(2x − 1)`; `A = ∏_ℕ 𝔽₂`, `B = A/⊕𝔽₂` | field: every finite-type algebra flat and f.p. (Hilbert); valuation ring: Stacks 053E directly; `ℤ`: Prüfer (Dedekind), `ℤ[1/2]` flat, finitely presented as `ℤ[x]/(2x − 1)`; Boolean ring: flat, finite type, `B_𝔪 ∈ {0, 𝔽₂}` f.p. at every `𝔪`, `B` not f.p. since `⊕𝔽₂` not finitely generated; `A` not a domain, theorem silent | the domain hypothesis of Cor. 3.4.7 is used; the old "local on the base" clause fails on the Boolean ring; replaced, Check added |
| §1.5 "flat means torsion free over a valuation ring" | `A/𝔪`; `A[x]` | `A/𝔪` has torsion, not flat; `A[x]` torsion free, free, flat | unchanged, agrees with the second Check |
| §3.2 step (a) | `G = ℤ/p` (`cd_p = ∞`); `G = ℤ_p`; `G = 1`; `p = 1` | `ℤ/p` excluded by the hypothesis; `ℤ_p`: `cd_p = 1`, every problem with `p`-kernel solvable (free pro-`p`); `G = 1`: `cd_p = 0 ≤ 1`, problems `1 → Q ← E` solvable by `1`; `p = 1` excluded by `[Fact p.Prime]`, which `hasPGroupSolutions` needs and the README's "prime `p`" supplies | sound |
| §3.2 step (b), `K_U` a `p`-group | `U = E`; `U = N`; `U = 1` for finite `E = ℤ/p²`, `G = ℤ/p`; `E = Ẑ → G = ∏_{ℓ≠p} ℤ_ℓ`, `U = p^k Ẑ` | `U = E`: `E/U = 1`, `K_U = 1`; `U = N`: `K_U = 1`, `β_U = f⁻¹` on `E/N = G`; `ℤ/p²`: `H = E` (no proper closed subgroup maps onto `ℤ/p`), `K_1 = N = ℤ/p`, the lift through `K_1` does not exist and indeed `cd_p(ℤ/p) = ∞` violates (a); `Ẑ`: a minimal closed `H` over `G` is `0 × G`, `H ∩ N = 1`, `K_U = 1`, `β_U` the inclusion of `G` modulo `U` | the `p`-group claim holds in every instance; the second Check refutes nothing since its `G` is excluded |
| §3.2 step (b), minimality forces the level solution | `E = G × N` split, `H = 1 × G` | elements of `H` over `g` are `(1, g)` only; lift `β_U(g) = (1, g) mod U` determined; compatible | sound |
| §3.2 new Check (`Ẑ`) | `p = 2`, `G = ∏_{ℓ odd} ℤ_ℓ` | Sylow pro-`2` of `G` trivial, `cd_2 G = cd_2(1) = 0`; kernel `ℤ_2` pro-`2`; section = second-factor inclusion; `E = Ẑ` has `Ẑ/3Ẑ = ℤ/3` as a quotient, not pro-`2`, so `IsProjective.exists_continuous_lift` (needs `IsProP p A`) does not apply | sound; the Check separates the statement from the pinned projectivity |
| §3.2 step (c) | `E` finite; `E = G` with `f = id` | finitely many `U`, the family at `U = 1` is the section; `N = 1`, `K_U = 1`, `β_U = ` reduction, `s = id` | agrees with the third Check |
| `### From Tau Ceti`, "no pro-`p` hypothesis on `A`" | the printed signature | `[CompactSpace A] [TotallyDisconnectedSpace A]`, `[T2Space B]`, no `IsProP` | as stated |

## For the maintainer

- The Lean file changed only in its header (module system form); no declaration and no name another
  roadmap cites changed.
- `rg71` is cited by its locator only (paywalled); like `serre-cg` it is settled as `uncertified`
  and should not be requested again.
- Ownership against open pull requests was not re-checked this round beyond the resolver: both
  findings concern a published theorem and declarations at the pinned Tau Ceti, and the review's own
  `roadmaps grep` over the open heads found no competing owner.
- Not a finding of this review, but noted by it for the board: the open roadmap
  QuadraticFormInvariantsPartII cites "LocalFieldsRamificationPartII §GF.1" and "§GF.4", labels this
  README does not have (the henselization of a valued field is §1.3). That is a change for that
  roadmap, not this package.
