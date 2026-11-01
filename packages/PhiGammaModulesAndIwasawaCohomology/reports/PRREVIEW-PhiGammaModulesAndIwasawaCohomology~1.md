# Review of PhiGammaModulesAndIwasawaCohomology (pull request #1310 at 8cb314e)

**Verdict:** needs changes

## R01 (P2) — Import the earlier field core instead of constructing it again

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:498–529`, `576–585`, and `1953–1979`. The first target starts “For every finite `K/ℚ_p` construct”; the last starts “construct `deRhamDiffEq V = N_dR(V)`”.

**Claim:** These sections independently construct the cyclotomic norm field, field period/Robba realizations, field slope filtration and embedded de Rham differential lattice, then construct comparisons to the earlier owner. This duplicates supplied work. The extra comparisons do not make these constructions new ownership.

**Witness:** `TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:3765–3767`, `3779`, `3788`: F.6 stages 1–3 already construct these objects, including the étale unit/counit, overconvergence, saturated slope filtration and embedded lattice with cyclotomic localizations.

That supplier is earlier (positions 25 and 27 respectively in the merge order), and this README itself lists its common core at lines 203–214. I checked the supplier's open new-roadmap text, not a proposed revision of a roadmap on main. Its paragraph at line 3800 explicitly allows this roadmap separate presentations, but that agreement does not override the standing rule that supplied constructions are imported rather than planned again.

**Repair:** Import F.6 stages 1–3 on their common domain. Remove the repeated construction/proof targets there; retain genuinely additional relative coefficients, integral intersections, equivariance and radius interfaces, stating exactly what each adds. Express the KPX slope convention as the negation of the supplied valuation-positive degree/slope, and transport its filtration rather than reconstructing it. Use the supplied embedded differential lattice directly; any presentation adapter should be a specialization of that object, preserving its ambient inclusion.

**Repair check:** For the trivial representation the imported realization sends 1 to 1. For `φ(e)=pe`, the supplied slope is +1 and the adapter gives −1; no second filtration is needed. For `E(1)`, both claimed lattices have horizontal generator `t⁻¹e₁`, and their evaluation against `te₋₁` is 1. Importing the embedded lattice preserves precisely these tests. The remaining relative/cohomological scope is substantial, so this is repairable rather than a rejection of the whole folder.

## R02 (P3) — Replace prospective API-name catalogues with mathematical API statements

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:12–14`, `263–268`, and throughout the API paragraphs. Example: “The API includes `linearization_tmul`, `map_smul`, `hom_ext`, `tensor_phi`, `dual_eval_phi`”.

**Claim:** The README says its backticked names specify future APIs. The required format instead reserves this roadmap's backticked declaration names for declarations actually in `Suggested.lean`; other API entries must state their hypotheses and conclusions in prose. Bare prospective names also leave some promised laws unspecified.

**Witness:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/Suggested.lean:57–73` declares only `truncatedWittFrobenius` and `wittProjective_of_flat_phi`; none of the five quoted API names is declared there.

**Repair:** Rewrite each such API list as prose bullets stating the law, with its hypotheses. Retain backticks for the two actual declarations, genuine supplier declarations and mathematical formulas. Remove the opening exception to the naming rule. Do not add these elementary APIs to the Lean acceptance file.

**Repair check:** In §0.1 the first bullet can specify `L(s⊗m)=s·F(m)`, including the twisted tensor's scalar relation. On `𝔽₃[U]` it gives `L(1⊗U)=U³`, while the underlying Frobenius still does not hit U. This retains the intended discriminating example without inventing a Lean declaration.

## R03 (P3) — Put the analytic prerequisites in build order and attach target-level needs

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:248–251`, `1096–1121`, `1509–1530`, and `1566–1656`. The build paragraph says to construct “§4.0 and … §4.1 before §§3.4–3.5”.

**Claim:** The numbered layers are not in their stated build order, and most individual theorems have no `*Needs:*` clause. In particular, §4.1 mixes scalar/annular carriers needed by Layer 3 with the uniform-presentation inputs needed later by §4.3. A layer-wide dependency paragraph cannot distinguish these requirements.

**Witness:** The document has 59 numbered target subsections but only 11 `*Needs:*` occurrences. §3.4 uses Mellin coordinates from §4.0; §3.5 uses the §4.1 annular rings; §4.3 uses §4.1's uniform-presentation criterion.

**Repair:** Move the scalar character/Mellin and analytic-ring prerequisites before the arithmetic Layer 3 targets, or split them into an earlier layer and renumber. Give each theorem/construction its statement and proof-route dependencies, separating the preliminary finite-coefficient comparison from the later general derived base-change theorem. Keep the noncircular field-first finiteness argument.

**Repair check:** For a one-dimensional trivial module, a character fiber is formed using `γ−η(γ)` before applying Herr comparison; no perfectness theorem is needed to define that map. Conversely, passing from uniformly bounded generator/relation counts to a global finite presentation uses the later criterion. The revised order should expose these two distinct edges. This is a presentation defect, not a claim that the mechanically checked supplier graph has a cycle.

## R04 (P3) — Correct the page locator for the module ψ construction

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:879–880` and `921–923`: the tensor contraction and rank-one formula cite the module construction in “KPX §2.2, p.18”.

**Claim:** In the explicitly cited arXiv v3, that construction is Definition 2.2.6 on manuscript page 17. Page 18 continues the radius-model arguments.

**Witness:** KPX lines 620–626: page 17 begins immediately before Definition 2.2.6, whose module ψ is induced from inverse Frobenius linearization and the scalar ψ contraction.

**Repair:** Cite KPX Definition 2.2.6, p.17, and describe the abstract contraction and basis-change laws as algebraic consequences, using the native tensor maps. The scalar trace normalization can separately cite Definition 2.2.2, p.16.

**Repair check:** For `L=2` and scalar contraction the identity, the formula gives `ψ(6)=3`; in rank one with Frobenius coefficient a it gives `ψ(fe)=ψ(a⁻¹f)e`. Both follow from the construction at the corrected locator.

## Verified sound

The review covered all 59 numbered subsections, their API paragraphs, Checks, proof routes, supplier contracts, and the complete 75-line Lean file. There are four findings, one blocking. No mathematical counterexample to the retained arithmetic headline statements was found in the computations below; finite tests are not proofs of their general forms.

The worker's gate at the specified head reports every check passing, including the targeted build, stray files, imports, source material, outside-folder edits and dependency checks. I independently confirmed the head, clean worktree and empty diff outside this roadmap folder. Direct elaboration of `Suggested.lean` succeeded with only the expected `sorry` warning. No PR file was changed.

The requested dependency command produced:

```text
depcheck: 205 roadmaps, 1483 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All eleven explicit `*Needs:*` clauses were read, together with the supplier prose; R01 concerns duplicated ownership, and R03 concerns the internal presentation of the order. No declared supplier gaps were present.

**Source sample.** All fifteen selected targets were inspected in legal full texts. No additional target was marked unverified in the README. Sources were fetched through the sources service; no manifest or source file was added to the PR. Numbering below is for the linked versions, not a newer paper with silently substituted theorem numbers.

