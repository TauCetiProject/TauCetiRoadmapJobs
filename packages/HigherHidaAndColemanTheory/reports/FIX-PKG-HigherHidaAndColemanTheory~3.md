# Repair report: HigherHidaAndColemanTheory package, round 3

Review resolved: REV-PKG-HigherHidaAndColemanTheory~2 (seven findings, R01–R07). Every finding was checked against the cached author editions (BP-Hida, BP-Coleman, Pilloni-Singular, BP-GL2). The overlines that text extraction drops in BP-Coleman Definitions 3.3.10, 5.4.10, 6.4.7 and Example 5.4.11 were read from rendered page images (pp. 40, 111, 112, 158). Suppliers were read on main (SchemeAndStackFoundations) or at their open heads through `roadmaps show` (AutomorphicBundles, AutomorphicBundlesPartII, OverconvergentAutomorphicForms, PadicFamilies, PerfectoidShimuraVarieties). Library locators were opened at the pinned Mathlib.

## R01 (P2) — applied

§2.8 "Shrinking admissible support pairs induces ordinary equivalences" → (a) finite rank; (b) support change under D±⊆int(D′±) and the cross-containments p2*D′+⊆p1*D+, p1*D′−⊆p2*D−; (c) the three-pair bridge with interior chain, strict inequalities on C″, cross-containments, locally principal D±/D″±, coherent F″, factorization and divisor maps, plus the twisted variant.

Evidence: BP-Hida line 1576 (Proposition 2.10.4, cross-containments at lines 1581–1582), lines 1637–1661 (§2.11 setting), lines 1664–1692 (Theorem 2.11.4(1)–(4)). The review's two-point counterexample is correct: K+−(∅,∅)=𝔽₂² and K+−({a},∅)=𝔽₂, and {a}⊆∅ fails. It is now the first §2.8 Check. Equal pairs and the D″=∅ degeneration are the other two Checks. Same pattern elsewhere: the §8.2 route, which applied "the strict/compact comparison with its coefficient factorization", now names the three nested pairs and §2.8(c). No other use of support shrinking exists in the README.

## R02 (P1) — applied

