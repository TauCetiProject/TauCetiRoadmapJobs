# PKG-SchemeAndStackFoundationsPartII — package report

Deliverables: `packages/SchemeAndStackFoundationsPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.AG"`, as SchemeAndStackFoundations, EnhancedDerivedSheaves and PerfectoidSpaces on main), `sources.toml`, and the `gaps` list of `design/plan.json` (nothing else in it changed; checked by a structural diff with the gaps list removed).

## Headline theorems

| README | Headline | Status |
|---|---|---|
| §1.2 | Gabber's comparison Br_Az(X) ≃ H²_ét(X,𝔾_m)_tors for quasi-compact separated X with an ample invertible sheaf | not statable: no Brauer group of Azumaya algebras on a scheme, no étale sheaf 𝔾_m with cohomology on a scheme at the pins (Mathlib `IsAzumaya` is for algebras over a ring) |
| §6.3 | Finite-ideal derived excision RΓ_I(A,G) ≃ RΓ_I(A′,G) | not statable: no animated rings, no flat cohomology of animated rings, no flat cohomology with supports |
| §7.1 | Fpqc hyperdescent of flat cohomology on animated algebras | not statable: same carriers missing |
| §8.5 | Continuity RΓ(A,G) ≃ Rlim RΓ(A/^L(a^n),G) over derived complete animated A | not statable: same carriers missing |
| §9.2 | Henselian invariance: Hⁿ(R,G)→Hⁿ(R/I,G) onto for n≥1, bijective for n≥2 | **stated**: `flatCohomology_henselian_invariance` |
| §9.3 | Algebraization: Hⁿ(B,G) ≃ Hⁿ(B̂,G), n≥2, for a topological ring with an open henselian nonunital subring whose ideals form a basis at 0 | **stated**: `flatCohomology_algebraization` |
| §10.2 | Adically faithfully flat descent with supports | not statable: same carriers missing |

