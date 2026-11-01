# Repair report: red-team round 1 of AlgebraicModularFormsAndSerreWeightsPartII

There were two reviews: pass a had six findings, pass b had one. The two do not overlap, so each finding is settled separately below. Each heading uses the finding id of its review; the first line of each section names the pass (a or b).

## F01 (P2) — applied

Review pass a, finding F01.

§4.4: "for every N divisible by m·p^e" → "for every positive integer N divisible by m·p^e". The API identity h′*_(NN′)=(h′*_N)^(N′) is now stated for positive N′. A Check was added: N=0 gives the unit section, whose zero set is empty, not the nonempty curve π(Z_red). A search found no other exponent quantifier of this kind.

## F02 (P2) — applied

Review pass a, finding F02.

`standardSL2` now takes `[Fact p.Prime]`, so it matches its docstring (SL₂(𝔽_p)). The body is unchanged, and `smallSymmetricPower_irreducible` already supplies the instance. In README §8.3 the definition now begins "For a prime p and a field k of characteristic p". A negative-control Check was added: with p=0 and k=ℚ the acting group would be ZMod 0=ℤ, and the matrices [[1,n],[0,1]] give infinitely many distinct operators.

## F03 (P1) — applied

Review pass a, finding F03.

I recomputed the jet myself. Sources: Y16 (3.35) (line 1277–1279) and (3.27) (line 1013); with B=I this gives h·C=adj(A). I then applied the second transvectant of §8.1. The x^(d−2) slot sums as follows:
- F₀: 2d(d−1)(1−k)c₂₂
- F₁: 4(d−1)(k−1)c₁₂
- F₂: 4(1−k)c₁₁

All three are divided by 2d(d+1). The result is (1−k)/D·(d(d−1)t₁₁F₀+2(d−1)t₁₂F₁+2t₂₂F₂), which agrees with the reviewer.

Changes:
- **§8.4.** The hypothesis "j−3k≢0" becomes "k≥2, k≢1 mod p". The (6,2) exception is dropped, because (6,2) is now covered for every p≥7. The proof route states the jet. The frame step now only needs F₀≠0.
- **§8.4 Checks.** Recomputed: (6,3,1) mod 11, and 5 mod 7. Two Checks were added: the F₀ two-slot witness (−3/5), and the k≡1 negative control.
- **Also updated:** §8.7's proof and Checks, the closing remark of §8.4, and the Layer 8 example.

The case k≡1 is no longer asserted, since the first-order argument says nothing there.

## F04 (P1) — applied differently

Review pass a, finding F04.

The witness holds. FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.23 states `farguesLF_quasiPolarisation` only for p>2.

The suggested repair does not work. "Compute LF directly on μ₂⊕I_(1,1)⊕ℤ/2" is not possible: the supplier characterises LF only through LF(Ha)=Ha, and Ha=0 on I_(1,1).

Repair instead (§3.2, all p):
- On the smooth spherical special fibre, the composite of λ* and LF is a unit u.
- u=1 on the ordinary locus, by functoriality and LF(Ha)=Ha.
- The ordinary locus is dense (§2.2), so u=1 everywhere.
- Specialise at E₁×E₂ (ordinary × supersingular), whose 2-torsion is the geometric input.

Two Checks were added: the p=2 value, and the k[ε] negative control for the density step. *Needs:* gains §2.2 and ShimuraCompactifications §C5.3. The contract now notes that §R07.2.23 is used only at odd p; §3.7 is p-odd already.

## F05 (P2) — applied

Review pass a, finding F05.

§7.1 previously said "Both projections are proper and quasi-finite, hence finite". It now says:
- Choose Σ″=Σ as in P20 §14.9.2 (P20 line 4747–4752).
- p₁ is finite and generically étale over X^(≥1).
- p₂ is only proper.
- Refinements go through ShimuraCompactifications §§C3.8–C3.9.

The star-subdivision Check was added (ℙ¹ fibre over an ordinary boundary point). The same fan condition was added to the §7.3 API bullet and to gap:siegel-parahoric-models (README and `design/plan.json` `needs`). The §7.1 locator now reads P20 line 4738–4752.

## F06 (P2) — applied

Review pass a, finding F06.

I verified the identity. SL₂(ℤ)→SL₂(ℤ/N)×SL₂(𝔽_p) is surjective. Γ̄∩gΓ̄g⁻¹ is the preimage of (H∩g_NHg_N⁻¹)×(lower Borel), so its index is e(p+1).

Added `relIndex_conj_diag_eq_tameIndex_mul` (Layer 5), built on native carriers: `TauCeti.diagGL`, `SpecialLinearGroup.mapGL`/`toGL`/`map`, `ConjAct`, `Subgroup.relIndex`. README §5.2 names it. Also added: an N=1 / N=p Check, the supplier contracts, *Needs:* and Dependencies entries, and a corrected module docstring and Summary. The marked-cusp comparison stays listed as not statable.

## F01 (P3) — applied

Review pass b, finding F01.

The docstring of `smallSymmetricPower_irreducible` now says: irreducible over every field k of characteristic p; taking k algebraically closed gives absolute irreducibility. This matches README §8.3.

## Checks run

