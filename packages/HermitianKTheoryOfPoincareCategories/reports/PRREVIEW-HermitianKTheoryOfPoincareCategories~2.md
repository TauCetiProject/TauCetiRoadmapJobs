# Review of HermitianKTheoryOfPoincareCategories (pull request #1266 at 21253b9)

**Verdict:** needs changes

## R01 (P2) — Finish the transfer of generic Arf ownership

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:13`, “Section 7.9 owns the shared finite-dimensional quadratic Arf classification over 𝔽₂”; the construction is at lines 1179–1192 and the signatures at `Suggested.lean:48`, `:58`, `:75`.

**Claim:** The local ownership statement has changed, but the competing supplied open plan still owns the same generic construction. This is the unresolved part of previous R02, rather than a defect in the two Arf signatures. Repair report H09 explicitly acknowledges that the conflict remains; it is marked “applied differently”, not settled as “not actionable in this package”.

**Witness:** `TauCetiRoadmap/GeometricTopology/README.md:3251–3276` constructs the native finite-F₂ quadratic invariant, basis formula, counting bridge and quadratic Lagrangian criterion, and explicitly assigns the generic theory to GeometricTopology.

**Repair:** Retain this earlier roadmap as the owner and complete the corresponding transfer in the competing plan: GeometricTopology §4.3.1 must consume HermitianKTheoryOfPoincareCategories §7.9 for the generic algebra and retain its geometric refinements. Record the shared contract consistently across the plans. Do not import the pending GeometricTopology revision here: main lacks that block, and a revision of an existing roadmap is not a new supplier. A namespace change alone does not resolve ownership. This review changes neither plan.

**Repair test:** Both plans cover exactly the same instances: the zero space, H(x,y)=xy, A(x,y)=x²+xy+y², and A⊕A have Arf values 0, 0, 1, 0 and zero/one counts 1/0, 3/1, 1/3, 10/6. The diagonal in A⊕A has dimension 2 and zero quadratic restriction. One shared contract covers all four, including dimension zero.

## R02 (P2) — Assign the sphere Tate-completion theorem one owner

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:781`, “the canonical map 𝕊→𝕊^{tC₂} exhibits its target as the 2-completion of the sphere”.

**Claim:** Making Segal–Lin a local target repairs its former lack of an owner, but it now duplicates an explicitly planned theorem in another supplied open roadmap. The generic bounded-below Segal theorem is a genuine extension; its sphere specialization and the separately planned sphere theorem must identify the same owned comparison.

**Witness:** `TauCetiRoadmap/RefinedTraceMethods/README.md:567` separately requires S^{tC_p}≃Ŝ_p. `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:338` includes the sphere case and explicitly develops it independently.

**Repair:** Record the move of the needed C₂ sphere theorem to this earlier roadmap and reconcile RefinedTraceMethods §2.3 to consume §5.1a at p=2. Preserve the odd-prime theorem and StableHomotopyKTheoryPartII §§2.7/3.4's broader generalizations; give their p=2 sphere specialization an explicit compatibility with this comparison, rather than a second independently owned sphere target. Do not add either later roadmap to this roadmap's Needs lines. The merge-order positions are 66 here, 306 for RefinedTraceMethods and 309 for StableHomotopyKTheoryPartII.

**Repair test:** The shared comparison must give π₋₁=0 and π₀=ℤ̂₂, induced by the completion unit ℤ→ℤ̂₂. A mere completeness assertion also holds for the zero spectrum and fails this test; Hℤ^{tC₂} has π₋₂=ℤ/2 and is not the required target. Retain the separate ko calculation: π₋₂ko^{tC₂}=0 and π₀ko^{tC₂}=ℤ̂₂.

## R03 (P3) — Remove the remaining undeclared local API names

**Location:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/README.md:123`, “`flavourInvariant F α R M`”; line 896 introduces `enhancedTruncationFunctor` and `enhancedTruncationComparison`.

**Claim:** These are presented as this roadmap's backticked declaration names, but Suggested.lean contains none of them. The sentence at line 75 says only its three actual declarations are named this way. Previous R04 is therefore only partly repaired, despite the automated name scanner passing.

**Witness:** `TauCetiRoadmap/HermitianKTheoryOfPoincareCategories/Suggested.lean:48–84` declares only `arfInvariantF2`, `arfInvariantF2_eq_sum` and `arfInvariantF2_classifies`.

**Repair:** Replace the three undeclared names by mathematical prose (“the flavoured invariant”, “the enhanced truncation functors”, “their homotopy-category comparison”). Keep their formulas, adjunctions and API. Do not add carrier stand-ins or API declarations to Suggested.lean.

**Repair test:** The prose still requires F(Dᵖ(R),Qᵅ_M). For X=ℤ[0]⊕ℤ[1], τ≤0X=ℤ[0] and τ≥1X=ℤ[1], with the same fibre sequence and adjunction directions. Neither the mathematics nor the three elaborated Lean signatures changes.

## Verified sound

This was a full review of all 1,330 README lines and the 86-line Lean file, including all 66 numbered target units, their APIs, Checks, routes and Needs lines. The statements were not treated as established merely because `sorry` elaborates. The finite tests below establish particular instances and exclude specified wrong conventions; they are not a formal proof of the general spectral theorems. No additional counterexample to the repaired roadmap's mathematical statements was found. The unavailable source generality is separated below.

### Disposition of the previous five findings

| Previous finding | Current passage and evidence | Disposition |
|---|---|---|
| R01, unowned additional inputs | README:17 says “The additional comparison inputs are targets of this roadmap”. §1.1 adds the Thom equivalence; §4.5a the formation comparison; §5.1a Segal–Lin and ko; §7.3 Laurent splitting, Read and Schlichting; §7.7 the arbitrary-parameter extension. | Repaired as an unowned-input finding. The new Segal overlap is R02 above. These targets include their construction/proof obligations instead of assuming their conclusions. |
| R02, generic Arf ownership | README:13 says “they consume this algebraic contract”; the supplied GeometricTopology head still assigns the generic theory to itself at :3276. | Partly repaired; R01 above. H09's own account agrees. |
| R03, Arf source chain | README:1183 gives “(Z,O) ↦ (3Z+O,Z+3O)” and treats m=0; both Lean theorem docstrings now cite Pyronneau's actual basis/counting results. | Repaired. The recurrence and half-dimensional zero-subspace argument were checked, not merely the reference title. |
| R04, undeclared local names | README:75 now says “Only these three local declaration names refer to Suggested.lean”; the old Witt-equivalence and metabolic API identifiers are gone. | Partly repaired; three residual names are R03 above. GeneralAlgebraicKTheory §10.12a is now cited by its actual prose target. |
| R05, HTML anchors | §§7.10–7.11 are ordinary Markdown headings; the gate reports residue=0. | Repaired. Both mathematical sections remain. |

### Gate, elaboration, signatures and headline coverage

The worker's gate is passing at the reviewed head. Every counter is zero, including build, dependency check, outside-folder, stray-files, sorry-data, imports, residue and readme-ids-missing. The independent diff outside this folder is empty. The explicit dependency command returned:

```text
depcheck: 205 roadmaps, 1463 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. No missing-order finding is inferred. The final worktree was checked separately for changes.

