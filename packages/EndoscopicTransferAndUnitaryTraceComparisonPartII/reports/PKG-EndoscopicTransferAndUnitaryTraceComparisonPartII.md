# PKG-EndoscopicTransferAndUnitaryTraceComparisonPartII

Deliverables: `packages/EndoscopicTransferAndUnitaryTraceComparisonPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (cited_for mapped to README sections), and `design/plan.json` (top-level `gaps` only: each gap now carries `slug`, equal to its existing `id`; nothing else changed, checked mechanically by comparing every other top-level key before and after).

## Headline theorems

| Headline | README | Status at the pins | What it lacks |
|---|---|---|---|
| Endoscopic fundamental lemma for unitary Friedberg–Jacquet periods (Leslie25 Thm 2.12) | §4.10 | not statable | unitary group of a Hermitian space over a nonarchimedean quadratic extension as a locally compact group with hyperspecial Haar normalization; quotient measures on coset spaces of regular centralizer tori; relative and κ-orbital integrals; rational classes in a stable class with `inv`; the ordinary unitary transfer factor |
| Cyclic spherical endoscopic fundamental lemma (Leslie25 Thm 3.5) | §4.6 | not statable | spherical Hecke algebra of GL_n(E) with convolution; the module H(X_n); the twisted Levi map ξ_E; ordinary Lie transfer and its factor |
| Adjacent-rank spherical Jacquet–Rallis comparison (Leslie25 Thm 5.3) | §4.4 | not statable | Jacquet–Rallis matching; η-twisted GL_(n−1)-orbital integrals and unitary orbital integrals; unramified spherical base change |
| Hironaka's spherical Fourier isomorphism (Hironaka99 Thm 2, normalized) | §2.3 | not statable | Hironaka's spherical functions on X_n as rational functions of the spectral variables; spherical Hecke algebra of GL_n(F); normalized Satake transform |
| Fourier-defined Levi operator on the full module | §5.1 | not statable | the carriers of the previous row |

Mathlib at the pin has `MeasureTheory.Measure.haar`, `Matrix.unitaryGroup` over a star ring and quotient-measure API, and Tau Ceti has unramified local-field norm theorems and `Matrix.specialUnitaryGroup.star_eq_adjugate`; none of these provides the analytic spherical Hecke algebra, Satake transform, stable classes or transfer factors, and Tau Ceti's HeckeRing GL_n modules are the arithmetic p-local Hecke rings over ℤ. Stating any headline would need a long ad hoc encoding of these carriers, which the acceptance rules exclude. `Suggested.lean` therefore states no declaration; its module docstring names each headline and its missing carriers.

## Elaboration

`lake env lean <Suggested.lean>` run from the content checkout: exit 0, **0 `sorry` warnings, no other messages**. The file has no declarations, so the `#check @name` binder comparison had nothing to compare (done vacuously; no change).

## Corrections made to the design

