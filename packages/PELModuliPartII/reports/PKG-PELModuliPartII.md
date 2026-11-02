# PKG-PELModuliPartII — package report

Deliverables: `packages/PELModuliPartII/README.md` (1951 lines), `packages/PELModuliPartII/Suggested.lean`,
`packages/PELModuliPartII/metadata.toml` (`topic = "math.NT"`), `packages/PELModuliPartII/sources.toml`
(`cited_for` recomputed by section), and the `gaps` list of `packages/PELModuliPartII/design/plan.json`
(text edit of one gap, below). Nothing else in `plan.json` changed (`git diff` shows two lines).

## Headline theorems

| Headline | README | Status |
| --- | --- | --- |
| Formal smoothness of the unramified unitary RZ space N_n, relative dimension n−1 | §1.2 | not statable: no formal schemes or `Spf`, no formal smoothness, no p-divisible groups / strict O-modules over a base |
| Regular semistable reduction of the almost self-dual space N¹_n | §2.2 | not statable: same carriers |
| Formal smoothness of the exotic space over every finite K/ℚ_p | §3.4 | not statable: same carriers |
| Two connected components of the exotic space (Bruhat–Tits description) | §3.7 | not statable: same carriers |
| Regular semistable reduction of the Krämer space | §5.7 | not statable: same carriers |
| Finite étaleness of the integral CM moduli at every prime | §6.6 | not statable: no abelian schemes over a base with O_F-action, Kottwitz condition or polarization type, no DM stacks (`TauCeti.AlgebraicGeometry.AbelianVariety` is over a field) |
| Smoothness / quasi-projectivity / projectivity of the localized, exotic and neat models | §§7.2, 7.7, 8.7 | not statable: abelian schemes with PEL structure over a base and their moduli |
| Regular semistable reduction at Krämer and almost self-dual places | §§7.8, 7.9, 8.3 | not statable: same |
| Basic-locus uniformizations | §§9.5–9.10 | not statable: additionally completions as formal schemes and quotients of formal schemes |
| Tate–Dieudonné comparison for basic CM pairs | §9.1 | not statable: the hypothesis (equal slopes of the 𝔭-parts) and the p-adic conclusion need Dieudonné isocrystals of abelian varieties; `WittVector.Isocrystal` is abstract only. The ℓ-adic half alone is false without the hypothesis (README §9.1 Checks), so no stand-in is stated |

Nothing is stated in `Suggested.lean`; its module docstring lists each headline and the missing carrier.
I checked at the pins: no `FormalScheme`/`Spf`/p-divisible group in `mathlib/Mathlib` or `TauCeti/TauCeti`
(grep); Tau Ceti has `TauCeti/Algebra/Module/Torsion/TateModule.lean` (Tate module of an abelian group) and
`AbelianVariety` over a field only.

## Elaboration

`lake env lean packages/PELModuliPartII/Suggested.lean` from the content checkout: exit 0, **0 `sorry`
warnings, no other messages**. The file declares no definitions or theorems, so the `#check @name`
signature comparison had nothing to compare (done vacuously; no changes). Imports: `import Mathlib` only;
no `set_option`.

## Dependency check (verbatim)

    depcheck: 56 roadmaps, 655 edges, 0 problem(s)

Exit 0; no UPWARD, CYCLE or moved line. PELModuliPartII is at line 246 of the merge order, after
IgusaVarietiesAndTorsionConcentration (245), its last supplier. The citation resolver on the new README:
no cross-roadmap citation and no Lean name found nowhere (main 296659f, 354 open heads).

## Corrections and changes against the design

- **Review F01 (applied).** §0.4 now states Mihatsch's comparison C for all hermitian O_L–O_{K₀}-modules
  that have a signature, on locally noetherian schemes over Spf O_L̆ with p locally nilpotent (Mih19
  Definition 3.2 and Theorem 3.3, p. 12; checked at Mih19 line 527–536: no supersingularity). Supersingular
  framings enter only in §0.5. New Check: on a μ-ordinary module of signature (1,n−1) with K₀=K, C is the
  identity. Layer 0 introduction updated.
- **Review F02 (applied).** HLSY23 §10.2 p. 78 (HLSY23 line 4113–4117: regular semistable asserted with
  no unramifiedness hypothesis) and LL22 §4.5 p. 66 (LL22 line 3344–3346: "smooth projective" with a
  reference to RSZ20 Theorem 4.7) are recorded as source notes under References (HLSY23, LL22) and in the
  source lines of §§7.7, 7.8. `sourceIssues` in `plan.json` is outside the editable part and was not
  changed; the two issues are listed below for the errata register.