Direct `lake env lean` elaboration of the target succeeds with only the two permitted `sorry` warnings. A scratch copy with `#check @` for all three declarations also succeeds. The invariant keeps its finite-dimensional hypothesis; the basis theorem keeps all three pairing equations; completeness keeps finite dimensionality of both spaces and both explicit zero-radical conditions. No section hypothesis silently disappears. Their generality agrees with §7.9, including the zero space and forms on different spaces.

For each of the two sorried theorems, scratch probes checked whether `simp`, `rfl` or `infer_instance` closed the entire goal. None did. The pinned-library search found no one-lemma native Arf formula or completeness theorem. The probes leave the original statements admitted and do not alter the target file. Neither theorem is a boundary computation or a reformulation of the cardinality definition. There is no padding finding.

The README's deep headline families are: Tate collapse and shifted classical comparison (§§0.3/0.5); Bott–Genauer, forgetful–hyperbolic and Karoubi periodicity (§§1.2–1.6); relative Lagrangian surgery (§3.2); quadratic surgery, odd formations, and short symmetric/even/quadratic comparison (§§4.1–4.12); spectral surgery, Segal–Lin/ko, projective lifting and π₀ comparison (§§5.1a–5.8); symmetric surgery (§§6.4–6.6); comparison ranges, sharpness, form parameters, field calculations, Arf classification and multiplicative/module compatibility (§§7.1–7.11); classical fibre sequences, splitting and quadratic-to-symmetric comparison (§§8.1–8.4).

The two native Arf headlines are stated. The module docstring names the other families, including the newly added comparison inputs, and identifies the missing stable enhancement, Poincaré, coefficient and spectrum carriers. The pin search did not reveal native carriers making those headlines statable by a few simple definitions. Ordinary derived categories and algebraic Tate cohomology are not substitutes for those carriers. The file has one `import Mathlib`, the requested namespace, real data for its sole definition, and no options, placeholder propositions or sorry'd data.

### Seeded source sample

All 15 requested targets were compared with the specified editions, checking printed pages, numbered results, hypotheses and map directions. Fourteen have the stated support; §7.11 has verified categorical/additive ingredients but an uncertified coherent refinement. No additional target is explicitly labelled “unverified” in this README. Source texts were obtained through the sources service from legal repositories, author pages or institutional copies; no source text or source manifest was added to the PR.

| Target | Locator and extracted-text witness | Result |
|---|---|---|
| 0.5 | Paper III Remark R.7, p.9; paper-iii lines 406–423 | Shift 0/2/4 gives symmetric/negative-even/quadratic connective GW. Alternating forms, not all skew forms, give the middle term. The roadmap retains the Tate-diagonal scalar action. |
| 3.3 | Paper III Definition 1.2.1 and Remarks 1.2.2–1.2.3, p.15; paper-iii lines 677–700 | a,b≥−1, b≥a−1, parity, ceiling/floor bounds and group condition b≥a agree. |
| 4.4 | Paper III Corollary 1.2.12 and Remark 1.2.13, p.18; paper-iii lines 811–833 | Isomorphism through 2m−3 and surjection at 2m−2; ℤ at −2 supplies the noninjective endpoint. Source proof typo is not copied. |
| 4.11 | Paper III Theorem 1.2.22, p.21, proof p.22; paper-iii lines 938–961, 1005–1023 | Arbitrary ring/invertible coefficient and all integer groups; the connective spectrum is distinguished from the negative extension. |
| 4.12 | Paper III Remark 1.2.25, p.23; paper-iii lines 1026–1030 | Ranicki's quadratic groups agree with quadratic L, not genuine-quadratic L. |
| 5.4 | Higher Algebra Corollary 7.2.2.19, pp.1245–1246; higher-algebra lines 47725–47755; Paper III Remark 1.2.32, p.25, paper-iii lines 1124–1130 | Equivalence of projective homotopy categories. No equivalence of mapping spaces is asserted. |
| 5.7 | Paper III Corollary 1.2.33 and Remark 1.2.34, p.26; paper-iii lines 1187–1209 | Projective invertible coefficients, E∞ assumption for Tate flavour, and trivial underlying C₂-action for the improved range are retained. The ko test concerns the linear-part estimate only. |
| 7.1 | Paper III Corollary 1.3.9, p.30; paper-iii lines 1380–1395 | Left coherence, finite global-dimension bound, injectivity n≥d−2r+2, bijectivity n≥d−2r+3. |
| 7.2 | Paper III Corollary 1.3.10, pp.30–31 and Remark 1.3.13, p.31; paper-iii lines 1398–1410, 1437–1440 | Substitution r=2−m gives the stated genuine ranges; common-duality square transfers them to GW. |
| 7.4 | Paper III Remark 1.3.12, p.31; paper-iii lines 1432–1436 | Opposite-ring/coefficient transport supplies the right-handed results without assuming left and right dimensions equal. |
| 7.5 | Paper III Corollary 1.3.14, pp.31–32; paper-iii lines 1443–1451 | d≤1 gives gs→s injectivity at−1 and isomorphism from0, and gq→s injectivity at3 and isomorphism from4, for both L and GW. |
| 7.6 | Paper III Remark 1.3.16, p.32; paper-iii lines 1459–1467 | The improvement retains commutativity, trivial coefficient M=R, and absence of 2-torsion. |
| 7.9 | Paper III Corollary 1.3.4/Remark 1.3.5, p.28; paper-iii lines 1274–1296, and R.10, p.10 / Example 1.3.11, p.31. Pyronneau Definition 2.9 through Theorem 2.15, pp.4–5; pyronneau lines 184–231 | Field formulas and characteristic-two exception agree. Pyronneau supplies the plane/basis/counting chain; the README supplies its corrected recurrence, dimension-zero case and explicit Lagrangian bridge. |
| 7.11 | Paper I §5.4, Examples 5.4.11–5.4.13, pp.115–116; paper-i lines 5555–5597. Paper II Corollary 4.4.13, p.107; paper-ii lines 5180–5194. Paper III Remark 3.1.5, p.51; paper-iii lines 2374–2377 | Categorical module inputs and additive square verified. These passages do not certify the full general coherent module/base-change refinement attributed to Paper IV; see Not verifiable. |
| 8.2 | Paper III introduction, p.4; paper-iii lines 168–175 | Classical quadratic GW has the Σ⁴ genuine-symmetric L connective-cover term, not unshifted quadratic L. |

