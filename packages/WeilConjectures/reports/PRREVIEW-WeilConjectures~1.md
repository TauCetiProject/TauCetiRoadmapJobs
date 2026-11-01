# Review of WeilConjectures (pull request #1208 at d90e186)
**Verdict:** needs changes

Three blocking ownership/generality findings and five P3 findings follow. No false mathematical headline was found in the computed instances below. The recorded push gate fails, although independent Lean elaboration and the dependency check pass. No pull-request file was changed.

## R01 (P2) — Import the existing descent and local Fatou theorems

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:291`, `:302`, and `TauCetiRoadmap/WeilConjectures/Suggested.lean:105`, `:113`. The scope claims ownership of “arbitrary-field rational-series descent, local Fatou normalization”.

**Claim:** These are new independent algebraic headlines here.

**Witness:** `TauCetiRoadmap/PadicDifferentialEquationsAndRigidCohomology/README.md:11992` already states arbitrary-field rational-series descent; `:13888` states precisely the normalized coprime local Fatou theorem, including ℓ=p. That supplier is earlier in the merge order.

**Repair:** Delete the two duplicate theorem targets and their Lean declarations. Import RD.6.24 and RD.7.4(b) by name in scope and supplier contracts; retain only the applications to this roadmap's counting constructions. The purported extra generality is already present: RD.6.24 handles K⊆L, and RD.7.4(b) controls both numerator and denominator at every prime. For the shared boundary test f=1/(1−T), both contracts give P=1, Q=1−T and coefficient norm 1. The repair preserves that test without a second owner.

## R02 (P2) — Remove the second generic degree-factor extraction theorem

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:610` and `TauCetiRoadmap/WeilConjectures/Suggested.lean:123`.

**Claim:** The arbitrary-characteristic-zero-field extraction theorem and its companion-matrix adapter are independently developed here.

**Witness:** `TauCetiRoadmap/DeligneWeightsAndPurity/Suggested.lean:111` already quantifies over arbitrary characteristic-zero coefficient fields. Its README §4.4 owns extraction; `TauCetiRoadmap/PadicDifferentialEquationsAndRigidCohomology/README.md:13916` already states the polynomial-family adapter.

**Repair:** Consume DeligneWeightsAndPurity §4.4 and RD.7.5; delete the generic restatement and its Lean declaration. Keep a specifically geometric comparison with this roadmap's point-count series, spelling out the maps being compared. The supplier is not restricted to ℚ_ℓ in its actual Lean signature. A diagonal automorphism with the displayed nonzero roots supplies its finite-dimensional input directly. At q=4, factors 1−T and 1−4T give R=1/((1−T)(1−4T)); both existing interfaces recover exactly these degree-zero and degree-two factors, with degrees 1 and 1. Empty degree lists can remain a README Check.

## R03 (P2) — Give integral toric geometry one general owner

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:1087`: “by gluing … for this fixed fan”; also `:1107–1148`.

**Claim:** The new integral fan construction, Chow presentation and finite-field comparison are scoped to the seven-ray example.

**Witness:** `TauCetiRoadmap/ShimuraCompactifications/README.md:752` plans arbitrary-ring finite-fan gluing, and §0.17 its relative properness criterion. The merge order places WeilConjectures at 110 and ShimuraCompactifications at 143.

**Repair:** Move ownership of the consumed general integral-fan construction and required criteria to WeilConjectures or another earlier supplier, and make the later roadmap consume that owner. Do not add ShimuraCompactifications as an upward supplier. State the general smooth complete split-fan Chow/cycle comparison with its hypotheses, then specialize it to this fan as a Check/application. A separately glued seven-ray scheme bypasses reusable theory and duplicates the later general construction. Test the general contract on the fan consisting of the zero cone, the projective-line fan and the stated fan: the resulting schemes are a torus, ℙ¹ and the specified threefold; their required Chow ranks are respectively (1), (1,1) and (1,4,4,1). Include coefficient change to ℤ/4, retaining its nonzero nilpotent 2. The current complex-only pin does not supply this extension.

## R04 (P3) — Remove the anchor that fails the push gate

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:1196`, `<a id="homology-manifold-weil-assembly"></a>`.

**Claim:** This explicit HTML anchor is permitted roadmap text.

**Witness:** The worker's gate reports `residue=1`, naming exactly line 1196; every other reported gate counter is zero.

**Repair:** Delete the HTML anchor. Identify the target by WC.6, its subsection title and the theorem name in prose; use the generated heading anchor where a link is needed. The named homology-manifold target remains present at lines 1198–1213, so no mathematical content is lost. Re-run the gate; this head cannot be accepted with its recorded failure.

## R05 (P3) — Restore the required Lean namespace and layer form

**Location:** `TauCetiRoadmap/WeilConjectures/Suggested.lean:4`, `:47`, `:150`, `:181`.

**Claim:** The acceptance file uses three `TauCeti.*` namespaces and has no layer section comments; its WC.7 endpoint precedes WC.1 targets.

**Witness:** The elaborated names are `TauCeti.PointCounting.*`, `TauCeti.FiniteSpectrum.*` and `TauCeti.AlgebraicGeometry.WeilZeta.*`, rather than names under `TauCetiRoadmap.WeilConjectures`.

**Repair:** Put the remaining declarations under `TauCetiRoadmap.WeilConjectures`, with any useful nested namespaces, and arrange layer comments and targets in README order. Use the required module title “Weil conjectures: target signatures”, explicitly referring to the pinned APIs and naming each unavailable headline/carrier. Renaming does not change the checked mathematical signatures: for example the geometric endpoint must still retain all three smoothness, properness and geometric-integrality instances.

## R06 (P3) — Stop advertising absent Lean declarations

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:346`, `:456`, `:910`, `:1088`, `:1431` and the repeated “Library target” labels.

**Claim:** Backticked names such as `groupoidMass`, `signedConfigurationCoefficient`, `HasPolynomialPointCount` and `nonprojectiveToricModel` denote declarations in this acceptance file.

**Witness:** The file has exactly eleven declarations: two point-count definitions and nine theorems. None of these four names is among them; the complete `#check @name` run confirms the inventory.

**Repair:** Write the README-only definitions and API targets in prose, reserving backticked own names for declarations actually retained in Suggested.lean. Do not add the missing heavy constructions or API catalogue to Lean. For example, the mass definition still specifies 1/2 for the one-object C₂ groupoid and 1 for its regular action groupoid; changing its typography loses no API or Check. Add the missing downstream-consumers section and use the prescribed subsection structure while making this prose pass.

