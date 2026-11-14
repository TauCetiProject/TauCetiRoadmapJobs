# Repair of ZagierConjecturePolylogarithms (package, round 5)

This round resolves the three findings of `REV-PKG-ZagierConjecturePolylogarithms~4`. I checked each against G08, GR and G09, recomputed every value myself, and read one new source (CGR, arXiv, legal).

- F01 is right, and the defect goes further than the review says: GR's printed four-unit form is not even a Deligne cocycle. Repaired through an explicit comparison of G08's Hodge complex with the real Deligne complex. Marked "applied differently" because one of the review's test values uses the old normalization.
- F02 and F03 are right. GR's §9.3 passes from motivic expressions to the combinatorial complex without a relation-compatible lift. That lift is now a target owned here, stated over every infinite field, with an exact obstruction-theoretic route.

Files changed:

- `packages/ZagierConjecturePolylogarithms/README.md`
- `packages/ZagierConjecturePolylogarithms/sources.toml` (CGR added; G08 and GR locators extended)

`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged; no supplier gap was needed.

## F01 (P1) — applied differently

**What changed.** §3.7 now keeps three objects apart:

- G08's literal period `P`, with product `∗` and differential `δ = −d/2` on zero-forms;
- the comparison `Φ = (−1)^{k−1}µ` (G08 (106));
- the ordinary period `R = Φ∘P`, whose top component is G08's `ω_n`.

§§3.8, 3.9, 3.13, 5.1, 5.2, 5.4, 6.2 and 6.3 were recomputed through `R`. The residue constant becomes `πi`.

**Why "differently".**

- The review's weights-(2,1,1) test value `−3iD(i)/10` uses `P(S₂) = iL₂*`. In the literal model `δ = −d/2` forces `P(S₂) = iL₂`, so the literal value is `−(3/5)iD(i)`. The `R` value is `−iD(i)/8`.
- The repair goes further than the review asks. GR's `(1/6)Alt₄` has a differential with a nonzero `(3,1)`-component on a threefold, so it is no map of complexes. The constant `2πi` of §5.4 belongs to that unnormalized form.

**Evidence, all verified at the source lines.**

- G08 Def. 4.10 (G08 line 1967) gives `(1/24)Alt₄` and `(3/5,−1/5,1/5)`.
- G08 Lemma 4.13 (line 2036) gives `δ = −d/2` on weight-`n` zero-forms.
- `Φ` sends the literal four-unit product exactly to G08 (56). The weight `binom(n−1,j)⁻¹` cancels the multiplicity `binom(n−1,j)`.

**Single-symbol values forced.**

- `P(S₂, S₃, S₄) = iL₂, −4L₃*, 8iL₄*`.
- `R(S₂, S₃, S₄) = iL₂*, −(2/3)L₃*, (2/5)iL₄*`.

Patterns repaired elsewhere:

- Conventions, "Periods" and "Normal-crossing degrees";
- §3.8 Check; §3.9 (`p` is now the coordinate of `R`, and `c₂ = −2` is unchanged);
- §3.13 Examples; §5.2 (`Σ q p = (1/8)Σ q L₄` on cycles);
- §5.4 (`(πi)^q`, holomorphic component `−(1/8)dlog…`);
- Layer 5 intro and Examples; §6.2 route and Check (`p = β(4)/8`); §6.3 route.

## F02 (P2) — applied

**What changed.** §5.7, "Combinatorial lift", is a new owned target. It asks for `𝓛₄: G₄(F) → L₄(F)` for every infinite field, with:

- (i) the full cobracket equal to `δ_{G₄}`;
- (ii) naturality;
- (iii) specialization;
- both nine-term relations in `L₄(F)` itself.

The route is obstruction theory at the universal configuration:

- (a) an `H²Γ` class, with a torsor under `H¹Γ`;
- (b) the nine-term defects in `H¹Γ`;
- (c) specialization.

CGR Theorem 9 supplies the characteristic-zero candidate. The motivic lift no longer feeds §5.8.

**Evidence.** GR lines 4240–4248 and 3973–3975 pass through Theorem 1.13, which is only a surjection onto the correlator subcoalgebra (GR line 670). I verified both of the review's witnesses: `(e, e+c)` sends the relation to `−c`, and `e + ac` always has boundary `b`. They are now Checks in §§5.7–5.8.

## F03 (P2) — applied

Re-raises the previous round's F04, which was then marked "applied differently", not "not actionable".

**What changed.** The lift of §5.7 is stated for every infinite field, including the generic function fields and the residue fields. §5.8 uses it at the function fields of the simplicial variety. §6.1 now gives `(K₇,H¹)`, `(K₆,H²)`, `(K₅,H³)` and `(K₄,H⁴)` over every infinite field. The Check covers `ℚ(a₁₁,…,a₄₈)` (transcendence degree 32), `ℚ(t)` and `𝔽₂(t)`. §§6.2–6.4 keep the number-field hypothesis, and the Scope line was updated.

**Evidence.** The review's transcendence-degree witness is correct: the motivic lift (GR line 4239) needs a number subfield of `ℂ`.

## Checks run

- **Elaboration.** `lake env lean` on the absolute path of `packages/ZagierConjecturePolylogarithms/Suggested.lean`, run from the content checkout, exited 0. The only output was two `declaration uses sorry` warnings, at lines 123 and 132. There is no `TauCeti.*` import, so nothing needed building.
- **`#check` scratch.** I put a copy of `Suggested.lean` plus `#check @name` for all ten declarations in one scratch file, and it elaborated with exit 0. The binders are as before:
  - `[Field F]` on the field-level definitions;
  - `[AddCommGroup V]` and `[Module ℚ V]` where used;
  - `[NumberField F]` on `periodMatrixFour`, `zagierDeterminantFour` and both theorems;
  - `hc : ∀ j, IsCycle4 (c j)` on `zagier_four_everyFamily`.

  They agree with README §6.4. No Lean statement changed this round.
