# Design report: BallQuotientsAndComplexHyperbolicLattices

The design is `packages/BallQuotientsAndComplexHyperbolicLattices/design/README.md` (898 lines), the matching `design/plan.json` (12 layers, 57 targets, 2 gaps) and `packages/BallQuotientsAndComplexHyperbolicLattices/sources.toml` (15 sources, `sources check`: 0 problems). No targets were merged into this one.

## What the design covers

All ten final targets of the triaged brief are planned:

| Final target | Where |
| --- | --- |
| T1 ball and PU(1,n) | §§1.1–1.6, 2.1 |
| T2 invariant Kähler form | §§2.2–2.4 |
| T3 totally geodesic complex submanifolds | §§3.1–3.4 |
| T4 lattices, finite generation, Selberg | §§5.1–5.3, 6.2–6.4 |
| T5 analytic quotient | §§7.1–7.4 |
| T6 algebraicity | Layer 8, §§9.1–9.6 |
| T7 uniqueness, S_Γ, π | §§10.1–10.6 |
| T8 arithmetic lattices | §§11.1–11.5 |
| T9 totally geodesic subvarieties | §§12.1–12.3 |
| T10 algebraic subvarieties of 𝔹ⁿ × S_Γ | §12.4 |

Every definition (1.1, 1.2, 1.3, 1.5, 2.2, 3.1, 5.1, 6.4, 7.1, 8.1, 8.2, 9.4, 11.1, 11.3, 12.1) has an API list and at least three Checks; every target has a locator; every theorem has its hypotheses and a proof route whose inputs are pinned declarations, supplier sections, earlier targets or one of the two recorded gaps.

## Route decisions (the risks named in the brief)

1. **Algebraicity for non-arithmetic Γ (risk 1).** Planned in full, by Mok's route, for every neat lattice and every n ≥ 1 (Mok2012 §2.2 states it for n ≥ 1; the cocompact case is D = ∅). The inputs are the cusp structure (Layer 6), the toroidal compactification with its metric asymptotics (Layer 8, Mok2012 Theorem 1 and Proposition 1), and the weighted L² estimate, which ComplexComparisonPartII §C1.4 supplies for smooth weights; the singular weights are handled here by approximation and Montel (§9.1). Grauert's contraction criterion is not needed: S*_Γ is defined as the normalization of the image of Mok's map Φ_ℓ (§9.4). Lattices with torsion are treated by the finite quotient (§9.5). The arithmetic case is not routed through ShimuraVarieties; Layer 11 compares the two constructions instead.
2. **Uniqueness for non-arithmetic Γ (risk 2).** Deng's Hodge-theoretic route is not used. The extension theorem (§10.2) follows Kiernan1972 Theorems 1–2, whose proofs use only (i) holomorphic maps from discs and punctured discs are distance-decreasing and (ii) hyperbolic embedding; both are proved here for the Riemannian distance of ω_Γ, from the Schwarz–Pick contraction between balls (§2.5, a consequence of Mathlib's one-variable Schwarz lemma) and the horoball geometry of §4.2. No Kobayashi pseudo-distance theory and no Ahlfors–Schwarz lemma is needed. Borel algebraicity (§10.3) then follows as in MilneSVI line 1764 to line 1769.
3. **Full automorphism group (risk 3).** Cartan's uniqueness theorem is planned in §2.1 from Tau Ceti's polydisc Cauchy integral (`DifferentiableOn.analyticOnNhd_of_finiteDimensional`).
4. **Finite generation of non-cocompact lattices (risk 4).** Planned through the cusp structure theorem §6.1 for arbitrary lattices (with torsion), proved from the Margulis lemma (§4.4) and the structure of discrete parabolic groups (§4.5), then WitteMorris2015 Propositions 4.7.4/4.7.7. Torsion-free subgroups cannot be used here, because Selberg's lemma needs finite generation; the order 4.4 → 6.1 → 6.2 → 6.3 avoids the circularity.
5. **Paywalled foundations (risk 5).** Raghunathan1972 (Zassenhaus, Auslander, Garland–Raghunathan), Goldman1999, Cartan1957, SiuYau1982, BailyBorel1966, Borel1972 and Alperin1987 are cited by locator as uncertified; each statement that cites one also cites a certified text (Mok2012, BaldiUllmo2023 Theorem 3.4.3, WitteMorris2015, MilneSVI, Kiernan1972) or is proved here from library material.
6. **Supplier maturity (risk 6).** Every supplier is on main or earlier in the merge order; sections were read at the heads the tool prints and cited by section, never by pull-request number.
7. **Totally geodesic subvarieties are algebraic (risk 7).** Not through o-minimality: Γ-special subvarieties are algebraic by Borel algebraicity applied to S_{Γ_H} → S_Γ (§12.2), and the converse uses a finite-volume lemma for analytic subvarieties under a Poincaré-growth metric (§8.5), proved here from the finite branched projections of ComplexKahlerGeometry K3.

