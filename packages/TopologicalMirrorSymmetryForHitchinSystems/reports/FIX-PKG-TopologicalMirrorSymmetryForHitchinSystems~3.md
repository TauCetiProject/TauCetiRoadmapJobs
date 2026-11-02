# FIX-PKG-TopologicalMirrorSymmetryForHitchinSystems~3

The review of this round has one finding, F01 (the review's computed table also calls it R01). It is correct and has been applied. One citation-maintenance change was also made: the CountingBundlesAndHallAlgebrasOfCurves locators were stale against that roadmap's current head. It is reported under the checks below.

## F01 (P2) — applied

ClassFieldTheory contract: base-free "(e²,e,e) in the constant split setting" → general base keeps only the Kummer and Hochschild–Serre sequences. (e²,e,e) is asserted over the residue field k=𝔽q with e | q−1, where both degree-two terms have order e and H²(k,μe)=0. New §1.1 Checks: C (2,2,1), 𝔽₅ (4,2,2), 𝔽₅ with e=3 (1,1,1), ℚ₅ (16,2,8).

### Verification of the claim

The claim is correct. The old sentence named no base for BI. "Constant split" did not say whether the cardinalities refer to the residue field, the local field F or C, and they differ on each of these. Here I = C_e is constant and acts trivially on μe. Over a field K, the Galois covering BI_(K^s)→BI_K gives the spectral sequence H^a(K,H^b(I,μe)) ⇒ H^(a+b)(BI_K,μe). It uses H^b(I,M)=M for b=0, Hom(I,M) for b=1 and M/eM=M for b=2.

- **Finite field k=𝔽q with e | q−1.** Since cd(k)=1, only the columns a=0,1 occur and the sequence degenerates.
  - H²(BI_k,μe) has the two pieces H⁰(k,H²(I,μe))≅ℤ/e and H¹(k,Hom(I,μe))≅ℤ/e, so its order is e².
  - Pic(BI_k)=Hom(I,k×) has order gcd(e,q−1)=e. The group is killed by e, so |Pic/e|=e.
  - H²(BI_k,Gₘ) comes from E^{0,2}=H²(I,k̄×)=k̄×/k̄×^e=0, E^{2,0}=Br(k)=0 and E^{1,1}=H¹(k,μe)≅ℤ/e. So its e-torsion has order e.
  - The Kummer sequence checks: e²=e·e.
- **Over C** (the reviewer's witness, recomputed). H²(C₂,μ₂)=μ₂ has order 2. Pic(BC₂)=Hom(C₂,C×) has order 2. H²(C₂,C×)=C×/C×²=1. The orders are (2,2,1), not (4,2,2).
- **Over ℚ₅, e=2.**
  - The degree-two terms have orders 2 (H⁰(ℚ₅,H²(C₂,μ₂))), 4 (ℚ₅×/ℚ₅×²) and 2 (Br(ℚ₅)[2]).
  - Every differential that could touch these terms is zero:
    - d₂: E^{0,1}→E^{2,0} vanishes because the section Spec ℚ₅→BC₂ splits the bottom row.
    - d₂ on E^{0,2} vanishes because its generator is the Kummer class of the sign character, which is defined over ℚ₅.
    - Every map into E^{3,0}=0 vanishes, since cd(ℚ₅)=2.
  - So |H²|=16, |Pic/2|=2 and |H²(Gₘ)[2]|=8. As a cross-check, H²(BC₂,Gₘ)=ℚ/ℤ⊕(ℤ/2)², whose 2-torsion has order 8.

I used the reviewer's suggested repair as written. I added two controls the finding did not ask for:
- 𝔽₅ with e=3 shows that e | q−1 is needed. Frobenius inverts μ₃, Hom(C₃,μ₃) and H²(C₃,μ₃), so every term is 0.
- ℚ₅ shows that the residue-field orders do not carry over to F.

### Pattern search

I searched the whole package for base-free cardinalities of H²(B·,μ), Pic/e or Br[e] (`|H`, `|Pic`, `|Br`, `Br(B`, `BI`, `e²`, `order e`):
- README line 135 was the only occurrence.
- The next paragraph's "μ_(re) … not μ_(e²)" bound concerns 𝔽₉ explicitly (8 | q−1, 16 ∤ q−1). It is correct as stated.
- Its "H¹(k,Hom(I,μe))" already names the residue field k and agrees with the repair.
- `design/README.md` and the plan nodes contain no copy of the sentence.
- `Suggested.lean` declares nothing and its docstring does not mention the claim.

## Checks run

- **Lean elaboration.** Ran `lake env lean packages/TopologicalMirrorSymmetryForHitchinSystems/Suggested.lean` from the content checkout: exit 0, no diagnostics. There are no `TauCeti.*` imports, so nothing needed building. `Suggested.lean` is unchanged and declares no theorem, definition or instance. The mechanical `#check @name` comparison therefore had zero candidates and nothing changed.
- **Depcheck.** `tauceti-roadmap … gate --depcheck … --movable` printed exactly:

  ```text
  depcheck: 56 roadmaps, 643 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or `moved:` line.
- **Citation resolver.** `tauceti-roadmap … roadmaps resolve packages/TopologicalMirrorSymmetryForHitchinSystems/README.md` was run against main 3b80899 and 367 open heads.
  - Before this round it flagged three leads.
  - **CountingBundlesAndHallAlgebrasOfCurves §§CB.7 and §§CB.9.** These were real: at that roadmap's open head 51072a4 the sections are numbered §7.1 (positive canonical Higgs sheaves and stability), §7.3 (stable canonical Higgs moduli, coarse space, proper Hitchin map) and §9.1 (pure Higgs cohomology). The old design-catalogue slugs `CB.7/canonical-higgs`, `CB.7/higgs-moduli` and `CB.9/higgs-purity` no longer resolve.
    - Every README occurrence was replaced: 10 distinct passages in Scope, the CountingBundles contract, §§3.1, 3.4, 4.1, 4.3, 5.1, 5.2 and 5.6, and their Needs lines. The duplicated "§§CB.9/higgs-purity; … §§CB.9" pairs became a single "§9.1".
    - The `higgs-sector-purity` gap's `section` in `design/plan.json` changed from `CB.9/higgs-purity` to `9.1`. Only the `gaps` list differs, which I confirmed by parsing both versions.
    - The duplicated words "the explicit the … contract contract" in §4.3's purity sentence were corrected while that sentence was edited.
    - After the edit these leads are gone.
  - **LogicAndDefinabilityInNumberTheory §2.11.** This lead remains and is a resolver coverage limitation, not a broken citation. The roadmap is a board package (board head f1db101, per the board-packages index), not a roadmap pull request. I read it at that head: §2.5 is at line 419, §2.7 at 461, §2.8 at 487, §2.9 at 499, §2.11 at 543 ("Dual abelian isogeny volume invariance": dual abelian varieties over any nonarchimedean local field, isogeny degree prime to p) and §2.12 at 553. All cited sections resolve with the hypotheses the README states.
  - No unresolved Lean names.
- **Gate failures.** None were listed for this round.
- **Sources.** No new source was needed. The repair is a standard Galois-cohomology computation, shown in full in the new Checks. `sources.toml` is unchanged. GWZ20 remains settled as uncertified and was not requested. No `needs-references.toml` was written.
- **Ownership.** No new construction or target was added. The Kummer sequence and the Hochschild–Serre computation appear as background to an existing contract paragraph and as Checks, so no ownership question arises.

## Adversarial pass (changed statements)

| Statement | Instances tried | Values computed (both sides) | Result | Change |
|---|---|---|---|---|
| Residue-field cardinalities (e | q−1) | e=1, any q | H²=1, Pic/e=1, Br[e]=1; formula (1,1,1) | holds | none |
| same | e=2, q=3 (p=3) | 2·2=4, Hom(C₂,𝔽₃×)=2, H¹(𝔽₃,μ₂)=2; formula (4,2,2) | holds | none |
| same | e=2, q=5 | 4, 2, 2; formula (4,2,2) | holds | positive-control Check added |
| same | e=3, q=4 (p=2) | 3·3=9, Hom(C₃,𝔽₄×)=3, 𝔽₄×/𝔽₄×³=3; formula (9,3,3) | holds | none |
| same | e=4, q=9 | 4·4=16, Hom(C₄,𝔽₉×)=4, 𝔽₉×/𝔽₉×⁴=4; formula (16,4,4) | holds | none |
| Divisibility hypothesis e | q−1 | e=3, q=5 | Frobenius inverts μ₃ and its twists: (1,1,1) vs (9,3,3) | the old wording did not exclude this | hypothesis made explicit; Check added |
| Tameness | e=2, q=2 (e=p) | μ₂ is not étale; e∤q−1=1 | excluded by hypothesis | none |
| Base C | C₂ | (2,2,1) vs (4,2,2) | old sentence fails | negative-control Check added |
| Base F=ℚ₅ | C₂ | (16,2,8) vs (4,2,2) | old sentence fails | Check added |
| Kummer exactness, general base | all instances above | 1=1·1, 4=2·2, 9=3·3, 16=4·4, 2=2·1, 16=2·8 | holds everywhere | kept as the general input |
| §1.1 C₂ check vs §1.1 definition | BC₂→Spec C proper, geometrically connected, f_*Gₘ=Gₘ, r=2 invertible | arithmetic over C means neutral; the sign-root class is ≠0 in H²(μ₂) and 0 in H²(Gₘ) | consistent with the ℙ¹ root-gerbe Check | none |
| §1.1 𝔽₅ check: arithmeticity | the class from H¹(𝔽₅,μ₂) | restricting to 𝔽₂₅ sends Frob²↦0, so the class dies; it is ≠0 over 𝔽₅ | arithmetic, not neutral | stated in Check |
| CountingBundles §7.1 citation | gcd(r,d)=1 | its interface: semistable ⇒ stable; geometric stability | supports "canonical GL stability" | locator updated |
| CountingBundles §7.3 citation | rank 1, g=1, D=ω=O | H_(1,d)=Pic^d×A¹ of dimension 2D=2, matching §3.4's E×A¹; g=0 branch A⁰/empty matches §3.9 | supports coarse moduli and properness | locator updated |
| CountingBundles §9.1 citation | g≥1, coprime | H_c^n pure of weight n; genus 0 handled by §3.9 here | supports purity import in §4.3 | locator updated |

## Notes for the maintainer

- No Lean names changed, and no name other roadmaps cite changed. The changed cross-roadmap locators point into CountingBundlesAndHallAlgebrasOfCurves, which is earlier in the merge order. They now use that roadmap's section numbers at its open head (§§7.1, 7.3, 9.1) instead of design-catalogue slugs.
- The F01 repair restricts only a background cardinality sentence. The roadmap's complex and local-field scope is unchanged: those bases keep the general Kummer and Hochschild–Serre statements.
- Ownership against open pull requests was checked through the roadmap index tools (main and the indexed open heads) and the board-packages index. Separate filesystem checkouts of the sibling pull requests were not used.
