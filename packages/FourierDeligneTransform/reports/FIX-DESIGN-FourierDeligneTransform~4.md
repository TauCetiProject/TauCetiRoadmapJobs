# FIX-DESIGN-FourierDeligneTransform~4

One review was settled: REV-DESIGN-FourierDeligneTransform~3, findings F01 and F02, both P3. Its adversarial table calls the first one "R01" and its "Overlaps" paragraph calls the second "R02"; these are the same two findings. Each was checked against:
- the line-numbered sources;
- the cited roadmaps at their current copies (on main, or at the head of their open pull requests through `roadmaps show`);
- the pinned Mathlib and Tau Ceti.

Files changed:
- `packages/FourierDeligneTransform/design/README.md`
- `packages/FourierDeligneTransform/design/plan.json`

`sources.toml` is unchanged: no new external work is cited.

## F01 (P3) — applied differently

**Change (old → new).** §5.1: "every character of that quotient occurring in `V` is the restriction of `ℒ_ψ(−a/π)` … by … §3.7" → finite-level route: `θ` is read on `G_{L_0}` with `G^1 = G_{L_0}^m`, `m = ψ_{L_0/K}(1)`; `θ = ℒ_ψ(w)`; the `ϖ_0^{−m}` coefficient of the class of `b/π` is onto `k`. Plan 5.1.2 gains the route, two tests and prerequisites.

**The finding is right.** ArithmeticGaloisRepresentations §3.7 (at its head, "Artin–Schreier characters") classifies characters of `G_K`: for `v(u) = −m`, `p ∤ m`, the character of `α^p − α = u` has the single break `m`. The step needs something else: every character of the subquotient `G^1/G^{1+}` must be the restriction of some `ℒ_ψ(b/π)`. That does not follow from a statement about characters of `G_K`. I recomputed the reviewer's dihedral witness at `p = 3`:
- Setup: `K_2 = K(ϖ_2)` with `ϖ_2² = π`, and `L_0 = K_2(β)` with `β³ − β = b_0/ϖ_2`. This is Galois of order `6` over `K` (`σ̃τσ̃^{−1} = τ^{−1}`).
- Ramification: for `ϖ_0 = 1/β`, `v(τϖ_0 − ϖ_0) = 2`, so `G_0 = S_3` and `G_1 = C_3`, with lower jump `1` and upper jump `1/2`. Then `ψ_{L_0/K}(1) = 4 = p + 1`, while `e(L_0/K) = 6 = 2p`.
- Expansion: `π = b_0² ϖ_0^6/(1 − ϖ_0²)²`, so `a/π = (a/b_0²)(ϖ_0^{−6} − 2ϖ_0^{−4} + ϖ_0^{−2})`.
- Reduction: this becomes `(a/b_0²)ϖ_0^{−4} + ((a/b_0²) + (a/b_0²)^{1/3})ϖ_0^{−2}`, using `−2 = 1` in characteristic `3`.
- Result: the break is `4`, not `6`, and the leading coefficient `c(a) = a/b_0²` is bijective.

So the lemma is true, but the cited step was not a citation of a stated theorem.

**Why the repair differs from the suggested text.**
- **The additive map need not be a polynomial in `a`.** The review calls the leading coefficient "an injective additive polynomial in `a`". In general it is not. Reduction replaces a coefficient `e` of `ϖ_0^{−p^j n}` by `e^{p^{−j}}` at `ϖ_0^{−n}`, so `c(a) = Σ_j (a u_{−p^j m})^{p^{−j}}`, which can involve `p`-th roots of `a` when `p·m ≤ e(L_0/K)`. The README states the true form: `c(b)^{p^N}` is an additive polynomial. Since `c` is injective, that polynomial is a monomial `β b^{p^i}`, and `c` is onto because `k` is perfect and algebraically closed.
- **Owner of the Herbrand input.** The review cites ArithmeticGaloisRepresentations §3.1 "for the Herbrand functions and the upper numbering of subgroups and quotients". At that head, §3.1 states only the eventual Herbrand formula. The open-subgroup identity `G_K^u ∩ G_L = G_L^{ψ_{L/K}(u)}` appears in its §3.0 as "consumed" from RamificationOfCompleteDiscretelyValuedFields §§4a.1–4a.3, and that section says it "plans none of them". The owner is RamificationOfCompleteDiscretelyValuedFields:
  - §4a.2 (at its head, "the open-subgroup identity");
  - §4a.1 (the absolute upper filtration, with restriction onto `Gal(M/K)^u`);
  - §3a.1 (`G_i/G_{i+1}` embedded in the additive residue field, used for "`G^1/G^{1+}` is abelian of exponent `p`").

  These are now cited by owner. RamificationOfCompleteDiscretelyValuedFields is line 2 of `ORDER.txt`, so there is no upward edge.
