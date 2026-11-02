# Package report: OrdinaryAutomorphicFormsAndModularityLiftingPartII

Files written: `packages/OrdinaryAutomorphicFormsAndModularityLiftingPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`, as the number-theory roadmaps on main). I did not change `sources.toml`: no source was added or dropped, and every cited work is already recorded and certified. I did not change `design/plan.json`: its seven gaps are exactly the seven `What <Supplier> must provide (gap:…)` lines of the README. I did not create `needs-references.toml`, because no text is missing.

## Headline theorems

| Headline | README | Status at the pins | What it lacks |
|---|---|---|---|
| Finiteness of R^{T,ord} over Λ at p = 2 (BCGP25 Thm 5.7.14, first assertion) | 4.7 | not statable | 𝒢_n-valued universal deformation rings with local conditions (and the ordinary flag rings above 2); ordinary RACSDC automorphic representations of GL_n(𝔸_F) |
| Dyadic reduced R = T (Thm 5.7.14, second assertion) | 4.8 | not statable | the same, plus algebraic modular forms on definite unitary groups and the universal ordinary Hecke algebra |
| Dyadic dimension bound dim ≥ 1 + nd | 3.2(b) | not statable | deformation rings |
| Symplectic reduced R = T for p > 2 (BCGP25 Thm 6.3.4) | 6.3 | not statable | cuspidal automorphic representations of GSp₄(𝔸_{F⁺}) and their Galois representations; the Hilbert–Siegel Hida module and its Hecke algebra; GSp₄ deformation rings with the flag-image condition |
| Finiteness of R_{S_{1,π}} over Λ_{GSp₄,F⁺} | 6.4 | not statable | as for 6.3 |
| Taylor–Wiles places for GSp₄-reasonable ρ̄ (WHI22 Prop. 3.18) and Taylor–Wiles presentations over Λ at p = 2 | 5.3, 1.2(4) | not statable | G_{F,S} with its decomposition groups; dual Selmer groups with local conditions; deformation rings |

`Suggested.lean` therefore contains only the module docstring, which names each of these headlines and what it lacks, and an empty namespace. I checked Mathlib and Tau Ceti at the pins: neither has deformation, automorphic, Hida or adequacy carriers. The pinned Tau Ceti has no matches for `Deformation`, `Automorphic`, `GaloisRep`, `Adequa` or `Hecke` outside unrelated knot-theory files. Mathlib has `Field.absoluteGaloisGroup` and continuous group cohomology, but nothing for G_{F,S}, Selmer conditions or deformation functors.

I did not state 1.3 (near adequacy is equivalent to relaxed adequacy) in Lean. It is statable for finite subgroups of GL_n(k), but it is a lemma of the build and not a headline, so it stays a README target.

## Elaboration

I ran `lake env lean` on the absolute path of `Suggested.lean`, from the content checkout, after the README repair below. The exit code was 0, there were **0 `sorry` warnings**, and there were no other messages. There are no declarations, so the `#check @name` comparison had nothing to compare and changed nothing.

## What the README could not support

- **3.2(b): the scalar-direction step is not sourced.** The step ⟨o, ψ⟩ = 0 (equivalently, the rank-one ⟨o₁, ψ′⟩ = 0) is not proved in any source. The README makes it part of the target and gives a route through det : 𝒢_n → 𝒢_1 and class field theory.
- **4.8 depends on 3.2(b).** 4.8's density step uses 3.2(b), and its Checks say so. A maintainer should confirm that it is acceptable for a headline input to carry this new step.

## Corrections relative to the design

These are the only changes to the design README apart from formatting.

