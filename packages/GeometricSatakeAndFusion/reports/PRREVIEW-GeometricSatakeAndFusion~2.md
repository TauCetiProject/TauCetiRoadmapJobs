# Review of GeometricSatakeAndFusion (pull request #1235 at 623fd52)

**Verdict:** accepted

No P1 or P2 finding remains. The five P3 findings below concern Checks and citation bookkeeping. The gate passes; this is readiness for human final approval, not an approval or merge.

## R01 (P3) — Complete the discriminating Checks for geometric definitions

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:520`, “it sends a `B⁺_dR-lattice Λ` to the ascending filtration”; also §§0.34 and 0.38, lines 902–913 and 989–1005.

**Claim:** The newly specified filtration has no API list or three local Checks. The cone chart has one Check, about its stabilizer. All three incidence Checks concern diagonal or empty relations and do not distinguish ordinary from Demazure multiplication.

**Witness:** For Λ=diag(t,1)A², Fil⁻¹=0, Fil⁰=ke₂, Fil¹=k². For two simple-reflection incidences on P¹(𝔽₂), a diagonal endpoint has 2 middle flags; distinct endpoints have 1. The present incidence Checks never compute these fibres.

**Repair:** Add the filtration's functoriality and flag API and three tests, including these three filtration values, the zero cocharacter, and the non-minuscule (2,0) dimension 2 versus flag dimension 1. Complete the cone tests with (0,0,0) satisfying its equation and (1,0,0) failing it; retain the nonunique-right-factor test. Add the two incidence counts above and distinguish s·s=1 from s*s=s. These tests exclude the reversed filtration and conflated product conventions without adding Lean padding.

## R02 (P3) — Record the cited works in the source manifest

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:2370`, “References”; the folder contains README.md, Suggested.lean and metadata.toml, but no sources.toml.

**Claim:** Fourteen works have edition-sensitive locators without the required persistent source records. This repeats previous R09; no supplied repair report marks it settled.

**Witness:** The 14 reference headings run from FS through DH. FS printed page 321 is physical PDF page 344 in the fetched edition. A URL and a blanket page convention do not record which text supplied that locator.

**Repair:** Add the required `tauceti-roadmap-sources/v1` manifest, one key per work, retaining the existing reference keys and the service's provenance, hash, legal-access status and version information. Record GLX as uncertified if only its publisher landing page is available. Record the He preprint and published locators under one key; the publisher copy is readable through OCR. Test that all 14 references resolve to exactly one entry each. This review has not edited that manifest.

## R03 (P3) — Remove the obsolete Drinfeld declaration identifier

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:1758` and 1772, “VStackSheavesAndLisseCategories VS1.5, `PerfectLocalSystem.drinfeld`”.

**Claim:** The named supplier section is valid, but the appended declaration identifier is absent from that supplier's README and Suggested.lean at its inspected head, and from both pinned libraries.

**Witness:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:551` instead has “Drinfeld’s lemma for perfect local systems”; lines 553–559 state the required perfect-local-system equivalence. Its Suggested.lean explicitly leaves Drinfeld descent unstatable.

**Repair:** Cite VS1.5, “Drinfeld’s lemma for perfect local systems”, in both places, without claiming a Lean declaration. The section supplies precisely the finite-I, prime-to-p torsion, geometric-base equivalence used here. This is a stale identifier, not an unowned prerequisite: the mathematical contract already exists, so no new gap or duplicate target is needed.

## R04 (P3) — Correct the FS page-conversion note

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:2376`, “PDF page `=` printed page”.

**Claim:** This rule is false for the cited author-hosted PDF in the later chapters.

**Witness:** FS line 12430 marks physical page 344 and line 12431 prints page 321. FS lines 12938–12939 mark physical page 359 and printed page 334. Even a single constant offset would not cover both.

**Repair:** Remove the global conversion rule, retain printed-page locators, and record the edition in the manifest. For the two sampled late references, explicitly use IX.2 printed p.321 (PDF p.344) and §IX.7.1 printed p.334 (PDF p.359). Both then land on the intended passages.

## R05 (P3) — Cite the source of the ascending filtration itself

**Location:** `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:526`, “3.4.4–3.4.6, pp. 685–686”.

**Claim:** Those results support the minuscule isomorphism and smoothness, but the explicit filtration introduced in line 520 occurs earlier.

**Witness:** CS lines 1433–1440, in the proof of Proposition 3.4.3 on printed p.684, give the increasing filtration and its ranks. Lemma 3.4.4 starts at CS line 1447 on p.685.

**Repair:** Add Proposition 3.4.3 and its proof, p.684, alongside 3.4.4–3.4.6. Preserve the stated inverse-cocharacter adapter. The formula at that locator gives ranks 0,1,2 at m=−1,0,1 for diag(t,1), agreeing with the repaired Check proposed in R01.

## Verified sound

The review read all 105 numbered targets, their API lists, Checks, conventions and dependencies, together with Suggested.lean. The table below records a concrete probe for each numbered target; extra rows cover the standing conventions and imported reconstruction. These computations test the specified statements and competing conventions; they are not claims of formal proofs of the future geometric library.

**Previous findings, checked first against this head.**

| Previous finding | New passage and witness | Disposition |
| --- | --- | --- |
| R01, convolution support | §2.4: “support is contained in the Minkowski sum”; the derived coefficient formula is explicit. Over ℤ/6, 3Λ⊗4Λ=0, giving ∅⊂{0}; over a field, rank-one fibres tensor to rank one. | Repaired. |
| R02, ramified-Witt supplier | Scope and §0.16 now cite “VectorBundlesAndIsocrystals Layer 0, ‘Ramified coefficient rings and coefficient changes’”. Its paragraph at README:92 supplies W(R) for ℚ_p and R[[t]] in equal characteristic. | Repaired. |
| R03, highest-weight suppliers | Scope and §§4.9–4.25 cite “ReductiveGroups §10B and LanglandsParameterStacks §4.1”; §4.24 distinguishes the restricted-prime theorem in §6.2. These sections exist and make the claimed distinctions. | Repaired. |
| R04, Frobenius degree | Conventions: “d_geo = -d_arith”; the three Checks give 3, 1/3, 1 for arithmetic Frobenius, geometric Frobenius and inertia at q=3. VS1.5 keeps arithmetic degree. | Repaired. |
| R05, local-model ordering | §0.37 now owns only the finite admissible union; §4.17 constructs the local model after normalized Satake and §4.18 handles functoriality. For μ=0 both fibres are the unit point. | Repaired. |
| R06, residue gate | Ordinary Markdown anchors replace the explicit HTML anchors. The supplied gate reports residue=0 and OK. | Repaired. |
| R07, fictitious own Lean names | Suggested.lean:35 has the required namespace; its declaration inventory is empty. The API is prose, and the gate reports readme-ids-missing=0. The separate supplier-name issue is R03 above. | Repaired. |
| R08, weak Checks | §0.2 adds noncommuting S₃ labels; §2.4 adds orthogonal idempotents; §3.3 computes all four parity signs. The filtration, cone and incidence definitions still have the defects in R01 above. | Partly repaired. |
| R09, manifest | Fourteen reference headings remain, with no sources.toml. | Not repaired; R02 above. |

**Gate, scope and elaboration.** The head was checked as `623fd5278cbfc0ae84991f65dd883bd71f3a7371`. The diff outside this folder is empty. The worker's gate has zero failures in all counters, including build, dependencies, imports, sorry-data, set_option, residue, stray-files, outside-folder and README identifier checks. The separately run dependency check returned:

```text
depcheck: 205 roadmaps, 1478 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Direct `lake env lean` elaboration of `TauCetiRoadmap/GeometricSatakeAndFusion/Suggested.lean` exited 0 with no warnings. There are zero declarations, so the requested `#check @name` inventory and one-tactic padding probe each have zero candidates. No Tau Ceti imports require a missing-object build. No worktree file was changed. There are no declared supplier gaps.

