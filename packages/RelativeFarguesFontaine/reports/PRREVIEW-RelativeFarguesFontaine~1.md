# Review of RelativeFarguesFontaine (pull request #1209 at 1fda507)

**Verdict:** needs changes

## R01 (P2) — State the omitted algebraic gluing headlines

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:2213`, `:2243`, `:2320`; `TauCetiRoadmap/RelativeFarguesFontaine/Suggested.lean:127`.

**Claim:** §6.5(a) promises the equivalence for glueable modules over an arbitrary glueing pair. The acceptance test states effectivity only for finite-projective pieces. The general finite-projective and finite-étale exact-square theorems of §§6.2–6.3 are also absent. These are algebraic ring/module/category statements: the module docstring’s missing geometric carriers do not prevent stating them.

**Witness:** For `(ℤ→ℤ₂,2)`, take pieces `ℤ₂/2` and zero, with zero common localization. Their glued module is `ℤ/2`. Neither the first piece nor the glued module is projective. See stacks line 11879.

**Repair:** Add the general effectivity and compatible-morphism/recovery statements of §6.5(a), using native tensor products, linear maps and the equalizer submodule; also state the flat-module exact sequence of §6.5(c). Include §§6.2–6.3’s exact-square patching headlines with their universal comparison-surjectivity and maximal-ideal-covering hypotheses, using simple native ring/module bundles. Keep the Beauville–Laszlo finite-projective conclusions as consequences or separate headline statements. A scratch version of the existing effectivity signature with its four finiteness/projectivity assumptions and its finite-projective conclusion removed elaborates at the pins. On the witness its scalar extensions are `ℤ₂⊗ℤ(ℤ/2)=ℤ₂/2` and `ℤ[1/2]⊗ℤ(ℤ/2)=0`, with compatibility `0=0`. Thus the general statement covers an instance the submitted effectivity signature excludes. No new heavy carrier is needed.

## R02 (P2) — Give the ramified ghost polynomials their existing owner

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:148`: “Define `ramifiedWittPolynomials`.”

**Claim:** This is a second construction target for the universal polynomials, despite the scope's promise to consume the arbitrary-algebra coefficient functor.

**Witness:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:91`, VB−1, “Ramified coefficient rings and coefficient changes”, already specifies the same polynomials over every coefficient algebra, including torsion inputs, and their universal operations.

**Repair:** Import that polynomial/evaluation API by its supplier target in Scope and ownership and Exact supplier contracts. Retain the small `ramifiedGhost` body needed to state Dwork, with an explicit evaluation comparison; do not give the multivariable polynomial another construction owner. At `π=q=2`, `x=(1,2,3,0,…)`, both the supplied polynomial and the retained scalar evaluation give `w₀=1`, `w₁=5`, `w₂=21`. There is no difference of coefficient generality that distinguishes the proposed polynomial target.

## R03 (P2) — Consume perfect-system effectivity for the completion algebra

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:1582`, the paragraph beginning “Prove `divisorCompletionFiniteProjectives`.”

**Claim:** The paragraph independently constructs the general algebraization of compatible finite-projective quotient systems, rather than importing its existing algebraic owner. Its hypotheses on `B` and `J` do not use period geometry.

**Witness:** `TauCetiRoadmap/DerivedModuleAlgebra/README.md:2200`, §1.E.1, supplies compatible perfect-system effectivity with reduction comparisons; §1.E.0 supplies its Tor-amplitude criterion. For `B/Jⁿ`, transition kernels are square-zero and finite projectives have amplitude `[0,0]`.

**Repair:** Cite those main-branch targets for effectivity and natural comparisons. Retain here the identification with divisor charts, tensor/dual transport and sheaf restriction. Explain the degree-zero specialization instead of planning a second generic idempotent-limit construction. For `B=k[[t]]`, `J=(t)`, the free rank-two tower yields `B²[0]`; its amplitude is `[0,0]`, so the algebraized module is `B²`, and the endomorphism limit is `M₂(B)`. For the zero tower both constructions give zero. This supplies the proposed algebraic instances while leaving the period-specific comparison here.

## R04 (P3) — Remove the 117 anchors rejected by the gate

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:144`, and the remaining target/reference anchors.

**Claim:** The submitted folder fails the standing `residue` rule.

**Witness:** The worker's gate at this head reports `residue=117` and `FAIL`; the first witness is `<a id="target-0-1"></a>`. All other gate counters, including the targeted build, are zero.

**Repair:** Delete the HTML anchors and update target links to actual Markdown heading anchors. For references, use direct source links or give the reference entries Markdown subheadings. Test a target link and a reference link after replacement, then rerun the gate. Removing only the first anchor leaves 116 violations; the repair must cover all 117. This remains a gate blocker even though its severity is P3.

## R05 (P3) — Make the README's API names agree with the acceptance test

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:2163` and `:2194`; also the consumed-only sections beginning at `:209`.

**Claim:** API bullets and Checks advertise local Lean declarations absent from the eight-declaration file. Supplied-only entries also remain numbered build targets outside Scope and ownership.

**Witness:** `GlueingDatum.sectionsCompare` and `GlueingDatum.sections_zariski_Z` appear as backticked local API/Check names. `Suggested.lean` declares neither `GlueingDatum` nor either name. §§0.3–0.10 explicitly say they consume the supplier without adding construction targets.

**Repair:** Write the API laws and Checks as mathematical prose; keep backticked local declaration names only for declarations actually retained in the acceptance test. Move supplied-only entries into Scope and ownership/contracts and retain genuinely new comparisons with their distinguishing clause. Do not populate Lean with the missing API catalogue. Mark the retained coefficient and patching portions of the Lean file with the required Layer 0 and Layer 6 module section comments. The Zariski example remains a useful prose Check: `x₁=3x₂` gives exactly `(k,k/3)`, `k∈ℤ`, with generator `(1,1/3)`.

## R06 (P3) — Correct the divisor supplier's layer locator

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:1464`, `:1493`, `:1525`, `:1544`.

**Claim:** These four citations put `divisor-section-comparison` in VectorBundlesAndIsocrystals VB2.

**Witness:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:1370` places that target under VB3, whose heading is at line 1176. Its absolute symmetric-power presentation retains the algebraically closed residue-base convention.

**Repair:** Cite VB3's actual target and preserve its stated scope; identify any additional base descent as part of the relative comparison here. This is a wrong locator, not an absent supplier theorem. Rechecking degree two gives the same repeated orbit `(D,D)`, length two, and trivial automorphism group in the orbit sheaf; changing the citation does not change those values or introduce a new supplier.

