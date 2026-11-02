# PKG-PadicHodgeParametersInLocallyAnalyticRepresentations

Deliverables: `packages/PadicHodgeParametersInLocallyAnalyticRepresentations/README.md`,
`Suggested.lean`, `metadata.toml`, `sources.toml`, and the top-level `gaps` list of `design/plan.json`
(nothing else in that file changed; the diff is confined to the `gaps` array).

## Headline theorems

All refer to DING25 §3.2. None is statable at the pins (Mathlib `6b7abb3`, Tau Ceti `a91d3aa`, the
pins of `lake-manifest.json`), so `Suggested.lean` declares nothing and its docstring names each one
together with the carrier it lacks.

| Headline | README | Status | Missing carrier |
| --- | --- | --- | --- |
| Ding's comparison theorem (Thm 3.21) | §1.4 | not statable | admissible locally ℚ_p-analytic representations of GL_n(K) and their Ext groups; π_alg ⊂ π_1, ζ_w; (φ,Γ)-modules over R_{K,E}, ΦΓ_nc, Ext¹_w, κ_w |
| Kernel dimension c_n·d_K (Rk 3.22(1)) | §1.5 | not statable | same as above (a statement about t_D) |
| Characterisation of π_min(D) (Cor 3.25) | §2.4 | not statable | the above plus socles of locally analytic representations |
| Central/infinitesimal characters (Prop 3.26) | §2.6 | not statable | π_min(D), the derived U(g)-action, and Harish-Chandra for split ∏_σ gl_n over finite E (`TauCeti.hcProjection` needs `IsKilling`) |
| Decomposition over embeddings (Cor 3.31) | §3.5 | not statable | locally σ-analytic representations, partial Ext |
| Recovery theorem (Thm 3.34) | §4.2 | not statable | the above plus D_σ (B-pairs / Berger modification) |
| Universal Artinian action and annihilator (Thm 3.36, Cor 3.37) | §§5.4–5.5 | not statable | (φ,Γ)-deformation rings, the completed Bernstein centre, universal extensions |

Layer 0 and §1.1 (endpoint families, block tuples and the telescoping spanning identity, c_n) are
statable, but they are not headlines. The design's companion file stated them along with
`finrank_kernel_of_comparison_dimensions` (rank–nullity for an arbitrary linear map with given
dimensions, a statement on free variables) and an `example` for every test. All of these were dropped
from `Suggested.lean` under the acceptance-test rule; they stay in the README as targets and Checks.

## Elaboration

`lake env lean <Suggested.lean>`, run from the content checkout: exit 0, **0 `sorry` warnings, no
other messages**. The `#check @name` comparison was not needed, since the file has no declarations.
No `TauCeti.*` import is used.

## Dependency check

```text
depcheck: 56 roadmaps, 644 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. Every supplier is either on main (LieHighestWeight) or earlier in
the merge order: SmoothRepresentationsOfLocalGroups, PhiGammaModulesAndIwasawaCohomology,
LocalGaloisDeformationRings, PadicHodgeTheory, LocallyAnalyticDistributionsPartII (named in Scope
only), LocallyAnalyticRepresentationsOfLocalGroups and TriangulineVarietyAndItsLocalModel.

## Citation resolution

`roadmaps resolve` leaves one lead: "TriangulineVarietyAndItsLocalModel §9.1: no roadmap on main or in
an open pull request". It is not a defect. That roadmap is a board design (`packages/TriangulineVarietyAndItsLocalModel/design/README.md`)
listed before this one in the merge order, and every section cited (§§9.1–9.3, 9.6, 9.8, 9.9,
10.1–10.8, 11.1–11.7, 12.8, 12.13–12.14, 12.16) was read there. The same holds for
LocallyAnalyticRepresentationsOfLocalGroups (board design, Layers LR.0, LR.1, LR.5–LR.9; target names
checked). The worker's earlier lead "LocalGaloisDeformationRings R08.1" came from an atlas id in the
design; it is replaced by LocalGaloisDeformationRings §§0.4 and 1.23 at the head of its open PR. No
Lean name was flagged.

## What the README could not support: supplier gaps

Each gap is declared in `plan.json` `gaps` and stated under `## Exact supplier contracts` as
`What <Supplier> must provide (gap:<slug>)`.

