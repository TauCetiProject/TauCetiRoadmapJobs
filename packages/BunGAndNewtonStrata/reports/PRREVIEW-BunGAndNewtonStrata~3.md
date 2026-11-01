# Review of BunGAndNewtonStrata (pull request #1241 at 27690bf)

**Verdict:** accepted

## R01 (P3) — Match the library inventory to the actual pins

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:53`, “Mathlib at `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti at `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`”; also the link at line 48.

**Claim:** These hashes identify the libraries against which the inventory and signatures are checked.

**Witness:** `lake-manifest.json:8` pins Tau Ceti to `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`; line 18 pins Mathlib to `6b7abb3c7686292736be2955bd3eb9ebf63b456a`. Both installed package HEADs agree with the manifest.

**Exact repair:** Restore those two manifest hashes in the inventory and the Mathlib link; do not change the project pins. At those actual pins, `Units.mapEquiv` is at `Mathlib/Algebra/Group/Units/Equiv.lean:39`, and the newly imported cyclic-kernel theorem is at `TauCeti/RepresentationTheory/Coinvariants.lean:179`. Thus this correction preserves the repaired mathematical contract. The sign-action instance still gives range 2ℤ and quotient ℤ/2.

## R02 (P3) — Supply the persistent source records

**Location:** `TauCetiRoadmap/BunGAndNewtonStrata/README.md:1788`, References; absent `TauCetiRoadmap/BunGAndNewtonStrata/sources.toml`.

**Claim:** The bibliography should have the source/version/locator records required by the review contract.

**Witness:** The folder contains README.md, Suggested.lean and metadata.toml only. References now has 39 entries, including Chai00; none has a persistent manifest entry in this folder.

**Exact repair:** Add one record per work, preserving settled identifiers and uncertified statuses, and record the actual fetched versions and locators. In particular Chai00 is now legally readable: Lemma 6.2(i) is on printed p.981, and Theorem 6.5 and its proof are on pp.981–982. KMPS's corrected locators are §1.1.4, p.7 and equation (1.1.2.4), p.6. These pages were opened; the manifest should identify those same texts, without copying them. This carries forward previous R05 as a nonblocking policy note.

## Previous findings

- R01 — repaired: §1.8, lines 404 and 448, imports `Representation.coinvariantsKer_eq_range_of_forall_mem_zpowers`; its repeated API theorem and telescoping proof obligation are deleted.
- R02 — repaired: §2.7 imports DiamondsAndVStacks D3.10 and keeps first-countable triviality; §2.21 imports Igusa §3.4 and keeps the CS-to-GS comparison. Both supplier passages supply the stated results.
- R03 — repaired: lines 1711–1725 distinguish the positive-period Frobenius norm relation from decency and add the half-slope example: period one fails integrality, period two satisfies decency.
- R04 — repaired: §1.14 cites KMPS §1.1.4, p.7; §1.36 cites equation (1.1.2.4), p.6; §1.25 and References identify Chai00 with the correct printed pages, verified from the primary text.
- R05 — not repaired: sources.toml remains absent; the 39 bibliography entries have no persistent source records. This remains P3, recorded as this report's R02.

## Verified sound

🤖 AI review by Codex. This is an **incremental re-review of 68 changed lines since 3c00bed**, not a repeated full review. All five previous findings were accounted for. The changed passages and their immediate uses were read, including the norm/decency conventions, §1.8, §1.14, §1.25 and its ordinary/straight-class applications, §1.36, §2.7, §2.21, §2.22 and §3.12. There are no remaining P1/P2 findings. The two P3 notes above do not prevent readiness for human final approval.

The normative repository README and CONTRIBUTING were read, with main-branch AlgebraicVectorBundles and ReductiveGroups as shape references. The specified head was verified. The diff against origin/main has no changes outside this roadmap folder, and Suggested.lean is unchanged since the previous review. No PR file was edited. The changed text introduces no computational algorithm, route-specific restriction, replacement roadmap, sorry-defined data or arbitrary predicate stand-in. Section 2.7 retains three discriminating Checks; removing the duplicated §1.8 API result leaves its additional integral descent API intact.

### Gate, order and Lean

The supplied gate at this exact head passes, including `build=0 OK`. The independently rerun gate passes all scanners, dependency, metadata, scope and cleanliness checks. The separately rerun targeted build `lake build TauCetiRoadmap.BunGAndNewtonStrata.Suggested` completes successfully. Direct `lake env lean` elaboration also succeeds. Both have only the two expected sorry warnings, at Suggested.lean lines 100 and 129.

All 77 Needs lines were read. The requested dependency check returns:

