# FIX-PKG-GrossZagierAndArithmeticHeightsPartII~2

Repair round for the findings of `REV-PKG-GrossZagierAndArithmeticHeightsPartII` (round 2 of the package). Every finding was verified against the cached sources, the supplier's files and the pinned manifest before any edit. Files changed: `packages/GrossZagierAndArithmeticHeightsPartII/README.md`, `packages/GrossZagierAndArithmeticHeightsPartII/sources.toml`, `packages/GrossZagierAndArithmeticHeightsPartII/design/plan.json` (the `needs` sentence of the gap `jr-afl-local-inputs` only). `Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P1) — applied

Verified. In LL2 the dual is the trace dual (LL2 line 519) and the fundamental invariants are the elementary divisors of u·T (LL2 line 729), so the reviewer's lattice ⟨e, u⁻¹e ± x₀⟩ with Gram entries βu², ±βu, 0 has u·Gram of determinant valuation 4 and minimal entry valuation 2, hence invariants (2,2); M± = L♭ + O_F(u⁻¹e ± x₀) have invariants (1,1,2,2) with a = 3, meet L♭ ⊗ F in L♭ and are distinct (p odd). The source's extracted text contains no "⩾" character at all; at LL2 line 1791 a strict reading would force λ_(n−1) ∈ O_E against the next sentence, so LL2 lines 1753, 1759 and 1806 read r ⩾ 2 and a_(n−1) ⩾ 3. Also checked: a = 1 is excluded because M± would then have all invariants zero, i.e. be trace-self-dual, impossible in the nonsplit space (LL2 line 1806 gives this reason); for a ≥ 3 the entries of B± have valuation ≥ a − 2 ≥ 1, so norms in B± have even valuation ≥ 2 and B₊ ∪ B₋ ⊂ u·(V→)_int, which is what LL2 line 1890 uses.

Changed: §6.7 "a > 3" → "a ≥ 3" and the route clause "the bound a > 3 gives strict positivity on the residual line" → the support statement B₊ ∪ B₋ ⊂ u·(V→)_int with V→ named; Check 3 → a = 1 excluded with its reason, and the a = 3 witness with its computed invariants; Layer 6 Examples → "requires a ≥ 3 and occurs at a = 3"; Source corrections bullet on LL2 Lemma 2.57 → the non-strict reading of r and a_(n−1) with the reason. Pattern: §6.8's "strict positive support on the remaining line" (the same object, which is a plane, not a line) → support in u·(V→)_int against Fourier support in (V→)_int. No other occurrence of the bound in the roadmap.

## F02 (P2) — applied

Verified at the supplier's files: `packages/EndoscopicTransferAndUnitaryTraceComparisonPartII/design/README.md` §4.4 (its line 784) states the spherical rank-shifted Jacquet–Rallis comparison for every residue cardinality ("No spherical theorem excludes residue characteristic two", its Conventions), §4.5 (line 802) the augmented transfer, and its contract `jr-local-comparison` (line 43) requests regular matching, η(det)-twisted orbital distributions and smooth transfer with partial Fourier compatibility from EndoscopicTransferAndUnitaryTraceComparison. That roadmap is at position 166 of the merge order, this one at 247, and the brief lists it among the roadmaps this one may consume. One precision beyond the reviewer's text: the unitary side of its §4.4 is the space X_n of invertible hermitian matrices under U(V_(n−1)) (its line 465 and line 702), not the unitary group, so the passage to Zhang's U(V_n) formulation is part of what remains missing.

Changed: new subsection "From TauCetiRoadmap.EndoscopicTransferAndUnitaryTraceComparisonPartII" consuming §§4.4–4.5 with their normalization; the EndoscopicTransferAndUnitaryTraceComparison contract now consumes the matching, twisted orbital distributions and smooth transfer that the Part II roadmap requests from it (and no longer says it has no Jacquet–Rallis theory); `gap:jr-afl-local-inputs` narrowed, identically in the README and in `plan.json`, to the passage from those formulations to Zhang's S_n and S_(n−1) × (F₀^(n−1) ⊕ (F₀^(n−1))*) formulations with the transfer factors of Z (2.16)–(2.17), the partial-Fourier-compatible smooth transfer and the unit fundamental lemmas in Zhang's versions for every q; the ownership sentence of Scope and ownership, the prose of §9.3 and §14.1, the `*Needs:*` lines of §§9.3, 9.5, 9.7, 14.1 and the Dependencies of Layers 9 and 14 cite EndoscopicTransferAndUnitaryTraceComparisonPartII §§4.4–4.5 next to the narrowed gap. Dependency check rerun below: no UPWARD line, one more edge.