- **Artin–Schreier theory needs a stated input.** The route needs "every character `G_{L_0} → 𝔽_p` is attached to a class in `L_0/℘(L_0)`". It now cites the pinned `TauCeti.additiveHilbert90` (`TauCeti/FieldTheory/GaloisCohomology/AdditiveHilbert90.lean` line 214, `[Field K]`, `H¹(G_K, Kˢ) = 0`) applied to `0 → 𝔽_p → Kˢ → Kˢ → 0`. Reduced representatives are now justified explicitly, without Hensel's lemma: `f = g^p − g` with `g = −Σ_{n≥0} f^{p^n}` for `f ∈ ϖ_0 k[[ϖ_0]]`, together with `k = ℘(k)`.
- **Simpler argument.** The route proves the character statement at a single finite level `L` and avoids the compositum and character-extension steps of the suggested text. `L` is the fixed field of `G_{L'} G^{1+}`, chosen so that `H^{1+} = 1` and `θ` factors through `H^1 = Gal(L/L_0)`. Then `θ = ℒ_ψ(w)` with `w` of break `≤ m`, and `w − [b/π]` has break `< m` for the right `b`.

**Same pattern elsewhere.**
- The only other place that uses the lemma is the §5.5 autoequivalence route ("the slope-one twisting lemma of §5.1 then forces `G_1 = 0`"). It is a consumer and is unchanged.
- No other passage derives a statement about characters of a ramification subquotient from §3.7: grep for "§3.7" gives §2.7 (breaks of `ℒ_ψ(f)` from `u = f(1/π)`, a character of `G_K`: correct) and the Dependencies lines.

**Also changed for agreement.**
- §5.1 `*Needs:*` and the Layer 5 Dependencies line add RamificationOfCompleteDiscretelyValuedFields §§3a.1, 4a.1–4a.2; the §5.1 `*Needs:*` also adds Tau Ceti `TauCeti.additiveHilbert90`.
- Scope and ownership names those sections.
- The supplier contracts gain a "From TauCetiRoadmap.RamificationOfCompleteDiscretelyValuedFields" paragraph and a Tau Ceti bullet.
- The plan gains a suppliers entry, and target 5.1.2 gains prerequisites `§3a.1`, `§4a.1`, `§4a.2` and `tauceti:TauCeti.additiveHilbert90`.
- A §5.1 Check (mirrored as two plan tests of 5.1.2) gives a positive instance and the boundary showing that algebraic closure of `k` is needed.

## F02 (P3) — applied

**Change (old → new).** "AlgebraicVectorBundles §§L1A and L2B" → "§L1A (Layer 4, relative Spec) and §L2B (Layer 7, geometric vector bundles)". This is done at all five README places (Scope, Conventions, supplier contract, §3.1 `*Needs:*`, Layer 3 Dependencies), in the plan's supplier `sections`, and in plan target 3.1's two prerequisites.

**Verified.**
- On main, `TauCetiRoadmap/AlgebraicVectorBundles/README.md` has `### L1A — relative Spec` (line 269) and `### L2B — geometric vector bundles` (line 340).
- At the head of its open revision, the headings are `## Layer 4: relative Spec` (line 406) and `## Layer 7: geometric vector bundles` (line 538). Its "How to read the build" (line 187) maps Layers 1–7 to the labels `L0A … L2B`.
- The head's Layer 7 defines `V(E) = V_lin(E^∨)` with `Hom_X(T, V(E)) ≃ Γ(T, f^*E)`. This agrees with this roadmap's `V(E) = Spec_S Sym(E^∨)`.