## Verified sound

The review covered the submitted README and all eight Lean declarations at the requested head. There are six findings, three blocking P2 findings and three P3 findings. The calculation table has 107 target/subtarget rows, covering every numbered target, all seeded targets and all six Lean theorems; compound rows give the individual computed components. No P1 mathematical counterexample was established. The tests below are discriminating calculations, not proofs of the general geometric theorems.

The worker's complete gate result is:

```text
gate RelativeFarguesFontaine: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=117 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL
```

The independently rerun dependency check produced exactly:

```text
depcheck: 205 roadmaps, 1446 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The diff outside this roadmap folder was empty, and the worktree remained unchanged. There are no declared supplier gaps. The single `import Mathlib`, namespace, absence of sorry'd data and absence of `set_option` meet the Lean form requirements. Independent `lake env lean` elaboration succeeded with precisely the six expected sorry warnings. A scratch `#check @name` pass covered all eight declarations: the Cohen existence and comparison signatures retain `hπ`, `hK` and completeness via `include`; the worker's two suspected lost binders are not defects. No signature was changed in the worktree.

For padding, all six sorried theorems were probed in a copy with `simp`, `rfl` and `infer_instance`; none closed. The object search at the pins did not reveal a single-lemma replacement for these general ramified Dwork, Cohen or glueing-pair statements. The two real definitions are used by retained headlines. No padding finding is raised.

### Seeded source verification

All 18 reference entries were fetched through the sources service from legal repositories, author pages or the Stacks Project. No README locator is explicitly flagged unverified. The 15 seeded targets were read at their locators, including the proof passages when the target uses a proof rather than a numbered theorem. Printed pages, rather than PDF page indices, are used below. The moving FS URL's historical edition limitation is recorded under Not verifiable.

| Target | Source text opened | Hypotheses and conclusion checked |
|---|---|---|
| 0.2 | ff-2017 lines 2173–2195, Lemma 1.2.1 proof, p.53; ff-corrected line 2674 and following, p.5 | The proof gives injectivity and the Dwork image criterion on torsion-free algebras with a coefficient Frobenius lift. Completeness of the algebra is unnecessary. The finite-residue, characteristic-zero DVR extension uses the same divisibility induction. |
| 0.18 | fs lines 1775–1835, II.1 opening/Prop. II.1.1, pp.47–48 | The denominator is the Teichmüller pseudouniformizer; the integral domain retains the coefficient-zero end. The root construction is for the entire ratio. |
| 0.19 | fs lines 1838–1844, Prop. II.1.2, p.49 | Untilts have an integral coefficient map. The product uses `Spd(O_E)`, so a characteristic-p leg is retained. |
| 0.20 | fs lines 1855–1867, Prop. II.1.3, p.49 | Open base restriction gives the topological Cartesian identification; the proof uses split root extension. It does not supply an ordinary structural adic map to the characteristic-p base. |
| 1.2 | fs lines 2074–2087, Prop. II.1.16, pp.54–55 | Rank-one generalization, radius multiplier q, rational inequalities, and equal endpoints are all present. Higher-rank rational opens need not be the full inverse image under the real radius. |
| 1.4 | kl-i lines 4463–4541, Hyp.5.0.1/Defs.5.1.1,5.1.3, pp.113–115 | Perfect uniform Banach input, separate growth/completion variants and inverse-radius Frobenius transport. The source is p-typical; the README expressly makes the extra all-E norm transport new work. |
| 1.14 | kl-i lines 5032–5184, Lemma5.5.2–Cor.5.5.6, pp.128–132; kl-ii lines 7342–7343, Appendix A p.191 | Frobenius descent at fixed integral radius, finite-module scalar extension, normalized primitive quotient and positive powers. The bounded-radius arrow is only used when the interval lies inside its radius range. See Source issues for proof slips. |
| 3.1 | fs lines 1880–1913, Prop. II.1.4 proof, p.50 | Marked coefficient action and theta, equation `π−a[ϖ]`, regular kernel and lower-bound argument. The integral characteristic-p leg is permitted. |
| 4.1 | fs lines 1918–1933, Example II.1.6/Definition-Proposition II.1.7, p.51 | Classical points use marked untilts; equal characteristic includes evaluation at zero. No classification of all maximal ideals is inferred. |
| 4.2 | fs lines 1934–1946, Prop. II.1.8, p.51 | Continuous surjection from the disc, exact inverse image of the classical locus, and equation `π−[a]`. This is a topological construction, not an additive coefficient embedding. |
| 4.6 | fs lines 2104–2113, Prop. II.1.18, p.55 | Generic E-untilts give Cartier divisors on Y and X; the X-divisor depends only on the Frobenius orbit. |
| 4.9 | ff-2017 lines 2264–2305, Lemma1.2.3 and coefficient comparison, pp.55–56; stacks-henselian lines 1758–1769, Tag09ZL, and Tag09XI | Witt scalar extension uses the maximal unramified coefficient ring. The selected de Rham factor follows by the separately named formally étale lifts and henselian finite-étale comparison. It is a derived comparison, not a claim that FF states the completed comparison verbatim. |
| 4.12 | fs lines 7356–7362, VI.1, p.192; scholze-periods lines 1610–1641, Lemma6.3/Cor.6.4, pp.35–36 | Ambient completion, principal regular theta kernel and geometric residue field yield the degree-one DVR. Two geometric legs give a product, not a DVR. The general-E DVR is explicitly a supplier input. |
| 5.3 | fs lines 2374–2410, Prop. II.2.5 proof, pp.62–63 | The two boundary charts, π-adic Tate ring on the left, difference map and the two opposite-sign contracting series agree. Positive n is retained. |
| 6.8 | sw lines 1713–1732, Thm5.2.8/Lemma5.2.9, pp.37–38; sw lines 6572–6603, Prop.19.1.2, p.170; kl-i lines 7330–7341, Thm8.9.6(b,c), p.188 | Affinoid finite-projective comparison and regular-equation patching justify the chartwise argument. The general meromorphic-structure statement is assembled from those inputs; KL's theorem itself is schematic. The README does not identify an analytic puncture with an affine scheme. |

### Headline coverage