| Selected target | Text and locator inspected | Outcome and hypotheses checked |
|---|---|---|
| 0.2 Free covers and Frobenius cohomology | KL-I lines 938–983, §1.5, p.24; KL-II line 7269, Appendix A, p.189 | Finite generation for a free cover; finite projectivity for its underlying splitting. The top-left matrix correction is retained; an equivariant splitting is not asserted. |
| 1.0 Cyclotomic norm fields and field realization | KL-I lines 7778–7844, Definitions 9.5.1–9.5.2 and Theorems 9.5.4–9.5.6, pp.200–202 | Finite K, actual norm-field coefficient and étale equivalences supported. Integral coefficient variants retain the norm-field descent input. Ownership is R01. |
| 1.1 Components and affinoid annuli | KPX lines 573–628, Definitions 2.2.2, 2.2.6 and Remark 2.2.4, pp.15–17; KL-I lines 7797–7809 | Finite K, sufficiently small radii, the coefficient Frobenius and finite-extension radius rescaling are present. The README corrects the source's reversed finite-free wording. |
| 1.3 Integral overconvergent and extended variants | CC-1998 lines 868–875, 925–963, 1111–1185, §§III.2–III.5, pp.16–24; KL-I Theorem 9.5.4 | Rational overconvergence and its integral comparison support the intersection construction together with the integral étale realization. III.5.2 alone is not being treated as an arbitrary affinoid effectivity theorem. |
| 2.1 Balanced tensor contraction | KPX lines 621–626, Definition 2.2.6, p.17 | Arithmetic specialization supported; the general linear contraction is native tensor algebra. Page correction R04. |
| 2.4 ψ-zero projector and fixed spaces | KPX lines 597–607 and 621–626, pp.16–17; direct algebra below | `ψφ=1` implies the projector and splitting. It does not imply surjectivity from ψ-fixed vectors onto ψ-zero vectors; the README does not assert that. |
| 3.4 Generator change and finite torsion conventions | KPX lines 782–826, Notation 2.3.1, Definition 2.3.3 and Remark 2.3.4, pp.20–21 | The p-primary Δ convention and generator ratio agree. Rational averaging is distinguished from integral dyadic descent. |
| 3.6 Integral and affinoid Galois comparison | Pottharst lines 1064–1080, Theorem 2.8 and Lemma 2.9, pp.1598–1599; KL-I §9.5 | Potentially orthonormalizable Banach coefficients and the two period-cochain quasi-isomorphisms are retained. Arbitrary topological exactness is not substituted. |
| 3.8 Cups, residue normalization and field maps | KPX lines 891–943, §2.3, pp.23–24 | Ordered degree-one cup, logarithmic residue and unspecified comparison constant agree. A numerical value for the latter is not fabricated. |
| 4.1 Relative analytic Γ rings | KPX lines 330–390, Lemma 2.1.8 and Proposition 2.1.13, pp.10–12; §2.1, pp.7–15 | Uniform bounds on generators and relations, and the vector-bundle hypothesis for projectivity, are retained. Whole-disc and Robba-annulus rings are distinguished. |
| 4.4 Perfectness, Euler characteristic and duality | KPX lines 1693–1799, Theorems 4.4.3–4.4.8, pp.42–45 | Finite-projective relative modules, derived comparisons, Euler characteristic and degree-two duality match; the ψ perfect amplitude is not narrowed merely from its two-term presentation. |
| 5.2 Functoriality and finite characters | CC-1999 lines 471–537, 600–634, §§II.1–II.3, pp.11–15; KPX lines 1836–1846, Corollary 4.4.11, p.46 | Corestriction tower and inverse universal character agree; specializations include finite torsion characters and use inverse character in the Galois action. |
| 6.2 Good bases and ψ-zero coordinates | LLZ-2010 lines 591–598, 696–708, Theorem 3.5 and Lemma 3.15, pp.10–13; LLZ-2011 lines 746–755, 883–924, §2C and Proposition 2.11/Theorem 2.12/Corollary 2.13, pp.1112–1116 | Odd p, K=ℚ_p, positivity for the prescribed crystalline-basis assertion, and the positive analytic carrier are retained. Remark 2.14's arbitrary-basis conjecture is not asserted as a theorem. |
| 6.3 Wach vectors in integral Iwasawa cohomology | Berger-exp-2003 lines 934–940, 981–996, Appendix A, Theorem A.3 and proof, pp.26–27 | Weight interval and exclusion of the indicated Tate quotient are retained; integral containment is used before rationalization. |
| 7.7 A global rank-one quotient | KPX lines 2718–2827, Theorem 6.3.9 and proof, pp.68–71 | Reduced base, dense one-dimensional saturated Hom condition, coefficient line, proper modification, projective kernel and t-power cokernel match. Smooth-curve identity does not imply absence of bad fibers. |

**Computed adversarial pass.** Each row gives an actual value or comparison. “Retain” means the stated hypotheses survive that test, not that the finite example proves the theorem. Equal-characteristic examples below test the algebraic prefixes; they are not silently substituted for finite extensions of ℚ_p in arithmetic theorems. Nonabelian tests apply to the generic cochain/descent interfaces; Γ itself is explicitly abelian. Nilpotent coefficients are tested where allowed and excluded where reducedness is required.

