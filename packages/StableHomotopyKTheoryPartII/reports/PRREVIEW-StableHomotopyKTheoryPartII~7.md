# Review of StableHomotopyKTheoryPartII (pull request #1733 at e8c1239)

**Verdict:** needs changes

This is an incremental re-review of the 51 README lines changed since 9e5492a (commits 86c5ced and e8c1239), and of what cites or depends on them. The changed passages are:

- the Scope paragraph (line 7) and the RefinedTraceMethods/PadicHodgeRegulators ownership bullet (line 17);
- the Mathlib contract (line 38) and the new Tau Ceti contract with its Checks (lines 40–56);
- the RefinedTraceMethods and PadicHodgeRegulators contracts (lines 125 and 136), and the deleted LocalFieldsRamification contract;
- §4.8 (lines 627, 631, 637–638, 650 and 655) and the Layer 4 Dependencies (line 665);
- the Downstream consumers paragraph (line 1075).

`Suggested.lean` and `metadata.toml` have not changed since aec0155b, and no file outside the folder changed. The previous R01 and R02 are repaired. There are two P3 findings, one new and one carried from the previous report, and nothing blocks.

## R01 (P3) — The Tau Ceti contract leaves out `Module.Finite K M` from `TauCeti.IsUnramified.residueFieldHomEquiv`

**Location:** `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:45`, “Under the further hypotheses `Module.Finite K L` and `IsUnramified K L`, the rigidity bijection `TauCeti.IsUnramified.residueFieldHomEquiv K L M`: for every nonarchimedean local field M with `Algebra K M` and `ValuativeExtension K M`, reduction is a bijection”.

**Claim:** The pinned equivalence also requires `[Module.Finite K M]`. It is in the section's variable block, and since it mentions only K and M it is an instance argument of the `def`. The bullet lists every other instance hypothesis, so leaving this one out misstates the declaration an implementer will call. §4.8 is unaffected: it uses M=L, where the extra hypothesis is the `Module.Finite K L` the bullet already lists.

**Witness:** TauCeti/NumberTheory/LocalField/Unramified/Rigidity.lean:67–70 has the variable block `… [Algebra K M] [ValuativeExtension K M] [Module.Finite K M] [IsUnramified K L]`, and line 142 has `def IsUnramified.residueFieldHomEquiv`. A scratch `#check @TauCeti.IsUnramified.residueFieldHomEquiv` prints `… [ValuativeExtension K M] → [Module.Finite K M] → [TauCeti.IsUnramified K L] → (L →ₐ[K] M) ≃ …`.

**Exact repair:** Replace “for every nonarchimedean local field M with `Algebra K M` and `ValuativeExtension K M`” by “for every nonarchimedean local field M with `Algebra K M`, `ValuativeExtension K M` and `Module.Finite K M`”. I tested this at M=L: the added hypothesis becomes `Module.Finite K L`, which is already in the bullet, so §4.8 line 631 and the API bullet at line 638 need no change.

## R02 (P3) — The `stacks-algebra` manifest entry is still orphaned

**Location:** `packages/StableHomotopyKTheoryPartII/sources.toml:186`–`197`, the entry with `id = "stacks-algebra"`, `locator = "04GK"`, `cited_for = ["4.8"]`.

**Claim:** This is the previous R03, carried. The README cites no Stacks tag. The entry still records a work the roadmap does not cite, its `cited_for` points at §4.8, which no longer uses it, and it has no `authors`, `title` or `year`. The file is in the board package, not in the pull request's folder, so no head of the pull request can repair it; the repair is to the package manifest. No repair report marks it as not actionable.

**Witness:** A case-insensitive search of the README for “Stacks” and “04GK” finds 0 hits. The References list (lines 1081–1095) has eleven entries and none is Stacks. sources.toml:187–197 still has `id`, `locator_scheme`, `locator`, `url`, `fetched_from`, `fetched_at`, `sha256`, `licence_class`, `status`, `accessed`, `cited_for` and nothing else. The file's last change on the board is ec4e09f5 (PRREVIEW~4).

**Exact repair:** Delete the `stacks-algebra` entry, lines 186–197 including its `[[source]]` header, from `packages/StableHomotopyKTheoryPartII/sources.toml`. Nothing in the README changes.

## Previous findings

