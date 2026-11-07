# Review of QSeriesPartitionsAndMockModularForms (pull request #1391 at 4daf6e0)

**Verdict:** needs changes

Incremental re-review of the 23 lines changed since 4f0a0e0 (`TauCetiRoadmap/QSeriesPartitionsAndMockModularForms/README.md` only; `Suggested.lean` is unchanged since 3f9c890 and nothing changed outside the folder). The changed passages are the scope paragraph (line 13), the Mathlib supplier rows (lines 47–48), the ModularForms contract (line 101), §5.2 rewritten to own the eta multiplier on Mathlib's inversion law and discriminant, with two new Checks (lines 820–846), the Layer 5 Dependencies (line 972) and the Downstream consumers paragraph (line 1763). Two findings: one P2 on ownership against the open ModularForms revision, which the repair of R01 (option b of the previous report) created, and one P3 on a clause of the new τ-independence proof. Every changed statement was recomputed and holds.

## R01 (P2) — the eta multiplier now has two owners at the open heads: this §5.2 and ModularForms §0.2, which names this roadmap as its consumer

**Location.** `TauCetiRoadmap/QSeriesPartitionsAndMockModularForms/README.md` line 13: “Section 5.2 owns the eta multiplier system ν_eta on all of SL₂(ℤ) … its independence of τ, its T, S and −I values, the triviality of its 24th power”; line 822: “Prove that ν_eta(γ) is independent of τ and satisfies ν_eta(γ)²⁴=1: by `CuspForm.discriminant` … continuous on the connected half-plane … hence constant”; lines 47–48, 101, 972.

**Claim.** ModularForms on main has only the worked example η²⁴=Δ, so the general multiplier ν_eta, its τ-independence, 24th-power triviality and S, T, −I values are owned here.

