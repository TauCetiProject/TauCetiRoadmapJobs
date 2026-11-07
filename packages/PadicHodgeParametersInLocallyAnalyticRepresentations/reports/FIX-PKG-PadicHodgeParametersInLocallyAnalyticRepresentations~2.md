# FIX-PKG-PadicHodgeParametersInLocallyAnalyticRepresentations~2

Repair round for the findings of `REV-PKG-PadicHodgeParametersInLocallyAnalyticRepresentations`
(four findings, one P2 and three P3). Files changed: `packages/PadicHodgeParametersInLocallyAnalyticRepresentations/README.md`
and the `needs` sentence of the gap `split-gln-harish-chandra` in
`packages/PadicHodgeParametersInLocallyAnalyticRepresentations/design/plan.json`. `Suggested.lean`,
`metadata.toml` and `sources.toml` are unchanged.

## REV-PKG-PadicHodgeParametersInLocallyAnalyticRepresentations/F01 (P2) — applied

Verified. DING25 line 2286–2289 writes `U(t_{Σ_K})^{W_{n,K}}` with no action named and normalises
μ ↔ ξ_{μ−θ}; line 1467–1471 takes λ = h − θ dominant for the upper Borel and L(λ) its highest-weight
module, so ξ_{μ−θ} is evaluation at μ − θ + ρ in the ordinary invariants, and ρ − θ = ((n−1)/2)(1,…,1)
is fixed by every permutation. The dot-invariants in μ − θ are therefore the ordinary invariants in μ,
and "dot action" in the contract contradicted the normalisation.

Old → new: README supplier contract (LieHighestWeight gap): "acting by the dot action, normalised so
that …" → "acting by the ordinary permutation action on `t_{Σ_K}`, normalised so that …", followed by
the transport argument (dot action along μ ↦ μ − θ, ρ − θ central, orbits agree, invariant ring = the
symmetric polynomials per σ-block as in §2.6). `design/plan.json` `gaps[2].needs` rewritten to the
same contract. §2.6 fourth Check extended by the computed n = 2 witness (h = (3,1), λ = (3,2),
e_1, e_2 = 4, 3 at h and 5, 21/4 at λ + ρ; the dot-orbit in h would pair (3,1) with (0,4), whose
character has e_2 = 9/4). Pattern: the only other "dot action" in the README (line 160) describes
what LieHighestWeight Layer 7 itself provides and is correct as a description of that supplier (its
README line 35 and 947–950 name dot and linear invariants); §2.6 prose already used the ordinary
invariants.

## REV-PKG-PadicHodgeParametersInLocallyAnalyticRepresentations/F02 (P3) — applied

Verified with `roadmaps grep --fixed` on each of the seven names: none occurs in
PhiGammaModulesAndIwasawaCohomology at its head; hits are only in consumers
(LocalGaloisDeformationRings, PadicHodgeTheory, ModularityAndLanglandsExtensions,
CompletedCohomologyAndLocalGlobalCompatibility). The cited sections exist at the head (headings
§1.0, §1.2, §3.4a, §3.6, §7.1, §7.3, §7.4, §7.5) and carry the objects; §7.1 writes the rank-one
module `R_{E,K}(δ)` and sets ε = N|N|; §7.4 states the de Rham ⇔ locally algebraic criterion for
field coefficients.

Old → new: the seven backticked names deleted; each section cited by content (étale realisation with
coefficient algebras; relative modules over a finite local A and their étale equivalence; Herr complex
and Galois comparison; rank-one modules `R_{K,E}(δ)`, "written `R_{E,K}(δ)` there", and ε; weights over
Artinian coefficients; the rank-one de Rham criterion; triangulations). §2.5 *Needs*:
"`characterModule`, the Tate character ε" → "the rank-one modules `R_{K,E}(δ)` and the Tate
character ε". No other occurrence of the names in the README (grep).

## REV-PKG-PadicHodgeParametersInLocallyAnalyticRepresentations/F03 (P3) — applied

Verified: `BPair`, `WdRPlus`, `bergerModification` occur nowhere in PadicHodgeTheory at its head
(`BPair` hits there are `PG.RelativeBPair`, a different object of a different supplier). Its §4.5
states that the Galois B-pair with its exact tensor equivalence is PhiGammaModulesAndIwasawaCohomology
§1.6's (heading "1.6 Cyclotomic equivariant sheaves and operations" exists at that head) and adds the
labelled positive lattice; §5.2 describes Berger's modification without a Lean name.

