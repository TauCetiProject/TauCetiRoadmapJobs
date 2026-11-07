# FIX-PKG-PerfectoidQuotientsPartII~2: repair of the round-2 package review

Review resolved: `REV-PKG-PerfectoidQuotientsPartII` (six findings). Every finding was verified against
the cached sources, the pinned libraries and the sibling roadmaps before any edit.

## F01 (P2) — applied

Old → new. Q10.4 was stated for perfect residue fields through the tower of PerfectoidSpaces P7.17;
it now covers every `F`-finite residue field `k` by the stages `R_n := A/(φ_A^n(f))`, the base changes
of `R = A/(f)` along the `n`-th power of the Frobenius lift of Q10.2. Q10.6 and
`tor_map_mul_root_eq_zero` now assume `[k : k^p] < ∞` (Lean:
`Module.Finite (frobenius k p).fieldRange k`, with `Subfield.toAlgebra` at
`Mathlib/Algebra/Field/Subfield/Basic.lean` line 556), the hypothesis of HM17 Theorem 1.3 (HM17
line 65–70). The Summary, the build overview, the Layer Q10 introduction, Q10.5's parenthetical, the
worked example and the module docstring assert Heitmann–Ma exactly where it holds; a
"Residue fields" paragraph under Scope and ownership records that for non-`F`-finite residue fields
no cover inside `(R⁺)^∧` is constructed anywhere and Q10.5 carries it as a hypothesis. The plan's
`gaps` entry (supplier `none`) is removed: the input is now supplied inside the package in the
generality of every cited theorem, and nothing remaining is a supplier gap.

Mathematics checked beyond the reviewer's sketch. (a) `W` is finite free over `φ_W^n(W)` of rank
`[k : k^p]^n`: complete Nakayama gives finiteness, a lifted `k^p`-basis generates, and the kernel of
the surjection from the free module satisfies `K = pK` (`W` is `p`-torsion-free, so tensoring the
short exact sequence with `ℤ/p` stays exact), hence `K = 0`. (b) Every stage is a *regular* local ring,
so the reviewer's choice of compatible minimal primes is unnecessary: if `f(0)` has `p`-adic
valuation `1` so does `φ_W^n(f(0))`, and `φ_A^n(x_1 − p) = x_1^{pⁿ} − p`; either way
`φ_A^n(f) ≡ (unit)·p mod 𝔪_A²` (the `x_i^{pⁿ}` lie in `𝔪_A²` for `n ≥ 1`). Hence `colim R_n` is a
normal domain and the completed map to `(R⁺)^∧` is injective, as in the perfect case. (c)
`A_∞/(f) = (colim_n R_n)^∧_p`: `f` is a nonzerodivisor on `colim_φ A` and on `A_∞`, and the
`(p, f)`-completion followed by `/f` is the `p`-completion of `/f`. (d) For perfect `k` and the
P7.17 presentations the stages agree with P7.17's after untwisting `W(k)` by `φ_W^n`.

## F02 (P2) — applied

Old → new. Q8.1's Tate-ring clause "continuous iff `v(a) < 1` for all `a ∈ I`" is replaced by
"continuous iff for every `γ ∈ Γ_v` some `n` has `v(a) < γ` on `Iⁿ`, iff `v(ϖ) < 1` and the `v(ϖ)ⁿ`
are cofinal in `Γ_v` for one (equivalently every) topologically nilpotent unit `ϖ`", with Wedhorn
Theorem 7.10 (line 2429–2431, `Spv(A, I·A)` membership) and Lemma 7.4 (iii) (line 2325–2333) as
locators; the proof route carries the Tate-ring argument (`{v < γ}` open iff it contains some
`Iⁿ`; `ϖ^N ∈ I` and `I^m ⊆ ϖA₀`), and notes that Tau Ceti's
`cont_eq_spvOfIdeal_inter_setOfPred_forall_vlt_one`
(`TauCeti/AlgebraicGeometry/AdicSpace/Cont/OfIdeal.lean` line 155) has the `spvOfIdeal` conjunct.
The reviewer's rank-two valuation is a new negative-control Check. I recomputed it:
`v(A₀) ≤ (0,0)`, `v(p) = (0,−1)`, `v(T) = (−1,0) < (0,−n)` for all `n`, so `{v < v(T)}` contains no
`pᵏA₀`. Pattern search: the false clause occurred only in Q8.1; Q8.2–Q8.4 and Q9.2 use the
element-adic clause, which is correct, and `isTopologicallyNilpotent_iff_forall_lt_one` quantifies
over `v.IsContinuous`.

## F03 (P3) — applied differently