| Statement | Instances tried | Values computed on the two sides / wrong-model value | Result; change |
|---|---|---|---|
| 0.1 linearization versus operator | S=𝔽₃[U], σ(U)=U³, M=S | `L(1⊗U)=U³`; `L(U⊗1)=U`; F hits only 𝔽₃[U³], so U has no preimage | Linearization can be invertible while F is not onto; retain. |
| 0.1 zero and tensor unit | M=0; M=𝔽₃ with F=id | Zero linearization is the unique isomorphism 0→0; unit has F(1)=1; zero F on 𝔽₃ has kernel dimension 1 | Rank zero admitted, nonzero zero-map excluded; retain. |
| 0.2 free cover and underlying split | M=eS for S=𝔽₃×𝔽₃, e=(1,0) | S→eS has kernel (1−e)S; dimensions on the two clopens are (1,0)+(0,1)=(1,1) | Projective kernel and underlying splitting; R01 does not affect this algebraic target. |
| 0.2 equivariant splitting not automatic | F on E² is the Jordan matrix with diagonal 1, quotient E by first line | A putative fixed lift (a,1) maps to (a+1,1), differing by (1,0) | No equivariant section although the vector-space sequence splits; retain qualification. |
| 0.2 Frobenius cohomology and skew direction | M=E, F=id or F=2; skew ring applied to 1 | F−1=0 gives H⁰=H¹=E; F−1=id gives both 0; right multiplication sends 1 to F−1 | Degrees and orientation agree; retain. |
| 0.3 fixed scalars/idempotents | R=𝔽₂ and R=𝔽₂×𝔽₂ | x²=x has 2 and 4 solutions respectively; for x=(0,1), e₀=(1,0), e₁=(0,1), e₀+e₁=1 | Nonconnected fixed sections cannot be replaced by diagonal scalars; retain. |
| 0.3 fixed basis versus tuple | Rank one over 𝔽₃; ranks (1,2) on two components | Fixed tuples: 3; invertible fixed bases: 2; rank-(1,2) bases: 2×48=96 | Determinant-open basis torsor is required; correction retained. |
| 0.3 truncation | Standard rank one W₂(𝔽₃)→W₁(𝔽₃) | Fixed unit 2 modulo 3 lifts to units 2,5,8 modulo 9; each reduces to 2 | Specified basis is lifted, not replaced by an unrelated tuple; retain. |
| 0.4 ASW equivalence | R=𝔽₃, n=2, constant rank d | W₂(R)=ℤ/9; F=id; fixed module is (ℤ/9)^d on both sides | Coefficient ring and rank agree; retain. |
| 0.4 higher Frobenius coefficients | a=2 over 𝔽₃ versus over 𝔽₉ | Geometric φ²-fixed scalars=𝔽₉; Frobenius descent sends α to α³, not α for α∉𝔽₃ | Constant coefficients require the stated 𝔽₉ base structure; retain. |
| 0.4 diagonal descent action | S=𝔽₃×𝔽₃ with swap; tensor sign representation | Invariants without twist={(a,a)}; diagonal twisted invariants={(a,−a)} | Both dimensions are 1 but embeddings differ; tensor action is essential. |
| 0.4 dual-basis descent | Free rank two on a trivializing cover | Evaluation/coevaluation sends e_j to Σ_i e_i e_i*(e_j)=e_j; zero coevaluation gives 0 | Triangle identities exclude a vacuous descended dual; retain. |
| 0.4 projectivity headline | p=2 or 3, n=1,2; M=W_n(R)^d, also d=0 | F=coordinate p-power; F(ax)=F(a)F(x); module is free rank d, hence projective; zero rank gives 0 | Covers both primes and zero module; retain Lean statement. |
| 0.4 zero-ring input | R is the zero ring, n=1 or 2 | W_n(R) has one element; a unital module over it has M=0; Frobenius and its linearization are the unique map 0→0; projectivity holds | No nonzero-ring assumption is needed for the Lean theorem. |
| 0.4 flatness hypothesis | R=𝔽₃, n=2, M=ℤ/3 over ℤ/9 | Tor₁^(ℤ/9)(ℤ/3,ℤ/3)=ℤ/3, whereas a flat module has Tor₁=0 | Nonprojective quotient is excluded; retain flatness. |
| 0.4 ideal equality | Perfect closure of 𝔽₃[T], J=(T) | φ(J)=(T³) is properly contained in (T); T is not an idempotent and J≠0,1 | Inclusion cannot replace equality; retain. |
| Lean truncated Frobenius | n=0; n=1 over 𝔽₃; n=2 over 𝔽₉ | Empty vector maps to empty vector; a↦a³=a on 𝔽₃; (a,b)↦(a³,b³), square=id over 𝔽₉ | Real body, correct characteristic-p coordinates; n=0 is outside projectivity theorem. |
| 0.5 small matrix group | X=aE₁₂, Y=bE₁₂ | X²=XY=0; exp X=I+X; exp X exp Y=I+(a+b)E₁₂=exp(X+Y) | BCH/additive comparison passes. |
| 0.5 dyadic bound | Scalar 2 in ℚ₂, scalar 4 in ℚ₂ | At k=2^r, v₂(2^k/k!)=1; for 4 it is k+1→∞ | n=1 dyadic exponential fails convergence; n≥2 works. |
| 0.5 Lang classes and torsor side | Additive group over 𝔽₃; b=1 | h³−h=1 has no 𝔽₃ solution but has 3 geometric solutions; h↦h+a changes b by a³−a | Local solvability is not triviality; left/right convention agrees. |
| 0.5 zero group | g=0 | G={1}; φ(h)=hb has one solution, H¹ is the singleton pointed set | Degenerate classification agrees. |
| 0.6 compact cochains | G=1 or ℤ₃; T=ℤ₃ | For 1, H⁰=ℤ₃ and Hⁱ>0=0; for ℤ₃, H⁰=H¹=ℤ₃ | A single finite quotient does not replace the compact tower. |
| 0.6 Milnor warning | G=∏_{j≥1}C_(3^j), T=ℤ₃ | Image of H¹(G,ℤ/3ⁿ) in H¹(G,𝔽₃) is span of coordinates j≥n; coordinate n disappears at n+1 | Cochain surjectivity does not give cohomological ML; retain lim¹. |
| 0.6 coherent quotient descent | C₃⊂C₉, quotient C₃, coefficients 𝔽₃ | Restriction Hom(C₉,𝔽₃)→Hom(C₃,𝔽₃) is 0; transgression sends generator to nonzero extension class | Strict naive quotient action would lose the extension; retain bar roof. |
| 0.6 nonabelian group control | G=S₃, H=A₃, trivial 𝔽₂ | H¹(S₃,𝔽₂)=Hom(C₂,𝔽₂)=𝔽₂; H¹(A₃,𝔽₂)=0; quotient contributes 𝔽₂ | Generic cochains allow nonabelian G; no abelian restriction introduced. |
| 0.6 local invariant | Ordered χ_ur, κ(p) over ℚ_p | inv(χ_ur∪κ(p))=+1; reversed order=−1 | Matches §3.8 and §5.5 normalization. |
| 1.0 norm field and integral realization | Trivial ℤ₃ and torsion ℤ/3 | D(ℤ₃)=A_K; inverse fixed functor returns ℤ₃; D(ℤ/3)≠0 but its rationalization=0 | Full integral object retained; ownership repair R01. |
| 1.0 ring maps and coordinates | p=3, K=ℚ₃ | φ(π)=3π+3π²+π³; modulo 3 it is π³; comparison sends 1→1 | Mixed and equal characteristic rings distinguished; R01 import preserves values. |
| 1.0b extended norms | Teichmüller [x] with α(x)=1/3, r=2 | λ([x])=1/9; λ(3[x])=1/27; λ_r([x³])=1/729=λ_(3r)([x]) | Witt p-factor and Frobenius radius agree. |
| 1.0b endpoint restriction | [s,r]=[2,2] for the preceding x | max(α(x)^s,α(x)^r)=1/9=single endpoint norm | Closed degenerate annulus retains its endpoint value. |
| 1.0b field slopes | Unit⊕tR, and dual | KPX slopes {0,−1}, degree −1; dual {0,+1}, degree +1; zero module has empty list | Nonpure sum is not slope −1/2; sign adapter in R01. |
| 1.0b pure local systems | c=0,d=1; then c=1,d=1 and e=2 | τ=1 satisfies τ=1; τ=p⁻¹ satisfies pτ=1; p²τ²=1 after reindex | Coefficient Frobenius and simultaneous reindex agree. |
| 1.0b global lattice distinction | A rational local system with a specified lattice L; replacement pL | L[1/p]=(pL)[1/p]; L≠pL for a nonzero free lattice | Isogeny data do not pick a unique embedded lattice; retain global-model hypothesis. |
| 1.0c φ^d curve normalization | d=1,2 on algebraically closed tilt | Constant sections fixed by φ are ℚ_p; by φ² are ℚ_(p²); covering exponent 2 has degree 2 | d-dependent patching cannot be replaced by the d=1 carrier. |
| 1.0c B-pair patches | Unit line and its t-twist | After inverting t, tR[1/t]=R[1/t]; positive lattices tB_dR⁺ and B_dR⁺ differ by length-one quotient | Gluing must retain the positive patch. |
| 1.1 component action | K=ℚ₃(μ₃), cyclotomic tensor | Two embeddings give two factors; Γ_ℚ₃ swaps them, Γ_K stabilizes each | All-component Γ and single-component Γ_K differ as stated. |
| 1.1 finite-free direction | p=3, basis 1,(1+π),(1+π)² over φ-source | Target rank over φ-source=3; ψ of these basis elements is 1,0,0 | Reversed finite-free wording fails; README corrects source. |
| 1.1 field extension degree | K′=ℚ₃(μ₃), K=ℚ₃ | Robba extension rank=1, Γ index=2; product=2=[K′:K] | Ring trace alone would miss the cyclotomic factor. |
| 1.2 relative category/radius | A=E[ε]/ε², rank-one free module | Coefficient vector 1+ε≠1 although both have residue 1; rank remains 1; common radius=min(r₁,r₂) for two models | Nilpotents and finite-diagram shrink retained. |
| 1.2 effectivity distinction | An actual trivial A-representation and its realization | Both give R_A with φ(1)=Γ(1)=1; a bare family of pointwise étale modules supplies no such common A-lattice datum | Positive case fixed; no unsupported converse asserted. |
| 1.3 integral intersections | T and pT in the same V | D†(pT)=pD†(T), while D†(V) is unchanged; for T=0 both intersections=0 | Embedded lattice is remembered. |
| 1.4 extended descent/decompletion | Trivial φΓ module, rank 0 and 1 | Extension then descent returns 0 or R; unit/counit sends 1↦1; Γ action remains trivial | Tests full φΓ rather than a bare φ-module converse. |
| 1.5 globally pure restriction | R⊕tR versus a pure line | First object's slopes are 0,−1; second's only slope −1 | Pointwise or mean slope cannot replace the global pure-model hypothesis. |
| 1.6 equivariant operations | Identity extension; degree-two extension | Identity trace sends 1→1; restriction then trace sends 1→2 | Normalized average would give 1 and is wrong for transfer. |
| 2.1 tensor contraction | ℚ; ℚ×ℚ with first projection; r=0 | 2⊗3↦6; (0,1)⊗7↦0, (1,0)⊗7↦7; r=0 sends 1⊗7↦0 | Balanced contraction passes; R04 locator only. |
| 2.2 module ψ | L=2id, r=id; r=0 | ψ(6)=3 and ψφ(3)=3; for r=0, ψφ(3)=0 | r(1)=1 is needed for a left inverse. |
| 2.2 continuity formula | Two coordinates b₁,b₂, r(b₁)=1,r(b₂)=0 | For coordinates (3,7), Σr(b_i)c_i=3=ψ(x) | Finite sum and continuous scalar maps supply continuity, not abstract choice. |
| 2.3 rank-one ψ | Scalar φ=id, a=2, f=6; basis multiplier b=3 | Old coordinate ψ=3; new f′=2,a′=2 gives ψ′=1=b⁻¹·3 | Inverse a and inverse basis multiplier agree. |
| 2.3 nontrivial scalar Frobenius | S=ℚ×ℚ, φ swaps factors, a=(2,3), f=1 | ψ(a⁻¹)=(1/3,1/2), not (1/2,1/3) | Operator on coefficient cannot be omitted. |
| 2.4 projector | E[U], φf=f(U³), ψ coefficient extraction | P(U)=U, P(U³)=0; P²(U)=U; U³=φ(U)+0 and U=0+P(U) | Both direct-sum directions tested. |
| 2.4 fixed-to-zero map | Same polynomial model | ψ-fixed polynomials are constants; (1−φ)c=0; U∈kerψ is not in that image | No unconditional surjectivity; retain. |
| 2.4 sign on nonzero fixed image | φf=f(U³)+f(0)U, same ψ | ψφf=f; ψ(1)=1; (1−φ)1=−U and ψ(−U)=0 | Fixes sign with nonzero output. |
| 2.5 integral trace | p=3, standard Frobenius basis | ψ(1)=1, ψ((1+π)^i)=0 for i=1,2; Tr(1)=3; mod 3, trace identity is 0=0 | Construct integral ψ before division/reduction. |
| 2.6 ψ-complex degrees | ψ=id or 0 on E | ψ=id: (H⁰,H¹,H²)=(0,E,E); ψ=0: differential −id, all cohomology 0 | Degrees 1,2 and sign pass. |
| 3.1 Herr differential | φ=2id, γ=3id over ℚ | d⁰(7)=(7,14); d¹(5,11)=−1; d¹d⁰(7)=14−14=0 | Wrong plus sign gives 28; retain. |
| 3.1 functoriality | Scalar map h=3id with same operators | h d⁰(2)=(6,12)=d⁰h(2); h d¹(5,11)=−3=d¹(15,33) | Actual commuting map requirement passes. |
| 3.2 signed φ/ψ comparison | φ=ψ=id; polynomial U³ | F¹(a,b)=(−a,b), F²(c)=−c; polynomial F²(U³)=−U | Identity comparison fails; retain minus signs. |
| 3.2 kernel criterion | γ=id, kerψ contains U | Kernel differential=0, so H¹ and H² each contain U≠0 | Degreewise surjectivity alone is insufficient. |
| 3.3 corrected section | Polynomial model, γ=2id, q=P | S¹(0,U)=(−U,U); S²(U)=−U³; H²(U)=(U,0), H²(U³)=0 | Corrected formulas pass. |
| 3.3 homotopy equation | Same model, degree 2 input U | id−SF sends U to U; d¹H²(U)=d¹(U,0)=U; uncorrected degree-one square leaves U | Both sides U; −q correction necessary. |
| 3.4 finite geometric sum | G=2id over ℚ, n=0,1,2,3 | Q_n=0,1,3,7; (G−1)Q_n=0,1,3,7=G^n−1 | Empty sum and indexing pass. |
| 3.4 generator versus power | G=id over 𝔽₃, n=3 | Q₃=0, so degree-two map=0, not invertible | Unit/generator condition essential. |
| 3.4 action homotopy | φ=2id, γ=3id, n=1, input (5,11) | dH+Hd=(11,22)+(−1,0)=(10,22)=(γ−1)(5,11) | Homotopy signs match. |
| 3.4 torsion averaging | s²=1 on ℚ₂, s=±1; over 𝔽₂ | (1+s)/2=1 or 0; in characteristic 2 the denominator is 0 | Rational projector valid, integral dyadic shortcut excluded. |
| 3.4a field Euler/duality | K=E=ℚ₃, trivial line and Tate line | Dimensions (1,2,0) and (0,2,1); Euler=−1 in both; H⁰ pairs with dual H² | Twist and shift agree. |
| 3.4a torsion and t-twist | M=R/tR, compared with 0 | (h⁰,h¹,h²)=(1,1,0), Euler=0; zero module (0,0,0) | Rank-zero torsion is not the zero module; Euler alone does not identify cohomology. |
| 3.4a auxiliary extension | d=1,2 | d=1 is tR, slope −1; d=2 has rank 2, degree −1, pure slope −1/2; split tR⊕R has slopes −1,0 | Nonsplit pure extension condition discriminates. |
| 3.4a restriction of coefficients | E=ℚ_p(ϖ), ϖ²=p | Trace Gram matrix diag(2,2p), dual basis (1/2,ϖ/(2p)); pairing values δ_ij even at p=2 in fields | Ramification and coefficient trace handled correctly. |
| 3.4a inseparable negative control | k=𝔽₃(s), L=k(s^(1/3)), outside the arithmetic field hypotheses | Tr_(L/k)(1)=3=0 and the whole trace form is zero; determinant 0, unlike the separable coefficient trace pairing | Finite characteristic-zero coefficient fields exclude this degeneracy. |
| 3.5 rank-one field cases | δ=1, δ=x·abs(x), generic δ | (h⁰,h¹,h²)=(1,2,0),(0,2,1),(0,1,0); Euler each −1 | Both exceptional families tested. |
| 3.5 ψ-zero inverse | Polynomial control γ=2id versus γ=id | On U∈kerψ, (γ−1)U=U versus 0 | Arithmetic inverse is substantive; generic commuting operators do not supply it. |
| 3.6 integral/rational comparison | T=ℤ/3, V=0 after inversion; trivial E-line | Integral H⁰ contains ℤ/3 while rational H⁰=0; trivial E-line Herr H⁰=E=Galois invariants | Integral theory not inferred from rationalization. |
| 3.6 finite Artinian coefficients | A=E[ε]/ε², trivial free line | H⁰=A, dimension 2 over E, whereas reduced fiber has dimension 1 | Coefficients are not discarded; ordinary versus t-localized categories distinguished. |
| 3.7 dyadic descent | Q=C₂, coefficients 𝔽₂ trivial | H¹(Q,𝔽₂)=Hom(C₂,𝔽₂)=𝔽₂; ordinary invariant-only complex has H¹=0 | Derived finite-group descent necessary. |
| 3.8 cup sign | φ=γ=id, x=(1,0), y=(0,1) | x₂y₁−x₁y₂=−1; reversed order=+1 | Ordered cup formula fixes orientation. |
| 3.8 residue and trace | f=π⁻¹; degree-two field extension | Res(f dπ)=1; Tr(1)=2; normalized average would be 1 | Residue generator and field trace distinguished. |
| 3.9 localization and lattice independence | L=R, L′=tR | Union t⁻ⁿL=R[1/t]=union t⁻ⁿL′; L′≠L before localization | Underlying lattice required; filtered colimit independent of shift. |
| 3.9 total-complex convention | A two-direction square with scalar entries 1 | Swapping order of two degree-one directions multiplies degree-two component by −1 | BHS sign adapter retained. |
| 4.0 Fourier/Mellin | Point masses δ_g,δ_h,δ_1 and zero | Mellin δ_g(η)=η(g); product=η(gh); identity mass=1; zero=0; inversion gives η(g)⁻¹ | Convolution and involution agree. |
| 4.0 uniformizer parameter | ϖ′=uϖ | δ(ϖ′)=δ(u)δ(ϖ); same character, changed coordinate value | Parameter is a unit and depends on coordinate as stated. |
| 4.1 analytic disc versus annulus | T=[γ]−1 | T(1)=0; 1/T has a pole at the trivial character but is analytic on an annulus avoiding T=0 | Whole-disc and annular carriers cannot be identified. |
| 4.1 finite torsion components | p=2, element [−1] | Trivial-character value=1; sign-character value=−1 | Both components retained. |
| 4.1 uniform presentation | Free modules of ranks 1,2,3,… across a disjoint exhaustion | Minimal generator counts 1,2,3,… have no finite upper bound; fixed rank d has count d | Pointwise coherence does not imply finite global presentation. |
| 4.2 eventual ψ surjectivity | M=0; a module with nonzero ψ-cokernel | Zero cokernel=0 for every n; if H²ψ(M)≠0, n=0 map has nonzero cokernel by definition | Threshold retained, not made uniform independent of M. |
| 4.2 t quotient | Unit module R | Cone(t:R→R) has H⁰=R/t and no kernel; quotient Herr dimensions (1,1,0) | t-quotient and shift agree. |
| 4.3 preliminary character fiber | A→A/(X), complex A --X→ A in degrees 0,1 | Before fiber H⁰=0,H¹=A/(X); after derived fiber H⁰=B,H¹=B | Tor term survives before general perfectness is proved. |
| 4.3 pairing determinant cover | Pairing matrix [X] over E⟨X⟩ | Determinant X; inverse exists at X=1, not at X=0; ranks there 1 and 0 | Local basis cannot be declared global. |
| 4.3 sesquilinearity | η(γ)=a with a²≠1 | First action evaluates a; second action evaluates a⁻¹ | Involution is necessary. |
| 4.3 logarithmic specialization | T=γ−1, constant test f=1 | −1/(γ⁻¹−1)=(1+T)/T; normalized logarithmic differential gives residue 1/logχ(γ), then multiplication gives 1 | Logarithm and inverse generator retained. |
| 4.3 field generation | Polynomial ψ-fixed constants | (φ−1)constants=0 while kerψ contains U | General algebra does not imply arithmetic generation; retain double-vanishing/annulus hypotheses. |
| 4.3 relative uniformity | Nilpotent A=E[ε]/ε² | A has length 2, A_red length 1; devissage has two E factors, not one | Nilpotent reduction is an induction, not equality of modules. |
| 4.4 perfectness/Euler | Rank 0; trivial rank one over K=ℚ₃ | Euler 0=−1·0; Euler 1−2+0=−1=−1·1 | Rank and sign agree. |
| 4.4 duality shift | Trivial line paired with Tate line | H⁰(E) dimension 1 pairs with H²(E(1)) dimension 1; degrees sum to 2 | RHom shift −2 is required. |
| 4.4 ψ amplitude | Torsion H¹ over analytic coefficient ring | A resolution of A/(T) uses A --T→ A; retaining two displayed cochain terms does not make H¹ projective | Perfect amplitude [0,2] retained; no unjustified [1,2] strengthening. |
| 4.5 derived base change | A --X→ A; also ℤ --2→ ℤ | Fiber at X=0 gives two copies of B; mod 2 gives H⁰=H¹=𝔽₂, versus H⁰=0 before specialization | Ordinary cohomology base change would miss Tor₁. |
| 5.0 independent tower | Degree-p extension and trivial invariant coefficient | Cor∘Res on H⁰ multiplies by p; modulo p the value on 1 is 0 | Norm maps cannot be replaced by restrictions. |
| 5.0 Shapiro inverse character | η(γ)=a | Universal coefficient action γ⁻¹ specializes to a⁻¹, not a | Matches finite-character and pairing conventions. |
| 5.1 tower/ψ comparison | Transition γ→γ³ | Degree map contains Q₃=1+γ+γ²; for γ=2 it is 7, while the other coordinate is unchanged | Correct corestriction coordinates retained. |
| 5.1 stabilized cokernel limit | ℤ₃ tower with multiplication by 3 | Compatible x₀ lies in every 3ⁿℤ₃, hence x₀=0; inverse limit=0 | Required norm-limit vanishing has the stated direction. |
| 5.2 finite characters | Order-three η and dyadic sign | η⁻¹=η²≠η for order 3; sign⁻¹=sign=−1 on −1 | Odd-order test detects the inverse even though dyadic sign alone cannot. |
| 5.3 cyclotomic deformation | Principal Λ=E[[T]], γ−1=T | ker(T)=0, coker(T)=E; universal Γ cohomology occurs in degree 1 | Shift and coinvariant carrier agree. |
| 5.4 analytic comparison | Trivial coefficient extension E→E[ε]/ε² | Extended free rank r module has E-dimension 2r at a finite fiber, versus r after reduction | Analytic scalar change retains nilpotents. |
| 5.5 pairing arithmetic specialization | Ordered χ_ur and κ(p), η and η⁻¹ | Invariant +1; reversed −1; character factors multiply η·η⁻¹=1 | Same normalization as §§0.6,3.8,4.3. |
| 5.6 geometric nontrianguline condition | E=ℚ₃, L=ℚ₃(ζ₃), V=Res L(η), η order 3 | dim_E V=2; over L two character lines η,η⁻¹; φ-fixed space contains V of dimension 2 | No E-line alone does not imply double vanishing; geometric hypothesis excludes it. |
| 5.6 annular generation | Zero module and a nonzero polynomial control | For zero, both sides=0; control has fixed image 0 and kerψ containing U | Arithmetic hypotheses remain indispensable. |
| 5.6a differential lattice | E, E(1), E(−1) | Generators 1,t⁻¹e₁,te₋₁; evaluation t⁻¹·t=1; Frobenius eigenvalues 1,p⁻¹,p | Embedded unfiltered lattice distinction correct; import under R01. |
| 5.7 period boundary | V=E trivial; V=E(1) | Trivial de Rham tangent=0 and H¹_e=0, while H¹_f has unramified dimension 1; Tate tangent and H¹_e each dimension 1 | H¹_e cannot be replaced by H¹_f. |
| 5.7 boundary lift/sign | Lift w changed to w+v | New cocycle=(gw−w)+(gv−v); difference is the coboundary dv | Supplied boundary and sign survive lift changes. |
| 5.7 all-level condition | Zero class; horizontal generator in tN | Zero specializes to zero at every level; multiplying t⁻¹e₁ by t gives e₁, not t⁻¹e₁ | tN condition differs from N; theorem retains its rank-two arithmetic hypotheses. |
| 6.0 Wach height/filtration | Trivial line; V=ℚ_p(−1), n=πe₋₁ | Trivial height=0; φ(n)=qn and φ(n)∈qN, so n mod π lies in Fil¹ | Replacing qN by qφ*N=q²N gives the wrong filtration. |
| 6.0 embedded lattice scale | T and pT | N(pT)=pN(T); N(pT)[1/p]=N(T)[1/p] | Integral lattice not forgotten. |
| 6.1 unramified/coefficient change | Identity and unramified tower F″/F′/F, unit module | 1⊗1↦1 in both composites; coefficient extension O_E→O_E′ sends basis 1 to 1 | Unramified and finite-flat scope retained. |
| 6.2 integral good basis | Trivial crystalline line, p=3 | n=1 gives (1+π)φ(n)=1+π; ψ(1+π)=0, and its Λ-coordinate is 1 | Good-basis coordinate normalization passes. |
| 6.2 positive versus full Robba module | u=1/π−1/φ(π) | ψu=0; leading Laurent coefficient is (1−1/p)/π≠0 | u is not positive analytic; full N_dR cannot replace the positive Wach carrier. |
| 6.2 basis-coordinate change | Rank one with n′=bn, b∈E× | New ψ-zero basis=b old basis, so coordinate changes c↦b⁻¹c | Inverse basis matrix required. |
| 6.3 integral ψ-fixed containment | Berger interval lower endpoint a=0 | General bound is π⁻¹N; with no trivial quotient bound improves to N; N⊂φ*N then ψ-fixed vectors coincide with D(T)^ψ=1 | Quotient exclusion is what removes the pole; retain. |
| 7.1 rank-one parameter | δ=1 and δ=x·abs(x) over ℚ_p | δ(p)=1 in both; on units, values 1 and u respectively | Frobenius coefficient alone cannot distinguish the Tate character. |
| 7.1 embedding periods | Two distinct embedding factors t_σ,t_τ | Their ideals are comaximal; product is the t-factor; quotient by product splits by Chinese remainder | Retain all embeddings, not just a scalar t-power label. |
| 7.2 exceptional field cohomology | Same three δ cases as §3.5 | Dimensions (1,2,0),(0,2,1),(0,1,0); χ=−1 | Late classification agrees with earlier field bootstrap. |
| 7.2 rank-one submodules | t^mR(δ)⊂R(δ), m=0,1,2 | Quotient lengths 0,1,2 at the period divisor; unsaturated labels δ,δx,δx² | Saturation removes the algebraic factor. |
| 7.2a Sen polynomial | Unit, Tate, nilpotent character 1+εlog | Polynomials T, T−1, T−ε respectively; reduction of last is T | Nilpotent-sensitive weight retained. |
| 7.3 Artinian local algebraicity | A=E[ε]/ε², δ=1+εlog | Derivative=ε≠0, but residual derivative=0; ε is not an integer scalar in A | Residual integer weight is insufficient. |
| 7.4 coefficient line in classification | M=R(δ)⊗L, rank-one L | H⁰(M(δ⁻¹))=L; evaluation R⊗L→M has rank 1 on both sides | Classification does not choose a global basis of L. |
| 7.5 strictness and saturation | R⊕R with repeated trivial character; tR⊂R | Hom from R has dimension 2, not 1; R/tR≠0 is torsion, not projective | Split flag need not be strict; stable injection need not be saturated. |
| 7.5 rank-zero flag | M=0 | Number of graded pieces=0, parameter list empty | Empty filtration needs no modification. |
| 7.6 Rees chart | I=(X,Y), X-chart | Correct chart embeds with U=Y/X; for principal (X), chart A[X/X]=A | Unit/principal blowups are identity. |
| 7.6 native Fitting index controls | M=E², k=0,1,2; then zero ring | Fitt₀=0, Fitt₁=0, Fitt₂=E; natural subtraction 2−2=0 gives the unit minor; over the zero ring top=bottom | Native nontrivial-ring hypothesis in the rank iff is required. |
| 7.6 flat image versus cokernel | A --X→ A | Image (X)≅A free rank 1; cokernel A/(X) has Tor₁ with A/(X) equal A/(X) | Image flattening is not cokernel flattening. |
| 7.6 arbitrary pullback | X↦ε in B=E[ε]/ε² | Image (ε) has length 1; a nonzero finite free B-module has length at least 2 | Source's unrestricted claim false; README's regularity qualification fixes it. |
| 7.6 dominant base change | Y↦XT, B=E⟨X,T⟩ | Ordinary chart B[U]/(X(U−T)); dominant transform B[U]/(U−T)=B | Extra component removed only by dominant transform; README correction valid. |
| 7.6 complex flattening | A --X→ A, degrees 0,1 | H⁰=0 locally free; H¹=A/(X) has projective dimension 1; H²=0 | Claimed Tor bounds, rather than freeness of every Hⁱ, pass. |
| 7.7 global quotient | Rank-one strict M=R(δ)⊗L | λ=id, kernel rank 0=d−1, cokernel 0, bad locus empty | Hypotheses include d≥1 implicitly through nonzero Hom; rank zero cannot satisfy them. |
| 7.7 bad-point allowance | Map t:R(δx)→R(δ) | Kernel=0, cokernel=R/tR killed by t, but map is not onto | The theorem allows such defects away from the strict dense set. |
| 7.8 coherent/saturated flag | A graded piece t^mR(δ), m=1 | Coherent parameter δx; saturated parameter δ; quotient length 1 | Special-fiber parameters need algebraic corrections. |
| 7.8 reduced versus nonreduced | X and X_red at same closed point | Residue fields agree; nilpotent ε maps to 0 in both fibers, but ε≠0 in O_X | Fiber theorem can pass through reduction; global coherent-flag theorem retains reducedness. |