1. **embedding-selective-modification**, PadicHodgeTheory, Layer 4 §4.5: the modified module D_σ of
   Ding Prop. 2.5. The design and the TriangulineVariety design both import it from the atlas id
   "PadicHodgeTheory P7/embedding-selective-crystalline-modification". The PadicHodgeTheory roadmap at
   its PR head has no such target: it has `BPair` (§4.5) and `bergerModification` (§5.2), and does not
   mention D_σ or Ding §2.2. Ding constructs D_σ by changing the B_dR⁺-lattice of the B-pair away
   from σ (DING25 line 570 ff.), so §4.5 is where it belongs.
2. **principal-series-bernstein-completion**, SmoothRepresentationsOfLocalGroups §SR.3.2: Ĥ_φ and the
   isomorphisms 𝒥_w : Ĥ_φ ≅ R_{w(φ),g} over a finite E (DING25 p. 57; CEGGPS16 Lemma 3.22, p. 47).
   The design cites "SR.3/part-ii-principal-series-*" nodes. Neither the SR PR head (its §SR.3.2 is
   over ℂ) nor the SmoothRepresentationsOfLocalGroupsPartII design has them.
3. **split-gln-harish-chandra**, LieHighestWeight Layer 9: the Harish-Chandra isomorphism for the
   split reductive ∏_σ gl_n over a finite, not algebraically closed, E, in Ding's normalisation. On
   main, Layer 7 is stated over an algebraically closed field for Killing-semisimple algebras; Layer 9
   has only the Casimir for gl_n. `TauCeti.hcProjection` (present at the pin, contrary to the design's
   note that it postdates the pin) requires `IsKilling`.

Nothing else is missing. No text was unreadable, so there is no `needs-references.toml`. My first
fetch attempt (by DOI, then a URL without a licence class) wrote a `[[missing]]` entry to that
scratch file; the subsequent fetch with `--licence-class publisher-open` succeeded, and I deleted
the stale file.

## Notions moved down from later roadmaps

None. Every supplier is earlier in the merge order or on main.

## Duplication sweep and removals (by object)

- **Contracts LA1–LA6** were replaced by citations of LocallyAnalyticRepresentationsOfLocalGroups,
  which now plans all of Ding §3.1: LR.1 (ext-groups, ext1-extensions, self-extension-dual-numbers),
  LR.0/LR.1 (completed external tensor), LR.5, LR.6 (closed-induction, jacquet-emerton-functor),
  LR.7 (gln-conventions, pi-alg, principal-series-ps/-constituents, constituent-labels, ps1-and-pi1,
  self-extensions, constituent-ext-lines, zeta-w, ext-ps1, ext-pi1, finite-slope-amalgam,
  ext-filtration), LR.8 (all seven targets), LR.9 (all seven targets). That roadmap's "Downstream
  consumers" section maps LA1–LA6 onto these targets, and I checked each statement against its target.
- **Contracts TR1–TR5** were replaced by citations of TriangulineVarietyAndItsLocalModel §§9.1–9.3,
  9.6, 9.9, 10.1–10.8, 11.1–11.7, 12.8, 12.13–12.14, 12.16. That roadmap's consumer section maps
  TR1–TR5 onto these.
- **Contract TR6 and the smooth half of LA6** (deformation rings, (3.55)) were replaced by
  LocalGaloisDeformationRings §§0.4, 1.23. Its rank-one case gives R_δ and R_{δ,g}.
- **Robba ring, rank-one modules, Herr cohomology, étale equivalence**: the atlas ids PG.1/PG.2/PG.3/PG.7
  were replaced by PhiGammaModulesAndIwasawaCohomology §§1.0, 1.2, 3.4a, 3.6, 7.1–7.5.