## R07 (P3) — Add the source manifest

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:1599` and the folder inventory.

**Claim:** The references are tracked sufficiently for the requested source audit.

**Witness:** The tracked folder contains only README.md, Suggested.lean and metadata.toml; there is no sources.toml. Fourteen external works, plus Stacks tags, are cited.

**Repair:** Add the required source manifest with one lifetime key per work, exact locators and version notes, and the retrieval/status metadata. Preserve the distinction between the published Bergström–Faber–Payne pagination and its preprint, and between Kedlaya's published and preprint section numbers. Record the unavailable Fulton book honestly instead of marking it verified. Fulton–Sturmfels Proposition 1.1 is on preprint page 4; a manifest entry for that locator can be verified against `fulton-sturmfels line 117`.

## R08 (P3) — Give each definition discriminating Checks and an explicit API list

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:175`, `:250–263`, `:759–779`.

**Claim:** The definitions are accompanied by the required per-definition API and at least three discriminating Checks.

**Witness:** Extension-point count and zeta series have no local API/Checks bullet lists. D, B and G are introduced in separate subsections, while line 842 merely names possible tests without computing their values.

**Repair:** Attach the required prose API bullets and computed Checks to each retained definition, including local polynomial/series expressions. For D,B,G use: empty spectrum gives (1,0,0); β=2,c=3 gives D=1−2T, B=6T, G=6T+12T²+…; β=0,c=1 gives (1,0,0), with G(0)=0 rather than the zeroth moment 1. Add characteristic-two repeated-root cancellation as a negative control. For counts use a point, a degree-two point and ℙ¹/𝔽₄; for zeta use the empty scheme, that degree-two point and 𝔾_m. These give the actual values recorded below, rather than test descriptions only.

## Verified sound

The review read all 1,618 README lines and all 206 Lean lines, the repository's normative README and CONTRIBUTING rules, and main-roadmap examples including EtaleCohomologyFoundations and the archived RestrictedProducts and OrthogonalL2Bases roadmaps. The requested files were read-only. HEAD was d90e1866ff4d5d269672cba692a004f96f1a0938; the initial and final worktree status were clean, and the diff outside this folder was empty.

**Gate and dependency evidence.** The supplied gate records one failure, addressed by R04: `residue=1`; build, imports, sorry-data, set_option, stray-files, outside-folder and the remaining counters are zero. I independently elaborated the absolute Suggested.lean path with `lake env lean` from the worktree. Exit status was zero, with exactly nine `sorry` warnings and no other warnings. The requested dependency command returned:

```text
depcheck: 205 roadmaps, 1447 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. R03 concerns duplicate ownership discovered beyond the declared edges, not a claimed mechanical-cycle failure. No declared gap contract was present to audit.

**Seeded source sample.** There are no README locators flagged “unverified”. For “Chow presentation of the specified fan”, I fetched the legal arXiv v1 of Fulton–Sturmfels through the sources service and read Proposition 1.1 and equation (1.1): `fulton-sturmfels lines 100–123`, preprint page 4. They give invariant orbit-closure generators and character-divisor relations, for a toric fan; this is the additive presentation claimed as the proof input. They do not themselves state the seven-variable ring or its rank computation. Page 5's degree statement gives degree 1 for a maximal-cone fixed point (`fulton-sturmfels lines 144–151`), and the smooth case supplies the intersection-ring setting (`lines 153–163`). No projectivity assumption is imposed on Proposition 1.1. The full arbitrary-field graded ring identification also cites Fulton's book, which remains unverified below.

Fujino–Sato version 0.27 identifies exactly the seven rays and ten cones in Example 4.1 (`fujino-sato lines 299–305`, printed p. 7), and exactly the three primitive relations and nonprojectivity argument (`lines 314–325`, p. 8). The version/date agrees (`line 34`). Direct integer computation gave determinant signs, in README cone order,
`1,−1,1,1,−1,−1,1,−1,1,−1`, and face counts `(1,7,15,10)`. Integer elimination of the homogeneous relation matrices used only unit pivots and left no nonzero residual relation: quotient ranks in degrees 0–4 were `(1,4,4,1,0)`, with no torsion. Vanishing in degree 4 implies vanishing above it because the quotient is generated in degree 1. Orbit counting independently gives `(q−1)³+7(q−1)²+15(q−1)+10=q³+4q²+4q+1`. These computations validate the example's numerical claims; they do not replace the geometric cycle isomorphism.

**Headline inventory and Lean checks.** The README explicitly selects nine acceptance theorems: the smooth proper Weil endpoint, arithmetic Euler-product convergence, integral rational zeta presentation, rational-series descent, local Fatou, pure-factor extraction, grouped moment bound, graded polynomial approximation and signed functional equation. All nine are stated, with the ownership defects R01–R02. The other major headlines are coefficient-prime/cohomological comparisons, supplied-family Betti comparison, stack trace/duality, polynomial-count/Tate and equivariant consequences, the nonprojective toric comparison, and the cycle/surface applications. The module docstring identifies their missing rational cohomology, stack/comparison, cycle, Picard and fan-model carriers. I found no substitute based on an unconstrained predicate, no sorry'd data, no arbitrary operator presented as geometric Frobenius, and no computed-value padding theorem.

A scratch copy appended `#check @name` for all eleven declarations and elaborated successfully. All eleven match the supplied signatures; no needed section binder disappeared. In particular, the field extension uses `Nat.card k`, the factor-extraction theorem retains algebraicity and **all** complex embeddings, the moment theorem retains the complete fibre-weight sum, and χ is an integer difference of degrees. Smoothness plus geometric integrality in the endpoint matches the smooth geometrically connected case over a finite field; the degree-zero endpoint is not counted twice. The two real-bodied definitions need no finiteness assertion merely to form Nat.card, while the geometric theorems do retain finite type through their morphism classes.

A separate scratch copy tried `simp`, `rfl` and `infer_instance` as individual closing tactics on each of the nine admissions. All nine remained unsolved. The object searches below supplied no pinned one-lemma proof of a kept headline. The three overlaps in R01–R02 are planned upstream mathematics, not one-tactic pinned-library padding.

**Adversarial computations.** The 129 rows below record mathematical instances, not claims of formal proofs of every general statement. “Pass” means the displayed values agree or the negative control is excluded by an explicit hypothesis. An ownership/style repair is recorded even where the mathematics passes. Ranges refer to `TauCetiRoadmap/WeilConjectures/README.md`; the final rows cover the acceptance signatures explicitly.