The gap is real: the image of `Tor_i(S/pⁿ, N)` in `Tor_i(R⁺/pⁿ, N)` is contained in a
`T_perfd`-submodule killed by `J = (cT_perfd)_perfd`, which gives annihilation by `ψ(J)`, and
nothing stated puts `c_k` into the ideal `ψ(J)(R⁺)^∧`. Applied as the reviewer proposes, but with
the construction made explicit through Q9.1 rather than "Q9.3 (i)": with
`ϖ = ((p♭)^{1/p})♯ ∈ R_∞` (a nonzerodivisor, as `R_∞` is flat over the domain `R`), Q9.1 applied to
`(R_∞, ϖ, {T − c})` gives `A'`, `I'`; `A'/I'` is faithfully flat over `R_∞` by Q9.2 with Q7.4 (the
one-polynomial case of Q9.3's argument), `R'_∞ = (A'/I')^∧` is integral perfectoid, and the map
`T^{1/pᵏ} ↦ c_k` extends to `R'_∞ → (R⁺)^∧` because `(R⁺)^∧` is `p`-integrally closed in
`(R⁺)^∧[1/p]` (Q10.3 with `perfectoid_p_integral_closedness`). `T^{1/pᵏ} ∈ J` because perfectoid
rings are reduced (BS22 line 2436, proof of Theorem 7.4). Q10.5's `*Needs:*` gains Q9.1, Q9.2, Q7.4,
PerfectoidQuotients §0.5 and DerivedDeRhamCohomology §1.10; two Checks were added.

Differently because the reviewer's test instance is not a witness: in `R = ℤ_p⟦x⟧`, `1 + x` is a
unit, so `c = p(1 + x)` generates `(p)`, `c_1/p^{1/p}` is a unit of `R⁺` (its `p`-th power is
`1 + x`), and `p^{1/p} ∈ √(pR_∞) ⊆ (pR_∞)_perfd` already kills the image. The README's Check records
this (`c = pu`), the case `c = px` (roots already in the cover up to units), and `c = p(x + p)`,
whose roots of `x + p` no stage of Q10.4 adjoins. The source gap in BS22 Remark 10.13 is the
reviewer's; the README does not record source issues.

## F04 (P3) — applied

Old → new. `Prismatic.Perfection.perfectSite_equiv`, `Prismatic.Perfectoidization.integral_discrete`
and `Prismatic.Perfectoidization.almostPurity` are deleted from the supplier contract and from
Q10.5's route; the citations are now "PrismaticCohomology §2.30 (perfect-site description,
`S_perfd = lim_{S → T} T`)" and "§2.31 (integral perfectoidization; almost purity for
`J_perfd = ker(R → (R/J)_perfd)`)". Verified: `roadmaps grep` finds none of the three names on main
or at any open head, while §2.30 and §2.31 at PrismaticCohomology's head state the cited content.

## F05 (P3) — applied

Old → new. Q5.4's fourth Check now says `A♭ = lim_F A` is the `t`-adic completion of
`B = 𝔽_p[t^{1/p^∞}]`, a domain, via `(x_n) ↦ (F^n(x_n))`, which identifies `lim_F B/(t)` with
`lim_n B/(t^{pⁿ})` (I checked both directions of this bijection and the compatibility
`F^{n+1}(x_{n+1}) ≡ F^n(x_n) mod t^{pⁿ}`); `A♭[0] = A♭` is reduced, `A[0] = A` contains the nilpotent
`t^{1/p}`, and (2) fails as before. The wrong value `𝔽_p` is named with its refuting sequence.

## F06 (P3) — applied

Old → new. `universe u` → `universe u v`; `∀ (Γ₀ : Type u)` → `∀ (Γ₀ : Type v)` in
`exists_approximation` and `isTopologicallyNilpotent_iff_forall_lt_one`. The elaborated types now
quantify `Γ₀ : Type u_2`.

## Checks run

- `lake env lean` on `packages/PerfectoidQuotientsPartII/Suggested.lean` from the content checkout:
  exit 0, exactly 15 warnings, all `declaration uses 'sorry'`, no errors.
