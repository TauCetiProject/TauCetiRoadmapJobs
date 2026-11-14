# Repair of LocalLanglandsCorrespondenceForG2 (package, round 3)

Findings settled: the eleven findings R01–R11 of `reports/REV-PKG-LocalLanglandsCorrespondenceForG2~2.md` (verdict `needs_changes`, one review, so the ids are unqualified). Files changed: `packages/LocalLanglandsCorrespondenceForG2/README.md`, `Suggested.lean`, `sources.toml` and the top-level `gaps` list of `design/plan.json`. `metadata.toml` is unchanged.

## R01 (P1) — applied differently

The cancellation in §2.4 is now supplied, but not by the suggested principal-series confinement. That would need the spin gamma comparison for generic subquotients of principal series, which no contract covers.

Instead, a new §1.3(b′)/§1.6(ii) applies when an archimedean place has no prescribed component. In that case the Poincaré series is separated there (ILM, proof of Proposition 4.5, pp. 19–20, lines 959–983 and 995–998), so every finite place outside S ∪ {w} is spherical. This form is declared inside the existing `gap:poincare-weak-containment`.

The §2.4 route was rewritten: totally complex k, places u, w, t₁, t₂, and T = {t₁} or {t₁, t₂} with the same k, Ψ, u, w and δ. Spherical places cancel by the unramified normalization, now added to `gap:pgsp6-shahidi-spin-factor`, together with §2.2. Complex places cancel by `gap:pgsp6-pgso8-complex-theta`. The unsupported sentence about depth induction was deleted, and the Notes entry and Needs lines were updated.

A new Check computes the reviewer's countermodel (R_σ = 2, R_(z₁) = 1/2, R_(z₂) = 1/4) and shows it is excluded.

## R02 (P2) — applied

`Suggested.lean` now imports `TauCeti.Algebra.Octonion.Basic` and adds three declarations:
- `octonionAut`: the multiplicative linear equivalences of `TauCeti.Octonion ℂ`, as a real `Subgroup`.
- `octonionRep`: the representation of Γ on 𝕆 through ρ.
- `griess_conjugacy`: complete reducibility (`Representation.IsSemisimpleRepresentation`) plus an intertwining linear equivalence imply conjugacy by one element.

README §0.0 now defines both objects with their API and three Checks, and explains why the eight-dimensional hypotheses are equivalent to the seven-dimensional ones (trivial summand, Krull–Schmidt). Griess was removed from the unstatable list; §§0.4–0.5 keep the missing `spinGroup` comparison.

## R03 (P2) — applied

§1.3(a) now covers all prescribed places, finite or real. It concludes that there is a finite place z ∉ S such that ⊗δ_v is weakly contained in the vectors of L²_D that are spherical outside S ∪ {z}.

§1.4 now allows real places in S and concludes "spherical at every finite place outside S ∪ {z}" instead of "unramified outside S and infinity". Real places are handled by the discreteness of the compact unitary dual. A new Check accepts #({z} ∖ S) = 1 and records that the consumers §§3.1 and 6.4 do not use level control.

## R04 (P2) — applied

§1.6 is restated in the form of GS Proposition 10.7. S may contain archimedean places, and each δ_v is assumed ψ_v-generic, square-integrable and isolated among the local components of L²_(ψ,σ). The case with no real places is kept as part (ii).

The G₂ and PGSp₆ instances are listed separately:
- Finite places: Steinberg via SRU.4.7 (split rank 2 and 3), §1.5, or `gap:relative-generic-isolation`.
- Real places: a ψ_v-generic discrete series with ⟨Λ, α∨⟩ > max(C, C′).

The new `gap:regular-real-isolation` on AutomorphicFormsOnReductiveGroups, Layer 2 supplies C′, isolation and existence of a generic member. Checks were added for:
- the wrong-sign D_k, whose Whittaker space has dimension 0 for every k;
- PGL₂ (split rank 1);
- D₂^± not being isolated.

§§1.5, 5.2 and 6.4 and the Layer 1, 5 and 6 Dependencies were updated to match.

## R05 (P2) — applied

ModularityAndLanglandsExtensions §2.43 is now imported in Scope, in the supplier contracts (a new bullet stating that its density-one theorem proves ExtremelyRegularIrreducibility n), in §3.15's route and Needs, and in the Layer 3 Dependencies. The AG2.6 contract bullet now states the premise. A new Check records why the premise is universal: a density-one set is nonempty, while irreducibility of one Π does not discharge it.

## R06 (P2) — applied

The Summary no longer says "following Gan–Savin (GS)". It now says the construction transports parameters through the exceptional theta correspondences, the triality spin transfer and the comparisons of G₂-, Spin₇- and SO₇-valued parameters. The end theorem keeps its locator, "(GS, Main Theorem, pp. 3–4)". No layer was reordered, and a search found no other source-following phrasing.

## R07 (P2) — applied