| Statement / location | Instances tried | Computed sides / distinguishing values | Result; change |
| --- | --- | --- | --- |
| Finite-field convention, 51 | k=𝔽₄, r=2; q=1 | #k_r=4²=16, not 2²=4; no field has card 1 | Pass |
| Geometric Frobenius/Tate convention, 53 | ℙ¹/𝔽₄, r=2 | H² eigenvalue 4, then 16; ℚ_ℓ(1) eigenvalue 1/4, then 1/16 | Pass |
| Determinant and reciprocal roots, 58–61 | F=[4]; zero space; J₂(1) | det(1−TF)=1−4T, zero 1/4; empty determinant 1, degree 0; J₂ gives (1−T)² | Pass |
| Alternating zeta convention, 66 | 𝔾_m/𝔽₃ | odd factor 1−T, even factor 1−3T; Z=(1−T)/(1−3T), coefficient T=2 | Pass |
| χ and Δ, 74 | point; genus-two curve q=2 | (χ,Δ)=(1,1); (−2,1/2), with Δ²=1/4=2^(−2) | Pass |
| Extension-point tower/count, 175 | point, empty, Spec 𝔽₄ over 𝔽₂ | counts 1,0; quadratic point counts 0,2,0,2 | Pass; R08 |
| Extension independence/transport, 175–181 | two models of 𝔽₄/𝔽₂ | Hom counts both 2 at r=2; postcomposition by an algebra isomorphism permutes two points | Pass |
| Closed-point orbit/degree, 187 | one orbit of length 2 | a₂=1; contributions N₁=0,N₂=2; degree 2 versus norm 4 over 𝔽₂ | Pass |
| Rational realization/scalar extension, 195 | ℙ¹/𝔽₄ and 0-dimensional space | trace pair (1,4), b=(1,0,1), powers (1,16); zero trace 0, determinant 1 | Pass |
| Arithmetic zeta, 213–242 | Spec 𝔽₄, s=2; empty; Spec ℤ | factor 1/(1−4^(−2))=16/15; empty product 1; Σ_p p^(−2)≤Σ_n≥2 n^(−2)<∞ | Pass |
| Arithmetic finite-field comparison, 224 | 𝔸¹/𝔽₂, s=2 | Z(2^(−2))=1/(1−2/4)=2=(1−2^(1−2))⁻¹ | Pass |
| Euler and exponential series, 250–260 | empty; degree-two point | 1=exp(0); exp(Σ_m T^(2m)/m)=(1−T²)⁻¹, coefficients 1,0,1,0,1 | Pass; R08 |
| Open–closed and disjoint union, 256 | 𝔸¹={0}⊔𝔾_m over 𝔽₃ | (1−T)⁻¹·(1−T)/(1−3T)=(1−3T)⁻¹; counts 1+2=3 | Pass |
| Base extension of zeta counts, 256 | degree-two point, extension degree 2 | old N_(2r)=2 for every r; new Z=(1−T)⁻² | Pass |
| Möbius inversion, 267 | 𝔸¹/𝔽₂, r=1,2 | a₁=2,a₂=1; N₂=2+2=4; 2a₂=N₂−N₁=2 | Pass |
| Möbius nonnegativity qualification, 275 | numerical a₂=−1, others 0 | N₂=−2; inverted sum −2, not nonnegative | Explicit geometric qualification excludes this inference |
| Cohomological determinant/trace, 281 | 𝔾_m/𝔽₃, r=1,2 | −1+3=2 and −1+9=8; series (1−T)/(1−3T) | Pass |
| Rational-series descent, 293 | K=ℚ,L=ℚ(√2), f=1/(1−T); f=0 | (1−T)f=1 over both fields; 1·0=0 | Pass; R01 |
| Local Fatou, 306 | f=(1−T)⁻¹ and f=1−T, ℓ=2,3 | normalized P,Q have maximum coefficient norm 1 in both cases | Pass; R01 |
| Fatou coprimality, 321 | f=1,P=Q=1−T/ℓ | Qf=P, but norm of linear coefficient is ℓ=2 or 3>1 | Correctly excluded; R01 |
| Reduced integral presentation, 326 | 𝔸¹/𝔽₂; empty | (U,V)=(1,1−2T), VZ=1; empty (1,1) and 1·1=1 | Pass |
| Groupoid mass definition, 338 | empty discrete; three discrete points; one-object C₂ | masses 0,3,1/2; object counts 0,3,1 | Pass |
| Mass equivalence and representative invariance, 344–347 | two isomorphic objects with trivial Aut versus one | quotient has one class; both masses 1, raw object counts 2 and 1 | Pass |
| Mass products and sums, 349–350 | BC₂×BC₃; BC₂⊔BC₃ | 1/6=(1/2)(1/3); 5/6=1/2+1/3 | Pass |
| Action-groupoid mass, 351 | regular C₂ action; trivial S₃ action on two points | 1=2/2; 1/3=2/6, even though action is nonfree | Pass |
| Stack point groupoid, 367–373 | BC₂(𝔽₃), BS₃(𝔽₃) | masses 2·(1/2)=1; 1/6+1/2+1/3=1 | Pass; torsors are indispensable |
| Rational coarse comparison, 374–377 | BC₂, ℓ=2 | coarse count 1; H⁰ dimension 1, higher rational group cohomology 0 | Pass |
| Stack compact supports/trace, 380–386 | point; empty; 𝔾_m/𝔽₃ | masses 1,0,2; alternating traces 1,0,−1+3=2 | Pass |
| Stack pairing, 387–393 | ℙ¹/𝔽₄ | eigenvalue product 1·4=4=q, not q⁻¹=1/4 | Pass |
| Stack arithmetic/Artin comparisons, 394–400 | ℙ¹ over ℤ, degree 2 and twist 1 | Betti dimension 1; crystalline φ=p; twisted φ=1; Tate exponent −1 | Pass on this scheme instance; general stack construction not formalized at pins |
| Connected quotient mass, 428 | [point/𝔾_m] over 𝔽₃ | mass 1/#𝔾_m(𝔽₃)=1/2; BC₂ has 1, not 1/2 | Pass; disconnected shortcut excluded |
| Twist and base-extension operators, 434–436 | two split points, σ swaps them | twist has N₁=0,N₂=2; fixed twist squared uses σ²=1, fresh σ-twist over k₂ still has 0 points | Pass |
| Character lattice criterion, 442–444 | C₂ swap on two points | class function (2,0)=χ_triv+χ_sign; multiplicities (1,1); (1,0) instead has halves (1/2,1/2) | Pass in both directions |
| Signed configuration definition, 450 | empty; two fixed points; one 2-cycle | coefficient lists (1), (1,−2,1), (1,0,−1) | Pass |
| Configuration conjugation/vanishing, 458–459 | relabel a 2-cycle | same (1,0,−1); c₃=0 because cardinality is 2 | Pass |
| Configuration convolution/product, 460–462 | fixed point plus 2-cycle | (1−T)(1−T²)=1−T−T²+T³ | Pass |
| Inverse-zeta configuration formula, 476 | quadratic point | Z⁻¹=1−T², c₁=0,c₂=−1 | Pass |
| Even-cohomology termination, 484–490 | ℙ¹/𝔽₂; empty | inverse zeta 1−3T+2T², B=2 and coefficient sum 0; empty inverse 1 has sum 1 | Pass |
| Hasse–Weil sieve, 496–504 | three parameter points: empty, one point, two singular points | S₁=−3,S₂=1,B=2; 3−3+1=1 smooth fibre; h=1 tail=1 | Pass, including exact tail |
| Curve numerator without RH, 510 | genus 0; elliptic q=5,a=−2 | Π=1 and Π=1+2T+5T²; N₁=6−(−2)=8 | Pass |
| Degree reciprocity, 551 | ℙ¹, i=0,d=1,q=2 | LHS 1−1/(2T); RHS −(1−2T)/(2T)=same | Pass |
| Signed assembly, 545 | point; ℙ¹/𝔽₂ | Z(T⁻¹)=−T Z(T); Z((2T)⁻¹)=2T²Z(T) | Pass |
| Half-exponent parity, 560 | point; ℙ²; genus 2 | dχ=0,6,−2, all even; m=0,3,−1 | Pass |
| Multiplier rational descent/sign, 574–580 | ℙ²/𝔽₂; genus-two q=2 | A=−8 and 1/2; ε=−1 and +1; middle +q multiplicity for ℙ² is 1 | Pass |
| Sign under extension, 586 | point, r=2; quadratic point, r=2 | point ε₂=(−1)^3(+1)=−1; quadratic χ=2,Δ=−1 gives ε₁=−1,ε₂=+1 | Pass |
| Generic pure extraction, 612–625 | q=4, degrees 0,2; empty | factors 1−T,1−4T, degrees 1,1, gcd 1; empty product 1 with unique empty list | Pass; R02 |
| Extraction hypotheses discriminate, 616 | q=1; one-embedding “purity” | at q=1 identical 1−T factors cancel across degrees; 1+√2 has conjugate 1−√2 with unequal moduli | Correctly excluded |
| Projective canonical factors, 631 | two-point permutation; rank-two unipotent check | 1−T²; (1−T)², preserving multiplicity 2 without diagonalizability | Pass as polynomial checks |
| Supplied-family Betti comparison, 654 | ℙ¹_ℤ over Spec ℤ[1/ℓ] | finite and complex Betti dimensions both (1,0,1); top twist gives q versus complex dimension 1 | Pass; no arbitrary lift inferred |
| Consecutive moment recovery, 680 | β=(1,2), c=(3,5), n=0 | V=[[1,1],[1,2]], A=[[2,−1],[−1,1]], moments (8,13); 2·8−13=3; −8+13=5 | Pass; transpose fixed |
| Moment-window estimate, 692 | same β,c,C=8,R=2,N=0,n=1 | root 2: LHS 5·2=10; RHS 8·2·(1+2)=48 | Pass |
| Visible distinct-root bound, 704 | β=2,c=3,C=3,R=2; β=0,R=0,N=1 | 3·2^n≤3·2^n gives 2≤2; zero tail gives 0≤0 | Pass |
| Grouped moment bound, 712 | α=(2,2),w=(1,−1); w=(1,1) | grouped weight 0 gives all moments 0 and no bound; weight 2 gives moments 2·2^n and bound 2≤2 | Pass |
| Unweighted converse, 721 | repeated 1 twice over ℂ versus 𝔽₂ | moments 2 over ℂ; moments 0 in 𝔽₂ with roots norm 1>R=0 | Characteristic-zero hypothesis necessary |
| All-positive-power iff, 727 | α=(2,−2),R=2 | odd moments 0; even moments 2·2^n, C=2 works; first moment alone is 0 despite norm 2 | Pass both directions; finite-window trap excluded |
| Reciprocal escape, 735 | γ=1/2,c=1 | inverse moment 2^n>1 for every n≥1; γ=0 would be undefined reciprocally and is excluded | Pass |
| Generating HasSum, 747 | β=2,c=3,z=1/4; β=0 | Σ_n≥0 3(1/2)^(n+1)=3; rational side 3(1/2)/(1/2)=3; zero root gives 0 | Pass |
| Common denominator D,B, 759 | empty; β=2,c=3 | (D,B)=(1,0); (1−2T,6T), B(1/4)/D(1/4)=3 | Pass; R08 |
| Repeated denominators, 765 | β=(2,2), c=(1,1) | D=(1−2T)², B=4T(1−2T), reduced B/D=4T/(1−2T) | Pass |
| Formal series G and DG=B, 771 | one root β=2,c=3; repeated β=1 in 𝔽₂ | (1−2T)(6T+12T²+…)=6T; characteristic-two G=B=0 and DG=0 | Pass, including zero ring (all coefficients 0) |
| Laurent-series comparison, 783 | β=2,c=3 | 6T/(1−2T)=6T+12T²+24T³+…; negative and constant coefficients 0 | Pass |
| Exact pole cancellation, 791 | β=(1,2),c=(3,5) | B=13T−16T²; B(1)=−3=3(1−2), B(1/2)=5/2=5(1−1/2); c₂=0 makes B(1/2)=0 | Pass both directions |
| No pole in bounded disc, 803 | β=2,R=2,z=1/4; zero-radius case | R|z|=1/2<1, denominator 1/2≠0; R=0 forces visible β=0 and G=0 | Pass |
| Reciprocal bound becomes equality, 811 | α=(3+4i,3−4i),R=5 | product 25=R², each norm 5; |S₁|=6≤10, |S₂|=14≤50 | Pass |
| Little-o strict bound, 819 | β=1,c=1,R=2; boundary β=2 | normalized moments 2^(−n)→0 and 1<2; boundary ratio 1 does not tend to 0 | Pass |
| Graded polynomial approximation, 827 | p=2, b₀=b₂=1, P=1+T,s=0; s=3,P=T | first error 0 gives roots 1,2; second error 1 divided by 2^(3n/2)→0 with no lower-coefficient assertion | Pass |
| High polynomial coefficients, 833 | r=0,s=4, empty spectrum,P=T³ | error/2^(2n)=2^n does not tend to 0; coefficient outside r cannot survive | Correctly excluded |
| All-extension Weil estimate, 846 | ℙ¹/𝔽₂; elliptic q=5,a=−2 | ℙ¹ error 0=empty bound; elliptic r=1 error 2≤2√5; r=2 error 6≤10 | Pass |
| Components and dimension zero, 858 | two ℙ¹ components exchanged; degree-two point | r=1 endpoint 0, r=2 endpoint 2(1+q²); dimension-zero counts 0,2, not doubled 0,4 | Pass |
| Elliptic count comparison, 870 | y²=x³−x over 𝔽₅ | affine counts (1,1,2,2,1), plus infinity gives 8; a=6−8=−2; a²=4≤20 | Pass |
| Linear recurrence, 878 | α with sum −2, product 5 | S₀=2,S₁=−2,S₂=−6; S₂+2S₁+5S₀=−6−4+10=0 | Pass |
| Newton recovery, 884 | same spectrum, n=1,2 | −2+c₁=0⇒c₁=2; −6+2(−2)+2c₂=0⇒c₂=5 | Pass |
| Total count recurrence/N₀, 892 | ℙ¹/𝔽₂ | Q=1−3T+2T², N₀=2,N₁=3,N₂=5; 5−9+4=0 | Pass; N₀ is χ, not a field count |
| Complete intersections, 898 | line; smooth conic | n=1,b′=0,b=0; both #=q+1 and error 0 | Pass |
| Polynomial-count predicate, 910 | q+1; modified N(4)=0; N(1) arbitrary | P(4)=5 versus 0 rejects modified function; changing N(1) has no effect | Pass |
| Polynomial-count API, 918 | zero; point+𝔸¹; product of two points | witnesses 0,1+T,1; evaluations at q=2 give 0,3,1 | Pass; uniqueness uses infinitely many q |
| Local approximate cutoff, 937 | ℙ²/ℤ_p,P=T²+T,s=2 | error 1=o(p^n); b₂=b₄=1, roots p,p²; P₀=0 does not equal b₀=1 | Pass; no lower conclusion |
| Open-U Tate semisimplification, 951 | same ℙ² approximation | repaired C=1+T+T²; at q=2, P=6,C=N=7; Tate multiplicities (1,1,1) | Pass; C is the d-palindromic count polynomial |
| Local extension input, 981 | unramified extension matrix [[1,1],[0,1]] | inertia is identity while Frobenius need not be; N=0, filtration degree 0, eigenvalues (1,1) | Pass; local unramified does not assert local splitting |
| All-Spec-ℤ Tate iff, 973 | ℙ¹_ℤ; empty | polynomial 1+T corresponds to ℚ_ℓ and ℚ_ℓ(−1), all odd 0; empty polynomial/cohomology 0 | Pass both directions on these instances |
| Equivariant polynomial count, 989 | G=C₂ swaps factors of ℙ¹×ℙ¹ | A(T)=1+(1+sign)T+T²; id count (q+1)², swap-twist count 1+q² | Pass |
| Equivariant palindromicity, 1003 | preceding C₂ example, d=2 | A₀=A₂=1; A₁=1+sign=(1+sign)^∨ | Pass |
| Surface graph intersections, 1017 | genus 1, q=5,N=8 | ΓA=1,ΓB=5; Δ²=Γ²=0; D²=−2,E²=−10,DE=2 | Pass; agrees with supplier's fibre labels |
| Surface Hodge-index bound, 1033 | same elliptic example; genus 0 | (DE)²=4≤20=D²E²; g=0 forces DE=0 and N=1+q | Pass |
| Independent curve RH, 1039 | elliptic polynomial 1+2T+5T² | reciprocal roots −1±2i, norm √5, product 5; bounds and pairing both give √5 | Pass; purity-free branch dependencies retained |
| Smooth proper factor extension, 1059 | empty; finite étale degree 2 | empty Π_i=1 all i; Π₀=1−T², higher factors 1; weight-zero roots ±1 | Pass |
| Integral toric model, 1087 | chart 123; zero cone | charts Spec ℤ[x,y,z] and Spec ℤ[x±¹,y±¹,z±¹]; regular determinant 1 | Pass example; R03 |
| Fan regularity/completeness source, 1087 | ten maximal cones | determinants (1,−1,1,1,−1,−1,1,−1,1,−1); face counts (1,7,15,10) | Matches cited fan; completeness from checked source |
| Toric nonprojectivity, 1095 | three primitive relations | both sides: (0,0,−1),(−1,0,0),(0,−1,0); three strict inequalities sum to 0>0 | Pass |
| Chow presentation and API, 1107 | specified fan | J has rank 3; 7−3=4; integer quotient ranks (1,4,4,1,0), x₁x₄=0 and deg(x₁x₂x₃)=1 | Numerical pass; source limitation below; R03 |
| Toric étale comparison, 1139 | q=2 and q=4 | predicted counts 1+4q+4q²+q³=33,145; orbit sums give 33,145; H² eigenvalues q four times | Consistent, not a proof of the geometric cycle isomorphism |
| Mixed reciprocal divisor weights, 1170 | 𝔾_m/𝔽₃, constant sheaf n=0,d=1 | reduced zero β=1 gives α=1,w=0; pole β=1/3 gives α=3,w=2≤2 | Pass; not weight=degree |
| Smooth proper signed equation, 1180 | ℙ²/𝔽₂; empty | χ=3,Δ=8 gives −8T³; empty χ=0,Δ=1 gives 1=1 | Pass |
| Homology-manifold dualizing condition, 1203 | smooth point and ℙ¹ | point a!ℚ=ℚ[0]; ℙ¹ a!ℚ=ℚ(1)[2], pairing target ℚ(−1), Frobenius scalar q | Pass smooth controls; anchor R04 |
| Smooth proper DM purity, 1217 | BC₂ and [ℙ¹/C₂] with trivial action | dimensions respectively (1) and (1,0,1), weights 0 and (0,2), including ℓ=2≠p | Pass |
| Rigid/crystalline linearization, 1229 | q=4,p=2,f=2, degree-two Tate class | semilinear φ=2σ, φ²=4; factor 1−4T agrees with étale, 1−2T does not | Pass |
| Projective-space factors, 1247 | n=0,1,2 at q=2 | Z denominators 1−T; (1−T)(1−2T); add (1−4T); N₁=1,3,7 | Pass |
| Finite-étale factors, 1263 | empty; cycles (1,2) | empty factor 1,N=0; Π₀=(1−T)(1−T²), N₁=1,N₂=3 | Pass |
| Künneth product, 1275 | ℙ¹×ℙ¹/𝔽₂ | degree factors 1−T,(1−2T)²,1−4T; N₁=9=3·3; Z-product would give wrong degree-four factor | Pass |
| Curve/Jacobian factors, 1293 | g=0; elliptic q=5 | Π₁=1; Π₁=1+2T+5T² satisfies 5T²Π₁(1/(5T))=Π₁(T) | Pass |
| Elliptic specialization, 1311 | y²=x³−x over 𝔽₅ | Δ mod5=64 mod5=4≠0; N₁=8,S₂=−6,N₂=32 | Pass |
| Artin–Schreier trace-count formula, 1329 | y²+y=x⁵ over 𝔽_(2^r), r=1…4 | trace-zero x counts 1,2,4,16; 1+2·counts=3,5,9,33 | Pass; actual finite-field enumeration |
| Genus-two numerator and recurrence, 1337 | counts above | S₁=S₂=S₃=0,S₄=−16; c₄=4; S₄+4S₀=−16+16=0 | Pass |
| Negative Euler functional equation, 1343 | same curve, T=1/3 | Z(1/3)=85/18; Z(3/2)=85/4=(1/2)·9·(85/18), χ=−2 | Pass; at T=1 the evaluated identity is excluded by a pole |
| Projective-plane sign, 1355 | q=2,T=1/3 | Z(T)=−27/2; Z(1/(4T))=4; (−8T³)Z(T)=4 | Pass; opposite sign gives −4 |
| Multiplicative-group realization, 1367 | q=3,r=1,2 | traces −1+3=2 and −1+9=8; Z=(1−T)/(1−3T) | Pass |
| Base-field cycles imply scalar action, 1379 | split versus nonsplit quadric | split H²=qI₂; nonsplit eigenvalues q,−q, invariant cycle span rank 1<2 | Pass; geometric spanning alone fails |
| Cycle zeta factors, 1393 | ℙ¹×ℙ¹/𝔽₂ | Π₂=(1−2T)², odd factors 1; denominator (1−T)(1−2T)²(1−4T) | Pass |
| Cycle all-extension count, 1405 | same surface; point | N₁=9,N₂=25 from 1+2q^r+q^(2r); point N_r=1 | Pass |
| Numerical Picard lattice/descent, 1417 | ℙ²; split/nonsplit quadric | ranks 1 and 2; action I or swap; O(1,−1)·O(1,1)=0 but square −2 and ruling pairing ±1 | Pass; quotient tests all classes |
| Numerical cycle injection and rank test, 1426 | ℙ²; E×E for the ordinary elliptic example over 𝔽₅ | ranks 1→1, hence iso; ranks 4→6, not onto (ordinary End(E) has rank 2) | Pass; rank hypothesis discriminates |
| Enriques definition/invariants, 1451 | classical/nonclassical Enriques; K3; abelian surface | χ(O)=1,1,2,0; Enriques b₂=ρ=10; blowup has K·E=−1 | Pass; char2 branch retained |
| Genus-one carrier and relative minimality, 1472 | rational elliptic surface; one vertical blowup | b₂=10,K²=0; blowup b₂=11,K²=−1 and vertical E²=−1 | Pass; nonminimal case excluded |
| Rational-surface Picard comparison, 1487 | ℙ²; one rational point blowup | (ρ,b₂)=(1,1),(2,2); K²=9,8; ρ+K²=10 both | Pass; genuine extension of rank-ten application |
| Constant-Num surface count, 1522 | split/nonsplit quadric over 𝔽₂ | split N₁=9=1+2·2+4; nonsplit N₁=5=1+0·2+4 | Pass; constancy distinguishes |
| Ten-class surfaces, 1540 | q=2,r=1,2 | 1+10·2+4=25; 1+10·4+16=57 | Pass conditional invariants/constancy |
| Maximal-count iff, 1552 | ℙ²; nonsplit quadric q=2 | ρ=1 trace1 gives N=7; ρ=2 swap trace0 gives 5≠9 | Pass both directions on controls |
| Smooth proper endpoint, 1568 | point; ℙ¹/𝔽₄; elliptic example | point P₀=1−T; ℙ¹ factors 1−T,1,1−4T with zeros 1,1/4; elliptic zeros modulus 1/√5 | Pass |
| Lean `extensionPointCount`, line 50 | point; quadratic point | 1; 0,2 at r=1,2; r=0 cannot satisfy NeZero | Matches README |
| Lean `zetaSeries`, line 56 | empty; point | exp(0)=1; exp(Σ_r≥1 T^r/r)=1/(1−T); coefficient 0=1 | Matches README; R08 |
| Lean `weilConjectures_smooth_proper`, line 64 | d=0; ℙ¹/𝔽₄ | both endpoint clauses at d=0 give 1−T; at d=1 endpoint degrees 1=1, zeros norms 1 and 1/4 | Matches stated endpoint |
| Lean arithmetic convergence, line 85 | empty; Spec 𝔽₂,s=2 | sum norms 0 and 1/3; products 1 and 4/3 | Matches README |
| Lean normalized presentation, line 95 | empty; 𝔾_m/𝔽₃ | (U,V)=(1,1); (1−T,1−3T), gcd1, VZ=U | Matches README |
| Lean rational descent, line 105 | zero; geometric series | (P,Q)=(0,1),(1,1−T) valid before/after extension | Mathematically consistent; R01 |
| Lean local Fatou, line 113 | ℓ=2,f=1−T | P=1−T,Q=1, norms 1≤1; noncoprime 1−T/2 rejected | Mathematically consistent; R01 |
| Lean degree extraction, line 123 | q=4,r=3,b=(1,0,1) | factors (1−T,1,1−4T), degrees (1,0,1), pairwise gcd1 | Mathematically consistent; R02 |
| Lean grouped bound, line 155 | duplicate roots 2 with weights 1,−1 | total coefficient 0, so hw false despite both individual weights nonzero | Matches README |
| Lean graded approximation, line 166 | p=2,r=2,s=0,P=1+T | error ratio 0, b₁=0, P₀=P₁=1, roots 1,2 | Matches README |
| Lean signed equation, line 187 | genus2 q=2; empty | χ=2−4=−2, Δ=1/2, Δ²=1/4; empty χ=0, unique Δ=1 | Matches README |