Additional repaired inputs were checked in Paper I Corollary 2.4.6, p.43 (paper-i lines 2070–2092), Proposition 4.2.18, p.71 (paper-i lines 3433–3449), and form parameters on pp.73–74 (paper-i lines 3551–3583); Schlichting, forms, Lemma A.16, pp.56–57 (schlichting-forms lines 2750–2767); Higher Algebra §1.2.1, pp.38–40; Read Theorems C/E and Corollary F, pp.4–7 (read lines 128–144, 176–180, 217–250); Schlichting Theorem 1.1, pp.2–3, Proposition 4.5 and Theorem 4.6, pp.10–11 (schlichting lines 100–108, 480–522). The Read text's formulas were read with the OCR limitation in mind; the displayed growth bound gives the same 8 versus 4 test as the roadmap. Ranicki's author-archive text was also located for complexes, Wu classes, forms/formations and their quotient; the modern all-coefficient comparison is checked in Paper III rather than inferred from Ranicki's original coefficient convention.

### Adversarial mathematics table

Notation: H(x,y)=xy and A(x,y)=x²+xy+y² over F₂; Z/O denotes zero/one fibre cardinalities. Integer degree bounds below are evaluated as integers, not truncated natural subtraction. “Retain” means that the listed computations require no mathematical correction to this head. Rows cover all 66 numbered target units, with additional rows for separately stated headline/input components. Boundary tests do not certify every degree of a spectrum.

