# Repair round FIX-PKG-PELModuliPartII~2

Findings of `REV-PKG-PELModuliPartII` (five, all P3), settled one by one. Files edited:
`packages/PELModuliPartII/README.md`, `packages/PELModuliPartII/Suggested.lean`,
`packages/PELModuliPartII/design/plan.json` (top-level `gaps` list only).

## REV-PKG-PELModuliPartII/F01 (P3) — applied differently

Verified: ShimuraCompactifications at its head has "## Layer 7: integral PEL compactifications",
"### 7.5 Properness" and "### 7.18 Quasi-projectivity of PEL moduli at good primes" and no `C5`
label. README: every `§C5.5` → `§7.5`, `§C5.18` → `§7.18`, `Layer C5` → `Layer 7` (the thirteen
occurrences; none left). `plan.json`: the `bad-prime-projectivity` gap entry (`detail`, `needs`,
`section`) likewise. Differently: the four target prerequisite strings of `plan.json` the review
also names lie outside the `gaps` list, which is the only part of the plan this round may edit, so
they keep the old label; the README, the gap entry and the resolver are consistent.

## REV-PKG-PELModuliPartII/F02 (P3) — applied differently

Verified: IgusaVarietiesAndTorsionConcentration at its head has "### 0.27 PEL Rapoport–Zink
spaces" and "### 0.31 Harris–Taylor Newton strata at Drinfeld level" and no `IG.` string. README:
`§IG.0.27` → `§0.27`, `§IG.0.31` → `§0.31` at every occurrence (none left). Differently: the
`plan.json` occurrences of the old label are all outside the `gaps` list and are left as they are.

## REV-PKG-PELModuliPartII/F03 (P3) — applied

Verified at the Tau Ceti pin: `TauCeti.FormalScheme.Spf.carrier`
(`TauCeti/AlgebraicGeometry/FormalScheme/Spf/Carrier.lean`, line 73) and
`TauCeti.FormalScheme.Spf.structureSheaf` (`.../Spf/StructureSheaf.lean`, line 262) exist; no
`FormalScheme` type, no formal smoothness, no `p`-divisible group at either pin. Docstring of
`Suggested.lean`: "They lack formal schemes and `Spf`, formal smoothness of a morphism of formal
schemes" → "They lack a category of formal schemes and formal smoothness of their morphisms (Tau
Ceti's `TauCeti.FormalScheme.Spf` gives only the underlying space and the structure sheaf of an
affine formal spectrum)". README "From Tau Ceti": a bullet naming the two declarations, what they
give, and that no target consumes them. Nothing is stated in the Lean file.

## REV-PKG-PELModuliPartII/F04 (P3) — applied

§0.6 had no API list and two Checks. Added an `**API.**` block of four bullets (the functor of
Mih19 Definition 2.11; its identification with the Grassmannian of rank-r quotients of the
distinguished summand through the rank conditions (i′) and equality of generic fibres, Mih19
Proposition 2.12; smoothness of relative dimension rs with the tangent Hom; the Hodge-filtration
chart of Mih19 Lemma 2.13 and the proof of Lemma 2.10) and two Checks: the (i′)-versus-(i)
Check the review asks for, and a negative control computed by me showing clause (ii) is not implied
by (i) when K/K₀ is ramified (K₀=ℚ_p, K=ℚ_p(√p), n=2, (r,s)=(2,0), special fibre). The review's
suggested wording "dropping (ii) changes the functor (Mih19 Proposition 2.12)" was not used as
stated: Proposition 2.12 does not assert it; the Check now carries the instance that proves it.
`*Needs:*` of §0.6 gains §0.1 (the crystal D_X of the fourth bullet).

## REV-PKG-PELModuliPartII/F05 (P3) — applied

Verified: `RSZ20 line 2858` (Lemma 8.16) lies after the page-53 marker (line 2830) and
`RSZ20 line 2888` (Remark 8.18) after the page-54 marker (line 2886). §9.4: "RSZ20 Lemma 8.16 and
Remark 8.18, p. 53" → "RSZ20 Lemma 8.16, p. 53, and Remark 8.18, p. 54". No other citation of
Remark 8.18 in the README.

## Pattern search

`grep` for `C5`, `IG.` and `Remark 8.18` over the README after the edits: no residual occurrence
of the old labels; the single Remark 8.18 citation is the repaired one. `Layer C5` appeared only
in the gap contract text (README and plan gap entry), both repaired.

## Adversarial pass on the added and changed statements

