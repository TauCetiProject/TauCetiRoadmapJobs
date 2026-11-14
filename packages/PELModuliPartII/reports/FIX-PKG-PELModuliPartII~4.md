# FIX-PKG-PELModuliPartII~4: repair of the review REV-PKG-PELModuliPartII~3

The review lists three findings (F01 P1, F02 P2, F03 P3). All three were verified against the
README, the cited sources and the supplier roadmap, and all three are applied. Only
`packages/PELModuliPartII/README.md` changed; `Suggested.lean`, `metadata.toml`, `sources.toml` and
`design/plan.json` are unchanged (no new source, no new supplier gap).

## REV-PKG-PELModuliPartII~3/F01 (P1) — applied

Verified. The arrow law of §6.6 (first API bullet) is μ₀^∨∘λ₀′∘μ₀=λ₀ for an arrow
(A₀,ι₀,λ₀)→(A₀′,ι₀′,λ₀′); RSZ21 §3.3 (RSZ21 line 649) uses exact pullback. With μ₀=ι₀(c), c=1+√2
fixed by the CM involution, the Rosati condition gives ι₀(c)^∨∘λ₀=λ₀∘ι₀(c), so
ι₀(c)^∨∘λ₀∘ι₀(c)=λ₀∘ι₀(c²): ι₀(c) is an arrow **into** (A₀,ι₀,λ₀) **from** the triple with
polarization λ₀∘ι₀(c²). The old Check had the direction reversed: ι₀(c) pulls λ₀∘ι₀(c²) back to
λ₀∘ι₀(c⁴)=λ₀∘ι₀(17+12√2)≠λ₀.

Change (§6.6 Checks, second bullet): "an arrow to (A₀,ι₀,λ₀∘ι₀(3+2√2))" → "an arrow from
(A₀,ι₀,λ₀∘ι₀(3+2√2)) to (A₀,ι₀,λ₀)". It also says why the source is an object (same kernel A₀[a], same
Rosati involution), computes the reversed labelling's failure (c⁴=17+12√2), and gives ι₀(c⁻¹)=ι₀(√2−1)
as the arrow in that labelling.