`gap:poincare-weak-containment` now separates its two instances. The quaternion instance uses the untwisted L²(G_D(k_v) \ G(k_v)). The Whittaker instance uses L²(N(k_v) \ G(k_v), ψ_v) with f(ng) = ψ_v(n)f(g), fixed σ at w, weak containment in L²_(ψ,σ), and the extra place z (or none, per R01). §1.3(b) matches. A Check computes f(n) = −1 in the twisted space against +1 in the untwisted one. The plan's `needs` sentence was aligned.

## R08 (P3) — applied

`TauCeti/Algebra/Lie/D4/Tripled/Triality.lean` → `TauCeti/Algebra/Lie/D4/Tripled/Triality/Basic.lean`. Both declarations were opened there at the pin: `trialityAutomorphism` at line 155 and `trialityAutomorphism_pow_three` at line 197. This was the only occurrence of the old path.

## R09 (P3) — applied

The §8.2 Check was replaced. The weights of Sym⁶ ⊕ 1, namely 6, 4, 2, 0, 0, −2, −4, −6, exclude spin regularity for any Hodge cocharacter through the principal PGL₂ or through G₂. The Steinberg component at the finite place v₁ is a local parameter and is allowed. Global regularity uses h = (11, 6, 3), with weights ±10, ±7, ±4, ±1. All three hypotheses of KS Proposition 13.1(4) are kept.

## R10 (P3) — applied

The §1.3 Check now says that St ⊕ ⨁1 refutes only the subsequence inference: the multiplicity of St is 1, and 0 among the trivial summands. Isolation (SRU.1.10) gives an actual occurrence. A second Check was added: the trivial representation of ℝ is weakly contained in L²(ℝ), whose invariant vectors are zero.

## R11 (P3) — applied

The module docstring of `Suggested.lean` now has its own entries, each naming the missing carriers, for:
- Chenevier's descent (§§0.9–0.10);
- the globalization theorems (§§1.4–1.7);
- the spin transfer and gamma comparison (§§2.2–2.5);
- the Kret–Shin parameters (§§5.1–5.3, 8.2);
- §§0.4–0.5, kept separate from Griess.

No substitute Lean statements were added.

## Checks run

- **Elaboration.** `lake env lean packages/LocalLanglandsCorrespondenceForG2/Suggested.lean`, run from the content checkout: exit 0. The only diagnostics are `warning: declaration uses 'sorry'` at lines 106 (`griess_conjugacy`) and 125 (`spin7_not_acceptable`). The `TauCeti.Algebra.Octonion.Basic` object file was already built, so no `lake build` was needed.
- **Signatures.** I elaborated a scratch copy with `#check @` for all five declarations once. Results:
  - `octonionAut : Subgroup (TauCeti.Octonion ℂ ≃ₗ[ℂ] TauCeti.Octonion ℂ)`
  - `octonionRep : {Γ} → [Group Γ] → (Γ →* ↥octonionAut) → Representation ℂ Γ (TauCeti.Octonion ℂ)`
  - `griess_conjugacy : ∀ {Γ} [Group Γ] (ρ ρ'), (octonionRep ρ).IsSemisimpleRepresentation → (octonionRep ρ').IsSemisimpleRepresentation → (∃ e, ∀ γ x, e (↑(ρ γ) x) = ↑(ρ' γ) (e x)) → ∃ g, ∀ γ, ρ' γ = g * ρ γ * g⁻¹`
  - `sumSquaresSeven` and `spin7_not_acceptable` are unchanged.

  There are no section variables, so no binder was dropped. Each type matches its README statement.
- **Dependency check.** Output, verbatim: `depcheck: 236 roadmaps, 2147 edges, 0 problem(s)`. There are no UPWARD, CYCLE or moved lines.
- **Citation resolution.** `roadmaps resolve` on the README: no cross-roadmap citation or Lean name found nowhere.
- **Gap consistency.** The 12 `gap:` slugs in the README equal the 12 slugs in `plan.json` `gaps`. In the plan, only the `gaps` list changed:
  - `poincare-weak-containment`: `needs` and `neededBy` (now including 1.4 and 2.4);
  - `pgsp6-shahidi-spin-factor`: `needs`;
  - `regular-real-isolation`: new, supplier AutomorphicFormsOnReductiveGroups, Layer 2, §2.4.
- There were no gate failures listed for this job.

