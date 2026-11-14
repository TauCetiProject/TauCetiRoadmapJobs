# FIX-PKG-MordellLawrenceVenkateshPartII~3

Repair round for the review `REV-PKG-MordellLawrenceVenkateshPartII~2` (sixteen findings R01–R16) of
`packages/MordellLawrenceVenkateshPartII`. Every finding was checked against the cached legal sources,
the supplier roadmaps (on main or at the open heads the brief gives) and the pinned libraries. All
sixteen hold up on the mathematics: all are applied, and R10 is applied differently (a renumbering
instead of a numbering gap). Files edited: `packages/MordellLawrenceVenkateshPartII/README.md`,
`packages/MordellLawrenceVenkateshPartII/Suggested.lean` (module docstring only) and the `needs`
sentences of two existing gaps in `packages/MordellLawrenceVenkateshPartII/design/plan.json`
(`period-map-ax-schanuel`, `relative-crystalline-comparison`). No gap was added or removed.
`metadata.toml` and `sources.toml` are unchanged, and no new source was needed.

## R01 (P1) — applied

Confirmed (GL₂/ℚ₃ tori). §2.11: one centralizer formula → separate statements, subgroups via
`ker[H¹(F,N_G(M))→H¹(F,G)]` and homomorphisms via the image centralizer. §2.3: normalizer for
subgroups, centralizer for homomorphisms; §2.9 route: "centralizer of the image". New Check: four
tori classes, |H¹(ℚ₃,T⋊C₂)| = 4 versus H¹(ℚ₃,T) = 1.

## R02 (P1) — applied

Confirmed: ℚ_p(−1) has weight 2, de Rham +1, Hodge–Tate −1. §5.4: "Hodge–Tate average w/2" →
"de Rham average w/2 (Hodge–Tate −w/2)", with corrected H¹/V_pE and ℚ_p(−1) Checks. §7.2:
`diag(1,0)` → `t ↦ diag(t,1)`, ordinary H¹ weights −1, 0. Same pattern repaired in the Conventions
witness, §§7.4, 7.5 and 8.1.

## R03 (P2) — applied

Confirmed: 3 ≥ 2+3 is false in X×LGr(2,4); 1 ≥ 0+1 holds in X×D_mon. Gap
`period-map-ax-schanuel` (README and plan): ambient X×Ď, "weakly special" → ambient X×D_mon (connected
monodromy orbit), "proper weakly special". The complex target (now §3.3) states this ambient (LS line
2965) and has the example as a Check.

## R04 (P2) — applied

Confirmed: LS lines 2813 and 2989 are over arbitrary K; Beauville lines 84–89 and 129–136.
§2.9: G_ℚ → G_K, places T ⊇ {v|p}. The transfer target (now §3.4): X/ℚ → 𝒳/O_K[S⁻¹], disk in
𝒳(O_(K_v)). §9.2: n, d ≥ 4 → n, d ≥ 2 except cubic surfaces; quadrics trivial; Checks added for
plane cubics and quartic surfaces. §5.4 stays over ℚ.

## R05 (P2) — applied

Confirmed (C₃ with F inverting, e = (2−γ−γ²)/3). §1.9 route: "γ commuting with F" → every γF^m
is a finite descent datum, since (γF^m)^k = F^(mk); the twisted form comes from
SchemeAndStackFoundations §1.16 (added). Degrees are separated by the concentration of §1.7, or by
weights (DeligneWeightsAndPurity §4.4). The C₃/S₃ witness is now a Check.

## R06 (P2) — applied

Confirmed (LS lines 3033–3068). Transfer route: "number-field power series" → formal completion
of X_(K_v) at x₀, K_v-coefficients moved by σ restricting to the fixed embedding (Conventions
updated), convergence by MordellLawrenceVenkatesh §2.8, norm descent from a finite extension of K_v.
Added a reduction to affine 𝒳 and Checks for a transcendental centre (a+u ↦ σ(a)+u) and the choice
of σ.

## R07 (P2) — applied

Confirmed: PadicHodgeTheory §7.3 at its head assumes Rⁱf_*L lisse. The contract now carries
lisseness and the de Rham hypothesis; for ℤ_p on smooth projective families, lisseness comes from
EtaleCohomologyFoundations §F.3 and ClassicalAdicEtaleCohomology §8.2. Both were added to scope,
contracts, the Needs of §§0.1/0.5/0.7 and the dependencies. The gap `relative-crystalline-comparison`
names the coefficient.