```text
depcheck: 205 roadmaps, 1476 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line and no declared supplier gap. The new Igusa dependency points to an earlier supplier. The cyclic-kernel import is from the pin, not another roadmap. The charted-base and small-group qualification in §2.7 matches D3.10 rather than silently enlarging its universe.

A fresh scratch copy with `#check @name` for all seven declarations elaborates. Comparing the expanded signatures with the README shows no lost binder: prime p, Field k, CharP k p and perfectness are retained; the matrix/isocrystal correspondence retains finite dimensionality and its finrank equation; the Newton classification retains algebraic closedness. WittGLNewtonPolygon correctly depends only on n. No signature change is needed.

The README headlines remain the matrix/isocrystal correspondence, Newton–Kottwitz classification and decent representatives, acceptable maximum and ordinary/basic theory, uniformization, family descent, Newton topology, filtered automorphisms, dimensions/components, and chart-image/rank-two extension results. Both statable Witt GL_n headlines are present. The module docstring names the missing reductive-invariant, relative-curve, filtered-functor, v-stack and Banach–Colmez carriers for the other headlines. Nothing in this diff makes a new headline statable. On a scratch copy, neither theorem closes with `rfl`, `simp` or `infer_instance`; the exact pinned rank-one classification also does not match either all-rank quotient theorem. No padding was found.

### Sources checked this round

Five legal primary texts were obtained through the sources service, without editing a PR manifest. Chai's mathematical symbols were also inspected on rendered printed pages 981–982 because the extraction has damaged glyphs. No newly requested text remains unavailable.

| Changed target | Source text and locator read | Verification |
|---|---|---|
| §1.14 | KMPS lines 293–301, §1.1.4, printed p.7 | Conjugation by g transports J_b to J_b′ for b′=gbσ(g)⁻¹; the corrected locator has this precise direction. |
| §1.36 | KMPS lines 271–280, equation (1.1.2.4), printed p.6 | The norm/uniformizer description belongs on p.6; the integral torus invariant is retained. |
| §1.25 | Chai00 lines 1545–1561 and 1598–1701, Lemma 6.2(i), p.981, and Theorem 6.5/proof, pp.981–982 | The cone upper set is determined by edge projections; a reduced edge subset has a least dominant majorant. The bibliography gives the actual printed/PDF pagination. |
| §1.25 and its uses | HN18 lines 280–328, §§2.4–2.5, pp.7–8; theorem at lines 146–150, p.4 | The proof constructs the largest allowed orbit-weight bounds, uses Chai for their majorant, then bounds every acceptable Newton point. Its footnote explicitly uses a σ₀-fixed version; the roadmap owns these root-datum proof inputs, without attributing equal-characteristic local-field generality to Appendix A. |
| §2.7 | FS lines 3492–3501, Remark III.2.5 and Lemma III.2.6, p.92 | First-countable locally profinite H and strictly totally disconnected perfectoid S; compact-open reduction, countable finite quotients, compatible sections. |
| §2.21 | CS17 lines 1566–1633, Proposition 3.5.3 and Lemmas 3.5.4–3.5.5, pp.687–689 | Arbitrary cocharacter and reductive G/ℚ_p; both the Newton inequality and integral κ=−η♭ are supplied. Adding Lemma 3.5.5 identifies the κ part explicitly. |

Of this round's 15 seeded targets, §§1.14 and 1.25 intersect changed passages and received fresh primary-text checks. The other 13 are unchanged; their mathematical rows below are carried from the previous full review: §§1.3, 1.4, 1.11, 1.22, 1.26, 1.26a, 1.30, 1.34, 1.37, 2.8, 2.9, 2.14 and 3.8. The ordinary and straight-representative uses of the corrected §1.25 source were additionally recomputed below. This does not claim fresh locator certification for every unchanged target. No changed locator is marked unverified.

### Pinned declarations and supplier ownership

The actual pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following declaration sites and surrounding hypotheses were opened at those pins:

| File and line | Content checked |
|---|---|
| `TauCeti/RepresentationTheory/Coinvariants.lean:179` | `Representation.coinvariantsKer_eq_range_of_forall_mem_zpowers`, over any commutative ring, for a group generated by g; no finite-group assumption. The generating-set proof is at line 164. |
| `Mathlib/Algebra/Group/Units/Equiv.lean:39` | `Units.mapEquiv`; its value theorem `Units.coe_mapEquiv` is at line 50. |
| `Mathlib/RingTheory/WittVector/Isocrystal.lean:78` | `WittVector.FractionRing.frobenius`, the arithmetic coefficient automorphism. |
| `Mathlib/RingTheory/WittVector/Isocrystal.lean:113` | `WittVector.Isocrystal` supplies a module and semilinear Frobenius equivalence, without finite dimensionality. |
| `Mathlib/RingTheory/WittVector/Isocrystal.lean:138` | `WittVector.IsocrystalEquiv`, with the Frobenius intertwining law. |
| `Mathlib/RingTheory/WittVector/Isocrystal.lean:180` | `WittVector.isocrystal_classification`, explicitly rank one; it is not the all-rank matrix quotient classification. |