§5.2 "(−1 denotes the one-sided unbounded tube)" and unbarred inclusions → ]C_w,k[_(r,s) defined for r,s∈ℚ∪{−∞}: −∞ is the whole line, −1 means radius p. Four variants with cl-marked partial closures; barred inclusions as in Definition 5.4.10; standard closed constraints B(cl 0,cl s) and B(cl s,cl 0). Same notation in §6.2 and E5.

Evidence: BP-Coleman lines 1904–1934 (Definition 3.3.10: m,n∈ℚ∪{−∞}; U_(α,m)={|u_α|≤|p^m|}), lines 1890–1901 (Example 3.3.9, closures), lines 5216–5235 and the rendered pp. 111–112. The barred positions are as the review states. PerfectoidShimuraVarieties §6.13 at its head defines the same tubes, with −∞ for the unbounded depth; its §6.13a treats partial closures as subsets. Two Checks were added: u=1/9 at p=3 (|u|=9>3) and u=1/4 at p=2, and the outward rank-two point in the closure of the closed disc. §6.2 now states the analytic allowed pairs of Definition 6.4.7 (rendered p. 158) with barred indices and the unbarred B(n,n). E5's corrected inclusion is B(cl(m+s),l).

## R03 (P1) — applied

§9.6(4) "U on the middle term intertwined with p^(−k−1)U on the last" → "d1∘U=p^(k+1)U∘d1". The deduction is written out: the third-term slopes for p^(k+1)U are ≥k−2 and ≥k+1 on H^0, which gives the stated ranges. The route now names the contraction z↦pz and the §13.2.3 normalization. There is a new Check, and source issue E10 records the printed exponent.

Evidence: Pilloni-Singular line 4140 prints p^(−k−1)U. Corollary 13.3.3.1 (lines 4142–4159) is proved from Proposition 13.3.1.1 (bounds −3 and 0, lines 4043–4045) and that square. Its thresholds k−2 and k+1 equal those bounds shifted by k+1, which requires the target operator p^(k+1)U. With the printed exponent the deduced bounds are −k−4 and −k−1: (−4,−1) at k=0 and (−7,−4) at k=3. The contraction is at lines 3972–3974 (z↦pz), and (d/dz)^(k+1)(f(pz))=p^(k+1)f^((k+1))(pz). §§9.7–9.8 keep their strict thresholds; their Checks were recomputed and are unchanged.

## R04 (P2) — applied

§9.6(2) "fibre at (κ,α⁻¹) has H^i equal to H^i_cusp(†,κ,2)[U=α]" → derived pullback to {κ}×G_m, then the stalk at X=α⁻¹; its H^i is the generalized eigenspace [(U−α)^∞], explicitly not the derived fibre at the product point. PadicFamilies §2a.17 cited (contracts, Needs, Dependencies); two Checks; source issue E11.

Evidence: PadicFamilies §2a.17 at its head distinguishes localization of the weight-specialized module (full generalized eigenspace) from tensoring with κ(x), with a Jordan-block Check. Pilloni-Singular line 4172 has the ambiguous pullback. Computed values: R/(y²) gives localization dimension 2, residue fibre 1 and Tor_1=L. R/(y) gives localization L[0] and derived fibre L in degrees −1 and 0. [R/(y)→R/(y²)] gives H^0=0 after localization and termwise fibre H^0=L. No other README passage identifies a spectral-point fibre with an eigenspace (searched "[U=", "fibre at", "eigenspace").

## R05 (P2) — applied

New §3.8: ring homomorphism T^S⊗A→End_D(K±) at every finite coefficient, tower level, ε and support pair, commuting with t_κ, t_w and support change, passing to ordinary parts and C_w. New §6.10: H^S on supported family complexes, compatible with radius, level, pair, weight. §4.7 and §7.1 use them; gap:coherent-correspondences gains composition/base-change compatibility.

Evidence: AutomorphicBundlesPartII §3.13 at its head says the individual operators form an algebra action only after the relations of its Layer 5, whose §5.13 is hyperspecial Hilbert–Siegel GSp₄ and excludes arbitrary p-level. AutomorphicBundles §12.11 is degree zero. OverconvergentAutomorphicForms §8.7 supplies coefficients, not relations. A grep of the open heads and main found no other owner, so this roadmap owns the application to its p-level supported and family complexes. BP-Hida p. 4 (lines 184–190) and BP-Coleman §6.9 (line 7756) use these actions. §3.8's Checks are the E₁₂/E₂₁ test, the torsion-detection test on 𝔽_p[0], and the coset count ℓ+1, ℓ²+ℓ, 1 (16=12+4 at ℓ=3, verified by enumerating cyclic subgroups for ℓ=2,3,5,7). §6.10's Checks are tube preservation, the unit relation and the H¹ noncommutativity test. The scope, contracts (§12.11, §3.13), build summary and Layer 3/4/6/7 Dependencies were updated. The plan.json `gaps` entry was changed in `section` and `needs` only.

## R06 (P2) — applied differently

§2.1 "fully faithful discrete quasi-coherent derived subcategory … a compactification of q" → the consumed comparison exactly: discrete functor on D^b_coh; proper upper shriek on bounded perfect pseudo-coherent inputs along finite-Tor maps. Open j_* is only a solid operation. q^!A is computed on affine V via an immersion V→W⊂ℙ^N_A (π flat, c regular), then glued.

Why differently: the review suggested an étale map to 𝔸^d. Using it needs e^!=e^* for étale e, which is the d=0 case of the purity being proved. The immersion route is the one SchemeAndStackFoundations §2.20 itself uses for ω≅∧^dΩ. Both maps in it have finite Tor dimension, which verifies §3.0a's hypotheses at each comparison. Evidence: AutomorphicBundlesPartII §3.0a at its head (bounded coherent discrete functor; proper comparison under finite-Tor and pseudo-coherence). Checks: A[t,t⁻¹] cannot be generated by elements with poles of order at most N; Ω²[2] of rank one on 𝔸²_(𝔽₂) via ℙ²; and ℙ²_(ℤ/4) ⊔ Spec(ℤ/2) as a compactification of infinite Tor dimension. The §3.0a contract bullet now carries the same restriction.

## R07 (P3) — applied

Mathlib locators: `Module.End` End.lean:32→33, `zpow_sub₀` Basic.lean:399→402, `CondensedMod` Module.lean:40→41, abelian instance line 42→43, and the `HasDerivedCategory` line 74 was added. `DerivedCategory` (line 87) and `CondensedMod.IsSolid` (Solid.lean:83, docstring lines 74–82) were confirmed and are unchanged.

Evidence: `grep -n` at the pinned Mathlib: End.lean:33 `abbrev Module.End`; Basic.lean:402 `lemma zpow_sub₀`; Module.lean:41 `abbrev CondensedMod`, :43 `instance : Abelian`; DerivedCategory/Basic.lean:74 `abbrev HasDerivedCategory`, :87 `def DerivedCategory`; Solid.lean:83 `class CondensedMod.IsSolid`.

## Checks run

- Elaboration: `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean` from the content checkout: exit 0, no output. Suggested.lean is unchanged: it has `import Mathlib` only, the module docstring and an empty namespace. With zero declarations, the `#check @name` signature pass has nothing to run on, so no scratch file was needed. No new target is a headline: §3.8 and §6.10 need Shimura varieties and supported coherent cohomology, which are absent at the pins, as the docstring already says. No README name of this roadmap's own is backticked.
- Dependency direction:

  ```text
  depcheck: 236 roadmaps, 2153 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or `moved:` line. All suppliers cited are the existing ones; PadicFamilies §2a.17 is a new section of an existing supplier.
- `roadmaps resolve packages/HigherHidaAndColemanTheory/README.md`: "Cross-roadmap citations found nowhere: None. Lean names found nowhere: None."
- Gap consistency: the README still cites exactly the nine slugs of the plan's `gaps` list. `design/plan.json` differs from its previous state only in the `section` and `needs` of `coherent-correspondences`: everything outside `gaps` compares equal after JSON load, and the file round-trips byte-identically under its two-space formatting.
- `sources.toml`: the new locators were added to the existing keys: BP-Hida §§1.4, 2.11, 4.2 and cited_for 3.8; BP-Coleman Examples 3.3.9, 5.4.11, Definition 3.3.10 and cited_for 6.10; Pilloni-Singular §§13.2.2–13.2.3 and cited_for E10, E11. No new source was needed and `needs-references.toml` was not created.
- House style: no LaTeX delimiters, process words or machine paths were found by grep. §2.8, §3.8 and §6.10 each end with three Checks.

## Gate failure

- tex=1 (TeX-only syntax outside code): the first Check of §2.8(b) wrote the structure sheaf of the open point as `O_{b}`. It now reads `RΓ(Xbar,j_*O_b)=𝔽₂`. The mathematics is unchanged: the value is still 𝔽₂, the global sections of the pushforward from the point b. No other line was edited. After the edit, the gate's own scanners report tex 0 and latex 0 on the README.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.8(b) support change | two 𝔽₂-points, p1=p2=id, (∅,∅) vs ({a},∅) | H⁰ dims 2 vs 1; cross-containment {a}⊆∅ false | hypothesis excludes it | negative Check |
| §2.8(b) equal pairs | (∅,∅)=(∅,∅); ({a},∅)=({a},∅) | conditions ∅⊆∅, {a}⊆{a}={a}=int{a}; maps id on 𝔽₂², 𝔽₂ | holds | Check |
| §2.8(b) compactness of mixed pairs | general | p2*D+⊆p2⁻¹(int D′+)⊆p2*D′+⊆p1*D+, and p2⁻¹(int D′+) is open, so p2*D+⊆int(p1*D+) | follows from hypotheses | none |
| §2.8(c) ⇒ (b) for (D″,D′) | general | p2*D′+⊆p1*D′+⊆p2*D″+⊆p1*D″+; p1*D′−⊆p2*D′−⊆p1*D″−⊆p2*D″− | consistent with Remark 2.11.2 | Check |
| §2.8(c) degenerate | D″±=∅ | C″=Cbar, strict on all of Cbar, K(∅,∅;F″)=RΓ(Xbar,F″) | reduces to Remark 2.11.1 | Check |
| §2.1 q^!A route | 𝔸²_(𝔽₂) via ℙ², c=id; V of dim d in ℙ^N | π^!=Ω^N[N]; c^!(Ω^N[N])=Ω^N|_V⊗det N[N−(N−d)]=Ω^d[d] since Ω^N|_V≅Ω^d⊗det C | rank one in degree −d | route rewritten |
| §2.1 finite Tor | A=ℤ/4, M=A/2 | resolution ⋯→A→A→A with each differential multiplication by 2; Tor_i(A/2,A/2)=A/2 for all i | infinite; arbitrary compactification excluded | Check |
| §2.1 noncoherent j_* | A[t]⊂A[t,t⁻¹] | generators with poles ≤N span t^(−N)A[t]∌t^(−N−1) | outside D^b_coh | Check rewritten |
| §5.2 depth −1 | p=3, u=1/9; p=2, u=1/4 | |u|=9>3; |u|=4>2; in the −∞ tube, not the −1 tube | finite radius | Check |
| §5.2 closure | closed unit disc | outward rank-two point: in the disc 0, in its closure 1 | B(0,s)≠B(cl 0,cl s) when w⁻¹Φ^(−,M)≠∅; equal when it is empty (d=0) | Check, qualified |
| §5.2 standard pairs | Example 5.4.11, any s≥0 | U∩Z⊆]X_w[∩cl(]Y_w[)=]C_w[_(0,cl 0) | allowed for every s, not just large depth | API corrected |
| §6.2 / E5 | Definition 6.4.7 rendered | +: B(m,cl(l+s)), B(0,cl(Cl)), B(m+s,cl l), B(Cm,−1); −: B(cl(m+s),·), B(cl(Cm),0), B(cl m,l+s), B(−1,Cl); B(n,n) unbarred | misprint n→l retained as E5 | rewritten |
| §9.6(4) exponent | k=0,3; p=3, f=z | corrected (−2,1),(1,4); printed (−4,−1),(−7,−4); D(f(3z))=3, 3·U(Df)=3, 3⁻¹U(Df)=1/3 | corrected exponent reproduces Corollary 13.3.3.1 | rewritten; E10 |
| §9.6(4) long exact sequence | h=k−2 all i; h=k+1, i=0,1 | H^(i−1),H^i of last term vanish below k−2; H^0 vanishes below k+1 | iso, iso on H⁰, injective on H¹ | none |
| §9.7–9.8 thresholds | r=2, k=0,3 | min(1,−2)=−2, min(1,1)=1; k=3: min(4,1)=1 | unchanged | none |
| §9.6(2) localization | Jordan block R/(y²); R/(y); [R/(y)→R/(y²)] | dims 2 vs 1 (Tor_1=L); L[0] vs L[1]⊕L[0]; H⁰=0 vs termwise H⁰=L | localized derived weight specialization is correct | rewritten; 2 Checks; E11 |
| §9.6(2) global form | infinitely many slopes at κ | complex on rigid G_m over L, discrete support; stalk exact | "perfect over L[X,X⁻¹]" avoided | wording |
| §3.8 relations | GL₂, ℓ=2,3,5,7 | cyclic index-ℓ² sublattices 6,12,30,56=ℓ²+ℓ; (ℓ+1)²=ℓ²+ℓ+(ℓ+1) | 16=12+4 at ℓ=3 (an initial draft had 13; corrected) | Check |
| §3.8 commutativity | 𝔽₂²[−1], E₁₂, E₂₁ | products diag(1,0), diag(0,1); H⁰ actions both 0 | excluded by commutativity of T^S | Check |
| §3.8 torsion detection | 𝔽_p[0] over ℤ/p | id and 0 equal after ⊗ℚ_p (on 0), differ on H⁰ | relations proved on ℤ_p-flat models first | Check |
| §3.8 support compatibility | prime-to-p isogeny | degrees of Gr_i preserved; p1*D±=p2*D± | expanded/contracted with equality; acts on K± | none |
| §6.10 tube preservation | GL₂, w=1, disc {|z|<|p^m|} | prime-to-p: same period, same disc; t: z↦pz, depth m→m+1 | away-S ops act on a fixed pair | Check |
| §6.10 unit relation | zero assignment on nonzero complex | all products 0=0, unit ↦0≠id | not a ring homomorphism | Check |
| §4.7, §7.1 consumers | — | image of a ring homomorphism from a commutative ring is commutative; Spec defined | now well posed | text and Needs |
| gap:coherent-correspondences | composition of two prime-to-p correspondences | needed to transfer relations from correspondences to K± | clause added (README and plan) | gap needs/section |

## For the maintainer

- New section ids: §3.8 (end of Layer 3) and §6.10 (end of Layer 6). They are appended, so no existing id moved and no citing roadmap is affected. No Lean name changed; Suggested.lean is unchanged.
- gap:coherent-correspondences now also asks AutomorphicBundlesPartII for compatibility of the correspondence action with composition (§3.3) and Tor-independent base change (§3.6) and with support change. Its section field is now "§§3.3, 3.6 and 3.10–3.12 on the solid enhancement of §3.0a". The intake reconciliation for AutomorphicBundlesPartII should see this wider request.
- Source issues E10 (Pilloni-Singular Proposition 13.3.3.1 exponent) and E11 (Pilloni-Singular §13.4 fibre) were added. They match the review's last two source-issue entries. Its other entries were already E1–E9.
- R03 rests on the deduction in the source's own Corollary 13.3.3.1, which is airtight, and on the flag-coordinate contraction. The remaining coefficient and trace factors of the two BGG terms are left to the proof route under the §13.2.3 normalization. The cited reference behind Proposition 13.3.3.1 (Andreatta–Iovita–Pilloni) was not fetched or checked.
- Ownership against open pull requests was checked through `roadmaps grep` and `roadmaps show` at the indexed heads (AutomorphicBundles, AutomorphicBundlesPartII, OverconvergentAutomorphicForms, PadicFamilies, PerfectoidShimuraVarieties). No other owner of the away-p algebra relations on p-level supported or analytic family complexes was found.
- No text in the review or in the fetched roadmaps asked for anything outside the job.