| Statement | Instances tried | Computed values on both sides / excluded wrong value | Result and change |
|---|---|---|---|
| Conventions: map connectivity, dual degree | Hℤ→HF₂; ℤ→²ℤ in degrees 1→0 | Fibre H(2ℤ) has π₀=2ℤ, π₋₁=0: 0-connective, not 1-connective. Original H₀=ℤ/2; dual H₋₁=ℤ/2. | Retain fibre convention and homological signs. |
| 0.1 coefficients, sign and opposite | Matrix ring with U=[[1,1],[0,1]], ε=[[0,1],[−1,1]]; ℤ and F₂; zero module | Correct J²(E₁₁)=E₁₁; ε·bar instead gives [[0,1],[0,1]]. Tate of ℤ is ℤ/2 in even and 0 in odd degrees; −ℤ reverses these. Over F₂, −1=1. Nonzero R→Hom(0,0)=0 is not injective. | Retain corrected ε⁻¹ and action-swapping condition. |
| 0.2 flavour notation and comparisons | ℤ in degree zero | gs→s is 1:ℤ→ℤ; gq→gs is ×8:ℤ→ℤ. Symplectic GW₀=ℤ versus symmetric GW₀=ℤ². | Retain distinct flavours; prose-name repair R03. |
| 0.3 adjacent-index collapse | ℤ, −ℤ, ℚ, F₂ | For ℤ, Tate π₁=0 gives index 2→1 equivalence; for −ℤ, π₀=0 gives 1→0. ℚ has Tate=0; F₂ has a nonzero F₂ in each degree. | Retain hypotheses; do not collapse the F₂ family. |
| 0.4 opposite transport | R=ℤ, P=ℤ[1]; matrix ring transpose | P∨=ℤ[−1], P∨∨=ℤ[1]; transposing twice gives the original matrix. Endomorphism order reverses once and restores twice. | Retain opposite coefficient and degree reversal. |
| 0.5 shifted GW and alternating forms | F₂ line b(x,y)=xy; alternating plane; F₂[t] | Line b(1,1)=1, so it is skew but not alternating. Plane diagonal is 0. For b(x,x)=x², b(t,t)=t², not t; twisted action gives t·1=t². | Retain negative-even middle term and twisted obstruction. |
| 1.1 metabolic category and arrow dual | L=ℤ→H(ℤ)=ℤ²; zero→nonzero line | Quotient is ℤ≅DL, hence nondegenerate metabolic object. With L=0 and X=ℤ, quotient ℤ→D0=0 is not an equivalence. For w=x=id, fib(Dx→Dw)=0. | Retain both nondegeneracy requirements and arrow dual. |
| 1.1 Thom equivalence | First-coordinate Lagrangian ℤ→H(ℤ) | fib(ℤ→ℤ²)=ℤ[−1], with induced loop form0. The associated map of this nonzero hermitian object is0, not an equivalence; requiring its form to be nonsingular would wrongly discard the hyperbolic example. | Repaired local target includes all hermitian objects and chosen null-homotopies. |
| 1.2 Bott–Genauer | Arrow x→0; zero category | Qᵐᵉᵗ(x→0)=fib(0→Q(x))=ΩQ(x)=Q[−1](x). For C=0 all three invariant values are 0. | Retain shift −1. |
| 1.3 metabolic GW, hyperbolic/forgetful | Rank-one module; C=0 | Forgetting H(ℤ) gives rank 2, so fgt∘hyp is ×2 on K₀=ℤ. All U,V,GW are 0 for C=0 and Ω0=0. | Retain natural fibres; no identity substitute for ×2. |
| 1.4 Karoubi index/sign | m=0, M=ℤ; apply twice | (m,M) goes (0,+)→(1,−)→(2,+); indices rise by 2 and total suspension is 4. | Retain genuine-index change, not fixed-flavour periodicity. |
| 1.5 classical specializations | ℤ and F₂ | On ℤ, Q≥1 with coefficient −ℤ collapses to Q≥0 and Q≥2 with +ℤ to Q≥1, from Tate value 0. F₂ has Tate F₂ in both positions. | Retain 2-torsion-free restriction. |
| 1.6 periodicity | ℤ, degree 2 genuine quadratic; F₂ homotopy flavours | Lgq₂(ℤ)=Lgs₋₂(ℤ)=0; Lq₂(ℤ)=ℤ/2. For F₂, Ls₀=Ls₂=ℤ/2, while Lgs₋₂=0. | Retain shift-changing genuine equivalence; no genuine 4-periodicity claim. |
| 2.1 symmetry/quadraticity predicates | Qq and Qs endpoints; zero category | cofib(Qq→Qq)=0 has every connectivity bound; fib(Qs→Qs)=0 every truncation bound. Zero category gives 0 for both. Tate of F₂ supplies a nonzero wrong-endpoint obstruction. | Retain endpoint tests and duality compatibility. |
| 2.2 genuine bounds | m=0,1,2 | (quadraticity,symmetry)=(0,2),(1,1),(2,0); for F₂ the missing next Tate layer is F₂. | Retain r=2−m. |
| 2.3 opposite bounds | ℤ line and its opposite; Mat₂(ℤ) with transpose | ℤ has Tate even/odd ℤ/2 and0 on both sides. Transpose matrices give even Tate (ℤ/2)² from diagonals and odd Tate0, unchanged by opposite transport. | Retain identical bounds. |
| 2.4 projective width | ℤ[0], ℤ/2, zero complex | ℤ[0] and dual are 0-connective, width [0,0]. ℤ/2 has dual in −1, hence width [0,1], not [0,0]. Zero admits every interval. | Retain both-sided criterion and k≤l. |
| 2.5 shifted-projective bound | (m,k)=(0,0),(0,1),(2,−1) | min(−2k,m−k)=0,−2,2 respectively; quadratic norm term starts at −2k and linear term at m−k. | Retain minimum, not maximum. |
| 3.1 cobordism group | A over F₂; signed line over ℝ | A⊕A has zero diagonal restriction and half-dimension 2, giving 1+1=0 in ℤ/2. ⟨1⟩⊕⟨−1⟩ has signature 0. | Retain q⊕(−q′), diagonal null-homotopy and abelian quotient. |
| 3.2 relative Lagrangian surgery | Zero datum Z=W=0; hyperbolic lagrangian | L/0=L, ΩD0=0, so fib(L→0)=L and N′=N; X′=X. Surgery on the canonical hyperbolic Lagrangian leaves the zero object. | Retain relative/ambient distinction. |
| 3.3 bounded L-monoids | n=0,a=b=0; n=0,a=0,b=1; n=1,a=−1,b=0 | First: X,L degree 0, N degree −1. Second: L,N in [−1,0]. Third: X interval [0,−1], hence 0. Ceiling/floor of −1/2 are 0/−1. | Retain floor/ceiling asymmetry and contractible width −1. |
| 3.4 Witt versus bounded group | H and A; zero | H has Lagrangian dimension1 and class0 in both quotients; A has no nonzero isotropic vector, class1 in both; zero class0. | Retain strict projective Lagrangian condition. |
| 3.5 metabolic versus hyperbolic | F₂ symmetric matrix [[0,1],[1,1]]; H | First determinant1 and L=span(e₁) isotropic, but b(e₂,e₂)=1. H has all diagonal values0. The former is 0-quadratic, not a counterexample under the required 1-quadratic assumption. | Retain hypothesis; tests exclude conflating metabolic with hyperbolic. |
| 3.6 widening | n=a=0 | Bounds b=0 give L degree0, N degree−1; b=1 gives both [−1,0]. H represents0 in both; A represents1 in both over F₂. | Retain isomorphism, despite different representatives. |
| 4.1 quadratic surgery | m=n=a=0,b=1; integer inequality sweep | Object [0,0], Lagrangian [−1,0]. 6,895 admissible (n,m,a,k) tuples satisfy both n<−2k and n<m−k at the surgery step. | Retain parity and both inequalities. |
| 4.2 middle-dimensional representatives | n=0,1,2 | Object intervals [0,0], [−1,0], [−1,−1]; null-Lagrangian intervals [−1,0], [−1,−1], [−2,−1]. | Retain degree −k and odd/even alternatives. |
| 4.3 genuine-symmetric short representatives | n=0,1,2 | Object intervals [0,0], [−1,0], [−2,0]; Lagrangian intervals [−1,0], [−2,0], [−3,0]. | Retain n≥0 and the one extra Lagrangian degree. |
| 4.4 low comparison | m=0 and2; ℤ at n=−2 | Iso bounds −3 and1; surjection bounds −2 and2. At m=0,n=−2 the map is ℤ/2→0: onto, kernel ℤ/2. | Retain strict endpoint distinction. |
| 4.5 degree-zero Witt groups | F₂ flavours gs,ge,gq; ℤ | F₂ gives ℤ/2,0,ℤ/2; symmetric unit line has class1, alternating plane class0, quadratic A class1. Over ℤ the quadratic-to-symmetric signature map is ×8. | Retain even≠symmetric in characteristic2. |
| 4.5a formation comparison | Equal ordered Lagrangians; ℤ odd residues; F₂ | Equal pair is elementary, class0 on both sides. Lgs₁(ℤ)=ℤ/2, Lgs₋₁(ℤ)=0, Lgs₋₃(ℤ)=0; over F₂ all these odd groups are0. | Retain projective quotient and coefficient shifts; target now owned. |
| 4.6 free/K₀ control | ℤ projectives; nonprincipal invertible ideal I in a Dedekind domain | Over ℤ projective/free classes agree, K₀=ℤ. Such an ideal has [I]−[R]≠0 in the Picard part and is not stably free. | Retain stable membership and duality-stability hypotheses. |
| 4.7 short complexes and Wu class | n=0 over F₂ and ℤ; negative extension | F₂ unit line has diagonal/Wu value1; H has0. ℤ unit line has Wu value1 mod2. At n=−4 the extended group is Lq₋₄(ℤ)=ℤ, whereas the connective-cover π₋₄ is0. | Retain even condition and separate negative groups. |
| 4.8 short-to-bounded comparison | C=ℤ in homological degree1 | DC is in −1; source strict interval [0,1] becomes [−1,0]. Applying the comparison to C instead of DC would retain the wrong degree +1. At n=0 the unit is unchanged. | Retain dualization in the map. |
| 4.9 bounded symmetry comparison | r=2,n=0 and1 | Allowed (a,b)=(0,1),(1,2); right bounds n+2r−4,n+2r−3 are exactly (0,1),(1,2). With r=1,n=0 they are (−2,−1), so the same width is not admitted. | Retain the two separate bounds. |
| 4.10 short-even comparison | n=0, F₂ line and plane | Obstruction line→F₂ has value1; alternating plane gives0. Even Witt group and Lge₀ are both0. | Retain Wu-class fibre and genuine-even target. |
| 4.11 all-degree symmetric identification | ℤ degrees −4,−2,0,1 | Extended short and genuine-symmetric groups are respectively ℤ,0,ℤ,ℤ/2 on both sides. Connective cover instead gives0 in degree−4. | Retain distinction between extended groups and connective spectrum. |
| 4.12 quadratic identification | ℤ degree2 | Ranicki/Wall quadratic group=ℤ/2=Lq₂; Lgq₂=Lgs₋₂=0. | Retain warning; substituting genuine quadratic is false. |
| 5.1 ring-spectrum carriers | A=HR, zero, sphere | HR finite free line has π₀=R; zero gives0. On sphere universal linear coefficient is 𝕊 with π₀=ℤ; it is not Hℤ in higher degrees (π₁𝕊=ℤ/2). | Retain compact modules and projective coefficient condition. |
| 5.1a Segal–Lin | Trivial sphere, induced spectrum, zero | Sphere Tate: π₋₁=0, π₀=ℤ̂₂; induced and zero Tate=0. Hℤ Tate instead has π₋₂=ℤ/2. | Mathematics retained; ownership repair R02. |
| 5.1a ko Tate | Degrees −4,−2,0,4 | ko Tate groups ℤ̂₂,0,ℤ̂₂,ℤ̂₂; π₀Σ²ko Tate=0→ℤ/2=π₀Hℤ Tate is not onto. | Retain period4 and representation-twist comparison. |
| 5.2 projective recognition | X=Hℤ, H(ℤ/2), ΣHℤ | Dual connectivities 0,−1,−1 respectively. H(ℤ/2) is a two-projective cofiber, not projective; ΣHℤ is a shifted projective with k=1. | Retain dual-connectivity test. |
| 5.3 spectral quadratic surgery | A=Hℤ, n=0,m=0,a=0,b=1 | Same object [0,0] and Lagrangian [−1,0] bounds as §4.1; at A=0 all classes0. | Retain connective-ring analogue, not a discrete-only restriction. |
| 5.4 projective lifting | 𝕊→Hℤ; matrix idempotent diag(1,0) | π₀End of the free line is ℤ on both sides, and diag(1,0) selects rank1. π₁End is ℤ/2 versus0, so mapping spaces cannot be equivalent. | Retain equivalence only after homotopy category. |
| 5.5 linear-part comparison range | m=0,p=−1,0,1 | Iso maxima min(2p−1,0)=−3,−1,0; surjection degrees min(2p,1)=−2,0,1. Identity comparison has identical groups at every degree. | Retain separate m and p bounds. |
| 5.6 quadratic comparison/sphere | m=0; sphere and Hℤ negative groups | Iso bound −3, onto bound−2; quadratic sphere and ℤ groups agree. Degree−4=ℤ and degree−3=0 are the stable negative tests. | Retain Segal–Lin input, not mere Tate completeness. |
| 5.7 π₀ comparison | Hℤ identity; sphere; twisted ko | Identity gives equal groups throughout. General gs range ends iso−3/onto−2; trivial-action range iso−1/onto0. Twisted ko gives linear π₀ map0→ℤ/2. | Retain action hypothesis and avoid claiming L-group sharpness from linear failure. |
| 5.8 sphere to integers | Universal structure, n=−4,−3; linear π₀ | L-values ℤ and0 agree with genuine-symmetric ℤ in these degrees. Linear π₀ is ℤ→ℤ/2, surjective with kernel2ℤ. | Retain iso≤−1 and onto0 for gs target. |
| 6.0 enhanced truncations | X=ℤ[0]⊕ℤ[1], n=1 | τ≥1X=ℤ[1], τ≤0X=ℤ[0]; projection/inclusion give fibre sequence ℤ[1]→X→ℤ[0]. Zero truncates to0. | Retain adjunction directions; prose-name repair R03. |
| 6.1 coherence and global dimension | Field; ℤ; k[ε]/ε²; infinite annihilator example | Field d=0, ℤ d=1. Dual numbers are Noetherian/coherent but Torᵢ(k,k)=k for all i>0, so no finite d. In k[x₁,x₂,…]/(x₁xᵢ), Ann(x₁) is infinitely generated, obstructing coherence. | Retain distinct coherence and dimension hypotheses. |
| 6.2 perfect Postnikov structure | ℤ/2 over ℤ; torsion over field | ℤ/2 is perfect with H₀=ℤ/2, dual H₋₁=ℤ/2; dual lower bound −d=−1 is attained. For field d=0 duals stay in degree0. | Retain finite-global-dimension and coefficient requirements. |
| 6.3 abstract bounded monoids | Perf(k), D(X)=X∨[2], X=k[1], n=a=0 | DX=k[1], and X is0-connective but H₁X=k≠0. Thus the connectivity-defined object is allowed although interval[0,0] would exclude it. | Retain connectivity formulation in general C. |
| 6.4 symmetric surgery | Same shifted dual; integer bounds | D(C≤0)⊆C≥0 gives d=0, but does not force X≤0. In 2,867 admissible tuples, k=(−n−a−2)/2 gives max(n+2k+d,k+d−r)<0. | Retain ring-only interval supplement; source overclaim corrected. |
| 6.5 coherent-ring parity cases | d=1,r=2,n=0,1; d=0,n=1 | Bounds are (a,b)=(0,1),(1,1), and (−1,0) respectively. In the last case object width−1 forces0, giving the expected odd vanishing. | Retain parity alternatives, including a=−1. |
| 6.6 odd vanishing/even Witt | Field, r=2,m=0; ℤ,d=1 | k≥−1: odd degrees begin−3 and vanish for a field. At k=−1 the even group is alternating Witt=0. k=−2 gives quadratic Witt via §4.5/periodicity, outside this bound. | Retain explicit separate route for k=m−2. |
| 7.1 general comparison | (d,r)=(0,2),(1,2),(2,2),(1,0) | Injection/isomorphism thresholds are (−2,−1),(−1,0),(0,1),(3,4). | Retain d−2r+2 and +3. |
| 7.2 genuine comparison/GW transfer | d=1,m=0,1,2 | Injection/iso thresholds are (−1,0),(1,2),(3,4). At field d=0 gs degree−2 gives0→ℤ/2: injective, not onto. | Retain fibre-square transfer and endpoint distinction. |
| 7.3 Laurent sharpness | F₂[t±1] with inversion; d=0,1 | At degree−1: Ls=0⊕ℤ/2, Lgs=0⊕0. At d=0 degree−2 is0→ℤ/2. Iterated shifted summand places this discrepancy at d−2. | Retain inversion and K₀ condition, with §7.9 built first. |
| 7.3 Read normal cofibre | ℤ/4, i=1,5,9; zero ring | π₁N has order4; lower bound at5 is2³=8, at9 is2¹⁰=1024. π₋₁N=ℤ/2, π₀N=ℤ/4; zero-ring N=0. | Retain nonperiodicity/growth argument and finiteness obligation; now local targets. |
| 7.3 regular-domain fibre | F₂; ring with 2 invertible | For F₂, π₋₂F=0, π₋₃F=ℤ/2. With 2 invertible F=0 in every degree. Vanishing through n≥−2 yields iso≥−1, injection−2. | Retain trivial involution, regularity and non-zero-divisor improvement. |
| 7.4 right-handed transport | R→Rop→R; Mat₂(k) | Double opposite restores multiplication. Semisimple matrix ring has left/right d=0; thresholds remain−2/−1 for r=2. | Retain transport of M to M∨, not an equality of arbitrary left/right dimensions. |
| 7.5 Dedekind case | ℤ, d≤1; field d=0 | gs→s injection/iso thresholds−1/0, gq→s thresholds3/4 using d=1. Field gs improves to−2/−1; F₂ degree−2 remains0→ℤ/2. | Retain fields within the Dedekind convention. |
| 7.6 2-torsion-free improvement | ℤ,d=1; F₂ negative control | Improved quadratic→symmetric injection/iso thresholds1/2; general thresholds3/4. At degree1, source (ℤ/2)² has4 elements, target (ℤ/2)³ has8. F₂ has nonzero 2-torsion. | Retain injectivity rather than isomorphism at1. |
| 7.7 arbitrary form parameter | Burnside parameter; free rank2 and retract e=diag(1,0) | ρτ(1)=2; q(1)=(1,1) or(1,3) are distinct with equal first component. Pullback of [[a,b],[b,c]] by e gives [[a,0],[0,0]]. | Retain full additive/retract/derived extension, beyond three standard flavours. |
| 7.8 Burnside computation | q_c(n)=(n²,cn), c=1,3; integers n,m,r from−3 to3 | Polar difference=(2nm,0)=τ(nm); scalar action gives(r²n²,rcn). 686 tuples obey both laws; q₁(1)≠q₃(1). | Retain nonstandard parameter test and its induced L-comparison. |
| 7.8 Burnside L-groups | ℤ degrees1,2,3; sphere comparison p=1,m=0 | Lb₁=0 because Lq₁=0 surjects; Lb₂=0=Ls₂, whereas Lq₂=ℤ/2; Lb₃ injects into Ls₃=0. Sphere comparison thresholds are iso0/onto1. | Retain enhanced low-degree results beyond the generic form-parameter bound. |
| 7.9 intrinsic Arf definition | Zero,H,A,H⊕A,A⊕A; degenerate line q(x)=x | Z/O=1/0,3/1,1/3,6/10,10/6; invariant0,0,1,1,0. Degenerate line has1/1 and invariant0, but nonzero polar radical. | Retain total definition; classification correctly excludes degeneracy. Ownership R01. |
| 7.9 basis headline | All nonsingular forms in dimensions0,2,4 and all symplectic bases | 1,24,322560 basis tests respectively: intrinsic value equals the basis sum in every test. Dimension0 gives0=empty sum0; A gives1=1·1. | No signature change. |
| 7.9 completeness headline | H vs0; A vs0; A vsA; H vsA | Equality of invariants true,false,true,false; existence of half-dimensional quadratic-zero subspace true,false,true,false. In A⊕A, diagonal dimension2 and product dimension4 give2·2=4. | Both directions tested; retain nonsingularity of both forms. |
| 7.9 count/additivity bridge | Add H or A to counts(3,1) and(1,3) | H⊕H=(10,6), A⊕H=(6,10), A⊕A=(10,6); differences+4,−4,+4 equal(−1)^Arf·2². | Retain corrected recurrences and zero-dimensional seed(1,0). |
| 7.9 field L-groups | F₂, ℝ, characteristic≠2 skew coefficient | F₂: Ls₂k=Lq₂k=ℤ/2, odd groups0, Lgs₋₂=0. ℝ: symmetric L₀=ℤ and L₂=0; sign twist exchanges these residues. | Retain separate bilinear and quadratic Witt invariants. |
| 7.10 multiplicative comparison | F₂[u±1], degree u=2; F₂×F₂; zero | Graded unital map sends1→1,u→u. Ungraded u→u² misses u. Additive shear sends(1,1)→(1,0), so is not unital. Zero spectra give the zero square. | Checks sound; full coherent construction remains source-unverified below. |
| 7.11 module/base change | F₂→F₄; ℤ→F₂; R→0 | Symmetric unit class1→1. ⟨−1⟩→⟨1⟩, sign coefficient−1→1. All target and scalar-extended modules at0 are0. Identity scalar map gives a·x=a·x. | No claim of scalar-extension equivalence; coherent generality not certified. |
| 8.1 symmetric classical fibre | ℤ degree0; zero ring | K₀=ℤ sends1 to hyperbolic(1,1) in GW₀=ℤ²; quotient by this diagonal is ℤ via signature difference. At0 the entire sequence is0. | Retain connective cover of genuine symmetric L. |
| 8.2 quadratic classical fibre | ℤ, H and E₈ | GWq₀=ℤH⊕ℤE₈; hyperbolic map givesH; quotient generatorE₈ has signature/8=1. Σ⁴Lgs has π₀=Lgs₋₄=ℤ. | Retain shift+4 and normalization by8. |
| 8.3 two-inverted splitting | ℝ with positive/negative dimensions(a,b); F₂ | Map(a,b)↦((a+b)/2,a−b); inverse(r,s)=(r+s/2,r−s/2), giving exact identities after inverting2. F₂ Witt ℤ/2 becomes0. | Retain rank/2 and the supplied two-inverted L-comparison. |
| 8.4 classical comparison | ℤ,d=1; field,d=0; arbitrary parameter | General thresholds3/4 for ℤ, improved1/2; degree1 map4-element→8-element groups can be injective, not bijective. For field general thresholds2/3. | Retain stated ranges; no unsupported sharpness claim for classical GW. |