- **Elaboration.** `lake env lean packages/AlgebraicModularFormsAndSerreWeightsPartII/Suggested.lean` exited 0. The only messages are two "declaration uses `sorry`" warnings, for the two theorems. No `TauCeti.*` build was needed.
- **Binder audit.** I ran `#check @` on all three declarations in one scratch file:
  - `relIndex_conj_diag_eq_tameIndex_mul : ∀ (N p : ℕ) (hp : p.Prime) (hpN : p.Coprime N) (Γ : Subgroup SL(2,ℤ)), Gamma N ≤ Γ → (toConjAct (diagGL ![mk0 p _, 1]) • Γ.map (mapGL ℚ)).relIndex (Γ.map (mapGL ℚ)) = (p+1) * (toConjAct (diagGL ![unitOfCoprime p hpN, 1]) • (Γ.map SLMOD(N)).map toGL).relIndex ((Γ.map SLMOD(N)).map toGL)`
  - `standardSL2 : (p : ℕ) → [Fact p.Prime] → (k : Type) → [Field k] → [CharP k p] → Representation k SL(2, ZMod p) (Fin 2 → k)` (it gained `[Fact p.Prime]`).
  - `smallSymmetricPower_irreducible` is unchanged.

  Each type matches its README statement, and none has lost a binder.
- **Dependency check** (`gate --depcheck … --movable`):

```text
depcheck: 56 roadmaps, 650 edges, 0 problem(s)
```

  It shows no UPWARD, CYCLE or moved line.
- **`roadmaps resolve`.** No cross-roadmap citation and no Lean name is found nowhere.

## Adversarial pass (statements added or changed)

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| §4.4 descent, N>0 | N=0; N=m·p^e | N=0: section 1, zero set ∅ ≠ π(Z_red). N>0: V((h′)^N)=V(h′) | N>0 is needed; added |
| `standardSL2` with prime | p=0,k=ℚ; p=3; p=2,k=𝔽₄ | p=0 excluded. p=3: UL=[[2,1],[1,1]]. p=2: image 6 in 60 | consistent |
| `smallSymmetricPower_irreducible` docstring | k=𝔽_p; k=𝔽̄_p | irreducible over each k; absolute irreducibility via k̄ | docstring now exact |
| `relIndex_conj_diag_eq_tameIndex_mul` | N=1,p=2,3; N=35,p=3 (Stab ℓ); Γ(5),p=3; N=p | 3, 4; 20=4·5; 4=4·1. N=p excluded by Coprime. relIndex junk 0 not reached (finite index) | true; orientation ConjAct g•K=gKg⁻¹ |
| §3.2 at p=2 | (E_ord×E_ss)[2]; k[ε] | u=1 on the dense ordinary locus (dim 3 vs 2); over k[ε], 1+ε≠1 | route valid on a reduced base only; Check added |
| §8.4 jet, F₀ only | d=4,k=2 | xy-slot +12/20, y²-slot −24/20, sum −3/5 | matches the formula |
| §8.4 jet | p=11,(6,2); p=7,(6,2); p=5,d=2,k=2 | (6,3,1) mod 11; F₀ coefficient 5 mod 7; D=6: −(1/3)·2=1 mod 5 for each | nonzero for k≢1 |
| §8.4 jet at k≡1 | k=1; k=p+1 | factor 1−k ≡ 0 | excluded; negative control added |
| §8.7 via §8.4 | p=7, j=4,5; p=11, j=6 | k=2≢1. Degrees 26, 33 <50. (−4,−8)→−36 | proof uniform, no exception |
| §7.1 p₁ finite / p₂ proper | ordinary boundary star subdivision; superspecial | ℙ¹ fibre over an ordinary point; ℙ¹(k) of α_p lines at rank 0 | only p₁ is finite on X^(≥1) |

## Sources and ownership

- **Locators.** Y16 (3.27) is on p. 18 (page marker at line 971). (3.35) is on p. 23 (line 1277), and the manifest locator now lists both. P20 §14.9.2 is at line 4738–4752. The FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.21–R07.2.23 text was read at its open head.
- **Ownership against open pull requests.** I ran `roadmaps grep` over main and all open heads. No roadmap states the arbitrary-subgroup tame-index degree. Tau Ceti's `natDiagGL_conj_relIndex_eq_Gamma0_index` covers Γ₀ only, and ModularForms Layer 2 covers full level, Γ₀ and Γ₁. §5.2 already owned this statement.
- **Missing texts.** None; no source was missing.

## Notes for the maintainer

- **New Lean name:** `relIndex_conj_diag_eq_tameIndex_mul`. No other roadmap cites this roadmap's names.
- **Changed signature:** `standardSL2` gained a prime binder.
- **New Tau Ceti import:** `TauCeti.LinearAlgebra.Matrix.GeneralLinearGroup.Diagonal.Basic`. It exists at the pin.
- **For FiniteFlatGroupsAndIntegralPadicHodgeTheory:** extending `farguesLF_quasiPolarisation` to p=2 would be welcome, but this roadmap no longer needs it.
- **Source issue for the errata register:** Y16 (4.5) and the proof of Theorem 4.9 (line 2124–2140) do not give the first-order coefficients of the normalised contraction. The k≡1 weights are not covered by the corrected computation.
