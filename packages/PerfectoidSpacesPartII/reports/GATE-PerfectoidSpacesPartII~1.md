# GATE-PerfectoidSpacesPartII~1: answers to the review of 8f8a1bd

Head before this round: `671703e`. Repairs are in commit `df3fb44`. The comment numbers its
findings F01–F06; they are H01–H06 below. Line numbers are those of `df3fb44`.

## H01 (CBirkbeck) — answered

None of the four quoted passages exists at head: §5.9's sketch (README lines 2886–2899) now argues
with one element `x` of a finitely presented `P`, descends the presentation and `x` to a stage
`A°_{a0}` and reads the annihilator through flatness. It uses no coherence of `A°_∞0` and no
submodule `N`, unlike ANDRE18B lines 554–562. §4.7(3) (lines 2369–2392) goes through the Galois case
modulo `p`, the frame torsor, transitivity of traces and complete almost Nakayama, in place of the two
sentences of ANDRE18A lines 3196–3200. §3.11 (lines 1945–1958) works backwards from the §3.8
criterion and proves the adjunction through unit, counit and triangle identities, in place of the
Hom-bijection of ANDRE18A lines 2953–2957. §3.6 (lines 1765–1783) keeps the five steps that the
mathematics forces (the reviewer's replacement (c) keeps the same five, in the same order), with
its own wording and reasons and with the clause-for-clause last sentence gone. The §5.9 sketch was
replaced in `8f8a1bd`, and the §3.6 and §3.11 sketches in `b2a4617`. The quoted §4.7 sentence was
replaced in `671703e`, and the gap that (b) points out (faithfulness ⇒ surjective trace) is H06.

## H02 (CBirkbeck) — applied

`Suggested.lean` line 389 (at `671703e`): the binder `hreg : g 0 ∈ nonZeroDivisors R` of
`riemann_extension_completeIntegralClosure` is deleted, and its docstring (lines 373–380) now says that
`R°` acts on `R[1/g]` through its image. The proof: `⊆` holds because `g·b ∈ im R°` for every `b`
in the root saturation and its powers, so all powers lie in `R°·(1/g)`; `⊇` holds because an
`R°`-span is contained in the span of the same generators over `rootSaturation`, so
`rootSaturation_completelyIntegrallyClosed` (which already has no `hreg`) applies. README §3.6:
"(2) assumes that `g` is a nonzerodivisor …" → "Clauses (1)–(3) need no further hypothesis on `g`;
when `g` is a zero divisor … the closures of (2) and of §2.3 are those of its image" (line 1726).
The sketch now derives (2) from (3) (line 1779), the `Suggested.lean` paragraph says neither
statement assumes regularity (line 1761), and the Check on `K × K`, `g = (1, 0)` now also gives (2)
(line 1796). §2.1 is left alone: its definition is for an injective `R → S`, which the image
satisfies. `abhyankar_trace_almost_surjective` keeps its `hreg`, because its route through §4.4
needs it.

## H03 (CBirkbeck) — applied differently

§2.4(5) (README line 1174) is generalised as suggested: an injective `ι : A → A′` with a continuous
`A`-linear `ψ`, `ι ∘ ψ = u·g^N`, `u ∈ K^×`, gives `A{λ/g} ≅ A′{λ/g}`. The nonzerodivisor extension
`A ⊆ A′ ⊆ A[1/g]` is kept as the case with `u = 1`, and the sketch is on line 1187 and the API bullet
on line 1207. The counit case is not put in §2.4, which would refer forward from Layer 2 to §3.1 and
§3.3. It is a new API bullet of §3.3 instead (line 1597): the counit is injective, `ug ∈ m` kills
`coker(B^♮° → B°)` for nonzero `u ∈ K°°`, and so `ψ = ug`. §3.3's *Needs* gains §2.4. §3.6(5),
§3.6's sketch and §3.10 (lines 1743, 1766, 1903, 1912) now cite §3.3 instead of "Gabber's
invariance". The reviewer's witness is a new §3.3 Check (line 1612): for `C = B × K`, `g = (T₁, 0)`,
both `C{ϖʲ/g}` and `C^♮{ϖʲ/g}` are `P{ϖʲ/T₁} × 0`.

## H04 (CBirkbeck) — disputed

The README has the former-numbering table: `## Downstream consumers`, lines 3151–3161, header
"| Former numbering | Sections |". It has been there since the roadmap's first commit `d8879ce`
(line 2983 there) and is also in `8f8a1bd` (line 3017). It maps RA.0–RA.5 slug by slug to §0.1–§5.12.
"§RA.5 (pure map)" (DirectSummandsAndBigCohenMacaulay, open) resolves to §5.1 and "§RA.2, target
p-root-closure" (ArcTopologyAndDescent, open) resolves to §2.1. The overlap check at the open heads
lists no dropped id.

## H05 (CBirkbeck) — applied

`Suggested.lean` line 6 `public import TauCeti.RingTheory.Huber.Bounded` is deleted. No declaration
of `Bounded.lean` is named in the file, and `TauCeti/RingTheory/Huber/PowerBounded.lean` imports it
publicly at the pin. README line 325: "`Suggested.lean` uses the first five" → "uses
`TauCeti.Huber.IsTateRing`, `TauCeti.Huber.PairOfDefinition` and
`TauCeti.Huber.powerBoundedSubring` with `TauCeti.Huber.mem_powerBoundedSubring`". These are the
Huber-bullet declarations the file names.

## H06 (CBirkbeck) — applied

§4.1's statement (README line 2007) now also says that a `G`-Galois extension is faithfully flat and
that `t = Σ_γ γ` is an epimorphism (André A, Proposition 1.9.1 with proof, pp. 9–10; ANDRE18A line
349 uses it). A new API bullet is on line 2050. The construction (line 2026) proves this before the
descent steps that already used it: `η = Σ t(b_i)b′_i`, the product over `G` puts `η^{|G|}` in
`t(B_*)`, and condition (B) (PerfectoidSpaces P0.1; GR, Proposition 2.1.7(ii), p. 8) gives
`m·A_* ⊆ t(B_*)`. Flatness comes from almost projectivity, and faithfulness from the `ε`-retraction
`n ⊗ b ↦ t(cb)n`. §4.1's *Needs* and Layer 4's Dependencies gain P0.1. The ℤ[i] Check gains the
trace (image `2ℤ` over `ℤ`, onto over `ℤ[1/2]`, line 2063). §5.12 (line 3004) now proves almost
faithful flatness through the frame torsor, Galois modulo `pᵐ` over both rings (§4.2(1), §4.4) and
§4.1, plus the descent of flatness and faithfulness along `C₁ → C₂ → C₃`. Its *Needs* gains §4.1,
§4.2, §4.4 and AdicEtaleGeometry A4.3, and so do Layer 5's Dependencies.

## Not answered: the human question

The comment says that it raises one question for a human (scope or licence) "in the section of that
name at the end", but the posted text ends with the summary paragraph and has no such section.
Nothing can be answered until that question is posted.

## Build and gate

- `lake build TauCetiRoadmap.PerfectoidSpacesPartII.Suggested` at `df3fb44`: `Build completed
  successfully (18520 jobs)`, exit 0. There are ten `declaration uses 'sorry'` warnings (lines 113,
  162, 225, 302, 381, 406, 435, 562, 614, 673) and no other message.
- Gate: `gate PerfectoidSpacesPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0
  sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0
  lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0
  round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0
  outside-folder=0 source-material=0 OK`
- Dependency check (`gate --depcheck … --pr 2286`): `depcheck: 243 roadmaps, 2197 edges, 0
  problem(s)`. There is no UPWARD, CYCLE or `moved:` line. The new supplier citation AdicEtaleGeometry
  A4.3 is on main and was already a supplier of Layer 4.
- Signatures: `#check @name` was appended for all 35 declarations, the file was built once with the
  build command above, and then restored. The only elaborated type that changed is
  `riemann_extension_completeIntegralClosure`, which no longer has `↑(g 0) ∈ nonZeroDivisors R`.
  `nonZeroDivisors` now occurs only in `abhyankar_trace_almost_surjective`. Every signature matches
  its README statement.
- Ownership: the one fact the repairs add (faithful flatness and surjective trace of almost Galois
  extensions) is §4.1's own. No roadmap on main or open head states it; one open roadmap mentions
  almost Galois descent in prose without a target. No declaration was added to `Suggested.lean`. No
  new source was fetched, and `needs-references.toml` was not needed.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §3.6(2) / `riemann_extension_completeIntegralClosure` without `hreg` | `g` a unit (roots of `1`); `g = 0`; `R = K × K`, `g = (1,0)`; `K⟨T^{1/p^∞}⟩`, `g = T`; `K⟨T^{1/p^∞}⟩ × K`, `g = (T, 0)` | unit: both `R°`; `g = 0`: `R[1/g] = 0`, both the whole zero ring; `K × K`: both `K°` (`b = ϖ⁻¹` has `‖bⁿ‖ = |ϖ|^{−n}` unbounded, so excluded); disc: both `K°⟨T^{1/p^∞}⟩`; product: both `K°⟨T^{1/p^∞}⟩` | true in all; `⊆` from `bⁿ ∈ R°·(1/g)`, `⊇` from (3) | `hreg` dropped |
| §2.4(5), general form | `N = 0`, `u = 1` (`ι` bijective); nonzerodivisor case `ψ = g^N`; `g ∈ λA°°`; `A = K → A′ = K × K` diagonal, `g = 1` (no `ψ`) | trivial iso; André's case; both localisations `0`; `K{λ/1} = K` against `(K × K){λ/1} = K × K`, not isomorphic, and indeed `ι ∘ ψ = u` would force `x = y` | consistent; hypothesis on `ψ` needed | statement generalised |
| §3.3 counit bullet `B^♮{λ/g} ≅ B{λ/g}` | `B` perfectoid; `C = B₁ × K`, `g = (T₁, 0)`; is `ug ∈ m`? | perfectoid: counit iso; `C`: both `P{ϖʲ/T₁} × 0`; `ug = u·T^{1/p^0}` with `u ∈ K°°`, a generator of `m = T^{1/p^∞}K°°V` | true | new bullet and Check |
| §4.1 faithful flatness and `t` epi | trivial group; `A → A × A`, swap, `p = 2`; `ℤ → ℤ[i]` (`m = V`); same over `ℤ[1/2]`; `|G| = 2` norm | trivial: `t = id`; swap: `t(x, y) = x + y`, onto, free of rank 2; `ℤ[i]`: `t(a + bi) = 2a`, image `2ℤ`, not Galois (cokernel `(ℤ/2)²` of the Galois map); `ℤ[1/2]`: `t(1/2) = 1`; `η² = Σ` of `t(b_i)t(b_j)` times orbit sums `γ₁(b′_i)γ₂(b′_j) + γ₁(b′_j)γ₂(b′_i)`, each `G`-invariant | consistent; Check extended | statement, API, construction, Check |
| §5.12 almost faithful flatness mod `pᵐ` | `B = A` (`r = 1`); `B = A × A` (`r = 2`); descent of `C₁ → C₂ → C₃` | `r = 1`: torsor is `B′` itself, `S₁` trivial; `r = 2`: torsor `B′` with swap, trivially Galois; descent: `N ⊗ C₂ → N′ ⊗ C₂` injective after the faithfully flat `⊗ C₃`, and `N ⊗ C₂ = 0 ⇒ N ⊗ C₃ = 0 ⇒ N = 0` | true | sketch and *Needs* |
| §3.6(5) and §3.10 citations | almost perfectoid `A` with zero-divisor `g` (the `C` above) | annuli of `A` and `A^♮` agree by §3.3; the nonzerodivisor case did not cover them | gap closed | citations moved to §3.3 |
