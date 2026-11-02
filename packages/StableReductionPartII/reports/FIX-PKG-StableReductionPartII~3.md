# FIX-PKG-StableReductionPartII~3

Findings of review REV-PKG-StableReductionPartII~2 (one P2, five P3), settled one by one.

## F01 (P2) — applied differently

Verified. With grades, d(L)∨ has grade −χ(L), so the Koszul swap of the two d(L)∨ factors in ⟨L,L⟩ acts by (−1)^{χ(L)}. Deligne's symmetry acts by (−1)^{deg L}, as Eriksson–Freixas i Montplet, Proposition 6.1(2) states (mc5-erikssonfreixas2024 line 2894: κ=∫c₁(L) for n=1). The two differ by (−1)^{χ(O_C)}.

Changes:
- Conventions: "forget the grades." → also states that the symmetry is Deligne's symbol isomorphism ⟨l,m⟩↦⟨m,l⟩, acting by (−1)^{deg L} on the diagonal, and that this equals the Koszul permutation times (−1)^{χ(O_C)}.
- Conventions Check: the bare "interchange −1 / +1" → values on both routes (ℙ¹: −1 versus +1; genus g: +1 versus (−1)^{g−1}).
- Integral-pairing contract (API bullet, both Checks, the explanatory paragraph and the Deligne locator, which gains §6.2, p. 142) and §5.14 (API bullet and fourth Check): the same two-step statement, with the negative control.
- gap:integral-deligne-pairing (README and `design/plan.json` `gaps`): "graded permutation laws" → "Deligne's symmetry isomorphism … which acts on ⟨L,L⟩ by (−1)^{deg L}".

Why "differently": the suggested contract wording "Deligne's sign (−1)^{deg L_i deg L_j}" is wrong. On ⟨L,L⟩ that formula gives (−1)^{(deg L)²}=(−1)^{deg L}, but for L≠M a symmetry ⟨L,M⟩→⟨M,L⟩ has no intrinsic scalar sign. The law is therefore stated on the diagonal only, not as "symmetry = Koszul permutation × (−1)^{χ(O)}" for every pair (L,M). That general identity is not proved in the sources read, so it is not asserted.

Other places checked: §5.11 (Hodge factor exchange (−1)^{g₁g₂}), §6.18 (the same sign) and the smoothing-conormal exchange (unsigned). These are different objects and need no change.

## F02 (P3) — applied

Verified: `perfect-arbitrary-base`, `cm-duality-arbitrary-base`, `source-dense-valuative`, `integral-node-incidence`, `finite-scheme-cover`, `coarse-line-power`, `graded-perfect-stack-descent`, `stack-chow-grr`, `stack-topology-boundary`, `minimal-siegel-all-characteristics` and `proper-flat-picard-quotient` had no `*Needs:*` occurrence. `CHOW-PIC` was an alias.

Each slug was added to the Needs line of every target whose statement or route uses it:

| Section | Slugs added |
|---|---|
| §1.2 | perfect-arbitrary-base, cm-duality-arbitrary-base |
| §1.4 | perfect-arbitrary-base, cm-duality-arbitrary-base |
| §1.9 | perfect-arbitrary-base, cm-duality-arbitrary-base |
| §1.16 | source-dense-valuative |
| §§3.4, 3.6 | integral-node-incidence |
| §§3.8, 3.9, 3.12 | integral-node-incidence, relative-node-branch-data |
| §3.14 | cm-duality-arbitrary-base, integral-node-incidence, relative-node-branch-data |
| §4.13 | stack-topology-boundary |
| §4.16 | finite-scheme-cover, coarse-line-power |
| §§5.3, 5.4 | stack-topology-boundary |
| §5.13 | cm-duality-arbitrary-base, graded-perfect-stack-descent |
| §5.14 | graded-perfect-stack-descent, cm-duality-arbitrary-base |
| §§5.15, 5.16, 5.18 | stack-chow-grr |
| §5.20 | cm-duality-arbitrary-base |
| §6.5 | finite-scheme-cover |
| §§6.17, 6.18 | minimal-siegel-all-characteristics |
| §7.3 | proper-flat-picard-quotient |