## R08 (P2) — applied

Confirmed (LS lines 3951–3954; SheafConvolution §4.8). §10.5 route: "inversion pairing (§1.8)"
→ two branches, GL_N with no pairing for nonsymmetric families and GSp_N/GO_N from §1.8 under
inversion symmetry. Needs gain §1.5 and SheafConvolution §4.8. Scope, conventions and the §4.8
contract were narrowed. New Check: for SL₆, ζ²B = B gives B = 0.

## R09 (P1) — applied

Confirmed: JacobianChallenge Layer F (main) gives the Albanese factorization; §A1.2 needs two
abelian schemes. §10.10: "homomorphism from the Jacobian (§A1.2)" → translation of h∘a with
h : Jac C → A unique (JacobianChallenge Layer F). Added to scope, contracts, Needs and dependencies;
§A1.2 dropped from §10.10. New Check: f = a gives h = id; f = 0 gives h = 0.

## R10 (P2) — applied differently

Confirmed: ComplexKahlerGeometry K3 §3.4 (main) proves `ruckert_nullstellensatz`. §3.3 is deleted
and Rückert is cited directly in the transfer, scope and contract. Applied differently: renumbered
§3.4 → §3.3 and §3.5 → §3.4 (all internal references updated) rather than leaving a gap. Nothing on
main or at any open head cites this package, so no mapping of old numbers is needed.

## R11 (P2) — applied

Confirmed: BC line 1344 puts H^(p,n−1−p) in degree (n−p)d−n−1. §8.6 route: "identifies
H^(p,n−1−p)" → degree (p+1)d−n−1 carries H^(n−1−p,p), and the formula follows by Hodge symmetry.
The theorem is unchanged. New Check: for the quartic surface at p = 0 the residue has type (2,0);
degrees 0, 4, 8 give 1, 19, 1.

## R12 (P3) — applied

Confirmed: Σα_qα_(−q) = 1/4 ≠ 1/2 at n = 2. §8.2 Check: "q−j → j−q harmless" → α_(q−j) =
α_(n−1−q+j) and β_j = (α∗α)_(n−1+j). Recomputed 1/4+1/4 = 1/2 (n = 2) and 2/9 = β₁ (n = 3).

## R13 (P3) — applied

Confirmed: B(v,v) = 0 for every alternating form. §3.1 Check: "Hodge line not isotropic" →
span(e₁,f₁) with B(e₁,f₁) = 1 (not isotropic) against the Lagrangian span(e₁,e₂), noting why a line
fails.

## R14 (P3) — applied

Confirmed: a_i ≤ 2, so only (1,1,1) is possible. Worked example: "(1,1,1) and (0,3,0) weakly
balanced" → weak balance equals balance for 2+2+2. Added 4+4+4 with dim F¹ = 6 and
⟨γ_P,F_M⟩ = 8(a₀−a₂): (1,4,1) weakly balanced but unbalanced, (2,2,2) balanced. Same change in the
§5.3 Checks and the Layer 5 Examples.

## R15 (P3) — applied

Confirmed at the pin (Ample.lean:71, CartierDivisor/Basic.lean:127 with `[IsIntegral X]`,
Effective/Basic.lean:45). The `Suggested.lean` docstring and the README Tau Ceti contract: "no ample
bundles or divisors" → these carriers credited, plus `intersectionNumber`. The obstruction is now
named: no abelian schemes over a non-field base, no numerical classes, no φⁿ.

## R16 (P3) — applied

Confirmed. Parabolic line 293 → 154; "Lemma A.5, p. 92" → "p. 91 (LS line 4303)". Same slip
repaired elsewhere: "Lemma A.4, pp. 91–92" → "p. 91 (LS line 4280)" (A.4 sits in LS lines
4255–4289), and the Mathlib Krull lemma line 431 → 432.

## Checks run