**Source sample: 15 targets.** Twelve other cited works and He’s preprint were obtained through the sources service; GLX remains publisher-paywalled. He’s published OCR text and rendered pp.9–10 were also checked against the preprint. No target is explicitly labelled unverified in the README.

| Sample | Text read and locator | Result of comparison |
| --- | --- | --- |
| 0.2 | FS lines 7374–7404, VI.1.6–1.7, printed p.193 | Two torsors and a punctured isomorphism; the double quotient retains inertia. |
| 0.5 | FS lines 7630–7667, VI.2.6, p.200 | Factorization is over distinct supports; collision labels add. The empty-leg unit is explicitly defined over the coefficient base. |
| 0.15 | CS lines 1433–1490, 3.4.3–3.4.6, pp.684–686 | Characteristic-zero untilt and minuscule hypothesis retained. Filtration direction agrees; add its own locator (R05). |
| 0.17 | BS lines 1290–1425, 7.1–7.9, pp.27–30 | Equal total length in dominance, columns #{λ_j>i}, isogeny cokernels and closed type bounds. The roadmap correctly includes Q=0 by using projective dimension at most one. |
| 0.20 | BS lines 1396–1460 and 1535–1578, Definition 7.9 and §8, pp.29–33 | Quotient ranks, not a spurious constant rank of Q/pQ on lower-type fibres; proper filtration space and Grassmann-bundle resolution. |
| 0.23 | BS lines 948–962, 1089–1104, 1181–1206, Propositions 6.1–6.2 and Theorem 6.8, pp.20–25 | Connected-fibre full faithfulness and fibrewise-trivial descent are separated from the stronger Rf_*O calculation for the resolution. |
| 0.27 | BS lines 1535–1578, 1669–1700, Theorem 8.3 and §8.4, pp.32–36 | Independent determinant/Keel contraction route, with boundary gluing and descent owned here. |
| 0.34 | ZHU lines 3328–3478, B.10–B.11, pp.486–488 | p>2 retained; A is unique but its right factor need not be; the two factorization slips are corrected in the roadmap. |
| 0.36 | BS lines 1821–1833, Proposition 10.5, p.39 | Surjectivity and section growth under Frobenius; the positive-dimension qualifier correctly excludes n=0,1. |
| 0.38 | HE published text lines 356–374, §5.3 and Proposition 5.6, pp.9–10; preprint lines 417–445 | Incidence, endpoint projection and the two dimension bounds agree; the simple quasi-split standing setting appears at HE lines 194–197. |
| 2.5 | FS lines 8556–8575, beginning of VI.8, p.224 | Multistep proper composition supplies associativity and unit; enhanced coherence is imported separately from EDS. |
| 4.6 | FS lines 9033–9073, VI.11.1 proof, p.236; DM lines 1125–1178, 2.20, 2.22–2.23, pp.24–26 | Tensor-generator finite type, connectedness and characteristic-zero semisimplicity are distinct inputs. |
| 4.16 | FS lines 7249–7256, VI.0.2, p.190; 8997–9012, VI.11.1, p.235; 12434–12454, IX.2, p.321 | The geometric base, continuous Weil representations, half twist and finite pinned quotient are kept distinct. |
| 4.17 | AGLR lines 1472–1483, 1878–1905, 1974–2036: 4.11–4.12, 6.7, 6.13, 6.16, pp.26,33,35–36 | Connected parahoric mixed-characteristic local models; no added tame/minuscule restriction. Generic Satake is used only at this late stage. |
| 4.19 | FS lines 12957–12973, §IX.7.1, p.334; VI.9.6 and VI.11.1 | Transport produces ι(m)t_M⁻¹t_G, which centralizes the Levi. The source's explicit geometric-degree correction is retained as the normalization to compare. |

**Adversarial computations.** Write A for a DVR, t for its uniformizer, k for its residue field, and Λ for a coefficient ring. A dash in the change column means the tested statement needs no change; “pass” concerns the displayed test, not an assertion that a finite example proves the theorem.