The table contains 135 computed rows. It includes all fifteen seeded targets, every numbered subsection, the two Lean declarations, and the objects touched by the findings. It also tests source corrections rather than merely repeating their citations. In particular, the dyadic, nonreduced, ramified-coefficient, nonabelian-cochain, zero-rank, torsion-module and nonflat-pullback examples have different answers from the plausible wrong models.

**Headlines and Lean acceptance coverage.** The README's end theorems and deep intermediate results are:

| README headlines | Acceptance-file disposition |
|---|---|
| §0.4 Witt-module projectivity | Stated at lines 63–73 on native truncated Witt vectors. |
| §§0.3–0.5 finite ASW descent and small-group Lang classification; §0.6 compact finite descent | Named in docstring lines 16–22; fixed-basis torsors, étale coefficient-sheaf/Frobenius-module categories, small Greenberg groups and coherent compact-cochain constructions are missing. |
| §§1.0–1.6 realizations, overconvergence, slope/pure descent, decompletion, curve/sheaf/B-pair equivalences | Named at lines 23–26; period/Robba and annular module carriers and patching rings are missing. Common field-core ownership must be corrected by R01. |
| §§3.2–3.8 arithmetic φ/ψ-Herr and Galois comparisons, cups and local duality | Named at lines 27–30; arithmetic period modules and ψ are missing. Arbitrary-operator identities would not state these headlines. |
| §§4.2–4.5 uniform finiteness, perfectness, Euler characteristic, Tate duality and derived base change | Named at lines 27–30; relative analytic Γ rings and arithmetic module categories are missing. |
| §§5.0–5.5 integral and analytic comparison with the independent Iwasawa tower; residue pairing specialization | Named at lines 31–34; compact corestriction tower, Shapiro comparison and residue-normalized pairing are missing. |
| §§5.6–5.7 annular generation and the all-level exponential-image criterion | Named at lines 34–39; annular Γ modules, differential lattice and cyclotomic localization are missing. The supplied general exponential is distinguished from the new all-level theorem. |
| §§6.0–6.3 Wach existence/uniqueness, good bases and the integral Iwasawa interface | Named at lines 40–44; embedded Wach lattices and their positive analytic scalar extension are missing. |
| §§7.4,7.7–7.8 rank-one family classification, global quotient, coherent triangulation and special-fiber triangulinity | Named at lines 45–47; relative Robba sheaves, Sen/character geometry, modifications and flags are missing. |

