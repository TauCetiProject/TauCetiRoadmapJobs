# Review of EquivariantIntersectionTheory (pull request #1685 at 03f0a93)

**Verdict:** needs changes

Incremental re-review of the 19 lines of `TauCetiRoadmap/EquivariantIntersectionTheory/README.md`
changed since `1650b0a` (the out-of-scope paragraph on Borel fixed points, the 0.4 Check, the 2.2
locator, the 3.4 opening, the Romagny reference); `Suggested.lean` is unchanged. The gate passes
every check (`build=0`, `depcheck=0`, `OK`), `lake env lean` on `Suggested.lean` at the pins
reports nine `declaration uses sorry` warnings and nothing else, the dependency check reports
`240 roadmaps, 2370 edges, 0 problem(s)` with no UPWARD, CYCLE or `moved:` line, and the pull
request changes nothing outside the folder. Two P3 findings, both in the changed passages and
both wording or locator; nothing blocking.

## R01 (P3) — the 2.2 locator names one section for propositions that lie in four

Location: `README.md` lines 407–409, "homotopy invariance for equivariant vector bundles and
affine bundles (Edidin–Graham 1998, §2.3, Propositions 1–3), all deduced from".

Claim: the operations of 2.2 are stated in Edidin–Graham §2.3, Propositions 1–3.

Witness: in the arXiv text, §2.3 "Functorial properties" (eg1998 line 210) holds only
Proposition 1 (line 229, proper pushforward and flat and l.c.i. pullback). The Chern classes
are §2.4, Definition-Proposition 2 (lines 242, 257–259), and the intersection product for smooth
`X` is the remark after it (lines 262–265); Proposition 2 is §2.5 (lines 266, 278, the
identification `A^i_G(X) ≅ A^G_{n−i}(X)` for `X` smooth); Proposition 3 is §2.6 (lines 357,
399–402, the localisation sequence, under the section's standing hypothesis that `X` is
quasi-projective, line 358, and equidimensional). The text has no proposition for homotopy
invariance (the word occurs only at lines 47, 394, 450, 766). The paper also numbers
"Definition-Proposition 2" and "Proposition 2" separately, so "Propositions 1–3" does not pick out
the Chern classes. The form "§2.3, Propositions 1–3" is the one the previous review's repair
suggested; its witness gave §§2.3–2.4 and the three line numbers, and the suggested wording was
narrower than its witness.

Repair: replace the parenthesis by "(Edidin–Graham 1998, §§2.3–2.6: Proposition 1 for the
pushforward and pullbacks, Definition-Proposition 2 and the remark after it for the Chern classes
and the product on a smooth `X`, Proposition 3 for the localisation sequence; homotopy invariance
is SchemeAndStackFoundations §5.2 on the mixed spaces)". Tested on the instance: the four items
of the list then each point at a statement that exists at the named place.

## R02 (P3) — "agrees with 3.2 for `n = 4`" names two groups that are not equal

Location: `README.md` lines 539–542, "and the result agrees with Edidin–Hu, Theorem 1.3, for
`n = 2g + 2` (in degree one) and with 3.2 for `n = 4`."

Claim: the result of 3.4 agrees with 3.2 at `n = 4`.

Witness: at `n = 4`, 3.4 gives `ℤ/(n − 1)(n − 2) = ℤ/6` and 3.2 gives `Pic M_{1,1} = ℤ/12`;
they agree only through the `μ₂`-gerbe `M_{1,1} → [M_{0,4}/𝔖₃]`, whose pullback is injective
with image of index `2`, as the Check at lines 565–566 states (weights `(4, 6)` against `(2, 3)`:
`ℤ/6 → ℤ/12` is multiplication by `2`). The Edidin–Hu clause is an equality of groups
(`(n − 1)(n − 2) = (2g + 1) · 2g = 2g(2g + 1)`); the 3.2 clause is not, and the sentence treats
them alike.

Repair: "… for `n = 2g + 2` (in degree one), and is compatible with 3.2 for `n = 4` through the
`μ₂`-gerbe (the Checks)". Tested on the instance: `ℤ/6 ↪ ℤ/12` with index `2` is what the
sentence then claims, and what the Check computes.

## Previous findings

- R01 — partly repaired: lines 539–542 open 3.4 with "This is the roadmap's own computation, by
  the route of items 1–4; the literature covers the even cases only, and the result agrees with
  Edidin–Hu, Theorem 1.3 … and with 3.2 for `n = 4`"; the 2.2 locator was added as suggested
  but names the wrong section for two of the three propositions (new R01), and the `n = 4` clause
  dropped the gerbe (new R02).
- R02 — repaired: lines 227–228, "with `x` of weight `0` it is still `⊥`, since the units are the
  constants, so no positivity is needed for the statement"; no Check names a Lean declaration.

