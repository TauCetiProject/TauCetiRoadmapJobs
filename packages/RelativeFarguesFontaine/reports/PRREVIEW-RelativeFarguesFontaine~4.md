# Review of RelativeFarguesFontaine (pull request #1209 at d58cce9)

**Verdict:** accepted

No findings. Ready for a human's final approval; this review does not approve or merge the pull request.

🤖 AI review: incremental re-review of 33 changed lines since `956b64b`. The only changed file is `TauCetiRoadmap/RelativeFarguesFontaine/README.md`; `Suggested.lean` is unchanged. The review covers the repaired ownership boundary, all changed claims and Checks, their suppliers and sources, the dependent Cohen signatures, and fresh gate/build/elaboration checks. Unchanged mathematical tests are explicitly carried from the previous report rather than presented as new work.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/RelativeFarguesFontaine/README.md:13`, `:129`, `:677` and `:696` import DeformationAndDerivedPatchingAlgebra §1.10's complete residue extension; §0.23 retains Frobenius lifting and residue-compatible comparison. The underlying construction is no longer independently planned.

## Verified sound

The previous report has one finding, now repaired. There are zero new findings and zero blocking findings. The adversarial tables contain 124 rows: 14 fresh rows for the changed contract, proof route, laws and Checks (including the two dependent Lean headlines), and 110 unchanged rows carried from [the previous review][r3]. These are computed tests, not proofs of the general theorems.

### Gate, scope and elaboration

Verified head `d58cce9dac9e00e79f2d577cf4c6673bde037fa1`. The worktree is clean, and the diff against `origin/main` outside `TauCetiRoadmap/RelativeFarguesFontaine/` is empty. No declared gaps are present. The revised passages add no prime restriction, algorithm, copied source passage, stand-in carrier, sorry'd data or option override. They preserve the general mixed/equal-characteristic and imperfect-residue scope. Repository README and CONTRIBUTING guidance was read; the main-branch AlgebraicVectorBundles and RigidAnalyticGeometry roadmaps were consulted for form.

The supplied gate, including its targeted build, passes with every counter zero. The independent gate rerun returned:

```text
gate RelativeFarguesFontaine: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The independent dependency check returned:

```text
depcheck: 205 roadmaps, 1469 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. DeformationAndDerivedPatchingAlgebra is at position 58 and RelativeFarguesFontaine at position 111 in the supplied merge order. The added edge points toward an earlier supplier.

Separately ran `lake build TauCetiRoadmap.RelativeFarguesFontaine.Suggested` and `lake env lean` on the unchanged target file: both succeeded, with precisely 14 sorry warnings and no other warnings. A scratch copy elaborated `#check @name` for all 25 declarations; all 25 types match the worker's elaborated snapshot. On that copy, each of the 14 theorem holes was also tried with `simp`, `rfl` and `infer_instance`, each required to close the goal completely. None closed. No new padding was identified; the prior object-based exact-lemma audit for the unchanged statements is carried forward.

The four binder alerts are not defects. The two Cohen theorems explicitly retain `hπ`, `hK` and completeness through `include`; their hypotheses appear as arrows in the elaborated types. `ExactSquare` specifies its ring maps and forces the two composites to agree through its kernel equivalence. `PatchingData` bundles modules and their overlap equivalence; the scalar towers occur in `sections`, the comparison maps and theorems that require them. No signature changed.

### Resolved suppliers and ownership

The new contract was read at the supplier's open new-roadmap head using the roadmap service. The main content checkout is `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`; DeformationAndDerivedPatchingAlgebra is not on that main checkout. No revision-only pull request was used as a supplier.