- **Dependency check.** No UPWARD, CYCLE or moved line:

```text
depcheck: 236 roadmaps, 2140 edges, 0 problem(s)
```

- **`roadmaps resolve`.** No cross-roadmap citation and no Lean name found nowhere. The tool did not check names outside TauCetiRoadmap.
- **Gate failures.** None were listed for this round.
- **Sources.** CGR (arXiv:1909.13869v2) was fetched through the sources service and recorded with authors, title, year, a v2 locator and `cited_for = ["5.7"]`. No text is missing, and no `needs-references.toml` was written.

## Adversarial pass (new and changed statements)

| Statement | Instances | Computed values | Result |
| --- | --- | --- | --- |
| `Φ` is a chain map (§3.7) | dilogarithm, `z = i`, `∂θ` | `δP(S₂) = (i/4)log2 = P(1−z)∗P(z)`; `dR(S₂) = −(i/4)log2 = ω₂`; mismatched pairings give `−(i/2)log2` and `(i/8)log2` | holds |
| `µ` factors | weight 4, degrees 1–4; weights 3 and 2 | 20; 10 and 10; 4, 6, 4; 1, 3, 3, 1; weight 3: 6, then 3; weight 2: 2 | used throughout |
| `ΦP = ω_n` | `n = 2` symbolic; `n = 4` at units `2,y,z,w` | `n = 2`: `(1/2)(φ₂d^Cφ₁ − φ₁d^Cφ₂)`, as in G08 Ex. 2.2; `n = 4`: `P = −(i/4)log2`, the 3-form splits as `−i/4` and `−3i/4`, `ΦP = (i/8)log2`, and `ω₄` computed directly is `3i·(1/24)log2` | equal |
| `dω₄ = −(1/8)π₄Ω` | `(ℂ*)⁴` at `(1,1,1,1)`, vectors `(∂r₁,∂θ₂,∂θ₃,∂θ₄)` | `dω₄ = i/8`; `Ω = −i`; `π₄Ω = −i` | holds |
| GR `(1/6)Alt₄` is not a cocycle | units `z₁,z₂,z₃,1+z₁` at `(i,1,1)` | three-α terms have coefficient `−2`, giving `(i/8)dz₁dz₂dz₃dz̄₁ ≠ 0`; `dω₄ = 0` | Check added |
| `P(Sₙ)` and `R(Sₙ)` | `z = i`, `∂θ` | `δP(S₄) = 15iζ(3)/128 = P(S₃)∗log|z|` (0.140866i); `dR(S₄) = −3iζ(3)/256` on both sides (0.014087i); GR's normalization gives `15iζ(3)/1024` against `−15iζ(3)/512` | holds |
| `R(S₃)` | `z = i`, `∂θ` | both sides `D(i)/4 = 0.228991`; with `L₃*`, `−(3/8)D(i)` | holds |
| `(3,1)` component | inverse pair; constant unit; `y = 1/2` | `R = −P/10`; inverse pair gives 0; constant unit `−(1/15)log2·d^C L₃*(x)`; GR placement `−i log³2/15 = −0.022202i` | additive |
| `(2,1,1)` component | `x = i`, angular `y, z` | types `−1/2` and `−1/2`; `P = −(3/5)iD(i) = −0.549579i`; `R = −iD(i)/8 = −0.114496i`; GR `−0.196278i`; `µ(d^Ca∧d^Cb) = (5/24)d^Ca∧d^Cb + (1/24)da∧db` | Check |
| Product rules | weights `m = 2, 3` | `(3/4, −1/4)`; `(5/6, −1/6)`; three factors `(3/5, −1/5, 1/5)` | match G08 (104) |
| Residue constant `πi` (§5.4) | `Λⁿ`, `n = 2,3,4`; `B₃⊗U`; `B₂⊗Λ²U`; holomorphic part | `dE` coefficients `−2, −3/2, −4/3`, so `dω_n ⊃ πiδω_{n−1}`; `B₃⊗U`: `(2/3)πiL₃* = −πiR(S₃)`; `B₂⊗Λ²U`: `−πiR([x̄]₂∧ū)`; holomorphic: `2πi·(−1/2)` | uniform `πi`, up to incidence signs |
| §6.2 coordinate | `[i]` over `ℚ(i)` | `p = β(4)/8 = 0.123618`; coordinate `−β(4)/(64π³) = −0.00049836`; `(2/5)(5/16) = 1/8` | updated |
| §3.9 `c₂` | `(0,1,i)` | `p(S₂) = L₂*`, unchanged, so `c₂ = −2` | unchanged |
| §5.7 lift (i)–(iii) | `𝔽₂`; `𝔽₂(t)`; `ℚ(t)`; `ℚ(a_ij)` | `𝔽₂`: the largest arc in `PG(3,2)` has 5 points, so `G₄(𝔽₂) = 0`, consistent with "infinite"; the other three fields are infinite, so covered | consistent |
| Period uniqueness | generic configuration over `ℂ` | `dR(ψ) = 0`, so `R(ψ) = c`; nine signs sum to 1, so `c = 0` (both relations) | Check |
| Route (a)/(b) | — | the difference of two solutions lies in `ker δ = H¹Γ` (degree 1, no coboundaries); `δ(defect) = δ_{G₄}(π₈∂x₉) = 0` | exact |
| Preimage and chain-lift models | review's models | `(e, e+c)` gives `−c`; `(e, e)` gives 0; every `e + ac` has `d = b ≠ 0` | Checks |
| §6.1 degrees | `i = 1,…,4` | `(7,1), (6,2), (5,3), (4,4)` | all fields |

## Ownership and overlap

- `roadmaps grep` over main and all open heads finds no other owner of the Grassmannian tetralogarithm or its lifts, and none of Goncharov's Hodge complex or its comparison. This roadmap owns them; it is the only place that uses them.
- Ownership against open pull requests was checked with that tool only. The overlap ledger lists no conflicting pull request and no dropped id.
- No section number or Lean name changed. Only the §5.7 heading changed: "…and its motivic lift" became "…and its lifts".

## For the maintainer

- **Open step on the existence path.** The existence half of the Zagier theorem now rests explicitly on §5.7 (a)–(b):
  - the vanishing of an `H²Γ(K,4)` class at the universal configuration;
  - the vanishing of the nine-term `H¹Γ` defects.

  The sources do not prove these; GR obtains them through an unjustified motivic passage. CGR gives a candidate whose defect has zero symbol. A human should decide whether this owned open step is acceptable. Every-family rationality does not depend on it.
- **Normalizations.** The scalar period is now `(2/5)L₄*` and the residue factor is `(πi)^q`. Every consumer statement is up to a nonzero rational multiple, so Polylogarithms §§4.4–4.6 are unaffected.
