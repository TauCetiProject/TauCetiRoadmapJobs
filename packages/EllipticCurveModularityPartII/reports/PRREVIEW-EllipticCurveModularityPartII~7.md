# Review of EllipticCurveModularityPartII (pull request #1491 at ad7b092)

**Verdict:** needs changes

## R01 (P1) — Three Tau Ceti declarations cited as supplied do not exist at the pin

**Location.** `TauCetiRoadmap/EllipticCurveModularityPartII/README.md` line 41: “`HeckeRing.GL2.Newform.qExpansion_coeff_prime_sq_of_factorization_eq_one` and `…_eq_zero_of_factorization_conductor_lt` (…/Newforms/BadPrime/Classification) … `CongruenceSubgroup.Gamma0_index_mul_prod_primeFactors` (…/CongruenceSubgroups/Basic)”. The same supply is asserted at line 9 (“the bad-prime coefficient classification … the Γ₀(N) index formula”), line 304 (Layer 1 Dependencies), and lines 361 and 363 (§3.2).

**Claim.** Tau Ceti supplies a_q²=1 for q∥N, a_q=0 for q²∣N (weight two, trivial character), and [SL₂(ℤ):Γ₀(N)]·∏q = N·∏(q+1) for every N.

**Witness.** At the pinned Tau Ceti `a91d3aaf`, `Newforms/BadPrime/` contains only `Stability.lean` and `Vanishing.lean`. `CongruenceSubgroups/Basic.lean` has only `Gamma0_prime_index` (line 547) and `Gamma0_prime_power_index` (line 631). The names were copied from the ModularForms revision's contract, whose Tau Ceti pin is `2fd255d`.

**Repair.** The roadmap cannot move its pin, so cite what exists at the pin and state the rest here:
- For q²∣N, cite `HeckeRing.GL2.Newform.qExpansion_coeff_prime_eq_zero_of_sq_dvd` (`NumberTheory/ModularForms/Newforms/BadPrime/Vanishing.lean:101`). Its hypothesis that the nebentypus factors through N/q holds for the trivial character. Tested on 27a, q=3: a₃=0.
- For q∥N, state a §3.2 target: a weight-two trivial-character newform has a_q²=1 (Atkin–Lehner 1970, Theorem 3; Miyake, Theorem 4.6.17). The route goes through the pinned `HeckeRing.GL2.Newform.atkinLehnerSign` (`AtkinLehner/Sign.lean:295`), which is ±1 by line 307. Tested: 11a gives a₁₁=1 and 14a gives a₂=−1.
- For the index, cite `CongruenceSubgroup.Gamma0_prime_power_index`. Add to Layer 1 the target that [SL₂(ℤ):Γ₀(ab)] is the product of the two indices for coprime a and b. Tested: μ(12)=μ(4)μ(3)=6·4=24=12·(3/2)(4/3). Composite levels such as μ(30)=72 and μ(35)=48 in Layers 1–4 need this step.
- Reword line 9 to match.

The Lean headlines already use `(CongruenceSubgroup.Gamma0 N).index` (checked in the elaborated signatures), so `Suggested.lean` does not change.

## R02 (P2) — The minimal period subvariety now has two owners

**Location.** README line 731: “Define the minimal period subvariety. … A_ω is the smallest abelian subvariety B⊆A with ω∈t_B⊗_K ℂ”. Line 11: “Section 6.0f owns … the minimal period subvariety A_ω of an abelian variety in every dimension”. Line 1061: “its Layer 2 period theorem in every dimension uses the minimal period subvariety A_ω of §6.0f”.

