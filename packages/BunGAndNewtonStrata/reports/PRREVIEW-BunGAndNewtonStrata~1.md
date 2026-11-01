# Review of BunGAndNewtonStrata (pull request #1241 at 0d1e747)

**Verdict:** needs changes

## R01 (P1) — The neutral family-stratum description needs a geometric base

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:1623`, together with the base specified at line 304: “on perfect F_q-schemes” and “each equivalent to `[*/J_b(E)]`”.

**Claim:** Every fixed-geometric-class stratum of the arithmetic family stack is the neutral classifying stack of the constant locally profinite group `J_b(E)`.

**Witness:** Take `R=𝔽₃`, `E=ℚ₃`, `G=GL₂`, and `b=[[0,3],[1,0]]`. Every object in its slope-`(1/2,1/2)` stratum has commutative automorphisms; the neutral object of `[*/D×]` has noncommutative automorphisms.

Indeed coefficient Frobenius on `W(𝔽₃)[1/3]` is the identity. For `X=[[a,c],[d,e]]`, the equation `Xb=bX` says `c=3d`, `e=a`, so the automorphism group is `ℚ₃(√3)×`. More generally every matrix in this geometric Newton stratum is nonscalar, and its centralizer algebra in `M₂(ℚ₃)` is commutative. All `GL₂`-torsors over `ℚ₃` are trivial, so changing the torsor does not supply a missing object with quaternion automorphisms. An equivalence of groupoids would preserve these automorphism groups.

**Repair:** Keep the family prestack and its v-descent over perfect `𝔽_q`-schemes, but state the displayed neutral-stratum equivalence after base change to `𝔽̄_q`. If an arithmetic stratum description is wanted, give its descent/gerbe statement rather than identifying it with the constant neutral stack. Carry this base through §0.8's family comparisons and §2.17's normal-chart argument. FS Theorem I.2.1, printed pp.10–11, uses perfect **`𝔽̄_q`-algebras**; this was checked on the rendered pages because FS lines 243–278 lose the overbars in extraction. On the repaired geometric base, choose `i²=−1` in the unramified quadratic extension, with `σ(i)=−i`. The matrices `b` and `diag(i,−i)` are Frobenius-compatible automorphisms and anticommute, recovering the quaternion group. This also supplies a discriminating negative-control Check over `𝔽₃`.

## R02 (P1) — A claimed flag-stratum supplier contract is absent

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:2063`: “supplies the locally closed strata, partial properness and closed upper unions”; also lines 15 and 82's `IG.F.6`, `IG.F.9`, `IG.F.11`, `IG.F.12a`.

**Claim:** Igusa supplies all these properties, so this roadmap has no corresponding construction or proof obligation.

**Witness:** `TauCetiRoadmap/IgusaVarietiesAndTorsionConcentration/README.md:1517` (§3.4) lists local closedness, basic openness and closed upper unions, but not partial properness. Its scope at line 8 assigns bundle geometry to VStack §VS4.0; the cited `IG.F.*` sections are absent.

**Repair:** Remove the obsolete `IG.F.*` supplier claims and point bundle/automorphism/chart contracts directly to VStack §VS4.0. For partial properness, either remove this additional promise or state and own the precise theorem here with its valuative/generalization-invariance argument and inputs; alternatively declare a precise supplier gap through the prescribed plan/README mechanism. Merely relabelling Igusa §3.4 does not supply this missing property. The `GL₂` flag test still gives the closed ordinary locus `ℙ¹(ℚ_p)` and the open basic complement; those set-theoretic computations establish neither a general partial-properness theorem nor the missing supplier contract.

## R03 (P2) — Remove the repeated supplier targets from the build

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:15`, and for a concrete instance lines 2218–2264 (§§4.3–4.5).

**Claim:** Entire existing constructions are retained as numbered targets, API lists, Checks and supplier proof routes, despite being acknowledged as supplied.

**Witness:** `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:1142` already supplies the negative Banach–Colmez tower, split section, contraction, proper punctured quotient and smooth chart. Bun §§4.3–4.5 repeat those same assertions at the same generality.

**Repair:** Delete the repeated targets and put their exact imports in Scope/Exact supplier contracts. Retain only genuinely additional comparisons, each saying how it differs. Apply this to the overlap list at line 15 and the RelativeFarguesFontaine §7.0 and Igusa §§3.4–3.5 repetitions. For example, the additional identification with the arithmetic Newton down-set can remain; constructing the same contracting chart cannot. Retest the two-step chart with graded bundle `O⊕O(1)`: the supplier already gives relative dimension `1`, split origin and scalar contraction by `π`; importing it gives exactly the same inputs for the new down-set comparison. The arithmetic classification and topology extensions remain a repairable independent scope, so this is not a rejection of the whole roadmap.

## R04 (P3) — Update the vector-bundle supplier locators

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:73` and the `VB−1`–`VB4` citations throughout the Needs lines.

**Claim:** Those layer labels locate the coefficient, isocrystal, bundle, classification, Banach–Colmez and family inputs.

**Witness:** The supplied open head of `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md` has Layers 0–6, beginning at lines 88, 209, 380, 759, 963, 1061 and 1647. There are no `VB−1`–`VB4` layer headings.

**Repair:** Cite the actual layer plus named subsection: Layer 0 coefficient rings; Layer 1 finite isocrystals/division algebras; Layer 2 analytic bundles; Layers 3–4 algebraization/classification; Layer 5 Banach–Colmez spaces and “Quotients by contracting automorphisms”; Layer 6 families/local systems. Match each consumed assertion separately rather than replacing every old label mechanically. The slope-`1/3` block still has dimension `3`, its bundle has slope `−1/3`, and the positive/negative Banach–Colmez inputs remain available at these actual locations. This is locator drift, not a claim that those mathematical inputs are missing.

## R05 (P3) — README API identifiers claim declarations the acceptance file does not contain

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:92`, 312–315 and 1113–1116, for example.

**Claim:** Backticked own API identifiers such as `GIsocrystalFamily.pullback` and `RationalNewtonWitness.basic` name the proposed library API although they are absent from `Suggested.lean`.

**Witness:** `TauCetiRoadmap/BunGAndNewtonStrata/Suggested.lean` contains five definitions/abbreviations and two theorems, all in the Witt `GL_n` model; neither of those two API identifiers occurs as a declaration.

**Repair:** Express the README API bullets in mathematical prose, keeping backticked own declaration names only for the seven declarations actually present. Remove the sentence assigning nonexistent Lean names a catalogue role. Do not expand `Suggested.lean` into an API catalogue to satisfy the names. A basic rational Newton witness still gives the central morphism; removing the undeclared identifier changes no mathematics.

## R06 (P3) — HTML anchors fail the residue gate

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:19` and 142 further anchor occurrences.

**Claim:** The submitted README satisfies the required text gate.

**Witness:** The worker's gate reports `residue=143`, all listed examples being `<a id=...>` anchors; the total gate verdict is `FAIL`.

**Repair:** Delete the prohibited HTML anchors and update internal links to the generated heading anchors, or use explicit section references. Check the link from the chart discussion to §1.17 after this conversion. Mathematical targets and their references stay intact.

## R07 (P3) — The bibliographic label PR24 triggers the pull-request scanner

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:1684`, 1691, 1694 and 2564.

**Claim:** The submitted text passes the no-pull-request-number scanner.

**Witness:** The gate reports `prnum=5` at these lines. Each match is the Pappas–Rapoport citation `PR24`, not a pull-request reference; line 1684 produces two matches.

**Repair:** This is a scanner false positive, not process narrative by the author. Spell the displayed bibliography label “Pappas–Rapoport 2024” consistently to avoid the scanner, retaining the existing source key in metadata. Verify all five occurrences disappear from that scanner without changing the cited restriction proposition and remarks. No tooling change is requested here.

## R08 (P3) — The references have no source manifest

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:2526`–2565 (References).