The README's deep endpoints are Dwork (§0.2); twisted-coordinate/Lubin–Tate lift comparisons (§§0.11–0.14); integral chart perfectoidness, sheafiness and diamond comparison (§§0.17–0.20); nonperfect Cohen lifting (§0.23); twelve-variant sheaf, acyclicity and finite-étale comparison (§§1.8–1.14); relative curve/diamond comparison (§2); Cartier and symmetric-divisor classification, descent and completion (§3); marked-untilt/de Rham comparisons (§4); twist-section comparisons (§5); algebraic Beauville–Laszlo and exact-square patching (§§6.1–6.5); modification/lattice and meromorphic-complement equivalences (§§6.7–6.10); relative B-pair cohomology and comparison (§§6.13–6.14); normalized shtuka recovery (§6.14a); punctured Witt algebraicity (§6.16); and the tensor, meromorphy and torsor-descent theorems (§7).

Dwork, both Cohen statements, flatness/finite-projectivity detection and finite-projective effectivity are stated on native algebraic carriers. The docstring identifies the missing relative ringed period, divisor, completion, analytic bundle, shtuka and torsor carriers for the geometric endpoints. In particular, the pinned topological `spaX` and absolute algebraic `BDeRhamPlus` do not supply those geometric carriers. General module gluing is an algebraic exception to that explanation: R01 records its demonstrably statable missing portion. The exact-square patching endpoints are the other algebraic omissions in R01; their ring/module/algebra carriers and exactness and covering conditions can likewise be stated natively.

### Adversarial calculations

Notation in this table: `c` is a real norm with `0<c<1`; `ξ` is a regular Cartier parameter; `B=k[[ξ]]` is the local equal-characteristic model; `F` is a perfect nontrivially valued characteristic-p field. Calculations in the local model test the specified algebraic identities and signs, without asserting that every local model is itself a global period curve. “Pass” means the displayed instance agrees with the stated hypotheses and conclusion; it is not a formal verification of the entire target.

