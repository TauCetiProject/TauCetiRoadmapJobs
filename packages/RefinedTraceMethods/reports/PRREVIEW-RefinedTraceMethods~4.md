# Review of RefinedTraceMethods (pull request #1493 at b0ad346)

**Verdict:** accepted

No findings. The gate passes, the dependency check reports no problem, and every changed passage was checked against its sources and suppliers. This folder is ready for a human's final approval; the AI never approves or merges.

## Previous findings

- none: the previous report (r3, at b713d26) raised no finding of its own. Its account of r2's R01 as repaired stands; TauCetiRoadmap/RefinedTraceMethods/README.md:695 is untouched by this diff.

## Verified sound

:robot: Independent AI incremental re-review of 75 changed lines since b713d26 (61 insertions, 14 deletions, README only; `Suggested.lean` and `metadata.toml` unchanged; the outside-folder diff against origin/main is empty). I read every changed passage in full: the Scope paragraph, the three amended supplier contracts, the new §4.17 and §6.1 targets, the amended §4.17 rigidity route, §7.6, the Layer 4/6 Dependencies and §6.11 Needs lines, and the Downstream consumers paragraphs. None of the 15 seeded sample targets (§§1.1, 2.2, 2.8, 2.12, 2.14, 2.15, 2.16, 3.1, 4.9, 4.13, 5.1, 7.9, 8.1, 8.5, 8.6) changed; of them, only §2.8's statement "THH is symmetric monoidal; THH of E∞-rings" (README:835) is newly cited, by the §4.17 Needs line, and it exists with that title. No changed passage flags an unverified locator.

**Sources reopened (all legal, cached; no fetch and no manifest change).**

| Changed passage | Locator checked | What the source supports |
|---|---|---|
| §4.17 TC modulo p and colimits, README:2240–2256 | cmm lines 323–338 (Lemma 2.5, Corollary 2.6, Theorem 2.7, p. 8); 376–390 (Lemma 2.10, pp. 9–10); 418–462 (Proposition 2.12, Corollary 2.13, Remark 2.14, pp. 11–12); 481–500 (proof of 2.7, Corollary 2.15, p. 12) | Theorem 2.7: TC/p on CycSp_{≥0} commutes with all colimits. Corollary 2.15: TC(R)/p on connective associative ring spectra commutes with sifted colimits, via THH preserving sifted colimits. Lemma 2.10 kills x by the Tate orbit lemma and π_{−2}H𝔽_p=0; Proposition 2.12 gives TC(X)→X→X_{hS¹} for H𝔽_p^triv-modules; Remark 2.14 is the Adams-tower connectivity argument; the proof of 2.7 is the assembly map on finite spectra, then on geometric realizations, then bounded-belowness mod p. Statement, hypotheses and the three-step route agree; page numbers match the cache's page markers. |
| §6.1 Spherical lifts of perfect δ-rings, README:2553–2560 | ec2 lines 7775–7873 (Definition 5.2.1, Remark 5.2.2, Theorem 5.2.5, Examples 5.2.6–5.2.7, pp. 226–229); 7876–7893 (Lemma 5.2.8, p. 229) | 5.2.1(c): for every I-complete connective E∞-A-algebra R, Map_{CAlg_A}(B,R)≃Hom(B₀,π₀R/Iπ₀R), discrete. 5.2.2: uniqueness. 5.2.5 hypotheses: A₀ almost perfect over A, Frobenius of A₀ flat, A₀→B₀ relatively perfect; conclusion a thickening and a pushout square (so S_B⊗_{S_p^∧}H𝔽_p≃B/p). 5.2.7 is exactly A=S_p^∧, I=(p), B₀ perfect, flat lift. 5.2.8 gives L_{B₀/A₀}=0 from flat Frobenius and relative perfectness. The README restates these with the same hypotheses on R. |
| §6.1 proof route, HA citations | ha lines 51736–51793 (Remark 7.4.2.3 p. 1350, Proposition 7.4.2.5 p. 1351); 52738 (p. 1375) | Square-zero extensions classified by derivations; p. 1375 notes the direct deformation-theoretic proof of the étale theorem, as the README says. |
| §6.1, the free perfect δ-ring and x↦p | mw lines 1304–1312 (paragraph 3.4, p. 31) | ℤ_p{x}_∞ lifts uniquely to a p-complete connective E∞-ring because its p-completed cotangent complex vanishes; the δ-map x↦p lifts uniquely to an E∞-map to S_p. Matches README:2553 and the amended §7.6 (README:3604). |

