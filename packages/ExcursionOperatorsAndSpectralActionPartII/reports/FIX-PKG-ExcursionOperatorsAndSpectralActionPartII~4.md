# FIX-PKG-ExcursionOperatorsAndSpectralActionPartII~4

The review had one finding.

## F01 (P1) — applied differently

The finding is right. IgusaVarietiesAndTorsionConcentration IG.F.21 (finite wild bound, the excursion action, Hecke commutation, neutral restriction; G is any connected reductive group, line 1454 of that README) and AutomorphicGaloisRepresentationsPartII Layer AG2.6 both construct what the old §0.0(a), (b), the construction in (c) and (e) built. Both come earlier in ORDER (lines 238 and 183; this package is at 287).

Old → new: the targets §0.0(a) finite ramification, (b) centre map, the construction of Ψ_G^b and the construction and continuity in (e) are deleted. The action and the finite wild bound are now imported from IG.F.21, and φ_π from IG.F.22 (only the attachment, not its GL_n compatibilities). Two comparisons are kept: (a) Ψ_G^b=Ψ_(G_b), and (b) normalized Levi compatibility for every connected reductive G. IG.F.22 proves that compatibility only for GL_n and its inner forms.

**Why this differs from the suggested repair.** The review asked for the action, its restrictions and the parameter to come from AG2.6. Layer 1 of this package needs the action to commute with the HeckeStacksAndLocalShtukas HS4.1 Hecke functors. Nothing compares AG2.6's `HeckeFunctor` with the HS family. AG2.6 is earlier than HS, and HS cites no AG2 section. HeckeStacksAndLocalShtukas §HS3.11, however, already gives natural equivalences between the Hecke functors, Satake kernels and Weil actions of IG.F.18–IG.F.20 and those of HS1–HS3. So importing from IG.F.21/IG.F.22 identifies the excursion operators with the HS4.2 composites with no new comparison target and no new supplier gap. Importing from AG2.6 would have needed one of the two.

To avoid a second carrier, AG2.6 is named in Scope and in §0.0 as constructing the same action, and no target uses it. Ψ_G^b is now just the restriction of the imported action along the basic embedding of §HS3.10. The very-good-prime clause of IG.F.21 does not apply, because ℓ is invertible in ℚ̄_ℓ.

**Same pattern elsewhere, all repaired:**
- Summary.
- Scope (the old "Section 0.0 owns their specialization…" sentence).
- The HS contract: HS1.8–HS1.9 and HS4.7 dropped, HS3.11 added.
- The LP contract: LP2e.9 and LP2e.15 dropped; the continuity sentence now rests on IG.F.21 together with LP2c.5.
- A new "From TauCetiRoadmap.IgusaVarietiesAndTorsionConcentration" contract.
- "How to read the build".
- Layer 0 Dependencies.
- §4.3 proof and Needs, and the Layer 4 Dependencies.
- The `Suggested.lean` module-docstring bullet for §0.0.

The consumers of the kept comparisons (§§1.2, 1.5, 3.3, 5.1, 5.2, 5.3, 6.1) still cite "§0.0" and need no change. `plan.json` is unchanged, since no new gap was needed.

**Adversarial pass on the changed text:**

| Statement | Instances | Values | Result |
|---|---|---|---|
| Imported action, unit and zero | trivial datum; zero creation | 1; 0 | retained Check |
| Imported finite wild bound | zero compact object; unramified GL₁ character | every transform is 0, so any P works; full wild inertia acts as 1 | retained Check |
| (a) Ψ_G^b=Ψ_(G_b) | GL₁, b of degree 0 and degree 1 | t↦2, t⁻¹↦1/2, 0↦0, 1↦1 on both sides | holds |
| (b) Levi compatibility | GL₂, diagonal Levi, torus values 2,3 | trace 2+3=5=tr diag(2,3); normalized eigenvalue 5√2 at q=2; an extra modulus twist breaks 5 | holds |
| φ_π via IG.F.22 + LP2c.8 | diag(2,3), diag(3,2), diag(2,4); unipotent SL₂ | (trace, det) = (5,6), (5,6), (6,8); unipotent and identity both (2,1) | semisimplicity is needed and is kept |
| Coefficients | ℚ̄_ℓ versus ℤ_ℓ[√q] | ℓ is invertible, so the IG.F.21 very-good-prime hypothesis is void; SL_ℓ (centre μ_ℓ) has no extra restriction | no prime exclusion |
| HS commutation via §HS3.11 | identity Hecke functor (V = unit) | excursion = scalar on both constructions | consistent |

## Checks

- `lake env lean packages/ExcursionOperatorsAndSpectralActionPartII/Suggested.lean` from the content checkout exited 0. The only warning was `declaration uses 'sorry'` at 44:8. No Tau Ceti build was needed.
- `#check @…weightPushforward_sum_abs_sub_uniform_le` in a scratch file: the elaborated type is unchanged. It keeps the field, CharZero, IsAlgClosed, Killing, the finite-dimensional hypotheses, the Cartan subalgebra, the base, the finite abelian group A, surjective φ, m ≥ 1, the highest-weight vector and the generation hypothesis. No binder was lost. Only the module docstring changed.
- depcheck (`--movable`): `depcheck: 56 roadmaps, 639 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve`: no cross-roadmap citation and no Lean name found nowhere. The two leads from the earlier resolve (`TauCeti.IsStableDistribution`, `TauCeti.normalizedOrbitalIntegral_bounded`) are EndoscopicTransferAndUnitaryTraceComparison §2.4 and §2.1 targets, as the review confirmed.

## Notes for the maintainer

- New supplier edge: IgusaVarietiesAndTorsionConcentration (IG.F.21, IG.F.22). It is earlier in ORDER.
- Dropped edges: LanglandsParameterStacks LP2e.9 and LP2e.15, and HeckeStacksAndLocalShtukas HS1.8, HS1.9 and HS4.7.
- No Lean name changed.
- HeckeStacksAndLocalShtukas §HS4.7 still refers to a finite-ramification target "ExcursionOperatorsAndSpectralAction, ES1"; that roadmap does not exist. The finite wild bound is IG.F.21's, so that roadmap's citation should point there. This cannot be edited from this package.
- IG.F.21 and AG2.6 construct the same action in two earlier roadmaps. Choosing one owner between them is outside this package.
- Ownership was checked against main, the open heads given by the tools, and the board packages through the review's index. No sources were fetched and none are missing.