- R01 — repaired: line 47 now reads “For p prime, `Padic.integerRingEquiv`, the ring isomorphism between the valuative integer ring 𝒪[ℚ_p] and ℤ_p (Padic.lean)”. The same name is at lines 631, 637, 655 and 665, and `TauCeti.integerRingEquiv` occurs 0 times.
- R02 — repaired: line 650 now reads “Its two ℤ₃-algebra endomorphisms x↦x and x↦−1−x reduce to x−1↦x−1 and x−1↦−(x−1), two of the three endomorphisms … the endomorphism with c=0 has no lift”.
- R03 — not repaired: sources.toml:187 `id = "stacks-algebra"` … `cited_for = ["4.8"]` is still present, while the README cites Stacks 0 times. It is carried as R02 above.

## Verified sound

**Gate, dependency direction, elaboration.** I ran these myself on this head.

```text
gate StableHomotopyKTheoryPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

- The worker's gate on this head, which includes the targeted build, reports `build=0`.
- The dependency check prints no UPWARD, CYCLE or moved line. PadicHodgeRegulators is at merge-order line 313, RefinedTraceMethods at 316 and this roadmap at 319.
- LocalFieldsRamification is no longer cited. The README now cites the pinned Tau Ceti declarations directly, which is the right supplier for a completed roadmap whose content is in the library.
- `git diff --stat origin/main...HEAD`, excluding the folder, is empty, and the worktree is clean.
- `lake env lean` on `TauCetiRoadmap/StableHomotopyKTheoryPartII/Suggested.lean` exits 0 in 5.6 s with no diagnostics. The file has 64 lines, `import Mathlib`, a module docstring naming 14 headline groups as not statable and zero declarations. The signature inventory and the one-tactic padding probe therefore have zero entries, as in PRREVIEW~3–~6.

**Pinned declarations opened this round.** I built the four Tau Ceti modules with `lake build` (Unramified.Rigidity, ResidueCorrespondence, Padic, Frobenius) and elaborated one scratch file of 21 `#check`s against the pins. Every name in the changed passages resolves. Each has the hypotheses the README states, except the one in R01.

| Pinned file and line | Declaration, as elaborated |
|---|---|
| TauCeti/NumberTheory/LocalField/Unramified/Basic.lean:113, 195, 275 | `TauCeti.IsUnramified K L` has the fields `ramificationIndex K L = 1` and `Algebra.IsSeparable 𝓀[K] 𝓀[L]`. `IsUnramified.inertiaDegree_eq_finrank : inertiaDegree K L = Module.finrank K L` needs only `[IsUnramified K L]`. `isUnramified_iff_etale : IsUnramified K L ↔ Algebra.Etale 𝒪[K] 𝒪[L]`. All three are stated for local fields with `Algebra K L` and `ValuativeExtension K L`, as lines 42–44 say. |
| Unramified/Rigidity.lean:67–70, 142 | `IsUnramified.residueFieldHomEquiv K L M : (L →ₐ[K] M) ≃ (𝓀[L] →ₐ[𝓀[K]] 𝓀[M])`, under `Module.Finite K L`, `Module.Finite K M` and `IsUnramified K L`, with no Galois hypothesis. The second of these is missing from line 45 (R01). |
| ResidueCorrespondence.lean:46–49, 150, 164, 178, 193 | Under `FiniteDimensional K L`, `IsGalois K L` and `IsUnramified K L`: `residueFieldAutEquiv : Gal(L/K) ≃* Gal(𝓀[L]/𝓀[K])`; `frobeniusAlgEquiv`, the preimage of `FiniteField.frobeniusAlgEquivOfAlgebraic`; `orderOf_frobeniusAlgEquiv : orderOf … = inertiaDegree K L`; and the instance `isCyclic_algEquiv : IsCyclic Gal(L/K)`. All match line 46. |
| ResidueCorrespondence.lean:237; Frobenius.lean:61 | `eq_frobeniusAlgEquiv_of_valuation_sub_pow_lt_one` takes `∀ y : 𝒪[L], v(σ y − y^(Nat.card 𝓀[K])) < 1` and concludes `σ = frobeniusAlgEquiv`. `frobeniusAlgEquiv_teichmullerLift` takes `teichmullerLift L (frobeniusAlgEquiv • a)` to `teichmullerLift L (a ^ Nat.card 𝓀[K])`. Both match line 46. |
| Padic.lean:54, 86 | `Padic.integerRingEquiv : (p : ℕ) → [Fact p.Prime] → 𝒪[ℚ_[p]] ≃+* ℤ_[p]`. |
| Mathlib/FieldTheory/Finite/GaloisField.lean:302, 318 | `FiniteField.natCard_algHom_of_finrank_dvd : [Finite L] → finrank F K ∣ finrank F L → Nat.card (K →ₐ[F] L) = finrank F K`. This matches line 38: L finite and [K:F] dividing [L:F] give exactly [K:F] maps. |
| Mathlib/FieldTheory/Galois/Basic.lean:508 | `IsGalois.of_card_aut_eq_finrank : [FiniteDimensional F E] → Nat.card Gal(E/F) = finrank F E → IsGalois F E`, as line 38 states. |
| Mathlib FieldTheory/Finite/Basic.lean, RingTheory/WittVector/{Basic,Compare,Frobenius}.lean | `frobeniusAlgEquivOfAlgebraic` (needs `[Fintype K] [Algebra.IsAlgebraic K L]`), `orderOf_frobeniusAlgEquivOfAlgebraic` (needs `[Finite L]`), `WittVector.constantCoeff : 𝕎 R →+* R`, `WittVector.equiv : 𝕎 (ZMod p) ≃+* ℤ_[p]`, `frobenius_zmodp`, `coeff_frobenius_charP` (needs `[CharP R p]`), `IsPoly.map` and `WittVector.frobenius` were all re-elaborated and have not changed. |