- **Uncited Lan.** The design wrote "good in Lan's sense" and "(Lan, Definition 1.4.1.4)" without Lan in
  the manifest. Replaced by "good in the sense of PELModuli §M0.10" (PELModuli §M0.10 defines bad primes
  and the good-prime base, citing Lan 1.4.1.1) in §§7.2, 8.1 and the ShimuraCompactifications contract,
  and the Lan parenthesis is dropped from gap:bad-prime-projectivity (`needs` and `detail` in
  `plan.json` edited identically; the README contract line equals the `needs` text, checked by script
  for all four gaps). PELModuli §M0.10 added to the supplier contract and to the *Needs:* of §§7.2, 8.1.
- **Shape.** Design catalogue blocks (Target/API names/Uses) rewritten as prose: API bullets carry no Lean
  names (the design's generated names such as `StrictOModule.toDisplay` are gone; 80 imperative bullets
  rewritten as statements of fact); the four imperative Checks of §§0.5, 0.7, 3.2 rewritten as computed
  statements; per-layer `### Examples` (three computed examples each) and `### Dependencies` added;
  internal references are §k.n; source corrections and editions merged into References. The design's
  "Ownership of the source items" count table was dropped (process data; the routing stays in
  `plan.json`), and the "Library carriers" list moved into the Mathlib/Tau Ceti contracts, dropping
  `MvPolynomial.C/X/eval` and `ZMod` (they served only Checks, which name no Lean counterparts) and adding
  `Module.Grassmannian`, `WittVector`, `WittVector.Isocrystal`, `IsRegularLocalRing`,
  `AlgebraicGeometry.SmoothOfRelativeDimension` (all read at the pin).
- **Checks count.** Every definition and construction (43) keeps an API list and ≥3 Checks (script).

## What the README could not support

Nothing was cut. The four supplier gaps of the accepted design remain necessary at the suppliers' current
heads: PELModuli §M2.15 still states the BT equivalence only over complete local noetherian rings
with perfect residue field; AdelicAlgebraicGroups has no global hermitian existence theorem (its §4.1 is
weak approximation and torsors); ReductiveGroupsPartII §RG2.3.5 treats GL and GSp chains only;
ShimuraCompactifications Layer C5 says nothing at bad primes or parahoric level (lines 161, 2237, 2635,
2641 of its README at its head). No new gap is declared.

## Notions moved down from later roadmaps

None. SelmerIwasawaCohomologyPartII (later in the order) is mentioned only as a consumer and as owner of
the special-fibre items; it appears in no *Needs:* line or supplier contract.

## Duplication sweep and ownership

Searched by object (`roadmaps grep` over main and all open heads; pinned Mathlib and Tau Ceti):
Krämer models, exotic good reduction, strict O-modules, O-displays/Witt O-frames/Lubin–Tate frames,
Rapoport–Zink spaces, almost self-dual, RSZ, Mihatsch, basic-locus uniformization, Li–Liu, unitary RZ /
Kudla–Rapoport / AFL.

- **Removal/narrowing:** IgusaVarietiesAndTorsionConcentration §IG.0.27 already owns the PEL RZ space of an
  unramified datum with a single self-dual lattice *and* the unstructured framed deformation functor with
  its formal representability. §0.2 now imports the latter for its first route step (*Needs:* updated)
  and Scope says §0.2 differs in one clause (arbitrary self-dual periodic multichain, ramified data).
- No other target exists elsewhere: hits for Krämer are Krämer's dimension-theory/other contexts;
  "almost-principally-polarized RZ space" in MotivesAndAlgebraicCycles §7.19 is a consumer premise, not a
  construction; HeckeStacksAndLocalShtukas, EndoscopicTransferAndUnitaryTraceComparison and
  AdmissiblePairsAndPadicHodgeStructures mention RZ spaces / basic loci for other groups;
  GanGrossPrasadUnitaryGroups, GrossZagierAndArithmeticHeights, HeegnerPointEulerSystems state no unitary
  formal moduli. Pins: no formal schemes, p-divisible groups, displays, hermitian lattices of this kind.
- Ownership: this roadmap is the owner of the unitary local spaces, CM-pair integral models and their
  uniformizations because PELModuli stops at good primes, principal unramified data and CM moduli at
  primes unramified in F, and no roadmap on main or at the open heads constructs them. No declaration of
  `Suggested.lean` exists, so no name clash is possible.