The dual citation therefore resolves under either numbering.

**Same pattern elsewhere.** The plan target 3.1 prerequisites (`roadmap:AlgebraicVectorBundles §L1A`, `§L2B`) carried the same ids. They now carry the same parenthetical; other plans on the board already use parenthetical text in such ids. No other AlgebraicVectorBundles citation exists in the package (grep for `L1A`, `L2B`, `AlgebraicVectorBundles`).

## Checks run

**Dependency check.** Exact output:

    candidate: FourierDeligneTransform is not in the merge order yet; checked as if placed after EtaleDualityAndPerverseSheaves (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2357 edges, 0 problem(s)

There is no UPWARD or CYCLE line. The edge count rose from 2356 to 2357 through the new supplier RamificationOfCompleteDiscretelyValuedFields, which is line 2 of `ORDER.txt`, against line 96 for the placement.

**Citation resolver.** `roadmaps resolve` on the edited README reports, under "Cross-roadmap citations found nowhere", none, and under "Lean names found nowhere", none. The tool did not check Lean names outside TauCetiRoadmap on this host, so I checked `TauCeti.additiveHilbert90` by hand at the pinned Tau Ceti (line 214, inside `namespace TauCeti` from line 67, after `end Galois` at line 203).

**Plan check.** A scratch script over the plan found 46 targets, no forward `target:` edge and no dangling prerequisite; the plan now has 62 tests. `json.dumps(indent=1, ensure_ascii=False)` reproduces the file exactly, so formatting is unchanged outside the edits.

**Overlaps.** The parentheticals "Layer 4" and "Layer 7" are the numbering of the open AlgebraicVectorBundles revision, another author's pull request that changes an existing roadmap. Under "only an open revision defines": AlgebraicVectorBundles Layer 4 and Layer 7, cited alongside main's §L1A and §L2B. The primary ids are main's labels, which that head keeps as aliases, so the citation holds whether or not the revision merges. Whether to name the revision in the merge-order paragraph is the worker's call. No open pull request changes this roadmap, and this roadmap drops no id.

**Ownership.** No new object is stated. The route uses inputs owned elsewhere:
- RamificationOfCompleteDiscretelyValuedFields §§3a.1, 4a.1–4a.2;
- ArithmeticGaloisRepresentations §§3.1, 3.7;
- the pinned `TauCeti.additiveHilbert90`.

`roadmaps grep` for Artin–Schreier theory finds SchemeAndStackFoundations §2.11 on main (`artinSchreier_sequence`, with its Check `H¹(Spec k, ℤ/p) = k/(x^p − x)k`) and mentions in KTheoryFiniteLocalFields, ArithmeticGaloisDuality and others as inputs or examples. The pinned declaration is the most direct input, so I cited it. Ownership against open pull requests was checked through `roadmaps grep` over the 464 heads.

**Suggested.lean.** There is no `Suggested.lean` at the design stage, so no `#check` elaboration was run.

No gate failures were listed for this round.

## Adversarial pass on changed or added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| Twisting-lemma route: finite level | dihedral `L_0/K`, `p = 3`, upper jump `1/2` | `G_0 = S_3`, `G_1 = C_3`, lower jump `1`; `φ(x) = 1/2 + (x − 1)/6` for `x ≥ 1`, so `m = ψ(1) = 4`, `e = 6`; class of `a/π` reduces to `(a/b_0²)ϖ_0^{−4} + (a/b_0² + (a/b_0²)^{1/3})ϖ_0^{−2}` | `m = 4`, prime to `3`; `c(a) = a/b_0²` bijective | route written |
| Twisting-lemma route at `p = 2` | `K_3 = K(π^{1/3})`, `L_0` the `A_4` closure of `β² − β = b_0/ϖ_3` | wild part `(ℤ/2)²` with one jump `1` over `K_3`; `ψ_{L_0/K}(1) = ψ_{L_0/K_3}(3) = 1 + 4·2 = 9`, `e = 12`; the `ϖ_0^{−12}` term of `a/π` reduces to `ϖ_0^{−3}`, below `9` | `m = 9` odd; `c` linear in `a` | none |
| "`c(b)` is a polynomial in `b`" | `p·m ≤ e(L_0/K)` | coefficient `Σ_j (b u_{−p^j m})^{p^{−j}}`, which involves `b^{1/p}` when `u_{−pm} ≠ 0`; its `p^N`-th power `Σ_j (b u)^{p^{N−j}}` is a polynomial | the review's wording is false in general; the `p^N`-th power form is true | wording corrected |
| Injective additive polynomial is onto | `x^p − x` against `x^p` over `𝔽̄_p` | `x^p − x` has kernel `𝔽_p` (not injective); for `P = Q(x^{p^{i_0}})` with `Q' ≠ 0`, `Q` has `deg Q` distinct roots, so injectivity gives `deg Q = 1` | monomial, onto | none |
| Coefficient well defined | reduced `f, f'` in one class | `f − f' = g^p − g`; if `v(g) = −r < 0`, the leading exponent is `−pr`, divisible by `p`, contradicting reducedness; so `g ∈ O` and the negative parts agree | holds | none |
| Lemma, positive instance (new Check) | `k = 𝔽̄_p`, `W` of rank `2` and slope `1/2`, `V = W ⊗ ℒ_ψ(b/π)` | §3.7: slopes of `W` are `< 1`, so `V` is purely of slope `1`; `V ⊗ ℒ_ψ(−b/π) = W`, and `G^1 ⊂ G^{1/2+}` acts trivially on it | `a = −b` works | Check added |
| Lemma, non-closed `k` (new Check) | `k = 𝔽_p`, `c ∈ 𝔽_{p²} ∖ 𝔽_p`, `V = Ind ℒ_ψ(c/π)` from the unramified quadratic extension | over that extension, `V ⊗ ℒ_ψ(a/π) = ℒ_ψ((c+a)/π) ⊕ ℒ_ψ((c^p+a)/π)` with `c + a ≠ 0 ≠ c^p + a` for `a ∈ 𝔽_p`; both have slope `1` (§3.7, `v = −1`) | conclusion fails; the hypothesis is needed | Check added |
| Degenerate `θ` | `θ = 1`; `H^1 = 1` | `w` has break `< m` (or `L = L_0`), `b = 0`, `ℒ_ψ(0)` trivial | holds | none |
| Choice of `L` | `L` = fixed field of `G_{L'}G^{1+}` | `H^{1+}` = image of `G^{1+}` = `1`; `G^1 ∩ G_{L'}G^{1+} = (G^1 ∩ G_{L'})G^{1+} ⊂ ker θ` by the modular law | `θ` factors through `H^1` | parenthetical added |
| Eigenspace decomposition | `V` purely of slope `1` | image of `G^1` is a finite `p`-group (§3.1), `ℓ ≠ p`, `μ_p ⊂ Λ` (Layer 5 standing hypothesis), `V^{G^1} = 0` | sum of nontrivial eigenspaces | clause added |
| Open-subgroup identity, equal characteristic | `y^p − y = t^{−1}` over `𝔽̄_p((t))` (RCDVF §4a.2 Check) | `ψ(u) = u` on `[0, 1]`, `pu − p + 1` beyond; `G_K^2 ∩ G_L = G_L^{p+1}` | holds in characteristic `p`, perfect residue field | none |
| AlgebraicVectorBundles citation | main and the revision head | main lines 269, 340; head lines 406, 538 and alias sentence 187; `V(E) = Spec Sym(E^∨)` against the head's `V_lin(E^∨)` with `T`-points `Γ(T, f^*E)` | resolves both ways, same convention | dual form |

## For the maintainer

- **New supplier.** RamificationOfCompleteDiscretelyValuedFields §§3a.1, 4a.1–4a.2 is now a supplier of this roadmap. It is line 2 of `ORDER.txt`, so the placement does not move.
- **New pinned input.** Tau Ceti `TauCeti.additiveHilbert90` is a new pinned input.
- **No renames.** No id of this roadmap changed; no declaration or section was renamed.
- **Open revision named in a citation.** The AlgebraicVectorBundles citations name the open revision's layer numbers in parentheses; main's labels stay primary.
- **Untrusted text.** The review contained no instructions to the worker; nothing suspicious to quote.
