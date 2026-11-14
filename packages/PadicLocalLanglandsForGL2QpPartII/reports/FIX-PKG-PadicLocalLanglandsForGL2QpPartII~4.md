# Repair report: PadicLocalLanglandsForGL2QpPartII

The findings come from the review `REV-PKG-PadicLocalLanglandsForGL2QpPartII~3`. Section numbers below refer to `packages/PadicLocalLanglandsForGL2QpPartII/README.md`. I made every verdict and computation myself against the cached legal texts, and used no helper agents. The changes touch `README.md` and the module docstring of `Suggested.lean`. `sources.toml`, `metadata.toml` and `design/plan.json` are unchanged.

## F01 (P1) — applied

Conventions: E′_b now covers only compact-type and Fréchet spaces; a Banach W gets W*, the dual in compact convergence (CDN23 lines 182–184). Banach duals ′_b → * in the summary, §§4.2, 4.10–4.14, 6.1–6.6, the Layer 4 and 6 Examples and the docstring. §4.10 now fixes the topology on bounded vectors. Added the Dirac-orbit Check in §4.2.

## F02 (P1) — applied

Layer 6 Example: "rank-two family whose fibre is Π(ρ_x)′_b⊗ρ_x" → ρ alone has rank two, and the summand's 𝔪_x-torsion is Π(ρ_x)*⊗_κ(x)ρ_x⊗Hom_L(κ(x),L), which is Π(ρ_x)*⊗_κ(x)ρ_x by the trace form. The §6.6 Check now uses that torsion (CDN23 lines 2837–2847). Added the L⟨T⟩ Check (fibre 0, torsion L·ev₀). §6.1's fibre of Π*(ρ) is kept.

## F03 (P2) — applied

Levels: "Σ₀ consists of two copies of Ω" → one ℚ_p-model, with the Weil descent swapping the height classes (CDN23 lines 220–229; EndoscopicTransferAndUnitaryTraceComparison §12.19), so Σ₀ = Ω×Spec ℚ_p². Added the §0.1 Check (H⁰ invariant dimensions 1, 2, 1). The two Σ₀ examples in Layer 7 now work over ℚ_p². Added source correction E20.

## F04 (P3) — applied

§7.2, k = 1 Check: "which is four copies of π′" is replaced. The cokernel π′⊗M*_dR⊗Sym¹ has G acting trivially on M*_dR and algebraically on Sym¹, so it is two copies of π′⊗Sym¹. Added the central-scalar test: pI₂ acts on it by p, matching the middle term, but by 1 on four copies of π′.

## F05 (P3) — applied

§6.2 Check: the G-factor twist χ_G is now χ_G⁻¹, because (St^cont⊗η_Gχ_G)* = (St^cont⊗η_G)*⊗χ_G⁻¹. χ stays on the Galois factor and χ_Ǧ on JL(M), and the block moves when χ̄ ≠ 1. Added the cubic Check at p = 7: the dual has scalar η(a²)⁻¹ζ₃, whereas the wrong twist gives η(a²)⁻¹ζ₃².

## Evidence read for the verdicts

- F01: CDN23 footnote 8 (lines 182–184) specifies compact convergence on the dual of a Banach space. CDN23 Lemme 5.3, Proposition 5.7, Théorème 5.8 and Lemme 5.9 (lines 2381–2500) state everything with Π*. CDN20 §1.3.2 (lines 633–644) uses the weak topology, which agrees with compact convergence on bounded subsets. CDN23 line 2399–2400 keeps X′ for strong duals. The Dirac computation is in the table below.
- F02: CDN23 Théorème 5.24(ii) proof, lines 2837–2851. It computes m_(B,M)[𝔪_x] and the dual quotient m̌/𝔪_x, never the ordinary fibre of m_(B,M). Definition 5.14 (lines 2606–2614) and line 181 support the ordinary fibre of Π*(ρ) alone.
- F03: DLB17 lines 102–106 define Σ_n as the ℚ_p-model obtained from non-effective descent data. Lines 114–116 call Σ₀ two copies of Ω. CDN23 lines 220–229 give the W-equivariant map to Ω, M_0 = ℤ×Ω and the W-action on π₀ through reciprocity. EndoscopicTransferAndUnitaryTraceComparison §12.19 (open head) keeps the Frobenius exchange.
- F04, F05: these are computations inside the README's own definitions. F05 uses the §6.2 definition, which agrees with CDN23 lines 2553–2557, and the inverse-dual rule of Conventions.

## Computed adversarial pass

