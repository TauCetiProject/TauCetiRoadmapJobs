# Review of EnriquesSurfaces (pull request #1286 at b4b4377)

**Verdict:** needs changes

AI-assisted independent review. Four P1 findings and two P2 findings block acceptance. The worker's gate also fails. No pull-request file was changed.

## R01 (P1) — Break the reciprocal K3 supplier contract

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:198`, also lines 26, 210 and 248: “the actual markings and discriminant anti-isometry γ of K3K7”.

**Claim:** K3Surfaces supplies the canonical-cover adapter to E6, while its K7.C consumes E1's numerical-lattice theorem.

**Witness:** `TauCetiRoadmap/K3Surfaces/README.md:130` at the supplied open head explicitly consumes Enriques E1; line 144 explicitly sends K7 back to Enriques E6. Thus the roadmap edges are EnriquesSurfaces → K3Surfaces → EnriquesSurfaces.

**Repair:** Move the Enriques-specific canonical-cover adapter and descent of K7.C into this roadmap, downstream of E1. Consume only the independent K3 results K0–K6 and K7.A–B. Record that ownership move in both contracts. The repaired dependency graph then has only K3Surfaces → EnriquesSurfaces; the finer phase order does not by itself satisfy the required single direction between roadmaps. This is a semantic cycle missed by the mechanical checker below.

## R02 (P1) — The polarized algebraization supplier is absent on main

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:46`: “Use the polarized-system algebraization of SchemeAndStackFoundations4.10A”.

**Claim:** The cited supplier constructs a projective scheme from the formal polarized lifting system.

**Witness:** Main `TauCetiRoadmap/SchemeAndStackFoundations/README.md:5504` explicitly excludes algebraization of polarized adic systems. Main has no §4.10A; that addition is in the supplied revision, beginning at line 5403.

**Repair:** Declare the precise missing polarized-system algebraization as a supplier gap, with the same slug in the package plan and README, or give it an eligible Part II owner. The dependency cannot be supplied by an open revision of an existing roadmap. Check the contract on the actual compatible smooth polarized W(k)/pⁿ system: existence of coherent sheaves on an already algebraized scheme does not construct that scheme.

## R03 (P1) — RootSystems 3G is not an eligible supplied result

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:149`, and line 25: “Consume native Coxeter.Geometric and RootSystems3G to prove their faithful comparison”.

**Claim:** Generic faithfulness is supplied by RootSystems §3G.

**Witness:** Main `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:275` gives abstract exchange/Matsumoto; line 296 begins finite-root chambers. It has no §3G. The supplied revision adds §3G at line 297 and faithfulness at line 366.

**Repair:** Register generic geometric-representation faithfulness as a precise gap or eligible Part II contract, consuming the already pinned geometric representation. Do not replace it by pairwise reflection orders or the finite-root chamber theorem. T246's Gram has determinant −4 and signature (1,9), so that finite positive-definite theorem still does not apply after the repair.

## R04 (P1) — The integral exponential comparison has the same supplier drift

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:66`: “ComplexKahlerGeometry K4.P's exponential sequence and integral Chern comparison”.

**Claim:** This supplies Pic(S) ≃ H²(S_an,ℤ) when H¹(O)=H²(O)=0.

**Witness:** Main `TauCetiRoadmap/ComplexKahlerGeometry/README.md:444` starts K4's bundle/connection theory and has no K4.P. The supplied revision adds K4.P at line 574, including the vanishing specialization at line 630.

**Repair:** Declare the missing integral exponential/Picard comparison with a precise gap or eligible Part II owner. Chern connections or rational Hodge decomposition alone do not supply the integral comparison. Test it on the canonical bundle: c₁(K) must retain its nonzero order-two class, although its rational class is zero.

## R05 (P2) — State the available reduction headline

**Location:** `TauCetiRoadmap/EnriquesSurfaces/Suggested.lean:1–11` and `TauCetiRoadmap/EnriquesSurfaces/README.md:252`: “illustrative and nonexhaustive”.

**Claim:** The imports and coordinate API serve as the acceptance test, without stating the deep reduction-image result or identifying each unavailable geometric headline.

**Witness:** A scratch theorem elaborates with `t246.Group`, `Module.End (ZMod 2) (Fin 10 → ZMod 2)`, the actual reflection formula, and quadratic-preserving linear equivalences fixing the polar radical. It states precisely the full reduction image.

**Repair:** Put that E5 headline in `Suggested.lean`, with the few real definitions of its quadratic/polar forms and generators. Its action must be tied to the simple reflections, as in the tested signature below. Name each unavailable geometric headline and its missing carrier in the module docstring. Neither a list of imports nor the determinant and root-pairing Checks substitutes for it. The witness G(e₈)=e₈+u distinguishes the full image from Sp₈ alone.

## R06 (P2) — Reuse the earlier Enriques predicate and invariant theorem

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:9` and line 68: “Noether's formula and Gauss–Bonnet give b₂=10”.

**Claim:** This roadmap independently develops the surface convention and the b₁/b₂ invariant theorem without naming their existing roadmap owner.

**Witness:** `TauCetiRoadmap/WeilConjectures/README.md:1752–1775`, WC.7, already specifies the Enriques predicate, field-extension invariance, projectivity, and b₁=0, b₂=ρ=10, including characteristic two. WeilConjectures precedes this roadmap in the merge order.

**Repair:** Cite WC.7 for that predicate and those invariants. Keep the characteristic-not-two equivalence with the stated h¹/canonical-bundle conditions as an adapter, and keep the new integral Picard, torsion, pairing and specialization results. K3 has χ(O)=2, an abelian surface has χ(O)=0, and this Enriques domain has χ(O)=1; these controls distinguish the imported predicate without defining a competing one. This is a repairable overlap, not grounds to reject the entire roadmap.

## R07 (P3) — Replace the forbidden Lean imports

**Location:** `TauCetiRoadmap/EnriquesSurfaces/Suggested.lean:1–3`; also the headers of all three companion Lean files.

**Claim:** Suggested imports three roadmap modules; LatticeTargets imports individual Mathlib modules, and ReflectionTargets imports another roadmap module. No file has the required single `import Mathlib` header.

**Witness:** Gate failures are `imports=1` and `no-import-mathlib=1`. The first import is `TauCetiRoadmap.EnriquesSurfaces.LatticeTargets`.

**Repair:** Consolidate the retained acceptance signatures under `import Mathlib`, followed only by used pinned Tau Ceti modules. Apply the same form rule to any retained companion. The scratch signature and headline probes elaborate under exactly such imports, so these imports are not needed for elaboration. Add the required module/namespace/layer/declaration documentation.

## R08 (P3) — Replace all fifteen commit-pinned roadmap citations

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:17–26`, 74 and 196.