**Claim:** The source/version/locator evidence is recorded in the required machine-readable manifest.

**Witness:** There are 38 bibliography keys but no `TauCetiRoadmap/BunGAndNewtonStrata/sources.toml`; the supplied source-cache inventory consequently records none.

**Repair:** Add one manifest entry per cited work, reusing the existing bibliography keys, the legally fetched version and exact target locators. Preserve the published/preprint numbering relationship in one entry rather than inventing a second key. In particular record FS's geometric residue base and the `uncertified` GLX locator. This review fetched the references without modifying the PR or its manifest.

## Verified sound

The review read both complete files: 104 numbered README targets across five layers, the worked numerical/algebraic conventions, and all seven Lean declarations. It inspected the repository writing rules and two main-branch examples (AlgebraicVectorBundles and ReductiveGroups). No file outside this roadmap is changed by the PR relative to `origin/main`, and this review changes no worktree file. There are no algorithms, sorry-defined data, `set_option`s or nonpermitted imports in the acceptance file. No arbitrary `Prop` stand-in or conclusion-as-hypothesis was found there.

The recorded gate has `build=0`, `depcheck=0`, `outside-folder=0`, `stray-files=0` and `dirty=0`; its failures are exactly `residue=143` and `prnum=5` (R06–R07). Independently, `lake env lean` on `TauCetiRoadmap/BunGAndNewtonStrata/Suggested.lean` succeeded, with only the two expected `sorry` warnings. The dependency command requested in the brief returned:

```text
depcheck: 205 roadmaps, 1475 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. All Needs lines were read, including the split between arithmetic and geometric ownership; the successful graph check does not resolve the semantic supplier defects R02–R04.

**Seeded source sample (15 targets).** Thirty-seven of the 38 cited works were legally retrieved through the sources service; GLX was returned as paywalled/uncertified. No target is explicitly labelled unverified in the README. These are the source comparisons for the seeded sample; support for a source's special case is distinguished from a separately planned extension.

| Target | Locator actually inspected | Result |
| --- | --- | --- |
| 0.8 Families | FS §I.2, pp.10–11, FS lines 243–278; Ans22 Lemma 11.3 and Theorem 11.4, pp.34–36, Ans22 lines 1446–1514 | Coefficient-ring torsors and Frobenius descent have the stated construction. FS's displayed base is geometric; the arithmetic prestack is meaningful, but its neutral-stratum consequence is R01. |
| 1.8 Invariants | KMPS (1.1.2.1), p.6, lines 238–270; KZ §2.2.1, pp.9–10, lines 395–406 | Integral coinvariants, rational averaging and invariance agree; the rational compatibility does not erase the separately retained torsion. |
| 1.22 Representation criterion | RR96 §2.1, Lemma 2.2, pp.165–166, lines 369–397; Proposition 2.4, pp.166–167, lines 402–420 | The source assumes characteristic zero. The roadmap says so and explicitly owns the highest-weight/exterior-power extension in positive characteristic; it does not claim that RR96 states that extension. |
| 1.23 Acceptable classes | KMPS §1.1.5, p.8, lines 316–342; KZ §2.2.3, p.10, lines 424–434 | Both the Newton bound and integral κ equality are present. The inner-twist identification with the quasi-split form is retained. |
| 1.26a Acceptable straight representatives | HeKR16 Proposition 4.1, p.12, lines 435–442; its §1.1, pp.4–5, lines 153–162; HN18 Theorem 1.1, p.4, lines 146–148 | HeKR16's tame semisimple setting is narrower. The target acknowledges it and makes the affine-root/central-component extension a proof obligation, rather than silently importing the stronger statement. |
| 1.27 Ordinary translation | KZ Lemmas 2.1.7, 2.1.9 and 2.2.6, pp.8–10, lines 336–386 and 444–452 | Straightness, common chamber, and vanishing of all Levi-root pairings support the translation and centrality claims; absolute cocharacter lifts remain distinguished from inertia classes. |
| 1.34 Rational representative | KMPS (1.1.3.1), p.7, lines 283–292 | The rational-representative condition is explicit; quasi-split or basic gives it. Arbitrary inner forms are not claimed to do so. |
| 1.43 z-extension | Kot97 §6.5, (6.5.1), p.287, lines 4087–4109 | The acceptable-set adjoint bijection is present. The separate component-coset assertion cited to GLX Lemma 3.16 could not be source-certified; see Not verifiable. Its split examples compute correctly. |
| 2.4 Smallness | FS Proposition III.1.3, pp.88–89, lines 3356–3370 | The smallness argument uses a cofiltered size bound and finite bundle/tensor data; it does not identify the stack with a set of isomorphism classes. |
| 2.14 Central torus | FS Lemma III.2.10, p.93, lines 3528–3533, and proof after III.3.5, p.99, lines 3762–3766 | The v-surjection and quotient by the Picard stack are supported. The proof follows uniformization rather than using its κ-local-constancy consequence circularly. |
| 2.17 Family descent/strata | FS I.2.1, p.11, lines 272–278 (rendered); GIZ26 Theorem 6.8, p.41, lines 1664–1667; HK22 Theorem 2.11, p.9, lines 404–430 | Descent and geometric strata are supported; the finite-base neutralization is false (R01). The normality hypothesis and the source's tensor-orbit gap are explicitly addressed in the roadmap. |
| 2.20 Newton topology | GIZ26 §2/Remark 2.1, pp.6–7, lines 268–296; Lemma 7.17 and Theorem 7.18, pp.50–52, lines 2075–2151; Vie21 Theorem 1.1, p.2, line 55; He16 Theorem 2.12, p.28, lines 1137–1145 | Both coefficient characteristics and the reversed specialization direction are supported. The proof uses the schematic-to-Bun direction, not the stronger meromorphic comparison. Its use of §2.17 must inherit the repaired geometric-base formulation. |
| 3.6 Opposite parabolic | FS §III.5.1.1, pp.105–106, lines 4002–4018 | Quasi-splitness, the descended Newton representative, Levi and nonpositive-weight parabolic are retained. Column-matrix tests fix the triangular direction. |
| 4.3 Negative tower | FS Proposition V.3.5, p.174, lines 6712–6729 | Relative representability, partial properness and dimension are supported; the warning that the absolute framed object need not be a diamond is essential. Ownership is R03. |
| 4.5 Contraction | FS Proposition V.3.6, pp.175–176, lines 6732–6770 | A divisible positive Newton multiple contracts the negative-extension directions; inverse iterates escape, and the punctured quotient is proper. Ownership is R03. |

**Computed adversarial pass.** The 118 rows below cover all 104 numbered targets, with two additional family-stratum tests, plus the seven Lean declarations and five worked-convention tests. These are discriminating computations, not substitutes for general proofs. “Agrees” means that the two values in that row agree; it does not certify an uninspected theorem. Write `h=(1/2,1/2)`, `o=(1,0)`, and `u=(0,−1)`. Unless specified otherwise, `G=GL₂`, Frobenius is arithmetic, and slope tuples are descending. The `h,o` examples have `κ=1`. The chart example uses bundle `O⊕O(1)`, hence isocrystal tuple `u` and `κ=−1`.

| Statement | Instances tried | Values computed on the two sides / negative control | Result and change |
| --- | --- | --- | --- |
| 0.1 Tensor bundles | `G=1,G_m,GL₂` | Unit groupoid has one object and one arrow; character `1` gives rank `1`; standard `GL₂` representation gives rank `2`, determinant rank `1`. | Agrees; import under R03. |
| 0.2 Filtered splitting | Trivial filtration; Euler filtration on `ℙ¹` | Trivial case `P=G`, `U=1`; Euler bundle has `H⁰(O²(−1))=0`, whereas its proposed split bundle has `H⁰((O(−1)⊕O(1))(−1))=K`. | Affine-local formulation passes; global splitting fails as intended. |
| 0.3 Analytic torsors | `G_m`, trivial line | Frame torsor is `O_X×`; automorphisms of the tensor functor are also multiplication by `O_X×`. | Agrees; import. |
| 0.4 Structure group | Determinant `GL₂→G_m`, bundle `O⊕O(1)` | Determinant bundle is `O(1)`; sum of degrees is `0+1=1`; identity pushforward returns the original bundle. | Agrees; import. |
| 0.5 G-isocrystals | Rank-one `π^mσ`, tensor and dual | Tensor slopes `1+(−1)=0`; dual of slope `1` has slope `−1`; unit slope `0`. | Agrees; keep arithmetic comparison, import carrier. |
| 0.6 Sigma classes | Identity Frobenius on `C₂`; nonabelian `S₃` | For `C₂`, classes are `{1}` and `{a}`; for `S₃`, transpositions form a class of size `3`, with stabilizer size `2`. | Groupoid stabilizers retained; set quotient alone fails. |
| 0.7 Inner twisting | Trivial `H`-torsor; `H=1` | For the right regular torsor, equivariant automorphisms are left multiplications: `L_a∘L_b=L_(ab)`. The image of T is the trivial H_T-torsor. For `H=1` both groups are `1`. | Agrees; inverse-precomposition convention is necessary. |
| 0.8 Family definition | `R=𝔽₃` and `𝔽̄₃`; half-slope matrix | Over `𝔽₃`, `σ=id`, `Aut=ℚ₃(√3)×`; geometrically `Aut=D×`. Both give `b²=3I` and slopes `h`. | Family definition works; geometric/arithmetic stratum distinction R01. |
| 0.9 Classifying stacks | `H=1,E×` | For `H=1`, chart and atlas dimensions are `n²,n²`; for `E×`, `1,1`; subtraction gives stack dimension `0` in both cases. | Agrees; embedding and `ℓ≠p` retained. |
| 1.1 Torus resolutions/invariants | Unramified quadratic norm-one torus; `GL₂→PGL₂` | Lattice map `(a,b)↦a−b` has kernel `(a,a)`; split quotient `ℤ²/ℤ(1,1)` is hit by `(1,0)`; Weyl swap preserves sum `a+b`. | Agrees; scheme surjectivity is not rational-point surjectivity. |
| 1.2 Weil crossed modules | `G_m`, `SL₂`, `μ₃` over `ℚ₃` | `H¹(W,G_m)=ℤ`; `[SL₂→SL₂]` has zero kernel/cokernel and trivial H¹; `μ₃(L)` has `1` point, `μ₃(L^sep)` has `3`. | Coefficient and inertia restrictions pass. |
| 1.3 Abelianization | `G_m,SL₂,PGL₂` | Abelianized groups are respectively `ℤ,0,ℤ/2`; rationalizing the last produces `0`, losing class `1`. | Agrees. |
| 1.4 Slope protorus | Characters `0,1/2,1/3` | `[0]=1`; `Δ[1/2]=[1/2]⊗[1/2]`; antipode sends it to `[−1/2]`; denominator `6` contains both nonintegral weights. | Agrees; no finite-type torus assertion. |
| 1.5 Newton dominance | `h,o`; unequal totals | First partial sums `1/2≤1`, totals `1=1`; reverse gives `1≤1/2`, false. `(1,1)` has total `2≠1`. | Both directions distinguished. |
| 1.6 Levi descent/torus transfer | Split ordinary tuple; anisotropic norm-one torus | `Z_GL₂(o)=G_m²`; the norm-one torus has rational split rank `0` versus geometric rank `1`. | Rational structure is not inferred from absolute rank. |
| 1.7 Hodge averaging | Quadratic restriction torus, `μ=(1,0)` | Average `(1/2,1/2)`, integral coinvariant sum `1`; unaveraged tuple `(1,0)` is not invariant. | Agrees. |
| 1.8 Newton/κ | `h,o`; norm-one torus | `κ(h)=κ(o)=1`, central average `(1/2,1/2)`; norm-one classes have `ν=0,0` but `κ=0,1` in `ℤ/2`. | Rationalization cannot replace κ. |
| 1.9 Decency | `b=π`, periods `0,1,2` | Norms `1,π,π²`; positive-period predicate rejects `0`. An erroneous three-factor period-two norm gives `π³≠π²`. | Agrees. |
| 1.10 Straight comparison | `GL₂` ordinary translation; half-slope length-zero element | Ordinary length `1=⟨2ρ,o⟩`; half-slope representative length `0=⟨2ρ,h⟩`; the identity twisted class is a singleton. | Agrees; source typo excluded. |
| 1.11 Two-invariant classification | `h,o`; norm-one torus | `(ν,κ)` pairs are `(h,1),(o,1)` and `(0,0),(0,1)`; neither invariant alone separates both tests. | Agrees; general-rank Lean headline retained. |
| 1.12 Decent existence | Companion `[[0,p],[1,0]]`, `p=2,3` | `Φ²(e_i)=p e_i`; take `r=2`, `a_i=1`, so `a_i/r=1/2`; diagonal ordinary matrix uses `r=1`, exponents `1,0`. | Agrees in both small primes. |
| 1.13 Algebraic J | Basic `h`, ordinary `o`, trivial class | `J_h=D×`, `J_o=G_m²`, `J_1=GL₂`; split ranks `1,2,2`, absolute ranks all `2`. | Agrees; algebraic versus point centralizers distinguished. |
| 1.14 Representative transport | Swap matrix `g`, `b=diag(π,1)` | `b′=diag(1,π)`; `g diag(a,d) g⁻¹=diag(d,a)`, satisfying the new centralizer equation. | Agrees. |
| 1.15 Defect | Same three classes | `2−1=1` for `h`; `2−2=0` for both `o` and trivial class. | Nonbasic does not imply positive defect. |
| 1.16 Finite norm centralizer | `r=1`, `δ=diag(1,−1)` in characteristic zero | `γ=δ`, `Z(γ)=G_m²`; for `n=2`, `γ²=I`, `Z(γ²)=GL₂`. | Iteration can enlarge centralizer; formulation passes. |
| 1.17 Central Newton on J | `h,o,0` | `2ν_h` is scalar weight `1`, giving `πI`; `ν_o=(1,0)` is central in `G_m²` but not `GL₂`; zero gives `U=1`. | Agrees. |
| 1.18 Basicness | `h,o`; trivial group | `h` constant and basic; `o` nonconstant and nonbasic; rank zero has empty central Newton morphism and one class. | Agrees without division by rank zero. |
| 1.19 Basic inner equivalence | `G_m`, base bundle `O(−m)` | In the right-torsor model obtained by inversion, `Isom(O(−m),O(−n))` has degree `m−n`; at `n=m` degree `0` is trivial; inverse twist adds `−m`. | Agrees with the chosen torsor convention. |
| 1.20 Morita | Simple slope `1/3` | Isocrystal rank `3`, endomorphism division algebra degree `3`, invariant `−1/3`; right module `A` tensors to `E_b`. Opposite algebra has invariant `+1/3`. | Sign and right/left distinction survive a non-half slope. |
| 1.21 Order | `h,o`; torus torsion | `h≤o=true`, `o≤h=false`; norm-one classes are incomparable despite equal Newton zero because `0≠1` in `ℤ/2`. | Agrees; import order. |
| 1.22 Representation detection | Standard and determinant of `GL₂` | Standard first weights give `1/2≤1`; determinant gives `1=1`; dual standard gives `−1/2≤0`; reverse standard inequality fails. | Agrees; forward/converse tested. |
| 1.23 Acceptability | Bound `(1,0)` | `h,o` have total `1` and first slope `≤1`; `(2,−1)` has total `1` but `2>1`; `(0,0)` has wrong total `0`. | Both conditions discriminate. |
| 1.24 Basic Levi formula | Torus Levi, representative `diag(1,π)` | Levi tuple `(0,1)` becomes dominant `(1,0)` in G; both κ images have total `1`. | Taking the G-dominant representative is essential. |
| 1.25 Maximum | Split bound `(1,0)`; quaternion inner form | Split acceptable set `{h,o}` has maximum `o`; for inverse minuscule bound in `D×`, maximum is the basic class, while hypothetical ordinary transfer gives forbidden `(1/2,−1/2)`. | Maximum and ordinary existence distinguished. |
| 1.26 Ordinary | Same cases; torus | `o=(1,0)=μ◇`; `h≠μ◇`; norm-one torus acceptable singleton has `ν=μ◇=0`; quaternion ordinary candidate has denominator `2∤1`. | Agrees. |
| 1.26a Straight acceptable | Split `GL₂`, minuscule bound | Ordinary translation has length `1`; half-slope straight element length `0`; both have κ `1`. Tuple `(2,−1)` exceeds the bound at first sum `2>1`. | Agrees; general affine extension still a planned proof. |
| 1.27 Ordinary translation/Levi | Split ordinary and central weights | `λ=(1,0)`, `ν=λ`, `ℓ(t^λ)=1`; Newton Levi has no roots. For `λ=(1,1)`, root pairing `1−1=0`, Levi is GL₂ and length `0`. | Centrality criterion passes. |
| 1.28 Derived isogeny | `GL₂→PGL₂` | Ordinary tuple maps to difference `1`; κ maps `1↦1 mod 2`; half-slope tuple maps to difference `0`, so ordinary/nonordinary remains distinguished. | Agrees for compatible bounds. |
| 1.29 Integral conjugacy | Ordinary translation in its own admissible double coset | `b=t^(1,0)`, conjugator `1` gives `1⁻¹bσ(1)=b`; length `1`, Levi radical dimension `0`. | Identity case agrees; no claim of a test of all parahoric orbits. |
| 1.30 Products/Res | Two split lines; unramified quadratic restriction | Product slopes `(1,−1)` and component κ `(1,−1)`; restriction norm of components `(π,1)` is `π`, Hodge sum `1`; split rank `Res G_m=1`, not `2`. | Norm and defect normalization pass. |
| 1.31 Basic Levi fibre | Basic `h`; torus Levi; nonbasic `o` | No torus tuple of integers maps to `h`, hence empty fibre; ordinary `o` has two torus preimages `(1,0),(0,1)`. | Basic hypothesis separates uniqueness from failure. |
| 1.32 Minuscule quasi-split J | Inverse bound `(0,−1)` | Ordinary centralizer `G_m²` is quasi-split; basic `D×` is not; basic tuple `(−1/2,−1/2)` has denominator `2`, ordinary denominators `1`. | Restricted GL minuscule claim passes. |
| 1.33 Finiteness/basic minimum | Rank two minuscule, zero bound, torus | Cardinalities `2,1,1`; minimum in first is `h`; zero bound gives only `(0,0)`. | Agrees. |
| 1.34 Rational representative | Split GL₂; `D×` | `(1,0)` is a rational diagonal cocharacter of GL₂; `D×` has only central rational cocharacters, so a noncentral geometric orbit has no such representative. | Witness hypothesis needed; no general inner-form assertion. |
| 1.35 Levi lifting | `GL₃`, Levi `GL₁×GL₂`, `μ=(0,1,0)` | `κ_M(diag(π,1,1))=(1,0)` versus original μ block sums `(0,1)`; transposition gives `(1,0,0)` and sums `(1,0)`. `N_G(M)/M=1` cannot do this. | Corrected Weyl group passes. |
| 1.36 Torus norm | Sign action on `ℤ`, period 2 | Norm `1+(−1)=0`; average `0/2=0`; coinvariant class of `1` remains nonzero in `ℤ/2`. | Newton averaging does not determine integral class. |
| 1.37 Torus-special | Quadratic restriction torus in GL₂ | Cocharacter `(1,0)` has norm `(1,1)`, average `h`, κ `1`; corresponding GL₂ class is basic. | Agrees. |
| 1.38 Elliptic torus/basic | Same unramified elliptic torus | Averaging `(1,0)` gives `h`; pairing with GL₂ root is `1/2−1/2=0`; κ remains `1`. | Basic image passes. |
| 1.39 Transferred torus | Central rank-one datum | For `G=J_b=G_m`, transport is identity, `ν(π^m)=m`, norm-period-r valuation `rm`, average `m`. | Identity transfer passes. |
| 1.40 Abelianization/π₁ | `SL₂,PGL₂`, norm-one torus | Coinvariants and abelianized classes are `0`, `ℤ/2`, `ℤ/2`; classes `0,1` survive for the last two. | Agrees. |
| 1.41 Rational κ on J | `GL₂` basic half-slope | Division uniformizer `Π` has reduced-norm valuation `1`; scalar `π` has valuation `2`; image is all `ℤ`, not only `2ℤ`. | Rational surjectivity distinguishes scalar-only model. |
| 1.42 Component coset | `σ=−1` on `ℤ`; ramified norm-one torus | `−2x=2` gives `x=−1`; `−2x=1` has no integer solution. Ramified torus has inertia coinvariants `ℤ/2`, Frobenius identity and κ(`−1`)=`1`. | Integral equations pass; geometric μ(π) need not be rational. |
| 1.43 z-extension | Identity; product projection; `GL₂→PGL₂` | Component maps are `x↦x`, `(a,b)↦b`, and `n↦n mod 2`; target `1` is hit by `1`. | Examples pass; GLX source unverified. |
| 1.44 Connected center | `GL₂→PGL₂`; compare SL₂ | κ map `ℤ→ℤ/2` hits quaternion class `1`; `SL₂` has π₁ `0` and cannot hit it. Centers are respectively `G_m` and finite `μ₂`. | Connected-torus hypothesis discriminates. |
| 1.45 Levi Newton comparison | Torus tuple `(0,1)` in GL₂ | G-dominant tuple `(1,0)` minus Levi tuple is `(1,−1)`, one positive coroot; equality case difference is `0`. | Agrees. |
| 2.1 Étale-site map | Identity étale base change; two disjoint copies | Pullback of identity is identity on `X_S`; pullback of `S⊔S` is `X_S⊔X_S`, two components on both sides. | Agrees without postulating a map of schemes `X_S→S`. |
| 2.2 Torsion cohomology | Constant `ℤ/ℓ` at geometric base; zero sheaf | H⁰ of curve and E are both `ℤ/ℓ`; zero coefficient has Hⁱ `0` on both sides for every i. | Basic comparison passes; p-primary route kept separate. |
| 2.3 Bun stack | `G=1,G_m` | Terminal stack has stabilizer `1`; degree-m line has stabilizer `E×`, whereas its class set has trivial stabilizer. | Groupoid distinction passes; import. |
| 2.4 Smallness | Trivial group and line bundle | Trivial stack has a one-object atlas; each fixed-degree line stratum has one geometric class but stabilizer `E×`. | Smallness must retain arrows; source argument checked. |
| 2.5 Geometric classification | Matrices `1,π` in rank one | Images are `O,O(−1)`; Newton slopes `0,1` distinguish their two classes. | Agrees on geometric base; import. |
| 2.6 HN sign | `o,h` | Bundle tuples are `(0,−1)` and `(−1/2,−1/2)`; both degree `−1`, but first HN slopes `0` and `−1/2`. | Upper-jump sign passes; import. |
| 2.7 Pro-étale torsors | Geometric strictly disconnected point; `H=1` | Trivial torsor has one translation orbit, trivial point stabilizers, and automorphism group H; `H=1` gives one section; disjoint two-point base gives independent sections `(s₁,s₂)`. | Local triviality test passes. |
| 2.8 Trivial open locus | Rank-one classes m=0,1 | Geometric triviality values are `true,false`; κ values `0,1`; each rank-one component is clopen. | Agrees. |
| 2.9 Diagonalizable comparison | `G_m`, `μ₃` | Picard/Weil classes are both `ℤ`; `μ₃(L)` cardinality `1` versus `μ₃(L^sep)` cardinality `3`. Infinite product has no common open stabilizer for primitive roots of all orders. | Finite-type and coefficient conditions discriminate. |
| 2.10 Crossed-module curve classes | `SL₂`, `PGL₂` | Identity crossed module gives zero; PGL₂ abelianized classes give `ℤ/2`; degree-one obstruction is `1 mod 2`, not zero. | Agrees. |
| 2.11 Grassmannian point lifting | Identity geometric point; torus lattice `ξ^m` | Restriction sends `ξ^m` to the same lattice `ξ^m`; m=0 gives the unit lattice; m=1 gives degree `−1`. | Identity-base lifting passes. |
| 2.12 BL uniformization | Rank-one m=−1,0,1 | Lattices `ξ⁻¹,1,ξ` map to `O(1),O,O(−1)`; all three rank-one classes are hit. | Sign and surjectivity test pass. |
| 2.13 Central torus Gr | `GL₂→PGL₂` | Lift cocharacter class `1 mod 2` by `(1,0)`; lattice `diag(ξ,1)` has component `1`, projecting to `1 mod 2`. | Geometric lifting passes; no induced-kernel requirement. |
| 2.14 Central torus Bun | Same map; `G_m²→G_m` | Degree/κ lifts `1 mod 2` to `1`; tensoring a GL₂ bundle with a line changes degree by an even integer, `d↦d+2m`. Product projection sends degrees `(a,b)↦b`. | Quotient ambiguity has expected values. |
| 2.15 κ local constancy | Rank-two basic/ordinary; norm-one torus | κ stays `1→1` while ν changes `h→o`; torus κ `0,1` belongs to two separate clopen fibres. | Agrees; import. |
| 2.16 Family κ | Constant rank-one `π^m` over a perfect algebra | Every geometric fibre has determinant valuation `m`; preimage of `{m}` is the whole base, of `{m+1}` empty. | Local-constancy test passes. |
| 2.17 Family strata | Arithmetic versus geometric half-slope test | At `𝔽₃`, all automorphism groups in this stratum are commutative; geometric J is quaternionic and noncommutative. Over `𝔽̄₃`, matrices `b,j` have `bj=−jb`. | Fails over the stated arithmetic base; R01. |
| 2.17 Effective lattice bound | `Φ=[[1,π⁻ᴺ(π−1)],[0,π]]σ`, initial `O²` | Newton slopes always `(1,0)`; `Φ(e₂)` has coefficient valuation `−N`; minimal effective over-lattice has index exponent N. Bound `d(h−1)=N(2−1)=N`. | Corrected denominator-dependent bound passes. |
| 2.17 Tensor orbit lift | Frobenius-fixed tensor line; scalar ambiguity | Rescaling both line and represented tensor by `a` gives `(a,a)·i=i`; forgetting the line factor need not fix i. At `(V,L)=(E,E)`, pair stabilizer is diagonal `E×`. | Pair action excludes the ambient-GL shortcut. |
| 2.18 Component sign | Rank-one lattice `ξ`, and `diag(ξ,1)` | GS κ `1`, bundle degree `−1`; CS labels `−1` and `(0,−1)`. Applying the adapter twice returns `(1,0)`. | Agrees. |
| 2.19 Valuation boundary | Constant rank-one π^m, m=0,1 | Both completed-boundary and discrete generic restrictions give `O(−m)`; labels are `0,1` respectively. Changing `C⁺` need not change the open space. | Constant comparison passes; `R⁺=R°` not dropped. |
| 2.20 Newton topology | Two rank-two classes; norm-one torus | `h≤o=true`; `closure(h)` contains `o`; `closure(o)` excludes `h`. Torus classes have equal ν but different κ, so neither specializes to the other. | Direction passes; repair family-base input. |
| 2.21 Modification bound | GS bound `(1,0)` | `h,o` satisfy first sum `≤1`, total `1`; `(2,−1)` has first sum `2`, fails; rank-one ξ gives slope `1`. | Agrees. |
| 2.22 Minuscule image | Same flag line; central μ | Two allowed rank-two classes `{h,o}` both occur; central μ has one flag point and one acceptable class; `(2,−1)` has empty preimage. | Agrees. |
| 2.23 Quotient-group data | Central quotient `G_m→1` | Quotient class set is a singleton; upstairs classes are all integers. Classes `0` and `1` have the same image, so no lift is selected by the quotient datum. | No canonical lift is claimed; passes. |
| 3.1 HN-graded bundles | `O⊕O(1)` | Degree-0 graded automorphisms are `E××E×`; full automorphisms additionally contain `H⁰(O(1))`, a positive-dimensional group. | Graded/full distinction passes; import. |
| 3.2 HN-graded classification | `G_m`, line `O(−m)` | Unique graded class for m; automorphism group `E×`, matching `[*/E×]`. | Agrees; import. |
| 3.3 Raising groups | Weights `0,3/2` | Lower radical has one root line; graded quotients at `1,3/2,2` are `0,G_a,0`; λ=0 quotient is `G_m²`. | Denominator clearing preserves values; zero-threshold exception retained. |
| 3.4 Full automorphisms | Ordered bundle `O⊕O(1)` | Matrices `[[a,0],[u,d]]`, `u∈H⁰(O(1))`; opposite block `H⁰(O(−1))=0`. | Triangular direction passes; import. |
| 3.5 Positive kernel | Same bundle; basic h | Kernel dimensions are `1=⟨2ρ,u⟩` and `0=⟨2ρ,h⟩`. | Basic kernel is trivial; import. |
| 3.6 Opposite parabolic | `ν=u=(0,−1)` | Root e₁−e₂ has pairing `1`; P⁻ keeps lower root of weight `−1`; corresponding bundle root has slope `+1`. | Opposite parabolic agrees with full automorphism block. |
| 3.7 Semistable/basic locus | h,o; `G=1` | h basic, dimension pairing `0`; o nonbasic, pairing `1`; trivial group has one basic point. | Agrees; import. |
| 3.8 Torus Picard stack | `G_m` lines m,n | Tensor gives degree `m+n`; inverse degree `−m`; each component stabilizer `E×`. For norm-one torus components are `ℤ/2`, not zero. | Picard groupoid retains automorphisms and torsion. |
| 3.9 Stratum classifying stack | Basic h versus u | Basic stabilizer `D×`; u stabilizer `BC(O(1))⋊(E×)²`; dropping BC changes dimension from `−1` to `0`. | Full group necessary; import. |
| 3.10 Torsor reduction | Trivial full-automorphism torsor | Quotient by connected kernel has J-torsor `J`; inverse extension sends it back to the split torsor. For basic b the kernel is `1` and both operations are identity. | Boundary/identity check agrees. |
| 3.11 Stratum dimension | u,h, trivial group | Dimensions `−1,0,0` from pairings `1,0,0`; ordinary defect is `0`, so substituting defect would incorrectly give `0`. | Dimension formula discriminates. |
| 3.12 Flag strata | GS `(1,0)` versus CS `(1,0)` | GS classes `{h,o}`, κ `1`; CS classes `{(−1/2,−1/2),u}`, κ `−1`. | Adapter passes; import strata. |
| 3.13 Closed upper unions | `GL₂` flag | Ordinary locus `ℙ¹(ℚ_p)` is closed, its complement basic is open; generic basic closure contains ordinary, reverse false. | Topology passes; partial-properness contract is R02. |
| 3.14 Unitary dimensions | n=1, `[F⁺:ℚ]=1` | d=`1`; basic d_b=`0` gives dimension `1`; ordinary d_b=`1` gives `0`; Bun dimensions instead `0,−1`. | Distinct dimension notions retained. |
| 3.15 Ordinary rational locus | Rank-two flag line | Rational line gives ordinary class and dimension `0`; nonrational line gives basic class in a dimension-`1` open locus. | Agrees in stated unitary setting. |
| 3.16 Isom diagonal | Line bundles of degrees 0 and 1 | `Isom(O,O)=E×`; `Isom(O,O(1))=∅`; ordinary rank-two self-Isom has connected BC kernel. | Empty and non-discrete cases retained; import. |
| 3.17 Smooth Artin dimension | u chart | Atlas relative dimension `1`, stratum dimension `−1`; the bundle stack has smooth dimension `0`. For G=1 every dimension is `0`. | Agrees; import. |
| 3.18 Components | GL₂ and norm-one torus | Rank-two basic/ordinary with κ `1` are in one component; different integer κ separate; torus ν `0,0` has two components indexed by `ℤ/2`. | Integral π₁ target passes. |
| 4.1 Filtered chart | `O⊕O(1)` | Extensions `0→O→E→O(1)→0` have class space `H¹(O(−1))`; using HN-direction extensions gives `H¹(O(1))=0`. | Opposite filtration discriminates; import. |
| 4.2 Parabolic chart | Same split datum | The positive-Newton parabolic is upper triangular, with extension root Hom(`O(1),O`), degree `−1`; the HN automorphism parabolic is lower triangular. | Sign passes; import. |
| 4.3 Negative tower | Same chart; basic case | Negative piece `O(−1)` gives relative dimension `1`; basic negative part is `0`, giving dimension `0`. | Relative representability retained; import. |
| 4.4 Split section | Extension parameter zero/nonzero | Zero gives slopes `(1,0)` as bundles; nonzero gives `(1/2,1/2)`. Isocrystal tuples are u and `(−1/2,−1/2)`, κ both `−1`. | Equal-class split locus passes; import. |
| 4.5 Contraction/proper quotient | Central element `diag(1,π⁻¹)` | On Ext¹(`O(1),O`), factor is `1/(π⁻¹)=π`; nth iterate is `πⁿx`, inverse iterate `π⁻ⁿx`. The scalar factors have valuations n and −n; inverse factors are unbounded. The Banach–Colmez escape assertion uses FS V.3.6, not a presumed norm on the space. | Correct contracting direction; remove origin; import. |
| 4.6 Positive tangent | Two-step chart | Tangent section root is `O(1)`, with H¹=`0`; opposite choice `O(−1)` has nonzero H¹ and fails positivity. | Jacobian sign passes; import. |
| 4.7 Down-set image | Chart at u | Image has u and basic `(−1/2,−1/2)`; first-sum inequality `−1/2≤0`; tuple `(1,−2)` fails `1≤0`. | Arithmetic down-set comparison retained under R03. |
| 4.8 Rank-two extension | Zero/nonzero extension of `O(1)` by O | Zero gives `O⊕O(1)`; nonzero gives rank-two `O(1/2)`; both degree `1`, HN maxima `1` versus `1/2`. | Agrees with topology orientation. |

| Lean declaration / additional convention | Instances tried | Computed values / excluded model | Result |
| --- | --- | --- | --- |
| `wittCoefficientFrobenius` | n=0,1,2; residue `𝔽₄` | Empty tuple stays empty; σ fixes p; for `a∈𝔽₄\𝔽₂`, σ([a])=`[a²]≠[a]`; σ on `(p,1)` gives `(p,1)`. | Coefficient action, not identity or characteristic-zero pth-power map. |
| `wittGLIsocrystal` | Rank one p; half-slope companion | Φ(1)=p; companion has Φ²(e₁)=p e₁ and Φ²(e₂)=p e₂. | Composition order agrees with `bσ`. |
| `wittGLSigmaSetoid` | Successive g,h; sign action | Later conjugator is `hg`; in S₃, b=(12), g=(12), h=(23) gives conjugate `(13)`, reversed product gives `(23)`. Additive sign action sends 0 by g=1 to 2. | Noncommutative and twisted laws distinguished. |
| `WittGLNewtonPolygon` | n=0,1,2 | Empty tuple admits all denominators dividing multiplicity 0; rank-one `1/2` fails `2∣1`; h passes `2∣2`; o passes `1∣1`; increasing `(0,1)` fails antitonicity. | Nonempty, order and denominator tests pass. |
| `wittGLHasNewtonSlopes` | n=0; rank-one p; companion | Empty basis with r=1 satisfies all indexed equations; p has `(r,a,s)=(1,1,1)`; companion `(2,(1,1),h)`. r=0 is excluded by `0<r`. | Genuine Frobenius predicate; no arbitrary free slope parameter. |
| `wittGL_isocrystal_classes` | Zero space; rank one; rank two | Zero space gives singleton class; rank-one p has class valuation 1, not 0; basis swap turns `diag(p,1)` into `diag(1,p)` and preserves its class. | Finite dimension and perfectness are in the elaborated type. |
| `wittGL_newton_classification` | n=0,1,2; p=2,3 | Quotient at n=0 and polygon type are singletons; rank-one admissible slopes are integers; companion gives h and diagonal gives o, distinct polygons of total 1. | Algebraic closedness retained; no padding tactic succeeded. |
| Numerical `GLnSlopeData`, basic/ordinary/dominance | empty, h,o,zero | Empty total 0, no κ/n used; h total1/basic/not ordinary for o; o total1/not basic/ordinary; zero tuple total0/basic. | Worked Checks agree with the general statements. |
| Frobenius norm/decency | `σ=−1` on additive ℤ | N₀(1)=0, N₁(1)=1, N₂(1)=0, whereas doubling gives 2; period-zero decency false. | Ordered twisted norm required. |
| Integral descent/coinvariants | Sign action, generator1 | `ℤ/(1−σ)ℤ=ℤ/2`; `[1]≠[0]`, `[2]=[0]`; rational coinvariants are zero. | Torsion control passes through all layers using κ. |
| Ramification and small characteristic | `ℚ₃(√3)/ℚ₃`; p=2 and3 | Norm-one element −1 has integral κ1; proposed μ(3) has norm9≠1. Companion p²-equation uses `b²=pI` for p=2,3 alike. | Ramified cocharacters are not evaluated without descent; no good-prime restriction. |
| Excluded degenerate inputs | q=1; square-zero `𝔽_p[ε]/ε²`; zero-rank | q=1 is not a finite-field cardinality; Frobenius sends ε to0 so the square-zero ring is not perfect; rank-zero tuple has total0 and unique matrix. | No theorem is silently applied outside the stated coefficient/perfect-base domain. |

**Headline and signature audit.** The README's substantive endpoints are the matrix/isocrystal correspondence (§0.6); rational filtered splitting and pure inner twisting (§§0.2, 0.7); the locally profinite classifying-stack theorem (§0.9); general reductive classification, decency, sigma-centralizers and acceptable/ordinary classes (Layer 1); uniformization, family descent and Newton topology (§§2.12, 2.17, 2.20); filtered automorphisms, stratum dimensions and components (§§3.3, 3.11, 3.18); and chart images and rank-two extensions (§§4.7–4.8). The already supplied geometry in this list must be imported under R03.

The two native Witt `GL_n` statements at `Suggested.lean:109` and `:123` cover the statable matrix correspondence and general-rank Newton classification, including a positive Frobenius power giving a decent basis. The other families are explicitly identified in the module docstring, together with their missing carriers. Searches by object found no native relative curve with its sheaf/bundle category, Bun v-stack, local reductive Newton invariant or general isocrystal-family carrier that would make those missing headlines statable with just a few simple definitions. In particular the existing topological Fargues–Fontaine orbit quotient is not such a curve. There is no missing statable headline established by this audit.

A scratch copy included `#check @name` for each of the seven declarations. All seven elaborated types were compared with the README: no required binder was lost and no type changed. The first theorem explicitly retains `Module.Finite`, the finrank equation and native isocrystal structure; the second retains algebraic closedness. The polygon definition is intentionally independent of p and k. A second scratch modification tried `rfl`, `simp`, `infer_instance` and a direct application of the pinned rank-one classification on each of the two sorried theorems. Neither theorem closed. The direct library application requires rank one, and additionally requires algebraic closedness absent from the first theorem's general perfect-field domain. No padding finding follows from these probes.