## Deliberate scoping

- **T7 for lattices with torsion.** The brief asks for uniqueness of the quasi-projective model for every lattice. The sources prove it only for torsion-free lattices: MilneSVI Corollary 3.16 (line 1770) and ShimuraVarieties §3.3 work at neat level, and BaldiUllmo2023 Theorem 3.1.12 (line 455 to line 465) passes to a torsion-free subgroup, which gives uniqueness of S_{Γ′}, not of S_Γ. With torsion the extension and Borel-algebraicity arguments fail (PSL(2,ℤ)\ℍ ≅ ℂ; exp: 𝔸¹ → Y(1) is not algebraic), and the general statement would require every analytic automorphism of the underlying complex space X_Γ to be algebraic, which the sources do not prove. §10.4 therefore states (a) unconditional uniqueness for torsion-free Γ and (b) uniqueness for arbitrary Γ among models compatible with a torsion-free finite cover; §10.5 adds uniqueness of the finite-point normal compactification for every lattice. This is the generality the sources support; a stronger statement is listed below as a Part II question.
- **T1 statement of the action.** The bounded model is the primary carrier; the projective description is a bijection onto positive lines in Mathlib's `Projectivization`, and the Borel embedding is the affine chart of ℙⁿ (scheme analytification), so no complex structure on `Projectivization` is needed.
- **Arithmetic comparison (T8).** ShimuraVarieties §2.7 constructs Baily–Borel compactifications of finite-level (congruence) components; §11.4 compares S*_Γ with them for component groups and relates any other arithmetic Γ through S*_{Γ∩Γ_c} (§10.6), rather than asserting a Baily–Borel compactification for non-congruence groups that no supplier constructs.
- **Consumers.** The brief lists ComplexKahlerGeometry, PELModuli and ShimuraVarieties as consumers; all three are suppliers of this roadmap, so listing them would create a cycle. "Downstream consumers" names instead a later ComplexKahlerGeometry part on hyperbolicity and a roadmap after ShimuraVarieties (ShimuraVarietiesPartII, later in the merge order), besides the Baldi–Ullmo consumer and ShimuraCompactifications.
- **ArithmeticLocallySymmetricSpaces §ALS.0.5** (named in the brief) is not a supplier: it treats G(F_∞)/A_∞ for reductive groups over number fields, a near miss for a non-arithmetic lattice in PU(1,n). §5.2 proves the proper action from Mathlib and compactness of K.

## Evidence and ownership audit