| Statement (new or changed) | Instances tried | Values computed on each side | Result / change |
|---|---|---|---|
| Conventions: W* in compact convergence; G acts continuously on Π* | St^cont, μ = δ₀ − δ_∞, g_n = u(pⁿ), p = 2, 3; trivial Π = L | g_nμ − μ = δ_(pⁿ) − δ₀. Norm is 1 for all n: the indicator of pⁿℤ_p^× has quotient norm ≤ 1 and pairing 1, and the upper bound |f(pⁿ)−f(0)| ≤ ‖f mod L‖. Compact-open value → 0 by equiboundedness and a finite ε-net. For Π = L every topology is that of L. | The norm topology fails and compact convergence passes. Added the §4.2 Check. Joint continuity: G×K → Π is continuous, so (ℓ_α−ℓ)(g_α⁻¹v) → 0 uniformly on the compact set U⁻¹K. |
| Conventions: bounded subsets of W* are norm-bounded, and the topology there is pointwise | {p^(−n)(δ_a−δ_b)} in (St^cont)*; equicontinuous sets | The norms p^n are unbounded, and the values at 1_U (U ∋ a, ∌ b) are p^n, so the family is not pointwise bounded either. On a norm ball, pointwise = compact convergence (Ascoli). | Pass. |
| Conventions: on compact-type E, compact convergence = strong | π₀ of countable dimension; Π^an | Bounded subsets of π₀ lie in finite-dimensional subspaces and are relatively compact over the locally compact L. Compact type: a bounded set lies in one stage and is relatively compact in the next (LocallyAnalyticDistributions §0.0). For infinite-dimensional Banach W the unit ball is not compact and the topologies differ (Dirac witness). | Restricted to compact type; Banach duals use *. |
| Dual central character | Π = χ one-dimensional; z ∈ Z(G) | z acts on Π* by χ(z)⁻¹, and the same holds on E′_b. | The §0.2 Check now covers both duals. |
| §4.10(a)–(c) with topology | Π = L; Π = St^cont; π₀ = St^sm; Π^an → Π | (a) unitary orbits are norm-bounded, so (Π*)^b = Π*. (b) δ_(pⁿ)−δ₀ is G-bounded; in (St^sm)′_b its value at a locally constant f is eventually f(0)−f(0) = 0; in (St^cont)* it tends to 0; its norm is 1. (c) On a norm ball the (Π^an)′_b topology lies between pointwise convergence on Π^an and compact convergence on Π, and these agree by equicontinuity and density. | Pass. The topology on bounded vectors is now stated; added the δ_(pⁿ)−δ₀ Check. |
| §4.9/§4.10: topology of H¹_ét[M] | Integral lattice H⁺, p^(−N)H⁺ | p^(−N)H⁺ is compact (profinite) and maps injectively and continuously into the Hausdorff H¹_proét[M], hence homeomorphically. Globally L⊗H⁺ is finer than the subspace topology. | Stated as agreement on lattice multiples. |
| §§4.12–4.14: Hom out of Π* | Π = St^cont⊗δ_G; Π = Π_(M,ℒ); reversed direction | Compact convergence is coarser than the norm topology, so Hom(Π*, X) ⊂ Hom(Π′_b, X). CDN23 states its dimensions (δ_Ǧ; ℒ⊗JL(M); V_(M,ℒ)⊗JL(M)) for Π*. Reversing the direction still gives the dual of V_(M,ℒ). | Notation now matches the source. |
| §6.4: H¹_ét[M] ↪ X⁺_st(M)⊗̂(LL(M)^∧)* | LL(M) supercuspidal irreducible | LL(M) is smooth admissible of finite length, so §4.10(b) gives (LL(M)′_b)^b = (LL(M)^∧)*, matching CDN23 line 2797. | Pass; §4.10(b) now cited. |
| §0.1: Σ₀ over ℚ_p | K = ℚ_p, ℚ_p², ℚ_p(√p); p = 2 | Invariants of H⁰(Σ₀⊗C, L) = L² have dimensions 1, 2, 1, versus 2, 2, 2 for split copies over ℚ_p. In general the dimension is 2 iff f(K/ℚ_p) is even. At p = 2 the swap sends (1,−1) to (−1,1) ≠ (1,−1) because the coefficients have characteristic 0. Inertia maps into ℤ_p^×, so it preserves the height classes. | Added the Check and the descent statement. |
| §7.5 Check over ℚ_p² | f = (1,−1), j = 0, 1, 2 | (z^j/j!)^(j) = 1 and (−z^j/j!)^(j) = −1, while a pullback from Ω has equal coordinates. | Pass over ℚ_p², where the components split. |
| Layer 6 Example: 𝔪_x-torsion | A = L⟨T⟩, x = 0; R = L; κ(x) quadratic over L | Ǎ = ℓ^∞ with T the left shift (Tℓ)_n = ℓ_(n+1). Its kernel is L·ev₀ and its cokernel is 0, so κ(x)⊗(P⊗Ǎ) = 0 while (P⊗Ǎ)[T] = P/TP for torsion-free P. For R = L the torsion equals the whole module, m_B(Π(ρ_x)*)⊗ρ_x. For [κ(x):L] = 2, Hom_L(κ(x),L) has L-dimension 2 and κ(x)-dimension 1, and the trace form identifies it with κ(x). | Rewritten; added the §6.6 Check. Flatness holds because Hom^cont_A(LL_B(M),A) is torsion-free over the domain A. |
| Layer 6 Example: ranks | ρ free of rank 2; fibre of Π*(ρ) | κ(x)⊗ρ has dimension 2. κ(x)⊗Π*(ρ) = Π(ρ_x)* is infinite-dimensional, so Π*(ρ) is not finitely generated. | "Rank two" is now attached to ρ only. |
| §6.2: twisting | p = 7, χ of order 3, χ(7) = 1, χ(a) = ζ₃; quadratic χ | aI₂ acts on St^cont⊗η_Gχ_G by η(a²)ζ₃², on its dual by η(a²)⁻¹ζ₃, and on (St^cont⊗η_G)*⊗χ_G⁻¹ by η(a²)⁻¹ζ₃. The old twist gives η(a²)⁻¹ζ₃². The ΦNᵖ condition (ηχ)(7)² = η(7)² is preserved. A quadratic χ has χ(a²) = 1 and cannot tell the two apart. | χ_G → χ_G⁻¹; added the Check. ζ₃ ∈ ℚ_7 because 3 divides 6. |
| §7.2, k = 1 cokernel | a = p; k = 0; diag(a,b) | Middle term p⁻³p⁴ = p. Cokernel: 1 on π′, 1 on M*_dR, p on Sym¹, total p. Four copies of π′ give 1. At k = 0 the cokernel π′⊗M*_dR has scalar 1 = a⁰. | Corrected to two copies of π′⊗Sym¹. |

