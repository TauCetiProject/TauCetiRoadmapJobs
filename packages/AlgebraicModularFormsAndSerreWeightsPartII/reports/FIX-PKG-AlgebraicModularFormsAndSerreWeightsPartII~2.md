# FIX-PKG-AlgebraicModularFormsAndSerreWeightsPartII~2

Files changed: `packages/AlgebraicModularFormsAndSerreWeightsPartII/README.md`, `Suggested.lean`, `sources.toml`, and the top-level `gaps` list of `design/plan.json`. A parsed comparison confirms that no other key of `plan.json` changed and that key order is unchanged. `metadata.toml` is unchanged.

All eleven findings were verified against the cited sources, the sibling roadmaps and the pinned libraries, and all are correct. None is disputed and none is out of scope.

## F01 (P1) — applied

Old → new:
- §3.7: "prove the specified tame-level descent" → b₀ exists over k₀ at the fixed level, built from the polarization; P20 asserts the root without proof.
- §5.6: "must show" → a theorem giving a natural integral V₂^M.
- §4.4: the descent of a power of h′ is stated.
- §§2.2, 3.5, 9.4: each comparison is now part of the statement.
- `gaps`: the six supplier-less entries are removed (14 → 8); G6 lives only in Downstream consumers.

Evidence. §3.7: P20 Lemma 6.3.1.1 (P20 line 1338–1344) says LF∘λ*=id for a quasi-polarization. Applied to G^oo, the definition of h′(G^oo) at P20 line 1360–1362 gives h′(G^oo)=t^(p−1). Since p±1 are even, h′=(Ha(G^m)^((p+1)/2)⊗t^((p−1)/2))². Normality of S then extends the root, because a rational section whose square is regular is regular.

§4.4: the route uses O_X*=π_*O_X (ShimuraCompactifications §C5.16), so the Stein factor of S→S* is a universal homeomorphism. Stacks Tag 0CNF (Stacks line 5242–5247) then gives the p-power descent. This replaces the design's planned comparison with Boxer's sections, which is no longer needed.

§5.6: CG20 Lemma 8.4 (CG20 line 2306–2313) states the integrality of V₂ but does not print the formula.

Ownership. A search of all open heads found no other roadmap that owns the genus-two Iwahori local model or the generalized Hasse sections on the Siegel minimal model. IgusaVarietiesAndTorsionConcentration IG.2.12 treats only its own unitary datum. These items therefore stay here.

## F02 (P2) — applied

`gap:siegel-parahoric-models` used to ask for the spherical, Klingen and paramodular models, minimal models, isogeny chains, the correspondence and comparisons. It now asks only for the Klingen and paramodular models of P20 Thm 6.1.5.1(3)–(4), the chain G→G′→G (P20 line 1702–1704), the correspondence C_(p,2) of P20 §14.9.2 (P20 line 4738–4752), and their comparisons. The `needs` text in the plan matches the README. §1.1, Layer 1 Dependencies, §4.1 and §4.4 now cite ShimuraCompactifications §§C5.3, C5.16, C5.17 and C5.23 without the gap.

Evidence: ShimuraCompactifications (open head) states that parahoric moduli interpretations "are not used and are not constructed here" (scope paragraph). Its §C5.16 states O_{M^min}=π_*O_{M^tor}.

## F03 (P3) — applied

- The three-gap block is gone. Each target now cites only what it uses:
  - §§2.2–2.3 and Layer 2: §§A4.3, A4.7, A4.9 (gap:siegel-rank-one-deformations);
  - §§7.2, 7.5 and Layer 7: §§A4.10–A4.11 (gap:siegel-isogeny-trace-ideals);
  - §8.2: §A4.3 (gap:siegel-logarithmic-de-rham);
  - §8.4 and Layer 8: §§A4.3, A4.7 (gap:siegel-logarithmic-de-rham).
