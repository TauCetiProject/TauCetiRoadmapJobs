# FIX-DESIGN-FourierDeligneTransform~2

One review was settled: REV-DESIGN-FourierDeligneTransform, findings F01–F09. Every finding was checked against the line-numbered sources, the sibling roadmaps (on main, or at the head of their open pull requests through `roadmaps show` and `roadmaps grep`) and the Mathlib and Tau Ceti pins. Files changed: `packages/FourierDeligneTransform/design/README.md`, `packages/FourierDeligneTransform/design/plan.json` and `packages/FourierDeligneTransform/sources.toml`.

## F01 (P2) — applied differently

The gap is real. The README took breaks, slopes and Swan conductors for Galois groups of henselian traits from ArithmeticGaloisRepresentations §3.1, which is stated only for complete fields (its "conductor setting", head line 2444). Nothing on main or at an open head transports the upper-numbering filtration from a general henselian trait to its completion. The nearest statements are:
- EtaleCohomologyFoundations §F.3a (inertia only);
- AdicEtaleGeometry §A1.0.5 (finite étale algebras only);
- RamificationOfCompleteDiscretelyValuedFields §4a.3 (only `K^ur` inside its completion).

**Change.** New §2.7 target (plan `2.7.1`): for every henselian DVR with perfect residue field, restriction `Gal(K̂^sep/K̂) → Gal(K^sep/K)` is an isomorphism matching inertia, wild inertia and `G^u` (`u ≥ 0`). It has a route, `*Needs:*` and three Checks. §5.1, §5.6, Conventions, Scope and suppliers cite it; AdicEtaleGeometry §A1.0.5 was added.