- **Formatting: TeX-style math outside code spans.** The gate's `tex` check had refused the README: it counted 818 occurrences of `_{` or `^{` outside code spans, from 𝒢_n, Hecke-polynomial, deformation-ring and Hida-module notation written inline. Every such formula is now an inline code span, for example `δ_{F/F⁺}`, `ε(Art_{F_v}(ϖ_v)) = q_v^{−1}` and `R^loc_{S_χ,T}`. Each span is extended to the whole formula, with balanced brackets, and stops before trailing punctuation, hyphenated suffixes (`-algebra`, `-module`) and cross-references such as (1.2(2)). I compared the README with all backticks removed against the earlier version, and the two texts are identical. So no word, symbol or locator changed. No line has an odd number of backticks.
- **Formatting: title.** The title now reads "part II" instead of "part ii". Nothing else changed.

- **Summary, hypothesis (2) of Theorem 5.7.14.** It now also requires that the places under the ramification of π split in F, as in BCGP25 line 6094–6095. The design summary omitted this; Layer 4 already had it.
- **ArithmeticGaloisRepresentations §7.9 contract.** The two backticked names `ResidualImage.AdZeroTraceCondition` and `ResidualImage.IsWeaklyAdequate` are replaced by prose. They are README-only targets of that roadmap, not declarations at any pin or in its `Suggested.lean`, so `roadmaps resolve` could not find them. The content of the contract is unchanged.
- **2.3 route.** Two works not in the manifest (Labesse, Corollaire 5.3; Chenevier–Harris, Theorem 3.2.5) were named. The route now cites "the proof of Ger19 Proposition 2.7.2", which is where they enter.

## Duplication sweep and ownership

I searched by object with `roadmaps grep`, which covers main and every open roadmap pull request at its head. I also read the board designs of PotentialAutomorphyInfrastructurePartII and AutomorphicBundles(PartII) that the design cites.

- **Searches with no other owner.** "nearly adequate" / "near adequacy", "reasonable" (GSp₄-reasonable), "Whitmore" (Taylor–Wiles places with semisimple Frobenius) and "Thorne's complex" have no owner elsewhere. The one Whitmore hit is a different A'Campo–Hevesi–Thorne–Whitmore result in AutomorphicGaloisRepresentationsPartII. Theorems 5.7.14 and 6.3.4 of BCGP25 are claimed by no other roadmap.
- **PotentialAutomorphyInfrastructurePartII.** PL.4 *Finiteness of ordinary polarized deformation rings* and *Characteristic-zero lifts from finiteness and the dimension bound* are for l odd, finite over O, without a weight algebra. PL.2 *The big ordinary Hecke algebra over Λ* inherits "l odd". PL.3 *Taylor–Wiles data when F contains ζ_p, including p = 2* is O-coefficient and assumes GHT-adequacy. Each is imported, not restated, and the README states how its variant differs: p = 2, over Λ, under near adequacy.
- **Removals.** No target of the design duplicates a pinned declaration or another roadmap's target, so nothing was removed. Pinned objects used: `Matrix.trace`, `Matrix.trace_one`, `Module.End.IsSemisimple`, `Submodule.span`, `Matrix.symplecticGroup`, `LieAlgebra.Symplectic.sp`, `groupCohomology` and `TauCeti.completedGroupAlgebra`. Each was checked at the pins (Mathlib `6b7abb3c…`, Tau Ceti `a91d3aaf…`, the lake-manifest revisions) in the files the README names.
- **Notions moved down from later roadmaps:** none.
- **Ownership against open pull requests** was checked as above. Ownership of Layers 1–6 lies here because no earlier roadmap states p = 2 ordinary Hida theory, Λ-coefficient polarized problems at p = 2, or GSp₄-reasonableness.

## Citations resolved

I checked every cross-roadmap section against the cited roadmap as it is now, at the open heads or in the board design:

- LocalGaloisDeformationRings §§1.3, 1.9, 1.17, 1.22, 2.17, 2.22, 2.23, 2.24, 2.29, F.2.6, 6.24, 6.27, 6.29, 6.31, 6.35
- GlobalGaloisDeformations §§3.3, 4.2, 8.1–8.4
- DeformationAndDerivedPatchingAlgebra §§1.12, 4.1, 4.2, 4.6, 5.2–5.5, 6.1, 6.3, 6.5, 6.7, Layer 8 §§8.2–8.5, §9.6
- ArithmeticGaloisRepresentations §§7.4, 7.5, 7.9, 7.11
- AutomorphicFormsOnReductiveGroups §§7.4, 7.5
- AutomorphicGaloisRepresentationsPartII AG2.2 *Twisting…*, AG2.3 *Arbitrary regular conjugate-self-dual existence*, AG2.5 *Caraiani's full away-prime compatibility* and *Temperedness…*, and *GSp₄ construction and normalization*
- PotentialAutomorphyInfrastructure §§3.44, 3.47
- PotentialAutomorphyInfrastructurePartII PL.0–PL.4 section titles
- SmoothRepresentationsOfLocalGroups §SR.3.2
- ModularityAndLanglandsExtensions §3.9
- AutomorphicBundles B5.10–B5.12