- §7.4 no longer cites `gap:lci-fundamental-class`. It now cites SchemeAndStackFoundations §2.5, the filtered colimits its route uses.
- Duplicate entries are removed, including the doubled §A4.7/§A4.9 at §2.3 and the doubled AutomorphicBundles entries.
- "Layers k ;" is now "Layer 1;", "Layers 2–3;", "Layers 1 and 5;" and so on.

## F04 (P3) — applied

`standardSL2` used to be the composite toLin'/automorphismGroup with a `[Fact p.Prime]` binder. It is now `(TauCeti.stdSLRep k 2).comp (Matrix.SpecialLinearGroup.map (ZMod.castHom (dvd_refl p) k))`, without that binder. Suggested.lean imports `TauCeti.RepresentationTheory.ClassicalGroups.Restriction`, and the README cites `TauCeti.stdSLRep` (Restriction.lean:44). §8.3 gained a Checks list: the column against the row convention, the order of a product, and the image SL₂(𝔽₂) of order 6 against SL₂(𝔽₄) of order 60.

A scratch file proved that the old and new bodies are equal, and checked the column convention by `decide`.

## F05 (P3) — applied

The supplier contracts now cite `TauCeti.BinaryQuadraticForm` (Basic.lean:94), `.discrim` (line 146), the action γ•f=f∘γ⁻¹ (line 194) and `discrim_smul` (line 203). They also say how the roadmap's own determinant-normalized GL₂(ℚ) action differs. §1.2 gained an API fact and a Check: M·Q=(Mᵗ)⁻¹•Q; at T, T·x²=x², while T•x²=x²−2xy+y² (Basic.lean:237).

## F06 (P3) — applied

The locator for p^(3−r)U_(Kli(p),1) is now "P20, §10, p. 57; P20 line 2616". §13.3.1 (P20 line 4094–4099) is kept and cited only for q-expansion integrality. The same locator was added in Downstream consumers.

## F07 (P3) — applied

Deleted from §2.4: the Hilbert-chart sentence (p,h) and the following paragraph. Also deleted: the HilbertModularVarietiesAndShimuraCurves contract and the H2.7 entries in the §2.4 Needs and the Layer 2 Dependencies. No other target cited them.

## F08 (P3) — applied

1. §1.2 Check: diag(2,1) "det<0" → M=diag(1,−1), which sends x²+y² to −x²−y², keeps Δ=−4 and leaves the cone.
2. §1.3: (O′⊗M)[…] → (Sym^(j−k)(O′²)⊗M)[…].
3. §§7.6–7.7: the Layer 5 comparison and the congruences now say p odd.
4. §§8.1, 8.2, 8.4: p>d+2 → p>d+1 (Y16 Remark 3.13, line 1296–1302). Weight (6,2): p>7 → p≥7.

## F09 (P3) — applied

- ModularForms contract: "ℙ¹(𝔽_p) correspondence, p+1 count" → Layer 2's Hecke ring, coset decompositions, degree map and elementary divisors (its README lines 383–480). §5.2 owns the ℙ¹ parametrization, through the image line of adj(M)ᵗ mod p.
- "§5.2" and "§6.2" → "this roadmap's §5.2" and "this roadmap's §6.2".
- §9.2: "supplied by HodgeTate §§5.1–5.2" → "requested by gap:siegel-igusa-full-frames". The Scope paragraph and the HodgeTate contract now say Hilbert only.

## F10 (P3) — applied

The §8.4 route used an SL₂(𝔽_p) frame change; it now uses frames in U={C: C^(p)Cᵗ=I}. On SL₂, (Cᵗ)⁻¹=JCJ⁻¹, so by Lang's theorem U∩SL₂ is conjugate to SL₂(𝔽_p), and §8.3 applies. §8.3 now derives coefficient detection from irreducibility for any conjugate group.

New Checks: [[1,1],[0,1]] gives [[2,1],[1,1]]≠I, and [[0,i],[i,0]] lies in U∩SL₂ at p=3. The source for the normalization is K75 Lemma 13 (K75 line 1676–1700).

## F11 (P3) — applied