The finite enumeration independently considered every quadratic polynomial function in dimensions 0 through 4 over F₂. Nonsingular counts were 1,0,4,0,448. In dimension2 the distributions were three forms with (Arf,Z,O)=(0,3,1) and one with (1,1,3); in dimension4 they were 280 with (0,10,6) and 168 with (1,6,10). Half-dimensional zero subspaces were enumerated as well as symplectic bases. Thus the table's small-form checks are computations, not assumed uses of the proposed classification. The surgery inequalities and Burnside laws were checked separately as described above.

### Pinned library and duplication audit

The inspected pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Searches were by mathematical objects as well as declaration names: quadratic polar forms, symplectic bases, Witt quotients, Arf/counting and Gauss sums; projective dimension and coherent modules; t-structures and truncations; Poincaré structures, spectral Tate, GW and L-theory. The following 16 file-locator entries record definitions or theorems actually opened, rather than inferred from a name search.

| Pinned file and line | Declaration/contract inspected | Consequence for this review |
|---|---|---|
| `Mathlib/LinearAlgebra/QuadraticForm/Basic.lean:96`, `:146`, `:311` | `QuadraticMap.polar`, `QuadraticMap`, `QuadraticMap.polar_self` | Polarization is q(x+y)−q(x)−q(y). QuadraticMap stores square-scaling and a bilinear companion; it does not impose nonsingularity. Hence both explicit radical hypotheses in completeness are necessary. In F₂ its polar is alternating. |
| `Mathlib/LinearAlgebra/QuadraticForm/Prod.lean:55` | `QuadraticMap.prod` | Body is the sum of pullbacks along the two projections. This is precisely the orthogonal sum used by the Lean completeness conclusion; no opposite sign is needed in characteristic2. |
| `TauCeti/LinearAlgebra/BilinearForm/SymplecticBasis.lean:192`, `:301`, `:309` | `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J`, `IsAlt.even_finrank` | Field, finite-dimensionality, alternation and nondegeneracy are in scope. This existing basis-existence API must be reused; it does not prove the quadratic Arf classification. |
| `TauCeti/LinearAlgebra/QuadraticForm/Witt/Ring.lean:218`, `:288` | `TauCeti.WittRing`, `TauCeti.wittClass` | The type explicitly requires `[Invertible (2 : K)]`. It cannot instantiate the F₂ Witt quotient. |
| `TauCeti/LinearAlgebra/FiniteBilinearModule/GaussSum.lean:255`, `:274`, `:447` | Lagrangian Gauss-sum formulas and `gaussSign` | These concern finite quadratic modules and an invariant in ZMod8. They are related reusable results, not the native F₂ cardinality/basis theorem or its converse Lagrangian criterion. No duplicate theorem was inferred from the word “Gauss”. |
| `Mathlib/CategoryTheory/Preadditive/Projective/Resolution.lean:41` | `CategoryTheory.ProjectiveResolution` | An ℕ-chain complex of projective objects with an augmentation quasi-isomorphism. It does not itself assert finite generation or a finite length bound. |
| `Mathlib/CategoryTheory/Abelian/Projective/Dimension.lean:52`, `:157` | `HasProjectiveDimensionLE`, `projective_iff_hasProjectiveDimensionLE_zero` | Ext-vanishing bound and projective/dimension-zero equivalence; the roadmap's global uniform bound is a supplier contract. |
| `Mathlib/RingTheory/PicardGroup.lean:77` | `Module.Invertible` | Bijectivity of dual evaluation for a commutative scalar ring. This is line-module vocabulary, not the noncommutative action-swapping involutive coefficient. |
| `Mathlib/Algebra/Module/FinitePresentation.lean:118` | `Module.finitePresentation_of_finite` | Includes the Noetherian hypothesis. The coherent-ring extension does not silently use this theorem without that hypothesis. |
| `Mathlib/RingTheory/SimpleModule/InjectiveProjective.lean:28` | `Module.projective_of_isSemisimpleRing` | All modules over a semisimple ring are projective; this one direction already exists. |
| `Mathlib/RingTheory/DedekindDomain/Basic.lean:149` | `IsDedekindDomain` | Domain plus Dedekind-ring conditions; the convention permits fields and does not require dimension exactly1. |
| `Mathlib/Algebra/Homology/DerivedCategory/TStructure.lean:33` | `DerivedCategory.TStructure.t` | Ordinary derived-category t-structure, specified through cochain bounds. No stable-enhancement identification is included. |
| `Mathlib/CategoryTheory/Triangulated/TStructure/Basic.lean:54` | `CategoryTheory.Triangulated.TStructure` | Object properties, shift/orthogonality and truncation-triangle existence on a pretriangulated category. This is not itself coherent enhanced truncation data. |
| `Mathlib/CategoryTheory/Triangulated/TStructure/Heart.lean:44` | `TStructure.heart` | Intersection of the two halves. It does not identify the Postnikov heart with projectives over an arbitrary finite-global-dimension ring. |
| `TauCeti/RepresentationTheory/Homological/TateCohomology/Periodic.lean:167` | `Rep.FiniteCyclicGroup.tateCohomologyIsoEven` | Generator and even-integer hypotheses; norm/minus-generator homology. Supplies the algebraic even formula. |
| `TauCeti/RepresentationTheory/Homological/TateCohomology/Periodic.lean:200` | `Rep.FiniteCyclicGroup.tateCohomologyIsoOdd` | Generator and odd-integer hypotheses; reversed complex. Neither parity theorem constructs the coherent spectral Tate action. |