- Every cross-roadmap section cited was resolved at its current head or main (PELModuli #966,
  AbelianSchemesAndArithmeticModuli #849, FiniteFlatGroups… #879, EndoscopicTransfer… #999,
  IgusaVarieties… #1090, AdicSpacesPartIII main, SchemeAndStackFoundations main, AlgebraicModuli… #853,
  GeometryOfNumbers… #851, PadicHodgeTheory #1062, ShimuraVarieties #933, ReductiveGroupsPartII #785,
  ShimuraCompactifications #1053, AdelicAlgebraicGroups #792, SelmerIwasawaCohomologyPartII #1403): every
  section heading quoted exists.

## Adversarial pass

My computed value left of the slash, the statement's right of it.

| Statement | Instances | Values (computed / stated) | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 strictness | K=ℚ_p(√p), twist by conjugation, R=O_K/p | √p acts on Lie by −√p≠√p since p odd / not strict | ok | — |
| §0.1 biformal | relative height 1, dim 1 | dual dim 1−1=0, étale, no polarization / same | ok | — |
| §0.1 O=ℤ_p | μ_{p^∞}, ℚ_p/ℤ_p | P/Q rank 1; P/Q=0 not nilpotent / same | ok | — |
| §0.2 representability | n=1 unramified, [K:ℚ_p]=2 | unstructured params dim·codim=2·2=4=[K:ℚ_p]², structured 0 / same | ok | IG.0.27 imported |
| §0.2 topology | n=2 | O_L̆[[t]], ideal (p,t) not p-adic / same | ok | — |
| §0.3 heights | [K:ℚ_p]=2, n=3 | rel. height 6, abs. 12, dim 3 / same | ok | — |
| §0.3 n=1 | (1,0), (0,1) | Lie char a resp. ā / same | ok | — |
| §0.4 C (F01) | K₀=K; [K:K₀]=ef | identity; height 2nef→2n, dim nef→n; Mih19 line 527–536 no supersingularity / design said supersingular | generality | stated for all modules with a signature; μ-ordinary Check |
| §0.5 framing dependence | change by g | equivariance conjugated by g; g central ⇒ unchanged / new wording | ok | Check rewritten |
| §0.6 local model | (1,n−1); r=0 | dim 1·(n−1)=n−1; Gr of rank-0 quotients = base / same | ok | — |
| §0.7 conjugation | n=1; applied twice | characters a↔ā; ι∘c∘c=ι / same | ok | Check rewritten |
| §1.1 exact polarization | λ→cλ, c≠1 | ρ*λ_𝕏=λ≠cλ / rejected | ok | — |
| §1.2 smoothness | n=1, n=2 | dim 0 (Spf O_L̆), dim 1 / same | ok | — |
| §1.3 rank-one lift | heights | ℰ, ℰ̄ rel. height 2 dim 1 / same | ok | — |
| §1.4 δ | n=1; ℰ instead of ℰ̄ | (1,0)+(0,1)=(1,1), height 4; (1,0)+(1,0)=(2,0) / same | ok | — |
| §1.5 V_n | n=2; aā=1 | dim_L 2 vs rel. height 4; scalar isometry / same | ok | — |
| §1.6 graph | n=2,3,4 | rel. (0,1),(1,3),(2,5); arithmetic (1,2),(2,4),(3,6) / same | ok | — |
| §2.1 kernel | q=3 | order 9 for every n≥2; principal kernel order 1 rejected / same | ok | — |
| §2.2 semistable | ϖ=t², e=2 | uv−t²: embdim 3 > dim 2 / "need not preserve" | ok | — |
| §2.3 W_n | n=2, unramified L/K | val det W_2 even; ⊥⟨ϖ⟩ odd ⇒ V_3 nonsplit / same | ok | — |
| §2.4 deg α | n=2, q=3 | (deg α)²=9·9 ⇒ 9; 27²=729≠81 / same | ok | — |
| §2.5 projections | q=3 | π₁ degree q+1=4 / same | ok | — |
| §3.1 exotic kernel | n=2 | deg i(u)²=deg ϖ=q^{2n} ⇒ #X[i(u)]=q^n=q² / non-principal | ok | — |
| §3.2 σ | σ^∨; σ∘i(u²) | σ^∨=σ via λ^∨=−λ, ū=−u; kernel X[ϖ] order q^{2n}≠q^n / same | ok | Check rewritten |
| §3.3 framing | multiplier c≠1; height ≠0 | rejected / same | ok | — |
| §3.4 coefficient ring | n=2 over O_K̆ | fibre k[u]/(u²)[[t]] nonreduced / not smooth over O_K̆ | ok | — |
| §3.5 source | heights | rel. height 2, dim 1, trivial kernel / same | ok | — |
| §3.6 u⁻² | omit u⁻² | h multiplied by u², and u²=ϖ·unit not 1 / same | ok | — |
| §3.7 components | n=2; n=4 | V^exo 2-dim nonsplit ⇒ anisotropic, t=2, reduced locus a point per component; n=4 curves of dim 1 / same | ok | Example wording fixed (V_{Λ+Λ′}) |
| §4.1 absolute | f=2, n=2 | height 2nf=8, dim 4 / same | ok | — |
| §4.2 banal | f=1 | no banal component / same | ok | — |
| §4.3 μ | f=2; f=1 | F²(μ)/μ=F⁰(ε₁)=ε₁; empty product ⇒ μ=1 / same | ok | — |
| §4.4 equivalence | K/ℚ_p ramified | no unramified idempotents, outside / stated | ok | — |
| §4.5 principal source | f=2 | abs. (4,2) → rel. (2,1) / same | ok | — |
| §4.6 framed comparison | f=1 | identity / same | ok | — |
| §5.1 filtration | n=3 | rank 2 conjugate, quotient 1 structural / same | ok | — |
| §5.2 source | Lie action | ā (conjugate), rel. height 2 / same | ok | — |
| §5.3 unit compatibility | c∈O_K^× vs c=u | unit: same class; kernel X[i(u)] not principal / same | ok | — |
| §5.4 trace recovery | A=⟨Πx,y⟩, B=⟨x,y⟩ | Tr(u⁻¹δ(A+uB))=δ(0·A+2B)=2δB ⇒ (2δ)⁻¹ / same | ok | — |
| §5.5 parity | n=3; n=2 | det·c³ changes class for non-norm unit c; c² is a norm / iso for odd, not even | ok | — |
| §5.6 chart | n=2, p odd | roots ±i simple (2x unit), z=(1+x²)/2, yz=u / same | ok | — |
| §5.7 regularity | n=2 | dim over DVR 2 = n, rel. 1 / same | ok | — |
| §5.8 V | rescale λ_Y by c | h ↦ c⁻¹h / same | ok | — |
| §5.9 evaluation | e↦ae | factor ×aā / same | ok | — |
| §6.1 G̃ | (z,u)↦(z,zu) | inverse of (z,g)↦(z,z⁻¹g) / same | ok | — |
| §6.2 admissible | F⁺_v=ℚ_p(√p), F_v/F⁺_v unram. | {(σ,±)} pulled back from ℚ_{p²}; {(σ,+),(σ̄,−)} not / same | ok | — |
| §6.3 common scalar | λ₀,λ scaled by c,c′ | c≠c′ not an arrow / same | ok | — |
| §6.4 unramified K | composita | compositum of unramified extensions of F_u unramified / same | ok | — |
| §6.5 Eisenstein | 𝔽₃ Jordan block; A_ψ=∅ | charpoly T², matrix ≠0; Q=1 ⇒ summand 0 / same | ok | — |
| §6.6 CM moduli | R=k[ε]; F=ℚ(√−p) | ideals (x+εc), Kottwitz fixes c; rel. height 1 unique deformation / same | ok | — |
| §6.7 levels | unramified, length one | kernel order q_v² / same | ok | — |
| §6.8 sign | n=3, r_φ=2 | exponent 3·1−2=1 (positive) vs −2 even (opposite) / conventions differ | ok | — |
| §7.1 localized RSZ | empty CM component | pair moduli empty / same | ok | — |
| §7.2 good/bad base | F⁺=ℚ(√3), F=ℚ(ζ₁₂), p=3; F⁺=ℚ, F=ℚ(i), p=3 | −1 nonsquare mod 3 ⇒ inert; 3 ramified in F⁺ ⇒ bad (§M0.10); 3 unramified in ℚ ⇒ §M2.8 target / same | ok | "Lan's sense" → PELModuli §M0.10 |
| §7.3 semi-global | asd length one | kernel q_v²; a prime to p ⇒ λ₀ principal at p / same | ok | — |
| §7.4 exotic model | rank-one A₀[u^∞] | height 2f ≠ 2nf for n≥2 / A not A₀ | ok | source note reworded |
| §7.5 Krämer global | distinguished factor | P rank n−1 structural, quotient 1 conjugate; local labels swapped / same | ok | — |
| §7.6 local model | ϖ=t^e | uv−t^e not regular, diagram still exists / same | ok | — |
| §7.7 exotic smooth | F⁺=ℚ, n=4; F⁺≠ℚ | trace form sig. (6,2), 8 vars, isotropic (Meyer); definite real place ⇒ anisotropic ⇒ no cusp / F⁺≠ℚ kept | ok | LL22 note (F02) |
| §7.8 wedge vs Krämer | n=2 | uv=t²·unit not regular; yz=u regular over O_{Ĕ_ν} / same | ok | HLSY23 note (F02) |
| §7.9 local types | split self-dual vs asd | kernels trivial vs order q² / same | ok | — |
| §7.10 gluing | ramified E_ν at asd | regularity not certified / same | ok | — |
| §8.1 neat smooth | c≠1 | λ₀×cλ not a multiple of λ₀×λ (1 vs c) / same | ok | "Lan's sense" → §M0.10 |
| §8.2 neat asd | N=1 | relative dim 0, no crossing / same | ok | — |
| §8.3 local rings | N=2; F⁺=ℚ, N=2 | x₁x₂−p∉m² ⇒ regular dim 2; V′ isotropic iff −ab∈Nm F^× / same | ok | — |
| §8.4 generic datum | V′ definite, N>1 | signature (N−1,1) impossible / invalid | ok | — |
| §8.5 Hecke | g=a=1 | identity; F⁺-adeles / same | ok | — |
| §8.6 mixed isogeny | q=3 | v₀-degree 9 not 3 / same | ok | — |
| §8.7 tangent | N=2 | Hom(line,line) dim 1=N−1 / same | ok | — |
| §9.1 Tate–Dieudonné | supersingular E; ordinary E; conjugated CM pair, p split | 4=4 and D_{1/2}; 2≠4; Hom_K=0 vs conjugate-semilinear dim 2 / same | ok | — |
| §9.2 quotient | Γ=ℤ shift; Γ={±1} on N_n | quotient 𝔑; −1 acts trivially ⇒ not a torsor / same | ok | — |
| §9.3 nearby datum | flip only v₀ | product formula violated (one sign change) / real signature also flips | ok | — |
| §9.4 local factors | v₀ only place above p | product over other places is a point / same | ok | — |
| §9.5 Θ | no Hasse hypothesis | Z′⊂Z open and closed / same | ok | — |
| §9.6 exotic uniformization | n=2, val_u ϖ ∈ {0,1} | u²/ϖ valuation 1−val ϖ: unit, or dual shifts / same | ok | — |
| §9.7 inert | n=1 | no formal parameter / same | ok | — |
| §9.8 CM partition | class set of size 2 | two labelled fibres / same | ok | — |
| §9.9 Krämer completion | n=2 | both sides étale locally yz=u; no blowup used / same | ok | — |
| §9.10 mixed | q=3 | deg α=9, π₁ degree 4 / same | ok | — |
| Layer examples (0–9) | values as in each Examples section | recomputed above in the matching rows (heights, dims, degrees, charts, Meyer, N=2 rings, u²/ϖ) | ok | — |
| Suggested.lean docstring | carriers at the pins | grep: no formal schemes/p-divisible groups; Tate module of abelian groups exists | ok | ℓ-adic remark added |

## Source issues for the errata register

- **Gap** in HLSY23, §10.2, p. 78 (arXiv:2208.07988v2): regular semistable reduction asserted at all places
  above ramified and almost self-dual places; should require ν unramified over F_{v₀} (ramified places)
  and E_ν unramified over ℚ_p (almost self-dual places); affects a stated result.
- **Gap** in LL22, §4.5, author-copy p. 66: integral models called smooth projective by RSZ20 Theorem 4.7,
  which gives no projectivity; affects a stated result.
- **Misprint** in LTXZZ22, §5.2, published p. 188: V° of rank N>1 while Remark 5.2.4 and Theorem 5.2.5
  treat N=1; should read N≥1; affects nothing.

## Other

- Sources: all 17 cited works are in `sources.toml`; no text was fetched or missing; no
  `needs-references.toml` was written. Meyer's theorem is cited as a standard fact.
- Ownership against open pull requests was checked through `roadmaps grep` over all 354 open heads.
- No suspicious instructions were found in the inputs read.

## Repairs after the worker's checks

- TeX-style braces: 195 occurrences of `_{…}` or `^{…}` stood in prose outside code spans (for example
  `O_{F⁺}`, `O_{F̆_{v₀}}`, `E_ν/F_{v₀}` in the Conventions). Every formula containing one is now an
  inline code span; the mathematics is unchanged (one sign `(-1)` became `(−1)` inside the span).
  Rechecked: no `_{` or `^{` remains outside code spans.
- `gap:native-shimura` is SelmerIwasawaCohomologyPartII's own contract (supplier ShimuraVarieties),
  not a gap of this package, so it is not added to `plan.json`; the Downstream consumers sentence
  now names those models in prose, without the gap token. `plan.json` is unchanged.
- Dependency check after the repair: `depcheck: 56 roadmaps, 655 edges, 0 problem(s)`.
