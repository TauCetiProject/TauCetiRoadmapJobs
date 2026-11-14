# GATE-ModularIwasawaMainConjecturesPartII~1: answers to human review of 227dc5d

Pull request head before: `6bdb7a8`. Repairs committed as `6fc6492` ("review repairs (Katz functional equation cyclotomic displacement, μ-conditional λ-identity, prime-element descent)"), not pushed. One comment was answered (CBirkbeck, 2026-11-13T17:19:53Z), containing five points F01–F05, numbered H01–H05 here. Two of them (F02, F03) concern text that commits after `227dc5d` had already repaired, or that `227dc5d` already contained. Line numbers refer to `TauCetiRoadmap/ModularIwasawaMainConjecturesPartII/README.md` at `6fc6492`.

## H01 (CBirkbeck) — applied differently

§5.5 (README.md:620) now writes `χ̌ = θ⁻¹ω·⟨N⟩·η⁻¹` and `L_θ = W_θ·ι(L′)` with `L′ ≡ L_{θ⁻¹ω}` mod `p`, and its conclusion `λ(L_θ) = λ(L_{θ⁻¹ω})` becomes "`μ(L_θ) = 0` iff `μ(L_{θ⁻¹ω}) = 0`, and then `λ(L_θ) = λ(L_{θ⁻¹ω})`"; the reviewer's witness (ℚ(i), `p = 5`, `θ = (·/13)`, `N(g) = 6`) and `S + 5T` are Checks at :626–627, the CGLS locator "proof of Theorem 2.2.3, CGLS line 836" is now "proof of Theorem 2.2.2, CGLS lines 812–836", and Summary (:3) and Scope (:36) say the same. The proposed supplier citation is not used because no roadmap on main or at an open head states Hida's μ-vanishing (PadicFamilies has no such section, AutomorphicCongruences README:118 lists it only as its open `gap:hecke-l-values-mod-p`, and ModularIwasawaMainConjectures README:190 calls it owned outside), and the congruence needs μ = 0 on only one branch, from which it proves μ = 0 on the other.

## H02 (CBirkbeck) — applied

This was repaired in `55f8bdd`, after the reviewed `227dc5d`: README.md:178 reads "The normalization is `ℤ_2 × ℤ_2` integrally; the normalization map becomes an isomorphism only after inverting 2", as requested. The same pattern in Scope (:9), "its normalization after inverting `p`", now reads "its normalization (an isomorphism after inverting `p`)".

## H03 (CBirkbeck) — disputed

The mapping has been in the README since the first commit `fadd5ba`, so also at `227dc5d`, as the sentence at README.md:34 ("The former numbering CZ.4 is now Layer 6 (rational-equivariant-main-conjecture is §6.2); CZ.5 is now Layer 7 (cm-contained-descent is §7.6, and cm-h2-torsion is supplied by KatoEulerSystems §4.4, with the identified-generator strengthening in §7.8); CZ.6 is now Layer 8 (cm-kato-main-conjecture is §8.6 and cm-kato-normalization-dictionary is §8.7)"). It sends each of the five ids cited at CMRankZeroConverse README:121 to the place the proposed table gives, in the accepted "… is now …" form; no change.

## H04 (CBirkbeck) — applied

At README.md:851, §8.5 step 4 "because `A` is factorial and `a` prime" now reads "because `a` is a prime element: `b/a = c/s` with `s ∉ aA` gives `sb = ac`, so `a ∣ b`". The Check at :862, "With `A` not factorial, `a⁻¹A ∩ A_{(a)}` can be larger than `A` …", now says step 4 needs `H_{(a)} = A_{(a)}` and not factoriality, with `H = x⁻¹A` in `k[[x, y]]` (the class of `x⁻¹` in `H/A` is nonzero and killed by `x`) and the prime `w` in the non-factorial domain `k[[x, y, z, w]]/(xy − z²)` as controls.

## H05 (CBirkbeck) — disputed