No identical fully qualified Lean declaration was found in the supplied sibling roadmaps. This does not excuse the object-level overlaps R01–R02. Searches of main, supplied open heads and board packages also found the finite-even-field Arf direction in `packages/GeometryOfNumbersAndQuadraticArithmeticPartII/design/plan.json:342`: the general finite-even-field extension may remain there, but its F₂ specialization must reuse the shared contract. QuadraticFormInvariants explicitly excludes characteristic-two Arf theory; its existing Witt-ring ownership is not a reason to force F₂ into the characteristic-not-two quotient. The noncommutative coherent-module API is likewise a stated extension of the commutative supplier, not a second commutative definition.

### Resolved supplier citations and order

The citation resolver's two library-name leads are not missing suppliers. `ClassicalDerived.enhancedCategory` is in EnhancedDerivedSheaves §0.1, and `IsNoetherianRing.isCoherentRing` is explicitly planned in AdicSpacesPartIII R2.10. Both are cited as roadmap contracts, not claimed to be implemented pinned declarations.

The main reference tree was checked at `fa41b374`. The new GeometryOfNumbersAndQuadraticArithmetic and GeneralAlgebraicKTheory suppliers were read through `roadmaps show` at their supplied open heads. Main roadmap sections in EnhancedDerivedSheaves, GeneralizedCohomology, StablePeriodicCurved and QuadraticFormInvariants were read for both ownership and surrounding shape. The `roadmaps grep` ownership search and board-package search found the overlaps above; the pertinent lines were then read directly. Open-roadmap ownership was checked against the supplied files; no unprovided open head was treated as a supplier.

