# Repair report: HigherHidaAndColemanTheory package, round 2

Review resolved: REV-PKG-HigherHidaAndColemanTheory (five findings). Suppliers were re-read at their open heads through `roadmaps show` (AutomorphicBundlesPartII #1823, AutomorphicBundles #1069, ShimuraCompactifications #1053, PhiGammaModulesAndIwasawaCohomology #1310, SolidAnalyticRings #1458) and on main (SchemeAndStackFoundations, commit e01afcf). Sources were read from the cache.

## F01 (P2) — applied

§2.1 "construct D(O_X,■) with … six operations, projection formula, base change, excision and localization triangles" → §2.1 "Artinian coefficients in the supplied solid operations": the six operations, discrete comparison, projection formula, base change and localization triangles are consumed from AutomorphicBundlesPartII §3.0a and the derived formal completion from its §3.11; §2.1 keeps only (a) q!A≃Ω^d_(X/A)[d] for smooth q over A=ℤ/p^s and finite flat extensions, whose discrete form is SchemeAndStackFoundations §2.20 (`upperShriek_structureSheaf_iso_shift`, `relativeDualizingModule_smooth` on main) transported through §3.0a's proper upper-shriek comparison and open restriction, and (b) the comparisons between §3.0a's (A,A)■ formalism and SolidAnalyticRings §§7.3–7.4 on the diagrams of the two solid gaps. Scope line 17 and the scope paragraph now say AutomorphicBundlesPartII §3.0a owns the operations and Layer 2 owns their Artinian specialization and the dynamic ordinary theorems; "How to read the build" says the same. A new `From TauCetiRoadmap.SchemeAndStackFoundations` contract lists §2.20. Needs lines of §§2.2–2.8, 4.2 and 8.1 cite AutomorphicBundlesPartII §3.0a (and §3.3, §3.6, §3.9, §3.11, §3.12 where composition, base change, transpose, completion or the filtration is what is used); §2.1 stays cited where the q! identification or the formalism comparison is used (§§2.2, 2.3, 2.7, 8.1). A Check for d=2 (Ω²[2] of rank one on dt₁∧dt₂ against Ω¹[2] of rank two) was added.

Evidence: AutomorphicBundlesPartII head §3.0a (lines 454–476) constructs D((O_X^ad,O⁺)■) for qcqs Noetherian X over O, lower/upper shriek for separated finite-presentation maps, composition, projection, Tor-independent base change, the discrete functor with proper upper-shriek comparison, and the closed locale with both localization triangles; §3.11 (lines 708–722) is derived formal completion with BP-Hida Lemma 2.9.3; its Scope line 10 claims ownership. Merge order: AutomorphicBundlesPartII line 238, this roadmap line 243. SchemeAndStackFoundations §2.20 on main (README lines 4340–4352) states f^!O_Y≅ω_{X/Y}[d] for Cohen–Macaulay f of pure relative dimension d over Noetherian Y and ω≅∧^dΩ for smooth f.

## F02 (P2) — applied

Three gap paragraphs → one. `gap:equivariant-coherent-models` and `gap:pel-subcanonical-vanishing` deleted from the README contract and from the plan's `gaps` list; their citations replaced by AutomorphicBundlesPartII §§2.2, 2.4, 2.5 (§2.6, §4.1, Layer 2–4 Dependencies) and §§5.1–5.2 (§§3.3, 4.9, 8.1, 8.3, 9.4, 9.8 and the Layer 3, 8, 9 Dependencies). `gap:coherent-correspondences` narrowed, in the README and the plan, to the residual contract: the two partial-support objects K+−(F)=RΓ(Xbar,j+_*j−_!F) and K−+(F)=RΓ(Xbar,i−_!i+_*F) of BP-Hida Definition 2.2.4, their support-change maps (Lemma-construction 2.2.6), the comparison K−+→K+−, the action of a correspondence on both, and the Rlim/colim twist formulas of Corollary 2.3.11, on the solid enhancement of §3.0a; section field "§§3.10–3.12 on the solid enhancement of §3.0a". The `From TauCetiRoadmap.AutomorphicBundlesPartII` contract now lists §§2.2, 2.4, 2.5, 3.0a, 3.0b, 3.1–3.2, 3.3, 3.6, 3.9, 3.10, 3.11, 3.12, 3.13, 5.1, 5.2, and these sections are cited in the Needs lines of §§2.3–2.8, 3.2 (via §12.11), 3.3, 3.6, 4.1, 4.7, 4.9, 5.4, 5.5, 5.9, 6.1, 7.1, 8.1, 8.3, 9.4, 9.6–9.8. In the plan the `neededBy` of `coherent-correspondences` drops D1/ordinary-perfectness, whose README section no longer cites the gap directly.

Evidence: AutomorphicBundlesPartII head §2.2 (line 374: A[Δ]-flatness for X flat over A, no division by |Δ|, BP26 Lemma 2.6.11), §2.4 (line 404), §2.5 (line 429); §3.3 (547), §3.6 (611), §3.9 (664), §3.10 (683, BP26 Definition 2.1.19 and §2.9.8), §3.11 (708), §3.12 (723, BP26 Lemmas 2.9.3, 2.9.6, Theorem 2.9.7, Proposition 2.9.9); §3.0b (477, Siegel/Klingen/Iwahori spans on ShimuraCompactifications 7.19–7.31), §5.1 (918), §5.2 (943: R^iπ_*(E(−nD′))=0 for formally subcanonical E, over an open U of the minimal model and over finite coefficient algebras, citing BP26's proof of Proposition 5.6.3). A grep of the head for "partial support", "K+−", "2.3.11", "support orders" returns only the Rlim of §3.11, so the two-order objects are not stated there (BP-Hida line 608–609 for Definition 2.2.4, 615–619 for 2.2.6, 841–843 for Corollary 2.3.11).

## F03 (P3) — applied

Labels → head numbering throughout (Scope, contracts, every Needs and Dependencies line): AutomorphicBundles B1.4→§1.4, B1.5→§1.5, B1.9→§1.9, B2.3→§3.3, B3.2→§5.3, B3.3→§5.2, B3.4→§5.4, B3.10→§5.10, B3.general.1→§6.1, B3.BGG.1→§9.1, B4.10→§11.10, B4.16→§11.16, B4.17→§11.17, B5.1→§12.1, B5.10→§12.11; ShimuraCompactifications C3.1→§0.14, C3.9→§4.10, C4.16→§6.16, C4.17→§6.17, C5.19→§7.19, C5.20→§7.20, C5.21→§7.21, C5.29→§7.29; AutomorphicBundlesPartII IC.2/IC.3/IC.5 → the section numbers listed under F02; PhiGammaModulesAndIwasawaCohomology §4.0→§2.7. The AutomorphicBundles §11.17 description "rank-one unitary example" → "GU(1,1) coefficient test", and §12.1 "finite locally free trace" → "coefficient trace adapter", matching the head headings.

Evidence: AutomorphicBundles head conversion table (lines 217–222) and headings at lines 912, 942, 1044, 1400, 1770, 1794, 1841, 2038, 2123, 3020, 4083, 4296, 4331, 4520, 4929; ShimuraCompactifications head headings at lines 691, 1679, 2133, 2159, 2647, 2675, 2722, 2905; PhiGammaModulesAndIwasawaCohomology head: Layer 4 begins at §4.2 (line 1927), §2.7 at line 1257 with inversion δ↦δ⁻¹ at line 1314. After the edit `roadmaps resolve` lists no citation found nowhere.

## F04 (P3) — applied

§2.2 "inclusions in the interiors of the right-hand closed subsets in the solid/discrete-adic locale" → "inclusions in the interiors, taken in the underlying topological space of Cbar, of the right-hand closed subsets: p2*D+⊂int(p1*D+) and p1*D−⊂int(p2*D−); this notion is topological, not schematic, and no locale enters its definition (BP-Hida, Definition 2.1.19 and Remark 2.1.20, p. 9)". The proof route no longer invokes the solid locale and names §8.1 as the place it enters; §2.2's Needs drops SolidAnalyticRings §§7.3–7.4 and gap:discrete-adic-solid-comparison (nothing in the definition uses them) and cites AutomorphicBundlesPartII §3.1 and §3.10 for the proper correspondence and the set-theoretic expanded/contracted notions. Same pattern in §2.8: the interiors there are now stated as the topological ones of §2.2. Added the Check: on an irreducible Cbar with surjective projections the compact conditions force D± empty or all of Xbar, the Frobenius example is strictly but not compactly contracted (int(V(t^p))=∅ in ℙ¹), and nonempty compact instances need reducible Cbar as for the mod-p^s degree models of Layer 8. The formal closed support Ẑ of §8.1 is unchanged.

Evidence: BP-Hida line 432 and 435 (compactly expanded/contracted via ◦), line 452 (footnote: ◦T is the interior of T in the topological space V), line 436–437 (Remark 2.1.20: topological), line 1476–1479 (the locale Ẑ enters only in §2.10 for cohomology with support).

## F05 (P3) — applied

§5.4 "For `K_(p,m,b)`, changing m" → "For K_(p,m,b), changing m". The remaining backticked names in the README are the five Mathlib declarations of the supplier contract and `HasDerivedCategory`; Suggested.lean declares nothing, and no backticked name of this roadmap's own remains.

## Checks run

- Elaboration: `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean` from the content checkout: exit 0, no output (the file is unchanged this round: module docstring and empty namespace, `import Mathlib` only). The `#check @name` pass has no declaration to run on; no README target changed its Lean counterpart because none exists.
- Dependency direction:

  ```text
  depcheck: 241 roadmaps, 2442 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line. The one new edge is SchemeAndStackFoundations §2.20 (on main, merge-order line 1).
- `roadmaps resolve packages/HigherHidaAndColemanTheory/README.md`: "Cross-roadmap citations found nowhere: None. Lean names found nowhere: None." (21 leads before the round, all the drifted labels of F03.)
- Gap consistency: the README cites exactly the nine slugs in the plan's `gaps` list (solid-localization-kernel, discrete-adic-solid-comparison, siegel-ordinary-igusa, klingen-height-one-igusa, abelian-affinoid-basis, projective-banach-cohomology, banach-support-duality, coherent-correspondences, abelian-subcanonical-vanishing); no Needs or Dependencies line repeats a token.
- `design/plan.json`: only the `gaps` list changed (two entries removed, `section`, `needs` and one `neededBy` element of `coherent-correspondences` updated); the file round-trips byte-identically outside that list.
- No source fetch was needed; `sources.toml` and `metadata.toml` are unchanged; `needs-references.toml` was not created.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.1 q!A≃Ω^d_(X/A)[d] | q=id (d=0); X smooth curve over 𝔽₂ and ℤ/9 (d=1); X=𝔸²_A (d=2) | A[0]; Ω¹ in degree −1 (degree 0 if the shift is dropped); Ω² free of rank 1 on dt₁∧dt₂ in degree −2, while Ω¹[2] has rank 2 | the shift and the exterior power are both pinned | d=2 Check added |
| §2.1 hypotheses | A=ℤ/p^s (Artinian, Noetherian); finite flat extension A′ | q smooth ⇒ Cohen–Macaulay fibres of pure dimension d, so SchemeAndStackFoundations §2.20 applies; base change to A′ is flat, so ω commutes with it | hypotheses of the supplier are met | none |
| §2.1 transport to the solid category | q proper; q non-proper | proper: the §3.0a comparison applies directly; non-proper: q=q̄∘j with q̄ proper, q^!=j^*q̄^! since j^!=j^* for an open immersion | route stated with its two inputs | route written out |
| §2.2 compact dynamics, topological interior | ℙ¹_(𝔽_p), p₂=Frobenius, D−=V(t) | strict: (t^p)⊆(t)^p holds with s=1/p; compact: int(V(t^p))=∅ in ℙ¹, so V(t)⊄∅ | strictly but not compactly contracted; "strict ⇒ compact" is false | Check added |
| §2.2 compact dynamics on irreducible Cbar | surjective p₁,p₂; D+ proper nonempty closed | int(p̄₁*D+)=∅, so p̄₂*D+⊆∅ forces D+=∅; D+=Xbar gives int=Cbar and holds trivially | nonempty instances need reducible Cbar | Check added |
| §2.2 D+=D−=∅ | any Cbar | both compact inclusions read ∅⊆∅ | satisfied | none |
| gap:coherent-correspondences, limit orders | D+=D−=∅; only D+; only D− | K−+=K+−=RΓ(Xbar,F); only D+: j−=id, K+−=RΓ(j+_*F)=colim_(n+)RΓ(F(n+D+)); only D−: K+−=RΓ(j−_!F)=Rlim_(n−)RΓ(F(−n−D−)) | agrees with Conventions and with BP-Hida Corollary 2.3.11 (line 842–843: RΓ_{D−,D+}=colim lim, RΓ_{D+,D−}=lim colim) | none |
| §2.6 group-ring flatness from AutomorphicBundlesPartII §2.2 | Δ=C₂ over 𝔽₂, trivial torsor | 𝔽₂×𝔽₂ is free of rank one over 𝔽₂[C₂]; no division by 2 | the supplier's statement covers p dividing the order | citation only |
| §4.9 / §9.8 subcanonical vanishing from AutomorphicBundlesPartII §5.2 | n=0 subcanonical; n=0 canonical | subcanonical E(−0·D′) is inside the theorem; canonical at n=0 is excluded | the two-affine-cover argument uses the subcanonical case only, as before | citation only |
| F03 relabelling | B3.2 vs B3.3 | the head table says B3.3=5.2 precedes B3.2=5.3 | the range B3.2–B3.4 is 5.2–5.4, not 5.3–5.5 | labels written per the table |
| §5.4 K_(p,m,b) | — | plain text, as at lines 26 and 146 | no Lean claim | backticks removed |

## For the maintainer

- Ownership against open pull requests: the brief names the open roadmap pull requests without checkouts; they were checked through `roadmaps grep` at the indexed heads only, and the solid six operations, partial-support objects and subcanonical vanishing were found only in AutomorphicBundlesPartII.
- The narrowed `gap:coherent-correspondences` is the only request left to AutomorphicBundlesPartII beyond the abelian-type vanishing extension; its intake reconciliation should see two gaps fewer for this package (`equivariant-coherent-models`, `pel-subcanonical-vanishing`).
- SchemeAndStackFoundations §2.20 is a new supplier (on main). No name of this roadmap changed; no other roadmap cites a section of this roadmap by number that moved (§2.1 kept its number and heading position).
- The review's "Source issues" list was not re-examined; the README's E1–E9 are unchanged.