Read on main: `TauCetiRoadmap/FuchsianOrbifolds/README.md` (Layers 0–6), `TauCetiRoadmap/RiemannianGeometry/README.md` (conventions, R4, R5a), `TauCetiRoadmap/ComplexKahlerGeometry/README.md` (conventions, K3, K4, K6.0), `TauCetiRoadmap/ComplexManifolds/README.md` (Milestones 4–7), `TauCetiRoadmap/SchemeAndStackFoundations/README.md` (§1.17), `TauCetiRoadmap/EtaleMassFormula/README.md` (shape). Read with `roadmaps show` at the printed heads: ShimuraVarieties (#933: §§P.1–P.6, Layers 0–3), ComplexComparisonPartII (#848: §§C−1.1–C−1.2, C0.6, C1.3–C1.4, C4.1–C4.4), ArithmeticLocallySymmetricSpaces (#871: §§ALS.0.4–0.5), AdelicAlgebraicGroups (#792: §3.4), VonNeumannAlgebras (#889: Layer 9), PELModuli (#966: §M5.5), ShimuraData (#1038: Layer 3 headings, §3.8), AlgebraicModuliForArithmeticGeometry (#853: §§5.4, 9.5), KleinianGroups (#432, a model only, not a supplier). Format was matched against accepted board designs (K3SurfacesAndSymplecticBoundedness, BorelRegulators, ArithmeticLocallySymmetricSpacesPartII).

Ownership was searched with `roadmaps grep` (main and every open roadmap pull request at its head) by object: PU(1,n)/U(1,n)/SU(n,1) in all spellings, complex hyperbolic, Bergman metric, Kobayashi metric and hyperbolic embedding, Kodaira embedding, Grauert, Moishezon, Ahlfors and Schwarz–Pick, Margulis lemma and thick–thin, Zassenhaus, Bieberbach and Auslander, Heisenberg group, Garland, Selberg's lemma and residual finiteness, Hörmander and L² estimates, Cartan's linearity theorem and circular domains, Cayley transform, Siegel domain, lattices in locally compact groups and covolume. Findings: PU(1,n), the complex ball and its lattices appear in no roadmap; the lattice notion is VonNeumannAlgebras Layer 9 (imported); the weighted L² estimate is ComplexComparisonPartII §C1.4 (imported); disc Schwarz–Pick is Completed/ConformalMapping Layer 2 (imported); the Margulis lemma and thick–thin decomposition appear only for real hyperbolic space in GeometricTopology at the head of #903, a pull request revising an existing roadmap and therefore not a supplier; Kodaira embedding appears in GeometricQuantization and ComplexKahlerGeometry only as a non-input. The board package index lists three packages (AnalyticNumberTheory, LawrenceVenkateshMethod, LogicAndDefinabilityInNumberTheory), none related.

**Notions moved down from later roadmaps:** none. The Zassenhaus–Margulis lemma, the cusp structure of rank-one lattices, Selberg's lemma in eigenvalue form, Cartan's linearity theorem and the Schwarz–Pick contraction between balls are owned here because no roadmap on main or earlier in the merge order plans them; none is planned by a later roadmap.

**Library claims checked at the pins** (mathlib f6090c7095e1e56b3464c1daba5f24631f1290d2, Tau Ceti 358314d4ab97483df4fc4cb8adcc02e74a8d9f5a): every backticked Mathlib and Tau Ceti name in the README was located by file and line (listed in the supplier contracts). Mathlib has `Matrix.indefiniteDiagonal` but no indefinite unitary group; no Brouwer fixed-point theorem (so §4.1 uses an eigenvector argument instead); no Selberg lemma; no several-variable Schwarz lemma; Tau Ceti has completeness of homogeneous Riemannian manifolds, compactness of U(n), the three-dimensional Heisenberg group and the polydisc Cauchy integral.

## Gaps

Both are requests to ComplexComparisonPartII, recorded in the README under "Exact supplier contracts" with three Checks each:

- `gap:normality-analytification` (§C−1.2): X normal ⇔ X^an normal, X smooth ⇔ X^an a manifold, and analytification commutes with normalization. Needed by §§9.4, 9.5, 10.4.
- `gap:normal-riemann-extension` (§C0.6): continuous functions holomorphic off a nowhere-dense analytic subset of a normal complex space are holomorphic. Needed by §§9.4, 9.5, 10.5. ComplexKahlerGeometry K3 proves only the manifold case and says so.

## Proposed Part IIs

- **BallQuotientsAndComplexHyperbolicLatticesPartII**, starting where this roadmap stops: uniqueness of the algebraic structure of S_Γ among all quasi-projective models when Γ has torsion (whether every analytic automorphism of the complex space X_Γ is algebraic), real totally geodesic submanifolds and their closures, the Hodge-theoretic embedding of S_Γ into a period domain through the conjugation representation, and Siu–Yau's compactification of general complete Kähler manifolds of finite volume with pinched negative curvature.
- The Baldi–Ullmo finiteness and Ax–Schanuel theorems are the consumer roadmap named in "Downstream consumers", not a Part II.

## Sources

Read (certified): BaldiUllmo2023, Mok2012, WitteMorris2015, MilneSVI, Deng2020, Mostow1980, DeligneMostow1986, and **Kiernan1972**, newly fetched through the sources service from the AMS publisher-open archive (`--licence-class` not needed: classified publisher-open) and added to the manifest with authors, title, year, DOI, locator and cited_for. Every locator in the README was checked against these texts (line numbers of the cached extractions).

Cited by locator, uncertified and settled: Borel1972, Raghunathan1972, Alperin1987, BailyBorel1966, SiuYau1982, Cartan1957, Goldman1999. Raghunathan1972's locator was extended to Ch. VIII and Ch. XIII and every entry's `cited_for` was updated to the sections citing it.

A fetch of Bowditch, *Geometrical finiteness with variable negative curvature* (Duke 1995) found no legal copy; the design does not cite it, and the request file was removed, so `needs-references.toml` is absent: nothing blocks the design on an unread text.

## Ownership against open pull requests

Checked with `roadmaps grep` and `roadmaps show`, which read every open roadmap pull request at its head (index of 2026-11-05). `roadmaps resolve` on the final README reports no cross-roadmap citation and no Lean name found nowhere.

## Suspicious content

None. No fetched text, roadmap or pull request contained instructions.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: form, action, metric | h_t ∈ U(1,1); transposed action | h_t·0 = −i tanh t vs +i tanh t transposed; d(0,−i tanh t) = √2|t|; ω₀ = iΣdw∧dw̄ | consistent | first Check rewritten from a symmetric matrix (which cannot distinguish conventions) to h_t |
| Conventions: Heisenberg law | n = 2, a = 1, a′ = i | (1,0)(i,0) = (1+i,−2) both from the law and from n_{(a,t)} on (u,v); commutator T_{−4} | law fixed with −2Im⟨a,a′⟩ | sign pinned in Conventions and §1.5 |
| 1.1 U(1,n) | swap S; 2·1; diag(1,−1); diag(λ,μ) | SᴴJS = −J; (2·1)ᴴJ(2·1) = 4J; det diag(1,−1) = −1 | definition excludes S, 2·1 | Check with [[cosh,sinh],[sinh,−cosh]] removed: its gᴴJg has off-diagonal 2cosh·sinh ≠ 0; replaced by diag(1,−1) |
| 1.2 PU(1,n), Ad, unimodular | n = 1, 2 kernels; Ad of diag(1,e^{iθ},1) | kernels {±1}, μ₃; Ad eigenvalues 1×5, e^{±iθ}×2 (9 total); Weyl element diag(1,−1,1) conjugates h_t to h_{−t} | holds | Cartan decomposition added to justify unimodularity required by VonNeumannAlgebras Layer 9 |
| 1.3 models, Cayley | n = 1; w = (0,1/2); w = (0,2) | C(0)=i, C(−1)=0, C(1)=∞; ρ(0,3i) = 3 = (3/4)/(1/4); ρ(0,−3i) = −3 | holds | inverse formula computed: (2iu/(v+i),(v−i)/(v+i)) |
| 1.4 action, K, G/K | g_w at w = 1/2 (n = 1) and complex w | g_w = [[γ,γw̄],[γw,γ]] has column norms 1, −1, cross term 0; g_w·0 = w | holds | section made explicit to avoid an open-mapping theorem |
| 1.5 Heisenberg, P_∞ | n = 2 iso with TauCeti.HeisenbergGroup; a_{1/2}T_1a_{1/2}⁻¹ | (p+iq,t) ↦ (p,q,−t/4+pq/2) multiplicative (cocycle difference 0); conjugate = T_{1/4} | holds | — |
| 1.6 n = 1 | modular surface | ω-area π/6 vs hyperbolic π/3 | holds | factor 1/2 recorded |
| 2.1 Cartan | w ↦ w/2; z ↦ z+z² on ℂ | Df(0) = 1/2; unbounded domain counterexample | hypotheses both needed | — |
| 2.2 ω | det h; transformation law at h_t, w = 0; volume | det = (1−|w|²)^{−(n+1)}; 1−tanh² = 1/cosh²; ω^n/n! = 2^n det h dLeb; n = 1 density 2/(1−|w|²)² | holds | — |
| 2.3 uniqueness, Ricci | n = 1 curvature; 2ω | K = −2, Ric = −2ω = −(n+1)ω; −2log(1−|w|²) gives 2ω | c not fixed by invariance | — |
| 2.4 distance | d(0,tanh t e₁); geodesic tanh(s/√2)v | √2|t|; cosh² t on right side | holds | — |
| 2.5 Schwarz–Pick between balls | (ζ,0), (ζ,ζ)/√2, (ζ/2,ζ/2), 2ζ | |Df(0)| = 1, 1, 1/√2; 2ζ leaves the ball | holds | — |
| 3.1 sub-balls | m = 0; {w₁ = 1/2} (n = 2); negative/degenerate W | point; form (3/4)|z₀|² − |z₂|², signature (1,1); empty intersection | holds; affine slices are sub-balls | Check corrected: an affine slice not through 0 is a sub-ball, not a non-example |
| 3.2 totally geodesic ⊂ sub-ball | complex line; {w₂ = w₁²}; real plane | tangent to {w₂ = 0} at 0 but not contained; real plane totally geodesic, not complex | complex hypothesis needed | — |
| 3.3 classification | n = 1; union of two sub-balls | only B; reducible | irreducibility needed | — |
| 3.4 fixed sets | diag(1,e^{iθ},1); diag(1,ζ,ζ); diag(1,1,−1) | fix {w₁=0}; {0}; {w₂=0} | one eigenspace of signature (1,·) | — |
| 4.1 trichotomy | a_s; T_t; screw m·T_t | ℓ(a_s) = √2|log s|; displacement √2 arcsinh(|t|/2ρ) → 0; screw parabolic not unipotent | holds | Brouwer (absent at the pins) replaced by an eigenvector argument |
| 4.2 horoball estimates | T_t at ρ = |t|/2; n_{(a,0)}; horosphere distance | √2 arcsinh 1; order |a|/√y; (1/√2)log(N₂/N₁) | holds | — |
| 4.3 parabolic vs loxodromic | ⟨a_{1/2}, T_1⟩ | contains T_{4^{−k}} → 1 | not discrete, as predicted | — |
| 4.4 Margulis | ⟨T_1⟩; finite K-subgroup; dense free subgroup of U(n) | ℤ nilpotent; finite; free non-abelian with zero displacement | discreteness needed | — |
| 4.5 cusp groups | ⟨n_{(1,0)},n_{(i,0)}⟩; {n_{(a,0)} : a ∈ ℤ} | T_4 ∈ Δ, Λ = ℤ[i] (rank 2); rank 1 not cocompact | cocompactness needed | — |
| 5.1 lattice | trivial group; ⟨T_1⟩; PSL(2,ℤ), Γ(2)/±1 | infinite Haar; infinite strip volume; covolumes π/6 and π (index 6) | holds | — |
| 5.2 proper discontinuity | irrational rotation | infinite stabiliser of 0 | discreteness needed | — |
| 5.3 covolume = volume | horoball modulo lattice of N; strip near ρ = 0 | ∫_N^∞ ρ^{−(n+1)}dρ < ∞; ∫_0^1 ρ^{−(n+1)}dρ = ∞ | holds | — |
| 6.1 cusp structure | PSL(2,ℤ); cocompact lattice; ⟨T_1⟩ (n ≥ 2) | one cusp, horoball Im z > 1; no cusps; Γ_∞ not cocompact | lattice hypothesis needed | — |
| 6.2 finite generation | PSL(2,ℤ); infinite-index normal subgroup of a free Fuchsian group | 2 generators; infinitely generated | finite covolume needed | — |
| 6.3 Selberg (eigenvalue form) | Γ(3), Γ(2) ⊂ SL(2,ℤ); {±1}; all roots of unity in GL₁(ℚ̄) | traces of root-of-unity elements −2,−1,0,1; Γ(3) traces ≡ 2 mod 3 exclude −2,0,1, −1 means order 3; −1 ∈ Γ(2) | holds; finite generation needed | Check rewritten after the first version mis-stated the trace argument |
| 6.4 neat | Γ(3) image; order-3 elliptic; m·T_t with m of order 4 | neat; Ad eigenvalue ζ₃; Ad eigenvalue i with infinite order | neat strictly stronger than torsion-free | — |
| 7.1 analytic quotient | w ↦ −w (n = 1, 2); reflection diag(1,1,−1) | w²; cone xz = y²; smooth quotient (w₁, w₂²) despite torsion | holds | — |
| 7.2 torsion-free | Γ(3); PSL(2,ℤ) at i | sphere minus 4 points; local degree 2 | torsion-free needed for covering | — |
| 7.3 finite quotient | PSL(2,ℤ) ⊃ Γ(2)/±1 | S₃ acts on thrice-punctured sphere, quotient ℂ | holds | — |
| 7.4 n = 1 | elliptic point of order m | local coordinate w^m both sides | holds | — |
| 8.1 cusp charts | multiplier under n_{(a,t_a)}; μ invariance | q ↦ χ(a)e^{−(4π/τ)⟨a,u⟩−(2π/τ)|a|²}q; μ invariant | Mok's formula needs a unitary twist χ(a) = e^{2πit_a/τ} when t_a ∉ τℤ | twist χ added to the statement; holomorphy pinned to ⟨a,u⟩ |
| 8.2 toroidal compactification | n = 1; cocompact | Fuchsian compactification; X^M = X | holds | — |
| 8.3 asymptotics | n = 1 | ω = i dq∧dq̄/(4|q|²log²|q|) computed from f = −log(−log|q|), f_{qq̄} = 1/(4|q|²L²) | holds, curvature −2 | — |
| 8.4 log canonical bundle | f = q^k; ℓ = 1 cusp forms; K_{X^M}|_{T_b} | integrand |q|^{2k−2}(−log|q|)^{(ℓ−1)(n+1)}, integrable iff k ≥ 1; adjunction gives L_b^{−1} | holds | — |
| 8.5 finite volume | n = 1; flat cylinder | 4π/|log δ| < ∞; ∫ dr/r diverges | Poincaré growth used | proof sketch added (no source states it at this generality) |
| 9.1 L² jets | weight n log|z|² vs (n−1/2)log|z|² | ∫|z|^{−2n}r^{2n−1}dr diverges; the other converges | exponent sharp | — |
| 9.2 extension of L² sections | Γ(2)/±1: E = O(1) on ℙ¹ | dim H⁰(E^ℓ) = ℓ+1; vanishing on D: ℓ−2 = dim S_{2ℓ}(Γ(2)) | matches modular forms | — |
| 9.3 Mok embedding | K_{ℙ¹} = O(−2); cocompact | no sections; Kodaira case (MilneSVI line 1734) | twist by D needed | — |
| 9.4 S*_Γ (neat) | cusp classes vs cusp points | ∂ finite, cusp points infinite | holds | independence of ℓ given its own argument (it had pointed forward to §10.5) |
| 9.5 S*_Γ (any lattice) | PSL(2,ℤ); two neat subgroups | ℙ¹ ⊃ 𝔸¹, ∂ = {∞}; common refinement | holds | — |
| 9.6 n = 1 | Γ₀(11) | ν₂ = 1+(−1/11) = 0, ν₃ = 1+(−3/11) = 0, 2 cusps, genus 1 | holds | — |
| 10.1 hyperbolic embedding | circle in Δ*; torsion target | length √2π/|log r|; metric |dz|²/(2y²) pushed to Δ* is |dq|²/(2|q|²log²|q|) | torsion-free needed | — |
| 10.2 extension | exp(1/z) into Y(1) ≅ ℂ | essential singularity, no extension | torsion-free needed | — |
| 10.3 Borel algebraicity | exp: 𝔸¹ → Y(1) | holomorphic, not algebraic | torsion-free needed | — |
| 10.4 uniqueness | torsion: automorphisms of X_Γ as complex space | PSL(2,ℤ): Aut(ℂ) affine, algebraic; general torsion case unproved by sources | narrowed to (a) torsion-free, (b) models compatible with a torsion-free cover | scoped; Part II question recorded |
| 10.5 finite-point compactification | ℂ* ⊂ ℙ¹; nodal cubic; X^M | unique; non-normal; divisorial boundary | normality and finiteness needed | — |
| 10.6 functoriality | Γ(3) in PSL(2,ℤ) vs SL(2,ℤ) | index and degree 12; index 24 in SL | degree = index in centreless G | Check corrected (the first version used Γ(2), where −1 ∈ Γ(2) makes the indices agree) |
| 11.1 arithmetic | PSL(2,ℤ); Picard; Mostow/Deligne–Mostow | arithmetic; arithmetic; non-arithmetic | holds | — |
| 11.2 arithmetic ⇒ lattice | Picard isotropic vector (1,1,0,…); compact ℚ-group | non-cocompact; no surjection onto G | surjectivity of p needed | — |
| 11.3 Shimura datum | h₀(i); conjugate choice | [diag(1,−1,…,−1)]: w ↦ −w; tangent scaling z/z̄ vs z̄/z | sign pinned by witness | — |
| 11.4 Baily–Borel comparison | PSL(2,ℤ); non-arithmetic Γ | both ℙ¹; no datum but S*_Γ exists | holds | stated for congruence components; others through S*_{Γ∩Γ_c} |
| 11.5 Borel embedding | n = 1; Siegel chart | disc ⊂ ℙ¹; Im(Zₙ conj Z₀) − |Z′|² of signature (1,n) | holds | — |
| 12.1 definitions | W = S_Γ; points; parabola component | Γ_H = Γ; excluded; not totally geodesic | holds | — |
| 12.2 Γ-special ⇒ algebraic | m = n; Picard sub-ball {w₂=0} | j = id; Γ_H ⊃ finite index in U(1,1;ℤ[i]) × U(1;ℤ[i]) | holds | local finiteness of translates justified through components of π⁻¹(W) |
| 12.3 totally geodesic ⇒ Γ-special | n = 1 | only S_Γ | holds | — |
| 12.4 Ax–Schanuel setting | W = B×{s}, B×S_Γ, {x₀}×S_Γ | dim U = 0, n, 0 against dim W − n = 0, n, 0 | inequality with equality | — |

## Dependency check

```
candidate: BallQuotientsAndComplexHyperbolicLattices is not in the merge order yet; checked as if placed after ShimuraData (the intake inserts it when its design is accepted)
depcheck: 235 roadmaps, 2172 edges, 0 problem(s)
```

No UPWARD or CYCLE line; every supplier (FuchsianOrbifolds, RiemannianGeometry, ComplexKahlerGeometry, ComplexManifolds, ConformalMapping, SchemeAndStackFoundations on main; VonNeumannAlgebras, ComplexComparisonPartII, AdelicAlgebraicGroups, ShimuraVarieties, PELModuli, ShimuraData, AlgebraicModuliForArithmeticGeometry earlier in the merge order) precedes the placement after ShimuraData.