## F03 (P3) — applied

Verified: the content checkout's `lake-manifest.json` pins mathlib `f6090c70…` and TauCeti `358314d4…`, not the hashes the README printed. Changed: the sentence now says the pins are those of the content repository's `lake-manifest.json`. The four Mathlib names in that paragraph were left as they are.

## F04 (P3) — applied

All five verified at the cited lines: K Lemma 3.1, Proposition 3.2, Remark 3.3 (K lines 671, 679, 697); K Remark 4.6, Definition 4.7, Lemmas 4.8–4.9 (K lines 1173, 1174, 1184, 1195); LZ §14.4 begins at line 3718, after the page-85 marker at 3682; LL2 §2.7 runs from line 1751 (p. 34) to the end of the proof at line 1895 (p. 37, page-38 marker at 1903); LL1 writes the sections as lattice indicators (LL1 lines 1845, 2066). Changed: the five locators in §§7.6, 7.2, 10.4, 6.8 and 4.6 exactly as the finding asks (§6.8 → "§2.7, pp. 34–37, proof of the theorem p. 37").

## F05 (P3) — applied

Verified: LZ lines 509 and 522 cite [Ter13a, Lemma 3.1] and [Ter13b] for the n ≤ 3 base case and for the regularity of D(x), and neither work was in the manifest. Both were fetched legally through the sources service from arXiv: `Ter13a` (arXiv:1006.2106v1, 42 pages; Lemma 3.1 at its line 1345, pp. 21–22, the Tor-independence of two special divisors with independent labels on the space for GU(1,2); Proposition 3.2 at line 1363) and `Ter13b` (arXiv:1209.1286v1, 3 pages; Theorem 1 at line 62, p. 2: the special difference divisor is regular, proved by induction on n with the base n ≤ 3 from Ter13a). Both are recorded in `sources.toml` as certified with venue, version notes and `cited_for = ["0.5"]`, and listed under References. Changed: §0.5 cites Ter13b Theorem 1 and Ter13a Lemma 3.1 at the claim and states the route (Terstiege's induction, its base case, its step through Z(u) ≅ N_(n−1) and the super-general points) with the note that Terstiege writes it for F₀ = ℚ_p and the target is over F₀ as LZ states it; the Tor-independence base case n ≤ 3 is named as Ter13a's absence of common components. No `needs-references.toml` was created: nothing is missing.

## F06 (P3) — applied

Verified: LRZ Definition 14.2.2 (LRZ line 2482, printed p. 57, the page after the printed "56" at line 2478) defines the closed balloon locus as the reduced closed subscheme ⊔_(Λ ∈ Vert⁰) V(Λ) ≅ ⊔ ℙ^(n−1) of the special fibre; the term occurred in §4.2 and the Source corrections without a definition. Changed: §4.2 defines the closed balloon locus at its first use with that locator and says that a balloon stratum is one of the V(Λ); the later uses in §4.2 Check 3 and the Source corrections now refer to a defined term.

## Checks

**Elaboration.** From the content checkout, `lake env lean <Suggested.lean>`: exit 0, no output, 6.8 s wall time. The file declares nothing (its docstring records which headlines are not statable), so the `#check` comparison of elaborated types with README statements is void: there is no declaration to compare, and I did not create a scratch file for it.

**Dependency check** (after the final edit), verbatim:

```text
depcheck: 241 roadmaps, 2439 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line (the merge-order file supplied to this job already lists this roadmap at 247, right after PELModuliPartII). The edge count rose from 2438 to 2439 with the new supplier EndoscopicTransferAndUnitaryTraceComparisonPartII.

**Citation resolver.** `roadmaps resolve` on the edited README lists one lead: "EndoscopicTransferAndUnitaryTraceComparisonPartII §§4.4: no roadmap … on main or in an open pull request". That roadmap is a board package at the design stage (`packages/EndoscopicTransferAndUnitaryTraceComparisonPartII/design/README.md`), which the resolver does not index; the brief lists it among the roadmaps this one may consume and the dependency check resolved it. The two leads of the previous round (`IntegralHermitianLattice.ofCarrier`, `HermitianLatticeInvariants.ofDualQuotient`) no longer appear.

**Ownership against open pull requests.** Checked with `roadmaps show`/`list` at the tool's index of 2026-11-06: EndoscopicTransferAndUnitaryTraceComparison is open pull request #999 (its §§2.1, 2.4, 2.13 exist at its head, lines 689, 765, 999); EndoscopicTransferAndUnitaryTraceComparisonPartII exists only as the board package. No other open pull request was searched for the Jacquet–Rallis fundamental lemma beyond the previous round's `roadmaps grep`.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §6.7 invariants of ⟨e, y⟩, y = u⁻¹e + c·x₀ | c = ±1, c = 1 + ud, c = u | h(y,y) = β(N(c) − 1): 0 for c = ±1; N(u)β = −u²β for c = u; det Gram = β²u²N(c); u·Gram elementary divisors (2,2) iff val(c) = 0 and N(c) ≡ 1 mod u², i.e. c ≡ ±1 mod u | exactly two lattices, a = 3 | a > 3 → a ≥ 3 |
| §6.7 M± ∩ (L♭ ⊗ F) and M₊ ≠ M₋ | coefficient vector (c₁,c₂,c₃,c₄) | x₀-coordinate ±c₄ forces c₄ = 0; x₀ ∈ M₋ would need u⁻¹ ∈ O_F | both hold | Check 3 witness added |
| §6.7 a = 1 | r ≥ 2, a_(n−2) < 1 | all invariants of M± are 0, M± trace-self-dual; self-dual rank-two lattices are hyperbolic with −det = 1/N(u) ∈ N(F^×), so V would be split | excluded | Check 3 reason added |
| §6.7 support B₊ ∪ B₋ ⊂ u·(V→)_int | a = 3 (invariants (2,2)); a = 5 | element αe + γy of B±: norm N(α)βu² ± βu(αγ̄ − ᾱγ), second term in u²O_F since αγ̄ − ᾱγ ∈ uO_F; valuation ≥ 2; for a = 5 entries have valuation ≥ 3, norms ≥ 4 | holds for all a ≥ 3 | route clause replaced |
| §6.8 uncertainty step | V→ of dimension 2, support u·(V→)_int, Fourier support (V→)_int | MetaplecticAutomorphicForms §3.3a hermitian uncertainty principle gives φ = 0 (LL2 line 1892 cites LZ Proposition 8.1.6) | holds | wording "line" → plane V→ |
| §4.2 closed balloon locus | n = 2 | ⊔ V(Λ) ≅ ⊔ ℙ¹, reduced; π₁⁻¹ of one is a ℙ¹ of multiplicity q+1 (LRZ Example 14.6.3) | consistent with Check 3 | definition added |
| §0.5 regularity of D(x) | n = 1, 2, 3; n ≥ 4 | base n ≤ 3 from Ter13a; step by induction on n through Z(u) ≅ N_(n−1) (Ter13b Lemma 2(i)) and the special fibre at super-general points (Ter13b line 59) | route inputs recorded | locators added |
| Supplier contract on EndoscopicTransferAndUnitaryTraceComparisonPartII §4.4 at the unit | n = 1, φ = unit | BC₁(unit) = 1_(O_F₀^×)-type unit, φ∗e₀ = e₀ with H₁(e₀) = 1_K (its line 527); its Check: both sides 1_(π^(2d)O_F^×) at d = 0 | the unit case is the fundamental lemma in its formulation | contract text |
| Narrowed gap `jr-afl-local-inputs` | transfer factor at n = 1 | ω(γ) = η̃(γ^0 · det(e)) = η̃(1) = 1; ω(γ,u′) with ⌊0/2⌋ = 0 is η̃(det(u₁)) | consistent with Z (2.16)–(2.17), lines 577–581 | gap sentence |

## Notes for the maintainer

- EndoscopicTransferAndUnitaryTraceComparisonPartII is cited for the first time; it is a board package at the design stage, listed in the merge order at 166. The citation resolver reports it as a lead for that reason; the dependency check accepts it.
- The gap `jr-afl-local-inputs` keeps its slug and supplier (EndoscopicTransferAndUnitaryTraceComparison, Layers 2 and 4); only its `needs` sentence changed, identically in the README and in `plan.json`.
- The sources service reordered fields inside existing `sources.toml` entries when it added `Ter13a` and `Ter13b`; no value changed. Both new entries are certified open-repository texts.
- No name that other roadmaps cite changed; `Suggested.lean` still declares nothing.
