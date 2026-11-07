# Review of ReductiveGroups (pull request #1676 at 528579c)

**Verdict:** needs changes

Full review of head `528579c6f7d081ee27e6472f0bec2478f79d65c4` (289 changed lines since `92ab639`). The previous review (PRREVIEW-ReductiveGroups~19, at `92ab639`) raised no findings, so there is nothing to carry forward. Three of the five findings below are new in this head: R01 comes from the "pinned root-system citations" repair, and R02 is widened by the new consumer sentences. The other two were already present.

## R01 (P1) — the root-system supplier contract cites five declarations that do not exist at this head's Tau Ceti pin

**Location.** `TauCetiRoadmap/ReductiveGroups/README.md:59–62`: "the Weyl Coxeter presentation, simple transitivity of the Weyl group on bases … are pinned Tau Ceti declarations … they are not RootSystems targets here". The same citations appear at `README.md:209–220` (supplier contract), `:2249` and `:2257` (§9A.1a-L *Needs:*), `:2901` (9D *Needs:*), `:3358` and `:3485–3488` (11B "Consume the native `TauCeti.weylCoxeterSystem` … `TauCeti.weylCoxeterHom_injective` its injectivity"), and in the Layer 7/7C/11 dependency lines `:1439, :1470, :1511, :1531, :3601, :3639`.

**Claim.** This head pins Tau Ceti `a91d3aaf` (`lake-manifest.json`). At that pin the following do not exist: `TauCeti.weylCoxeterSystem`, `TauCeti.weylCoxeterHom_injective`, `TauCeti.length_weylCoxeterSystem_eq`, `RootPairing.Base.existsUnique_map_eq` and `TauCeti.HasCartanType.of_base`. The files `Weyl/Bases.lean` and `Weyl/CartanType.lean` do not exist either. Three parts of the roadmap rest on these. §9A.1a-L's uniqueness of the factorization `g = w∘d` needs simple transitivity on bases. 11B's identification of `π₁(V_reg)` with the kernel of `ArtinGroup → W` needs injectivity of `weylCoxeterHom` (Tits). 9D's base-independent Dynkin classification needs `of_base`. All three are therefore written as supplied when nothing supplies them. In the same paragraph, `RootPairing.dominantChamber` is misnamed: it is `TauCeti.dominantChamber` (`Chamber.lean:137`, inside `namespace TauCeti` opened at line 94). Separately, `README.md:1050` names "RootSystems for the pairing vocabulary", which RootSystems on main does not supply; the pairing vocabulary is Mathlib's `RootPairing`, as the `*Needs:*` line at `:1025–1026` already says.

**Witness.** At the pin, `TauCeti/LinearAlgebra/RootSystem/Coxeter/Presentation.lean:41` says injectivity "is the remaining `weylCoxeterSystem` target". `Inversions/Length.lean:67–68` says the Coxeter-length identity is not proved. `RootSystem/Weyl/` has no `Bases.lean` or `CartanType.lean`.

**Why it happened.** Main pins Tau Ceti `2fd255d9` (4 Nov). There all five exist: `Coxeter/Presentation.lean:158` (injective), `:167` (`weylCoxeterSystem`), `:191` (length), `Weyl/Bases.lean:170`, `Weyl/CartanType.lean:71`. This branch's merge base `2b93f342` predates main's pin bump. The README was written against main's pin, but the file is built against the old one.

**Repair.** Rebase the branch onto current main, so that its `lake-manifest.json` pins Tau Ceti `2fd255d9`, and rerun the targeted build there. Rename `RootPairing.dominantChamber` to `TauCeti.dominantChamber`. At `:1050`, replace "RootSystems for the pairing vocabulary" with Mathlib's `RootPairing`.