- **The distribution algebras** (LocallyAnalyticDistributionsPartII ND.1–ND.2) are no longer a direct
  supplier. They are reached through LR.0–LR.1, which owns D(G,E) for noncompact G.
- **README API tables**: the design's proposed Lean names (`comparisonMap`, `minimalExtension`,
  `universalArtinianAction`, etc.) became prose, because `Suggested.lean` declares none of them.
- **Pinned libraries**: the only overlap is linear algebra (`LinearMap.ker`,
  `LinearMap.finrank_range_add_finrank_ker`, `LinearMap.quotKerEquivOfSurjective`, `TrivSqZeroExt`,
  `Module.Dual`, `DualNumber`, `Equiv.Perm`), all checked at Mathlib `6b7abb3` (files as cited in the
  README), and `TauCeti.hcProjection` (`TauCeti/Algebra/Lie/HighestWeight/CentralCharacter/HarishChandra.lean`,
  which requires `IsKilling`).
- **Ownership against open pull requests**: I searched by object (π_min, t_D, "Hodge parameters",
  Ding) across main, all 356 open PR heads (`roadmaps grep`) and the board packages. No other roadmap
  plans the comparison, π_min or the A_D-action. PhiGamma, LocalGaloisDeformationRings,
  AutomorphicFormsOnReductiveGroups and PadicHodgeTheory cite Ding only for conventions or inputs.
  This roadmap owns Ding §3.2.

## Corrections to the design

- The suppliers the design called "not designed" now exist. All gaps G-LA and G-TR were resolved into
  named targets, and the design's "Unresolved input chains" section was removed.
- Atlas node ids that do not exist in the supplier roadmaps (P7/…, SR.3/part-ii-…, R08.1/…, PG.n/…) were
  replaced by actual sections, or recorded as the gaps above.
- The pins were updated to Mathlib `6b7abb3` and Tau Ceti `a91d3aa`; `hcProjection` is at the pin.
- An explicit target End(D) = E (§5.1) was added, with a proof route. §1.23 of the deformation-ring
  supplier assumes it, and Ding states it without proof (p. 56).
- The proof of the infinitesimal-character theorem now names its input that 𝒵_K acts on π_1(φ,h) by
  ξ_λ: the scalar action on the Verma module M⁻(−λ), transported through Orlik–Strauch.
- In §2.4 the hypothesis "Ext¹ bijection compatible with refinements" is stated precisely, and Checks
  were added that separate it from a dimension equality.
- Source correction E12 (the twists of the p. 43 endpoint inductions) was recomputed at n = 2. E6
  (Cor. 2.14 sign) and E7 (labels) are noted as recorded in the supplier designs.
- Process narrative was removed (design ids, "atlas planet", "packet", review verdicts, stage labels).
- TeX-only subscript and superscript syntax (`_{…}`, `^{…}`) in README prose was put inside code spans
  (for example `R_{K,E}`, `π_{F_P}(φ,h)`, `ζ_{F_P}`). Every such token outside code is now in a code span,
  the mathematics unchanged. One code span that ran across a line break (the universal self-extension
  of δ_w, §5) was joined onto one line. Once backticks and whitespace are ignored, the README text is
  identical to what it was before. The gate's TeX, LaTeX and identifier scanners give 0 hits.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 endpoint families | n=1,2,3; w=(123), (132) | n=1: both {id}; n=2: S_end={id}, S_start={(12)}; n=3: #S_end = #S_start = 2; (123): w(3)=1, w⁻¹(3)=2 | holds; w vs w⁻¹ discriminated | Check added for the inverse confusion; n=4 block-move Check added |