## Verified sound

**Gate, build, direction, folder.** Gate at `03f0a93` with the build: every scanner `0`,
`build=0`, `OK`. `lake env lean TauCetiRoadmap/EquivariantIntersectionTheory/Suggested.lean` at
the pins (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`): nine `declaration uses sorry` warnings
(lines 64, 71, 78, 86, 101, 113, 121, 149, 155), no error, no other warning. Dependency check:

```
depcheck: 240 roadmaps, 2370 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `git diff --stat origin/main...HEAD` outside the folder is
empty. `Suggested.lean` is byte-identical to the file reviewed at `1650b0a`.

**Elaborated signatures.** `#check @` of all fifteen declarations elaborated again in the probe
copy: fifteen types printed, none with a lost section binder, identical to the review of
`1650b0a` (`homogeneousUnitDegrees_away_prime` carries `hf : f ∈ weightedHomogeneousSubmodule K
w e` and `Prime f` and no positivity; `depressedDiscr_prime` carries `[CharZero K]` and `2 ≤ m`).
The one-tactic probe and the padding audit of that review stand, the file being unchanged.

**The out-of-scope paragraph (lines 42–47), computed.** `𝔾_m` acting on `𝔾_m` by `t · x = tⁿ x`
is transitive fppf-locally with stabiliser `μ_n`, so `[𝔾_m/𝔾_m] ≅ Bμ_n`, proper, and
Deligne–Mumford when `n` is invertible. Translation `x ↦ s x` commutes with it, so `𝔾_m` acts on
the quotient. Fixed points in Romagny's sense (romagny2005, Proposition 2.5, lines 407–416:
pairs `(x, {α_g})`, `α_g : x → g.x`, with the cocycle `g.α_h ∘ α_g = α_{gh}`), over a base `T`:
locally the object is the trivial torsor with `f(p, x) = pⁿ g(x)`, an isomorphism `(P, f) ≅
(P, s f)` over `𝔾_m × T` is multiplication by a unit `u(s, x)` with `u(s, x)ⁿ = s`, and at a
geometric point of `T` the units of `k[s, s⁻¹]` are `c sᵏ`, with `(c sᵏ)ⁿ = s` impossible for
`n ≥ 2`; the cocycle makes `u` a homomorphism `𝔾_m → 𝔾_m`, `s ↦ sᵏ`, with `s^{kn} = s`
impossible: the fixed-point stack is empty, as the README says, while the coarse space is a
point. The action is not 2-trivial (a 2-isomorphism to the trivial action is the same datum).
Romagny's Example 3.9 (lines 623–631, `ℤ/2 × ℤ/2` on `BQ₈` by conjugation, `(BQ)^G` empty,
coarse space fixed) is the finite-group analogue; the README's example, with a connected
solvable group, is its own, as stated, and refutes the naive Borel statement, so "not in print"
is consistent with it. The reference entry (line 597–598) matches the paper's head (line 5:
Michigan Math. J. 53 (2005)).

**The 3.4 opening, checked.** Edidin–Hu lines 63–64 fix `g ≥ 2` and an algebraically closed field
of characteristic not dividing `2g + 2`; Theorem 1.3 at lines 86–87 gives
`A^*([M_{0,2g+2}/S_{2g+1}]) = ℤ[l]/(2g(2g+1) l)`, degree one `ℤ/2g(2g+1) = ℤ/(n−1)(n−2)` at
`n = 2g + 2` (values: `g = 2`, `n = 6`, `20 = 5 · 4`; `g = 3`, `n = 8`, `42 = 7 · 6`); 3.3 (line
523) carries the `g ≥ 2`. "The literature covers the even cases only": Edidin–Hu treat
`n = 2g + 2 ≥ 6` and `n = 4` is 3.2 through the gerbe; the manifest's `hua2026`, a MathOverflow
answer (lines 153–167) by the same route, reports no reference for odd `n` and the README rightly
does not cite it for a theorem. The route of items 1–4 is unchanged and its values were
recomputed in the review of `1650b0a`.

**The 2.2 operations.** Statement unchanged; each item exists in Edidin–Graham at the places
listed under R01 (lines 215–229, 257–265, 278, 399–402), under hypothesis (1) (lines 143–146),
which Convention 5 restates; the localisation Check (`ℤ[t] → ℤ[t]/(t)`) is Proposition 3 at
`Y = {0}`.