- **Elaboration.** `lake env lean packages/MordellLawrenceVenkateshPartII/Suggested.lean`, run from the content checkout: exit 0. The only output is `declaration uses 'sorry'` at lines 69:8 and 106:8. No `TauCeti.*` import, so nothing needed building.
- **Signatures.** A scratch file with `#check @name` for all six declarations, elaborated once. The types are unchanged and match the README:
  - `eulerian : ℕ → ℕ → ℕ`;
  - `eulerian_central_mass_le_half : ∀ n, 2 ≤ n → 2 * ∑ q ∈ range n, eulerian n q ^ 2 ≤ n.factorial ^ 2`;
  - `HypersurfaceMonomial : ℕ → ℕ → Type`;
  - `@IsSmoothHypersurface : {k} → [Field k] → {n} → MvPolynomial (Fin (n+1)) k → Prop`;
  - `@HasGoodReductionOutside : {n} → Finset ℕ → MvPolynomial (Fin (n+1)) ℤ → Prop`;
  - `integralHypersurfaces_not_zariskiDense` with `∃ n₀ ∀ n ≥ n₀ ∃ D₀ ∀ d ≥ D₀ ∀ S ∃ G ≠ 0 …`.

  No binder was lost; only the module docstring changed.
- **Dependency check** (command as in the brief):

  ```
  depcheck: 236 roadmaps, 2157 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line. The new edges go to EtaleCohomologyFoundations (main),
  JacobianChallenge (main), SchemeAndStackFoundations (main, already a supplier) and
  ClassicalAdicEtaleCohomology, which is earlier in the merge order.
- **Citation resolver** (`roadmaps resolve`): no cross-roadmap citation and no Lean name found nowhere.
  TauCeti names were checked by hand at the pin, since the resolver did not check names outside
  TauCetiRoadmap.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §2.11 subgroups (normalizer) | Maximal tori of GL₂/ℚ₃; M = G; M = 1 | \|H¹(ℚ₃,T⋊C₂)\| = 4 (four square classes, fibres H¹(Res_L 𝔾_m) = 1); H¹(ℚ₃,T) = 1; M = G or M = 1 gives N = G and one class | Holds; centralizer undercounts 1 < 4; Check added |
| §2.11 homomorphisms (centralizer) | ρ trivial; ρ: ℤ/2 → GL₂(ℚ₃), 1 ↦ diag(1,−1) | Z = G gives kernel 1; Z = T gives H¹ = 1, a single class (involutions with eigenvalues ±1 diagonalize over ℚ₃) | Holds |
| §2.3 finiteness clause | Upper-unipotent subgroup of GL₂ | Levi image 1; one class; closure-only dependence: P ⊇ Γ iff P ⊇ Γ̄ | Holds |
| §2.9 over K | K = ℚ(i), GL₁, w = 0; K = ℚ | Frobenius polynomial in ℤ[t] forces t ∓ 1; finitely many quadratic characters unramified outside T (Hermite); K = ℚ is the old statement | Holds; Check added |
| §1.9 route | Γ = C₃, F inverting; Γ trivial; e = 0 | e = 1 − e₀, so e² = 1 − 2e₀ + e₀ = e; FeF⁻¹ = e; (γF)² = γγ⁻¹F² = F²; k = r·ord(N), here r = 2, N = 1, k = 2; e = 0 gives trace 0 ∈ ℚ | Holds; Check added |
| §3.3 Ax–Schanuel ambient | Varying + constant elliptic H¹ on a curve; constant VHS; Z a point, d = 1 | X×D_mon: 1 ≥ 0+1; X×LGr(2,4): 3 ≥ 5, false; constant: codim Z = 0 < 1, hypothesis fails; point: dim U ≤ 1−1 = 0 | Ambient fixed; Check added |
| Gap period-map-ax-schanuel | Same example; projection = X | X not proper weakly special, so the exception no longer applies vacuously | Repaired in README and plan |
| §3.4 transfer over K | Transcendental centre a; Z = D_mon; projective X; K = ℚ | t = a + u ↦ σ(a) + u; codim 0 < d fails and Φ_p⁻¹ = Ω is dense; projective X has only constant global functions, so the affine reduction was added; on ℚ, σ is forced | Holds after the affine step |
| §7.3 contract (lisseness) | Constant family Y₀×X | Rⁱf_* = constant Hⁱ(Y₀), ∇ = 0, transport = 1 | Holds |
| §5.4 sign | ℚ_p(−1); H¹(E); V_pE; unit | dR +1 = 2/2 and HT −1 = −2/2; dR avg 1/2, HT avg −1/2 (w = 1); dR avg −1/2, HT avg +1/2 (w = −1); 0 | Repaired; Checks added |
| §7.2 cocharacter | Ordinary H¹; ℚ_p(−1) | Inertia [[1,*],[0,χ⁻¹]]; t ↦ diag(t,1) gives torus {diag(s,1)} ~ {diag(1,s)}; χ⁻¹(G_ℚp) = ℤ_p^× is dense in 𝔾_m; inverting a cocharacter gives the same image | Repaired |
| §5.3 / worked example | 2+2+2, dim F¹ = 3; 4+4+4, dim F¹ = 6 | a_i ≤ 2, so only (1,1,1); 8(a₀−a₂): (1,4,1) gives 0, averages 1/4, 1, 1/4 ≠ 1/2; (2,2,2) balanced; (0,6,0) impossible (6 > 4) | Repaired |
| §8.2 reflection | n = 2, j = 0; n = 3, j = 1 | (α∗α)₁ = 1/2 vs unshifted 1/4; (α∗α)₃ = 2·(4/6)(1/6) = 2/9 = β₁ | Repaired |
| §8.6 residue target | Quartic surface p = 0, 1, 2; plane cubic; quintic threefold p = 0 | Degrees 0, 4, 8 give 1, 19, 1, with degree 0 in H^(2,0); cubic: degree 0 gives H^(1,0), degree 3 gives H^(0,1); quintic: degree 0 gives h^(3,0) = 1 | Repaired |
| §9.2 range | (3,3); (3,4); (2,3); d = 2 with n odd and even; (5,3); (5,4) | (0,6,0) at degree −1, W(E₆) of dimension 0 < 15; (1,19,1), sign (2,19), SO₂₁ of dimension 210; (1,1), Sp₂ of dimension 3; SO₁ = 1 and E = 0; h^(3,1) = 1 and h^(2,2)_prim = C(6,3) = 20; (0,21,141,21,0). Threshold 2+4/(n−1) = 4, 3, 2.67 for n = 3, 5, 7 | Broadened; Checks added |
| §10.5 branch | SL₆; n = 4; n = 3 | ζ⁶ = 1, ζ² ≠ 1, so B = 0; sign (−1)³ = −1; (−1)² = +1 | Repaired |
| §10.10 Jacobian input | f = a; f = 0; C an elliptic curve | h = id; h = 0; h = f∘a⁻¹; q(2h) = 4q(h) | Repaired |
| §3.1 negative control | Line; span(e₁,f₁); span(e₁,e₂) | B(v,v) = 0; B(e₁,f₁) = 1; B(e₁,e₂) = 0 | Repaired |
| R15 carriers | Abelian variety over a field | Geometrically integral, hence integral, so CartierDivisor applies; IsAmple includes CompactSpace | Docstring repaired |
| R16 locators | Parabolic.lean; LS A.4/A.5; Filtration.lean | def at line 154; A.5 at line 4303 < 4314 (p. 91); A.4 at lines 4255–4289 within 4232–4313 (p. 91); theorem at line 432 | Repaired |

## Notes for the maintainer

- **Renumbering in Layer 3.** Old §3.3 (analytic radicals) is deleted; old §3.4 is now §3.3 and old
  §3.5 is now §3.4. No roadmap on main or at an open head cites this package. `design/plan.json`
  still has the node `M2.3/local-analytic-nullstellensatz`, because this round may edit only the
  plan's `gaps` list. That node is now covered by ComplexKahlerGeometry K3 §3.4.
- **New supplier citations.** EtaleCohomologyFoundations §F.3, ClassicalAdicEtaleCohomology §8.2,
  JacobianChallenge Layer F and SchemeAndStackFoundations §1.16. Each was checked at main or at the
  given head. None makes this roadmap an owner of anything new, and no target was added.
- **Ownership against open work.** The added citations were checked with `roadmaps grep` and
  `roadmaps show`. ClassicalAdicEtaleCohomology was read at its open head; PadicHodgeTheory,
  SheafConvolutionOnAbelianVarieties, LefschetzPencilsAndVanishingCycles and
  MordellLawrenceVenkatesh were read at theirs.
- **Sources.** Serre stays settled as uncertified. No text was missing, so there is no
  `needs-references.toml`.
- **No suspicious instructions** were found in the review or in any fetched text.