**Witness.** FaltingsFinitenessAndIsogenyTheoremsPartII (#1738, head `fca9497`), README line 358, “### 2.1 Minimal period subvariety”, defines G_ω for every polarized G and period ω, needing only AbelianSchemesAndArithmeticModuli. Its line 13 says this roadmap “consumes nothing from Layer 2 and is not a downstream consumer”.

**Repair.** This roadmap comes earlier in the merge order (line 188, against 353), so §6.0f may keep the single definition. In that case #1738 must replace §2.1's definition with a citation of §6.0f (keeping its normalized degree Δ_L as a local definition) and correct its line 13, and both descriptions must record the order. If #1738 is not changed, restore the previous head's instance-only wording at §6.0f: the smallest abelian subvariety of E²×E′² containing the full-period vector, which #1738 line 13 already accommodates. Then delete the Layer 2 clause at line 1061 and “in every dimension and for every tangent vector” at line 11. Either way, `roadmaps grep -i 'minimal period subvariet'` must find a definition in only one roadmap.

## R03 (P3) — Wrong namespace and file for pinned declarations

**Location.** Line 41: “Consume `ModularForm.sturm_bound_finiteIndex` and `ModularForm.eq_of_sturm_bound` (NumberTheory/ModularForms/SturmBound, declared in the namespace `ModularForm`)”. The same names appear at lines 353, 418 and 753. Line 41 also gives the file of `TauCeti.EisensteinSeries.correctedE2` as `…/EisensteinSeries/WeightTwo/Basic`.

**Witness.** `TauCeti/NumberTheory/ModularForms/SturmBound.lean` opens `namespace TauCeti` (line 47), then `namespace ModularForm` (line 49), with the theorems at lines 79 and 102. The root name `ModularForm.sturm_bound_levelOne` is Mathlib's level-one theorem. `correctedE2` is in `EisensteinSeries/WeightTwo.lean:81`, and the pin has no `WeightTwo/` directory.

**Repair.**
- Write `TauCeti.ModularForm.sturm_bound_finiteIndex` and `TauCeti.ModularForm.eq_of_sturm_bound` at all four lines (the previous head's spelling).
- Say “declared in the namespace `TauCeti.ModularForm`”.
- Cite the file `NumberTheory/ModularForms/EisensteinSeries/WeightTwo`.

## R04 (P3) — ModularForms sections that only an open revision defines, not named in the description

**Location.** Line 9: “ModularForms §3.1 owns …, §8.2 …, §10C …, and §§0.2 and 1.1 …”. The same ids are cited at lines 49, 229, 304, 323, 342, 353, 355, 361, 387, 642, 682, 753, 871 and 1053.

**Witness.** ModularForms on main (`eaf17b1`) has subsections only under Layer 10 (10A, 10B, 10C at lines 1052, 1068, 1119). §§0.2, 1.1, 3.1 and 8.2 exist only at #1706 (roed-math, `a24d49a`), at lines 360, 422, 525 and 862. The description's depends-on and merge-order lists do not name #1706.

**Repair.** Name ModularForms (#1706) in the description's merge-order paragraph as a revision that must merge first. Citing its numbering is legitimate, because #1706 drops the Layer 8G the previous head cited. The README stays as is.

## R05 (P3) — The existence argument for A_ω uses Cartier's theorem beyond the affine case without an owner

**Location.** Line 731: “the identity component of B₁∩B₂ is an abelian subvariety whose tangent space is t_(B₁)∩t_(B₂), because group schemes of finite type over a field of characteristic zero are smooth”. The *Needs:* line 739 lists only AbelianSchemesAndArithmeticModuli §§A5.1 and A6.3–A6.5.

**Witness.** Tau Ceti's Cartier theorem, `smoothCommHopfAlgProperty_of_charZero` (`Algebra/AlgebraicGroup/Smooth/CharZero.lean:148`), covers finite-type commutative Hopf algebras, that is, affine groups. B₁∩B₂ is proper. AbelianSchemesAndArithmeticModuli §A6.3 cites Stacks Tag 047N inside its own proof but states no target for it.

**Repair.** Choose one:
- Add to line 739: “smoothness of finite-type group schemes over a field of characteristic zero (Stacks, Tag 047N), proved within this subsection”.
- Take the existence through §A5.1 instead. Over ℂ, the identity component of B₁(ℂ)∩B₂(ℂ) is a complex subtorus with Lie algebra t_B₁∩t_B₂.

Tested on B₁=E×0 and B₂=the diagonal in E×E: the intersection is the reduced origin, and (ℂ,0)∩{(v,v)}=0.

## Previous findings

- none: review 6 (at `d2cbd93`) raised no finding. Its settled note on the two Kato contract slugs still holds: lines 67 and 69 are untouched by this diff.

## Verified sound

:robot: AI incremental re-review of 65 changed lines since `d2cbd93`, all in the README; `Suggested.lean` is byte-identical. I checked the 20 changed passages, every pinned declaration they name, every ModularForms, AbelianSchemesAndArithmeticModuli and FaltingsFinitenessAndIsogenyTheoremsPartII section they cite, and the Gaudron–Rémond locators of the new §6.0f text. No file outside the folder changed: `git diff --stat origin/main...HEAD` outside it is empty.

**Gate and build.** My rerun of the gate:

```text
gate EllipticCurveModularityPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The worker's gate also reported `build=0`. `lake env lean` on `TauCetiRoadmap/EllipticCurveModularityPartII/Suggested.lean` gave 13 `declaration uses sorry` warnings and no error (exit 0, 21 s). A scratch file with `#check @` for all 24 declarations elaborated (exit 0). `rationality_of_small_prime_coefficients` and `integral_sturm_congruence` take `(CongruenceSubgroup.Gamma0 N).index` directly. No binder changed, since the file did not change.

**Dependency check.**

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line.

**Pinned declarations opened** (Tau Ceti `a91d3aaf`, Mathlib `6b7abb3c`). Paths are under `TauCeti/NumberTheory/ModularForms/` unless stated.
- `SturmBound.lean`: lines 79 and 102, in namespace `TauCeti.ModularForm`.
- `TrivialNebentypus.lean:220`: `cuspFormCharSpaceOneEquiv`, the identity on underlying functions.
- `Newforms/Basic.lean`: `cuspFormsOld` at 105 (proper divisor levels only), `isCompl_cuspFormsOld_cuspFormsNew` at 249.
- `Newforms/FullEigenform.lean:126`: `toEigenform`, an eigenvector of every Tₙ including bad n.
- `Newforms/NumberField.lean:152`: `isIntegral_qExpansion_coeff`, with `2 ≤ k`.
- `HeckeSlash/Finite.lean`: `heckeTCuspAlgebra` at 51 (all Tₙ) and its finiteness at 122 (`2 ≤ k`).
- `AtkinLehner/Normalized.lean`: line 134, giving (√Q)^(2−k)·(f∣W) on Γ₀(N), and line 370, the composition law.
- `EisensteinSeries/WeightTwo.lean:81`: `correctedE2`.
- `Newforms/BadPrime/Vanishing.lean:101`.
- `CongruenceSubgroups/Basic.lean`: lines 547 and 631.
- `AtkinLehner/Sign.lean`: lines 295 and 307.
- `TauCeti/Algebra/AlgebraicGroup/Smooth/CharZero.lean:148`.
- Mathlib `NumberTheory/ModularForms/LevelOne/DimensionFormula.lean:307`.

**Cross-roadmap citations resolved.**
- ModularForms at #1706: §0.2 (eta transformation and the eta-quotient criterion), §1.1 (order dictionary), §3.1 (fixed-character oldspace and orthogonal decomposition), §8.2 (unique conjugate f^σ, χ_g=σ∘χ_f, orbit cardinality [K_f:ℚ]), §10C (`dim S_k(Γ₁(N))^new=Σβ(N/M)dim S_k(Γ₁(M))`, β=μ*μ, with the fixed-character form).
- ModularForms on main: Layer 4, lines 588–591 (bad-prime classification), and 10C, line 1119.
- AbelianSchemesAndArithmeticModuli at #849 `bb1d12a`: §A5.1 (2511), §A6.3 (2852), §A6.4 (2872), §A6.5 (2905).
- FaltingsFinitenessAndIsogenyTheoremsPartII at #1738: line 13, §2.1 (358), §2.3 (403, with constant C_g depending only on g, as line 1061 says), and Layer 6 §6.1 (955–961, consuming §6.0f).

**Sources.**
- GaudronRemond2011 lines 63–64 (p. 2): A_ω is the smallest abelian subvariety whose tangent space contains a period.
- Lines 918–921 (p. 17): Proposition 6.1, applying Nakamaye's lemma with T^(g−dim A′)·deg_L A′ ≤ (deg_L A)·n^(g−dim A′) for a section vanishing to order gT along t_A at the origin. This matches line 741.
- Lines 1528–1530 (p. 27): §7.2, A_ω in E₁²×E₂² in the non-CM case.

### Adversarial table: changed statements

| Statement / definition | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Line 41: bad-prime classification (wt 2, χ=1) | 11a, q=11∥11; 14a, q=2∥14; 27a, q=3, 9∣27 | a₁₁=1, a₂=−1, so a_q²=1, 1; a₃=0; pinned name only for q²∣N | Facts true; q∥N case and both cited names absent → R01 |
| Line 41: Γ₀(N) index formula | N=1, 11, 12; pinned prime powers | 1·1=1·1; 12·11=132=11·12; μ(12)·6=24·6=144=12·12; pin gives μ(4)=6, μ(3)=4 only | Composite case not at pin → R01 |
| Lines 41/353/418/753: Sturm bound | Γ₀(11), k=2 | index 12, bound ⌊24/12⌋=2, coefficients 0..2; §3.1 tests q≤μ/6=2 | Content right; name → R03 |
| Line 41: `cuspFormCharSpaceOneEquiv` | N=11, k=2 | dim S₂(Γ₁(11))^(χ=1)=1=dim S₂(Γ₀(11)) | Sound |
| Line 41: `cuspFormsOld`, complement | N=11; N=22 | old 0, new 1; f(z),f(2z) give old 2 = dim S₂(Γ₀(22)), new 0 | Sound |
| Line 41: `toEigenform` | 11a | U₁₁f=a₁₁f=f; a₄=a₂²−2=4−2=2 | Sound |
| Line 41: `heckeTCuspAlgebra_finite`, `isIntegral_qExpansion_coeff` | N=11, k=2; k=1 | algebra ℤ on a 1-dimensional space; k=1 excluded by `2 ≤ k`, as the README says | Sound |
| Line 41, §6.3: normalized Atkin–Lehner | k=2; k=4, Q=4; Q·Q/gcd² | factors 1 and 1/4; composition index 1, an involution | Sound |
| Line 41: `correctedE2` | t=1, 2 | diag(t,1) slash in weight 2 gives det¹=t, so E₂(z)−tE₂(tz); constant term 1−t: 0, −1 | Content right; path → R03 |
| Line 49: §8.2 orbit | level 23, K_f=ℚ(√5); 11a | orbit 2=[K_f:ℚ]; 1 | Sound (#1706 line 862) |
| Line 49: §10C newspace identity | N=11; N=22 | 1−2·0=1; 2−2·1−2·0+4·0=0 | Sound (#1706 10C) |
| Line 642: §§0.2/1.1 for §6.0a | (η(2τ)/η(τ))²⁴ at N=2 | Σδr_δ=−24+48=24≡0; Σ(N/δ)r_δ=−48+24≡0; k=0; t=2¹²(…)=4096q+…, j≈q⁻¹ at t=0 | Criterion met; pole orders 1 and 2 |
| Line 731: A_ω definition and API | ω=0; y²=x³−x, (ϖ,iϖ); non-CM (ω₁,ω₂); pr₁ on diagonal; zero map | dims 0, 1, 2 (aω₂=bω₁ with (a,b)≠0 forces ω₂/ω₁∈ℚ); image E, preimage dim 2; 0=A′₀ | Sound; route input → R05 |
| Line 741: multiplicity estimate at origin | g=1, L=O(d[0]), n=1, T=d; g=2, A′=0, T=2 | d·1≤1·d, with equality; T=d+1 impossible; 4 vs binomial(3,2)=3 | Matches GaudronRemond2011 lines 918–921 |
| Lines 11/731/1061: ownership of A_ω | #1738 §2.1 vs §6.0f | two definitions; #1738 line 13 vs README line 1061 contradict | → R02 |
| Line 1061: Layer 6 consumption | #1738 lines 132, 959–961 | cites §6.0f B(d,h_F); C₀=10⁷·989²=9,781,210,000,000 | Sound |

### Adversarial table: carried rows

The diff changes no theorem statement, Check value or Lean declaration outside the rows above. Rows marked “Carried” are taken from review 6, and through it from reviews 3–5, at those heads; two rows were recomputed this round.

| Statement / definition | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| 1.1–1.2 `martinValue` (sample) | N=0,1,2,3,4,11,13,30,35,121 | 0,0,0,0,0,1,0,1,3,4 | Carried from review 6 |
| 1.3 `dimension_comparison`, 1.4 `martin_bound` (sample, headlines) | N=1,11,30,35,121 | 0<2/12; 1=12/12; 1<31/12; 3=36/12; 4<122/12 | Carried from review 6 |
| 1.5 F♯ (sample) | level 11, README line 383 | g⁺(11)=1, (√2+1)²=3+2√2=5.8284… | Recomputed this round; agrees |
| 2.1 `norm_bound` (sample, headline) | K=ℚ, I=(5), x=5; x=0 | 5≤5≤5¹; x=0 would need 5≤0 | Carried from review 6 |
| 2.2 removed-prime bound (sample) | deletion level 11, p=2, README line 338 | (11+1)/6=2; (√2+1)²=5.8284…, so ℓ≥7 excluded | Recomputed this round; agrees |
| 3.1 small-prime rationality (sample, headline) | level 11 | μ=12, primes ≤2, a₄=2 | Carried from review 6 |
| 4.2 `integral_sturm_congruence` (headline) | Δ with J=(0),(1),(6) | 1∉(0),(6); 1∈(1) | Carried from review 6 |
| 4.5 matrix selection (sample) | all of GL₂(ℤ/4) | 96 matrices; 24 fix 2e₁ with det(1−g)=0 | Carried from review 6 |
| 5.0a–5.0b, 5.4–5.5 isogeny degrees, two-torsion irreducibility (headlines) | n=19,20,21,37,163; ℓ=5,7,11 | true,false,true,true,true; 20, 22 excluded, 14 allowed | Carried from review 6 |
| 6.0d winding lattice (sample) | ℤ₅² with rational x-axis; f=q±2q² | saturation ℤ₅×0; periods −2, 0 | Carried from review 6 |
| 6.0f isogeny bound | d=1, h=−1; d=2, h≤985 | 9,702,250,000,000; between 39·10¹² and 40·10¹² | Carried from review 6 |
| 6.0g exceptional images (sample) | p=17, 19 | 17>17 false; 19>17 true; orders 12, 24, 60 | Carried from review 6 |
| 6.2 potential good reduction (sample) | p=11; q=2, 23 | 4≢1 mod 11; 23²≡1 | Carried from review 6 |
| 6.4 Cartan correspondence (sample) | p=2,3,5 | 3+1=1+3; 6+1=3+4; 15+1=10+6 | Carried from review 6 |
| 6.8 formal immersion at a cusp (sample) | p=11, q=23, f=t+2t² | cusp value 11dt≢0 mod 23 | Carried from review 6 |
| 6.10 `nonsplit_of_not_surjective` (sample, headline) | p=41 | 68880·40=2,755,200=\|GL₂(𝔽₄₁)\| | Carried from review 6 |
| 6.11 `lemos_integral_j` (sample, headline) | p=11; j=22/11, 1/11 | v₁₁(2)=0 admitted; v₁₁(1/11)=−1 excluded | Carried from review 6 |
| 6.15–6.16, 6.18 `lemos_surjectivity` (sample, headline) | p=37, 41 | 37>37 false; 41>37 true | Carried from review 6 |

**Seeded sample.** Of the fifteen sampled targets, the diff touches only the *Needs:* and Dependencies lines of 1.4, 2.2 and 3.1, not their statements or locators. Their locators (Martin Theorem 2 p. 3; BS2020 §2 p. 359; Kraus §3.2 pp. 1144–1145) are carried from review 6 with the rows above. The other twelve sampled targets lie outside the diff.

**Ownership.** I checked ownership only for the objects of the changed lines: the Tau Ceti declarations, the ModularForms sections, A_ω and the multiplicity estimate. The only second owner found is the one in R02.

## Not verifiable

- **Tau Ceti `2fd255d`**, the ModularForms revision's pin, is not available here. I could not confirm that the R01 names exist there, only that #1706's README names them.
- **Kenku1982, pp. 199–201**: settled as uncertified. The degree-list rows are carried.
- **Incremental scope**: the sampled targets outside the diff were not re-read against their sources this round.

## Source issues

No new issue in the passages read this round (GaudronRemond2011 pp. 2, 17, 27). These five are carried from review 6:

- **Misprint** in DarmonMerel2001 at proof of Proposition 7.1, printed p. 20, line 648: the source says L(f,1) equals 2πi times the upward integral from zero to i∞; it should be minus that normalized integral; affects the proof.
- **Error** in Lemos2017 at proof of Theorem 1.1, p. 5, line 194: the source says J₀(37) has rank zero; it should be positive rank, so that rank-zero explanation cannot establish the rational-point table; affects the proof.
- **Misprint** in DarmonMerel2001 at proof of Lemma 8.2, p. 22, line 741: the source says dt/t is a basis of the cusp cotangent for t=q^(1/p); it should be dt, with the cusp-form differential evaluated using its first coefficient; affects the proof.
- **Misprint** in Chen1998 at quotient-map convention following Theorem 2, p. 2, line 66: the source says H⊂K induces X_K→X_H; it should be X_H→X_K; affects the proof.
- **Gap** in BPR2013 at proof of Proposition 3.3, p. 9, line 462: the source says to use an isogeny bound with cutoff 1000 to deduce the displayed cutoff-985 conclusion; it should use the sharper bound stated in Theorem 3.1 directly; affects the proof.
