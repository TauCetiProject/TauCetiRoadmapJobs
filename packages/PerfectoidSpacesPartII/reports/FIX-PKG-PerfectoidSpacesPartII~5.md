# FIX-PKG-PerfectoidSpacesPartII~5: repair of the round-4 package review

One review was resolved: `REV-PKG-PerfectoidSpacesPartII~4`, which has seven findings. I checked all
seven against the cached sources (GR03, ANDRE18A), against PerfectoidSpaces on main and
PerfectoidQuotients at its open head, and against the pinned libraries. All seven are correct and
all seven are applied.

Files edited:

- `packages/PerfectoidSpacesPartII/README.md`;
- `packages/PerfectoidSpacesPartII/design/plan.json`, top-level `gaps` only: one entry added. A
  JSON comparison with every other key confirms nothing else changed.

`packages/PerfectoidSpacesPartII/Suggested.lean`, `metadata.toml` and `sources.toml` are unchanged.
No Lean declaration or docstring is affected, and no new work is cited.

## REV-PKG-PerfectoidSpacesPartII~4/F01 (P1) — applied

The proof of §4.4 used "almost flatness modulo `p` and GR, Lemma 5.2.1" with no owner. It now
cites the new supplier gap `gap:principal-almost-flatness` at PerfectoidSpaces P0.11 (the case
`A = C` of GR Lemma 5.2.1, with `f` a monomorphism on `C` and `M`). The application is spelled out
in characteristic `0`: `C = A°[1/g]^a`, `M = B°[1/g]^a`, `f = p`. The gap is recorded in
`plan.json`, in the README under "Exact supplier contracts" with four Checks, in §4.4's *Needs* and
in Layer 4's *Dependencies*.

**Evidence.** GR03 line 5263 (Lemma 5.2.1, p. 106) assumes `Tor_1^A(C, A/fA) = 0` and
`Tor_i^A(M, A/fA) = 0` for `i = 1, 2`. With `A = C`, the first condition holds automatically. If
`f` is a monomorphism on `C`, then `0 → C → C → C/fC → 0` is a flat resolution, so
`Tor_1^C(M, C/fC) = ker(f|M)` and `Tor_2 = 0`. The specialization is therefore exactly right.

André A, proof of Prop. 5.2.3, ANDRE18A lines 3134–3139, applies it after inverting `g`. The
requirements are met there: `B[1/g]` is étale over `A[1/g]`, and `B°[1/g]` has no `ϖ`-torsion.

PerfectoidSpaces P0.11 on main (`TauCetiRoadmap/PerfectoidSpaces/README.md` lines 1714–1830)
contains the Tor criteria, but not this localization criterion. `roadmaps grep` finds no "GR Lemma
5.2.1" criterion on main or at any open head.

**Pattern search.** I checked the other GR results used as proof inputs:

- **§3.9**, GR Lemma 2.4.2(iii), the comparison `(lim¹ N)^a ≅ lim¹(N^a)`. This follows from
  P0.27 (products of almost-zero modules are almost zero) and exactness of almostification. P0.27
  is already in §3.9's *Needs*, so no change was made.
- **§4.4's characteristic-`p` case**, GR Theorem 3.5.28. This is now routed through PerfectoidSpaces
  P3.3; see F02.

## REV-PKG-PerfectoidSpacesPartII~4/F02 (P2) — applied

§4.7(3) said "`ϖ`-adically, equivalently `p`-adically, complete … `ϖ^N ∈ pK°`". The proof is now
split by characteristic:

- **Characteristic `0`:** the two divisibilities hold because `0 < |p| ≤ |ϖ| < 1`, and the
  complete-Nakayama gap applies with `I = pV`.
- **Characteristic `p`:** the reduction modulo `p` is the trace itself, so no lifting is needed.

A new Check uses the completed perfect closure of `𝔽_p((t))` at `p = 2` and `p = 3`. The gap
paragraph's "contains no `pⁿ`" is now restricted to characteristic `0`.

**Evidence.** For `K` the completed perfect closure of `𝔽_p((t))` with `ϖ = t`, `pK° = 0` while
`|t^N| = q^N > 0`. So the `p`-adic topology on `K°` is discrete and the `t`-adic topology is not.
For the `t`-adic topology, `ϖ^N ∈ pK° = 0` is false for every `N`.