Old → new: "§4.5 (`BPair` …, `WdRPlus`), §5.2 (`bergerModification`)" → "§4.5 (the Galois B-pair of a
Robba module over a finite coefficient field, imported there from PhiGammaModulesAndIwasawaCohomology
§1.6 with its exact tensor equivalence with Robba modules, and its labelled positive de Rham
lattices), §5.2 (Berger's modification of a filtered module with finite descent)". The gap paragraph
`embedding-selective-modification` is unchanged.

## REV-PKG-PadicHodgeParametersInLocallyAnalyticRepresentations/F04 (P3) — applied

Verified: A_D ≅ `TrivSqZeroExt E Q^∨` and R_D/𝔪² ≅ `TrivSqZeroExt E Ext¹(D,D)^∨`; for any linear
f : M → N the map (a, m) ↦ (a, f(m)) is an algebra map of trivial square-zero extensions, so a linear
surjection Ext¹(D,D)^∨ ↠ Q^∨ gives an abstract algebra surjection and the old clause was false. The
true statement is about the first projection of the fibre product: its kernel is the kernel of
A_0 ↪ `R_{D,g}/𝔪²`, which is zero, and its cotangent map is Q^∨ ↪ Ext¹(D,D)^∨ with cokernel
Ext¹_0(D,D)^∨.

Old → new (§5.1): "A_D is a subalgebra of R_D/𝔪² and not in general a quotient of it" → "the natural
map A_D → R_D/𝔪², the first projection of the fibre product, is injective, dual to the surjection
Ext¹(D,D) ↠ Q, and is not surjective when Ext¹_0(D,D) ≠ 0 (n = 3, d_K = 1: dimensions 10 and 11)".
No other "quotient of it"/"subalgebra" claim in the README (grep).

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Contract: ordinary invariants ↔ μ ↦ ξ_{μ−θ} | n = 2, K = ℚ_p, h = (3,1); n = 3 (ρ − θ) | ρ − θ = (1/2, 1/2); n = 3: (1, 1, 1); e_1, e_2 at h: 4, 3; at λ + ρ = (7/2, 3/2): 5, 21/4 = 3 + 4/2 + 1/4; dot-orbit of h in h: (0, 4), λ + ρ = (1/2, 9/2), e_2 = 9/4 ≠ 21/4 | holds; the dot action in h gives a different character | contract and Check rewritten |
| Contract: Borel convention | L(λ) for B vs B⁻ | B: ξ_λ = ev at λ + ρ, ρ − θ constant; B⁻: ev at λ − ρ, −ρ − θ = (2i − (n+3)/2)_i not constant | holds only for the upper Borel (DING25 line 1467–1471: λ dominant, h strictly dominant) | Borel named in the contract |
| §2.6 prose "Jacobian of the elementary symmetric polynomials at h" | n = 2 regular/non-regular | det = h_1 − h_2: 2 at (3,1), 0 at (1,1) | consistent with the ordinary invariants in h | none |
| §5.1 natural map A_D → R_D/𝔪² | n = 1; n = 3, d_K = 1 | n = 1: Ext¹_0 = 0, dims 2 = 2, bijective; n = 3: 10 ↪ 11, cokernel of the cotangent map Ext¹_0^∨ of dim 1 | holds | clause rewritten |
| §5.1 abstract surjection R_D/𝔪² ↠ A_D | linear surjection Ext¹^∨ ↠ Q^∨ | (a,m)(b,n) = (ab, an + bm) preserved by (a,m) ↦ (a,f(m)) | exists, so the old clause was false | clause rewritten |
| PhiGamma §7.4 criterion as cited | δ = x_σ^k unramified-twisted; δ smooth | locally algebraic in both cases, de Rham; a non-locally-algebraic δ (K = ℚ_p, δ = exp of a non-integral multiple of log) is not de Rham | the cited content is the field-coefficient criterion, as §7.4 states it | none |

## Checks

- `lake env lean` on `packages/PadicHodgeParametersInLocallyAnalyticRepresentations/Suggested.lean`
  from the content checkout: exit 0, no output (the file declares nothing; no `#check @name`
  comparison applies, and no Lean name was added or removed).
- Depcheck (`gate --depcheck … --movable`): `depcheck: 235 roadmaps, 2257 edges, 0 problem(s)`; no
  UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README after the edits: "Lean names found nowhere: None". The one
  cross-roadmap lead (TriangulineVarietyAndItsLocalModel §9.1) is a board design accepted into the
  merge order and not yet a pull request, so the resolver cannot see it; it is a supplier earlier in
  the order, not a defect.
- No gate failures were listed for this round.

## Notes for the maintainer

- No Lean name of this roadmap changed (none exists). No name other roadmaps cite changed.
- The contract `split-gln-harish-chandra` now asks LieHighestWeight for the ordinary (linear)
  permutation invariants of `U(t_{Σ_K})`, which its Layer 7 already distinguishes from the
  dot-invariants; the intake should announce the gap with the new `needs` sentence.
- The PadicHodgeTheory contract now records that the Galois B-pair originates in
  PhiGammaModulesAndIwasawaCohomology §1.6 (as PadicHodgeTheory §4.5 itself says); the gap
  `embedding-selective-modification` still names PadicHodgeTheory §4.5 as its supplier.
- Ownership against open pull requests named in the brief without files was not re-checked beyond
  the name greps above; the review's ownership check stands.
- Sources: no new citation was needed; nothing was fetched and `needs-references.toml` was not
  created.
