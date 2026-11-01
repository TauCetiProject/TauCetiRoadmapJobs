# Review of StableHomotopyKTheory (pull request #1227 at 85481d5)

**Verdict:** needs changes

Gate at the head (worker's run, reproduced): `set_option=0 blob=0 latex=0 tex=11 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL`. The only failing check is `tex` (R02). Dependency check: `depcheck: 205 roadmaps, 1454 edges, 0 problem(s)`; no UPWARD or CYCLE line. `lake env lean` on `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean` elaborates with nine `declaration uses sorry` warnings and nothing else. No change outside the roadmap folder (`git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/StableHomotopyKTheory'` is empty).

## R01 (P2) — §7.31 re-plans the synthetic-spectra machinery EllipticCohomology E4.A already builds

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md` line 2661, "Construct Pstrągowski's HF₂-synthetic spectra `F2Synthetic`: spherical sheaves of spectra on finite spectra for the topology of mod-2 homology surjections … Construct τ … the commutative algebra Cτ and the symmetric monoidal τ-inversion … Prove that ν carries a cofibre sequence to a cofibre sequence exactly when it is short exact on mod-2 homology."

Claim: §7.31 constructs the synthetic category, its bigraded spheres, ν, τ, Cτ, τ-inversion and the homology-short-exact cofibre criterion as new targets, citing Pst Defs 4.1–4.6, Lemma 4.23, Def 4.27, Cor 4.30, Thm 4.37 and Prop 4.40 directly.

Witness: `TauCetiRoadmap/EllipticCohomology/README.md` on main, §E4.A (lines 996–1024), already plans exactly this construction at E = MU with the same inputs: spherical sheaves on the site of finite E-projective spectra with E_*-surjection covers, Day tensor, bigraded spheres in Adams coordinates `S^(n,s)=Σ^(−s)ν(S^(n+s))`, the connective analogue ν with its lax structure, the homology-short-exact cofibre comparison, τ:S^(0,−1)→S^(0,0), τ-inversion recovering spectra, and the commutative Cτ (its Needs line cites "Pstrągowski §§4–5"). EllipticCohomology is on main and at merge-order position 5, before this roadmap (position 12). The README's Scope and ownership section never mentions EllipticCohomology, so the generic machinery has two owners.

Repair: in Scope and ownership add that EllipticCohomology E4.A owns the synthetic-spectra construction for an Adams-type theory (site, spherical sheaves, bigraded spheres, ν, τ, Cτ, τ-inversion, cofibre criterion). In §7.31 define `F2Synthetic` as E4.A's construction instantiated at HF₂, add "EllipticCohomology E4.A" to its `*Needs:*` line, and keep as local targets only what is HF₂-specific: that HF₂ is Adams-type and every finite spectrum is HF₂-projective, so ν is strongly symmetric monoidal (Pst Lemma 4.24, p. 43: the comparison νX⊗νY→ν(X⊗Y) is an equivalence when X is a filtered colimit of finite projectives); 2̃ and `C(2̃^q)`; the vanishing lines; the comparison with TangentialBordism B4.2's Adams spectral sequence (BHS Thm 9.19). If E4.A's statements are judged MU-specific, say so in Scope in one clause and still cite its generic steps rather than restate them. Tested on the instance: E4.A's "homology-short-exact cofiber comparison" at E = HF₂ is literally §7.31's "ν carries a cofibre sequence to a cofibre sequence exactly when it is short exact on mod-2 homology" (Pst Lemma 4.23, p. 43).

## R02 (P3) — Gate `tex`: eleven TeX-only subscripts outside code spans

Location: README lines 1896 (`∪_{Xₙ}`), 2207 (`B₀ᵢ ⊔_{A₀ᵢ} A₀ⱼ`, twice), 2240 (`Σ_{B∖A}`), 2688 (`2·id_{E/2}`, three times), 2692 (twice), 2693 (`τ_{≤3}`), 2694.

Claim: these are prose `_{…}` constructions that the gate's `tex` rule refuses.

Witness: the gate line `tex=11 … FAIL` in the worker's run and the eleven listed lines.

Repair: put each formula in a code span (for example `` `2·id_{E/2}` ``) or write it in Unicode (`τ≤₃S`, `Σ_B∖A` in a code span). The gate must pass before acceptance.

## R03 (P3) — Pull-request URLs in two supplier contracts

Location: README line 57, "[AlgebraicKTheory A0–A1](https://github.com/TauCetiProject/TauCetiRoadmap/pull/1142)"; line 61, "[TangentialBordism B4.1–B4.2](https://github.com/TauCetiProject/TauCetiRoadmap/pull/942)".

Claim: cross-roadmap citations name the roadmap and section, never a pull-request number (house rules, "Cross-roadmap citations"); the `prnum` scanner does not catch the URL form.

Witness: the two links.

Repair: delete the links, leaving the plain text "AlgebraicKTheory A0–A1" and "TangentialBordism B4.1–B4.2" (both roadmaps are earlier in the merge order at positions 11 and 9, so the citations themselves are in order).

## R04 (P3) — Four G2.10 declaration names that GeneralizedCohomology does not have

Location: README line 71, "`MappingPathSpace f`, `MappingPathFiber f b`, `mappingPathProjection`, `mappingPathFiberProjection`, `mappingPathEndpoint`, `mappingPathInclusion`, `IsHurewiczFibration` and `IsHurewiczFibration.lift` supply the path-space objects and maps."

Claim: these are supplied names of GeneralizedCohomology G2.10.

Witness: `TauCetiRoadmap/GeneralizedCohomology/README.md` on main, G2 item 10 (lines 533–600), names only `MappingPathSpace`, `MappingPathFiber`, `IsHurewiczFibration`, `IsHurewiczFibration.lift` and `mappingPathFiberConstHomeomorphLoopSpace`; `mappingPathProjection`, `mappingPathFiberProjection`, `mappingPathEndpoint` and `mappingPathInclusion` occur nowhere in that README (0 hits each). The projection, endpoint and constant-path inclusion are described there in prose (line 558, "the constant-path inclusion B→MappingPathSpace f").

Repair: cite those four maps by G2.10's prose description ("its fibre projection, endpoint evaluation and constant-path inclusion") rather than as backticked names, or use the names G2.10 actually carries.

## R05 (P3) — The title names this folder as AlgebraicTopology's Part II

Location: README line 1, "# Roadmap: algebraic topology of spaces and manifolds, Part II: homotopy foundations for algebraic K-theory"; line 7, "This extends **Algebraic topology of spaces and manifolds**."

Claim: the folder is `StableHomotopyKTheory`, and the open roadmap `AlgebraicTopologyPartII` (its README line 1: "# Roadmap: algebraic topology, part II") already carries the Part II name and cites this roadmap as a supplier (its supplier contract "From TauCetiRoadmap.StableHomotopyKTheory", line 386 at its head).

Witness: the two titles.

Repair: title "# Roadmap: homotopy foundations for algebraic K-theory", keeping the Scope sentence that it extends AlgebraicTopology through the named stages.

## R06 (P3) — Supplier citations without a section

Location: README `*Needs:*` lines 405, 525, 535, 543, 621, 684, 692, 704, 720, 770, 786, 794, 802, 824, 964, 972, 1006, 1014, 1024, 1060, 1078, 1086, 1094, 1108 and others, "AlgebraicTopology" and "UniversalCovers" bare (for example line 1006, "*Needs:* AlgebraicTopology, UniversalCovers.").

Claim: a supplier is cited by roadmap and section or target.

Witness: the citation resolver lists these lines as unresolved precisely because the section is missing; the abbreviations `M` and `TC` are defined on line 107 and are fine.

Repair: name the stage or item each line uses (AlgebraicTopology 4.3, 4.7, Stage 8 item 8.9, UniversalCovers Stage 2 …), as §§1.2–1.6 and §1.26 already do.

## R07 (P3) — Two exported theorems are neither in `Suggested.lean` nor declared not statable

Location: README line 2735 (Downstream consumers), "§§3.1–3.28 here own acyclic plus maps, uniqueness and homotopy functoriality, including §3.25's arbitrary-target factorization and §3.28's H-space recognition"; line 2737, "The arbitrary-target plus factorization and the H-space recognition theorem are owned here, as §3.25 `IsPlusConstruction.lift` and §3.28"; `Suggested.lean` module docstring lines 11–30.

Claim: the consumers' contracts export §3.28 (H-space recognition) and, through it, §3.23 (abelian homology Whitehead) as owned theorems, but `Suggested.lean` neither states them nor names them in the docstring's list of headlines not statable at the pins.

Witness: `Suggested.lean` declares nine theorems (A, B in two forms, `iff_homology`, `plus_exists`, `lift`, `piTwoEquiv`, `fiber_universalCentralExtension`, `continuousFunctions_projective_free`); the docstring's not-statable list names category homology, rational Hurewicz, group completion, topological K-theory, Layers 5–7, Waldhausen and the Eₙ theorems only. Both §3.23 and §3.28 are statable with one definition of "abelian space" on Tau Ceti's fundamental-group action (`TauCeti.Topology.Homotopy.HomotopyGroup.FundamentalGroupAction`) and Mathlib's `HSpace` and `AlgebraicTopology.singularHomologyFunctor`.

Repair: either state §3.28 (and §3.23 if wanted) in `Suggested.lean` with that one definition, or add them to the docstring's list with the carrier they lack. Not blocking because the README's own headline list (line 105) does not include them.

## Verified sound

**Seeded sample (15 targets), each read at its locator in the fetched text.** Page maps: Hatcher AT cache page = printed + 9; Quillen LNM = cache + 84; Weibel IV cache page = chapter page; NS cache = printed; Kahn cache = printed; Schwede cache = printed + 1; HSS cache = printed; BS cache = printed; Boardman cache = printed; Pst cache = printed; BHS cache = printed; Burklund cache = printed; Araki–Toda cache = printed − 80; Carlsson cache = printed − 2; Hatcher SS cache = printed.

| Target | Source and locator | Found |
| --- | --- | --- |
| 1.28 translation categories | W IV 3.3.1, p. IV.27 (weibelIV line 1191); Ex. 3.2 p. IV.34 (exercises start line 1553, p. 33) | translation category G∫X with Hom(x,x′)={g: gx=x′}, π₀ = X/G; matches the covering statement |
| 2.3 fibre = homotopy fibre | H AT Prop. 4.65, p. 408 (hatcherAT line 17655) | Hurewicz fibration: E ↪ E_p fibre homotopy equivalence; the Serre weak form is the roadmap's stated addition |
| 2.19 proper simplicial spaces | NS paragraph before Prop. C.3, p. 161 (ns line 7579) | proper = latching maps LₙX→Xₙ h-cofibrations; closedness automatic in CGWH (footnote 44, line 7102) |
| 2.29 Thomason comparison | Kahn Thm 1.4.3 p. 6 (kahn line 223), Lemma 1.4.5 p. 7 (line 268); Thomason 1979 uncertified | Kahn's cell formula hᵢ=(fᵢ,F(fᵢ…f₁)gᵢ) gives (f,id) on a degenerate fibre simplex, as the README states |
| 2.32 prefibred | Q §1, LNM p. 93 (quillen line 363); W IV 3.7.3, p. IV.31 (weibelIV line 1406) | prefibred iff f⁻¹(Y)→Y\f has a right adjoint; Mathlib `IsPreFibered` (Fibered.lean:55) asks for `IsCartesian` lifts, the weak notion (Cartesian.lean:60) |
| 3.5 regular cover | H AT Prop. 3H.4, p. 331 (line 14499) | proof identifies Cₙ(X;E) with Cₙ(X̃)⊗_{ℤ[π]}G; the principal-G-cover form follows by C_*(X′)=C_*(X̃)⊗_{ℤ[π]}ℤ[G] |
| 3.12 plus homology iso | H AT Prop. 4.40, p. 374 (line 16243) | inclusion X↪X⁺ iso on all homology; relative complex ℤ^J→ℤ^J identity |
| 4.10 grouplike completion | W IV Lemma 4.4.1, p. IV.39 (line 1842) | grouplike X is its own completion; any other completion is a homotopy equivalence (proof via Thm 1.5, CW) |
| 5.18 deloopings | BS Def. 12.8 and footnote 29, p. 57 (bs line 2648); HSS Thm 4.3.2, p. 42 (hss line 1981) | Sp≥0 = lim of S*≥i under Ω; Quillen equivalence Sp^Σ ↔ Sp^N |
| 7.4 UCT | W IV 2.2, p. IV.19 (line 835), Prop. 2.7 p. IV.21 (line 923); S II Prop. 6.48, p. 287 (schwede line 15250), (6.50) p. 288 (line 15280) | non-split at 2, π₂(S/2)=ℤ/4; 2·Id_{S/2}=jηδ |
| 7.7 Moore transitions | S II Thm 9.9, p. 304 (line 16150); W IV 2.9, p. IV.22 (line 963) | completion as holim of E∧P∞(ℤ/ℓ^ν) with the lim¹ extension |
| 7.18 E/pʳ complete | S II Remark 9.8 p. 303 (line 16144), Thm 9.9 p. 304 | p-completion and completeness criteria |
| 7.22 exact couples | Boardman §0 pp. 2–4 (page markers lines 42, 188) | unrolled exact couples and derived pages |
| 7.26 Boardman | Def. 5.10 p. 19 (line 901), Thm 7.1 p. 20 (line 965), Thm 8.2 p. 24 (line 1154), (8.7) p. 25 (line 1213) | conditional convergence A^∞=RA^∞=0 (to colimit) or A^{−∞}=0 (to limit); §7 is the entering-differentials half plane; W=0 for whole plane |
| 7.31 synthetic/vanishing line | Pst Def 4.1 p. 38 (line 1728) … Prop 4.40 p. 49 (line 2207); BHS Constr. 9.3 p. 32, Thm 9.12 p. 33, Thm 9.19 p. 36 (line 1765), Def 11.2/Prop 11.6 p. 45, Lemma 11.11 p. 47, Def 13.6 p. 54, Lemma 14.21 p. 64 (line 3070 quotes Adams: Ext vanishes for s>½(t−s)+1), Notation 15.3 p. 67 (line 3210: 2̃∈π_{0,1}, τ2̃=ν(2)); Bu Convention (10) p. 3 (line 116), Lemma 3.3 p. 8 (line 313: π_{w,s}(νS/2̃^q)=0 for s>½w+q) | all as stated |

**Adversarial table** (statement; instances; values on each side; result).

| Statement | Instances | Values | Result |
| --- | --- | --- | --- |
| 1.28 covering lift | G=1; G=ℤ/2, X=G; g=(01), h=(12) in Sym(Fin 3), x=2 | discrete X over a point; total space contractible (one arrow between any two objects) vs H₁(BG)=ℤ/2; g·2=2 then h·2=1=(hg)(2), while (gh)(2)=g(1)=0 | sound |
| 1.29/1.32 π₁ and bar conventions | Mathlib `Aut` product f*g=g≫f; `inhomogeneousChains.d_single` (GroupHomology/Basic.lean:132) | d₂[g,h,a]=[h,g⁻¹a]−[gh,a]+[g,a]; T=((0,−1),(1,−1)) of order 3: Te₁−e₁=(−1,1), T⁻¹e₁−e₁=(−2,−1) | matches README Checks |
| 2.3 | p=id; p=*→B; Serre with non-CW fibre | strict fibre = point = contractible hofib; point→B is not a Hurewicz fibration so no conclusion (ΩB ≠ ∅); Serre gives weak only | sound |
| 2.12 two-intervals check | [0,½]⊔[½,1]→[0,1] | hofib has two contractible components (π₀F≅ two points from the LES), fibre over 0 one point | not a quasifibration, as stated |
| 2.19 | constant Y; X₀=*, X₁={0}∪{1/k}, s₀(*)=0 | L₀=∅→Y, Lₙ=Y→Y identity; a retraction r(1/k,t)=(1/k,0), r(0,t)=(0,t) is discontinuous at (0,t), t≠0 | proper / not proper as stated |
| 2.29 | one-object index; constant terminal fibres; [1] with x∈F(0) | both sides B(F(*)); both BC; edge (0,x)→(1,F(0→1)x) with fibre arrow id, Kahn's hᵢ with gᵢ=id | sound |
| 2.30 double complex | fix q: column over a string c₀→…→c_q is the nerve of F(c_q)↓D, initial object (F(c_q),id); fix p: row is N(F↓d₀) with coefficient M(c₀) | total H_*(C;M); E² = H_p(D; d↦H_q(F↓d;M∘proj)); precofibred: i:F⁻¹(d)→F↓d has a left adjoint, so d↓i has an initial object and i is homotopy final | sound |
| 2.32 | (Y,v) in Y\f; `IsFibered` | right adjoint value v*Y with counit v*Y→Y over v = weakly cartesian lift; composition closure not needed | sound |
| 2.34 direction | g:d→d′ | `StructuredArrow.map g : StructuredArrow d′ F ⥤ StructuredArrow d F` (contravariant) = Quillen's Y′\f→Y\f (quillen line 517); `CostructuredArrow.map g` covariant = dual form | sound |
| 3.1 punctured Poincaré sphere | Γ=SL₂(𝔽₅) of order 120 in SU(2) | S³/Γ homology sphere; minus a point: H̃_*=0, π₁=Γ≠1 | sound |
| 3.4 centrality | boundary ∂:π₂(E,F)→π₁F | ∂(g·x)=g∂(x)g⁻¹ and π₁F acts trivially on π₂(E,F)≅π₂B (its image in π₁B is zero) | image central, as stated |
| 3.5 degree zero | H=im(π₁X→G) | H₀(X;ℤ[G])=ℤ[G]⊗_{ℤ[π]}ℤ=ℤ[G/H]; X′ connected iff H=G | sound |
| 3.7 (`iff_homology`) | L=ℤ[π₁Y] | H₀(X;f*L)=ℤ[π₁Y/im π₁f] vs H₀(Y;L)=ℤ, so iso forces surjectivity; forward direction via the pulled-back fibration over Ỹ | sound |
| 3.10 | X=BA₅, P=A₅, 2-cells only | 0→H₂(A₅)=ℤ/2→H₂(X′)→ℤ^J→0 splits, so H₂(X′)=ℤ/2⊕ℤ^J; 3-cells needed | Check correct |
| 3.16 | n=2, trivial π₁A-action | αβα⁻¹=∂(α)·β=β, so π₂(X,A) abelian | sound |
| 3.25 (`lift`) | P=1; X=BA₅, P=A₅, g=id; *→D⁴ | lift = g∘(homotopy inverse); π₁g=id does not kill A₅, hypothesis fails; relative complex ℤ→¹ℤ in degrees 4→3, all Hom-cohomology zero | sound |
| 3.29 (`piTwoEquiv`, `fiber_universalCentralExtension`) | P=A₅; P=1 | π₂(BA₅⁺)=H₂(A₅;ℤ)=ℤ/2; π₁F→A₅ with kernel ℤ/2 is SL₂(𝔽₅)→A₅, the universal central extension (W III Thm 5.4, p. III.37); P=1: π₂Y=π₂X=0=H₂(1), F weakly contractible | sound |
| 3.33 | A→E→P universal | π₁BE⁺=π₂BE⁺=0 (E superperfect), π₁F′=π₂BP⁺=H₂(P)=A | sound |
| 4.3 no natural inverse | objects n, Aut=GLₙ(ℤ), (0,0)→(1,1) then φ=(−1,1) | first naturality forces α=β on (0,0)→(2,2); second forces diag(−1,1)=diag(1,−1) | Check correct |
| 4.6 magma check | {0,1,2}, 1·1=2, 1·2=2·2=0 | (1·1)·2=0, 1·(1·2)=1 | commutative, not associative |
| 4.14 | block(I₁,−1) stabilised; E₂(𝔽₂) | diag(1,−1,1) ≠ diag(1,1,−1), conjugate by the transposition; E₂(𝔽₂)=SL₂(𝔽₂)≅S₃ not perfect | sound |
| 4.15 distributors | r=2, s=t=1; r=s=2 | (i,j)↦i·s+j if j<s else r·s+i·t+(j−s): 0,2,1,3 (middle two swapped); symmetry (i,j)↦(j,i): 1↔2 fixed 0,3 | Checks correct |
| 4.15 complements | nonprincipal invertible ideal I of a Dedekind domain | I⊕Rᵐ≅Rⁿ would force det I≅R | Q need not be free, as stated |
| 4.27 | L of signature (p,q), r=p+q | L⊥(−L)⊥J odd indefinite unimodular of signature (r+1,r+1)=J^{r+1}; E₈: (−E₈)⊥J in J⁹ (rank 18, signature (9,9)) | sound |
| 4.29 (`continuousFunctions_projective_free`) | n=0; Möbius over C(S¹,ℝ); idempotents f,f′ | k-vector spaces free; non-contractible base excluded by hypothesis; u=ff′+(1−f)(1−f′)=1+(2f−1)(f′−f), invertible when ‖2f−1‖‖f−f′‖<1 | sound; Lean hypotheses (RCLike 𝕜, Module.Finite, Module.Projective) equal the README's |
| 4.30 | ko, ku | π₁ko=ℤ/2, π₄ko=ℤ, π₂ku=ℤ, π₋₂KU=ℤ, π₋₈KO=ℤ | sound |
| 5.17 counterexample class | X with [X,Σⁿ⁺¹Hℤ]=0 | contains Sⁿ (H̃ⁿ⁺¹(Sⁿ)=0), closed under middle terms, misses Sⁿ⁺¹ ([Sⁿ⁺¹,Σⁿ⁺¹Hℤ]=ℤ); cofibre of 0:Sⁿ→Sⁿ is Sⁿ∨Sⁿ⁺¹ | closure under cofibres is the right hypothesis |
| 5.15/5.16 | C=(ℤ→²ℤ) in degrees 1,0; ℤ in cochain degree 2 | π₀H(C)=ℤ/2≠ℤ; π₋₂=ℤ, after [1] (Mathlib (K⟦1⟧).X n = K.X (n+1)) π₋₁ | sound |
| 6.1 latching check | (0⊂0⊂k)→(0⊂k⊂k) over a field | B₀₁⊔_{A₀₁}A₀₂=k⊕k→B₀₂=k is the fold | not a cofibration, as stated |
| 6.2 relative S | (b,x)∈Sₙ(F) | (x/x₀₁)₀ⱼ=x₁ⱼ=(d₀x)₀,ⱼ₋₁=F(b)₀,ⱼ₋₁ for j≥2, zero at j=1, so the quotient is s(b)=(b,F̃(b)) | sound |
| 6.3 | k↣k²↠k over 𝔽_q | Borel subgroup of order (q−1)²q vs (q−1)² | Check correct |
| 7.1 lifts | m, m′ | indeterminacy Ext(ℤ/m, π₁(S/m′)) = Ext(ℤ/m, ℤ/gcd(2,m′)) = ℤ/gcd(2,m,m′) | sound |
| 7.2 degree | Pᵈ=Sᵈ⁻¹∪ₘeᵈ | [Σⁿ⁺ʳ⁻¹S/m, ΣʳE]=[Σⁿ⁻¹S/m,E]=π₀(Σ⁻¹S/m∧Σ¹⁻ⁿE)=πₙ(E/m), using D(S/m)=Σ⁻¹S/m | no extra +1, as stated |
| 7.4 | E=S, n=2; E=ΣH(ℤ/2), n=2 | 0→ℤ/2→π₂(S/2)=ℤ/4→ℤ/2→0; quotient term π₂E/2=0, torsion π₁E[2]=ℤ/2 | sound |
| 7.6 | q₁=2, q₂=3 | first inclusion ×3, second ×2 on π₀=ℤ/6 | sound |
| 7.7 | squares (id,p) and (p,id); p=2, r=1 | ι: ℤ/pʳ→ℤ/pʳ⁺¹ is ×p, ρ reduction; δᵣ₊₁ιᵣ=Σ(id)δᵣ, δᵣρᵣ=Σ(p)δᵣ₊₁; ι(1)=2 mod 4, ρ(1)=1 mod 2; lift indeterminacy Ext(ℤ/2,π₁(S/4))=ℤ/2 | sound |
| 7.10 | p=3, levelwise ×2 | 2·(1/2)=1∈ℤ, class killed; 1/2∈ℤ₃ nonintegral | sound |
| 7.12 | A with bounded p-torsion | 0→lim¹A[pʳ]→Ext(ℤ/p∞,A)→lim A/pʳ→0, the ×p tower on A[pʳ] pro-zero | sound |
| 7.12 UCT | A=ℤ/2, X=S/2 | Ext(ℤ/2,π₁(S/2))=Ext(ℤ/2,ℤ/2)=ℤ/2≠0 | sound |
| 7.18 | S/2; Hℚ | π₂(S/2)=ℤ/4 not killed by 2, killed by 4; Hℚ/pʳ=0 complete while Hℚ is not | sound |
| 7.19 | V₋₂=ℚ only | Σ⁻²Hℚ with π₋₂=ℚ; [A,ΣⁿHVₙ]=Hom(Hₙ(A;ℚ),Vₙ)=Hom(πₙA⊗ℚ,Vₙ) | sound |
| 7.20 | difference map | (2,1)↦1, (1,2)↦−1; F(∨ₚS/p∞,ΣE)=∏ₚF(S/p∞,ΣE)=∏ₚE^∧_p | sound |
| 7.21 | Whitehead filtration X_s=τ≥₋ₛX | gr_s=Σ⁻ˢH(π₋ₛX); constant filtration exhaustive, not complete unless X=0 | sound |
| 7.22 | D=E=ℤ², i(x,y)=(x,0), j(x,y)=(y,0), k(x,y)=(0,y) | ji=kj=ik=0; ker j={(x,0)}=im i, ker k={(x,0)}=im j, ker i={(0,y)}=im k; i²=i≠0; (jk)(0,1)=(1,0), (jk)²=0 | exact couple with i²≠0, as stated |
| 7.25 | (s,t)=(0,2) | d₁ to (1,2): total degree 2→1; (t+r−1)−(s+r)=t−s−1 | sound |
| 7.26 | D=ℤ, i=id, E=0 | pages 0, RE∞=W=0, A⁺=lim=ℤ, RA⁺=0, A⁻=colim=ℤ: neither A⁺=0 nor A⁻=0 | no convergence, as stated |
| 7.31 | S/2 stems 0,1,2,3 | k=0: F₂ at s=0 ≤ 1; k=1: η at s=1 ≤ 1.5; k=2: h₁² on the bottom cell at s=2=2/2+1 (on the line); k=3: ν at s=1, η² on the top cell at s=2 ≤ 2.5; 2̃ˢ≠0 since τˢ2̃ˢ=ν(2ˢ) | sound |
| 7.33 correction of W IV Scholium 2.8.1 | E=τ≤₁S | π₁(E/2)=ℤ/2 generated by i(η); 2·id_{E/2}=i(η·1)j (Schwede (6.50) smashed with E); j_S^*: π₁(E/2)→[S/2,E/2] has kernel 2π₁(E/2)=0, so 2·id_{E/2}≠0 and no left-unital product exists although πₘE=0 for even m>0 | the README's extra hypothesis η·1=0 is necessary |
| 7.33 | q=3 | α₁=±8ν, 9ν∈3π₃S, so ν·1∈3π₃E ⇔ α₁·1∈3π₃E | sound |
| 7.33 | E=τ≤₃S_(3) | π₃(E/3)=π₃E/3=ℤ/3 generated by i(α₁·1); associator of S/3 is i∘α₁ on the top cell | Check correct |
| 7.34 | Bu Thm 1.2 (line 31); Cor 5.6 and Remark 5.7 (lines 481–488) | S/2^q Eₙ for q≥3(n+1)/2, S/p^q for q≥n+1; v=4 route gives S/2^{2(n+1)} | sound |
| `quillenTheoremA` (Lean) | F:{0}→[1]; F: discrete Fin 2→point | F↓0={(0,id)}, F↓1={(0,0→1)} contractible, BF: point→interval equivalence; F↓*: two discrete objects, not contractible, BF not an equivalence | sound |
| `quillenTheoremB_structuredArrow` | F:{0}→(0<1) | 1↓F=∅, base change B(1↓F)=∅→B(0↓F)=pt not an equivalence: hypothesis fails, matching Check `commaToHomotopyFiber_not_equiv` | sound |
| `quillenTheoremB` | SingleObj G→SingleObj Q onto, kernel N | CostructuredArrow F * has one component with automorphism group N, so B(F↓*)≃BN≃hofib | sound (§2.36) |
| `plus_exists` | P=⊥; X=BA₅, P=A₅ | no cells, inclusion identity; X⁺ simply connected, H₂(X⁺)=H₂(A₅)=ℤ/2 | sound |
| Definitions | `IsAcyclicSpace`, `IsAcyclicMap`, `IsPlusConstruction`, `HasCWType`, `IsUniversalCentralExtension`, `MappingPathFiber`, `IsWeakHomotopyEquivalence` | empty space excluded by `PathConnectedSpace` (Mathlib requires `Nonempty`); the wrong model "homology iso with constant coefficients" is excluded by the fibrewise condition (Check 3.3: *→punctured Poincaré sphere); `MappingPathFiber` paths run from f(x) to y as Conventions line 31; UCE = surjective, central kernel, unique lift to every central extension (W III Def 5.3.1, p. III.37) | real bodies on native carriers |

**Signatures.** I compared the elaborated type of each of the 19 declarations (`signatures.md`, from `#check @name`) with its README statement: the three "looks dropped" flags are false positives (the `Category` instances are present under renamed universes). `IsAcyclicMap.iff_homology` quantifies over every unital ring `R : Type (max u w)` and every `LocalCoefficientSystem R Y`, as §3.7 says; `plus_exists` carries `Topology.CWComplex`, `T2Space`, `PathConnectedSpace`, `P.Normal`, `Group.IsPerfect P` (§§3.10–3.13); `lift` carries CW type and path-connectedness for X, Y, Z (§3.25); `piTwoEquiv` and `fiber_universalCentralExtension` carry `IsAspherical X x` (§3.29); `continuousFunctions_projective_free` is stated for `RCLike 𝕜` (ℝ and ℂ, §4.29). The Lean imports are `import Mathlib` plus three `TauCeti.*` modules that exist at the pin. No `set_option`, no sorry'd data, no `lemma`.

**One-tactic probe.** A scratch copy with every `sorry` replaced by `first | rfl | simp | infer_instance | trivial | exact ⟨_, rfl⟩ | sorry` elaborated with eight `unsolved goals` errors (simp made partial progress) and one fall-through to `sorry`: no sorried theorem closes in one tactic. No declaration restates a definition, mirrors a Check or computes a value.

**Library declarations opened at the pins.** Tau Ceti: `IsAspherical` (EilenbergMacLane/Basic.lean:59), `twistedHomologyMap` (Singular/Twisted/Basic.lean:600), `LocalCoefficientSystem` (LocalCoefficient.lean:43), `FundamentalGroup.map` (HomotopyGroup/Map.lean:36), `SplitK0.grothendieckAddGroupEquiv` (GrothendieckGroup/Split.lean:60), `TateModule` (Torsion/TateModule.lean:73), `BilinForm.isometryGroup` (OrthogonalGroup/Basic.lean:75), `HasHomotopyExtensionProperty` (Extension/CWComplex.lean:18), `homotopyGroupEquivOfPath`, `loopSpaceMulEquiv`, `zerothHomotopyLoopSpaceEquivFundamentalGroup`, `IsCoveringMap.isAspherical`, `IsQuotientCoveringMap.isEilenbergMacLaneSpaceOne`, `CoveringSpace` (Covering/Category.lean:111). Mathlib: `IsPreFibered`/`IsFibered` (FiberedCategory/Fibered.lean:55, 65), `IsCartesian`/`IsStronglyCartesian` (Cartesian.lean:60, 76), `SSet.skeleton` (Skeleton.lean:48; skeleton n+1 = simplices of dimension ≤ n, as §1.3 says), `inhomogeneousChains.d_single` (GroupHomology/Basic.lean:132), `Group.IsPerfect` (IsPerfect.lean:41), `SimplexCategory.toTop₀` (TopologicalSimplex.lean:33), `Module.Finite.exists_comp_eq_id_of_projective`, `ContinuousMap.unitsLift`, `AdicCompletion.ofTensorProductEquivOfFiniteNoetherian` (AsTensorProduct.lean:327), `MonoidalLeftAction` (Action/Basic.lean:49), `Skeleton.instMonoid/monoidHom/mulEquiv` (Skeleton.lean:20, 100, 115), `Algebra.GrothendieckGroup`, `HomotopicalAlgebra.ModelCategory`, `CategoryTheory.Abelian.SpectralObject` (Algebra/Homology/SpectralObject/Basic.lean:41), `ActionCategory.endMulEquivSubgroup` and `ActionCategory.π` (Action.lean:146, 56), `TopCat.diskBoundaryInclusion`, `SSet.relativeCellComplex`, `SSet.opFunctor`, `IsTopologicalGroup.toHSpace`, `PadicInt.lift_unique`, `FreeGroupoid`, `Grothendieck`, `SimplicialObject.diagonal`, `CompactlyGenerated.of`, `compactlyGeneratedToTop`, `ConnectedComponents`, `SSet.chainComplex`, `groupHomology`. All exist; `SSet.toTopCWComplex` is correctly declared in the README as this roadmap's alias, not a library name.

**Cross-roadmap citations resolved.** GeneralizedCohomology G2 items 1–10, G3 items 4 and 7–10, G5 items 4–6 (main); DGFloer Layer 1 items 1–4 with `arbitraryCWSerreSpectralSequence`, `arbitraryBaseSerreSpectralSequence`, CW approximation, fibration exact sequence and K(A,n) (main, lines 442–816); AlgebraicTopology names `simplicialRealizationCW`, `standardCellBallToOrderedSimplex`, `groupClassifyingSpace_isEMOne`, `mapsToGroupClassifyingSpaceEquiv`, `ordinaryEMRepresentability`, `ordinaryEMRelativeRepresentability`, `ordinaryEMUniversalClass` and item 8.8b (main); ClassifyingSpaces items 5–6 (Stage 1), 11–15 (Stage 3), 16–19 (Stage 4) (main); GrothendieckEulerForms Layer 2 (main line 238); IntegralLattices 0A (line 2085), 0E (552), 2C (785), 6A (1643); OrthogonalSpinGroups 0C (Completed, line 368); BordismFormalGroups F6.2 (little cubes, lines 735–738) and F6.5 (Sp∞, operadic nerve, symmetric coherence, Day tensor, Ind, Kan extensions, fracture square, lines 1526–2569); DerivedModuleAlgebra §1.T.1 with `ModuleTower.shift/lim/limOne`, `Tower.toModuleFunctor/limComparison/limOneComparison`, `limOne_mul_p`, `mulTower`, `CompactCoefficients.Tower` (main line 1403 ff.); UniversalCovers Stages 2–4 (Completed); AlgebraicKTheory A0, A1, A5 (Steinberg) at its open head; TangentialBordism B4.1, B4.2 at its open head. Merge order: AlgebraicKTheory 11, TangentialBordism 9, EllipticCohomology 5, this roadmap 12, GeneralAlgebraicKTheory 13, so every supplier is earlier. The citation resolver's eight "cross-roadmap citations found nowhere" are parses of bare "AlgebraicTopology, §k.n" lists (R06), not missing sections.

**Ownership against open work.** GeneralAlgebraicKTheory at its open head (§§1.4–1.6, Scope) imports this roadmap's Quillen A/B, plus construction and `SInvS` by name, as the Downstream consumers table requires; HomotopyTheoryOfCategories (open, not yet in the merge order) consumes §2.31 and the classifying-space targets; AlgebraicTopologyPartII (open, position 210) is about configuration spaces and lists this roadmap as a supplier; StableHomotopyKTheoryPartII (position 309), RefinedTraceMethods (306) and ChromaticHomotopyTheory (312) are later consumers. The only prior owner found by object is EllipticCohomology E4.A for the synthetic machinery (R01). The board's packages index (five packages, all number theory) contains nothing on these objects.

**Secondary locators opened.** Weibel IV Thm 1.5 p. IV.5, Lemma 1.6 p. IV.5, Prop 1.7 p. IV.6, Thm 1.8 p. IV.6, Lemma 3.4 p. IV.27, Thm 3.6.1 p. IV.29, Def 4.2 p. IV.37, Thm 4.8 p. IV.41, Thm 4.9 p. IV.42, Thm 4.10 pp. IV.43–44, Cofinality Thm 4.11 p. IV.44, Prop 8.4 and Def 8.5 p. IV.68, Thm 2.8 and Scholium 2.8.1 p. IV.21; Weibel III Def 5.3.1 and Recognition Thm 5.4 p. III.37; Weibel V Prop 1.7 p. V.8; Hatcher SS Thms 1.7–1.8 p. 14, Lemmas 1.9–1.10 p. 15, Prop 1.12 p. 20, Thm 1.24 p. 38; Hatcher AT Lemma 4.70 p. 413; Schwede Prop 5.22 p. 264, Thm 8.3 p. 296; Carlsson Examples 4–5 p. 8, Def 7 p. 9; Shipley Thm 2.5 p. 5, Prop 2.10 p. 7, Cor 2.15 p. 8; Schlichting Lemma 10.1 and Prop 10.2 p. 90; HK III Lemma 3.2.11 pp. 59–60; May Cor 2.3 p. 94, Cor 2.4, Lemma 2.5, Thm 2.6 p. 95; BF (B.3.1) p. 120; Waldhausen §1.5 p. 342; Lurie HA Def 1.2.2.9 and Prop 1.2.2.14 p. 52, Def 5.1.0.1 p. 758, Lemma 5.1.1.3 p. 761; Araki–Toda Thm 7.6, Cor 7.7, Cor 7.8 p. 88, Thm 9.9 and Cor 9.10 p. 104, Thm 10.6 p. 107; Jardine Lemmas 14.1 p. 1 and 14.3 p. 5; Pst Lemma 4.24 p. 43 (supports "ν symmetric monoidal for HF₂").

**Declared gaps.** None declared and none needed: every prerequisite resolves to a pinned declaration, a section on main, or a section at the open heads of AlgebraicKTheory and TangentialBordism, both earlier in the merge order.

## Not verifiable

- Thomason 1979, Math. Proc. Cambridge Philos. Soc. 85, Thm 1.2 (§2.29): paywalled; the service found no legal copy. Cited by its locator as uncertified; the statement was checked through Kahn's restatement (Thm 1.4.3, p. 6).
- Randal-Williams, *Group-completion, local coefficient systems and perfection* (§§4.17–4.18): the author-page fetch failed twice with a certificate error on the host (network, not licence). Listed in `needs-references.toml`.
- Adams 1966, *A periodicity theorem in homological algebra*, Thm 2.1 (§7.31): paywalled journal; its vanishing line for S/2 was checked as quoted in BHS p. 64.
- Barratt–Eccles 1974 (Topology 13), Waldhausen 1978 (Ann. of Math. 108, Lemma 5.2), May 1974 (*E∞ spaces, group completions, and permutative categories*, §4): paywalled or not fetched; cited by locator only (§§2.24, 4.23, 6.3).
- Browder's original paper behind Weibel's Scholium 2.8.1 was not read; the roadmap's corrected hypothesis was verified independently (adversarial table, 7.33).

## Source issues

- **Error** in W IV at Scholium 2.8.1, printed p. IV.21: the source says that E∧P∞(ℤ/ℓ^ν) is a homotopy associative and commutative ring spectrum for ℓ^ν ∈ {2,3,4,8} whenever πₘE vanishes for even m>0 and m<0; it should also require η·1=0 in π₁E (E=τ≤₁S satisfies the degree hypothesis, yet 2·id_{E/2}=i(η·1)j≠0 so E/2 has no unital product), with the modulus-3 and modulus-4 associativity hypotheses the roadmap states; affects a stated result.
- **Misprint** in W IV at Prop. 2.7, printed p. IV.21: the source says πₘ(X;ℤ/ℓ) is isomorphic to πₘ(X;ℤ/q₁)×πₘ(X;ℤ/q₁); it should be πₘ(X;ℤ/q₁)×πₘ(X;ℤ/q₂); affects nothing.
- **Misprint** in NS at the paragraph before Prop. C.3, printed p. 161: the source says the n-th latching object is the union of the degeneracy images inside Xₙ₋₁; it should be inside Xₙ; affects nothing.
- **Misprint** in NS at Def. C.4, printed p. 162: the source says the Bousfield–Kan homotopy colimit realises the simplicial space with X(iₙ) over a string i₀→⋯→iₙ, for which a covariant X has no face maps; it should be X(i₀) (or reversed strings); affects nothing.