Cross-roadmap resolution was rerun against main and the indexed open heads; it reports no unresolved cross-roadmap citations. That rerun did not inspect pinned library names, so the direct pin inspection above and the worker's supplied signature output were used for them. The supplied resolver's `filteredFiberFunctor_split` lead is a roadmap target at HodgeTateAndCanonicalSubgroups §2.14, not a promised existing library theorem.

The repaired contracts and their convention suppliers were opened directly:

| Current supplier file and line | Contract resolved |
|---|---|
| `TauCetiRoadmap/DiamondsAndVStacks/README.md:5442` | D3.10 supplies representability, separated étale open-subgroup quotients, finite étale finite-index transitions and inverse-limit identification. It requires a small group and the D1.11 charted carrier; that section begins at line 3079. |
| `TauCetiRoadmap/IgusaVarietiesAndTorsionConcentration/README.md:1517` | §3.4; line 1521 expressly extends the bound to arbitrary μ on the de Rham Grassmannian. Thus §2.21 need only compare labels. |
| `TauCetiRoadmap/RelativeFarguesFontaine/README.md:2557` | §7.0's tensor–torsor dictionary; §7.2 at line 2619 supplies gluing, and §7.7 at line 2769 supplies lattice modifications, functoriality and base change. |
| `TauCetiRoadmap/GeometricSatakeAndFusion/README.md:352` | GS0 §0.6 supplies Schubert bounds with equal total/component. Sections 0.13 and 0.15, lines 495 and 519, supply cells and minuscule flags; line 521 explicitly compares μ(ξ) with the inverse CS convention. |
| `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:1084` | VS4.0 supplies bundle/Newton geometry over an algebraically closed residue base, full automorphisms and contracting charts; its line-bundle Check gives π^m↦O(−m). |
| `TauCetiRoadmap/HodgeTateAndCanonicalSubgroups/README.md:1010` | §2.14 names `TauCeti.HodgeTate.filteredFiberFunctor_split` with fpqc-local splitting and the filtration parabolic. |
| `TauCetiRoadmap/ReductiveGroupsPartII/README.md:5534` | RG2.4.1 supplies the local Iwahori–Weyl datum. RG2.4.3 at line 5993 retains torsion and distinguishes apartment displacement from the Newton/Kottwitz sign. |

Object searches used `roadmaps grep` over main/open heads and the board's package READMEs/designs, followed by the direct supplier reads above. The three prior duplicate obligations are now imports. The additional abstract twisted-conjugacy descent, first-countable triviality and label comparison remain owned here; none is replaced by a later supplier. The unchanged seven fully qualified Lean names and their earlier ownership audit are carried from the previous report. No new Lean declaration or foundational carrier is introduced in this diff.

### Computed adversarial pass: changed passages and their uses

Write h=(1/2,1/2), o=(1,0), b_h=[[0,π],[1,0]], b_o=diag(π,1). Arithmetic σ fixes π. T₋ is the unramified quadratic norm-one torus, with coinvariants ℤ/2 and rational average zero. All tests involving these matrices work in mixed or equal characteristic, including residue characteristics 2 and 3.