The "source typo" sentence at the end of §5.2 is deleted. In the worked examples, "the other numerical conditions from the uncorrected injectivity statement" is now "satisfies p∤k(2k−1) and k≤p+1". A search for "typo", "uncorrected", "misprint" and "erratum" finds nothing else.

## Checks run

- **Elaboration.** `lake env lean packages/AlgebraicModularFormsAndSerreWeightsPartII/Suggested.lean`, run from the content checkout, gives one warning: `61:8: warning: declaration uses 'sorry'`. There are no errors. Both Tau Ceti modules were already built at the pin.
- **Signatures.** I put `#check @standardSL2` and `#check @smallSymmetricPower_irreducible` in one scratch file and elaborated it. The elaborated types are:
  - `standardSL2 : (p : ℕ) → (k : Type) → [inst : Field k] → [CharP k p] → Representation k (Matrix.SpecialLinearGroup (Fin 2) (ZMod p)) (Fin 2 → k)`
  - `smallSymmetricPower_irreducible : ∀ (p : ℕ) [Fact (Nat.Prime p)] (k : Type) [inst : Field k] [inst_1 : CharP k p], ∀ d ≤ p - 1, ((standardSL2 p k).symmetricPower d).IsIrreducible`

  Both match README §8.3. The only change is that the unused `[Fact p.Prime]` binder is gone from the definition; no hypothesis was lost.
- **Depcheck.** `gate --depcheck … --movable` printed `depcheck: 48 roadmaps, 543 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- **Citation resolver.** `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name that resolves nowhere. I checked the Tau Ceti names myself at the pin: `stdSLRep` (Restriction.lean:44), `BinaryQuadraticForm` (Basic.lean:94), `discrim` (146), the action (194) and `discrim_smul` (203).
- **Gate failures listed in the brief:** none.