The body text now names the gap where it is used:
- `CHOW-PIC` (three places in §§5.15 and 5.18) → gap:stack-chow-grr.
- §1.16 names gap:source-dense-valuative.
- §4.16 names both of its gaps.
- §6.5 names gap:finite-scheme-cover.
- §7.3: "supplier audit records …" → gap:proper-flat-picard-quotient.
- §5.4: "recorded as gaps" → gap:stack-topology-boundary.
- §5.16 names gap:stack-chow-grr for the stack GRR.
- §6.18 names gap:minimal-siegel-all-characteristics.

Every one of the 28 declared slugs now occurs in at least one Needs line (script count: minimum 1). Depcheck output is below.

## F03 (P3) — applied

Verified: MC.0–MC.7, A0, DESCENT, DIVISORS, the identifiers E16–E18, "sourceIssues", node slugs and "adapter" are plan labels with no definition in the README.

What each label became:
- **MC.k labels.** Replaced by the section they name: a link to the local target (for example MC.4/fine-level-scheme → §4.10, MC.6/smooth-torelli → §6.3, MC.7/level-picard-parameter → §7.1), "Layer k", or SchemeAndStackFoundations §4.15 for the stack, atlas, smoothness and projectivity facts that roadmap supplies.
- **A0.** → AlgebraicModuliForArithmeticGeometry §7.6 (`relativePicardKernel`) and §7.6.1a (section splitting), checked at its open head. The reviewer's suggestion "A0 → JacobianChallengePartII §§0.1–0.4" names the consumer, not the owner: JacobianChallengePartII's supplier table attributes `relativePicardSheaf`, `relativePicardKernel` and `sectionPicardSplit` to AlgebraicModuliForArithmeticGeometry §7.6.1/7.6.1a.
- **DESCENT.** → SchemeAndStackFoundations §§1.1 and 1.22.
- **DIVISORS.** Was an unowned prerequisite. It is now an explicit route: the scheme statements of SchemeAndStackFoundations §§3.3–3.7 on a smooth atlas, descended along the atlas groupoid (SchemeAndStackFoundations §1.1). Codimension, regularity and Cartier divisors are smooth-local. §5.7 Needs gains SchemeAndStackFoundations §1.1.
- **Errata identifiers.** E16–E18 and "sourceIssues" are deleted. The Frediani–Neumann sentence now says the source's product-of-simplicial-spaces argument is replaced by the nerve of the action groupoid.
- **Node slugs.** About 60 occurrences (sectionSplit, section-evaluation-*, fine-family-functions, refinement-*, node-atlas-branch-comparison, branchTensor, minimal-hodge-power, pairing-chern-on-moduli, hodge-nef-big-application and others) were replaced by links to the earlier target they name, or by prose. A target that would have been named before its own section is named by number without a link, so the build order keeps no forward anchor (script: 0 forward or missing anchors).
- **Line 2626.** The second sentence is deleted.
- **"adapter".** All 53 occurrences → "comparison" or prose.
- **sources.toml.** The `mc5-erikssonfreixas2024` locator loses "E18".

`grep 'MC\.[0-9]|\bA0\b|E1[0-9]\b|adapter|sourceIssues|DESCENT|DIVISORS|CHOW-PIC'` on the README now returns nothing.

## F04 (P3) — applied

Verified with a script: 13 targets had Checks equal to API bullets (§§2.158, 2.159, 2.186, 2.187, 2.218, 2.255, 2.276, 2.295, 2.302, 2.311, 2.345, 2.357, 2.393). §2.123's Checks restated its definition, and §2.171's third Check restated the API.