All exist. After the edits, `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere.

The seven gaps are still needed:

- **dyadic-flag-ring-dimension:** §6.24 assumes ρ̄ = 1 and a large local degree.
- **gsp4-semisimple-taylor-wiles-places:** §2.17 treats only four distinct eigenvalues.
- **gsp4-galois-representations-totally-real:** *GSp₄ construction and normalization* is over ℚ.
- **The three hilbert-siegel-* gaps:** AutomorphicBundles has no Hilbert–Siegel or Hida content.
- **inertial-types-and-block-levels:** as accepted in review.

## Adversarial pass (computed)

| Statement | Instances | Values computed | Result / change |
|---|---|---|---|
| dim Λ = 1 + nd (Conventions) | n=2, F⁺ real quadratic, 2 split | T(l) ≅ ((1+2ℤ₂)^×)^4 ≅ ({±1}×ℤ₂)^4, rank 4 → dim 5 | holds |
| Geometric Frobenius witness | p=7, q_v=2 | 2^{−1} ≡ 4 mod 7 vs arithmetic 2 | holds |
| 1.1 framing dimension | n=4, #T=3 | (16+1)·3−1 = 50 vs n²#T−1 = 47 | holds |
| 1.1 non-square in 1+m_A | A=k[ε], a=1+ε | (x+yε)² = x² ≠ 1+ε | holds |
| 1.2(2)–(3) Euler count | n=2,d=2,#T=3,q=5,h²=1 | χ = 1−3−5+2 = −5; h¹ = 1−1+5 = 5 = g; with h³=0, 6 | holds |
| 1.2(1),(5) real places | B=Ψ₂ vs B=1₂, char 2 | (1+c)ad = {Y+ᵗY}, zero diagonal; 1₂ ∉, so µ_v ≠ 0 for B = 1₂ and µ_v = 0 for Ψ₂ (alternating) | holds |
| 1.3 weak adequacy | H=GL₂(𝔽₂)≅S₃; H={1} | semisimple elements 1, A, A² span 𝔽₄ (dimension 2 < 4); U = ad⁰ (dimension 3) | non-examples hold |
| 1.3 A₅ ≅ SL₂(𝔽₄) | 4-dimensional over 𝔽₂ | H²(A₅, 𝔽₂) ⊇ Hom(ℤ/2, 𝔽₂) = 𝔽₂ ≠ 0 | not adequate; nearly adequate as sourced |
| 1.4 choice of m | F⁺ ∌ √2; ℚ(√2); ℚ(√5) | m=3, L⁺=F⁺(√2); m=4, [ℚ(ζ₁₆)⁺:ℚ]=4; ℚ(√5) ⊄ K⁺₃=ℚ(√2), so least m=3 while the printed sandwich fails | holds |
| 2.1 twist | n=1; n=2 | ∏τ(u₁)^0 = 1; u ↦ ∏τ(u₂)^{−1} | holds |
| 2.1 normalization | n=2, λ=(1,0), j=1; j=n | ϖ^{λ₂} = 1; ϖ^{Σλ} non-unit for Σλ ≠ 0 | holds |
| 2.2 non-faithfulness | nd ≡ 0 mod 4 (n=2,d=2; n=4,d=1) | twist sign (−1)^{dn(n−1)/2}: 2·2·1/2 = 2 → +1; 1·4·3/2 = 6 → +1 | holds |
| 3.1 multiplier at c_v | n=3; n=4 | (−1)^{−2}(−1) = −1; ε^{−3}δ⁴ = ε^{−3} | holds |
| 3.2(a) | n=2,d=2,#T=3; general | 19 + (−1) = 18, 18−14 = 4 = nd; general (1+n²#T+dn(n+1)/2) + (#T−2−dn(n−1)/2) − ((n²+1)#T−1) = nd | holds |
| 3.2(b) printed bound | same | 1 + n[F:ℚ] = 9 > dim Λ = 5, contradicting 4.7 | misprint corrected (1+nd) |
| 3.2 rank one | n=1 | count (1+#T+d)+(#T−2)−(2#T−1) = d; CFT: minus-part ℤ₂-rank d (δ_F = δ_{F⁺}), dim 1+d | consistent with (b) |
| 3.2 det homomorphism | x=(g,a)j | ν(det x) = −aⁿ = (−1)^{n+1}ν(x)ⁿ; at c_v: (−1)ⁿ(−1)^{n+1} = −1 | multiplier χⁿδ^{n+1} |
| 4.2 torsion Λ | F⁺=ℚ(√105), F=ℚ(√−7,√−15) | 2 is unramified (discriminants 105, −7, −15 are odd); −7 ≡ −15 ≡ 105 ≡ 1 mod 8, so 2 splits completely; 3, 5, 7 ramify already in F⁺; Λ has rank 16 over Λ⁰ and (1−[−1])(1+[−1]) = 0 | valid instance |
| 4.3 dimension match | n=2,d=2,#T=3,q=5 | g=5; 1+12+6+5 = 24; 5+5+14 = 24 | holds |
| 4.5 Krull bound | same | dim C_X = 24, generators of a_∞ = 5+14 = 19, ≥ 5 = dim Λ | holds |
| 5.1 framing | #T=1; #T=3 | 11−1 = 10; 33−1 = 32 vs GL₄ 47 | holds |
| 5.2 trace form on 𝔷_h | h regular in diag(x,y,−y,−x) | tr = 2(xx′+yy′); vanishes for p = 2 | p ≥ 3 needed |
| 5.4 R condition, p=3 | q_v = 19; 7 | 19 ≡ 1 mod 9 yes; 7 ≡ 7 mod 9 no | holds |
| 6.2 dimensions | F⁺=ℚ, #S=3, t=7 | g = 7−4+3−1 = 5; 5+30+4 = 39 = 7+33−1 | holds |
| 6.1 local dimension | v \| p, Λ_v = O⟦x,y⟧ | 16 over O = 14 over Λ_v (dim Λ_v = 3) | holds |
| Theorem 5.7.14 hypotheses | BCGP25 lines 6088–6109 | (1)–(6) and T as in Layer 4 | Summary now includes the split condition at ramified places |

## Gate

I ran the full gate on a scratch copy laid out as `TauCetiRoadmap/OrdinaryAutomorphicFormsAndModularityLiftingPartII/`. Every count is 0, including `tex=0`, `readme-ids-missing=0` and `depcheck=0`. The one exception is `git=1`, and only because the scratch copy is not a git repository. `roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name that exists nowhere.

## Dependency check

```
depcheck: 56 roadmaps, 652 edges, 0 problem(s)
```

There is no UPWARD and no CYCLE line. The merge order already places this roadmap after all of its suppliers, so there is no `moved:` line.

## Sources

There are no new fetches. Every locator I used is in the manifest. I re-read Theorem 5.7.14, Lemma 5.7.7 and Theorem 6.3.4 in BCGP25 (lines 6044–6045, 6088–6109, 6694–6696). These confirm the hypotheses and the printed bound 1 + [F:ℚ]n, which the README corrects.

## Suspicious text

None found in the design, reviews or supplier roadmaps I read.