**Cross-roadmap citations.** None added or changed by the diff; those of the review of `1650b0a`
(SchemeAndStackFoundations §§1.13, 1.15, 1.21, 1.22, 2.23, 3.4, 4.15, 5.1–5.6;
AlgebraicVectorBundles L2A; SchubertGeometry S3; GroupSchemesOverABase 6.1) were resolved there
against main `eaf17b1`, which is still main. The resolver's three leads (`GroupSpace.ofGroupScheme`,
`StableCurves.Mbar`, `actionQuotient.torsorEquiv`, README lines 101–105) are README targets of
SchemeAndStackFoundations, not pinned declarations. `scratch/overlaps.md`: no open pull request
changes this roadmap, no cited id is dropped, no id of this roadmap is cited elsewhere; the
closest roadmaps are the SchemeAndStackFoundations revisions, suppliers only. Ownership of the new
paragraph: it owns nothing (an out-of-scope note with a counterexample).

**Adversarial table.** Rows for the changed statements carry computed values; the rows for the
untouched statements are those of the review of `1650b0a` (its table, 29 rows, "r6" below), whose
statements the diff leaves as they were.

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Scope: `𝔾_m` on `Bμ_n` by translation has no Romagny fixed point | `n = 2`, `k` algebraically closed, char `≠ 2`; `n = 1`; base `T` arbitrary | `[𝔾_m/𝔾_m] = Bμ_n` (stabiliser `μ_n`); fixed datum `u` with `uⁿ = s`, `u = c sᵏ`: `kn = 1` has no solution for `n ≥ 2`; `n = 1`: `u = s` works, `[𝔾_m/𝔾_m] = pt`, fixed, so `n ≥ 2` needed and present; over `T`, restrict to a geometric point | true; hypotheses exact | none |
| Scope: the coarse space is fixed | `n ≥ 2` | coarse space `Spec k`, trivial action | true | none |
| 2.2 operations, locator | localisation for `𝔾_m` on `𝔸¹`, `Z = 0` | Proposition 3 at `Y = {0}`: `A^{𝔾_m}_*(0) = ℤ[t] → ℤ[t] → ℤ[t]/(t) = ℤ → 0`; Proposition 1 at `f = 0 ↪ 𝔸¹`: pushforward `ℤ[t] → ℤ[t]`, `1 ↦ t`, degree shift `−1`; sections 2.3/2.4/2.5/2.6 | statement true, locator off | R01 |
| 3.4 opening, agreement with Edidin–Hu | `g = 2`; `g = 3` | `(n−1)(n−2) = 20 = 2g(2g+1)`; `42 = 42` | equal | none |
| 3.4 opening, agreement with 3.2 | `n = 4` | 3.4: `ℤ/6`; 3.2: `ℤ/12`; gerbe pullback `×2`, index `2` | compatible, not equal | R02 |
| 0.4 Check, weight `0` | `k[x]`, `w = 0`; `w = 1` | units `k^*`, degree `0`: `⊥` both | true | none (wording repaired) |
| 0.1–0.5, 1.1–1.4, 2.1–2.4, 3.1–3.3, 3.4 items 1–4 and Checks, Conventions 1 and 5 | as in r6 | as in r6 (29 rows: `⊥`/`⊤`/`2ℤ` for 0.1, `(1+εt)(1−εt) = 1` for 0.2, `−4a₂` and `−4a₂³ − 27a₃²` for 0.5, `ℤ/2, ℤ/6, ℤ/12, ℤ/20` for 3.4, …) | unchanged by the diff | none |

**Counts.** 15 Lean declarations re-elaborated by `#check`; 9 sorry warnings; 1 source fetched
(romagny2005, author page, 28 pages) and read at 2 locators; 3 cached sources read at their
locators (eg1998 lines 143–146, 210–265, 278, 357–402, 745–753; Edidin–Hu lines 63–64, 86–87;
hua2026 lines 153–167); 0 cross-roadmap citations changed; 6 new table rows, 29 carried.

## Not verifiable

- Mumford–Fogarty–Kirwan, Ch. 1 §3 (1.1), and Knop–Kraft–Luna–Vust 1989, Lemma 2.2 and
  Proposition 2.3 (1.3): paywalled, `mfk1994` and `kklv1989` settled as uncertified; untouched by
  the diff.
- Edidin–Graham, published numbering, Proposition 18 (2.4): the Invent. Math. text is paywalled;
  untouched by the diff.
- Mumford 1965, *Picard groups of moduli problems* (3.2, references): no legal copy; untouched.

## Source issues

- **Misprint** in eg1998 at Proposition 9, arXiv p. 21 (lines 745–753): the source says the
  equivariant Chow groups of two presentations `[X/G] ≃ [Y/H]` agree in the same dimension index
  `i`; it should be `A^G_i(X) ≅ A^H_{i+h−g}(Y)`, as the proof's own bundle dimensions give
  (`l + m − g` against `m − h` with the fibre of dimension `l`); affects a stated result.