For the sole sorried theorem, a scratch copy with `#check @truncatedWittFrobenius` and `#check @wittProjective_of_flat_phi` elaborated successfully. Both elaborated types were compared with §0.4. The prime fact, `0<n`, characteristic, perfectness, finite presentation, scalar flatness, additive equivalence and its semilinearity all remain in scope. No binder repair is needed. The apparently separate `ZMod (p^n)` scalar action is not an arbitrary competing coefficient action: a module action of this prime quotient on the given additive group is determined by integer multiplication.

The mathematical source for that theorem was also read: KL-I lines 2980–3009, Lemma 3.2.12 and Proposition 3.2.13, pp.75–76. The proof reduces using scalar flatness and applies Frobenius-stability to finitely generated Fitting ideals; it is not an instance of “all finitely presented modules are projective.” Separate scratch probes replacing the sole `sorry` by `simp`, `rfl` and `infer_instance` all failed. No matching one-lemma projectivity result was found in the pinned object searches. The definition is a small coordinate operation on a native carrier; no heavy construction, sorry'd data, free predicate, `set_option`, admitted example or boundary-case padding appears in the Lean file. No further statable arithmetic headline was found to be missing.

**Pinned-library evidence and duplication audit.** The manifest pins were confirmed: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths in the following table are relative to the named library repository. The thirteen table entries group the declarations opened at those pins; their existence was not inferred from current online documentation.