| Statement | Instances tried | Values on the two sides / excluded wrong model | Result and change |
|---|---|---|---|
| 0.1 ghost polynomials; Lean `ramifiedGhost` | π=q=2, x=(1,2,3); n=0,1,2 | Polynomial and finite sum both give 1,5,21; no out-of-range term occurs because i≤n. With q=0 the n=i exponent is 1, matching the total formula. | Formula passes; R02 ownership. |
| 0.2 Dwork injectivity/image | π=q=2 and 3; x=(1,1,0,…); residue-algebra negative control | Ghosts at n=0,1,2 are (1,1+p,1+p); consecutive differences p,0 are divisible by p,p². Over 𝔽_p, (0,0,…) and (0,1,0,…) both have zero ghosts. | Pass; regularity is essential. |
| 0.3 arbitrary Witt functor | Zero algebra; 𝔽₂[T] | Zero algebra gives one zero vector; ghosts of sum/product agree with sums/products. In 𝔽₂[T], Frobenius misses T, so the perfect strict-lift conclusion does not follow. | Imported API; R05 consolidation. |
| 0.4 change of uniformizer | π′=uπ; identity then inverse | Ghost of Vπx is πw_(n−1)(x); ghost of Vπ′x is uπw_(n−1)(x). The comparison factor is u, and u·u⁻¹=1. | Pass; not an independent target. |
| 0.5 Teichmüller/F/V | W(𝔽₂)=ℤ₂, x=1 | [1]+[1]=2 whereas [1+1]=0; F(V1)=2, V(F1)=2 on the residue-algebra input. | Pass; excludes additive Teichmüller. |
| 0.6 truncation/expansion | n=0,1,2; vector (a,b,…) | Truncations have 0,1,2 coordinates; first two sum terms have coordinates (a,b). Zero gives only zero coefficients. | Pass under imported API. |
| 0.7 strict lift | 𝔽_q, zero ring, equal characteristic | Lifts are O_E, zero, and R[[π]] respectively; φ(π)=π, not π^q. | Pass under perfectness. |
| 0.8 coefficient-field change | Residue degrees f=1,2 | For f=2, w′₁(u(x))=w₂(x), not w₁(x); uF²=F′u. For f=1 the V factor is π/π′. | Pass. |
| 0.9 Witt diagonal | Outer degrees0,1,2 | Ghosts of Δx are x,Fx,F²x; for x=1 all are1. Zero map would give0 at degree0. | Pass. |
| 0.10 perfect coefficient tensor | Identity extension; unramified quadratic | Identity tensor returns W_OE(R); quadratic residue extension identifies the tensor base with W(𝔽_(q²)), and φ′ corresponds to φ². | Pass; embeddings retained. |
| 0.11 twisted Witt | Q=X², X²+2X, X²+1; π=2 | First ghosts are x₀²+2x₁, x₀²+2x₀+2x₁, and x₀²+1+2x₁. Congruence remainder is respectively0,0,1 mod2; last input excluded. | Pass. |
| 0.12 twisted Teichmüller | Q=(1+X)²−1; a=b=1∈𝔽₂ | [1]_Q=−1; [ab]_Q=−1 but [a]_Q[b]_Q=1. Ordinary Q gives ordinary [a]. | Pass; multiplicativity explicitly excluded. |
| 0.13 weak topology | Tail π^N and [ϖ^N], 0<ρ<1 | Gauss norms are ρ^N and |ϖ|^N, both tending0; at ρ=1 the first is1. | Pass; endpoint not included. |
| 0.14 formal-group lift | Multiplicative law x+y+xy; x=0 and small x,y | 1+[x]_LT=[1+x]; product becomes [1+x][1+y]=[(1+x)(1+y)], giving the same formal sum; residue of lift is x. | Pass; ordinary-additive substitute excluded. |
| 0.15 integral chart | π=0; boundary | Inequality is 0≤|[ϖ]| with nonzero denominator; quotient B_n/(π)=R. At |π|ⁿ=|ϖ| the ratio has norm1. | Pass. |
| 0.16 whole-ratio roots | p=2, m=1, |π|=|ϖ|=c | Correct ratio norm c^(1/2)/c^(1/2)=1; numerator-only ratio c^(1/2)/c=c^(−1/2)>1. Special fibre s₀=0 after denominator inversion. | Pass; reciprocal excluded. |
| 0.17 perfectoid/split descent | Equal-characteristic chart; coefficient projection | T has root T^(1/p) after extension; before extension its degree-one coefficient cannot be a pth power. Projection sends1↦1 and π^(1/p)↦0, so it is not multiplicative. | Pass with module splitting. |
| 0.18 integral domain | π=0 and [ϖ]≠0; [ϖ]=0 | First point lies in D([ϖ]); second does not. Equal-characteristic disc includes coordinate0. | Seeded pass. |
| 0.19 diamond product | Characteristic-p untilt | Integral coefficient map sends π↦0 on both sides; `Spd(E)` would have no such map since 0 is not invertible. | Seeded pass. |
| 0.20 open gluing | Identity open; empty open; two-open intersection | Pullbacks are 𝒴_S, empty, and 𝒴_(U∩V); both iterated restrictions agree on each coefficient. | Seeded pass. |
| 0.21 full analytic locus | (|p|,|[ϖ]|)=(0,c),(c,0),(c,c) | Union D(p)∪D([ϖ]) contains all three; generic intersection contains only the third. | Pass. |
| 0.22 chart sheafiness | Two rational charts, common unit section | Restrictions of1 are (1,1), overlap difference0; coefficient-boundary points occur in one chart each. | Pass; no stable-uniformity claim for A₂ inferred. |
| 0.23 Cohen existence | O=𝔽₂[[π]], K=𝔽₂(t) | A=K[[π]], residue kernel(π), σ(t)=t², σ(π)=π; ρσ(t)=t²=ρ(t)². Flatness and completeness hold. | Pass, genuinely imperfect K. |
| 0.23 Cohen comparison | Same lift, residue-preserving automorphism t↦t+π | Both identity and substitution reduce to t; they differ by π upstairs. Existence is true, uniqueness would be false. | Pass; Lean does not assert uniqueness. |
| 1.1 generic domain | Integral special leg versus nonzero π | At π=0 membership is false; when π and [ϖ] are nonzero both denominators survive. | Pass. |
| 1.2 radius/annuli | |π|=1/2, |[ϖ]|=1/4; q=3; singleton2 | Radius2, Frobenius radius6; singleton inequalities are equalities. Total scalar division at |π|=1 gives0, but that input is excluded geometrically. | Seeded pass. |
| 1.3 λ/μ | β(p)=1/p, β(p−[ϖ])=0 | μλ(α)(x)=α(x); λμ(β)(p−[ϖ])=1/p>0=β(p−[ϖ]). | Pass; majorant is not identity. |
| 1.4 twelve variants | Teichmüller [x], α(x)=2, r=1 and2 | Growth tail is0, norms are2 and4; [x] lies in the infinity ring but not plus. Frobenius at parameter s/p gives α(x)^s. | Seeded pass. |
| 1.5 growth/invariants | Unit1; F×F; d=1 | log norm1=0; fixed coefficients are 𝔽_p×𝔽_p, yielding ℚ_p×ℚ_p, not a single ℚ_p. | Pass. |
| 1.6 splitting/intersections | x=0; coincident intervals; integer cutoff n=1 | y=z=0 satisfies bound0≤0; identical interval intersection is that ring; cutoff prefactor p^0=1. | Boundary instances pass; strictness remains required. |
| 1.7 presheaves | Empty open; identity restriction; plus test | Empty value is zero ring; composite identity sends[x]↦[x]; α(x)=2 again gives no plus preimage. | Pass. |
| 1.8 sheaves/acyclicity | Identity cover; disjoint product cover | Equalizer is A for identity cover and A₁×A₂ for disjoint cover; normalized higher Čech cohomology0. | Pass; only the listed variants inherit each conclusion. |
| 1.9 relatively perfectoid intervals | Equal endpoint s=r=1; root tower | Endpoint maximum equals λ₁; after extension roots of the coefficient parameter exist at every p-power level. | Pass; not assigned to arbitrary Fréchet rings. |
| 1.10 exponent/base projection | μβ(x)=c², t=2 | (c²)^(1/2)=c; omitting exponent normalization gives c². Both endpoints of [1,2] satisfy their respective bounds. | Pass. |
| 1.11 rational/interval descent | Cover [1,3]=[1,2]∪[2,3] | Overlap is[2,2], not empty; matching rank-one sections (1,1) glue to1. | Pass. |
| 1.12 deformation | u=1/3,v=2/3; product-base idempotent | Composition parameter max=2/3; μ stays constant. Idempotent(1,0) evaluates1 on one component,0 on the other, so the deformation cannot join them. | Pass. |
| 1.13 spectral surjectivity | Identity and projection F×F→F | Identity lifts each norm to itself. Projection misses the second component (idempotent values0 instead of1), so fails the hypothesis. | Pass. |
| 1.14 finite-étale/primitive comparison | r=1 or2, I=[1,2], m=1,2 | For r=1, I⊄(0,r], so no arrow; for r=2, arrow exists. Local model quotients are C and C[ε]/ε² on both sides; m=0 excluded. | Seeded pass. |
| 1.15 Stein limit | Constant rank-one compatible section; dense non-surjective model k[T]→k⟨T⟩ | Constant sections limit to1; a convergent infinite series need not be a polynomial. Density therefore gives no algebraic surjectivity. | Pass; correction argument retained. |
| 1.16 annular comparisons | E=ℚ_p; singleton norm | Coefficient comparison is identity; norm of[x] at radius r is α(x)^r on both carriers. | Pass. |
| 1.17 local generation | Zero and free rank-two modules | Zero needs0 generators; standard basis of A² gives identity determinant1 on each interval. | Pass. |
| 1.18 global generation | Compatible free sections on exhaustion | Two constant basis sections restrict identically and generate A² globally; zero module gives zero sections. | Pass; finite interval generation alone is not asserted sufficient without the route. |
| 2.1 quotient curve | q=2 and radii r,2r | Both have one orbit class; r=0 is outside generic Y. For r>0, 2ⁿr=r forces n=0. | Pass. |
| 2.2 diamond/base projection | Two base components, same radius | Projected idempotent values are1 and0, so points remain over distinct base components; φ changes radius but not this value. | Pass; no Teichmüller ring map. |
| 2.3 functoriality | Identity; composite coefficient maps | [x] maps to[x], and then to[g(f(x))] on either composite. Orbit images agree. | Pass. |
| 2.4 global sheaves/étale maps | Split finite-étale R→R×R | Period ring is corresponding product; two rank-one factors remain two, with idempotents(1,0),(0,1). | Pass. |
| 2.5 Lubin–Tate tower | E=ℚ₂, multiplicative group | [2](T)=2T+T²; nonzero 2-torsion is−2. Unit−1 sends1+T to(1+T)⁻¹, unlike a coefficient-root tower. | Pass; towers distinguished. |
| 3.1 primitive equation | π=a[ϖ] under θ; integral special leg | θ(π−a[ϖ])=π−(π/ϖ♯)ϖ♯=0; at π-image0 choose a=0 and ξ=π, still regular before quotient. | Seeded pass. |
| 3.2 Cartier closed immersion | Local equal-characteristic ξ=T−a | Multiplication on an integral disc algebra has kernel0; quotient evaluates T↦a. At a=0 quotient is the special fibre. | Pass. |
| 3.3 ordinary line descent | Transition u=3 on identity overlap | Compatibility is x₁=3x₂; (1,1/3) passes, (1,1) has difference−2. | Pass; actual transition retained. |
| 3.4 symmetric orbit sheaf | d=0,2; repeated leg | Degree0 has one section; (D,D) has length2 and one automorphism in the orbit sheaf, versus two permutation stabilizers in the quotient stack. | Pass; R06 locator. |
| 3.5 product equations | Empty product; repeated and disjoint factors | Empty product1 gives zero quotient; ξ² gives length2; (T)(T−1) gives k×k by comaximality. | Pass. |
| 3.6 degree criterion | ξ, ξ² and empty divisor | Geometric lengths1,2,0 match symmetric degrees1,2,0 in both directions locally; reduction of ξ² would give1 and fail. | Pass on local factors; R06 locator. |
| 3.7 thickening descent | k[ε]/ε², rank-one identity cocycle | ε survives and ε²=0; descended free module has dimension2 over k, not1. | Pass. |
| 3.8 ambient completion | Ideals(ξ),(uξ),(ξ²),(1) | First two complete to B with same numbered ideals; (ξ²) also completes to B but first quotient has length2; unit ideal completes to0. | Pass. |
| 3.8 finite-projective systems | B/(ξⁿ), ranks0,1,2 | Limits are0,B,B²; rank-one Hom limit is B, rank-two is M₂(B); reductions recover the prescribed ranks. | Pass; R03 ownership. |
| 3.8 completed-stalk model | Constant geometric field; double thickening | Completed field is C; with double divisor the reduction model is C[ε]/ε², where ε≠0. Passing to its reduced ring would lose ε. | Pass as negative control; general comparison remains a substantive target. |
| 3.9 addition/disjointness | Two distinct points versus collision | Distinct completion is B₁×B₂ with nontrivial idempotent(1,0); collision completion is B with no such idempotent; finite quotient has length2. | Pass. |
| 4.1 classical points | a=0, small a≠0, Gauss point | Kernels(T),(T−a), and0 respectively; evaluating T at the first two gives0,a. | Seeded pass. |
| 4.2 disc tilting | a=0 and small nonzero a | Image equations π and π−[a]; their theta values0,0. At p=2 the Teichmüller additive test gives2≠0. | Seeded pass. |
| 4.3 Gauss fibre | f=T, |t|=ρ, |u−t|<ρ | |f(u)−f(t)|<ρ=|f(x_ρ)| and |u|=|t|=ρ. For f=1, difference0<1. | Pass; ρ=0 excluded. |
| 4.4 classical base change | Evaluation point versus Gauss radiusρ | Evaluation fibre has one evaluation point; Gauss fibre contains t and t+δ for 0<|δ|<ρ, both restricting to normρ. | Pass; existence of one classical lift is insufficient. |
| 4.5 inertia witness | Equal characteristic, K at positive Gauss radius | T has nonzero normρ and support0. For tame degree n prime to p, T↦root gives cyclic inertia quotient of size n; unramified coefficient Frobenius is absent after completed unramified base. | Consistent finite-quotient test; not a proof of all inertia surjectivity. |
| 4.6 generic untilts | Frobenius translates; π=0 control | Translates give one quotient divisor; special leg is empty on D(π), since its equation becomes a unit. | Seeded pass. |
| 4.7 divisor coefficient base | Degree1 over 𝔽_q versus geometric residue base | Frobenius orbit index is ℤ on both presentations; changing residue base requires Ê, not merely replacing the symbol E without base extension. | Pass with stated base distinction. |
| 4.8 p-typical de Rham | Marked characteristic-zero untilt; characteristic-p negative input | θ([x])=x♯; θ(ξ)=0. In characteristic p, inverting p gives zero, whereas integral special-leg completion is nonzero. | Pass. |
| 4.9 selected coefficient factor | Split separable quadratic extension over residue C | Completed scalar tensor has two factors B×B; chosen embedding picks e=(1,0), yielding e(B×B)=B. Whole tensor has two idempotents, selected factor one. | Seeded pass. |
| 4.10 divisor de Rham rings | One equal-characteristic leg; empty divisor | B⁺=C[[ξ]], B=C((ξ)); empty completion and puncture are0. | Pass; completion of O_D would give C and fail. |
| 4.11 filtration | ξ,uξ,ξ² | gr⁰=C, gr¹=C·ξ; unit change multiplies basis by u but preserves the line. Filtration step for ξ² is old step2, not step1. | Pass. |
| 4.12 geometric DVR | One leg; two disjoint; double finite quotient | One ring has v(ξ)=1 and residueC; product has(1,0)(0,1)=0; C[ξ]/ξ² has nonzero nilpotentξ and length2. | Seeded pass; no multileg DVR claim. |
| 4.13 completed base change | C→C′; unit change | Completion sends C[[ξ]] to C′[[ξ]] with ξ↦ξ; replacing ξ by uξ keeps ideals. Infinite series require completion, unlike polynomials C′[ξ]. | Pass. |
| 5.1 twist sign | n=−1,0,1 | Descent multipliers π,1,π⁻¹ give section eigenvalues π⁻¹,1,π and bundle degrees−1,0,1. | Pass. |
| 5.2 eigenvectors | Positive twist and zero twist | For n=1 section condition is φ(f)=πf; constant1 fails since1≠π. At n=0 constant1 satisfies it. | Pass; positivity retained. |
| 5.3 two series/Čech sign | n=1, φ=id on integral scalar test; eigenvalueλ with |λ/π|<1 on opposite test | First sum=1/(1−π), multiplied by1−π gives1. Second sum=−π⁻¹/(1−λ/π)=1/(λ−π), multiplied byλ−π gives1. Difference of(1,1) is0. | Seeded pass; opposite sign necessary. |
| 5.4 divisor section | Simple Lubin–Tate torsion zero | Local form ξ·u has order1; replacing by ξ²u gives order2 and fails simplicity. | Pass under supplied section theorem. |
| 5.5 grading/Proj | Eigenvectors f,g of degrees1,2 | φ(fg)=π³fg, so degree3; scalar1 has degree0. | Pass; supplied graded object not rebuilt. |
| 5.6 partial charts | Nonvanishing section g; zero section | D₊(g) uses degree-zero fractions f/gⁿ with deg f=n deg g; D₊(0) is empty. Local comparison does not imply the section-covered open is the whole curve. | Pass. |
| 6.1 exact square/equalizer | Identity square; ℤ Zariski cover2,3; double localization | Identity kernel is diagonal; twisted Zariski sections are(k,k/3). Double localization kernel is k[x,x⁻¹], strictly larger than k[x]. | Pass; R05 names only. |
| 6.2 finite-projective recovery | Identity square, transition3; rank0 | Sections ℚ·(1,1/3) give rank1; base-change comparisons are onto. Zero pieces give zero module. Exactness alone is not used to drop universal surjectivity/covering. | Instances pass; R01 headline coverage. |
| 6.3 finite-étale gluing | Split algebra A×A; identity square | Multiplication is componentwise, idempotents square to themselves, and gluing retains rank2. Dual numbers have Ω generated by dε and are not étale. | Instances pass; R01 headline coverage. |
| 6.4 glueing pair; Lean structure | f=1,f=0,n=0; identity pair | f=1: quotients and torsion are0, localizationR. f=0: n=1 quotient condition forces R≃R′. n=0: quotient by1 and power-zero torsion both0. | Pass; no junk exponent defect. |
| 6.5(a) module effectivity | ℤ→ℤ₂, f=2; pieces ℤ₂/2,0 | Common puncture0; equalizer ℤ/2; recovered pieces ℤ₂/2 and0. Finite-projective signature rejects the first piece. | R01. |
| 6.5(b) flatness detection | M=ℤ, ℤ/2, and direct sum of countably many ℤ | Truth values: true↔(true∧true); false↔(false∧true); true↔(true∧true). | Pass, including arbitrary nonfinite module. |
| 6.5(b) finite-projectivity detection | Same three modules | true↔(true∧true); false↔(false∧true); false↔(false∧false), since the infinite free localizations remain nonfinite. | Pass. |
| 6.5(c) flat sequence | Identity pair, f=1; M arbitrary | Sequence is 0→M→M⊕M→M→0, diagonal then difference; kernel is diagonal and (m,0) maps to m. | Pass; missing headline portion R01. |
| 6.5 finite-projective effectivity | Rank0; rank1 transition3 over identity ℚ pair | Glued modules0 and ℚ·(1,1/3); puncture equality1=3·(1/3). | Pass; transition orientation explicit. |
| 6.6 modifications/poles | Lattice ξ^kB; k=−1,0,1; essential singularity | Degrees1,0,−1; map/inverse need bounds |k|. Series Σc^(n²)z^(−n) has unbounded negative exponents although terms tend0 on each fixed annulus. | Pass. |
| 6.7 fixed-reference lattices | Reference O, latticeξB; empty divisor | Gluing produces O(−D), degree−1; empty divisor returns O and no local lattice constraint. | Pass. |
| 6.8 complement/formal gluing | Rank1 transitionξ^k; essential-singularity map | Algebraic puncture data have finite pole order |k| and glue as in6.7. At |z|=|c|^r, nth series term has norm |c|^(n²−rn)→0 but pole orders n are unbounded. | Seeded pass; meromorphic structure is necessary. |
| 6.9 tensor/dual/base change | LatticesξB andξ²B | Tensorξ³B, dualξ⁻¹B; degrees−3 and+1 equal sums and sign reversal. Scalar extension preserves the powers. | Pass. |
| 6.10 multiple legs | k=3, multiplicity m=2; collision versus disjoint | Bound ceiling(3/2)=2 gives exponent4≥3. Disjoint data product; colliding ξ thenξ gives totalξ² with intermediateξ retained. | Pass. |
| 6.11 affine complement | Principal algebraic chart D, ξ=0 | Complement coordinate ring A[1/ξ]; ξ is invertible there. This calculation is schematic, not an identification with all analytic puncture functions. | Pass. |
| 6.12 period-ring comparison | Geometric a=1; unit parameter change | Fundamental kernel ℚ_p; φ(1/t)=p⁻¹/t, so 1/t is not fixed. ξ anduξ yield identical punctured rings. | Pass. |
| 6.13 B-pair cohomology | O and O(1); generator z=(1+ut)t | H⁰(O)=ℚ_p,H¹(O)=0. For O(1), B_e+t⁻¹B⁺=B gives H¹=0. Inverting g=1+ut makes z generate(t); g mod(t)=1. | Pass; ordinary tensor for infinite flat modules retained. |
| 6.14 B-pair equivalence | Trivial rank1 triple; ξ^k lattice | Trivial triple returns O; changed latticeξ^kB returns degree−k, matching modification convention. | Pass as compatibility, not new equivalence owner. |
| 6.14a normalized shtuka recovery | No-leg trivial rank1; scalar rescaling c≠1 | Identity comparison has value1 at the normalization point; rescaled comparison has value c and fails normalization. Frobenius inverse moves the leg to φ⁻¹(x). | Pass under supplied foundation. |
| 6.15 integral lattice pairs | T=ℤ_p; rational multiplication1/p | Image p⁻¹ℤ_p is strictly larger than ℤ_p; rational map is not an integral lattice automorphism. Identity acts by1 on both pieces. | Pass. |
| 6.16 punctured Witt algebraicity | Trivial rank0 and1; general-base caution | Free modules restrict to ranks0 and1 with identity transition; inverse recovers the same modules. Algebraicity does not imply every projective is free over a general base. | Pass on instances; geometric freeness scope retained. |
| 7.0 torsor dictionary | GL₀, G_m, S₃ standard faithful regular representation | GL₀ torsor singleton; G_m gives lines; regular S₃ action has six distinct permutation operators, while trivial representation sends all six to1. | Pass; nonfaithful model excluded. |
| 7.1 G-modifications | G_m latticeξB; trivial group | Degree−1 line modification versus unique trivial-group modification; identity off D does not extend as a unit across ξ=0. | Pass. |
| 7.2 tensor transfer | GL₂ diagonal(ξ,ξ⁻¹) | Standard lattice has exponents1,−1, determinant1 and degree0; inverse swaps exponents. Tensor functor preserves both. | Pass. |
| 7.3 faithful bounds | G_m character1; word V²⊗(V∨)³; boundk | Character exponent−1 has actual pole boundk, ≤5k. Trivial representation exponent0 has bound0 and cannot detect a nonzero character pole. | Pass; both directions and faithfulness retained. |
| 7.4 structure-group change | G_m→GL₂, a↦diag(a,a⁻¹) | ξ maps to diag(ξ,ξ⁻¹); determinant1; changing group before or after gluing gives same two lattices. | Pass. |
| 7.5 base change/addition | ξ^a thenξ^b; repeated and empty legs | Productξ^(a+b); scalar extension retains exponent; empty leg multiplies by1. Collision keeps intermediateξ^a. | Pass. |
| 7.6 coefficient descent | Equal characteristic C⟨T⟩; perfected chart | Frobenius coefficient of T is0 in every pth power before perfection; afterwards (T^(1/p))^p=T. Projection sends1↦1 and fractional monomial↦0. | Pass; π-root extension is essential. |
| 7.6 complete torsors/approximation | Geometric single and double leg; GL₁ | Unit lifts from C to C[[ξ]]; double quotient C[ε]/ε² retains units a+bε, a≠0. Reduction a=0 is nonunit. GR uses regular t and I=R, not I_D. | Pass on local tests; completed-stalk comparison explicitly owned in3.8. |
| 7.7 G-lattice modification | G_m,ξ^k; GL₂ diagonal(ξ,ξ⁻¹) | Line degree−k; rank2 determinant degree0; replacing the marked transition changes the object even if underlying bundles are isomorphic. | Pass. |