## Adversarial pass (statements added or changed)

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §1.2: M·Q=(Mᵗ)⁻¹•Q on SL₂(ℤ) | T=[[1,1],[0,1]], Q=x²; S=[[0,−1],[1,0]] | T·x²=x² and (Tᵗ)⁻¹•x²=x², while T•x²=⟨1,−2,1⟩. S·⟨a,b,c⟩=⟨c,−b,a⟩=S•⟨a,b,c⟩ (Basic.lean:241) | holds; the conventions differ at T | Check added |
| §1.2: negative-determinant Check | diag(1,−1), diag(2,1) on x²+y² | −x²−y² with Δ=−4, negative definite; 2x²+½y² with Δ=−4 | both computed | Check fixed |
| §1.3: ambient module | weight (k+1,k) | coefficient rank 2; the old module O′⊗M has rank 1 | old was false | fixed |
| §2.2: boundary rank | torus rank 1 with E supersingular / ordinary | 1+0=1; 1+1=2 | holds | none |
| §3.7: b₀²=h′ on the rank-one open | P20 L6.3.1.1 for G^oo | h′(G^oo)=t^(p−1); exponents (p+1)/2, (p−1)/2 at p=3,5 are 2,1 and 3,2 | holds | new statement |
| §3.7: weights | p=3; p=2 | m₀=4, h′ weight 8; p=2 gives 3/2 | holds; p=2 excluded | Check |
| §3.7: polarization scaling | p=5, c=2 and c=4; p=3, c=2 | 2²=4≡−1=(2/5); 4²≡1=(4/5); 2¹≡−1=(2/3); h′ factor c^(p−1)=1 | holds | Check added |
| §3.7: normality of S | interior off SS; boundary; SS | smooth (§3.5); simple zero of the elliptic Hasse invariant; isolated singularities (K75 p.193); CM | R1+S2, normal | route |
| §3.7: order one | DVR b₀=t | ord h′=2, ord b₀=1, lengths 1 and 2 | holds | none |
| §4.4: p-power descent | k[t²,t³]⊂k[t]; p=2,3 | t∉k[t²,t³]; t², t³ lie in it | a power is necessary and sufficient | Check added |
| §4.4: zero set | rank-one boundary point of S* | h′ a unit there, so the zero set is π(Z_red) only | holds | Check added |
| §4.4: weights | p=3 | (p−1)(p+1)N=8N on both sections | holds | Check edited |
| §5.2: ℙ¹ parametrization | M=diag(p,1); M=[[p,a],[0,1]] | image of adj(M)ᵗ mod p: [1:0], then (m/p,r,pn); [1:−a], then (m−ar+a²n)/p | matches CG20 line 2335 up to a↦−a | route |
| §5.2: well-defined on cosets | M↦Mγ | adj(Mγ)ᵗ=adj(M)ᵗadj(γ)ᵗ, same image | holds | none |
| §5.6: natural V₂^M | K/O class 1/p+O; p=3, (3,3) | p^(j+2k−6)=27 cannot be divided on torsion; the coset formula needs no division | holds | Check added |
| §§7.6–7.7: p odd | p=2 | X₂ needs the odd-prime discriminant symbol (§5.4) | restricted | fixed |
| §8.1: range p>d+1 | (p,d)=(5,2),(5,3),(5,4),(7,5),(7,6) | 2d(d+1) mod p = 2, 4, 0, 4, 0 | units exactly for p>d+1 in these cases | range extended, Check added |
| §8.2: θ₁ at d=p−2 | p=5, d=3 | (3.31) needs p>5 (fails); Y16 Rem. 3.13 covers r=p−2 | holds | locator added |
| §8.4: (6,2) | p=7; p=5 | d=4<6, j−3k=0, j−3=3≢0 mod 7; at p=5, d=p−1 is excluded | holds for p≥7 | statement and Check |
| §8.4: frame group | C=[[1,1],[0,1]]; C=[[0,i],[i,0]] at p=3 | CCᵗ=[[2,1],[1,1]]≠I; C^(3)Cᵗ=I and det=1 | the old route was broken; U∩SL₂ works | route fixed |
| §8.4: (Cᵗ)⁻¹=JCJ⁻¹ on SL₂ | general [[a,b],[c,d]] | both sides equal [[d,−c],[−b,a]] | holds | route |
| §8.3: detection by orbit span | d=3, p=3, ℓ = coefficient of x²y | span{x³,y³} is invariant and ℓ vanishes on the orbit of x³ | fails outside d≤p−1, as the hypothesis requires | none |
| §8.3: `standardSL2` | p=3 unipotents; equality with the old body | e₂↦e₁+e₂ (by `decide`); lower then upper gives [[2,1],[1,1]] | holds | Checks added |
| §9.2: attribution | HodgeTate §5.1 at F=ℚ; full frame at p=3 | degree p^(m−1)(p−1)=2 against GL₂(𝔽₃) of order 48 | not a full-frame tower | gap cited |
| §9.4: normalization | P20 §10 | p^(3−r)U_(Kli(p),1) at line 2616; T06 p^(−3) trace at line 1313–1314 | holds | locator |

## Notes for the maintainer

- The plan's top-level `gaps` now lists only the eight supplier gaps, and each has its "What … must provide" line. The design obligations G1–G6 are discharged in the README:
  - G1: §§2.2, 3.5 and 7.1;
  - G2: §3.7;
  - G3: §4.4;
  - G4: §5.6;
  - G5: §9.4;
  - G6: Downstream consumers.

  The design-stage record remains in `design/README.md`.
- New source `Stacks` (Tag 0CNF), fetched and certified through the sources service. I also completed its authors, title and year. The service reordered keys in `sources.toml` without changing any value.
- The P20, K75 and Y16 locators were extended to cover the new citations.
- Pattern repair outside the findings: K75 §11 sits in Chapter IV, not Chapter V (K75 line 1023, 1712, 1731). The locator was corrected in the README and the manifest.
- `standardSL2` no longer takes `[Fact p.Prime]`. No other roadmap cites it, so no consumer changes.
- Consumers of `gap:siegel-parahoric-models` (ShimuraCompactifications) now receive a narrower request: the Klingen and paramodular models, the chain and the correspondence.
- Ownership was checked against main and the open heads with `roadmaps grep`. No notion was moved down from a later roadmap.
- The review contained no suspicious instructions.
