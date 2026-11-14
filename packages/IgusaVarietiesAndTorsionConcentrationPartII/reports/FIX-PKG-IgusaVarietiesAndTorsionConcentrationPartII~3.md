# Repair of IgusaVarietiesAndTorsionConcentrationPartII (package, round 3)

This report answers the seven findings of `reports/REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII~2.md`. I verified each one against the cited sources, the supplier roadmaps and the package text. All seven are correct and all seven are applied. `Suggested.lean` is unchanged, because none of the findings touches its four declarations. Files changed: `packages/IgusaVarietiesAndTorsionConcentrationPartII/README.md`, and the `needs` text of one gap in `packages/IgusaVarietiesAndTorsionConcentrationPartII/design/plan.json`.

## R01 (P1) — applied

Verified. Shin12 line 943–956 defines `q(G)` and the test function on the quotient by `A_{G,∞}`. AutomorphicSpectralTheory §6.19 and ArithmeticLocallySymmetricSpaces ALS.5b.4 both use `(𝔪_G, K_∞)` with `𝔪_G = 𝔤/𝔞_G`. With the full pair the rank-one torus gives `ep = 1 − 1 = 0`.

Old → new: `ep` and Matsushima used `H^*(𝔤, K_∞; π_∞)` → a Conventions paragraph fixes the reduced pair `(𝔪_G, K_∞)` with trivial central character on `A_{G,∞}^0`. That pair is now used in §10.2 (trace and `f_EP`), §10.3 (`ep`, Matsushima, the "only cohomological" sentence) and the AutomorphicSpectralTheory and ALS supplier contracts. §10.3 gains Checks: the torus, discrete series, and `q(G) = d`. The F08 constant stays.

Other occurrences: Layer 10 Examples ("`ep(1)` = Euler characteristic of the compact dual") were already consistent only with the reduced pair. No change was needed there.

## R02 (P1) — applied

Verified. BunGAndNewtonStrata §1.26 defines ordinarity by `ν = μ◇`, the Hodge average. For `Res_{E/ℚ_p}GL_2`, `E` unramified quadratic, with signatures `(1,1),(2,0)`, the unaveraged vector `((0,−1),(−1,−1))` is not Frobenius-invariant. The ordinary Newton point is `((−1/2,−1),(−1/2,−1))`.

Old → new: "`ν_b` of the `μ`-ordinary class is the dominant representative of `μ⁻¹`" → `ν_b = (μ⁻¹)◇`, the Frobenius-orbit average, with a short argument: `2ρ` is Frobenius-fixed, so `d_b = d` still holds. The BunGAndNewtonStrata contract now names `μ◇`. §8.3 gains the nonsplit Check (pairings `1 = 1/2 + 1/2`).

## R03 (P1) — applied

Verified. In the first case `F ⊗ ℚ_p = ℚ_p⁴`.

Old → new: "In neither case does `p` split completely in `F`" → the first case splits completely, with `(e,f,g) = (1,1,4)`. There, Theorem 1.1(2) asks for genericity at four primes and the auxiliary-pair condition asks at `𝔭_1` only. The second case has `(1,2,2)`: it is not completely split and is not covered by Theorem 1.1(2).

## R04 (P2) — applied

Verified. Witness: Case 1, `n = 1`, `F = ℚ(i)`, `ℓ = 3`, `S = {2, 5}`, trivial `ρ̄`. The prime `5` splits completely and is generic at both places above it, but `5 ∈ S`.

Old → new: the §8.7 API now reads "If `p ∉ S ∪ {ℓ}` splits completely …". §8.8(a) now reads "For each such `p ∉ S ∪ {ℓ}`". The `n = 1` Check said the condition "reduces to the cardinality condition"; it now says it reduces to `p ∈ Spl_{𝒦/ℚ} ∖ (S ∪ {ℓ})`. A negative-control Check with `5 ∈ S` is added, and `13 ∉ S ∪ {3}` serves as the positive case.

## R05 (P2) — applied

Verified. §8.4 defines `T_{i,v}` and `P_v` only at `q ∈ Spl_{𝒦/ℚ}`. The second bullet of §10.4 applied `P_v` at inert `q` as well.

