# Repair of ZagierConjecturePolylogarithms (package, round 4)

This round resolves the five findings of `REV-PKG-ZagierConjecturePolylogarithms~3`. I checked each against the cached sources (GR, G08, M20), recomputed the numbers myself, and read the supplier conventions (BorelRegulators). All five are correct on the mathematics:

- F02, F03 and F05 are applied as asked.
- F01 is applied, except for one point: the Hodge-correlator phase is fixed by a proof for every weight, not by a multiplier fitted at weight two.
- F04 is applied for degrees three and four only, because the source gives a construction for every infinite field only there.

Files changed:

- `packages/ZagierConjecturePolylogarithms/README.md`
- `packages/ZagierConjecturePolylogarithms/sources.toml` (locators only)
- `packages/ZagierConjecturePolylogarithms/Suggested.lean` (one docstring word)

`metadata.toml` and `design/plan.json` are unchanged; no supplier gap was needed.

## F01 (P1) — applied differently

**What changed.**

- Conventions and §3.7 now keep two period maps apart:
  - the form-valued `P`, with values in `ℝ(m−1)`, so `P(S₄)=iL₄*`, `P(S₃)=L₃*`, `P(S₂)=iL₂*`;
  - the real scalar `p`, with `P=p` in odd weight and `P=i·p` in even weight.
- §5.1 now states the diagonal equations for `P`, with `(192)` transported to `iL₂*`, and adds two angular Checks.
- §6.2 now converts by `P/(2πi)³=−p/(8π³)`.
- §3.9 now multiplies M20 (3) by `i^{m−1}` and states the comparison as `Cor^H = c_m(2πi)^{−m}p`, with `c₁=1` and `c₂=−2`.

**Why §3.9 is applied differently.** I verified the witness myself:

- `dL₄*(∂θ)=−15ζ(3)/512` at `z=i`, while the right side is `−15iζ(3)/512`.
- At four generic points, `d(iL₄*)` equals the right side exactly.
- `dL₃*` needs `iL₂*` on the right.

For the tree integral I computed `∫log|x| dlog|x−1|∧dlog|x−i| = −πD(i)` to `10⁻¹⁴`. So the literal (3) is `−iD(i)/(4π²)`, as the review says.

The review's multiplier `1/(2i)` is fitted at weight two only. Instead, the factor `i^{m−1}` provably puts `Cor^H` on `(2πi)^{−m}ℝ` in every weight, because `⋀d^C h_j = (−1)^{m−1}⋀dh_j`. With that factor the value agrees with M20's closed formula (4). The magnitude constant is then explicit as `c_m`: the sources disagree on it (M20 (4) against M20 p. 18), and no consumer uses its value.

`d^C` itself is not redefined, so §5.4 keeps its residue normalization.

## F02 (P1) — applied

**What changed.**

- §4.3: the unsigned sum with an unresolved "row-and-degree sign" (`D∘t=±t∘∂`) → `t=Σ_a(−1)^{|a|}t_a` with `D∘t=t∘∂`.
- The proof route now gives `∂t_d=t_d∂+pt_{d−1}`, with the projection faces of `t_p` landing in the killed row.
- A note records that the source's unsigned sum is a chain map for `∂−p`, and that the row sign `(−1)^q` carries it to `(−1)^N t`.
- Added the review's `N=5` Check over `ℚ`. In characteristic two `A=B` and that witness degenerates; the Check says so.
- The signed `t` is named in §§4.4 and 5.8 and in the Scope.

## F03 (P2) — applied

**What changed.** The Scope said "the presentation map from `Γ(F,4)` to the inductive weight-four complex". It now describes what §6.5 actually proves:

- explicit raw cycles are inductive raw cycles, so existence transfers;
- every-family rationality holds under the obstruction or period-span condition;
- explicitly, no map of complexes is constructed.

On a raw generator both composites of the raw square are `[x]₃^ind⊗u(x)`, as §6.5 already states.

## F04 (P2) — applied differently

**What changed.** §6.1 was "for every number field and `i=1,…,4`". It now has two ranges:

- For every infinite field and `i=3,4`: §4.4 composed with §4.8. That complex agrees with the Chevalley–Eilenberg complex in degrees two to four, and §3.3 identifies its cohomology there with `H³Γ(F,4)` and `H⁴Γ(F,4)`.
- For number fields and `i=1,2`: through the lift of §5.7.