### Ownership, suppliers and pinned declarations

Ownership searches used `roadmaps grep` by objects (Cohen lifts, Witt coefficients, exact squares/glueing pairs, perfect inverse systems, meromorphic structures and symmetric divisors), `roadmaps show`, the main checkout and the board package index. Open-head hits were checked against the supplied readable contexts; revised existing roadmaps were not substituted for their main-branch versions. No identical fully qualified name among the eight submitted declarations was found in the checked roadmap files. The findings above identify the positive ownership matches; absence of a grep hit alone was not used as a missing-supplier finding.

The scope is an extension of supplied period geometry, not a replacement of the entire VectorBundlesAndIsocrystals roadmap: twisted-coordinate estimates, integral-end/multileg comparisons, meromorphic-structure patching and compatibility of modifications are additional interfaces. The two generic constructions in R02–R03 need their existing owners cited. The retained meromorphic-complement statement differs from the fixed-reference theorem by retaining a chartwise meromorphic structure but requiring no globally given reference extension. Relative B-pair equivalence and the no-leg foundation are explicitly imported; their compatibility targets do not re-prove them.

Cross-roadmap contracts resolved in the main/readable supplier texts include:

| Supplier | Resolved sections/targets and scope |
|---|---|
| AdicSpaces, AdicSpacesPartII, AdicSpacesPartIII | Completed AdicSpaces Layers3–6; PartII R0.2–R0.5 strict completions and tensors; PartIII R3.1–R3.5 affinoid bundle comparison, exact squares, Banach correction, split completed base change and Kiehl/étale descent; R3.8 finite-projective trace, trace base change and the perfect-trace-pairing criterion for étaleness. These do not identify arbitrary analytic puncture functions with an algebraic localization. |
| PerfectoidSpaces | P1 theta/primitive kernels and marked untilts; P2 tilting; P3 finite-étale tilting and almost inputs; P3.17a.1–4 sousperfectoid frames, sheafiness and stability. The period-specific whole-ratio root model remains here. |
| DiamondsAndVStacks | D0 quotients/two-fibre products; D2–D3 function and ordinary bundle descent; D4 smallness; D5 Berkovich quotient; D6 pre-adic diamondification and étale comparison. Ordinary vector-bundle descent, rather than almost vanishing alone, is needed. |
| AdicEtaleGeometry; RigidAnalyticGeometry | A1.6a stable-basis étale bundle descent; §2.2 finite-type affinoid maximum modulus. The README restricts maximum-modulus use to the finite disc levels. |
| VectorBundlesAndIsocrystals | VB−1 relative-coefficients, relative-annuli, integral-period-domain, relative-untilt-divisors, relative-period-completions; VB1 tilted Robba rings, annular Frobenius descent, arbitrary-rank bundle functor and v-descent; VB2 positive generation/GAGA/twists/two-affine cover; VB3 Lubin–Tate/fundamental sequence and divisor-section comparison; VB4 integral Frobenius local systems and integral group torsors. Wrong VB2 label is R06. |
| LocalFieldsRamification | Layers0,2,4 coefficient fields, unramified extensions/Frobenius and inertia. No later Drinfeld-lemma consumer is used as a proof input. |
| DerivedModuleAlgebra | §§0.4–0.12 and0.25 deformation/cotangent inputs for Cohen lifting; §§1.E.0–1.E.1 for R03. The latter are on main and do not require an open revision. |
| PadicHodgeTheory | §0.2 affinoid theta/de Rham filtration; §5.5 field tensor-isomorphism torsors; §§7.5–7.6 relative period carriers, B-pairs and their difference-complex comparison. Several mnemonic backticked aliases in this README are not literal declarations in that supplier's prose; the section contracts contain the mathematics, so these were not treated as unowned prerequisites. |
| PadicPeriodRings; FarguesFontaineDiamonds | §§1.5,4.1 geometric de Rham DVR and filtration; §4.3 fundamental sequence; F4 fixed-field ℚ_p marked-untilt/Cartier comparison. The all-E selected-factor comparison is distinguished from these inputs. |
| AInfCohomology | AI.2.1 `AInf.linear_module_patching` and punctured-spectrum triviality; AI.2.3 `AInf.integral_robba_frobenius_descent` and analytic geometric-field extension. These are roadmap targets, not claimed pinned library declarations. |
| AlgebraicVectorBundles; ReductiveGroups; SchemeAndStackFoundations | L0A–L0C scheme bundle API; Layer1 field reconstruction; §§1.15,2.3 torsors. Field reconstruction is not silently used as integral reconstruction. |