Old → new: the bullet keeps unramifiedness at every good place. The characteristic polynomial is now stated through `rec(Π⁰_v|det|^{(1−n)/2})`, i.e. `∏(X − q_v^{(n−1)/2}x_j)`, at every good place. The image of `P_v` under the Hecke eigencharacter is stated only at split `q`. The division-algebra gap contract, in the README and in `plan.json` `needs`, now uses the same formula.

## R06 (P2) — applied

Verified. Lines 172–174 stored `S` and `K` in the datum, but the extensionality rule ignored them. The Case 1 constructor also stored an isomorphism `V ≅ B`, which is data.

Old → new: I chose the parameterized interface. Signatures, `μ` and `E` are functions of the rational datum. `S` and `K` are parameters with their own hypotheses, and `S_K` exists at every neat level (PELModuli §M1.9, newly cited). Case 1 now requires that `V` be free of rank one over `B`, which is a proposition. Extensionality lists the stored fields. A Check compares `S` with `S ∪ {q}`. In §8.2, "a set `S` as in §8.1" is named.

## R07 (P2) — applied

Verified. The §8.4 Satake image is `∏(X − q_v^{(n−1)/2}x_j)`; AutomorphicGaloisRepresentationsPartII uses the same twist (its README line 243). Witness: `n = 2`, `q_v = 7`, `x = (√7, 1/√7)` gives roots `7, 1`.

Old → new: §9.4 and §10.5 identified the Satake parameters with the Frobenius eigenvalues → the eigenvalues are `q_v^{(n−1)/2}x_j`, i.e. the parameters of `Π⁰_v|det|^{(1−n)/2}`, or the image of `P_v`. A two-root Check is added to §9.4 and to §10.5.

## Checks run

**Elaboration.** `lake env lean packages/IgusaVarietiesAndTorsionConcentrationPartII/Suggested.lean`, run from the content checkout at the pins, exited 0. The only output was two warnings, `declaration uses 'sorry'`, at lines 79 and 91. There are no `TauCeti.*` imports.

**Signatures.** A scratch copy of the file with `#check @name` appended for all four declarations elaborated with exit 0. Each elaborated type matches §§8.7–8.8:
- `F` and `L` are number fields with `[Algebra F L] [IsGalois F L]`;
- `k` is a finite field;
- `r : Gal(L/F) →* GL (Fin n) k`;
- the prime and ideal arguments are present.

No binder was lost and nothing changed, since the file was not edited.

**Dependency check.**

```text
depcheck: 236 roadmaps, 2153 edges, 0 problem(s)
```

The output has no UPWARD, CYCLE or `moved:` line.