| Pin / file and line | Declaration or native object inspected | Consequence for this roadmap |
|---|---|---|
| Mathlib `Mathlib/RingTheory/WittVector/Truncated.lean:62`, `74`, `78`, `270` | `TruncatedWittVector`, `mk`, `coeff`, its commutative ring instance | Native carrier is a length-n coefficient vector; the kept definition supplies coordinate Frobenius without inventing Witt vectors. |
| Mathlib `Mathlib/LinearAlgebra/TensorProduct/Associator.lean:39`, `50` | `TensorProduct.lid`, `lid_tmul` | The left unit map sends `a⊗m` to `a•m`. |
| Mathlib `Mathlib/LinearAlgebra/TensorProduct/Map.lean:343`, `357` | `LinearMap.rTensor`, `rTensor_tmul` | §2.1's contraction is the composite of `r.rTensor M` with the left unit map. It needs no independent tensor carrier; these declarations can sharpen its supplier citation. |
| Mathlib `Mathlib/Algebra/Category/ModuleCat/Descent.lean:59` | `comonadicExtendScalars` | Requires faithful flatness; it is not itself the finite-projective ASW equivalence. |
| Mathlib `Mathlib/Algebra/Homology/Homotopy.lean:125` | Native `Homotopy`, especially its commutation equation | Its convention is `f=dH+Hd+g`, matching the computed §3.3 equation. |
| Mathlib `Mathlib/Algebra/Homology/ShortComplex/ModuleCat.lean:131`, `173` | `moduleCatCyclesIso`, `moduleCatHomologyIso` | Actual kernels and kernel/image quotients, with their maps, already exist. |
| Mathlib `Mathlib/RingTheory/Trace/Basic.lean:501` | `traceForm_nondegenerate` | Finite-dimensional separable field extension required; characteristic-zero coefficient fields meet it. |
| Mathlib `Mathlib/NumberTheory/Cyclotomic/CyclotomicCharacter.lean:307`, `336` | `cyclotomicCharacter`, `cyclotomicCharacter.continuous` | Native character and continuity exist. The definition is trivial without enough roots of unity; the absolute-Galois application supplies them. Continuity alone is not that root hypothesis. |
| Tau Ceti `TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Product.lean:595` | `TauCeti.ContCohomology.explicitCup11` | Continuous topological coefficients and continuous equivariant additive pairing; not restricted to discrete coefficients. |
| Tau Ceti `TauCeti/RepresentationTheory/Homological/ContCohomology/Corestriction/Basic.lean:467`, `471` | `explicitCor1`, `explicitCor1_eq_transversal` | Open subgroup and finite index are retained; degree-one transfer is independent of transversal. |
| Tau Ceti `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145`, `161`, `179`, `252`, `265`, `421` | `completedGroupAlgebra`, `proj`, `ext`, `of`, `proj_surjective`, `continuous_of` | Λ is an existing inverse-limit carrier, not a new formal power-series stand-in; the finite dyadic factor remains. |
| Tau Ceti `TauCeti/RingTheory/FittingIdeal/Basic.lean:343`, `348`, `389`, `409`, `417` | `fittingIdeal`, presentation independence, free-summand shift, free-rank criterion, quotient zeroth ideal | The rank iff requires a nontrivial ring and free finite module. It is not a flatness assertion about every finite module. |
| Tau Ceti `TauCeti/RingTheory/FittingIdeal/BaseChange.lean:134`, `175`, `184` | `fittingIdeal_baseChange`, field/residue-field rank criteria | Fitting ideals commute with arbitrary commutative scalar change for finite modules; this does not make blowups or images commute with arbitrary base change. |