| Statement | Instances tried | Values computed on both sides / competing model | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: coefficients | E=ℚ₃ and E=𝔽₃((t)), R=𝔽₃ | W(R)=ℤ₃, mod 3=𝔽₃; equal-characteristic ring=𝔽₃[[t]], mod t=𝔽₃, 3=0 | Pass; p cannot be inverted in the second construction | — |
| Conventions: Cartier collisions | Two identical legs, weights (1,0) | Product equation t² has length 2; modification tA has length 1; extra weighting would give 2 | Pass | — |
| Conventions: Frobenius | q=3; arithmetic, geometric, inertia | (d_arith,d_geo)=(1,−1),(−1,1),(0,0); q^(−d_geo)=3,1/3,1 | Pass | — |
| Conventions: parity | (ε,η)=(0,0),(0,1),(1,0),(1,1), also char 2 | Signs 1,1,1,−1; all reduce to 1 in char 2 | Pass | — |
| 0.1 Loops | G_m over A, trivial group, affine line | 1∈A×; t∉A× but t,t⁻¹∈Frac(A)×; 0 excluded from G_m; trivial group has 1 loop | Pass | — |
| 0.2 Hecke stack | Additive ℤ and S₃ | (1,1) fixes 0 but has nontrivial label; (12)(23)=(123), reversed product=(132); identity inertia is diagonal H | Pass | — |
| 0.3 Grassmannian | G_m; GL₂ minuscule; unit | Components ℤ; dim P¹=1; punctured trivialization leaves 1 automorphism, versus H in Hecke stack | Pass | — |
| 0.4 Change of group | Identity; 1→G_m; norm-one quadratic torus | Maps n↦n and *↦0; regular-representation determinant equals norm=1 | Pass | — |
| 0.5 Ordered legs | Empty, distinct, colliding torus legs | Empty product=unit over base; distinct labels (1,2); collision=3, not pair (1,2) in two local DVR factors | Pass | — |
| 0.6 Schubert bounds | GL₂ μ=(1,0),(2,0),(1,1); G_m | Dimensions 1,2,0 from μ₁−μ₂; (1,1)≤(2,0), but torus 0≰1 | Pass | — |
| 0.7 Galois descent | Split torus and quadratic norm-one torus | Split weight 1 has orbit {1}; nonsplit weight 1 has orbit {1,−1}; singleton is not stable | Pass | — |
| 0.8 Affine flags/Demazure | Empty word with ω; one simple reflection | Empty tower=point labelled ω, not always identity; one-step fibre=P¹, dimension 1 | Pass | — |
| 0.9 Étale lifts | Identity étale algebra; a split two-sheet cover | Lift of chosen identity section=1 choice; choosing either residue sheet gives its own unique lift, not two lifts of one section | Pass | — |
| 0.10 Smooth loops | Affine line and rank-zero smooth point | One-jet relative tangent ranks 1 and 0; dualizing shifts [2](1) and [0](0) | Pass | — |
| 0.11 Congruence filtration | GL₂, m=1, X=E₁₂,Y=E₂₁ | (1+tX)(1+tY)=1+t(X+Y)+t²XY; mod t² quotient adds X+Y, rank 4 | Pass; m≥1 matters | — |
| 0.12 Truncated loops | G_m and GL₂ at depths 1,2 | Dimensions 1,2 and 4,8; kernel increments 1 and 4; G_m length-two unit has nonzero constant term | Pass | — |
| 0.13 Open cell smoothness | GL₂ μ=(1,0),(2,0); torus | Dimensions 1,2,0; tangent Lie-weight count agrees with ⟨2ρ,μ⟩ | Pass | — |
| 0.14 Finite truncation | Λ=diag(t²,1)A² | 1+t²E₁₂ preserves Λ; 1+tE₁₂ sends e₂ outside Λ. Depth 2 suffices, depth 1 fails | Pass | — |
| 0.15 BB map | Λ=diag(t,1)A²; μ=0; μ=(2,0) | Fil ranks at −1,0,1 are 0,1,2, with middle ke₂; μ=0 flag is a point; non-minuscule cell dim 2≠flag dim 1 | Pass; discriminating examples absent locally | R01, R05 |
| 0.16 Witt lattices | n=0; B=K field; zero module in K¹ | Rank-zero lattice count=1; full-span submodule of Kⁿ is Kⁿ; zero rank-one span=0≠K | Pass, including the zero-ring rank-zero case | — |
| 0.17 Torsion types | λ=(2,1,0), zero, (1,0,0) | Column ranks 2,1,0; total length 3; zero columns all 0; (1,0,0) has length 1≠3 and is not below λ | Pass | — |
| 0.18 Finite jets | n=1,N=0 and N=1; h>N | h=1,N=0 gives unit lattice; at N=1,h=2 multiplication by p is distinguished from 0, whereas h=1 loses it | Pass | — |
| 0.19 Perfect algebraic space | Zero bound; GL₂ λ=(1,0) | Moduli are point and perfected P¹; dimensions 0 and 1 in both quotient and lattice descriptions | Pass | — |
| 0.20 Demazure filtration | λ=(2,1,0); lower type Q=k³ | Successive quotient ranks 2 then 1; first choices Gr(2,3)=P², dimension 2, not a unique quotient | Pass | — |
| 0.21 Resolution fibres | Exact type; lower type Q=k³ above | Exact type has its unique canonical filtration; lower fibre=P², connected, H⁰(O)=k | Pass | — |
| 0.22 Witt-bundle descent | Trivial v-cover; W_m(𝔽_p) and rank 0 | Identity descent recovers (ℤ/p^m)^r; inverse limit=ℤ_p^r; r=0 gives zero at every stage | Pass | — |
| 0.23 Fibral descent | P¹_perf→point; O, O(1) | H⁰(O)=k; O has fibre degree 0 and descends; O(1) has degree 1 and does not descend | Pass; stronger Rf_*O statement kept separate | — |
| 0.24 Determinant line | Quotient line; zero quotient | Universal quotient determinant=O(1), degree +1; zero determinant=unit, degree 0; inverse has degree −1 | Pass | — |
| 0.25 Positivity | One-step Grassmannian; contracted resolution curve | Schubert-line degree +1; contracted-curve pullback degree 0, not +1 | Pass; nef does not mean ample on resolution | — |
| 0.26 Frobenius/Keel | P¹, O(1), O, O(−1), p=2 | Frobenius degrees 1→2→4; exceptional locus ∅ for O(1), whole P¹ for O; O(−1) degree −1 fails nefness | Pass | — |
| 0.27 Projectivity | n=1 zero/positive bound; n=2 λ=(1,0) | Rank-one bound=point; second example=P¹_perf with model degree 1 determinant and dim 1 | Pass | — |
| 0.28 Perfect models | A¹ and absolute p-Frobenius | Perfected Frobenius is an isomorphism; ordinary finite model has degree p, so top-cycle normalization changes by p, not 1 | Pass | — |
| 0.29 Equal characteristic | W(𝔽_p) versus 𝔽_p[[t]], GL₂ μ=(1,0) | p-adic versus t-adic length of diagonal lattice is 1; both special bounds=P¹_perf; p=0 only in second ring | Pass | — |
| 0.30 Integral families | μ=0 and GL₂ μ=(1,0) | Generic/special dimensions (0,0) and (1,1); zero bound gives unit on both fibres | Pass | — |
| 0.31 Flags/components | G_m; affine simple reflection | Component labels ℤ, not singleton; simple-reflection Schubert variety=P¹_perf, dimension 1 | Pass | — |
| 0.32 Parahoric properness | Hyperspecial zero bound; Iwahori simple reflection | Proper fibres point and P¹_perf; dimensions 0 and 1 | Pass | — |
| 0.33 Canonical models | One quotient line and standard lattice | Hodge quotient determinant=O(1), degree +1; zero modification determinant=unit; on 𝔽₂[ε]/ε², ε≠0 but Frobenius kills ε, so perfection forgets the thickening | Pass | — |
| 0.34 Cone | p=3, A=3I, g=I+9E₁₂ mod 27; cone points | Ag=A since 3·9=0 mod27, det g=1, g≠I; (0,0,0) gives 0=0, (1,0,0) gives 1≠0 | Pass | R01 |
| 0.35 Normalized determinant | Standard lattice; common added quotient T; equal characteristic | det(T)⊗det(T)⁻¹=unit; standard ratio=1; 𝔽_p[[t]] has p=0 and is excluded from p-power truncation | Pass | — |
| 0.36 Sections | n=0,1; P¹_perf at p=2 | Point section dimension 1; Frobenius stages O(1),O(2),O(4) have dimensions 2,3,5, unbounded; evaluation at point has rank 1 | Pass | — |
| 0.37 Admissible loci | μ=0; split torus μ=1 | Label sets {1_W} and {translation 1}; translation 0 is absent in second case | Pass | — |
| 0.38 Incidence | u=v=s on P¹(𝔽₂); diagonal first relation | Equal endpoints: 2 middle flags; distinct endpoints: 1; diagonal first relation: 1 forced middle flag | Pass; existing Checks miss product distinction | R01 |
| 0.39 Fibre bounds | u=v=s; length-additive u=1,v=s | Ordinary ss=1 lower bound (1+1−0)/2=1, fibre A¹; Demazure s*s=s lower bound 1+1−1=1, fibre G_m; additive case fibre point, dim 0 | Pass in the source's geometric setting | — |
| 1.1 Divisor length | f=1,0,t³; two coincident legs ξ=t² | Lengths 0,∞,3; length A/(ξ³)=6; ∞+1=∞, never 0 | Pass | — |
| 1.2 Lattice position | L=A,t³A,t⁻¹A; ξ=t² | Positions 0,3,−1; ξ^aA has position 2a, not a; each is rank-one projective | Pass | — |
| 1.3 Constant terms | Torus; PGL₂ minuscule; collision (1,0) | Identity CT on torus; two extremal shifted fibres have rank 1 and others 0; collision label=1, not 2 | Pass | — |
| 1.4 Affine intersections | PGL₂ minuscule with λ=±μ | Intersections A¹ and point have dimensions 1 and 0 =⟨ρ,μ+λ⟩; other component gives empty intersection, no dimension assertion | Pass | — |
| 1.5 MV cycles | Same two minuscule intersections | Top compact degrees before shift 2 and 0; after [1], degrees 1 and −1; one top component each gives rank 1 | Pass | — |
| 1.6 Prounipotent invariance | Additive unipotent line; rank 0 | Ordinary cohomology of A¹ is Λ in degree 0; compact cohomology is Λ(−1)[−2], not degree 0; rank-zero group acts trivially | Pass; ordinary/compact distinction retained | — |
| 1.7 Conservativity | Torus weight 1 object and zero object | CT rank 1 versus 0; vanishing of all weight fibres detects exactly the zero object here | Pass | — |
| 1.8 ULA | Torus point, Λ=ℤ/4, [Λ→²Λ] | Perfect two-term complex; H⁻¹=(2)≅𝔽₂ and H⁰=𝔽₂, neither projective over Λ | Pass; ULA alone does not imply projective cohomology | — |
| 1.9 ULA recognition | Point: Λ[0] and [Λ→²Λ] | Both have perfect CT, amplitudes [0,0] and [−1,0]; finite projective individual cohomology is only true for first | Pass | — |
| 1.10 One-leg comparison | Unit; minuscule GL₂ | Units have rank 1 on generic/special fibres; P¹ and P¹_perf have cohomology ranks 1 in degrees 0,2 on each | Pass | — |
| 1.11 Relative perversity | Point and smooth one-dimensional cell | Λ[0] perverse on point; Λ[1] perverse on curve, Λ[0] fails curve normalization | Pass | — |
| 1.12 Equivariant perversity | Connected additive stabilizer; torus weight | Stabilizer ordinary H⁰=Λ; forgetful functor preserves rank-one point object; shifted CT has degree 0 | Pass | — |
| 1.13 Flat perversity | ℤ/4 and M=ℤ/2; field k | (2)⊗M≅𝔽₂ maps to 0 in Λ⊗M≅𝔽₂; field k has Tor₁=0; two-term perfect complex has H⁻¹≠0 | Pass | — |
| 1.14 Standard/costandard | Unit; minuscule; A₁ cone mod2 | Unit comparison=identity; minuscule Δ=∇=Λ[1]; intersection form [−2] has rank 0 over𝔽₂, yielding 1-dimensional kernel and cokernel | Pass | — |
| 1.15 Demazure stratification | Empty word; s; SL₃ word s₁s₂s₁ over identity | Fibres point, point, P¹; final fibre strata A¹+point give H⁰,H² ranks 1,1 | Pass | — |
| 1.16 Rational parity/torsion | Torus; A₁ cone at ℓ=2 and rationally | Torus kernel=cokernel=0 so exponent 0; cone form −2 invertible rationally and zero mod2, so mod2 defects have dimension 1 each | Pass | — |
| 1.17 Rational weights | A₂ highest-root representation | Nonzero weights: six roots with multiplicity 1; zero multiplicity=rank 2; total dimension 8 | Pass; infinity contribution cannot be discarded | — |
| 2.1 Satake category | Torus: k[0], k[1], zero | k[0] flat perverse; k[1] fails heart condition; zero is a valid zero object | Pass | — |
| 2.2 Cohomology | Unit; minuscule P¹ with Λ[1] | Total ranks 1 and 2; minuscule cohomology degrees −1,+1, each rank 1 | Pass | — |
| 2.3 Verdier dual | P¹, A=Λ[1]; torus point | D(A)=Λ[1](1); point dual of rank r remains rank r; duality alone does not invert torus weight | Pass | — |
| 2.4 Convolution | Torus weights 1,2 over field; 3Λ,4Λ over ℤ/6 | Weight sum=3, tensor rank 1; orthogonal projectives tensor to 0, support ∅⊂{0} | Pass; previous false equality repaired | — |
| 2.5 Associativity/unit | Torus weights 1,2,−1 and unit weight 0 | (1+2)+(−1)=1+(2−1)=2; 0+1=1=1+0; rank product (2·3)·4=2·(3·4)=24 | Pass | — |
| 2.6 Rational semismallness | Two minuscule PGL₂ factors | Source dimension 2; fibre over unit=P¹ dimension 1; 2·1=2−0, equality in semismall bound | Pass | — |
| 2.7 ULA convolution | Torus point projectives ranks 2,3 | Tensor rank 6 and Tor_i=0 for i>0; derived tensor of orthogonal ℤ/6 projectives=0, still perfect | Pass | — |
| 2.8 Nonpositive convolution | Λ=ℤ/4, M=𝔽₂ on point | Derived M⊗M has Tor₁≅𝔽₂ in degree −1 and no positive cohomology; heart closure would fail without flatness | Pass | — |
| 2.9 Satake closure | Point projectives; nonflat negative control | Projectives tensor in degree 0; M=𝔽₂ overℤ/4 has degree−1 Tor and is excluded | Pass | — |
| 2.10 Duals | Torus weight 2 rank-one object | Internal dual weight −2; product weight 0 and evaluation scalar 1; Verdier-only dual would leave weight 2 | Pass | — |
| 2.11 Modular convolution cycles | Minuscule powers n=0,2,4,6 in char2 | Top-cycle/invariant ranks 1,1,2,5; at n=4 normalizer gives 3, not 2; source dimensions 0,2,4,6 | Pass | — |
| 2.12 One-leg Satake | Unit and minuscule special/generic pair | Fibre ranks 1 and 2 preserved; duals have the same ranks and reversed torus labels | Pass | — |
| 3.1 Disjoint locus | Two legs, same versus distinct untilts; empty I | Same untilt excluded for distinct blocks; distinct pair included; empty product=Spd k | Pass | — |
| 3.2 Collision restriction | Smooth codimension-one diagonal | Purity term begins in degree 2=2·1; codimension-zero component would begin in degree 0 and is excluded | Pass | — |
| 3.3 Support parity | PGL₂ zero, one and two minuscule weights | Dimensions 0,1,2 give parities 0,1,0; simple-coroot difference pairs to 2≡0 | Pass | — |
| 3.4 Fusion symmetry | Two odd rank-one graded vectors | Koszul swap −1 times component correction −1 gives ordinary swap +1; double swap=1 | Pass | — |
| 3.5 Finite-set coherence | Three torus legs 1,2,3; empty fibre | Both parenthesizations yield weight 6; empty fibre weight 0 is tensor unit; permutation preserves 6 | Pass | — |
| 3.6 Weil realization | I=∅; rank-one Frobenius ±1 over𝔽₉ | Empty geometric-base fibre is a module; with a leg, +1≠−1 as Weil actions although both underlying ranks are 1 | Pass mathematically; supplier identifier stale | R03 |
| 3.7 Symmetric CT | Torus identity; minuscule PGL₂ | Identity preserves swap +1; two extremal shifted weight fibres rank 1 with ordinary symmetry +1 | Pass | — |
| 3.8 Fusion/duality | Torus weights 1,2 | Dual of convolution weight −3; convolution of duals (in reverse order) −2−1=−3 | Pass | — |
| 4.1 Bounded adjoints | Torus bounds {0}⊂{0,1}, two legs | Generator ranks 1,2; two-leg rank 4; transition (a,b)↦a dualizes to c↦(c,0) | Pass | — |
| Imported reconstruction | C=A,F=id; finite-support ℤ-graded modules | Coordinate coalgebra=unit in first case; second Δ(zⁿ)=zⁿ⊗zⁿ, ε(zⁿ)=1,S(zⁿ)=z⁻ⁿ | Pass; dualization direction explicit | — |
| Imported recognition | G_m, constant C₂, infinite product of G_m | Tensor generator exists for first two; C₂ sign has tensor square 1; infinite product needs infinitely many independent characters and has no finite tensor generator | Pass | — |
| 4.2 Relative hypotheses | Torus finite bound; orthogonal idempotent summands | Forgetful functor detects zero weightwise; split coequalizer of 1,1 on Λ is Λ with identity quotient, preserved and reflected | Pass on test; distinct categorical hypotheses retained | — |
| 4.3 Hopf algebra | G=G_m and G=1 | Λ[z,z⁻¹] versus Λ; Δ(z)=z⊗z, S(z)=z⁻¹, multiplication z·z⁻¹=1 | Pass | — |
| 4.4 Multileg/scalars | Two torus legs; Λ→Λ′ | Algebra Λ[z±,w±]; base change gives Λ′[z±,w±]; tensor generator rank 2·2=4 | Pass | — |
| 4.5 Rational semisimplicity | SL₂ standard square in char0 | V⊗V=Sym²V⊕Λ²V with dimensions 3+1=4; no integral semisimplicity asserted at2 | Pass | — |
| 4.6 Generic reductivity | SL₂ and disconnected constant C₂ | SL₂ highest weight n has tensor-power highest weight mn, unbounded for n>0; C₂ sign powers only 1/sign, failing connectedness test | Pass | — |
| 4.7 Rational Witt Tannaka | Torus and PGL₂ minuscule | End(unit)=Qℓ; fibre dimensions 1 and 2; rank2 object generates SL₂ representations | Pass | — |
| 4.8 Torus/rank one | G_m, PGL₂, SL₂ | Duals G_m, SL₂, PGL₂; minuscule PGL₂ fibre dim2 has determinant Λ(−1), and normalized determinant 1 | Pass | — |
| 4.9 Frobenius subgroups | μ_(2^a); N(T)⊂SL₂ in char2 | a-th Frobenius image of μ_(2^a)=1; V^⊗4 invariant dimensions N(T)=3, SL₂=2 | Pass | — |
| 4.10 Integral rank one | a=0,1 in n=6·2^a−2 | n=4,10; A=T(0),T(2); T(4) has character ∇4+∇2, dim 5+3=8, zero-weight dim2, SL₂-invariants0, N(T)-invariants≥1 | Pass; stronger modular route excludes normalizer | — |
| 4.11 Root datum | PGL₂ versus SL₂ | Dual root/coroot lattices exchange; minuscule weight pairs with 2ρ to1 for PGL₂, simple coroot pairs to2 | Pass | — |
| 4.12 Integral recovery | Identity, ×π, ℤℓ→ℚℓ, π=1 | Identity passes both; ×π reduction=0 on nonzero R/π; inclusion reduction R/π→0 fails; π=1 localization already equals f | Pass | — |
| 4.13 Integral group recovery | SL₂, centre μ₂ at ℓ=2 | Generic dim3 and special dim3; μ₂ special fibre nonreduced but central grading still ℤ/2, not a torus grading | Pass | — |
| 4.14 Pinned dual | Rank-one root generator scaled by u | Marked generator x maps to x; rescaling x↦ux differs for u≠1, so unmarked group isomorphism is insufficient | Pass | — |
| 4.15 Rational Witt Satake | PGL₂ minuscule and its square | Standard character z+z⁻¹; square z²+2+z⁻²=(z²+1+z⁻²)+1, dimensions 4=3+1 | Pass | — |
| 4.16 Normalized equivalence | PGL₂ minuscule; torus; empty legs | Cohomological eigenvalues r⁻¹,r; r↦−r negates both; torus t_G=1; I=∅ yields finite projective modules over geometric base | Pass; no arbitrary finite Q substituted for W_E | — |
| 4.17 Local models | μ=0; GL₂ μ=(1,0); torus weight1 | Generic/special point and point; P¹ and P¹_perf both dim1; torus special label1≠0 | Pass | — |
| 4.18 Model functoriality | Identity; Iwahori→parahoric | Label w fixed under identity; w and ws map to same parahoric coset when s is in that parahoric Weyl group | Pass on instance; GLX text uncertified | — |
| 4.19 Levi normalization | M=T⊂PGL₂; three nested Levis | t_M=1, correction diag(κ,κ⁻¹); composing corrections (t_L⁻¹t_M)(t_M⁻¹t_G)=t_L⁻¹t_G, not its inverse | Pass algebraic transport | — |
| 4.20 Adjoint-isomorphism maps | SL₂→PGL₂ | Component groups 0→ℤ/2; image is even component, not all components; rank-one adjoint group unchanged | Pass | — |
| 4.21 Products | G_m×G_m | Weights (a,b); fibre rank product 2·3=6; interchange of factors sends (1,2) to(2,1) | Pass | — |
| 4.22 Weil restriction | Unramified quadratic E′/E, H=G_m | Dual torus G_m²; Frobenius swaps (a,b)↦(b,a); dimensions 2 versus1 rule out forgetting conjugate factor | Pass | — |
| 4.23 Chevalley sign | Rank-one root vector; torus | PGL₂ adjoint torus element ρ(−1) acts by −1 on root coordinate; sign becomes+1 in char2; torus inversion n↦−n | Pass | — |
| 4.24 Perfect representation interface | Trivial group, torus weight1, dual PGL₂ atℓ=2 | Trivial case Perf(Λ); torus shifts preserve weight1≠−1; the order of π₁(PGL₂)_tors is 2, so excluded-prime generation cannot be invoked | Pass scope and base-change specialization | — |
| 4.25 Perfect Satake | Unit, V[1], V⊕W | Images unit, D(S_V)^∨[1], direct sum of images; no essential-image equality follows from these values | Pass | — |
| 4.26 Trace | Unit; PGL₂ minuscule with geometric Frobenius | Raw open trace −r⁻¹; parity-corrected trace +r⁻¹; unit +1; scaling descent by c scales both by c | Pass | — |
| 4.27 Trace convolution | Torus weights1,2; vol(K)=1 | 1_(πK)*1_(π²K)=1_(π³K); geometric product weight3 has same trace1 | Pass | — |
| 4.28 Constant-term trace | Split PGL₂ minuscule; torus | S(1_KμK)=r(z+z⁻¹); multiplying r⁻¹ gives z+z⁻¹; torus δ=1 and S(zⁿ)=zⁿ | Pass | — |
| 4.29 Classical comparison | PGL₂ minuscule; G_m weight n | Both paths z+z⁻¹ and zⁿ respectively; omitting parity correction gives −z−z⁻¹ | Pass | — |

