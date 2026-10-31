# FIX-PKG-RankOneConverse~2

Seven findings from REV-PKG-RankOneConverse. All were checked against the sources and the supplier roadmaps; all seven hold and all are repaired. `Suggested.lean` is unchanged. It has no declarations, and no finding concerns a headline statement.

## F01 (P2) — applied

Old: `gap:ordinary-wan-fitting` was requested from AutomorphicCongruences, and the §2.2 route spoke of a "congruence/Fitting theorem".

New: the AutomorphicCongruences contract cites §2.22, "Wan's ordinary GU(3,1) Rankin–Selberg divisibility", with its hypotheses. It adds the one-line step Fitt₀ ⊆ char = divisorial hull over the regular ring Ô^ur_L[[Γ_K]], which turns the characteristic containment into the Fitting form that §2.2 specializes. The gap is removed from §2.2 *Needs*, from Layer 2 Dependencies and from `design/plan.json`. The Scope list gains AutomorphicCongruences §2.22.

Evidence: AutomorphicCongruences README at board head b9d6195, §2.22 (Thm 1.2) and its consumer line naming RankOneConverse. I compared it with wan-2020 Theorem 1.2 (p.385–386) and with skinner-2020 pp.345–346: the proof of Prop 2.7.2 uses the characteristic containment over Our[[Γ_K]].

## F02 (P2) — applied

Old: `gap:gl2-full-forward` asked for the whole r∈{0,1} forward theorem.

New: the gap asks only for two things for every weight-two trivial-character newform g of any level (including primitive twists): finite entire Sha when L(g,1)≠0, and rank [M_g:ℚ] with finite entire Sha when ord₁=1. The realization-hypothesis transfer stays in the gap. A new contract, "From TauCetiRoadmap.EllipticCurveModularityPartII", cites §6.0e for rank-zero finiteness of A_g(ℚ). §§4.3 and 5.3 now use §6.0e for rank 0, and their *Needs* and the Layer 4/5 Dependencies are updated. `design/plan.json` is updated to match.

Evidence: EllipticCurveModularityPartII at head 46ba4f1, §6.0e (any positive level, any coefficient degree), contract row "modular-rank-zero". It sits at merge-order position 188, before this roadmap.

## F03 (P3) — applied

Old: Scope said ArithmeticStatisticsPartVI "consumes the converses", and Downstream consumers named it.

New: Scope names it as the owner of the elliptic (D,N)=1 inert instances, through these targets: "Anticyclotomic main-conjecture implication", "Heegner logarithm and low rank", and §4.22 "Rank one selmer criterion" / "Twisted rank one selmer criterion". It also states that "Positive simultaneous rank one" does not consume this roadmap. §§2.2, 2.4, 3.1, 5.1 and 5.3 each gain one clause saying what that roadmap owns and what is proved here. The ArithmeticStatisticsPartVI sentence is removed from Downstream consumers.

Evidence: ArithmeticStatisticsPartVI at head 88461f2 (position 156); I read the targets at its README lines 1748, 1764, 2262 and 2278.

## F04 (P3) — applied

Scope now names ModularIwasawaMainConjectures §5.4, "The rank-zero p-converse", as the owner of the main-conjecture rank-zero converses. One clause says how §6.2 differs: it is deduced from Theorem B through a derivative twist, covers GL₂-type degree d under the squarefree local alternatives, and concludes for L(A_f,s). For d=1 it is a special case of §5.4(3).

Evidence: ModularIwasawaMainConjectures at head ce652ac, §5.4 (1)–(3).

## F05 (P3) — applied

(a) The sign gap is narrowed to the explicit local base-change root numbers of St⊗μ (μ unramified, μ²=1): +1 split, −1 inert, −μ(q) ramified, and −1 at the archimedean place. The section is now R16.3.2. The other three inputs are derived in the GL2AutomorphicRepresentationsAndTransfer contract:
- the global sign, from GrossZagierAndArithmeticHeights §8.3, with §4.2 and §0.7;
- the multiplicative dictionary, from AutomorphicGaloisRepresentations §6.4;
- CM exclusion, by a self-twist argument from R16.3.2 and R16.4.6, after which AutomorphicGaloisRepresentations §7.7 applies.

The old "squarefree-sign/non-CM/multiplicative contract" citations in §§3.1, 4.2, 4.3, 4.4 and 6.1 are repointed.

(b) The point-logarithm clause is dropped from `gap:gl2-rational-kummer`. That compatibility is now cited to GrossZagierAndArithmeticHeights §9.20 and the supplier it declares.

(c) The isogeny-invariance clause is dropped from `gap:quadratic-abelian-sha`. It is now derived from SelmerIwasawaCohomology §2.12a, using the descent sequence for an isogeny and for a dual isogeny with ψφ=[deg φ]. §4.4 *Needs* and its Check now point to §2.12a. All changed `needs` sentences are mirrored in `design/plan.json`.

