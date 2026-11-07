# FIX-DESIGN-GaloisActionOnEtaleCohomology~2

Repair round for the review `REV-DESIGN-GaloisActionOnEtaleCohomology` of the design (seven findings, all P3). Files edited: `packages/GaloisActionOnEtaleCohomology/design/README.md`, `packages/GaloisActionOnEtaleCohomology/design/plan.json`, `packages/GaloisActionOnEtaleCohomology/sources.toml`. There is no `Suggested.lean` at the design stage, so no Lean statement changed and no `#check` pass was run.

## REV-DESIGN-GaloisActionOnEtaleCohomology/F01 (P3) — applied

Verified: the inverse limit of the discrete groups `∏_m ℤ/ℓ^n` has the kernels `ℓ^n ∏_m ℤ_ℓ` as a base of open subgroups, which is the `ℓ`-adic topology; `ℓ ∏_m ℤ_ℓ` contains no `∏_{m>M} ℤ_ℓ`, so it is not product-open, and `∏_m ℤ/ℓ` is an infinite discrete quotient, so the group is not compact. §3.1 Check: "carries the product topology: it is compact but not finitely generated" → the `ℓ`-adic inverse-limit topology, strictly finer than the product topology, not compact, not finitely generated. Same change in `plan.json`, target 3.1, test on the countable union.

## REV-DESIGN-GaloisActionOnEtaleCohomology/F02 (P3) — applied

Verified: with the §1.2 rule `a^♮(δ_g) = δ_{sg}`, a cyclic group gives `b^♮ a^♮ = a^♮ b^♮`, so the old Check did not discriminate. §1.1 last Check: cyclic cubic `L/K` → `L/K` Galois with group `S₃` (the splitting field of `T³ − 2` over `ℚ_2`; `ζ_3` generates the unramified quadratic subextension, so the degree is 6), `σ, τ` restricting to `s` of order 2 and `r` of order 3, `(a∘b)^♮ = b^♮∘a^♮` sends `δ_1` to `δ_{rs}`, the wrong order to `δ_{sr} ≠ δ_{rs}`, agreeing with `a∘b = (τσ)_Y` and `ρ(τσ)δ_1 = δ_{rs}`. Same change in `plan.json`, target 1.1, test "composition". The §0.3 cyclic-cubic Check is untouched: it separates `g∘τ₀` from `g⁻¹∘τ₀` and does not depend on commutativity.

## REV-DESIGN-GaloisActionOnEtaleCohomology/F03 (P3) — applied

Verified: `id_X × Spa(τ̂⁻¹) = (τ⁻¹)_X`, whose `♮` is `ρ(τ⁻¹) = ρ(τ)⁻¹`; from `g∘σ_X = (τστ⁻¹)_X∘g` one gets `ρ(σ) g^♮ = g^♮ ρ(τστ⁻¹)`, hence the displayed identity with `g^♮ = ρ(τ)⁻¹`, while `g^♮ = ρ(τ)` would give `ρ(σ) = ρ(τ²στ⁻²)`. §1.3 first Check: "the isomorphism is `ρ(τ)`" → "`id_X × Spa(τ̂⁻¹) = (τ⁻¹)_X`, so the isomorphism is `ρ(τ⁻¹) = ρ(τ)⁻¹`", with the wrong reading named; displayed identity kept. Same in `plan.json`, target 1.3, test on (f).

## REV-DESIGN-GaloisActionOnEtaleCohomology/F04 (P3) — applied

Complexes renamed throughout: `K, L ∈ D⁺(…)` → `M, N` in Summary, Scope, Conventions (new line: complexes are `M`, `N`, pro-étale `P`; `K`, `L` are fields only), How to read, §§1.1–1.4, 2.1–2.4, 2.6 (`(M_n)_n`), 4.2 (`M^an`) and all Checks (`M = ℤ`, `M = μ_n`, `M = ℱ`, `M = ℤ/n`). To avoid new clashes, the generic complex on `Y` in §1.1's definition of `a^*` is `W`, the pro-étale complex in §1.2 is `P`, the `ℤ_ℓ`-module of §3.3 is `A`, and §4.3 (b) names `H := H^i(X_C, ℤ_ℓ(j))` instead of an undefined `M`. Same renaming in every statement, hypothesis, api and test of `plan.json` (26 replacements). The §4.2 Check now reads "`Y = ℙ¹_K` and `M = ℤ/n`".

## REV-DESIGN-GaloisActionOnEtaleCohomology/F05 (P3) — applied

Verified at the pins and in the extraction: berkovich1993 marker 125 heads printed page 128 (line 4579), marker 140 printed 143, marker 147 printed 150; Theorem 7.1.1 at line 4584, Corollary 7.4.4 at 5110, Corollary 7.5.4 at 5339. Mathlib: `IntermediateField.fixingSubgroup_isOpen` line 170, `spectralNorm.normedField` 755, `UniformSpace.Completion.instField` 148, `IsAlgClosed.of_denseRange` 46, `continuousSMul_iff_stabilizer_isOpen` 299; Tau Ceti `PadicTateTwist` 88. README §4.2 and References: pages 125/147 → 128/150; the six line numbers corrected; `plan.json` target 4.2 locator likewise. Same pattern: `CategoryTheory.Sheaf.H` and `Sheaf.H.map` are at lines 57 and 112 at the pin (README had 56, 111); corrected. The "printed page" remark in the earlier design report is in a file this job may not edit.

## REV-DESIGN-GaloisActionOnEtaleCohomology/F06 (P3) — applied