GeometricSatakeAndFusion GS0, downstream shtuka moduli and VStackSheavesAndLisseCategories VS1 are named as consumers, not supplier edges. Every `*Needs:*` line was read for its direction and scope; the numerical check above agrees. The 28 worker citation leads contained no cross-roadmap-not-found entry; the local name catalogue is R05, and the AInf names resolve in their roadmap rather than the pinned libraries.

The following declarations were opened at the pins (paths below are inside the respective pinned library, not a newer online checkout):

| Pinned declaration | File and line | What was verified |
|---|---|---|
| `WittVector.ghostComponent` | `Mathlib/RingTheory/WittVector/Basic.lean:296` | Ring-hom ghost evaluation; p-typical, not arbitrary-O_E construction. |
| `WittVector.teichmuller` | `Mathlib/RingTheory/WittVector/Teichmuller.lean:93` | Multiplicative map, not an additive structural map. |
| `WittVector.frobenius`, `coeff_frobenius_charP`, `frobenius_eq_map_frobenius`, `frobeniusEquiv` | `Mathlib/RingTheory/WittVector/Frobenius.lean:218`, `:255`, `:270`, `:283` | Coordinate power formula requires characteristic p; inverse requires perfectness. |
| `IsAdicComplete` | `Mathlib/RingTheory/AdicCompletion/Basic.lean:56` | Includes Hausdorffness and precompleteness; no assertion that a completion map is flat. |
| `AdicCompletion.liftRingHom`, `IsAdicComplete.liftRingHom` | `Mathlib/RingTheory/AdicCompletion/Algebra.lean:358`; `Mathlib/RingTheory/AdicCompletion/RingHom.lean:48` | Compatible maps to all quotient powers produce the limit map, and completeness identifies the target with its limit. |
| `Ideal.span_singleton_mul_left_unit` | `Mathlib/RingTheory/Ideal/Span.lean:100` | Unit multiplication preserves the principal ideal. |
| `IsLocalization.Away.awayToAwayLeft`, `.awayToAwayRight` | `Mathlib/RingTheory/Localization/Away/Basic.lean:184`, `:189` | Ring maps between specified algebraic localizations. |
| `fontaineThetaInvertP`, `BDeRhamPlus`, `BDeRham` | `Mathlib/RingTheory/Perfectoid/BDeRham.lean:62`, `:75`, `:89` | p-localized theta, its ideal completion and localization; not a relative ambient Cartier sheaf. |
| `Algebra.FormallyEtale.of_isSeparable` | `Mathlib/RingTheory/Etale/Field.lean:98` | Separable field extension supplies formal étaleness. |
| `Algebra.FormallyEtale.comp_bijective` | `Mathlib/RingTheory/Etale/Basic.lean:76` | Unique lift through a square-zero ideal. |
| `Algebra.FormallySmooth.exists_mkₐ_comp_eq_of_isAdicComplete` | `Mathlib/RingTheory/Smooth/AdicCompletion.lean:94` | Existence of a lift into an adically complete target, without uniqueness. |
| `IsAdicComplete.henselianRing` | `Mathlib/RingTheory/Henselian.lean:170` | Complete commutative rings give henselian pairs; this alone does not identify completed geometric stalks. |
| `Submodule.mem_torsion'_iff` | `Mathlib/Algebra/Module/Torsion/Basic.lean:746` | Existential annihilator in the selected monoid; with powers f, exponent0 annihilates only zero. |
| `Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul` | `Mathlib/RingTheory/Finiteness/Nakayama.lean:28` | Finite generation and N≤IN produce g≡1 mod I annihilating N; matches §6.13's shrinking argument. |
| `IsAdicComplete.exists_isIdempotentElem_eq` | `TauCeti/RingTheory/AdicCompletion/Idempotent.lean:75` | Complete-ring idempotent lifting allows the matrix-ring use; this is not the entire compatible-system equivalence. |
| `WittVector.isAdicComplete_span_p_teichmuller` and the valued-field specialization | `TauCeti/RingTheory/WittVector/Complete.lean:197`, `:237` | Actual p-typical ideal completeness; scalar/valuation hypotheses are retained. |
| Weak-topology completeness and coefficient ideal bounds | `TauCeti/RingTheory/WittVector/Complete.lean:215`, `:81`, `:130`; `TauCeti/RingTheory/Huber/WittVector.lean:51` | Huber structure and the two coordinate divisibility directions; no all-E construction is obtained by renaming p. |
| `spaX`, `isOpenQuotientMap_quotientMap` | `TauCeti/AlgebraicGeometry/AdicSpace/FarguesFontaine/Quotient.lean:56`, `:107` | Orbit quotient and its topology; no structure sheaf is part of the `spaX` body. |
| `FiniteLocallyFreeSheaf.finiteProjectiveEquiv` | `TauCeti/AlgebraicGeometry/VectorBundle/Affine/Basic.lean:102` | Affine schemes and finite projectives; it is not an adic affinoid theorem. |
| `TauCeti.Tannaka.pointsFunctorIsoTensorAutFunctor` | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138` | Field-coefficient Hopf algebra and universe-lifted group-valued functor comparison. |
| `isFaithful_iff_isClosedImmersion_coordinateGroupSchemeHom` | `TauCeti/Algebra/AlgebraicGroup/Representation/Faithful/Basic.lean:259` | Finite-basis closed-immersion criterion, used in the stated field setting. |

## Not verifiable

- The exact historical FS binary described in the bibliography as the 356-page copy created on 27 November 2024 was not authenticated. The stated author URL now supplies a 383-page copy. The sampled printed theorem/page locators and proof passages were found there and checked, but this does not certify byte identity with the bibliography's dated edition. Looked at the cited MPIM author URL through the sources service. Cite a stable version or update the edition description.
- No cited work was inaccessible behind a paywall in this run. No missing-source request or manifest edit was made. Sources outside the seeded targets were fetched and used where a proof input or finding required them; this report does not certify every unsampled bibliography locator.
- The geometric all-E comparison theorems are not formalized by the submitted signatures. Their stated proof routes, source hypotheses and the displayed adversarial instances were reviewed; successful Lean elaboration supplies no proof of those README claims.

## Source issues

- **Misprint** in kl-i at Lemma 5.5.2 proof, printed p.128: the source says the residual recursion starts at zero; it should be initialized at the element being expanded; affects the proof.
- **Misprint** in kl-i at Lemma 5.5.2 proof, printed p.129: the source says the final arbitrary element belongs to the base period ring; it should be an element of the extension period ring; affects the proof.
- **Misprint** in kl-i at Proposition 5.5.3 proof, printed p.129: the source says a module has the finite-étale category as its scalar ring; it should be a module over the underlying integral period ring; affects the proof.
- **Misprint** in kl-i at Lemma 5.5.5 proof, printed p.131: the source says the surjectivity argument starts with a class already in the plus-input interval quotient; it should start in the unrestricted interval quotient; affects the proof.
- **Misprint** in kl-i at Lemma 5.5.5 proof, printed p.131: the source says the final coefficient bound uses y₀ and the uncorrected coefficient norm; it should use x₀ and the spectral coefficient norm, as specified by kl-ii Appendix A p.191; affects the proof.
- **Gap** in kl-i at Proposition 3.6.11 proof, printed p.92: the source says the completed tensor comparison is an isomorphism without establishing injectivity; it should include the injectivity argument supplied by kl-ii Theorem 3.3.13 and Remark 3.3.14 pp.61–62; affects the proof.
- **Misprint** in scholze-periods at Lemma 6.3 proof, printed p.35: the source says an element f maps to zero in the quotient, although the element under discussion is y; it should refer to y; affects nothing.