The zero ring was used only where the statement allows a commutative ring, not where `Field` excludes it. Non-finite-type infinite disjoint unions would have infinite rational-point sets (Nat.card's junk value 0), but do not meet the geometric theorem hypotheses. Nilpotent thickening Spec(k[ε]/ε²) has one field-valued point over each extension and the same zeta 1/(1−T); it does not meet the smooth endpoint hypothesis. q=1 is excluded both by the actual finite-field carrier and explicitly in the numerical extraction theorem. Non-split component actions, ℓ=2, characteristic-two cancellation, the empty list, degree zero, negative χ and zero-radius tails were tested above.

**Pinned declarations opened and ownership search.** The table has 14 declaration/file groups. Mathlib is pinned at 6b7abb3c7686292736be2955bd3eb9ebf63b456a; Tau Ceti at a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Paths below are relative to those repositories. These are concrete checks, not assertions about a newer library.

| Pinned declaration/file | Verified input or limitation |
| --- | --- |
| Mathlib `FiniteField.Extension`, `Mathlib/FieldTheory/Finite/Extension.lean:48` | Real finite-field carrier, `[Finite k]`, characteristic p, prime p and positive extension degree; algebra map chosen at line 64 |
| `natCard_extension`, `finrank_extension`, same file:77,81 | Cardinality (#k)^r and relative rank r, including nonprime #k |
| `natCard_algHom_of_finrank_dvd`, `Mathlib/FieldTheory/Finite/GaloisField.lean:318` | Divisibility-based extension-point multiplicity input |
| `Matrix.charpolyRev`, `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290` | Body is det(1−X·M), not det(X−M) |
| `Scheme.EllAdicCohomology`, `Mathlib/AlgebraicGeometry/Sites/ElladicCohomology.lean:75` | Defined from the integral ℤ_ℓ pro-étale sheaf at line 63; exported instance is AddCommGroup at line 78, not the requested rational finite-dimensional Frobenius package |
| `IsGalois.mem_range_algebraMap_iff_fixed`, `Mathlib/FieldTheory/Galois/Basic.lean:358` | Requires Galois and finite-dimensional hypotheses |
| `IsIntegrallyClosed.eq_map_mul_C_of_dvd`, `Mathlib/RingTheory/Polynomial/GaussLemma.lean:78` | Fraction-field setting; factor of a monic polynomial, with leading-coefficient normalization |
| `NumberField.finrank_eq_one_of_unramified`, `Mathlib/NumberTheory/NumberField/ExistsRamified.lean:50` | Everywhere-unramified ring-of-integers hypothesis, not a theorem that an arbitrary local unramified representation is trivial |
| `TauCeti.repRingCharacter`, `TauCeti/RepresentationTheory/RepresentationRing/Basic.lean:127`; `mem_range_repRingCharacter_iff`:164 | Representation-ring character and its actual image criterion |
| `TauCeti.repRingCharacter_injective`, `TauCeti/RepresentationTheory/RepresentationRing/Injective.lean:50` | Finite group, characteristic zero |
| `TauCeti.mem_virtualCharacters_iff`, `TauCeti/RepresentationTheory/CharacterTable/VirtualCharacter.lean:360` | Integer combinations of irreducible characters; coefficient uniqueness needs characteristic zero, with the section's splitting hypotheses |
| `WeierstrassCurve.pointCount`, `TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean:73` | Counts affine solutions plus infinity; the nonsingular-point comparison requires ellipticity |
| `WeierstrassCurve.hasse_bound`, `TauCeti/AlgebraicGeometry/EllipticCurve/HasseBound.lean:65` | Independent existing elliptic inequality, retained as a supplier |
| Toric affine algebra, `TauCeti/Geometry/Toric/Algebraic/AffineScheme.lean:61`; `Fan.algebraicRealization`, `…/Fan/Scheme.lean:136` | The algebra is a monoid algebra over ℂ; existing gluing is general in the fan but not in the coefficient ring |

I searched by objects (weighted/grouped power sums, rational-series descent, local Fatou, groupoid masses, signed configurations, toric gluing/Chow rings, numerical Picard and Enriques carriers), both pinned trees, the main roadmap tree, board packages and the indexed open roadmap heads using `roadmaps grep/show`. This found R01–R03. No existing pinned theorem was found for the two numerical headlines, and no duplicate fully qualified Lean name was found among the searched roadmap declarations. The generic finite-spectrum development and finite-groupoid/configuration applications have a coherent ownership role here. Main's numerical divisor quotient is explicitly imported; the proper-surface/descent extension and non-Jacobian/arbitrary-rank surface applications add hypotheses/generalities absent from the narrower supplier. The later EnriquesSurfacesAndIntegralNonexistence roadmap explicitly consumes WC.7 rather than independently owning this characteristic-two-inclusive definition.

**Resolved supplier contracts.** Every named supplier in the table and every Needs line was inspected against main when available, otherwise its indexed open head. The four unresolved-name leads from the worker are not missing-library findings: they name planned declarations actually present in EtaleCohomologyFoundations. The following 18 rows identify the contracts and additional ownership check; line numbers omit the tool's one-line provenance header.

| Supplier | Resolved locations and checks |
| --- | --- |
| SchemeAndStackFoundations (main) | §0.29 at README:1825 (q-power Frobenius); §§1.15,1.18–1.21,1.23 at 2502,2745,2817,2843,2951,3021 (torsors/stacks/coarse spaces); §§3.1–3.4,4.11–4.12,5.1–5.6 (curves, Picard, modifications and Chow); §5.10:7175 numerical quotient, §5.11:7273 graph intersection and Hodge-index bound |
| EtaleCohomologyFoundations (main) | §F.10.1:907 contains frobeniusFixedPoints and numberOfRationalPoints; §F.4.5:1041 contains rationalAdicRealization; §F.10.2b:1108 contains frobeniusCohomology with inverse arithmetic/geometric and all-power compatibilities; §0.9:1121 and F.5–F.7 provide cycles/pairings/projective bundles |
| InverseGaloisAndArithmeticFundamentalGroups | §§IG.0.T1–T4:477,501,536,558 give curve/Jacobian comparison, finite/rational traces and constant-sheaf counts; compact support, all powers and the independent affine/projective/multiplicative examples are explicit |
| DeligneWeightsAndPurity | §0.10:730 determinant/trace; §0.16:808 pairing; §§1.6–1.10:989–1033 curves and rational zeta; §§4.3–4.4:1363–1371 purity/extraction; §§7.8–7.15 mixed/smooth proper and homology-manifold purity; §8.24:2866 includes the rational DM construction and coarse comparison, despite its spectral-sequence heading; §10.2 component bounds |
| EtaleDualityAndPerverseSheaves | §1.3:1158 Chow classes; §§4.3:4218 and 4.7:4658 complete intersections; §§8.1:7552 and 8.2:7598 signs, generalized-eigenspace multiplicities and poincareReciprocityExport. It explicitly leaves zeta assembly to WC.2 |
| ComplexComparisonPartII | §§C6.3–C6.6:4157,4216,4257,4323 supply the finite, compact, relative and rational Artin comparisons, preserving products and finite actions; no unrelated-fibre identification is supplied |
| AbelianSchemesAndArithmeticModuli | §A4.4:1940 gives the torsion/Tate H¹ comparison and rank 2g, with ordinary cohomology, invertible ℓ and coherent coefficient towers |
| AlgebraicCurves (main) | Layers 7,10,12 at README:783,1193,1468 supply Hurwitz, Artin–Schreier ramification and model/place/genus interfaces; the y²+y=x⁵ example uses these rather than treating its affine chart as proper |
| ReductiveGroupsPartII | §RG2.3.7:5201 states Lang surjectivity and H¹(k,H)=1 for smooth connected groups; its disconnected C₂ counterexample agrees with WC.1 |
| ArithmeticGaloisRepresentations | §§5.1:3147 and 5.3:3193 state density-one Frobenius density and continuous semisimple recognition; trace recognition retains characteristic-zero/invertible-factorial conditions |
| PadicHodgeTheory | §5.3:1016 period realization/potential semistability; §8.1:1378 proper smooth comparison and good-reduction crystallinity, including p=2 and no degree bound |
| PadicDifferentialEquationsAndRigidCohomology | RD.6.24:11990 and RD.7.4–7.5:13886,13914 establish R01–R02 overlap; RD.7.1–7.9 retain the linear q-Frobenius and degreewise comparison |
| ClassicalArithmeticCompletion (main) | §6.44 at README:13185, eventual Hankel criterion, as cited; no need to depend on its revision pull request |
| LocalFieldsRamification | Layer 0 at README:72 covers local fields and finite extensions/norms, the scope needed for Fatou |
| EllipticCurves (main) and pinned Tau Ceti | Layer 3 at README:683 and the opened point-count/Hasse modules fix the nonsingularity and infinity conventions |
| NeronModelsAndSemistableAbelianVarietiesPartII | §§2.1:3780,4.0:8828,4.5:8975,5.0:9406,5.2:9478 provide the fibration, common blowups, Jacobian rank-ten lattice, cohomology and rank-ten constancy criterion; §2.1 explicitly requires re-establishing regularity/minimality under base change |
| AnalyticToricGeometry (main) | Layer 0's fan, regular cone, semigroup and complex gluing contracts match the pinned toric objects; it is not a supplier of integral coefficients |
| Later ownership check, not a supplier | ShimuraCompactifications §0.16:751 and §0.17:777, arbitrary-ring fan schemes and properness. Moving the consumed ownership earlier is required by R03; no new upward citation is proposed |

Additional source checks: Deligne I (1.5.1)–(1.5.4) at `deligne-i lines 104–133` has the all-power compact-support trace formula and alternating determinant product; the extraction proof on printed pp. 276–277 at `lines 143–169` explicitly uses Galois-stable weights before integrality. Stacks tags 0C5H, 0C5R and 0C5S at `stacks lines 473–484, 2335–2337, 2390–2399` give surface indeterminacy resolution, factorization and common blowups with the regularity, dimension and properness assumptions used here. The latter two are on printed pp. 52–53.

No computational algorithm is requested by the README: the recurrences and finite enumerations are mathematical identities and small Checks. No copied source passage was detected in the sampled source comparisons. These statements do not certify that every unsampled reference has been compared line by line.

## Not verifiable

- **Fulton, Introduction to Toric Varieties, §§5.1–5.2** (`fulton-toric`): the sources service found no legal readable copy from the supplied bibliographic citation. The missing-text record is retained. The complete graded-ring presentation over every field and the cited complex cycle/cohomology comparison therefore remain uncertified against that book. The accessible Fulton–Sturmfels text verifies the additive invariant-cycle/character relations, not the whole book citation. This review is finished with that limitation; it is not parked awaiting a text.
- The nine `sorry` statements are signatures, not formal proofs. The numerical table and source/supplier checks support the stated contracts but do not implement their general mathematical proofs.
- Beyond the mandatory seeded target, the source audit read the cited Frobenius/sign/extraction passages, local Fatou proof, polynomial-count extension argument and toric example selectively. Other references were retrieved legally, not certified wholesale. No unavailable open-head file was used as evidence of absence.

## Source issues

- **Misprint** in milne at Lemma 27.10 proof, printed p. 158 (`milne line 6037`): the source says denominator reciprocal roots have absolute value strictly below one; it should be at most one, as f=1/(1−T) shows; affects the proof.
- **Gap** in milne at Summary 27.14(c) proof, printed p. 159 (`milne lines 6095–6096`): the source says algebraic-integral reciprocal roots imply integer polynomial coefficients; it should be supplemented by rationality of each factor, for example from Galois-stable weight separation; affects the proof.
- **Misprint** in stacks at tag 0C5R, Lemma 17.1 proof, printed p. 52 (`stacks line 2339`): the source says the isomorphism locus contains its own codimension-one points; it should be that it contains every codimension-one point of the target Y; affects the proof.

For the Milne gap, (1−√2T)(1+√2T)=1−2T² has integral product and coprime factors with integral reciprocal roots, but neither factor has rational coefficients. The roadmap's all-conjugates weight-separation argument supplies the missing step rather than repeating that inference.