**Same pattern elsewhere.** The same "modulo `pᵐ` in characteristic `p`" issue occurred in three
other sentences, each of which now states the characteristic-`p` case:

- **§4.4:** "It is not claimed that `B°^a` is finite étale over `A°^a`" is now restricted to
  characteristic `0`. In characteristic `p`, `p^m = 0`, and the `m ≥ 1` statement is GR
  Theorem 3.5.28 (GR03 line 3371). It is now routed through PerfectoidSpaces P3.3 (on main, line
  8176), applied to the perfect complete Tate ring `A[1/g]` with ring of definition `A°` and
  pseudouniformizer `ϖg`. P3.3 and P0.16 are added to the *Needs*.
- **§4.5:** André's Question 5.2.2 is now said to be open in characteristic `0` only.
- **§4.7:** the remark that almost finite étaleness over `A°` "is not established" is now said of
  characteristic `0` only.

## REV-PKG-PerfectoidSpacesPartII~4/F03 (P2) — applied

§3.2 asked us to prove "the root algebra `A⟨g^{1/p^∞}⟩` is perfectoid". Perfectoidness is now
imported from PerfectoidQuotients §1.4, as the monic-root pair for `(A, A°)` and `T − g`. §3.2 now
proves:

1. the comparison isomorphism with §2.8's uniform construction;
2. that the canonical map from `A⟨T^{1/p^∞}⟩` is an extremal epimorphism;
3. the existence of `g♭`.

There are two new Checks: `g = 0`, and the branches at `p = 2`. Scope, the supplier contracts
(a new PerfectoidQuotients section), §4.8, §5.6 and the Layer 3–5 *Dependencies* are updated.