| Supplier inspected | Exact location | Scope verified |
|---|---|---|
| DeformationAndDerivedPatchingAlgebra | `TauCetiRoadmap/DeformationAndDerivedPatchingAlgebra/README.md:246`, especially `:248` | §1.10 supplies a faithfully flat local map with complete Noetherian target, specified arbitrary residue extension and equality of extended maximal ideals. For a DVR, the ideal is `(π)`. The contract is broader than the strict-Cohen specialization in the following paragraph. |
| DerivedModuleAlgebra | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:815`, `:1093`, `:1116`, `:1134`, `:1303` | §§0.4–0.12 supply the full complex, Tor-independent base change, localization/filtered colimits and smooth computation. §0.25 supplies morphism obstruction in Ext¹ and ambiguity in Ext⁰, with the action induced by the map being lifted. |
| VectorBundlesAndIsocrystals | `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:92` | Layer 0 supplies the perfect strict lift, its uniqueness and coefficient Frobenius, including equal characteristic with π fixed. The revised perfect-field Check consumes this existing construction. |

The revised Needs line and Layer 0 dependency list name these inputs. Reading the supplier shows that the completion step belongs to it; the README correctly attributes only the local residue extension to Stacks Tag 03C3. Flatness supplies the Tor independence for reduction. For a target quotient transition, the kernel is killed by π and its action factors through the residue map being lifted. Thus the Frobenius case uses the Frobenius-twisted K-action, rather than silently reusing the identity action. Once comparison maps induce identity on the residue, flatness identifies every associated graded piece with K, and separated completeness gives an isomorphism on limits.

The roadmap resolver was rerun against main and the 437-head index: no cross-roadmap citation or roadmap Lean-name lead remained. Its external-library-name check was unavailable, so the relevant library declarations were checked directly at the local pins below. Full manual source and ownership work on untouched passages is carried from [the previous review][r3], as required for this incremental review.

Fresh object searches used the roadmap service, main, the board packages and pinned libraries for Cohen lifts, residue extensions, marked comparisons and coefficient Frobenius. They confirm the ownership split above. Related board work on Lubin–Tate formal modules retains chosen coefficient inputs; it does not supersede this general O_E-linear coefficient-ring comparison. The supplied open work on big Cohen–Macaulay algebras and Lubin–Tate cohomology consumes coefficient-ring extensions. No new owner conflict or declaration-name collision was found. The Lean namespace and every declaration are unchanged.

### Pinned declarations opened

The pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The four directly reopened declarations relevant to the repair are:

| Declaration | Pinned file and line | Meaning used |
|---|---|---|
| `IsDiscreteValuationRing` | `Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:56` | A local PID domain whose maximal ideal is nonzero; fields and the zero ring are excluded. |
| `IsAdicComplete` | `Mathlib/RingTheory/AdicCompletion/Basic.lean:56` | Extends both Hausdorffness and precompleteness. The Lean completeness premise includes separation. |
| `Module.Flat` | `Mathlib/RingTheory/Flat/Basic.lean:113` | Tensoring preserves the specified submodule injections, with arbitrary injections supplied by its API. It is not an assertion that every algebra is flat. |
| `IsAdicComplete.liftRingHom` | `Mathlib/RingTheory/AdicCompletion/RingHom.lean:48` | Compatible quotient ring maps give a map into the complete target. It does not supply the missing compatible finite-level maps. |

The prior pinned-library audit of unchanged geometric carriers and patching statements is retained by reference; those absences are not inferred from the resolver's unavailable external-library search.

### Source locators and seeded sample

Only seeded target §0.23 intersects the diff. Its five locators were freshly read through the sources service, from the author-hosted FF copy and the Stacks project. There are no newly flagged unverified locators. The other fourteen seeded targets are unchanged; their computed rows below are carried forward, without claiming a fresh source inspection of those passages.

| Changed claim / locator | Source evidence | Verification |
|---|---|---|
| §0.23; FF (2017), Remarque 1.3.5, printed p.60 | ff line 2503 through line 2516 | Arbitrary K over the perfect finite residue field; cotangent complex concentrated in degree zero; flat complete Cohen lift, comparison and lifted q-Frobenius; noncanonical choices for imperfect K. The extract's PDF page 70 is printed page 60. |
| Supplier contract; Stacks Lemma 10.159.1, Tag 03C3, Algebra p.435 | stacks line 20435 through line 20460 (Algebra) | Flat local residue extension and equality of maximal ideals. Completeness/Noetherianity are supplied by DeformationAndDerivedPatchingAlgebra, not falsely attributed to this lemma. |
| §0.23; Tag 08S9, Cotangent Complex Lemma 3.4, p.3 | stacks line 108 through line 112 (Cotangent Complex) | Cotangent complexes commute with directed colimits. FF supplies the smooth-algebra approximation of K over the perfect base. |
| §0.23; Tag 08QQ, Cotangent Complex Lemma 6.2, p.12 | stacks line 519 through line 528 (Cotangent Complex) | Derived base-change hypothesis is Tor independence. Flatness of the coefficient lift supplies it when reducing O_E modulo π. |
| §0.23; Tag 08R5, Cotangent Complex Lemma 9.1, p.19 | stacks line 847 through line 854 (Cotangent Complex) | Smooth cotangent complex is Ω¹ in degree zero. The filtered-colimit argument gives the field statement; no finite-dimensional claim is added for arbitrary K. |

All these sources were readable legally. No source manifest or pull-request file was edited.

### Headline coverage

The headline inventory is unchanged: Dwork and twisted/Lubin–Tate coordinates; integral period-chart and annular comparisons; Cohen lifts; relative curves and diamonds; Cartier/symmetric-divisor and completed de Rham comparisons; eigenvector sections; exact-square and Beauville–Laszlo patching; modification/lattice and meromorphic gluing; B-pair comparisons; normalized one-leg compatibility; punctured Witt algebraicity; and G-bundle tensor gluing/descent.

The fourteen algebraic headline statements remain in `Suggested.lean`; the geometric headlines and their missing ringed-curve, divisor, completion, bundle, shtuka and torsor carriers remain named in its module docstring. The combined Cohen existence statement remains appropriate: the supplied coefficient lift is now an input to the new Frobenius-lift conclusion, not a second independently planned construction. Its companion comparison statement retains arbitrary marked flat separated complete lifts and asserts existence, not uniqueness or Frobenius compatibility.

### Fresh adversarial calculations

Here k=F_q and K=k(T), unless specified otherwise. These rows cover every changed mathematical claim, the new supplier contract, all four rewritten Checks and the two Lean statements that depend on §0.23.

| Statement | Instances tried | Computed values on both sides / excluded model | Result; change |
|---|---|---|---|
| Underlying supplied lift and marked reduction; README :129, :677, :683 | O=k[[π]], A=K[[π]] | A/πA=K, ker(ρ)=πA=m_O A=m_A, ρ(T)=T; scalar extension is flat and faithful. A=0 would have zero residue and fails the field-marked surjection. | Pass; existence imported from §1.10. |
| Separated π-adic completeness; :129, :683 | A=K[[π]], its truncations | lim A/πⁿA=A and intersection πⁿA=0; the compatible truncations of 1+π+π²+… recover that series, not a polynomial in K[π]. | Pass; separation retained. |
| Smooth/filtered-colimit cotangent calculation; :679 | K=k(T); K=F_(q²) | L_(K/k)=K dT[0] in the first case, 0 in the finite separable case; negative cohomology is 0 in both. For k[ε]/ε² in characteristic 2, the two-term differential is 0 and H⁻¹ is nonzero; it is not an allowed field extension. | Pass; perfect base and field hypothesis retained. |
| Flat cotangent base change; :679 | A=K[[π]] over O=k[[π]]; nonflat control A=k | Flat case has Tor_i^O(A,k)=0 for i>0 and reduced L equals K dT[0]. Nonflat control has Tor₁^O(k,k)=k and L_(k/O)=k[1], whereas L_(k/k)=0. | Pass; flatness excludes the false comparison. |
| Square-zero morphism obstruction and ambiguity; :135, :679 | N=πⁿA/πⁿ⁺¹A, n=1,2; identity residue action | Products are π²=0 modulo π² and π⁴=0 modulo π³. Ext¹_K(K dT,N)=0; Hom_K(K dT,N)=N≅K, and δ(T)=1 is nonzero. | Pass; Ext¹ is the morphism obstruction, no duplicate algebra-existence target. |
| Frobenius-twisted action; :135, :679 | q=2,3, δ(T)=1 in N with λ acting by λ^q | δ(T²)=2T^q: 0 for q=2, 2T³ for q=3. Ext¹_K(K dT,N)=0 still, since K dT is free. Using ordinary multiplication would give 2T for q=3, a different law. | Pass; action through the lifted residue map is explicit. |
| Comparison isomorphism after passing to limits; :679 | e:T↦T+π on K[[π]] | Modulo π, e(T)=T; on πⁿA/πⁿ⁺¹A, e is identity for every n. Inverse T↦T−π composes to T, including characteristic 2. | Pass; complete comparison recovers an isomorphism. |
| Residue-field and perfect-field Check; :689 | K=k; q=2, K=F₄ with a²=a+1 | A=O and σ=id give ρ(x)^q=ρ(x). For F₄[[π]], σ(a)=a+1≠a, σ²(a)=a and σ(π)=π. The strict-lift convention is coefficient Frobenius, not identity on every perfect residue extension. | Pass. |
| Noncanonical comparisons Check; :690 | K=k(T), identity versus T↦T+π | Both reductions send T to T; upstairs values are T and T+π, difference π≠0. Ω¹=K dT, Ext¹=0, Hom≅K≠0. | Pass; excludes unique comparison. |
| Equal-characteristic Frobenius Check; :691 | q=2 and q=3, x=T+π | σ(x)=T²+π versus x²=T²+π²; σ(x)=T³+π versus x³=T³+π³. Reducing gives T² and T³ on both respective sides. | Pass; π fixed, not raised to q. |
| No compatibility with independently chosen Frobenius; :685 | σ₀(T)=T^q and σ₁(T)=T^q+π, both fixing π | Both reduce to T^q. The identity comparison gives (id∘σ₀)(T)=T^q but (σ₁∘id)(T)=T^q+π. | Pass; unsupported Frobenius compatibility is not claimed. |
| Ramified mixed-characteristic Check; :692 | O=Z₂[√2], π=√2, K=F₂, A=O | 2A=π²A≠πA; A/πA=F₂, while A/2A contains π≠0 with π²=0. Identity lifts residue squaring and fixes π. | Pass; using p instead of π fails the residue law. |
| `cohenCoefficientLift_exists`; Suggested.lean :75 | O=F_q[[π]], K=F_q(T), q=2,3 | A=K[[π]], kerρ=(π), σ(π)=π, σ(T)=T^q; ρσ(T+π)=T^q=(ρ(T+π))^q. Both completeness and marked O-action occur in the elaborated type. | Pass; combined headline consumes supplied existence. |
| `cohenCoefficientLift_compare`; Suggested.lean :85 | Two copies K[[π]], identity/translation comparison; nonflat control K[[π]]/(π²) | Comparisons reduce to id and have inverses id/translation by −π. In the control π≠0 but π²=0, so flatness over O fails and it cannot satisfy the theorem's premises. | Pass; generality unchanged. |

### Carried-forward adversarial table

Every row below is unchanged mathematical evidence from [the previous review][r3], explicitly cited per row. Local algebra notation in these rows is B=k[[t]], K=k((t)), with regular t; these local models do not assert that every such ring is a global period curve. The table includes all unchanged seeded targets, headlines and native definitions. §0.23 and its two dependent Lean statements are replaced by the fresh rows above.

| Statement | Instances tried | Computed values on both sides / excluded model | Result; provenance |
|---|---|---|---|
| 0.1 ghost evaluation | π=q=2, x=(1,2,3), n=0,1,2 | Finite sum and supplied polynomial both give 1,5,21. Only i≤n occur, so natural subtraction never wraps. | Pass.  Carried from [previous review][r3]. |
| 0.2 Dwork | p=2,3; x=(1,1,0,…); A=O and residue algebra | Ghosts (1,1+p,1+p) have differences p,0 divisible by p,p². Over F_p, zero and (0,1,0,…) have identical zero ghosts; the regularity hypothesis excludes this failure of injectivity. | Pass.  Carried from [previous review][r3]. |
| 0.11 twisted Witt | Q=X²+2X; Q=X²+1; x₀=1,x₁=0 | First twisted ghost is 3 versus ordinary 1; allowed Q has remainder 0 mod2, bad Q remainder 1. | Pass.  Carried from [previous review][r3]. |
| 0.12 twisted Teichmüller | Q=(1+X)²−1, a=b=1 in F₂ | [ab]_Q=−1; [a]_Q[b]_Q=1. For Q=X² both are 1. | Pass; excludes automatic multiplicativity.  Carried from [previous review][r3]. |
| 0.13 weak topology | πⁿ and [ϖ]ⁿ, 0<c=\|ϖ\|<1 | Norms are ρⁿ and cⁿ, both tending to 0; forgetting the [ϖ] direction would leave the latter outside powers of (π). | Pass.  Carried from [previous review][r3]. |
| 0.14 Lubin–Tate lift | Multiplicative formal group; x=0 | Lift [1+x]−1 is 0 at 0; its endomorphism satisfies [p](X)=(1+X)^p−1, not X^p in characteristic zero. | Pass.  Carried from [previous review][r3]. |
| 0.15 integral charts | π=0; \|π\|=\|[ϖ]\|=c | Special quotient retains R; boundary ratio has norm 1. Inverting π would instead remove the special fibre. | Pass.  Carried from [previous review][r3]. |
| 0.16 root chart | Boundary c, level m=1, p=2 | Whole-ratio root has norm 1; rooting only numerator gives c^(−1/2)>1. Squaring the correct coordinate recovers π/[ϖ]. | Pass.  Carried from [previous review][r3]. |
| 0.17 root perfection/splitting | Ordinary versus perfected characteristic-p disc; unit coefficient | Ordinary Frobenius misses T; perfected disc has (T^(1/p))^p=T. Coefficient projection sends 1 to 1, so projection∘inclusion=id, whereas zero projection gives 0. | Pass.  Carried from [previous review][r3]. |
| 0.18 integral domain | E=F_q((π)); π=0 and nonzero small π | Both points lie in D([ϖ]); only the latter lies in D(π). The integral disc has its origin, the generic punctured disc does not. | Pass.  Carried from [previous review][r3]. |
| 0.19 integral diamond | Special untilt and its coefficient map | π maps to 0, so the map factors through Spd(O_E), but cannot factor through Spd(E), where π is a unit. | Pass.  Carried from [previous review][r3]. |
| 0.20 integral gluing | Identity and two identical opens | Both restrictions are identity, intersection is the same open and the equalizer consists of (s,s). | Pass.  Carried from [previous review][r3]. |
| 0.21 whole analytic locus | p=0,[ϖ]≠0 and p≠0,[ϖ]=0 | D(p)∪D([ϖ]) contains both; D(p)∩D([ϖ]) contains neither endpoint. | Pass.  Carried from [previous review][r3]. |
| 0.22 sheafiness at both ends | W(F_p)[1/p] and split coefficient retraction | Rational field chart is Q_p; unit maps 1→1→1. This does not imply stable uniformity for the differently topologized A₂ chart. | Pass.  Carried from [previous review][r3]. |
| 1.1 generic open | Equal-characteristic disc | Removing V(π) deletes exactly its origin; a nonzero small π remains. | Pass.  Carried from [previous review][r3]. |
| 1.2 radii | \|[ϖ]\|=1/4, \|π\|=1/2, then ϖ³ | Radius log(1/4)/log(1/2)=2; new radius 6. At π=0 the real quotient formula is not applicable. | Pass.  Carried from [previous review][r3]. |
| 1.3 λ and μ | Teichmüller unit; primitive p−[ϖ] killed by theta | μλ returns norm 1 on the unit. At \|ϖ\|=p⁻¹ the quotient seminorm of p−[ϖ] is 0, while λμ gives p⁻¹>0. | Pass; excludes λμ=id everywhere.  Carried from [previous review][r3]. |
| 1.4 Robba growth | Single Teichmüller coefficient x; zero; \|x\|>1 | Norm is \|x\|^r, zero norm is 0; (\|x\|^r)^(1/r)=\|x\|>1 excludes the plus condition. | Pass.  Carried from [previous review][r3]. |
| 1.5 growth/units/invariants | d=0; d=1, connected and disconnected F | At d=0, Σpⁿ[ϖ^(−n²)] is in W(F) but its norm terms p^(rn²−n) diverge for all r>0. At d=1 over a geometric F, constants are Q_p; over F×F they are Q_p×Q_p, not diagonal Q_p. | Pass; d=0 explicitly excluded.  Carried from [previous review][r3]. |
| 1.6 splitting/intersections | x=pⁿ; nested coefficient bounds | Splitting y=x,z=0 gives y+z=pⁿ and norms p⁻ⁿ,0. The overlap of bounds ≤a and ≤b is ≤min(a,b). | Pass.  Carried from [previous review][r3]. |
| 1.7 presheaves | Empty open and identity restriction | Empty sections form the zero ring; id sends x to x; a zero restriction would send 1 to 0 on a nonzero open. | Pass.  Carried from [previous review][r3]. |
| 1.8 sheaves/acyclicity | Two identical rational charts, rank one | Difference (a,b)↦a−b has kernel diagonal R and cokernel 0. The theorem names nine acyclic variants and three Kiehl cases, not all twelve as acyclic. | Pass.  Carried from [previous review][r3]. |
| 1.9 relatively perfectoid rings | Adjoined p-power roots | Each root variable has a pth root at the next level; ordinary T has none in the unperfected reduction. | Pass; no noetherian inference.  Carried from [previous review][r3]. |
| 1.10 interval/base projection | Singleton interval; F₂ coefficients | Both endpoint norms agree on the singleton. Teichmüller gives [1]+[1]=2 in Z₂ but [1+1]=0, excluding an additive base map. | Pass.  Carried from [previous review][r3]. |
| 1.11 interval descent | [1,3]=[1,2]∪[2,3] | A compatible pair restricts to the same value at 2; constants (1,1) glue to 1, while (1,0) do not glue. | Pass.  Carried from [previous review][r3]. |
| 1.12 deformation/quotient | u=.2,v=.7; p=2,f=d=2; d=0 interpretation | Semigroup endpoint is max(.2,.7)=.7. At p=2 the φ_p² and φ_E² values are 4 and 16; at p=3 they are 9 and 81. The excluded identity action gives R_{>0}, not S¹. | Pass; positive-iterate normalization corrected.  Carried from [previous review][r3]. |
| 1.13 surjectivity | R→R identity; product projection | A seminorm lifts to itself for identity; a chosen component seminorm on R lifts to the same component of R×R. | Pass.  Carried from [previous review][r3]. |
| 1.14 finite-étale periods | Split rank two; quotient by z^m, m=1,2 | Period extension gives B×B on both sides. Local regular quotient lengths are 1 and 2; shrinking below a permitted radius is needed before defining the comparison arrow. | Pass.  Carried from [previous review][r3]. |
| 1.15 Stein exhaustion | Compatible constant 1; zero bundle | Limit of restrictions of 1 is 1; zero has H⁰=H¹=0. Dense restrictions are not asserted to be algebraically surjective. | Pass.  Carried from [previous review][r3]. |
| 1.16 coefficients/anchor | ϖ→ϖ³; residue extension degree two | Radius r→3r; residue-compatible Frobenius becomes φ_p², not φ_p. | Pass; the φ_p/φ_E distinction is explicit.  Carried from [previous review][r3]. |
| 1.17 local generation | Zero module; trivial line | Required generating sets have sizes 0 and 1; empty sections do not generate the nonzero line. | Pass.  Carried from [previous review][r3]. |
| 1.18 global generation | Constant section 1 on every interval; zero | Its restrictions generate each unit module and its global coefficient is 1. Zero global sections generate exactly the zero bundle. | Pass.  Carried from [previous review][r3]. |
| 2.1 quotient curve | Radii r and qr; integral endpoint | r and qr have one orbit; π=0 is excluded from the quotient's generic covering domain. | Pass for the standing single φ_E.  Carried from [previous review][r3]. |
| 2.2 diamond projection | Identity base; Frobenius-related representatives | Both representatives project to the same base point after equivariance; no additive Teichmüller ring map is required. | Pass.  Carried from [previous review][r3]. |
| 2.3 functoriality | Identity and two successive coefficient maps | Image of 1 is 1 in both composites; id pulls the same annulus and divisor back to themselves. | Pass.  Carried from [previous review][r3]. |
| 2.4 étale curves | Split degree-two base cover | Two copies of S give two copies of X_S; rank-two finite étale algebra is O_X×O_X. | Pass.  Carried from [previous review][r3]. |
| 2.5 LT tower | Multiplicative group, p=3, levels 1,2 | Cyclotomic degrees are 2 and 6; a acts as ζ↦ζ^a, and ab gives ζ^(ab). Zero is not primitive torsion. | Pass.  Carried from [previous review][r3]. |
| 3.1 primitive equations | Special ξ=π; generic ξ=π−a[ϖ] | Theta gives 0 in both; in the special quotient π=0 but [ϖ] remains nonzero. | Pass.  Carried from [previous review][r3]. |
| 3.2 Cartier lower bound | Perfected disc, q=2,n=2; a=1,ξ,0 | Supremum norm of ξ is 1/4. LHS and q⁻ⁿ times the norm of a are respectively (1/4,1/4), (1/16,1/16), (0,0). Unit changes preserve the ideal, with the stated normalized chart retained. | Pass.  Carried from [previous review][r3]. |
| 3.3 line descent | Nontrivial unit transition u on an overlap | Generators ξ and uξ generate the same invertible ideal; requiring the generators to be equal would incorrectly force u=1. | Pass.  Carried from [previous review][r3]. |
| 3.4 symmetric divisors | d=0,1,2; repeated (D,D) | Empty tuple gives one empty divisor; ξ² has length 2. Orbit sheaf has only identity automorphisms, unlike the quotient stack with Σ₂ stabilizer. | Pass.  Carried from [previous review][r3]. |
| 3.5 product equations | Empty product; two colliding legs | Empty product=1 and quotient ring=0; ξ·ξ=ξ² and length B/(ξ²)=2, not 1. | Pass.  Carried from [previous review][r3]. |
| 3.6 degree criterion | Empty, simple, double divisor | Geometric total lengths are 0,1,2 on both tuple and Cartier sides. ξ² does not acquire two distinct support points. | Pass.  Carried from [previous review][r3]. |
| 3.7 thickening descent | k[t]/t² and a split rank-two bundle | Nilpotent t has t²=0 but t≠0; the descended free module still has rank 2 over the thickening, not merely over k. | Pass.  Carried from [previous review][r3]. |
| 3.8 ambient completion | (t) versus (t²); compatible free rank-two tower | Both inverse limits are k[[t]], but first quotients have lengths 1 and 2. Modules give B² and endomorphisms M₂(B); special ξ=π retains integral coefficients. | Pass; supplied effectivity correctly consumed.  Carried from [previous review][r3]. |
| 3.9 addition/disjointness | Comaximal ideals (t),(t−1); collision (t),(t) | CRT gives two factors for the first; collision gives B/t², a local ring with nilpotent t, not k×k. | Pass.  Carried from [previous review][r3]. |
| 4.1 classical points | Evaluation at 0,a; Gauss point | Kernels are (X),(X−a),0 respectively; positive-radius Gauss is not evaluation at a. | Pass.  Carried from [previous review][r3]. |
| 4.2 period-disc tilting | a=0 and a≠0 | Equations are π and π−[a]; origin maps to the special untilt, not to an absent generic point. | Pass.  Carried from [previous review][r3]. |
| 4.3 Gauss fibre | u=T+δ, \|δ\|<ρ | ρ-Gauss norm of u is ρ, equal to that of T; collapsing the fibre to a single classical evaluation loses these distinct extensions. | Pass.  Carried from [previous review][r3]. |
| 4.4 classical/nonclassical fibres | Evaluation point versus Gauss point | Evaluation support has one prescribed marked quotient; a positive-radius Gauss fibre has the disc of extensions of §4.3, not a single evaluation kernel. | Pass.  Carried from [previous review][r3]. |
| 4.5 inertia | Finite unramified constant extension versus ramified torsion extension | Unramified constant extension has inertia action 1. For the p=3 first LT level, the nontrivial unit sends ζ₃ to ζ₃²≠ζ₃. The zero-radius classical case is excluded. | Pass.  Carried from [previous review][r3]. |
| 4.6 generic untilts | π invertible versus π=0; Frobenius shift | Generic map has image of π a unit; special map has image 0 and cannot factor through E. Frobenius-shifted marking gives the same X-divisor. | Pass.  Carried from [previous review][r3]. |
| 4.7 divisor coefficient base | Base F_q versus algebraic closure | The presentations retain Spd(E) and Spd(Ê) respectively; a Frobenius orbit is one divisor, while deleting the orbit relation keeps multiple representatives. | Pass.  Carried from [previous review][r3]. |
| 4.8 p-typical de Rham | Characteristic-zero untilt; characteristic-p ring | First quotient of B_dR⁺ is the untilt algebra; Mathlib's p-localized target in characteristic p is 0. Intrinsic integral completion is nonzero there. | Pass.  Carried from [previous review][r3]. |
| 4.9 ramified coefficients | Identity coefficient map; separable split quadratic tensor | Identity lift is identity; split tensor gives two factors B×B, and the specified embedding selects B. An unmarked choice cannot choose between them canonically. | Pass.  Carried from [previous review][r3]. |
| 4.10 divisor de Rham rings | One versus two disjoint geometric legs | Residues are C versus C×C; the latter has idempotent (1,0), so is not a DVR. | Pass.  Carried from [previous review][r3]. |
| 4.11 filtration/conormal | t→ut; repeated t² | Degree m generator changes by u^m, preserving I^m. First repeated-divisor piece uses t², so numbered steps are 2m rather than m. | Pass.  Carried from [previous review][r3]. |
| 4.12 geometric DVR | m=0,1,2 | B/(1)=0, B/t=k, B/t² has length 2; fraction ring is k((t)). Product B×B fails locality. | Pass.  Carried from [previous review][r3]. |
| 4.13 completion/base change | Identity map; unit parameter change | Completed map is id and ideals (t)=(ut); rational restriction preserves the same quotient diagram, rather than replacing it by a new parameter-dependent completion. | Pass.  Carried from [previous review][r3]. |
| 5.2 eigenvectors | n=0,1 and zero | Equations are φ_p^d(x)=x and φ_p^d(x)=px; zero satisfies both. Here d>0 is explicit. | Pass.  Carried from [previous review][r3]. |
| 5.3 boundary difference | n>0; scalar geometric-series model | (1−π^n)Σ_{j≥0}π^(nj)=1. Reversing the convergence direction gives terms with unbounded negative powers on that chart. | Pass; this is the separate crystalline boundary.  Carried from [previous review][r3]. |
| 5.4 LT section | Simple zero and square | Vanishing orders 1 and 2 give divisor multiplicities 1 and 2; ξB⁺ gives O(−1), opposite to the degree of the divisor section. | Pass.  Carried from [previous review][r3]. |
| 6.1 exact square/data | Transition x₁=3x₂; identity square; zero module | Equalizer is {(k,k/3)} with generator (1,1/3). In the identity square kernel(a−b)=diagonal and cokernel=0. Zero pieces yield zero sections. | Pass; actual overlap map retained.  Carried from [previous review][r3]. |
| 6.2 effective finite projectives | Identity square, ranks 0,1,2 | Sections are diagonal R^n, both comparison maps are identities after identification, and finite-projective rank is n on all three sides. | Pass under universal patching and maximal-ideal coverage.  Carried from [previous review][r3]. |
| 6.3 finite étale algebras | k×k in char2,3; k[ε]/ε² | Split trace matrix is diag(1,1), determinant 1. Dual numbers have degenerate trace pairing, determinant 0, so cannot masquerade as étale gluing data. | Pass.  Carried from [previous review][r3]. |
| 6.4 glueing pair/torsion | f=0, f=1; Z/4 with f=2; completion counterexample | Power torsion is all M, zero, all Z/4 respectively. In k[f,T_i]/(fT₁,fT₂−T₁,…), T₁≠0 maps to 0 in completion, violating torsion injectivity. | Pass; both directions of pair criterion distinguish it.  Carried from [previous review][r3]. |
| 6.5 general BL | Z→Z₂,f=2, pieces Z₂/2 and 0 | Overlap=0; equalizer=Z/2. Scalar extensions recover Z₂/2 and 0. The glued module is neither flat nor projective, but remains glueable. | Pass.  Carried from [previous review][r3]. |
| 6.6 meromorphic modifications | L=tB; analytic unipotent matrix with unbounded pole series | tB requires bound 1, not 0. Matrix [[1,h],[0,1]] has inverse [[1,−h],[0,1]], but an h with unbounded pole orders has no finite meromorphic bound. | Pass; analytic invertibility alone is insufficient.  Carried from [previous review][r3]. |
| 6.7 lattice gluing | L=tB and L=t⁻¹B; doubled divisor | Degrees are −1 and +1. B/t over B/t² has length 1 and is not free over the length-two ring; reducing to the support loses data. | Pass.  Carried from [previous review][r3]. |
| 6.8 meromorphic complement | B⁺ lattice t^kB with algebraic puncture K | Intersection K∩t^kB=t^kB and scalar extension gives K. This algebraic calculation is not an equality of the analytic puncture with Spec(K). | Pass.  Carried from [previous review][r3]. |
| 6.9 tensor/dual/base change | L=t^aB, M=t^bB | Tensor=t^(a+b)B; dual=t^(−a)B. Identity base change returns both unchanged; a split exact rank sequence 1+1=2 stays exact. | Pass.  Carried from [previous review][r3]. |
| 6.10 multiple legs | k=3,m=2; disjoint and collision chains | Sufficient doubled-divisor bound is ceiling(3/2)=2, giving 4≥3; bound 1 gives 2<3. Disjoint support gives a product; coincident chains can have the same composite but different intermediate lattices. | Pass.  Carried from [previous review][r3]. |
| 6.11 affine complement | Unramified exponent a=2; zero twist | KL analytic slope for the divisor line is 1/2 and schematic degree is 1; zero twist gives 0 and cannot supply positivity. | Pass; a retained.  Carried from [previous review][r3]. |
| 6.12 period square | Geometric constants and a pole | Constants have difference 0 and kernel Q_p. A de Rham pole class is in the quotient; replacing B_e by all B_dR would enlarge the intersection beyond Q_p. | Pass.  Carried from [previous review][r3]. |
| 6.13 cohomology | O and zero; schematic affine charts | For O, intersection=B_e∩B_dR⁺=Q_p and quotient B_dR/(B_e+B_dR⁺)=0. Zero gives H⁰=H¹=0; no H² from the two-term complex. | Pass; arbitrary flat module uses ordinary tensor.  Carried from [previous review][r3]. |
| 6.14 B-pair comparison | Reference lattice and t⁻¹B⊕B^(n−1) | Glued bundles are O^n and O(1)⊕O^(n−1); at rank zero both are zero. | Pass; retained target compares supplied equivalence.  Carried from [previous review][r3]. |
| 6.14a normalized tail | Unit shtuka; x_{C♭} versus x_L | At x_{C♭}: residue C♭, completed stalk W(C♭), identity comparison=1. At x_L: no stalk for an object only on Y_[0,∞). | Pass; the endpoint is corrected.  Carried from [previous review][r3]. |
| 6.15 pairs/one-leg construction | T=Z_p, Ξ=t^kB; k=0,1; rank zero | Modified bundles O and O(−1); both reconstruction routes insert exactly the same lattices. Multiplication by 1/p does not preserve T. Zero pair gives zero. | Pass; reconstruction is imported and curve compatibility retained.  Carried from [previous review][r3]. |
| 6.16 punctured Witt algebraicity | Geometric field and general Tate base | Over the geometric field, unit and zero extend with ranks 1 and 0. In Kedlaya Example 3.14, the kernel of ([y],[z],p):A³→A has rank 2 on the puncture but projective dimension at least 1 globally; no projective extension exists. | Pass; extension scope is separate.  Carried from [previous review][r3]. |
| 7.0 torsor dictionary | Trivial group; G_m; GL₂; special fibre | Trivial group gives one object; G_m gives line frames; GL₂ gives rank-two frames. Over F_p, base extension kills multiplication by p despite exactness; faithfulness of the integral functor is not imposed in the target. | Pass; source footnote error below.  Carried from [previous review][r3]. |
| 7.1 group modifications | G_m and empty divisor | tB gives degree −1; empty divisor gives the original torsor and identity modification. | Pass.  Carried from [previous review][r3]. |
| 7.2 G-gluing | Trivial reference and right positive-loop change | g and gh, h∈G(B⁺), determine the same lattice gB⁺; generally hg determines a different lattice. Trivial group gives one gluing datum. | Pass; quotient direction fixed.  Carried from [previous review][r3]. |
| 7.3 faithful test | G_m weights a,b; trivial representation | Weights add a+b under tensor; bound adds accordingly. Trivial representation always gives exponent 0 and cannot detect the nontrivial lattice tB in weight 1. | Pass.  Carried from [previous review][r3]. |
| 7.4 structure group | SL₂→GL₂; diagonal(t,t⁻¹) and diagonal(t,1) | Determinants are 1 and t. Only the first preserves the determinant trivialization; applying determinant to it gives the unit G_m modification. | Pass.  Carried from [previous review][r3]. |
| 7.5 base change/addition | Identity; bounds k=2,ℓ=3 at coincident support | Composite bound k+ℓ=5 is ≤max(2,3)·2=6. Independent disjoint pieces form a product; collision retains the intermediate lattice. | Pass.  Carried from [previous review][r3]. |
| 7.6 v-descent/étale lifting | Perfected disc; split cover; double divisor | Frobenius has T^(1/p) as root of T, retraction fixes 1, and B/t²→B/t has square-zero kernel (t). Smooth torsor lifting sees this nilpotent kernel rather than discarding it. | Pass under stated smoothness/reductivity and approximation inputs.  Carried from [previous review][r3]. |
| 7.7 lattice modification | SL₂ versus GL₂; successive L,L′ | L=tB⊕B has determinant tB and fails SL₂; tB⊕t⁻¹B has determinant B. Replacing L by L′ yields L′, not the product of the two embedded lattices. | Pass.  Carried from [previous review][r3]. |
| `ramifiedDworkCriterion` | O=Z_p, p=2,3, σ=id, x=(1,1,0,…) | Ghost tuple (1,1+p,1+p,…), congruence differences p,0,…; torsion-algebra collision is excluded. | Pass.  Carried from [previous review][r3]. |
| `exactSquare_finiteProjective` | All four rings k, all ring maps id, D=(k²,k²,id) | Sections diagonal k²; comparison matrices I₂,I₂; rank 2, finite projective. | Pass.  Carried from [previous review][r3]. |
| `exactSquare_finiteEtale` | Same square, algebra pieces k×k | Descended algebra k×k, multiplication componentwise, trace determinant 1 even in char2. | Pass.  Carried from [previous review][r3]. |
| `exactSquare_hom` | Same square, compatible matrices A on both pieces | Unique map on diagonal sections is (x,x)↦(Ax,Ax); A=0 and A=I₂ remain distinct. | Pass.  Carried from [previous review][r3]. |
| `exactSquare_finiteEtale_hom` | Same square, compatible swaps of k×k | Unique descended map swaps the two idempotents; incompatible swap/id pair fails the overlap hypothesis. | Pass.  Carried from [previous review][r3]. |
| `beauvilleLaszlo_flat_iff` | Z→Z₂,f=2; M=Z then Z/2 | Flatness values are true/true/true for Z, and false/false/true for Z/2 and its two extensions. Both iff directions agree. | Pass.  Carried from [previous review][r3]. |
| `beauvilleLaszlo_finiteProjective_iff` | Same modules | Finite-projective values are true/true/true, then false/false/true. No redundant glueability premise is inserted. | Pass.  Carried from [previous review][r3]. |
| `beauvilleLaszlo_effective` | Free rank one with transition t over B→B | Sections are a rank-one module, scalar extensions recover B and K, and finite projectivity remains true. Rank zero gives 0. | Pass.  Carried from [previous review][r3]. |
| `beauvilleLaszlo_sections` | Z₂/2 and 0 over (Z→Z₂,2) | Equalizer Z/2; tensor extensions Z₂/2 and 0; overlap 0. | Pass outside projective scope.  Carried from [previous review][r3]. |
| `beauvilleLaszlo_recovery` | M=Z/2 in that pair | Sequence is 0→F₂→F₂⊕0→0→0; first map identity, last map zero onto zero, kernel=image=F₂. | Pass.  Carried from [previous review][r3]. |
| `beauvilleLaszlo_flat_exact` | M=Z | Difference map Z₂⊕Z[1/2]→Q₂ is onto; kernel consists of diagonal integers. For 1/2, preimage (0,−1/2) gives 1/2. | Pass.  Carried from [previous review][r3]. |
| `beauvilleLaszlo_hom` | M=N=Z, compatible multiplication by 3; incompatible 1 and 3 | First pair descends uniquely to ×3. Second gives difference −2 on generator 1, so violates compatibility. | Pass.  Carried from [previous review][r3]. |
| `ramifiedGhost` | π=2, x=(3,5), n=1, q=0,1; zero algebra | q=0 gives 1+2·5=11; q=1 gives 3+2·5=13; the zero algebra gives 0. Neither junk q is admitted by the Dwork residue-cardinality premise. | Pass.  Carried from [previous review][r3]. |
| `ExactSquare` | Identity square over k; both corners k[x,1/x] over k[x] | Identity difference has kernel diagonal k and cokernel 0; localized diagonal contains (1/x,1/x), absent from k[x]. The second square fails middle exactness. | Pass.  Carried from [previous review][r3]. |
| `PatchingData` | One-dimensional pieces over k, transition ×u, u≠0; zero map | ×u has inverse ×u⁻¹, with both composites 1. Zero has composite 0≠1, so cannot supply the required linear equivalence. | Pass.  Carried from [previous review][r3]. |
| `PatchingData.sections` | Transition ×u over identity ring maps | Kernel is {(a,ua)}; at u=1 this is diagonal. The pair (1,0) has difference u≠0 and is excluded. | Pass.  Carried from [previous review][r3]. |
| `PatchingData.compareLeft` | Same data, generator (1,u); rank zero | First comparison sends generator to 1, an isomorphism; on zero pieces it is the unique map 0→0. The zero map cannot recover the nonzero line. | Pass.  Carried from [previous review][r3]. |
| `PatchingData.compareRight` | Same generator; u=2 over Q | Second comparison sends generator to u=2, not 1; scalar extension recovers the specified right piece. Its inverse sends 1 to (1/2,1). | Pass.  Carried from [previous review][r3]. |
| `UniversalPatching` | Identity square; arbitrary finite projective P with transition α | Given a in the left piece, (a,α(a)) is a section mapping to a. Rank 0 gives surjectivity 0→0. The condition fixes the displayed map, not an arbitrary surjection. | Pass.  Carried from [previous review][r3]. |
| `GlueingPair` | f=0, f=1, identity R→R | For f=0 the localization is 0 and positive quotients are R; power torsion is R. For f=1 the quotients and torsion are 0; exactness requires the localization piece R. At n=0 both quotient ideals are the unit ideal. | Pass.  Carried from [previous review][r3]. |
| `IsGlueable` | Z→Z₂, f=2, M=Z/2; unbounded-torsion completion example of §6.4 | On Z/2 the torsion map is identity F₂→F₂. In the excluded example T₁≠0 maps to 0, so the injectivity predicate fails. | Pass.  Carried from [previous review][r3]. |
| `patchingDiagonal` | Identity square, m=1 and m=0 | Images (1,1) and (0,0); zero would fail recovery of 1. The two tensor-unit maps give the same element on the overlap. | Pass.  Carried from [previous review][r3]. |
| `patchingDifference` | Identity square, (1,0),(0,1),(1,1), characteristic 2 and 3 | Values 1,−1,0; in F₂ they are 1,1,0, and in F₃ they are 1,2,0. These fix the subtraction order and diagonal kernel. | Pass.  Carried from [previous review][r3]. |

## Not verifiable

- No changed source locator was inaccessible. The unchanged bibliography's historical FS binary date and page count retain the previous report's limitation: its moving author URL had supplied a different page-count edition. This incremental review does not certify that historical binary.
- Untouched mathematical passages and their source locators were not re-reviewed in full. Their prior computed evidence is carried above as directed. The tests do not constitute formal proofs of the geometric construction targets.

## Source issues

- none

[r3]: packages/RelativeFarguesFontaine/reports/PRREVIEW-RelativeFarguesFontaine~3.md