| §0.1 block Weyl move | n=3, w=(23), j=1,2; n=4, i=2, j=1,3 | (23)(23)=id∈S_end; (12)(23) sends 3↦1 ∈ S_start; n=4: (24), (12) | holds | Check added |
| §0.2 block tuples | j=0, j=n, n=3 j=1 | (b,b,b), (a,a,a), (a,b,b); H_1∩H_2 ∋ (a,a,a) | holds | 1-based indexing (i ≤ j) fixed in place of the design's 0-based phrasing |
| §0.3 spanning | n=1; n=3 (a,b,c); dims n=3, d_K=1 | (c,c,c)+(a−b,0,0)+(b−c,b−c,0)=(a,b,c); 6 vs direct sum 2+4+4=10 | holds; (3.43) false | E1 kept |
| §0.4 presentation | n=1; n=3, d_K=1 | dim C = n!·n(1+d_K) = 36; Ker R_D = 36−10=26, Ker s_D = 36−9=27 | holds | the design's Check about the full Ext¹ was wrong; rewritten (R_D kills Ext¹_0 ⊂ Ext¹_w, s_D does not, so no factorisation through Ext¹) |
| §1.1 c_n | n=0..5; recursion | c_0..c_5 = 0,0,0,1,5,16; c_{n+1}−2c_n = n(n−1)/2: 0,0,1,3,6 ✓ | holds | recursion added as API; n=0 Check corrected |
| §1.2 gluing sign | (b,−b) vs (b,b) | t_F(b)−t_G(b)=0 vs 2t_F(b) | anti-diagonal needed | Check kept |
| §1.2 block weights | h=(3,1,−2) | h¹=(3,1), h²=(1,−2) | holds | kept |
| §1.4 comparison | n=1 | t_D = κ⁻¹ζ⁻¹, kernel 0 | holds | – |
| §1.5 kernel dim | K=ℚ_p n=1..5; n=3 d_K=2 | (2,2,0),(5,5,0),(10,9,1),(19,14,5),(36,20,16); (17,15,2) | holds | Check: full Ext¹ (dim 10 at n=3) would give kernel 0 |
| §1.6 transversality | n=3, K=ℚ_p | line in 10-dim space vs six 6-dim 𝔈_w | needs the refinement equation, not dimension | kept |
| §2.1 π_min | n=2; n=3 K=ℚ_p; 𝒦_D≠0 split | 𝒦_D=0 ⇒ π_min=V; one copy of A; split class = 0 ≠ inclusion | holds | – |
| §2.2 f_D | 𝒦_D=0; Ext¹(A,𝒦_D⊗A)≠0 | dim Ext¹(A,A)=n+d_K ≠0, so (3.45) does not give surjectivity | supplier input needed | kept (LR.7 constituent-ext-lines (2)) |
| §2.3 | n=3 K=ℚ_p | dim 𝔈^min = 9 = dim Q; 𝔈_w^min dim 6; full-Ext¹ g-space 1+n(n−1)d_K/2 = 4 ≠ 3 | holds | – |
| §2.4 characterisation | n=2; n=3 line L≠𝒦_D with L∩𝔈_{g′}=0; split V⊕A^{c_nd_K} | Π_L kills L under push-forward, while (2) forces kernel 𝒦_D; split socle A^{1+c_nd_K} | (1),(2) both needed | the design's dimension-only Check replaced |
| §2.5 χ_D | n=1; n=2 λ_σ=(2,0), λ_τ=(5,1); n=3 | χ_D=φ_1z^{h_1}; exponents (2,6) not 8; weight-sum at σ minus 3 = Σh_{i,σ} | holds; scalar weight-sum wrong | E2 kept |
| §2.5 central char of A | n general | η = (1, abs, …, abs^{n−1}) with abs = norm character gives abs^{0+1+…+(n−1)} = abs^N | holds | – |
| §2.6 HC tangent | n=2 at x_1=x_2; regular h | Jacobian of (x_1+x_2, x_1x_2) = x_1−x_2 = 0; Vandermonde ≠ 0 for strict h | regularity needed | E11 kept; Check added |
| §2.6 normalisation | ρ vs θ | ρ_i−θ_i = (n+1)/2−i−(1−i) = (n−1)/2 | central shift | Check added |
| §2.6 non-scalar | ψ = log_p∘det, K=ℚ_p | identity matrix acts with ε-part ≠ 0 | scalar action is special to 𝒦_D | Check rewritten concretely |
| §3.1 parabolic | P=G, P=B, n=3 (2,1), n=4 (3,1),(2,2) | kernels c_n d_K, 0, 0, d_K, 0 | holds | – |
| §3.2 parabolic minimal | n=4 (3,1) | quotient multiplicity c_3+c_1=1 vs c_4=5 | holds | maximality Check made precise |
| §3.3 σ-comparison | K=ℚ_p; n=3 d_K=2 | dim 𝔈_σ − dim Q_σ = (n+2^n−1)−(n+n(n+1)/2) = c_n: n=3: 10−9 = 1 | holds | – |
| §3.4 | n=2, d_K=1 vs >1 | π_min(D)_σ = π_{1,σ}, equals V iff d_K=1 | holds | – |
| §3.5 splitting | n=3 d_K=2 | 1+1 = 2 = c_3·2; 𝔈_σ∩𝔈_τ ⊇ 𝔈_g (dim 3) ≠ 0 | holds after dividing by 𝔈_g | – |
| §3.6 modification | K=ℚ_p; weights (3,1,0) at τ | D_σ = D; τ-weights become (0,0,0), so D_σ ∉ ΦΓ_nc for d_K>1 | regular hypotheses not reapplicable | kept |
| §3.7 | n=2; n=3 | 5 = 5; 9 = 9 | holds | – |
| §4.1 relation | n=3 | dim 𝒱_σ = 2(5+2) = 14, dim Q_σ(D_σ) = 9, dim ℒ = 5; (x,−x) vs (x,x) | holds; sign matters | – |
| §4.2 recovery | n≤2; n=3 K=ℚ_p | n=2: torus scaling transitive on lines avoiding both eigenlines (checked against DING25 line 2497); direction labels | "if"/"only if" swapped in source | E5 kept |
| §5.1 End(D)=E | n=2, Hodge line (1,1) vs (1,0) | diag(a_1,a_2) fixes the line E(1,1) iff a_1=a_2; the line E(1,0) is excluded by noncriticality | holds | new target with proof route |
| §5.1 algebras | n=1; n=3 d_K=1 | A_D=A_{D,id}, I=0; dims 10, 7, 3, R_D/𝔪² = 11 | holds | – |
| §5.2 universal ext | zero coefficient; b≠0 | split; class b | holds | – |
| §5.4 action | x,y radical | x∘y = 0 since p∘i_A = 0 | holds | the (3.58) codomain misprint is recorded |
| §5.5 annihilator | n≤2; n=3 K=ℚ_p | U[𝔪] = V; 1 copy of A vs 10 in U/V; U/𝔪U = U/A | annihilator ≠ quotient | the garbled design Check was rewritten |

Context and generality: the README and the Lean file agree trivially, since the Lean file states
nothing. The README keeps Ding's generality: any p, finite K/ℚ_p, E containing all embeddings, D
possibly non-étale. The n = 1 case is stated separately, because the TriangulineVariety layers assume
n ≥ 2.

## Sources

- **DING25**: fetched from `pmihes.centre-mersenne.org` (Mathdoc's open-access platform), with
  `--licence-class publisher-open` after I judged it a legal publisher open archive. Status
  `certified`. The SHA-256 matches the design's reading. I read lines 540–600 (Prop. 2.5) and
  2040–2632 (all of §3.2) myself, and checked the page locators of Props 2.5, 2.10, 2.12, Cors
  2.14–2.40 and Props 3.1–3.20. The manifest title was cleaned of MathML.
- **CEGGPS16**: arXiv 1310.0831v5, `certified`. Lemma 3.22 (v5 p. 47, line 1921) read. It is cited
  by the arXiv numbering, with a version note.

## Untrusted text

Nothing in the supplier READMEs, designs or sources asked for any action; nothing suspicious to quote.