Rank-three vanishing is stated for both ranges. A Check covers `ℚ(t)` and `𝔽₂(t)`.

**Why not all four degrees over every infinite field.** The source states Theorem 1.3(i) for infinite fields (GR line 230). But in degrees one and two its proof needs a lift `G₄(F)→L₄(F)`, which it builds from the motivic fundamental group "where the points … belong to the number subfield `F⊂ℂ`" (GR lines 4236–4243, line 4239). Motivic correlators exist only for number fields or in realizations (GR lines 619 and 1126–1131).

So for `𝔽₂(t)` the source gives no construction in degrees one and two, and for `ℚ(t)` only a Hodge-realization element. Stating `K₇→H¹` over `𝔽₂(t)` would assert an unproved theorem. Degrees three and four use only R₅¹, R₆², the flag comparison and §3.3, which are algebraic, so they are stated over every infinite field. The README records this discrepancy with the source's locators.

## F05 (P3) — applied

**What changed.**

- Summary: "decorated flags and the Grassmannian configuration chain map" → "the signed weight-four flag-to-configuration map and the Grassmannian configuration chain map".
- The decorated flags with their acyclic resolution are added to the list of imports from Polylogarithms.

This agrees with §4.2 ("Nothing about flags is constructed here") and with the supplier contract.

## Checks run

- **Elaboration.** `lake env lean packages/ZagierConjecturePolylogarithms/Suggested.lean`, run from the content checkout, exited 0. The only output was two `declaration uses sorry` warnings, at lines 123 and 132. No `TauCeti.*` import, so nothing needed building.
- **`#check` scratch.** One scratch file with `#check @name` for all ten declarations elaborated with exit 0. The elaborated types are unchanged and match the README:
  - `unitVector`, `trilogCyclic`, `TrilogRelationFunction` and `IsCycle4` keep `[Field F]`, plus `[AddCommGroup V]` and `[Module ℚ V]` where used;
  - `periodMatrixFour` and `zagierDeterminantFour` keep `[NumberField F]`;
  - `zagier_four_everyFamily` keeps `hc : ∀ j, IsCycle4 (c j)`.

  No binder was lost. The only Lean change is a docstring word ("K-groups of a number field" → "of a field"), matching §6.1's new generality.
- **`roadmaps resolve` on the README.** No cross-roadmap citation and no Lean name found nowhere. The tool did not check names outside TauCetiRoadmap.
- **Dependency check.** No UPWARD, CYCLE or moved line:

```text
depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
```

- **Gate failures.** None were listed for this round.
- **Sources.** No source is missing and no `needs-references.toml` was written. The new locators were read in the cached files and added to `sources.toml`:
  - GR (1), (187), (190); GR lines 90, 1126–1131 (p. 26), 2838, 2901, 4236–4243, 4274–4291;
  - M20 (4), line 145, and lines 889–895;
  - G08 Lemma 11.2 and line 4632.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| Diagonal eq. weight 4, `P(S₄)=iL₄*` | `z=i` on `∂θ` (vector `−1`); `0.3+0.7i`, `2+i`, `−1.5+0.4i` on `1`, `i` | at `i`: `dL₄*=−0.0352165=−15ζ(3)/512`, RHS `−0.0352165i`; `0.3+0.7i`: `−0.0972229` / `−0.0972229i` and `0.0659723` / `0.0659723i`; `2+i`: `−0.0685634` / `−0.0685634i`, `0.1059644` / `0.1059644i` | `d(iL₄*)=RHS` exactly; scalar form `dL₄*=−i·RHS` |