| Statement | Instances tried | Values computed on both sides / excluded model | Result; change |
|---|---|---|---|
| §1.8 integral descent and imported cyclic kernel | A=ℤ, τ=−id and id; trivial A | For −id, (τ−id)(n)=−2n and c=b+2g, so both quotients are ℤ/2; 1 stays nonzero and 2=0. For id, range=0 and quotient=ℤ. For A=0 both are zero. | Pass; duplicate proof/API replaced by the pinned import. |
| §1.9 and norm conventions at lines 1590, 1711–1725 | b_h, r=0,1,2; b=π^m | N₀=1 but 0<0 is false. N₁(b_h)=b_h, so a=b_h satisfies the auxiliary relation while ν=h is nonintegral. N₂=πI=(2ν)(π), 2ν=(1,1). Rank one gives N_r=π^(rm). | Pass; auxiliary relation and decency now separated by a negative control. |
| §1.14 representative transport | g=[[1,1],[0,1]], b_o; g=1 | b′=[[π,1−π],[0,1]], h′=[[a,d−a],[0,d]]. Both h′b′ and b′σ(h′) have upper-right d−aπ for a,d∈E. With g=1, b′=b and h′=h. | Pass; corrected source locator. |
| §1.25 maximum | GL₂ μ=o; split G_m; T₋ | GL₂ acceptable values are h,o, with first sums 1/2≤1 and 1≤1 and total 1; maximum=o. G_m at μ=m has {m}. T₋ at μ=1 has one class κ=1 mod 2 and ν=0. | Pass; Chai source now verified without erasing torsion. |
| §1.25 Chai majorant input | A₂, α₁=(1,−1,0), α₂=(0,1,−1), ω₁∨=(2,−1,−1)/3, ω₂∨=(1,1,−2)/3 | The two edge vectors have coroot coordinates (2/3,1/3),(1/3,2/3). Their least dominant upper bound has coordinates (2/3,2/3), namely (2/3,0,−2/3). Its two edge projections recover ω₁∨,ω₂∨. Choosing only ω₁∨ fails the other bound by (1/3,−1/3). | Pass; both Chai laws discriminate the wrong majorant. Diagram interchange fixes the resulting join, as required for HN's fixed version. |
| §1.26 ordinary use of maximum | GL₂ h,o; quaternion inner form | With μ=o, o=μ is ordinary, h≠μ is not. For D× and geometric μ⁻¹=(0,−1), the hypothetical ordinary transferred slopes (1/2,−1/2) each have multiplicity 1, not divisible by 2. | Pass; no new unconditional ordinary-existence claim. |
| §1.26a straight-class use | GL₂ μ=o | b_h²=πI gives ν=h, κ=1, length 0; b_o gives ν=o, κ=1, translation length 1. Both satisfy the same acceptable bound; the maximum supplies the length-one case. | Pass; the source addition does not change the stated generality or lifting obligations. |
| §1.36 torus norm/average | T₋ and G_m | T₋: average (1−1)/2=0 while κ=1 mod 2≠0. G_m: average m=m and v(π^m)=m. | Pass; corrected page preserves the integral/rational distinction. |
| §2.7 first-countable triviality | H=ℤ_p,S₃,1; empty/nonempty S | lim ℤ/pⁿ=ℤ_p and all chosen zero sections limit to 0. S₃ fibres have 6 points and a chosen section identifies S×S₃. H=1 gives id_S. On nonempty S the ℤ_p sections 0 and 1 differ; on empty S there is one section. | Pass; imports representability and does not assert uniqueness. |
| §2.21 arbitrary-cocharacter comparison | GS μ=(2,0), CS η=(0,−2); GL₂ h,o at μ=o; rank-one ξ | For μ=(2,0), inverse dominant CS label is (2,0), κ=2, and ν=(1,1) has first sum 1≤2. Bundle slopes (−1,−1) satisfy −1≤0 against η and total −2. At μ=o, h,o pass and (2,−1) fails 2≤1. ξ gives O(−1), κ=1 on both conventions. | Pass; nonminuscule test confirms no narrowing while the proof obligation becomes a comparison. |
| §2.22 minuscule image, renamed dependency | GL₂ μ=o; central μ=(1,1) | GL₂ image has h and o, both κ=1; (2,−1) is excluded. Central μ gives the one-point flag and sole slope tuple (1,1), κ=2. | Pass; renamed §2.21 supplies the same bound. |
| §3.12 flag comparison, revised scope | GL₂ μ=o, η=(0,−1) | Both descriptions give κ=1; ⟨2ρ,μ⟩=1, d(h)=0,d(o)=1, hence flag dimensions 1 and 0. | Pass; additional comparison retained, supplied geometry not replanned. |

### Carried-forward adversarial rows

The following unchanged rows retain the previous report's computed values. Each cites that report; they are not represented as fresh full reviews. Together with the recomputed rows above, all 77 numbered targets, the seeded targets and the headlines are covered. Here u=(0,−1), and for GL₂, ⟨2ρ,(x,y)⟩=x−y.