**Supplier citations resolved this round.**

- RefinedTraceMethods at its open head b0ad346a. §6.1 (line 2539) opens with “Étale algebras lift uniquely to étale E∞-algebras” for any connective E∞-ring A. Taken at A=S_p^∧, this is the equivalence that lines 17, 124–125 and 627 consume.
- PadicHodgeRegulators at its open head 13305d88. “Supplier: Finite unramified étale Q_p-algebras” is now at line 341, and it still gives O_L=W(k), [L:ℚ_p]=dim_𝔽_p k and φ_L=W(Frob_k)[1/p]. “Supplier: Frobenius on the roots of unity of an unramified field” is at line 219. Line 136's reworded combination sentence consumes exactly these.
- Neither supplier section states that W(k) is étale over ℤ_p. Line 125 correctly attributes that to `TauCeti.isUnramified_iff_etale`.

**Ownership.**

- RefinedTraceMethods §6.1 gained “Spherical lifts of perfect δ-rings” at b0ad346a, two hours after this head. That statement covers S_B flat over S_p^∧, the universal property and full faithfulness. Its last bullet says that for B finite étale over ℤ_p, S_B is the étale lift with the same marking, and a Check says S_(W(𝔽₄)) is free of rank 2 with exactly two E∞ endomorphisms.
- This README is consistent with that statement:
  - it defines SW(k) as RefinedTraceMethods' étale lift (lines 7, 17, 627);
  - it neither constructs nor uses the general perfect-δ lifts (lines 7, 1075);
  - it derives rank-d freeness from the flatness that Lurie's notion of étale includes (line 633), whereas the supplier states flatness in general and rank 2 only in a Check;
  - its own 𝔽₄ count of 2 agrees with that Check.
  
  So no object has two owners.
- §4.8's derivation that L/ℚ_p is Galois restates nothing at the pin. Tau Ceti proves `IsGalois` only for the intermediate fields `unramifiedExtension K Ω f` (Unramified/Existence.lean:210) and `maximalUnramifiedExtension` (Maximal.lean:222). No pinned theorem gives `IsUnramified K L → IsGalois K L` for an arbitrary L.
- Other roadmaps that own spherical lifts of perfect rings, such as HabiroCohomologyFoundationsPartII §0.1 as cited by GeneralAlgebraicKTheoryPartII line 1677, are not cited here.
- Ownership against open pull requests whose files the brief does not give was checked only through `roadmaps grep`.

**Seeded sample.** None of the fifteen seeded targets falls in the changed passages, so their verdicts carry from PRREVIEW~3. As a spot-check I read, against the cached texts, the eight targets not in the previous report's sample list:

| Target | Locator checked |
|---|---|
| 1.2 | lnr12 line 1488, Proposition 4.15: G finite, X bounded below and of finite type over 𝔽_p, strong convergence to continuous homology. |
| 2.3 | lnr12 line 641, Definition 3.1, §3.1, with x of degree 1 and y of degree 2 at odd p. |
| 3.2 | ns18 line 3316: proof of Theorem III.1.7, the truncated functors and Lemma I.2.6. |
| 4.1 | ns18 line 4868: Lemma IV.1.3, unique lax symmetric monoidal factorization through the F_p^×-fixed points; p.325–326. |
| 4.6 | ns18 lines 4955 and 4966: Corollaries IV.1.9–IV.1.10, printed p.328. |
| 5.3 | ns18 line 5189: equation (12), printed p.334. |
| 7.2 | ns18 line 649 (p.220) and lines 4990–4997 (p.329, equation (11)). |
| 8.3 | ns18 line 5978: Theorem IV.3.7, simply connected Y, printed pp.354–355. |

Theorem, page and hypotheses agree with the README in all eight. No new source locator was added this round.

**Declared gap.** `steenrod-finite-hopf-chain` is unchanged (BordismFormalGroups F6.3, stated in that supplier's subsection at README line 100), as in PRREVIEW~3–~6.

**Adversarial mathematics.** The new rows (the changed statements, values computed this round) come first, followed by the previous report's rows for the untouched statements, compressed and citing PRREVIEW~6.

| Statement | Instances tried | Values computed on each side / excluded model | Result | Change |
|---|---|---|---|---|
| Tau Ceti bullet 1 (line 44): unramified class, `inertiaDegree_eq_finrank`, `isUnramified_iff_etale` | ℚ₂(ζ₃); ℚ₃(ζ₃); L=K | ℚ₂(ζ₃): e=1, f=2, inertia degree 2 = [L:ℚ₂] 2. ℚ₃(ζ₃): e=2, f=1, so 1≠2 and it is not unramified; ℤ₃[ζ₃] is not étale since f′=2x+1 is 3≡0 at the residue root 1. L=K: 1=1. | Pass | None |
| Tau Ceti bullet 2 (line 45): rigidity bijection | M=L=ℚ₂(ζ₃); L=ℚ₂(ζ₃), M the unramified quartic; ℚ₃(ζ₃) | End_ℚ₂(L)=2 and End_𝔽₂(𝔽₄)=2. Embeddings L→M: 2, and 𝔽₄→𝔽₁₆: 2. ℚ₃(ζ₃): 2 against 1, so it fails without the unramified hypothesis. At the pin it also requires `Module.Finite K M`. | Pass, except the stated hypotheses | R01 |
| Tau Ceti bullet 3 (line 46): residue correspondence, cyclicity, Frobenius, order, congruence, Teichmüller | unramified cubic over ℚ₂; ℚ₂(ζ₃) | Cubic: Gal of order 3, cyclic; the Frobenius has order 3 = inertia degree; the hypotheses `FiniteDimensional`, `IsGalois`, `IsUnramified` match the variable block at lines 46–49. ℚ₂(ζ₃): the Frobenius is ζ₃↦ζ₃², of order 2. | Pass | None |
| Mathlib additions (line 38) | F=𝔽₂: K=L=𝔽₈, and K=𝔽₄, L=𝔽₈; ℚ₂(ζ₃), ℚ₂(∛2) | 𝔽₈: 3 divides 3, count 3 (a, a², a⁴). 𝔽₄→𝔽₈: 2 does not divide 3, the hypothesis fails and the true count is 0. ℚ₂(ζ₃): |Aut|=2=[L:ℚ₂], Galois. ℚ₂(∛2): ζ₃∉L because L is totally ramified of degree 3 and ℚ₂(ζ₃) is unramified of degree 2, so |Aut|=1≠3 and it is not Galois. | Pass | None |
| Tau Ceti Checks (lines 53–56) | 𝔽₄; ℚ₃(ζ₃); ℚ_p; 𝔽₈=𝔽₂[a]/(a³+a+1) | N(ζ₃−1)=(ζ₃−1)(ζ₃²−1)=1−ζ₃−ζ₃²+1=3, a unit of ℤ₂, so the identity fails the congruence. ℚ₃(ζ₃): two ℚ₃-endomorphisms against one 𝔽₃-endomorphism. ℚ_p: 1 and 1, with the Frobenius of order 1. 𝔽₈: a²≠a⁴=a²+a, and a⁴=a² forces a∈𝔽₂. 𝔽₄: Frob⁻¹=Frob since the order is 2. Each Check excludes its wrong model (the identity, the ramified case, the geometric Frobenius). | Pass | None |
| §4.8 Galois paragraph (line 631) and API bullet (line 638) | d=1,2,3; ℚ₂(∛2) | d=1: one endomorphism, finrank 1. d=2: 2=2. d=3: 3=3, cyclic of order 3. ℚ₂(∛2): the rigidity-style count is 1=1, but inertia degree 1≠3=finrank, so the step that needs `IsUnramified` (`inertiaDegree_eq_finrank`) is what excludes it; |Aut|=1≠3. The order is not circular: `IsGalois` comes from `of_card_aut_eq_finrank` before the instance `isCyclic_algEquiv` (which needs `IsGalois`) is used. | Pass | None |
| §4.8 definition (line 627): SW(k) is RefinedTraceMethods' étale lift at W(k) | d=1, 2; Hℤ₂ | d=1: SW(𝔽_p)=S_p^∧, matching the supplier Check B=ℤ_p. d=2: rank 2, and E∞ endomorphisms 2 = |End(W(𝔽₄))| = 2, matching the supplier Check. Wrong model Hℤ₂: π₀=ℤ₂, but it is not flat over S_2^∧ (π₁Hℤ₂=0≠π₁S_2^∧⊗ℤ₂=ℤ/2), so it is excluded by étaleness. | Pass | None |
| §4.8 ramified control (line 650) | ℤ₃[ζ₃] | x↦−1−x reduces to 1+t↦1−t, so c=2=−1. The identity gives c=1. c=0 has no lift. Counts are 2 integrally and 3 on the reduction. | Pass | Previous R02 repaired |
| Scope (line 7), line 17, RefinedTraceMethods contract (line 125), PadicHodgeRegulators contract (line 136), Downstream (line 1075): ownership split | RefinedTraceMethods §6.1 at b0ad346a; PadicHodgeRegulators line 341; pin | Lifting: RefinedTraceMethods. Witt/unramified identification and rank: PadicHodgeRegulators. Étale comparison, rigidity, residue correspondence: Tau Ceti. End=Gal, Galois assembly, rank-d freeness, Tate-Frobenius comparison: here. The supplier's general perfect-δ statement is not used. One owner per object. | Pass | None |
| §4.8 Needs (line 655), Layer 4 Dependencies (line 665) | 18 backticked names | All 18 were elaborated at the pins this round. There is no LocalFieldsRamification edge; depcheck shows 0 problems. | Pass | None |
| Manifest | sources.toml | 11 of 12 entries are cited in the README; `stacks-algebra` is cited 0 times and has no authors, title or year. | Record defect | R02 |
| §4.8 End=Gal, reduction bijection, Witt Frobenius unique lift and congruence | W(𝔽₄), W(𝔽₂), ℤ₃[ζ₃], multiplication by p, the zero map, the identity on W(𝔽₄) | Kernel 0 or pⁿW(k), and σ(pⁿ)≠0. Counts 2=2 and 1=1. Multiplication by p and zero are not unital. v(ζ₃−ζ₃²)=0 excludes the identity. | Pass (carried from PRREVIEW~6) | None |
| 1.1 Coefficients and weights | p=2, 3, 5 | HZ Tate (𝔽₂,0) against HF₂ (𝔽₂,𝔽₂); deg t²=−4, βe=1; weights 2 and 3 at 5. | Pass (carried from PRREVIEW~6) | None |
| 1.2 Homological Tate SS | S, C₂; G=1, C₃ | Continuous H_n=𝔽₂ for all n against ordinary 0 for n≠0; prime-to-p Tate 0. | Pass (carried from PRREVIEW~6) | None |
| 2.1–2.2 Continuous cohomology, inverse-limit Adams | constant tower, zero tower, Singer tower | H_c=H; colimit 0; bottom degrees 1, 0, −1 at 2. | Pass (carried from PRREVIEW~6) | None |
| 2.3–2.4 Singer module, Tor-equivalence | M=0, 𝔽₂, 𝔽₃ | ε(Σx⁻¹)=1; Sq¹x⁻¹=1; β(xy⁻¹)=1; trivial-action model gives 0. | Pass (carried from PRREVIEW~6) | None |
| 2.5–2.7 Approximation, realization, finite-type Segal | B=0, S; Hℚ; HF_p | Bottom degrees (1,0,−1) at 2 and (1,−1,−3) at 3; π₀=ℤ_p on both sides; Hℚ gives 0, 0. | Pass (carried from PRREVIEW~6) | None |
| 3.1–3.4 Finite towers, truncated Tate, HF_p, bounded-below Segal | empty, binary-prefix; ⊕_κ𝔽_p; Σ⁻¹HF_p, KU | Sizes 0/0, 2/2, 1/1, 2^ℵ₀; mixed words 2^p−2 have Tate value 0; the all-ones vector is not in the sum; KU₂^∧/2≠0=T₂(KU)/2. | Pass (carried from PRREVIEW~6) | None |
| 4.1–4.7 Weyl, diagonal, splitting, power, transfer ideal, Frobenius, examples | p=2, 3, 5; HZ, KU, HF₄, Hℤ₃ | Weyl orders 1, 2; P₂(2)=4 in HZ; a²=a+1 in 𝔽₄; indices (5,10,10,5); 30 mod 5=0; colim π₀=ℚ_p. | Pass (carried from PRREVIEW~6) | None |
| 4.8 spectral bullets and Checks | 𝔽₂, 𝔽₃, 𝔽₄ | Ranks 1, 1, 2; [a]↦[a+1]≠[a]; the second iterate fixes [a]. | Pass (carried from PRREVIEW~6) | None |
| 5.1–5.6 Twists, Thom, all-degree power and Frobenius | rank 0, ±1; Möbius; n=0, ±1 | π₂R at rank −1; Möbius ℤ/2 against ℤ; u↦u+u²s; rank 0 at n=−1. | Pass (carried from PRREVIEW~6) | None |
| 6.1–6.3 EM decompositions, Steenrod components | p=2, 3, 5, 7 | Shifts 4, 5 at 3; (2!)²=−1 mod 5, (3!)²=1 mod 7; θ₀(xz)=yz−xw. | Pass (carried from PRREVIEW~6) | None |
| 7.1–7.5 KU power, Tate coefficients, Adams, counterexamples | p=2, 3; r=1, 2 | Dimensions (1,3) at 2 and (2,8) at 3; (x−1)^p−1 gives −2 at 0, against 0 for (1+x)^p−1; pβ·β⁻¹/p=1; T₂(S) π₀=ℤ₂. | Pass (carried from PRREVIEW~6) | None |
| 8.1–8.3 Free-loop totalization, Tate limit, Segal | Y=*, S², ∨_κS², S¹ | Bounds (n,n+2); S¹ gives 0; genuine ℤ² against ℤ⊕ℤ_p, both completing to ℤ_p². | Pass (carried from PRREVIEW~6) | None |
| Conventions, Hopf-chain contract, norms, completions, unramified hypothesis | k=0, 1, 3; p=2, 3; Hℚ, HF_p | D₁(E)=E; Sq¹Sq²=Sq³; dimensions 1, 2, 8 and 1, 2, 12; completions 0, HF_p; ℚ₃(ζ₃) e=2. | Pass (carried from PRREVIEW~6) | None |

**Headline theorems and padding.** Nothing changed. `Suggested.lean` declares nothing, and its docstring names the 14 headline groups as not statable at the pins, including “the finite-field spherical Witt lift has Frobenius uniquely determined by Witt Frobenius on pi-zero”. That item is still accurate now that SW(k) is defined as RefinedTraceMethods' étale lift. There is no padding to probe.

## Not verifiable

- RefinedTraceMethods and PadicHodgeRegulators were read at their open heads (b0ad346a and 13305d88), not on main. RefinedTraceMethods §6.1 changed after this head; the citations this README makes of it still resolve.
- I did not check whether the Tau Ceti instances (`IsNonarchimedeanLocalField L`, `ValuativeRel L`, `ValuativeExtension ℚ_p L`, `IsUnramified ℚ_p L`) are available for the abstract L=W(k)[1/p] of PadicHodgeRegulators. This is implementer plumbing, unchanged from PRREVIEW~6.
- Ownership against open pull requests whose files the brief does not give was checked only through `roadmaps grep`.

## Source issues

- **Misprint** in ns18 at Example I.2.3(iii), printed p.220 (ns18 line 649 and line 660): the source writes the p-series and p²-series of the multiplicative formal group as (x−1)^p−1 and (x−1)^(p²)−1; it should be (1+x)^p−1 and (1+x)^(p²)−1, vanishing at x=0, as the same paper writes at p.329 (ns18 line 4991); affects nothing (the README uses (1+x)^p−1 and states its value at 0).