Pattern search: every other arrow convention in the README (§0.2 relative polarizations, §1.1
ρ*λ_𝕏=λ, §5.3 unit-similitude arrows, §6.3 and §8.1 common-scalar arrows, §7.1 line "An arrow
scaling λ by c≠1 …") states the law without a worked direction and is consistent with exact
pullback. No other occurrence needed a change.

## REV-PKG-PELModuliPartII~3/F02 (P2) — applied

Verified. The carrier of C (Mih19 Definition 2.2 and footnote 3, Mih19 lines 267–304) needs
supersingularity, not failure of μ-ordinarity. At K₀=K=ℚ_p, L=ℚ_{p²} and signature (r,s), the Hodge
cocharacters at the two embeddings are (1^r,0^s) and (1^s,0^r). Frobenius swaps them, so the
μ-ordinary slopes are (1^{min},(1/2)^{|r−s|},0^{min}), each taken twice. At n=1, signature (1,0),
this gives slopes 1/2,1/2: supersingular, and C=id applies.

Change (§0.4 Checks): "A μ-ordinary object is not an input of C." → "The domain of C is cut out by
supersingularity, not by failure of μ-ordinarity …". The new Check gives the μ-ordinary slope formula,
"supersingular exactly when rs=0", and the n=1 counter-control (𝔈 of §1.3, height 2, dimension 1,
C(𝔈)=𝔈). The n=2, signature (1,1) calculation (slopes 0,0,1,1, not formal) is kept. The theorem
of §0.4 and the local-model routes of §§7.2 and 7.9 are unchanged.

Pattern search: "μ-ordinary" and "ordinary" also occur at §7.2 Route, §7.9 Route and §9.1 Checks.
None of them claims that μ-ordinary objects are excluded from C, so none needed a change.

## REV-PKG-PELModuliPartII~3/F03 (P3) — applied

Verified. GeometryOfNumbersAndQuadraticArithmetic, read at the head of its open pull request through
`roadmaps show`, uses the opposite convention. §2.7 `IntegralHermitianLattice.ofCarrier` takes the
form "conjugate-linear in its first argument and linear in its second". The §2.9 Check uses
conj(x)y. This roadmap's forms are L-linear in the first argument (Conventions; §1.5).

Change (Conventions, "Strict modules and heights"): added a bridge. Results imported from §§2.7 and 2.9
are applied to the transpose H(x,y)=h(y,x)=ε·conj h(x,y). H has the same isometries, adjoints, dual
lattices and invariant factors, and an equal Gram determinant (the Gram matrices are transposes).
Added witness item 9: L=ℚ₃(u), u²=3, h(u,1)=u against the supplier's −u. The supplier contract
gained one sentence citing the bridge.

Note on the suggested repair: the review's formula H=conj(h) holds only for hermitian forms. §2.9
imports ε-hermitian (signed) forms, and for ε=−1 the transpose is −conj(h). The bridge is therefore
stated as the transpose h(y,x), which works for both signs. The review's reason for equal
determinants ("hermitian Gram determinants lie in K") also fails for ε=−1 at odd rank: there the
determinant has trace zero. The bridge instead uses det G_H=det G_hᵀ=det G_h, which holds for both
signs.

The imports in §§1.5, 2.3, 2.5, 3.6, 3.7, 5.4, 5.5, 5.8, 6.7, 6.8, 8.4, 9.3 and 9.7 all go through the
Conventions bridge, so their texts are unchanged. None of them states an off-diagonal value or a
linearity side that would change.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §6.6 arrow Check, forward direction | F⁺=ℚ(√2), F=ℚ(√2,i)=ℚ(ζ₈), c=1+√2 (norm −1, a unit) | ι₀(c)^∨λ₀ι₀(c)=λ₀ι₀(c̄c)=λ₀ι₀(c²), c²=3+2√2, conjugate 3−2√2≈0.17>0 | Arrow (λ₀ι₀(c²))→(λ₀): law holds |
| §6.6 arrow Check, reversed labelling | same | ι₀(c)^∨(λ₀ι₀(c²))ι₀(c)=λ₀ι₀(c⁴), c⁴=17+12√2≠1 | Fails, as now stated |
| §6.6 inverse arrow | c⁻¹=√2−1, c⁻²=3−2√2 | ι₀(c⁻¹)^∨(λ₀ι₀(c²))ι₀(c⁻¹)=λ₀ι₀(c²c⁻²)=λ₀ | Arrow (λ₀)→(λ₀ι₀(c²)): stated |
| §6.6 source is an object | ker(λ₀ι₀(c²)), Rosati of λ₀ι₀(c²) | ι₀(c²) is an automorphism, so ker = ι₀(c²)⁻¹(A₀[a]) = A₀[a]; Rosati: ι₀(c⁻²)ι₀(ā)ι₀(c²)=ι₀(ā); symmetric: (λ₀ι₀(c²))^∨=λ₀ι₀(c̄²)=λ₀ι₀(c²) | Object of M₀^a |
| §6.6 degenerate unit c=−1 | c²=1 | ι₀(−1) pulls λ₀ back to λ₀ | Automorphism; the Check rightly uses c²≠1 |
| §0.4 μ-ordinary slopes, K₀=K=ℚ_p | (r,s)=(1,0),(2,0),(1,1),(1,2),(2,2) | averages (1/2); (1/2,1/2); (1,0); (1,1/2,0); (1,1,0,0), each doubled: total 2,4,4,6,8=2n | supersingular iff rs=0: (1,0),(2,0) yes; others no |
| §0.4 rs=0 forces supersingular (all objects) | relative Dieudonné M=M₀⊕M₁, signature (n,0) | dim M₀/VM₁=n ⇒ VM₁=πM₀; dim M₁/VM₀=0 ⇒ VM₀=M₁; V²=π·unit | all slopes 1/2 |
| §0.4 n=1 control | 𝔈, signature (1,0) | relative height 2, dimension 1, slope 1/2; C=id at K₀=K | In domain of C |
| §0.4 n=2 control (kept) | signature (1,1) | slopes 0,0,1,1; étale height 2; not formal | Outside domain |
| §0.4 consistency with U(1,n−1) | (1,n−1), n=3 | slopes 0,0,1/2,1/2,1,1: étale height 2, multiplicative height 2 | Agrees with the known μ-ordinary locus; Layer 7 route needs no C |
| Conventions bridge, linearity | H(x,y)=h(y,x) | H(ax,y)=h(y,ax)=ā H(x,y); H(x,ay)=a H(x,y); H(y,x)=h(x,y)=ε conj h(y,x)=ε conj H(x,y) | conj-linear first, ε-hermitian same ε |
| Conventions bridge, ε=−1 | rank one, h(x,y)=u x ȳ (skew-hermitian since ū=−u) | h(1,1)=u; H(1,1)=u; −conj h(1,1)=−(−u)=u; conj h(1,1)=−u≠H(1,1) | H=ε·conj h, not conj h: stated so |
| Bridge, dual lattices | Λ=O_L e, h(e,e)=ϖ^a | {x: h(x,Λ)⊆O_L}=ϖ^{−a}O_L e equals {x: H(x,Λ)⊆O_L} because O_L is conj-stable | Equal |
| Bridge, Gram determinant, odd rank skew | n=1, ε=−1, G_h=(u) | det G_h=u∉K (trace zero); det G_H=det G_hᵀ=u | Equal, though not in K: wording uses transposition, not "lies in K" |
| Bridge, adjoint | h(ax,y)=h(x,a*y) | H(ax,y)=ε conj h(ax,y)=ε conj h(x,a*y)=H(x,a*y) | Same adjoint |
| Bridge, isometries | g with h(gx,gy)=h(x,y) | H(gx,gy)=h(gy,gx)=h(y,x)=H(x,y) | Same |
| Witness item 9 | L=ℚ₃(u), u²=3, ū=−u, h(x,y)=xȳ | h(u,1)=u; supplier x̄y at (u,1)=−u; h(1,u)=ū=−u; h(1,1)=H(1,1)=1; h(u,u)=H(u,u)=−u²=−3 | Off-K value distinguishes; diagonal does not |

## Checks run

- `lake env lean packages/PELModuliPartII/Suggested.lean` (from the content checkout): exit 0, no
  output, no warnings. The file has only `import Mathlib`, so no Tau Ceti module needed building.
  It has no named declarations (unchanged this round), so the `#check @name` signature comparison has
  nothing to compare: no binder changed.
- Dependency check
  (`gate --depcheck … --name PELModuliPartII --order … --movable --content …`), complete output:

      depcheck: 236 roadmaps, 2145 edges, 0 problem(s)

  Exit 0; no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no own Lean name found nowhere.
  It reports that Lean names outside TauCetiRoadmap were not checked, since no pinned Lake packages
  exist on this host. The edits of this round add no backticked library declaration.
- Gate failures listed in the brief: none at the start. The worker's check then reported `tex=3`:
  three TeX-only superscripts (caret followed by a brace) outside code spans in the μ-ordinary
  Check of §0.4 (the bullet on the domain of C). The slope vector written with braced exponents became
  the prose "slope 1 with multiplicity min(r,s), slope 1/2 with multiplicity |r−s| and slope 0 with
  multiplicity min(r,s)". The mathematics did not change: per embedding the multiplicities add up to
  min(r,s)+|r−s|+min(r,s)=r+s=n, and each slope is taken twice, giving 2n. No other line was edited.

## Ownership, overlaps and suppliers

- No new object or supplier is introduced. The convention bridge concerns how this roadmap consumes
  GeometryOfNumbersAndQuadraticArithmetic §§2.7 and 2.9, read at the head of its open pull request.
  That roadmap is earlier in the merge order and is cited by name and section. It is not a new
  target and asks nothing of the supplier.
- `scratch/overlaps.md` lists no open pull request that changes this roadmap and no dropped or
  revision-only id. No id was renumbered this round.

## For the maintainer

- No name that another roadmap cites changed; no section was renumbered or added.
- The F03 repair departs from the review's formula: the transposed form h(y,x) is used instead of
  conj(h) so that it also covers the skew-hermitian forms of GeometryOfNumbersAndQuadraticArithmetic
  §2.9 (see F03 above).
- No missing source text; `needs-references.toml` was not written.