| Statement | Instances tried | Values computed on both sides / excluded model | Result; change |
|---|---|---|---|
| 0.2 Rational filtered tensor torsors | Weights 0 and 3/2, and rank zero | Clearing denominator 2 gives weights 0,3; split P has diagonal Levi and one raising entry. Zero rank gives P=U=L=1. Integer-only indexing would lose the 3/2 threshold. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 0.6 B(G) and matrix correspondence | G=1, G_m, GL₂ half block | B(1) has one class; π and π² have valuations 1 and 2, hence distinct G_m classes; b_h²=πI gives h, not o. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 0.7 Pure inner twisting | Regular right S₃-torsor; trivial group | Aut_{S₃}(S₃) acts by left multiplication: L_a∘L_b=L_ab. Isom(S₃,S₃) has six elements, not one; G=1 gives a singleton torsor. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 0.8 Families | E=ℚ₃, R=𝔽₃ and geometric base | σ_R=id; Xb_h=b_hX gives X=[[a,3d],[d,a]], a commutative quadratic algebra. Geometrically j=diag(i,−i), σ(i)=−i, satisfies jb_h=−b_hj. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 0.9 Classifying stacks | H=1, E×, discrete π^ℤ | Stack dimensions are 0−0=0 and 1−1=0. π^ℤ is infinite discrete and its point atlas is étale of dimension 0; an infinite compact open subgroup has a distribution dualizing sheaf. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.1 Torus lattice resolutions | Split rank-one torus, GL₂→PGL₂ | ℤ²→ℤ, (a,b)↦a−b, has kernel ℤ(1,1). The GL₂ fundamental invariant maps m↦m mod 2 in PGL₂. Rationalizing would kill that target. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.2 Weil crossed modules | G_m and μ₃ over ℚ₃ | G_m gives valuation group ℤ. L has one μ₃-point, L^sep has three; L-point coefficients would miss two roots and the inertia action. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.3 Abelianized B(G) | G_m, SL₂, PGL₂ | Abelianized class groups are ℤ, 0 and ℤ/2 respectively. The last remains nonzero although its rationalization is 0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.4 Slope protorus | Slopes 1/2 and 1/3, zero module | Common denominator 6 gives integer weights 3 and 2; zero representation has empty support. The weight-1/2 character is not an integral G_m weight before clearing denominators. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.5 Dominance | h,o; torus slopes 0,1 | h≤o has first sum 1/2≤1 and equal totals 1=1; o≤h fails. In a torus the coroot cone is {0}, so 0 and 1 are incomparable. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.6 Rational Levi/tori transfer | GL₂ and quaternion D× | An elliptic quadratic torus has split rank 1 and transfers to D×; the split torus has split rank 2 and cannot embed in D× of split rank 1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.7 Galois average | T₋ with λ=1; split G_m | (1−1)/2=0 but [1] in ℤ/2 is nonzero; the split average of 1 is 1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.10 Straight comparison | Type A₁ reflection; translation (1,0) | Reflection has length 1 and Newton 0, so is not straight: length(s²)=0≠2. Translation has length 1 and its rth power length r. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.11 Two-invariant classification | T₋; GL₂ | T₋ has two classes with ν=0 distinguished by κ=0,1 mod 2. Basic GL₂ class κ=1 has h; o has the same κ but different ν. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.12 Decent existence | Half block, rank one, rank zero | Periods 2,1,1 work respectively: b_h²=πI; (π^mσ)^1=π^mσ; on the zero space the basis condition is empty but r=1>0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.13 J_b | b=1,b_o,b_h | J₁=GL₂; J_o=G_m²; J_h=D× with quaternion endomorphism algebra. Their dimensions are 4,2,4, so ordinary matrix centralizers do not model geometric J_h. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.15 Defect | GL₂ ordinary/basic; torus | Split ranks 2−2=0 for o and 2−1=1 for h; a torus and its inner form have equal split rank, defect 0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.16 Finite norm centralizer | δ=diag(1,−1), E of characteristic 0 | At period 1, γ=δ and Z(γ)=G_m²; at period 2, γ=I and Z(γ)=GL₂. Finite norms cannot be silently identified with one fixed algebraic centralizer. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.17 Central Newton map | h and o | For h, 2ν=(1,1) acts by scalar t; adjoint weights all 0. For o, ν=(1,0) centralizes its Levi torus, though not GL₂. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.18 Basicness | h,o; any torus; rank zero | Adjoint slopes for h are 0,0,0,0; for o they are 1,0,0,−1. All torus classes are basic; empty GL₀ adjoint representation gives basicness. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.19 Basic inner forms | Basic h and nonbasic o | J_h=D× is an inner form of GL₂ (dimension 4); J_o has dimension 2 and is not an inner form of GL₂. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.20 Morita/sign | Simple slope 1/3 and 1/2 | Arithmetic Brauer invariants are −1/3=2/3 mod 1 and −1/2=1/2. Endomorphism algebra at slope 1/3 has E-dimension 9; rank-one right module tensors back to the simple object. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.22 Representation detection | GL₂ standard, determinant and dual | For h≤o, standard largest slopes 1/2≤1 and determinant slopes 1=1. Tuples (0,0),(1,1) fail equal-total order; determinant and its dual impose opposite inequalities 0≤2 and 0≥2. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.23 Acceptability | μ=o; h,o,(2,−1) | Totals are all 1; first sums are 1/2,1,2 against 1. Exactly h,o pass. For G=1 there is one acceptable class. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.24 Basic Levi formula | M=G_m²⊂GL₂; M=GL₂ basic | Averaging (1,0) in a torus gives (1,0); averaging κ=1 in basic GL₂ gives (1/2,1/2). Thus the Levi used in the average matters. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.27 Ordinary translation/Levi | GL₂ μ=o | Newton centralizer is G_m² and μ is central in it; translation length is 1 and equals ⟨2ρ,μ⟩=1. For μ=(1,1), both are 0 and Levi is GL₂. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.28 Derived isogeny | GL₂→PGL₂ | h maps to Newton difference 0 and κ=1 mod 2; o maps to difference 1 and κ=1 mod 2. Ordinary equality is preserved; the two source classes are not conflated. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.29 Integral ordinary conjugacy | Ordinary b_o and a nonintegral shear | With g=[[1,π^(−N)],[0,1]], b′ has off-diagonal (1−π)π^(−N); elementary-divisor valuations are (−N,N+1), not (0,1), for N>0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.30 Products/restriction | Product tori; unramified quadratic restriction | Norm of (π,1) is π, valuation 1; the two averaged slopes are (1/2,1/2). Product κ adds coordinatewise; restriction has defect 0=0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.31 Basic Levi fibre | Split torus in GL₂ | h has no split-torus lift, since torus slopes are integers. Basic zero has only (0,0); nonbasic o has allocations (1,0) and (0,1), showing why basicness is retained. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.32 Minuscule GL centralizer | GL₂ μ=o | Ordinary J=G_m² is quasi-split; basic J=D× is not. For μ=(1,1), the only class is central and J=GL₂. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.33 Finiteness/basic member | GL₂ μ=o; G=1 | Acceptable set has two elements, one basic h; for G=1 it has one element, which is basic. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.34 Rational Newton representative | Split GL₂; D× | diag(t,1) realizes o rationally in GL₂. D× has only central rational split cocharacters; a noncentral transferred Newton vector cannot be represented by one of them. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.35 Basic Levi lift | GL₃, M=GL₁×GL₂, μ=(0,1,0) | κ_M(b_M)=(1,0), κ_M(μ)=(0,1). Swapping the first two coordinates gives (1,0); N_G(M)/M is trivial and cannot supply that move. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.37 Torus-special pair | Split/elliptic tori in GL₂ | Split torus cocharacters have integral slopes, so cannot realize h. The unramified quadratic torus averages (1,0) to h with κ=1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.38 Elliptic/basic construction | Quadratic elliptic torus; trivial group | The norm π gives basic GL₂ κ=1 and slopes h; rank-zero group has the singleton basic class and trivial torus. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.39 Transferred centralizer torus | Unramified quadratic torus in D× | The transferred cocharacter averages to h on GL₂ and has central Newton component on D×; determinant/reduced-norm valuation is 1 on both sides. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.40 Abelianization/coinvariants | SL₂,PGL₂,G_m | π₁ coinvariants and abelianized class groups give respectively 0,ℤ/2,ℤ. PGL₂ class 1 would become 0 after rationalization. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.41 Rational centralizer image | GL₂ o and h | For o, (π,1) has determinant valuation 1; for h, a division-algebra uniformizer has reduced-norm valuation 1. Both generate target ℤ. T₋ distinguishes invariant lattice 0 from coinvariants ℤ/2. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.42 Component coset | τ=−id on ℤ | Equation τx−x=d is −2x=d: d=2 gives x=−1; d=1 has no solution. Rational solution −1/2 must not count as integral. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.43 z-extension lifting | GL₂→PGL₂; product with G_m | π₁-map is ℤ→ℤ/2 and lifts odd class by 1. For a product extension, ℤ²→ℤ is projection and the unused coordinate varies freely. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.44 Connected center/adjoint torsors | GL₂ and SL₂ | H¹(E,PGL₂)=ℤ/2 is hit by basic GL₂ κ=0,1; Z(GL₂)=G_m is connected. Z(SL₂)=μ₂ is not a torus and cannot satisfy the connected-torus-center hypothesis. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 1.45 Levi Newton comparison | M=G_m²⊂GL₂, λ=(0,1) | The Levi vector is (0,1); its G-dominant representative is (1,0); difference (1,−1) is a positive coroot. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.1 Curve/base site | Identity, empty cover, two copies | τ⁻¹(S)=X_S, τ⁻¹(∅)=∅, τ⁻¹(S⊔S)=X_S⊔X_S. Relative fibre products preserve the same two components. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.2 Constant torsion cohomology | Zero coefficients; constant A=ℤ/ℓ on a geometric point | Zero sheaf gives Hⁱ=0 on both sides; H⁰ of a constant finite A is A on point and curve. Positive-degree vanishing is the cited constant-coefficient theorem, not a claim about μ_ℓ. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.8 Trivial open locus | G_m; T₋ | The trivial line has degree 0 and automorphisms E×. T₋ has ν=0 for both κ=0,1, but only κ=0 is the trivial class. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.9 Weil/curve diagonalizable comparison | G_m; trivial group | Both H¹ groups are ℤ, and both H⁰ groups are E×. Trivial group gives H⁰=1,H¹=0; μ₃ at p=3 requires three separable-coefficient roots, rather than the single L-rational root. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.10 Constant crossed-module classes | SL₂,PGL₂ | Abelianized H¹ is 0 for SL₂ and ℤ/2 for PGL₂; the nontrivial PGL₂ component stays 1 under the comparison, not 0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.11 Point lifting | Identity base; square-zero smooth lifting | Identity restriction lifts ξ^m to itself. A smooth G_m-point 1 modulo ε lifts to 1+ε, inverse 1−ε when ε²=0. A nilpotent base cannot be replaced by its reduced points. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.12 Uniformization | G_m; GL₂ h,o | ξ^m modifies to O(−m), giving every integer component; minuscule GL₂ modifications give h and o, both determinant degree −1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.13 Central-torus Grassmannian surjectivity | GL₂→PGL₂ | Cocharacter (1,0) lifts the nontrivial PGL₂ component; on components ℤ→ℤ/2 sends 1 to 1. The central G_m is retained, rather than demanding an injective lift. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.14 Bundle surjectivity | GL₂→PGL₂ | Degree −1 lifts the nontrivial component; tensoring by O(1) changes GL₂ degree by 2 and leaves the projective bundle unchanged. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.16 Family κ | Constant half-slope GL₂ and T₋ families | κ(h)=1 at every geometric point. T₋'s two zero-Newton families have κ=0 and κ=1 mod 2, so constant Newton alone does not determine κ. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.17 Family descent | 𝔽₃ half block; slope-zero shear | Arithmetic automorphism algebra is ℚ₃(√3); geometric one is quaternion. A shear of size π^(−N) has denominator N despite fixed Newton tuple (0,0), so a polygon-only bound fails. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.18 Components/sign | ξ,ξ⁻¹; rank zero | Degrees −1,+1 correspond to κ=+1,−1; rank-zero determinant has degree and κ both 0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.19 Period boundary | Points with π≠0, ϖ=0; ξ^m | Such boundary points belong to the enlarged domain and are excluded from the original punctured one. Rank-one modification still has degree −m and κ=m for m=0,1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.20 Newton topology | GL₂ h,o; torus components | h≤o since 1/2≤1 and totals match; E_o is in closure of E_h. Distinct G_m integers have no order relation and no cross-component specialization. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 2.23 Quotient-group class | Projection G_m×H→H | Lifts differing by line O(−m) have central κ differing by m, but their H-lattice is identical. Hence quotient data has one B(H) class and need not fix a B(G_m×H) class. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 3.3 Filtered automorphisms | Weights 0,3/2 and ε²=0 | Raising entry has weight 3/2; gr¹U=0, gr^(3/2)U=G_a. Matrix 1+εE₂₁ has inverse 1−εE₂₁; it disappears on reduced points but not as a group-scheme point. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 3.6 Opposite parabolic | Ordered O⊕O(1) | Lower-left Hom(O,O(1))=H⁰(O(1)) is nonzero; upper-right Hom(O(1),O)=H⁰(O(−1))=0. Reversing the order transposes the occupied block. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 3.8 Torus Picard stack | G_m, T₋, trivial torus | G_m component addition 1+(−1)=0, each stabilizer E×. T₋ has ℤ/2 components with 1+1=0. Trivial torus gives terminal stack. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 3.10 Automorphism-torsor reduction | Basic b; O⊕O(1) | Basic kernel is 1; nonbasic kernel is the positive BC group H⁰(O(1)), nonzero, with the asserted v-local torsor vanishing. Reduction cannot erase the automorphisms as an equivalence of groupoids. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 3.11 Stratum dimension | h,o; G=1 | d(h)=0, d(o)=1, d(1)=0; stack dimensions are 0,−1,0 respectively. Positive chart dimension 1 is not stratum dimension +1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 3.18 Connected components | GL₂,PGL₂,1 | Components are ℤ,ℤ/2,{*}; h and o share the integer 1 component, despite different Newton points. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 4.7 Chart image/down-set | u=(0,−1) and its basic neighbor | d(u)=1; basic (−1/2,−1/2)≤u since −1/2≤0 and totals −1. The chart includes both classes; scalar π contracts the one-dimensional extension direction. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |
| 4.8 Rank-two extension | 0→O→E→O(1)→0 | Zero extension gives O⊕O(1); nonzero extension gives slope-(1/2,1/2) rank-two bundle. Both rank 2, degree 1; Ext¹=H¹(O(−1)) has BC dimension 1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged statement and instance. |