**Claim:** Supplier links select historical commit snapshots as their authority.

**Witness:** The gate records `blob=15`; for example line 19 links SchemeAndStackFoundations to a commit containing §4.10A rather than main.

**Repair:** Cite the roadmap and section with a repository-relative or main link. Re-resolve each contract at its eligible version; merely changing the URL does not repair R02–R04. On §4.10A this replacement exposes the missing contract, which must then be declared explicitly.

## R09 (P3) — Put the double-coset expression in code or Unicode

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:238`: the expression beginning `H\(W/K)`.

**Claim:** The line uses a LaTeX opening delimiter outside a code span.

**Witness:** Gate failure `latex=1`, line 238. Its mathematical content is a left-orbit/double-coset comparison, not an inline TeX formula.

**Repair:** Write `H \ (W/K)` inside a backticked code span, or use prose. For W=S₃, H=A₃ and K=⟨(12)⟩, both orbit sets have one element; formatting does not change that convention.

## R10 (P3) — Replace the TeX subscript in the quadratic form

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:157`: “Σ_{edges {i,j}}”.

**Claim:** The formula uses TeX-only subscript syntax in prose.

**Witness:** Gate failure `tex=1`, line 157. The intended sum counts each graph edge once.

**Repair:** Use a code span or a prose edge sum. Retain the once-per-edge qualification: q(e₀+e₄)=1, whereas counting both orientations would give 0.

## R11 (P3) — Supply statement-level source locators and bibliography records

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:153–232`, 256–258.

**Claim:** The seeded targets are supported by broad section descriptions, a survey, and an internal “Knot221p89” label, without theorem/page locators or a source manifest.

**Witness:** The actual 1985 announcement starts on printed p. 247, not a locatable published “Knot” page. Martin's relevant family statements are Lemma 5.4, pp. 16–19, and Corollary 5.5, p. 19.

**Repair:** Attach exact locators to individual claims, record each work once in `sources.toml`, and distinguish source statements from proposed new constructions. Use the source audit below; retain the unavailable Chapter X explicitly as uncertified rather than claiming its equivalence relation has been checked. Replace process phrases such as “pending English ChapterX request”, “literal holds”, and “required future proof work” with mathematical scope. No source passage needs copying.

## R12 (P3) — Give each definition its own API and discriminating Checks

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:30–141`, 246–252.

**Claim:** Long construction paragraphs and one final test paragraph provide the required roadmap structure and per-object checks.

**Witness:** The presentation groupoid, Φ, Reye degeneracy scheme and finite-cover algebra have no individual three-Check lists. There are no `*Needs:*` lines or layer-ending Examples/Dependencies sections; Lean names such as `gram_det` never occur in the README.

**Repair:** Reorganize into the required Summary, Scope, Conventions, Exact supplier contracts and numbered layers. Keep each construction's API, at least three discriminating Checks, precise hypotheses/locators and individual dependencies. For the cover algebra, test b=1 (split), b=0 (nonreduced), and characteristic two (excluded from trace splitting). These distinguish constructions that a generic “base change” check cannot. Name retained Lean declarations in the README and remove names for deleted padding.

## R13 (P3) — Delete the coordinate-check and sheaf API padding

**Location:** `TauCetiRoadmap/EnriquesSurfaces/LatticeTargets.lean:76–85`, `SheafTargets.lean:20–22,45–60`, as imported by Suggested.

**Claim:** Determinant/root values and generic scalar/sheaf identities belong in the acceptance test.

**Witness:** README line 250 already asks for det M=−1 and the β₀–β₄ control. `scalar_naturality` is exactly pinned `Scheme.Modules.globalSectionsSmul_naturality`; `baseGlobal` repeats pinned `baseRingToGlobalSections` with an explicit structure morphism.

**Repair:** Delete this padding from `Suggested.lean` and its imported acceptance companions; retain the numerical statements as README Checks and cite the native sheaf API. In particular remove `gram_det`, `beta_pairing`, `r_square`, `r_beta_pairing`, `scalar_naturality` and the non-headline `class_square_eq_one`. Remove definitions used only by deleted API tests; use the native base-ring map. Computations give −1, −2, and the stated 0/1/−2 pairings. All twelve admitted theorems were separately tried with one `simp`; none closed. This finding uses the independent small-value/Check and existing-lemma criteria, not a claim that `simp` proved them.

## R14 (P3) — Remove the computational certificate requirement

**Location:** `TauCetiRoadmap/EnriquesSurfaces/README.md:238`: “Certificates compute the specified finite maps/groups and independently check completeness”.

**Claim:** Implementing and checking computational certificates is a roadmap deliverable.

**Witness:** E7 already asks for the mathematical exhaustive decomposition, representatives, stabilizers and orbit bijection. The extra sentence adds executable computation beyond those theorem statements.

**Repair:** Delete the certificate requirement. Keep the finite-group and geometric classification theorems, explicit stabilizers, and small numerical Checks. The S₃ double-coset example and 34,780 divisibility obstruction below remain valid mathematical tests without a certificate implementation.

## Verified sound

“Sound” here records the inspected hypotheses and computed instances; finite tests do not prove all universal geometric targets. All five review files were read. The check covers the eight seeded targets, the README endpoints, all 42 named Lean declarations, and the anonymous decidability instance. Missing sources and unsupported supplier cuts are separated below.

The worktree is at the requested head. The diff contains only the six files in `TauCetiRoadmap/EnriquesSurfaces/`; no outside-folder change was found. There is no sorry-defined data, `set_option`, empty Prop condition, or admitted example in these four Lean files. Direct `lake env lean` elaboration of Suggested succeeds. A scratch copy with legal imports and `#check @...` for every named declaration also succeeds, with precisely twelve `sorry` warnings. All field, scheme, sheaf, morphism, scalar and section-family binders shown in the definitions survive elaboration; no dropped standing hypothesis was found. No file was changed to obtain this result.

The worker's gate result is:

`set_option=0 blob=15 latex=1 tex=1 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=1 mathlib-subimports=0 no-import-mathlib=1 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 FAIL`

The required dependency command was run and returned exactly:

```text
depcheck: 204 roadmaps, 1460 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. R01 is independently witnessed by the two actual contracts and is not contradicted by this scanner result. The absence of K3Surfaces from this candidate order is not itself a finding.

The headline inventory is: E1's canonical K3 cover, Picard-specialization isomorphism and integral Num ≃ U⊕E₈(−1), including the coefficient comparisons; E2's hyperelliptic classification and resolved double-plane construction; E3's presentation/action-groupoid equivalence; E4's Reye construction and generic parameter locus; E5's faithful Coxeter comparison, the two reduction kernels and quotient; E6's generic nodal automorphism group and rational-curve transitivity; U0–U4's marked-cover/gluing criterion and very-general Aut ≃ W_T237(2); U5's algebraic generic-open comparison; E7's representation bridge and resulting counts. The numerical E5 reduction is statable now. The source-defined E7 carrier is not yet specified, and the geometric surface, canonical-cover, period and presentation-groupoid interfaces are not supplied by these files or found as Enriques carriers at the pins. The module docstring must identify those individual missing interfaces instead of claiming the imported examples exhaust acceptance.

A tested form of the missing E5 headline uses H=(Fin 10 → F₂), the displayed q and its polar b, and says:

```lean
∃ ρ : t246.Group →* Module.End (ZMod 2) H,
  (∀ i x, ρ (t246.toCoxeterSystem.simple i) x =
    x + b x (Pi.single i 1) • Pi.single i 1) ∧
  ∀ g : H ≃ₗ[ZMod 2] H,
    ((∀ x, q (g x) = q x) ∧
      ∀ x, (∀ y, b x y = 0) → g x = x) ↔
    ∃ w, ∀ x, ρ w x = g x