## F06 (P3) — applied

The README now adopts the source's convention: X_∞=Hom_Λ(Sel_∞,Λ*), with (λ·φ)(x)=φ(λx) (skinner-2020 §2.7, p.344).
- The API bullet explains that the inverted action would replace the characteristic ideal by its ι-image, and that the augmentation ideal is ι-stable.
- The old Check (scalar u⁻¹) is replaced by a witness: X=Λ/(γ−a) with a=1+p gives (γ−a) versus (γ−a⁻¹), which are distinct primes; at a=1 both give (γ−1).

## F07 (P3) — applied

All 42 "line N" / "lines N–M" clauses are deleted from the README locators. Theorem, section and printed page are kept. The extraction sentence now reads "recorded in the sources manifest", without backticks. The same line clauses are also removed from the bfh-1990 locator in `sources.toml`.

## Checks

- `lake env lean packages/RankOneConverse/Suggested.lean` (from the content checkout): exit 0, no output, 5.3 s. The file has no declarations, so there was nothing to put into the `#check @name` binder audit; no binder changed.
- Depcheck: `depcheck: 56 roadmaps, 646 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve`: one lead, "AutomorphicCongruences §2.22: no roadmap AutomorphicCongruences on main or in an open pull request". This is a false positive. AutomorphicCongruences is a board package (board pull request #129, head b9d6195) at merge-order position 249, before this roadmap (252). I read §2.22 at that head.
- Gaps: `design/plan.json` now has 10 entries. Each `needs` sentence matches its README "What … must provide (gap:…)" sentence verbatim (checked by script).

## Adversarial pass on changed statements

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| Fitt₀ ⊆ char (F01) | R=O[[x,y]], X=R/(x)⊕R/(x): Fitt₀=(x²), char=(x²); X=R/(x,y) (pseudo-null): Fitt₀=(x,y), char=(1) | (x²)⊆(x²); (x,y)⊆(1) | Pass; inclusion strict in the pseudo-null case | none |
| Fitting base change → char containment (F01) | X_∞ torsion: Fitt₀(X_∞)=image of Fitt₀(X) ⊆ (L) ⇒ char = divisorial hull ⊆ (L), since a principal ideal is divisorial; X_∞ nontorsion: char=0 ⊆ anything | — | Pass | none |
| Steinberg base-change signs (F05a) | split: (−μ(q))²=1; inert: μ(N q)=μ(q²)=1 ⇒ −1; ramified St: −1; ramified St⊗ξ: −(−1)=+1; ∞: i·i=−1 | matches Conventions Checks: two inert −1·(−1)(−1)=−1; one ramified St⊗ξ −1·(+1)=−1 | Pass | none |
| Squarefree ⇒ non-CM (F05a) | η=η_K ramified at q\|D_K; unramified π_q: π_q⊗η_q has conductor ≥1, π_q has 0; π_q=St⊗μ: conductor 1 versus 2a(η_q)=2 (q odd) | 0≠1, 1≠2 | Pass; for q=2, a(η_2)∈{2,3}, so 2a≥4≠1 | none |
| Sha isogeny invariance (F05c) | φ=[2] on E: ker(Sha→Sha)=Sha[2], finite by Selmer finiteness; φ=id: kernel 0 | finite both ways | Pass | none |
| Dual convention (F06) | a=1+p, p=5: a=6, a⁻¹≠6 in ℤ₅ since 36≠1; a=1: (γ−1) both | ideals (γ−6) ≠ (γ−6⁻¹); (γ−1)=(γ−1) | Pass | Check replaced |
| §6.0e rank zero for twists (F02) | f⊗χ_D nonsquarefree level D²N: §6.0e allows any positive level; A_f^D isogenous to A_g, rank invariant | rank 0 = rank 0 | Pass | none |
| §5.1 versus ArithmeticStatisticsPartVI (F03) | N=q (one odd prime, nonsplit): ArithmeticStatisticsPartVI requires ≥2 odd prime factors, so it does not cover this; §5.3 does | — | Pass | none |

## Notes for the maintainer

- Ownership against open pull requests was checked only for the roadmaps whose heads the tool index gives (ArithmeticStatisticsPartVI, ModularIwasawaMainConjectures, EllipticCurveModularityPartII, GrossZagierAndArithmeticHeights, SelmerIwasawaCohomology, AutomorphicGaloisRepresentations, GL2AutomorphicRepresentationsAndTransfer) and for the board package AutomorphicCongruences.
- Gaps changed for other roadmaps:
  - AutomorphicCongruences no longer receives `gap:ordinary-wan-fitting`.
  - GL2AutomorphicRepresentationsAndTransfer, HeegnerPointEulerSystems and SelmerIwasawaCohomology receive narrower `needs` sentences under the same slugs.
- No Lean name changed.
- No suspicious instructions were found in the review text.