| Diagonal eq. weight 3, `P(S₂)=iL₂*` | `i`, `0.3+0.7i`, `2+i` | `dL₃*`: `0.3434871`, `0.4511552`, `0.0118464` (on `1`); RHS with `iL₂*` equal; with real `L₂*`: `−0.3434871i` etc. | `iL₂*` forced; at `∂θ`, `−(3/8)D(i)` |
| (192) degree-3 with plain `d` | 3 random points of `ℂ²`, `ℂ³` | `dα=0.0417i` vs `β=0.0217i` (with `iL₂*`); with `L₂*`: `−1.219i` vs `−0.862` | value line fixed by `i`; plain-`d` equality fails, so the API is phrased via the `C_H` differential of §3.7 |
| Tree value line, all `m` | `m=1,2,3,4` | `i^{m−1}(2πi)^{−(2m−1)}ℝ` = `(2πi)^{−1}ℝ`, `ℝ`, `iℝ`, `ℝ` = `(2πi)^{−m}ℝ`; literal (3) is `iℝ` for every `m` | `×i^{m−1}` needed exactly in even weight |
| Weight-2 tree integral | `(0,1,i)`; antisymmetry | `J(0;1,i)=−2.8775907816` (`−πD(i)=−2.8775907816`); `J(1;0,i)=+2.87759`; literal `−0.023202i`; corrected `0.023202=−(2πi)^{−2}D(i)`; M20 (4) at `−i`: `0.023202` | `c₂=0.023202/((2πi)^{−2}·0.457983)=−2.000` |
| M20 p. 18 example | `(1,0,z)` | middle term `(2πi)^{−2}(log|z|d^C…)` is imaginary, `dL₂` is real; value `−½` of (4) | not used (recorded) |
| §6.2 conversion | `[i]` over `ℚ(i)`, `σ(i)=i` | `p=5β(4)/16=0.30905`; `P/(2πi)³=−0.0012459` (real); `p/(2πi)³=+0.0012459i` | phase explicit |
| Signed `t` | `N=4`; `N=5` witness; `N=6` coefficients; char 2 | `t=id`; `pt₀=(1−1+1−1+1)A−B=A−B`, unsigned residual `2A−2B`, signed `0`; `N=6`: `(c₀+c₁)pt₀+(c₁+c₂)pt₁` with `(1,−1,1)` → `0`, unsigned `2pt₀+2pt₁`; char 2: relations coincide, `A=B` | sign forced; witness over `ℚ` |
| Row-sign equivalence | `x∈C_m(q)` | `(∂+p)((−1)^q x)=(−1)^q(∂x+px)=(−1)^q∂x−(−1)^{q−1}px` | unsigned sum for `∂−p` ↦ `(−1)^N t` |
| §6.1 degrees 3, 4 | `ℚ(t)`, `𝔽₂(t)`; number field | `(K₅,H³)`, `(K₄,H⁴)` in characteristic 0 and 2; `H⁴=Λ⁴U/⟨(1−x)∧x∧y∧z⟩=K₄^M⊗ℚ`; the §5.8 corrections change only the `(8,1)` and `(7,2)` components | statable; no claim in degrees 1, 2 for these fields |
| §6.1 degree-3 identification | images of degree-2 terms | Γ→CE quasi-iso (§3.3) gives `δ(Λ²B₂)⊆δ(B₃⊗U)`; `L₃≅B₃` (§1.5) | `H³`, `H⁴` agree |
| F03 raw square | `[x]` | both composites `[x]₃^ind⊗u(x)` | no complex map claimed |
| F05 Summary | §4.2 text | "Nothing about flags is constructed here" | consistent |

## Ownership and overlap

- No new object is owned here. The changes refine statements of §§3.7, 3.9, 4.3, 5.1, 6.1–6.3 that this roadmap already owns.
- F04 adds no supplier gap: degrees three and four use only this roadmap's §§1.5, 3.3, 4.4 and 4.8, with the contract decorated-flag-lengths that already exists.
- The overlap ledger lists no conflicting pull request and no dropped id. I checked ownership against the open heads only through `roadmaps resolve` and the supplier reads above.

## For the maintainer

- **No renamed targets.** No section number, target id or Lean declaration name changed, so no roadmap citing this one is affected.
- **Polylogarithms' own Scope.** Its Scope line still lists decorated flags among this roadmap's objects, although its §3.4 owns them (as the review notes). That needs a fix in Polylogarithms; this package cannot make it.
- **(192) degree-three formula.** GR (192)'s degree-three component, as printed and now with `iL₂*`, does not commute with the plain exterior derivative against the degree-two component (table above). In the one-variable restriction, the coefficient `1/6` rather than `1/7` would be needed. §5.1's API is now phrased with the differential of `C_H`, which is what GR Theorem 8.3 asserts. GR's explicit coefficients `(3/7, 1/7)` are kept as printed; a later review may want to check them against G08 Definition 4.10.
- **Lift in degrees one and two (unchanged here).** §§5.7–5.8 express the motivic Grassmannian lift in the combinatorial `L₄(F)` through §3.12. The cocycle condition needs the lifted nine-term combinations to vanish in `L₄(F)` itself, not only in the motivic coalgebra. The source does not address this, and this round leaves it unchanged.