**Pinned objects opened.** Mathlib was checked at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 15 groups of declarations give the principal evidence for the native-carrier, convention and duplication decisions; paths are relative to the respective library repository.

| Pinned file and line | Declaration/object and scope checked |
| --- | --- |
| `Mathlib/RingTheory/WittVector/Isocrystal.lean:79`, `:113`, `:132`, `:138`, `:180` | `FractionRing.frobenius`, `Isocrystal`, `IsocrystalHom`, `IsocrystalEquiv`, `isocrystal_classification`. The class bundles a module and Frobenius-semilinear equivalence; it does **not** include finite dimension. The classification theorem is rank one over an algebraically closed residue field. |
| `Mathlib/RingTheory/WittVector/FrobeniusFractionField.lean:239` | `exists_frobenius_solution_fractionRing`: nonzero coefficient, nonzero solution and an integral power of p; not a general-rank slope decomposition. |
| `Mathlib/Algebra/Group/Units/Equiv.lean:39`, `:50`, `:194` | `Units.mapEquiv`, `Units.coe_mapEquiv`, and `AddEquiv.neg` generated by `to_additive` from `MulEquiv.inv`. The last declaration really is supplied here despite not appearing as a literal `def AddEquiv.neg`. |
| `Mathlib/CategoryTheory/Endomorphism.lean:137` | `Aut.Aut_mul_def`: `f * g = g.trans f`. This fixes the order used in the matrix/Frobenius construction. |
| `Mathlib/RepresentationTheory/Coinvariants.lean:53`, `:57` | The relation submodule and `Representation.Coinvariants` quotient, with its projection/map API. Integral coinvariants are not a rational averaging operation. |
| `TauCeti/Algebra/AlgebraicGroup/DiagonalizableGroup/Weight.lean:83`, `:93`, `:105`, `:112` | `weightSpace`, membership, internal direct sum and finite support. The last requires `Module.Finite`; a weight decomposition alone does not imply finite support. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/Equivalence.lean:188` | `Tannaka.fgPointTensorIsoEquiv`: algebra-valued points versus tensor automorphisms on finite comodules over a field. This supplies trivialized fibre functors, not arbitrary relative Newton stacks. |
| `TauCeti/Algebra/AlgebraicGroup/Representation/Comodule/Equivalence.lean:216`; `Representation/Comodule/Monoidal.lean:108` | `FGPointRepresentationCat` and its rigid-category instance; finite rational representations, not abstract representations of the point group. |
| `TauCeti/Algebra/Coalgebra/Comodule/Finite/ScalarExtension/Monoidal.lean:186`; `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/Monoidal.lean:83` | `scalarExtensionMonoidalFunctor` and `scalarExtensionComponent`, with the tensor/unit/base-change action compatibilities in `TauCeti/Algebra/Coalgebra/Comodule/PointsAction.lean:98`, `:123`, `:274`, `:489`. |
| `TauCeti/Algebra/AlgebraicGroup/FunctorOfPoints.lean:154`; `MultiplicativeGroup/Basic.lean:217` in that directory | `AlgHom.mapValue` and `MultiplicativeGroup.pointsMulEquiv_mapValue`: coefficient change and its unit-group interpretation. |
| `TauCeti/Algebra/AlgebraicGroup/Dynamic/Parabolic.lean:293`; `Dynamic/LeviDecomposition/Basic.lean:127` | `Cocharacter.parabolic` and `leviGroupExtension`: point-group dynamic constructions; the relative filtered group schemes require the additional supplier/roadmap constructions. |
| `TauCeti/CategoryTheory/Exact/ExactStructure.lean:241`; `Exact/Functor.lean:74` in that directory | `ExactStructure` and `IsConflationExact`: chosen exact structures and preservation of conflations. |
| `TauCeti/AlgebraicGeometry/VectorBundle/FiniteLocallyFree.lean:75`, `:140`; `VectorBundle/Functoriality.lean:43`, `:80` | Finite locally free scheme sheaves, free sheaves, `pullbackId` and `pullbackComp`. These supply scheme bundle coherence; they do not supply curve v-descent. |
| `TauCeti/AlgebraicGeometry/AdicSpace/FarguesFontaine/Quotient.lean:56` | `spaX` is a topological orbit quotient. The file does not equip it with the adic structure sheaf and relative vector-bundle category needed by the headlines. |
| `TauCeti/Algebra/Coalgebra/Comodule/MonoidAlgebra/Basic.lean:550`; `TauCeti/Algebra/Bialgebra/MonoidAlgebra/GroupLike.lean:278`; `Mathlib/RingTheory/Bialgebra/MonoidAlgebra.lean:82` | Finite support, surjectivity of `mapDomainBialgHom`, and the native bialgebra map. Rational common-denominator arguments are additions; these native operations must remain imports. |

**Supplier and ownership audit.** Object searches used `roadmaps grep` over main and the indexed open heads, and searched the board packages, for bundle stacks, Newton strata, contracting charts, sigma-conjugacy, isocrystal families, filtered fibre functors and pure inner twists. Actual supplier text was then opened with `roadmaps show`; old-roadmap revisions were not treated as new suppliers. The following 17 supplier groups resolve the mathematical ownership, with the exceptions already reported. Paths in this paragraph/table are under `TauCetiRoadmap/`.

| Supplier README and resolved locator | Consumed contract / ownership result |
| --- | --- |
| `ReductiveGroups/README.md`, Layers 1 and 7 | Rational representations, tensor reconstruction and reductive structure. These remain imports. |
| `ReductiveGroupsPartII/README.md`, RG2.0.4, RG2.1.1, RG2.1.5, RG2.3, RG2.4 | Coefficients, Steinberg, fundamental groups, z-extensions, representative Kottwitz map, parahorics and affine Weyl data. The inverse translation convention is explicitly converted: `diag(π,1)` has displacement `(0,−1)` and Newton `(1,0)`. |
| `AlgebraicVectorBundles/README.md`, L0A–L0C | Scheme finite local freeness and pullbacks; no new owner here. |
| `VectorBundlesAndIsocrystals/README.md:88`, Layers 0–6 | Linear coefficients, slopes, analytic/algebraic bundles, Banach–Colmez spaces and families. Mathematical input exists, old labels need R04. |
| `RelativeFarguesFontaine/README.md:1735`, `:1855`, `:1869`, `:2543`, `:2605`, `:2755` | §§4.7, 4.12–4.13, 7.0, 7.2, 7.7: divisors, completed local rings, tensor–torsor comparison and modifications. Rank-one lattice `ξ^m` gives `O(−m)` as used here. Repeated construction is R03. |
| `HodgeTateAndCanonicalSubgroups/README.md:1007`, §2.14 | Integer-filtered functors and fpqc-local splitting. Rational thresholds, affine splitting and the higher graded-vector-group comparison are stated as additions here, not a second integer-filtration foundation. |
| `DiamondsAndVStacks/README.md`, D0.25–D0.26, D1.4, D1.9, D3.10, D4.7, D5.12, D6.5 | Stack/groupoid operations, totally disconnected covers, torsors, smallness and relative representability. The chart claims retain relative representability rather than claiming an absolute diamond. |
| `DiamondEtaleCohomology/README.md:748`, §§C1.11–C1.12 | qcqs base change with prime-to-p torsion hypotheses. The roadmap separately treats p-torsion instead of dropping the coefficient condition. |
| `DiamondSixOperations/README.md:768`, `:986`, §§S4.2, S5.3 | Cohomological smoothness and profinite quotient geometry. The image-relation quotient and the stack quotient with stabilizers are distinct. |
| `VStackSheavesAndLisseCategories/README.md:1113`, §VS4.0; §§VS0.1–VS0.2, VS1.3 | Bundle/Newton geometry, full automorphisms and contracting charts; smooth-stack and positive-tangent section machinery. This is the existing owner, including general E, for the repeated targets in R03. |
| `GeometricSatakeAndFusion/README.md`, GS0 | General-field Schubert bounds and minuscule flag comparison. The inverse CS/GS label adapter is an actual comparison, not a second Grassmannian construction. |
| `EndoscopicTransferAndUnitaryTraceComparison/README.md:165`, `:322`, `:468`, `:2731`, `:2784`, `:2811` | §§1.1, 1.5, 1.11 supply crossed-module/abelianized cohomology; §§7.2, 7.4, 7.5 give the cited `ℚ_p` specializations. Their inverse conjugator convention gives the same orbits; rational Newton Levi statements retain quasi-splitness. |
| `IgusaVarietiesAndTorsionConcentration/README.md:1517`, §§3.4–3.5 and Layer 0 | Unitary datum, flag strata and dimensions. Actual numbered flag sections exist; `IG.F.*` does not, and partial properness is not supplied: R02. |
| `PadicHodgeTheory/README.md`, §5.5 | Affine tensor-isomorphism torsors and minimal p-adic invariant theory; local torsor comparison covers finite extensions of `ℚ_p`, without a good-prime restriction. |
| `ModularCurves/README.md`, §0E | Effective faithfully flat descent for affine schemes. |
| `SchemeAndStackFoundations/README.md:2502`, `:3330`, §§1.15, 2.3 | Site torsors and descent on the common carrier. |
| `AlgebraicModuliForArithmeticGeometry/README.md:1143`, §3.1 | Module descent and descent of finite local freeness. |

The open `AdmissiblePairsAndPadicHodgeStructures` §§1.4–1.6 extends toward connected linear groups and consumes this reductive theory; its direction is not a supplier edge here. The generic torsor/gerbe infrastructure found in SchemeAndStackFoundations is imported, while the isocrystal-specific pure-inner-twist comparison is an addition here. No duplicate fully qualified name among the seven Lean declarations was found in the main/open-roadmap searches. The present roadmap can own the general arithmetic classification and the added schematic-to-bundle topology comparisons; it cannot re-own the supplied bundle and chart constructions. No additional upward edge or cycle was found, and no ownership move to a later supplier is proposed.

## Not verifiable

- **GLX**, Lemma 3.16 and proof, pp.829–830, including equation (3.23): the sources service returned the publisher source as paywalled/uncertified. The bounded z-extension lifting locator in the seeded sample and the README's claimed source correction are therefore not certified from the text. The independent `SL₂` valuation-lattice counterexample has values `X_*(T)=ℤ`, `π₁(SL₂)=0`, but that does not prove what GLX actually prints. No paywall was bypassed and this settled uncertified item was not re-requested.
- **Dillery23**, Theorem 5.3 and following paragraph, published p.54, and **PR24**, the published page locators in §2.19: their cited NSF copies did not return through the service. Legal alternative preprints were obtained, but exact published-page alignment is not certified. In particular the available Pappas–Rapoport author version numbers the restriction assertion as Proposition 2.1.4; the README cites Proposition 2.1.3 and Remark 2.1.4 in its published version. Record that version distinction in the manifest rather than silently substituting locators.
- The computed rows are adversarial tests, not formal proofs of the general theorems. Source extensions explicitly owned here—such as positive-characteristic representation detection and the general affine-data transfer—were audited as proof plans with named inputs. The successful `sorry` build does not certify those proofs or repair R01.

## Source issues

- **Gap** in LZ17 at Remark 4.1(iii), printed p.34 (LZ17 line 1579): the source says the de Rham tensor construction supplies a class in B(G); it should be a class in B(Gᶜ), with additional lifting data needed for B(G); affects a stated result.
- **Misprint** in CS17 at Proposition 3.5.7(1), printed p.689 (CS17 line 1654, published copy): the source says the Newton map is lower semicontinuous; it should be upper semicontinuous for its specified dominance order, consistently with the closed upper unions in Corollary 3.5.9; affects a stated result.
- **Misprint** in KMPS at equation (1.1.2.2), printed p.6 (KMPS line 262): the source says the Frobenius norm has factors through σʳ(b); it should be through σʳ⁻¹(b), exactly r factors; affects a stated result.
- **Error** in KMPS at Corollary 1.1.15, printed p.11 (KMPS line 504): the source says the required cocharacter motion lies in N_G(M)/M; it should be allowed in the absolute Weyl group W(G,T), as in Proposition 1.1.13; affects a stated result.
- **Error** in KMPS at §1.3.15, printed p.20 (KMPS line 911): the source says the ordinary class exists for the inner form without an extra existence hypothesis; it should be conditional for general inner forms, with quasi-splitness a sufficient existence hypothesis; affects a stated result.
- **Misprint** in KZ at §2.2.2, printed p.9 (KZ line 408): the source says the final conjugacy factor is σ(w); it should be σ(u), where u is the varying conjugator; affects a stated result.
- **Misprint** in KZ at §2.2.3, printed p.10 (KZ line 426): the source says cocharacter dominance uses positive roots; it should be positive coroots; affects a stated result.
- **Error** in HK22 at proof of Lemma 2.9, printed p.8, arXiv v5 (HK22 line 357): the source says the effective over-lattice bound depends only on the Newton polygon; it should be allowed to depend on the initial Frobenius denominator, with bound d(h−1) as in Zink's argument; affects the proof.
- **Gap** in HK22 at proof of Theorem 2.11, printed p.9, arXiv v5 (HK22 line 423): the source says a local section for the ambient GL(H) action yields the required tensor-preserving lift; it should be justified by the actual automorphism-pair orbit and its smooth stabilizer, retaining the line automorphism; affects the proof.
- **Misprint** in GIZ26 at Theorem 6.8, printed p.41, arXiv v3 (GIZ26 line 1665): the source says the stratum stabilizer is G_b(ℚ_p) for general local coefficient field E; it should be G_b(E), including in equal characteristic; affects a stated result.