### Unchanged Lean declarations and numerical controls

These rows carry the previous mathematical computations; this round independently reran the elaboration, seven expanded-signature checks and the two padding probes described above.

| Declaration/control | Instances and computed values | Result; change |
|---|---|---|
| wittCoefficientFrobenius | In 𝔽_(p³), choose α with α^p≠α: [α] maps to [α^p], not [α]; applying it three times returns [α]. For n=0 there are no coordinates. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| wittGLIsocrystal | n=1,b=p gives Φ(x)=pσ(x); b=1 gives σ(x); b_h gives Φ²(e_i)=p e_i. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| wittGLSigmaSetoid | σ=id on E-coefficients; noncommuting GL₂ matrices — Action first by g, then h, is conjugation by hg, not gh; the identity action fixes b. For n=1 fixed coefficients, different valuations 1 and 2 cannot be related. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| wittGL_isocrystal_classes | Zero V,n=0; one-dimensional pσ; half block — Zero object corresponds to unique GL₀ class; rank-one pσ gives valuation 1; rank-two half block has slope multiplicity 2. Missing finite dimensionality would invalidate basis selection, but it is explicit. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| WittGLNewtonPolygon | Empty tuple; h; (2/3,1/3) — Empty counts are 0, so every denominator divides 0. For h, 2 divides 2. For (2/3,1/3), each count is 1 and 3 does not divide 1, despite total 1. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| wittGLHasNewtonSlopes | h and r=2; wrong slope tuple (0,0); rank zero — For h, a=(1,1), r·h=(1,1), Φ²=p on both basis vectors. Tuple (0,0) would require Φ^r=1 on a basis, contrary to determinant slope 1. Empty basis works with r=1>0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| wittGL_newton_classification | n=0,1,2 at p=2,3 — Unique rank-zero polygon; rank-one denominators must divide 1, hence integers; h has period 2, and (2/3,1/3) is excluded. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| Numerical prefix sums/order | h,o,empty; truncation at m>n — Prefix sums at m=0,1,2 are (0,1/2,1) and (0,1,1); at m≥2 both remain 1. Empty sums remain 0 at every m. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| Numerical basic/ordinary predicates | h,o,empty — Basic is true,false,true respectively; for bound o, ordinary is false,true; empty bound/empty tuple is ordinary with κ=0. No κ/n division occurs at n=0. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| Units/zero ring and denominators | Local fields; general affine test rings — π and p in the Witt fraction field are nonzero units. Zero ring is excluded by Field assumptions. The empty scheme is allowed for sheaves; its unique rank-zero module supplies the expected terminal restriction. | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |
| Torsion and normalization across suppliers | T₋, ξ, slope 1/3, GL₂ translation — κ=1 mod 2 while ν=0; ξ gives degree −1,κ=1; Brauer invariant −1/3=2/3; RG2.4 displacement (0,−1) converts to Newton (1,0). | Carried from [previous review](PRREVIEW-BunGAndNewtonStrata~2.md); unchanged. |

## Not verifiable

- Unchanged GLX Definition 2.3, p.819, and Lemma 3.16/proof, pp.829–830: carry forward the previous report's settled uncertified/paywalled status. Its claimed printed correction is not certified here; no new request was made.
- Unchanged He21 published-page alignment: the previous review obtained a legal arXiv text but could not certify alignment with the publisher's pagination. This diff does not change those references.
- Chai00 is no longer in this category: the archived institutional copy was legally fetched and its printed pages inspected. All five primary texts needed for the changed passages were read. The 13 unchanged seeded targets retain the previous full review's evidence; this report does not claim a fresh source-by-source audit of them.
- The finite computations and sorry builds test conventions and signatures; they do not prove the general mathematical targets. No approval, merge or external comment was made.

## Source issues

No new source mistake was found in the passages checked this round. The unchanged source errata recorded in the previous full review are not re-certified by this incremental review.

- none