**Citations.** `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name that resolves nowhere.

The new citations were each checked at their current text:
- AutomorphicSpectralTheory §6.19 (reduced pair `𝔪_G = 𝔤/𝔞_G`) and §6.20;
- ArithmeticLocallySymmetricSpaces ALS.5b.4 (`H^*(𝔪_G, K_∞; …)`);
- BunGAndNewtonStrata §§1.25–1.26 (the ordinary class is defined by `μ◇`);
- PELModuli §M1.9 (the adelic moduli problem at any open compact `K`);
- AutomorphicGaloisRepresentationsPartII AG2.0 (roots `q_v^{(n−1)/2}α_j`, and `rec(π_v⊗|det|^{(1−n)/2})`).

## Adversarial pass on the changed statements

| Statement | Instances | Computed values | Result | Change |
|---|---|---|---|---|
| Ordinary Newton point `(μ⁻¹)◇` (Conventions) | Split `GL_2`, `μ=(1,0)`; nonsplit `(1,1),(2,0)`; inert worked example `(1,2),(0,3)` and `(1,2),(3,0)`; `n=1` | Split: average = `(0,−1)`, pairing 1. Nonsplit: `((0,−1),(−1,−1))` → `((−½,−1),(−½,−1))`, pairings 1 = 1. Inert `(0,3)`: `((0,0,−½),(0,0,−½))`, `2ρ=(2,0,−2)` gives `1+1 = 2 = d`. Inert `(3,0)`: `((−½,−½,−1),(−½,−½,−1))` gives `1+1 = 2`. `n=1`: central, `d = 0` | Averaged form correct; unaveraged form fails Frobenius invariance | R02 |
| Reduced pair, `ep` (Conventions, §10.3) | Torus `ℂ^×` over `ℚ(i)`; Harris–Taylor `n = 2`, trivial `π_∞`; weight-2 discrete series | Torus: reduced `(1)`, so `ep = 1`; full `(1,1)`, so `ep = 0`. HT trivial: reduced `(1,0,1)` (`ℙ¹`), so `ep = 2`; full gives 0. Discrete series: reduced `H^1` of dimension 1, so `ep = −1 = (−1)^{q}`; full gives 0 | Reduced pair needed | R01 |
| `q(G) = d` | HT `n = 2`, `[F⁺:ℚ] = 2` | `dim G(ℝ) = 5+5−1 = 9`, `dim K_∞ = 2+4 = 6`, `dim G/K_∞ = 3 = 2d+1`, `q = ½(3−1) = 1 = d` | Pass | Check added |
| Complete splitting ⇒ auxiliary pair (§8.7 API) | `S = {2,5}`, `p = 5`; `p = 13`; `ℓ = 3` | `5 = (2+i)(2−i)`, `5 ∈ S`: antecedent (new) false. `13 = (3+2i)(3−2i)`, `13 ∉ {2,5,3}`: both sides true | Pass after repair | R04 |
| `n = 1` auxiliary condition | `n=1`, any `S` | All `p_τq_τ = 0`; condition = `p ∈ Spl_{𝒦/ℚ} ∖ (S∪{ℓ})` | Pass | R04 pattern |
| Worked example splitting | `F⁺` real quadratic | Split: `ℚ_p⁴`, `(1,1,4)`. Inert: `ℚ_{p²}²`, `(1,2,2)` | Pass | R03 |
| §10.4 polynomial at good places | `n=1`, `F=ℚ(i)`, trivial `π`, `ℓ=5`; `q=3` inert, `q=5` split | Inert: `Π⁰_v` trivial, twist exponent 0, `X − 1`. Split: `P_v = X − T_1`, `T_1 ↦ 1`, `X − 1`. Both agree | Pass; `P_v` no longer used at inert `q` | R05 |
| Satake scaling (§§9.4, 10.5) | `n=2`, `q_v=7`, `x=(√7,1/√7)`; `n=1` | Scaled roots `7, 1`, `X²−8X+7`, matching `S(T_1)=8`, `7S(T_2)=7`. Unscaled `X²−(8/√7)X+1`. `n=1`: factor `7^0 = 1` | Pass after repair | R07 |
| Datum extensionality (§8.1) | Case 1, `n=1`, `ℚ(i)`, `S={2}` versus `{2,5}`, `ℓ=3` | Datum identical; `5 ∈ S`: false versus true; `𝕋^{{2}}` has the factor at 5, `𝕋^{{2,5}}` does not | Parameters distinguished, rule now true | R06 |
| Case 1 field "`V` free of rank one" | `n=1`, `V=B=F` | Property holds; any two isomorphisms `V ≅ B` differ by `B^×`, so a stored isomorphism is genuinely extra data | Proposition, not data | R06 pattern |
| Headlines §8.8(a)/(b) (Lean, unchanged) | Re-elaborated | Types identical to the previous signatures | No change | None |

## Ownership, overlaps and sources

- **Ownership.** No new carrier or target was introduced; every repair corrects a statement this package already owns. The new conventions are consumed from AutomorphicSpectralTheory §6.19, ArithmeticLocallySymmetricSpaces ALS.5b.4 and BunGAndNewtonStrata §1.26, all earlier in the merge order. No notion moved down.
- **Overlaps.** `scratch/overlaps.md` lists no open pull request that changes this roadmap and no dropped id.
- **Sources.** No source was fetched and `needs-references.toml` is not needed. All locators used are in the five manifest entries.

## For the maintainer

- No name in `Suggested.lean` changed, and no name other roadmaps cite changed.
- The `needs` text of the `division-algebra-unitary-base-change` gap in `design/plan.json` changed: Frobenius polynomials are now stated through `rec(Π⁰_v|det|^{(1−n)/2})`. Its slug, supplier and section are unchanged. The README contract line matches the new text.
- §8.1 now treats `S` and `K` as parameters, not stored fields. A consumer that builds the compact datum should pass them separately.