**Witness.** The open ModularForms revision (pull request #1706, head a24d49a2, `TauCetiRoadmap/ModularForms/README.md`) owns the same object: §0.2 (lines 360–375) states `etaTransformation`, ε(γ)²⁴=1, η(γτ)=ε(γ)(cτ+d)^(1/2)η(τ) with the principal root, ε(T), ε(S), ε(−I) and the Dedekind-sum value, proved by the same route as this §5.2 (24th power 1 by the level-one modularity of Δ, continuity for c≠0, constant outright for c=0, lines 372–375). Its Downstream paragraph, line 1430, says that QSeriesPartitionsAndMockModularForms takes the eta transformation of §0.2 for its metaplectic eta cocycle. That section was added on 2026-11-06 (commit a24d49a2, “answers to the overlap cross-check”), after this roadmap's accepted head b0f44a8 of 2026-10-30 and in order to supply this roadmap; the head 4f0a0e0 consumed it, and this head re-owns it. Two open pull requests that each build the object, the supplier naming the consumer and the consumer declaring itself the owner, is the case the ownership rule classes as P2; the previous report's option (b) was offered without this line 1430 and produces exactly this state. ModularForms is a supplier of this roadmap (its Conventions and Layers 10A–10B are cited at lines 101, 740, 754, 794), so the single owner consistent with the supply direction is ModularForms §0.2, and this roadmap cannot be the owner that ModularForms cites.

**Repair.** Option (a) of the previous report: cite ModularForms §0.2 for the existence, τ-independence, 24th-power triviality and T, S, −I values of ν_eta (the text of head 4f0a0e0 at its lines 13, 47, 97, 821, 831, 839 and 969 did this and was verified against a24d49a2 there), keep in §5.2 only the definition in this notation, the multiplier-system cocycle with its root ratio, the lifted character on the square-root cover and the Checks (the two new Checks “eta multiplier inversion root” and “eta multiplier discriminant” may stay as Checks of the consumed law), and have the pull request's description name the ModularForms revision in its “Depends on” list and merge-order paragraph (the README never names a pull-request number). The Mathlib row of line 48 then records the pinned declarations the consumed law rests on, or is dropped. Tested on the instance that raised it: with (a) every ModularForms citation resolves at a24d49a2 lines 360–375, the overlap tool lists ModularForms §0.2 under “only an open revision defines”, cleared by the merge-order paragraph, and no roadmap besides ModularForms states the τ-independence of ν_eta. If instead a human settles ownership on this roadmap, the ModularForms revision must drop §0.2's general law and its line 1430, which this pull request cannot do; the report records the choice either way.

## R02 (P3) — the τ-independence proof says cτ+d avoids the negative real axis, which fails at c=0, d=−1

**Location.** `TauCetiRoadmap/QSeriesPartitionsAndMockModularForms/README.md` line 822: “it is continuous on the connected half-plane because cτ+d avoids the negative real axis there (for c≠0 it is not real, for c=0 it is ±1), hence constant.”

**Claim.** The quotient η(γτ)/(√(cτ+d)η(τ)) is continuous in τ because cτ+d never lies on the negative real axis.

**Witness.** γ=−I has c=0, d=−1 and cτ+d=−1 at every τ, which is on the negative real axis (the parenthetical's own “±1” includes it); the principal root √(−1)=i is still the value the Check “eta multiplier cocycle” uses. The conclusion holds because for c=0 the root is the constant √(±1), not because the branch cut is avoided. ModularForms §0.2 at a24d49a2 lines 373–375 states the two cases correctly (continuity for c≠0, constant outright for c=0).

**Repair.** Replace the clause by: “it is continuous on the connected half-plane: for c≠0, cτ+d is non-real there, so the principal root is continuous, and for c=0 the root is the constant √(±1); hence the quotient is constant.” Tested at γ=−I: the quotient is η(τ)/(i·η(τ))=−i at every τ, constant. Under option (a) of R01 this sentence moves to ModularForms §0.2 and the finding is discharged by deletion.

## Previous findings

- R01 — partly repaired: §0.2 is no longer cited anywhere (lines 13, 47, 101, 822, 972 cite ModularForms as on main, “Worked examples, target η²⁴=Δ”, main line 1381, and Mathlib's `Discriminant.lean`), so the unnamed-revision citation is gone; but the repair chose option (b) and re-owns the object that ModularForms §0.2 at a24d49a2 owns and hands to this roadmap (line 1430), which is this report's R01.

## Verified sound

**Gate.** Run on this head by this review: `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`, exit 0; the worker's gate on the same head agrees. `git diff --stat origin/main...HEAD` outside the folder: nothing.

**Dependency check.** `gate --depcheck … --movable`: `depcheck: 239 roadmaps, 2368 edges, 0 problem(s)`, exit 0; no UPWARD, CYCLE or moved line. The roadmap is at line 242 of the merge order; the changed `*Needs:*` line of §5.2 now cites only Mathlib and the declared gap; HalfIntegralWeightModularForms, named only under Downstream consumers, is not in the merge order and cites this roadmap's §5.2 as its supplier (its README at 1a78fdd2, lines 139–142, 277, 942–974), so the direction is consumer-ward.

**Elaboration.** `lake env lean` on a scratch copy of `TauCetiRoadmap/QSeriesPartitionsAndMockModularForms/Suggested.lean` (274 lines, byte-identical to the file reviewed at 4f0a0e0, b0f44a8 and e68263d; imports `Mathlib` and `TauCeti.Analysis.SpecialFunctions.Erf`, whose object file exists in the worktree) with `#check @name` appended for all 27 declarations: exit 0 in 6 s, exactly 15 `declaration uses sorry` warnings, no other diagnostic, 27 signatures printed. The headline list, headline coverage and one-tactic padding probes of the previous reviews stand unchanged: 15 sorried headlines, none closing in one tactic, no statable headline absent, 12 real-bodied definitions. Pins from `lake-manifest.json`: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf`.

**Pinned declarations opened at this round** (Mathlib `6b7abb3c`).

| Citation (README line) | File and line at the pin | What it says |
| --- | --- | --- |
| `ModularForm.eta` (47, 822, 972) | `Mathlib/NumberTheory/ModularForms/DedekindEta.lean` 56 | `eta z = 𝕢 24 z * ∏' n, (1 - eta_q n z)` with `eta_q n z = (𝕢 1 z)^(n+1)`; `Periodic.qParam h z = exp(2πiz/h)` (`Mathlib/Analysis/Complex/Periodic.lean` 40), so the prefactor is exp(2πiτ/24) as line 822 says |
| `ModularForm.eta_ne_zero` (47, 822, 972) | same file 113 | η z ≠ 0 for z in the upper half-plane |
| `ModularForm.eta_comp_eq_csqrt_I_inv` (48, 822, 972) | `Mathlib/NumberTheory/ModularForms/Discriminant.lean` 135–137 | on the upper half-plane set, η∘(−1/·) = (√i)⁻¹ • (√ · η) with `Complex.sqrt`, the principal root (`Mathlib.Analysis.Complex.SqrtDeriv` is imported at line 8) |
| `ModularForm.discriminant` (48) | same file 49 | Δ z = (η z)^24 |
| `ModularForm.discriminant_T_invariant`, `discriminant_S_invariant` (48, 844) | same file 127, 144 | `Δ ∣[12] T = Δ` and `Δ ∣[12] S = Δ` |
| `CuspForm.discriminant` (48, 822, 972) | same file 236–252 | `CuspForm 𝒮ℒ 12` with `toFun := Δ`, slash invariance under all of SL₂(ℤ) from the S and T generators, holomorphy and vanishing at every cusp; `𝒮ℒ` is the image of SL(2,ℤ) in GL₂(ℝ) (`ArithmeticSubgroups.lean` 93), so Δ(γτ)=(cτ+d)¹²Δ(τ) for every γ∈SL₂(ℤ) as line 822 uses |

**Supplier citations resolved at this round.**

| Citation (README line) | Where it resolves | What it says there |
| --- | --- | --- |
| ModularForms, Worked examples, target η²⁴=Δ (13) | main eaf17b1, `TauCetiRoadmap/ModularForms/README.md` 1381–1383 | develop η, its SL₂(ℤ) transformation and the Ligozat criterion as an explicit worked example rather than as general theory; the README's description is exact |
| ModularForms §0.2 (not cited at this head; R01) | #1706 head a24d49a2, lines 360–375 and 1430 | the general transformation with ε(γ), its proof by Δ and continuity, the Dedekind-sum value; line 1430 names this roadmap as the consumer |
| ModularForms Conventions, Layers 10A, 10B (101, 740, 754, 794) | unchanged since the previous report | arithmetic normalization and normalized Fricke operator; X(Γ), cusp and elliptic counts, genus; line-bundle cohomology and Riemann–Roch |
| HalfIntegralWeightModularForms §3.3 (1763, Downstream only) | #1721 head 1a78fdd2, `TauCetiRoadmap/HalfIntegralWeightModularForms/README.md` 942–974 | consumes from this §5.2 the definition, independence of z, ν_η(T)=e(1/24), ν_η(S)=e(−1/8), the law and the square-root cocycle; proves Apostol's Dedekind-sum closed form, the reciprocity law and the Rademacher–Knopp closed forms for c>0, as line 1763 says. It also proves ν_η(γ)²⁴=1 itself (line 962), which this §5.2 now owns; that restatement is on the consumer's side and is not a finding here |
| IntegralLattices §0G (1303, 1365; overlap lead) | main, `TauCetiRoadmap/IntegralLattices/README.md` 568 | “0G. The standard and degeneracy examples” exists on main; the lead that only #1239 defines it is false |
| `BruinierFunke2003, §3` (citation lead, line 1167) | `sources.toml` key | a source id, not a roadmap; false lead |
| `QToolkit.pochhammer` (citation lead, line 69) | HabiroCyclotomicCompletions §1.1, an open supplier the description names | a supplier's declaration cited by name, not a declaration of this roadmap; unchanged since the accepted head |

**Sources at the changed locators.** None of the fifteen seeded targets lies in the changed lines (§5.2 is not seeded; “7.4 characteristic transformation laws” and the others are untouched), so the previous reviews' locator checks stand. The only locator in the diff is unchanged: Zwegers2002 line 734 is Theorem 1.11 and line 741 its part (2) with the ν(γ)⁻³(cτ+d)^(1/2) factor, cited for the metaplectic cocycle. The README flags no locator as unverified.

**Ownership.** The new §5.2 content was searched by object (`roadmaps grep --readme-only -i 'eta multiplier|ν_η|ν_eta|etaTransformation|eta transformation'` over the 466 open heads and main): the eta multiplier system on SL₂(ℤ) is stated by ModularForms #1706 §0.2 (R01) and by this §5.2; HalfIntegralWeightModularForms #1721 consumes it from this §5.2 and owns the closed forms; HabiroNumberFields #1469 line 109 consumes §5.2; MaassForms #1717 line 197 excludes it; the theta multiplier (GeometryOfNumbersAndQuadraticArithmetic §4.3, MetaplecticAutomorphicForms §7.1) is a different object. Ownership against open pull requests was checked only through the heads this brief lists.

**Gaps.** The three declared gaps are unchanged in the README and `design/plan.json`; §5.2 still cites `gap:classical-metaplectic-model` for the cover comparison; nothing the diff adds is already provided by a supplier except the object of R01.

**Adversarial mathematics.** New rows for the changed statements first, with computed values (η evaluated numerically by its product to 4000 factors at τ=0.17+1.1i, τ=−0.3+0.6i and τ=i; the script is in the review scratch); the rows for untouched statements are carried from the previous report (marked).

| Statement / object | Instances tried | Computed sides or competing values | Result / change |
| --- | --- | --- | --- |
| §5.2 definition ν_eta(γ)=η(γτ)/(√(cτ+d)η(τ)), denominator nonzero | c=0 ⇒ d=±1; c≠0 | c=0: cτ+d=±1≠0; c≠0: Im(cτ+d)=c·Im τ≠0; η≠0 by `eta_ne_zero` | Keep |
| §5.2 τ-independence and ν²⁴=1 via Δ | γ=(2 1;3 2) at the three τ | ν(γ)=0.96593−0.25882i at all three (=exp(−πi/12)); ν²⁴=1.000000 (residual 2×10⁻¹⁴); Δ(γτ)/((cτ+d)¹²Δ(τ)): Δ(−1/τ)/(τ¹²Δ(τ))=1.0000 and Δ(τ+1)/Δ(τ)=1.0000 at each τ | Keep |
| §5.2 continuity clause (R02) | γ=−I: c=0, d=−1 | cτ+d=−1 lies on the negative real axis; the quotient equals η(τ)/(i·η(τ))=−i at every τ, constant because the root is constant, not because the cut is avoided | R02: reword |
| §5.2 translation law from the product | prefactor exp(2πiτ/24); factors 1−qⁿ | 𝕢 24 (τ+1)=exp(2πi/24)·𝕢 24 τ=exp(πi/12)·𝕢 24 τ; 𝕢 1 (τ+1)=𝕢 1 τ; numerically η(τ+1)/η(τ)=0.96593+0.25882i=exp(πi/12) at all three τ | Keep |
| §5.2 inversion law and its two forms | the three τ | η(−1/τ)/(√τ·η(τ))=0.70711−0.70711i=(√i)⁻¹=exp(−πi/4); √(−iτ)/√τ=0.70711−0.70711i at each τ (arg τ∈(0,π) ⇒ arg(−iτ)∈(−π/2,π/2)) | Keep |
| §5.2 ν(T), ν(S), ν(−I) | T: c=0,d=1; S: c=1,d=0; −I: c=0,d=−1 | ν(T)=exp(πi/12) (numerically 0.96593+0.25882i); ν(S)=exp(−πi/4) (0.70711−0.70711i); ν(−I)=1/√(−1)=1/i=−i (numerically −1.0000i) | Keep |
| Check “eta multiplier inversion root” | τ=i | −1/i=i, so the law reads η(i)=(√i)⁻¹√i·η(i)=η(i); √(−i·i)=√1=1; with −√(−iτ) the law gives η(i)=−η(i), forcing η(i)=0 against `eta_ne_zero` | Keep |
| Check “eta multiplier discriminant” | 24th powers | exp(−πi/4)²⁴=exp(−6πi)=1 (numerically 1.0000); (√τ)²⁴=τ¹² (`csqrt_pow_24_eq`, Discriminant.lean 57); exp(πi/24)²⁴=exp(πi)=−1 (numerically −1.0000), so Δ(τ+1)=−Δ(τ) against `discriminant_T_invariant` | Keep |
| Check “eta multiplier positive c” | γ=(1 0;1 1): γτ=τ/(τ+1)=1−1/(τ+1) | η(γτ)=e^(πi/12)η(−1/(τ+1))=e^(πi/12)√(−i(τ+1))e^(πi/12)η(τ)=e^(πi/6)√(−i(τ+1))η(τ); √(−i(τ+1))=e^(−πi/4)√(τ+1) gives ν(γ)=e^(−πi/12); numerically ν(γ)=0.96593−0.25882i at all three τ; the competing root gives η(γτ)/(√(−i(τ+1))η(τ))=0.86603+0.50000i=exp(πi/6) | Keep |
| §5.2 cocycle law at γ₁=γ₂=−I (unchanged law, re-run against the new definition) | (c₃,d₃)=(0,1) | left ν(I)√1=1; right (−i)(−i)·√(−1)·√(−1)=(−1)(−1)=1; root ratio i·i/1=−1 as the Check says | Keep |
| §5.2 cocycle law at γ₁=S, γ₂=T | ST=(0 −1;1 1) | ratio √(Tτ)·√1/√(τ+1)=1; ν(S)ν(T)=e^(−πi/6); ν(ST) by the law at τ=i: computed value e^(−πi/6) | Keep |
| §5.2 root ratio ±1 and τ-independent | squares and continuity | ratio²=(c₁γ₂τ+d₁)(c₂τ+d₂)/(c₃τ+d₃)=1 by the cocycle of cτ+d; each principal root is continuous for c≠0 and constant for c=0, so the ±1-valued ratio is constant on the connected ℍ | Keep |
| Line 13 and 48: Mathlib supplies Δ as a weight-12 level-one cusp form | `CuspForm.discriminant : CuspForm 𝒮ℒ 12` | the carrier is the full modular group's image; weight 12; cusp vanishing proved at every cusp | Keep |
| Line 1763: HalfIntegralWeightModularForms §3.3 proves the closed forms | #1721 lines 950–966 | Dedekind-sum form ν_η(γ)=e((a+d)/(24c)−s(d,c)/2−1/8) and the Rademacher–Knopp forms for c odd and c even, both for c>0; at γ=(1 0;1 1): (a+d)/(24c)=1/12, s(1,1)=0, so e(1/12−1/8)=e(−1/24)=exp(−πi/12), agreeing with the Check “eta multiplier positive c” | Keep |
| §4.8a new Check “weight-zero normalizations”, U₁₁ | F=q¹¹+q | Σ_(0≤j<11)e(11(τ+j)/11)=11q and Σ_j e((τ+j)/11)=e(τ/11)·Σ_j ζ₁₁^j=0, so U₁₁F=q; aₙ(U₁₁F)=a₁₁ₙ(F) gives a₁=1, a₁₁=0: agrees | Keep (carried from r3) |
| §4.8a new Check, Fricke at weight 0 | W=(0,−1;11,0), k=0 | `slash_apply`: F(Wτ)·\|det W\|^(−1)·denom⁰=F(−1/(11τ))/11 (σ W=id, det 11>0); (√11)^(2−0)=11, so the normalized operator is F(−1/(11τ)), the unnormalized slash 11⁻¹F(−1/(11τ)) | Keep (carried from r3) |
| §4.8a identification with ModularForms’ normalized Fricke operator at general k | N=11, k=2; involutivity | (√N)^(2−k)(F∣[k]W)(τ)=N^(1−k/2)·F(−1/(Nτ))·N^(k−1)(Nτ)^(−k)=N^(−k/2)τ^(−k)F(−1/(Nτ)); at k=0 it is F(−1/(Nτ)); at k=2, N=11: (11τ²)^(−1)F(−1/(11τ)), and applying it twice gives 11⁻²τ⁻²·(−1/(11τ))⁻²F(τ)=F(τ), the standard involution | Keep (carried from r3) |
| §4.8a Fricke principal-part identity with the identified operator | F=1 | 11·1−11·1=0=1−1; trace 1+11=12=[SL₂(ℤ):Γ₀(11)] (unchanged Check re-run) | Keep (carried from r3) |
| §8.1 new law: scalar multiplier χ(d_γ) ↔ Tau Ceti character space | integral k, γ∈Γ₀(N) | §8.1 automorphy F(γτ)=φ_γ(τ)^(2k)ν(γ)F(τ) with φ_γ²=cτ+d gives F(γτ)=(cτ+d)^k χ(d_γ)F(τ), i.e. F∣[k]γ=χ(d_γ)F, the right side of `mem_modFormCharSpace_iff_nebentypus`; sign of the lift φ is invisible since 2k is even; γ∈Γ₁(N) has d≡1, χ(1)=1, so F is a Γ₁(N)-form; cusp boundedness/vanishing match `ModularForm`/`CuspForm` | Keep (carried from r3) |
| §8.1 new law, parity instance | −I∈Γ₀(N), odd k, χ(−1)=1 | F∣[k](−I)=(−1)^kF=−F must equal χ(−1)F=F, so F=0 on both sides; both spaces are zero, agreement holds vacuously (no overclaim) | Keep (carried from r3) |
| §8.1 new Check “character entry” | N=5, χ(2)=i, γ=(3 1;5 2) | det 6−5=1, c=5≡0: γ∈Γ₀(5); χ(4)=i²=−1, χ(3)=χ(2³)=−i, χ(1)=1; χ(d_γ)=χ(2)=i; upper-left χ(3)=−i=conj(i); in general ad≡1 (N) gives χ(a)=χ(d)⁻¹, different from χ(d) unless χ²=1 | Keep (carried from r3) |
| Line 64 contract: the character space is the joint χ-eigenspace of the diamond operators | pin a91d3aaf | `modFormCharSpace k χ = ⨅ d, eigenspace (diamondOpHom k d) (χ d)` (file lines 315–317); `χ : (ZMod N)ˣ →* ℂˣ`, `k : ℤ`; no namespace in the file, so the bare names are the full names | Keep (carried from r3) |
| Line 46 Mathlib row: slash formula | g with det g>0; k=2, W=(0,−1;11,0) | `slash_apply` gives F(−1/(11τ))·11·(11τ)^(−2)=F(−1/(11τ))/(11τ²), which equals the normalized Fricke operator at k=2 with factor (√11)⁰=1 | Keep (carried from r3) |
| 4.8a full expansion (Lemma 4), existence | F=1 (N=M=0) | left side 1; right side A₀=1, all other A_r=0; a competing “g_n only” expansion gives constant coefficient 0≠1; a “G_n only” expansion vanishes at cusp 0 whereas 1(0)=1 | Keep; this is the repaired R01 instance (carried from r3) | (carried from r3)
| 4.8a full expansion, uniqueness | orders at infinity of the generators | G_r: −r (r≥2); B₁₁: −1; 1: 0; g_r: μ(r)=1,2,3,5,4,6,7,8,10,9 for r=2…11, a bijection onto ℤ_{>0}; all orders distinct, so a vanishing combination has every coefficient 0 | Keep “uniquely” (carried from r3) |
| 4.8a full expansion, forced coefficients | F∈S holomorphic at cusp 0 (M=0) with N=1 | B₁₁ has pole order 1 at cusp 0, so A_(−1)=0 and F is constant; agrees with “no single simple pole on genus one” | Keep; formula allows the zero coefficient (carried from r3) | (carried from r3)
| 4.8a S^∞ expansion (Lemma 5), degenerate | F∈S^∞ with M=0; M=1 | empty sum 0 on the right; on the left F has no pole (M=0) or one simple pole (M=1), so F is constant and vanishes at infinity: F=0 | Keep (carried from r3) |
| 4.8a S^∞ versus S | F=1 | value at infinity 1≠0, so 1∉S^∞; the Check “eleven full expansion” states exactly this | Keep (carried from r3) |
| 4.8a B₁₁ existence via G₂g₂ | orders at the two cusps | G₂: −2 at ∞, +1 at 0 (from g₂'s order μ(2)=1 under Fricke); g₂: +1 at ∞, −2 at 0; product: −1 at ∞, −1 at 0: simple poles at both; Fricke: (G₂g₂)(−1/(11τ)) = 11²g₂·11⁻²G₂ = G₂g₂ | Keep; Atkin (48)–(49), lines 534–536 (carried from r3) | (carried from r3)
| 4.8a B₁₁ uniqueness up to a constant | two such B, B′ with leading q⁻¹ | B−B′ is holomorphic at ∞ with at most a simple pole at cusp 0; on genus one a single simple pole is impossible, so B−B′ is constant; Riemann–Roch: ℓ(P_∞+P_0)=2−1+1=2 | Keep (carried from r3) |
| 4.8a B₁₁ normalization | Atkin's B from Table 1 vs. G₂g₂−12 | constant coefficient of G₂g₂: 1·5+2·1=7, minus 12 gives −5 = Table 1 line 578; x¹ coefficient 19+10−12=17 = Table 1 | Keep; README's B₁₁ = Atkin's B + 5, its own declared normalization, harmless since A₀ absorbs constants and only Lemma 5 feeds X₁₁, Y₁₁ (carried from r3) | (carried from r3)
| 4.8a Check “eleven Fricke pole” | span of 1, G_n, g_n | pole order at ∞ of a combination is max over nonzero terms of {r≥2, 0, none}: 0 or ≥2; B₁₁ has 1 | Keep (carried from r3) |
| 4.8a G_n, g_n memberships | n=2,3 from Table 1 | G₂=x⁻²(1,2,−12,…) ∈ S⁰ (Appendix A line 532), g₂=x(1,5,19,…) vanishes at ∞; g_n pole order at cusp 0 = order of G_n at ∞ = n | Keep (carried from r3) |
| 4.8a θ, μ, ξ, ε tables | n=2…8 | θ=(2,3,4,6,6) = Table 3 exponents 2,3,4,6,6; μ=(1,2,3,5,4) = Table 1 leading powers of g₂…g₆ (x¹,x²,x³,x⁵,x⁴); ξ(4..8)=(1,3,3,4,5), ε=ξ+1 for n≥4 = lines 235–239 | Keep (carried from r3) |
| Scope and §From AST: Powers law | k=0,s=2; k=1,s=1; k=0,s=1 | Δ_k yˢ = −s(s−1)yˢ − ks yˢ = s(1−k−s)yˢ: −2y², −y, 0 | Keep; sign matches §8.2/§8.3 Checks (carried from r3) | (carried from r3)
| §8.2 factorization with the supplied Δ_k | k=0 on y and y² | L₀y = −2iy²(i/2) = y²; R_(−2)y² = 2i(−i/2)(2y) − 2y = 0, so −R_(−2)L₀ y = 0 = Δ₀y; R₀y² = 2y, L₂(2y) = 2y², −L₂R₀y² − 0 = −2y² = Δ₀y² | Keep (carried from r3) |
| §8.2 law Δ₁(log y)=0 | k=1 | −y²(−1/y²) + i·y·(i/y) = 1 − 1 = 0 | Keep (carried from r3) |
| §8.2 unitary shift | k=1/2 | (k/2)(1−k/2) = (1/4)(3/4) = 3/16; AST's y^(k/2) conjugation constant k²/4−k/2 = −3/16 | Keep; opposite signs are the two directions of the same conjugation (carried from r3) | (carried from r3)
| 4.8a Fricke identity (unchanged text, re-run) | F=1 | 11·1 − 11·1 = 0 = 1 − 1; trace 1 + 11 = 12 = [SL₂(ℤ):Γ₀(11)] | Keep (carried from r3) |
| Conventions: starting index, units, q=1 | n=0,2; arbitrary ring; q=1 | P₀=1; P₂=1−a−aq+a²q; at q=1 both sides=(1−a)²; zero ring 1=0 | Keep; analytic q=1 excluded (carried from r3) | (carried from r3)
| 1.2 integer product | a=3,q=2,n=−1 | P₋₁=−2; P₁(3/2;2)=−1/2; product=1 | Keep (carried from r3) |
| 1.2 invalid negative domain | a=q=2,n=−1 | factor 1−a/q=0; inverse product cannot equal 1 over ℚ | Excluded by unit hypothesis (carried from r3) |
| 1.3 regular quotient | a=3,b=1,q=2,n=−1; then b=2 | quotient=(1−2)/(3−2)=−1; at b=2 quotient=0 although separate denominator P₋₁(b;q) is undefined | Keep regular quotient (carried from r3) |
| 1.4 full formal product | generic a through X²; a=1 | coefficients 1−a, −a(1−a), −a(1−a); at a=1 all zero | Keep index-zero factor (carried from r3) |
| 1.4 positive tail / scalar change | a=1; ℤ→𝔽₂ | tail=1−X−X²+O(X⁵); image=1+X+X²+O(X⁵); constant=1 | Keep; unit survives (carried from r3) | (carried from r3)
| 1.5 inversion | a=3,q=2,n=2 and n=−1 | P₂=10; (−3)²·2·P₂(1/3;1/2)=10; negative formula gives −2 on both sides | Keep (carried from r3) |
| 1.6 prefix and tail | n=0,1; a=0; a=1 | P(a;q)=P₁(a;q)P(aq;q); a=0 gives 1=1·1; a=1 gives 0=0·P(q;q) | Keep nonzero-tail condition when dividing (carried from r3) |
| 2.1 unilateral normalization | no parameters, n=1; q=1/2 | coefficient −1/(1−q)=−2; deleting normalized sign gives +2 | Keep (carried from r3) |
| 2.1 numerator parameter | one a, n=1 | coefficient (1−a)/(1−q); at a=1 it is 0 | Keep termination (carried from r3) |
| 2.2 bilateral normalization | j=0,−1; a=3,b=1,q=2,z=1 | term₀=1; term₋₁=−1 on regular quotient; a=q produces zero denominator | Keep pole exclusions (carried from r3) |
| 2.3 radius and terminating exceptions | q=2,a=−1/2; a=1/2 | asymptotic coefficient ratio 1/4, radius 4; a=1/2 series terminates at 1−z/2 | Keep distinction (carried from r3) |
| 2.3 q=0 unilateral convention | nonterminating r=s+1; coefficient C after n=0 | sum=1+Cz/(1−z), not 1+Cz; positive normalization exponent gives 1+(−1)^e Cz | Keep 0⁰ convention (carried from r3) |
| 2.4 q-binomial headline | q=.2,a=.3,z=.7 | sum≈3.007306345365; product ratio≈3.007306345365 | Keep (carried from r3) |
| 2.4 large-base headline | q=2,a=0,z=3 | sum≈−.0522988955771; inverse-base product≈−.0522988955771; radius condition 0<1 | Keep a=0 case (carried from r3) |
| 2.4 Euler headlines | q=.2,z=.7; entire identity z=2 | inverse sum/product≈4.015699529238; entire sum/product≈4.627022595122 | Keep different z domains (carried from r3) |
| 2.4 Euler boundary / natural subtraction | q=0,n=0,1,2 | n(n−1)/2=0,0,1; entire series=1+z, matching product | Keep (carried from r3) |
| 2.5 Ramanujan 1ψ1 headline | a=.8,b=.1,q=.2,z=.7 | bilateral sum≈1.189220922478; four-product ratio≈1.189220922478 | Keep (carried from r3) |
| 2.5 regular b=0 | j=−1,a=3,q=2,z=1 | regular term=−2; factor b−q is −2, not a pole | Keep b=0 allowed (carried from r3) |
| 2.6 Bailey pair | α=δ₀; q=1/2,a=1,n=1 | β₁=1/((1−q)(1−aq))=4; β=δ₀ would give 0 | Keep relation ties sequences (carried from r3) |
| 2.6 false candidate pair | α=β=δ₁; q=1/2,a=1,n=1 | β₁=1; defining sum=1/((1−q)(1−q²))=8/3 | Excluded (carried from r3) |
| 2.7 Bailey-transform headline | a=q=0, ρ₁,ρ₂ units, α=δ₀ | βₙ=1; α′=δ₀; β′ₙ=1, including n=0 via t⁰=1 | Keep; genuine general transformation not a tautology (carried from r3) | (carried from r3)
| 3.1 Gaussian signed/rectangle adapter | n=0,k=−1,0; n=4,k=2,Q=−1 | values 0,1; Gaussian value 2 whereas uncancelled field quotient is 0/0 | Keep polynomial identity (carried from r3) |
| 3.2 Schur polynomials | n=0,1,2 | initial pairs (1,1),(1,1); n=2 gives 1+Q and 1+Q²; recurrence agrees | Keep indexing (carried from r3) |
| 3.3 gap/residue definitions | empty; (1,1); (1,3) | empty satisfies both; (1,1) fails gap despite residue condition; (1,3) satisfies gap but not ±1 residues | Keep distinct predicates (carried from r3) |
| 3.3 first RR counting headline | n=0,…,8 | gap counts and residue counts both [1,1,1,1,2,2,3,3,4] | Keep (carried from r3) |
| 3.3 second RR counting headline | n=0,…,8 | counts on both sides [1,0,1,1,1,1,2,2,3] | Keep minimum-part condition (carried from r3) |
| 3.3 analytic RR headline | q=.2 | first sum/product≈1.252084005385; second≈1.050083338710 | Keep (carried from r3) |
| 3.4 quintuple headline | q=.2,z=.7 | bilateral sum≈1.099066055466; product≈1.099066055466 | Keep (carried from r3) |
| 3.4 theta addition | constant coefficient, a=2,b=3 | both sides −10/3 | Keep signs (carried from r3) |
| 3.5 partition adapter | n=0,…,8 | native counts and Euler reciprocal coefficients both [1,1,2,3,5,7,11,15,22] | Keep native carrier (carried from r3) |
| 4.1 rank and crank | empty; (1); (3,2,1,1) | (rank,crank)=(0,0),(0,−1),(−1,−1); ≥ instead of > gives crank 0 in third case | Keep strict comparison (carried from r3) |
| 4.1 conjugation | (3,3)↔(2,2,2) | ranks 1 and −1; crank(3,3)=3 | Keep transpose sign (carried from r3) |
| 4.2 vector partitions / size-one correction | coefficient of q | product gives z+z⁻¹−1; adding (1−z) gives z⁻¹, ordinary crank of (1) | Keep (carried from r3) |
| 4.3 generating functions | n=0,1 | rank coefficients 1,1; crank coefficients 1,z⁻¹; forgetting correction gives z+z⁻¹−1 at n=1 | Keep (carried from r3) |
| 4.4 residue counts/filter | t=1; t=2,n=2 | t=1 count=p(n); at n=2 ranks ±1 give residue counts [0,2], same as Fourier filter | Keep; t=0 filter excluded (carried from r3) | (carried from r3)
| 4.4a complete dissections | mod 5,size4; mod 7,size5 | rank residue vectors [1,1,1,1,1] and [1,1,1,1,1,1,1] | Keep; full source limitation below (carried from r3) | (carried from r3)
| 4.4a modulus-11 rank distinction | size6 | rank counts [1,2,1,1,0,1,1,0,1,1,2], versus all-one crank vector | Keep; no false rank-11 equidistribution (carried from r3) | (carried from r3)
| 4.5 rank equidistribution headline | n=0 in 5n+4,7n+5 | every residue count 1 on both progressions | Keep (carried from r3) |
| 4.5 crank equidistribution headline | (ℓ,d)=(5,4),(7,5),(11,6),n=0 | all residue counts 1 in each case | Keep (carried from r3) |
| 4.6 offsets | ℓʳ=1,5,25,7,49,343 | least inverses of 24 are 0,4,24,5,47,243; 24δ≡1 for each nontrivial modulus | Keep positivity/coprimality (carried from r3) |
| 4.7 extraction | U₂X; U₂X²; U₀1 | 0; X; ΣXⁿ respectively, versus Laurent zero-modulus junk 0 | Keep t>0 comparisons (carried from r3) |
| 4.7 residue-range comparison | t=2,a=2,input1 | power-series extraction 0; Laurent extraction X⁻¹ | Keep a<t (carried from r3) |
| 4.7 pullout | t=1,a=1,f=X,g=1 | E₁,₁(X)=1 but X·E₁,₁(1)=0 | Keep a<t hypothesis (carried from r3) |
| 4.8 eta decimation | ℓ=5,r=1,2; ℓ=11,r=1 | offsets 4,24; parity Euler factors P(X⁵),P(X); L₁ for 11 starts 11X | Keep (carried from r3) |
| 4.8a eta equations | first nonconstant terms | degree-five: X⁵−Y has 5t^(11/6), cancelled by 5Y²X; degree-seven: 7t^(11/4), cancelled by 7YX⁴ | Keep lower-degree term (carried from r3) |
| 4.8a seven-module base | Ω₇(B⁻¹)/7 | b₃+7b₇; O₇ requires b₇ coefficient divisible by 49 | Keep separate first step (carried from r3) |
| 4.8a S versus basis | F=1 at infinity | F constant coefficient 1; every finite gₙ combination coefficient 0 | Failed in r1 (R01); repaired statement re-tested in the new rows below (carried from r3) |
| 4.8a Fricke trace | F=1 | 1+11U₁₁1=12; Fricke difference identity 0=0 | Keep factor 11 (carried from r3) |
| 4.8a genus / uniqueness | X₀(11), pole order ≤1 at infinity alone | g=1+12/12−2/2=1; function-space dimension 1 (constants), not 2 | Keep (carried from r3) |
| 4.9 prime-power headline | r=1,n=0; ℓ=7,r=3,n=0 | p4=5,p5=7,p6=11; p243=133978259344888≡245 mod343, hence divisible by49 but not343 | Keep exponent floor(r/2)+1 (carried from r3) |
| 5.1 odd theta | z=0 and z=1/4,τ=i | θ(0)=0; θ(1/4)≈−.643589764039; first pair i q^(1/8)(e^(πiz)−e^(−πiz)) | Keep sign; derivative −2πη³ (carried from r3) |
| 5.2 eta multiplier | S at i; T; −I | ν(S)=e^(−πi/4), √i=e^(πi/4), product1; ν(T)=e^(πi/12); (−i)i=1 | Keep root normalization (carried from r3) |
| 5.3 E and β | x=0,t=0; derivative x=0 | E(0)=0,β(0)=1,E′(0)=2; missing √π scaling gives 2/√π | Keep (carried from r3) |
| 5.3 Wirtinger / xi | τ,y and i·y at k=0 | bar∂τ=0; bar∂y=i/2; ξ₀y=1; ξ₀(iy)=−i | Keep antilinearity (carried from r3) |
| 5.4 Mordell | τ=i,z=1/2 | h≈1; exact symmetry/shift expression gives1 | Keep (carried from r3) |
| 5.4 shift/S | τ=i,z=1/4 | shift sides≈11.708242116621; S sides≈.606847937009 | Keep (carried from r3) |
| 5.5 R correction | u=1/12,τ=i; u→u+1 | R≈.323196786374; translated value≈−.323196786374 | Keep antiperiodicity (carried from r3) |
| 5.6 μ | u=1/3,v=1/4,τ=i | μ≈−.894187284346i; μ+iR/2≈−.732588891159i | Keep nonzero correction (carried from r3) |
| 5.7 elliptic headline | same u,v,τ; u→u+τ | both sides≈−.015829018232+.027416663811i | Keep (carried from r3) |
| 5.7 modular headline | S; same u,v,τ | both sides≈.716779363149i; eta factor at i is i²=−1 | Keep (carried from r3) |
| 5.7 I,−I,T consistency | eta-quotient factor | I:1; −I:1; T:e^(−πi/4); branch-free quotient agrees with ν⁻³√w | Keep (carried from r3) |
| 6.1 unary corrections | a=b=0; a=1/6,b=0 | g₀,₀=C₀,₀=0 by pairing; g₁/₆,₀ begins (1/6)q^(1/72); ξC=−√2g | Keep sign (carried from r3) |
| 6.1 scaled correction | d>0,τ↦dτ | differentiating gives ξC(a,b;dτ)=−√(2d)g(a,b;dτ), not −√2g | Keep √d (carried from r3) |
| 6.2 period domain | a=1/2; endpoints with a integral | valid interior sign is fixed; at a=0 the zero summand has sign0 and cannot use a formula assuming 0<a<1 | Keep endpoint separation (carried from r3) |
| 6.3 torsion normalization | u=1/2,v=τ/2; β→β+1 | both points off lattice; characteristic phase changes by −1 in the half-character case | Keep rational phases (carried from r3) |
| 7.1 cone data | hyperbolic plane; c₁=(1,0),c₂=(0,−1),c₀=(1,−1) | Q(c₁)=Q(c₂)=0,Q(c₀)=−1; B(c₁,c₀)=B(c₂,c₀)=−1 | Keep common cone component (carried from r3) |
| 7.1 rank-one negative lattice | form [−2] | Q(x)=−x², isotropic vectors only0; no nonzero primitive isotropic boundary | Keep explicit boundary domain (carried from r3) |
| 7.2 ordered theta kernel | hyperbolic ν=(1/2,1/2), then (1/2,−1/2) | sign difference 1−(−1)=2, then −1−(−1)=0; c₁=c₂ gives0 | Keep ordering (carried from r3) |
| 7.3 convergence majorant | boundary c=(1,0),ν=c | Q(ν)=0; boundary modified quadratic form also0, so positive definiteness cannot be asserted there | Keep separate boundary analysis (carried from r3) |
| 7.4 transformation | hyperbolic A,detA=−1; odd diag(1,−1) | S prefactor τ; odd half-diagonal shift vector (1,1), rather than0 | Keep odd/even distinction (carried from r3) |
| 7.5 factorization | rank-one correction; double-length coset split | −C(1/4,0;2τ); second split −C(1/8,0;8τ)−C(5/8,0;8τ) | Keep scaling and both cosets (carried from r3) |
| 8.1 automorphy/growth | trivial representation, constant1 | weight0:1=1, but not cuspidal; odd integral full-group weight: −I would require1=−1 | Keep parity and cusp conditions (carried from r3) |
| 8.2 operators | y,y²,log y | L₀y=y²; Δ₀y=0; Δ₀y²=−2y²; Δ₁log y=0 | Keep; supplier locator R02 (carried from r3) | (carried from r3)
| 8.2 unitary comparison | k=1/2 | holomorphic-to-unitary constant shift −3/16; corresponding eigenvalue 3/16 | Keep supplier sign (carried from r3) |
| 8.3 harmonic spaces | constant1; y² at k=0 | Δ₀1=0; Δ₀y²=−2y²≠0 | Keep actual PDE condition (carried from r3) |
| 8.4 scalar ODE kernel | k=0,w=±1 | H₀(w)=eʷ, values e and e⁻¹; partner e⁻ʷ has reversed values, nonzero Wronskian | Keep independent modes (carried from r3) |
| 8.4 constant modes | k=1,y=1,e | (1,log y)=(1,0),(1,1); incorrectly using (1,y⁰) gives (1,1) twice | Keep k=1 exception (carried from r3) |
| 8.4 gamma comparison | k=0,w=−1 | e·Γ(1,2)=e⁻¹=H₀(−1); shape1>0 | Keep k<1 for real integral (carried from r3) |
| 8.4a parabolic matrices | M=[[1,1],[0,1]],v=(τ,1) | v(τ+1)=(τ+1,1)=Mv(τ); scalar periodic coefficients alone miss τ | Keep Jordan modes (carried from r3) |
| 8.4a nonunitary frequency | M=2; M=i | shifts −i log2/(2π) and 1/4 respectively; e(shift)=2 and i | Keep complex frequencies (carried from r3) |
| 8.5 Weil normalization | rank-zero lattice; lattice ⟨2⟩,h=1/2 | rank zero at weight1/2: central law f=−f forces0; ⟨2⟩ gives Q(h)=1/4, T phase i and central phase −i | Keep conjugate Weil convention (carried from r3) |
| 8.5 Fourier/xi | k=0, conjugate(q⁻¹); zero mode a y^(1−k) | ξ₀ conjugate(q⁻¹)=4πq⁻¹; ξ_k(a y^(1−k))=(1−k)conjugate(a) | Keep polar shadows in full space (carried from r3) |
| 8.6 surjectivity proof normalization | k=0,g=1 | bar∂y=i/2 gives ξ₀y=1; bar∂(2y)=i gives ξ₀(2y)=2 | Keep roadmap's half factor; source issue below (carried from r3) |
| 8.6 divisor hypotheses | two elliptic components,D supported on one | H¹ on untouched component has dimension1, not0 for any n | Keep positive degree on every component (carried from r3) |
| 8.7 mock object/completion | zero correction; k=0 zero-mode conventions | shadow0 for zero correction; y and y−1 differ by holomorphic constant1; ξ₀ of both=1 | Keep specified normalization (carried from r3) |
| 8.7 conjugate scalar | F→iF | ξ(iF)=−iξ(F), not iξ(F) | Keep shadow's antilinearity (carried from r3) |
| 9.1 holomorphic theta | m=1,classes0,1 | θ₁,₀=1+(e(2z)+e(−2z))q+…; θ₁,₁=q^(1/4)(e(z)+e(−z))+… | Keep 2m indexing (carried from r3) |
| 9.2 Jacobi definition | constant1,m>0,z=0,τ=i | elliptic shift would require1=e^(2πm), false; θ₁,j satisfies the law | Keep index/elliptic condition (carried from r3) |
| 9.3 mixed residues | (1+v+bar(v))/v²; bar(v)/v; 1/v;1 | residues 1,0,1,0 respectively | Keep bar-degree-zero extraction (carried from r3) |
| 9.3 affine coordinates | v=2w, differential dv/v | transformed differential dw/w, residue1=1; function alone gains factor1/2 | Keep differential/Jacobian convention (carried from r3) |
| 9.4 polar kernel | simple pole; m-character endpoints | residue −1/(2πi); R_m,0(0)=1 and R_m,m(0)=0 | Keep signs and endpoint values (carried from r3) |
| 9.4 cone realization | specified two-dimensional kernel | Q(c₂)=−m, B(c₁,c₂)=−1 | Keep positive m (carried from r3) |
| 9.5 decomposition | φ=θ_m,j, no poles; double pole | corrected coefficient vector δ_j, polar part0; for v⁻²A(v), residue A′(0) | Keep arbitrary pole order (carried from r3) |
| 9.5 weights | k=1 | coefficient weight k−1/2=1/2, not3/2 | Keep (carried from r3) |
| 10.1 third-order definitions | f,ω through q³ | f=1+q−2q²+3q³; ω=1+2q+3q²+4q³ | Keep actual unilateral series (carried from r3) |
| 10.1a rank and f bridge | q=.2,z=.7; z=−1 symbolically | rank sides≈1.328424407776; z=−1 gives identical denominators Pₙ(−q;q)² for f | Keep (carried from r3) |
| 10.1a ω bridge | q=.2 | P(q²;q²)ω(q)≈1.499934967742; bilateral side≈1.499934967742 | Keep (carried from r3) |
| 10.2 third-order vector S | τ=.17+1.1i | both vectors≈(.420123272091+.012234952158i, .606697161074−.072841738892i, .009455858563−.099933933909i) | Keep; component residuals below 7×10⁻¹⁶ (carried from r3) | (carried from r3)
| 10.2 T/leading phases | first entry q^(−1/24); last pair q^(1/3)ω(±q^(1/2)) | first phase ζ₂₄⁻¹; T swaps last two with phase ζ₃ | Keep exchange (carried from r3) |
| 10.3 fifth-order definitions | q→0 | f₀,f₁,F₀,F₁,φ₀,ψ₁,χ₀,χ₁ constants1; ψ₀,φ₁ constants0; φ₁(−q)/q→−1 | Keep signed arguments (carried from r3) |
| 10.3a Hecke bridges, f₀/f₁ | q=.2 after Euler multiplication | both sides≈.888030023612 and .785716216301 | Keep (carried from r3) |
| 10.3a Hecke bridges, F₀/F₁ | q=.2 after even Euler multiplication | both sides≈1.006323199306 and 1.199932391424 | Keep (carried from r3) |
| 10.3a Hecke bridges, φ₀/φ₁ | q=.2 | both sides≈1.241935979521 and .201920619323 | Keep prefactor q for φ₁ (carried from r3) |
| 10.4 indefinite realization | Q and cone vectors in retained theta formulas | ordered-cone sign2 on same-sign interior; reversing endpoints gives−2 | Keep endpoint order from §7 (carried from r3) |
| 10.5 fifth correction vectors | τ=.17+1.1i; sum of paired completions | first correction G₅,₁,₁≈.557887761575−.009932845653i, G₅,₂,₁ is its negative; sum0 | Keep nonzero corrections and cancellation (carried from r3) |
| 10.6 fifth transformations | multiply displayed S matrix by itself | I₆: diagonal1, off-diagonal0 (floating residual norm≈3.14×10⁻¹⁶) | Keep asymmetric √2 entries (carried from r3) |
| 10.6 fifth S law on actual series | τ=.17+1.1i | both six-vectors≈(.505362227191+.004128522071i, .353688249173−.057818438796i, .397756535369+.001034066381i, .247237506773−.046495045432i, .385593599225−.004119716235i, .128003056987−.049554342949i) | Keep; residuals below 7×10⁻¹⁶ (carried from r3) | (carried from r3)
| 10.7 seventh vector | cone normalization and leading exponents | Q(c)=−21/2,B(c₁,c₂)=−28; exponents −1/168,47/168,143/168 | Keep order (F₀,F₂,F₁) (carried from r3) |
| 10.8 seventh transformations | S²; third T phase | I₃: diagonal1, off-diagonal0 (residual≈2.36×10⁻¹⁶); 143≡−25 mod168 | Keep (carried from r3) |
| 11.2 root completion | α=1/2,τ=i | correction-defined F≈.506566028747; H₃ first component≈.506566028747 | Keep (carried from r3) |
| 11.2 corrected Lerch expression | α=1/2,τ=i before completion | hα/D≈.650841567833i; corrected expression≈.650841567833i; printed source expression≈.650850612912i | Keep roadmap correction; source issue below (carried from r3) |
| 11.2 root endpoints | α=1/3; α=0 | first has 3α∈ℤ, so separate terms polar but combined rank series regular; α=0 gives η⁻¹ of weight−1/2 | Keep cancellation; trivial root excluded (carried from r3) |
| 11.2 shadow / phase | α=1/2; lower-unipotent N=10368 | correction −2C(1/6,0;3τ) gives +2√6g; rational phase 3N/4=7776∈2ℤ | Keep (carried from r3) |
| 11.3 residue deviations | t=1; t=2 | t=1 coefficient p(n)−p(n)=0 and empty correction0; t=2 deviations ±f/2 with the common q^(−1/24) factor | Keep Fourier projection (carried from r3) |

The 14 new rows all keep except the R02 row; with the 140 carried rows the table has 154 rows. The previous reviews' pinned-declaration table, headline list and gap audit are unaffected by the diff except for the rows added above.

## Not verifiable

- Fourteen of the fifteen seeded targets, and §4.8a, lie outside the changed lines and were not re-read in this round, by the incremental brief.
- GasperRahman2004 and BFOR2017 are waived, Andrews1976, Hickerson1988 and AtkinSwinnertonDyer1954 uncertified: none is cited by the changed lines, and none was requested.
- Ownership against open pull requests whose files this brief does not give was not checked.

## Source issues

- none