**Where this differs from the suggested repair.**
1. **No excellence hypothesis.** The review says the two Galois groups differ for a non-excellent trait. That is false. Base change `B ↦ B ⊗_K K̂` is an equivalence of finite étale algebras for every henselian DVR (AdicEtaleGeometry §A1.0.5 (a) with `t = π`, `I = 𝔪`; equivalently Krasner's lemma, Mathlib `IsKrasner.of_completeSpace` in `Mathlib/Analysis/Normed/Field/Krasner.lean`). So for finite Galois `L/K`, `L ⊗_K K̂` is a field with the same Galois group. `O_L` is dense in `O_{L̂}`, so the lower-numbering index `i(σ)` and hence both filtrations agree. Separability of `K̂/K` is never used.
2. **The traits are not narrowed.** LAU87 (2.1.1), lines 684–688, admits every henselian `R` with `k{π} ⊂ R ⊂ k[[π]]`, and some of these are not excellent. The README Check gives one: the henselization of the valuation ring of `k(π, f^p) ⊂ k((π))`, with `f` transcendental over `k(π)`. Its completion contains `f`, which is purely inseparable over `K`, and the comparison still holds. So §5.6 keeps all henselian traits; it now says "over `k`, residue field `k`, not necessarily excellent".
3. **Placed in §2.7, not §5.1.** The first use is §2.7, which takes the break of `ℒ_ψ(f)` at `∞` from ArithmeticGaloisRepresentations §3.7 at the henselization. Putting the target in Layer 5 would leave Layer 2 depending on a later layer.

In plan.json, `target:2.7.1` was added as a prerequisite of 2.7, 5.1 and 5.1.2.

## F02 (P2) — applied

The finding is right, and the source agrees: LAU87 (2.2.1), line 839, takes `X` connected.

**Change.**
- §5.1 now reads "smooth connected curve (so irreducible)", with `rk(K)` the rank at the generic point.
- The Euler–Poincaré formula now states `χ(X_{k̄}) = C(2 − 2g)`, citing LAU87 lines 839 and 868–875.
- The base-extension API bullet is now stated per connected component.
- New Check: the `ℙ¹ ⊔ ℙ¹` counterexample (`−2` against `−4` or `0`), and `ℙ¹_{𝔽_{q²}}` over `𝔽_q` (`C = 2`, both sides `−4`).
- plan.json 5.1 and 5.1.1 updated, plus a new test.

## F03 (P3) — applied

The proof identity `q(e) + ⟨e, 2e'⟩ = q(e + a⁻¹e') − q'(e')` holds for every symmetric `a`, and LAU87 (1.2.3.3), lines 488–494, has no parity hypothesis.

**Change.** "for `p` odd" became "in every characteristic", with the identity and the shearing automorphism written in. The false Check was replaced by the two `p = 2` computations. plan.json 3.6: the statement now says "in every characteristic" and the hypothesis "p odd for the quadratic formula" was deleted. The other parity uses (§3.4 sign witness, §5.3 and §5.5 `ℒ_ψ(x²)`, §2.1 `μ_2`, the new §2.7 Check) genuinely need odd `p` and were kept.

## F04 (P3) — applied

The finding is right: by ESDE (7.3.4), lines 7244–7249, `ℒ_ψ(x)` fails Elem(2) at `t = −1`.

**Change.** The §5.3 Check now says `ℒ_ψ(x)` is neither elementary nor Fourier. It adds `j_!(ℒ_χ|_{𝔸¹∖{0,1}})` as an example that is elementary but not Fourier: the stalk at `1` is `0`, against `Λ` for `j_*j^*`. plan.json test `fs_constant_nonexample` updated to match.

## F05 (P3) — applied

The finding is right. LAU87 line 2620 deduces the identification from (2.3.2), (2.4.2.1)(ii) and (2.5.3.1)(i), all of which come after §5.5's material.

**Change.**
- §5.5 keeps the sequence with `R^{−1}Φ_{0'}(K')` as third term; `5.6` left its `*Needs:*`.
- `R^{−1}Φ_{0'}(K') ≅ 𝔉^{(∞,0')}(F_∞)` moved into §5.6's comparison.
- The unramified sequence moved after the tame values.
- §5.5's Kummer Check no longer uses §5.6.
- plan.json 5.5, 5.6.1, 5.6.2 updated; 5.6.2 gains `target:5.5`.

## F06 (P3) — applied differently

The finding is right: `AddChar.IsPrimitive` (Mathlib `AddCharacter.lean` line 60) fails on the zero ring.

**Change.**
- The hypothesis "for nonzero `Λ`" is now on the primitivity clause, with the one-line reason.
- The classification clause now requires `Spec Λ` connected, "in particular nonempty". Uniqueness of `c` also fails for `Λ = 0`, so this repairs the same pattern.
- Conventions: coefficient rings are nonzero.
- New Check for `Λ = 0`; plan.json 0.1 updated, plus a new test.

**Why differently.** The nonzero hypothesis was not put into the definition itself. Doing so would break the stated API that nondegeneracy survives every ring map and reduction modulo every ideal: reduction modulo the unit ideal gives the zero ring.

## F07 (P3) — applied

LAU87 lines 144–149 give only the classification of `ℚ̄_ℓ`-valued characters.

**Change.** In plan.json 0.1.1 the locator became "KL85 Appendice (2.4), lines 442–446; LAU87 (0.2), lines 144–149 for the classification; orthogonality is proved here". The same target's statement and hypotheses gained "Spec Λ connected" for the classification clause, matching the README. The README API now cites LAU87 lines 148–149.

## F08 (P3) — applied differently

**Change.** One Scope clause names AutomorphicLFunctionsAndLocalFactors §§AL.3.10.2 and AL.3.10.4. Their local systems are the pullbacks of `ℒ_χ` for `G = Pic⁰_D` along `x ↦ [x] − a`.

**Why differently.** The review says the two constructions invert the character. That is wrong: the normalizations agree.
- AL.3.10.2 requires `χ(ϖ_v) = ρ(Frob_{v,geom})`.
- Here the geometric Frobenius acts by `χ(N x)`.
- At a point `v` of degree `d` both give `χ([v] − d·a)`. Example: on `E/𝔽_q` with `a = [O]`, both give `χ(x)` at a rational point `x`.

FunctionFieldArithmetic §4.9's "inverts" compares geometric Frobenius with the arithmetic deck translation `+([v] − d·a)`. Our §2.1 says the same thing: the arithmetic Frobenius translates by `+N(x)`.

## F09 (P3) — applied

The finding is right: only SheafConvolutionOnAbelianVarieties and CharacterSumsOverFiniteFields cite this roadmap (`roadmaps grep 'FourierDeligneTransform'`).

**Change.**
- The bullets for KloostermanMomentsAndPotentialAutomorphy and ExponentialSumsAndCircleMethodPartII were deleted.
- CongruenceSpectralGap is now described as able to import the weight-free part of its contract with DeligneWeightsAndPurity (CongruenceSpectralGap head line 128); the weight-zero clause stays with DeligneWeightsAndPurity.
- plan.json `consumers` now has three entries.

All five original consumers sit after the candidate's position (after EtaleDualityAndPerverseSheaves, order line 96), so direction was never the problem.

## Checks run

- **Dependency gate** (`tauceti-roadmap … gate --candidate …/design/README.md --only FourierDeligneTransform …`), exact output:

      candidate: FourierDeligneTransform is not in the merge order yet; checked as if placed after EtaleDualityAndPerverseSheaves (the intake inserts it when its design is accepted)
      depcheck: 240 roadmaps, 2351 edges, 0 problem(s)

  No UPWARD or CYCLE line.
- **Citations** (`roadmaps resolve` on the edited README): cross-roadmap citations found nowhere, none; Lean names found nowhere, none. This covers the new citations AdicEtaleGeometry §A1.0.5, RamificationOfCompleteDiscretelyValuedFields §4a.3, AutomorphicLFunctionsAndLocalFactors §§AL.3.10.2 and AL.3.10.4, and Mathlib `IsKrasner.of_completeSpace`, which I read at the pin.
- **Lean:** there is no `Suggested.lean` at the design stage, so nothing was elaborated and no `#check` pass applies.
- **Gate failures:** none were listed for this round.
- **plan.json:** valid JSON in its original formatting; 46 targets, 60 tests.

## Adversarial pass on changed or added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| 2.7.1 Galois comparison | `R` complete; `k{π}`; non-excellent `R`; `k[π]_(π)`, `p` odd | identity; `α^p−α=π^{−m}` jump `m` both sides; `f∈K̂`, `f^p∈K`, `f∉K^h`, restriction bijective; `√(1+π)∈K̂∖K`, not onto | holds with henselian, fails without | new target, 3 Checks |
| 2.7.1 filtrations | finite Galois `L/K` | `i(σ)` on `O_L` equals `i(σ)` on `O_{L̂}` (density, continuity), so `G_i`, Herbrand function and `G^u` agree; `G^0` = inertia, `G^{0+}` = wild inertia | holds | none |
| 5.1.1 Euler–Poincaré | `ℙ¹⊔ℙ¹`, `Λ[1]⊔0`; `ℙ¹_{𝔽_{q²}}`/`𝔽_q`; `i_{x*}Λ` on `ℙ¹`; `j_!ℒ_ψ(x)[1]` | `−2` vs `−4`/`0`; `−4 = 0−4·1`; `1 = 1−2·0`; `0 = 2−2·1` | needs connected `X`; holds then | hypothesis added |
| 3.6 quadratic | `p=2,r=1,a=1`; `p=2,r=2`, antidiagonal `a`; `p=3,r=1,a=1` (traces) | `0 = 0`; `Λ(−2)[−2]` both sides; `−ψ(−x'²)g = ψ(−x'²)(−g)` | holds for all `p` | parity removed |
| 5.3 elementary/Fourier | `ℒ_ψ(x)`, `t=−1`; `j_!(ℒ_χ|_{𝔸¹∖{0,1}})` | `H²_c = Λ(−1) ≠ 0`; `H⁰_c = 0`, `H²_c = 0` for all `t` (tame monodromy at 0), stalk at 1: `0` vs `Λ` | old Check false; new Check true | Check replaced |
| 5.5/5.6 order | `K = Λ[1]`; Kummer `j_!ℒ_χ[1]` | sequence `0→0→0→Λ(−1)→Λ(−1)→0` without §5.6; `F'_{η̄_{0'}} = R^{−1}Φ_{0'} = V'_{χ⁻¹}⊗G(χ,ψ)` from §5.4 | acyclic, consistent | moved |
| 5.6.2 unramified case | `F = Λ`, `U = A` | `𝔉^{(∞,0')}(Λ) = Λ(−1)`; `0→H¹_c=0→0→Λ(−1)→H²_c=Λ(−1)→0` | holds | moved here |
| 0.1 primitivity | `Λ=0`; `ℤ/7, ψ(1)=2`; `ℤ/49, ψ(1)=18` | `0` a unit, `IsPrimitive` false; `ψ(a)∈{2,4}≠1`; `18,30≠1` | needs `Λ≠0` | hypothesis on clause |
| 0.1 classification | `Λ=0`; `ℤ/7×ℤ/7` | all `c` give one character; pairs `c_1≠c_2` not of the form | needs `Spec Λ` connected (nonempty) | made explicit |
| Scope: normalization | `E/𝔽_q`, `a=[O]`, rational `x`; degree-`d` `v` | ours `χ(x)`, AL `χ_AL(ϖ_x)=χ([x]−[O])=χ(x)`; both `χ([v]−d·a)` | same normalization | clause added |

## For the maintainer

- **New target.** plan.json target `2.7.1` (`HenselianTrait.completion_ramification`) is new. This roadmap owns the general henselian/completion ramification comparison: no roadmap on main or at an open head states it beyond the special cases cited in Scope. No name other roadmaps cite changed: `artinSchreierSheaf`, `kummerSheaf` and §1.2 are untouched.
- **New supplier.** AdicEtaleGeometry (on main), §A1.0.5. No notion was moved down from a later roadmap.
- **Ownership tension (not a finding).** CongruenceSpectralGap (head, line 19) calls itself the single owner of the rational-adic curve Euler–Poincaré formula with Swan conductors (§4.2b). This roadmap takes that formula from EtaleDualityAndPerverseSheaves §5.2 `curveEulerPoincareSwan`. The two roadmaps should agree on one owner.
- **Ownership checks** were run against main and the open roadmap heads with the `roadmaps` tools.
- **Sources.** No new source key: `sources.toml` only gained `(2.1.1)` in the LAU87 locator, `2.7.1` in its `cited_for`, and `0.1.1` in KL85's `cited_for`. No text needed to be requested.
- **Untrusted text.** Nothing in the review or the fetched pages contained instructions.