Each copied Check is replaced by a computed instance. Most use A=ℤ, γ=δ=s=t=0, p=(2), m=2R, so that R=ℤ[u,v]/(u²), Â=ℤ₂, Qₙ=(ℤ/2ⁿ)[u,v]/(u²) and σ=Σ2^k v^k. The instances include:
- level transitions such as (u+5)⊗1 ↦ (u+1)⊗1;
- 1⊗_ℤ(1/3)=3⊗_ℤ1 at level 2;
- N=ℚ₂, where every finite tensor vanishes;
- projections of σ⊗(1,1/3) such as (1+2v, 3+2v);
- incompatible families (1 at level 1, 0 at level 2);
- the unit-ideal degenerate case (Â=R̂=0);
- for §2.311, with γ=δ=s=t=0: ε(u)=0, ε(v)=u, vε=m(u) and E_Q([(3+v)ε])=3;
- for §2.171: Φ(Ψ(1,0))=(u²,0), which is 0 in R and nonzero in ℤ[u,v].

The script count of Checks equal to API bullets is now 0. Every value is recomputed in the table below.

## F05 (P3) — applied differently

Three parts, each settled separately:
- **§6.9, applied as a sharper locator.** §3.4 begins on p. 54 (yuan-author-http line 1842; page-55 marker at line 1857). The argument cited, finite cover plus nef and big Hodge, sits after Remark 3.9 on pp. 55–56 (lines 1876–1907). So "pp. 55–56" was the right page range for the cited argument. §6.9, §6.21 and §6.22 now read "§3.4 (which begins on p. 54), argument following Remark 3.9, pp. 55–56" or "§3.4, argument following Remark 3.9, pp. 55–56".
- **Tag 0DME, applied, and the same pattern repaired.** Tag 0DME is not in mc4-stacks (Cohomology of Schemes). A new key, `stacks-moduli-stacks` (Moduli Stacks chapter, fetched by the sources service, certified), holds it as Lemma 9.1 (stacks-moduli-stacks line 578). §§7.4, 7.5 and 7.7 now cite it there. The same mis-keying was at §4.16:
  - Tag 01VG → `mc2-stacks-unramified-diagonal`. The service resolves the tag to that same Morphisms PDF; §38, "Relatively ample sheaves", is listed in its contents at p. 83.
  - Tag 0GFB → new key `stacks-spaces-cohomology`, Cohomology of Algebraic Spaces, Lemma 21.2 (line 1804). Its hypotheses match §4.16: algebraic spaces proper over a Noetherian ring, f finite surjective.
  - The `mc4-stacks` manifest locator is cut to the tags its text contains (02O1, 0D2M, 0D2N).
- **Cache line numbers, disputed.** The binding brief prescribes this citation form ("Quote locators against these files and cite a passage as `<source id> line N`"). Every such citation in the README sits next to the theorem, section and page locator, so the printed locator is always present. They are kept.

## F06 (P3) — applied

- 155 "Here <Capitalised word> …" prefixes dropped ("Here No …" → "No …"). "Here S a scheme chart" → "Here S is a scheme chart". Prefixes followed by a variable ("Here A is any commutative ring") are kept.
- The 34 occurrences of "The uses a common universe for A and N, and …" and the C1 sentence "The uses A and N …" → "A and N lie in one common universe …".
- "an nodal" and "an constructed" corrected.
- Duplicated citations removed in §0.1 (SchemeAndStackFoundations §0.9 twice), §4.4, §6.3, §6.7 and §7.1 (JacobianChallengePartII listed two or three times). "gap gap:" fixed.
- The repeated statement paragraph deleted in §§2.106, 2.125, 2.126, 2.140, 2.141, 2.248–2.251 and 7.15. Ten paragraphs went, all verbatim second copies.
- The 90-word setup removed from the five §2.171 bullets. The same repeated setup was also removed from the API bullets of §§2.239, 2.240, 2.272, 2.353 and 2.354, 24 bullets in all; each section's statement paragraph already states the setup once.

## Checks run