Removed "uncertified" from the eleven README citations and the References, and from the two `plan.json` locators ("Arcata; Rapport §§1–2", "Chapter I, §2"); the manifest keeps the status. Scope line: "(later in the merge order)" → "which this roadmap does not supply". §3.1: the label "API:" → "Prove the following."

## REV-DESIGN-GaloisActionOnEtaleCohomology/F07 (P3) — applied

Verified at the head of ClassicalAdicEtaleCohomology's pull request: §11.1 states finite generation of `H^q((X,Σ), F)` for qcqs `(X,Σ)` over `Spa(k,k⁺)`, `k` separably closed complete, `f` locally algebraically of finite type, `B` noetherian killed by `n` prime to the residue characteristic, `F` constructible (Huber, Proposition 6.1.1). Gap bullet and `plan.json` `gaps[0].detail` now record that §11.1 covers the locally algebraically finite-type qcqs spaces and that the gap is the proper spaces without such a presentation; the `needs` sentence is unchanged. §4.4 (d) cites §11.1 for that subcase (constant sheaf `ℤ/ℓ`, `B = ℤ/ℓ`) and the gap for the rest; §11.1 added to the supplier contract, the Scope import list, §4.4's *Needs*, Layer 4's Dependencies, and the `plan.json` prerequisites and supplier sections. The huber1996 entries in the References and in `sources.toml` now list Proposition 6.1.1 (cited through the supplier's restatement; the text remains uncertified).

## Checks

Dependency gate, after the edits:

    candidate: GaloisActionOnEtaleCohomology is not in the merge order yet; checked as if placed after PadicDifferentialEquationsAndRigidCohomology (the intake inserts it when its design is accepted)
    depcheck: 242 roadmaps, 2368 edges, 0 problem(s)

No UPWARD or CYCLE line. `roadmaps resolve` on the edited README: no cross-roadmap citation and no Lean name found nowhere. `plan.json` parses as JSON and `sources.toml` as TOML. No gate failures were listed for this round. No source was fetched; no `needs-references.toml` was written. Ownership against open pull requests was not re-checked beyond the review's own check (no new object was introduced).

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §3.1 Check, topology of `∏_m ℤ_ℓ` | basic opens of the limit; `ℓ ∏ ℤ_ℓ` against product-open subgroups; quotient by `ℓ` | kernels of `∏ ℤ_ℓ → ∏ ℤ/ℓ^n` are `ℓ^n ∏ ℤ_ℓ`; a product-open subgroup contains `∏_{m>M} ℤ_ℓ`, and the unit vector `e_{M+1} ∉ ℓ ∏ ℤ_ℓ`; `∏ ℤ_ℓ / ℓ ∏ ℤ_ℓ = ∏ ℤ/ℓ`, infinite discrete | ℓ-adic, strictly finer, not compact | F01 |
| §1.1 composition Check, `S₃` | `K = ℚ_2`, `L` the splitting field of `T³ − 2`; `s` of order 2, `r` of order 3 | `[ℚ_2(2^{1/3}) : ℚ_2] = 3` (Eisenstein), `ζ_3 ∉ ℚ_2(2^{1/3})` since `ℚ_2(ζ_3)/ℚ_2` is quadratic unramified, so `[L : K] = 6`; `a` sends component `g` to `s⁻¹g`, so `a^♮ δ_g = δ_{sg}`; `b^♮ a^♮ δ_1 = δ_{rs}`, `a^♮ b^♮ δ_1 = δ_{sr}`; `(a∘b)(g) = (rs)⁻¹ g`, so `(a∘b)^♮ δ_1 = δ_{rs}` directly; `rs ≠ sr` in `S₃` | discriminates the order | F02 |
| §1.3 (f) Check | `K̄′ = K̄`, `τ ∈ G_K`; `g = id × Spa(τ̂⁻¹)` | `g = (τ⁻¹)_X`, `g^♮ = ρ(τ)⁻¹`; `g∘σ_X = id × Spa(σ̂τ̂⁻¹) = (τστ⁻¹)_X∘g`; `♮` gives `ρ(σ)ρ(τ)⁻¹ = ρ(τ)⁻¹ρ(τστ⁻¹)`; with `ρ(τ)`: `ρ(σ) = ρ(τ²στ⁻²)`, false for `σ, τ` non-commuting | identity right, map named correctly | F03 |
| §4.4 (d) via §11.1 | `X` proper, `X_C` locally algebraically of finite type; `ℓ` invertible in `𝒪_K` | proper ⇒ qcqs; `B = ℤ/ℓ` noetherian killed by `ℓ`, `ℓ` prime to the residue characteristic; constant `ℤ/ℓ` constructible; `Σ = X`; conclusion `H^q` finitely generated over `ℤ/ℓ`, hence finite | hypotheses of §11.1 met | F07 |
| Renaming `K → M`, `L → N` | every statement of §§1.1–2.6, 4.2 | no occurrence of a complex `K`, `L`, `K_C`, `K_L`, `K_n`, `K^an`, `L_C` remains (grep); the §3.3 module and §4.3 (b) quotient now have their own letters | no statement changed meaning | F04 |

## For the maintainer

- No name that other roadmaps cite changed; this roadmap has no Lean file yet.
- The gap `proper-rigid-finiteness` keeps its slug, supplier (ClassicalAdicEtaleCohomology §9.7) and `needs` sentence; only its detail now records §11.1.
- The earlier design report's "printed page" remark (F05) is not in a file this job may edit.