Object searches covered Robba/Wach/Herr carriers, Frobenius-stable ideals, truncated Witt Frobenius, projectivity, tensor contractions, cochains, completed group algebras and Fitting ideals. They found no pinned arithmetic Robba/Wach/Herr carrier or existing version of the stated projectivity theorem. Searches for the two fully qualified Lean names in main and the available package/open-roadmap material found no other owner. Thus there is no namespace collision in `Suggested.lean`. The bare missing-name lead for `CoefficientRobbaModule.etaleEquivalence` is a proposed export, not a nonexistent pinned supplier theorem; it belongs to R02's formatting problem, not a fabricated supplier-gap finding.

The common field core is the substantive ownership conflict, R01. The general tensor, cochain, completed-algebra and Fitting carriers are already imported. §2.1's elementary composite is useful explanatory infrastructure, but its formula and naturality should be expressed using the opened native maps, not promoted to an acceptance headline. The particular analytic Rees-chart flattening, arithmetic ψ/Herr comparisons and family triangulations are not supplied by the cited basic coherent-geometry contracts; this roadmap is their owner.

**Cross-roadmap resolution.** I used the roadmap search/show service for object searches and open supplier text, and read the relevant main/Completed files for existing roadmaps. Main's `DerivedModuleAlgebra` and `PadicMeasuresIwasawaAlgebras` were also inspected for roadmap shape. These are the supplier endpoints checked; the locators are file lines, not pull-request numbers.