The characteristic-two invariant counts were independently recomputed by imposing torus weight zero and every polynomial coefficient of the upper-unipotent action on V^⊗n, rather than testing only the finite group SL₂(𝔽₂). For n=0,2,4,6 this gives 1,1,2,5; imposing just the normalizer's weight exchange gives 1,1,3,10. Thus the n=4 comparison really distinguishes the algebraic groups.

**Pinned-library audit.** Pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Object searches covered loop/Hecke/Grassmannian carriers, Witt vectors and perfection, flat/projective modules, perverse/ULA categories, tensor reconstruction and group schemes. They found ordinary algebraic and categorical carriers, not the geometric Satake categories. The following 27 declarations were opened at the pins; paths start at the respective dependency root.

| Declaration | File and line | Content and limit used in this review |
| --- | --- | --- |
| `WittVector` | `Mathlib/RingTheory/WittVector/Defs.lean:52` | Sequence carrier; neither a lattice moduli scheme nor ramified Witt coefficients. |
| `PerfectRing` | `Mathlib/FieldTheory/Perfect.lean:44` | Bijectivity of the power map; characteristic p is an additional hypothesis. |
| `Perfection` | `Mathlib/RingTheory/Perfection.lean:39` | Inverse Frobenius-compatible sequences; not coordinate-ring direct-colimit perfection. |
| `Module.Projective` | `Mathlib/Algebra/Module/Projective.lean:70` | Projectivity of a module; finite generation is separate. |
| `Module.Flat` | `Mathlib/RingTheory/Flat/Basic.lean:113` | Tensor exactness predicate, not perfection of individual cohomology of an arbitrary perfect complex. |
| `Module.Flat.iff_lTensor_preserves_injective_linearMapₛ` | `Mathlib/RingTheory/Flat/Basic.lean:147` | The smallness binder in the injectivity criterion is retained by the supplier contract. |
| `Module.Free` | `Mathlib/LinearAlgebra/FreeModule/Basic.lean:43` | Existence of a basis; not a specified basis and not finite rank. |
| `Module.Finite` | `Mathlib/RingTheory/Finiteness/Defs.lean:121` | Finite generation of the top submodule. |
| `Representation` | `Mathlib/RepresentationTheory/Basic.lean:48` | Monoid homomorphism to endomorphisms; no continuity or finite projectivity built in. |
| `CategoryTheory.ActionCategory` | `Mathlib/CategoryTheory/Action.lean:48` | Category of elements; keeps morphism labels, unlike an orbit set. |
| `Action` | `Mathlib/CategoryTheory/Action/Basic.lean:44` | An object and an endomorphism-valued monoid homomorphism. |
| `CategoryTheory.ObjectProperty.FullSubcategory` | `Mathlib/CategoryTheory/ObjectProperty/FullSubcategory.lean:39` | Object predicate only; all ambient morphisms retained. |
| `CategoryTheory.Triangulated.TStructure` | `Mathlib/CategoryTheory/Triangulated/TStructure/Basic.lean:54` | Pretriangulated t-structure; no geometric relative-perversity predicate. |
| `CategoryTheory.Triangulated.TStructure.heart` | `Mathlib/CategoryTheory/Triangulated/TStructure/Heart.lean:44` | Intersection of the degree-zero aisles. |
| `CategoryTheory.Triangulated.TStructure.Heart` | `Mathlib/CategoryTheory/Triangulated/TStructure/Heart.lean:57` | Fully faithful additive identification with that object property; not itself a new abelian-heart theorem. |
| `CategoryTheory.LeftRigidCategory` | `Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean:712` | HasLeftDual field. |
| `CategoryTheory.RigidCategory` | `Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean:732` | Both right and left dual structures. |
| `CategoryTheory.GrothendieckTopology` | `Mathlib/CategoryTheory/Sites/Grothendieck.lean:72` | Covering sieves and three axioms; no v-topology construction. |
| `HopfAlgebra` | `Mathlib/RingTheory/HopfAlgebra/Basic.lean:65` | Both antipode convolution identities; commutativity of the algebra is separate. |
| `TauCeti.AlgebraicGeometry.InvertibleSheaf` | `TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:112` | Rank-one module-sheaf carrier; does not supply Witt determinant descent or ampleness. |
| `TauCeti.AffineGroupSchemeCat` | `TauCeti/AlgebraicGeometry/AffineGroupScheme/Basic.lean:55` | Affine group objects over Spec of a commutative ring. |
| `TauCeti.reductiveAffineGroupSchemeProperty` | `TauCeti/AlgebraicGeometry/AffineGroupScheme/Reductive/Basic.lean:66` | Field and finite-type hypotheses, not arbitrary integral models. |
| `TauCeti.ReductiveAffineGroupSchemeCat` | `TauCeti/AlgebraicGeometry/AffineGroupScheme/Reductive/Basic.lean:89` | The corresponding full subcategory over a field. |
| `TauCeti.Tannaka.tensorAutFunctor` | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:63` | Assumes a given bialgebra over a commutative ring. |
| `TauCeti.Tannaka.pointsFunctorIsoTensorAutFunctor` | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138` | Given commutative Hopf algebra over a field; comparison after reconstruction. |
| `TauCeti.Tannaka.reconstructedPoint` | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/Reconstruction.lean:89` | Reconstructs a point of the already given Hopf algebra, not that algebra from an arbitrary category. |
| `TauCeti.TitsSystem.bruhatCell` | `TauCeti/GroupTheory/TitsSystem/Bruhat/Basic.lean:100` | A double-coset set; not the scheme/diamond Schubert stratification. |

The split-coequalizer classes were also read in `Mathlib/CategoryTheory/Monad/Monadicity.lean:254`, `:270`, `:284`: existence, preservation and reflection are different obligations. Elementary categories, sheaves, adjunctions, monoidal structures, proper morphisms, valuation rings, root pairings and colimit carriers were located at the pins as well. Nothing in Suggested.lean re-declares them.

**Ownership and supplier audit.** Object searches used `roadmaps grep`, `roadmaps show`, main, the board's package designs, and the available sibling heads. The main versions were used for existing SchemeAndStackFoundations, ReductiveGroups, ReductiveGroupsPartII, AlgebraicVectorBundles, EnhancedDerivedSheaves, ClassFieldTheory and EtaleCohomologyFoundations; new-folder supplier heads were used where no main folder exists. AlgebraicVectorBundles, EtaleCohomologyFoundations and ReductiveGroups supplied the shape comparisons. All Needs lines were read, including the internal forward references explicitly reordered in “How to read the build”.

The following 21 supplier contracts resolve. A range below refers to the named sections in that README, not to an invented declaration at the pins.

| Supplier and verified locator | Contract retained here |
| --- | --- |
| `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:92`, Layer 0 | Ramified strict lifts and equal-characteristic power-series coefficients; geometric completion remains separate. |
| `TauCetiRoadmap/RelativeFarguesFontaine/README.md:1485`, §§3.7–3.9; :1748, §§4.7–4.13; §§6.5–6.10,6.16,7.0–7.6 | Finite-thickening descent versus completed algebraization; disjoint products; geometric DVRs; exact gluing and torsor descent. Its §7.4 receives the Grassmannian application while supplying torsor change of group: no reverse prerequisite is imported. |
| `TauCetiRoadmap/ReductiveGroupsPartII/README.md:943`, RG2.0a; :1445, RG2.1; :3760, RG2.3; :5509, RG2.4; :6704, RG2.5 | Weil restriction, relative Lie/root data, parahoric/jet geometry, affine Weyl decompositions, pinned integral dual data. |
| `TauCetiRoadmap/ReductiveGroups/README.md:1759`, §10B and Layers 1,3,6,7,9 | Highest-weight objects and absolute reductive/Hopf theory; not this roadmap's Satake reconstruction application. |
| `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215`, :228, :254, L0A–L0C | Module-sheaf tensor, finite locally free sheaves, determinants; no duplicate exterior-power construction here. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:848`, :1565, :1604, :1640, :3959, :5448, :5706 | Approximation, perfection/pfp schemes, Witt schemes, derived quasi-coherent carriers, Stein factorization and Hilbert/Quot. The Noetherian finite-model hypotheses are not transferred to arbitrary perfect rings without descent. |
| `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:525`, VS1.5; VS0–VS1,VS3 | Quotient-stack operations, ULA and hyperbolic localization, geometric-base Drinfeld realization, lisse enhancement; stale appended identifier is R03. |
| `TauCetiRoadmap/DiamondSixOperations/README.md:872`, S4.4; :971, S5.2; :1070, S5.5; :1149, S6.1; S2–S3,S6.2–S6.3 | Representable smooth/proper/duality calculus, supplemented by VS for Artin quotient maps. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:1121`, E3.1–E3.4; :1597, :1624, E5:presentability; :2399, E2.8 | Coherent correspondences, Ind/presentable categories and perfect-scheme h-descent. E2.8 does not already construct finite/formal Witt-bundle v-descent. |
| `TauCetiRoadmap/EtaleDualityAndPerverseSheaves/README.md:2199`, §2.7; :2546, §2.10; :2785, §2.12; :5106, :5343, :5524, §§5.3,5.5,5.6 | Perverse normalization, semismallness and rational weight/decomposition theory, with integral and rational claims separated. |
| `TauCetiRoadmap/MotivesAndAlgebraicCycles/README.md:1100`, :1114, :1133, :1146, §§6.1–6.4 | General neutral/relative reconstruction, dual coalgebra assembly, marked fibres, finite-type and connectedness recognition. Satake verifies their hypotheses; it does not rebuild these general theorems. |
| `TauCetiRoadmap/LanglandsParameterStacks/README.md:198`, §0.4; :918, §4.1; :1293, §6.2 | Degree negation and Tate values; good-filtration tensor theorem; distinct restricted-prime parameter-stack generation. |
| `TauCetiRoadmap/SmoothRepresentationsOfLocalGroups/README.md:3108`, SR.4.1 | Independent classical transform δ_P^(1/2)∫f(tn)dn; the geometric comparison is owned here. |
| `TauCetiRoadmap/ClassFieldTheory/README.md:1532`, Layer 9 | Arithmetic-Frobenius degree, inertia and local Weil group; the negation adapter comes from LP0.4. |
| `TauCetiRoadmap/AdicCoefficientsAndComparisons/README.md:720`, L0; :787, L1; :1468, :1543, L3 | Rational/adic coefficients, characteristic-p diamondification, full faithfulness and proper-support comparison on finite models. |
| `TauCetiRoadmap/DiamondsAndVStacks/README.md:4885`, D3.5; :9035, D6.5; :9119, D6.6; :9410, D6.8 | Étale v-descent, site comparison and pre-adic topology. |
| `TauCetiRoadmap/CrystallineCohomology/README.md:968`, CR.1.2; :11235, CR.7 | Crystal evaluation and finite-projective coefficient comparisons. |
| `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:3060`, R07.2; :8289, R07.6 | Contravariant Dieudonné theory and deformation input; the Demazure/Hodge determinant adapter remains local work. |
| `TauCetiRoadmap/PadicHodgeTheory/README.md:1225`, §7.1 | Structural-period filtered connections, with decreasing filtration distinguished from the ascending BB filtration. |
| `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:501`, :536, IG.0.T2–T3 | Finite/rational Grothendieck–Lefschetz on separated finite-type finite-field schemes with Frobenius descent; not arbitrary diamonds. |
| `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:1110`, F.10.2b; :1297, F.10.3 | `VanishingCycles.frobeniusCohomology`, `PerfectComplex.lefschetzNumber`, `PerfectComplex.filteredTraceAdditivity` really are supplier targets. The resolver's three pin-only missing-name leads do not show missing inputs. |

For the newly owned general work, searches by Witt-bundle descent, connected-fibre descent, Keel semiampleness, convolution and rank-one Frobenius images found no earlier owner of these precise retained constructions. AlgebraicModuliForArithmeticGeometryPartII's positivity programme explicitly separates its numerical criterion from Keel contraction/gluing. SchubertGeometry concerns finite-root-datum flag schemes and word resolutions; the present targets concern affine/Witt loop flags. QWittVectors concerns coefficient-ring/de Rham extensions, not Witt lattice moduli. These are distinctions of objects, not merely declaration names.

`packages/GeometricSatakeAndFusionPartII/design/README.md` assigns the independent rational Gelfand continuation to a downstream branch in its final routing ledger. It is not a supplier to this proof. Thus the base roadmap's choice of fusion symmetry is not an upward dependency. The downstream local-model programme concerns further scheme representatives and normality, whereas §4.17 here constructs the v-closure and admissible special fibre. No fully qualified declaration collides with a sibling file because this Suggested.lean has no declarations.

**Headline coverage.** The README's deep endpoints are bounded/projective Witt and divisor Grassmannians (§§0.6,0.27,0.30), the minuscule period map (§0.15), ULA recognition and special/generic comparison (§§1.9–1.11), convolution closure/rigidity and one-leg equivalence (§§2.9–2.12), coherent symmetric fusion (§§3.4–3.8), geometric reconstruction and pinned dual identification (§§4.3–4.16), integral local-model comparison (§4.17), perfect-complex Satake (§4.25), and the classical trace comparison (§4.29). Suggested.lean:16–32 names the missing carriers for these families: Grassmannian/Hecke moduli, enhanced constructible/relative perverse categories, local-model nearby cycles and relative perfect classifying-stack categories. Schemes, modules, known-Hopf Tannaka and the module Grassmannian do not make these geometric statements statable by a few simple definitions. The empty Lean file is therefore appropriate; §4.12's elementary recovery lemma is a supporting input, not a replacement headline.

## Not verifiable

- **GLX**, published Inventiones 243 (2026), §§3.2–3.3, Lemmas 3.3–3.4, pp.822–823, cited in §4.18: the sources service reached the Springer publisher URL/DOI `10.1007/s00222-025-01386-1`, but the text is paywalled. It remains uncertified by locator. I did not infer its precise hypotheses from the citation or bypass access restrictions. The common-reflex-base functoriality is independently supported by the readable AGLR Proposition 4.16; this does not certify GLX's own formulation.

All 15 seeded targets were checked against readable text, including HE's publisher OCR and rendered pages. No further missing-text request is outstanding. Source availability is distinguished from theorem truth and from elaboration.

## Source issues

- **Error** in FS at (VI.3.1), distinct-support description, printed p.202 (FS lines 7721–7724): the source says local coweights receive their divisor multiplicities again; it should be the unweighted sum of distinct-support positions after collision; affects a stated result.
- **Gap** in FS at Proposition VI.4.1 and proof, printed pp.207–208 (FS lines 7921–7946): the source says affine-line successive quotients alone give the equivariant equivalence; it should include separated complete filtration and the spatial ball-limit presentation used in the proof; affects a stated result.
- **Misprint** in FS at Corollary VI.9.5, printed p.229 (FS line 8764): the source says Verdier duality is composed after the fibre functor; it should put Satake Verdier duality before the fibre functor; affects a stated result.
- **Error** in FS at Lemma VI.11.2, printed p.237 (FS lines 9107–9113): the source says torus containment and highest-weight injectivity force SL₂ in every characteristic; it should exclude the characteristic-two torus normalizer and its Frobenius preimages using additional invariant information; affects a stated result.
- **Error** in BS at Lemmas 7.7–7.8, printed pp.28–29 (BS lines 1364–1378): the source says an isogeny cokernel has projective dimension exactly one; it should allow projective dimension at most one, or exclude the zero cokernel; affects a stated result.
- **Misprint** in CS at proof of Lemma 3.4.4, printed p.685 (CS lines 1455–1460): the source says the fixed minuscule stratum equals the entire loop quotient; it should specify the μ-stratum of that quotient; affects the proof.
- **Misprint** in ZHU at proof of Lemma B.11, printed p.488 (ZHU lines 3413–3423): the source says the adjugate product has scalar p²[λ]; it should have p²[λ]⁻¹ under the preceding determinant convention; affects the proof.
- **Misprint** in ZHU at proof of Lemma B.11, printed p.488 (ZHU lines 3468–3472): the source says the right factor in X=Ag is XA⁻¹; it should be A⁻¹X, with the corresponding adjugate integrality calculation; affects the proof.
- **Error** in ZHU at equation (2.2.13), printed p.439 (ZHU lines 1497–1525): the source says the preimage cohomology consists only of the shifted negative-cell contribution; it should retain the infinity-section contribution over the remaining base through localization; affects the proof.
- **Misprint** in Mathlib at `Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean:711` (no printed pagination): the source says a left rigid category has right duals; it should say left duals, as the following HasLeftDual field correctly does; affects nothing.
