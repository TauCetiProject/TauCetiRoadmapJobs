# FIX-DESIGN-VirtualFundamentalClassPartII~5

This round settles the five findings of `REV-DESIGN-VirtualFundamentalClassPartII~4`: F01 (P2) and F02–F05 (P3).
I checked each one against:
- the supplier VirtualFundamentalClass at its open head (`roadmaps show VirtualFundamentalClass`);
- vistoli1989, kresch1999b and li-tian1998 in the sources cache;
- the README's own *Needs:* lines.

All five findings are correct, and all five are applied. Three repairs go further than the review asked, and each section says why:
- F01 also adds the gap to 8.3.
- F03 needed one supporting API bullet in 4.1.
- F05 cites the proof of Theorem 4.2 itself.

Files edited:
- `packages/VirtualFundamentalClassPartII/design/README.md`
- `packages/VirtualFundamentalClassPartII/design/plan.json`
- `packages/VirtualFundamentalClassPartII/sources.toml` (the `cited_for` entries and the li-tian1998 locator, for the new citations only)

No source was fetched, and no `needs-references.toml` was written. Every locator used below is in a text the manifest already records.

## REV-DESIGN-VirtualFundamentalClassPartII~4/F01 (P2) — applied

**Old → new.** The contract bullet for §§1.4–1.6 claimed "normal cones … of local immersions with flat base change"; it now claims normal cones of representable closed immersions only. A new supplier gap, `gap:normal-cones-of-local-immersions` on VirtualFundamentalClass §1.5, appears:
- in the README contract;
- in the Scope bullet;
- in the *Needs:* lines of 3.5, 4.2, 8.1 and 8.3;
- in the Dependencies of Layers 3, 4 and 8;
- in `plan.json` (`gaps`, the prerequisites of those targets, and the supplier's `what`).

**Verification.** VirtualFundamentalClass §1.5 at its open head says it extends normal cones "to representable closed immersions of algebraic spaces and stacks by smooth descent". No section of that README builds the cone of a local immersion. Its §2.4, "refined Gysin pullback to representable regular local immersions", uses that cone without building it. The roadmaps grep finds no other owner on main or at any open head. So VirtualFundamentalClass, the earlier roadmap that already needs the object, is the right supplier. This roadmap does not take ownership of it.

**The needed statement**, with its sources:
- the cone of a local immersion of algebraic stacks, by descent from charts that are closed immersions of schemes (kresch1999b Lemma 2.2 with lines 232–237; vistoli1989 Lemma 1.19 and lines 508–526);
- the closed embedding `C_{X′/Y′} ⊆ C_{X/Y} ×_X X′`, an isomorphism under flat base change (vistoli1989 lines 529–535);
- the embedding in the normal sheaf;
- the normal bundle of a regular local immersion (vistoli1989 lines 527–528).

The review's text says "étale descent". I wrote descent from Kresch's charts instead (smooth `V → Y` and `U → X`, étale `U → X ×_Y V`), because `Y` is an Artin stack in 8.1 and 8.3.

**Same pattern elsewhere.**
- 8.3's API forms `C_{X/Z ×_𝔜 W}` for a local immersion directly, so 8.3 also gets the gap. The review did not list it.
- 8.2 and 5.1 reach the cone only through 8.1 and 4.2, which carry the gap.
- The `plan.json` gap lists `neededBy` as 3.5, 4.2, 8.1 and 8.3.

**Witness, computed.** Over the atlas `Spec k → BG × BG`, the diagonal of `BG` becomes `G → Spec k`. The chart `U = V = G` has `U → V` the identity, so the cone is the zero bundle, of rank equal to the codimension `0`. This is now stated in the gap paragraph.

## REV-DESIGN-VirtualFundamentalClassPartII~4/F02 (P3) — applied

**Old → new.**
- Layer 8 Dependencies: "Layers 2–4 and 6" → "Layers 2–6".
- Layer 6 Dependencies: "Layers 4–5" → "Layer 4".
- How to read the build: "Layer 8 combines Layers 4, 6" → "Layers 2–6".

**Verification.**
- 8.4 needs 5.4, and 8.3 needs 3.1, so Layer 8 uses Layers 2, 3, 4, 5 and 6.
- 6.1–6.3 need only 4.3–4.4.
- Layer 5 needs Layers 1–4 and nothing later, so there is no cycle.

**Same pattern elsewhere.** I extracted every *Needs:* line and Dependencies line with a script and compared them.
- How to read the build was wrong in four more places, now corrected:
  - Layer 5 "uses Layers 2–4" → 1–4 (5.2 needs 1.1–1.3).
  - Layer 6's supplier layers "VirtualFundamentalClass Layers 4–7 and 9" → "3–4, 6–7 and 9" (§§3.2–3.3 are needed; nothing of Layer 5 is).
  - Layer 7's "Layers 3–4 and 6" → "Layers 3–5 and §9.1, DerivedModuleAlgebra §§0.7 and 0.25 and SchemeAndStackFoundations §4.1", the list in Layer 7's own Dependencies.
  - Layer 9 "combines Layer 7" → "Layers 6–7" (9.4 needs 6.2).
- The Dependencies of Layer 3 (3.2 and 3.3 use it) and of Layer 5 (5.2 and 5.4 use it) now list `gap:closed-substacks-of-stacks`.

## REV-DESIGN-VirtualFundamentalClassPartII~4/F03 (P3) — applied

**Old → new.** 5.1: "holds when `g` is proper and representable" → "holds when `g` is proper, with the pushforward of 4.1", with a route sketch. Two supporting changes:
- 4.1 gains an API bullet: `(f × g)_*(α × β) = f_*α × g_*β` rationally, for every proper `f`, `g`.
- 5.1's *Needs:* gains 4.1.

The review's instance is now a Check of 5.1 and a `plan.json` test.

**Why the 4.1 bullet.** The route is `x · g_*y = Δ^!((id × g)_*(x × y)) = g_*Δ^!(x × y)`. It needs exterior products to commute with non-representable pushforward, but 3.4 states this only for representable morphisms. The bullet's proof goes through proper coverings: by 3.2 and 3.4, `[𝒱] × [𝒲] = (deg(Y/𝒱)·deg(Y′/𝒲))^{−1}(p × p′)_*([Y] × [Y′])`. Then `f∘p` and `g∘p′` are representable, because their sources are schemes. vistoli1989 lines 1717–1718 assert the Fulton 8.1.1 properties with Vistoli's pushforward for every proper morphism.

**Witness, computed.** For `g : BG → Spec k`: `g^*[Spec k] = [BG]`, `[BG]·[BG] = Δ^![B(G×G)] = [BG]` (4.2, Lemma 5.5), and both sides equal `(1/|G|)[Spec k]`. A product weighted by `deg(Δ) = |G|²/|G| = |G|` gives `[Spec k]` on the left, so the Check rules it out.

## REV-DESIGN-VirtualFundamentalClassPartII~4/F04 (P3) — applied

**Old → new.** 1.3 API: "`deg` of an étale surjection from an integral scheme `U` onto `𝒱`" → "of a separated étale morphism from an integral scheme `U` to `𝒱`", with a proof that the morphism is separated whenever `U` is, for instance when `U` is affine. A new Check and `plan.json` test pin the hypothesis:
- the chart `𝔸¹ → L` is separated and has degree `1`;
- `L → 𝔸¹` is not separated, so it is excluded.

**Verification.**
- vistoli1989 lines 356 and 365 define the degree only for separated morphisms.
- `L → 𝔸¹` is étale, surjective and not separated.
- For separated `U`, the composite `U → U ×_𝒱 U → U × U` is a closed immersion, and the second map is a base change of the separated diagonal of `𝒱` (Convention 1). So `U → 𝒱` is separated.

**Same pattern elsewhere.** I checked every application of `deg` and found none outside the definition:
- inertia (separated);
- affine sources in the 1.3 and 5.4 Checks;
- proper morphisms in 3.2, 4.1, 4.2 and 5.2;
- the finite étale `L → B_{𝔸¹}G` and `L → L × B(ℤ/2)`.

## REV-DESIGN-VirtualFundamentalClassPartII~4/F05 (P3) — applied

**Old → new.** 8.4: "and its proof, line 1566" → "whose proof, lines 1486–1552, reduces it by conservation of number to `η^![M_{X_T/T}]^vir = [M_{X_t}]^vir` (lines 1501–1503), and lines 1565–1566, which draw its componentwise form `[V_t]^vir = η_t^![V]^vir` from that proof". `plan.json` and the `sources.toml` locator and `cited_for` match.

**Verification.**
- li-tian1998 line 1486 begins the proof of Theorem 4.2, and it ends at line 1552.
- Line 1553 begins the proof of Theorem 4.2′.
- Lines 1565–1566 lie in that later proof and refer back to the proof of 4.2.

I kept the review's lines 1565–1566 and added the reduction inside the proof itself (1501–1503), which is the precise locator for the identity 8.4 uses.

**Same pattern elsewhere.** I opened the other proof-line locators and found each one inside the proof it names:
- behrend-fantechi1997 lines 894–897 (proof of Proposition 3.5);
- behrend-fantechi1997 lines 1634–1641;
- kresch1999b lines 259–304 (proof of Proposition 2.3);
- kresch1999b lines 390–405 (proof of Theorem 3.1).

## Adversarial table

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Gap: cone of a local immersion by descent | `Spec k → BG`; `Δ_{BG}`; `{0} → 𝔸¹` | `G → Spec k` over the atlas, chart `id_G`, cone of rank `0` = codimension `0` (twice); a closed immersion gives the normal line, rank `1` | holds | gap stated |
| Gap: base change of cones | origin in `𝔸²` with `Y′ = {y = 0}`; flat `𝔸² × 𝔸¹ → 𝔸²` | `C_{X′/Y′} = 𝔸¹ ⊊ 𝔸² = C ×_X X′` (embedding, not equality); flat case `𝔸² = 𝔸²` | holds; equality needs flatness | stated so |
| Gap: regular case | `Δ` of smooth `ℳ` of dimension `n` | normal bundle `T_ℳ`, rank `n` = codimension (vistoli1989 lines 506–507) | holds | none |
| 1.3 API, separated étale | `Spec k → BG`; `Spec ℂ → [Spec ℂ/(ℤ/4)]` over `ℝ`; `Spec k[y] → 𝔸¹_y × B(ℤ/p)`; chart `𝔸¹ → L`; `L → 𝔸¹` | `|G|·1 = |G|`; `2·2 = 4` (agrees with 5.4's `2/4`); `p·1 = p` (agrees with 1.3's `p/p`); `1`; not separated, excluded | holds | bullet narrowed, Check added |
| 4.1 exterior pushforward | `BG × BH → pt`; `Spec K × Spec K`, `K/k` purely inseparable of degree `p`; `∅`; `(L × B(ℤ/2) → L) × id` | `1/(|G||H|)` both sides; `p·p = p²` both sides; `0 = 0`; `(1/2)[0₁]` both sides | holds | API bullet added |
| 5.1 projection formula, proper `g` | `BG → Spec k`; coarse map `[ℙ¹/μ₂] → ℙ¹` with `y = [𝒫]` and with `x = [q]`, `q ≠ 0, ∞`; `ℙ¹ → Spec k`, `y = [pt]` | `1/|G|` both sides, weighted product `1`; `(1/2)[0]` both sides; `[q]` both sides; `[Spec k]` both sides | holds | statement widened, Check added |
| Layer 8 Dependencies | *Needs:* of 8.1–8.4 | layers `{2}`, `{4, 6}`, `{3, 4, 6}`, `{4, 5, 6}` → 2–6 | was wrong | fixed |
| Layer 6 Dependencies | *Needs:* of 6.1–6.3 | `{}`, `{4}`, `{4}` → 4 | was wrong | fixed |
| How to read the build, Layer 5 | *Needs:* of 5.1–5.4 | `{3, 4}`, `{1, 2, 4}`, `{5}`, `{1, 2, 4}` → 1–4 | was wrong | fixed |
| How to read the build, Layers 6 and 7 suppliers | Layer 6 and 7 Dependencies | Layer 6: VirtualFundamentalClass §§3.2–3.3, 4.3–4.5, 6.4–6.5, 7.1–7.4, 9.1–9.2 → Layers 3–4, 6–7, 9. Layer 7: §§3.1, 3.3, 3.5, 4.4–4.5, 5.1, 9.1 → Layers 3–5 and §9.1 | were wrong | fixed |
| Layers 3 and 5 Dependencies | *Needs:* of 3.3, 5.2, 5.4 | each names `gap:closed-substacks-of-stacks` | was missing | added |
| 8.4 locator | li-tian1998 lines 1486, 1501–1503, 1552–1553, 1565–1566 | proof of 4.2 runs 1486–1552; proof of 4.2′ begins at 1553 | line 1566 is in 4.2′ | fixed |

## Checks run

**Dependency check** (command from the brief), output after the last edit:

    candidate: VirtualFundamentalClassPartII is not in the merge order yet; checked as if placed after StableReductionPartII (the intake inserts it when its design is accepted)
    depcheck: 206 roadmaps, 1897 edges, 0 problem(s)

There is no UPWARD or CYCLE line.

**Other checks.**
- `roadmaps resolve` on the README reports no citation and no Lean name found nowhere.
- `plan.json` parses: 33 targets and 125 tests (two new: `separatedMorphism_notStacks` and `projectionFormula_nonRepresentable`), every target with at least three.
- `sources.toml` parses as TOML.
- A grep of the README for LaTeX delimiters, process words and machine paths finds nothing.

**Not applicable at this stage.** This is a design, with no `Suggested.lean`. So there was no `#check @name` elaboration and no Lean names to keep in step. No gate failures were listed for this round.

**Ownership.**
- I checked normal cones of local immersions by object (`roadmaps grep` for "local immersion" and for normal cones of unramified morphisms and local embeddings), on main and at every open head. VirtualFundamentalClass is the only roadmap that uses the object, and nobody states it.
- The 4.1 bullet extends this roadmap's own 4.1, so no other owner applies.

## For the maintainer

- **VirtualFundamentalClass** (open roadmap pull request) is asked by a second gap, `gap:normal-cones-of-local-immersions`, to state in §1.5 the normal cone of a local immersion of algebraic stacks. This includes its base-change embedding and the normal bundle of a regular local immersion. Its own §2.4 already needs this. Acceptance of this design depends on this gap as well as on `gap:closed-substacks-of-stacks`.
- No section, target or name was renamed or removed. No roadmap on main or at an open head cites this roadmap (`roadmaps grep`), so no citation can break. The numbering of the sections that `plan.json` offers to its consumer AlgebraicGromovWittenTheory (9.3–9.5, 6.2, 8.4, 5.4) is unchanged.
- The review's "Source issues" section (behrend-fantechi1997 Proposition 3.5 and 5.3, and the kresch1999b Theorem 3.1 wording) reports errors in the sources, not in this design, and needs no edit. The README already follows the corrected statements: Kresch's Theorem 3.1 in 8.1, and isomorphisms rather than maps of complexes in Convention 6 and 6.1.
- I found nothing in the review text that reads as an instruction outside this job.