The rebase then needs one more pass, because that pin also proves several of this file's headlines:
- `TauCeti.HopfIdeal.IsBorelOverAlgClosed.exists_conjugate_eq` (`Algebra/AlgebraicGroup/Borel/Conjugacy/Existence.lean:133`) is `exists_conjugate_eq_of_isBorelOverAlgClosed` up to the symmetry of `=`.
- `TauCeti.reductiveCommHopfAlgProperty_iff_linearlyReductive` (`Reductive/CompleteReducibility.lean:118`), with its forward direction `reductiveCommHopfAlgProperty.linearlyReductive`, gives `linearlyReductive_of_reductive`.
- `TauCeti.SchemeAction.exists_isClosed_orbit` and `exists_isClosed_orbit_subset_orbitClosure` (`AlgebraicGeometry/GroupAction/ClosedOrbit.lean:178, :150`) cover `exists_closed_orbit` and `exists_closed_orbit_in_closure`.

Delete those headlines from `Suggested.lean`, cite the pinned theorems in the supplier contracts, and check the remaining orbit and Layer 6 statements against what that pin proves.

Keeping the old pin and citing RootSystems §2.1/§3.1 instead does not work. RootSystems' open revision (#1196, its `README.md:247` and `:621`) already treats `weylCoxeterHom_injective` as a pinned declaration, so the cited target is being removed there. Tested: at Tau Ceti `2fd255d9` a declaration-level grep finds all five names. At `a91d3aaf` it finds none of the five.

## R02 (P2) — the classical complex-point topology and smooth charts have two owners, and three of the named consumers do not consume Layer 3A.5

**Location.** `README.md:828–873` (Layer 3A.5 "Classical complex points": the topology on `X(ℂ)`, independence of presentation, gluing, open/closed embeddings, fibre products, the reduction homeomorphism, Hausdorffness, properness and smooth charts; SGA 1 XII §§1.1–1.2, Prop. 2.1, 3.1–3.2). `README.md:30–34` says "ComplexComparisonPartII C-1.1 states the classical topology and smooth charts of Layer 3A.5 … FormalConnectionsOpers §2.4 and SchubertGeometry S9 likewise take complex points … from Layer 3A.5". `README.md:3728–3730` repeats this.

**Claim.** ComplexComparisonPartII C−1.1 constructs the same object, from the same SGA 1 XII locators, and never cites this roadmap. That makes it a second owner, not a consumer. The two consumer statements added in this head are also false at the consumers' heads.