The quoted Check ("At `r = 1`, `r = 2` … at the edge of absolute convergence") is in the board package copy of the README (its line 407) but in no commit of this pull request: at `fadd5ba`, §3.1 read "At r = 1 the value lies left of the absolute-convergence boundary 3/2, and at r = 2 it lies on the boundary 2", which agrees with the reviewer's `(s, centre, boundary) = (1, 1, 3/2), (2, 3/2, 2)`, and `227dc5d` deleted that Check. At `6bdb7a8` §3.1 makes no centre/edge claim, and the only remaining mention, README.md:22 ("Jacquet–Shalika on the edge, Rohrlich's finiteness at the centre"), matches KatoEulerSystems §4.2 and its Check (`k = 3`, `r = 2` on the edge; `k = 2` central); no change.

## Build

`lake build TauCetiRoadmap.ModularIwasawaMainConjecturesPartII.Suggested`: `✔ [18238/18239] Built TauCetiRoadmap.ModularIwasawaMainConjecturesPartII.Suggested (2.0s)`, "Build completed successfully (18239 jobs)."

## Gate

Gate summary line after the commit:

`gate ModularIwasawaMainConjecturesPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`

The run before the commit differed only in `dirty=1` (uncommitted README).

## Dependency check

`depcheck: 243 roadmaps, 2197 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line. The repair adds one `*Needs:*` item, PadicMeasuresIwasawaAlgebras Layer 4 (on main), and no new supplier.

## Ownership and sources

- **Hida's μ-vanishing.** I searched by object, using `roadmaps grep` for the anticyclotomic Katz μ-invariant, Hida 2010 and "μ-invariant … Katz" across main and every open head, and `roadmaps show PadicFamilies` for PR #1019, which is not among the sibling checkouts. No roadmap states it as a target, and this roadmap still does not assert it. §5.5 now owns only the equivalence of μ-vanishing on the two dual branches and the λ-identity under it. Both follow from the functional equation, which Scope (:25) already assigns to this roadmap because no supplier states it; a search for "Katz … functional equation" or "Kriz, Theorem 27" finds it only here, and AutomorphicPadicLFunctionsPartII states no functional equation of Katz's measure.
- **Sources.** No new source is cited; the README still mentions Hida only by name in the Scope exclusion. The new locators are Kriz lines 1034–1064 (unchanged) and CGLS lines 812–836 (proof of Theorem 2.2.2, p. 15, which includes (2.11) at line 836 and the use of Hida's μ-vanishing at lines 813–815). No `needs-references.toml` entry was needed.
- **Lean.** `Suggested.lean` has no declarations (its docstring explains why), so there is nothing to `#check`. It is unchanged, and its docstring's "Katz's functional equation and lambda identity (§5.5)" still names that section correctly.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Old §5.5 claim: `χ ↦ χ̌` maps the `θ`-line onto the `θ⁻¹ω`-line | `K = ℚ(i)`, `p = 5`, `θ = (·/13)` restricted to `K`; `g` in the pro-5 cyclotomic direction with `N(g) = 6`; any anticyclotomic `η` | `χ̌(g) = (θη)⁻¹(g)·N(g) = 6`; `(θ⁻¹ω·η⁻¹)(g) = 1`; with the other avatar, 1/6 versus 1 | false | replaced by `χ̌ = θ⁻¹ω·⟨N⟩·η⁻¹` |
| Witness hypotheses: `θ`, `θ⁻¹ω` satisfy §5.4 | `13 ≡ 1 mod 4` splits; `(5/13) = (13/5) = (3/5) = −1`; `ω` ramified at 5 | `θ|_{G_v̄}`: nontrivial unramified, so `≠ 1` and `≠ ω`; `θω|_{G_v̄}`: ramified, so `≠ 1`, and `= ω` only if `θ|_{G_v̄} = 1` | holds | Check at :626 |
| `N = ω·⟨N⟩` with `⟨N⟩` in `1 + pℤ_p`, nontrivial on the cyclotomic direction | `p = 5`: `N(g) = 6 ∈ 1 + 5ℤ_5`; `p = 3`: `4 ∈ 1 + 3ℤ_3`; `p = 2` | `ω(g) = 1` for pro-`p` `g`; at `p = 2`, `1 + 2ℤ_2` contains `−1`, so the decomposition fails, but §5.4 assumes `p > 2` | holds in scope | none |
| `L_θ = W_θ·ι(L′)` | evaluate at `η`: `L_θ(η) = L_p(θη) = W(θη)·L_p(θ⁻¹ω⟨N⟩η⁻¹) = W_θ(η)·L′(η⁻¹)` | both sides agree as functions of `η` | holds | — |
| `W_θ` is a unit of `Λ_Ô` | `v ∣ 13` for quadratic `θ`; a prime of `𝔠` where `χ` is unramified (`e = 0`) | Gauss sum absolute value `13^{1/2}`, norm a power of 13, so a 5-adic unit; `e = 0` gives a single term, a root of unity; the `η`-dependence is `η_v(π_v)^{−e}`, a group element | holds | wording kept |
| `L′ ≡ L_{θ⁻¹ω}` mod `p` | integral measure `μ`; `⟨N⟩ − 1` valued in `pℤ_p` | difference `= p·pr_*(θ⁻¹ω·((⟨N⟩−1)/p)·μ)`, which is in `pΛ_Ô` | holds; needs integrality (AutomorphicPadicLFunctionsPartII §8.5: bounded `O_{ℂ_p}`-valued) | "Katz's measure is integral" stated |
| A congruence mod `p` preserves μ = 0, and then λ | `T` versus `T + 5`; `5T` versus `5 + 5T` | first pair: μ = 0, 0 and λ = 1, 1; second pair: μ = 1, 1 and λ = 1, 0 | holds under μ = 0 and fails without it | negative-control Check at :627 |
| `ι` preserves μ and λ | `ι(5T) = −5T(1+T)⁻¹`; `ι(T²) = T²(1+T)⁻²` | (μ, λ) = (1, 1) and (0, 2), unchanged | holds | Check at :628 wording |
| Degenerate branch `θ = θ⁻¹ω` (`θ² = ω`) | `p = 5`: `ω` has order 4 in a cyclic group of order 4, and an order-8 character into `𝔽_5^×` does not exist | statement becomes "μ = 0 iff μ = 0", with λ equal to itself | consistent | none |
| CGLS locator | CGLS line 803 (Theorem 2.2.2), proof at 812, (2.11) at 836, Hida at 813–815; p. 15 header at line 790 | (2.11) lies in the proof of Theorem 2.2.2, not 2.2.3 | old locator wrong | corrected |
| Scope (:36), Summary (:3) | compared with §5.5 | both state the equivalence and the conditional λ-identity; no μ = 0 claim | consistent | edited |
| Scope (:9) "normalization (an isomorphism after inverting `p`)" | `ℤ_2[C_2] → ℤ_2 × ℤ_2`, `a + bg ↦ (a+b, a−b)` | image `{u ≡ v mod 2}`, cokernel `𝔽_2`; `(1,0) = (1+g)/2` after inverting 2 | consistent with §0.2 (:168, :178) | edited |
| §8.5 step 4: `a⁻¹A ∩ A_{(a)} = A` for a prime `a` | `A = ℤ_p[[T]]`, `a = T`: `1/T`, `p/T`; `a = p`: `T/p` | `1/T`, `p/T` ∉ `A_{(T)}`; `T/p` ∉ `A_{(p)}` | holds | proof text |
| Check: `H = x⁻¹A` in `k[[x, y]]` | `x·[x⁻¹] = [1] = 0`; `x⁻¹ ∉ A`; `H_{(x)} = x⁻¹A_{(x)} ≠ A_{(x)}` | class nonzero, killed by `x`, hypothesis fails | negative control holds | new Check text |
| Check: `A′ = k[[x, y, z, w]]/(xy − z²)`, `a = w` | `A′/(w) ≅ k[[x, y, z]]/(xy − z²)` is a domain; `xy = z²` with `x, y, z` irreducible and pairwise non-associate | `w` is prime and `A′` is not factorial; the intersection equals `A′` by the prime-element argument | holds | new Check text |

## Untrusted text

The review comment contains no instruction to run commands, change files outside this job, or handle credentials. It mentions that its round added Hida10 to the package's source manifest. That manifest is not in this job's editable files, and the README cites no Hida text.