**Evidence.** At its head (#1042), PerfectoidQuotients §1.4 states the following. For a perfectoid
affinoid pair `(A, A⁺)` over a perfectoid field and a monic `P ∈ A⁺[T]` of positive degree, the
pair it constructs is perfectoid. It is also universal among complete uniform affinoid `A`-pairs
carrying a root `h₀ ∈ C⁺` of `P` and roots `h_{n+1}^p = h_n`. Its Check `monicRootLinear` covers
`P = T − g`.

§2.8's root algebra is universal among uniform Banach `A`-algebras carrying a root system of `g`
in `C°`. In such an algebra every root system of `g` lies in `C°`, because
`|h_n|_sp = |g|_sp^{1/p^n} ≤ 1`. The two functors therefore agree on `(C, C°)`, and Yoneda gives the
isomorphism.

PerfectoidQuotients is on line 25 of the merge order and this roadmap on line 80. Its text does not
mention this roadmap.

## REV-PKG-PerfectoidSpacesPartII~4/F04 (P3) — applied

The completeness-of-source Check said "`V = m = ℤ_p`, the inclusion `ℤ_(p) → ℤ_p`". It now uses
the setup `V = m = ℤ_(p)` with `I = pV`, and the map as one of `ℤ_(p)`-modules. Its reduction is
the identity of `𝔽_p` (two or three elements). Its target is complete and its source is not. The
next Check now opens its own setup `V = m = ℤ_p`.

**Evidence.** `√17 ∈ ℤ_2` (since `17 ≡ 1 mod 8`) and `√7 ∈ ℤ_3` (since `7 ≡ 1 mod 3`) are
irrational. So `ℤ_p`-linearity fails on them: `α·1 = α ∉ ℤ_(p)`. The inclusion is
`ℤ_(p)`-linear, and it is not onto for the same reason.

## REV-PKG-PerfectoidSpacesPartII~4/F05 (P3) — applied

The §3.5 Check "with `T` acting by `0` … `R[j] = k_K[U^{1/p^∞}]`" now reads as follows:

- every root of `T` acts by `0`;
- `R[0] = 0`, because `T·u_{[0]} = 1` forces `0 = 1`;
- for `j ≥ 1`, `R[j] = k_K[U^{1/p^∞}]`, and the transitions kill `u^s` for `s > 0`;
- the cofinal stages `j ≥ 1` give `lim_j R[j] = k_K`.

The negative control is unchanged.

**Evidence.** Requiring every root to act by `0` is necessary, not cosmetic. At `r = 1` the system
`T^{1/p^k} ↦ ϖ^{1/p^k}` (for `k ≥ 1`), `T ↦ ϖ = 0` is a compatible root system of `0` in `K°/ϖ`
whose roots are nonzero.

## REV-PKG-PerfectoidSpacesPartII~4/F06 (P3) — applied

The §5.10 Check "stages `A_{0l} = A[1/p][X]/(X^{p^l})` … contain the nonzero nilpotent `X`" now
separates two cases:

- at `l = 0`, `[X] = 0` and `A_{00} = A[1/p]`;
- for `l ≥ 1`, `[X] ≠ 0` and `[X]^{p^l} = 0`.

Values for `n = 0`, `k = 𝔽_p` are added: `ℚ_p`, then `ℚ₂[X]/(X²)` and `ℚ₃[X]/(X³)`.

## REV-PKG-PerfectoidSpacesPartII~4/F07 (P3) — applied

The §5.10 proof sketch said "since every element of `K°°_∞` becomes a unit". It now says: "`p`
lies in `K°°_∞` and becomes a unit, so the extended almost ideal is the unit ideal, and an element
`x` of a `K_∞`-module killed by `K°°_∞` satisfies `x = p⁻¹(px) = 0`". The theorem is unchanged.

## Checks run

**Lean elaboration.** I ran `lake env lean packages/PerfectoidSpacesPartII/Suggested.lean` from
the content checkout. It exited 0 with exactly six warnings, each `declaration uses 'sorry'`, at
lines 97, 145, 208, 252, 370 and 422. No `TauCeti.*` object file was missing, and nothing was
built.

**Binder check.** I made a scratch copy of `Suggested.lean` with
`#check @TauCetiRoadmap.PerfectoidSpacesPartII.<name>` appended for all 23 declarations and the
anonymous `CommRing (KummerBase p k n)` instance. It elaborated once, with exit 0. All 23 elaborated
types match the recorded `signatures.md` verbatim after whitespace normalization (0 differences).
The instance keeps `Fact (Nat.Prime p)` and `Field k`. The Lean file is byte-identical to the
reviewed head, and no README statement backing a Lean declaration changed, so nothing in the Lean
file needed updating.

**Dependency direction** (`gate --depcheck … --movable`). The complete output was:

```text
depcheck: 237 roadmaps, 2142 edges, 0 problem(s)
```

It has no UPWARD, CYCLE or `moved:` line. The new edges are to PerfectoidQuotients (line 25 of the
order) and to more PerfectoidSpaces sections; both suppliers are earlier than this roadmap (line 80).

**Citations** (`roadmaps resolve` on the edited README). The result was: "Cross-roadmap citations
found nowhere: None. Lean names found nowhere: None." The earlier `Algebra.galoisTensorMap` lead has
also gone; it is AdicEtaleGeometry A4.2's alias.

**Sources.** No new work was cited. GR Lemma 5.2.1 (GR03 line 5263, page marker 106, proof to
p. 107) and GR Theorem 3.5.28 (GR03 line 3371) were read in the cached text. André A, Prop. 5.2.3
and Théorème 5.2.1 / Question 5.2.2 (ANDRE18A lines 3028–3039 and 3090–3153) were read the same way.
The README's GR reference list now also names Lemmas 5.2.1 and 5.3.3, both of which the README
cites. `sources.toml` already lists "4.4" and "Exact supplier contracts" in GR03's `cited_for`.
`needs-references.toml` was not created.

## Adversarial pass on the statements added or changed

Notation: `q = |ϖ|`.

| Statement | Instances tried | Values on each side | Result / change |
| --- | --- | --- | --- |
| gap:principal-almost-flatness | Classical `V = m = ℤ`, `C = M = ℤ`, `f = p`, `p = 2, 3` | `ker f = 0`. `M/pM = 𝔽_p` is flat over `𝔽_p`. `M[1/p] = ℤ[1/p]` is flat. Conclusion: `ℤ` is flat. | Holds |
| same, monomorphism on `M` | `M = 𝔽_p` over `ℤ` | `ker(p) = 𝔽_p` (2 or 3 elements), so not a monomorphism. `M[1/p] = 0` and `M/pM = 𝔽_p` are flat, yet `Tor₁(𝔽_p, 𝔽_p) = 𝔽_p ≠ 0`. | Hypothesis needed; recorded as a Check |
| same, generic fibre | `C = ℤ_p[x]`, `M = ℚ_p`, `x ↦ 0` | `p` is injective and `M/pM = 0`. `M[1/p] = ℚ_p[x]/(x)` has `x`-torsion, so it is not flat; `M` is not flat either. | Hypothesis needed; recorded as a Check |
| same, almost reading | `(K°, K°°)`, `M = K° ⊕ k_K`, `f = ϖ` | `ker ϖ = k_K` is killed by `K°°`, hence almost zero. `M^a = K°^a` is flat, while `M` is not flat over `K°`. | Monomorphism means almost monomorphism; recorded as a Check |
| same, degenerate `f` | `f = 1`; `f = 0` with `C ≠ 0`; `m = 0` | `f = 1`: `M/fM = 0` and `M[1/f] = M`, so the statement is a tautology. `f = 0`: not a monomorphism on `C`, so excluded. `m = 0`: every module is almost zero, so trivial. | No defect |
| §4.4 application, characteristic `0` | `C = A°[1/g]`, `f = p` | `A° ⊆ A`, a `K`-vector space, and `p ≠ 0` in `K`, so `p` is injective; likewise on `B°[1/g] ⊆ B[1/g]`. | Hypotheses met |
| §4.4 application, characteristic `p` | `f = p = 0` | Not a monomorphism unless the ring is zero. | Not applied in characteristic `p`; the route uses P3.3 |
| §4.4 characteristic `p` via P3.3 | `A = K⟨T^{1/p^∞}⟩`, `g = 1`; `g = T`; `B = A × A` | `g = 1`: `R = A` with its `ϖ`-adic topology, `R° = A°`, so P3.3 becomes P3.13. `g = T`: `A°` is `ϖT`-adically complete (`(ϖT) ⊆ (ϖ)`, Stacks 090T); `(ϖT)^{1/p^k}x ∈ A°` for all `k` forces exponents `≥ 0` on monomials. `B = A²`: `(ϖT)^{-1/p^∞}B° = (R°)²`. | Holds; P3.3 and P0.16 added to *Needs* |
| §4.4 power-bounded ring `(ϖg)^{-1/p^∞}B°` | Perfect `B°`, `x` with `(ϖg)^N x^n ∈ B°` for all `n` | Taking `p^k`-th roots in the perfect ring gives `(ϖg)^{N/p^k}x ∈ B°`. Conversely `(ϖg)^{1/p^k}x ∈ B°` gives `(ϖg)x^n ∈ B°` for all `n ≤ p^k`. | Equality holds |
| §4.7 characteristic `0` topology | `ℂ_p`, `ϖ = p^{1/p}` and `ϖ = p`, `p = 2` | `p = ϖ^p ∈ ϖK°` and `ϖ^p ∈ pK°` (`N = p`); for `ϖ = p`, `N = 1`. At `p = 2`, `ϖ² = 2`. | Holds |
| §4.7 characteristic `p` Check | Completed perfect closure of `𝔽_p((t))`, `p = 2, 3`; `B′ = K`, `K²`, `0` | `pK° = 0` and `|t^N| = q^N > 0`. `Tr(1) = 1`. `Tr(a, b) = a + b` sends `(1, 0)` to `1` and maps `(K°)²` onto `K°`. `B′ = 0` gives the zero trace, which is not almost onto. | Holds (faithfulness needed) |
| Nakayama gap, characteristic `p` | `I = pV = 0` | `M → lim M/0 = M` is an isomorphism and `f ⊗ V/0 = f`, so the lemma is a tautology. `ϖⁿ` has constant term `≠ 0`, so it lies in no `T^{1/p^k}V`. | "no `pⁿ`" restricted to characteristic `0` |
| F04 Check | `V = m = ℤ_(p)`, `I = pV`, `p = 2, 3` | `ℤ_(p)/p = ℤ_p/p = 𝔽_p` (2 or 3 elements), and the map is the identity. `√17 ∈ ℤ_2 ∖ ℤ_(2)` and `√7 ∈ ℤ_3 ∖ ℤ_(3)`, so the map is not onto and the source is not complete. | Repaired |
| F04 second Check | `V = m = ℤ_p`, `ℤ_p → ℤ_p ⊕ ℚ_p` | `ℚ_p/pℚ_p = 0`, so the reduction is `𝔽_p → 𝔽_p`, an isomorphism. `lim (ℤ_p ⊕ ℚ_p)/pⁿ = ℤ_p`, so the target is not complete. Cokernel `ℚ_p ≠ 0`. | Holds |
| §3.2(1) comparison | `g = 0`, `A = K`; `p = 2`, `g = 1`; root norms | `g = 0`: the integral closure is `K° ⊕ N` with `N = ϖN`, completion `K°`, `B_g = K`, and §2.8 gives `K`. `g = 1`: `K[S]/(S² − 1) ≅ K²` has 4 idempotents and evaluations `S ↦ ±1`; the evaluation retraction kills `1 − e`, so it is not an isomorphism. In general `|h_n|_sp = |g|^{1/p^n} ≤ 1`. | Both constructions agree; branches kept |
| §3.2 base hypothesis | `A = K⟨X⟩`, characteristic `p` | §2.8 is defined. PerfectoidQuotients needs a perfectoid pair, and `X` has no `p`-th root. | Comparison is stated for perfectoid `A` only |
| PerfectoidQuotients §1.4 contract | `P = T − g`, `g ∈ A°` | Monic of degree 1 with coefficients in `A°`; the root `h₀ = g` is forced. | Within the supplier's hypotheses |
| §3.5 Check | `r = 1`, all roots of `T` acting by `0`, `j = 0, 1, 2`; `p = 2, 3` | `R[0] = 0` (from `T·u = 1`). `R[1] = R[2] = k_K[U^{1/p^∞}]`. `R[2] → R[1]` kills `u^s` for `s > 0`, and `R[1] → R[0]` is zero. The limit is `k_K`. Control: `ϖ^{1/p}·ϖ^{1/p²}` has valuation `3/4` or `4/9 < 1`, so it is nonzero modulo `ϖ`. | Repaired; limit unchanged |
| §3.5 roots acting by `0` | `T^{1/p^k} ↦ ϖ^{1/p^k}` (`k ≥ 1`), `T ↦ 0` in `K°/ϖ` | This is a compatible system with nonzero roots. | Specification needed |
| §5.10 `g = 0` Check | `n = 0`, `k = 𝔽_p`, `l = 0, 1`, `p = 2, 3` | `l = 0`: `ℚ_p`, `[X] = 0`. `l = 1`: `ℚ₂[X]/(X²)` and `ℚ₃[X]/(X³)`, with `[X] ≠ 0` and `[X]^p = 0`. | Repaired |
| §5.10 proof sketch | Scalars `p` and `0` of `K°°_∞` | `p ↦ unit`, so the ideal contains `p·p⁻¹ = 1`. `0 ↦ 0`, not a unit. `px = 0` gives `x = 0`. | Repaired |
| §4.5 / §4.7 characteristic-`p` remarks | `m = 0, 1` | `m = 0`: the quotients are zero. `m = 1`: `B°/p = B°`, so (2) is almost finite étaleness over `A°`, which is GR 3.5.28. | Openness restricted to characteristic `0` |

## Ownership, overlaps and other notes for the maintainer

- **New supplier gap.** `gap:principal-almost-flatness` asks PerfectoidSpaces (on main, and
  earlier) to state at P0.11 the case `A = C` of GR Lemma 5.2.1. The entries in `plan.json` and the
  README are identical. The existing `gap:complete-almost-nakayama` is unchanged.
- **New supplier.** PerfectoidQuotients §1.4 (open #1042, a new roadmap folder, merge-order
  line 25) is now consumed for the perfectoidness of root algebras over a perfectoid base. If that
  pull request renumbers or drops §1.4, §3.2, §4.8 and §5.6 must follow.
- **Overlap checks.** The overlaps tool reported no open pull request changing this roadmap and no
  dropped id. I compared the closest roadmaps by object:
  - PerfectoidQuotients: the root-algebra perfectoidness now has one owner.
  - DirectSummandsAndBigCohenMacaulay, PerfectoidTowers, RelativeFarguesFontaine and
    ClassicalAdicEtaleCohomology own nothing touched here.
- **Searches for the new gap.** `roadmaps grep` found no owner of the GR 5.2.1 criterion on main or
  at the open heads.
- **Names other roadmaps cite.** None changed. No heading or section was renumbered, and
  DirectSummandsAndBigCohenMacaulay's imports (Layer 1, §§5.1–5.3, 5.11, 5.12) are untouched.
- **Suspicious text.** None was found in the review or the fetched files.