**Suppliers resolved (every citation the diff adds or changes, at the cited roadmap's current head).**

| Citation | Where it resolves | What it supplies |
|---|---|---|
| SchemeKTheoryOperations §§6.2.1–6.2.2 | open pull request #1229, README lines 2133–2164 | Pre-λ structures, morphisms, λ-ideals; universal polynomials and specialness; Newton Adams operations with the generating series −t(λ_{−t})′/λ_{−t}, multiplicativity and ψⁿψᵐ=ψ^{nm} in a special λ-ring: everything the new contract lists. |
| KTheoryLowDegrees §§3.2–3.3 (the citation the diff removed) | #1248, lines 387–408 | These sections themselves consume SchemeKTheoryOperations §§6.2.1–6.2.2; so the diff repoints to the owner, which is earlier in the merge order. KTheoryLowDegrees §13.3 (line 1623) defines β_A : K₂(A)≃π₂BG_A⁺; §§13.2–13.4 are the Steinberg-root prism, the congruence loop and the lifted-word boundary, as the contract now says. |
| QWittVectors §§2.1, 2.1a, 2.4 | #1351, lines 319, 345–380, 414 | §2.1a: equivalence between arithmetic Λ-structures and SchemeKTheoryOperations' special λ-structures on every commutative ring, same underlying ring maps, with ψ_n=w_n∘s equal to the supplied Newton operation. Exactly what the contract and the §6.11 Needs line cite. |
| PrismaticCohomology §0.65 | #1057, line 1225 | Perfect p-complete δ-rings ≃ p-complete p-torsion-free rings with perfect reduction ≃ perfect 𝔽_p-algebras; every ring map between them is a δ-map. Supports both uses in §6.1. §0.59 (Layer 6 Dependencies) is at line 20. |
| AInfCohomology §AI.7.2 "Circle actions, homotopy fixed points and Tate constructions" with the Tate orbit lemma | #1044, lines 3816–3836 (`AInf.Trace.tateOrbit`, line 3834) | The Tate orbit lemma for bounded-below C_{p²}-spectra and the completed circle-Tate comparison; this is the input Lemma 2.10 uses.  |
| KTheoryFiniteLocalFields §§2.1, 4.0, 4.4, 4.5 | #1281, lines 399, 639, 701, 740 | Gabber rigidity; genuine cyclotomic foundations; modern comparison; Tate cochains. All headings present. |
| StableHomotopyKTheory §§7.6, 7.12–7.18, 7.32–7.34, Layer 5 | #1227, lines 2414, 2496–2556, 2781–2806, 1926 | Coprime decomposition of Moore spectra (used in §4.17 (iii)), general Moore spectra, completeness, Burklund towers. |
| DerivedDeRhamCohomology Layer 0; GeneralizedCohomology G2.8, G3.8–G3.9 | #868 line 314 (André–Quillen homology with L_{B/A}); main, lines 786, 2583–2584 | Cotangent complexes; spectral homotopy limits and Postnikov covers; tower limits and completions. |
| The roadmap's own cross-references in the new Needs lines (§2.3, §2.6, §2.7, §2.8, §2.9 twice, §6.1 étale lifting, §6.1 spherical lifts) | README:559, 648, 788, 835, 855, 869, 2541, 2553 | Each bold statement exists with the cited title. |

**Ownership and consumers.** A roadmap-service search for spherical Witt vectors and spherical lifts of perfect δ-rings across main and all open heads finds one owner: this roadmap. HabiroCohomologyFoundationsPartII (#1466, README lines 9, 21, 90, 141, 170) imports "Spherical lifts of perfect δ-rings" from §6.1 by that title and adds only completed and relatively formally étale lifts; StableHomotopyKTheoryPartII (#1733, §4.8, line 627) defines SW(k) for a finite field as the value of §6.1's étale lifting at W(k), which §6.1's new API bullet "for B finite étale over ℤ_p, S_B is the étale lift" makes consistent; GeneralAlgebraicKTheoryPartII (#1742, lines 228 and 1677–1692) consumes the same object through HabiroCohomologyFoundationsPartII §0.1, which in turn imports it from here, so the Downstream note "uses the spherical lifts of §6.1" is true by one indirection. GeneralAlgebraicKTheoryPartII lines 59–61 declare the two gaps `tc-mod-p-cyclotomic-colimits` and `tc-mod-p-ring-sifted-colimits` on this roadmap's §4.17; the new target states exactly these two statements. A search for the TC/p colimit theorem (CMM Theorem 2.7 and Corollary 2.15) across all open heads finds no other roadmap stating it. The ChromaticHomotopyTheory note was checked at #1643: line 359 (Layer 4, which starts at line 343) cites §6.8's K(1)-localization formula, and line 23 cites §§2.6, 2.9, 2.10, 4.9 and 4.11 for the Part II separation target. The StableHomotopyKTheoryPartII note was checked against its citations of this roadmap (§§2.3–2.6, 2.8, 2.10–2.13, 2.16, 5.1, 5.3, 6.1): all present. The worker's overlap report lists no other pull request changing this roadmap, no dropped id and no revision-only id; the closest roadmaps consume rather than own the new objects.

**Gate, direction and Lean.** Independent gate rerun on b0ad346 and the dependency check:

~~~text
gate RefinedTraceMethods: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
~~~

No UPWARD, CYCLE or moved line. The pins of the worktree manifest are Mathlib 6b7abb3c and Tau Ceti a91d3aa, as in r3. `Suggested.lean` (33 lines, one `import Mathlib`, the module docstring, the empty namespace, no declaration) elaborated with `lake env lean` in 20 s, exit 0, no output; the targeted build inside the gate passed. With no declaration there is no binder or padding probe to run; the docstring's headline list is unchanged from r2/r3, and neither new target is statable at the pins (no cyclotomic-spectrum or E∞-ring carrier exists there, per the r2 carrier assessment).

**New adversarial computations** (every changed statement; values on each side).

| Statement | Instances tried | Values computed on each side | Result/change |
|---|---|---|---|
| §4.17 TC/p colimits (i), first Check (README:2240, 2252) | Hℤ^triv along ×1,×2,×3,…; Hℚ^triv; p=2,3 | Trivial-structure functor is left adjoint to TC (§2.9), so the colimit is Hℚ^triv. Hℚ^{tC_ℓ}=0 for every ℓ (§2.3(ii)), so TC(Hℚ^triv)=Hℚ^{hT}, π_{−2}=ℚ. For Hℤ^triv: π_{−2}Hℤ^{hT}=ℤ·t, π_{−2}(Hℤ^{tC_ℓ})^{hT}=π_{−2}(Hℤ^{tT})^∧_ℓ=ℤ_ℓ, π_{−1}=0; can is ℤ→ℤ_ℓ inclusion; φ^{hT}(t)=c_ℓt with c_ℓ↦0 in π_{−2}Hℤ^{tC_ℓ}=ℤ/ℓ because it factors through π_{−2}Hℤ=0 and ℤ_ℓ→ℤ/ℓ is reduction, so c_ℓ−1∈ℤ_ℓ^×; kernel 0. Colimit of π_{−2}: 0≠ℚ. Mod p: Hℚ/p=0 and (colim TC(Hℤ^triv))⊗S/p is rational⊗S/p=0. | Pass; integral TC fails filtered colimits, TC/p does not, as stated. |
| §4.17 (ii), second Check (README:2253) | A_i=S,S (empty-indexed coproduct in Alg_{E₁}); p=2,3 | S initial, so S⊔S=S; comparison map is the fold TC(S)/p⊕TC(S)/p→TC(S)/p with fibre TC(S)/p; S→TC(S)→THH(S)=S is the identity (ring maps preserve units), so S/p is a retract of TC(S)/p and S/p≠0. | Pass; sifted cannot be replaced by all colimits in (ii). |
| §4.17 (iii), third Check (README:2254) | n=6; n=1; empty diagram | S/6≃S/2⊕S/3 (coprime Moore spectra, StableHomotopyKTheory §7.6), so TC/6=TC/2⊕TC/3; S/1=0 so TC/1=0 and (iii) holds trivially; TC(0)=0 since 0 is terminal and TC is a right adjoint. S/p^{a+1} is an extension of S/p^a by S/p, so preservation passes up the tower. | Pass. |
| §4.17 proof route, step 2 | X=H𝔽_p^triv | π_{−2}TC⁻(H𝔽_p^triv)=π_{−2}H𝔽_p^{hT}=𝔽_p·x; Frobenius lands in π_{−2}(H𝔽_p^{tC_p})^{hT}, whose forgetful image in π_{−2}H𝔽_p^{tC_p}=𝔽_p is the Frobenius of π_{−2}H𝔽_p=0, and the forgetful map is an isomorphism in degree −2 (x invertible in TP). So φ(x)=0, as CMM Lemma 2.10. | Route input verified. |
| §6.1 spherical lifts: statement and flatness (README:2553) | B=ℤ_p at p=2,3; B=W(𝔽_4) | Flat over S_p^∧: π_nS_B=π_nS_p^∧⊗B. B=ℤ_p: S_B=S_p^∧, π_1=ℤ/2 (η) at p=2, π_3=ℤ/3 (the 3-part of ℤ/24) at p=3. B=W(𝔽_4)=ℤ_2[ζ_3]: finite étale over ℤ_2, S_B free of rank 2 over S_2^∧, Map(S_B,S_B)≃Hom(𝔽_4,𝔽_4)={id, Frobenius}, two points. | Pass; "finite étale B gives the étale lift" agrees with Remark 5.2.2 uniqueness. |
| §6.1 universal property, Checks (README:2567–2571) | R=S_2^∧ with Hℤ_2 as a wrong lift; B=0; R=S (not p-complete) | Hℤ_2→S_2^∧ would send η∈π_1S_2^∧, nonzero, through π_1Hℤ_2=0: Map empty, Hom(𝔽_2,𝔽_2) a point; so Hℤ_2 is not the lift. B=0: Map_CAlg(0,R) and Hom_Ring(0,π_0R/p) are both a point when R=0 and both empty otherwise, using derived Nakayama (π_0R derived p-complete, π_0R/p=0 ⇒ π_0R=0). R=S: a ring map ℤ_p→ℤ would send the unit 1+p to 1+p≥3, a non-unit, so Map empty while Hom(𝔽_p,ℤ/p) is a point. | Pass; p-completeness of R and perfectness of B are both separated by Checks. |
| §6.1 free perfect δ-ring Check (README:2570) | B=ℤ_p{x}_∞; p=2,3; non-perfect ℤ_p[x] control | B/p=𝔽_p[x_i^{1/p^∞}], x_i=δ^ix, so Hom(B/p,𝔽_p)=∏_i𝔽_p, in bijection with Hom_δ(ℤ_p{x},ℤ_p)=ℤ_p (image of x; ℤ_p is perfect so maps factor through the perfection). δ(p)=(p−p^p)/p=1−p^{p−1}: −1 at p=2, −8 at p=3, both ≡1 mod p, while δ(0)=0; so x↦0 and x↦p have distinct reductions. Control: Map_CAlg(A,Hℤ_p)=Hom(ℤ_p[x],ℤ_p)=ℤ_p for connective A with π_0A=ℤ_p[x], but Hom(𝔽_p[x],𝔽_p)=𝔽_p, and x↦0, x↦p coincide mod p. | Pass; the Check's "≅ℤ_p by the image of x" is correct because the free δ-ring has the generators δ^ix, not only x. |
| §6.1 full faithfulness | B→B′ perfect p-complete δ-rings | Map(S_B,S_{B′})≃Hom(B/p,B′/p)≃Hom(B,B′) by PrismaticCohomology §0.65's equivalence of perfect δ-rings with perfect 𝔽_p-algebras; identity and composition from naturality of 5.2.1(c). | Pass. |
| §7.6 amended route (README:3604) | C=ℤ_p{x}_∞, x↦p; p=2, a=4; p=3, a=2 | The lift S_C→S_p^∧ is the §6.1 universal-property point computed above. Base change of S_C/x^a along it is S/p^a: at p=3, a=2 the degree-zero coefficient is ℤ/9 (x↦1 would give 0); at p=2, a=4, multiplication by 2 on C/x⁴ is injective while 2·8=0 in ℤ/16. | Unchanged Checks remain consistent with the new citation. |
| Supplier contract: Newton operations and the generating series (README:60) | line element l; general x to order t² | λ_{−t}(l)=1−lt, −t·d/dt log(1−lt)=lt/(1−lt)=Σlⁿtⁿ=Σψⁿ(l)tⁿ with ψⁿ(l)=lⁿ. For general x: −t·d/dt log λ_{−t}(x)=xt+(x²−2λ²(x))t²+…, so ψ²=x²−2λ² as SchemeKTheoryOperations §6.2.2 states. | Contract matches the supplier. |
| QWittVectors §2.1a contract (README:62) | toric line element l; canonical ℤ, x=2 | σ_t(l)=(1−lt)^{−1}, λ_t(l)=σ_{−t}(l)^{−1}=1+lt, λ²(l)=0, ψ_2(l)=l². On ℤ: λ_t(2)=(1+t)², λ²(2)=1, ψ_2(2)=4−2=2. Same values as the supplier's Checks. | Contract matches the supplier. |
| §6.11 λ-ring formula now citing SchemeKTheoryOperations §6.2.2 (README:3160) | d=2, z=(x−y)/(q−1), toric ψ² | ψ²(z)=(x²−y²)/(q²−1); z²−ψ²(z)=2(x−y)(x−qy)/((q−1)²(q+1)); halving gives (x−y)(x−qy)/((q−1)²(1+q)), the displayed value. | Unchanged Check consistent with the new supplier. |
| Downstream consumers (README:4141–4143) | ChromaticHomotopyTheory, StableHomotopyKTheoryPartII, GeneralAlgebraicKTheoryPartII, HabiroCohomologyFoundationsPartII at their heads | Citations located as listed under Ownership and consumers; the GeneralAlgebraicKTheoryPartII use of spherical lifts is through HabiroCohomologyFoundationsPartII §0.1. | Notes accurate; no change. |

**Carried-forward adversarial computations.** The following 213 rows retain the values and verdicts of [r3] (itself carrying [r2]). README line numbers in them are those of b713d26: lines up to 2237 are unchanged; lines 2238–2528 of b713d26 are now 22 lower in the file (add 22); lines from 2529 on are now 47 lower (add 47). No statement in these rows changed.

| Statement (README line; evidence) | Instances and computed sides carried from r3 | Result/change carried from r3 |
|---|---|---|
| §2.3 Postnikov/Tate bounds (559) [r3] | For X=0, limit and colimit comparisons are 0→0. For Hℚ with trivial C₂ or C₃, norm is ×2 or ×3, both isomorphisms, so Tate=0. | Retain; independent of sphere Segal. |
| §2.3 replacement integral Checks (569) [r3] | Cyclic complex alternates 0,p: H⁰=ℤ/p and H⁻¹=ker(p:ℤ→ℤ)=0. Thus (π₀,π₁)=(ℤ/2,0) or (ℤ/3,0). For C₁ norm=1, cofiber=0. | Retain; finite quotient is not ℤ_p. |
| §2.3 residual fixpoint Check (583) [r3] | For trivial C_(p²) on H𝔽_p, the residual two-term pieces have the nonzero extension class 1∈H²(C_p,𝔽_p); their induced resolution has Tate=0. At p=2,3 the retained iterated Tate is 0. Replacing residual action by a split trivial one leaves nonzero Laurent Tate classes. | Retain residual action; no sphere-value input. |
| §2.6 Frobenius (677, 698) [r3] | A=0 gives 0→0. A=𝕊 gives the composite through fixed points. After 𝕊→Hℤ the degree-zero norm cokernel sends n↦n mod p, with 1↦1 and p↦0 for p=2,3. | Canonical-map repair valid. |
| §2.10 Frobenius-lift route (887) [r3] | Y=* gives THH(𝕊)=Σ∞₊L(*)=𝕊; the unstable map on the single point is id. For Y=S¹, components are ℤ and p-fold covering sends n↦pn: 1↦2 or 3, 0↦0. | Retain; no sphere Segal computation needed. |
| §2.10 positive skeletal layers [r3] | In IV.3.5 take lifted coefficient map id: at p=2, n=1,2, the factors 1−p^n are −1,−3; at p=3 they are −2,−8. All reduce to 1 mod p and are p-adic units. | Supports the revised proof input, with p-completeness retained. |
| §4.13 corrected derived-tensor route (2024) [r3] | A=𝕊 gives M⊗_(𝕊⊗𝕊)𝕊=M, equal to the categorical trace of tensoring by M; M=0 gives 0. With M=M₂(ℤ), a=e₁₂,m=e₂₁: am=e₁₁, ma=e₂₂. | G2.4/operadic route retains distinct endpoint actions. |
| §4.14 split spectral algebra (2043) [r3] | (0,n)(0,m)=(0,0); (1,0)(a,n)=(a,n)=(a,n)(1,0); N=0 gives A. Over H𝔽₂ and H𝔽₃, (1,ε)²=(1,0) and (1,−ε). | Correct unit and square-zero law. |
| §4.14 outer bimodule fiber (2043) [r3] | A=𝕊: multiplication is id and fiber=0. A=T(V), words of length 0,1,2: A⊗A has 1,2,3 copies of V^⊗n mapping by sum to one copy; the fibers have 0,1,2 copies, equal to A⊗V⊗A. | Correct fiber, not an underived commutative ideal quotient. |
| §4.14 derivation adjunction (2045) [r3] | A=𝕊 gives Map(0,N)=* and one coherent section. A=T(V): free-bimodule maps and algebra-section fibers both give Map_Sp(V,N). V=0 gives *; V=𝕊,N=Hℤ gives discrete ℤ. | Correct natural mapping-space equivalence. |
| §4.14 sign and Leibniz law (2047) [r3] | a·d(b)+d(a)·b=(ab⊗1−a⊗b)+(a⊗b−1⊗ab)=ab⊗1−1⊗ab=d(ab). d(1)=0. For free x, the sign-reversed map gives 1⊗x−x⊗1 instead of the specified d(x). | Both actions and the positive chosen sign fixed. |
| §4.14 zero map and zero section (2057) [r3] | δ=0 sends a↦(a,0), whose projection is a. For T(𝕊), δ(d(x))=1 gives x↦(x,1), distinct from (x,0). | Excludes replacing all sections by zero. |
| §4.14 one-generator Check (2063) [r3] | D(x)=1 gives D(1),D(x),D(x²)=0,1,2x; D=0 gives 0,0,0. For N=ΣHℤ with x acting as 0, Map(𝕊,N)=K(ℤ,1), π₁=ℤ; its component set is a singleton. | Retain genuine spaces, not sets. |
| §4.14 two-generator Check (2064) [r3] | D(x)=y,D(y)=0 gives D(xy)=y²=D(yx), D(x²)=xy+yx. In ℤ⟨x,y⟩ the coefficients of (xy,yx) are (1,1), versus (2,0) for 2xy. | Discriminates the associative bimodule model. |
| §4.14 naturality and coherent morphisms (2047, 2065) [r3] | f(x)=y², D(y)=1 gives pulled-back D(x)=2y, both by δ_B∘Ω_f and by the section square. Choosing D(x)=1 gives 1≠2y. Identity f,u give the same D(x); zero u and zero target derivation give 0=0. | Correct variance, compatibility and zero maps. |
| §4.14 extension functor and connectivity (2069, 2073) [r3] | Base-changing the zero section A→A⊕ΣI gives fiber ΩΣI=I. I=0 gives B=A and fiber 0; δ=0 gives B=A⊕I. For connective A,I, the long exact sequence gives π_jB=0 for j<0. | Correct suspension and connective domain. |
| §4.14 connective scalar extension (2077) [r3] | Identity ring map gives A⊗_A I⊗_A A=I. For Hℤ→Hℚ and I=H(ℤ/2), extended bimodule is 0; I=Hℤ extends to Hℚ. Both are connective. | Uses derived extension on both sides. |
| §4.14 small-prime pullback Check (2085) [r3] | k=𝔽₂: (1+ε)²=1; k=𝔽₃: (1+ε)²=1−ε. In k[ε] without ε²=0 the additional coefficient of ε² is 1. | Correct and discriminating. |
| §4.14 shift Check (2086) [r3] | A=I=𝕊,δ=0 gives π₀B=ℤ[ε]/ε² and π₋₁B=0. Using I in place of ΣI gives A⊕ΩI and π₋₁=ℤ. | Correct negative control. |
| §4.16 extension-category consumer (2192) [r3] | For underlying spectra, fib(B→A)=I. Hℤ/4→H𝔽₂ and H(𝔽₂[ε]/ε²)→H𝔽₂ both have fiber H𝔽₂, while their source units obey 2·1=2≠0 and 2·1=0 respectively. | Repair includes nonsplit extensions and changing bases. |
| §4.19 low-degree relative groups (2353, 2363) [r3] | k=ℚ: relative K₁=εℚ≅ℚ=HC₀relative and K₂=0=Ω¹_(ℚ/ℤ). Splitting gives zero connecting maps; k=0 gives zero on each side. | Repaired locator supports the retained claim. |
| §4.19 polynomial symbol Check (2364) [r3] | k=ℚ[t]: D(ε,t)↦dt and D(2ε,t²)↦2d(t²)=4t dt. Negating the convention would yield −dt and −4t dt. | Agrees with K2SymbolsBrauer §13.13. |
| §4.19 integral negative control (2365) [r3] | k=ℤ: relative K₂=ℤ/2, whereas Ω¹_(ℤ/ℤ)=0. k=ℚ[t] has 2 invertible and gives ℚ[t]dt on both sides. | Keep the invertibility-of-two hypothesis. |
| Cyclic category (85) [r3] | n=0,1,2: rotation orders 1,2,3; HomΛ([1],[0]) has 2 elements versus HomΔ having 1. A rotation on (a,b,c) repeated three times gives (a,b,c). | Retain; distinguishes Δ and Λ. |
| Derived cyclic chains (114) [r3] | A=k gives normalized C₀=k, Cₙ=0 for n>0. For M₂(k), b(e₁₂⊗e₂₁)=e₁₁−e₂₂ rather than 0. | No change. |
| Connes B (144) [r3] | On k[x], B(x)=1⊗x, class dx; B(1)=0. On the zero algebra both sides are 0. | No change. |
| Complex chain/cochain comparison (166) [r3] | For ℂ, HC₂=HC²=ℂ, although normalized C₂=0. For ψ(a,b)=a(0)b′(0), ψ(Bx)=1=(B*ψ)(x). | No change. |
| Mixed complexes (186) [r3] | Two-term k with b=B=id between opposite degrees: b²=B²=0 but bB+Bb=id in each degree, not 0. k[−1] has H₋₁=k. | No change. |
| Derived mixed category (216), sampled [r3] | M₀=M₁=k, b=0, B=id: HC⁻₁=k, HC⁻₀=0; B=0 gives HC⁻₀=k. For b=id,B=0, b-homology=0 but outer H⁰ in the abelian-category derived model is M≠0. | Retain correct localization. |
| Precyclic cone (238), sampled [r3] | Zero input gives 0⊕0 and both matrices zero. The unital k input has b-homology k in degree 0. For A→M₂(A), the corner sends 1 to diag(1,0), differing from the matrix unit diag(1,1). | Retain nonunital cone route. |
| CC/CN/CP (263) [r3] | M=k[0]: HC₂=k, HC⁻₂=0, HC⁻₋₂=k, HP₋₂=k. For M₂ⱼ=k, j≥0, CP₀=∏k versus sum-totalization ⊕k; (1,1,…) lies only in the former. | No change. |
| SBI (294) [r3] | M=k[0]: HH₀→HC₀ is id:k→k; S:HC₂→HC₀ is id; HH₂=HH₁=0. For CN, u takes the degree-0 generator to degree −2. | No change. |
| Mixed-map compatibility (308) [r3] | Identity map between b=0 two-term objects with Bsource=id and Btarget=0: fb=bf=0, but fB=id≠0=Bf. | No change. |
| Mixed Morita (320) [r3] | Matrix trace sends e₁₁↦1 and e₁₁−e₂₂↦0. For the infinite free B-module example, VU−UV=p₀, so HH₀ of its corner sends 1↦0. | No change. |
| Shuffle/products (332) [r3] | On k[x,y], dx shuffle dy=[1⊗x⊗y−1⊗y⊗x], giving dx∧dy; swapping gives its negative. For matrices, μ((e₁₁⊗e₁₂)(e₂₁⊗e₁₁))=0 but μ(e₁₁⊗e₁₂)μ(e₂₁⊗e₁₁)=e₁₂e₂₁=e₁₁. | No change. |
| Circle-tensor property (365) [r3] | A=R gives R⊗T=R and HH₀=R, HH₁=0. A=R[x] gives HH₀=R[x], HH₁=R[x]dx and higher groups 0. | No change. |
| Ground-ring base change (379) [r3] | ℤ[x]→ℚ[x]: HH₀ and HH₁ become ℚ[x] and ℚ[x]dx. In (∏k)⊗k[t], t-degrees have a common finite bound; (tⁱ) in ∏k[t] has none. | No change. |
| Étale base change (391) [r3] | k[x]→k[x,x⁻¹]: HH₀=k[x,x⁻¹], HH₁=k[x,x⁻¹]dx on both sides; B(x)=dx, whereas xB(1)=0. | No change. |
| Antisymmetrization (405) [r3] | n=0,1,2: πε=1,1,2 times id. On dx∧dy over 𝔽₂, ε is a nonzero HKR class but πε=0. | No change. |
| B and de Rham (432) [r3] | x² in degree 0 maps under B then HKR to 2x dx, equal to d(x²); at p=2 both are 0. On degree 1 the rational normalization divides the raw degree-2 projection by 2. | No change. |
| Derived HKR filtration (446) [r3] | A=k has L=0 and gr⁰=k, higher gr=0. A=k[x] has L=A dx in degree 0; gr¹=A dx[1], higher exterior powers=0. | No change. |
| HH(𝔽_p/ℤ) (458) [r3] | Degree-2 divided power a satisfies aᵖ=p!γ_p(a)=0; in THH(𝔽_p), uᵖ≠0. For p=2, a²=0 versus u²≠0. | No change. |
| Coherent actions (486) [r3] | Trivial group gives Fun(*,Sp)=Sp. For S₃, (12)(23)=(123) while (23)(12)=(132); a commuting family cannot encode that action. | No change. |
| Orbits/fixed points (512) [r3] | G=1: XₕG=XʰG=X, norm=id and Tate=0. For C₂ on Hℤ trivially, norm on degree 0 is 2 and Tate π₀=ℤ/2. | No change. |
| Finite-action quotient (541), sampled [r3] | G=1 makes every object induced, quotient=0 and End(unit)=0=Tate. For C₃, R=Hℤ trivially acted on: π₀Endquot(unit)=ℤ/3, agreeing with coker(3). | Retain quotient and idempotent completion. |
| Parametrized Tate (589) [r3] | Base *=B1: dualizing spectrum S, norm=id and cofiber=0. For the circle the adjoint representation is a real line, giving ΣXₕT rather than XₕT. | No change. |
| Cyclic realization (609) [r3] | Cyclic bar of the trivial group realizes to a point, and suspension spectrum is S. Cyclic bar of ℤ has components indexed by ℤ, matching free loops in S¹. | No change. |
| Edgewise subdivision (634) [r3] | p=2, n=0 selects original degree 1; p=3, n=1 selects degree 5, from p(n+1)−1. | No change. |
| E₁ THH (648) [r3] | THH(S)=S; THH(0)=0. For H𝔽_p, π₀=𝔽_p and π₂=𝔽_p, unlike ordinary HH(𝔽_p/𝔽_p), whose π₂=0. | No change. |
| Relative THH (702) [r3] | Relative THH(R/R)=R. For R=H𝔽_p, relative π₂=0, while absolute π₂=𝔽_p. | No change. |
| Linearization over THH(ℤ) (728) [r3] | A=Hℤ: THH(ℤ)⊗THH(ℤ)Hℤ=Hℤ=HH(ℤ/ℤ); relative π₁ and π₂ vanish. | No change. |
| Free E₁ Bökstedt (740) [r3] | Perfect k=𝔽_p gives k[u], uᵖ≠0. k=𝔽_p(t) has nonzero dt in π₁. For k=𝔽_(p²), k⊗𝔽_p k=k×k, not k. | No change. |
| Mixed/circle equivalence (764) [r3] | k[0] with trivial B gives circle-fixed π₀=k and π₋₂=k. Two-term B=id gives HC⁻₀=0 instead of k. | No change. |
| Circle norm (776) [r3] | For k[0], HHₕT has k in degrees 0,2,…; its suspension has k in degrees 1,3,…, matching fib(HC⁻→HP). | No change. |
| HZ finite/circle Tate (788) [r3] | C₁:0; C₂ on Hℤ: πeven=ℤ/2, πodd=0. Circle periodic homology of ℤ has ℤ in every even degree. | No change. |
| Lax equalizers (806) [r3] | For zero source/target functors, an object is x plus the unique 0→0 map; for identity functors it is x plus an endomorphism, not only an invertible endomorphism. On ℤ, multiplication by 2 is allowed. | No change. |
| Symmetric monoidal THH (835) [r3] | Unit S maps to S; S⊗A=A and THH(S)⊗THH(A)=THH(A). Zero input gives 0 on both sides. | No change. |
| NS formula for TC (855) [r3] | On THH(𝔽_p), π₀can=π₀φ=id on ℤ_p, so their difference is 0; resulting π₀TC=ℤ_p and π₋₁TC=ℤ_p. | No change. |
| TC adjunction (869) [r3] | Mapping from the trivial cyclotomic unit into 0 gives 0=TC(0). On a map from the unit, Frobenius compatibility is an equalizer condition, not an arbitrary underlying element. | No change. |
| Stable-category THH (893), sampled [r3] | Zero category gives 0; Perf(S) gives S. Morita-equivalent matrix algebra M₂(k) has HH₀=k rather than k⁴. | Retain Morita/localization enhancement. |
| Orthogonal spectra (921) [r3] | Sphere structure at V=0,W=ℝ is S⁰∧S¹→S¹, the unit identification; dimension shift is 1, not 0. | No change. |
| Genuine fixed points (947) [r3] | For genuine C₂-sphere, π₀ categorical fixed points is A(C₂)=ℤ²; geometric fixed points give S with π₀=ℤ. | No change. |
| Complete universes (974) [r3] | The sign line of C₂ has fixed dimension 0, so ΦC₂(S^sign)=S⁰; trivial line has fixed dimension 1 and gives S¹. | No change. |
| Borel completion (1001) [r3] | G=1: F(EG₊,X)=X. A free induced G-object has Tate 0, while categorical invariants need not be 0. | No change. |
| Geometric localization (1019) [r3] | G=C₂, induced cell C₂₊∧S maps to 0 under ΦC₂, while ΦC₂(S)=S. | No change. |
| Isotropy separation (1031) [r3] | G=C_p, induced spectrum has geometric term 0; G=1 reduces to the identity triangle X→X→0. | No change. |
| Finite-family circle spectra (1045) [r3] | At m=1 fixed/geometric input is the underlying spectrum. For a free C_p cell its ΦC_p is 0; replacing every fixed functor by the underlying one would retain p copies. | No change. |
| Orthogonal/cyclotomic comparison (1071) [r3] | Unit and zero objects have underlying S and 0 on both sides. The C_p geometric unit is S, not the rank-p induced cell. | No change. |
| TR and genuine TC (1083) [r3] | For k=𝔽_p, TR¹₀=k, TR²₀=W₂(k)=ℤ/p²; R reduces modulo p, whereas V(1)=p. | No change. |
| Representation-graded TR (1113) [r3] | λ=0 gives ordinary TR-degree; λ the trivial complex line shifts by real dimension 2. The faithful complex C_p-line has fixed dimension 0, not 2. | No change. |
| Endofunctor coalgebras (1148) [r3] | F=id permits (Hℤ,×2); fixed-point/equivalence objects exclude it. Zero object has the unique 0→0 structure. | No change. |
| Genuine coreflection (1175) [r3] | Bounded-below prime-field model has π₀TR=W(𝔽_p)=ℤ_p. Unit/counit on an already matched object are identity, not multiplication by p. | No change. |
| Bökstedt construction (1189) [r3] | Sphere cyclic levels are S, yielding S after realization. On 0 every smash level and realization are 0. | No change. |
| Two THH models (1215) [r3] | At H𝔽_p both models have π₀=π₂=𝔽_p; the linear HH model would have π₂=0 over 𝔽_p. | No change. |
| Genuine restriction pullback (1229) [r3] | n=1 uses C_p/1=C_p; n=2 uses C_(p²)/C_p=C_p. The quotient has order p in both, not p² in the second. | No change. |
| de Rham–Witt TR (1243) [r3] | Perfect 𝔽_p: WₙΩ¹=0, TRⁿ₀=ℤ/pⁿ; at n=1 this is 𝔽_p. | No change. |
| Circle-equivariant p-typical convention (1275) [r3] | A single prime p selects one Frobenius; integral cyclotomic data at p=2 and p=3 require two maps. T/C_p→T sends z↦zᵖ. | No change. |
| Classical Cartier (1304) [r3] | On (𝔽₂)², F(x,y)=(x,0), V(x,y)=(0,x): FV=0=2id but VF(1,0)=(0,1). On ℤ, (F,V)=(2,1) and (1,2) both satisfy FV=2, but id between them fails F-commutation. | No change. |
| Topological Cartier (1330) [r3] | M=Hℤ with F=p,V=1 gives composite p, agreeing with norm on π₀; F=V=1 gives composite 1≠p. | No change. |
| V-completion (1359) [r3] | ℤ with V=id has cofib(Vⁿ)=0 and completion 0; V=p has cofib=ℤ/pⁿ and completion ℤ_p. Ordinary p-completion is ℤ_p in both cases. | No change. |
| Cyclotomic t-structure (1386) [r3] | THH(𝔽_p) has cyclotomic degree-zero group W(𝔽_p)=ℤ_p, although underlying π₀THH=𝔽_p. | No change. |
| TR/Cartier equivalence (1412), headline [r3] | At the prime field, TR₀=ℤ_p, F=1,V=p; quotient by V has π₀=𝔽_p. The V=id model would give quotient 0. | Retain marked F,V and completeness. |
| Cartier heart (1424) [r3] | (ℤ_p,F=1,V=p) is V-complete; (ℤ,F=p,V=1) has V-completion 0 and is not a nonzero object of that complete heart. | No change. |
| TR detects quasi-isogenies (1438) [r3] | Multiplication by p on ℤ_p has kernel 0 and cokernel 𝔽_p, killed by p, and becomes invertible on ℚ_p; zero map on ℤ_p does not. | No change. |
| Null Frobenius (1450) [r3] | X=0 gives ∏ₙXₕC_(pⁿ)=0. For a nonzero p-torsion input each homotopy-orbit factor is p-torsion, whereas a weight-zero THH(𝔽_p) has TR₀=ℤ_p. | No change. |
| Positive weights (1464) [r3] | At p=2, weight 1 maps to weight 2; in truncation ≤1 target=0. Weight 0 maps to weight 0 and is not forced to vanish. | No change. |
| Graded convergence (1490) [r3] | Xᵢ=ΣⁱH𝔽_p for i≥1: πⱼ of the tail >n is 0 for n>j. Weight-zero THH(𝔽_p) is spectrally p-torsion but TR₀=ℤ_p is not torsion. | No change. |
| Relative dualizable categories (1518) [r3] | E=Sp,C=Mod_R has dual Mod_(Rop); for R=S evaluation S⊗S→S is identity. Zero module category has dual 0 and evaluation 0. | No change. |
| Ordered trace class (1543) [r3] | In vector spaces, id on kʳ is represented by Σᵢeᵢ*⊗eᵢ; its trace is r. An infinite-rank identity is not a finite sum of rank-one tensors. | No change. |
| Trace-class preduals (1569) [r3] | Rank-one f(v)=λ(v)w has classifier λ⊗w and evaluation f; replacing classifier by 0 gives zero, distinguishable when λ(v)=1,w≠0. | No change. |
| E₁ rigidity (1581) [r3] | For the unit module the left/right evaluation composites are id; for zero object they are 0=id₀. An E₁ module does not acquire a braiding from these equations. | No change. |
| Nuclear objects (1604) [r3] | A finite-dimensional k-module is generated by rank-one evaluations. For k, 1*⊗1 evaluates to 1; zero classifier evaluates to 0. | No change. |
| Rigidity criterion (1627) [r3] | Unit-generated compact case: the unit's identity factors through its dual tensor with value 1↦1. Empty generating collection generates only 0, not a nonzero unit. | No change. |
| Nuclear closure (1637) [r3] | Cofiber(id:k→k)=0; finite sum k⊕k has identity classified by two rank-one summands and trace 2. | No change. |
| Continuous Calkin (1649) [r3] | For the zero category, Ind, quotient and Calkin category all equal 0. For compactly generated C, the defining localization has composite C→Ind(C)→quotient equal to 0. | No change. |
| Accessible localizing invariants (1672) [r3] | A split exact sequence C→C⊕D→D gives T(C⊕D)=T(C)⊕T(D); C=D=Perf(k) gives K₀=ℤ², not ℤ. | No change. |
| Continuous extension (1697), headline [r3] | On the compactly generated unit, Tcont(Ind Perf(k))=T(Perf(k)); for K₀ this is ℤ. Zero category gives 0. | Retain normalization on compacts. |
| Uniqueness of extension (1720) [r3] | Two normalized extensions on Ind Perf(k) have the same value K₀=ℤ and identity comparison on the marked generator 1; scaling by 2 fails that marking. | No change. |
| Relative localizing motives (1732) [r3] | Motive of 0 is 0; split C⊕D maps to U(C)⊕U(D). For the unit, K₀(Perf(k))=ℤ gives a nonzero endomorphism class. | No change. |
| Nuclear E-modules (1757) [r3] | E itself has evaluation 1⊗1↦1; zero E-module has every classifier and evaluation zero. | No change. |
| Length-one resolution (1780) [r3] | Split identity resolution 0→M→M→0 has kernel 0 and cofiber 0. A purported resolution with zero middle map on M=k would have kernel and cokernel k. | No change. |
| Enriched duality (1805) [r3] | Rank-one k-module has k*⊗k→End(k), 1*⊗1↦id; two basis vectors give the four matrix units. | No change. |
| Rigidity of motives (1815), headline [r3] | The unit is dual to itself; its evaluation on 1⊗1 is 1. A zero evaluation gives a zero snake composite instead of id. | Retain duality normalization. |
| Connective stable-category K (1827) [r3] | K(0)=0, K₀(Perf(k))=ℤ generated by [k], and [k⊕k]=2[k]. | No change. |
| Nonconnective K (1853) [r3] | IK(0)=0; Perf(k) has K₀=ℤ and K₋₁=0. Suspension delooping shifts a class from degree n to n+1. | No change. |
| Truncating invariants (1881) [r3] | For an invariant satisfying the stated truncation property, A→Hπ₀A induces an equivalence. A=Hk gives identity; S→Hℤ has unequal π₁ (ℤ/2 versus 0), so it is not itself a spectral equivalence. | No change. |
| K as invariant unit (1909) [r3] | Unit transformation sends [k]∈K₀(k)=ℤ to 1∈π₀THH(k)=k; at k=𝔽₂, 2[k] maps to 0. | No change. |
| Dennis trace (1921) [r3] | In k[t,t⁻¹], unit t maps to t⁻¹dt, unit 1 to 0; rank r maps to r·1. | No change. |
| Cyclotomic trace (1950) [r3] | K₀(𝔽_p)=ℤ maps to TC₀(𝔽_p;ℤ_p)=ℤ_p by 1↦1; K(0)→TC(0) is 0→0. | No change. |
| Trace uniqueness/multiplicativity (1976) [r3] | Product of rank 2 and rank 3 classes has rank 6, and trace(2·3)=6=trace(2)trace(3); zero transformation fails unit 1↦1. | No change. |
| Relative fibers (1990) [r3] | Identity ring map: relative K=relative TC=0. Split dual numbers have relative K₁=k via 1+εa↦a. | No change. |
| Goodwillie derivative (2090), sampled [r3] | ψ=id gives colim ΩⁿΣⁿX=X. Constant ψ=C has reduced functor 0 and derivative 0. Connective truncations of Σ⁻¹Hℤ first recover its degree −1 class after the extension step. | Retain reduction and connective extension. |
| Stable K derivative (2122) [r3] | For the rational dual-number direction, K₁(ℚ[ε],ε)=ℚ; THH(ℚ;ℚ)=Hℚ, so its suspension has π₁=ℚ, whereas its loop has π₁=0. | No change. |
| Stable TC derivative (2134) [r3] | Zero bimodule gives relative TC=0 and ΣTHH(A;0)=0. The linear term for A=S,M=Hℤ is ΣHℤ, with π₁=ℤ and π₀=0. | No change. |
| Pseudo-extensibility (2148) [r3] | For a linear reduced functor L, cross-effect₂(X,Y)=fib(LX⊕LY→LX⊕LY)=0. For X↦X⊗X, the mixed summands are X⊗Y and Y⊗X, not 0. | No change. |
| Postnikov convergence (2170) [r3] | Hk has τ≤nHk=Hk for n≥0, so limit=Hk. A zero tower has limit 0; levelwise vanishing of low groups follows only when the connectivity bound tends upward. | No change. |
| Derivatives to nilpotence (2214) [r3] | I²=0 has one nontrivial ideal layer I; I³=0 can have I and I². For k[ε]/ε³, I²=kε²≠0 and I³=0. | No change. |
| DGM (2228), headline [r3] | A=B gives zero fibers. For 𝔽_p[ε]→𝔽_p, relative K₁ is additive 𝔽_p; completed relative TC has the same degree-one class. For ℚ[ε]→ℚ both p-completed fibers vanish. | Retain connective, π₀-surjective nilpotent comparison. |
| Henselian trace rigidity (2240), headline [r3] | Identity henselian pair (R,0) has fiber 0 on both sides. For complete DVR ℤ_p,(p), quotient is 𝔽_p and the ideal is not nilpotent: pⁿ≠0 for every n. | Retain genuinely henselian extension. |
| Rational Goodwillie (2265), headline [r3] | ℚ[ε]→ℚ: K₁relative⊗ℚ=ℚ and HC₀relative=εℚ≅ℚ; relative K₀ and HC₋₁ are 0. | Retain one-degree shift. |
| Kinv truncating (2291) [r3] | A=Hk has A→Hπ₀A=id, so Kinv comparison=id. A square-zero nilpotent direction contributes equal K and TC linear fibers, hence its Kinv linear fiber=0. | No change. |
| Filtered-tower trace square (2303) [r3] | Constant identity tower gives identity on both inverse limits and zero total fiber. Tower ℤ/pⁿ has lim=ℤ_p, not a single finite quotient. | No change. |
| Mod-p K continuity (2315) [r3] | Constant ring tower gives K(R)/p on both sides. For ℤ_p/pⁿ, compatible units have limit ℤ_p×; reduction to n=1 alone retains only 𝔽_p×. | No change. |
| Truncating nil-invariance/excision (2327) [r3] | Square-zero I has I²=0; the perfection quotient in LT has locally nilpotent I with no uniform nilpotence exponent. Its K₂relative=0 but completed π₂≠0. | No change. |
| TC C_p assembly (2341), sampled [r3] | p=2: pointed C_p has one nonbasepoint; p=3: two. For R=0 all terms are 0. Thus the final reduced C_p factor has multiplicity p−1, not p. | Retain shifted THH and p-fold circle. |
| Almost-module continuous K (2373) [r3] | Zero almost ideal annihilates every module, producing zero almost category and K=0; unit ideal leaves ordinary modules. | No change. |
| Snaith (2413), headline [r3] | Bott β=[H]−1 on S² has β²=0 in reduced finite-base K, but the spectral localization makes β invertible. ψ²β=2β, so an integral periodic ring map would have to invert 2. | Retain localization at k. |
| Coherent stable Adams (2437), headline [r3] | ψ²ψ³β=6β=ψ⁶β. In KU[1/2], ψ²(β⁻¹)=(1/2)β⁻¹; integral KU cannot contain that inverse image. | Retain coherent localized lift. |
| Rational graded HKR (2465), sampled [r3] | β has degree 2, σβ degree 3; B(β²)=2βσβ. For Laurent β, δ=β⁻¹σβ has degree 1 and B(β⁻¹)=−β⁻²σβ. | Retain Koszul sign and Laurent derivative. |
| Relative ku/KU THH (2477), sampled [r3] | R=A gives THH(ku_A/ku_A)=ku_A, and periodicization gives KU_A; rational coefficients are Aℚ[β] and Aℚ[β±¹]. | Retain relative unit. |
| Oriented fixed/Tate coefficients (2491) [r3] | q−1=βt; ψ²β=2β, ψ²q=q² implies ψ²t=((q+1)/2)t. At q=1 this gives t, not 2t. For C₂, (1+z)²−1=2z+z². | No change. |
| Étale spectral lifts (2519) [r3] | Identity π₀-algebra lifts to the given base with identity marking. Zero étale algebra lifts to zero; a chosen marking excludes arbitrary automorphisms of a nontrivial étale extension. | No change. |
| Spherical base hypotheses (2531) [r3] | On ℤ[x], ψ₂(x)=x² and the target is free of rank 2 over the image, basis 1,x. On ℤ[ε]/ε² with ψ₂ε=2ε, reduction modulo 2 makes ε act by 0, so this map is not flat. | No change. |
| Compatible global lifts (2557) [r3] | On S[x±¹], ψ²ψ³x=x⁶=ψ⁶x; on the base unit ψ¹=id. Reversing the degree convention to x↦x⁻ᵐ fails ψ¹=id. | No change. |
| Solid nuclear trace class (2584) [r3] | For a free rank-one solid module, evaluation of 1*⊗1 is 1; for the zero module it is 0. Infinite product identity is not represented by a finite rank-one sum. | No change. |
| Perfect-even site (2613) [r3] | R and Σ²R have even homotopy for even R; ΣR has odd π₁=π₀R. Zero is even; the odd shift is excluded. | No change. |
| Homological evenness (2638) [r3] | At even R, the representable unit has π₂ⱼ₊₁=0. For ΣR, π₁=π₀R≠0, showing parity is detectable. | No change. |
| Even flatness (2665), sampled [r3] | Free R² is an even-flat finite cell when R is even; filtered colimit of such cells retains flatness. Over Hℤ, H𝔽₂ has Tor₁(𝔽₂,𝔽₂)=𝔽₂, unlike a flat discrete module. | Retain ordinary characterization and only the stated solid implication. |
| Faithfully even flat (2689), sampled [r3] | R→R has fiber 0 and detects every module. Nonzero R→0 sends R to 0 and cannot be faithful. | Retain faithfulness, not flatness alone. |
| Solid duality R (2711), sampled [r3] | Finite free rank-one R-module has bidual R and evaluation id; an infinite direct sum has ordinary dual a product, so direct sum and product cannot be interchanged. | Retain both module sides and explicit assumption. |
| Ordinary even filtration (2735) [r3] | For even Hℤ, fil⁰=Hℤ, fil¹=0. For Σ²Hℤ as module, fil¹=Σ²Hℤ and fil²=0. | No change. |
| Solid even filtration (2763) [r3] | On the discrete even unit, evaluation gives the same groups π₀=ℤ, πodd=0. Zero input has every step 0. | No change. |
| Synthetic finite operations (2791), sampled [r3] | n=1: norm=id, Tate=0. For induced C₂-object R[C₂], norm identifies coinvariants and invariants with R, hence Tate=0; for trivial H𝔽₂ the ordinary Tate realization has 𝔽₂ in every degree. | Retain unshifted finite norm and lax structure. |
| Synthetic circle operations (2821), sampled [r3] | Unit Hk with trivial circle: fixed terms in degrees 0,−2,…; orbits in 0,2,…; the norm source is shifted by one plus filtration twist, not unshifted. | Retain (1)[1] and Lemma 2.75 bounds. |
| Filtered solid relative THH (2848) [r3] | For identity base map, relative THH is the base; on even Hℤ its first two filtration steps are Hℤ and 0. | No change. |
| K(1)-local sphere (2829) [r3] | At odd p use ψʳ on KU_p; at p=2 use ψ³ on KO₂. KU₂ has π₂=ℤ₂, while KO₂ has π₂=ℤ/2, so substituting KU for KO changes fixed-point input. | No change. |
| Image of J (2890) [r3] | At odd p, connective cover keeps π₀=ℤ_p and removes all negative homotopy of the K(1)-local sphere; j is therefore not the untruncated fixed-point spectrum. | No change. |
| All-prime E₁ comparison (2920) [r3] | At p=2 the stated E₁ comparison survives; an E∞ conclusion would require additional coherent operations not provided by an equality of π₀=ℤ₂. Unit maps take 1↦1 on both sides. | No change. |
| THH(ℤ_p)/J (2932) [r3] | At p=3, π₅THH(ℤ₃)=ℤ/3; at p=2, π₃THH(ℤ₂)=ℤ/2. Thus mixed-characteristic THH is not even. | No change. |
| Cyclotomic integer comparison (2944) [r3] | p=3 gives ℤ₃[ζ₃], ramification degree 2; p=2 gives ℤ₂[ζ₂]=ℤ₂, degree 1, outside the cited odd-prime theorem. | No change. |
| ψ⁰/q-Hodge pullback (2958), sampled [r3] | Unit R=A gives Fⁱ=h^max(i,0)A[[h]]; F¹=hA[[h]], F²=h²A[[h]]. Constant positive filtration hA[[h]] would fail at i=2. | Retain specified pullback. |
| Odd-prime local comparison (2983), sampled [r3] | Unit over ℤ₃: gr⁰=ℤ₃, gr¹=hℤ₃[[h]]/h²≅ℤ₃. Degree shearing places weight 1 in homotopy degree 2. | Retain completion and shearing. |
| p=2 local comparison (2995), sampled [r3] | Unit over ℤ₂ has the same h-adic graded values ℤ₂. The prime is 2, so an argument requiring 2 invertible would compute in ℚ₂ instead and lose integral coefficients. | Retain separate theorem. |
| Quasiregular quotient (3007), sampled [r3] | Identity quotient has ideal 0, and combined filtration is h-adic. For a nonzero regular ideal (x), cotangent contributes one degree-1 generator; replacing quotient by an étale map would give 0. | Retain quasi-lci and relative semiperfectness conditions. |
| Arithmetic gluing (3021) [r3] | For the coefficient lattice, ℚ∩∏ₚℤ_p=ℤ inside finite adeles. Omitting the rational corner would leave ∏ₚℤ_p, which contains non-diagonal sequences. | No change. |
| Global q-Hodge (3046), headline [r3] | At A=R=ℤ, grⁱ of h-adic filtration is ℤ for i≥0; its trace coefficient lies in degree 2i. Zero rank/frame gives no differential forms of positive degree. | Retain global and local gluing. |
| Completeness/multiplicativity (3058) [r3] | ∩ₙhⁿℤ[[h]]=0 and lim ℤ[h]/hⁿ=ℤ[[h]]. Multiplication hⁱ·hʲ=hⁱ⁺ʲ distinguishes multiplicative from constant filtration. | No change. |
| Framed inputs (3070) [r3] | S=A[x] has relative dimension 1 and Ω¹=A[x]dx; empty frame on S=A has Ω¹=0. Étale S=A×A still has dimension 0, not rank 1 as an A-module. | No change. |
| q-divided powers (3093) [r3] | δ⁰=1, δ¹=x−y, δ²=(x−y)(x−qy)/(1+q); at q=1 δ²=(x−y)²/2. ∇qxδ²=x−y; ∇qyδ²=−(x−qy). At x=0 the cancelled polynomial numerator identity still gives 0=0. | No change. |
| Framed Čech resolution (3119) [r3] | A=ℤ[1/2], S=A[i], d=0: R₁=S⊗A S=S×S. Full diagonal completion gives S, while coordinate-only completion retains S×S. In degree 0 the corrected q-D is S[[h]]. | No change. |
| Framed comparison (3142), headline [r3] | One-variable linear summand has q-Hodge differential h:x↦h dx, hence H¹=A[[h]]/h; q-de Rham differential sends x↦dx and has H¹=0 on this summand. Empty frame gives h-adic unit. | Retain q-Hodge versus q-de Rham. |
| Framed trace E∞ pair (3166), headline [r3] | The unit maps 1↦1 and products of filtration generators obey h·h=h². For the one-variable pair, the linear H¹=A[[h]]/h survives; replacing it by de Rham gives 0. | Retain trace enhancement beyond supplied E₀ pair. |
| Cyclonic category (3191), sampled [r3] | m=1 has one divisor, hence no prime transition conditions. m=6 has divisors 1,2,3,6 and prime edges for 2 and 3; omitting either loses a compatibility. | Retain all finite cyclic groups. |
| Cyclonic ku/KU (3218), sampled [r3] | Inflation by 2 sends q↦q², β↦β; thus h↦2h+h². Stable Adams instead sends β↦2β. At β=0 these are still different graded maps. | Retain inflation/Adams distinction. |
| A₂ coherence (3244), sampled [r3] | Toric x has ψ²ψ³x=x⁶=ψ⁶x; at q, inflation composition gives q⁶. Equality of these values alone supplies no Tate-square homotopy. | Retain explicit higher compatibility. |
| TC−(m) (3271) [r3] | m=1 gives XʰT. On ku unit, π₀ at m=2 is ℤ[q] completed at q²−1. For divisor 1 of 2, βt₂=q²−1 maps to (q+1)βt₁; at q=1 the factor is 2. | No change. |
| Cyclonic filtration/KU (3296) [r3] | Inverting β sends βtₘ=qᵐ−1 to tₘ=(qᵐ−1)β⁻¹. β has homotopy degree 2 and filtration degree 1; omitting the latter would shift gr by 0 rather than 1. | No change. |
| Twisted q-Hodge (3323), headline [r3] | m=1 recovers h; m=2 uses q²−1=(q−1)(q+1). At q=−1, q²−1=0 but q−1=−2, so the m=2 completion cannot be replaced by m=1 integrally. | Retain all cyclotomic stages. |
| Habiro–Hodge (3335), headline [r3] | On A=R=ℤ[1/2], factorial-stage completion gives lim ℤ[1/2][q]/∏ⱼ≤n(1−qʲ); completion at q−1 gives ℤ[1/2][[h]]. The m=2 stage also sees q=−1. | Retain full divisor limit and module-level theorem. |
| Number-field KU (3349), headline [r3] | F=ℚ, Δ=6 gives R=ℤ[1/6], with 2- and 3-completions 0. F=ℚ(i), Δ=12 gives R=ℤ[i][1/6]; Δ=1 leaves ramification at 2 and violates hypotheses. | Retain discriminant and small-prime conditions. |
| Rigidification (3379) [r3] | Rigid target unit factors through itself with identity; zero target has envelope 0. Rational-index interpolation has arbitrarily many intermediate stages, unlike a fixed finite chain. | No change. |
| Refined invariant (3402) [r3] | For smooth proper Perf(k), realization of Tref returns T(k); at the zero category both refined value and realization are 0. | No change. |
| Killing pro-algebra (3414) [r3] | Killing the unit algebra makes the unit zero, hence target 0; killing zero leaves the original unit. These two boundary values distinguish the localization. | No change. |
| Smooth proper categories (3440) [r3] | Perf(k) has compact diagonal and finite-dimensional Hom(k,k)=k. Perf(k[t]) has Hom(A,A)=k[t], infinite-dimensional over k, so is not proper over k. | No change. |
| Smooth proper normalization (3463) [r3] | On Perf(k), K₀=ℤ and refined normalization has the same marked class 1. Zero category gives 0. | No change. |
| Refined base change (3473) [r3] | Identity base change gives the identity comparison; extension k→k² carries the rank-one unit to (1,1), not (1,0). | No change. |
| Localization cofiber (3485), sampled [r3] | Zero killed algebra gives dual term 0 and cofiber T(X), hence no change. Killing unit gives T(X)→T(X) by id and cofiber 0. | Retain tower duals and bimodule factorization hypotheses. |
| Oriented completion (3497) [r3] | βt=q−1; after β inversion t-adic completion is h-adic completion degreewise. Degree-zero coefficient ring is ℤ[[h]], not uncompleted ℤ[h]. | No change. |
| Refined THH/TC⁻ (3507) [r3] | Relative unit THH(k/k)=k; TC⁻ is khT. For k=Hℚ, π₀=ℚ and π₋₂=ℚ, so forgetting circle fixed points would lose π₋₂. | No change. |
| High-powered integers (3533) [r3] | 1,9,16,64 pass; 0 fails positivity; 3 fails exponent≥2; 8 and 32 fail the 2-exponent condition. v₂(32)=5; vₚ(d⁴)=4vₚ(d) for d>0. | No change. |
| Torsion-free base change (3557) [r3] | ℤ⊗ℤℤ/m=ℤ/m with Tor₁=0; ℤ/m⊗ᴸℤℤ/m has Tor₁=ℤ/m. | No change. |
| Finite-coefficient q-Hodge (3575), headline [r3] | m=1 gives zero quotient spectrum and zero completed q-Hodge complex. m=9 and m=16 are admissible; m=4 is algebraically powerful but not supplied by the stated spectral tower. | Retain completed pair and high-powered spectral restriction. |
| Filtered derived Hom (3587), sampled [r3] | M=k gives RHom(k,N)=N. Over ℤ, Hom(ℤ/m,ℤ)=0 but Ext¹(ℤ/m,ℤ)=ℤ/m, producing a degree −1 homotopy group. | Retain derived Hom. |
| Finite-coefficient dual (3597), sampled [r3] | m=9: Homℤ(ℤ/9,ℤ)=0, Ext¹=ℤ/9, Ext²=0; m=16 similarly gives ℤ/16 in Ext¹ only. | Retain odd dual degree. |
| Completed tensor filtration (3607), sampled [r3] | Over ℤ_p[[x,y]], tensor of two ℤ_p quotients has Tor ranks (1,2,1). Tensor filtration gr¹=0 while output Whitehead gr¹=Σ²Hℤ_p. Over ℤ_p, two 𝔽_p inputs give Tor ranks (1,1), inside amplitude [0,1]. | Retain amplitude clause; negative control works. |
| Pro-idempotence (3623) [r3] | ℤ/9⊗ᴸℤℤ/9 has H₀=H₁=ℤ/9, so not termwise idempotent. For m₁=9,m₂=16, gcd=1 gives H₀=H₁=0; for 9,27 both equal ℤ/9. | No change. |
| Trace-class transitions (3633) [r3] | m=9 has m³=729 and m=16 has m³=4096; quotient maps send 1↦1. The dual has degree −1, shifting tensor amplitude to [−1,0], not [0,1]. | No change. |
| Rational ku refined coefficients (3645), headline [r3] | For finite test module ℤ/m, dual contributes Ext¹=ℤ/m, and its cofiber against an even base shifts that contribution into even degree. The unit term B survives as B in the displayed exact sequence. | Retain ind-extension, no canonical split. |
| Rational KU refined coefficients (3655), headline [r3] | β⁻¹ has degree −2; multiplying by β identifies successive even coefficient groups. Odd groups are 0; q−1=βt persists. | Retain periodic ind-coefficients, not connective truncation. |
| Trace descent (3681) [r3] | Identity cover has constant Čech object and totalization equal to the original trace. Empty cover of the empty affine/zero algebra gives 0. | No change. |
| Even HH on QRSP covers (3691) [r3] | Perfect field 𝔽_p over itself has L=0 and HH=𝔽_p in degree 0. A regular quotient over ℤ has cotangent in homological degree 1, yielding even divided powers after the HKR shift. | No change. |
| Cyclic/de Rham (3701) [r3] | Unit ℤ over ℤ: HC⁻₋₂=ℤ and HP₂=ℤ, while HC⁻₂=0. Filtration-completed de Rham terms reproduce these shifts. | No change. |
| Perfectoid coefficient node (3714) [r3] | Ainf[u,v]/(uv−ξ): v=1 gives u=ξ; after v inversion u=ξv⁻¹. Mod ξ, uv=0, so for nonzero residue ring u and v are zero divisors. | No change. |
| THH deformation (3741) [r3] | Killing the relative Bott parameter recovers HH; in the prime-field comparison, polynomial uᵖ≠0 differs from divided-power aᵖ=0. | No change. |
| THH antisymmetrization (3751) [r3] | In form degree 2, the two signed tensor terms project to 2dx∧dy; at p=2 this is 0. | No change. |
| THH cotangent filtration (3775) [r3] | L=0 gives only weight 0; for a single smooth coordinate, Λ¹L is rank 1 and Λ²L=0. | No change. |
| Nygaard/décalage (3787) [r3] | On a one-term torsion-free complex, Lη_f leaves degree 0 unchanged; on degree 1 it inserts f. For differential f:A→A, décalage changes the divided differential to 1. | No change. |
| Segal over O_C (3797) [r3] | The parameter map on the perfectoid even generator has the indicated Frobenius unit; in degree 0 the unit maps 1↦1. Zero comparison would send 1↦0 and fail. | No change. |
| Derived spectral-sequence convergence (3809) [r3] | Constant complete tower has lim¹=0; tower ℤ←2ℤ←2ℤ←… has lim=0 and nontrivial lim¹ (ℤ₂/ℤ), so arbitrary tower convergence cannot be inferred. | No change. |
| Negative TC (3819) [r3] | For 𝔽_p, 1−F=0 on W(𝔽_p)=ℤ_p, so π₋₁TC=ℤ_p. For algebraically closed 𝔽̄_p, Artin–Schreier/Witt gives surjectivity and coker=0. | No change. |
| Trace Adams (3831), sampled [r3] | p=5, γ=2: weights i=0,1,2 give 1,2,4. Circle parameter transport has factor 2⁻¹=3 mod 5, not 2. At i=−1 the factor is γ⁻¹ when that degree is defined. | Retain inverse circle convention and weight γⁱ. |
| Characteristic-p even TC sheaf (3861) [r3] | At weight 0 over 𝔽_p, F−1=0 on ℤ_p, not surjective on points; étale Artin–Schreier covers kill the obstruction locally. | No change. |
| Syntomic K sheaves (3871), headline [r3] | Weight 0 on the prime field gives K₀ completed=ℤ_p. With mod pⁿ coefficients it gives ℤ/pⁿ. The raw π₋₁TC=ℤ_p above is not a negative connective K-group. | Retain sheafification, connective truncation and i≥1 on odd comparison. |
| Habiro trace export (3909) [r3] | F=ℚ,Δ=6 has zero local terms at 2,3; F=ℚ(i),Δ=12 retains the two conjugate embeddings in split coefficient factors. Shearing weight i shifts by −2i. | No change. |
| Coefficient order (3937) [r3] | Hℤ: completion then inversion has π₀=ℚ_p; rationalization then p-completion gives 0. Multiplication by p becomes an isomorphism on ℚ_p but not on ℤ_p. | No change. |
| Trivial integers/THH(𝔽_p) (3963) [r3] | Degree-0 map ℤ→𝔽_p has kernel pℤ; its cofiber fits the stated cyclotomic sequence. For X=0 all three terms and the fiber are 0. | No change. |
| Spectral versus ordinary reduction (3977) [r3] | R=ℤ: π₀(R⊗S𝔽_p)=𝔽_p=R/p, but the source retains higher spherical Tor. For R=ℚ both p-completed trace terms are 0. | No change. |
| β comparison (3991) [r3] | Domain/codomain composition is K(R/p)→TC(R/p)→HP(R); β∘tr is typed, tr∘β is not. For R=ℚ, completed domain and codomain are 0. | No change. |
| Spectral Beilinson square (4018) [r3] | At i=0 the low-degree total cofiber is killed by p⁰=1, hence 0. At p=2,i=1 the stated bound is annihilation by 2, not vanishing integrally. | No change. |
| Associative Beilinson square (4032), sampled/headline [r3] | R=ℚ has all p-completed corners 0. R=ℤ_p has HC₀(R;ℚ_p)=ℚ_p, so relative TC has π₁=ℚ_p and cofiber π₂=ℚ_p. | Retain associative generality and rational coefficients. |
| Henselian K square (4044), sampled/headline [r3] | R=ℤ_p: relative units 1+pℤ_p (1+4ℤ₂ for logarithm at 2) rationalize to ℚ_p, matching (ΣHC)₁=ℚ_p. R=0 has all corners 0. | Retain henselian commutative scope. |
| Beilinson fiber shifts (4056), sampled/headline [r3] | For HC₀=ℚ_p, ΣHC has π₁=ℚ_p and Σ²HC has π₂=ℚ_p. p=2 gives bounds −1 and 0; p=3 gives 1 and 2, the latter only with the extra π₋₁ hypothesis. | Retain shift and small-prime bounds. |
| Integral graded refinement (4070), headline [r3] | i=0: LΩ/LΩ≥0=0, so its rational isogeny target is 0. At p=2 the equivalence range i≤p−2 includes only i=0; at p=3 it includes i=0,1. | Retain uncompleted derived de Rham and stated range. |


## Not verifiable

- No source needed for the changed passages was inaccessible; no missing-reference request was created. The worker's four citation leads (`AInf.Trace.tateOrbit`, `tateFinite`, `completedTateComparison`, `Prismatic.Trace.rationalBeilinson`) are supplier API names from AInfCohomology §AI.7.2 and PrismaticCohomology, not pinned declarations, and were not treated as missing.
- Unchanged external locators, the full ownership audit and the headline carrier assessment are carried from [r2] and [r3], not newly verified this round. Ownership searches this round covered spherical Witt vectors, spherical lifts of perfect δ-rings and the TC/p colimit theorem on main and every open head.
- The HA §7.4.2 citation in the §6.1 proof route supports the classification of square-zero extensions; the Ext¹/Ext² obstruction statement it is attached to is the standard consequence used in EC2's own proof of Theorem 5.2.5, which the route cites first. I did not look for a separate locator for it.

## Source issues

- none

[r2]: packages/RefinedTraceMethods/reports/PRREVIEW-RefinedTraceMethods~2.md
[r3]: packages/RefinedTraceMethods/reports/PRREVIEW-RefinedTraceMethods~3.md