The four definitions in `Suggested.lean` exist only to make §9.2 and §9.3 statable: `pointsAddFunctor` (abelian points of an object of Tau Ceti's `FiniteLocallyFreeCommAffineGroupSchemeCat`), `coefficientSheaf` (its sheafification on `TauCeti.CommAlgCat.fppfTopology` after a universe lift), `flatCohomology` (Ext from the sheafified free sheaf on a representable, as in Mathlib's `Sheaf.cohomologyPresheafFunctor`), and `IsHenselianNonunitalSubring` (Gabber's criterion, BC22 §2.1.1 / SP Tag 09XI). All have real bodies; none is `sorry`. They are recorded in README §9.0 with API and Checks.

Two facts about the pins drove the carrier choice (verified with scratch files elaborated by `lake env lean`): `HasSheafify (TauCeti.CommAlgCat.fppfTopology R) AddCommGrpCat.{u}` fails to synthesize, while `AddCommGrpCat.{u+1}` succeeds; and no `HasExt` instance is found for any sheaf category of abelian groups on these sites, so `flatCohomology` takes `[HasExt.{w} (Sheaf (CommAlgCat.fppfTopology R) AddCommGrpCat.{u+1})]` as an instance argument, as Mathlib's `Sheaf.H` does. The instance is not vacuous: `CategoryTheory.HasExt.standard` provides one in a large universe. The `Unitization ℤ B′` encoding of the nonunital henselian hypothesis did not elaborate (`RingHomClass` for `Unitization.fstHom` failed to synthesize), so the criterion is stated directly inside B; the README says it is equivalent to the Dorroh formulation.

Assumption recorded in README §9.0 (API bullet 3): on ordinary algebras the universe-lifted Ext groups agree with H^n(A,G) of the animated construction requested by gap:animated-flat-cohomology. Mathematically this is the usual independence of fppf cohomology from the choice of universe or cardinal bound. It is part of that supplier contract and is not proved here.

## Elaboration

`lake env lean packages/SchemeAndStackFoundationsPartII/Suggested.lean`, run from the content checkout. No `TauCeti.*` module needed building.

    Suggested.lean:93:8: warning: declaration uses `sorry`
    Suggested.lean:121:8: warning: declaration uses `sorry`

That is exactly 2 `sorry` warnings and no other message.

Binder check: one scratch file containing `#check @pointsAddFunctor`, `@coefficientSheaf`, `@flatCohomology`, `@flatCohomology_henselian_invariance`, `@IsHenselianNonunitalSubring` and `@flatCohomology_algebraization` was elaborated once. Every elaborated type carries its binders in its own signature: `[CommRing R]`, the `HasExt` instance, `[HenselianRing R I]`, `[UniformSpace B] [IsUniformAddGroup B] [IsTopologicalRing B]`, and the three hypotheses on B′. There are no section variables, so nothing was dropped and nothing changed. The same file proves `IsHenselianNonunitalSubring (⊥ : NonUnitalSubring ℤ)` and `¬ IsHenselianNonunitalSubring (⊤ : NonUnitalSubring ℤ)`. These stay in scratch as tests of the predicate and are not added to `Suggested.lean`.

## Gate and dependency check

Gate, run on a scratch git copy of the three roadmap files placed as `TauCetiRoadmap/SchemeAndStackFoundationsPartII/`:

    gate SchemeAndStackFoundationsPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 dirty=0 source-material=0 OK

(The first run flagged `tex: line 279 … H^{−i}`, which I fixed to `H^(−i)`.)

Dependency check (command as given in the brief):

    depcheck: 56 roadmaps, 653 edges, 0 problem(s)

There is no UPWARD, CYCLE or moved line. The merge order already lists the roadmap at line 200, after its last supplier PotentialModularityAndCompatibleSystems (line 198).

`roadmaps resolve` on the README gives one lead: "PerfectoidQuotientsPartII §Q7.1: no roadmap PerfectoidQuotientsPartII on main or in an open pull request". This is expected. PerfectoidQuotientsPartII is a board package (design at `packages/PerfectoidQuotientsPartII/design/README.md`), sits at merge-order line 64, and is on the brief's list of earlier roadmaps; §§Q7.1–Q7.3 exist there with the content cited. No Lean name was reported missing.

`sources check packages/SchemeAndStackFoundationsPartII/sources.toml`: 0 problem(s). No text is missing, so no `needs-references.toml` was written.

## Duplication removals and ownership

| Removed here | Owner now cited | Evidence |
|---|---|---|
| §0.1 ind-fppf ring maps: definition, factorization criterion, composition, base change, finite products, filtered colimits | PerfectoidQuotientsPartII Layer Q7 §Q7.1, §Q7.3 | `packages/PerfectoidQuotientsPartII/design/README.md` lines 351–440: `IsIndFppf` with the same API and CS24 §2.3.3 locators; its Ownership notes (line 893) say this roadmap imports Q7.1–Q7.3. |
| §0.2 ind-syntomic ring maps | PerfectoidQuotientsPartII §Q7.2, §Q7.3 | same file, Q7.2 (`IsIndSyntomic`), built on Tau Ceti StableReduction Layer 1 syntomic morphisms |
| gap:syntomic-presentations (to SchemeAndStackFoundations §0.8) | no longer needed | its only consumer was the deleted §0.2; dropped from README and `plan.json` gaps (now 29) |
| Tau Ceti `IsStandardSyntomicOfRelativeDimension` contract rows | not used | only §0.2 and the dropped gap used them |
| (kept, cited) §3.7 ordinary case | SchemeAndStackFoundations §2.7 | §3.7 is the animated version; its API bullet and Needs now cite §2.7 for the ordinary comparison. |

Layer 0 now holds only §0.1, the pro-fppf site; its proof and API route through PerfectoidQuotientsPartII §§Q7.1, Q7.3. §5.1, §7.1 and §10.2 cite PerfectoidQuotientsPartII or §5.1 for ind-fppf refinements.

Checked by object, with no other owner found:
- pro-fppf site: only PrismaticCohomologyPartIII §6.0 mentions perfected pro-fppf covers, inside its own proof.
- derived Beauville–Laszlo: other hits are classical glueing in RelativeFarguesFontaine, BunGAndNewtonStrata, PrismaticCohomologyPartIII and others.
- Bégueri resolution: PrismaticCohomologyPartIII, already a contract.
- henselian invariance of flat cohomology: PrismaticCohomologyPartIII line 53 is module descent only.
- Cauchy-net algebraization, finite-ideal excision, animated henselization: no hits.
- Gabber's ample comparison: HeightsRationalPointsAndObstructions §2.6d is quasi-projective over infinite fields (read at its head, README lines 995–1000), so §1.2 is the extension.

Searches used `roadmaps grep` (main plus 354 open heads), the board's packages (PerfectoidQuotientsPartII, PurityForFlatCohomology, ArcTopologyAndDescent) and the pins. No declaration in `Suggested.lean` shares a fully qualified name with another roadmap's declaration.

Notions moved down from later roadmaps: none.

Order observation for the intake. PurityForFlatCohomology (board package, merge-order line 66) precedes this roadmap, but its design consumes it through gaps SF-PII-key-formula, -deformation, -continuity, -excision, -brauer, -tori and -algebraization. This roadmap does not cite PurityForFlatCohomology as a supplier (that would close a cycle) and names it only under Downstream consumers. Several of those PF gaps ask for things outside this accepted design, and I did not add them, because the brief forbids re-planning:
- tori and groups of multiplicative type (C19 §2, Appendix A);
- punctured-spectrum algebraization (Stacks 0DXR, 0EJP);
- Br = Br′ for regular schemes of dimension ≤ 2;
- Br(K^unr) = 0;
- descent of unramified Brauer classes from the completion of a DVR.

Others are owned elsewhere, for example the perfect-base key formula by PrismaticCohomologyPartIII §6.0.

## Review notes applied (REV-DESIGN~2, F01–F05, all P3)

- F01: gap:henselized-formal-fibres is cut down to the regular-fibre clause and cites `henselization_noetherian`. The review placed it in §0.12; on main it is in **§0.13** (SchemeAndStackFoundations README line 1043, inside §0.13, which starts at line 1032), so the README cites §0.13, and §9.2's Needs adds it. gap:char-p-etale-dimension now says it extends §2.11 `artinSchreier_sequence` to the non-constant sheaves R^jε_*G.
- F02: §4.1's route spells out quasi-coherent affine vanishing; SchemeAndStackFoundations §2.6 added to its Needs and the Layer 4 Dependencies.
- F03: Conventions define the weight of a quasi-coherent sheaf on a 𝔾_m-gerbe (L08 §3.1.1, pp.6–8), with a Check.
- F04: (a) §7.2 now quantifies over cosimplicial A^• with A/^Lp→A^•/^Lp an fpqc hypercover. (b) §3.12 uses "étale with C/J≃D/JD" and gains the negative-control Check 𝔽_p[t]→𝔽_(p²)[t]. (c) §3.7 cites p.61. (d) gap:ample-global-generation cites pp.4–5.
- F05: every manifest `locator` now names places in its own work only. C19 is cited for the Brauer conventions (§1.5, p.3) and its unused Lemma 3.1 locator is dropped. SP gains Tag 09XI (SP line 1369), and BC22 gains §2.1.1, p.5 (BC22 lines 214–223).

Other corrections:
- §9.3 now states the uniform structure and the basis condition exactly as `Suggested.lean` does.
- The Downstream consumers paragraph no longer says PurityForFlatCohomology uses ind-syntomic maps from here.
- The ind-fppf worked example is replaced by a pro-fppf one.
- ASCII Z, Q, F_p and G_m are now ℤ, ℚ, 𝔽_p and 𝔾_m.

## Adversarial pass

New or changed statements (computed):

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §0.1 pro-fppf covering condition | Spec(k×k); Spec ℚ→Spec ℤ; {Spec ℤ[1/2], Spec ℤ_(2)} | two components cover, one does not; ℚ=colim ℤ[1/n] pro-ppf, image misses all closed points: not a cover; images D(2)∪{(0),(2)}=Spec ℤ: cover | consistent | Check and Example added |
| §0.1 API: affine pro-fppf singleton ⇔ ind-fppf | ℤ→ℤ[X]; ℤ→ℚ | ℤ[X] faithfully flat fp: both; ℚ flat, not faithful: neither (PQII Q7.3 characterization) | consistent | — |
| Conventions: Gabber criterion | 0⊂ℤ; ℤ⊂ℤ; pℤ_p⊂ℤ_p; 3ℤ_(3)⊂ℤ_(3) | y=0, r=0 works; 2(1+y)=1 has no integer solution; Hensel: f(1)∈pℤ_p, f′(1)≡1, so a root ≡1 exists; quasi-inverse −x/(1+x)∈3ℤ_(3), but T²−T−3 has discriminant 13, not a square: no root | criterion separates henselian from Zariski | Check added; ⊥ and ¬⊤ proved in Lean |
| Conventions: weights on a 𝔾_m-gerbe | B𝔾_m over ℙ¹_ℤ | O with standard character: weight 1; trivial action: weight 0; n+1 weight-one factors: weight n+1 | consistent with §1.1 route | Check added |
| §9.0 `flatCohomology` at n=0 | trivial group; μ_n | Hom(ℤ[h_A]^sh, F)=F(Spec A): 0, μ_n(A) | consistent | — |
| §9.0 degree 1 | α_p on 𝔽_p[t]; μ_p on ℤ_p | coker Frobenius = 𝔽_p[t]/𝔽_p[t^p]∋t≠0, étale would give 0; ℤ_p^×/p=ℤ/p (p odd), (ℤ/2)² from −1, 5 (p=2) | consistent | Checks |
| §9.2 Lean = README | I=0; (ℤ_(p)^h,p), μ_p; (𝔽_p[[t]],(t)), α_p; I=⊤ | identity; H¹ ℤ/p→0 onto, H²=0=0; H¹=𝔽_p[[t]]/𝔽_p[[t]]^p≠0 → 0 onto, H²=0 both; HenselianRing R ⊤ forces ⊤⊆Jac, so R=0 and the statement is trivial | onto at n=1, not injective; bijective at n=2 | Check added (α_p) |
| §9.2 context | — | `[HenselianRing R I]` and `HasExt` are in the signature; no Noetherian or finiteness hypothesis, matching CS24 Cor. 5.6.9 line 3190 | ok | — |
| §9.3 Lean = README | discrete B, B′=0; henselian pair (A,I) with I-coarse topology; (ℤ_(3),3ℤ_(3)) with same topology | B̂=B: identity; B̂=A/I: recovers §9.2 for n≥2 (CS24 Ex. 5.6.11, line 3219); excluded by the criterion, and there H²(ℤ_(3),μ_3) ⊇ Br(ℤ_(3))[3] ∋ class with invariants 1/3 at 2, −1/3 at 5 (≠0) while H²(𝔽_3,μ_3)=0 | hypothesis needed and correct | negative-control Check |
| §9.3 carrier generality | indiscrete topology, B′=B | B′ henselian forces B=0 (x=−1: (1−1)(1+y)=0≠1), so nothing is asserted beyond the source; `IsUniformAddGroup` pins the uniformity to the additive-group one, which is the source's completion (BC22 line 476) | ok | — |
| §9.3 basis condition | B′ open, J=B′ | "every neighbourhood of 0 contains an open B′-ideal" ⇔ "basis of 0 of B′-ideals" (open subgroups are neighbourhoods) | equivalent | wording |
| §3.12 étale-neighbourhood hypothesis | ℤ→ℤ[1/(1+p)], J=(p); 𝔽_p[t]→𝔽_(p²)[t], J=(t) | 𝔽_p≅𝔽_p: applies; homeomorphic loci but 𝔽_p≠𝔽_(p²): excluded | ok | F04(b) |
| §7.2 hyperdescent quantifier | 𝔽_p identity; ℤ_p→𝔽_p | own p-henselization, H¹(ℤ/p)=𝔽_p kept; 𝔽_p⊗^L_{ℤ_p}𝔽_p has Tor₁=𝔽_p, not flat: excluded | ok | F04(a) |
| §4.1 route | ℤ/p, μ_p over 𝔽_p | M=𝔽_p: V−1=0, fibre H⁰=H¹=𝔽_p, H²=0 by affine QC vanishing; μ_p: V−1=−1, 0 | ok | F02 Needs |
| §5.1 "ind-fppf R̃" (word "faithfully flat" dropped) | R≠0 | ind-fppf implies faithfully flat (PQII Q7.1), so R̃≠0 | unchanged meaning | — |
| gap:henselized-formal-fibres | ℤ_(p)^h, I=(p) | Noetherian and ℤ_(p)^h→ℤ_p faithfully flat by §0.13; generic fibre separable over ℚ: regular | only the regular-fibre clause remains | F01 |
| gap:char-p-etale-dimension | ℤ/p on 𝔽_p | H¹=𝔽_p, H²=0 (already §2.11); the route needs R^jε_*G | extension stated | F01 |

Statements carried over from the accepted design (recomputed on their README Checks; no change unless noted):

| Statement | Instances | Values | Result |
|---|---|---|---|
| Conventions F,V | ℤ/p, μ_p over 𝔽_p | V=σ⁻¹=id, V−1=0, H⁰=H¹=𝔽_p; V=pσ⁻¹=0, V−1=−1, 0; matches H¹(𝔽_p,μ_p)=𝔽_p^×/p=0 | ✓ |
| Conventions A/^La | ℤ/p², a=p | ker p=coker p=𝔽_p: π₁=π₀=𝔽_p | ✓ |
| Conventions supports | I=(1), (0) | fib(id)=0; fib(RΓ→0)=RΓ | ✓ |
| 1.1 | neutral gerbe on ℙ¹_ℤ; n=2 | rank-one weight-one O; 3 factors weight 3, a weight −2 line gives 1 | ✓ |
| 1.2 | Spec ℝ; ℙ¹_k | M₂(ℝ) class 0, ℍ class 1∈ℤ/2; Br(ℙ¹_k)=Br k=Br′ | ✓ |
| 2.1 | G_a on k⊕k[1]; 𝔾_m discrete | π₁=k; π₀=A^×, π_{>0}=0 | ✓ |
| 2.2 | μ_p/𝔽_p | [𝔽_p→0 𝔽_p], degrees −1,0 (d(x^p−1)=0) | ✓ |
| 2.3 | μ_p/ℤ | [ℤ→p ℤ]; p·id null-homotopic; C[1/p]=0 | ✓ |
| 2.4 | μ_p, 𝔽_p[ε]→𝔽_p | fibre 1+ε𝔽_p; π₀ map 1→𝔽_p not onto: only connective fibre sequence | ✓ |
| 3.1 | k⊕k[1], M=k | π₁A⊗π₀M=k≠π₁M=0: not flat | ✓ |
| 3.2 | ℤ, ℤ_p, ℤ/p | π_*=𝔽_p in degree 0 | ✓ |
| 3.3 | ℤ/4→𝔽₂, M=𝔽₂ | Tor₁=𝔽₂ both sides; ℤ→ℚ kills ℤ/2: excluded | ✓ |
| 3.4 | k⊕k[1]→k | étale π₀, not flat | ✓ |
| 3.5 | 𝔽_p⊕𝔽_p[1] | lift of 𝔽_(p²): π₀=π₁=𝔽_(p²) | ✓ |
| 3.6 | I=0; π₀A henselian | A^h=A | ✓ |
| 3.7 | G_a on k[t], (t), (t²) | H⁰=0, H¹=k[t^±]/k[t] for both | ✓ |
| 3.8 | G_a on k⊕k[1] | τ≤nA=A (n≥1), H^(−1)=k kept | ✓ |
| 3.9 | A_n=τ≤nA; constant tower | Postnikov limit; identity | ✓ |
| 3.10 | μ_p on 𝔽_p⊕𝔽_p[1] | H⁰ kernel 𝔽_p: flf bijective only from degree 1 | ✓ |
| 3.11 | μ_p, 𝔽_p[ε]→𝔽_p | 1+ε not a p-th power: H¹ not injective | ✓ |
| 4.1 | α_p perfect base | Frobenius bijective: 0 | ✓ |
| 5.1 | algebraically closed k; R=0 | split covers, H^{>0}=0 | ✓ |
| 5.2 | ℤ→ℤ_p, a=p | ℤ_p∩ℤ[1/p]=ℤ, ℤ_p+ℤ[1/p]=ℚ_p | ✓ |
| 5.3 | ℤ/p², a=p | π₁ tower transitions p, essentially zero, lim¹=0 | ✓ |
| 5.4 | ℤ_p, μ_p, p=2,3, odd | H¹=(ℤ/2)², ℤ/3, ℤ/p; H²=Br(ℤ_p)[p]=0 | ✓ |
| 5.5 | ℤ_p vs ℤ_p×ℚ_p | p∉Jac(ℤ_p×ℚ_p): not p-henselian, excluded | ✓ |
| 6.1 | 𝔽_p[t^{1/p^∞}]/(t), a=1 | kernel ∋t^{1/p}, both quotients 0 | ✓ |
| 6.2 | ℤ/p²→𝔽_p | Tor₁(𝔽_p,𝔽_p)=𝔽_p: fails | ✓ |
| 6.3 | I=(1); ℤ→ℤ_p | 0=0; 𝔽_p⊗^Lℤ_p=𝔽_p | ✓ |
| 6.4 | ℤ_(p)→ℤ_p | residue 𝔽_p | ✓ |
| 7.1 | A→A×A | split Čech contracts | ✓ |
| 8.1 | ℤ,(p) | Jac(ℤ)=0, not p-complete | ✓ |
| 8.2 | ℤ_p, μ_p; ℂ[[t]] | H²=0 both; Pic=Br=0 | ✓ |
| 8.3 | a=1 | derived 1-complete ⇒ A=0 | ✓ |
| 8.4 | ℤ[[t]], a=t | t∈π₀A, not from ℤ | ✓ |
| 8.5 | empty tuple; ℤ_p, μ_p | constant; lim (ℤ/p^n)^×/p=ℤ/p | ✓ |
| 8.6 | ℤ_p, μ_p | μ_p(ℤ/p^n) transitions eventually 0: lim¹=0 | ✓ |
| 8.7 | 𝔽_p{t} vs 𝔽_p[[t]] | countable vs uncountable unit classes; H²=0 both | ✓ |
| 9.1 | (ℤ_(p)^h,p), F=id | injective; 1 lifts both sides | ✓ |
| 9.4 | R=𝔽_p, μ_p | Br[p]=ℤ/p both sides | ✓ |
| 9.5 | ℤ_(p)^h→ℤ_p, (p) | generic H²(μ_p)=ℤ/p both | ✓ |
| 9.6 | same, U=D(p) | ℤ/p→ℤ/p; no flatness assumed | ✓ |
| 10.1 | 𝔽_p, M=A[1] | reduction A[1] not flat: excluded | ✓ |
| 10.2 | I=(1); empty tuple | 0=0; fpqc hyperdescent | ✓ |
| gap:finite-group-ext | X=0 | Ext¹(0,𝔾_m)=0 | ✓ |
| gap:begueri-resolution | G=1 | H=Q=𝔾_m, δ=id | ✓ |
| gap:brauer-class-injective | M₂(ℝ), ℍ | class 0 is End(ℝ²); ℍ class ≠0 | ✓ |

## Untrusted text

Nothing read during the job asked for a command, a change outside the job, or a credential. The review file opens with an HTML provenance comment and closes with a JSON metadata comment; I treated both as data. PurityForFlatCohomology's design names board issue numbers in its gap texts; I treated those as data too and did not reproduce them.

## Not checked

- Ownership against the open roadmap pull requests was checked with `roadmaps grep` and `roadmaps show` (main plus 354 open heads, index of 2026-10-26T22:43:07Z/23:25:32Z). I did not open the sibling checkouts one by one.
- Illusie, *Complexe cotangent* I; Gabber, LNM 844; HTT/SAG; Moret-Bailly, *Skolem* I–II: not opened. They are used only through CS24, L08 and PotentialModularityAndCompatibleSystems §2.8, as in the accepted design.