```

This is a schematic excerpt of the elaborated scratch signature: q and b there have their actual finite-sum bodies and H is an abbreviation, not an arbitrary predicate. No admitted map or freestanding assumption fixes the desired image.

The one-tactic probe replaced each of the twelve admissions by `simp`, one at a time within a combined scratch copy. All twelve reported no progress. The existing `scalar_naturality` proof itself supplies the one-library-lemma witness. The proof of `class_square_eq_one` is a three-library-fact class calculation; it is not an Enriques headline. Neither this probe nor successful compilation is evidence of a geometric theorem's truth.

The adversarial tables contain 137 rows: 94 README/source/convention tests and 43 individual Lean declaration/instance tests. “Pass” means the displayed equality, exclusion or invariant was actually recomputed. “Boundary” means the calculation supports a necessary restriction but does not verify the whole construction. “Open” identifies an endpoint that cannot be numerically certified by these tests. Coordinates for f₁,…,f₉,δ are integral; eᵢ denotes a β-coordinate vector only in the mod-two rows. Matrix tests used exact rational elimination, and finite quadratic tests enumerated all 1,024 vectors where indicated.

| Statement or convention | Instances tried | Values on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| Surface/Enriques convention, line 9 | Enriques, K3, abelian surface, blowup | χ(O)=1,2,0 respectively; exceptional curve of blowup has K·E=−1 rather than 0 | Pass distinction; import WC.7, R06 |
| E0 quotient projective convention | h⁰=0,1,3 | empty projective space/no rational map; P⁰; P² respectively | Pass; preserve zero-section exclusion |
| E0 base ideal | section 1, section t on A¹, no sections | ideals (1),(t),(0); base schemes empty,{0},all of A¹ | Pass; add per-object Checks |
| E0 scalar automorphisms | O on proper connected S; disconnected two-point scheme | units k× versus k××k× | Pass proper/geometrically integral restriction |
| E0 normalization/base change | cusp x²=y³, then y=0 | normalized base change k[t]/t²; normalization of reduced base change k | Boundary; arbitrary base change correctly excluded |
| E1a canonical algebra | nontrivial K; trivial square-root line; characteristic 2 | degree 2 and χ(O_cover)=2; trivial line with b=1 splits k×k; char 2 gives k[t]/(t−1)² | Pass connectedness/characteristic controls |
| E1a canonical cohomology | L=K, L=O | h⁰(K)=0, h⁰(O)=1; χ(O)=1−0+0=1 | Pass within Enriques domain |
| E1a numerical Picard kernel | nontrivial numerically trivial L; L=K | χ(L)=1; h⁰(L)+h⁰(K−L)≥1; at K these values are 0+1 | Pass RR/effectivity argument |
| E1a minimality | hypothetical (−1)-curve C | adjunction would give −2=C²+K·C=−1+0=−1 | Pass exclusion |
| E1a evenness | F,G isotropic with F·G=1 | (F+G)²=2; χ(F+G)=1+2/2=2 | Pass parity |
| E1a differential vanishing | étale degree 2 cover; p=3; inseparable double cover | pullback trace composite is 2, nonzero at p=3; at p=2 it is 0 | Boundary; K0.A is required, not Hodge symmetry |
| E1a formal lifting | one-dimensional square-zero ideal I | obstruction H²(T)⊗I=0; line obstruction H²(O)⊗I=0 | Boundary; algebraization still missing, R02 |
| E1b infinitesimal Picard classes | square-zero step | ambiguity H¹(O)⊗I=0; automorphisms H⁰(O)⊗I=I, not 0 | Pass class/isomorphism distinction |
| E1b vertical-divisor independence | uniformizer π of a smooth integral-fibre DVR model | div(π)=special fibre; O(n div π) has Picard class 0 | Pass under stated smoothness/integrality |
| E1b pairing polarization | L=F,M=G, F²=G²=0,F·G=1 | χ(F+G)−χ(F)−χ(G)+χ(O)=2−1−1+1=1=F·G | Pass |
| E1b integral specialization | canonical class and U-block | K has order 2 on each fibre; paired generators have matrix [[0,1],[1,0]] on each side | Boundary; tests integral, not merely rational, comparison |
| E1c Chern comparison | canonical bundle | c₁(K) has order 2; c₁(K)⊗Q=0 | Boundary; R04 supplies missing integral theorem |
| E1c Betti/Noether calculation | complex Enriques | c₂=12χ−K²=12; Euler=1+10+1=12; b₁=b₃=0 | Pass numeric identity; R06 |
| E1c signature/unimodularity | U⊕E₈(−1) | rank 10; signature (1,0,9); det=−1, not merely rank 10 | Pass; classification still required |
| E1c field descent | algebraically closed k of cardinality greater than C | no injection k→C; finitely generated field of definition has finite transcendence degree | Boundary; the README correctly descends first |
| E1d Kummer, ℓ=2 | n=1,2 on a complex Enriques | Pic/2ⁿ has size 2^(10n+1); H²(μ_(2ⁿ)) has size 2^(10n+2); quotient size 2 | Pass Brauer term retained |
| E1d Kummer, odd ℓ | n=1 | Pic/ℓ has size ℓ¹⁰; Br[ℓ]=0; H²(μ_ℓ) size ℓ¹⁰ | Pass; ℓ=p remains excluded |
| E1d inverse system and Tor | constant Z/2 with transition ×2 | every finite term has 2 elements; transition is 0; inverse limit and lim¹ are 0; finite Tor remains Z/2 | Pass distinct mechanisms |
| E1d numerical ℓ-adic comparison | ℓ=2 versus odd ℓ | H²(Z₂(1))=Z₂¹⁰⊕Z/2, free quotient rank 10; odd ℓ has no canonical torsion | Pass torsion quotient |
| E1e normal form | rank-10 even indefinite versus rank-16 definite | U⊕E₈(−1): det −1, signature (1,9); E₈² and D₁₆⁺ share rank/det but differ | Pass indefinite-classification restriction |
| E1f half-fibre | F; full fibre 2F; nodal R | F²=0, h⁰(F)=1, h⁰(2F)=2; R²=−2 | Pass half-fibre/full-fibre distinction |
| E1f Φ | D=2F+G, F·G=1; D=0 | D²=4,D·F=1,Φ=1; D=0 gives 0, excluded by big-nef hypothesis | Pass boundary; missing explicit later bounds need locators |
| E1f reflection reduction | D·R=−1,R²=−2 | s_R(D)=D−R; square D²−2(−1)−2=D²; ample height drops A·R>0 | Pass sign/termination step |
| E2 nonspecial systems | D=nF+G, n=1,2 | D²=2n=2,4; D·F=1 | Pass |
| E2 special systems | D=(n+1)F+R, F·R=1,R²=−2 | D²=2(n+1)−2=2n; D·R=n−1=0,1 for n=1,2 | Pass special boundary |
| E2 moving square four | n=2 and two simple base points | h⁰=3; resolved moving square=4−1−1=2; plane map degree 2 | Boundary; base-scheme theorem needs precise source |
| E2 fixed component | h=2F+R | h²=2,h·R=0; moving part 2F has h⁰=2, not 3 | Pass n=1 exception |
| E2 double-cover algebra | b=1,0 over char≠2 | t²−1 gives two factors; t² gives a nilpotent; trace(1)=2 | Pass; no blanket smoothness |
| E2 canonical/branch formula | A=O(4) on P² | branch degree 2·4=8; K_Y=π*(O(−3+4))=π*O(1) on the Gorenstein cover | Pass; does not give resolution's pg |
| E2 branch blowup | m=0,1,2,3 | A' subtracts 0,0,1,1 copies of E; residual branch adds 0,1,0,1 copies of E | Pass 2A'=B' |
| E2 crossing of odd branches | b=xy | double cover z²=xy is singular at 0; after m=2 blowup exceptional multiplicity is 0 | Pass required crossing resolution |
| E2 branch construction versus arbitrary octic | smooth generic octic | χ(O_Y)=1+χ(O_P²(−4))=1+3=4, not Enriques χ=1 | Pass need for specified singular branch family |
| E3 H₄ carrier | 2F+G versus 2F+R | squares 4 and 2; only first can belong to H₄ | Pass |
| E3 presentation arrows | identity surface, scalar θ=λ; λ≠0 | induced PGL map=1; sheaf arrow=λ, not necessarily 1 | Pass scalar rigidification |
| E3 inverse-pullback action | a=(12), b=(23) on a three-element marking set | (ab)⁻¹=b⁻¹a⁻¹=(132); direct pullback order reverses | Pass nonabelian convention |
| E3 groupoid equivalence | same L with two frames; stabilizer of L | frames differ by PGL₃; after scalar/frame quotient, isotropy is Aut(S)_L rather than 1 | Boundary; full-faithfulness proof not numerically certified |
| E3 resolution comparison | one extra point blowup | Picard rank increases by 1; it cannot be an isomorphic canonical core | Pass need for separate localization |
| E3 double-cover class versus groupoid | t²=b and t²=c²b | t↦ct gives isomorphic covers; automorphism t↦−t has order 2 | Pass deck μ₂ retained |
| E3 ample degree-two ordered pair | h=F+G | h²=2; (2F+G)²=(F+2G)²=4; difference F−G has square −2, hence is nonzero | Pass two ordered presentations distinct numerically |
| E3 special boundary | h=2F+R | h²=2; h·R=2−2=0 | Pass nonample control |
| E3 Picard lifts | trivial versus swapping stabilizer on {L,L+K} | two lift-orbits versus one | Pass no universal factor 2 |
| E4 web/degeneracy locus | ranks 4→3, threshold 2 | expected codimension (4−2)(3−2)=2; Gr(2,4) dimension 4 gives surface dimension 2 | Boundary; expected dimension alone not proof |
| E4 parameter quotient | Gr(4,10), PGL₄ | dimensions 4·6=24 and 4²−1=15; difference 9 only with zero-dimensional stabilizers | Pass prerequisite distinction |
| E4 bad web | diagonal web ⟨x₀²,x₁²,x₂²,x₃²⟩ | determinant is t₀t₁t₂t₃, a reducible union of four planes, not a ten-node quartic | Pass necessity of a specified good locus |
| E4 recognition criterion | source's nodal degree-10 hypothesis | degree=10; forbidden rational-curve degrees 1,2,3; degree 4 allowed | Boundary; source Proposition 2, p.248 |
| E5 isotropic ten-sequence | all ten fᵢ in the displayed basis | fᵢ²=0; off-diagonal pairings=1; sum fᵢ=3δ; δ²=10 | Pass all 100 pairings |
| E5 Reye lattice | β change matrix versus M | det(change)=2; det(R)=2²(−1)=−4; index=2 | Pass distinction |
| E5 parity kernel | f₁, β₀,…,β₉ | r·f₁=1; r·βᵢ=0 for i<9 and −2 for i=9; kernel index=2 | Pass both inclusions by same index |
| E5 all-root versus simple-root group | extra root r | r²=−2, r·β₉=−2; product s_r s_β₉ has matrix [[3,2],[−2,−1]] on their span | Pass infinite-order parabolic control |
| E5 B and K | longest-element projection formulas | both integral; both reduce to the identity 10×10 matrix | Pass reduction; normal-generation theorem remains source-dependent |
| E5 G | E₇ longest element times s₉ | mod-two off-diagonal entries exactly (0,8),(5,8),(7,8),(9,8), all 1 | Pass rightmost-first convention |
| Reduction quadratic q | 0,e₀,e₄,e₀+e₄ | q=0,1,1,1; polar b(e₀,e₄)=1 | Pass sign/half-norm normalization |
| Reduction polar radical | enumerate F₂¹⁰ | radical={0,u,z,u+z}; coordinate masks 0,673,682,11; q=0,0,1,1 | Pass all 1,024 vectors |
| Non-descent of q | x=0 and x=z in same radical coset | q(0)=0≠1=q(z) | Pass; quotient has b, not descended q |
| Complement V | V=span(e₂,…,e₉) | dimension 8; rad(V)=0; q_V has 136 zeros and 120 ones | Pass complement example |
| Shears T_ℓ | ℓ=x₈, x=e₈,z | T(e₈)=e₈+u; T(z)=z; q values remain 1 and 1 | Pass |
| Section S_g | every symplectic transvection on this V | 255×256×4 evaluations preserve q; for t=e₂+e₃+e₅, v=e₆, q(t)=0,b(v,t)=1 and correction=1 | Pass genuine correction term |
| Semidirect law | any two symplectic g,h | corrections add q(ghv)+q(hv)+q(hv)+q(v)=q(ghv)+q(v) | Pass; middle terms cancel in F₂ |
| Exhaustiveness/pointwise radical | v↦gv+ℓ(v)u+c(v)z | q-preservation forces c(v)=q_V(gv)+q_V(v); ℓ arbitrary, 2⁸ possibilities | Pass; full O(q) is larger, see source issue |
| G shear/kernel distinction | all H; in particular e₈ | G(e₈)=mask 929 versus e₈=256; same V-quotient class, different H-vector | Pass all 1,024 values |
| E5 quotient orders | Sp₈(F₂), V* | 47,377,612,800=2¹⁶3⁵5²7·17; shear order 256 | Pass arithmetic; full surjectivity not proved by order |
| E6 tame condition | p=3,17,19 | group order mod 3=0, mod 17=0; 19 does not divide it | Pass source range; no freeness inferred just from invertibility |
| E6 automorphism endpoint | W(2) versus Wbar(2) | quotient Wbar(2)/W(2) has 256 elements; G in latter, outside former | Boundary supports announced correct kernel |
| E6 curve transitivity | two effective nodal curves | each has square −2; lattice equality of squares gives no surface automorphism | Open geometric orbit theorem; source Theorem 3 is an announcement |
| U0 pullback | hyperbolic e,f with e·f=1 | π*e·π*f=2 versus e·f=1 | Pass degree-two scaling |
| U0 invariant/anti-invariant lattices | deck (−1,swap,swap) | ranks 10,12; signatures (1,9),(2,10); discriminant sizes both 1,024 | Pass independent lattice model |
| U0 primitive gluing | S₊⊕T inside Λ | determinant product=2²⁰; index=2¹⁰; overlattice determinant=1 | Pass; ranks alone insufficient |
| U1 root exclusion | any x∈M(2) | x² divisible by 4; −2 is not divisible by 4 | Pass NS=S₊ implies no nodal lift classes |
| U1 very-general qualifier | ±id; nonscalar a; zero period | ±id fix every line; a has proper eigenspaces; zero has (ω,barω)=0, excluded | Boundary; Baire is complex-analytic, not a Zariski-open proof |
| U1 separate Hodge-stabilizer condition | rank-10 NS and possible extra isometry | NS rank=10 does not set the integer order of a Hodge isometry to 1 or 2 | Open source verification; retain explicit stabilizer condition |
| U2 discriminant sign | A_T exponent 2 | −x=x on every one of 1,024 discriminant elements | Pass both ±id induce identity |
| U2 gluing sufficiency | g≡1 mod2,h=id | γḡ=γ=id·γ | Pass lattice compatibility; Torelli still needed |
| U2 numerical kernel | (id_S₊,id_T),(id_S₊,−id_T) | two cover actions=id,deck; quotient by deck has one element | Pass very-general kernel computation |
| U2 orthogonal versus symplectic | hyperbolic e,f over F₂, e↦e+f | b unchanged but q(e)=0, q(e+f)=1 | Pass q-preservation is essential |
| U3 T237 basis | α₀=δ−f₁−f₂−f₃ | determinant change=−1; det Gram=−1; α₀·α₃=1, α₀·α₄=0 | Pass distinct from β basis |
| U3 positive component | −id_M | isometry with mod-two identity, but sends ample h to −h | Pass O⁺ restriction; generation/presentation remains a theorem |
| U4 full lift criterion | g=−id_M,h=id_T | discriminant compatibility holds; glued image of ample h is −h, so cone condition fails | Pass necessary cone test; no spurious lift |
| U4 compatible-pair quotient | actual deck pair | restriction to Num=id; anti-invariant action=−id; quotient removes exactly this order-two ambiguity | Pass; special Hodge stabilizers retained |
| U5 bielliptic involution | decomposition U⊕E₈(−1) | action diag(id,−id); mod-two action=id on rank 10 | Pass congruence inclusion |
| U5 527 classes | split quadratic form on F₂¹⁰ | 528 isotropic vectors including 0; 528−1=527 | Pass exhaustive enumeration |
| U5 infinitesimal comparison | dual numbers in p=3 and char 0 | 2d=3d=0 gives d=0; char 0 multiplication by 2 is invertible | Pass kernel argument; char 2 excluded from this argument |
| U5 local-family dimensions | universal ten-dimensional base | exceptional dimensions ≤5 and ≤2 give codimensions ≥5 and ≥8 | Pass source bounds; require universal/étale local family |
| U5 extra automorphisms | quotient orders 1,2,4 | generic quotient size=1; exceptional strata begin at 2 and 4 | Boundary; source Theorem A/Corollary 5.5 |
| Source boundary / E7 counts | 34,780; 136 | 34,780=2²·5·37·47; Sp₈ order/34,780=2,368,880,640/1,739, not an integer; 136=2³(2⁴+1) | Pass obstruction, not a count of presentations |
| E7 double cosets, nonabelian | W=S₃,H=A₃,K=C₂; then K=1 | H\(W/K) sizes 1,2; Q/image(K) sizes 1,2 | Pass both cases |
| E7 double cosets, cyclic/trivial | W=C₄,H=C₂,K=1; W=1 | sizes 2=2; 1=1 | Pass degeneracies |
| E7 normality | H=C₂ in S₃ | three cosets, but H is not normal; W/H has no induced quotient group | Pass exclusion |
| E7 ordinary classes versus mass | one object with μ₂ automorphisms | isoclass count=1; stack mass=1/2 | Pass counting convention |
| E7 source relation/Coble moves | ordered 2F+G and F+2G; coordinate changes | classes differ by nonzero F−G; a nonlinear Cremona map has degree >1 versus PGL degree 1 | Open source equivalence; no count certified |

The following rows cover the Lean declarations individually, including the definitions underlying the preceding tests.

| Lean declaration | Instances tried | Computed values / both sides | Result; change |
| --- | --- | --- | --- |
| Index | 0,9,10 | 0 and 9 admitted; 10 is not a Fin 10 element | Pass no out-of-range case |
| Ambient | zero, first basis vector | ten rational coordinates; zero vector and (1,0,…,0) distinct | Pass |
| gram | (0,0),(0,1),(0,9),(9,9) | 0,1,3,10 | Pass |
| gram_isSymm | all 100 entries | Gᵢⱼ−Gⱼᵢ=0 in every entry | Pass |
| model | f₁,δ | native integer span; squares 0,10 | Pass real native lattice |
| modelBasis | indices 0,9 | ambient coordinates (1,0,…,0),(0,…,0,1) | Pass |
| vector | 0 and coordinate unit at 0 | outputs 0 and f₁ | Pass |
| f10Coordinates | all coordinates | (−1,…,−1,3); f₁₀²=0 | Pass |
| betaCoordinates | i=0,1,9 | β₀=(−1,−1,−1,−1,0,…,0,1); β₁=e₀−e₁; β₉=(1,…,1,2,−3) | Pass natural subtraction guarded by i≠0 |
| rCoordinates | all coordinates | (2,2,2,2,2,2,2,2,2,−5) | Pass |
| beta | i=0,9 | ambient values exactly the preceding integral vectors | Pass |
| r | f₁₀ expression | δ−2f₁₀=(2,…,2,−5) | Pass |
| parity | 0,f₁,β₉ | 0,1,0 in F₂ | Pass excludes zero functional |
| reyeCarrier | f₁,2f₁,β₀ | membership false,true,true | Pass genuine index-two submodule |
| betaSpan | same vectors | membership false,true,true; determinant index 2 | Pass independently specified span |
| simpleReflection | βᵢ, orthogonal βⱼ, adjacent βⱼ | −βᵢ, βⱼ, βⱼ+βᵢ | Pass plus-sign convention |
| adjacent | (0,4),(0,3),(8,9),(9,9) | true,false,true,false | Pass |
| anonymous Decidable instance | same pairs | decision results true,false,true,false | Pass inferred from explicit predicate |
| gram_det | full 10×10 matrix | determinant −1 equals asserted −1 | Pass calculation; R13 padding |
| beta_pairing | all 100 entries | diagonal −2; 18 oriented adjacent entries 1; other entries 0 | Pass; R13 padding |
| r_square | r | −2=−2 | Pass; R13 padding |
| r_beta_pairing | all ten βᵢ | nine zeros and last entry −2 | Pass; R13 padding |
| betaSpan_eq_reyeCarrier | determinant and parity | both index 2; β span lies in kernel; equality follows | Pass no inclusion-only shortcut |
| parity_surjective | 0,f₁ | outputs 0,1 exhaust F₂ | Pass |
| simpleReflection_involutive | all ten integer matrices | each square is I₁₀ | Pass |
| simpleReflection_isometry | all ten integer matrices | each sᵀGs=G entrywise | Pass |
| simpleReflection_preserves_parity | all ten integer matrices | row rᵀG(s−I) has all entries even | Pass |
| t246Entries | diagonal, adjacent, nonadjacent | entries 1,3,2 | Pass |
| t246 | all pairs | symmetric matrix, diagonal 1; off-diagonal 2 or 3 | Pass |
| realRoot | i=0,9 | same integral coordinate vectors in R¹⁰ | Pass |
| rootMap | single i 1, zero | βᵢ,0; determinant 2 | Pass actual coordinate map |
| realIntersection | β₀,β₀; β₀,β₄ | −2,1 | Pass |
| realReflection | βᵢ; adjacent βⱼ | −βᵢ; βⱼ+βᵢ | Pass |
| rootMap_bijective | full β matrix | det=2≠0 over R; inverse determinant 1/2 | Pass; not a Z-basis assertion |
| rootMap_form | equal, adjacent, distinct orthogonal roots | left=2,−1,0; right=2·1,2·(−1/2),2·0 | Pass factor 2 |
| rootMap_reflection | equal, adjacent, orthogonal basis vectors | both sides give −βᵢ, βⱼ+βᵢ, βⱼ | Pass linearity covers basis |
| baseGlobal | identity Spec k; a∈k | a maps to a; zero and one remain 0,1 | Pass duplicate native definition; R13 |
| scalarAut | L=O,a=1,−1 in char≠2 | automorphisms id,−id; inverse of a is a⁻¹ | Pass; no claim every scheme has only base scalars |
| sectionEvaluation | n=0; n=1,s=0; n=1,s=1 on Spec k | zero map, zero map, identity map | Pass no false surjectivity |
| SquareTrivialization | O; O(1) on P¹ | O⊗O≅O exists; O(2)≄O by degree 2≠0 | Pass actual isomorphism data |
| RawFixedSurfaceArrow | O,O; O,O(1) on P¹ | automorphisms k×; no arrow in second case, degrees 0≠1 | Pass only a fixed-surface bundle arrow |
| class_square_eq_one | O and canonical K | 1²=1 and [K]²=1 while [K]≠1 | Pass API calculation; R13 |
| scalar_naturality | θ multiplication by 3,a=2 over Q; θ=0 | both composites 6; both composites 0 | Pass pinned theorem; R13 |

The seeded source audit used four legally fetched texts. The actual versions read were Dolgachev arXiv:1412.7744v2, Martin arXiv:1908.00049v1, the 1985 announcement from Dolgachev's institutional author page, and the Peters–Sterk publisher PDF deposited at Eindhoven (CC BY). Preprint page numbers below are those versions' printed numbers; no agreement with a different published numbering is presumed.

| Seeded target | Exact text inspected | Outcome |
| --- | --- | --- |
| The reduction and its two kernels | cossec-dolgachev lines 25–37, 56–72, Theorem 1/Proposition 1, pp.247–248; dolgachev lines 1006–1027, §5/Theorem 7, p.25; peters-sterk lines 920–938, Corollary 5.8/Remark 5.9, p.1621 | Supports the distinct kernels and index 2⁸. The README's full coordinate formulas were independently computed above. Griess's underlying proof was not accessible. |
| U0 actual cover and markings | peters-sterk lines 214–226, §2.1, p.1603; lines 1066–1078, Appendix A.3, p.1625 | Supports degree-two scaling and invariant/anti-invariant lattices over C. Does not supply an algebraic characteristic-p comparison. |
| U1 precise very-general condition | peters-sterk lines 873–882, Proposition 5.5, p.1620; martin lines 46–50, Remark 0.2, p.2 | Confirms the need for a period condition beyond Picard rank. Peters–Sterk's proposition is nodal of Picard rank 11, not the unnodal statement here. Barth–Peters's unnodal primary text remains uncertified. |
| U2 restriction, gluing and descent | peters-sterk lines 1076–1085, Proposition A.6/Corollary A.7, p.1625; martin lines 170–180, Lemma 1.11, pp.4–5 | Verifies lattice gluing and the exponent-two sign test. The geometric conclusion additionally needs the independently named Torelli/cone/descent contracts; Lemma 5.2 must not be imported without its deck-kernel correction. |
| U3 T237 in the same lattice | peters-sterk lines 962–1017, Appendix A.1/Lemma A.2(i), pp.1622–1623 | Supports W(E₁₀)=O⁺(M); explicit α/β coordinates were independently checked. Generic faithfulness/presentation still needs R03's repaired supplier contract. |
| U4 full lift criterion | peters-sterk lines 878–889, equation (25), p.1620; Appendix A.3, p.1625 | Supports centralizer, Hodge and cone conditions with deck quotient. No rank-ten-only argument eliminates all extra Hodge isometries. |
| U5 algebraic generic-open comparison | martin lines 104–118, Theorems 1.2/1.4, p.3; 151–157, Proposition 1.9, p.4; 710–827, Lemma 5.4, pp.16–19; 831–854, Corollary 5.5, p.19 | The family proof is in char≠2, locally finite type and universal at the selected point. The tangent kernel and bounds 10/5/2 match. Using closures, as this README does, avoids the source's unjustified closed-subset inference. |
| Source boundary | cossec-dolgachev lines 42–46, Theorem 2, p.247; bibliography lines 117–120, p.249 | Confirms the announced numbers and referral to Chapter X. Does not identify the intrinsic E3 groupoid with that chapter's relation. This remains not verifiable. |

The legal source pages are [Cossec–Dolgachev's announcement](https://sites.lsa.umich.edu/idolga/wp-content/uploads/sites/1334/2024/08/nodal85.pdf), [Dolgachev's survey](https://arxiv.org/abs/1412.7744v2), [Martin's preprint](https://arxiv.org/abs/1908.00049v1), and [Peters–Sterk's deposited published article](https://pure.tue.nl/ws/portalfiles/portal/149561221/Peters_Sterk2020_Article_OnK3DoublePlanesCoveringEnriqu.pdf). The claims above use their text, not search snippets.

The library audit opened the following pinned declarations by object. Mathlib is at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. There were no Enriques/T246/T237 declarations in the object-name search at those pins; that search is not a claim that every needed abstract carrier is missing.

| Library declaration opened | File and line at the pin | What it supplies / does not supply |
| --- | --- | --- |
| `TauCeti.IntegralLattice` | `TauCeti/LinearAlgebra/IntegralLattice/Basic.lean:63` | Integral finitely generated spanning carrier and symmetric form; nondegeneracy, evenness and unimodularity are not structure fields. |
| `IntegralLattice.integralForm` | same file, line 156 | Integral-valued bilinear form on the actual carrier. |
| `IntegralLattice.ofGramMatrix` | same file, line 261 | Constructs the lattice from a symmetric Gram matrix, without a nondegeneracy assumption. |
| `IntegralLattice.ofGramMatrix.basis` | same file, line 281 | Native integral basis, with ambient comparison at line 287. |
| `IntegralLattice.integralForm_ofGramMatrix_apply` | same file, line 295 | Basis pairings equal the supplied Gram entries. |
| `CoxeterMatrix.geometricForm_single_single` | `TauCeti/GroupTheory/Coxeter/Geometric.lean:131` | Native form entries 1 on the diagonal and −cos(π/m) off it. |
| `CoxeterMatrix.geometricReflection_apply` | same file, line 168 | Reflection v−2B(eᵢ,v)eᵢ, explaining the factor-two comparison. |
| `CoxeterSystem.geometricRepresentation` | same file, line 479 | Representation and generator formulas; existence is not the requested generic injectivity theorem. |
| `Scheme.Modules.baseRingToGlobalSections` | `TauCeti/AlgebraicGeometry/Modules/GlobalSections.lean:199` | Same base-structure-map pullback as `baseGlobal`, over a commutative ring with a specified scheme-over instance. |
| `Scheme.Modules.globalSectionsSmul_naturality` | same file, line 143 | Exactly the generic naturality statement duplicated in SheafTargets. |
| `LineBundleClass.mk_eq_mk_iff`, `mk_tensorProduct`, `mk_trivial` | `TauCeti/AlgebraicGeometry/LineBundle/Class.lean:76`, 119, 129 | Isomorphism classes, tensor law and unit; these are the class-square proof's inputs. |
| `SheafOfModules.freeHomEquiv` | `Mathlib/Algebra/Category/ModuleCat/Sheaf/Free.lean:60` | Maps from the free sheaf are section families. No generation/surjectivity assumption. |
| `LinearMap.BilinForm.IsometryEquiv` | `Mathlib/LinearAlgebra/BilinearForm/IsometryEquiv.lean:39` | Linear equivalence preserving the entire form; rank/determinant alone is not a field. |
| `CoxeterMatrix.Group`, `toCoxeterSystem` | `Mathlib/GroupTheory/Coxeter/Basic.lean:108`, 163 | Native presented group and system used in the successful headline probe. |

The native `Scheme.Modules`, invertible-sheaf and line-bundle-class interfaces are actually used, not empty surrogate structures. The named `Chow.intersectionNumber` is not pinned library code, but it **does** exist as a target at main `TauCetiRoadmap/SchemeAndStackFoundations/README.md:7139`. The citation resolver's single missing-name lead was therefore not promoted to a finding.

Ownership searches used `roadmaps grep` by Enriques/canonical-cover/Reye/quadratic-lattice/Coxeter/base-ring objects, then read the relevant main or supplied-head contracts and the board packages. Current source retrieval for the explicitly cited new suppliers used `roadmaps show`. The older board package for EnriquesSurfacesAndIntegralNonexistence overlaps broadly; its supplied open head instead explicitly identifies itself as an arithmetic Part II and imports this roadmap's characteristic-not-two E0–E1f (lines 3–9, 140–144, 250–254). It is not a second owner of the same geometric core. Its characteristic-two and arithmetic extensions are not suppliers here. FourManifolds §7.3 is a topological example, not the general algebraic construction. K3SurfacesAndSymplecticBoundedness is a later K3 consumer, not a permitted replacement supplier. No fully qualified target-name collision was found in the inspected related roadmaps; generic names were not treated as collisions without their namespaces.

The cross-roadmap contract audit resolved these named objects:

| Citation | Version and verified location | Disposition |
| --- | --- | --- |
| AlgebraicVectorBundles L0A–L1 | main, `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215` onward | Sheaf/module operations, finite-local-freeness and relative Spec; existing owner retained. |
| JacobianChallenge A–C | main, `TauCetiRoadmap/JacobianChallenge/README.md:111`,135,143 | Picard/divisor theory, curve RR/duality and relative cohomology. No surface Num is inferred from these. |
| AlgebraicCurves dictionary | main, `TauCetiRoadmap/AlgebraicCurves/README.md:107`,163,394 onward | Field/curve/scheme conventions and later divisor theory; README should replace its broad dictionary citation with individual targets. |
| SchemeAndStackFoundations | main, §§0.3,1.13–1.23,2.6,2.11,2.19–2.20,4.6–4.13,5.1–5.10; surface comparison at lines 7129–7247 | General owned foundations exist; §4.10A is the missing addition in R02. |
| StableReduction 2/4 | main, `TauCetiRoadmap/StableReduction/README.md:405`,529 | Coherent curve theory, relative Proj, Rees blowups and strict-transform/intersection inputs. Not a generic Enriques lattice. |
| ModularCurves 0G | main, `TauCetiRoadmap/ModularCurves/README.md:427–443` | Relative Grassmannian charts and representability; quotient-subgroup application does not replace its full carrier. |
| AlgebraicModuliForArithmeticGeometry | retrieved new-roadmap head, §§1.1–1.3,2,3.5,7.3,7.6.1–7.6.1a; Picard obstruction at line 9413 | Quotient-convention projective geometry, descent, framed obstruction and section splitting; the latter retains its section hypothesis. |
| ComplexComparisonPartII | retrieved new-roadmap head, C3.2d.1–2 at lines 1957–1991; C6.3–6.6 at 4157–4388 | Proper-flat-finite-presentation/universal-functions assumptions checked. Relative Picard points are not automatically global bundles. |
| IntegralLattices 0–1,5,6A,6C,6F | main, §6A at line 1643 and §6F at 1676 | Indefinite classification and definite models distinguished; discriminant/gluing remains owned there. |
| EtaleCohomologyFoundations | main, F.2.1–2 at 504/522, F.4.1–4 at 959–1021, §0.9 at 1120, F.5–6 at 1179–1229 | Actual twists, finite/adic reduction, cup/trace and Gauss–Bonnet contracts found; invertibility restrictions retained. |
| ComplexKahlerGeometry K4.P | main K4 versus supplied revision | Missing on the eligible version; R04. |
| AlgebraicTopology comparisons/duality | main, `TauCetiRoadmap/AlgebraicTopology/README.md:842`,1515–1557 | Singular-cochain sheaf resolution and local-coefficient Poincaré–Lefschetz/closed-manifold duality found. |
| RootSystems 3G | main Layer 3 versus supplied revision | Generic faithful representation absent from the eligible version; R03. |
| K3Surfaces K0.A,K1–K7 | supplied new-roadmap head, lines 33–44,116–144 | Named early vanishing and later lattice/Torelli contracts exist; reciprocal K7.C ownership is R01. |
| WeilConjectures WC.7 | retrieved new-roadmap head, §7.12, lines 1752–1775 | Earlier predicate/invariant owner omitted by this roadmap; R06. |
| EnriquesSurfacesAndIntegralNonexistence | supplied head, lines 3–9,140–144 | Correct downstream Part II boundary; no upward import requested. |

These resolutions check contract content and hypotheses, not completion of supplier proofs. Main versions were used for revisions of existing roadmaps. All listed `*Needs:*` lines in the target were checked: there are none; the producer table and prose supplier citations were audited instead. Independent search of additional open pull requests without supplied files was not undertaken; no broader ownership clearance is claimed for those unavailable heads.

## Not verifiable

- **Averbukh/Shafarevich, Algebraic surfaces, Chapter X:** neither the first author/chapter query nor the corrected 1964 Steklov volume citation produced a legal text through the sources service. Legal author/institutional/publisher search results did not supply the English chapter. The source service request is recorded under the single key `averbukh`. Thus the special/nonspecial predicate, exact equivalence relation, and the 34,780/136 interpretation are not certified. The announcement's existence and numbers were read directly; that is a different claim.
- **Barth–Peters, Automorphisms of Enriques surfaces (1983), pp.383–411:** the sources service returned `uncertified` at the paywalled publisher. It was not bypassed or added to the missing-text requests. U1's exact unnodal primary-source proof therefore remains unverified, despite the compatible lattice calculations and the secondary references inspected.
- **Griess, Quotients of infinite reflection groups (1983), pp.267–278:** likewise `uncertified` through the sources service. Normal generation and full image surjectivity are announced/referenced in accessible texts; the computations here do not certify that primary proof.
- **Exact locators absent from the README:** most E0–E4 construction statements and the positive-characteristic lift do not give a theorem/page locator to test. The algebraic checks above test necessary cases; they do not certify every birational-resolution, effectivity or nonemptiness proof. R11 requires a statement-level source spine. No copied-source passage was found in the sampled readable texts, but no plagiarism clearance is claimed against inaccessible Chapter X.
- **Geometric endpoints:** finite coordinate arithmetic cannot prove the actual Reye open locus nonempty, rational-curve transitivity, presentation-groupoid full faithfulness, or the source representation counts. These remain specified proof obligations, with the supplier/locator defects identified above. The report does not convert them into accepted theorems on the strength of a `sorry` build.

The source issues below have explicit controls. In Martin's Caveat 1.6, a hyperbolic-plane transvection preserves the alternating pairing but changes q(e)=0 to q(e+f)=1. In Proposition 5.2, in U⊕E₈(−1), choose L=e+f and an E₈ root r: δ_n=r−ne has square −2 and δ_n·L=−n≤L² for every n≥0, so the displayed one-sided bound is infinite. In Corollary 5.5, containment in a closed set bounds the closure's dimension but does not make the contained set closed. For Dolgachev's full quadratic group, (v,a,b)↦(v,a+b,b) preserves q_V(v)+b yet moves z to z+u; it is absent from the pointwise-radical stabilizer. In Peters–Sterk Lemma 5.2, the deck involution belongs to the displayed group, acts as −id on L₋ and id on L₊, and is a nontrivial kernel element. These errors do not refute the README's corrected pointwise-radical, closure, and deck-quotient formulations.

## Source issues

- **Error** in martin at Caveat 1.6, printed p. 3: the source says O⁺(10,F₂) preserves a nondegenerate symmetric bilinear form; it should be the orthogonal group of the split quadratic form, not its alternating polar form; affects a stated result.
- **Error** in martin at proof of Proposition 5.2, printed p. 16: the source says roots with δ·L≤d form a finite set; it should be the positively bounded set 0<δ·L≤d when selecting possible effective roots; affects the proof.
- **Gap** in martin at proof of Corollary 5.5, printed p. 19: the source says containment in a finite closed union makes Z_j closed; it should be containment of its closure in that union, sufficient for the dimension bound; affects the proof.
- **Error** in dolgachev at §5 before Theorem 7, printed p. 25: the source says the full orthogonal group of R/2R is 2⁸⋊Sp₈(F₂); it should be the subgroup fixing the polar radical pointwise; affects a stated result.
- **Error** in peters-sterk at Lemma 5.2, printed p. 1618: the source says restriction to L₊ is an isomorphism on the displayed group; it should be an isomorphism after quotienting by the deck involution; affects a stated result.
- **Misprint** in peters-sterk at proof of Lemma A.5(iii), printed p. 1625: the source says the ten-node diagram is T236; it should be T246; affects the proof.