- `lake env lean packages/StableReductionPartII/Suggested.lean` (from the content checkout): exit 0, with exactly two warnings, "declaration uses `sorry`", at lines 79 and 95. Only `import Mathlib`, so no `TauCeti.*` build was needed. `Suggested.lean` was not changed: no finding concerns it.
- Signatures checked mechanically. I put `#check @name` for all 7 declarations in one scratch file and elaborated it once. Every type agrees with the README: A with `CommRing` and γ,δ,s,t in the five definitions; `nodeSection_universallyExact` keeps `N`, `AddCommGroup N`, `Module A N` and the four exactness statements; `pointedSection_reflexive` names the native quotient ring, ideal and `Module.Dual`. No binder was lost and nothing changed.
- Depcheck, run as given in the brief:

```text
depcheck: 56 roadmaps, 644 edges, 0 problem(s)
```

  No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Internal anchors: 0 forward or missing (script).

## Gate failure repaired (tex=52)

- The check found 52 TeX-style exponents and subscripts (`^{…}`, `_{…}`) in README prose outside code spans, on 20 lines (§§ Conventions, 3.4, 3.5, the Koszul-sign Checks, the ℤ₂ fixtures of Layer 2, the P_g Checks). Each expression is now inside a code span (for example `(−1)^{χ(O_C)}`, `Qₙ⊗_{ℤ₂}ℚ₂`, `σ=Σ_{k≥0}2^k v^k∈R̂`). No characters of the mathematics changed and nothing else was edited. A rescan finds 0 such occurrences outside code spans. Depcheck after the edit: `depcheck: 56 roadmaps, 644 edges, 0 problem(s)`. `Suggested.lean` is unchanged, so the elaboration result above still holds.

## Adversarial pass (new and changed statements)

