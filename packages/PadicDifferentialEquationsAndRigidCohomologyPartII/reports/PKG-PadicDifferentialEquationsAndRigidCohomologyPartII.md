# PKG-PadicDifferentialEquationsAndRigidCohomologyPartII package report

The package contains `packages/PadicDifferentialEquationsAndRigidCohomologyPartII/README.md`
(seven layers MS.0–MS.6, 71 targets), `Suggested.lean`, `metadata.toml` (`topic = "math.AG"`), the
source manifest `sources.toml`, and the top-level `gaps` list of `design/plan.json` (eight supplier
gaps, nothing else in the plan changed). The upstream shape was compared with
`TauCetiRoadmap/AdicSpacesPartII/README.md` and `TauCetiRoadmap/RigidAnalyticGeometry/README.md` on main
(`f6e3d43`), with the parent `PadicDifferentialEquationsAndRigidCohomology/README.md` at its open head,
and with a sibling package on the board. The design directory had no `review.json`, and `reports/` was
empty. The accepted review is the `review` record inside `plan.json`, and its notes were applied (see
"Corrections").

## Headline theorems

| Headline theorem | README | Status |
| --- | --- | --- |
| Specified-map theorem on curves (Tsuzuki, Cor. 6.5 / Thm 1.3) | MS.4.6 | not statable at the pins: no overconvergent/convergent F-isocrystals on a curve, no slope filtrations or maximal-slope quotients |
| Minimal-slope (Kedlaya) form on curves | MS.4.8 | not statable: same carriers and the minimal-slope subobject |
| Minimal slope property on curves (D'Addezio, Thm 4.2.13) | MS.5.10 | not statable: also needs dagger-extendable `F^n`-isocrystals and dagger hulls |
| Curve PBQ filtration and curve rank theorem (Tsuzuki, Thm 3.27, Prop. 6.1) | MS.2.5, MS.4.2 | not statable: no completed generic field `E_η` and no `(φ,∇)`-modules or bounded quotients over it |
| Local theorems: bounded splitting, PBQ filtration, Ohkubo's log-growth comparison, local reconstruction | MS.0.7, MS.1.1, MS.1.8, MS.3.7 | not statable: no Amice or bounded Robba field with Frobenius lift and derivation, no generic solution spaces, no Frobenius slopes over them |
| Finite-field theorems (Tsuzuki, Thm 7.20(1),(2)) | MS.6.13, MS.6.14 | not statable: no overconvergent `Q̄_p`-F-isocrystals, Frobenius fibres, `ι`-weights or Lefschetz curves |
| Docile Lefschetz full faithfulness (D'Addezio, Thm 4.4.2) | MS.5.11 | not statable: no docile overconvergent isocrystals |

None is stated. `Suggested.lean` is the module docstring (naming each headline and what it lacks) and
the empty namespace `TauCetiRoadmap.PadicDifferentialEquationsAndRigidCohomologyPartII`. The
`Suggested.lean` in the design held elementary checks: the quotient-by-kernel equivalence, the finite
average, the logarithm coefficient norms and the trace of a primitive idempotent. These are not
headline theorems and are omitted as padding. Their content is in the README as Checks of MS.0.2,
MS.1.6 and MS.6.7.

## Elaboration

`lake env lean <absolute path>/Suggested.lean`, run from the content checkout at the pins (Mathlib
`6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`): exit
code 0, **0 `sorry` warnings, no other message**. The file declares nothing, so the
`#check @name` comparison has no declaration to compare; no binder could be dropped.

The full gate was also run locally on a scratch copy of the three roadmap files (scratch git
repository, base `HEAD`, no build). It ended `OK` with every counter at 0, including
`readme-ids-missing`, `latex`, `round-labels`, `private-paths`, `depcheck` and `metadata`.

## Dependency check

    tauceti-roadmap --conf <conf> gate --depcheck packages/PadicDifferentialEquationsAndRigidCohomologyPartII/README.md --name PadicDifferentialEquationsAndRigidCohomologyPartII --order merge-order/ORDER.txt --movable
    depcheck: 56 roadmaps, 642 edges, 0 problem(s)

There is no UPWARD, CYCLE or `moved:` line. The only roadmap suppliers are
PadicDifferentialEquationsAndRigidCohomology, which comes earlier in the merge order (line 133;
this roadmap is line 135), and RigidAnalyticGeometry and AlgebraicCurves on main.
`roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere.

## Supplier gaps (declared in `plan.json` and in the README supplier subsection)

All eight are on PadicDifferentialEquationsAndRigidCohomology. That roadmap (at its open head) states
the neighbouring results but not these:

| Slug | Section | Needed by | What is missing there |
| --- | --- | --- | --- |
| extended-log-robba-growth | RD.0.34, RD.2.28 | MS.1.7 | `R̃_log`, its injective Frobenius-equivariant embedding, log-growth filtrations, exact growth of eigenvectors (Ohkubo §§1.3, 2.3). RD.2.28 has `R_log` only. |
| dejong-disc-robba-submodules | RD.5.4 | MS.1.5 | de Jong's Prop. 6.4: saturated submodules over `E†` descend to `K[[t]]₀`. CT11's own Lemma 5.7 proof uses it too. |
| unit-root-correspondence-perfect-base | RD.3.48, RD.6.61 | MS.2.3 | Katz–Crew with `K^σ`-coefficients over an arbitrary perfect `k`, plus overconvergence ⇔ finite local monodromy. RD.3.48 is `ℚ_q`-only and RD.6.61 is for finite fields. |
| legendre-kummer-extension | RD.6.47 / RD.6 | MS.2.8 | slopes 0, 2 of `H¹_rig(C, L†(χ))` for `p ≡ 1 mod 4`, and the extension classification |
| irreducible-iota-purity | RD.6.77 | MS.6.9(a) | Abe–Esnault Thm 2.7 for F-`Isoc†`. RD.6.77 is for `ι`-real objects on curves only. |
| lefschetz-curves-irreducibility | RD.6 | MS.6.9(b) | Abe–Esnault Thm 3.10: curves through finitely many points preserving absolute irreducibility |
| docile-curve-restriction | RD.5.103 | MS.5.11 | Abe–Esnault Cor. 2.4: the `H⁰` restriction isomorphism for docile objects |
| coefficient-linear-weil-ii | RD.6.85 | MS.6.10 | Weil II for objects with `L`-structure and `L`-linear Frobenius. RD.6.85 is `K`-linear. |

The design's three open contracts were re-examined:

- **G4 (Kedlaya's finite étale map to `A¹`) is not a gap.** The parent owns it as §RD.5.7, and §RD.5.6
  states Kedlaya's Theorem 1. MS.5.9 cites it.
- **G3 (one arithmetic `𝒟`-module supplier) is replaced.** It becomes the three specific requests
  irreducible-iota-purity, lefschetz-curves-irreducibility and docile-curve-restriction. The design's
  "mixed coefficient Chebotarev" contract is no longer needed: MS.6.10 now has a proof route (Tsuzuki's
  pole argument). That route uses the parent's §RD.6.23 trace formula, §RD.5.89 duality, §RD.6.85 Weil
  II and §RD.5.112, plus the coefficient-linear trace formula and duality of MS.6.6. Only the
  coefficient-linear form of Weil II is requested.
- **G1 (DAD Prop. 4.2.12) is a proof obligation inside MS.5.8, not a supplier gap.** The README states
  the target, records in mathematical terms why D'Addezio's compactness step fails, and says that a
  proof must use the Frobenius structure. MS.5.10 does not depend on it.

## What the README could not support

- MS.5.8 (affine–generic hull comparison) has a stated proof route that is incomplete. D'Addezio's
  torsion bound fails for arbitrary injections (checked: `u^j` has order exactly `p^j` in
  `W⟨u⟩/A_1`), and no repaired argument is in the sources read.
- MS.1.5, MS.1.7, MS.2.3, MS.2.8, MS.5.11, MS.6.9 and MS.6.10 rest on the supplier gaps above. Their
  routes are otherwise complete.
- Higher-dimensional minimal slopes and parabolicity (D'Addezio, Thm 4.1.3 for dim ≥ 2, Thm 1.1.1) are
  outside the accepted scope, and the README's Scope section says so. No roadmap owns them.

## Notions moved down

None. No notion was needed from a roadmap later in the merge order.

## Duplication sweep and ownership

The sweep searched by object (bounded quotient, PBQ, saturation, dagger hull, minimal slope, log-growth
filtration, `L`-structures/`Q̄_p`-coefficients, Lefschetz condition, Kedlaya étale covers, Frobenius
fixed field). It covered every roadmap on main including Completed, the 356 open roadmap pull requests
through `roadmaps grep` (index of 2026-10-26), the board packages, and the pinned Mathlib and Tau Ceti
trees.

Removals and citations:

| Object in the design | Disposition |
| --- | --- |
| Existence of a dense open of a curve finite étale over `A¹` (part of MS.5/etale-affine-line, gap G4) | deleted, cited as PadicDifferentialEquationsAndRigidCohomology §RD.5.7; MS.5.9 keeps only the minimal-slope reduction |
| Generic mixed Chebotarev for `Q̄_p`-objects (design contract inside MS.6/pure-hom-chebotarev) | not imported. MS.6.10 is proved from the parent's §§RD.6.23, RD.6.85, RD.5.89, RD.5.112 and MS.6.6 |
| Opposite/reverse filtrations | cited: §RD.1.41(c) (Laurent case), §RD.1.72 (D'Addezio's `k(t)` case with corrected indices) |
| Docile objects, log extensions, full faithfulness, dense-open restriction, slope filtration on a dense open, unit-root objects, finite étale pushforward, étale descent, trace formula, weights, Weil II, Poincaré duality | cited by parent section (supplier contracts), not restated |
| Mathlib `LinearMap.quotKerEquivRange`, `Representation.averageMap` (+ `_invariant`, `_id`), `LinearMap.trace`, `LinearMap.trace_one`, `Padic.norm_p_pow`, `FixedPoints.subfield`, `WittVector.Isocrystal` | cited with file and hypotheses; checked at Mathlib `6b7abb3` (`trace_one` needs `Module.Free` and `Module.Finite`; `averageMap` needs `[Fintype G] [Invertible (Fintype.card G : k)]`) |
| Tate acyclicity; smooth completion and Dedekind affine models of curves | cited: RigidAnalyticGeometry Layer 5, AlgebraicCurves Layers 2 and 12 |

**Owned here**, with the reason: PBQ theory, saturation, dagger hulls, `L`-structures and the
finite-field minimal slope theory. No roadmap on main, among the open pull requests or on the board
states any of these. The only hits were the parent's citations of D'Addezio for the reverse
filtration, which are cited. Tsuzuki's Lemma A.1, Lemmas 3.1–3.2 and §7 with Appendix B are proved in
this roadmap's own sources, as the accepted review decided. No declaration name of another roadmap is
reused; `Suggested.lean` declares nothing.

## Corrections relative to the design

- **Pins.** The design cited Mathlib `082e2d3` and Tau Ceti `f790474`. The pins of the content
  checkout are Mathlib `6b7abb3` and Tau Ceti `a91d3aa`, and all library claims were re-checked there.
- **Parent citations.** The design cited parent nodes by slug (for example
  `RD.1/reverse-algebraic-filtration-comparison`). Each slug was matched by content to the parent's
  real section number at its head (for example §RD.1.72) and checked there. All 69 cited parent
  sections exist.
- **MS.6.9(b)** is stated as Abe–Esnault Thm 3.10 gives it: a witness curve through any finite set of
  closed points, so LC holds at every closed point. Tsuzuki's Thm 7.19 quotes a dense open.
- **MS.6.12** keeps Tsuzuki's hypotheses, slope-filtered realisations and nonzero `h`, which MS.6.3
  needs. The design's version had dropped them.
- **MS.6.6** (coefficient-linear trace formula and duality, Tsuzuki 7.10–7.13 with the `λ^n` and
  `L ⊗_K Q̄_p` corrections) is split out of the coefficient-object definition because MS.6.10 uses it.
- **Logarithmic example.** The Frobenius normalisation `φ(e_1) = q⁻¹ e_1` is made explicit:
  horizontality forces it for `∇e_2 = e_1 dt/t`. It is the slope-difference-one case of MS.0.6, and
  the Checks place it over `E` and `E†`, where `t` is a unit, not over `K[[t]]₀`.
- **Design "Check" lines that only restated their target's statement** (for example under
  pbq-quotients, bounded-graded-formula, curve-rank) are not repeated. Every genuine design Check and
  worked example is kept, and Checks were added where a statement lacked a computed witness.
- **Corrected design Checks.** The ordinary rank-two hull example is placed on the ordinary locus. The
  Legendre bounded-quotient check is restated on the slope-filtered locus. The "nonsplit extension of
  `E†(0)` by `E†(0)`" is given explicitly for `k = 𝔽_q`, with its non-splitting computed.
- **Review notes applied.** E_η is constructed (MS.0.1). Bounded base change covers extensions sharing
  a coordinate. The opposite rank bound covers both carriers. Lemma A.1, Lemmas 3.1–3.2 and §7/App. B
  are owned. Local MS.3 statements are local and variety statements are on varieties. All 35 source
  corrections are kept, in the README's "Corrections to the sources", without process numbering.

## Sources

All texts used were read from the operator's sources cache through the sources service:

- TSU: arXiv v3, open repository.
- DAD: arXiv v4, open repository.
- OHK: arXiv v1, open repository.
- KED05: arXiv v3, open repository.
- AE: author page.
- CT11: Documenta Mathematica, publisher open access.

Two works cited only inside supplier requests are paywalled and are recorded as `uncertified` with
their locators:

- de Jong 1998, Prop. 6.4 (DOI 10.1007/s002220050266).
- Tsuzuki 1998, Thms 4.2.6 and 7.2.3 (DOI 10.1353/ajm.1998.0052; Project MUSE asks for verification).

Their statements are taken from TSU line 1047 and CT11 line 1172, where they are quoted. No
`needs-references.toml` is left, because no text needed for a statement is missing. Passages checked
include:

- TSU lines 40–126 (conjectures, Theorems 1.3–1.4).
- TSU lines 483–539 (Theorems 2.13–2.14).
- TSU lines 709–1000 (Def. 3.5 to Thm 3.27).
- TSU lines 1005–1146 (Prop. 3.29, Lemmas 3.30–3.33, §3.9).
- TSU lines 1152–1260 (§§4–5).
- TSU lines 1340–1505 (§6).
- TSU lines 1515–1960 (§7, Lemma A.1).
- DAD lines 435–674 (§§4.1–4.2).
- CT11 lines 381–390, 540–586, 996–1215.
- OHK lines 345–760.
- AE lines 402–560, 590–595, 747–760.

## Adversarial pass

Every statement written or changed, with computed instances. "OK" means both sides were computed and
agree.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Slope convention (Conv. 4) | `O(1)`; dual of `O(1)` | Frobenius `q⁻¹` → slope −1; dual Frobenius `q` → slope 1 | OK | witness Check in MS.4.8 |
| Solution Frobenius (Conv. 6, MS.0.2) | rank one, Frobenius `a` | `(φ·f)(e) = φ(f(σ⁻¹(a⁻¹)e)) = a⁻¹` | eigenvalue `a⁻¹`, slope negated | Check added |
| MS.0.1 `E_η` | `C = A¹`; lacunary series `Σ x^(n!)` | residue `k(x)`; reduction not eventually periodic over `𝔽_p` ⇒ not in `k(x)` | OK | — |
| MS.0.2 dims | unit; zero; log module | dims 1/1; 0/0; `Sol` dim 2, `Sol_0` dim 1, coefficient norm `p^r` at `n = p^r` | OK | log module Frobenius fixed to `q⁻¹` (`β = qα` with `β = 1`) |
| MS.0.3 Lemma A.1 | `W(𝔽̄_p)[1/p]`; `ℚ_p(√p)`, `σ = id`, `q = p` | `K^σ = ℚ_p`; `id ≡ a^p` holds since residue `𝔽_p`; slope of `√p` = 1/2; powers of `p` give only integer slopes | OK | — |
| MS.0.4 opposite rank bound | `E† ↪ E²` | rank Top 1 < 2, span ≠ `P` | strict inequality, equality needs span | Check replaced (old one muddled) |
| MS.0.4 | `E†(1) ⊕ E†(0) → E(0)` | `Hom_E(E(1), E(0)) = 0` ⇒ not injective | consistent with `λmax = 1 ≠ 0` | Check added |
| MS.0.4 base change step | `(E†)² → E`, `(a,b) ↦ a + αb` | injective, linearisation kernel dim 1 | the rank claim is about `Top(M)` | kept |
| MS.0.5 `Mᵇ` | unit, zero, log module | `1ᵇ = 0`; `B(0) = 0`; log: `Mᵇ = E e_1`, `B(M)` = unit | OK | log Check added |
| MS.0.6 splitting cases | log module | sub slope −1, quotient 0, `b − a = 1`, unbounded, nonsplit (`log t ∉ E`) | case 3 needs boundedness | Check rewritten with explicit slopes |
| MS.0.6 | `b − a = −1` split sum | trivially split | OK | — |
| MS.0.7 bounded ⇔ split | `L_1 ⊕ L_0`; log module; rank one | bounded; unbounded and nonsplit; isoclinic ⇒ bounded | OK | — |
| MS.0.8 base change | log module over `B′`; `B′ = B`; bounded `M` | `rank B = 1` on both sides; identity; `B′ ⊗ M` | OK | — |
| MS.0.9 PBQ | rank one; zero; `L_1 ⊕ L_0`; log | PBQ; not; not (two slopes); PBQ (`B` = unit, slope 0 = `λmax`) | OK | — |
| MS.0.10 criterion, both directions | `L_1 ⊕ L_0` → quotient `E(0)`; log → unit quotient | `λmax` 0 < 1 detects failure; 0 = 0 | OK both directions | — |
| MS.0.11 | `U = 0` | `M ⊗ 0 = 0`, never PBQ | nonzero hypothesis needed | kept |
| MS.1.1 filtration | zero; isoclinic; `L_1 ⊕ L_0` | length 0; one step; grade slopes 1, 0, nested `P_2` max slope 1 | grades, not terms | — |
| MS.1.2 graded formula | `L_1 ⊕ L_0` | `Top(G_1) ⊕ Top(G_2) = L_1 ⊕ L_0`; `Top(P_1) ⊕ Top(P_2)` = two slope-1 lines | grade form correct | — |
| MS.1.3 | `L_1 ⊕ L_0` over `E_η ⊂ E_α` | same grades | OK | — |
| MS.1.4 | `E†(1) ⊕ E†(0)`; irreducible | filtration `E†(1) ⊂ M†`; one step | OK | — |
| MS.1.5 | CT11 Ex. 5.2(3)/5.11 | not PBQ, dual PBQ, `P_1 = ⟨e_1, e_3⟩` | OK (source) | — |
| MS.1.6 growth | constant; `log(1+u)`; `λ < 0` polynomial | growth 0; `|1/p^r| = p^r ≤ (p^r+1)^1`, unbounded; class 0 by convention though bound holds | OK | — |
| MS.1.7 eigenvector bound | `λ = 0`; unit | `μ ≤ −λmax` and slopes ≥ `−λmax` ⇒ equality; `μ = 0` | OK | — |
| MS.1.8 `Sol_λ = S_(λ−λmax)` | log module over `E†` | `f_1` fixed (slope 0, growth 0); `f_2`: `(φf_2)(e_1) = φ(f_2(q e_1)) = q`, `(φf_2)(e_2) = q log t` ⇒ slope 1, exact growth 1; `Sol_0 = S_0`, `Sol_1 = S_1` | OK | Check rewritten (was on `K[[t]]₀`, where `t` is not a unit) |
| MS.1.9 | rank one Frobenius `a`; `K[[t]]₀²`, `diag(1, q)` | `Sol` eigenvalue `a⁻¹` vs `L_0` Frobenius `a`; slopes of `Sol_0`: 0, −1, not PBQ | OK | Check replaced |
| MS.2.1 | rank one; zero; constant split sum | PBQ; not; not | OK | — |
| MS.2.2 intersections | `Σ p^n x^(p^n)` on `G_m`; `A¹` | in `Â` and `E†_0`; at `∞`, `p^(−n) r^(−p^n) → ∞` ⇒ not in `E†_∞`; `k[x] = ⋂(k(x) ∩ k(α)[[x_α]])` | OK | — |
| MS.2.3 gluing | rank one, Frobenius `q` | slope 1 ⇒ no `K^σ`-representation; twist needed | OK | — |
| MS.2.4 | two copies of PBQ; slopes 1, 0 | PBQ; not | OK | — |
| MS.2.5 | `L_1 ⊕ L_0`; irreducible; proper `C` | two steps; one step; generic filtration | OK | — |
| MS.2.6 | Artin–Schreier cover, unit | `f^*O = O`, `f_*O` unit-root | OK | proof made non-circular (via MS.0.8) |
| MS.2.7 | `L_1 ⊕ L_0`; irreducible; Legendre | `B_C = M`; `B_C = Top`; Legendre slope-filtered only on ordinary `U`, top not overconvergent (else proper quotient of irreducible by RD.5.8) | OK | Check corrected (hypothesis fails on `C`) |
| MS.2.8 Legendre–Kummer | `p ≡ 1`; `p ≡ 3 mod 4` | slopes 0, 2, unit root `π_p²`; slopes 1, 1, no unit root; total rank 3 | consistent with MS.4.5 | Check added |
| MS.3.1 | rank one; zero; `E†(1) ⊕ E†(0)` | saturated; saturated, not PBQ; kernel `E†(0)` | OK | — |
| MS.3.2 | `E† → E`; `E† → E²`; `(a,b) ↦ a+αb` | quasi-sat.; not; spans with kernel dim 1 | OK | — |
| MS.3.3 | `E†(1) ⊕ E†(0) → E(0)` | not injective, `λmax` 1 ≠ 0 | hypothesis needed | — |
| MS.3.4 | isoclinic; 0; `E†(1) ⊕ E†(0)` | `Sat = M†`; 0; `E†(1)` | OK | — |
| MS.3.5 local irreducibility, both directions | `(E†)²`, `φ = [[1,1],[0,1]]`, `k = 𝔽_q` | splitting ⇒ `c^q − c = 1` in `k((t))`, no solution (constants `c^q = c`; nonconstant degree mismatch); unit-root ⇒ bounded, PBQ, saturated, top reducible | criterion says reducible: consistent | Check rewritten (existence of nonsplit extension needs non-closed `k`) |
| MS.3.6 | `E†(1) ⊕ E†(0)`, `h = id` | identity on `Sat(G_1) ⊕ Sat(G_2)` | OK | — |
| MS.3.7 | `h = 0`; log module vs unit | no iso; tops both unit, `h = id` iso, ranks 2 ≠ 1 | both hypotheses needed | Check replaced (old one muddled) |
| MS.3.8 | unit; 0; constant split sum | saturated; saturated; kernel `O(0)` on every affine | OK | — |
| MS.3.9 | log object on `G_m`; Legendre–Kummer; `O(1) ⊕ O(0)` | PBQ not sat.; sat. not PBQ; neither | independent properties | Check rewritten (old check claimed a rank-two nonsplit extension that MS.4.5 forbids) |
| MS.3.10 | rank one; 0; split sum | itself; 0; rank 1 quotient | OK | — |
| MS.4.1 | equal ranks; proper `C` | hypothesis unmet; no boundary | OK | — |
| MS.4.2 rank theorem | identity; `O(1) ⊕ O(0) → O(0)`; log object → unit | equal; kernel on sections ⇒ hypothesis fails, `λmax` 1 ≠ 0; ranks equal but hypothesis fails | implication only | — |
| MS.4.3 criterion, both directions | rank one; split sum; log object | irreducible; fails PBQ and sat.; PBQ, irreducible top, not saturated ⇒ reducible | OK | — |
| MS.4.4 | split sum, `h = id` | identity | OK | `h` convergent and global, as corrected in the source |
| MS.4.5 trichotomy | log object (`a = −1 < 0`); Legendre–Kummer (`a = 1 > 0`, rank 3) | nonsplit ⇒ PBQ, not sat.; nonsplit ⇒ saturated, not PBQ | OK | — |
| MS.4.5 rank two, `a > b` | rank-one pieces | convergent extension splits (MS.0.6, `b < a`), full faithfulness lifts | splitting holds | — |
| MS.4.6 specified map | proper `C`; `h = c·id`; log vs unit | `Top = M`; `g = c·id`, `c ∈ K^σ`; no iso | OK; saturation needed in (ii) | — |
| MS.4.7 | split sum quotient `O(0)` | kernel slope 1 > 0 | strict pointwise inequality needed | — |
| MS.4.8 dual | rank one; opposite direction | `S_min = Top = M`; roles exchanged | OK | — |
| MS.5.1 hull | 0; overconvergent `N`; ordinary rank 2 on ordinary locus | 0; `N`; hull = whole (the unit-root line is not overconvergent, since `M†|_U` stays irreducible by RD.5.112) | OK | locus made explicit |
| MS.5.2 MS(M) | `N = 0`; isoclinic ambient; ordinary | equality; genuine condition `N = Hull†`; `S_min(Hull) = N` | OK | — |
| MS.5.3 reductions | `n = 1`; `f = id` | identity; tautology | OK | induced first step `⊕F^(i*)S_1(N)` |
| MS.5.4 dual hull | `N = 0`; `N = M` | `Q† = 0`; `Q† = (M†)^∨`, hull `M` | OK | — |
| MS.5.5 | dagger-extendable `N`; `N = M` | trivial; `S_min(M)` | OK | — |
| MS.5.6 integral models | `n = 1`; `u ∈ A_1`?; `n = 2` | `B̃_1 = B_1`; `A_1 = W⟨pu⟩ ∌ u`; `p(ū_2t² − p) = ū_1²t² − p² = (ū_1t − p)(ū_1t + p)` using `ū_1² = pū_2` | OK | — |
| MS.5.7 | `s = 0`; `T = A_n/p^s` | Tor = 0; bound immediate | statement is an upper bound | Check replaced |
| MS.5.8 | `A_1 ⊂ W⟨u⟩` | `p^j u^j ∈ A_1`, `p^(j−1)u^j ∉ A_1` ⇒ order exactly `p^j`, unbounded | DAD's step fails; proposition not refuted | proof obligation stated |
| MS.5.9 | Artin–Schreier `y^p − y` | finite étale, wild at `∞` | OK | existence cited to RD.5.7 |
| MS.5.10 curve MS | ordinary example; proper `C` | hull whole, `S_min = N`; trivial | OK | — |
| MS.5.11 docile Lefschetz | unit isocrystal; dim 1; Dwork pullback along `x` on `P²`, `C̄ = {x = 0}` | `K = K`; hypothesis excluded; `H⁰(A², E) = 0`, `E|_C = O`, `H⁰` 0 → 1 | docility needed | Check made explicit |
| MS.6.1 LC | `X` a curve; rank one; two objects | `Spec k(α) → X` is a `k(α)`-point; any curve; two curves allowed | OK | Check clarified |
| MS.6.2 | `N = M`, `h = id`; `M ⊕ L` | identity; summand | OK | — |
| MS.6.3 | same curve; rank one | Cor 6.5(i) directly; equal eigenvalues | OK | target `M†` (source misprint) |
| MS.6.4 | `N = M` unit-root; nonzero slope | identity; conclusion fails without unit-root | hypothesis needed | — |
| MS.6.5 ranks | `L = K`; `M ⊗_K L`; `π_(n*)` of unit | rank equal; `rank_K M` vs `rank M/[L:K]`; `Q̄_p`-rank `n` | OK | — |
| MS.6.6 trace formula | `X = Spec 𝔽_q`, `L(λ)`, `n = 2`; non-normal cubic | both sides `λ²` (not `λ`); `L ⊗_K L ≅ L × (degree-2 factor)` | OK | `λ^n` and `L ⊗_K Q̄_p` corrections |
| MS.6.6 duality twist | `E = M∨`, `i = 0` | `H^(2d)_c(E^∨) ≅ H⁰(E)^∨(−d)`; fixed vector ↦ eigenvalue `q^d` (`O(−d)` has Frobenius `q^d`) | consistent with MS.6.10 | — |
| MS.6.7 average | `m = 1`; `m = 2`; `L²` traces | `Av f = f`; `(f+Tf)/2` invariant; `tr(e_1) = 1`, `tr(1) = 2`, two slots 2 vs 4 | divide by `m` after projection | — |
| MS.6.8 | `X` a curve, `i = id`; unit | endomorphism case of MS.4.6; identities | OK | — |
| MS.6.9 weights | `Spec 𝔽_3`, Frobenius 2 | `3^(w/2) = 2` ⇒ `w = 2 log_3 2 ≈ 1.26` | real weights required | — |
| MS.6.10 pole argument | `N = M`; constants `a ≠ b` on `Spec 𝔽_q` | pole from identity; `(1−at)⁻¹ ≠ (1−bt)⁻¹`, hypothesis fails | OK | route via poles, `L(U, M^∨⊗N) = L(U, M^∨⊗M)`, factor `det(1−tF|H^(2d)_c)⁻¹` |
| MS.6.11 | `N = M`; `m = 1` | identity; no average | OK | lift `τ ∈ End(π^*N)`, `g′ ∘ τ` |
| MS.6.12 | curve; `h = c·id` | weaker than MS.4.6(i); `c′·id` iso but only `c·id` induces `h` | existence only | hypotheses restored |
| MS.6.13 | rank one; curve | nonzero map of rank-one objects is iso; implied by MS.4.6(i) | OK | — |
| MS.6.14 | curve, `m = 1` | agrees with MS.4.6(i); `h` iso via division algebra `End(π_m^*M†)` | OK | — |

Context check: `Suggested.lean` declares nothing, so there are no `variable` blocks to audit. In the
README every theorem states its standing hypotheses in its own sentence: perfect `k` where Tsuzuki,
CT11 or Ohkubo assume it; slope-filtered realisations; nonzero `h`; constant Newton polygon in MS.5;
`σ = id_K` over `𝔽_q` in MS.6.

Generality check:

- Local and curve statements are for the general datum (`K`, `σ`, any `q`), as in Tsuzuki.
- D'Addezio's generic-field statements (MS.5.4–MS.5.8) keep his datum `K = W(k)[1/p]`, `t ↦ t^p`.
- MS.5.10 is stated for the general datum, which the Tsuzuki route supports.
- MS.0.3(1) is stated without perfect `k`, as Lemma A.1(1) allows.

## Untrusted text

No fetched paper, roadmap or pull-request text contained instructions. Nothing suspicious was
encountered.