**Witness.**
- ComplexComparisonPartII (#848) `README.md:893–897`: `complexSchemeAnalytification` "identifies the underlying topological space with `X(ℂ)` equipped with the classical topology" (SGA 1 XII 1.1, 1.2, Prop. 2.1). Its ownership row at `:148` names C-1.1 as the owner, and the file has no "ReductiveGroups" string.
- FormalConnectionsOpers (#1056) `README.md:711`: §2.4 takes "ComplexComparisonPartII C−1.1's `complexSchemeAnalytification`". Its `:78–80` places "the classical topology and smooth charts" in ComplexComparisonPartII C−1.1.
- SchubertGeometry (#1224) `README.md:1134–1147`: S9.0 constructs its own analytification.
- Main's version of this README (`:342`) consumed "ComplexComparisonPartII C−1.1's actual `.complexPoints`".

**Repair.** ComplexComparisonPartII is earlier in the merge order (line 39) and is an allowed supplier. Consume its C−1.1 `complexSchemeAnalytification` for `X(ℂ)`, the classical topology, the open/closed/fibre-product/reduction comparisons and the charts. Delete 3A.5's own construction of these (`:828–873`). Keep in 3A.5 only the group-specific items: `G(ℂ)` as a complex Lie group with its tangent dictionary, smoothness of the orbit, the submersion property of the orbit map and `G(ℂ)/H(ℂ) ≃ O_x(ℂ)`. Delete the consumer claims for ComplexComparisonPartII C−1.1, FormalConnectionsOpers §2.4 and SchubertGeometry S9 at `:30–34` and `:3728–3730`. Keep FormalConnectionsOpers §4.3 (the `G(ℂ)` dictionary) and §3A.5 (Layer 6B) as consumers; both are correct at #1056 (`:1418–1424`, `:1222–1224`).

## R03 (P2) — Layer 6B's Matsushima theorem is statable at this head's pin, but the module docstring says it is not

**Location.** `TauCetiRoadmap/ReductiveGroups/Suggested.lean:36–43`: "Layer 6B's Matsushima theorem … is not stated: the fppf sheaf of points of an affine scheme on the site `CommAlgCat.fppfTopology`, and the comparison map from the quotient sheaf to it, … not pinned carriers."

**Claim.** Both "missing" carriers are short definitions with real bodies on pinned carriers:
- the points sheaf of `Spec B` is the subcanonical Yoneda sheaf composed with `uliftFunctor`;
- the comparison map comes from the pinned universal property `CommHopfAlgCat.fppfHomogeneousQuotientHomEquiv` (`Fppf/Quotient/Homogeneous/Basic.lean:280`), with invariance supplied by `HopfIdeal.ofConv_mul_apply_of_mem_coinvariants` (`HopfIdeal/Coinvariants/Basic.lean:256`);
- "`N°` reductive" is expressible as `FiniteTypeCommHopfAlgCat.identityComponent (… quotient H I)` (`Connected/GroupScheme.lean:68`).

A statable headline left out of the file is P2.

**Witness.** The statement below elaborates against this head's pins. The only warning is the `sorry` in the theorem's proof. Before elaborating it I built `TauCeti.Algebra.AlgebraicGroup.Fppf.Quotient.Homogeneous.Basic` and `…Connected.GroupScheme`.

```lean
noncomputable def affinePointsSheaf (B : CommAlgCat.{u} R) :
    Sheaf (CommAlgCat.fppfTopology R) (Type (u + 1)) :=
  ⟨((CommAlgCat.fppfTopology R).yoneda.obj (op B)).obj ⋙ uliftFunctor.{u + 1, u},
    Presheaf.isSheaf_comp_of_isSheaf _ _ _ ((CommAlgCat.fppfTopology R).yoneda.obj (op B)).property⟩

noncomputable def toCoinvariantPoints (H : _root_.CommHopfAlgCat.{u} R) (I : HopfIdeal R H) :
    HopfAlgebra.pointsPresheaf H ⋙ uliftFunctor.{u + 1, u} ⟶
      (affinePointsSheaf (CommAlgCat.of R I.coinvariants)).obj where
  app A := ↾fun g => ULift.up (CommAlgCat.ofHom
    ((ULift.down g).ofConv.comp I.coinvariants.val)).op
  naturality := by intro A B f; rfl

noncomputable def matsushimaComparison (H : _root_.CommHopfAlgCat.{u} R) (I : HopfIdeal R H) :
    CommHopfAlgCat.fppfHomogeneousQuotient H I ⟶
      affinePointsSheaf (CommAlgCat.of R I.coinvariants) :=
  (CommHopfAlgCat.fppfHomogeneousQuotientHomEquiv H I _).symm
    ⟨toCoinvariantPoints H I, fun A g n => by
      have h : ((g * n.1).ofConv).comp I.coinvariants.val =
          (g.ofConv).comp I.coinvariants.val := by
        ext x; exact HopfIdeal.ofConv_mul_apply_of_mem_coinvariants x.2 g n.2
      change ULift.up (CommAlgCat.ofHom (((g * n.1).ofConv).comp I.coinvariants.val)).op =
        ULift.up (CommAlgCat.ofHom ((g.ofConv).comp I.coinvariants.val)).op
      rw [h]⟩

theorem matsushima (H : FiniteTypeCommHopfAlgCat.{0, 0} ℂ)
    (hG : reductiveCommHopfAlgProperty ℂ H) (I : HopfIdeal ℂ H.obj)
    (hN : reductiveCommHopfAlgProperty ℂ
      (FiniteTypeCommHopfAlgCat.identityComponent (FiniteTypeCommHopfAlgCat.quotient H I))) :
    IsIso (matsushimaComparison H.obj I) := by
  sorry
```

(With `open CategoryTheory Opposite TauCeti`, `variable {R : Type u} [CommRing R]`, and imports `TauCeti.Algebra.AlgebraicGroup.Fppf.Quotient.Homogeneous.Basic`, `…HopfIdeal.Coinvariants.Basic`, `…Reductive.Basic`, `…Connected.GroupScheme`.)

**Repair.** The repair depends on the pin chosen in R01.
- **After the R01 rebase:** the theorem is proved at Tau Ceti `2fd255d9` as `TauCeti.HopfIdeal.isIso_fppfHomogeneousQuotientToCoinvariantsPoints_of_reductive` and `…_of_isLinearlyReductive` (`Algebra/AlgebraicGroup/Fppf/Quotient/Homogeneous/Coinvariants.lean:255, :219`), using the native comparison map `fppfHomogeneousQuotientToCoinvariantsPoints` (`:111`). Cite these in the supplier contracts. Delete the "Layers 3 and 6B" bullet's Matsushima clause. Reduce 6B's target to what that pin does not prove, for example base change of the quotient.
- **If the old pin is kept:** add the three definitions and the theorem above to `Suggested.lean`, name them in README 6B, and delete the docstring clause.

Do not leave it as "not statable" in either case.

## R04 (P3) — five other open pull requests change this roadmap and conflict with this head; no merge order is stated

**Location.** The pull-request description, which states no order relative to #1332, #1797, #1807, #1808 or #1854.

**Witness.**
- #1332 (same author): `git merge-tree` of its head `f80fc350` against this head reports "changed in both" for `TauCetiRoadmap/ReductiveGroups/README.md` and `Suggested.lean`, with 62 conflict hunks.
- #1807: a locally available ref of its branch (`74e527e8`) rewrites `ReductiveGroups/README.md` (the 9E Lang sentence) and conflicts.
- #1797, #1808 and #1854: the overlap index reports conflicts in `README.md`, `Suggested.lean` and the companion files this head deletes.

**Repair.** In the description, state which pull request is rebased on which: either this one lands first and the others rebase onto its folder (with the companion `.lean` files deleted), or the reverse. Close or retarget #1332 if this pull request supersedes it.

## R05 (P3) — two page ranges start one page late

**Location.**
- `README.md:549`: "Jantzen, Part I, 1985 preprint, §§3.3–3.7, pp. 53–57". `README.md:3774` has "pp. 53–60".
- `README.md:3422` and `Suggested.lean:412`: "Fox–Neuwirth, §7, pp. 123–126".

**Witness.**
- `jantzen-1985` lines 1485 and 1507: printed p. 52 contains the heading of §3.3 (Induction) and the start of its definition. Lines 1635–1645: §3.7 ends on printed p. 58.
- `fox-neuwirth` lines 118 and 153: the heading "7. A presentation" is on printed p. 122.

**Repair.** Use "§§3.3–3.7, pp. 52–58" at `:549` and "pp. 52–60" at `:3774`. Use "§7, pp. 122–126" at `README.md:3422` and `Suggested.lean:412`.

## Verified sound

**Head, scope, gate.** Head `528579c6…`; the worktree is clean. `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/ReductiveGroups'` is empty. I reran the gate on this head:

```text
gate ReductiveGroups: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The worker's run at this head also reports `build=0`.

**Dependency check** (`--movable`, content main and the board's ORDER.txt):

```text
depcheck: 239 roadmaps, 2369 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line.

**Elaboration and signatures.** `lake env lean` on `Suggested.lean` exits 0 with exactly 12 `sorry` warnings, at lines 122, 131, 142, 151, 161, 182, 199, 215, 228, 250, 414 and 423. `halfTwist_injective` and `halfTwistLoop` are fully proved. I ran a scratch file with `#check @…` for every theorem, `halfTwist`, `halfTwistLoop` and the cited natives. Every elaborated type matches its README statement and keeps its binders: `[CharZero k]`, `Algebra.Smooth`, geometric connectedness, `[Finite k]`, `[IsAlgClosed K]`, the orbit instances and `2 ≤ n`. `TauCeti.AlgHom.mapValue` resolves at the pin. The worker's `signatures.md` reports it as an unknown identifier, which is an artefact of its probe.

**Padding probe.** I replaced every `sorry` in turn by `simp`, `rfl`, `infer_instance`, `trivial`, `decide` and `exact?`. None of the 12 theorems closes (`lang_surjective` times out under `exact?`). There is no padding.

**Library declarations opened at the pin (Tau Ceti `a91d3aaf`, Mathlib `6b7abb3c`).**
- Root systems: `TauCeti.posRoots` (`Positive.lean:114`), `exists_mem_support_height_reflectionPerm_lt` (`Lowering.lean:92`), `weylGroup_eq_closure_simple` (`SimpleReflections.lean:124`), `inversions` (`Inversions/Basic.lean:50`), `longestElement` (`LongestElement.lean:194`), `openWeylChamber` / `weylGroupEquivOpenWeylChambers` (`Weyl/Chamber.lean:112, :303`, with the stated `hne`), `existsUnique_dynkinType` (`FiniteType/Classification.lean:127`, needing spanning, irreducibility and `Nonempty ι`, as the README says), `nonempty_equiv_of_hasCartanType` (`Isomorphism.lean:137`), `DynkinType.simplyConnectedRootDatum` (`SimplyConnectedRootDatum/Assembly.lean:79`), `DynkinType.rationalRootSystem` (`…/Rational.lean:80`), `weylCoxeterHom` (`Coxeter/Presentation.lean:57`).
- Braid group: `BraidGroup`, `sigma`, `strand`, `strandSucc`, `val_strand(Succ)`, `strand_ne_strandSucc`, `permHom_sigma` (`GroupTheory/SpecificGroups/Braid/Basic.lean:97–308`).
- Representations and fppf: `finrank_indFDRep` (`RepresentationTheory/Induction/FiniteDimensional/Basic.lean:487`), `indTrivialEquiv` / `indTrivialIso` (`Induction/Permutation.lean:133, :166`), `pointsPresheaf_isSheaf` (`Fppf/Basic.lean`).
- Mathlib: `CategoryTheory.Aut_mul_def` (`CategoryTheory/Endomorphism.lean:137`, `f * g = g.trans f`), which confirms 11A's product convention.

Of the README's 147 backticked library names, a declaration-level grep finds every one at the pins except the five in R01 and `Gassmann.almostConjugate_iff_permutation_equiv`. That last name is InductionRestriction's own target on main (`Suggested.lean:729`), cited with its owner.

**Cross-roadmap citations resolved.**
- On main: SchemeAndStackFoundations §§0.3, 0.7, 0.8, 1.1, 1.5, 1.13–1.15, 2.6, 4.12 (headings at 551, 755, 798, 2071, 2167, 2418, 2458, 2502, 3437, 5613); ModularCurves §0E (386) and §0F (412, which contains the finite-locally-free Weil restriction); SmoothBundlesConnections B1.0/B1.1/B1.4 (221, 315, 421); LieGroups Layers 2/7/8; LieHighestWeight Layers 3/4/7; InductionRestriction Layer 2.1 (346); GroebnerGeometry G5 (394); DGFloer Layer 1 item 2 (the fibration long exact sequence).
- Consumers at their heads: FormalConnectionsOpers §4.3 and §3A.5 (#1056, `:1418–1424`, `:1222–1224`); GeometricTopology consumes §11A (#903, `:66`, `:2542`); ChevalleyGroups (main) defers the scheme-level special isogenies to 9B (`:76–78`), with the same exponent convention (`e_i = 1` long, `p` short).
- The overlap index lists no dropped ids in either direction.

**Seeded sample.**
- *1.1 Rational cohomology and induction* (`jantzen-1985`; printed page = PDF page − 5):
  - §2.8, the G-module ⇔ comodule equivalence with no flatness needed, runs from line 1100 (p. 36) through the remark at lines 1151–1165 (p. 39). The locator pp. 36–39 is right.
  - §3.9, injectives and `I ⊗ k[G]`, is at line 1688 (p. 60).
  - §4.2, derived fixed points, is at line 1923 (pp. 69–70).
  - §4.7, `Hⁿ(G, N⊗k[G]) = 0` for n > 0 and any N, runs from line 1994 (pp. 72–73).
  - §§4.14–4.16, the Hochschild complex `Cⁿ = M ⊗ k[G]^⊗n` and the cohomology theorem, run from line 2102 to 2161 (pp. 77–79a).
  - The page error for §§3.3–3.7 is R05.
- *8.1 Split reductive data*: `conrad-rgs` lines 5651–5668 (p. 136), Definition 5.1.1: a non-empty base, conditions (1)–(3), and constancy imposed on disconnected bases.
- *8.2 Pinnings*: `conrad-rgs` lines 7725–7751 (pp. 186–187). Definition 6.1.1 gives `(Φ⁺, {X_a})`; Remark 6.1.2 says Borels containing T match positive systems only on connected bases, which supports the `Spec(k×k)` Check.

**Other locators read.**
- McNinch §3 assumes G connected (line 235); this matches the `hconn` in `exists_levi_complement`.
- Dudas–Michel Lemma 7.6 (line 1145, p. 25), Props. 8.7/8.9 (lines 1424 and 1457, pp. 31–32, with the common torus T), Def. 9.2 (line 1599, p. 35), Prop. 9.4 (line 1614, p. 36), Thm. 9.6 (line 1665, p. 37), Lemmas 9.9–9.11 (pp. 38–39) and Thm. 10.1 (line 1808, p. 41).
- Frenkel–Kac §2.3 (2.3)–(2.6) and Prop. 2.2 (lines 754–789, pp. 40–41), including the transposed bracket order and the `c(α)c(−α)=ε(α,−α)` twist.
- Birman–Brendle (1) and (2) (lines 132 and 137, pp. 4–5), with the Fox–Neuwirth presentation at p. 69 (line 2659).
- Fox–Neuwirth §7: σᵢ is the counterclockwise exchange (lines 161–164), as the README states.

**Adversarial calculations** (values computed this round).

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| 1.1 Hochschild differential | `ℤ[t,t⁻¹]`, weight-one line | `d⁰(1)=1⊗(t−1)`; `d¹`: `t⊗(t−1)−(t⊗t−1⊗1)+(t−1)⊗1=0` | Pass |
| 1.1 trivial group, nonflat coefficients | `H=ℤ`, `M=ℤ/2` | differentials 0, id, 0; `H⁰=ℤ/2`, `Hⁿ=0` for n>0; `ℤ` is cofree but `2ℤ→ℤ, 2↦1` does not extend | Pass |
| 1.1 enough injectives: flatness needed | `R=ℤ`, `H=ℤ/2` (nonflat), `ℤ↪ℚ` | `ℤ⊗ℤ/2=ℤ/2 → ℚ⊗ℤ/2=0` is not injective, so the route needs flat H, as the README requires | Pass (negative control) |
| 1.1 induction and reciprocity | `C₂⊂S₃`; unit map `ℤ→ℤ[t,t⁻¹]` | rank 3; `(C₂(123))⁻¹=(132)C₂`; induced weight-one line 0, trivial line `ℤ` | Pass |
| 8.1 split datum | SL₂ vs PGL₂; rank-r torus; SL₂ over 𝔽₂ | root `2e` vs a generator of X; no roots; centre μ₂ with algebra `k[t]/(t−1)²` of length 2 | Pass |
| 8.2 pinning | `x_α(t)`, `x_α(2t)` over ℚ; `Spec(k×k)` | tangents `E₁₂` and `2E₁₂`; signs (+,−) give no constant Φ⁺ (Remark 6.1.2) | Pass |
| `orbit_locallyClosed`, `boundary_dimension_lt` | 𝔾_m on ℙ¹ at `[1:1]`; trivial group on `k[ε]/ε²` | orbit dimension 1, boundary of 2 points with dimension 0; empty boundary `⊥ < 0` | Pass |
| `exists_closed_orbit(_in_closure)` | 𝔾_a on 𝔸² by `(x+ay,y)`; empty X | closed orbits of dimensions 1 and 0 coexist; with `Points X` empty the hypothesis excludes the case | Pass |
| `exists_reduced_orbit_model` | trivial group on `Spec k[ε]/ε²` | reduced model `Spec k`, not the ambient scheme | Pass |
| `linearlyReductive_of_reductive` | SL₂ in char 0 vs char p; 𝔾_a; constant `ℤ/p` | `R_n` simple vs `R_p ⊃ ⟨x^p,y^p⟩` (excluded by `CharZero`); `R_u(𝔾_a)=𝔾_a` fails the hypothesis | Pass |
| `exists_levi_complement` | Borel of SL₂/ℚ; `J=(a−1)`; `SL₂(W₂)` | coinvariants `k[a,a⁻¹]`, `J=(b)` bijective; `J=(a−1)` has kernel `(a−1)`; char p excluded | Pass |
| `exists_conjugate_eq_of_isBorelOverAlgClosed` | SL₂ over k̄; μ_p | `w[[a,b],[0,d]]w⁻¹=[[d,0],[−b,a]]`; only the trivial Borel exists for μ_p | Pass at this pin (duplicate after rebase, R01) |
| `lang_surjective` | 𝔾_a/𝔽₂ at θ∈𝔽₄; 𝔾_m; SL₂ `u(θ)`; constant C₂; transcendental `a` | `θ²−θ=1`; `θ⁻¹F(θ)=θ`, `θF(θ)⁻¹=θ²`; `u(1)`; C₂ gives only the value 1 (excluded by `hconn`); `T^q−T−a` has a root | Pass |
| fixed-coset lifting | `F̄_qˣ`, q odd, `J={±1}` | Lang map `x^{q−1}=1` misses −1; `σ(a)=−a` and no fixed element in `{a,−a}` | Pass (negative control) |
| `exists_coordinatePresentation` | n = 0, 1, 2; ℤ/4 | relation 0, `x−1`, `ad−bc−1`; inverse of `[[1,1],[0,1]]` has entry 3 | Pass |
| `halfTwist`, `halfTwist_injective` | n=2, i=0, t=½ and t=1; n=3 | `(½−I/2, ½+I/2)` (counterclockwise); `(1,0)`; fixed point at distance 3/2 = 3 × radius | Pass |
| `plane_braid` | n = 0, 1; orientation convention | `Fin(n−1)` is empty and both groups trivial; Mathlib `[p][q]=[q.trans p]`; word reversal (anti-automorphism) and `σᵢ↦σᵢ⁻¹` preserve the Artin relations, so `∃e` holds in every convention, and e is unique because the loops generate | Pass |
| `permutation_nonsplit` | n=2; n=1 | ℤ→C₂: a section needs `2m=0` with m odd, impossible; at n=1 the trivial section exists, so `2≤n` is needed | Pass |
| 3A.5 / 3A.7 Checks | `t↦t²`; `k[ε]/ε²`; doubled origin | derivative 2 at 1, 0 at 0; one point, local rings of dimensions 2 vs 1 | Pass (ownership is R02) |
| 4 Jordan / diagonalizable | `[[2,1],[0,2]]`; `[[0,1],[a,0]]` over 𝔽₂(a); `D(ℤ/0)` | `g_u=[[1,½],[0,1]]`; `(g−√aI)²=0` only over `k(√a)`; at n=0 neither sequence is exact | Pass |
| 6 / 6A / 6B Checks | SL_p centre; 𝔾_m weight-1 cocycle; `GLₙ/Oₙ` | `Z°=μ_p`, `k[ε]/ε^p`; `a(t)=c(t−1)=d(c)`; `g=diag(2,1)`, `h`=swap: `(gh)(gh)ᵗ=ggᵗ=diag(4,1)` while `(gh)ᵗ(gh)=diag(1,4)` | Pass |
| 6B Matsushima statement (R03) | N=G, N=1, μ₂⊂𝔾_m, N⁺⊂SL₂ | point = point; G = G; `ℂ[t²,t⁻²]`; `N⁺°` not reductive (excluded), `𝔸²∖0 ≠ 𝔸²` | Statable (R03) |
| 7 / 7b Checks | GL₃ block parabolics; GL₂ with `u=[[1,1],[0,1]]` | `P∩Q=L`; `L∩M` = centre, `P∩Q=M` of dimension 2 ≠ RHS of dimension 1 | Pass |
| 7C rank-one identity | a=b=1 and general | `[[2,1],[1,1]]` both sides; `[[1+ab,a],[b,1]]` both sides | Pass |
| 7C root subsets | A₂, w=s₁ and w=s₁s₂ | `A_{s₁}={α₂,α₁+α₂}`; `A_{w₀s₁}={α₂}`; `A_{s₁s₂}={α₂}`, not normal | Pass |
| 7c–7f Checks | HC on GL₂; S₃ fixed cosets; GL₂(𝔽₃) twist | dimension q+1; `1·2=2·1`; second columns (2,0) vs (1,0) | Pass |
| 9A.1a ADE cocycle | A₂, `α₁<α₂` | `ε(α₁+α₂,−α₁−α₂)=(−1)^{a₂b₁}=−1`; `[E₁₃,−E₃₁]=−H` | Pass |
| 9A.1a-L factorization (R01) | A₁, A₁×A₁, A₂ with g=−1 | (−1,1); (1,swap); (w₀, flip), `w₀α₁=−α₂` | Correct, but its uniqueness rests on an absent declaration (R01) |
| 9A.1b folding | A₃, A₄, D₄ triality, E₆; `γ_Y=[[0,−1],[1,−1]]` | `[[2,−2],[−1,2]]`, `[[2,−1],[−2,2]]`, `[[2,−3],[−1,2]]`; 12+2=14, 48+4=52, 24+4=28; Smith form diag(1,3), F₃-fixed vector (1,−1) | Pass |
| 9B charts / quotients | SL₂ Ω=D(a); ℤ/4; `[[2,1],[3,2]]`; SL₂→PGL₂ | lower-right `(1+bc)/a=d`; 48 matrices; no single chart over ℤ; `diag(2,1)` has no ℚ-lift | Pass |
| 9B special isogeny | B₂ char 2; G₂/F₄ strings | `(τ*)²=2`; `x_α(t)↦x_β(t²)↦x_α(t²)`; constants ±3, ±2 | Pass |
| 9C distributions | 𝔾_m; SL₂; μ₀ | `binom(3,2)=3`; `EF=FE+H`; dim `p³`; Lucas gives `binom(n−1,p−1)≡[p∣n]` | Pass |
| 10 Checks | SL₂ `L(p)`, char 3 n=4, char 2 n=2; `SL₂/N⁺` | dimension 2 vs p+1; socle of dimension 4 missing `x²y²`; xy generates, y² does not; `s_c=s_a n(−1/(ac))` | Pass |
| 11B Artin (R01) | A₁; 𝔰𝔩₂ | `π₁(ℂ*)=ℤ=Art(A₁)`; discriminant `4t²`; lift ends at −1 | Correct, but its injectivity input is absent (R01) |

## Not verifiable

- Milne, *Algebraic Groups* (2017): the cached `milne-iag` text is the 2015 v2.00 notes, which number theorems differently. I did not check the 2017 locators (Theorems 17.9, 17.96/Cor. 17.97, 21.37, 21.45, 22.42, 23.25 and others), and I did not fetch the 2017 PDF.
- Jantzen 2003 Part II §§3.18–3.19, Conrad–Gabber–Prasad, Waterhouse, Borel, Springer (uncertified), Lang 1956, Steinberg 1968, Howlett–Lehrer, Dipper–Du, Carter, Serre and Gassmann are cited by locator only.
- Conrad–Feng (Prop. 12.3.1, Appendices F and H), SGA 1 XII, Riche, Gros–Kaneda, Brieskorn, Salvetti, Callegaro, Fadell–Neuwirth and Hedén are cached. None is in the sample or touched by a finding, so I did not re-read them this round.
- I checked ownership against the open pull requests whose files the brief supplies or that the roadmap index prints (#848, #1056, #1196, #1224, #903, ChevalleyGroups). The conflicts of #1797, #1808 and #1854 come from the overlap index; I could not reproduce them locally because their heads are not fetched.

## Source issues

- none