| Supplier and resolved repository locator | Consumed section/object and scope checked |
|---|---|
| `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:2228`, `:2252`, `:2305`, `:2438`, `:2511` | §6.1.6 group-completion adapter; §6.1a stable mapping spectra, C₂ actions, norm/Tate and induced vanishing; §6.1b connective K; §6.2.8 diagonal Lagrangian; §6.4 ExactW0. These are earlier foundations. |
| Same file `:2952–3025` | §6.8a perfect enhancement/Hom, coefficient line and dual, Poincaré categories/objects, all three standard flavour constructions, shift/sign comparison, GW/L spectra, localization, bordification, fundamental square, linear part and surgery datum. The generic shift and isotropic surgery are consumed; the local work adds relative Lagrangian/connectivity results. |
| Same file `:3043`, `:3049`, `:3061`, `:3071` | Weight-heart comparison, symmetric heart theorem and Dedekind localization. The weight heart of projectives and Postnikov heart of finitely presented modules are kept distinct. The duality-exchanges-halves theorem is not used as the more general finite-bound symmetric surgery theorem. |
| Same file `:3173`, `:3212–3217`, `:3236` | §6.10a integral tables; §6.10b target6.10.6 two-inverted comparison with tensor, module and shift-telescope targets; symplectic degree-zero comparison. The tensor supplier is for perfect modules; the general-category multiplicative extension is expressly local. The integral route does not require this roadmap's general surgery result. |
| `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:2318–2326` | §10.12a polynomial/Laurent K₀ invariance and polynomial/central-localization dimension bounds. These actually supply K₀(F₂[ℤʲ])=ℤ and d≤j for the sharpness induction. |
| `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:213`, `:431–435`, `:1470–1472`, `:1599`, `:1660`, `:1846–1848`, `:1864–1874` | E0, §0.1, E5:abstract, E5:presentability and E5:spectra-comparison. The HR-module comparison cited there is commutative; the target instead uses GeometryOfNumbersAndQuadraticArithmetic for noncommutative perfect enhancements. |
| `TauCetiRoadmap/StablePeriodicCurved/README.md:356–359`; `Suggested.lean:1182` | Layer4's `HasFiniteGlobalDimension` quantifies over all right modules in the ring's universe. Passing to Rop gives the stated left bound. No competing predicate is declared here. |
| `TauCetiRoadmap/GeneralizedCohomology/README.md:432–445`, `:878–897`, `:1559`, `:1652–1664` | G2.8 group completion, G3.9 derived prime completion, G5.4 ko/KO and Bott/unit comparison. ko exists as a supplied connective cover; its Tate calculation is not part of that contract. |
| `TauCetiRoadmap/QuadraticFormInvariants/README.md:177–179`, `:1338–1373` | Characteristic-two theory is excluded. Layer4 consumes Tau Ceti's Witt implementation under invertibility of2. |
| `TauCetiRoadmap/AdicSpacesPartIII/README.md:8740–8766` | R2.10 coherent modules/rings and Noetherian bridge over commutative rings. The associative/left-module extension is owned in §6.1 here. |