- Worker repair: the worker's build warned that the file imports `Mathlib`, which is designed for
  the module system, without being a module. The keyword `module` is now the first line of
  `Suggested.lean` (the form of `TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main); the
  imports stay `import Mathlib` plus the three `TauCeti.*` modules, unchanged, and nothing else in
  the file changed. Re-elaborated after the edit: exit 0, the same 15 `sorry` warnings and no other
  output, in particular no module-system warning. The declarations' elaborated types are unaffected
  (the edit adds no binder and touches no declaration).
- Signature check: a scratch copy of `Suggested.lean` with `#check @name` for all 19 declarations
  elaborated (exit 0); each elaborated type was compared mechanically with the worker's
  `signatures.md` after normalising namespace prefixes. Sixteen are identical; the only differences
  are the two `Γ₀ : Type u_2` universes (F06) and
  `[Module.Finite (↥(frobenius (ResidueField R) p).fieldRange) (ResidueField R)]` replacing
  `[PerfectRing (ResidueField R) p]` in `tor_map_mul_root_eq_zero` (F01). No section binder was lost.
- Dependency check (`gate --depcheck … --movable`): `depcheck: 204 roadmaps, 1750 edges, 0 problem(s)`;
  no UPWARD, CYCLE or moved line.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| Q10.4 (1) rank | `ℤ_p`; `k = 𝔽_p(t)`, `R = W⟦x⟧` | `[k:k^p]^n pⁿᵈ = 1·pⁿ`, resp. `pⁿ·p^{2n} = p^{3n}`; basis `t^i x_1^{a}x_2^{b}`, `0 ≤ i, a, b < pⁿ` | matches `ℤ_p[p^{1/pⁿ}]` and the reviewer's count | stated with the `[k:k^p]^n` factor |
| Q10.4 (2) regularity | `f = p − x_1`; `f = p − g`, `g ∈ (p,x)²`; `f = x_1 − p` | classes mod `𝔪_A²`: `p`, `p`, `−p` for `n ≥ 1` | each `R_n` regular local | regularity replaces the minimal-prime choice |
| Q10.4 (3) intersection | `ℤ_p`, `p^{1/p}`, `p^{1+1/p}` | `v = 1/p ∉ pR⁺`; `p^{1+1/p} = p·p^{1/p}` | holds | kept |
| Q10.4 hypothesis | `k = 𝔽_p(t_1, t_2, …)` | `[k:k^p] = ∞`, `R_1` not finite over `R` | construction fails, Q10.2 still applies | negative-control Check added |
| Q10.6 hypothesis | `k` perfect; `𝔽_p(t)`; `𝔽_p(t_i)_i` | `[k:k^p] = 1, p, ∞` | first two covered, third not | Check added |
| Q8.1 Tate clause | `ℚ_p⟨T⟩`, rank-two `v` | `v(T) = (−1,0) < (0,−n)`; `v(pf) ≤ (0,−1) < 1` | old clause accepts, new rejects | clause replaced, Check added |
| Q8.1 Tate clause, positive | Gauss valuation on `ℚ_p⟨T⟩` | `v(p)ⁿ = p^{−n}` cofinal in `p^ℤ` | continuous on both criteria | — |
| Q8.1 `ϖ` independence | `ϖ`, `ϖ' = ϖ²` | `v(ϖ')ⁿ = v(ϖ)^{2n}` cofinal iff `v(ϖ)ⁿ` is | "one, equivalently every" holds | — |
| Q10.5 enlargement | `c = p(1+x)`; `c = px`; `c = p(x+p)` in `ℤ_p⟦x⟧` | `(c_1/p^{1/p})^p = 1 + x ∈ R^×`; `c_k = p^{1/pᵏ}x^{1/pᵏ}·unit`; roots of `x + p` not adjoined by Q10.4 | first two need no enlargement, third does | Check added |
| Q10.5 `T^{1/pᵏ} ∈ J` | `R'_∞/c` | `(T^{1/pᵏ})^{pᵏ} = c = 0` in `R'_∞/c` | image zero in the reduced `(R'_∞/c)_perfd` | reducedness cited (BS22 line 2436) |
| Q10.5 flatness of `R/pⁿ → R'_∞/pⁿ` | `n = 1`; general `n` | `R_∞/ϖ → R'_∞/ϖ` faithfully flat, both sides `ϖ`-torsion-free | flat mod `pⁿ = ϖ^{pn}`·unit | stated |
| Q5.4 Check 4 | `A = 𝔽_p[t^{1/p^∞}]/(t)` | `(t^{1/p^{n+1}})_n ≠ 0` in `lim_F A`; `lim_F A ≅ lim_n B/t^{pⁿ}` | `A♭` a domain, `A` not reduced | value corrected |
| `tor_map_mul_root_eq_zero` hypothesis | `k = 𝔽_p`; `𝔽_p(t)` | `fieldRange (frobenius k p) = k`, resp. `𝔽_p(t^p)`; `Module.Finite` holds with rank `1`, `p` | encodes `[k:k^p] < ∞` | hypothesis replaced |

## For the maintainer

- `tor_map_mul_root_eq_zero` changed its hypothesis from `PerfectRing` to `F`-finiteness; no
  roadmap on main or at an open head cites this name (checked with `roadmaps grep`).
- Q10.4 is now a construction for `F`-finite residue fields; PerfectoidSpaces P7.17 remains the
  supplier for the identification in the perfect case. Q10.5 now depends on Layers Q7 and Q9
  (Q7.4, Q9.1, Q9.2), recorded in Layer Q10's Dependencies.
- The plan's single `gaps` entry (no supplier) was removed; nothing else in `design/plan.json`
  changed. Its nodes still describe Q10.4 in the perfect-residue-field form; the README is the
  authority.
- `sources.toml`: locators of BS22 (added Theorem 7.4) and Wedhorn (added Lemma 7.4) extended; no
  new source, no missing text (no `needs-references.toml` was created).
- Ownership against open pull requests whose files the brief did not provide was not checked.