| Statement | Instances | Computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.6 API 1 (functor of Def 2.11) | r=0 or s=0 | (i′) forces the distinguished piece of the quotient to have rank 0 (or n), so F is forced on every summand: one point, the base; agrees with Check 2 | ok | none |
| §0.6 API 2 (Grassmannian identification) | (r,s)=(1,2), n=3 | rank-1 quotients of a free rank-3 module: ℙ², dimension rs=2; agrees with the Layer 0 Examples line | ok | none |
| §0.6 API 2, generic fibre step | K/K₀ unramified | (ii) automatic (Mih19 Remark 2.9), (i) on the unramified subring gives (i′) (`Mih19 line 409`), so the inclusion and the generic-fibre equality are as stated | ok | none |
| §0.6 API 3 (tangent space) | (r,s)=(1,n−1); (2,0) | Hom(rank-s kernel, rank-r quotient): dimension s·r = n−1; 0 | ok | none |
| §0.6 API 4 (Hodge chart) | covariant crystal | Lie(X)=D_X(S)/F_X, so (i),(ii) on Lie(X) are (i),(ii) on Q(F_X): signature (r,s) iff the point is in the local model (`Mih19 lines 411–432`) | ok | none |
| §0.6 Check 3 ((i′) vs (i)) | Mih19 Prop 2.12 | M^loc ⊂ M′ by evaluating (i) on O_{L_u}; M′ integral smooth; equal generic fibres ⇒ equality (`Mih19 lines 399–410`) | ok | none |
| §0.6 Check 4 (negative control) | K₀=ℚ_p, K=ℚ_p(√p), n=2, (r,s)=(2,0), S=Spec k | D_{ψ₀}⊗k=(k[π]/π²)², F_{ψ₀}=0⊕k[π]/π²: quotient k[π]/π², π acts as a nonzero square-zero nilpotent, so (ii) fails (structural image of √p is 0); conjugate piece F_{ψ₀}^⊥ gives quotient dual to F_{ψ₀}; for a=f(π,ζ), charpol on Q = (t−f(0,ζ))²(t−f(0,ζ̄))²; P(2,0)(a;t) = [(t−f(−√p,ζ̄))(t−f(√p,ζ))]² ≡ (t−f(0,ζ̄))²(t−f(0,ζ))² mod p: (i) holds; ranks (2, 2) = (r, ne−r): (i′) holds. The (ii)-point F_{ψ₀}=π·D_{ψ₀}⊗k is the only point of the local model | ok (clause (ii) is independent of (i)) | Check added |
| §0.6 Check 4, n=1 control | same K, n=1, (r,s)=(1,0) | F_{ψ₀}=(π−α), α²=p; a=πζ gives charpol t²−α(ζ−ζ̄)t−pζζ̄ against t²−√p(ζ−ζ̄)t−pζζ̄, and ζ−ζ̄ is a unit, so (i) forces α=√p: for n=1 clause (ii) follows from (i); this is why the Check uses n=2 with a non-scalar action | ok | instance chosen accordingly |
| Docstring sentence on `Spf` | the pin | `carrier : Set (PrimeSpectrum A)` and `structureSheaf (hI : IsAdic I)` exist; no `FormalScheme` type (grep) | ok | sentence made exact |
| §9.4 locator | RSZ20 page markers | line 2858 ∈ p. 53, line 2888 ∈ p. 54 | ok | page fixed |
| Supplier labels §7.5, §7.18, §0.27, §0.31 | heads | headings at ShimuraCompactifications lines 2345, 2634, IgusaVarietiesAndTorsionConcentration lines 612, 743, with the content the README attributes to them | ok | labels fixed |

## Checks

- Elaboration: `lake env lean` on `packages/PELModuliPartII/Suggested.lean` from the content
  checkout: exit 0, no output. The file declares nothing (no headline is statable at the pins), so
  the `#check @name` comparison has no declaration to run on; stated vacuously, nothing changed.
- Dependency gate, verbatim:

      depcheck: 242 roadmaps, 2487 edges, 0 problem(s)

  Exit 0; no UPWARD, CYCLE or moved line.
- Citation resolver after the edits: "Cross-roadmap citations found nowhere: None. Lean names
  found nowhere: None." The four leads of the worker's `citations.md` are gone.
- Greps for LaTeX delimiters and machine paths in the README and Lean file: none.
- `plan.json` still parses as JSON; only the `bad-prime-projectivity` gap entry changed.

No gate failures were listed for this round. No source was fetched; `sources.toml` and
`metadata.toml` are unchanged. Ownership against open pull requests whose files the brief does not
give was not checked beyond the resolver index.

## For the maintainer

- No Lean name exists in this roadmap, so nothing other roadmaps cite changed.
- The `plan.json` target prerequisite strings still carry the labels `ShimuraCompactifications
  §C5.5/§C5.18` and `IgusaVarietiesAndTorsionConcentration §IG.0.27/§IG.0.31` (lines outside the
  `gaps` list); the README and the gap entry are the authoritative, corrected text. If the plan
  is regenerated or its targets become editable, the same four replacements apply there.
- §0.6 now records that clause (ii) of the signature condition is independent of the
  characteristic-polynomial condition when K/K₀ is ramified; the §0.4 definition already includes
  the clause, so no other section changes.