## Adversarial pass (changed or new statements)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| `octonionAut` | id; 2·id; −id; conjugation; t ∈ SL₃ acting by (a,b,tv,t^(−T)w) | 2(1·1)=2 vs (2·1)(2·1)=4; −id(1·1)=−1 vs (−1)(−1)=1; conj(uu′)=⟨0,0,0,−e₃⟩ vs ū ū′=⟨0,0,0,e₃⟩ (TauCeti `mul` lines 280–281, `conj` 336); tv×tv′=det t·t^(−T)(v×v′) | id and SL₃ in; scalars, −id and conjugation out. Checks added. |
| `octonionRep` | t=diag(ζ,ζ,ζ³), ζ⁵=1 | eigenvalues on 𝕆: 1,1,ζ,ζ,ζ³,ζ⁴,ζ⁴,ζ²; trace-zero part: 1,ζ,ζ,ζ³,ζ⁴,ζ⁴,ζ² = v∘j(t) | 8 = 1+7 decomposition confirmed. |
| `griess_conjugacy` | trivial Γ; Γ=ℤ/5 (t, t²); principal SL₂ | g=1 witnesses ρ=ρ′; t² spectrum 1,ζ²,ζ²,ζ,ζ³,ζ³,ζ⁴: ζ-multiplicity 2 vs 1, and still 2 vs 1 after adding the trivial line, so no intertwiner; Sym⁶ ⊕ 1 has dimension 8 | Hypotheses discriminate. 8-dim ⇔ 7-dim by Krull–Schmidt. |
| §1.3(a),(b),(b′) | S=∅; ψ_v(n)=−1; extra place | S=∅: trivial rep of trivial group, constant function; Whittaker f(n)=−1 vs untwisted +1; #({z}∖S)=1 allowed, 0 only under (b′) | Twisted space and fixed σ in (b). |
| §1.4 | S containing a real place; S=∅ | real factor isolated (compact dual discrete); S=∅ gives trivial Π with period vol>0 | Nonempty S kept; z carried. |
| §1.6 (i)/(ii) | wrong-sign D_k; St on PGL₂; D₂ of SL₂(ℝ) | dim Hom_N(D_k^∓,ψ)=0 for all k≥2 (⟨Λ,α∨⟩=k−1); St_PGL₂ is a limit of complementary series (SRU.4.7 says r=1 is false); D₂^± (⟨Λ,α∨⟩=1) are limits at the reducible endpoint | Genericity, rank ≥ 2 and distance C′ are needed. |
| §2.4 cancellation | #T=1,2 with/without an auxiliary place | without: R_uR_wR_σ=1, R_uR_wR_σ²=1 ⇒ R_σ=1; with: R_σ=2, R_(z₁)=1/2, R_(z₂)=1/4, R_uR_w=1 satisfies both | (ii) removes z; Check added. |
| §2.4 ψ-dependence | ψ → ψ_a at T, u, w | both sides × \|a\|^(8(s−1/2)) (det s∘φ=1), so the ratio is independent of a | Route uses ratios. |
| unramified normalization | σ irreducible unramified principal series, Satake t∈Spin₇ torus | γ = ∏ of 8 Tate factors on the spin characters of t, on both sides (§2.2 Satake bullet) | Added to the contract. |
| §3.15 premise | universal vs particular | density-one set ≠ ∅ (∅ has density 0) ⇒ one ℓ′ for each eligible form; one Π gives no witnesses for others | §2.43 imported. |
| §8.2 Check | principal SL₂; h=(11,6,3) | Sym⁶⊕1 weights 6,4,2,0,0,−2,−4,−6 (0 twice); (±11±6±3)/2 = ±10,±7,±4,±1 distinct | Local St allowed; global regular. |
| §1.3 Check (St ⊕ ⨁1) | multiplicities | mult(St)=1; among trivial summands 0 | Subsequence inference only. |
| `regular-real-isolation` | SL₂(ℝ) analogue | D_k, k≥3, isolated; D₂ not | C′ needed; a contract, not a target. |

## Ownership, suppliers and sources

- Octonion automorphisms are owned by ExceptionalThetaCorrespondencesForG2 §0.1, which §0.0 cites. `octonionAut` and `octonionRep` are defined in our namespace only so that the headline theorem can be stated.
- An object search (`roadmaps grep`) found no other Lean declaration of an octonion automorphism group and no owner of real discrete-series isolation. That is why `gap:regular-real-isolation` was declared on AutomorphicFormsOnReductiveGroups, which is earlier in the merge order. SmoothRepresentationsOfLocalGroupsPartII owns only the p-adic isolation results (SRU.4.7, SRU.4.8).
- ModularityAndLanglandsExtensions §2.43 was read at the head of its pull request. It is earlier in the merge order and was already a supplier.
- The ILM manifest entry gains the locator "Proposition 4.5 (proof)" and `cited_for` 1.3 and 2.4.
- I tried to fetch Vogan, *Isolated unitary representations*, but the network failed and the paper is not cited, so nothing was added to the manifest or to `needs-references.toml`.
- Ownership against open pull requests was checked only through `roadmaps grep` and `roadmaps show`, and `overlaps.md` listed no dropped ids.

## For the maintainer

- AutomorphicFormsOnReductiveGroups receives a new contract, `gap:regular-real-isolation`. The text of `gap:poincare-weak-containment` changed: it now has two instances, the extra place z, and the variant with archimedean separation.
- AutomorphicLFunctionsAndLocalFactorsPartII's `gap:pgsp6-shahidi-spin-factor` now also asks for the unramified normalization.
- New Lean names: `octonionAut`, `octonionRep`, `griess_conjugacy`. No existing name was renamed or deleted, and no section id was renumbered.