| Statement | Instances | Values computed | Result |
|---|---|---|---|
| Diagonal symmetry = Koszul swap × (−1)^{χ(O)} (Conventions, pairing contract, §5.14) | ℙ¹, O(1); stable g=2, ω; smooth g=1, O(p); g=2, O | ℙ¹: χ=2, Koszul +1, Deligne (−1)^1=−1, χ(O)=1, product −1. g=2: χ(ω)=1, Koszul −1, Deligne (−1)^2=+1, χ(O)=−1, product +1. g=1: χ=1, Koszul −1, Deligne −1, χ(O)=0, ratio +1. ⟨O,O⟩ at g=2: Koszul (−1)^{−1}=−1, Deligne +1 | law holds on every instance; characteristic 2 makes every sign 1 (Check says char≠2) |
| L≠M symmetry sign | ⟨L,M⟩→⟨M,L⟩ | no scalar is intrinsic | general law not asserted |
| 2.158 transition | N=ℤ₂, level 3→2 | ℤ/4⊗ℤ₂=ℤ/4; (u+5)⊗1 ↦ (u+1)⊗1 | correct |
| 2.158/2.159 N=ℚ₂ | Qₙ⊗ℚ₂ | 2ⁿ kills Qₙ and is a unit in ℚ₂, so 0 | correct |
| 2.159 transition | N=ℤ₂² | (u+1)⊗(1,1/3)=(u+1, 3(u+1)) since 3·3≡1 mod 4 | (u+1,3u+3) correct |
| 2.186 evaluation | σ=Σ2^kv^k | e₂(σ)=1+2v, e₃(σ)=1+2v+4v²; mod-m model gives 1 | correct |
| 2.187 assembly | fₙ=Σ_{k<n}2^kv^k; f₁=1, f₂=0 | compatible (2ⁿvⁿ≡0 mod 2ⁿ), σ not a polynomial; τ₁₂(0)=0≠1 | correct |
| 2.218 projection | σ⊗(1,1/3), n=2 | (1+2v, 3+6v)=(1+2v,3+2v) mod 4; ℚ₂: targets 0, R̂[1/2]≠0 since 2 is not nilpotent in R̂; f=2: 2(1+2v)=2+4v≡2 | correct |
| 2.255 coordinates | r=2 | σ and σ/3, quotients 1+2v and 3+2v; u⊗(0,1) gives (0,u) | correct |
| 2.276 two-base | 1⊗_ℤ(1/3) at n=2 | 3·(1⊗1/3)=1⊗1 and 3²≡1 mod 4, so 1⊗1/3=3⊗1 ↦ 3; (u+7)⊗1 → u+3 on both routes | correct |
| 2.295 limit | family Σ_{k<n}2^kv^k⊗1; N=0, ℚ₂; incompatible family | level 3: 1+2v+4v²; both limits 0; family (1⊗1, 0) not compatible | correct |
| 2.302 lift | legs a·s_n; zero cone; constant a·uv | lifts aσ⊗1, 0, a·uv⊗1; 1/3 ↦ level 2 3+2v | correct |
| 2.311 residue | γ=δ=s=t=0 | v·ε(u)=u²=0 ⇒ ε(u)=0; v·ε(v)=uv ⇒ ε(v)=u (v a nonzerodivisor on A[v]⊕A[v]u); vε=m(u); E_Q((3+v)ε)=ev(3+v)=3 | correct |
| 2.345 universal property | σ⊗1 versus R⊗ℤ₂ | ℤ₂[u,v]/(u²) contains no σ (unbounded degree); r=0 gives 0 | correct |
| 2.357, 2.393 | σ⊗1, constant 1⊗(1/3), r=0 | families (1, 1+2v, 1+2v+4v², …); ĩ(1/3) at level 2 is 3; 0 | correct |
| 2.123 ĩ | 1/3; 2^k; unit ideals | ĩ(1/3) ≡ 3 mod 4 and mod 8; ĩ(2^k)=2^k≠0; p=A forces m=R, so Â=R̂=0 | correct; the hypothesis p⊆ι⁻¹(m) is satisfied in the degenerate case |
| 2.171 composite | A=ℤ, fixture γ=δ=s=t=0 | Ψ(1,0)=(d,c)=(v,u); Φ(v,u)=(av+bu, −cv+du)=(u², 0) | 0 in R, (u²,0)≠0 in ℤ[u,v] |
| §5.7 route through an atlas | smooth atlas U→M̄_g | codimension-one points pull back to codimension-one points under flat maps; regularity is smooth-local | route sound; Needs gains §1.1 |
| §4.16 with 0GFB | V→M finite surjective, proper over ℤ | Lemma 21.2 equivalence (1)⇔(2) for a Noetherian R | hypotheses match |
| gap needs (integral-deligne-pairing) | same as the first row | same values | consistent |

## Maintainer notes

- **Ownership.** No construction was added, so ownership did not change. New supplier citations go only to sections already in the supplier contracts:
  - AlgebraicModuliForArithmeticGeometry §7.6 and §7.6.1a, checked at its open head;
  - SchemeAndStackFoundations §§1.1, 1.22, 3.3–3.7 and §4.15.
- **Merge order.** No notion moved down and no later roadmap is cited.
- **Names.** No Lean name changed, and the other roadmaps cite none.
- **sources.toml.**
  - Two new certified keys: `stacks-moduli-stacks` and `stacks-spaces-cohomology`.
  - The `mc4-stacks` and `mc2-stacks-unramified-diagonal` locators were updated.
  - The sources service rewrote the field order of every existing entry, so `authors`, `title` and `year` now come first. Content is unchanged apart from the locators named here.
  - `cited_for` values in older entries still use the plan labels (`MC.5` and similar); they are not README text and were left alone.
- **needs-references.toml.** Not written: every source needed was read.
- **Source issue from the review.** Eriksson–Freixas Proposition 6.1(2) does not say how the symmetry of the determinant-defined pairing (6.3) is built. The README now states the sign law on the diagonal with both computations, so it does not rely on that unstated construction.