1. Internal target handles (`FJ.k/…`) and the "Its direct consumers are …" lines replaced by README section numbers ("Used by §…"), and `*Needs:*` lines deduplicated to sections.
2. Review note F01 applied: the two unlabelled AdelicAlgebraicGroups §2.2 bullets are cited by their titles, "Weil's formula for integrable functions" and "quotient measures in stages"; only *quotient-measure* is used as a label.
3. Mathlib `HasStrictFDerivAt.implicitFunction`: the design described it as needing a complemented kernel. The declaration cited (Implicit.lean, line 464 at the pin) is in the `FiniteDimensional` section: complete nontrivially normed field `[CompleteSpace 𝕜]`, complete source, `[FiniteDimensional 𝕜 F]` target, surjective strict derivative, and the complement is automatic. The contract now says that, and that over F a complete absolute value is used.
4. SmoothRepresentationsOfLocalGroups §SR.4.3 (*parabolic-descent*, read at the PR head) is stated for GL_n(E) only. The design's contract said it also supplies "an F-version with q^(−b/2)". Corrected: ξ_F on GL_n(F) is defined in §2.2 here by the same construction (a specialization, not a new carrier), and the contract says so.
5. The design's "Acceptance-test boundary" section was moved into the `Suggested.lean` docstring; its sentence on Tau Ceti's HeckeRing GL_n moved to Scope and ownership.
6. §3.6 "correcting the mistyped upper test in the source" now cites Source corrections E07; two source issues that the accepting review recorded but the design README did not list were added as E15 (Proposition 4.8 hypothesis is needed in ranks a and b too) and E16 (Leslie25 §2.3 p. 20 two orbit representatives at n=0).
7. Supplier-gap sentences put in the exact form `What <Supplier> must provide (gap:<slug>): <needs>`.
8. Conventions reorganized into three named standing settings (étale, field, unramified), each subsection naming its setting; `K_n,F` added to notation. Thin layer "Examples" were replaced by computed worked examples (rank-one Layer 0 and 2 chains, a=b=1 Layer 1 labels, the rank-one germ inversion, the n=2 graded chain through H_2 and ξ_F, and the values of ξ_X on e_0, e_(1,0), e_(1,1), e_(2,2)).
9. §2.1 module action written as ∫φ(g)f(g⁻¹∗y)dg (equal to the design's form by g↦g⁻¹, unimodular group).

## What the README could not support

Nothing was cut. Unrestricted relative transfer (Leslie19 Conj. 4.4) and full-module orbital transfer (Leslie25 Remark 3.7) are open problems and are named as non-targets in Scope.

## Notions moved down from later roadmaps

None. All suppliers precede this roadmap in the merge order (the gate shows no problem).

## Duplication sweep and ownership

Searched by object with `roadmaps grep` over main and all open roadmap PR heads (Friedberg–Jacquet, Jacquet–Rallis, Hironaka, Hermitian spherical functions, Leslie, germ inversion) and the pinned Mathlib/Tau Ceti (Satake, orbital integral, spherical Hecke, unitary group, Hermitian):

- GeometryOfNumbersAndQuadraticArithmetic §3.2 owns Hironaka's spherical functions on U(2n)/(U(n)×U(n)) and the Hermitian Siegel series: a different space from X_n = invertible Hermitian matrices with the GL_n(E) action, so §2.3 here is not a duplicate; recorded in Scope.
- GanGrossPrasadUnitaryGroups (open PR) cites Jacquet–Rallis only for its global comparison and consumes this roadmap; it owns no local Jacquet–Rallis carrier.
- EndoscopicTransferAndUnitaryTraceComparison (open PR) has no Jacquet–Rallis section; the local Jacquet–Rallis inputs remain the three declared gaps on it.
- Mathlib: the Hermitian-product and charpoly-commutation facts in §0.2 are cited, not restated (as in the design).
- No definition or theorem of this roadmap exists at the pins or in another roadmap; no removals were needed beyond what the design already imports. This roadmap is the owner of the relative symmetric-space objects because no roadmap on main or in an open PR treats the pair (U(W₁⊕W₂), U(W₁)×U(W₂)).

Every cross-roadmap citation was resolved at its source: EndoscopicTransferAndUnitaryTraceComparison §§1.1, 1.4, 1.5, 1.14, 1.17(a)–(c), 2.1, 2.4, 2.9, 2.11, 2.12, 3.3, 4.7, 4.9(b) (PR head); GeometryOfNumbersAndQuadraticArithmetic §2.7 `IntegralHermitianLattice.ofCarrier`/`.dual`, §2.9 `SignedHermitianSpace`/`signedHermitianAdjoint`, §3.2 (PR head); AdelicAlgebraicGroups §2.2 (PR head); SmoothRepresentationsOfLocalGroups §§SR.4.1, SR.4.3 and ReductiveGroupsPartII RG2.0 *smooth-group-analytic-charts* (PR head); MetaplecticAutomorphicForms §2.1 `weilIndex`, §2.5 `weil_generators`, §3.2a `splitHermitianOscillator` (PR head); SchemeAndStackFoundations §1.24 (main). Pinned declarations re-opened at Mathlib 6b7abb3 and Tau Ceti a91d3aa: all exist with the stated signatures. `roadmaps resolve` on the README: no citation and no Lean name found nowhere.

## Sources

All five manifest entries are certified open texts; no new work is cited, nothing was fetched, and no `needs-references.toml` was written. Spot-checked: Leslie25 line 873 (Thm 2.12, p. 21), lines 2000–2005 (Thm 5.3, p. 43), line 1248 (Cor. 3.10, p. 29). No suspicious instructions were found in any read text.

## Adversarial pass

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Conventions, factor witness | a=b=1, λ_a−λ_b=π, unramified | η(π)|π|_F=(−1)(q⁻¹)=−q⁻¹; q=2: −1/2 | holds |
| Conventions, ordered sign | E=ℚ₃(√3) | (−1,3)_3=(−1/3)=−1, so η(−1)=−1 | sign needed off the unramified case |
| §0.1 split action | n=1, (g,h)=(2,1), (A,B)=(1,1) | (gAh⁻¹,hBg⁻¹)=(2,1/2), AB=1 both; wrong model gBh⁻¹ gives (2,2), AB=4 | Check discriminates |
| §0.1 sign | X=1 rank one | δ=[[0,1],[−1,0]], δ*=−δ; δ²=−I | holds |
| §0.2 charpoly equality | square X over comm. star ring | charpoly(−X·Xᴴ)=charpoly(Xᴴ·(−X)) by `charpoly_mul_comm` (A=−X, B=Xᴴ) | holds; rectangular X not claimed |
| §0.2 nonstandard forms | ⟨1⟩,⟨ε⟩, X=1 | X^τ=ε⁻¹, r₁=−ε⁻¹ | Check correct |
| §0.3 section | det B≠0, h=B⁻¹ | (Ah⁻¹,hB)=(AB,I); P(A,B)=P(AB,I); charpoly diag(1,π)=T²−(1+π)T+π | trace kept |
| §0.4 block charpoly | X rank one, ⟨1⟩,⟨π⟩, z=1; z=0; split A=diag(1,0),B=I | det(T²+XX^τ): T²+π⁻¹; T²; T²(T²+1) | regularity needs invertibility |
| §0.5 image | unramified rank one | −N(E^×)=even valuations; −1∈, −π∉ | rational image proper |
| §0.6 lift | vol J=2, h=1_B | ∫h(b)1_J/vol J=h(b); without /vol J: 2h | denominator needed |
| §0.7 scaling | c₁,c₂,c_T=2,3,4 | 2·3/4=3/2; c_T=2 alone: 1/2 | holds |
| §0.8/0.9 rank one | f=1_O_E, X=1,π,π⁻¹ | RO=1,1,0; r_!f(−N(X)) at valuations 0,2,−2: 1,1,0 | equal |
| §1.1 labels | a=b=1 | (F^×/N)²: 4 pairs; centre dims 2 vs 1 for split | holds |
| §1.3 sums | D=C₂, values 2,5 | SRO=7; κ-sum −3; shifted 3=(−1)⁻¹(−3) | holds |
| §1.5 lift | vol J=2 | (1/2)1_(B×J)↦1_B | holds |
| Layer 1 example | (α,β)=(π,1), a=b=1 | target det valuation odd+even=odd, source det valuation even ⇒ no match | unmatched clause only |
| §2.1 rank zero | n=0 | one point, basis {e_0} | n>0 qualifier kept |
| §2.1 action form | g↦g⁻¹ | ∫φ(g⁻¹)f(g∗y)dg=∫φ(g)f(g⁻¹∗y)dg (unimodular) | rewritten, equal |
| §2.2 BC vs ξ | n=2, a=b=1 | Sat_F(T_(2,0))=q(T₁²+T₂²)+(q−1)T₁T₂ from T_(1,0)²=T_(2,0)+(q+1)T_(1,1); BC(T_(1,0),E)↦q(T₁²+T₂²)=T_(2,0)−(q−1)T_(1,1); Z₁Z₂↦q⁻²XY | odd coweight occurs (E10) |
| §2.3 rank one | e_j | ê_j=(−1)^jU^j ↦ (−1)^j(−T)^j=T^j | H_1(e_j)=1_(π^jO_F^×); U↦T gives −1 at j=1 |
| §2.3 rank two cyclic | ê_(2,0)+(q+1)ê_(1,1) | q(U₁²+U₂²)+(q+1)U₁U₂−(q+1)U₁U₂=q(U₁²+U₂²)=Sat_E(c_2,1)(Z=U²) | consistent with §4.8 |
| §2.3 freeness | n=0,1,2 | ranks 1,2,4; U₁U₂∉ℂ[U^(±2)]^(S₂) | 2^n |
| §3.2 Tate value | 1_O_F, 1_O_F^×, 1_(πO_F^×) | Σ(−q^(−s))^k→1/2; 1; η(π)=−1 | raw germ 1/2 |
| §3.3 inversion | r=0,1,2 | HHᵗ=I,2I,4I ⇒ 1,1/2,1/4; rank one 1/2=(1/2)(1+0) | factor 2^(−r) (E11) |
| §3.4 Jacobian | a=b=1, m₁=π | d(πu′)=q⁻¹du′ | holds |
| §3.5 sign | ℚ₃(√3), x_a=0, x_b=1 | D=−1, cyclic det 1; η(−D)=1 vs η(D)=−1 | signed form needed |
| §3.6 averaging | F[x]=F×F, a=b=1 | 2⁻²=2⁻¹·2⁻¹ | cancels |
| §3.7 trace kernel | u=w=w′=1 | Tr(2)=4=2+2; N(2)=4≠2 | trace, not norm (E08) |
| §3.8 generation | w, n(t), t∈π⁻¹O_F | diag(π⁻¹,π) conjugates n(t) to n(π⁻²t); ∪π^(−1−2j)O_F=F | SL₂ generated |
| §4.1 ramified | ℚ₃(√3) | unit norms a²−3b²≡a² mod 3 ∈{1}; −1≡2 | no c; unramified scope kept |
| §4.2 shells | d=1,−1 | ↦e_2, e_(−2); odd valuation 0 | holds |
| §4.7 n=2 grade 2 | Gram diag(π²,1), πI₂ | m₀=1 (L∨/L≅O_E/π²); m₀=q+1 (isotropic lines of a Hermitian plane over 𝔽_(q²)) | Φ_2,2=e_(2,0)+(q+1)e_(1,1), matches §2.3 row |
| §4.7 rank zero | n=0 | Φ_0=e_0, density empty product 1 | compact |
| §4.8 degrees | n=2, d=1,2 | q(Z₁+Z₂)↦X+Y; q²h₂↦X²+XY+Y² | holds |
| §4.9 single datum | (π,1), source ×2 | Ξ-assertion vacuous; ordinary identity at (2,0) needs 2≠1 | family form required |
| Layer 4 example | n=2, d=1 | ξ_F(q(T₁²+T₂²))=X²+Y²=Sat of (H₁⊗H₁)(e_2⊗e_0+e_0⊗e_2) | consistent |
| §5.1 values | e_0, e_(1,0), e_(1,1), e_(2,2) | e_0⊗e_0; −(e_1⊗e_0+e_0⊗e_1); −T₁T₂↦−q⁻¹XY ⇒ −q⁻¹e_1⊗e_1; U₁²U₂²↦q⁻²X²Y² ⇒ q⁻²e_2⊗e_2 | cyclic compatibility holds; dictionary sign pinned |
| Context / generality | Suggested.lean | no declarations | README generality not narrowed |

## Dependency check

```text
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line; the roadmap is already in the merge order after EndoscopicTransferAndUnitaryTraceComparison.