| Supplier file | Resolved contract and convention check |
|---|---|
| `TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:1714–1739` | F.3 continuous compact/rational cochains, Milnor comparison, coherent Hochschild–Serre roof, local duality. Trivial G gives H⁰=T, higher H=0; C₂ with 𝔽₂ gives nonzero H¹. No discrete-only substitution. |
| `TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:3740–3800` | F.6 period boundaries and stages 1–3. The supplied field core and embedded lattice cause R01; the exponential reexport in §5.7 itself has the correct direction. |
| `TauCetiRoadmap/PadicPeriodRings/README.md:89–217`, `417–470` | Completed fields, period topologies, invariant functors and fundamental period identities are present. No general topological cochain exactness is imported from a merely algebraic sequence. |
| `TauCetiRoadmap/ColemanPowerSeries/README.md:5822`, `5840`, `5863`, `5881`, `5904` | §§1.45–1.49: base-valued trace is pψ, zeroth Frobenius coordinate is ψ. For Y=1+T, trace(Y^p)=pY and ψ(Y^p)=Y. This reconciles base-valued trace with the embedded-subring trace notation here. |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403`, `1542–1573`, `2316` | §1.T.1's module-tower/Milnor subsection, §1.1 derived limits and §S.1 double-complex spectral sequence exist. Shift is `x_n−φ_n(x_(n+1))`; derived limit is its cone shifted −1. |
| `TauCetiRoadmap/PerfectoidTowers/README.md:1896–1923` | P9.0 gives finite-surjection lifting, inverse-limit continuous cochains and compact-carrier comparison, with the intended topologies. |
| `TauCetiRoadmap/PerfectoidSpaces/README.md:4040`, `4292`, `4355`, `4525`, `4611`, `4652`, `5517`, `8478` | P1.6, P1.10–11, P1.16–18, P1.31 and P3.8 resolve the tilting/Witt/θ, completed cyclotomic and finite-étale comparison inputs; nearby P3.7–13 supplies the stated almost-purity context. |
| `TauCetiRoadmap/CrystallineCohomology/README.md:6510`, `6630–6655` | CR.4.7 supplies all-rank perfect-field isocrystal classification, with descent from algebraically closed coefficients. It is not an arbitrary relative affinoid slope filtration. |
| `Completed/AdicSpaces/README.md:691` | Layer 6 supplies the adic curve over ℚ_p, starting from a perfect complete rank-one field. The d-dependent φ^d patching comparison is additional work here. |
| `TauCetiRoadmap/AdicSpacesPartII/README.md:1769`, `2759` | R0.3 and R0.5 supply completed tensor products of Huber pairs and Banach modules, not the later arithmetic realization equivalences. |
| `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215–340` | L0–L2 supplies sheaf/module and vector-bundle comparisons used by patching. |
| `TauCetiRoadmap/RigidAnalyticGeometry/README.md:177–263`, `464–505`, `617`, `690`, `762` | Affinoids, tensors, sites, coherence, relative analytification over an affinoid base, and proper GAGA resolve. Relative finite-type Rees charts are in the supplied analytification's domain. |
| `TauCetiRoadmap/PadicFunctionalAnalysis/README.md:354–457`, `682–776`, `837–880` | Finite-module topologies, potentially orthonormalizable models, countable-type splittings, Amice stages and unit weights resolve. §4.7's distribution carrier has stage seminorms but no global topology; §4.0–4.1 here must supply their stated analytic topology, as planned. |
| `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:1229`, `2213`, `3367` | §2.2 measure ψ, §3a.1 unit weight components, §5.2 compact Hausdorff inverse systems. Compactness and countable cofinal indexing are not replaced by arbitrary inverse systems. |
| `TauCetiRoadmap/ClassFieldTheory/README.md:920`, `1220`, `1312`, `1505` | Layers 5–7 and 9 give finite local duality, reciprocity and Weil groups. Arithmetic Frobenius remains primary for the invariant; geometric reciprocity is its inverse for rank-one labels. |
| `Completed/LocalFieldsRamification/README.md:576–615` | Layer 2 supplies unramified extensions and arithmetic residue Frobenius x↦x^q. The completed main roadmap, rather than its stale open-checkout path, was used. |
| `TauCetiRoadmap/ProfiniteCohomology/README.md:583–2091`, Layers 0–12 | Finite/discrete cochains, Shapiro, cups, inflation–restriction and cohomological dimension are the named input; F.3 owns the compact and coherent derived extension. |

Object searches also covered main, the board package material and the supplied open heads. Relevant downstream matches include `TauCetiRoadmap/PadicHodgeRegulators/README.md:2516–2551`, which imports these signed Herr complexes and separately extends exponential maps to non-étale de Rham modules; `PadicExtensionFamilies` and `SelmerIwasawaCohomologyPartII` were searched for the same objects. The sign check in the regulator consumer gives the same `d¹(a,b)=(γ−1)a−(φ−1)b`. These later consumers were not turned into suppliers. The `LocalGaloisDeformationRings` §0.4 reference resolves to its explicit use of §§1.1–1.2, 3.6, 4.4–4.5 here, not an earlier competing construction. Wider references to `PadicHodgeTheory`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory`, `VectorBundlesAndIsocrystals`, `LocallyAnalyticDistributions`, `SelmerIwasawaCohomology` and `ArithmeticGaloisDuality` describe ownership boundaries/consumers and are not new upward `Needs` edges.

## Not verifiable

- **NSW, Theorem 2.4.1, Chapter II §4, p.111:** the sources service identified the DOI's publisher as paywalled and returned `uncertified`. I did not read past that paywall or infer the source's precise wording. The independently checked F.3 supplier contract states the coherent Hochschild–Serre comparison actually consumed here. This is not an outstanding missing-text request and does not park this review.
- No selected source target remained inaccessible. The other referenced works, including Bloch–Kato through an institutional copy, Nekovář through Numdam, both KL papers, the specified KPX v3, the CC author copies and the LLZ manuscripts/publisher copies, were legally retrieved. Retrieval is not certification of every unsampled proof in those works. No future formal proof of the missing analytic carriers is certified by this review's Lean build.

## Source issues

The first three corrections below are already incorporated in the README. Its §1.1 also has the correct Frobenius direction, and §7.6 already repairs the two KPX pullback assertions. These source issues are not additional findings against the roadmap. The author corrections were checked at KL-II lines 7269 and 7284–7292 (Appendix A, p.189), and Berger-errata lines 75–83 (§2, p.3).

- **Misprint** in KL-I at Lemma 1.5.2, manuscript p.24: the source says to clear the bottom-left block; it should be the top-left block; affects the proof.
- **Gap** in KL-I at Lemma 3.2.6, manuscript pp.73–74: the source says its solution-tuple algebra supplies invariant bases; it should restrict to the determinant-invertible clopen basis locus; affects the proof.
- **Error** in KL-I at Proposition 3.2.7, manuscript p.74: the source says descent uses invariants of the Witt coefficient ring alone; it should tensor with the representation and take diagonal invariants; affects the proof.
- **Misprint** in KL-I at Lemma 3.2.12, manuscript p.75, lines 2985–2990: the source says the matrix relation sums the row index while fixing the column index; it should sum columns in each fixed row of `(I−AB)x=0`; affects the proof.
- **Error** in KPX at Definition 2.2.2, manuscript p.16, lines 595–597: the source says the Frobenius source is free of rank p over its target; it should make the target free over the Frobenius image of the source; affects a stated result.
- **Error** in KPX at Corollary 6.3.6(1), manuscript p.67, lines 2676–2678: the source says every further pullback preserves flat image; it should require preservation of the regular Fitting generator, or distinguish the pulled-back image sheaf; affects a stated result.
- **Error** in KPX at Corollary 6.3.6(1–2), manuscript pp.67–68, lines 2676–2707: the source says ordinary blowup formation commutes with dominant base change; it should use flat base change, or successive dominant transforms for dominant nonflat maps; affects a stated result.
- **Gap** in Berger-Wach-2004 at Definition III.4.1, manuscript p.21, lines 735–744: the source says the rational height and Γ conditions define the whole Wach category; it should also require étaleness after B_F scalar extension; affects a stated result.
- **Gap** in Berger-Wach-2004 at Theorem III.4.4, manuscript p.22: the source says a filtered class modulo π directly has a filtered lift; it should improve the lift by successive `γ−χ(γ)^j` operations; affects the proof.