All Needs lines and scope supplier citations were read against these sections. The special Layer7 order explicitly builds §7.9 before §7.3, so the Laurent argument does not use an unbuilt field calculation. The two-inverted supplier target is used only for §8.3, preserving the stated single direction of supply. No supplier drift, missing gap contract or extra dependency cycle was found. No declared gaps are involved. R01 and R02 concern competing ownership, not falsely reported UPWARD edges.

The README has the requested summary, ownership, conventions, supplier contracts, build guide, nine layers, layer Examples/Dependencies, downstream consumers and references. Definitions were read with their API and discriminating Checks; the native Arf definition has four explicit tests including dimension0 and the anisotropic negative control. The mathematical formulas avoid source prose copying, executable algorithms and good-characteristic-only shortcuts. The residual local-name policy issue is isolated in R03.

## Not verifiable

- **Paper IV and the full coherent refinement in §§7.10–7.11.** The sources service's title search did not locate a legally readable copy of *Hermitian K-theory for stable ∞-categories IV: Karoubi–Grothendieck–Witt theory*. The series bibliography and institutional/author publication listings were checked; Paper III Remark3.1.5, p.51 explicitly attributes the commutative-ring E∞ comparison to it. Paper I §5.4 supplies the categorical module objects and Paper II Corollary4.4.13 the additive square. Neither verifies the entire stated generality of lax symmetric monoidal functors, the square and fibre sequence in module categories, and coherent base-change compatibility. Those parts are **uncertified**, not declared false or assumed proved. The missing-source record retains the key `paper-iv`; no source manifest was edited and this review is not parked. The elementary unit, grading, coefficient and base-change instances are checked in the table, but are not a proof of coherent refinement.
- The source audit is the prescribed seeded sample plus the repaired-input checks listed above. It does not certify every line of every cited paper's proof. In particular, the finite computations and elaboration are not implementations of the absent spectral constructions.

## Source issues

- **Error** in paper-iii at Example R.2(ii), printed p.7 (line331): the source says the coefficient involution is ε times the ring anti-involution; it should be ε⁻¹ times that anti-involution under the stated inner-square convention; affects a stated result.
- **Gap** in paper-iii at Remark R.7, printed p.9 (lines414–419): the source says the diagonal obstruction lies in Hom_R(P,R[2]) without specifying its scalar twist there; it should be Hom into R[2] with r acting by r², making x↦b(x,x) linear; affects the proof.
- **Misprint** in paper-iii at proof of Corollary1.2.12, printed p.18 (line829): the source says the final injectivity range is n≤2n−3; it should be n≤2m−3; affects the proof.
- **Misprint** in paper-iii at Proposition1.3.1(i)–(ii), printed p.27 (lines1254–1255): the source says the objects belong to the perfect derived category of R in a theorem about C; it should be Poincaré objects of C with the specified shifted structure; affects a stated result.
- **Error** in paper-iii at Remark1.3.2, printed p.27 (lines1259–1260): the source says both interval endpoints hold for the general t-structured category of Proposition1.3.1; it should restrict those interval conclusions to the discrete-coefficient ring setting or add appropriate dual truncation bounds; affects a stated result.
- **Misprint** in paper-iii at Remark3.1.5, printed p.51 (lines2376–2377): the source says every ring endomorphism of F₂[u,u⁻¹] is invertible; it should say every degree-preserving unital endomorphism with u in degree2, since u↦u² is otherwise a counterexample; affects the proof.
- **Misprint** in pyronneau at proof of Lemma2.12, printed p.5 (line212): the source says the Arf expression for the anisotropic summand without its value; it should give that value as1; affects the proof.
- **Error** in pyronneau at proof of Lemma2.13, printed p.5 (lines222–223): the source says adjoining a hyperbolic plane adds an unevaluated q₀(v) to each triple count; it should give O′=3O+Z and Z′=3Z+O; affects the proof.