## Lean and declaration checks

- I ran `lake env lean` on `packages/PadicLocalLanglandsForGL2QpPartII/Suggested.lean` from the pinned content checkout after the last edit. Exit 0, no output, no warnings. The only import is `import Mathlib`, so no TauCeti module had to be built.
- Signature check: the file has 0 named declarations (no def, instance, theorem or example), so the `#check @name` comparison covers 0 declarations and no binder can be dropped. No Lean name was added, removed or renamed. Only the module docstring changed: Galois-socle entry `Π(V)′` → `Π(V)*` and `(St^cont ⊗ δ)′` → `(St^cont ⊗ δ)*`, with the definition of `W*`; the Banach-multiplicity entry now names the compact-convergence dual as the missing carrier.
- No Suggested.lean padding was requested or added. Every new Check is README prose.

## Dependency check

Command run as prescribed, after all edits:

    depcheck: 236 roadmaps, 2148 edges, 0 problem(s)

There are no UPWARD, CYCLE or moved lines. The only new cross-roadmap citations are LocallyAnalyticDistributions §0.0, ProetaleCohomologyOfPAdicCurvesAndTowers §0.4(c) and EndoscopicTransferAndUnitaryTraceComparison §12.19. All three suppliers were already cited, and all are earlier in the merge order.

## Citations, ownership, overlaps

- `roadmaps resolve` reports the same three leads as before: ProetaleCohomologyOfPAdicCurvesAndTowers §7.5, LocallyAnalyticDistributionsPartII §2.2 and LocallyAnalyticRepresentationsOfLocalGroups §§0.3. All three are board packages, and I read the cited sections in `packages/<Name>/README.md`. They are not missing owners. No Lean name was unresolved.
- Re-checked at the open heads:
  - EndoscopicTransferAndUnitaryTraceComparison §12.19 keeps the Frobenius swap.
  - PadicLocalLanglandsForGL2Qp §0.1 constructs Schikhof duality with the dual lattice and its topology retained. The new Conventions sentence cites it.
  - LocallyAnalyticDistributions §0.0 states that a bounded set of a compact-type limit lies and is bounded in one stage.
  - ProetaleCohomologyOfPAdicCurvesAndTowers (board package) gives duals the weak topology (its Conventions) and has §0.4(c). The supplier contract now says how the weak topology relates to compact convergence.
- No new construction or generic carrier was introduced. The Banach-dual topology is a convention of this roadmap, taken from CDN23 and resting on the base §0.1 Schikhof duality. Ownership against the open heads given by the roadmap index was checked with `roadmaps show`; no other open pull requests were searched.
- `overlaps.md` reports no other open pull request changing this roadmap and no dropped ids. This repair renames no section, layer or target, and adds only source correction E20.

## Sources

All new locators point into the five cached texts: CDN23 lines 182–184, 220–229, 2381–2500, 2837–2847; CDN20 lines 633–644; DLB17 lines 102–106 and 114–116. No source was fetched, the manifest is unchanged, and no `needs-references.toml` entry was written. No passage was copied.

## Notes for the maintainer

- Notation that other roadmaps might cite: the Banach dual is now written Π* (compact convergence) instead of Π′_b throughout the étale and Banach multiplicity statements. The section numbers and statements of §§4.10–4.14 and 6.1–6.6 are otherwise unchanged. No roadmap cites this one as a supplier.
- The new Conventions statement about Σ₀ over ℚ_p matches EndoscopicTransferAndUnitaryTraceComparison §12.19. Source correction E20 records that DLB17 describes Σ₀ inaccurately over ℚ_p.
- `git diff --check`: exit 0. Nothing was committed. No file outside the package's README.md, Suggested.lean and this report was edited.
- No gate failures were listed in the brief, so none were addressed.
- The review text held no instructions beyond its findings; nothing in it was suspicious.
